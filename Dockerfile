# FROM python:3.11-slim

# # Set working directory
# WORKDIR /opt/notebooks

# # Install system dependencies for Python and Jupyter
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     build-essential \
#     curl \
#     git \
#     && rm -rf /var/lib/apt/lists/*

# # Install Python packages
# RUN pip install --no-cache-dir \
#     jupyter \
#     numpy \
#     pandas \
#     matplotlib \
#     seaborn \
#     requests \
#     beautifulsoup4 \
#     neo4j

# # Create the notebooks directory
# RUN mkdir -p /opt/notebooks

# # Expose the Jupyter port
# EXPOSE 8888

# # Start Jupyter Notebook server
# CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--notebook-dir=/opt/notebooks"]

#### Simpler version:
    
# Jupyter devcontainer voor het labo Software Trends / Smart Data
# Base image: Python 3.11 slim
FROM python:3.11-slim

# Working directory inside the container
WORKDIR /workspace

# Install Python packages (see requirements.txt)
COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r /tmp/requirements.txt

# Expose Jupyter port (optional, useful for external access)
EXPOSE 8888

# Start Jupyter when the container is run standalone (VS Code overrides this)
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--notebook-dir=/workspace"]