

schtasks /create /tn "Run Py" /tr "C:\path\to\py.bat" /sc onstart /ru SYSTEM




schtasks /create /tn "Run Py" /tr "C:\path\to\py.bat" /sc onstart,onstop /ru SYSTEM


