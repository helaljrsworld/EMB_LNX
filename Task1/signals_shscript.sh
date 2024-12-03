It is handled using a command called trap
When you send a signal like Ctrl+C the trap command catches it and executes
the commands inside the single quotes
We have different commands for signals such as:
SIGINT for interrupting
SIGTERM for termination
SIGQUIT for quitting

