# #!/bin/bash

# # Define paths
# WORK_DIR=""
# VENV_PATH=""

# # Function to activate virtual environment and install requests
# install_requirements() {
#     echo "Activating virtual environment and installing requests..."
#     source "$VENV_PATH"
#     pip install requests
# }

# # Start Ollama server in a new terminal window
# start_ollama() {
#     echo "Starting Ollama server in a new terminal..."
#     osascript -e 'tell application "Terminal" to do script "cd \"'$WORK_DIR'\" && ollama serve"'
# }

# # Start the Python script in a new terminal window
# start_python() {
#     echo "Running LocalLLMQuery.py in a new terminal..."
#     osascript -e 'tell application "Terminal" to do script "cd \"'$WORK_DIR'\" && source deepseek-env/bin/activate && python3 LocalLLMQuery.py"'
# }

# # Kill Ollama services after Python script completes
# kill_ollama() {
#     echo "Killing Ollama services..."
#     pkill -9 ollama
# }

# # Main execution
# install_requirements
# start_ollama
# start_python

# # Wait for the Python program to finish and then stop Ollama services
# wait
# kill_ollama


#!/bin/bash

# Navigate to the directory where Ollama is installed or where you want to run the server
# (Modify this line with the correct path if needed)
cd /path/to/ollama

# Start the Ollama server
echo "Starting Ollama server..."
ollama serve
