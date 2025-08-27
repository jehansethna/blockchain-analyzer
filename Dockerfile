FROM 671415945235.dkr.ecr.us-east-1.amazonaws.com/python:3

COPY requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt

WORKDIR /app

COPY ./src .

EXPOSE 8080

CMD [ "python3", "blockexplorer.py" ]
