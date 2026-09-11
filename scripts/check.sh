#!/usr/bin/env sh
# Validates every host format this repo ships. Run from the repo root.
set -eu

echo "Claude marketplace and plugin manifest"
claude plugin validate .

echo "JSON syntax"
for file in $(git ls-files '*.json'); do
  python3 -m json.tool "$file" > /dev/null || { echo "invalid JSON: $file"; exit 1; }
done

echo "skills.sh discovery"
npx -y skills@latest add "$(pwd)" --list
