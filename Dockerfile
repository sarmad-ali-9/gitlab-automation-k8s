FROM python:3.11.2-slim

# Will use a non-root user to avoid pip warning when run through root user
RUN useradd -r app-user

WORKDIR /home/app-user

RUN chown -R app-user:app-user /home/app-user

USER app-user

COPY . .

# Adding --no-warn-script-location flag to prevent $PATH warning
RUN pip install --no-cache-dir --no-warn-script-location -r requirements.txt

EXPOSE 5000

CMD [ "python", "app.py"]
