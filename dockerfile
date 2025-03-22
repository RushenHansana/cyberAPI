# Use an official Miniconda3 image
FROM continuumio/miniconda3

# Set the working directory
WORKDIR /app

# Copy the environment.yml file (used for Conda)
COPY environment.yml .

# Create the Conda environment
RUN conda env create -f environment.yml

# Activate the environment
SHELL ["conda", "run", "-n", "crypto", "/bin/bash", "-c"]

# Copy application files
COPY main.py .

# Install Uvicorn for running FastAPI
RUN conda install -c conda-forge uvicorn

# Expose the application port
EXPOSE 8000

# Run the application
CMD ["conda", "run", "-n", "crypto", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
