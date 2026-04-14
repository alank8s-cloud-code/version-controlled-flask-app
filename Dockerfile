# base image 

FROM python:3.10-slim

# SET THE WORKING DIRECTORY INSIDE CONTAINER

WORKDIR /app

# COPY THE DEPENDENCIES

COPY requirements.txt .

# INSTALL THE DEPENDENCIES

RUN pip install --no-cache-dir -r requirements.txt 

# COPY REST OF THE CODE

COPY . .

# EXPOSE THE PORT

EXPOSE 5000

# RUN THE APP

CMD [ "python", "app.py" ]