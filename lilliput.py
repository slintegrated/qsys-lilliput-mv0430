def checksum(i):
    print(i)
    x = divmod(i,0x100)
    return hex(x[1]),hex(x[0])

if __name__ == '__main__':
    values = []
    final = ""
    s = input("Enter String: ")
    s = s.strip()
    s = s.split(" ")

    for i in range(0 ,len(s)):
        values.append(int("0x"+s[i],16))
    v = sum(values)
    print(v)
    chksm = checksum(sum(values))

    for i in range(0,len(s)):
        final+=s[i]
        final+=" "
    final+=chksm[0].replace("0x","")
    final+=" "
    final+=chksm[1].replace("0x","")
    final+=" "
    final+="ae"
    print(final)
