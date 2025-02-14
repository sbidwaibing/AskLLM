import requests

# Define the URL for your local Ollama server
url = "http://127.0.0.1:11434/api/generate"  # The API endpoint for generating a completion

def query_model(query):
    """Send a request to the local Ollama server with the given query."""
    data = {
        "model": "deepseek-r1:1.5b",  # Replace with your model's name
        "prompt": query,
        "stream": False  # Set to False to get a complete response in one go
    }

    # Send a POST request to the Ollama server
    try:
        response = requests.post(url, json=data, timeout=30)  # 30 seconds timeout
        # Check if the response is successful
        if response.status_code == 200:
            return response.json()  # Assuming JSON response contains the model output
        else:
            return f"Error: {response.status_code}, {response.text}"
    except requests.exceptions.RequestException as e:
        return f"Request failed: {e}"

def print_ui():
    """Prints the introductory UI message."""
    print("\nWelcome to the DeepSeek LLM Query Interface !")
    print("\nAsk anything to the model or type 'exit' to quit.\n")

# Main loop for continuous question asking
if __name__ == "__main__":
    print_ui()
    
    while True:
        query = input("Message DeepSeek: ")
        
        # Exit condition
        if query.lower() == 'exit':
            print("\nThank you for using the DeepSeek LLM Query Interface !")
            break
        
        # Get the answer from the model
        answer = query_model(query)
        
        # If the response is in the correct format, print the answer
        if isinstance(answer, dict):
            print("\nAnswer:")
            print(answer.get('response', 'No response field found'))
        else:
            print("\nError: Unexpected response format")
        
        # Add some space between questions
        print("\n" + "-" * 50 + "\n")