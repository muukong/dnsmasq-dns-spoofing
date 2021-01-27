FROM alpine:latest

RUN apk update \
	&& apk add dnsmasq\
	&& touch /var/log/messages.log

#RUN apk add bind-tools
#RUN apk add iproute2

CMD ["sh", "-c", "dnsmasq; tail -f /var/log/dnsmasq.log"]
