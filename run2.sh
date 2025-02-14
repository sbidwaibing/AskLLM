#!/bin/bash

# Navigate to the directory where your program is located
# (Modify this line with the correct absolute path to your project directory)
# cd /path/to/your/project

# Activate the virtual environment
echo "Activating virtual environment..."
source deepseek-env/bin/activate

# Install the necessary dependencies
echo "Installing required dependencies..."
pip install requests

# Run the LocalLLMQuery.py script
echo "Running the Python script..."
python3 LocalLLMQuery.py

# Once the Python script finishes, kill all Ollama services
echo "Killing Ollama services..."
pkill -9 ollama
# In this snippet, we have combined the functionality of the previous run1.sh script into a single script. We navigate to the project directory, activate the virtual environment, install the necessary dependencies, run the Python script, and finally
