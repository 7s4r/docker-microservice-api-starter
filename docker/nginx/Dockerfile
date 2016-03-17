FROM debian:jessie

RUN apt-get update && apt-get install -y ca-certificates nginx gettext-base

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80 443
