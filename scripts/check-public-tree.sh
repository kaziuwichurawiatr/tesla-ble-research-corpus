#!/usr/bin/env bash
set -euo pipefail

repo_root=$(git rev-parse --show-toplevel)
cd "$repo_root"

blocked_extensions='\.(pcap|pcapng|btsnoop|cfa|zip|7z|rar|tar|tgz|gz|log|csv|tsv|xlsx|jsonl|sqlite|db)$'
blocked_paths='(^|/)(private|corpus|raw|captures|deliveries)(/|$)'

failed=0

while IFS= read -r path; do
  if [[ "$path" =~ $blocked_extensions ]] || [[ "$path" =~ $blocked_paths ]]; then
    printf 'BLOCKED_PATH\t%s\n' "$path"
    failed=1
  fi
done < <(git ls-files)

if rg -n --hidden --glob '!.git/**' --glob '!scripts/check-public-tree.sh' \
  '/home/kaziu/|[[:xdigit:]]{2}([:-][[:xdigit:]]{2}){5}' .; then
  printf '%s\n' 'BLOCKED_CONTENT: local path or MAC-like identifier found'
  failed=1
fi

if (( failed != 0 )); then
  exit 1
fi

printf '%s\n' 'PUBLIC_TREE_CHECK=PASS'
