# Use an official lightweight Python image
FROM python:3.9-slim  

# Set the working directory
WORKDIR /app  

# Copy project files into the container
COPY . /app  

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt  

# Expose port
EXPOSE 8501

# Command to run the app
CMD ["streamlit", "run", "app.py"]
