4000: 8c 51 0d     BR $510D
4003: 8c 66 6f     BR $666F
4006: 8c 42 4f     BR $424F
4009: 8c 40 27     BR $4027
400c: 8c 40 27     BR $4027
400f: 8c 40 27     BR $4027
4012: 8c 40 27     BR $4027
4015: 8c 40 27     BR $4027
4018: 8c 40 27     BR $4027
401b: 8c 47 e0     BR $47E0
401e: 8c 40 28     BR $4028
4021: 8c 46 74     BR $4674
4024: 8c 4d 9a     BR $4D9A
4027: 0a           RETS
4028: a2 20 18     MOVP %>20,P24
402b: 72 16 27     MOV %>16,R39
402e: 8a 54 f9     LDA @>54F9
4031: 82 0f        MOVP A,P15
4033: 8a 54 fa     LDA @>54FA
4036: 82 0e        MOVP A,P14
4038: 22 a5        MOV %>A5,A
403a: 8d e0 00     CMPA @>E000
403d: e6 34        JNZ $4073
403f: be           RL A
4040: 8d e0 01     CMPA @>E001
4043: e6 2e        JNZ $4073
4045: be           RL A
4046: 8d e0 02     CMPA @>E002
4049: e6 28        JNZ $4073
404b: be           RL A
404c: 8d e0 03     CMPA @>E003
404f: e6 22        JNZ $4073
4051: b5           CLR A
4052: 8d ef fe     CMPA @>EFFE
4055: e6 1c        JNZ $4073
4057: b4           INV A
4058: 8d ef ff     CMPA @>EFFF
405b: e6 16        JNZ $4073
405d: 8e 55 19     CALL $5519
4060: 52 02        MOV %>2,B
4062: ce           RL B
4063: aa 54 f9     LDA @>54F9(B)
4066: 82 0f        MOVP A,P15
4068: aa 54 fa     LDA @>54FA(B)
406b: 82 0e        MOVP A,P14
406d: a2 38 18     MOVP %>38,P24
4070: 8c e0 04     BR $E004
4073: 8a 20 20     LDA @>2020
4076: 2d 6a        CMP %>6A,A
4078: e2 04        JEQ $407E
407a: 2d 95        CMP %>95,A
407c: e6 4e        JNZ $40CC
407e: b4           INV A
407f: 8d 20 21     CMPA @>2021
4082: e6 48        JNZ $40CC
4084: 8a 20 b7     LDA @>20B7
4087: e2 04        JEQ $408D
4089: 2d ff        CMP %>FF,A
408b: e6 3f        JNZ $40CC
408d: b4           INV A
408e: 8d 20 2e     CMPA @>202E
4091: e6 39        JNZ $40CC
4093: 76 20 72 47  BTJO %>20,R114,$40DE
4097: 8e 55 19     CALL $5519
409a: 8e 40 fb     CALL $40FB
409d: 62           MOV B,A
409e: e6 2c        JNZ $40CC
40a0: 8a 21 2c     LDA @>212C
40a3: 23 c0        AND %>C0,A
40a5: d0 72        MOV A,R114
40a7: 74 20 72     OR %>20,R114
40aa: 88 21 2a 2b  MOVD %>212A,R43
40ae: 88 00 6e 2d  MOVD %>006E,R45
40b2: 8e f0 4e     CALL $F04E
40b5: 8e 41 23     CALL $4123
40b8: fa           TRAP 5
40b9: 7d 31 76     CMP %>31,R118
40bc: e2 03        JEQ $40C1
40be: 73 fe 32     AND %>FE,R50
40c1: 8e 57 81     CALL $5781
40c4: 8e 4d 9a     CALL $4D9A
40c7: 8e 4e 15     CALL $4E15
40ca: e0 ec        JMP $40B8
40cc: 8e 55 19     CALL $5519
40cf: 8e 42 9d     CALL $429D
40d2: 88 44 6c 01  MOVD %>446C,R1
40d6: 8e 56 9d     CALL $569D
40d9: 8e 58 76     CALL $5876
40dc: e0 da        JMP $40B8
40de: 12 72        MOV R114,A
40e0: 8b 21 2c     STA @>212C
40e3: b5           CLR A
40e4: 8b 20 bc     STA @>20BC
40e7: 8e 40 fb     CALL $40FB
40ea: 62           MOV B,A
40eb: 8b 20 bc     STA @>20BC
40ee: 73 df 72     AND %>DF,R114
40f1: d5 2e        CLR R46
40f3: b5           CLR A
40f4: 52 aa        MOV %>AA,B
40f6: 8e f0 66     CALL $F066
40f9: e0 f3        JMP $40EE
40fb: 88 00 0c 01  MOVD %>000C,R1
40ff: aa 41 0d     LDA @>410D(B)
4102: ab 00 47     STA @>0047(B)
4105: ca f8        DJNZ B,$40FF
4107: 88 27 ff 29  MOVD %>27FF,R41
410b: 8c 00 48     BR $0048
410e: c5           CLR B
410f: 9a 29        LDA *R41
4111: 35 00        XOR R0,B
4113: db 29        DECD R41
4115: 76 20 28 f6  BTJO %>20,R40,$410F
4119: 0a           RETS
411a: 52 08        MOV %>8,B
411c: b5           CLR A
411d: ab 00 77     STA @>0077(B)
4120: ca fb        DJNZ B,$411D
4122: 0a           RETS
4123: 8a 20 20     LDA @>2020
4126: 8b 20 21     STA @>2021
4129: b4           INV A
412a: 8b 20 20     STA @>2020
412d: 8a 20 b7     LDA @>20B7
4130: 8b 20 2e     STA @>202E
4133: b4           INV A
4134: 8b 20 b7     STA @>20B7
4137: d5 73        CLR R115
4139: 88 20 2f 71  MOVD %>202F,R113
413d: d5 6f        CLR R111
413f: d5 32        CLR R50
4141: 8e 41 1a     CALL $411A
4144: 8a 21 2b     LDA @>212B
4147: 2d 0a        CMP %>A,A
4149: e7 05        JL $4150
414b: 22 02        MOV %>2,A
414d: 8b 21 2b     STA @>212B
4150: c0           MOV A,B
4151: ce           RL B
4152: aa 54 f9     LDA @>54F9(B)
4155: 82 0f        MOVP A,P15
4157: aa 54 fa     LDA @>54FA(B)
415a: 82 0e        MOVP A,P14
415c: 8a 20 b8     LDA @>20B8
415f: be           RL A
4160: c0           MOV A,B
4161: aa 41 7a     LDA @>417A(B)
4164: d0 28        MOV A,R40
4166: aa 41 7b     LDA @>417B(B)
4169: d0 29        MOV A,R41
416b: 8a 20 b9     LDA @>20B9
416e: c0           MOV A,B
416f: be           RL A
4170: 38 00        ADD R0,B
4172: 48 01 29     ADD R1,R41
4175: 79 00 28     ADC %>0,R40
4178: 9c 29        BR *R41
417a: 41           Illegal Opcode
417b: 92 41        MOVP B,P65
417d: 9e 41        CALL *R65
417f: a7 41 ad 41  BTJZP %>41,P173,$41C4
4183: bc           RR A
4184: 41           Illegal Opcode
4185: c5           CLR B
4186: 41           Illegal Opcode
4187: c8           PUSH B
4188: 41           Illegal Opcode
4189: ce           RL B
418a: 41           Illegal Opcode
418b: d1 41        MOV B,R65
418d: d7 41        SWAP R65
418f: dd 41        RRC R65
4191: e6 8c        JNZ $411F
4193: 93 81        ANDP B,P129
4195: 8c 93 ff     BR $93FF
4198: 8c 94 93     BR $9493
419b: 8c 94 e3     BR $94E3
419e: 8c 9a 0e     BR $9A0E
41a1: 8c 9a 5f     BR $9A5F
41a4: 8c 9a d0     BR $9AD0
41a7: 8c 72 1a     BR $721A
41aa: 8c 75 02     BR $7502
41ad: 8c 6a 4c     BR $6A4C
41b0: 8c 6c a6     BR $6CA6
41b3: 8c 6d c2     BR $6DC2
41b6: 8c 6e c5     BR $6EC5
41b9: 8c 71 59     BR $7159
41bc: 8c aa 21     BR $AA21
41bf: 8c aa a9     BR $AAA9
41c2: 8c ab 06     BR $AB06
41c5: 8c 77 61     BR $7761
41c8: 8c 9d 68     BR $9D68
41cb: 8c 9d c8     BR $9DC8
41ce: 8c 78 ac     BR $78AC
41d1: 8c a9 32     BR $A932
41d4: 8c a9 9c     BR $A99C
41d7: 8c 62 48     BR $6248
41da: 8c 62 27     BR $6227
41dd: 8c 52 69     BR $5269
41e0: 8c 53 29     BR $5329
41e3: 8c 53 f2     BR $53F2
41e6: fb           TRAP 4
41e7: b5           CLR A
41e8: 8b 20 b9     STA @>20B9
41eb: 22 0b        MOV %>B,A
41ed: 8b 20 b8     STA @>20B8
41f0: 88 4d 7c 01  MOVD %>4D7C,R1
41f4: 8b 20 ba     STA @>20BA
41f7: 62           MOV B,A
41f8: 8b 20 bb     STA @>20BB
41fb: d5 32        CLR R50
41fd: 88 21 2a 2b  MOVD %>212A,R43
4201: 88 00 6e 2d  MOVD %>006E,R45
4205: 8e f0 4e     CALL $F04E
4208: f9           TRAP 6
4209: 8c 58 9a     BR $589A
420c: 8e 51 1c     CALL $511C
420f: 8e 42 1a     CALL $421A
4212: 8e 50 7e     CALL $507E
4215: 8e 47 f4     CALL $47F4
4218: e0 2b        JMP $4245
421a: 12 60        MOV R96,A
421c: e2 05        JEQ $4223
421e: 73 f0 64     AND %>F0,R100
4221: d5 65        CLR R101
4223: 88 00 00 67  MOVD %>0000,R103
4227: 0a           RETS
4228: 75 01 32     XOR %>1,R50
422b: 88 1d 4c 01  MOVD %>1D4C,R1
422f: cb           DECD B
4230: e3 fd        JHS $422F
4232: 0a           RETS
4233: d5 6f        CLR R111
4235: 88 20 2f 71  MOVD %>202F,R113
4239: 73 bf 32     AND %>BF,R50
423c: 76 02 72 02  BTJO %>2,R114,$4242
4240: d5 73        CLR R115
4242: 8e 41 1a     CALL $411A
4245: 73 f5 72     AND %>F5,R114
4248: 73 fe 32     AND %>FE,R50
424b: f9           TRAP 6
424c: 8c 58 76     BR $5876
424f: 8e 51 1c     CALL $511C
4252: d5 33        CLR R51
4254: 8c 55 6b     BR $556B
4257: fb           TRAP 4
4258: d5 32        CLR R50
425a: 88 44 87 75  MOVD %>4487,R117
425e: 8e 93 75     CALL $9375
4261: 8e 56 b2     CALL $56B2
4264: 72 05 33     MOV %>5,R51
4267: 8e 57 4a     CALL $574A
426a: b5           CLR A
426b: c5           CLR B
426c: 8e 57 51     CALL $5751
426f: 88 44 78 01  MOVD %>4478,R1
4273: 8e 56 9d     CALL $569D
4276: 88 59 b3 29  MOVD %>59B3,R41
427a: 8e 57 2e     CALL $572E
427d: 8e 58 9a     CALL $589A
4280: 8e 4d 9a     CALL $4D9A
4283: 7d 1b 76     CMP %>1B,R118
4286: e2 08        JEQ $4290
4288: 7d 1c 76     CMP %>1C,R118
428b: e6 f3        JNZ $4280
428d: 8c 41 5c     BR $415C
4290: 8e 42 9d     CALL $429D
4293: 88 44 60 01  MOVD %>4460,R1
4297: 8e 56 9d     CALL $569D
429a: 8c 58 76     BR $5876
429d: d5 72        CLR R114
429f: 88 27 ff 2b  MOVD %>27FF,R43
42a3: 88 08 00 2d  MOVD %>0800,R45
42a7: 8e f0 4e     CALL $F04E
42aa: 22 02        MOV %>2,A
42ac: 8b 20 2f     STA @>202F
42af: 22 02        MOV %>2,A
42b1: 8b 21 2b     STA @>212B
42b4: 22 40        MOV %>40,A
42b6: 8b 21 5c     STA @>215C
42b9: 8b 21 5f     STA @>215F
42bc: 8b 21 ae     STA @>21AE
42bf: 8b 21 b1     STA @>21B1
42c2: 8b 22 00     STA @>2200
42c5: 8b 22 03     STA @>2203
42c8: 8b 22 52     STA @>2252
42cb: 8b 22 55     STA @>2255
42ce: 8b 21 7a     STA @>217A
42d1: 8b 21 cc     STA @>21CC
42d4: 8b 22 1e     STA @>221E
42d7: 8b 22 70     STA @>2270
42da: 8b 21 7d     STA @>217D
42dd: 8b 21 cf     STA @>21CF
42e0: 8b 22 21     STA @>2221
42e3: 8b 22 73     STA @>2273
42e6: 22 01        MOV %>1,A
42e8: 8b 21 5d     STA @>215D
42eb: 8b 21 60     STA @>2160
42ee: 8b 21 af     STA @>21AF
42f1: 8b 21 b2     STA @>21B2
42f4: 8b 22 01     STA @>2201
42f7: 8b 22 04     STA @>2204
42fa: 8b 22 53     STA @>2253
42fd: 8b 22 56     STA @>2256
4300: 22 12        MOV %>12,A
4302: 8b 21 7b     STA @>217B
4305: 8b 21 cd     STA @>21CD
4308: 8b 22 1f     STA @>221F
430b: 8b 22 71     STA @>2271
430e: 8b 21 7e     STA @>217E
4311: 8b 21 d0     STA @>21D0
4314: 8b 22 22     STA @>2222
4317: 8b 22 74     STA @>2274
431a: 8b 21 84     STA @>2184
431d: 8b 21 d6     STA @>21D6
4320: 8b 22 28     STA @>2228
4323: 8b 22 7a     STA @>227A
4326: 22 10        MOV %>10,A
4328: 8b 21 85     STA @>2185
432b: 8b 21 d7     STA @>21D7
432e: 8b 22 29     STA @>2229
4331: 8b 22 7b     STA @>227B
4334: 22 40        MOV %>40,A
4336: 8b 22 9c     STA @>229C
4339: 8b 22 9e     STA @>229E
433c: 8b 22 b0     STA @>22B0
433f: b3           INC A
4340: 8b 22 94     STA @>2294
4343: 22 01        MOV %>1,A
4345: 8b 22 9d     STA @>229D
4348: 8b 22 9f     STA @>229F
434b: 8b 22 b1     STA @>22B1
434e: b3           INC A
434f: 8b 22 95     STA @>2295
4352: 22 10        MOV %>10,A
4354: 8b 22 ca     STA @>22CA
4357: 22 40        MOV %>40,A
4359: 8b 26 08     STA @>2608
435c: 22 12        MOV %>12,A
435e: 8b 26 09     STA @>2609
4361: 22 12        MOV %>12,A
4363: 8b 26 12     STA @>2612
4366: 8b 26 16     STA @>2616
4369: 22 31        MOV %>31,A
436b: 8b 26 13     STA @>2613
436e: 8b 26 17     STA @>2617
4371: 22 19        MOV %>19,A
4373: 8b 26 14     STA @>2614
4376: 8b 26 18     STA @>2618
4379: 22 87        MOV %>87,A
437b: 8b 26 15     STA @>2615
437e: 8b 26 19     STA @>2619
4381: 22 42        MOV %>42,A
4383: 8b 26 22     STA @>2622
4386: 8b 26 2a     STA @>262A
4389: 22 14        MOV %>14,A
438b: 8b 26 23     STA @>2623
438e: 8b 26 2b     STA @>262B
4391: 22 80        MOV %>80,A
4393: 8b 26 24     STA @>2624
4396: 8b 26 2c     STA @>262C
4399: 22 10        MOV %>10,A
439b: 8b 26 34     STA @>2634
439e: 22 12        MOV %>12,A
43a0: 8b 26 4e     STA @>264E
43a3: 8b 26 9b     STA @>269B
43a6: 8b 26 e8     STA @>26E8
43a9: 8b 27 35     STA @>2735
43ac: 8b 26 5a     STA @>265A
43af: 8b 26 a7     STA @>26A7
43b2: 8b 26 f4     STA @>26F4
43b5: 8b 27 41     STA @>2741
43b8: 22 31        MOV %>31,A
43ba: 8b 26 4f     STA @>264F
43bd: 8b 26 9c     STA @>269C
43c0: 8b 26 e9     STA @>26E9
43c3: 8b 27 36     STA @>2736
43c6: 8b 26 5b     STA @>265B
43c9: 8b 26 a8     STA @>26A8
43cc: 8b 26 f5     STA @>26F5
43cf: 8b 27 42     STA @>2742
43d2: 22 19        MOV %>19,A
43d4: 8b 26 50     STA @>2650
43d7: 8b 26 9d     STA @>269D
43da: 8b 26 ea     STA @>26EA
43dd: 8b 27 37     STA @>2737
43e0: 8b 26 5c     STA @>265C
43e3: 8b 26 a9     STA @>26A9
43e6: 8b 26 f6     STA @>26F6
43e9: 8b 27 43     STA @>2743
43ec: 22 87        MOV %>87,A
43ee: 8b 26 51     STA @>2651
43f1: 8b 26 9e     STA @>269E
43f4: 8b 26 eb     STA @>26EB
43f7: 8b 27 38     STA @>2738
43fa: 8b 26 5d     STA @>265D
43fd: 8b 26 aa     STA @>26AA
4400: 8b 26 f7     STA @>26F7
4403: 8b 27 44     STA @>2744
4406: 22 41        MOV %>41,A
4408: 8b 26 5e     STA @>265E
440b: 8b 26 ab     STA @>26AB
440e: 8b 26 f8     STA @>26F8
4411: 8b 27 45     STA @>2745
4414: b2           DEC A
4415: 8b 26 76     STA @>2676
4418: 8b 26 c3     STA @>26C3
441b: 8b 27 10     STA @>2710
441e: 8b 27 5d     STA @>275D
4421: 22 01        MOV %>1,A
4423: 8b 26 5f     STA @>265F
4426: 8b 26 ac     STA @>26AC
4429: 8b 26 f9     STA @>26F9
442c: 8b 27 46     STA @>2746
442f: 8b 26 77     STA @>2677
4432: 8b 26 c4     STA @>26C4
4435: 8b 27 11     STA @>2711
4438: 8b 27 5e     STA @>275E
443b: 22 02        MOV %>2,A
443d: 8b 26 97     STA @>2697
4440: 8b 26 e4     STA @>26E4
4443: 8b 27 31     STA @>2731
4446: 8b 27 7e     STA @>277E
4449: 22 6a        MOV %>6A,A
444b: 8b 20 20     STA @>2020
444e: 8e 41 23     CALL $4123
4451: 72 20 72     MOV %>20,R114
4454: 0a           RETS
4455: 20           Illegal Opcode
4456: 52 45        MOV %>45,B
4458: 53 45        AND %>45,B
445a: 54 20        OR %>20,B
445c: 44 4f 4e     OR R79,R78
445f: 45 20 4d     XOR R32,R77
4462: 45 4d 20     XOR R77,R32
4465: 43 4c 45     AND R76,R69
4468: 41           Illegal Opcode
4469: 52 45        MOV %>45,B
446b: 44 20 20     OR R32,R32
446e: 52 45        MOV %>45,B
4470: 53 45        AND %>45,B
4472: 54 20        OR %>20,B
4474: 41           Illegal Opcode
4475: 4c 4c 3f     MPY R76,R63
4478: 20           Illegal Opcode
4479: 59 45        ADC %>45,B
447b: 53 4e        AND %>4E,B
447d: 4f 20 20     DSB R32,R32
4480: 20           Illegal Opcode
4481: 20           Illegal Opcode
4482: 20           Illegal Opcode
4483: 20           Illegal Opcode
4484: 20           Illegal Opcode
4485: 20           Illegal Opcode
4486: 20           Illegal Opcode
4487: 20           Illegal Opcode
4488: ff           TRAP 0
4489: 3f 22        DSB R34,B
448b: 36 07 00     BTJO R7,B,$448E
448e: 00           NOP
448f: 00           NOP
4490: 00           NOP
4491: 3f 89        DSB R137,B
4493: 44 27 00     OR R39,R0
4496: 00           NOP
4497: 00           NOP
4498: 00           NOP
4499: 3f 31        DSB R49,B
449b: 62           MOV B,A
449c: 27 76 60     BTJZ %>76,A,$44FF
449f: 16 84 ff     BTJO R132,A,$44A1
44a2: 40           Illegal Opcode
44a3: 29 41        ADC %>41,A
44a5: 57 50 17     BTJZ %>50,B,$44BF
44a8: 23 23        AND %>23,A
44aa: bf           RLC A
44ab: 64           OR B,A
44ac: 90           Illegal Opcode
44ad: 66 82        BTJO B,A,$4431
44af: 74 09 43     OR %>9,R67
44b2: 40           Illegal Opcode
44b3: 47 92 52 56  BTJZ R146,R82,$450D
44b7: 04           Illegal Opcode
44b8: 38 73        ADD R115,B
44ba: bf           RLC A
44bb: 13 21        AND R33,A
44bd: 04           Illegal Opcode
44be: 78 35 01     ADD %>35,R1
44c1: 56 ff 40     BTJO %>FF,B,$4504
44c4: 08           POP ST
44c5: 51           Illegal Opcode
44c6: 67 31        BTJZ B,A,$44F9
44c8: 98 72 39     MOVD R114,R57
44cb: bf           RLC A
44cc: 13 68        AND R104,A
44ce: 23 70        AND %>70,A
44d0: 24 15        OR %>15,A
44d2: 03           Illegal Opcode
44d3: 40           Illegal Opcode
44d4: 06           DINT
44d5: 25 03        XOR %>3,A
44d7: 65           XOR B,A
44d8: 11           Illegal Opcode
44d9: 27 91 c0     BTJZ %>91,A,$449C
44dc: 71           Illegal Opcode
44dd: 43 33 82     AND R51,R130
44e0: 15 32        XOR R50,A
44e2: 26 40 02     BTJO %>40,A,$44E7
44e5: 30           Illegal Opcode
44e6: 25 85        XOR %>85,A
44e8: 09           STSP
44e9: 29 94        ADC %>94,A
44eb: 3e 02        DAC R2,B
44ed: 92 54        MOVP B,P84
44ef: 64           OR B,A
44f0: 97 02 28     BTJZP B,P2,$451B
44f3: 40           Illegal Opcode
44f4: 01           IDLE
44f5: 15 10        XOR R16,A
44f7: 00           NOP
44f8: 00           NOP
44f9: 00           NOP
44fa: 00           NOP
44fb: 3f 86        DSB R134,B
44fd: 85 88        XORP A,P136
44ff: 96 38 06     BTJOP B,P56,$4508
4502: 50           Illegal Opcode
4503: ff           TRAP 0
4504: 41           Illegal Opcode
4505: 10           Illegal Opcode
4506: 08           POP ST
4507: 92 97        MOVP B,P151
4509: 79 01 17     ADC %>1,R23
450c: 41           Illegal Opcode
450d: 01           IDLE
450e: 12 09        MOV R9,A
4510: 40           Illegal Opcode
4511: 81           Illegal Opcode
4512: 09           STSP
4513: 66 ff        BTJO B,A,$4514
4515: 41           Illegal Opcode
4516: 05           EINT
4517: 04           Illegal Opcode
4518: 46 48 89 50  BTJO R72,R137,$456C
451c: 59 40        ADC %>40,B
451e: 14 00        OR R0,A
4520: 82 99        MOVP A,P153
4522: 75 62 82     XOR %>62,R130
4525: 3f 03        DSB R3,B
4527: 32 87        MOV R135,B
4529: 36 46 51     BTJO R70,B,$457D
452c: 64           OR B,A
452d: fb           TRAP 4
452e: 8e 45 49     CALL $4549
4531: 8e 48 08     CALL $4808
4534: 8e 47 f4     CALL $47F4
4537: 73 f7 72     AND %>F7,R114
453a: 73 fe 32     AND %>FE,R50
453d: 8e 51 1c     CALL $511C
4540: fa           TRAP 5
4541: d5 33        CLR R51
4543: 8e 55 6b     CALL $556B
4546: 8c 58 76     BR $5876
4549: 12 61        MOV R97,A
454b: e2 47        JEQ $4594
454d: 8e 47 28     CALL $4728
4550: b8           PUSH A
4551: c8           PUSH B
4552: f5           TRAP 10
4553: 88 44 98 75  MOVD %>4498,R117
4557: 8e f0 2d     CALL $F02D
455a: 22 04        MOV %>4,A
455c: b8           PUSH A
455d: 98 71 75     MOVD R113,R117
4560: f6           TRAP 9
4561: f5           TRAP 10
4562: ee           TRAP 17
4563: 98 71 75     MOVD R113,R117
4566: f6           TRAP 9
4567: d4 48        INV R72
4569: ef           TRAP 16
456a: 8e 47 74     CALL $4774
456d: f4           TRAP 11
456e: ef           TRAP 16
456f: b9           POP A
4570: ba ea        DJNZ A,$455C
4572: 7a 08 71     SUB %>8,R113
4575: c9           POP B
4576: 57 01 0d     BTJZ %>1,B,$4586
4579: c8           PUSH B
457a: 88 44 a0 75  MOVD %>44A0,R117
457e: f6           TRAP 9
457f: f1           TRAP 14
4580: c9           POP B
4581: b9           POP A
4582: c3           INC B
4583: 29 00        ADC %>0,A
4585: b8           PUSH A
4586: b9           POP A
4587: bd           RRC A
4588: cd           RRC B
4589: 57 01 03     BTJZ %>1,B,$458F
458c: 8e 47 7e     CALL $477E
458f: bd           RRC A
4590: cd           RRC B
4591: 48 01 60     ADD R1,R96
4594: 0a           RETS
4595: fb           TRAP 4
4596: 8e 45 a1     CALL $45A1
4599: e0 96        JMP $4531
459b: fb           TRAP 4
459c: 8e 46 0c     CALL $460C
459f: e0 90        JMP $4531
45a1: 8e 47 20     CALL $4720
45a4: 7d 32 61     CMP %>32,R97
45a7: e3 04        JHS $45AD
45a9: 8e 47 7e     CALL $477E
45ac: cb           DECD B
45ad: b8           PUSH A
45ae: c8           PUSH B
45af: d4 60        INV R96
45b1: 8e 47 8b     CALL $478B
45b4: d4 60        INV R96
45b6: 88 44 e2 75  MOVD %>44E2,R117
45ba: 22 02        MOV %>2,A
45bc: 8e 47 a1     CALL $47A1
45bf: 88 45 02 75  MOVD %>4502,R117
45c3: f6           TRAP 9
45c4: ef           TRAP 16
45c5: f4           TRAP 11
45c6: f1           TRAP 14
45c7: f5           TRAP 10
45c8: 8e f0 15     CALL $F015
45cb: 72 41 60     MOV %>41,R96
45ce: c9           POP B
45cf: e2 2c        JEQ $45FD
45d1: e4 02        JP $45D5
45d3: c4           INV B
45d4: c3           INC B
45d5: d5 61        CLR R97
45d7: d5 62        CLR R98
45d9: 5a 10        SUB %>10,B
45db: e7 08        JL $45E5
45dd: 7e 15 62     DAC %>15,R98
45e0: 7e 00 61     DAC %>0,R97
45e3: e0 f4        JMP $45D9
45e5: 58 10        ADD %>10,B
45e7: c2           DEC B
45e8: e7 08        JL $45F2
45ea: 7e 00 62     DAC %>0,R98
45ed: 7e 00 61     DAC %>0,R97
45f0: e0 f5        JMP $45E7
45f2: 12 61        MOV R97,A
45f4: e6 07        JNZ $45FD
45f6: 42 62 61     MOV R98,R97
45f9: d5 62        CLR R98
45fb: d2 60        DEC R96
45fd: b9           POP A
45fe: e5 02        JPZ $4602
4600: d4 60        INV R96
4602: f4           TRAP 11
4603: ef           TRAP 16
4604: 88 44 ea 75  MOVD %>44EA,R117
4608: f6           TRAP 9
4609: 8c f0 0c     BR $F00C
460c: 8e 47 40     CALL $4740
460f: 7d 3a 60     CMP %>3A,R96
4612: e7 68        JL $467C
4614: c8           PUSH B
4615: f5           TRAP 10
4616: 88 45 02 75  MOVD %>4502,R117
461a: 8e 47 47     CALL $4747
461d: 8e 47 e0     CALL $47E0
4620: 72 41 48     MOV %>41,R72
4623: 88 02 56 4a  MOVD %>0256,R74
4627: 8e f0 39     CALL $F039
462a: e3 09        JHS $4635
462c: f4           TRAP 11
462d: d5 6f        CLR R111
462f: b9           POP A
4630: e5 56        JPZ $4688
4632: 8c f0 15     BR $F015
4635: b5           CLR A
4636: c5           CLR B
4637: 76 01 60 05  BTJO %>1,R96,$4640
463b: 42 61 62     MOV R97,R98
463e: d5 61        CLR R97
4640: c3           INC B
4641: 29 00        ADC %>0,A
4643: 7f 00 62     DSB %>0,R98
4646: 7f 00 61     DSB %>0,R97
4649: e3 f5        JHS $4640
464b: cb           DECD B
464c: b8           PUSH A
464d: c8           PUSH B
464e: 8e f0 30     CALL $F030
4651: 88 45 2c 75  MOVD %>452C,R117
4655: 22 04        MOV %>4,A
4657: 8e 47 a1     CALL $47A1
465a: 8e 47 8b     CALL $478B
465d: c9           POP B
465e: 57 01 0b     BTJZ %>1,B,$466C
4661: c8           PUSH B
4662: 88 44 a0 75  MOVD %>44A0,R117
4666: f6           TRAP 9
4667: 8e f0 1b     CALL $F01B
466a: ee           TRAP 17
466b: c9           POP B
466c: b9           POP A
466d: 8e 45 87     CALL $4587
4670: e5 1b        JPZ $468D
4672: e0 b9        JMP $462D
4674: 76 ff 61 22  BTJO %>FF,R97,$469A
4678: 12 49        MOV R73,A
467a: e2 0c        JEQ $4688
467c: 8e f0 15     CALL $F015
467f: 88 40 01 61  MOVD %>4001,R97
4683: 0a           RETS
4684: 77 80 60 aa  BTJZ %>80,R96,$4632
4688: d5 52        CLR R82
468a: 8c f0 18     BR $F018
468d: b9           POP A
468e: e5 f3        JPZ $4683
4690: 8e 47 e0     CALL $47E0
4693: 88 40 01 49  MOVD %>4001,R73
4697: 8c f0 0f     BR $F00F
469a: 12 49        MOV R73,A
469c: e2 e6        JEQ $4684
469e: 26 fe 10     BTJO %>FE,A,$46B1
46a1: 7d 40 48     CMP %>40,R72
46a4: e6 0b        JNZ $46B1
46a6: 52 06        MOV %>6,B
46a8: aa 00 49     LDA @>0049(B)
46ab: e6 04        JNZ $46B1
46ad: ca f9        DJNZ B,$46A8
46af: e0 cb        JMP $467C
46b1: 8e 47 40     CALL $4740
46b4: c8           PUSH B
46b5: 32 60        MOV R96,B
46b7: 5a 40        SUB %>40,B
46b9: e1 37        JN $46F2
46bb: b5           CLR A
46bc: 5d 06        CMP %>6,B
46be: e2 4c        JEQ $470C
46c0: e3 50        JHS $4712
46c2: aa 00 62     LDA @>0062(B)
46c5: e6 2b        JNZ $46F2
46c7: c3           INC B
46c8: 57 06 f7     BTJZ %>6,B,$46C2
46cb: 76 3f 60 3d  BTJO %>3F,R96,$470C
46cf: 72 33 68     MOV %>33,R104
46d2: aa 00 49     LDA @>0049(B)
46d5: e6 05        JNZ $46DC
46d7: 7e 11 68     DAC %>11,R104
46da: ca f6        DJNZ B,$46D2
46dc: 4d 61 68     CMP R97,R104
46df: e7 2b        JL $470C
46e1: d8 61        PUSH R97
46e3: 8e f0 1b     CALL $F01B
46e6: 8e f0 1e     CALL $F01E
46e9: b9           POP A
46ea: 2f 00        DSB %>0,A
46ec: e2 9f        JEQ $468D
46ee: b8           PUSH A
46ef: f1           TRAP 14
46f0: e0 f7        JMP $46E9
46f2: 76 80 48 24  BTJO %>80,R72,$471A
46f6: b5           CLR A
46f7: d9 60        POP R96
46f9: b8           PUSH A
46fa: f5           TRAP 10
46fb: 8e f0 1b     CALL $F01B
46fe: 8e 45 a1     CALL $45A1
4701: f4           TRAP 11
4702: f1           TRAP 14
4703: 8e 46 0c     CALL $460C
4706: b9           POP A
4707: e5 02        JPZ $470B
4709: d4 60        INV R96
470b: 0a           RETS
470c: 32 60        MOV R96,B
470e: aa 00 21     LDA @>0021(B)
4711: bc           RR A
4712: 77 80 48 e0  BTJZ %>80,R72,$46F6
4716: d4 48        INV R72
4718: e0 dd        JMP $46F7
471a: 72 02 6f     MOV %>2,R111
471d: d9 60        POP R96
471f: 0a           RETS
4720: 76 ff 61 04  BTJO %>FF,R97,$4728
4724: 72 02 6f     MOV %>2,R111
4727: fa           TRAP 5
4728: b5           CLR A
4729: 32 60        MOV R96,B
472b: e1 f7        JN $4724
472d: 5a 3f        SUB %>3F,B
472f: 2b 00        SBB %>0,A
4731: b0           CLRC
4732: cf           RLC B
4733: bf           RLC A
4734: 76 f0 61 04  BTJO %>F0,R97,$473C
4738: cb           DECD B
4739: 8e 47 7e     CALL $477E
473c: 72 3f 60     MOV %>3F,R96
473f: 0a           RETS
4740: 32 60        MOV R96,B
4742: e5 02        JPZ $4746
4744: d4 60        INV R96
4746: 0a           RETS
4747: f6           TRAP 9
4748: f1           TRAP 14
4749: 8e 47 6a     CALL $476A
474c: 8e 48 3e     CALL $483E
474f: f4           TRAP 11
4750: f5           TRAP 10
4751: 8e f0 51     CALL $F051
4754: f5           TRAP 10
4755: f6           TRAP 9
4756: f1           TRAP 14
4757: 7a 08 71     SUB %>8,R113
475a: f4           TRAP 11
475b: f0           TRAP 15
475c: f5           TRAP 10
475d: 78 08 71     ADD %>8,R113
4760: 8e f0 30     CALL $F030
4763: f6           TRAP 9
4764: f1           TRAP 14
4765: f4           TRAP 11
4766: f0           TRAP 15
4767: 8c f0 54     BR $F054
476a: 8e 47 e0     CALL $47E0
476d: 88 3f 50 49  MOVD %>3F50,R73
4771: 8c f0 06     BR $F006
4774: 8e 47 e0     CALL $47E0
4777: 88 3f 50 49  MOVD %>3F50,R73
477b: 8c f0 0c     BR $F00C
477e: b8           PUSH A
477f: c8           PUSH B
4780: 8e 47 e0     CALL $47E0
4783: 88 40 10 49  MOVD %>4010,R73
4787: f1           TRAP 14
4788: c9           POP B
4789: b9           POP A
478a: 0a           RETS
478b: f5           TRAP 10
478c: 8e 47 6a     CALL $476A
478f: 8e 47 6a     CALL $476A
4792: 8e f0 54     CALL $F054
4795: d4 60        INV R96
4797: 8e 47 6a     CALL $476A
479a: 8e 47 6a     CALL $476A
479d: f4           TRAP 11
479e: 8c f0 0f     BR $F00F
47a1: d8 76        PUSH R118
47a3: d0 76        MOV A,R118
47a5: f5           TRAP 10
47a6: 8e f0 1e     CALL $F01E
47a9: f1           TRAP 14
47aa: f5           TRAP 10
47ab: f5           TRAP 10
47ac: 8e f0 2d     CALL $F02D
47af: f4           TRAP 11
47b0: 76 01 76 18  BTJO %>1,R118,$47CC
47b4: f5           TRAP 10
47b5: 8e f0 1b     CALL $F01B
47b8: f5           TRAP 10
47b9: db 75        DECD R117
47bb: 77 08 76 05  BTJZ %>8,R118,$47C4
47bf: 8e f0 2d     CALL $F02D
47c2: e0 03        JMP $47C7
47c4: 8e f0 57     CALL $F057
47c7: 7a 08 71     SUB %>8,R113
47ca: f4           TRAP 11
47cb: ee           TRAP 17
47cc: f4           TRAP 11
47cd: 77 04 76 04  BTJZ %>4,R118,$47D5
47d1: f4           TRAP 11
47d2: f1           TRAP 14
47d3: e0 08        JMP $47DD
47d5: f1           TRAP 14
47d6: 76 02 76 03  BTJO %>2,R118,$47DD
47da: f4           TRAP 11
47db: f1           TRAP 14
47dc: ef           TRAP 16
47dd: d9 76        POP R118
47df: 0a           RETS
47e0: 52 08        MOV %>8,B
47e2: b5           CLR A
47e3: ab 00 47     STA @>0047(B)
47e6: ca fb        DJNZ B,$47E3
47e8: 0a           RETS
47e9: 52 08        MOV %>8,B
47eb: aa 00 77     LDA @>0077(B)
47ee: ab 00 5f     STA @>005F(B)
47f1: ca f8        DJNZ B,$47EB
47f3: 0a           RETS
47f4: 52 08        MOV %>8,B
47f6: aa 00 5f     LDA @>005F(B)
47f9: ab 00 77     STA @>0077(B)
47fc: ca f8        DJNZ B,$47F6
47fe: 0a           RETS
47ff: 8e 48 08     CALL $4808
4802: 7d 01 6f     CMP %>1,R111
4805: e6 14        JNZ $481B
4807: fa           TRAP 5
4808: 12 61        MOV R97,A
480a: e2 14        JEQ $4820
480c: 12 60        MOV R96,A
480e: e5 01        JPZ $4811
4810: b4           INV A
4811: 2d 72        CMP %>72,A
4813: e3 17        JHS $482C
4815: 2d 0e        CMP %>E,A
4817: e2 03        JEQ $481C
4819: e7 05        JL $4820
481b: 0a           RETS
481c: 76 f0 61 fb  BTJO %>F0,R97,$481B
4820: b5           CLR A
4821: 72 40 60     MOV %>40,R96
4824: 52 07        MOV %>7,B
4826: ab 00 60     STA @>0060(B)
4829: ca fb        DJNZ B,$4826
482b: 0a           RETS
482c: 72 01 6f     MOV %>1,R111
482f: 22 99        MOV %>99,A
4831: 8e 48 24     CALL $4824
4834: 22 71        MOV %>71,A
4836: 32 60        MOV R96,B
4838: e5 01        JPZ $483B
483a: b4           INV A
483b: d0 60        MOV A,R96
483d: 0a           RETS
483e: 32 61        MOV R97,B
4840: e2 3d        JEQ $487F
4842: 32 60        MOV R96,B
4844: e5 01        JPZ $4847
4846: c4           INV B
4847: 5a 40        SUB %>40,B
4849: e1 28        JN $4873
484b: 5d 06        CMP %>6,B
484d: e3 30        JHS $487F
484f: d5 68        CLR R104
4851: c3           INC B
4852: d1 69        MOV B,R105
4854: aa 00 61     LDA @>0061(B)
4857: 44 00 68     OR R0,R104
485a: b5           CLR A
485b: ab 00 61     STA @>0061(B)
485e: c3           INC B
485f: 5d 07        CMP %>7,B
4861: e6 f1        JNZ $4854
4863: 42 60 52     MOV R96,R82
4866: e5 17        JPZ $487F
4868: 12 68        MOV R104,A
486a: e2 13        JEQ $487F
486c: 32 69        MOV R105,B
486e: d4 60        INV R96
4870: 8c f0 36     BR $F036
4873: d8 60        PUSH R96
4875: 8e f0 15     CALL $F015
4878: c9           POP B
4879: e5 04        JPZ $487F
487b: 88 bf 01 61  MOVD %>BF01,R97
487f: 0a           RETS
4880: d8 60        PUSH R96
4882: 8e 46 7c     CALL $467C
4885: b9           POP A
4886: e5 02        JPZ $488A
4888: d4 60        INV R96
488a: 0a           RETS
488b: fb           TRAP 4
488c: 8e 46 90     CALL $4690
488f: 8c 45 31     BR $4531
4892: fb           TRAP 4
4893: 8e f0 1e     CALL $F01E
4896: f1           TRAP 14
4897: e0 f6        JMP $488F
4899: fb           TRAP 4
489a: 8e 48 9f     CALL $489F
489d: e0 f0        JMP $488F
489f: 52 06        MOV %>6,B
48a1: aa 00 61     LDA @>0061(B)
48a4: e6 1e        JNZ $48C4
48a6: ca f9        DJNZ B,$48A1
48a8: 7d 40 60     CMP %>40,R96
48ab: e6 17        JNZ $48C4
48ad: 7d 6a 61     CMP %>6A,R97
48b0: e3 12        JHS $48C4
48b2: 8e f0 1e     CALL $F01E
48b5: 8e 46 7c     CALL $467C
48b8: 7d 02 49     CMP %>2,R73
48bb: e7 c2        JL $487F
48bd: f1           TRAP 14
48be: b0           CLRC
48bf: 7f 00 49     DSB %>0,R73
48c2: e0 f4        JMP $48B8
48c4: 8c 47 24     BR $4724
48c7: fb           TRAP 4
48c8: d8 60        PUSH R96
48ca: e5 02        JPZ $48CE
48cc: d4 60        INV R96
48ce: d2 60        DEC R96
48d0: b9           POP A
48d1: e5 02        JPZ $48D5
48d3: d4 60        INV R96
48d5: 32 73        MOV R115,B
48d7: e2 b6        JEQ $488F
48d9: aa 20 21     LDA @>2021(B)
48dc: 26 f0 b0     BTJO %>F0,A,$488F
48df: 2d 04        CMP %>4,A
48e1: e3 ac        JHS $488F
48e3: 62           MOV B,A
48e4: b2           DEC A
48e5: 8e 49 ad     CALL $49AD
48e8: f1           TRAP 14
48e9: e0 a4        JMP $488F
48eb: 22 06        MOV %>6,A
48ed: e0 0e        JMP $48FD
48ef: 22 05        MOV %>5,A
48f1: e0 0a        JMP $48FD
48f3: 22 04        MOV %>4,A
48f5: e0 06        JMP $48FD
48f7: 22 03        MOV %>3,A
48f9: e0 02        JMP $48FD
48fb: 22 02        MOV %>2,A
48fd: d0 6a        MOV A,R106
48ff: 8e 51 13     CALL $5113
4902: 76 08 72 16  BTJO %>8,R114,$491C
4906: 74 08 72     OR %>8,R114
4909: e0 13        JMP $491E
490b: 72 01 6a     MOV %>1,R106
490e: e0 02        JMP $4912
4910: d5 6a        CLR R106
4912: 8e 51 13     CALL $5113
4915: 77 08 72 05  BTJZ %>8,R114,$491E
4919: 73 f7 72     AND %>F7,R114
491c: d2 73        DEC R115
491e: 32 73        MOV R115,B
4920: e6 06        JNZ $4928
4922: 76 fe 6a 3f  BTJO %>FE,R106,$4965
4926: e0 5d        JMP $4985
4928: aa 20 21     LDA @>2021(B)
492b: 26 f0 28     BTJO %>F0,A,$4956
492e: 8e 47 e9     CALL $47E9
4931: d2 73        DEC R115
4933: 12 73        MOV R115,A
4935: 8e 49 ad     CALL $49AD
4938: 32 73        MOV R115,B
493a: aa 20 22     LDA @>2022(B)
493d: 23 0f        AND %>F,A
493f: c0           MOV A,B
4940: be           RL A
4941: 68           ADD B,A
4942: 88 f0 00 55  MOVD %>F000,R85
4946: 48 00 55     ADD R0,R85
4949: 79 00 54     ADC %>0,R84
494c: 9e 55        CALL *R85
494e: 8e 48 08     CALL $4808
4951: 8e 47 f4     CALL $47F4
4954: e0 c8        JMP $491E
4956: 76 fe 6a 0b  BTJO %>FE,R106,$4965
495a: 77 01 6a d0  BTJZ %>1,R106,$492E
495e: 2a 10        SUB %>10,A
4960: ab 20 21     STA @>2021(B)
4963: e0 20        JMP $4985
4965: 76 04 73 2c  BTJO %>4,R115,$4995
4969: 32 73        MOV R115,B
496b: 12 6a        MOV R106,A
496d: ab 20 22     STA @>2022(B)
4970: d3 73        INC R115
4972: ce           RL B
4973: ce           RL B
4974: ce           RL B
4975: 88 20 07 2b  MOVD %>2007,R43
4979: 48 01 2b     ADD R1,R43
497c: 88 00 7f 29  MOVD %>007F,R41
4980: 88 00 08 2d  MOVD %>0008,R45
4984: f7           TRAP 8
4985: 73 fe 32     AND %>FE,R50
4988: 8e 51 1c     CALL $511C
498b: fa           TRAP 5
498c: d5 33        CLR R51
498e: 8e 55 6b     CALL $556B
4991: 8e 58 76     CALL $5876
4994: 0a           RETS
4995: 72 03 6f     MOV %>3,R111
4998: fa           TRAP 5
4999: fb           TRAP 4
499a: 32 73        MOV R115,B
499c: e2 0a        JEQ $49A8
499e: aa 20 21     LDA @>2021(B)
49a1: 28 10        ADD %>10,A
49a3: e3 f0        JHS $4995
49a5: ab 20 21     STA @>2021(B)
49a8: 8e 51 1c     CALL $511C
49ab: e0 df        JMP $498C
49ad: 88 20 07 75  MOVD %>2007,R117
49b1: be           RL A
49b2: be           RL A
49b3: be           RL A
49b4: 48 00 75     ADD R0,R117
49b7: 79 00 74     ADC %>0,R116
49ba: f6           TRAP 9
49bb: 0a           RETS
49bc: c5           CLR B
49bd: 8a 20 bb     LDA @>20BB
49c0: d0 2b        MOV A,R43
49c2: 8a 20 ba     LDA @>20BA
49c5: d0 2a        MOV A,R42
49c7: 48 01 2b     ADD R1,R43
49ca: 79 00 2a     ADC %>0,R42
49cd: 9c 2b        BR *R43
49cf: 52 03        MOV %>3,B
49d1: e0 ea        JMP $49BD
49d3: 52 06        MOV %>6,B
49d5: e0 e6        JMP $49BD
49d7: 52 09        MOV %>9,B
49d9: e0 e2        JMP $49BD
49db: 52 0c        MOV %>C,B
49dd: e0 de        JMP $49BD
49df: 52 0f        MOV %>F,B
49e1: e0 da        JMP $49BD
49e3: 52 12        MOV %>12,B
49e5: e0 d6        JMP $49BD
49e7: 52 15        MOV %>15,B
49e9: e0 d2        JMP $49BD
49eb: 52 18        MOV %>18,B
49ed: e0 ce        JMP $49BD
49ef: 52 1b        MOV %>1B,B
49f1: e0 ca        JMP $49BD
49f3: 77 40 32 1e  BTJZ %>40,R50,$4A15
49f7: 8c 60 64     BR $6064
49fa: 8c 52 da     BR $52DA
49fd: 8c 4a 15     BR $4A15
4a00: 8c 4a 15     BR $4A15
4a03: 8c 4a 15     BR $4A15
4a06: 8c 4a 15     BR $4A15
4a09: 8c 4a 15     BR $4A15
4a0c: 8c 4a 15     BR $4A15
4a0f: 8c 53 84     BR $5384
4a12: 8c 4a 15     BR $4A15
4a15: 0a           RETS
4a16: 8c 53 d0     BR $53D0
4a19: 8c 53 d7     BR $53D7
4a1c: 8c 4a 15     BR $4A15
4a1f: 8c 4a 15     BR $4A15
4a22: 8c 4a 15     BR $4A15
4a25: 8c 4a 15     BR $4A15
4a28: 8c 52 69     BR $5269
4a2b: 8c 53 f2     BR $53F2
4a2e: 8c 4a 15     BR $4A15
4a31: 8c 4a 15     BR $4A15
4a34: 8c 54 50     BR $5450
4a37: 8c 54 57     BR $5457
4a3a: 8c 4a 15     BR $4A15
4a3d: 8c 4a 15     BR $4A15
4a40: 8c 4a 15     BR $4A15
4a43: 8c 4a 15     BR $4A15
4a46: 8c 54 5f     BR $545F
4a49: 8c 4a 15     BR $4A15
4a4c: 8c 4a 15     BR $4A15
4a4f: 8c 4a 15     BR $4A15
4a52: 8c 61 e6     BR $61E6
4a55: 8c 61 d6     BR $61D6
4a58: 8c 61 da     BR $61DA
4a5b: 8c 61 de     BR $61DE
4a5e: 8c 61 e2     BR $61E2
4a61: 8c 4a 15     BR $4A15
4a64: 8c 4a 15     BR $4A15
4a67: 8c 62 27     BR $6227
4a6a: 8c 4a 15     BR $4A15
4a6d: 8c 4a 15     BR $4A15
4a70: 8c 61 e6     BR $61E6
4a73: 8c 61 d6     BR $61D6
4a76: 8c 61 da     BR $61DA
4a79: 8c 61 de     BR $61DE
4a7c: 8c 61 e2     BR $61E2
4a7f: 8c 4a 15     BR $4A15
4a82: 8c 62 48     BR $6248
4a85: 8c 4a 15     BR $4A15
4a88: 8c 4a 15     BR $4A15
4a8b: 8c 4a 15     BR $4A15
4a8e: 8c 79 0b     BR $790B
4a91: 8c 79 5c     BR $795C
4a94: 8c 79 ad     BR $79AD
4a97: 8c 49 f3     BR $49F3
4a9a: 8c 49 f3     BR $49F3
4a9d: 8c 60 64     BR $6064
4aa0: 8c 4a 15     BR $4A15
4aa3: 8c 4a 15     BR $4A15
4aa6: 8c 4a 15     BR $4A15
4aa9: 8c 4a 15     BR $4A15
4aac: 8c 77 c0     BR $77C0
4aaf: 8c 78 14     BR $7814
4ab2: 8c 78 68     BR $7868
4ab5: 8c 49 f3     BR $49F3
4ab8: 8c 49 f3     BR $49F3
4abb: 8c 60 64     BR $6064
4abe: 8c 7a 94     BR $7A94
4ac1: 8c 4a 15     BR $4A15
4ac4: 8c 4a 15     BR $4A15
4ac7: 8c 4a 15     BR $4A15
4aca: 8c 9c 1d     BR $9C1D
4acd: 8c 9c 84     BR $9C84
4ad0: 8c 9c c8     BR $9CC8
4ad3: 8c 49 f3     BR $49F3
4ad6: 8c 49 f3     BR $49F3
4ad9: 8c 60 64     BR $6064
4adc: 8c 4a 15     BR $4A15
4adf: 8c 9d c8     BR $9DC8
4ae2: 8c 4a 15     BR $4A15
4ae5: 8c 4a 15     BR $4A15
4ae8: 8c 9c 1d     BR $9C1D
4aeb: 8c 9c 84     BR $9C84
4aee: 8c 9c fa     BR $9CFA
4af1: 8c 49 f3     BR $49F3
4af4: 8c 49 f3     BR $49F3
4af7: 8c 60 64     BR $6064
4afa: 8c 9d 68     BR $9D68
4afd: 8c 4a 15     BR $4A15
4b00: 8c 4a 15     BR $4A15
4b03: 8c 4a 15     BR $4A15
4b06: 8c 8d 02     BR $8D02
4b09: 8c 8d 3f     BR $8D3F
4b0c: 8c 8d 7c     BR $8D7C
4b0f: 8c 8d b9     BR $8DB9
4b12: 8c 8e 11     BR $8E11
4b15: 8c 60 64     BR $6064
4b18: 8c 4a 15     BR $4A15
4b1b: 8c 8e 4e     BR $8E4E
4b1e: 8c 8e 54     BR $8E54
4b21: 8c 8e 60     BR $8E60
4b24: 8c 8e 6d     BR $8E6D
4b27: 8c 8e 85     BR $8E85
4b2a: 8c 4a 15     BR $4A15
4b2d: 8c 4a 15     BR $4A15
4b30: 8c 4a 15     BR $4A15
4b33: 8c 8e af     BR $8EAF
4b36: 8c 8e d2     BR $8ED2
4b39: 8c 8e d5     BR $8ED5
4b3c: 8c 8e db     BR $8EDB
4b3f: 8c 8e e7     BR $8EE7
4b42: 8c 8f 15     BR $8F15
4b45: 8c 8f 6e     BR $8F6E
4b48: 8c 8f fa     BR $8FFA
4b4b: 8c 8f bf     BR $8FBF
4b4e: 8c 8f ee     BR $8FEE
4b51: 8c 4a 15     BR $4A15
4b54: 8c 8e f4     BR $8EF4
4b57: 8c 8e fa     BR $8EFA
4b5a: 8c 8e fd     BR $8EFD
4b5d: 8c 8f 08     BR $8F08
4b60: 8c 90 73     BR $9073
4b63: 8c 90 c8     BR $90C8
4b66: 8c 4a 15     BR $4A15
4b69: 8c 4a 15     BR $4A15
4b6c: 8c 4a 15     BR $4A15
4b6f: 8c 4a 15     BR $4A15
4b72: 8c 90 54     BR $9054
4b75: 8c 4a 15     BR $4A15
4b78: 8c 90 5a     BR $905A
4b7b: 8c 90 66     BR $9066
4b7e: 8c 4a 15     BR $4A15
4b81: 8c 4a 15     BR $4A15
4b84: 8c 4a 15     BR $4A15
4b87: 8c 4a 15     BR $4A15
4b8a: 8c 4a 15     BR $4A15
4b8d: 8c 4a 15     BR $4A15
4b90: 8c 90 54     BR $9054
4b93: 8c 4a 15     BR $4A15
4b96: 8c 90 5a     BR $905A
4b99: 8c 90 66     BR $9066
4b9c: 8c 90 73     BR $9073
4b9f: 8c 90 c8     BR $90C8
4ba2: 8c 90 d7     BR $90D7
4ba5: 8c 4a 15     BR $4A15
4ba8: 8c 4a 15     BR $4A15
4bab: 8c 4a 15     BR $4A15
4bae: 8c 90 54     BR $9054
4bb1: 8c 4a 15     BR $4A15
4bb4: 8c 90 5a     BR $905A
4bb7: 8c 90 66     BR $9066
4bba: 8c 98 06     BR $9806
4bbd: 8c 98 1e     BR $981E
4bc0: 8c 98 29     BR $9829
4bc3: 8c 98 37     BR $9837
4bc6: 8c 98 52     BR $9852
4bc9: 8c 4a 15     BR $4A15
4bcc: 8c 4a 15     BR $4A15
4bcf: 8c 98 88     BR $9888
4bd2: 8c 4a 15     BR $4A15
4bd5: 8c 4a 15     BR $4A15
4bd8: 8c 98 8e     BR $988E
4bdb: 8c 98 ce     BR $98CE
4bde: 8c 99 03     BR $9903
4be1: 8c 99 65     BR $9965
4be4: 8c 4a 15     BR $4A15
4be7: 8c 4a 15     BR $4A15
4bea: 8c 9a 0e     BR $9A0E
4bed: 8c 9a d0     BR $9AD0
4bf0: 8c 4a 15     BR $4A15
4bf3: 8c 4a 15     BR $4A15
4bf6: 8c 99 20     BR $9920
4bf9: 8c 4a 15     BR $4A15
4bfc: 8c 4a 15     BR $4A15
4bff: 8c 4a 15     BR $4A15
4c02: 8c 4a 15     BR $4A15
4c05: 8c 99 83     BR $9983
4c08: 8c 9a 02     BR $9A02
4c0b: 8c 4a 15     BR $4A15
4c0e: 8c 4a 15     BR $4A15
4c11: 8c 4a 15     BR $4A15
4c14: 8c 72 f4     BR $72F4
4c17: 8c 73 2e     BR $732E
4c1a: 8c 73 6e     BR $736E
4c1d: 8c 73 9d     BR $739D
4c20: 8c 73 e4     BR $73E4
4c23: 8c 60 64     BR $6064
4c26: 8c 4a 15     BR $4A15
4c29: 8c 72 ca     BR $72CA
4c2c: 8c 72 11     BR $7211
4c2f: 8c 72 08     BR $7208
4c32: 8c 74 25     BR $7425
4c35: 8c 74 81     BR $7481
4c38: 8c 75 c3     BR $75C3
4c3b: 8c 76 aa     BR $76AA
4c3e: 8c 76 1e     BR $761E
4c41: 8c 4a 15     BR $4A15
4c44: 8c 71 f1     BR $71F1
4c47: 8c 72 ca     BR $72CA
4c4a: 8c 74 e5     BR $74E5
4c4d: 8c 74 f0     BR $74F0
4c50: 8c 6a b6     BR $6AB6
4c53: 8c 6a db     BR $6ADB
4c56: 8c 4a 15     BR $4A15
4c59: 8c 6b 13     BR $6B13
4c5c: 8c 6b e1     BR $6BE1
4c5f: 8c 4a 15     BR $4A15
4c62: 8c 4a 15     BR $4A15
4c65: 8c 6a b0     BR $6AB0
4c68: 8c 4a 15     BR $4A15
4c6b: 8c 4a 15     BR $4A15
4c6e: 8c 4a 15     BR $4A15
4c71: 8c 4a 15     BR $4A15
4c74: 8c 4a 15     BR $4A15
4c77: 8c 4a 15     BR $4A15
4c7a: 8c 4a 15     BR $4A15
4c7d: 8c 4a 15     BR $4A15
4c80: 8c 6a 4c     BR $6A4C
4c83: 8c 6d aa     BR $6DAA
4c86: 8c 4a 15     BR $4A15
4c89: 8c 4a 15     BR $4A15
4c8c: 8c 4a 15     BR $4A15
4c8f: 8c 4a 15     BR $4A15
4c92: 8c 4a 15     BR $4A15
4c95: 8c 4a 15     BR $4A15
4c98: 8c 4a 15     BR $4A15
4c9b: 8c 4a 15     BR $4A15
4c9e: 8c 6e b0     BR $6EB0
4ca1: 8c 6e aa     BR $6EAA
4ca4: 8c 4a 15     BR $4A15
4ca7: 8c 4a 15     BR $4A15
4caa: 8c 4a 15     BR $4A15
4cad: 8c 4a 15     BR $4A15
4cb0: 8c 4a 15     BR $4A15
4cb3: 8c 70 4a     BR $704A
4cb6: 8c 70 bc     BR $70BC
4cb9: 8c 4a 15     BR $4A15
4cbc: 8c 70 44     BR $7044
4cbf: 8c 71 59     BR $7159
4cc2: 8c 4a 15     BR $4A15
4cc5: 8c 4a 15     BR $4A15
4cc8: 8c 4a 15     BR $4A15
4ccb: 8c 4a 15     BR $4A15
4cce: 8c 4a 15     BR $4A15
4cd1: 8c 4a 15     BR $4A15
4cd4: 8c 4a 15     BR $4A15
4cd7: 8c 4a 15     BR $4A15
4cda: 8c 71 d6     BR $71D6
4cdd: 8c 4a 15     BR $4A15
4ce0: 8c 4a 15     BR $4A15
4ce3: 8c 4a 15     BR $4A15
4ce6: 8c a7 b1     BR $A7B1
4ce9: 8c a8 2a     BR $A82A
4cec: 8c a8 a3     BR $A8A3
4cef: 8c 49 f3     BR $49F3
4cf2: 8c 49 f3     BR $49F3
4cf5: 8c 60 64     BR $6064
4cf8: 8c 4a 15     BR $4A15
4cfb: 8c a9 9c     BR $A99C
4cfe: 8c 4a 15     BR $4A15
4d01: 8c 4a 15     BR $4A15
4d04: 8c a9 08     BR $A908
4d07: 8c a9 1a     BR $A91A
4d0a: 8c 4a 15     BR $4A15
4d0d: 8c 4a 15     BR $4A15
4d10: 8c 4a 15     BR $4A15
4d13: 8c 4a 15     BR $4A15
4d16: 8c a9 32     BR $A932
4d19: 8c 4a 15     BR $4A15
4d1c: 8c 4a 15     BR $4A15
4d1f: 8c 4a 15     BR $4A15
4d22: 8c ac ec     BR $ACEC
4d25: 8c ad 29     BR $AD29
4d28: 8c ad 5b     BR $AD5B
4d2b: 8c ad 98     BR $AD98
4d2e: 8c 4a 15     BR $4A15
4d31: 8c 4a 15     BR $4A15
4d34: 8c 4a 15     BR $4A15
4d37: 8c aa 9d     BR $AA9D
4d3a: 8c ac 77     BR $AC77
4d3d: 8c ac 83     BR $AC83
4d40: 8c ad c6     BR $ADC6
4d43: 8c ae 30     BR $AE30
4d46: 8c 49 f3     BR $49F3
4d49: 8c ae 7d     BR $AE7D
4d4c: 8c ae af     BR $AEAF
4d4f: 8c 60 64     BR $6064
4d52: 8c aa 21     BR $AA21
4d55: 8c ab 06     BR $AB06
4d58: 8c ac 91     BR $AC91
4d5b: 8c ac 9d     BR $AC9D
4d5e: 8c ae e1     BR $AEE1
4d61: 8c 4a 15     BR $4A15
4d64: 8c 4a 15     BR $4A15
4d67: 8c 4a 15     BR $4A15
4d6a: 8c 4a 15     BR $4A15
4d6d: 8c af 0e     BR $AF0E
4d70: 8c aa a3     BR $AAA3
4d73: 8c 4a 15     BR $4A15
4d76: 8c ac ab     BR $ACAB
4d79: 8c ac b7     BR $ACB7
4d7c: 8c 4a 15     BR $4A15
4d7f: 8c 4a 15     BR $4A15
4d82: 8c 4a 15     BR $4A15
4d85: 8c 4a 15     BR $4A15
4d88: 8c 4a 15     BR $4A15
4d8b: 8c 4a 15     BR $4A15
4d8e: 8c 4a 15     BR $4A15
4d91: 8c 4a 15     BR $4A15
4d94: 8c 4a 15     BR $4A15
4d97: 8c 4a 15     BR $4A15
4d9a: d5 2e        CLR R46
4d9c: 52 b0        MOV %>B0,B
4d9e: 22 ff        MOV %>FF,A
4da0: 8e f0 48     CALL $F048
4da3: 22 ff        MOV %>FF,A
4da5: 52 9f        MOV %>9F,B
4da7: a2 e0 02     MOVP %>E0,P2
4daa: 8e f0 72     CALL $F072
4dad: e6 eb        JNZ $4D9A
4daf: 88 34 bc 2f  MOVD %>34BC,R47
4db3: 22 ff        MOV %>FF,A
4db5: 52 b3        MOV %>B3,B
4db7: 77 04 72 02  BTJZ %>4,R114,$4DBD
4dbb: 52 b0        MOV %>B0,B
4dbd: 8e f0 5a     CALL $F05A
4dc0: 12 2e        MOV R46,A
4dc2: e1 09        JN $4DCD
4dc4: 8e 4d d3     CALL $4DD3
4dc7: e1 ea        JN $4DB3
4dc9: e7 44        JL $4E0F
4dcb: e0 e2        JMP $4DAF
4dcd: 52 01        MOV %>1,B
4dcf: 0d           LDSP
4dd0: 8c 40 de     BR $40DE
4dd3: 72 ff 2d     MOV %>FF,R45
4dd6: c5           CLR B
4dd7: 07           SETC
4dd8: cd           RRC B
4dd9: e2 35        JEQ $4E10
4ddb: dd 2d        RRC R45
4ddd: 8e f0 42     CALL $F042
4de0: 23 7f        AND %>7F,A
4de2: e2 f4        JEQ $4DD8
4de4: 98 01 29     MOVD R1,R41
4de7: 32 2d        MOV R45,B
4de9: e2 07        JEQ $4DF2
4deb: 8e f0 42     CALL $F042
4dee: 23 7f        AND %>7F,A
4df0: e6 21        JNZ $4E13
4df2: 32 29        MOV R41,B
4df4: 8e f0 42     CALL $F042
4df7: 23 7f        AND %>7F,A
4df9: 1d 28        CMP R40,A
4dfb: e6 d6        JNZ $4DD3
4dfd: b5           CLR A
4dfe: b3           INC A
4dff: cd           RRC B
4e00: e7 fc        JL $4DFE
4e02: 32 28        MOV R40,B
4e04: 28 08        ADD %>8,A
4e06: cd           RRC B
4e07: e7 fb        JL $4E04
4e09: e6 08        JNZ $4E13
4e0b: 2a 09        SUB %>9,A
4e0d: d0 76        MOV A,R118
4e0f: 0a           RETS
4e10: 22 ff        MOV %>FF,A
4e12: 0a           RETS
4e13: 07           SETC
4e14: 0a           RETS
4e15: 32 76        MOV R118,B
4e17: 62           MOV B,A
4e18: ce           RL B
4e19: 38 00        ADD R0,B
4e1b: 76 01 32 03  BTJO %>1,R50,$4E22
4e1f: ac 4e 25     BR @>4E25(B)
4e22: ac 4e cd     BR @>4ECD(B)
4e25: 8c 4f 75     BR $4F75
4e28: 8c 6a 46     BR $6A46
4e2b: 8c 4f 75     BR $4F75
4e2e: 8c 9a 08     BR $9A08
4e31: 8c aa 1b     BR $AA1B
4e34: 8c 71 eb     BR $71EB
4e37: 8c 8c df     BR $8CDF
4e3a: 8c 4f 75     BR $4F75
4e3d: 8c 4f 75     BR $4F75
4e40: 8c 50 30     BR $5030
4e43: 8c 49 0b     BR $490B
4e46: 8c 4f 75     BR $4F75
4e49: 8c 4f d0     BR $4FD0
4e4c: 8c 4f df     BR $4FDF
4e4f: 8c 4f ee     BR $4FEE
4e52: 8c 50 24     BR $5024
4e55: 8c 4f 75     BR $4F75
4e58: 8c 4f 75     BR $4F75
4e5b: 8c 48 c7     BR $48C7
4e5e: 8c 48 ef     BR $48EF
4e61: 8c 48 f3     BR $48F3
4e64: 8c 48 f7     BR $48F7
4e67: 8c 48 fb     BR $48FB
4e6a: 8c 49 10     BR $4910
4e6d: 8c 4f 75     BR $4F75
4e70: 8c 49 db     BR $49DB
4e73: 8c 49 df     BR $49DF
4e76: 8c 49 bc     BR $49BC
4e79: 8c 49 cf     BR $49CF
4e7c: 8c 49 d3     BR $49D3
4e7f: 8c 49 d7     BR $49D7
4e82: 8c 18 00     BR $1800
4e85: 8c 4f 75     BR $4F75
4e88: 8c 49 e7     BR $49E7
4e8b: 8c 49 99     BR $4999
4e8e: 8c 4f 75     BR $4F75
4e91: 8c 4f d5     BR $4FD5
4e94: 8c 4f e4     BR $4FE4
4e97: 8c 4f f3     BR $4FF3
4e9a: 8c 50 0f     BR $500F
4e9d: 8c 4f 75     BR $4F75
4ea0: 8c 49 e3     BR $49E3
4ea3: 8c 49 ef     BR $49EF
4ea6: 8c 48 92     BR $4892
4ea9: 8c 4f da     BR $4FDA
4eac: 8c 4f e9     BR $4FE9
4eaf: 8c 4f f8     BR $4FF8
4eb2: 8c 4f fd     BR $4FFD
4eb5: 8c 4f 75     BR $4F75
4eb8: 8c 42 28     BR $4228
4ebb: 8c 49 eb     BR $49EB
4ebe: 8c 48 eb     BR $48EB
4ec1: 8c 4f 75     BR $4F75
4ec4: 8c 62 4d     BR $624D
4ec7: 8c 62 e2     BR $62E2
4eca: 8c 42 33     BR $4233
4ecd: 8c 4f 75     BR $4F75
4ed0: 8c 60 ca     BR $60CA
4ed3: 8c 4f 75     BR $4F75
4ed6: 8c a9 2c     BR $A92C
4ed9: 8c 9d 62     BR $9D62
4edc: 8c 78 a6     BR $78A6
4edf: 8c 77 5b     BR $775B
4ee2: 8c 4f 75     BR $4F75
4ee5: 8c 4f 75     BR $4F75
4ee8: 8c 50 30     BR $5030
4eeb: 8c 45 9b     BR $459B
4eee: 8c 4f 75     BR $4F75
4ef1: 8c 4f d0     BR $4FD0
4ef4: 8c 4f df     BR $4FDF
4ef7: 8c 4f ee     BR $4FEE
4efa: 8c 42 57     BR $4257
4efd: 8c 4f 75     BR $4F75
4f00: 8c 4f 75     BR $4F75
4f03: 8c 42 0c     BR $420C
4f06: 8c 48 99     BR $4899
4f09: 8c 48 f3     BR $48F3
4f0c: 8c 48 f7     BR $48F7
4f0f: 8c 48 fb     BR $48FB
4f12: 8c 49 10     BR $4910
4f15: 8c 4f 75     BR $4F75
4f18: 8c 49 db     BR $49DB
4f1b: 8c 49 df     BR $49DF
4f1e: 8c 49 bc     BR $49BC
4f21: 8c 49 cf     BR $49CF
4f24: 8c 49 d3     BR $49D3
4f27: 8c 49 d7     BR $49D7
4f2a: 8c 4f 75     BR $4F75
4f2d: 8c 4f 75     BR $4F75
4f30: 8c 54 b6     BR $54B6
4f33: 8c 45 95     BR $4595
4f36: 8c 4f 75     BR $4F75
4f39: 8c 4f d5     BR $4FD5
4f3c: 8c 4f e4     BR $4FE4
4f3f: 8c 4f f3     BR $4FF3
4f42: 8c 52 69     BR $5269
4f45: 8c 4f 75     BR $4F75
4f48: 8c 54 74     BR $5474
4f4b: 8c 49 ef     BR $49EF
4f4e: 8c 45 2d     BR $452D
4f51: 8c 4f da     BR $4FDA
4f54: 8c 4f e9     BR $4FE9
4f57: 8c 4f f8     BR $4FF8
4f5a: 8c 4f fd     BR $4FFD
4f5d: 8c 4f 75     BR $4F75
4f60: 8c 42 28     BR $4228
4f63: 8c 49 eb     BR $49EB
4f66: 8c 48 8b     BR $488B
4f69: 8c 4f 75     BR $4F75
4f6c: 8c 68 d6     BR $68D6
4f6f: 8c 66 ce     BR $66CE
4f72: 8c 41 e6     BR $41E6
4f75: 0a           RETS
4f76: 76 02 72 0f  BTJO %>2,R114,$4F89
4f7a: 22 ff        MOV %>FF,A
4f7c: 52 08        MOV %>8,B
4f7e: ab 00 77     STA @>0077(B)
4f81: ca fb        DJNZ B,$4F7E
4f83: 73 ee 72     AND %>EE,R114
4f86: 74 02 72     OR %>2,R114
4f89: 7d f0 79     CMP %>F0,R121
4f8c: e7 18        JL $4FA6
4f8e: 76 01 72 05  BTJO %>1,R114,$4F97
4f92: 7d f0 7d     CMP %>F0,R125
4f95: e2 0a        JEQ $4FA1
4f97: 88 00 7d 29  MOVD %>007D,R41
4f9b: 72 05 2d     MOV %>5,R45
4f9e: 8e 4f a7     CALL $4FA7
4fa1: 48 76 7d     ADD R118,R125
4fa4: d2 30        DEC R48
4fa6: 0a           RETS
4fa7: c5           CLR B
4fa8: 9a 29        LDA *R41
4faa: b7           SWAP A
4fab: b8           PUSH A
4fac: 23 f0        AND %>F0,A
4fae: 68           ADD B,A
4faf: 9b 29        STA *R41
4fb1: c9           POP B
4fb2: 53 0f        AND %>F,B
4fb4: db 29        DECD R41
4fb6: da 2d ef     DJNZ R45,$4FA8
4fb9: 0a           RETS
4fba: c5           CLR B
4fbb: 9a 29        LDA *R41
4fbd: b7           SWAP A
4fbe: b8           PUSH A
4fbf: 23 0f        AND %>F,A
4fc1: 68           ADD B,A
4fc2: 9b 29        STA *R41
4fc4: c9           POP B
4fc5: 53 f0        AND %>F0,B
4fc7: d3 29        INC R41
4fc9: 79 00 28     ADC %>0,R40
4fcc: da 2d ec     DJNZ R45,$4FBB
4fcf: 0a           RETS
4fd0: 72 09 76     MOV %>9,R118
4fd3: e0 2a        JMP $4FFF
4fd5: 72 08 76     MOV %>8,R118
4fd8: e0 25        JMP $4FFF
4fda: 72 07 76     MOV %>7,R118
4fdd: e0 20        JMP $4FFF
4fdf: 72 06 76     MOV %>6,R118
4fe2: e0 1b        JMP $4FFF
4fe4: 72 05 76     MOV %>5,R118
4fe7: e0 16        JMP $4FFF
4fe9: 72 04 76     MOV %>4,R118
4fec: e0 11        JMP $4FFF
4fee: 72 03 76     MOV %>3,R118
4ff1: e0 0c        JMP $4FFF
4ff3: 72 02 76     MOV %>2,R118
4ff6: e0 07        JMP $4FFF
4ff8: 72 01 76     MOV %>1,R118
4ffb: e0 02        JMP $4FFF
4ffd: d5 76        CLR R118
4fff: 8e 4f 76     CALL $4F76
5002: 73 f7 72     AND %>F7,R114
5005: 73 fe 32     AND %>FE,R50
5008: 8e 55 66     CALL $5566
500b: 8e 58 76     CALL $5876
500e: 0a           RETS
500f: 76 02 72 05  BTJO %>2,R114,$5018
5013: d5 76        CLR R118
5015: 8e 4f 76     CALL $4F76
5018: 76 01 72 e6  BTJO %>1,R114,$5002
501c: 74 01 72     OR %>1,R114
501f: 72 0a 30     MOV %>A,R48
5022: e0 de        JMP $5002
5024: 75 10 72     XOR %>10,R114
5027: 76 02 72 d7  BTJO %>2,R114,$5002
502b: d4 78        INV R120
502d: 8c 42 45     BR $4245
5030: 77 02 72 da  BTJZ %>2,R114,$500E
5034: 77 01 72 0a  BTJZ %>1,R114,$5042
5038: 7d 0a 30     CMP %>A,R48
503b: e6 05        JNZ $5042
503d: 73 fe 72     AND %>FE,R114
5040: e0 0f        JMP $5051
5042: 72 05 2d     MOV %>5,R45
5045: 88 00 79 29  MOVD %>0079,R41
5049: 8e 4f ba     CALL $4FBA
504c: 78 f0 79     ADD %>F0,R121
504f: d3 30        INC R48
5051: 12 7d        MOV R125,A
5053: 23 0f        AND %>F,A
5055: 2d 0f        CMP %>F,A
5057: e6 03        JNZ $505C
5059: 73 f0 7d     AND %>F0,R125
505c: 7d f0 7d     CMP %>F0,R125
505f: e6 a1        JNZ $5002
5061: 76 01 72 9d  BTJO %>1,R114,$5002
5065: 73 ef 72     AND %>EF,R114
5068: e0 98        JMP $5002
506a: 77 02 72 49  BTJZ %>2,R114,$50B7
506e: 73 fd 72     AND %>FD,R114
5071: d5 67        CLR R103
5073: d5 66        CLR R102
5075: d5 60        CLR R96
5077: 76 01 72 03  BTJO %>1,R114,$507E
507b: 72 0a 30     MOV %>A,R48
507e: 7d f0 61     CMP %>F0,R97
5081: e7 0e        JL $5091
5083: 72 05 2d     MOV %>5,R45
5086: 88 00 65 29  MOVD %>0065,R41
508a: 8e 4f a7     CALL $4FA7
508d: d2 30        DEC R48
508f: e0 ed        JMP $507E
5091: 7d 01 30     CMP %>1,R48
5094: e2 06        JEQ $509C
5096: d3 60        INC R96
5098: d2 30        DEC R48
509a: e0 f5        JMP $5091
509c: b0           CLRC
509d: dd 60        RRC R96
509f: e3 0a        JHS $50AB
50a1: 72 06 2d     MOV %>6,R45
50a4: 88 00 61 29  MOVD %>0061,R41
50a8: 8e 4f ba     CALL $4FBA
50ab: 78 40 60     ADD %>40,R96
50ae: 73 7f 60     AND %>7F,R96
50b1: 77 10 72 02  BTJZ %>10,R114,$50B7
50b5: d4 60        INV R96
50b7: 52 07        MOV %>7,B
50b9: aa 00 60     LDA @>0060(B)
50bc: e6 04        JNZ $50C2
50be: ca f9        DJNZ B,$50B9
50c0: e0 23        JMP $50E5
50c2: 73 ef 72     AND %>EF,R114
50c5: 12 60        MOV R96,A
50c7: e5 05        JPZ $50CE
50c9: 74 10 72     OR %>10,R114
50cc: d4 60        INV R96
50ce: 76 ff 61 17  BTJO %>FF,R97,$50E9
50d2: 52 01        MOV %>1,B
50d4: aa 00 61     LDA @>0061(B)
50d7: ab 00 60     STA @>0060(B)
50da: c3           INC B
50db: 5d 07        CMP %>7,B
50dd: e6 f5        JNZ $50D4
50df: d5 67        CLR R103
50e1: d2 60        DEC R96
50e3: e3 e9        JHS $50CE
50e5: 8e 48 20     CALL $4820
50e8: 0a           RETS
50e9: 52 07        MOV %>7,B
50eb: aa 00 60     LDA @>0060(B)
50ee: 2d a0        CMP %>A0,A
50f0: e7 03        JL $50F5
50f2: 72 7f 60     MOV %>7F,R96
50f5: b7           SWAP A
50f6: 2d a0        CMP %>A0,A
50f8: e7 03        JL $50FD
50fa: 72 7f 60     MOV %>7F,R96
50fd: ca ec        DJNZ B,$50EB
50ff: 8e 48 08     CALL $4808
5102: 12 61        MOV R97,A
5104: e2 df        JEQ $50E5
5106: 77 10 72 de  BTJZ %>10,R114,$50E8
510a: d4 60        INV R96
510c: 0a           RETS
510d: 73 f7 72     AND %>F7,R114
5110: 73 fe 32     AND %>FE,R50
5113: 8e 47 e9     CALL $47E9
5116: 8e 50 6a     CALL $506A
5119: 8c 47 f4     BR $47F4
511c: 8e 47 e9     CALL $47E9
511f: 8e 50 6a     CALL $506A
5122: 73 ef 72     AND %>EF,R114
5125: 74 01 72     OR %>1,R114
5128: 72 01 30     MOV %>1,R48
512b: 77 80 60 05  BTJZ %>80,R96,$5134
512f: d4 60        INV R96
5131: 74 10 72     OR %>10,R114
5134: 7a 40 60     SUB %>40,R96
5137: e3 22        JHS $515B
5139: de 60        RL R96
513b: 7d f7 60     CMP %>F7,R96
513e: e2 15        JEQ $5155
5140: e7 1b        JL $515D
5142: 72 07 2d     MOV %>7,R45
5145: 88 00 61 29  MOVD %>0061,R41
5149: 8e 4f ba     CALL $4FBA
514c: 7d ff 60     CMP %>FF,R96
514f: e2 24        JEQ $5175
5151: d3 60        INC R96
5153: e0 ed        JMP $5142
5155: 76 f0 61 e9  BTJO %>F0,R97,$5142
5159: e0 02        JMP $515D
515b: df 60        RLC R96
515d: 76 f0 61 0c  BTJO %>F0,R97,$516D
5161: d2 60        DEC R96
5163: 72 07 2d     MOV %>7,R45
5166: 88 00 67 29  MOVD %>0067,R41
516a: 8e 4f a7     CALL $4FA7
516d: 7d 0a 60     CMP %>A,R96
5170: e3 61        JHS $51D3
5172: 48 60 30     ADD R96,R48
5175: 42 30 31     MOV R48,R49
5178: 8a 20 2f     LDA @>202F
517b: e1 08        JN $5185
517d: 48 00 31     ADD R0,R49
5180: 7d 0b 31     CMP %>B,R49
5183: e7 03        JL $5188
5185: 72 0a 31     MOV %>A,R49
5188: 8e 52 35     CALL $5235
518b: e7 1b        JL $51A8
518d: d3 60        INC R96
518f: 72 10 61     MOV %>10,R97
5192: 88 00 00 63  MOVD %>0000,R99
5196: 88 00 00 65  MOVD %>0000,R101
519a: 88 00 00 67  MOVD %>0000,R103
519e: 72 01 30     MOV %>1,R48
51a1: 7d f7 60     CMP %>F7,R96
51a4: e2 9c        JEQ $5142
51a6: e0 c5        JMP $516D
51a8: 7d 0a 31     CMP %>A,R49
51ab: e3 13        JHS $51C0
51ad: d3 31        INC R49
51af: 72 05 2d     MOV %>5,R45
51b2: 88 00 61 29  MOVD %>0061,R41
51b6: 8e 4f ba     CALL $4FBA
51b9: 74 f0 61     OR %>F0,R97
51bc: d3 30        INC R48
51be: e0 e8        JMP $51A8
51c0: 8a 20 2f     LDA @>202F
51c3: e5 0b        JPZ $51D0
51c5: 7d 0a 30     CMP %>A,R48
51c8: e3 06        JHS $51D0
51ca: 76 0f 65 02  BTJO %>F,R101,$51D0
51ce: e0 df        JMP $51AF
51d0: d5 60        CLR R96
51d2: 0a           RETS
51d3: 72 07 31     MOV %>7,R49
51d6: 8e 52 35     CALL $5235
51d9: e7 0d        JL $51E8
51db: 7d 63 60     CMP %>63,R96
51de: e6 ad        JNZ $518D
51e0: 88 99 99 62  MOVD %>9999,R98
51e4: 88 99 90 64  MOVD %>9990,R100
51e8: 76 f0 64 11  BTJO %>F0,R100,$51FD
51ec: 72 04 2d     MOV %>4,R45
51ef: 88 00 61 29  MOVD %>0061,R41
51f3: 8e 4f ba     CALL $4FBA
51f6: 74 f0 61     OR %>F0,R97
51f9: d3 30        INC R48
51fb: e0 eb        JMP $51E8
51fd: 74 0f 64     OR %>F,R100
5200: 12 60        MOV R96,A
5202: e5 05        JPZ $5209
5204: 73 fa 64     AND %>FA,R100
5207: b2           DEC A
5208: b4           INV A
5209: 8e 52 28     CALL $5228
520c: d0 65        MOV A,R101
520e: 0a           RETS
520f: 52 02        MOV %>2,B
5211: e0 05        JMP $5218
5213: 52 06        MOV %>6,B
5215: e0 01        JMP $5218
5217: c5           CLR B
5218: 8a 20 2f     LDA @>202F
521b: b8           PUSH A
521c: 62           MOV B,A
521d: 8b 20 2f     STA @>202F
5220: 8e 51 1f     CALL $511F
5223: b9           POP A
5224: 8b 20 2f     STA @>202F
5227: 0a           RETS
5228: c5           CLR B
5229: 2a 0a        SUB %>A,A
522b: e7 04        JL $5231
522d: 58 10        ADD %>10,B
522f: e0 f8        JMP $5229
5231: 28 0a        ADD %>A,A
5233: 68           ADD B,A
5234: 0a           RETS
5235: 72 01 2d     MOV %>1,R45
5238: 32 31        MOV R49,B
523a: cd           RRC B
523b: e7 09        JL $5246
523d: c3           INC B
523e: d7 2d        SWAP R45
5240: aa 00 60     LDA @>0060(B)
5243: b7           SWAP A
5244: e0 04        JMP $524A
5246: c3           INC B
5247: aa 00 60     LDA @>0060(B)
524a: 2d 50        CMP %>50,A
524c: e7 1a        JL $5268
524e: 32 31        MOV R49,B
5250: c3           INC B
5251: cd           RRC B
5252: aa 00 60     LDA @>0060(B)
5255: 1e 2d        DAC R45,A
5257: e0 08        JMP $5261
5259: aa 00 60     LDA @>0060(B)
525c: 08           POP ST
525d: e7 09        JL $5268
525f: 2e 00        DAC %>0,A
5261: 0e           PUSH ST
5262: ab 00 60     STA @>0060(B)
5265: ca f2        DJNZ B,$5259
5267: 08           POP ST
5268: 0a           RETS
5269: fb           TRAP 4
526a: b5           CLR A
526b: 8b 20 b9     STA @>20B9
526e: 22 0a        MOV %>A,A
5270: 8b 20 b8     STA @>20B8
5273: 88 49 fa 01  MOVD %>49FA,R1
5277: 8b 20 ba     STA @>20BA
527a: 62           MOV B,A
527b: 8b 20 bb     STA @>20BB
527e: 72 20 32     MOV %>20,R50
5281: 8e 52 bb     CALL $52BB
5284: 52 03        MOV %>3,B
5286: aa 52 c4     LDA @>52C4(B)
5289: ab 20 a7     STA @>20A7(B)
528c: ca f8        DJNZ B,$5286
528e: 72 04 33     MOV %>4,R51
5291: 8e 57 4a     CALL $574A
5294: b5           CLR A
5295: c5           CLR B
5296: 8e 57 51     CALL $5751
5299: 8e 48 20     CALL $4820
529c: 8a 20 2f     LDA @>202F
529f: e5 02        JPZ $52A3
52a1: 22 09        MOV %>9,A
52a3: d0 61        MOV A,R97
52a5: 8e 52 17     CALL $5217
52a8: 72 05 33     MOV %>5,R51
52ab: 8e 55 6b     CALL $556B
52ae: 88 52 d9 01  MOVD %>52D9,R1
52b2: 8e 56 9d     CALL $569D
52b5: 8e 56 b2     CALL $56B2
52b8: 8c 58 9a     BR $589A
52bb: 52 0f        MOV %>F,B
52bd: 22 20        MOV %>20,A
52bf: ab 20 a7     STA @>20A7(B)
52c2: ca fb        DJNZ B,$52BF
52c4: 0a           RETS
52c5: 44 45 43     OR R69,R67
52c8: 55 53        XOR %>53,B
52ca: 20           Illegal Opcode
52cb: 45 55 52     XOR R85,R82
52ce: 20           Illegal Opcode
52cf: 20           Illegal Opcode
52d0: 44 45 43     OR R69,R67
52d3: 49 4d 41     ADC R77,R65
52d6: 4c 53 20     MPY R83,R32
52d9: 20           Illegal Opcode
52da: fb           TRAP 4
52db: 8e 52 17     CALL $5217
52de: 8e 42 1a     CALL $421A
52e1: 8e 50 7e     CALL $507E
52e4: 8e 47 f4     CALL $47F4
52e7: 7d 40 60     CMP %>40,R96
52ea: e6 08        JNZ $52F4
52ec: 12 61        MOV R97,A
52ee: 2d 09        CMP %>9,A
52f0: e7 08        JL $52FA
52f2: e2 04        JEQ $52F8
52f4: 72 04 6f     MOV %>4,R111
52f7: fa           TRAP 5
52f8: 22 ff        MOV %>FF,A
52fa: 8d 20 2f     CMPA @>202F
52fd: e2 10        JEQ $530F
52ff: 8b 20 2f     STA @>202F
5302: b5           CLR A
5303: 8b 21 83     STA @>2183
5306: 8b 21 d5     STA @>21D5
5309: 8b 22 27     STA @>2227
530c: 8b 22 79     STA @>2279
530f: 8e 52 17     CALL $5217
5312: 72 05 33     MOV %>5,R51
5315: 8e 55 6b     CALL $556B
5318: 22 10        MOV %>10,A
531a: c5           CLR B
531b: 8e 57 51     CALL $5751
531e: 8e 51 1c     CALL $511C
5321: d5 33        CLR R51
5323: 8e 55 6b     CALL $556B
5326: 8c 58 9a     BR $589A
5329: fb           TRAP 4
532a: 88 4a 16 01  MOVD %>4A16,R1
532e: 8b 20 ba     STA @>20BA
5331: 62           MOV B,A
5332: 8b 20 bb     STA @>20BB
5335: 22 01        MOV %>1,A
5337: 8b 20 b9     STA @>20B9
533a: 72 22 32     MOV %>22,R50
533d: 8e 52 bb     CALL $52BB
5340: 52 06        MOV %>6,B
5342: aa 52 c7     LDA @>52C7(B)
5345: ab 20 a7     STA @>20A7(B)
5348: ca f8        DJNZ B,$5342
534a: 72 03 33     MOV %>3,R51
534d: 8e 57 4a     CALL $574A
5350: 22 10        MOV %>10,A
5352: 77 80 72 01  BTJZ %>80,R114,$5357
5356: bc           RR A
5357: c5           CLR B
5358: 8e 57 51     CALL $5751
535b: 88 53 bb 75  MOVD %>53BB,R117
535f: f8           TRAP 7
5360: 8e 52 13     CALL $5213
5363: 72 05 33     MOV %>5,R51
5366: 8e 55 6b     CALL $556B
5369: 88 53 c3 75  MOVD %>53C3,R117
536d: f8           TRAP 7
536e: 8e 52 13     CALL $5213
5371: 72 04 33     MOV %>4,R51
5374: 8e 55 6b     CALL $556B
5377: 88 53 cf 01  MOVD %>53CF,R1
537b: 8e 56 9d     CALL $569D
537e: 8e 56 b2     CALL $56B2
5381: 8c 58 9a     BR $589A
5384: 8e 53 29     CALL $5329
5387: 72 21 76     MOV %>21,R118
538a: 8e 57 81     CALL $5781
538d: 88 00 10 2f  MOVD %>0010,R47
5391: 52 b3        MOV %>B3,B
5393: 22 ff        MOV %>FF,A
5395: 8e f0 48     CALL $F048
5398: 77 80 2e 55  BTJZ %>80,R46,$53F1
539c: 88 20 02 01  MOVD %>2002,R1
53a0: 7d 29 76     CMP %>29,R118
53a3: e2 04        JEQ $53A9
53a5: 88 10 02 01  MOVD %>1002,R1
53a9: 8e f0 3f     CALL $F03F
53ac: e2 43        JEQ $53F1
53ae: 52 01        MOV %>1,B
53b0: 0d           LDSP
53b1: 8c 40 c7     BR $40C7
53b4: 40           Illegal Opcode
53b5: 12 31        MOV R49,A
53b7: 19 87        ADC R135,A
53b9: 00           NOP
53ba: 00           NOP
53bb: 00           NOP
53bc: 40           Illegal Opcode
53bd: 31           Illegal Opcode
53be: 12 19        MOV R25,A
53c0: 87 00 00     BTJZP A,P0,$53C3
53c3: 00           NOP
53c4: 44 41 54     OR R65,R84
53c7: 45 20 46     XOR R32,R70
53ca: 4f 52 4d     DSB R82,R77
53cd: 41           Illegal Opcode
53ce: 54 20        OR %>20,B
53d0: 73 7f 72     AND %>7F,R114
53d3: 22 10        MOV %>10,A
53d5: e0 05        JMP $53DC
53d7: 74 80 72     OR %>80,R114
53da: 22 08        MOV %>8,A
53dc: c5           CLR B
53dd: 8e 57 51     CALL $5751
53e0: 8e 58 20     CALL $5820
53e3: 73 f7 72     AND %>F7,R114
53e6: 73 fe 32     AND %>FE,R50
53e9: 77 02 72 04  BTJZ %>2,R114,$53F1
53ed: fb           TRAP 4
53ee: 8e 42 45     CALL $4245
53f1: 0a           RETS
53f2: fb           TRAP 4
53f3: 88 4a 34 01  MOVD %>4A34,R1
53f7: 8b 20 ba     STA @>20BA
53fa: 62           MOV B,A
53fb: 8b 20 bb     STA @>20BB
53fe: 22 02        MOV %>2,A
5400: 8b 20 b9     STA @>20B9
5403: 72 02 32     MOV %>2,R50
5406: 8e 52 bb     CALL $52BB
5409: 52 06        MOV %>6,B
540b: aa 52 c7     LDA @>52C7(B)
540e: ab 20 a7     STA @>20A7(B)
5411: ca f8        DJNZ B,$540B
5413: 72 03 33     MOV %>3,R51
5416: 8e 57 4a     CALL $574A
5419: 22 10        MOV %>10,A
541b: 77 40 72 01  BTJZ %>40,R114,$5420
541f: bc           RR A
5420: c5           CLR B
5421: 8e 57 51     CALL $5751
5424: 8e 46 7c     CALL $467C
5427: 72 43 60     MOV %>43,R96
542a: 8e 52 0f     CALL $520F
542d: d8 72        PUSH R114
542f: 73 bf 72     AND %>BF,R114
5432: 72 05 33     MOV %>5,R51
5435: 8e 55 6b     CALL $556B
5438: 74 40 72     OR %>40,R114
543b: 72 04 33     MOV %>4,R51
543e: 8e 55 6b     CALL $556B
5441: d9 72        POP R114
5443: 88 54 73 01  MOVD %>5473,R1
5447: 8e 56 9d     CALL $569D
544a: 8e 56 b2     CALL $56B2
544d: 8c 58 9a     BR $589A
5450: 73 bf 72     AND %>BF,R114
5453: 22 10        MOV %>10,A
5455: e0 85        JMP $53DC
5457: 74 40 72     OR %>40,R114
545a: 22 08        MOV %>8,A
545c: 8c 53 dc     BR $53DC
545f: 8e 53 29     CALL $5329
5462: 72 29 76     MOV %>29,R118
5465: 8c 53 8a     BR $538A
5468: 20           Illegal Opcode
5469: 53 45        AND %>45,B
546b: 50           Illegal Opcode
546c: 41           Illegal Opcode
546d: 52 41        MOV %>41,B
546f: 54 4f        OR %>4F,B
5471: 52 53        MOV %>53,B
5473: 20           Illegal Opcode
5474: 8e 54 bb     CALL $54BB
5477: 88 00 1b 2f  MOVD %>001B,R47
547b: 52 b3        MOV %>B3,B
547d: 22 ff        MOV %>FF,A
547f: 8e f0 48     CALL $F048
5482: 77 80 2e 18  BTJZ %>80,R46,$549E
5486: 88 20 02 01  MOVD %>2002,R1
548a: 7d 29 76     CMP %>29,R118
548d: e2 04        JEQ $5493
548f: 88 10 02 01  MOVD %>1002,R1
5493: 8e f0 3f     CALL $F03F
5496: e2 06        JEQ $549E
5498: 52 01        MOV %>1,B
549a: 0d           LDSP
549b: 8c 40 c7     BR $40C7
549e: 73 fe 32     AND %>FE,R50
54a1: 77 02 72 06  BTJZ %>2,R114,$54AB
54a5: 8e 55 66     CALL $5566
54a8: 8c 58 76     BR $5876
54ab: 8e 51 1c     CALL $511C
54ae: d5 33        CLR R51
54b0: 8e 55 6b     CALL $556B
54b3: 8c 58 76     BR $5876
54b6: 8e 54 f0     CALL $54F0
54b9: e0 bc        JMP $5477
54bb: 8a 21 2b     LDA @>212B
54be: b3           INC A
54bf: 2d 0a        CMP %>A,A
54c1: e7 02        JL $54C5
54c3: 22 09        MOV %>9,A
54c5: 8b 21 2b     STA @>212B
54c8: c0           MOV A,B
54c9: ce           RL B
54ca: aa 54 f9     LDA @>54F9(B)
54cd: 82 0f        MOVP A,P15
54cf: aa 54 fa     LDA @>54FA(B)
54d2: 82 0e        MOVP A,P14
54d4: 52 0c        MOV %>C,B
54d6: aa 55 0c     LDA @>550C(B)
54d9: ab 00 47     STA @>0047(B)
54dc: ca f8        DJNZ B,$54D6
54de: 8a 21 2b     LDA @>212B
54e1: 28 30        ADD %>30,A
54e3: 8b 00 52     STA @>0052
54e6: 88 00 53 01  MOVD %>0053,R1
54ea: 8e 56 9d     CALL $569D
54ed: 8c 58 76     BR $5876
54f0: 8a 21 2b     LDA @>212B
54f3: b2           DEC A
54f4: e5 cf        JPZ $54C5
54f6: b5           CLR A
54f7: e0 cc        JMP $54C5
54f9: 03           Illegal Opcode
54fa: 00           NOP
54fb: 01           IDLE
54fc: 00           NOP
54fd: 03           Illegal Opcode
54fe: 01           IDLE
54ff: 03           Illegal Opcode
5500: 02           Illegal Opcode
5501: 01           IDLE
5502: 01           IDLE
5503: 01           IDLE
5504: 02           Illegal Opcode
5505: 03           Illegal Opcode
5506: 03           Illegal Opcode
5507: 02           Illegal Opcode
5508: 03           Illegal Opcode
5509: 01           IDLE
550a: 03           Illegal Opcode
550b: 00           NOP
550c: 03           Illegal Opcode
550d: 20           Illegal Opcode
550e: 43 4f 4e     AND R79,R78
5511: 54 52        OR %>52,B
5513: 41           Illegal Opcode
5514: 53 54        AND %>54,B
5516: 20           Illegal Opcode
5517: 20           Illegal Opcode
5518: 20           Illegal Opcode
5519: c5           CLR B
551a: b5           CLR A
551b: 8e f0 60     CALL $F060
551e: b5           CLR A
551f: b8           PUSH A
5520: 8e 55 5c     CALL $555C
5523: 72 40 2d     MOV %>40,R45
5526: b5           CLR A
5527: 8e 55 61     CALL $5561
552a: da 2d f9     DJNZ R45,$5526
552d: b9           POP A
552e: e1 04        JN $5534
5530: 28 40        ADD %>40,A
5532: e0 eb        JMP $551F
5534: c5           CLR B
5535: 22 f0        MOV %>F0,A
5537: 8e f0 60     CALL $F060
553a: b5           CLR A
553b: 72 80 2d     MOV %>80,R45
553e: 8e 55 4b     CALL $554B
5541: 22 48        MOV %>48,A
5543: 8e 55 4b     CALL $554B
5546: 22 90        MOV %>90,A
5548: 72 08 2d     MOV %>8,R45
554b: 8e 55 5c     CALL $555C
554e: 22 01        MOV %>1,A
5550: b8           PUSH A
5551: 8e 55 61     CALL $5561
5554: b9           POP A
5555: 16 2d 03     BTJO R45,A,$555B
5558: be           RL A
5559: e0 f5        JMP $5550
555b: 0a           RETS
555c: 52 02        MOV %>2,B
555e: 8c f0 60     BR $F060
5561: 52 01        MOV %>1,B
5563: 8c f0 60     BR $F060
5566: 8e 47 e9     CALL $47E9
5569: d5 33        CLR R51
556b: 8e 57 21     CALL $5721
556e: 72 0a 2d     MOV %>A,R45
5571: 72 ff 2c     MOV %>FF,R44
5574: 76 01 72 07  BTJO %>1,R114,$557F
5578: 7d 0a 2d     CMP %>A,R45
557b: e6 25        JNZ $55A2
557d: e0 20        JMP $559F
557f: 4d 30 2d     CMP R48,R45
5582: e6 1e        JNZ $55A2
5584: 7d 0a 2d     CMP %>A,R45
5587: e6 08        JNZ $5591
5589: 76 ff 33 12  BTJO %>FF,R51,$559F
558d: 77 02 72 0e  BTJZ %>2,R114,$559F
5591: 22 08        MOV %>8,A
5593: 8e 56 2c     CALL $562C
5596: 77 40 72 05  BTJZ %>40,R114,$559F
559a: 22 09        MOV %>9,A
559c: 8e 56 2c     CALL $562C
559f: 72 03 2c     MOV %>3,R44
55a2: 32 2d        MOV R45,B
55a4: c3           INC B
55a5: cd           RRC B
55a6: aa 00 60     LDA @>0060(B)
55a9: 77 01 2d 01  BTJZ %>1,R45,$55AE
55ad: b7           SWAP A
55ae: 23 0f        AND %>F,A
55b0: 2d 0a        CMP %>A,A
55b2: e7 13        JL $55C7
55b4: 72 ff 2c     MOV %>FF,R44
55b7: 2d 0a        CMP %>A,A
55b9: e6 3b        JNZ $55F6
55bb: 22 06        MOV %>6,A
55bd: 8e 56 2c     CALL $562C
55c0: 22 07        MOV %>7,A
55c2: 8e 56 2c     CALL $562C
55c5: e0 2f        JMP $55F6
55c7: c0           MOV A,B
55c8: aa 58 e6     LDA @>58E6(B)
55cb: d0 2b        MOV A,R43
55cd: 22 ff        MOV %>FF,A
55cf: b8           PUSH A
55d0: b9           POP A
55d1: b3           INC A
55d2: b0           CLRC
55d3: dd 2b        RRC R43
55d5: e3 04        JHS $55DB
55d7: e2 08        JEQ $55E1
55d9: e0 f6        JMP $55D1
55db: b8           PUSH A
55dc: 8e 56 2c     CALL $562C
55df: e0 ef        JMP $55D0
55e1: d2 2c        DEC R44
55e3: e3 11        JHS $55F6
55e5: 72 02 2c     MOV %>2,R44
55e8: 22 08        MOV %>8,A
55ea: 8e 56 2c     CALL $562C
55ed: 76 40 72 05  BTJO %>40,R114,$55F6
55f1: 22 09        MOV %>9,A
55f3: 8e 56 2c     CALL $562C
55f6: da 2d 30     DJNZ R45,$5629
55f9: 77 10 72 2b  BTJZ %>10,R114,$5628
55fd: 72 01 2d     MOV %>1,R45
5600: 22 0a        MOV %>A,A
5602: 77 f0 61 1f  BTJZ %>F0,R97,$5625
5606: d5 2d        CLR R45
5608: 32 2d        MOV R45,B
560a: 5d 0a        CMP %>A,B
560c: e3 1a        JHS $5628
560e: cd           RRC B
560f: aa 00 61     LDA @>0061(B)
5612: 27 f0 09     BTJZ %>F0,A,$561E
5615: d3 2d        INC R45
5617: 27 0f 04     BTJZ %>F,A,$561E
561a: d3 2d        INC R45
561c: e0 ea        JMP $5608
561e: 22 06        MOV %>6,A
5620: 8e 56 2c     CALL $562C
5623: 22 07        MOV %>7,A
5625: 8e 56 2c     CALL $562C
5628: 0a           RETS
5629: 8c 55 74     BR $5574
562c: 76 ff 33 04  BTJO %>FF,R51,$5634
5630: 2d 09        CMP %>9,A
5632: e3 47        JHS $567B
5634: b8           PUSH A
5635: c5           CLR B
5636: 88 58 ef 29  MOVD %>58EF,R41
563a: 76 ff 33 04  BTJO %>FF,R51,$5642
563e: 88 58 f9 29  MOVD %>58F9,R41
5642: 48 2d 29     ADD R45,R41
5645: 79 00 28     ADC %>0,R40
5648: 9a 29        LDA *R41
564a: e2 06        JEQ $5652
564c: 38 00        ADD R0,B
564e: db 29        DECD R41
5650: e0 f6        JMP $5648
5652: d9 29        POP R41
5654: c8           PUSH B
5655: 32 33        MOV R51,B
5657: aa 59 04     LDA @>5904(B)
565a: 32 29        MOV R41,B
565c: ce           RL B
565d: 38 00        ADD R0,B
565f: aa 59 0b     LDA @>590B(B)
5662: d0 28        MOV A,R40
5664: aa 59 0a     LDA @>590A(B)
5667: c9           POP B
5668: 38 00        ADD R0,B
566a: 5d 6e        CMP %>6E,B
566c: e7 04        JL $5672
566e: 5a 16        SUB %>16,B
5670: d7 28        SWAP R40
5672: aa 20 bd     LDA @>20BD(B)
5675: 14 28        OR R40,A
5677: ab 20 bd     STA @>20BD(B)
567a: 0a           RETS
567b: e2 11        JEQ $568E
567d: 8a 20 e8     LDA @>20E8
5680: 24 02        OR %>2,A
5682: 8b 20 e8     STA @>20E8
5685: 8a 20 e5     LDA @>20E5
5688: 24 02        OR %>2,A
568a: 8b 20 e5     STA @>20E5
568d: 0a           RETS
568e: 32 2d        MOV R45,B
5690: c2           DEC B
5691: ce           RL B
5692: aa 59 8b     LDA @>598B(B)
5695: d0 28        MOV A,R40
5697: aa 59 8a     LDA @>598A(B)
569a: c0           MOV A,B
569b: e0 d5        JMP $5672
569d: b8           PUSH A
569e: c8           PUSH B
569f: 88 5a b4 29  MOVD %>5AB4,R41
56a3: 8e 57 2e     CALL $572E
56a6: d9 29        POP R41
56a8: d9 28        POP R40
56aa: 88 60 63 2b  MOVD %>6063,R43
56ae: 52 0c        MOV %>C,B
56b0: e0 11        JMP $56C3
56b2: 88 5a 2c 29  MOVD %>5A2C,R41
56b6: 8e 57 2e     CALL $572E
56b9: 88 20 b6 29  MOVD %>20B6,R41
56bd: 88 5f 13 2b  MOVD %>5F13,R43
56c1: 52 0f        MOV %>F,B
56c3: c8           PUSH B
56c4: 98 2b 2d     MOVD R43,R45
56c7: c5           CLR B
56c8: aa 5c ca     LDA @>5CCA(B)
56cb: e2 07        JEQ $56D4
56cd: 9d 29        CMPA *R41
56cf: e2 0b        JEQ $56DC
56d1: c3           INC B
56d2: e0 f4        JMP $56C8
56d4: 7a 1c 2b     SUB %>1C,R43
56d7: 7b 00 2a     SBB %>0,R42
56da: e0 1e        JMP $56FA
56dc: ce           RL B
56dd: aa 5d 03     LDA @>5D03(B)
56e0: b8           PUSH A
56e1: aa 5d 02     LDA @>5D02(B)
56e4: 8e 57 00     CALL $5700
56e7: b9           POP A
56e8: 7a 10 2b     SUB %>10,R43
56eb: 7b 00 2a     SBB %>0,R42
56ee: 98 2b 2d     MOVD R43,R45
56f1: 8e 57 00     CALL $5700
56f4: 7a 0c 2b     SUB %>C,R43
56f7: 7b 00 2a     SBB %>0,R42
56fa: db 29        DECD R41
56fc: c9           POP B
56fd: ca c4        DJNZ B,$56C3
56ff: 0a           RETS
5700: b0           CLRC
5701: bd           RRC A
5702: e3 06        JHS $570A
5704: e2 f9        JEQ $56FF
5706: db 2d        DECD R45
5708: e0 13        JMP $571D
570a: b8           PUSH A
570b: 9a 2d        LDA *R45
570d: d0 2f        MOV A,R47
570f: db 2d        DECD R45
5711: 9a 2d        LDA *R45
5713: c0           MOV A,B
5714: aa 20 bd     LDA @>20BD(B)
5717: 14 2f        OR R47,A
5719: ab 20 bd     STA @>20BD(B)
571c: b9           POP A
571d: db 2d        DECD R45
571f: e0 df        JMP $5700
5721: 32 33        MOV R51,B
5723: ce           RL B
5724: aa 5a 2d     LDA @>5A2D(B)
5727: d0 28        MOV A,R40
5729: aa 5a 2e     LDA @>5A2E(B)
572c: d0 29        MOV A,R41
572e: 9a 29        LDA *R41
5730: e2 1e        JEQ $5750
5732: db 29        DECD R41
5734: 9a 29        LDA *R41
5736: c0           MOV A,B
5737: db 29        DECD R41
5739: 9a 29        LDA *R41
573b: b4           INV A
573c: d0 2d        MOV A,R45
573e: aa 20 bd     LDA @>20BD(B)
5741: 13 2d        AND R45,A
5743: ab 20 bd     STA @>20BD(B)
5746: db 29        DECD R41
5748: e0 e4        JMP $572E
574a: 8e 57 21     CALL $5721
574d: da 33 fa     DJNZ R51,$574A
5750: 0a           RETS
5751: b8           PUSH A
5752: 88 5c c9 29  MOVD %>5CC9,R41
5756: d1 2d        MOV B,R45
5758: 8e 57 61     CALL $5761
575b: d9 2d        POP R45
575d: 88 5c bf 29  MOVD %>5CBF,R41
5761: 72 05 2c     MOV %>5,R44
5764: 9a 29        LDA *R41
5766: d0 2b        MOV A,R43
5768: db 29        DECD R41
576a: 9a 29        LDA *R41
576c: c0           MOV A,B
576d: aa 20 bd     LDA @>20BD(B)
5770: 14 2b        OR R43,A
5772: dd 2d        RRC R45
5774: e3 02        JHS $5778
5776: 1a 2b        SUB R43,A
5778: ab 20 bd     STA @>20BD(B)
577b: db 29        DECD R41
577d: da 2c e4     DJNZ R44,$5764
5780: 0a           RETS
5781: 88 59 b3 29  MOVD %>59B3,R41
5785: 8e 57 2e     CALL $572E
5788: 77 80 32 08  BTJZ %>80,R50,$5794
578c: 8a 20 e1     LDA @>20E1
578f: 24 20        OR %>20,A
5791: 8b 20 e1     STA @>20E1
5794: 77 01 32 08  BTJZ %>1,R50,$57A0
5798: 8a 20 cf     LDA @>20CF
579b: 24 20        OR %>20,A
579d: 8b 20 cf     STA @>20CF
57a0: 32 32        MOV R50,B
57a2: 53 22        AND %>22,B
57a4: 8a 20 df     LDA @>20DF
57a7: 64           OR B,A
57a8: 8b 20 df     STA @>20DF
57ab: 77 04 32 08  BTJZ %>4,R50,$57B7
57af: 8a 20 c1     LDA @>20C1
57b2: 24 20        OR %>20,A
57b4: 8b 20 c1     STA @>20C1
57b7: 77 08 32 08  BTJZ %>8,R50,$57C3
57bb: 8a 20 d1     LDA @>20D1
57be: 24 20        OR %>20,A
57c0: 8b 20 d1     STA @>20D1
57c3: 8a 20 b8     LDA @>20B8
57c6: e2 3b        JEQ $5803
57c8: 2d 02        CMP %>2,A
57ca: e2 43        JEQ $580F
57cc: 2d 04        CMP %>4,A
57ce: e2 3a        JEQ $580A
57d0: 2d 0b        CMP %>B,A
57d2: e2 29        JEQ $57FD
57d4: b5           CLR A
57d5: 52 01        MOV %>1,B
57d7: b8           PUSH A
57d8: aa 58 15     LDA @>5815(B)
57db: c8           PUSH B
57dc: c0           MOV A,B
57dd: aa 20 bd     LDA @>20BD(B)
57e0: 24 02        OR %>2,A
57e2: ab 20 bd     STA @>20BD(B)
57e5: c9           POP B
57e6: ca f0        DJNZ B,$57D8
57e8: c9           POP B
57e9: aa 58 16     LDA @>5816(B)
57ec: c0           MOV A,B
57ed: aa 20 bd     LDA @>20BD(B)
57f0: 24 01        OR %>1,A
57f2: ab 20 bd     STA @>20BD(B)
57f5: 8a 20 bf     LDA @>20BF
57f8: 24 20        OR %>20,A
57fa: 8b 20 bf     STA @>20BF
57fd: 88 59 b3 29  MOVD %>59B3,R41
5801: e0 21        JMP $5824
5803: 8a 21 30     LDA @>2130
5806: 52 04        MOV %>4,B
5808: e0 cd        JMP $57D7
580a: 8a 21 32     LDA @>2132
580d: e0 f7        JMP $5806
580f: 8a 21 31     LDA @>2131
5812: 52 02        MOV %>2,B
5814: e0 c1        JMP $57D7
5816: 14 12        OR R18,A
5818: 02           Illegal Opcode
5819: 00           NOP
581a: 88 5a 2c 29  MOVD %>5A2C,R41
581e: e0 04        JMP $5824
5820: 88 5c b5 29  MOVD %>5CB5,R41
5824: 9a 29        LDA *R41
5826: e2 4d        JEQ $5875
5828: db 29        DECD R41
582a: 2d 94        CMP %>94,A
582c: e3 12        JHS $5840
582e: 8e 55 5c     CALL $555C
5831: 9a 29        LDA *R41
5833: c0           MOV A,B
5834: aa 20 bd     LDA @>20BD(B)
5837: 8e 55 61     CALL $5561
583a: db 29        DECD R41
583c: db 29        DECD R41
583e: e0 e4        JMP $5824
5840: d0 2d        MOV A,R45
5842: 9a 29        LDA *R41
5844: c0           MOV A,B
5845: aa 20 bd     LDA @>20BD(B)
5848: b8           PUSH A
5849: db 29        DECD R41
584b: 9a 29        LDA *R41
584d: 23 0f        AND %>F,A
584f: e2 0c        JEQ $585D
5851: 12 2d        MOV R45,A
5853: 8e 55 5c     CALL $555C
5856: b9           POP A
5857: b8           PUSH A
5858: 23 0f        AND %>F,A
585a: 8e 55 61     CALL $5561
585d: 9a 29        LDA *R41
585f: c9           POP B
5860: 23 f0        AND %>F0,A
5862: e2 d8        JEQ $583C
5864: c8           PUSH B
5865: 12 2d        MOV R45,A
5867: 28 16        ADD %>16,A
5869: 8e 55 5c     CALL $555C
586c: b9           POP A
586d: b7           SWAP A
586e: 23 0f        AND %>F,A
5870: 8e 55 61     CALL $5561
5873: e0 c7        JMP $583C
5875: 0a           RETS
5876: 88 5a b4 29  MOVD %>5AB4,R41
587a: e0 a8        JMP $5824
587c: 88 5b 12 29  MOVD %>5B12,R41
5880: e0 a2        JMP $5824
5882: 88 5b a9 29  MOVD %>5BA9,R41
5886: e0 9c        JMP $5824
5888: 88 5b e6 29  MOVD %>5BE6,R41
588c: e0 96        JMP $5824
588e: 88 5c 44 29  MOVD %>5C44,R41
5892: e0 90        JMP $5824
5894: 88 5c a2 29  MOVD %>5CA2,R41
5898: e0 8a        JMP $5824
589a: c5           CLR B
589b: c8           PUSH B
589c: 22 14        MOV %>14,A
589e: 8e 55 5c     CALL $555C
58a1: 72 2c 2d     MOV %>2C,R45
58a4: c9           POP B
58a5: aa 20 bd     LDA @>20BD(B)
58a8: c3           INC B
58a9: c8           PUSH B
58aa: 8e 55 61     CALL $5561
58ad: da 2d f4     DJNZ R45,$58A4
58b0: c9           POP B
58b1: c8           PUSH B
58b2: 5d 2c        CMP %>2C,B
58b4: e6 04        JNZ $58BA
58b6: 22 54        MOV %>54,A
58b8: e0 e4        JMP $589E
58ba: 22 94        MOV %>94,A
58bc: 8e 55 5c     CALL $555C
58bf: 72 16 2d     MOV %>16,R45
58c2: c9           POP B
58c3: aa 20 bd     LDA @>20BD(B)
58c6: c3           INC B
58c7: c8           PUSH B
58c8: 23 0f        AND %>F,A
58ca: 8e 55 61     CALL $5561
58cd: da 2d f2     DJNZ R45,$58C2
58d0: c9           POP B
58d1: 52 58        MOV %>58,B
58d3: 72 16 2d     MOV %>16,R45
58d6: aa 20 bd     LDA @>20BD(B)
58d9: c3           INC B
58da: c8           PUSH B
58db: b7           SWAP A
58dc: 23 0f        AND %>F,A
58de: 8e 55 61     CALL $5561
58e1: c9           POP B
58e2: da 2d f1     DJNZ R45,$58D6
58e5: 0a           RETS
58e6: 3f 06        DSB R6,B
58e8: db cf        DECD R207
58ea: e6 ed        JNZ $58D9
58ec: fd           TRAP 2
58ed: 07           SETC
58ee: ff           TRAP 0
58ef: ef           TRAP 16
58f0: 00           NOP
58f1: fa           TRAP 5
58f2: 09           STSP
58f3: fa           TRAP 5
58f4: f6           TRAP 9
58f5: fa           TRAP 5
58f6: 07           SETC
58f7: fa           TRAP 5
58f8: fa           TRAP 5
58f9: ff           TRAP 0
58fa: 00           NOP
58fb: fa           TRAP 5
58fc: fa           TRAP 5
58fd: fa           TRAP 5
58fe: 09           STSP
58ff: fa           TRAP 5
5900: f6           TRAP 9
5901: fa           TRAP 5
5902: 07           SETC
5903: fa           TRAP 5
5904: 00           NOP
5905: 12 28        MOV R40,A
5907: 3e 54        DAC R84,B
5909: 6a           SUB B,A
590a: 27 01 25     BTJZ %>1,A,$5932
590d: 01           IDLE
590e: 25 08        XOR %>8,A
5910: 27 80 29     BTJZ %>80,A,$593C
5913: 80 29        MOVP P41,A
5915: 01           IDLE
5916: 25 02        XOR %>2,A
5918: 29 02        ADC %>2,A
591a: 25 80        XOR %>80,A
591c: 47 08 45 08  BTJZ R8,R69,$5928
5920: 45 20 49     XOR R32,R73
5923: 80 49        MOVP P73,A
5925: 20           Illegal Opcode
5926: 49 08 47     ADC R8,R71
5929: 20           Illegal Opcode
592a: 47 20 45 80  BTJZ R32,R69,$58AE
592e: 47 80 4b 20  BTJZ R128,R75,$5952
5932: 47 02 45 02  BTJZ R2,R69,$5938
5936: 71           Illegal Opcode
5937: 04           Illegal Opcode
5938: 49 40 75     ADC R64,R117
593b: 04           Illegal Opcode
593c: 49 02 73     ADC R2,R115
593f: 04           Illegal Opcode
5940: 73 04 45     AND %>4,R69
5943: 40           Illegal Opcode
5944: 47 40 77 04  BTJZ R64,R119,$594C
5948: 73 01 71     AND %>1,R113
594b: 01           IDLE
594c: 71           Illegal Opcode
594d: 08           POP ST
594e: 75 02 75     XOR %>2,R117
5951: 08           POP ST
5952: 75 01 73     XOR %>1,R115
5955: 08           POP ST
5956: 73 08 71     AND %>8,R113
5959: 02           Illegal Opcode
595a: 73 02 77     AND %>2,R119
595d: 08           POP ST
595e: 1b 04        SBB R4,A
5960: 19 04        ADC R4,A
5962: 19 10        ADC R16,A
5964: 1d 40        CMP R64,A
5966: 1d 10        CMP R16,A
5968: 1d 04        CMP R4,A
596a: 1b 10        SBB R16,A
596c: 1b 10        SBB R16,A
596e: 19 40        ADC R64,A
5970: 1b 40        SBB R64,A
5972: 1f 10        DSB R16,A
5974: 47 01 45 01  BTJZ R1,R69,$5979
5978: 45 10 49     XOR R16,R73
597b: 04           Illegal Opcode
597c: 49 10 49     ADC R16,R73
597f: 01           IDLE
5980: 47 10 47 10  BTJZ R16,R71,$5994
5984: 45 04 47     XOR R4,R71
5987: 04           Illegal Opcode
5988: 4b 10 24     SBB R16,R36
598b: 80 14        MOVP P20,A
598d: 80 12        MOVP P18,A
598f: 80 22        MOVP P34,A
5991: 80 04        MOVP P4,A
5993: 80 04        MOVP P4,A
5995: 08           POP ST
5996: 24 08        OR %>8,A
5998: 14 08        OR R8,A
599a: 12 08        MOV R8,A
599c: 22 08        MOV %>8,A
599e: 00           NOP
599f: 20           Illegal Opcode
59a0: 24 38        OR %>38,A
59a2: 23 14        AND %>14,A
59a4: 28 23        ADD %>23,A
59a6: 12 26        MOV R38,A
59a8: 22 22        MOV %>22,A
59aa: 36 23 02     BTJO R35,B,$59AF
59ad: 16 03 00     BTJO R3,A,$59B0
59b0: 14 20        OR R32,A
59b2: 04           Illegal Opcode
59b3: 18 00        ADD R0,A
59b5: 54 12        OR %>12,B
59b7: 26 54 14     BTJO %>54,A,$59CE
59ba: 28 44        ADD %>44,A
59bc: 1f 33        DSB R51,A
59be: 54 21        OR %>21,B
59c0: 35 54        XOR R84,B
59c2: 22 36        MOV %>36,A
59c4: 54 23        OR %>23,B
59c6: 37 74 24     BTJZ R116,B,$59ED
59c9: 38 54        ADD R84,B
59cb: 25 39        XOR %>39,A
59cd: ff           TRAP 0
59ce: 26 3a 54     BTJO %>3A,A,$5A25
59d1: 27 3b 54     BTJZ %>3B,A,$5A28
59d4: 28 3c        ADD %>3C,A
59d6: 54 29        OR %>29,B
59d8: 3d 54        CMP R84,B
59da: 2a 3e        SUB %>3E,A
59dc: 54 2b        OR %>2B,B
59de: 3f ff        DSB R255,B
59e0: 3e 66        DAC R102,B
59e2: ff           TRAP 0
59e3: 40           Illegal Opcode
59e4: 68           ADD B,A
59e5: cf           RLC B
59e6: 4b 73 ff     SBB R115,R255
59e9: 4d 75 ff     CMP R117,R255
59ec: 4e 76 ff     DAC R118,R255
59ef: 4f 77 ff     DSB R119,R255
59f2: 50           Illegal Opcode
59f3: 78 ff 51     ADD %>FF,R81
59f6: 79 ff 52     ADC %>FF,R82
59f9: 7a ff 53     SUB %>FF,R83
59fc: 7b ff 54     SBB %>FF,R84
59ff: 7c ff 55     MPY %>FF,R85
5a02: 7d ff 56     CMP %>FF,R86
5a05: 7e ff 57     DAC %>FF,R87
5a08: 7f 30 61     DSB %>30,R97
5a0b: 9d f0        CMPA *R240
5a0d: 63           AND B,A
5a0e: 9f           Illegal Opcode
5a0f: f0           TRAP 15
5a10: 64           OR B,A
5a11: a0           Illegal Opcode
5a12: f0           TRAP 15
5a13: 65           XOR B,A
5a14: a1           Illegal Opcode
5a15: f0           TRAP 15
5a16: 66 a2        BTJO B,A,$59BA
5a18: f0           TRAP 15
5a19: 67 a3        BTJZ B,A,$59BE
5a1b: f0           TRAP 15
5a1c: 68           ADD B,A
5a1d: a4 f0 69     ORP %>F0,P105
5a20: a5 ff 6a     XORP %>FF,P106
5a23: a6 f0 6b a7  BTJOP %>F0,P107,$59CE
5a27: ff           TRAP 0
5a28: 6c           MPY B,A
5a29: a8 f0 6d a9  MOVD %>F06D(B),R169
5a2d: 5a b4        SUB %>B4,B
5a2f: 5b 12        SBB %>12,B
5a31: 5b a9        SBB %>A9,B
5a33: 5b e6        SBB %>E6,B
5a35: 5c 44        MPY %>44,B
5a37: 5c a2        MPY %>A2,B
5a39: 00           NOP
5a3a: 2b 01        SBB %>1,A
5a3c: 15 ab        XOR R171,A
5a3e: 03           Illegal Opcode
5a3f: 17 88 04     BTJZ R136,A,$5A46
5a42: 18 ab        ADD R171,A
5a44: 05           EINT
5a45: 19 ab        ADC R171,A
5a47: 06           DINT
5a48: 1a ab        SUB R171,A
5a4a: 07           SETC
5a4b: 1b ab        SBB R171,A
5a4d: 08           POP ST
5a4e: 1c ab        MPY R171,A
5a50: 09           STSP
5a51: 1d ab        CMP R171,A
5a53: 0a           RETS
5a54: 1e ab        DAC R171,A
5a56: 0b           RETI
5a57: 1f ab        DSB R171,A
5a59: 0c           Illegal Opcode
5a5a: 20           Illegal Opcode
5a5b: ab 0d 21     STA @>0D21(B)
5a5e: ab 0e 22     STA @>0E22(B)
5a61: ab 0f 23     STA @>0F23(B)
5a64: ab 10 24     STA @>1024(B)
5a67: ab 11 25     STA @>1125(B)
5a6a: 88 12 26 ab  MOVD %>1226,R171
5a6e: 13 27        AND R39,A
5a70: 88 14 28 ab  MOVD %>1428,R171
5a74: 15 29        XOR R41,A
5a76: ab 16 2a     STA @>162A(B)
5a79: ab 17 2b     STA @>172B(B)
5a7c: ab 18 2c     STA @>182C(B)
5a7f: ab 19 2d     STA @>192D(B)
5a82: ab 1a 2e     STA @>1A2E(B)
5a85: ab 1b 2f     STA @>1B2F(B)
5a88: ab 1c 30     STA @>1C30(B)
5a8b: ab 1d 31     STA @>1D31(B)
5a8e: ab 1e 32     STA @>1E32(B)
5a91: ab 1f 33     STA @>1F33(B)
5a94: ab 20 34     STA @>2034(B)
5a97: ab 21 35     STA @>2135(B)
5a9a: 88 22 36 ab  MOVD %>2236,R171
5a9e: 23 37        AND %>37,A
5aa0: 88 24 38 ab  MOVD %>2438,R171
5aa4: 25 39        XOR %>39,A
5aa6: ab 27 3b     STA @>273B(B)
5aa9: ab 28 3c     STA @>283C(B)
5aac: ab 29 3d     STA @>293D(B)
5aaf: ab 2a 3e     STA @>2A3E(B)
5ab2: 2b 2b        SBB %>2B,A
5ab4: 3f 00        DSB R0,B
5ab6: 28 2c        ADD %>2C,A
5ab8: 54 a8        OR %>A8,B
5aba: 2d 55        CMP %>55,A
5abc: 28 2e        ADD %>2E,A
5abe: 56 a8 2f     BTJO %>A8,B,$5AF0
5ac1: 57 a8 30     BTJZ %>A8,B,$5AF4
5ac4: 58 a8        ADD %>A8,B
5ac6: 31           Illegal Opcode
5ac7: 59 a8        ADC %>A8,B
5ac9: 32 5a        MOV R90,B
5acb: a8 33 5b a8  MOVD %>335B(B),R168
5acf: 34 5c        OR R92,B
5ad1: a8 35 5d a8  MOVD %>355D(B),R168
5ad5: 36 5e a8     BTJO R94,B,$5A80
5ad8: 37 5f a8     BTJZ R95,B,$5A83
5adb: 38 60        ADD R96,B
5add: a8 39 61 a8  MOVD %>3961(B),R168
5ae1: 3a 62        SUB R98,B
5ae3: a8 3b 63 a8  MOVD %>3B63(B),R168
5ae7: 3c 64        MPY R100,B
5ae9: a8 3d 65 a8  MOVD %>3D65(B),R168
5aed: 3f 67        DSB R103,B
5aef: a8 41 69 a8  MOVD %>4169(B),R168
5af3: 42 6a a8     MOV R106,R168
5af6: 43 6b a8     AND R107,R168
5af9: 44 6c a8     OR R108,R168
5afc: 45 6d a8     XOR R109,R168
5aff: 46 6e a8 47  BTJO R110,R168,$5B4A
5b03: 6f           DSB B,A
5b04: a8 48 70 a8  MOVD %>4870(B),R168
5b08: 49 71 a8     ADC R113,R168
5b0b: 4a 72 20     SUB R114,R32
5b0e: 4b 73 a8     SBB R115,R168
5b11: 4c 74 00     MPY R116,R0
5b14: 02           Illegal Opcode
5b15: 2c 54        MPY %>54,A
5b17: 42 2d 55     MOV R45,R85
5b1a: 02           Illegal Opcode
5b1b: 2e 56        DAC %>56,A
5b1d: 42 2f 57     MOV R47,R87
5b20: 42 30 58     MOV R48,R88
5b23: 42 31 59     MOV R49,R89
5b26: 42 32 5a     MOV R50,R90
5b29: 42 33 5b     MOV R51,R91
5b2c: 42 34 5c     MOV R52,R92
5b2f: 42 35 5d     MOV R53,R93
5b32: 42 36 5e     MOV R54,R94
5b35: 42 37 5f     MOV R55,R95
5b38: 42 38 60     MOV R56,R96
5b3b: 42 39 61     MOV R57,R97
5b3e: 42 3a 62     MOV R58,R98
5b41: 42 3b 63     MOV R59,R99
5b44: 42 3c 64     MOV R60,R100
5b47: 42 3d 65     MOV R61,R101
5b4a: 42 3f 67     MOV R63,R103
5b4d: 42 41 69     MOV R65,R105
5b50: 42 42 6a     MOV R66,R106
5b53: 42 43 6b     MOV R67,R107
5b56: 42 44 6c     MOV R68,R108
5b59: 42 45 6d     MOV R69,R109
5b5c: 42 46 6e     MOV R70,R110
5b5f: 42 47 6f     MOV R71,R111
5b62: 42 48 70     MOV R72,R112
5b65: 42 49 71     MOV R73,R113
5b68: 42 4a 72     MOV R74,R114
5b6b: 42 4c 74     MOV R76,R116
5b6e: 44 58 94     OR R88,R148
5b71: 44 59 95     OR R89,R149
5b74: 44 5a 96     OR R90,R150
5b77: 44 5b 97     OR R91,R151
5b7a: 44 5c 98     OR R92,R152
5b7d: 44 5d 99     OR R93,R153
5b80: 44 5e 9a     OR R94,R154
5b83: 44 5f 9b     OR R95,R155
5b86: 44 60 9c     OR R96,R156
5b89: 44 61 9d     OR R97,R157
5b8c: 44 62 9e     OR R98,R158
5b8f: 04           Illegal Opcode
5b90: 63           AND B,A
5b91: 9f           Illegal Opcode
5b92: 04           Illegal Opcode
5b93: 64           OR B,A
5b94: a0           Illegal Opcode
5b95: 04           Illegal Opcode
5b96: 65           XOR B,A
5b97: a1           Illegal Opcode
5b98: 04           Illegal Opcode
5b99: 66 a2        BTJO B,A,$5B3D
5b9b: 04           Illegal Opcode
5b9c: 67 a3        BTJZ B,A,$5B41
5b9e: 04           Illegal Opcode
5b9f: 68           ADD B,A
5ba0: a4 04 69     ORP %>04,P105
5ba3: a5 04 6b     XORP %>04,P107
5ba6: a7 04 6d a9  BTJZP %>04,P109,$5B53
5baa: 00           NOP
5bab: b9           POP A
5bac: 58 94        ADD %>94,B
5bae: bb           DECD A
5baf: 59 95        ADC %>95,B
5bb1: b9           POP A
5bb2: 5a 96        SUB %>96,B
5bb4: bb           DECD A
5bb5: 5b 97        SBB %>97,B
5bb7: bb           DECD A
5bb8: 5c 98        MPY %>98,B
5bba: bb           DECD A
5bbb: 5d 99        CMP %>99,B
5bbd: bb           DECD A
5bbe: 5e 9a        DAC %>9A,B
5bc0: bb           DECD A
5bc1: 5f 9b        DSB %>9B,B
5bc3: bb           DECD A
5bc4: 60           Illegal Opcode
5bc5: 9c 8b        BR *R139
5bc7: 61           Illegal Opcode
5bc8: 9d bb        CMPA *R187
5bca: 62           MOV B,A
5bcb: 9e 0b        CALL *R11
5bcd: 63           AND B,A
5bce: 9f           Illegal Opcode
5bcf: 0b           RETI
5bd0: 64           OR B,A
5bd1: a0           Illegal Opcode
5bd2: 0b           RETI
5bd3: 65           XOR B,A
5bd4: a1           Illegal Opcode
5bd5: 0b           RETI
5bd6: 66 a2        BTJO B,A,$5B7A
5bd8: 0b           RETI
5bd9: 67 a3        BTJZ B,A,$5B7E
5bdb: 0b           RETI
5bdc: 68           ADD B,A
5bdd: a4 0b 69     ORP %>0B,P105
5be0: a5 0b 6b     XORP %>0B,P107
5be3: a7 0b 6d a9  BTJZP %>0B,P109,$5B90
5be7: 00           NOP
5be8: 14 00        OR R0,A
5bea: 14 54        OR R84,A
5bec: 01           IDLE
5bed: 15 14        XOR R20,A
5bef: 02           Illegal Opcode
5bf0: 16 54 03     BTJO R84,A,$5BF6
5bf3: 17 54 04     BTJZ R84,A,$5BFA
5bf6: 18 54        ADD R84,A
5bf8: 05           EINT
5bf9: 19 54        ADC R84,A
5bfb: 06           DINT
5bfc: 1a 54        SUB R84,A
5bfe: 07           SETC
5bff: 1b 54        SBB R84,A
5c01: 08           POP ST
5c02: 1c 54        MPY R84,A
5c04: 09           STSP
5c05: 1d 54        CMP R84,A
5c07: 0a           RETS
5c08: 1e 54        DAC R84,A
5c0a: 0b           RETI
5c0b: 1f 54        DSB R84,A
5c0d: 0c           Illegal Opcode
5c0e: 20           Illegal Opcode
5c0f: 54 0d        OR %>D,B
5c11: 21           Illegal Opcode
5c12: 54 0e        OR %>E,B
5c14: 22 54        MOV %>54,A
5c16: 0f           Illegal Opcode
5c17: 23 54        AND %>54,A
5c19: 10           Illegal Opcode
5c1a: 24 54        OR %>54,A
5c1c: 11           Illegal Opcode
5c1d: 25 54        XOR %>54,A
5c1f: 13 27        AND R39,A
5c21: 54 15        OR %>15,B
5c23: 29 54        ADC %>54,A
5c25: 16 2a 54     BTJO R42,A,$5C7C
5c28: 17 2b 54     BTJZ R43,A,$5C7F
5c2b: 18 2c        ADD R44,A
5c2d: 54 19        OR %>19,B
5c2f: 2d 54        CMP %>54,A
5c31: 1a 2e        SUB R46,A
5c33: 54 1b        OR %>1B,B
5c35: 2f 54        DSB %>54,A
5c37: 1c 30        MPY R48,A
5c39: 54 1d        OR %>1D,B
5c3b: 31           Illegal Opcode
5c3c: 54 1e        OR %>1E,B
5c3e: 32 10        MOV R16,B
5c40: 1f 33        DSB R51,A
5c42: 54 20        OR %>20,B
5c44: 34 00        OR R0,B
5c46: 11           Illegal Opcode
5c47: 2c 54        MPY %>54,A
5c49: 15 2d        XOR R45,A
5c4b: 55 11        XOR %>11,B
5c4d: 2e 56        DAC %>56,A
5c4f: 15 2f        XOR R47,A
5c51: 57 15 30     BTJZ %>15,B,$5C84
5c54: 58 15        ADD %>15,B
5c56: 31           Illegal Opcode
5c57: 59 15        ADC %>15,B
5c59: 32 5a        MOV R90,B
5c5b: 15 33        XOR R51,A
5c5d: 5b 15        SBB %>15,B
5c5f: 34 5c        OR R92,B
5c61: 15 35        XOR R53,A
5c63: 5d 15        CMP %>15,B
5c65: 36 5e 15     BTJO R94,B,$5C7D
5c68: 37 5f 15     BTJZ R95,B,$5C80
5c6b: 38 60        ADD R96,B
5c6d: 15 39        XOR R57,A
5c6f: 61           Illegal Opcode
5c70: 15 3a        XOR R58,A
5c72: 62           MOV B,A
5c73: 15 3b        XOR R59,A
5c75: 63           AND B,A
5c76: 15 3c        XOR R60,A
5c78: 64           OR B,A
5c79: 15 3d        XOR R61,A
5c7b: 65           XOR B,A
5c7c: 15 3f        XOR R63,A
5c7e: 67 15        BTJZ B,A,$5C95
5c80: 41           Illegal Opcode
5c81: 69           ADC B,A
5c82: 15 42        XOR R66,A
5c84: 6a           SUB B,A
5c85: 15 43        XOR R67,A
5c87: 6b           SBB B,A
5c88: 15 44        XOR R68,A
5c8a: 6c           MPY B,A
5c8b: 15 45        XOR R69,A
5c8d: 6d           CMP B,A
5c8e: 15 46        XOR R70,A
5c90: 6e           DAC B,A
5c91: 15 47        XOR R71,A
5c93: 6f           DSB B,A
5c94: 15 48        XOR R72,A
5c96: 70           Illegal Opcode
5c97: 15 49        XOR R73,A
5c99: 71           Illegal Opcode
5c9a: 15 4a        XOR R74,A
5c9c: 72 10 4b     MOV %>10,R75
5c9f: 73 15 4c     AND %>15,R76
5ca2: 74 00 c4     OR %>0,R196
5ca5: 2e 56        DAC %>56,A
5ca7: 40           Illegal Opcode
5ca8: 02           Illegal Opcode
5ca9: 16 02 5a     BTJO R2,A,$5D06
5cac: 96 c4 2c     BTJOP B,P196,$5CDB
5caf: 54 40        OR %>40,B
5cb1: 00           NOP
5cb2: 14 02        OR R2,A
5cb4: 58 94        ADD %>94,B
5cb6: 2e 04        DAC %>4,A
5cb8: 02           Illegal Opcode
5cb9: 40           Illegal Opcode
5cba: 5a 02        SUB %>2,B
5cbc: 2e 40        DAC %>40,A
5cbe: 2e 80        DAC %>80,A
5cc0: 2c 04        MPY %>4,A
5cc2: 00           NOP
5cc3: 40           Illegal Opcode
5cc4: 58 02        ADD %>2,B
5cc6: 2c 40        MPY %>40,A
5cc8: 2c 80        MPY %>80,A
5cca: 41           Illegal Opcode
5ccb: 42 43 44     MOV R67,R68
5cce: 45 46 47     XOR R70,R71
5cd1: 48 49 4a     ADD R73,R74
5cd4: 4b 4c 4d     SBB R76,R77
5cd7: 4e 4f 50     DAC R79,R80
5cda: 51           Illegal Opcode
5cdb: 52 53        MOV %>53,B
5cdd: 54 55        OR %>55,B
5cdf: 56 57 58     BTJO %>57,B,$5D3A
5ce2: 59 5a        ADC %>5A,B
5ce4: 6e           DAC B,A
5ce5: 6f           DSB B,A
5ce6: 30           Illegal Opcode
5ce7: 31           Illegal Opcode
5ce8: 32 33        MOV R51,B
5cea: 34 35        OR R53,B
5cec: 36 37 38     BTJO R55,B,$5D27
5cef: 39 3f        ADC R63,B
5cf1: 2f 2b        DSB %>2B,A
5cf3: 2d 27        CMP %>27,A
5cf5: 25 3d        XOR %>3D,A
5cf7: 3a 2a        SUB R42,B
5cf9: 77 73 7a 75  BTJZ %>73,R122,$5D72
5cfd: 28 29        ADD %>29,A
5cff: 68           ADD B,A
5d00: 76 00 37 11  BTJO %>0,R55,$5D15
5d04: 4f 05 39     DSB R5,R57
5d07: 00           NOP
5d08: 4f 04 39     DSB R4,R57
5d0b: 11           Illegal Opcode
5d0c: 31           Illegal Opcode
5d0d: 11           Illegal Opcode
5d0e: 3d 01        CMP R1,B
5d10: 36 11 49     BTJO R17,B,$5D5C
5d13: 04           Illegal Opcode
5d14: 1e 00        DAC R0,A
5d16: b0           CLRC
5d17: 12 38        MOV R56,A
5d19: 00           NOP
5d1a: b6           XCHB A
5d1b: 20           Illegal Opcode
5d1c: 36 22 3f     BTJO R34,B,$5D5E
5d1f: 00           NOP
5d20: 33 11        AND R17,B
5d22: 3f 02        DSB R2,B
5d24: 33 13        AND R19,B
5d26: 2d 11        CMP %>11,A
5d28: 41           Illegal Opcode
5d29: 04           Illegal Opcode
5d2a: 3e 00        DAC R0,B
5d2c: b0           CLRC
5d2d: 08           POP ST
5d2e: 36 0a 80     BTJO R10,B,$5CB1
5d31: 2a 80        SUB %>80,A
5d33: 24 89        OR %>89,A
5d35: 08           POP ST
5d36: 14 11        OR R17,A
5d38: 1c 11        MPY R17,A
5d3a: 3f 00        DSB R0,B
5d3c: 06           DINT
5d3d: 00           NOP
5d3e: 1b 11        SBB R17,A
5d40: 0f           Illegal Opcode
5d41: 11           Illegal Opcode
5d42: 26 11 2d     BTJO %>11,A,$5D72
5d45: 11           Illegal Opcode
5d46: 3d 11        CMP R17,B
5d48: 07           SETC
5d49: 00           NOP
5d4a: 3f 11        DSB R17,B
5d4c: 2f 11        DSB %>11,A
5d4e: 23 05        AND %>5,A
5d50: 80 08        MOVP P8,A
5d52: 40           Illegal Opcode
5d53: 15 00        XOR R0,A
5d55: 11           Illegal Opcode
5d56: 80 00        MOVP P0,A
5d58: a4 3b 08     ORP %>3B,P8
5d5b: 11           Illegal Opcode
5d5c: 40           Illegal Opcode
5d5d: 04           Illegal Opcode
5d5e: 80 3b        MOVP P59,A
5d60: 09           STSP
5d61: 28 18        ADD %>18,A
5d63: 13 88        AND R136,A
5d65: 19 08        ADC R8,A
5d67: 00           NOP
5d68: 80 02        MOVP P2,A
5d6a: 00           NOP
5d6b: 28 09        ADD %>9,A
5d6d: 11           Illegal Opcode
5d6e: 76 04 52 01  BTJO %>4,R82,$5D73
5d72: 52 10        MOV %>10,B
5d74: 50           Illegal Opcode
5d75: 10           Illegal Opcode
5d76: 40           Illegal Opcode
5d77: 04           Illegal Opcode
5d78: 3e 04        DAC R4,B
5d7a: 3e 10        DAC R16,B
5d7c: 40           Illegal Opcode
5d7d: 10           Illegal Opcode
5d7e: 50           Illegal Opcode
5d7f: 01           IDLE
5d80: 26 20 52     BTJO %>20,A,$5DD5
5d83: 04           Illegal Opcode
5d84: 50           Illegal Opcode
5d85: 04           Illegal Opcode
5d86: 4e 04 3e     DAC R4,R62
5d89: 01           IDLE
5d8a: 40           Illegal Opcode
5d8b: 01           IDLE
5d8c: 54 01        OR %>1,B
5d8e: 54 10        OR %>10,B
5d90: 54 04        OR %>4,B
5d92: 56 10 57     BTJO %>10,B,$5DEC
5d95: 04           Illegal Opcode
5d96: 55 10        XOR %>10,B
5d98: 57 10 56     BTJZ %>10,B,$5DF1
5d9b: 01           IDLE
5d9c: 4e 01 4e     DAC R1,R78
5d9f: 10           Illegal Opcode
5da0: 56 04 55     BTJO %>4,B,$5DF8
5da3: 04           Illegal Opcode
5da4: 55 01        XOR %>1,B
5da6: 57 01 51     BTJZ %>1,B,$5DFA
5da9: 01           IDLE
5daa: 53 10        AND %>10,B
5dac: 51           Illegal Opcode
5dad: 10           Illegal Opcode
5dae: 4f 04 4d     DSB R4,R77
5db1: 04           Illegal Opcode
5db2: 4d 10 4d     CMP R16,R77
5db5: 01           IDLE
5db6: 4f 10 53     DSB R16,R83
5db9: 01           IDLE
5dba: 53 04        AND %>4,B
5dbc: 51           Illegal Opcode
5dbd: 04           Illegal Opcode
5dbe: 4b 04 4b     SBB R4,R75
5dc1: 01           IDLE
5dc2: 4f 01 26     DSB R1,R38
5dc5: 04           Illegal Opcode
5dc6: 26 10 24     BTJO %>10,A,$5DED
5dc9: 10           Illegal Opcode
5dca: 14 40        OR R64,A
5dcc: 12 40        MOV R64,A
5dce: 12 10        MOV R16,A
5dd0: 14 10        OR R16,A
5dd2: 24 04        OR %>4,A
5dd4: 26 02 26     BTJO %>2,A,$5DFD
5dd7: 40           Illegal Opcode
5dd8: 24 40        OR %>40,A
5dda: 22 40        MOV %>40,A
5ddc: 12 04        MOV R4,A
5dde: 14 04        OR R4,A
5de0: 28 04        ADD %>4,A
5de2: 28 10        ADD %>10,A
5de4: 28 40        ADD %>40,A
5de6: 2a 10        SUB %>10,A
5de8: 2b 40        SBB %>40,A
5dea: 29 10        ADC %>10,A
5dec: 2b 10        SBB %>10,A
5dee: 2a 04        SUB %>4,A
5df0: 22 04        MOV %>4,A
5df2: 22 10        MOV %>10,A
5df4: 2a 40        SUB %>40,A
5df6: 29 40        ADC %>40,A
5df8: 29 04        ADC %>4,A
5dfa: 2b 04        SBB %>4,A
5dfc: 25 04        XOR %>4,A
5dfe: 27 10 25     BTJZ %>10,A,$5E26
5e01: 10           Illegal Opcode
5e02: 23 40        AND %>40,A
5e04: 21           Illegal Opcode
5e05: 40           Illegal Opcode
5e06: 21           Illegal Opcode
5e07: 10           Illegal Opcode
5e08: 21           Illegal Opcode
5e09: 04           Illegal Opcode
5e0a: 23 10        AND %>10,A
5e0c: 27 04 27     BTJZ %>4,A,$5E36
5e0f: 40           Illegal Opcode
5e10: 25 40        XOR %>40,A
5e12: 1f 40        DSB R64,A
5e14: 1f 04        DSB R4,A
5e16: 23 04        AND %>4,A
5e18: 68           ADD B,A
5e19: 10           Illegal Opcode
5e1a: 68           ADD B,A
5e1b: 80 66        MOVP P102,A
5e1d: 80 6c        MOVP P108,A
5e1f: 02           Illegal Opcode
5e20: 6a           SUB B,A
5e21: 02           Illegal Opcode
5e22: 6a           SUB B,A
5e23: 08           POP ST
5e24: 6c           MPY B,A
5e25: 08           POP ST
5e26: 66 10        BTJO B,A,$5E38
5e28: 26 08 68     BTJO %>8,A,$5E93
5e2b: 20           Illegal Opcode
5e2c: 66 20        BTJO B,A,$5E4E
5e2e: 64           OR B,A
5e2f: 20           Illegal Opcode
5e30: 6a           SUB B,A
5e31: 01           IDLE
5e32: 6c           MPY B,A
5e33: 01           IDLE
5e34: 6a           SUB B,A
5e35: 10           Illegal Opcode
5e36: 6a           SUB B,A
5e37: 80 6a        MOVP P106,A
5e39: 20           Illegal Opcode
5e3a: 6c           MPY B,A
5e3b: 80 6d        MOVP P109,A
5e3d: 20           Illegal Opcode
5e3e: 6b           SBB B,A
5e3f: 80 6d        MOVP P109,A
5e41: 80 6c        MOVP P108,A
5e43: 10           Illegal Opcode
5e44: 64           OR B,A
5e45: 10           Illegal Opcode
5e46: 64           OR B,A
5e47: 80 6c        MOVP P108,A
5e49: 20           Illegal Opcode
5e4a: 6b           SBB B,A
5e4b: 20           Illegal Opcode
5e4c: 6b           SBB B,A
5e4d: 10           Illegal Opcode
5e4e: 6d           CMP B,A
5e4f: 10           Illegal Opcode
5e50: 67 10        BTJZ B,A,$5E62
5e52: 69           ADC B,A
5e53: 80 67        MOVP P103,A
5e55: 80 65        MOVP P101,A
5e57: 20           Illegal Opcode
5e58: 63           AND B,A
5e59: 20           Illegal Opcode
5e5a: 63           AND B,A
5e5b: 80 63        MOVP P99,A
5e5d: 10           Illegal Opcode
5e5e: 65           XOR B,A
5e5f: 80 69        MOVP P105,A
5e61: 10           Illegal Opcode
5e62: 69           ADC B,A
5e63: 20           Illegal Opcode
5e64: 67 20        BTJZ B,A,$5E86
5e66: 61           Illegal Opcode
5e67: 20           Illegal Opcode
5e68: 61           Illegal Opcode
5e69: 10           Illegal Opcode
5e6a: 65           XOR B,A
5e6b: 10           Illegal Opcode
5e6c: 52 02        MOV %>2,B
5e6e: 68           ADD B,A
5e6f: 40           Illegal Opcode
5e70: 66 40        BTJO B,A,$5EB2
5e72: 40           Illegal Opcode
5e73: 40           Illegal Opcode
5e74: 3e 40        DAC R64,B
5e76: 6a           SUB B,A
5e77: 04           Illegal Opcode
5e78: 6c           MPY B,A
5e79: 04           Illegal Opcode
5e7a: 50           Illegal Opcode
5e7b: 02           Illegal Opcode
5e7c: 26 80 52     BTJO %>80,A,$5ED1
5e7f: 40           Illegal Opcode
5e80: 50           Illegal Opcode
5e81: 40           Illegal Opcode
5e82: 4e 40 3e     DAC R64,R62
5e85: 02           Illegal Opcode
5e86: 40           Illegal Opcode
5e87: 02           Illegal Opcode
5e88: 54 02        OR %>2,B
5e8a: 6a           SUB B,A
5e8b: 40           Illegal Opcode
5e8c: 54 40        OR %>40,B
5e8e: 6c           MPY B,A
5e8f: 40           Illegal Opcode
5e90: 57 40 6b     BTJZ %>40,B,$5EFE
5e93: 40           Illegal Opcode
5e94: 6d           CMP B,A
5e95: 40           Illegal Opcode
5e96: 56 02 4e     BTJO %>2,B,$5EE7
5e99: 02           Illegal Opcode
5e9a: 64           OR B,A
5e9b: 40           Illegal Opcode
5e9c: 56 40 55     BTJO %>40,B,$5EF4
5e9f: 40           Illegal Opcode
5ea0: 55 02        XOR %>2,B
5ea2: 57 02 51     BTJZ %>2,B,$5EF6
5ea5: 02           Illegal Opcode
5ea6: 69           ADC B,A
5ea7: 40           Illegal Opcode
5ea8: 67 40        BTJZ B,A,$5EEA
5eaa: 4f 40 4d     DSB R64,R77
5ead: 40           Illegal Opcode
5eae: 63           AND B,A
5eaf: 40           Illegal Opcode
5eb0: 4d 02 65     CMP R2,R101
5eb3: 40           Illegal Opcode
5eb4: 53 02        AND %>2,B
5eb6: 53 40        AND %>40,B
5eb8: 51           Illegal Opcode
5eb9: 40           Illegal Opcode
5eba: 4b 40 4b     SBB R64,R75
5ebd: 02           Illegal Opcode
5ebe: 4f 02 52     DSB R2,R82
5ec1: 08           POP ST
5ec2: 52 20        MOV %>20,B
5ec4: 50           Illegal Opcode
5ec5: 20           Illegal Opcode
5ec6: 40           Illegal Opcode
5ec7: 80 3e        MOVP P62,A
5ec9: 80 3e        MOVP P62,A
5ecb: 20           Illegal Opcode
5ecc: 40           Illegal Opcode
5ecd: 20           Illegal Opcode
5ece: 50           Illegal Opcode
5ecf: 08           POP ST
5ed0: 26 01 52     BTJO %>1,A,$5F25
5ed3: 80 50        MOVP P80,A
5ed5: 80 4e        MOVP P78,A
5ed7: 80 3e        MOVP P62,A
5ed9: 08           POP ST
5eda: 40           Illegal Opcode
5edb: 08           POP ST
5edc: 54 08        OR %>8,B
5ede: 54 20        OR %>20,B
5ee0: 54 80        OR %>80,B
5ee2: 56 20 57     BTJO %>20,B,$5F3C
5ee5: 80 55        MOVP P85,A
5ee7: 20           Illegal Opcode
5ee8: 57 20 56     BTJZ %>20,B,$5F41
5eeb: 08           POP ST
5eec: 4e 08 4e     DAC R8,R78
5eef: 20           Illegal Opcode
5ef0: 56 80 55     BTJO %>80,B,$5F48
5ef3: 80 55        MOVP P85,A
5ef5: 08           POP ST
5ef6: 57 08 51     BTJZ %>8,B,$5F4A
5ef9: 08           POP ST
5efa: 53 20        AND %>20,B
5efc: 51           Illegal Opcode
5efd: 20           Illegal Opcode
5efe: 4f 80 4d     DSB R128,R77
5f01: 80 4d        MOVP P77,A
5f03: 20           Illegal Opcode
5f04: 4d 08 4f     CMP R8,R79
5f07: 20           Illegal Opcode
5f08: 53 08        AND %>8,B
5f0a: 53 80        AND %>80,B
5f0c: 51           Illegal Opcode
5f0d: 80 4b        MOVP P75,A
5f0f: 80 4b        MOVP P75,A
5f11: 08           POP ST
5f12: 4f 08 28     DSB R8,R40
5f15: 20           Illegal Opcode
5f16: 28 02        ADD %>2,A
5f18: 28 08        ADD %>8,A
5f1a: 2a 02        SUB %>2,A
5f1c: 2a 08        SUB %>8,A
5f1e: 2b 02        SBB %>2,A
5f20: 2b 20        SBB %>20,A
5f22: 2a 20        SUB %>20,A
5f24: 28 01        ADD %>1,A
5f26: 28 80        ADD %>80,A
5f28: 2a 80        SUB %>80,A
5f2a: 2b 08        SBB %>8,A
5f2c: 2b 01        SBB %>1,A
5f2e: 2a 01        SUB %>1,A
5f30: 29 20        ADC %>20,A
5f32: 29 02        ADC %>2,A
5f34: 29 08        ADC %>8,A
5f36: 27 02 27     BTJZ %>2,A,$5F60
5f39: 08           POP ST
5f3a: 25 02        XOR %>2,A
5f3c: 25 20        XOR %>20,A
5f3e: 27 20 29     BTJZ %>20,A,$5F6A
5f41: 01           IDLE
5f42: 29 80        ADC %>80,A
5f44: 27 80 25     BTJZ %>80,A,$5F6C
5f47: 08           POP ST
5f48: 25 01        XOR %>1,A
5f4a: 27 01 23     BTJZ %>1,A,$5F70
5f4d: 20           Illegal Opcode
5f4e: 23 02        AND %>2,A
5f50: 23 08        AND %>8,A
5f52: 21           Illegal Opcode
5f53: 02           Illegal Opcode
5f54: 21           Illegal Opcode
5f55: 08           POP ST
5f56: 1f 02        DSB R2,A
5f58: 1f 20        DSB R32,A
5f5a: 21           Illegal Opcode
5f5b: 20           Illegal Opcode
5f5c: 23 01        AND %>1,A
5f5e: 23 80        AND %>80,A
5f60: 21           Illegal Opcode
5f61: 80 1f        MOVP P31,A
5f63: 08           POP ST
5f64: 1f 01        DSB R1,A
5f66: 21           Illegal Opcode
5f67: 01           IDLE
5f68: 1d 20        CMP R32,A
5f6a: 1d 02        CMP R2,A
5f6c: 1d 08        CMP R8,A
5f6e: 1b 02        SBB R2,A
5f70: 1b 08        SBB R8,A
5f72: 19 02        ADC R2,A
5f74: 19 20        ADC R32,A
5f76: 1b 20        SBB R32,A
5f78: 1d 01        CMP R1,A
5f7a: 1d 80        CMP R128,A
5f7c: 1b 80        SBB R128,A
5f7e: 19 08        ADC R8,A
5f80: 19 01        ADC R1,A
5f82: 1b 01        SBB R1,A
5f84: 17 20 17     BTJZ R32,A,$5F9E
5f87: 02           Illegal Opcode
5f88: 17 08 15     BTJZ R8,A,$5FA0
5f8b: 02           Illegal Opcode
5f8c: 15 08        XOR R8,A
5f8e: 13 02        AND R2,A
5f90: 13 20        AND R32,A
5f92: 15 20        XOR R32,A
5f94: 17 01 17     BTJZ R1,A,$5FAE
5f97: 80 15        MOVP P21,A
5f99: 80 13        MOVP P19,A
5f9b: 08           POP ST
5f9c: 13 01        AND R1,A
5f9e: 15 01        XOR R1,A
5fa0: 20           Illegal Opcode
5fa1: 20           Illegal Opcode
5fa2: 20           Illegal Opcode
5fa3: 02           Illegal Opcode
5fa4: 20           Illegal Opcode
5fa5: 08           POP ST
5fa6: 1e 02        DAC R2,A
5fa8: 1e 08        DAC R8,A
5faa: 1c 02        MPY R2,A
5fac: 1c 20        MPY R32,A
5fae: 1e 20        DAC R32,A
5fb0: 20           Illegal Opcode
5fb1: 01           IDLE
5fb2: 20           Illegal Opcode
5fb3: 80 1e        MOVP P30,A
5fb5: 80 1c        MOVP P28,A
5fb7: 08           POP ST
5fb8: 1c 01        MPY R1,A
5fba: 1e 01        DAC R1,A
5fbc: 1a 20        SUB R32,A
5fbe: 1a 02        SUB R2,A
5fc0: 1a 08        SUB R8,A
5fc2: 18 02        ADD R2,A
5fc4: 18 08        ADD R8,A
5fc6: 16 02 16     BTJO R2,A,$5FDF
5fc9: 20           Illegal Opcode
5fca: 18 20        ADD R32,A
5fcc: 1a 01        SUB R1,A
5fce: 1a 80        SUB R128,A
5fd0: 18 80        ADD R128,A
5fd2: 16 08 16     BTJO R8,A,$5FEB
5fd5: 01           IDLE
5fd6: 18 01        ADD R1,A
5fd8: 10           Illegal Opcode
5fd9: 20           Illegal Opcode
5fda: 10           Illegal Opcode
5fdb: 02           Illegal Opcode
5fdc: 10           Illegal Opcode
5fdd: 08           POP ST
5fde: 0e           PUSH ST
5fdf: 02           Illegal Opcode
5fe0: 0e           PUSH ST
5fe1: 08           POP ST
5fe2: 0c           Illegal Opcode
5fe3: 02           Illegal Opcode
5fe4: 0c           Illegal Opcode
5fe5: 20           Illegal Opcode
5fe6: 0e           PUSH ST
5fe7: 20           Illegal Opcode
5fe8: 10           Illegal Opcode
5fe9: 01           IDLE
5fea: 10           Illegal Opcode
5feb: 80 0e        MOVP P14,A
5fed: 80 0c        MOVP P12,A
5fef: 08           POP ST
5ff0: 0c           Illegal Opcode
5ff1: 01           IDLE
5ff2: 0e           PUSH ST
5ff3: 01           IDLE
5ff4: 0a           RETS
5ff5: 20           Illegal Opcode
5ff6: 0a           RETS
5ff7: 02           Illegal Opcode
5ff8: 0a           RETS
5ff9: 08           POP ST
5ffa: 08           POP ST
5ffb: 02           Illegal Opcode
5ffc: 08           POP ST
5ffd: 08           POP ST
5ffe: 06           DINT
5fff: 02           Illegal Opcode
6000: 06           DINT
6001: 20           Illegal Opcode
6002: 08           POP ST
6003: 20           Illegal Opcode
6004: 0a           RETS
6005: 01           IDLE
6006: 0a           RETS
6007: 80 08        MOVP P8,A
6009: 80 06        MOVP P6,A
600b: 08           POP ST
600c: 06           DINT
600d: 01           IDLE
600e: 08           POP ST
600f: 01           IDLE
6010: 11           Illegal Opcode
6011: 20           Illegal Opcode
6012: 11           Illegal Opcode
6013: 02           Illegal Opcode
6014: 11           Illegal Opcode
6015: 08           POP ST
6016: 0f           Illegal Opcode
6017: 02           Illegal Opcode
6018: 0f           Illegal Opcode
6019: 08           POP ST
601a: 0d           LDSP
601b: 02           Illegal Opcode
601c: 0d           LDSP
601d: 20           Illegal Opcode
601e: 0f           Illegal Opcode
601f: 20           Illegal Opcode
6020: 11           Illegal Opcode
6021: 01           IDLE
6022: 11           Illegal Opcode
6023: 80 0f        MOVP P15,A
6025: 80 0d        MOVP P13,A
6027: 08           POP ST
6028: 0d           LDSP
6029: 01           IDLE
602a: 0f           Illegal Opcode
602b: 01           IDLE
602c: 0b           RETI
602d: 20           Illegal Opcode
602e: 0b           RETI
602f: 02           Illegal Opcode
6030: 0b           RETI
6031: 08           POP ST
6032: 09           STSP
6033: 02           Illegal Opcode
6034: 09           STSP
6035: 08           POP ST
6036: 07           SETC
6037: 02           Illegal Opcode
6038: 07           SETC
6039: 20           Illegal Opcode
603a: 09           STSP
603b: 20           Illegal Opcode
603c: 0b           RETI
603d: 01           IDLE
603e: 0b           RETI
603f: 80 09        MOVP P9,A
6041: 80 07        MOVP P7,A
6043: 08           POP ST
6044: 07           SETC
6045: 01           IDLE
6046: 09           STSP
6047: 01           IDLE
6048: 05           EINT
6049: 20           Illegal Opcode
604a: 05           EINT
604b: 02           Illegal Opcode
604c: 05           EINT
604d: 08           POP ST
604e: 03           Illegal Opcode
604f: 02           Illegal Opcode
6050: 03           Illegal Opcode
6051: 08           POP ST
6052: 01           IDLE
6053: 02           Illegal Opcode
6054: 01           IDLE
6055: 20           Illegal Opcode
6056: 03           Illegal Opcode
6057: 20           Illegal Opcode
6058: 05           EINT
6059: 01           IDLE
605a: 05           EINT
605b: 80 03        MOVP P3,A
605d: 80 01        MOVP P1,A
605f: 08           POP ST
6060: 01           IDLE
6061: 01           IDLE
6062: 03           Illegal Opcode
6063: 01           IDLE
6064: fb           TRAP 4
6065: 88 60 bd 01  MOVD %>60BD,R1
6069: 8e 56 9d     CALL $569D
606c: 8e 58 76     CALL $5876
606f: 8e 57 81     CALL $5781
6072: 8e 4d 9a     CALL $4D9A
6075: 7d 31 76     CMP %>31,R118
6078: e6 05        JNZ $607F
607a: 75 01 32     XOR %>1,R50
607d: e0 f0        JMP $606F
607f: 73 bf 32     AND %>BF,R50
6082: 8e 60 9a     CALL $609A
6085: e6 0d        JNZ $6094
6087: 74 40 32     OR %>40,R50
608a: 88 60 c9 01  MOVD %>60C9,R1
608e: 8e 56 9d     CALL $569D
6091: 8e 58 76     CALL $5876
6094: 52 01        MOV %>1,B
6096: 0d           LDSP
6097: 8c 40 c7     BR $40C7
609a: 88 60 b1 29  MOVD %>60B1,R41
609e: 52 05        MOV %>5,B
60a0: 12 76        MOV R118,A
60a2: e0 02        JMP $60A6
60a4: db 29        DECD R41
60a6: 9d 29        CMPA *R41
60a8: e2 02        JEQ $60AC
60aa: ca f8        DJNZ B,$60A4
60ac: 0a           RETS
60ad: 1b 1c        SBB R28,A
60af: 1d 1e        CMP R30,A
60b1: 19 20        ADC R32,A
60b3: 20           Illegal Opcode
60b4: 20           Illegal Opcode
60b5: 53 45        AND %>45,B
60b7: 4c 45 43     MPY R69,R67
60ba: 54 20        OR %>20,B
60bc: 20           Illegal Opcode
60bd: 20           Illegal Opcode
60be: 20           Illegal Opcode
60bf: 20           Illegal Opcode
60c0: 20           Illegal Opcode
60c1: 20           Illegal Opcode
60c2: 20           Illegal Opcode
60c3: 20           Illegal Opcode
60c4: 20           Illegal Opcode
60c5: 20           Illegal Opcode
60c6: 20           Illegal Opcode
60c7: 20           Illegal Opcode
60c8: 20           Illegal Opcode
60c9: 20           Illegal Opcode
60ca: 8e 60 f7     CALL $60F7
60cd: 88 61 d5 29  MOVD %>61D5,R41
60d1: 8a 20 b8     LDA @>20B8
60d4: e2 08        JEQ $60DE
60d6: 7a 0c 29     SUB %>C,R41
60d9: 7b 00 28     SBB %>0,R40
60dc: ba f8        DJNZ A,$60D6
60de: 98 29 01     MOVD R41,R1
60e1: 8e 56 9d     CALL $569D
60e4: 8e 57 81     CALL $5781
60e7: 8e 58 9a     CALL $589A
60ea: d5 2e        CLR R46
60ec: 52 b0        MOV %>B0,B
60ee: 22 ff        MOV %>FF,A
60f0: 8e f0 48     CALL $F048
60f3: f9           TRAP 6
60f4: 8c 58 76     BR $5876
60f7: fb           TRAP 4
60f8: b5           CLR A
60f9: 8b 20 b9     STA @>20B9
60fc: 22 09        MOV %>9,A
60fe: 8b 20 b8     STA @>20B8
6101: 88 4a 52 01  MOVD %>4A52,R1
6105: 8b 20 ba     STA @>20BA
6108: 62           MOV B,A
6109: 8b 20 bb     STA @>20BB
610c: 72 20 32     MOV %>20,R50
610f: 88 61 4e 75  MOVD %>614E,R117
6113: 88 20 5f 29  MOVD %>205F,R41
6117: 8e 93 75     CALL $9375
611a: 72 05 33     MOV %>5,R51
611d: 98 29 75     MOVD R41,R117
6120: f8           TRAP 7
6121: 78 10 75     ADD %>10,R117
6124: 79 00 74     ADC %>0,R116
6127: d8 75        PUSH R117
6129: d8 74        PUSH R116
612b: 8e 51 1f     CALL $511F
612e: 8e 55 6b     CALL $556B
6131: d9 74        POP R116
6133: d9 75        POP R117
6135: da 33 e8     DJNZ R51,$6120
6138: b5           CLR A
6139: c5           CLR B
613a: 8e 57 51     CALL $5751
613d: 8c 56 b2     BR $56B2
6140: 4d 30 20     CMP R48,R32
6143: 4d 31 20     CMP R49,R32
6146: 4d 32 20     CMP R50,R32
6149: 4d 33 20     CMP R51,R32
614c: 4d 34 20     CMP R52,R32
614f: 4d 35 20     CMP R53,R32
6152: 4d 36 20     CMP R54,R32
6155: 4d 37 20     CMP R55,R32
6158: 4d 38 20     CMP R56,R32
615b: 4d 39 20     CMP R57,R32
615e: 20           Illegal Opcode
615f: 20           Illegal Opcode
6160: 20           Illegal Opcode
6161: 4d 45 4d     CMP R69,R77
6164: 4f 52 59     DSB R82,R89
6167: 20           Illegal Opcode
6168: 20           Illegal Opcode
6169: 20           Illegal Opcode
616a: 20           Illegal Opcode
616b: 44 41 54     OR R65,R84
616e: 45 20 43     XOR R32,R67
6171: 41           Illegal Opcode
6172: 4c 43 53     MPY R67,R83
6175: 20           Illegal Opcode
6176: 20           Illegal Opcode
6177: 50           Illegal Opcode
6178: 43 54 20     AND R84,R32
617b: 43 48 41     AND R72,R65
617e: 4e 47 45     DAC R71,R69
6181: 20           Illegal Opcode
6182: 50           Illegal Opcode
6183: 52 4f        MOV %>4F,B
6185: 46 49 54 20  BTJO R73,R84,$61A9
6189: 43 41 4c     AND R65,R76
618c: 43 53 49     AND R83,R73
618f: 20           Illegal Opcode
6190: 43 4f 4e     AND R79,R78
6193: 56 45 52     BTJO %>45,B,$61E8
6196: 53 49        AND %>49,B
6198: 4f 4e 20     DSB R78,R32
619b: 42 4f 4e     MOV R79,R78
619e: 44 20 43     OR R32,R67
61a1: 41           Illegal Opcode
61a2: 4c 43 53     MPY R67,R83
61a5: 20           Illegal Opcode
61a6: 20           Illegal Opcode
61a7: 53 54        AND %>54,B
61a9: 41           Illegal Opcode
61aa: 54 49        OR %>49,B
61ac: 53 54        AND %>54,B
61ae: 49 43 53     ADC R67,R83
61b1: 20           Illegal Opcode
61b2: 20           Illegal Opcode
61b3: 43 41 53     AND R65,R83
61b6: 48 20 46     ADD R32,R70
61b9: 4c 4f 57     MPY R79,R87
61bc: 20           Illegal Opcode
61bd: 20           Illegal Opcode
61be: 44 45 50     OR R69,R80
61c1: 52 45        MOV %>45,B
61c3: 43 49 41     AND R73,R65
61c6: 54 49        OR %>49,B
61c8: 4f 4e 20     DSB R78,R32
61cb: 54 56        OR %>56,B
61cd: 4d 2f 41     CMP R47,R65
61d0: 4d 4f 52     CMP R79,R82
61d3: 54 20        OR %>20,B
61d5: 20           Illegal Opcode
61d6: 52 01        MOV %>1,B
61d8: e0 0d        JMP $61E7
61da: 52 02        MOV %>2,B
61dc: e0 09        JMP $61E7
61de: 52 03        MOV %>3,B
61e0: e0 05        JMP $61E7
61e2: 52 04        MOV %>4,B
61e4: e0 01        JMP $61E7
61e6: c5           CLR B
61e7: 8a 20 b9     LDA @>20B9
61ea: e2 02        JEQ $61EE
61ec: 58 05        ADD %>5,B
61ee: c8           PUSH B
61ef: fb           TRAP 4
61f0: 88 20 5f 3d  MOVD %>205F,R61
61f4: b9           POP A
61f5: b8           PUSH A
61f6: be           RL A
61f7: be           RL A
61f8: be           RL A
61f9: 48 00 3d     ADD R0,R61
61fc: 79 00 3c     ADC %>0,R60
61ff: 8e 8b 30     CALL $8B30
6202: c9           POP B
6203: 22 09        MOV %>9,A
6205: 8d 20 b8     CMPA @>20B8
6208: e6 19        JNZ $6223
620a: 8a 20 b9     LDA @>20B9
620d: e2 04        JEQ $6213
620f: 5a 05        SUB %>5,B
6211: e7 10        JL $6223
6213: 5d 05        CMP %>5,B
6215: e3 0c        JHS $6223
6217: 72 05 33     MOV %>5,R51
621a: 4a 01 33     SUB R1,R51
621d: 8e 51 1f     CALL $511F
6220: 8e 55 6b     CALL $556B
6223: f9           TRAP 6
6224: 8c 58 9a     BR $589A
6227: fb           TRAP 4
6228: 88 4a 70 01  MOVD %>4A70,R1
622c: 8b 20 ba     STA @>20BA
622f: 62           MOV B,A
6230: 8b 20 bb     STA @>20BB
6233: 22 01        MOV %>1,A
6235: 8b 20 b9     STA @>20B9
6238: 72 02 32     MOV %>2,R50
623b: 88 61 5d 75  MOVD %>615D,R117
623f: 88 20 87 29  MOVD %>2087,R41
6243: 8e 61 17     CALL $6117
6246: e0 db        JMP $6223
6248: 8e 60 f7     CALL $60F7
624b: e0 d6        JMP $6223
624d: fb           TRAP 4
624e: 8e 42 45     CALL $4245
6251: 8e 57 81     CALL $5781
6254: 8e 4d 9a     CALL $4D9A
6257: 7d 31 76     CMP %>31,R118
625a: e6 05        JNZ $6261
625c: 75 01 32     XOR %>1,R50
625f: e0 f0        JMP $6251
6261: 88 65 36 29  MOVD %>6536,R41
6265: 52 0a        MOV %>A,B
6267: 8e 60 a0     CALL $60A0
626a: e2 1b        JEQ $6287
626c: 77 01 32 03  BTJZ %>1,R50,$6273
6270: 74 80 76     OR %>80,R118
6273: 88 65 3e 29  MOVD %>653E,R41
6277: 52 08        MOV %>8,B
6279: 8e 60 a0     CALL $60A0
627c: e2 0d        JEQ $628B
627e: 73 7f 76     AND %>7F,R118
6281: 52 01        MOV %>1,B
6283: 0d           LDSP
6284: 8c 40 c7     BR $40C7
6287: c2           DEC B
6288: 8c 61 ee     BR $61EE
628b: c8           PUSH B
628c: 73 fe 32     AND %>FE,R50
628f: 8e 57 81     CALL $5781
6292: 8e 4d 9a     CALL $4D9A
6295: 7d 31 76     CMP %>31,R118
6298: e6 05        JNZ $629F
629a: 75 01 32     XOR %>1,R50
629d: e0 f0        JMP $628F
629f: 88 65 36 29  MOVD %>6536,R41
62a3: 52 0a        MOV %>A,B
62a5: 8e 60 a0     CALL $60A0
62a8: e2 13        JEQ $62BD
62aa: 22 09        MOV %>9,A
62ac: 8d 20 b8     CMPA @>20B8
62af: e6 d0        JNZ $6281
62b1: 8e 60 9a     CALL $609A
62b4: e6 cb        JNZ $6281
62b6: 8a 20 b9     LDA @>20B9
62b9: e2 02        JEQ $62BD
62bb: 58 05        ADD %>5,B
62bd: c2           DEC B
62be: c8           PUSH B
62bf: fb           TRAP 4
62c0: 88 20 5f 75  MOVD %>205F,R117
62c4: b9           POP A
62c5: c9           POP B
62c6: b8           PUSH A
62c7: c8           PUSH B
62c8: be           RL A
62c9: be           RL A
62ca: be           RL A
62cb: 48 00 75     ADD R0,R117
62ce: 79 00 74     ADC %>0,R116
62d1: f6           TRAP 9
62d2: c9           POP B
62d3: c2           DEC B
62d4: 62           MOV B,A
62d5: ce           RL B
62d6: 38 00        ADD R0,B
62d8: ae 65 15     CALL @>6515(B)
62db: 8e 47 ff     CALL $47FF
62de: fa           TRAP 5
62df: 8c 61 f0     BR $61F0
62e2: fb           TRAP 4
62e3: 8e 42 45     CALL $4245
62e6: 8e 57 81     CALL $5781
62e9: 8e 4d 9a     CALL $4D9A
62ec: 7d 31 76     CMP %>31,R118
62ef: e6 05        JNZ $62F6
62f1: 75 01 32     XOR %>1,R50
62f4: e0 f0        JMP $62E6
62f6: 88 65 36 29  MOVD %>6536,R41
62fa: 52 0a        MOV %>A,B
62fc: 8e 60 a0     CALL $60A0
62ff: e2 3e        JEQ $633F
6301: 8e 60 9a     CALL $609A
6304: e6 36        JNZ $633C
6306: c8           PUSH B
6307: 8a 20 b8     LDA @>20B8
630a: c0           MOV A,B
630b: ce           RL B
630c: aa 65 3f     LDA @>653F(B)
630f: d0 28        MOV A,R40
6311: aa 65 40     LDA @>6540(B)
6314: d0 29        MOV A,R41
6316: 8a 20 b9     LDA @>20B9
6319: e2 08        JEQ $6323
631b: 78 0a 29     ADD %>A,R41
631e: 79 00 28     ADC %>0,R40
6321: ba f8        DJNZ A,$631B
6323: b9           POP A
6324: be           RL A
6325: b2           DEC A
6326: 48 00 29     ADD R0,R41
6329: 79 00 28     ADC %>0,R40
632c: 9a 29        LDA *R41
632e: d0 75        MOV A,R117
6330: db 29        DECD R41
6332: 9a 29        LDA *R41
6334: d0 74        MOV A,R116
6336: 2d 40        CMP %>40,A
6338: e7 13        JL $634D
633a: 9c 75        BR *R117
633c: 8c 62 81     BR $6281
633f: c2           DEC B
6340: 88 20 5f 75  MOVD %>205F,R117
6344: ce           RL B
6345: ce           RL B
6346: ce           RL B
6347: 48 01 75     ADD R1,R117
634a: 79 00 74     ADC %>0,R116
634d: f8           TRAP 7
634e: 8e 50 6a     CALL $506A
6351: 8e 47 f4     CALL $47F4
6354: 8c 42 45     BR $4245
6357: 8e 48 20     CALL $4820
635a: 8a 20 2f     LDA @>202F
635d: e5 02        JPZ $6361
635f: 22 09        MOV %>9,A
6361: d0 61        MOV A,R97
6363: e0 e9        JMP $634E
6365: 98 3f 75     MOVD R63,R117
6368: e0 e3        JMP $634D
636a: 98 41 75     MOVD R65,R117
636d: e0 de        JMP $634D
636f: 98 43 75     MOVD R67,R117
6372: e0 d9        JMP $634D
6374: 98 45 75     MOVD R69,R117
6377: e0 d4        JMP $634D
6379: 98 47 75     MOVD R71,R117
637c: e0 cf        JMP $634D
637e: 8e 48 20     CALL $4820
6381: 8a 22 9d     LDA @>229D
6384: d0 61        MOV A,R97
6386: 8a 22 9c     LDA @>229C
6389: d0 60        MOV A,R96
638b: e0 c1        JMP $634E
638d: 8e 48 20     CALL $4820
6390: 8a 22 9f     LDA @>229F
6393: d0 61        MOV A,R97
6395: 8a 22 9e     LDA @>229E
6398: d0 60        MOV A,R96
639a: e0 b2        JMP $634E
639c: 8e 48 20     CALL $4820
639f: 8a 22 b1     LDA @>22B1
63a2: d0 61        MOV A,R97
63a4: 8a 22 b0     LDA @>22B0
63a7: d0 60        MOV A,R96
63a9: e0 a3        JMP $634E
63ab: 8a 22 ca     LDA @>22CA
63ae: 26 18 1c     BTJO %>18,A,$63CD
63b1: 88 22 9b 75  MOVD %>229B,R117
63b5: e0 96        JMP $634D
63b7: 98 3f 75     MOVD R63,R117
63ba: 78 05 75     ADD %>5,R117
63bd: 79 00 75     ADC %>0,R117
63c0: f8           TRAP 7
63c1: 52 05        MOV %>5,B
63c3: 8e 95 81     CALL $9581
63c6: e0 86        JMP $634E
63c8: 9a 3f        LDA *R63
63ca: 27 10 03     BTJZ %>10,A,$63D0
63cd: 8c 42 45     BR $4245
63d0: 98 41 75     MOVD R65,R117
63d3: e0 e5        JMP $63BA
63d5: 88 23 0a 75  MOVD %>230A,R117
63d9: f8           TRAP 7
63da: 88 00 00 67  MOVD %>0000,R103
63de: 8c 63 4e     BR $634E
63e1: 8a 23 09     LDA @>2309
63e4: 27 10 e6     BTJZ %>10,A,$63CD
63e7: 88 23 12 75  MOVD %>2312,R117
63eb: e0 3d        JMP $642A
63ed: 8a 23 09     LDA @>2309
63f0: 27 08 da     BTJZ %>8,A,$63CD
63f3: 88 23 1a 75  MOVD %>231A,R117
63f7: e0 31        JMP $642A
63f9: 8a 23 09     LDA @>2309
63fc: 27 04 ce     BTJZ %>4,A,$63CD
63ff: 88 23 22 75  MOVD %>2322,R117
6403: e0 25        JMP $642A
6405: 88 23 2a 75  MOVD %>232A,R117
6409: 8a 23 09     LDA @>2309
640c: 27 02 be     BTJZ %>2,A,$63CD
640f: e0 19        JMP $642A
6411: 88 23 32 75  MOVD %>2332,R117
6415: 8a 23 09     LDA @>2309
6418: 27 01 b2     BTJZ %>1,A,$63CD
641b: e0 0d        JMP $642A
641d: 88 23 bd 75  MOVD %>23BD,R117
6421: 8a 21 31     LDA @>2131
6424: e2 04        JEQ $642A
6426: 88 24 85 75  MOVD %>2485,R117
642a: 8c 63 4d     BR $634D
642d: 88 23 7c 75  MOVD %>237C,R117
6431: 8a 21 31     LDA @>2131
6434: e2 f4        JEQ $642A
6436: 88 23 a0 75  MOVD %>23A0,R117
643a: e0 ee        JMP $642A
643c: 88 23 6c 75  MOVD %>236C,R117
6440: 8a 21 31     LDA @>2131
6443: e2 e5        JEQ $642A
6445: 88 23 90 75  MOVD %>2390,R117
6449: e0 df        JMP $642A
644b: 88 23 74 75  MOVD %>2374,R117
644f: 8a 21 31     LDA @>2131
6452: e2 d6        JEQ $642A
6454: 88 23 98 75  MOVD %>2398,R117
6458: e0 d0        JMP $642A
645a: 88 23 64 75  MOVD %>2364,R117
645e: 8a 21 31     LDA @>2131
6461: e2 c7        JEQ $642A
6463: 88 23 88 75  MOVD %>2388,R117
6467: e0 c1        JMP $642A
6469: 88 23 bd 75  MOVD %>23BD,R117
646d: 8a 21 31     LDA @>2131
6470: e2 04        JEQ $6476
6472: 88 24 85 75  MOVD %>2485,R117
6476: 8a 23 b5     LDA @>23B5
6479: be           RL A
647a: be           RL A
647b: be           RL A
647c: 48 00 75     ADD R0,R117
647f: 79 00 74     ADC %>0,R116
6482: e0 a6        JMP $642A
6484: 88 25 45 75  MOVD %>2545,R117
6488: 8a 21 31     LDA @>2131
648b: e2 04        JEQ $6491
648d: 88 25 8d 75  MOVD %>258D,R117
6491: 8a 23 b5     LDA @>23B5
6494: c0           MOV A,B
6495: be           RL A
6496: 68           ADD B,A
6497: 28 05        ADD %>5,A
6499: 48 00 75     ADD R0,R117
649c: 78 00 74     ADD %>0,R116
649f: f8           TRAP 7
64a0: 52 05        MOV %>5,B
64a2: 8e 95 81     CALL $9581
64a5: 8c 63 4e     BR $634E
64a8: 8e 48 20     CALL $4820
64ab: 8a 23 b5     LDA @>23B5
64ae: 2a 0a        SUB %>A,A
64b0: e7 05        JL $64B7
64b2: 78 10 61     ADD %>10,R97
64b5: e0 f7        JMP $64AE
64b7: 28 0a        ADD %>A,A
64b9: 48 00 61     ADD R0,R97
64bc: 8c 63 4e     BR $634E
64bf: 88 26 18 75  MOVD %>2618,R117
64c3: 8e 64 d7     CALL $64D7
64c6: 8e a8 f0     CALL $A8F0
64c9: e0 f1        JMP $64BC
64cb: 88 26 1c 75  MOVD %>261C,R117
64cf: e0 f2        JMP $64C3
64d1: 78 03 75     ADD %>3,R117
64d4: 79 00 74     ADC %>0,R116
64d7: f8           TRAP 7
64d8: 52 03        MOV %>3,B
64da: 8e 95 81     CALL $9581
64dd: 72 40 60     MOV %>40,R96
64e0: 0a           RETS
64e1: 88 23 3a 75  MOVD %>233A,R117
64e5: 8a 23 04     LDA @>2304
64e8: e2 03        JEQ $64ED
64ea: 8c 63 4d     BR $634D
64ed: 8c 42 45     BR $4245
64f0: 88 23 42 75  MOVD %>2342,R117
64f4: e0 ef        JMP $64E5
64f6: 88 23 4a 75  MOVD %>234A,R117
64fa: e0 e9        JMP $64E5
64fc: 88 23 52 75  MOVD %>2352,R117
6500: e0 e3        JMP $64E5
6502: 88 23 5a 75  MOVD %>235A,R117
6506: e0 dd        JMP $64E5
6508: 98 3f 75     MOVD R63,R117
650b: 8e 64 d1     CALL $64D1
650e: e0 b6        JMP $64C6
6510: 98 43 75     MOVD R67,R117
6513: e0 f6        JMP $650B
6515: 8c f0 06     BR $F006
6518: 8c f0 06     BR $F006
651b: 8c f0 09     BR $F009
651e: 8c f0 09     BR $F009
6521: 8c f0 0c     BR $F00C
6524: 8c f0 0c     BR $F00C
6527: 8c f0 0f     BR $F00F
652a: 8c 46 74     BR $4674
652d: 2f 2e        DSB %>2E,A
652f: 26 0e 2d     BTJO %>E,A,$655F
6532: 25 0d        XOR %>D,A
6534: 2c 24        MPY %>24,A
6536: 0c           Illegal Opcode
6537: 16 96 15     BTJO R150,A,$654F
653a: 95 14        XORP B,P20
653c: 94 13        ORP B,P19
653e: 33 65        AND R101,B
6540: 57 65 7f     BTJZ %>65,B,$65C2
6543: 65           XOR B,A
6544: 9d 65        CMPA *R101
6546: b1           Illegal Opcode
6547: 66 51        BTJO B,A,$659A
6549: 65           XOR B,A
654a: f7           TRAP 8
654b: 65           XOR B,A
654c: e3 66        JHS $65B4
654e: 01           IDLE
654f: 66 0b        BTJO B,A,$655C
6551: 66 1f        BTJO B,A,$6572
6553: 66 33        BTJO B,A,$6588
6555: 66 47        BTJO B,A,$659E
6557: 63           AND B,A
6558: 65           XOR B,A
6559: 63           AND B,A
655a: 6a           SUB B,A
655b: 63           AND B,A
655c: 6f           DSB B,A
655d: 63           AND B,A
655e: 74 63 79     OR %>63,R121
6561: 63           AND B,A
6562: b7           SWAP A
6563: 63           AND B,A
6564: d0 63        MOV A,R99
6566: 6f           DSB B,A
6567: 63           AND B,A
6568: 74 63 79     OR %>63,R121
656b: 42 45 42     MOV R69,R66
656e: 45 63 d0     XOR R99,R208
6571: 42 45 42     MOV R69,R66
6574: 45 42 45     XOR R66,R69
6577: 42 45 63     MOV R69,R99
657a: c8           PUSH B
657b: 42 45 42     MOV R69,R66
657e: 45 42 45     XOR R66,R69
6581: 42 45 42     MOV R69,R66
6584: 45 42 45     XOR R66,R69
6587: 63           AND B,A
6588: ab 63 7e     STA @>637E(B)
658b: 63           AND B,A
658c: 8d 22 a7     CMPA @>22A7
658f: 22 af        MOV %>AF,A
6591: 42 45 63     MOV R69,R99
6594: 9c 22        BR *R34
6596: b9           POP A
6597: 22 c1        MOV %>C1,A
6599: 22 c9        MOV %>C9,A
659b: 42 45 64     MOV R69,R100
659e: 1d 64        CMP R100,A
65a0: 2d 64        CMP %>64,A
65a2: 3c 64        MPY R100,B
65a4: 4b 64 5a     SBB R100,R90
65a7: 64           OR B,A
65a8: 69           ADC B,A
65a9: 64           OR B,A
65aa: 84 64        ORP A,P100
65ac: a8 42 45 42  MOVD %>4245(B),R66
65b0: 45 22 fa     XOR R34,R250
65b3: 23 02        AND %>2,A
65b5: 63           AND B,A
65b6: d5 42        CLR R66
65b8: 45 42 45     XOR R66,R69
65bb: 63           AND B,A
65bc: e1 63        JN $6621
65be: ed           TRAP 18
65bf: 63           AND B,A
65c0: f9           TRAP 6
65c1: 42 45 42     MOV R69,R66
65c4: 45 63 e1     XOR R99,R225
65c7: 63           AND B,A
65c8: ed           TRAP 18
65c9: 63           AND B,A
65ca: f9           TRAP 6
65cb: 42 45 42     MOV R69,R66
65ce: 45 63 e1     XOR R99,R225
65d1: 63           AND B,A
65d2: ed           TRAP 18
65d3: 63           AND B,A
65d4: f9           TRAP 6
65d5: 64           OR B,A
65d6: 05           EINT
65d7: 64           OR B,A
65d8: 11           Illegal Opcode
65d9: 64           OR B,A
65da: e1 64        JN $6640
65dc: f0           TRAP 15
65dd: 64           OR B,A
65de: f6           TRAP 9
65df: 64           OR B,A
65e0: fc           TRAP 3
65e1: 65           XOR B,A
65e2: 02           Illegal Opcode
65e3: 22 d6        MOV %>D6,A
65e5: 22 de        MOV %>DE,A
65e7: 22 e6        MOV %>E6,A
65e9: 42 45 42     MOV R69,R66
65ec: 45 22 d6     XOR R34,R214
65ef: 22 de        MOV %>DE,A
65f1: 22 ee        MOV %>EE,A
65f3: 42 45 42     MOV R69,R66
65f6: 45 25 ff     XOR R37,R255
65f9: 26 07 26     BTJO %>7,A,$6622
65fc: 0f           Illegal Opcode
65fd: 42 45 42     MOV R69,R66
6600: 45 25 e5     XOR R37,R229
6603: 25 ed        XOR %>ED,A
6605: 25 f5        XOR %>F5,A
6607: 42 45 42     MOV R69,R66
660a: 45 64 bf     XOR R100,R191
660d: 64           OR B,A
660e: cb           DECD B
660f: 26 21 42     BTJO %>21,A,$6654
6612: 45 42 45     XOR R66,R69
6615: 42 45 42     MOV R69,R66
6618: 45 42 45     XOR R66,R69
661b: 42 45 42     MOV R69,R66
661e: 45 20 5f     XOR R32,R95
6621: 20           Illegal Opcode
6622: 67 20        BTJZ B,A,$6644
6624: 6f           DSB B,A
6625: 20           Illegal Opcode
6626: 77 20 7f 20  BTJZ %>20,R127,$664A
662a: 87 20 8f     BTJZP A,P32,$65BC
662d: 20           Illegal Opcode
662e: 97 20 9f     BTJZP B,P32,$65D0
6631: 20           Illegal Opcode
6632: a7 63 57 42  BTJZP %>63,P87,$6678
6636: 45 42 45     XOR R66,R69
6639: 42 45 42     MOV R69,R66
663c: 45 42 45     XOR R66,R69
663f: 42 45 42     MOV R69,R66
6642: 45 42 45     XOR R66,R69
6645: 42 45 42     MOV R69,R66
6648: 45 42 45     XOR R66,R69
664b: 42 45 42     MOV R69,R66
664e: 45 42 45     XOR R66,R69
6651: 65           XOR B,A
6652: 08           POP ST
6653: 63           AND B,A
6654: 6a           SUB B,A
6655: 65           XOR B,A
6656: 10           Illegal Opcode
6657: 63           AND B,A
6658: 74 42 45     OR %>42,R69
665b: 63           AND B,A
665c: 65           XOR B,A
665d: 63           AND B,A
665e: 6a           SUB B,A
665f: 42 45 42     MOV R69,R66
6662: 45 42 45     XOR R66,R69
6665: 63           AND B,A
6666: 65           XOR B,A
6667: 63           AND B,A
6668: 6a           SUB B,A
6669: 63           AND B,A
666a: 6f           DSB B,A
666b: 63           AND B,A
666c: 74 42 45     OR %>42,R69
666f: 76 ff 6f 01  BTJO %>FF,R111,$6674
6673: 0a           RETS
6674: 52 01        MOV %>1,B
6676: 0d           LDSP
6677: fb           TRAP 4
6678: 8a 20 b8     LDA @>20B8
667b: 2d 04        CMP %>4,A
667d: e6 07        JNZ $6686
667f: 8a 20 b9     LDA @>20B9
6682: c0           MOV A,B
6683: 8e b1 d9     CALL $B1D9
6686: 52 0c        MOV %>C,B
6688: aa 66 c1     LDA @>66C1(B)
668b: ab 00 47     STA @>0047(B)
668e: ca f8        DJNZ B,$6688
6690: c5           CLR B
6691: 12 6f        MOV R111,A
6693: 2a 0a        SUB %>A,A
6695: e7 03        JL $669A
6697: c3           INC B
6698: e0 f9        JMP $6693
669a: 28 0a        ADD %>A,A
669c: c1           TSTB
669d: e2 06        JEQ $66A5
669f: 28 30        ADD %>30,A
66a1: 8b 00 51     STA @>0051
66a4: 62           MOV B,A
66a5: 28 30        ADD %>30,A
66a7: 8b 00 50     STA @>0050
66aa: 88 00 53 01  MOVD %>0053,R1
66ae: 8e 56 9d     CALL $569D
66b1: 8e 58 9a     CALL $589A
66b4: 8e 57 81     CALL $5781
66b7: 8e 4d 9a     CALL $4D9A
66ba: 7d 37 76     CMP %>37,R118
66bd: e6 f8        JNZ $66B7
66bf: 8c 40 c7     BR $40C7
66c2: 20           Illegal Opcode
66c3: 20           Illegal Opcode
66c4: 45 52 52     XOR R82,R82
66c7: 4f 52 20     DSB R82,R32
66ca: 20           Illegal Opcode
66cb: 20           Illegal Opcode
66cc: 20           Illegal Opcode
66cd: 20           Illegal Opcode
66ce: 8a 20 b8     LDA @>20B8
66d1: 2d 0b        CMP %>B,A
66d3: e6 01        JNZ $66D6
66d5: 0a           RETS
66d6: fb           TRAP 4
66d7: 8a 20 b8     LDA @>20B8
66da: c0           MOV A,B
66db: be           RL A
66dc: 38 00        ADD R0,B
66de: ac 66 e1     BR @>66E1(B)
66e1: 8c 67 02     BR $6702
66e4: 8c 67 60     BR $6760
66e7: 8c 67 c5     BR $67C5
66ea: 8c 67 9e     BR $679E
66ed: 8c 68 84     BR $6884
66f0: 8c 68 12     BR $6812
66f3: 8c 67 90     BR $6790
66f6: 8c 68 2c     BR $682C
66f9: 8c 68 3a     BR $683A
66fc: 8c 67 ac     BR $67AC
66ff: 8c 67 ba     BR $67BA
6702: 88 21 79 2b  MOVD %>2179,R43
6706: 88 21 83 29  MOVD %>2183,R41
670a: 8a 21 30     LDA @>2130
670d: e2 20        JEQ $672F
670f: 88 21 cb 2b  MOVD %>21CB,R43
6713: 88 21 d5 29  MOVD %>21D5,R41
6717: 2d 01        CMP %>1,A
6719: e2 14        JEQ $672F
671b: 88 22 1d 2b  MOVD %>221D,R43
671f: 88 22 27 29  MOVD %>2227,R41
6723: 2d 02        CMP %>2,A
6725: e2 08        JEQ $672F
6727: 88 22 6f 2b  MOVD %>226F,R43
672b: 88 22 79 29  MOVD %>2279,R41
672f: 88 00 46 2d  MOVD %>0046,R45
6733: 8e f0 4e     CALL $F04E
6736: b5           CLR A
6737: 52 04        MOV %>4,B
6739: 9b 29        STA *R41
673b: db 29        DECD R41
673d: ca fa        DJNZ B,$6739
673f: 7a 1f 29     SUB %>1F,R41
6742: 7b 00 28     SBB %>0,R40
6745: 22 01        MOV %>1,A
6747: 9b 29        STA *R41
6749: db 29        DECD R41
674b: 22 40        MOV %>40,A
674d: 9b 29        STA *R41
674f: db 29        DECD R41
6751: db 29        DECD R41
6753: 22 01        MOV %>1,A
6755: 9b 29        STA *R41
6757: db 29        DECD R41
6759: 22 40        MOV %>40,A
675b: 9b 29        STA *R41
675d: 8c 93 81     BR $9381
6760: 8a 22 ca     LDA @>22CA
6763: b8           PUSH A
6764: 88 22 cd 2b  MOVD %>22CD,R43
6768: 88 00 32 2d  MOVD %>0032,R45
676c: 8e f0 4e     CALL $F04E
676f: b9           POP A
6770: 8b 22 ca     STA @>22CA
6773: b5           CLR A
6774: 8b 21 33     STA @>2133
6777: 22 40        MOV %>40,A
6779: 8b 22 9c     STA @>229C
677c: 8b 22 9e     STA @>229E
677f: 8b 22 b0     STA @>22B0
6782: 22 01        MOV %>1,A
6784: 8b 22 9d     STA @>229D
6787: 8b 22 9f     STA @>229F
678a: 8b 22 b1     STA @>22B1
678d: 8c 9a 0e     BR $9A0E
6790: 88 22 f2 2b  MOVD %>22F2,R43
6794: 88 00 24 2d  MOVD %>0024,R45
6798: 8e f0 4e     CALL $F04E
679b: 8c 9d 68     BR $9D68
679e: 88 23 5c 2b  MOVD %>235C,R43
67a2: 88 00 6a 2d  MOVD %>006A,R45
67a6: 8e f0 4e     CALL $F04E
67a9: 8c 6a 4c     BR $6A4C
67ac: 88 20 a7 2b  MOVD %>20A7,R43
67b0: 88 00 50 2d  MOVD %>0050,R45
67b4: 8e f0 4e     CALL $F04E
67b7: 8c 62 48     BR $6248
67ba: 22 02        MOV %>2,A
67bc: 8b 20 2f     STA @>202F
67bf: 73 3f 72     AND %>3F,R114
67c2: 8c 52 69     BR $5269
67c5: 8a 21 31     LDA @>2131
67c8: e6 24        JNZ $67EE
67ca: 88 23 80 2b  MOVD %>2380,R43
67ce: 88 00 24 2d  MOVD %>0024,R45
67d2: 8e f0 4e     CALL $F04E
67d5: 88 24 7d 2b  MOVD %>247D,R43
67d9: 88 00 c8 2d  MOVD %>00C8,R45
67dd: 8e f0 4e     CALL $F04E
67e0: 88 25 8d 2b  MOVD %>258D,R43
67e4: 88 00 48 2d  MOVD %>0048,R45
67e8: 8e f0 4e     CALL $F04E
67eb: 8c 72 1a     BR $721A
67ee: 88 23 a4 2b  MOVD %>23A4,R43
67f2: 88 00 24 2d  MOVD %>0024,R45
67f6: 8e f0 4e     CALL $F04E
67f9: 88 25 45 2b  MOVD %>2545,R43
67fd: 88 00 c8 2d  MOVD %>00C8,R45
6801: 8e f0 4e     CALL $F04E
6804: 88 25 d5 2b  MOVD %>25D5,R43
6808: 88 00 48 2d  MOVD %>0048,R45
680c: 8e f0 4e     CALL $F04E
680f: 8c 72 1a     BR $721A
6812: 88 26 07 2b  MOVD %>2607,R43
6816: 88 00 10 2d  MOVD %>0010,R45
681a: 8e f0 4e     CALL $F04E
681d: b5           CLR A
681e: 8b 26 11     STA @>2611
6821: 8a 26 10     LDA @>2610
6824: 23 04        AND %>4,A
6826: 8b 26 10     STA @>2610
6829: 8c 77 61     BR $7761
682c: 88 25 f7 2b  MOVD %>25F7,R43
6830: 88 00 1a 2d  MOVD %>001A,R45
6834: 8e f0 4e     CALL $F04E
6837: 8c 78 ac     BR $78AC
683a: 88 26 33 2b  MOVD %>2633,R43
683e: 88 00 1a 2d  MOVD %>001A,R45
6842: 8e f0 4e     CALL $F04E
6845: b5           CLR A
6846: 8b 26 35     STA @>2635
6849: 22 12        MOV %>12,A
684b: 8b 26 12     STA @>2612
684e: 8b 26 16     STA @>2616
6851: 22 31        MOV %>31,A
6853: 8b 26 13     STA @>2613
6856: 8b 26 17     STA @>2617
6859: 22 19        MOV %>19,A
685b: 8b 26 14     STA @>2614
685e: 8b 26 18     STA @>2618
6861: 22 87        MOV %>87,A
6863: 8b 26 15     STA @>2615
6866: 8b 26 19     STA @>2619
6869: 22 42        MOV %>42,A
686b: 8b 26 22     STA @>2622
686e: 8b 26 2a     STA @>262A
6871: 22 14        MOV %>14,A
6873: 8b 26 23     STA @>2623
6876: 8b 26 2b     STA @>262B
6879: 22 80        MOV %>80,A
687b: 8b 26 24     STA @>2624
687e: 8b 26 2c     STA @>262C
6881: 8c a9 32     BR $A932
6884: 98 47 2b     MOVD R71,R43
6887: b5           CLR A
6888: 9b 2b        STA *R43
688a: db 2b        DECD R43
688c: 9b 2b        STA *R43
688e: db 2b        DECD R43
6890: 9b 2b        STA *R43
6892: db 2b        DECD R43
6894: 9a 2b        LDA *R43
6896: 23 03        AND %>3,A
6898: 9b 2b        STA *R43
689a: db 2b        DECD R43
689c: 88 00 39 2d  MOVD %>0039,R45
68a0: 8e f0 4e     CALL $F04E
68a3: 7a 04 2b     SUB %>4,R43
68a6: 7b 00 2a     SBB %>0,R42
68a9: 88 00 08 2d  MOVD %>0008,R45
68ad: 8e f0 4e     CALL $F04E
68b0: 98 47 2b     MOVD R71,R43
68b3: 7a 23 2b     SUB %>23,R43
68b6: 7b 00 2a     SBB %>0,R42
68b9: 22 01        MOV %>1,A
68bb: 9b 2b        STA *R43
68bd: db 2b        DECD R43
68bf: 22 40        MOV %>40,A
68c1: 9b 2b        STA *R43
68c3: 7a 17 2b     SUB %>17,R43
68c6: 7b 00 2a     SBB %>0,R42
68c9: 22 01        MOV %>1,A
68cb: 9b 2b        STA *R43
68cd: db 2b        DECD R43
68cf: 22 41        MOV %>41,A
68d1: 9b 2b        STA *R43
68d3: 8c aa 21     BR $AA21
68d6: fb           TRAP 4
68d7: 8a 20 b8     LDA @>20B8
68da: e2 0b        JEQ $68E7
68dc: 2d 02        CMP %>2,A
68de: e2 0c        JEQ $68EC
68e0: 2d 04        CMP %>4,A
68e2: e2 0d        JEQ $68F1
68e4: 8c 42 45     BR $4245
68e7: 8a 21 30     LDA @>2130
68ea: e0 08        JMP $68F4
68ec: 8a 21 31     LDA @>2131
68ef: e0 03        JMP $68F4
68f1: 8a 21 32     LDA @>2132
68f4: b8           PUSH A
68f5: d5 32        CLR R50
68f7: 88 6a 45 75  MOVD %>6A45,R117
68fb: 8e 93 75     CALL $9375
68fe: b5           CLR A
68ff: c5           CLR B
6900: 8e 57 51     CALL $5751
6903: 72 05 33     MOV %>5,R51
6906: 8e 57 4a     CALL $574A
6909: 52 0c        MOV %>C,B
690b: aa 6a 2a     LDA @>6A2A(B)
690e: ab 00 47     STA @>0047(B)
6911: ca f8        DJNZ B,$690B
6913: b9           POP A
6914: c0           MOV A,B
6915: ce           RL B
6916: 38 00        ADD R0,B
6918: 28 41        ADD %>41,A
691a: 8b 00 4d     STA @>004D
691d: 22 20        MOV %>20,A
691f: ab 20 a8     STA @>20A8(B)
6922: 88 00 53 01  MOVD %>0053,R1
6926: 8e 56 9d     CALL $569D
6929: 8a 20 b8     LDA @>20B8
692c: 2d 02        CMP %>2,A
692e: e6 08        JNZ $6938
6930: 22 20        MOV %>20,A
6932: 8b 20 ae     STA @>20AE
6935: 8b 20 b1     STA @>20B1
6938: 8e 56 b2     CALL $56B2
693b: 8e 58 9a     CALL $589A
693e: 73 fe 32     AND %>FE,R50
6941: 8e 57 81     CALL $5781
6944: 8e 4d 9a     CALL $4D9A
6947: 7d 31 76     CMP %>31,R118
694a: e6 05        JNZ $6951
694c: 75 01 32     XOR %>1,R50
694f: e0 f0        JMP $6941
6951: 76 01 32 08  BTJO %>1,R50,$695D
6955: 7d 37 76     CMP %>37,R118
6958: e6 03        JNZ $695D
695a: 8c 41 5c     BR $415C
695d: 8e 60 9a     CALL $609A
6960: e6 dc        JNZ $693E
6962: 73 fe 32     AND %>FE,R50
6965: c2           DEC B
6966: 62           MOV B,A
6967: ce           RL B
6968: 38 00        ADD R0,B
696a: aa 20 a8     LDA @>20A8(B)
696d: 2d 20        CMP %>20,A
696f: e2 cd        JEQ $693E
6971: 2a 41        SUB %>41,A
6973: b8           PUSH A
6974: 8a 20 b8     LDA @>20B8
6977: e2 2c        JEQ $69A5
6979: 2d 02        CMP %>2,A
697b: e2 50        JEQ $69CD
697d: 88 26 9a 29  MOVD %>269A,R41
6981: 8a 21 32     LDA @>2132
6984: e2 08        JEQ $698E
6986: 78 4d 29     ADD %>4D,R41
6989: 79 00 28     ADC %>0,R40
698c: ba f8        DJNZ A,$6986
698e: 88 26 9a 2b  MOVD %>269A,R43
6992: b9           POP A
6993: e2 08        JEQ $699D
6995: 78 4d 2b     ADD %>4D,R43
6998: 79 00 2a     ADC %>0,R42
699b: ba f8        DJNZ A,$6995
699d: 88 00 4d 2d  MOVD %>004D,R45
69a1: f7           TRAP 8
69a2: 8c 41 5c     BR $415C
69a5: 88 21 85 29  MOVD %>2185,R41
69a9: 8a 21 30     LDA @>2130
69ac: e2 08        JEQ $69B6
69ae: 78 52 29     ADD %>52,R41
69b1: 79 00 28     ADC %>0,R40
69b4: ba f8        DJNZ A,$69AE
69b6: 88 21 85 2b  MOVD %>2185,R43
69ba: b9           POP A
69bb: e2 08        JEQ $69C5
69bd: 78 52 2b     ADD %>52,R43
69c0: 79 00 2a     ADC %>0,R42
69c3: ba f8        DJNZ A,$69BD
69c5: 88 00 52 2d  MOVD %>0052,R45
69c9: f7           TRAP 8
69ca: 8c 41 5c     BR $415C
69cd: b9           POP A
69ce: e2 2e        JEQ $69FE
69d0: b5           CLR A
69d1: 8b 23 a1     STA @>23A1
69d4: 88 24 7d 29  MOVD %>247D,R41
69d8: 88 25 45 2b  MOVD %>2545,R43
69dc: 88 00 c8 2d  MOVD %>00C8,R45
69e0: f7           TRAP 8
69e1: 88 25 8d 29  MOVD %>258D,R41
69e5: 88 25 d5 2b  MOVD %>25D5,R43
69e9: 88 00 48 2d  MOVD %>0048,R45
69ed: f7           TRAP 8
69ee: 88 23 80 29  MOVD %>2380,R41
69f2: 88 23 a4 2b  MOVD %>23A4,R43
69f6: 88 00 24 2d  MOVD %>0024,R45
69fa: f7           TRAP 8
69fb: 8c 41 5c     BR $415C
69fe: 8b 23 7d     STA @>237D
6a01: 88 25 45 29  MOVD %>2545,R41
6a05: 88 24 7d 2b  MOVD %>247D,R43
6a09: 88 00 c8 2d  MOVD %>00C8,R45
6a0d: f7           TRAP 8
6a0e: 88 25 d5 29  MOVD %>25D5,R41
6a12: 88 25 8d 2b  MOVD %>258D,R43
6a16: 88 00 48 2d  MOVD %>0048,R45
6a1a: f7           TRAP 8
6a1b: 88 23 a4 29  MOVD %>23A4,R41
6a1f: 88 23 80 2b  MOVD %>2380,R43
6a23: 88 00 24 2d  MOVD %>0024,R45
6a27: f7           TRAP 8
6a28: 8c 41 5c     BR $415C
6a2b: 43 4f 50     AND R79,R80
6a2e: 59 20        ADC %>20,B
6a30: 41           Illegal Opcode
6a31: 20           Illegal Opcode
6a32: 54 4f        OR %>4F,B
6a34: 20           Illegal Opcode
6a35: 75 20 41     XOR %>20,R65
6a38: 20           Illegal Opcode
6a39: 20           Illegal Opcode
6a3a: 42 20 20     MOV R32,R32
6a3d: 43 20 20     AND R32,R32
6a40: 44 20 20     OR R32,R32
6a43: 20           Illegal Opcode
6a44: 20           Illegal Opcode
6a45: 20           Illegal Opcode
6a46: 8e 6a 4c     CALL $6A4C
6a49: 8c 60 cd     BR $60CD
6a4c: fb           TRAP 4
6a4d: b5           CLR A
6a4e: 8b 20 b9     STA @>20B9
6a51: 22 03        MOV %>3,A
6a53: 8b 20 b8     STA @>20B8
6a56: 88 4c 50 01  MOVD %>4C50,R1
6a5a: 8b 20 ba     STA @>20BA
6a5d: 62           MOV B,A
6a5e: 8b 20 bb     STA @>20BB
6a61: 72 20 32     MOV %>20,R50
6a64: 88 6b 0e 75  MOVD %>6B0E,R117
6a68: 8e 93 75     CALL $9375
6a6b: 8e 56 b2     CALL $56B2
6a6e: 72 02 33     MOV %>2,R51
6a71: 8e 57 4a     CALL $574A
6a74: 88 22 fa 75  MOVD %>22FA,R117
6a78: f8           TRAP 7
6a79: 8e 51 1f     CALL $511F
6a7c: 72 05 33     MOV %>5,R51
6a7f: 8e 55 6b     CALL $556B
6a82: 88 23 02 75  MOVD %>2302,R117
6a86: f8           TRAP 7
6a87: 8e 51 1f     CALL $511F
6a8a: 72 04 33     MOV %>4,R51
6a8d: 8e 55 6b     CALL $556B
6a90: 88 23 0a 75  MOVD %>230A,R117
6a94: f8           TRAP 7
6a95: 88 00 00 67  MOVD %>0000,R103
6a99: 8e 52 17     CALL $5217
6a9c: 72 03 33     MOV %>3,R51
6a9f: 8e 55 6b     CALL $556B
6aa2: 8a 23 0a     LDA @>230A
6aa5: c0           MOV A,B
6aa6: 8a 23 5b     LDA @>235B
6aa9: 8e 57 51     CALL $5751
6aac: f9           TRAP 6
6aad: 8c 58 9a     BR $589A
6ab0: 8e 6c a6     CALL $6CA6
6ab3: 8c 53 87     BR $5387
6ab6: fb           TRAP 4
6ab7: b5           CLR A
6ab8: 8b 23 0a     STA @>230A
6abb: 88 22 fa 3d  MOVD %>22FA,R61
6abf: 8e 8b 30     CALL $8B30
6ac2: 8a 23 5b     LDA @>235B
6ac5: 24 10        OR %>10,A
6ac7: 8b 23 5b     STA @>235B
6aca: c5           CLR B
6acb: 8e 57 51     CALL $5751
6ace: 72 05 33     MOV %>5,R51
6ad1: 8e 51 1f     CALL $511F
6ad4: 8e 55 6b     CALL $556B
6ad7: f9           TRAP 6
6ad8: 8c 58 9a     BR $589A
6adb: fb           TRAP 4
6adc: b5           CLR A
6add: 8b 23 0a     STA @>230A
6ae0: 88 23 02 3d  MOVD %>2302,R61
6ae4: 8e 8b 30     CALL $8B30
6ae7: 8a 23 5b     LDA @>235B
6aea: 24 08        OR %>8,A
6aec: 8b 23 5b     STA @>235B
6aef: c5           CLR B
6af0: 8e 57 51     CALL $5751
6af3: 72 04 33     MOV %>4,R51
6af6: 8e 51 1f     CALL $511F
6af9: 8e 55 6b     CALL $556B
6afc: f9           TRAP 6
6afd: 8c 58 9a     BR $589A
6b00: 58 20        ADD %>20,B
6b02: 20           Illegal Opcode
6b03: 59 20        ADC %>20,B
6b05: 20           Illegal Opcode
6b06: 4e 20 20     DAC R32,R32
6b09: 77 2b 20 77  BTJZ %>2B,R32,$6B84
6b0d: 2d 20        CMP %>20,A
6b0f: 72 04 6f     MOV %>4,R111
6b12: fa           TRAP 5
6b13: fb           TRAP 4
6b14: b5           CLR A
6b15: 8b 23 0a     STA @>230A
6b18: 8a 23 5b     LDA @>235B
6b1b: c5           CLR B
6b1c: 8e 57 51     CALL $5751
6b1f: 8e 46 7c     CALL $467C
6b22: 88 23 0a 75  MOVD %>230A,R117
6b26: f6           TRAP 9
6b27: 88 00 00 4f  MOVD %>0000,R79
6b2b: ef           TRAP 16
6b2c: 7d 45 60     CMP %>45,R96
6b2f: e3 de        JHS $6B0F
6b31: f5           TRAP 10
6b32: 88 22 fa 75  MOVD %>22FA,R117
6b36: f8           TRAP 7
6b37: 8e f0 1e     CALL $F01E
6b3a: f1           TRAP 14
6b3b: 88 23 42 75  MOVD %>2342,R117
6b3f: f6           TRAP 9
6b40: ef           TRAP 16
6b41: 8e 47 ff     CALL $47FF
6b44: f5           TRAP 10
6b45: 88 23 02 75  MOVD %>2302,R117
6b49: f8           TRAP 7
6b4a: 8e f0 1e     CALL $F01E
6b4d: f1           TRAP 14
6b4e: 88 23 52 75  MOVD %>2352,R117
6b52: f6           TRAP 9
6b53: ef           TRAP 16
6b54: 8e 47 ff     CALL $47FF
6b57: f5           TRAP 10
6b58: 88 22 fa 75  MOVD %>22FA,R117
6b5c: f8           TRAP 7
6b5d: 88 23 02 75  MOVD %>2302,R117
6b61: f6           TRAP 9
6b62: f1           TRAP 14
6b63: 88 23 5a 75  MOVD %>235A,R117
6b67: f6           TRAP 9
6b68: ef           TRAP 16
6b69: 8e 47 ff     CALL $47FF
6b6c: f5           TRAP 10
6b6d: 88 22 fa 75  MOVD %>22FA,R117
6b71: f8           TRAP 7
6b72: 88 23 3a 75  MOVD %>233A,R117
6b76: f6           TRAP 9
6b77: ef           TRAP 16
6b78: 8e 47 ff     CALL $47FF
6b7b: f5           TRAP 10
6b7c: 88 23 02 75  MOVD %>2302,R117
6b80: f8           TRAP 7
6b81: 88 23 4a 75  MOVD %>234A,R117
6b85: f6           TRAP 9
6b86: ef           TRAP 16
6b87: 8e 47 ff     CALL $47FF
6b8a: fa           TRAP 5
6b8b: b5           CLR A
6b8c: 8b 23 5b     STA @>235B
6b8f: 88 23 4a 3d  MOVD %>234A,R61
6b93: 8e 8b 30     CALL $8B30
6b96: 8e f0 30     CALL $F030
6b99: 88 23 3a 3d  MOVD %>233A,R61
6b9d: 8e 8b 30     CALL $8B30
6ba0: 8e f0 30     CALL $F030
6ba3: 88 23 5a 3d  MOVD %>235A,R61
6ba7: 8e 8b 30     CALL $8B30
6baa: 8e f0 30     CALL $F030
6bad: 88 23 52 3d  MOVD %>2352,R61
6bb1: 8e 8b 30     CALL $8B30
6bb4: 8e f0 30     CALL $F030
6bb7: 88 23 42 3d  MOVD %>2342,R61
6bbb: 8e 8b 30     CALL $8B30
6bbe: 8e f0 30     CALL $F030
6bc1: 88 23 08 3d  MOVD %>2308,R61
6bc5: 52 06        MOV %>6,B
6bc7: 8e 8b 32     CALL $8B32
6bca: 22 04        MOV %>4,A
6bcc: 8b 23 0a     STA @>230A
6bcf: 88 22 fa 75  MOVD %>22FA,R117
6bd3: f6           TRAP 9
6bd4: 8e 46 7c     CALL $467C
6bd7: ef           TRAP 16
6bd8: 8e 47 f4     CALL $47F4
6bdb: 8c 6a 90     BR $6A90
6bde: 8c 66 ce     BR $66CE
6be1: fb           TRAP 4
6be2: b5           CLR A
6be3: 8b 23 0a     STA @>230A
6be6: 8a 23 5b     LDA @>235B
6be9: c5           CLR B
6bea: 8e 57 51     CALL $5751
6bed: 88 23 0a 75  MOVD %>230A,R117
6bf1: f6           TRAP 9
6bf2: 88 00 00 4f  MOVD %>0000,R79
6bf6: 12 49        MOV R73,A
6bf8: e2 e4        JEQ $6BDE
6bfa: 8e 46 7c     CALL $467C
6bfd: f0           TRAP 15
6bfe: 12 61        MOV R97,A
6c00: e2 dc        JEQ $6BDE
6c02: f5           TRAP 10
6c03: 88 22 fa 75  MOVD %>22FA,R117
6c07: f8           TRAP 7
6c08: 8e f0 1e     CALL $F01E
6c0b: f1           TRAP 14
6c0c: 88 23 42 75  MOVD %>2342,R117
6c10: f6           TRAP 9
6c11: f0           TRAP 15
6c12: 8e 47 ff     CALL $47FF
6c15: f5           TRAP 10
6c16: 88 23 02 75  MOVD %>2302,R117
6c1a: f8           TRAP 7
6c1b: 8e f0 1e     CALL $F01E
6c1e: f1           TRAP 14
6c1f: 88 23 52 75  MOVD %>2352,R117
6c23: f6           TRAP 9
6c24: f0           TRAP 15
6c25: 8e 47 ff     CALL $47FF
6c28: f5           TRAP 10
6c29: 88 22 fa 75  MOVD %>22FA,R117
6c2d: f8           TRAP 7
6c2e: 88 23 02 75  MOVD %>2302,R117
6c32: f6           TRAP 9
6c33: f1           TRAP 14
6c34: 88 23 5a 75  MOVD %>235A,R117
6c38: f6           TRAP 9
6c39: f0           TRAP 15
6c3a: 8e 47 ff     CALL $47FF
6c3d: f5           TRAP 10
6c3e: 88 22 fa 75  MOVD %>22FA,R117
6c42: f8           TRAP 7
6c43: 88 23 3a 75  MOVD %>233A,R117
6c47: f6           TRAP 9
6c48: f0           TRAP 15
6c49: 8e 47 ff     CALL $47FF
6c4c: f5           TRAP 10
6c4d: 88 23 02 75  MOVD %>2302,R117
6c51: f8           TRAP 7
6c52: 88 23 4a 75  MOVD %>234A,R117
6c56: f6           TRAP 9
6c57: f0           TRAP 15
6c58: 8e 47 ff     CALL $47FF
6c5b: fa           TRAP 5
6c5c: b5           CLR A
6c5d: 8b 23 5b     STA @>235B
6c60: 88 23 4a 3d  MOVD %>234A,R61
6c64: 8e 8b 30     CALL $8B30
6c67: 8e f0 30     CALL $F030
6c6a: 88 23 3a 3d  MOVD %>233A,R61
6c6e: 8e 8b 30     CALL $8B30
6c71: 8e f0 30     CALL $F030
6c74: 88 23 5a 3d  MOVD %>235A,R61
6c78: 8e 8b 30     CALL $8B30
6c7b: 8e f0 30     CALL $F030
6c7e: 88 23 52 3d  MOVD %>2352,R61
6c82: 8e 8b 30     CALL $8B30
6c85: 8e f0 30     CALL $F030
6c88: 88 23 42 3d  MOVD %>2342,R61
6c8c: 8e 8b 30     CALL $8B30
6c8f: 8e f0 30     CALL $F030
6c92: 88 23 08 3d  MOVD %>2308,R61
6c96: 52 06        MOV %>6,B
6c98: 8e 8b 32     CALL $8B32
6c9b: 22 04        MOV %>4,A
6c9d: 8b 23 0a     STA @>230A
6ca0: 8c 6a 90     BR $6A90
6ca3: 8c 6d 6a     BR $6D6A
6ca6: fb           TRAP 4
6ca7: 88 4c 6e 01  MOVD %>4C6E,R1
6cab: 8b 20 ba     STA @>20BA
6cae: 62           MOV B,A
6caf: 8b 20 bb     STA @>20BB
6cb2: 22 01        MOV %>1,A
6cb4: 8b 20 b9     STA @>20B9
6cb7: 72 a2 32     MOV %>A2,R50
6cba: 88 6d be 75  MOVD %>6DBE,R117
6cbe: 8e 93 75     CALL $9375
6cc1: 8e 56 b2     CALL $56B2
6cc4: 72 05 33     MOV %>5,R51
6cc7: 8e 57 4a     CALL $574A
6cca: b5           CLR A
6ccb: 8b 23 09     STA @>2309
6cce: c5           CLR B
6ccf: 8e 57 51     CALL $5751
6cd2: d5 3f        CLR R63
6cd4: d5 41        CLR R65
6cd6: 88 23 0a 75  MOVD %>230A,R117
6cda: f8           TRAP 7
6cdb: 88 00 00 67  MOVD %>0000,R103
6cdf: 12 60        MOV R96,A
6ce1: e1 c0        JN $6CA3
6ce3: 12 61        MOV R97,A
6ce5: e2 bc        JEQ $6CA3
6ce7: 88 23 3a 75  MOVD %>233A,R117
6ceb: f6           TRAP 9
6cec: ee           TRAP 17
6ced: 22 10        MOV %>10,A
6cef: 8e 6d 71     CALL $6D71
6cf2: 88 23 12 3d  MOVD %>2312,R61
6cf6: 8e 8b 30     CALL $8B30
6cf9: 8e 51 1f     CALL $511F
6cfc: 72 05 33     MOV %>5,R51
6cff: 8e 55 6b     CALL $556B
6d02: 8e 6d 8d     CALL $6D8D
6d05: d8 6f        PUSH R111
6d07: f5           TRAP 10
6d08: 8e f0 1e     CALL $F01E
6d0b: 88 23 0a 75  MOVD %>230A,R117
6d0f: f8           TRAP 7
6d10: 88 00 00 67  MOVD %>0000,R103
6d14: ee           TRAP 17
6d15: 8e 45 49     CALL $4549
6d18: 22 08        MOV %>8,A
6d1a: 8e 6d 71     CALL $6D71
6d1d: 88 23 1a 3d  MOVD %>231A,R61
6d21: 8e 8b 30     CALL $8B30
6d24: 8e 51 1f     CALL $511F
6d27: 72 04 33     MOV %>4,R51
6d2a: 8e 55 6b     CALL $556B
6d2d: b5           CLR A
6d2e: 32 41        MOV R65,B
6d30: 8e 57 51     CALL $5751
6d33: 88 23 0a 75  MOVD %>230A,R117
6d37: f6           TRAP 9
6d38: 88 00 00 4f  MOVD %>0000,R79
6d3c: 8e 46 7c     CALL $467C
6d3f: f0           TRAP 15
6d40: f4           TRAP 11
6d41: d9 6f        POP R111
6d43: 12 60        MOV R96,A
6d45: e1 23        JN $6D6A
6d47: 12 61        MOV R97,A
6d49: e2 1f        JEQ $6D6A
6d4b: ee           TRAP 17
6d4c: 8e 45 49     CALL $4549
6d4f: 22 04        MOV %>4,A
6d51: 8e 6d 71     CALL $6D71
6d54: 88 23 22 3d  MOVD %>2322,R61
6d58: 8e 8b 30     CALL $8B30
6d5b: 8e 51 1f     CALL $511F
6d5e: 72 03 33     MOV %>3,R51
6d61: 8e 55 6b     CALL $556B
6d64: b5           CLR A
6d65: 32 41        MOV R65,B
6d67: 8e 57 51     CALL $5751
6d6a: 42 3f 6f     MOV R63,R111
6d6d: f9           TRAP 6
6d6e: 8c 58 9a     BR $589A
6d71: b8           PUSH A
6d72: 8e 48 08     CALL $4808
6d75: 8a 23 09     LDA @>2309
6d78: c9           POP B
6d79: 64           OR B,A
6d7a: 8b 23 09     STA @>2309
6d7d: 12 6f        MOV R111,A
6d7f: e2 06        JEQ $6D87
6d81: d0 3f        MOV A,R63
6d83: 8e 48 2c     CALL $482C
6d86: c5           CLR B
6d87: 44 01 41     OR R1,R65
6d8a: d5 6f        CLR R111
6d8c: 0a           RETS
6d8d: 88 23 3a 75  MOVD %>233A,R117
6d91: f8           TRAP 7
6d92: 8e f0 1e     CALL $F01E
6d95: f1           TRAP 14
6d96: 8e f0 1e     CALL $F01E
6d99: 88 23 0a 75  MOVD %>230A,R117
6d9d: f8           TRAP 7
6d9e: 88 00 00 67  MOVD %>0000,R103
6da2: ee           TRAP 17
6da3: 88 23 42 75  MOVD %>2342,R117
6da7: f6           TRAP 9
6da8: f0           TRAP 15
6da9: 0a           RETS
6daa: 8e 6d c2     CALL $6DC2
6dad: 8c 53 87     BR $5387
6db0: 58 20        ADD %>20,B
6db2: 20           Illegal Opcode
6db3: 73 58 20     AND %>58,R32
6db6: 53 58        AND %>58,B
6db8: 20           Illegal Opcode
6db9: 20           Illegal Opcode
6dba: 20           Illegal Opcode
6dbb: 20           Illegal Opcode
6dbc: 20           Illegal Opcode
6dbd: 20           Illegal Opcode
6dbe: 20           Illegal Opcode
6dbf: 8c 6e 86     BR $6E86
6dc2: fb           TRAP 4
6dc3: 88 4c 8c 01  MOVD %>4C8C,R1
6dc7: 8b 20 ba     STA @>20BA
6dca: 62           MOV B,A
6dcb: 8b 20 bb     STA @>20BB
6dce: 22 02        MOV %>2,A
6dd0: 8b 20 b9     STA @>20B9
6dd3: 72 a2 32     MOV %>A2,R50
6dd6: 88 6e c4 75  MOVD %>6EC4,R117
6dda: 8e 93 75     CALL $9375
6ddd: 8e 56 b2     CALL $56B2
6de0: 72 05 33     MOV %>5,R51
6de3: 8e 57 4a     CALL $574A
6de6: b5           CLR A
6de7: 8b 23 09     STA @>2309
6dea: c5           CLR B
6deb: 8e 57 51     CALL $5751
6dee: d5 3f        CLR R63
6df0: d5 41        CLR R65
6df2: 88 23 0a 75  MOVD %>230A,R117
6df6: f8           TRAP 7
6df7: 88 00 00 67  MOVD %>0000,R103
6dfb: 12 60        MOV R96,A
6dfd: e1 c0        JN $6DBF
6dff: 12 61        MOV R97,A
6e01: e2 bc        JEQ $6DBF
6e03: 88 23 4a 75  MOVD %>234A,R117
6e07: f6           TRAP 9
6e08: ee           TRAP 17
6e09: 22 10        MOV %>10,A
6e0b: 8e 6d 71     CALL $6D71
6e0e: 88 23 12 3d  MOVD %>2312,R61
6e12: 8e 8b 30     CALL $8B30
6e15: 8e 51 1f     CALL $511F
6e18: 72 05 33     MOV %>5,R51
6e1b: 8e 55 6b     CALL $556B
6e1e: 8e 6e 8d     CALL $6E8D
6e21: d8 6f        PUSH R111
6e23: f5           TRAP 10
6e24: 8e f0 1e     CALL $F01E
6e27: 88 23 0a 75  MOVD %>230A,R117
6e2b: f8           TRAP 7
6e2c: 88 00 00 67  MOVD %>0000,R103
6e30: ee           TRAP 17
6e31: 8e 45 49     CALL $4549
6e34: 22 08        MOV %>8,A
6e36: 8e 6d 71     CALL $6D71
6e39: 88 23 1a 3d  MOVD %>231A,R61
6e3d: 8e 8b 30     CALL $8B30
6e40: 8e 51 1f     CALL $511F
6e43: 72 04 33     MOV %>4,R51
6e46: 8e 55 6b     CALL $556B
6e49: b5           CLR A
6e4a: 32 41        MOV R65,B
6e4c: 8e 57 51     CALL $5751
6e4f: 88 23 0a 75  MOVD %>230A,R117
6e53: f6           TRAP 9
6e54: 88 00 00 4f  MOVD %>0000,R79
6e58: 8e 46 7c     CALL $467C
6e5b: f0           TRAP 15
6e5c: f4           TRAP 11
6e5d: d9 6f        POP R111
6e5f: 12 60        MOV R96,A
6e61: e1 23        JN $6E86
6e63: 12 61        MOV R97,A
6e65: e2 1f        JEQ $6E86
6e67: ee           TRAP 17
6e68: 8e 45 49     CALL $4549
6e6b: 22 04        MOV %>4,A
6e6d: 8e 6d 71     CALL $6D71
6e70: 88 23 22 3d  MOVD %>2322,R61
6e74: 8e 8b 30     CALL $8B30
6e77: 8e 51 1f     CALL $511F
6e7a: 72 03 33     MOV %>3,R51
6e7d: 8e 55 6b     CALL $556B
6e80: b5           CLR A
6e81: 32 41        MOV R65,B
6e83: 8e 57 51     CALL $5751
6e86: 42 3f 6f     MOV R63,R111
6e89: f9           TRAP 6
6e8a: 8c 58 9a     BR $589A
6e8d: 88 23 4a 75  MOVD %>234A,R117
6e91: f8           TRAP 7
6e92: 8e f0 1e     CALL $F01E
6e95: f1           TRAP 14
6e96: 8e f0 1e     CALL $F01E
6e99: 88 23 0a 75  MOVD %>230A,R117
6e9d: f8           TRAP 7
6e9e: 88 00 00 67  MOVD %>0000,R103
6ea2: ee           TRAP 17
6ea3: 88 23 52 75  MOVD %>2352,R117
6ea7: f6           TRAP 9
6ea8: f0           TRAP 15
6ea9: 0a           RETS
6eaa: 8e 6e c5     CALL $6EC5
6ead: 8c 53 87     BR $5387
6eb0: 8e 6c a6     CALL $6CA6
6eb3: 8c 54 62     BR $5462
6eb6: 59 20        ADC %>20,B
6eb8: 20           Illegal Opcode
6eb9: 73 59 20     AND %>59,R32
6ebc: 53 59        AND %>59,B
6ebe: 20           Illegal Opcode
6ebf: 20           Illegal Opcode
6ec0: 20           Illegal Opcode
6ec1: 20           Illegal Opcode
6ec2: 20           Illegal Opcode
6ec3: 20           Illegal Opcode
6ec4: 20           Illegal Opcode
6ec5: fb           TRAP 4
6ec6: 88 4c aa 01  MOVD %>4CAA,R1
6eca: 8b 20 ba     STA @>20BA
6ecd: 62           MOV B,A
6ece: 8b 20 bb     STA @>20BB
6ed1: 22 03        MOV %>3,A
6ed3: 8b 20 b9     STA @>20B9
6ed6: 72 22 32     MOV %>22,R50
6ed9: 88 71 58 75  MOVD %>7158,R117
6edd: 8e 93 75     CALL $9375
6ee0: 8e 56 b2     CALL $56B2
6ee3: 72 05 33     MOV %>5,R51
6ee6: 8e 57 4a     CALL $574A
6ee9: b5           CLR A
6eea: 8b 23 09     STA @>2309
6eed: d5 3f        CLR R63
6eef: d5 41        CLR R65
6ef1: 8a 23 5c     LDA @>235C
6ef4: 23 03        AND %>3,A
6ef6: 8b 23 5c     STA @>235C
6ef9: 88 23 0a 75  MOVD %>230A,R117
6efd: f8           TRAP 7
6efe: 88 00 00 67  MOVD %>0000,R103
6f02: 8e 47 e0     CALL $47E0
6f05: 88 40 01 49  MOVD %>4001,R73
6f09: 8e f0 39     CALL $F039
6f0c: e3 26        JHS $6F34
6f0e: 88 23 3a 75  MOVD %>233A,R117
6f12: f6           TRAP 9
6f13: 88 23 4a 75  MOVD %>234A,R117
6f17: f8           TRAP 7
6f18: f1           TRAP 14
6f19: 8e f0 1e     CALL $F01E
6f1c: 88 23 0a 75  MOVD %>230A,R117
6f20: f8           TRAP 7
6f21: 88 00 00 67  MOVD %>0000,R103
6f25: ee           TRAP 17
6f26: 88 23 5a 75  MOVD %>235A,R117
6f2a: f6           TRAP 9
6f2b: f0           TRAP 15
6f2c: f5           TRAP 10
6f2d: 8e 6d 8d     CALL $6D8D
6f30: 12 61        MOV R97,A
6f32: e6 11        JNZ $6F45
6f34: b5           CLR A
6f35: 32 41        MOV R65,B
6f37: 8e 57 51     CALL $5751
6f3a: 42 3f 6f     MOV R63,R111
6f3d: 88 20 2f 71  MOVD %>202F,R113
6f41: f9           TRAP 6
6f42: 8c 58 9a     BR $589A
6f45: f4           TRAP 11
6f46: 8e f0 51     CALL $F051
6f49: f5           TRAP 10
6f4a: d8 6f        PUSH R111
6f4c: ee           TRAP 17
6f4d: d8 6f        PUSH R111
6f4f: 22 08        MOV %>8,A
6f51: 8e 6d 71     CALL $6D71
6f54: 88 23 1a 3d  MOVD %>231A,R61
6f58: 8e 8b 30     CALL $8B30
6f5b: 8e 51 1f     CALL $511F
6f5e: 72 04 33     MOV %>4,R51
6f61: 8e 55 6b     CALL $556B
6f64: 88 23 3a 75  MOVD %>233A,R117
6f68: f6           TRAP 9
6f69: 88 23 1a 75  MOVD %>231A,R117
6f6d: f8           TRAP 7
6f6e: d9 6f        POP R111
6f70: f1           TRAP 14
6f71: 88 23 4a 75  MOVD %>234A,R117
6f75: f6           TRAP 9
6f76: f0           TRAP 15
6f77: 8e f0 1e     CALL $F01E
6f7a: 88 23 0a 75  MOVD %>230A,R117
6f7e: f8           TRAP 7
6f7f: 88 00 00 67  MOVD %>0000,R103
6f83: ee           TRAP 17
6f84: 22 10        MOV %>10,A
6f86: 8e 6d 71     CALL $6D71
6f89: 88 23 12 3d  MOVD %>2312,R61
6f8d: 8e 8b 30     CALL $8B30
6f90: 8e 51 1f     CALL $511F
6f93: 72 05 33     MOV %>5,R51
6f96: 8e 55 6b     CALL $556B
6f99: d9 6f        POP R111
6f9b: 8e 6e 8d     CALL $6E8D
6f9e: 12 61        MOV R97,A
6fa0: e2 56        JEQ $6FF8
6fa2: 8e 45 49     CALL $4549
6fa5: f4           TRAP 11
6fa6: f5           TRAP 10
6fa7: 8e f0 1b     CALL $F01B
6faa: 8e 45 49     CALL $4549
6fad: f4           TRAP 11
6fae: f1           TRAP 14
6faf: f4           TRAP 11
6fb0: ee           TRAP 17
6fb1: 22 04        MOV %>4,A
6fb3: 8e 6d 71     CALL $6D71
6fb6: 88 23 22 3d  MOVD %>2322,R61
6fba: 8e 8b 30     CALL $8B30
6fbd: 8e 51 1f     CALL $511F
6fc0: 72 03 33     MOV %>3,R51
6fc3: 8e 55 6b     CALL $556B
6fc6: 8a 23 5c     LDA @>235C
6fc9: 14 41        OR R65,A
6fcb: 8b 23 5c     STA @>235C
6fce: 77 18 41 2c  BTJZ %>18,R65,$6FFE
6fd2: 88 71 49 75  MOVD %>7149,R117
6fd6: 8e 93 75     CALL $9375
6fd9: 8e 56 b2     CALL $56B2
6fdc: 8a 23 5c     LDA @>235C
6fdf: 26 01 4f     BTJO %>1,A,$7031
6fe2: 27 02 1c     BTJZ %>2,A,$7001
6fe5: 88 23 32 75  MOVD %>2332,R117
6fe9: f8           TRAP 7
6fea: 8e 51 1f     CALL $511F
6fed: 72 01 33     MOV %>1,R51
6ff0: 8e 55 6b     CALL $556B
6ff3: 8e 70 ed     CALL $70ED
6ff6: e0 32        JMP $702A
6ff8: 88 20 2f 71  MOVD %>202F,R113
6ffc: e0 c8        JMP $6FC6
6ffe: 8c 6f 34     BR $6F34
7001: c0           MOV A,B
7002: b5           CLR A
7003: 8e 57 51     CALL $5751
7006: 8a 23 09     LDA @>2309
7009: 24 03        OR %>3,A
700b: 8b 23 09     STA @>2309
700e: 88 23 32 75  MOVD %>2332,R117
7012: f8           TRAP 7
7013: 8e 51 1f     CALL $511F
7016: 72 01 33     MOV %>1,R51
7019: 8e 55 6b     CALL $556B
701c: 88 23 2a 75  MOVD %>232A,R117
7020: f8           TRAP 7
7021: 8e 51 1f     CALL $511F
7024: 72 02 33     MOV %>2,R51
7027: 8e 55 6b     CALL $556B
702a: 42 3f 6f     MOV R63,R111
702d: f9           TRAP 6
702e: 8c 58 9a     BR $589A
7031: 8e 70 75     CALL $7075
7034: 88 23 2a 75  MOVD %>232A,R117
7038: f8           TRAP 7
7039: 8e 51 1f     CALL $511F
703c: 72 02 33     MOV %>2,R51
703f: 8e 55 6b     CALL $556B
7042: e0 e6        JMP $702A
7044: 8e 6d c2     CALL $6DC2
7047: 8c 54 62     BR $5462
704a: 8a 23 5c     LDA @>235C
704d: 27 18 67     BTJZ %>18,A,$70B7
7050: fb           TRAP 4
7051: 88 23 2a 3d  MOVD %>232A,R61
7055: 8e 8b 30     CALL $8B30
7058: 72 02 33     MOV %>2,R51
705b: 8e 51 1f     CALL $511F
705e: 8e 55 6b     CALL $556B
7061: d5 3f        CLR R63
7063: 8e 70 75     CALL $7075
7066: 42 3f 6f     MOV R63,R111
7069: 88 23 32 75  MOVD %>2332,R117
706d: f8           TRAP 7
706e: 8e 47 f4     CALL $47F4
7071: f9           TRAP 6
7072: 8c 58 9a     BR $589A
7075: 8a 23 5c     LDA @>235C
7078: 23 fc        AND %>FC,A
707a: d0 41        MOV A,R65
707c: 24 01        OR %>1,A
707e: 8b 23 5c     STA @>235C
7081: 8a 23 09     LDA @>2309
7084: 23 fe        AND %>FE,A
7086: 24 02        OR %>2,A
7088: 8b 23 09     STA @>2309
708b: 88 23 1a 75  MOVD %>231A,R117
708f: f6           TRAP 9
7090: 88 23 2a 75  MOVD %>232A,R117
7094: f8           TRAP 7
7095: f1           TRAP 14
7096: 88 23 12 75  MOVD %>2312,R117
709a: f6           TRAP 9
709b: ef           TRAP 16
709c: 22 01        MOV %>1,A
709e: 8e 6d 71     CALL $6D71
70a1: 88 23 32 3d  MOVD %>2332,R61
70a5: 8e 8b 30     CALL $8B30
70a8: b5           CLR A
70a9: 32 41        MOV R65,B
70ab: 8e 57 51     CALL $5751
70ae: 8e 51 1f     CALL $511F
70b1: 72 01 33     MOV %>1,R51
70b4: 8c 55 6b     BR $556B
70b7: 0a           RETS
70b8: 72 05 6f     MOV %>5,R111
70bb: fa           TRAP 5
70bc: 8a 23 5c     LDA @>235C
70bf: 27 18 f5     BTJZ %>18,A,$70B7
70c2: fb           TRAP 4
70c3: 88 23 32 3d  MOVD %>2332,R61
70c7: 8e 8b 30     CALL $8B30
70ca: 72 02 33     MOV %>2,R51
70cd: 8e 57 4a     CALL $574A
70d0: 72 01 33     MOV %>1,R51
70d3: 8e 51 1f     CALL $511F
70d6: 8e 55 6b     CALL $556B
70d9: d5 3f        CLR R63
70db: 8e 70 ed     CALL $70ED
70de: 42 3f 6f     MOV R63,R111
70e1: 88 23 2a 75  MOVD %>232A,R117
70e5: f8           TRAP 7
70e6: 8e 47 f4     CALL $47F4
70e9: f9           TRAP 6
70ea: 8c 58 9a     BR $589A
70ed: 8a 23 5c     LDA @>235C
70f0: 23 fc        AND %>FC,A
70f2: d0 41        MOV A,R65
70f4: c0           MOV A,B
70f5: 24 02        OR %>2,A
70f7: 8b 23 5c     STA @>235C
70fa: b5           CLR A
70fb: 8e 57 51     CALL $5751
70fe: 8a 23 09     LDA @>2309
7101: 23 fd        AND %>FD,A
7103: 24 01        OR %>1,A
7105: 8b 23 09     STA @>2309
7108: 88 23 32 75  MOVD %>2332,R117
710c: f6           TRAP 9
710d: 88 23 12 75  MOVD %>2312,R117
7111: f8           TRAP 7
7112: f0           TRAP 15
7113: 88 23 1a 75  MOVD %>231A,R117
7117: f6           TRAP 9
7118: 12 49        MOV R73,A
711a: e2 9c        JEQ $70B8
711c: 8e f0 1b     CALL $F01B
711f: ee           TRAP 17
7120: 22 02        MOV %>2,A
7122: 8e 6d 71     CALL $6D71
7125: 88 23 2a 3d  MOVD %>232A,R61
7129: 8e 8b 30     CALL $8B30
712c: 8e 51 1f     CALL $511F
712f: 72 02 33     MOV %>2,R51
7132: 8e 55 6b     CALL $556B
7135: 32 41        MOV R65,B
7137: b5           CLR A
7138: 8c 57 51     BR $5751
713b: 49 4e 54     ADC R78,R84
713e: 53 4c        AND %>4C,B
7140: 50           Illegal Opcode
7141: 43 4f 52     AND R79,R82
7144: 58 27        ADD %>27,B
7146: 20           Illegal Opcode
7147: 59 27        ADC %>27,B
7149: 20           Illegal Opcode
714a: 49 4e 54     ADC R78,R84
714d: 53 4c        AND %>4C,B
714f: 50           Illegal Opcode
7150: 43 4f 52     AND R79,R82
7153: 20           Illegal Opcode
7154: 20           Illegal Opcode
7155: 20           Illegal Opcode
7156: 20           Illegal Opcode
7157: 20           Illegal Opcode
7158: 20           Illegal Opcode
7159: fb           TRAP 4
715a: 88 4c c8 01  MOVD %>4CC8,R1
715e: 8b 20 ba     STA @>20BA
7161: 62           MOV B,A
7162: 8b 20 bb     STA @>20BB
7165: 22 04        MOV %>4,A
7167: 8b 20 b9     STA @>20B9
716a: 72 02 32     MOV %>2,R50
716d: 88 71 ea 75  MOVD %>71EA,R117
7171: 8e 93 75     CALL $9375
7174: 8e 56 b2     CALL $56B2
7177: 8a 23 04     LDA @>2304
717a: e2 50        JEQ $71CC
717c: 88 23 3a 75  MOVD %>233A,R117
7180: f8           TRAP 7
7181: 8e 51 1f     CALL $511F
7184: 72 05 33     MOV %>5,R51
7187: 8e 55 6b     CALL $556B
718a: 88 23 42 75  MOVD %>2342,R117
718e: f8           TRAP 7
718f: 8e 51 1f     CALL $511F
7192: 72 04 33     MOV %>4,R51
7195: 8e 55 6b     CALL $556B
7198: 88 23 4a 75  MOVD %>234A,R117
719c: f8           TRAP 7
719d: 8e 51 1f     CALL $511F
71a0: 72 03 33     MOV %>3,R51
71a3: 8e 55 6b     CALL $556B
71a6: 88 23 52 75  MOVD %>2352,R117
71aa: f8           TRAP 7
71ab: 8e 51 1f     CALL $511F
71ae: 72 02 33     MOV %>2,R51
71b1: 8e 55 6b     CALL $556B
71b4: 88 23 5a 75  MOVD %>235A,R117
71b8: f8           TRAP 7
71b9: 8e 51 1f     CALL $511F
71bc: 72 01 33     MOV %>1,R51
71bf: 8e 55 6b     CALL $556B
71c2: b5           CLR A
71c3: 52 1f        MOV %>1F,B
71c5: 8e 57 51     CALL $5751
71c8: f9           TRAP 6
71c9: 8c 58 9a     BR $589A
71cc: 72 05 33     MOV %>5,R51
71cf: 8e 57 4a     CALL $574A
71d2: b5           CLR A
71d3: c5           CLR B
71d4: e0 ef        JMP $71C5
71d6: 8e 6e c5     CALL $6EC5
71d9: 8c 54 62     BR $5462
71dc: 77 58 20 77  BTJZ %>58,R32,$7257
71e0: 58 32        ADD %>32,B
71e2: 77 59 20 77  BTJZ %>59,R32,$725D
71e6: 59 32        ADC %>32,B
71e8: 77 58 59 8e  BTJZ %>58,R89,$717A
71ec: 72 1a 8c     MOV %>1A,R140
71ef: 60           Illegal Opcode
71f0: cd           RRC B
71f1: 8a 23 b5     LDA @>23B5
71f4: b2           DEC A
71f5: 8b 23 b5     STA @>23B5
71f8: e2 20        JEQ $721A
71fa: b5           CLR A
71fb: 8b 23 7e     STA @>237E
71fe: 8b 23 a2     STA @>23A2
7201: 8e 75 02     CALL $7502
7204: 8c 54 62     BR $5462
7207: 0a           RETS
7208: 8a 21 31     LDA @>2131
720b: e6 fa        JNZ $7207
720d: 22 01        MOV %>1,A
720f: e0 06        JMP $7217
7211: 8a 21 31     LDA @>2131
7214: e2 f1        JEQ $7207
7216: b5           CLR A
7217: 8b 21 31     STA @>2131
721a: fb           TRAP 4
721b: b5           CLR A
721c: 8b 20 b9     STA @>20B9
721f: 8b 23 b5     STA @>23B5
7222: 22 02        MOV %>2,A
7224: 8b 20 b8     STA @>20B8
7227: 88 4c 14 01  MOVD %>4C14,R1
722b: 8b 20 ba     STA @>20BA
722e: 62           MOV B,A
722f: 8b 20 bb     STA @>20BB
7232: 72 20 32     MOV %>20,R50
7235: 88 74 24 75  MOVD %>7424,R117
7239: 8e 93 75     CALL $9375
723c: 8e 56 b2     CALL $56B2
723f: 88 23 bd 75  MOVD %>23BD,R117
7243: 8a 21 31     LDA @>2131
7246: e2 04        JEQ $724C
7248: 88 24 85 75  MOVD %>2485,R117
724c: f8           TRAP 7
724d: 8e 51 1f     CALL $511F
7250: 72 05 33     MOV %>5,R51
7253: 8e 55 6b     CALL $556B
7256: 88 23 7c 75  MOVD %>237C,R117
725a: 8a 21 31     LDA @>2131
725d: e2 04        JEQ $7263
725f: 88 23 a0 75  MOVD %>23A0,R117
7263: f8           TRAP 7
7264: 8e 51 1f     CALL $511F
7267: 72 04 33     MOV %>4,R51
726a: 8e 55 6b     CALL $556B
726d: 88 23 6c 75  MOVD %>236C,R117
7271: 8a 21 31     LDA @>2131
7274: e2 04        JEQ $727A
7276: 88 23 90 75  MOVD %>2390,R117
727a: f8           TRAP 7
727b: 8e 51 1f     CALL $511F
727e: 72 03 33     MOV %>3,R51
7281: 8e 55 6b     CALL $556B
7284: 88 23 74 75  MOVD %>2374,R117
7288: 8a 21 31     LDA @>2131
728b: e2 04        JEQ $7291
728d: 88 23 98 75  MOVD %>2398,R117
7291: f8           TRAP 7
7292: 8e 51 1f     CALL $511F
7295: 72 02 33     MOV %>2,R51
7298: 8e 55 6b     CALL $556B
729b: 88 23 64 75  MOVD %>2364,R117
729f: 8a 21 31     LDA @>2131
72a2: e2 04        JEQ $72A8
72a4: 88 23 88 75  MOVD %>2388,R117
72a8: f8           TRAP 7
72a9: 8e 51 1f     CALL $511F
72ac: 72 01 33     MOV %>1,R51
72af: 8e 55 6b     CALL $556B
72b2: c5           CLR B
72b3: 8a 21 31     LDA @>2131
72b6: e2 02        JEQ $72BA
72b8: 52 24        MOV %>24,B
72ba: aa 23 7f     LDA @>237F(B)
72bd: b8           PUSH A
72be: aa 23 80     LDA @>2380(B)
72c1: c0           MOV A,B
72c2: b9           POP A
72c3: 8e 57 51     CALL $5751
72c6: f9           TRAP 6
72c7: 8c 58 9a     BR $589A
72ca: 8a 23 7d     LDA @>237D
72cd: c0           MOV A,B
72ce: 8a 21 31     LDA @>2131
72d1: e2 04        JEQ $72D7
72d3: 8a 23 a1     LDA @>23A1
72d6: c0           MOV A,B
72d7: 8a 23 b5     LDA @>23B5
72da: 2d 18        CMP %>18,A
72dc: e3 15        JHS $72F3
72de: c3           INC B
72df: 6d           CMP B,A
72e0: e3 11        JHS $72F3
72e2: b3           INC A
72e3: 8b 23 b5     STA @>23B5
72e6: b5           CLR A
72e7: 8b 23 7e     STA @>237E
72ea: 8b 23 a2     STA @>23A2
72ed: 8e 75 02     CALL $7502
72f0: 8c 53 87     BR $5387
72f3: 0a           RETS
72f4: 76 40 32 33  BTJO %>40,R50,$732B
72f8: fb           TRAP 4
72f9: 88 23 bd 3d  MOVD %>23BD,R61
72fd: c5           CLR B
72fe: 8a 21 31     LDA @>2131
7301: e2 06        JEQ $7309
7303: 88 24 85 3d  MOVD %>2485,R61
7307: 52 24        MOV %>24,B
7309: c8           PUSH B
730a: b5           CLR A
730b: ab 23 80     STA @>2380(B)
730e: 8e 8b 30     CALL $8B30
7311: c9           POP B
7312: aa 23 7f     LDA @>237F(B)
7315: 24 10        OR %>10,A
7317: ab 23 7f     STA @>237F(B)
731a: c5           CLR B
731b: 8e 57 51     CALL $5751
731e: 72 05 33     MOV %>5,R51
7321: 8e 51 1f     CALL $511F
7324: 8e 55 6b     CALL $556B
7327: f9           TRAP 6
7328: 8c 58 9a     BR $589A
732b: 8c 60 64     BR $6064
732e: 76 40 32 f9  BTJO %>40,R50,$732B
7332: fb           TRAP 4
7333: 88 23 7c 3d  MOVD %>237C,R61
7337: c5           CLR B
7338: 8a 21 31     LDA @>2131
733b: e2 06        JEQ $7343
733d: 88 23 a0 3d  MOVD %>23A0,R61
7341: 52 24        MOV %>24,B
7343: c8           PUSH B
7344: aa 23 80     LDA @>2380(B)
7347: 23 01        AND %>1,A
7349: ab 23 80     STA @>2380(B)
734c: 8e 8b 30     CALL $8B30
734f: c9           POP B
7350: aa 23 7f     LDA @>237F(B)
7353: 24 08        OR %>8,A
7355: ab 23 7f     STA @>237F(B)
7358: b8           PUSH A
7359: aa 23 80     LDA @>2380(B)
735c: c0           MOV A,B
735d: b9           POP A
735e: 8e 57 51     CALL $5751
7361: 72 04 33     MOV %>4,R51
7364: 8e 51 1f     CALL $511F
7367: 8e 55 6b     CALL $556B
736a: f9           TRAP 6
736b: 8c 58 9a     BR $589A
736e: 77 40 32 2a  BTJZ %>40,R50,$739C
7372: fb           TRAP 4
7373: 8e a2 5c     CALL $A25C
7376: 8e 47 ff     CALL $47FF
7379: 88 23 6c 3d  MOVD %>236C,R61
737d: c5           CLR B
737e: 8a 21 31     LDA @>2131
7381: e2 06        JEQ $7389
7383: 88 23 90 3d  MOVD %>2390,R61
7387: 52 24        MOV %>24,B
7389: c8           PUSH B
738a: 8e 8b 30     CALL $8B30
738d: c9           POP B
738e: b5           CLR A
738f: ab 23 7f     STA @>237F(B)
7392: aa 23 80     LDA @>2380(B)
7395: 24 04        OR %>4,A
7397: 72 03 33     MOV %>3,R51
739a: e0 2d        JMP $73C9
739c: 0a           RETS
739d: 77 40 32 fb  BTJZ %>40,R50,$739C
73a1: fb           TRAP 4
73a2: 8e a2 32     CALL $A232
73a5: 8e 47 ff     CALL $47FF
73a8: 88 23 74 3d  MOVD %>2374,R61
73ac: c5           CLR B
73ad: 8a 21 31     LDA @>2131
73b0: e2 06        JEQ $73B8
73b2: 88 23 98 3d  MOVD %>2398,R61
73b6: 52 24        MOV %>24,B
73b8: c8           PUSH B
73b9: 8e 8b 30     CALL $8B30
73bc: c9           POP B
73bd: b5           CLR A
73be: ab 23 7f     STA @>237F(B)
73c1: aa 23 80     LDA @>2380(B)
73c4: 24 02        OR %>2,A
73c6: 72 02 33     MOV %>2,R51
73c9: ab 23 80     STA @>2380(B)
73cc: b8           PUSH A
73cd: aa 23 7f     LDA @>237F(B)
73d0: c9           POP B
73d1: 8e 57 51     CALL $5751
73d4: 8e 47 f4     CALL $47F4
73d7: 8e 51 1f     CALL $511F
73da: 8e 55 6b     CALL $556B
73dd: 73 bf 32     AND %>BF,R50
73e0: f9           TRAP 6
73e1: 8c 58 9a     BR $589A
73e4: 77 40 32 b4  BTJZ %>40,R50,$739C
73e8: fb           TRAP 4
73e9: 8e a1 65     CALL $A165
73ec: 8e 47 ff     CALL $47FF
73ef: 88 23 64 3d  MOVD %>2364,R61
73f3: c5           CLR B
73f4: 8a 21 31     LDA @>2131
73f7: e2 06        JEQ $73FF
73f9: 88 23 88 3d  MOVD %>2388,R61
73fd: 52 24        MOV %>24,B
73ff: c8           PUSH B
7400: 8e 8b 30     CALL $8B30
7403: c9           POP B
7404: aa 23 7f     LDA @>237F(B)
7407: 23 08        AND %>8,A
7409: ab 23 7f     STA @>237F(B)
740c: aa 23 80     LDA @>2380(B)
740f: 24 01        OR %>1,A
7411: 72 01 33     MOV %>1,R51
7414: e0 b3        JMP $73C9
7416: 43 46 6f     AND R70,R111
7419: 49 20 20     ADC R32,R32
741c: 4e 50 56     DAC R80,R86
741f: 4e 46 56     DAC R70,R86
7422: 49 52 52     ADC R82,R82
7425: fb           TRAP 4
7426: 88 23 bd 3d  MOVD %>23BD,R61
742a: c5           CLR B
742b: 8a 21 31     LDA @>2131
742e: e2 06        JEQ $7436
7430: 88 24 85 3d  MOVD %>2485,R61
7434: 52 24        MOV %>24,B
7436: c8           PUSH B
7437: b5           CLR A
7438: ab 23 80     STA @>2380(B)
743b: 8a 23 b5     LDA @>23B5
743e: be           RL A
743f: be           RL A
7440: be           RL A
7441: 48 00 3d     ADD R0,R61
7444: 79 00 3c     ADC %>0,R60
7447: 8e 8b 30     CALL $8B30
744a: c9           POP B
744b: aa 23 7e     LDA @>237E(B)
744e: 24 10        OR %>10,A
7450: ab 23 7e     STA @>237E(B)
7453: c8           PUSH B
7454: e2 02        JEQ $7458
7456: 52 48        MOV %>48,B
7458: 8a 23 b5     LDA @>23B5
745b: 38 00        ADD R0,B
745d: be           RL A
745e: 38 00        ADD R0,B
7460: aa 25 44     LDA @>2544(B)
7463: e6 14        JNZ $7479
7465: 22 01        MOV %>1,A
7467: ab 25 44     STA @>2544(B)
746a: 22 40        MOV %>40,A
746c: ab 25 43     STA @>2543(B)
746f: c9           POP B
7470: aa 23 7e     LDA @>237E(B)
7473: 24 08        OR %>8,A
7475: ab 23 7e     STA @>237E(B)
7478: c8           PUSH B
7479: c9           POP B
747a: 8c 74 cc     BR $74CC
747d: 72 04 6f     MOV %>4,R111
7480: fa           TRAP 5
7481: fb           TRAP 4
7482: 8e 52 17     CALL $5217
7485: 8e 42 1a     CALL $421A
7488: 8e 50 7e     CALL $507E
748b: 8e 47 f4     CALL $47F4
748e: 76 80 60 eb  BTJO %>80,R96,$747D
7492: 12 61        MOV R97,A
7494: e2 e7        JEQ $747D
7496: 7d 42 60     CMP %>42,R96
7499: e3 e2        JHS $747D
749b: 88 25 48 3d  MOVD %>2548,R61
749f: c5           CLR B
74a0: 8a 21 31     LDA @>2131
74a3: e2 06        JEQ $74AB
74a5: 88 25 90 3d  MOVD %>2590,R61
74a9: 52 24        MOV %>24,B
74ab: c8           PUSH B
74ac: b5           CLR A
74ad: ab 23 80     STA @>2380(B)
74b0: 8a 23 b5     LDA @>23B5
74b3: b2           DEC A
74b4: c0           MOV A,B
74b5: be           RL A
74b6: 38 00        ADD R0,B
74b8: 48 01 3d     ADD R1,R61
74bb: 79 00 3c     ADC %>0,R60
74be: 52 03        MOV %>3,B
74c0: 8e 8b 32     CALL $8B32
74c3: c9           POP B
74c4: aa 23 7e     LDA @>237E(B)
74c7: 24 08        OR %>8,A
74c9: ab 23 7e     STA @>237E(B)
74cc: 8a 23 b5     LDA @>23B5
74cf: ad 23 7d     CMPA @>237D(B)
74d2: e7 2e        JL $7502
74d4: ab 23 7d     STA @>237D(B)
74d7: e0 29        JMP $7502
74d9: 8a 23 7e     LDA @>237E
74dc: 8e 57 51     CALL $5751
74df: 8a 23 7d     LDA @>237D
74e2: e0 48        JMP $752C
74e4: 0a           RETS
74e5: 8a 21 31     LDA @>2131
74e8: e2 fa        JEQ $74E4
74ea: b5           CLR A
74eb: 8b 23 7e     STA @>237E
74ee: e0 0a        JMP $74FA
74f0: 8a 21 31     LDA @>2131
74f3: e6 ef        JNZ $74E4
74f5: 8b 23 a2     STA @>23A2
74f8: 22 01        MOV %>1,A
74fa: 8b 21 31     STA @>2131
74fd: 22 01        MOV %>1,A
74ff: 8b 23 b5     STA @>23B5
7502: fb           TRAP 4
7503: 22 01        MOV %>1,A
7505: 8b 20 b9     STA @>20B9
7508: 88 4c 32 01  MOVD %>4C32,R1
750c: 8b 20 ba     STA @>20BA
750f: 62           MOV B,A
7510: 8b 20 bb     STA @>20BB
7513: 88 77 5a 75  MOVD %>775A,R117
7517: 8e 93 75     CALL $9375
751a: 72 02 32     MOV %>2,R50
751d: c5           CLR B
751e: 8a 21 31     LDA @>2131
7521: e2 b6        JEQ $74D9
7523: 8a 23 a2     LDA @>23A2
7526: 8e 57 51     CALL $5751
7529: 8a 23 a1     LDA @>23A1
752c: c0           MOV A,B
752d: 8a 23 b5     LDA @>23B5
7530: 2d 18        CMP %>18,A
7532: e3 07        JHS $753B
7534: 3d 00        CMP R0,B
7536: e7 03        JL $753B
7538: 74 20 32     OR %>20,R50
753b: 5d 18        CMP %>18,B
753d: e7 0b        JL $754A
753f: 22 20        MOV %>20,A
7541: 8b 20 b4     STA @>20B4
7544: 8b 20 b5     STA @>20B5
7547: 8b 20 b6     STA @>20B6
754a: 8e 56 b2     CALL $56B2
754d: 72 02 33     MOV %>2,R51
7550: 8e 57 4a     CALL $574A
7553: 8e 48 20     CALL $4820
7556: 8a 23 b5     LDA @>23B5
7559: 2a 0a        SUB %>A,A
755b: e7 05        JL $7562
755d: 78 10 61     ADD %>10,R97
7560: e0 f7        JMP $7559
7562: 28 0a        ADD %>A,A
7564: 48 00 61     ADD R0,R97
7567: 8e 52 17     CALL $5217
756a: 72 03 33     MOV %>3,R51
756d: 8e 55 6b     CALL $556B
7570: 88 23 bd 75  MOVD %>23BD,R117
7574: 8a 21 31     LDA @>2131
7577: e2 04        JEQ $757D
7579: 88 24 85 75  MOVD %>2485,R117
757d: 8a 23 b5     LDA @>23B5
7580: be           RL A
7581: be           RL A
7582: be           RL A
7583: 48 00 75     ADD R0,R117
7586: 79 00 74     ADC %>0,R116
7589: f8           TRAP 7
758a: 8e 51 1f     CALL $511F
758d: 72 05 33     MOV %>5,R51
7590: 8e 55 6b     CALL $556B
7593: 88 25 48 75  MOVD %>2548,R117
7597: 8a 21 31     LDA @>2131
759a: e2 04        JEQ $75A0
759c: 88 25 90 75  MOVD %>2590,R117
75a0: 8a 23 b5     LDA @>23B5
75a3: b2           DEC A
75a4: c0           MOV A,B
75a5: be           RL A
75a6: 38 00        ADD R0,B
75a8: 58 05        ADD %>5,B
75aa: 48 01 75     ADD R1,R117
75ad: 79 00 74     ADC %>0,R116
75b0: f8           TRAP 7
75b1: 52 05        MOV %>5,B
75b3: 8e 95 81     CALL $9581
75b6: 8e 52 17     CALL $5217
75b9: 72 04 33     MOV %>4,R51
75bc: 8e 55 6b     CALL $556B
75bf: f9           TRAP 6
75c0: 8c 58 9a     BR $589A
75c3: fb           TRAP 4
75c4: 8e 52 17     CALL $5217
75c7: 8e 42 1a     CALL $421A
75ca: 8e 50 7e     CALL $507E
75cd: 8e 47 f4     CALL $47F4
75d0: 22 01        MOV %>1,A
75d2: 76 80 60 25  BTJO %>80,R96,$75FB
75d6: 7d 00 61     CMP %>0,R97
75d9: e2 20        JEQ $75FB
75db: 7d 40 60     CMP %>40,R96
75de: e7 1b        JL $75FB
75e0: 22 18        MOV %>18,A
75e2: 7d 40 60     CMP %>40,R96
75e5: e6 14        JNZ $75FB
75e7: 7d 24 61     CMP %>24,R97
75ea: e3 0f        JHS $75FB
75ec: b5           CLR A
75ed: 7a 10 61     SUB %>10,R97
75f0: e7 04        JL $75F6
75f2: 28 0a        ADD %>A,A
75f4: e0 f7        JMP $75ED
75f6: 78 10 61     ADD %>10,R97
75f9: 18 61        ADD R97,A
75fb: 8d 23 b5     CMPA @>23B5
75fe: e2 bf        JEQ $75BF
7600: d0 60        MOV A,R96
7602: c5           CLR B
7603: 8a 21 31     LDA @>2131
7606: e2 02        JEQ $760A
7608: 52 24        MOV %>24,B
760a: aa 23 7d     LDA @>237D(B)
760d: b3           INC A
760e: 1d 60        CMP R96,A
7610: e7 02        JL $7614
7612: 12 60        MOV R96,A
7614: 8b 23 b5     STA @>23B5
7617: b5           CLR A
7618: ab 23 7e     STA @>237E(B)
761b: 8c 75 02     BR $7502
761e: c5           CLR B
761f: 8a 21 31     LDA @>2131
7622: e2 02        JEQ $7626
7624: 52 24        MOV %>24,B
7626: aa 23 7d     LDA @>237D(B)
7629: 2d 18        CMP %>18,A
762b: e7 01        JL $762E
762d: 0a           RETS
762e: c8           PUSH B
762f: b5           CLR A
7630: ab 23 80     STA @>2380(B)
7633: fb           TRAP 4
7634: 88 24 7d 2b  MOVD %>247D,R43
7638: 88 24 75 29  MOVD %>2475,R41
763c: 8a 23 b5     LDA @>23B5
763f: 52 18        MOV %>18,B
7641: 3a 00        SUB R0,B
7643: ce           RL B
7644: ce           RL B
7645: ce           RL B
7646: d1 2d        MOV B,R45
7648: d5 2c        CLR R44
764a: c9           POP B
764b: c8           PUSH B
764c: e2 0c        JEQ $765A
764e: 78 c8 2b     ADD %>C8,R43
7651: 79 00 2a     ADC %>0,R42
7654: 78 c8 29     ADD %>C8,R41
7657: 79 00 28     ADC %>0,R40
765a: f7           TRAP 8
765b: 98 2b 3d     MOVD R43,R61
765e: 8e f0 15     CALL $F015
7661: 8e 8b 30     CALL $8B30
7664: 8a 23 b5     LDA @>23B5
7667: 52 18        MOV %>18,B
7669: 3a 00        SUB R0,B
766b: 62           MOV B,A
766c: ce           RL B
766d: 68           ADD B,A
766e: d0 2d        MOV A,R45
7670: d5 2c        CLR R44
7672: 88 25 8d 2b  MOVD %>258D,R43
7676: 88 25 8a 29  MOVD %>258A,R41
767a: c9           POP B
767b: c8           PUSH B
767c: e2 0c        JEQ $768A
767e: 78 48 2b     ADD %>48,R43
7681: 79 00 2a     ADC %>0,R42
7684: 78 48 29     ADD %>48,R41
7687: 79 00 28     ADC %>0,R40
768a: f7           TRAP 8
768b: b5           CLR A
768c: 9b 2b        STA *R43
768e: 22 01        MOV %>1,A
7690: db 2b        DECD R43
7692: 9b 2b        STA *R43
7694: 22 40        MOV %>40,A
7696: db 2b        DECD R43
7698: 9b 2b        STA *R43
769a: c9           POP B
769b: 22 08        MOV %>8,A
769d: ab 23 7e     STA @>237E(B)
76a0: aa 23 7d     LDA @>237D(B)
76a3: b3           INC A
76a4: ab 23 7d     STA @>237D(B)
76a7: 8c 75 02     BR $7502
76aa: fb           TRAP 4
76ab: c5           CLR B
76ac: 8a 21 31     LDA @>2131
76af: e2 02        JEQ $76B3
76b1: 52 24        MOV %>24,B
76b3: aa 23 7d     LDA @>237D(B)
76b6: 8d 23 b5     CMPA @>23B5
76b9: e3 03        JHS $76BE
76bb: 8c 75 bf     BR $75BF
76be: b2           DEC A
76bf: ab 23 7d     STA @>237D(B)
76c2: b5           CLR A
76c3: ab 23 80     STA @>2380(B)
76c6: ab 23 7e     STA @>237E(B)
76c9: 88 24 7e 29  MOVD %>247E,R41
76cd: 88 24 76 2b  MOVD %>2476,R43
76d1: c8           PUSH B
76d2: e2 0c        JEQ $76E0
76d4: 78 c8 29     ADD %>C8,R41
76d7: 79 00 28     ADC %>0,R40
76da: 78 c8 2b     ADD %>C8,R43
76dd: 79 00 2a     ADC %>0,R42
76e0: 8a 23 b5     LDA @>23B5
76e3: 52 18        MOV %>18,B
76e5: 3a 00        SUB R0,B
76e7: ce           RL B
76e8: ce           RL B
76e9: ce           RL B
76ea: d1 2d        MOV B,R45
76ec: d5 2c        CLR R44
76ee: 4a 01 2b     SUB R1,R43
76f1: 7b 00 2a     SBB %>0,R42
76f4: 4a 01 29     SUB R1,R41
76f7: 7b 00 28     SBB %>0,R40
76fa: 8e f0 4b     CALL $F04B
76fd: 8e f0 15     CALL $F015
7700: 98 29 3d     MOVD R41,R61
7703: db 3d        DECD R61
7705: 8e 8b 30     CALL $8B30
7708: 88 25 8e 29  MOVD %>258E,R41
770c: 88 25 8b 2b  MOVD %>258B,R43
7710: c9           POP B
7711: e2 0c        JEQ $771F
7713: 78 48 29     ADD %>48,R41
7716: 79 00 28     ADC %>0,R40
7719: 78 48 2b     ADD %>48,R43
771c: 79 00 2a     ADC %>0,R42
771f: 8a 23 b5     LDA @>23B5
7722: 52 18        MOV %>18,B
7724: 3a 00        SUB R0,B
7726: 62           MOV B,A
7727: ce           RL B
7728: 68           ADD B,A
7729: d0 2d        MOV A,R45
772b: d5 2c        CLR R44
772d: 4a 00 2b     SUB R0,R43
7730: 7b 00 2a     SBB %>0,R42
7733: 4a 00 29     SUB R0,R41
7736: 7b 00 28     SBB %>0,R40
7739: 8e f0 4b     CALL $F04B
773c: db 29        DECD R41
773e: b5           CLR A
773f: 9b 29        STA *R41
7741: db 29        DECD R41
7743: 9b 29        STA *R41
7745: db 29        DECD R41
7747: 9b 29        STA *R41
7749: 8c 75 02     BR $7502
774c: 43 46 6e     AND R70,R110
774f: 46 52 51 6e  BTJO R82,R81,$77C1
7753: 20           Illegal Opcode
7754: 20           Illegal Opcode
7755: 44 45 4c     OR R69,R76
7758: 49 4e 53     ADC R78,R83
775b: 8e 77 61     CALL $7761
775e: 8c 60 cd     BR $60CD
7761: fb           TRAP 4
7762: b5           CLR A
7763: 8b 20 b9     STA @>20B9
7766: 22 05        MOV %>5,A
7768: 8b 20 b8     STA @>20B8
776b: 88 4a ac 01  MOVD %>4AAC,R1
776f: 8b 20 ba     STA @>20BA
7772: 62           MOV B,A
7773: 8b 20 bb     STA @>20BB
7776: d5 32        CLR R50
7778: 88 78 a5 75  MOVD %>78A5,R117
777c: 8e 93 75     CALL $9375
777f: 8e 56 b2     CALL $56B2
7782: 88 25 ff 75  MOVD %>25FF,R117
7786: f8           TRAP 7
7787: 8e 51 1f     CALL $511F
778a: 72 05 33     MOV %>5,R51
778d: 8e 55 6b     CALL $556B
7790: 88 26 07 75  MOVD %>2607,R117
7794: f8           TRAP 7
7795: 8e 51 1f     CALL $511F
7798: 72 04 33     MOV %>4,R51
779b: 8e 55 6b     CALL $556B
779e: 88 26 0f 75  MOVD %>260F,R117
77a2: f8           TRAP 7
77a3: 8e 52 17     CALL $5217
77a6: 72 03 33     MOV %>3,R51
77a9: 8e 55 6b     CALL $556B
77ac: 72 02 33     MOV %>2,R51
77af: 8e 57 4a     CALL $574A
77b2: 8a 26 11     LDA @>2611
77b5: c0           MOV A,B
77b6: 8a 26 10     LDA @>2610
77b9: 8e 57 51     CALL $5751
77bc: f9           TRAP 6
77bd: 8c 58 9a     BR $589A
77c0: fb           TRAP 4
77c1: 76 40 32 24  BTJO %>40,R50,$77E9
77c5: b5           CLR A
77c6: 8b 26 11     STA @>2611
77c9: 88 25 ff 3d  MOVD %>25FF,R61
77cd: 8e 8b 30     CALL $8B30
77d0: 8a 26 10     LDA @>2610
77d3: 24 10        OR %>10,A
77d5: 8b 26 10     STA @>2610
77d8: c5           CLR B
77d9: 8e 57 51     CALL $5751
77dc: 72 05 33     MOV %>5,R51
77df: 8e 51 1f     CALL $511F
77e2: 8e 55 6b     CALL $556B
77e5: f9           TRAP 6
77e6: 8c 58 9a     BR $589A
77e9: 8e a2 6f     CALL $A26F
77ec: b5           CLR A
77ed: 8b 26 10     STA @>2610
77f0: 88 25 ff 3d  MOVD %>25FF,R61
77f4: 8e 8b 30     CALL $8B30
77f7: 22 10        MOV %>10,A
77f9: 8b 26 11     STA @>2611
77fc: c0           MOV A,B
77fd: b5           CLR A
77fe: 8e 57 51     CALL $5751
7801: 8e 47 f4     CALL $47F4
7804: 72 05 33     MOV %>5,R51
7807: 8e 51 1f     CALL $511F
780a: 8e 55 6b     CALL $556B
780d: 73 bf 32     AND %>BF,R50
7810: f9           TRAP 6
7811: 8c 58 9a     BR $589A
7814: fb           TRAP 4
7815: 76 40 32 24  BTJO %>40,R50,$783D
7819: b5           CLR A
781a: 8b 26 11     STA @>2611
781d: 88 26 07 3d  MOVD %>2607,R61
7821: 8e 8b 30     CALL $8B30
7824: 8a 26 10     LDA @>2610
7827: 24 08        OR %>8,A
7829: 8b 26 10     STA @>2610
782c: c5           CLR B
782d: 8e 57 51     CALL $5751
7830: 72 04 33     MOV %>4,R51
7833: 8e 51 1f     CALL $511F
7836: 8e 55 6b     CALL $556B
7839: f9           TRAP 6
783a: 8c 58 9a     BR $589A
783d: 8e a2 a5     CALL $A2A5
7840: b5           CLR A
7841: 8b 26 10     STA @>2610
7844: 88 26 07 3d  MOVD %>2607,R61
7848: 8e 8b 30     CALL $8B30
784b: 22 08        MOV %>8,A
784d: 8b 26 11     STA @>2611
7850: c0           MOV A,B
7851: b5           CLR A
7852: 8e 57 51     CALL $5751
7855: 8e 47 f4     CALL $47F4
7858: 72 04 33     MOV %>4,R51
785b: 8e 51 1f     CALL $511F
785e: 8e 55 6b     CALL $556B
7861: 73 bf 32     AND %>BF,R50
7864: f9           TRAP 6
7865: 8c 58 9a     BR $589A
7868: 76 40 32 28  BTJO %>40,R50,$7894
786c: fb           TRAP 4
786d: 8e 8e 9d     CALL $8E9D
7870: b5           CLR A
7871: 8b 26 11     STA @>2611
7874: 88 26 0f 3d  MOVD %>260F,R61
7878: 8e 8b 30     CALL $8B30
787b: 8a 26 10     LDA @>2610
787e: 24 04        OR %>4,A
7880: 8b 26 10     STA @>2610
7883: c5           CLR B
7884: 8e 57 51     CALL $5751
7887: 72 03 33     MOV %>3,R51
788a: 8e 52 17     CALL $5217
788d: 8e 55 6b     CALL $556B
7890: f9           TRAP 6
7891: 8c 58 9a     BR $589A
7894: 8c 60 64     BR $6064
7897: 41           Illegal Opcode
7898: 50           Illegal Opcode
7899: 52 41        MOV %>41,B
789b: 45 52 43     XOR R82,R67
789e: 2f 59        DSB %>59,A
78a0: 20           Illegal Opcode
78a1: 20           Illegal Opcode
78a2: 20           Illegal Opcode
78a3: 20           Illegal Opcode
78a4: 20           Illegal Opcode
78a5: 20           Illegal Opcode
78a6: 8e 78 ac     CALL $78AC
78a9: 8c 60 cd     BR $60CD
78ac: fb           TRAP 4
78ad: b5           CLR A
78ae: 8b 20 b9     STA @>20B9
78b1: 22 07        MOV %>7,A
78b3: 8b 20 b8     STA @>20B8
78b6: 88 4a 8e 01  MOVD %>4A8E,R1
78ba: 8b 20 ba     STA @>20BA
78bd: 62           MOV B,A
78be: 8b 20 bb     STA @>20BB
78c1: d5 32        CLR R50
78c3: 88 7a 0c 75  MOVD %>7A0C,R117
78c7: 8e 93 75     CALL $9375
78ca: 8e 56 b2     CALL $56B2
78cd: 88 25 e5 75  MOVD %>25E5,R117
78d1: f8           TRAP 7
78d2: 8e 51 1f     CALL $511F
78d5: 72 05 33     MOV %>5,R51
78d8: 8e 55 6b     CALL $556B
78db: 88 25 ed 75  MOVD %>25ED,R117
78df: f8           TRAP 7
78e0: 8e 51 1f     CALL $511F
78e3: 72 04 33     MOV %>4,R51
78e6: 8e 55 6b     CALL $556B
78e9: 88 25 f5 75  MOVD %>25F5,R117
78ed: f8           TRAP 7
78ee: 8e 51 1f     CALL $511F
78f1: 72 03 33     MOV %>3,R51
78f4: 8e 55 6b     CALL $556B
78f7: 72 02 33     MOV %>2,R51
78fa: 8e 57 4a     CALL $574A
78fd: 8a 25 f7     LDA @>25F7
7900: c0           MOV A,B
7901: 8a 25 f6     LDA @>25F6
7904: 8e 57 51     CALL $5751
7907: f9           TRAP 6
7908: 8c 58 9a     BR $589A
790b: fb           TRAP 4
790c: 76 40 32 24  BTJO %>40,R50,$7934
7910: b5           CLR A
7911: 8b 25 f7     STA @>25F7
7914: 88 25 e5 3d  MOVD %>25E5,R61
7918: 8e 8b 30     CALL $8B30
791b: 8a 25 f6     LDA @>25F6
791e: 24 10        OR %>10,A
7920: 8b 25 f6     STA @>25F6
7923: c5           CLR B
7924: 8e 57 51     CALL $5751
7927: 72 05 33     MOV %>5,R51
792a: 8e 51 1f     CALL $511F
792d: 8e 55 6b     CALL $556B
7930: f9           TRAP 6
7931: 8c 58 9a     BR $589A
7934: 8e a2 d4     CALL $A2D4
7937: b5           CLR A
7938: 8b 25 f6     STA @>25F6
793b: 88 25 e5 3d  MOVD %>25E5,R61
793f: 8e 8b 30     CALL $8B30
7942: 22 10        MOV %>10,A
7944: 8b 25 f7     STA @>25F7
7947: c0           MOV A,B
7948: b5           CLR A
7949: 8e 57 51     CALL $5751
794c: 8e 47 f4     CALL $47F4
794f: 72 05 33     MOV %>5,R51
7952: 8e 51 1f     CALL $511F
7955: 8e 55 6b     CALL $556B
7958: f9           TRAP 6
7959: 8c 58 9a     BR $589A
795c: fb           TRAP 4
795d: 76 40 32 24  BTJO %>40,R50,$7985
7961: b5           CLR A
7962: 8b 25 f7     STA @>25F7
7965: 88 25 ed 3d  MOVD %>25ED,R61
7969: 8e 8b 30     CALL $8B30
796c: 8a 25 f6     LDA @>25F6
796f: 24 08        OR %>8,A
7971: 8b 25 f6     STA @>25F6
7974: c5           CLR B
7975: 8e 57 51     CALL $5751
7978: 72 04 33     MOV %>4,R51
797b: 8e 51 1f     CALL $511F
797e: 8e 55 6b     CALL $556B
7981: f9           TRAP 6
7982: 8c 58 9a     BR $589A
7985: 8e a2 f1     CALL $A2F1
7988: b5           CLR A
7989: 8b 25 f6     STA @>25F6
798c: 88 25 ed 3d  MOVD %>25ED,R61
7990: 8e 8b 30     CALL $8B30
7993: 22 08        MOV %>8,A
7995: 8b 25 f7     STA @>25F7
7998: c0           MOV A,B
7999: b5           CLR A
799a: 8e 57 51     CALL $5751
799d: 8e 47 f4     CALL $47F4
79a0: 72 04 33     MOV %>4,R51
79a3: 8e 51 1f     CALL $511F
79a6: 8e 55 6b     CALL $556B
79a9: f9           TRAP 6
79aa: 8c 58 9a     BR $589A
79ad: fb           TRAP 4
79ae: 76 40 32 24  BTJO %>40,R50,$79D6
79b2: b5           CLR A
79b3: 8b 25 f7     STA @>25F7
79b6: 88 25 f5 3d  MOVD %>25F5,R61
79ba: 8e 8b 30     CALL $8B30
79bd: 8a 25 f6     LDA @>25F6
79c0: 24 04        OR %>4,A
79c2: 8b 25 f6     STA @>25F6
79c5: c5           CLR B
79c6: 8e 57 51     CALL $5751
79c9: 72 03 33     MOV %>3,R51
79cc: 8e 51 1f     CALL $511F
79cf: 8e 55 6b     CALL $556B
79d2: f9           TRAP 6
79d3: 8c 58 9a     BR $589A
79d6: 8e a3 0e     CALL $A30E
79d9: b5           CLR A
79da: 8b 25 f6     STA @>25F6
79dd: 88 25 f5 3d  MOVD %>25F5,R61
79e1: 8e 8b 30     CALL $8B30
79e4: 22 04        MOV %>4,A
79e6: 8b 25 f7     STA @>25F7
79e9: c0           MOV A,B
79ea: b5           CLR A
79eb: 8e 57 51     CALL $5751
79ee: 8e 47 f4     CALL $47F4
79f1: 72 03 33     MOV %>3,R51
79f4: 8e 51 1f     CALL $511F
79f7: 8e 55 6b     CALL $556B
79fa: f9           TRAP 6
79fb: 8c 58 9a     BR $589A
79fe: 4f 4c 44     DSB R76,R68
7a01: 4e 45 57     DAC R69,R87
7a04: 43 48 47     AND R72,R71
7a07: 20           Illegal Opcode
7a08: 20           Illegal Opcode
7a09: 20           Illegal Opcode
7a0a: 20           Illegal Opcode
7a0b: 20           Illegal Opcode
7a0c: 20           Illegal Opcode
7a0d: 88 7a 22 01  MOVD %>7A22,R1
7a11: 8e 56 9d     CALL $569D
7a14: 8c 58 76     BR $5876
7a17: 20           Illegal Opcode
7a18: 43 4f 4d     AND R79,R77
7a1b: 50           Illegal Opcode
7a1c: 55 54        XOR %>54,B
7a1e: 49 4e 47     ADC R78,R71
7a21: 20           Illegal Opcode
7a22: 20           Illegal Opcode
7a23: 7d 90 67     CMP %>90,R103
7a26: e7 32        JL $7A5A
7a28: d8 60        PUSH R96
7a2a: e5 02        JPZ $7A2E
7a2c: d4 60        INV R96
7a2e: d5 67        CLR R103
7a30: 07           SETC
7a31: 0e           PUSH ST
7a32: 52 06        MOV %>6,B
7a34: aa 00 60     LDA @>0060(B)
7a37: 08           POP ST
7a38: e7 1b        JL $7A55
7a3a: 2e 00        DAC %>0,A
7a3c: 0e           PUSH ST
7a3d: ab 00 60     STA @>0060(B)
7a40: ca f2        DJNZ B,$7A34
7a42: 08           POP ST
7a43: e7 10        JL $7A55
7a45: d3 60        INC R96
7a47: e1 12        JN $7A5B
7a49: 88 01 00 62  MOVD %>0100,R98
7a4d: 88 00 00 64  MOVD %>0000,R100
7a51: 88 00 00 66  MOVD %>0000,R102
7a55: b9           POP A
7a56: e5 02        JPZ $7A5A
7a58: d4 60        INV R96
7a5a: 0a           RETS
7a5b: 88 7f 99 61  MOVD %>7F99,R97
7a5f: 88 99 99 63  MOVD %>9999,R99
7a63: 88 99 99 65  MOVD %>9999,R101
7a67: 88 99 99 67  MOVD %>9999,R103
7a6b: e0 e8        JMP $7A55
7a6d: 2d 04        CMP %>4,A
7a6f: e6 35        JNZ $7AA6
7a71: 72 3f 2d     MOV %>3F,R45
7a74: 52 40        MOV %>40,B
7a76: 8e 4d d8     CALL $4DD8
7a79: e1 34        JN $7AAF
7a7b: e3 29        JHS $7AA6
7a7d: 7d 29 76     CMP %>29,R118
7a80: e6 2d        JNZ $7AAF
7a82: 52 40        MOV %>40,B
7a84: 8e f0 42     CALL $F042
7a87: 23 7f        AND %>7F,A
7a89: 2d 04        CMP %>4,A
7a8b: e6 19        JNZ $7AA6
7a8d: fb           TRAP 4
7a8e: 74 04 72     OR %>4,R114
7a91: 8c 42 45     BR $4245
7a94: 52 80        MOV %>80,B
7a96: 8e f0 42     CALL $F042
7a99: 23 7f        AND %>7F,A
7a9b: e6 13        JNZ $7AB0
7a9d: 52 40        MOV %>40,B
7a9f: 8e f0 42     CALL $F042
7aa2: 23 7f        AND %>7F,A
7aa4: e6 c7        JNZ $7A6D
7aa6: 88 20 02 01  MOVD %>2002,R1
7aaa: 8e f0 3f     CALL $F03F
7aad: e6 e5        JNZ $7A94
7aaf: 0a           RETS
7ab0: 2d 04        CMP %>4,A
7ab2: e6 f2        JNZ $7AA6
7ab4: 72 7f 2d     MOV %>7F,R45
7ab7: 52 80        MOV %>80,B
7ab9: 8e 4d d8     CALL $4DD8
7abc: e1 f1        JN $7AAF
7abe: e3 e6        JHS $7AA6
7ac0: 7d 29 76     CMP %>29,R118
7ac3: e6 ea        JNZ $7AAF
7ac5: 52 80        MOV %>80,B
7ac7: 8e f0 42     CALL $F042
7aca: 23 7f        AND %>7F,A
7acc: 2d 04        CMP %>4,A
7ace: e6 d6        JNZ $7AA6
7ad0: fb           TRAP 4
7ad1: 22 02        MOV %>2,A
7ad3: 8b 21 2b     STA @>212B
7ad6: 8b 20 20     STA @>2020
7ad9: c0           MOV A,B
7ada: ce           RL B
7adb: aa 54 f9     LDA @>54F9(B)
7ade: 82 0f        MOVP A,P15
7ae0: aa 54 fa     LDA @>54FA(B)
7ae3: 82 0e        MOVP A,P14
7ae5: 74 04 72     OR %>4,R114
7ae8: 52 01        MOV %>1,B
7aea: 0d           LDSP
7aeb: 22 ff        MOV %>FF,A
7aed: 8b 20 2f     STA @>202F
7af0: d5 32        CLR R50
7af2: 88 7d 39 75  MOVD %>7D39,R117
7af6: 8e 93 75     CALL $9375
7af9: 8e 56 b2     CALL $56B2
7afc: 8e f0 15     CALL $F015
7aff: 88 42 08 61  MOVD %>4208,R97
7b03: 88 88 88 63  MOVD %>8888,R99
7b07: 8e 51 1f     CALL $511F
7b0a: 72 05 33     MOV %>5,R51
7b0d: 8e 55 6b     CALL $556B
7b10: 72 04 33     MOV %>4,R51
7b13: 8e 55 6b     CALL $556B
7b16: 72 03 33     MOV %>3,R51
7b19: 8e 55 6b     CALL $556B
7b1c: 72 02 33     MOV %>2,R51
7b1f: 8e 55 6b     CALL $556B
7b22: 8e 7c dc     CALL $7CDC
7b25: b5           CLR A
7b26: c5           CLR B
7b27: 8e 57 51     CALL $5751
7b2a: 88 7d 45 01  MOVD %>7D45,R1
7b2e: 8e 56 9d     CALL $569D
7b31: 88 59 b3 29  MOVD %>59B3,R41
7b35: 8e 57 2e     CALL $572E
7b38: 8e 58 9a     CALL $589A
7b3b: 8e 4d 9a     CALL $4D9A
7b3e: 42 76 34     MOV R118,R52
7b41: 7a 1b 34     SUB %>1B,R52
7b44: 7d 1b 76     CMP %>1B,R118
7b47: e2 1e        JEQ $7B67
7b49: 7d 1c 76     CMP %>1C,R118
7b4c: e2 44        JEQ $7B92
7b4e: 7d 1d 76     CMP %>1D,R118
7b51: e2 70        JEQ $7BC3
7b53: 7d 1e 76     CMP %>1E,R118
7b56: e2 79        JEQ $7BD1
7b58: 7d 21 76     CMP %>21,R118
7b5b: e2 0c        JEQ $7B69
7b5d: 7d 29 76     CMP %>29,R118
7b60: e6 d9        JNZ $7B3B
7b62: 8e 54 bb     CALL $54BB
7b65: e0 05        JMP $7B6C
7b67: e0 70        JMP $7BD9
7b69: 8e 54 f0     CALL $54F0
7b6c: 88 00 16 2f  MOVD %>0016,R47
7b70: 52 b3        MOV %>B3,B
7b72: 22 ff        MOV %>FF,A
7b74: 8e f0 48     CALL $F048
7b77: 77 80 2e 14  BTJZ %>80,R46,$7B8F
7b7b: 88 20 02 01  MOVD %>2002,R1
7b7f: 7d 29 76     CMP %>29,R118
7b82: e2 04        JEQ $7B88
7b84: 88 10 02 01  MOVD %>1002,R1
7b88: 8e f0 3f     CALL $F03F
7b8b: e2 02        JEQ $7B8F
7b8d: e0 af        JMP $7B3E
7b8f: 8c 7b 2a     BR $7B2A
7b92: 8e 7c 57     CALL $7C57
7b95: d5 24        CLR R36
7b97: d5 25        CLR R37
7b99: d5 26        CLR R38
7b9b: 8e 7e 81     CALL $7E81
7b9e: 8e 7d a6     CALL $7DA6
7ba1: 8e 7e df     CALL $7EDF
7ba4: 8e 7f 10     CALL $7F10
7ba7: 8e 82 db     CALL $82DB
7baa: 8e 80 21     CALL $8021
7bad: 8e 81 1b     CALL $811B
7bb0: 8e 82 ac     CALL $82AC
7bb3: 8e 80 5c     CALL $805C
7bb6: 7d 37 76     CMP %>37,R118
7bb9: e2 05        JEQ $7BC0
7bbb: 8e 80 05     CALL $8005
7bbe: e0 db        JMP $7B9B
7bc0: 8c 7a e8     BR $7AE8
7bc3: 8e 7c 57     CALL $7C57
7bc6: 8e 82 db     CALL $82DB
7bc9: 8e 81 1b     CALL $811B
7bcc: 8e 82 ac     CALL $82AC
7bcf: e0 26        JMP $7BF7
7bd1: 8e 7c 57     CALL $7C57
7bd4: 8e 7f b6     CALL $7FB6
7bd7: e0 1e        JMP $7BF7
7bd9: 8e 7c 57     CALL $7C57
7bdc: 8e 7f b6     CALL $7FB6
7bdf: 8e 7e 81     CALL $7E81
7be2: 8e 7d a6     CALL $7DA6
7be5: 8e 7e df     CALL $7EDF
7be8: 8e 7f 10     CALL $7F10
7beb: 8e 82 db     CALL $82DB
7bee: 8e 80 21     CALL $8021
7bf1: 8e 81 1b     CALL $811B
7bf4: 8e 82 ac     CALL $82AC
7bf7: 88 7d 99 01  MOVD %>7D99,R1
7bfb: 8e 56 9d     CALL $569D
7bfe: 8a 20 e1     LDA @>20E1
7c01: 24 80        OR %>80,A
7c03: 8b 20 e1     STA @>20E1
7c06: 8a 20 e2     LDA @>20E2
7c09: 24 80        OR %>80,A
7c0b: 8b 20 e2     STA @>20E2
7c0e: 8e 58 76     CALL $5876
7c11: 8e 7c 17     CALL $7C17
7c14: 8c 7a e8     BR $7AE8
7c17: 8e 4d 9a     CALL $4D9A
7c1a: 7d 37 76     CMP %>37,R118
7c1d: e2 05        JEQ $7C24
7c1f: 7d 17 76     CMP %>17,R118
7c22: e6 f3        JNZ $7C17
7c24: 0a           RETS
7c25: 72 02 33     MOV %>2,R51
7c28: 8e 55 6b     CALL $556B
7c2b: 88 7d 81 75  MOVD %>7D81,R117
7c2f: 22 02        MOV %>2,A
7c31: e0 5b        JMP $7C8E
7c33: 2d 02        CMP %>2,A
7c35: e6 ee        JNZ $7C25
7c37: 72 03 33     MOV %>3,R51
7c3a: 8e 55 6b     CALL $556B
7c3d: 88 7d 72 75  MOVD %>7D72,R117
7c41: 22 04        MOV %>4,A
7c43: e0 49        JMP $7C8E
7c45: 2d 01        CMP %>1,A
7c47: e6 ea        JNZ $7C33
7c49: 72 04 33     MOV %>4,R51
7c4c: 8e 55 6b     CALL $556B
7c4f: 88 7d 63 75  MOVD %>7D63,R117
7c53: 22 08        MOV %>8,A
7c55: e0 37        JMP $7C8E
7c57: 22 ff        MOV %>FF,A
7c59: 8b 20 2f     STA @>202F
7c5c: d5 32        CLR R50
7c5e: 72 05 33     MOV %>5,R51
7c61: 8e 57 4a     CALL $574A
7c64: 8e 7c dc     CALL $7CDC
7c67: 88 7d 8d 01  MOVD %>7D8D,R1
7c6b: 8e 56 9d     CALL $569D
7c6e: 8e f0 15     CALL $F015
7c71: 88 42 08 61  MOVD %>4208,R97
7c75: 88 88 88 63  MOVD %>8888,R99
7c79: 8e 51 1f     CALL $511F
7c7c: 12 34        MOV R52,A
7c7e: 23 0f        AND %>F,A
7c80: e6 c3        JNZ $7C45
7c82: 72 05 33     MOV %>5,R51
7c85: 8e 55 6b     CALL $556B
7c88: 88 7d 54 75  MOVD %>7D54,R117
7c8c: 22 10        MOV %>10,A
7c8e: c5           CLR B
7c8f: 8e 57 51     CALL $5751
7c92: 8e 93 75     CALL $9375
7c95: 8e 56 b2     CALL $56B2
7c98: 88 59 b3 29  MOVD %>59B3,R41
7c9c: 8e 57 2e     CALL $572E
7c9f: 8e 58 9a     CALL $589A
7ca2: 88 84 76 29  MOVD %>8476,R41
7ca6: 75 80 34     XOR %>80,R52
7ca9: e1 04        JN $7CAF
7cab: 88 84 36 29  MOVD %>8436,R41
7caf: 9a 29        LDA *R41
7cb1: e2 28        JEQ $7CDB
7cb3: b8           PUSH A
7cb4: 52 02        MOV %>2,B
7cb6: 8e f0 60     CALL $F060
7cb9: 8e f0 63     CALL $F063
7cbc: c0           MOV A,B
7cbd: db 29        DECD R41
7cbf: 9a 29        LDA *R41
7cc1: b4           INV A
7cc2: 33 00        AND R0,B
7cc4: db 29        DECD R41
7cc6: 9a 29        LDA *R41
7cc8: 34 00        OR R0,B
7cca: b9           POP A
7ccb: c8           PUSH B
7ccc: 52 02        MOV %>2,B
7cce: 8e f0 60     CALL $F060
7cd1: b9           POP A
7cd2: 52 01        MOV %>1,B
7cd4: 8e f0 60     CALL $F060
7cd7: db 29        DECD R41
7cd9: e0 d4        JMP $7CAF
7cdb: 0a           RETS
7cdc: 72 01 33     MOV %>1,R51
7cdf: 88 ff ff 62  MOVD %>FFFF,R98
7ce3: 72 ff 64     MOV %>FF,R100
7ce6: 8a ff cf     LDA @>FFCF
7ce9: d0 63        MOV A,R99
7ceb: 72 01 65     MOV %>1,R101
7cee: 72 ff 30     MOV %>FF,R48
7cf1: 74 01 72     OR %>1,R114
7cf4: 73 ef 72     AND %>EF,R114
7cf7: 8e 55 6b     CALL $556B
7cfa: 8a 21 03     LDA @>2103
7cfd: 24 a0        OR %>A0,A
7cff: 8b 21 03     STA @>2103
7d02: 8a 21 01     LDA @>2101
7d05: 24 20        OR %>20,A
7d07: 8b 21 01     STA @>2101
7d0a: 8a 20 f4     LDA @>20F4
7d0d: 24 20        OR %>20,A
7d0f: 8b 20 f4     STA @>20F4
7d12: 8a 20 f2     LDA @>20F2
7d15: 24 20        OR %>20,A
7d17: 8b 20 f2     STA @>20F2
7d1a: 8a 20 ef     LDA @>20EF
7d1d: 24 80        OR %>80,A
7d1f: 8b 20 ef     STA @>20EF
7d22: 8a 20 f1     LDA @>20F1
7d25: 24 80        OR %>80,A
7d27: 8b 20 f1     STA @>20F1
7d2a: 0a           RETS
7d2b: 46 55 4e 43  BTJO R85,R78,$7D72
7d2f: 59 43        ADC %>43,B
7d31: 4c 43 44     MPY R67,R68
7d34: 4b 42 44     SBB R66,R68
7d37: 56 45 52     BTJO %>45,B,$7D8C
7d3a: 53 45        AND %>45,B
7d3c: 4c 46 2d     MPY R70,R45
7d3f: 54 45        OR %>45,B
7d41: 53 54        AND %>54,B
7d43: 20           Illegal Opcode
7d44: 20           Illegal Opcode
7d45: 20           Illegal Opcode
7d46: 46 55 4e 20  BTJO R85,R78,$7D6A
7d4a: 20           Illegal Opcode
7d4b: 20           Illegal Opcode
7d4c: 20           Illegal Opcode
7d4d: 20           Illegal Opcode
7d4e: 20           Illegal Opcode
7d4f: 20           Illegal Opcode
7d50: 20           Illegal Opcode
7d51: 20           Illegal Opcode
7d52: 56 45 52     BTJO %>45,B,$7DA7
7d55: 20           Illegal Opcode
7d56: 20           Illegal Opcode
7d57: 20           Illegal Opcode
7d58: 43 59 43     AND R89,R67
7d5b: 20           Illegal Opcode
7d5c: 20           Illegal Opcode
7d5d: 20           Illegal Opcode
7d5e: 20           Illegal Opcode
7d5f: 20           Illegal Opcode
7d60: 20           Illegal Opcode
7d61: 56 45 52     BTJO %>45,B,$7DB6
7d64: 20           Illegal Opcode
7d65: 20           Illegal Opcode
7d66: 20           Illegal Opcode
7d67: 20           Illegal Opcode
7d68: 20           Illegal Opcode
7d69: 20           Illegal Opcode
7d6a: 4c 43 44     MPY R67,R68
7d6d: 20           Illegal Opcode
7d6e: 20           Illegal Opcode
7d6f: 20           Illegal Opcode
7d70: 56 45 52     BTJO %>45,B,$7DC5
7d73: 20           Illegal Opcode
7d74: 20           Illegal Opcode
7d75: 20           Illegal Opcode
7d76: 20           Illegal Opcode
7d77: 20           Illegal Opcode
7d78: 20           Illegal Opcode
7d79: 20           Illegal Opcode
7d7a: 20           Illegal Opcode
7d7b: 20           Illegal Opcode
7d7c: 4b 42 44     SBB R66,R68
7d7f: 56 45 52     BTJO %>45,B,$7DD4
7d82: 42 55 53     MOV R85,R83
7d85: 59 20        ADC %>20,B
7d87: 20           Illegal Opcode
7d88: 20           Illegal Opcode
7d89: 20           Illegal Opcode
7d8a: 20           Illegal Opcode
7d8b: 20           Illegal Opcode
7d8c: 20           Illegal Opcode
7d8d: 20           Illegal Opcode
7d8e: 4f 4b 20     DSB R75,R32
7d91: 50           Illegal Opcode
7d92: 52 45        MOV %>45,B
7d94: 53 53        AND %>53,B
7d96: 3a 20        SUB R32,B
7d98: 20           Illegal Opcode
7d99: 3d 4f        CMP R79,B
7d9b: 4b 20 20     SBB R32,R32
7d9e: 20           Illegal Opcode
7d9f: 20           Illegal Opcode
7da0: 20           Illegal Opcode
7da1: 20           Illegal Opcode
7da2: 20           Illegal Opcode
7da3: 20           Illegal Opcode
7da4: 20           Illegal Opcode
7da5: 20           Illegal Opcode
7da6: 8a 21 2b     LDA @>212B
7da9: b8           PUSH A
7daa: 88 27 ff 29  MOVD %>27FF,R41
7dae: 88 1f ff 2b  MOVD %>1FFF,R43
7db2: 8e 7e 59     CALL $7E59
7db5: 88 40 80 01  MOVD %>4080,R1
7db9: 8e f0 3f     CALL $F03F
7dbc: e6 6c        JNZ $7E2A
7dbe: 22 a5        MOV %>A5,A
7dc0: 8e 7e 6b     CALL $7E6B
7dc3: e6 5a        JNZ $7E1F
7dc5: 88 40 80 01  MOVD %>4080,R1
7dc9: 8e f0 3f     CALL $F03F
7dcc: e6 5c        JNZ $7E2A
7dce: 8e 7c a2     CALL $7CA2
7dd1: 22 5a        MOV %>5A,A
7dd3: 88 27 ff 29  MOVD %>27FF,R41
7dd7: 8e 7e 5b     CALL $7E5B
7dda: 88 40 80 01  MOVD %>4080,R1
7dde: 8e f0 3f     CALL $F03F
7de1: e6 47        JNZ $7E2A
7de3: 22 5a        MOV %>5A,A
7de5: 8e 7e 6b     CALL $7E6B
7de8: e6 35        JNZ $7E1F
7dea: 88 40 80 01  MOVD %>4080,R1
7dee: 8e f0 3f     CALL $F03F
7df1: e6 37        JNZ $7E2A
7df3: 8e 7c a2     CALL $7CA2
7df6: 88 27 ff 29  MOVD %>27FF,R41
7dfa: 8e 7e 31     CALL $7E31
7dfd: 88 40 80 01  MOVD %>4080,R1
7e01: 8e f0 3f     CALL $F03F
7e04: e6 24        JNZ $7E2A
7e06: 88 27 ff 29  MOVD %>27FF,R41
7e0a: 8e 7e 44     CALL $7E44
7e0d: e6 10        JNZ $7E1F
7e0f: 88 40 80 01  MOVD %>4080,R1
7e13: 8e f0 3f     CALL $F03F
7e16: e6 12        JNZ $7E2A
7e18: b9           POP A
7e19: 8b 21 2b     STA @>212B
7e1c: 8c 7c 57     BR $7C57
7e1f: b9           POP A
7e20: 8b 21 2b     STA @>212B
7e23: 88 83 de 01  MOVD %>83DE,R1
7e27: 8c 83 6b     BR $836B
7e2a: b9           POP A
7e2b: 8b 21 2b     STA @>212B
7e2e: 8c 7a e8     BR $7AE8
7e31: b5           CLR A
7e32: b3           INC A
7e33: e2 fd        JEQ $7E32
7e35: 9b 29        STA *R41
7e37: db 29        DECD R41
7e39: 4d 28 2a     CMP R40,R42
7e3c: e6 f4        JNZ $7E32
7e3e: 4d 29 2b     CMP R41,R43
7e41: e6 ef        JNZ $7E32
7e43: 0a           RETS
7e44: b5           CLR A
7e45: b3           INC A
7e46: e2 fd        JEQ $7E45
7e48: 9d 29        CMPA *R41
7e4a: e6 0c        JNZ $7E58
7e4c: db 29        DECD R41
7e4e: 4d 28 2a     CMP R40,R42
7e51: e6 f2        JNZ $7E45
7e53: 4d 29 2b     CMP R41,R43
7e56: e6 ed        JNZ $7E45
7e58: 0a           RETS
7e59: 22 a5        MOV %>A5,A
7e5b: 9b 29        STA *R41
7e5d: be           RL A
7e5e: db 29        DECD R41
7e60: 4d 28 2a     CMP R40,R42
7e63: e6 f6        JNZ $7E5B
7e65: 4d 29 2b     CMP R41,R43
7e68: e6 f1        JNZ $7E5B
7e6a: 0a           RETS
7e6b: 88 27 ff 29  MOVD %>27FF,R41
7e6f: 9d 29        CMPA *R41
7e71: e6 0d        JNZ $7E80
7e73: be           RL A
7e74: db 29        DECD R41
7e76: 4d 28 2a     CMP R40,R42
7e79: e6 f4        JNZ $7E6F
7e7b: 4d 29 2b     CMP R41,R43
7e7e: e6 ef        JNZ $7E6F
7e80: 0a           RETS
7e81: d8 76        PUSH R118
7e83: d8 34        PUSH R52
7e85: 88 00 7f 29  MOVD %>007F,R41
7e89: 88 00 2f 2b  MOVD %>002F,R43
7e8d: 8e 7e 59     CALL $7E59
7e90: 88 00 7f 29  MOVD %>007F,R41
7e94: 8e 7e 6f     CALL $7E6F
7e97: e6 35        JNZ $7ECE
7e99: 22 5a        MOV %>5A,A
7e9b: 88 00 7f 29  MOVD %>007F,R41
7e9f: 8e 7e 5b     CALL $7E5B
7ea2: 88 00 7f 29  MOVD %>007F,R41
7ea6: 8e 7e 6f     CALL $7E6F
7ea9: e6 23        JNZ $7ECE
7eab: 88 00 7f 29  MOVD %>007F,R41
7eaf: 8e 7e 31     CALL $7E31
7eb2: 88 00 7f 29  MOVD %>007F,R41
7eb6: 8e 7e 44     CALL $7E44
7eb9: e6 13        JNZ $7ECE
7ebb: d9 34        POP R52
7ebd: d9 76        POP R118
7ebf: 72 24 72     MOV %>24,R114
7ec2: 88 40 80 01  MOVD %>4080,R1
7ec6: 8e f0 3f     CALL $F03F
7ec9: e6 11        JNZ $7EDC
7ecb: 8c 7c a2     BR $7CA2
7ece: d9 34        POP R52
7ed0: d9 76        POP R118
7ed2: 72 24 72     MOV %>24,R114
7ed5: 88 83 c6 01  MOVD %>83C6,R1
7ed9: 8c 83 6b     BR $836B
7edc: 8c 7a e8     BR $7AE8
7edf: 88 f0 00 29  MOVD %>F000,R41
7ee3: d5 2d        CLR R45
7ee5: 88 f0 02 2b  MOVD %>F002,R43
7ee9: 8e 7f 05     CALL $7F05
7eec: 8e 21 30     CALL $2130
7eef: b0           CLRC
7ef0: e6 0c        JNZ $7EFE
7ef2: 88 40 80 01  MOVD %>4080,R1
7ef6: 8e f0 3f     CALL $F03F
7ef9: e6 e1        JNZ $7EDC
7efb: 8c 7c a2     BR $7CA2
7efe: 88 83 ba 01  MOVD %>83BA,R1
7f02: 8c 83 6b     BR $836B
7f05: 52 52        MOV %>52,B
7f07: aa 7f 63     LDA @>7F63(B)
7f0a: ab 21 2f     STA @>212F(B)
7f0d: ca f8        DJNZ B,$7F07
7f0f: 0a           RETS
7f10: 8e 7f 05     CALL $7F05
7f13: 88 40 00 29  MOVD %>4000,R41
7f17: d5 74        CLR R116
7f19: d5 75        CLR R117
7f1b: 88 bf fe 2b  MOVD %>BFFE,R43
7f1f: 42 28 2d     MOV R40,R45
7f22: 78 10 2d     ADD %>10,R45
7f25: 8e 21 34     CALL $2134
7f28: 7d c0 2d     CMP %>C0,R45
7f2b: e6 16        JNZ $7F43
7f2d: b0           CLRC
7f2e: e6 0c        JNZ $7F3C
7f30: 88 40 80 01  MOVD %>4080,R1
7f34: 8e f0 3f     CALL $F03F
7f37: e6 28        JNZ $7F61
7f39: 8c 7c a2     BR $7CA2
7f3c: 88 83 d2 01  MOVD %>83D2,R1
7f40: 8c 83 6b     BR $836B
7f43: 88 40 80 01  MOVD %>4080,R1
7f47: 8e f0 3f     CALL $F03F
7f4a: e6 15        JNZ $7F61
7f4c: d8 28        PUSH R40
7f4e: d8 29        PUSH R41
7f50: d8 74        PUSH R116
7f52: d8 75        PUSH R117
7f54: 8e 7c a2     CALL $7CA2
7f57: d9 75        POP R117
7f59: d9 74        POP R116
7f5b: d9 29        POP R41
7f5d: d9 28        POP R40
7f5f: e0 ba        JMP $7F1B
7f61: 8c 7a e8     BR $7AE8
7f64: d5 74        CLR R116
7f66: d5 75        CLR R117
7f68: 9a 29        LDA *R41
7f6a: 15 74        XOR R116,A
7f6c: 42 75 74     MOV R117,R116
7f6f: c0           MOV A,B
7f70: b5           CLR A
7f71: 72 08 2c     MOV %>8,R44
7f74: 65           XOR B,A
7f75: cf           RLC B
7f76: da 2c fb     DJNZ R44,$7F74
7f79: d0 75        MOV A,R117
7f7b: c0           MOV A,B
7f7c: b5           CLR A
7f7d: cf           RLC B
7f7e: bf           RLC A
7f7f: 45 00 74     XOR R0,R116
7f82: 12 75        MOV R117,A
7f84: c5           CLR B
7f85: bd           RRC A
7f86: cd           RRC B
7f87: bd           RRC A
7f88: cd           RRC B
7f89: 45 00 75     XOR R0,R117
7f8c: 45 01 74     XOR R1,R116
7f8f: d3 29        INC R41
7f91: 79 00 28     ADC %>0,R40
7f94: 4d 29 2b     CMP R41,R43
7f97: e6 0b        JNZ $7FA4
7f99: 4d 28 2a     CMP R40,R42
7f9c: e6 06        JNZ $7FA4
7f9e: 78 02 29     ADD %>2,R41
7fa1: 79 00 28     ADC %>0,R40
7fa4: 4d 28 2d     CMP R40,R45
7fa7: e6 bf        JNZ $7F68
7fa9: 9a 2b        LDA *R43
7fab: 1a 74        SUB R116,A
7fad: e6 06        JNZ $7FB5
7faf: d3 2b        INC R43
7fb1: 9a 2b        LDA *R43
7fb3: 1a 75        SUB R117,A
7fb5: 0a           RETS
7fb6: 52 0c        MOV %>C,B
7fb8: aa 80 14     LDA @>8014(B)
7fbb: ab 1f ff     STA @>1FFF(B)
7fbe: ca f8        DJNZ B,$7FB8
7fc0: 88 85 1f 29  MOVD %>851F,R41
7fc4: 9a 29        LDA *R41
7fc6: e1 3d        JN $8005
7fc8: 8b 20 0a     STA @>200A
7fcb: db 29        DECD R41
7fcd: 9a 29        LDA *R41
7fcf: 8b 20 09     STA @>2009
7fd2: db 29        DECD R41
7fd4: 9a 29        LDA *R41
7fd6: 8b 20 08     STA @>2008
7fd9: db 29        DECD R41
7fdb: d8 29        PUSH R41
7fdd: d8 28        PUSH R40
7fdf: 88 20 0b 01  MOVD %>200B,R1
7fe3: 8e 56 9d     CALL $569D
7fe6: 8e 58 76     CALL $5876
7fe9: 8e 4d 9a     CALL $4D9A
7fec: d9 28        POP R40
7fee: d9 29        POP R41
7ff0: 9a 29        LDA *R41
7ff2: 1d 76        CMP R118,A
7ff4: e2 0b        JEQ $8001
7ff6: 7d 37 76     CMP %>37,R118
7ff9: e2 17        JEQ $8012
7ffb: d8 29        PUSH R41
7ffd: d8 28        PUSH R40
7fff: e0 e8        JMP $7FE9
8001: db 29        DECD R41
8003: e0 bf        JMP $7FC4
8005: 88 7d 8d 01  MOVD %>7D8D,R1
8009: 8e 56 9d     CALL $569D
800c: 8e 58 76     CALL $5876
800f: 8c 7c a2     BR $7CA2
8012: 8c 7a e8     BR $7AE8
8015: 50           Illegal Opcode
8016: 52 45        MOV %>45,B
8018: 53 53        AND %>53,B
801a: 3a 20        SUB R32,B
801c: 20           Illegal Opcode
801d: 20           Illegal Opcode
801e: 20           Illegal Opcode
801f: 20           Illegal Opcode
8020: 20           Illegal Opcode
8021: 88 00 07 2f  MOVD %>0007,R47
8025: 88 f6 ae 01  MOVD %>F6AE,R1
8029: 8e f0 75     CALL $F075
802c: 77 80 2e 0c  BTJZ %>80,R46,$803C
8030: 88 40 80 01  MOVD %>4080,R1
8034: 8e f0 3f     CALL $F03F
8037: e6 d9        JNZ $8012
8039: 8c 7c a2     BR $7CA2
803c: 88 83 f6 01  MOVD %>83F6,R1
8040: 8c 83 6b     BR $836B
8043: 12 34        MOV R52,A
8045: 23 0f        AND %>F,A
8047: 72 1a 2d     MOV %>1A,R45
804a: 2d 01        CMP %>1,A
804c: e2 75        JEQ $80C3
804e: 8c 7c 17     BR $7C17
8051: 12 34        MOV R52,A
8053: 23 0f        AND %>F,A
8055: 2d 01        CMP %>1,A
8057: e2 67        JEQ $80C0
8059: 8c 7c 17     BR $7C17
805c: b0           CLRC
805d: 7e 01 24     DAC %>1,R36
8060: 7e 00 25     DAC %>0,R37
8063: 7e 00 26     DAC %>0,R38
8066: 52 0c        MOV %>C,B
8068: aa 7d 99     LDA @>7D99(B)
806b: ab 00 47     STA @>0047(B)
806e: ca f8        DJNZ B,$8068
8070: 52 03        MOV %>3,B
8072: aa 00 23     LDA @>0023(B)
8075: b7           SWAP A
8076: 23 0f        AND %>F,A
8078: e6 13        JNZ $808D
807a: aa 00 23     LDA @>0023(B)
807d: 23 0f        AND %>F,A
807f: e6 1a        JNZ $809B
8081: ca ef        DJNZ B,$8072
8083: 52 01        MOV %>1,B
8085: e0 14        JMP $809B
8087: aa 00 23     LDA @>0023(B)
808a: b7           SWAP A
808b: 23 0f        AND %>F,A
808d: 28 30        ADD %>30,A
808f: ce           RL B
8090: c4           INV B
8091: ab ff 55     STA @>FF55(B)
8094: c4           INV B
8095: cc           RR B
8096: aa 00 23     LDA @>0023(B)
8099: 23 0f        AND %>F,A
809b: 28 30        ADD %>30,A
809d: ce           RL B
809e: c4           INV B
809f: ab ff 56     STA @>FF56(B)
80a2: c4           INV B
80a3: cc           RR B
80a4: ca e1        DJNZ B,$8087
80a6: 88 00 53 01  MOVD %>0053,R1
80aa: 8e 56 9d     CALL $569D
80ad: 8a 20 e1     LDA @>20E1
80b0: 24 80        OR %>80,A
80b2: 8b 20 e1     STA @>20E1
80b5: 8a 20 e2     LDA @>20E2
80b8: 24 80        OR %>80,A
80ba: 8b 20 e2     STA @>20E2
80bd: 8e 58 76     CALL $5876
80c0: 72 34 2d     MOV %>34,R45
80c3: a2 ff 02     MOVP %>FF,P2
80c6: 52 8c        MOV %>8C,B
80c8: 22 9f        MOV %>9F,A
80ca: 8e f0 6c     CALL $F06C
80cd: 88 40 80 01  MOVD %>4080,R1
80d1: 8e f0 3f     CALL $F03F
80d4: e6 04        JNZ $80DA
80d6: da 2d ed     DJNZ R45,$80C6
80d9: 0a           RETS
80da: 72 37 76     MOV %>37,R118
80dd: 0a           RETS
80de: 88 21 2a 2b  MOVD %>212A,R43
80e2: 88 00 6e 2d  MOVD %>006E,R45
80e6: 8c f0 4e     BR $F04E
80e9: 22 ff        MOV %>FF,A
80eb: 52 6e        MOV %>6E,B
80ed: ab 20 bc     STA @>20BC(B)
80f0: ca fb        DJNZ B,$80ED
80f2: 0a           RETS
80f3: 72 05 33     MOV %>5,R51
80f6: b8           PUSH A
80f7: 72 0a 2d     MOV %>A,R45
80fa: b9           POP A
80fb: b8           PUSH A
80fc: d0 2b        MOV A,R43
80fe: 22 ff        MOV %>FF,A
8100: b8           PUSH A
8101: b9           POP A
8102: b3           INC A
8103: b0           CLRC
8104: dd 2b        RRC R43
8106: e3 0a        JHS $8112
8108: e6 f8        JNZ $8102
810a: da 2d ed     DJNZ R45,$80FA
810d: da 33 e7     DJNZ R51,$80F7
8110: b9           POP A
8111: 0a           RETS
8112: b8           PUSH A
8113: 8e 56 2c     CALL $562C
8116: e0 e9        JMP $8101
8118: 8c 7a e8     BR $7AE8
811b: 8e 80 e9     CALL $80E9
811e: 8e 58 9a     CALL $589A
8121: 8e 80 51     CALL $8051
8124: 8e 80 de     CALL $80DE
8127: 7d 37 76     CMP %>37,R118
812a: e2 ec        JEQ $8118
812c: 88 82 69 75  MOVD %>8269,R117
8130: 8e 93 75     CALL $9375
8133: 8e 56 b2     CALL $56B2
8136: 88 82 75 01  MOVD %>8275,R1
813a: 8e 56 9d     CALL $569D
813d: 22 49        MOV %>49,A
813f: 8e 80 f3     CALL $80F3
8142: 22 1f        MOV %>1F,A
8144: c5           CLR B
8145: 8e 57 51     CALL $5751
8148: 8a 20 e1     LDA @>20E1
814b: 24 20        OR %>20,A
814d: 8b 20 e1     STA @>20E1
8150: 72 05 33     MOV %>5,R51
8153: 72 09 2d     MOV %>9,R45
8156: 76 ff 33 03  BTJO %>FF,R51,$815D
815a: 72 0a 2d     MOV %>A,R45
815d: 22 09        MOV %>9,A
815f: 8e 56 2c     CALL $562C
8162: da 2d f8     DJNZ R45,$815D
8165: d2 33        DEC R51
8167: e5 ea        JPZ $8153
8169: 72 05 33     MOV %>5,R51
816c: 72 01 2d     MOV %>1,R45
816f: 22 0a        MOV %>A,A
8171: 8e 56 2c     CALL $562C
8174: da 33 f8     DJNZ R51,$816F
8177: 8e 58 9a     CALL $589A
817a: 8e 80 51     CALL $8051
817d: 8e 80 de     CALL $80DE
8180: 7d 37 76     CMP %>37,R118
8183: e2 93        JEQ $8118
8185: 88 82 84 75  MOVD %>8284,R117
8189: 8e 93 75     CALL $9375
818c: 8e 56 b2     CALL $56B2
818f: 88 82 90 01  MOVD %>8290,R1
8193: 8e 56 9d     CALL $569D
8196: 22 36        MOV %>36,A
8198: 8e 80 f3     CALL $80F3
819b: 52 1f        MOV %>1F,B
819d: b5           CLR A
819e: 8e 57 51     CALL $5751
81a1: 72 05 33     MOV %>5,R51
81a4: 72 09 2d     MOV %>9,R45
81a7: 76 ff 33 03  BTJO %>FF,R51,$81AE
81ab: 72 0a 2d     MOV %>A,R45
81ae: 22 08        MOV %>8,A
81b0: 8e 56 2c     CALL $562C
81b3: da 2d f8     DJNZ R45,$81AE
81b6: d2 33        DEC R51
81b8: e5 ea        JPZ $81A4
81ba: 8e 58 9a     CALL $589A
81bd: 8e 80 51     CALL $8051
81c0: 8e 80 de     CALL $80DE
81c3: 7d 37 76     CMP %>37,R118
81c6: e2 7a        JEQ $8242
81c8: 88 82 9f 75  MOVD %>829F,R117
81cc: 8e 93 75     CALL $9375
81cf: 8e 56 b2     CALL $56B2
81d2: 88 82 ab 01  MOVD %>82AB,R1
81d6: 8e 56 9d     CALL $569D
81d9: 72 01 33     MOV %>1,R51
81dc: 22 7f        MOV %>7F,A
81de: 8e 80 f6     CALL $80F6
81e1: 52 01        MOV %>1,B
81e3: 22 01        MOV %>1,A
81e5: 8e 57 51     CALL $5751
81e8: 72 01 33     MOV %>1,R51
81eb: 72 09 2d     MOV %>9,R45
81ee: 22 08        MOV %>8,A
81f0: 8e 56 2c     CALL $562C
81f3: da 2d f8     DJNZ R45,$81EE
81f6: 72 09 2d     MOV %>9,R45
81f9: 22 09        MOV %>9,A
81fb: 8e 56 2c     CALL $562C
81fe: da 2d f8     DJNZ R45,$81F9
8201: 8a 21 08     LDA @>2108
8204: 24 20        OR %>20,A
8206: 8b 21 08     STA @>2108
8209: 8a 20 bd     LDA @>20BD
820c: 24 03        OR %>3,A
820e: 8b 20 bd     STA @>20BD
8211: 8a 20 bf     LDA @>20BF
8214: 24 23        OR %>23,A
8216: 8b 20 bf     STA @>20BF
8219: 8a 20 c1     LDA @>20C1
821c: 24 20        OR %>20,A
821e: 8b 20 c1     STA @>20C1
8221: 8a 20 cf     LDA @>20CF
8224: 24 23        OR %>23,A
8226: 8b 20 cf     STA @>20CF
8229: 8a 20 d1     LDA @>20D1
822c: 24 23        OR %>23,A
822e: 8b 20 d1     STA @>20D1
8231: 8a 20 df     LDA @>20DF
8234: 24 22        OR %>22,A
8236: 8b 20 df     STA @>20DF
8239: 8e 58 9a     CALL $589A
823c: 8e 80 51     CALL $8051
823f: 7d 37 76     CMP %>37,R118
8242: e2 14        JEQ $8258
8244: 8e 80 e9     CALL $80E9
8247: 8e 58 9a     CALL $589A
824a: 8e 80 51     CALL $8051
824d: 8e 80 de     CALL $80DE
8250: 7d 37 76     CMP %>37,R118
8253: e2 03        JEQ $8258
8255: 8c 7c 57     BR $7C57
8258: 8c 7a e8     BR $7AE8
825b: 68           ADD B,A
825c: 68           ADD B,A
825d: 68           ADD B,A
825e: 68           ADD B,A
825f: 68           ADD B,A
8260: 68           ADD B,A
8261: 68           ADD B,A
8262: 68           ADD B,A
8263: 68           ADD B,A
8264: 68           ADD B,A
8265: 68           ADD B,A
8266: 68           ADD B,A
8267: 68           ADD B,A
8268: 68           ADD B,A
8269: 68           ADD B,A
826a: 68           ADD B,A
826b: 68           ADD B,A
826c: 68           ADD B,A
826d: 68           ADD B,A
826e: 68           ADD B,A
826f: 68           ADD B,A
8270: 68           ADD B,A
8271: 68           ADD B,A
8272: 68           ADD B,A
8273: 68           ADD B,A
8274: 68           ADD B,A
8275: 68           ADD B,A
8276: 76 76 76 76  BTJO %>76,R118,$82F0
827a: 76 76 76 76  BTJO %>76,R118,$82F4
827e: 76 76 76 76  BTJO %>76,R118,$82F8
8282: 76 76 76 76  BTJO %>76,R118,$82FC
8286: 76 76 76 76  BTJO %>76,R118,$8300
828a: 76 76 76 76  BTJO %>76,R118,$8304
828e: 76 76 76 58  BTJO %>76,R118,$82EA
8292: 58 58        ADD %>58,B
8294: 58 58        ADD %>58,B
8296: 58 58        ADD %>58,B
8298: 58 58        ADD %>58,B
829a: 58 58        ADD %>58,B
829c: 58 58        ADD %>58,B
829e: 58 58        ADD %>58,B
82a0: 58 58        ADD %>58,B
82a2: 58 58        ADD %>58,B
82a4: 58 58        ADD %>58,B
82a6: 58 58        ADD %>58,B
82a8: 58 58        ADD %>58,B
82aa: 58 58        ADD %>58,B
82ac: 8a 21 2b     LDA @>212B
82af: b8           PUSH A
82b0: 22 0a        MOV %>A,A
82b2: 8b 21 2b     STA @>212B
82b5: 8e 54 f0     CALL $54F0
82b8: 8e 80 43     CALL $8043
82bb: 7d 37 76     CMP %>37,R118
82be: e2 10        JEQ $82D0
82c0: 8a 21 2b     LDA @>212B
82c3: e6 f0        JNZ $82B5
82c5: b9           POP A
82c6: b3           INC A
82c7: 8b 21 2b     STA @>212B
82ca: 8e 54 f0     CALL $54F0
82cd: 8c 80 05     BR $8005
82d0: b9           POP A
82d1: b3           INC A
82d2: 8b 21 2b     STA @>212B
82d5: 8e 54 f0     CALL $54F0
82d8: 8c 7a e8     BR $7AE8
82db: 88 10 cf 01  MOVD %>10CF,R1
82df: 8e f0 78     CALL $F078
82e2: c5           CLR B
82e3: b5           CLR A
82e4: 8e f0 60     CALL $F060
82e7: 72 a5 77     MOV %>A5,R119
82ea: 8e 83 4e     CALL $834E
82ed: 8e 83 24     CALL $8324
82f0: e6 23        JNZ $8315
82f2: 88 40 80 01  MOVD %>4080,R1
82f6: 8e f0 3f     CALL $F03F
82f9: e6 23        JNZ $831E
82fb: 72 5a 77     MOV %>5A,R119
82fe: 8e 83 4e     CALL $834E
8301: 8e 83 24     CALL $8324
8304: e6 0f        JNZ $8315
8306: 88 40 80 01  MOVD %>4080,R1
830a: 8e f0 3f     CALL $F03F
830d: e6 0f        JNZ $831E
830f: 8e 55 19     CALL $5519
8312: 8c 58 9a     BR $589A
8315: 8e 55 19     CALL $5519
8318: 88 83 ea 01  MOVD %>83EA,R1
831c: e0 4d        JMP $836B
831e: 8e 55 19     CALL $5519
8321: 8c 7a e8     BR $7AE8
8324: b5           CLR A
8325: 72 ff 2d     MOV %>FF,R45
8328: b8           PUSH A
8329: 52 02        MOV %>2,B
832b: 8e f0 60     CALL $F060
832e: 8e f0 63     CALL $F063
8331: c9           POP B
8332: 13 2d        AND R45,A
8334: 42 77 2c     MOV R119,R44
8337: 43 2d 2c     AND R45,R44
833a: 1d 2c        CMP R44,A
833c: e6 0f        JNZ $834D
833e: de 77        RL R119
8340: 62           MOV B,A
8341: b3           INC A
8342: 2d 80        CMP %>80,A
8344: e6 03        JNZ $8349
8346: 72 0f 2d     MOV %>F,R45
8349: 2d c0        CMP %>C0,A
834b: e6 db        JNZ $8328
834d: 0a           RETS
834e: b5           CLR A
834f: b8           PUSH A
8350: 52 02        MOV %>2,B
8352: 8e f0 60     CALL $F060
8355: 72 40 2d     MOV %>40,R45
8358: 12 77        MOV R119,A
835a: de 77        RL R119
835c: 52 01        MOV %>1,B
835e: 8e f0 60     CALL $F060
8361: da 2d f4     DJNZ R45,$8358
8364: b9           POP A
8365: e1 e6        JN $834D
8367: 28 40        ADD %>40,A
8369: e0 e4        JMP $834F
836b: b8           PUSH A
836c: c8           PUSH B
836d: 8e 7c 57     CALL $7C57
8370: c9           POP B
8371: b9           POP A
8372: 8e 56 9d     CALL $569D
8375: 8a 20 cf     LDA @>20CF
8378: 24 80        OR %>80,A
837a: 8b 20 cf     STA @>20CF
837d: 8a 20 d6     LDA @>20D6
8380: 24 80        OR %>80,A
8382: 8b 20 d6     STA @>20D6
8385: 8e 58 76     CALL $5876
8388: 8e 4d 9a     CALL $4D9A
838b: 7d 31 76     CMP %>31,R118
838e: e6 f8        JNZ $8388
8390: 52 02        MOV %>2,B
8392: 22 26        MOV %>26,A
8394: 8e f0 60     CALL $F060
8397: 8a 20 cf     LDA @>20CF
839a: 24 20        OR %>20,A
839c: 8b 20 cf     STA @>20CF
839f: 52 01        MOV %>1,B
83a1: 8e f0 60     CALL $F060
83a4: 8e 4d 9a     CALL $4D9A
83a7: 7d 37 76     CMP %>37,R118
83aa: e6 f8        JNZ $83A4
83ac: 8c 7a e8     BR $7AE8
83af: 46 41 49 4c  BTJO R65,R73,$83FF
83b3: 20           Illegal Opcode
83b4: 43 50 55     AND R80,R85
83b7: 20           Illegal Opcode
83b8: 52 4f        MOV %>4F,B
83ba: 4d 46 41     CMP R70,R65
83bd: 49 4c 20     ADC R76,R32
83c0: 43 50 55     AND R80,R85
83c3: 20           Illegal Opcode
83c4: 52 41        MOV %>41,B
83c6: 4d 46 41     CMP R70,R65
83c9: 49 4c 20     ADC R76,R32
83cc: 53 59        AND %>59,B
83ce: 53 20        AND %>20,B
83d0: 52 4f        MOV %>4F,B
83d2: 4d 46 41     CMP R70,R65
83d5: 49 4c 20     ADC R76,R32
83d8: 53 59        AND %>59,B
83da: 53 20        AND %>20,B
83dc: 52 41        MOV %>41,B
83de: 4d 46 41     CMP R70,R65
83e1: 49 4c 20     ADC R76,R32
83e4: 4c 43 44     MPY R67,R68
83e7: 20           Illegal Opcode
83e8: 43 54 4c     AND R84,R76
83eb: 46 41 49 4c  BTJO R65,R73,$843B
83ef: 20           Illegal Opcode
83f0: 41           Illegal Opcode
83f1: 50           Illegal Opcode
83f2: 44 20 54     OR R32,R84
83f5: 4d 52 00     CMP R82,R0
83f8: 22 2b        MOV %>2B,A
83fa: 15 08        XOR R8,A
83fc: ab 17 2a     STA @>172A(B)
83ff: ab 19 00     STA @>1900(B)
8402: ab 1a 00     STA @>1A00(B)
8405: ab 1b 00     STA @>1B00(B)
8408: ab 1c 00     STA @>1C00(B)
840b: ab 1d 00     STA @>1D00(B)
840e: ab 1e 00     STA @>1E00(B)
8411: ab 1f 22     STA @>1F22(B)
8414: ab 20 22     STA @>2022(B)
8417: ab 21 08     STA @>2108(B)
841a: ab 22 08     STA @>2208(B)
841d: ab 23 2a     STA @>232A(B)
8420: ab 24 2a     STA @>242A(B)
8423: ab 25 00     STA @>2500(B)
8426: ab 2a 00     STA @>2A00(B)
8429: ab 2c 00     STA @>2C00(B)
842c: ab 2e 22     STA @>2E22(B)
842f: ab 30 08     STA @>3008(B)
8432: ab 32 2a     STA @>322A(B)
8435: ab 34 00     STA @>3400(B)
8438: 00           NOP
8439: 2b 15        SBB %>15,A
843b: 00           NOP
843c: ab 17 00     STA @>1700(B)
843f: ab 19 22     STA @>1922(B)
8442: ab 1a 22     STA @>1A22(B)
8445: ab 1b 08     STA @>1B08(B)
8448: ab 1c 08     STA @>1C08(B)
844b: ab 1d 2a     STA @>1D2A(B)
844e: ab 1e 2a     STA @>1E2A(B)
8451: ab 1f 00     STA @>1F00(B)
8454: ab 20 00     STA @>2000(B)
8457: ab 21 00     STA @>2100(B)
845a: ab 22 00     STA @>2200(B)
845d: ab 23 00     STA @>2300(B)
8460: ab 24 00     STA @>2400(B)
8463: ab 25 22     STA @>2522(B)
8466: ab 2a 08     STA @>2A08(B)
8469: ab 2c 2a     STA @>2C2A(B)
846c: ab 2e 00     STA @>2E00(B)
846f: ab 30 00     STA @>3000(B)
8472: ab 32 00     STA @>3200(B)
8475: ab 34 ff     STA @>34FF(B)
8478: 17 3d 20     BTJZ R61,A,$849B
847b: 20           Illegal Opcode
847c: 0f           Illegal Opcode
847d: 2b 2f        SBB %>2F,A
847f: 2d 27        CMP %>27,A
8481: 44 50 54     OR R80,R84
8484: 2f 30        DSB %>30,A
8486: 20           Illegal Opcode
8487: 20           Illegal Opcode
8488: 37 43 45     BTJZ R67,B,$84D0
848b: 20           Illegal Opcode
848c: 36 52 43     BTJO R82,B,$84D2
848f: 4c 2e 31     MPY R46,R49
8492: 20           Illegal Opcode
8493: 20           Illegal Opcode
8494: 26 32 20     BTJO %>32,A,$84B7
8497: 20           Illegal Opcode
8498: 0e           PUSH ST
8499: 33 20        AND R32,B
849b: 20           Illegal Opcode
849c: 16 2b 20     BTJO R43,A,$84BF
849f: 20           Illegal Opcode
84a0: 15 2d        XOR R45,A
84a2: 20           Illegal Opcode
84a3: 20           Illegal Opcode
84a4: 0d           LDSP
84a5: 36 20 20     BTJO R32,B,$84C8
84a8: 25 35        XOR %>35,A
84aa: 20           Illegal Opcode
84ab: 20           Illegal Opcode
84ac: 2d 34        CMP %>34,A
84ae: 20           Illegal Opcode
84af: 20           Illegal Opcode
84b0: 35 53        XOR R83,B
84b2: 54 4f        OR %>4F,B
84b4: 2b 58        SBB %>58,A
84b6: 32 20        MOV R32,B
84b8: 2c 37        MPY %>37,A
84ba: 20           Illegal Opcode
84bb: 20           Illegal Opcode
84bc: 24 38        OR %>38,A
84be: 20           Illegal Opcode
84bf: 20           Illegal Opcode
84c0: 0c           Illegal Opcode
84c1: 39 20        ADC R32,B
84c3: 20           Illegal Opcode
84c4: 14 2a        OR R42,A
84c6: 20           Illegal Opcode
84c7: 20           Illegal Opcode
84c8: 13 2f        AND R47,A
84ca: 20           Illegal Opcode
84cb: 20           Illegal Opcode
84cc: 33 59        AND R89,B
84ce: 58 20        ADD %>20,B
84d0: 0a           RETS
84d1: 29 20        ADC %>20,A
84d3: 20           Illegal Opcode
84d4: 22 28        MOV %>28,A
84d6: 20           Illegal Opcode
84d7: 20           Illegal Opcode
84d8: 12 25        MOV R37,A
84da: 20           Illegal Opcode
84db: 20           Illegal Opcode
84dc: 21           Illegal Opcode
84dd: 44 57 4e     OR R87,R78
84e0: 31           Illegal Opcode
84e1: 32 4e        MOV R78,B
84e3: 44 09 42     OR R9,R66
84e6: 4b 53 2a     SBB R83,R42
84e9: 2d 2d        CMP %>2D,A
84eb: 29 32        ADC %>32,A
84ed: 28 2d        ADD %>2D,A
84ef: 2d 29        CMP %>29,A
84f1: 55 50        XOR %>50,B
84f3: 20           Illegal Opcode
84f4: 06           DINT
84f5: 54 56        OR %>56,B
84f7: 4d 05 43     CMP R5,R67
84fa: 53 48        AND %>48,B
84fc: 04           Illegal Opcode
84fd: 42 4e 44     MOV R78,R68
8500: 03           Illegal Opcode
8501: 44 45 50     OR R69,R80
8504: 01           IDLE
8505: 53 54        AND %>54,B
8507: 41           Illegal Opcode
8508: 1a 43        SUB R67,A
850a: 4d 50 19     CMP R80,R25
850d: 46 35 20 1e  BTJO R53,R32,$852F
8511: 46 34 20 1d  BTJO R52,R32,$8532
8515: 46 33 20 1c  BTJO R51,R32,$8535
8519: 46 32 20 1b  BTJO R50,R32,$8538
851d: 46 31 20 98  BTJO R49,R32,$84B9
8521: 41           Illegal Opcode
8522: 75 78 05     XOR %>78,R5
8525: 75 79 00     XOR %>79,R0
8528: 74 f8 52     OR %>F8,R82
852b: 05           EINT
852c: 8e 95 81     CALL $9581
852f: 8e f0 1e     CALL $F01E
8532: 98 3f 75     MOVD R63,R117
8535: 78 05 75     ADD %>5,R117
8538: 79 00 74     ADC %>0,R116
853b: f8           TRAP 7
853c: 52 05        MOV %>5,B
853e: 8e 95 81     CALL $9581
8541: 8e f0 39     CALL $F039
8544: e3 04        JHS $854A
8546: 72 02 6f     MOV %>2,R111
8549: fa           TRAP 5
854a: 77 04 32 53  BTJZ %>4,R50,$85A1
854e: 73 fb 32     AND %>FB,R50
8551: 98 47 75     MOVD R71,R117
8554: 78 0a 75     ADD %>A,R117
8557: 79 00 74     ADC %>0,R116
855a: b5           CLR A
855b: 9b 75        STA *R117
855d: 8e 86 c9     CALL $86C9
8560: 8e f0 1e     CALL $F01E
8563: 98 41 75     MOVD R65,R117
8566: 78 05 75     ADD %>5,R117
8569: 79 00 74     ADC %>0,R116
856c: f8           TRAP 7
856d: 52 05        MOV %>5,B
856f: 8e 95 81     CALL $9581
8572: f5           TRAP 10
8573: ef           TRAP 16
8574: 8e 8e a0     CALL $8EA0
8577: 98 41 3d     MOVD R65,R61
857a: 52 03        MOV %>3,B
857c: 8e 8b 32     CALL $8B32
857f: f4           TRAP 11
8580: 8e 46 7c     CALL $467C
8583: ef           TRAP 16
8584: 98 3f 3d     MOVD R63,R61
8587: 52 03        MOV %>3,B
8589: 8e 8b 32     CALL $8B32
858c: f5           TRAP 10
858d: 98 43 75     MOVD R67,R117
8590: f8           TRAP 7
8591: 88 22 83 3d  MOVD %>2283,R61
8595: 8e 8b 30     CALL $8B30
8598: 88 22 8b 3d  MOVD %>228B,R61
859c: 8e 8b 30     CALL $8B30
859f: e0 2a        JMP $85CB
85a1: 98 3f 75     MOVD R63,R117
85a4: 7a 0b 75     SUB %>B,R117
85a7: 7b 00 74     SBB %>0,R116
85aa: 8e 8a 36     CALL $8A36
85ad: 8e f0 15     CALL $F015
85b0: 88 22 8b 3d  MOVD %>228B,R61
85b4: 8e 8b 30     CALL $8B30
85b7: 72 40 60     MOV %>40,R96
85ba: f5           TRAP 10
85bb: 8e 86 bf     CALL $86BF
85be: f8           TRAP 7
85bf: 8e 86 ac     CALL $86AC
85c2: 88 22 83 3d  MOVD %>2283,R61
85c6: 8e 8b 30     CALL $8B30
85c9: e0 46        JMP $8611
85cb: 8e 47 e0     CALL $47E0
85ce: 88 40 01 49  MOVD %>4001,R73
85d2: 8e f0 30     CALL $F030
85d5: f5           TRAP 10
85d6: 8e f0 39     CALL $F039
85d9: e6 16        JNZ $85F1
85db: 98 47 75     MOVD R71,R117
85de: 78 0b 75     ADD %>B,R117
85e1: 79 00 74     ADC %>0,R116
85e4: 9a 75        LDA *R117
85e6: 27 01 08     BTJZ %>1,A,$85F1
85e9: 8e f0 15     CALL $F015
85ec: 72 40 60     MOV %>40,R96
85ef: e0 03        JMP $85F4
85f1: 8e 86 9c     CALL $869C
85f4: 88 22 83 75  MOVD %>2283,R117
85f8: f6           TRAP 9
85f9: d4 60        INV R96
85fb: ef           TRAP 16
85fc: f5           TRAP 10
85fd: 8e 86 b5     CALL $86B5
8600: f8           TRAP 7
8601: 8e 86 ac     CALL $86AC
8604: f4           TRAP 11
8605: ef           TRAP 16
8606: 88 22 83 3d  MOVD %>2283,R61
860a: 8e 8b 30     CALL $8B30
860d: e0 02        JMP $8611
860f: e0 ba        JMP $85CB
8611: 98 3f 75     MOVD R63,R117
8614: 78 05 75     ADD %>5,R117
8617: 79 00 74     ADC %>0,R116
861a: f8           TRAP 7
861b: 52 05        MOV %>5,B
861d: 8e 95 81     CALL $9581
8620: 8e 47 e0     CALL $47E0
8623: 88 bf 01 49  MOVD %>BF01,R73
8627: ef           TRAP 16
8628: f4           TRAP 11
8629: 8e f0 51     CALL $F051
862c: 8e f0 39     CALL $F039
862f: e6 0c        JNZ $863D
8631: 88 22 83 75  MOVD %>2283,R117
8635: f8           TRAP 7
8636: 88 22 8b 3d  MOVD %>228B,R61
863a: 8e 8b 30     CALL $8B30
863d: f4           TRAP 11
863e: 98 41 75     MOVD R65,R117
8641: 78 05 75     ADD %>5,R117
8644: 79 00 74     ADC %>0,R116
8647: f8           TRAP 7
8648: 52 05        MOV %>5,B
864a: 8e 95 81     CALL $9581
864d: 8e f0 39     CALL $F039
8650: e2 0b        JEQ $865D
8652: 8e f0 15     CALL $F015
8655: 88 40 01 61  MOVD %>4001,R97
8659: ef           TRAP 16
865a: f5           TRAP 10
865b: e0 b2        JMP $860F
865d: 88 22 83 75  MOVD %>2283,R117
8661: f8           TRAP 7
8662: 8e 47 ff     CALL $47FF
8665: 98 43 3d     MOVD R67,R61
8668: 8e 8b 30     CALL $8B30
866b: 88 22 83 75  MOVD %>2283,R117
866f: f8           TRAP 7
8670: 88 22 8b 75  MOVD %>228B,R117
8674: f6           TRAP 9
8675: d4 48        INV R72
8677: ef           TRAP 16
8678: f5           TRAP 10
8679: 8e 47 ff     CALL $47FF
867c: 98 45 3d     MOVD R69,R61
867f: 8e 8b 30     CALL $8B30
8682: 8e 86 c9     CALL $86C9
8685: f5           TRAP 10
8686: 8e 86 b5     CALL $86B5
8689: f8           TRAP 7
868a: 8e 86 ac     CALL $86AC
868d: f4           TRAP 11
868e: f1           TRAP 14
868f: f4           TRAP 11
8690: d4 48        INV R72
8692: ef           TRAP 16
8693: 8e 47 ff     CALL $47FF
8696: 98 47 3d     MOVD R71,R61
8699: 8c 8b 30     BR $8B30
869c: 88 22 93 75  MOVD %>2293,R117
86a0: f8           TRAP 7
86a1: d4 60        INV R96
86a3: 88 22 83 75  MOVD %>2283,R117
86a7: f6           TRAP 9
86a8: f1           TRAP 14
86a9: 8e 7a 23     CALL $7A23
86ac: 8e 51 1f     CALL $511F
86af: 8e 42 1a     CALL $421A
86b2: 8c 50 7e     BR $507E
86b5: 98 41 75     MOVD R65,R117
86b8: 7a 1e 75     SUB %>1E,R117
86bb: 7b 00 74     SBB %>0,R116
86be: 0a           RETS
86bf: 98 43 75     MOVD R67,R117
86c2: 7a 1e 75     SUB %>1E,R117
86c5: 7b 00 74     SBB %>0,R116
86c8: 0a           RETS
86c9: 98 41 75     MOVD R65,R117
86cc: 78 05 75     ADD %>5,R117
86cf: 79 00 74     ADC %>0,R116
86d2: f8           TRAP 7
86d3: 52 05        MOV %>5,B
86d5: 8e 95 81     CALL $9581
86d8: 8e 47 e0     CALL $47E0
86db: 88 40 01 49  MOVD %>4001,R73
86df: ef           TRAP 16
86e0: 8e f0 1e     CALL $F01E
86e3: 98 3f 75     MOVD R63,R117
86e6: 78 05 75     ADD %>5,R117
86e9: 79 00 74     ADC %>0,R116
86ec: f8           TRAP 7
86ed: 52 05        MOV %>5,B
86ef: 8e 95 81     CALL $9581
86f2: d4 60        INV R96
86f4: ef           TRAP 16
86f5: 0a           RETS
86f6: 8e 8a 33     CALL $8A33
86f9: 76 ff 61 15  BTJO %>FF,R97,$8712
86fd: 98 43 75     MOVD R67,R117
8700: f8           TRAP 7
8701: 98 3f 75     MOVD R63,R117
8704: f6           TRAP 9
8705: ef           TRAP 16
8706: d4 60        INV R96
8708: 8e f0 1e     CALL $F01E
870b: 98 41 75     MOVD R65,R117
870e: f8           TRAP 7
870f: ee           TRAP 17
8710: e0 45        JMP $8757
8712: 98 43 75     MOVD R67,R117
8715: f8           TRAP 7
8716: 98 3f 75     MOVD R63,R117
8719: f6           TRAP 9
871a: ef           TRAP 16
871b: 88 22 93 75  MOVD %>2293,R117
871f: f6           TRAP 9
8720: d4 48        INV R72
8722: f1           TRAP 14
8723: f5           TRAP 10
8724: 88 22 93 75  MOVD %>2293,R117
8728: f8           TRAP 7
8729: 98 43 75     MOVD R67,R117
872c: f6           TRAP 9
872d: f1           TRAP 14
872e: f5           TRAP 10
872f: 8e 8a 1b     CALL $8A1B
8732: 98 41 75     MOVD R65,R117
8735: f6           TRAP 9
8736: f1           TRAP 14
8737: f4           TRAP 11
8738: ef           TRAP 16
8739: f4           TRAP 11
873a: ee           TRAP 17
873b: 88 22 83 3d  MOVD %>2283,R61
873f: 8e 8b 30     CALL $8B30
8742: 8e 8b 56     CALL $8B56
8745: f5           TRAP 10
8746: 88 22 93 75  MOVD %>2293,R117
874a: f8           TRAP 7
874b: 88 22 83 3d  MOVD %>2283,R61
874f: 8e 8b 30     CALL $8B30
8752: 8e 8b 56     CALL $8B56
8755: f4           TRAP 11
8756: ee           TRAP 17
8757: 73 bf 32     AND %>BF,R50
875a: 0a           RETS
875b: 8e 8a 33     CALL $8A33
875e: 8e 8a 1b     CALL $8A1B
8761: 98 41 75     MOVD R65,R117
8764: f6           TRAP 9
8765: d4 48        INV R72
8767: f1           TRAP 14
8768: f5           TRAP 10
8769: 98 47 75     MOVD R71,R117
876c: f8           TRAP 7
876d: 88 22 8b 3d  MOVD %>228B,R61
8771: 8e 8b 30     CALL $8B30
8774: 88 22 93 75  MOVD %>2293,R117
8778: f8           TRAP 7
8779: 88 22 83 3d  MOVD %>2283,R61
877d: 8e 8b 30     CALL $8B30
8780: 8e 8b e3     CALL $8BE3
8783: f4           TRAP 11
8784: f1           TRAP 14
8785: f5           TRAP 10
8786: 88 22 93 75  MOVD %>2293,R117
878a: f8           TRAP 7
878b: 88 22 83 3d  MOVD %>2283,R61
878f: 8e 8b 30     CALL $8B30
8792: 98 47 75     MOVD R71,R117
8795: f8           TRAP 7
8796: 88 22 8b 3d  MOVD %>228B,R61
879a: 8e 8b 30     CALL $8B30
879d: 8e 8c ae     CALL $8CAE
87a0: 98 43 75     MOVD R67,R117
87a3: f6           TRAP 9
87a4: f1           TRAP 14
87a5: f4           TRAP 11
87a6: d4 60        INV R96
87a8: ef           TRAP 16
87a9: 73 bf 32     AND %>BF,R50
87ac: 0a           RETS
87ad: 8e 8a 33     CALL $8A33
87b0: 8e 8a 1b     CALL $8A1B
87b3: 98 41 75     MOVD R65,R117
87b6: f6           TRAP 9
87b7: f1           TRAP 14
87b8: f5           TRAP 10
87b9: 88 22 93 75  MOVD %>2293,R117
87bd: f8           TRAP 7
87be: 88 22 83 3d  MOVD %>2283,R61
87c2: 8e 8b 30     CALL $8B30
87c5: 98 47 75     MOVD R71,R117
87c8: f8           TRAP 7
87c9: d4 60        INV R96
87cb: 88 22 8b 3d  MOVD %>228B,R61
87cf: 8e 8b 30     CALL $8B30
87d2: 8e 8b e3     CALL $8BE3
87d5: f4           TRAP 11
87d6: f1           TRAP 14
87d7: f5           TRAP 10
87d8: 88 22 93 75  MOVD %>2293,R117
87dc: f8           TRAP 7
87dd: 88 22 83 3d  MOVD %>2283,R61
87e1: 8e 8b 30     CALL $8B30
87e4: 98 47 75     MOVD R71,R117
87e7: f8           TRAP 7
87e8: d4 60        INV R96
87ea: 88 22 8b 3d  MOVD %>228B,R61
87ee: 8e 8b 30     CALL $8B30
87f1: 8e 8c ae     CALL $8CAE
87f4: 98 3f 75     MOVD R63,R117
87f7: f6           TRAP 9
87f8: f1           TRAP 14
87f9: d4 60        INV R96
87fb: f4           TRAP 11
87fc: ef           TRAP 16
87fd: 73 bf 32     AND %>BF,R50
8800: 0a           RETS
8801: 8e 8a 33     CALL $8A33
8804: 88 22 83 3d  MOVD %>2283,R61
8808: 8e 8b 30     CALL $8B30
880b: 98 43 75     MOVD R67,R117
880e: f8           TRAP 7
880f: 98 3f 75     MOVD R63,R117
8812: f6           TRAP 9
8813: ef           TRAP 16
8814: f5           TRAP 10
8815: 98 47 75     MOVD R71,R117
8818: f8           TRAP 7
8819: 88 22 8b 3d  MOVD %>228B,R61
881d: 8e 8b 30     CALL $8B30
8820: 8e 8b e3     CALL $8BE3
8823: f4           TRAP 11
8824: ee           TRAP 17
8825: f5           TRAP 10
8826: 88 22 93 75  MOVD %>2293,R117
882a: f6           TRAP 9
882b: 98 43 75     MOVD R67,R117
882e: f8           TRAP 7
882f: f1           TRAP 14
8830: f4           TRAP 11
8831: ef           TRAP 16
8832: f5           TRAP 10
8833: 8e 8a 1b     CALL $8A1B
8836: f4           TRAP 11
8837: ee           TRAP 17
8838: d4 60        INV R96
883a: 73 bf 32     AND %>BF,R50
883d: 0a           RETS
883e: 98 47 75     MOVD R71,R117
8841: 78 26 75     ADD %>26,R117
8844: 79 00 74     ADC %>0,R116
8847: 9a 75        LDA *R117
8849: 26 02 1e     BTJO %>2,A,$886A
884c: 8e f0 15     CALL $F015
884f: 88 22 93 3d  MOVD %>2293,R61
8853: 8e 8b 30     CALL $8B30
8856: 8e 89 8f     CALL $898F
8859: 12 61        MOV R97,A
885b: e6 10        JNZ $886D
885d: 88 22 93 3d  MOVD %>2293,R61
8861: 8e 8b 30     CALL $8B30
8864: 98 45 3d     MOVD R69,R61
8867: 8e 8b 30     CALL $8B30
886a: 8c 89 11     BR $8911
886d: d5 77        CLR R119
886f: 7d 20 77     CMP %>20,R119
8872: e7 04        JL $8878
8874: 72 07 6f     MOV %>7,R111
8877: fa           TRAP 5
8878: d3 77        INC R119
887a: 88 22 93 75  MOVD %>2293,R117
887e: f8           TRAP 7
887f: 88 22 83 3d  MOVD %>2283,R61
8883: 8e 8b 30     CALL $8B30
8886: 98 47 75     MOVD R71,R117
8889: f8           TRAP 7
888a: 88 22 8b 3d  MOVD %>228B,R61
888e: 8e 8b 30     CALL $8B30
8891: 8e 8c ae     CALL $8CAE
8894: f5           TRAP 10
8895: 8e 89 23     CALL $8923
8898: 8e f0 1e     CALL $F01E
889b: f1           TRAP 14
889c: 8e f0 1b     CALL $F01B
889f: 8e f0 54     CALL $F054
88a2: f5           TRAP 10
88a3: 8e f0 51     CALL $F051
88a6: 88 22 93 75  MOVD %>2293,R117
88aa: f8           TRAP 7
88ab: 8e 8b 28     CALL $8B28
88ae: ef           TRAP 16
88af: f4           TRAP 11
88b0: f1           TRAP 14
88b1: f5           TRAP 10
88b2: 8e 89 19     CALL $8919
88b5: f4           TRAP 11
88b6: 8e f0 1b     CALL $F01B
88b9: ee           TRAP 17
88ba: 98 47 75     MOVD R71,R117
88bd: f6           TRAP 9
88be: f1           TRAP 14
88bf: f4           TRAP 11
88c0: f1           TRAP 14
88c1: 8e f0 54     CALL $F054
88c4: 8e 89 3d     CALL $893D
88c7: 8e f0 1e     CALL $F01E
88ca: 88 22 93 75  MOVD %>2293,R117
88ce: f8           TRAP 7
88cf: f1           TRAP 14
88d0: 8e f0 54     CALL $F054
88d3: d4 48        INV R72
88d5: ef           TRAP 16
88d6: 98 41 75     MOVD R65,R117
88d9: f6           TRAP 9
88da: ef           TRAP 16
88db: f4           TRAP 11
88dc: ee           TRAP 17
88dd: f5           TRAP 10
88de: 88 22 93 75  MOVD %>2293,R117
88e2: f6           TRAP 9
88e3: ef           TRAP 16
88e4: 88 22 93 3d  MOVD %>2293,R61
88e8: 8e 8b 30     CALL $8B30
88eb: f4           TRAP 11
88ec: 12 61        MOV R97,A
88ee: e2 13        JEQ $8903
88f0: 12 49        MOV R73,A
88f2: e2 0f        JEQ $8903
88f4: 12 48        MOV R72,A
88f6: e5 01        JPZ $88F9
88f8: b4           INV A
88f9: 2d 3a        CMP %>3A,A
88fb: e7 06        JL $8903
88fd: e6 0f        JNZ $890E
88ff: 76 f0 49 0b  BTJO %>F0,R73,$890E
8903: 88 22 93 75  MOVD %>2293,R117
8907: f8           TRAP 7
8908: 73 bf 32     AND %>BF,R50
890b: 8c 8a da     BR $8ADA
890e: 8c 88 6f     BR $886F
8911: 73 bf 32     AND %>BF,R50
8914: 98 45 75     MOVD R69,R117
8917: f8           TRAP 7
8918: 0a           RETS
8919: 98 43 75     MOVD R67,R117
891c: f8           TRAP 7
891d: 98 3f 75     MOVD R63,R117
8920: f6           TRAP 9
8921: ef           TRAP 16
8922: 0a           RETS
8923: 88 22 93 75  MOVD %>2293,R117
8927: f8           TRAP 7
8928: 88 22 83 3d  MOVD %>2283,R61
892c: 8e 8b 30     CALL $8B30
892f: 98 47 75     MOVD R71,R117
8932: f8           TRAP 7
8933: 88 22 8b 3d  MOVD %>228B,R61
8937: 8e 8b 30     CALL $8B30
893a: 8c 8b e3     BR $8BE3
893d: f5           TRAP 10
893e: 8e 89 19     CALL $8919
8941: f4           TRAP 11
8942: 8e f0 1b     CALL $F01B
8945: ee           TRAP 17
8946: f5           TRAP 10
8947: 98 43 75     MOVD R67,R117
894a: f8           TRAP 7
894b: 88 22 93 75  MOVD %>2293,R117
894f: f6           TRAP 9
8950: f1           TRAP 14
8951: f4           TRAP 11
8952: ef           TRAP 16
8953: f5           TRAP 10
8954: 8e 8a 1b     CALL $8A1B
8957: 98 41 75     MOVD R65,R117
895a: f6           TRAP 9
895b: f1           TRAP 14
895c: f4           TRAP 11
895d: ef           TRAP 16
895e: 0a           RETS
895f: 8e 89 19     CALL $8919
8962: d4 60        INV R96
8964: 98 43 75     MOVD R67,R117
8967: f6           TRAP 9
8968: 8e f0 1b     CALL $F01B
896b: ee           TRAP 17
896c: 88 22 83 3d  MOVD %>2283,R61
8970: 8e 8b 30     CALL $8B30
8973: 8e 47 e0     CALL $47E0
8976: 88 40 01 49  MOVD %>4001,R73
897a: 98 47 75     MOVD R71,R117
897d: f8           TRAP 7
897e: ee           TRAP 17
897f: 88 22 8b 3d  MOVD %>228B,R61
8983: 8e 8b 30     CALL $8B30
8986: 8e 8c 77     CALL $8C77
8989: 73 bf 32     AND %>BF,R50
898c: 8c 8a da     BR $8ADA
898f: 72 00 77     MOV %>0,R119
8992: 98 47 75     MOVD R71,R117
8995: f8           TRAP 7
8996: 8e 8b 28     CALL $8B28
8999: ee           TRAP 17
899a: 8e 8b 28     CALL $8B28
899d: ef           TRAP 16
899e: f5           TRAP 10
899f: 8e 89 19     CALL $8919
89a2: f4           TRAP 11
89a3: f1           TRAP 14
89a4: 8e 47 e0     CALL $47E0
89a7: 88 40 02 49  MOVD %>4002,R73
89ab: 8e f0 1b     CALL $F01B
89ae: ee           TRAP 17
89af: f5           TRAP 10
89b0: 8e f0 15     CALL $F015
89b3: 72 40 60     MOV %>40,R96
89b6: 98 47 75     MOVD R71,R117
89b9: 78 29 75     ADD %>29,R117
89bc: 79 00 74     ADC %>0,R116
89bf: 9a 75        LDA *R117
89c1: 27 01 04     BTJZ %>1,A,$89C8
89c4: 98 41 75     MOVD R65,R117
89c7: f8           TRAP 7
89c8: 98 3f 75     MOVD R63,R117
89cb: f6           TRAP 9
89cc: d4 60        INV R96
89ce: ef           TRAP 16
89cf: f4           TRAP 11
89d0: d4 48        INV R72
89d2: ef           TRAP 16
89d3: f5           TRAP 10
89d4: 8e 89 19     CALL $8919
89d7: 98 47 75     MOVD R71,R117
89da: f6           TRAP 9
89db: f1           TRAP 14
89dc: 88 22 93 75  MOVD %>2293,R117
89e0: f6           TRAP 9
89e1: f1           TRAP 14
89e2: 8e 47 e0     CALL $47E0
89e5: 88 40 12 49  MOVD %>4012,R73
89e9: 8e f0 1b     CALL $F01B
89ec: ee           TRAP 17
89ed: f4           TRAP 11
89ee: d4 60        INV R96
89f0: ef           TRAP 16
89f1: f5           TRAP 10
89f2: e0 02        JMP $89F6
89f4: e0 9c        JMP $8992
89f6: 8e 89 19     CALL $8919
89f9: 98 47 75     MOVD R71,R117
89fc: f6           TRAP 9
89fd: 8e f0 1b     CALL $F01B
8a00: ee           TRAP 17
8a01: 98 41 75     MOVD R65,R117
8a04: f6           TRAP 9
8a05: ef           TRAP 16
8a06: f4           TRAP 11
8a07: 8e f0 1b     CALL $F01B
8a0a: ee           TRAP 17
8a0b: 88 22 93 3d  MOVD %>2293,R61
8a0f: 8e 8b 30     CALL $8B30
8a12: 76 01 77 04  BTJO %>1,R119,$8A1A
8a16: d3 77        INC R119
8a18: e0 da        JMP $89F4
8a1a: 0a           RETS
8a1b: 8e 46 7c     CALL $467C
8a1e: 98 47 75     MOVD R71,R117
8a21: 78 29 75     ADD %>29,R117
8a24: 79 00 74     ADC %>0,R116
8a27: 9a 75        LDA *R117
8a29: 27 01 06     BTJZ %>1,A,$8A32
8a2c: 88 22 93 75  MOVD %>2293,R117
8a30: f6           TRAP 9
8a31: ef           TRAP 16
8a32: 0a           RETS
8a33: 98 45 75     MOVD R69,R117
8a36: f8           TRAP 7
8a37: f5           TRAP 10
8a38: 8e 8a 98     CALL $8A98
8a3b: f8           TRAP 7
8a3c: 52 05        MOV %>5,B
8a3e: 8e 95 81     CALL $9581
8a41: 7d 00 61     CMP %>0,R97
8a44: e2 41        JEQ $8A87
8a46: 8e f0 1e     CALL $F01E
8a49: 8e 8a b9     CALL $8AB9
8a4c: f8           TRAP 7
8a4d: 52 05        MOV %>5,B
8a4f: 8e 95 81     CALL $9581
8a52: 7d 00 61     CMP %>0,R97
8a55: e2 30        JEQ $8A87
8a57: ee           TRAP 17
8a58: 88 22 8b 3d  MOVD %>228B,R61
8a5c: 8e 8b 30     CALL $8B30
8a5f: f4           TRAP 11
8a60: 8e f0 15     CALL $F015
8a63: 88 3f 01 61  MOVD %>3F01,R97
8a67: f1           TRAP 14
8a68: 8e f0 1e     CALL $F01E
8a6b: 8e 8a 98     CALL $8A98
8a6e: f8           TRAP 7
8a6f: 52 05        MOV %>5,B
8a71: 8e 95 81     CALL $9581
8a74: ee           TRAP 17
8a75: 88 22 83 3d  MOVD %>2283,R61
8a79: 8e 8b 30     CALL $8B30
8a7c: 8e 8c 77     CALL $8C77
8a7f: 88 22 93 3d  MOVD %>2293,R61
8a83: 8e 8b 30     CALL $8B30
8a86: 0a           RETS
8a87: f4           TRAP 11
8a88: 8e f0 15     CALL $F015
8a8b: 88 3f 01 61  MOVD %>3F01,R97
8a8f: f1           TRAP 14
8a90: 88 22 93 3d  MOVD %>2293,R61
8a94: 8e 8b 30     CALL $8B30
8a97: 0a           RETS
8a98: 8a 21 30     LDA @>2130
8a9b: e6 05        JNZ $8AA2
8a9d: 88 21 84 75  MOVD %>2184,R117
8aa1: 0a           RETS
8aa2: 2d 01        CMP %>1,A
8aa4: e6 05        JNZ $8AAB
8aa6: 88 21 d6 75  MOVD %>21D6,R117
8aaa: 0a           RETS
8aab: 2d 02        CMP %>2,A
8aad: e6 05        JNZ $8AB4
8aaf: 88 22 28 75  MOVD %>2228,R117
8ab3: 0a           RETS
8ab4: 88 22 7a 75  MOVD %>227A,R117
8ab8: 0a           RETS
8ab9: 8a 21 30     LDA @>2130
8abc: e6 05        JNZ $8AC3
8abe: 88 21 81 75  MOVD %>2181,R117
8ac2: 0a           RETS
8ac3: 2d 01        CMP %>1,A
8ac5: e6 05        JNZ $8ACC
8ac7: 88 21 d3 75  MOVD %>21D3,R117
8acb: 0a           RETS
8acc: 2d 02        CMP %>2,A
8ace: e6 05        JNZ $8AD5
8ad0: 88 22 25 75  MOVD %>2225,R117
8ad4: 0a           RETS
8ad5: 88 22 77 75  MOVD %>2277,R117
8ad9: 0a           RETS
8ada: 88 22 83 3d  MOVD %>2283,R61
8ade: 8e 8b 30     CALL $8B30
8ae1: 8e 8a b9     CALL $8AB9
8ae4: f8           TRAP 7
8ae5: 52 05        MOV %>5,B
8ae7: 8e 95 81     CALL $9581
8aea: 7d 00 61     CMP %>0,R97
8aed: e2 32        JEQ $8B21
8aef: 8e f0 1e     CALL $F01E
8af2: 8e 8a 98     CALL $8A98
8af5: f8           TRAP 7
8af6: 52 05        MOV %>5,B
8af8: 8e 95 81     CALL $9581
8afb: 7d 00 61     CMP %>0,R97
8afe: e2 21        JEQ $8B21
8b00: ee           TRAP 17
8b01: 88 22 8b 3d  MOVD %>228B,R61
8b05: 8e 8b 30     CALL $8B30
8b08: 8e 8c 77     CALL $8C77
8b0b: 8e f0 1e     CALL $F01E
8b0e: 8e 8a 98     CALL $8A98
8b11: f8           TRAP 7
8b12: 52 05        MOV %>5,B
8b14: 8e 95 81     CALL $9581
8b17: f1           TRAP 14
8b18: 8e 47 e0     CALL $47E0
8b1b: 88 41 01 49  MOVD %>4101,R73
8b1f: f1           TRAP 14
8b20: 0a           RETS
8b21: 88 22 83 75  MOVD %>2283,R117
8b25: f8           TRAP 7
8b26: e0 f0        JMP $8B18
8b28: 8e 47 e0     CALL $47E0
8b2b: 88 40 01 49  MOVD %>4001,R73
8b2f: 0a           RETS
8b30: 52 08        MOV %>8,B
8b32: aa 00 5f     LDA @>005F(B)
8b35: 9b 3d        STA *R61
8b37: db 3d        DECD R61
8b39: ca f7        DJNZ B,$8B32
8b3b: 0a           RETS
8b3c: 32 60        MOV R96,B
8b3e: e5 01        JPZ $8B41
8b40: c4           INV B
8b41: 5a 40        SUB %>40,B
8b43: e1 0e        JN $8B53
8b45: 5d 06        CMP %>6,B
8b47: e3 09        JHS $8B52
8b49: b5           CLR A
8b4a: ab 00 62     STA @>0062(B)
8b4d: c3           INC B
8b4e: 5d 08        CMP %>8,B
8b50: e7 f8        JL $8B4A
8b52: 0a           RETS
8b53: 8c f0 15     BR $F015
8b56: 88 22 83 75  MOVD %>2283,R117
8b5a: f6           TRAP 9
8b5b: 12 48        MOV R72,A
8b5d: e5 01        JPZ $8B60
8b5f: b4           INV A
8b60: 2d 3f        CMP %>3F,A
8b62: e7 0b        JL $8B6F
8b64: e6 5e        JNZ $8BC4
8b66: 76 f0 49 5a  BTJO %>F0,R73,$8BC4
8b6a: 72 13 35     MOV %>13,R53
8b6d: e0 0e        JMP $8B7D
8b6f: 2d 3e        CMP %>3E,A
8b71: e6 07        JNZ $8B7A
8b73: 72 08 35     MOV %>8,R53
8b76: 76 f0 49 03  BTJO %>F0,R73,$8B7D
8b7a: 72 04 35     MOV %>4,R53
8b7d: 8e f0 15     CALL $F015
8b80: f5           TRAP 10
8b81: 88 40 01 61  MOVD %>4001,R97
8b85: f5           TRAP 10
8b86: 88 22 83 75  MOVD %>2283,R117
8b8a: f8           TRAP 7
8b8b: f1           TRAP 14
8b8c: f4           TRAP 11
8b8d: b0           CLRC
8b8e: 7e 01 49     DAC %>1,R73
8b91: 4d 35 49     CMP R53,R73
8b94: e2 1a        JEQ $8BB0
8b96: 8e f0 51     CALL $F051
8b99: f5           TRAP 10
8b9a: 8e f0 1b     CALL $F01B
8b9d: 76 01 61 02  BTJO %>1,R97,$8BA3
8ba1: d4 60        INV R96
8ba3: ee           TRAP 17
8ba4: 7a 10 71     SUB %>10,R113
8ba7: f4           TRAP 11
8ba8: ef           TRAP 16
8ba9: f5           TRAP 10
8baa: 78 10 71     ADD %>10,R113
8bad: f4           TRAP 11
8bae: e0 d6        JMP $8B86
8bb0: 8e f0 1b     CALL $F01B
8bb3: 76 01 61 02  BTJO %>1,R97,$8BB9
8bb7: d4 60        INV R96
8bb9: ee           TRAP 17
8bba: f4           TRAP 11
8bbb: ef           TRAP 16
8bbc: 88 22 83 75  MOVD %>2283,R117
8bc0: f6           TRAP 9
8bc1: ef           TRAP 16
8bc2: e0 13        JMP $8BD7
8bc4: 8e f0 15     CALL $F015
8bc7: 88 40 01 61  MOVD %>4001,R97
8bcb: ef           TRAP 16
8bcc: 76 80 60 0e  BTJO %>80,R96,$8BDE
8bd0: 12 61        MOV R97,A
8bd2: e2 0a        JEQ $8BDE
8bd4: 8e 45 a1     CALL $45A1
8bd7: 88 22 83 3d  MOVD %>2283,R61
8bdb: 8c 8b 30     BR $8B30
8bde: 88 00 05 6f  MOVD %>0005,R111
8be2: fa           TRAP 5
8be3: 88 22 83 75  MOVD %>2283,R117
8be7: f8           TRAP 7
8be8: 12 61        MOV R97,A
8bea: e2 0e        JEQ $8BFA
8bec: 8e 8c 77     CALL $8C77
8bef: 88 22 93 75  MOVD %>2293,R117
8bf3: f6           TRAP 9
8bf4: 8e f0 1b     CALL $F01B
8bf7: ee           TRAP 17
8bf8: e0 05        JMP $8BFF
8bfa: 88 22 8b 75  MOVD %>228B,R117
8bfe: f8           TRAP 7
8bff: 88 22 83 3d  MOVD %>2283,R61
8c03: 8e 8b 30     CALL $8B30
8c06: 0a           RETS
8c07: 88 22 83 75  MOVD %>2283,R117
8c0b: f8           TRAP 7
8c0c: 12 60        MOV R96,A
8c0e: e5 01        JPZ $8C11
8c10: b4           INV A
8c11: 2d 3f        CMP %>3F,A
8c13: e7 0b        JL $8C20
8c15: e6 4e        JNZ $8C65
8c17: 76 f0 61 4a  BTJO %>F0,R97,$8C65
8c1b: 72 09 35     MOV %>9,R53
8c1e: e0 0e        JMP $8C2E
8c20: 2d 3e        CMP %>3E,A
8c22: e6 07        JNZ $8C2B
8c24: 72 07 35     MOV %>7,R53
8c27: 76 f0 61 03  BTJO %>F0,R97,$8C2E
8c2b: 72 05 35     MOV %>5,R53
8c2e: 8e 47 e0     CALL $47E0
8c31: 8e f0 51     CALL $F051
8c34: f5           TRAP 10
8c35: 88 40 02 49  MOVD %>4002,R73
8c39: 8e f0 1b     CALL $F01B
8c3c: f5           TRAP 10
8c3d: ee           TRAP 17
8c3e: 7a 08 71     SUB %>8,R113
8c41: f4           TRAP 11
8c42: f1           TRAP 14
8c43: f5           TRAP 10
8c44: 7a 08 71     SUB %>8,R113
8c47: f4           TRAP 11
8c48: ef           TRAP 16
8c49: f5           TRAP 10
8c4a: 78 10 71     ADD %>10,R113
8c4d: 88 22 83 75  MOVD %>2283,R117
8c51: f6           TRAP 9
8c52: 8e f0 30     CALL $F030
8c55: d3 61        INC R97
8c57: 4d 35 61     CMP R53,R97
8c5a: e7 e0        JL $8C3C
8c5c: 7a 08 71     SUB %>8,R113
8c5f: 8e f0 30     CALL $F030
8c62: ef           TRAP 16
8c63: e0 0b        JMP $8C70
8c65: 8e 46 0c     CALL $460C
8c68: 8e 47 e0     CALL $47E0
8c6b: 88 bf 01 49  MOVD %>BF01,R73
8c6f: ef           TRAP 16
8c70: 88 22 83 3d  MOVD %>2283,R61
8c74: 8c 8b 30     BR $8B30
8c77: 88 22 8b 75  MOVD %>228B,R117
8c7b: f6           TRAP 9
8c7c: 8e 46 7c     CALL $467C
8c7f: 76 ff 49 04  BTJO %>FF,R73,$8C87
8c83: d5 61        CLR R97
8c85: e0 1f        JMP $8CA6
8c87: 8e f0 39     CALL $F039
8c8a: e2 15        JEQ $8CA1
8c8c: 8e 8b 56     CALL $8B56
8c8f: 88 22 8b 75  MOVD %>228B,R117
8c93: f6           TRAP 9
8c94: f1           TRAP 14
8c95: 88 22 83 3d  MOVD %>2283,R61
8c99: 8e 8b 30     CALL $8B30
8c9c: 8e 8c 07     CALL $8C07
8c9f: e0 05        JMP $8CA6
8ca1: 88 22 83 75  MOVD %>2283,R117
8ca5: f8           TRAP 7
8ca6: 88 22 83 3d  MOVD %>2283,R61
8caa: 8e 8b 30     CALL $8B30
8cad: 0a           RETS
8cae: 8e 46 7c     CALL $467C
8cb1: 88 22 8b 75  MOVD %>228B,R117
8cb5: f6           TRAP 9
8cb6: 12 49        MOV R73,A
8cb8: e2 1e        JEQ $8CD8
8cba: 8e f0 39     CALL $F039
8cbd: e6 08        JNZ $8CC7
8cbf: 88 22 83 75  MOVD %>2283,R117
8cc3: f6           TRAP 9
8cc4: ef           TRAP 16
8cc5: e0 11        JMP $8CD8
8cc7: 88 22 83 75  MOVD %>2283,R117
8ccb: f8           TRAP 7
8ccc: 8e 8b 56     CALL $8B56
8ccf: 88 22 8b 75  MOVD %>228B,R117
8cd3: f6           TRAP 9
8cd4: f1           TRAP 14
8cd5: 8e 46 0c     CALL $460C
8cd8: 88 22 83 3d  MOVD %>2283,R61
8cdc: 8c 8b 30     BR $8B30
8cdf: fb           TRAP 4
8ce0: 88 21 85 75  MOVD %>2185,R117
8ce4: 8e 93 5b     CALL $935B
8ce7: 88 21 d7 75  MOVD %>21D7,R117
8ceb: 8e 93 5b     CALL $935B
8cee: 88 22 29 75  MOVD %>2229,R117
8cf2: 8e 93 5b     CALL $935B
8cf5: 88 22 7b 75  MOVD %>227B,R117
8cf9: 8e 93 5b     CALL $935B
8cfc: 8e 93 81     CALL $9381
8cff: 8c 60 cd     BR $60CD
8d02: fb           TRAP 4
8d03: 77 40 32 13  BTJZ %>40,R50,$8D1A
8d07: 8e 87 5b     CALL $875B
8d0a: 8e 47 ff     CALL $47FF
8d0d: 98 3f 3d     MOVD R63,R61
8d10: 8e 8b 30     CALL $8B30
8d13: 22 10        MOV %>10,A
8d15: 8e 91 17     CALL $9117
8d18: e0 0e        JMP $8D28
8d1a: 8e 91 84     CALL $9184
8d1d: 98 3f 3d     MOVD R63,R61
8d20: 8e 8b 30     CALL $8B30
8d23: 52 10        MOV %>10,B
8d25: 8e 91 6c     CALL $916C
8d28: 8e 47 f4     CALL $47F4
8d2b: 8e 51 1f     CALL $511F
8d2e: d5 33        CLR R51
8d30: 8e 55 6b     CALL $556B
8d33: 8e 58 76     CALL $5876
8d36: 72 05 33     MOV %>5,R51
8d39: 8e 55 6b     CALL $556B
8d3c: 8c 58 94     BR $5894
8d3f: fb           TRAP 4
8d40: 77 40 32 13  BTJZ %>40,R50,$8D57
8d44: 8e 88 01     CALL $8801
8d47: 8e 47 ff     CALL $47FF
8d4a: 98 41 3d     MOVD R65,R61
8d4d: 8e 8b 30     CALL $8B30
8d50: 22 08        MOV %>8,A
8d52: 8e 91 17     CALL $9117
8d55: e0 0e        JMP $8D65
8d57: 8e 91 84     CALL $9184
8d5a: 98 41 3d     MOVD R65,R61
8d5d: 8e 8b 30     CALL $8B30
8d60: 52 08        MOV %>8,B
8d62: 8e 91 6c     CALL $916C
8d65: 8e 47 f4     CALL $47F4
8d68: 8e 51 1f     CALL $511F
8d6b: d5 33        CLR R51
8d6d: 8e 55 6b     CALL $556B
8d70: 8e 58 76     CALL $5876
8d73: 72 04 33     MOV %>4,R51
8d76: 8e 55 6b     CALL $556B
8d79: 8c 58 8e     BR $588E
8d7c: fb           TRAP 4
8d7d: 77 40 32 13  BTJZ %>40,R50,$8D94
8d81: 8e 87 ad     CALL $87AD
8d84: 8e 47 ff     CALL $47FF
8d87: 98 43 3d     MOVD R67,R61
8d8a: 8e 8b 30     CALL $8B30
8d8d: 22 04        MOV %>4,A
8d8f: 8e 91 17     CALL $9117
8d92: e0 0e        JMP $8DA2
8d94: 8e 91 84     CALL $9184
8d97: 98 43 3d     MOVD R67,R61
8d9a: 8e 8b 30     CALL $8B30
8d9d: 52 04        MOV %>4,B
8d9f: 8e 91 6c     CALL $916C
8da2: 8e 47 f4     CALL $47F4
8da5: 8e 51 1f     CALL $511F
8da8: d5 33        CLR R51
8daa: 8e 55 6b     CALL $556B
8dad: 8e 58 76     CALL $5876
8db0: 72 03 33     MOV %>3,R51
8db3: 8e 55 6b     CALL $556B
8db6: 8c 58 88     BR $5888
8db9: fb           TRAP 4
8dba: 77 40 32 2e  BTJZ %>40,R50,$8DEC
8dbe: 98 3f 3d     MOVD R63,R61
8dc1: 52 03        MOV %>3,B
8dc3: 8e b6 4b     CALL $B64B
8dc6: 98 41 75     MOVD R65,R117
8dc9: f6           TRAP 9
8dca: 76 ff 49 08  BTJO %>FF,R73,$8DD6
8dce: 8e 7a 0d     CALL $7A0D
8dd1: 8e 89 5f     CALL $895F
8dd4: e0 06        JMP $8DDC
8dd6: 8e 7a 0d     CALL $7A0D
8dd9: 8e 88 3e     CALL $883E
8ddc: 8e 47 ff     CALL $47FF
8ddf: 98 45 3d     MOVD R69,R61
8de2: 8e 8b 30     CALL $8B30
8de5: 22 02        MOV %>2,A
8de7: 8e 91 17     CALL $9117
8dea: e0 0e        JMP $8DFA
8dec: 8e 91 84     CALL $9184
8def: 98 45 3d     MOVD R69,R61
8df2: 8e 8b 30     CALL $8B30
8df5: 52 02        MOV %>2,B
8df7: 8e 91 6c     CALL $916C
8dfa: 8e 47 f4     CALL $47F4
8dfd: 8e 51 1f     CALL $511F
8e00: d5 33        CLR R51
8e02: 8e 55 6b     CALL $556B
8e05: 8e 58 76     CALL $5876
8e08: 72 02 33     MOV %>2,R51
8e0b: 8e 55 6b     CALL $556B
8e0e: 8c 58 82     BR $5882
8e11: fb           TRAP 4
8e12: 77 40 32 13  BTJZ %>40,R50,$8E29
8e16: 8e 86 f6     CALL $86F6
8e19: 8e 47 ff     CALL $47FF
8e1c: 98 47 3d     MOVD R71,R61
8e1f: 8e 8b 30     CALL $8B30
8e22: 22 01        MOV %>1,A
8e24: 8e 91 17     CALL $9117
8e27: e0 0e        JMP $8E37
8e29: 8e 91 84     CALL $9184
8e2c: 98 47 3d     MOVD R71,R61
8e2f: 8e 8b 30     CALL $8B30
8e32: 52 01        MOV %>1,B
8e34: 8e 91 6c     CALL $916C
8e37: 8e 47 f4     CALL $47F4
8e3a: 8e 51 1f     CALL $511F
8e3d: d5 33        CLR R51
8e3f: 8e 55 6b     CALL $556B
8e42: 8e 58 76     CALL $5876
8e45: 72 01 33     MOV %>1,R51
8e48: 8e 55 6b     CALL $556B
8e4b: 8c 58 7c     BR $587C
8e4e: 8e 93 ff     CALL $93FF
8e51: 8c 53 87     BR $5387
8e54: 8a 21 30     LDA @>2130
8e57: e2 06        JEQ $8E5F
8e59: 8e 91 b3     CALL $91B3
8e5c: 8c 93 81     BR $9381
8e5f: 0a           RETS
8e60: 8a 21 30     LDA @>2130
8e63: 2d 03        CMP %>3,A
8e65: e2 f8        JEQ $8E5F
8e67: 8e 91 b0     CALL $91B0
8e6a: 8c 93 81     BR $9381
8e6d: fb           TRAP 4
8e6e: 8e 8e 9d     CALL $8E9D
8e71: 98 3f 3d     MOVD R63,R61
8e74: 22 10        MOV %>10,A
8e76: 8e 91 91     CALL $9191
8e79: 8e 57 51     CALL $5751
8e7c: 72 05 33     MOV %>5,R51
8e7f: 8e 95 71     CALL $9571
8e82: 8c 58 9a     BR $589A
8e85: fb           TRAP 4
8e86: 8e 8e 9d     CALL $8E9D
8e89: 98 41 3d     MOVD R65,R61
8e8c: 22 08        MOV %>8,A
8e8e: 8e 91 91     CALL $9191
8e91: 8e 57 51     CALL $5751
8e94: 72 04 33     MOV %>4,R51
8e97: 8e 95 71     CALL $9571
8e9a: 8c 58 9a     BR $589A
8e9d: 8e 95 64     CALL $9564
8ea0: 7d 42 60     CMP %>42,R96
8ea3: e3 06        JHS $8EAB
8ea5: 7d 00 61     CMP %>0,R97
8ea8: e2 01        JEQ $8EAB
8eaa: 0a           RETS
8eab: 72 04 6f     MOV %>4,R111
8eae: fa           TRAP 5
8eaf: fb           TRAP 4
8eb0: 8e 7a 0d     CALL $7A0D
8eb3: 8e 85 20     CALL $8520
8eb6: 98 3f 75     MOVD R63,R117
8eb9: 78 24 75     ADD %>24,R117
8ebc: 79 00 74     ADC %>0,R116
8ebf: b5           CLR A
8ec0: 9b 75        STA *R117
8ec2: 78 01 75     ADD %>1,R117
8ec5: 79 00 74     ADC %>0,R116
8ec8: 22 07        MOV %>7,A
8eca: 9b 75        STA *R117
8ecc: 74 04 32     OR %>4,R50
8ecf: 8c 94 23     BR $9423
8ed2: 8c 93 81     BR $9381
8ed5: 8e 94 93     CALL $9493
8ed8: 8c 53 87     BR $5387
8edb: 8a 21 30     LDA @>2130
8ede: e2 06        JEQ $8EE6
8ee0: 8e 92 20     CALL $9220
8ee3: 8c 93 ff     BR $93FF
8ee6: 0a           RETS
8ee7: 8a 21 30     LDA @>2130
8eea: 2d 03        CMP %>3,A
8eec: e2 f8        JEQ $8EE6
8eee: 8e 92 1d     CALL $921D
8ef1: 8c 93 ff     BR $93FF
8ef4: 8e 93 ff     CALL $93FF
8ef7: 8c 54 62     BR $5462
8efa: 8c 94 e3     BR $94E3
8efd: 8a 21 30     LDA @>2130
8f00: e2 e4        JEQ $8EE6
8f02: 8e 92 8c     CALL $928C
8f05: 8c 94 93     BR $9493
8f08: 8a 21 30     LDA @>2130
8f0b: 2d 03        CMP %>3,A
8f0d: e2 d7        JEQ $8EE6
8f0f: 8e 92 89     CALL $9289
8f12: 8c 94 93     BR $9493
8f15: fb           TRAP 4
8f16: 9a 3f        LDA *R63
8f18: 26 10 4f     BTJO %>10,A,$8F6A
8f1b: 23 f3        AND %>F3,A
8f1d: 24 10        OR %>10,A
8f1f: 9b 3f        STA *R63
8f21: 98 3f 75     MOVD R63,R117
8f24: 78 01 75     ADD %>1,R117
8f27: 79 00 74     ADC %>0,R116
8f2a: 22 10        MOV %>10,A
8f2c: 9b 75        STA *R117
8f2e: 98 41 75     MOVD R65,R117
8f31: 78 05 75     ADD %>5,R117
8f34: 79 00 74     ADC %>0,R116
8f37: f8           TRAP 7
8f38: 52 05        MOV %>5,B
8f3a: 8e 95 81     CALL $9581
8f3d: 98 41 3d     MOVD R65,R61
8f40: 78 03 3d     ADD %>3,R61
8f43: 79 00 3c     ADC %>0,R60
8f46: 52 03        MOV %>3,B
8f48: 8e 8b 32     CALL $8B32
8f4b: 98 3f 75     MOVD R63,R117
8f4e: db 75        DECD R117
8f50: b5           CLR A
8f51: 9b 75        STA *R117
8f53: db 75        DECD R117
8f55: db 75        DECD R117
8f57: 9b 75        STA *R117
8f59: db 75        DECD R117
8f5b: 9a 75        LDA *R117
8f5d: 24 02        OR %>2,A
8f5f: 9b 75        STA *R117
8f61: 9a 3f        LDA *R63
8f63: c5           CLR B
8f64: 8e 57 51     CALL $5751
8f67: 8e 58 20     CALL $5820
8f6a: f9           TRAP 6
8f6b: 8c 58 76     BR $5876
8f6e: fb           TRAP 4
8f6f: 9a 3f        LDA *R63
8f71: 26 08 47     BTJO %>8,A,$8FBB
8f74: 23 eb        AND %>EB,A
8f76: 24 08        OR %>8,A
8f78: 9b 3f        STA *R63
8f7a: 98 3f 75     MOVD R63,R117
8f7d: 78 01 75     ADD %>1,R117
8f80: 79 00 74     ADC %>0,R116
8f83: 22 08        MOV %>8,A
8f85: 9b 75        STA *R117
8f87: 8e f0 15     CALL $F015
8f8a: 88 40 01 61  MOVD %>4001,R97
8f8e: 98 41 3d     MOVD R65,R61
8f91: 78 03 3d     ADD %>3,R61
8f94: 79 00 3c     ADC %>0,R60
8f97: 52 03        MOV %>3,B
8f99: 8e 8b 32     CALL $8B32
8f9c: 98 3f 75     MOVD R63,R117
8f9f: db 75        DECD R117
8fa1: b5           CLR A
8fa2: 9b 75        STA *R117
8fa4: db 75        DECD R117
8fa6: db 75        DECD R117
8fa8: 9b 75        STA *R117
8faa: db 75        DECD R117
8fac: 9a 75        LDA *R117
8fae: 24 02        OR %>2,A
8fb0: 9b 75        STA *R117
8fb2: 9a 3f        LDA *R63
8fb4: c5           CLR B
8fb5: 8e 57 51     CALL $5751
8fb8: 8e 58 20     CALL $5820
8fbb: f9           TRAP 6
8fbc: 8c 58 76     BR $5876
8fbf: fb           TRAP 4
8fc0: 9a 3f        LDA *R63
8fc2: 26 02 25     BTJO %>2,A,$8FEA
8fc5: 23 fa        AND %>FA,A
8fc7: 24 02        OR %>2,A
8fc9: 9b 3f        STA *R63
8fcb: 98 3f 75     MOVD R63,R117
8fce: db 75        DECD R117
8fd0: b5           CLR A
8fd1: 9b 75        STA *R117
8fd3: db 75        DECD R117
8fd5: db 75        DECD R117
8fd7: 9b 75        STA *R117
8fd9: db 75        DECD R117
8fdb: 9a 75        LDA *R117
8fdd: 24 08        OR %>8,A
8fdf: 9b 75        STA *R117
8fe1: 9a 3f        LDA *R63
8fe3: c5           CLR B
8fe4: 8e 57 51     CALL $5751
8fe7: 8e 58 20     CALL $5820
8fea: f9           TRAP 6
8feb: 8c 58 76     BR $5876
8fee: fb           TRAP 4
8fef: 9a 3f        LDA *R63
8ff1: 26 01 f6     BTJO %>1,A,$8FEA
8ff4: 23 f9        AND %>F9,A
8ff6: 24 01        OR %>1,A
8ff8: e0 cf        JMP $8FC9
8ffa: fb           TRAP 4
8ffb: 8e 8e 9d     CALL $8E9D
8ffe: 98 3f 75     MOVD R63,R117
9001: db 75        DECD R117
9003: b5           CLR A
9004: 9b 75        STA *R117
9006: db 75        DECD R117
9008: db 75        DECD R117
900a: 9b 75        STA *R117
900c: 98 41 3d     MOVD R65,R61
900f: 52 03        MOV %>3,B
9011: 8e 8b 32     CALL $8B32
9014: 9a 3f        LDA *R63
9016: 24 04        OR %>4,A
9018: 9b 3f        STA *R63
901a: 98 3f 75     MOVD R63,R117
901d: 7a 04 75     SUB %>4,R117
9020: 7b 00 74     SBB %>0,R116
9023: 9a 75        LDA *R117
9025: 24 02        OR %>2,A
9027: 9b 75        STA *R117
9029: 98 3f 75     MOVD R63,R117
902c: 78 01 75     ADD %>1,R117
902f: 79 00 74     ADC %>0,R116
9032: 9a 75        LDA *R117
9034: 27 10 0e     BTJZ %>10,A,$9045
9037: 98 41 3d     MOVD R65,R61
903a: 78 03 3d     ADD %>3,R61
903d: 79 00 3c     ADC %>0,R60
9040: 52 03        MOV %>3,B
9042: 8e 8b 32     CALL $8B32
9045: 72 03 33     MOV %>3,R51
9048: 8e 95 71     CALL $9571
904b: 9a 3f        LDA *R63
904d: c5           CLR B
904e: 8e 57 51     CALL $5751
9051: 8c 58 9a     BR $589A
9054: 8e 94 93     CALL $9493
9057: 8c 54 62     BR $5462
905a: 8a 21 30     LDA @>2130
905d: e2 06        JEQ $9065
905f: 8e 92 c8     CALL $92C8
9062: 8c 94 e3     BR $94E3
9065: 0a           RETS
9066: 8a 21 30     LDA @>2130
9069: 2d 03        CMP %>3,A
906b: e2 f8        JEQ $9065
906d: 8e 92 c5     CALL $92C5
9070: 8c 94 e3     BR $94E3
9073: fb           TRAP 4
9074: 9a 3f        LDA *R63
9076: 26 10 4c     BTJO %>10,A,$90C5
9079: 23 f3        AND %>F3,A
907b: 24 10        OR %>10,A
907d: 9b 3f        STA *R63
907f: 98 41 75     MOVD R65,R117
9082: 78 05 75     ADD %>5,R117
9085: 79 00 74     ADC %>0,R116
9088: f8           TRAP 7
9089: 52 05        MOV %>5,B
908b: 8e 95 81     CALL $9581
908e: 8e f0 1b     CALL $F01B
9091: 98 41 75     MOVD R65,R117
9094: 78 02 75     ADD %>2,R117
9097: 79 00 74     ADC %>0,R116
909a: f8           TRAP 7
909b: 52 05        MOV %>5,B
909d: 8e 95 81     CALL $9581
90a0: 8e f0 39     CALL $F039
90a3: e2 20        JEQ $90C5
90a5: 98 41 3d     MOVD R65,R61
90a8: 52 03        MOV %>3,B
90aa: 8e 8b 32     CALL $8B32
90ad: 98 3f 75     MOVD R63,R117
90b0: db 75        DECD R117
90b2: db 75        DECD R117
90b4: b5           CLR A
90b5: 9b 75        STA *R117
90b7: db 75        DECD R117
90b9: db 75        DECD R117
90bb: 9b 75        STA *R117
90bd: db 75        DECD R117
90bf: 9a 75        LDA *R117
90c1: 24 02        OR %>2,A
90c3: 9b 75        STA *R117
90c5: 8c 94 e3     BR $94E3
90c8: fb           TRAP 4
90c9: 9a 3f        LDA *R63
90cb: 26 08 f7     BTJO %>8,A,$90C5
90ce: 23 eb        AND %>EB,A
90d0: 24 08        OR %>8,A
90d2: 9b 3f        STA *R63
90d4: 8c 94 e3     BR $94E3
90d7: fb           TRAP 4
90d8: 8e 8e 9d     CALL $8E9D
90db: 98 3f 75     MOVD R63,R117
90de: db 75        DECD R117
90e0: db 75        DECD R117
90e2: b5           CLR A
90e3: 9b 75        STA *R117
90e5: db 75        DECD R117
90e7: db 75        DECD R117
90e9: 9b 75        STA *R117
90eb: 98 41 3d     MOVD R65,R61
90ee: 52 03        MOV %>3,B
90f0: 8e 8b 32     CALL $8B32
90f3: 9a 3f        LDA *R63
90f5: 24 04        OR %>4,A
90f7: 9b 3f        STA *R63
90f9: 98 3f 75     MOVD R63,R117
90fc: 7a 05 75     SUB %>5,R117
90ff: 7b 00 74     SBB %>0,R116
9102: 9a 75        LDA *R117
9104: 24 02        OR %>2,A
9106: 9b 75        STA *R117
9108: 9a 3f        LDA *R63
910a: c5           CLR B
910b: 8e 57 51     CALL $5751
910e: 72 03 33     MOV %>3,R51
9111: 8e 95 71     CALL $9571
9114: 8c 58 9a     BR $589A
9117: c0           MOV A,B
9118: 98 47 75     MOVD R71,R117
911b: 78 25 75     ADD %>25,R117
911e: 79 00 74     ADC %>0,R116
9121: b5           CLR A
9122: 9b 75        STA *R117
9124: 62           MOV B,A
9125: 78 01 75     ADD %>1,R117
9128: 79 00 74     ADC %>0,R116
912b: 9b 75        STA *R117
912d: 26 0e 23     BTJO %>E,A,$9153
9130: b5           CLR A
9131: 8e 57 51     CALL $5751
9134: 8e 58 20     CALL $5820
9137: 98 47 75     MOVD R71,R117
913a: 78 29 75     ADD %>29,R117
913d: 79 00 74     ADC %>0,R116
9140: 9a 75        LDA *R117
9142: 23 fb        AND %>FB,A
9144: 9b 75        STA *R117
9146: 78 01 75     ADD %>1,R117
9149: 79 00 74     ADC %>0,R116
914c: 9a 75        LDA *R117
914e: 23 fb        AND %>FB,A
9150: 9b 75        STA *R117
9152: 0a           RETS
9153: 78 02 75     ADD %>2,R117
9156: 79 00 74     ADC %>0,R116
9159: b5           CLR A
915a: 9b 75        STA *R117
915c: e0 d2        JMP $9130
915e: 98 47 75     MOVD R71,R117
9161: 78 28 75     ADD %>28,R117
9164: 79 00 74     ADC %>0,R116
9167: b5           CLR A
9168: 9b 75        STA *R117
916a: e0 03        JMP $916F
916c: 56 0e ef     BTJO %>E,B,$915E
916f: 98 47 75     MOVD R71,R117
9172: 78 25 75     ADD %>25,R117
9175: 79 00 74     ADC %>0,R116
9178: 9a 75        LDA *R117
917a: 64           OR B,A
917b: 9b 75        STA *R117
917d: c5           CLR B
917e: 8e 57 51     CALL $5751
9181: 8c 58 20     BR $5820
9184: 98 47 75     MOVD R71,R117
9187: 78 26 75     ADD %>26,R117
918a: 79 00 74     ADC %>0,R116
918d: b5           CLR A
918e: 9b 75        STA *R117
9190: 0a           RETS
9191: b8           PUSH A
9192: 98 3f 75     MOVD R63,R117
9195: 78 25 75     ADD %>25,R117
9198: 79 00 74     ADC %>0,R116
919b: b5           CLR A
919c: 9b 75        STA *R117
919e: 52 03        MOV %>3,B
91a0: 8e 8b 32     CALL $8B32
91a3: c9           POP B
91a4: db 75        DECD R117
91a6: 9a 75        LDA *R117
91a8: 64           OR B,A
91a9: 9b 75        STA *R117
91ab: 73 fb 32     AND %>FB,R50
91ae: c5           CLR B
91af: 0a           RETS
91b0: b3           INC A
91b1: e0 01        JMP $91B4
91b3: b2           DEC A
91b4: 8b 21 30     STA @>2130
91b7: e6 15        JNZ $91CE
91b9: 88 21 3b 3f  MOVD %>213B,R63
91bd: 88 21 43 41  MOVD %>2143,R65
91c1: 88 21 4b 43  MOVD %>214B,R67
91c5: 88 21 53 45  MOVD %>2153,R69
91c9: 88 21 5b 47  MOVD %>215B,R71
91cd: 0a           RETS
91ce: 2d 01        CMP %>1,A
91d0: e6 15        JNZ $91E7
91d2: 88 21 8d 3f  MOVD %>218D,R63
91d6: 88 21 95 41  MOVD %>2195,R65
91da: 88 21 9d 43  MOVD %>219D,R67
91de: 88 21 a5 45  MOVD %>21A5,R69
91e2: 88 21 ad 47  MOVD %>21AD,R71
91e6: 0a           RETS
91e7: 2d 02        CMP %>2,A
91e9: e6 15        JNZ $9200
91eb: 88 21 df 3f  MOVD %>21DF,R63
91ef: 88 21 e7 41  MOVD %>21E7,R65
91f3: 88 21 ef 43  MOVD %>21EF,R67
91f7: 88 21 f7 45  MOVD %>21F7,R69
91fb: 88 21 ff 47  MOVD %>21FF,R71
91ff: 0a           RETS
9200: 2d 03        CMP %>3,A
9202: e6 15        JNZ $9219
9204: 88 22 31 3f  MOVD %>2231,R63
9208: 88 22 39 41  MOVD %>2239,R65
920c: 88 22 41 43  MOVD %>2241,R67
9210: 88 22 49 45  MOVD %>2249,R69
9214: 88 22 51 47  MOVD %>2251,R71
9218: 0a           RETS
9219: b5           CLR A
921a: 8c 91 b4     BR $91B4
921d: b3           INC A
921e: e0 01        JMP $9221
9220: b2           DEC A
9221: 8b 21 30     STA @>2130
9224: e6 15        JNZ $923B
9226: 88 21 5e 3f  MOVD %>215E,R63
922a: 88 21 61 41  MOVD %>2161,R65
922e: 88 21 69 43  MOVD %>2169,R67
9232: 88 21 71 45  MOVD %>2171,R69
9236: 88 21 79 47  MOVD %>2179,R71
923a: 0a           RETS
923b: 2d 01        CMP %>1,A
923d: e6 15        JNZ $9254
923f: 88 21 b0 3f  MOVD %>21B0,R63
9243: 88 21 b3 41  MOVD %>21B3,R65
9247: 88 21 bb 43  MOVD %>21BB,R67
924b: 88 21 c3 45  MOVD %>21C3,R69
924f: 88 21 cb 47  MOVD %>21CB,R71
9253: 0a           RETS
9254: 2d 02        CMP %>2,A
9256: e6 15        JNZ $926D
9258: 88 22 02 3f  MOVD %>2202,R63
925c: 88 22 05 41  MOVD %>2205,R65
9260: 88 22 0d 43  MOVD %>220D,R67
9264: 88 22 15 45  MOVD %>2215,R69
9268: 88 22 1d 47  MOVD %>221D,R71
926c: 0a           RETS
926d: 2d 03        CMP %>3,A
926f: e6 15        JNZ $9286
9271: 88 22 54 3f  MOVD %>2254,R63
9275: 88 22 57 41  MOVD %>2257,R65
9279: 88 22 5f 43  MOVD %>225F,R67
927d: 88 22 67 45  MOVD %>2267,R69
9281: 88 22 6f 47  MOVD %>226F,R71
9285: 0a           RETS
9286: b5           CLR A
9287: e0 98        JMP $9221
9289: b3           INC A
928a: e0 01        JMP $928D
928c: b2           DEC A
928d: 8b 21 30     STA @>2130
9290: e6 09        JNZ $929B
9292: 88 21 84 3f  MOVD %>2184,R63
9296: 88 21 7c 41  MOVD %>217C,R65
929a: 0a           RETS
929b: 2d 01        CMP %>1,A
929d: e6 09        JNZ $92A8
929f: 88 21 d6 3f  MOVD %>21D6,R63
92a3: 88 21 ce 41  MOVD %>21CE,R65
92a7: 0a           RETS
92a8: 2d 02        CMP %>2,A
92aa: e6 09        JNZ $92B5
92ac: 88 22 28 3f  MOVD %>2228,R63
92b0: 88 22 20 41  MOVD %>2220,R65
92b4: 0a           RETS
92b5: 2d 03        CMP %>3,A
92b7: e6 09        JNZ $92C2
92b9: 88 22 7a 3f  MOVD %>227A,R63
92bd: 88 22 72 41  MOVD %>2272,R65
92c1: 0a           RETS
92c2: b5           CLR A
92c3: e0 c8        JMP $928D
92c5: b3           INC A
92c6: e0 01        JMP $92C9
92c8: b2           DEC A
92c9: 8b 21 30     STA @>2130
92cc: e6 09        JNZ $92D7
92ce: 88 21 85 3f  MOVD %>2185,R63
92d2: 88 21 7f 41  MOVD %>217F,R65
92d6: 0a           RETS
92d7: 2d 01        CMP %>1,A
92d9: e6 09        JNZ $92E4
92db: 88 21 d7 3f  MOVD %>21D7,R63
92df: 88 21 d1 41  MOVD %>21D1,R65
92e3: 0a           RETS
92e4: 2d 02        CMP %>2,A
92e6: e6 09        JNZ $92F1
92e8: 88 22 29 3f  MOVD %>2229,R63
92ec: 88 22 23 41  MOVD %>2223,R65
92f0: 0a           RETS
92f1: 2d 03        CMP %>3,A
92f3: e6 09        JNZ $92FE
92f5: 88 22 7b 3f  MOVD %>227B,R63
92f9: 88 22 75 41  MOVD %>2275,R65
92fd: 0a           RETS
92fe: b5           CLR A
92ff: e0 c8        JMP $92C9
9301: 46 56 20 50  BTJO R86,R32,$9355
9305: 4d 54 50     CMP R84,R80
9308: 56 20 49     BTJO %>20,B,$9354
930b: 2f 59        DSB %>59,A
930d: 4e 20 20     DAC R32,R32
9310: 50           Illegal Opcode
9311: 31           Illegal Opcode
9312: 20           Illegal Opcode
9313: 50           Illegal Opcode
9314: 32 20        MOV R32,B
9316: 42 41 4c     MOV R65,R76
9319: 50           Illegal Opcode
931a: 52 4e        MOV %>4E,B
931c: 49 4e 54     ADC R78,R84
931f: 41           Illegal Opcode
9320: 50           Illegal Opcode
9321: 52 41        MOV %>41,B
9323: 45 52 50     XOR R82,R80
9326: 2f 59        DSB %>59,A
9328: 45 4e 44     XOR R78,R68
932b: 42 47 4e     MOV R71,R78
932e: 43 3d 50     AND R61,R80
9331: 43 7a 50     AND R122,R80
9334: 20           Illegal Opcode
9335: 20           Illegal Opcode
9336: 20           Illegal Opcode
9337: 20           Illegal Opcode
9338: 20           Illegal Opcode
9339: 20           Illegal Opcode
933a: 20           Illegal Opcode
933b: 20           Illegal Opcode
933c: 20           Illegal Opcode
933d: 20           Illegal Opcode
933e: 20           Illegal Opcode
933f: 20           Illegal Opcode
9340: 43 7a 50     AND R122,R80
9343: 43 2f 59     AND R47,R89
9346: 20           Illegal Opcode
9347: 20           Illegal Opcode
9348: 20           Illegal Opcode
9349: 20           Illegal Opcode
934a: 20           Illegal Opcode
934b: 20           Illegal Opcode
934c: 43 3d 50     AND R61,R80
934f: 43 7a 50     AND R122,R80
9352: 43 2f 59     AND R47,R89
9355: 20           Illegal Opcode
9356: 20           Illegal Opcode
9357: 20           Illegal Opcode
9358: 20           Illegal Opcode
9359: 20           Illegal Opcode
935a: 20           Illegal Opcode
935b: 9a 75        LDA *R117
935d: 26 18 04     BTJO %>18,A,$9364
9360: 24 10        OR %>10,A
9362: 9b 75        STA *R117
9364: db 75        DECD R117
9366: 9a 75        LDA *R117
9368: 26 03 02     BTJO %>3,A,$936D
936b: 24 02        OR %>2,A
936d: 26 18 02     BTJO %>18,A,$9372
9370: 24 10        OR %>10,A
9372: 9b 75        STA *R117
9374: 0a           RETS
9375: 52 0f        MOV %>F,B
9377: 9a 75        LDA *R117
9379: ab 20 a7     STA @>20A7(B)
937c: db 75        DECD R117
937e: ca f7        DJNZ B,$9377
9380: 0a           RETS
9381: fb           TRAP 4
9382: b5           CLR A
9383: 8b 20 b9     STA @>20B9
9386: 8b 20 b8     STA @>20B8
9389: 8a 21 30     LDA @>2130
938c: 8e 91 b4     CALL $91B4
938f: 72 20 32     MOV %>20,R50
9392: 88 4b 06 01  MOVD %>4B06,R1
9396: 8b 20 ba     STA @>20BA
9399: 62           MOV B,A
939a: 8b 20 bb     STA @>20BB
939d: 88 93 0f 75  MOVD %>930F,R117
93a1: 8e 93 75     CALL $9375
93a4: 98 3f 75     MOVD R63,R117
93a7: f8           TRAP 7
93a8: 8e 51 1f     CALL $511F
93ab: 72 05 33     MOV %>5,R51
93ae: 8e 55 6b     CALL $556B
93b1: 98 41 75     MOVD R65,R117
93b4: f8           TRAP 7
93b5: 8e 51 1f     CALL $511F
93b8: 72 04 33     MOV %>4,R51
93bb: 8e 55 6b     CALL $556B
93be: 98 43 75     MOVD R67,R117
93c1: f8           TRAP 7
93c2: 8e 51 1f     CALL $511F
93c5: 72 03 33     MOV %>3,R51
93c8: 8e 55 6b     CALL $556B
93cb: 98 45 75     MOVD R69,R117
93ce: f8           TRAP 7
93cf: 8e 51 1f     CALL $511F
93d2: 72 02 33     MOV %>2,R51
93d5: 8e 55 6b     CALL $556B
93d8: 98 47 75     MOVD R71,R117
93db: f8           TRAP 7
93dc: 8e 51 1f     CALL $511F
93df: 72 01 33     MOV %>1,R51
93e2: 8e 55 6b     CALL $556B
93e5: f9           TRAP 6
93e6: 98 47 75     MOVD R71,R117
93e9: 78 26 75     ADD %>26,R117
93ec: 79 00 74     ADC %>0,R116
93ef: 9a 75        LDA *R117
93f1: c0           MOV A,B
93f2: db 75        DECD R117
93f4: 9a 75        LDA *R117
93f6: 8e 57 51     CALL $5751
93f9: 8e 56 b2     CALL $56B2
93fc: 8c 58 9a     BR $589A
93ff: fb           TRAP 4
9400: 72 22 32     MOV %>22,R50
9403: 88 4b 24 01  MOVD %>4B24,R1
9407: 8b 20 ba     STA @>20BA
940a: 62           MOV B,A
940b: 8b 20 bb     STA @>20BB
940e: 22 01        MOV %>1,A
9410: 8b 20 b9     STA @>20B9
9413: 88 93 1e 75  MOVD %>931E,R117
9417: 8e 93 75     CALL $9375
941a: 8e 56 b2     CALL $56B2
941d: 8a 21 30     LDA @>2130
9420: 8e 92 21     CALL $9221
9423: 98 3f 75     MOVD R63,R117
9426: 78 05 75     ADD %>5,R117
9429: 79 00 74     ADC %>0,R116
942c: f8           TRAP 7
942d: 52 05        MOV %>5,B
942f: 8e 95 81     CALL $9581
9432: 8e 52 17     CALL $5217
9435: 72 05 33     MOV %>5,R51
9438: 8e 55 6b     CALL $556B
943b: 98 41 75     MOVD R65,R117
943e: 78 05 75     ADD %>5,R117
9441: 79 00 74     ADC %>0,R116
9444: f8           TRAP 7
9445: 52 05        MOV %>5,B
9447: 8e 95 81     CALL $9581
944a: 8e 52 17     CALL $5217
944d: 72 04 33     MOV %>4,R51
9450: 8e 55 6b     CALL $556B
9453: 98 43 75     MOVD R67,R117
9456: f8           TRAP 7
9457: 8e 51 1f     CALL $511F
945a: 72 03 33     MOV %>3,R51
945d: 8e 55 6b     CALL $556B
9460: 98 45 75     MOVD R69,R117
9463: f8           TRAP 7
9464: 8e 51 1f     CALL $511F
9467: 72 02 33     MOV %>2,R51
946a: 8e 55 6b     CALL $556B
946d: 98 47 75     MOVD R71,R117
9470: f8           TRAP 7
9471: 8e 51 1f     CALL $511F
9474: 72 01 33     MOV %>1,R51
9477: 8e 55 6b     CALL $556B
947a: f9           TRAP 6
947b: 98 47 75     MOVD R71,R117
947e: 78 0a 75     ADD %>A,R117
9481: 79 00 74     ADC %>0,R116
9484: 9a 75        LDA *R117
9486: 23 07        AND %>7,A
9488: c0           MOV A,B
9489: db 75        DECD R117
948b: 9a 75        LDA *R117
948d: 8e 57 51     CALL $5751
9490: 8c 58 9a     BR $589A
9493: fb           TRAP 4
9494: 72 22 32     MOV %>22,R50
9497: 88 4b 42 01  MOVD %>4B42,R1
949b: 8b 20 ba     STA @>20BA
949e: 62           MOV B,A
949f: 8b 20 bb     STA @>20BB
94a2: 22 02        MOV %>2,A
94a4: 8b 20 b9     STA @>20B9
94a7: 72 22 32     MOV %>22,R50
94aa: 88 93 2d 75  MOVD %>932D,R117
94ae: 8e 93 75     CALL $9375
94b1: 8a 21 30     LDA @>2130
94b4: 8e 92 8d     CALL $928D
94b7: f9           TRAP 6
94b8: 8e 56 b2     CALL $56B2
94bb: 72 05 33     MOV %>5,R51
94be: 8e 57 4a     CALL $574A
94c1: 9a 3f        LDA *R63
94c3: 52 00        MOV %>0,B
94c5: 8e 57 51     CALL $5751
94c8: 98 41 75     MOVD R65,R117
94cb: 78 05 75     ADD %>5,R117
94ce: 79 00 74     ADC %>0,R116
94d1: f8           TRAP 7
94d2: 52 05        MOV %>5,B
94d4: 8e 95 81     CALL $9581
94d7: 8e 52 17     CALL $5217
94da: 72 03 33     MOV %>3,R51
94dd: 8e 55 6b     CALL $556B
94e0: 8c 58 9a     BR $589A
94e3: fb           TRAP 4
94e4: 72 02 32     MOV %>2,R50
94e7: 8a 21 30     LDA @>2130
94ea: 8e 92 c9     CALL $92C9
94ed: 72 05 33     MOV %>5,R51
94f0: 8e 57 4a     CALL $574A
94f3: 98 3f 75     MOVD R63,R117
94f6: 7a 01 75     SUB %>1,R117
94f9: 7b 00 74     SBB %>0,R116
94fc: 9a 75        LDA *R117
94fe: 27 08 0a     BTJZ %>8,A,$950B
9501: 88 93 4b 75  MOVD %>934B,R117
9505: 88 4b 7e 01  MOVD %>4B7E,R1
9509: e0 1a        JMP $9525
950b: 98 3f 75     MOVD R63,R117
950e: 9a 75        LDA *R117
9510: 26 10 0a     BTJO %>10,A,$951D
9513: 88 93 5a 75  MOVD %>935A,R117
9517: 88 4b 9c 01  MOVD %>4B9C,R1
951b: e0 08        JMP $9525
951d: 88 93 3c 75  MOVD %>933C,R117
9521: 88 4b 60 01  MOVD %>4B60,R1
9525: 8b 20 ba     STA @>20BA
9528: 62           MOV B,A
9529: 8b 20 bb     STA @>20BB
952c: 22 03        MOV %>3,A
952e: 8b 20 b9     STA @>20B9
9531: 52 0f        MOV %>F,B
9533: 8e 93 75     CALL $9375
9536: 8e 56 b2     CALL $56B2
9539: 9a 3f        LDA *R63
953b: 52 00        MOV %>0,B
953d: 8e 57 51     CALL $5751
9540: 98 3f 75     MOVD R63,R117
9543: 9a 75        LDA *R117
9545: 26 10 18     BTJO %>10,A,$9560
9548: 98 41 75     MOVD R65,R117
954b: 78 05 75     ADD %>5,R117
954e: 79 00 74     ADC %>0,R116
9551: f8           TRAP 7
9552: 52 05        MOV %>5,B
9554: 8e 95 81     CALL $9581
9557: 8e 52 17     CALL $5217
955a: 72 03 33     MOV %>3,R51
955d: 8e 55 6b     CALL $556B
9560: f9           TRAP 6
9561: 8c 58 9a     BR $589A
9564: 8e 52 17     CALL $5217
9567: 8e 42 1a     CALL $421A
956a: 8e 50 7e     CALL $507E
956d: 8e 47 f4     CALL $47F4
9570: 0a           RETS
9571: 8e 52 17     CALL $5217
9574: 8e 55 6b     CALL $556B
9577: 8e 51 1c     CALL $511C
957a: 72 00 33     MOV %>0,R51
957d: 8e 55 6b     CALL $556B
9580: 0a           RETS
9581: b5           CLR A
9582: 8b 00 67     STA @>0067
9585: c2           DEC B
9586: e2 1c        JEQ $95A4
9588: 8b 00 66     STA @>0066
958b: c2           DEC B
958c: e2 16        JEQ $95A4
958e: 8b 00 65     STA @>0065
9591: c2           DEC B
9592: e2 10        JEQ $95A4
9594: 8b 00 64     STA @>0064
9597: c2           DEC B
9598: e2 0a        JEQ $95A4
959a: 8b 00 63     STA @>0063
959d: c2           DEC B
959e: e2 04        JEQ $95A4
95a0: 8b 00 62     STA @>0062
95a3: c2           DEC B
95a4: 0a           RETS
95a5: 88 22 a5 75  MOVD %>22A5,R117
95a9: f8           TRAP 7
95aa: 52 06        MOV %>6,B
95ac: 8e 95 81     CALL $9581
95af: 8e 47 e0     CALL $47E0
95b2: 88 40 13 49  MOVD %>4013,R73
95b6: f0           TRAP 15
95b7: 8e 47 e0     CALL $47E0
95ba: 88 40 12 49  MOVD %>4012,R73
95be: 8e f0 1b     CALL $F01B
95c1: ee           TRAP 17
95c2: 88 20 47 3d  MOVD %>2047,R61
95c6: 8c 8b 30     BR $8B30
95c9: 8e 95 a5     CALL $95A5
95cc: 88 22 a7 75  MOVD %>22A7,R117
95d0: f6           TRAP 9
95d1: 88 22 af 75  MOVD %>22AF,R117
95d5: f8           TRAP 7
95d6: f0           TRAP 15
95d7: 8e f0 1e     CALL $F01E
95da: 88 22 a3 75  MOVD %>22A3,R117
95de: f8           TRAP 7
95df: 52 06        MOV %>6,B
95e1: 8e 95 81     CALL $9581
95e4: ee           TRAP 17
95e5: 88 20 47 75  MOVD %>2047,R117
95e9: f6           TRAP 9
95ea: 8a 22 ce     LDA @>22CE
95ed: 2d 01        CMP %>1,A
95ef: e6 01        JNZ $95F2
95f1: f1           TRAP 14
95f2: 8a 22 ce     LDA @>22CE
95f5: e2 0d        JEQ $9604
95f7: 7d 40 48     CMP %>40,R72
95fa: e2 03        JEQ $95FF
95fc: b0           CLRC
95fd: 2f 00        DSB %>0,A
95ff: 8d 22 9d     CMPA @>229D
9602: e7 05        JL $9609
9604: 88 22 93 75  MOVD %>2293,R117
9608: f8           TRAP 7
9609: 0a           RETS
960a: 8e 95 a5     CALL $95A5
960d: 88 22 a3 75  MOVD %>22A3,R117
9611: f8           TRAP 7
9612: 52 06        MOV %>6,B
9614: 8e 95 81     CALL $9581
9617: 8a 22 ce     LDA @>22CE
961a: 2d 01        CMP %>1,A
961c: e2 22        JEQ $9640
961e: 8e 47 e0     CALL $47E0
9621: 88 40 02 49  MOVD %>4002,R73
9625: ef           TRAP 16
9626: 8e f0 1e     CALL $F01E
9629: 8e 46 7c     CALL $467C
962c: 8a 22 ce     LDA @>22CE
962f: d0 61        MOV A,R97
9631: e6 04        JNZ $9637
9633: 88 41 01 61  MOVD %>4101,R97
9637: f0           TRAP 15
9638: 88 20 47 75  MOVD %>2047,R117
963c: f6           TRAP 9
963d: d4 48        INV R72
963f: ef           TRAP 16
9640: 8e 47 e0     CALL $47E0
9643: 88 40 02 49  MOVD %>4002,R73
9647: f1           TRAP 14
9648: f5           TRAP 10
9649: 88 22 a7 75  MOVD %>22A7,R117
964d: f6           TRAP 9
964e: 88 22 af 75  MOVD %>22AF,R117
9652: f8           TRAP 7
9653: f0           TRAP 15
9654: f4           TRAP 11
9655: f1           TRAP 14
9656: f5           TRAP 10
9657: 88 22 a3 75  MOVD %>22A3,R117
965b: f8           TRAP 7
965c: 52 06        MOV %>6,B
965e: 8e 95 81     CALL $9581
9661: 8e 47 e0     CALL $47E0
9664: 88 40 01 49  MOVD %>4001,R73
9668: ef           TRAP 16
9669: 8e f0 1e     CALL $F01E
966c: 88 22 a3 75  MOVD %>22A3,R117
9670: f8           TRAP 7
9671: 52 06        MOV %>6,B
9673: 8e 95 81     CALL $9581
9676: f1           TRAP 14
9677: f4           TRAP 11
9678: ee           TRAP 17
9679: 8c 95 e5     BR $95E5
967c: 8e 95 a5     CALL $95A5
967f: 88 22 a3 75  MOVD %>22A3,R117
9683: f8           TRAP 7
9684: 52 06        MOV %>6,B
9686: 8e 95 81     CALL $9581
9689: 8e 47 e0     CALL $47E0
968c: 88 41 01 49  MOVD %>4101,R73
9690: f1           TRAP 14
9691: 88 22 9b 75  MOVD %>229B,R117
9695: f6           TRAP 9
9696: ee           TRAP 17
9697: 88 22 8b 75  MOVD %>228B,R117
969b: f6           TRAP 9
969c: f1           TRAP 14
969d: 88 22 93 75  MOVD %>2293,R117
96a1: f6           TRAP 9
96a2: 8e f0 39     CALL $F039
96a5: e3 03        JHS $96AA
96a7: 8e f0 1b     CALL $F01B
96aa: 8c 95 e5     BR $95E5
96ad: 88 22 93 75  MOVD %>2293,R117
96b1: f8           TRAP 7
96b2: 74 01 72     OR %>1,R114
96b5: 0a           RETS
96b6: 8a 22 ce     LDA @>22CE
96b9: 2d 01        CMP %>1,A
96bb: e6 05        JNZ $96C2
96bd: 8e 95 c9     CALL $95C9
96c0: e0 2a        JMP $96EC
96c2: 8e 95 a5     CALL $95A5
96c5: 8e 47 e0     CALL $47E0
96c8: 88 40 02 49  MOVD %>4002,R73
96cc: f0           TRAP 15
96cd: 8e f0 1e     CALL $F01E
96d0: 88 22 a3 75  MOVD %>22A3,R117
96d4: f8           TRAP 7
96d5: 52 06        MOV %>6,B
96d7: 8e 95 81     CALL $9581
96da: 8a 22 ce     LDA @>22CE
96dd: e2 ce        JEQ $96AD
96df: 07           SETC
96e0: 4f 00 61     DSB R0,R97
96e3: e7 c8        JL $96AD
96e5: ef           TRAP 16
96e6: 88 22 93 75  MOVD %>2293,R117
96ea: f6           TRAP 9
96eb: ee           TRAP 17
96ec: 76 01 72 0a  BTJO %>1,R114,$96FA
96f0: f5           TRAP 10
96f1: 8e 96 7c     CALL $967C
96f4: f4           TRAP 11
96f5: 8e f0 39     CALL $F039
96f8: e3 01        JHS $96FB
96fa: 0a           RETS
96fb: 74 01 72     OR %>1,R114
96fe: 8c f0 1b     BR $F01B
9701: 74 01 72     OR %>1,R114
9704: 88 22 93 3d  MOVD %>2293,R61
9708: 8e 97 f6     CALL $97F6
970b: 88 22 af 75  MOVD %>22AF,R117
970f: f8           TRAP 7
9710: 88 22 8b 3d  MOVD %>228B,R61
9714: 8c 8b 30     BR $8B30
9717: 88 22 c1 75  MOVD %>22C1,R117
971b: f8           TRAP 7
971c: 88 22 8b 3d  MOVD %>228B,R61
9720: 8e 8b 30     CALL $8B30
9723: 88 22 c9 75  MOVD %>22C9,R117
9727: f8           TRAP 7
9728: 88 22 93 3d  MOVD %>2293,R61
972c: 8e 8b 30     CALL $8B30
972f: 88 22 b9 75  MOVD %>22B9,R117
9733: f8           TRAP 7
9734: 88 22 83 3d  MOVD %>2283,R61
9738: 8e 8b 30     CALL $8B30
973b: 8a 22 b1     LDA @>22B1
973e: 8b 22 ce     STA @>22CE
9741: 8a 22 b0     LDA @>22B0
9744: 2d 40        CMP %>40,A
9746: e2 4a        JEQ $9792
9748: b5           CLR A
9749: 8b 22 ce     STA @>22CE
974c: e0 44        JMP $9792
974e: 73 fe 72     AND %>FE,R114
9751: 88 22 83 3d  MOVD %>2283,R61
9755: 8e 97 f6     CALL $97F6
9758: 8a 22 9d     LDA @>229D
975b: 2e 01        DAC %>1,A
975d: e3 0f        JHS $976E
975f: c0           MOV A,B
9760: 8a 22 b0     LDA @>22B0
9763: 2d 41        CMP %>41,A
9765: e2 9a        JEQ $9701
9767: 8a 22 b1     LDA @>22B1
976a: 3d 00        CMP R0,B
976c: e7 93        JL $9701
976e: 76 04 32 a5  BTJO %>4,R50,$9717
9772: 88 22 a7 75  MOVD %>22A7,R117
9776: f8           TRAP 7
9777: 88 22 8b 3d  MOVD %>228B,R61
977b: 8e 8b 30     CALL $8B30
977e: 88 22 af 75  MOVD %>22AF,R117
9782: f6           TRAP 9
9783: d4 48        INV R72
9785: ef           TRAP 16
9786: 88 22 93 3d  MOVD %>2293,R61
978a: 8e 8b 30     CALL $8B30
978d: 22 01        MOV %>1,A
978f: 8b 22 ce     STA @>22CE
9792: 8a 22 ca     LDA @>22CA
9795: 27 10 05     BTJZ %>10,A,$979D
9798: 8e 95 c9     CALL $95C9
979b: e0 13        JMP $97B0
979d: 27 08 05     BTJZ %>8,A,$97A5
97a0: 8e 96 0a     CALL $960A
97a3: e0 0b        JMP $97B0
97a5: 27 04 05     BTJZ %>4,A,$97AD
97a8: 8e 96 7c     CALL $967C
97ab: e0 03        JMP $97B0
97ad: 8e 96 b6     CALL $96B6
97b0: 8e 97 d0     CALL $97D0
97b3: 8a 22 b0     LDA @>22B0
97b6: 2d 41        CMP %>41,A
97b8: e2 10        JEQ $97CA
97ba: 8a 22 ce     LDA @>22CE
97bd: 8d 22 b1     CMPA @>22B1
97c0: e3 0d        JHS $97CF
97c2: b0           CLRC
97c3: 2e 01        DAC %>1,A
97c5: 8b 22 ce     STA @>22CE
97c8: e0 c8        JMP $9792
97ca: 8a 22 ce     LDA @>22CE
97cd: e6 f3        JNZ $97C2
97cf: 0a           RETS
97d0: 88 22 83 3d  MOVD %>2283,R61
97d4: 8e 8b 30     CALL $8B30
97d7: 88 22 93 75  MOVD %>2293,R117
97db: f6           TRAP 9
97dc: f0           TRAP 15
97dd: 88 22 93 3d  MOVD %>2293,R61
97e1: 8e 8b 30     CALL $8B30
97e4: 88 22 83 75  MOVD %>2283,R117
97e8: f8           TRAP 7
97e9: 88 22 8b 75  MOVD %>228B,R117
97ed: f6           TRAP 9
97ee: f0           TRAP 15
97ef: 88 22 8b 3d  MOVD %>228B,R61
97f3: 8c 8b 30     BR $8B30
97f6: 52 08        MOV %>8,B
97f8: b5           CLR A
97f9: 9b 3d        STA *R61
97fb: db 3d        DECD R61
97fd: ca f9        DJNZ B,$97F8
97ff: 78 08 3d     ADD %>8,R61
9802: 79 00 3c     ADC %>0,R60
9805: 0a           RETS
9806: fb           TRAP 4
9807: 8a 22 ca     LDA @>22CA
980a: 26 10 0d     BTJO %>10,A,$981A
980d: 52 10        MOV %>10,B
980f: b5           CLR A
9810: 8b 22 cd     STA @>22CD
9813: 62           MOV B,A
9814: 8b 22 ca     STA @>22CA
9817: 8c 9a 0e     BR $9A0E
981a: f9           TRAP 6
981b: 8c 58 76     BR $5876
981e: fb           TRAP 4
981f: 8a 22 ca     LDA @>22CA
9822: 26 08 f5     BTJO %>8,A,$981A
9825: 52 08        MOV %>8,B
9827: e0 e6        JMP $980F
9829: fb           TRAP 4
982a: 8a 22 ca     LDA @>22CA
982d: 26 04 ea     BTJO %>4,A,$981A
9830: 23 01        AND %>1,A
9832: 24 04        OR %>4,A
9834: c0           MOV A,B
9835: e0 d8        JMP $980F
9837: fb           TRAP 4
9838: 8a 22 ca     LDA @>22CA
983b: 26 02 dc     BTJO %>2,A,$981A
983e: 23 01        AND %>1,A
9840: 24 02        OR %>2,A
9842: b8           PUSH A
9843: b5           CLR A
9844: 8b 21 33     STA @>2133
9847: 8b 22 cd     STA @>22CD
984a: b9           POP A
984b: 8b 22 ca     STA @>22CA
984e: 8c 9a 0e     BR $9A0E
9851: 0a           RETS
9852: 8a 22 ca     LDA @>22CA
9855: 26 18 f9     BTJO %>18,A,$9851
9858: fb           TRAP 4
9859: 8e 52 17     CALL $5217
985c: 8e 42 1a     CALL $421A
985f: 8e 50 7e     CALL $507E
9862: 8e 47 f4     CALL $47F4
9865: 12 61        MOV R97,A
9867: e2 61        JEQ $98CA
9869: 76 80 60 5d  BTJO %>80,R96,$98CA
986d: 7d 42 60     CMP %>42,R96
9870: e3 58        JHS $98CA
9872: b5           CLR A
9873: 8b 22 cd     STA @>22CD
9876: 88 22 9b 3d  MOVD %>229B,R61
987a: 8e 8b 30     CALL $8B30
987d: 8a 22 ca     LDA @>22CA
9880: 24 01        OR %>1,A
9882: 8b 22 ca     STA @>22CA
9885: 8c 9a 40     BR $9A40
9888: 8e 9a 5f     CALL $9A5F
988b: 8c 53 87     BR $5387
988e: fb           TRAP 4
988f: 8e 52 17     CALL $5217
9892: 8e 42 1a     CALL $421A
9895: 8e 50 7e     CALL $507E
9898: 8e 47 f4     CALL $47F4
989b: 12 61        MOV R97,A
989d: e2 2b        JEQ $98CA
989f: 7d 40 60     CMP %>40,R96
98a2: e6 26        JNZ $98CA
98a4: b5           CLR A
98a5: 8b 22 cd     STA @>22CD
98a8: 88 22 9d 3d  MOVD %>229D,R61
98ac: 52 02        MOV %>2,B
98ae: 8e 8b 32     CALL $8B32
98b1: 8e 52 17     CALL $5217
98b4: 72 05 33     MOV %>5,R51
98b7: 8a 22 cb     LDA @>22CB
98ba: 24 10        OR %>10,A
98bc: 8b 22 cb     STA @>22CB
98bf: c5           CLR B
98c0: 8e 57 51     CALL $5751
98c3: 8e 55 6b     CALL $556B
98c6: f9           TRAP 6
98c7: 8c 58 9a     BR $589A
98ca: 72 04 6f     MOV %>4,R111
98cd: fa           TRAP 5
98ce: fb           TRAP 4
98cf: 8e 52 17     CALL $5217
98d2: 8e 42 1a     CALL $421A
98d5: 8e 50 7e     CALL $507E
98d8: 8e 47 f4     CALL $47F4
98db: 12 61        MOV R97,A
98dd: e2 eb        JEQ $98CA
98df: 7d 40 60     CMP %>40,R96
98e2: e6 e6        JNZ $98CA
98e4: 7d 13 61     CMP %>13,R97
98e7: e3 e1        JHS $98CA
98e9: b5           CLR A
98ea: 8b 22 cd     STA @>22CD
98ed: 88 22 9f 3d  MOVD %>229F,R61
98f1: 52 02        MOV %>2,B
98f3: 8e 8b 32     CALL $8B32
98f6: 8e 52 17     CALL $5217
98f9: 72 04 33     MOV %>4,R51
98fc: 8a 22 cb     LDA @>22CB
98ff: 24 08        OR %>8,A
9901: e0 b9        JMP $98BC
9903: fb           TRAP 4
9904: 76 80 60 c2  BTJO %>80,R96,$98CA
9908: b5           CLR A
9909: 8b 22 cd     STA @>22CD
990c: 88 22 a7 3d  MOVD %>22A7,R61
9910: 8e 8b 30     CALL $8B30
9913: 8e 51 1f     CALL $511F
9916: 72 03 33     MOV %>3,R51
9919: 8a 22 cb     LDA @>22CB
991c: 24 04        OR %>4,A
991e: e0 9c        JMP $98BC
9920: fb           TRAP 4
9921: 8e 52 17     CALL $5217
9924: 8e 42 1a     CALL $421A
9927: 8e 50 7e     CALL $507E
992a: 8e 47 f4     CALL $47F4
992d: 76 80 60 99  BTJO %>80,R96,$98CA
9931: 12 61        MOV R97,A
9933: e2 95        JEQ $98CA
9935: 8e 47 e0     CALL $47E0
9938: 88 41 01 49  MOVD %>4101,R73
993c: 8e f0 39     CALL $F039
993f: e7 89        JL $98CA
9941: b5           CLR A
9942: 8b 22 cd     STA @>22CD
9945: 88 22 b1 3d  MOVD %>22B1,R61
9949: 52 02        MOV %>2,B
994b: 8e 8b 32     CALL $8B32
994e: 8e 52 17     CALL $5217
9951: 8a 22 cc     LDA @>22CC
9954: 24 10        OR %>10,A
9956: 8b 22 cc     STA @>22CC
9959: 72 05 33     MOV %>5,R51
995c: 73 fb 32     AND %>FB,R50
995f: 8c 98 bf     BR $98BF
9962: 8c 98 ca     BR $98CA
9965: fb           TRAP 4
9966: 76 80 60 f8  BTJO %>80,R96,$9962
996a: b5           CLR A
996b: 8b 22 cd     STA @>22CD
996e: 88 22 af 3d  MOVD %>22AF,R61
9972: 8e 8b 30     CALL $8B30
9975: 8e 51 1f     CALL $511F
9978: 72 02 33     MOV %>2,R51
997b: 8a 22 cb     LDA @>22CB
997e: 24 02        OR %>2,A
9980: 8c 98 bc     BR $98BC
9983: fb           TRAP 4
9984: b5           CLR A
9985: 8b 22 cd     STA @>22CD
9988: 77 04 32 20  BTJZ %>4,R50,$99AC
998c: 8a 22 b0     LDA @>22B0
998f: 2d 40        CMP %>40,A
9991: e6 19        JNZ $99AC
9993: 8a 22 b1     LDA @>22B1
9996: 2e 01        DAC %>1,A
9998: e7 07        JL $99A1
999a: 22 41        MOV %>41,A
999c: 8b 22 b0     STA @>22B0
999f: 22 01        MOV %>1,A
99a1: 8b 22 b1     STA @>22B1
99a4: 8a 22 cc     LDA @>22CC
99a7: 24 10        OR %>10,A
99a9: 8b 22 cc     STA @>22CC
99ac: 8e 7a 0d     CALL $7A0D
99af: 8e 97 4e     CALL $974E
99b2: 88 22 83 75  MOVD %>2283,R117
99b6: f8           TRAP 7
99b7: 8e 47 ff     CALL $47FF
99ba: 88 22 b9 3d  MOVD %>22B9,R61
99be: 8e 8b 30     CALL $8B30
99c1: 88 22 8b 75  MOVD %>228B,R117
99c5: f8           TRAP 7
99c6: 8e 47 ff     CALL $47FF
99c9: 88 22 c1 3d  MOVD %>22C1,R61
99cd: 8e 8b 30     CALL $8B30
99d0: 88 22 93 75  MOVD %>2293,R117
99d4: f8           TRAP 7
99d5: 8e 47 ff     CALL $47FF
99d8: 88 22 c9 3d  MOVD %>22C9,R61
99dc: 8e 8b 30     CALL $8B30
99df: b5           CLR A
99e0: 77 01 72 01  BTJZ %>1,R114,$99E5
99e4: b4           INV A
99e5: 8b 21 33     STA @>2133
99e8: b5           CLR A
99e9: 8b 22 cc     STA @>22CC
99ec: 8b 22 cb     STA @>22CB
99ef: 22 0e        MOV %>E,A
99f1: 8b 22 cd     STA @>22CD
99f4: 8a 22 ca     LDA @>22CA
99f7: 23 fe        AND %>FE,A
99f9: 8b 22 ca     STA @>22CA
99fc: 74 04 32     OR %>4,R50
99ff: 8c 9a ea     BR $9AEA
9a02: 8e 9a 5f     CALL $9A5F
9a05: 8c 54 62     BR $5462
9a08: 8e 9a 0e     CALL $9A0E
9a0b: 8c 60 cd     BR $60CD
9a0e: fb           TRAP 4
9a0f: b5           CLR A
9a10: 8b 20 b9     STA @>20B9
9a13: 22 01        MOV %>1,A
9a15: 8b 20 b8     STA @>20B8
9a18: 72 05 33     MOV %>5,R51
9a1b: 8e 57 4a     CALL $574A
9a1e: 88 4b ba 01  MOVD %>4BBA,R1
9a22: 8b 20 ba     STA @>20BA
9a25: 62           MOV B,A
9a26: 8b 20 bb     STA @>20BB
9a29: 72 20 32     MOV %>20,R50
9a2c: 88 9e 46 75  MOVD %>9E46,R117
9a30: 8a 22 ca     LDA @>22CA
9a33: 26 06 04     BTJO %>6,A,$9A3A
9a36: 88 9e 37 75  MOVD %>9E37,R117
9a3a: 8e 93 75     CALL $9375
9a3d: 8e 56 b2     CALL $56B2
9a40: 8a 22 ca     LDA @>22CA
9a43: c5           CLR B
9a44: 8e 57 51     CALL $5751
9a47: 8a 22 ca     LDA @>22CA
9a4a: 26 18 0e     BTJO %>18,A,$9A5B
9a4d: 88 22 9b 75  MOVD %>229B,R117
9a51: f8           TRAP 7
9a52: 8e 52 17     CALL $5217
9a55: 72 01 33     MOV %>1,R51
9a58: 8e 55 6b     CALL $556B
9a5b: f9           TRAP 6
9a5c: 8c 58 9a     BR $589A
9a5f: fb           TRAP 4
9a60: 72 01 33     MOV %>1,R51
9a63: 8e 57 4a     CALL $574A
9a66: 88 4b d8 01  MOVD %>4BD8,R1
9a6a: 8b 20 ba     STA @>20BA
9a6d: 62           MOV B,A
9a6e: 8b 20 bb     STA @>20BB
9a71: 22 01        MOV %>1,A
9a73: 8b 20 b9     STA @>20B9
9a76: 72 22 32     MOV %>22,R50
9a79: 88 9e 55 75  MOVD %>9E55,R117
9a7d: 8e 93 75     CALL $9375
9a80: 8e 56 b2     CALL $56B2
9a83: 8a 22 cb     LDA @>22CB
9a86: c5           CLR B
9a87: 8e 57 51     CALL $5751
9a8a: 88 22 a3 75  MOVD %>22A3,R117
9a8e: f8           TRAP 7
9a8f: 52 06        MOV %>6,B
9a91: 8e 95 81     CALL $9581
9a94: 8e 52 17     CALL $5217
9a97: 72 05 33     MOV %>5,R51
9a9a: 8e 55 6b     CALL $556B
9a9d: 88 22 a5 75  MOVD %>22A5,R117
9aa1: f8           TRAP 7
9aa2: 52 06        MOV %>6,B
9aa4: 8e 95 81     CALL $9581
9aa7: 8e 52 17     CALL $5217
9aaa: 72 04 33     MOV %>4,R51
9aad: 8e 55 6b     CALL $556B
9ab0: 88 22 a7 75  MOVD %>22A7,R117
9ab4: f8           TRAP 7
9ab5: 8e 51 1f     CALL $511F
9ab8: 72 03 33     MOV %>3,R51
9abb: 8e 55 6b     CALL $556B
9abe: 88 22 af 75  MOVD %>22AF,R117
9ac2: f8           TRAP 7
9ac3: 8e 51 1f     CALL $511F
9ac6: 72 02 33     MOV %>2,R51
9ac9: 8e 55 6b     CALL $556B
9acc: f9           TRAP 6
9acd: 8c 58 9a     BR $589A
9ad0: fb           TRAP 4
9ad1: 72 01 33     MOV %>1,R51
9ad4: 8e 57 4a     CALL $574A
9ad7: 88 4b f6 01  MOVD %>4BF6,R1
9adb: 8b 20 ba     STA @>20BA
9ade: 62           MOV B,A
9adf: 8b 20 bb     STA @>20BB
9ae2: 22 02        MOV %>2,A
9ae4: 8b 20 b9     STA @>20B9
9ae7: 72 02 32     MOV %>2,R50
9aea: 8a 22 ca     LDA @>22CA
9aed: 27 10 06     BTJZ %>10,A,$9AF6
9af0: 88 9e 64 75  MOVD %>9E64,R117
9af4: e0 1f        JMP $9B15
9af6: 27 08 06     BTJZ %>8,A,$9AFF
9af9: 88 9e 91 75  MOVD %>9E91,R117
9afd: e0 16        JMP $9B15
9aff: 27 04 06     BTJZ %>4,A,$9B08
9b02: 88 9e 73 75  MOVD %>9E73,R117
9b06: e0 0d        JMP $9B15
9b08: 88 9e 82 75  MOVD %>9E82,R117
9b0c: 8a 21 33     LDA @>2133
9b0f: e2 04        JEQ $9B15
9b11: 88 9e a0 75  MOVD %>9EA0,R117
9b15: 8e 93 75     CALL $9375
9b18: 8e 56 b2     CALL $56B2
9b1b: 8a 22 cd     LDA @>22CD
9b1e: c0           MOV A,B
9b1f: 8a 22 cc     LDA @>22CC
9b22: 8e 57 51     CALL $5751
9b25: 88 22 b7 75  MOVD %>22B7,R117
9b29: f8           TRAP 7
9b2a: 52 06        MOV %>6,B
9b2c: 8e 95 81     CALL $9581
9b2f: 8e 52 17     CALL $5217
9b32: 72 05 33     MOV %>5,R51
9b35: 8e 55 6b     CALL $556B
9b38: 88 22 b9 75  MOVD %>22B9,R117
9b3c: f8           TRAP 7
9b3d: 8e 51 1f     CALL $511F
9b40: 72 04 33     MOV %>4,R51
9b43: 8e 55 6b     CALL $556B
9b46: 88 22 c1 75  MOVD %>22C1,R117
9b4a: f8           TRAP 7
9b4b: 8e 51 1f     CALL $511F
9b4e: 72 03 33     MOV %>3,R51
9b51: 8e 55 6b     CALL $556B
9b54: 88 22 c9 75  MOVD %>22C9,R117
9b58: f8           TRAP 7
9b59: 8e 51 1f     CALL $511F
9b5c: 72 02 33     MOV %>2,R51
9b5f: 8e 55 6b     CALL $556B
9b62: f9           TRAP 6
9b63: 8c 58 9a     BR $589A
9b66: 88 22 ee 75  MOVD %>22EE,R117
9b6a: f8           TRAP 7
9b6b: 8e 47 e0     CALL $47E0
9b6e: 88 3f 01 49  MOVD %>3F01,R73
9b72: f1           TRAP 14
9b73: 8e 47 e0     CALL $47E0
9b76: 88 40 01 49  MOVD %>4001,R73
9b7a: ef           TRAP 16
9b7b: 88 22 de 75  MOVD %>22DE,R117
9b7f: f6           TRAP 9
9b80: ee           TRAP 17
9b81: 8c 9c 17     BR $9C17
9b84: 88 22 ee 75  MOVD %>22EE,R117
9b88: f8           TRAP 7
9b89: 8e 47 e0     CALL $47E0
9b8c: 88 3f 01 49  MOVD %>3F01,R73
9b90: f1           TRAP 14
9b91: 8e 47 e0     CALL $47E0
9b94: 88 40 01 49  MOVD %>4001,R73
9b98: ef           TRAP 16
9b99: 88 22 d6 75  MOVD %>22D6,R117
9b9d: f6           TRAP 9
9b9e: f1           TRAP 14
9b9f: 8c 9c 17     BR $9C17
9ba2: 88 22 d6 75  MOVD %>22D6,R117
9ba6: f8           TRAP 7
9ba7: 88 22 de 75  MOVD %>22DE,R117
9bab: f6           TRAP 9
9bac: ee           TRAP 17
9bad: 8e 47 e0     CALL $47E0
9bb0: 88 bf 01 49  MOVD %>BF01,R73
9bb4: ef           TRAP 16
9bb5: 8e 47 e0     CALL $47E0
9bb8: 88 41 01 49  MOVD %>4101,R73
9bbc: f1           TRAP 14
9bbd: 8c 9c 17     BR $9C17
9bc0: 88 22 e6 75  MOVD %>22E6,R117
9bc4: f8           TRAP 7
9bc5: 8e 47 e0     CALL $47E0
9bc8: 88 3f 01 49  MOVD %>3F01,R73
9bcc: f1           TRAP 14
9bcd: 8e 47 e0     CALL $47E0
9bd0: 88 40 01 49  MOVD %>4001,R73
9bd4: f0           TRAP 15
9bd5: 88 22 de 75  MOVD %>22DE,R117
9bd9: f6           TRAP 9
9bda: f1           TRAP 14
9bdb: e0 3a        JMP $9C17
9bdd: 88 22 e6 75  MOVD %>22E6,R117
9be1: f8           TRAP 7
9be2: 8e 47 e0     CALL $47E0
9be5: 88 3f 01 49  MOVD %>3F01,R73
9be9: f1           TRAP 14
9bea: 8e 47 e0     CALL $47E0
9bed: 88 40 01 49  MOVD %>4001,R73
9bf1: f0           TRAP 15
9bf2: 88 22 d6 75  MOVD %>22D6,R117
9bf6: f6           TRAP 9
9bf7: ee           TRAP 17
9bf8: e0 1d        JMP $9C17
9bfa: 88 22 de 75  MOVD %>22DE,R117
9bfe: f8           TRAP 7
9bff: 88 22 d6 75  MOVD %>22D6,R117
9c03: f6           TRAP 9
9c04: ee           TRAP 17
9c05: 8e 47 e0     CALL $47E0
9c08: 88 bf 01 49  MOVD %>BF01,R73
9c0c: ef           TRAP 16
9c0d: 8e 47 e0     CALL $47E0
9c10: 88 41 01 49  MOVD %>4101,R73
9c14: f1           TRAP 14
9c15: d4 60        INV R96
9c17: 73 bf 32     AND %>BF,R50
9c1a: 8c 47 ff     BR $47FF
9c1d: fb           TRAP 4
9c1e: 77 40 32 27  BTJZ %>40,R50,$9C49
9c22: 8a 20 b9     LDA @>20B9
9c25: e6 11        JNZ $9C38
9c27: 8e 9b c0     CALL $9BC0
9c2a: 88 22 d6 3d  MOVD %>22D6,R61
9c2e: 8e 8b 30     CALL $8B30
9c31: 22 10        MOV %>10,A
9c33: 8e 9d 3c     CALL $9D3C
9c36: e0 24        JMP $9C5C
9c38: 8e 9b 66     CALL $9B66
9c3b: 88 22 d6 3d  MOVD %>22D6,R61
9c3f: 8e 8b 30     CALL $8B30
9c42: 22 10        MOV %>10,A
9c44: 8e 9d 4f     CALL $9D4F
9c47: e0 13        JMP $9C5C
9c49: b5           CLR A
9c4a: 8b 22 f0     STA @>22F0
9c4d: 8b 22 f2     STA @>22F2
9c50: 88 22 d6 3d  MOVD %>22D6,R61
9c54: 8e 8b 30     CALL $8B30
9c57: 52 10        MOV %>10,B
9c59: 8e 9d 2d     CALL $9D2D
9c5c: 72 05 33     MOV %>5,R51
9c5f: 8e 47 f4     CALL $47F4
9c62: 8e 51 1f     CALL $511F
9c65: 8e 55 6b     CALL $556B
9c68: 8a 20 b9     LDA @>20B9
9c6b: e2 09        JEQ $9C76
9c6d: 8a 22 f2     LDA @>22F2
9c70: c0           MOV A,B
9c71: 8a 22 f1     LDA @>22F1
9c74: e0 07        JMP $9C7D
9c76: 8a 22 f0     LDA @>22F0
9c79: c0           MOV A,B
9c7a: 8a 22 ef     LDA @>22EF
9c7d: 8e 57 51     CALL $5751
9c80: f9           TRAP 6
9c81: 8c 58 9a     BR $589A
9c84: fb           TRAP 4
9c85: 77 40 32 27  BTJZ %>40,R50,$9CB0
9c89: 8a 20 b9     LDA @>20B9
9c8c: e6 11        JNZ $9C9F
9c8e: 8e 9b dd     CALL $9BDD
9c91: 88 22 de 3d  MOVD %>22DE,R61
9c95: 8e 8b 30     CALL $8B30
9c98: 22 08        MOV %>8,A
9c9a: 8e 9d 3c     CALL $9D3C
9c9d: e0 24        JMP $9CC3
9c9f: 8e 9b 84     CALL $9B84
9ca2: 88 22 de 3d  MOVD %>22DE,R61
9ca6: 8e 8b 30     CALL $8B30
9ca9: 22 08        MOV %>8,A
9cab: 8e 9d 4f     CALL $9D4F
9cae: e0 13        JMP $9CC3
9cb0: b5           CLR A
9cb1: 8b 22 f0     STA @>22F0
9cb4: 8b 22 f2     STA @>22F2
9cb7: 88 22 de 3d  MOVD %>22DE,R61
9cbb: 8e 8b 30     CALL $8B30
9cbe: 52 08        MOV %>8,B
9cc0: 8e 9d 2d     CALL $9D2D
9cc3: 72 04 33     MOV %>4,R51
9cc6: e0 97        JMP $9C5F
9cc8: fb           TRAP 4
9cc9: 77 40 32 15  BTJZ %>40,R50,$9CE2
9ccd: 8e 9b fa     CALL $9BFA
9cd0: 88 22 e6 3d  MOVD %>22E6,R61
9cd4: 8e 8b 30     CALL $8B30
9cd7: b5           CLR A
9cd8: 8b 22 ef     STA @>22EF
9cdb: 22 04        MOV %>4,A
9cdd: 8b 22 f0     STA @>22F0
9ce0: e0 13        JMP $9CF5
9ce2: b5           CLR A
9ce3: 8b 22 f0     STA @>22F0
9ce6: 88 22 e6 3d  MOVD %>22E6,R61
9cea: 8e 8b 30     CALL $8B30
9ced: 8a 22 ef     LDA @>22EF
9cf0: 24 04        OR %>4,A
9cf2: 8b 22 ef     STA @>22EF
9cf5: 72 03 33     MOV %>3,R51
9cf8: e0 cc        JMP $9CC6
9cfa: fb           TRAP 4
9cfb: 77 40 32 15  BTJZ %>40,R50,$9D14
9cff: 8e 9b a2     CALL $9BA2
9d02: 88 22 ee 3d  MOVD %>22EE,R61
9d06: 8e 8b 30     CALL $8B30
9d09: b5           CLR A
9d0a: 8b 22 f1     STA @>22F1
9d0d: 22 04        MOV %>4,A
9d0f: 8b 22 f2     STA @>22F2
9d12: e0 13        JMP $9D27
9d14: b5           CLR A
9d15: 8b 22 f2     STA @>22F2
9d18: 88 22 ee 3d  MOVD %>22EE,R61
9d1c: 8e 8b 30     CALL $8B30
9d1f: 8a 22 f1     LDA @>22F1
9d22: 24 04        OR %>4,A
9d24: 8b 22 f1     STA @>22F1
9d27: 72 03 33     MOV %>3,R51
9d2a: 8c 9c 5f     BR $9C5F
9d2d: 8a 22 ef     LDA @>22EF
9d30: 64           OR B,A
9d31: 8b 22 ef     STA @>22EF
9d34: 8a 22 f1     LDA @>22F1
9d37: 64           OR B,A
9d38: 8b 22 f1     STA @>22F1
9d3b: 0a           RETS
9d3c: 8b 22 f0     STA @>22F0
9d3f: c0           MOV A,B
9d40: b5           CLR A
9d41: 8b 22 f2     STA @>22F2
9d44: 8b 22 ef     STA @>22EF
9d47: 8a 22 f1     LDA @>22F1
9d4a: 64           OR B,A
9d4b: 8b 22 f1     STA @>22F1
9d4e: 0a           RETS
9d4f: 8b 22 f2     STA @>22F2
9d52: c0           MOV A,B
9d53: b5           CLR A
9d54: 8b 22 f0     STA @>22F0
9d57: 8b 22 f1     STA @>22F1
9d5a: 8a 22 ef     LDA @>22EF
9d5d: 64           OR B,A
9d5e: 8b 22 ef     STA @>22EF
9d61: 0a           RETS
9d62: 8e 9d 68     CALL $9D68
9d65: 8c 60 cd     BR $60CD
9d68: fb           TRAP 4
9d69: b5           CLR A
9d6a: 8b 20 b9     STA @>20B9
9d6d: 22 06        MOV %>6,A
9d6f: 8b 20 b8     STA @>20B8
9d72: 72 02 33     MOV %>2,R51
9d75: 8e 57 4a     CALL $574A
9d78: 88 4a ca 01  MOVD %>4ACA,R1
9d7c: 8b 20 ba     STA @>20BA
9d7f: 62           MOV B,A
9d80: 8b 20 bb     STA @>20BB
9d83: 72 20 32     MOV %>20,R50
9d86: 88 9e af 75  MOVD %>9EAF,R117
9d8a: 8e 93 75     CALL $9375
9d8d: 8e 56 b2     CALL $56B2
9d90: 8a 22 f0     LDA @>22F0
9d93: c0           MOV A,B
9d94: 8a 22 ef     LDA @>22EF
9d97: 8e 57 51     CALL $5751
9d9a: 88 22 d6 75  MOVD %>22D6,R117
9d9e: f8           TRAP 7
9d9f: 8e 51 1f     CALL $511F
9da2: 72 05 33     MOV %>5,R51
9da5: 8e 55 6b     CALL $556B
9da8: 88 22 de 75  MOVD %>22DE,R117
9dac: f8           TRAP 7
9dad: 8e 51 1f     CALL $511F
9db0: 72 04 33     MOV %>4,R51
9db3: 8e 55 6b     CALL $556B
9db6: 88 22 e6 75  MOVD %>22E6,R117
9dba: f8           TRAP 7
9dbb: 8e 51 1f     CALL $511F
9dbe: 72 03 33     MOV %>3,R51
9dc1: 8e 55 6b     CALL $556B
9dc4: f9           TRAP 6
9dc5: 8c 58 9a     BR $589A
9dc8: fb           TRAP 4
9dc9: 22 01        MOV %>1,A
9dcb: 8b 20 b9     STA @>20B9
9dce: 22 06        MOV %>6,A
9dd0: 8b 20 b8     STA @>20B8
9dd3: 72 02 33     MOV %>2,R51
9dd6: 8e 57 4a     CALL $574A
9dd9: 88 4a e8 01  MOVD %>4AE8,R1
9ddd: 8b 20 ba     STA @>20BA
9de0: 62           MOV B,A
9de1: 8b 20 bb     STA @>20BB
9de4: 72 02 32     MOV %>2,R50
9de7: 88 9e be 75  MOVD %>9EBE,R117
9deb: 8e 93 75     CALL $9375
9dee: 8e 56 b2     CALL $56B2
9df1: 8a 22 f2     LDA @>22F2
9df4: c0           MOV A,B
9df5: 8a 22 f1     LDA @>22F1
9df8: 8e 57 51     CALL $5751
9dfb: 88 22 d6 75  MOVD %>22D6,R117
9dff: f8           TRAP 7
9e00: 8e 51 1f     CALL $511F
9e03: 72 05 33     MOV %>5,R51
9e06: 8e 55 6b     CALL $556B
9e09: 88 22 de 75  MOVD %>22DE,R117
9e0d: f8           TRAP 7
9e0e: 8e 51 1f     CALL $511F
9e11: 72 04 33     MOV %>4,R51
9e14: 8e 55 6b     CALL $556B
9e17: 88 22 ee 75  MOVD %>22EE,R117
9e1b: f8           TRAP 7
9e1c: 8e 51 1f     CALL $511F
9e1f: 72 03 33     MOV %>3,R51
9e22: 8e 55 6b     CALL $556B
9e25: f9           TRAP 6
9e26: 8c 58 9a     BR $589A
9e29: 53 4c        AND %>4C,B
9e2b: 20           Illegal Opcode
9e2c: 53 59        AND %>59,B
9e2e: 44 44 42     OR R68,R66
9e31: 20           Illegal Opcode
9e32: 44 42 58     OR R66,R88
9e35: 20           Illegal Opcode
9e36: 20           Illegal Opcode
9e37: 20           Illegal Opcode
9e38: 53 4c        AND %>4C,B
9e3a: 20           Illegal Opcode
9e3b: 53 59        AND %>59,B
9e3d: 44 44 42     OR R68,R66
9e40: 20           Illegal Opcode
9e41: 44 42 58     OR R66,R88
9e44: 44 42 25     OR R66,R37
9e47: 4c 49 46     MPY R73,R70
9e4a: 4d 4f 31     CMP R79,R49
9e4d: 43 53 54     AND R83,R84
9e50: 53 41        AND %>41,B
9e52: 4c 20 20     MPY R32,R32
9e55: 20           Illegal Opcode
9e56: 59 52        ADC %>52,B
9e58: 20           Illegal Opcode
9e59: 44 45 50     OR R69,R80
9e5c: 52 42        MOV %>42,B
9e5e: 56 52 44     BTJO %>52,B,$9EA5
9e61: 56 53 4c     BTJO %>53,B,$9EB0
9e64: 20           Illegal Opcode
9e65: 59 52        ADC %>52,B
9e67: 20           Illegal Opcode
9e68: 44 45 50     OR R69,R80
9e6b: 52 42        MOV %>42,B
9e6d: 56 52 44     BTJO %>52,B,$9EB4
9e70: 56 44 42     BTJO %>44,B,$9EB5
9e73: 20           Illegal Opcode
9e74: 59 52        ADC %>52,B
9e76: 20           Illegal Opcode
9e77: 44 45 50     OR R69,R80
9e7a: 52 42        MOV %>42,B
9e7c: 56 52 44     BTJO %>52,B,$9EC3
9e7f: 56 44 42     BTJO %>44,B,$9EC4
9e82: 58 59        ADD %>59,B
9e84: 52 20        MOV %>20,B
9e86: 44 45 50     OR R69,R80
9e89: 52 42        MOV %>42,B
9e8b: 56 52 44     BTJO %>52,B,$9ED2
9e8e: 56 53 59     BTJO %>53,B,$9EEA
9e91: 44 59 52     OR R89,R82
9e94: 20           Illegal Opcode
9e95: 44 45 50     OR R69,R80
9e98: 52 42        MOV %>42,B
9e9a: 56 52 44     BTJO %>52,B,$9EE1
9e9d: 56 58 53     BTJO %>58,B,$9EF3
9ea0: 4c 43 53     MPY R67,R83
9ea3: 54 53        OR %>53,B
9ea5: 45 4c 4d     XOR R76,R77
9ea8: 41           Illegal Opcode
9ea9: 52 20        MOV %>20,B
9eab: 20           Illegal Opcode
9eac: 20           Illegal Opcode
9ead: 20           Illegal Opcode
9eae: 20           Illegal Opcode
9eaf: 20           Illegal Opcode
9eb0: 43 53 54     AND R83,R84
9eb3: 53 45        AND %>45,B
9eb5: 4c 4d 55     MPY R77,R85
9eb8: 20           Illegal Opcode
9eb9: 20           Illegal Opcode
9eba: 20           Illegal Opcode
9ebb: 20           Illegal Opcode
9ebc: 20           Illegal Opcode
9ebd: 20           Illegal Opcode
9ebe: 20           Illegal Opcode
9ebf: 44 54 31     OR R84,R49
9ec2: 44 54 32     OR R84,R50
9ec5: 44 42 44     OR R66,R68
9ec8: 20           Illegal Opcode
9ec9: 20           Illegal Opcode
9eca: 20           Illegal Opcode
9ecb: 20           Illegal Opcode
9ecc: 20           Illegal Opcode
9ecd: 20           Illegal Opcode
9ece: 41           Illegal Opcode
9ecf: 43 54 33     AND R84,R51
9ed2: 36 30 20     BTJO R48,B,$9EF5
9ed5: 20           Illegal Opcode
9ed6: 20           Illegal Opcode
9ed7: 20           Illegal Opcode
9ed8: 20           Illegal Opcode
9ed9: 20           Illegal Opcode
9eda: 20           Illegal Opcode
9edb: 20           Illegal Opcode
9edc: 20           Illegal Opcode
9edd: 53 44        AND %>44,B
9edf: 54 43        OR %>43,B
9ee1: 50           Illegal Opcode
9ee2: 4e 52 44     DAC R82,R68
9ee5: 54 52        OR %>52,B
9ee7: 56 20 20     BTJO %>20,B,$9F0A
9eea: 20           Illegal Opcode
9eeb: 20           Illegal Opcode
9eec: 59 4c        ADC %>4C,B
9eee: 44 50 52     OR R80,R82
9ef1: 49 20 20     ADC R32,R32
9ef4: 20           Illegal Opcode
9ef5: 41           Illegal Opcode
9ef6: 43 54 33     AND R84,R51
9ef9: 36 30 51     BTJO R48,B,$9F4D
9efc: 54 59        OR %>59,B
9efe: 50           Illegal Opcode
9eff: 52 4e        MOV %>4E,B
9f01: 41           Illegal Opcode
9f02: 49 20 4e     ADC R32,R78
9f05: 45 54 20     XOR R84,R32
9f08: 20           Illegal Opcode
9f09: 20           Illegal Opcode
9f0a: d5 77        CLR R119
9f0c: 8e a0 4b     CALL $A04B
9f0f: 98 3f 3d     MOVD R63,R61
9f12: 9a 45        LDA *R69
9f14: b3           INC A
9f15: c0           MOV A,B
9f16: 8e b6 4b     CALL $B64B
9f19: 8e a0 99     CALL $A099
9f1c: 88 23 1a 3d  MOVD %>231A,R61
9f20: 8e 8b 30     CALL $8B30
9f23: 8e f0 15     CALL $F015
9f26: 88 23 b4 3d  MOVD %>23B4,R61
9f2a: 8e 8b 30     CALL $8B30
9f2d: 88 23 ac 3d  MOVD %>23AC,R61
9f31: 8e 8b 30     CALL $8B30
9f34: 88 23 12 3d  MOVD %>2312,R61
9f38: 8e 8b 30     CALL $8B30
9f3b: 88 25 dd 3d  MOVD %>25DD,R61
9f3f: 8e 8b 30     CALL $8B30
9f42: 88 22 93 3d  MOVD %>2293,R61
9f46: 8e 8b 30     CALL $8B30
9f49: 88 23 1a 75  MOVD %>231A,R117
9f4d: f8           TRAP 7
9f4e: 8e a0 f3     CALL $A0F3
9f51: d5 77        CLR R119
9f53: 8e a0 4b     CALL $A04B
9f56: 88 23 ac 75  MOVD %>23AC,R117
9f5a: f8           TRAP 7
9f5b: 88 22 83 3d  MOVD %>2283,R61
9f5f: 8e 8b 30     CALL $8B30
9f62: 8e a0 a9     CALL $A0A9
9f65: 88 22 8b 3d  MOVD %>228B,R61
9f69: 8e 8b 30     CALL $8B30
9f6c: 8e a1 0e     CALL $A10E
9f6f: f5           TRAP 10
9f70: 9a 45        LDA *R69
9f72: b3           INC A
9f73: 1d 77        CMP R119,A
9f75: e6 08        JNZ $9F7F
9f77: 98 41 75     MOVD R65,R117
9f7a: f8           TRAP 7
9f7b: d4 60        INV R96
9f7d: e0 16        JMP $9F95
9f7f: 7d 00 77     CMP %>0,R119
9f82: e6 06        JNZ $9F8A
9f84: 98 3f 75     MOVD R63,R117
9f87: f8           TRAP 7
9f88: e0 0b        JMP $9F95
9f8a: 98 3f 75     MOVD R63,R117
9f8d: f8           TRAP 7
9f8e: 98 41 75     MOVD R65,R117
9f91: f6           TRAP 9
9f92: d4 48        INV R72
9f94: ef           TRAP 16
9f95: f4           TRAP 11
9f96: f1           TRAP 14
9f97: f5           TRAP 10
9f98: 88 25 dd 75  MOVD %>25DD,R117
9f9c: f6           TRAP 9
9f9d: ef           TRAP 16
9f9e: 88 25 dd 3d  MOVD %>25DD,R61
9fa2: 8e 8b 30     CALL $8B30
9fa5: 88 22 8b 75  MOVD %>228B,R117
9fa9: f8           TRAP 7
9faa: f4           TRAP 11
9fab: f1           TRAP 14
9fac: f5           TRAP 10
9fad: 88 22 93 75  MOVD %>2293,R117
9fb1: f6           TRAP 9
9fb2: ef           TRAP 16
9fb3: 88 22 93 3d  MOVD %>2293,R61
9fb7: 8e 8b 30     CALL $8B30
9fba: f4           TRAP 11
9fbb: 76 ff 3b 13  BTJO %>FF,R59,$9FD2
9fbf: 88 22 8b 75  MOVD %>228B,R117
9fc3: f8           TRAP 7
9fc4: f1           TRAP 14
9fc5: 88 23 12 75  MOVD %>2312,R117
9fc9: f6           TRAP 9
9fca: ef           TRAP 16
9fcb: 88 23 12 3d  MOVD %>2312,R61
9fcf: 8e 8b 30     CALL $8B30
9fd2: 9a 45        LDA *R69
9fd4: b3           INC A
9fd5: 4d 00 77     CMP R0,R119
9fd8: e3 05        JHS $9FDF
9fda: d3 77        INC R119
9fdc: 8c 9f 53     BR $9F53
9fdf: 0a           RETS
9fe0: 8e f0 15     CALL $F015
9fe3: 88 25 dd 3d  MOVD %>25DD,R61
9fe7: 8e 8b 30     CALL $8B30
9fea: d5 77        CLR R119
9fec: 8e a0 4b     CALL $A04B
9fef: 88 23 ac 75  MOVD %>23AC,R117
9ff3: f8           TRAP 7
9ff4: 88 22 83 3d  MOVD %>2283,R61
9ff8: 8e 8b 30     CALL $8B30
9ffb: 8e a0 a9     CALL $A0A9
9ffe: 88 22 8b 3d  MOVD %>228B,R61
a002: 8e 8b 30     CALL $8B30
a005: 8e a1 0e     CALL $A10E
a008: f5           TRAP 10
a009: 9a 45        LDA *R69
a00b: b3           INC A
a00c: 1d 77        CMP R119,A
a00e: e6 08        JNZ $A018
a010: 98 41 75     MOVD R65,R117
a013: f8           TRAP 7
a014: d4 60        INV R96
a016: e0 16        JMP $A02E
a018: 7d 00 77     CMP %>0,R119
a01b: e6 06        JNZ $A023
a01d: 98 3f 75     MOVD R63,R117
a020: f8           TRAP 7
a021: e0 0b        JMP $A02E
a023: 98 3f 75     MOVD R63,R117
a026: f8           TRAP 7
a027: 98 41 75     MOVD R65,R117
a02a: f6           TRAP 9
a02b: d4 48        INV R72
a02d: ef           TRAP 16
a02e: f4           TRAP 11
a02f: f1           TRAP 14
a030: 88 25 dd 75  MOVD %>25DD,R117
a034: f6           TRAP 9
a035: ef           TRAP 16
a036: 88 25 dd 3d  MOVD %>25DD,R61
a03a: 8e 8b 30     CALL $8B30
a03d: 9a 45        LDA *R69
a03f: b3           INC A
a040: 4d 00 77     CMP R0,R119
a043: e3 05        JHS $A04A
a045: d3 77        INC R119
a047: 8c 9f ec     BR $9FEC
a04a: 0a           RETS
a04b: 88 23 bd 3f  MOVD %>23BD,R63
a04f: 32 77        MOV R119,B
a051: e2 0d        JEQ $A060
a053: ce           RL B
a054: ce           RL B
a055: ce           RL B
a056: a8 23 bd 3f  MOVD %>23BD(B),R63
a05a: 5a 08        SUB %>8,B
a05c: a8 23 bd 41  MOVD %>23BD(B),R65
a060: 88 23 7d 45  MOVD %>237D,R69
a064: 8a 21 31     LDA @>2131
a067: e2 10        JEQ $A079
a069: 78 c8 3f     ADD %>C8,R63
a06c: 79 00 3e     ADC %>0,R62
a06f: 78 c8 41     ADD %>C8,R65
a072: 79 00 40     ADC %>0,R64
a075: 88 23 a1 45  MOVD %>23A1,R69
a079: 0a           RETS
a07a: 8a 21 31     LDA @>2131
a07d: e2 06        JEQ $A085
a07f: 88 23 a0 75  MOVD %>23A0,R117
a083: e0 04        JMP $A089
a085: 88 23 7c 75  MOVD %>237C,R117
a089: f6           TRAP 9
a08a: 8e f0 15     CALL $F015
a08d: 88 41 01 61  MOVD %>4101,R97
a091: ee           TRAP 17
a092: 88 23 ac 3d  MOVD %>23AC,R61
a096: 8c 8b 30     BR $8B30
a099: 8a 21 31     LDA @>2131
a09c: e2 05        JEQ $A0A3
a09e: 8a 23 a1     LDA @>23A1
a0a1: e0 03        JMP $A0A6
a0a3: 8a 23 7d     LDA @>237D
a0a6: b3           INC A
a0a7: d0 77        MOV A,R119
a0a9: 8e f0 15     CALL $F015
a0ac: d5 3d        CLR R61
a0ae: 76 ff 77 05  BTJO %>FF,R119,$A0B7
a0b2: 88 40 01 61  MOVD %>4001,R97
a0b6: 0a           RETS
a0b7: f5           TRAP 10
a0b8: 88 40 01 61  MOVD %>4001,R97
a0bc: e0 1c        JMP $A0DA
a0be: 32 3d        MOV R61,B
a0c0: c2           DEC B
a0c1: 5c 03        MPY %>3,B
a0c3: 58 05        ADD %>5,B
a0c5: a8 25 48 75  MOVD %>2548(B),R117
a0c9: 8a 21 31     LDA @>2131
a0cc: e2 06        JEQ $A0D4
a0ce: 78 48 75     ADD %>48,R117
a0d1: 79 00 74     ADC %>0,R116
a0d4: f8           TRAP 7
a0d5: 52 05        MOV %>5,B
a0d7: 8e 95 81     CALL $9581
a0da: f4           TRAP 11
a0db: ef           TRAP 16
a0dc: f5           TRAP 10
a0dd: d3 3d        INC R61
a0df: 4d 77 3d     CMP R119,R61
a0e2: e7 da        JL $A0BE
a0e4: f4           TRAP 11
a0e5: d4 48        INV R72
a0e7: 8e f0 15     CALL $F015
a0ea: 88 40 01 61  MOVD %>4001,R97
a0ee: ef           TRAP 16
a0ef: 0a           RETS
a0f0: 8e a0 99     CALL $A099
a0f3: 88 23 ac 75  MOVD %>23AC,R117
a0f7: f6           TRAP 9
a0f8: f1           TRAP 14
a0f9: 8e 47 e0     CALL $47E0
a0fc: 88 3f 50 49  MOVD %>3F50,R73
a100: f1           TRAP 14
a101: 12 60        MOV R96,A
a103: e5 02        JPZ $A107
a105: d4 60        INV R96
a107: 88 20 2d 3d  MOVD %>202D,R61
a10b: 8c 8b 30     BR $8B30
a10e: 88 22 83 75  MOVD %>2283,R117
a112: f8           TRAP 7
a113: 12 61        MOV R97,A
a115: e2 1a        JEQ $A131
a117: 88 20 2d 75  MOVD %>202D,R117
a11b: f8           TRAP 7
a11c: 12 61        MOV R97,A
a11e: e2 0b        JEQ $A12B
a120: 7d 3f 60     CMP %>3F,R96
a123: e7 06        JL $A12B
a125: e6 07        JNZ $A12E
a127: 76 f0 61 03  BTJO %>F0,R97,$A12E
a12b: 8c 8c 77     BR $8C77
a12e: 8c 8c ae     BR $8CAE
a131: 88 22 8b 75  MOVD %>228B,R117
a135: f8           TRAP 7
a136: 0a           RETS
a137: 88 23 ac 75  MOVD %>23AC,R117
a13b: f8           TRAP 7
a13c: 76 ff 61 07  BTJO %>FF,R97,$A147
a140: 8e f0 15     CALL $F015
a143: 88 40 01 61  MOVD %>4001,R97
a147: 0a           RETS
a148: 88 20 2d 75  MOVD %>202D,R117
a14c: f8           TRAP 7
a14d: 8e 47 e0     CALL $47E0
a150: 12 61        MOV R97,A
a152: e2 0b        JEQ $A15F
a154: 7d 3f 60     CMP %>3F,R96
a157: e7 06        JL $A15F
a159: e6 09        JNZ $A164
a15b: 76 f0 61 05  BTJO %>F0,R97,$A164
a15f: 88 23 b4 75  MOVD %>23B4,R117
a163: f6           TRAP 9
a164: 0a           RETS
a165: d5 3b        CLR R59
a167: 8e 7a 0d     CALL $7A0D
a16a: 8e 9f 0a     CALL $9F0A
a16d: 88 25 dd 75  MOVD %>25DD,R117
a171: f8           TRAP 7
a172: 88 23 b4 3d  MOVD %>23B4,R61
a176: 8e 8b 30     CALL $8B30
a179: 88 22 93 75  MOVD %>2293,R117
a17d: f6           TRAP 9
a17e: f0           TRAP 15
a17f: 8e 47 e0     CALL $47E0
a182: 88 3f 50 49  MOVD %>3F50,R73
a186: f1           TRAP 14
a187: f5           TRAP 10
a188: 88 23 12 75  MOVD %>2312,R117
a18c: f6           TRAP 9
a18d: 88 23 b4 75  MOVD %>23B4,R117
a191: f8           TRAP 7
a192: f0           TRAP 15
a193: 8e 47 e0     CALL $47E0
a196: 88 40 06 49  MOVD %>4006,R73
a19a: 8e f0 1b     CALL $F01B
a19d: ee           TRAP 17
a19e: f4           TRAP 11
a19f: 8e f0 51     CALL $F051
a1a2: d4 48        INV R72
a1a4: ef           TRAP 16
a1a5: 88 23 b4 75  MOVD %>23B4,R117
a1a9: f6           TRAP 9
a1aa: f1           TRAP 14
a1ab: f4           TRAP 11
a1ac: 8e f0 1b     CALL $F01B
a1af: f5           TRAP 10
a1b0: ee           TRAP 17
a1b1: f4           TRAP 11
a1b2: d4 48        INV R72
a1b4: ef           TRAP 16
a1b5: 88 23 b4 75  MOVD %>23B4,R117
a1b9: f6           TRAP 9
a1ba: ee           TRAP 17
a1bb: 88 23 ac 3d  MOVD %>23AC,R61
a1bf: 8e 8b 30     CALL $8B30
a1c2: 8e f0 15     CALL $F015
a1c5: d3 3b        INC R59
a1c7: 8e 9f 3b     CALL $9F3B
a1ca: 8e a1 37     CALL $A137
a1cd: 88 25 dd 75  MOVD %>25DD,R117
a1d1: f6           TRAP 9
a1d2: ee           TRAP 17
a1d3: f5           TRAP 10
a1d4: 8e a1 48     CALL $A148
a1d7: 88 22 93 75  MOVD %>2293,R117
a1db: f8           TRAP 7
a1dc: ef           TRAP 16
a1dd: f5           TRAP 10
a1de: 8e a1 37     CALL $A137
a1e1: 8e 47 e0     CALL $47E0
a1e4: 88 40 01 49  MOVD %>4001,R73
a1e8: ef           TRAP 16
a1e9: f4           TRAP 11
a1ea: ee           TRAP 17
a1eb: f4           TRAP 11
a1ec: d4 60        INV R96
a1ee: ef           TRAP 16
a1ef: 88 25 dd 75  MOVD %>25DD,R117
a1f3: f6           TRAP 9
a1f4: ee           TRAP 17
a1f5: d8 61        PUSH R97
a1f7: 12 60        MOV R96,A
a1f9: e5 01        JPZ $A1FC
a1fb: b4           INV A
a1fc: b8           PUSH A
a1fd: 88 23 ac 75  MOVD %>23AC,R117
a201: f6           TRAP 9
a202: ef           TRAP 16
a203: 88 23 ac 3d  MOVD %>23AC,R61
a207: 8e 8b 30     CALL $8B30
a20a: b9           POP A
a20b: c9           POP B
a20c: e2 09        JEQ $A217
a20e: 2d 3a        CMP %>3A,A
a210: e7 05        JL $A217
a212: e6 11        JNZ $A225
a214: 56 f0 0e     BTJO %>F0,B,$A225
a217: 8e 47 e0     CALL $47E0
a21a: 88 41 01 49  MOVD %>4101,R73
a21e: 88 23 ac 75  MOVD %>23AC,R117
a222: f8           TRAP 7
a223: f1           TRAP 14
a224: 0a           RETS
a225: 7d 20 3b     CMP %>20,R59
a228: e3 03        JHS $A22D
a22a: 8c a1 c2     BR $A1C2
a22d: 88 00 07 6f  MOVD %>0007,R111
a231: fa           TRAP 5
a232: 8e a2 5c     CALL $A25C
a235: 88 23 b4 3d  MOVD %>23B4,R61
a239: 8e 8b 30     CALL $8B30
a23c: 8e a0 99     CALL $A099
a23f: 88 22 8b 3d  MOVD %>228B,R61
a243: 8e 8b 30     CALL $8B30
a246: 88 23 ac 75  MOVD %>23AC,R117
a24a: f8           TRAP 7
a24b: 88 22 83 3d  MOVD %>2283,R61
a24f: 8e 8b 30     CALL $8B30
a252: 8e 8c ae     CALL $8CAE
a255: 88 23 b4 75  MOVD %>23B4,R117
a259: f6           TRAP 9
a25a: ee           TRAP 17
a25b: 0a           RETS
a25c: 8e 7a 0d     CALL $7A0D
a25f: 8e a0 7a     CALL $A07A
a262: 8e a0 f0     CALL $A0F0
a265: 8e 9f e0     CALL $9FE0
a268: f5           TRAP 10
a269: 8e a1 37     CALL $A137
a26c: f4           TRAP 11
a26d: ee           TRAP 17
a26e: 0a           RETS
a26f: 88 26 0f 75  MOVD %>260F,R117
a273: f8           TRAP 7
a274: 8e 47 e0     CALL $47E0
a277: 88 40 01 49  MOVD %>4001,R73
a27b: ee           TRAP 17
a27c: 88 22 8b 3d  MOVD %>228B,R61
a280: 8e 8b 30     CALL $8B30
a283: 88 26 07 75  MOVD %>2607,R117
a287: f8           TRAP 7
a288: 8e 47 e0     CALL $47E0
a28b: 88 3f 01 49  MOVD %>3F01,R73
a28f: f1           TRAP 14
a290: 88 22 83 3d  MOVD %>2283,R61
a294: 8e 8b 30     CALL $8B30
a297: 8e 8c 77     CALL $8C77
a29a: 88 26 0f 75  MOVD %>260F,R117
a29e: f6           TRAP 9
a29f: d3 48        INC R72
a2a1: f1           TRAP 14
a2a2: 8c 47 ff     BR $47FF
a2a5: 88 26 0f 75  MOVD %>260F,R117
a2a9: f8           TRAP 7
a2aa: 88 22 8b 3d  MOVD %>228B,R61
a2ae: 8e 8b 30     CALL $8B30
a2b1: 88 25 ff 75  MOVD %>25FF,R117
a2b5: f6           TRAP 9
a2b6: ee           TRAP 17
a2b7: 8e 47 e0     CALL $47E0
a2ba: 88 3f 01 49  MOVD %>3F01,R73
a2be: f1           TRAP 14
a2bf: 88 22 83 3d  MOVD %>2283,R61
a2c3: 8e 8b 30     CALL $8B30
a2c6: 8e 8c 77     CALL $8C77
a2c9: 8e 47 e0     CALL $47E0
a2cc: 88 41 01 49  MOVD %>4101,R73
a2d0: f1           TRAP 14
a2d1: 8c 47 ff     BR $47FF
a2d4: 88 25 f5 75  MOVD %>25F5,R117
a2d8: f8           TRAP 7
a2d9: 8e 47 e0     CALL $47E0
a2dc: 88 3f 01 49  MOVD %>3F01,R73
a2e0: f1           TRAP 14
a2e1: 8e 47 e0     CALL $47E0
a2e4: 88 40 01 49  MOVD %>4001,R73
a2e8: ef           TRAP 16
a2e9: 88 25 ed 75  MOVD %>25ED,R117
a2ed: f6           TRAP 9
a2ee: ee           TRAP 17
a2ef: e0 38        JMP $A329
a2f1: 88 25 f5 75  MOVD %>25F5,R117
a2f5: f8           TRAP 7
a2f6: 8e 47 e0     CALL $47E0
a2f9: 88 3f 01 49  MOVD %>3F01,R73
a2fd: f1           TRAP 14
a2fe: 8e 47 e0     CALL $47E0
a301: 88 40 01 49  MOVD %>4001,R73
a305: ef           TRAP 16
a306: 88 25 e5 75  MOVD %>25E5,R117
a30a: f6           TRAP 9
a30b: f1           TRAP 14
a30c: e0 1b        JMP $A329
a30e: 88 25 e5 75  MOVD %>25E5,R117
a312: f8           TRAP 7
a313: 88 25 ed 75  MOVD %>25ED,R117
a317: f6           TRAP 9
a318: ee           TRAP 17
a319: 8e 47 e0     CALL $47E0
a31c: 88 bf 01 49  MOVD %>BF01,R73
a320: ef           TRAP 16
a321: 8e 47 e0     CALL $47E0
a324: 88 41 01 49  MOVD %>4101,R73
a328: f1           TRAP 14
a329: 73 bf 32     AND %>BF,R50
a32c: 8c 47 ff     BR $47FF
a32f: 41           Illegal Opcode
a330: 03           Illegal Opcode
a331: 65           XOR B,A
a332: 25 00        XOR %>0,A
a334: 00           NOP
a335: 00           NOP
a336: 00           NOP
a337: 40           Illegal Opcode
a338: 30           Illegal Opcode
a339: 60           Illegal Opcode
a33a: 00           NOP
a33b: 00           NOP
a33c: 00           NOP
a33d: 00           NOP
a33e: 00           NOP
a33f: bd           RRC A
a340: 57 80 42     BTJZ %>80,B,$A385
a343: 00           NOP
a344: 00           NOP
a345: 00           NOP
a346: 00           NOP
a347: 42 14 60     MOV R20,R96
a34a: 97 00 00     BTJZP B,P0,$A34D
a34d: 00           NOP
a34e: 00           NOP
a34f: 41           Illegal Opcode
a350: 14 61        OR R97,A
a352: 00           NOP
a353: 00           NOP
a354: 00           NOP
a355: 00           NOP
a356: 00           NOP
a357: 42 88 29     MOV R136,R41
a35a: 27 00 00     BTJZ %>0,A,$A35D
a35d: 00           NOP
a35e: 00           NOP
a35f: 41           Illegal Opcode
a360: 03           Illegal Opcode
a361: 60           Illegal Opcode
a362: 00           NOP
a363: 00           NOP
a364: 00           NOP
a365: 00           NOP
a366: 00           NOP
a367: f5           TRAP 10
a368: 8e a4 e4     CALL $A4E4
a36b: 8e a3 c9     CALL $A3C9
a36e: f4           TRAP 11
a36f: 8e f0 39     CALL $F039
a372: e2 04        JEQ $A378
a374: 72 06 6f     MOV %>6,R111
a377: fa           TRAP 5
a378: 0a           RETS
a379: 88 26 29 75  MOVD %>2629,R117
a37d: f8           TRAP 7
a37e: 88 26 31 75  MOVD %>2631,R117
a382: f6           TRAP 9
a383: f0           TRAP 15
a384: 0a           RETS
a385: 8a 26 34     LDA @>2634
a388: 27 10 05     BTJZ %>10,A,$A390
a38b: 8e a3 79     CALL $A379
a38e: e0 03        JMP $A393
a390: 8e a6 d8     CALL $A6D8
a393: 8c a4 a6     BR $A4A6
a396: 8a 26 34     LDA @>2634
a399: 26 10 04     BTJO %>10,A,$A3A0
a39c: 72 05 6f     MOV %>5,R111
a39f: fa           TRAP 5
a3a0: 0a           RETS
a3a1: 8e a3 96     CALL $A396
a3a4: 88 26 31 75  MOVD %>2631,R117
a3a8: f6           TRAP 9
a3a9: 88 26 21 75  MOVD %>2621,R117
a3ad: f8           TRAP 7
a3ae: f0           TRAP 15
a3af: 8e a3 c9     CALL $A3C9
a3b2: 8c a3 67     BR $A367
a3b5: 8e a3 96     CALL $A396
a3b8: 88 26 29 75  MOVD %>2629,R117
a3bc: f6           TRAP 9
a3bd: 88 26 21 75  MOVD %>2621,R117
a3c1: f8           TRAP 7
a3c2: ef           TRAP 16
a3c3: 8e a3 c9     CALL $A3C9
a3c6: 8c a3 67     BR $A367
a3c9: 8e a5 51     CALL $A551
a3cc: f5           TRAP 10
a3cd: 8e f0 15     CALL $F015
a3d0: 88 22 8b 3d  MOVD %>228B,R61
a3d4: 8e 8b 30     CALL $8B30
a3d7: 8e f0 30     CALL $F030
a3da: 88 a3 46 75  MOVD %>A346,R117
a3de: f6           TRAP 9
a3df: d4 48        INV R72
a3e1: ef           TRAP 16
a3e2: 88 22 83 3d  MOVD %>2283,R61
a3e6: 8e 8b 30     CALL $8B30
a3e9: 8e 47 e0     CALL $47E0
a3ec: 88 40 04 49  MOVD %>4004,R73
a3f0: f1           TRAP 14
a3f1: 8e 47 e0     CALL $47E0
a3f4: 88 bf 01 49  MOVD %>BF01,R73
a3f8: ef           TRAP 16
a3f9: 88 a3 4e 75  MOVD %>A34E,R117
a3fd: f6           TRAP 9
a3fe: 8e f0 1b     CALL $F01B
a401: ee           TRAP 17
a402: 8e 47 e0     CALL $47E0
a405: 88 40 01 49  MOVD %>4001,R73
a409: ef           TRAP 16
a40a: 8e 8b 3c     CALL $8B3C
a40d: 8e 47 e0     CALL $47E0
a410: 88 3f 75 49  MOVD %>3F75,R73
a414: f1           TRAP 14
a415: 8e 8b 3c     CALL $8B3C
a418: 88 22 83 75  MOVD %>2283,R117
a41c: f6           TRAP 9
a41d: ef           TRAP 16
a41e: 88 22 83 3d  MOVD %>2283,R61
a422: 8e 8b 30     CALL $8B30
a425: 8e 47 e0     CALL $47E0
a428: 88 40 04 49  MOVD %>4004,R73
a42c: f1           TRAP 14
a42d: 8e 47 e0     CALL $47E0
a430: 88 bf 01 49  MOVD %>BF01,R73
a434: ef           TRAP 16
a435: 88 a3 56 75  MOVD %>A356,R117
a439: f6           TRAP 9
a43a: 8e f0 1b     CALL $F01B
a43d: ee           TRAP 17
a43e: 8e 8b 3c     CALL $8B3C
a441: 12 61        MOV R97,A
a443: 8b 22 8a     STA @>228A
a446: 12 62        MOV R98,A
a448: 8b 22 8b     STA @>228B
a44b: 88 a3 36 75  MOVD %>A336,R117
a44f: f6           TRAP 9
a450: f1           TRAP 14
a451: 8e 8b 3c     CALL $8B3C
a454: 88 22 83 75  MOVD %>2283,R117
a458: f6           TRAP 9
a459: f0           TRAP 15
a45a: f5           TRAP 10
a45b: 8e 47 e0     CALL $47E0
a45e: 88 c0 50 49  MOVD %>C050,R73
a462: ef           TRAP 16
a463: 88 a3 3e 75  MOVD %>A33E,R117
a467: f6           TRAP 9
a468: 8e f0 1b     CALL $F01B
a46b: ee           TRAP 17
a46c: 8e 8b 3c     CALL $8B3C
a46f: 12 61        MOV R97,A
a471: 8e a5 e5     CALL $A5E5
a474: 88 a3 3e 75  MOVD %>A33E,R117
a478: f6           TRAP 9
a479: f1           TRAP 14
a47a: 8e 47 e0     CALL $47E0
a47d: 88 3f 50 49  MOVD %>3F50,R73
a481: ef           TRAP 16
a482: 8e 8b 3c     CALL $8B3C
a485: f4           TRAP 11
a486: f0           TRAP 15
a487: 12 61        MOV R97,A
a489: 8b 22 89     STA @>2289
a48c: 8e f0 15     CALL $F015
a48f: 8a 22 8b     LDA @>228B
a492: d0 64        MOV A,R100
a494: 8a 22 8a     LDA @>228A
a497: d0 63        MOV A,R99
a499: 8a 22 89     LDA @>2289
a49c: d0 62        MOV A,R98
a49e: 8a 22 88     LDA @>2288
a4a1: d0 61        MOV A,R97
a4a3: 72 40 60     MOV %>40,R96
a4a6: 73 bf 32     AND %>BF,R50
a4a9: 8c 47 ff     BR $47FF
a4ac: 88 22 93 75  MOVD %>2293,R117
a4b0: f8           TRAP 7
a4b1: 8e 47 e0     CALL $47E0
a4b4: 88 40 04 49  MOVD %>4004,R73
a4b8: ef           TRAP 16
a4b9: 8e 47 e0     CALL $47E0
a4bc: 88 40 07 49  MOVD %>4007,R73
a4c0: 8e f0 1b     CALL $F01B
a4c3: ee           TRAP 17
a4c4: 8e 8b 3c     CALL $8B3C
a4c7: 8e 47 e0     CALL $47E0
a4ca: 88 40 07 49  MOVD %>4007,R73
a4ce: f1           TRAP 14
a4cf: f5           TRAP 10
a4d0: 88 22 93 75  MOVD %>2293,R117
a4d4: f8           TRAP 7
a4d5: 8e 47 e0     CALL $47E0
a4d8: 88 40 05 49  MOVD %>4005,R73
a4dc: ef           TRAP 16
a4dd: f4           TRAP 11
a4de: d4 48        INV R72
a4e0: ef           TRAP 16
a4e1: 8c a6 07     BR $A607
a4e4: 88 20 4f 3d  MOVD %>204F,R61
a4e8: 8e a8 fc     CALL $A8FC
a4eb: 88 20 4f 3d  MOVD %>204F,R61
a4ef: 88 a3 3e 75  MOVD %>A33E,R117
a4f3: f6           TRAP 9
a4f4: 8e a5 79     CALL $A579
a4f7: f1           TRAP 14
a4f8: 8e 47 e0     CALL $47E0
a4fb: 88 3f 50 49  MOVD %>3F50,R73
a4ff: ef           TRAP 16
a500: 8e 8b 3c     CALL $8B3C
a503: 8e f0 1e     CALL $F01E
a506: 8e a5 9a     CALL $A59A
a509: ef           TRAP 16
a50a: f5           TRAP 10
a50b: 88 a3 36 75  MOVD %>A336,R117
a50f: f6           TRAP 9
a510: 8e a5 c0     CALL $A5C0
a513: f1           TRAP 14
a514: 8e 8b 3c     CALL $8B3C
a517: f4           TRAP 11
a518: ef           TRAP 16
a519: f5           TRAP 10
a51a: 8e 47 e0     CALL $47E0
a51d: 88 41 01 49  MOVD %>4101,R73
a521: 8e a5 c0     CALL $A5C0
a524: 8e f0 1b     CALL $F01B
a527: ee           TRAP 17
a528: 8e 47 e0     CALL $47E0
a52b: 88 40 01 49  MOVD %>4001,R73
a52f: ef           TRAP 16
a530: 8e 8b 3c     CALL $8B3C
a533: 8e 47 e0     CALL $47E0
a536: 88 3f 75 49  MOVD %>3F75,R73
a53a: f1           TRAP 14
a53b: 8e 8b 3c     CALL $8B3C
a53e: f4           TRAP 11
a53f: f0           TRAP 15
a540: 88 a3 46 75  MOVD %>A346,R117
a544: f6           TRAP 9
a545: ef           TRAP 16
a546: 8e a5 51     CALL $A551
a549: 88 22 93 3d  MOVD %>2293,R61
a54d: 8e 8b 30     CALL $8B30
a550: 0a           RETS
a551: 76 80 60 0b  BTJO %>80,R96,$A560
a555: 88 a3 5e 75  MOVD %>A35E,R117
a559: f6           TRAP 9
a55a: 8e f0 39     CALL $F039
a55d: e7 01        JL $A560
a55f: 0a           RETS
a560: 88 00 04 6f  MOVD %>0004,R111
a564: fa           TRAP 5
a565: 8e f0 15     CALL $F015
a568: 98 3d 75     MOVD R61,R117
a56b: 7a 03 75     SUB %>3,R117
a56e: 7b 00 74     SBB %>0,R116
a571: 9a 75        LDA *R117
a573: d0 61        MOV A,R97
a575: 72 40 60     MOV %>40,R96
a578: 0a           RETS
a579: 8e f0 15     CALL $F015
a57c: 98 3d 75     MOVD R61,R117
a57f: 7a 03 75     SUB %>3,R117
a582: 7b 00 74     SBB %>0,R116
a585: 9a 75        LDA *R117
a587: d0 61        MOV A,R97
a589: 72 40 60     MOV %>40,R96
a58c: 7d 03 61     CMP %>3,R97
a58f: e3 05        JHS $A596
a591: 7e 09 61     DAC %>9,R97
a594: e0 03        JMP $A599
a596: 7f 03 61     DSB %>3,R97
a599: 0a           RETS
a59a: 8e f0 15     CALL $F015
a59d: 98 3d 75     MOVD R61,R117
a5a0: db 75        DECD R117
a5a2: db 75        DECD R117
a5a4: 9a 75        LDA *R117
a5a6: d0 61        MOV A,R97
a5a8: 72 40 60     MOV %>40,R96
a5ab: 0a           RETS
a5ac: 8e f0 15     CALL $F015
a5af: 98 3d 75     MOVD R61,R117
a5b2: 9a 3d        LDA *R61
a5b4: d0 62        MOV A,R98
a5b6: db 75        DECD R117
a5b8: 9a 75        LDA *R117
a5ba: d0 61        MOV A,R97
a5bc: 72 41 60     MOV %>41,R96
a5bf: 0a           RETS
a5c0: 8e f0 15     CALL $F015
a5c3: 98 3d 75     MOVD R61,R117
a5c6: 9a 3d        LDA *R61
a5c8: d0 62        MOV A,R98
a5ca: db 75        DECD R117
a5cc: 9a 75        LDA *R117
a5ce: d0 61        MOV A,R97
a5d0: 72 41 60     MOV %>41,R96
a5d3: db 75        DECD R117
a5d5: db 75        DECD R117
a5d7: 9a 75        LDA *R117
a5d9: 2d 03        CMP %>3,A
a5db: e3 07        JHS $A5E4
a5dd: 07           SETC
a5de: 7f 01 62     DSB %>1,R98
a5e1: 7f 00 61     DSB %>0,R97
a5e4: 0a           RETS
a5e5: 2d 0a        CMP %>A,A
a5e7: e7 18        JL $A601
a5e9: 2f 09        DSB %>9,A
a5eb: 8b 22 88     STA @>2288
a5ee: 8a 22 8b     LDA @>228B
a5f1: c0           MOV A,B
a5f2: 8a 22 8a     LDA @>228A
a5f5: 5e 01        DAC %>1,B
a5f7: 2e 00        DAC %>0,A
a5f9: 8b 22 8a     STA @>228A
a5fc: 62           MOV B,A
a5fd: 8b 22 8b     STA @>228B
a600: 0a           RETS
a601: 2e 03        DAC %>3,A
a603: 8b 22 88     STA @>2288
a606: 0a           RETS
a607: 77 07 61 06  BTJZ %>7,R97,$A611
a60b: 88 a6 5d 01  MOVD %>A65D,R1
a60f: e0 3a        JMP $A64B
a611: 77 06 61 06  BTJZ %>6,R97,$A61B
a615: 88 a6 69 01  MOVD %>A669,R1
a619: e0 30        JMP $A64B
a61b: 77 05 61 06  BTJZ %>5,R97,$A625
a61f: 88 a6 75 01  MOVD %>A675,R1
a623: e0 26        JMP $A64B
a625: 77 04 61 06  BTJZ %>4,R97,$A62F
a629: 88 a6 81 01  MOVD %>A681,R1
a62d: e0 1c        JMP $A64B
a62f: 77 03 61 06  BTJZ %>3,R97,$A639
a633: 88 a6 8d 01  MOVD %>A68D,R1
a637: e0 12        JMP $A64B
a639: 77 02 61 06  BTJZ %>2,R97,$A643
a63d: 88 a6 99 01  MOVD %>A699,R1
a641: e0 08        JMP $A64B
a643: 77 01 61 07  BTJZ %>1,R97,$A64E
a647: 88 a6 a5 01  MOVD %>A6A5,R1
a64b: 8c 56 9d     BR $569D
a64e: 72 06 6f     MOV %>6,R111
a651: fa           TRAP 5
a652: 53 55        AND %>55,B
a654: 4e 44 41     DAC R68,R65
a657: 59 20        ADC %>20,B
a659: 20           Illegal Opcode
a65a: 20           Illegal Opcode
a65b: 20           Illegal Opcode
a65c: 20           Illegal Opcode
a65d: 20           Illegal Opcode
a65e: 53 41        AND %>41,B
a660: 54 55        OR %>55,B
a662: 52 44        MOV %>44,B
a664: 41           Illegal Opcode
a665: 59 20        ADC %>20,B
a667: 20           Illegal Opcode
a668: 20           Illegal Opcode
a669: 20           Illegal Opcode
a66a: 46 52 49 44  BTJO R82,R73,$A6B2
a66e: 41           Illegal Opcode
a66f: 59 20        ADC %>20,B
a671: 20           Illegal Opcode
a672: 20           Illegal Opcode
a673: 20           Illegal Opcode
a674: 20           Illegal Opcode
a675: 20           Illegal Opcode
a676: 54 48        OR %>48,B
a678: 55 52        XOR %>52,B
a67a: 53 44        AND %>44,B
a67c: 41           Illegal Opcode
a67d: 59 20        ADC %>20,B
a67f: 20           Illegal Opcode
a680: 20           Illegal Opcode
a681: 20           Illegal Opcode
a682: 57 45 44     BTJZ %>45,B,$A6C9
a685: 4e 45 53     DAC R69,R83
a688: 44 41 59     OR R65,R89
a68b: 20           Illegal Opcode
a68c: 20           Illegal Opcode
a68d: 20           Illegal Opcode
a68e: 54 55        OR %>55,B
a690: 45 53 44     XOR R83,R68
a693: 41           Illegal Opcode
a694: 59 20        ADC %>20,B
a696: 20           Illegal Opcode
a697: 20           Illegal Opcode
a698: 20           Illegal Opcode
a699: 20           Illegal Opcode
a69a: 4d 4f 4e     CMP R79,R78
a69d: 44 41 59     OR R65,R89
a6a0: 20           Illegal Opcode
a6a1: 20           Illegal Opcode
a6a2: 20           Illegal Opcode
a6a3: 20           Illegal Opcode
a6a4: 20           Illegal Opcode
a6a5: 20           Illegal Opcode
a6a6: 12 3d        MOV R61,A
a6a8: 8b 22 93     STA @>2293
a6ab: 12 3c        MOV R60,A
a6ad: 8b 22 92     STA @>2292
a6b0: 8e 47 e0     CALL $47E0
a6b3: 88 40 01 49  MOVD %>4001,R73
a6b7: ef           TRAP 16
a6b8: 8e a3 c9     CALL $A3C9
a6bb: 8a 22 93     LDA @>2293
a6be: d0 75        MOV A,R117
a6c0: 8a 22 92     LDA @>2292
a6c3: d0 74        MOV A,R116
a6c5: 7a 03 75     SUB %>3,R117
a6c8: 7b 00 74     SBB %>0,R116
a6cb: 9a 75        LDA *R117
a6cd: c0           MOV A,B
a6ce: 12 61        MOV R97,A
a6d0: 6d           CMP B,A
a6d1: e7 02        JL $A6D5
a6d3: 6f           DSB B,A
a6d4: 0a           RETS
a6d5: 22 01        MOV %>1,A
a6d7: 0a           RETS
a6d8: 88 26 29 75  MOVD %>2629,R117
a6dc: f8           TRAP 7
a6dd: 88 26 15 3d  MOVD %>2615,R61
a6e1: 8e a6 a6     CALL $A6A6
a6e4: 8b 26 35     STA @>2635
a6e7: 88 26 31 75  MOVD %>2631,R117
a6eb: f8           TRAP 7
a6ec: 88 26 19 3d  MOVD %>2619,R61
a6f0: 8e a6 a6     CALL $A6A6
a6f3: c0           MOV A,B
a6f4: c7           SWAP B
a6f5: 8a 26 35     LDA @>2635
a6f8: 68           ADD B,A
a6f9: 8b 26 35     STA @>2635
a6fc: 88 26 29 75  MOVD %>2629,R117
a700: f8           TRAP 7
a701: 88 26 31 75  MOVD %>2631,R117
a705: f6           TRAP 9
a706: 8e a7 59     CALL $A759
a709: 88 26 15 3d  MOVD %>2615,R61
a70d: 8e a7 90     CALL $A790
a710: f5           TRAP 10
a711: 88 26 19 3d  MOVD %>2619,R61
a715: 8e a7 98     CALL $A798
a718: f4           TRAP 11
a719: d4 48        INV R72
a71b: ef           TRAP 16
a71c: f5           TRAP 10
a71d: 88 26 15 3d  MOVD %>2615,R61
a721: 8e a5 ac     CALL $A5AC
a724: 8e f0 1e     CALL $F01E
a727: 88 26 19 3d  MOVD %>2619,R61
a72b: 8e a5 ac     CALL $A5AC
a72e: d4 48        INV R72
a730: ef           TRAP 16
a731: 88 a3 66 75  MOVD %>A366,R117
a735: f6           TRAP 9
a736: f1           TRAP 14
a737: f5           TRAP 10
a738: 88 26 15 3d  MOVD %>2615,R61
a73c: 8e a5 65     CALL $A565
a73f: 8e f0 1e     CALL $F01E
a742: 88 26 19 3d  MOVD %>2619,R61
a746: 8e a5 65     CALL $A565
a749: d4 48        INV R72
a74b: ef           TRAP 16
a74c: 8e 47 e0     CALL $47E0
a74f: 88 40 30 49  MOVD %>4030,R73
a753: f1           TRAP 14
a754: f4           TRAP 11
a755: ef           TRAP 16
a756: f4           TRAP 11
a757: ef           TRAP 16
a758: 0a           RETS
a759: 8a 26 35     LDA @>2635
a75c: 8b 22 93     STA @>2293
a75f: 8e f0 39     CALL $F039
a762: e3 0d        JHS $A771
a764: 8a 26 35     LDA @>2635
a767: 27 11 02     BTJZ %>11,A,$A76C
a76a: e0 05        JMP $A771
a76c: 23 f0        AND %>F0,A
a76e: 8b 22 93     STA @>2293
a771: 8e f0 1b     CALL $F01B
a774: 8e f0 39     CALL $F039
a777: e3 10        JHS $A789
a779: 8a 26 35     LDA @>2635
a77c: c0           MOV A,B
a77d: 8a 22 93     LDA @>2293
a780: 57 11 02     BTJZ %>11,B,$A785
a783: e0 07        JMP $A78C
a785: 23 0f        AND %>F,A
a787: e0 03        JMP $A78C
a789: 8a 22 93     LDA @>2293
a78c: 8b 26 35     STA @>2635
a78f: 0a           RETS
a790: 8a 26 35     LDA @>2635
a793: 27 01 10     BTJZ %>1,A,$A7A6
a796: e0 06        JMP $A79E
a798: 8a 26 35     LDA @>2635
a79b: 27 10 08     BTJZ %>10,A,$A7A6
a79e: 8e f0 15     CALL $F015
a7a1: 88 40 30 61  MOVD %>4030,R97
a7a5: 0a           RETS
a7a6: 8c a5 9a     BR $A59A
a7a9: 42 88 60     MOV R136,R96
a7ac: 00           NOP
a7ad: 00           NOP
a7ae: 00           NOP
a7af: 00           NOP
a7b0: 00           NOP
a7b1: fb           TRAP 4
a7b2: f9           TRAP 6
a7b3: 8e 47 e9     CALL $47E9
a7b6: 8e a8 f0     CALL $A8F0
a7b9: 77 40 32 28  BTJZ %>40,R50,$A7E5
a7bd: 8e a3 a1     CALL $A3A1
a7c0: f5           TRAP 10
a7c1: 8e a4 ac     CALL $A4AC
a7c4: b5           CLR A
a7c5: 8b 26 32     STA @>2632
a7c8: 88 22 93 75  MOVD %>2293,R117
a7cc: f8           TRAP 7
a7cd: 88 26 29 3d  MOVD %>2629,R61
a7d1: 8e 8b 30     CALL $8B30
a7d4: 8e f0 30     CALL $F030
a7d7: 88 26 15 3d  MOVD %>2615,R61
a7db: 8e a8 fc     CALL $A8FC
a7de: 22 10        MOV %>10,A
a7e0: 8b 26 33     STA @>2633
a7e3: e0 29        JMP $A80E
a7e5: 8e a9 d0     CALL $A9D0
a7e8: 8e a3 67     CALL $A367
a7eb: b5           CLR A
a7ec: 8b 26 33     STA @>2633
a7ef: 88 26 15 3d  MOVD %>2615,R61
a7f3: 8e a8 fc     CALL $A8FC
a7f6: f5           TRAP 10
a7f7: 88 22 93 75  MOVD %>2293,R117
a7fb: f8           TRAP 7
a7fc: 88 26 29 3d  MOVD %>2629,R61
a800: 8e 8b 30     CALL $8B30
a803: 8e f0 30     CALL $F030
a806: 8a 26 32     LDA @>2632
a809: 24 10        OR %>10,A
a80b: 8b 26 32     STA @>2632
a80e: 8e a8 f0     CALL $A8F0
a811: 8e 47 f4     CALL $47F4
a814: 8e 52 13     CALL $5213
a817: 72 05 33     MOV %>5,R51
a81a: 8e 55 6b     CALL $556B
a81d: 8a 26 33     LDA @>2633
a820: c0           MOV A,B
a821: 8a 26 32     LDA @>2632
a824: 8e 57 51     CALL $5751
a827: 8c 58 9a     BR $589A
a82a: fb           TRAP 4
a82b: f9           TRAP 6
a82c: 8e 47 e9     CALL $47E9
a82f: 8e a8 f0     CALL $A8F0
a832: 77 40 32 28  BTJZ %>40,R50,$A85E
a836: 8e a3 b5     CALL $A3B5
a839: f5           TRAP 10
a83a: 8e a4 ac     CALL $A4AC
a83d: b5           CLR A
a83e: 8b 26 32     STA @>2632
a841: 88 22 93 75  MOVD %>2293,R117
a845: f8           TRAP 7
a846: 88 26 31 3d  MOVD %>2631,R61
a84a: 8e 8b 30     CALL $8B30
a84d: 8e f0 30     CALL $F030
a850: 88 26 19 3d  MOVD %>2619,R61
a854: 8e a8 fc     CALL $A8FC
a857: 22 08        MOV %>8,A
a859: 8b 26 33     STA @>2633
a85c: e0 29        JMP $A887
a85e: 8e a9 d0     CALL $A9D0
a861: 8e a3 67     CALL $A367
a864: b5           CLR A
a865: 8b 26 33     STA @>2633
a868: 88 26 19 3d  MOVD %>2619,R61
a86c: 8e a8 fc     CALL $A8FC
a86f: f5           TRAP 10
a870: 88 22 93 75  MOVD %>2293,R117
a874: f8           TRAP 7
a875: 88 26 31 3d  MOVD %>2631,R61
a879: 8e 8b 30     CALL $8B30
a87c: 8e f0 30     CALL $F030
a87f: 8a 26 32     LDA @>2632
a882: 24 08        OR %>8,A
a884: 8b 26 32     STA @>2632
a887: 8e a8 f0     CALL $A8F0
a88a: 8e 47 f4     CALL $47F4
a88d: 8e 52 13     CALL $5213
a890: 72 04 33     MOV %>4,R51
a893: 8e 55 6b     CALL $556B
a896: 8a 26 33     LDA @>2633
a899: c0           MOV A,B
a89a: 8a 26 32     LDA @>2632
a89d: 8e 57 51     CALL $5751
a8a0: 8c 58 9a     BR $589A
a8a3: fb           TRAP 4
a8a4: 77 40 32 15  BTJZ %>40,R50,$A8BD
a8a8: 8e a3 85     CALL $A385
a8ab: b5           CLR A
a8ac: 8b 26 32     STA @>2632
a8af: 88 26 21 3d  MOVD %>2621,R61
a8b3: 8e 8b 30     CALL $8B30
a8b6: 22 04        MOV %>4,A
a8b8: 8b 26 33     STA @>2633
a8bb: e0 19        JMP $A8D6
a8bd: 8e 95 64     CALL $9564
a8c0: b5           CLR A
a8c1: 8b 26 33     STA @>2633
a8c4: 8e a9 f8     CALL $A9F8
a8c7: 88 26 21 3d  MOVD %>2621,R61
a8cb: 8e 8b 30     CALL $8B30
a8ce: 8a 26 32     LDA @>2632
a8d1: 24 04        OR %>4,A
a8d3: 8b 26 32     STA @>2632
a8d6: 8e 47 f4     CALL $47F4
a8d9: 8e 52 17     CALL $5217
a8dc: 72 03 33     MOV %>3,R51
a8df: 8e 55 6b     CALL $556B
a8e2: f9           TRAP 6
a8e3: 8a 26 33     LDA @>2633
a8e6: c0           MOV A,B
a8e7: 8a 26 32     LDA @>2632
a8ea: 8e 57 51     CALL $5751
a8ed: 8c 58 9a     BR $589A
a8f0: 77 80 72 07  BTJZ %>80,R114,$A8FB
a8f4: 12 61        MOV R97,A
a8f6: 42 62 61     MOV R98,R97
a8f9: d0 62        MOV A,R98
a8fb: 0a           RETS
a8fc: 52 04        MOV %>4,B
a8fe: aa 00 60     LDA @>0060(B)
a901: 9b 3d        STA *R61
a903: db 3d        DECD R61
a905: ca f7        DJNZ B,$A8FE
a907: 0a           RETS
a908: 8a 26 34     LDA @>2634
a90b: 26 10 09     BTJO %>10,A,$A917
a90e: b5           CLR A
a90f: 8b 26 33     STA @>2633
a912: 22 10        MOV %>10,A
a914: 8b 26 34     STA @>2634
a917: 8c a9 9c     BR $A99C
a91a: 8a 26 34     LDA @>2634
a91d: 26 08 f7     BTJO %>8,A,$A917
a920: b5           CLR A
a921: 8b 26 33     STA @>2633
a924: 22 08        MOV %>8,A
a926: 8b 26 34     STA @>2634
a929: 8c a9 9c     BR $A99C
a92c: 8e a9 32     CALL $A932
a92f: 8c 60 cd     BR $60CD
a932: fb           TRAP 4
a933: b5           CLR A
a934: 8b 20 b9     STA @>20B9
a937: 22 08        MOV %>8,A
a939: 8b 20 b8     STA @>20B8
a93c: 72 02 33     MOV %>2,R51
a93f: 8e 57 4a     CALL $574A
a942: 88 4c e6 01  MOVD %>4CE6,R1
a946: 8b 20 ba     STA @>20BA
a949: 62           MOV B,A
a94a: 8b 20 bb     STA @>20BB
a94d: 72 20 32     MOV %>20,R50
a950: 88 9e cd 75  MOVD %>9ECD,R117
a954: 8e 93 75     CALL $9375
a957: 8e 56 b2     CALL $56B2
a95a: 8a 26 33     LDA @>2633
a95d: c0           MOV A,B
a95e: 8a 26 32     LDA @>2632
a961: 8e 57 51     CALL $5751
a964: 88 26 18 75  MOVD %>2618,R117
a968: 8e 64 d7     CALL $64D7
a96b: 8e a8 f0     CALL $A8F0
a96e: 8e 52 13     CALL $5213
a971: 72 05 33     MOV %>5,R51
a974: 8e 55 6b     CALL $556B
a977: 88 26 1c 75  MOVD %>261C,R117
a97b: 8e 64 d7     CALL $64D7
a97e: 8e a8 f0     CALL $A8F0
a981: 8e 52 13     CALL $5213
a984: 72 04 33     MOV %>4,R51
a987: 8e 55 6b     CALL $556B
a98a: 88 26 21 75  MOVD %>2621,R117
a98e: f8           TRAP 7
a98f: 8e 52 17     CALL $5217
a992: 72 03 33     MOV %>3,R51
a995: 8e 55 6b     CALL $556B
a998: f9           TRAP 6
a999: 8c 58 9a     BR $589A
a99c: fb           TRAP 4
a99d: 22 01        MOV %>1,A
a99f: 8b 20 b9     STA @>20B9
a9a2: 22 08        MOV %>8,A
a9a4: 8b 20 b8     STA @>20B8
a9a7: 72 05 33     MOV %>5,R51
a9aa: 8e 57 4a     CALL $574A
a9ad: 88 4d 04 01  MOVD %>4D04,R1
a9b1: 8b 20 ba     STA @>20BA
a9b4: 62           MOV B,A
a9b5: 8b 20 bb     STA @>20BB
a9b8: 72 02 32     MOV %>2,R50
a9bb: 88 9e dc 75  MOVD %>9EDC,R117
a9bf: 8e 93 75     CALL $9375
a9c2: 8e 56 b2     CALL $56B2
a9c5: 8a 26 34     LDA @>2634
a9c8: c5           CLR B
a9c9: 8e 57 51     CALL $5751
a9cc: f9           TRAP 6
a9cd: 8c 58 9a     BR $589A
a9d0: 7d 00 61     CMP %>0,R97
a9d3: e2 1e        JEQ $A9F3
a9d5: 76 80 60 1a  BTJO %>80,R96,$A9F3
a9d9: 7d 40 60     CMP %>40,R96
a9dc: e6 15        JNZ $A9F3
a9de: 7d 00 62     CMP %>0,R98
a9e1: e2 10        JEQ $A9F3
a9e3: 12 65        MOV R101,A
a9e5: 26 ff 0b     BTJO %>FF,A,$A9F3
a9e8: 12 66        MOV R102,A
a9ea: 26 ff 06     BTJO %>FF,A,$A9F3
a9ed: 12 67        MOV R103,A
a9ef: 26 ff 01     BTJO %>FF,A,$A9F3
a9f2: 0a           RETS
a9f3: 88 00 06 6f  MOVD %>0006,R111
a9f7: fa           TRAP 5
a9f8: 77 80 60 0f  BTJZ %>80,R96,$AA0B
a9fc: d4 60        INV R96
a9fe: 88 a7 b0 75  MOVD %>A7B0,R117
aa02: f6           TRAP 9
aa03: 8e f0 39     CALL $F039
aa06: e7 0e        JL $AA16
aa08: d4 60        INV R96
aa0a: 0a           RETS
aa0b: 88 a7 b0 75  MOVD %>A7B0,R117
aa0f: f6           TRAP 9
aa10: 8e f0 39     CALL $F039
aa13: e7 01        JL $AA16
aa15: 0a           RETS
aa16: 88 00 04 6f  MOVD %>0004,R111
aa1a: fa           TRAP 5
aa1b: 8e aa 21     CALL $AA21
aa1e: 8c 60 cd     BR $60CD
aa21: b5           CLR A
aa22: 8b 20 b9     STA @>20B9
aa25: 22 04        MOV %>4,A
aa27: 8b 20 b8     STA @>20B8
aa2a: 72 01 33     MOV %>1,R51
aa2d: 8e 57 4a     CALL $574A
aa30: fb           TRAP 4
aa31: 8e ab 77     CALL $AB77
aa34: 72 20 32     MOV %>20,R50
aa37: 88 4d 22 01  MOVD %>4D22,R1
aa3b: 8b 20 ba     STA @>20BA
aa3e: 62           MOV B,A
aa3f: 8b 20 bb     STA @>20BB
aa42: 88 9e eb 75  MOVD %>9EEB,R117
aa46: 8e 93 75     CALL $9375
aa49: 98 3f 75     MOVD R63,R117
aa4c: 8e 64 d1     CALL $64D1
aa4f: 8e a8 f0     CALL $A8F0
aa52: 8e 52 13     CALL $5213
aa55: 72 05 33     MOV %>5,R51
aa58: 8e 55 6b     CALL $556B
aa5b: 98 41 75     MOVD R65,R117
aa5e: f8           TRAP 7
aa5f: 8e 51 1f     CALL $511F
aa62: 72 04 33     MOV %>4,R51
aa65: 8e 55 6b     CALL $556B
aa68: 98 43 75     MOVD R67,R117
aa6b: 8e 64 d1     CALL $64D1
aa6e: 8e a8 f0     CALL $A8F0
aa71: 8e 52 13     CALL $5213
aa74: 72 03 33     MOV %>3,R51
aa77: 8e 55 6b     CALL $556B
aa7a: 98 45 75     MOVD R69,R117
aa7d: f8           TRAP 7
aa7e: 8e 51 1f     CALL $511F
aa81: 72 02 33     MOV %>2,R51
aa84: 8e 55 6b     CALL $556B
aa87: f9           TRAP 6
aa88: 98 47 75     MOVD R71,R117
aa8b: 7a 04 75     SUB %>4,R117
aa8e: 7b 00 74     SBB %>0,R116
aa91: 9a 75        LDA *R117
aa93: c5           CLR B
aa94: 8e 57 51     CALL $5751
aa97: 8e 56 b2     CALL $56B2
aa9a: 8c 58 9a     BR $589A
aa9d: 8e aa a9     CALL $AAA9
aaa0: 8c 53 87     BR $5387
aaa3: 8e aa a9     CALL $AAA9
aaa6: 8c 54 62     BR $5462
aaa9: 22 01        MOV %>1,A
aaab: 8b 20 b9     STA @>20B9
aaae: 72 03 33     MOV %>3,R51
aab1: 8e 57 4a     CALL $574A
aab4: fb           TRAP 4
aab5: 8e ab d7     CALL $ABD7
aab8: 72 22 32     MOV %>22,R50
aabb: 88 4d 40 01  MOVD %>4D40,R1
aabf: 8b 20 ba     STA @>20BA
aac2: 62           MOV B,A
aac3: 8b 20 bb     STA @>20BB
aac6: 22 04        MOV %>4,A
aac8: 8b 20 b8     STA @>20B8
aacb: 88 9e fa 75  MOVD %>9EFA,R117
aacf: 8e 93 75     CALL $9375
aad2: 98 3f 75     MOVD R63,R117
aad5: f8           TRAP 7
aad6: 8e 51 1f     CALL $511F
aad9: 72 05 33     MOV %>5,R51
aadc: 8e 55 6b     CALL $556B
aadf: 98 41 75     MOVD R65,R117
aae2: f8           TRAP 7
aae3: 8e 51 1f     CALL $511F
aae6: 72 04 33     MOV %>4,R51
aae9: 8e 55 6b     CALL $556B
aaec: f9           TRAP 6
aaed: 98 47 75     MOVD R71,R117
aaf0: 7a 02 75     SUB %>2,R117
aaf3: 7b 00 74     SBB %>0,R116
aaf6: 9a 75        LDA *R117
aaf8: c0           MOV A,B
aaf9: db 75        DECD R117
aafb: 9a 75        LDA *R117
aafd: 8e 57 51     CALL $5751
ab00: 8e 56 b2     CALL $56B2
ab03: 8c 58 9a     BR $589A
ab06: 22 02        MOV %>2,A
ab08: 8b 20 b9     STA @>20B9
ab0b: 72 01 33     MOV %>1,R51
ab0e: 8e 57 4a     CALL $574A
ab11: fb           TRAP 4
ab12: 8e ac 17     CALL $AC17
ab15: 72 02 32     MOV %>2,R50
ab18: 88 4d 5e 01  MOVD %>4D5E,R1
ab1c: 8b 20 ba     STA @>20BA
ab1f: 62           MOV B,A
ab20: 8b 20 bb     STA @>20BB
ab23: 22 04        MOV %>4,A
ab25: 8b 20 b8     STA @>20B8
ab28: 88 9f 09 75  MOVD %>9F09,R117
ab2c: 8e 93 75     CALL $9375
ab2f: 98 3f 75     MOVD R63,R117
ab32: f8           TRAP 7
ab33: 8e 52 17     CALL $5217
ab36: 72 05 33     MOV %>5,R51
ab39: 8e 55 6b     CALL $556B
ab3c: 98 41 75     MOVD R65,R117
ab3f: f8           TRAP 7
ab40: 8e 51 1f     CALL $511F
ab43: 72 04 33     MOV %>4,R51
ab46: 8e 55 6b     CALL $556B
ab49: 98 43 75     MOVD R67,R117
ab4c: f8           TRAP 7
ab4d: 8e 51 1f     CALL $511F
ab50: 72 03 33     MOV %>3,R51
ab53: 8e 55 6b     CALL $556B
ab56: 98 45 75     MOVD R69,R117
ab59: f8           TRAP 7
ab5a: 8e 51 1f     CALL $511F
ab5d: 72 02 33     MOV %>2,R51
ab60: 8e 55 6b     CALL $556B
ab63: f9           TRAP 6
ab64: 98 47 75     MOVD R71,R117
ab67: 9a 75        LDA *R117
ab69: c0           MOV A,B
ab6a: db 75        DECD R117
ab6c: 9a 75        LDA *R117
ab6e: 8e 57 51     CALL $5751
ab71: 8e 56 b2     CALL $56B2
ab74: 8c 58 9a     BR $589A
ab77: 8a 21 32     LDA @>2132
ab7a: 27 03 15     BTJZ %>3,A,$AB92
ab7d: 88 27 38 3f  MOVD %>2738,R63
ab81: 88 27 40 41  MOVD %>2740,R65
ab85: 88 27 44 43  MOVD %>2744,R67
ab89: 88 27 4c 45  MOVD %>274C,R69
ab8d: 88 27 81 47  MOVD %>2781,R71
ab91: 0a           RETS
ab92: 27 02 15     BTJZ %>2,A,$ABAA
ab95: 88 26 eb 3f  MOVD %>26EB,R63
ab99: 88 26 f3 41  MOVD %>26F3,R65
ab9d: 88 26 f7 43  MOVD %>26F7,R67
aba1: 88 26 ff 45  MOVD %>26FF,R69
aba5: 88 27 34 47  MOVD %>2734,R71
aba9: 0a           RETS
abaa: 27 01 15     BTJZ %>1,A,$ABC2
abad: 88 26 9e 3f  MOVD %>269E,R63
abb1: 88 26 a6 41  MOVD %>26A6,R65
abb5: 88 26 aa 43  MOVD %>26AA,R67
abb9: 88 26 b2 45  MOVD %>26B2,R69
abbd: 88 26 e7 47  MOVD %>26E7,R71
abc1: 0a           RETS
abc2: 88 26 51 3f  MOVD %>2651,R63
abc6: 88 26 59 41  MOVD %>2659,R65
abca: 88 26 5d 43  MOVD %>265D,R67
abce: 88 26 65 45  MOVD %>2665,R69
abd2: 88 26 9a 47  MOVD %>269A,R71
abd6: 0a           RETS
abd7: 8a 21 32     LDA @>2132
abda: 27 03 0d     BTJZ %>3,A,$ABEA
abdd: 88 27 54 3f  MOVD %>2754,R63
abe1: 88 27 5c 41  MOVD %>275C,R65
abe5: 88 27 81 47  MOVD %>2781,R71
abe9: 0a           RETS
abea: 27 02 0d     BTJZ %>2,A,$ABFA
abed: 88 27 07 3f  MOVD %>2707,R63
abf1: 88 27 0f 41  MOVD %>270F,R65
abf5: 88 27 34 47  MOVD %>2734,R71
abf9: 0a           RETS
abfa: 27 01 0d     BTJZ %>1,A,$AC0A
abfd: 88 26 ba 3f  MOVD %>26BA,R63
ac01: 88 26 c2 41  MOVD %>26C2,R65
ac05: 88 26 e7 47  MOVD %>26E7,R71
ac09: 0a           RETS
ac0a: 88 26 6d 3f  MOVD %>266D,R63
ac0e: 88 26 75 41  MOVD %>2675,R65
ac12: 88 26 9a 47  MOVD %>269A,R71
ac16: 0a           RETS
ac17: 8a 21 32     LDA @>2132
ac1a: 27 03 15     BTJZ %>3,A,$AC32
ac1d: 88 27 64 3f  MOVD %>2764,R63
ac21: 88 27 6c 41  MOVD %>276C,R65
ac25: 88 27 74 43  MOVD %>2774,R67
ac29: 88 27 7c 45  MOVD %>277C,R69
ac2d: 88 27 81 47  MOVD %>2781,R71
ac31: 0a           RETS
ac32: 27 02 15     BTJZ %>2,A,$AC4A
ac35: 88 27 17 3f  MOVD %>2717,R63
ac39: 88 27 1f 41  MOVD %>271F,R65
ac3d: 88 27 27 43  MOVD %>2727,R67
ac41: 88 27 2f 45  MOVD %>272F,R69
ac45: 88 27 34 47  MOVD %>2734,R71
ac49: 0a           RETS
ac4a: 27 01 15     BTJZ %>1,A,$AC62
ac4d: 88 26 ca 3f  MOVD %>26CA,R63
ac51: 88 26 d2 41  MOVD %>26D2,R65
ac55: 88 26 da 43  MOVD %>26DA,R67
ac59: 88 26 e2 45  MOVD %>26E2,R69
ac5d: 88 26 e7 47  MOVD %>26E7,R71
ac61: 0a           RETS
ac62: 88 26 7d 3f  MOVD %>267D,R63
ac66: 88 26 85 41  MOVD %>2685,R65
ac6a: 88 26 8d 43  MOVD %>268D,R67
ac6e: 88 26 95 45  MOVD %>2695,R69
ac72: 88 26 9a 47  MOVD %>269A,R71
ac76: 0a           RETS
ac77: 8a 21 32     LDA @>2132
ac7a: e2 fa        JEQ $AC76
ac7c: b2           DEC A
ac7d: 8b 21 32     STA @>2132
ac80: 8c aa 21     BR $AA21
ac83: 8a 21 32     LDA @>2132
ac86: 2d 03        CMP %>3,A
ac88: e2 ec        JEQ $AC76
ac8a: b3           INC A
ac8b: 8b 21 32     STA @>2132
ac8e: 8c aa 21     BR $AA21
ac91: 8a 21 32     LDA @>2132
ac94: e2 e0        JEQ $AC76
ac96: b2           DEC A
ac97: 8b 21 32     STA @>2132
ac9a: 8c aa a9     BR $AAA9
ac9d: 8a 21 32     LDA @>2132
aca0: 2d 03        CMP %>3,A
aca2: e2 d2        JEQ $AC76
aca4: b3           INC A
aca5: 8b 21 32     STA @>2132
aca8: 8c aa a9     BR $AAA9
acab: 8a 21 32     LDA @>2132
acae: e2 c6        JEQ $AC76
acb0: b2           DEC A
acb1: 8b 21 32     STA @>2132
acb4: 8c ab 06     BR $AB06
acb7: 8a 21 32     LDA @>2132
acba: 2d 03        CMP %>3,A
acbc: e2 b8        JEQ $AC76
acbe: b3           INC A
acbf: 8b 21 32     STA @>2132
acc2: 8c ab 06     BR $AB06
acc5: 98 47 75     MOVD R71,R117
acc8: b5           CLR A
acc9: 9b 75        STA *R117
accb: db 75        DECD R117
accd: db 75        DECD R117
accf: 9b 75        STA *R117
acd1: 0a           RETS
acd2: 98 47 75     MOVD R71,R117
acd5: db 75        DECD R117
acd7: b5           CLR A
acd8: 9b 75        STA *R117
acda: 7a 02 75     SUB %>2,R117
acdd: 7b 00 74     SBB %>0,R116
ace0: 9a 75        LDA *R117
ace2: 23 03        AND %>3,A
ace4: 9b 75        STA *R117
ace6: db 75        DECD R117
ace8: b5           CLR A
ace9: 9b 75        STA *R117
aceb: 0a           RETS
acec: fb           TRAP 4
aced: f9           TRAP 6
acee: 8e 47 e9     CALL $47E9
acf1: 8e a8 f0     CALL $A8F0
acf4: 8e a9 d0     CALL $A9D0
acf7: 8e a3 67     CALL $A367
acfa: 8e ac c5     CALL $ACC5
acfd: 98 3f 3d     MOVD R63,R61
ad00: 8e a8 fc     CALL $A8FC
ad03: 98 47 75     MOVD R71,R117
ad06: 7a 04 75     SUB %>4,R117
ad09: 7b 00 74     SBB %>0,R116
ad0c: 9a 75        LDA *R117
ad0e: 24 10        OR %>10,A
ad10: 9b 75        STA *R117
ad12: c5           CLR B
ad13: 8e 57 51     CALL $5751
ad16: 72 05 33     MOV %>5,R51
ad19: 8e a8 f0     CALL $A8F0
ad1c: 8e 47 f4     CALL $47F4
ad1f: 8e 52 13     CALL $5213
ad22: 8e 55 6b     CALL $556B
ad25: f9           TRAP 6
ad26: 8c 58 9a     BR $589A
ad29: fb           TRAP 4
ad2a: 76 80 60 29  BTJO %>80,R96,$AD57
ad2e: 8e ac c5     CALL $ACC5
ad31: 98 41 3d     MOVD R65,R61
ad34: 8e 8b 30     CALL $8B30
ad37: 98 47 75     MOVD R71,R117
ad3a: 7a 04 75     SUB %>4,R117
ad3d: 7b 00 74     SBB %>0,R116
ad40: 9a 75        LDA *R117
ad42: 24 08        OR %>8,A
ad44: 9b 75        STA *R117
ad46: c5           CLR B
ad47: 8e 57 51     CALL $5751
ad4a: 72 04 33     MOV %>4,R51
ad4d: 8e 51 1f     CALL $511F
ad50: 8e 55 6b     CALL $556B
ad53: f9           TRAP 6
ad54: 8c 58 9a     BR $589A
ad57: 72 04 6f     MOV %>4,R111
ad5a: fa           TRAP 5
ad5b: fb           TRAP 4
ad5c: f9           TRAP 6
ad5d: 8e 47 e9     CALL $47E9
ad60: 8e a8 f0     CALL $A8F0
ad63: 8e a9 d0     CALL $A9D0
ad66: 8e a3 67     CALL $A367
ad69: 8e ac c5     CALL $ACC5
ad6c: 98 43 3d     MOVD R67,R61
ad6f: 8e a8 fc     CALL $A8FC
ad72: 98 47 75     MOVD R71,R117
ad75: 7a 04 75     SUB %>4,R117
ad78: 7b 00 74     SBB %>0,R116
ad7b: 9a 75        LDA *R117
ad7d: 24 04        OR %>4,A
ad7f: 9b 75        STA *R117
ad81: c5           CLR B
ad82: 8e 57 51     CALL $5751
ad85: 72 03 33     MOV %>3,R51
ad88: 8e a8 f0     CALL $A8F0
ad8b: 8e 47 f4     CALL $47F4
ad8e: 8e 52 13     CALL $5213
ad91: 8e 55 6b     CALL $556B
ad94: f9           TRAP 6
ad95: 8c 58 9a     BR $589A
ad98: fb           TRAP 4
ad99: 76 80 60 ba  BTJO %>80,R96,$AD57
ad9d: 8e ac c5     CALL $ACC5
ada0: 98 45 3d     MOVD R69,R61
ada3: 8e 8b 30     CALL $8B30
ada6: 98 47 75     MOVD R71,R117
ada9: 7a 04 75     SUB %>4,R117
adac: 7b 00 74     SBB %>0,R116
adaf: 9a 75        LDA *R117
adb1: 24 02        OR %>2,A
adb3: 9b 75        STA *R117
adb5: c5           CLR B
adb6: 8e 57 51     CALL $5751
adb9: 72 02 33     MOV %>2,R51
adbc: 8e 51 1f     CALL $511F
adbf: 8e 55 6b     CALL $556B
adc2: f9           TRAP 6
adc3: 8c 58 9a     BR $589A
adc6: fb           TRAP 4
adc7: 77 40 32 28  BTJZ %>40,R50,$ADF3
adcb: 8e 7a 0d     CALL $7A0D
adce: 8e b0 c1     CALL $B0C1
add1: 8e ab d7     CALL $ABD7
add4: 8e 47 ff     CALL $47FF
add7: 8e ac d2     CALL $ACD2
adda: 98 3f 3d     MOVD R63,R61
addd: 8e 8b 30     CALL $8B30
ade0: 98 47 75     MOVD R71,R117
ade3: db 75        DECD R117
ade5: db 75        DECD R117
ade7: 22 10        MOV %>10,A
ade9: 9b 75        STA *R117
adeb: 8e 47 f4     CALL $47F4
adee: 73 bf 32     AND %>BF,R50
adf1: e0 1f        JMP $AE12
adf3: 98 47 75     MOVD R71,R117
adf6: db 75        DECD R117
adf8: db 75        DECD R117
adfa: b5           CLR A
adfb: 9b 75        STA *R117
adfd: 98 3f 3d     MOVD R63,R61
ae00: 8e 8b 30     CALL $8B30
ae03: 98 47 75     MOVD R71,R117
ae06: 7a 03 75     SUB %>3,R117
ae09: 7b 00 74     SBB %>0,R116
ae0c: 9a 75        LDA *R117
ae0e: 24 10        OR %>10,A
ae10: 9b 75        STA *R117
ae12: 72 05 33     MOV %>5,R51
ae15: 8e 51 1f     CALL $511F
ae18: 8e 55 6b     CALL $556B
ae1b: 98 47 75     MOVD R71,R117
ae1e: db 75        DECD R117
ae20: db 75        DECD R117
ae22: 9a 75        LDA *R117
ae24: c0           MOV A,B
ae25: db 75        DECD R117
ae27: 9a 75        LDA *R117
ae29: 8e 57 51     CALL $5751
ae2c: f9           TRAP 6
ae2d: 8c 58 9a     BR $589A
ae30: fb           TRAP 4
ae31: 77 40 32 2b  BTJZ %>40,R50,$AE60
ae35: 8e 7a 0d     CALL $7A0D
ae38: 8e af 81     CALL $AF81
ae3b: 8e ab d7     CALL $ABD7
ae3e: 8e 47 ff     CALL $47FF
ae41: 8e ac d2     CALL $ACD2
ae44: 98 41 3d     MOVD R65,R61
ae47: 8e 8b 30     CALL $8B30
ae4a: 98 47 75     MOVD R71,R117
ae4d: b5           CLR A
ae4e: 9b 75        STA *R117
ae50: db 75        DECD R117
ae52: db 75        DECD R117
ae54: 22 08        MOV %>8,A
ae56: 9b 75        STA *R117
ae58: 8e 47 f4     CALL $47F4
ae5b: 73 bf 32     AND %>BF,R50
ae5e: e0 18        JMP $AE78
ae60: 8e ac c5     CALL $ACC5
ae63: 98 41 3d     MOVD R65,R61
ae66: 8e 8b 30     CALL $8B30
ae69: 98 47 75     MOVD R71,R117
ae6c: 7a 03 75     SUB %>3,R117
ae6f: 7b 00 74     SBB %>0,R116
ae72: 9a 75        LDA *R117
ae74: 24 08        OR %>8,A
ae76: 9b 75        STA *R117
ae78: 72 04 33     MOV %>4,R51
ae7b: e0 98        JMP $AE15
ae7d: 76 40 32 2b  BTJO %>40,R50,$AEAC
ae81: fb           TRAP 4
ae82: 98 47 75     MOVD R71,R117
ae85: 7a 03 75     SUB %>3,R117
ae88: 7b 00 74     SBB %>0,R116
ae8b: 9a 75        LDA *R117
ae8d: 26 02 18     BTJO %>2,A,$AEA8
ae90: 8e ac c5     CALL $ACC5
ae93: 98 47 75     MOVD R71,R117
ae96: 7a 03 75     SUB %>3,R117
ae99: 7b 00 74     SBB %>0,R116
ae9c: 9a 75        LDA *R117
ae9e: 23 fc        AND %>FC,A
aea0: 24 02        OR %>2,A
aea2: 9b 75        STA *R117
aea4: c5           CLR B
aea5: 8e 57 51     CALL $5751
aea8: f9           TRAP 6
aea9: 8c 58 9a     BR $589A
aeac: 8c 60 64     BR $6064
aeaf: 76 40 32 f9  BTJO %>40,R50,$AEAC
aeb3: fb           TRAP 4
aeb4: 98 47 75     MOVD R71,R117
aeb7: 7a 03 75     SUB %>3,R117
aeba: 7b 00 74     SBB %>0,R116
aebd: 9a 75        LDA *R117
aebf: 26 01 e6     BTJO %>1,A,$AEA8
aec2: 8e ac c5     CALL $ACC5
aec5: 98 47 75     MOVD R71,R117
aec8: 7a 03 75     SUB %>3,R117
aecb: 7b 00 74     SBB %>0,R116
aece: 9a 75        LDA *R117
aed0: 23 fc        AND %>FC,A
aed2: 24 01        OR %>1,A
aed4: 9b 75        STA *R117
aed6: c5           CLR B
aed7: 8e 57 51     CALL $5751
aeda: f9           TRAP 6
aedb: 8c 58 9a     BR $589A
aede: 8c ad 57     BR $AD57
aee1: fb           TRAP 4
aee2: 8e 95 64     CALL $9564
aee5: 76 80 60 f5  BTJO %>80,R96,$AEDE
aee9: 8e ac c5     CALL $ACC5
aeec: 98 3f 3d     MOVD R63,R61
aeef: 8e 8b 30     CALL $8B30
aef2: 98 47 75     MOVD R71,R117
aef5: db 75        DECD R117
aef7: 9a 75        LDA *R117
aef9: 24 10        OR %>10,A
aefb: 9b 75        STA *R117
aefd: c5           CLR B
aefe: 8e 57 51     CALL $5751
af01: 72 05 33     MOV %>5,R51
af04: 8e 52 17     CALL $5217
af07: 8e 55 6b     CALL $556B
af0a: f9           TRAP 6
af0b: 8c 58 9a     BR $589A
af0e: fb           TRAP 4
af0f: 8e b1 0f     CALL $B10F
af12: 52 02        MOV %>2,B
af14: 8e b1 d9     CALL $B1D9
af17: 8e 47 ff     CALL $47FF
af1a: 98 47 75     MOVD R71,R117
af1d: db 75        DECD R117
af1f: b5           CLR A
af20: 9b 75        STA *R117
af22: 98 41 3d     MOVD R65,R61
af25: 8e 8b 30     CALL $8B30
af28: 22 08        MOV %>8,A
af2a: 9b 47        STA *R71
af2c: 72 04 33     MOV %>4,R51
af2f: 8e 51 1f     CALL $511F
af32: 8e 55 6b     CALL $556B
af35: 8e b1 2b     CALL $B12B
af38: 52 02        MOV %>2,B
af3a: 8e b1 d9     CALL $B1D9
af3d: 8e 47 ff     CALL $47FF
af40: 98 43 3d     MOVD R67,R61
af43: 8e 8b 30     CALL $8B30
af46: 9a 47        LDA *R71
af48: 24 04        OR %>4,A
af4a: 9b 47        STA *R71
af4c: 72 03 33     MOV %>3,R51
af4f: 8e 51 1f     CALL $511F
af52: 8e 55 6b     CALL $556B
af55: 8e b1 4a     CALL $B14A
af58: 52 02        MOV %>2,B
af5a: 8e b1 d9     CALL $B1D9
af5d: 8e 47 ff     CALL $47FF
af60: 98 45 3d     MOVD R69,R61
af63: 8e 8b 30     CALL $8B30
af66: 9a 47        LDA *R71
af68: 24 02        OR %>2,A
af6a: 9b 47        STA *R71
af6c: c0           MOV A,B
af6d: b5           CLR A
af6e: 8e 57 51     CALL $5751
af71: 72 02 33     MOV %>2,R51
af74: 8e 51 1f     CALL $511F
af77: 8e 55 6b     CALL $556B
af7a: 73 bf 32     AND %>BF,R50
af7d: f9           TRAP 6
af7e: 8c 58 9a     BR $589A
af81: 8e b0 78     CALL $B078
af84: 52 01        MOV %>1,B
af86: 8e b1 d9     CALL $B1D9
af89: 98 3f 75     MOVD R63,R117
af8c: f6           TRAP 9
af8d: 8e f0 15     CALL $F015
af90: 88 41 02 61  MOVD %>4102,R97
af94: ee           TRAP 17
af95: 88 22 93 3d  MOVD %>2293,R61
af99: 8e 8b 30     CALL $8B30
af9c: 8e af b3     CALL $AFB3
af9f: f5           TRAP 10
afa0: 88 23 12 75  MOVD %>2312,R117
afa4: f8           TRAP 7
afa5: 88 26 45 75  MOVD %>2645,R117
afa9: f6           TRAP 9
afaa: f1           TRAP 14
afab: f4           TRAP 11
afac: d4 48        INV R72
afae: ef           TRAP 16
afaf: 0a           RETS
afb0: 8c b0 46     BR $B046
afb3: 88 23 1a 75  MOVD %>231A,R117
afb7: f8           TRAP 7
afb8: 8e 47 e0     CALL $47E0
afbb: 88 40 01 49  MOVD %>4001,R73
afbf: 8e f0 39     CALL $F039
afc2: e2 ec        JEQ $AFB0
afc4: 88 22 93 75  MOVD %>2293,R117
afc8: f8           TRAP 7
afc9: 88 22 83 3d  MOVD %>2283,R61
afcd: 8e 8b 30     CALL $8B30
afd0: 88 23 12 75  MOVD %>2312,R117
afd4: f8           TRAP 7
afd5: 88 22 8b 3d  MOVD %>228B,R61
afd9: 8e 8b 30     CALL $8B30
afdc: 8e 8c 77     CALL $8C77
afdf: 8e 47 e0     CALL $47E0
afe2: 88 40 01 49  MOVD %>4001,R73
afe6: ef           TRAP 16
afe7: 88 23 22 3d  MOVD %>2322,R61
afeb: 8e 8b 30     CALL $8B30
afee: 88 22 93 75  MOVD %>2293,R117
aff2: f8           TRAP 7
aff3: 88 22 83 3d  MOVD %>2283,R61
aff7: 8e 8b 30     CALL $8B30
affa: 88 23 1a 75  MOVD %>231A,R117
affe: f8           TRAP 7
afff: d4 60        INV R96
b001: 88 22 8b 3d  MOVD %>228B,R61
b005: 8e 8b 30     CALL $8B30
b008: 8e 8b e3     CALL $8BE3
b00b: 88 26 45 75  MOVD %>2645,R117
b00f: f6           TRAP 9
b010: f1           TRAP 14
b011: f5           TRAP 10
b012: 88 22 93 75  MOVD %>2293,R117
b016: f8           TRAP 7
b017: 88 22 83 3d  MOVD %>2283,R61
b01b: 8e 8b 30     CALL $8B30
b01e: 88 23 1a 75  MOVD %>231A,R117
b022: f8           TRAP 7
b023: d4 60        INV R96
b025: 88 22 8b 3d  MOVD %>228B,R61
b029: 8e 8b 30     CALL $8B30
b02c: 8e 8c ae     CALL $8CAE
b02f: c5           CLR B
b030: 8e b1 d9     CALL $B1D9
b033: 98 45 75     MOVD R69,R117
b036: f6           TRAP 9
b037: f1           TRAP 14
b038: d4 60        INV R96
b03a: f4           TRAP 11
b03b: ef           TRAP 16
b03c: 88 23 22 75  MOVD %>2322,R117
b040: f6           TRAP 9
b041: 8e f0 1b     CALL $F01B
b044: ee           TRAP 17
b045: 0a           RETS
b046: c5           CLR B
b047: 8e b1 d9     CALL $B1D9
b04a: 88 23 12 75  MOVD %>2312,R117
b04e: f8           TRAP 7
b04f: 8e 47 e0     CALL $47E0
b052: 88 40 01 49  MOVD %>4001,R73
b056: ef           TRAP 16
b057: 88 22 93 75  MOVD %>2293,R117
b05b: f6           TRAP 9
b05c: f1           TRAP 14
b05d: 8e 47 e0     CALL $47E0
b060: 88 40 01 49  MOVD %>4001,R73
b064: ef           TRAP 16
b065: f5           TRAP 10
b066: 98 45 75     MOVD R69,R117
b069: f8           TRAP 7
b06a: 88 26 45 75  MOVD %>2645,R117
b06e: f6           TRAP 9
b06f: ef           TRAP 16
b070: d4 60        INV R96
b072: f4           TRAP 11
b073: 8e f0 1b     CALL $F01B
b076: ee           TRAP 17
b077: 0a           RETS
b078: 8e b4 3b     CALL $B43B
b07b: 88 23 12 3d  MOVD %>2312,R61
b07f: 8e 8b 30     CALL $8B30
b082: 8e b3 50     CALL $B350
b085: 88 23 1a 3d  MOVD %>231A,R61
b089: 8e 8b 30     CALL $8B30
b08c: c5           CLR B
b08d: 8e b1 d9     CALL $B1D9
b090: 98 41 75     MOVD R65,R117
b093: f6           TRAP 9
b094: 8e f0 15     CALL $F015
b097: 88 40 02 61  MOVD %>4002,R97
b09b: ee           TRAP 17
b09c: 88 26 45 3d  MOVD %>2645,R61
b0a0: 8e 8b 30     CALL $8B30
b0a3: 88 23 12 75  MOVD %>2312,R117
b0a7: f8           TRAP 7
b0a8: 88 26 45 75  MOVD %>2645,R117
b0ac: f6           TRAP 9
b0ad: f1           TRAP 14
b0ae: 52 01        MOV %>1,B
b0b0: 8e b1 d9     CALL $B1D9
b0b3: 98 41 75     MOVD R65,R117
b0b6: f6           TRAP 9
b0b7: d4 48        INV R72
b0b9: ef           TRAP 16
b0ba: 88 26 4d 3d  MOVD %>264D,R61
b0be: 8c 8b 30     BR $8B30
b0c1: 8e b0 78     CALL $B078
b0c4: 88 23 1a 75  MOVD %>231A,R117
b0c8: f8           TRAP 7
b0c9: 8e 47 e0     CALL $47E0
b0cc: 88 40 01 49  MOVD %>4001,R73
b0d0: 8e f0 39     CALL $F039
b0d3: e2 05        JEQ $B0DA
b0d5: 8e b4 41     CALL $B441
b0d8: e0 2c        JMP $B106
b0da: c5           CLR B
b0db: 8e b1 d9     CALL $B1D9
b0de: 98 45 75     MOVD R69,R117
b0e1: f6           TRAP 9
b0e2: 88 26 4d 75  MOVD %>264D,R117
b0e6: f8           TRAP 7
b0e7: ef           TRAP 16
b0e8: 88 26 45 75  MOVD %>2645,R117
b0ec: f6           TRAP 9
b0ed: ef           TRAP 16
b0ee: d4 60        INV R96
b0f0: f5           TRAP 10
b0f1: 88 23 12 75  MOVD %>2312,R117
b0f5: f8           TRAP 7
b0f6: 8e 47 e0     CALL $47E0
b0f9: 88 40 01 49  MOVD %>4001,R73
b0fd: ef           TRAP 16
b0fe: 88 26 4d 75  MOVD %>264D,R117
b102: f6           TRAP 9
b103: f1           TRAP 14
b104: f4           TRAP 11
b105: ee           TRAP 17
b106: 8e 47 e0     CALL $47E0
b109: 88 41 02 49  MOVD %>4102,R73
b10d: f1           TRAP 14
b10e: 0a           RETS
b10f: 52 01        MOV %>1,B
b111: 8e b1 d9     CALL $B1D9
b114: 98 41 75     MOVD R65,R117
b117: f8           TRAP 7
b118: 52 02        MOV %>2,B
b11a: 8e b1 d9     CALL $B1D9
b11d: 98 3f 75     MOVD R63,R117
b120: f6           TRAP 9
b121: f1           TRAP 14
b122: 8e 47 e0     CALL $47E0
b125: 88 40 10 49  MOVD %>4010,R73
b129: f1           TRAP 14
b12a: 0a           RETS
b12b: 8e b4 2e     CALL $B42E
b12e: c5           CLR B
b12f: 8e b1 d9     CALL $B1D9
b132: 98 41 75     MOVD R65,R117
b135: f6           TRAP 9
b136: f1           TRAP 14
b137: 52 02        MOV %>2,B
b139: 8e b1 d9     CALL $B1D9
b13c: 98 3f 75     MOVD R63,R117
b13f: f6           TRAP 9
b140: f1           TRAP 14
b141: 8e 47 e0     CALL $47E0
b144: 88 40 05 49  MOVD %>4005,R73
b148: f1           TRAP 14
b149: 0a           RETS
b14a: 52 02        MOV %>2,B
b14c: 8e b1 d9     CALL $B1D9
b14f: 98 41 75     MOVD R65,R117
b152: f8           TRAP 7
b153: 98 43 75     MOVD R67,R117
b156: f6           TRAP 9
b157: ef           TRAP 16
b158: 0a           RETS
b159: b5           CLR A
b15a: 8b 26 35     STA @>2635
b15d: 88 26 45 75  MOVD %>2645,R117
b161: f8           TRAP 7
b162: 98 3f 3d     MOVD R63,R61
b165: 8e a6 a6     CALL $A6A6
b168: 8b 26 35     STA @>2635
b16b: 88 26 4d 75  MOVD %>264D,R117
b16f: f8           TRAP 7
b170: 98 43 3d     MOVD R67,R61
b173: 8e a6 a6     CALL $A6A6
b176: c0           MOV A,B
b177: c7           SWAP B
b178: 8a 26 35     LDA @>2635
b17b: 65           XOR B,A
b17c: 8b 26 35     STA @>2635
b17f: 88 26 45 75  MOVD %>2645,R117
b183: f8           TRAP 7
b184: 88 26 4d 75  MOVD %>264D,R117
b188: f6           TRAP 9
b189: 8e a7 59     CALL $A759
b18c: 98 3f 3d     MOVD R63,R61
b18f: 8e a7 90     CALL $A790
b192: f5           TRAP 10
b193: 98 43 3d     MOVD R67,R61
b196: 8e a7 98     CALL $A798
b199: f4           TRAP 11
b19a: d4 48        INV R72
b19c: ef           TRAP 16
b19d: f5           TRAP 10
b19e: 98 3f 3d     MOVD R63,R61
b1a1: 8e a5 ac     CALL $A5AC
b1a4: 8e f0 1e     CALL $F01E
b1a7: 98 43 3d     MOVD R67,R61
b1aa: 8e a5 ac     CALL $A5AC
b1ad: d4 48        INV R72
b1af: ef           TRAP 16
b1b0: 8e 47 e0     CALL $47E0
b1b3: 88 a3 66 75  MOVD %>A366,R117
b1b7: f6           TRAP 9
b1b8: f1           TRAP 14
b1b9: f5           TRAP 10
b1ba: 98 3f 3d     MOVD R63,R61
b1bd: 8e a5 65     CALL $A565
b1c0: 8e f0 1e     CALL $F01E
b1c3: 98 43 3d     MOVD R67,R61
b1c6: 8e a5 65     CALL $A565
b1c9: d4 48        INV R72
b1cb: ef           TRAP 16
b1cc: 8e 47 e0     CALL $47E0
b1cf: 88 40 30 49  MOVD %>4030,R73
b1d3: f1           TRAP 14
b1d4: f4           TRAP 11
b1d5: ef           TRAP 16
b1d6: f4           TRAP 11
b1d7: ef           TRAP 16
b1d8: 0a           RETS
b1d9: 5d 00        CMP %>0,B
b1db: e6 05        JNZ $B1E2
b1dd: 8e ab 77     CALL $AB77
b1e0: e0 10        JMP $B1F2
b1e2: 5d 01        CMP %>1,B
b1e4: e6 05        JNZ $B1EB
b1e6: 8e ab d7     CALL $ABD7
b1e9: e0 07        JMP $B1F2
b1eb: 5d 02        CMP %>2,B
b1ed: e6 03        JNZ $B1F2
b1ef: 8e ac 17     CALL $AC17
b1f2: 0a           RETS
b1f3: 8e a6 a6     CALL $A6A6
b1f6: 27 01 04     BTJZ %>1,A,$B1FD
b1f9: 8e b2 20     CALL $B220
b1fc: 0a           RETS
b1fd: 98 43 3d     MOVD R67,R61
b200: 7a 02 3d     SUB %>2,R61
b203: 7b 00 3c     SBB %>0,R60
b206: 9a 3d        LDA *R61
b208: 8b 26 37     STA @>2637
b20b: 88 26 39 75  MOVD %>2639,R117
b20f: 8e 64 d1     CALL $64D1
b212: 7d 02 61     CMP %>2,R97
b215: e6 08        JNZ $B21F
b217: 7d 29 62     CMP %>29,R98
b21a: e7 03        JL $B21F
b21c: 8e b2 20     CALL $B220
b21f: 0a           RETS
b220: 8a 26 39     LDA @>2639
b223: 8b 00 64     STA @>0064
b226: 8a 26 38     LDA @>2638
b229: 8b 00 63     STA @>0063
b22c: 8a 26 36     LDA @>2636
b22f: 2d 0c        CMP %>C,A
b231: e2 03        JEQ $B236
b233: b3           INC A
b234: e0 09        JMP $B23F
b236: b0           CLRC
b237: 7e 01 64     DAC %>1,R100
b23a: 7e 00 63     DAC %>0,R99
b23d: 22 01        MOV %>1,A
b23f: 8b 00 61     STA @>0061
b242: 72 01 62     MOV %>1,R98
b245: 72 40 60     MOV %>40,R96
b248: 8e a4 e4     CALL $A4E4
b24b: 8e 47 e0     CALL $47E0
b24e: 88 bf 01 49  MOVD %>BF01,R73
b252: ef           TRAP 16
b253: 8e a3 c9     CALL $A3C9
b256: 0a           RETS
b257: 8e b3 42     CALL $B342
b25a: 52 00        MOV %>0,B
b25c: 8e b1 d9     CALL $B1D9
b25f: 98 3f 75     MOVD R63,R117
b262: 8e 64 d1     CALL $64D1
b265: 8a 00 64     LDA @>0064
b268: 8b 26 39     STA @>2639
b26b: 8a 00 63     LDA @>0063
b26e: 8b 26 38     STA @>2638
b271: 98 43 75     MOVD R67,R117
b274: 8e 64 d1     CALL $64D1
b277: 8a 00 61     LDA @>0061
b27a: 2d 07        CMP %>7,A
b27c: e3 03        JHS $B281
b27e: b0           CLRC
b27f: 2e 06        DAC %>6,A
b281: 8b 26 36     STA @>2636
b284: 8e a4 e4     CALL $A4E4
b287: 88 26 4d 3d  MOVD %>264D,R61
b28b: 8e 8b 30     CALL $8B30
b28e: 98 3f 75     MOVD R63,R117
b291: 8e 64 d1     CALL $64D1
b294: 8e a4 e4     CALL $A4E4
b297: 88 26 45 3d  MOVD %>2645,R61
b29b: 8e 8b 30     CALL $8B30
b29e: 98 43 3d     MOVD R67,R61
b2a1: 88 26 4d 75  MOVD %>264D,R117
b2a5: f8           TRAP 7
b2a6: 8e b1 f3     CALL $B1F3
b2a9: 88 26 39 3d  MOVD %>2639,R61
b2ad: 8e a8 fc     CALL $A8FC
b2b0: 8e a4 e4     CALL $A4E4
b2b3: 88 26 45 75  MOVD %>2645,R117
b2b7: f6           TRAP 9
b2b8: 8e f0 39     CALL $F039
b2bb: e7 12        JL $B2CF
b2bd: 88 26 39 75  MOVD %>2639,R117
b2c1: 8e 64 d1     CALL $64D1
b2c4: 8e a3 67     CALL $A367
b2c7: 88 26 3d 3d  MOVD %>263D,R61
b2cb: 8e a8 fc     CALL $A8FC
b2ce: 0a           RETS
b2cf: 8a 26 36     LDA @>2636
b2d2: 2d 07        CMP %>7,A
b2d4: e3 1b        JHS $B2F1
b2d6: b0           CLRC
b2d7: 2e 06        DAC %>6,A
b2d9: 8b 26 36     STA @>2636
b2dc: 8a 26 39     LDA @>2639
b2df: c0           MOV A,B
b2e0: 8a 26 38     LDA @>2638
b2e3: 07           SETC
b2e4: 5f 01        DSB %>1,B
b2e6: 2f 00        DSB %>0,A
b2e8: 8b 26 38     STA @>2638
b2eb: 62           MOV B,A
b2ec: 8b 26 39     STA @>2639
b2ef: e0 ad        JMP $B29E
b2f1: 07           SETC
b2f2: 2f 06        DSB %>6,A
b2f4: 8b 26 36     STA @>2636
b2f7: e0 a5        JMP $B29E
b2f9: 98 43 75     MOVD R67,R117
b2fc: 8e 64 d1     CALL $64D1
b2ff: 8e a4 e4     CALL $A4E4
b302: 98 43 3d     MOVD R67,R61
b305: 8e b3 42     CALL $B342
b308: 8a 26 3a     LDA @>263A
b30b: 2d 07        CMP %>7,A
b30d: e3 14        JHS $B323
b30f: b0           CLRC
b310: 2e 06        DAC %>6,A
b312: 8b 26 36     STA @>2636
b315: 8a 26 3d     LDA @>263D
b318: 8b 26 39     STA @>2639
b31b: 8a 26 3c     LDA @>263C
b31e: 8b 26 38     STA @>2638
b321: e0 1b        JMP $B33E
b323: 8a 26 3a     LDA @>263A
b326: 07           SETC
b327: 2f 06        DSB %>6,A
b329: 8b 26 36     STA @>2636
b32c: 8a 26 3d     LDA @>263D
b32f: c0           MOV A,B
b330: 8a 26 3c     LDA @>263C
b333: 5e 01        DAC %>1,B
b335: 2e 00        DAC %>0,A
b337: 8b 26 38     STA @>2638
b33a: 62           MOV B,A
b33b: 8b 26 39     STA @>2639
b33e: 8e b1 f3     CALL $B1F3
b341: 0a           RETS
b342: b5           CLR A
b343: 8b 26 39     STA @>2639
b346: 8b 26 38     STA @>2638
b349: 8b 26 37     STA @>2637
b34c: 8b 26 36     STA @>2636
b34f: 0a           RETS
b350: c5           CLR B
b351: 8e b1 d9     CALL $B1D9
b354: 88 26 3d 3f  MOVD %>263D,R63
b358: 98 3f 75     MOVD R63,R117
b35b: 8e 64 d1     CALL $64D1
b35e: 8e a4 e4     CALL $A4E4
b361: 88 26 45 3d  MOVD %>2645,R61
b365: 8e 8b 30     CALL $8B30
b368: 98 43 75     MOVD R67,R117
b36b: 8e 64 d1     CALL $64D1
b36e: 8e a4 e4     CALL $A4E4
b371: 88 26 4d 3d  MOVD %>264D,R61
b375: 8e 8b 30     CALL $8B30
b378: 8e b1 59     CALL $B159
b37b: 8e 47 e0     CALL $47E0
b37e: 72 41 48     MOV %>41,R72
b381: 88 01 80 4a  MOVD %>0180,R74
b385: 8e f0 1b     CALL $F01B
b388: ee           TRAP 17
b389: 8e 47 e0     CALL $47E0
b38c: 88 3f 50 49  MOVD %>3F50,R73
b390: ef           TRAP 16
b391: 8e 8b 3c     CALL $8B3C
b394: 8e 47 e0     CALL $47E0
b397: 88 40 01 49  MOVD %>4001,R73
b39b: 8e f0 39     CALL $F039
b39e: e3 01        JHS $B3A1
b3a0: 0a           RETS
b3a1: e2 fd        JEQ $B3A0
b3a3: 72 06 6f     MOV %>6,R111
b3a6: fa           TRAP 5
b3a7: c5           CLR B
b3a8: 8e b1 d9     CALL $B1D9
b3ab: 98 3f 43     MOVD R63,R67
b3ae: 88 26 3d 3f  MOVD %>263D,R63
b3b2: 98 47 75     MOVD R71,R117
b3b5: 7a 03 75     SUB %>3,R117
b3b8: 7b 00 74     SBB %>0,R116
b3bb: 9a 75        LDA *R117
b3bd: 26 01 18     BTJO %>1,A,$B3D8
b3c0: 98 3f 75     MOVD R63,R117
b3c3: 8e 64 d1     CALL $64D1
b3c6: 8e a4 e4     CALL $A4E4
b3c9: f5           TRAP 10
b3ca: 98 43 75     MOVD R67,R117
b3cd: 8e 64 d1     CALL $64D1
b3d0: 8e a4 e4     CALL $A4E4
b3d3: f4           TRAP 11
b3d4: d4 48        INV R72
b3d6: ef           TRAP 16
b3d7: 0a           RETS
b3d8: 98 3f 75     MOVD R63,R117
b3db: 8e 64 d1     CALL $64D1
b3de: 8e a4 e4     CALL $A4E4
b3e1: 88 26 45 3d  MOVD %>2645,R61
b3e5: 8e 8b 30     CALL $8B30
b3e8: 98 43 75     MOVD R67,R117
b3eb: 8e 64 d1     CALL $64D1
b3ee: 8e a4 e4     CALL $A4E4
b3f1: 88 26 4d 3d  MOVD %>264D,R61
b3f5: 8e 8b 30     CALL $8B30
b3f8: 8c b1 59     BR $B159
b3fb: c5           CLR B
b3fc: 8e b1 d9     CALL $B1D9
b3ff: 98 47 75     MOVD R71,R117
b402: 7a 03 75     SUB %>3,R117
b405: 7b 00 74     SBB %>0,R116
b408: 9a 75        LDA *R117
b40a: 26 01 16     BTJO %>1,A,$B423
b40d: 88 26 3d 75  MOVD %>263D,R117
b411: 8e 64 d1     CALL $64D1
b414: 8e a4 e4     CALL $A4E4
b417: f5           TRAP 10
b418: 8e b2 f9     CALL $B2F9
b41b: 8e a4 e4     CALL $A4E4
b41e: f4           TRAP 11
b41f: d4 48        INV R72
b421: ef           TRAP 16
b422: 0a           RETS
b423: 8e f0 15     CALL $F015
b426: 72 41 60     MOV %>41,R96
b429: 88 01 80 62  MOVD %>0180,R98
b42d: 0a           RETS
b42e: 8e b2 57     CALL $B257
b431: 8e b3 a7     CALL $B3A7
b434: f5           TRAP 10
b435: 8e b3 fb     CALL $B3FB
b438: f4           TRAP 11
b439: ee           TRAP 17
b43a: 0a           RETS
b43b: 8e b4 2e     CALL $B42E
b43e: d4 60        INV R96
b440: 0a           RETS
b441: 8e f0 15     CALL $F015
b444: 88 22 93 3d  MOVD %>2293,R61
b448: 8e 8b 30     CALL $8B30
b44b: c5           CLR B
b44c: 8e b1 d9     CALL $B1D9
b44f: 8e b5 2d     CALL $B52D
b452: d5 77        CLR R119
b454: 76 ff 61 01  BTJO %>FF,R97,$B459
b458: 0a           RETS
b459: 7d 20 77     CMP %>20,R119
b45c: e7 07        JL $B465
b45e: 8e ab d7     CALL $ABD7
b461: 72 07 6f     MOV %>7,R111
b464: fa           TRAP 5
b465: d3 77        INC R119
b467: 8e b5 f0     CALL $B5F0
b46a: 88 22 93 75  MOVD %>2293,R117
b46e: f8           TRAP 7
b46f: 88 22 83 3d  MOVD %>2283,R61
b473: 8e 8b 30     CALL $8B30
b476: 88 23 1a 75  MOVD %>231A,R117
b47a: f8           TRAP 7
b47b: 88 22 8b 3d  MOVD %>228B,R61
b47f: 8e 8b 30     CALL $8B30
b482: 8e 8c ae     CALL $8CAE
b485: f5           TRAP 10
b486: 8e b5 12     CALL $B512
b489: 8e b6 20     CALL $B620
b48c: 88 23 1a 75  MOVD %>231A,R117
b490: f6           TRAP 9
b491: f1           TRAP 14
b492: 88 22 83 75  MOVD %>2283,R117
b496: f6           TRAP 9
b497: 8e f0 1b     CALL $F01B
b49a: ee           TRAP 17
b49b: f5           TRAP 10
b49c: 88 22 93 75  MOVD %>2293,R117
b4a0: f8           TRAP 7
b4a1: 88 23 12 75  MOVD %>2312,R117
b4a5: f6           TRAP 9
b4a6: f1           TRAP 14
b4a7: 88 23 22 75  MOVD %>2322,R117
b4ab: f6           TRAP 9
b4ac: f1           TRAP 14
b4ad: f4           TRAP 11
b4ae: d4 60        INV R96
b4b0: ef           TRAP 16
b4b1: f4           TRAP 11
b4b2: f1           TRAP 14
b4b3: f5           TRAP 10
b4b4: 88 22 93 75  MOVD %>2293,R117
b4b8: f8           TRAP 7
b4b9: 8e 8b 28     CALL $8B28
b4bc: ef           TRAP 16
b4bd: 88 22 83 75  MOVD %>2283,R117
b4c1: f6           TRAP 9
b4c2: f1           TRAP 14
b4c3: f4           TRAP 11
b4c4: ee           TRAP 17
b4c5: f5           TRAP 10
b4c6: 8e b6 2b     CALL $B62B
b4c9: 8e f0 1e     CALL $F01E
b4cc: 88 22 93 75  MOVD %>2293,R117
b4d0: f8           TRAP 7
b4d1: f1           TRAP 14
b4d2: 8e f0 54     CALL $F054
b4d5: d4 48        INV R72
b4d7: ef           TRAP 16
b4d8: 88 26 45 75  MOVD %>2645,R117
b4dc: f6           TRAP 9
b4dd: ef           TRAP 16
b4de: f4           TRAP 11
b4df: ee           TRAP 17
b4e0: f5           TRAP 10
b4e1: 88 22 93 75  MOVD %>2293,R117
b4e5: f6           TRAP 9
b4e6: ef           TRAP 16
b4e7: 88 22 93 3d  MOVD %>2293,R61
b4eb: 8e 8b 30     CALL $8B30
b4ee: f4           TRAP 11
b4ef: 12 61        MOV R97,A
b4f1: e2 13        JEQ $B506
b4f3: 12 49        MOV R73,A
b4f5: e2 0f        JEQ $B506
b4f7: 12 48        MOV R72,A
b4f9: e5 01        JPZ $B4FC
b4fb: b4           INV A
b4fc: 2d 3a        CMP %>3A,A
b4fe: e7 06        JL $B506
b500: e6 0d        JNZ $B50F
b502: 76 f0 49 09  BTJO %>F0,R73,$B50F
b506: 88 22 93 75  MOVD %>2293,R117
b50a: f8           TRAP 7
b50b: 73 bf 32     AND %>BF,R50
b50e: 0a           RETS
b50f: 8c b4 59     BR $B459
b512: 88 22 93 75  MOVD %>2293,R117
b516: f8           TRAP 7
b517: 88 22 83 3d  MOVD %>2283,R61
b51b: 8e 8b 30     CALL $8B30
b51e: 88 23 1a 75  MOVD %>231A,R117
b522: f8           TRAP 7
b523: 88 22 8b 3d  MOVD %>228B,R61
b527: 8e 8b 30     CALL $8B30
b52a: 8c 8b e3     BR $8BE3
b52d: 8e b5 e5     CALL $B5E5
b530: f5           TRAP 10
b531: 88 23 1a 75  MOVD %>231A,R117
b535: f8           TRAP 7
b536: 88 26 45 75  MOVD %>2645,R117
b53a: f6           TRAP 9
b53b: f1           TRAP 14
b53c: f4           TRAP 11
b53d: ef           TRAP 16
b53e: f5           TRAP 10
b53f: 88 23 1a 75  MOVD %>231A,R117
b543: f8           TRAP 7
b544: 8e 47 e0     CALL $47E0
b547: 88 40 01 49  MOVD %>4001,R73
b54b: ef           TRAP 16
b54c: f5           TRAP 10
b54d: 8e b5 e5     CALL $B5E5
b550: f4           TRAP 11
b551: f1           TRAP 14
b552: 8e 47 e0     CALL $47E0
b555: 88 40 02 49  MOVD %>4002,R73
b559: 8e f0 1b     CALL $F01B
b55c: ee           TRAP 17
b55d: f5           TRAP 10
b55e: 98 45 75     MOVD R69,R117
b561: f8           TRAP 7
b562: d4 60        INV R96
b564: 88 23 1a 75  MOVD %>231A,R117
b568: f6           TRAP 9
b569: f1           TRAP 14
b56a: f5           TRAP 10
b56b: 88 26 4d 75  MOVD %>264D,R117
b56f: f8           TRAP 7
b570: 88 23 12 75  MOVD %>2312,R117
b574: f6           TRAP 9
b575: f1           TRAP 14
b576: f4           TRAP 11
b577: ef           TRAP 16
b578: f4           TRAP 11
b579: ef           TRAP 16
b57a: f5           TRAP 10
b57b: 88 23 1a 75  MOVD %>231A,R117
b57f: f8           TRAP 7
b580: 8e f0 1e     CALL $F01E
b583: f1           TRAP 14
b584: 8e 47 e0     CALL $47E0
b587: 88 bf 01 49  MOVD %>BF01,R73
b58b: ef           TRAP 16
b58c: f5           TRAP 10
b58d: 8e b5 e5     CALL $B5E5
b590: f4           TRAP 11
b591: f1           TRAP 14
b592: 8e 47 e0     CALL $47E0
b595: 88 40 12 49  MOVD %>4012,R73
b599: 8e f0 1b     CALL $F01B
b59c: ee           TRAP 17
b59d: f5           TRAP 10
b59e: 88 23 1a 75  MOVD %>231A,R117
b5a2: f8           TRAP 7
b5a3: 88 23 12 75  MOVD %>2312,R117
b5a7: f6           TRAP 9
b5a8: ef           TRAP 16
b5a9: 88 23 12 75  MOVD %>2312,R117
b5ad: f6           TRAP 9
b5ae: f1           TRAP 14
b5af: 88 26 4d 75  MOVD %>264D,R117
b5b3: f6           TRAP 9
b5b4: f1           TRAP 14
b5b5: 8e 47 e0     CALL $47E0
b5b8: 88 40 02 49  MOVD %>4002,R73
b5bc: 8e f0 1b     CALL $F01B
b5bf: ee           TRAP 17
b5c0: f4           TRAP 11
b5c1: ef           TRAP 16
b5c2: f4           TRAP 11
b5c3: 8e f0 1b     CALL $F01B
b5c6: f5           TRAP 10
b5c7: ee           TRAP 17
b5c8: f4           TRAP 11
b5c9: 8e f0 1b     CALL $F01B
b5cc: 8e f0 54     CALL $F054
b5cf: f5           TRAP 10
b5d0: f1           TRAP 14
b5d1: f4           TRAP 11
b5d2: 8e f0 1b     CALL $F01B
b5d5: 8e f0 54     CALL $F054
b5d8: d4 60        INV R96
b5da: ef           TRAP 16
b5db: f4           TRAP 11
b5dc: ee           TRAP 17
b5dd: 88 22 93 3d  MOVD %>2293,R61
b5e1: 8e 8b 30     CALL $8B30
b5e4: 0a           RETS
b5e5: 88 26 4d 75  MOVD %>264D,R117
b5e9: f8           TRAP 7
b5ea: 98 45 75     MOVD R69,R117
b5ed: f6           TRAP 9
b5ee: ef           TRAP 16
b5ef: 0a           RETS
b5f0: 88 22 93 75  MOVD %>2293,R117
b5f4: f8           TRAP 7
b5f5: 88 22 83 3d  MOVD %>2283,R61
b5f9: 8e 8b 30     CALL $8B30
b5fc: 88 23 12 75  MOVD %>2312,R117
b600: f8           TRAP 7
b601: 88 22 8b 3d  MOVD %>228B,R61
b605: 8e 8b 30     CALL $8B30
b608: 8e 8c 77     CALL $8C77
b60b: 8e 47 e0     CALL $47E0
b60e: 88 40 01 49  MOVD %>4001,R73
b612: ef           TRAP 16
b613: 88 26 4d 75  MOVD %>264D,R117
b617: f6           TRAP 9
b618: f1           TRAP 14
b619: 88 23 22 3d  MOVD %>2322,R61
b61d: 8c 8b 30     BR $8B30
b620: 88 23 22 75  MOVD %>2322,R117
b624: f8           TRAP 7
b625: 98 45 75     MOVD R69,R117
b628: f6           TRAP 9
b629: ef           TRAP 16
b62a: 0a           RETS
b62b: 8e b6 20     CALL $B620
b62e: f5           TRAP 10
b62f: 88 22 83 75  MOVD %>2283,R117
b633: f8           TRAP 7
b634: f4           TRAP 11
b635: ee           TRAP 17
b636: f5           TRAP 10
b637: 88 23 22 75  MOVD %>2322,R117
b63b: f8           TRAP 7
b63c: 88 22 93 75  MOVD %>2293,R117
b640: f6           TRAP 9
b641: f1           TRAP 14
b642: f4           TRAP 11
b643: ef           TRAP 16
b644: 88 26 45 75  MOVD %>2645,R117
b648: f6           TRAP 9
b649: ef           TRAP 16
b64a: 0a           RETS
b64b: d1 77        MOV B,R119
b64d: 7a 07 3d     SUB %>7,R61
b650: 7b 00 3c     SBB %>0,R60
b653: 98 3d 75     MOVD R61,R117
b656: 9a 3d        LDA *R61
b658: e1 0c        JN $B666
b65a: 78 08 3d     ADD %>8,R61
b65d: 79 00 3c     ADC %>0,R60
b660: ca f4        DJNZ B,$B656
b662: 72 05 6f     MOV %>5,R111
b665: fa           TRAP 5
b666: 9a 75        LDA *R117
b668: 27 80 0d     BTJZ %>80,A,$B678
b66b: 78 08 75     ADD %>8,R117
b66e: 79 00 74     ADC %>0,R116
b671: da 77 f2     DJNZ R119,$B666
b674: 72 05 6f     MOV %>5,R111
b677: fa           TRAP 5
b678: 0a           RETS
b679: 00           NOP
b67a: 00           NOP
b67b: 00           NOP
b67c: 00           NOP
b67d: 00           NOP
b67e: 00           NOP
b67f: 00           NOP
b680: 00           NOP
b681: 00           NOP
b682: 00           NOP
b683: 00           NOP
b684: 00           NOP
b685: 00           NOP
b686: 00           NOP
b687: 00           NOP
b688: 00           NOP
b689: 00           NOP
b68a: 00           NOP
b68b: 00           NOP
b68c: 00           NOP
b68d: 00           NOP
b68e: 00           NOP
b68f: 00           NOP
b690: 00           NOP
b691: 00           NOP
b692: 00           NOP
b693: 00           NOP
b694: 00           NOP
b695: 00           NOP
b696: 00           NOP
b697: 00           NOP
b698: 00           NOP
b699: 00           NOP
b69a: 00           NOP
b69b: 00           NOP
b69c: 00           NOP
b69d: 00           NOP
b69e: 00           NOP
b69f: 00           NOP
b6a0: 00           NOP
b6a1: 00           NOP
b6a2: 00           NOP
b6a3: 00           NOP
b6a4: 00           NOP
b6a5: 00           NOP
b6a6: 00           NOP
b6a7: 00           NOP
b6a8: 00           NOP
b6a9: 00           NOP
b6aa: 00           NOP
b6ab: 00           NOP
b6ac: 00           NOP
b6ad: 00           NOP
b6ae: 00           NOP
b6af: 00           NOP
b6b0: 00           NOP
b6b1: 00           NOP
b6b2: 00           NOP
b6b3: 00           NOP
b6b4: 00           NOP
b6b5: 00           NOP
b6b6: 00           NOP
b6b7: 00           NOP
b6b8: 00           NOP
b6b9: 00           NOP
b6ba: 00           NOP
b6bb: 00           NOP
b6bc: 00           NOP
b6bd: 00           NOP
b6be: 00           NOP
b6bf: 00           NOP
b6c0: 00           NOP
b6c1: 00           NOP
b6c2: 00           NOP
b6c3: 00           NOP
b6c4: 00           NOP
b6c5: 00           NOP
b6c6: 00           NOP
b6c7: 00           NOP
b6c8: 00           NOP
b6c9: 00           NOP
b6ca: 00           NOP
b6cb: 00           NOP
b6cc: 00           NOP
b6cd: 00           NOP
b6ce: 00           NOP
b6cf: 00           NOP
b6d0: 00           NOP
b6d1: 00           NOP
b6d2: 00           NOP
b6d3: 00           NOP
b6d4: 00           NOP
b6d5: 00           NOP
b6d6: 00           NOP
b6d7: 00           NOP
b6d8: 00           NOP
b6d9: 00           NOP
b6da: 00           NOP
b6db: 00           NOP
b6dc: 00           NOP
b6dd: 00           NOP
b6de: 00           NOP
b6df: 00           NOP
b6e0: 00           NOP
b6e1: 00           NOP
b6e2: 00           NOP
b6e3: 00           NOP
b6e4: 00           NOP
b6e5: 00           NOP
b6e6: 00           NOP
b6e7: 00           NOP
b6e8: 00           NOP
b6e9: 00           NOP
b6ea: 00           NOP
b6eb: 00           NOP
b6ec: 00           NOP
b6ed: 00           NOP
b6ee: 00           NOP
b6ef: 00           NOP
b6f0: 00           NOP
b6f1: 00           NOP
b6f2: 00           NOP
b6f3: 00           NOP
b6f4: 00           NOP
b6f5: 00           NOP
b6f6: 00           NOP
b6f7: 00           NOP
b6f8: 00           NOP
b6f9: 00           NOP
b6fa: 00           NOP
b6fb: 00           NOP
b6fc: 00           NOP
b6fd: 00           NOP
b6fe: 00           NOP
b6ff: 00           NOP
b700: 00           NOP
b701: 00           NOP
b702: 00           NOP
b703: 00           NOP
b704: 00           NOP
b705: 00           NOP
b706: 00           NOP
b707: 00           NOP
b708: 00           NOP
b709: 00           NOP
b70a: 00           NOP
b70b: 00           NOP
b70c: 00           NOP
b70d: 00           NOP
b70e: 00           NOP
b70f: 00           NOP
b710: 00           NOP
b711: 00           NOP
b712: 00           NOP
b713: 00           NOP
b714: 00           NOP
b715: 00           NOP
b716: 00           NOP
b717: 00           NOP
b718: 00           NOP
b719: 00           NOP
b71a: 00           NOP
b71b: 00           NOP
b71c: 00           NOP
b71d: 00           NOP
b71e: 00           NOP
b71f: 00           NOP
b720: 00           NOP
b721: 00           NOP
b722: 00           NOP
b723: 00           NOP
b724: 00           NOP
b725: 00           NOP
b726: 00           NOP
b727: 00           NOP
b728: 00           NOP
b729: 00           NOP
b72a: 00           NOP
b72b: 00           NOP
b72c: 00           NOP
b72d: 00           NOP
b72e: 00           NOP
b72f: 00           NOP
b730: 00           NOP
b731: 00           NOP
b732: 00           NOP
b733: 00           NOP
b734: 00           NOP
b735: 00           NOP
b736: 00           NOP
b737: 00           NOP
b738: 00           NOP
b739: 00           NOP
b73a: 00           NOP
b73b: 00           NOP
b73c: 00           NOP
b73d: 00           NOP
b73e: 00           NOP
b73f: 00           NOP
b740: 00           NOP
b741: 00           NOP
b742: 00           NOP
b743: 00           NOP
b744: 00           NOP
b745: 00           NOP
b746: 00           NOP
b747: 00           NOP
b748: 00           NOP
b749: 00           NOP
b74a: 00           NOP
b74b: 00           NOP
b74c: 00           NOP
b74d: 00           NOP
b74e: 00           NOP
b74f: 00           NOP
b750: 00           NOP
b751: 00           NOP
b752: 00           NOP
b753: 00           NOP
b754: 00           NOP
b755: 00           NOP
b756: 00           NOP
b757: 00           NOP
b758: 00           NOP
b759: 00           NOP
b75a: 00           NOP
b75b: 00           NOP
b75c: 00           NOP
b75d: 00           NOP
b75e: 00           NOP
b75f: 00           NOP
b760: 00           NOP
b761: 00           NOP
b762: 00           NOP
b763: 00           NOP
b764: 00           NOP
b765: 00           NOP
b766: 00           NOP
b767: 00           NOP
b768: 00           NOP
b769: 00           NOP
b76a: 00           NOP
b76b: 00           NOP
b76c: 00           NOP
b76d: 00           NOP
b76e: 00           NOP
b76f: 00           NOP
b770: 00           NOP
b771: 00           NOP
b772: 00           NOP
b773: 00           NOP
b774: 00           NOP
b775: 00           NOP
b776: 00           NOP
b777: 00           NOP
b778: 00           NOP
b779: 00           NOP
b77a: 00           NOP
b77b: 00           NOP
b77c: 00           NOP
b77d: 00           NOP
b77e: 00           NOP
b77f: 00           NOP
b780: 00           NOP
b781: 00           NOP
b782: 00           NOP
b783: 00           NOP
b784: 00           NOP
b785: 00           NOP
b786: 00           NOP
b787: 00           NOP
b788: 00           NOP
b789: 00           NOP
b78a: 00           NOP
b78b: 00           NOP
b78c: 00           NOP
b78d: 00           NOP
b78e: 00           NOP
b78f: 00           NOP
b790: 00           NOP
b791: 00           NOP
b792: 00           NOP
b793: 00           NOP
b794: 00           NOP
b795: 00           NOP
b796: 00           NOP
b797: 00           NOP
b798: 00           NOP
b799: 00           NOP
b79a: 00           NOP
b79b: 00           NOP
b79c: 00           NOP
b79d: 00           NOP
b79e: 00           NOP
b79f: 00           NOP
b7a0: 00           NOP
b7a1: 00           NOP
b7a2: 00           NOP
b7a3: 00           NOP
b7a4: 00           NOP
b7a5: 00           NOP
b7a6: 00           NOP
b7a7: 00           NOP
b7a8: 00           NOP
b7a9: 00           NOP
b7aa: 00           NOP
b7ab: 00           NOP
b7ac: 00           NOP
b7ad: 00           NOP
b7ae: 00           NOP
b7af: 00           NOP
b7b0: 00           NOP
b7b1: 00           NOP
b7b2: 00           NOP
b7b3: 00           NOP
b7b4: 00           NOP
b7b5: 00           NOP
b7b6: 00           NOP
b7b7: 00           NOP
b7b8: 00           NOP
b7b9: 00           NOP
b7ba: 00           NOP
b7bb: 00           NOP
b7bc: 00           NOP
b7bd: 00           NOP
b7be: 00           NOP
b7bf: 00           NOP
b7c0: 00           NOP
b7c1: 00           NOP
b7c2: 00           NOP
b7c3: 00           NOP
b7c4: 00           NOP
b7c5: 00           NOP
b7c6: 00           NOP
b7c7: 00           NOP
b7c8: 00           NOP
b7c9: 00           NOP
b7ca: 00           NOP
b7cb: 00           NOP
b7cc: 00           NOP
b7cd: 00           NOP
b7ce: 00           NOP
b7cf: 00           NOP
b7d0: 00           NOP
b7d1: 00           NOP
b7d2: 00           NOP
b7d3: 00           NOP
b7d4: 00           NOP
b7d5: 00           NOP
b7d6: 00           NOP
b7d7: 00           NOP
b7d8: 00           NOP
b7d9: 00           NOP
b7da: 00           NOP
b7db: 00           NOP
b7dc: 00           NOP
b7dd: 00           NOP
b7de: 00           NOP
b7df: 00           NOP
b7e0: 00           NOP
b7e1: 00           NOP
b7e2: 00           NOP
b7e3: 00           NOP
b7e4: 00           NOP
b7e5: 00           NOP
b7e6: 00           NOP
b7e7: 00           NOP
b7e8: 00           NOP
b7e9: 00           NOP
b7ea: 00           NOP
b7eb: 00           NOP
b7ec: 00           NOP
b7ed: 00           NOP
b7ee: 00           NOP
b7ef: 00           NOP
b7f0: 00           NOP
b7f1: 00           NOP
b7f2: 00           NOP
b7f3: 00           NOP
b7f4: 00           NOP
b7f5: 00           NOP
b7f6: 00           NOP
b7f7: 00           NOP
b7f8: 00           NOP
b7f9: 00           NOP
b7fa: 00           NOP
b7fb: 00           NOP
b7fc: 00           NOP
b7fd: 00           NOP
b7fe: 00           NOP
b7ff: 00           NOP
b800: 00           NOP
b801: 00           NOP
b802: 00           NOP
b803: 00           NOP
b804: 00           NOP
b805: 00           NOP
b806: 00           NOP
b807: 00           NOP
b808: 00           NOP
b809: 00           NOP
b80a: 00           NOP
b80b: 00           NOP
b80c: 00           NOP
b80d: 00           NOP
b80e: 00           NOP
b80f: 00           NOP
b810: 00           NOP
b811: 00           NOP
b812: 00           NOP
b813: 00           NOP
b814: 00           NOP
b815: 00           NOP
b816: 00           NOP
b817: 00           NOP
b818: 00           NOP
b819: 00           NOP
b81a: 00           NOP
b81b: 00           NOP
b81c: 00           NOP
b81d: 00           NOP
b81e: 00           NOP
b81f: 00           NOP
b820: 00           NOP
b821: 00           NOP
b822: 00           NOP
b823: 00           NOP
b824: 00           NOP
b825: 00           NOP
b826: 00           NOP
b827: 00           NOP
b828: 00           NOP
b829: 00           NOP
b82a: 00           NOP
b82b: 00           NOP
b82c: 00           NOP
b82d: 00           NOP
b82e: 00           NOP
b82f: 00           NOP
b830: 00           NOP
b831: 00           NOP
b832: 00           NOP
b833: 00           NOP
b834: 00           NOP
b835: 00           NOP
b836: 00           NOP
b837: 00           NOP
b838: 00           NOP
b839: 00           NOP
b83a: 00           NOP
b83b: 00           NOP
b83c: 00           NOP
b83d: 00           NOP
b83e: 00           NOP
b83f: 00           NOP
b840: 00           NOP
b841: 00           NOP
b842: 00           NOP
b843: 00           NOP
b844: 00           NOP
b845: 00           NOP
b846: 00           NOP
b847: 00           NOP
b848: 00           NOP
b849: 00           NOP
b84a: 00           NOP
b84b: 00           NOP
b84c: 00           NOP
b84d: 00           NOP
b84e: 00           NOP
b84f: 00           NOP
b850: 00           NOP
b851: 00           NOP
b852: 00           NOP
b853: 00           NOP
b854: 00           NOP
b855: 00           NOP
b856: 00           NOP
b857: 00           NOP
b858: 00           NOP
b859: 00           NOP
b85a: 00           NOP
b85b: 00           NOP
b85c: 00           NOP
b85d: 00           NOP
b85e: 00           NOP
b85f: 00           NOP
b860: 00           NOP
b861: 00           NOP
b862: 00           NOP
b863: 00           NOP
b864: 00           NOP
b865: 00           NOP
b866: 00           NOP
b867: 00           NOP
b868: 00           NOP
b869: 00           NOP
b86a: 00           NOP
b86b: 00           NOP
b86c: 00           NOP
b86d: 00           NOP
b86e: 00           NOP
b86f: 00           NOP
b870: 00           NOP
b871: 00           NOP
b872: 00           NOP
b873: 00           NOP
b874: 00           NOP
b875: 00           NOP
b876: 00           NOP
b877: 00           NOP
b878: 00           NOP
b879: 00           NOP
b87a: 00           NOP
b87b: 00           NOP
b87c: 00           NOP
b87d: 00           NOP
b87e: 00           NOP
b87f: 00           NOP
b880: 00           NOP
b881: 00           NOP
b882: 00           NOP
b883: 00           NOP
b884: 00           NOP
b885: 00           NOP
b886: 00           NOP
b887: 00           NOP
b888: 00           NOP
b889: 00           NOP
b88a: 00           NOP
b88b: 00           NOP
b88c: 00           NOP
b88d: 00           NOP
b88e: 00           NOP
b88f: 00           NOP
b890: 00           NOP
b891: 00           NOP
b892: 00           NOP
b893: 00           NOP
b894: 00           NOP
b895: 00           NOP
b896: 00           NOP
b897: 00           NOP
b898: 00           NOP
b899: 00           NOP
b89a: 00           NOP
b89b: 00           NOP
b89c: 00           NOP
b89d: 00           NOP
b89e: 00           NOP
b89f: 00           NOP
b8a0: 00           NOP
b8a1: 00           NOP
b8a2: 00           NOP
b8a3: 00           NOP
b8a4: 00           NOP
b8a5: 00           NOP
b8a6: 00           NOP
b8a7: 00           NOP
b8a8: 00           NOP
b8a9: 00           NOP
b8aa: 00           NOP
b8ab: 00           NOP
b8ac: 00           NOP
b8ad: 00           NOP
b8ae: 00           NOP
b8af: 00           NOP
b8b0: 00           NOP
b8b1: 00           NOP
b8b2: 00           NOP
b8b3: 00           NOP
b8b4: 00           NOP
b8b5: 00           NOP
b8b6: 00           NOP
b8b7: 00           NOP
b8b8: 00           NOP
b8b9: 00           NOP
b8ba: 00           NOP
b8bb: 00           NOP
b8bc: 00           NOP
b8bd: 00           NOP
b8be: 00           NOP
b8bf: 00           NOP
b8c0: 00           NOP
b8c1: 00           NOP
b8c2: 00           NOP
b8c3: 00           NOP
b8c4: 00           NOP
b8c5: 00           NOP
b8c6: 00           NOP
b8c7: 00           NOP
b8c8: 00           NOP
b8c9: 00           NOP
b8ca: 00           NOP
b8cb: 00           NOP
b8cc: 00           NOP
b8cd: 00           NOP
b8ce: 00           NOP
b8cf: 00           NOP
b8d0: 00           NOP
b8d1: 00           NOP
b8d2: 00           NOP
b8d3: 00           NOP
b8d4: 00           NOP
b8d5: 00           NOP
b8d6: 00           NOP
b8d7: 00           NOP
b8d8: 00           NOP
b8d9: 00           NOP
b8da: 00           NOP
b8db: 00           NOP
b8dc: 00           NOP
b8dd: 00           NOP
b8de: 00           NOP
b8df: 00           NOP
b8e0: 00           NOP
b8e1: 00           NOP
b8e2: 00           NOP
b8e3: 00           NOP
b8e4: 00           NOP
b8e5: 00           NOP
b8e6: 00           NOP
b8e7: 00           NOP
b8e8: 00           NOP
b8e9: 00           NOP
b8ea: 00           NOP
b8eb: 00           NOP
b8ec: 00           NOP
b8ed: 00           NOP
b8ee: 00           NOP
b8ef: 00           NOP
b8f0: 00           NOP
b8f1: 00           NOP
b8f2: 00           NOP
b8f3: 00           NOP
b8f4: 00           NOP
b8f5: 00           NOP
b8f6: 00           NOP
b8f7: 00           NOP
b8f8: 00           NOP
b8f9: 00           NOP
b8fa: 00           NOP
b8fb: 00           NOP
b8fc: 00           NOP
b8fd: 00           NOP
b8fe: 00           NOP
b8ff: 00           NOP
b900: 00           NOP
b901: 00           NOP
b902: 00           NOP
b903: 00           NOP
b904: 00           NOP
b905: 00           NOP
b906: 00           NOP
b907: 00           NOP
b908: 00           NOP
b909: 00           NOP
b90a: 00           NOP
b90b: 00           NOP
b90c: 00           NOP
b90d: 00           NOP
b90e: 00           NOP
b90f: 00           NOP
b910: 00           NOP
b911: 00           NOP
b912: 00           NOP
b913: 00           NOP
b914: 00           NOP
b915: 00           NOP
b916: 00           NOP
b917: 00           NOP
b918: 00           NOP
b919: 00           NOP
b91a: 00           NOP
b91b: 00           NOP
b91c: 00           NOP
b91d: 00           NOP
b91e: 00           NOP
b91f: 00           NOP
b920: 00           NOP
b921: 00           NOP
b922: 00           NOP
b923: 00           NOP
b924: 00           NOP
b925: 00           NOP
b926: 00           NOP
b927: 00           NOP
b928: 00           NOP
b929: 00           NOP
b92a: 00           NOP
b92b: 00           NOP
b92c: 00           NOP
b92d: 00           NOP
b92e: 00           NOP
b92f: 00           NOP
b930: 00           NOP
b931: 00           NOP
b932: 00           NOP
b933: 00           NOP
b934: 00           NOP
b935: 00           NOP
b936: 00           NOP
b937: 00           NOP
b938: 00           NOP
b939: 00           NOP
b93a: 00           NOP
b93b: 00           NOP
b93c: 00           NOP
b93d: 00           NOP
b93e: 00           NOP
b93f: 00           NOP
b940: 00           NOP
b941: 00           NOP
b942: 00           NOP
b943: 00           NOP
b944: 00           NOP
b945: 00           NOP
b946: 00           NOP
b947: 00           NOP
b948: 00           NOP
b949: 00           NOP
b94a: 00           NOP
b94b: 00           NOP
b94c: 00           NOP
b94d: 00           NOP
b94e: 00           NOP
b94f: 00           NOP
b950: 00           NOP
b951: 00           NOP
b952: 00           NOP
b953: 00           NOP
b954: 00           NOP
b955: 00           NOP
b956: 00           NOP
b957: 00           NOP
b958: 00           NOP
b959: 00           NOP
b95a: 00           NOP
b95b: 00           NOP
b95c: 00           NOP
b95d: 00           NOP
b95e: 00           NOP
b95f: 00           NOP
b960: 00           NOP
b961: 00           NOP
b962: 00           NOP
b963: 00           NOP
b964: 00           NOP
b965: 00           NOP
b966: 00           NOP
b967: 00           NOP
b968: 00           NOP
b969: 00           NOP
b96a: 00           NOP
b96b: 00           NOP
b96c: 00           NOP
b96d: 00           NOP
b96e: 00           NOP
b96f: 00           NOP
b970: 00           NOP
b971: 00           NOP
b972: 00           NOP
b973: 00           NOP
b974: 00           NOP
b975: 00           NOP
b976: 00           NOP
b977: 00           NOP
b978: 00           NOP
b979: 00           NOP
b97a: 00           NOP
b97b: 00           NOP
b97c: 00           NOP
b97d: 00           NOP
b97e: 00           NOP
b97f: 00           NOP
b980: 00           NOP
b981: 00           NOP
b982: 00           NOP
b983: 00           NOP
b984: 00           NOP
b985: 00           NOP
b986: 00           NOP
b987: 00           NOP
b988: 00           NOP
b989: 00           NOP
b98a: 00           NOP
b98b: 00           NOP
b98c: 00           NOP
b98d: 00           NOP
b98e: 00           NOP
b98f: 00           NOP
b990: 00           NOP
b991: 00           NOP
b992: 00           NOP
b993: 00           NOP
b994: 00           NOP
b995: 00           NOP
b996: 00           NOP
b997: 00           NOP
b998: 00           NOP
b999: 00           NOP
b99a: 00           NOP
b99b: 00           NOP
b99c: 00           NOP
b99d: 00           NOP
b99e: 00           NOP
b99f: 00           NOP
b9a0: 00           NOP
b9a1: 00           NOP
b9a2: 00           NOP
b9a3: 00           NOP
b9a4: 00           NOP
b9a5: 00           NOP
b9a6: 00           NOP
b9a7: 00           NOP
b9a8: 00           NOP
b9a9: 00           NOP
b9aa: 00           NOP
b9ab: 00           NOP
b9ac: 00           NOP
b9ad: 00           NOP
b9ae: 00           NOP
b9af: 00           NOP
b9b0: 00           NOP
b9b1: 00           NOP
b9b2: 00           NOP
b9b3: 00           NOP
b9b4: 00           NOP
b9b5: 00           NOP
b9b6: 00           NOP
b9b7: 00           NOP
b9b8: 00           NOP
b9b9: 00           NOP
b9ba: 00           NOP
b9bb: 00           NOP
b9bc: 00           NOP
b9bd: 00           NOP
b9be: 00           NOP
b9bf: 00           NOP
b9c0: 00           NOP
b9c1: 00           NOP
b9c2: 00           NOP
b9c3: 00           NOP
b9c4: 00           NOP
b9c5: 00           NOP
b9c6: 00           NOP
b9c7: 00           NOP
b9c8: 00           NOP
b9c9: 00           NOP
b9ca: 00           NOP
b9cb: 00           NOP
b9cc: 00           NOP
b9cd: 00           NOP
b9ce: 00           NOP
b9cf: 00           NOP
b9d0: 00           NOP
b9d1: 00           NOP
b9d2: 00           NOP
b9d3: 00           NOP
b9d4: 00           NOP
b9d5: 00           NOP
b9d6: 00           NOP
b9d7: 00           NOP
b9d8: 00           NOP
b9d9: 00           NOP
b9da: 00           NOP
b9db: 00           NOP
b9dc: 00           NOP
b9dd: 00           NOP
b9de: 00           NOP
b9df: 00           NOP
b9e0: 00           NOP
b9e1: 00           NOP
b9e2: 00           NOP
b9e3: 00           NOP
b9e4: 00           NOP
b9e5: 00           NOP
b9e6: 00           NOP
b9e7: 00           NOP
b9e8: 00           NOP
b9e9: 00           NOP
b9ea: 00           NOP
b9eb: 00           NOP
b9ec: 00           NOP
b9ed: 00           NOP
b9ee: 00           NOP
b9ef: 00           NOP
b9f0: 00           NOP
b9f1: 00           NOP
b9f2: 00           NOP
b9f3: 00           NOP
b9f4: 00           NOP
b9f5: 00           NOP
b9f6: 00           NOP
b9f7: 00           NOP
b9f8: 00           NOP
b9f9: 00           NOP
b9fa: 00           NOP
b9fb: 00           NOP
b9fc: 00           NOP
b9fd: 00           NOP
b9fe: 00           NOP
b9ff: 00           NOP
ba00: 00           NOP
ba01: 00           NOP
ba02: 00           NOP
ba03: 00           NOP
ba04: 00           NOP
ba05: 00           NOP
ba06: 00           NOP
ba07: 00           NOP
ba08: 00           NOP
ba09: 00           NOP
ba0a: 00           NOP
ba0b: 00           NOP
ba0c: 00           NOP
ba0d: 00           NOP
ba0e: 00           NOP
ba0f: 00           NOP
ba10: 00           NOP
ba11: 00           NOP
ba12: 00           NOP
ba13: 00           NOP
ba14: 00           NOP
ba15: 00           NOP
ba16: 00           NOP
ba17: 00           NOP
ba18: 00           NOP
ba19: 00           NOP
ba1a: 00           NOP
ba1b: 00           NOP
ba1c: 00           NOP
ba1d: 00           NOP
ba1e: 00           NOP
ba1f: 00           NOP
ba20: 00           NOP
ba21: 00           NOP
ba22: 00           NOP
ba23: 00           NOP
ba24: 00           NOP
ba25: 00           NOP
ba26: 00           NOP
ba27: 00           NOP
ba28: 00           NOP
ba29: 00           NOP
ba2a: 00           NOP
ba2b: 00           NOP
ba2c: 00           NOP
ba2d: 00           NOP
ba2e: 00           NOP
ba2f: 00           NOP
ba30: 00           NOP
ba31: 00           NOP
ba32: 00           NOP
ba33: 00           NOP
ba34: 00           NOP
ba35: 00           NOP
ba36: 00           NOP
ba37: 00           NOP
ba38: 00           NOP
ba39: 00           NOP
ba3a: 00           NOP
ba3b: 00           NOP
ba3c: 00           NOP
ba3d: 00           NOP
ba3e: 00           NOP
ba3f: 00           NOP
ba40: 00           NOP
ba41: 00           NOP
ba42: 00           NOP
ba43: 00           NOP
ba44: 00           NOP
ba45: 00           NOP
ba46: 00           NOP
ba47: 00           NOP
ba48: 00           NOP
ba49: 00           NOP
ba4a: 00           NOP
ba4b: 00           NOP
ba4c: 00           NOP
ba4d: 00           NOP
ba4e: 00           NOP
ba4f: 00           NOP
ba50: 00           NOP
ba51: 00           NOP
ba52: 00           NOP
ba53: 00           NOP
ba54: 00           NOP
ba55: 00           NOP
ba56: 00           NOP
ba57: 00           NOP
ba58: 00           NOP
ba59: 00           NOP
ba5a: 00           NOP
ba5b: 00           NOP
ba5c: 00           NOP
ba5d: 00           NOP
ba5e: 00           NOP
ba5f: 00           NOP
ba60: 00           NOP
ba61: 00           NOP
ba62: 00           NOP
ba63: 00           NOP
ba64: 00           NOP
ba65: 00           NOP
ba66: 00           NOP
ba67: 00           NOP
ba68: 00           NOP
ba69: 00           NOP
ba6a: 00           NOP
ba6b: 00           NOP
ba6c: 00           NOP
ba6d: 00           NOP
ba6e: 00           NOP
ba6f: 00           NOP
ba70: 00           NOP
ba71: 00           NOP
ba72: 00           NOP
ba73: 00           NOP
ba74: 00           NOP
ba75: 00           NOP
ba76: 00           NOP
ba77: 00           NOP
ba78: 00           NOP
ba79: 00           NOP
ba7a: 00           NOP
ba7b: 00           NOP
ba7c: 00           NOP
ba7d: 00           NOP
ba7e: 00           NOP
ba7f: 00           NOP
ba80: 00           NOP
ba81: 00           NOP
ba82: 00           NOP
ba83: 00           NOP
ba84: 00           NOP
ba85: 00           NOP
ba86: 00           NOP
ba87: 00           NOP
ba88: 00           NOP
ba89: 00           NOP
ba8a: 00           NOP
ba8b: 00           NOP
ba8c: 00           NOP
ba8d: 00           NOP
ba8e: 00           NOP
ba8f: 00           NOP
ba90: 00           NOP
ba91: 00           NOP
ba92: 00           NOP
ba93: 00           NOP
ba94: 00           NOP
ba95: 00           NOP
ba96: 00           NOP
ba97: 00           NOP
ba98: 00           NOP
ba99: 00           NOP
ba9a: 00           NOP
ba9b: 00           NOP
ba9c: 00           NOP
ba9d: 00           NOP
ba9e: 00           NOP
ba9f: 00           NOP
baa0: 00           NOP
baa1: 00           NOP
baa2: 00           NOP
baa3: 00           NOP
baa4: 00           NOP
baa5: 00           NOP
baa6: 00           NOP
baa7: 00           NOP
baa8: 00           NOP
baa9: 00           NOP
baaa: 00           NOP
baab: 00           NOP
baac: 00           NOP
baad: 00           NOP
baae: 00           NOP
baaf: 00           NOP
bab0: 00           NOP
bab1: 00           NOP
bab2: 00           NOP
bab3: 00           NOP
bab4: 00           NOP
bab5: 00           NOP
bab6: 00           NOP
bab7: 00           NOP
bab8: 00           NOP
bab9: 00           NOP
baba: 00           NOP
babb: 00           NOP
babc: 00           NOP
babd: 00           NOP
babe: 00           NOP
babf: 00           NOP
bac0: 00           NOP
bac1: 00           NOP
bac2: 00           NOP
bac3: 00           NOP
bac4: 00           NOP
bac5: 00           NOP
bac6: 00           NOP
bac7: 00           NOP
bac8: 00           NOP
bac9: 00           NOP
baca: 00           NOP
bacb: 00           NOP
bacc: 00           NOP
bacd: 00           NOP
bace: 00           NOP
bacf: 00           NOP
bad0: 00           NOP
bad1: 00           NOP
bad2: 00           NOP
bad3: 00           NOP
bad4: 00           NOP
bad5: 00           NOP
bad6: 00           NOP
bad7: 00           NOP
bad8: 00           NOP
bad9: 00           NOP
bada: 00           NOP
badb: 00           NOP
badc: 00           NOP
badd: 00           NOP
bade: 00           NOP
badf: 00           NOP
bae0: 00           NOP
bae1: 00           NOP
bae2: 00           NOP
bae3: 00           NOP
bae4: 00           NOP
bae5: 00           NOP
bae6: 00           NOP
bae7: 00           NOP
bae8: 00           NOP
bae9: 00           NOP
baea: 00           NOP
baeb: 00           NOP
baec: 00           NOP
baed: 00           NOP
baee: 00           NOP
baef: 00           NOP
baf0: 00           NOP
baf1: 00           NOP
baf2: 00           NOP
baf3: 00           NOP
baf4: 00           NOP
baf5: 00           NOP
baf6: 00           NOP
baf7: 00           NOP
baf8: 00           NOP
baf9: 00           NOP
bafa: 00           NOP
bafb: 00           NOP
bafc: 00           NOP
bafd: 00           NOP
bafe: 00           NOP
baff: 00           NOP
bb00: 00           NOP
bb01: 00           NOP
bb02: 00           NOP
bb03: 00           NOP
bb04: 00           NOP
bb05: 00           NOP
bb06: 00           NOP
bb07: 00           NOP
bb08: 00           NOP
bb09: 00           NOP
bb0a: 00           NOP
bb0b: 00           NOP
bb0c: 00           NOP
bb0d: 00           NOP
bb0e: 00           NOP
bb0f: 00           NOP
bb10: 00           NOP
bb11: 00           NOP
bb12: 00           NOP
bb13: 00           NOP
bb14: 00           NOP
bb15: 00           NOP
bb16: 00           NOP
bb17: 00           NOP
bb18: 00           NOP
bb19: 00           NOP
bb1a: 00           NOP
bb1b: 00           NOP
bb1c: 00           NOP
bb1d: 00           NOP
bb1e: 00           NOP
bb1f: 00           NOP
bb20: 00           NOP
bb21: 00           NOP
bb22: 00           NOP
bb23: 00           NOP
bb24: 00           NOP
bb25: 00           NOP
bb26: 00           NOP
bb27: 00           NOP
bb28: 00           NOP
bb29: 00           NOP
bb2a: 00           NOP
bb2b: 00           NOP
bb2c: 00           NOP
bb2d: 00           NOP
bb2e: 00           NOP
bb2f: 00           NOP
bb30: 00           NOP
bb31: 00           NOP
bb32: 00           NOP
bb33: 00           NOP
bb34: 00           NOP
bb35: 00           NOP
bb36: 00           NOP
bb37: 00           NOP
bb38: 00           NOP
bb39: 00           NOP
bb3a: 00           NOP
bb3b: 00           NOP
bb3c: 00           NOP
bb3d: 00           NOP
bb3e: 00           NOP
bb3f: 00           NOP
bb40: 00           NOP
bb41: 00           NOP
bb42: 00           NOP
bb43: 00           NOP
bb44: 00           NOP
bb45: 00           NOP
bb46: 00           NOP
bb47: 00           NOP
bb48: 00           NOP
bb49: 00           NOP
bb4a: 00           NOP
bb4b: 00           NOP
bb4c: 00           NOP
bb4d: 00           NOP
bb4e: 00           NOP
bb4f: 00           NOP
bb50: 00           NOP
bb51: 00           NOP
bb52: 00           NOP
bb53: 00           NOP
bb54: 00           NOP
bb55: 00           NOP
bb56: 00           NOP
bb57: 00           NOP
bb58: 00           NOP
bb59: 00           NOP
bb5a: 00           NOP
bb5b: 00           NOP
bb5c: 00           NOP
bb5d: 00           NOP
bb5e: 00           NOP
bb5f: 00           NOP
bb60: 00           NOP
bb61: 00           NOP
bb62: 00           NOP
bb63: 00           NOP
bb64: 00           NOP
bb65: 00           NOP
bb66: 00           NOP
bb67: 00           NOP
bb68: 00           NOP
bb69: 00           NOP
bb6a: 00           NOP
bb6b: 00           NOP
bb6c: 00           NOP
bb6d: 00           NOP
bb6e: 00           NOP
bb6f: 00           NOP
bb70: 00           NOP
bb71: 00           NOP
bb72: 00           NOP
bb73: 00           NOP
bb74: 00           NOP
bb75: 00           NOP
bb76: 00           NOP
bb77: 00           NOP
bb78: 00           NOP
bb79: 00           NOP
bb7a: 00           NOP
bb7b: 00           NOP
bb7c: 00           NOP
bb7d: 00           NOP
bb7e: 00           NOP
bb7f: 00           NOP
bb80: 00           NOP
bb81: 00           NOP
bb82: 00           NOP
bb83: 00           NOP
bb84: 00           NOP
bb85: 00           NOP
bb86: 00           NOP
bb87: 00           NOP
bb88: 00           NOP
bb89: 00           NOP
bb8a: 00           NOP
bb8b: 00           NOP
bb8c: 00           NOP
bb8d: 00           NOP
bb8e: 00           NOP
bb8f: 00           NOP
bb90: 00           NOP
bb91: 00           NOP
bb92: 00           NOP
bb93: 00           NOP
bb94: 00           NOP
bb95: 00           NOP
bb96: 00           NOP
bb97: 00           NOP
bb98: 00           NOP
bb99: 00           NOP
bb9a: 00           NOP
bb9b: 00           NOP
bb9c: 00           NOP
bb9d: 00           NOP
bb9e: 00           NOP
bb9f: 00           NOP
bba0: 00           NOP
bba1: 00           NOP
bba2: 00           NOP
bba3: 00           NOP
bba4: 00           NOP
bba5: 00           NOP
bba6: 00           NOP
bba7: 00           NOP
bba8: 00           NOP
bba9: 00           NOP
bbaa: 00           NOP
bbab: 00           NOP
bbac: 00           NOP
bbad: 00           NOP
bbae: 00           NOP
bbaf: 00           NOP
bbb0: 00           NOP
bbb1: 00           NOP
bbb2: 00           NOP
bbb3: 00           NOP
bbb4: 00           NOP
bbb5: 00           NOP
bbb6: 00           NOP
bbb7: 00           NOP
bbb8: 00           NOP
bbb9: 00           NOP
bbba: 00           NOP
bbbb: 00           NOP
bbbc: 00           NOP
bbbd: 00           NOP
bbbe: 00           NOP
bbbf: 00           NOP
bbc0: 00           NOP
bbc1: 00           NOP
bbc2: 00           NOP
bbc3: 00           NOP
bbc4: 00           NOP
bbc5: 00           NOP
bbc6: 00           NOP
bbc7: 00           NOP
bbc8: 00           NOP
bbc9: 00           NOP
bbca: 00           NOP
bbcb: 00           NOP
bbcc: 00           NOP
bbcd: 00           NOP
bbce: 00           NOP
bbcf: 00           NOP
bbd0: 00           NOP
bbd1: 00           NOP
bbd2: 00           NOP
bbd3: 00           NOP
bbd4: 00           NOP
bbd5: 00           NOP
bbd6: 00           NOP
bbd7: 00           NOP
bbd8: 00           NOP
bbd9: 00           NOP
bbda: 00           NOP
bbdb: 00           NOP
bbdc: 00           NOP
bbdd: 00           NOP
bbde: 00           NOP
bbdf: 00           NOP
bbe0: 00           NOP
bbe1: 00           NOP
bbe2: 00           NOP
bbe3: 00           NOP
bbe4: 00           NOP
bbe5: 00           NOP
bbe6: 00           NOP
bbe7: 00           NOP
bbe8: 00           NOP
bbe9: 00           NOP
bbea: 00           NOP
bbeb: 00           NOP
bbec: 00           NOP
bbed: 00           NOP
bbee: 00           NOP
bbef: 00           NOP
bbf0: 00           NOP
bbf1: 00           NOP
bbf2: 00           NOP
bbf3: 00           NOP
bbf4: 00           NOP
bbf5: 00           NOP
bbf6: 00           NOP
bbf7: 00           NOP
bbf8: 00           NOP
bbf9: 00           NOP
bbfa: 00           NOP
bbfb: 00           NOP
bbfc: 00           NOP
bbfd: 00           NOP
bbfe: 00           NOP
bbff: 00           NOP
bc00: 00           NOP
bc01: 00           NOP
bc02: 00           NOP
bc03: 00           NOP
bc04: 00           NOP
bc05: 00           NOP
bc06: 00           NOP
bc07: 00           NOP
bc08: 00           NOP
bc09: 00           NOP
bc0a: 00           NOP
bc0b: 00           NOP
bc0c: 00           NOP
bc0d: 00           NOP
bc0e: 00           NOP
bc0f: 00           NOP
bc10: 00           NOP
bc11: 00           NOP
bc12: 00           NOP
bc13: 00           NOP
bc14: 00           NOP
bc15: 00           NOP
bc16: 00           NOP
bc17: 00           NOP
bc18: 00           NOP
bc19: 00           NOP
bc1a: 00           NOP
bc1b: 00           NOP
bc1c: 00           NOP
bc1d: 00           NOP
bc1e: 00           NOP
bc1f: 00           NOP
bc20: 00           NOP
bc21: 00           NOP
bc22: 00           NOP
bc23: 00           NOP
bc24: 00           NOP
bc25: 00           NOP
bc26: 00           NOP
bc27: 00           NOP
bc28: 00           NOP
bc29: 00           NOP
bc2a: 00           NOP
bc2b: 00           NOP
bc2c: 00           NOP
bc2d: 00           NOP
bc2e: 00           NOP
bc2f: 00           NOP
bc30: 00           NOP
bc31: 00           NOP
bc32: 00           NOP
bc33: 00           NOP
bc34: 00           NOP
bc35: 00           NOP
bc36: 00           NOP
bc37: 00           NOP
bc38: 00           NOP
bc39: 00           NOP
bc3a: 00           NOP
bc3b: 00           NOP
bc3c: 00           NOP
bc3d: 00           NOP
bc3e: 00           NOP
bc3f: 00           NOP
bc40: 00           NOP
bc41: 00           NOP
bc42: 00           NOP
bc43: 00           NOP
bc44: 00           NOP
bc45: 00           NOP
bc46: 00           NOP
bc47: 00           NOP
bc48: 00           NOP
bc49: 00           NOP
bc4a: 00           NOP
bc4b: 00           NOP
bc4c: 00           NOP
bc4d: 00           NOP
bc4e: 00           NOP
bc4f: 00           NOP
bc50: 00           NOP
bc51: 00           NOP
bc52: 00           NOP
bc53: 00           NOP
bc54: 00           NOP
bc55: 00           NOP
bc56: 00           NOP
bc57: 00           NOP
bc58: 00           NOP
bc59: 00           NOP
bc5a: 00           NOP
bc5b: 00           NOP
bc5c: 00           NOP
bc5d: 00           NOP
bc5e: 00           NOP
bc5f: 00           NOP
bc60: 00           NOP
bc61: 00           NOP
bc62: 00           NOP
bc63: 00           NOP
bc64: 00           NOP
bc65: 00           NOP
bc66: 00           NOP
bc67: 00           NOP
bc68: 00           NOP
bc69: 00           NOP
bc6a: 00           NOP
bc6b: 00           NOP
bc6c: 00           NOP
bc6d: 00           NOP
bc6e: 00           NOP
bc6f: 00           NOP
bc70: 00           NOP
bc71: 00           NOP
bc72: 00           NOP
bc73: 00           NOP
bc74: 00           NOP
bc75: 00           NOP
bc76: 00           NOP
bc77: 00           NOP
bc78: 00           NOP
bc79: 00           NOP
bc7a: 00           NOP
bc7b: 00           NOP
bc7c: 00           NOP
bc7d: 00           NOP
bc7e: 00           NOP
bc7f: 00           NOP
bc80: 00           NOP
bc81: 00           NOP
bc82: 00           NOP
bc83: 00           NOP
bc84: 00           NOP
bc85: 00           NOP
bc86: 00           NOP
bc87: 00           NOP
bc88: 00           NOP
bc89: 00           NOP
bc8a: 00           NOP
bc8b: 00           NOP
bc8c: 00           NOP
bc8d: 00           NOP
bc8e: 00           NOP
bc8f: 00           NOP
bc90: 00           NOP
bc91: 00           NOP
bc92: 00           NOP
bc93: 00           NOP
bc94: 00           NOP
bc95: 00           NOP
bc96: 00           NOP
bc97: 00           NOP
bc98: 00           NOP
bc99: 00           NOP
bc9a: 00           NOP
bc9b: 00           NOP
bc9c: 00           NOP
bc9d: 00           NOP
bc9e: 00           NOP
bc9f: 00           NOP
bca0: 00           NOP
bca1: 00           NOP
bca2: 00           NOP
bca3: 00           NOP
bca4: 00           NOP
bca5: 00           NOP
bca6: 00           NOP
bca7: 00           NOP
bca8: 00           NOP
bca9: 00           NOP
bcaa: 00           NOP
bcab: 00           NOP
bcac: 00           NOP
bcad: 00           NOP
bcae: 00           NOP
bcaf: 00           NOP
bcb0: 00           NOP
bcb1: 00           NOP
bcb2: 00           NOP
bcb3: 00           NOP
bcb4: 00           NOP
bcb5: 00           NOP
bcb6: 00           NOP
bcb7: 00           NOP
bcb8: 00           NOP
bcb9: 00           NOP
bcba: 00           NOP
bcbb: 00           NOP
bcbc: 00           NOP
bcbd: 00           NOP
bcbe: 00           NOP
bcbf: 00           NOP
bcc0: 00           NOP
bcc1: 00           NOP
bcc2: 00           NOP
bcc3: 00           NOP
bcc4: 00           NOP
bcc5: 00           NOP
bcc6: 00           NOP
bcc7: 00           NOP
bcc8: 00           NOP
bcc9: 00           NOP
bcca: 00           NOP
bccb: 00           NOP
bccc: 00           NOP
bccd: 00           NOP
bcce: 00           NOP
bccf: 00           NOP
bcd0: 00           NOP
bcd1: 00           NOP
bcd2: 00           NOP
bcd3: 00           NOP
bcd4: 00           NOP
bcd5: 00           NOP
bcd6: 00           NOP
bcd7: 00           NOP
bcd8: 00           NOP
bcd9: 00           NOP
bcda: 00           NOP
bcdb: 00           NOP
bcdc: 00           NOP
bcdd: 00           NOP
bcde: 00           NOP
bcdf: 00           NOP
bce0: 00           NOP
bce1: 00           NOP
bce2: 00           NOP
bce3: 00           NOP
bce4: 00           NOP
bce5: 00           NOP
bce6: 00           NOP
bce7: 00           NOP
bce8: 00           NOP
bce9: 00           NOP
bcea: 00           NOP
bceb: 00           NOP
bcec: 00           NOP
bced: 00           NOP
bcee: 00           NOP
bcef: 00           NOP
bcf0: 00           NOP
bcf1: 00           NOP
bcf2: 00           NOP
bcf3: 00           NOP
bcf4: 00           NOP
bcf5: 00           NOP
bcf6: 00           NOP
bcf7: 00           NOP
bcf8: 00           NOP
bcf9: 00           NOP
bcfa: 00           NOP
bcfb: 00           NOP
bcfc: 00           NOP
bcfd: 00           NOP
bcfe: 00           NOP
bcff: 00           NOP
bd00: 00           NOP
bd01: 00           NOP
bd02: 00           NOP
bd03: 00           NOP
bd04: 00           NOP
bd05: 00           NOP
bd06: 00           NOP
bd07: 00           NOP
bd08: 00           NOP
bd09: 00           NOP
bd0a: 00           NOP
bd0b: 00           NOP
bd0c: 00           NOP
bd0d: 00           NOP
bd0e: 00           NOP
bd0f: 00           NOP
bd10: 00           NOP
bd11: 00           NOP
bd12: 00           NOP
bd13: 00           NOP
bd14: 00           NOP
bd15: 00           NOP
bd16: 00           NOP
bd17: 00           NOP
bd18: 00           NOP
bd19: 00           NOP
bd1a: 00           NOP
bd1b: 00           NOP
bd1c: 00           NOP
bd1d: 00           NOP
bd1e: 00           NOP
bd1f: 00           NOP
bd20: 00           NOP
bd21: 00           NOP
bd22: 00           NOP
bd23: 00           NOP
bd24: 00           NOP
bd25: 00           NOP
bd26: 00           NOP
bd27: 00           NOP
bd28: 00           NOP
bd29: 00           NOP
bd2a: 00           NOP
bd2b: 00           NOP
bd2c: 00           NOP
bd2d: 00           NOP
bd2e: 00           NOP
bd2f: 00           NOP
bd30: 00           NOP
bd31: 00           NOP
bd32: 00           NOP
bd33: 00           NOP
bd34: 00           NOP
bd35: 00           NOP
bd36: 00           NOP
bd37: 00           NOP
bd38: 00           NOP
bd39: 00           NOP
bd3a: 00           NOP
bd3b: 00           NOP
bd3c: 00           NOP
bd3d: 00           NOP
bd3e: 00           NOP
bd3f: 00           NOP
bd40: 00           NOP
bd41: 00           NOP
bd42: 00           NOP
bd43: 00           NOP
bd44: 00           NOP
bd45: 00           NOP
bd46: 00           NOP
bd47: 00           NOP
bd48: 00           NOP
bd49: 00           NOP
bd4a: 00           NOP
bd4b: 00           NOP
bd4c: 00           NOP
bd4d: 00           NOP
bd4e: 00           NOP
bd4f: 00           NOP
bd50: 00           NOP
bd51: 00           NOP
bd52: 00           NOP
bd53: 00           NOP
bd54: 00           NOP
bd55: 00           NOP
bd56: 00           NOP
bd57: 00           NOP
bd58: 00           NOP
bd59: 00           NOP
bd5a: 00           NOP
bd5b: 00           NOP
bd5c: 00           NOP
bd5d: 00           NOP
bd5e: 00           NOP
bd5f: 00           NOP
bd60: 00           NOP
bd61: 00           NOP
bd62: 00           NOP
bd63: 00           NOP
bd64: 00           NOP
bd65: 00           NOP
bd66: 00           NOP
bd67: 00           NOP
bd68: 00           NOP
bd69: 00           NOP
bd6a: 00           NOP
bd6b: 00           NOP
bd6c: 00           NOP
bd6d: 00           NOP
bd6e: 00           NOP
bd6f: 00           NOP
bd70: 00           NOP
bd71: 00           NOP
bd72: 00           NOP
bd73: 00           NOP
bd74: 00           NOP
bd75: 00           NOP
bd76: 00           NOP
bd77: 00           NOP
bd78: 00           NOP
bd79: 00           NOP
bd7a: 00           NOP
bd7b: 00           NOP
bd7c: 00           NOP
bd7d: 00           NOP
bd7e: 00           NOP
bd7f: 00           NOP
bd80: 00           NOP
bd81: 00           NOP
bd82: 00           NOP
bd83: 00           NOP
bd84: 00           NOP
bd85: 00           NOP
bd86: 00           NOP
bd87: 00           NOP
bd88: 00           NOP
bd89: 00           NOP
bd8a: 00           NOP
bd8b: 00           NOP
bd8c: 00           NOP
bd8d: 00           NOP
bd8e: 00           NOP
bd8f: 00           NOP
bd90: 00           NOP
bd91: 00           NOP
bd92: 00           NOP
bd93: 00           NOP
bd94: 00           NOP
bd95: 00           NOP
bd96: 00           NOP
bd97: 00           NOP
bd98: 00           NOP
bd99: 00           NOP
bd9a: 00           NOP
bd9b: 00           NOP
bd9c: 00           NOP
bd9d: 00           NOP
bd9e: 00           NOP
bd9f: 00           NOP
bda0: 00           NOP
bda1: 00           NOP
bda2: 00           NOP
bda3: 00           NOP
bda4: 00           NOP
bda5: 00           NOP
bda6: 00           NOP
bda7: 00           NOP
bda8: 00           NOP
bda9: 00           NOP
bdaa: 00           NOP
bdab: 00           NOP
bdac: 00           NOP
bdad: 00           NOP
bdae: 00           NOP
bdaf: 00           NOP
bdb0: 00           NOP
bdb1: 00           NOP
bdb2: 00           NOP
bdb3: 00           NOP
bdb4: 00           NOP
bdb5: 00           NOP
bdb6: 00           NOP
bdb7: 00           NOP
bdb8: 00           NOP
bdb9: 00           NOP
bdba: 00           NOP
bdbb: 00           NOP
bdbc: 00           NOP
bdbd: 00           NOP
bdbe: 00           NOP
bdbf: 00           NOP
bdc0: 00           NOP
bdc1: 00           NOP
bdc2: 00           NOP
bdc3: 00           NOP
bdc4: 00           NOP
bdc5: 00           NOP
bdc6: 00           NOP
bdc7: 00           NOP
bdc8: 00           NOP
bdc9: 00           NOP
bdca: 00           NOP
bdcb: 00           NOP
bdcc: 00           NOP
bdcd: 00           NOP
bdce: 00           NOP
bdcf: 00           NOP
bdd0: 00           NOP
bdd1: 00           NOP
bdd2: 00           NOP
bdd3: 00           NOP
bdd4: 00           NOP
bdd5: 00           NOP
bdd6: 00           NOP
bdd7: 00           NOP
bdd8: 00           NOP
bdd9: 00           NOP
bdda: 00           NOP
bddb: 00           NOP
bddc: 00           NOP
bddd: 00           NOP
bdde: 00           NOP
bddf: 00           NOP
bde0: 00           NOP
bde1: 00           NOP
bde2: 00           NOP
bde3: 00           NOP
bde4: 00           NOP
bde5: 00           NOP
bde6: 00           NOP
bde7: 00           NOP
bde8: 00           NOP
bde9: 00           NOP
bdea: 00           NOP
bdeb: 00           NOP
bdec: 00           NOP
bded: 00           NOP
bdee: 00           NOP
bdef: 00           NOP
bdf0: 00           NOP
bdf1: 00           NOP
bdf2: 00           NOP
bdf3: 00           NOP
bdf4: 00           NOP
bdf5: 00           NOP
bdf6: 00           NOP
bdf7: 00           NOP
bdf8: 00           NOP
bdf9: 00           NOP
bdfa: 00           NOP
bdfb: 00           NOP
bdfc: 00           NOP
bdfd: 00           NOP
bdfe: 00           NOP
bdff: 00           NOP
be00: 00           NOP
be01: 00           NOP
be02: 00           NOP
be03: 00           NOP
be04: 00           NOP
be05: 00           NOP
be06: 00           NOP
be07: 00           NOP
be08: 00           NOP
be09: 00           NOP
be0a: 00           NOP
be0b: 00           NOP
be0c: 00           NOP
be0d: 00           NOP
be0e: 00           NOP
be0f: 00           NOP
be10: 00           NOP
be11: 00           NOP
be12: 00           NOP
be13: 00           NOP
be14: 00           NOP
be15: 00           NOP
be16: 00           NOP
be17: 00           NOP
be18: 00           NOP
be19: 00           NOP
be1a: 00           NOP
be1b: 00           NOP
be1c: 00           NOP
be1d: 00           NOP
be1e: 00           NOP
be1f: 00           NOP
be20: 00           NOP
be21: 00           NOP
be22: 00           NOP
be23: 00           NOP
be24: 00           NOP
be25: 00           NOP
be26: 00           NOP
be27: 00           NOP
be28: 00           NOP
be29: 00           NOP
be2a: 00           NOP
be2b: 00           NOP
be2c: 00           NOP
be2d: 00           NOP
be2e: 00           NOP
be2f: 00           NOP
be30: 00           NOP
be31: 00           NOP
be32: 00           NOP
be33: 00           NOP
be34: 00           NOP
be35: 00           NOP
be36: 00           NOP
be37: 00           NOP
be38: 00           NOP
be39: 00           NOP
be3a: 00           NOP
be3b: 00           NOP
be3c: 00           NOP
be3d: 00           NOP
be3e: 00           NOP
be3f: 00           NOP
be40: 00           NOP
be41: 00           NOP
be42: 00           NOP
be43: 00           NOP
be44: 00           NOP
be45: 00           NOP
be46: 00           NOP
be47: 00           NOP
be48: 00           NOP
be49: 00           NOP
be4a: 00           NOP
be4b: 00           NOP
be4c: 00           NOP
be4d: 00           NOP
be4e: 00           NOP
be4f: 00           NOP
be50: 00           NOP
be51: 00           NOP
be52: 00           NOP
be53: 00           NOP
be54: 00           NOP
be55: 00           NOP
be56: 00           NOP
be57: 00           NOP
be58: 00           NOP
be59: 00           NOP
be5a: 00           NOP
be5b: 00           NOP
be5c: 00           NOP
be5d: 00           NOP
be5e: 00           NOP
be5f: 00           NOP
be60: 00           NOP
be61: 00           NOP
be62: 00           NOP
be63: 00           NOP
be64: 00           NOP
be65: 00           NOP
be66: 00           NOP
be67: 00           NOP
be68: 00           NOP
be69: 00           NOP
be6a: 00           NOP
be6b: 00           NOP
be6c: 00           NOP
be6d: 00           NOP
be6e: 00           NOP
be6f: 00           NOP
be70: 00           NOP
be71: 00           NOP
be72: 00           NOP
be73: 00           NOP
be74: 00           NOP
be75: 00           NOP
be76: 00           NOP
be77: 00           NOP
be78: 00           NOP
be79: 00           NOP
be7a: 00           NOP
be7b: 00           NOP
be7c: 00           NOP
be7d: 00           NOP
be7e: 00           NOP
be7f: 00           NOP
be80: 00           NOP
be81: 00           NOP
be82: 00           NOP
be83: 00           NOP
be84: 00           NOP
be85: 00           NOP
be86: 00           NOP
be87: 00           NOP
be88: 00           NOP
be89: 00           NOP
be8a: 00           NOP
be8b: 00           NOP
be8c: 00           NOP
be8d: 00           NOP
be8e: 00           NOP
be8f: 00           NOP
be90: 00           NOP
be91: 00           NOP
be92: 00           NOP
be93: 00           NOP
be94: 00           NOP
be95: 00           NOP
be96: 00           NOP
be97: 00           NOP
be98: 00           NOP
be99: 00           NOP
be9a: 00           NOP
be9b: 00           NOP
be9c: 00           NOP
be9d: 00           NOP
be9e: 00           NOP
be9f: 00           NOP
bea0: 00           NOP
bea1: 00           NOP
bea2: 00           NOP
bea3: 00           NOP
bea4: 00           NOP
bea5: 00           NOP
bea6: 00           NOP
bea7: 00           NOP
bea8: 00           NOP
bea9: 00           NOP
beaa: 00           NOP
beab: 00           NOP
beac: 00           NOP
bead: 00           NOP
beae: 00           NOP
beaf: 00           NOP
beb0: 00           NOP
beb1: 00           NOP
beb2: 00           NOP
beb3: 00           NOP
beb4: 00           NOP
beb5: 00           NOP
beb6: 00           NOP
beb7: 00           NOP
beb8: 00           NOP
beb9: 00           NOP
beba: 00           NOP
bebb: 00           NOP
bebc: 00           NOP
bebd: 00           NOP
bebe: 00           NOP
bebf: 00           NOP
bec0: 00           NOP
bec1: 00           NOP
bec2: 00           NOP
bec3: 00           NOP
bec4: 00           NOP
bec5: 00           NOP
bec6: 00           NOP
bec7: 00           NOP
bec8: 00           NOP
bec9: 00           NOP
beca: 00           NOP
becb: 00           NOP
becc: 00           NOP
becd: 00           NOP
bece: 00           NOP
becf: 00           NOP
bed0: 00           NOP
bed1: 00           NOP
bed2: 00           NOP
bed3: 00           NOP
bed4: 00           NOP
bed5: 00           NOP
bed6: 00           NOP
bed7: 00           NOP
bed8: 00           NOP
bed9: 00           NOP
beda: 00           NOP
bedb: 00           NOP
bedc: 00           NOP
bedd: 00           NOP
bede: 00           NOP
bedf: 00           NOP
bee0: 00           NOP
bee1: 00           NOP
bee2: 00           NOP
bee3: 00           NOP
bee4: 00           NOP
bee5: 00           NOP
bee6: 00           NOP
bee7: 00           NOP
bee8: 00           NOP
bee9: 00           NOP
beea: 00           NOP
beeb: 00           NOP
beec: 00           NOP
beed: 00           NOP
beee: 00           NOP
beef: 00           NOP
bef0: 00           NOP
bef1: 00           NOP
bef2: 00           NOP
bef3: 00           NOP
bef4: 00           NOP
bef5: 00           NOP
bef6: 00           NOP
bef7: 00           NOP
bef8: 00           NOP
bef9: 00           NOP
befa: 00           NOP
befb: 00           NOP
befc: 00           NOP
befd: 00           NOP
befe: 00           NOP
beff: 00           NOP
bf00: 00           NOP
bf01: 00           NOP
bf02: 00           NOP
bf03: 00           NOP
bf04: 00           NOP
bf05: 00           NOP
bf06: 00           NOP
bf07: 00           NOP
bf08: 00           NOP
bf09: 00           NOP
bf0a: 00           NOP
bf0b: 00           NOP
bf0c: 00           NOP
bf0d: 00           NOP
bf0e: 00           NOP
bf0f: 00           NOP
bf10: 00           NOP
bf11: 00           NOP
bf12: 00           NOP
bf13: 00           NOP
bf14: 00           NOP
bf15: 00           NOP
bf16: 00           NOP
bf17: 00           NOP
bf18: 00           NOP
bf19: 00           NOP
bf1a: 00           NOP
bf1b: 00           NOP
bf1c: 00           NOP
bf1d: 00           NOP
bf1e: 00           NOP
bf1f: 00           NOP
bf20: 00           NOP
bf21: 00           NOP
bf22: 00           NOP
bf23: 00           NOP
bf24: 00           NOP
bf25: 00           NOP
bf26: 00           NOP
bf27: 00           NOP
bf28: 00           NOP
bf29: 00           NOP
bf2a: 00           NOP
bf2b: 00           NOP
bf2c: 00           NOP
bf2d: 00           NOP
bf2e: 00           NOP
bf2f: 00           NOP
bf30: 00           NOP
bf31: 00           NOP
bf32: 00           NOP
bf33: 00           NOP
bf34: 00           NOP
bf35: 00           NOP
bf36: 00           NOP
bf37: 00           NOP
bf38: 00           NOP
bf39: 00           NOP
bf3a: 00           NOP
bf3b: 00           NOP
bf3c: 00           NOP
bf3d: 00           NOP
bf3e: 00           NOP
bf3f: 00           NOP
bf40: 00           NOP
bf41: 00           NOP
bf42: 00           NOP
bf43: 00           NOP
bf44: 00           NOP
bf45: 00           NOP
bf46: 00           NOP
bf47: 00           NOP
bf48: 00           NOP
bf49: 00           NOP
bf4a: 00           NOP
bf4b: 00           NOP
bf4c: 00           NOP
bf4d: 00           NOP
bf4e: 00           NOP
bf4f: 00           NOP
bf50: 00           NOP
bf51: 00           NOP
bf52: 00           NOP
bf53: 00           NOP
bf54: 00           NOP
bf55: 00           NOP
bf56: 00           NOP
bf57: 00           NOP
bf58: 00           NOP
bf59: 00           NOP
bf5a: 00           NOP
bf5b: 00           NOP
bf5c: 00           NOP
bf5d: 00           NOP
bf5e: 00           NOP
bf5f: 00           NOP
bf60: 00           NOP
bf61: 00           NOP
bf62: 00           NOP
bf63: 00           NOP
bf64: 00           NOP
bf65: 00           NOP
bf66: 00           NOP
bf67: 00           NOP
bf68: 00           NOP
bf69: 00           NOP
bf6a: 00           NOP
bf6b: 00           NOP
bf6c: 00           NOP
bf6d: 00           NOP
bf6e: 00           NOP
bf6f: 00           NOP
bf70: 00           NOP
bf71: 00           NOP
bf72: 00           NOP
bf73: 00           NOP
bf74: 00           NOP
bf75: 00           NOP
bf76: 00           NOP
bf77: 00           NOP
bf78: 00           NOP
bf79: 00           NOP
bf7a: 00           NOP
bf7b: 00           NOP
bf7c: 00           NOP
bf7d: 00           NOP
bf7e: 00           NOP
bf7f: 00           NOP
bf80: 00           NOP
bf81: 00           NOP
bf82: 00           NOP
bf83: 00           NOP
bf84: 00           NOP
bf85: 00           NOP
bf86: 00           NOP
bf87: 00           NOP
bf88: 00           NOP
bf89: 00           NOP
bf8a: 00           NOP
bf8b: 00           NOP
bf8c: 00           NOP
bf8d: 00           NOP
bf8e: 00           NOP
bf8f: 00           NOP
bf90: 00           NOP
bf91: 00           NOP
bf92: 00           NOP
bf93: 00           NOP
bf94: 00           NOP
bf95: 00           NOP
bf96: 00           NOP
bf97: 00           NOP
bf98: 00           NOP
bf99: 00           NOP
bf9a: 00           NOP
bf9b: 00           NOP
bf9c: 00           NOP
bf9d: 00           NOP
bf9e: 00           NOP
bf9f: 00           NOP
bfa0: 00           NOP
bfa1: 00           NOP
bfa2: 00           NOP
bfa3: 00           NOP
bfa4: 00           NOP
bfa5: 00           NOP
bfa6: 00           NOP
bfa7: 00           NOP
bfa8: 00           NOP
bfa9: 00           NOP
bfaa: 00           NOP
bfab: 00           NOP
bfac: 00           NOP
bfad: 00           NOP
bfae: 00           NOP
bfaf: 00           NOP
bfb0: 00           NOP
bfb1: 00           NOP
bfb2: 00           NOP
bfb3: 00           NOP
bfb4: 00           NOP
bfb5: 00           NOP
bfb6: 00           NOP
bfb7: 00           NOP
bfb8: 00           NOP
bfb9: 00           NOP
bfba: 00           NOP
bfbb: 00           NOP
bfbc: 00           NOP
bfbd: 00           NOP
bfbe: 00           NOP
bfbf: 00           NOP
bfc0: 00           NOP
bfc1: 00           NOP
bfc2: 00           NOP
bfc3: 00           NOP
bfc4: 00           NOP
bfc5: 00           NOP
bfc6: 00           NOP
bfc7: 00           NOP
bfc8: 00           NOP
bfc9: 00           NOP
bfca: 00           NOP
bfcb: 00           NOP
bfcc: 00           NOP
bfcd: 00           NOP
bfce: 00           NOP
bfcf: 00           NOP
bfd0: 00           NOP
bfd1: 00           NOP
bfd2: 00           NOP
bfd3: 00           NOP
bfd4: 00           NOP
bfd5: 00           NOP
bfd6: 00           NOP
bfd7: 00           NOP
bfd8: 00           NOP
bfd9: 00           NOP
bfda: 00           NOP
bfdb: 00           NOP
bfdc: 00           NOP
bfdd: 00           NOP
bfde: 00           NOP
bfdf: 00           NOP
bfe0: 00           NOP
bfe1: 00           NOP
bfe2: 00           NOP
bfe3: 00           NOP
bfe4: 00           NOP
bfe5: 00           NOP
bfe6: 00           NOP
bfe7: 00           NOP
bfe8: 00           NOP
bfe9: 00           NOP
bfea: 00           NOP
bfeb: 00           NOP
bfec: 00           NOP
bfed: 00           NOP
bfee: 00           NOP
bfef: 00           NOP
bff0: 00           NOP
bff1: 00           NOP
bff2: 00           NOP
bff3: 00           NOP
bff4: 00           NOP
bff5: 00           NOP
bff6: 00           NOP
bff7: 00           NOP
bff8: 00           NOP
bff9: 00           NOP
bffa: 00           NOP
bffb: 00           NOP
bffc: 00           NOP
bffd: 00           NOP
bffe: b6           XCHB A
bfff: 15 00        XOR R0,A
