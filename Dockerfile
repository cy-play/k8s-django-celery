# use base python image with python 2.7
FROM python:2.7

# add requirements.txt to the image
ADD requirements.txt /app/requirements.txt

#Setting workdir to /app/
WORKDIR /app/

# install python dependencies
RUN pip install -r requirements.txt

# create unprivileged user
RUN adduser --disabled-password --gecos '' myuser

#Adding files to /app/
ADD . /app
RUN chown -R myuser:myuser /app
