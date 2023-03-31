# Set variables for the file path and task names
$FilePath = C:\Users\City Online Ltd\git-note\Update_repo_src.bat

$TaskName_Startup = "test1"
$TaskName_Shutdown = "StopBatchFileOnShutdown"

# Create a scheduled task to start the batch file on computer startup
schtasks /Create /SC ONSTART /TN $TaskName_Startup /TR "$FilePath"



