
# AskLLM - Local Query Processing with DeepSeek Models

This project allows you to interact with DeepSeek LLM models (locally run with Ollama) for query processing, without needing to rely on cloud services. DeepSeek models provide a local solution for performing reasoning tasks, such as math, code generation, and general knowledge answering.

## Features
- Run DeepSeek LLM models locally using Ollama
- Query processing with DeepSeek's first-generation reasoning models
- Support for multiple DeepSeek models with varying parameter sizes (1.5B, 7B, 8B, 14B, 32B, 70B)

## Setup Instructions

### 1. Install Dependencies

Before running the project, you need to set up a Python virtual environment and install required dependencies.

#### Step 1: Create a Virtual Environment

In your terminal, navigate to the project directory and create a virtual environment:

```bash
python3 -m venv deepseek-env
```

#### Step 2: Activate the Virtual Environment

Activate the environment:

```bash
source deepseek-env/bin/activate
```

#### Step 3: Install Required Python Packages

Install the necessary dependencies:

```bash
pip install requests
```

### 2. Set Up Ollama for Local Model Running

DeepSeek models require the Ollama server for local model processing. Follow these steps to start the server.

#### Step 1: Download and Install Ollama

Follow the instructions from [Ollama's official website](https://ollama.com) to install Ollama for your system.

#### Step 2: Start the Ollama Server

Once installed, use the following command to start the server:

```bash
ollama serve
```

This will start the local Ollama server. It will listen on `127.0.0.1:11434` by default.

#### Step 3: Use a Specific Model

You can use any available DeepSeek model (e.g., `deepseek-r1:1.5b`) by running the following:

```bash
ollama run deepseek-r1:1.5b
```

### 3. Running the Project

Once the environment and server are set up, you can start interacting with the models.

#### Step 1: Running the Query Program

To query the local LLM, run:

```bash
python3 LocalLLMQuery.py
```

It will ask you to input a question and will return the model’s response.

#### Step 2: Stopping the Ollama Server

After completing the interaction, you can stop the Ollama server with the following command:

```bash
ollama stop
```

### 4. Usage Details

#### About DeepSeek Models

**DeepSeek-R1** is the first-generation of reasoning models with performance comparable to OpenAI’s models. It includes various dense models distilled from **DeepSeek-R1** based on Llama and Qwen, with various parameter sizes to accommodate different use cases:

- **1.5b** - Suitable for general tasks and smaller systems
- **7b** - Enhanced for more complex queries
- **8b** - High-performing model for reasoning tasks
- **14b** - Powerful for advanced tasks
- **32b** - Ideal for massive-scale computations
- **70b** - For demanding tasks requiring large model capabilities

Here’s how you can run a specific model:

```bash
ollama run deepseek-r1:1.5b
```

You can replace `1.5b` with any of the other model sizes as per your requirements.

#### DeepSeek Model’s Fine-tuning and Distillation

DeepSeek's models can be fine-tuned for various applications, and performance is comparable to OpenAI models for reasoning tasks across math, code, and general knowledge. The models listed below show the different distilled variants based on Qwen and Llama models:

- **DeepSeek-R1-Distill-Qwen-1.5B**
- **DeepSeek-R1-Distill-Qwen-7B**
- **DeepSeek-R1-Distill-Llama-8B**
- **DeepSeek-R1-Distill-Qwen-14B**
- **DeepSeek-R1-Distill-Qwen-32B**
- **DeepSeek-R1-Distill-Llama-70B**

Each of these models performs exceptionally well in benchmarks like math reasoning, coding, and logical reasoning.

### 5. Additional Information About Ollama Services

- **`ollama serve`**: Starts the local server where the models are loaded and ready to serve queries. The server should be kept running while you interact with the models.
- **`ollama stop`**: Stops the server after you finish interacting with the models. This ensures resources are released properly.

#### Example Commands:

- Start the server:
  ```bash
  ollama serve
  ```

- Stop the server:
  ```bash
  ollama stop
  ```

### 6. License

The model weights are licensed under the MIT License. DeepSeek-R1 series support commercial use, allow for any modifications, and derivative works, including distillation for training other LLMs.

### 7. Contact

For any issues or inquiries, feel free to raise a ticket or email us at [your-email@example.com].

---

### Note

Ensure the `ollama` service is running on your local machine before executing any queries. You can access the models directly from Ollama without the need for cloud servers, providing a local, efficient, and customizable environment for all your LLM-based tasks.
