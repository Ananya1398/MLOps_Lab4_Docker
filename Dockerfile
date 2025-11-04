# Base Python image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy requirements first (best practice for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of project files
COPY . .

# Train ML model
RUN python src/train.py

# Expose FastAPI port
EXPOSE 8000

# Run FastAPI server
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000"]
