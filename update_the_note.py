import os
import subprocess
from datetime import datetime

# Set variables
datetime_str = datetime.now().strftime("%Y-%m-%d %H:%M:%S").replace(" ", "-")
notes_path = r"C:\Users\City Online Ltd\Music\Github_note\hack1"
github_username = "axosecurity"
repo_name = "hack1"

# Change directory to notes_path
os.chdir(notes_path)

# Initialize git repository
subprocess.run("git init", shell=True)

# Add remote origin
remote_url = f"https://github.com/{github_username}/{repo_name}.git"
subprocess.run(f"git remote add origin {remote_url}", shell=True)

# Add all files to the repository
subprocess.run("git add .", shell=True)

# Commit changes with timestamp
commit_message = f"Adding notes - {datetime_str}"
subprocess.run(f'git commit -m "{commit_message}"', shell=True)

# Push changes to the remote repository
subprocess.run("git push --set-upstream origin master", shell=True)

print("Notes updated successfully!")


