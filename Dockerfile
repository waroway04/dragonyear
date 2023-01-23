FROM nginx:latest
EXPOSE 80
USER root
COPY nginx.conf /etc/nginx/nginx.conf
COPY config.yaml ./
COPY app.sh ./
RUN chmod a+x ./app.sh
ENTRYPOINT [ "./app.sh" ]
