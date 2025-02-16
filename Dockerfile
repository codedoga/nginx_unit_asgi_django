FROM unit:1.34.1-python3.13-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . /app
COPY --chown=unit django.unit.json /var/lib/unit/conf.json
RUN touch /run/control.unit.sock
RUN echo -e "1\n" > /run/unit.pid

EXPOSE 8000

ENTRYPOINT ["unitd","--no-daemon","--control","unix:/var/run/control.unit.sock"]