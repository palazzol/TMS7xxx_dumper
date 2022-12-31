

data = b''
with open('dumper.bin','rb') as f:
    for i in range(0,15):
        data += f.read(0x100)
        f.read(0xf00)
    f.read(0xf00)
    data += f.read(0x100)
with open('dumperimage.bin','wb') as f:
    f.write(data)
