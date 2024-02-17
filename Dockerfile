FROM python:3.11

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create and set the working directory
WORKDIR /demo

# Copy the current directory contents into the container at /chatapp
COPY ./demo /demo/

# Copy the requirements file into the container at /chatapp

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 80

# Run django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]
