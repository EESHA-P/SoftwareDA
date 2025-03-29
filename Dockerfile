# Step 1: Use official Python image as base
FROM python:3.9-slim

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy requirements.txt and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Step 4: Copy the entire application into the container
COPY . .

# Step 5: Expose port 5000
EXPOSE 5000

# Step 6: Run the Flask application
CMD ["python", "app.py"]
