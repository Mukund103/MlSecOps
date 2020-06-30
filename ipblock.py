from os import system
with open("/mlops/blockedIp.txt","r") as file1:
  for i in file1:
    system('iptables -A INPUT -s {} -j DROP'.format(i.rstrip('\n')))
    system('service iptables save')

