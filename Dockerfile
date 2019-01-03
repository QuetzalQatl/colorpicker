FROM baskoning/gamebase:latest

COPY ColorPicker /

EXPOSE 5000

CMD ifconfig & python startflask.py 192.168.99.100 5000
