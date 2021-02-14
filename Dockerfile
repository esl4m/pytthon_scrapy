FROM python:3

RUN mkdir /app
WORKDIR /app

COPY requirements.txt /app
RUN pip3 install -r requirements.txt

COPY . /app

RUN [ "chmod +x run_me.sh" ]
CMD [ "./run_me.sh" ]
