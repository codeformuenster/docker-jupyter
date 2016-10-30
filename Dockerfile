FROM python:3.6

RUN pip install Cython~=0.25.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

# CMD ["jupyterhub"]
