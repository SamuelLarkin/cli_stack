#!/usr/bin/env -S jq --monochrome-output --compact-output --from-file --raw-output
# -S, --split-string=S


# task --json --list | ./task2md.jq | sort

def link($task):
  # TODO: grab the first []() as the link and ignore subsequent ones.
  (
    $task.summary
    | sub("\\n"; " "; "g")
  ) as $summary
  # | if ($summary | test(".*(?<x>\\[[^\\]]+?\\]\\([^\\)]+?\\)).*")) then
  #   $summary | sub(".*(?<x>\\[[^\\]]+?\\]\\([^\\)]+?\\)).*"; "\(.x)")
  | if ($summary | test(".*(?<x>\\[.+?\\]\\(.+?\\)).*")) then
    $summary | sub(".*(?<x>\\[.+?\\]\\(.+?\\)).*"; "\(.x)")
  else
    $task
  end
;

.tasks[]
#| (.summary | sub("\\n"; " "; "g") | sub(".*(?<x>\\[.*\\]\\(.*\\)).*"; "\(.x)"; "m")) as $link
| link(.) as $link
| "- \($link): \(.desc | trim)"
