import socket

UDP_IP = "192.168.1.177"
UDP_PORT = 8888
#MESSAGE = b"TNet 3 tallyreq"
#MESSAGE = b"TNet 3 set 00"
MESSAGE = b"TNet 3 set 00"
#MESSAGE = b"TNet 3 ping"

print("UDP target IP: %s" % UDP_IP)
print("UDP target port: %s" % UDP_PORT)
print("message: %s" % MESSAGE)

sock = socket.socket(socket.AF_INET, # Internet
                     socket.SOCK_DGRAM) # UDP
sock.sendto(MESSAGE, (UDP_IP, UDP_PORT))