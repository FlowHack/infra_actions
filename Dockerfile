FROM python:3.8
COPY ./ /app
RUN python3 -m pip install --upgrade pip
RUN pip3 install -r /app/requirements.txt
WORKDIR /app/infra_project/
CMD python3 manage.py runserver 0:5000