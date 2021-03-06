FROM python:3.6

RUN apt-get update && apt-get install -y --no-install-recommends \
    gfortran liblapack-dev \
  && rm -rf /var/lib/apt/lists/*

    # build-essential python-dev \

  # error: library dfftpack has Fortran sources but no Fortran compiler found

RUN pip install Cython~=0.25.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

# CMD ["jupyterhub"]
