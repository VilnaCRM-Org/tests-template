# conventional-commits.py
import sys
import re

def validate_commit_message(commit_msg_file):
    with open(commit_msg_file, 'r') as file:
        commit_message = file.read().strip()

    # Define a regular expression pattern for conventional commits
    pattern = r'^(feat|fix|docs|style|refactor|test|chore)(\(.+\))?: .+'
    if not re.match(pattern, commit_message):
        print("Error: Commit message does not follow conventional commit format.")
        sys.exit(1)

if __name__ == "__main__":
    print("test failes !!!!!!!!!!!!!!!!!!!!!!!!")
    print(sys.argv)
    if len(sys.argv) != 2:
        print("Usage: conventional-commits.py <commit_msg_file>")
        sys.exit(1)

    commit_msg_file = sys.argv[1]
    validate_commit_message(commit_msg_file)
