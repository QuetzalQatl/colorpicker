FROM baskoning/gamebase:latest

COPY Files /

ARG PORT=production
ENV PORT="${PORT}"

ARG LANIP="192.168.99.100"
ENV LANIP="${LANIP}"

EXPOSE ${PORT}

CMD ifconfig & python startflask.py ${LANIP} ${PORT}
