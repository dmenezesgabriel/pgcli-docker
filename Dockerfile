
FROM python:3.8.2-slim-buster
# Set work directory
WORKDIR /usr/src/app
RUN apt-get -y update && apt-get -y install gcc python-dev libpq-dev libevent-dev pspg
# Install dependencies
RUN pip install --upgrade pip
RUN pip install pgcli
ADD scripts/entrypoint.sh /usr/src/app/entrypoint.sh
ENV PAGER='pspg -ibc0FX --line-numbers --no-commandbar --no-mouse'
RUN ["chmod", "+x", "/usr/src/app/entrypoint.sh"]
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]