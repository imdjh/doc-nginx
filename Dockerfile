FROM tutum/nginx
RUN rm /etc/nginx/sites-enabled/default
ADD sites-enabled/ /etc/nginx/sites-enabled

EXPOSE 80
# Add Environment Variables

ENV DEBUG=False
ENV SECRET_KEY=5(15ds+i2+%ik6z&!yer+ga9m=e%jcqiz_5wszg)r-z!2--b2d
ENV DB_NAME=postgres
ENV DB_USER=postgres
ENV DB_PASS=postgres
ENV DB_SERVICE=postgres
ENV DB_PORT=5432

CMD ["/usr/local/bin/gnicorn", "-w", "2", "-b", ":8000", "app:app"]
