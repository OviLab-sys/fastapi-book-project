# Use official Python image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the FastAPI project files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir fastapi uvicorn

# Expose FastAPI's port
EXPOSE 8000

# Command to run the FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
