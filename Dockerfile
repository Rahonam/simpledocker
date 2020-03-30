FROM python:3.7

WORKDIR /django


COPY ./requirements.txt ./requirements.txt

RUN pip3 install -r requirements.txt

COPY ./ ./

RUN chmod +x ./entrypoint.sh

ENTRYPOINT [ "sh", "./entrypoint.sh" ]