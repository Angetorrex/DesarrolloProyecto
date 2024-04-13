FROM debian
WORKDIR /app
COPY ./bash.sh /DesarrolloProyecto/bash.sh
ARG opcion
SHELL ["/bin/bash","-c"]
RUN chmod +x /DesarrolloProyecto/bash.sh
ENTRYPOINT [ "/DesarrolloProyecto/bash.sh" ]
CMD ["$Opcion"]
