import winrm

s = winrm.Session('192.168.100.194:5985', auth=('systemi', 'systemi'))
r = s.run_cmd('ipconfig', ['/all'])

print(r.status_code)
print(r.std_out.splitlines(True))
