---
title:  "History of pythonchallenge.com"

categories:
    - study
tags:
    - study
    - python

last_modified_at: 2021-05-05T20:00:00

published: false

toc: true
toc_sticky: true
toc_label: "On this page"
---

# Introduction

I try [www.pythonchallenge.com](http://www.pythonchallenge.com/) for fun.

# Solution

## level 0
- Problem
	- [http://www.pythonchallenge.com/pc/def/0.html](http://www.pythonchallenge.com/pc/def/0.html)
- Solution
	- date : 2021-05-05
``` python
'http://www.pythonchallenge.com/pc/def/{}.html'.format(2**38)
# http://www.pythonchallenge.com/pc/def/274877906944.html
```

## level 1
- Problem
	- [http://www.pythonchallenge.com/pc/def/map.html](http://www.pythonchallenge.com/pc/def/map.html)
- Solution
	- date : 2021-05-05
``` python
problem = "g fmnc wms bgblr rpylqjyrc gr zw fylb. rfyrq ufyr amknsrcpq ypc dmp. bmgle gr gl zw fylb gq glcddgagclr ylb rfyr'q ufw rfgq rcvr gq qm jmle. sqgle qrpgle.kyicrpylq() gq pcamkkclbcb. lmu ynnjw ml rfc spj."

def maketrans(ct, num_shift):
	pt = [i for i in ct]
	ord_a = ord('a')
	ord_z = ord('z')
	modulo = ord_z - ord_a + 1
	for i in range(len(ct)):
		tmp = ord(ct[i])
		if ord_a <= tmp and tmp <= ord_z:
			pt[i] = chr(((tmp - ord_a + num_shift) % modulo) + ord_a)
	return ''.join(pt)

plaintext = maketrans(problem, 2)
print(plaintext)
# i hope you didnt translate it by hand. thats what computers are for. doing it in by hand is inefficient and that's why this text is so long. using string.maketrans() is recommended. now apply on the url.

'http://www.pythonchallenge.com/pc/def/{}.html'.format(maketrans('map',2))
# http://www.pythonchallenge.com/pc/def/ocr.html
```

## level 2
- Problem
	- [http://www.pythonchallenge.com/pc/def/ocr.html](http://www.pythonchallenge.com/pc/def/ocr.html)
- Solution
	- date : 2021-05-06
``` python
import requests
r = requests.get('http://www.pythonchallenge.com/pc/def/ocr.html')
r2 = r.text.split('<!--\n')
r3 = r2[-1].split('-->')
r4 = r3[0].split('\n')
r5 = ''.join(r4[0:-1])
r6 = set(r5)
count = dict()
for i in r6:
	count[i] = r5.count(i)
	print(i, ':', count[i])

r7 = []
for i in r6:
	if count[i] == 1:
	r7.append(i)

r8 = []
for i in r7:
	r8.append([i, r5.index(i)])

r8 = sorted(r8, key=lambda key: key[1])

'http://www.pythonchallenge.com/pc/def/{}.html'.format(''.join([i[0] for i in r8]))
# http://www.pythonchallenge.com/pc/def/equality.html
```

## level 3
- Problem
	- [http://www.pythonchallenge.com/pc/def/equality.html](http://www.pythonchallenge.com/pc/def/equality.html)
- Solution
	- date : 2021-05-06
``` python
import requests
r = requests.get('http://www.pythonchallenge.com/pc/def/equality.html')
r2 = r.text.split('<!--\n')
r3 = r2[-1].split('-->')
r4 = r3[0].split('\n')
r5 = ''.join(r4[0:-1])

import re
p = re.compile('[^A-Z][A-Z]{3}[a-z][A-Z]{3}[^A-Z]')
sl = [i[4] for i in p.findall(r5)]

'http://www.pythonchallenge.com/pc/def/{}.html'.format(''.join(sl))
# http://www.pythonchallenge.com/pc/def/linkedlist.html
```

## level 4
- Problem
	- [http://www.pythonchallenge.com/pc/def/linkedlist.php](http://www.pythonchallenge.com/pc/def/linkedlist.php)
- Solution
	- date : 2021-05-06
``` python

import requests
urlphp = 'http://www.pythonchallenge.com/pc/def/linkedlist.php?nothing='

numstr = '12345'
while True:
	url = urlphp + numstr
	print('Try :', url, end=' : ')
	r = requests.get(url)
	numstr = r.text.split()[-1]
	print(numstr)
	if 'html' in numstr:
		break

'http://www.pythonchallenge.com/pc/def/{}'.format(numstr)
# http://www.pythonchallenge.com/pc/def/peak.html
```

## level 5
- Problem
	- [http://www.pythonchallenge.com/pc/def/peak.html](http://www.pythonchallenge.com/pc/def/peak.html)
- Solution
	- date : 2021-05-06
``` python
```





<!---

## level 
- Problem
	- []()
- Solution
	- date : 2021-05-06
``` python
```
--->