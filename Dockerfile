# Step 1: Use the official Python image as a base
FROM python:3.8-slim

# Step 2: Set environment variables
ENV PYTHONUNBUFFERED 1

# Step 3: Set the working directory
WORKDIR /app

# Step 4: Copy the requirements.txt file and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the project files into the container
COPY . /app/

# Step 6: Expose port 5000 (default Flask port)
EXPOSE 5000

# Step 7: Set the command to run the Flask app
CMD ["python", "app.py"]
