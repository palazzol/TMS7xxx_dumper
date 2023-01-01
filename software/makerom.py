
# Make a 4K ROM image from a 64K byte image,
# by selecting 256 byte sections from each 4K

data = b''
with open('dumper.bin','rb') as f:
    # For the first 15 4K sections, use the first 256 bytes
    for i in range(0,15):
        data += f.read(0x100)
        f.read(0xf00) # skip the rest of the 4K
    # for the last 4K section, use the last 256 bytes
    f.read(0xf00) # skip ahead
    data += f.read(0x100) # read the last 256 bytes

# Now, write this 4K ROM image to a new file
with open('dumperrom.bin','wb') as f:
    f.write(data)
