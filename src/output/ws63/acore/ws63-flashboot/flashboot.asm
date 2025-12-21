
flashboot.elf:     file format elf32-littleriscv


Disassembly of section .text.entry:

00a28300 <_start>:
  a28300:	0040006f          	j	a28304 <Reset_Handler>

00a28304 <Reset_Handler>:
  a28304:	00000293          	li	t0,0
  a28308:	3a029073          	csrw	pmpcfg0,t0
  a2830c:	00000293          	li	t0,0
  a28310:	3a129073          	csrw	pmpcfg1,t0
  a28314:	00000293          	li	t0,0
  a28318:	3a229073          	csrw	pmpcfg2,t0
  a2831c:	00000293          	li	t0,0
  a28320:	3a329073          	csrw	pmpcfg3,t0
  a28324:	00000293          	li	t0,0
  a28328:	7d929073          	csrw	0x7d9,t0
  a2832c:	fffdd297          	auipc	t0,0xfffdd
  a28330:	7dc28293          	addi	t0,t0,2012 # a05b08 <__bss_end__>
  a28334:	00050313          	mv	t1,a0
  a28338:	00032e03          	lw	t3,0(t1)
  a2833c:	01c2a023          	sw	t3,0(t0)
  a28340:	00009297          	auipc	t0,0x9
  a28344:	2cc28293          	addi	t0,t0,716 # a3160c <trap_vector>
  a28348:	00128293          	addi	t0,t0,1
  a2834c:	30529073          	csrw	mtvec,t0
  a28350:	30005073          	csrwi	mstatus,0
  a28354:	30405073          	csrwi	mie,0
  a28358:	0000c197          	auipc	gp,0xc
  a2835c:	4bc18193          	addi	gp,gp,1212 # a34814 <_gp_>
  a28360:	fffdd117          	auipc	sp,0xfffdd
  a28364:	9a010113          	addi	sp,sp,-1632 # a04d00 <__stack_top__>
  a28368:	fffdb297          	auipc	t0,0xfffdb
  a2836c:	d9828293          	addi	t0,t0,-616 # a03100 <g_system_stack_begin>
  a28370:	fffdd317          	auipc	t1,0xfffdd
  a28374:	19030313          	addi	t1,t1,400 # a05500 <g_flash_cmd_funcs>
  a28378:	00628c63          	beq	t0,t1,a28390 <end_set_stack_loop>
  a2837c:	efbeb3b7          	lui	t2,0xefbeb
  a28380:	dde38393          	addi	t2,t2,-546 # efbeadde <_gp_+0xef1b65ca>

00a28384 <set_stack_loop>:
  a28384:	0072a023          	sw	t2,0(t0)
  a28388:	00428293          	addi	t0,t0,4
  a2838c:	fe62cce3          	blt	t0,t1,a28384 <set_stack_loop>

00a28390 <end_set_stack_loop>:
  a28390:	00000093          	li	ra,0
  a28394:	00000213          	li	tp,0
  a28398:	00000413          	li	s0,0
  a2839c:	00000493          	li	s1,0
  a283a0:	00000513          	li	a0,0
  a283a4:	00000593          	li	a1,0
  a283a8:	00000613          	li	a2,0
  a283ac:	00000693          	li	a3,0
  a283b0:	00000713          	li	a4,0
  a283b4:	00000793          	li	a5,0
  a283b8:	00000813          	li	a6,0
  a283bc:	00000893          	li	a7,0
  a283c0:	00000913          	li	s2,0
  a283c4:	00000993          	li	s3,0
  a283c8:	00000a13          	li	s4,0
  a283cc:	00000a93          	li	s5,0
  a283d0:	00000b13          	li	s6,0
  a283d4:	00000b93          	li	s7,0
  a283d8:	00000c13          	li	s8,0
  a283dc:	00000c93          	li	s9,0
  a283e0:	00000d13          	li	s10,0
  a283e4:	00000d93          	li	s11,0
  a283e8:	00000e13          	li	t3,0
  a283ec:	00000e93          	li	t4,0
  a283f0:	00000f13          	li	t5,0
  a283f4:	00000f93          	li	t6,0
  a283f8:	fffdd297          	auipc	t0,0xfffdd
  a283fc:	10828293          	addi	t0,t0,264 # a05500 <g_flash_cmd_funcs>
  a28400:	fffdd317          	auipc	t1,0xfffdd
  a28404:	70830313          	addi	t1,t1,1800 # a05b08 <__bss_end__>
  a28408:	00628a63          	beq	t0,t1,a2841c <end_clear_bss_loop>
  a2840c:	00000393          	li	t2,0

00a28410 <clear_bss_loop>:
  a28410:	0072a023          	sw	t2,0(t0)
  a28414:	00428293          	addi	t0,t0,4
  a28418:	fe62cce3          	blt	t0,t1,a28410 <clear_bss_loop>

00a2841c <end_clear_bss_loop>:
  a2841c:	25d0006f          	j	a28e78 <start_fastboot>

00a28420 <g_ram_exception_table>:
  a28420:	00a31510 00a2d348 00a2d348 00a2d348     ....H...H...H...
  a28430:	00a2d348 00a2d348 00a2d348 00a2d348     H...H...H...H...
  a28440:	00a2d348 00a2d348 00a2d348 00a2d348     H...H...H...H...
  a28450:	00a2d35c 00a2d348 00a2d348 00a2d348     \...H...H...H...
  a28460:	00a2d348 00a2d348 00a2d348 00a2d348     H...H...H...H...
  a28470:	00a2d348 00a2d348 00a2d348 00a2d348     H...H...H...H...
  a28480:	00a2d348 00a2d348 00a2cf24 00a2cf24     H...H...$...$...
  a28490:	00a2cf24 00a2cf24 00a2cf24 00a2cf24     $...$...$...$...
  a284a0:	00a2cf24 00a2cf24 00a2cf24 00a2cf24     $...$...$...$...
  a284b0:	00a2cf24 00a2cf24 00a2cf24 00a2cf24     $...$...$...$...
  a284c0:	00a2cf24 00a2cf24 00a2cf24 00a2cf24     $...$...$...$...
  a284d0:	00a2cf24 00a2cf24 00a2cf24 00a2cf24     $...$...$...$...
  a284e0:	00a2cf24 00a2cf24 00a2cf24 00a2cf24     $...$...$...$...
  a284f0:	00a2cf24 00a2cf24 00a2cf24 00a2cf24     $...$...$...$...
  a28500:	00a2cf24 00a2cf24 00a2cf24 00a2cf24     $...$...$...$...
  a28510:	00a2cf24 00a2cf24 00a2cf24 00a2cf24     $...$...$...$...
  a28520:	00a2cf24 00a2cf24 00a2cf24 00a2cf24     $...$...$...$...
  a28530:	00a2cf24 00a2cf24 00a2cf24 00a2cf24     $...$...$...$...
  a28540:	00a2cf24 00a2cf24                       $...$...

Disassembly of section .text:

00a28550 <exc_syscall>:
  a28550:	8082                	ret

00a28552 <handle_syscall>:
  a28552:	0411                	addi	s0,s0,4
  a28554:	c022                	sw	s0,0(sp)
  a28556:	3fed                	jal	ra,a28550 <exc_syscall>
  a28558:	42d2                	lw	t0,20(sp)
  a2855a:	34129073          	csrw	mepc,t0
  a2855e:	5d82                	lw	s11,32(sp)
  a28560:	5d12                	lw	s10,36(sp)
  a28562:	5ca2                	lw	s9,40(sp)
  a28564:	5c32                	lw	s8,44(sp)
  a28566:	5bc2                	lw	s7,48(sp)
  a28568:	5b52                	lw	s6,52(sp)
  a2856a:	5ae2                	lw	s5,56(sp)
  a2856c:	5a72                	lw	s4,60(sp)
  a2856e:	4986                	lw	s3,64(sp)
  a28570:	4916                	lw	s2,68(sp)
  a28572:	44a6                	lw	s1,72(sp)
  a28574:	4436                	lw	s0,76(sp)
  a28576:	4fc6                	lw	t6,80(sp)
  a28578:	4f56                	lw	t5,84(sp)
  a2857a:	4ee6                	lw	t4,88(sp)
  a2857c:	4e76                	lw	t3,92(sp)
  a2857e:	5886                	lw	a7,96(sp)
  a28580:	5816                	lw	a6,100(sp)
  a28582:	57a6                	lw	a5,104(sp)
  a28584:	5736                	lw	a4,108(sp)
  a28586:	56c6                	lw	a3,112(sp)
  a28588:	5656                	lw	a2,116(sp)
  a2858a:	55e6                	lw	a1,120(sp)
  a2858c:	5576                	lw	a0,124(sp)
  a2858e:	438a                	lw	t2,128(sp)
  a28590:	431a                	lw	t1,132(sp)
  a28592:	42aa                	lw	t0,136(sp)
  a28594:	40ba                	lw	ra,140(sp)
  a28596:	6149                	addi	sp,sp,144
  a28598:	30200073          	mret

00a2859c <__udivdi3>:
  a2859c:	4701                	li	a4,0
  a2859e:	a039                	j	a285ac <__udivmoddi4>

00a285a0 <__umoddi3>:
  a285a0:	8118                	push	{ra},-32
  a285a2:	0038                	addi	a4,sp,8
  a285a4:	2021                	jal	ra,a285ac <__udivmoddi4>
  a285a6:	4522                	lw	a0,8(sp)
  a285a8:	45b2                	lw	a1,12(sp)
  a285aa:	8114                	popret	{ra},32

00a285ac <__udivmoddi4>:
  a285ac:	88b6                	mv	a7,a3
  a285ae:	8832                	mv	a6,a2
  a285b0:	87aa                	mv	a5,a0
  a285b2:	8e2e                	mv	t3,a1
  a285b4:	eedd                	bnez	a3,a28672 <__udivmoddi4+0xc6>
  a285b6:	12c5f163          	bgeu	a1,a2,a286d8 <__udivmoddi4+0x12c>
  a285ba:	66c1                	lui	a3,0x10
  a285bc:	1cd66a63          	bltu	a2,a3,a28790 <__udivmoddi4+0x1e4>
  a285c0:	010006b7          	lui	a3,0x1000
  a285c4:	3ad66563          	bltu	a2,a3,a2896e <__udivmoddi4+0x3c2>
  a285c8:	01865313          	srli	t1,a2,0x18
  a285cc:	48e1                	li	a7,24
  a285ce:	0000c697          	auipc	a3,0xc
  a285d2:	a3a6a683          	lw	a3,-1478(a3) # a34008 <_GLOBAL_OFFSET_TABLE_+0x4>
  a285d6:	969a                	add	a3,a3,t1
  a285d8:	2294                	lbu	a3,0(a3)
  a285da:	02000313          	li	t1,32
  a285de:	98b6                	add	a7,a7,a3
  a285e0:	41130333          	sub	t1,t1,a7
  a285e4:	00030c63          	beqz	t1,a285fc <__udivmoddi4+0x50>
  a285e8:	006595b3          	sll	a1,a1,t1
  a285ec:	011558b3          	srl	a7,a0,a7
  a285f0:	00661833          	sll	a6,a2,t1
  a285f4:	00b8ee33          	or	t3,a7,a1
  a285f8:	006517b3          	sll	a5,a0,t1
  a285fc:	01085e93          	srli	t4,a6,0x10
  a28600:	03de5f33          	divu	t5,t3,t4
  a28604:	01081613          	slli	a2,a6,0x10
  a28608:	8241                	srli	a2,a2,0x10
  a2860a:	0107d693          	srli	a3,a5,0x10
  a2860e:	03de75b3          	remu	a1,t3,t4
  a28612:	03e60fb3          	mul	t6,a2,t5
  a28616:	20b6a69b          	orshf	a3,a3,a1,sll,16
  a2861a:	01f6fa63          	bgeu	a3,t6,a2862e <__udivmoddi4+0x82>
  a2861e:	96c2                	add	a3,a3,a6
  a28620:	ffff0593          	addi	a1,t5,-1
  a28624:	0106e463          	bltu	a3,a6,a2862c <__udivmoddi4+0x80>
  a28628:	37f6e563          	bltu	a3,t6,a28992 <__udivmoddi4+0x3e6>
  a2862c:	8f2e                	mv	t5,a1
  a2862e:	41f685b3          	sub	a1,a3,t6
  a28632:	03d5d533          	divu	a0,a1,t4
  a28636:	01079693          	slli	a3,a5,0x10
  a2863a:	82c1                	srli	a3,a3,0x10
  a2863c:	03d5f5b3          	remu	a1,a1,t4
  a28640:	02a60633          	mul	a2,a2,a0
  a28644:	20b6a79b          	orshf	a5,a3,a1,sll,16
  a28648:	00c7fa63          	bgeu	a5,a2,a2865c <__udivmoddi4+0xb0>
  a2864c:	97c2                	add	a5,a5,a6
  a2864e:	fff50693          	addi	a3,a0,-1
  a28652:	0107e463          	bltu	a5,a6,a2865a <__udivmoddi4+0xae>
  a28656:	32c7eb63          	bltu	a5,a2,a2898c <__udivmoddi4+0x3e0>
  a2865a:	8536                	mv	a0,a3
  a2865c:	8f91                	sub	a5,a5,a2
  a2865e:	21e5251b          	orshf	a0,a0,t5,sll,16
  a28662:	4581                	li	a1,0
  a28664:	c711                	beqz	a4,a28670 <__udivmoddi4+0xc4>
  a28666:	0067d7b3          	srl	a5,a5,t1
  a2866a:	c31c                	sw	a5,0(a4)
  a2866c:	00072223          	sw	zero,4(a4)
  a28670:	8082                	ret
  a28672:	00d5f963          	bgeu	a1,a3,a28684 <__udivmoddi4+0xd8>
  a28676:	12070f63          	beqz	a4,a287b4 <__udivmoddi4+0x208>
  a2867a:	c308                	sw	a0,0(a4)
  a2867c:	c34c                	sw	a1,4(a4)
  a2867e:	4501                	li	a0,0
  a28680:	4581                	li	a1,0
  a28682:	8082                	ret
  a28684:	67c1                	lui	a5,0x10
  a28686:	0ef6ed63          	bltu	a3,a5,a28780 <__udivmoddi4+0x1d4>
  a2868a:	010007b7          	lui	a5,0x1000
  a2868e:	2cf6ea63          	bltu	a3,a5,a28962 <__udivmoddi4+0x3b6>
  a28692:	0186d893          	srli	a7,a3,0x18
  a28696:	4861                	li	a6,24
  a28698:	0000c797          	auipc	a5,0xc
  a2869c:	9707a783          	lw	a5,-1680(a5) # a34008 <_GLOBAL_OFFSET_TABLE_+0x4>
  a286a0:	97c6                	add	a5,a5,a7
  a286a2:	0007c303          	lbu	t1,0(a5)
  a286a6:	02000e93          	li	t4,32
  a286aa:	9342                	add	t1,t1,a6
  a286ac:	406e8eb3          	sub	t4,t4,t1
  a286b0:	180e9563          	bnez	t4,a2883a <__udivmoddi4+0x28e>
  a286b4:	00b6e463          	bltu	a3,a1,a286bc <__udivmoddi4+0x110>
  a286b8:	2ec56363          	bltu	a0,a2,a2899e <__udivmoddi4+0x3f2>
  a286bc:	40c50633          	sub	a2,a0,a2
  a286c0:	00c53533          	sltu	a0,a0,a2
  a286c4:	8d95                	sub	a1,a1,a3
  a286c6:	40a58e33          	sub	t3,a1,a0
  a286ca:	4505                	li	a0,1
  a286cc:	4581                	li	a1,0
  a286ce:	d34d                	beqz	a4,a28670 <__udivmoddi4+0xc4>
  a286d0:	c310                	sw	a2,0(a4)
  a286d2:	01c72223          	sw	t3,4(a4)
  a286d6:	8082                	ret
  a286d8:	e601                	bnez	a2,a286e0 <__udivmoddi4+0x134>
  a286da:	4685                	li	a3,1
  a286dc:	02c6d833          	divu	a6,a3,a2
  a286e0:	66c1                	lui	a3,0x10
  a286e2:	0cd86063          	bltu	a6,a3,a287a2 <__udivmoddi4+0x1f6>
  a286e6:	010006b7          	lui	a3,0x1000
  a286ea:	26d86863          	bltu	a6,a3,a2895a <__udivmoddi4+0x3ae>
  a286ee:	01885613          	srli	a2,a6,0x18
  a286f2:	48e1                	li	a7,24
  a286f4:	0000c697          	auipc	a3,0xc
  a286f8:	9146a683          	lw	a3,-1772(a3) # a34008 <_GLOBAL_OFFSET_TABLE_+0x4>
  a286fc:	96b2                	add	a3,a3,a2
  a286fe:	2290                	lbu	a2,0(a3)
  a28700:	02000313          	li	t1,32
  a28704:	9646                	add	a2,a2,a7
  a28706:	40c30333          	sub	t1,t1,a2
  a2870a:	0a031863          	bnez	t1,a287ba <__udivmoddi4+0x20e>
  a2870e:	01081e93          	slli	t4,a6,0x10
  a28712:	410586b3          	sub	a3,a1,a6
  a28716:	01085f13          	srli	t5,a6,0x10
  a2871a:	010ede93          	srli	t4,t4,0x10
  a2871e:	4585                	li	a1,1
  a28720:	0107d893          	srli	a7,a5,0x10
  a28724:	03e6de33          	divu	t3,a3,t5
  a28728:	03e6f6b3          	remu	a3,a3,t5
  a2872c:	03de0633          	mul	a2,t3,t4
  a28730:	20d8a69b          	orshf	a3,a7,a3,sll,16
  a28734:	00c6fa63          	bgeu	a3,a2,a28748 <__udivmoddi4+0x19c>
  a28738:	96c2                	add	a3,a3,a6
  a2873a:	fffe0513          	addi	a0,t3,-1
  a2873e:	0106e463          	bltu	a3,a6,a28746 <__udivmoddi4+0x19a>
  a28742:	24c6eb63          	bltu	a3,a2,a28998 <__udivmoddi4+0x3ec>
  a28746:	8e2a                	mv	t3,a0
  a28748:	40c68633          	sub	a2,a3,a2
  a2874c:	03e65533          	divu	a0,a2,t5
  a28750:	01079693          	slli	a3,a5,0x10
  a28754:	82c1                	srli	a3,a3,0x10
  a28756:	03e67633          	remu	a2,a2,t5
  a2875a:	03d508b3          	mul	a7,a0,t4
  a2875e:	20c6a79b          	orshf	a5,a3,a2,sll,16
  a28762:	0117fa63          	bgeu	a5,a7,a28776 <__udivmoddi4+0x1ca>
  a28766:	97c2                	add	a5,a5,a6
  a28768:	fff50693          	addi	a3,a0,-1
  a2876c:	0107e463          	bltu	a5,a6,a28774 <__udivmoddi4+0x1c8>
  a28770:	2117eb63          	bltu	a5,a7,a28986 <__udivmoddi4+0x3da>
  a28774:	8536                	mv	a0,a3
  a28776:	411787b3          	sub	a5,a5,a7
  a2877a:	21c5251b          	orshf	a0,a0,t3,sll,16
  a2877e:	b5dd                	j	a28664 <__udivmoddi4+0xb8>
  a28780:	0ff00793          	li	a5,255
  a28784:	1ed7f363          	bgeu	a5,a3,a2896a <__udivmoddi4+0x3be>
  a28788:	0086d893          	srli	a7,a3,0x8
  a2878c:	4821                	li	a6,8
  a2878e:	b729                	j	a28698 <__udivmoddi4+0xec>
  a28790:	8332                	mv	t1,a2
  a28792:	0ff00693          	li	a3,255
  a28796:	e2c6fce3          	bgeu	a3,a2,a285ce <__udivmoddi4+0x22>
  a2879a:	00865313          	srli	t1,a2,0x8
  a2879e:	48a1                	li	a7,8
  a287a0:	b53d                	j	a285ce <__udivmoddi4+0x22>
  a287a2:	8642                	mv	a2,a6
  a287a4:	0ff00693          	li	a3,255
  a287a8:	f506f6e3          	bgeu	a3,a6,a286f4 <__udivmoddi4+0x148>
  a287ac:	00885613          	srli	a2,a6,0x8
  a287b0:	48a1                	li	a7,8
  a287b2:	b789                	j	a286f4 <__udivmoddi4+0x148>
  a287b4:	4581                	li	a1,0
  a287b6:	4501                	li	a0,0
  a287b8:	8082                	ret
  a287ba:	00681833          	sll	a6,a6,t1
  a287be:	00c5d8b3          	srl	a7,a1,a2
  a287c2:	01085f13          	srli	t5,a6,0x10
  a287c6:	03e8dfb3          	divu	t6,a7,t5
  a287ca:	01081e93          	slli	t4,a6,0x10
  a287ce:	006595b3          	sll	a1,a1,t1
  a287d2:	00c55633          	srl	a2,a0,a2
  a287d6:	010ede93          	srli	t4,t4,0x10
  a287da:	8e4d                	or	a2,a2,a1
  a287dc:	01065e13          	srli	t3,a2,0x10
  a287e0:	006517b3          	sll	a5,a0,t1
  a287e4:	03e8f8b3          	remu	a7,a7,t5
  a287e8:	03fe85b3          	mul	a1,t4,t6
  a287ec:	211e251b          	orshf	a0,t3,a7,sll,16
  a287f0:	00b57b63          	bgeu	a0,a1,a28806 <__udivmoddi4+0x25a>
  a287f4:	9542                	add	a0,a0,a6
  a287f6:	ffff8693          	addi	a3,t6,-1
  a287fa:	19056463          	bltu	a0,a6,a28982 <__udivmoddi4+0x3d6>
  a287fe:	18b57263          	bgeu	a0,a1,a28982 <__udivmoddi4+0x3d6>
  a28802:	1ff9                	addi	t6,t6,-2
  a28804:	9542                	add	a0,a0,a6
  a28806:	8d0d                	sub	a0,a0,a1
  a28808:	03e558b3          	divu	a7,a0,t5
  a2880c:	9e21                	uxth	a2
  a2880e:	03e57533          	remu	a0,a0,t5
  a28812:	031e86b3          	mul	a3,t4,a7
  a28816:	20a6259b          	orshf	a1,a2,a0,sll,16
  a2881a:	00d5fb63          	bgeu	a1,a3,a28830 <__udivmoddi4+0x284>
  a2881e:	95c2                	add	a1,a1,a6
  a28820:	fff88613          	addi	a2,a7,-1
  a28824:	1505eb63          	bltu	a1,a6,a2897a <__udivmoddi4+0x3ce>
  a28828:	14d5f963          	bgeu	a1,a3,a2897a <__udivmoddi4+0x3ce>
  a2882c:	18f9                	addi	a7,a7,-2
  a2882e:	95c2                	add	a1,a1,a6
  a28830:	40d586b3          	sub	a3,a1,a3
  a28834:	21f8a59b          	orshf	a1,a7,t6,sll,16
  a28838:	b5e5                	j	a28720 <__udivmoddi4+0x174>
  a2883a:	00665833          	srl	a6,a2,t1
  a2883e:	01d696b3          	sll	a3,a3,t4
  a28842:	00d866b3          	or	a3,a6,a3
  a28846:	0065d7b3          	srl	a5,a1,t1
  a2884a:	0106de13          	srli	t3,a3,0x10
  a2884e:	03c7dfb3          	divu	t6,a5,t3
  a28852:	01069893          	slli	a7,a3,0x10
  a28856:	0108d893          	srli	a7,a7,0x10
  a2885a:	00655833          	srl	a6,a0,t1
  a2885e:	01d51f33          	sll	t5,a0,t4
  a28862:	01d595b3          	sll	a1,a1,t4
  a28866:	00b865b3          	or	a1,a6,a1
  a2886a:	0105d813          	srli	a6,a1,0x10
  a2886e:	01d61633          	sll	a2,a2,t4
  a28872:	03c7f7b3          	remu	a5,a5,t3
  a28876:	03f88533          	mul	a0,a7,t6
  a2887a:	20f8279b          	orshf	a5,a6,a5,sll,16
  a2887e:	00a7fb63          	bgeu	a5,a0,a28894 <__udivmoddi4+0x2e8>
  a28882:	97b6                	add	a5,a5,a3
  a28884:	ffff8813          	addi	a6,t6,-1
  a28888:	0ed7eb63          	bltu	a5,a3,a2897e <__udivmoddi4+0x3d2>
  a2888c:	0ea7f963          	bgeu	a5,a0,a2897e <__udivmoddi4+0x3d2>
  a28890:	1ff9                	addi	t6,t6,-2
  a28892:	97b6                	add	a5,a5,a3
  a28894:	8f89                	sub	a5,a5,a0
  a28896:	03c7d533          	divu	a0,a5,t3
  a2889a:	9da1                	uxth	a1
  a2889c:	03c7f7b3          	remu	a5,a5,t3
  a288a0:	02a888b3          	mul	a7,a7,a0
  a288a4:	20f5a59b          	orshf	a1,a1,a5,sll,16
  a288a8:	0115fb63          	bgeu	a1,a7,a288be <__udivmoddi4+0x312>
  a288ac:	95b6                	add	a1,a1,a3
  a288ae:	fff50793          	addi	a5,a0,-1
  a288b2:	0cd5e263          	bltu	a1,a3,a28976 <__udivmoddi4+0x3ca>
  a288b6:	0d15f063          	bgeu	a1,a7,a28976 <__udivmoddi4+0x3ca>
  a288ba:	1579                	addi	a0,a0,-2
  a288bc:	95b6                	add	a1,a1,a3
  a288be:	63c1                	lui	t2,0x10
  a288c0:	21f5251b          	orshf	a0,a0,t6,sll,16
  a288c4:	fff38793          	addi	a5,t2,-1 # ffff <ccause+0xf03d>
  a288c8:	00f57833          	and	a6,a0,a5
  a288cc:	01055e13          	srli	t3,a0,0x10
  a288d0:	8ff1                	and	a5,a5,a2
  a288d2:	01065f93          	srli	t6,a2,0x10
  a288d6:	02fe02b3          	mul	t0,t3,a5
  a288da:	411588b3          	sub	a7,a1,a7
  a288de:	03f805b3          	mul	a1,a6,t6
  a288e2:	02f80833          	mul	a6,a6,a5
  a288e6:	9596                	add	a1,a1,t0
  a288e8:	6105859b          	addshf	a1,a1,a6,srl,16
  a288ec:	03fe0e33          	mul	t3,t3,t6
  a288f0:	0055f363          	bgeu	a1,t0,a288f6 <__udivmoddi4+0x34a>
  a288f4:	9e1e                	add	t3,t3,t2
  a288f6:	67c1                	lui	a5,0x10
  a288f8:	17fd                	addi	a5,a5,-1 # ffff <ccause+0xf03d>
  a288fa:	00f5ffb3          	and	t6,a1,a5
  a288fe:	00f877b3          	and	a5,a6,a5
  a28902:	60be081b          	addshf	a6,t3,a1,srl,16
  a28906:	21f7879b          	addshf	a5,a5,t6,sll,16
  a2890a:	0308ed63          	bltu	a7,a6,a28944 <__udivmoddi4+0x398>
  a2890e:	03088963          	beq	a7,a6,a28940 <__udivmoddi4+0x394>
  a28912:	4581                	li	a1,0
  a28914:	d4070ee3          	beqz	a4,a28670 <__udivmoddi4+0xc4>
  a28918:	40ff07b3          	sub	a5,t5,a5
  a2891c:	00ff3f33          	sltu	t5,t5,a5
  a28920:	410888b3          	sub	a7,a7,a6
  a28924:	41e888b3          	sub	a7,a7,t5
  a28928:	00689333          	sll	t1,a7,t1
  a2892c:	01d7d7b3          	srl	a5,a5,t4
  a28930:	00f367b3          	or	a5,t1,a5
  a28934:	01d8d8b3          	srl	a7,a7,t4
  a28938:	c31c                	sw	a5,0(a4)
  a2893a:	01172223          	sw	a7,4(a4)
  a2893e:	8082                	ret
  a28940:	fcff79e3          	bgeu	t5,a5,a28912 <__udivmoddi4+0x366>
  a28944:	40c78633          	sub	a2,a5,a2
  a28948:	00c7b7b3          	sltu	a5,a5,a2
  a2894c:	40d80833          	sub	a6,a6,a3
  a28950:	40f80833          	sub	a6,a6,a5
  a28954:	157d                	addi	a0,a0,-1
  a28956:	87b2                	mv	a5,a2
  a28958:	bf6d                	j	a28912 <__udivmoddi4+0x366>
  a2895a:	01085613          	srli	a2,a6,0x10
  a2895e:	48c1                	li	a7,16
  a28960:	bb51                	j	a286f4 <__udivmoddi4+0x148>
  a28962:	0106d893          	srli	a7,a3,0x10
  a28966:	4841                	li	a6,16
  a28968:	bb05                	j	a28698 <__udivmoddi4+0xec>
  a2896a:	4801                	li	a6,0
  a2896c:	b335                	j	a28698 <__udivmoddi4+0xec>
  a2896e:	01065313          	srli	t1,a2,0x10
  a28972:	48c1                	li	a7,16
  a28974:	b9a9                	j	a285ce <__udivmoddi4+0x22>
  a28976:	853e                	mv	a0,a5
  a28978:	b799                	j	a288be <__udivmoddi4+0x312>
  a2897a:	88b2                	mv	a7,a2
  a2897c:	bd55                	j	a28830 <__udivmoddi4+0x284>
  a2897e:	8fc2                	mv	t6,a6
  a28980:	bf11                	j	a28894 <__udivmoddi4+0x2e8>
  a28982:	8fb6                	mv	t6,a3
  a28984:	b549                	j	a28806 <__udivmoddi4+0x25a>
  a28986:	1579                	addi	a0,a0,-2
  a28988:	97c2                	add	a5,a5,a6
  a2898a:	b3f5                	j	a28776 <__udivmoddi4+0x1ca>
  a2898c:	1579                	addi	a0,a0,-2
  a2898e:	97c2                	add	a5,a5,a6
  a28990:	b1f1                	j	a2865c <__udivmoddi4+0xb0>
  a28992:	1f79                	addi	t5,t5,-2
  a28994:	96c2                	add	a3,a3,a6
  a28996:	b961                	j	a2862e <__udivmoddi4+0x82>
  a28998:	1e79                	addi	t3,t3,-2
  a2899a:	96c2                	add	a3,a3,a6
  a2899c:	b375                	j	a28748 <__udivmoddi4+0x19c>
  a2899e:	862a                	mv	a2,a0
  a289a0:	4501                	li	a0,0
  a289a2:	b32d                	j	a286cc <__udivmoddi4+0x120>

00a289a4 <memset>:
  a289a4:	ca59                	beqz	a2,a28a3a <memset+0x96>
  a289a6:	0ff5f793          	andi	a5,a1,255
  a289aa:	a11c                	sb	a5,0(a0)
  a289ac:	00c50733          	add	a4,a0,a2
  a289b0:	fef70fa3          	sb	a5,-1(a4)
  a289b4:	032661bb          	bltui	a2,3,a28a3a <memset+0x96>
  a289b8:	b11c                	sb	a5,1(a0)
  a289ba:	a13c                	sb	a5,2(a0)
  a289bc:	fef70f23          	sb	a5,-2(a4)
  a289c0:	fef70ea3          	sb	a5,-3(a4)
  a289c4:	07166dbb          	bltui	a2,7,a28a3a <memset+0x96>
  a289c8:	b13c                	sb	a5,3(a0)
  a289ca:	fef70e23          	sb	a5,-4(a4)
  a289ce:	46a1                	li	a3,8
  a289d0:	06c6f563          	bgeu	a3,a2,a28a3a <memset+0x96>
  a289d4:	40a007b3          	neg	a5,a0
  a289d8:	8b8d                	andi	a5,a5,3
  a289da:	00f50733          	add	a4,a0,a5
  a289de:	8e1d                	sub	a2,a2,a5
  a289e0:	0ff5f593          	andi	a1,a1,255
  a289e4:	0101 0101 079f      	l.li	a5,0x1010101
  a289ea:	02f585b3          	mul	a1,a1,a5
  a289ee:	9a71                	andi	a2,a2,-4
  a289f0:	00c707b3          	add	a5,a4,a2
  a289f4:	c30c                	sw	a1,0(a4)
  a289f6:	feb7ae23          	sw	a1,-4(a5)
  a289fa:	04c6f063          	bgeu	a3,a2,a28a3a <memset+0x96>
  a289fe:	c34c                	sw	a1,4(a4)
  a28a00:	c70c                	sw	a1,8(a4)
  a28a02:	feb7aa23          	sw	a1,-12(a5)
  a28a06:	feb7ac23          	sw	a1,-8(a5)
  a28a0a:	19066c3b          	bltui	a2,25,a28a3a <memset+0x96>
  a28a0e:	c74c                	sw	a1,12(a4)
  a28a10:	cb0c                	sw	a1,16(a4)
  a28a12:	cb4c                	sw	a1,20(a4)
  a28a14:	cf0c                	sw	a1,24(a4)
  a28a16:	feb7a223          	sw	a1,-28(a5)
  a28a1a:	feb7a423          	sw	a1,-24(a5)
  a28a1e:	feb7a623          	sw	a1,-20(a5)
  a28a22:	feb7a823          	sw	a1,-16(a5)
  a28a26:	00477793          	andi	a5,a4,4
  a28a2a:	07e1                	addi	a5,a5,24
  a28a2c:	97ba                	add	a5,a5,a4
  a28a2e:	46fd                	li	a3,31
  a28a30:	9732                	add	a4,a4,a2
  a28a32:	40f70633          	sub	a2,a4,a5
  a28a36:	00c6e363          	bltu	a3,a2,a28a3c <memset+0x98>
  a28a3a:	8082                	ret
  a28a3c:	c38c                	sw	a1,0(a5)
  a28a3e:	c3cc                	sw	a1,4(a5)
  a28a40:	c78c                	sw	a1,8(a5)
  a28a42:	c7cc                	sw	a1,12(a5)
  a28a44:	cb8c                	sw	a1,16(a5)
  a28a46:	cbcc                	sw	a1,20(a5)
  a28a48:	cf8c                	sw	a1,24(a5)
  a28a4a:	cfcc                	sw	a1,28(a5)
  a28a4c:	02078793          	addi	a5,a5,32
  a28a50:	b7cd                	j	a28a32 <memset+0x8e>

00a28a52 <memcpy>:
  a28a52:	87aa                	mv	a5,a0
  a28a54:	0035f713          	andi	a4,a1,3
  a28a58:	c319                	beqz	a4,a28a5e <memcpy+0xc>
  a28a5a:	16061963          	bnez	a2,a28bcc <memcpy+0x17a>
  a28a5e:	0037f813          	andi	a6,a5,3
  a28a62:	473d                	li	a4,15
  a28a64:	18080e63          	beqz	a6,a28c00 <memcpy+0x1ae>
  a28a68:	20166abb          	bltui	a2,32,a28ad2 <memcpy+0x80>
  a28a6c:	2194                	lbu	a3,0(a1)
  a28a6e:	4198                	lw	a4,0(a1)
  a28a70:	027807bb          	beqi	a6,2,a28c4e <memcpy+0x1fc>
  a28a74:	488d                	li	a7,3
  a28a76:	23180563          	beq	a6,a7,a28ca0 <memcpy+0x24e>
  a28a7a:	a394                	sb	a3,0(a5)
  a28a7c:	3194                	lbu	a3,1(a1)
  a28a7e:	1675                	addi	a2,a2,-3
  a28a80:	058d                	addi	a1,a1,3
  a28a82:	b394                	sb	a3,1(a5)
  a28a84:	fff5c683          	lbu	a3,-1(a1)
  a28a88:	078d                	addi	a5,a5,3
  a28a8a:	4e41                	li	t3,16
  a28a8c:	fed78fa3          	sb	a3,-1(a5)
  a28a90:	0015a303          	lw	t1,1(a1)
  a28a94:	0055a883          	lw	a7,5(a1)
  a28a98:	1641                	addi	a2,a2,-16
  a28a9a:	00831813          	slli	a6,t1,0x8
  a28a9e:	70e8271b          	orshf	a4,a6,a4,srl,24
  a28aa2:	0095a803          	lw	a6,9(a1)
  a28aa6:	c398                	sw	a4,0(a5)
  a28aa8:	00889693          	slli	a3,a7,0x8
  a28aac:	00881713          	slli	a4,a6,0x8
  a28ab0:	7117271b          	orshf	a4,a4,a7,srl,24
  a28ab4:	c798                	sw	a4,8(a5)
  a28ab6:	00d5a703          	lw	a4,13(a1)
  a28aba:	7066a69b          	orshf	a3,a3,t1,srl,24
  a28abe:	c3d4                	sw	a3,4(a5)
  a28ac0:	00871693          	slli	a3,a4,0x8
  a28ac4:	7106a69b          	orshf	a3,a3,a6,srl,24
  a28ac8:	c7d4                	sw	a3,12(a5)
  a28aca:	05c1                	addi	a1,a1,16
  a28acc:	07c1                	addi	a5,a5,16
  a28ace:	fcce61e3          	bltu	t3,a2,a28a90 <memcpy+0x3e>
  a28ad2:	01067713          	andi	a4,a2,16
  a28ad6:	c351                	beqz	a4,a28b5a <memcpy+0x108>
  a28ad8:	2198                	lbu	a4,0(a1)
  a28ada:	07c1                	addi	a5,a5,16
  a28adc:	05c1                	addi	a1,a1,16
  a28ade:	fee78823          	sb	a4,-16(a5)
  a28ae2:	ff15c703          	lbu	a4,-15(a1)
  a28ae6:	fee788a3          	sb	a4,-15(a5)
  a28aea:	ff25c703          	lbu	a4,-14(a1)
  a28aee:	fee78923          	sb	a4,-14(a5)
  a28af2:	ff35c703          	lbu	a4,-13(a1)
  a28af6:	fee789a3          	sb	a4,-13(a5)
  a28afa:	ff45c703          	lbu	a4,-12(a1)
  a28afe:	fee78a23          	sb	a4,-12(a5)
  a28b02:	ff55c703          	lbu	a4,-11(a1)
  a28b06:	fee78aa3          	sb	a4,-11(a5)
  a28b0a:	ff65c703          	lbu	a4,-10(a1)
  a28b0e:	fee78b23          	sb	a4,-10(a5)
  a28b12:	ff75c703          	lbu	a4,-9(a1)
  a28b16:	fee78ba3          	sb	a4,-9(a5)
  a28b1a:	ff85c703          	lbu	a4,-8(a1)
  a28b1e:	fee78c23          	sb	a4,-8(a5)
  a28b22:	ff95c703          	lbu	a4,-7(a1)
  a28b26:	fee78ca3          	sb	a4,-7(a5)
  a28b2a:	ffa5c703          	lbu	a4,-6(a1)
  a28b2e:	fee78d23          	sb	a4,-6(a5)
  a28b32:	ffb5c703          	lbu	a4,-5(a1)
  a28b36:	fee78da3          	sb	a4,-5(a5)
  a28b3a:	ffc5c703          	lbu	a4,-4(a1)
  a28b3e:	fee78e23          	sb	a4,-4(a5)
  a28b42:	ffd5c703          	lbu	a4,-3(a1)
  a28b46:	fee78ea3          	sb	a4,-3(a5)
  a28b4a:	ffe5c703          	lbu	a4,-2(a1)
  a28b4e:	fee78f23          	sb	a4,-2(a5)
  a28b52:	fff5c703          	lbu	a4,-1(a1)
  a28b56:	fee78fa3          	sb	a4,-1(a5)
  a28b5a:	00867713          	andi	a4,a2,8
  a28b5e:	c331                	beqz	a4,a28ba2 <memcpy+0x150>
  a28b60:	2198                	lbu	a4,0(a1)
  a28b62:	07a1                	addi	a5,a5,8
  a28b64:	05a1                	addi	a1,a1,8
  a28b66:	fee78c23          	sb	a4,-8(a5)
  a28b6a:	ff95c703          	lbu	a4,-7(a1)
  a28b6e:	fee78ca3          	sb	a4,-7(a5)
  a28b72:	ffa5c703          	lbu	a4,-6(a1)
  a28b76:	fee78d23          	sb	a4,-6(a5)
  a28b7a:	ffb5c703          	lbu	a4,-5(a1)
  a28b7e:	fee78da3          	sb	a4,-5(a5)
  a28b82:	ffc5c703          	lbu	a4,-4(a1)
  a28b86:	fee78e23          	sb	a4,-4(a5)
  a28b8a:	ffd5c703          	lbu	a4,-3(a1)
  a28b8e:	fee78ea3          	sb	a4,-3(a5)
  a28b92:	ffe5c703          	lbu	a4,-2(a1)
  a28b96:	fee78f23          	sb	a4,-2(a5)
  a28b9a:	fff5c703          	lbu	a4,-1(a1)
  a28b9e:	fee78fa3          	sb	a4,-1(a5)
  a28ba2:	00467713          	andi	a4,a2,4
  a28ba6:	c359                	beqz	a4,a28c2c <memcpy+0x1da>
  a28ba8:	2198                	lbu	a4,0(a1)
  a28baa:	0791                	addi	a5,a5,4
  a28bac:	0591                	addi	a1,a1,4
  a28bae:	fee78e23          	sb	a4,-4(a5)
  a28bb2:	ffd5c703          	lbu	a4,-3(a1)
  a28bb6:	fee78ea3          	sb	a4,-3(a5)
  a28bba:	ffe5c703          	lbu	a4,-2(a1)
  a28bbe:	fee78f23          	sb	a4,-2(a5)
  a28bc2:	fff5c703          	lbu	a4,-1(a1)
  a28bc6:	fee78fa3          	sb	a4,-1(a5)
  a28bca:	a08d                	j	a28c2c <memcpy+0x1da>
  a28bcc:	0585                	addi	a1,a1,1
  a28bce:	fff5c703          	lbu	a4,-1(a1)
  a28bd2:	0785                	addi	a5,a5,1
  a28bd4:	167d                	addi	a2,a2,-1
  a28bd6:	fee78fa3          	sb	a4,-1(a5)
  a28bda:	bdad                	j	a28a54 <memcpy+0x2>
  a28bdc:	4194                	lw	a3,0(a1)
  a28bde:	07c1                	addi	a5,a5,16
  a28be0:	05c1                	addi	a1,a1,16
  a28be2:	fed7a823          	sw	a3,-16(a5)
  a28be6:	ff45a683          	lw	a3,-12(a1)
  a28bea:	1641                	addi	a2,a2,-16
  a28bec:	fed7aa23          	sw	a3,-12(a5)
  a28bf0:	ff85a683          	lw	a3,-8(a1)
  a28bf4:	fed7ac23          	sw	a3,-8(a5)
  a28bf8:	ffc5a683          	lw	a3,-4(a1)
  a28bfc:	fed7ae23          	sw	a3,-4(a5)
  a28c00:	fcc76ee3          	bltu	a4,a2,a28bdc <memcpy+0x18a>
  a28c04:	00867713          	andi	a4,a2,8
  a28c08:	cb11                	beqz	a4,a28c1c <memcpy+0x1ca>
  a28c0a:	4198                	lw	a4,0(a1)
  a28c0c:	07a1                	addi	a5,a5,8
  a28c0e:	05a1                	addi	a1,a1,8
  a28c10:	fee7ac23          	sw	a4,-8(a5)
  a28c14:	ffc5a703          	lw	a4,-4(a1)
  a28c18:	fee7ae23          	sw	a4,-4(a5)
  a28c1c:	00467713          	andi	a4,a2,4
  a28c20:	c711                	beqz	a4,a28c2c <memcpy+0x1da>
  a28c22:	4198                	lw	a4,0(a1)
  a28c24:	0791                	addi	a5,a5,4
  a28c26:	0591                	addi	a1,a1,4
  a28c28:	fee7ae23          	sw	a4,-4(a5)
  a28c2c:	00267713          	andi	a4,a2,2
  a28c30:	cb11                	beqz	a4,a28c44 <memcpy+0x1f2>
  a28c32:	2198                	lbu	a4,0(a1)
  a28c34:	0789                	addi	a5,a5,2
  a28c36:	0589                	addi	a1,a1,2
  a28c38:	fee78f23          	sb	a4,-2(a5)
  a28c3c:	fff5c703          	lbu	a4,-1(a1)
  a28c40:	fee78fa3          	sb	a4,-1(a5)
  a28c44:	8a05                	andi	a2,a2,1
  a28c46:	c219                	beqz	a2,a28c4c <memcpy+0x1fa>
  a28c48:	2198                	lbu	a4,0(a1)
  a28c4a:	a398                	sb	a4,0(a5)
  a28c4c:	8082                	ret
  a28c4e:	a394                	sb	a3,0(a5)
  a28c50:	3194                	lbu	a3,1(a1)
  a28c52:	1679                	addi	a2,a2,-2
  a28c54:	0589                	addi	a1,a1,2
  a28c56:	b394                	sb	a3,1(a5)
  a28c58:	4e45                	li	t3,17
  a28c5a:	0789                	addi	a5,a5,2
  a28c5c:	0025a303          	lw	t1,2(a1)
  a28c60:	0065a883          	lw	a7,6(a1)
  a28c64:	1641                	addi	a2,a2,-16
  a28c66:	01031813          	slli	a6,t1,0x10
  a28c6a:	60e8271b          	orshf	a4,a6,a4,srl,16
  a28c6e:	00a5a803          	lw	a6,10(a1)
  a28c72:	c398                	sw	a4,0(a5)
  a28c74:	01089693          	slli	a3,a7,0x10
  a28c78:	01081713          	slli	a4,a6,0x10
  a28c7c:	6117271b          	orshf	a4,a4,a7,srl,16
  a28c80:	c798                	sw	a4,8(a5)
  a28c82:	00e5a703          	lw	a4,14(a1)
  a28c86:	6066a69b          	orshf	a3,a3,t1,srl,16
  a28c8a:	c3d4                	sw	a3,4(a5)
  a28c8c:	01071693          	slli	a3,a4,0x10
  a28c90:	6106a69b          	orshf	a3,a3,a6,srl,16
  a28c94:	c7d4                	sw	a3,12(a5)
  a28c96:	05c1                	addi	a1,a1,16
  a28c98:	07c1                	addi	a5,a5,16
  a28c9a:	fcce61e3          	bltu	t3,a2,a28c5c <memcpy+0x20a>
  a28c9e:	bd15                	j	a28ad2 <memcpy+0x80>
  a28ca0:	a394                	sb	a3,0(a5)
  a28ca2:	0585                	addi	a1,a1,1
  a28ca4:	167d                	addi	a2,a2,-1
  a28ca6:	0785                	addi	a5,a5,1
  a28ca8:	4e49                	li	t3,18
  a28caa:	0035a303          	lw	t1,3(a1)
  a28cae:	0075a883          	lw	a7,7(a1)
  a28cb2:	1641                	addi	a2,a2,-16
  a28cb4:	01831813          	slli	a6,t1,0x18
  a28cb8:	50e8271b          	orshf	a4,a6,a4,srl,8
  a28cbc:	00b5a803          	lw	a6,11(a1)
  a28cc0:	c398                	sw	a4,0(a5)
  a28cc2:	01889693          	slli	a3,a7,0x18
  a28cc6:	01881713          	slli	a4,a6,0x18
  a28cca:	5117271b          	orshf	a4,a4,a7,srl,8
  a28cce:	c798                	sw	a4,8(a5)
  a28cd0:	00f5a703          	lw	a4,15(a1)
  a28cd4:	5066a69b          	orshf	a3,a3,t1,srl,8
  a28cd8:	c3d4                	sw	a3,4(a5)
  a28cda:	01871693          	slli	a3,a4,0x18
  a28cde:	5106a69b          	orshf	a3,a3,a6,srl,8
  a28ce2:	c7d4                	sw	a3,12(a5)
  a28ce4:	05c1                	addi	a1,a1,16
  a28ce6:	07c1                	addi	a5,a5,16
  a28ce8:	fcce61e3          	bltu	t3,a2,a28caa <memcpy+0x258>
  a28cec:	b3dd                	j	a28ad2 <memcpy+0x80>

00a28cee <memcmp>:
  a28cee:	962a                	add	a2,a2,a0
  a28cf0:	00c50c63          	beq	a0,a2,a28d08 <memcmp+0x1a>
  a28cf4:	211c                	lbu	a5,0(a0)
  a28cf6:	2198                	lbu	a4,0(a1)
  a28cf8:	00e78563          	beq	a5,a4,a28d02 <memcmp+0x14>
  a28cfc:	40e78533          	sub	a0,a5,a4
  a28d00:	8082                	ret
  a28d02:	0505                	addi	a0,a0,1
  a28d04:	0585                	addi	a1,a1,1
  a28d06:	b7ed                	j	a28cf0 <memcmp+0x2>
  a28d08:	4501                	li	a0,0
  a28d0a:	8082                	ret

00a28d0c <strlen>:
  a28d0c:	87aa                	mv	a5,a0
  a28d0e:	0037f713          	andi	a4,a5,3
  a28d12:	e31d                	bnez	a4,a28d38 <strlen+0x2c>
  a28d14:	fefe feff 059f      	l.li	a1,0xfefefeff
  a28d1a:	8080 8080 061f      	l.li	a2,0x80808080
  a28d20:	4394                	lw	a3,0(a5)
  a28d22:	00b68733          	add	a4,a3,a1
  a28d26:	fff6c693          	not	a3,a3
  a28d2a:	8f75                	and	a4,a4,a3
  a28d2c:	8f71                	and	a4,a4,a2
  a28d2e:	cf01                	beqz	a4,a28d46 <strlen+0x3a>
  a28d30:	2398                	lbu	a4,0(a5)
  a28d32:	c709                	beqz	a4,a28d3c <strlen+0x30>
  a28d34:	0785                	addi	a5,a5,1
  a28d36:	bfed                	j	a28d30 <strlen+0x24>
  a28d38:	2398                	lbu	a4,0(a5)
  a28d3a:	e701                	bnez	a4,a28d42 <strlen+0x36>
  a28d3c:	40a78533          	sub	a0,a5,a0
  a28d40:	8082                	ret
  a28d42:	0785                	addi	a5,a5,1
  a28d44:	b7e9                	j	a28d0e <strlen+0x2>
  a28d46:	0791                	addi	a5,a5,4
  a28d48:	bfe1                	j	a28d20 <strlen+0x14>

00a28d4a <memmove>:
  a28d4a:	882a                	mv	a6,a0
  a28d4c:	872e                	mv	a4,a1
  a28d4e:	87b2                	mv	a5,a2
  a28d50:	02b50f63          	beq	a0,a1,a28d8e <memmove+0x44>
  a28d54:	56f9                	li	a3,-2
  a28d56:	02d606b3          	mul	a3,a2,a3
  a28d5a:	40a588b3          	sub	a7,a1,a0
  a28d5e:	40c888b3          	sub	a7,a7,a2
  a28d62:	0116e363          	bltu	a3,a7,a28d68 <memmove+0x1e>
  a28d66:	b1f5                	j	a28a52 <memcpy>
  a28d68:	00a5c6b3          	xor	a3,a1,a0
  a28d6c:	8a8d                	andi	a3,a3,3
  a28d6e:	04b57863          	bgeu	a0,a1,a28dbe <memmove+0x74>
  a28d72:	c6a1                	beqz	a3,a28dba <memmove+0x70>
  a28d74:	86aa                	mv	a3,a0
  a28d76:	97b6                	add	a5,a5,a3
  a28d78:	00f68a63          	beq	a3,a5,a28d8c <memmove+0x42>
  a28d7c:	0705                	addi	a4,a4,1
  a28d7e:	fff74603          	lbu	a2,-1(a4)
  a28d82:	0685                	addi	a3,a3,1
  a28d84:	fec68fa3          	sb	a2,-1(a3)
  a28d88:	bfc5                	j	a28d78 <memmove+0x2e>
  a28d8a:	e781                	bnez	a5,a28d92 <memmove+0x48>
  a28d8c:	8742                	mv	a4,a6
  a28d8e:	853a                	mv	a0,a4
  a28d90:	8082                	ret
  a28d92:	0705                	addi	a4,a4,1
  a28d94:	fff74603          	lbu	a2,-1(a4)
  a28d98:	0685                	addi	a3,a3,1
  a28d9a:	17fd                	addi	a5,a5,-1
  a28d9c:	fec68fa3          	sb	a2,-1(a3)
  a28da0:	0036f613          	andi	a2,a3,3
  a28da4:	f27d                	bnez	a2,a28d8a <memmove+0x40>
  a28da6:	460d                	li	a2,3
  a28da8:	fcf677e3          	bgeu	a2,a5,a28d76 <memmove+0x2c>
  a28dac:	430c                	lw	a1,0(a4)
  a28dae:	17f1                	addi	a5,a5,-4
  a28db0:	0691                	addi	a3,a3,4
  a28db2:	feb6ae23          	sw	a1,-4(a3)
  a28db6:	0711                	addi	a4,a4,4
  a28db8:	bfc5                	j	a28da8 <memmove+0x5e>
  a28dba:	86aa                	mv	a3,a0
  a28dbc:	b7d5                	j	a28da0 <memmove+0x56>
  a28dbe:	ee81                	bnez	a3,a28dd6 <memmove+0x8c>
  a28dc0:	962a                	add	a2,a2,a0
  a28dc2:	00f586b3          	add	a3,a1,a5
  a28dc6:	00367593          	andi	a1,a2,3
  a28dca:	40e687b3          	sub	a5,a3,a4
  a28dce:	ed89                	bnez	a1,a28de8 <memmove+0x9e>
  a28dd0:	468d                	li	a3,3
  a28dd2:	02f6e363          	bltu	a3,a5,a28df8 <memmove+0xae>
  a28dd6:	dbdd                	beqz	a5,a28d8c <memmove+0x42>
  a28dd8:	17fd                	addi	a5,a5,-1
  a28dda:	00f706b3          	add	a3,a4,a5
  a28dde:	2290                	lbu	a2,0(a3)
  a28de0:	00f806b3          	add	a3,a6,a5
  a28de4:	a290                	sb	a2,0(a3)
  a28de6:	bfc5                	j	a28dd6 <memmove+0x8c>
  a28de8:	167d                	addi	a2,a2,-1
  a28dea:	fad701e3          	beq	a4,a3,a28d8c <memmove+0x42>
  a28dee:	fff6c783          	lbu	a5,-1(a3)
  a28df2:	16fd                	addi	a3,a3,-1
  a28df4:	a21c                	sb	a5,0(a2)
  a28df6:	bfc1                	j	a28dc6 <memmove+0x7c>
  a28df8:	17f1                	addi	a5,a5,-4
  a28dfa:	00f70633          	add	a2,a4,a5
  a28dfe:	420c                	lw	a1,0(a2)
  a28e00:	00f80633          	add	a2,a6,a5
  a28e04:	c20c                	sw	a1,0(a2)
  a28e06:	b7f1                	j	a28dd2 <memmove+0x88>

00a28e08 <reset>:
  a28e08:	8018                	push	{ra},-16
  a28e0a:	705030ef          	jal	ra,a2cd0e <update_reset_count>
  a28e0e:	400027b7          	lui	a5,0x40002
  a28e12:	4711                	li	a4,4
  a28e14:	10e79823          	sh	a4,272(a5) # 40002110 <_gp_+0x3f5cd8fc>
  a28e18:	a001                	j	a28e18 <reset+0x10>

00a28e1a <boot_fail>:
  a28e1a:	a001                	j	a28e1a <boot_fail>

00a28e1c <boot_regist_flash_cmd>:
  a28e1c:	8018                	push	{ra},-16
  a28e1e:	862a                	mv	a2,a0
  a28e20:	46d1                	li	a3,20
  a28e22:	45d1                	li	a1,20
  a28e24:	00a0 5500 051f      	l.li	a0,0xa05500
  a28e2a:	471070ef          	jal	ra,a30a9a <memcpy_s>
  a28e2e:	c501                	beqz	a0,a28e36 <boot_regist_flash_cmd+0x1a>
  a28e30:	80000537          	lui	a0,0x80000
  a28e34:	0511                	addi	a0,a0,4 # 80000004 <_gp_+0x7f5cb7f0>
  a28e36:	8014                	popret	{ra},16

00a28e38 <jump_to_execute_addr>:
  a28e38:	8018                	push	{ra},-16
  a28e3a:	9502                	jalr	a0
  a28e3c:	8010                	pop	{ra},16
  a28e3e:	bff1                	j	a28e1a <boot_fail>

00a28e40 <ws63_set_try_fix_cnt>:
  a28e40:	40000737          	lui	a4,0x40000
  a28e44:	471c                	lw	a5,8(a4)
  a28e46:	893d                	andi	a0,a0,15
  a28e48:	9bc1                	andi	a5,a5,-16
  a28e4a:	8fc9                	or	a5,a5,a0
  a28e4c:	c71c                	sw	a5,8(a4)
  a28e4e:	8082                	ret

00a28e50 <sfc_flash_erase>:
  a28e50:	ffe007b7          	lui	a5,0xffe00
  a28e54:	953e                	add	a0,a0,a5
  a28e56:	2390306f          	j	a2c88e <uapi_sfc_reg_erase>

00a28e5a <sfc_flash_write>:
  a28e5a:	87b2                	mv	a5,a2
  a28e5c:	862e                	mv	a2,a1
  a28e5e:	85be                	mv	a1,a5
  a28e60:	1310306f          	j	a2c790 <uapi_sfc_reg_write>

00a28e64 <sfc_flash_read>:
  a28e64:	87b2                	mv	a5,a2
  a28e66:	862e                	mv	a2,a1
  a28e68:	85be                	mv	a1,a5
  a28e6a:	0530306f          	j	a2c6bc <uapi_sfc_reg_read>

00a28e6e <sfc_flash_init>:
  a28e6e:	00a3 1e50 051f      	l.li	a0,0xa31e50
  a28e74:	79e0306f          	j	a2c612 <uapi_sfc_init>

00a28e78 <start_fastboot>:
  a28e78:	8b58                	push	{ra,s0-s3},-208
  a28e7a:	d602                	sw	zero,44(sp)
  a28e7c:	d802                	sw	zero,48(sp)
  a28e7e:	da02                	sw	zero,52(sp)
  a28e80:	40003637          	lui	a2,0x40003
  a28e84:	23862783          	lw	a5,568(a2) # 40003238 <_gp_+0x3f5cea24>
  a28e88:	0037d693          	srli	a3,a5,0x3
  a28e8c:	0027d713          	srli	a4,a5,0x2
  a28e90:	8a85                	andi	a3,a3,1
  a28e92:	8b05                	andi	a4,a4,1
  a28e94:	00e68a63          	beq	a3,a4,a28ea8 <start_fastboot+0x30>
  a28e98:	0047f713          	andi	a4,a5,4
  a28e9c:	e711                	bnez	a4,a28ea8 <start_fastboot+0x30>
  a28e9e:	9bf9                	andi	a5,a5,-2
  a28ea0:	0027e793          	ori	a5,a5,2
  a28ea4:	22f62c23          	sw	a5,568(a2)
  a28ea8:	40003737          	lui	a4,0x40003
  a28eac:	40872783          	lw	a5,1032(a4) # 40003408 <_gp_+0x3f5cebf4>
  a28eb0:	0387e793          	ori	a5,a5,56
  a28eb4:	40f72423          	sw	a5,1032(a4)
  a28eb8:	3d1030ef          	jal	ra,a2ca88 <boot_clock_adapt>
  a28ebc:	451d                	li	a0,7
  a28ebe:	123010ef          	jal	ra,a2a7e0 <uapi_watchdog_init>
  a28ec2:	4501                	li	a0,0
  a28ec4:	16f010ef          	jal	ra,a2a832 <uapi_watchdog_enable>
  a28ec8:	0001 c200 079f      	l.li	a5,0x1c200
  a28ece:	dc3e                	sw	a5,56(sp)
  a28ed0:	10800793          	li	a5,264
  a28ed4:	de3e                	sw	a5,60(sp)
  a28ed6:	0004 0102 079f      	l.li	a5,0x40102
  a28edc:	c0be                	sw	a5,64(sp)
  a28ede:	3f4010ef          	jal	ra,a2a2d2 <uapi_tcxo_init>
  a28ee2:	4631                	li	a2,12
  a28ee4:	182c                	addi	a1,sp,56
  a28ee6:	0808                	addi	a0,sp,16
  a28ee8:	36ad                	jal	ra,a28a52 <memcpy>
  a28eea:	4581                	li	a1,0
  a28eec:	0808                	addi	a0,sp,16
  a28eee:	591030ef          	jal	ra,a2cc7e <hiburn_uart_init>
  a28ef2:	46d030ef          	jal	ra,a2cb5e <serial_set_mute>
  a28ef6:	00a3 1e5c 051f      	l.li	a0,0xa31e5c
  a28efc:	523030ef          	jal	ra,a2cc1e <boot_msg0>
  a28f00:	561040ef          	jal	ra,a2dc60 <uapi_partition_init>
  a28f04:	1f6030ef          	jal	ra,a2c0fa <pmp_enable>
  a28f08:	31b030ef          	jal	ra,a2ca22 <malloc_port_init>
  a28f0c:	00a3 1e78 051f      	l.li	a0,0xa31e78
  a28f12:	50d030ef          	jal	ra,a2cc1e <boot_msg0>
  a28f16:	00a2 8e6e 079f      	l.li	a5,0xa28e6e
  a28f1c:	c2be                	sw	a5,68(sp)
  a28f1e:	00a2 8e64 079f      	l.li	a5,0xa28e64
  a28f24:	c4be                	sw	a5,72(sp)
  a28f26:	00a2 8e5a 079f      	l.li	a5,0xa28e5a
  a28f2c:	c6be                	sw	a5,76(sp)
  a28f2e:	00c8                	addi	a0,sp,68
  a28f30:	00a2 8e50 079f      	l.li	a5,0xa28e50
  a28f36:	c8be                	sw	a5,80(sp)
  a28f38:	ca82                	sw	zero,84(sp)
  a28f3a:	35cd                	jal	ra,a28e1c <boot_regist_flash_cmd>
  a28f3c:	3f0d                	jal	ra,a28e6e <sfc_flash_init>
  a28f3e:	c62a                	sw	a0,12(sp)
  a28f40:	1e050063          	beqz	a0,a29120 <start_fastboot+0x2a8>
  a28f44:	427030ef          	jal	ra,a2cb6a <serial_cancel_mute>
  a28f48:	45b2                	lw	a1,12(sp)
  a28f4a:	00a3 1e94 051f      	l.li	a0,0xa31e94
  a28f50:	4e1030ef          	jal	ra,a2cc30 <boot_msg1>
  a28f54:	40b030ef          	jal	ra,a2cb5e <serial_set_mute>
  a28f58:	375030ef          	jal	ra,a2cacc <switch_flash_clock_to_pll>
  a28f5c:	39d030ef          	jal	ra,a2caf8 <config_sfc_ctrl_ds>
  a28f60:	4c0030ef          	jal	ra,a2c420 <sfc_port_fix_sr>
  a28f64:	cd01                	beqz	a0,a28f7c <start_fastboot+0x104>
  a28f66:	c62a                	sw	a0,12(sp)
  a28f68:	403030ef          	jal	ra,a2cb6a <serial_cancel_mute>
  a28f6c:	45b2                	lw	a1,12(sp)
  a28f6e:	00a3 1ec0 051f      	l.li	a0,0xa31ec0
  a28f74:	4bd030ef          	jal	ra,a2cc30 <boot_msg1>
  a28f78:	3e7030ef          	jal	ra,a2cb5e <serial_set_mute>
  a28f7c:	400037b7          	lui	a5,0x40003
  a28f80:	2387a783          	lw	a5,568(a5) # 40003238 <_gp_+0x3f5cea24>
  a28f84:	0027f693          	andi	a3,a5,2
  a28f88:	0087f713          	andi	a4,a5,8
  a28f8c:	1a068063          	beqz	a3,a2912c <start_fastboot+0x2b4>
  a28f90:	8b85                	andi	a5,a5,1
  a28f92:	03300593          	li	a1,51
  a28f96:	c391                	beqz	a5,a28f9a <start_fastboot+0x122>
  a28f98:	45e1                	li	a1,24
  a28f9a:	03300613          	li	a2,51
  a28f9e:	c311                	beqz	a4,a28fa2 <start_fastboot+0x12a>
  a28fa0:	4661                	li	a2,24
  a28fa2:	00a3 1ed4 051f      	l.li	a0,0xa31ed4
  a28fa8:	4a5030ef          	jal	ra,a2cc4c <boot_msg2>
  a28fac:	25d030ef          	jal	ra,a2ca08 <set_efuse_period>
  a28fb0:	163010ef          	jal	ra,a2a912 <uapi_efuse_init>
  a28fb4:	67c040ef          	jal	ra,a2d630 <ws63_upg_init>
  a28fb8:	182c                	addi	a1,sp,56
  a28fba:	02100513          	li	a0,33
  a28fbe:	d402                	sw	zero,40(sp)
  a28fc0:	51f040ef          	jal	ra,a2dcde <uapi_partition_get_info>
  a28fc4:	e509                	bnez	a0,a28fce <start_fastboot+0x156>
  a28fc6:	03814783          	lbu	a5,56(sp)
  a28fca:	16078b63          	beqz	a5,a29140 <start_fastboot+0x2c8>
  a28fce:	10500593          	li	a1,261
  a28fd2:	00a3 1f08 051f      	l.li	a0,0xa31f08
  a28fd8:	459030ef          	jal	ra,a2cc30 <boot_msg1>
  a28fdc:	106c                	addi	a1,sp,44
  a28fde:	02000513          	li	a0,32
  a28fe2:	4fd040ef          	jal	ra,a2dcde <uapi_partition_get_info>
  a28fe6:	c919                	beqz	a0,a28ffc <start_fastboot+0x184>
  a28fe8:	383030ef          	jal	ra,a2cb6a <serial_cancel_mute>
  a28fec:	00a3 1fbc 051f      	l.li	a0,0xa31fbc
  a28ff2:	42d030ef          	jal	ra,a2cc1e <boot_msg0>
  a28ff6:	369030ef          	jal	ra,a2cb5e <serial_set_mute>
  a28ffa:	3539                	jal	ra,a28e08 <reset>
  a28ffc:	5442                	lw	s0,48(sp)
  a28ffe:	002007b7          	lui	a5,0x200
  a29002:	10078993          	addi	s3,a5,256 # 200100 <__heap_size+0x1e2b08>
  a29006:	99a2                	add	s3,s3,s0
  a29008:	c282                	sw	zero,68(sp)
  a2900a:	c482                	sw	zero,72(sp)
  a2900c:	c682                	sw	zero,76(sp)
  a2900e:	c882                	sw	zero,80(sp)
  a29010:	5952                	lw	s2,52(sp)
  a29012:	0489a703          	lw	a4,72(s3)
  a29016:	00f404b3          	add	s1,s0,a5
  a2901a:	30078793          	addi	a5,a5,768
  a2901e:	943e                	add	s0,s0,a5
  a29020:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a29026:	9926                	add	s2,s2,s1
  a29028:	1af71a63          	bne	a4,a5,a291dc <start_fastboot+0x364>
  a2902c:	00a3 1fd8 051f      	l.li	a0,0xa31fd8
  a29032:	3ed030ef          	jal	ra,a2cc1e <boot_msg0>
  a29036:	00a2 8080 059f      	l.li	a1,0xa28080
  a2903c:	8626                	mv	a2,s1
  a2903e:	4519                	li	a0,6
  a29040:	21d5                	jal	ra,a29524 <verify_image_head>
  a29042:	85aa                	mv	a1,a0
  a29044:	24050a63          	beqz	a0,a29298 <start_fastboot+0x420>
  a29048:	00a3 2060 051f      	l.li	a0,0xa32060
  a2904e:	3e3030ef          	jal	ra,a2cc30 <boot_msg1>
  a29052:	319030ef          	jal	ra,a2cb6a <serial_cancel_mute>
  a29056:	00a3 21b4 051f      	l.li	a0,0xa321b4
  a2905c:	3c3030ef          	jal	ra,a2cc1e <boot_msg0>
  a29060:	2ff030ef          	jal	ra,a2cb5e <serial_set_mute>
  a29064:	400007b7          	lui	a5,0x40000
  a29068:	4788                	lw	a0,8(a5)
  a2906a:	893d                	andi	a0,a0,15
  a2906c:	478d                	li	a5,3
  a2906e:	22f57f63          	bgeu	a0,a5,a292ac <start_fastboot+0x434>
  a29072:	0505                	addi	a0,a0,1
  a29074:	33f1                	jal	ra,a28e40 <ws63_set_try_fix_cnt>
  a29076:	3b49                	jal	ra,a28e08 <reset>
  a29078:	4501                	li	a0,0
  a2907a:	481030ef          	jal	ra,a2ccfa <set_reset_count>
  a2907e:	4501                	li	a0,0
  a29080:	33c1                	jal	ra,a28e40 <ws63_set_try_fix_cnt>
  a29082:	4671                	li	a2,28
  a29084:	4581                	li	a1,0
  a29086:	00c8                	addi	a0,sp,68
  a29088:	3a31                	jal	ra,a289a4 <memset>
  a2908a:	00c8                	addi	a0,sp,68
  a2908c:	18b040ef          	jal	ra,a2da16 <mfg_get_ftm_run_region>
  a29090:	c90d                	beqz	a0,a290c2 <start_fastboot+0x24a>
  a29092:	47a6                	lw	a5,72(sp)
  a29094:	4b7c f333 071f      	l.li	a4,0x4b7cf333
  a2909a:	4394                	lw	a3,0(a5)
  a2909c:	02e69363          	bne	a3,a4,a290c2 <start_fastboot+0x24a>
  a290a0:	4766                	lw	a4,88(sp)
  a290a2:	e305                	bnez	a4,a290c2 <start_fastboot+0x24a>
  a290a4:	4746                	lw	a4,80(sp)
  a290a6:	00c4d693          	srli	a3,s1,0xc
  a290aa:	83b1                	srli	a5,a5,0xc
  a290ac:	94ba                	add	s1,s1,a4
  a290ae:	44008737          	lui	a4,0x44008
  a290b2:	80d72023          	sw	a3,-2048(a4) # 44007800 <_gp_+0x435d2fec>
  a290b6:	80b1                	srli	s1,s1,0xc
  a290b8:	82972023          	sw	s1,-2016(a4)
  a290bc:	8f95                	sub	a5,a5,a3
  a290be:	84f72023          	sw	a5,-1984(a4)
  a290c2:	400007b7          	lui	a5,0x40000
  a290c6:	53d8                	lw	a4,36(a5)
  a290c8:	0207a223          	sw	zero,36(a5) # 40000024 <_gp_+0x3f5cb810>
  a290cc:	5a5a 5a5a 079f      	l.li	a5,0x5a5a5a5a
  a290d2:	04f71263          	bne	a4,a5,a29116 <start_fastboot+0x29e>
  a290d6:	295030ef          	jal	ra,a2cb6a <serial_cancel_mute>
  a290da:	00d010ef          	jal	ra,a2a8e6 <uapi_watchdog_kick>
  a290de:	00a3 2124 051f      	l.li	a0,0xa32124
  a290e4:	33b030ef          	jal	ra,a2cc1e <boot_msg0>
  a290e8:	182c                	addi	a1,sp,56
  a290ea:	4509                	li	a0,2
  a290ec:	dc02                	sw	zero,56(sp)
  a290ee:	de02                	sw	zero,60(sp)
  a290f0:	c082                	sw	zero,64(sp)
  a290f2:	c282                	sw	zero,68(sp)
  a290f4:	c482                	sw	zero,72(sp)
  a290f6:	c682                	sw	zero,76(sp)
  a290f8:	3e7040ef          	jal	ra,a2dcde <uapi_partition_get_info>
  a290fc:	84aa                	mv	s1,a0
  a290fe:	00cc                	addi	a1,sp,68
  a29100:	4505                	li	a0,1
  a29102:	3dd040ef          	jal	ra,a2dcde <uapi_partition_get_info>
  a29106:	8d45                	or	a0,a0,s1
  a29108:	20050363          	beqz	a0,a2930e <start_fastboot+0x496>
  a2910c:	00a3 2140 051f      	l.li	a0,0xa32140
  a29112:	30d030ef          	jal	ra,a2cc1e <boot_msg0>
  a29116:	7d0010ef          	jal	ra,a2a8e6 <uapi_watchdog_kick>
  a2911a:	8522                	mv	a0,s0
  a2911c:	3b31                	jal	ra,a28e38 <jump_to_execute_addr>
  a2911e:	8b54                	popret	{ra,s0-s3},208
  a29120:	00a3 1eac 051f      	l.li	a0,0xa31eac
  a29126:	2f9030ef          	jal	ra,a2cc1e <boot_msg0>
  a2912a:	b53d                	j	a28f58 <start_fastboot+0xe0>
  a2912c:	03300593          	li	a1,51
  a29130:	c311                	beqz	a4,a29134 <start_fastboot+0x2bc>
  a29132:	45e1                	li	a1,24
  a29134:	00a3 1ef0 051f      	l.li	a0,0xa31ef0
  a2913a:	2f7030ef          	jal	ra,a2cc30 <boot_msg1>
  a2913e:	b5bd                	j	a28fac <start_fastboot+0x134>
  a29140:	1028                	addi	a0,sp,40
  a29142:	342040ef          	jal	ra,a2d484 <upg_get_upgrade_flag_flash_start_addr>
  a29146:	5522                	lw	a0,40(sp)
  a29148:	06c00593          	li	a1,108
  a2914c:	00d0                	addi	a2,sp,68
  a2914e:	3d0040ef          	jal	ra,a2d51e <upg_flash_read>
  a29152:	85aa                	mv	a1,a0
  a29154:	c509                	beqz	a0,a2915e <start_fastboot+0x2e6>
  a29156:	00a3 1f28 051f      	l.li	a0,0xa31f28
  a2915c:	bdb5                	j	a28fd8 <start_fastboot+0x160>
  a2915e:	4716                	lw	a4,68(sp)
  a29160:	55aa 55aa 079f      	l.li	a5,0x55aa55aa
  a29166:	00f71a63          	bne	a4,a5,a2917a <start_fastboot+0x302>
  a2916a:	573a                	lw	a4,172(sp)
  a2916c:	aa55 aa55 079f      	l.li	a5,0xaa55aa55
  a29172:	00f71463          	bne	a4,a5,a2917a <start_fastboot+0x302>
  a29176:	57aa                	lw	a5,168(sp)
  a29178:	e799                	bnez	a5,a29186 <start_fastboot+0x30e>
  a2917a:	00a3 1f40 051f      	l.li	a0,0xa31f40
  a29180:	29f030ef          	jal	ra,a2cc1e <boot_msg0>
  a29184:	bda1                	j	a28fdc <start_fastboot+0x164>
  a29186:	1e5030ef          	jal	ra,a2cb6a <serial_cancel_mute>
  a2918a:	00a3 1f58 051f      	l.li	a0,0xa31f58
  a29190:	28f030ef          	jal	ra,a2cc1e <boot_msg0>
  a29194:	2b1050ef          	jal	ra,a2ec44 <uapi_upg_start>
  a29198:	800037b7          	lui	a5,0x80003
  a2919c:	04778693          	addi	a3,a5,71 # 80003047 <_gp_+0x7f5ce833>
  a291a0:	00a32737          	lui	a4,0xa32
  a291a4:	02d50463          	beq	a0,a3,a291cc <start_fastboot+0x354>
  a291a8:	04078793          	addi	a5,a5,64
  a291ac:	02f50063          	beq	a0,a5,a291cc <start_fastboot+0x354>
  a291b0:	cd11                	beqz	a0,a291cc <start_fastboot+0x354>
  a291b2:	f6870513          	addi	a0,a4,-152 # a31f68 <sfc_cfg+0x118>
  a291b6:	269030ef          	jal	ra,a2cc1e <boot_msg0>
  a291ba:	00a3 1f84 051f      	l.li	a0,0xa31f84
  a291c0:	25f030ef          	jal	ra,a2cc1e <boot_msg0>
  a291c4:	19b030ef          	jal	ra,a2cb5e <serial_set_mute>
  a291c8:	3181                	jal	ra,a28e08 <reset>
  a291ca:	bd09                	j	a28fdc <start_fastboot+0x164>
  a291cc:	f6870513          	addi	a0,a4,-152
  a291d0:	24f030ef          	jal	ra,a2cc1e <boot_msg0>
  a291d4:	00a3 1fa0 051f      	l.li	a0,0xa31fa0
  a291da:	b7dd                	j	a291c0 <start_fastboot+0x348>
  a291dc:	012467b3          	or	a5,s0,s2
  a291e0:	0ff7f793          	andi	a5,a5,255
  a291e4:	cf89                	beqz	a5,a291fe <start_fastboot+0x386>
  a291e6:	185030ef          	jal	ra,a2cb6a <serial_cancel_mute>
  a291ea:	864a                	mv	a2,s2
  a291ec:	85a6                	mv	a1,s1
  a291ee:	00a3 1ff0 051f      	l.li	a0,0xa31ff0
  a291f4:	259030ef          	jal	ra,a2cc4c <boot_msg2>
  a291f8:	167030ef          	jal	ra,a2cb5e <serial_set_mute>
  a291fc:	3131                	jal	ra,a28e08 <reset>
  a291fe:	00a3 200c 051f      	l.li	a0,0xa3200c
  a29204:	21b030ef          	jal	ra,a2cc1e <boot_msg0>
  a29208:	04c98793          	addi	a5,s3,76
  a2920c:	c4be                	sw	a5,72(sp)
  a2920e:	47f1                	li	a5,28
  a29210:	c6be                	sw	a5,76(sp)
  a29212:	4641                	li	a2,16
  a29214:	4785                	li	a5,1
  a29216:	00cc                	addi	a1,sp,68
  a29218:	0808                	addi	a0,sp,16
  a2921a:	04f10823          	sb	a5,80(sp)
  a2921e:	835ff0ef          	jal	ra,a28a52 <memcpy>
  a29222:	0808                	addi	a0,sp,16
  a29224:	1f1000ef          	jal	ra,a29c14 <drv_rom_cipher_config_odrk1>
  a29228:	cd09                	beqz	a0,a29242 <start_fastboot+0x3ca>
  a2922a:	c62a                	sw	a0,12(sp)
  a2922c:	13f030ef          	jal	ra,a2cb6a <serial_cancel_mute>
  a29230:	45b2                	lw	a1,12(sp)
  a29232:	00a3 2024 051f      	l.li	a0,0xa32024
  a29238:	1f9030ef          	jal	ra,a2cc30 <boot_msg1>
  a2923c:	123030ef          	jal	ra,a2cb5e <serial_set_mute>
  a29240:	36e1                	jal	ra,a28e08 <reset>
  a29242:	4741                	li	a4,16
  a29244:	06c98693          	addi	a3,s3,108
  a29248:	864a                	mv	a2,s2
  a2924a:	85a2                	mv	a1,s0
  a2924c:	4501                	li	a0,0
  a2924e:	22b000ef          	jal	ra,a29c78 <drv_rom_cipher_fapc_config>
  a29252:	cd09                	beqz	a0,a2926c <start_fastboot+0x3f4>
  a29254:	c62a                	sw	a0,12(sp)
  a29256:	115030ef          	jal	ra,a2cb6a <serial_cancel_mute>
  a2925a:	45b2                	lw	a1,12(sp)
  a2925c:	00a3 2038 051f      	l.li	a0,0xa32038
  a29262:	1cf030ef          	jal	ra,a2cc30 <boot_msg1>
  a29266:	0f9030ef          	jal	ra,a2cb5e <serial_set_mute>
  a2926a:	3e79                	jal	ra,a28e08 <reset>
  a2926c:	4685                	li	a3,1
  a2926e:	00a00637          	lui	a2,0xa00
  a29272:	85ca                	mv	a1,s2
  a29274:	4505                	li	a0,1
  a29276:	249000ef          	jal	ra,a29cbe <drv_rom_cipher_fapc_bypass_config>
  a2927a:	da050ee3          	beqz	a0,a29036 <start_fastboot+0x1be>
  a2927e:	c62a                	sw	a0,12(sp)
  a29280:	0eb030ef          	jal	ra,a2cb6a <serial_cancel_mute>
  a29284:	45b2                	lw	a1,12(sp)
  a29286:	00a3 204c 051f      	l.li	a0,0xa3204c
  a2928c:	1a5030ef          	jal	ra,a2cc30 <boot_msg1>
  a29290:	0cf030ef          	jal	ra,a2cb5e <serial_set_mute>
  a29294:	3e95                	jal	ra,a28e08 <reset>
  a29296:	b345                	j	a29036 <start_fastboot+0x1be>
  a29298:	85a2                	mv	a1,s0
  a2929a:	8526                	mv	a0,s1
  a2929c:	2195                	jal	ra,a29700 <verify_image_body>
  a2929e:	85aa                	mv	a1,a0
  a292a0:	dc050ce3          	beqz	a0,a29078 <start_fastboot+0x200>
  a292a4:	00a3 2080 051f      	l.li	a0,0xa32080
  a292aa:	b355                	j	a2904e <start_fastboot+0x1d6>
  a292ac:	4799                	li	a5,6
  a292ae:	dcf574e3          	bgeu	a0,a5,a29076 <start_fastboot+0x1fe>
  a292b2:	0505                	addi	a0,a0,1
  a292b4:	3671                	jal	ra,a28e40 <ws63_set_try_fix_cnt>
  a292b6:	00c8                	addi	a0,sp,68
  a292b8:	c282                	sw	zero,68(sp)
  a292ba:	45b040ef          	jal	ra,a2df14 <upg_get_package_header>
  a292be:	85aa                	mv	a1,a0
  a292c0:	e119                	bnez	a0,a292c6 <start_fastboot+0x44e>
  a292c2:	4516                	lw	a0,68(sp)
  a292c4:	e519                	bnez	a0,a292d2 <start_fastboot+0x45a>
  a292c6:	00a3 20a0 051f      	l.li	a0,0xa320a0
  a292cc:	165030ef          	jal	ra,a2cc30 <boot_msg1>
  a292d0:	b35d                	j	a29076 <start_fastboot+0x1fe>
  a292d2:	380050ef          	jal	ra,a2e652 <uapi_upg_verify_file>
  a292d6:	85aa                	mv	a1,a0
  a292d8:	c509                	beqz	a0,a292e2 <start_fastboot+0x46a>
  a292da:	00a3 20bc 051f      	l.li	a0,0xa320bc
  a292e0:	b7f5                	j	a292cc <start_fastboot+0x454>
  a292e2:	442050ef          	jal	ra,a2e724 <uapi_upg_reset_upgrade_flag>
  a292e6:	85aa                	mv	a1,a0
  a292e8:	c509                	beqz	a0,a292f2 <start_fastboot+0x47a>
  a292ea:	00a3 20d4 051f      	l.li	a0,0xa320d4
  a292f0:	bff1                	j	a292cc <start_fastboot+0x454>
  a292f2:	4a8050ef          	jal	ra,a2e79a <uapi_upg_request_upgrade>
  a292f6:	85aa                	mv	a1,a0
  a292f8:	c509                	beqz	a0,a29302 <start_fastboot+0x48a>
  a292fa:	00a3 20f4 051f      	l.li	a0,0xa320f4
  a29300:	b7f1                	j	a292cc <start_fastboot+0x454>
  a29302:	00a3 2110 051f      	l.li	a0,0xa32110
  a29308:	117030ef          	jal	ra,a2cc1e <boot_msg0>
  a2930c:	b3ad                	j	a29076 <start_fastboot+0x1fe>
  a2930e:	45b6                	lw	a1,76(sp)
  a29310:	4526                	lw	a0,72(sp)
  a29312:	57c030ef          	jal	ra,a2c88e <uapi_sfc_reg_erase>
  a29316:	85aa                	mv	a1,a0
  a29318:	c511                	beqz	a0,a29324 <start_fastboot+0x4ac>
  a2931a:	00a3 2164 051f      	l.li	a0,0xa32164
  a29320:	111030ef          	jal	ra,a2cc30 <boot_msg1>
  a29324:	57f2                	lw	a5,60(sp)
  a29326:	4606                	lw	a2,64(sp)
  a29328:	4526                	lw	a0,72(sp)
  a2932a:	002005b7          	lui	a1,0x200
  a2932e:	95be                	add	a1,a1,a5
  a29330:	460030ef          	jal	ra,a2c790 <uapi_sfc_reg_write>
  a29334:	85aa                	mv	a1,a0
  a29336:	c511                	beqz	a0,a29342 <start_fastboot+0x4ca>
  a29338:	00a3 2184 051f      	l.li	a0,0xa32184
  a2933e:	0f3030ef          	jal	ra,a2cc30 <boot_msg1>
  a29342:	00a3 21a4 051f      	l.li	a0,0xa321a4
  a29348:	0d7030ef          	jal	ra,a2cc1e <boot_msg0>
  a2934c:	013030ef          	jal	ra,a2cb5e <serial_set_mute>
  a29350:	b3d9                	j	a29116 <start_fastboot+0x29e>

00a29352 <check_image_id>:
  a29352:	00a326b7          	lui	a3,0xa32
  a29356:	26c68713          	addi	a4,a3,620 # a3226c <g_verify_table>
  a2935a:	4781                	li	a5,0
  a2935c:	26c68693          	addi	a3,a3,620
  a29360:	4839                	li	a6,14
  a29362:	00074883          	lbu	a7,0(a4)
  a29366:	02a89463          	bne	a7,a0,a2938e <check_image_id+0x3c>
  a2936a:	00174883          	lbu	a7,1(a4)
  a2936e:	02b89063          	bne	a7,a1,a2938e <check_image_id+0x3c>
  a29372:	0cf697db          	muliadd	a5,a3,a5,12
  a29376:	43dc                	lw	a5,4(a5)
  a29378:	4501                	li	a0,0
  a2937a:	02c78063          	beq	a5,a2,a2939a <check_image_id+0x48>
  a2937e:	8018                	push	{ra},-16
  a29380:	00a3 21ec 051f      	l.li	a0,0xa321ec
  a29386:	099030ef          	jal	ra,a2cc1e <boot_msg0>
  a2938a:	557d                	li	a0,-1
  a2938c:	8014                	popret	{ra},16
  a2938e:	0785                	addi	a5,a5,1
  a29390:	0731                	addi	a4,a4,12
  a29392:	fd0798e3          	bne	a5,a6,a29362 <check_image_id+0x10>
  a29396:	4781                	li	a5,0
  a29398:	b7c5                	j	a29378 <check_image_id+0x26>
  a2939a:	8082                	ret

00a2939c <check_verify_enable>:
  a2939c:	8118                	push	{ra},-32
  a2939e:	57fd                	li	a5,-1
  a293a0:	4605                	li	a2,1
  a293a2:	00f10593          	addi	a1,sp,15
  a293a6:	451d                	li	a0,7
  a293a8:	00f107a3          	sb	a5,15(sp)
  a293ac:	64e030ef          	jal	ra,a2c9fa <efuse_read_item>
  a293b0:	c901                	beqz	a0,a293c0 <check_verify_enable+0x24>
  a293b2:	00a3 2230 051f      	l.li	a0,0xa32230
  a293b8:	067030ef          	jal	ra,a2cc1e <boot_msg0>
  a293bc:	557d                	li	a0,-1
  a293be:	8114                	popret	{ra},32
  a293c0:	00f14783          	lbu	a5,15(sp)
  a293c4:	4501                	li	a0,0
  a293c6:	ffe5                	bnez	a5,a293be <check_verify_enable+0x22>
  a293c8:	80000537          	lui	a0,0x80000
  a293cc:	0509                	addi	a0,a0,2 # 80000002 <_gp_+0x7f5cb7ee>
  a293ce:	bfc5                	j	a293be <check_verify_enable+0x22>

00a293d0 <check_msid>:
  a293d0:	8138                	push	{ra,s0-s1},-32
  a293d2:	842a                	mv	s0,a0
  a293d4:	84ae                	mv	s1,a1
  a293d6:	4611                	li	a2,4
  a293d8:	006c                	addi	a1,sp,12
  a293da:	4519                	li	a0,6
  a293dc:	c602                	sw	zero,12(sp)
  a293de:	61c030ef          	jal	ra,a2c9fa <efuse_read_item>
  a293e2:	c901                	beqz	a0,a293f2 <check_msid+0x22>
  a293e4:	00a3 21fc 051f      	l.li	a0,0xa321fc
  a293ea:	035030ef          	jal	ra,a2cc1e <boot_msg0>
  a293ee:	557d                	li	a0,-1
  a293f0:	8134                	popret	{ra,s0-s1},32
  a293f2:	47b2                	lw	a5,12(sp)
  a293f4:	4501                	li	a0,0
  a293f6:	8c3d                	xor	s0,s0,a5
  a293f8:	8c65                	and	s0,s0,s1
  a293fa:	d87d                	beqz	s0,a293f0 <check_msid+0x20>
  a293fc:	00a3 221c 051f      	l.li	a0,0xa3221c
  a29402:	b7e5                	j	a293ea <check_msid+0x1a>

00a29404 <secure_authenticate.constprop.2>:
  a29404:	8448                	push	{ra,s0-s2},-80
  a29406:	02010913          	addi	s2,sp,32
  a2940a:	84aa                	mv	s1,a0
  a2940c:	8436                	mv	s0,a3
  a2940e:	852e                	mv	a0,a1
  a29410:	02000693          	li	a3,32
  a29414:	85b2                	mv	a1,a2
  a29416:	864a                	mv	a2,s2
  a29418:	c402                	sw	zero,8(sp)
  a2941a:	c602                	sw	zero,12(sp)
  a2941c:	c802                	sw	zero,16(sp)
  a2941e:	c002                	sw	zero,0(sp)
  a29420:	c202                	sw	zero,4(sp)
  a29422:	ca02                	sw	zero,20(sp)
  a29424:	cc02                	sw	zero,24(sp)
  a29426:	ce02                	sw	zero,28(sp)
  a29428:	61f000ef          	jal	ra,a2a246 <drv_rom_cipher_sha256>
  a2942c:	c909                	beqz	a0,a2943e <secure_authenticate.constprop.2+0x3a>
  a2942e:	00a3 2314 051f      	l.li	a0,0xa32314
  a29434:	7ea030ef          	jal	ra,a2cc1e <boot_msg0>
  a29438:	57fd                	li	a5,-1
  a2943a:	853e                	mv	a0,a5
  a2943c:	8444                	popret	{ra,s0-s2},80
  a2943e:	02000793          	li	a5,32
  a29442:	c426                	sw	s1,8(sp)
  a29444:	ca22                	sw	s0,20(sp)
  a29446:	02048493          	addi	s1,s1,32
  a2944a:	02040413          	addi	s0,s0,32
  a2944e:	0850                	addi	a2,sp,20
  a29450:	858a                	mv	a1,sp
  a29452:	0028                	addi	a0,sp,8
  a29454:	c83e                	sw	a5,16(sp)
  a29456:	c03e                	sw	a5,0(sp)
  a29458:	ce3e                	sw	a5,28(sp)
  a2945a:	c626                	sw	s1,12(sp)
  a2945c:	c24a                	sw	s2,4(sp)
  a2945e:	cc22                	sw	s0,24(sp)
  a29460:	5df000ef          	jal	ra,a2a23e <drv_rom_cipher_pke_bp256r_verify>
  a29464:	4781                	li	a5,0
  a29466:	d971                	beqz	a0,a2943a <secure_authenticate.constprop.2+0x36>
  a29468:	00a3 2344 051f      	l.li	a0,0xa32344
  a2946e:	b7d9                	j	a29434 <secure_authenticate.constprop.2+0x30>

00a29470 <check_die_id.constprop.3>:
  a29470:	8138                	push	{ra,s0-s1},-32
  a29472:	84aa                	mv	s1,a0
  a29474:	4641                	li	a2,16
  a29476:	858a                	mv	a1,sp
  a29478:	4505                	li	a0,1
  a2947a:	c002                	sw	zero,0(sp)
  a2947c:	c202                	sw	zero,4(sp)
  a2947e:	c402                	sw	zero,8(sp)
  a29480:	c602                	sw	zero,12(sp)
  a29482:	578030ef          	jal	ra,a2c9fa <efuse_read_item>
  a29486:	c909                	beqz	a0,a29498 <check_die_id.constprop.3+0x28>
  a29488:	00a3 21b8 051f      	l.li	a0,0xa321b8
  a2948e:	790030ef          	jal	ra,a2cc1e <boot_msg0>
  a29492:	547d                	li	s0,-1
  a29494:	8522                	mv	a0,s0
  a29496:	8134                	popret	{ra,s0-s1},32
  a29498:	842a                	mv	s0,a0
  a2949a:	4641                	li	a2,16
  a2949c:	85a6                	mv	a1,s1
  a2949e:	850a                	mv	a0,sp
  a294a0:	84fff0ef          	jal	ra,a28cee <memcmp>
  a294a4:	d965                	beqz	a0,a29494 <check_die_id.constprop.3+0x24>
  a294a6:	00a3 21d8 051f      	l.li	a0,0xa321d8
  a294ac:	b7cd                	j	a2948e <check_die_id.constprop.3+0x1e>

00a294ae <check_version>:
  a294ae:	8138                	push	{ra,s0-s1},-32
  a294b0:	00a32737          	lui	a4,0xa32
  a294b4:	84b2                	mv	s1,a2
  a294b6:	26c70693          	addi	a3,a4,620 # a3226c <g_verify_table>
  a294ba:	842e                	mv	s0,a1
  a294bc:	c602                	sw	zero,12(sp)
  a294be:	4781                	li	a5,0
  a294c0:	26c70713          	addi	a4,a4,620
  a294c4:	4639                	li	a2,14
  a294c6:	228c                	lbu	a1,0(a3)
  a294c8:	02a59463          	bne	a1,a0,a294f0 <check_version+0x42>
  a294cc:	0cf717db          	muliadd	a5,a4,a5,12
  a294d0:	2788                	lbu	a0,8(a5)
  a294d2:	006c                	addi	a1,sp,12
  a294d4:	4611                	li	a2,4
  a294d6:	524030ef          	jal	ra,a2c9fa <efuse_read_item>
  a294da:	87aa                	mv	a5,a0
  a294dc:	009475b3          	and	a1,s0,s1
  a294e0:	c115                	beqz	a0,a29504 <check_version+0x56>
  a294e2:	00a3 21fc 051f      	l.li	a0,0xa321fc
  a294e8:	736030ef          	jal	ra,a2cc1e <boot_msg0>
  a294ec:	557d                	li	a0,-1
  a294ee:	8134                	popret	{ra,s0-s1},32
  a294f0:	0785                	addi	a5,a5,1
  a294f2:	06b1                	addi	a3,a3,12
  a294f4:	fcc799e3          	bne	a5,a2,a294c6 <check_version+0x18>
  a294f8:	4501                	li	a0,0
  a294fa:	bfe1                	j	a294d2 <check_version+0x24>
  a294fc:	fff58713          	addi	a4,a1,-1 # 1fffff <__heap_size+0x1e2a07>
  a29500:	8df9                	and	a1,a1,a4
  a29502:	0785                	addi	a5,a5,1
  a29504:	fde5                	bnez	a1,a294fc <check_version+0x4e>
  a29506:	4632                	lw	a2,12(sp)
  a29508:	8e65                	and	a2,a2,s1
  a2950a:	ea01                	bnez	a2,a2951a <check_version+0x6c>
  a2950c:	4501                	li	a0,0
  a2950e:	feb7f0e3          	bgeu	a5,a1,a294ee <check_version+0x40>
  a29512:	00a3 2254 051f      	l.li	a0,0xa32254
  a29518:	bfc1                	j	a294e8 <check_version+0x3a>
  a2951a:	fff60713          	addi	a4,a2,-1 # 9fffff <__heap_size+0x9e2a07>
  a2951e:	8e79                	and	a2,a2,a4
  a29520:	0585                	addi	a1,a1,1
  a29522:	b7e5                	j	a2950a <check_version+0x5c>

00a29524 <verify_image_head>:
  a29524:	8048                	push	{ra,s0-s2},-16
  a29526:	1c060963          	beqz	a2,a296f8 <verify_image_head+0x1d4>
  a2952a:	f0000793          	li	a5,-256
  a2952e:	1cf60563          	beq	a2,a5,a296f8 <verify_image_head+0x1d4>
  a29532:	8432                	mv	s0,a2
  a29534:	892e                	mv	s2,a1
  a29536:	84aa                	mv	s1,a0
  a29538:	3595                	jal	ra,a2939c <check_verify_enable>
  a2953a:	800007b7          	lui	a5,0x80000
  a2953e:	0789                	addi	a5,a5,2 # 80000002 <_gp_+0x7f5cb7ee>
  a29540:	02f51563          	bne	a0,a5,a2956a <verify_image_head+0x46>
  a29544:	00a3 23fc 051f      	l.li	a0,0xa323fc
  a2954a:	6d4030ef          	jal	ra,a2cc1e <boot_msg0>
  a2954e:	35b9                	jal	ra,a2939c <check_verify_enable>
  a29550:	800007b7          	lui	a5,0x80000
  a29554:	0789                	addi	a5,a5,2 # 80000002 <_gp_+0x7f5cb7ee>
  a29556:	0ef51e63          	bne	a0,a5,a29652 <verify_image_head+0x12e>
  a2955a:	00a3 256c 051f      	l.li	a0,0xa3256c
  a29560:	6be030ef          	jal	ra,a2cc1e <boot_msg0>
  a29564:	4401                	li	s0,0
  a29566:	8522                	mv	a0,s0
  a29568:	8044                	popret	{ra,s0-s2},16
  a2956a:	ff05183b          	bnei	a0,-1,a2958a <verify_image_head+0x66>
  a2956e:	00a3 242c 051f      	l.li	a0,0xa3242c
  a29574:	6aa030ef          	jal	ra,a2cc1e <boot_msg0>
  a29578:	8000 15c0 041f      	l.li	s0,0x800015c0
  a2957e:	00a3 2550 051f      	l.li	a0,0xa32550
  a29584:	69a030ef          	jal	ra,a2cc1e <boot_msg0>
  a29588:	bff9                	j	a29566 <verify_image_head+0x42>
  a2958a:	c491                	beqz	s1,a29596 <verify_image_head+0x72>
  a2958c:	ffe48793          	addi	a5,s1,-2
  a29590:	9f81                	uxtb	a5
  a29592:	0207f8bb          	bgeui	a5,2,a295b4 <verify_image_head+0x90>
  a29596:	00a0 5514 079f      	l.li	a5,0xa05514
  a2959c:	439c                	lw	a5,0(a5)
  a2959e:	050785bb          	beqi	a5,5,a295b4 <verify_image_head+0x90>
  a295a2:	00a3 2458 051f      	l.li	a0,0xa32458
  a295a8:	676030ef          	jal	ra,a2cc1e <boot_msg0>
  a295ac:	8000 15c1 041f      	l.li	s0,0x800015c1
  a295b2:	b7f1                	j	a2957e <verify_image_head+0x5a>
  a295b4:	4010                	lw	a2,0(s0)
  a295b6:	4581                	li	a1,0
  a295b8:	8526                	mv	a0,s1
  a295ba:	3b61                	jal	ra,a29352 <check_image_id>
  a295bc:	c911                	beqz	a0,a295d0 <verify_image_head+0xac>
  a295be:	00a3 2488 051f      	l.li	a0,0xa32488
  a295c4:	65a030ef          	jal	ra,a2cc1e <boot_msg0>
  a295c8:	8000 15c2 041f      	l.li	s0,0x800015c2
  a295ce:	bf45                	j	a2957e <verify_image_head+0x5a>
  a295d0:	0c040693          	addi	a3,s0,192
  a295d4:	0c000613          	li	a2,192
  a295d8:	85a2                	mv	a1,s0
  a295da:	854a                	mv	a0,s2
  a295dc:	3525                	jal	ra,a29404 <secure_authenticate.constprop.2>
  a295de:	c911                	beqz	a0,a295f2 <verify_image_head+0xce>
  a295e0:	00a3 24b0 051f      	l.li	a0,0xa324b0
  a295e6:	638030ef          	jal	ra,a2cc1e <boot_msg0>
  a295ea:	8000 15c3 041f      	l.li	s0,0x800015c3
  a295f0:	b779                	j	a2957e <verify_image_head+0x5a>
  a295f2:	cc99                	beqz	s1,a29610 <verify_image_head+0xec>
  a295f4:	5410                	lw	a2,40(s0)
  a295f6:	504c                	lw	a1,36(s0)
  a295f8:	8526                	mv	a0,s1
  a295fa:	3d55                	jal	ra,a294ae <check_version>
  a295fc:	c911                	beqz	a0,a29610 <verify_image_head+0xec>
  a295fe:	00a3 24dc 051f      	l.li	a0,0xa324dc
  a29604:	61a030ef          	jal	ra,a2cc1e <boot_msg0>
  a29608:	8000 15c4 041f      	l.li	s0,0x800015c4
  a2960e:	bf85                	j	a2957e <verify_image_head+0x5a>
  a29610:	580c                	lw	a1,48(s0)
  a29612:	5448                	lw	a0,44(s0)
  a29614:	3b75                	jal	ra,a293d0 <check_msid>
  a29616:	c911                	beqz	a0,a2962a <verify_image_head+0x106>
  a29618:	00a3 2508 051f      	l.li	a0,0xa32508
  a2961e:	600030ef          	jal	ra,a2cc1e <boot_msg0>
  a29622:	8000 15c5 041f      	l.li	s0,0x800015c5
  a29628:	bf99                	j	a2957e <verify_image_head+0x5a>
  a2962a:	5858                	lw	a4,52(s0)
  a2962c:	2a13 c812 079f      	l.li	a5,0x2a13c812
  a29632:	f0f71ee3          	bne	a4,a5,a2954e <verify_image_head+0x2a>
  a29636:	03840513          	addi	a0,s0,56
  a2963a:	3d1d                	jal	ra,a29470 <check_die_id.constprop.3>
  a2963c:	f00509e3          	beqz	a0,a2954e <verify_image_head+0x2a>
  a29640:	00a3 252c 051f      	l.li	a0,0xa3252c
  a29646:	5d8030ef          	jal	ra,a2cc1e <boot_msg0>
  a2964a:	8000 15c6 041f      	l.li	s0,0x800015c6
  a29650:	b73d                	j	a2957e <verify_image_head+0x5a>
  a29652:	ff05173b          	bnei	a0,-1,a2966e <verify_image_head+0x14a>
  a29656:	00a3 259c 051f      	l.li	a0,0xa3259c
  a2965c:	5c2030ef          	jal	ra,a2cc1e <boot_msg0>
  a29660:	8000 15c0 041f      	l.li	s0,0x800015c0
  a29666:	00a3 266c 051f      	l.li	a0,0xa3266c
  a2966c:	bf21                	j	a29584 <verify_image_head+0x60>
  a2966e:	10042603          	lw	a2,256(s0)
  a29672:	4585                	li	a1,1
  a29674:	8526                	mv	a0,s1
  a29676:	10040913          	addi	s2,s0,256
  a2967a:	39e1                	jal	ra,a29352 <check_image_id>
  a2967c:	c911                	beqz	a0,a29690 <verify_image_head+0x16c>
  a2967e:	00a3 25c8 051f      	l.li	a0,0xa325c8
  a29684:	59a030ef          	jal	ra,a2cc1e <boot_msg0>
  a29688:	8000 15c2 041f      	l.li	s0,0x800015c2
  a2968e:	bfe1                	j	a29666 <verify_image_head+0x142>
  a29690:	28040693          	addi	a3,s0,640
  a29694:	18000613          	li	a2,384
  a29698:	85ca                	mv	a1,s2
  a2969a:	08040513          	addi	a0,s0,128
  a2969e:	339d                	jal	ra,a29404 <secure_authenticate.constprop.2>
  a296a0:	c911                	beqz	a0,a296b4 <verify_image_head+0x190>
  a296a2:	00a3 25f0 051f      	l.li	a0,0xa325f0
  a296a8:	576030ef          	jal	ra,a2cc1e <boot_msg0>
  a296ac:	8000 15c3 041f      	l.li	s0,0x800015c3
  a296b2:	bf55                	j	a29666 <verify_image_head+0x142>
  a296b4:	c08d                	beqz	s1,a296d6 <verify_image_head+0x1b2>
  a296b6:	01492603          	lw	a2,20(s2)
  a296ba:	01092583          	lw	a1,16(s2)
  a296be:	8526                	mv	a0,s1
  a296c0:	33fd                	jal	ra,a294ae <check_version>
  a296c2:	c911                	beqz	a0,a296d6 <verify_image_head+0x1b2>
  a296c4:	00a3 261c 051f      	l.li	a0,0xa3261c
  a296ca:	554030ef          	jal	ra,a2cc1e <boot_msg0>
  a296ce:	8000 15c4 041f      	l.li	s0,0x800015c4
  a296d4:	bf49                	j	a29666 <verify_image_head+0x142>
  a296d6:	01c92583          	lw	a1,28(s2)
  a296da:	01892503          	lw	a0,24(s2)
  a296de:	39cd                	jal	ra,a293d0 <check_msid>
  a296e0:	842a                	mv	s0,a0
  a296e2:	e80502e3          	beqz	a0,a29566 <verify_image_head+0x42>
  a296e6:	00a3 2648 051f      	l.li	a0,0xa32648
  a296ec:	532030ef          	jal	ra,a2cc1e <boot_msg0>
  a296f0:	8000 15c5 041f      	l.li	s0,0x800015c5
  a296f6:	bf85                	j	a29666 <verify_image_head+0x142>
  a296f8:	8000 15ca 041f      	l.li	s0,0x800015ca
  a296fe:	b5a5                	j	a29566 <verify_image_head+0x42>

00a29700 <verify_image_body>:
  a29700:	8248                	push	{ra,s0-s2},-48
  a29702:	f0000793          	li	a5,-256
  a29706:	06f50763          	beq	a0,a5,a29774 <verify_image_body+0x74>
  a2970a:	c5ad                	beqz	a1,a29774 <verify_image_body+0x74>
  a2970c:	84ae                	mv	s1,a1
  a2970e:	842a                	mv	s0,a0
  a29710:	02000613          	li	a2,32
  a29714:	4581                	li	a1,0
  a29716:	10050913          	addi	s2,a0,256
  a2971a:	850a                	mv	a0,sp
  a2971c:	a88ff0ef          	jal	ra,a289a4 <memset>
  a29720:	12442583          	lw	a1,292(s0)
  a29724:	02000693          	li	a3,32
  a29728:	860a                	mv	a2,sp
  a2972a:	8526                	mv	a0,s1
  a2972c:	31b000ef          	jal	ra,a2a246 <drv_rom_cipher_sha256>
  a29730:	c105                	beqz	a0,a29750 <verify_image_body+0x50>
  a29732:	00a3 2380 051f      	l.li	a0,0xa32380
  a29738:	4e6030ef          	jal	ra,a2cc1e <boot_msg0>
  a2973c:	8000 15c7 041f      	l.li	s0,0x800015c7
  a29742:	00a3 23dc 051f      	l.li	a0,0xa323dc
  a29748:	4d6030ef          	jal	ra,a2cc1e <boot_msg0>
  a2974c:	8522                	mv	a0,s0
  a2974e:	8244                	popret	{ra,s0-s2},48
  a29750:	12840593          	addi	a1,s0,296
  a29754:	02000613          	li	a2,32
  a29758:	850a                	mv	a0,sp
  a2975a:	d94ff0ef          	jal	ra,a28cee <memcmp>
  a2975e:	4401                	li	s0,0
  a29760:	d575                	beqz	a0,a2974c <verify_image_body+0x4c>
  a29762:	00a3 23b0 051f      	l.li	a0,0xa323b0
  a29768:	4b6030ef          	jal	ra,a2cc1e <boot_msg0>
  a2976c:	8000 15c8 041f      	l.li	s0,0x800015c8
  a29772:	bfc1                	j	a29742 <verify_image_body+0x42>
  a29774:	8000 15ca 041f      	l.li	s0,0x800015ca
  a2977a:	bfc9                	j	a2974c <verify_image_body+0x4c>

00a2977c <non_os_enter_critical>:
  a2977c:	8038                	push	{ra,s0-s1},-16
  a2977e:	300024f3          	csrr	s1,mstatus
  a29782:	300477f3          	csrrci	a5,mstatus,8
  a29786:	00a05437          	lui	s0,0xa05
  a2978a:	52440793          	addi	a5,s0,1316 # a05524 <g_non_os_critical_nesting>
  a2978e:	239e                	lhu	a5,0(a5)
  a29790:	52440413          	addi	s0,s0,1316
  a29794:	9fa1                	uxth	a5
  a29796:	eb89                	bnez	a5,a297a8 <non_os_enter_critical+0x2c>
  a29798:	00a0 551c 079f      	l.li	a5,0xa0551c
  a2979e:	439c                	lw	a5,0(a5)
  a297a0:	c781                	beqz	a5,a297a8 <non_os_enter_critical+0x2c>
  a297a2:	8586                	mv	a1,ra
  a297a4:	4501                	li	a0,0
  a297a6:	9782                	jalr	a5
  a297a8:	00a0 5518 079f      	l.li	a5,0xa05518
  a297ae:	439c                	lw	a5,0(a5)
  a297b0:	c789                	beqz	a5,a297ba <non_os_enter_critical+0x3e>
  a297b2:	8586                	mv	a1,ra
  a297b4:	2012                	lhu	a2,0(s0)
  a297b6:	4501                	li	a0,0
  a297b8:	9782                	jalr	a5
  a297ba:	201e                	lhu	a5,0(s0)
  a297bc:	9fa1                	uxth	a5
  a297be:	eb89                	bnez	a5,a297d0 <non_os_enter_critical+0x54>
  a297c0:	808d                	srli	s1,s1,0x3
  a297c2:	0014c493          	xori	s1,s1,1
  a297c6:	8885                	andi	s1,s1,1
  a297c8:	00a0 5520 079f      	l.li	a5,0xa05520
  a297ce:	c384                	sw	s1,0(a5)
  a297d0:	201e                	lhu	a5,0(s0)
  a297d2:	0785                	addi	a5,a5,1
  a297d4:	9fa1                	uxth	a5
  a297d6:	a01e                	sh	a5,0(s0)
  a297d8:	201e                	lhu	a5,0(s0)
  a297da:	9fa1                	uxth	a5
  a297dc:	eb81                	bnez	a5,a297ec <non_os_enter_critical+0x70>
  a297de:	06300593          	li	a1,99
  a297e2:	03100513          	li	a0,49
  a297e6:	8030                	pop	{ra,s0-s1},16
  a297e8:	3600406f          	j	a2db48 <panic>
  a297ec:	0ff0000f          	fence
  a297f0:	0ff0000f          	fence
  a297f4:	8034                	popret	{ra,s0-s1},16

00a297f6 <non_os_exit_critical>:
  a297f6:	8038                	push	{ra,s0-s1},-16
  a297f8:	00a05437          	lui	s0,0xa05
  a297fc:	52440793          	addi	a5,s0,1316 # a05524 <g_non_os_critical_nesting>
  a29800:	239e                	lhu	a5,0(a5)
  a29802:	9fa1                	uxth	a5
  a29804:	eb81                	bnez	a5,a29814 <non_os_exit_critical+0x1e>
  a29806:	06f00593          	li	a1,111
  a2980a:	03100513          	li	a0,49
  a2980e:	8030                	pop	{ra,s0-s1},16
  a29810:	3380406f          	j	a2db48 <panic>
  a29814:	52440413          	addi	s0,s0,1316
  a29818:	201e                	lhu	a5,0(s0)
  a2981a:	8486                	mv	s1,ra
  a2981c:	17fd                	addi	a5,a5,-1
  a2981e:	9fa1                	uxth	a5
  a29820:	a01e                	sh	a5,0(s0)
  a29822:	00a0 5518 079f      	l.li	a5,0xa05518
  a29828:	439c                	lw	a5,0(a5)
  a2982a:	c789                	beqz	a5,a29834 <non_os_exit_critical+0x3e>
  a2982c:	8586                	mv	a1,ra
  a2982e:	2012                	lhu	a2,0(s0)
  a29830:	4505                	li	a0,1
  a29832:	9782                	jalr	a5
  a29834:	201e                	lhu	a5,0(s0)
  a29836:	9fa1                	uxth	a5
  a29838:	e785                	bnez	a5,a29860 <non_os_exit_critical+0x6a>
  a2983a:	00a0 551c 079f      	l.li	a5,0xa0551c
  a29840:	439c                	lw	a5,0(a5)
  a29842:	c781                	beqz	a5,a2984a <non_os_exit_critical+0x54>
  a29844:	85a6                	mv	a1,s1
  a29846:	4505                	li	a0,1
  a29848:	9782                	jalr	a5
  a2984a:	00a0 5520 079f      	l.li	a5,0xa05520
  a29850:	439c                	lw	a5,0(a5)
  a29852:	e399                	bnez	a5,a29858 <non_os_exit_critical+0x62>
  a29854:	300467f3          	csrrsi	a5,mstatus,8
  a29858:	0ff0000f          	fence
  a2985c:	0ff0000f          	fence
  a29860:	8034                	popret	{ra,s0-s1},16

00a29862 <malloc_register_funcs>:
  a29862:	8018                	push	{ra},-16
  a29864:	862a                	mv	a2,a0
  a29866:	46b1                	li	a3,12
  a29868:	45b1                	li	a1,12
  a2986a:	00a0 5528 051f      	l.li	a0,0xa05528
  a29870:	22a070ef          	jal	ra,a30a9a <memcpy_s>
  a29874:	4501                	li	a0,0
  a29876:	8014                	popret	{ra},16

00a29878 <rom_malloc_init>:
  a29878:	8038                	push	{ra,s0-s1},-16
  a2987a:	842e                	mv	s0,a1
  a2987c:	46e1                	li	a3,24
  a2987e:	4601                	li	a2,0
  a29880:	45e1                	li	a1,24
  a29882:	84aa                	mv	s1,a0
  a29884:	292070ef          	jal	ra,a30b16 <memset_s>
  a29888:	ff840793          	addi	a5,s0,-8
  a2988c:	00a0 5534 071f      	l.li	a4,0xa05534
  a29892:	01b48513          	addi	a0,s1,27
  a29896:	9bf1                	andi	a5,a5,-4
  a29898:	9971                	andi	a0,a0,-4
  a2989a:	cb1c                	sw	a5,16(a4)
  a2989c:	17e1                	addi	a5,a5,-8
  a2989e:	8f89                	sub	a5,a5,a0
  a298a0:	c748                	sw	a0,12(a4)
  a298a2:	9fa1                	uxth	a5
  a298a4:	a15e                	sh	a5,4(a0)
  a298a6:	c71c                	sw	a5,8(a4)
  a298a8:	679d                	lui	a5,0x7
  a298aa:	07478793          	addi	a5,a5,116 # 7074 <ccause+0x60b2>
  a298ae:	a17e                	sh	a5,6(a0)
  a298b0:	00052023          	sw	zero,0(a0)
  a298b4:	8034                	popret	{ra,s0-s1},16

00a298b6 <malloc_init>:
  a298b6:	b7c9                	j	a29878 <rom_malloc_init>

00a298b8 <rom_malloc>:
  a298b8:	00a056b7          	lui	a3,0xa05
  a298bc:	53468793          	addi	a5,a3,1332 # a05534 <g_st_dfx>
  a298c0:	47dc                	lw	a5,12(a5)
  a298c2:	53468693          	addi	a3,a3,1332
  a298c6:	e399                	bnez	a5,a298cc <rom_malloc+0x14>
  a298c8:	4501                	li	a0,0
  a298ca:	8082                	ret
  a298cc:	dd75                	beqz	a0,a298c8 <rom_malloc+0x10>
  a298ce:	23f2                	lhu	a2,6(a5)
  a298d0:	671d                	lui	a4,0x7
  a298d2:	07470813          	addi	a6,a4,116 # 7074 <ccause+0x60b2>
  a298d6:	01060663          	beq	a2,a6,a298e2 <rom_malloc+0x2a>
  a298da:	c6c70713          	addi	a4,a4,-916
  a298de:	fee615e3          	bne	a2,a4,a298c8 <rom_malloc+0x10>
  a298e2:	050d                	addi	a0,a0,3
  a298e4:	9971                	andi	a0,a0,-4
  a298e6:	671d                	lui	a4,0x7
  a298e8:	9d21                	uxth	a0
  a298ea:	4881                	li	a7,0
  a298ec:	07470613          	addi	a2,a4,116 # 7074 <ccause+0x60b2>
  a298f0:	00850813          	addi	a6,a0,8
  a298f4:	c6c70313          	addi	t1,a4,-916
  a298f8:	0067de03          	lhu	t3,6(a5)
  a298fc:	23da                	lhu	a4,4(a5)
  a298fe:	04ce1263          	bne	t3,a2,a29942 <rom_malloc+0x8a>
  a29902:	02e87563          	bgeu	a6,a4,a2992c <rom_malloc+0x74>
  a29906:	8f09                	sub	a4,a4,a0
  a29908:	983e                	add	a6,a6,a5
  a2990a:	1761                	addi	a4,a4,-8
  a2990c:	00e81223          	sh	a4,4(a6)
  a29910:	00c81323          	sh	a2,6(a6)
  a29914:	671d                	lui	a4,0x7
  a29916:	c6c70713          	addi	a4,a4,-916 # 6c6c <ccause+0x5caa>
  a2991a:	c38c                	sw	a1,0(a5)
  a2991c:	a3fa                	sh	a4,6(a5)
  a2991e:	4298                	lw	a4,0(a3)
  a29920:	a3ca                	sh	a0,4(a5)
  a29922:	953a                	add	a0,a0,a4
  a29924:	c288                	sw	a0,0(a3)
  a29926:	00878513          	addi	a0,a5,8
  a2992a:	8082                	ret
  a2992c:	00a76b63          	bltu	a4,a0,a29942 <rom_malloc+0x8a>
  a29930:	661d                	lui	a2,0x7
  a29932:	c6c60613          	addi	a2,a2,-916 # 6c6c <ccause+0x5caa>
  a29936:	c38c                	sw	a1,0(a5)
  a29938:	a3f2                	sh	a2,6(a5)
  a2993a:	4290                	lw	a2,0(a3)
  a2993c:	9732                	add	a4,a4,a2
  a2993e:	c298                	sw	a4,0(a3)
  a29940:	b7dd                	j	a29926 <rom_malloc+0x6e>
  a29942:	0721                	addi	a4,a4,8
  a29944:	97ba                	add	a5,a5,a4
  a29946:	4a98                	lw	a4,16(a3)
  a29948:	00e7ef63          	bltu	a5,a4,a29966 <rom_malloc+0xae>
  a2994c:	f6089ee3          	bnez	a7,a298c8 <rom_malloc+0x10>
  a29950:	46d8                	lw	a4,12(a3)
  a29952:	235e                	lhu	a5,4(a4)
  a29954:	0106ae03          	lw	t3,16(a3)
  a29958:	07a1                	addi	a5,a5,8
  a2995a:	00f708b3          	add	a7,a4,a5
  a2995e:	01c8ea63          	bltu	a7,t3,a29972 <rom_malloc+0xba>
  a29962:	46dc                	lw	a5,12(a3)
  a29964:	4885                	li	a7,1
  a29966:	23fa                	lhu	a4,6(a5)
  a29968:	f86708e3          	beq	a4,t1,a298f8 <rom_malloc+0x40>
  a2996c:	f8c706e3          	beq	a4,a2,a298f8 <rom_malloc+0x40>
  a29970:	bfa1                	j	a298c8 <rom_malloc+0x10>
  a29972:	00675e03          	lhu	t3,6(a4)
  a29976:	00ce1b63          	bne	t3,a2,a2998c <rom_malloc+0xd4>
  a2997a:	0068de03          	lhu	t3,6(a7)
  a2997e:	00ce1763          	bne	t3,a2,a2998c <rom_malloc+0xd4>
  a29982:	0048d883          	lhu	a7,4(a7)
  a29986:	97c6                	add	a5,a5,a7
  a29988:	a35e                	sh	a5,4(a4)
  a2998a:	88ba                	mv	a7,a4
  a2998c:	8746                	mv	a4,a7
  a2998e:	b7d1                	j	a29952 <rom_malloc+0x9a>

00a29990 <malloc>:
  a29990:	8018                	push	{ra},-16
  a29992:	8586                	mv	a1,ra
  a29994:	8010                	pop	{ra},16
  a29996:	b70d                	j	a298b8 <rom_malloc>

00a29998 <rom_free>:
  a29998:	c50d                	beqz	a0,a299c2 <rom_free+0x2a>
  a2999a:	ffe55703          	lhu	a4,-2(a0)
  a2999e:	0000 6c6c 079f      	l.li	a5,0x6c6c
  a299a4:	00f71f63          	bne	a4,a5,a299c2 <rom_free+0x2a>
  a299a8:	679d                	lui	a5,0x7
  a299aa:	07478793          	addi	a5,a5,116 # 7074 <ccause+0x60b2>
  a299ae:	fef51f23          	sh	a5,-2(a0)
  a299b2:	00a0 5534 071f      	l.li	a4,0xa05534
  a299b8:	ffc55683          	lhu	a3,-4(a0)
  a299bc:	435c                	lw	a5,4(a4)
  a299be:	97b6                	add	a5,a5,a3
  a299c0:	c35c                	sw	a5,4(a4)
  a299c2:	4501                	li	a0,0
  a299c4:	8082                	ret

00a299c6 <free>:
  a299c6:	bfc9                	j	a29998 <rom_free>

00a299c8 <osal_irq_lock>:
  a299c8:	8018                	push	{ra},-16
  a299ca:	3b4d                	jal	ra,a2977c <non_os_enter_critical>
  a299cc:	4501                	li	a0,0
  a299ce:	8014                	popret	{ra},16

00a299d0 <osal_irq_restore>:
  a299d0:	b51d                	j	a297f6 <non_os_exit_critical>

00a299d2 <uapi_pmp_config>:
  a299d2:	8168                	push	{ra,s0-s4},-48
  a299d4:	842a                	mv	s0,a0
  a299d6:	84ae                	mv	s1,a1
  a299d8:	087020ef          	jal	ra,a2c25e <pmp_port_register_hal_funcs>
  a299dc:	238010ef          	jal	ra,a2ac14 <hal_pmp_get_funcs>
  a299e0:	89aa                	mv	s3,a0
  a299e2:	4901                	li	s2,0
  a299e4:	4a05                	li	s4,1
  a299e6:	00991663          	bne	s2,s1,a299f2 <uapi_pmp_config+0x20>
  a299ea:	0ff0000f          	fence
  a299ee:	4501                	li	a0,0
  a299f0:	8164                	popret	{ra,s0-s4},48
  a299f2:	4058                	lw	a4,4(s0)
  a299f4:	3454                	lbu	a3,13(s0)
  a299f6:	00042803          	lw	a6,0(s0)
  a299fa:	00842883          	lw	a7,8(s0)
  a299fe:	245c                	lbu	a5,12(s0)
  a29a00:	246c                	lbu	a1,14(s0)
  a29a02:	3468                	lbu	a0,15(s0)
  a29a04:	00275613          	srli	a2,a4,0x2
  a29a08:	01468763          	beq	a3,s4,a29a16 <uapi_pmp_config+0x44>
  a29a0c:	177d                	addi	a4,a4,-1
  a29a0e:	4317071b          	addshf	a4,a4,a7,srl,1
  a29a12:	00275613          	srli	a2,a4,0x2
  a29a16:	0077f713          	andi	a4,a5,7
  a29a1a:	00d14783          	lbu	a5,13(sp)
  a29a1e:	8a8d                	andi	a3,a3,3
  a29a20:	00a10623          	sb	a0,12(sp)
  a29a24:	0e07f793          	andi	a5,a5,224
  a29a28:	8fd9                	or	a5,a5,a4
  a29a2a:	06d7a79b          	orshf	a5,a5,a3,sll,3
  a29a2e:	07f7f793          	andi	a5,a5,127
  a29a32:	0eb7a79b          	orshf	a5,a5,a1,sll,7
  a29a36:	c242                	sw	a6,4(sp)
  a29a38:	c432                	sw	a2,8(sp)
  a29a3a:	00f106a3          	sb	a5,13(sp)
  a29a3e:	0009a783          	lw	a5,0(s3)
  a29a42:	0048                	addi	a0,sp,4
  a29a44:	0441                	addi	s0,s0,16
  a29a46:	9782                	jalr	a5
  a29a48:	f545                	bnez	a0,a299f0 <uapi_pmp_config+0x1e>
  a29a4a:	0905                	addi	s2,s2,1
  a29a4c:	bf69                	j	a299e6 <uapi_pmp_config+0x14>

00a29a4e <drv_rom_hash>:
  a29a4e:	8e78                	push	{ra,s0-s5},-256
  a29a50:	892a                	mv	s2,a0
  a29a52:	8aae                	mv	s5,a1
  a29a54:	84b2                	mv	s1,a2
  a29a56:	4581                	li	a1,0
  a29a58:	04000613          	li	a2,64
  a29a5c:	1008                	addi	a0,sp,32
  a29a5e:	c63a                	sw	a4,12(sp)
  a29a60:	8a36                	mv	s4,a3
  a29a62:	843e                	mv	s0,a5
  a29a64:	f41fe0ef          	jal	ra,a289a4 <memset>
  a29a68:	08000613          	li	a2,128
  a29a6c:	4581                	li	a1,0
  a29a6e:	1088                	addi	a0,sp,96
  a29a70:	f35fe0ef          	jal	ra,a289a4 <memset>
  a29a74:	ce02                	sw	zero,28(sp)
  a29a76:	4732                	lw	a4,12(sp)
  a29a78:	000a9463          	bnez	s5,a29a80 <drv_rom_hash+0x32>
  a29a7c:	557d                	li	a0,-1
  a29a7e:	8e74                	popret	{ra,s0-s5},256
  a29a80:	fe0a0ee3          	beqz	s4,a29a7c <drv_rom_hash+0x2e>
  a29a84:	010007b7          	lui	a5,0x1000
  a29a88:	fef4fae3          	bgeu	s1,a5,a29a7c <drv_rom_hash+0x2e>
  a29a8c:	20f71c3b          	bnei	a4,32,a29a7c <drv_rom_hash+0x2e>
  a29a90:	0216 9100 079f      	l.li	a5,0x2169100
  a29a96:	0cf90963          	beq	s2,a5,a29b68 <drv_rom_hash+0x11a>
  a29a9a:	00a3 268c 061f      	l.li	a2,0xa3268c
  a29aa0:	85ca                	mv	a1,s2
  a29aa2:	8522                	mv	a0,s0
  a29aa4:	77a000ef          	jal	ra,a2a21e <hal_cipher_hash_config>
  a29aa8:	f979                	bnez	a0,a29a7e <drv_rom_hash+0x30>
  a29aaa:	03f4f913          	andi	s2,s1,63
  a29aae:	412489b3          	sub	s3,s1,s2
  a29ab2:	0a099f63          	bnez	s3,a29b70 <drv_rom_hash+0x122>
  a29ab6:	08000693          	li	a3,128
  a29aba:	4601                	li	a2,0
  a29abc:	08000593          	li	a1,128
  a29ac0:	1088                	addi	a0,sp,96
  a29ac2:	054070ef          	jal	ra,a30b16 <memset_s>
  a29ac6:	86ca                	mv	a3,s2
  a29ac8:	013a8633          	add	a2,s5,s3
  a29acc:	08000593          	li	a1,128
  a29ad0:	1088                	addi	a0,sp,96
  a29ad2:	7c9060ef          	jal	ra,a30a9a <memcpy_s>
  a29ad6:	f15d                	bnez	a0,a29a7c <drv_rom_hash+0x2e>
  a29ad8:	119c                	addi	a5,sp,224
  a29ada:	97ca                	add	a5,a5,s2
  a29adc:	f8000713          	li	a4,-128
  a29ae0:	f8e78023          	sb	a4,-128(a5) # ffff80 <_gp_+0x5cb76c>
  a29ae4:	04000993          	li	s3,64
  a29ae8:	3809623b          	bltui	s2,56,a29af0 <drv_rom_hash+0xa2>
  a29aec:	08000993          	li	s3,128
  a29af0:	00349713          	slli	a4,s1,0x3
  a29af4:	01b49613          	slli	a2,s1,0x1b
  a29af8:	0000 ff00 079f      	l.li	a5,0xff00
  a29afe:	50e7c79b          	andshf	a5,a5,a4,srl,8
  a29b02:	70e6261b          	orshf	a2,a2,a4,srl,24
  a29b06:	8e5d                	or	a2,a2,a5
  a29b08:	00ff07b7          	lui	a5,0xff0
  a29b0c:	1697c49b          	andshf	s1,a5,s1,sll,11
  a29b10:	8e45                	or	a2,a2,s1
  a29b12:	ffc98513          	addi	a0,s3,-4
  a29b16:	109c                	addi	a5,sp,96
  a29b18:	ce32                	sw	a2,28(sp)
  a29b1a:	4691                	li	a3,4
  a29b1c:	0870                	addi	a2,sp,28
  a29b1e:	4591                	li	a1,4
  a29b20:	953e                	add	a0,a0,a5
  a29b22:	779060ef          	jal	ra,a30a9a <memcpy_s>
  a29b26:	f939                	bnez	a0,a29a7c <drv_rom_hash+0x2e>
  a29b28:	4695                	li	a3,5
  a29b2a:	864e                	mv	a2,s3
  a29b2c:	108c                	addi	a1,sp,96
  a29b2e:	8522                	mv	a0,s0
  a29b30:	6f6000ef          	jal	ra,a2a226 <hal_cipher_hash_add_in_node>
  a29b34:	f529                	bnez	a0,a29a7e <drv_rom_hash+0x30>
  a29b36:	4581                	li	a1,0
  a29b38:	8522                	mv	a0,s0
  a29b3a:	6f4000ef          	jal	ra,a2a22e <hal_cipher_hash_start>
  a29b3e:	f121                	bnez	a0,a29a7e <drv_rom_hash+0x30>
  a29b40:	04000613          	li	a2,64
  a29b44:	100c                	addi	a1,sp,32
  a29b46:	8522                	mv	a0,s0
  a29b48:	6ee000ef          	jal	ra,a2a236 <hal_cipher_hash_wait_done>
  a29b4c:	f90d                	bnez	a0,a29a7e <drv_rom_hash+0x30>
  a29b4e:	02000693          	li	a3,32
  a29b52:	1010                	addi	a2,sp,32
  a29b54:	02000593          	li	a1,32
  a29b58:	8552                	mv	a0,s4
  a29b5a:	741060ef          	jal	ra,a30a9a <memcpy_s>
  a29b5e:	00a03533          	snez	a0,a0
  a29b62:	40a00533          	neg	a0,a0
  a29b66:	bf21                	j	a29a7e <drv_rom_hash+0x30>
  a29b68:	00a3 26ac 061f      	l.li	a2,0xa326ac
  a29b6e:	bf0d                	j	a29aa0 <drv_rom_hash+0x52>
  a29b70:	4695                	li	a3,5
  a29b72:	864e                	mv	a2,s3
  a29b74:	85d6                	mv	a1,s5
  a29b76:	8522                	mv	a0,s0
  a29b78:	257d                	jal	ra,a2a226 <hal_cipher_hash_add_in_node>
  a29b7a:	f00512e3          	bnez	a0,a29a7e <drv_rom_hash+0x30>
  a29b7e:	4581                	li	a1,0
  a29b80:	8522                	mv	a0,s0
  a29b82:	2575                	jal	ra,a2a22e <hal_cipher_hash_start>
  a29b84:	ee051de3          	bnez	a0,a29a7e <drv_rom_hash+0x30>
  a29b88:	4601                	li	a2,0
  a29b8a:	4581                	li	a1,0
  a29b8c:	8522                	mv	a0,s0
  a29b8e:	2565                	jal	ra,a2a236 <hal_cipher_hash_wait_done>
  a29b90:	f20503e3          	beqz	a0,a29ab6 <drv_rom_hash+0x68>
  a29b94:	b5ed                	j	a29a7e <drv_rom_hash+0x30>

00a29b96 <drv_rom_cipher_create_keyslot>:
  a29b96:	8248                	push	{ra,s0-s2},-48
  a29b98:	8432                	mv	s0,a2
  a29b9a:	84aa                	mv	s1,a0
  a29b9c:	4639                	li	a2,14
  a29b9e:	892e                	mv	s2,a1
  a29ba0:	01210513          	addi	a0,sp,18
  a29ba4:	4581                	li	a1,0
  a29ba6:	dfffe0ef          	jal	ra,a289a4 <memset>
  a29baa:	02000793          	li	a5,32
  a29bae:	00f10823          	sb	a5,16(sp)
  a29bb2:	4581                	li	a1,0
  a29bb4:	4785                	li	a5,1
  a29bb6:	0048                	addi	a0,sp,4
  a29bb8:	c622                	sw	s0,12(sp)
  a29bba:	00f108a3          	sb	a5,17(sp)
  a29bbe:	00f10923          	sb	a5,18(sp)
  a29bc2:	00f10b23          	sb	a5,22(sp)
  a29bc6:	00f10c23          	sb	a5,24(sp)
  a29bca:	24f9                	jal	ra,a29e98 <drv_keyslot_create>
  a29bcc:	842a                	mv	s0,a0
  a29bce:	ed0d                	bnez	a0,a29c08 <drv_rom_cipher_create_keyslot+0x72>
  a29bd0:	0028                	addi	a0,sp,8
  a29bd2:	2e91                	jal	ra,a29f26 <drv_klad_create>
  a29bd4:	842a                	mv	s0,a0
  a29bd6:	e91d                	bnez	a0,a29c0c <drv_rom_cipher_create_keyslot+0x76>
  a29bd8:	4612                	lw	a2,4(sp)
  a29bda:	4522                	lw	a0,8(sp)
  a29bdc:	4581                	li	a1,0
  a29bde:	2e4d                	jal	ra,a29f90 <drv_klad_attach>
  a29be0:	842a                	mv	s0,a0
  a29be2:	e10d                	bnez	a0,a29c04 <drv_rom_cipher_create_keyslot+0x6e>
  a29be4:	4522                	lw	a0,8(sp)
  a29be6:	006c                	addi	a1,sp,12
  a29be8:	21a1                	jal	ra,a2a030 <drv_klad_set_attr>
  a29bea:	842a                	mv	s0,a0
  a29bec:	e901                	bnez	a0,a29bfc <drv_rom_cipher_create_keyslot+0x66>
  a29bee:	4522                	lw	a0,8(sp)
  a29bf0:	85ca                	mv	a1,s2
  a29bf2:	2155                	jal	ra,a2a096 <drv_klad_set_effective_key>
  a29bf4:	842a                	mv	s0,a0
  a29bf6:	e119                	bnez	a0,a29bfc <drv_rom_cipher_create_keyslot+0x66>
  a29bf8:	4792                	lw	a5,4(sp)
  a29bfa:	c09c                	sw	a5,0(s1)
  a29bfc:	4612                	lw	a2,4(sp)
  a29bfe:	4522                	lw	a0,8(sp)
  a29c00:	4581                	li	a1,0
  a29c02:	2ec5                	jal	ra,a29ff2 <drv_klad_detach>
  a29c04:	4522                	lw	a0,8(sp)
  a29c06:	2e99                	jal	ra,a29f5c <drv_klad_destroy>
  a29c08:	8522                	mv	a0,s0
  a29c0a:	8244                	popret	{ra,s0-s2},48
  a29c0c:	4088                	lw	a0,0(s1)
  a29c0e:	24c5                	jal	ra,a29eee <drv_keyslot_destroy>
  a29c10:	bfe5                	j	a29c08 <drv_rom_cipher_create_keyslot+0x72>

00a29c12 <drv_rom_cipher_destroy_keyslot>:
  a29c12:	acf1                	j	a29eee <drv_keyslot_destroy>

00a29c14 <drv_rom_cipher_config_odrk1>:
  a29c14:	8238                	push	{ra,s0-s1},-48
  a29c16:	4639                	li	a2,14
  a29c18:	4581                	li	a1,0
  a29c1a:	84aa                	mv	s1,a0
  a29c1c:	01210513          	addi	a0,sp,18
  a29c20:	d85fe0ef          	jal	ra,a289a4 <memset>
  a29c24:	0300 000d 079f      	l.li	a5,0x300000d
  a29c2a:	c63e                	sw	a5,12(sp)
  a29c2c:	02000793          	li	a5,32
  a29c30:	00f10823          	sb	a5,16(sp)
  a29c34:	0028                	addi	a0,sp,8
  a29c36:	4785                	li	a5,1
  a29c38:	00f108a3          	sb	a5,17(sp)
  a29c3c:	00f10b23          	sb	a5,22(sp)
  a29c40:	00f10c23          	sb	a5,24(sp)
  a29c44:	24cd                	jal	ra,a29f26 <drv_klad_create>
  a29c46:	842a                	mv	s0,a0
  a29c48:	e515                	bnez	a0,a29c74 <drv_rom_cipher_config_odrk1+0x60>
  a29c4a:	4522                	lw	a0,8(sp)
  a29c4c:	4601                	li	a2,0
  a29c4e:	4589                	li	a1,2
  a29c50:	2681                	jal	ra,a29f90 <drv_klad_attach>
  a29c52:	842a                	mv	s0,a0
  a29c54:	ed11                	bnez	a0,a29c70 <drv_rom_cipher_config_odrk1+0x5c>
  a29c56:	4522                	lw	a0,8(sp)
  a29c58:	006c                	addi	a1,sp,12
  a29c5a:	2ed9                	jal	ra,a2a030 <drv_klad_set_attr>
  a29c5c:	842a                	mv	s0,a0
  a29c5e:	e509                	bnez	a0,a29c68 <drv_rom_cipher_config_odrk1+0x54>
  a29c60:	4522                	lw	a0,8(sp)
  a29c62:	85a6                	mv	a1,s1
  a29c64:	290d                	jal	ra,a2a096 <drv_klad_set_effective_key>
  a29c66:	842a                	mv	s0,a0
  a29c68:	4522                	lw	a0,8(sp)
  a29c6a:	4601                	li	a2,0
  a29c6c:	4589                	li	a1,2
  a29c6e:	2651                	jal	ra,a29ff2 <drv_klad_detach>
  a29c70:	4522                	lw	a0,8(sp)
  a29c72:	24ed                	jal	ra,a29f5c <drv_klad_destroy>
  a29c74:	8522                	mv	a0,s0
  a29c76:	8234                	popret	{ra,s0-s1},48

00a29c78 <drv_rom_cipher_fapc_config>:
  a29c78:	8348                	push	{ra,s0-s2},-64
  a29c7a:	842e                	mv	s0,a1
  a29c7c:	8932                	mv	s2,a2
  a29c7e:	84aa                	mv	s1,a0
  a29c80:	4661                	li	a2,24
  a29c82:	4581                	li	a1,0
  a29c84:	0828                	addi	a0,sp,24
  a29c86:	c636                	sw	a3,12(sp)
  a29c88:	c43a                	sw	a4,8(sp)
  a29c8a:	d1bfe0ef          	jal	ra,a289a4 <memset>
  a29c8e:	4789                	li	a5,2
  a29c90:	46b2                	lw	a3,12(sp)
  a29c92:	d43e                	sw	a5,40(sp)
  a29c94:	10100793          	li	a5,257
  a29c98:	c822                	sw	s0,16(sp)
  a29c9a:	ca4a                	sw	s2,20(sp)
  a29c9c:	ce22                	sw	s0,28(sp)
  a29c9e:	02f11623          	sh	a5,44(sp)
  a29ca2:	557d                	li	a0,-1
  a29ca4:	ce81                	beqz	a3,a29cbc <drv_rom_cipher_fapc_config+0x44>
  a29ca6:	4722                	lw	a4,8(sp)
  a29ca8:	1007153b          	bnei	a4,16,a29cbc <drv_rom_cipher_fapc_config+0x44>
  a29cac:	4641                	li	a2,16
  a29cae:	85b6                	mv	a1,a3
  a29cb0:	4501                	li	a0,0
  a29cb2:	2971                	jal	ra,a2a14e <drv_fapc_set_iv>
  a29cb4:	e501                	bnez	a0,a29cbc <drv_rom_cipher_fapc_config+0x44>
  a29cb6:	080c                	addi	a1,sp,16
  a29cb8:	8526                	mv	a0,s1
  a29cba:	2155                	jal	ra,a2a15e <drv_fapc_set_config>
  a29cbc:	8344                	popret	{ra,s0-s2},64

00a29cbe <drv_rom_cipher_fapc_bypass_config>:
  a29cbe:	a325                	j	a2a1e6 <drv_fapc_set_bypass_config>

00a29cc0 <inner_symc_crypto>:
  a29cc0:	8168                	push	{ra,s0-s4},-48
  a29cc2:	03014803          	lbu	a6,48(sp)
  a29cc6:	104618bb          	bnei	a2,16,a29de8 <inner_symc_crypto+0x128>
  a29cca:	01620737          	lui	a4,0x1620
  a29cce:	00080463          	beqz	a6,a29cd6 <inner_symc_crypto+0x16>
  a29cd2:	11620737          	lui	a4,0x11620
  a29cd6:	1ff57513          	andi	a0,a0,511
  a29cda:	e0077713          	andi	a4,a4,-512
  a29cde:	8f49                	or	a4,a4,a0
  a29ce0:	441044b7          	lui	s1,0x44104
  a29ce4:	8946                	mv	s2,a7
  a29ce6:	8a3e                	mv	s4,a5
  a29ce8:	842e                	mv	s0,a1
  a29cea:	10e4a823          	sw	a4,272(s1) # 44104110 <_gp_+0x436cf8fc>
  a29cee:	0ff0000f          	fence
  a29cf2:	1004a223          	sw	zero,260(s1)
  a29cf6:	0ff0000f          	fence
  a29cfa:	00a0 55ac 099f      	l.li	s3,0xa055ac
  a29d00:	0009a703          	lw	a4,0(s3)
  a29d04:	00a0 554c 051f      	l.li	a0,0xa0554c
  a29d0a:	0716                	slli	a4,a4,0x5
  a29d0c:	00e50633          	add	a2,a0,a4
  a29d10:	420c                	lw	a1,0(a2)
  a29d12:	0741                	addi	a4,a4,16 # 11620010 <_gp_+0x10beb7fc>
  a29d14:	01162223          	sw	a7,4(a2)
  a29d18:	0035e593          	ori	a1,a1,3
  a29d1c:	dff5f593          	andi	a1,a1,-513
  a29d20:	c20c                	sw	a1,0(a2)
  a29d22:	c614                	sw	a3,8(a2)
  a29d24:	00062623          	sw	zero,12(a2)
  a29d28:	46c1                	li	a3,16
  a29d2a:	8622                	mv	a2,s0
  a29d2c:	45c1                	li	a1,16
  a29d2e:	953a                	add	a0,a0,a4
  a29d30:	56b060ef          	jal	ra,a30a9a <memcpy_s>
  a29d34:	0009a703          	lw	a4,0(s3)
  a29d38:	00a0 558c 069f      	l.li	a3,0xa0558c
  a29d3e:	08e6869b          	addshf	a3,a3,a4,sll,4
  a29d42:	0705                	addi	a4,a4,1
  a29d44:	8b05                	andi	a4,a4,1
  a29d46:	00e9a023          	sw	a4,0(s3)
  a29d4a:	0126a223          	sw	s2,4(a3)
  a29d4e:	0146a423          	sw	s4,8(a3)
  a29d52:	0006a623          	sw	zero,12(a3)
  a29d56:	4410d6b7          	lui	a3,0x4410d
  a29d5a:	5a9c                	lw	a5,48(a3)
  a29d5c:	00178713          	addi	a4,a5,1 # ff0001 <_gp_+0x5bb7ed>
  a29d60:	8b05                	andi	a4,a4,1
  a29d62:	f007f793          	andi	a5,a5,-256
  a29d66:	8fd9                	or	a5,a5,a4
  a29d68:	da9c                	sw	a5,48(a3)
  a29d6a:	0ff0000f          	fence
  a29d6e:	1304a783          	lw	a5,304(s1)
  a29d72:	00178713          	addi	a4,a5,1
  a29d76:	8b05                	andi	a4,a4,1
  a29d78:	f007f793          	andi	a5,a5,-256
  a29d7c:	8fd9                	or	a5,a5,a4
  a29d7e:	12f4a823          	sw	a5,304(s1)
  a29d82:	0ff0000f          	fence
  a29d86:	0000 2710 049f      	l.li	s1,0x2710
  a29d8c:	4410c937          	lui	s2,0x4410c
  a29d90:	79c1                	lui	s3,0xffff0
  a29d92:	00092783          	lw	a5,0(s2) # 4410c000 <_gp_+0x436d77ec>
  a29d96:	0027f713          	andi	a4,a5,2
  a29d9a:	0137f7b3          	and	a5,a5,s3
  a29d9e:	8fd9                	or	a5,a5,a4
  a29da0:	cf0d                	beqz	a4,a29dda <inner_symc_crypto+0x11a>
  a29da2:	00f92023          	sw	a5,0(s2)
  a29da6:	0ff0000f          	fence
  a29daa:	441097b7          	lui	a5,0x44109
  a29dae:	0807a703          	lw	a4,128(a5) # 44109080 <_gp_+0x436d486c>
  a29db2:	46c1                	li	a3,16
  a29db4:	860a                	mv	a2,sp
  a29db6:	c03a                	sw	a4,0(sp)
  a29db8:	0847a703          	lw	a4,132(a5)
  a29dbc:	45c1                	li	a1,16
  a29dbe:	8522                	mv	a0,s0
  a29dc0:	c23a                	sw	a4,4(sp)
  a29dc2:	0887a703          	lw	a4,136(a5)
  a29dc6:	c43a                	sw	a4,8(sp)
  a29dc8:	08c7a783          	lw	a5,140(a5)
  a29dcc:	c63e                	sw	a5,12(sp)
  a29dce:	4cd060ef          	jal	ra,a30a9a <memcpy_s>
  a29dd2:	cd01                	beqz	a0,a29dea <inner_symc_crypto+0x12a>
  a29dd4:	04000513          	li	a0,64
  a29dd8:	a809                	j	a29dea <inner_symc_crypto+0x12a>
  a29dda:	4505                	li	a0,1
  a29ddc:	14fd                	addi	s1,s1,-1
  a29dde:	236d                	jal	ra,a2a388 <uapi_tcxo_delay_us>
  a29de0:	f8cd                	bnez	s1,a29d92 <inner_symc_crypto+0xd2>
  a29de2:	0b400513          	li	a0,180
  a29de6:	a011                	j	a29dea <inner_symc_crypto+0x12a>
  a29de8:	557d                	li	a0,-1
  a29dea:	8164                	popret	{ra,s0-s4},48

00a29dec <drv_rom_cipher_symc_init>:
  a29dec:	441007b7          	lui	a5,0x44100
  a29df0:	4741                	li	a4,16
  a29df2:	d398                	sw	a4,32(a5)
  a29df4:	0ff0000f          	fence
  a29df8:	441047b7          	lui	a5,0x44104
  a29dfc:	00a0 554c 071f      	l.li	a4,0xa0554c
  a29e02:	12e7a223          	sw	a4,292(a5) # 44104124 <_gp_+0x436cf910>
  a29e06:	0ff0000f          	fence
  a29e0a:	4689                	li	a3,2
  a29e0c:	12d7a623          	sw	a3,300(a5)
  a29e10:	0ff0000f          	fence
  a29e14:	4410d737          	lui	a4,0x4410d
  a29e18:	00a0 558c 061f      	l.li	a2,0xa0558c
  a29e1e:	d350                	sw	a2,36(a4)
  a29e20:	0ff0000f          	fence
  a29e24:	d714                	sw	a3,40(a4)
  a29e26:	0ff0000f          	fence
  a29e2a:	8000 aa00 071f      	l.li	a4,0x8000aa00
  a29e30:	10e7a023          	sw	a4,256(a5)
  a29e34:	0ff0000f          	fence
  a29e38:	4501                	li	a0,0
  a29e3a:	8082                	ret

00a29e3c <drv_rom_cipher_symc_deinit>:
  a29e3c:	441007b7          	lui	a5,0x44100
  a29e40:	0207a023          	sw	zero,32(a5) # 44100020 <_gp_+0x436cb80c>
  a29e44:	0ff0000f          	fence
  a29e48:	4501                	li	a0,0
  a29e4a:	8082                	ret

00a29e4c <drv_rom_cipher_symc_decrypt>:
  a29e4c:	8118                	push	{ra},-32
  a29e4e:	4305                	li	t1,1
  a29e50:	c01a                	sw	t1,0(sp)
  a29e52:	35bd                	jal	ra,a29cc0 <inner_symc_crypto>
  a29e54:	8114                	popret	{ra},32

00a29e56 <crypto_get_cpu_type>:
  a29e56:	00a0 55b0 079f      	l.li	a5,0xa055b0
  a29e5c:	01c7a303          	lw	t1,28(a5)
  a29e60:	00030363          	beqz	t1,a29e66 <crypto_get_cpu_type+0x10>
  a29e64:	8302                	jr	t1
  a29e66:	4505                	li	a0,1
  a29e68:	8082                	ret

00a29e6a <crypto_sm_support>:
  a29e6a:	4505                	li	a0,1
  a29e6c:	8082                	ret

00a29e6e <crypto_get_value_by_index>:
  a29e6e:	57fd                	li	a5,-1
  a29e70:	c105                	beqz	a0,a29e90 <crypto_get_value_by_index+0x22>
  a29e72:	ce99                	beqz	a3,a29e90 <crypto_get_value_by_index+0x22>
  a29e74:	4781                	li	a5,0
  a29e76:	00b79463          	bne	a5,a1,a29e7e <crypto_get_value_by_index+0x10>
  a29e7a:	57fd                	li	a5,-1
  a29e7c:	a811                	j	a29e90 <crypto_get_value_by_index+0x22>
  a29e7e:	872a                	mv	a4,a0
  a29e80:	0521                	addi	a0,a0,8
  a29e82:	ff852803          	lw	a6,-8(a0)
  a29e86:	00c81763          	bne	a6,a2,a29e94 <crypto_get_value_by_index+0x26>
  a29e8a:	435c                	lw	a5,4(a4)
  a29e8c:	c29c                	sw	a5,0(a3)
  a29e8e:	4781                	li	a5,0
  a29e90:	853e                	mv	a0,a5
  a29e92:	8082                	ret
  a29e94:	0785                	addi	a5,a5,1
  a29e96:	b7c5                	j	a29e76 <crypto_get_value_by_index+0x8>

00a29e98 <drv_keyslot_create>:
  a29e98:	8158                	push	{ra,s0-s3},-48
  a29e9a:	57fd                	li	a5,-1
  a29e9c:	c63e                	sw	a5,12(sp)
  a29e9e:	e119                	bnez	a0,a29ea4 <drv_keyslot_create+0xc>
  a29ea0:	557d                	li	a0,-1
  a29ea2:	8154                	popret	{ra,s0-s3},48
  a29ea4:	0205933b          	bnei	a1,2,a29eb0 <drv_keyslot_create+0x18>
  a29ea8:	00052023          	sw	zero,0(a0)
  a29eac:	4501                	li	a0,0
  a29eae:	bfd5                	j	a29ea2 <drv_keyslot_create+0xa>
  a29eb0:	c195                	beqz	a1,a29ed4 <drv_keyslot_create+0x3c>
  a29eb2:	01f59bbb          	bnei	a1,1,a29ea0 <drv_keyslot_create+0x8>
  a29eb6:	4989                	li	s3,2
  a29eb8:	842e                	mv	s0,a1
  a29eba:	892a                	mv	s2,a0
  a29ebc:	4481                	li	s1,0
  a29ebe:	85a2                	mv	a1,s0
  a29ec0:	8526                	mv	a0,s1
  a29ec2:	12c010ef          	jal	ra,a2afee <hal_keyslot_lock>
  a29ec6:	c62a                	sw	a0,12(sp)
  a29ec8:	47b2                	lw	a5,12(sp)
  a29eca:	c799                	beqz	a5,a29ed8 <drv_keyslot_create+0x40>
  a29ecc:	0485                	addi	s1,s1,1
  a29ece:	fe9998e3          	bne	s3,s1,a29ebe <drv_keyslot_create+0x26>
  a29ed2:	b7f9                	j	a29ea0 <drv_keyslot_create+0x8>
  a29ed4:	49a1                	li	s3,8
  a29ed6:	b7cd                	j	a29eb8 <drv_keyslot_create+0x20>
  a29ed8:	fd34f4e3          	bgeu	s1,s3,a29ea0 <drv_keyslot_create+0x8>
  a29edc:	550005b7          	lui	a1,0x55000
  a29ee0:	2085a59b          	orshf	a1,a1,s0,sll,16
  a29ee4:	8ccd                	or	s1,s1,a1
  a29ee6:	00992023          	sw	s1,0(s2)
  a29eea:	4532                	lw	a0,12(sp)
  a29eec:	bf5d                	j	a29ea2 <drv_keyslot_create+0xa>

00a29eee <drv_keyslot_destroy>:
  a29eee:	c515                	beqz	a0,a29f1a <drv_keyslot_destroy+0x2c>
  a29ef0:	01855793          	srli	a5,a0,0x18
  a29ef4:	550797bb          	bnei	a5,85,a29f12 <drv_keyslot_destroy+0x24>
  a29ef8:	01055793          	srli	a5,a0,0x10
  a29efc:	0ff7f793          	andi	a5,a5,255
  a29f00:	4705                	li	a4,1
  a29f02:	00f76863          	bltu	a4,a5,a29f12 <drv_keyslot_destroy+0x24>
  a29f06:	01051693          	slli	a3,a0,0x10
  a29f0a:	82c1                	srli	a3,a3,0x10
  a29f0c:	e789                	bnez	a5,a29f16 <drv_keyslot_destroy+0x28>
  a29f0e:	0806e33b          	bltui	a3,8,a29f1a <drv_keyslot_destroy+0x2c>
  a29f12:	557d                	li	a0,-1
  a29f14:	8082                	ret
  a29f16:	fed76ee3          	bltu	a4,a3,a29f12 <drv_keyslot_destroy+0x24>
  a29f1a:	01055593          	srli	a1,a0,0x10
  a29f1e:	9d81                	uxtb	a1
  a29f20:	9d21                	uxth	a0
  a29f22:	1680106f          	j	a2b08a <hal_keyslot_unlock>

00a29f26 <drv_klad_create>:
  a29f26:	e119                	bnez	a0,a29f2c <drv_klad_create+0x6>
  a29f28:	557d                	li	a0,-1
  a29f2a:	8082                	ret
  a29f2c:	8038                	push	{ra,s0-s1},-16
  a29f2e:	842a                	mv	s0,a0
  a29f30:	00a05537          	lui	a0,0xa05
  a29f34:	5d450493          	addi	s1,a0,1492 # a055d4 <g_klad_ctx>
  a29f38:	02400693          	li	a3,36
  a29f3c:	4601                	li	a2,0
  a29f3e:	02400593          	li	a1,36
  a29f42:	5d450513          	addi	a0,a0,1492
  a29f46:	3d1060ef          	jal	ra,a30b16 <memset_s>
  a29f4a:	4785                	li	a5,1
  a29f4c:	02f48023          	sb	a5,32(s1)
  a29f50:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a29f56:	c01c                	sw	a5,0(s0)
  a29f58:	4501                	li	a0,0
  a29f5a:	8034                	popret	{ra,s0-s1},16

00a29f5c <drv_klad_destroy>:
  a29f5c:	8028                	push	{ra,s0},-16
  a29f5e:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a29f64:	547d                	li	s0,-1
  a29f66:	02f51363          	bne	a0,a5,a29f8c <drv_klad_destroy+0x30>
  a29f6a:	00a05537          	lui	a0,0xa05
  a29f6e:	5d450793          	addi	a5,a0,1492 # a055d4 <g_klad_ctx>
  a29f72:	0207c783          	lbu	a5,32(a5)
  a29f76:	4401                	li	s0,0
  a29f78:	cb91                	beqz	a5,a29f8c <drv_klad_destroy+0x30>
  a29f7a:	02400693          	li	a3,36
  a29f7e:	4601                	li	a2,0
  a29f80:	02400593          	li	a1,36
  a29f84:	5d450513          	addi	a0,a0,1492
  a29f88:	38f060ef          	jal	ra,a30b16 <memset_s>
  a29f8c:	8522                	mv	a0,s0
  a29f8e:	8024                	popret	{ra,s0},16

00a29f90 <drv_klad_attach>:
  a29f90:	8148                	push	{ra,s0-s2},-32
  a29f92:	57fd                	li	a5,-1
  a29f94:	c63e                	sw	a5,12(sp)
  a29f96:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a29f9c:	04f51963          	bne	a0,a5,a29fee <drv_klad_attach+0x5e>
  a29fa0:	00a05437          	lui	s0,0xa05
  a29fa4:	5d440793          	addi	a5,s0,1492 # a055d4 <g_klad_ctx>
  a29fa8:	0207c783          	lbu	a5,32(a5)
  a29fac:	5d440413          	addi	s0,s0,1492
  a29fb0:	557d                	li	a0,-1
  a29fb2:	c385                	beqz	a5,a29fd2 <drv_klad_attach+0x42>
  a29fb4:	84ae                	mv	s1,a1
  a29fb6:	8932                	mv	s2,a2
  a29fb8:	0ff67593          	andi	a1,a2,255
  a29fbc:	0204863b          	beqi	s1,2,a29fd4 <drv_klad_attach+0x44>
  a29fc0:	85b2                	mv	a1,a2
  a29fc2:	8526                	mv	a0,s1
  a29fc4:	374010ef          	jal	ra,a2b338 <hal_klad_set_key_addr>
  a29fc8:	c62a                	sw	a0,12(sp)
  a29fca:	47b2                	lw	a5,12(sp)
  a29fcc:	458d                	li	a1,3
  a29fce:	c399                	beqz	a5,a29fd4 <drv_klad_attach+0x44>
  a29fd0:	4532                	lw	a0,12(sp)
  a29fd2:	8144                	popret	{ra,s0-s2},32
  a29fd4:	8526                	mv	a0,s1
  a29fd6:	2d8010ef          	jal	ra,a2b2ae <hal_klad_set_key_dest_cfg>
  a29fda:	c62a                	sw	a0,12(sp)
  a29fdc:	47b2                	lw	a5,12(sp)
  a29fde:	fbed                	bnez	a5,a29fd0 <drv_klad_attach+0x40>
  a29fe0:	4785                	li	a5,1
  a29fe2:	01242e23          	sw	s2,28(s0)
  a29fe6:	a044                	sb	s1,4(s0)
  a29fe8:	02f400a3          	sb	a5,33(s0)
  a29fec:	b7d5                	j	a29fd0 <drv_klad_attach+0x40>
  a29fee:	557d                	li	a0,-1
  a29ff0:	b7cd                	j	a29fd2 <drv_klad_attach+0x42>

00a29ff2 <drv_klad_detach>:
  a29ff2:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a29ff8:	02f51a63          	bne	a0,a5,a2a02c <drv_klad_detach+0x3a>
  a29ffc:	00a0 55d4 079f      	l.li	a5,0xa055d4
  a2a002:	0207c703          	lbu	a4,32(a5)
  a2a006:	557d                	li	a0,-1
  a2a008:	c31d                	beqz	a4,a2a02e <drv_klad_detach+0x3c>
  a2a00a:	23d8                	lbu	a4,4(a5)
  a2a00c:	02b71163          	bne	a4,a1,a2a02e <drv_klad_detach+0x3c>
  a2a010:	4fd8                	lw	a4,28(a5)
  a2a012:	00c71e63          	bne	a4,a2,a2a02e <drv_klad_detach+0x3c>
  a2a016:	0217c703          	lbu	a4,33(a5)
  a2a01a:	4501                	li	a0,0
  a2a01c:	cb09                	beqz	a4,a2a02e <drv_klad_detach+0x3c>
  a2a01e:	020780a3          	sb	zero,33(a5)
  a2a022:	0007ae23          	sw	zero,28(a5)
  a2a026:	00078223          	sb	zero,4(a5)
  a2a02a:	8082                	ret
  a2a02c:	557d                	li	a0,-1
  a2a02e:	8082                	ret

00a2a030 <drv_klad_set_attr>:
  a2a030:	8138                	push	{ra,s0-s1},-32
  a2a032:	57fd                	li	a5,-1
  a2a034:	c63e                	sw	a5,12(sp)
  a2a036:	e199                	bnez	a1,a2a03c <drv_klad_set_attr+0xc>
  a2a038:	557d                	li	a0,-1
  a2a03a:	8134                	popret	{ra,s0-s1},32
  a2a03c:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a2a042:	fef51be3          	bne	a0,a5,a2a038 <drv_klad_set_attr+0x8>
  a2a046:	00a0 55d4 049f      	l.li	s1,0xa055d4
  a2a04c:	0204c783          	lbu	a5,32(s1)
  a2a050:	d7e5                	beqz	a5,a2a038 <drv_klad_set_attr+0x8>
  a2a052:	862e                	mv	a2,a1
  a2a054:	842e                	mv	s0,a1
  a2a056:	46d1                	li	a3,20
  a2a058:	45d1                	li	a1,20
  a2a05a:	00848513          	addi	a0,s1,8
  a2a05e:	23d060ef          	jal	ra,a30a9a <memcpy_s>
  a2a062:	c62a                	sw	a0,12(sp)
  a2a064:	47b2                	lw	a5,12(sp)
  a2a066:	fbe9                	bnez	a5,a2a038 <drv_klad_set_attr+0x8>
  a2a068:	2050                	lbu	a2,4(s0)
  a2a06a:	304c                	lbu	a1,5(s0)
  a2a06c:	2068                	lbu	a0,6(s0)
  a2a06e:	1d6010ef          	jal	ra,a2b244 <hal_klad_set_key_crypto_cfg>
  a2a072:	c62a                	sw	a0,12(sp)
  a2a074:	47b2                	lw	a5,12(sp)
  a2a076:	c399                	beqz	a5,a2a07c <drv_klad_set_attr+0x4c>
  a2a078:	4532                	lw	a0,12(sp)
  a2a07a:	b7c1                	j	a2a03a <drv_klad_set_attr+0xa>
  a2a07c:	00740513          	addi	a0,s0,7
  a2a080:	266010ef          	jal	ra,a2b2e6 <hal_klad_set_key_secure_cfg>
  a2a084:	c62a                	sw	a0,12(sp)
  a2a086:	47b2                	lw	a5,12(sp)
  a2a088:	fbe5                	bnez	a5,a2a078 <drv_klad_set_attr+0x48>
  a2a08a:	401c                	lw	a5,0(s0)
  a2a08c:	c09c                	sw	a5,0(s1)
  a2a08e:	4785                	li	a5,1
  a2a090:	02f48123          	sb	a5,34(s1)
  a2a094:	b7d5                	j	a2a078 <drv_klad_set_attr+0x48>

00a2a096 <drv_klad_set_effective_key>:
  a2a096:	8238                	push	{ra,s0-s1},-48
  a2a098:	57fd                	li	a5,-1
  a2a09a:	c43e                	sw	a5,8(sp)
  a2a09c:	c602                	sw	zero,12(sp)
  a2a09e:	c802                	sw	zero,16(sp)
  a2a0a0:	ca02                	sw	zero,20(sp)
  a2a0a2:	cc02                	sw	zero,24(sp)
  a2a0a4:	ce02                	sw	zero,28(sp)
  a2a0a6:	e199                	bnez	a1,a2a0ac <drv_klad_set_effective_key+0x16>
  a2a0a8:	557d                	li	a0,-1
  a2a0aa:	a895                	j	a2a11e <drv_klad_set_effective_key+0x88>
  a2a0ac:	41dc                	lw	a5,4(a1)
  a2a0ae:	dfed                	beqz	a5,a2a0a8 <drv_klad_set_effective_key+0x12>
  a2a0b0:	219c                	lbu	a5,0(a1)
  a2a0b2:	842e                	mv	s0,a1
  a2a0b4:	84aa                	mv	s1,a0
  a2a0b6:	01078e3b          	beqi	a5,1,a2a0ee <drv_klad_set_effective_key+0x58>
  a2a0ba:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a2a0c0:	fef494e3          	bne	s1,a5,a2a0a8 <drv_klad_set_effective_key+0x12>
  a2a0c4:	00a054b7          	lui	s1,0xa05
  a2a0c8:	5d448793          	addi	a5,s1,1492 # a055d4 <g_klad_ctx>
  a2a0cc:	0207c703          	lbu	a4,32(a5)
  a2a0d0:	5d448493          	addi	s1,s1,1492
  a2a0d4:	db71                	beqz	a4,a2a0a8 <drv_klad_set_effective_key+0x12>
  a2a0d6:	0227c783          	lbu	a5,34(a5)
  a2a0da:	d7f9                	beqz	a5,a2a0a8 <drv_klad_set_effective_key+0x12>
  a2a0dc:	203c                	lbu	a5,2(s0)
  a2a0de:	010782bb          	beqi	a5,1,a2a0e8 <drv_klad_set_effective_key+0x52>
  a2a0e2:	cb91                	beqz	a5,a2a0f6 <drv_klad_set_effective_key+0x60>
  a2a0e4:	02f7913b          	bnei	a5,2,a2a0a8 <drv_klad_set_effective_key+0x12>
  a2a0e8:	00f108a3          	sb	a5,17(sp)
  a2a0ec:	a039                	j	a2a0fa <drv_klad_set_effective_key+0x64>
  a2a0ee:	4505                	li	a0,1
  a2a0f0:	3bad                	jal	ra,a29e6a <crypto_sm_support>
  a2a0f2:	f561                	bnez	a0,a2a0ba <drv_klad_set_effective_key+0x24>
  a2a0f4:	bf55                	j	a2a0a8 <drv_klad_set_effective_key+0x12>
  a2a0f6:	000108a3          	sb	zero,17(sp)
  a2a0fa:	409c                	lw	a5,0(s1)
  a2a0fc:	c63e                	sw	a5,12(sp)
  a2a0fe:	201c                	lbu	a5,0(s0)
  a2a100:	00f10823          	sb	a5,16(sp)
  a2a104:	405c                	lw	a5,4(s0)
  a2a106:	ca3e                	sw	a5,20(sp)
  a2a108:	441c                	lw	a5,8(s0)
  a2a10a:	cc3e                	sw	a5,24(sp)
  a2a10c:	245c                	lbu	a5,12(s0)
  a2a10e:	00f10e23          	sb	a5,28(sp)
  a2a112:	09c010ef          	jal	ra,a2b1ae <hal_klad_lock>
  a2a116:	c42a                	sw	a0,8(sp)
  a2a118:	47a2                	lw	a5,8(sp)
  a2a11a:	c399                	beqz	a5,a2a120 <drv_klad_set_effective_key+0x8a>
  a2a11c:	4522                	lw	a0,8(sp)
  a2a11e:	8234                	popret	{ra,s0-s1},48
  a2a120:	4c7000ef          	jal	ra,a2ade6 <hal_rkp_lock>
  a2a124:	c42a                	sw	a0,8(sp)
  a2a126:	47a2                	lw	a5,8(sp)
  a2a128:	e385                	bnez	a5,a2a148 <drv_klad_set_effective_key+0xb2>
  a2a12a:	0068                	addi	a0,sp,12
  a2a12c:	54d000ef          	jal	ra,a2ae78 <hal_rkp_kdf_hard_calculation>
  a2a130:	c42a                	sw	a0,8(sp)
  a2a132:	47a2                	lw	a5,8(sp)
  a2a134:	eb81                	bnez	a5,a2a144 <drv_klad_set_effective_key+0xae>
  a2a136:	20d0                	lbu	a2,4(s1)
  a2a138:	4532                	lw	a0,12(sp)
  a2a13a:	85a2                	mv	a1,s0
  a2a13c:	22e010ef          	jal	ra,a2b36a <hal_klad_start_com_route>
  a2a140:	c42a                	sw	a0,8(sp)
  a2a142:	47a2                	lw	a5,8(sp)
  a2a144:	4e5000ef          	jal	ra,a2ae28 <hal_rkp_unlock>
  a2a148:	0c0010ef          	jal	ra,a2b208 <hal_klad_unlock>
  a2a14c:	bfc1                	j	a2a11c <drv_klad_set_effective_key+0x86>

00a2a14e <drv_fapc_set_iv>:
  a2a14e:	8118                	push	{ra},-32
  a2a150:	57fd                	li	a5,-1
  a2a152:	c63e                	sw	a5,12(sp)
  a2a154:	368010ef          	jal	ra,a2b4bc <hal_fapc_set_region_iv>
  a2a158:	c62a                	sw	a0,12(sp)
  a2a15a:	4532                	lw	a0,12(sp)
  a2a15c:	8114                	popret	{ra},32

00a2a15e <drv_fapc_set_config>:
  a2a15e:	8148                	push	{ra,s0-s2},-32
  a2a160:	57fd                	li	a5,-1
  a2a162:	c63e                	sw	a5,12(sp)
  a2a164:	0015b793          	seqz	a5,a1
  a2a168:	40f007b3          	neg	a5,a5
  a2a16c:	c63e                	sw	a5,12(sp)
  a2a16e:	47b2                	lw	a5,12(sp)
  a2a170:	c399                	beqz	a5,a2a176 <drv_fapc_set_config+0x18>
  a2a172:	4532                	lw	a0,12(sp)
  a2a174:	8144                	popret	{ra,s0-s2},32
  a2a176:	4d84                	lw	s1,24(a1)
  a2a178:	41d0                	lw	a2,4(a1)
  a2a17a:	842e                	mv	s0,a1
  a2a17c:	418c                	lw	a1,0(a1)
  a2a17e:	892a                	mv	s2,a0
  a2a180:	2b0010ef          	jal	ra,a2b430 <hal_fapc_set_region_addr>
  a2a184:	c62a                	sw	a0,12(sp)
  a2a186:	47b2                	lw	a5,12(sp)
  a2a188:	f7ed                	bnez	a5,a2a172 <drv_fapc_set_config+0x14>
  a2a18a:	4850                	lw	a2,20(s0)
  a2a18c:	480c                	lw	a1,16(s0)
  a2a18e:	854a                	mv	a0,s2
  a2a190:	2c2010ef          	jal	ra,a2b452 <hal_fapc_set_region_permission>
  a2a194:	c62a                	sw	a0,12(sp)
  a2a196:	47b2                	lw	a5,12(sp)
  a2a198:	ffe9                	bnez	a5,a2a172 <drv_fapc_set_config+0x14>
  a2a19a:	030494bb          	bnei	s1,3,a2a1ac <drv_fapc_set_config+0x4e>
  a2a19e:	440c                	lw	a1,8(s0)
  a2a1a0:	854a                	mv	a0,s2
  a2a1a2:	2b4010ef          	jal	ra,a2b456 <hal_fapc_set_region_mac_addr>
  a2a1a6:	c62a                	sw	a0,12(sp)
  a2a1a8:	47b2                	lw	a5,12(sp)
  a2a1aa:	f7e1                	bnez	a5,a2a172 <drv_fapc_set_config+0x14>
  a2a1ac:	85a6                	mv	a1,s1
  a2a1ae:	854a                	mv	a0,s2
  a2a1b0:	2aa010ef          	jal	ra,a2b45a <hal_fapc_set_region_mode>
  a2a1b4:	c62a                	sw	a0,12(sp)
  a2a1b6:	47b2                	lw	a5,12(sp)
  a2a1b8:	ffcd                	bnez	a5,a2a172 <drv_fapc_set_config+0x14>
  a2a1ba:	2c4c                	lbu	a1,28(s0)
  a2a1bc:	854a                	mv	a0,s2
  a2a1be:	2d6010ef          	jal	ra,a2b494 <hal_fapc_region_enable>
  a2a1c2:	c62a                	sw	a0,12(sp)
  a2a1c4:	47b2                	lw	a5,12(sp)
  a2a1c6:	f7d5                	bnez	a5,a2a172 <drv_fapc_set_config+0x14>
  a2a1c8:	444c                	lw	a1,12(s0)
  a2a1ca:	854a                	mv	a0,s2
  a2a1cc:	338010ef          	jal	ra,a2b504 <hal_fapc_set_region_iv_start_addr>
  a2a1d0:	c62a                	sw	a0,12(sp)
  a2a1d2:	47b2                	lw	a5,12(sp)
  a2a1d4:	ffd9                	bnez	a5,a2a172 <drv_fapc_set_config+0x14>
  a2a1d6:	3c5c                	lbu	a5,29(s0)
  a2a1d8:	dfc9                	beqz	a5,a2a172 <drv_fapc_set_config+0x14>
  a2a1da:	854a                	mv	a0,s2
  a2a1dc:	2bc010ef          	jal	ra,a2b498 <hal_fapc_region_lock>
  a2a1e0:	c62a                	sw	a0,12(sp)
  a2a1e2:	47b2                	lw	a5,12(sp)
  a2a1e4:	b779                	j	a2a172 <drv_fapc_set_config+0x14>

00a2a1e6 <drv_fapc_set_bypass_config>:
  a2a1e6:	8228                	push	{ra,s0},-48
  a2a1e8:	57fd                	li	a5,-1
  a2a1ea:	c636                	sw	a3,12(sp)
  a2a1ec:	ce3e                	sw	a5,28(sp)
  a2a1ee:	842a                	mv	s0,a0
  a2a1f0:	240010ef          	jal	ra,a2b430 <hal_fapc_set_region_addr>
  a2a1f4:	ce2a                	sw	a0,28(sp)
  a2a1f6:	47f2                	lw	a5,28(sp)
  a2a1f8:	46b2                	lw	a3,12(sp)
  a2a1fa:	c399                	beqz	a5,a2a200 <drv_fapc_set_bypass_config+0x1a>
  a2a1fc:	4572                	lw	a0,28(sp)
  a2a1fe:	8224                	popret	{ra,s0},48
  a2a200:	def5                	beqz	a3,a2a1fc <drv_fapc_set_bypass_config+0x16>
  a2a202:	8522                	mv	a0,s0
  a2a204:	294010ef          	jal	ra,a2b498 <hal_fapc_region_lock>
  a2a208:	ce2a                	sw	a0,28(sp)
  a2a20a:	47f2                	lw	a5,28(sp)
  a2a20c:	bfc5                	j	a2a1fc <drv_fapc_set_bypass_config+0x16>

00a2a20e <hal_hash_lock>:
  a2a20e:	0010 2fd4 031f      	l.li	t1,0x102fd4
  a2a214:	8302                	jr	t1

00a2a216 <hal_hash_unlock>:
  a2a216:	0010 2d8a 031f      	l.li	t1,0x102d8a
  a2a21c:	8302                	jr	t1

00a2a21e <hal_cipher_hash_config>:
  a2a21e:	0010 2daa 031f      	l.li	t1,0x102daa
  a2a224:	8302                	jr	t1

00a2a226 <hal_cipher_hash_add_in_node>:
  a2a226:	0010 2eb4 031f      	l.li	t1,0x102eb4
  a2a22c:	8302                	jr	t1

00a2a22e <hal_cipher_hash_start>:
  a2a22e:	0010 2f28 031f      	l.li	t1,0x102f28
  a2a234:	8302                	jr	t1

00a2a236 <hal_cipher_hash_wait_done>:
  a2a236:	0010 30fc 031f      	l.li	t1,0x1030fc
  a2a23c:	8302                	jr	t1

00a2a23e <drv_rom_cipher_pke_bp256r_verify>:
  a2a23e:	0010 262a 031f      	l.li	t1,0x10262a
  a2a244:	8302                	jr	t1

00a2a246 <drv_rom_cipher_sha256>:
  a2a246:	8128                	push	{ra,s0},-32
  a2a248:	842a                	mv	s0,a0
  a2a24a:	4505                	li	a0,1
  a2a24c:	c62e                	sw	a1,12(sp)
  a2a24e:	c432                	sw	a2,8(sp)
  a2a250:	c236                	sw	a3,4(sp)
  a2a252:	3f75                	jal	ra,a2a20e <hal_hash_lock>
  a2a254:	4622                	lw	a2,8(sp)
  a2a256:	45b2                	lw	a1,12(sp)
  a2a258:	4712                	lw	a4,4(sp)
  a2a25a:	86b2                	mv	a3,a2
  a2a25c:	4785                	li	a5,1
  a2a25e:	862e                	mv	a2,a1
  a2a260:	0116 9100 051f      	l.li	a0,0x1169100
  a2a266:	85a2                	mv	a1,s0
  a2a268:	fe6ff0ef          	jal	ra,a29a4e <drv_rom_hash>
  a2a26c:	842a                	mv	s0,a0
  a2a26e:	4505                	li	a0,1
  a2a270:	375d                	jal	ra,a2a216 <hal_hash_unlock>
  a2a272:	8522                	mv	a0,s0
  a2a274:	8124                	popret	{ra,s0},32

00a2a276 <uapi_systick_get_count>:
  a2a276:	8048                	push	{ra,s0-s2},-16
  a2a278:	f50ff0ef          	jal	ra,a299c8 <osal_irq_lock>
  a2a27c:	00a0 55f8 079f      	l.li	a5,0xa055f8
  a2a282:	239c                	lbu	a5,0(a5)
  a2a284:	eb81                	bnez	a5,a2a294 <uapi_systick_get_count+0x1e>
  a2a286:	f4aff0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2a28a:	4401                	li	s0,0
  a2a28c:	4481                	li	s1,0
  a2a28e:	8522                	mv	a0,s0
  a2a290:	85a6                	mv	a1,s1
  a2a292:	8044                	popret	{ra,s0-s2},16
  a2a294:	892a                	mv	s2,a0
  a2a296:	761010ef          	jal	ra,a2c1f6 <hal_systick_get_count>
  a2a29a:	842a                	mv	s0,a0
  a2a29c:	854a                	mv	a0,s2
  a2a29e:	84ae                	mv	s1,a1
  a2a2a0:	f30ff0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2a2a4:	b7ed                	j	a2a28e <uapi_systick_get_count+0x18>

00a2a2a6 <uapi_systick_get_us>:
  a2a2a6:	8128                	push	{ra,s0},-32
  a2a2a8:	37f9                	jal	ra,a2a276 <uapi_systick_get_count>
  a2a2aa:	842a                	mv	s0,a0
  a2a2ac:	c62e                	sw	a1,12(sp)
  a2a2ae:	759010ef          	jal	ra,a2c206 <systick_clock_get>
  a2a2b2:	45b2                	lw	a1,12(sp)
  a2a2b4:	000f 4240 079f      	l.li	a5,0xf4240
  a2a2ba:	02f43733          	mulhu	a4,s0,a5
  a2a2be:	862a                	mv	a2,a0
  a2a2c0:	4681                	li	a3,0
  a2a2c2:	02f585b3          	mul	a1,a1,a5
  a2a2c6:	02f40533          	mul	a0,s0,a5
  a2a2ca:	95ba                	add	a1,a1,a4
  a2a2cc:	ad0fe0ef          	jal	ra,a2859c <__udivdi3>
  a2a2d0:	8124                	popret	{ra,s0},32

00a2a2d2 <uapi_tcxo_init>:
  a2a2d2:	8048                	push	{ra,s0-s2},-16
  a2a2d4:	ef4ff0ef          	jal	ra,a299c8 <osal_irq_lock>
  a2a2d8:	00a0 55f9 091f      	l.li	s2,0xa055f9
  a2a2de:	00094783          	lbu	a5,0(s2)
  a2a2e2:	c791                	beqz	a5,a2a2ee <uapi_tcxo_init+0x1c>
  a2a2e4:	eecff0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2a2e8:	4401                	li	s0,0
  a2a2ea:	8522                	mv	a0,s0
  a2a2ec:	8044                	popret	{ra,s0-s2},16
  a2a2ee:	84aa                	mv	s1,a0
  a2a2f0:	230010ef          	jal	ra,a2b520 <hal_tcxo_init>
  a2a2f4:	842a                	mv	s0,a0
  a2a2f6:	c509                	beqz	a0,a2a300 <uapi_tcxo_init+0x2e>
  a2a2f8:	8526                	mv	a0,s1
  a2a2fa:	ed6ff0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2a2fe:	b7f5                	j	a2a2ea <uapi_tcxo_init+0x18>
  a2a300:	4785                	li	a5,1
  a2a302:	00f90023          	sb	a5,0(s2)
  a2a306:	bfcd                	j	a2a2f8 <uapi_tcxo_init+0x26>

00a2a308 <uapi_tcxo_get_count>:
  a2a308:	8048                	push	{ra,s0-s2},-16
  a2a30a:	ebeff0ef          	jal	ra,a299c8 <osal_irq_lock>
  a2a30e:	00a0 55f9 079f      	l.li	a5,0xa055f9
  a2a314:	239c                	lbu	a5,0(a5)
  a2a316:	eb81                	bnez	a5,a2a326 <uapi_tcxo_get_count+0x1e>
  a2a318:	eb8ff0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2a31c:	4401                	li	s0,0
  a2a31e:	4481                	li	s1,0
  a2a320:	8522                	mv	a0,s0
  a2a322:	85a6                	mv	a1,s1
  a2a324:	8044                	popret	{ra,s0-s2},16
  a2a326:	892a                	mv	s2,a0
  a2a328:	224010ef          	jal	ra,a2b54c <hal_tcxo_get>
  a2a32c:	842a                	mv	s0,a0
  a2a32e:	854a                	mv	a0,s2
  a2a330:	84ae                	mv	s1,a1
  a2a332:	e9eff0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2a336:	b7ed                	j	a2a320 <uapi_tcxo_get_count+0x18>

00a2a338 <uapi_tcxo_delay_ms>:
  a2a338:	00a0 55f9 079f      	l.li	a5,0xa055f9
  a2a33e:	239c                	lbu	a5,0(a5)
  a2a340:	c3b1                	beqz	a5,a2a384 <uapi_tcxo_delay_ms+0x4c>
  a2a342:	8048                	push	{ra,s0-s2},-16
  a2a344:	842a                	mv	s0,a0
  a2a346:	6d3010ef          	jal	ra,a2c218 <tcxo_porting_ticks_per_usec_get>
  a2a34a:	3e800793          	li	a5,1000
  a2a34e:	02f405b3          	mul	a1,s0,a5
  a2a352:	02f43433          	mulhu	s0,s0,a5
  a2a356:	02a584b3          	mul	s1,a1,a0
  a2a35a:	02a40433          	mul	s0,s0,a0
  a2a35e:	02a5b5b3          	mulhu	a1,a1,a0
  a2a362:	942e                	add	s0,s0,a1
  a2a364:	3755                	jal	ra,a2a308 <uapi_tcxo_get_count>
  a2a366:	00a48933          	add	s2,s1,a0
  a2a36a:	009934b3          	sltu	s1,s2,s1
  a2a36e:	95a2                	add	a1,a1,s0
  a2a370:	94ae                	add	s1,s1,a1
  a2a372:	3f59                	jal	ra,a2a308 <uapi_tcxo_get_count>
  a2a374:	fe95efe3          	bltu	a1,s1,a2a372 <uapi_tcxo_delay_ms+0x3a>
  a2a378:	00b49463          	bne	s1,a1,a2a380 <uapi_tcxo_delay_ms+0x48>
  a2a37c:	ff256be3          	bltu	a0,s2,a2a372 <uapi_tcxo_delay_ms+0x3a>
  a2a380:	4501                	li	a0,0
  a2a382:	8044                	popret	{ra,s0-s2},16
  a2a384:	557d                	li	a0,-1
  a2a386:	8082                	ret

00a2a388 <uapi_tcxo_delay_us>:
  a2a388:	00a0 55f9 079f      	l.li	a5,0xa055f9
  a2a38e:	239c                	lbu	a5,0(a5)
  a2a390:	cb8d                	beqz	a5,a2a3c2 <uapi_tcxo_delay_us+0x3a>
  a2a392:	8048                	push	{ra,s0-s2},-16
  a2a394:	842a                	mv	s0,a0
  a2a396:	683010ef          	jal	ra,a2c218 <tcxo_porting_ticks_per_usec_get>
  a2a39a:	02a404b3          	mul	s1,s0,a0
  a2a39e:	02a43433          	mulhu	s0,s0,a0
  a2a3a2:	379d                	jal	ra,a2a308 <uapi_tcxo_get_count>
  a2a3a4:	00a48933          	add	s2,s1,a0
  a2a3a8:	009934b3          	sltu	s1,s2,s1
  a2a3ac:	942e                	add	s0,s0,a1
  a2a3ae:	9426                	add	s0,s0,s1
  a2a3b0:	3fa1                	jal	ra,a2a308 <uapi_tcxo_get_count>
  a2a3b2:	fe85efe3          	bltu	a1,s0,a2a3b0 <uapi_tcxo_delay_us+0x28>
  a2a3b6:	00b41463          	bne	s0,a1,a2a3be <uapi_tcxo_delay_us+0x36>
  a2a3ba:	ff256be3          	bltu	a0,s2,a2a3b0 <uapi_tcxo_delay_us+0x28>
  a2a3be:	4501                	li	a0,0
  a2a3c0:	8044                	popret	{ra,s0-s2},16
  a2a3c2:	557d                	li	a0,-1
  a2a3c4:	8082                	ret

00a2a3c6 <uart_rx_buffer_report>:
  a2a3c6:	8038                	push	{ra,s0-s1},-16
  a2a3c8:	00a05737          	lui	a4,0xa05
  a2a3cc:	60070793          	addi	a5,a4,1536 # a05600 <g_uart_rx_state_array>
  a2a3d0:	18a797db          	muliadd	a5,a5,a0,24
  a2a3d4:	4394                	lw	a3,0(a5)
  a2a3d6:	862e                	mv	a2,a1
  a2a3d8:	842a                	mv	s0,a0
  a2a3da:	2bce                	lhu	a1,20(a5)
  a2a3dc:	60070493          	addi	s1,a4,1536
  a2a3e0:	c299                	beqz	a3,a2a3e6 <uart_rx_buffer_report+0x20>
  a2a3e2:	47c8                	lw	a0,12(a5)
  a2a3e4:	9682                	jalr	a3
  a2a3e6:	1884945b          	muliadd	s0,s1,s0,24
  a2a3ea:	00041a23          	sh	zero,20(s0)
  a2a3ee:	8034                	popret	{ra,s0-s1},16

00a2a3f0 <uart_helper_invoke_current_fragment_callback>:
  a2a3f0:	00a0 5648 079f      	l.li	a5,0xa05648
  a2a3f6:	4ca7955b          	muliadd	a0,a5,a0,76
  a2a3fa:	411c                	lw	a5,0(a0)
  a2a3fc:	0087a303          	lw	t1,8(a5)
  a2a400:	00030663          	beqz	t1,a2a40c <uart_helper_invoke_current_fragment_callback+0x1c>
  a2a404:	43d0                	lw	a2,4(a5)
  a2a406:	47cc                	lw	a1,12(a5)
  a2a408:	4388                	lw	a0,0(a5)
  a2a40a:	8302                	jr	t1
  a2a40c:	8082                	ret

00a2a40e <uart_helper_move_to_next_fragment>:
  a2a40e:	04c00793          	li	a5,76
  a2a412:	02f507b3          	mul	a5,a0,a5
  a2a416:	00a056b7          	lui	a3,0xa05
  a2a41a:	64868713          	addi	a4,a3,1608 # a05648 <g_uart_tx_state_array>
  a2a41e:	64868693          	addi	a3,a3,1608
  a2a422:	00f705b3          	add	a1,a4,a5
  a2a426:	4190                	lw	a2,0(a1)
  a2a428:	07b1                	addi	a5,a5,12
  a2a42a:	97ba                	add	a5,a5,a4
  a2a42c:	0641                	addi	a2,a2,16
  a2a42e:	04078713          	addi	a4,a5,64
  a2a432:	00e67b63          	bgeu	a2,a4,a2a448 <uart_helper_move_to_next_fragment+0x3a>
  a2a436:	c190                	sw	a2,0(a1)
  a2a438:	4ca6955b          	muliadd	a0,a3,a0,76
  a2a43c:	251e                	lhu	a5,8(a0)
  a2a43e:	00051523          	sh	zero,10(a0)
  a2a442:	17fd                	addi	a5,a5,-1
  a2a444:	a51e                	sh	a5,8(a0)
  a2a446:	8082                	ret
  a2a448:	c19c                	sw	a5,0(a1)
  a2a44a:	b7fd                	j	a2a438 <uart_helper_move_to_next_fragment+0x2a>

00a2a44c <uart_helper_send_next_char>:
  a2a44c:	8038                	push	{ra,s0-s1},-16
  a2a44e:	00a0 5648 041f      	l.li	s0,0xa05648
  a2a454:	4ca4145b          	muliadd	s0,s0,a0,76
  a2a458:	4004                	lw	s1,0(s0)
  a2a45a:	243e                	lhu	a5,10(s0)
  a2a45c:	4605                	li	a2,1
  a2a45e:	408c                	lw	a1,0(s1)
  a2a460:	95be                	add	a1,a1,a5
  a2a462:	1a4010ef          	jal	ra,a2b606 <hal_uart_write>
  a2a466:	242a                	lhu	a0,10(s0)
  a2a468:	0505                	addi	a0,a0,1
  a2a46a:	9d21                	uxth	a0
  a2a46c:	a42a                	sh	a0,10(s0)
  a2a46e:	44dc                	lw	a5,12(s1)
  a2a470:	00f53533          	sltu	a0,a0,a5
  a2a474:	00154513          	xori	a0,a0,1
  a2a478:	8034                	popret	{ra,s0-s1},16

00a2a47a <uart_error_isr>:
  a2a47a:	8148                	push	{ra,s0-s2},-32
  a2a47c:	842a                	mv	s0,a0
  a2a47e:	00f10613          	addi	a2,sp,15
  a2a482:	45a5                	li	a1,9
  a2a484:	00a0 5600 049f      	l.li	s1,0xa05600
  a2a48a:	00010723          	sb	zero,14(sp)
  a2a48e:	000107a3          	sb	zero,15(sp)
  a2a492:	1884995b          	muliadd	s2,s1,s0,24
  a2a496:	194010ef          	jal	ra,a2b62a <hal_uart_ctrl>
  a2a49a:	00f14783          	lbu	a5,15(sp)
  a2a49e:	cb99                	beqz	a5,a2a4b4 <uart_error_isr+0x3a>
  a2a4a0:	188494db          	muliadd	s1,s1,s0,24
  a2a4a4:	28de                	lhu	a5,20(s1)
  a2a4a6:	c791                	beqz	a5,a2a4b2 <uart_error_isr+0x38>
  a2a4a8:	409c                	lw	a5,0(s1)
  a2a4aa:	c781                	beqz	a5,a2a4b2 <uart_error_isr+0x38>
  a2a4ac:	4585                	li	a1,1
  a2a4ae:	8522                	mv	a0,s0
  a2a4b0:	3f19                	jal	ra,a2a3c6 <uart_rx_buffer_report>
  a2a4b2:	8144                	popret	{ra,s0-s2},32
  a2a4b4:	4605                	li	a2,1
  a2a4b6:	00e10593          	addi	a1,sp,14
  a2a4ba:	8522                	mv	a0,s0
  a2a4bc:	15c010ef          	jal	ra,a2b618 <hal_uart_read>
  a2a4c0:	01495683          	lhu	a3,20(s2)
  a2a4c4:	00c92783          	lw	a5,12(s2)
  a2a4c8:	00e14703          	lbu	a4,14(sp)
  a2a4cc:	97b6                	add	a5,a5,a3
  a2a4ce:	a398                	sb	a4,0(a5)
  a2a4d0:	01495783          	lhu	a5,20(s2)
  a2a4d4:	01095703          	lhu	a4,16(s2)
  a2a4d8:	0785                	addi	a5,a5,1
  a2a4da:	9fa1                	uxth	a5
  a2a4dc:	00f91a23          	sh	a5,20(s2)
  a2a4e0:	00e7e563          	bltu	a5,a4,a2a4ea <uart_error_isr+0x70>
  a2a4e4:	4585                	li	a1,1
  a2a4e6:	8522                	mv	a0,s0
  a2a4e8:	3df9                	jal	ra,a2a3c6 <uart_rx_buffer_report>
  a2a4ea:	00f10613          	addi	a2,sp,15
  a2a4ee:	45a5                	li	a1,9
  a2a4f0:	8522                	mv	a0,s0
  a2a4f2:	138010ef          	jal	ra,a2b62a <hal_uart_ctrl>
  a2a4f6:	b755                	j	a2a49a <uart_error_isr+0x20>

00a2a4f8 <uart_evt_callback>:
  a2a4f8:	8158                	push	{ra,s0-s3},-48
  a2a4fa:	15fd                	addi	a1,a1,-1 # 54ffffff <_gp_+0x545cb7eb>
  a2a4fc:	0ff5f793          	andi	a5,a1,255
  a2a500:	0567f3bb          	bgeui	a5,5,a2a68e <uart_evt_callback+0x196>
  a2a504:	00a325b7          	lui	a1,0xa32
  a2a508:	6cc58593          	addi	a1,a1,1740 # a326cc <g_sm3_ival+0x20>
  a2a50c:	04f5859b          	addshf	a1,a1,a5,sll,2
  a2a510:	419c                	lw	a5,0(a1)
  a2a512:	842a                	mv	s0,a0
  a2a514:	8782                	jr	a5
  a2a516:	00a0 5648 049f      	l.li	s1,0xa05648
  a2a51c:	000107a3          	sb	zero,15(sp)
  a2a520:	4ca494db          	muliadd	s1,s1,a0,76
  a2a524:	249e                	lhu	a5,8(s1)
  a2a526:	eb81                	bnez	a5,a2a536 <uart_evt_callback+0x3e>
  a2a528:	4601                	li	a2,0
  a2a52a:	4589                	li	a1,2
  a2a52c:	8522                	mv	a0,s0
  a2a52e:	0fc010ef          	jal	ra,a2b62a <hal_uart_ctrl>
  a2a532:	4501                	li	a0,0
  a2a534:	8154                	popret	{ra,s0-s3},48
  a2a536:	00f10613          	addi	a2,sp,15
  a2a53a:	459d                	li	a1,7
  a2a53c:	8522                	mv	a0,s0
  a2a53e:	0ec010ef          	jal	ra,a2b62a <hal_uart_ctrl>
  a2a542:	00f14783          	lbu	a5,15(sp)
  a2a546:	f7f5                	bnez	a5,a2a532 <uart_evt_callback+0x3a>
  a2a548:	8522                	mv	a0,s0
  a2a54a:	3709                	jal	ra,a2a44c <uart_helper_send_next_char>
  a2a54c:	d56d                	beqz	a0,a2a536 <uart_evt_callback+0x3e>
  a2a54e:	8522                	mv	a0,s0
  a2a550:	3545                	jal	ra,a2a3f0 <uart_helper_invoke_current_fragment_callback>
  a2a552:	8522                	mv	a0,s0
  a2a554:	3d6d                	jal	ra,a2a40e <uart_helper_move_to_next_fragment>
  a2a556:	b7f9                	j	a2a524 <uart_evt_callback+0x2c>
  a2a558:	00f10613          	addi	a2,sp,15
  a2a55c:	45a5                	li	a1,9
  a2a55e:	00a0 5600 049f      	l.li	s1,0xa05600
  a2a564:	00010723          	sb	zero,14(sp)
  a2a568:	000107a3          	sb	zero,15(sp)
  a2a56c:	4981                	li	s3,0
  a2a56e:	0bc010ef          	jal	ra,a2b62a <hal_uart_ctrl>
  a2a572:	1884995b          	muliadd	s2,s1,s0,24
  a2a576:	00f14783          	lbu	a5,15(sp)
  a2a57a:	cf81                	beqz	a5,a2a592 <uart_evt_callback+0x9a>
  a2a57c:	188497db          	muliadd	a5,s1,s0,24
  a2a580:	2bda                	lhu	a4,20(a5)
  a2a582:	db45                	beqz	a4,a2a532 <uart_evt_callback+0x3a>
  a2a584:	2bf8                	lbu	a4,22(a5)
  a2a586:	8b09                	andi	a4,a4,2
  a2a588:	d74d                	beqz	a4,a2a532 <uart_evt_callback+0x3a>
  a2a58a:	2bbe                	lhu	a5,18(a5)
  a2a58c:	faf9e3e3          	bltu	s3,a5,a2a532 <uart_evt_callback+0x3a>
  a2a590:	a071                	j	a2a61c <uart_evt_callback+0x124>
  a2a592:	4605                	li	a2,1
  a2a594:	00e10593          	addi	a1,sp,14
  a2a598:	8522                	mv	a0,s0
  a2a59a:	07e010ef          	jal	ra,a2b618 <hal_uart_read>
  a2a59e:	00092783          	lw	a5,0(s2)
  a2a5a2:	0985                	addi	s3,s3,1 # ffff0001 <_gp_+0xff5bb7ed>
  a2a5a4:	09c2                	slli	s3,s3,0x10
  a2a5a6:	0109d993          	srli	s3,s3,0x10
  a2a5aa:	eb81                	bnez	a5,a2a5ba <uart_evt_callback+0xc2>
  a2a5ac:	00f10613          	addi	a2,sp,15
  a2a5b0:	45a5                	li	a1,9
  a2a5b2:	8522                	mv	a0,s0
  a2a5b4:	076010ef          	jal	ra,a2b62a <hal_uart_ctrl>
  a2a5b8:	bf7d                	j	a2a576 <uart_evt_callback+0x7e>
  a2a5ba:	01495683          	lhu	a3,20(s2)
  a2a5be:	00c92783          	lw	a5,12(s2)
  a2a5c2:	00e14703          	lbu	a4,14(sp)
  a2a5c6:	97b6                	add	a5,a5,a3
  a2a5c8:	a398                	sb	a4,0(a5)
  a2a5ca:	01495783          	lhu	a5,20(s2)
  a2a5ce:	01095703          	lhu	a4,16(s2)
  a2a5d2:	0785                	addi	a5,a5,1
  a2a5d4:	9fa1                	uxth	a5
  a2a5d6:	00f91a23          	sh	a5,20(s2)
  a2a5da:	fce7e9e3          	bltu	a5,a4,a2a5ac <uart_evt_callback+0xb4>
  a2a5de:	4581                	li	a1,0
  a2a5e0:	8522                	mv	a0,s0
  a2a5e2:	33d5                	jal	ra,a2a3c6 <uart_rx_buffer_report>
  a2a5e4:	b7e1                	j	a2a5ac <uart_evt_callback+0xb4>
  a2a5e6:	00f10613          	addi	a2,sp,15
  a2a5ea:	45a5                	li	a1,9
  a2a5ec:	00a0 5600 049f      	l.li	s1,0xa05600
  a2a5f2:	00010723          	sb	zero,14(sp)
  a2a5f6:	000107a3          	sb	zero,15(sp)
  a2a5fa:	4981                	li	s3,0
  a2a5fc:	02e010ef          	jal	ra,a2b62a <hal_uart_ctrl>
  a2a600:	1884995b          	muliadd	s2,s1,s0,24
  a2a604:	00f14783          	lbu	a5,15(sp)
  a2a608:	cf91                	beqz	a5,a2a624 <uart_evt_callback+0x12c>
  a2a60a:	188497db          	muliadd	a5,s1,s0,24
  a2a60e:	2bda                	lhu	a4,20(a5)
  a2a610:	f20701e3          	beqz	a4,a2a532 <uart_evt_callback+0x3a>
  a2a614:	2bf8                	lbu	a4,22(a5)
  a2a616:	00177693          	andi	a3,a4,1
  a2a61a:	d6b5                	beqz	a3,a2a586 <uart_evt_callback+0x8e>
  a2a61c:	4581                	li	a1,0
  a2a61e:	8522                	mv	a0,s0
  a2a620:	335d                	jal	ra,a2a3c6 <uart_rx_buffer_report>
  a2a622:	bf01                	j	a2a532 <uart_evt_callback+0x3a>
  a2a624:	4605                	li	a2,1
  a2a626:	00e10593          	addi	a1,sp,14
  a2a62a:	8522                	mv	a0,s0
  a2a62c:	7ed000ef          	jal	ra,a2b618 <hal_uart_read>
  a2a630:	00092783          	lw	a5,0(s2)
  a2a634:	0985                	addi	s3,s3,1
  a2a636:	09c2                	slli	s3,s3,0x10
  a2a638:	0109d993          	srli	s3,s3,0x10
  a2a63c:	eb81                	bnez	a5,a2a64c <uart_evt_callback+0x154>
  a2a63e:	00f10613          	addi	a2,sp,15
  a2a642:	45a5                	li	a1,9
  a2a644:	8522                	mv	a0,s0
  a2a646:	7e5000ef          	jal	ra,a2b62a <hal_uart_ctrl>
  a2a64a:	bf6d                	j	a2a604 <uart_evt_callback+0x10c>
  a2a64c:	01495683          	lhu	a3,20(s2)
  a2a650:	00c92783          	lw	a5,12(s2)
  a2a654:	00e14703          	lbu	a4,14(sp)
  a2a658:	97b6                	add	a5,a5,a3
  a2a65a:	a398                	sb	a4,0(a5)
  a2a65c:	01495783          	lhu	a5,20(s2)
  a2a660:	01095703          	lhu	a4,16(s2)
  a2a664:	0785                	addi	a5,a5,1
  a2a666:	9fa1                	uxth	a5
  a2a668:	00f91a23          	sh	a5,20(s2)
  a2a66c:	fce7e9e3          	bltu	a5,a4,a2a63e <uart_evt_callback+0x146>
  a2a670:	4581                	li	a1,0
  a2a672:	8522                	mv	a0,s0
  a2a674:	3b89                	jal	ra,a2a3c6 <uart_rx_buffer_report>
  a2a676:	b7e1                	j	a2a63e <uart_evt_callback+0x146>
  a2a678:	00a0 5600 079f      	l.li	a5,0xa05600
  a2a67e:	18a797db          	muliadd	a5,a5,a0,24
  a2a682:	43dc                	lw	a5,4(a5)
  a2a684:	c781                	beqz	a5,a2a68c <uart_evt_callback+0x194>
  a2a686:	4581                	li	a1,0
  a2a688:	4501                	li	a0,0
  a2a68a:	9782                	jalr	a5
  a2a68c:	8522                	mv	a0,s0
  a2a68e:	33f5                	jal	ra,a2a47a <uart_error_isr>
  a2a690:	b54d                	j	a2a532 <uart_evt_callback+0x3a>
  a2a692:	00a0 5600 079f      	l.li	a5,0xa05600
  a2a698:	18a797db          	muliadd	a5,a5,a0,24
  a2a69c:	479c                	lw	a5,8(a5)
  a2a69e:	b7dd                	j	a2a684 <uart_evt_callback+0x18c>

00a2a6a0 <uapi_uart_init>:
  a2a6a0:	8158                	push	{ra,s0-s3},-48
  a2a6a2:	4789                	li	a5,2
  a2a6a4:	0aa7ed63          	bltu	a5,a0,a2a75e <uapi_uart_init+0xbe>
  a2a6a8:	c9dd                	beqz	a1,a2a75e <uapi_uart_init+0xbe>
  a2a6aa:	0015c883          	lbu	a7,1(a1)
  a2a6ae:	07200813          	li	a6,114
  a2a6b2:	0b186663          	bltu	a6,a7,a2a75e <uapi_uart_init+0xbe>
  a2a6b6:	0005c883          	lbu	a7,0(a1)
  a2a6ba:	0b186263          	bltu	a6,a7,a2a75e <uapi_uart_init+0xbe>
  a2a6be:	c245                	beqz	a2,a2a75e <uapi_uart_init+0xbe>
  a2a6c0:	00464803          	lbu	a6,4(a2)
  a2a6c4:	042876bb          	bgeui	a6,4,a2a75e <uapi_uart_init+0xbe>
  a2a6c8:	00664803          	lbu	a6,6(a2)
  a2a6cc:	0907e963          	bltu	a5,a6,a2a75e <uapi_uart_init+0xbe>
  a2a6d0:	325c                	lbu	a5,5(a2)
  a2a6d2:	0227f33b          	bgeui	a5,2,a2a75e <uapi_uart_init+0xbe>
  a2a6d6:	00a05937          	lui	s2,0xa05
  a2a6da:	5fc90793          	addi	a5,s2,1532 # a055fc <g_uart_inited>
  a2a6de:	97aa                	add	a5,a5,a0
  a2a6e0:	239c                	lbu	a5,0(a5)
  a2a6e2:	84aa                	mv	s1,a0
  a2a6e4:	5fc90913          	addi	s2,s2,1532
  a2a6e8:	4401                	li	s0,0
  a2a6ea:	eba5                	bnez	a5,a2a75a <uapi_uart_init+0xba>
  a2a6ec:	89ba                	mv	s3,a4
  a2a6ee:	c636                	sw	a3,12(sp)
  a2a6f0:	8432                	mv	s0,a2
  a2a6f2:	c42e                	sw	a1,8(sp)
  a2a6f4:	2b5010ef          	jal	ra,a2c1a8 <uart_port_config_pinmux>
  a2a6f8:	06098763          	beqz	s3,a2a766 <uapi_uart_init+0xc6>
  a2a6fc:	0009a683          	lw	a3,0(s3)
  a2a700:	c2bd                	beqz	a3,a2a766 <uapi_uart_init+0xc6>
  a2a702:	0049a703          	lw	a4,4(s3)
  a2a706:	c325                	beqz	a4,a2a766 <uapi_uart_init+0xc6>
  a2a708:	04c00513          	li	a0,76
  a2a70c:	02a48533          	mul	a0,s1,a0
  a2a710:	00a0 5600 071f      	l.li	a4,0xa05600
  a2a716:	1897175b          	muliadd	a4,a4,s1,24
  a2a71a:	c754                	sw	a3,12(a4)
  a2a71c:	0049a683          	lw	a3,4(s3)
  a2a720:	47b2                	lw	a5,12(sp)
  a2a722:	4622                	lw	a2,8(sp)
  a2a724:	ab16                	sh	a3,16(a4)
  a2a726:	00a0 5648 071f      	l.li	a4,0xa05648
  a2a72c:	86a2                	mv	a3,s0
  a2a72e:	00c50593          	addi	a1,a0,12
  a2a732:	95ba                	add	a1,a1,a4
  a2a734:	972a                	add	a4,a4,a0
  a2a736:	c30c                	sw	a1,0(a4)
  a2a738:	c34c                	sw	a1,4(a4)
  a2a73a:	8526                	mv	a0,s1
  a2a73c:	4711                	li	a4,4
  a2a73e:	00a2 a4f8 059f      	l.li	a1,0xa2a4f8
  a2a744:	685000ef          	jal	ra,a2b5c8 <hal_uart_init>
  a2a748:	842a                	mv	s0,a0
  a2a74a:	e901                	bnez	a0,a2a75a <uapi_uart_init+0xba>
  a2a74c:	9926                	add	s2,s2,s1
  a2a74e:	4785                	li	a5,1
  a2a750:	8526                	mv	a0,s1
  a2a752:	00f90023          	sb	a5,0(s2)
  a2a756:	263010ef          	jal	ra,a2c1b8 <uart_port_register_irq>
  a2a75a:	8522                	mv	a0,s0
  a2a75c:	8154                	popret	{ra,s0-s3},48
  a2a75e:	80000437          	lui	s0,0x80000
  a2a762:	0405                	addi	s0,s0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2a764:	bfdd                	j	a2a75a <uapi_uart_init+0xba>
  a2a766:	8000 1044 041f      	l.li	s0,0x80001044
  a2a76c:	b7fd                	j	a2a75a <uapi_uart_init+0xba>

00a2a76e <uapi_uart_write>:
  a2a76e:	8178                	push	{ra,s0-s5},-48
  a2a770:	000107a3          	sb	zero,15(sp)
  a2a774:	0315773b          	bgeui	a0,3,a2a7d0 <uapi_uart_write+0x62>
  a2a778:	cda1                	beqz	a1,a2a7d0 <uapi_uart_write+0x62>
  a2a77a:	ca39                	beqz	a2,a2a7d0 <uapi_uart_write+0x62>
  a2a77c:	00a0 55fc 079f      	l.li	a5,0xa055fc
  a2a782:	97aa                	add	a5,a5,a0
  a2a784:	239c                	lbu	a5,0(a5)
  a2a786:	84aa                	mv	s1,a0
  a2a788:	cba1                	beqz	a5,a2a7d8 <uapi_uart_write+0x6a>
  a2a78a:	89ae                	mv	s3,a1
  a2a78c:	8932                	mv	s2,a2
  a2a78e:	25f010ef          	jal	ra,a2c1ec <uart_porting_lock>
  a2a792:	8aaa                	mv	s5,a0
  a2a794:	994e                	add	s2,s2,s3
  a2a796:	8a4e                	mv	s4,s3
  a2a798:	413a0433          	sub	s0,s4,s3
  a2a79c:	012a1863          	bne	s4,s2,a2a7ac <uapi_uart_write+0x3e>
  a2a7a0:	85d6                	mv	a1,s5
  a2a7a2:	8526                	mv	a0,s1
  a2a7a4:	24d010ef          	jal	ra,a2c1f0 <uart_porting_unlock>
  a2a7a8:	8522                	mv	a0,s0
  a2a7aa:	8174                	popret	{ra,s0-s5},48
  a2a7ac:	00f10613          	addi	a2,sp,15
  a2a7b0:	459d                	li	a1,7
  a2a7b2:	8526                	mv	a0,s1
  a2a7b4:	677000ef          	jal	ra,a2b62a <hal_uart_ctrl>
  a2a7b8:	00f14783          	lbu	a5,15(sp)
  a2a7bc:	f3e5                	bnez	a5,a2a79c <uapi_uart_write+0x2e>
  a2a7be:	85d2                	mv	a1,s4
  a2a7c0:	001a0413          	addi	s0,s4,1
  a2a7c4:	4605                	li	a2,1
  a2a7c6:	8526                	mv	a0,s1
  a2a7c8:	63f000ef          	jal	ra,a2b606 <hal_uart_write>
  a2a7cc:	8a22                	mv	s4,s0
  a2a7ce:	b7e9                	j	a2a798 <uapi_uart_write+0x2a>
  a2a7d0:	80000437          	lui	s0,0x80000
  a2a7d4:	0405                	addi	s0,s0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2a7d6:	bfc9                	j	a2a7a8 <uapi_uart_write+0x3a>
  a2a7d8:	8000 1040 041f      	l.li	s0,0x80001040
  a2a7de:	b7e9                	j	a2a7a8 <uapi_uart_write+0x3a>

00a2a7e0 <uapi_watchdog_init>:
  a2a7e0:	8058                	push	{ra,s0-s3},-32
  a2a7e2:	89aa                	mv	s3,a0
  a2a7e4:	249010ef          	jal	ra,a2c22c <watchdog_port_register_hal_funcs>
  a2a7e8:	255010ef          	jal	ra,a2c23c <watchdog_port_register_irq>
  a2a7ec:	9dcff0ef          	jal	ra,a299c8 <osal_irq_lock>
  a2a7f0:	84aa                	mv	s1,a0
  a2a7f2:	286010ef          	jal	ra,a2ba78 <hal_watchdog_get_funcs>
  a2a7f6:	411c                	lw	a5,0(a0)
  a2a7f8:	00a0 572c 091f      	l.li	s2,0xa0572c
  a2a7fe:	00a92023          	sw	a0,0(s2)
  a2a802:	9782                	jalr	a5
  a2a804:	c519                	beqz	a0,a2a812 <uapi_watchdog_init+0x32>
  a2a806:	842a                	mv	s0,a0
  a2a808:	8526                	mv	a0,s1
  a2a80a:	9c6ff0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2a80e:	8522                	mv	a0,s0
  a2a810:	8054                	popret	{ra,s0-s3},32
  a2a812:	00092783          	lw	a5,0(s2)
  a2a816:	854e                	mv	a0,s3
  a2a818:	479c                	lw	a5,8(a5)
  a2a81a:	9782                	jalr	a5
  a2a81c:	842a                	mv	s0,a0
  a2a81e:	8526                	mv	a0,s1
  a2a820:	9b0ff0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2a824:	f46d                	bnez	s0,a2a80e <uapi_watchdog_init+0x2e>
  a2a826:	00a0 5731 079f      	l.li	a5,0xa05731
  a2a82c:	4705                	li	a4,1
  a2a82e:	a398                	sb	a4,0(a5)
  a2a830:	bff9                	j	a2a80e <uapi_watchdog_init+0x2e>

00a2a832 <uapi_watchdog_enable>:
  a2a832:	00a0 5731 079f      	l.li	a5,0xa05731
  a2a838:	239c                	lbu	a5,0(a5)
  a2a83a:	cb9d                	beqz	a5,a2a870 <uapi_watchdog_enable+0x3e>
  a2a83c:	8048                	push	{ra,s0-s2},-16
  a2a83e:	4485                	li	s1,1
  a2a840:	57fd                	li	a5,-1
  a2a842:	02a4e563          	bltu	s1,a0,a2a86c <uapi_watchdog_enable+0x3a>
  a2a846:	842a                	mv	s0,a0
  a2a848:	980ff0ef          	jal	ra,a299c8 <osal_irq_lock>
  a2a84c:	00a0 572c 079f      	l.li	a5,0xa0572c
  a2a852:	439c                	lw	a5,0(a5)
  a2a854:	892a                	mv	s2,a0
  a2a856:	8522                	mv	a0,s0
  a2a858:	4b9c                	lw	a5,16(a5)
  a2a85a:	9782                	jalr	a5
  a2a85c:	854a                	mv	a0,s2
  a2a85e:	972ff0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2a862:	00a0 5730 079f      	l.li	a5,0xa05730
  a2a868:	a384                	sb	s1,0(a5)
  a2a86a:	4781                	li	a5,0
  a2a86c:	853e                	mv	a0,a5
  a2a86e:	8044                	popret	{ra,s0-s2},16
  a2a870:	57fd                	li	a5,-1
  a2a872:	853e                	mv	a0,a5
  a2a874:	8082                	ret

00a2a876 <uapi_watchdog_disable>:
  a2a876:	00a0 5731 079f      	l.li	a5,0xa05731
  a2a87c:	239c                	lbu	a5,0(a5)
  a2a87e:	e399                	bnez	a5,a2a884 <uapi_watchdog_disable+0xe>
  a2a880:	557d                	li	a0,-1
  a2a882:	8082                	ret
  a2a884:	8118                	push	{ra},-32
  a2a886:	942ff0ef          	jal	ra,a299c8 <osal_irq_lock>
  a2a88a:	00a0 572c 079f      	l.li	a5,0xa0572c
  a2a890:	439c                	lw	a5,0(a5)
  a2a892:	c62a                	sw	a0,12(sp)
  a2a894:	4bdc                	lw	a5,20(a5)
  a2a896:	9782                	jalr	a5
  a2a898:	4532                	lw	a0,12(sp)
  a2a89a:	936ff0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2a89e:	00a0 5730 079f      	l.li	a5,0xa05730
  a2a8a4:	00078023          	sb	zero,0(a5)
  a2a8a8:	4501                	li	a0,0
  a2a8aa:	8114                	popret	{ra},32

00a2a8ac <uapi_watchdog_deinit>:
  a2a8ac:	00a057b7          	lui	a5,0xa05
  a2a8b0:	7317c703          	lbu	a4,1841(a5) # a05731 <g_watchdog_inited>
  a2a8b4:	c71d                	beqz	a4,a2a8e2 <uapi_watchdog_deinit+0x36>
  a2a8b6:	8028                	push	{ra,s0},-16
  a2a8b8:	73178413          	addi	s0,a5,1841
  a2a8bc:	00a0 5730 079f      	l.li	a5,0xa05730
  a2a8c2:	239c                	lbu	a5,0(a5)
  a2a8c4:	c391                	beqz	a5,a2a8c8 <uapi_watchdog_deinit+0x1c>
  a2a8c6:	3f45                	jal	ra,a2a876 <uapi_watchdog_disable>
  a2a8c8:	00a0 572c 079f      	l.li	a5,0xa0572c
  a2a8ce:	439c                	lw	a5,0(a5)
  a2a8d0:	c399                	beqz	a5,a2a8d6 <uapi_watchdog_deinit+0x2a>
  a2a8d2:	43dc                	lw	a5,4(a5)
  a2a8d4:	9782                	jalr	a5
  a2a8d6:	163010ef          	jal	ra,a2c238 <watchdog_port_unregister_hal_funcs>
  a2a8da:	4501                	li	a0,0
  a2a8dc:	00040023          	sb	zero,0(s0)
  a2a8e0:	8024                	popret	{ra,s0},16
  a2a8e2:	4501                	li	a0,0
  a2a8e4:	8082                	ret

00a2a8e6 <uapi_watchdog_kick>:
  a2a8e6:	00a0 5730 079f      	l.li	a5,0xa05730
  a2a8ec:	239c                	lbu	a5,0(a5)
  a2a8ee:	e399                	bnez	a5,a2a8f4 <uapi_watchdog_kick+0xe>
  a2a8f0:	557d                	li	a0,-1
  a2a8f2:	8082                	ret
  a2a8f4:	8118                	push	{ra},-32
  a2a8f6:	8d2ff0ef          	jal	ra,a299c8 <osal_irq_lock>
  a2a8fa:	00a0 572c 079f      	l.li	a5,0xa0572c
  a2a900:	439c                	lw	a5,0(a5)
  a2a902:	c62a                	sw	a0,12(sp)
  a2a904:	4f9c                	lw	a5,24(a5)
  a2a906:	9782                	jalr	a5
  a2a908:	4532                	lw	a0,12(sp)
  a2a90a:	8c6ff0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2a90e:	4501                	li	a0,0
  a2a910:	8114                	popret	{ra},32

00a2a912 <uapi_efuse_init>:
  a2a912:	8018                	push	{ra},-16
  a2a914:	0d0020ef          	jal	ra,a2c9e4 <efuse_port_register_hal_funcs>
  a2a918:	28c1                	jal	ra,a2a9e8 <hal_efuse_get_funcs>
  a2a91a:	00052303          	lw	t1,0(a0)
  a2a91e:	8010                	pop	{ra},16
  a2a920:	8302                	jr	t1

00a2a922 <uapi_efuse_read_bit>:
  a2a922:	8168                	push	{ra,s0-s4},-48
  a2a924:	000107a3          	sb	zero,15(sp)
  a2a928:	547d                	li	s0,-1
  a2a92a:	0ff00793          	li	a5,255
  a2a92e:	02b7ee63          	bltu	a5,a1,a2a96a <uapi_efuse_read_bit+0x48>
  a2a932:	cd05                	beqz	a0,a2a96a <uapi_efuse_read_bit+0x48>
  a2a934:	08067dbb          	bgeui	a2,8,a2a96a <uapi_efuse_read_bit+0x48>
  a2a938:	842e                	mv	s0,a1
  a2a93a:	8932                	mv	s2,a2
  a2a93c:	84aa                	mv	s1,a0
  a2a93e:	206d                	jal	ra,a2a9e8 <hal_efuse_get_funcs>
  a2a940:	8a2a                	mv	s4,a0
  a2a942:	886ff0ef          	jal	ra,a299c8 <osal_irq_lock>
  a2a946:	010a2783          	lw	a5,16(s4)
  a2a94a:	89aa                	mv	s3,a0
  a2a94c:	00f10593          	addi	a1,sp,15
  a2a950:	8522                	mv	a0,s0
  a2a952:	9782                	jalr	a5
  a2a954:	842a                	mv	s0,a0
  a2a956:	ed01                	bnez	a0,a2a96e <uapi_efuse_read_bit+0x4c>
  a2a958:	00f14783          	lbu	a5,15(sp)
  a2a95c:	854e                	mv	a0,s3
  a2a95e:	4127d633          	sra	a2,a5,s2
  a2a962:	8a05                	andi	a2,a2,1
  a2a964:	a090                	sb	a2,0(s1)
  a2a966:	86aff0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2a96a:	8522                	mv	a0,s0
  a2a96c:	8164                	popret	{ra,s0-s4},48
  a2a96e:	854e                	mv	a0,s3
  a2a970:	860ff0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2a974:	547d                	li	s0,-1
  a2a976:	bfd5                	j	a2a96a <uapi_efuse_read_bit+0x48>

00a2a978 <uapi_efuse_read_buffer>:
  a2a978:	8088                	push	{ra,s0-s6},-32
  a2a97a:	547d                	li	s0,-1
  a2a97c:	c231                	beqz	a2,a2a9c0 <uapi_efuse_read_buffer+0x48>
  a2a97e:	0ff00793          	li	a5,255
  a2a982:	02b7ef63          	bltu	a5,a1,a2a9c0 <uapi_efuse_read_buffer+0x48>
  a2a986:	00c587b3          	add	a5,a1,a2
  a2a98a:	10000713          	li	a4,256
  a2a98e:	02f76963          	bltu	a4,a5,a2a9c0 <uapi_efuse_read_buffer+0x48>
  a2a992:	c51d                	beqz	a0,a2a9c0 <uapi_efuse_read_buffer+0x48>
  a2a994:	8932                	mv	s2,a2
  a2a996:	89ae                	mv	s3,a1
  a2a998:	8a2a                	mv	s4,a0
  a2a99a:	20b9                	jal	ra,a2a9e8 <hal_efuse_get_funcs>
  a2a99c:	8b2a                	mv	s6,a0
  a2a99e:	82aff0ef          	jal	ra,a299c8 <osal_irq_lock>
  a2a9a2:	8aaa                	mv	s5,a0
  a2a9a4:	4481                	li	s1,0
  a2a9a6:	010b2783          	lw	a5,16(s6)
  a2a9aa:	009a05b3          	add	a1,s4,s1
  a2a9ae:	00998533          	add	a0,s3,s1
  a2a9b2:	9782                	jalr	a5
  a2a9b4:	842a                	mv	s0,a0
  a2a9b6:	c519                	beqz	a0,a2a9c4 <uapi_efuse_read_buffer+0x4c>
  a2a9b8:	8556                	mv	a0,s5
  a2a9ba:	816ff0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2a9be:	547d                	li	s0,-1
  a2a9c0:	8522                	mv	a0,s0
  a2a9c2:	8084                	popret	{ra,s0-s6},32
  a2a9c4:	0485                	addi	s1,s1,1
  a2a9c6:	ff24e0e3          	bltu	s1,s2,a2a9a6 <uapi_efuse_read_buffer+0x2e>
  a2a9ca:	8556                	mv	a0,s5
  a2a9cc:	804ff0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2a9d0:	bfc5                	j	a2a9c0 <uapi_efuse_read_buffer+0x48>

00a2a9d2 <hal_efuse_register_funcs>:
  a2a9d2:	c519                	beqz	a0,a2a9e0 <hal_efuse_register_funcs+0xe>
  a2a9d4:	00a0 5734 079f      	l.li	a5,0xa05734
  a2a9da:	c388                	sw	a0,0(a5)
  a2a9dc:	4501                	li	a0,0
  a2a9de:	8082                	ret
  a2a9e0:	80000537          	lui	a0,0x80000
  a2a9e4:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2a9e6:	8082                	ret

00a2a9e8 <hal_efuse_get_funcs>:
  a2a9e8:	00a0 5734 079f      	l.li	a5,0xa05734
  a2a9ee:	4388                	lw	a0,0(a5)
  a2a9f0:	8082                	ret

00a2a9f2 <hal_efuse_deinit>:
  a2a9f2:	00a0 5738 079f      	l.li	a5,0xa05738
  a2a9f8:	00078023          	sb	zero,0(a5)
  a2a9fc:	8082                	ret

00a2a9fe <hal_efuse_get_writeread_addr>:
  a2a9fe:	8038                	push	{ra,s0-s1},-16
  a2aa00:	84aa                	mv	s1,a0
  a2aa02:	7ef010ef          	jal	ra,a2c9f0 <hal_efuse_get_region>
  a2aa06:	842a                	mv	s0,a0
  a2aa08:	8526                	mv	a0,s1
  a2aa0a:	7ed010ef          	jal	ra,a2c9f6 <hal_efuse_get_byte_offset>
  a2aa0e:	00a3 3f98 079f      	l.li	a5,0xa33f98
  a2aa14:	0487879b          	addshf	a5,a5,s0,sll,2
  a2aa18:	439c                	lw	a5,0(a5)
  a2aa1a:	8105                	srli	a0,a0,0x1
  a2aa1c:	9d21                	uxth	a0
  a2aa1e:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2aa22:	8034                	popret	{ra,s0-s1},16

00a2aa24 <hal_efuse_init>:
  a2aa24:	8018                	push	{ra},-16
  a2aa26:	4501                	li	a0,0
  a2aa28:	2255                	jal	ra,a2abcc <hal_efuse_regs_init>
  a2aa2a:	00a057b7          	lui	a5,0xa05
  a2aa2e:	7407a703          	lw	a4,1856(a5) # a05740 <g_efuse_regs>
  a2aa32:	00a3 3e2c 069f      	l.li	a3,0xa33e2c
  a2aa38:	2294                	lbu	a3,0(a3)
  a2aa3a:	435c                	lw	a5,4(a4)
  a2aa3c:	4501                	li	a0,0
  a2aa3e:	f007f793          	andi	a5,a5,-256
  a2aa42:	8fd5                	or	a5,a5,a3
  a2aa44:	c35c                	sw	a5,4(a4)
  a2aa46:	00a0 5738 079f      	l.li	a5,0xa05738
  a2aa4c:	4705                	li	a4,1
  a2aa4e:	a398                	sb	a4,0(a5)
  a2aa50:	8014                	popret	{ra},16

00a2aa52 <hal_efuse_read_byte>:
  a2aa52:	00a0 5738 079f      	l.li	a5,0xa05738
  a2aa58:	239c                	lbu	a5,0(a5)
  a2aa5a:	c7a1                	beqz	a5,a2aaa2 <hal_efuse_read_byte+0x50>
  a2aa5c:	8048                	push	{ra,s0-s2},-16
  a2aa5e:	842a                	mv	s0,a0
  a2aa60:	0ff00793          	li	a5,255
  a2aa64:	04a7e363          	bltu	a5,a0,a2aaaa <hal_efuse_read_byte+0x58>
  a2aa68:	c1a9                	beqz	a1,a2aaaa <hal_efuse_read_byte+0x58>
  a2aa6a:	84ae                	mv	s1,a1
  a2aa6c:	3f49                	jal	ra,a2a9fe <hal_efuse_get_writeread_addr>
  a2aa6e:	892a                	mv	s2,a0
  a2aa70:	8522                	mv	a0,s0
  a2aa72:	77f010ef          	jal	ra,a2c9f0 <hal_efuse_get_region>
  a2aa76:	00a0 5740 079f      	l.li	a5,0xa05740
  a2aa7c:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2aa80:	4118                	lw	a4,0(a0)
  a2aa82:	76c1                	lui	a3,0xffff0
  a2aa84:	8805                	andi	s0,s0,1
  a2aa86:	431c                	lw	a5,0(a4)
  a2aa88:	8ff5                	and	a5,a5,a3
  a2aa8a:	0000 5a5a 069f      	l.li	a3,0x5a5a
  a2aa90:	8fd5                	or	a5,a5,a3
  a2aa92:	c31c                	sw	a5,0(a4)
  a2aa94:	00092783          	lw	a5,0(s2)
  a2aa98:	c011                	beqz	s0,a2aa9c <hal_efuse_read_byte+0x4a>
  a2aa9a:	83a1                	srli	a5,a5,0x8
  a2aa9c:	a09c                	sb	a5,0(s1)
  a2aa9e:	4501                	li	a0,0
  a2aaa0:	8044                	popret	{ra,s0-s2},16
  a2aaa2:	8000 1391 051f      	l.li	a0,0x80001391
  a2aaa8:	8082                	ret
  a2aaaa:	80000537          	lui	a0,0x80000
  a2aaae:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2aab0:	bfc5                	j	a2aaa0 <hal_efuse_read_byte+0x4e>

00a2aab2 <hal_efuse_get_die_id>:
  a2aab2:	00a0 5738 079f      	l.li	a5,0xa05738
  a2aab8:	239c                	lbu	a5,0(a5)
  a2aaba:	ef99                	bnez	a5,a2aad8 <hal_efuse_get_die_id+0x26>
  a2aabc:	8000 1391 051f      	l.li	a0,0x80001391
  a2aac2:	8082                	ret
  a2aac4:	008905b3          	add	a1,s2,s0
  a2aac8:	8522                	mv	a0,s0
  a2aaca:	3761                	jal	ra,a2aa52 <hal_efuse_read_byte>
  a2aacc:	e919                	bnez	a0,a2aae2 <hal_efuse_get_die_id+0x30>
  a2aace:	0405                	addi	s0,s0,1
  a2aad0:	fe946ae3          	bltu	s0,s1,a2aac4 <hal_efuse_get_die_id+0x12>
  a2aad4:	4501                	li	a0,0
  a2aad6:	8044                	popret	{ra,s0-s2},16
  a2aad8:	8048                	push	{ra,s0-s2},-16
  a2aada:	892a                	mv	s2,a0
  a2aadc:	84ae                	mv	s1,a1
  a2aade:	4401                	li	s0,0
  a2aae0:	bfc5                	j	a2aad0 <hal_efuse_get_die_id+0x1e>
  a2aae2:	557d                	li	a0,-1
  a2aae4:	bfcd                	j	a2aad6 <hal_efuse_get_die_id+0x24>

00a2aae6 <hal_efuse_write_operation>:
  a2aae6:	00a0 5738 079f      	l.li	a5,0xa05738
  a2aaec:	239c                	lbu	a5,0(a5)
  a2aaee:	c3c1                	beqz	a5,a2ab6e <hal_efuse_write_operation+0x88>
  a2aaf0:	8058                	push	{ra,s0-s3},-32
  a2aaf2:	842a                	mv	s0,a0
  a2aaf4:	0ff00793          	li	a5,255
  a2aaf8:	06a7ef63          	bltu	a5,a0,a2ab76 <hal_efuse_write_operation+0x90>
  a2aafc:	00a054b7          	lui	s1,0xa05
  a2ab00:	892e                	mv	s2,a1
  a2ab02:	74048993          	addi	s3,s1,1856 # a05740 <g_efuse_regs>
  a2ab06:	6eb010ef          	jal	ra,a2c9f0 <hal_efuse_get_region>
  a2ab0a:	04a9851b          	addshf	a0,s3,a0,sll,2
  a2ab0e:	4118                	lw	a4,0(a0)
  a2ab10:	76c1                	lui	a3,0xffff0
  a2ab12:	8522                	mv	a0,s0
  a2ab14:	431c                	lw	a5,0(a4)
  a2ab16:	74048493          	addi	s1,s1,1856
  a2ab1a:	8ff5                	and	a5,a5,a3
  a2ab1c:	0000 a5a5 069f      	l.li	a3,0xa5a5
  a2ab22:	8fd5                	or	a5,a5,a3
  a2ab24:	c31c                	sw	a5,0(a4)
  a2ab26:	6cb010ef          	jal	ra,a2c9f0 <hal_efuse_get_region>
  a2ab2a:	04a9851b          	addshf	a0,s3,a0,sll,2
  a2ab2e:	4118                	lw	a4,0(a0)
  a2ab30:	06400513          	li	a0,100
  a2ab34:	475c                	lw	a5,12(a4)
  a2ab36:	0017e793          	ori	a5,a5,1
  a2ab3a:	c75c                	sw	a5,12(a4)
  a2ab3c:	84dff0ef          	jal	ra,a2a388 <uapi_tcxo_delay_us>
  a2ab40:	8522                	mv	a0,s0
  a2ab42:	3d75                	jal	ra,a2a9fe <hal_efuse_get_writeread_addr>
  a2ab44:	00147793          	andi	a5,s0,1
  a2ab48:	c391                	beqz	a5,a2ab4c <hal_efuse_write_operation+0x66>
  a2ab4a:	0922                	slli	s2,s2,0x8
  a2ab4c:	01252023          	sw	s2,0(a0)
  a2ab50:	8522                	mv	a0,s0
  a2ab52:	69f010ef          	jal	ra,a2c9f0 <hal_efuse_get_region>
  a2ab56:	04a4849b          	addshf	s1,s1,a0,sll,2
  a2ab5a:	4098                	lw	a4,0(s1)
  a2ab5c:	06400513          	li	a0,100
  a2ab60:	475c                	lw	a5,12(a4)
  a2ab62:	9bf9                	andi	a5,a5,-2
  a2ab64:	c75c                	sw	a5,12(a4)
  a2ab66:	823ff0ef          	jal	ra,a2a388 <uapi_tcxo_delay_us>
  a2ab6a:	4501                	li	a0,0
  a2ab6c:	8054                	popret	{ra,s0-s3},32
  a2ab6e:	8000 1391 051f      	l.li	a0,0x80001391
  a2ab74:	8082                	ret
  a2ab76:	80000537          	lui	a0,0x80000
  a2ab7a:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2ab7c:	bfc5                	j	a2ab6c <hal_efuse_write_operation+0x86>

00a2ab7e <hal_efuse_write_buffer_operation>:
  a2ab7e:	00a0 5738 079f      	l.li	a5,0xa05738
  a2ab84:	239c                	lbu	a5,0(a5)
  a2ab86:	c795                	beqz	a5,a2abb2 <hal_efuse_write_buffer_operation+0x34>
  a2ab88:	8058                	push	{ra,s0-s3},-32
  a2ab8a:	89b2                	mv	s3,a2
  a2ab8c:	842e                	mv	s0,a1
  a2ab8e:	84ae                	mv	s1,a1
  a2ab90:	40b50933          	sub	s2,a0,a1
  a2ab94:	408487b3          	sub	a5,s1,s0
  a2ab98:	0137e463          	bltu	a5,s3,a2aba0 <hal_efuse_write_buffer_operation+0x22>
  a2ab9c:	4501                	li	a0,0
  a2ab9e:	8054                	popret	{ra,s0-s3},32
  a2aba0:	208c                	lbu	a1,0(s1)
  a2aba2:	00990533          	add	a0,s2,s1
  a2aba6:	4601                	li	a2,0
  a2aba8:	3f3d                	jal	ra,a2aae6 <hal_efuse_write_operation>
  a2abaa:	0485                	addi	s1,s1,1
  a2abac:	d565                	beqz	a0,a2ab94 <hal_efuse_write_buffer_operation+0x16>
  a2abae:	557d                	li	a0,-1
  a2abb0:	b7fd                	j	a2ab9e <hal_efuse_write_buffer_operation+0x20>
  a2abb2:	8000 1391 051f      	l.li	a0,0x80001391
  a2abb8:	8082                	ret

00a2abba <hal_efuse_set_clock_period>:
  a2abba:	00a3 3e2c 079f      	l.li	a5,0xa33e2c
  a2abc0:	c388                	sw	a0,0(a5)
  a2abc2:	8082                	ret

00a2abc4 <hal_efuse_funcs_get>:
  a2abc4:	00a3 3e30 051f      	l.li	a0,0xa33e30
  a2abca:	8082                	ret

00a2abcc <hal_efuse_regs_init>:
  a2abcc:	02a04763          	bgtz	a0,a2abfa <hal_efuse_regs_init+0x2e>
  a2abd0:	050a                	slli	a0,a0,0x2
  a2abd2:	00a3 3f90 071f      	l.li	a4,0xa33f90
  a2abd8:	00a0 5740 079f      	l.li	a5,0xa05740
  a2abde:	97aa                	add	a5,a5,a0
  a2abe0:	953a                	add	a0,a0,a4
  a2abe2:	4118                	lw	a4,0(a0)
  a2abe4:	4501                	li	a0,0
  a2abe6:	c398                	sw	a4,0(a5)
  a2abe8:	00a347b7          	lui	a5,0xa34
  a2abec:	f947a703          	lw	a4,-108(a5) # a33f94 <g_efuse_boot_done_addr>
  a2abf0:	00a0 573c 079f      	l.li	a5,0xa0573c
  a2abf6:	c398                	sw	a4,0(a5)
  a2abf8:	8082                	ret
  a2abfa:	557d                	li	a0,-1
  a2abfc:	8082                	ret

00a2abfe <hal_pmp_register_funcs>:
  a2abfe:	c519                	beqz	a0,a2ac0c <hal_pmp_register_funcs+0xe>
  a2ac00:	00a0 5744 079f      	l.li	a5,0xa05744
  a2ac06:	c388                	sw	a0,0(a5)
  a2ac08:	4501                	li	a0,0
  a2ac0a:	8082                	ret
  a2ac0c:	80000537          	lui	a0,0x80000
  a2ac10:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2ac12:	8082                	ret

00a2ac14 <hal_pmp_get_funcs>:
  a2ac14:	00a0 5744 079f      	l.li	a5,0xa05744
  a2ac1a:	4388                	lw	a0,0(a5)
  a2ac1c:	8082                	ret

00a2ac1e <hal_pmp_riscv31_config>:
  a2ac1e:	8048                	push	{ra,s0-s2},-16
  a2ac20:	00052903          	lw	s2,0(a0)
  a2ac24:	10097fbb          	bgeui	s2,16,a2ac62 <hal_pmp_riscv31_config+0x44>
  a2ac28:	414c                	lw	a1,4(a0)
  a2ac2a:	2500                	lbu	s0,8(a0)
  a2ac2c:	84aa                	mv	s1,a0
  a2ac2e:	854a                	mv	a0,s2
  a2ac30:	2089                	jal	ra,a2ac72 <hal_pmp_riscv31_regs_set_pmpaddr>
  a2ac32:	85a2                	mv	a1,s0
  a2ac34:	854a                	mv	a0,s2
  a2ac36:	28e9                	jal	ra,a2ad10 <hal_pmp_riscv31_regs_set_memxattr>
  a2ac38:	4480                	lw	s0,8(s1)
  a2ac3a:	854a                	mv	a0,s2
  a2ac3c:	8021                	srli	s0,s0,0x8
  a2ac3e:	881d                	andi	s0,s0,7
  a2ac40:	85a2                	mv	a1,s0
  a2ac42:	2a39                	jal	ra,a2ad60 <hal_pmp_riscv31_regs_set_pmpxcfg>
  a2ac44:	449c                	lw	a5,8(s1)
  a2ac46:	854a                	mv	a0,s2
  a2ac48:	0087d713          	srli	a4,a5,0x8
  a2ac4c:	8b61                	andi	a4,a4,24
  a2ac4e:	83a1                	srli	a5,a5,0x8
  a2ac50:	0807f593          	andi	a1,a5,128
  a2ac54:	8c59                	or	s0,s0,a4
  a2ac56:	8dc1                	or	a1,a1,s0
  a2ac58:	2221                	jal	ra,a2ad60 <hal_pmp_riscv31_regs_set_pmpxcfg>
  a2ac5a:	0ff0000f          	fence
  a2ac5e:	4501                	li	a0,0
  a2ac60:	8044                	popret	{ra,s0-s2},16
  a2ac62:	80000537          	lui	a0,0x80000
  a2ac66:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2ac68:	bfe5                	j	a2ac60 <hal_pmp_riscv31_config+0x42>

00a2ac6a <hal_pmp_riscv31_funcs_get>:
  a2ac6a:	00a3 3e5c 051f      	l.li	a0,0xa33e5c
  a2ac70:	8082                	ret

00a2ac72 <hal_pmp_riscv31_regs_set_pmpaddr>:
  a2ac72:	e501                	bnez	a0,a2ac7a <hal_pmp_riscv31_regs_set_pmpaddr+0x8>
  a2ac74:	3b059073          	csrw	pmpaddr0,a1
  a2ac78:	8082                	ret
  a2ac7a:	010512bb          	bnei	a0,1,a2ac84 <hal_pmp_riscv31_regs_set_pmpaddr+0x12>
  a2ac7e:	3b159073          	csrw	pmpaddr1,a1
  a2ac82:	8082                	ret
  a2ac84:	020512bb          	bnei	a0,2,a2ac8e <hal_pmp_riscv31_regs_set_pmpaddr+0x1c>
  a2ac88:	3b259073          	csrw	pmpaddr2,a1
  a2ac8c:	8082                	ret
  a2ac8e:	030512bb          	bnei	a0,3,a2ac98 <hal_pmp_riscv31_regs_set_pmpaddr+0x26>
  a2ac92:	3b359073          	csrw	pmpaddr3,a1
  a2ac96:	8082                	ret
  a2ac98:	040512bb          	bnei	a0,4,a2aca2 <hal_pmp_riscv31_regs_set_pmpaddr+0x30>
  a2ac9c:	3b459073          	csrw	pmpaddr4,a1
  a2aca0:	8082                	ret
  a2aca2:	050512bb          	bnei	a0,5,a2acac <hal_pmp_riscv31_regs_set_pmpaddr+0x3a>
  a2aca6:	3b559073          	csrw	pmpaddr5,a1
  a2acaa:	8082                	ret
  a2acac:	060512bb          	bnei	a0,6,a2acb6 <hal_pmp_riscv31_regs_set_pmpaddr+0x44>
  a2acb0:	3b659073          	csrw	pmpaddr6,a1
  a2acb4:	8082                	ret
  a2acb6:	070512bb          	bnei	a0,7,a2acc0 <hal_pmp_riscv31_regs_set_pmpaddr+0x4e>
  a2acba:	3b759073          	csrw	pmpaddr7,a1
  a2acbe:	8082                	ret
  a2acc0:	080512bb          	bnei	a0,8,a2acca <hal_pmp_riscv31_regs_set_pmpaddr+0x58>
  a2acc4:	3b859073          	csrw	pmpaddr8,a1
  a2acc8:	8082                	ret
  a2acca:	090512bb          	bnei	a0,9,a2acd4 <hal_pmp_riscv31_regs_set_pmpaddr+0x62>
  a2acce:	3b959073          	csrw	pmpaddr9,a1
  a2acd2:	8082                	ret
  a2acd4:	0a0512bb          	bnei	a0,10,a2acde <hal_pmp_riscv31_regs_set_pmpaddr+0x6c>
  a2acd8:	3ba59073          	csrw	pmpaddr10,a1
  a2acdc:	8082                	ret
  a2acde:	0b0512bb          	bnei	a0,11,a2ace8 <hal_pmp_riscv31_regs_set_pmpaddr+0x76>
  a2ace2:	3bb59073          	csrw	pmpaddr11,a1
  a2ace6:	8082                	ret
  a2ace8:	0c0512bb          	bnei	a0,12,a2acf2 <hal_pmp_riscv31_regs_set_pmpaddr+0x80>
  a2acec:	3bc59073          	csrw	pmpaddr12,a1
  a2acf0:	8082                	ret
  a2acf2:	0d0512bb          	bnei	a0,13,a2acfc <hal_pmp_riscv31_regs_set_pmpaddr+0x8a>
  a2acf6:	3bd59073          	csrw	pmpaddr13,a1
  a2acfa:	8082                	ret
  a2acfc:	0e0512bb          	bnei	a0,14,a2ad06 <hal_pmp_riscv31_regs_set_pmpaddr+0x94>
  a2ad00:	3be59073          	csrw	pmpaddr14,a1
  a2ad04:	8082                	ret
  a2ad06:	0f05123b          	bnei	a0,15,a2ad0e <hal_pmp_riscv31_regs_set_pmpaddr+0x9c>
  a2ad0a:	3bf59073          	csrw	pmpaddr15,a1
  a2ad0e:	8082                	ret

00a2ad10 <hal_pmp_riscv31_regs_set_memxattr>:
  a2ad10:	0ff57713          	andi	a4,a0,255
  a2ad14:	080579bb          	bgeui	a0,8,a2ad3a <hal_pmp_riscv31_regs_set_memxattr+0x2a>
  a2ad18:	7d8027f3          	csrr	a5,0x7d8
  a2ad1c:	070a                	slli	a4,a4,0x2
  a2ad1e:	9f01                	uxtb	a4
  a2ad20:	46bd                	li	a3,15
  a2ad22:	00e696b3          	sll	a3,a3,a4
  a2ad26:	fff6c693          	not	a3,a3
  a2ad2a:	8efd                	and	a3,a3,a5
  a2ad2c:	00e59733          	sll	a4,a1,a4
  a2ad30:	8f55                	or	a4,a4,a3
  a2ad32:	82ba                	mv	t0,a4
  a2ad34:	7d829073          	csrw	0x7d8,t0
  a2ad38:	8082                	ret
  a2ad3a:	7d902673          	csrr	a2,0x7d9
  a2ad3e:	ff870793          	addi	a5,a4,-8
  a2ad42:	078a                	slli	a5,a5,0x2
  a2ad44:	9f81                	uxtb	a5
  a2ad46:	46bd                	li	a3,15
  a2ad48:	00f696b3          	sll	a3,a3,a5
  a2ad4c:	fff6c693          	not	a3,a3
  a2ad50:	8ef1                	and	a3,a3,a2
  a2ad52:	00f597b3          	sll	a5,a1,a5
  a2ad56:	8fd5                	or	a5,a5,a3
  a2ad58:	82be                	mv	t0,a5
  a2ad5a:	7d929073          	csrw	0x7d9,t0
  a2ad5e:	8082                	ret

00a2ad60 <hal_pmp_riscv31_regs_set_pmpxcfg>:
  a2ad60:	00255793          	srli	a5,a0,0x2
  a2ad64:	1141                	addi	sp,sp,-16
  a2ad66:	01078a3b          	beqi	a5,1,a2ad8e <hal_pmp_riscv31_regs_set_pmpxcfg+0x2e>
  a2ad6a:	c799                	beqz	a5,a2ad78 <hal_pmp_riscv31_regs_set_pmpxcfg+0x18>
  a2ad6c:	02078ebb          	beqi	a5,2,a2ada6 <hal_pmp_riscv31_regs_set_pmpxcfg+0x46>
  a2ad70:	031783bb          	beqi	a5,3,a2adbe <hal_pmp_riscv31_regs_set_pmpxcfg+0x5e>
  a2ad74:	0141                	addi	sp,sp,16
  a2ad76:	8082                	ret
  a2ad78:	3a0027f3          	csrr	a5,pmpcfg0
  a2ad7c:	c63e                	sw	a5,12(sp)
  a2ad7e:	081c                	addi	a5,sp,16
  a2ad80:	953e                	add	a0,a0,a5
  a2ad82:	feb50e23          	sb	a1,-4(a0)
  a2ad86:	47b2                	lw	a5,12(sp)
  a2ad88:	3a079073          	csrw	pmpcfg0,a5
  a2ad8c:	b7e5                	j	a2ad74 <hal_pmp_riscv31_regs_set_pmpxcfg+0x14>
  a2ad8e:	3a1027f3          	csrr	a5,pmpcfg1
  a2ad92:	c63e                	sw	a5,12(sp)
  a2ad94:	890d                	andi	a0,a0,3
  a2ad96:	081c                	addi	a5,sp,16
  a2ad98:	953e                	add	a0,a0,a5
  a2ad9a:	feb50e23          	sb	a1,-4(a0)
  a2ad9e:	47b2                	lw	a5,12(sp)
  a2ada0:	3a179073          	csrw	pmpcfg1,a5
  a2ada4:	bfc1                	j	a2ad74 <hal_pmp_riscv31_regs_set_pmpxcfg+0x14>
  a2ada6:	3a2027f3          	csrr	a5,pmpcfg2
  a2adaa:	c63e                	sw	a5,12(sp)
  a2adac:	890d                	andi	a0,a0,3
  a2adae:	081c                	addi	a5,sp,16
  a2adb0:	953e                	add	a0,a0,a5
  a2adb2:	feb50e23          	sb	a1,-4(a0)
  a2adb6:	47b2                	lw	a5,12(sp)
  a2adb8:	3a279073          	csrw	pmpcfg2,a5
  a2adbc:	bf65                	j	a2ad74 <hal_pmp_riscv31_regs_set_pmpxcfg+0x14>
  a2adbe:	3a3027f3          	csrr	a5,pmpcfg3
  a2adc2:	c63e                	sw	a5,12(sp)
  a2adc4:	890d                	andi	a0,a0,3
  a2adc6:	081c                	addi	a5,sp,16
  a2adc8:	953e                	add	a0,a0,a5
  a2adca:	feb50e23          	sb	a1,-4(a0)
  a2adce:	47b2                	lw	a5,12(sp)
  a2add0:	3a379073          	csrw	pmpcfg3,a5
  a2add4:	b745                	j	a2ad74 <hal_pmp_riscv31_regs_set_pmpxcfg+0x14>

00a2add6 <hal_reboot_chip>:
  a2add6:	8018                	push	{ra},-16
  a2add8:	bf1fe0ef          	jal	ra,a299c8 <osal_irq_lock>
  a2addc:	5ab020ef          	jal	ra,a2db86 <set_cpu_utils_system_boot_magic>
  a2ade0:	47d010ef          	jal	ra,a2ca5c <reboot_port_reboot_chip>
  a2ade4:	a001                	j	a2ade4 <hal_reboot_chip+0xe>

00a2ade6 <hal_rkp_lock>:
  a2ade6:	8048                	push	{ra,s0-s2},-16
  a2ade8:	86eff0ef          	jal	ra,a29e56 <crypto_get_cpu_type>
  a2adec:	c509                	beqz	a0,a2adf6 <hal_rkp_lock+0x10>
  a2adee:	01050cbb          	beqi	a0,1,a2ae20 <hal_rkp_lock+0x3a>
  a2adf2:	557d                	li	a0,-1
  a2adf4:	8044                	popret	{ra,s0-s2},16
  a2adf6:	4489                	li	s1,2
  a2adf8:	000f 4240 041f      	l.li	s0,0xf4240
  a2adfe:	44112937          	lui	s2,0x44112
  a2ae02:	00992023          	sw	s1,0(s2) # 44112000 <_gp_+0x436dd7ec>
  a2ae06:	0ff0000f          	fence
  a2ae0a:	00092783          	lw	a5,0(s2)
  a2ae0e:	8b9d                	andi	a5,a5,7
  a2ae10:	00978a63          	beq	a5,s1,a2ae24 <hal_rkp_lock+0x3e>
  a2ae14:	4505                	li	a0,1
  a2ae16:	147d                	addi	s0,s0,-1
  a2ae18:	d70ff0ef          	jal	ra,a2a388 <uapi_tcxo_delay_us>
  a2ae1c:	f07d                	bnez	s0,a2ae02 <hal_rkp_lock+0x1c>
  a2ae1e:	bfd1                	j	a2adf2 <hal_rkp_lock+0xc>
  a2ae20:	4485                	li	s1,1
  a2ae22:	bfd9                	j	a2adf8 <hal_rkp_lock+0x12>
  a2ae24:	4501                	li	a0,0
  a2ae26:	b7f9                	j	a2adf4 <hal_rkp_lock+0xe>

00a2ae28 <hal_rkp_unlock>:
  a2ae28:	441127b7          	lui	a5,0x44112
  a2ae2c:	0007a023          	sw	zero,0(a5) # 44112000 <_gp_+0x436dd7ec>
  a2ae30:	0ff0000f          	fence
  a2ae34:	4501                	li	a0,0
  a2ae36:	8082                	ret

00a2ae38 <hal_rkp_kdf_wait_done>:
  a2ae38:	8138                	push	{ra,s0-s1},-32
  a2ae3a:	57fd                	li	a5,-1
  a2ae3c:	c63e                	sw	a5,12(sp)
  a2ae3e:	000f 4240 041f      	l.li	s0,0xf4240
  a2ae44:	441124b7          	lui	s1,0x44112
  a2ae48:	40dc                	lw	a5,4(s1)
  a2ae4a:	8b85                	andi	a5,a5,1
  a2ae4c:	ef91                	bnez	a5,a2ae68 <hal_rkp_kdf_wait_done+0x30>
  a2ae4e:	4785                	li	a5,1
  a2ae50:	c89c                	sw	a5,16(s1)
  a2ae52:	0ff0000f          	fence
  a2ae56:	c602                	sw	zero,12(sp)
  a2ae58:	441127b7          	lui	a5,0x44112
  a2ae5c:	479c                	lw	a5,8(a5)
  a2ae5e:	c399                	beqz	a5,a2ae64 <hal_rkp_kdf_wait_done+0x2c>
  a2ae60:	57fd                	li	a5,-1
  a2ae62:	c63e                	sw	a5,12(sp)
  a2ae64:	4532                	lw	a0,12(sp)
  a2ae66:	8134                	popret	{ra,s0-s1},32
  a2ae68:	4505                	li	a0,1
  a2ae6a:	147d                	addi	s0,s0,-1
  a2ae6c:	d1cff0ef          	jal	ra,a2a388 <uapi_tcxo_delay_us>
  a2ae70:	fc61                	bnez	s0,a2ae48 <hal_rkp_kdf_wait_done+0x10>
  a2ae72:	57fd                	li	a5,-1
  a2ae74:	c63e                	sw	a5,12(sp)
  a2ae76:	b7cd                	j	a2ae58 <hal_rkp_kdf_wait_done+0x20>

00a2ae78 <hal_rkp_kdf_hard_calculation>:
  a2ae78:	8238                	push	{ra,s0-s1},-48
  a2ae7a:	57fd                	li	a5,-1
  a2ae7c:	c63e                	sw	a5,12(sp)
  a2ae7e:	c802                	sw	zero,16(sp)
  a2ae80:	ca02                	sw	zero,20(sp)
  a2ae82:	cc02                	sw	zero,24(sp)
  a2ae84:	ce02                	sw	zero,28(sp)
  a2ae86:	0e050863          	beqz	a0,a2af76 <hal_rkp_kdf_hard_calculation+0xfe>
  a2ae8a:	4504                	lw	s1,8(a0)
  a2ae8c:	c485                	beqz	s1,a2aeb4 <hal_rkp_kdf_hard_calculation+0x3c>
  a2ae8e:	4558                	lw	a4,12(a0)
  a2ae90:	1c07193b          	bnei	a4,28,a2aeb4 <hal_rkp_kdf_hard_calculation+0x3c>
  a2ae94:	2158                	lbu	a4,4(a0)
  a2ae96:	020777bb          	bgeui	a4,2,a2aeb4 <hal_rkp_kdf_hard_calculation+0x3c>
  a2ae9a:	4110                	lw	a2,0(a0)
  a2ae9c:	842a                	mv	s0,a0
  a2ae9e:	0814                	addi	a3,sp,16
  a2aea0:	458d                	li	a1,3
  a2aea2:	00a3 3e88 051f      	l.li	a0,0xa33e88
  a2aea8:	fc7fe0ef          	jal	ra,a29e6e <crypto_get_value_by_index>
  a2aeac:	c62a                	sw	a0,12(sp)
  a2aeae:	47b2                	lw	a5,12(sp)
  a2aeb0:	c781                	beqz	a5,a2aeb8 <hal_rkp_kdf_hard_calculation+0x40>
  a2aeb2:	47b2                	lw	a5,12(sp)
  a2aeb4:	853e                	mv	a0,a5
  a2aeb6:	8234                	popret	{ra,s0-s1},48
  a2aeb8:	4010                	lw	a2,0(s0)
  a2aeba:	0874                	addi	a3,sp,28
  a2aebc:	458d                	li	a1,3
  a2aebe:	00a3 3ea0 051f      	l.li	a0,0xa33ea0
  a2aec4:	fabfe0ef          	jal	ra,a29e6e <crypto_get_value_by_index>
  a2aec8:	c62a                	sw	a0,12(sp)
  a2aeca:	47b2                	lw	a5,12(sp)
  a2aecc:	f3fd                	bnez	a5,a2aeb2 <hal_rkp_kdf_hard_calculation+0x3a>
  a2aece:	2050                	lbu	a2,4(s0)
  a2aed0:	0854                	addi	a3,sp,20
  a2aed2:	4589                	li	a1,2
  a2aed4:	00a3 3e60 051f      	l.li	a0,0xa33e60
  a2aeda:	f95fe0ef          	jal	ra,a29e6e <crypto_get_value_by_index>
  a2aede:	c62a                	sw	a0,12(sp)
  a2aee0:	47b2                	lw	a5,12(sp)
  a2aee2:	fbe1                	bnez	a5,a2aeb2 <hal_rkp_kdf_hard_calculation+0x3a>
  a2aee4:	3050                	lbu	a2,5(s0)
  a2aee6:	0834                	addi	a3,sp,24
  a2aee8:	458d                	li	a1,3
  a2aeea:	00a3 3e70 051f      	l.li	a0,0xa33e70
  a2aef0:	f7ffe0ef          	jal	ra,a29e6e <crypto_get_value_by_index>
  a2aef4:	c62a                	sw	a0,12(sp)
  a2aef6:	47b2                	lw	a5,12(sp)
  a2aef8:	ffcd                	bnez	a5,a2aeb2 <hal_rkp_kdf_hard_calculation+0x3a>
  a2aefa:	44112737          	lui	a4,0x44112
  a2aefe:	281c                	lbu	a5,16(s0)
  a2af00:	4672                	lw	a2,28(sp)
  a2af02:	36072683          	lw	a3,864(a4) # 44112360 <_gp_+0x436ddb4c>
  a2af06:	00c797b3          	sll	a5,a5,a2
  a2af0a:	8fd5                	or	a5,a5,a3
  a2af0c:	36f72023          	sw	a5,864(a4)
  a2af10:	0ff0000f          	fence
  a2af14:	4701                	li	a4,0
  a2af16:	87a6                	mv	a5,s1
  a2af18:	1104 48d0 061f      	l.li	a2,0x110448d0
  a2af1e:	4454                	lw	a3,12(s0)
  a2af20:	8289                	srli	a3,a3,0x2
  a2af22:	04d76063          	bltu	a4,a3,a2af62 <hal_rkp_kdf_hard_calculation+0xea>
  a2af26:	44112637          	lui	a2,0x44112
  a2af2a:	425c                	lw	a5,4(a2)
  a2af2c:	4762                	lw	a4,24(sp)
  a2af2e:	76d1                	lui	a3,0xffff4
  a2af30:	16fd                	addi	a3,a3,-1 # ffff3fff <_gp_+0xff5bf7eb>
  a2af32:	8b0d                	andi	a4,a4,3
  a2af34:	8ff5                	and	a5,a5,a3
  a2af36:	1ce7a79b          	orshf	a5,a5,a4,sll,14
  a2af3a:	4752                	lw	a4,20(sp)
  a2af3c:	9bc5                	andi	a5,a5,-15
  a2af3e:	8b1d                	andi	a4,a4,7
  a2af40:	02e7a79b          	orshf	a5,a5,a4,sll,1
  a2af44:	4742                	lw	a4,16(sp)
  a2af46:	e0f7f793          	andi	a5,a5,-497
  a2af4a:	8b7d                	andi	a4,a4,31
  a2af4c:	08e7a79b          	orshf	a5,a5,a4,sll,4
  a2af50:	0017e793          	ori	a5,a5,1
  a2af54:	c25c                	sw	a5,4(a2)
  a2af56:	0ff0000f          	fence
  a2af5a:	3df9                	jal	ra,a2ae38 <hal_rkp_kdf_wait_done>
  a2af5c:	c62a                	sw	a0,12(sp)
  a2af5e:	47b2                	lw	a5,12(sp)
  a2af60:	bf89                	j	a2aeb2 <hal_rkp_kdf_hard_calculation+0x3a>
  a2af62:	438c                	lw	a1,0(a5)
  a2af64:	00c706b3          	add	a3,a4,a2
  a2af68:	068a                	slli	a3,a3,0x2
  a2af6a:	c28c                	sw	a1,0(a3)
  a2af6c:	0ff0000f          	fence
  a2af70:	0705                	addi	a4,a4,1
  a2af72:	0791                	addi	a5,a5,4 # 44112004 <_gp_+0x436dd7f0>
  a2af74:	b76d                	j	a2af1e <hal_rkp_kdf_hard_calculation+0xa6>
  a2af76:	57fd                	li	a5,-1
  a2af78:	bf35                	j	a2aeb4 <hal_rkp_kdf_hard_calculation+0x3c>

00a2af7a <inner_kslot_chn_is_locked>:
  a2af7a:	44114737          	lui	a4,0x44114
  a2af7e:	b3072783          	lw	a5,-1232(a4) # 44113b30 <_gp_+0x436df31c>
  a2af82:	76e1                	lui	a3,0xffff8
  a2af84:	16fd                	addi	a3,a3,-1 # ffff7fff <_gp_+0xff5c37eb>
  a2af86:	8985                	andi	a1,a1,1
  a2af88:	8ff5                	and	a5,a5,a3
  a2af8a:	1eb7a79b          	orshf	a5,a5,a1,sll,15
  a2af8e:	3ff57513          	andi	a0,a0,1023
  a2af92:	c007f793          	andi	a5,a5,-1024
  a2af96:	8fc9                	or	a5,a5,a0
  a2af98:	b2f72823          	sw	a5,-1232(a4)
  a2af9c:	0ff0000f          	fence
  a2afa0:	b3472503          	lw	a0,-1228(a4)
  a2afa4:	891d                	andi	a0,a0,7
  a2afa6:	c211                	beqz	a2,a2afaa <inner_kslot_chn_is_locked+0x30>
  a2afa8:	c208                	sw	a0,0(a2)
  a2afaa:	00a03533          	snez	a0,a0
  a2afae:	8082                	ret

00a2afb0 <inner_chk_kslot_busy>:
  a2afb0:	8028                	push	{ra,s0},-16
  a2afb2:	842a                	mv	s0,a0
  a2afb4:	ea3fe0ef          	jal	ra,a29e56 <crypto_get_cpu_type>
  a2afb8:	c911                	beqz	a0,a2afcc <inner_chk_kslot_busy+0x1c>
  a2afba:	0105173b          	bnei	a0,1,a2afd6 <inner_chk_kslot_busy+0x26>
  a2afbe:	441147b7          	lui	a5,0x44114
  a2afc2:	b147a783          	lw	a5,-1260(a5) # 44113b14 <_gp_+0x436df300>
  a2afc6:	c01c                	sw	a5,0(s0)
  a2afc8:	4501                	li	a0,0
  a2afca:	8024                	popret	{ra,s0},16
  a2afcc:	441147b7          	lui	a5,0x44114
  a2afd0:	b107a783          	lw	a5,-1264(a5) # 44113b10 <_gp_+0x436df2fc>
  a2afd4:	bfcd                	j	a2afc6 <inner_chk_kslot_busy+0x16>
  a2afd6:	4505                	li	a0,1
  a2afd8:	bfcd                	j	a2afca <inner_chk_kslot_busy+0x1a>

00a2afda <inner_kslot_is_busy>:
  a2afda:	8118                	push	{ra},-32
  a2afdc:	0068                	addi	a0,sp,12
  a2afde:	c602                	sw	zero,12(sp)
  a2afe0:	3fc1                	jal	ra,a2afb0 <inner_chk_kslot_busy>
  a2afe2:	4785                	li	a5,1
  a2afe4:	e119                	bnez	a0,a2afea <inner_kslot_is_busy+0x10>
  a2afe6:	47b2                	lw	a5,12(sp)
  a2afe8:	8b85                	andi	a5,a5,1
  a2afea:	853e                	mv	a0,a5
  a2afec:	8114                	popret	{ra},32

00a2afee <hal_keyslot_lock>:
  a2afee:	8248                	push	{ra,s0-s2},-48
  a2aff0:	57fd                	li	a5,-1
  a2aff2:	c62e                	sw	a1,12(sp)
  a2aff4:	84aa                	mv	s1,a0
  a2aff6:	cc3e                	sw	a5,24(sp)
  a2aff8:	e5ffe0ef          	jal	ra,a29e56 <crypto_get_cpu_type>
  a2affc:	45b2                	lw	a1,12(sp)
  a2affe:	ce02                	sw	zero,28(sp)
  a2b000:	892a                	mv	s2,a0
  a2b002:	c591                	beqz	a1,a2b00e <hal_keyslot_lock+0x20>
  a2b004:	0105863b          	beqi	a1,1,a2b01c <hal_keyslot_lock+0x2e>
  a2b008:	4401                	li	s0,0
  a2b00a:	57fd                	li	a5,-1
  a2b00c:	a019                	j	a2b012 <hal_keyslot_lock+0x24>
  a2b00e:	4401                	li	s0,0
  a2b010:	4781                	li	a5,0
  a2b012:	cc3e                	sw	a5,24(sp)
  a2b014:	47e2                	lw	a5,24(sp)
  a2b016:	c789                	beqz	a5,a2b020 <hal_keyslot_lock+0x32>
  a2b018:	4562                	lw	a0,24(sp)
  a2b01a:	8244                	popret	{ra,s0-s2},48
  a2b01c:	4405                	li	s0,1
  a2b01e:	bfcd                	j	a2b010 <hal_keyslot_lock+0x22>
  a2b020:	4601                	li	a2,0
  a2b022:	85a2                	mv	a1,s0
  a2b024:	8526                	mv	a0,s1
  a2b026:	3f91                	jal	ra,a2af7a <inner_kslot_chn_is_locked>
  a2b028:	c119                	beqz	a0,a2b02e <hal_keyslot_lock+0x40>
  a2b02a:	557d                	li	a0,-1
  a2b02c:	b7fd                	j	a2b01a <hal_keyslot_lock+0x2c>
  a2b02e:	3775                	jal	ra,a2afda <inner_kslot_is_busy>
  a2b030:	fd6d                	bnez	a0,a2b02a <hal_keyslot_lock+0x3c>
  a2b032:	04091763          	bnez	s2,a2b080 <hal_keyslot_lock+0x92>
  a2b036:	4909                	li	s2,2
  a2b038:	0000 1b00 071f      	l.li	a4,0x1b00
  a2b03e:	441127b7          	lui	a5,0x44112
  a2b042:	973e                	add	a4,a4,a5
  a2b044:	431c                	lw	a5,0(a4)
  a2b046:	76e1                	lui	a3,0xffff8
  a2b048:	16fd                	addi	a3,a3,-1 # ffff7fff <_gp_+0xff5c37eb>
  a2b04a:	8ff5                	and	a5,a5,a3
  a2b04c:	1e87a79b          	orshf	a5,a5,s0,sll,15
  a2b050:	3ff4f693          	andi	a3,s1,1023
  a2b054:	c007f793          	andi	a5,a5,-1024
  a2b058:	8fd5                	or	a5,a5,a3
  a2b05a:	001006b7          	lui	a3,0x100
  a2b05e:	8fd5                	or	a5,a5,a3
  a2b060:	c31c                	sw	a5,0(a4)
  a2b062:	0ff0000f          	fence
  a2b066:	0870                	addi	a2,sp,28
  a2b068:	85a2                	mv	a1,s0
  a2b06a:	8526                	mv	a0,s1
  a2b06c:	3739                	jal	ra,a2af7a <inner_kslot_chn_is_locked>
  a2b06e:	dd55                	beqz	a0,a2b02a <hal_keyslot_lock+0x3c>
  a2b070:	4572                	lw	a0,28(sp)
  a2b072:	41250533          	sub	a0,a0,s2
  a2b076:	00a03533          	snez	a0,a0
  a2b07a:	40a00533          	neg	a0,a0
  a2b07e:	bf71                	j	a2b01a <hal_keyslot_lock+0x2c>
  a2b080:	4905                	li	s2,1
  a2b082:	0000 1b04 071f      	l.li	a4,0x1b04
  a2b088:	bf5d                	j	a2b03e <hal_keyslot_lock+0x50>

00a2b08a <hal_keyslot_unlock>:
  a2b08a:	8248                	push	{ra,s0-s2},-48
  a2b08c:	57fd                	li	a5,-1
  a2b08e:	c62e                	sw	a1,12(sp)
  a2b090:	842a                	mv	s0,a0
  a2b092:	cc3e                	sw	a5,24(sp)
  a2b094:	dc3fe0ef          	jal	ra,a29e56 <crypto_get_cpu_type>
  a2b098:	45b2                	lw	a1,12(sp)
  a2b09a:	892a                	mv	s2,a0
  a2b09c:	c591                	beqz	a1,a2b0a8 <hal_keyslot_unlock+0x1e>
  a2b09e:	010586bb          	beqi	a1,1,a2b0b8 <hal_keyslot_unlock+0x2e>
  a2b0a2:	4481                	li	s1,0
  a2b0a4:	57fd                	li	a5,-1
  a2b0a6:	a019                	j	a2b0ac <hal_keyslot_unlock+0x22>
  a2b0a8:	4481                	li	s1,0
  a2b0aa:	4781                	li	a5,0
  a2b0ac:	cc3e                	sw	a5,24(sp)
  a2b0ae:	47e2                	lw	a5,24(sp)
  a2b0b0:	c791                	beqz	a5,a2b0bc <hal_keyslot_unlock+0x32>
  a2b0b2:	47e2                	lw	a5,24(sp)
  a2b0b4:	853e                	mv	a0,a5
  a2b0b6:	8244                	popret	{ra,s0-s2},48
  a2b0b8:	4485                	li	s1,1
  a2b0ba:	bfc5                	j	a2b0aa <hal_keyslot_unlock+0x20>
  a2b0bc:	3f39                	jal	ra,a2afda <inner_kslot_is_busy>
  a2b0be:	57fd                	li	a5,-1
  a2b0c0:	f975                	bnez	a0,a2b0b4 <hal_keyslot_unlock+0x2a>
  a2b0c2:	4601                	li	a2,0
  a2b0c4:	85a6                	mv	a1,s1
  a2b0c6:	8522                	mv	a0,s0
  a2b0c8:	3d4d                	jal	ra,a2af7a <inner_kslot_chn_is_locked>
  a2b0ca:	4781                	li	a5,0
  a2b0cc:	d565                	beqz	a0,a2b0b4 <hal_keyslot_unlock+0x2a>
  a2b0ce:	06090363          	beqz	s2,a2b134 <hal_keyslot_unlock+0xaa>
  a2b0d2:	011917bb          	bnei	s2,1,a2b130 <hal_keyslot_unlock+0xa6>
  a2b0d6:	0000 1b04 079f      	l.li	a5,0x1b04
  a2b0dc:	44112737          	lui	a4,0x44112
  a2b0e0:	97ba                	add	a5,a5,a4
  a2b0e2:	4388                	lw	a0,0(a5)
  a2b0e4:	7761                	lui	a4,0xffff8
  a2b0e6:	177d                	addi	a4,a4,-1 # ffff7fff <_gp_+0xff5c37eb>
  a2b0e8:	8d79                	and	a0,a0,a4
  a2b0ea:	1e95251b          	orshf	a0,a0,s1,sll,15
  a2b0ee:	3ff47413          	andi	s0,s0,1023
  a2b0f2:	c0057513          	andi	a0,a0,-1024
  a2b0f6:	8d41                	or	a0,a0,s0
  a2b0f8:	ffef ffff 071f      	l.li	a4,0xffefffff
  a2b0fe:	8d79                	and	a0,a0,a4
  a2b100:	c388                	sw	a0,0(a5)
  a2b102:	0ff0000f          	fence
  a2b106:	000f 4240 041f      	l.li	s0,0xf4240
  a2b10c:	35f9                	jal	ra,a2afda <inner_kslot_is_busy>
  a2b10e:	c51d                	beqz	a0,a2b13c <hal_keyslot_unlock+0xb2>
  a2b110:	4505                	li	a0,1
  a2b112:	147d                	addi	s0,s0,-1
  a2b114:	a74ff0ef          	jal	ra,a2a388 <uapi_tcxo_delay_us>
  a2b118:	f875                	bnez	s0,a2b10c <hal_keyslot_unlock+0x82>
  a2b11a:	57fd                	li	a5,-1
  a2b11c:	cc3e                	sw	a5,24(sp)
  a2b11e:	47e2                	lw	a5,24(sp)
  a2b120:	fbc9                	bnez	a5,a2b0b2 <hal_keyslot_unlock+0x28>
  a2b122:	0868                	addi	a0,sp,28
  a2b124:	ce02                	sw	zero,28(sp)
  a2b126:	3569                	jal	ra,a2afb0 <inner_chk_kslot_busy>
  a2b128:	e501                	bnez	a0,a2b130 <hal_keyslot_unlock+0xa6>
  a2b12a:	47f2                	lw	a5,28(sp)
  a2b12c:	8b89                	andi	a5,a5,2
  a2b12e:	d3d9                	beqz	a5,a2b0b4 <hal_keyslot_unlock+0x2a>
  a2b130:	57fd                	li	a5,-1
  a2b132:	b749                	j	a2b0b4 <hal_keyslot_unlock+0x2a>
  a2b134:	0000 1b00 079f      	l.li	a5,0x1b00
  a2b13a:	b74d                	j	a2b0dc <hal_keyslot_unlock+0x52>
  a2b13c:	4781                	li	a5,0
  a2b13e:	bff9                	j	a2b11c <hal_keyslot_unlock+0x92>

00a2b140 <inner_klad_set_key_odd>:
  a2b140:	441137b7          	lui	a5,0x44113
  a2b144:	4b98                	lw	a4,16(a5)
  a2b146:	ffe77793          	andi	a5,a4,-2
  a2b14a:	c119                	beqz	a0,a2b150 <inner_klad_set_key_odd+0x10>
  a2b14c:	00176793          	ori	a5,a4,1
  a2b150:	44113737          	lui	a4,0x44113
  a2b154:	cb1c                	sw	a5,16(a4)
  a2b156:	0ff0000f          	fence
  a2b15a:	8082                	ret

00a2b15c <inner_klad_wait_com_route_done>:
  a2b15c:	8138                	push	{ra,s0-s1},-32
  a2b15e:	57fd                	li	a5,-1
  a2b160:	c23e                	sw	a5,4(sp)
  a2b162:	000f 4240 041f      	l.li	s0,0xf4240
  a2b168:	441134b7          	lui	s1,0x44113
  a2b16c:	0844a783          	lw	a5,132(s1) # 44113084 <_gp_+0x436de870>
  a2b170:	8b85                	andi	a5,a5,1
  a2b172:	eb85                	bnez	a5,a2b1a2 <inner_klad_wait_com_route_done+0x46>
  a2b174:	40fc                	lw	a5,68(s1)
  a2b176:	0017e793          	ori	a5,a5,1
  a2b17a:	c43e                	sw	a5,8(sp)
  a2b17c:	c0fc                	sw	a5,68(s1)
  a2b17e:	0ff0000f          	fence
  a2b182:	c202                	sw	zero,4(sp)
  a2b184:	44113737          	lui	a4,0x44113
  a2b188:	08872783          	lw	a5,136(a4) # 44113088 <_gp_+0x436de874>
  a2b18c:	5f1c                	lw	a5,56(a4)
  a2b18e:	5f58                	lw	a4,60(a4)
  a2b190:	8fd9                	or	a5,a5,a4
  a2b192:	00f037b3          	snez	a5,a5
  a2b196:	40f007b3          	neg	a5,a5
  a2b19a:	c23e                	sw	a5,4(sp)
  a2b19c:	4792                	lw	a5,4(sp)
  a2b19e:	4512                	lw	a0,4(sp)
  a2b1a0:	8134                	popret	{ra,s0-s1},32
  a2b1a2:	4505                	li	a0,1
  a2b1a4:	147d                	addi	s0,s0,-1
  a2b1a6:	9e2ff0ef          	jal	ra,a2a388 <uapi_tcxo_delay_us>
  a2b1aa:	f069                	bnez	s0,a2b16c <inner_klad_wait_com_route_done+0x10>
  a2b1ac:	bfe1                	j	a2b184 <inner_klad_wait_com_route_done+0x28>

00a2b1ae <hal_klad_lock>:
  a2b1ae:	8158                	push	{ra,s0-s3},-48
  a2b1b0:	57fd                	li	a5,-1
  a2b1b2:	c63e                	sw	a5,12(sp)
  a2b1b4:	0000 2710 041f      	l.li	s0,0x2710
  a2b1ba:	4905                	li	s2,1
  a2b1bc:	441134b7          	lui	s1,0x44113
  a2b1c0:	4991                	li	s3,4
  a2b1c2:	c95fe0ef          	jal	ra,a29e56 <crypto_get_cpu_type>
  a2b1c6:	57fd                	li	a5,-1
  a2b1c8:	03251463          	bne	a0,s2,a2b1f0 <hal_klad_lock+0x42>
  a2b1cc:	0724aa23          	sw	s2,116(s1) # 44113074 <_gp_+0x436de860>
  a2b1d0:	0ff0000f          	fence
  a2b1d4:	5cf8                	lw	a4,124(s1)
  a2b1d6:	57fd                	li	a5,-1
  a2b1d8:	8b31                	andi	a4,a4,12
  a2b1da:	01370b63          	beq	a4,s3,a2b1f0 <hal_klad_lock+0x42>
  a2b1de:	0804a783          	lw	a5,128(s1)
  a2b1e2:	9f81                	uxtb	a5
  a2b1e4:	f5678793          	addi	a5,a5,-170 # 44112f56 <_gp_+0x436de742>
  a2b1e8:	00f037b3          	snez	a5,a5
  a2b1ec:	40f007b3          	neg	a5,a5
  a2b1f0:	c63e                	sw	a5,12(sp)
  a2b1f2:	47b2                	lw	a5,12(sp)
  a2b1f4:	cb81                	beqz	a5,a2b204 <hal_klad_lock+0x56>
  a2b1f6:	4505                	li	a0,1
  a2b1f8:	147d                	addi	s0,s0,-1
  a2b1fa:	98eff0ef          	jal	ra,a2a388 <uapi_tcxo_delay_us>
  a2b1fe:	f071                	bnez	s0,a2b1c2 <hal_klad_lock+0x14>
  a2b200:	557d                	li	a0,-1
  a2b202:	8154                	popret	{ra,s0-s3},48
  a2b204:	4501                	li	a0,0
  a2b206:	bff5                	j	a2b202 <hal_klad_lock+0x54>

00a2b208 <hal_klad_unlock>:
  a2b208:	8018                	push	{ra},-16
  a2b20a:	c4dfe0ef          	jal	ra,a29e56 <crypto_get_cpu_type>
  a2b20e:	01051cbb          	bnei	a0,1,a2b240 <hal_klad_unlock+0x38>
  a2b212:	44113737          	lui	a4,0x44113
  a2b216:	08072683          	lw	a3,128(a4) # 44113080 <_gp_+0x436de86c>
  a2b21a:	0aa00613          	li	a2,170
  a2b21e:	4781                	li	a5,0
  a2b220:	9e81                	uxtb	a3
  a2b222:	00c69d63          	bne	a3,a2,a2b23c <hal_klad_unlock+0x34>
  a2b226:	df28                	sw	a0,120(a4)
  a2b228:	0ff0000f          	fence
  a2b22c:	5f7c                	lw	a5,124(a4)
  a2b22e:	0307f793          	andi	a5,a5,48
  a2b232:	17c1                	addi	a5,a5,-16
  a2b234:	0017b793          	seqz	a5,a5
  a2b238:	40f007b3          	neg	a5,a5
  a2b23c:	853e                	mv	a0,a5
  a2b23e:	8014                	popret	{ra},16
  a2b240:	57fd                	li	a5,-1
  a2b242:	bfed                	j	a2b23c <hal_klad_unlock+0x34>

00a2b244 <hal_klad_set_key_crypto_cfg>:
  a2b244:	0a000793          	li	a5,160
  a2b248:	02f60563          	beq	a2,a5,a2b272 <hal_klad_set_key_crypto_cfg+0x2e>
  a2b24c:	00c7e963          	bltu	a5,a2,a2b25e <hal_klad_set_key_crypto_cfg+0x1a>
  a2b250:	05000693          	li	a3,80
  a2b254:	200615bb          	bnei	a2,32,a2b26a <hal_klad_set_key_crypto_cfg+0x26>
  a2b258:	02000693          	li	a3,32
  a2b25c:	a829                	j	a2b276 <hal_klad_set_key_crypto_cfg+0x32>
  a2b25e:	0a100793          	li	a5,161
  a2b262:	04f60363          	beq	a2,a5,a2b2a8 <hal_klad_set_key_crypto_cfg+0x64>
  a2b266:	0a200693          	li	a3,162
  a2b26a:	00d60663          	beq	a2,a3,a2b276 <hal_klad_set_key_crypto_cfg+0x32>
  a2b26e:	557d                	li	a0,-1
  a2b270:	8082                	ret
  a2b272:	0a000693          	li	a3,160
  a2b276:	44113637          	lui	a2,0x44113
  a2b27a:	4a58                	lw	a4,20(a2)
  a2b27c:	7781                	lui	a5,0xfffe0
  a2b27e:	17fd                	addi	a5,a5,-1 # fffdffff <_gp_+0xff5ab7eb>
  a2b280:	8ff9                	and	a5,a5,a4
  a2b282:	8985                	andi	a1,a1,1
  a2b284:	22b7a59b          	orshf	a1,a5,a1,sll,17
  a2b288:	77c1                	lui	a5,0xffff0
  a2b28a:	17fd                	addi	a5,a5,-1 # fffeffff <_gp_+0xff5bb7eb>
  a2b28c:	8905                	andi	a0,a0,1
  a2b28e:	8fed                	and	a5,a5,a1
  a2b290:	20a7a79b          	orshf	a5,a5,a0,sll,16
  a2b294:	757d                	lui	a0,0xfffff
  a2b296:	053d                	addi	a0,a0,15 # fffff00f <_gp_+0xff5ca7fb>
  a2b298:	8fe9                	and	a5,a5,a0
  a2b29a:	08d7a79b          	orshf	a5,a5,a3,sll,4
  a2b29e:	ca5c                	sw	a5,20(a2)
  a2b2a0:	0ff0000f          	fence
  a2b2a4:	4501                	li	a0,0
  a2b2a6:	8082                	ret
  a2b2a8:	0a100693          	li	a3,161
  a2b2ac:	b7e9                	j	a2b276 <hal_klad_set_key_crypto_cfg+0x32>

00a2b2ae <hal_klad_set_key_dest_cfg>:
  a2b2ae:	0205633b          	bltui	a0,2,a2b2ba <hal_klad_set_key_dest_cfg+0xc>
  a2b2b2:	02050bbb          	beqi	a0,2,a2b2e0 <hal_klad_set_key_dest_cfg+0x32>
  a2b2b6:	557d                	li	a0,-1
  a2b2b8:	8082                	ret
  a2b2ba:	4705                	li	a4,1
  a2b2bc:	441137b7          	lui	a5,0x44113
  a2b2c0:	4bdc                	lw	a5,20(a5)
  a2b2c2:	9be1                	andi	a5,a5,-8
  a2b2c4:	8fd9                	or	a5,a5,a4
  a2b2c6:	0205133b          	bnei	a0,2,a2b2d2 <hal_klad_set_key_dest_cfg+0x24>
  a2b2ca:	fff3 ffff 071f      	l.li	a4,0xfff3ffff
  a2b2d0:	8ff9                	and	a5,a5,a4
  a2b2d2:	44113737          	lui	a4,0x44113
  a2b2d6:	cb5c                	sw	a5,20(a4)
  a2b2d8:	0ff0000f          	fence
  a2b2dc:	4501                	li	a0,0
  a2b2de:	8082                	ret
  a2b2e0:	471d                	li	a4,7
  a2b2e2:	dde9                	beqz	a1,a2b2bc <hal_klad_set_key_dest_cfg+0xe>
  a2b2e4:	bfc9                	j	a2b2b6 <hal_klad_set_key_dest_cfg+0x8>

00a2b2e6 <hal_klad_set_key_secure_cfg>:
  a2b2e6:	c539                	beqz	a0,a2b334 <hal_klad_set_key_secure_cfg+0x4e>
  a2b2e8:	441136b7          	lui	a3,0x44113
  a2b2ec:	4e9c                	lw	a5,24(a3)
  a2b2ee:	3118                	lbu	a4,1(a0)
  a2b2f0:	fdf7f793          	andi	a5,a5,-33
  a2b2f4:	8b05                	andi	a4,a4,1
  a2b2f6:	0ae7a79b          	orshf	a5,a5,a4,sll,5
  a2b2fa:	2138                	lbu	a4,2(a0)
  a2b2fc:	9bbd                	andi	a5,a5,-17
  a2b2fe:	8b05                	andi	a4,a4,1
  a2b300:	08e7a79b          	orshf	a5,a5,a4,sll,4
  a2b304:	3138                	lbu	a4,3(a0)
  a2b306:	9bdd                	andi	a5,a5,-9
  a2b308:	8b05                	andi	a4,a4,1
  a2b30a:	06e7a79b          	orshf	a5,a5,a4,sll,3
  a2b30e:	2158                	lbu	a4,4(a0)
  a2b310:	9bed                	andi	a5,a5,-5
  a2b312:	8b05                	andi	a4,a4,1
  a2b314:	04e7a79b          	orshf	a5,a5,a4,sll,2
  a2b318:	3158                	lbu	a4,5(a0)
  a2b31a:	9bf5                	andi	a5,a5,-3
  a2b31c:	8b05                	andi	a4,a4,1
  a2b31e:	02e7a79b          	orshf	a5,a5,a4,sll,1
  a2b322:	2118                	lbu	a4,0(a0)
  a2b324:	9bf9                	andi	a5,a5,-2
  a2b326:	8b05                	andi	a4,a4,1
  a2b328:	8fd9                	or	a5,a5,a4
  a2b32a:	ce9c                	sw	a5,24(a3)
  a2b32c:	0ff0000f          	fence
  a2b330:	4501                	li	a0,0
  a2b332:	8082                	ret
  a2b334:	557d                	li	a0,-1
  a2b336:	8082                	ret

00a2b338 <hal_klad_set_key_addr>:
  a2b338:	e105                	bnez	a0,a2b358 <hal_klad_set_key_addr+0x20>
  a2b33a:	44113737          	lui	a4,0x44113
  a2b33e:	4b1c                	lw	a5,16(a4)
  a2b340:	0586                	slli	a1,a1,0x1
  a2b342:	3fe5f593          	andi	a1,a1,1022
  a2b346:	c007f793          	andi	a5,a5,-1024
  a2b34a:	8ddd                	or	a1,a1,a5
  a2b34c:	cb0c                	sw	a1,16(a4)
  a2b34e:	0ff0000f          	fence
  a2b352:	4781                	li	a5,0
  a2b354:	853e                	mv	a0,a5
  a2b356:	8082                	ret
  a2b358:	57fd                	li	a5,-1
  a2b35a:	01f51ebb          	bnei	a0,1,a2b354 <hal_klad_set_key_addr+0x1c>
  a2b35e:	44113737          	lui	a4,0x44113
  a2b362:	4b1c                	lw	a5,16(a4)
  a2b364:	3ff5f593          	andi	a1,a1,1023
  a2b368:	bff9                	j	a2b346 <hal_klad_set_key_addr+0xe>

00a2b36a <hal_klad_start_com_route>:
  a2b36a:	8148                	push	{ra,s0-s2},-32
  a2b36c:	57fd                	li	a5,-1
  a2b36e:	c23e                	sw	a5,4(sp)
  a2b370:	c402                	sw	zero,8(sp)
  a2b372:	c602                	sw	zero,12(sp)
  a2b374:	cdc5                	beqz	a1,a2b42c <hal_klad_start_com_route+0xc2>
  a2b376:	41d8                	lw	a4,4(a1)
  a2b378:	cf19                	beqz	a4,a2b396 <hal_klad_start_com_route+0x2c>
  a2b37a:	8932                	mv	s2,a2
  a2b37c:	84ae                	mv	s1,a1
  a2b37e:	862a                	mv	a2,a0
  a2b380:	0074                	addi	a3,sp,12
  a2b382:	458d                	li	a1,3
  a2b384:	00a3 3ed0 051f      	l.li	a0,0xa33ed0
  a2b38a:	ae5fe0ef          	jal	ra,a29e6e <crypto_get_value_by_index>
  a2b38e:	c22a                	sw	a0,4(sp)
  a2b390:	4792                	lw	a5,4(sp)
  a2b392:	c781                	beqz	a5,a2b39a <hal_klad_start_com_route+0x30>
  a2b394:	4792                	lw	a5,4(sp)
  a2b396:	853e                	mv	a0,a5
  a2b398:	8144                	popret	{ra,s0-s2},32
  a2b39a:	20b0                	lbu	a2,2(s1)
  a2b39c:	0034                	addi	a3,sp,8
  a2b39e:	458d                	li	a1,3
  a2b3a0:	00a3 3eb8 051f      	l.li	a0,0xa33eb8
  a2b3a6:	ac9fe0ef          	jal	ra,a29e6e <crypto_get_value_by_index>
  a2b3aa:	c22a                	sw	a0,4(sp)
  a2b3ac:	4792                	lw	a5,4(sp)
  a2b3ae:	f3fd                	bnez	a5,a2b394 <hal_klad_start_com_route+0x2a>
  a2b3b0:	20bc                	lbu	a5,2(s1)
  a2b3b2:	4501                	li	a0,0
  a2b3b4:	e391                	bnez	a5,a2b3b8 <hal_klad_start_com_route+0x4e>
  a2b3b6:	3088                	lbu	a0,1(s1)
  a2b3b8:	00091463          	bnez	s2,a2b3c0 <hal_klad_start_com_route+0x56>
  a2b3bc:	d85ff0ef          	jal	ra,a2b140 <inner_klad_set_key_odd>
  a2b3c0:	4422                	lw	s0,8(sp)
  a2b3c2:	47b2                	lw	a5,12(sp)
  a2b3c4:	880d                	andi	s0,s0,3
  a2b3c6:	041a                	slli	s0,s0,0x6
  a2b3c8:	8bfd                	andi	a5,a5,31
  a2b3ca:	00146413          	ori	s0,s0,1
  a2b3ce:	10f4241b          	orshf	s0,s0,a5,sll,8
  a2b3d2:	441137b7          	lui	a5,0x44113
  a2b3d6:	0887a223          	sw	s0,132(a5) # 44113084 <_gp_+0x436de870>
  a2b3da:	0ff0000f          	fence
  a2b3de:	d7fff0ef          	jal	ra,a2b15c <inner_klad_wait_com_route_done>
  a2b3e2:	c22a                	sw	a0,4(sp)
  a2b3e4:	4792                	lw	a5,4(sp)
  a2b3e6:	f7dd                	bnez	a5,a2b394 <hal_klad_start_com_route+0x2a>
  a2b3e8:	20bc                	lbu	a5,2(s1)
  a2b3ea:	d7cd                	beqz	a5,a2b394 <hal_klad_start_com_route+0x2a>
  a2b3ec:	00091563          	bnez	s2,a2b3f6 <hal_klad_start_com_route+0x8c>
  a2b3f0:	4505                	li	a0,1
  a2b3f2:	d4fff0ef          	jal	ra,a2b140 <inner_klad_set_key_odd>
  a2b3f6:	47a2                	lw	a5,8(sp)
  a2b3f8:	f3f47413          	andi	s0,s0,-193
  a2b3fc:	ffff e0ff 071f      	l.li	a4,0xffffe0ff
  a2b402:	8b8d                	andi	a5,a5,3
  a2b404:	0cf4241b          	orshf	s0,s0,a5,sll,6
  a2b408:	47b2                	lw	a5,12(sp)
  a2b40a:	8c79                	and	s0,s0,a4
  a2b40c:	8bfd                	andi	a5,a5,31
  a2b40e:	10f4241b          	orshf	s0,s0,a5,sll,8
  a2b412:	00146413          	ori	s0,s0,1
  a2b416:	441137b7          	lui	a5,0x44113
  a2b41a:	0887a223          	sw	s0,132(a5) # 44113084 <_gp_+0x436de870>
  a2b41e:	0ff0000f          	fence
  a2b422:	d3bff0ef          	jal	ra,a2b15c <inner_klad_wait_com_route_done>
  a2b426:	c22a                	sw	a0,4(sp)
  a2b428:	4792                	lw	a5,4(sp)
  a2b42a:	b7ad                	j	a2b394 <hal_klad_start_com_route+0x2a>
  a2b42c:	57fd                	li	a5,-1
  a2b42e:	b7a5                	j	a2b396 <hal_klad_start_com_route+0x2c>

00a2b430 <hal_fapc_set_region_addr>:
  a2b430:	040577bb          	bgeui	a0,4,a2b44e <hal_fapc_set_region_addr+0x1e>
  a2b434:	1200 0400 079f      	l.li	a5,0x12000400
  a2b43a:	953e                	add	a0,a0,a5
  a2b43c:	050a                	slli	a0,a0,0x2
  a2b43e:	c10c                	sw	a1,0(a0)
  a2b440:	0ff0000f          	fence
  a2b444:	c130                	sw	a2,64(a0)
  a2b446:	0ff0000f          	fence
  a2b44a:	4501                	li	a0,0
  a2b44c:	8082                	ret
  a2b44e:	557d                	li	a0,-1
  a2b450:	8082                	ret

00a2b452 <hal_fapc_set_region_permission>:
  a2b452:	4501                	li	a0,0
  a2b454:	8082                	ret

00a2b456 <hal_fapc_set_region_mac_addr>:
  a2b456:	4501                	li	a0,0
  a2b458:	8082                	ret

00a2b45a <hal_fapc_set_region_mode>:
  a2b45a:	0405733b          	bgeui	a0,4,a2b466 <hal_fapc_set_region_mode+0xc>
  a2b45e:	c591                	beqz	a1,a2b46a <hal_fapc_set_region_mode+0x10>
  a2b460:	4709                	li	a4,2
  a2b462:	020582bb          	beqi	a1,2,a2b46c <hal_fapc_set_region_mode+0x12>
  a2b466:	557d                	li	a0,-1
  a2b468:	8082                	ret
  a2b46a:	4701                	li	a4,0
  a2b46c:	480016b7          	lui	a3,0x48001
  a2b470:	1806a603          	lw	a2,384(a3) # 48001180 <_gp_+0x475cc96c>
  a2b474:	0506                	slli	a0,a0,0x1
  a2b476:	478d                	li	a5,3
  a2b478:	00a797b3          	sll	a5,a5,a0
  a2b47c:	fff7c793          	not	a5,a5
  a2b480:	8ff1                	and	a5,a5,a2
  a2b482:	00a71733          	sll	a4,a4,a0
  a2b486:	8fd9                	or	a5,a5,a4
  a2b488:	18f6a023          	sw	a5,384(a3)
  a2b48c:	0ff0000f          	fence
  a2b490:	4501                	li	a0,0
  a2b492:	8082                	ret

00a2b494 <hal_fapc_region_enable>:
  a2b494:	4501                	li	a0,0
  a2b496:	8082                	ret

00a2b498 <hal_fapc_region_lock>:
  a2b498:	0405783b          	bgeui	a0,4,a2b4b8 <hal_fapc_region_lock+0x20>
  a2b49c:	48001737          	lui	a4,0x48001
  a2b4a0:	22072683          	lw	a3,544(a4) # 48001220 <_gp_+0x475cca0c>
  a2b4a4:	4785                	li	a5,1
  a2b4a6:	00a79533          	sll	a0,a5,a0
  a2b4aa:	8d55                	or	a0,a0,a3
  a2b4ac:	22a72023          	sw	a0,544(a4)
  a2b4b0:	0ff0000f          	fence
  a2b4b4:	4501                	li	a0,0
  a2b4b6:	8082                	ret
  a2b4b8:	557d                	li	a0,-1
  a2b4ba:	8082                	ret

00a2b4bc <hal_fapc_set_region_iv>:
  a2b4bc:	e131                	bnez	a0,a2b500 <hal_fapc_set_region_iv+0x44>
  a2b4be:	557d                	li	a0,-1
  a2b4c0:	c1a9                	beqz	a1,a2b502 <hal_fapc_set_region_iv+0x46>
  a2b4c2:	1016103b          	bnei	a2,16,a2b502 <hal_fapc_set_region_iv+0x46>
  a2b4c6:	4198                	lw	a4,0(a1)
  a2b4c8:	480017b7          	lui	a5,0x48001
  a2b4cc:	62e7a023          	sw	a4,1568(a5) # 48001620 <_gp_+0x475cce0c>
  a2b4d0:	0ff0000f          	fence
  a2b4d4:	41d8                	lw	a4,4(a1)
  a2b4d6:	62e7a223          	sw	a4,1572(a5)
  a2b4da:	0ff0000f          	fence
  a2b4de:	4598                	lw	a4,8(a1)
  a2b4e0:	62e7a423          	sw	a4,1576(a5)
  a2b4e4:	0ff0000f          	fence
  a2b4e8:	45d8                	lw	a4,12(a1)
  a2b4ea:	62e7a623          	sw	a4,1580(a5)
  a2b4ee:	0ff0000f          	fence
  a2b4f2:	4705                	li	a4,1
  a2b4f4:	60e7a023          	sw	a4,1536(a5)
  a2b4f8:	0ff0000f          	fence
  a2b4fc:	4501                	li	a0,0
  a2b4fe:	8082                	ret
  a2b500:	557d                	li	a0,-1
  a2b502:	8082                	ret

00a2b504 <hal_fapc_set_region_iv_start_addr>:
  a2b504:	0405763b          	bgeui	a0,4,a2b51c <hal_fapc_set_region_iv_start_addr+0x18>
  a2b508:	1200 0590 079f      	l.li	a5,0x12000590
  a2b50e:	953e                	add	a0,a0,a5
  a2b510:	050a                	slli	a0,a0,0x2
  a2b512:	c10c                	sw	a1,0(a0)
  a2b514:	0ff0000f          	fence
  a2b518:	4501                	li	a0,0
  a2b51a:	8082                	ret
  a2b51c:	557d                	li	a0,-1
  a2b51e:	8082                	ret

00a2b520 <hal_tcxo_init>:
  a2b520:	8018                	push	{ra},-16
  a2b522:	28a9                	jal	ra,a2b57c <hal_tcxo_v150_regs_init>
  a2b524:	e105                	bnez	a0,a2b544 <hal_tcxo_init+0x24>
  a2b526:	00a05737          	lui	a4,0xa05
  a2b52a:	74872683          	lw	a3,1864(a4) # a05748 <g_tcxo_regs>
  a2b52e:	429c                	lw	a5,0(a3)
  a2b530:	0047e793          	ori	a5,a5,4
  a2b534:	c29c                	sw	a5,0(a3)
  a2b536:	74872703          	lw	a4,1864(a4)
  a2b53a:	431c                	lw	a5,0(a4)
  a2b53c:	0027e793          	ori	a5,a5,2
  a2b540:	c31c                	sw	a5,0(a4)
  a2b542:	8014                	popret	{ra},16
  a2b544:	8000 1180 051f      	l.li	a0,0x80001180
  a2b54a:	bfe5                	j	a2b542 <hal_tcxo_init+0x22>

00a2b54c <hal_tcxo_get>:
  a2b54c:	00a057b7          	lui	a5,0xa05
  a2b550:	7487a683          	lw	a3,1864(a5) # a05748 <g_tcxo_regs>
  a2b554:	4605                	li	a2,1
  a2b556:	4298                	lw	a4,0(a3)
  a2b558:	00176713          	ori	a4,a4,1
  a2b55c:	c298                	sw	a4,0(a3)
  a2b55e:	56fd                	li	a3,-1
  a2b560:	873e                	mv	a4,a5
  a2b562:	74872783          	lw	a5,1864(a4)
  a2b566:	439c                	lw	a5,0(a5)
  a2b568:	8391                	srli	a5,a5,0x4
  a2b56a:	8b85                	andi	a5,a5,1
  a2b56c:	00c78763          	beq	a5,a2,a2b57a <hal_tcxo_get+0x2e>
  a2b570:	16fd                	addi	a3,a3,-1
  a2b572:	fae5                	bnez	a3,a2b562 <hal_tcxo_get+0x16>
  a2b574:	4501                	li	a0,0
  a2b576:	4581                	li	a1,0
  a2b578:	8082                	ret
  a2b57a:	a00d                	j	a2b59c <hal_tcxo_reg_count_get>

00a2b57c <hal_tcxo_v150_regs_init>:
  a2b57c:	8018                	push	{ra},-16
  a2b57e:	493000ef          	jal	ra,a2c210 <tcxo_porting_base_addr_get>
  a2b582:	c909                	beqz	a0,a2b594 <hal_tcxo_v150_regs_init+0x18>
  a2b584:	48d000ef          	jal	ra,a2c210 <tcxo_porting_base_addr_get>
  a2b588:	00a0 5748 079f      	l.li	a5,0xa05748
  a2b58e:	c388                	sw	a0,0(a5)
  a2b590:	4501                	li	a0,0
  a2b592:	8014                	popret	{ra},16
  a2b594:	8000 1180 051f      	l.li	a0,0x80001180
  a2b59a:	bfe5                	j	a2b592 <hal_tcxo_v150_regs_init+0x16>

00a2b59c <hal_tcxo_reg_count_get>:
  a2b59c:	00a0 5748 079f      	l.li	a5,0xa05748
  a2b5a2:	439c                	lw	a5,0(a5)
  a2b5a4:	478c                	lw	a1,8(a5)
  a2b5a6:	43c8                	lw	a0,4(a5)
  a2b5a8:	8082                	ret

00a2b5aa <hal_uart_register_funcs>:
  a2b5aa:	030575bb          	bgeui	a0,3,a2b5c0 <hal_uart_register_funcs+0x16>
  a2b5ae:	c989                	beqz	a1,a2b5c0 <hal_uart_register_funcs+0x16>
  a2b5b0:	00a0 574c 079f      	l.li	a5,0xa0574c
  a2b5b6:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b5ba:	c10c                	sw	a1,0(a0)
  a2b5bc:	4501                	li	a0,0
  a2b5be:	8082                	ret
  a2b5c0:	80000537          	lui	a0,0x80000
  a2b5c4:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2b5c6:	8082                	ret

00a2b5c8 <hal_uart_init>:
  a2b5c8:	8228                	push	{ra,s0},-48
  a2b5ca:	842a                	mv	s0,a0
  a2b5cc:	ce2e                	sw	a1,28(sp)
  a2b5ce:	cc32                	sw	a2,24(sp)
  a2b5d0:	ca36                	sw	a3,20(sp)
  a2b5d2:	c83a                	sw	a4,16(sp)
  a2b5d4:	c63e                	sw	a5,12(sp)
  a2b5d6:	3ad000ef          	jal	ra,a2c182 <uart_port_register_hal_funcs>
  a2b5da:	00a0 574c 051f      	l.li	a0,0xa0574c
  a2b5e0:	0485051b          	addshf	a0,a0,s0,sll,2
  a2b5e4:	4108                	lw	a0,0(a0)
  a2b5e6:	cd01                	beqz	a0,a2b5fe <hal_uart_init+0x36>
  a2b5e8:	46d2                	lw	a3,20(sp)
  a2b5ea:	ca91                	beqz	a3,a2b5fe <hal_uart_init+0x36>
  a2b5ec:	00052303          	lw	t1,0(a0)
  a2b5f0:	47b2                	lw	a5,12(sp)
  a2b5f2:	4742                	lw	a4,16(sp)
  a2b5f4:	4662                	lw	a2,24(sp)
  a2b5f6:	45f2                	lw	a1,28(sp)
  a2b5f8:	8522                	mv	a0,s0
  a2b5fa:	8220                	pop	{ra,s0},48
  a2b5fc:	8302                	jr	t1
  a2b5fe:	8000 1047 051f      	l.li	a0,0x80001047
  a2b604:	8224                	popret	{ra,s0},48

00a2b606 <hal_uart_write>:
  a2b606:	00a0 574c 079f      	l.li	a5,0xa0574c
  a2b60c:	04a7879b          	addshf	a5,a5,a0,sll,2
  a2b610:	439c                	lw	a5,0(a5)
  a2b612:	00c7a303          	lw	t1,12(a5)
  a2b616:	8302                	jr	t1

00a2b618 <hal_uart_read>:
  a2b618:	00a0 574c 079f      	l.li	a5,0xa0574c
  a2b61e:	04a7879b          	addshf	a5,a5,a0,sll,2
  a2b622:	439c                	lw	a5,0(a5)
  a2b624:	0107a303          	lw	t1,16(a5)
  a2b628:	8302                	jr	t1

00a2b62a <hal_uart_ctrl>:
  a2b62a:	00a0 574c 079f      	l.li	a5,0xa0574c
  a2b630:	04a7879b          	addshf	a5,a5,a0,sll,2
  a2b634:	439c                	lw	a5,0(a5)
  a2b636:	c781                	beqz	a5,a2b63e <hal_uart_ctrl+0x14>
  a2b638:	0087a303          	lw	t1,8(a5)
  a2b63c:	8302                	jr	t1
  a2b63e:	8000 1047 051f      	l.li	a0,0x80001047
  a2b644:	8082                	ret

00a2b646 <hal_uart_v151_ctrl_get_rxfifo_passnum>:
  a2b646:	c609                	beqz	a2,a2b650 <hal_uart_v151_ctrl_get_rxfifo_passnum+0xa>
  a2b648:	57fd                	li	a5,-1
  a2b64a:	c21c                	sw	a5,0(a2)
  a2b64c:	4501                	li	a0,0
  a2b64e:	8082                	ret
  a2b650:	80000537          	lui	a0,0x80000
  a2b654:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2b656:	8082                	ret

00a2b658 <hal_uart_v151_get_uart_rxfifo_threshold>:
  a2b658:	00a0 5774 079f      	l.li	a5,0xa05774
  a2b65e:	953e                	add	a0,a0,a5
  a2b660:	2114                	lbu	a3,0(a0)
  a2b662:	03e00713          	li	a4,62
  a2b666:	0306f3bb          	bgeui	a3,3,a2b674 <hal_uart_v151_get_uart_rxfifo_threshold+0x1c>
  a2b66a:	00a3 2718 079f      	l.li	a5,0xa32718
  a2b670:	97b6                	add	a5,a5,a3
  a2b672:	2398                	lbu	a4,0(a5)
  a2b674:	c218                	sw	a4,0(a2)
  a2b676:	4501                	li	a0,0
  a2b678:	8082                	ret

00a2b67a <hal_uart_v151_deinit>:
  a2b67a:	00a0 5758 079f      	l.li	a5,0xa05758
  a2b680:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b684:	00052023          	sw	zero,0(a0)
  a2b688:	4501                	li	a0,0
  a2b68a:	8082                	ret

00a2b68c <hal_uart_set_diven>:
  a2b68c:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b692:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b696:	4118                	lw	a4,0(a0)
  a2b698:	8985                	andi	a1,a1,1
  a2b69a:	471c                	lw	a5,8(a4)
  a2b69c:	9bf9                	andi	a5,a5,-2
  a2b69e:	8fcd                	or	a5,a5,a1
  a2b6a0:	c71c                	sw	a5,8(a4)
  a2b6a2:	8082                	ret

00a2b6a4 <hal_uart_is_tx_fifo_full>:
  a2b6a4:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b6aa:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b6ae:	411c                	lw	a5,0(a0)
  a2b6b0:	4501                	li	a0,0
  a2b6b2:	43fc                	lw	a5,68(a5)
  a2b6b4:	8b85                	andi	a5,a5,1
  a2b6b6:	a21c                	sb	a5,0(a2)
  a2b6b8:	8082                	ret

00a2b6ba <hal_uart_is_tx_fifo_empty>:
  a2b6ba:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b6c0:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b6c4:	411c                	lw	a5,0(a0)
  a2b6c6:	4501                	li	a0,0
  a2b6c8:	43fc                	lw	a5,68(a5)
  a2b6ca:	8385                	srli	a5,a5,0x1
  a2b6cc:	8b85                	andi	a5,a5,1
  a2b6ce:	a21c                	sb	a5,0(a2)
  a2b6d0:	8082                	ret

00a2b6d2 <hal_uart_is_busy>:
  a2b6d2:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b6d8:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b6dc:	411c                	lw	a5,0(a0)
  a2b6de:	4501                	li	a0,0
  a2b6e0:	43fc                	lw	a5,68(a5)
  a2b6e2:	9f81                	uxtb	a5
  a2b6e4:	8385                	srli	a5,a5,0x1
  a2b6e6:	0017c793          	xori	a5,a5,1
  a2b6ea:	8b85                	andi	a5,a5,1
  a2b6ec:	a21c                	sb	a5,0(a2)
  a2b6ee:	8082                	ret

00a2b6f0 <hal_uart_is_rx_fifo_empty>:
  a2b6f0:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b6f6:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b6fa:	411c                	lw	a5,0(a0)
  a2b6fc:	4501                	li	a0,0
  a2b6fe:	43fc                	lw	a5,68(a5)
  a2b700:	838d                	srli	a5,a5,0x3
  a2b702:	8b85                	andi	a5,a5,1
  a2b704:	a21c                	sb	a5,0(a2)
  a2b706:	8082                	ret

00a2b708 <hal_uart_v151_write>:
  a2b708:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b70e:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b712:	e219                	bnez	a2,a2b718 <hal_uart_v151_write+0x10>
  a2b714:	4501                	li	a0,0
  a2b716:	8082                	ret
  a2b718:	4118                	lw	a4,0(a0)
  a2b71a:	437c                	lw	a5,68(a4)
  a2b71c:	8b85                	andi	a5,a5,1
  a2b71e:	fbf5                	bnez	a5,a2b712 <hal_uart_v151_write+0xa>
  a2b720:	0585                	addi	a1,a1,1
  a2b722:	fff5c783          	lbu	a5,-1(a1)
  a2b726:	167d                	addi	a2,a2,-1 # 44112fff <_gp_+0x436de7eb>
  a2b728:	9e21                	uxth	a2
  a2b72a:	c35c                	sw	a5,4(a4)
  a2b72c:	b7dd                	j	a2b712 <hal_uart_v151_write+0xa>

00a2b72e <hal_uart_v151_read>:
  a2b72e:	00a0 5768 071f      	l.li	a4,0xa05768
  a2b734:	4781                	li	a5,0
  a2b736:	04a7051b          	addshf	a0,a4,a0,sll,2
  a2b73a:	00c7c463          	blt	a5,a2,a2b742 <hal_uart_v151_read+0x14>
  a2b73e:	853e                	mv	a0,a5
  a2b740:	8082                	ret
  a2b742:	4114                	lw	a3,0(a0)
  a2b744:	42f8                	lw	a4,68(a3)
  a2b746:	8b21                	andi	a4,a4,8
  a2b748:	fb7d                	bnez	a4,a2b73e <hal_uart_v151_read+0x10>
  a2b74a:	42d4                	lw	a3,4(a3)
  a2b74c:	00f58733          	add	a4,a1,a5
  a2b750:	0785                	addi	a5,a5,1
  a2b752:	a314                	sb	a3,0(a4)
  a2b754:	b7dd                	j	a2b73a <hal_uart_v151_read+0xc>

00a2b756 <hal_uart_v151_ctrl>:
  a2b756:	00a3 271c 079f      	l.li	a5,0xa3271c
  a2b75c:	04b7879b          	addshf	a5,a5,a1,sll,2
  a2b760:	0007a303          	lw	t1,0(a5)
  a2b764:	00030363          	beqz	t1,a2b76a <hal_uart_v151_ctrl+0x14>
  a2b768:	8302                	jr	t1
  a2b76a:	8000 1047 051f      	l.li	a0,0x80001047
  a2b770:	8082                	ret

00a2b772 <hal_uart_init_fifo>:
  a2b772:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b778:	04a7879b          	addshf	a5,a5,a0,sll,2
  a2b77c:	4398                	lw	a4,0(a5)
  a2b77e:	0035f693          	andi	a3,a1,3
  a2b782:	535c                	lw	a5,36(a4)
  a2b784:	9bcd                	andi	a5,a5,-13
  a2b786:	04d7a79b          	orshf	a5,a5,a3,sll,2
  a2b78a:	9bf1                	andi	a5,a5,-4
  a2b78c:	00367693          	andi	a3,a2,3
  a2b790:	8fd5                	or	a5,a5,a3
  a2b792:	0107e793          	ori	a5,a5,16
  a2b796:	d35c                	sw	a5,36(a4)
  a2b798:	00a0 5774 079f      	l.li	a5,0xa05774
  a2b79e:	97aa                	add	a5,a5,a0
  a2b7a0:	a38c                	sb	a1,0(a5)
  a2b7a2:	00a0 5778 079f      	l.li	a5,0xa05778
  a2b7a8:	953e                	add	a0,a0,a5
  a2b7aa:	a110                	sb	a2,0(a0)
  a2b7ac:	8082                	ret

00a2b7ae <hal_uart_v151_ctrl_set_txfifo_int_level>:
  a2b7ae:	0406633b          	bltui	a2,4,a2b7ba <hal_uart_v151_ctrl_set_txfifo_int_level+0xc>
  a2b7b2:	80000537          	lui	a0,0x80000
  a2b7b6:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2b7b8:	8082                	ret
  a2b7ba:	8018                	push	{ra},-16
  a2b7bc:	00a0 5774 079f      	l.li	a5,0xa05774
  a2b7c2:	97aa                	add	a5,a5,a0
  a2b7c4:	238c                	lbu	a1,0(a5)
  a2b7c6:	9e01                	uxtb	a2
  a2b7c8:	376d                	jal	ra,a2b772 <hal_uart_init_fifo>
  a2b7ca:	4501                	li	a0,0
  a2b7cc:	8014                	popret	{ra},16

00a2b7ce <hal_uart_v151_ctrl_set_rxfifo_int_level>:
  a2b7ce:	0406633b          	bltui	a2,4,a2b7da <hal_uart_v151_ctrl_set_rxfifo_int_level+0xc>
  a2b7d2:	80000537          	lui	a0,0x80000
  a2b7d6:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2b7d8:	8082                	ret
  a2b7da:	8018                	push	{ra},-16
  a2b7dc:	00a0 5778 079f      	l.li	a5,0xa05778
  a2b7e2:	97aa                	add	a5,a5,a0
  a2b7e4:	85b2                	mv	a1,a2
  a2b7e6:	2390                	lbu	a2,0(a5)
  a2b7e8:	9d81                	uxtb	a1
  a2b7ea:	3761                	jal	ra,a2b772 <hal_uart_init_fifo>
  a2b7ec:	4501                	li	a0,0
  a2b7ee:	8014                	popret	{ra},16

00a2b7f0 <hal_uart_set_baud_rate>:
  a2b7f0:	c1b1                	beqz	a1,a2b834 <hal_uart_set_baud_rate+0x44>
  a2b7f2:	8048                	push	{ra,s0-s2},-16
  a2b7f4:	0592                	slli	a1,a1,0x4
  a2b7f6:	02b67433          	remu	s0,a2,a1
  a2b7fa:	892a                	mv	s2,a0
  a2b7fc:	02b654b3          	divu	s1,a2,a1
  a2b800:	041a                	slli	s0,s0,0x6
  a2b802:	02b45433          	divu	s0,s0,a1
  a2b806:	4585                	li	a1,1
  a2b808:	e85ff0ef          	jal	ra,a2b68c <hal_uart_set_diven>
  a2b80c:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b812:	0527879b          	addshf	a5,a5,s2,sll,2
  a2b816:	439c                	lw	a5,0(a5)
  a2b818:	0ff4f713          	andi	a4,s1,255
  a2b81c:	9ca1                	uxth	s1
  a2b81e:	cb98                	sw	a4,16(a5)
  a2b820:	80a1                	srli	s1,s1,0x8
  a2b822:	c7c4                	sw	s1,12(a5)
  a2b824:	4581                	li	a1,0
  a2b826:	854a                	mv	a0,s2
  a2b828:	03f47413          	andi	s0,s0,63
  a2b82c:	cbc0                	sw	s0,20(a5)
  a2b82e:	8040                	pop	{ra,s0-s2},16
  a2b830:	e5dff06f          	j	a2b68c <hal_uart_set_diven>
  a2b834:	8082                	ret

00a2b836 <hal_uart_set_data_bits>:
  a2b836:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b83c:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b840:	4118                	lw	a4,0(a0)
  a2b842:	898d                	andi	a1,a1,3
  a2b844:	471c                	lw	a5,8(a4)
  a2b846:	9bcd                	andi	a5,a5,-13
  a2b848:	04b7a79b          	orshf	a5,a5,a1,sll,2
  a2b84c:	c71c                	sw	a5,8(a4)
  a2b84e:	8082                	ret

00a2b850 <hal_uart_set_stop_bits>:
  a2b850:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b856:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b85a:	4118                	lw	a4,0(a0)
  a2b85c:	8985                	andi	a1,a1,1
  a2b85e:	471c                	lw	a5,8(a4)
  a2b860:	f7f7f793          	andi	a5,a5,-129
  a2b864:	0eb7a79b          	orshf	a5,a5,a1,sll,7
  a2b868:	c71c                	sw	a5,8(a4)
  a2b86a:	8082                	ret

00a2b86c <hal_uart_auto_flow_ctl_en>:
  a2b86c:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b872:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b876:	4118                	lw	a4,0(a0)
  a2b878:	8985                	andi	a1,a1,1
  a2b87a:	575c                	lw	a5,44(a4)
  a2b87c:	9be9                	andi	a5,a5,-6
  a2b87e:	8fcd                	or	a5,a5,a1
  a2b880:	04b7a59b          	orshf	a1,a5,a1,sll,2
  a2b884:	d74c                	sw	a1,44(a4)
  a2b886:	8082                	ret

00a2b888 <hal_uart_enable_interrupt>:
  a2b888:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b88e:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b892:	4114                	lw	a3,0(a0)
  a2b894:	4e9c                	lw	a5,24(a3)
  a2b896:	0e05f73b          	bgeui	a1,14,a2b8b2 <hal_uart_enable_interrupt+0x2a>
  a2b89a:	00a32737          	lui	a4,0xa32
  a2b89e:	6e070713          	addi	a4,a4,1760 # a326e0 <g_sm3_ival+0x34>
  a2b8a2:	04b7059b          	addshf	a1,a4,a1,sll,2
  a2b8a6:	4198                	lw	a4,0(a1)
  a2b8a8:	8702                	jr	a4
  a2b8aa:	8a05                	andi	a2,a2,1
  a2b8ac:	9bdd                	andi	a5,a5,-9
  a2b8ae:	06c7a79b          	orshf	a5,a5,a2,sll,3
  a2b8b2:	ce9c                	sw	a5,24(a3)
  a2b8b4:	8082                	ret
  a2b8b6:	8a05                	andi	a2,a2,1
  a2b8b8:	9bed                	andi	a5,a5,-5
  a2b8ba:	04c7a79b          	orshf	a5,a5,a2,sll,2
  a2b8be:	bfd5                	j	a2b8b2 <hal_uart_enable_interrupt+0x2a>
  a2b8c0:	8a05                	andi	a2,a2,1
  a2b8c2:	9bf9                	andi	a5,a5,-2
  a2b8c4:	8fd1                	or	a5,a5,a2
  a2b8c6:	b7f5                	j	a2b8b2 <hal_uart_enable_interrupt+0x2a>
  a2b8c8:	8a05                	andi	a2,a2,1
  a2b8ca:	9bf5                	andi	a5,a5,-3
  a2b8cc:	02c7a79b          	orshf	a5,a5,a2,sll,1
  a2b8d0:	b7cd                	j	a2b8b2 <hal_uart_enable_interrupt+0x2a>

00a2b8d2 <hal_uart_en_para_err_int>:
  a2b8d2:	8018                	push	{ra},-16
  a2b8d4:	00c03633          	snez	a2,a2
  a2b8d8:	45b5                	li	a1,13
  a2b8da:	377d                	jal	ra,a2b888 <hal_uart_enable_interrupt>
  a2b8dc:	4501                	li	a0,0
  a2b8de:	8014                	popret	{ra},16

00a2b8e0 <hal_uart_en_idle_int>:
  a2b8e0:	8018                	push	{ra},-16
  a2b8e2:	00c03633          	snez	a2,a2
  a2b8e6:	45b1                	li	a1,12
  a2b8e8:	3745                	jal	ra,a2b888 <hal_uart_enable_interrupt>
  a2b8ea:	4501                	li	a0,0
  a2b8ec:	8014                	popret	{ra},16

00a2b8ee <hal_uart_en_rx_int>:
  a2b8ee:	8018                	push	{ra},-16
  a2b8f0:	00c03633          	snez	a2,a2
  a2b8f4:	4591                	li	a1,4
  a2b8f6:	3f49                	jal	ra,a2b888 <hal_uart_enable_interrupt>
  a2b8f8:	4501                	li	a0,0
  a2b8fa:	8014                	popret	{ra},16

00a2b8fc <hal_uart_en_tx_int>:
  a2b8fc:	8018                	push	{ra},-16
  a2b8fe:	00c03633          	snez	a2,a2
  a2b902:	4589                	li	a1,2
  a2b904:	3751                	jal	ra,a2b888 <hal_uart_enable_interrupt>
  a2b906:	4501                	li	a0,0
  a2b908:	8014                	popret	{ra},16

00a2b90a <hal_uart_check_en>:
  a2b90a:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b910:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b914:	4118                	lw	a4,0(a0)
  a2b916:	8985                	andi	a1,a1,1
  a2b918:	471c                	lw	a5,8(a4)
  a2b91a:	fdf7f793          	andi	a5,a5,-33
  a2b91e:	0ab7a79b          	orshf	a5,a5,a1,sll,5
  a2b922:	c71c                	sw	a5,8(a4)
  a2b924:	8082                	ret

00a2b926 <hal_uart_parity_en>:
  a2b926:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b92c:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b930:	4118                	lw	a4,0(a0)
  a2b932:	8985                	andi	a1,a1,1
  a2b934:	471c                	lw	a5,8(a4)
  a2b936:	9bbd                	andi	a5,a5,-17
  a2b938:	08b7a79b          	orshf	a5,a5,a1,sll,4
  a2b93c:	c71c                	sw	a5,8(a4)
  a2b93e:	8082                	ret

00a2b940 <hal_uart_set_parity>:
  a2b940:	8028                	push	{ra,s0},-16
  a2b942:	842a                	mv	s0,a0
  a2b944:	0105873b          	beqi	a1,1,a2b960 <hal_uart_set_parity+0x20>
  a2b948:	c581                	beqz	a1,a2b950 <hal_uart_set_parity+0x10>
  a2b94a:	020582bb          	beqi	a1,2,a2b954 <hal_uart_set_parity+0x14>
  a2b94e:	8024                	popret	{ra,s0},16
  a2b950:	8020                	pop	{ra,s0},16
  a2b952:	bf65                	j	a2b90a <hal_uart_check_en>
  a2b954:	4585                	li	a1,1
  a2b956:	3f55                	jal	ra,a2b90a <hal_uart_check_en>
  a2b958:	4585                	li	a1,1
  a2b95a:	8522                	mv	a0,s0
  a2b95c:	8020                	pop	{ra,s0},16
  a2b95e:	b7e1                	j	a2b926 <hal_uart_parity_en>
  a2b960:	376d                	jal	ra,a2b90a <hal_uart_check_en>
  a2b962:	4581                	li	a1,0
  a2b964:	bfdd                	j	a2b95a <hal_uart_set_parity+0x1a>

00a2b966 <hal_uart_v151_ctrl_set_attr>:
  a2b966:	8138                	push	{ra,s0-s1},-32
  a2b968:	224c                	lbu	a1,4(a2)
  a2b96a:	84b2                	mv	s1,a2
  a2b96c:	842a                	mv	s0,a0
  a2b96e:	ec9ff0ef          	jal	ra,a2b836 <hal_uart_set_data_bits>
  a2b972:	30cc                	lbu	a1,5(s1)
  a2b974:	8522                	mv	a0,s0
  a2b976:	3de9                	jal	ra,a2b850 <hal_uart_set_stop_bits>
  a2b978:	20ec                	lbu	a1,6(s1)
  a2b97a:	8522                	mv	a0,s0
  a2b97c:	37d1                	jal	ra,a2b940 <hal_uart_set_parity>
  a2b97e:	408c                	lw	a1,0(s1)
  a2b980:	8522                	mv	a0,s0
  a2b982:	c62e                	sw	a1,12(sp)
  a2b984:	01b000ef          	jal	ra,a2c19e <uart_port_get_clock_value>
  a2b988:	45b2                	lw	a1,12(sp)
  a2b98a:	862a                	mv	a2,a0
  a2b98c:	8522                	mv	a0,s0
  a2b98e:	e63ff0ef          	jal	ra,a2b7f0 <hal_uart_set_baud_rate>
  a2b992:	4501                	li	a0,0
  a2b994:	8134                	popret	{ra,s0-s1},32

00a2b996 <hal_uart_tx_pause_en>:
  a2b996:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b99c:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b9a0:	4118                	lw	a4,0(a0)
  a2b9a2:	8985                	andi	a1,a1,1
  a2b9a4:	4b3c                	lw	a5,80(a4)
  a2b9a6:	9bf9                	andi	a5,a5,-2
  a2b9a8:	8fcd                	or	a5,a5,a1
  a2b9aa:	cb3c                	sw	a5,80(a4)
  a2b9ac:	8082                	ret

00a2b9ae <hal_uart_v151_init>:
  a2b9ae:	8168                	push	{ra,s0-s4},-48
  a2b9b0:	84b6                	mv	s1,a3
  a2b9b2:	00251913          	slli	s2,a0,0x2
  a2b9b6:	00a3 2770 069f      	l.li	a3,0xa32770
  a2b9bc:	8a2e                	mv	s4,a1
  a2b9be:	012685b3          	add	a1,a3,s2
  a2b9c2:	418c                	lw	a1,0(a1)
  a2b9c4:	4294                	lw	a3,0(a3)
  a2b9c6:	89ba                	mv	s3,a4
  a2b9c8:	00a0 5768 071f      	l.li	a4,0xa05768
  a2b9ce:	01270633          	add	a2,a4,s2
  a2b9d2:	c20c                	sw	a1,0(a2)
  a2b9d4:	c314                	sw	a3,0(a4)
  a2b9d6:	20cc                	lbu	a1,4(s1)
  a2b9d8:	00a0 5764 071f      	l.li	a4,0xa05764
  a2b9de:	972a                	add	a4,a4,a0
  a2b9e0:	c63e                	sw	a5,12(sp)
  a2b9e2:	00070023          	sb	zero,0(a4)
  a2b9e6:	842a                	mv	s0,a0
  a2b9e8:	e4fff0ef          	jal	ra,a2b836 <hal_uart_set_data_bits>
  a2b9ec:	30cc                	lbu	a1,5(s1)
  a2b9ee:	8522                	mv	a0,s0
  a2b9f0:	e61ff0ef          	jal	ra,a2b850 <hal_uart_set_stop_bits>
  a2b9f4:	20ec                	lbu	a1,6(s1)
  a2b9f6:	8522                	mv	a0,s0
  a2b9f8:	37a1                	jal	ra,a2b940 <hal_uart_set_parity>
  a2b9fa:	4581                	li	a1,0
  a2b9fc:	8522                	mv	a0,s0
  a2b9fe:	3f61                	jal	ra,a2b996 <hal_uart_tx_pause_en>
  a2ba00:	408c                	lw	a1,0(s1)
  a2ba02:	8522                	mv	a0,s0
  a2ba04:	c42e                	sw	a1,8(sp)
  a2ba06:	798000ef          	jal	ra,a2c19e <uart_port_get_clock_value>
  a2ba0a:	45a2                	lw	a1,8(sp)
  a2ba0c:	862a                	mv	a2,a0
  a2ba0e:	8522                	mv	a0,s0
  a2ba10:	de1ff0ef          	jal	ra,a2b7f0 <hal_uart_set_baud_rate>
  a2ba14:	4529                	li	a0,10
  a2ba16:	973fe0ef          	jal	ra,a2a388 <uapi_tcxo_delay_us>
  a2ba1a:	47b2                	lw	a5,12(sp)
  a2ba1c:	c78d                	beqz	a5,a2ba46 <hal_uart_v151_init+0x98>
  a2ba1e:	3390                	lbu	a2,1(a5)
  a2ba20:	33ac                	lbu	a1,3(a5)
  a2ba22:	8522                	mv	a0,s0
  a2ba24:	d4fff0ef          	jal	ra,a2b772 <hal_uart_init_fifo>
  a2ba28:	00a0 5758 079f      	l.li	a5,0xa05758
  a2ba2e:	97ca                	add	a5,a5,s2
  a2ba30:	0147a023          	sw	s4,0(a5)
  a2ba34:	4585                	li	a1,1
  a2ba36:	030981bb          	beqi	s3,3,a2ba3c <hal_uart_v151_init+0x8e>
  a2ba3a:	4581                	li	a1,0
  a2ba3c:	8522                	mv	a0,s0
  a2ba3e:	e2fff0ef          	jal	ra,a2b86c <hal_uart_auto_flow_ctl_en>
  a2ba42:	4501                	li	a0,0
  a2ba44:	8164                	popret	{ra,s0-s4},48
  a2ba46:	4605                	li	a2,1
  a2ba48:	4585                	li	a1,1
  a2ba4a:	bfe1                	j	a2ba22 <hal_uart_v151_init+0x74>

00a2ba4c <hal_uart_v151_funcs_get>:
  a2ba4c:	00a3 3ee8 051f      	l.li	a0,0xa33ee8
  a2ba52:	8082                	ret

00a2ba54 <hal_watchdog_register_funcs>:
  a2ba54:	c519                	beqz	a0,a2ba62 <hal_watchdog_register_funcs+0xe>
  a2ba56:	00a0 577c 079f      	l.li	a5,0xa0577c
  a2ba5c:	c388                	sw	a0,0(a5)
  a2ba5e:	4501                	li	a0,0
  a2ba60:	8082                	ret
  a2ba62:	80000537          	lui	a0,0x80000
  a2ba66:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2ba68:	8082                	ret

00a2ba6a <hal_watchdog_unregister_funcs>:
  a2ba6a:	00a0 577c 079f      	l.li	a5,0xa0577c
  a2ba70:	0007a023          	sw	zero,0(a5)
  a2ba74:	4501                	li	a0,0
  a2ba76:	8082                	ret

00a2ba78 <hal_watchdog_get_funcs>:
  a2ba78:	00a0 577c 079f      	l.li	a5,0xa0577c
  a2ba7e:	4388                	lw	a0,0(a5)
  a2ba80:	8082                	ret

00a2ba82 <hal_watchdog_regs_init>:
  a2ba82:	00a347b7          	lui	a5,0xa34
  a2ba86:	f807a783          	lw	a5,-128(a5) # a33f80 <g_watchdog_base_addr>
  a2ba8a:	c799                	beqz	a5,a2ba98 <hal_watchdog_regs_init+0x16>
  a2ba8c:	00a0 5780 071f      	l.li	a4,0xa05780
  a2ba92:	c31c                	sw	a5,0(a4)
  a2ba94:	4501                	li	a0,0
  a2ba96:	8082                	ret
  a2ba98:	8000 1200 051f      	l.li	a0,0x80001200
  a2ba9e:	8082                	ret

00a2baa0 <hal_watchdog_regs_deinit>:
  a2baa0:	00a0 5780 079f      	l.li	a5,0xa05780
  a2baa6:	0007a023          	sw	zero,0(a5)
  a2baaa:	8082                	ret

00a2baac <hal_watchdog_v151_kick>:
  a2baac:	00a057b7          	lui	a5,0xa05
  a2bab0:	7807a783          	lw	a5,1920(a5) # a05780 <g_watchdog_regs>
  a2bab4:	5a5a 5a5a 071f      	l.li	a4,0x5a5a5a5a
  a2baba:	c798                	sw	a4,8(a5)
  a2babc:	8082                	ret

00a2babe <hal_watchdog_v151_get_attr>:
  a2babe:	00a0 5788 079f      	l.li	a5,0xa05788
  a2bac4:	4388                	lw	a0,0(a5)
  a2bac6:	8082                	ret

00a2bac8 <hal_register_watchdog_v151_callback>:
  a2bac8:	00a0 5784 079f      	l.li	a5,0xa05784
  a2bace:	c388                	sw	a0,0(a5)
  a2bad0:	8082                	ret

00a2bad2 <hal_watchdog_v151_deinit>:
  a2bad2:	b7f9                	j	a2baa0 <hal_watchdog_regs_deinit>

00a2bad4 <hal_watchdog_v151_init>:
  a2bad4:	b77d                	j	a2ba82 <hal_watchdog_regs_init>

00a2bad6 <hal_watchdog_v151_get_left_time>:
  a2bad6:	8038                	push	{ra,s0-s1},-16
  a2bad8:	00a057b7          	lui	a5,0xa05
  a2badc:	7807a683          	lw	a3,1920(a5) # a05780 <g_watchdog_regs>
  a2bae0:	7d100493          	li	s1,2001
  a2bae4:	843e                	mv	s0,a5
  a2bae6:	5698                	lw	a4,40(a3)
  a2bae8:	00176713          	ori	a4,a4,1
  a2baec:	d698                	sw	a4,40(a3)
  a2baee:	78042703          	lw	a4,1920(s0)
  a2baf2:	571c                	lw	a5,40(a4)
  a2baf4:	8385                	srli	a5,a5,0x1
  a2baf6:	8b85                	andi	a5,a5,1
  a2baf8:	cf99                	beqz	a5,a2bb16 <hal_watchdog_v151_get_left_time+0x40>
  a2bafa:	4b40                	lw	s0,20(a4)
  a2bafc:	758000ef          	jal	ra,a2c254 <watchdog_port_get_clock>
  a2bb00:	3e800793          	li	a5,1000
  a2bb04:	862a                	mv	a2,a0
  a2bb06:	02f435b3          	mulhu	a1,s0,a5
  a2bb0a:	4681                	li	a3,0
  a2bb0c:	02f40533          	mul	a0,s0,a5
  a2bb10:	a8dfc0ef          	jal	ra,a2859c <__udivdi3>
  a2bb14:	8034                	popret	{ra,s0-s1},16
  a2bb16:	14fd                	addi	s1,s1,-1
  a2bb18:	c489                	beqz	s1,a2bb22 <hal_watchdog_v151_get_left_time+0x4c>
  a2bb1a:	4505                	li	a0,1
  a2bb1c:	86dfe0ef          	jal	ra,a2a388 <uapi_tcxo_delay_us>
  a2bb20:	b7f9                	j	a2baee <hal_watchdog_v151_get_left_time+0x18>
  a2bb22:	4501                	li	a0,0
  a2bb24:	bfc5                	j	a2bb14 <hal_watchdog_v151_get_left_time+0x3e>

00a2bb26 <hal_watchdog_v151_clear_interrupt>:
  a2bb26:	00a057b7          	lui	a5,0xa05
  a2bb2a:	7807a703          	lw	a4,1920(a5) # a05780 <g_watchdog_regs>
  a2bb2e:	475c                	lw	a5,12(a4)
  a2bb30:	0017e793          	ori	a5,a5,1
  a2bb34:	c75c                	sw	a5,12(a4)
  a2bb36:	8082                	ret

00a2bb38 <hal_watchdog_v151_disable>:
  a2bb38:	8018                	push	{ra},-16
  a2bb3a:	37f5                	jal	ra,a2bb26 <hal_watchdog_v151_clear_interrupt>
  a2bb3c:	00a057b7          	lui	a5,0xa05
  a2bb40:	7807a703          	lw	a4,1920(a5) # a05780 <g_watchdog_regs>
  a2bb44:	4b1c                	lw	a5,16(a4)
  a2bb46:	9bf9                	andi	a5,a5,-2
  a2bb48:	cb1c                	sw	a5,16(a4)
  a2bb4a:	8014                	popret	{ra},16

00a2bb4c <hal_watchdog_v151_set_attr>:
  a2bb4c:	8048                	push	{ra,s0-s2},-16
  a2bb4e:	84aa                	mv	s1,a0
  a2bb50:	704000ef          	jal	ra,a2c254 <watchdog_port_get_clock>
  a2bb54:	e489                	bnez	s1,a2bb5e <hal_watchdog_v151_set_attr+0x12>
  a2bb56:	80000537          	lui	a0,0x80000
  a2bb5a:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2bb5c:	8044                	popret	{ra,s0-s2},16
  a2bb5e:	02950433          	mul	s0,a0,s1
  a2bb62:	02945933          	divu	s2,s0,s1
  a2bb66:	6ee000ef          	jal	ra,a2c254 <watchdog_port_get_clock>
  a2bb6a:	fea916e3          	bne	s2,a0,a2bb56 <hal_watchdog_v151_set_attr+0xa>
  a2bb6e:	fff46a3b          	bltui	s0,255,a2bb56 <hal_watchdog_v151_set_attr+0xa>
  a2bb72:	00a0 5788 079f      	l.li	a5,0xa05788
  a2bb78:	00a05937          	lui	s2,0xa05
  a2bb7c:	c384                	sw	s1,0(a5)
  a2bb7e:	78092783          	lw	a5,1920(s2) # a05780 <g_watchdog_regs>
  a2bb82:	5a5a 5a5a 049f      	l.li	s1,0x5a5a5a5a
  a2bb88:	f0047413          	andi	s0,s0,-256
  a2bb8c:	c384                	sw	s1,0(a5)
  a2bb8e:	376d                	jal	ra,a2bb38 <hal_watchdog_v151_disable>
  a2bb90:	78092783          	lw	a5,1920(s2)
  a2bb94:	4b98                	lw	a4,16(a5)
  a2bb96:	00476713          	ori	a4,a4,4
  a2bb9a:	cb98                	sw	a4,16(a5)
  a2bb9c:	4b98                	lw	a4,16(a5)
  a2bb9e:	fbf77713          	andi	a4,a4,-65
  a2bba2:	cb98                	sw	a4,16(a5)
  a2bba4:	4b98                	lw	a4,16(a5)
  a2bba6:	03876713          	ori	a4,a4,56
  a2bbaa:	cb98                	sw	a4,16(a5)
  a2bbac:	43c8                	lw	a0,4(a5)
  a2bbae:	0ff57513          	andi	a0,a0,255
  a2bbb2:	8c49                	or	s0,s0,a0
  a2bbb4:	c3c0                	sw	s0,4(a5)
  a2bbb6:	c784                	sw	s1,8(a5)
  a2bbb8:	4501                	li	a0,0
  a2bbba:	b74d                	j	a2bb5c <hal_watchdog_v151_set_attr+0x10>

00a2bbbc <hal_watchdog_v151_enable>:
  a2bbbc:	8128                	push	{ra,s0},-32
  a2bbbe:	c62a                	sw	a0,12(sp)
  a2bbc0:	3fa5                	jal	ra,a2bb38 <hal_watchdog_v151_disable>
  a2bbc2:	4532                	lw	a0,12(sp)
  a2bbc4:	00a05437          	lui	s0,0xa05
  a2bbc8:	e10d                	bnez	a0,a2bbea <hal_watchdog_v151_enable+0x2e>
  a2bbca:	78042703          	lw	a4,1920(s0) # a05780 <g_watchdog_regs>
  a2bbce:	4b1c                	lw	a5,16(a4)
  a2bbd0:	f7f7f793          	andi	a5,a5,-129
  a2bbd4:	cb1c                	sw	a5,16(a4)
  a2bbd6:	3f81                	jal	ra,a2bb26 <hal_watchdog_v151_clear_interrupt>
  a2bbd8:	78042703          	lw	a4,1920(s0)
  a2bbdc:	4b1c                	lw	a5,16(a4)
  a2bbde:	0017e793          	ori	a5,a5,1
  a2bbe2:	cb1c                	sw	a5,16(a4)
  a2bbe4:	8120                	pop	{ra,s0},32
  a2bbe6:	ec7ff06f          	j	a2baac <hal_watchdog_v151_kick>
  a2bbea:	01f51b3b          	bnei	a0,1,a2bbd6 <hal_watchdog_v151_enable+0x1a>
  a2bbee:	78042703          	lw	a4,1920(s0)
  a2bbf2:	4b1c                	lw	a5,16(a4)
  a2bbf4:	0807e793          	ori	a5,a5,128
  a2bbf8:	bff1                	j	a2bbd4 <hal_watchdog_v151_enable+0x18>

00a2bbfa <hal_watchdog_v151_funcs_get>:
  a2bbfa:	00a3 3f00 051f      	l.li	a0,0xa33f00
  a2bc00:	8082                	ret

00a2bc02 <hal_sfc_regs_init>:
  a2bc02:	8058                	push	{ra,s0-s3},-32
  a2bc04:	2561                	jal	ra,a2c28c <sfc_port_get_sfc_global_conf_base_addr>
  a2bc06:	00a0 579c 099f      	l.li	s3,0xa0579c
  a2bc0c:	00a9a023          	sw	a0,0(s3)
  a2bc10:	00a0 5790 091f      	l.li	s2,0xa05790
  a2bc16:	2dbd                	jal	ra,a2c294 <sfc_port_get_sfc_bus_regs_base_addr>
  a2bc18:	00a92023          	sw	a0,0(s2)
  a2bc1c:	00a0 578c 049f      	l.li	s1,0xa0578c
  a2bc22:	2dad                	jal	ra,a2c29c <sfc_port_get_sfc_bus_dma_regs_base_addr>
  a2bc24:	c088                	sw	a0,0(s1)
  a2bc26:	00a0 5798 041f      	l.li	s0,0xa05798
  a2bc2c:	2da5                	jal	ra,a2c2a4 <sfc_port_get_sfc_cmd_regs_base_addr>
  a2bc2e:	c008                	sw	a0,0(s0)
  a2bc30:	2db5                	jal	ra,a2c2ac <sfc_port_get_sfc_cmd_databuf_base_addr>
  a2bc32:	00a0 5794 079f      	l.li	a5,0xa05794
  a2bc38:	c388                	sw	a0,0(a5)
  a2bc3a:	0009a783          	lw	a5,0(s3)
  a2bc3e:	cb99                	beqz	a5,a2bc54 <hal_sfc_regs_init+0x52>
  a2bc40:	00092783          	lw	a5,0(s2)
  a2bc44:	cb81                	beqz	a5,a2bc54 <hal_sfc_regs_init+0x52>
  a2bc46:	409c                	lw	a5,0(s1)
  a2bc48:	c791                	beqz	a5,a2bc54 <hal_sfc_regs_init+0x52>
  a2bc4a:	401c                	lw	a5,0(s0)
  a2bc4c:	c781                	beqz	a5,a2bc54 <hal_sfc_regs_init+0x52>
  a2bc4e:	c119                	beqz	a0,a2bc54 <hal_sfc_regs_init+0x52>
  a2bc50:	4501                	li	a0,0
  a2bc52:	8054                	popret	{ra,s0-s3},32
  a2bc54:	8000 1343 051f      	l.li	a0,0x80001343
  a2bc5a:	bfe5                	j	a2bc52 <hal_sfc_regs_init+0x50>

00a2bc5c <hal_sfc_regs_set_cmd_addr>:
  a2bc5c:	00a057b7          	lui	a5,0xa05
  a2bc60:	7987a683          	lw	a3,1944(a5) # a05798 <g_sfc_cmd_regs>
  a2bc64:	3fff ffff 071f      	l.li	a4,0x3fffffff
  a2bc6a:	8d79                	and	a0,a0,a4
  a2bc6c:	46dc                	lw	a5,12(a3)
  a2bc6e:	c0000737          	lui	a4,0xc0000
  a2bc72:	8ff9                	and	a5,a5,a4
  a2bc74:	8fc9                	or	a5,a5,a0
  a2bc76:	c6dc                	sw	a5,12(a3)
  a2bc78:	8082                	ret

00a2bc7a <hal_sfc_regs_wait_ready.constprop.3>:
  a2bc7a:	8158                	push	{ra,s0-s3},-48
  a2bc7c:	2589                	jal	ra,a2c2be <sfc_port_get_delay_times>
  a2bc7e:	84aa                	mv	s1,a0
  a2bc80:	2d15                	jal	ra,a2c2b4 <sfc_port_get_delay_once_time>
  a2bc82:	4792                	lw	a5,4(sp)
  a2bc84:	ffff c7ff 071f      	l.li	a4,0xffffc7ff
  a2bc8a:	892a                	mv	s2,a0
  a2bc8c:	8077f793          	andi	a5,a5,-2041
  a2bc90:	0287e793          	ori	a5,a5,40
  a2bc94:	8ff9                	and	a5,a5,a4
  a2bc96:	c23e                	sw	a5,4(sp)
  a2bc98:	4785                	li	a5,1
  a2bc9a:	c43e                	sw	a5,8(sp)
  a2bc9c:	c602                	sw	zero,12(sp)
  a2bc9e:	4401                	li	s0,0
  a2bca0:	00a059b7          	lui	s3,0xa05
  a2bca4:	0048                	addi	a0,sp,4
  a2bca6:	26b5                	jal	ra,a2c012 <hal_sfc_regs_set_opt>
  a2bca8:	4601                	li	a2,0
  a2bcaa:	4585                	li	a1,1
  a2bcac:	4505                	li	a0,1
  a2bcae:	2e71                	jal	ra,a2c04a <hal_sfc_regs_set_opt_attr>
  a2bcb0:	26e1                	jal	ra,a2c078 <hal_sfc_regs_wait_config>
  a2bcb2:	7949a783          	lw	a5,1940(s3) # a05794 <g_sfc_cmd_databuf>
  a2bcb6:	439c                	lw	a5,0(a5)
  a2bcb8:	8b85                	andi	a5,a5,1
  a2bcba:	cf91                	beqz	a5,a2bcd6 <hal_sfc_regs_wait_ready.constprop.3+0x5c>
  a2bcbc:	854a                	mv	a0,s2
  a2bcbe:	ecafe0ef          	jal	ra,a2a388 <uapi_tcxo_delay_us>
  a2bcc2:	00140793          	addi	a5,s0,1
  a2bcc6:	00946663          	bltu	s0,s1,a2bcd2 <hal_sfc_regs_wait_ready.constprop.3+0x58>
  a2bcca:	8000 1344 051f      	l.li	a0,0x80001344
  a2bcd0:	8154                	popret	{ra,s0-s3},48
  a2bcd2:	843e                	mv	s0,a5
  a2bcd4:	bfc1                	j	a2bca4 <hal_sfc_regs_wait_ready.constprop.3+0x2a>
  a2bcd6:	4501                	li	a0,0
  a2bcd8:	bfe5                	j	a2bcd0 <hal_sfc_regs_wait_ready.constprop.3+0x56>

00a2bcda <hal_sfc_execute_type_cmd>:
  a2bcda:	8148                	push	{ra,s0-s2},-32
  a2bcdc:	219c                	lbu	a5,0(a1)
  a2bcde:	842a                	mv	s0,a0
  a2bce0:	892e                	mv	s2,a1
  a2bce2:	078e                	slli	a5,a5,0x3
  a2bce4:	0017e793          	ori	a5,a5,1
  a2bce8:	c23e                	sw	a5,4(sp)
  a2bcea:	fff50793          	addi	a5,a0,-1
  a2bcee:	c43e                	sw	a5,8(sp)
  a2bcf0:	c602                	sw	zero,12(sp)
  a2bcf2:	3761                	jal	ra,a2bc7a <hal_sfc_regs_wait_ready.constprop.3>
  a2bcf4:	84aa                	mv	s1,a0
  a2bcf6:	e50d                	bnez	a0,a2bd20 <hal_sfc_execute_type_cmd+0x46>
  a2bcf8:	0048                	addi	a0,sp,4
  a2bcfa:	2e21                	jal	ra,a2c012 <hal_sfc_regs_set_opt>
  a2bcfc:	4785                	li	a5,1
  a2bcfe:	c002                	sw	zero,0(sp)
  a2bd00:	0287e263          	bltu	a5,s0,a2bd24 <hal_sfc_execute_type_cmd+0x4a>
  a2bd04:	00a057b7          	lui	a5,0xa05
  a2bd08:	7947a783          	lw	a5,1940(a5) # a05794 <g_sfc_cmd_databuf>
  a2bd0c:	4702                	lw	a4,0(sp)
  a2bd0e:	00243593          	sltiu	a1,s0,2
  a2bd12:	4601                	li	a2,0
  a2bd14:	c398                	sw	a4,0(a5)
  a2bd16:	0015c593          	xori	a1,a1,1
  a2bd1a:	4501                	li	a0,0
  a2bd1c:	263d                	jal	ra,a2c04a <hal_sfc_regs_set_opt_attr>
  a2bd1e:	2ea9                	jal	ra,a2c078 <hal_sfc_regs_wait_config>
  a2bd20:	8526                	mv	a0,s1
  a2bd22:	8144                	popret	{ra,s0-s2},32
  a2bd24:	00f906b3          	add	a3,s2,a5
  a2bd28:	2294                	lbu	a3,0(a3)
  a2bd2a:	00f10733          	add	a4,sp,a5
  a2bd2e:	0785                	addi	a5,a5,1
  a2bd30:	fed70fa3          	sb	a3,-1(a4) # bfffffff <_gp_+0xbf5cb7eb>
  a2bd34:	b7f1                	j	a2bd00 <hal_sfc_execute_type_cmd+0x26>

00a2bd36 <hal_sfc_write_enable>:
  a2bd36:	8118                	push	{ra},-32
  a2bd38:	f43ff0ef          	jal	ra,a2bc7a <hal_sfc_regs_wait_ready.constprop.3>
  a2bd3c:	4799                	li	a5,6
  a2bd3e:	006c                	addi	a1,sp,12
  a2bd40:	4505                	li	a0,1
  a2bd42:	00f10623          	sb	a5,12(sp)
  a2bd46:	f95ff0ef          	jal	ra,a2bcda <hal_sfc_execute_type_cmd>
  a2bd4a:	e119                	bnez	a0,a2bd50 <hal_sfc_write_enable+0x1a>
  a2bd4c:	f2fff0ef          	jal	ra,a2bc7a <hal_sfc_regs_wait_ready.constprop.3>
  a2bd50:	8114                	popret	{ra},32

00a2bd52 <hal_sfc_reg_write_once>:
  a2bd52:	8648                	push	{ra,s0-s2},-112
  a2bd54:	c636                	sw	a3,12(sp)
  a2bd56:	892a                	mv	s2,a0
  a2bd58:	84ae                	mv	s1,a1
  a2bd5a:	8432                	mv	s0,a2
  a2bd5c:	3fe9                	jal	ra,a2bd36 <hal_sfc_write_enable>
  a2bd5e:	87aa                	mv	a5,a0
  a2bd60:	46b2                	lw	a3,12(sp)
  a2bd62:	e939                	bnez	a0,a2bdb8 <hal_sfc_reg_write_once+0x66>
  a2bd64:	ca36                	sw	a3,20(sp)
  a2bd66:	0848                	addi	a0,sp,20
  a2bd68:	82b9                	srli	a3,a3,0xe
  a2bd6a:	ce36                	sw	a3,28(sp)
  a2bd6c:	cc22                	sw	s0,24(sp)
  a2bd6e:	2455                	jal	ra,a2c012 <hal_sfc_regs_set_opt>
  a2bd70:	854a                	mv	a0,s2
  a2bd72:	eebff0ef          	jal	ra,a2bc5c <hal_sfc_regs_set_cmd_addr>
  a2bd76:	86a2                	mv	a3,s0
  a2bd78:	8626                	mv	a2,s1
  a2bd7a:	04000593          	li	a1,64
  a2bd7e:	1008                	addi	a0,sp,32
  a2bd80:	51b040ef          	jal	ra,a30a9a <memcpy_s>
  a2bd84:	57fd                	li	a5,-1
  a2bd86:	e90d                	bnez	a0,a2bdb8 <hal_sfc_reg_write_once+0x66>
  a2bd88:	00347613          	andi	a2,s0,3
  a2bd8c:	00c03633          	snez	a2,a2
  a2bd90:	4486061b          	addshf	a2,a2,s0,srl,2
  a2bd94:	9e21                	uxth	a2
  a2bd96:	101c                	addi	a5,sp,32
  a2bd98:	4701                	li	a4,0
  a2bd9a:	00a055b7          	lui	a1,0xa05
  a2bd9e:	01071693          	slli	a3,a4,0x10
  a2bda2:	82c1                	srli	a3,a3,0x10
  a2bda4:	00c6ec63          	bltu	a3,a2,a2bdbc <hal_sfc_reg_write_once+0x6a>
  a2bda8:	4605                	li	a2,1
  a2bdaa:	4585                	li	a1,1
  a2bdac:	4501                	li	a0,0
  a2bdae:	2c71                	jal	ra,a2c04a <hal_sfc_regs_set_opt_attr>
  a2bdb0:	24e1                	jal	ra,a2c078 <hal_sfc_regs_wait_config>
  a2bdb2:	ec9ff0ef          	jal	ra,a2bc7a <hal_sfc_regs_wait_ready.constprop.3>
  a2bdb6:	87aa                	mv	a5,a0
  a2bdb8:	853e                	mv	a0,a5
  a2bdba:	8644                	popret	{ra,s0-s2},112
  a2bdbc:	7945a683          	lw	a3,1940(a1) # a05794 <g_sfc_cmd_databuf>
  a2bdc0:	4388                	lw	a0,0(a5)
  a2bdc2:	0791                	addi	a5,a5,4
  a2bdc4:	04e6869b          	addshf	a3,a3,a4,sll,2
  a2bdc8:	c288                	sw	a0,0(a3)
  a2bdca:	0705                	addi	a4,a4,1
  a2bdcc:	bfc9                	j	a2bd9e <hal_sfc_reg_write_once+0x4c>

00a2bdce <hal_sfc_get_flash_id>:
  a2bdce:	8128                	push	{ra,s0},-32
  a2bdd0:	842a                	mv	s0,a0
  a2bdd2:	e31ff0ef          	jal	ra,a2bc02 <hal_sfc_regs_init>
  a2bdd6:	ea5ff0ef          	jal	ra,a2bc7a <hal_sfc_regs_wait_ready.constprop.3>
  a2bdda:	e91d                	bnez	a0,a2be10 <hal_sfc_get_flash_id+0x42>
  a2bddc:	4631                	li	a2,12
  a2bdde:	00a3 14a8 059f      	l.li	a1,0xa314a8
  a2bde4:	0048                	addi	a0,sp,4
  a2bde6:	c6dfc0ef          	jal	ra,a28a52 <memcpy>
  a2bdea:	0048                	addi	a0,sp,4
  a2bdec:	241d                	jal	ra,a2c012 <hal_sfc_regs_set_opt>
  a2bdee:	4601                	li	a2,0
  a2bdf0:	4585                	li	a1,1
  a2bdf2:	4505                	li	a0,1
  a2bdf4:	2c99                	jal	ra,a2c04a <hal_sfc_regs_set_opt_attr>
  a2bdf6:	2449                	jal	ra,a2c078 <hal_sfc_regs_wait_config>
  a2bdf8:	00a057b7          	lui	a5,0xa05
  a2bdfc:	7947a783          	lw	a5,1940(a5) # a05794 <g_sfc_cmd_databuf>
  a2be00:	00ff ffff 071f      	l.li	a4,0xffffff
  a2be06:	439c                	lw	a5,0(a5)
  a2be08:	8ff9                	and	a5,a5,a4
  a2be0a:	c01c                	sw	a5,0(s0)
  a2be0c:	e6fff0ef          	jal	ra,a2bc7a <hal_sfc_regs_wait_ready.constprop.3>
  a2be10:	8124                	popret	{ra,s0},32

00a2be12 <hal_sfc_init>:
  a2be12:	67c1                	lui	a5,0x10
  a2be14:	0cf66c63          	bltu	a2,a5,a2beec <hal_sfc_init+0xda>
  a2be18:	8198                	push	{ra,s0-s7},-64
  a2be1a:	4940                	lw	s0,20(a0)
  a2be1c:	84b2                	mv	s1,a2
  a2be1e:	89ae                	mv	s3,a1
  a2be20:	892a                	mv	s2,a0
  a2be22:	4a05                	li	s4,1
  a2be24:	00a05ab7          	lui	s5,0xa05
  a2be28:	e025                	bnez	s0,a2be88 <hal_sfc_init+0x76>
  a2be2a:	00a057b7          	lui	a5,0xa05
  a2be2e:	7907a683          	lw	a3,1936(a5) # a05790 <g_sfc_bus_regs>
  a2be32:	0109d993          	srli	s3,s3,0x10
  a2be36:	00f4d613          	srli	a2,s1,0xf
  a2be3a:	4e9c                	lw	a5,24(a3)
  a2be3c:	4701                	li	a4,0
  a2be3e:	01079593          	slli	a1,a5,0x10
  a2be42:	81c1                	srli	a1,a1,0x10
  a2be44:	2135a59b          	orshf	a1,a1,s3,sll,16
  a2be48:	ce8c                	sw	a1,24(a3)
  a2be4a:	00167793          	andi	a5,a2,1
  a2be4e:	cfc1                	beqz	a5,a2bee6 <hal_sfc_init+0xd4>
  a2be50:	4a9c                	lw	a5,16(a3)
  a2be52:	ffff f0ff 061f      	l.li	a2,0xfffff0ff
  a2be58:	8b3d                	andi	a4,a4,15
  a2be5a:	8ff1                	and	a5,a5,a2
  a2be5c:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a2be60:	ca9c                	sw	a5,16(a3)
  a2be62:	00492503          	lw	a0,4(s2)
  a2be66:	240d                	jal	ra,a2c088 <hal_sfc_regs_set_bus_read>
  a2be68:	00c92503          	lw	a0,12(s2)
  a2be6c:	7f857793          	andi	a5,a0,2040
  a2be70:	c391                	beqz	a5,a2be74 <hal_sfc_init+0x62>
  a2be72:	2c89                	jal	ra,a2c0c4 <hal_sfc_regs_set_bus_write>
  a2be74:	00a057b7          	lui	a5,0xa05
  a2be78:	79c7a783          	lw	a5,1948(a5) # a0579c <g_sfc_global_conf_regs>
  a2be7c:	4705                	li	a4,1
  a2be7e:	cb98                	sw	a4,16(a5)
  a2be80:	dfbff0ef          	jal	ra,a2bc7a <hal_sfc_regs_wait_ready.constprop.3>
  a2be84:	4501                	li	a0,0
  a2be86:	a00d                	j	a2bea8 <hal_sfc_init+0x96>
  a2be88:	201c                	lbu	a5,0(s0)
  a2be8a:	03478063          	beq	a5,s4,a2beaa <hal_sfc_init+0x98>
  a2be8e:	c799                	beqz	a5,a2be9c <hal_sfc_init+0x8a>
  a2be90:	02e786bb          	beqi	a5,2,a2be2a <hal_sfc_init+0x18>
  a2be94:	8000 1345 051f      	l.li	a0,0x80001345
  a2be9a:	a039                	j	a2bea8 <hal_sfc_init+0x96>
  a2be9c:	3008                	lbu	a0,1(s0)
  a2be9e:	00240593          	addi	a1,s0,2
  a2bea2:	e39ff0ef          	jal	ra,a2bcda <hal_sfc_execute_type_cmd>
  a2bea6:	cd15                	beqz	a0,a2bee2 <hal_sfc_init+0xd0>
  a2bea8:	8194                	popret	{ra,s0-s7},64
  a2beaa:	2038                	lbu	a4,2(s0)
  a2beac:	00344b83          	lbu	s7,3(s0)
  a2beb0:	00444b03          	lbu	s6,4(s0)
  a2beb4:	070e                	slli	a4,a4,0x3
  a2beb6:	00176713          	ori	a4,a4,1
  a2beba:	c23a                	sw	a4,4(sp)
  a2bebc:	c452                	sw	s4,8(sp)
  a2bebe:	c602                	sw	zero,12(sp)
  a2bec0:	dbbff0ef          	jal	ra,a2bc7a <hal_sfc_regs_wait_ready.constprop.3>
  a2bec4:	0048                	addi	a0,sp,4
  a2bec6:	22b1                	jal	ra,a2c012 <hal_sfc_regs_set_opt>
  a2bec8:	4601                	li	a2,0
  a2beca:	4585                	li	a1,1
  a2becc:	4505                	li	a0,1
  a2bece:	2ab5                	jal	ra,a2c04a <hal_sfc_regs_set_opt_attr>
  a2bed0:	2265                	jal	ra,a2c078 <hal_sfc_regs_wait_config>
  a2bed2:	794aa783          	lw	a5,1940(s5) # a05794 <g_sfc_cmd_databuf>
  a2bed6:	439c                	lw	a5,0(a5)
  a2bed8:	0177d7b3          	srl	a5,a5,s7
  a2bedc:	8b85                	andi	a5,a5,1
  a2bede:	fb679be3          	bne	a5,s6,a2be94 <hal_sfc_init+0x82>
  a2bee2:	0419                	addi	s0,s0,6
  a2bee4:	b791                	j	a2be28 <hal_sfc_init+0x16>
  a2bee6:	8205                	srli	a2,a2,0x1
  a2bee8:	0705                	addi	a4,a4,1
  a2beea:	b785                	j	a2be4a <hal_sfc_init+0x38>
  a2beec:	80000537          	lui	a0,0x80000
  a2bef0:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2bef2:	8082                	ret

00a2bef4 <hal_sfc_reg_read>:
  a2bef4:	8588                	push	{ra,s0-s6},-112
  a2bef6:	89aa                	mv	s3,a0
  a2bef8:	8a2e                	mv	s4,a1
  a2befa:	84b2                	mv	s1,a2
  a2befc:	04000413          	li	s0,64
  a2bf00:	00e6da93          	srli	s5,a3,0xe
  a2bf04:	8936                	mv	s2,a3
  a2bf06:	00a05b37          	lui	s6,0xa05
  a2bf0a:	e099                	bnez	s1,a2bf10 <hal_sfc_reg_read+0x1c>
  a2bf0c:	4501                	li	a0,0
  a2bf0e:	a8a1                	j	a2bf66 <hal_sfc_reg_read+0x72>
  a2bf10:	d6bff0ef          	jal	ra,a2bc7a <hal_sfc_regs_wait_ready.constprop.3>
  a2bf14:	e929                	bnez	a0,a2bf66 <hal_sfc_reg_read+0x72>
  a2bf16:	0084f363          	bgeu	s1,s0,a2bf1c <hal_sfc_reg_read+0x28>
  a2bf1a:	8426                	mv	s0,s1
  a2bf1c:	0048                	addi	a0,sp,4
  a2bf1e:	c24a                	sw	s2,4(sp)
  a2bf20:	c422                	sw	s0,8(sp)
  a2bf22:	c656                	sw	s5,12(sp)
  a2bf24:	20fd                	jal	ra,a2c012 <hal_sfc_regs_set_opt>
  a2bf26:	854e                	mv	a0,s3
  a2bf28:	d35ff0ef          	jal	ra,a2bc5c <hal_sfc_regs_set_cmd_addr>
  a2bf2c:	4605                	li	a2,1
  a2bf2e:	4505                	li	a0,1
  a2bf30:	4585                	li	a1,1
  a2bf32:	2a21                	jal	ra,a2c04a <hal_sfc_regs_set_opt_attr>
  a2bf34:	2291                	jal	ra,a2c078 <hal_sfc_regs_wait_config>
  a2bf36:	00347793          	andi	a5,s0,3
  a2bf3a:	00f037b3          	snez	a5,a5
  a2bf3e:	794b2503          	lw	a0,1940(s6) # a05794 <g_sfc_cmd_databuf>
  a2bf42:	4487879b          	addshf	a5,a5,s0,srl,2
  a2bf46:	0814                	addi	a3,sp,16
  a2bf48:	9fa1                	uxth	a5
  a2bf4a:	4701                	li	a4,0
  a2bf4c:	8636                	mv	a2,a3
  a2bf4e:	01071593          	slli	a1,a4,0x10
  a2bf52:	81c1                	srli	a1,a1,0x10
  a2bf54:	00f5ea63          	bltu	a1,a5,a2bf68 <hal_sfc_reg_read+0x74>
  a2bf58:	86a2                	mv	a3,s0
  a2bf5a:	85a2                	mv	a1,s0
  a2bf5c:	8552                	mv	a0,s4
  a2bf5e:	33d040ef          	jal	ra,a30a9a <memcpy_s>
  a2bf62:	c919                	beqz	a0,a2bf78 <hal_sfc_reg_read+0x84>
  a2bf64:	557d                	li	a0,-1
  a2bf66:	8584                	popret	{ra,s0-s6},112
  a2bf68:	04e5059b          	addshf	a1,a0,a4,sll,2
  a2bf6c:	418c                	lw	a1,0(a1)
  a2bf6e:	0705                	addi	a4,a4,1
  a2bf70:	0691                	addi	a3,a3,4
  a2bf72:	feb6ae23          	sw	a1,-4(a3)
  a2bf76:	bfe1                	j	a2bf4e <hal_sfc_reg_read+0x5a>
  a2bf78:	99a2                	add	s3,s3,s0
  a2bf7a:	9a22                	add	s4,s4,s0
  a2bf7c:	8c81                	sub	s1,s1,s0
  a2bf7e:	b771                	j	a2bf0a <hal_sfc_reg_read+0x16>

00a2bf80 <hal_sfc_reg_write>:
  a2bf80:	8088                	push	{ra,s0-s6},-32
  a2bf82:	03f57793          	andi	a5,a0,63
  a2bf86:	04000413          	li	s0,64
  a2bf8a:	8c1d                	sub	s0,s0,a5
  a2bf8c:	89aa                	mv	s3,a0
  a2bf8e:	892e                	mv	s2,a1
  a2bf90:	84b2                	mv	s1,a2
  a2bf92:	8ab6                	mv	s5,a3
  a2bf94:	00867363          	bgeu	a2,s0,a2bf9a <hal_sfc_reg_write+0x1a>
  a2bf98:	8432                	mv	s0,a2
  a2bf9a:	86d6                	mv	a3,s5
  a2bf9c:	8622                	mv	a2,s0
  a2bf9e:	85ca                	mv	a1,s2
  a2bfa0:	854e                	mv	a0,s3
  a2bfa2:	db1ff0ef          	jal	ra,a2bd52 <hal_sfc_reg_write_once>
  a2bfa6:	8a2a                	mv	s4,a0
  a2bfa8:	e905                	bnez	a0,a2bfd8 <hal_sfc_reg_write+0x58>
  a2bfaa:	8c81                	sub	s1,s1,s0
  a2bfac:	c495                	beqz	s1,a2bfd8 <hal_sfc_reg_write+0x58>
  a2bfae:	9922                	add	s2,s2,s0
  a2bfb0:	04000b13          	li	s6,64
  a2bfb4:	944e                	add	s0,s0,s3
  a2bfb6:	89a6                	mv	s3,s1
  a2bfb8:	009b7463          	bgeu	s6,s1,a2bfc0 <hal_sfc_reg_write+0x40>
  a2bfbc:	04000993          	li	s3,64
  a2bfc0:	86d6                	mv	a3,s5
  a2bfc2:	864e                	mv	a2,s3
  a2bfc4:	85ca                	mv	a1,s2
  a2bfc6:	8522                	mv	a0,s0
  a2bfc8:	d8bff0ef          	jal	ra,a2bd52 <hal_sfc_reg_write_once>
  a2bfcc:	e901                	bnez	a0,a2bfdc <hal_sfc_reg_write+0x5c>
  a2bfce:	413484b3          	sub	s1,s1,s3
  a2bfd2:	994e                	add	s2,s2,s3
  a2bfd4:	944e                	add	s0,s0,s3
  a2bfd6:	f0e5                	bnez	s1,a2bfb6 <hal_sfc_reg_write+0x36>
  a2bfd8:	8552                	mv	a0,s4
  a2bfda:	8084                	popret	{ra,s0-s6},32
  a2bfdc:	8a2a                	mv	s4,a0
  a2bfde:	bfed                	j	a2bfd8 <hal_sfc_reg_write+0x58>

00a2bfe0 <hal_sfc_reg_erase>:
  a2bfe0:	8238                	push	{ra,s0-s1},-48
  a2bfe2:	c62e                	sw	a1,12(sp)
  a2bfe4:	84aa                	mv	s1,a0
  a2bfe6:	8432                	mv	s0,a2
  a2bfe8:	d4fff0ef          	jal	ra,a2bd36 <hal_sfc_write_enable>
  a2bfec:	45b2                	lw	a1,12(sp)
  a2bfee:	e10d                	bnez	a0,a2c010 <hal_sfc_reg_erase+0x30>
  a2bff0:	0848                	addi	a0,sp,20
  a2bff2:	ca2e                	sw	a1,20(sp)
  a2bff4:	cc02                	sw	zero,24(sp)
  a2bff6:	ce02                	sw	zero,28(sp)
  a2bff8:	2829                	jal	ra,a2c012 <hal_sfc_regs_set_opt>
  a2bffa:	8526                	mv	a0,s1
  a2bffc:	c61ff0ef          	jal	ra,a2bc5c <hal_sfc_regs_set_cmd_addr>
  a2c000:	00144613          	xori	a2,s0,1
  a2c004:	4581                	li	a1,0
  a2c006:	4501                	li	a0,0
  a2c008:	2089                	jal	ra,a2c04a <hal_sfc_regs_set_opt_attr>
  a2c00a:	20bd                	jal	ra,a2c078 <hal_sfc_regs_wait_config>
  a2c00c:	c6fff0ef          	jal	ra,a2bc7a <hal_sfc_regs_wait_ready.constprop.3>
  a2c010:	8234                	popret	{ra,s0-s1},48

00a2c012 <hal_sfc_regs_set_opt>:
  a2c012:	00a057b7          	lui	a5,0xa05
  a2c016:	7987a603          	lw	a2,1944(a5) # a05798 <g_sfc_cmd_regs>
  a2c01a:	411c                	lw	a5,0(a0)
  a2c01c:	450c                	lw	a1,8(a0)
  a2c01e:	4618                	lw	a4,8(a2)
  a2c020:	0037d693          	srli	a3,a5,0x3
  a2c024:	9e81                	uxtb	a3
  a2c026:	f0077713          	andi	a4,a4,-256
  a2c02a:	8f55                	or	a4,a4,a3
  a2c02c:	4154                	lw	a3,4(a0)
  a2c02e:	83ad                	srli	a5,a5,0xb
  a2c030:	8b9d                	andi	a5,a5,7
  a2c032:	899d                	andi	a1,a1,7
  a2c034:	07c6                	slli	a5,a5,0x11
  a2c036:	16fd                	addi	a3,a3,-1
  a2c038:	03f6f693          	andi	a3,a3,63
  a2c03c:	08b7a79b          	orshf	a5,a5,a1,sll,4
  a2c040:	12d7a79b          	orshf	a5,a5,a3,sll,9
  a2c044:	c618                	sw	a4,8(a2)
  a2c046:	c21c                	sw	a5,0(a2)
  a2c048:	8082                	ret

00a2c04a <hal_sfc_regs_set_opt_attr>:
  a2c04a:	00a057b7          	lui	a5,0xa05
  a2c04e:	7987a703          	lw	a4,1944(a5) # a05798 <g_sfc_cmd_regs>
  a2c052:	8905                	andi	a0,a0,1
  a2c054:	8985                	andi	a1,a1,1
  a2c056:	431c                	lw	a5,0(a4)
  a2c058:	8a05                	andi	a2,a2,1
  a2c05a:	eff7f793          	andi	a5,a5,-257
  a2c05e:	10a7a79b          	orshf	a5,a5,a0,sll,8
  a2c062:	f7f7f793          	andi	a5,a5,-129
  a2c066:	0eb7a79b          	orshf	a5,a5,a1,sll,7
  a2c06a:	9bdd                	andi	a5,a5,-9
  a2c06c:	06c7a79b          	orshf	a5,a5,a2,sll,3
  a2c070:	0037e793          	ori	a5,a5,3
  a2c074:	c31c                	sw	a5,0(a4)
  a2c076:	8082                	ret

00a2c078 <hal_sfc_regs_wait_config>:
  a2c078:	00a057b7          	lui	a5,0xa05
  a2c07c:	7987a703          	lw	a4,1944(a5) # a05798 <g_sfc_cmd_regs>
  a2c080:	431c                	lw	a5,0(a4)
  a2c082:	8b85                	andi	a5,a5,1
  a2c084:	fff5                	bnez	a5,a2c080 <hal_sfc_regs_wait_config+0x8>
  a2c086:	8082                	ret

00a2c088 <hal_sfc_regs_set_bus_read>:
  a2c088:	00a057b7          	lui	a5,0xa05
  a2c08c:	7907a603          	lw	a2,1936(a5) # a05790 <g_sfc_bus_regs>
  a2c090:	80000737          	lui	a4,0x80000
  a2c094:	ffff 00ff 069f      	l.li	a3,0xffff00ff
  a2c09a:	421c                	lw	a5,0(a2)
  a2c09c:	8fd9                	or	a5,a5,a4
  a2c09e:	00355713          	srli	a4,a0,0x3
  a2c0a2:	9f01                	uxtb	a4
  a2c0a4:	8ff5                	and	a5,a5,a3
  a2c0a6:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a2c0aa:	00b55693          	srli	a3,a0,0xb
  a2c0ae:	8a9d                	andi	a3,a3,7
  a2c0b0:	812d                	srli	a0,a0,0xb
  a2c0b2:	fc07f793          	andi	a5,a5,-64
  a2c0b6:	03857713          	andi	a4,a0,56
  a2c0ba:	00d7e533          	or	a0,a5,a3
  a2c0be:	8d59                	or	a0,a0,a4
  a2c0c0:	c208                	sw	a0,0(a2)
  a2c0c2:	8082                	ret

00a2c0c4 <hal_sfc_regs_set_bus_write>:
  a2c0c4:	00a057b7          	lui	a5,0xa05
  a2c0c8:	7907a683          	lw	a3,1936(a5) # a05790 <g_sfc_bus_regs>
  a2c0cc:	00355713          	srli	a4,a0,0x3
  a2c0d0:	c03f ffff 061f      	l.li	a2,0xc03fffff
  a2c0d6:	429c                	lw	a5,0(a3)
  a2c0d8:	9f01                	uxtb	a4
  a2c0da:	812d                	srli	a0,a0,0xb
  a2c0dc:	8ff1                	and	a5,a5,a2
  a2c0de:	2ce7a79b          	orshf	a5,a5,a4,sll,22
  a2c0e2:	fff8 ffff 071f      	l.li	a4,0xfff8ffff
  a2c0e8:	8ff9                	and	a5,a5,a4
  a2c0ea:	891d                	andi	a0,a0,7
  a2c0ec:	20a7a79b          	orshf	a5,a5,a0,sll,16
  a2c0f0:	40000737          	lui	a4,0x40000
  a2c0f4:	8fd9                	or	a5,a5,a4
  a2c0f6:	c29c                	sw	a5,0(a3)
  a2c0f8:	8082                	ret

00a2c0fa <pmp_enable>:
  a2c0fa:	8148                	push	{ra,s0-s2},-32
  a2c0fc:	004c                	addi	a1,sp,4
  a2c0fe:	02000513          	li	a0,32
  a2c102:	c202                	sw	zero,4(sp)
  a2c104:	c402                	sw	zero,8(sp)
  a2c106:	c602                	sw	zero,12(sp)
  a2c108:	3d7010ef          	jal	ra,a2dcde <uapi_partition_get_info>
  a2c10c:	4722                	lw	a4,8(sp)
  a2c10e:	00a34437          	lui	s0,0xa34
  a2c112:	00200937          	lui	s2,0x200
  a2c116:	974a                	add	a4,a4,s2
  a2c118:	f2440493          	addi	s1,s0,-220 # a33f24 <g_region_attr>
  a2c11c:	004c                	addi	a1,sp,4
  a2c11e:	02100513          	li	a0,33
  a2c122:	d0d8                	sw	a4,36(s1)
  a2c124:	3bb010ef          	jal	ra,a2dcde <uapi_partition_get_info>
  a2c128:	47a2                	lw	a5,8(sp)
  a2c12a:	4595                	li	a1,5
  a2c12c:	f2440513          	addi	a0,s0,-220
  a2c130:	97ca                	add	a5,a5,s2
  a2c132:	d8dc                	sw	a5,52(s1)
  a2c134:	89ffd0ef          	jal	ra,a299d2 <uapi_pmp_config>
  a2c138:	8144                	popret	{ra,s0-s2},32

00a2c13a <print_str_inner>:
  a2c13a:	8038                	push	{ra,s0-s1},-16
  a2c13c:	00a05437          	lui	s0,0xa05
  a2c140:	872e                	mv	a4,a1
  a2c142:	86aa                	mv	a3,a0
  a2c144:	07f00613          	li	a2,127
  a2c148:	08000593          	li	a1,128
  a2c14c:	7a440513          	addi	a0,s0,1956 # a057a4 <str_buf.2993>
  a2c150:	308050ef          	jal	ra,a31458 <vsnprintf_s>
  a2c154:	862a                	mv	a2,a0
  a2c156:	7a440793          	addi	a5,s0,1956
  a2c15a:	ff05133b          	bnei	a0,-1,a2c166 <print_str_inner+0x2c>
  a2c15e:	7a440493          	addi	s1,s0,1956
  a2c162:	2098                	lbu	a4,0(s1)
  a2c164:	cf11                	beqz	a4,a2c180 <print_str_inner+0x46>
  a2c166:	97b2                	add	a5,a5,a2
  a2c168:	00078023          	sb	zero,0(a5)
  a2c16c:	00a0 57a0 079f      	l.li	a5,0xa057a0
  a2c172:	2388                	lbu	a0,0(a5)
  a2c174:	4681                	li	a3,0
  a2c176:	7a440593          	addi	a1,s0,1956
  a2c17a:	8030                	pop	{ra,s0-s1},16
  a2c17c:	df2fe06f          	j	a2a76e <uapi_uart_write>
  a2c180:	8034                	popret	{ra,s0-s1},16

00a2c182 <uart_port_register_hal_funcs>:
  a2c182:	8028                	push	{ra,s0},-16
  a2c184:	842a                	mv	s0,a0
  a2c186:	8c7ff0ef          	jal	ra,a2ba4c <hal_uart_v151_funcs_get>
  a2c18a:	85aa                	mv	a1,a0
  a2c18c:	8522                	mv	a0,s0
  a2c18e:	8020                	pop	{ra,s0},16
  a2c190:	c1aff06f          	j	a2b5aa <hal_uart_register_funcs>

00a2c194 <uart_port_set_clock_value>:
  a2c194:	00a3 3f74 079f      	l.li	a5,0xa33f74
  a2c19a:	c38c                	sw	a1,0(a5)
  a2c19c:	8082                	ret

00a2c19e <uart_port_get_clock_value>:
  a2c19e:	00a3 3f74 079f      	l.li	a5,0xa33f74
  a2c1a4:	4388                	lw	a0,0(a5)
  a2c1a6:	8082                	ret

00a2c1a8 <uart_port_config_pinmux>:
  a2c1a8:	020513bb          	bnei	a0,2,a2c1b6 <uart_port_config_pinmux+0xe>
  a2c1ac:	4400d7b7          	lui	a5,0x4400d
  a2c1b0:	4705                	li	a4,1
  a2c1b2:	db98                	sw	a4,48(a5)
  a2c1b4:	dbd8                	sw	a4,52(a5)
  a2c1b6:	8082                	ret

00a2c1b8 <uart_port_register_irq>:
  a2c1b8:	8082                	ret

00a2c1ba <uart_port_unregister_irq>:
  a2c1ba:	8082                	ret

00a2c1bc <print_str>:
  a2c1bc:	7139                	addi	sp,sp,-64
  a2c1be:	ce06                	sw	ra,28(sp)
  a2c1c0:	cc22                	sw	s0,24(sp)
  a2c1c2:	d22e                	sw	a1,36(sp)
  a2c1c4:	d432                	sw	a2,40(sp)
  a2c1c6:	d636                	sw	a3,44(sp)
  a2c1c8:	d83a                	sw	a4,48(sp)
  a2c1ca:	da3e                	sw	a5,52(sp)
  a2c1cc:	dc42                	sw	a6,56(sp)
  a2c1ce:	de46                	sw	a7,60(sp)
  a2c1d0:	c911                	beqz	a0,a2c1e4 <print_str+0x28>
  a2c1d2:	842a                	mv	s0,a0
  a2c1d4:	b39fc0ef          	jal	ra,a28d0c <strlen>
  a2c1d8:	c511                	beqz	a0,a2c1e4 <print_str+0x28>
  a2c1da:	104c                	addi	a1,sp,36
  a2c1dc:	8522                	mv	a0,s0
  a2c1de:	c62e                	sw	a1,12(sp)
  a2c1e0:	f5bff0ef          	jal	ra,a2c13a <print_str_inner>
  a2c1e4:	40f2                	lw	ra,28(sp)
  a2c1e6:	4462                	lw	s0,24(sp)
  a2c1e8:	6121                	addi	sp,sp,64
  a2c1ea:	8082                	ret

00a2c1ec <uart_porting_lock>:
  a2c1ec:	fdcfd06f          	j	a299c8 <osal_irq_lock>

00a2c1f0 <uart_porting_unlock>:
  a2c1f0:	852e                	mv	a0,a1
  a2c1f2:	fdefd06f          	j	a299d0 <osal_irq_restore>

00a2c1f6 <hal_systick_get_count>:
  a2c1f6:	400057b7          	lui	a5,0x40005
  a2c1fa:	4fd8                	lw	a4,28(a5)
  a2c1fc:	4f98                	lw	a4,24(a5)
  a2c1fe:	4fc8                	lw	a0,28(a5)
  a2c200:	4f8c                	lw	a1,24(a5)
  a2c202:	9da1                	uxth	a1
  a2c204:	8082                	ret

00a2c206 <systick_clock_get>:
  a2c206:	00a3 3f78 079f      	l.li	a5,0xa33f78
  a2c20c:	4388                	lw	a0,0(a5)
  a2c20e:	8082                	ret

00a2c210 <tcxo_porting_base_addr_get>:
  a2c210:	4400 04c0 051f      	l.li	a0,0x440004c0
  a2c216:	8082                	ret

00a2c218 <tcxo_porting_ticks_per_usec_get>:
  a2c218:	00a3 3f7c 079f      	l.li	a5,0xa33f7c
  a2c21e:	4388                	lw	a0,0(a5)
  a2c220:	8082                	ret

00a2c222 <tcxo_porting_ticks_per_usec_set>:
  a2c222:	00a3 3f7c 079f      	l.li	a5,0xa33f7c
  a2c228:	c388                	sw	a0,0(a5)
  a2c22a:	8082                	ret

00a2c22c <watchdog_port_register_hal_funcs>:
  a2c22c:	8018                	push	{ra},-16
  a2c22e:	9cdff0ef          	jal	ra,a2bbfa <hal_watchdog_v151_funcs_get>
  a2c232:	8010                	pop	{ra},16
  a2c234:	821ff06f          	j	a2ba54 <hal_watchdog_register_funcs>

00a2c238 <watchdog_port_unregister_hal_funcs>:
  a2c238:	833ff06f          	j	a2ba6a <hal_watchdog_unregister_funcs>

00a2c23c <watchdog_port_register_irq>:
  a2c23c:	8082                	ret

00a2c23e <watchdog_port_set_clock>:
  a2c23e:	8028                	push	{ra,s0},-16
  a2c240:	842a                	mv	s0,a0
  a2c242:	f86fd0ef          	jal	ra,a299c8 <osal_irq_lock>
  a2c246:	00a3 3f84 079f      	l.li	a5,0xa33f84
  a2c24c:	c380                	sw	s0,0(a5)
  a2c24e:	8020                	pop	{ra,s0},16
  a2c250:	f80fd06f          	j	a299d0 <osal_irq_restore>

00a2c254 <watchdog_port_get_clock>:
  a2c254:	00a3 3f84 079f      	l.li	a5,0xa33f84
  a2c25a:	4388                	lw	a0,0(a5)
  a2c25c:	8082                	ret

00a2c25e <pmp_port_register_hal_funcs>:
  a2c25e:	8018                	push	{ra},-16
  a2c260:	a0bfe0ef          	jal	ra,a2ac6a <hal_pmp_riscv31_funcs_get>
  a2c264:	8010                	pop	{ra},16
  a2c266:	999fe06f          	j	a2abfe <hal_pmp_register_funcs>

00a2c26a <sfc_port_get_flash_spi_infos>:
  a2c26a:	00a3 27f0 051f      	l.li	a0,0xa327f0
  a2c270:	8082                	ret

00a2c272 <sfc_port_get_flash_num>:
  a2c272:	4505                	li	a0,1
  a2c274:	8082                	ret

00a2c276 <sfc_port_get_unknown_flash_info>:
  a2c276:	00a3 280c 051f      	l.li	a0,0xa3280c
  a2c27c:	8082                	ret

00a2c27e <sfc_port_get_sfc_start_addr>:
  a2c27e:	00200537          	lui	a0,0x200
  a2c282:	8082                	ret

00a2c284 <sfc_port_get_sfc_end_addr>:
  a2c284:	009f ffff 051f      	l.li	a0,0x9fffff
  a2c28a:	8082                	ret

00a2c28c <sfc_port_get_sfc_global_conf_base_addr>:
  a2c28c:	4800 0100 051f      	l.li	a0,0x48000100
  a2c292:	8082                	ret

00a2c294 <sfc_port_get_sfc_bus_regs_base_addr>:
  a2c294:	4800 0200 051f      	l.li	a0,0x48000200
  a2c29a:	8082                	ret

00a2c29c <sfc_port_get_sfc_bus_dma_regs_base_addr>:
  a2c29c:	4800 0240 051f      	l.li	a0,0x48000240
  a2c2a2:	8082                	ret

00a2c2a4 <sfc_port_get_sfc_cmd_regs_base_addr>:
  a2c2a4:	4800 0300 051f      	l.li	a0,0x48000300
  a2c2aa:	8082                	ret

00a2c2ac <sfc_port_get_sfc_cmd_databuf_base_addr>:
  a2c2ac:	4800 0400 051f      	l.li	a0,0x48000400
  a2c2b2:	8082                	ret

00a2c2b4 <sfc_port_get_delay_once_time>:
  a2c2b4:	00a3 3f88 079f      	l.li	a5,0xa33f88
  a2c2ba:	4388                	lw	a0,0(a5)
  a2c2bc:	8082                	ret

00a2c2be <sfc_port_get_delay_times>:
  a2c2be:	00a3 3f8c 079f      	l.li	a5,0xa33f8c
  a2c2c4:	4388                	lw	a0,0(a5)
  a2c2c6:	8082                	ret

00a2c2c8 <sfc_port_lock_init>:
  a2c2c8:	8082                	ret

00a2c2ca <sfc_port_lock>:
  a2c2ca:	4501                	li	a0,0
  a2c2cc:	8082                	ret

00a2c2ce <sfc_port_unlock>:
  a2c2ce:	8082                	ret

00a2c2d0 <hal_sfc_regs_wait_ready.constprop.0>:
  a2c2d0:	8158                	push	{ra,s0-s3},-48
  a2c2d2:	fedff0ef          	jal	ra,a2c2be <sfc_port_get_delay_times>
  a2c2d6:	84aa                	mv	s1,a0
  a2c2d8:	fddff0ef          	jal	ra,a2c2b4 <sfc_port_get_delay_once_time>
  a2c2dc:	02800793          	li	a5,40
  a2c2e0:	c23e                	sw	a5,4(sp)
  a2c2e2:	4785                	li	a5,1
  a2c2e4:	892a                	mv	s2,a0
  a2c2e6:	c602                	sw	zero,12(sp)
  a2c2e8:	c43e                	sw	a5,8(sp)
  a2c2ea:	4401                	li	s0,0
  a2c2ec:	00a059b7          	lui	s3,0xa05
  a2c2f0:	0048                	addi	a0,sp,4
  a2c2f2:	d21ff0ef          	jal	ra,a2c012 <hal_sfc_regs_set_opt>
  a2c2f6:	4601                	li	a2,0
  a2c2f8:	4585                	li	a1,1
  a2c2fa:	4505                	li	a0,1
  a2c2fc:	d4fff0ef          	jal	ra,a2c04a <hal_sfc_regs_set_opt_attr>
  a2c300:	d79ff0ef          	jal	ra,a2c078 <hal_sfc_regs_wait_config>
  a2c304:	7949a783          	lw	a5,1940(s3) # a05794 <g_sfc_cmd_databuf>
  a2c308:	439c                	lw	a5,0(a5)
  a2c30a:	8b85                	andi	a5,a5,1
  a2c30c:	cf91                	beqz	a5,a2c328 <hal_sfc_regs_wait_ready.constprop.0+0x58>
  a2c30e:	854a                	mv	a0,s2
  a2c310:	878fe0ef          	jal	ra,a2a388 <uapi_tcxo_delay_us>
  a2c314:	00140793          	addi	a5,s0,1
  a2c318:	00946663          	bltu	s0,s1,a2c324 <hal_sfc_regs_wait_ready.constprop.0+0x54>
  a2c31c:	8000 1344 051f      	l.li	a0,0x80001344
  a2c322:	8154                	popret	{ra,s0-s3},48
  a2c324:	843e                	mv	s0,a5
  a2c326:	b7e9                	j	a2c2f0 <hal_sfc_regs_wait_ready.constprop.0+0x20>
  a2c328:	4501                	li	a0,0
  a2c32a:	bfe5                	j	a2c322 <hal_sfc_regs_wait_ready.constprop.0+0x52>

00a2c32c <sfc_port_write_sr>:
  a2c32c:	8148                	push	{ra,s0-s2},-32
  a2c32e:	892a                	mv	s2,a0
  a2c330:	842e                	mv	s0,a1
  a2c332:	84b2                	mv	s1,a2
  a2c334:	f9dff0ef          	jal	ra,a2c2d0 <hal_sfc_regs_wait_ready.constprop.0>
  a2c338:	4792                	lw	a5,4(sp)
  a2c33a:	4719                	li	a4,6
  a2c33c:	9be1                	andi	a5,a5,-8
  a2c33e:	0017e793          	ori	a5,a5,1
  a2c342:	c23e                	sw	a5,4(sp)
  a2c344:	00090463          	beqz	s2,a2c34c <sfc_port_write_sr+0x20>
  a2c348:	05000713          	li	a4,80
  a2c34c:	4792                	lw	a5,4(sp)
  a2c34e:	0048                	addi	a0,sp,4
  a2c350:	c402                	sw	zero,8(sp)
  a2c352:	8077f793          	andi	a5,a5,-2041
  a2c356:	06e7a79b          	orshf	a5,a5,a4,sll,3
  a2c35a:	7ff7f793          	andi	a5,a5,2047
  a2c35e:	c23e                	sw	a5,4(sp)
  a2c360:	c602                	sw	zero,12(sp)
  a2c362:	cb1ff0ef          	jal	ra,a2c012 <hal_sfc_regs_set_opt>
  a2c366:	4601                	li	a2,0
  a2c368:	4581                	li	a1,0
  a2c36a:	4501                	li	a0,0
  a2c36c:	cdfff0ef          	jal	ra,a2c04a <hal_sfc_regs_set_opt_attr>
  a2c370:	d09ff0ef          	jal	ra,a2c078 <hal_sfc_regs_wait_config>
  a2c374:	4785                	li	a5,1
  a2c376:	c43e                	sw	a5,8(sp)
  a2c378:	00a057b7          	lui	a5,0xa05
  a2c37c:	7947a783          	lw	a5,1940(a5) # a05794 <g_sfc_cmd_databuf>
  a2c380:	040e                	slli	s0,s0,0x3
  a2c382:	00146413          	ori	s0,s0,1
  a2c386:	c222                	sw	s0,4(sp)
  a2c388:	c602                	sw	zero,12(sp)
  a2c38a:	c384                	sw	s1,0(a5)
  a2c38c:	0048                	addi	a0,sp,4
  a2c38e:	c85ff0ef          	jal	ra,a2c012 <hal_sfc_regs_set_opt>
  a2c392:	4601                	li	a2,0
  a2c394:	4585                	li	a1,1
  a2c396:	4501                	li	a0,0
  a2c398:	cb3ff0ef          	jal	ra,a2c04a <hal_sfc_regs_set_opt_attr>
  a2c39c:	cddff0ef          	jal	ra,a2c078 <hal_sfc_regs_wait_config>
  a2c3a0:	8144                	popret	{ra,s0-s2},32

00a2c3a2 <sfc_port_read_sr>:
  a2c3a2:	8118                	push	{ra},-32
  a2c3a4:	9d01                	uxtb	a0
  a2c3a6:	4785                	li	a5,1
  a2c3a8:	050e                	slli	a0,a0,0x3
  a2c3aa:	c43e                	sw	a5,8(sp)
  a2c3ac:	c602                	sw	zero,12(sp)
  a2c3ae:	c22a                	sw	a0,4(sp)
  a2c3b0:	f21ff0ef          	jal	ra,a2c2d0 <hal_sfc_regs_wait_ready.constprop.0>
  a2c3b4:	0048                	addi	a0,sp,4
  a2c3b6:	c5dff0ef          	jal	ra,a2c012 <hal_sfc_regs_set_opt>
  a2c3ba:	4601                	li	a2,0
  a2c3bc:	4585                	li	a1,1
  a2c3be:	4505                	li	a0,1
  a2c3c0:	c8bff0ef          	jal	ra,a2c04a <hal_sfc_regs_set_opt_attr>
  a2c3c4:	cb5ff0ef          	jal	ra,a2c078 <hal_sfc_regs_wait_config>
  a2c3c8:	00a057b7          	lui	a5,0xa05
  a2c3cc:	7947a783          	lw	a5,1940(a5) # a05794 <g_sfc_cmd_databuf>
  a2c3d0:	4388                	lw	a0,0(a5)
  a2c3d2:	8114                	popret	{ra},32

00a2c3d4 <sfc_port_write_lock>:
  a2c3d4:	000207b7          	lui	a5,0x20
  a2c3d8:	02f56563          	bltu	a0,a5,a2c402 <sfc_port_write_lock+0x2e>
  a2c3dc:	004007b7          	lui	a5,0x400
  a2c3e0:	02b7e163          	bltu	a5,a1,a2c402 <sfc_port_write_lock+0x2e>
  a2c3e4:	8018                	push	{ra},-16
  a2c3e6:	02800613          	li	a2,40
  a2c3ea:	4585                	li	a1,1
  a2c3ec:	4505                	li	a0,1
  a2c3ee:	f3fff0ef          	jal	ra,a2c32c <sfc_port_write_sr>
  a2c3f2:	4609                	li	a2,2
  a2c3f4:	03100593          	li	a1,49
  a2c3f8:	4505                	li	a0,1
  a2c3fa:	f33ff0ef          	jal	ra,a2c32c <sfc_port_write_sr>
  a2c3fe:	4501                	li	a0,0
  a2c400:	8014                	popret	{ra},16
  a2c402:	4501                	li	a0,0
  a2c404:	8082                	ret

00a2c406 <sfc_port_write_unlock>:
  a2c406:	8018                	push	{ra},-16
  a2c408:	4671                	li	a2,28
  a2c40a:	4585                	li	a1,1
  a2c40c:	4505                	li	a0,1
  a2c40e:	f1fff0ef          	jal	ra,a2c32c <sfc_port_write_sr>
  a2c412:	4609                	li	a2,2
  a2c414:	03100593          	li	a1,49
  a2c418:	4505                	li	a0,1
  a2c41a:	8010                	pop	{ra},16
  a2c41c:	f11ff06f          	j	a2c32c <sfc_port_write_sr>

00a2c420 <sfc_port_fix_sr>:
  a2c420:	8118                	push	{ra},-32
  a2c422:	0068                	addi	a0,sp,12
  a2c424:	c602                	sw	zero,12(sp)
  a2c426:	9a9ff0ef          	jal	ra,a2bdce <hal_sfc_get_flash_id>
  a2c42a:	e901                	bnez	a0,a2c43a <sfc_port_fix_sr+0x1a>
  a2c42c:	4732                	lw	a4,12(sp)
  a2c42e:	0016 40c8 079f      	l.li	a5,0x1640c8
  a2c434:	00f71463          	bne	a4,a5,a2c43c <sfc_port_fix_sr+0x1c>
  a2c438:	2079                	jal	ra,a2c4c6 <sfc_port_fix_sr_gd25q32>
  a2c43a:	8114                	popret	{ra},32
  a2c43c:	80000537          	lui	a0,0x80000
  a2c440:	0509                	addi	a0,a0,2 # 80000002 <_gp_+0x7f5cb7ee>
  a2c442:	bfe5                	j	a2c43a <sfc_port_fix_sr+0x1a>

00a2c444 <sfc_port_gd25q32_read_sr>:
  a2c444:	8078                	push	{ra,s0-s5},-32
  a2c446:	892a                	mv	s2,a0
  a2c448:	448d                	li	s1,3
  a2c44a:	4995                	li	s3,5
  a2c44c:	03500a13          	li	s4,53
  a2c450:	00a33ab7          	lui	s5,0xa33
  a2c454:	854a                	mv	a0,s2
  a2c456:	f4dff0ef          	jal	ra,a2c3a2 <sfc_port_read_sr>
  a2c45a:	0ff57413          	andi	s0,a0,255
  a2c45e:	03391f63          	bne	s2,s3,a2c49c <sfc_port_gd25q32_read_sr+0x58>
  a2c462:	09c47413          	andi	s0,s0,156
  a2c466:	1411                	addi	s0,s0,-28
  a2c468:	00143413          	seqz	s0,s0
  a2c46c:	4585                	li	a1,1
  a2c46e:	46f1                	li	a3,28
  a2c470:	e419                	bnez	s0,a2c47e <sfc_port_gd25q32_read_sr+0x3a>
  a2c472:	0ff57613          	andi	a2,a0,255
  a2c476:	850a8513          	addi	a0,s5,-1968 # a32850 <g_flash_spi_unknown_info+0x44>
  a2c47a:	d43ff0ef          	jal	ra,a2c1bc <print_str>
  a2c47e:	e8bfd0ef          	jal	ra,a2a308 <uapi_tcxo_get_count>
  a2c482:	06400613          	li	a2,100
  a2c486:	4681                	li	a3,0
  a2c488:	918fc0ef          	jal	ra,a285a0 <__umoddi3>
  a2c48c:	0505                	addi	a0,a0,1
  a2c48e:	efbfd0ef          	jal	ra,a2a388 <uapi_tcxo_delay_us>
  a2c492:	c805                	beqz	s0,a2c4c2 <sfc_port_gd25q32_read_sr+0x7e>
  a2c494:	14fd                	addi	s1,s1,-1
  a2c496:	fcdd                	bnez	s1,a2c454 <sfc_port_gd25q32_read_sr+0x10>
  a2c498:	4501                	li	a0,0
  a2c49a:	8074                	popret	{ra,s0-s5},32
  a2c49c:	01491a63          	bne	s2,s4,a2c4b0 <sfc_port_gd25q32_read_sr+0x6c>
  a2c4a0:	04347413          	andi	s0,s0,67
  a2c4a4:	1479                	addi	s0,s0,-2
  a2c4a6:	00143413          	seqz	s0,s0
  a2c4aa:	4589                	li	a1,2
  a2c4ac:	4689                	li	a3,2
  a2c4ae:	b7c9                	j	a2c470 <sfc_port_gd25q32_read_sr+0x2c>
  a2c4b0:	06147413          	andi	s0,s0,97
  a2c4b4:	1401                	addi	s0,s0,-32
  a2c4b6:	00143413          	seqz	s0,s0
  a2c4ba:	458d                	li	a1,3
  a2c4bc:	02000693          	li	a3,32
  a2c4c0:	bf45                	j	a2c470 <sfc_port_gd25q32_read_sr+0x2c>
  a2c4c2:	557d                	li	a0,-1
  a2c4c4:	bfd9                	j	a2c49a <sfc_port_gd25q32_read_sr+0x56>

00a2c4c6 <sfc_port_fix_sr_gd25q32>:
  a2c4c6:	8068                	push	{ra,s0-s4},-32
  a2c4c8:	4481                	li	s1,0
  a2c4ca:	498d                	li	s3,3
  a2c4cc:	4515                	li	a0,5
  a2c4ce:	f77ff0ef          	jal	ra,a2c444 <sfc_port_gd25q32_read_sr>
  a2c4d2:	8a2a                	mv	s4,a0
  a2c4d4:	03500513          	li	a0,53
  a2c4d8:	f6dff0ef          	jal	ra,a2c444 <sfc_port_gd25q32_read_sr>
  a2c4dc:	892a                	mv	s2,a0
  a2c4de:	4555                	li	a0,21
  a2c4e0:	f65ff0ef          	jal	ra,a2c444 <sfc_port_gd25q32_read_sr>
  a2c4e4:	842a                	mv	s0,a0
  a2c4e6:	040a1763          	bnez	s4,a2c534 <sfc_port_fix_sr_gd25q32+0x6e>
  a2c4ea:	02090863          	beqz	s2,a2c51a <sfc_port_fix_sr_gd25q32+0x54>
  a2c4ee:	4609                	li	a2,2
  a2c4f0:	03100593          	li	a1,49
  a2c4f4:	4501                	li	a0,0
  a2c4f6:	e37ff0ef          	jal	ra,a2c32c <sfc_port_write_sr>
  a2c4fa:	c419                	beqz	s0,a2c508 <sfc_port_fix_sr_gd25q32+0x42>
  a2c4fc:	02000613          	li	a2,32
  a2c500:	45c5                	li	a1,17
  a2c502:	4501                	li	a0,0
  a2c504:	e29ff0ef          	jal	ra,a2c32c <sfc_port_write_sr>
  a2c508:	03c00513          	li	a0,60
  a2c50c:	0485                	addi	s1,s1,1
  a2c50e:	e2bfd0ef          	jal	ra,a2a338 <uapi_tcxo_delay_ms>
  a2c512:	fb349de3          	bne	s1,s3,a2c4cc <sfc_port_fix_sr_gd25q32+0x6>
  a2c516:	547d                	li	s0,-1
  a2c518:	a801                	j	a2c528 <sfc_port_fix_sr_gd25q32+0x62>
  a2c51a:	f16d                	bnez	a0,a2c4fc <sfc_port_fix_sr_gd25q32+0x36>
  a2c51c:	e881                	bnez	s1,a2c52c <sfc_port_fix_sr_gd25q32+0x66>
  a2c51e:	00a3 2828 051f      	l.li	a0,0xa32828
  a2c524:	6fa000ef          	jal	ra,a2cc1e <boot_msg0>
  a2c528:	8522                	mv	a0,s0
  a2c52a:	8064                	popret	{ra,s0-s4},32
  a2c52c:	00a3 2840 051f      	l.li	a0,0xa32840
  a2c532:	bfcd                	j	a2c524 <sfc_port_fix_sr_gd25q32+0x5e>
  a2c534:	4671                	li	a2,28
  a2c536:	4585                	li	a1,1
  a2c538:	4501                	li	a0,0
  a2c53a:	df3ff0ef          	jal	ra,a2c32c <sfc_port_write_sr>
  a2c53e:	fa090ee3          	beqz	s2,a2c4fa <sfc_port_fix_sr_gd25q32+0x34>
  a2c542:	b775                	j	a2c4ee <sfc_port_fix_sr_gd25q32+0x28>

00a2c544 <build_flash_ctrl>:
  a2c544:	455c                	lw	a5,12(a0)
  a2c546:	04b7859b          	addshf	a1,a5,a1,sll,2
  a2c54a:	4194                	lw	a3,0(a1)
  a2c54c:	491c                	lw	a5,16(a0)
  a2c54e:	04c7861b          	addshf	a2,a5,a2,sll,2
  a2c552:	0076f793          	andi	a5,a3,7
  a2c556:	4218                	lw	a4,0(a2)
  a2c558:	01079bbb          	bnei	a5,1,a2c586 <build_flash_ctrl+0x42>
  a2c55c:	8b1d                	andi	a4,a4,7
  a2c55e:	02f71463          	bne	a4,a5,a2c586 <build_flash_ctrl+0x42>
  a2c562:	00a0 5824 079f      	l.li	a5,0xa05824
  a2c568:	c3d4                	sw	a3,4(a5)
  a2c56a:	4214                	lw	a3,0(a2)
  a2c56c:	c7d4                	sw	a3,12(a5)
  a2c56e:	4954                	lw	a3,20(a0)
  a2c570:	cb94                	sw	a3,16(a5)
  a2c572:	4154                	lw	a3,4(a0)
  a2c574:	c394                	sw	a3,0(a5)
  a2c576:	4514                	lw	a3,8(a0)
  a2c578:	00d77b63          	bgeu	a4,a3,a2c58e <build_flash_ctrl+0x4a>
  a2c57c:	4d18                	lw	a4,24(a0)
  a2c57e:	c794                	sw	a3,8(a5)
  a2c580:	4501                	li	a0,0
  a2c582:	cbd8                	sw	a4,20(a5)
  a2c584:	8082                	ret
  a2c586:	8000 1346 051f      	l.li	a0,0x80001346
  a2c58c:	8082                	ret
  a2c58e:	8000 1349 051f      	l.li	a0,0x80001349
  a2c594:	8082                	ret

00a2c596 <check_opt_param>:
  a2c596:	00a0 583c 079f      	l.li	a5,0xa0583c
  a2c59c:	239c                	lbu	a5,0(a5)
  a2c59e:	cf99                	beqz	a5,a2c5bc <check_opt_param+0x26>
  a2c5a0:	00a0 5824 071f      	l.li	a4,0xa05824
  a2c5a6:	4318                	lw	a4,0(a4)
  a2c5a8:	00b507b3          	add	a5,a0,a1
  a2c5ac:	00f76c63          	bltu	a4,a5,a2c5c4 <check_opt_param+0x2e>
  a2c5b0:	00f57a63          	bgeu	a0,a5,a2c5c4 <check_opt_param+0x2e>
  a2c5b4:	00b7e863          	bltu	a5,a1,a2c5c4 <check_opt_param+0x2e>
  a2c5b8:	4501                	li	a0,0
  a2c5ba:	8082                	ret
  a2c5bc:	8000 1340 051f      	l.li	a0,0x80001340
  a2c5c2:	8082                	ret
  a2c5c4:	80000537          	lui	a0,0x80000
  a2c5c8:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2c5ca:	8082                	ret

00a2c5cc <check_init_param>:
  a2c5cc:	8078                	push	{ra,s0-s5},-32
  a2c5ce:	00452a83          	lw	s5,4(a0)
  a2c5d2:	00a06937          	lui	s2,0xa06
  a2c5d6:	89aa                	mv	s3,a0
  a2c5d8:	82492403          	lw	s0,-2012(s2) # a05824 <g_flash_ctrl>
  a2c5dc:	00852a03          	lw	s4,8(a0)
  a2c5e0:	c9fff0ef          	jal	ra,a2c27e <sfc_port_get_sfc_start_addr>
  a2c5e4:	00aaf663          	bgeu	s5,a0,a2c5f0 <check_init_param+0x24>
  a2c5e8:	8000 1342 051f      	l.li	a0,0x80001342
  a2c5ee:	8074                	popret	{ra,s0-s5},32
  a2c5f0:	82490913          	addi	s2,s2,-2012
  a2c5f4:	008a7363          	bgeu	s4,s0,a2c5fa <check_init_param+0x2e>
  a2c5f8:	8452                	mv	s0,s4
  a2c5fa:	0049a483          	lw	s1,4(s3)
  a2c5fe:	14fd                	addi	s1,s1,-1
  a2c600:	94a2                	add	s1,s1,s0
  a2c602:	c83ff0ef          	jal	ra,a2c284 <sfc_port_get_sfc_end_addr>
  a2c606:	fe9561e3          	bltu	a0,s1,a2c5e8 <check_init_param+0x1c>
  a2c60a:	00892023          	sw	s0,0(s2)
  a2c60e:	4501                	li	a0,0
  a2c610:	bff9                	j	a2c5ee <check_init_param+0x22>

00a2c612 <uapi_sfc_init>:
  a2c612:	00a067b7          	lui	a5,0xa06
  a2c616:	83c7c703          	lbu	a4,-1988(a5) # a0583c <g_sfc_inited>
  a2c61a:	ef59                	bnez	a4,a2c6b8 <uapi_sfc_init+0xa6>
  a2c61c:	8258                	push	{ra,s0-s3},-64
  a2c61e:	842a                	mv	s0,a0
  a2c620:	83c78913          	addi	s2,a5,-1988
  a2c624:	ca5ff0ef          	jal	ra,a2c2c8 <sfc_port_lock_init>
  a2c628:	0868                	addi	a0,sp,28
  a2c62a:	fa4ff0ef          	jal	ra,a2bdce <hal_sfc_get_flash_id>
  a2c62e:	e151                	bnez	a0,a2c6b2 <uapi_sfc_init+0xa0>
  a2c630:	200c                	lbu	a1,0(s0)
  a2c632:	3010                	lbu	a2,1(s0)
  a2c634:	49f2                	lw	s3,28(sp)
  a2c636:	c62e                	sw	a1,12(sp)
  a2c638:	c432                	sw	a2,8(sp)
  a2c63a:	c31ff0ef          	jal	ra,a2c26a <sfc_port_get_flash_spi_infos>
  a2c63e:	84aa                	mv	s1,a0
  a2c640:	c33ff0ef          	jal	ra,a2c272 <sfc_port_get_flash_num>
  a2c644:	4622                	lw	a2,8(sp)
  a2c646:	45b2                	lw	a1,12(sp)
  a2c648:	86aa                	mv	a3,a0
  a2c64a:	87a6                	mv	a5,s1
  a2c64c:	4701                	li	a4,0
  a2c64e:	04e69963          	bne	a3,a4,a2c6a0 <uapi_sfc_init+0x8e>
  a2c652:	c25ff0ef          	jal	ra,a2c276 <sfc_port_get_unknown_flash_info>
  a2c656:	4605                	li	a2,1
  a2c658:	4581                	li	a1,0
  a2c65a:	eebff0ef          	jal	ra,a2c544 <build_flash_ctrl>
  a2c65e:	e931                	bnez	a0,a2c6b2 <uapi_sfc_init+0xa0>
  a2c660:	00a0 583d 079f      	l.li	a5,0xa0583d
  a2c666:	4705                	li	a4,1
  a2c668:	a398                	sb	a4,0(a5)
  a2c66a:	8522                	mv	a0,s0
  a2c66c:	f61ff0ef          	jal	ra,a2c5cc <check_init_param>
  a2c670:	e129                	bnez	a0,a2c6b2 <uapi_sfc_init+0xa0>
  a2c672:	00a06537          	lui	a0,0xa06
  a2c676:	82452603          	lw	a2,-2012(a0) # a05824 <g_flash_ctrl>
  a2c67a:	404c                	lw	a1,4(s0)
  a2c67c:	82450513          	addi	a0,a0,-2012
  a2c680:	f92ff0ef          	jal	ra,a2be12 <hal_sfc_init>
  a2c684:	e51d                	bnez	a0,a2c6b2 <uapi_sfc_init+0xa0>
  a2c686:	4785                	li	a5,1
  a2c688:	00f90023          	sb	a5,0(s2)
  a2c68c:	00a0 583d 079f      	l.li	a5,0xa0583d
  a2c692:	239c                	lbu	a5,0(a5)
  a2c694:	4501                	li	a0,0
  a2c696:	cf91                	beqz	a5,a2c6b2 <uapi_sfc_init+0xa0>
  a2c698:	8000 1341 051f      	l.li	a0,0x80001341
  a2c69e:	a811                	j	a2c6b2 <uapi_sfc_init+0xa0>
  a2c6a0:	853e                	mv	a0,a5
  a2c6a2:	07f1                	addi	a5,a5,28
  a2c6a4:	fe47a803          	lw	a6,-28(a5)
  a2c6a8:	01099663          	bne	s3,a6,a2c6b4 <uapi_sfc_init+0xa2>
  a2c6ac:	e99ff0ef          	jal	ra,a2c544 <build_flash_ctrl>
  a2c6b0:	dd4d                	beqz	a0,a2c66a <uapi_sfc_init+0x58>
  a2c6b2:	8254                	popret	{ra,s0-s3},64
  a2c6b4:	0705                	addi	a4,a4,1 # 40000001 <_gp_+0x3f5cb7ed>
  a2c6b6:	bf61                	j	a2c64e <uapi_sfc_init+0x3c>
  a2c6b8:	4501                	li	a0,0
  a2c6ba:	8082                	ret

00a2c6bc <uapi_sfc_reg_read>:
  a2c6bc:	8188                	push	{ra,s0-s6},-48
  a2c6be:	8a2e                	mv	s4,a1
  a2c6c0:	85b2                	mv	a1,a2
  a2c6c2:	892a                	mv	s2,a0
  a2c6c4:	84b2                	mv	s1,a2
  a2c6c6:	ed1ff0ef          	jal	ra,a2c596 <check_opt_param>
  a2c6ca:	e13d                	bnez	a0,a2c730 <uapi_sfc_reg_read+0x74>
  a2c6cc:	bffff0ef          	jal	ra,a2c2ca <sfc_port_lock>
  a2c6d0:	00397b13          	andi	s6,s2,3
  a2c6d4:	8aaa                	mv	s5,a0
  a2c6d6:	060b0263          	beqz	s6,a2c73a <uapi_sfc_reg_read+0x7e>
  a2c6da:	4791                	li	a5,4
  a2c6dc:	416787b3          	sub	a5,a5,s6
  a2c6e0:	41690933          	sub	s2,s2,s6
  a2c6e4:	0ff4f993          	andi	s3,s1,255
  a2c6e8:	00f4e763          	bltu	s1,a5,a2c6f6 <uapi_sfc_reg_read+0x3a>
  a2c6ec:	4991                	li	s3,4
  a2c6ee:	416989b3          	sub	s3,s3,s6
  a2c6f2:	0ff9f993          	andi	s3,s3,255
  a2c6f6:	00a0 5824 079f      	l.li	a5,0xa05824
  a2c6fc:	43d4                	lw	a3,4(a5)
  a2c6fe:	4611                	li	a2,4
  a2c700:	006c                	addi	a1,sp,12
  a2c702:	854a                	mv	a0,s2
  a2c704:	c602                	sw	zero,12(sp)
  a2c706:	feeff0ef          	jal	ra,a2bef4 <hal_sfc_reg_read>
  a2c70a:	842a                	mv	s0,a0
  a2c70c:	ed11                	bnez	a0,a2c728 <uapi_sfc_reg_read+0x6c>
  a2c70e:	007c                	addi	a5,sp,12
  a2c710:	86ce                	mv	a3,s3
  a2c712:	01678633          	add	a2,a5,s6
  a2c716:	85ce                	mv	a1,s3
  a2c718:	8552                	mv	a0,s4
  a2c71a:	380040ef          	jal	ra,a30a9a <memcpy_s>
  a2c71e:	c911                	beqz	a0,a2c732 <uapi_sfc_reg_read+0x76>
  a2c720:	80000537          	lui	a0,0x80000
  a2c724:	00450413          	addi	s0,a0,4 # 80000004 <_gp_+0x7f5cb7f0>
  a2c728:	8556                	mv	a0,s5
  a2c72a:	ba5ff0ef          	jal	ra,a2c2ce <sfc_port_unlock>
  a2c72e:	8522                	mv	a0,s0
  a2c730:	8184                	popret	{ra,s0-s6},48
  a2c732:	0911                	addi	s2,s2,4
  a2c734:	9a4e                	add	s4,s4,s3
  a2c736:	413484b3          	sub	s1,s1,s3
  a2c73a:	ffc4f993          	andi	s3,s1,-4
  a2c73e:	02098163          	beqz	s3,a2c760 <uapi_sfc_reg_read+0xa4>
  a2c742:	00a0 5824 079f      	l.li	a5,0xa05824
  a2c748:	43d4                	lw	a3,4(a5)
  a2c74a:	864e                	mv	a2,s3
  a2c74c:	85d2                	mv	a1,s4
  a2c74e:	854a                	mv	a0,s2
  a2c750:	fa4ff0ef          	jal	ra,a2bef4 <hal_sfc_reg_read>
  a2c754:	842a                	mv	s0,a0
  a2c756:	f969                	bnez	a0,a2c728 <uapi_sfc_reg_read+0x6c>
  a2c758:	9a4e                	add	s4,s4,s3
  a2c75a:	994e                	add	s2,s2,s3
  a2c75c:	413484b3          	sub	s1,s1,s3
  a2c760:	4401                	li	s0,0
  a2c762:	d0f9                	beqz	s1,a2c728 <uapi_sfc_reg_read+0x6c>
  a2c764:	00a0 5824 079f      	l.li	a5,0xa05824
  a2c76a:	43d4                	lw	a3,4(a5)
  a2c76c:	4611                	li	a2,4
  a2c76e:	006c                	addi	a1,sp,12
  a2c770:	854a                	mv	a0,s2
  a2c772:	c602                	sw	zero,12(sp)
  a2c774:	f80ff0ef          	jal	ra,a2bef4 <hal_sfc_reg_read>
  a2c778:	842a                	mv	s0,a0
  a2c77a:	86a6                	mv	a3,s1
  a2c77c:	0070                	addi	a2,sp,12
  a2c77e:	85a6                	mv	a1,s1
  a2c780:	8552                	mv	a0,s4
  a2c782:	318040ef          	jal	ra,a30a9a <memcpy_s>
  a2c786:	d14d                	beqz	a0,a2c728 <uapi_sfc_reg_read+0x6c>
  a2c788:	80000437          	lui	s0,0x80000
  a2c78c:	0411                	addi	s0,s0,4 # 80000004 <_gp_+0x7f5cb7f0>
  a2c78e:	bf69                	j	a2c728 <uapi_sfc_reg_read+0x6c>

00a2c790 <uapi_sfc_reg_write>:
  a2c790:	8198                	push	{ra,s0-s7},-64
  a2c792:	8a2e                	mv	s4,a1
  a2c794:	85b2                	mv	a1,a2
  a2c796:	84aa                	mv	s1,a0
  a2c798:	8932                	mv	s2,a2
  a2c79a:	dfdff0ef          	jal	ra,a2c596 <check_opt_param>
  a2c79e:	842a                	mv	s0,a0
  a2c7a0:	e571                	bnez	a0,a2c86c <uapi_sfc_reg_write+0xdc>
  a2c7a2:	012485b3          	add	a1,s1,s2
  a2c7a6:	8526                	mv	a0,s1
  a2c7a8:	c2dff0ef          	jal	ra,a2c3d4 <sfc_port_write_lock>
  a2c7ac:	0034fa93          	andi	s5,s1,3
  a2c7b0:	8b2a                	mv	s6,a0
  a2c7b2:	060a8863          	beqz	s5,a2c822 <uapi_sfc_reg_write+0x92>
  a2c7b6:	4791                	li	a5,4
  a2c7b8:	415787b3          	sub	a5,a5,s5
  a2c7bc:	415484b3          	sub	s1,s1,s5
  a2c7c0:	0ff97993          	andi	s3,s2,255
  a2c7c4:	00f96763          	bltu	s2,a5,a2c7d2 <uapi_sfc_reg_write+0x42>
  a2c7c8:	4991                	li	s3,4
  a2c7ca:	415989b3          	sub	s3,s3,s5
  a2c7ce:	0ff9f993          	andi	s3,s3,255
  a2c7d2:	00a0 5824 0b9f      	l.li	s7,0xa05824
  a2c7d8:	004ba683          	lw	a3,4(s7)
  a2c7dc:	4611                	li	a2,4
  a2c7de:	006c                	addi	a1,sp,12
  a2c7e0:	8526                	mv	a0,s1
  a2c7e2:	f12ff0ef          	jal	ra,a2bef4 <hal_sfc_reg_read>
  a2c7e6:	842a                	mv	s0,a0
  a2c7e8:	ed09                	bnez	a0,a2c802 <uapi_sfc_reg_write+0x72>
  a2c7ea:	007c                	addi	a5,sp,12
  a2c7ec:	86ce                	mv	a3,s3
  a2c7ee:	8652                	mv	a2,s4
  a2c7f0:	85ce                	mv	a1,s3
  a2c7f2:	01578533          	add	a0,a5,s5
  a2c7f6:	2a4040ef          	jal	ra,a30a9a <memcpy_s>
  a2c7fa:	c901                	beqz	a0,a2c80a <uapi_sfc_reg_write+0x7a>
  a2c7fc:	80000437          	lui	s0,0x80000
  a2c800:	0411                	addi	s0,s0,4 # 80000004 <_gp_+0x7f5cb7f0>
  a2c802:	855a                	mv	a0,s6
  a2c804:	c03ff0ef          	jal	ra,a2c406 <sfc_port_write_unlock>
  a2c808:	a095                	j	a2c86c <uapi_sfc_reg_write+0xdc>
  a2c80a:	00cba683          	lw	a3,12(s7)
  a2c80e:	8526                	mv	a0,s1
  a2c810:	4611                	li	a2,4
  a2c812:	006c                	addi	a1,sp,12
  a2c814:	f6cff0ef          	jal	ra,a2bf80 <hal_sfc_reg_write>
  a2c818:	842a                	mv	s0,a0
  a2c81a:	0491                	addi	s1,s1,4
  a2c81c:	9a4e                	add	s4,s4,s3
  a2c81e:	41390933          	sub	s2,s2,s3
  a2c822:	ffc97993          	andi	s3,s2,-4
  a2c826:	fc71                	bnez	s0,a2c802 <uapi_sfc_reg_write+0x72>
  a2c828:	02098063          	beqz	s3,a2c848 <uapi_sfc_reg_write+0xb8>
  a2c82c:	00a0 5824 079f      	l.li	a5,0xa05824
  a2c832:	47d4                	lw	a3,12(a5)
  a2c834:	85d2                	mv	a1,s4
  a2c836:	8526                	mv	a0,s1
  a2c838:	864e                	mv	a2,s3
  a2c83a:	f46ff0ef          	jal	ra,a2bf80 <hal_sfc_reg_write>
  a2c83e:	9a4e                	add	s4,s4,s3
  a2c840:	94ce                	add	s1,s1,s3
  a2c842:	41390933          	sub	s2,s2,s3
  a2c846:	e131                	bnez	a0,a2c88a <uapi_sfc_reg_write+0xfa>
  a2c848:	fa090de3          	beqz	s2,a2c802 <uapi_sfc_reg_write+0x72>
  a2c84c:	00a0 5824 041f      	l.li	s0,0xa05824
  a2c852:	4054                	lw	a3,4(s0)
  a2c854:	4611                	li	a2,4
  a2c856:	006c                	addi	a1,sp,12
  a2c858:	8526                	mv	a0,s1
  a2c85a:	e9aff0ef          	jal	ra,a2bef4 <hal_sfc_reg_read>
  a2c85e:	c909                	beqz	a0,a2c870 <uapi_sfc_reg_write+0xe0>
  a2c860:	855a                	mv	a0,s6
  a2c862:	80000437          	lui	s0,0x80000
  a2c866:	ba1ff0ef          	jal	ra,a2c406 <sfc_port_write_unlock>
  a2c86a:	0411                	addi	s0,s0,4 # 80000004 <_gp_+0x7f5cb7f0>
  a2c86c:	8522                	mv	a0,s0
  a2c86e:	8194                	popret	{ra,s0-s7},64
  a2c870:	86ca                	mv	a3,s2
  a2c872:	8652                	mv	a2,s4
  a2c874:	4591                	li	a1,4
  a2c876:	0068                	addi	a0,sp,12
  a2c878:	222040ef          	jal	ra,a30a9a <memcpy_s>
  a2c87c:	f175                	bnez	a0,a2c860 <uapi_sfc_reg_write+0xd0>
  a2c87e:	4454                	lw	a3,12(s0)
  a2c880:	4611                	li	a2,4
  a2c882:	006c                	addi	a1,sp,12
  a2c884:	8526                	mv	a0,s1
  a2c886:	efaff0ef          	jal	ra,a2bf80 <hal_sfc_reg_write>
  a2c88a:	842a                	mv	s0,a0
  a2c88c:	bf9d                	j	a2c802 <uapi_sfc_reg_write+0x72>

00a2c88e <uapi_sfc_reg_erase>:
  a2c88e:	80a8                	push	{ra,s0-s8},-48
  a2c890:	892a                	mv	s2,a0
  a2c892:	842e                	mv	s0,a1
  a2c894:	d03ff0ef          	jal	ra,a2c596 <check_opt_param>
  a2c898:	e921                	bnez	a0,a2c8e8 <uapi_sfc_reg_erase+0x5a>
  a2c89a:	008905b3          	add	a1,s2,s0
  a2c89e:	77fd                	lui	a5,0xfffff
  a2c8a0:	01459713          	slli	a4,a1,0x14
  a2c8a4:	00f974b3          	and	s1,s2,a5
  a2c8a8:	cf41                	beqz	a4,a2c940 <uapi_sfc_reg_erase+0xb2>
  a2c8aa:	8fed                	and	a5,a5,a1
  a2c8ac:	6705                	lui	a4,0x1
  a2c8ae:	80000537          	lui	a0,0x80000
  a2c8b2:	97ba                	add	a5,a5,a4
  a2c8b4:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2c8b6:	02991963          	bne	s2,s1,a2c8e8 <uapi_sfc_reg_erase+0x5a>
  a2c8ba:	02f59763          	bne	a1,a5,a2c8e8 <uapi_sfc_reg_erase+0x5a>
  a2c8be:	8526                	mv	a0,s1
  a2c8c0:	40958a33          	sub	s4,a1,s1
  a2c8c4:	6b11                	lui	s6,0x4
  a2c8c6:	b0fff0ef          	jal	ra,a2c3d4 <sfc_port_write_lock>
  a2c8ca:	8c2a                	mv	s8,a0
  a2c8cc:	4901                	li	s2,0
  a2c8ce:	4981                	li	s3,0
  a2c8d0:	4a81                	li	s5,0
  a2c8d2:	00a0 5824 0b9f      	l.li	s7,0xa05824
  a2c8d8:	1b7d                	addi	s6,s6,-1 # 3fff <ccause+0x303d>
  a2c8da:	040a1d63          	bnez	s4,a2c934 <uapi_sfc_reg_erase+0xa6>
  a2c8de:	4401                	li	s0,0
  a2c8e0:	8562                	mv	a0,s8
  a2c8e2:	b25ff0ef          	jal	ra,a2c406 <sfc_port_write_unlock>
  a2c8e6:	8522                	mv	a0,s0
  a2c8e8:	80a4                	popret	{ra,s0-s8},48
  a2c8ea:	010ba703          	lw	a4,16(s7)
  a2c8ee:	04f7071b          	addshf	a4,a4,a5,sll,2
  a2c8f2:	00072903          	lw	s2,0(a4) # 1000 <ccause+0x3e>
  a2c8f6:	00e95993          	srli	s3,s2,0xe
  a2c8fa:	8ace                	mv	s5,s3
  a2c8fc:	013a6663          	bltu	s4,s3,a2c908 <uapi_sfc_reg_erase+0x7a>
  a2c900:	fff98713          	addi	a4,s3,-1
  a2c904:	8f65                	and	a4,a4,s1
  a2c906:	cb01                	beqz	a4,a2c916 <uapi_sfc_reg_erase+0x88>
  a2c908:	0785                	addi	a5,a5,1 # fffff001 <_gp_+0xff5ca7ed>
  a2c90a:	008ba703          	lw	a4,8(s7)
  a2c90e:	fce7eee3          	bltu	a5,a4,a2c8ea <uapi_sfc_reg_erase+0x5c>
  a2c912:	02e78363          	beq	a5,a4,a2c938 <uapi_sfc_reg_erase+0xaa>
  a2c916:	01697933          	and	s2,s2,s6
  a2c91a:	1d39291b          	orshf	s2,s2,s3,sll,14
  a2c91e:	4601                	li	a2,0
  a2c920:	85ca                	mv	a1,s2
  a2c922:	8526                	mv	a0,s1
  a2c924:	ebcff0ef          	jal	ra,a2bfe0 <hal_sfc_reg_erase>
  a2c928:	842a                	mv	s0,a0
  a2c92a:	f95d                	bnez	a0,a2c8e0 <uapi_sfc_reg_erase+0x52>
  a2c92c:	415a0a33          	sub	s4,s4,s5
  a2c930:	94d6                	add	s1,s1,s5
  a2c932:	b765                	j	a2c8da <uapi_sfc_reg_erase+0x4c>
  a2c934:	4785                	li	a5,1
  a2c936:	bfd1                	j	a2c90a <uapi_sfc_reg_erase+0x7c>
  a2c938:	8000 1347 041f      	l.li	s0,0x80001347
  a2c93e:	b74d                	j	a2c8e0 <uapi_sfc_reg_erase+0x52>
  a2c940:	f6990fe3          	beq	s2,s1,a2c8be <uapi_sfc_reg_erase+0x30>
  a2c944:	80000537          	lui	a0,0x80000
  a2c948:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2c94a:	bf79                	j	a2c8e8 <uapi_sfc_reg_erase+0x5a>

00a2c94c <efuse_read_item.part.1>:
  a2c94c:	8188                	push	{ra,s0-s6},-48
  a2c94e:	00a3 2878 079f      	l.li	a5,0xa32878
  a2c954:	06a7955b          	muliadd	a0,a5,a0,6
  a2c958:	2126                	lhu	s1,2(a0)
  a2c95a:	00748a13          	addi	s4,s1,7
  a2c95e:	003a5a13          	srli	s4,s4,0x3
  a2c962:	07466f63          	bltu	a2,s4,a2c9e0 <efuse_read_item.part.1+0x94>
  a2c966:	00055903          	lhu	s2,0(a0)
  a2c96a:	86b2                	mv	a3,a2
  a2c96c:	89ae                	mv	s3,a1
  a2c96e:	4601                	li	a2,0
  a2c970:	85b6                	mv	a1,a3
  a2c972:	854e                	mv	a0,s3
  a2c974:	1a2040ef          	jal	ra,a30b16 <memset_s>
  a2c978:	009967b3          	or	a5,s2,s1
  a2c97c:	8b9d                	andi	a5,a5,7
  a2c97e:	844a                	mv	s0,s2
  a2c980:	cb91                	beqz	a5,a2c994 <efuse_read_item.part.1+0x48>
  a2c982:	6a41                	lui	s4,0x10
  a2c984:	94ca                	add	s1,s1,s2
  a2c986:	4aa1                	li	s5,8
  a2c988:	1a7d                	addi	s4,s4,-1 # ffff <ccause+0xf03d>
  a2c98a:	4b05                	li	s6,1
  a2c98c:	00944b63          	blt	s0,s1,a2c9a2 <efuse_read_item.part.1+0x56>
  a2c990:	4501                	li	a0,0
  a2c992:	a039                	j	a2c9a0 <efuse_read_item.part.1+0x54>
  a2c994:	8652                	mv	a2,s4
  a2c996:	00395593          	srli	a1,s2,0x3
  a2c99a:	854e                	mv	a0,s3
  a2c99c:	fddfd0ef          	jal	ra,a2a978 <uapi_efuse_read_buffer>
  a2c9a0:	8184                	popret	{ra,s0-s6},48
  a2c9a2:	00747613          	andi	a2,s0,7
  a2c9a6:	00345593          	srli	a1,s0,0x3
  a2c9aa:	00f10513          	addi	a0,sp,15
  a2c9ae:	f75fd0ef          	jal	ra,a2a922 <uapi_efuse_read_bit>
  a2c9b2:	f57d                	bnez	a0,a2c9a0 <efuse_read_item.part.1+0x54>
  a2c9b4:	00f14783          	lbu	a5,15(sp)
  a2c9b8:	c38d                	beqz	a5,a2c9da <efuse_read_item.part.1+0x8e>
  a2c9ba:	412407b3          	sub	a5,s0,s2
  a2c9be:	0357c733          	div	a4,a5,s5
  a2c9c2:	0357e7b3          	rem	a5,a5,s5
  a2c9c6:	01477733          	and	a4,a4,s4
  a2c9ca:	974e                	add	a4,a4,s3
  a2c9cc:	2314                	lbu	a3,0(a4)
  a2c9ce:	0147f7b3          	and	a5,a5,s4
  a2c9d2:	00fb17b3          	sll	a5,s6,a5
  a2c9d6:	8fd5                	or	a5,a5,a3
  a2c9d8:	a31c                	sb	a5,0(a4)
  a2c9da:	0405                	addi	s0,s0,1
  a2c9dc:	9c21                	uxth	s0
  a2c9de:	b77d                	j	a2c98c <efuse_read_item.part.1+0x40>
  a2c9e0:	557d                	li	a0,-1
  a2c9e2:	bf7d                	j	a2c9a0 <efuse_read_item.part.1+0x54>

00a2c9e4 <efuse_port_register_hal_funcs>:
  a2c9e4:	8018                	push	{ra},-16
  a2c9e6:	9defe0ef          	jal	ra,a2abc4 <hal_efuse_funcs_get>
  a2c9ea:	8010                	pop	{ra},16
  a2c9ec:	fe7fd06f          	j	a2a9d2 <hal_efuse_register_funcs>

00a2c9f0 <hal_efuse_get_region>:
  a2c9f0:	8121                	srli	a0,a0,0x8
  a2c9f2:	9d01                	uxtb	a0
  a2c9f4:	8082                	ret

00a2c9f6 <hal_efuse_get_byte_offset>:
  a2c9f6:	9d01                	uxtb	a0
  a2c9f8:	8082                	ret

00a2c9fa <efuse_read_item>:
  a2c9fa:	c589                	beqz	a1,a2ca04 <efuse_read_item+0xa>
  a2c9fc:	1305723b          	bgeui	a0,19,a2ca04 <efuse_read_item+0xa>
  a2ca00:	f4dff06f          	j	a2c94c <efuse_read_item.part.1>
  a2ca04:	557d                	li	a0,-1
  a2ca06:	8082                	ret

00a2ca08 <set_efuse_period>:
  a2ca08:	8018                	push	{ra},-16
  a2ca0a:	2895                	jal	ra,a2ca7e <get_tcxo_freq>
  a2ca0c:	010513bb          	bnei	a0,1,a2ca1a <set_efuse_period+0x12>
  a2ca10:	02900513          	li	a0,41
  a2ca14:	8010                	pop	{ra},16
  a2ca16:	9a4fe06f          	j	a2abba <hal_efuse_set_clock_period>
  a2ca1a:	4565                	li	a0,25
  a2ca1c:	bfe5                	j	a2ca14 <set_efuse_period+0xc>

00a2ca1e <malloc_port>:
  a2ca1e:	f73fc06f          	j	a29990 <malloc>

00a2ca22 <malloc_port_init>:
  a2ca22:	8118                	push	{ra},-32
  a2ca24:	00a2 98b6 079f      	l.li	a5,0xa298b6
  a2ca2a:	c23e                	sw	a5,4(sp)
  a2ca2c:	00a2 99c6 079f      	l.li	a5,0xa299c6
  a2ca32:	c63e                	sw	a5,12(sp)
  a2ca34:	0048                	addi	a0,sp,4
  a2ca36:	00a2 ca1e 079f      	l.li	a5,0xa2ca1e
  a2ca3c:	c43e                	sw	a5,8(sp)
  a2ca3e:	e25fc0ef          	jal	ra,a29862 <malloc_register_funcs>
  a2ca42:	00a06537          	lui	a0,0xa06
  a2ca46:	0001 0000 079f      	l.li	a5,0x10000
  a2ca4c:	b0850593          	addi	a1,a0,-1272 # a05b08 <__bss_end__>
  a2ca50:	95be                	add	a1,a1,a5
  a2ca52:	b0850513          	addi	a0,a0,-1272
  a2ca56:	e61fc0ef          	jal	ra,a298b6 <malloc_init>
  a2ca5a:	8114                	popret	{ra},32

00a2ca5c <reboot_port_reboot_chip>:
  a2ca5c:	8018                	push	{ra},-16
  a2ca5e:	e4ffd0ef          	jal	ra,a2a8ac <uapi_watchdog_deinit>
  a2ca62:	0000 0bb8 051f      	l.li	a0,0xbb8
  a2ca68:	921fd0ef          	jal	ra,a2a388 <uapi_tcxo_delay_us>
  a2ca6c:	40002737          	lui	a4,0x40002
  a2ca70:	11072783          	lw	a5,272(a4) # 40002110 <_gp_+0x3f5cd8fc>
  a2ca74:	0047e793          	ori	a5,a5,4
  a2ca78:	10f72823          	sw	a5,272(a4)
  a2ca7c:	8014                	popret	{ra},16

00a2ca7e <get_tcxo_freq>:
  a2ca7e:	400007b7          	lui	a5,0x40000
  a2ca82:	4bc8                	lw	a0,20(a5)
  a2ca84:	8905                	andi	a0,a0,1
  a2ca86:	8082                	ret

00a2ca88 <boot_clock_adapt>:
  a2ca88:	8028                	push	{ra,s0},-16
  a2ca8a:	ff5ff0ef          	jal	ra,a2ca7e <get_tcxo_freq>
  a2ca8e:	010518bb          	bnei	a0,1,a2cab0 <boot_clock_adapt+0x28>
  a2ca92:	016e3437          	lui	s0,0x16e3
  a2ca96:	60040593          	addi	a1,s0,1536 # 16e3600 <_gp_+0xcaedec>
  a2ca9a:	4501                	li	a0,0
  a2ca9c:	ef8ff0ef          	jal	ra,a2c194 <uart_port_set_clock_value>
  a2caa0:	4561                	li	a0,24
  a2caa2:	f80ff0ef          	jal	ra,a2c222 <tcxo_porting_ticks_per_usec_set>
  a2caa6:	60040513          	addi	a0,s0,1536
  a2caaa:	8020                	pop	{ra,s0},16
  a2caac:	f92ff06f          	j	a2c23e <watchdog_port_set_clock>
  a2cab0:	02626437          	lui	s0,0x2626
  a2cab4:	a0040593          	addi	a1,s0,-1536 # 2625a00 <_gp_+0x1bf11ec>
  a2cab8:	4501                	li	a0,0
  a2caba:	edaff0ef          	jal	ra,a2c194 <uart_port_set_clock_value>
  a2cabe:	02800513          	li	a0,40
  a2cac2:	f60ff0ef          	jal	ra,a2c222 <tcxo_porting_ticks_per_usec_set>
  a2cac6:	a0040513          	addi	a0,s0,-1536
  a2caca:	b7c5                	j	a2caaa <boot_clock_adapt+0x22>

00a2cacc <switch_flash_clock_to_pll>:
  a2cacc:	8028                	push	{ra,s0},-16
  a2cace:	40003437          	lui	s0,0x40003
  a2cad2:	4785                	li	a5,1
  a2cad4:	4af42223          	sw	a5,1188(s0) # 400034a4 <_gp_+0x3f5cec90>
  a2cad8:	4505                	li	a0,1
  a2cada:	8affd0ef          	jal	ra,a2a388 <uapi_tcxo_delay_us>
  a2cade:	478d                	li	a5,3
  a2cae0:	4af42223          	sw	a5,1188(s0)
  a2cae4:	44001737          	lui	a4,0x44001
  a2cae8:	13472783          	lw	a5,308(a4) # 44001134 <_gp_+0x435cc920>
  a2caec:	000406b7          	lui	a3,0x40
  a2caf0:	8fd5                	or	a5,a5,a3
  a2caf2:	12f72a23          	sw	a5,308(a4)
  a2caf6:	8024                	popret	{ra,s0},16

00a2caf8 <config_sfc_ctrl_ds>:
  a2caf8:	4400e7b7          	lui	a5,0x4400e
  a2cafc:	8687a703          	lw	a4,-1944(a5) # 4400d868 <_gp_+0x435d9054>
  a2cb00:	f8f77713          	andi	a4,a4,-113
  a2cb04:	03076713          	ori	a4,a4,48
  a2cb08:	86e7a423          	sw	a4,-1944(a5)
  a2cb0c:	86c7a703          	lw	a4,-1940(a5)
  a2cb10:	f8f77713          	andi	a4,a4,-113
  a2cb14:	02076713          	ori	a4,a4,32
  a2cb18:	86e7a623          	sw	a4,-1940(a5)
  a2cb1c:	8707a703          	lw	a4,-1936(a5)
  a2cb20:	f8f77713          	andi	a4,a4,-113
  a2cb24:	02076713          	ori	a4,a4,32
  a2cb28:	86e7a823          	sw	a4,-1936(a5)
  a2cb2c:	8747a703          	lw	a4,-1932(a5)
  a2cb30:	f8f77713          	andi	a4,a4,-113
  a2cb34:	02076713          	ori	a4,a4,32
  a2cb38:	86e7aa23          	sw	a4,-1932(a5)
  a2cb3c:	8787a703          	lw	a4,-1928(a5)
  a2cb40:	f8f77713          	andi	a4,a4,-113
  a2cb44:	02076713          	ori	a4,a4,32
  a2cb48:	86e7ac23          	sw	a4,-1928(a5)
  a2cb4c:	87c7a703          	lw	a4,-1924(a5)
  a2cb50:	f8f77713          	andi	a4,a4,-113
  a2cb54:	02076713          	ori	a4,a4,32
  a2cb58:	86e7ae23          	sw	a4,-1924(a5)
  a2cb5c:	8082                	ret

00a2cb5e <serial_set_mute>:
  a2cb5e:	00a0 583f 079f      	l.li	a5,0xa0583f
  a2cb64:	4705                	li	a4,1
  a2cb66:	a398                	sb	a4,0(a5)
  a2cb68:	8082                	ret

00a2cb6a <serial_cancel_mute>:
  a2cb6a:	00a0 583f 079f      	l.li	a5,0xa0583f
  a2cb70:	00078023          	sb	zero,0(a5)
  a2cb74:	8082                	ret

00a2cb76 <serial_putc>:
  a2cb76:	8118                	push	{ra},-32
  a2cb78:	00a0 583f 079f      	l.li	a5,0xa0583f
  a2cb7e:	239c                	lbu	a5,0(a5)
  a2cb80:	00a107a3          	sb	a0,15(sp)
  a2cb84:	eb81                	bnez	a5,a2cb94 <serial_putc+0x1e>
  a2cb86:	4689                	li	a3,2
  a2cb88:	4605                	li	a2,1
  a2cb8a:	00f10593          	addi	a1,sp,15
  a2cb8e:	4501                	li	a0,0
  a2cb90:	bdffd0ef          	jal	ra,a2a76e <uapi_uart_write>
  a2cb94:	8114                	popret	{ra},32

00a2cb96 <serial_puts>:
  a2cb96:	00a0 583f 079f      	l.li	a5,0xa0583f
  a2cb9c:	239c                	lbu	a5,0(a5)
  a2cb9e:	ef89                	bnez	a5,a2cbb8 <serial_puts+0x22>
  a2cba0:	8118                	push	{ra},-32
  a2cba2:	c62a                	sw	a0,12(sp)
  a2cba4:	968fc0ef          	jal	ra,a28d0c <strlen>
  a2cba8:	45b2                	lw	a1,12(sp)
  a2cbaa:	862a                	mv	a2,a0
  a2cbac:	7d000693          	li	a3,2000
  a2cbb0:	4501                	li	a0,0
  a2cbb2:	8110                	pop	{ra},32
  a2cbb4:	bbbfd06f          	j	a2a76e <uapi_uart_write>
  a2cbb8:	8082                	ret

00a2cbba <serial_puthex>:
  a2cbba:	00a0 583f 079f      	l.li	a5,0xa0583f
  a2cbc0:	239c                	lbu	a5,0(a5)
  a2cbc2:	efa9                	bnez	a5,a2cc1c <serial_puthex+0x62>
  a2cbc4:	8098                	push	{ra,s0-s7},-48
  a2cbc6:	84aa                	mv	s1,a0
  a2cbc8:	00a3 28f0 051f      	l.li	a0,0xa328f0
  a2cbce:	8a2e                	mv	s4,a1
  a2cbd0:	4401                	li	s0,0
  a2cbd2:	fc5ff0ef          	jal	ra,a2cb96 <serial_puts>
  a2cbd6:	4901                	li	s2,0
  a2cbd8:	4aa5                	li	s5,9
  a2cbda:	4b1d                	li	s6,7
  a2cbdc:	03000b93          	li	s7,48
  a2cbe0:	49a1                	li	s3,8
  a2cbe2:	01c4d713          	srli	a4,s1,0x1c
  a2cbe6:	0ff77793          	andi	a5,a4,255
  a2cbea:	03078513          	addi	a0,a5,48
  a2cbee:	00eaf463          	bgeu	s5,a4,a2cbf6 <serial_puthex+0x3c>
  a2cbf2:	03778513          	addi	a0,a5,55
  a2cbf6:	0492                	slli	s1,s1,0x4
  a2cbf8:	000a0563          	beqz	s4,a2cc02 <serial_puthex+0x48>
  a2cbfc:	f7bff0ef          	jal	ra,a2cb76 <serial_putc>
  a2cc00:	a811                	j	a2cc14 <serial_puthex+0x5a>
  a2cc02:	fe091de3          	bnez	s2,a2cbfc <serial_puthex+0x42>
  a2cc06:	ff640be3          	beq	s0,s6,a2cbfc <serial_puthex+0x42>
  a2cc0a:	01750563          	beq	a0,s7,a2cc14 <serial_puthex+0x5a>
  a2cc0e:	f69ff0ef          	jal	ra,a2cb76 <serial_putc>
  a2cc12:	4905                	li	s2,1
  a2cc14:	0405                	addi	s0,s0,1
  a2cc16:	fd3416e3          	bne	s0,s3,a2cbe2 <serial_puthex+0x28>
  a2cc1a:	8094                	popret	{ra,s0-s7},48
  a2cc1c:	8082                	ret

00a2cc1e <boot_msg0>:
  a2cc1e:	8018                	push	{ra},-16
  a2cc20:	f77ff0ef          	jal	ra,a2cb96 <serial_puts>
  a2cc24:	00a3 3250 051f      	l.li	a0,0xa33250
  a2cc2a:	8010                	pop	{ra},16
  a2cc2c:	f6bff06f          	j	a2cb96 <serial_puts>

00a2cc30 <boot_msg1>:
  a2cc30:	8028                	push	{ra,s0},-16
  a2cc32:	842e                	mv	s0,a1
  a2cc34:	f63ff0ef          	jal	ra,a2cb96 <serial_puts>
  a2cc38:	8522                	mv	a0,s0
  a2cc3a:	4581                	li	a1,0
  a2cc3c:	f7fff0ef          	jal	ra,a2cbba <serial_puthex>
  a2cc40:	00a3 3250 051f      	l.li	a0,0xa33250
  a2cc46:	8020                	pop	{ra,s0},16
  a2cc48:	f4fff06f          	j	a2cb96 <serial_puts>

00a2cc4c <boot_msg2>:
  a2cc4c:	8128                	push	{ra,s0},-32
  a2cc4e:	842e                	mv	s0,a1
  a2cc50:	c632                	sw	a2,12(sp)
  a2cc52:	f45ff0ef          	jal	ra,a2cb96 <serial_puts>
  a2cc56:	4581                	li	a1,0
  a2cc58:	8522                	mv	a0,s0
  a2cc5a:	f61ff0ef          	jal	ra,a2cbba <serial_puthex>
  a2cc5e:	00a3 28ec 051f      	l.li	a0,0xa328ec
  a2cc64:	f33ff0ef          	jal	ra,a2cb96 <serial_puts>
  a2cc68:	4632                	lw	a2,12(sp)
  a2cc6a:	4581                	li	a1,0
  a2cc6c:	8532                	mv	a0,a2
  a2cc6e:	f4dff0ef          	jal	ra,a2cbba <serial_puthex>
  a2cc72:	00a3 3250 051f      	l.li	a0,0xa33250
  a2cc78:	8120                	pop	{ra,s0},32
  a2cc7a:	f1dff06f          	j	a2cb96 <serial_puts>

00a2cc7e <hiburn_uart_init>:
  a2cc7e:	8228                	push	{ra,s0},-48
  a2cc80:	00a3 3f9c 079f      	l.li	a5,0xa33f9c
  a2cc86:	00078023          	sb	zero,0(a5)
  a2cc8a:	02900793          	li	a5,41
  a2cc8e:	00f10623          	sb	a5,12(sp)
  a2cc92:	07300793          	li	a5,115
  a2cc96:	00f107a3          	sb	a5,15(sp)
  a2cc9a:	00f10723          	sb	a5,14(sp)
  a2cc9e:	411c                	lw	a5,0(a0)
  a2cca0:	02a00713          	li	a4,42
  a2cca4:	00e106a3          	sb	a4,13(sp)
  a2cca8:	c83e                	sw	a5,16(sp)
  a2ccaa:	215c                	lbu	a5,4(a0)
  a2ccac:	2178                	lbu	a4,6(a0)
  a2ccae:	00010423          	sb	zero,8(sp)
  a2ccb2:	17ed                	addi	a5,a5,-5
  a2ccb4:	00f10a23          	sb	a5,20(sp)
  a2ccb8:	fff70793          	addi	a5,a4,-1
  a2ccbc:	9f81                	uxtb	a5
  a2ccbe:	0207fdbb          	bgeui	a5,2,a2ccf4 <hiburn_uart_init+0x76>
  a2ccc2:	00e10b23          	sb	a4,22(sp)
  a2ccc6:	315c                	lbu	a5,5(a0)
  a2ccc8:	4405                	li	s0,1
  a2ccca:	0838                	addi	a4,sp,24
  a2cccc:	17fd                	addi	a5,a5,-1
  a2ccce:	00f10aa3          	sb	a5,21(sp)
  a2ccd2:	4681                	li	a3,0
  a2ccd4:	003c                	addi	a5,sp,8
  a2ccd6:	0810                	addi	a2,sp,16
  a2ccd8:	006c                	addi	a1,sp,12
  a2ccda:	4501                	li	a0,0
  a2ccdc:	cc3e                	sw	a5,24(sp)
  a2ccde:	ce22                	sw	s0,28(sp)
  a2cce0:	9c1fd0ef          	jal	ra,a2a6a0 <uapi_uart_init>
  a2cce4:	4501                	li	a0,0
  a2cce6:	cd4ff0ef          	jal	ra,a2c1ba <uart_port_unregister_irq>
  a2ccea:	00a0 583e 079f      	l.li	a5,0xa0583e
  a2ccf0:	a380                	sb	s0,0(a5)
  a2ccf2:	8224                	popret	{ra,s0},48
  a2ccf4:	00010b23          	sb	zero,22(sp)
  a2ccf8:	b7f9                	j	a2ccc6 <hiburn_uart_init+0x48>

00a2ccfa <set_reset_count>:
  a2ccfa:	40000737          	lui	a4,0x40000
  a2ccfe:	471c                	lw	a5,8(a4)
  a2cd00:	893d                	andi	a0,a0,15
  a2cd02:	f0f7f793          	andi	a5,a5,-241
  a2cd06:	08a7a79b          	orshf	a5,a5,a0,sll,4
  a2cd0a:	c71c                	sw	a5,8(a4)
  a2cd0c:	8082                	ret

00a2cd0e <update_reset_count>:
  a2cd0e:	8038                	push	{ra,s0-s1},-16
  a2cd10:	400007b7          	lui	a5,0x40000
  a2cd14:	4780                	lw	s0,8(a5)
  a2cd16:	00a3 28f4 051f      	l.li	a0,0xa328f4
  a2cd1c:	8011                	srli	s0,s0,0x4
  a2cd1e:	883d                	andi	s0,s0,15
  a2cd20:	00140493          	addi	s1,s0,1
  a2cd24:	85a6                	mv	a1,s1
  a2cd26:	f0bff0ef          	jal	ra,a2cc30 <boot_msg1>
  a2cd2a:	06400513          	li	a0,100
  a2cd2e:	e0afd0ef          	jal	ra,a2a338 <uapi_tcxo_delay_ms>
  a2cd32:	0f04033b          	beqi	s0,15,a2cd3e <update_reset_count+0x30>
  a2cd36:	8526                	mv	a0,s1
  a2cd38:	8030                	pop	{ra,s0-s1},16
  a2cd3a:	fc1ff06f          	j	a2ccfa <set_reset_count>
  a2cd3e:	b39fd0ef          	jal	ra,a2a876 <uapi_watchdog_disable>
  a2cd42:	10500073          	wfi
  a2cd46:	a001                	j	a2cd46 <update_reset_count+0x38>

00a2cd48 <interrupt0_handler>:
  a2cd48:	8028                	push	{ra,s0},-16
  a2cd4a:	040007b7          	lui	a5,0x4000
  a2cd4e:	3047b7f3          	csrrc	a5,mie,a5
  a2cd52:	00a06437          	lui	s0,0xa06
  a2cd56:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2cd5a:	431c                	lw	a5,0(a4)
  a2cd5c:	84040413          	addi	s0,s0,-1984
  a2cd60:	0785                	addi	a5,a5,1 # 4000001 <_gp_+0x35cb7ed>
  a2cd62:	c31c                	sw	a5,0(a4)
  a2cd64:	22c9                	jal	ra,a2cf26 <isr_get_ramexceptiontable_addr>
  a2cd66:	5538                	lw	a4,104(a0)
  a2cd68:	00a2 d348 079f      	l.li	a5,0xa2d348
  a2cd6e:	00f70563          	beq	a4,a5,a2cd78 <interrupt0_handler+0x30>
  a2cd72:	2a55                	jal	ra,a2cf26 <isr_get_ramexceptiontable_addr>
  a2cd74:	553c                	lw	a5,104(a0)
  a2cd76:	9782                	jalr	a5
  a2cd78:	040007b7          	lui	a5,0x4000
  a2cd7c:	3047a7f3          	csrrs	a5,mie,a5
  a2cd80:	401c                	lw	a5,0(s0)
  a2cd82:	17fd                	addi	a5,a5,-1 # 3ffffff <_gp_+0x35cb7eb>
  a2cd84:	c01c                	sw	a5,0(s0)
  a2cd86:	8024                	popret	{ra,s0},16

00a2cd88 <interrupt1_handler>:
  a2cd88:	8028                	push	{ra,s0},-16
  a2cd8a:	080007b7          	lui	a5,0x8000
  a2cd8e:	3047b7f3          	csrrc	a5,mie,a5
  a2cd92:	00a06437          	lui	s0,0xa06
  a2cd96:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2cd9a:	431c                	lw	a5,0(a4)
  a2cd9c:	84040413          	addi	s0,s0,-1984
  a2cda0:	0785                	addi	a5,a5,1 # 8000001 <_gp_+0x75cb7ed>
  a2cda2:	c31c                	sw	a5,0(a4)
  a2cda4:	2249                	jal	ra,a2cf26 <isr_get_ramexceptiontable_addr>
  a2cda6:	5578                	lw	a4,108(a0)
  a2cda8:	00a2 d348 079f      	l.li	a5,0xa2d348
  a2cdae:	00f70563          	beq	a4,a5,a2cdb8 <interrupt1_handler+0x30>
  a2cdb2:	2a95                	jal	ra,a2cf26 <isr_get_ramexceptiontable_addr>
  a2cdb4:	557c                	lw	a5,108(a0)
  a2cdb6:	9782                	jalr	a5
  a2cdb8:	080007b7          	lui	a5,0x8000
  a2cdbc:	3047a7f3          	csrrs	a5,mie,a5
  a2cdc0:	401c                	lw	a5,0(s0)
  a2cdc2:	17fd                	addi	a5,a5,-1 # 7ffffff <_gp_+0x75cb7eb>
  a2cdc4:	c01c                	sw	a5,0(s0)
  a2cdc6:	8024                	popret	{ra,s0},16

00a2cdc8 <interrupt2_handler>:
  a2cdc8:	8028                	push	{ra,s0},-16
  a2cdca:	100007b7          	lui	a5,0x10000
  a2cdce:	3047b7f3          	csrrc	a5,mie,a5
  a2cdd2:	00a06437          	lui	s0,0xa06
  a2cdd6:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2cdda:	431c                	lw	a5,0(a4)
  a2cddc:	84040413          	addi	s0,s0,-1984
  a2cde0:	0785                	addi	a5,a5,1 # 10000001 <_gp_+0xf5cb7ed>
  a2cde2:	c31c                	sw	a5,0(a4)
  a2cde4:	2289                	jal	ra,a2cf26 <isr_get_ramexceptiontable_addr>
  a2cde6:	5938                	lw	a4,112(a0)
  a2cde8:	00a2 d348 079f      	l.li	a5,0xa2d348
  a2cdee:	00f70563          	beq	a4,a5,a2cdf8 <interrupt2_handler+0x30>
  a2cdf2:	2a15                	jal	ra,a2cf26 <isr_get_ramexceptiontable_addr>
  a2cdf4:	593c                	lw	a5,112(a0)
  a2cdf6:	9782                	jalr	a5
  a2cdf8:	100007b7          	lui	a5,0x10000
  a2cdfc:	3047a7f3          	csrrs	a5,mie,a5
  a2ce00:	401c                	lw	a5,0(s0)
  a2ce02:	17fd                	addi	a5,a5,-1 # fffffff <_gp_+0xf5cb7eb>
  a2ce04:	c01c                	sw	a5,0(s0)
  a2ce06:	8024                	popret	{ra,s0},16

00a2ce08 <interrupt3_handler>:
  a2ce08:	8028                	push	{ra,s0},-16
  a2ce0a:	200007b7          	lui	a5,0x20000
  a2ce0e:	3047b7f3          	csrrc	a5,mie,a5
  a2ce12:	00a06437          	lui	s0,0xa06
  a2ce16:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2ce1a:	431c                	lw	a5,0(a4)
  a2ce1c:	84040413          	addi	s0,s0,-1984
  a2ce20:	0785                	addi	a5,a5,1 # 20000001 <_gp_+0x1f5cb7ed>
  a2ce22:	c31c                	sw	a5,0(a4)
  a2ce24:	2209                	jal	ra,a2cf26 <isr_get_ramexceptiontable_addr>
  a2ce26:	5978                	lw	a4,116(a0)
  a2ce28:	00a2 d348 079f      	l.li	a5,0xa2d348
  a2ce2e:	00f70563          	beq	a4,a5,a2ce38 <interrupt3_handler+0x30>
  a2ce32:	28d5                	jal	ra,a2cf26 <isr_get_ramexceptiontable_addr>
  a2ce34:	597c                	lw	a5,116(a0)
  a2ce36:	9782                	jalr	a5
  a2ce38:	200007b7          	lui	a5,0x20000
  a2ce3c:	3047a7f3          	csrrs	a5,mie,a5
  a2ce40:	401c                	lw	a5,0(s0)
  a2ce42:	17fd                	addi	a5,a5,-1 # 1fffffff <_gp_+0x1f5cb7eb>
  a2ce44:	c01c                	sw	a5,0(s0)
  a2ce46:	8024                	popret	{ra,s0},16

00a2ce48 <interrupt4_handler>:
  a2ce48:	8028                	push	{ra,s0},-16
  a2ce4a:	400007b7          	lui	a5,0x40000
  a2ce4e:	3047b7f3          	csrrc	a5,mie,a5
  a2ce52:	00a06437          	lui	s0,0xa06
  a2ce56:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2ce5a:	431c                	lw	a5,0(a4)
  a2ce5c:	84040413          	addi	s0,s0,-1984
  a2ce60:	0785                	addi	a5,a5,1 # 40000001 <_gp_+0x3f5cb7ed>
  a2ce62:	c31c                	sw	a5,0(a4)
  a2ce64:	20c9                	jal	ra,a2cf26 <isr_get_ramexceptiontable_addr>
  a2ce66:	5d38                	lw	a4,120(a0)
  a2ce68:	00a2 d348 079f      	l.li	a5,0xa2d348
  a2ce6e:	00f70563          	beq	a4,a5,a2ce78 <interrupt4_handler+0x30>
  a2ce72:	2855                	jal	ra,a2cf26 <isr_get_ramexceptiontable_addr>
  a2ce74:	5d3c                	lw	a5,120(a0)
  a2ce76:	9782                	jalr	a5
  a2ce78:	400007b7          	lui	a5,0x40000
  a2ce7c:	3047a7f3          	csrrs	a5,mie,a5
  a2ce80:	401c                	lw	a5,0(s0)
  a2ce82:	17fd                	addi	a5,a5,-1 # 3fffffff <_gp_+0x3f5cb7eb>
  a2ce84:	c01c                	sw	a5,0(s0)
  a2ce86:	8024                	popret	{ra,s0},16

00a2ce88 <interrupt5_handler>:
  a2ce88:	8028                	push	{ra,s0},-16
  a2ce8a:	800007b7          	lui	a5,0x80000
  a2ce8e:	3047b7f3          	csrrc	a5,mie,a5
  a2ce92:	00a06437          	lui	s0,0xa06
  a2ce96:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2ce9a:	431c                	lw	a5,0(a4)
  a2ce9c:	84040413          	addi	s0,s0,-1984
  a2cea0:	0785                	addi	a5,a5,1 # 80000001 <_gp_+0x7f5cb7ed>
  a2cea2:	c31c                	sw	a5,0(a4)
  a2cea4:	2049                	jal	ra,a2cf26 <isr_get_ramexceptiontable_addr>
  a2cea6:	5d78                	lw	a4,124(a0)
  a2cea8:	00a2 d348 079f      	l.li	a5,0xa2d348
  a2ceae:	00f70563          	beq	a4,a5,a2ceb8 <interrupt5_handler+0x30>
  a2ceb2:	2895                	jal	ra,a2cf26 <isr_get_ramexceptiontable_addr>
  a2ceb4:	5d7c                	lw	a5,124(a0)
  a2ceb6:	9782                	jalr	a5
  a2ceb8:	800007b7          	lui	a5,0x80000
  a2cebc:	3047a7f3          	csrrs	a5,mie,a5
  a2cec0:	401c                	lw	a5,0(s0)
  a2cec2:	17fd                	addi	a5,a5,-1 # 7fffffff <_gp_+0x7f5cb7eb>
  a2cec4:	c01c                	sw	a5,0(s0)
  a2cec6:	8024                	popret	{ra,s0},16

00a2cec8 <local_interrupt_handler>:
  a2cec8:	8038                	push	{ra,s0-s1},-16
  a2ceca:	65f040ef          	jal	ra,a31d28 <global_interrupt_lock>
  a2cece:	00a064b7          	lui	s1,0xa06
  a2ced2:	84048713          	addi	a4,s1,-1984 # a05840 <g_interrupt_running>
  a2ced6:	431c                	lw	a5,0(a4)
  a2ced8:	0785                	addi	a5,a5,1
  a2ceda:	c31c                	sw	a5,0(a4)
  a2cedc:	665040ef          	jal	ra,a31d40 <global_interrupt_restore>
  a2cee0:	34202473          	csrr	s0,mcause
  a2cee4:	2089                	jal	ra,a2cf26 <isr_get_ramexceptiontable_addr>
  a2cee6:	6785                	lui	a5,0x1
  a2cee8:	17fd                	addi	a5,a5,-1 # fff <ccause+0x3d>
  a2ceea:	8c7d                	and	s0,s0,a5
  a2ceec:	040a                	slli	s0,s0,0x2
  a2ceee:	9522                	add	a0,a0,s0
  a2cef0:	4118                	lw	a4,0(a0)
  a2cef2:	00a2 cf24 079f      	l.li	a5,0xa2cf24
  a2cef8:	84048493          	addi	s1,s1,-1984
  a2cefc:	00f70663          	beq	a4,a5,a2cf08 <local_interrupt_handler+0x40>
  a2cf00:	201d                	jal	ra,a2cf26 <isr_get_ramexceptiontable_addr>
  a2cf02:	9522                	add	a0,a0,s0
  a2cf04:	411c                	lw	a5,0(a0)
  a2cf06:	9782                	jalr	a5
  a2cf08:	621040ef          	jal	ra,a31d28 <global_interrupt_lock>
  a2cf0c:	409c                	lw	a5,0(s1)
  a2cf0e:	17fd                	addi	a5,a5,-1
  a2cf10:	c09c                	sw	a5,0(s1)
  a2cf12:	8030                	pop	{ra,s0-s1},16
  a2cf14:	62d0406f          	j	a31d40 <global_interrupt_restore>

00a2cf18 <interrupt_number_get>:
  a2cf18:	34202573          	csrr	a0,mcause
  a2cf1c:	6785                	lui	a5,0x1
  a2cf1e:	17fd                	addi	a5,a5,-1 # fff <ccause+0x3d>
  a2cf20:	8d7d                	and	a0,a0,a5
  a2cf22:	8082                	ret

00a2cf24 <b_sub_monitor_handler>:
  a2cf24:	a001                	j	a2cf24 <b_sub_monitor_handler>

00a2cf26 <isr_get_ramexceptiontable_addr>:
  a2cf26:	00a2 8420 051f      	l.li	a0,0xa28420
  a2cf2c:	8082                	ret

00a2cf2e <do_hard_fault_handler>:
  a2cf2e:	c13d                	beqz	a0,a2cf94 <do_hard_fault_handler+0x66>
  a2cf30:	8048                	push	{ra,s0-s2},-16
  a2cf32:	00452903          	lw	s2,4(a0)
  a2cf36:	842a                	mv	s0,a0
  a2cf38:	00a3 294c 051f      	l.li	a0,0xa3294c
  a2cf3e:	85ca                	mv	a1,s2
  a2cf40:	a7cff0ef          	jal	ra,a2c1bc <print_str>
  a2cf44:	800007b7          	lui	a5,0x80000
  a2cf48:	07b1                	addi	a5,a5,12 # 8000000c <_gp_+0x7f5cb7f8>
  a2cf4a:	04f91263          	bne	s2,a5,a2cf8e <do_hard_fault_handler+0x60>
  a2cf4e:	00a3 2960 051f      	l.li	a0,0xa32960
  a2cf54:	6489                	lui	s1,0x2
  a2cf56:	a66ff0ef          	jal	ra,a2c1bc <print_str>
  a2cf5a:	04a1                	addi	s1,s1,8 # 2008 <ccause+0x1046>
  a2cf5c:	8526                	mv	a0,s1
  a2cf5e:	349000ef          	jal	ra,a2daa6 <cpu_utils_set_system_status_by_cause>
  a2cf62:	4c5c                	lw	a5,28(s0)
  a2cf64:	8522                	mv	a0,s0
  a2cf66:	07c1                	addi	a5,a5,16
  a2cf68:	cc5c                	sw	a5,28(s0)
  a2cf6a:	4a7000ef          	jal	ra,a2dc10 <set_exception_info_riscv>
  a2cf6e:	00a0 5858 079f      	l.li	a5,0xa05858
  a2cf74:	439c                	lw	a5,0(a5)
  a2cf76:	c781                	beqz	a5,a2cf7e <do_hard_fault_handler+0x50>
  a2cf78:	85a2                	mv	a1,s0
  a2cf7a:	854a                	mv	a0,s2
  a2cf7c:	9782                	jalr	a5
  a2cf7e:	85a6                	mv	a1,s1
  a2cf80:	4509                	li	a0,2
  a2cf82:	32d000ef          	jal	ra,a2daae <cpu_utils_reset_chip_with_log>
  a2cf86:	4501                	li	a0,0
  a2cf88:	8040                	pop	{ra,s0-s2},16
  a2cf8a:	8a9fd06f          	j	a2a832 <uapi_watchdog_enable>
  a2cf8e:	6489                	lui	s1,0x2
  a2cf90:	0491                	addi	s1,s1,4 # 2004 <ccause+0x1042>
  a2cf92:	b7e9                	j	a2cf5c <do_hard_fault_handler+0x2e>
  a2cf94:	8082                	ret

00a2cf96 <exc_info_display.part.2>:
  a2cf96:	8028                	push	{ra,s0},-16
  a2cf98:	842a                	mv	s0,a0
  a2cf9a:	00a3 2bbc 051f      	l.li	a0,0xa32bbc
  a2cfa0:	a1cff0ef          	jal	ra,a2c1bc <print_str>
  a2cfa4:	202e                	lhu	a1,2(s0)
  a2cfa6:	00a3 2bf4 051f      	l.li	a0,0xa32bf4
  a2cfac:	a10ff0ef          	jal	ra,a2c1bc <print_str>
  a2cfb0:	481c                	lw	a5,16(s0)
  a2cfb2:	00a3 2c0c 051f      	l.li	a0,0xa32c0c
  a2cfb8:	4bcc                	lw	a1,20(a5)
  a2cfba:	a02ff0ef          	jal	ra,a2c1bc <print_str>
  a2cfbe:	481c                	lw	a5,16(s0)
  a2cfc0:	00a3 2c24 051f      	l.li	a0,0xa32c24
  a2cfc6:	4b8c                	lw	a1,16(a5)
  a2cfc8:	9f4ff0ef          	jal	ra,a2c1bc <print_str>
  a2cfcc:	481c                	lw	a5,16(s0)
  a2cfce:	00a3 2c3c 051f      	l.li	a0,0xa32c3c
  a2cfd4:	478c                	lw	a1,8(a5)
  a2cfd6:	9e6ff0ef          	jal	ra,a2c1bc <print_str>
  a2cfda:	481c                	lw	a5,16(s0)
  a2cfdc:	00a3 2c54 051f      	l.li	a0,0xa32c54
  a2cfe2:	43cc                	lw	a1,4(a5)
  a2cfe4:	9d8ff0ef          	jal	ra,a2c1bc <print_str>
  a2cfe8:	481c                	lw	a5,16(s0)
  a2cfea:	00a3 2c6c 051f      	l.li	a0,0xa32c6c
  a2cff0:	438c                	lw	a1,0(a5)
  a2cff2:	9caff0ef          	jal	ra,a2c1bc <print_str>
  a2cff6:	481c                	lw	a5,16(s0)
  a2cff8:	00a3 2c84 051f      	l.li	a0,0xa32c84
  a2cffe:	08c7a583          	lw	a1,140(a5)
  a2d002:	9baff0ef          	jal	ra,a2c1bc <print_str>
  a2d006:	481c                	lw	a5,16(s0)
  a2d008:	00a3 2c9c 051f      	l.li	a0,0xa32c9c
  a2d00e:	4fcc                	lw	a1,28(a5)
  a2d010:	9acff0ef          	jal	ra,a2c1bc <print_str>
  a2d014:	481c                	lw	a5,16(s0)
  a2d016:	00a3 2cb4 051f      	l.li	a0,0xa32cb4
  a2d01c:	47cc                	lw	a1,12(a5)
  a2d01e:	99eff0ef          	jal	ra,a2c1bc <print_str>
  a2d022:	481c                	lw	a5,16(s0)
  a2d024:	00a3 2ccc 051f      	l.li	a0,0xa32ccc
  a2d02a:	4f8c                	lw	a1,24(a5)
  a2d02c:	990ff0ef          	jal	ra,a2c1bc <print_str>
  a2d030:	481c                	lw	a5,16(s0)
  a2d032:	00a3 2ce4 051f      	l.li	a0,0xa32ce4
  a2d038:	0887a583          	lw	a1,136(a5)
  a2d03c:	980ff0ef          	jal	ra,a2c1bc <print_str>
  a2d040:	481c                	lw	a5,16(s0)
  a2d042:	00a3 2cfc 051f      	l.li	a0,0xa32cfc
  a2d048:	0847a583          	lw	a1,132(a5)
  a2d04c:	970ff0ef          	jal	ra,a2c1bc <print_str>
  a2d050:	481c                	lw	a5,16(s0)
  a2d052:	00a3 2d14 051f      	l.li	a0,0xa32d14
  a2d058:	0807a583          	lw	a1,128(a5)
  a2d05c:	960ff0ef          	jal	ra,a2c1bc <print_str>
  a2d060:	481c                	lw	a5,16(s0)
  a2d062:	00a3 2d2c 051f      	l.li	a0,0xa32d2c
  a2d068:	47ec                	lw	a1,76(a5)
  a2d06a:	952ff0ef          	jal	ra,a2c1bc <print_str>
  a2d06e:	481c                	lw	a5,16(s0)
  a2d070:	00a3 2d44 051f      	l.li	a0,0xa32d44
  a2d076:	47ac                	lw	a1,72(a5)
  a2d078:	944ff0ef          	jal	ra,a2c1bc <print_str>
  a2d07c:	481c                	lw	a5,16(s0)
  a2d07e:	00a3 2d5c 051f      	l.li	a0,0xa32d5c
  a2d084:	5fec                	lw	a1,124(a5)
  a2d086:	936ff0ef          	jal	ra,a2c1bc <print_str>
  a2d08a:	481c                	lw	a5,16(s0)
  a2d08c:	00a3 2d74 051f      	l.li	a0,0xa32d74
  a2d092:	5fac                	lw	a1,120(a5)
  a2d094:	928ff0ef          	jal	ra,a2c1bc <print_str>
  a2d098:	481c                	lw	a5,16(s0)
  a2d09a:	00a3 2d8c 051f      	l.li	a0,0xa32d8c
  a2d0a0:	5bec                	lw	a1,116(a5)
  a2d0a2:	91aff0ef          	jal	ra,a2c1bc <print_str>
  a2d0a6:	481c                	lw	a5,16(s0)
  a2d0a8:	00a3 2da4 051f      	l.li	a0,0xa32da4
  a2d0ae:	5bac                	lw	a1,112(a5)
  a2d0b0:	90cff0ef          	jal	ra,a2c1bc <print_str>
  a2d0b4:	481c                	lw	a5,16(s0)
  a2d0b6:	00a3 2dbc 051f      	l.li	a0,0xa32dbc
  a2d0bc:	57ec                	lw	a1,108(a5)
  a2d0be:	8feff0ef          	jal	ra,a2c1bc <print_str>
  a2d0c2:	481c                	lw	a5,16(s0)
  a2d0c4:	00a3 2dd4 051f      	l.li	a0,0xa32dd4
  a2d0ca:	57ac                	lw	a1,104(a5)
  a2d0cc:	8f0ff0ef          	jal	ra,a2c1bc <print_str>
  a2d0d0:	481c                	lw	a5,16(s0)
  a2d0d2:	00a3 2dec 051f      	l.li	a0,0xa32dec
  a2d0d8:	53ec                	lw	a1,100(a5)
  a2d0da:	8e2ff0ef          	jal	ra,a2c1bc <print_str>
  a2d0de:	481c                	lw	a5,16(s0)
  a2d0e0:	00a3 2e04 051f      	l.li	a0,0xa32e04
  a2d0e6:	53ac                	lw	a1,96(a5)
  a2d0e8:	8d4ff0ef          	jal	ra,a2c1bc <print_str>
  a2d0ec:	481c                	lw	a5,16(s0)
  a2d0ee:	00a3 2e1c 051f      	l.li	a0,0xa32e1c
  a2d0f4:	43ec                	lw	a1,68(a5)
  a2d0f6:	8c6ff0ef          	jal	ra,a2c1bc <print_str>
  a2d0fa:	481c                	lw	a5,16(s0)
  a2d0fc:	00a3 2e34 051f      	l.li	a0,0xa32e34
  a2d102:	43ac                	lw	a1,64(a5)
  a2d104:	8b8ff0ef          	jal	ra,a2c1bc <print_str>
  a2d108:	481c                	lw	a5,16(s0)
  a2d10a:	00a3 2e4c 051f      	l.li	a0,0xa32e4c
  a2d110:	5fcc                	lw	a1,60(a5)
  a2d112:	8aaff0ef          	jal	ra,a2c1bc <print_str>
  a2d116:	481c                	lw	a5,16(s0)
  a2d118:	00a3 2e64 051f      	l.li	a0,0xa32e64
  a2d11e:	5f8c                	lw	a1,56(a5)
  a2d120:	89cff0ef          	jal	ra,a2c1bc <print_str>
  a2d124:	481c                	lw	a5,16(s0)
  a2d126:	00a3 2e7c 051f      	l.li	a0,0xa32e7c
  a2d12c:	5bcc                	lw	a1,52(a5)
  a2d12e:	88eff0ef          	jal	ra,a2c1bc <print_str>
  a2d132:	481c                	lw	a5,16(s0)
  a2d134:	00a3 2e94 051f      	l.li	a0,0xa32e94
  a2d13a:	5b8c                	lw	a1,48(a5)
  a2d13c:	880ff0ef          	jal	ra,a2c1bc <print_str>
  a2d140:	481c                	lw	a5,16(s0)
  a2d142:	00a3 2eac 051f      	l.li	a0,0xa32eac
  a2d148:	57cc                	lw	a1,44(a5)
  a2d14a:	872ff0ef          	jal	ra,a2c1bc <print_str>
  a2d14e:	481c                	lw	a5,16(s0)
  a2d150:	00a3 2ec4 051f      	l.li	a0,0xa32ec4
  a2d156:	578c                	lw	a1,40(a5)
  a2d158:	864ff0ef          	jal	ra,a2c1bc <print_str>
  a2d15c:	481c                	lw	a5,16(s0)
  a2d15e:	00a3 2edc 051f      	l.li	a0,0xa32edc
  a2d164:	53cc                	lw	a1,36(a5)
  a2d166:	856ff0ef          	jal	ra,a2c1bc <print_str>
  a2d16a:	481c                	lw	a5,16(s0)
  a2d16c:	00a3 2ef4 051f      	l.li	a0,0xa32ef4
  a2d172:	538c                	lw	a1,32(a5)
  a2d174:	848ff0ef          	jal	ra,a2c1bc <print_str>
  a2d178:	481c                	lw	a5,16(s0)
  a2d17a:	00a3 2f0c 051f      	l.li	a0,0xa32f0c
  a2d180:	4fec                	lw	a1,92(a5)
  a2d182:	83aff0ef          	jal	ra,a2c1bc <print_str>
  a2d186:	481c                	lw	a5,16(s0)
  a2d188:	00a3 2f24 051f      	l.li	a0,0xa32f24
  a2d18e:	4fac                	lw	a1,88(a5)
  a2d190:	82cff0ef          	jal	ra,a2c1bc <print_str>
  a2d194:	481c                	lw	a5,16(s0)
  a2d196:	00a3 2f3c 051f      	l.li	a0,0xa32f3c
  a2d19c:	4bec                	lw	a1,84(a5)
  a2d19e:	81eff0ef          	jal	ra,a2c1bc <print_str>
  a2d1a2:	481c                	lw	a5,16(s0)
  a2d1a4:	00a3 2f54 051f      	l.li	a0,0xa32f54
  a2d1aa:	4bac                	lw	a1,80(a5)
  a2d1ac:	810ff0ef          	jal	ra,a2c1bc <print_str>
  a2d1b0:	00a3 2f6c 051f      	l.li	a0,0xa32f6c
  a2d1b6:	8020                	pop	{ra,s0},16
  a2d1b8:	804ff06f          	j	a2c1bc <print_str>

00a2d1bc <do_process_exception>:
  a2d1bc:	4154                	lw	a3,4(a0)
  a2d1be:	00a067b7          	lui	a5,0xa06
  a2d1c2:	84478713          	addi	a4,a5,-1980 # a05844 <g_exc_info>
  a2d1c6:	cb08                	sw	a0,16(a4)
  a2d1c8:	84478513          	addi	a0,a5,-1980
  a2d1cc:	a336                	sh	a3,2(a4)
  a2d1ce:	dc9ff06f          	j	a2cf96 <exc_info_display.part.2>

00a2d1d2 <do_trap_unknown>:
  a2d1d2:	8028                	push	{ra,s0},-16
  a2d1d4:	842a                	mv	s0,a0
  a2d1d6:	00a3 2b9c 051f      	l.li	a0,0xa32b9c
  a2d1dc:	fe1fe0ef          	jal	ra,a2c1bc <print_str>
  a2d1e0:	8522                	mv	a0,s0
  a2d1e2:	8020                	pop	{ra,s0},16
  a2d1e4:	fd9ff06f          	j	a2d1bc <do_process_exception>

00a2d1e8 <do_trap_insn_misaligned>:
  a2d1e8:	8028                	push	{ra,s0},-16
  a2d1ea:	842a                	mv	s0,a0
  a2d1ec:	00a3 2acc 051f      	l.li	a0,0xa32acc
  a2d1f2:	fcbfe0ef          	jal	ra,a2c1bc <print_str>
  a2d1f6:	8522                	mv	a0,s0
  a2d1f8:	8020                	pop	{ra,s0},16
  a2d1fa:	fc3ff06f          	j	a2d1bc <do_process_exception>

00a2d1fe <do_trap_insn_fault>:
  a2d1fe:	8028                	push	{ra,s0},-16
  a2d200:	842a                	mv	s0,a0
  a2d202:	00a3 2a80 051f      	l.li	a0,0xa32a80
  a2d208:	fb5fe0ef          	jal	ra,a2c1bc <print_str>
  a2d20c:	8522                	mv	a0,s0
  a2d20e:	8020                	pop	{ra,s0},16
  a2d210:	fadff06f          	j	a2d1bc <do_process_exception>

00a2d214 <do_trap_insn_illegal>:
  a2d214:	8028                	push	{ra,s0},-16
  a2d216:	842a                	mv	s0,a0
  a2d218:	00a3 2aa8 051f      	l.li	a0,0xa32aa8
  a2d21e:	f9ffe0ef          	jal	ra,a2c1bc <print_str>
  a2d222:	8522                	mv	a0,s0
  a2d224:	8020                	pop	{ra,s0},16
  a2d226:	f97ff06f          	j	a2d1bc <do_process_exception>

00a2d22a <do_trap_load_misaligned>:
  a2d22a:	8028                	push	{ra,s0},-16
  a2d22c:	842a                	mv	s0,a0
  a2d22e:	00a3 2b18 051f      	l.li	a0,0xa32b18
  a2d234:	f89fe0ef          	jal	ra,a2c1bc <print_str>
  a2d238:	8522                	mv	a0,s0
  a2d23a:	8020                	pop	{ra,s0},16
  a2d23c:	f81ff06f          	j	a2d1bc <do_process_exception>

00a2d240 <do_trap_load_fault>:
  a2d240:	8028                	push	{ra,s0},-16
  a2d242:	842a                	mv	s0,a0
  a2d244:	00a3 2af8 051f      	l.li	a0,0xa32af8
  a2d24a:	f73fe0ef          	jal	ra,a2c1bc <print_str>
  a2d24e:	8522                	mv	a0,s0
  a2d250:	8020                	pop	{ra,s0},16
  a2d252:	f6bff06f          	j	a2d1bc <do_process_exception>

00a2d256 <do_trap_store_misaligned>:
  a2d256:	8028                	push	{ra,s0},-16
  a2d258:	842a                	mv	s0,a0
  a2d25a:	00a3 2b6c 051f      	l.li	a0,0xa32b6c
  a2d260:	f5dfe0ef          	jal	ra,a2c1bc <print_str>
  a2d264:	8522                	mv	a0,s0
  a2d266:	8020                	pop	{ra,s0},16
  a2d268:	f55ff06f          	j	a2d1bc <do_process_exception>

00a2d26c <do_trap_store_fault>:
  a2d26c:	8028                	push	{ra,s0},-16
  a2d26e:	842a                	mv	s0,a0
  a2d270:	00a3 2b40 051f      	l.li	a0,0xa32b40
  a2d276:	f47fe0ef          	jal	ra,a2c1bc <print_str>
  a2d27a:	8522                	mv	a0,s0
  a2d27c:	8020                	pop	{ra,s0},16
  a2d27e:	f3fff06f          	j	a2d1bc <do_process_exception>

00a2d282 <do_trap_ecall_u>:
  a2d282:	8028                	push	{ra,s0},-16
  a2d284:	842a                	mv	s0,a0
  a2d286:	00a3 2a54 051f      	l.li	a0,0xa32a54
  a2d28c:	f31fe0ef          	jal	ra,a2c1bc <print_str>
  a2d290:	8522                	mv	a0,s0
  a2d292:	8020                	pop	{ra,s0},16
  a2d294:	f29ff06f          	j	a2d1bc <do_process_exception>

00a2d298 <do_trap_ecall_s>:
  a2d298:	8028                	push	{ra,s0},-16
  a2d29a:	842a                	mv	s0,a0
  a2d29c:	00a3 2a28 051f      	l.li	a0,0xa32a28
  a2d2a2:	f1bfe0ef          	jal	ra,a2c1bc <print_str>
  a2d2a6:	8522                	mv	a0,s0
  a2d2a8:	8020                	pop	{ra,s0},16
  a2d2aa:	f13ff06f          	j	a2d1bc <do_process_exception>

00a2d2ae <do_trap_ecall_m>:
  a2d2ae:	8028                	push	{ra,s0},-16
  a2d2b0:	842a                	mv	s0,a0
  a2d2b2:	00a3 29fc 051f      	l.li	a0,0xa329fc
  a2d2b8:	f05fe0ef          	jal	ra,a2c1bc <print_str>
  a2d2bc:	8522                	mv	a0,s0
  a2d2be:	8020                	pop	{ra,s0},16
  a2d2c0:	efdff06f          	j	a2d1bc <do_process_exception>

00a2d2c4 <do_trap_break>:
  a2d2c4:	8028                	push	{ra,s0},-16
  a2d2c6:	842a                	mv	s0,a0
  a2d2c8:	00a3 29e8 051f      	l.li	a0,0xa329e8
  a2d2ce:	eeffe0ef          	jal	ra,a2c1bc <print_str>
  a2d2d2:	8522                	mv	a0,s0
  a2d2d4:	8020                	pop	{ra,s0},16
  a2d2d6:	ee7ff06f          	j	a2d1bc <do_process_exception>

00a2d2da <do_insn_page_fault>:
  a2d2da:	8028                	push	{ra,s0},-16
  a2d2dc:	842a                	mv	s0,a0
  a2d2de:	00a3 2970 051f      	l.li	a0,0xa32970
  a2d2e4:	ed9fe0ef          	jal	ra,a2c1bc <print_str>
  a2d2e8:	8522                	mv	a0,s0
  a2d2ea:	8020                	pop	{ra,s0},16
  a2d2ec:	ed1ff06f          	j	a2d1bc <do_process_exception>

00a2d2f0 <do_load_page_fault>:
  a2d2f0:	8028                	push	{ra,s0},-16
  a2d2f2:	842a                	mv	s0,a0
  a2d2f4:	00a3 2990 051f      	l.li	a0,0xa32990
  a2d2fa:	ec3fe0ef          	jal	ra,a2c1bc <print_str>
  a2d2fe:	8522                	mv	a0,s0
  a2d300:	8020                	pop	{ra,s0},16
  a2d302:	ebbff06f          	j	a2d1bc <do_process_exception>

00a2d306 <do_store_page_fault>:
  a2d306:	8028                	push	{ra,s0},-16
  a2d308:	842a                	mv	s0,a0
  a2d30a:	00a3 29c8 051f      	l.li	a0,0xa329c8
  a2d310:	eadfe0ef          	jal	ra,a2c1bc <print_str>
  a2d314:	8522                	mv	a0,s0
  a2d316:	8020                	pop	{ra,s0},16
  a2d318:	ea5ff06f          	j	a2d1bc <do_process_exception>

00a2d31c <do_hard_fault>:
  a2d31c:	8028                	push	{ra,s0},-16
  a2d31e:	842a                	mv	s0,a0
  a2d320:	00a3 2934 051f      	l.li	a0,0xa32934
  a2d326:	e97fe0ef          	jal	ra,a2c1bc <print_str>
  a2d32a:	8522                	mv	a0,s0
  a2d32c:	8020                	pop	{ra,s0},16
  a2d32e:	e8fff06f          	j	a2d1bc <do_process_exception>

00a2d332 <do_lockup>:
  a2d332:	8028                	push	{ra,s0},-16
  a2d334:	842a                	mv	s0,a0
  a2d336:	00a3 29b0 051f      	l.li	a0,0xa329b0
  a2d33c:	e81fe0ef          	jal	ra,a2c1bc <print_str>
  a2d340:	8522                	mv	a0,s0
  a2d342:	8020                	pop	{ra,s0},16
  a2d344:	e79ff06f          	j	a2d1bc <do_process_exception>

00a2d348 <default_handler>:
  a2d348:	8018                	push	{ra},-16
  a2d34a:	bcfff0ef          	jal	ra,a2cf18 <interrupt_number_get>
  a2d34e:	85aa                	mv	a1,a0
  a2d350:	00a3 2908 051f      	l.li	a0,0xa32908
  a2d356:	e67fe0ef          	jal	ra,a2c1bc <print_str>
  a2d35a:	a001                	j	a2d35a <default_handler+0x12>

00a2d35c <nmi_handler>:
  a2d35c:	8018                	push	{ra},-16
  a2d35e:	bbbff0ef          	jal	ra,a2cf18 <interrupt_number_get>
  a2d362:	85aa                	mv	a1,a0
  a2d364:	00a3 2fa8 051f      	l.li	a0,0xa32fa8
  a2d36a:	e53fe0ef          	jal	ra,a2c1bc <print_str>
  a2d36e:	a001                	j	a2d36e <nmi_handler+0x12>

00a2d370 <partition_get_addr>:
  a2d370:	0020 0380 051f      	l.li	a0,0x200380
  a2d376:	8082                	ret

00a2d378 <partition_get_path_map>:
  a2d378:	00a0 585c 079f      	l.li	a5,0xa0585c
  a2d37e:	c11c                	sw	a5,0(a0)
  a2d380:	4501                	li	a0,0
  a2d382:	8082                	ret

00a2d384 <upg_progress_callbck>:
  a2d384:	8128                	push	{ra,s0},-32
  a2d386:	842a                	mv	s0,a0
  a2d388:	00a3 302c 051f      	l.li	a0,0xa3302c
  a2d38e:	809ff0ef          	jal	ra,a2cb96 <serial_puts>
  a2d392:	640413bb          	bnei	s0,100,a2d3a0 <upg_progress_callbck+0x1c>
  a2d396:	00a3 3044 051f      	l.li	a0,0xa33044
  a2d39c:	ffaff0ef          	jal	ra,a2cb96 <serial_puts>
  a2d3a0:	47a9                	li	a5,10
  a2d3a2:	02f45733          	divu	a4,s0,a5
  a2d3a6:	0068                	addi	a0,sp,12
  a2d3a8:	00010723          	sb	zero,14(sp)
  a2d3ac:	02f77733          	remu	a4,a4,a5
  a2d3b0:	02f477b3          	remu	a5,s0,a5
  a2d3b4:	03070713          	addi	a4,a4,48 # 40000030 <_gp_+0x3f5cb81c>
  a2d3b8:	00e10623          	sb	a4,12(sp)
  a2d3bc:	03078793          	addi	a5,a5,48
  a2d3c0:	00f106a3          	sb	a5,13(sp)
  a2d3c4:	fd2ff0ef          	jal	ra,a2cb96 <serial_puts>
  a2d3c8:	00a3 3048 051f      	l.li	a0,0xa33048
  a2d3ce:	fc8ff0ef          	jal	ra,a2cb96 <serial_puts>
  a2d3d2:	640413bb          	bnei	s0,100,a2d3e0 <upg_progress_callbck+0x5c>
  a2d3d6:	00a3 30e0 051f      	l.li	a0,0xa330e0
  a2d3dc:	fbaff0ef          	jal	ra,a2cb96 <serial_puts>
  a2d3e0:	8124                	popret	{ra,s0},32

00a2d3e2 <check_fota_msid>:
  a2d3e2:	8138                	push	{ra,s0-s1},-32
  a2d3e4:	842a                	mv	s0,a0
  a2d3e6:	84ae                	mv	s1,a1
  a2d3e8:	4611                	li	a2,4
  a2d3ea:	0f800593          	li	a1,248
  a2d3ee:	0068                	addi	a0,sp,12
  a2d3f0:	c602                	sw	zero,12(sp)
  a2d3f2:	d86fd0ef          	jal	ra,a2a978 <uapi_efuse_read_buffer>
  a2d3f6:	c519                	beqz	a0,a2d404 <check_fota_msid+0x22>
  a2d3f8:	85aa                	mv	a1,a0
  a2d3fa:	00a3 2fd0 051f      	l.li	a0,0xa32fd0
  a2d400:	dbdfe0ef          	jal	ra,a2c1bc <print_str>
  a2d404:	47b2                	lw	a5,12(sp)
  a2d406:	8c3d                	xor	s0,s0,a5
  a2d408:	8c65                	and	s0,s0,s1
  a2d40a:	c411                	beqz	s0,a2d416 <check_fota_msid+0x34>
  a2d40c:	00a3 2ff0 051f      	l.li	a0,0xa32ff0
  a2d412:	dabfe0ef          	jal	ra,a2c1bc <print_str>
  a2d416:	4501                	li	a0,0
  a2d418:	8134                	popret	{ra,s0-s1},32

00a2d41a <ws63_upg_putc>:
  a2d41a:	f5cff06f          	j	a2cb76 <serial_putc>

00a2d41e <upg_free_port>:
  a2d41e:	8038                	push	{ra,s0-s1},-16
  a2d420:	84aa                	mv	s1,a0
  a2d422:	107040ef          	jal	ra,a31d28 <global_interrupt_lock>
  a2d426:	842a                	mv	s0,a0
  a2d428:	8526                	mv	a0,s1
  a2d42a:	d9cfc0ef          	jal	ra,a299c6 <free>
  a2d42e:	8522                	mv	a0,s0
  a2d430:	8030                	pop	{ra,s0-s1},16
  a2d432:	10f0406f          	j	a31d40 <global_interrupt_restore>

00a2d436 <upg_malloc_port>:
  a2d436:	8038                	push	{ra,s0-s1},-16
  a2d438:	842a                	mv	s0,a0
  a2d43a:	0ef040ef          	jal	ra,a31d28 <global_interrupt_lock>
  a2d43e:	84aa                	mv	s1,a0
  a2d440:	8522                	mv	a0,s0
  a2d442:	d4efc0ef          	jal	ra,a29990 <malloc>
  a2d446:	842a                	mv	s0,a0
  a2d448:	8526                	mv	a0,s1
  a2d44a:	0f7040ef          	jal	ra,a31d40 <global_interrupt_restore>
  a2d44e:	8522                	mv	a0,s0
  a2d450:	8034                	popret	{ra,s0-s1},16

00a2d452 <upg_get_ids_map>:
  a2d452:	00a3 3fa0 079f      	l.li	a5,0xa33fa0
  a2d458:	c11c                	sw	a5,0(a0)
  a2d45a:	450d                	li	a0,3
  a2d45c:	8082                	ret

00a2d45e <upg_img_in_set>:
  a2d45e:	00a3 3fc8 079f      	l.li	a5,0xa33fc8
  a2d464:	43d4                	lw	a3,4(a5)
  a2d466:	ce89                	beqz	a3,a2d480 <upg_img_in_set+0x22>
  a2d468:	4398                	lw	a4,0(a5)
  a2d46a:	4781                	li	a5,0
  a2d46c:	0711                	addi	a4,a4,4
  a2d46e:	ffc72603          	lw	a2,-4(a4)
  a2d472:	00a60763          	beq	a2,a0,a2d480 <upg_img_in_set+0x22>
  a2d476:	0785                	addi	a5,a5,1
  a2d478:	fef69ae3          	bne	a3,a5,a2d46c <upg_img_in_set+0xe>
  a2d47c:	4501                	li	a0,0
  a2d47e:	8082                	ret
  a2d480:	4505                	li	a0,1
  a2d482:	8082                	ret

00a2d484 <upg_get_upgrade_flag_flash_start_addr>:
  a2d484:	8128                	push	{ra,s0},-32
  a2d486:	842a                	mv	s0,a0
  a2d488:	004c                	addi	a1,sp,4
  a2d48a:	02100513          	li	a0,33
  a2d48e:	051000ef          	jal	ra,a2dcde <uapi_partition_get_info>
  a2d492:	e519                	bnez	a0,a2d4a0 <upg_get_upgrade_flag_flash_start_addr+0x1c>
  a2d494:	4732                	lw	a4,12(sp)
  a2d496:	47a2                	lw	a5,8(sp)
  a2d498:	97ba                	add	a5,a5,a4
  a2d49a:	777d                	lui	a4,0xfffff
  a2d49c:	97ba                	add	a5,a5,a4
  a2d49e:	c01c                	sw	a5,0(s0)
  a2d4a0:	8124                	popret	{ra,s0},32

00a2d4a2 <upg_get_progress_status_start_addr>:
  a2d4a2:	8138                	push	{ra,s0-s1},-32
  a2d4a4:	84aa                	mv	s1,a0
  a2d4a6:	842e                	mv	s0,a1
  a2d4a8:	02100513          	li	a0,33
  a2d4ac:	004c                	addi	a1,sp,4
  a2d4ae:	031000ef          	jal	ra,a2dcde <uapi_partition_get_info>
  a2d4b2:	e909                	bnez	a0,a2d4c4 <upg_get_progress_status_start_addr+0x22>
  a2d4b4:	4732                	lw	a4,12(sp)
  a2d4b6:	47a2                	lw	a5,8(sp)
  a2d4b8:	97ba                	add	a5,a5,a4
  a2d4ba:	7775                	lui	a4,0xffffd
  a2d4bc:	97ba                	add	a5,a5,a4
  a2d4be:	c09c                	sw	a5,0(s1)
  a2d4c0:	678d                	lui	a5,0x3
  a2d4c2:	c01c                	sw	a5,0(s0)
  a2d4c4:	8134                	popret	{ra,s0-s1},32

00a2d4c6 <upg_get_fota_partiton_area_addr>:
  a2d4c6:	8138                	push	{ra,s0-s1},-32
  a2d4c8:	84aa                	mv	s1,a0
  a2d4ca:	842e                	mv	s0,a1
  a2d4cc:	02100513          	li	a0,33
  a2d4d0:	004c                	addi	a1,sp,4
  a2d4d2:	00d000ef          	jal	ra,a2dcde <uapi_partition_get_info>
  a2d4d6:	e509                	bnez	a0,a2d4e0 <upg_get_fota_partiton_area_addr+0x1a>
  a2d4d8:	47a2                	lw	a5,8(sp)
  a2d4da:	c09c                	sw	a5,0(s1)
  a2d4dc:	47b2                	lw	a5,12(sp)
  a2d4de:	c01c                	sw	a5,0(s0)
  a2d4e0:	8134                	popret	{ra,s0-s1},32

00a2d4e2 <upg_reboot>:
  a2d4e2:	8018                	push	{ra},-16
  a2d4e4:	1f400513          	li	a0,500
  a2d4e8:	e51fc0ef          	jal	ra,a2a338 <uapi_tcxo_delay_ms>
  a2d4ec:	8010                	pop	{ra},16
  a2d4ee:	8e9fd06f          	j	a2add6 <hal_reboot_chip>

00a2d4f2 <upg_progress_callback_register>:
  a2d4f2:	8018                	push	{ra},-16
  a2d4f4:	00a2 d384 051f      	l.li	a0,0xa2d384
  a2d4fa:	341010ef          	jal	ra,a2f03a <uapi_upg_register_progress_callback>
  a2d4fe:	c519                	beqz	a0,a2d50c <upg_progress_callback_register+0x1a>
  a2d500:	00a3 3004 051f      	l.li	a0,0xa33004
  a2d506:	8010                	pop	{ra},16
  a2d508:	cb5fe06f          	j	a2c1bc <print_str>
  a2d50c:	8014                	popret	{ra},16

00a2d50e <upg_watchdog_kick>:
  a2d50e:	bd8fd06f          	j	a2a8e6 <uapi_watchdog_kick>

00a2d512 <upg_get_flash_base_addr>:
  a2d512:	00200537          	lui	a0,0x200
  a2d516:	8082                	ret

00a2d518 <upg_get_flash_size>:
  a2d518:	00800537          	lui	a0,0x800
  a2d51c:	8082                	ret

00a2d51e <upg_flash_read>:
  a2d51e:	87b2                	mv	a5,a2
  a2d520:	862e                	mv	a2,a1
  a2d522:	85be                	mv	a1,a5
  a2d524:	998ff06f          	j	a2c6bc <uapi_sfc_reg_read>

00a2d528 <upg_flash_erase>:
  a2d528:	8098                	push	{ra,s0-s7},-48
  a2d52a:	00b50a33          	add	s4,a0,a1
  a2d52e:	014a1793          	slli	a5,s4,0x14
  a2d532:	84aa                	mv	s1,a0
  a2d534:	89d2                	mv	s3,s4
  a2d536:	c791                	beqz	a5,a2d542 <upg_flash_erase+0x1a>
  a2d538:	79fd                	lui	s3,0xfffff
  a2d53a:	013a79b3          	and	s3,s4,s3
  a2d53e:	6785                	lui	a5,0x1
  a2d540:	99be                	add	s3,s3,a5
  a2d542:	6505                	lui	a0,0x1
  a2d544:	01b000ef          	jal	ra,a2dd5e <upg_malloc>
  a2d548:	8aaa                	mv	s5,a0
  a2d54a:	c909                	beqz	a0,a2d55c <upg_flash_erase+0x34>
  a2d54c:	6505                	lui	a0,0x1
  a2d54e:	011000ef          	jal	ra,a2dd5e <upg_malloc>
  a2d552:	8b2a                	mv	s6,a0
  a2d554:	e901                	bnez	a0,a2d564 <upg_flash_erase+0x3c>
  a2d556:	8556                	mv	a0,s5
  a2d558:	021000ef          	jal	ra,a2dd78 <upg_free>
  a2d55c:	80000437          	lui	s0,0x80000
  a2d560:	0415                	addi	s0,s0,5 # 80000005 <_gp_+0x7f5cb7f1>
  a2d562:	a881                	j	a2d5b2 <upg_flash_erase+0x8a>
  a2d564:	797d                	lui	s2,0xfffff
  a2d566:	0124f933          	and	s2,s1,s2
  a2d56a:	412484b3          	sub	s1,s1,s2
  a2d56e:	e48d                	bnez	s1,a2d598 <upg_flash_erase+0x70>
  a2d570:	41498bb3          	sub	s7,s3,s4
  a2d574:	040b9163          	bnez	s7,a2d5b6 <upg_flash_erase+0x8e>
  a2d578:	412985b3          	sub	a1,s3,s2
  a2d57c:	854a                	mv	a0,s2
  a2d57e:	b10ff0ef          	jal	ra,a2c88e <uapi_sfc_reg_erase>
  a2d582:	842a                	mv	s0,a0
  a2d584:	e10d                	bnez	a0,a2d5a6 <upg_flash_erase+0x7e>
  a2d586:	e0a1                	bnez	s1,a2d5c6 <upg_flash_erase+0x9e>
  a2d588:	000b8f63          	beqz	s7,a2d5a6 <upg_flash_erase+0x7e>
  a2d58c:	865e                	mv	a2,s7
  a2d58e:	85da                	mv	a1,s6
  a2d590:	8552                	mv	a0,s4
  a2d592:	9feff0ef          	jal	ra,a2c790 <uapi_sfc_reg_write>
  a2d596:	a835                	j	a2d5d2 <upg_flash_erase+0xaa>
  a2d598:	8626                	mv	a2,s1
  a2d59a:	85d6                	mv	a1,s5
  a2d59c:	854a                	mv	a0,s2
  a2d59e:	91eff0ef          	jal	ra,a2c6bc <uapi_sfc_reg_read>
  a2d5a2:	842a                	mv	s0,a0
  a2d5a4:	d571                	beqz	a0,a2d570 <upg_flash_erase+0x48>
  a2d5a6:	8556                	mv	a0,s5
  a2d5a8:	7d0000ef          	jal	ra,a2dd78 <upg_free>
  a2d5ac:	855a                	mv	a0,s6
  a2d5ae:	7ca000ef          	jal	ra,a2dd78 <upg_free>
  a2d5b2:	8522                	mv	a0,s0
  a2d5b4:	8094                	popret	{ra,s0-s7},48
  a2d5b6:	865e                	mv	a2,s7
  a2d5b8:	85da                	mv	a1,s6
  a2d5ba:	8552                	mv	a0,s4
  a2d5bc:	900ff0ef          	jal	ra,a2c6bc <uapi_sfc_reg_read>
  a2d5c0:	842a                	mv	s0,a0
  a2d5c2:	f175                	bnez	a0,a2d5a6 <upg_flash_erase+0x7e>
  a2d5c4:	bf55                	j	a2d578 <upg_flash_erase+0x50>
  a2d5c6:	8626                	mv	a2,s1
  a2d5c8:	85d6                	mv	a1,s5
  a2d5ca:	854a                	mv	a0,s2
  a2d5cc:	9c4ff0ef          	jal	ra,a2c790 <uapi_sfc_reg_write>
  a2d5d0:	dd45                	beqz	a0,a2d588 <upg_flash_erase+0x60>
  a2d5d2:	842a                	mv	s0,a0
  a2d5d4:	bfc9                	j	a2d5a6 <upg_flash_erase+0x7e>

00a2d5d6 <upg_flash_write>:
  a2d5d6:	8048                	push	{ra,s0-s2},-16
  a2d5d8:	842a                	mv	s0,a0
  a2d5da:	84ae                	mv	s1,a1
  a2d5dc:	8932                	mv	s2,a2
  a2d5de:	e699                	bnez	a3,a2d5ec <upg_flash_write+0x16>
  a2d5e0:	8626                	mv	a2,s1
  a2d5e2:	85ca                	mv	a1,s2
  a2d5e4:	8522                	mv	a0,s0
  a2d5e6:	8040                	pop	{ra,s0-s2},16
  a2d5e8:	9a8ff06f          	j	a2c790 <uapi_sfc_reg_write>
  a2d5ec:	f3dff0ef          	jal	ra,a2d528 <upg_flash_erase>
  a2d5f0:	d965                	beqz	a0,a2d5e0 <upg_flash_write+0xa>
  a2d5f2:	8044                	popret	{ra,s0-s2},16

00a2d5f4 <upg_get_root_public_key>:
  a2d5f4:	8118                	push	{ra},-32
  a2d5f6:	004c                	addi	a1,sp,4
  a2d5f8:	450d                	li	a0,3
  a2d5fa:	6e4000ef          	jal	ra,a2dcde <uapi_partition_get_info>
  a2d5fe:	4781                	li	a5,0
  a2d600:	e519                	bnez	a0,a2d60e <upg_get_root_public_key+0x1a>
  a2d602:	4722                	lw	a4,8(sp)
  a2d604:	002007b7          	lui	a5,0x200
  a2d608:	97ba                	add	a5,a5,a4
  a2d60a:	04078793          	addi	a5,a5,64 # 200040 <__heap_size+0x1e2a48>
  a2d60e:	853e                	mv	a0,a5
  a2d610:	8114                	popret	{ra},32

00a2d612 <upg_check_fota_information>:
  a2d612:	8028                	push	{ra,s0},-16
  a2d614:	842a                	mv	s0,a0
  a2d616:	590c                	lw	a1,48(a0)
  a2d618:	5548                	lw	a0,44(a0)
  a2d61a:	dc9ff0ef          	jal	ra,a2d3e2 <check_fota_msid>
  a2d61e:	e901                	bnez	a0,a2d62e <upg_check_fota_information+0x1c>
  a2d620:	11c42583          	lw	a1,284(s0)
  a2d624:	11842503          	lw	a0,280(s0)
  a2d628:	8020                	pop	{ra,s0},16
  a2d62a:	db9ff06f          	j	a2d3e2 <check_fota_msid>
  a2d62e:	8024                	popret	{ra,s0},16

00a2d630 <ws63_upg_init>:
  a2d630:	8128                	push	{ra,s0},-32
  a2d632:	00a2 d436 079f      	l.li	a5,0xa2d436
  a2d638:	c23e                	sw	a5,4(sp)
  a2d63a:	00a2 d41e 079f      	l.li	a5,0xa2d41e
  a2d640:	c43e                	sw	a5,8(sp)
  a2d642:	0048                	addi	a0,sp,4
  a2d644:	00a2 d41a 079f      	l.li	a5,0xa2d41a
  a2d64a:	c63e                	sw	a5,12(sp)
  a2d64c:	49d000ef          	jal	ra,a2e2e8 <uapi_upg_init>
  a2d650:	842a                	mv	s0,a0
  a2d652:	c901                	beqz	a0,a2d662 <ws63_upg_init+0x32>
  a2d654:	00a3 304c 051f      	l.li	a0,0xa3304c
  a2d65a:	b63fe0ef          	jal	ra,a2c1bc <print_str>
  a2d65e:	8522                	mv	a0,s0
  a2d660:	8124                	popret	{ra,s0},32
  a2d662:	e91ff0ef          	jal	ra,a2d4f2 <upg_progress_callback_register>
  a2d666:	00a3 3064 051f      	l.li	a0,0xa33064
  a2d66c:	db2ff0ef          	jal	ra,a2cc1e <boot_msg0>
  a2d670:	b7fd                	j	a2d65e <ws63_upg_init+0x2e>

00a2d672 <upg_erase_whole_image>:
  a2d672:	8118                	push	{ra},-32
  a2d674:	4148                	lw	a0,4(a0)
  a2d676:	004c                	addi	a1,sp,4
  a2d678:	79a000ef          	jal	ra,a2de12 <upg_get_image_info>
  a2d67c:	e509                	bnez	a0,a2d686 <upg_erase_whole_image+0x14>
  a2d67e:	45b2                	lw	a1,12(sp)
  a2d680:	4522                	lw	a0,8(sp)
  a2d682:	ea7ff0ef          	jal	ra,a2d528 <upg_flash_erase>
  a2d686:	8114                	popret	{ra},32

00a2d688 <upg_cryto_init>:
  a2d688:	8148                	push	{ra,s0-s2},-32
  a2d68a:	47f1                	li	a5,28
  a2d68c:	5178                	lw	a4,100(a0)
  a2d68e:	06c50913          	addi	s2,a0,108 # 106c <ccause+0xaa>
  a2d692:	c43e                	sw	a5,8(sp)
  a2d694:	4785                	li	a5,1
  a2d696:	00f10623          	sb	a5,12(sp)
  a2d69a:	00010023          	sb	zero,0(sp)
  a2d69e:	000100a3          	sb	zero,1(sp)
  a2d6a2:	00010123          	sb	zero,2(sp)
  a2d6a6:	c24a                	sw	s2,4(sp)
  a2d6a8:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a2d6ae:	4401                	li	s0,0
  a2d6b0:	02f71d63          	bne	a4,a5,a2d6ea <upg_cryto_init+0x62>
  a2d6b4:	00a0 585c 049f      	l.li	s1,0xa0585c
  a2d6ba:	030007b7          	lui	a5,0x3000
  a2d6be:	00d78713          	addi	a4,a5,13 # 300000d <_gp_+0x25cb7f9>
  a2d6c2:	842a                	mv	s0,a0
  a2d6c4:	07cd                	addi	a5,a5,19
  a2d6c6:	46f1                	li	a3,28
  a2d6c8:	864a                	mv	a2,s2
  a2d6ca:	45f1                	li	a1,28
  a2d6cc:	03c48513          	addi	a0,s1,60
  a2d6d0:	d8d8                	sw	a4,52(s1)
  a2d6d2:	c09c                	sw	a5,0(s1)
  a2d6d4:	3c6030ef          	jal	ra,a30a9a <memcpy_s>
  a2d6d8:	c919                	beqz	a0,a2d6ee <upg_cryto_init+0x66>
  a2d6da:	00a3 3074 051f      	l.li	a0,0xa33074
  a2d6e0:	80000437          	lui	s0,0x80000
  a2d6e4:	ad9fe0ef          	jal	ra,a2c1bc <print_str>
  a2d6e8:	0411                	addi	s0,s0,4 # 80000004 <_gp_+0x7f5cb7f0>
  a2d6ea:	8522                	mv	a0,s0
  a2d6ec:	8144                	popret	{ra,s0-s2},32
  a2d6ee:	46f1                	li	a3,28
  a2d6f0:	864a                	mv	a2,s2
  a2d6f2:	45f1                	li	a1,28
  a2d6f4:	00848513          	addi	a0,s1,8
  a2d6f8:	3a2030ef          	jal	ra,a30a9a <memcpy_s>
  a2d6fc:	c509                	beqz	a0,a2d706 <upg_cryto_init+0x7e>
  a2d6fe:	00a3 30ac 051f      	l.li	a0,0xa330ac
  a2d704:	bff1                	j	a2d6e0 <upg_cryto_init+0x58>
  a2d706:	08c40413          	addi	s0,s0,140
  a2d70a:	46c1                	li	a3,16
  a2d70c:	8622                	mv	a2,s0
  a2d70e:	45c1                	li	a1,16
  a2d710:	05848513          	addi	a0,s1,88
  a2d714:	386030ef          	jal	ra,a30a9a <memcpy_s>
  a2d718:	c509                	beqz	a0,a2d722 <upg_cryto_init+0x9a>
  a2d71a:	00a3 30e4 051f      	l.li	a0,0xa330e4
  a2d720:	b7c1                	j	a2d6e0 <upg_cryto_init+0x58>
  a2d722:	46c1                	li	a3,16
  a2d724:	8622                	mv	a2,s0
  a2d726:	45c1                	li	a1,16
  a2d728:	02448513          	addi	a0,s1,36
  a2d72c:	36e030ef          	jal	ra,a30a9a <memcpy_s>
  a2d730:	c509                	beqz	a0,a2d73a <upg_cryto_init+0xb2>
  a2d732:	00a3 3118 051f      	l.li	a0,0xa33118
  a2d738:	b765                	j	a2d6e0 <upg_cryto_init+0x58>
  a2d73a:	eb2fc0ef          	jal	ra,a29dec <drv_rom_cipher_symc_init>
  a2d73e:	842a                	mv	s0,a0
  a2d740:	c901                	beqz	a0,a2d750 <upg_cryto_init+0xc8>
  a2d742:	85aa                	mv	a1,a0
  a2d744:	00a3 314c 051f      	l.li	a0,0xa3314c
  a2d74a:	a73fe0ef          	jal	ra,a2c1bc <print_str>
  a2d74e:	bf71                	j	a2d6ea <upg_cryto_init+0x62>
  a2d750:	58d0                	lw	a2,52(s1)
  a2d752:	858a                	mv	a1,sp
  a2d754:	03848513          	addi	a0,s1,56
  a2d758:	c3efc0ef          	jal	ra,a29b96 <drv_rom_cipher_create_keyslot>
  a2d75c:	842a                	mv	s0,a0
  a2d75e:	c911                	beqz	a0,a2d772 <upg_cryto_init+0xea>
  a2d760:	85aa                	mv	a1,a0
  a2d762:	00a3 3180 051f      	l.li	a0,0xa33180
  a2d768:	a55fe0ef          	jal	ra,a2c1bc <print_str>
  a2d76c:	ed0fc0ef          	jal	ra,a29e3c <drv_rom_cipher_symc_deinit>
  a2d770:	bfad                	j	a2d6ea <upg_cryto_init+0x62>
  a2d772:	4090                	lw	a2,0(s1)
  a2d774:	858a                	mv	a1,sp
  a2d776:	00448513          	addi	a0,s1,4
  a2d77a:	c1cfc0ef          	jal	ra,a29b96 <drv_rom_cipher_create_keyslot>
  a2d77e:	842a                	mv	s0,a0
  a2d780:	d52d                	beqz	a0,a2d6ea <upg_cryto_init+0x62>
  a2d782:	85aa                	mv	a1,a0
  a2d784:	00a3 31c4 051f      	l.li	a0,0xa331c4
  a2d78a:	a33fe0ef          	jal	ra,a2c1bc <print_str>
  a2d78e:	5c88                	lw	a0,56(s1)
  a2d790:	c82fc0ef          	jal	ra,a29c12 <drv_rom_cipher_destroy_keyslot>
  a2d794:	bfe1                	j	a2d76c <upg_cryto_init+0xe4>

00a2d796 <upg_cryto_deinit>:
  a2d796:	5178                	lw	a4,100(a0)
  a2d798:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a2d79e:	00f70463          	beq	a4,a5,a2d7a6 <upg_cryto_deinit+0x10>
  a2d7a2:	4501                	li	a0,0
  a2d7a4:	8082                	ret
  a2d7a6:	8038                	push	{ra,s0-s1},-16
  a2d7a8:	00a0 585c 049f      	l.li	s1,0xa0585c
  a2d7ae:	5c88                	lw	a0,56(s1)
  a2d7b0:	c62fc0ef          	jal	ra,a29c12 <drv_rom_cipher_destroy_keyslot>
  a2d7b4:	842a                	mv	s0,a0
  a2d7b6:	40c8                	lw	a0,4(s1)
  a2d7b8:	c5afc0ef          	jal	ra,a29c12 <drv_rom_cipher_destroy_keyslot>
  a2d7bc:	8c49                	or	s0,s0,a0
  a2d7be:	e7efc0ef          	jal	ra,a29e3c <drv_rom_cipher_symc_deinit>
  a2d7c2:	8d41                	or	a0,a0,s0
  a2d7c4:	8034                	popret	{ra,s0-s1},16

00a2d7c6 <upg_process_cryto_info>:
  a2d7c6:	219c                	lbu	a5,0(a1)
  a2d7c8:	e789                	bnez	a5,a2d7d2 <upg_process_cryto_info+0xc>
  a2d7ca:	00052023          	sw	zero,0(a0)
  a2d7ce:	4501                	li	a0,0
  a2d7d0:	8082                	ret
  a2d7d2:	30000793          	li	a5,768
  a2d7d6:	c11c                	sw	a5,0(a0)
  a2d7d8:	00058023          	sb	zero,0(a1)
  a2d7dc:	bfcd                	j	a2d7ce <upg_process_cryto_info+0x8>

00a2d7de <upg_decry_fota_pkt>:
  a2d7de:	8028                	push	{ra,s0},-16
  a2d7e0:	5278                	lw	a4,100(a2)
  a2d7e2:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a2d7e8:	4401                	li	s0,0
  a2d7ea:	02f71863          	bne	a4,a5,a2d81a <upg_decry_fota_pkt+0x3c>
  a2d7ee:	87aa                	mv	a5,a0
  a2d7f0:	00a0 585c 051f      	l.li	a0,0xa0585c
  a2d7f6:	88ae                	mv	a7,a1
  a2d7f8:	02450593          	addi	a1,a0,36
  a2d7fc:	4148                	lw	a0,4(a0)
  a2d7fe:	4801                	li	a6,0
  a2d800:	86be                	mv	a3,a5
  a2d802:	4701                	li	a4,0
  a2d804:	4641                	li	a2,16
  a2d806:	e46fc0ef          	jal	ra,a29e4c <drv_rom_cipher_symc_decrypt>
  a2d80a:	842a                	mv	s0,a0
  a2d80c:	c519                	beqz	a0,a2d81a <upg_decry_fota_pkt+0x3c>
  a2d80e:	85aa                	mv	a1,a0
  a2d810:	00a3 3208 051f      	l.li	a0,0xa33208
  a2d816:	9a7fe0ef          	jal	ra,a2c1bc <print_str>
  a2d81a:	8522                	mv	a0,s0
  a2d81c:	8024                	popret	{ra,s0},16

00a2d81e <upg_encry_fota_pkt>:
  a2d81e:	8028                	push	{ra,s0},-16
  a2d820:	5278                	lw	a4,100(a2)
  a2d822:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a2d828:	4401                	li	s0,0
  a2d82a:	02f71863          	bne	a4,a5,a2d85a <upg_encry_fota_pkt+0x3c>
  a2d82e:	87aa                	mv	a5,a0
  a2d830:	00a0 585c 051f      	l.li	a0,0xa0585c
  a2d836:	88ae                	mv	a7,a1
  a2d838:	05850593          	addi	a1,a0,88
  a2d83c:	5d08                	lw	a0,56(a0)
  a2d83e:	4801                	li	a6,0
  a2d840:	86be                	mv	a3,a5
  a2d842:	4701                	li	a4,0
  a2d844:	4641                	li	a2,16
  a2d846:	e06fc0ef          	jal	ra,a29e4c <drv_rom_cipher_symc_decrypt>
  a2d84a:	842a                	mv	s0,a0
  a2d84c:	c519                	beqz	a0,a2d85a <upg_encry_fota_pkt+0x3c>
  a2d84e:	85aa                	mv	a1,a0
  a2d850:	00a3 3254 051f      	l.li	a0,0xa33254
  a2d856:	967fe0ef          	jal	ra,a2c1bc <print_str>
  a2d85a:	8522                	mv	a0,s0
  a2d85c:	8024                	popret	{ra,s0},16

00a2d85e <mfg_malloc>:
  a2d85e:	8038                	push	{ra,s0-s1},-16
  a2d860:	842a                	mv	s0,a0
  a2d862:	4c6040ef          	jal	ra,a31d28 <global_interrupt_lock>
  a2d866:	84aa                	mv	s1,a0
  a2d868:	8522                	mv	a0,s0
  a2d86a:	926fc0ef          	jal	ra,a29990 <malloc>
  a2d86e:	842a                	mv	s0,a0
  a2d870:	8526                	mv	a0,s1
  a2d872:	4ce040ef          	jal	ra,a31d40 <global_interrupt_restore>
  a2d876:	8522                	mv	a0,s0
  a2d878:	8034                	popret	{ra,s0-s1},16

00a2d87a <mfg_free>:
  a2d87a:	8038                	push	{ra,s0-s1},-16
  a2d87c:	84aa                	mv	s1,a0
  a2d87e:	4aa040ef          	jal	ra,a31d28 <global_interrupt_lock>
  a2d882:	842a                	mv	s0,a0
  a2d884:	8526                	mv	a0,s1
  a2d886:	940fc0ef          	jal	ra,a299c6 <free>
  a2d88a:	8522                	mv	a0,s0
  a2d88c:	8030                	pop	{ra,s0-s1},16
  a2d88e:	4b20406f          	j	a31d40 <global_interrupt_restore>

00a2d892 <mfg_flash_read>:
  a2d892:	8138                	push	{ra,s0-s1},-32
  a2d894:	84aa                	mv	s1,a0
  a2d896:	842e                	mv	s0,a1
  a2d898:	46b1                	li	a3,12
  a2d89a:	45b1                	li	a1,12
  a2d89c:	4601                	li	a2,0
  a2d89e:	0048                	addi	a0,sp,4
  a2d8a0:	276030ef          	jal	ra,a30b16 <memset_s>
  a2d8a4:	004c                	addi	a1,sp,4
  a2d8a6:	02100513          	li	a0,33
  a2d8aa:	2915                	jal	ra,a2dcde <uapi_partition_get_info>
  a2d8ac:	e505                	bnez	a0,a2d8d4 <mfg_flash_read+0x42>
  a2d8ae:	4532                	lw	a0,12(sp)
  a2d8b0:	47a2                	lw	a5,8(sp)
  a2d8b2:	004006b7          	lui	a3,0x400
  a2d8b6:	97aa                	add	a5,a5,a0
  a2d8b8:	7579                	lui	a0,0xffffe
  a2d8ba:	97aa                	add	a5,a5,a0
  a2d8bc:	557d                	li	a0,-1
  a2d8be:	00f6eb63          	bltu	a3,a5,a2d8d4 <mfg_flash_read+0x42>
  a2d8c2:	00878733          	add	a4,a5,s0
  a2d8c6:	00e6e763          	bltu	a3,a4,a2d8d4 <mfg_flash_read+0x42>
  a2d8ca:	8622                	mv	a2,s0
  a2d8cc:	85a6                	mv	a1,s1
  a2d8ce:	853e                	mv	a0,a5
  a2d8d0:	dedfe0ef          	jal	ra,a2c6bc <uapi_sfc_reg_read>
  a2d8d4:	8134                	popret	{ra,s0-s1},32

00a2d8d6 <mfg_flash_write_info>:
  a2d8d6:	80c8                	push	{ra,s0-s10},-48
  a2d8d8:	8baa                	mv	s7,a0
  a2d8da:	8aae                	mv	s5,a1
  a2d8dc:	89b2                	mv	s3,a2
  a2d8de:	ea99                	bnez	a3,a2d8f4 <mfg_flash_write_info+0x1e>
  a2d8e0:	854e                	mv	a0,s3
  a2d8e2:	f7dff0ef          	jal	ra,a2d85e <mfg_malloc>
  a2d8e6:	84aa                	mv	s1,a0
  a2d8e8:	e955                	bnez	a0,a2d99c <mfg_flash_write_info+0xc6>
  a2d8ea:	80000437          	lui	s0,0x80000
  a2d8ee:	0415                	addi	s0,s0,5 # 80000005 <_gp_+0x7f5cb7f1>
  a2d8f0:	8522                	mv	a0,s0
  a2d8f2:	80c4                	popret	{ra,s0-s10},48
  a2d8f4:	00c58a33          	add	s4,a1,a2
  a2d8f8:	014a1793          	slli	a5,s4,0x14
  a2d8fc:	8952                	mv	s2,s4
  a2d8fe:	c791                	beqz	a5,a2d90a <mfg_flash_write_info+0x34>
  a2d900:	797d                	lui	s2,0xfffff
  a2d902:	012a7933          	and	s2,s4,s2
  a2d906:	6785                	lui	a5,0x1
  a2d908:	993e                	add	s2,s2,a5
  a2d90a:	6505                	lui	a0,0x1
  a2d90c:	f53ff0ef          	jal	ra,a2d85e <mfg_malloc>
  a2d910:	8b2a                	mv	s6,a0
  a2d912:	dd61                	beqz	a0,a2d8ea <mfg_flash_write_info+0x14>
  a2d914:	6505                	lui	a0,0x1
  a2d916:	f49ff0ef          	jal	ra,a2d85e <mfg_malloc>
  a2d91a:	8c2a                	mv	s8,a0
  a2d91c:	e509                	bnez	a0,a2d926 <mfg_flash_write_info+0x50>
  a2d91e:	855a                	mv	a0,s6
  a2d920:	f5bff0ef          	jal	ra,a2d87a <mfg_free>
  a2d924:	b7d9                	j	a2d8ea <mfg_flash_write_info+0x14>
  a2d926:	74fd                	lui	s1,0xfffff
  a2d928:	009af4b3          	and	s1,s5,s1
  a2d92c:	409a8d33          	sub	s10,s5,s1
  a2d930:	020d1763          	bnez	s10,a2d95e <mfg_flash_write_info+0x88>
  a2d934:	41490cb3          	sub	s9,s2,s4
  a2d938:	040c9263          	bnez	s9,a2d97c <mfg_flash_write_info+0xa6>
  a2d93c:	409905b3          	sub	a1,s2,s1
  a2d940:	8526                	mv	a0,s1
  a2d942:	f4dfe0ef          	jal	ra,a2c88e <uapi_sfc_reg_erase>
  a2d946:	842a                	mv	s0,a0
  a2d948:	e115                	bnez	a0,a2d96c <mfg_flash_write_info+0x96>
  a2d94a:	040d1163          	bnez	s10,a2d98c <mfg_flash_write_info+0xb6>
  a2d94e:	000c8f63          	beqz	s9,a2d96c <mfg_flash_write_info+0x96>
  a2d952:	4681                	li	a3,0
  a2d954:	8666                	mv	a2,s9
  a2d956:	85d2                	mv	a1,s4
  a2d958:	8562                	mv	a0,s8
  a2d95a:	3fb5                	jal	ra,a2d8d6 <mfg_flash_write_info>
  a2d95c:	a835                	j	a2d998 <mfg_flash_write_info+0xc2>
  a2d95e:	866a                	mv	a2,s10
  a2d960:	85da                	mv	a1,s6
  a2d962:	8526                	mv	a0,s1
  a2d964:	d59fe0ef          	jal	ra,a2c6bc <uapi_sfc_reg_read>
  a2d968:	842a                	mv	s0,a0
  a2d96a:	d569                	beqz	a0,a2d934 <mfg_flash_write_info+0x5e>
  a2d96c:	855a                	mv	a0,s6
  a2d96e:	f0dff0ef          	jal	ra,a2d87a <mfg_free>
  a2d972:	8562                	mv	a0,s8
  a2d974:	f07ff0ef          	jal	ra,a2d87a <mfg_free>
  a2d978:	d425                	beqz	s0,a2d8e0 <mfg_flash_write_info+0xa>
  a2d97a:	bf9d                	j	a2d8f0 <mfg_flash_write_info+0x1a>
  a2d97c:	8666                	mv	a2,s9
  a2d97e:	85e2                	mv	a1,s8
  a2d980:	8552                	mv	a0,s4
  a2d982:	d3bfe0ef          	jal	ra,a2c6bc <uapi_sfc_reg_read>
  a2d986:	842a                	mv	s0,a0
  a2d988:	f175                	bnez	a0,a2d96c <mfg_flash_write_info+0x96>
  a2d98a:	bf4d                	j	a2d93c <mfg_flash_write_info+0x66>
  a2d98c:	4681                	li	a3,0
  a2d98e:	866a                	mv	a2,s10
  a2d990:	85a6                	mv	a1,s1
  a2d992:	855a                	mv	a0,s6
  a2d994:	3789                	jal	ra,a2d8d6 <mfg_flash_write_info>
  a2d996:	dd45                	beqz	a0,a2d94e <mfg_flash_write_info+0x78>
  a2d998:	842a                	mv	s0,a0
  a2d99a:	bfc9                	j	a2d96c <mfg_flash_write_info+0x96>
  a2d99c:	864e                	mv	a2,s3
  a2d99e:	85de                	mv	a1,s7
  a2d9a0:	8556                	mv	a0,s5
  a2d9a2:	deffe0ef          	jal	ra,a2c790 <uapi_sfc_reg_write>
  a2d9a6:	842a                	mv	s0,a0
  a2d9a8:	e10d                	bnez	a0,a2d9ca <mfg_flash_write_info+0xf4>
  a2d9aa:	00200637          	lui	a2,0x200
  a2d9ae:	86ce                	mv	a3,s3
  a2d9b0:	9656                	add	a2,a2,s5
  a2d9b2:	85ce                	mv	a1,s3
  a2d9b4:	8526                	mv	a0,s1
  a2d9b6:	0e4030ef          	jal	ra,a30a9a <memcpy_s>
  a2d9ba:	842a                	mv	s0,a0
  a2d9bc:	e519                	bnez	a0,a2d9ca <mfg_flash_write_info+0xf4>
  a2d9be:	864e                	mv	a2,s3
  a2d9c0:	85de                	mv	a1,s7
  a2d9c2:	8526                	mv	a0,s1
  a2d9c4:	b2afb0ef          	jal	ra,a28cee <memcmp>
  a2d9c8:	842a                	mv	s0,a0
  a2d9ca:	8526                	mv	a0,s1
  a2d9cc:	eafff0ef          	jal	ra,a2d87a <mfg_free>
  a2d9d0:	b705                	j	a2d8f0 <mfg_flash_write_info+0x1a>

00a2d9d2 <mfg_flash_write>:
  a2d9d2:	8138                	push	{ra,s0-s1},-32
  a2d9d4:	84aa                	mv	s1,a0
  a2d9d6:	842e                	mv	s0,a1
  a2d9d8:	46b1                	li	a3,12
  a2d9da:	45b1                	li	a1,12
  a2d9dc:	4601                	li	a2,0
  a2d9de:	0048                	addi	a0,sp,4
  a2d9e0:	136030ef          	jal	ra,a30b16 <memset_s>
  a2d9e4:	004c                	addi	a1,sp,4
  a2d9e6:	02100513          	li	a0,33
  a2d9ea:	2cd5                	jal	ra,a2dcde <uapi_partition_get_info>
  a2d9ec:	e505                	bnez	a0,a2da14 <mfg_flash_write+0x42>
  a2d9ee:	47b2                	lw	a5,12(sp)
  a2d9f0:	45a2                	lw	a1,8(sp)
  a2d9f2:	00400737          	lui	a4,0x400
  a2d9f6:	557d                	li	a0,-1
  a2d9f8:	95be                	add	a1,a1,a5
  a2d9fa:	77f9                	lui	a5,0xffffe
  a2d9fc:	95be                	add	a1,a1,a5
  a2d9fe:	00b76b63          	bltu	a4,a1,a2da14 <mfg_flash_write+0x42>
  a2da02:	008587b3          	add	a5,a1,s0
  a2da06:	00f76763          	bltu	a4,a5,a2da14 <mfg_flash_write+0x42>
  a2da0a:	4685                	li	a3,1
  a2da0c:	8622                	mv	a2,s0
  a2da0e:	8526                	mv	a0,s1
  a2da10:	ec7ff0ef          	jal	ra,a2d8d6 <mfg_flash_write_info>
  a2da14:	8134                	popret	{ra,s0-s1},32

00a2da16 <mfg_get_ftm_run_region>:
  a2da16:	8328                	push	{ra,s0},-64
  a2da18:	c402                	sw	zero,8(sp)
  a2da1a:	c602                	sw	zero,12(sp)
  a2da1c:	c802                	sw	zero,16(sp)
  a2da1e:	c92d                	beqz	a0,a2da90 <mfg_get_ftm_run_region+0x7a>
  a2da20:	842a                	mv	s0,a0
  a2da22:	002c                	addi	a1,sp,8
  a2da24:	02100513          	li	a0,33
  a2da28:	2c5d                	jal	ra,a2dcde <uapi_partition_get_info>
  a2da2a:	e13d                	bnez	a0,a2da90 <mfg_get_ftm_run_region+0x7a>
  a2da2c:	45f1                	li	a1,28
  a2da2e:	8522                	mv	a0,s0
  a2da30:	e63ff0ef          	jal	ra,a2d892 <mfg_flash_read>
  a2da34:	ed31                	bnez	a0,a2da90 <mfg_get_ftm_run_region+0x7a>
  a2da36:	4732                	lw	a4,12(sp)
  a2da38:	4c14                	lw	a3,24(s0)
  a2da3a:	002007b7          	lui	a5,0x200
  a2da3e:	8f45 ba2f 061f      	l.li	a2,0x8f45ba2f
  a2da44:	97ba                	add	a5,a5,a4
  a2da46:	04c68763          	beq	a3,a2,a2da94 <mfg_get_ftm_run_region+0x7e>
  a2da4a:	438c                	lw	a1,0(a5)
  a2da4c:	4b7c f333 069f      	l.li	a3,0x4b7cf333
  a2da52:	04d59163          	bne	a1,a3,a2da94 <mfg_get_ftm_run_region+0x7e>
  a2da56:	478c                	lw	a1,8(a5)
  a2da58:	10000693          	li	a3,256
  a2da5c:	02d59c63          	bne	a1,a3,a2da94 <mfg_get_ftm_run_region+0x7e>
  a2da60:	1247a683          	lw	a3,292(a5) # 200124 <__heap_size+0x1e2b2c>
  a2da64:	4585                	li	a1,1
  a2da66:	cc3e                	sw	a5,24(sp)
  a2da68:	30068693          	addi	a3,a3,768 # 400300 <__heap_size+0x3e2d08>
  a2da6c:	ce3e                	sw	a5,28(sp)
  a2da6e:	ca2e                	sw	a1,20(sp)
  a2da70:	d036                	sw	a3,32(sp)
  a2da72:	d236                	sw	a3,36(sp)
  a2da74:	d402                	sw	zero,40(sp)
  a2da76:	d632                	sw	a2,44(sp)
  a2da78:	004007b7          	lui	a5,0x400
  a2da7c:	00e7ea63          	bltu	a5,a4,a2da90 <mfg_get_ftm_run_region+0x7a>
  a2da80:	9736                	add	a4,a4,a3
  a2da82:	00e7e763          	bltu	a5,a4,a2da90 <mfg_get_ftm_run_region+0x7a>
  a2da86:	45f1                	li	a1,28
  a2da88:	0848                	addi	a0,sp,20
  a2da8a:	f49ff0ef          	jal	ra,a2d9d2 <mfg_flash_write>
  a2da8e:	c119                	beqz	a0,a2da94 <mfg_get_ftm_run_region+0x7e>
  a2da90:	4501                	li	a0,0
  a2da92:	a809                	j	a2daa4 <mfg_get_ftm_run_region+0x8e>
  a2da94:	45f1                	li	a1,28
  a2da96:	8522                	mv	a0,s0
  a2da98:	dfbff0ef          	jal	ra,a2d892 <mfg_flash_read>
  a2da9c:	f975                	bnez	a0,a2da90 <mfg_get_ftm_run_region+0x7a>
  a2da9e:	4008                	lw	a0,0(s0)
  a2daa0:	02f57c3b          	bgeui	a0,2,a2da90 <mfg_get_ftm_run_region+0x7a>
  a2daa4:	8324                	popret	{ra,s0},64

00a2daa6 <cpu_utils_set_system_status_by_cause>:
  a2daa6:	8018                	push	{ra},-16
  a2daa8:	223d                	jal	ra,a2dbd6 <set_cpu_utils_reset_cause>
  a2daaa:	8010                	pop	{ra},16
  a2daac:	a8e9                	j	a2db86 <set_cpu_utils_system_boot_magic>

00a2daae <cpu_utils_reset_chip_with_log>:
  a2daae:	8118                	push	{ra},-32
  a2dab0:	4501                	li	a0,0
  a2dab2:	c62e                	sw	a1,12(sp)
  a2dab4:	2a15                	jal	ra,a2dbe8 <set_update_reset_cause_on_boot>
  a2dab6:	45b2                	lw	a1,12(sp)
  a2dab8:	852e                	mv	a0,a1
  a2daba:	fedff0ef          	jal	ra,a2daa6 <cpu_utils_set_system_status_by_cause>
  a2dabe:	8110                	pop	{ra},32
  a2dac0:	b16fd06f          	j	a2add6 <hal_reboot_chip>

00a2dac4 <panic_deal>:
  a2dac4:	8458                	push	{ra,s0-s3},-96
  a2dac6:	86b2                	mv	a3,a2
  a2dac8:	892a                	mv	s2,a0
  a2daca:	84ae                	mv	s1,a1
  a2dacc:	8432                	mv	s0,a2
  a2dace:	862e                	mv	a2,a1
  a2dad0:	85aa                	mv	a1,a0
  a2dad2:	00a3 32a0 051f      	l.li	a0,0xa332a0
  a2dad8:	ee4fe0ef          	jal	ra,a2c1bc <print_str>
  a2dadc:	eedfb0ef          	jal	ra,a299c8 <osal_irq_lock>
  a2dae0:	00a0 58c4 079f      	l.li	a5,0xa058c4
  a2dae6:	2398                	lbu	a4,0(a5)
  a2dae8:	89aa                	mv	s3,a0
  a2daea:	e321                	bnez	a4,a2db2a <panic_deal+0x66>
  a2daec:	4705                	li	a4,1
  a2daee:	a398                	sb	a4,0(a5)
  a2daf0:	03210023          	sb	s2,32(sp)
  a2daf4:	d226                	sw	s1,36(sp)
  a2daf6:	fb0fc0ef          	jal	ra,a2a2a6 <uapi_systick_get_us>
  a2dafa:	d42a                	sw	a0,40(sp)
  a2dafc:	1008                	addi	a0,sp,32
  a2dafe:	d622                	sw	s0,44(sp)
  a2db00:	28d5                	jal	ra,a2dbf4 <set_last_panic>
  a2db02:	02000613          	li	a2,32
  a2db06:	4581                	li	a1,0
  a2db08:	1008                	addi	a0,sp,32
  a2db0a:	c802                	sw	zero,16(sp)
  a2db0c:	ca02                	sw	zero,20(sp)
  a2db0e:	cc02                	sw	zero,24(sp)
  a2db10:	ce02                	sw	zero,28(sp)
  a2db12:	e93fa0ef          	jal	ra,a289a4 <memset>
  a2db16:	da22                	sw	s0,52(sp)
  a2db18:	341027f3          	csrr	a5,mepc
  a2db1c:	dc3e                	sw	a5,56(sp)
  a2db1e:	878a                	mv	a5,sp
  a2db20:	0068                	addi	a0,sp,12
  a2db22:	c63e                	sw	a5,12(sp)
  a2db24:	2221                	jal	ra,a2dc2c <set_exception_info>
  a2db26:	1008                	addi	a0,sp,32
  a2db28:	2215                	jal	ra,a2dc4c <set_exception_stack_frame>
  a2db2a:	00a0 58c8 079f      	l.li	a5,0xa058c8
  a2db30:	439c                	lw	a5,0(a5)
  a2db32:	c391                	beqz	a5,a2db36 <panic_deal+0x72>
  a2db34:	9782                	jalr	a5
  a2db36:	6589                	lui	a1,0x2
  a2db38:	058d                	addi	a1,a1,3 # 2003 <ccause+0x1041>
  a2db3a:	4509                	li	a0,2
  a2db3c:	f73ff0ef          	jal	ra,a2daae <cpu_utils_reset_chip_with_log>
  a2db40:	854e                	mv	a0,s3
  a2db42:	e8ffb0ef          	jal	ra,a299d0 <osal_irq_restore>
  a2db46:	8454                	popret	{ra,s0-s3},96

00a2db48 <panic>:
  a2db48:	00a3 3fd0 079f      	l.li	a5,0xa33fd0
  a2db4e:	0007a303          	lw	t1,0(a5) # 400000 <__heap_size+0x3e2a08>
  a2db52:	00030563          	beqz	t1,a2db5c <panic+0x14>
  a2db56:	ffb08613          	addi	a2,ra,-5
  a2db5a:	8302                	jr	t1
  a2db5c:	8118                	push	{ra},-32
  a2db5e:	4785                	li	a5,1
  a2db60:	00f107a3          	sb	a5,15(sp)
  a2db64:	00f14783          	lbu	a5,15(sp)
  a2db68:	9f81                	uxtb	a5
  a2db6a:	ffed                	bnez	a5,a2db64 <panic+0x1c>
  a2db6c:	8114                	popret	{ra},32

00a2db6e <duplicate_preserve_mem>:
  a2db6e:	0fc00693          	li	a3,252
  a2db72:	00a3 4014 061f      	l.li	a2,0xa34014
  a2db78:	0fc00593          	li	a1,252
  a2db7c:	00a0 58cc 051f      	l.li	a0,0xa058cc
  a2db82:	7190206f          	j	a30a9a <memcpy_s>

00a2db86 <set_cpu_utils_system_boot_magic>:
  a2db86:	00a34737          	lui	a4,0xa34
  a2db8a:	01470793          	addi	a5,a4,20 # a34014 <g_preserve_data_lib>
  a2db8e:	0d87d783          	lhu	a5,216(a5)
  a2db92:	6689                	lui	a3,0x2
  a2db94:	04068613          	addi	a2,a3,64 # 2040 <ccause+0x107e>
  a2db98:	01470713          	addi	a4,a4,20
  a2db9c:	02c78963          	beq	a5,a2,a2dbce <set_cpu_utils_system_boot_magic+0x48>
  a2dba0:	00f66c63          	bltu	a2,a5,a2dbb8 <set_cpu_utils_system_boot_magic+0x32>
  a2dba4:	c78d                	beqz	a5,a2dbce <set_cpu_utils_system_boot_magic+0x48>
  a2dba6:	0685                	addi	a3,a3,1
  a2dba8:	02d78363          	beq	a5,a3,a2dbce <set_cpu_utils_system_boot_magic+0x48>
  a2dbac:	dead beaf 079f      	l.li	a5,0xdeadbeaf
  a2dbb2:	0ef72423          	sw	a5,232(a4)
  a2dbb6:	8082                	ret
  a2dbb8:	66a1                	lui	a3,0x8
  a2dbba:	0685                	addi	a3,a3,1 # 8001 <ccause+0x703f>
  a2dbbc:	00d78963          	beq	a5,a3,a2dbce <set_cpu_utils_system_boot_magic+0x48>
  a2dbc0:	0000 f0f0 069f      	l.li	a3,0xf0f0
  a2dbc6:	00d78463          	beq	a5,a3,a2dbce <set_cpu_utils_system_boot_magic+0x48>
  a2dbca:	6691                	lui	a3,0x4
  a2dbcc:	bfe9                	j	a2dba6 <set_cpu_utils_system_boot_magic+0x20>
  a2dbce:	dead dead 079f      	l.li	a5,0xdeaddead
  a2dbd4:	bff9                	j	a2dbb2 <set_cpu_utils_system_boot_magic+0x2c>

00a2dbd6 <set_cpu_utils_reset_cause>:
  a2dbd6:	00a3 4014 079f      	l.li	a5,0xa34014
  a2dbdc:	0c078d23          	sb	zero,218(a5)
  a2dbe0:	0ca79c23          	sh	a0,216(a5)
  a2dbe4:	f8bff06f          	j	a2db6e <duplicate_preserve_mem>

00a2dbe8 <set_update_reset_cause_on_boot>:
  a2dbe8:	00a3 4014 079f      	l.li	a5,0xa34014
  a2dbee:	0ca78d23          	sb	a0,218(a5)
  a2dbf2:	8082                	ret

00a2dbf4 <set_last_panic>:
  a2dbf4:	8018                	push	{ra},-16
  a2dbf6:	862a                	mv	a2,a0
  a2dbf8:	00a3 4014 051f      	l.li	a0,0xa34014
  a2dbfe:	46c1                	li	a3,16
  a2dc00:	45c1                	li	a1,16
  a2dc02:	0a450513          	addi	a0,a0,164 # 10a4 <ccause+0xe2>
  a2dc06:	695020ef          	jal	ra,a30a9a <memcpy_s>
  a2dc0a:	8010                	pop	{ra},16
  a2dc0c:	f63ff06f          	j	a2db6e <duplicate_preserve_mem>

00a2dc10 <set_exception_info_riscv>:
  a2dc10:	8018                	push	{ra},-16
  a2dc12:	862a                	mv	a2,a0
  a2dc14:	09000693          	li	a3,144
  a2dc18:	09000593          	li	a1,144
  a2dc1c:	00a3 4014 051f      	l.li	a0,0xa34014
  a2dc22:	679020ef          	jal	ra,a30a9a <memcpy_s>
  a2dc26:	8010                	pop	{ra},16
  a2dc28:	f47ff06f          	j	a2db6e <duplicate_preserve_mem>

00a2dc2c <set_exception_info>:
  a2dc2c:	cd19                	beqz	a0,a2dc4a <set_exception_info+0x1e>
  a2dc2e:	8018                	push	{ra},-16
  a2dc30:	862a                	mv	a2,a0
  a2dc32:	00a3 4014 051f      	l.li	a0,0xa34014
  a2dc38:	46d1                	li	a3,20
  a2dc3a:	45d1                	li	a1,20
  a2dc3c:	09050513          	addi	a0,a0,144
  a2dc40:	65b020ef          	jal	ra,a30a9a <memcpy_s>
  a2dc44:	8010                	pop	{ra},16
  a2dc46:	f29ff06f          	j	a2db6e <duplicate_preserve_mem>
  a2dc4a:	8082                	ret

00a2dc4c <set_exception_stack_frame>:
  a2dc4c:	4958                	lw	a4,20(a0)
  a2dc4e:	00a3 4014 079f      	l.li	a5,0xa34014
  a2dc54:	08e7a623          	sw	a4,140(a5)
  a2dc58:	4d18                	lw	a4,24(a0)
  a2dc5a:	cbd8                	sw	a4,20(a5)
  a2dc5c:	f13ff06f          	j	a2db6e <duplicate_preserve_mem>

00a2dc60 <uapi_partition_init>:
  a2dc60:	8048                	push	{ra,s0-s2},-16
  a2dc62:	f0eff0ef          	jal	ra,a2d370 <partition_get_addr>
  a2dc66:	4118                	lw	a4,0(a0)
  a2dc68:	4b87 a54b 079f      	l.li	a5,0x4b87a54b
  a2dc6e:	06f71563          	bne	a4,a5,a2dcd8 <uapi_partition_init+0x78>
  a2dc72:	842a                	mv	s0,a0
  a2dc74:	efcff0ef          	jal	ra,a2d370 <partition_get_addr>
  a2dc78:	892a                	mv	s2,a0
  a2dc7a:	2446                	lhu	s1,12(s0)
  a2dc7c:	ef4ff0ef          	jal	ra,a2d370 <partition_get_addr>
  a2dc80:	4014                	lw	a3,0(s0)
  a2dc82:	00a06737          	lui	a4,0xa06
  a2dc86:	9c870793          	addi	a5,a4,-1592 # a059c8 <g_partition_info>
  a2dc8a:	c394                	sw	a3,0(a5)
  a2dc8c:	4054                	lw	a3,4(s0)
  a2dc8e:	9c870313          	addi	t1,a4,-1592
  a2dc92:	c3d4                	sw	a3,4(a5)
  a2dc94:	4414                	lw	a3,8(s0)
  a2dc96:	c794                	sw	a3,8(a5)
  a2dc98:	2474                	lbu	a3,14(s0)
  a2dc9a:	c7d4                	sw	a3,12(a5)
  a2dc9c:	1006ef3b          	bltui	a3,16,a2dcd8 <uapi_partition_init+0x78>
  a2dca0:	9c870713          	addi	a4,a4,-1592
  a2dca4:	4781                	li	a5,0
  a2dca6:	94ca                	add	s1,s1,s2
  a2dca8:	4841                	li	a6,16
  a2dcaa:	06f4861b          	addshf	a2,s1,a5,sll,3
  a2dcae:	4214                	lw	a3,0(a2)
  a2dcb0:	00178593          	addi	a1,a5,1
  a2dcb4:	97aa                	add	a5,a5,a0
  a2dcb6:	cb14                	sw	a3,16(a4)
  a2dcb8:	08b3069b          	addshf	a3,t1,a1,sll,4
  a2dcbc:	00462883          	lw	a7,4(a2) # 200004 <__heap_size+0x1e2a0c>
  a2dcc0:	2690                	lbu	a2,8(a3)
  a2dcc2:	0741                	addi	a4,a4,16
  a2dcc4:	1116261b          	orshf	a2,a2,a7,sll,8
  a2dcc8:	c690                	sw	a2,8(a3)
  a2dcca:	37fc                	lbu	a5,15(a5)
  a2dccc:	a69c                	sb	a5,8(a3)
  a2dcce:	87ae                	mv	a5,a1
  a2dcd0:	fd059de3          	bne	a1,a6,a2dcaa <uapi_partition_init+0x4a>
  a2dcd4:	4501                	li	a0,0
  a2dcd6:	8044                	popret	{ra,s0-s2},16
  a2dcd8:	80003537          	lui	a0,0x80003
  a2dcdc:	bfed                	j	a2dcd6 <uapi_partition_init+0x76>

00a2dcde <uapi_partition_get_info>:
  a2dcde:	c1bd                	beqz	a1,a2dd44 <uapi_partition_get_info+0x66>
  a2dce0:	00a06737          	lui	a4,0xa06
  a2dce4:	9c870793          	addi	a5,a4,-1592 # a059c8 <g_partition_info>
  a2dce8:	47d0                	lw	a2,12(a5)
  a2dcea:	9c870713          	addi	a4,a4,-1592
  a2dcee:	4781                	li	a5,0
  a2dcf0:	02c7e863          	bltu	a5,a2,a2dd20 <uapi_partition_get_info+0x42>
  a2dcf4:	8138                	push	{ra,s0-s1},-32
  a2dcf6:	84aa                	mv	s1,a0
  a2dcf8:	0068                	addi	a0,sp,12
  a2dcfa:	842e                	mv	s0,a1
  a2dcfc:	c602                	sw	zero,12(sp)
  a2dcfe:	e7aff0ef          	jal	ra,a2d378 <partition_get_path_map>
  a2dd02:	c919                	beqz	a0,a2dd18 <uapi_partition_get_info+0x3a>
  a2dd04:	47b2                	lw	a5,12(sp)
  a2dd06:	cb89                	beqz	a5,a2dd18 <uapi_partition_get_info+0x3a>
  a2dd08:	4701                	li	a4,0
  a2dd0a:	86be                	mv	a3,a5
  a2dd0c:	4290                	lw	a2,0(a3)
  a2dd0e:	07a1                	addi	a5,a5,8
  a2dd10:	02c49163          	bne	s1,a2,a2dd32 <uapi_partition_get_info+0x54>
  a2dd14:	42dc                	lw	a5,4(a3)
  a2dd16:	e395                	bnez	a5,a2dd3a <uapi_partition_get_info+0x5c>
  a2dd18:	8000 3003 051f      	l.li	a0,0x80003003
  a2dd1e:	8134                	popret	{ra,s0-s1},32
  a2dd20:	0785                	addi	a5,a5,1
  a2dd22:	08f7069b          	addshf	a3,a4,a5,sll,4
  a2dd26:	0086c803          	lbu	a6,8(a3) # 4008 <ccause+0x3046>
  a2dd2a:	02a80163          	beq	a6,a0,a2dd4c <uapi_partition_get_info+0x6e>
  a2dd2e:	9f81                	uxtb	a5
  a2dd30:	b7c1                	j	a2dcf0 <uapi_partition_get_info+0x12>
  a2dd32:	0705                	addi	a4,a4,1
  a2dd34:	fce51be3          	bne	a0,a4,a2dd0a <uapi_partition_get_info+0x2c>
  a2dd38:	b7c5                	j	a2dd18 <uapi_partition_get_info+0x3a>
  a2dd3a:	4705                	li	a4,1
  a2dd3c:	a018                	sb	a4,0(s0)
  a2dd3e:	c05c                	sw	a5,4(s0)
  a2dd40:	4501                	li	a0,0
  a2dd42:	bff1                	j	a2dd1e <uapi_partition_get_info+0x40>
  a2dd44:	8000 3002 051f      	l.li	a0,0x80003002
  a2dd4a:	8082                	ret
  a2dd4c:	00058023          	sb	zero,0(a1)
  a2dd50:	429c                	lw	a5,0(a3)
  a2dd52:	4501                	li	a0,0
  a2dd54:	c1dc                	sw	a5,4(a1)
  a2dd56:	469c                	lw	a5,8(a3)
  a2dd58:	83a1                	srli	a5,a5,0x8
  a2dd5a:	c59c                	sw	a5,8(a1)
  a2dd5c:	8082                	ret

00a2dd5e <upg_malloc>:
  a2dd5e:	8028                	push	{ra,s0},-16
  a2dd60:	842a                	mv	s0,a0
  a2dd62:	2b8d                	jal	ra,a2e2d4 <upg_get_func_list>
  a2dd64:	411c                	lw	a5,0(a0)
  a2dd66:	c799                	beqz	a5,a2dd74 <upg_malloc+0x16>
  a2dd68:	23b5                	jal	ra,a2e2d4 <upg_get_func_list>
  a2dd6a:	00052303          	lw	t1,0(a0) # 80003000 <_gp_+0x7f5ce7ec>
  a2dd6e:	8522                	mv	a0,s0
  a2dd70:	8020                	pop	{ra,s0},16
  a2dd72:	8302                	jr	t1
  a2dd74:	4501                	li	a0,0
  a2dd76:	8024                	popret	{ra,s0},16

00a2dd78 <upg_free>:
  a2dd78:	c51d                	beqz	a0,a2dda6 <upg_free+0x2e>
  a2dd7a:	8038                	push	{ra,s0-s1},-16
  a2dd7c:	842a                	mv	s0,a0
  a2dd7e:	f94ff0ef          	jal	ra,a2d512 <upg_get_flash_base_addr>
  a2dd82:	84aa                	mv	s1,a0
  a2dd84:	f94ff0ef          	jal	ra,a2d518 <upg_get_flash_size>
  a2dd88:	00946563          	bltu	s0,s1,a2dd92 <upg_free+0x1a>
  a2dd8c:	94aa                	add	s1,s1,a0
  a2dd8e:	00946b63          	bltu	s0,s1,a2dda4 <upg_free+0x2c>
  a2dd92:	2389                	jal	ra,a2e2d4 <upg_get_func_list>
  a2dd94:	415c                	lw	a5,4(a0)
  a2dd96:	c799                	beqz	a5,a2dda4 <upg_free+0x2c>
  a2dd98:	2b35                	jal	ra,a2e2d4 <upg_get_func_list>
  a2dd9a:	00452303          	lw	t1,4(a0)
  a2dd9e:	8522                	mv	a0,s0
  a2dda0:	8030                	pop	{ra,s0-s1},16
  a2dda2:	8302                	jr	t1
  a2dda4:	8034                	popret	{ra,s0-s1},16
  a2dda6:	8082                	ret

00a2dda8 <upg_get_ctx>:
  a2dda8:	00a0 5ad8 051f      	l.li	a0,0xa05ad8
  a2ddae:	8082                	ret

00a2ddb0 <upg_alloc_and_get_upgrade_flag>:
  a2ddb0:	8138                	push	{ra,s0-s1},-32
  a2ddb2:	84aa                	mv	s1,a0
  a2ddb4:	0068                	addi	a0,sp,12
  a2ddb6:	c602                	sw	zero,12(sp)
  a2ddb8:	eccff0ef          	jal	ra,a2d484 <upg_get_upgrade_flag_flash_start_addr>
  a2ddbc:	c909                	beqz	a0,a2ddce <upg_alloc_and_get_upgrade_flag+0x1e>
  a2ddbe:	842a                	mv	s0,a0
  a2ddc0:	00a3 32c8 051f      	l.li	a0,0xa332c8
  a2ddc6:	bf6fe0ef          	jal	ra,a2c1bc <print_str>
  a2ddca:	8522                	mv	a0,s0
  a2ddcc:	8134                	popret	{ra,s0-s1},32
  a2ddce:	06c00513          	li	a0,108
  a2ddd2:	f8dff0ef          	jal	ra,a2dd5e <upg_malloc>
  a2ddd6:	c088                	sw	a0,0(s1)
  a2ddd8:	862a                	mv	a2,a0
  a2ddda:	e911                	bnez	a0,a2ddee <upg_alloc_and_get_upgrade_flag+0x3e>
  a2dddc:	00a3 32fc 051f      	l.li	a0,0xa332fc
  a2dde2:	80000437          	lui	s0,0x80000
  a2dde6:	bd6fe0ef          	jal	ra,a2c1bc <print_str>
  a2ddea:	0415                	addi	s0,s0,5 # 80000005 <_gp_+0x7f5cb7f1>
  a2ddec:	bff9                	j	a2ddca <upg_alloc_and_get_upgrade_flag+0x1a>
  a2ddee:	4532                	lw	a0,12(sp)
  a2ddf0:	06c00593          	li	a1,108
  a2ddf4:	f2aff0ef          	jal	ra,a2d51e <upg_flash_read>
  a2ddf8:	842a                	mv	s0,a0
  a2ddfa:	d961                	beqz	a0,a2ddca <upg_alloc_and_get_upgrade_flag+0x1a>
  a2ddfc:	00a3 3334 051f      	l.li	a0,0xa33334
  a2de02:	bbafe0ef          	jal	ra,a2c1bc <print_str>
  a2de06:	4088                	lw	a0,0(s1)
  a2de08:	f71ff0ef          	jal	ra,a2dd78 <upg_free>
  a2de0c:	0004a023          	sw	zero,0(s1) # fffff000 <_gp_+0xff5ca7ec>
  a2de10:	bf6d                	j	a2ddca <upg_alloc_and_get_upgrade_flag+0x1a>

00a2de12 <upg_get_image_info>:
  a2de12:	cd9d                	beqz	a1,a2de50 <upg_get_image_info+0x3e>
  a2de14:	8228                	push	{ra,s0},-48
  a2de16:	842a                	mv	s0,a0
  a2de18:	0868                	addi	a0,sp,28
  a2de1a:	c62e                	sw	a1,12(sp)
  a2de1c:	ce02                	sw	zero,28(sp)
  a2de1e:	e34ff0ef          	jal	ra,a2d452 <upg_get_ids_map>
  a2de22:	45b2                	lw	a1,12(sp)
  a2de24:	e509                	bnez	a0,a2de2e <upg_get_image_info+0x1c>
  a2de26:	8000 3002 051f      	l.li	a0,0x80003002
  a2de2c:	8224                	popret	{ra,s0},48
  a2de2e:	47f2                	lw	a5,28(sp)
  a2de30:	dbfd                	beqz	a5,a2de26 <upg_get_image_info+0x14>
  a2de32:	4701                	li	a4,0
  a2de34:	86be                	mv	a3,a5
  a2de36:	07a1                	addi	a5,a5,8
  a2de38:	ff87a603          	lw	a2,-8(a5)
  a2de3c:	00c41663          	bne	s0,a2,a2de48 <upg_get_image_info+0x36>
  a2de40:	22c8                	lbu	a0,4(a3)
  a2de42:	e9dff0ef          	jal	ra,a2dcde <uapi_partition_get_info>
  a2de46:	b7dd                	j	a2de2c <upg_get_image_info+0x1a>
  a2de48:	0705                	addi	a4,a4,1
  a2de4a:	fee515e3          	bne	a0,a4,a2de34 <upg_get_image_info+0x22>
  a2de4e:	bfe1                	j	a2de26 <upg_get_image_info+0x14>
  a2de50:	8000 3002 051f      	l.li	a0,0x80003002
  a2de56:	8082                	ret

00a2de58 <upg_read_fota_pkg_data>:
  a2de58:	8158                	push	{ra,s0-s3},-48
  a2de5a:	842a                	mv	s0,a0
  a2de5c:	89ae                	mv	s3,a1
  a2de5e:	0028                	addi	a0,sp,8
  a2de60:	006c                	addi	a1,sp,12
  a2de62:	8932                	mv	s2,a2
  a2de64:	c402                	sw	zero,8(sp)
  a2de66:	c602                	sw	zero,12(sp)
  a2de68:	e5eff0ef          	jal	ra,a2d4c6 <upg_get_fota_partiton_area_addr>
  a2de6c:	e51d                	bnez	a0,a2de9a <upg_read_fota_pkg_data+0x42>
  a2de6e:	47b2                	lw	a5,12(sp)
  a2de70:	02f47663          	bgeu	s0,a5,a2de9c <upg_read_fota_pkg_data+0x44>
  a2de74:	00092483          	lw	s1,0(s2) # fffff000 <_gp_+0xff5ca7ec>
  a2de78:	c095                	beqz	s1,a2de9c <upg_read_fota_pkg_data+0x44>
  a2de7a:	00848733          	add	a4,s1,s0
  a2de7e:	00e7f463          	bgeu	a5,a4,a2de86 <upg_read_fota_pkg_data+0x2e>
  a2de82:	408784b3          	sub	s1,a5,s0
  a2de86:	4522                	lw	a0,8(sp)
  a2de88:	864e                	mv	a2,s3
  a2de8a:	85a6                	mv	a1,s1
  a2de8c:	9522                	add	a0,a0,s0
  a2de8e:	c42a                	sw	a0,8(sp)
  a2de90:	e8eff0ef          	jal	ra,a2d51e <upg_flash_read>
  a2de94:	e119                	bnez	a0,a2de9a <upg_read_fota_pkg_data+0x42>
  a2de96:	00992023          	sw	s1,0(s2)
  a2de9a:	8154                	popret	{ra,s0-s3},48
  a2de9c:	8000 3042 051f      	l.li	a0,0x80003042
  a2dea2:	bfe5                	j	a2de9a <upg_read_fota_pkg_data+0x42>

00a2dea4 <uapi_upg_get_storage_size>:
  a2dea4:	8128                	push	{ra,s0},-32
  a2dea6:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2deac:	239c                	lbu	a5,0(a5)
  a2deae:	4401                	li	s0,0
  a2deb0:	cb99                	beqz	a5,a2dec6 <uapi_upg_get_storage_size+0x22>
  a2deb2:	006c                	addi	a1,sp,12
  a2deb4:	0028                	addi	a0,sp,8
  a2deb6:	c402                	sw	zero,8(sp)
  a2deb8:	c602                	sw	zero,12(sp)
  a2deba:	e0cff0ef          	jal	ra,a2d4c6 <upg_get_fota_partiton_area_addr>
  a2debe:	e501                	bnez	a0,a2dec6 <uapi_upg_get_storage_size+0x22>
  a2dec0:	47b2                	lw	a5,12(sp)
  a2dec2:	7475                	lui	s0,0xffffd
  a2dec4:	943e                	add	s0,s0,a5
  a2dec6:	8522                	mv	a0,s0
  a2dec8:	8124                	popret	{ra,s0},32

00a2deca <upg_get_partition_info>:
  a2deca:	8138                	push	{ra,s0-s1},-32
  a2decc:	c202                	sw	zero,4(sp)
  a2dece:	c402                	sw	zero,8(sp)
  a2ded0:	c602                	sw	zero,12(sp)
  a2ded2:	4b87 a52d 079f      	l.li	a5,0x4b87a52d
  a2ded8:	84ae                	mv	s1,a1
  a2deda:	8432                	mv	s0,a2
  a2dedc:	02f51163          	bne	a0,a5,a2defe <upg_get_partition_info+0x34>
  a2dee0:	002007b7          	lui	a5,0x200
  a2dee4:	c43e                	sw	a5,8(sp)
  a2dee6:	78000793          	li	a5,1920
  a2deea:	c63e                	sw	a5,12(sp)
  a2deec:	00414783          	lbu	a5,4(sp)
  a2def0:	ef81                	bnez	a5,a2df08 <upg_get_partition_info+0x3e>
  a2def2:	47a2                	lw	a5,8(sp)
  a2def4:	c09c                	sw	a5,0(s1)
  a2def6:	47b2                	lw	a5,12(sp)
  a2def8:	c01c                	sw	a5,0(s0)
  a2defa:	4501                	li	a0,0
  a2defc:	a029                	j	a2df06 <upg_get_partition_info+0x3c>
  a2defe:	004c                	addi	a1,sp,4
  a2df00:	f13ff0ef          	jal	ra,a2de12 <upg_get_image_info>
  a2df04:	d565                	beqz	a0,a2deec <upg_get_partition_info+0x22>
  a2df06:	8134                	popret	{ra,s0-s1},32
  a2df08:	0004a023          	sw	zero,0(s1)
  a2df0c:	f99ff0ef          	jal	ra,a2dea4 <uapi_upg_get_storage_size>
  a2df10:	c008                	sw	a0,0(s0)
  a2df12:	b7e5                	j	a2defa <upg_get_partition_info+0x30>

00a2df14 <upg_get_package_header>:
  a2df14:	8138                	push	{ra,s0-s1},-32
  a2df16:	84aa                	mv	s1,a0
  a2df18:	006c                	addi	a1,sp,12
  a2df1a:	0028                	addi	a0,sp,8
  a2df1c:	c402                	sw	zero,8(sp)
  a2df1e:	c602                	sw	zero,12(sp)
  a2df20:	da6ff0ef          	jal	ra,a2d4c6 <upg_get_fota_partiton_area_addr>
  a2df24:	842a                	mv	s0,a0
  a2df26:	e511                	bnez	a0,a2df32 <upg_get_package_header+0x1e>
  a2df28:	deaff0ef          	jal	ra,a2d512 <upg_get_flash_base_addr>
  a2df2c:	47a2                	lw	a5,8(sp)
  a2df2e:	953e                	add	a0,a0,a5
  a2df30:	c088                	sw	a0,0(s1)
  a2df32:	8522                	mv	a0,s0
  a2df34:	8134                	popret	{ra,s0-s1},32

00a2df36 <upg_get_pkg_image_hash_table>:
  a2df36:	8148                	push	{ra,s0-s2},-32
  a2df38:	12052403          	lw	s0,288(a0)
  a2df3c:	892e                	mv	s2,a1
  a2df3e:	e019                	bnez	s0,a2df44 <upg_get_pkg_image_hash_table+0xe>
  a2df40:	20000413          	li	s0,512
  a2df44:	006c                	addi	a1,sp,12
  a2df46:	0028                	addi	a0,sp,8
  a2df48:	c402                	sw	zero,8(sp)
  a2df4a:	c602                	sw	zero,12(sp)
  a2df4c:	d7aff0ef          	jal	ra,a2d4c6 <upg_get_fota_partiton_area_addr>
  a2df50:	84aa                	mv	s1,a0
  a2df52:	e911                	bnez	a0,a2df66 <upg_get_pkg_image_hash_table+0x30>
  a2df54:	47a2                	lw	a5,8(sp)
  a2df56:	97a2                	add	a5,a5,s0
  a2df58:	c43e                	sw	a5,8(sp)
  a2df5a:	db8ff0ef          	jal	ra,a2d512 <upg_get_flash_base_addr>
  a2df5e:	47a2                	lw	a5,8(sp)
  a2df60:	953e                	add	a0,a0,a5
  a2df62:	00a92023          	sw	a0,0(s2)
  a2df66:	8526                	mv	a0,s1
  a2df68:	8144                	popret	{ra,s0-s2},32

00a2df6a <upg_get_pkg_image_header>:
  a2df6a:	8148                	push	{ra,s0-s2},-32
  a2df6c:	892a                	mv	s2,a0
  a2df6e:	84ae                	mv	s1,a1
  a2df70:	0028                	addi	a0,sp,8
  a2df72:	006c                	addi	a1,sp,12
  a2df74:	c402                	sw	zero,8(sp)
  a2df76:	c602                	sw	zero,12(sp)
  a2df78:	d4eff0ef          	jal	ra,a2d4c6 <upg_get_fota_partiton_area_addr>
  a2df7c:	842a                	mv	s0,a0
  a2df7e:	e919                	bnez	a0,a2df94 <upg_get_pkg_image_header+0x2a>
  a2df80:	47a2                	lw	a5,8(sp)
  a2df82:	00492703          	lw	a4,4(s2)
  a2df86:	97ba                	add	a5,a5,a4
  a2df88:	c43e                	sw	a5,8(sp)
  a2df8a:	d88ff0ef          	jal	ra,a2d512 <upg_get_flash_base_addr>
  a2df8e:	47a2                	lw	a5,8(sp)
  a2df90:	953e                	add	a0,a0,a5
  a2df92:	c088                	sw	a0,0(s1)
  a2df94:	8522                	mv	a0,s0
  a2df96:	8144                	popret	{ra,s0-s2},32

00a2df98 <upg_get_pkg_image_data>:
  a2df98:	8178                	push	{ra,s0-s5},-48
  a2df9a:	4544                	lw	s1,12(a0)
  a2df9c:	8aaa                	mv	s5,a0
  a2df9e:	842e                	mv	s0,a1
  a2dfa0:	0028                	addi	a0,sp,8
  a2dfa2:	006c                	addi	a1,sp,12
  a2dfa4:	89b2                	mv	s3,a2
  a2dfa6:	8a36                	mv	s4,a3
  a2dfa8:	c402                	sw	zero,8(sp)
  a2dfaa:	c602                	sw	zero,12(sp)
  a2dfac:	d1aff0ef          	jal	ra,a2d4c6 <upg_get_fota_partiton_area_addr>
  a2dfb0:	892a                	mv	s2,a0
  a2dfb2:	e121                	bnez	a0,a2dff2 <upg_get_pkg_image_data+0x5a>
  a2dfb4:	00f48793          	addi	a5,s1,15
  a2dfb8:	9bc1                	andi	a5,a5,-16
  a2dfba:	02f47e63          	bgeu	s0,a5,a2dff6 <upg_get_pkg_image_data+0x5e>
  a2dfbe:	020a0c63          	beqz	s4,a2dff6 <upg_get_pkg_image_data+0x5e>
  a2dfc2:	02098a63          	beqz	s3,a2dff6 <upg_get_pkg_image_data+0x5e>
  a2dfc6:	0009a483          	lw	s1,0(s3) # fffff000 <_gp_+0xff5ca7ec>
  a2dfca:	c495                	beqz	s1,a2dff6 <upg_get_pkg_image_data+0x5e>
  a2dfcc:	00848733          	add	a4,s1,s0
  a2dfd0:	00e7f463          	bgeu	a5,a4,a2dfd8 <upg_get_pkg_image_data+0x40>
  a2dfd4:	408784b3          	sub	s1,a5,s0
  a2dfd8:	47a2                	lw	a5,8(sp)
  a2dfda:	008aa503          	lw	a0,8(s5)
  a2dfde:	953e                	add	a0,a0,a5
  a2dfe0:	942a                	add	s0,s0,a0
  a2dfe2:	c42a                	sw	a0,8(sp)
  a2dfe4:	d2eff0ef          	jal	ra,a2d512 <upg_get_flash_base_addr>
  a2dfe8:	9522                	add	a0,a0,s0
  a2dfea:	00aa2023          	sw	a0,0(s4)
  a2dfee:	0099a023          	sw	s1,0(s3)
  a2dff2:	854a                	mv	a0,s2
  a2dff4:	8174                	popret	{ra,s0-s5},48
  a2dff6:	8000 3042 091f      	l.li	s2,0x80003042
  a2dffc:	bfdd                	j	a2dff2 <upg_get_pkg_image_data+0x5a>

00a2dffe <upg_copy_pkg_image_data>:
  a2dffe:	455c                	lw	a5,12(a0)
  a2e000:	07bd                	addi	a5,a5,15 # 20000f <__heap_size+0x1e2a17>
  a2e002:	9bc1                	andi	a5,a5,-16
  a2e004:	02f5fb63          	bgeu	a1,a5,a2e03a <upg_copy_pkg_image_data+0x3c>
  a2e008:	ca8d                	beqz	a3,a2e03a <upg_copy_pkg_image_data+0x3c>
  a2e00a:	ca05                	beqz	a2,a2e03a <upg_copy_pkg_image_data+0x3c>
  a2e00c:	00062803          	lw	a6,0(a2)
  a2e010:	02080563          	beqz	a6,a2e03a <upg_copy_pkg_image_data+0x3c>
  a2e014:	8128                	push	{ra,s0},-32
  a2e016:	872e                	mv	a4,a1
  a2e018:	95c2                	add	a1,a1,a6
  a2e01a:	00b7f463          	bgeu	a5,a1,a2e022 <upg_copy_pkg_image_data+0x24>
  a2e01e:	40e78833          	sub	a6,a5,a4
  a2e022:	4508                	lw	a0,8(a0)
  a2e024:	8432                	mv	s0,a2
  a2e026:	85b6                	mv	a1,a3
  a2e028:	0070                	addi	a2,sp,12
  a2e02a:	953a                	add	a0,a0,a4
  a2e02c:	c642                	sw	a6,12(sp)
  a2e02e:	e2bff0ef          	jal	ra,a2de58 <upg_read_fota_pkg_data>
  a2e032:	e119                	bnez	a0,a2e038 <upg_copy_pkg_image_data+0x3a>
  a2e034:	47b2                	lw	a5,12(sp)
  a2e036:	c01c                	sw	a5,0(s0)
  a2e038:	8124                	popret	{ra,s0},32
  a2e03a:	8000 3042 051f      	l.li	a0,0x80003042
  a2e040:	8082                	ret

00a2e042 <upg_set_firmware_update_status>:
  a2e042:	8168                	push	{ra,s0-s4},-48
  a2e044:	cb9e 063c 079f      	l.li	a5,0xcb9e063c
  a2e04a:	02f59163          	bne	a1,a5,a2e06c <upg_set_firmware_update_status+0x2a>
  a2e04e:	04c50513          	addi	a0,a0,76
  a2e052:	211c                	lbu	a5,0(a0)
  a2e054:	efb5                	bnez	a5,a2e0d0 <upg_set_firmware_update_status+0x8e>
  a2e056:	311c                	lbu	a5,1(a0)
  a2e058:	00150913          	addi	s2,a0,1
  a2e05c:	ebe1                	bnez	a5,a2e12c <upg_set_firmware_update_status+0xea>
  a2e05e:	213c                	lbu	a5,2(a0)
  a2e060:	00250913          	addi	s2,a0,2
  a2e064:	e7f1                	bnez	a5,a2e130 <upg_set_firmware_update_status+0xee>
  a2e066:	4401                	li	s0,0
  a2e068:	8522                	mv	a0,s0
  a2e06a:	8164                	popret	{ra,s0-s4},48
  a2e06c:	02b5555b          	muliadd	a0,a0,a1,3
  a2e070:	0541                	addi	a0,a0,16
  a2e072:	b7c5                	j	a2e052 <upg_set_firmware_update_status+0x10>
  a2e074:	0441                	addi	s0,s0,16 # ffffd010 <_gp_+0xff5c87fc>
  a2e076:	029455db          	muliadd	a1,s0,s1,3
  a2e07a:	00b98433          	add	s0,s3,a1
  a2e07e:	a8a5                	j	a2e0f6 <upg_set_firmware_update_status+0xb4>
  a2e080:	010a14bb          	bnei	s4,1,a2e092 <upg_set_firmware_update_status+0x50>
  a2e084:	00094783          	lbu	a5,0(s2)
  a2e088:	0ff797bb          	bnei	a5,15,a2e066 <upg_set_firmware_update_status+0x24>
  a2e08c:	00090023          	sb	zero,0(s2)
  a2e090:	a8b5                	j	a2e10c <upg_set_firmware_update_status+0xca>
  a2e092:	02fa153b          	bnei	s4,2,a2e066 <upg_set_firmware_update_status+0x24>
  a2e096:	448d                	li	s1,3
  a2e098:	413484b3          	sub	s1,s1,s3
  a2e09c:	86a6                	mv	a3,s1
  a2e09e:	4601                	li	a2,0
  a2e0a0:	85a6                	mv	a1,s1
  a2e0a2:	854a                	mv	a0,s2
  a2e0a4:	273020ef          	jal	ra,a30b16 <memset_s>
  a2e0a8:	a09d                	j	a2e10e <upg_set_firmware_update_status+0xcc>
  a2e0aa:	02e99f3b          	bnei	s3,2,a2e066 <upg_set_firmware_update_status+0x24>
  a2e0ae:	00094783          	lbu	a5,0(s2)
  a2e0b2:	fbd5                	bnez	a5,a2e066 <upg_set_firmware_update_status+0x24>
  a2e0b4:	00a3 33e8 051f      	l.li	a0,0xa333e8
  a2e0ba:	902fe0ef          	jal	ra,a2c1bc <print_str>
  a2e0be:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e0c4:	4735                	li	a4,13
  a2e0c6:	b3d8                	sb	a4,5(a5)
  a2e0c8:	8000 3067 041f      	l.li	s0,0x80003067
  a2e0ce:	bf69                	j	a2e068 <upg_set_firmware_update_status+0x26>
  a2e0d0:	892a                	mv	s2,a0
  a2e0d2:	4981                	li	s3,0
  a2e0d4:	0068                	addi	a0,sp,12
  a2e0d6:	8a32                	mv	s4,a2
  a2e0d8:	84ae                	mv	s1,a1
  a2e0da:	c602                	sw	zero,12(sp)
  a2e0dc:	ba8ff0ef          	jal	ra,a2d484 <upg_get_upgrade_flag_flash_start_addr>
  a2e0e0:	842a                	mv	s0,a0
  a2e0e2:	f159                	bnez	a0,a2e068 <upg_set_firmware_update_status+0x26>
  a2e0e4:	cb9e 063c 079f      	l.li	a5,0xcb9e063c
  a2e0ea:	4432                	lw	s0,12(sp)
  a2e0ec:	f8f494e3          	bne	s1,a5,a2e074 <upg_set_firmware_update_status+0x32>
  a2e0f0:	04c40413          	addi	s0,s0,76
  a2e0f4:	944e                	add	s0,s0,s3
  a2e0f6:	f80a15e3          	bnez	s4,a2e080 <upg_set_firmware_update_status+0x3e>
  a2e0fa:	00094703          	lbu	a4,0(s2)
  a2e0fe:	0ff00793          	li	a5,255
  a2e102:	f6f712e3          	bne	a4,a5,a2e066 <upg_set_firmware_update_status+0x24>
  a2e106:	47bd                	li	a5,15
  a2e108:	00f90023          	sb	a5,0(s2)
  a2e10c:	4485                	li	s1,1
  a2e10e:	8522                	mv	a0,s0
  a2e110:	4681                	li	a3,0
  a2e112:	864a                	mv	a2,s2
  a2e114:	85a6                	mv	a1,s1
  a2e116:	cc0ff0ef          	jal	ra,a2d5d6 <upg_flash_write>
  a2e11a:	842a                	mv	s0,a0
  a2e11c:	d559                	beqz	a0,a2e0aa <upg_set_firmware_update_status+0x68>
  a2e11e:	85aa                	mv	a1,a0
  a2e120:	00a3 33b0 051f      	l.li	a0,0xa333b0
  a2e126:	896fe0ef          	jal	ra,a2c1bc <print_str>
  a2e12a:	bf3d                	j	a2e068 <upg_set_firmware_update_status+0x26>
  a2e12c:	4985                	li	s3,1
  a2e12e:	b75d                	j	a2e0d4 <upg_set_firmware_update_status+0x92>
  a2e130:	4989                	li	s3,2
  a2e132:	b74d                	j	a2e0d4 <upg_set_firmware_update_status+0x92>

00a2e134 <upg_get_image_update_status>:
  a2e134:	8128                	push	{ra,s0},-32
  a2e136:	00a3 1d48 079f      	l.li	a5,0xa31d48
  a2e13c:	239a                	lhu	a4,0(a5)
  a2e13e:	23bc                	lbu	a5,2(a5)
  a2e140:	00011423          	sh	zero,8(sp)
  a2e144:	00010523          	sb	zero,10(sp)
  a2e148:	00f10723          	sb	a5,14(sp)
  a2e14c:	00e11623          	sh	a4,12(sp)
  a2e150:	cb9e 063c 079f      	l.li	a5,0xcb9e063c
  a2e156:	04c50413          	addi	s0,a0,76
  a2e15a:	00f60563          	beq	a2,a5,a2e164 <upg_get_image_update_status+0x30>
  a2e15e:	02b5545b          	muliadd	s0,a0,a1,3
  a2e162:	0441                	addi	s0,s0,16
  a2e164:	460d                	li	a2,3
  a2e166:	002c                	addi	a1,sp,8
  a2e168:	8522                	mv	a0,s0
  a2e16a:	b85fa0ef          	jal	ra,a28cee <memcmp>
  a2e16e:	478d                	li	a5,3
  a2e170:	cd0d                	beqz	a0,a2e1aa <upg_get_image_update_status+0x76>
  a2e172:	460d                	li	a2,3
  a2e174:	006c                	addi	a1,sp,12
  a2e176:	8522                	mv	a0,s0
  a2e178:	b77fa0ef          	jal	ra,a28cee <memcmp>
  a2e17c:	4781                	li	a5,0
  a2e17e:	c515                	beqz	a0,a2e1aa <upg_get_image_update_status+0x76>
  a2e180:	201c                	lbu	a5,0(s0)
  a2e182:	4501                	li	a0,0
  a2e184:	eb81                	bnez	a5,a2e194 <upg_get_image_update_status+0x60>
  a2e186:	301c                	lbu	a5,1(s0)
  a2e188:	4505                	li	a0,1
  a2e18a:	e789                	bnez	a5,a2e194 <upg_get_image_update_status+0x60>
  a2e18c:	2028                	lbu	a0,2(s0)
  a2e18e:	00153513          	seqz	a0,a0
  a2e192:	0509                	addi	a0,a0,2
  a2e194:	942a                	add	s0,s0,a0
  a2e196:	2018                	lbu	a4,0(s0)
  a2e198:	4785                	li	a5,1
  a2e19a:	0f07043b          	beqi	a4,15,a2e1aa <upg_get_image_update_status+0x76>
  a2e19e:	0ff00693          	li	a3,255
  a2e1a2:	4789                	li	a5,2
  a2e1a4:	00d70363          	beq	a4,a3,a2e1aa <upg_get_image_update_status+0x76>
  a2e1a8:	4791                	li	a5,4
  a2e1aa:	853e                	mv	a0,a5
  a2e1ac:	8124                	popret	{ra,s0},32

00a2e1ae <upg_flash_erase_metadata_pages>:
  a2e1ae:	4501                	li	a0,0
  a2e1b0:	8082                	ret

00a2e1b2 <upg_set_temporary_result>:
  a2e1b2:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e1b8:	b3c8                	sb	a0,5(a5)
  a2e1ba:	8082                	ret

00a2e1bc <upg_set_update_result>:
  a2e1bc:	8118                	push	{ra},-32
  a2e1be:	c62a                	sw	a0,12(sp)
  a2e1c0:	0028                	addi	a0,sp,8
  a2e1c2:	c402                	sw	zero,8(sp)
  a2e1c4:	ac0ff0ef          	jal	ra,a2d484 <upg_get_upgrade_flag_flash_start_addr>
  a2e1c8:	e909                	bnez	a0,a2e1da <upg_set_update_result+0x1e>
  a2e1ca:	4522                	lw	a0,8(sp)
  a2e1cc:	4681                	li	a3,0
  a2e1ce:	0070                	addi	a2,sp,12
  a2e1d0:	4591                	li	a1,4
  a2e1d2:	05050513          	addi	a0,a0,80
  a2e1d6:	c00ff0ef          	jal	ra,a2d5d6 <upg_flash_write>
  a2e1da:	8114                	popret	{ra},32

00a2e1dc <upg_check_image_update_complete>:
  a2e1dc:	8158                	push	{ra,s0-s3},-48
  a2e1de:	842a                	mv	s0,a0
  a2e1e0:	89ae                	mv	s3,a1
  a2e1e2:	00011623          	sh	zero,12(sp)
  a2e1e6:	00010723          	sb	zero,14(sp)
  a2e1ea:	01050913          	addi	s2,a0,16
  a2e1ee:	4481                	li	s1,0
  a2e1f0:	445c                	lw	a5,12(s0)
  a2e1f2:	00f4ea63          	bltu	s1,a5,a2e206 <upg_check_image_update_complete+0x2a>
  a2e1f6:	4505                	li	a0,1
  a2e1f8:	01378f63          	beq	a5,s3,a2e216 <upg_check_image_update_complete+0x3a>
  a2e1fc:	04c44783          	lbu	a5,76(s0)
  a2e200:	0f07953b          	bnei	a5,15,a2e214 <upg_check_image_update_complete+0x38>
  a2e204:	a809                	j	a2e216 <upg_check_image_update_complete+0x3a>
  a2e206:	854a                	mv	a0,s2
  a2e208:	460d                	li	a2,3
  a2e20a:	006c                	addi	a1,sp,12
  a2e20c:	ae3fa0ef          	jal	ra,a28cee <memcmp>
  a2e210:	090d                	addi	s2,s2,3
  a2e212:	c119                	beqz	a0,a2e218 <upg_check_image_update_complete+0x3c>
  a2e214:	4501                	li	a0,0
  a2e216:	8154                	popret	{ra,s0-s3},48
  a2e218:	0485                	addi	s1,s1,1
  a2e21a:	bfd9                	j	a2e1f0 <upg_check_image_update_complete+0x14>

00a2e21c <upg_set_complete_flag>:
  a2e21c:	8848                	push	{ra,s0-s2},-144
  a2e21e:	84aa                	mv	s1,a0
  a2e220:	0068                	addi	a0,sp,12
  a2e222:	842e                	mv	s0,a1
  a2e224:	8932                	mv	s2,a2
  a2e226:	c602                	sw	zero,12(sp)
  a2e228:	a5cff0ef          	jal	ra,a2d484 <upg_get_upgrade_flag_flash_start_addr>
  a2e22c:	ed09                	bnez	a0,a2e246 <upg_set_complete_flag+0x2a>
  a2e22e:	4532                	lw	a0,12(sp)
  a2e230:	0850                	addi	a2,sp,20
  a2e232:	06c00593          	li	a1,108
  a2e236:	ae8ff0ef          	jal	ra,a2d51e <upg_flash_read>
  a2e23a:	c519                	beqz	a0,a2e248 <upg_set_complete_flag+0x2c>
  a2e23c:	00a3 336c 051f      	l.li	a0,0xa3336c
  a2e242:	f7bfd0ef          	jal	ra,a2c1bc <print_str>
  a2e246:	8844                	popret	{ra,s0-s2},144
  a2e248:	00090c63          	beqz	s2,a2e260 <upg_set_complete_flag+0x44>
  a2e24c:	57e6                	lw	a5,120(sp)
  a2e24e:	cb89                	beqz	a5,a2e260 <upg_set_complete_flag+0x44>
  a2e250:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e256:	33c8                	lbu	a0,5(a5)
  a2e258:	f65ff0ef          	jal	ra,a2e1bc <upg_set_update_result>
  a2e25c:	4581                	li	a1,0
  a2e25e:	a821                	j	a2e276 <upg_set_complete_flag+0x5a>
  a2e260:	85a6                	mv	a1,s1
  a2e262:	0848                	addi	a0,sp,20
  a2e264:	f79ff0ef          	jal	ra,a2e1dc <upg_check_image_update_complete>
  a2e268:	e81d                	bnez	s0,a2e29e <upg_set_complete_flag+0x82>
  a2e26a:	e91d                	bnez	a0,a2e2a0 <upg_set_complete_flag+0x84>
  a2e26c:	57e6                	lw	a5,120(sp)
  a2e26e:	65c1                	lui	a1,0x10
  a2e270:	15fd                	addi	a1,a1,-1 # ffff <ccause+0xf03d>
  a2e272:	04b78d63          	beq	a5,a1,a2e2cc <upg_set_complete_flag+0xb0>
  a2e276:	c82e                	sw	a1,16(sp)
  a2e278:	5a5a 5a5a 079f      	l.li	a5,0x5a5a5a5a
  a2e27e:	4432                	lw	s0,12(sp)
  a2e280:	fcf583e3          	beq	a1,a5,a2e246 <upg_set_complete_flag+0x2a>
  a2e284:	00a3 3390 051f      	l.li	a0,0xa33390
  a2e28a:	f33fd0ef          	jal	ra,a2c1bc <print_str>
  a2e28e:	4681                	li	a3,0
  a2e290:	0810                	addi	a2,sp,16
  a2e292:	4591                	li	a1,4
  a2e294:	06440513          	addi	a0,s0,100
  a2e298:	b3eff0ef          	jal	ra,a2d5d6 <upg_flash_write>
  a2e29c:	b76d                	j	a2e246 <upg_set_complete_flag+0x2a>
  a2e29e:	c911                	beqz	a0,a2e2b2 <upg_set_complete_flag+0x96>
  a2e2a0:	57e6                	lw	a5,120(sp)
  a2e2a2:	cb81                	beqz	a5,a2e2b2 <upg_set_complete_flag+0x96>
  a2e2a4:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e2aa:	f455                	bnez	s0,a2e256 <upg_set_complete_flag+0x3a>
  a2e2ac:	000782a3          	sb	zero,5(a5)
  a2e2b0:	b75d                	j	a2e256 <upg_set_complete_flag+0x3a>
  a2e2b2:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e2b8:	33dc                	lbu	a5,5(a5)
  a2e2ba:	5a5a 5a5a 059f      	l.li	a1,0x5a5a5a5a
  a2e2c0:	0de79dbb          	bnei	a5,13,a2e276 <upg_set_complete_flag+0x5a>
  a2e2c4:	57e6                	lw	a5,120(sp)
  a2e2c6:	dbc5                	beqz	a5,a2e276 <upg_set_complete_flag+0x5a>
  a2e2c8:	4535                	li	a0,13
  a2e2ca:	b779                	j	a2e258 <upg_set_complete_flag+0x3c>
  a2e2cc:	5a5a 5a5a 059f      	l.li	a1,0x5a5a5a5a
  a2e2d2:	b755                	j	a2e276 <upg_set_complete_flag+0x5a>

00a2e2d4 <upg_get_func_list>:
  a2e2d4:	00a0 5ad8 051f      	l.li	a0,0xa05ad8
  a2e2da:	0521                	addi	a0,a0,8
  a2e2dc:	8082                	ret

00a2e2de <upg_is_inited>:
  a2e2de:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e2e4:	2388                	lbu	a0,0(a5)
  a2e2e6:	8082                	ret

00a2e2e8 <uapi_upg_init>:
  a2e2e8:	8138                	push	{ra,s0-s1},-32
  a2e2ea:	00a06437          	lui	s0,0xa06
  a2e2ee:	ad844783          	lbu	a5,-1320(s0) # a05ad8 <g_upg_ctx>
  a2e2f2:	e7c9                	bnez	a5,a2e37c <uapi_upg_init+0x94>
  a2e2f4:	ad840413          	addi	s0,s0,-1320
  a2e2f8:	c519                	beqz	a0,a2e306 <uapi_upg_init+0x1e>
  a2e2fa:	411c                	lw	a5,0(a0)
  a2e2fc:	c41c                	sw	a5,8(s0)
  a2e2fe:	415c                	lw	a5,4(a0)
  a2e300:	c45c                	sw	a5,12(s0)
  a2e302:	451c                	lw	a5,8(a0)
  a2e304:	c81c                	sw	a5,16(s0)
  a2e306:	47b9                	li	a5,14
  a2e308:	b05c                	sb	a5,5(s0)
  a2e30a:	0068                	addi	a0,sp,12
  a2e30c:	4785                	li	a5,1
  a2e30e:	00042a23          	sw	zero,20(s0)
  a2e312:	a01c                	sb	a5,0(s0)
  a2e314:	000103a3          	sb	zero,7(sp)
  a2e318:	c402                	sw	zero,8(sp)
  a2e31a:	c602                	sw	zero,12(sp)
  a2e31c:	a95ff0ef          	jal	ra,a2ddb0 <upg_alloc_and_get_upgrade_flag>
  a2e320:	448d                	li	s1,3
  a2e322:	e931                	bnez	a0,a2e376 <uapi_upg_init+0x8e>
  a2e324:	47b2                	lw	a5,12(sp)
  a2e326:	55aa 55aa 071f      	l.li	a4,0x55aa55aa
  a2e32c:	4394                	lw	a3,0(a5)
  a2e32e:	04e69063          	bne	a3,a4,a2e36e <uapi_upg_init+0x86>
  a2e332:	57b4                	lw	a3,104(a5)
  a2e334:	aa55 aa55 071f      	l.li	a4,0xaa55aa55
  a2e33a:	02e69a63          	bne	a3,a4,a2e36e <uapi_upg_init+0x86>
  a2e33e:	53f8                	lw	a4,100(a5)
  a2e340:	4489                	li	s1,2
  a2e342:	e71d                	bnez	a4,a2e370 <uapi_upg_init+0x88>
  a2e344:	04f7c703          	lbu	a4,79(a5)
  a2e348:	c31d                	beqz	a4,a2e36e <uapi_upg_init+0x86>
  a2e34a:	0028                	addi	a0,sp,8
  a2e34c:	4ba4                	lw	s1,80(a5)
  a2e34e:	936ff0ef          	jal	ra,a2d484 <upg_get_upgrade_flag_flash_start_addr>
  a2e352:	ed11                	bnez	a0,a2e36e <uapi_upg_init+0x86>
  a2e354:	4522                	lw	a0,8(sp)
  a2e356:	4681                	li	a3,0
  a2e358:	00710613          	addi	a2,sp,7
  a2e35c:	04f50513          	addi	a0,a0,79
  a2e360:	4585                	li	a1,1
  a2e362:	c42a                	sw	a0,8(sp)
  a2e364:	a72ff0ef          	jal	ra,a2d5d6 <upg_flash_write>
  a2e368:	009034b3          	snez	s1,s1
  a2e36c:	c111                	beqz	a0,a2e370 <uapi_upg_init+0x88>
  a2e36e:	448d                	li	s1,3
  a2e370:	4532                	lw	a0,12(sp)
  a2e372:	a07ff0ef          	jal	ra,a2dd78 <upg_free>
  a2e376:	a044                	sb	s1,4(s0)
  a2e378:	4501                	li	a0,0
  a2e37a:	8134                	popret	{ra,s0-s1},32
  a2e37c:	8000 3041 051f      	l.li	a0,0x80003041
  a2e382:	bfe5                	j	a2e37a <uapi_upg_init+0x92>

00a2e384 <hash_operation.isra.1.constprop.11>:
  a2e384:	8028                	push	{ra,s0},-16
  a2e386:	4108                	lw	a0,0(a0)
  a2e388:	02000693          	li	a3,32
  a2e38c:	ebbfb0ef          	jal	ra,a2a246 <drv_rom_cipher_sha256>
  a2e390:	842a                	mv	s0,a0
  a2e392:	c519                	beqz	a0,a2e3a0 <hash_operation.isra.1.constprop.11+0x1c>
  a2e394:	85aa                	mv	a1,a0
  a2e396:	00a3 3408 051f      	l.li	a0,0xa33408
  a2e39c:	e21fd0ef          	jal	ra,a2c1bc <print_str>
  a2e3a0:	8522                	mv	a0,s0
  a2e3a2:	8024                	popret	{ra,s0},16

00a2e3a4 <verify_hash_cmp>:
  a2e3a4:	8018                	push	{ra},-16
  a2e3a6:	949fa0ef          	jal	ra,a28cee <memcmp>
  a2e3aa:	c901                	beqz	a0,a2e3ba <verify_hash_cmp+0x16>
  a2e3ac:	00a3 372c 051f      	l.li	a0,0xa3372c
  a2e3b2:	e0bfd0ef          	jal	ra,a2c1bc <print_str>
  a2e3b6:	557d                	li	a0,-1
  a2e3b8:	8014                	popret	{ra},16
  a2e3ba:	4501                	li	a0,0
  a2e3bc:	bff5                	j	a2e3b8 <verify_hash_cmp+0x14>

00a2e3be <upg_verify_hash>:
  a2e3be:	8548                	push	{ra,s0-s2},-96
  a2e3c0:	892a                	mv	s2,a0
  a2e3c2:	84ae                	mv	s1,a1
  a2e3c4:	8432                	mv	s0,a2
  a2e3c6:	4581                	li	a1,0
  a2e3c8:	02000613          	li	a2,32
  a2e3cc:	1808                	addi	a0,sp,48
  a2e3ce:	c636                	sw	a3,12(sp)
  a2e3d0:	dd4fa0ef          	jal	ra,a289a4 <memset>
  a2e3d4:	4785                	li	a5,1
  a2e3d6:	1810                	addi	a2,sp,48
  a2e3d8:	85a6                	mv	a1,s1
  a2e3da:	1028                	addi	a0,sp,40
  a2e3dc:	d44a                	sw	s2,40(sp)
  a2e3de:	02f10623          	sb	a5,44(sp)
  a2e3e2:	fa3ff0ef          	jal	ra,a2e384 <hash_operation.isra.1.constprop.11>
  a2e3e6:	46b2                	lw	a3,12(sp)
  a2e3e8:	c909                	beqz	a0,a2e3fa <upg_verify_hash+0x3c>
  a2e3ea:	85aa                	mv	a1,a0
  a2e3ec:	00a3 3698 051f      	l.li	a0,0xa33698
  a2e3f2:	dcbfd0ef          	jal	ra,a2c1bc <print_str>
  a2e3f6:	557d                	li	a0,-1
  a2e3f8:	8544                	popret	{ra,s0-s2},96
  a2e3fa:	8636                	mv	a2,a3
  a2e3fc:	180c                	addi	a1,sp,48
  a2e3fe:	8522                	mv	a0,s0
  a2e400:	fa5ff0ef          	jal	ra,a2e3a4 <verify_hash_cmp>
  a2e404:	d975                	beqz	a0,a2e3f8 <upg_verify_hash+0x3a>
  a2e406:	00a3 372c 051f      	l.li	a0,0xa3372c
  a2e40c:	db1fd0ef          	jal	ra,a2c1bc <print_str>
  a2e410:	b7dd                	j	a2e3f6 <upg_verify_hash+0x38>

00a2e412 <secure_authenticate>:
  a2e412:	8748                	push	{ra,s0-s2},-128
  a2e414:	57fd                	li	a5,-1
  a2e416:	c63e                	sw	a5,12(sp)
  a2e418:	c149                	beqz	a0,a2e49a <secure_authenticate+0x88>
  a2e41a:	c5bd                	beqz	a1,a2e488 <secure_authenticate+0x76>
  a2e41c:	c635                	beqz	a2,a2e488 <secure_authenticate+0x76>
  a2e41e:	0884                	addi	s1,sp,80
  a2e420:	cc2a                	sw	a0,24(sp)
  a2e422:	d232                	sw	a2,36(sp)
  a2e424:	02050513          	addi	a0,a0,32
  a2e428:	02060613          	addi	a2,a2,32
  a2e42c:	842e                	mv	s0,a1
  a2e42e:	02000913          	li	s2,32
  a2e432:	ce2a                	sw	a0,28(sp)
  a2e434:	d432                	sw	a2,40(sp)
  a2e436:	02000693          	li	a3,32
  a2e43a:	05a00613          	li	a2,90
  a2e43e:	02000593          	li	a1,32
  a2e442:	8526                	mv	a0,s1
  a2e444:	d04a                	sw	s2,32(sp)
  a2e446:	d64a                	sw	s2,44(sp)
  a2e448:	6ce020ef          	jal	ra,a30b16 <memset_s>
  a2e44c:	405c                	lw	a5,4(s0)
  a2e44e:	400c                	lw	a1,0(s0)
  a2e450:	8626                	mv	a2,s1
  a2e452:	c4be                	sw	a5,72(sp)
  a2e454:	00a8                	addi	a0,sp,72
  a2e456:	4785                	li	a5,1
  a2e458:	ca26                	sw	s1,20(sp)
  a2e45a:	c84a                	sw	s2,16(sp)
  a2e45c:	04f10623          	sb	a5,76(sp)
  a2e460:	f25ff0ef          	jal	ra,a2e384 <hash_operation.isra.1.constprop.11>
  a2e464:	842a                	mv	s0,a0
  a2e466:	c11d                	beqz	a0,a2e48c <secure_authenticate+0x7a>
  a2e468:	85aa                	mv	a1,a0
  a2e46a:	00a3 3448 051f      	l.li	a0,0xa33448
  a2e470:	d4dfd0ef          	jal	ra,a2c1bc <print_str>
  a2e474:	c622                	sw	s0,12(sp)
  a2e476:	47b2                	lw	a5,12(sp)
  a2e478:	c799                	beqz	a5,a2e486 <secure_authenticate+0x74>
  a2e47a:	45b2                	lw	a1,12(sp)
  a2e47c:	00a3 346c 051f      	l.li	a0,0xa3346c
  a2e482:	d3bfd0ef          	jal	ra,a2c1bc <print_str>
  a2e486:	47b2                	lw	a5,12(sp)
  a2e488:	853e                	mv	a0,a5
  a2e48a:	8744                	popret	{ra,s0-s2},128
  a2e48c:	1050                	addi	a2,sp,36
  a2e48e:	080c                	addi	a1,sp,16
  a2e490:	0828                	addi	a0,sp,24
  a2e492:	dadfb0ef          	jal	ra,a2a23e <drv_rom_cipher_pke_bp256r_verify>
  a2e496:	842a                	mv	s0,a0
  a2e498:	bff1                	j	a2e474 <secure_authenticate+0x62>
  a2e49a:	57fd                	li	a5,-1
  a2e49c:	b7f5                	j	a2e488 <secure_authenticate+0x76>

00a2e49e <verify_fota_info.isra.4>:
  a2e49e:	8238                	push	{ra,s0-s1},-48
  a2e4a0:	455c                	lw	a5,12(a0)
  a2e4a2:	842a                	mv	s0,a0
  a2e4a4:	0c050613          	addi	a2,a0,192
  a2e4a8:	200798bb          	bnei	a5,32,a2e4ca <verify_fota_info.isra.4+0x2c>
  a2e4ac:	00a3 36d4 051f      	l.li	a0,0xa336d4
  a2e4b2:	c632                	sw	a2,12(sp)
  a2e4b4:	d09fd0ef          	jal	ra,a2c1bc <print_str>
  a2e4b8:	4632                	lw	a2,12(sp)
  a2e4ba:	02000693          	li	a3,32
  a2e4be:	0c000593          	li	a1,192
  a2e4c2:	8522                	mv	a0,s0
  a2e4c4:	efbff0ef          	jal	ra,a2e3be <upg_verify_hash>
  a2e4c8:	8234                	popret	{ra,s0-s1},48
  a2e4ca:	00a3 3700 051f      	l.li	a0,0xa33700
  a2e4d0:	84ae                	mv	s1,a1
  a2e4d2:	c632                	sw	a2,12(sp)
  a2e4d4:	ce9fd0ef          	jal	ra,a2c1bc <print_str>
  a2e4d8:	4632                	lw	a2,12(sp)
  a2e4da:	0c000793          	li	a5,192
  a2e4de:	082c                	addi	a1,sp,24
  a2e4e0:	8526                	mv	a0,s1
  a2e4e2:	ce22                	sw	s0,28(sp)
  a2e4e4:	cc3e                	sw	a5,24(sp)
  a2e4e6:	f2dff0ef          	jal	ra,a2e412 <secure_authenticate>
  a2e4ea:	bff9                	j	a2e4c8 <verify_fota_info.isra.4+0x2a>

00a2e4ec <uapi_upg_verify_file_head>:
  a2e4ec:	8238                	push	{ra,s0-s1},-48
  a2e4ee:	84aa                	mv	s1,a0
  a2e4f0:	defff0ef          	jal	ra,a2e2de <upg_is_inited>
  a2e4f4:	c169                	beqz	a0,a2e5b6 <uapi_upg_verify_file_head+0xca>
  a2e4f6:	8feff0ef          	jal	ra,a2d5f4 <upg_get_root_public_key>
  a2e4fa:	c171                	beqz	a0,a2e5be <uapi_upg_verify_file_head+0xd2>
  a2e4fc:	409c                	lw	a5,0(s1)
  a2e4fe:	cb8d 154e 071f      	l.li	a4,0xcb8d154e
  a2e504:	04e79263          	bne	a5,a4,a2e548 <uapi_upg_verify_file_head+0x5c>
  a2e508:	1004a703          	lw	a4,256(s1)
  a2e50c:	02f71e63          	bne	a4,a5,a2e548 <uapi_upg_verify_file_head+0x5c>
  a2e510:	44dc                	lw	a5,12(s1)
  a2e512:	0c048613          	addi	a2,s1,192
  a2e516:	201790bb          	bnei	a5,32,a2e558 <uapi_upg_verify_file_head+0x6c>
  a2e51a:	00a3 3558 051f      	l.li	a0,0xa33558
  a2e520:	c632                	sw	a2,12(sp)
  a2e522:	c9bfd0ef          	jal	ra,a2c1bc <print_str>
  a2e526:	4632                	lw	a2,12(sp)
  a2e528:	02000693          	li	a3,32
  a2e52c:	0c000593          	li	a1,192
  a2e530:	8526                	mv	a0,s1
  a2e532:	e8dff0ef          	jal	ra,a2e3be <upg_verify_hash>
  a2e536:	842a                	mv	s0,a0
  a2e538:	c905                	beqz	a0,a2e568 <uapi_upg_verify_file_head+0x7c>
  a2e53a:	85aa                	mv	a1,a0
  a2e53c:	00a3 3588 051f      	l.li	a0,0xa33588
  a2e542:	c7bfd0ef          	jal	ra,a2c1bc <print_str>
  a2e546:	a039                	j	a2e554 <uapi_upg_verify_file_head+0x68>
  a2e548:	00a3 3534 051f      	l.li	a0,0xa33534
  a2e54e:	c6ffd0ef          	jal	ra,a2c1bc <print_str>
  a2e552:	547d                	li	s0,-1
  a2e554:	8522                	mv	a0,s0
  a2e556:	8234                	popret	{ra,s0-s1},48
  a2e558:	0c000793          	li	a5,192
  a2e55c:	082c                	addi	a1,sp,24
  a2e55e:	ce26                	sw	s1,28(sp)
  a2e560:	cc3e                	sw	a5,24(sp)
  a2e562:	eb1ff0ef          	jal	ra,a2e412 <secure_authenticate>
  a2e566:	bfc1                	j	a2e536 <uapi_upg_verify_file_head+0x4a>
  a2e568:	08048593          	addi	a1,s1,128
  a2e56c:	10048513          	addi	a0,s1,256
  a2e570:	f2fff0ef          	jal	ra,a2e49e <verify_fota_info.isra.4>
  a2e574:	842a                	mv	s0,a0
  a2e576:	c511                	beqz	a0,a2e582 <uapi_upg_verify_file_head+0x96>
  a2e578:	85aa                	mv	a1,a0
  a2e57a:	00a3 35b8 051f      	l.li	a0,0xa335b8
  a2e580:	b7c9                	j	a2e542 <uapi_upg_verify_file_head+0x56>
  a2e582:	8526                	mv	a0,s1
  a2e584:	88eff0ef          	jal	ra,a2d612 <upg_check_fota_information>
  a2e588:	842a                	mv	s0,a0
  a2e58a:	c511                	beqz	a0,a2e596 <uapi_upg_verify_file_head+0xaa>
  a2e58c:	85aa                	mv	a1,a0
  a2e58e:	00a3 35e8 051f      	l.li	a0,0xa335e8
  a2e594:	b77d                	j	a2e542 <uapi_upg_verify_file_head+0x56>
  a2e596:	00a0 5afc 079f      	l.li	a5,0xa05afc
  a2e59c:	439c                	lw	a5,0(a5)
  a2e59e:	dbdd                	beqz	a5,a2e554 <uapi_upg_verify_file_head+0x68>
  a2e5a0:	00a0 5b00 071f      	l.li	a4,0xa05b00
  a2e5a6:	4310                	lw	a2,0(a4)
  a2e5a8:	07000593          	li	a1,112
  a2e5ac:	15048513          	addi	a0,s1,336
  a2e5b0:	9782                	jalr	a5
  a2e5b2:	842a                	mv	s0,a0
  a2e5b4:	b745                	j	a2e554 <uapi_upg_verify_file_head+0x68>
  a2e5b6:	8000 3040 041f      	l.li	s0,0x80003040
  a2e5bc:	bf61                	j	a2e554 <uapi_upg_verify_file_head+0x68>
  a2e5be:	8000 3063 041f      	l.li	s0,0x80003063
  a2e5c4:	bf41                	j	a2e554 <uapi_upg_verify_file_head+0x68>

00a2e5c6 <uapi_upg_verify_file_image>:
  a2e5c6:	8148                	push	{ra,s0-s2},-32
  a2e5c8:	411c                	lw	a5,0(a0)
  a2e5ca:	464f 5451 071f      	l.li	a4,0x464f5451
  a2e5d0:	00e78e63          	beq	a5,a4,a2e5ec <uapi_upg_verify_file_image+0x26>
  a2e5d4:	85be                	mv	a1,a5
  a2e5d6:	00a3 3624 051f      	l.li	a0,0xa33624
  a2e5dc:	be1fd0ef          	jal	ra,a2c1bc <print_str>
  a2e5e0:	450d                	li	a0,3
  a2e5e2:	bd1ff0ef          	jal	ra,a2e1b2 <upg_set_temporary_result>
  a2e5e6:	547d                	li	s0,-1
  a2e5e8:	8522                	mv	a0,s0
  a2e5ea:	8144                	popret	{ra,s0-s2},32
  a2e5ec:	86b2                	mv	a3,a2
  a2e5ee:	862e                	mv	a2,a1
  a2e5f0:	0a000593          	li	a1,160
  a2e5f4:	84aa                	mv	s1,a0
  a2e5f6:	dc9ff0ef          	jal	ra,a2e3be <upg_verify_hash>
  a2e5fa:	842a                	mv	s0,a0
  a2e5fc:	c509                	beqz	a0,a2e606 <uapi_upg_verify_file_image+0x40>
  a2e5fe:	450d                	li	a0,3
  a2e600:	bb3ff0ef          	jal	ra,a2e1b2 <upg_set_temporary_result>
  a2e604:	b7d5                	j	a2e5e8 <uapi_upg_verify_file_image+0x22>
  a2e606:	44dc                	lw	a5,12(s1)
  a2e608:	0034                	addi	a3,sp,8
  a2e60a:	0070                	addi	a2,sp,12
  a2e60c:	07bd                	addi	a5,a5,15
  a2e60e:	9bc1                	andi	a5,a5,-16
  a2e610:	4581                	li	a1,0
  a2e612:	8526                	mv	a0,s1
  a2e614:	c402                	sw	zero,8(sp)
  a2e616:	c63e                	sw	a5,12(sp)
  a2e618:	981ff0ef          	jal	ra,a2df98 <upg_get_pkg_image_data>
  a2e61c:	842a                	mv	s0,a0
  a2e61e:	e905                	bnez	a0,a2e64e <uapi_upg_verify_file_image+0x88>
  a2e620:	4522                	lw	a0,8(sp)
  a2e622:	e901                	bnez	a0,a2e632 <uapi_upg_verify_file_image+0x6c>
  a2e624:	40cc                	lw	a1,4(s1)
  a2e626:	00a3 3664 051f      	l.li	a0,0xa33664
  a2e62c:	b91fd0ef          	jal	ra,a2c1bc <print_str>
  a2e630:	bf65                	j	a2e5e8 <uapi_upg_verify_file_image+0x22>
  a2e632:	45b2                	lw	a1,12(sp)
  a2e634:	02000693          	li	a3,32
  a2e638:	01048613          	addi	a2,s1,16
  a2e63c:	d83ff0ef          	jal	ra,a2e3be <upg_verify_hash>
  a2e640:	892a                	mv	s2,a0
  a2e642:	d16d                	beqz	a0,a2e624 <uapi_upg_verify_file_image+0x5e>
  a2e644:	450d                	li	a0,3
  a2e646:	b6dff0ef          	jal	ra,a2e1b2 <upg_set_temporary_result>
  a2e64a:	844a                	mv	s0,s2
  a2e64c:	bf71                	j	a2e5e8 <uapi_upg_verify_file_image+0x22>
  a2e64e:	892a                	mv	s2,a0
  a2e650:	bfd5                	j	a2e644 <uapi_upg_verify_file_image+0x7e>

00a2e652 <uapi_upg_verify_file>:
  a2e652:	8158                	push	{ra,s0-s3},-48
  a2e654:	892a                	mv	s2,a0
  a2e656:	c402                	sw	zero,8(sp)
  a2e658:	c87ff0ef          	jal	ra,a2e2de <upg_is_inited>
  a2e65c:	c161                	beqz	a0,a2e71c <uapi_upg_verify_file+0xca>
  a2e65e:	854a                	mv	a0,s2
  a2e660:	e8dff0ef          	jal	ra,a2e4ec <uapi_upg_verify_file_head>
  a2e664:	842a                	mv	s0,a0
  a2e666:	c511                	beqz	a0,a2e672 <uapi_upg_verify_file+0x20>
  a2e668:	4505                	li	a0,1
  a2e66a:	b49ff0ef          	jal	ra,a2e1b2 <upg_set_temporary_result>
  a2e66e:	8522                	mv	a0,s0
  a2e670:	8154                	popret	{ra,s0-s3},48
  a2e672:	00a3 349c 051f      	l.li	a0,0xa3349c
  a2e678:	b45fd0ef          	jal	ra,a2c1bc <print_str>
  a2e67c:	002c                	addi	a1,sp,8
  a2e67e:	854a                	mv	a0,s2
  a2e680:	8b7ff0ef          	jal	ra,a2df36 <upg_get_pkg_image_hash_table>
  a2e684:	842a                	mv	s0,a0
  a2e686:	e119                	bnez	a0,a2e68c <uapi_upg_verify_file+0x3a>
  a2e688:	4522                	lw	a0,8(sp)
  a2e68a:	e519                	bnez	a0,a2e698 <uapi_upg_verify_file+0x46>
  a2e68c:	00a3 34b8 051f      	l.li	a0,0xa334b8
  a2e692:	b2bfd0ef          	jal	ra,a2c1bc <print_str>
  a2e696:	bfe1                	j	a2e66e <uapi_upg_verify_file+0x1c>
  a2e698:	12492583          	lw	a1,292(s2)
  a2e69c:	02000693          	li	a3,32
  a2e6a0:	12890613          	addi	a2,s2,296
  a2e6a4:	d1bff0ef          	jal	ra,a2e3be <upg_verify_hash>
  a2e6a8:	842a                	mv	s0,a0
  a2e6aa:	c901                	beqz	a0,a2e6ba <uapi_upg_verify_file+0x68>
  a2e6ac:	4509                	li	a0,2
  a2e6ae:	b05ff0ef          	jal	ra,a2e1b2 <upg_set_temporary_result>
  a2e6b2:	4522                	lw	a0,8(sp)
  a2e6b4:	ec4ff0ef          	jal	ra,a2dd78 <upg_free>
  a2e6b8:	bf5d                	j	a2e66e <uapi_upg_verify_file+0x1c>
  a2e6ba:	00a3 34e4 051f      	l.li	a0,0xa334e4
  a2e6c0:	afdfd0ef          	jal	ra,a2c1bc <print_str>
  a2e6c4:	44a2                	lw	s1,8(sp)
  a2e6c6:	c602                	sw	zero,12(sp)
  a2e6c8:	4981                	li	s3,0
  a2e6ca:	04b1                	addi	s1,s1,12
  a2e6cc:	14892783          	lw	a5,328(s2)
  a2e6d0:	00f9e463          	bltu	s3,a5,a2e6d8 <uapi_upg_verify_file+0x86>
  a2e6d4:	4401                	li	s0,0
  a2e6d6:	a839                	j	a2e6f4 <uapi_upg_verify_file+0xa2>
  a2e6d8:	006c                	addi	a1,sp,12
  a2e6da:	ff448513          	addi	a0,s1,-12
  a2e6de:	88dff0ef          	jal	ra,a2df6a <upg_get_pkg_image_header>
  a2e6e2:	842a                	mv	s0,a0
  a2e6e4:	e119                	bnez	a0,a2e6ea <uapi_upg_verify_file+0x98>
  a2e6e6:	4532                	lw	a0,12(sp)
  a2e6e8:	e911                	bnez	a0,a2e6fc <uapi_upg_verify_file+0xaa>
  a2e6ea:	00a3 350c 051f      	l.li	a0,0xa3350c
  a2e6f0:	acdfd0ef          	jal	ra,a2c1bc <print_str>
  a2e6f4:	4532                	lw	a0,12(sp)
  a2e6f6:	e82ff0ef          	jal	ra,a2dd78 <upg_free>
  a2e6fa:	bf65                	j	a2e6b2 <uapi_upg_verify_file+0x60>
  a2e6fc:	85a6                	mv	a1,s1
  a2e6fe:	4685                	li	a3,1
  a2e700:	02000613          	li	a2,32
  a2e704:	ec3ff0ef          	jal	ra,a2e5c6 <uapi_upg_verify_file_image>
  a2e708:	842a                	mv	s0,a0
  a2e70a:	02c48493          	addi	s1,s1,44
  a2e70e:	f17d                	bnez	a0,a2e6f4 <uapi_upg_verify_file+0xa2>
  a2e710:	4532                	lw	a0,12(sp)
  a2e712:	0985                	addi	s3,s3,1
  a2e714:	e64ff0ef          	jal	ra,a2dd78 <upg_free>
  a2e718:	c602                	sw	zero,12(sp)
  a2e71a:	bf4d                	j	a2e6cc <uapi_upg_verify_file+0x7a>
  a2e71c:	8000 3040 041f      	l.li	s0,0x80003040
  a2e722:	b7b1                	j	a2e66e <uapi_upg_verify_file+0x1c>

00a2e724 <uapi_upg_reset_upgrade_flag>:
  a2e724:	8218                	push	{ra},-48
  a2e726:	c602                	sw	zero,12(sp)
  a2e728:	bb7ff0ef          	jal	ra,a2e2de <upg_is_inited>
  a2e72c:	c13d                	beqz	a0,a2e792 <uapi_upg_reset_upgrade_flag+0x6e>
  a2e72e:	080c                	addi	a1,sp,16
  a2e730:	0068                	addi	a0,sp,12
  a2e732:	d71fe0ef          	jal	ra,a2d4a2 <upg_get_progress_status_start_addr>
  a2e736:	ed29                	bnez	a0,a2e790 <uapi_upg_reset_upgrade_flag+0x6c>
  a2e738:	0028                	addi	a0,sp,8
  a2e73a:	d4bfe0ef          	jal	ra,a2d484 <upg_get_upgrade_flag_flash_start_addr>
  a2e73e:	e929                	bnez	a0,a2e790 <uapi_upg_reset_upgrade_flag+0x6c>
  a2e740:	4522                	lw	a0,8(sp)
  a2e742:	0850                	addi	a2,sp,20
  a2e744:	4591                	li	a1,4
  a2e746:	0521                	addi	a0,a0,8
  a2e748:	ca02                	sw	zero,20(sp)
  a2e74a:	dd5fe0ef          	jal	ra,a2d51e <upg_flash_read>
  a2e74e:	e129                	bnez	a0,a2e790 <uapi_upg_reset_upgrade_flag+0x6c>
  a2e750:	45c2                	lw	a1,16(sp)
  a2e752:	4532                	lw	a0,12(sp)
  a2e754:	dd5fe0ef          	jal	ra,a2d528 <upg_flash_erase>
  a2e758:	ed05                	bnez	a0,a2e790 <uapi_upg_reset_upgrade_flag+0x6c>
  a2e75a:	4522                	lw	a0,8(sp)
  a2e75c:	4681                	li	a3,0
  a2e75e:	0830                	addi	a2,sp,24
  a2e760:	4591                	li	a1,4
  a2e762:	0511                	addi	a0,a0,4
  a2e764:	cc02                	sw	zero,24(sp)
  a2e766:	e71fe0ef          	jal	ra,a2d5d6 <upg_flash_write>
  a2e76a:	e11d                	bnez	a0,a2e790 <uapi_upg_reset_upgrade_flag+0x6c>
  a2e76c:	4522                	lw	a0,8(sp)
  a2e76e:	55aa 55aa 079f      	l.li	a5,0x55aa55aa
  a2e774:	4681                	li	a3,0
  a2e776:	0870                	addi	a2,sp,28
  a2e778:	4591                	li	a1,4
  a2e77a:	ce3e                	sw	a5,28(sp)
  a2e77c:	e5bfe0ef          	jal	ra,a2d5d6 <upg_flash_write>
  a2e780:	e901                	bnez	a0,a2e790 <uapi_upg_reset_upgrade_flag+0x6c>
  a2e782:	4522                	lw	a0,8(sp)
  a2e784:	4681                	li	a3,0
  a2e786:	0850                	addi	a2,sp,20
  a2e788:	4591                	li	a1,4
  a2e78a:	0521                	addi	a0,a0,8
  a2e78c:	e4bfe0ef          	jal	ra,a2d5d6 <upg_flash_write>
  a2e790:	8214                	popret	{ra},48
  a2e792:	8000 3040 051f      	l.li	a0,0x80003040
  a2e798:	bfe5                	j	a2e790 <uapi_upg_reset_upgrade_flag+0x6c>

00a2e79a <uapi_upg_request_upgrade>:
  a2e79a:	8148                	push	{ra,s0-s2},-32
  a2e79c:	892a                	mv	s2,a0
  a2e79e:	c002                	sw	zero,0(sp)
  a2e7a0:	b3fff0ef          	jal	ra,a2e2de <upg_is_inited>
  a2e7a4:	0e050363          	beqz	a0,a2e88a <uapi_upg_request_upgrade+0xf0>
  a2e7a8:	850a                	mv	a0,sp
  a2e7aa:	f6aff0ef          	jal	ra,a2df14 <upg_get_package_header>
  a2e7ae:	842a                	mv	s0,a0
  a2e7b0:	e119                	bnez	a0,a2e7b6 <uapi_upg_request_upgrade+0x1c>
  a2e7b2:	4502                	lw	a0,0(sp)
  a2e7b4:	e901                	bnez	a0,a2e7c4 <uapi_upg_request_upgrade+0x2a>
  a2e7b6:	00a3 3758 051f      	l.li	a0,0xa33758
  a2e7bc:	a01fd0ef          	jal	ra,a2c1bc <print_str>
  a2e7c0:	8522                	mv	a0,s0
  a2e7c2:	8144                	popret	{ra,s0-s2},32
  a2e7c4:	e8fff0ef          	jal	ra,a2e652 <uapi_upg_verify_file>
  a2e7c8:	842a                	mv	s0,a0
  a2e7ca:	4502                	lw	a0,0(sp)
  a2e7cc:	c811                	beqz	s0,a2e7e0 <uapi_upg_request_upgrade+0x46>
  a2e7ce:	daaff0ef          	jal	ra,a2dd78 <upg_free>
  a2e7d2:	85a2                	mv	a1,s0
  a2e7d4:	00a3 377c 051f      	l.li	a0,0xa3377c
  a2e7da:	9e3fd0ef          	jal	ra,a2c1bc <print_str>
  a2e7de:	b7cd                	j	a2e7c0 <uapi_upg_request_upgrade+0x26>
  a2e7e0:	c602                	sw	zero,12(sp)
  a2e7e2:	14852483          	lw	s1,328(a0)
  a2e7e6:	1504e6bb          	bltui	s1,21,a2e800 <uapi_upg_request_upgrade+0x66>
  a2e7ea:	8000 3043 041f      	l.li	s0,0x80003043
  a2e7f0:	4502                	lw	a0,0(sp)
  a2e7f2:	d86ff0ef          	jal	ra,a2dd78 <upg_free>
  a2e7f6:	85a2                	mv	a1,s0
  a2e7f8:	00a3 37ac 051f      	l.li	a0,0xa337ac
  a2e7fe:	bff1                	j	a2e7da <uapi_upg_request_upgrade+0x40>
  a2e800:	006c                	addi	a1,sp,12
  a2e802:	f34ff0ef          	jal	ra,a2df36 <upg_get_pkg_image_hash_table>
  a2e806:	842a                	mv	s0,a0
  a2e808:	ed11                	bnez	a0,a2e824 <uapi_upg_request_upgrade+0x8a>
  a2e80a:	4532                	lw	a0,12(sp)
  a2e80c:	cd01                	beqz	a0,a2e824 <uapi_upg_request_upgrade+0x8a>
  a2e80e:	87aa                	mv	a5,a0
  a2e810:	2c9514db          	muliadd	s1,a0,s1,44
  a2e814:	cb9e 063c 071f      	l.li	a4,0xcb9e063c
  a2e81a:	06979163          	bne	a5,s1,a2e87c <uapi_upg_request_upgrade+0xe2>
  a2e81e:	d5aff0ef          	jal	ra,a2dd78 <upg_free>
  a2e822:	a039                	j	a2e830 <uapi_upg_request_upgrade+0x96>
  a2e824:	00a3 34b8 051f      	l.li	a0,0xa334b8
  a2e82a:	993fd0ef          	jal	ra,a2c1bc <print_str>
  a2e82e:	f069                	bnez	s0,a2e7f0 <uapi_upg_request_upgrade+0x56>
  a2e830:	4502                	lw	a0,0(sp)
  a2e832:	d46ff0ef          	jal	ra,a2dd78 <upg_free>
  a2e836:	0028                	addi	a0,sp,8
  a2e838:	c222                	sw	s0,4(sp)
  a2e83a:	c402                	sw	zero,8(sp)
  a2e83c:	c49fe0ef          	jal	ra,a2d484 <upg_get_upgrade_flag_flash_start_addr>
  a2e840:	842a                	mv	s0,a0
  a2e842:	e921                	bnez	a0,a2e892 <uapi_upg_request_upgrade+0xf8>
  a2e844:	4522                	lw	a0,8(sp)
  a2e846:	4681                	li	a3,0
  a2e848:	0050                	addi	a2,sp,4
  a2e84a:	4591                	li	a1,4
  a2e84c:	0531                	addi	a0,a0,12
  a2e84e:	d89fe0ef          	jal	ra,a2d5d6 <upg_flash_write>
  a2e852:	842a                	mv	s0,a0
  a2e854:	ed1d                	bnez	a0,a2e892 <uapi_upg_request_upgrade+0xf8>
  a2e856:	4522                	lw	a0,8(sp)
  a2e858:	aa55 aa55 079f      	l.li	a5,0xaa55aa55
  a2e85e:	4681                	li	a3,0
  a2e860:	0070                	addi	a2,sp,12
  a2e862:	4591                	li	a1,4
  a2e864:	06850513          	addi	a0,a0,104
  a2e868:	c63e                	sw	a5,12(sp)
  a2e86a:	d6dfe0ef          	jal	ra,a2d5d6 <upg_flash_write>
  a2e86e:	842a                	mv	s0,a0
  a2e870:	e10d                	bnez	a0,a2e892 <uapi_upg_request_upgrade+0xf8>
  a2e872:	f40907e3          	beqz	s2,a2e7c0 <uapi_upg_request_upgrade+0x26>
  a2e876:	c6dfe0ef          	jal	ra,a2d4e2 <upg_reboot>
  a2e87a:	b799                	j	a2e7c0 <uapi_upg_request_upgrade+0x26>
  a2e87c:	4394                	lw	a3,0(a5)
  a2e87e:	00e68363          	beq	a3,a4,a2e884 <uapi_upg_request_upgrade+0xea>
  a2e882:	0405                	addi	s0,s0,1
  a2e884:	02c78793          	addi	a5,a5,44
  a2e888:	bf49                	j	a2e81a <uapi_upg_request_upgrade+0x80>
  a2e88a:	8000 3040 041f      	l.li	s0,0x80003040
  a2e890:	bf05                	j	a2e7c0 <uapi_upg_request_upgrade+0x26>
  a2e892:	85a2                	mv	a1,s0
  a2e894:	00a3 37e8 051f      	l.li	a0,0xa337e8
  a2e89a:	b781                	j	a2e7da <uapi_upg_request_upgrade+0x40>

00a2e89c <upg_encry_and_write_pkt>:
  a2e89c:	8158                	push	{ra,s0-s3},-48
  a2e89e:	51f4                	lw	a3,100(a1)
  a2e8a0:	c402                	sw	zero,8(sp)
  a2e8a2:	c602                	sw	zero,12(sp)
  a2e8a4:	3c78 96e1 071f      	l.li	a4,0x3c7896e1
  a2e8aa:	08e69563          	bne	a3,a4,a2e934 <upg_encry_and_write_pkt+0x98>
  a2e8ae:	892e                	mv	s2,a1
  a2e8b0:	842a                	mv	s0,a0
  a2e8b2:	85b2                	mv	a1,a2
  a2e8b4:	0028                	addi	a0,sp,8
  a2e8b6:	f11fe0ef          	jal	ra,a2d7c6 <upg_process_cryto_info>
  a2e8ba:	84aa                	mv	s1,a0
  a2e8bc:	e905                	bnez	a0,a2e8ec <upg_encry_and_write_pkt+0x50>
  a2e8be:	4c5c                	lw	a5,28(s0)
  a2e8c0:	00f7f993          	andi	s3,a5,15
  a2e8c4:	9bc1                	andi	a5,a5,-16
  a2e8c6:	c63e                	sw	a5,12(sp)
  a2e8c8:	c3a1                	beqz	a5,a2e908 <upg_encry_and_write_pkt+0x6c>
  a2e8ca:	4722                	lw	a4,8(sp)
  a2e8cc:	4c08                	lw	a0,24(s0)
  a2e8ce:	864a                	mv	a2,s2
  a2e8d0:	40e785b3          	sub	a1,a5,a4
  a2e8d4:	953a                	add	a0,a0,a4
  a2e8d6:	f49fe0ef          	jal	ra,a2d81e <upg_encry_fota_pkt>
  a2e8da:	892a                	mv	s2,a0
  a2e8dc:	c911                	beqz	a0,a2e8f0 <upg_encry_and_write_pkt+0x54>
  a2e8de:	85aa                	mv	a1,a0
  a2e8e0:	00a3 3254 051f      	l.li	a0,0xa33254
  a2e8e6:	8d7fd0ef          	jal	ra,a2c1bc <print_str>
  a2e8ea:	84ca                	mv	s1,s2
  a2e8ec:	8526                	mv	a0,s1
  a2e8ee:	8154                	popret	{ra,s0-s3},48
  a2e8f0:	4014                	lw	a3,0(s0)
  a2e8f2:	4c0c                	lw	a1,24(s0)
  a2e8f4:	4408                	lw	a0,8(s0)
  a2e8f6:	4701                	li	a4,0
  a2e8f8:	0070                	addi	a2,sp,12
  a2e8fa:	790000ef          	jal	ra,a2f08a <upg_write_new_image_data>
  a2e8fe:	ed0d                	bnez	a0,a2e938 <upg_encry_and_write_pkt+0x9c>
  a2e900:	441c                	lw	a5,8(s0)
  a2e902:	4732                	lw	a4,12(sp)
  a2e904:	97ba                	add	a5,a5,a4
  a2e906:	c41c                	sw	a5,8(s0)
  a2e908:	02098463          	beqz	s3,a2e930 <upg_encry_and_write_pkt+0x94>
  a2e90c:	4c08                	lw	a0,24(s0)
  a2e90e:	4632                	lw	a2,12(sp)
  a2e910:	86ce                	mv	a3,s3
  a2e912:	6591                	lui	a1,0x4
  a2e914:	962a                	add	a2,a2,a0
  a2e916:	1bc020ef          	jal	ra,a30ad2 <memmove_s>
  a2e91a:	c901                	beqz	a0,a2e92a <upg_encry_and_write_pkt+0x8e>
  a2e91c:	00a3 3818 051f      	l.li	a0,0xa33818
  a2e922:	89bfd0ef          	jal	ra,a2c1bc <print_str>
  a2e926:	54fd                	li	s1,-1
  a2e928:	b7d1                	j	a2e8ec <upg_encry_and_write_pkt+0x50>
  a2e92a:	01342e23          	sw	s3,28(s0)
  a2e92e:	bf7d                	j	a2e8ec <upg_encry_and_write_pkt+0x50>
  a2e930:	00042e23          	sw	zero,28(s0)
  a2e934:	4481                	li	s1,0
  a2e936:	bf5d                	j	a2e8ec <upg_encry_and_write_pkt+0x50>
  a2e938:	4485                	li	s1,1
  a2e93a:	bf4d                	j	a2e8ec <upg_encry_and_write_pkt+0x50>

00a2e93c <upg_lzma_alloc>:
  a2e93c:	8128                	push	{ra,s0},-32
  a2e93e:	852e                	mv	a0,a1
  a2e940:	c62e                	sw	a1,12(sp)
  a2e942:	c1cff0ef          	jal	ra,a2dd5e <upg_malloc>
  a2e946:	842a                	mv	s0,a0
  a2e948:	45b2                	lw	a1,12(sp)
  a2e94a:	e511                	bnez	a0,a2e956 <upg_lzma_alloc+0x1a>
  a2e94c:	00a3 3848 051f      	l.li	a0,0xa33848
  a2e952:	86bfd0ef          	jal	ra,a2c1bc <print_str>
  a2e956:	8522                	mv	a0,s0
  a2e958:	8124                	popret	{ra,s0},32

00a2e95a <upg_lzma_free>:
  a2e95a:	c581                	beqz	a1,a2e962 <upg_lzma_free+0x8>
  a2e95c:	852e                	mv	a0,a1
  a2e95e:	c1aff06f          	j	a2dd78 <upg_free>
  a2e962:	8082                	ret

00a2e964 <upg_lzma_init_buf>:
  a2e964:	8128                	push	{ra,s0},-32
  a2e966:	842a                	mv	s0,a0
  a2e968:	02052023          	sw	zero,32(a0)
  a2e96c:	00052e23          	sw	zero,28(a0)
  a2e970:	6585                	lui	a1,0x1
  a2e972:	0028                	addi	a0,sp,8
  a2e974:	fc9ff0ef          	jal	ra,a2e93c <upg_lzma_alloc>
  a2e978:	c848                	sw	a0,20(s0)
  a2e97a:	cd11                	beqz	a0,a2e996 <upg_lzma_init_buf+0x32>
  a2e97c:	6591                	lui	a1,0x4
  a2e97e:	0028                	addi	a0,sp,8
  a2e980:	fbdff0ef          	jal	ra,a2e93c <upg_lzma_alloc>
  a2e984:	cc08                	sw	a0,24(s0)
  a2e986:	4781                	li	a5,0
  a2e988:	e911                	bnez	a0,a2e99c <upg_lzma_init_buf+0x38>
  a2e98a:	484c                	lw	a1,20(s0)
  a2e98c:	0028                	addi	a0,sp,8
  a2e98e:	fcdff0ef          	jal	ra,a2e95a <upg_lzma_free>
  a2e992:	00042a23          	sw	zero,20(s0)
  a2e996:	800007b7          	lui	a5,0x80000
  a2e99a:	0795                	addi	a5,a5,5 # 80000005 <_gp_+0x7f5cb7f1>
  a2e99c:	853e                	mv	a0,a5
  a2e99e:	8124                	popret	{ra,s0},32

00a2e9a0 <upg_lzma_init>:
  a2e9a0:	8168                	push	{ra,s0-s4},-48
  a2e9a2:	00a2 e93c 079f      	l.li	a5,0xa2e93c
  a2e9a8:	c43e                	sw	a5,8(sp)
  a2e9aa:	00a2 e95a 079f      	l.li	a5,0xa2e95a
  a2e9b0:	00052823          	sw	zero,16(a0)
  a2e9b4:	00052423          	sw	zero,8(a0)
  a2e9b8:	c63e                	sw	a5,12(sp)
  a2e9ba:	0506f3bb          	bgeui	a3,5,a2e9c8 <upg_lzma_init+0x28>
  a2e9be:	8000 3042 041f      	l.li	s0,0x80003042
  a2e9c4:	8522                	mv	a0,s0
  a2e9c6:	8164                	popret	{ra,s0-s4},48
  a2e9c8:	89b2                	mv	s3,a2
  a2e9ca:	8436                	mv	s0,a3
  a2e9cc:	8a2e                	mv	s4,a1
  a2e9ce:	0034                	addi	a3,sp,8
  a2e9d0:	4615                	li	a2,5
  a2e9d2:	85ce                	mv	a1,s3
  a2e9d4:	84aa                	mv	s1,a0
  a2e9d6:	03c020ef          	jal	ra,a30a12 <LzmaDec_AllocateProbs>
  a2e9da:	c939                	beqz	a0,a2ea30 <upg_lzma_init+0x90>
  a2e9dc:	842a                	mv	s0,a0
  a2e9de:	b7dd                	j	a2e9c4 <upg_lzma_init+0x24>
  a2e9e0:	00f98733          	add	a4,s3,a5
  a2e9e4:	3358                	lbu	a4,5(a4)
  a2e9e6:	00379613          	slli	a2,a5,0x3
  a2e9ea:	0785                	addi	a5,a5,1
  a2e9ec:	00c71733          	sll	a4,a4,a2
  a2e9f0:	993a                	add	s2,s2,a4
  a2e9f2:	fed7e7e3          	bltu	a5,a3,a2e9e0 <upg_lzma_init+0x40>
  a2e9f6:	40c0                	lw	s0,4(s1)
  a2e9f8:	00897363          	bgeu	s2,s0,a2e9fe <upg_lzma_init+0x5e>
  a2e9fc:	844a                	mv	s0,s2
  a2e9fe:	d061                	beqz	s0,a2e9be <upg_lzma_init+0x1e>
  a2ea00:	85a2                	mv	a1,s0
  a2ea02:	0028                	addi	a0,sp,8
  a2ea04:	f39ff0ef          	jal	ra,a2e93c <upg_lzma_alloc>
  a2ea08:	c888                	sw	a0,16(s1)
  a2ea0a:	cd19                	beqz	a0,a2ea28 <upg_lzma_init+0x88>
  a2ea0c:	c8c0                	sw	s0,20(s1)
  a2ea0e:	012a2823          	sw	s2,16(s4)
  a2ea12:	8552                	mv	a0,s4
  a2ea14:	f51ff0ef          	jal	ra,a2e964 <upg_lzma_init_buf>
  a2ea18:	842a                	mv	s0,a0
  a2ea1a:	c105                	beqz	a0,a2ea3a <upg_lzma_init+0x9a>
  a2ea1c:	488c                	lw	a1,16(s1)
  a2ea1e:	0028                	addi	a0,sp,8
  a2ea20:	f3bff0ef          	jal	ra,a2e95a <upg_lzma_free>
  a2ea24:	0004a823          	sw	zero,16(s1)
  a2ea28:	80000437          	lui	s0,0x80000
  a2ea2c:	0415                	addi	s0,s0,5 # 80000005 <_gp_+0x7f5cb7f1>
  a2ea2e:	bf59                	j	a2e9c4 <upg_lzma_init+0x24>
  a2ea30:	4781                	li	a5,0
  a2ea32:	4901                	li	s2,0
  a2ea34:	ffb40693          	addi	a3,s0,-5
  a2ea38:	bf6d                	j	a2e9f2 <upg_lzma_init+0x52>
  a2ea3a:	8526                	mv	a0,s1
  a2ea3c:	351010ef          	jal	ra,a3058c <LzmaDec_Init>
  a2ea40:	b751                	j	a2e9c4 <upg_lzma_init+0x24>

00a2ea42 <upg_lzma_deinit>:
  a2ea42:	8138                	push	{ra,s0-s1},-32
  a2ea44:	842e                	mv	s0,a1
  a2ea46:	490c                	lw	a1,16(a0)
  a2ea48:	00a2 e93c 079f      	l.li	a5,0xa2e93c
  a2ea4e:	84aa                	mv	s1,a0
  a2ea50:	c43e                	sw	a5,8(sp)
  a2ea52:	0028                	addi	a0,sp,8
  a2ea54:	00a2 e95a 079f      	l.li	a5,0xa2e95a
  a2ea5a:	c63e                	sw	a5,12(sp)
  a2ea5c:	effff0ef          	jal	ra,a2e95a <upg_lzma_free>
  a2ea60:	002c                	addi	a1,sp,8
  a2ea62:	8526                	mv	a0,s1
  a2ea64:	0004a823          	sw	zero,16(s1)
  a2ea68:	6ff010ef          	jal	ra,a30966 <LzmaDec_FreeProbs>
  a2ea6c:	484c                	lw	a1,20(s0)
  a2ea6e:	0028                	addi	a0,sp,8
  a2ea70:	eebff0ef          	jal	ra,a2e95a <upg_lzma_free>
  a2ea74:	4c0c                	lw	a1,24(s0)
  a2ea76:	00042a23          	sw	zero,20(s0)
  a2ea7a:	0028                	addi	a0,sp,8
  a2ea7c:	edfff0ef          	jal	ra,a2e95a <upg_lzma_free>
  a2ea80:	00042c23          	sw	zero,24(s0)
  a2ea84:	8134                	popret	{ra,s0-s1},32

00a2ea86 <upg_lzma_write_image>:
  a2ea86:	8028                	push	{ra,s0},-16
  a2ea88:	51f8                	lw	a4,100(a1)
  a2ea8a:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a2ea90:	02f70263          	beq	a4,a5,a2eab4 <upg_lzma_write_image+0x2e>
  a2ea94:	842a                	mv	s0,a0
  a2ea96:	4114                	lw	a3,0(a0)
  a2ea98:	01c50613          	addi	a2,a0,28
  a2ea9c:	4d0c                	lw	a1,24(a0)
  a2ea9e:	4508                	lw	a0,8(a0)
  a2eaa0:	4701                	li	a4,0
  a2eaa2:	23e5                	jal	ra,a2f08a <upg_write_new_image_data>
  a2eaa4:	e11d                	bnez	a0,a2eaca <upg_lzma_write_image+0x44>
  a2eaa6:	441c                	lw	a5,8(s0)
  a2eaa8:	4c58                	lw	a4,28(s0)
  a2eaaa:	00042e23          	sw	zero,28(s0)
  a2eaae:	97ba                	add	a5,a5,a4
  a2eab0:	c41c                	sw	a5,8(s0)
  a2eab2:	8024                	popret	{ra,s0},16
  a2eab4:	de9ff0ef          	jal	ra,a2e89c <upg_encry_and_write_pkt>
  a2eab8:	dd6d                	beqz	a0,a2eab2 <upg_lzma_write_image+0x2c>
  a2eaba:	85aa                	mv	a1,a0
  a2eabc:	00a3 3930 051f      	l.li	a0,0xa33930
  a2eac2:	efafd0ef          	jal	ra,a2c1bc <print_str>
  a2eac6:	557d                	li	a0,-1
  a2eac8:	b7ed                	j	a2eab2 <upg_lzma_write_image+0x2c>
  a2eaca:	4505                	li	a0,1
  a2eacc:	b7dd                	j	a2eab2 <upg_lzma_write_image+0x2c>

00a2eace <upg_lzma_decode_to_midbuf>:
  a2eace:	81a8                	push	{ra,s0-s8},-64
  a2ead0:	0205a983          	lw	s3,32(a1) # 4020 <ccause+0x305e>
  a2ead4:	8aaa                	mv	s5,a0
  a2ead6:	84ae                	mv	s1,a1
  a2ead8:	8b32                	mv	s6,a2
  a2eada:	8bb6                	mv	s7,a3
  a2eadc:	000103a3          	sb	zero,7(sp)
  a2eae0:	4901                	li	s2,0
  a2eae2:	6a11                	lui	s4,0x4
  a2eae4:	6c05                	lui	s8,0x1
  a2eae6:	01396463          	bltu	s2,s3,a2eaee <upg_lzma_decode_to_midbuf+0x20>
  a2eaea:	4501                	li	a0,0
  a2eaec:	a041                	j	a2eb6c <upg_lzma_decode_to_midbuf+0x9e>
  a2eaee:	4898                	lw	a4,16(s1)
  a2eaf0:	412987b3          	sub	a5,s3,s2
  a2eaf4:	c43e                	sw	a5,8(sp)
  a2eaf6:	c652                	sw	s4,12(sp)
  a2eaf8:	4781                	li	a5,0
  a2eafa:	01477463          	bgeu	a4,s4,a2eb02 <upg_lzma_decode_to_midbuf+0x34>
  a2eafe:	c63a                	sw	a4,12(sp)
  a2eb00:	4785                	li	a5,1
  a2eb02:	4c88                	lw	a0,24(s1)
  a2eb04:	48d4                	lw	a3,20(s1)
  a2eb06:	4ccc                	lw	a1,28(s1)
  a2eb08:	00710813          	addi	a6,sp,7
  a2eb0c:	0038                	addi	a4,sp,8
  a2eb0e:	95aa                	add	a1,a1,a0
  a2eb10:	96ca                	add	a3,a3,s2
  a2eb12:	0070                	addi	a2,sp,12
  a2eb14:	8556                	mv	a0,s5
  a2eb16:	5bd010ef          	jal	ra,a308d2 <LzmaDec_DecodeToBuf>
  a2eb1a:	842a                	mv	s0,a0
  a2eb1c:	c909                	beqz	a0,a2eb2e <upg_lzma_decode_to_midbuf+0x60>
  a2eb1e:	85aa                	mv	a1,a0
  a2eb20:	00a3 38dc 051f      	l.li	a0,0xa338dc
  a2eb26:	e96fd0ef          	jal	ra,a2c1bc <print_str>
  a2eb2a:	8522                	mv	a0,s0
  a2eb2c:	a081                	j	a2eb6c <upg_lzma_decode_to_midbuf+0x9e>
  a2eb2e:	47a2                	lw	a5,8(sp)
  a2eb30:	4532                	lw	a0,12(sp)
  a2eb32:	993e                	add	s2,s2,a5
  a2eb34:	489c                	lw	a5,16(s1)
  a2eb36:	8f89                	sub	a5,a5,a0
  a2eb38:	c89c                	sw	a5,16(s1)
  a2eb3a:	4cdc                	lw	a5,28(s1)
  a2eb3c:	97aa                	add	a5,a5,a0
  a2eb3e:	ccdc                	sw	a5,28(s1)
  a2eb40:	2321                	jal	ra,a2f048 <upg_calculate_and_notify_process>
  a2eb42:	4cdc                	lw	a5,28(s1)
  a2eb44:	40fa07b3          	sub	a5,s4,a5
  a2eb48:	0187e663          	bltu	a5,s8,a2eb54 <upg_lzma_decode_to_midbuf+0x86>
  a2eb4c:	489c                	lw	a5,16(s1)
  a2eb4e:	c399                	beqz	a5,a2eb54 <upg_lzma_decode_to_midbuf+0x86>
  a2eb50:	01299f63          	bne	s3,s2,a2eb6e <upg_lzma_decode_to_midbuf+0xa0>
  a2eb54:	865e                	mv	a2,s7
  a2eb56:	85da                	mv	a1,s6
  a2eb58:	8526                	mv	a0,s1
  a2eb5a:	f2dff0ef          	jal	ra,a2ea86 <upg_lzma_write_image>
  a2eb5e:	c901                	beqz	a0,a2eb6e <upg_lzma_decode_to_midbuf+0xa0>
  a2eb60:	00a3 390c 051f      	l.li	a0,0xa3390c
  a2eb66:	e56fd0ef          	jal	ra,a2c1bc <print_str>
  a2eb6a:	557d                	li	a0,-1
  a2eb6c:	81a4                	popret	{ra,s0-s8},64
  a2eb6e:	4722                	lw	a4,8(sp)
  a2eb70:	489c                	lw	a5,16(s1)
  a2eb72:	e319                	bnez	a4,a2eb78 <upg_lzma_decode_to_midbuf+0xaa>
  a2eb74:	4732                	lw	a4,12(sp)
  a2eb76:	c319                	beqz	a4,a2eb7c <upg_lzma_decode_to_midbuf+0xae>
  a2eb78:	dbcd                	beqz	a5,a2eb2a <upg_lzma_decode_to_midbuf+0x5c>
  a2eb7a:	b7b5                	j	a2eae6 <upg_lzma_decode_to_midbuf+0x18>
  a2eb7c:	d7dd                	beqz	a5,a2eb2a <upg_lzma_decode_to_midbuf+0x5c>
  a2eb7e:	00714403          	lbu	s0,7(sp)
  a2eb82:	147d                	addi	s0,s0,-1
  a2eb84:	00803433          	snez	s0,s0
  a2eb88:	b74d                	j	a2eb2a <upg_lzma_decode_to_midbuf+0x5c>

00a2eb8a <upg_lzma_decode>:
  a2eb8a:	8168                	push	{ra,s0-s4},-48
  a2eb8c:	4785                	li	a5,1
  a2eb8e:	89aa                	mv	s3,a0
  a2eb90:	84ae                	mv	s1,a1
  a2eb92:	8932                	mv	s2,a2
  a2eb94:	00f105a3          	sb	a5,11(sp)
  a2eb98:	6a05                	lui	s4,0x1
  a2eb9a:	44c0                	lw	s0,12(s1)
  a2eb9c:	c015                	beqz	s0,a2ebc0 <upg_lzma_decode+0x36>
  a2eb9e:	008a7363          	bgeu	s4,s0,a2eba4 <upg_lzma_decode+0x1a>
  a2eba2:	6405                	lui	s0,0x1
  a2eba4:	48cc                	lw	a1,20(s1)
  a2eba6:	40c8                	lw	a0,4(s1)
  a2eba8:	0070                	addi	a2,sp,12
  a2ebaa:	c622                	sw	s0,12(sp)
  a2ebac:	aacff0ef          	jal	ra,a2de58 <upg_read_fota_pkg_data>
  a2ebb0:	c911                	beqz	a0,a2ebc4 <upg_lzma_decode+0x3a>
  a2ebb2:	4405                	li	s0,1
  a2ebb4:	85a2                	mv	a1,s0
  a2ebb6:	00a3 3878 051f      	l.li	a0,0xa33878
  a2ebbc:	e00fd0ef          	jal	ra,a2c1bc <print_str>
  a2ebc0:	8522                	mv	a0,s0
  a2ebc2:	8164                	popret	{ra,s0-s4},48
  a2ebc4:	45b2                	lw	a1,12(sp)
  a2ebc6:	48c8                	lw	a0,20(s1)
  a2ebc8:	864a                	mv	a2,s2
  a2ebca:	c15fe0ef          	jal	ra,a2d7de <upg_decry_fota_pkt>
  a2ebce:	e51d                	bnez	a0,a2ebfc <upg_lzma_decode+0x72>
  a2ebd0:	4732                	lw	a4,12(sp)
  a2ebd2:	40dc                	lw	a5,4(s1)
  a2ebd4:	00b10693          	addi	a3,sp,11
  a2ebd8:	d098                	sw	a4,32(s1)
  a2ebda:	97ba                	add	a5,a5,a4
  a2ebdc:	c0dc                	sw	a5,4(s1)
  a2ebde:	44dc                	lw	a5,12(s1)
  a2ebe0:	864a                	mv	a2,s2
  a2ebe2:	85a6                	mv	a1,s1
  a2ebe4:	8f99                	sub	a5,a5,a4
  a2ebe6:	c4dc                	sw	a5,12(s1)
  a2ebe8:	854e                	mv	a0,s3
  a2ebea:	ee5ff0ef          	jal	ra,a2eace <upg_lzma_decode_to_midbuf>
  a2ebee:	842a                	mv	s0,a0
  a2ebf0:	c901                	beqz	a0,a2ec00 <upg_lzma_decode+0x76>
  a2ebf2:	85aa                	mv	a1,a0
  a2ebf4:	00a3 38ac 051f      	l.li	a0,0xa338ac
  a2ebfa:	b7c9                	j	a2ebbc <upg_lzma_decode+0x32>
  a2ebfc:	547d                	li	s0,-1
  a2ebfe:	bf5d                	j	a2ebb4 <upg_lzma_decode+0x2a>
  a2ec00:	90ffe0ef          	jal	ra,a2d50e <upg_watchdog_kick>
  a2ec04:	bf59                	j	a2eb9a <upg_lzma_decode+0x10>

00a2ec06 <upg_check_first_entry>:
  a2ec06:	8148                	push	{ra,s0-s2},-32
  a2ec08:	00a3 1d4c 079f      	l.li	a5,0xa31d4c
  a2ec0e:	239a                	lhu	a4,0(a5)
  a2ec10:	23bc                	lbu	a5,2(a5)
  a2ec12:	892a                	mv	s2,a0
  a2ec14:	00e11623          	sh	a4,12(sp)
  a2ec18:	00f10723          	sb	a5,14(sp)
  a2ec1c:	01050493          	addi	s1,a0,16
  a2ec20:	4401                	li	s0,0
  a2ec22:	00c92783          	lw	a5,12(s2)
  a2ec26:	00f46463          	bltu	s0,a5,a2ec2e <upg_check_first_entry+0x28>
  a2ec2a:	4505                	li	a0,1
  a2ec2c:	8144                	popret	{ra,s0-s2},32
  a2ec2e:	8526                	mv	a0,s1
  a2ec30:	460d                	li	a2,3
  a2ec32:	006c                	addi	a1,sp,12
  a2ec34:	8bafa0ef          	jal	ra,a28cee <memcmp>
  a2ec38:	048d                	addi	s1,s1,3
  a2ec3a:	e119                	bnez	a0,a2ec40 <upg_check_first_entry+0x3a>
  a2ec3c:	0405                	addi	s0,s0,1 # 1001 <ccause+0x3f>
  a2ec3e:	b7d5                	j	a2ec22 <upg_check_first_entry+0x1c>
  a2ec40:	4501                	li	a0,0
  a2ec42:	b7ed                	j	a2ec2c <upg_check_first_entry+0x26>

00a2ec44 <uapi_upg_start>:
  a2ec44:	82d8                	push	{ra,s0-s11},-96
  a2ec46:	c602                	sw	zero,12(sp)
  a2ec48:	c802                	sw	zero,16(sp)
  a2ec4a:	e94ff0ef          	jal	ra,a2e2de <upg_is_inited>
  a2ec4e:	3e050063          	beqz	a0,a2f02e <uapi_upg_start+0x3ea>
  a2ec52:	84aa                	mv	s1,a0
  a2ec54:	0068                	addi	a0,sp,12
  a2ec56:	95aff0ef          	jal	ra,a2ddb0 <upg_alloc_and_get_upgrade_flag>
  a2ec5a:	892a                	mv	s2,a0
  a2ec5c:	4501                	li	a0,0
  a2ec5e:	02091b63          	bnez	s2,a2ec94 <uapi_upg_start+0x50>
  a2ec62:	47b2                	lw	a5,12(sp)
  a2ec64:	cb85                	beqz	a5,a2ec94 <uapi_upg_start+0x50>
  a2ec66:	4394                	lw	a3,0(a5)
  a2ec68:	55aa 55aa 071f      	l.li	a4,0x55aa55aa
  a2ec6e:	00e69a63          	bne	a3,a4,a2ec82 <uapi_upg_start+0x3e>
  a2ec72:	57b4                	lw	a3,104(a5)
  a2ec74:	aa55 aa55 071f      	l.li	a4,0xaa55aa55
  a2ec7a:	00e69463          	bne	a3,a4,a2ec82 <uapi_upg_start+0x3e>
  a2ec7e:	53fc                	lw	a5,100(a5)
  a2ec80:	e795                	bnez	a5,a2ecac <uapi_upg_start+0x68>
  a2ec82:	00a3 3960 051f      	l.li	a0,0xa33960
  a2ec88:	d34fd0ef          	jal	ra,a2c1bc <print_str>
  a2ec8c:	4501                	li	a0,0
  a2ec8e:	8000 3047 091f      	l.li	s2,0x80003047
  a2ec94:	8626                	mv	a2,s1
  a2ec96:	85ca                	mv	a1,s2
  a2ec98:	d84ff0ef          	jal	ra,a2e21c <upg_set_complete_flag>
  a2ec9c:	4532                	lw	a0,12(sp)
  a2ec9e:	8daff0ef          	jal	ra,a2dd78 <upg_free>
  a2eca2:	4542                	lw	a0,16(sp)
  a2eca4:	8d4ff0ef          	jal	ra,a2dd78 <upg_free>
  a2eca8:	854a                	mv	a0,s2
  a2ecaa:	82d4                	popret	{ra,s0-s11},96
  a2ecac:	0808                	addi	a0,sp,16
  a2ecae:	a66ff0ef          	jal	ra,a2df14 <upg_get_package_header>
  a2ecb2:	892a                	mv	s2,a0
  a2ecb4:	e119                	bnez	a0,a2ecba <uapi_upg_start+0x76>
  a2ecb6:	47c2                	lw	a5,16(sp)
  a2ecb8:	eb81                	bnez	a5,a2ecc8 <uapi_upg_start+0x84>
  a2ecba:	00a3 3758 051f      	l.li	a0,0xa33758
  a2ecc0:	cfcfd0ef          	jal	ra,a2c1bc <print_str>
  a2ecc4:	4501                	li	a0,0
  a2ecc6:	b7f9                	j	a2ec94 <uapi_upg_start+0x50>
  a2ecc8:	4532                	lw	a0,12(sp)
  a2ecca:	f3dff0ef          	jal	ra,a2ec06 <upg_check_first_entry>
  a2ecce:	842a                	mv	s0,a0
  a2ecd0:	ed05                	bnez	a0,a2ed08 <uapi_upg_start+0xc4>
  a2ecd2:	8d6ff0ef          	jal	ra,a2dda8 <upg_get_ctx>
  a2ecd6:	49c2                	lw	s3,16(sp)
  a2ecd8:	cc02                	sw	zero,24(sp)
  a2ecda:	00052e23          	sw	zero,28(a0)
  a2ecde:	02052023          	sw	zero,32(a0)
  a2ece2:	842a                	mv	s0,a0
  a2ece4:	082c                	addi	a1,sp,24
  a2ece6:	854e                	mv	a0,s3
  a2ece8:	4b32                	lw	s6,12(sp)
  a2ecea:	a4cff0ef          	jal	ra,a2df36 <upg_get_pkg_image_hash_table>
  a2ecee:	892a                	mv	s2,a0
  a2ecf0:	c11d                	beqz	a0,a2ed16 <uapi_upg_start+0xd2>
  a2ecf2:	00a3 34b8 051f      	l.li	a0,0xa334b8
  a2ecf8:	cc4fd0ef          	jal	ra,a2c1bc <print_str>
  a2ecfc:	04090563          	beqz	s2,a2ed46 <uapi_upg_start+0x102>
  a2ed00:	4505                	li	a0,1
  a2ed02:	cb0ff0ef          	jal	ra,a2e1b2 <upg_set_temporary_result>
  a2ed06:	bf7d                	j	a2ecc4 <uapi_upg_start+0x80>
  a2ed08:	4542                	lw	a0,16(sp)
  a2ed0a:	949ff0ef          	jal	ra,a2e652 <uapi_upg_verify_file>
  a2ed0e:	892a                	mv	s2,a0
  a2ed10:	d169                	beqz	a0,a2ecd2 <uapi_upg_start+0x8e>
  a2ed12:	84a2                	mv	s1,s0
  a2ed14:	bf45                	j	a2ecc4 <uapi_upg_start+0x80>
  a2ed16:	47e2                	lw	a5,24(sp)
  a2ed18:	dfe9                	beqz	a5,a2ecf2 <uapi_upg_start+0xae>
  a2ed1a:	1489aa83          	lw	s5,328(s3)
  a2ed1e:	4a01                	li	s4,0
  a2ed20:	4981                	li	s3,0
  a2ed22:	02c00b93          	li	s7,44
  a2ed26:	cb9e 063c 0c1f      	l.li	s8,0xcb9e063c
  a2ed2c:	4c8d                	li	s9,3
  a2ed2e:	4562                	lw	a0,24(sp)
  a2ed30:	075a4863          	blt	s4,s5,a2eda0 <uapi_upg_start+0x15c>
  a2ed34:	844ff0ef          	jal	ra,a2dd78 <upg_free>
  a2ed38:	5010                	lw	a2,32(s0)
  a2ed3a:	4c4c                	lw	a1,28(s0)
  a2ed3c:	00a3 3980 051f      	l.li	a0,0xa33980
  a2ed42:	c7afd0ef          	jal	ra,a2c1bc <print_str>
  a2ed46:	44c2                	lw	s1,16(sp)
  a2ed48:	4432                	lw	s0,12(sp)
  a2ed4a:	00a3 39b4 051f      	l.li	a0,0xa339b4
  a2ed50:	1484aa83          	lw	s5,328(s1)
  a2ed54:	ca02                	sw	zero,20(sp)
  a2ed56:	85d6                	mv	a1,s5
  a2ed58:	c64fd0ef          	jal	ra,a2c1bc <print_str>
  a2ed5c:	444c                	lw	a1,12(s0)
  a2ed5e:	00a3 39d8 051f      	l.li	a0,0xa339d8
  a2ed64:	c58fd0ef          	jal	ra,a2c1bc <print_str>
  a2ed68:	445c                	lw	a5,12(s0)
  a2ed6a:	00fa8663          	beq	s5,a5,a2ed76 <uapi_upg_start+0x132>
  a2ed6e:	fffa8713          	addi	a4,s5,-1
  a2ed72:	2ae79a63          	bne	a5,a4,a2f026 <uapi_upg_start+0x3e2>
  a2ed76:	4755                	li	a4,21
  a2ed78:	2ae7f763          	bgeu	a5,a4,a2f026 <uapi_upg_start+0x3e2>
  a2ed7c:	084c                	addi	a1,sp,20
  a2ed7e:	8526                	mv	a0,s1
  a2ed80:	9b6ff0ef          	jal	ra,a2df36 <upg_get_pkg_image_hash_table>
  a2ed84:	892a                	mv	s2,a0
  a2ed86:	e119                	bnez	a0,a2ed8c <uapi_upg_start+0x148>
  a2ed88:	44d2                	lw	s1,20(sp)
  a2ed8a:	eca5                	bnez	s1,a2ee02 <uapi_upg_start+0x1be>
  a2ed8c:	00a3 34b8 051f      	l.li	a0,0xa334b8
  a2ed92:	c2afd0ef          	jal	ra,a2c1bc <print_str>
  a2ed96:	47c2                	lw	a5,16(sp)
  a2ed98:	4481                	li	s1,0
  a2ed9a:	1487a503          	lw	a0,328(a5)
  a2ed9e:	bddd                	j	a2ec94 <uapi_upg_start+0x50>
  a2eda0:	037a0d33          	mul	s10,s4,s7
  a2eda4:	956a                	add	a0,a0,s10
  a2eda6:	411c                	lw	a5,0(a0)
  a2eda8:	01879663          	bne	a5,s8,a2edb4 <uapi_upg_start+0x170>
  a2edac:	19fd                	addi	s3,s3,-1
  a2edae:	0a05                	addi	s4,s4,1 # 1001 <ccause+0x3f>
  a2edb0:	0985                	addi	s3,s3,1
  a2edb2:	bfb5                	j	a2ed2e <uapi_upg_start+0xea>
  a2edb4:	086c                	addi	a1,sp,28
  a2edb6:	ce02                	sw	zero,28(sp)
  a2edb8:	9b2ff0ef          	jal	ra,a2df6a <upg_get_pkg_image_header>
  a2edbc:	892a                	mv	s2,a0
  a2edbe:	e119                	bnez	a0,a2edc4 <uapi_upg_start+0x180>
  a2edc0:	47f2                	lw	a5,28(sp)
  a2edc2:	eb91                	bnez	a5,a2edd6 <uapi_upg_start+0x192>
  a2edc4:	00a3 350c 051f      	l.li	a0,0xa3350c
  a2edca:	bf2fd0ef          	jal	ra,a2c1bc <print_str>
  a2edce:	4562                	lw	a0,24(sp)
  a2edd0:	fa9fe0ef          	jal	ra,a2dd78 <upg_free>
  a2edd4:	b725                	j	a2ecfc <uapi_upg_start+0xb8>
  a2edd6:	4bfc                	lw	a5,84(a5)
  a2edd8:	4c58                	lw	a4,28(s0)
  a2edda:	85ce                	mv	a1,s3
  a2eddc:	855a                	mv	a0,s6
  a2edde:	973e                	add	a4,a4,a5
  a2ede0:	cc58                	sw	a4,28(s0)
  a2ede2:	47e2                	lw	a5,24(sp)
  a2ede4:	97ea                	add	a5,a5,s10
  a2ede6:	4390                	lw	a2,0(a5)
  a2ede8:	b4cff0ef          	jal	ra,a2e134 <upg_get_image_update_status>
  a2edec:	01951763          	bne	a0,s9,a2edfa <uapi_upg_start+0x1b6>
  a2edf0:	4772                	lw	a4,28(sp)
  a2edf2:	501c                	lw	a5,32(s0)
  a2edf4:	4b78                	lw	a4,84(a4)
  a2edf6:	97ba                	add	a5,a5,a4
  a2edf8:	d01c                	sw	a5,32(s0)
  a2edfa:	4572                	lw	a0,28(sp)
  a2edfc:	f7dfe0ef          	jal	ra,a2dd78 <upg_free>
  a2ee00:	b77d                	j	a2edae <uapi_upg_start+0x16a>
  a2ee02:	cc02                	sw	zero,24(sp)
  a2ee04:	4981                	li	s3,0
  a2ee06:	4b01                	li	s6,0
  a2ee08:	cb9e 063c 0a1f      	l.li	s4,0xcb9e063c
  a2ee0e:	80003bb7          	lui	s7,0x80003
  a2ee12:	00a34d37          	lui	s10,0xa34
  a2ee16:	00a34db7          	lui	s11,0xa34
  a2ee1a:	055b5963          	bge	s6,s5,a2ee6c <uapi_upg_start+0x228>
  a2ee1e:	4088                	lw	a0,0(s1)
  a2ee20:	01451363          	bne	a0,s4,a2ee26 <uapi_upg_start+0x1e2>
  a2ee24:	19fd                	addi	s3,s3,-1
  a2ee26:	e38fe0ef          	jal	ra,a2d45e <upg_img_in_set>
  a2ee2a:	cd19                	beqz	a0,a2ee48 <uapi_upg_start+0x204>
  a2ee2c:	4090                	lw	a2,0(s1)
  a2ee2e:	85ce                	mv	a1,s3
  a2ee30:	8522                	mv	a0,s0
  a2ee32:	b02ff0ef          	jal	ra,a2e134 <upg_get_image_update_status>
  a2ee36:	8c2a                	mv	s8,a0
  a2ee38:	030516bb          	bnei	a0,3,a2ee52 <uapi_upg_start+0x20e>
  a2ee3c:	408c                	lw	a1,0(s1)
  a2ee3e:	00a3 3a00 051f      	l.li	a0,0xa33a00
  a2ee44:	b78fd0ef          	jal	ra,a2c1bc <print_str>
  a2ee48:	0b05                	addi	s6,s6,1
  a2ee4a:	0985                	addi	s3,s3,1
  a2ee4c:	02c48493          	addi	s1,s1,44
  a2ee50:	b7e9                	j	a2ee1a <uapi_upg_start+0x1d6>
  a2ee52:	082c                	addi	a1,sp,24
  a2ee54:	8526                	mv	a0,s1
  a2ee56:	914ff0ef          	jal	ra,a2df6a <upg_get_pkg_image_header>
  a2ee5a:	892a                	mv	s2,a0
  a2ee5c:	e119                	bnez	a0,a2ee62 <uapi_upg_start+0x21e>
  a2ee5e:	47e2                	lw	a5,24(sp)
  a2ee60:	e795                	bnez	a5,a2ee8c <uapi_upg_start+0x248>
  a2ee62:	00a3 3a30 051f      	l.li	a0,0xa33a30
  a2ee68:	b54fd0ef          	jal	ra,a2c1bc <print_str>
  a2ee6c:	4562                	lw	a0,24(sp)
  a2ee6e:	c119                	beqz	a0,a2ee74 <uapi_upg_start+0x230>
  a2ee70:	f09fe0ef          	jal	ra,a2dd78 <upg_free>
  a2ee74:	00090863          	beqz	s2,a2ee84 <uapi_upg_start+0x240>
  a2ee78:	85ca                	mv	a1,s2
  a2ee7a:	00a3 3be8 051f      	l.li	a0,0xa33be8
  a2ee80:	b3cfd0ef          	jal	ra,a2c1bc <print_str>
  a2ee84:	4552                	lw	a0,20(sp)
  a2ee86:	ef3fe0ef          	jal	ra,a2dd78 <upg_free>
  a2ee8a:	b731                	j	a2ed96 <uapi_upg_start+0x152>
  a2ee8c:	43dc                	lw	a5,4(a5)
  a2ee8e:	13478163          	beq	a5,s4,a2efb0 <uapi_upg_start+0x36c>
  a2ee92:	4601                	li	a2,0
  a2ee94:	85ce                	mv	a1,s3
  a2ee96:	8522                	mv	a0,s0
  a2ee98:	9aaff0ef          	jal	ra,a2e042 <upg_set_firmware_update_status>
  a2ee9c:	892a                	mv	s2,a0
  a2ee9e:	c509                	beqz	a0,a2eea8 <uapi_upg_start+0x264>
  a2eea0:	00a3 3a58 051f      	l.li	a0,0xa33a58
  a2eea6:	b7c9                	j	a2ee68 <uapi_upg_start+0x224>
  a2eea8:	47e2                	lw	a5,24(sp)
  a2eeaa:	a84d0513          	addi	a0,s10,-1404 # a33a84 <g_efuse_cfg+0x120c>
  a2eeae:	43cc                	lw	a1,4(a5)
  a2eeb0:	b0cfd0ef          	jal	ra,a2c1bc <print_str>
  a2eeb4:	4962                	lw	s2,24(sp)
  a2eeb6:	040c1963          	bnez	s8,a2ef08 <uapi_upg_start+0x2c4>
  a2eeba:	af4ff0ef          	jal	ra,a2e1ae <upg_flash_erase_metadata_pages>
  a2eebe:	8caa                	mv	s9,a0
  a2eec0:	c521                	beqz	a0,a2ef08 <uapi_upg_start+0x2c4>
  a2eec2:	00a3 3ab0 051f      	l.li	a0,0xa33ab0
  a2eec8:	af4fd0ef          	jal	ra,a2c1bc <print_str>
  a2eecc:	4c05                	li	s8,1
  a2eece:	85e2                	mv	a1,s8
  a2eed0:	b44d8513          	addi	a0,s11,-1212 # a33b44 <g_efuse_cfg+0x12cc>
  a2eed4:	ae8fd0ef          	jal	ra,a2c1bc <print_str>
  a2eed8:	8662                	mv	a2,s8
  a2eeda:	85ce                	mv	a1,s3
  a2eedc:	8522                	mv	a0,s0
  a2eede:	964ff0ef          	jal	ra,a2e042 <upg_set_firmware_update_status>
  a2eee2:	892a                	mv	s2,a0
  a2eee4:	000c8363          	beqz	s9,a2eeea <uapi_upg_start+0x2a6>
  a2eee8:	8966                	mv	s2,s9
  a2eeea:	85ca                	mv	a1,s2
  a2eeec:	00a3 3b64 051f      	l.li	a0,0xa33b64
  a2eef2:	acafd0ef          	jal	ra,a2c1bc <print_str>
  a2eef6:	f6091be3          	bnez	s2,a2ee6c <uapi_upg_start+0x228>
  a2eefa:	4562                	lw	a0,24(sp)
  a2eefc:	e7dfe0ef          	jal	ra,a2dd78 <upg_free>
  a2ef00:	cc02                	sw	zero,24(sp)
  a2ef02:	e0cfe0ef          	jal	ra,a2d50e <upg_watchdog_kick>
  a2ef06:	b789                	j	a2ee48 <uapi_upg_start+0x204>
  a2ef08:	001c3693          	seqz	a3,s8
  a2ef0c:	02000613          	li	a2,32
  a2ef10:	00c48593          	addi	a1,s1,12
  a2ef14:	854a                	mv	a0,s2
  a2ef16:	eb0ff0ef          	jal	ra,a2e5c6 <uapi_upg_verify_file_image>
  a2ef1a:	8caa                	mv	s9,a0
  a2ef1c:	4c05                	li	s8,1
  a2ef1e:	f945                	bnez	a0,a2eece <uapi_upg_start+0x28a>
  a2ef20:	00492683          	lw	a3,4(s2)
  a2ef24:	cb9e1737          	lui	a4,0xcb9e1
  a2ef28:	82670613          	addi	a2,a4,-2010 # cb9e0826 <_gp_+0xcafac012>
  a2ef2c:	046b8c93          	addi	s9,s7,70 # 80003046 <_gp_+0x7f5ce832>
  a2ef30:	f8c68fe3          	beq	a3,a2,a2eece <uapi_upg_start+0x28a>
  a2ef34:	83270713          	addi	a4,a4,-1998
  a2ef38:	f8e68be3          	beq	a3,a4,a2eece <uapi_upg_start+0x28a>
  a2ef3c:	06092583          	lw	a1,96(s2)
  a2ef40:	00a3 3ae0 051f      	l.li	a0,0xa33ae0
  a2ef46:	a76fd0ef          	jal	ra,a2c1bc <print_str>
  a2ef4a:	06092783          	lw	a5,96(s2)
  a2ef4e:	3c78 96e1 071f      	l.li	a4,0x3c7896e1
  a2ef54:	02e79363          	bne	a5,a4,a2ef7a <uapi_upg_start+0x336>
  a2ef58:	00a3 3b04 051f      	l.li	a0,0xa33b04
  a2ef5e:	a5efd0ef          	jal	ra,a2c1bc <print_str>
  a2ef62:	854a                	mv	a0,s2
  a2ef64:	f0efe0ef          	jal	ra,a2d672 <upg_erase_whole_image>
  a2ef68:	8caa                	mv	s9,a0
  a2ef6a:	f135                	bnez	a0,a2eece <uapi_upg_start+0x28a>
  a2ef6c:	854a                	mv	a0,s2
  a2ef6e:	2add                	jal	ra,a2f164 <uapi_upg_compress_image_update>
  a2ef70:	00153c13          	seqz	s8,a0
  a2ef74:	8caa                	mv	s9,a0
  a2ef76:	0c05                	addi	s8,s8,1 # 1001 <ccause+0x3f>
  a2ef78:	bf99                	j	a2eece <uapi_upg_start+0x28a>
  a2ef7a:	4449 4646 071f      	l.li	a4,0x44494646
  a2ef80:	00e79a63          	bne	a5,a4,a2ef94 <uapi_upg_start+0x350>
  a2ef84:	00a3 3b1c 051f      	l.li	a0,0xa33b1c
  a2ef8a:	a32fd0ef          	jal	ra,a2c1bc <print_str>
  a2ef8e:	854a                	mv	a0,s2
  a2ef90:	2c3d                	jal	ra,a2f1ce <uapi_upg_diff_image_update>
  a2ef92:	bff9                	j	a2ef70 <uapi_upg_start+0x32c>
  a2ef94:	00a3 3b30 051f      	l.li	a0,0xa33b30
  a2ef9a:	a22fd0ef          	jal	ra,a2c1bc <print_str>
  a2ef9e:	854a                	mv	a0,s2
  a2efa0:	ed2fe0ef          	jal	ra,a2d672 <upg_erase_whole_image>
  a2efa4:	8caa                	mv	s9,a0
  a2efa6:	f20514e3          	bnez	a0,a2eece <uapi_upg_start+0x28a>
  a2efaa:	854a                	mv	a0,s2
  a2efac:	242d                	jal	ra,a2f1d6 <uapi_upg_full_image_update>
  a2efae:	b7c9                	j	a2ef70 <uapi_upg_start+0x32c>
  a2efb0:	00a347b7          	lui	a5,0xa34
  a2efb4:	b9478513          	addi	a0,a5,-1132 # a33b94 <g_efuse_cfg+0x131c>
  a2efb8:	85d2                	mv	a1,s4
  a2efba:	a02fd0ef          	jal	ra,a2c1bc <print_str>
  a2efbe:	47e2                	lw	a5,24(sp)
  a2efc0:	00a346b7          	lui	a3,0xa34
  a2efc4:	95c6a903          	lw	s2,-1700(a3) # a3395c <g_efuse_cfg+0x10e4>
  a2efc8:	43d8                	lw	a4,4(a5)
  a2efca:	05471663          	bne	a4,s4,a2f016 <uapi_upg_start+0x3d2>
  a2efce:	4794                	lw	a3,8(a5)
  a2efd0:	40d8                	lw	a4,4(s1)
  a2efd2:	0868                	addi	a0,sp,28
  a2efd4:	c874                	sw	a3,84(s0)
  a2efd6:	47dc                	lw	a5,12(a5)
  a2efd8:	07bd                	addi	a5,a5,15
  a2efda:	9bc1                	andi	a5,a5,-16
  a2efdc:	cc3c                	sw	a5,88(s0)
  a2efde:	01070793          	addi	a5,a4,16
  a2efe2:	cc7c                	sw	a5,92(s0)
  a2efe4:	02000793          	li	a5,32
  a2efe8:	d03c                	sw	a5,96(s0)
  a2efea:	ce02                	sw	zero,28(sp)
  a2efec:	c98fe0ef          	jal	ra,a2d484 <upg_get_upgrade_flag_flash_start_addr>
  a2eff0:	892a                	mv	s2,a0
  a2eff2:	e115                	bnez	a0,a2f016 <uapi_upg_start+0x3d2>
  a2eff4:	4572                	lw	a0,28(sp)
  a2eff6:	4681                	li	a3,0
  a2eff8:	05440613          	addi	a2,s0,84
  a2effc:	45c1                	li	a1,16
  a2effe:	05450513          	addi	a0,a0,84
  a2f002:	dd4fe0ef          	jal	ra,a2d5d6 <upg_flash_write>
  a2f006:	892a                	mv	s2,a0
  a2f008:	e519                	bnez	a0,a2f016 <uapi_upg_start+0x3d2>
  a2f00a:	4601                	li	a2,0
  a2f00c:	85d2                	mv	a1,s4
  a2f00e:	8522                	mv	a0,s0
  a2f010:	832ff0ef          	jal	ra,a2e042 <upg_set_firmware_update_status>
  a2f014:	892a                	mv	s2,a0
  a2f016:	00a347b7          	lui	a5,0xa34
  a2f01a:	85ca                	mv	a1,s2
  a2f01c:	bbc78513          	addi	a0,a5,-1092 # a33bbc <g_efuse_cfg+0x1344>
  a2f020:	99cfd0ef          	jal	ra,a2c1bc <print_str>
  a2f024:	bdd9                	j	a2eefa <uapi_upg_start+0x2b6>
  a2f026:	8000 3043 091f      	l.li	s2,0x80003043
  a2f02c:	b3ad                	j	a2ed96 <uapi_upg_start+0x152>
  a2f02e:	4485                	li	s1,1
  a2f030:	4501                	li	a0,0
  a2f032:	8000 3040 091f      	l.li	s2,0x80003040
  a2f038:	b9b1                	j	a2ec94 <uapi_upg_start+0x50>

00a2f03a <uapi_upg_register_progress_callback>:
  a2f03a:	8028                	push	{ra,s0},-16
  a2f03c:	842a                	mv	s0,a0
  a2f03e:	d6bfe0ef          	jal	ra,a2dda8 <upg_get_ctx>
  a2f042:	cd00                	sw	s0,24(a0)
  a2f044:	4501                	li	a0,0
  a2f046:	8024                	popret	{ra,s0},16

00a2f048 <upg_calculate_and_notify_process>:
  a2f048:	8038                	push	{ra,s0-s1},-16
  a2f04a:	842a                	mv	s0,a0
  a2f04c:	d5dfe0ef          	jal	ra,a2dda8 <upg_get_ctx>
  a2f050:	84aa                	mv	s1,a0
  a2f052:	d57fe0ef          	jal	ra,a2dda8 <upg_get_ctx>
  a2f056:	4d1c                	lw	a5,24(a0)
  a2f058:	cb85                	beqz	a5,a2f088 <upg_calculate_and_notify_process+0x40>
  a2f05a:	5088                	lw	a0,32(s1)
  a2f05c:	9522                	add	a0,a0,s0
  a2f05e:	4cc0                	lw	s0,28(s1)
  a2f060:	d088                	sw	a0,32(s1)
  a2f062:	c419                	beqz	s0,a2f070 <upg_calculate_and_notify_process+0x28>
  a2f064:	06400793          	li	a5,100
  a2f068:	02f50533          	mul	a0,a0,a5
  a2f06c:	02855433          	divu	s0,a0,s0
  a2f070:	00a0 5b04 049f      	l.li	s1,0xa05b04
  a2f076:	409c                	lw	a5,0(s1)
  a2f078:	00878863          	beq	a5,s0,a2f088 <upg_calculate_and_notify_process+0x40>
  a2f07c:	d2dfe0ef          	jal	ra,a2dda8 <upg_get_ctx>
  a2f080:	4d1c                	lw	a5,24(a0)
  a2f082:	8522                	mv	a0,s0
  a2f084:	9782                	jalr	a5
  a2f086:	c080                	sw	s0,0(s1)
  a2f088:	8034                	popret	{ra,s0-s1},16

00a2f08a <upg_write_new_image_data>:
  a2f08a:	8248                	push	{ra,s0-s2},-48
  a2f08c:	ca02                	sw	zero,20(sp)
  a2f08e:	cc02                	sw	zero,24(sp)
  a2f090:	ce02                	sw	zero,28(sp)
  a2f092:	4b87 a52d 079f      	l.li	a5,0x4b87a52d
  a2f098:	842a                	mv	s0,a0
  a2f09a:	892e                	mv	s2,a1
  a2f09c:	84b2                	mv	s1,a2
  a2f09e:	02f69363          	bne	a3,a5,a2f0c4 <upg_write_new_image_data+0x3a>
  a2f0a2:	002007b7          	lui	a5,0x200
  a2f0a6:	cc3e                	sw	a5,24(sp)
  a2f0a8:	78000793          	li	a5,1920
  a2f0ac:	ce3e                	sw	a5,28(sp)
  a2f0ae:	01414783          	lbu	a5,20(sp)
  a2f0b2:	e38d                	bnez	a5,a2f0d4 <upg_write_new_image_data+0x4a>
  a2f0b4:	4562                	lw	a0,24(sp)
  a2f0b6:	408c                	lw	a1,0(s1)
  a2f0b8:	86ba                	mv	a3,a4
  a2f0ba:	864a                	mv	a2,s2
  a2f0bc:	9522                	add	a0,a0,s0
  a2f0be:	d18fe0ef          	jal	ra,a2d5d6 <upg_flash_write>
  a2f0c2:	a801                	j	a2f0d2 <upg_write_new_image_data+0x48>
  a2f0c4:	8536                	mv	a0,a3
  a2f0c6:	084c                	addi	a1,sp,20
  a2f0c8:	c63a                	sw	a4,12(sp)
  a2f0ca:	d49fe0ef          	jal	ra,a2de12 <upg_get_image_info>
  a2f0ce:	4732                	lw	a4,12(sp)
  a2f0d0:	dd79                	beqz	a0,a2f0ae <upg_write_new_image_data+0x24>
  a2f0d2:	8244                	popret	{ra,s0-s2},48
  a2f0d4:	8000 3004 051f      	l.li	a0,0x80003004
  a2f0da:	bfe5                	j	a2f0d2 <upg_write_new_image_data+0x48>

00a2f0dc <uapi_upg_lzma_ota_image>:
  a2f0dc:	8a58                	push	{ra,s0-s3},-192
  a2f0de:	842e                	mv	s0,a1
  a2f0e0:	89b2                	mv	s3,a2
  a2f0e2:	4581                	li	a1,0
  a2f0e4:	02400613          	li	a2,36
  a2f0e8:	84aa                	mv	s1,a0
  a2f0ea:	0828                	addi	a0,sp,24
  a2f0ec:	8936                	mv	s2,a3
  a2f0ee:	c63a                	sw	a4,12(sp)
  a2f0f0:	8b5f90ef          	jal	ra,a289a4 <memset>
  a2f0f4:	8622                	mv	a2,s0
  a2f0f6:	86ce                	mv	a3,s3
  a2f0f8:	082c                	addi	a1,sp,24
  a2f0fa:	1868                	addi	a0,sp,60
  a2f0fc:	8a5ff0ef          	jal	ra,a2e9a0 <upg_lzma_init>
  a2f100:	842a                	mv	s0,a0
  a2f102:	e915                	bnez	a0,a2f136 <uapi_upg_lzma_ota_image+0x5a>
  a2f104:	44d0                	lw	a2,12(s1)
  a2f106:	40dc                	lw	a5,4(s1)
  a2f108:	4732                	lw	a4,12(sp)
  a2f10a:	41360633          	sub	a2,a2,s3
  a2f10e:	d232                	sw	a2,36(sp)
  a2f110:	5622                	lw	a2,40(sp)
  a2f112:	cc3e                	sw	a5,24(sp)
  a2f114:	ce3a                	sw	a4,28(sp)
  a2f116:	d002                	sw	zero,32(sp)
  a2f118:	02c97163          	bgeu	s2,a2,a2f13a <uapi_upg_lzma_ota_image+0x5e>
  a2f11c:	85ca                	mv	a1,s2
  a2f11e:	00a3 3c20 051f      	l.li	a0,0xa33c20
  a2f124:	898fd0ef          	jal	ra,a2c1bc <print_str>
  a2f128:	082c                	addi	a1,sp,24
  a2f12a:	1868                	addi	a0,sp,60
  a2f12c:	917ff0ef          	jal	ra,a2ea42 <upg_lzma_deinit>
  a2f130:	8000 3051 041f      	l.li	s0,0x80003051
  a2f136:	8522                	mv	a0,s0
  a2f138:	8a54                	popret	{ra,s0-s3},192
  a2f13a:	8626                	mv	a2,s1
  a2f13c:	082c                	addi	a1,sp,24
  a2f13e:	1868                	addi	a0,sp,60
  a2f140:	a4bff0ef          	jal	ra,a2eb8a <upg_lzma_decode>
  a2f144:	842a                	mv	s0,a0
  a2f146:	c911                	beqz	a0,a2f15a <uapi_upg_lzma_ota_image+0x7e>
  a2f148:	85aa                	mv	a1,a0
  a2f14a:	00a3 3c68 051f      	l.li	a0,0xa33c68
  a2f150:	86cfd0ef          	jal	ra,a2c1bc <print_str>
  a2f154:	8000 3062 041f      	l.li	s0,0x80003062
  a2f15a:	082c                	addi	a1,sp,24
  a2f15c:	1868                	addi	a0,sp,60
  a2f15e:	8e5ff0ef          	jal	ra,a2ea42 <upg_lzma_deinit>
  a2f162:	bfd1                	j	a2f136 <uapi_upg_lzma_ota_image+0x5a>

00a2f164 <uapi_upg_compress_image_update>:
  a2f164:	8258                	push	{ra,s0-s3},-64
  a2f166:	47c1                	li	a5,16
  a2f168:	0814                	addi	a3,sp,16
  a2f16a:	0050                	addi	a2,sp,4
  a2f16c:	4581                	li	a1,0
  a2f16e:	84aa                	mv	s1,a0
  a2f170:	00852903          	lw	s2,8(a0)
  a2f174:	c802                	sw	zero,16(sp)
  a2f176:	ca02                	sw	zero,20(sp)
  a2f178:	cc02                	sw	zero,24(sp)
  a2f17a:	ce02                	sw	zero,28(sp)
  a2f17c:	c23e                	sw	a5,4(sp)
  a2f17e:	c402                	sw	zero,8(sp)
  a2f180:	c602                	sw	zero,12(sp)
  a2f182:	e7dfe0ef          	jal	ra,a2dffe <upg_copy_pkg_image_data>
  a2f186:	842a                	mv	s0,a0
  a2f188:	e129                	bnez	a0,a2f1ca <uapi_upg_compress_image_update+0x66>
  a2f18a:	8526                	mv	a0,s1
  a2f18c:	cfcfe0ef          	jal	ra,a2d688 <upg_cryto_init>
  a2f190:	842a                	mv	s0,a0
  a2f192:	ed05                	bnez	a0,a2f1ca <uapi_upg_compress_image_update+0x66>
  a2f194:	4592                	lw	a1,4(sp)
  a2f196:	8626                	mv	a2,s1
  a2f198:	0808                	addi	a0,sp,16
  a2f19a:	e44fe0ef          	jal	ra,a2d7de <upg_decry_fota_pkt>
  a2f19e:	842a                	mv	s0,a0
  a2f1a0:	e115                	bnez	a0,a2f1c4 <uapi_upg_compress_image_update+0x60>
  a2f1a2:	40c8                	lw	a0,4(s1)
  a2f1a4:	0070                	addi	a2,sp,12
  a2f1a6:	002c                	addi	a1,sp,8
  a2f1a8:	4992                	lw	s3,4(sp)
  a2f1aa:	d21fe0ef          	jal	ra,a2deca <upg_get_partition_info>
  a2f1ae:	842a                	mv	s0,a0
  a2f1b0:	e911                	bnez	a0,a2f1c4 <uapi_upg_compress_image_update+0x60>
  a2f1b2:	46b2                	lw	a3,12(sp)
  a2f1b4:	01298733          	add	a4,s3,s2
  a2f1b8:	4641                	li	a2,16
  a2f1ba:	080c                	addi	a1,sp,16
  a2f1bc:	8526                	mv	a0,s1
  a2f1be:	f1fff0ef          	jal	ra,a2f0dc <uapi_upg_lzma_ota_image>
  a2f1c2:	842a                	mv	s0,a0
  a2f1c4:	8526                	mv	a0,s1
  a2f1c6:	dd0fe0ef          	jal	ra,a2d796 <upg_cryto_deinit>
  a2f1ca:	8522                	mv	a0,s0
  a2f1cc:	8254                	popret	{ra,s0-s3},64

00a2f1ce <uapi_upg_diff_image_update>:
  a2f1ce:	8000 3046 051f      	l.li	a0,0x80003046
  a2f1d4:	8082                	ret

00a2f1d6 <uapi_upg_full_image_update>:
  a2f1d6:	8188                	push	{ra,s0-s6},-48
  a2f1d8:	00852a83          	lw	s5,8(a0)
  a2f1dc:	8a2a                	mv	s4,a0
  a2f1de:	4148                	lw	a0,4(a0)
  a2f1e0:	0030                	addi	a2,sp,8
  a2f1e2:	004c                	addi	a1,sp,4
  a2f1e4:	c202                	sw	zero,4(sp)
  a2f1e6:	c402                	sw	zero,8(sp)
  a2f1e8:	ce3fe0ef          	jal	ra,a2deca <upg_get_partition_info>
  a2f1ec:	842a                	mv	s0,a0
  a2f1ee:	e921                	bnez	a0,a2f23e <uapi_upg_full_image_update+0x68>
  a2f1f0:	00ca2703          	lw	a4,12(s4)
  a2f1f4:	47a2                	lw	a5,8(sp)
  a2f1f6:	06e7e963          	bltu	a5,a4,a2f268 <uapi_upg_full_image_update+0x92>
  a2f1fa:	6505                	lui	a0,0x1
  a2f1fc:	c602                	sw	zero,12(sp)
  a2f1fe:	b61fe0ef          	jal	ra,a2dd5e <upg_malloc>
  a2f202:	84aa                	mv	s1,a0
  a2f204:	c525                	beqz	a0,a2f26c <uapi_upg_full_image_update+0x96>
  a2f206:	4901                	li	s2,0
  a2f208:	6b05                	lui	s6,0x1
  a2f20a:	00ca2783          	lw	a5,12(s4)
  a2f20e:	00f96663          	bltu	s2,a5,a2f21a <uapi_upg_full_image_update+0x44>
  a2f212:	8526                	mv	a0,s1
  a2f214:	b65fe0ef          	jal	ra,a2dd78 <upg_free>
  a2f218:	a01d                	j	a2f23e <uapi_upg_full_image_update+0x68>
  a2f21a:	412787b3          	sub	a5,a5,s2
  a2f21e:	00fb7363          	bgeu	s6,a5,a2f224 <uapi_upg_full_image_update+0x4e>
  a2f222:	6785                	lui	a5,0x1
  a2f224:	0070                	addi	a2,sp,12
  a2f226:	85a6                	mv	a1,s1
  a2f228:	01590533          	add	a0,s2,s5
  a2f22c:	c63e                	sw	a5,12(sp)
  a2f22e:	c2bfe0ef          	jal	ra,a2de58 <upg_read_fota_pkg_data>
  a2f232:	89aa                	mv	s3,a0
  a2f234:	c519                	beqz	a0,a2f242 <uapi_upg_full_image_update+0x6c>
  a2f236:	8526                	mv	a0,s1
  a2f238:	b41fe0ef          	jal	ra,a2dd78 <upg_free>
  a2f23c:	844e                	mv	s0,s3
  a2f23e:	8522                	mv	a0,s0
  a2f240:	8184                	popret	{ra,s0-s6},48
  a2f242:	004a2683          	lw	a3,4(s4)
  a2f246:	4701                	li	a4,0
  a2f248:	0070                	addi	a2,sp,12
  a2f24a:	85a6                	mv	a1,s1
  a2f24c:	854a                	mv	a0,s2
  a2f24e:	e3dff0ef          	jal	ra,a2f08a <upg_write_new_image_data>
  a2f252:	89aa                	mv	s3,a0
  a2f254:	f16d                	bnez	a0,a2f236 <uapi_upg_full_image_update+0x60>
  a2f256:	47b2                	lw	a5,12(sp)
  a2f258:	dff9                	beqz	a5,a2f236 <uapi_upg_full_image_update+0x60>
  a2f25a:	993e                	add	s2,s2,a5
  a2f25c:	ab2fe0ef          	jal	ra,a2d50e <upg_watchdog_kick>
  a2f260:	4532                	lw	a0,12(sp)
  a2f262:	de7ff0ef          	jal	ra,a2f048 <upg_calculate_and_notify_process>
  a2f266:	b755                	j	a2f20a <uapi_upg_full_image_update+0x34>
  a2f268:	547d                	li	s0,-1
  a2f26a:	bfd1                	j	a2f23e <uapi_upg_full_image_update+0x68>
  a2f26c:	80000437          	lui	s0,0x80000
  a2f270:	0415                	addi	s0,s0,5 # 80000005 <_gp_+0x7f5cb7f1>
  a2f272:	b7f1                	j	a2f23e <uapi_upg_full_image_update+0x68>

00a2f274 <LzmaDec_TryDummy>:
  a2f274:	2138                	lbu	a4,2(a0)
  a2f276:	02852f83          	lw	t6,40(a0) # 1028 <ccause+0x66>
  a2f27a:	5e7d                	li	t3,-1
  a2f27c:	00ee1e33          	sll	t3,t3,a4
  a2f280:	04052e83          	lw	t4,64(a0)
  a2f284:	fffe4e13          	not	t3,t3
  a2f288:	00c52303          	lw	t1,12(a0)
  a2f28c:	01fe7e33          	and	t3,t3,t6
  a2f290:	0e12                	slli	t3,t3,0x4
  a2f292:	02052803          	lw	a6,32(a0)
  a2f296:	01ce8f33          	add	t5,t4,t3
  a2f29a:	03e30f1b          	addshf	t5,t1,t5,sll,1
  a2f29e:	86aa                	mv	a3,a0
  a2f2a0:	515c                	lw	a5,36(a0)
  a2f2a2:	e00f0f13          	addi	t5,t5,-512
  a2f2a6:	01000537          	lui	a0,0x1000
  a2f2aa:	00062883          	lw	a7,0(a2)
  a2f2ae:	000f5703          	lhu	a4,0(t5)
  a2f2b2:	00a87a63          	bgeu	a6,a0,a2f2c6 <LzmaDec_TryDummy+0x52>
  a2f2b6:	4501                	li	a0,0
  a2f2b8:	4115f963          	bgeu	a1,a7,a2f6ca <LzmaDec_TryDummy+0x456>
  a2f2bc:	2188                	lbu	a0,0(a1)
  a2f2be:	0822                	slli	a6,a6,0x8
  a2f2c0:	0585                	addi	a1,a1,1
  a2f2c2:	10f5279b          	orshf	a5,a0,a5,sll,8
  a2f2c6:	00b85513          	srli	a0,a6,0xb
  a2f2ca:	02e50733          	mul	a4,a0,a4
  a2f2ce:	12e7f963          	bgeu	a5,a4,a2f400 <LzmaDec_TryDummy+0x18c>
  a2f2d2:	56c8                	lw	a0,44(a3)
  a2f2d4:	28030313          	addi	t1,t1,640
  a2f2d8:	e119                	bnez	a0,a2f2de <LzmaDec_TryDummy+0x6a>
  a2f2da:	040f8863          	beqz	t6,a2f32a <LzmaDec_TryDummy+0xb6>
  a2f2de:	0016c803          	lbu	a6,1(a3)
  a2f2e2:	557d                	li	a0,-1
  a2f2e4:	0006c283          	lbu	t0,0(a3)
  a2f2e8:	01051533          	sll	a0,a0,a6
  a2f2ec:	0186a803          	lw	a6,24(a3)
  a2f2f0:	fff54513          	not	a0,a0
  a2f2f4:	01f57533          	and	a0,a0,t6
  a2f2f8:	00551533          	sll	a0,a0,t0
  a2f2fc:	0106af03          	lw	t5,16(a3)
  a2f300:	fff80e13          	addi	t3,a6,-1
  a2f304:	00081563          	bnez	a6,a2f30e <LzmaDec_TryDummy+0x9a>
  a2f308:	0146ae03          	lw	t3,20(a3)
  a2f30c:	1e7d                	addi	t3,t3,-1
  a2f30e:	9e7a                	add	t3,t3,t5
  a2f310:	000e4803          	lbu	a6,0(t3)
  a2f314:	4e21                	li	t3,8
  a2f316:	405e0e33          	sub	t3,t3,t0
  a2f31a:	01c85833          	srl	a6,a6,t3
  a2f31e:	9542                	add	a0,a0,a6
  a2f320:	60000813          	li	a6,1536
  a2f324:	03050533          	mul	a0,a0,a6
  a2f328:	932a                	add	t1,t1,a0
  a2f32a:	071ef63b          	bgeui	t4,7,a2f382 <LzmaDec_TryDummy+0x10e>
  a2f32e:	4685                	li	a3,1
  a2f330:	01000e37          	lui	t3,0x1000
  a2f334:	0ff00813          	li	a6,255
  a2f338:	0686                	slli	a3,a3,0x1
  a2f33a:	00d30533          	add	a0,t1,a3
  a2f33e:	00055e83          	lhu	t4,0(a0) # 1000000 <_gp_+0x5cb7ec>
  a2f342:	01c77963          	bgeu	a4,t3,a2f354 <LzmaDec_TryDummy+0xe0>
  a2f346:	3915f163          	bgeu	a1,a7,a2f6c8 <LzmaDec_TryDummy+0x454>
  a2f34a:	2188                	lbu	a0,0(a1)
  a2f34c:	0722                	slli	a4,a4,0x8
  a2f34e:	0585                	addi	a1,a1,1
  a2f350:	10f5279b          	orshf	a5,a0,a5,sll,8
  a2f354:	00b75513          	srli	a0,a4,0xb
  a2f358:	03d50533          	mul	a0,a0,t4
  a2f35c:	02a7e163          	bltu	a5,a0,a2f37e <LzmaDec_TryDummy+0x10a>
  a2f360:	8f09                	sub	a4,a4,a0
  a2f362:	8f89                	sub	a5,a5,a0
  a2f364:	0685                	addi	a3,a3,1
  a2f366:	fcd879e3          	bgeu	a6,a3,a2f338 <LzmaDec_TryDummy+0xc4>
  a2f36a:	4505                	li	a0,1
  a2f36c:	010007b7          	lui	a5,0x1000
  a2f370:	00f77563          	bgeu	a4,a5,a2f37a <LzmaDec_TryDummy+0x106>
  a2f374:	3515fa63          	bgeu	a1,a7,a2f6c8 <LzmaDec_TryDummy+0x454>
  a2f378:	0585                	addi	a1,a1,1
  a2f37a:	c20c                	sw	a1,0(a2)
  a2f37c:	8082                	ret
  a2f37e:	872a                	mv	a4,a0
  a2f380:	b7dd                	j	a2f366 <LzmaDec_TryDummy+0xf2>
  a2f382:	0186ae83          	lw	t4,24(a3)
  a2f386:	0306ae03          	lw	t3,48(a3)
  a2f38a:	4a88                	lw	a0,16(a3)
  a2f38c:	4801                	li	a6,0
  a2f38e:	41ce8f33          	sub	t5,t4,t3
  a2f392:	01cef463          	bgeu	t4,t3,a2f39a <LzmaDec_TryDummy+0x126>
  a2f396:	0146a803          	lw	a6,20(a3)
  a2f39a:	01e506b3          	add	a3,a0,t5
  a2f39e:	96c2                	add	a3,a3,a6
  a2f3a0:	0006ce03          	lbu	t3,0(a3)
  a2f3a4:	10000813          	li	a6,256
  a2f3a8:	4685                	li	a3,1
  a2f3aa:	01000fb7          	lui	t6,0x1000
  a2f3ae:	0ff00f13          	li	t5,255
  a2f3b2:	0e06                	slli	t3,t3,0x1
  a2f3b4:	01c87eb3          	and	t4,a6,t3
  a2f3b8:	00d80533          	add	a0,a6,a3
  a2f3bc:	9576                	add	a0,a0,t4
  a2f3be:	02a3051b          	addshf	a0,t1,a0,sll,1
  a2f3c2:	00055283          	lhu	t0,0(a0)
  a2f3c6:	01f77963          	bgeu	a4,t6,a2f3d8 <LzmaDec_TryDummy+0x164>
  a2f3ca:	2f15ff63          	bgeu	a1,a7,a2f6c8 <LzmaDec_TryDummy+0x454>
  a2f3ce:	2188                	lbu	a0,0(a1)
  a2f3d0:	0722                	slli	a4,a4,0x8
  a2f3d2:	0585                	addi	a1,a1,1
  a2f3d4:	10f5279b          	orshf	a5,a0,a5,sll,8
  a2f3d8:	00b75513          	srli	a0,a4,0xb
  a2f3dc:	02550533          	mul	a0,a0,t0
  a2f3e0:	0686                	slli	a3,a3,0x1
  a2f3e2:	00a7fa63          	bgeu	a5,a0,a2f3f6 <LzmaDec_TryDummy+0x182>
  a2f3e6:	fffe4713          	not	a4,t3
  a2f3ea:	00e87833          	and	a6,a6,a4
  a2f3ee:	872a                	mv	a4,a0
  a2f3f0:	fcdf71e3          	bgeu	t5,a3,a2f3b2 <LzmaDec_TryDummy+0x13e>
  a2f3f4:	bf9d                	j	a2f36a <LzmaDec_TryDummy+0xf6>
  a2f3f6:	8f09                	sub	a4,a4,a0
  a2f3f8:	8f89                	sub	a5,a5,a0
  a2f3fa:	0685                	addi	a3,a3,1
  a2f3fc:	8876                	mv	a6,t4
  a2f3fe:	bfcd                	j	a2f3f0 <LzmaDec_TryDummy+0x17c>
  a2f400:	0ec1                	addi	t4,t4,16
  a2f402:	40e80833          	sub	a6,a6,a4
  a2f406:	03d30e9b          	addshf	t4,t1,t4,sll,1
  a2f40a:	010006b7          	lui	a3,0x1000
  a2f40e:	8f99                	sub	a5,a5,a4
  a2f410:	000ed703          	lhu	a4,0(t4)
  a2f414:	00d87a63          	bgeu	a6,a3,a2f428 <LzmaDec_TryDummy+0x1b4>
  a2f418:	4501                	li	a0,0
  a2f41a:	2b15f863          	bgeu	a1,a7,a2f6ca <LzmaDec_TryDummy+0x456>
  a2f41e:	2194                	lbu	a3,0(a1)
  a2f420:	0822                	slli	a6,a6,0x8
  a2f422:	0585                	addi	a1,a1,1
  a2f424:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f428:	00b85693          	srli	a3,a6,0xb
  a2f42c:	02e686b3          	mul	a3,a3,a4
  a2f430:	14d7f063          	bgeu	a5,a3,a2f570 <LzmaDec_TryDummy+0x2fc>
  a2f434:	a0030813          	addi	a6,t1,-1536
  a2f438:	4509                	li	a0,2
  a2f43a:	4f81                	li	t6,0
  a2f43c:	01000eb7          	lui	t4,0x1000
  a2f440:	00085703          	lhu	a4,0(a6)
  a2f444:	01d6fa63          	bgeu	a3,t4,a2f458 <LzmaDec_TryDummy+0x1e4>
  a2f448:	2915f063          	bgeu	a1,a7,a2f6c8 <LzmaDec_TryDummy+0x454>
  a2f44c:	0005ce83          	lbu	t4,0(a1)
  a2f450:	06a2                	slli	a3,a3,0x8
  a2f452:	0585                	addi	a1,a1,1
  a2f454:	10fea79b          	orshf	a5,t4,a5,sll,8
  a2f458:	00b6de93          	srli	t4,a3,0xb
  a2f45c:	02ee8733          	mul	a4,t4,a4
  a2f460:	1ce7fe63          	bgeu	a5,a4,a2f63c <LzmaDec_TryDummy+0x3c8>
  a2f464:	03c8081b          	addshf	a6,a6,t3,sll,1
  a2f468:	4681                	li	a3,0
  a2f46a:	4f21                	li	t5,8
  a2f46c:	4e05                	li	t3,1
  a2f46e:	010002b7          	lui	t0,0x1000
  a2f472:	0e06                	slli	t3,t3,0x1
  a2f474:	01c80eb3          	add	t4,a6,t3
  a2f478:	000ed383          	lhu	t2,0(t4) # 1000000 <_gp_+0x5cb7ec>
  a2f47c:	00577a63          	bgeu	a4,t0,a2f490 <LzmaDec_TryDummy+0x21c>
  a2f480:	2515f463          	bgeu	a1,a7,a2f6c8 <LzmaDec_TryDummy+0x454>
  a2f484:	0005ce83          	lbu	t4,0(a1)
  a2f488:	0722                	slli	a4,a4,0x8
  a2f48a:	0585                	addi	a1,a1,1
  a2f48c:	10fea79b          	orshf	a5,t4,a5,sll,8
  a2f490:	00b75e93          	srli	t4,a4,0xb
  a2f494:	027e8eb3          	mul	t4,t4,t2
  a2f498:	1fd7e663          	bltu	a5,t4,a2f684 <LzmaDec_TryDummy+0x410>
  a2f49c:	41d70733          	sub	a4,a4,t4
  a2f4a0:	41d787b3          	sub	a5,a5,t4
  a2f4a4:	0e05                	addi	t3,t3,1 # 1000001 <_gp_+0x5cb7ed>
  a2f4a6:	fdee66e3          	bltu	t3,t5,a2f472 <LzmaDec_TryDummy+0x1fe>
  a2f4aa:	04bff0bb          	bgeui	t6,4,a2f36c <LzmaDec_TryDummy+0xf8>
  a2f4ae:	41e686b3          	sub	a3,a3,t5
  a2f4b2:	96f2                	add	a3,a3,t3
  a2f4b4:	20000e13          	li	t3,512
  a2f4b8:	0306f2bb          	bgeui	a3,3,a2f4c2 <LzmaDec_TryDummy+0x24e>
  a2f4bc:	0685                	addi	a3,a3,1 # 1000001 <_gp_+0x5cb7ed>
  a2f4be:	00769e13          	slli	t3,a3,0x7
  a2f4c2:	4685                	li	a3,1
  a2f4c4:	01000f37          	lui	t5,0x1000
  a2f4c8:	03f00e93          	li	t4,63
  a2f4cc:	0686                	slli	a3,a3,0x1
  a2f4ce:	00d30833          	add	a6,t1,a3
  a2f4d2:	9872                	add	a6,a6,t3
  a2f4d4:	00085f83          	lhu	t6,0(a6)
  a2f4d8:	01e77a63          	bgeu	a4,t5,a2f4ec <LzmaDec_TryDummy+0x278>
  a2f4dc:	1f15f663          	bgeu	a1,a7,a2f6c8 <LzmaDec_TryDummy+0x454>
  a2f4e0:	0005c803          	lbu	a6,0(a1)
  a2f4e4:	0722                	slli	a4,a4,0x8
  a2f4e6:	0585                	addi	a1,a1,1
  a2f4e8:	10f8279b          	orshf	a5,a6,a5,sll,8
  a2f4ec:	00b75813          	srli	a6,a4,0xb
  a2f4f0:	03f80833          	mul	a6,a6,t6
  a2f4f4:	1907ea63          	bltu	a5,a6,a2f688 <LzmaDec_TryDummy+0x414>
  a2f4f8:	41070733          	sub	a4,a4,a6
  a2f4fc:	410787b3          	sub	a5,a5,a6
  a2f500:	0685                	addi	a3,a3,1
  a2f502:	fcdef5e3          	bgeu	t4,a3,a2f4cc <LzmaDec_TryDummy+0x258>
  a2f506:	fc068693          	addi	a3,a3,-64
  a2f50a:	0496e8bb          	bltui	a3,4,a2f36c <LzmaDec_TryDummy+0xf8>
  a2f50e:	0016d813          	srli	a6,a3,0x1
  a2f512:	0e56febb          	bgeui	a3,14,a2f68c <LzmaDec_TryDummy+0x418>
  a2f516:	8a85                	andi	a3,a3,1
  a2f518:	187d                	addi	a6,a6,-1
  a2f51a:	0026e693          	ori	a3,a3,2
  a2f51e:	80000e37          	lui	t3,0x80000
  a2f522:	010696b3          	sll	a3,a3,a6
  a2f526:	980e4e13          	xori	t3,t3,-1664
  a2f52a:	96f2                	add	a3,a3,t3
  a2f52c:	02d3031b          	addshf	t1,t1,a3,sll,1
  a2f530:	4e85                	li	t4,1
  a2f532:	4e05                	li	t3,1
  a2f534:	01000fb7          	lui	t6,0x1000
  a2f538:	03c3069b          	addshf	a3,t1,t3,sll,1
  a2f53c:	0006df03          	lhu	t5,0(a3)
  a2f540:	01f77963          	bgeu	a4,t6,a2f552 <LzmaDec_TryDummy+0x2de>
  a2f544:	1915f263          	bgeu	a1,a7,a2f6c8 <LzmaDec_TryDummy+0x454>
  a2f548:	2194                	lbu	a3,0(a1)
  a2f54a:	0722                	slli	a4,a4,0x8
  a2f54c:	0585                	addi	a1,a1,1
  a2f54e:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f552:	00b75693          	srli	a3,a4,0xb
  a2f556:	03e686b3          	mul	a3,a3,t5
  a2f55a:	001e9f13          	slli	t5,t4,0x1
  a2f55e:	14d7ff63          	bgeu	a5,a3,a2f6bc <LzmaDec_TryDummy+0x448>
  a2f562:	9e76                	add	t3,t3,t4
  a2f564:	8736                	mv	a4,a3
  a2f566:	187d                	addi	a6,a6,-1
  a2f568:	8efa                	mv	t4,t5
  a2f56a:	fc0817e3          	bnez	a6,a2f538 <LzmaDec_TryDummy+0x2c4>
  a2f56e:	bbfd                	j	a2f36c <LzmaDec_TryDummy+0xf8>
  a2f570:	40d80733          	sub	a4,a6,a3
  a2f574:	8f95                	sub	a5,a5,a3
  a2f576:	010006b7          	lui	a3,0x1000
  a2f57a:	018ed803          	lhu	a6,24(t4)
  a2f57e:	00d77a63          	bgeu	a4,a3,a2f592 <LzmaDec_TryDummy+0x31e>
  a2f582:	4501                	li	a0,0
  a2f584:	1515f363          	bgeu	a1,a7,a2f6ca <LzmaDec_TryDummy+0x456>
  a2f588:	2194                	lbu	a3,0(a1)
  a2f58a:	0722                	slli	a4,a4,0x8
  a2f58c:	0585                	addi	a1,a1,1
  a2f58e:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f592:	00b75693          	srli	a3,a4,0xb
  a2f596:	030686b3          	mul	a3,a3,a6
  a2f59a:	04d7f163          	bgeu	a5,a3,a2f5dc <LzmaDec_TryDummy+0x368>
  a2f59e:	777d                	lui	a4,0xfffff
  a2f5a0:	9f3a                	add	t5,t5,a4
  a2f5a2:	01000537          	lui	a0,0x1000
  a2f5a6:	600f5703          	lhu	a4,1536(t5) # 1000600 <_gp_+0x5cbdec>
  a2f5aa:	00a6fa63          	bgeu	a3,a0,a2f5be <LzmaDec_TryDummy+0x34a>
  a2f5ae:	4501                	li	a0,0
  a2f5b0:	1115fd63          	bgeu	a1,a7,a2f6ca <LzmaDec_TryDummy+0x456>
  a2f5b4:	2188                	lbu	a0,0(a1)
  a2f5b6:	06a2                	slli	a3,a3,0x8
  a2f5b8:	0585                	addi	a1,a1,1
  a2f5ba:	10f5279b          	orshf	a5,a0,a5,sll,8
  a2f5be:	00b6d513          	srli	a0,a3,0xb
  a2f5c2:	02e50733          	mul	a4,a0,a4
  a2f5c6:	0ee7ef63          	bltu	a5,a4,a2f6c4 <LzmaDec_TryDummy+0x450>
  a2f5ca:	8e99                	sub	a3,a3,a4
  a2f5cc:	8f99                	sub	a5,a5,a4
  a2f5ce:	ffff f600 081f      	l.li	a6,0xfffff600
  a2f5d4:	981a                	add	a6,a6,t1
  a2f5d6:	450d                	li	a0,3
  a2f5d8:	4fb1                	li	t6,12
  a2f5da:	b58d                	j	a2f43c <LzmaDec_TryDummy+0x1c8>
  a2f5dc:	8f15                	sub	a4,a4,a3
  a2f5de:	8f95                	sub	a5,a5,a3
  a2f5e0:	010006b7          	lui	a3,0x1000
  a2f5e4:	030ed803          	lhu	a6,48(t4)
  a2f5e8:	00d77a63          	bgeu	a4,a3,a2f5fc <LzmaDec_TryDummy+0x388>
  a2f5ec:	4501                	li	a0,0
  a2f5ee:	0d15fe63          	bgeu	a1,a7,a2f6ca <LzmaDec_TryDummy+0x456>
  a2f5f2:	2194                	lbu	a3,0(a1)
  a2f5f4:	0722                	slli	a4,a4,0x8
  a2f5f6:	0585                	addi	a1,a1,1
  a2f5f8:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f5fc:	00b75693          	srli	a3,a4,0xb
  a2f600:	030686b3          	mul	a3,a3,a6
  a2f604:	fcd7e5e3          	bltu	a5,a3,a2f5ce <LzmaDec_TryDummy+0x35a>
  a2f608:	8f15                	sub	a4,a4,a3
  a2f60a:	8f95                	sub	a5,a5,a3
  a2f60c:	010006b7          	lui	a3,0x1000
  a2f610:	048ed803          	lhu	a6,72(t4)
  a2f614:	00d77a63          	bgeu	a4,a3,a2f628 <LzmaDec_TryDummy+0x3b4>
  a2f618:	4501                	li	a0,0
  a2f61a:	0b15f863          	bgeu	a1,a7,a2f6ca <LzmaDec_TryDummy+0x456>
  a2f61e:	2194                	lbu	a3,0(a1)
  a2f620:	0722                	slli	a4,a4,0x8
  a2f622:	0585                	addi	a1,a1,1
  a2f624:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f628:	00b75693          	srli	a3,a4,0xb
  a2f62c:	030686b3          	mul	a3,a3,a6
  a2f630:	f8d7efe3          	bltu	a5,a3,a2f5ce <LzmaDec_TryDummy+0x35a>
  a2f634:	8f95                	sub	a5,a5,a3
  a2f636:	40d706b3          	sub	a3,a4,a3
  a2f63a:	bf51                	j	a2f5ce <LzmaDec_TryDummy+0x35a>
  a2f63c:	8e99                	sub	a3,a3,a4
  a2f63e:	01000eb7          	lui	t4,0x1000
  a2f642:	8f99                	sub	a5,a5,a4
  a2f644:	01085703          	lhu	a4,16(a6)
  a2f648:	01d6fa63          	bgeu	a3,t4,a2f65c <LzmaDec_TryDummy+0x3e8>
  a2f64c:	0715fe63          	bgeu	a1,a7,a2f6c8 <LzmaDec_TryDummy+0x454>
  a2f650:	0005ce83          	lbu	t4,0(a1)
  a2f654:	06a2                	slli	a3,a3,0x8
  a2f656:	0585                	addi	a1,a1,1
  a2f658:	10fea79b          	orshf	a5,t4,a5,sll,8
  a2f65c:	00b6de93          	srli	t4,a3,0xb
  a2f660:	02ee8733          	mul	a4,t4,a4
  a2f664:	00e7f763          	bgeu	a5,a4,a2f672 <LzmaDec_TryDummy+0x3fe>
  a2f668:	0e21                	addi	t3,t3,8 # 80000008 <_gp_+0x7f5cb7f4>
  a2f66a:	03c8081b          	addshf	a6,a6,t3,sll,1
  a2f66e:	46a1                	li	a3,8
  a2f670:	bbed                	j	a2f46a <LzmaDec_TryDummy+0x1f6>
  a2f672:	8f99                	sub	a5,a5,a4
  a2f674:	20080813          	addi	a6,a6,512
  a2f678:	40e68733          	sub	a4,a3,a4
  a2f67c:	10000f13          	li	t5,256
  a2f680:	46c1                	li	a3,16
  a2f682:	b3ed                	j	a2f46c <LzmaDec_TryDummy+0x1f8>
  a2f684:	8776                	mv	a4,t4
  a2f686:	b505                	j	a2f4a6 <LzmaDec_TryDummy+0x232>
  a2f688:	8742                	mv	a4,a6
  a2f68a:	bda5                	j	a2f502 <LzmaDec_TryDummy+0x28e>
  a2f68c:	186d                	addi	a6,a6,-5
  a2f68e:	01000e37          	lui	t3,0x1000
  a2f692:	01c77963          	bgeu	a4,t3,a2f6a4 <LzmaDec_TryDummy+0x430>
  a2f696:	0315f963          	bgeu	a1,a7,a2f6c8 <LzmaDec_TryDummy+0x454>
  a2f69a:	2194                	lbu	a3,0(a1)
  a2f69c:	0722                	slli	a4,a4,0x8
  a2f69e:	0585                	addi	a1,a1,1
  a2f6a0:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f6a4:	8305                	srli	a4,a4,0x1
  a2f6a6:	40e786b3          	sub	a3,a5,a4
  a2f6aa:	82fd                	srli	a3,a3,0x1f
  a2f6ac:	16fd                	addi	a3,a3,-1 # ffffff <_gp_+0x5cb7eb>
  a2f6ae:	8ef9                	and	a3,a3,a4
  a2f6b0:	187d                	addi	a6,a6,-1
  a2f6b2:	8f95                	sub	a5,a5,a3
  a2f6b4:	fc081fe3          	bnez	a6,a2f692 <LzmaDec_TryDummy+0x41e>
  a2f6b8:	4811                	li	a6,4
  a2f6ba:	bd9d                	j	a2f530 <LzmaDec_TryDummy+0x2bc>
  a2f6bc:	8f15                	sub	a4,a4,a3
  a2f6be:	8f95                	sub	a5,a5,a3
  a2f6c0:	9e7a                	add	t3,t3,t5
  a2f6c2:	b555                	j	a2f566 <LzmaDec_TryDummy+0x2f2>
  a2f6c4:	450d                	li	a0,3
  a2f6c6:	b15d                	j	a2f36c <LzmaDec_TryDummy+0xf8>
  a2f6c8:	4501                	li	a0,0
  a2f6ca:	8082                	ret

00a2f6cc <LzmaDec_DecodeReal2>:
  a2f6cc:	711d                	addi	sp,sp,-96
  a2f6ce:	03010293          	addi	t0,sp,48
  a2f6d2:	7fe2960b          	stmia	{s0-s11},(t0)
  a2f6d6:	02c52d83          	lw	s11,44(a0) # 100002c <_gp_+0x5cb818>
  a2f6da:	ce32                	sw	a2,28(sp)
  a2f6dc:	8e2a                	mv	t3,a0
  a2f6de:	02852383          	lw	t2,40(a0)
  a2f6e2:	01852e83          	lw	t4,24(a0)
  a2f6e6:	000d9b63          	bnez	s11,a2f6fc <LzmaDec_DecodeReal2+0x30>
  a2f6ea:	415c                	lw	a5,4(a0)
  a2f6ec:	41d58733          	sub	a4,a1,t4
  a2f6f0:	407787b3          	sub	a5,a5,t2
  a2f6f4:	00e7f463          	bgeu	a5,a4,a2f6fc <LzmaDec_DecodeReal2+0x30>
  a2f6f8:	01d785b3          	add	a1,a5,t4
  a2f6fc:	000e4783          	lbu	a5,0(t3) # 1000000 <_gp_+0x5cb7ec>
  a2f700:	001e4703          	lbu	a4,1(t3)
  a2f704:	002e4603          	lbu	a2,2(t3)
  a2f708:	c63e                	sw	a5,12(sp)
  a2f70a:	46b2                	lw	a3,12(sp)
  a2f70c:	10000793          	li	a5,256
  a2f710:	00e79733          	sll	a4,a5,a4
  a2f714:	00d7d7b3          	srl	a5,a5,a3
  a2f718:	56fd                	li	a3,-1
  a2f71a:	00c696b3          	sll	a3,a3,a2
  a2f71e:	fff6c693          	not	a3,a3
  a2f722:	cc36                	sw	a3,24(sp)
  a2f724:	800006b7          	lui	a3,0x80000
  a2f728:	00ce2f83          	lw	t6,12(t3)
  a2f72c:	f006c693          	xori	a3,a3,-256
  a2f730:	d036                	sw	a3,32(sp)
  a2f732:	76fd                	lui	a3,0xfffff
  a2f734:	60068693          	addi	a3,a3,1536 # fffff600 <_gp_+0xff5cadec>
  a2f738:	014e2c83          	lw	s9,20(t3)
  a2f73c:	40f707b3          	sub	a5,a4,a5
  a2f740:	c836                	sw	a3,16(sp)
  a2f742:	96fe                	add	a3,a3,t6
  a2f744:	ca3e                	sw	a5,20(sp)
  a2f746:	d236                	sw	a3,36(sp)
  a2f748:	040e2f03          	lw	t5,64(t3)
  a2f74c:	a00f8693          	addi	a3,t6,-1536 # fffa00 <_gp_+0x5cb1ec>
  a2f750:	030e2283          	lw	t0,48(t3)
  a2f754:	034e2403          	lw	s0,52(t3)
  a2f758:	038e2983          	lw	s3,56(t3)
  a2f75c:	03ce2d03          	lw	s10,60(t3)
  a2f760:	010e2a03          	lw	s4,16(t3)
  a2f764:	01ce2703          	lw	a4,28(t3)
  a2f768:	020e2903          	lw	s2,32(t3)
  a2f76c:	024e2783          	lw	a5,36(t3)
  a2f770:	d436                	sw	a3,40(sp)
  a2f772:	fffc8693          	addi	a3,s9,-1
  a2f776:	4881                	li	a7,0
  a2f778:	01000637          	lui	a2,0x1000
  a2f77c:	0000 0800 081f      	l.li	a6,0x800
  a2f782:	d636                	sw	a3,44(sp)
  a2f784:	46e2                	lw	a3,24(sp)
  a2f786:	0076f533          	and	a0,a3,t2
  a2f78a:	5682                	lw	a3,32(sp)
  a2f78c:	0512                	slli	a0,a0,0x4
  a2f78e:	01e504b3          	add	s1,a0,t5
  a2f792:	94b6                	add	s1,s1,a3
  a2f794:	0486                	slli	s1,s1,0x1
  a2f796:	009f8ab3          	add	s5,t6,s1
  a2f79a:	000ad303          	lhu	t1,0(s5)
  a2f79e:	00c97763          	bgeu	s2,a2,a2f7ac <LzmaDec_DecodeReal2+0xe0>
  a2f7a2:	2314                	lbu	a3,0(a4)
  a2f7a4:	0922                	slli	s2,s2,0x8
  a2f7a6:	0705                	addi	a4,a4,1 # fffff001 <_gp_+0xff5ca7ed>
  a2f7a8:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f7ac:	00b95693          	srli	a3,s2,0xb
  a2f7b0:	026686b3          	mul	a3,a3,t1
  a2f7b4:	54d7fb63          	bgeu	a5,a3,a2fd0a <LzmaDec_DecodeReal2+0x63e>
  a2f7b8:	40680533          	sub	a0,a6,t1
  a2f7bc:	4aa3031b          	addshf	t1,t1,a0,srl,5
  a2f7c0:	006a9023          	sh	t1,0(s5)
  a2f7c4:	280f8513          	addi	a0,t6,640
  a2f7c8:	00039463          	bnez	t2,a2f7d0 <LzmaDec_DecodeReal2+0x104>
  a2f7cc:	020d8563          	beqz	s11,a2f7f6 <LzmaDec_DecodeReal2+0x12a>
  a2f7d0:	00839493          	slli	s1,t2,0x8
  a2f7d4:	fffe8313          	addi	t1,t4,-1 # ffffff <_gp_+0x5cb7eb>
  a2f7d8:	000e9363          	bnez	t4,a2f7de <LzmaDec_DecodeReal2+0x112>
  a2f7dc:	5332                	lw	t1,44(sp)
  a2f7de:	9352                	add	t1,t1,s4
  a2f7e0:	00034303          	lbu	t1,0(t1)
  a2f7e4:	9326                	add	t1,t1,s1
  a2f7e6:	44d2                	lw	s1,20(sp)
  a2f7e8:	00937333          	and	t1,t1,s1
  a2f7ec:	44b2                	lw	s1,12(sp)
  a2f7ee:	00931333          	sll	t1,t1,s1
  a2f7f2:	0665155b          	muliadd	a0,a0,t1,6
  a2f7f6:	0385                	addi	t2,t2,1
  a2f7f8:	431d                	li	t1,7
  a2f7fa:	246f7163          	bgeu	t5,t1,a2fa3c <LzmaDec_DecodeReal2+0x370>
  a2f7fe:	448d                	li	s1,3
  a2f800:	837a                	mv	t1,t5
  a2f802:	01e4f363          	bgeu	s1,t5,a2f808 <LzmaDec_DecodeReal2+0x13c>
  a2f806:	430d                	li	t1,3
  a2f808:	406f0f33          	sub	t5,t5,t1
  a2f80c:	00255303          	lhu	t1,2(a0)
  a2f810:	00c6f763          	bgeu	a3,a2,a2f81e <LzmaDec_DecodeReal2+0x152>
  a2f814:	2304                	lbu	s1,0(a4)
  a2f816:	06a2                	slli	a3,a3,0x8
  a2f818:	0705                	addi	a4,a4,1
  a2f81a:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2f81e:	00b6d493          	srli	s1,a3,0xb
  a2f822:	026484b3          	mul	s1,s1,t1
  a2f826:	1697ff63          	bgeu	a5,s1,a2f9a4 <LzmaDec_DecodeReal2+0x2d8>
  a2f82a:	406806b3          	sub	a3,a6,t1
  a2f82e:	4ad3031b          	addshf	t1,t1,a3,srl,5
  a2f832:	00651123          	sh	t1,2(a0)
  a2f836:	4689                	li	a3,2
  a2f838:	0686                	slli	a3,a3,0x1
  a2f83a:	00d50ab3          	add	s5,a0,a3
  a2f83e:	000ad903          	lhu	s2,0(s5)
  a2f842:	00c4f863          	bgeu	s1,a2,a2f852 <LzmaDec_DecodeReal2+0x186>
  a2f846:	00074303          	lbu	t1,0(a4)
  a2f84a:	04a2                	slli	s1,s1,0x8
  a2f84c:	0705                	addi	a4,a4,1
  a2f84e:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2f852:	00b4d313          	srli	t1,s1,0xb
  a2f856:	03230333          	mul	t1,t1,s2
  a2f85a:	1467fe63          	bgeu	a5,t1,a2f9b6 <LzmaDec_DecodeReal2+0x2ea>
  a2f85e:	412804b3          	sub	s1,a6,s2
  a2f862:	4a99091b          	addshf	s2,s2,s1,srl,5
  a2f866:	012a9023          	sh	s2,0(s5)
  a2f86a:	0686                	slli	a3,a3,0x1
  a2f86c:	00d50ab3          	add	s5,a0,a3
  a2f870:	000ad903          	lhu	s2,0(s5)
  a2f874:	00c37763          	bgeu	t1,a2,a2f882 <LzmaDec_DecodeReal2+0x1b6>
  a2f878:	2304                	lbu	s1,0(a4)
  a2f87a:	0322                	slli	t1,t1,0x8
  a2f87c:	0705                	addi	a4,a4,1
  a2f87e:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2f882:	00b35493          	srli	s1,t1,0xb
  a2f886:	032484b3          	mul	s1,s1,s2
  a2f88a:	1497f063          	bgeu	a5,s1,a2f9ca <LzmaDec_DecodeReal2+0x2fe>
  a2f88e:	41280333          	sub	t1,a6,s2
  a2f892:	4a69091b          	addshf	s2,s2,t1,srl,5
  a2f896:	012a9023          	sh	s2,0(s5)
  a2f89a:	0686                	slli	a3,a3,0x1
  a2f89c:	00d50ab3          	add	s5,a0,a3
  a2f8a0:	000ad903          	lhu	s2,0(s5)
  a2f8a4:	00c4f863          	bgeu	s1,a2,a2f8b4 <LzmaDec_DecodeReal2+0x1e8>
  a2f8a8:	00074303          	lbu	t1,0(a4)
  a2f8ac:	04a2                	slli	s1,s1,0x8
  a2f8ae:	0705                	addi	a4,a4,1
  a2f8b0:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2f8b4:	00b4d313          	srli	t1,s1,0xb
  a2f8b8:	03230333          	mul	t1,t1,s2
  a2f8bc:	1267f063          	bgeu	a5,t1,a2f9dc <LzmaDec_DecodeReal2+0x310>
  a2f8c0:	412804b3          	sub	s1,a6,s2
  a2f8c4:	4a99091b          	addshf	s2,s2,s1,srl,5
  a2f8c8:	012a9023          	sh	s2,0(s5)
  a2f8cc:	0686                	slli	a3,a3,0x1
  a2f8ce:	00d50ab3          	add	s5,a0,a3
  a2f8d2:	000ad903          	lhu	s2,0(s5)
  a2f8d6:	00c37763          	bgeu	t1,a2,a2f8e4 <LzmaDec_DecodeReal2+0x218>
  a2f8da:	2304                	lbu	s1,0(a4)
  a2f8dc:	0322                	slli	t1,t1,0x8
  a2f8de:	0705                	addi	a4,a4,1
  a2f8e0:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2f8e4:	00b35493          	srli	s1,t1,0xb
  a2f8e8:	032484b3          	mul	s1,s1,s2
  a2f8ec:	1097f263          	bgeu	a5,s1,a2f9f0 <LzmaDec_DecodeReal2+0x324>
  a2f8f0:	41280333          	sub	t1,a6,s2
  a2f8f4:	4a69091b          	addshf	s2,s2,t1,srl,5
  a2f8f8:	012a9023          	sh	s2,0(s5)
  a2f8fc:	0686                	slli	a3,a3,0x1
  a2f8fe:	00d50ab3          	add	s5,a0,a3
  a2f902:	000ad903          	lhu	s2,0(s5)
  a2f906:	00c4f863          	bgeu	s1,a2,a2f916 <LzmaDec_DecodeReal2+0x24a>
  a2f90a:	00074303          	lbu	t1,0(a4)
  a2f90e:	04a2                	slli	s1,s1,0x8
  a2f910:	0705                	addi	a4,a4,1
  a2f912:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2f916:	00b4d313          	srli	t1,s1,0xb
  a2f91a:	03230333          	mul	t1,t1,s2
  a2f91e:	0e67f263          	bgeu	a5,t1,a2fa02 <LzmaDec_DecodeReal2+0x336>
  a2f922:	412804b3          	sub	s1,a6,s2
  a2f926:	4a99091b          	addshf	s2,s2,s1,srl,5
  a2f92a:	012a9023          	sh	s2,0(s5)
  a2f92e:	0686                	slli	a3,a3,0x1
  a2f930:	00d50ab3          	add	s5,a0,a3
  a2f934:	000ad903          	lhu	s2,0(s5)
  a2f938:	00c37763          	bgeu	t1,a2,a2f946 <LzmaDec_DecodeReal2+0x27a>
  a2f93c:	2304                	lbu	s1,0(a4)
  a2f93e:	0322                	slli	t1,t1,0x8
  a2f940:	0705                	addi	a4,a4,1
  a2f942:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2f946:	00b35493          	srli	s1,t1,0xb
  a2f94a:	032484b3          	mul	s1,s1,s2
  a2f94e:	0c97f463          	bgeu	a5,s1,a2fa16 <LzmaDec_DecodeReal2+0x34a>
  a2f952:	41280333          	sub	t1,a6,s2
  a2f956:	4a69091b          	addshf	s2,s2,t1,srl,5
  a2f95a:	012a9023          	sh	s2,0(s5)
  a2f95e:	0686                	slli	a3,a3,0x1
  a2f960:	9536                	add	a0,a0,a3
  a2f962:	00055a83          	lhu	s5,0(a0)
  a2f966:	00c4f863          	bgeu	s1,a2,a2f976 <LzmaDec_DecodeReal2+0x2aa>
  a2f96a:	00074303          	lbu	t1,0(a4)
  a2f96e:	04a2                	slli	s1,s1,0x8
  a2f970:	0705                	addi	a4,a4,1
  a2f972:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2f976:	00b4d913          	srli	s2,s1,0xb
  a2f97a:	03590933          	mul	s2,s2,s5
  a2f97e:	0b27f563          	bgeu	a5,s2,a2fa28 <LzmaDec_DecodeReal2+0x35c>
  a2f982:	41580333          	sub	t1,a6,s5
  a2f986:	4a6a8a9b          	addshf	s5,s5,t1,srl,5
  a2f98a:	01551023          	sh	s5,0(a0)
  a2f98e:	01da0533          	add	a0,s4,t4
  a2f992:	a114                	sb	a3,0(a0)
  a2f994:	0e85                	addi	t4,t4,1
  a2f996:	30bef9e3          	bgeu	t4,a1,a304a8 <LzmaDec_DecodeReal2+0xddc>
  a2f99a:	46f2                	lw	a3,28(sp)
  a2f99c:	ded764e3          	bltu	a4,a3,a2f784 <LzmaDec_DecodeReal2+0xb8>
  a2f9a0:	3090006f          	j	a304a8 <LzmaDec_DecodeReal2+0xddc>
  a2f9a4:	4a63131b          	subshf	t1,t1,t1,srl,5
  a2f9a8:	8f85                	sub	a5,a5,s1
  a2f9aa:	00651123          	sh	t1,2(a0)
  a2f9ae:	409684b3          	sub	s1,a3,s1
  a2f9b2:	468d                	li	a3,3
  a2f9b4:	b551                	j	a2f838 <LzmaDec_DecodeReal2+0x16c>
  a2f9b6:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2f9ba:	406787b3          	sub	a5,a5,t1
  a2f9be:	012a9023          	sh	s2,0(s5)
  a2f9c2:	0685                	addi	a3,a3,1
  a2f9c4:	40648333          	sub	t1,s1,t1
  a2f9c8:	b54d                	j	a2f86a <LzmaDec_DecodeReal2+0x19e>
  a2f9ca:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2f9ce:	8f85                	sub	a5,a5,s1
  a2f9d0:	012a9023          	sh	s2,0(s5)
  a2f9d4:	0685                	addi	a3,a3,1
  a2f9d6:	409304b3          	sub	s1,t1,s1
  a2f9da:	b5c1                	j	a2f89a <LzmaDec_DecodeReal2+0x1ce>
  a2f9dc:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2f9e0:	406787b3          	sub	a5,a5,t1
  a2f9e4:	012a9023          	sh	s2,0(s5)
  a2f9e8:	0685                	addi	a3,a3,1
  a2f9ea:	40648333          	sub	t1,s1,t1
  a2f9ee:	bdf9                	j	a2f8cc <LzmaDec_DecodeReal2+0x200>
  a2f9f0:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2f9f4:	8f85                	sub	a5,a5,s1
  a2f9f6:	012a9023          	sh	s2,0(s5)
  a2f9fa:	0685                	addi	a3,a3,1
  a2f9fc:	409304b3          	sub	s1,t1,s1
  a2fa00:	bdf5                	j	a2f8fc <LzmaDec_DecodeReal2+0x230>
  a2fa02:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2fa06:	406787b3          	sub	a5,a5,t1
  a2fa0a:	012a9023          	sh	s2,0(s5)
  a2fa0e:	0685                	addi	a3,a3,1
  a2fa10:	40648333          	sub	t1,s1,t1
  a2fa14:	bf29                	j	a2f92e <LzmaDec_DecodeReal2+0x262>
  a2fa16:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2fa1a:	8f85                	sub	a5,a5,s1
  a2fa1c:	012a9023          	sh	s2,0(s5)
  a2fa20:	0685                	addi	a3,a3,1
  a2fa22:	409304b3          	sub	s1,t1,s1
  a2fa26:	bf25                	j	a2f95e <LzmaDec_DecodeReal2+0x292>
  a2fa28:	4b5a9a9b          	subshf	s5,s5,s5,srl,5
  a2fa2c:	412787b3          	sub	a5,a5,s2
  a2fa30:	01551023          	sh	s5,0(a0)
  a2fa34:	0685                	addi	a3,a3,1
  a2fa36:	41248933          	sub	s2,s1,s2
  a2fa3a:	bf91                	j	a2f98e <LzmaDec_DecodeReal2+0x2c2>
  a2fa3c:	405e8333          	sub	t1,t4,t0
  a2fa40:	4481                	li	s1,0
  a2fa42:	005ef363          	bgeu	t4,t0,a2fa48 <LzmaDec_DecodeReal2+0x37c>
  a2fa46:	84e6                	mv	s1,s9
  a2fa48:	9352                	add	t1,t1,s4
  a2fa4a:	9326                	add	t1,t1,s1
  a2fa4c:	00034303          	lbu	t1,0(t1)
  a2fa50:	4499                	li	s1,6
  a2fa52:	0a0f71bb          	bgeui	t5,10,a2fa58 <LzmaDec_DecodeReal2+0x38c>
  a2fa56:	448d                	li	s1,3
  a2fa58:	0306                	slli	t1,t1,0x1
  a2fa5a:	10037b93          	andi	s7,t1,256
  a2fa5e:	101b8a93          	addi	s5,s7,257
  a2fa62:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2fa66:	409f0f33          	sub	t5,t5,s1
  a2fa6a:	000ad903          	lhu	s2,0(s5)
  a2fa6e:	00c6f763          	bgeu	a3,a2,a2fa7c <LzmaDec_DecodeReal2+0x3b0>
  a2fa72:	2304                	lbu	s1,0(a4)
  a2fa74:	06a2                	slli	a3,a3,0x8
  a2fa76:	0705                	addi	a4,a4,1
  a2fa78:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2fa7c:	00b6d493          	srli	s1,a3,0xb
  a2fa80:	032484b3          	mul	s1,s1,s2
  a2fa84:	1e97fa63          	bgeu	a5,s1,a2fc78 <LzmaDec_DecodeReal2+0x5ac>
  a2fa88:	412806b3          	sub	a3,a6,s2
  a2fa8c:	4ad9091b          	addshf	s2,s2,a3,srl,5
  a2fa90:	fff34b93          	not	s7,t1
  a2fa94:	012a9023          	sh	s2,0(s5)
  a2fa98:	100bfb93          	andi	s7,s7,256
  a2fa9c:	4689                	li	a3,2
  a2fa9e:	0306                	slli	t1,t1,0x1
  a2faa0:	01737c33          	and	s8,t1,s7
  a2faa4:	00db8ab3          	add	s5,s7,a3
  a2faa8:	9ae2                	add	s5,s5,s8
  a2faaa:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2faae:	000adb03          	lhu	s6,0(s5)
  a2fab2:	00c4f863          	bgeu	s1,a2,a2fac2 <LzmaDec_DecodeReal2+0x3f6>
  a2fab6:	00074903          	lbu	s2,0(a4)
  a2faba:	04a2                	slli	s1,s1,0x8
  a2fabc:	0705                	addi	a4,a4,1
  a2fabe:	10f9279b          	orshf	a5,s2,a5,sll,8
  a2fac2:	00b4d913          	srli	s2,s1,0xb
  a2fac6:	03690933          	mul	s2,s2,s6
  a2faca:	0686                	slli	a3,a3,0x1
  a2facc:	1b27ff63          	bgeu	a5,s2,a2fc8a <LzmaDec_DecodeReal2+0x5be>
  a2fad0:	416804b3          	sub	s1,a6,s6
  a2fad4:	4a9b0b1b          	addshf	s6,s6,s1,srl,5
  a2fad8:	fff34c13          	not	s8,t1
  a2fadc:	016a9023          	sh	s6,0(s5)
  a2fae0:	017c7c33          	and	s8,s8,s7
  a2fae4:	0306                	slli	t1,t1,0x1
  a2fae6:	01837bb3          	and	s7,t1,s8
  a2faea:	00dc0ab3          	add	s5,s8,a3
  a2faee:	9ade                	add	s5,s5,s7
  a2faf0:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2faf4:	000adb03          	lhu	s6,0(s5)
  a2faf8:	00c97763          	bgeu	s2,a2,a2fb06 <LzmaDec_DecodeReal2+0x43a>
  a2fafc:	2304                	lbu	s1,0(a4)
  a2fafe:	0922                	slli	s2,s2,0x8
  a2fb00:	0705                	addi	a4,a4,1
  a2fb02:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2fb06:	00b95493          	srli	s1,s2,0xb
  a2fb0a:	036484b3          	mul	s1,s1,s6
  a2fb0e:	0686                	slli	a3,a3,0x1
  a2fb10:	1897f763          	bgeu	a5,s1,a2fc9e <LzmaDec_DecodeReal2+0x5d2>
  a2fb14:	41680933          	sub	s2,a6,s6
  a2fb18:	4b2b0b1b          	addshf	s6,s6,s2,srl,5
  a2fb1c:	fff34b93          	not	s7,t1
  a2fb20:	016a9023          	sh	s6,0(s5)
  a2fb24:	018bfbb3          	and	s7,s7,s8
  a2fb28:	0306                	slli	t1,t1,0x1
  a2fb2a:	01737c33          	and	s8,t1,s7
  a2fb2e:	00db8ab3          	add	s5,s7,a3
  a2fb32:	9ae2                	add	s5,s5,s8
  a2fb34:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2fb38:	000adb03          	lhu	s6,0(s5)
  a2fb3c:	00c4f863          	bgeu	s1,a2,a2fb4c <LzmaDec_DecodeReal2+0x480>
  a2fb40:	00074903          	lbu	s2,0(a4)
  a2fb44:	04a2                	slli	s1,s1,0x8
  a2fb46:	0705                	addi	a4,a4,1
  a2fb48:	10f9279b          	orshf	a5,s2,a5,sll,8
  a2fb4c:	00b4d913          	srli	s2,s1,0xb
  a2fb50:	03690933          	mul	s2,s2,s6
  a2fb54:	0686                	slli	a3,a3,0x1
  a2fb56:	1527fd63          	bgeu	a5,s2,a2fcb0 <LzmaDec_DecodeReal2+0x5e4>
  a2fb5a:	416804b3          	sub	s1,a6,s6
  a2fb5e:	4a9b0b1b          	addshf	s6,s6,s1,srl,5
  a2fb62:	fff34c13          	not	s8,t1
  a2fb66:	016a9023          	sh	s6,0(s5)
  a2fb6a:	017c7c33          	and	s8,s8,s7
  a2fb6e:	0306                	slli	t1,t1,0x1
  a2fb70:	01837bb3          	and	s7,t1,s8
  a2fb74:	00dc0ab3          	add	s5,s8,a3
  a2fb78:	9ade                	add	s5,s5,s7
  a2fb7a:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2fb7e:	000adb03          	lhu	s6,0(s5)
  a2fb82:	00c97763          	bgeu	s2,a2,a2fb90 <LzmaDec_DecodeReal2+0x4c4>
  a2fb86:	2304                	lbu	s1,0(a4)
  a2fb88:	0922                	slli	s2,s2,0x8
  a2fb8a:	0705                	addi	a4,a4,1
  a2fb8c:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2fb90:	00b95493          	srli	s1,s2,0xb
  a2fb94:	036484b3          	mul	s1,s1,s6
  a2fb98:	0686                	slli	a3,a3,0x1
  a2fb9a:	1297f563          	bgeu	a5,s1,a2fcc4 <LzmaDec_DecodeReal2+0x5f8>
  a2fb9e:	41680933          	sub	s2,a6,s6
  a2fba2:	4b2b0b1b          	addshf	s6,s6,s2,srl,5
  a2fba6:	fff34b93          	not	s7,t1
  a2fbaa:	016a9023          	sh	s6,0(s5)
  a2fbae:	018bfbb3          	and	s7,s7,s8
  a2fbb2:	0306                	slli	t1,t1,0x1
  a2fbb4:	01737c33          	and	s8,t1,s7
  a2fbb8:	00db8ab3          	add	s5,s7,a3
  a2fbbc:	9ae2                	add	s5,s5,s8
  a2fbbe:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2fbc2:	000adb03          	lhu	s6,0(s5)
  a2fbc6:	00c4f863          	bgeu	s1,a2,a2fbd6 <LzmaDec_DecodeReal2+0x50a>
  a2fbca:	00074903          	lbu	s2,0(a4)
  a2fbce:	04a2                	slli	s1,s1,0x8
  a2fbd0:	0705                	addi	a4,a4,1
  a2fbd2:	10f9279b          	orshf	a5,s2,a5,sll,8
  a2fbd6:	00b4d913          	srli	s2,s1,0xb
  a2fbda:	03690933          	mul	s2,s2,s6
  a2fbde:	0686                	slli	a3,a3,0x1
  a2fbe0:	0f27fb63          	bgeu	a5,s2,a2fcd6 <LzmaDec_DecodeReal2+0x60a>
  a2fbe4:	416804b3          	sub	s1,a6,s6
  a2fbe8:	4a9b0b1b          	addshf	s6,s6,s1,srl,5
  a2fbec:	fff34c13          	not	s8,t1
  a2fbf0:	016a9023          	sh	s6,0(s5)
  a2fbf4:	017c7c33          	and	s8,s8,s7
  a2fbf8:	0306                	slli	t1,t1,0x1
  a2fbfa:	01837ab3          	and	s5,t1,s8
  a2fbfe:	00dc0b33          	add	s6,s8,a3
  a2fc02:	9b56                	add	s6,s6,s5
  a2fc04:	03650b1b          	addshf	s6,a0,s6,sll,1
  a2fc08:	000b5b83          	lhu	s7,0(s6) # 1000 <ccause+0x3e>
  a2fc0c:	00c97763          	bgeu	s2,a2,a2fc1a <LzmaDec_DecodeReal2+0x54e>
  a2fc10:	2304                	lbu	s1,0(a4)
  a2fc12:	0922                	slli	s2,s2,0x8
  a2fc14:	0705                	addi	a4,a4,1
  a2fc16:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2fc1a:	00b95493          	srli	s1,s2,0xb
  a2fc1e:	037484b3          	mul	s1,s1,s7
  a2fc22:	0686                	slli	a3,a3,0x1
  a2fc24:	0c97f363          	bgeu	a5,s1,a2fcea <LzmaDec_DecodeReal2+0x61e>
  a2fc28:	41780933          	sub	s2,a6,s7
  a2fc2c:	4b2b8b9b          	addshf	s7,s7,s2,srl,5
  a2fc30:	fff34a93          	not	s5,t1
  a2fc34:	017b1023          	sh	s7,0(s6)
  a2fc38:	018afab3          	and	s5,s5,s8
  a2fc3c:	026ac31b          	andshf	t1,s5,t1,sll,1
  a2fc40:	9ab6                	add	s5,s5,a3
  a2fc42:	9356                	add	t1,t1,s5
  a2fc44:	0265051b          	addshf	a0,a0,t1,sll,1
  a2fc48:	00055303          	lhu	t1,0(a0)
  a2fc4c:	00c4f863          	bgeu	s1,a2,a2fc5c <LzmaDec_DecodeReal2+0x590>
  a2fc50:	00074903          	lbu	s2,0(a4)
  a2fc54:	04a2                	slli	s1,s1,0x8
  a2fc56:	0705                	addi	a4,a4,1
  a2fc58:	10f9279b          	orshf	a5,s2,a5,sll,8
  a2fc5c:	00b4d913          	srli	s2,s1,0xb
  a2fc60:	02690933          	mul	s2,s2,t1
  a2fc64:	0686                	slli	a3,a3,0x1
  a2fc66:	0927fb63          	bgeu	a5,s2,a2fcfc <LzmaDec_DecodeReal2+0x630>
  a2fc6a:	406804b3          	sub	s1,a6,t1
  a2fc6e:	4a93031b          	addshf	t1,t1,s1,srl,5
  a2fc72:	00651023          	sh	t1,0(a0)
  a2fc76:	bb21                	j	a2f98e <LzmaDec_DecodeReal2+0x2c2>
  a2fc78:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2fc7c:	8f85                	sub	a5,a5,s1
  a2fc7e:	012a9023          	sh	s2,0(s5)
  a2fc82:	409684b3          	sub	s1,a3,s1
  a2fc86:	468d                	li	a3,3
  a2fc88:	bd19                	j	a2fa9e <LzmaDec_DecodeReal2+0x3d2>
  a2fc8a:	4b6b1b1b          	subshf	s6,s6,s6,srl,5
  a2fc8e:	412787b3          	sub	a5,a5,s2
  a2fc92:	016a9023          	sh	s6,0(s5)
  a2fc96:	0685                	addi	a3,a3,1
  a2fc98:	41248933          	sub	s2,s1,s2
  a2fc9c:	b5a1                	j	a2fae4 <LzmaDec_DecodeReal2+0x418>
  a2fc9e:	4b6b1b1b          	subshf	s6,s6,s6,srl,5
  a2fca2:	8f85                	sub	a5,a5,s1
  a2fca4:	016a9023          	sh	s6,0(s5)
  a2fca8:	0685                	addi	a3,a3,1
  a2fcaa:	409904b3          	sub	s1,s2,s1
  a2fcae:	bdad                	j	a2fb28 <LzmaDec_DecodeReal2+0x45c>
  a2fcb0:	4b6b1b1b          	subshf	s6,s6,s6,srl,5
  a2fcb4:	412787b3          	sub	a5,a5,s2
  a2fcb8:	016a9023          	sh	s6,0(s5)
  a2fcbc:	0685                	addi	a3,a3,1
  a2fcbe:	41248933          	sub	s2,s1,s2
  a2fcc2:	b575                	j	a2fb6e <LzmaDec_DecodeReal2+0x4a2>
  a2fcc4:	4b6b1b1b          	subshf	s6,s6,s6,srl,5
  a2fcc8:	8f85                	sub	a5,a5,s1
  a2fcca:	016a9023          	sh	s6,0(s5)
  a2fcce:	0685                	addi	a3,a3,1
  a2fcd0:	409904b3          	sub	s1,s2,s1
  a2fcd4:	bdf9                	j	a2fbb2 <LzmaDec_DecodeReal2+0x4e6>
  a2fcd6:	4b6b1b1b          	subshf	s6,s6,s6,srl,5
  a2fcda:	412787b3          	sub	a5,a5,s2
  a2fcde:	016a9023          	sh	s6,0(s5)
  a2fce2:	0685                	addi	a3,a3,1
  a2fce4:	41248933          	sub	s2,s1,s2
  a2fce8:	bf01                	j	a2fbf8 <LzmaDec_DecodeReal2+0x52c>
  a2fcea:	4b7b9b9b          	subshf	s7,s7,s7,srl,5
  a2fcee:	8f85                	sub	a5,a5,s1
  a2fcf0:	017b1023          	sh	s7,0(s6)
  a2fcf4:	0685                	addi	a3,a3,1
  a2fcf6:	409904b3          	sub	s1,s2,s1
  a2fcfa:	b789                	j	a2fc3c <LzmaDec_DecodeReal2+0x570>
  a2fcfc:	4a63131b          	subshf	t1,t1,t1,srl,5
  a2fd00:	412787b3          	sub	a5,a5,s2
  a2fd04:	00651023          	sh	t1,0(a0)
  a2fd08:	b335                	j	a2fa34 <LzmaDec_DecodeReal2+0x368>
  a2fd0a:	4a63131b          	subshf	t1,t1,t1,srl,5
  a2fd0e:	006a9023          	sh	t1,0(s5)
  a2fd12:	010f0313          	addi	t1,t5,16
  a2fd16:	0306                	slli	t1,t1,0x1
  a2fd18:	006f8b33          	add	s6,t6,t1
  a2fd1c:	40d90933          	sub	s2,s2,a3
  a2fd20:	8f95                	sub	a5,a5,a3
  a2fd22:	000b5a83          	lhu	s5,0(s6)
  a2fd26:	00c97763          	bgeu	s2,a2,a2fd34 <LzmaDec_DecodeReal2+0x668>
  a2fd2a:	2314                	lbu	a3,0(a4)
  a2fd2c:	0922                	slli	s2,s2,0x8
  a2fd2e:	0705                	addi	a4,a4,1
  a2fd30:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2fd34:	00b95693          	srli	a3,s2,0xb
  a2fd38:	035686b3          	mul	a3,a3,s5
  a2fd3c:	12d7f363          	bgeu	a5,a3,a2fe62 <LzmaDec_DecodeReal2+0x796>
  a2fd40:	415808b3          	sub	a7,a6,s5
  a2fd44:	5322                	lw	t1,40(sp)
  a2fd46:	4b1a8a9b          	addshf	s5,s5,a7,srl,5
  a2fd4a:	015b1023          	sh	s5,0(s6)
  a2fd4e:	0f31                	addi	t5,t5,12
  a2fd50:	00035483          	lhu	s1,0(t1)
  a2fd54:	00c6f863          	bgeu	a3,a2,a2fd64 <LzmaDec_DecodeReal2+0x698>
  a2fd58:	00074883          	lbu	a7,0(a4)
  a2fd5c:	06a2                	slli	a3,a3,0x8
  a2fd5e:	0705                	addi	a4,a4,1
  a2fd60:	10f8a79b          	orshf	a5,a7,a5,sll,8
  a2fd64:	00b6d893          	srli	a7,a3,0xb
  a2fd68:	029888b3          	mul	a7,a7,s1
  a2fd6c:	2917f463          	bgeu	a5,a7,a2fff4 <LzmaDec_DecodeReal2+0x928>
  a2fd70:	409806b3          	sub	a3,a6,s1
  a2fd74:	4ad4849b          	addshf	s1,s1,a3,srl,5
  a2fd78:	00931023          	sh	s1,0(t1)
  a2fd7c:	02a3051b          	addshf	a0,t1,a0,sll,1
  a2fd80:	2136                	lhu	a3,2(a0)
  a2fd82:	00c8f863          	bgeu	a7,a2,a2fd92 <LzmaDec_DecodeReal2+0x6c6>
  a2fd86:	00074303          	lbu	t1,0(a4)
  a2fd8a:	08a2                	slli	a7,a7,0x8
  a2fd8c:	0705                	addi	a4,a4,1
  a2fd8e:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2fd92:	00b8d493          	srli	s1,a7,0xb
  a2fd96:	02d484b3          	mul	s1,s1,a3
  a2fd9a:	2297f263          	bgeu	a5,s1,a2ffbe <LzmaDec_DecodeReal2+0x8f2>
  a2fd9e:	40d808b3          	sub	a7,a6,a3
  a2fda2:	4b16869b          	addshf	a3,a3,a7,srl,5
  a2fda6:	a136                	sh	a3,2(a0)
  a2fda8:	4689                	li	a3,2
  a2fdaa:	0686                	slli	a3,a3,0x1
  a2fdac:	00d50933          	add	s2,a0,a3
  a2fdb0:	00095303          	lhu	t1,0(s2)
  a2fdb4:	00c4f863          	bgeu	s1,a2,a2fdc4 <LzmaDec_DecodeReal2+0x6f8>
  a2fdb8:	00074883          	lbu	a7,0(a4)
  a2fdbc:	04a2                	slli	s1,s1,0x8
  a2fdbe:	0705                	addi	a4,a4,1
  a2fdc0:	10f8a79b          	orshf	a5,a7,a5,sll,8
  a2fdc4:	00b4d893          	srli	a7,s1,0xb
  a2fdc8:	026888b3          	mul	a7,a7,t1
  a2fdcc:	2117f163          	bgeu	a5,a7,a2ffce <LzmaDec_DecodeReal2+0x902>
  a2fdd0:	406804b3          	sub	s1,a6,t1
  a2fdd4:	4a93031b          	addshf	t1,t1,s1,srl,5
  a2fdd8:	00691023          	sh	t1,0(s2)
  a2fddc:	0686                	slli	a3,a3,0x1
  a2fdde:	9536                	add	a0,a0,a3
  a2fde0:	2106                	lhu	s1,0(a0)
  a2fde2:	00c8f863          	bgeu	a7,a2,a2fdf2 <LzmaDec_DecodeReal2+0x726>
  a2fde6:	00074303          	lbu	t1,0(a4)
  a2fdea:	08a2                	slli	a7,a7,0x8
  a2fdec:	0705                	addi	a4,a4,1
  a2fdee:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2fdf2:	00b8d913          	srli	s2,a7,0xb
  a2fdf6:	02990933          	mul	s2,s2,s1
  a2fdfa:	1f27f463          	bgeu	a5,s2,a2ffe2 <LzmaDec_DecodeReal2+0x916>
  a2fdfe:	409808b3          	sub	a7,a6,s1
  a2fe02:	4b14849b          	addshf	s1,s1,a7,srl,5
  a2fe06:	a106                	sh	s1,0(a0)
  a2fe08:	452d                	li	a0,11
  a2fe0a:	ff868893          	addi	a7,a3,-8
  a2fe0e:	35e56a63          	bltu	a0,t5,a30162 <LzmaDec_DecodeReal2+0xa96>
  a2fe12:	41d586b3          	sub	a3,a1,t4
  a2fe16:	0889                	addi	a7,a7,2
  a2fe18:	68068863          	beqz	a3,a304a8 <LzmaDec_DecodeReal2+0xddc>
  a2fe1c:	8546                	mv	a0,a7
  a2fe1e:	0116f363          	bgeu	a3,a7,a2fe24 <LzmaDec_DecodeReal2+0x758>
  a2fe22:	8536                	mv	a0,a3
  a2fe24:	405e8333          	sub	t1,t4,t0
  a2fe28:	4681                	li	a3,0
  a2fe2a:	005ef363          	bgeu	t4,t0,a2fe30 <LzmaDec_DecodeReal2+0x764>
  a2fe2e:	86e6                	mv	a3,s9
  a2fe30:	969a                	add	a3,a3,t1
  a2fe32:	40dc8333          	sub	t1,s9,a3
  a2fe36:	93aa                	add	t2,t2,a0
  a2fe38:	40a888b3          	sub	a7,a7,a0
  a2fe3c:	00ae84b3          	add	s1,t4,a0
  a2fe40:	72a36263          	bltu	t1,a0,a30564 <LzmaDec_DecodeReal2+0xe98>
  a2fe44:	01da0333          	add	t1,s4,t4
  a2fe48:	41d686b3          	sub	a3,a3,t4
  a2fe4c:	951a                	add	a0,a0,t1
  a2fe4e:	8ea6                	mv	t4,s1
  a2fe50:	00d304b3          	add	s1,t1,a3
  a2fe54:	2084                	lbu	s1,0(s1)
  a2fe56:	0305                	addi	t1,t1,1
  a2fe58:	fe930fa3          	sb	s1,-1(t1)
  a2fe5c:	fe651ae3          	bne	a0,t1,a2fe50 <LzmaDec_DecodeReal2+0x784>
  a2fe60:	be1d                	j	a2f996 <LzmaDec_DecodeReal2+0x2ca>
  a2fe62:	4b5a9a9b          	subshf	s5,s5,s5,srl,5
  a2fe66:	015b1023          	sh	s5,0(s6)
  a2fe6a:	01830b13          	addi	s6,t1,24
  a2fe6e:	9b7e                	add	s6,s6,t6
  a2fe70:	40d90933          	sub	s2,s2,a3
  a2fe74:	8f95                	sub	a5,a5,a3
  a2fe76:	000b5a83          	lhu	s5,0(s6)
  a2fe7a:	00c97763          	bgeu	s2,a2,a2fe88 <LzmaDec_DecodeReal2+0x7bc>
  a2fe7e:	2314                	lbu	a3,0(a4)
  a2fe80:	0922                	slli	s2,s2,0x8
  a2fe82:	0705                	addi	a4,a4,1
  a2fe84:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2fe88:	00b95693          	srli	a3,s2,0xb
  a2fe8c:	035686b3          	mul	a3,a3,s5
  a2fe90:	08d7f763          	bgeu	a5,a3,a2ff1e <LzmaDec_DecodeReal2+0x852>
  a2fe94:	41580333          	sub	t1,a6,s5
  a2fe98:	4a6a8a9b          	addshf	s5,s5,t1,srl,5
  a2fe9c:	4342                	lw	t1,16(sp)
  a2fe9e:	015b1023          	sh	s5,0(s6)
  a2fea2:	949a                	add	s1,s1,t1
  a2fea4:	94fe                	add	s1,s1,t6
  a2fea6:	0004d303          	lhu	t1,0(s1)
  a2feaa:	00c6f863          	bgeu	a3,a2,a2feba <LzmaDec_DecodeReal2+0x7ee>
  a2feae:	00074903          	lbu	s2,0(a4)
  a2feb2:	06a2                	slli	a3,a3,0x8
  a2feb4:	0705                	addi	a4,a4,1
  a2feb6:	10f9279b          	orshf	a5,s2,a5,sll,8
  a2feba:	00b6d913          	srli	s2,a3,0xb
  a2febe:	02690933          	mul	s2,s2,t1
  a2fec2:	0327fb63          	bgeu	a5,s2,a2fef8 <LzmaDec_DecodeReal2+0x82c>
  a2fec6:	406806b3          	sub	a3,a6,t1
  a2feca:	4ad3031b          	addshf	t1,t1,a3,srl,5
  a2fece:	00649023          	sh	t1,0(s1)
  a2fed2:	405e86b3          	sub	a3,t4,t0
  a2fed6:	4501                	li	a0,0
  a2fed8:	005ef363          	bgeu	t4,t0,a2fede <LzmaDec_DecodeReal2+0x812>
  a2fedc:	8566                	mv	a0,s9
  a2fede:	96d2                	add	a3,a3,s4
  a2fee0:	96aa                	add	a3,a3,a0
  a2fee2:	2288                	lbu	a0,0(a3)
  a2fee4:	01da06b3          	add	a3,s4,t4
  a2fee8:	0385                	addi	t2,t2,1
  a2feea:	a288                	sb	a0,0(a3)
  a2feec:	0e85                	addi	t4,t4,1
  a2feee:	469d                	li	a3,7
  a2fef0:	68df7b63          	bgeu	t5,a3,a30586 <LzmaDec_DecodeReal2+0xeba>
  a2fef4:	4f25                	li	t5,9
  a2fef6:	b445                	j	a2f996 <LzmaDec_DecodeReal2+0x2ca>
  a2fef8:	88a2                	mv	a7,s0
  a2fefa:	4a63131b          	subshf	t1,t1,t1,srl,5
  a2fefe:	8416                	mv	s0,t0
  a2ff00:	412686b3          	sub	a3,a3,s2
  a2ff04:	412787b3          	sub	a5,a5,s2
  a2ff08:	00649023          	sh	t1,0(s1)
  a2ff0c:	82c6                	mv	t0,a7
  a2ff0e:	072f7b3b          	bgeui	t5,7,a2ffba <LzmaDec_DecodeReal2+0x8ee>
  a2ff12:	4f21                	li	t5,8
  a2ff14:	8896                	mv	a7,t0
  a2ff16:	5312                	lw	t1,36(sp)
  a2ff18:	82a2                	mv	t0,s0
  a2ff1a:	8446                	mv	s0,a7
  a2ff1c:	bd15                	j	a2fd50 <LzmaDec_DecodeReal2+0x684>
  a2ff1e:	4b5a9a9b          	subshf	s5,s5,s5,srl,5
  a2ff22:	03030493          	addi	s1,t1,48
  a2ff26:	015b1023          	sh	s5,0(s6)
  a2ff2a:	94fe                	add	s1,s1,t6
  a2ff2c:	40d90933          	sub	s2,s2,a3
  a2ff30:	8f95                	sub	a5,a5,a3
  a2ff32:	0004d883          	lhu	a7,0(s1)
  a2ff36:	00c97763          	bgeu	s2,a2,a2ff44 <LzmaDec_DecodeReal2+0x878>
  a2ff3a:	2314                	lbu	a3,0(a4)
  a2ff3c:	0922                	slli	s2,s2,0x8
  a2ff3e:	0705                	addi	a4,a4,1
  a2ff40:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2ff44:	00b95693          	srli	a3,s2,0xb
  a2ff48:	031686b3          	mul	a3,a3,a7
  a2ff4c:	00d7f963          	bgeu	a5,a3,a2ff5e <LzmaDec_DecodeReal2+0x892>
  a2ff50:	41180333          	sub	t1,a6,a7
  a2ff54:	4a68889b          	addshf	a7,a7,t1,srl,5
  a2ff58:	01149023          	sh	a7,0(s1)
  a2ff5c:	bf4d                	j	a2ff0e <LzmaDec_DecodeReal2+0x842>
  a2ff5e:	4b18989b          	subshf	a7,a7,a7,srl,5
  a2ff62:	04830313          	addi	t1,t1,72
  a2ff66:	01149023          	sh	a7,0(s1)
  a2ff6a:	937e                	add	t1,t1,t6
  a2ff6c:	40d90933          	sub	s2,s2,a3
  a2ff70:	8f95                	sub	a5,a5,a3
  a2ff72:	00035883          	lhu	a7,0(t1)
  a2ff76:	00c97763          	bgeu	s2,a2,a2ff84 <LzmaDec_DecodeReal2+0x8b8>
  a2ff7a:	2314                	lbu	a3,0(a4)
  a2ff7c:	0922                	slli	s2,s2,0x8
  a2ff7e:	0705                	addi	a4,a4,1
  a2ff80:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2ff84:	00b95693          	srli	a3,s2,0xb
  a2ff88:	031686b3          	mul	a3,a3,a7
  a2ff8c:	00d7fc63          	bgeu	a5,a3,a2ffa4 <LzmaDec_DecodeReal2+0x8d8>
  a2ff90:	411804b3          	sub	s1,a6,a7
  a2ff94:	4a98889b          	addshf	a7,a7,s1,srl,5
  a2ff98:	01131023          	sh	a7,0(t1)
  a2ff9c:	88a2                	mv	a7,s0
  a2ff9e:	844e                	mv	s0,s3
  a2ffa0:	89c6                	mv	s3,a7
  a2ffa2:	b7b5                	j	a2ff0e <LzmaDec_DecodeReal2+0x842>
  a2ffa4:	4b18989b          	subshf	a7,a7,a7,srl,5
  a2ffa8:	8f95                	sub	a5,a5,a3
  a2ffaa:	01131023          	sh	a7,0(t1)
  a2ffae:	40d906b3          	sub	a3,s2,a3
  a2ffb2:	88a2                	mv	a7,s0
  a2ffb4:	846a                	mv	s0,s10
  a2ffb6:	8d4e                	mv	s10,s3
  a2ffb8:	b7e5                	j	a2ffa0 <LzmaDec_DecodeReal2+0x8d4>
  a2ffba:	4f2d                	li	t5,11
  a2ffbc:	bfa1                	j	a2ff14 <LzmaDec_DecodeReal2+0x848>
  a2ffbe:	4ad6969b          	subshf	a3,a3,a3,srl,5
  a2ffc2:	8f85                	sub	a5,a5,s1
  a2ffc4:	a136                	sh	a3,2(a0)
  a2ffc6:	409884b3          	sub	s1,a7,s1
  a2ffca:	468d                	li	a3,3
  a2ffcc:	bbf9                	j	a2fdaa <LzmaDec_DecodeReal2+0x6de>
  a2ffce:	4a63131b          	subshf	t1,t1,t1,srl,5
  a2ffd2:	411787b3          	sub	a5,a5,a7
  a2ffd6:	00691023          	sh	t1,0(s2)
  a2ffda:	0685                	addi	a3,a3,1
  a2ffdc:	411488b3          	sub	a7,s1,a7
  a2ffe0:	bbf5                	j	a2fddc <LzmaDec_DecodeReal2+0x710>
  a2ffe2:	4a94949b          	subshf	s1,s1,s1,srl,5
  a2ffe6:	412787b3          	sub	a5,a5,s2
  a2ffea:	a106                	sh	s1,0(a0)
  a2ffec:	0685                	addi	a3,a3,1
  a2ffee:	41288933          	sub	s2,a7,s2
  a2fff2:	bd19                	j	a2fe08 <LzmaDec_DecodeReal2+0x73c>
  a2fff4:	4a94949b          	subshf	s1,s1,s1,srl,5
  a2fff8:	00931023          	sh	s1,0(t1)
  a2fffc:	41168933          	sub	s2,a3,a7
  a30000:	411787b3          	sub	a5,a5,a7
  a30004:	01035483          	lhu	s1,16(t1)
  a30008:	00c97763          	bgeu	s2,a2,a30016 <LzmaDec_DecodeReal2+0x94a>
  a3000c:	2314                	lbu	a3,0(a4)
  a3000e:	0922                	slli	s2,s2,0x8
  a30010:	0705                	addi	a4,a4,1
  a30012:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a30016:	00b95893          	srli	a7,s2,0xb
  a3001a:	029888b3          	mul	a7,a7,s1
  a3001e:	0f17f263          	bgeu	a5,a7,a30102 <LzmaDec_DecodeReal2+0xa36>
  a30022:	409806b3          	sub	a3,a6,s1
  a30026:	4ad4849b          	addshf	s1,s1,a3,srl,5
  a3002a:	0521                	addi	a0,a0,8
  a3002c:	00931823          	sh	s1,16(t1)
  a30030:	02a3031b          	addshf	t1,t1,a0,sll,1
  a30034:	00235683          	lhu	a3,2(t1)
  a30038:	00c8f763          	bgeu	a7,a2,a30046 <LzmaDec_DecodeReal2+0x97a>
  a3003c:	2308                	lbu	a0,0(a4)
  a3003e:	08a2                	slli	a7,a7,0x8
  a30040:	0705                	addi	a4,a4,1
  a30042:	10f5279b          	orshf	a5,a0,a5,sll,8
  a30046:	00b8d493          	srli	s1,a7,0xb
  a3004a:	02d484b3          	mul	s1,s1,a3
  a3004e:	0697fe63          	bgeu	a5,s1,a300ca <LzmaDec_DecodeReal2+0x9fe>
  a30052:	40d80533          	sub	a0,a6,a3
  a30056:	4aa6869b          	addshf	a3,a3,a0,srl,5
  a3005a:	00d31123          	sh	a3,2(t1)
  a3005e:	4889                	li	a7,2
  a30060:	0886                	slli	a7,a7,0x1
  a30062:	01130933          	add	s2,t1,a7
  a30066:	00095503          	lhu	a0,0(s2)
  a3006a:	00c4f763          	bgeu	s1,a2,a30078 <LzmaDec_DecodeReal2+0x9ac>
  a3006e:	2314                	lbu	a3,0(a4)
  a30070:	04a2                	slli	s1,s1,0x8
  a30072:	0705                	addi	a4,a4,1
  a30074:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a30078:	00b4d693          	srli	a3,s1,0xb
  a3007c:	02a686b3          	mul	a3,a3,a0
  a30080:	04d7fe63          	bgeu	a5,a3,a300dc <LzmaDec_DecodeReal2+0xa10>
  a30084:	40a804b3          	sub	s1,a6,a0
  a30088:	4a95051b          	addshf	a0,a0,s1,srl,5
  a3008c:	00a91023          	sh	a0,0(s2)
  a30090:	0886                	slli	a7,a7,0x1
  a30092:	9346                	add	t1,t1,a7
  a30094:	00035483          	lhu	s1,0(t1)
  a30098:	00c6f763          	bgeu	a3,a2,a300a6 <LzmaDec_DecodeReal2+0x9da>
  a3009c:	2308                	lbu	a0,0(a4)
  a3009e:	06a2                	slli	a3,a3,0x8
  a300a0:	0705                	addi	a4,a4,1
  a300a2:	10f5279b          	orshf	a5,a0,a5,sll,8
  a300a6:	00b6d913          	srli	s2,a3,0xb
  a300aa:	02990933          	mul	s2,s2,s1
  a300ae:	0527f063          	bgeu	a5,s2,a300ee <LzmaDec_DecodeReal2+0xa22>
  a300b2:	409806b3          	sub	a3,a6,s1
  a300b6:	4ad4849b          	addshf	s1,s1,a3,srl,5
  a300ba:	00931023          	sh	s1,0(t1)
  a300be:	46ad                	li	a3,11
  a300c0:	d5e6f9e3          	bgeu	a3,t5,a2fe12 <LzmaDec_DecodeReal2+0x746>
  a300c4:	20000313          	li	t1,512
  a300c8:	a06d                	j	a30172 <LzmaDec_DecodeReal2+0xaa6>
  a300ca:	4ad6969b          	subshf	a3,a3,a3,srl,5
  a300ce:	8f85                	sub	a5,a5,s1
  a300d0:	00d31123          	sh	a3,2(t1)
  a300d4:	409884b3          	sub	s1,a7,s1
  a300d8:	488d                	li	a7,3
  a300da:	b759                	j	a30060 <LzmaDec_DecodeReal2+0x994>
  a300dc:	4aa5151b          	subshf	a0,a0,a0,srl,5
  a300e0:	8f95                	sub	a5,a5,a3
  a300e2:	00a91023          	sh	a0,0(s2)
  a300e6:	0885                	addi	a7,a7,1
  a300e8:	40d486b3          	sub	a3,s1,a3
  a300ec:	b755                	j	a30090 <LzmaDec_DecodeReal2+0x9c4>
  a300ee:	4a94949b          	subshf	s1,s1,s1,srl,5
  a300f2:	412787b3          	sub	a5,a5,s2
  a300f6:	00931023          	sh	s1,0(t1)
  a300fa:	0885                	addi	a7,a7,1
  a300fc:	41268933          	sub	s2,a3,s2
  a30100:	bf7d                	j	a300be <LzmaDec_DecodeReal2+0x9f2>
  a30102:	4a94949b          	subshf	s1,s1,s1,srl,5
  a30106:	41190933          	sub	s2,s2,a7
  a3010a:	411787b3          	sub	a5,a5,a7
  a3010e:	00931823          	sh	s1,16(t1)
  a30112:	4885                	li	a7,1
  a30114:	0ff00a93          	li	s5,255
  a30118:	0886                	slli	a7,a7,0x1
  a3011a:	20088493          	addi	s1,a7,512
  a3011e:	949a                	add	s1,s1,t1
  a30120:	2096                	lhu	a3,0(s1)
  a30122:	00c97763          	bgeu	s2,a2,a30130 <LzmaDec_DecodeReal2+0xa64>
  a30126:	2308                	lbu	a0,0(a4)
  a30128:	0922                	slli	s2,s2,0x8
  a3012a:	0705                	addi	a4,a4,1
  a3012c:	10f5279b          	orshf	a5,a0,a5,sll,8
  a30130:	00b95513          	srli	a0,s2,0xb
  a30134:	02d50533          	mul	a0,a0,a3
  a30138:	00a7fd63          	bgeu	a5,a0,a30152 <LzmaDec_DecodeReal2+0xa86>
  a3013c:	40d80933          	sub	s2,a6,a3
  a30140:	4b26869b          	addshf	a3,a3,s2,srl,5
  a30144:	a096                	sh	a3,0(s1)
  a30146:	892a                	mv	s2,a0
  a30148:	fd1af8e3          	bgeu	s5,a7,a30118 <LzmaDec_DecodeReal2+0xa4c>
  a3014c:	f1088893          	addi	a7,a7,-240
  a30150:	b7bd                	j	a300be <LzmaDec_DecodeReal2+0x9f2>
  a30152:	4ad6969b          	subshf	a3,a3,a3,srl,5
  a30156:	40a90933          	sub	s2,s2,a0
  a3015a:	8f89                	sub	a5,a5,a0
  a3015c:	a096                	sh	a3,0(s1)
  a3015e:	0885                	addi	a7,a7,1
  a30160:	b7e5                	j	a30148 <LzmaDec_DecodeReal2+0xa7c>
  a30162:	450d                	li	a0,3
  a30164:	20000313          	li	t1,512
  a30168:	01156563          	bltu	a0,a7,a30172 <LzmaDec_DecodeReal2+0xaa6>
  a3016c:	16e5                	addi	a3,a3,-7
  a3016e:	00769313          	slli	t1,a3,0x7
  a30172:	937e                	add	t1,t1,t6
  a30174:	00235683          	lhu	a3,2(t1)
  a30178:	00c97763          	bgeu	s2,a2,a30186 <LzmaDec_DecodeReal2+0xaba>
  a3017c:	2308                	lbu	a0,0(a4)
  a3017e:	0922                	slli	s2,s2,0x8
  a30180:	0705                	addi	a4,a4,1
  a30182:	10f5279b          	orshf	a5,a0,a5,sll,8
  a30186:	00b95493          	srli	s1,s2,0xb
  a3018a:	02d484b3          	mul	s1,s1,a3
  a3018e:	1897fc63          	bgeu	a5,s1,a30326 <LzmaDec_DecodeReal2+0xc5a>
  a30192:	40d80533          	sub	a0,a6,a3
  a30196:	4aa6869b          	addshf	a3,a3,a0,srl,5
  a3019a:	00d31123          	sh	a3,2(t1)
  a3019e:	4689                	li	a3,2
  a301a0:	0686                	slli	a3,a3,0x1
  a301a2:	00d30ab3          	add	s5,t1,a3
  a301a6:	000ad903          	lhu	s2,0(s5)
  a301aa:	00c4f763          	bgeu	s1,a2,a301b8 <LzmaDec_DecodeReal2+0xaec>
  a301ae:	2308                	lbu	a0,0(a4)
  a301b0:	04a2                	slli	s1,s1,0x8
  a301b2:	0705                	addi	a4,a4,1
  a301b4:	10f5279b          	orshf	a5,a0,a5,sll,8
  a301b8:	00b4d513          	srli	a0,s1,0xb
  a301bc:	03250533          	mul	a0,a0,s2
  a301c0:	16a7fc63          	bgeu	a5,a0,a30338 <LzmaDec_DecodeReal2+0xc6c>
  a301c4:	412804b3          	sub	s1,a6,s2
  a301c8:	4a99091b          	addshf	s2,s2,s1,srl,5
  a301cc:	012a9023          	sh	s2,0(s5)
  a301d0:	0686                	slli	a3,a3,0x1
  a301d2:	00d30ab3          	add	s5,t1,a3
  a301d6:	000ad903          	lhu	s2,0(s5)
  a301da:	00c57763          	bgeu	a0,a2,a301e8 <LzmaDec_DecodeReal2+0xb1c>
  a301de:	2304                	lbu	s1,0(a4)
  a301e0:	0522                	slli	a0,a0,0x8
  a301e2:	0705                	addi	a4,a4,1
  a301e4:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a301e8:	00b55493          	srli	s1,a0,0xb
  a301ec:	032484b3          	mul	s1,s1,s2
  a301f0:	1497fd63          	bgeu	a5,s1,a3034a <LzmaDec_DecodeReal2+0xc7e>
  a301f4:	41280533          	sub	a0,a6,s2
  a301f8:	4aa9091b          	addshf	s2,s2,a0,srl,5
  a301fc:	012a9023          	sh	s2,0(s5)
  a30200:	0686                	slli	a3,a3,0x1
  a30202:	00d30ab3          	add	s5,t1,a3
  a30206:	000ad903          	lhu	s2,0(s5)
  a3020a:	00c4f763          	bgeu	s1,a2,a30218 <LzmaDec_DecodeReal2+0xb4c>
  a3020e:	2308                	lbu	a0,0(a4)
  a30210:	04a2                	slli	s1,s1,0x8
  a30212:	0705                	addi	a4,a4,1
  a30214:	10f5279b          	orshf	a5,a0,a5,sll,8
  a30218:	00b4d513          	srli	a0,s1,0xb
  a3021c:	03250533          	mul	a0,a0,s2
  a30220:	12a7fe63          	bgeu	a5,a0,a3035c <LzmaDec_DecodeReal2+0xc90>
  a30224:	412804b3          	sub	s1,a6,s2
  a30228:	4a99091b          	addshf	s2,s2,s1,srl,5
  a3022c:	012a9023          	sh	s2,0(s5)
  a30230:	0686                	slli	a3,a3,0x1
  a30232:	00d30ab3          	add	s5,t1,a3
  a30236:	000ad903          	lhu	s2,0(s5)
  a3023a:	00c57763          	bgeu	a0,a2,a30248 <LzmaDec_DecodeReal2+0xb7c>
  a3023e:	2304                	lbu	s1,0(a4)
  a30240:	0522                	slli	a0,a0,0x8
  a30242:	0705                	addi	a4,a4,1
  a30244:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a30248:	00b55493          	srli	s1,a0,0xb
  a3024c:	032484b3          	mul	s1,s1,s2
  a30250:	1097ff63          	bgeu	a5,s1,a3036e <LzmaDec_DecodeReal2+0xca2>
  a30254:	41280533          	sub	a0,a6,s2
  a30258:	4aa9091b          	addshf	s2,s2,a0,srl,5
  a3025c:	012a9023          	sh	s2,0(s5)
  a30260:	0686                	slli	a3,a3,0x1
  a30262:	9336                	add	t1,t1,a3
  a30264:	00035503          	lhu	a0,0(t1)
  a30268:	00c4f863          	bgeu	s1,a2,a30278 <LzmaDec_DecodeReal2+0xbac>
  a3026c:	00074903          	lbu	s2,0(a4)
  a30270:	04a2                	slli	s1,s1,0x8
  a30272:	0705                	addi	a4,a4,1
  a30274:	10f9279b          	orshf	a5,s2,a5,sll,8
  a30278:	00b4d913          	srli	s2,s1,0xb
  a3027c:	02a90933          	mul	s2,s2,a0
  a30280:	1127f063          	bgeu	a5,s2,a30380 <LzmaDec_DecodeReal2+0xcb4>
  a30284:	40a804b3          	sub	s1,a6,a0
  a30288:	4a95051b          	addshf	a0,a0,s1,srl,5
  a3028c:	00a31023          	sh	a0,0(t1)
  a30290:	fc068693          	addi	a3,a3,-64
  a30294:	450d                	li	a0,3
  a30296:	06d57563          	bgeu	a0,a3,a30300 <LzmaDec_DecodeReal2+0xc34>
  a3029a:	0016f513          	andi	a0,a3,1
  a3029e:	44b5                	li	s1,13
  a302a0:	0016d313          	srli	t1,a3,0x1
  a302a4:	00256513          	ori	a0,a0,2
  a302a8:	10d4e063          	bltu	s1,a3,a303a8 <LzmaDec_DecodeReal2+0xcdc>
  a302ac:	137d                	addi	t1,t1,-1
  a302ae:	00651533          	sll	a0,a0,t1
  a302b2:	0505                	addi	a0,a0,1
  a302b4:	4b85                	li	s7,1
  a302b6:	76fd                	lui	a3,0xfffff
  a302b8:	30068693          	addi	a3,a3,768 # fffff300 <_gp_+0xff5caaec>
  a302bc:	02a68b1b          	addshf	s6,a3,a0,sll,1
  a302c0:	9b7e                	add	s6,s6,t6
  a302c2:	000b5483          	lhu	s1,0(s6)
  a302c6:	00c97763          	bgeu	s2,a2,a302d4 <LzmaDec_DecodeReal2+0xc08>
  a302ca:	2314                	lbu	a3,0(a4)
  a302cc:	0922                	slli	s2,s2,0x8
  a302ce:	0705                	addi	a4,a4,1
  a302d0:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a302d4:	00b95a93          	srli	s5,s2,0xb
  a302d8:	029a8ab3          	mul	s5,s5,s1
  a302dc:	001b9693          	slli	a3,s7,0x1
  a302e0:	0b57fa63          	bgeu	a5,s5,a30394 <LzmaDec_DecodeReal2+0xcc8>
  a302e4:	40980933          	sub	s2,a6,s1
  a302e8:	4b24849b          	addshf	s1,s1,s2,srl,5
  a302ec:	009b1023          	sh	s1,0(s6)
  a302f0:	955e                	add	a0,a0,s7
  a302f2:	8956                	mv	s2,s5
  a302f4:	137d                	addi	t1,t1,-1
  a302f6:	8bb6                	mv	s7,a3
  a302f8:	fa031fe3          	bnez	t1,a302b6 <LzmaDec_DecodeReal2+0xbea>
  a302fc:	40d506b3          	sub	a3,a0,a3
  a30300:	44c9                	li	s1,18
  a30302:	00168513          	addi	a0,a3,1
  a30306:	25e4e863          	bltu	s1,t5,a30556 <LzmaDec_DecodeReal2+0xe8a>
  a3030a:	4f1d                	li	t5,7
  a3030c:	831e                	mv	t1,t2
  a3030e:	000d8363          	beqz	s11,a30314 <LzmaDec_DecodeReal2+0xc48>
  a30312:	836e                	mv	t1,s11
  a30314:	2466e363          	bltu	a3,t1,a3055a <LzmaDec_DecodeReal2+0xe8e>
  a30318:	8d4e                	mv	s10,s3
  a3031a:	20288893          	addi	a7,a7,514
  a3031e:	89a2                	mv	s3,s0
  a30320:	8416                	mv	s0,t0
  a30322:	82aa                	mv	t0,a0
  a30324:	a251                	j	a304a8 <LzmaDec_DecodeReal2+0xddc>
  a30326:	4ad6969b          	subshf	a3,a3,a3,srl,5
  a3032a:	8f85                	sub	a5,a5,s1
  a3032c:	00d31123          	sh	a3,2(t1)
  a30330:	409904b3          	sub	s1,s2,s1
  a30334:	468d                	li	a3,3
  a30336:	b5ad                	j	a301a0 <LzmaDec_DecodeReal2+0xad4>
  a30338:	4b29191b          	subshf	s2,s2,s2,srl,5
  a3033c:	8f89                	sub	a5,a5,a0
  a3033e:	012a9023          	sh	s2,0(s5)
  a30342:	0685                	addi	a3,a3,1
  a30344:	40a48533          	sub	a0,s1,a0
  a30348:	b561                	j	a301d0 <LzmaDec_DecodeReal2+0xb04>
  a3034a:	4b29191b          	subshf	s2,s2,s2,srl,5
  a3034e:	8f85                	sub	a5,a5,s1
  a30350:	012a9023          	sh	s2,0(s5)
  a30354:	0685                	addi	a3,a3,1
  a30356:	409504b3          	sub	s1,a0,s1
  a3035a:	b55d                	j	a30200 <LzmaDec_DecodeReal2+0xb34>
  a3035c:	4b29191b          	subshf	s2,s2,s2,srl,5
  a30360:	8f89                	sub	a5,a5,a0
  a30362:	012a9023          	sh	s2,0(s5)
  a30366:	0685                	addi	a3,a3,1
  a30368:	40a48533          	sub	a0,s1,a0
  a3036c:	b5d1                	j	a30230 <LzmaDec_DecodeReal2+0xb64>
  a3036e:	4b29191b          	subshf	s2,s2,s2,srl,5
  a30372:	8f85                	sub	a5,a5,s1
  a30374:	012a9023          	sh	s2,0(s5)
  a30378:	0685                	addi	a3,a3,1
  a3037a:	409504b3          	sub	s1,a0,s1
  a3037e:	b5cd                	j	a30260 <LzmaDec_DecodeReal2+0xb94>
  a30380:	4aa5151b          	subshf	a0,a0,a0,srl,5
  a30384:	412787b3          	sub	a5,a5,s2
  a30388:	00a31023          	sh	a0,0(t1)
  a3038c:	0685                	addi	a3,a3,1
  a3038e:	41248933          	sub	s2,s1,s2
  a30392:	bdfd                	j	a30290 <LzmaDec_DecodeReal2+0xbc4>
  a30394:	4a94949b          	subshf	s1,s1,s1,srl,5
  a30398:	41590933          	sub	s2,s2,s5
  a3039c:	415787b3          	sub	a5,a5,s5
  a303a0:	009b1023          	sh	s1,0(s6)
  a303a4:	9536                	add	a0,a0,a3
  a303a6:	b7b9                	j	a302f4 <LzmaDec_DecodeReal2+0xc28>
  a303a8:	136d                	addi	t1,t1,-5
  a303aa:	00c97763          	bgeu	s2,a2,a303b8 <LzmaDec_DecodeReal2+0xcec>
  a303ae:	2314                	lbu	a3,0(a4)
  a303b0:	0922                	slli	s2,s2,0x8
  a303b2:	0705                	addi	a4,a4,1
  a303b4:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a303b8:	00195913          	srli	s2,s2,0x1
  a303bc:	412787b3          	sub	a5,a5,s2
  a303c0:	41f7d493          	srai	s1,a5,0x1f
  a303c4:	02a4851b          	addshf	a0,s1,a0,sll,1
  a303c8:	137d                	addi	t1,t1,-1
  a303ca:	009974b3          	and	s1,s2,s1
  a303ce:	0505                	addi	a0,a0,1
  a303d0:	97a6                	add	a5,a5,s1
  a303d2:	fc031ce3          	bnez	t1,a303aa <LzmaDec_DecodeReal2+0xcde>
  a303d6:	0512                	slli	a0,a0,0x4
  a303d8:	002fd683          	lhu	a3,2(t6)
  a303dc:	00c97863          	bgeu	s2,a2,a303ec <LzmaDec_DecodeReal2+0xd20>
  a303e0:	00074303          	lbu	t1,0(a4)
  a303e4:	0922                	slli	s2,s2,0x8
  a303e6:	0705                	addi	a4,a4,1
  a303e8:	10f3279b          	orshf	a5,t1,a5,sll,8
  a303ec:	00b95493          	srli	s1,s2,0xb
  a303f0:	02d484b3          	mul	s1,s1,a3
  a303f4:	1097fc63          	bgeu	a5,s1,a3050c <LzmaDec_DecodeReal2+0xe40>
  a303f8:	40d80333          	sub	t1,a6,a3
  a303fc:	4a66869b          	addshf	a3,a3,t1,srl,5
  a30400:	00df9123          	sh	a3,2(t6)
  a30404:	4689                	li	a3,2
  a30406:	02df8a9b          	addshf	s5,t6,a3,sll,1
  a3040a:	000ad903          	lhu	s2,0(s5)
  a3040e:	00c4f863          	bgeu	s1,a2,a3041e <LzmaDec_DecodeReal2+0xd52>
  a30412:	00074303          	lbu	t1,0(a4)
  a30416:	04a2                	slli	s1,s1,0x8
  a30418:	0705                	addi	a4,a4,1
  a3041a:	10f3279b          	orshf	a5,t1,a5,sll,8
  a3041e:	00b4d313          	srli	t1,s1,0xb
  a30422:	03230333          	mul	t1,t1,s2
  a30426:	0e67fc63          	bgeu	a5,t1,a3051e <LzmaDec_DecodeReal2+0xe52>
  a3042a:	412804b3          	sub	s1,a6,s2
  a3042e:	4a99091b          	addshf	s2,s2,s1,srl,5
  a30432:	012a9023          	sh	s2,0(s5)
  a30436:	0689                	addi	a3,a3,2
  a30438:	02df8a9b          	addshf	s5,t6,a3,sll,1
  a3043c:	000ad903          	lhu	s2,0(s5)
  a30440:	00c37763          	bgeu	t1,a2,a3044e <LzmaDec_DecodeReal2+0xd82>
  a30444:	2304                	lbu	s1,0(a4)
  a30446:	0322                	slli	t1,t1,0x8
  a30448:	0705                	addi	a4,a4,1
  a3044a:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a3044e:	00b35493          	srli	s1,t1,0xb
  a30452:	032484b3          	mul	s1,s1,s2
  a30456:	0c97fe63          	bgeu	a5,s1,a30532 <LzmaDec_DecodeReal2+0xe66>
  a3045a:	41280333          	sub	t1,a6,s2
  a3045e:	4a69091b          	addshf	s2,s2,t1,srl,5
  a30462:	012a9023          	sh	s2,0(s5)
  a30466:	0691                	addi	a3,a3,4
  a30468:	02df8a9b          	addshf	s5,t6,a3,sll,1
  a3046c:	000ad303          	lhu	t1,0(s5)
  a30470:	00c4f863          	bgeu	s1,a2,a30480 <LzmaDec_DecodeReal2+0xdb4>
  a30474:	00074903          	lbu	s2,0(a4)
  a30478:	04a2                	slli	s1,s1,0x8
  a3047a:	0705                	addi	a4,a4,1
  a3047c:	10f9279b          	orshf	a5,s2,a5,sll,8
  a30480:	00b4d913          	srli	s2,s1,0xb
  a30484:	02690933          	mul	s2,s2,t1
  a30488:	0b27fe63          	bgeu	a5,s2,a30544 <LzmaDec_DecodeReal2+0xe78>
  a3048c:	406804b3          	sub	s1,a6,t1
  a30490:	4a93031b          	addshf	t1,t1,s1,srl,5
  a30494:	006a9023          	sh	t1,0(s5)
  a30498:	16e1                	addi	a3,a3,-8
  a3049a:	8ec9                	or	a3,a3,a0
  a3049c:	557d                	li	a0,-1
  a3049e:	e6a691e3          	bne	a3,a0,a30300 <LzmaDec_DecodeReal2+0xc34>
  a304a2:	1f51                	addi	t5,t5,-12
  a304a4:	11200893          	li	a7,274
  a304a8:	010006b7          	lui	a3,0x1000
  a304ac:	00d97763          	bgeu	s2,a3,a304ba <LzmaDec_DecodeReal2+0xdee>
  a304b0:	2314                	lbu	a3,0(a4)
  a304b2:	0922                	slli	s2,s2,0x8
  a304b4:	0705                	addi	a4,a4,1
  a304b6:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a304ba:	02fe2223          	sw	a5,36(t3)
  a304be:	02ce2783          	lw	a5,44(t3)
  a304c2:	2008b513          	sltiu	a0,a7,512
  a304c6:	00ee2e23          	sw	a4,28(t3)
  a304ca:	032e2023          	sw	s2,32(t3)
  a304ce:	051e2223          	sw	a7,68(t3)
  a304d2:	01de2c23          	sw	t4,24(t3)
  a304d6:	027e2423          	sw	t2,40(t3)
  a304da:	025e2823          	sw	t0,48(t3)
  a304de:	028e2a23          	sw	s0,52(t3)
  a304e2:	033e2c23          	sw	s3,56(t3)
  a304e6:	03ae2e23          	sw	s10,60(t3)
  a304ea:	05ee2023          	sw	t5,64(t3)
  a304ee:	00154513          	xori	a0,a0,1
  a304f2:	e799                	bnez	a5,a30500 <LzmaDec_DecodeReal2+0xe34>
  a304f4:	004e2783          	lw	a5,4(t3)
  a304f8:	00f3e463          	bltu	t2,a5,a30500 <LzmaDec_DecodeReal2+0xe34>
  a304fc:	02fe2623          	sw	a5,44(t3)
  a30500:	03010293          	addi	t0,sp,48
  a30504:	7fe2860b          	ldmia	{s0-s11},(t0)
  a30508:	6125                	addi	sp,sp,96
  a3050a:	8082                	ret
  a3050c:	4ad6969b          	subshf	a3,a3,a3,srl,5
  a30510:	8f85                	sub	a5,a5,s1
  a30512:	00df9123          	sh	a3,2(t6)
  a30516:	409904b3          	sub	s1,s2,s1
  a3051a:	468d                	li	a3,3
  a3051c:	b5ed                	j	a30406 <LzmaDec_DecodeReal2+0xd3a>
  a3051e:	4b29191b          	subshf	s2,s2,s2,srl,5
  a30522:	406787b3          	sub	a5,a5,t1
  a30526:	012a9023          	sh	s2,0(s5)
  a3052a:	0691                	addi	a3,a3,4 # 1000004 <_gp_+0x5cb7f0>
  a3052c:	40648333          	sub	t1,s1,t1
  a30530:	b721                	j	a30438 <LzmaDec_DecodeReal2+0xd6c>
  a30532:	4b29191b          	subshf	s2,s2,s2,srl,5
  a30536:	8f85                	sub	a5,a5,s1
  a30538:	012a9023          	sh	s2,0(s5)
  a3053c:	06a1                	addi	a3,a3,8
  a3053e:	409304b3          	sub	s1,t1,s1
  a30542:	b71d                	j	a30468 <LzmaDec_DecodeReal2+0xd9c>
  a30544:	4a63131b          	subshf	t1,t1,t1,srl,5
  a30548:	412787b3          	sub	a5,a5,s2
  a3054c:	006a9023          	sh	t1,0(s5)
  a30550:	41248933          	sub	s2,s1,s2
  a30554:	b799                	j	a3049a <LzmaDec_DecodeReal2+0xdce>
  a30556:	4f29                	li	t5,10
  a30558:	bb55                	j	a3030c <LzmaDec_DecodeReal2+0xc40>
  a3055a:	8d4e                	mv	s10,s3
  a3055c:	89a2                	mv	s3,s0
  a3055e:	8416                	mv	s0,t0
  a30560:	82aa                	mv	t0,a0
  a30562:	b845                	j	a2fe12 <LzmaDec_DecodeReal2+0x746>
  a30564:	00da0533          	add	a0,s4,a3
  a30568:	00054303          	lbu	t1,0(a0)
  a3056c:	0e85                	addi	t4,t4,1
  a3056e:	01da0533          	add	a0,s4,t4
  a30572:	fe650fa3          	sb	t1,-1(a0)
  a30576:	0685                	addi	a3,a3,1
  a30578:	00dc9363          	bne	s9,a3,a3057e <LzmaDec_DecodeReal2+0xeb2>
  a3057c:	4681                	li	a3,0
  a3057e:	fe9e93e3          	bne	t4,s1,a30564 <LzmaDec_DecodeReal2+0xe98>
  a30582:	c14ff06f          	j	a2f996 <LzmaDec_DecodeReal2+0x2ca>
  a30586:	4f2d                	li	t5,11
  a30588:	c0eff06f          	j	a2f996 <LzmaDec_DecodeReal2+0x2ca>

00a3058c <LzmaDec_Init>:
  a3058c:	11400793          	li	a5,276
  a30590:	00052c23          	sw	zero,24(a0)
  a30594:	04052623          	sw	zero,76(a0)
  a30598:	02052423          	sw	zero,40(a0)
  a3059c:	02052623          	sw	zero,44(a0)
  a305a0:	c17c                	sw	a5,68(a0)
  a305a2:	8082                	ret

00a305a4 <LzmaDec_DecodeToDic>:
  a305a4:	82d8                	push	{ra,s0-s11},-96
  a305a6:	0006a983          	lw	s3,0(a3)
  a305aa:	0006a023          	sw	zero,0(a3)
  a305ae:	00078023          	sb	zero,0(a5) # 1000000 <_gp_+0x5cb7ec>
  a305b2:	8dbe                	mv	s11,a5
  a305b4:	417c                	lw	a5,68(a0)
  a305b6:	8bba                	mv	s7,a4
  a305b8:	11200713          	li	a4,274
  a305bc:	842a                	mv	s0,a0
  a305be:	8b2e                	mv	s6,a1
  a305c0:	84b2                	mv	s1,a2
  a305c2:	8936                	mv	s2,a3
  a305c4:	08f77a63          	bgeu	a4,a5,a30658 <LzmaDec_DecodeToDic+0xb4>
  a305c8:	11400713          	li	a4,276
  a305cc:	0af76663          	bltu	a4,a5,a30678 <LzmaDec_DecodeToDic+0xd4>
  a305d0:	4711                	li	a4,4
  a305d2:	447c                	lw	a5,76(s0)
  a305d4:	0c098963          	beqz	s3,a306a6 <LzmaDec_DecodeToDic+0x102>
  a305d8:	0af77763          	bgeu	a4,a5,a30686 <LzmaDec_DecodeToDic+0xe2>
  a305dc:	05044703          	lbu	a4,80(s0)
  a305e0:	e34d                	bnez	a4,a30682 <LzmaDec_DecodeToDic+0xde>
  a305e2:	0537e1bb          	bltui	a5,5,a306a8 <LzmaDec_DecodeToDic+0x104>
  a305e6:	05244783          	lbu	a5,82(s0)
  a305ea:	05144703          	lbu	a4,81(s0)
  a305ee:	07c2                	slli	a5,a5,0x10
  a305f0:	30e7a79b          	orshf	a5,a5,a4,sll,24
  a305f4:	05444703          	lbu	a4,84(s0)
  a305f8:	8fd9                	or	a5,a5,a4
  a305fa:	05344703          	lbu	a4,83(s0)
  a305fe:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a30602:	5458                	lw	a4,44(s0)
  a30604:	d05c                	sw	a5,36(s0)
  a30606:	eb01                	bnez	a4,a30616 <LzmaDec_DecodeToDic+0x72>
  a30608:	5418                	lw	a4,40(s0)
  a3060a:	e711                	bnez	a4,a30616 <LzmaDec_DecodeToDic+0x72>
  a3060c:	bfff fbff 071f      	l.li	a4,0xbffffbff
  a30612:	06f76863          	bltu	a4,a5,a30682 <LzmaDec_DecodeToDic+0xde>
  a30616:	4078                	lw	a4,68(s0)
  a30618:	57fd                	li	a5,-1
  a3061a:	d01c                	sw	a5,32(s0)
  a3061c:	04042623          	sw	zero,76(s0)
  a30620:	11300793          	li	a5,275
  a30624:	02e7f863          	bgeu	a5,a4,a30654 <LzmaDec_DecodeToDic+0xb0>
  a30628:	201c                	lbu	a5,0(s0)
  a3062a:	3018                	lbu	a4,1(s0)
  a3062c:	4414                	lw	a3,8(s0)
  a3062e:	40000613          	li	a2,1024
  a30632:	973e                	add	a4,a4,a5
  a30634:	30000793          	li	a5,768
  a30638:	00e797b3          	sll	a5,a5,a4
  a3063c:	7c078793          	addi	a5,a5,1984
  a30640:	4701                	li	a4,0
  a30642:	06f76563          	bltu	a4,a5,a306ac <LzmaDec_DecodeToDic+0x108>
  a30646:	4785                	li	a5,1
  a30648:	dc5c                	sw	a5,60(s0)
  a3064a:	dc1c                	sw	a5,56(s0)
  a3064c:	d85c                	sw	a5,52(s0)
  a3064e:	d81c                	sw	a5,48(s0)
  a30650:	04042023          	sw	zero,64(s0)
  a30654:	04042223          	sw	zero,68(s0)
  a30658:	4c4d                	li	s8,19
  a3065a:	5d7d                	li	s10,-1
  a3065c:	05040a93          	addi	s5,s0,80
  a30660:	4074                	lw	a3,68(s0)
  a30662:	11200793          	li	a5,274
  a30666:	04f69b63          	bne	a3,a5,a306bc <LzmaDec_DecodeToDic+0x118>
  a3066a:	505c                	lw	a5,36(s0)
  a3066c:	eb99                	bnez	a5,a30682 <LzmaDec_DecodeToDic+0xde>
  a3066e:	4785                	li	a5,1
  a30670:	00fd8023          	sb	a5,0(s11)
  a30674:	4501                	li	a0,0
  a30676:	82d4                	popret	{ra,s0-s11},96
  a30678:	1ff00713          	li	a4,511
  a3067c:	452d                	li	a0,11
  a3067e:	fee78ce3          	beq	a5,a4,a30676 <LzmaDec_DecodeToDic+0xd2>
  a30682:	4505                	li	a0,1
  a30684:	bfcd                	j	a30676 <LzmaDec_DecodeToDic+0xd2>
  a30686:	00178693          	addi	a3,a5,1
  a3068a:	c474                	sw	a3,76(s0)
  a3068c:	0485                	addi	s1,s1,1
  a3068e:	fff4c683          	lbu	a3,-1(s1)
  a30692:	97a2                	add	a5,a5,s0
  a30694:	19fd                	addi	s3,s3,-1
  a30696:	04d78823          	sb	a3,80(a5)
  a3069a:	00092783          	lw	a5,0(s2)
  a3069e:	0785                	addi	a5,a5,1
  a306a0:	00f92023          	sw	a5,0(s2)
  a306a4:	b73d                	j	a305d2 <LzmaDec_DecodeToDic+0x2e>
  a306a6:	fb9d                	bnez	a5,a305dc <LzmaDec_DecodeToDic+0x38>
  a306a8:	478d                	li	a5,3
  a306aa:	b7d9                	j	a30670 <LzmaDec_DecodeToDic+0xcc>
  a306ac:	a292                	sh	a2,0(a3)
  a306ae:	0705                	addi	a4,a4,1
  a306b0:	0689                	addi	a3,a3,2
  a306b2:	bf41                	j	a30642 <LzmaDec_DecodeToDic+0x9e>
  a306b4:	409989b3          	sub	s3,s3,s1
  a306b8:	84b6                	mv	s1,a3
  a306ba:	b75d                	j	a30660 <LzmaDec_DecodeToDic+0xbc>
  a306bc:	c699                	beqz	a3,a306ca <LzmaDec_DecodeToDic+0x126>
  a306be:	4c1c                	lw	a5,24(s0)
  a306c0:	40fb0733          	sub	a4,s6,a5
  a306c4:	00d77d63          	bgeu	a4,a3,a306de <LzmaDec_DecodeToDic+0x13a>
  a306c8:	ef01                	bnez	a4,a306e0 <LzmaDec_DecodeToDic+0x13c>
  a306ca:	4c1c                	lw	a5,24(s0)
  a306cc:	0767e163          	bltu	a5,s6,a3072e <LzmaDec_DecodeToDic+0x18a>
  a306d0:	407c                	lw	a5,68(s0)
  a306d2:	1a079a63          	bnez	a5,a30886 <LzmaDec_DecodeToDic+0x2e2>
  a306d6:	505c                	lw	a5,36(s0)
  a306d8:	e7b9                	bnez	a5,a30726 <LzmaDec_DecodeToDic+0x182>
  a306da:	4791                	li	a5,4
  a306dc:	bf51                	j	a30670 <LzmaDec_DecodeToDic+0xcc>
  a306de:	8736                	mv	a4,a3
  a306e0:	544c                	lw	a1,44(s0)
  a306e2:	5410                	lw	a2,40(s0)
  a306e4:	e599                	bnez	a1,a306f2 <LzmaDec_DecodeToDic+0x14e>
  a306e6:	404c                	lw	a1,4(s0)
  a306e8:	40c58533          	sub	a0,a1,a2
  a306ec:	00a76363          	bltu	a4,a0,a306f2 <LzmaDec_DecodeToDic+0x14e>
  a306f0:	d44c                	sw	a1,44(s0)
  a306f2:	963a                	add	a2,a2,a4
  a306f4:	d410                	sw	a2,40(s0)
  a306f6:	580c                	lw	a1,48(s0)
  a306f8:	4810                	lw	a2,16(s0)
  a306fa:	01442803          	lw	a6,20(s0)
  a306fe:	8e99                	sub	a3,a3,a4
  a30700:	c074                	sw	a3,68(s0)
  a30702:	973e                	add	a4,a4,a5
  a30704:	40b78533          	sub	a0,a5,a1
  a30708:	4681                	li	a3,0
  a3070a:	00b7f363          	bgeu	a5,a1,a30710 <LzmaDec_DecodeToDic+0x16c>
  a3070e:	86c2                	mv	a3,a6
  a30710:	96b2                	add	a3,a3,a2
  a30712:	96aa                	add	a3,a3,a0
  a30714:	2288                	lbu	a0,0(a3)
  a30716:	00f606b3          	add	a3,a2,a5
  a3071a:	0785                	addi	a5,a5,1
  a3071c:	a288                	sb	a0,0(a3)
  a3071e:	fee793e3          	bne	a5,a4,a30704 <LzmaDec_DecodeToDic+0x160>
  a30722:	cc1c                	sw	a5,24(s0)
  a30724:	b75d                	j	a306ca <LzmaDec_DecodeToDic+0x126>
  a30726:	040b9863          	bnez	s7,a30776 <LzmaDec_DecodeToDic+0x1d2>
  a3072a:	4789                	li	a5,2
  a3072c:	b791                	j	a30670 <LzmaDec_DecodeToDic+0xcc>
  a3072e:	4c81                	li	s9,0
  a30730:	4478                	lw	a4,76(s0)
  a30732:	10071f63          	bnez	a4,a30850 <LzmaDec_DecodeToDic+0x2ac>
  a30736:	013c7463          	bgeu	s8,s3,a3073e <LzmaDec_DecodeToDic+0x19a>
  a3073a:	0a0c8163          	beqz	s9,a307dc <LzmaDec_DecodeToDic+0x238>
  a3073e:	01348a33          	add	s4,s1,s3
  a30742:	0870                	addi	a2,sp,28
  a30744:	85a6                	mv	a1,s1
  a30746:	8522                	mv	a0,s0
  a30748:	ce52                	sw	s4,28(sp)
  a3074a:	b2bfe0ef          	jal	ra,a2f274 <LzmaDec_TryDummy>
  a3074e:	e515                	bnez	a0,a3077a <LzmaDec_DecodeToDic+0x1d6>
  a30750:	1429f0bb          	bgeui	s3,20,a307d2 <LzmaDec_DecodeToDic+0x22e>
  a30754:	00092783          	lw	a5,0(s2)
  a30758:	05040413          	addi	s0,s0,80
  a3075c:	97ce                	add	a5,a5,s3
  a3075e:	00f92023          	sw	a5,0(s2)
  a30762:	ff342e23          	sw	s3,-4(s0)
  a30766:	f49a01e3          	beq	s4,s1,a306a8 <LzmaDec_DecodeToDic+0x104>
  a3076a:	209c                	lbu	a5,0(s1)
  a3076c:	0405                	addi	s0,s0,1
  a3076e:	0485                	addi	s1,s1,1
  a30770:	fef40fa3          	sb	a5,-1(s0)
  a30774:	bfcd                	j	a30766 <LzmaDec_DecodeToDic+0x1c2>
  a30776:	4c85                	li	s9,1
  a30778:	bf65                	j	a30730 <LzmaDec_DecodeToDic+0x18c>
  a3077a:	4a72                	lw	s4,28(sp)
  a3077c:	409a0a33          	sub	s4,s4,s1
  a30780:	151a74bb          	bgeui	s4,21,a307d2 <LzmaDec_DecodeToDic+0x22e>
  a30784:	020c8a63          	beqz	s9,a307b8 <LzmaDec_DecodeToDic+0x214>
  a30788:	02050c3b          	beqi	a0,2,a307b8 <LzmaDec_DecodeToDic+0x214>
  a3078c:	00092783          	lw	a5,0(s2)
  a30790:	05040413          	addi	s0,s0,80
  a30794:	97d2                	add	a5,a5,s4
  a30796:	00f92023          	sw	a5,0(s2)
  a3079a:	ff442e23          	sw	s4,-4(s0)
  a3079e:	9a26                	add	s4,s4,s1
  a307a0:	01449663          	bne	s1,s4,a307ac <LzmaDec_DecodeToDic+0x208>
  a307a4:	4789                	li	a5,2
  a307a6:	00fd8023          	sb	a5,0(s11)
  a307aa:	bde1                	j	a30682 <LzmaDec_DecodeToDic+0xde>
  a307ac:	209c                	lbu	a5,0(s1)
  a307ae:	0405                	addi	s0,s0,1
  a307b0:	0485                	addi	s1,s1,1
  a307b2:	fef40fa3          	sb	a5,-1(s0)
  a307b6:	b7ed                	j	a307a0 <LzmaDec_DecodeToDic+0x1fc>
  a307b8:	8626                	mv	a2,s1
  a307ba:	cc44                	sw	s1,28(s0)
  a307bc:	85da                	mv	a1,s6
  a307be:	8522                	mv	a0,s0
  a307c0:	f0dfe0ef          	jal	ra,a2f6cc <LzmaDec_DecodeReal2>
  a307c4:	4c54                	lw	a3,28(s0)
  a307c6:	409684b3          	sub	s1,a3,s1
  a307ca:	01aa1e63          	bne	s4,s10,a307e6 <LzmaDec_DecodeToDic+0x242>
  a307ce:	0099fe63          	bgeu	s3,s1,a307ea <LzmaDec_DecodeToDic+0x246>
  a307d2:	1ff00793          	li	a5,511
  a307d6:	c07c                	sw	a5,68(s0)
  a307d8:	452d                	li	a0,11
  a307da:	bd71                	j	a30676 <LzmaDec_DecodeToDic+0xd2>
  a307dc:	fec98613          	addi	a2,s3,-20
  a307e0:	9626                	add	a2,a2,s1
  a307e2:	5a7d                	li	s4,-1
  a307e4:	bfd9                	j	a307ba <LzmaDec_DecodeToDic+0x216>
  a307e6:	ff4496e3          	bne	s1,s4,a307d2 <LzmaDec_DecodeToDic+0x22e>
  a307ea:	00092783          	lw	a5,0(s2)
  a307ee:	97a6                	add	a5,a5,s1
  a307f0:	00f92023          	sw	a5,0(s2)
  a307f4:	ec0500e3          	beqz	a0,a306b4 <LzmaDec_DecodeToDic+0x110>
  a307f8:	20000793          	li	a5,512
  a307fc:	c07c                	sw	a5,68(s0)
  a307fe:	b551                	j	a30682 <LzmaDec_DecodeToDic+0xde>
  a30800:	0a05                	addi	s4,s4,1
  a30802:	40ea06b3          	sub	a3,s4,a4
  a30806:	96a6                	add	a3,a3,s1
  a30808:	fff6c603          	lbu	a2,-1(a3)
  a3080c:	014406b3          	add	a3,s0,s4
  a30810:	04c687a3          	sb	a2,79(a3)
  a30814:	40ea06b3          	sub	a3,s4,a4
  a30818:	074c6a63          	bltu	s8,s4,a3088c <LzmaDec_DecodeToDic+0x2e8>
  a3081c:	ff36e2e3          	bltu	a3,s3,a30800 <LzmaDec_DecodeToDic+0x25c>
  a30820:	014a8733          	add	a4,s5,s4
  a30824:	0870                	addi	a2,sp,28
  a30826:	85d6                	mv	a1,s5
  a30828:	8522                	mv	a0,s0
  a3082a:	c636                	sw	a3,12(sp)
  a3082c:	ce3a                	sw	a4,28(sp)
  a3082e:	a47fe0ef          	jal	ra,a2f274 <LzmaDec_TryDummy>
  a30832:	46b2                	lw	a3,12(sp)
  a30834:	e105                	bnez	a0,a30854 <LzmaDec_DecodeToDic+0x2b0>
  a30836:	14ea773b          	bgeui	s4,20,a307d2 <LzmaDec_DecodeToDic+0x22e>
  a3083a:	05442623          	sw	s4,76(s0)
  a3083e:	00092783          	lw	a5,0(s2)
  a30842:	97b6                	add	a5,a5,a3
  a30844:	00f92023          	sw	a5,0(s2)
  a30848:	478d                	li	a5,3
  a3084a:	00fd8023          	sb	a5,0(s11)
  a3084e:	b525                	j	a30676 <LzmaDec_DecodeToDic+0xd2>
  a30850:	8a3a                	mv	s4,a4
  a30852:	b7c9                	j	a30814 <LzmaDec_DecodeToDic+0x270>
  a30854:	4a72                	lw	s4,28(sp)
  a30856:	4474                	lw	a3,76(s0)
  a30858:	415a0a33          	sub	s4,s4,s5
  a3085c:	f6da6be3          	bltu	s4,a3,a307d2 <LzmaDec_DecodeToDic+0x22e>
  a30860:	020c8963          	beqz	s9,a30892 <LzmaDec_DecodeToDic+0x2ee>
  a30864:	4709                	li	a4,2
  a30866:	02e50663          	beq	a0,a4,a30892 <LzmaDec_DecodeToDic+0x2ee>
  a3086a:	00092783          	lw	a5,0(s2)
  a3086e:	97d2                	add	a5,a5,s4
  a30870:	8f95                	sub	a5,a5,a3
  a30872:	00f92023          	sw	a5,0(s2)
  a30876:	05442623          	sw	s4,76(s0)
  a3087a:	00ed8023          	sb	a4,0(s11)
  a3087e:	b511                	j	a30682 <LzmaDec_DecodeToDic+0xde>
  a30880:	03478a63          	beq	a5,s4,a308b4 <LzmaDec_DecodeToDic+0x310>
  a30884:	b7b9                	j	a307d2 <LzmaDec_DecodeToDic+0x22e>
  a30886:	ea0b82e3          	beqz	s7,a3072a <LzmaDec_DecodeToDic+0x186>
  a3088a:	bf29                	j	a307a4 <LzmaDec_DecodeToDic+0x200>
  a3088c:	f80c9ae3          	bnez	s9,a30820 <LzmaDec_DecodeToDic+0x27c>
  a30890:	5a7d                	li	s4,-1
  a30892:	01542e23          	sw	s5,28(s0)
  a30896:	8656                	mv	a2,s5
  a30898:	85da                	mv	a1,s6
  a3089a:	8522                	mv	a0,s0
  a3089c:	e31fe0ef          	jal	ra,a2f6cc <LzmaDec_DecodeReal2>
  a308a0:	4c5c                	lw	a5,28(s0)
  a308a2:	4478                	lw	a4,76(s0)
  a308a4:	415787b3          	sub	a5,a5,s5
  a308a8:	fc0a5ce3          	bgez	s4,a30880 <LzmaDec_DecodeToDic+0x2dc>
  a308ac:	15c7f9bb          	bgeui	a5,21,a307d2 <LzmaDec_DecodeToDic+0x22e>
  a308b0:	f2e7e1e3          	bltu	a5,a4,a307d2 <LzmaDec_DecodeToDic+0x22e>
  a308b4:	8f99                	sub	a5,a5,a4
  a308b6:	00092703          	lw	a4,0(s2)
  a308ba:	00f486b3          	add	a3,s1,a5
  a308be:	40f989b3          	sub	s3,s3,a5
  a308c2:	97ba                	add	a5,a5,a4
  a308c4:	00f92023          	sw	a5,0(s2)
  a308c8:	04042623          	sw	zero,76(s0)
  a308cc:	de0506e3          	beqz	a0,a306b8 <LzmaDec_DecodeToDic+0x114>
  a308d0:	b725                	j	a307f8 <LzmaDec_DecodeToDic+0x254>

00a308d2 <LzmaDec_DecodeToBuf>:
  a308d2:	82c8                	push	{ra,s0-s10},-80
  a308d4:	00062903          	lw	s2,0(a2) # 1000000 <_gp_+0x5cb7ec>
  a308d8:	00072b03          	lw	s6,0(a4)
  a308dc:	00062023          	sw	zero,0(a2)
  a308e0:	842a                	mv	s0,a0
  a308e2:	8bae                	mv	s7,a1
  a308e4:	89b2                	mv	s3,a2
  a308e6:	8c36                	mv	s8,a3
  a308e8:	8a3a                	mv	s4,a4
  a308ea:	8d3e                	mv	s10,a5
  a308ec:	00072023          	sw	zero,0(a4)
  a308f0:	484c                	lw	a1,20(s0)
  a308f2:	4c1c                	lw	a5,24(s0)
  a308f4:	ce5a                	sw	s6,28(sp)
  a308f6:	00b79463          	bne	a5,a1,a308fe <LzmaDec_DecodeToBuf+0x2c>
  a308fa:	00042c23          	sw	zero,24(s0)
  a308fe:	01842a83          	lw	s5,24(s0)
  a30902:	4701                	li	a4,0
  a30904:	415587b3          	sub	a5,a1,s5
  a30908:	0127e563          	bltu	a5,s2,a30912 <LzmaDec_DecodeToBuf+0x40>
  a3090c:	015905b3          	add	a1,s2,s5
  a30910:	876a                	mv	a4,s10
  a30912:	87c2                	mv	a5,a6
  a30914:	8662                	mv	a2,s8
  a30916:	0874                	addi	a3,sp,28
  a30918:	8522                	mv	a0,s0
  a3091a:	c642                	sw	a6,12(sp)
  a3091c:	c89ff0ef          	jal	ra,a305a4 <LzmaDec_DecodeToDic>
  a30920:	4772                	lw	a4,28(sp)
  a30922:	000a2783          	lw	a5,0(s4)
  a30926:	8caa                	mv	s9,a0
  a30928:	855e                	mv	a0,s7
  a3092a:	97ba                	add	a5,a5,a4
  a3092c:	00fa2023          	sw	a5,0(s4)
  a30930:	4c04                	lw	s1,24(s0)
  a30932:	480c                	lw	a1,16(s0)
  a30934:	9c3a                	add	s8,s8,a4
  a30936:	415484b3          	sub	s1,s1,s5
  a3093a:	8626                	mv	a2,s1
  a3093c:	95d6                	add	a1,a1,s5
  a3093e:	40eb0b33          	sub	s6,s6,a4
  a30942:	910f80ef          	jal	ra,a28a52 <memcpy>
  a30946:	0009a783          	lw	a5,0(s3)
  a3094a:	9ba6                	add	s7,s7,s1
  a3094c:	40990933          	sub	s2,s2,s1
  a30950:	97a6                	add	a5,a5,s1
  a30952:	00f9a023          	sw	a5,0(s3)
  a30956:	000c9663          	bnez	s9,a30962 <LzmaDec_DecodeToBuf+0x90>
  a3095a:	c481                	beqz	s1,a30962 <LzmaDec_DecodeToBuf+0x90>
  a3095c:	4832                	lw	a6,12(sp)
  a3095e:	f80919e3          	bnez	s2,a308f0 <LzmaDec_DecodeToBuf+0x1e>
  a30962:	8566                	mv	a0,s9
  a30964:	82c4                	popret	{ra,s0-s10},80

00a30966 <LzmaDec_FreeProbs>:
  a30966:	8028                	push	{ra,s0},-16
  a30968:	842a                	mv	s0,a0
  a3096a:	41dc                	lw	a5,4(a1)
  a3096c:	852e                	mv	a0,a1
  a3096e:	440c                	lw	a1,8(s0)
  a30970:	9782                	jalr	a5
  a30972:	00042423          	sw	zero,8(s0)
  a30976:	8024                	popret	{ra,s0},16

00a30978 <LzmaDec_AllocateProbs2.isra.2>:
  a30978:	8048                	push	{ra,s0-s2},-16
  a3097a:	451c                	lw	a5,8(a0)
  a3097c:	962e                	add	a2,a2,a1
  a3097e:	30000493          	li	s1,768
  a30982:	00c494b3          	sll	s1,s1,a2
  a30986:	842a                	mv	s0,a0
  a30988:	7c048493          	addi	s1,s1,1984
  a3098c:	c789                	beqz	a5,a30996 <LzmaDec_AllocateProbs2.isra.2+0x1e>
  a3098e:	453c                	lw	a5,72(a0)
  a30990:	4501                	li	a0,0
  a30992:	02f48863          	beq	s1,a5,a309c2 <LzmaDec_AllocateProbs2.isra.2+0x4a>
  a30996:	85b6                	mv	a1,a3
  a30998:	8522                	mv	a0,s0
  a3099a:	8936                	mv	s2,a3
  a3099c:	fcbff0ef          	jal	ra,a30966 <LzmaDec_FreeProbs>
  a309a0:	00092783          	lw	a5,0(s2)
  a309a4:	00149593          	slli	a1,s1,0x1
  a309a8:	854a                	mv	a0,s2
  a309aa:	9782                	jalr	a5
  a309ac:	87aa                	mv	a5,a0
  a309ae:	c408                	sw	a0,8(s0)
  a309b0:	4509                	li	a0,2
  a309b2:	cb81                	beqz	a5,a309c2 <LzmaDec_AllocateProbs2.isra.2+0x4a>
  a309b4:	0000 0d00 051f      	l.li	a0,0xd00
  a309ba:	97aa                	add	a5,a5,a0
  a309bc:	c45c                	sw	a5,12(s0)
  a309be:	c424                	sw	s1,72(s0)
  a309c0:	4501                	li	a0,0
  a309c2:	8044                	popret	{ra,s0-s2},16

00a309c4 <LzmaProps_Decode>:
  a309c4:	0506723b          	bgeui	a2,5,a309cc <LzmaProps_Decode+0x8>
  a309c8:	4511                	li	a0,4
  a309ca:	8082                	ret
  a309cc:	21b8                	lbu	a4,2(a1)
  a309ce:	319c                	lbu	a5,1(a1)
  a309d0:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a309d4:	31b8                	lbu	a4,3(a1)
  a309d6:	20e7a79b          	orshf	a5,a5,a4,sll,16
  a309da:	21d8                	lbu	a4,4(a1)
  a309dc:	30e7a79b          	orshf	a5,a5,a4,sll,24
  a309e0:	6705                	lui	a4,0x1
  a309e2:	00e7f363          	bgeu	a5,a4,a309e8 <LzmaProps_Decode+0x24>
  a309e6:	6785                	lui	a5,0x1
  a309e8:	c15c                	sw	a5,4(a0)
  a309ea:	219c                	lbu	a5,0(a1)
  a309ec:	e1f7f73b          	bgeui	a5,225,a309c8 <LzmaProps_Decode+0x4>
  a309f0:	46a5                	li	a3,9
  a309f2:	02d7f733          	remu	a4,a5,a3
  a309f6:	a118                	sb	a4,0(a0)
  a309f8:	02d00713          	li	a4,45
  a309fc:	02e7d733          	divu	a4,a5,a4
  a30a00:	02d7d7b3          	divu	a5,a5,a3
  a30a04:	a138                	sb	a4,2(a0)
  a30a06:	4715                	li	a4,5
  a30a08:	02e7f7b3          	remu	a5,a5,a4
  a30a0c:	b11c                	sb	a5,1(a0)
  a30a0e:	4501                	li	a0,0
  a30a10:	8082                	ret

00a30a12 <LzmaDec_AllocateProbs>:
  a30a12:	8228                	push	{ra,s0},-48
  a30a14:	842a                	mv	s0,a0
  a30a16:	0828                	addi	a0,sp,24
  a30a18:	c636                	sw	a3,12(sp)
  a30a1a:	fabff0ef          	jal	ra,a309c4 <LzmaProps_Decode>
  a30a1e:	46b2                	lw	a3,12(sp)
  a30a20:	ed09                	bnez	a0,a30a3a <LzmaDec_AllocateProbs+0x28>
  a30a22:	01914603          	lbu	a2,25(sp)
  a30a26:	01814583          	lbu	a1,24(sp)
  a30a2a:	8522                	mv	a0,s0
  a30a2c:	f4dff0ef          	jal	ra,a30978 <LzmaDec_AllocateProbs2.isra.2>
  a30a30:	e509                	bnez	a0,a30a3a <LzmaDec_AllocateProbs+0x28>
  a30a32:	47e2                	lw	a5,24(sp)
  a30a34:	c01c                	sw	a5,0(s0)
  a30a36:	47f2                	lw	a5,28(sp)
  a30a38:	c05c                	sw	a5,4(s0)
  a30a3a:	8224                	popret	{ra,s0},48

00a30a3c <SecMemcpyError>:
  a30a3c:	04b05b63          	blez	a1,a30a92 <SecMemcpyError+0x56>
  a30a40:	87aa                	mv	a5,a0
  a30a42:	4859                	li	a6,22
  a30a44:	c929                	beqz	a0,a30a96 <SecMemcpyError+0x5a>
  a30a46:	8018                	push	{ra},-16
  a30a48:	8732                	mv	a4,a2
  a30a4a:	862e                	mv	a2,a1
  a30a4c:	eb01                	bnez	a4,a30a5c <SecMemcpyError+0x20>
  a30a4e:	4581                	li	a1,0
  a30a50:	f55f70ef          	jal	ra,a289a4 <memset>
  a30a54:	09600813          	li	a6,150
  a30a58:	8542                	mv	a0,a6
  a30a5a:	8014                	popret	{ra},16
  a30a5c:	00d5f863          	bgeu	a1,a3,a30a6c <SecMemcpyError+0x30>
  a30a60:	4581                	li	a1,0
  a30a62:	f43f70ef          	jal	ra,a289a4 <memset>
  a30a66:	0a200813          	li	a6,162
  a30a6a:	b7fd                	j	a30a58 <SecMemcpyError+0x1c>
  a30a6c:	00a77663          	bgeu	a4,a0,a30a78 <SecMemcpyError+0x3c>
  a30a70:	00d705b3          	add	a1,a4,a3
  a30a74:	00b56863          	bltu	a0,a1,a30a84 <SecMemcpyError+0x48>
  a30a78:	4801                	li	a6,0
  a30a7a:	fce7ffe3          	bgeu	a5,a4,a30a58 <SecMemcpyError+0x1c>
  a30a7e:	96be                	add	a3,a3,a5
  a30a80:	fcd77ce3          	bgeu	a4,a3,a30a58 <SecMemcpyError+0x1c>
  a30a84:	4581                	li	a1,0
  a30a86:	853e                	mv	a0,a5
  a30a88:	f1df70ef          	jal	ra,a289a4 <memset>
  a30a8c:	0b600813          	li	a6,182
  a30a90:	b7e1                	j	a30a58 <SecMemcpyError+0x1c>
  a30a92:	02200813          	li	a6,34
  a30a96:	8542                	mv	a0,a6
  a30a98:	8082                	ret

00a30a9a <memcpy_s>:
  a30a9a:	02d5e363          	bltu	a1,a3,a30ac0 <memcpy_s+0x26>
  a30a9e:	c10d                	beqz	a0,a30ac0 <memcpy_s+0x26>
  a30aa0:	c205                	beqz	a2,a30ac0 <memcpy_s+0x26>
  a30aa2:	0005cf63          	bltz	a1,a30ac0 <memcpy_s+0x26>
  a30aa6:	ce89                	beqz	a3,a30ac0 <memcpy_s+0x26>
  a30aa8:	00a67663          	bgeu	a2,a0,a30ab4 <memcpy_s+0x1a>
  a30aac:	00d607b3          	add	a5,a2,a3
  a30ab0:	00f57a63          	bgeu	a0,a5,a30ac4 <memcpy_s+0x2a>
  a30ab4:	00c57663          	bgeu	a0,a2,a30ac0 <memcpy_s+0x26>
  a30ab8:	00d507b3          	add	a5,a0,a3
  a30abc:	00f67463          	bgeu	a2,a5,a30ac4 <memcpy_s+0x2a>
  a30ac0:	f7dff06f          	j	a30a3c <SecMemcpyError>
  a30ac4:	8018                	push	{ra},-16
  a30ac6:	85b2                	mv	a1,a2
  a30ac8:	8636                	mv	a2,a3
  a30aca:	f89f70ef          	jal	ra,a28a52 <memcpy>
  a30ace:	4501                	li	a0,0
  a30ad0:	8014                	popret	{ra},16

00a30ad2 <memmove_s>:
  a30ad2:	8028                	push	{ra,s0},-16
  a30ad4:	02200413          	li	s0,34
  a30ad8:	00b05c63          	blez	a1,a30af0 <memmove_s+0x1e>
  a30adc:	4459                	li	s0,22
  a30ade:	c909                	beqz	a0,a30af0 <memmove_s+0x1e>
  a30ae0:	87b2                	mv	a5,a2
  a30ae2:	862e                	mv	a2,a1
  a30ae4:	eb81                	bnez	a5,a30af4 <memmove_s+0x22>
  a30ae6:	4581                	li	a1,0
  a30ae8:	ebdf70ef          	jal	ra,a289a4 <memset>
  a30aec:	09600413          	li	s0,150
  a30af0:	8522                	mv	a0,s0
  a30af2:	8024                	popret	{ra,s0},16
  a30af4:	00d5f863          	bgeu	a1,a3,a30b04 <memmove_s+0x32>
  a30af8:	4581                	li	a1,0
  a30afa:	eabf70ef          	jal	ra,a289a4 <memset>
  a30afe:	0a200413          	li	s0,162
  a30b02:	b7fd                	j	a30af0 <memmove_s+0x1e>
  a30b04:	4401                	li	s0,0
  a30b06:	fef505e3          	beq	a0,a5,a30af0 <memmove_s+0x1e>
  a30b0a:	d2fd                	beqz	a3,a30af0 <memmove_s+0x1e>
  a30b0c:	8636                	mv	a2,a3
  a30b0e:	85be                	mv	a1,a5
  a30b10:	a3af80ef          	jal	ra,a28d4a <memmove>
  a30b14:	bff1                	j	a30af0 <memmove_s+0x1e>

00a30b16 <memset_s>:
  a30b16:	87ae                	mv	a5,a1
  a30b18:	0205c363          	bltz	a1,a30b3e <memset_s+0x28>
  a30b1c:	8028                	push	{ra,s0},-16
  a30b1e:	842a                	mv	s0,a0
  a30b20:	c911                	beqz	a0,a30b34 <memset_s+0x1e>
  a30b22:	85b2                	mv	a1,a2
  a30b24:	8636                	mv	a2,a3
  a30b26:	02d7e063          	bltu	a5,a3,a30b46 <memset_s+0x30>
  a30b2a:	e7bf70ef          	jal	ra,a289a4 <memset>
  a30b2e:	4701                	li	a4,0
  a30b30:	853a                	mv	a0,a4
  a30b32:	8024                	popret	{ra,s0},16
  a30b34:	02200713          	li	a4,34
  a30b38:	dde5                	beqz	a1,a30b30 <memset_s+0x1a>
  a30b3a:	4759                	li	a4,22
  a30b3c:	bfd5                	j	a30b30 <memset_s+0x1a>
  a30b3e:	02200713          	li	a4,34
  a30b42:	853a                	mv	a0,a4
  a30b44:	8082                	ret
  a30b46:	02200713          	li	a4,34
  a30b4a:	d3fd                	beqz	a5,a30b30 <memset_s+0x1a>
  a30b4c:	863e                	mv	a2,a5
  a30b4e:	e57f70ef          	jal	ra,a289a4 <memset>
  a30b52:	0a200713          	li	a4,162
  a30b56:	bfe9                	j	a30b30 <memset_s+0x1a>

00a30b58 <SecWriteMultiChar>:
  a30b58:	8732                	mv	a4,a2
  a30b5a:	00e04663          	bgtz	a4,a30b66 <SecWriteMultiChar+0xe>
  a30b5e:	429c                	lw	a5,0(a3)
  a30b60:	963e                	add	a2,a2,a5
  a30b62:	c290                	sw	a2,0(a3)
  a30b64:	8082                	ret
  a30b66:	411c                	lw	a5,0(a0)
  a30b68:	17fd                	addi	a5,a5,-1 # fff <ccause+0x3d>
  a30b6a:	c11c                	sw	a5,0(a0)
  a30b6c:	0007d563          	bgez	a5,a30b76 <SecWriteMultiChar+0x1e>
  a30b70:	57fd                	li	a5,-1
  a30b72:	c29c                	sw	a5,0(a3)
  a30b74:	8082                	ret
  a30b76:	415c                	lw	a5,4(a0)
  a30b78:	177d                	addi	a4,a4,-1 # fff <ccause+0x3d>
  a30b7a:	a38c                	sb	a1,0(a5)
  a30b7c:	415c                	lw	a5,4(a0)
  a30b7e:	0785                	addi	a5,a5,1
  a30b80:	c15c                	sw	a5,4(a0)
  a30b82:	bfe1                	j	a30b5a <SecWriteMultiChar+0x2>

00a30b84 <SecOutput>:
  a30b84:	9fd8                	push	{ra,s0-s11},-560
  a30b86:	00a34ab7          	lui	s5,0xa34
  a30b8a:	cc4a8793          	addi	a5,s5,-828 # a33cc4 <g_itoaUpperDigits>
  a30b8e:	711d                	addi	sp,sp,-96
  a30b90:	cc3e                	sw	a5,24(sp)
  a30b92:	00a34b37          	lui	s6,0xa34
  a30b96:	47a9                	li	a5,10
  a30b98:	8caa                	mv	s9,a0
  a30b9a:	8432                	mv	s0,a2
  a30b9c:	ce02                	sw	zero,28(sp)
  a30b9e:	d002                	sw	zero,32(sp)
  a30ba0:	d202                	sw	zero,36(sp)
  a30ba2:	d43e                	sw	a5,40(sp)
  a30ba4:	d602                	sw	zero,44(sp)
  a30ba6:	d802                	sw	zero,48(sp)
  a30ba8:	da02                	sw	zero,52(sp)
  a30baa:	dc02                	sw	zero,56(sp)
  a30bac:	de02                	sw	zero,60(sp)
  a30bae:	c082                	sw	zero,64(sp)
  a30bb0:	c282                	sw	zero,68(sp)
  a30bb2:	04011423          	sh	zero,72(sp)
  a30bb6:	ca02                	sw	zero,20(sp)
  a30bb8:	4701                	li	a4,0
  a30bba:	cc4a8a93          	addi	s5,s5,-828
  a30bbe:	00a3 3cd8 0b9f      	l.li	s7,0xa33cd8
  a30bc4:	c90b0b13          	addi	s6,s6,-880 # a33c90 <g_efuse_cfg+0x1418>
  a30bc8:	00a3 3fd4 0c1f      	l.li	s8,0xa33fd4
  a30bce:	00a3 3cb0 091f      	l.li	s2,0xa33cb0
  a30bd4:	219c                	lbu	a5,0(a1)
  a30bd6:	c781                	beqz	a5,a30bde <SecOutput+0x5a>
  a30bd8:	46d2                	lw	a3,20(sp)
  a30bda:	0006d963          	bgez	a3,a30bec <SecOutput+0x68>
  a30bde:	c319                	beqz	a4,a30be4 <SecOutput+0x60>
  a30be0:	0737163b          	bnei	a4,7,a30cb8 <SecOutput+0x134>
  a30be4:	4552                	lw	a0,20(sp)
  a30be6:	25010113          	addi	sp,sp,592
  a30bea:	80d4                	popret	{ra,s0-s11},64
  a30bec:	00fb86b3          	add	a3,s7,a5
  a30bf0:	2294                	lbu	a3,0(a3)
  a30bf2:	00158a13          	addi	s4,a1,1
  a30bf6:	08dbd6db          	muliadd	a3,s7,a3,9
  a30bfa:	96ba                	add	a3,a3,a4
  a30bfc:	1006c983          	lbu	s3,256(a3)
  a30c00:	0829fe3b          	bgeui	s3,8,a30cb8 <SecOutput+0x134>
  a30c04:	053b069b          	addshf	a3,s6,s3,sll,2
  a30c08:	4294                	lw	a3,0(a3)
  a30c0a:	8682                	jr	a3
  a30c0c:	000ca703          	lw	a4,0(s9)
  a30c10:	177d                	addi	a4,a4,-1
  a30c12:	00eca023          	sw	a4,0(s9)
  a30c16:	02074063          	bltz	a4,a30c36 <SecOutput+0xb2>
  a30c1a:	004ca703          	lw	a4,4(s9)
  a30c1e:	a31c                	sb	a5,0(a4)
  a30c20:	004ca783          	lw	a5,4(s9)
  a30c24:	0785                	addi	a5,a5,1
  a30c26:	00fca223          	sw	a5,4(s9)
  a30c2a:	47d2                	lw	a5,20(sp)
  a30c2c:	0785                	addi	a5,a5,1
  a30c2e:	ca3e                	sw	a5,20(sp)
  a30c30:	85d2                	mv	a1,s4
  a30c32:	874e                	mv	a4,s3
  a30c34:	b745                	j	a30bd4 <SecOutput+0x50>
  a30c36:	57fd                	li	a5,-1
  a30c38:	bfdd                	j	a30c2e <SecOutput+0xaa>
  a30c3a:	57fd                	li	a5,-1
  a30c3c:	c282                	sw	zero,68(sp)
  a30c3e:	d002                	sw	zero,32(sp)
  a30c40:	d602                	sw	zero,44(sp)
  a30c42:	d802                	sw	zero,48(sp)
  a30c44:	da3e                	sw	a5,52(sp)
  a30c46:	d202                	sw	zero,36(sp)
  a30c48:	dc02                	sw	zero,56(sp)
  a30c4a:	de02                	sw	zero,60(sp)
  a30c4c:	b7d5                	j	a30c30 <SecOutput+0xac>
  a30c4e:	02b00713          	li	a4,43
  a30c52:	02e78963          	beq	a5,a4,a30c84 <SecOutput+0x100>
  a30c56:	00f76a63          	bltu	a4,a5,a30c6a <SecOutput+0xe6>
  a30c5a:	2007883b          	beqi	a5,32,a30c7a <SecOutput+0xf6>
  a30c5e:	23f794bb          	bnei	a5,35,a30c30 <SecOutput+0xac>
  a30c62:	57b2                	lw	a5,44(sp)
  a30c64:	0807e793          	ori	a5,a5,128
  a30c68:	a821                	j	a30c80 <SecOutput+0xfc>
  a30c6a:	2d0788bb          	beqi	a5,45,a30c8c <SecOutput+0x108>
  a30c6e:	30f790bb          	bnei	a5,48,a30c30 <SecOutput+0xac>
  a30c72:	57b2                	lw	a5,44(sp)
  a30c74:	0087e793          	ori	a5,a5,8
  a30c78:	a021                	j	a30c80 <SecOutput+0xfc>
  a30c7a:	57b2                	lw	a5,44(sp)
  a30c7c:	0027e793          	ori	a5,a5,2
  a30c80:	d63e                	sw	a5,44(sp)
  a30c82:	b77d                	j	a30c30 <SecOutput+0xac>
  a30c84:	57b2                	lw	a5,44(sp)
  a30c86:	0017e793          	ori	a5,a5,1
  a30c8a:	bfdd                	j	a30c80 <SecOutput+0xfc>
  a30c8c:	57b2                	lw	a5,44(sp)
  a30c8e:	0047e793          	ori	a5,a5,4
  a30c92:	b7fd                	j	a30c80 <SecOutput+0xfc>
  a30c94:	2a0793bb          	bnei	a5,42,a30ca2 <SecOutput+0x11e>
  a30c98:	4014                	lw	a3,0(s0)
  a30c9a:	0411                	addi	s0,s0,4
  a30c9c:	d836                	sw	a3,48(sp)
  a30c9e:	4685                	li	a3,1
  a30ca0:	dc36                	sw	a3,56(sp)
  a30ca2:	56e2                	lw	a3,56(sp)
  a30ca4:	e695                	bnez	a3,a30cd0 <SecOutput+0x14c>
  a30ca6:	030701bb          	beqi	a4,3,a30cac <SecOutput+0x128>
  a30caa:	d802                	sw	zero,48(sp)
  a30cac:	56c2                	lw	a3,48(sp)
  a30cae:	0147 ae14 071f      	l.li	a4,0x147ae14
  a30cb4:	00d75463          	bge	a4,a3,a30cbc <SecOutput+0x138>
  a30cb8:	557d                	li	a0,-1
  a30cba:	b735                	j	a30be6 <SecOutput+0x62>
  a30cbc:	00269713          	slli	a4,a3,0x2
  a30cc0:	fd078793          	addi	a5,a5,-48
  a30cc4:	9736                	add	a4,a4,a3
  a30cc6:	9f81                	uxtb	a5
  a30cc8:	02e7879b          	addshf	a5,a5,a4,sll,1
  a30ccc:	d83e                	sw	a5,48(sp)
  a30cce:	b78d                	j	a30c30 <SecOutput+0xac>
  a30cd0:	57c2                	lw	a5,48(sp)
  a30cd2:	0007d963          	bgez	a5,a30ce4 <SecOutput+0x160>
  a30cd6:	5732                	lw	a4,44(sp)
  a30cd8:	40f007b3          	neg	a5,a5
  a30cdc:	d83e                	sw	a5,48(sp)
  a30cde:	00476713          	ori	a4,a4,4
  a30ce2:	d63a                	sw	a4,44(sp)
  a30ce4:	5742                	lw	a4,48(sp)
  a30ce6:	0ccc ccc8 079f      	l.li	a5,0xcccccc8
  a30cec:	f4e7d2e3          	bge	a5,a4,a30c30 <SecOutput+0xac>
  a30cf0:	b7e1                	j	a30cb8 <SecOutput+0x134>
  a30cf2:	da02                	sw	zero,52(sp)
  a30cf4:	bf35                	j	a30c30 <SecOutput+0xac>
  a30cf6:	2a0793bb          	bnei	a5,42,a30d04 <SecOutput+0x180>
  a30cfa:	4018                	lw	a4,0(s0)
  a30cfc:	0411                	addi	s0,s0,4
  a30cfe:	da3a                	sw	a4,52(sp)
  a30d00:	4705                	li	a4,1
  a30d02:	de3a                	sw	a4,60(sp)
  a30d04:	56f2                	lw	a3,60(sp)
  a30d06:	5752                	lw	a4,52(sp)
  a30d08:	e285                	bnez	a3,a30d28 <SecOutput+0x1a4>
  a30d0a:	0147 ae14 069f      	l.li	a3,0x147ae14
  a30d10:	fae6c4e3          	blt	a3,a4,a30cb8 <SecOutput+0x134>
  a30d14:	00271693          	slli	a3,a4,0x2
  a30d18:	fd078793          	addi	a5,a5,-48
  a30d1c:	9736                	add	a4,a4,a3
  a30d1e:	9f81                	uxtb	a5
  a30d20:	02e7879b          	addshf	a5,a5,a4,sll,1
  a30d24:	da3e                	sw	a5,52(sp)
  a30d26:	b729                	j	a30c30 <SecOutput+0xac>
  a30d28:	00075463          	bgez	a4,a30d30 <SecOutput+0x1ac>
  a30d2c:	57fd                	li	a5,-1
  a30d2e:	da3e                	sw	a5,52(sp)
  a30d30:	5752                	lw	a4,52(sp)
  a30d32:	bf55                	j	a30ce6 <SecOutput+0x162>
  a30d34:	06a00713          	li	a4,106
  a30d38:	08e78763          	beq	a5,a4,a30dc6 <SecOutput+0x242>
  a30d3c:	04f76063          	bltu	a4,a5,a30d7c <SecOutput+0x1f8>
  a30d40:	04c00713          	li	a4,76
  a30d44:	04e78663          	beq	a5,a4,a30d90 <SecOutput+0x20c>
  a30d48:	00f76e63          	bltu	a4,a5,a30d64 <SecOutput+0x1e0>
  a30d4c:	49b7993b          	bnei	a5,73,a30c30 <SecOutput+0xac>
  a30d50:	319c                	lbu	a5,1(a1)
  a30d52:	36179fbb          	bnei	a5,54,a30dd0 <SecOutput+0x24c>
  a30d56:	21bc                	lbu	a5,2(a1)
  a30d58:	34279d3b          	bnei	a5,52,a30e0c <SecOutput+0x288>
  a30d5c:	00358a13          	addi	s4,a1,3
  a30d60:	6721                	lui	a4,0x8
  a30d62:	a091                	j	a30da6 <SecOutput+0x222>
  a30d64:	5a078fbb          	beqi	a5,90,a30da2 <SecOutput+0x21e>
  a30d68:	68b7923b          	bnei	a5,104,a30c30 <SecOutput+0xac>
  a30d6c:	3194                	lbu	a3,1(a1)
  a30d6e:	5732                	lw	a4,44(sp)
  a30d70:	0af69763          	bne	a3,a5,a30e1e <SecOutput+0x29a>
  a30d74:	00258a13          	addi	s4,a1,2
  a30d78:	6789                	lui	a5,0x2
  a30d7a:	a081                	j	a30dba <SecOutput+0x236>
  a30d7c:	07400713          	li	a4,116
  a30d80:	04e78663          	beq	a5,a4,a30dcc <SecOutput+0x248>
  a30d84:	00f76b63          	bltu	a4,a5,a30d9a <SecOutput+0x216>
  a30d88:	6c07893b          	beqi	a5,108,a30dac <SecOutput+0x228>
  a30d8c:	71a7993b          	bnei	a5,113,a30c30 <SecOutput+0xac>
  a30d90:	57b2                	lw	a5,44(sp)
  a30d92:	0000 1400 071f      	l.li	a4,0x1400
  a30d98:	a801                	j	a30da8 <SecOutput+0x224>
  a30d9a:	772782bb          	beqi	a5,119,a30e24 <SecOutput+0x2a0>
  a30d9e:	7aa794bb          	bnei	a5,122,a30c30 <SecOutput+0xac>
  a30da2:	00020737          	lui	a4,0x20
  a30da6:	57b2                	lw	a5,44(sp)
  a30da8:	8fd9                	or	a5,a5,a4
  a30daa:	bdd9                	j	a30c80 <SecOutput+0xfc>
  a30dac:	3194                	lbu	a3,1(a1)
  a30dae:	5732                	lw	a4,44(sp)
  a30db0:	00f69763          	bne	a3,a5,a30dbe <SecOutput+0x23a>
  a30db4:	00258a13          	addi	s4,a1,2
  a30db8:	6785                	lui	a5,0x1
  a30dba:	8f5d                	or	a4,a4,a5
  a30dbc:	a019                	j	a30dc2 <SecOutput+0x23e>
  a30dbe:	01076713          	ori	a4,a4,16
  a30dc2:	d63a                	sw	a4,44(sp)
  a30dc4:	b5b5                	j	a30c30 <SecOutput+0xac>
  a30dc6:	00040737          	lui	a4,0x40
  a30dca:	bff1                	j	a30da6 <SecOutput+0x222>
  a30dcc:	6741                	lui	a4,0x10
  a30dce:	bfe1                	j	a30da6 <SecOutput+0x222>
  a30dd0:	3307963b          	bnei	a5,51,a30de8 <SecOutput+0x264>
  a30dd4:	21bc                	lbu	a5,2(a1)
  a30dd6:	32079dbb          	bnei	a5,50,a30e0c <SecOutput+0x288>
  a30dda:	57b2                	lw	a5,44(sp)
  a30ddc:	7761                	lui	a4,0xffff8
  a30dde:	177d                	addi	a4,a4,-1 # ffff7fff <_gp_+0xff5c37eb>
  a30de0:	00358a13          	addi	s4,a1,3
  a30de4:	8ff9                	and	a5,a5,a4
  a30de6:	bd69                	j	a30c80 <SecOutput+0xfc>
  a30de8:	f9c78713          	addi	a4,a5,-100 # f9c <__bss_size__+0x994>
  a30dec:	0ff77693          	andi	a3,a4,255
  a30df0:	1206f53b          	bgeui	a3,18,a30e04 <SecOutput+0x280>
  a30df4:	0002 0821 071f      	l.li	a4,0x20821
  a30dfa:	00d75733          	srl	a4,a4,a3
  a30dfe:	8b05                	andi	a4,a4,1
  a30e00:	e20718e3          	bnez	a4,a30c30 <SecOutput+0xac>
  a30e04:	0df7f793          	andi	a5,a5,223
  a30e08:	58878a3b          	beqi	a5,88,a30c30 <SecOutput+0xac>
  a30e0c:	000ca783          	lw	a5,0(s9)
  a30e10:	17fd                	addi	a5,a5,-1
  a30e12:	00fca023          	sw	a5,0(s9)
  a30e16:	0007dc63          	bgez	a5,a30e2e <SecOutput+0x2aa>
  a30e1a:	57fd                	li	a5,-1
  a30e1c:	a02d                	j	a30e46 <SecOutput+0x2c2>
  a30e1e:	02076713          	ori	a4,a4,32
  a30e22:	b745                	j	a30dc2 <SecOutput+0x23e>
  a30e24:	57b2                	lw	a5,44(sp)
  a30e26:	0000 0800 071f      	l.li	a4,0x800
  a30e2c:	bfb5                	j	a30da8 <SecOutput+0x224>
  a30e2e:	004ca783          	lw	a5,4(s9)
  a30e32:	04900713          	li	a4,73
  a30e36:	a398                	sb	a4,0(a5)
  a30e38:	004ca783          	lw	a5,4(s9)
  a30e3c:	0785                	addi	a5,a5,1
  a30e3e:	00fca223          	sw	a5,4(s9)
  a30e42:	47d2                	lw	a5,20(sp)
  a30e44:	0785                	addi	a5,a5,1
  a30e46:	ca3e                	sw	a5,20(sp)
  a30e48:	4981                	li	s3,0
  a30e4a:	b3dd                	j	a30c30 <SecOutput+0xac>
  a30e4c:	6847f23b          	bgeui	a5,104,a30f54 <SecOutput+0x3d0>
  a30e50:	06500713          	li	a4,101
  a30e54:	e6e7f2e3          	bgeu	a5,a4,a30cb8 <SecOutput+0x134>
  a30e58:	05300713          	li	a4,83
  a30e5c:	1ae78963          	beq	a5,a4,a3100e <SecOutput+0x48a>
  a30e60:	08f76f63          	bltu	a4,a5,a30efe <SecOutput+0x37a>
  a30e64:	04300713          	li	a4,67
  a30e68:	14e78f63          	beq	a5,a4,a30fc6 <SecOutput+0x442>
  a30e6c:	00e7e663          	bltu	a5,a4,a30e78 <SecOutput+0x2f4>
  a30e70:	fbb78793          	addi	a5,a5,-69
  a30e74:	0397e13b          	bltui	a5,3,a30cb8 <SecOutput+0x134>
  a30e78:	5782                	lw	a5,32(sp)
  a30e7a:	5642                	lw	a2,48(sp)
  a30e7c:	8e1d                	sub	a2,a2,a5
  a30e7e:	4796                	lw	a5,68(sp)
  a30e80:	8e1d                	sub	a2,a2,a5
  a30e82:	57b2                	lw	a5,44(sp)
  a30e84:	c0b2                	sw	a2,64(sp)
  a30e86:	8bb1                	andi	a5,a5,12
  a30e88:	eb89                	bnez	a5,a30e9a <SecOutput+0x316>
  a30e8a:	00c05863          	blez	a2,a30e9a <SecOutput+0x316>
  a30e8e:	0854                	addi	a3,sp,20
  a30e90:	02000593          	li	a1,32
  a30e94:	8566                	mv	a0,s9
  a30e96:	cc3ff0ef          	jal	ra,a30b58 <SecWriteMultiChar>
  a30e9a:	4696                	lw	a3,68(sp)
  a30e9c:	00d05e63          	blez	a3,a30eb8 <SecOutput+0x334>
  a30ea0:	083c                	addi	a5,sp,24
  a30ea2:	00f68633          	add	a2,a3,a5
  a30ea6:	000ca703          	lw	a4,0(s9)
  a30eaa:	177d                	addi	a4,a4,-1
  a30eac:	00eca023          	sw	a4,0(s9)
  a30eb0:	4a075e63          	bgez	a4,a3136c <SecOutput+0x7e8>
  a30eb4:	57fd                	li	a5,-1
  a30eb6:	ca3e                	sw	a5,20(sp)
  a30eb8:	57b2                	lw	a5,44(sp)
  a30eba:	8bb1                	andi	a5,a5,12
  a30ebc:	080795bb          	bnei	a5,8,a30ed2 <SecOutput+0x34e>
  a30ec0:	4606                	lw	a2,64(sp)
  a30ec2:	00c05863          	blez	a2,a30ed2 <SecOutput+0x34e>
  a30ec6:	0854                	addi	a3,sp,20
  a30ec8:	03000593          	li	a1,48
  a30ecc:	8566                	mv	a0,s9
  a30ece:	c8bff0ef          	jal	ra,a30b58 <SecWriteMultiChar>
  a30ed2:	5792                	lw	a5,36(sp)
  a30ed4:	4a078c63          	beqz	a5,a3138c <SecOutput+0x808>
  a30ed8:	57fd                	li	a5,-1
  a30eda:	ca3e                	sw	a5,20(sp)
  a30edc:	47d2                	lw	a5,20(sp)
  a30ede:	d407c9e3          	bltz	a5,a30c30 <SecOutput+0xac>
  a30ee2:	57b2                	lw	a5,44(sp)
  a30ee4:	8b91                	andi	a5,a5,4
  a30ee6:	d40785e3          	beqz	a5,a30c30 <SecOutput+0xac>
  a30eea:	4606                	lw	a2,64(sp)
  a30eec:	d4c052e3          	blez	a2,a30c30 <SecOutput+0xac>
  a30ef0:	0854                	addi	a3,sp,20
  a30ef2:	02000593          	li	a1,32
  a30ef6:	8566                	mv	a0,s9
  a30ef8:	c61ff0ef          	jal	ra,a30b58 <SecWriteMultiChar>
  a30efc:	bb15                	j	a30c30 <SecOutput+0xac>
  a30efe:	06300713          	li	a4,99
  a30f02:	0ce78c63          	beq	a5,a4,a30fda <SecOutput+0x456>
  a30f06:	06f76163          	bltu	a4,a5,a30f68 <SecOutput+0x3e4>
  a30f0a:	58d79bbb          	bnei	a5,88,a30e78 <SecOutput+0x2f4>
  a30f0e:	4741                	li	a4,16
  a30f10:	d43a                	sw	a4,40(sp)
  a30f12:	cc4a                	sw	s2,24(sp)
  a30f14:	5732                	lw	a4,44(sp)
  a30f16:	585785bb          	beqi	a5,88,a3106c <SecOutput+0x4e8>
  a30f1a:	7057953b          	bnei	a5,112,a3106e <SecOutput+0x4ea>
  a30f1e:	0000 4090 079f      	l.li	a5,0x4090
  a30f24:	8f5d                	or	a4,a4,a5
  a30f26:	4789                	li	a5,2
  a30f28:	c2be                	sw	a5,68(sp)
  a30f2a:	77e1                	lui	a5,0xffff8
  a30f2c:	8307c793          	xori	a5,a5,-2000
  a30f30:	da02                	sw	zero,52(sp)
  a30f32:	d63a                	sw	a4,44(sp)
  a30f34:	04f11423          	sh	a5,72(sp)
  a30f38:	57b2                	lw	a5,44(sp)
  a30f3a:	6725                	lui	a4,0x9
  a30f3c:	8f7d                	and	a4,a4,a5
  a30f3e:	16070a63          	beqz	a4,a310b2 <SecOutput+0x52e>
  a30f42:	041d                	addi	s0,s0,7
  a30f44:	ff847793          	andi	a5,s0,-8
  a30f48:	00878413          	addi	s0,a5,8 # ffff8008 <_gp_+0xff5c37f4>
  a30f4c:	4384                	lw	s1,0(a5)
  a30f4e:	0047ad03          	lw	s10,4(a5)
  a30f52:	a245                	j	a310f2 <SecOutput+0x56e>
  a30f54:	07000713          	li	a4,112
  a30f58:	fae78be3          	beq	a5,a4,a30f0e <SecOutput+0x38a>
  a30f5c:	02f76363          	bltu	a4,a5,a30f82 <SecOutput+0x3fe>
  a30f60:	6907823b          	beqi	a5,105,a30f68 <SecOutput+0x3e4>
  a30f64:	6fc7953b          	bnei	a5,111,a30e78 <SecOutput+0x2f4>
  a30f68:	06900693          	li	a3,105
  a30f6c:	5732                	lw	a4,44(sp)
  a30f6e:	00d78663          	beq	a5,a3,a30f7a <SecOutput+0x3f6>
  a30f72:	10f6ed63          	bltu	a3,a5,a3108c <SecOutput+0x508>
  a30f76:	64f790bb          	bnei	a5,100,a30f38 <SecOutput+0x3b4>
  a30f7a:	04076713          	ori	a4,a4,64
  a30f7e:	d63a                	sw	a4,44(sp)
  a30f80:	aa11                	j	a31094 <SecOutput+0x510>
  a30f82:	75f789bb          	beqi	a5,117,a30f68 <SecOutput+0x3e4>
  a30f86:	78e7823b          	beqi	a5,120,a30f0e <SecOutput+0x38a>
  a30f8a:	73b79bbb          	bnei	a5,115,a30e78 <SecOutput+0x2f4>
  a30f8e:	57b2                	lw	a5,44(sp)
  a30f90:	4014                	lw	a3,0(s0)
  a30f92:	00440493          	addi	s1,s0,4
  a30f96:	ff77f713          	andi	a4,a5,-9
  a30f9a:	d63a                	sw	a4,44(sp)
  a30f9c:	0000 0810 071f      	l.li	a4,0x810
  a30fa2:	8ff9                	and	a5,a5,a4
  a30fa4:	ce36                	sw	a3,28(sp)
  a30fa6:	5752                	lw	a4,52(sp)
  a30fa8:	ebd9                	bnez	a5,a3103e <SecOutput+0x4ba>
  a30faa:	e689                	bnez	a3,a30fb4 <SecOutput+0x430>
  a30fac:	00a3 3fdc 079f      	l.li	a5,0xa33fdc
  a30fb2:	ce3e                	sw	a5,28(sp)
  a30fb4:	4572                	lw	a0,28(sp)
  a30fb6:	ff171bbb          	bnei	a4,-1,a31024 <SecOutput+0x4a0>
  a30fba:	d53f70ef          	jal	ra,a28d0c <strlen>
  a30fbe:	06055b63          	bgez	a0,a31034 <SecOutput+0x4b0>
  a30fc2:	4501                	li	a0,0
  a30fc4:	a885                	j	a31034 <SecOutput+0x4b0>
  a30fc6:	57b2                	lw	a5,44(sp)
  a30fc8:	6705                	lui	a4,0x1
  a30fca:	83070693          	addi	a3,a4,-2000 # 830 <__bss_size__+0x228>
  a30fce:	8efd                	and	a3,a3,a5
  a30fd0:	e689                	bnez	a3,a30fda <SecOutput+0x456>
  a30fd2:	80070713          	addi	a4,a4,-2048
  a30fd6:	8fd9                	or	a5,a5,a4
  a30fd8:	d63e                	sw	a5,44(sp)
  a30fda:	57b2                	lw	a5,44(sp)
  a30fdc:	4605                	li	a2,1
  a30fde:	d032                	sw	a2,32(sp)
  a30fe0:	ff77f593          	andi	a1,a5,-9
  a30fe4:	d62e                	sw	a1,44(sp)
  a30fe6:	0000 0810 059f      	l.li	a1,0x810
  a30fec:	8fed                	and	a5,a5,a1
  a30fee:	00440713          	addi	a4,s0,4
  a30ff2:	4014                	lw	a3,0(s0)
  a30ff4:	c799                	beqz	a5,a31002 <SecOutput+0x47e>
  a30ff6:	00fc                	addi	a5,sp,76
  a30ff8:	c6b6                	sw	a3,76(sp)
  a30ffa:	ce3e                	sw	a5,28(sp)
  a30ffc:	d232                	sw	a2,36(sp)
  a30ffe:	843a                	mv	s0,a4
  a31000:	bda5                	j	a30e78 <SecOutput+0x2f4>
  a31002:	00fc                	addi	a5,sp,76
  a31004:	04d10623          	sb	a3,76(sp)
  a31008:	ce3e                	sw	a5,28(sp)
  a3100a:	d202                	sw	zero,36(sp)
  a3100c:	bfcd                	j	a30ffe <SecOutput+0x47a>
  a3100e:	57b2                	lw	a5,44(sp)
  a31010:	6705                	lui	a4,0x1
  a31012:	83070693          	addi	a3,a4,-2000 # 830 <__bss_size__+0x228>
  a31016:	8efd                	and	a3,a3,a5
  a31018:	fabd                	bnez	a3,a30f8e <SecOutput+0x40a>
  a3101a:	80070713          	addi	a4,a4,-2048
  a3101e:	8fd9                	or	a5,a5,a4
  a31020:	d63e                	sw	a5,44(sp)
  a31022:	b7b5                	j	a30f8e <SecOutput+0x40a>
  a31024:	972a                	add	a4,a4,a0
  a31026:	87aa                	mv	a5,a0
  a31028:	00e78463          	beq	a5,a4,a31030 <SecOutput+0x4ac>
  a3102c:	2394                	lbu	a3,0(a5)
  a3102e:	e691                	bnez	a3,a3103a <SecOutput+0x4b6>
  a31030:	40a78533          	sub	a0,a5,a0
  a31034:	d02a                	sw	a0,32(sp)
  a31036:	8426                	mv	s0,s1
  a31038:	b581                	j	a30e78 <SecOutput+0x2f4>
  a3103a:	0785                	addi	a5,a5,1
  a3103c:	b7f5                	j	a31028 <SecOutput+0x4a4>
  a3103e:	4785                	li	a5,1
  a31040:	d23e                	sw	a5,36(sp)
  a31042:	e689                	bnez	a3,a3104c <SecOutput+0x4c8>
  a31044:	00a3 3fe4 079f      	l.li	a5,0xa33fe4
  a3104a:	ce3e                	sw	a5,28(sp)
  a3104c:	46f2                	lw	a3,28(sp)
  a3104e:	4781                	li	a5,0
  a31050:	00e78463          	beq	a5,a4,a31058 <SecOutput+0x4d4>
  a31054:	4290                	lw	a2,0(a3)
  a31056:	ea01                	bnez	a2,a31066 <SecOutput+0x4e2>
  a31058:	20000737          	lui	a4,0x20000
  a3105c:	00e7e363          	bltu	a5,a4,a31062 <SecOutput+0x4de>
  a31060:	4781                	li	a5,0
  a31062:	d03e                	sw	a5,32(sp)
  a31064:	bfc9                	j	a31036 <SecOutput+0x4b2>
  a31066:	0785                	addi	a5,a5,1
  a31068:	0691                	addi	a3,a3,4
  a3106a:	b7dd                	j	a31050 <SecOutput+0x4cc>
  a3106c:	cc56                	sw	s5,24(sp)
  a3106e:	08077713          	andi	a4,a4,128
  a31072:	ee070be3          	beqz	a4,a30f68 <SecOutput+0x3e4>
  a31076:	03000713          	li	a4,48
  a3107a:	04e10423          	sb	a4,72(sp)
  a3107e:	4762                	lw	a4,24(sp)
  a31080:	2b18                	lbu	a4,16(a4)
  a31082:	04e104a3          	sb	a4,73(sp)
  a31086:	4709                	li	a4,2
  a31088:	c2ba                	sw	a4,68(sp)
  a3108a:	bdf9                	j	a30f68 <SecOutput+0x3e4>
  a3108c:	6f07843b          	beqi	a5,111,a3109c <SecOutput+0x518>
  a31090:	75a79a3b          	bnei	a5,117,a30f38 <SecOutput+0x3b4>
  a31094:	47a9                	li	a5,10
  a31096:	d43e                	sw	a5,40(sp)
  a31098:	cc4a                	sw	s2,24(sp)
  a3109a:	bd79                	j	a30f38 <SecOutput+0x3b4>
  a3109c:	47a1                	li	a5,8
  a3109e:	d43e                	sw	a5,40(sp)
  a310a0:	cc4a                	sw	s2,24(sp)
  a310a2:	08077793          	andi	a5,a4,128
  a310a6:	e80789e3          	beqz	a5,a30f38 <SecOutput+0x3b4>
  a310aa:	20076713          	ori	a4,a4,512
  a310ae:	d63a                	sw	a4,44(sp)
  a310b0:	b561                	j	a30f38 <SecOutput+0x3b4>
  a310b2:	0107f693          	andi	a3,a5,16
  a310b6:	0407f713          	andi	a4,a5,64
  a310ba:	c689                	beqz	a3,a310c4 <SecOutput+0x540>
  a310bc:	4004                	lw	s1,0(s0)
  a310be:	0411                	addi	s0,s0,4
  a310c0:	cb4d                	beqz	a4,a31172 <SecOutput+0x5ee>
  a310c2:	a065                	j	a3116a <SecOutput+0x5e6>
  a310c4:	01279693          	slli	a3,a5,0x12
  a310c8:	0806d963          	bgez	a3,a3115a <SecOutput+0x5d6>
  a310cc:	4014                	lw	a3,0(s0)
  a310ce:	4d01                	li	s10,0
  a310d0:	0411                	addi	s0,s0,4
  a310d2:	0ff6f493          	andi	s1,a3,255
  a310d6:	cf11                	beqz	a4,a310f2 <SecOutput+0x56e>
  a310d8:	06e2                	slli	a3,a3,0x18
  a310da:	86e1                	srai	a3,a3,0x18
  a310dc:	0006db63          	bgez	a3,a310f2 <SecOutput+0x56e>
  a310e0:	fff4c493          	not	s1,s1
  a310e4:	9c81                	uxtb	s1
  a310e6:	0485                	addi	s1,s1,1
  a310e8:	1007e793          	ori	a5,a5,256
  a310ec:	41f4dd13          	srai	s10,s1,0x1f
  a310f0:	d63e                	sw	a5,44(sp)
  a310f2:	57b2                	lw	a5,44(sp)
  a310f4:	8da6                	mv	s11,s1
  a310f6:	876a                	mv	a4,s10
  a310f8:	0407f693          	andi	a3,a5,64
  a310fc:	ce89                	beqz	a3,a31116 <SecOutput+0x592>
  a310fe:	000d5c63          	bgez	s10,a31116 <SecOutput+0x592>
  a31102:	40900db3          	neg	s11,s1
  a31106:	01b036b3          	snez	a3,s11
  a3110a:	41a00733          	neg	a4,s10
  a3110e:	1007e793          	ori	a5,a5,256
  a31112:	8f15                	sub	a4,a4,a3
  a31114:	d63e                	sw	a5,44(sp)
  a31116:	56b2                	lw	a3,44(sp)
  a31118:	000497b7          	lui	a5,0x49
  a3111c:	8ff5                	and	a5,a5,a3
  a3111e:	e391                	bnez	a5,a31122 <SecOutput+0x59e>
  a31120:	4701                	li	a4,0
  a31122:	24c10813          	addi	a6,sp,588
  a31126:	ce42                	sw	a6,28(sp)
  a31128:	00ede7b3          	or	a5,s11,a4
  a3112c:	e3c1                	bnez	a5,a311ac <SecOutput+0x628>
  a3112e:	c282                	sw	zero,68(sp)
  a31130:	d002                	sw	zero,32(sp)
  a31132:	5752                	lw	a4,52(sp)
  a31134:	4685                	li	a3,1
  a31136:	00074f63          	bltz	a4,a31154 <SecOutput+0x5d0>
  a3113a:	57b2                	lw	a5,44(sp)
  a3113c:	01179693          	slli	a3,a5,0x11
  a31140:	0006c463          	bltz	a3,a31148 <SecOutput+0x5c4>
  a31144:	9bdd                	andi	a5,a5,-9
  a31146:	d63e                	sw	a5,44(sp)
  a31148:	20000793          	li	a5,512
  a3114c:	00e7d363          	bge	a5,a4,a31152 <SecOutput+0x5ce>
  a31150:	da3e                	sw	a5,52(sp)
  a31152:	56d2                	lw	a3,52(sp)
  a31154:	03000613          	li	a2,48
  a31158:	aa69                	j	a312f2 <SecOutput+0x76e>
  a3115a:	0207f693          	andi	a3,a5,32
  a3115e:	ce81                	beqz	a3,a31176 <SecOutput+0x5f2>
  a31160:	4004                	lw	s1,0(s0)
  a31162:	0411                	addi	s0,s0,4
  a31164:	c711                	beqz	a4,a31170 <SecOutput+0x5ec>
  a31166:	04c2                	slli	s1,s1,0x10
  a31168:	84c1                	srai	s1,s1,0x10
  a3116a:	41f4dd13          	srai	s10,s1,0x1f
  a3116e:	b751                	j	a310f2 <SecOutput+0x56e>
  a31170:	9ca1                	uxth	s1
  a31172:	4d01                	li	s10,0
  a31174:	bfbd                	j	a310f2 <SecOutput+0x56e>
  a31176:	00f79693          	slli	a3,a5,0xf
  a3117a:	0006d763          	bgez	a3,a31188 <SecOutput+0x604>
  a3117e:	4004                	lw	s1,0(s0)
  a31180:	0411                	addi	s0,s0,4
  a31182:	41f4dd13          	srai	s10,s1,0x1f
  a31186:	b7b5                	j	a310f2 <SecOutput+0x56e>
  a31188:	00e79693          	slli	a3,a5,0xe
  a3118c:	0006db63          	bgez	a3,a311a2 <SecOutput+0x61e>
  a31190:	4004                	lw	s1,0(s0)
  a31192:	00440793          	addi	a5,s0,4
  a31196:	41f4dd13          	srai	s10,s1,0x1f
  a3119a:	e311                	bnez	a4,a3119e <SecOutput+0x61a>
  a3119c:	4d01                	li	s10,0
  a3119e:	843e                	mv	s0,a5
  a311a0:	bf89                	j	a310f2 <SecOutput+0x56e>
  a311a2:	00d79693          	slli	a3,a5,0xd
  a311a6:	f006dbe3          	bgez	a3,a310bc <SecOutput+0x538>
  a311aa:	bb61                	j	a30f42 <SecOutput+0x3be>
  a311ac:	57a2                	lw	a5,40(sp)
  a311ae:	ef49                	bnez	a4,a31248 <SecOutput+0x6c4>
  a311b0:	0a1791bb          	bnei	a5,10,a311f6 <SecOutput+0x672>
  a311b4:	46a9                	li	a3,10
  a311b6:	4625                	li	a2,9
  a311b8:	4772                	lw	a4,28(sp)
  a311ba:	fff70793          	addi	a5,a4,-1 # 1fffffff <_gp_+0x1f5cb7eb>
  a311be:	ce3e                	sw	a5,28(sp)
  a311c0:	02ddf7b3          	remu	a5,s11,a3
  a311c4:	97ca                	add	a5,a5,s2
  a311c6:	239c                	lbu	a5,0(a5)
  a311c8:	fef70fa3          	sb	a5,-1(a4)
  a311cc:	002dd793          	srli	a5,s11,0x2
  a311d0:	43b7879b          	addshf	a5,a5,s11,srl,1
  a311d4:	48f7879b          	addshf	a5,a5,a5,srl,4
  a311d8:	50f7879b          	addshf	a5,a5,a5,srl,8
  a311dc:	60f7879b          	addshf	a5,a5,a5,srl,16
  a311e0:	838d                	srli	a5,a5,0x3
  a311e2:	00279513          	slli	a0,a5,0x2
  a311e6:	953e                	add	a0,a0,a5
  a311e8:	02ad951b          	subshf	a0,s11,a0,sll,1
  a311ec:	04a67c63          	bgeu	a2,a0,a31244 <SecOutput+0x6c0>
  a311f0:	0785                	addi	a5,a5,1 # 49001 <__heap_size+0x2ba09>
  a311f2:	8dbe                	mv	s11,a5
  a311f4:	b7d1                	j	a311b8 <SecOutput+0x634>
  a311f6:	100789bb          	beqi	a5,16,a3121c <SecOutput+0x698>
  a311fa:	0817903b          	bnei	a5,8,a3123a <SecOutput+0x6b6>
  a311fe:	4772                	lw	a4,28(sp)
  a31200:	fff70793          	addi	a5,a4,-1
  a31204:	ce3e                	sw	a5,28(sp)
  a31206:	007df793          	andi	a5,s11,7
  a3120a:	97ca                	add	a5,a5,s2
  a3120c:	239c                	lbu	a5,0(a5)
  a3120e:	003ddd93          	srli	s11,s11,0x3
  a31212:	fef70fa3          	sb	a5,-1(a4)
  a31216:	fe0d94e3          	bnez	s11,a311fe <SecOutput+0x67a>
  a3121a:	a005                	j	a3123a <SecOutput+0x6b6>
  a3121c:	4772                	lw	a4,28(sp)
  a3121e:	00fdf693          	andi	a3,s11,15
  a31222:	004ddd93          	srli	s11,s11,0x4
  a31226:	fff70793          	addi	a5,a4,-1
  a3122a:	ce3e                	sw	a5,28(sp)
  a3122c:	47e2                	lw	a5,24(sp)
  a3122e:	97b6                	add	a5,a5,a3
  a31230:	239c                	lbu	a5,0(a5)
  a31232:	fef70fa3          	sb	a5,-1(a4)
  a31236:	fe0d93e3          	bnez	s11,a3121c <SecOutput+0x698>
  a3123a:	47f2                	lw	a5,28(sp)
  a3123c:	40f80833          	sub	a6,a6,a5
  a31240:	d042                	sw	a6,32(sp)
  a31242:	bdc5                	j	a31132 <SecOutput+0x5ae>
  a31244:	f7dd                	bnez	a5,a311f2 <SecOutput+0x66e>
  a31246:	bfd5                	j	a3123a <SecOutput+0x6b6>
  a31248:	0a078cbb          	beqi	a5,10,a3127a <SecOutput+0x6f6>
  a3124c:	10178b3b          	beqi	a5,16,a312b8 <SecOutput+0x734>
  a31250:	08f79abb          	bnei	a5,8,a3123a <SecOutput+0x6b6>
  a31254:	46f2                	lw	a3,28(sp)
  a31256:	fff68793          	addi	a5,a3,-1
  a3125a:	ce3e                	sw	a5,28(sp)
  a3125c:	007df793          	andi	a5,s11,7
  a31260:	97ca                	add	a5,a5,s2
  a31262:	239c                	lbu	a5,0(a5)
  a31264:	003ddd93          	srli	s11,s11,0x3
  a31268:	3aedad9b          	orshf	s11,s11,a4,sll,29
  a3126c:	830d                	srli	a4,a4,0x3
  a3126e:	fef68fa3          	sb	a5,-1(a3)
  a31272:	00ede7b3          	or	a5,s11,a4
  a31276:	fff9                	bnez	a5,a31254 <SecOutput+0x6d0>
  a31278:	b7c9                	j	a3123a <SecOutput+0x6b6>
  a3127a:	47f2                	lw	a5,28(sp)
  a3127c:	4629                	li	a2,10
  a3127e:	856e                	mv	a0,s11
  a31280:	fff78693          	addi	a3,a5,-1
  a31284:	ce36                	sw	a3,28(sp)
  a31286:	85ba                	mv	a1,a4
  a31288:	4681                	li	a3,0
  a3128a:	c642                	sw	a6,12(sp)
  a3128c:	c43e                	sw	a5,8(sp)
  a3128e:	c23a                	sw	a4,4(sp)
  a31290:	b10f70ef          	jal	ra,a285a0 <__umoddi3>
  a31294:	954a                	add	a0,a0,s2
  a31296:	2114                	lbu	a3,0(a0)
  a31298:	4712                	lw	a4,4(sp)
  a3129a:	47a2                	lw	a5,8(sp)
  a3129c:	856e                	mv	a0,s11
  a3129e:	85ba                	mv	a1,a4
  a312a0:	fed78fa3          	sb	a3,-1(a5)
  a312a4:	4629                	li	a2,10
  a312a6:	4681                	li	a3,0
  a312a8:	af4f70ef          	jal	ra,a2859c <__udivdi3>
  a312ac:	872e                	mv	a4,a1
  a312ae:	8dc9                	or	a1,a1,a0
  a312b0:	8daa                	mv	s11,a0
  a312b2:	4832                	lw	a6,12(sp)
  a312b4:	f1f9                	bnez	a1,a3127a <SecOutput+0x6f6>
  a312b6:	b751                	j	a3123a <SecOutput+0x6b6>
  a312b8:	46f2                	lw	a3,28(sp)
  a312ba:	00fdf613          	andi	a2,s11,15
  a312be:	004ddd93          	srli	s11,s11,0x4
  a312c2:	fff68793          	addi	a5,a3,-1
  a312c6:	ce3e                	sw	a5,28(sp)
  a312c8:	47e2                	lw	a5,24(sp)
  a312ca:	38edad9b          	orshf	s11,s11,a4,sll,28
  a312ce:	8311                	srli	a4,a4,0x4
  a312d0:	97b2                	add	a5,a5,a2
  a312d2:	239c                	lbu	a5,0(a5)
  a312d4:	fef68fa3          	sb	a5,-1(a3)
  a312d8:	00ede7b3          	or	a5,s11,a4
  a312dc:	fff1                	bnez	a5,a312b8 <SecOutput+0x734>
  a312de:	bfb1                	j	a3123a <SecOutput+0x6b6>
  a312e0:	47f2                	lw	a5,28(sp)
  a312e2:	fff78713          	addi	a4,a5,-1
  a312e6:	ce3a                	sw	a4,28(sp)
  a312e8:	fec78fa3          	sb	a2,-1(a5)
  a312ec:	5782                	lw	a5,32(sp)
  a312ee:	0785                	addi	a5,a5,1
  a312f0:	d03e                	sw	a5,32(sp)
  a312f2:	5702                	lw	a4,32(sp)
  a312f4:	fed746e3          	blt	a4,a3,a312e0 <SecOutput+0x75c>
  a312f8:	57b2                	lw	a5,44(sp)
  a312fa:	2007f793          	andi	a5,a5,512
  a312fe:	c385                	beqz	a5,a3131e <SecOutput+0x79a>
  a31300:	47f2                	lw	a5,28(sp)
  a31302:	c701                	beqz	a4,a3130a <SecOutput+0x786>
  a31304:	2398                	lbu	a4,0(a5)
  a31306:	3007063b          	beqi	a4,48,a3131e <SecOutput+0x79a>
  a3130a:	fff78713          	addi	a4,a5,-1
  a3130e:	ce3a                	sw	a4,28(sp)
  a31310:	03000713          	li	a4,48
  a31314:	fee78fa3          	sb	a4,-1(a5)
  a31318:	5782                	lw	a5,32(sp)
  a3131a:	0785                	addi	a5,a5,1
  a3131c:	d03e                	sw	a5,32(sp)
  a3131e:	57b2                	lw	a5,44(sp)
  a31320:	0407f713          	andi	a4,a5,64
  a31324:	cb11                	beqz	a4,a31338 <SecOutput+0x7b4>
  a31326:	1007f713          	andi	a4,a5,256
  a3132a:	c70d                	beqz	a4,a31354 <SecOutput+0x7d0>
  a3132c:	02d00713          	li	a4,45
  a31330:	04e10423          	sb	a4,72(sp)
  a31334:	4705                	li	a4,1
  a31336:	c2ba                	sw	a4,68(sp)
  a31338:	01a4e4b3          	or	s1,s1,s10
  a3133c:	b2049ee3          	bnez	s1,a30e78 <SecOutput+0x2f4>
  a31340:	01179713          	slli	a4,a5,0x11
  a31344:	b2075ae3          	bgez	a4,a30e78 <SecOutput+0x2f4>
  a31348:	4715                	li	a4,5
  a3134a:	9bdd                	andi	a5,a5,-9
  a3134c:	ce62                	sw	s8,28(sp)
  a3134e:	d03a                	sw	a4,32(sp)
  a31350:	d63e                	sw	a5,44(sp)
  a31352:	b61d                	j	a30e78 <SecOutput+0x2f4>
  a31354:	0017f713          	andi	a4,a5,1
  a31358:	c701                	beqz	a4,a31360 <SecOutput+0x7dc>
  a3135a:	02b00713          	li	a4,43
  a3135e:	bfc9                	j	a31330 <SecOutput+0x7ac>
  a31360:	0027f713          	andi	a4,a5,2
  a31364:	db71                	beqz	a4,a31338 <SecOutput+0x7b4>
  a31366:	02000713          	li	a4,32
  a3136a:	b7d9                	j	a31330 <SecOutput+0x7ac>
  a3136c:	004ca703          	lw	a4,4(s9)
  a31370:	0307c583          	lbu	a1,48(a5)
  a31374:	0785                	addi	a5,a5,1
  a31376:	a30c                	sb	a1,0(a4)
  a31378:	004ca703          	lw	a4,4(s9)
  a3137c:	0705                	addi	a4,a4,1
  a3137e:	00eca223          	sw	a4,4(s9)
  a31382:	b2f612e3          	bne	a2,a5,a30ea6 <SecOutput+0x322>
  a31386:	47d2                	lw	a5,20(sp)
  a31388:	97b6                	add	a5,a5,a3
  a3138a:	b635                	j	a30eb6 <SecOutput+0x332>
  a3138c:	45f2                	lw	a1,28(sp)
  a3138e:	5482                	lw	s1,32(sp)
  a31390:	000ca703          	lw	a4,0(s9)
  a31394:	87ae                	mv	a5,a1
  a31396:	009586b3          	add	a3,a1,s1
  a3139a:	06974963          	blt	a4,s1,a3140c <SecOutput+0x888>
  a3139e:	0c04ddbb          	bgei	s1,12,a313d4 <SecOutput+0x850>
  a313a2:	87ae                	mv	a5,a1
  a313a4:	a819                	j	a313ba <SecOutput+0x836>
  a313a6:	004ca703          	lw	a4,4(s9)
  a313aa:	2394                	lbu	a3,0(a5)
  a313ac:	0785                	addi	a5,a5,1
  a313ae:	a314                	sb	a3,0(a4)
  a313b0:	004ca703          	lw	a4,4(s9)
  a313b4:	0705                	addi	a4,a4,1
  a313b6:	00eca223          	sw	a4,4(s9)
  a313ba:	40b78733          	sub	a4,a5,a1
  a313be:	fe9744e3          	blt	a4,s1,a313a6 <SecOutput+0x822>
  a313c2:	000ca783          	lw	a5,0(s9)
  a313c6:	8f85                	sub	a5,a5,s1
  a313c8:	00fca023          	sw	a5,0(s9)
  a313cc:	47d2                	lw	a5,20(sp)
  a313ce:	94be                	add	s1,s1,a5
  a313d0:	ca26                	sw	s1,20(sp)
  a313d2:	b629                	j	a30edc <SecOutput+0x358>
  a313d4:	004ca503          	lw	a0,4(s9)
  a313d8:	8626                	mv	a2,s1
  a313da:	e78f70ef          	jal	ra,a28a52 <memcpy>
  a313de:	004ca783          	lw	a5,4(s9)
  a313e2:	97a6                	add	a5,a5,s1
  a313e4:	00fca223          	sw	a5,4(s9)
  a313e8:	bfe9                	j	a313c2 <SecOutput+0x83e>
  a313ea:	000ca703          	lw	a4,0(s9)
  a313ee:	177d                	addi	a4,a4,-1
  a313f0:	00eca023          	sw	a4,0(s9)
  a313f4:	ae0742e3          	bltz	a4,a30ed8 <SecOutput+0x354>
  a313f8:	004ca703          	lw	a4,4(s9)
  a313fc:	2390                	lbu	a2,0(a5)
  a313fe:	0785                	addi	a5,a5,1
  a31400:	a310                	sb	a2,0(a4)
  a31402:	004ca703          	lw	a4,4(s9)
  a31406:	0705                	addi	a4,a4,1
  a31408:	00eca223          	sw	a4,4(s9)
  a3140c:	40f68733          	sub	a4,a3,a5
  a31410:	fce04de3          	bgtz	a4,a313ea <SecOutput+0x866>
  a31414:	bf65                	j	a313cc <SecOutput+0x848>

00a31416 <SecVsnprintfImpl>:
  a31416:	8138                	push	{ra,s0-s1},-32
  a31418:	84ae                	mv	s1,a1
  a3141a:	842a                	mv	s0,a0
  a3141c:	85b2                	mv	a1,a2
  a3141e:	c62a                	sw	a0,12(sp)
  a31420:	8636                	mv	a2,a3
  a31422:	0028                	addi	a0,sp,8
  a31424:	c426                	sw	s1,8(sp)
  a31426:	f5eff0ef          	jal	ra,a30b84 <SecOutput>
  a3142a:	00054b63          	bltz	a0,a31440 <SecVsnprintfImpl+0x2a>
  a3142e:	47a2                	lw	a5,8(sp)
  a31430:	17fd                	addi	a5,a5,-1
  a31432:	c43e                	sw	a5,8(sp)
  a31434:	0007c663          	bltz	a5,a31440 <SecVsnprintfImpl+0x2a>
  a31438:	47b2                	lw	a5,12(sp)
  a3143a:	00078023          	sb	zero,0(a5)
  a3143e:	8134                	popret	{ra,s0-s1},32
  a31440:	47a2                	lw	a5,8(sp)
  a31442:	0007d763          	bgez	a5,a31450 <SecVsnprintfImpl+0x3a>
  a31446:	9426                	add	s0,s0,s1
  a31448:	fe040fa3          	sb	zero,-1(s0)
  a3144c:	5579                	li	a0,-2
  a3144e:	bfc5                	j	a3143e <SecVsnprintfImpl+0x28>
  a31450:	00040023          	sb	zero,0(s0)
  a31454:	557d                	li	a0,-1
  a31456:	b7e5                	j	a3143e <SecVsnprintfImpl+0x28>

00a31458 <vsnprintf_s>:
  a31458:	8028                	push	{ra,s0},-16
  a3145a:	8832                	mv	a6,a2
  a3145c:	842a                	mv	s0,a0
  a3145e:	87ae                	mv	a5,a1
  a31460:	8636                	mv	a2,a3
  a31462:	ca8d                	beqz	a3,a31494 <vsnprintf_s+0x3c>
  a31464:	e119                	bnez	a0,a3146a <vsnprintf_s+0x12>
  a31466:	557d                	li	a0,-1
  a31468:	8024                	popret	{ra,s0},16
  a3146a:	ddf5                	beqz	a1,a31466 <vsnprintf_s+0xe>
  a3146c:	fe05cde3          	bltz	a1,a31466 <vsnprintf_s+0xe>
  a31470:	800008b7          	lui	a7,0x80000
  a31474:	ffe8c893          	xori	a7,a7,-2
  a31478:	0308e063          	bltu	a7,a6,a31498 <vsnprintf_s+0x40>
  a3147c:	86ba                	mv	a3,a4
  a3147e:	02b87263          	bgeu	a6,a1,a314a2 <vsnprintf_s+0x4a>
  a31482:	00180593          	addi	a1,a6,1
  a31486:	f91ff0ef          	jal	ra,a31416 <SecVsnprintfImpl>
  a3148a:	fef5073b          	beqi	a0,-2,a31466 <vsnprintf_s+0xe>
  a3148e:	fc055de3          	bgez	a0,a31468 <vsnprintf_s+0x10>
  a31492:	a029                	j	a3149c <vsnprintf_s+0x44>
  a31494:	d969                	beqz	a0,a31466 <vsnprintf_s+0xe>
  a31496:	d9e1                	beqz	a1,a31466 <vsnprintf_s+0xe>
  a31498:	fc07c7e3          	bltz	a5,a31466 <vsnprintf_s+0xe>
  a3149c:	00040023          	sb	zero,0(s0)
  a314a0:	b7d9                	j	a31466 <vsnprintf_s+0xe>
  a314a2:	f75ff0ef          	jal	ra,a31416 <SecVsnprintfImpl>
  a314a6:	b7e5                	j	a3148e <vsnprintf_s+0x36>
  a314a8:	04f9                	addi	s1,s1,30
  a314aa:	0000                	unimp
  a314ac:	00000003          	lb	zero,0(zero) # 0 <__data_size__-0x1e8>
	...

00a314c0 <excp_vect_table>:
  a314c0:	d1e8                	sw	a0,100(a1)
  a314c2:	00a2                	slli	ra,ra,0x8
  a314c4:	d1fe                	sw	t6,224(sp)
  a314c6:	00a2                	slli	ra,ra,0x8
  a314c8:	d214                	sw	a3,32(a2)
  a314ca:	00a2                	slli	ra,ra,0x8
  a314cc:	d2c4                	sw	s1,36(a3)
  a314ce:	00a2                	slli	ra,ra,0x8
  a314d0:	d22a                	sw	a0,36(sp)
  a314d2:	00a2                	slli	ra,ra,0x8
  a314d4:	d240                	sw	s0,36(a2)
  a314d6:	00a2                	slli	ra,ra,0x8
  a314d8:	d256                	sw	s5,36(sp)
  a314da:	00a2                	slli	ra,ra,0x8
  a314dc:	d26c                	sw	a1,100(a2)
  a314de:	00a2                	slli	ra,ra,0x8
  a314e0:	d282                	sw	zero,100(sp)
  a314e2:	00a2                	slli	ra,ra,0x8
  a314e4:	d298                	sw	a4,32(a3)
  a314e6:	00a2                	slli	ra,ra,0x8
  a314e8:	d1d2                	sw	s4,224(sp)
  a314ea:	00a2                	slli	ra,ra,0x8
  a314ec:	d2ae                	sw	a1,100(sp)
  a314ee:	00a2                	slli	ra,ra,0x8
  a314f0:	d2da                	sw	s6,100(sp)
  a314f2:	00a2                	slli	ra,ra,0x8
  a314f4:	d2f0                	sw	a2,100(a3)
  a314f6:	00a2                	slli	ra,ra,0x8
  a314f8:	d1d2                	sw	s4,224(sp)
  a314fa:	00a2                	slli	ra,ra,0x8
  a314fc:	d306                	sw	ra,164(sp)
  a314fe:	00a2                	slli	ra,ra,0x8
  a31500:	d31c                	sw	a5,32(a4)
  a31502:	00a2                	slli	ra,ra,0x8
  a31504:	d332                	sw	a2,164(sp)
  a31506:	00a2                	slli	ra,ra,0x8

00a31508 <excp_vect_table_end>:
	...

00a31510 <trap_entry>:
  a31510:	7175                	addi	sp,sp,-144
  a31512:	d06e                	sw	s11,32(sp)
  a31514:	d26a                	sw	s10,36(sp)
  a31516:	d466                	sw	s9,40(sp)
  a31518:	d662                	sw	s8,44(sp)
  a3151a:	d85e                	sw	s7,48(sp)
  a3151c:	da5a                	sw	s6,52(sp)
  a3151e:	dc56                	sw	s5,56(sp)
  a31520:	de52                	sw	s4,60(sp)
  a31522:	c0ce                	sw	s3,64(sp)
  a31524:	c2ca                	sw	s2,68(sp)
  a31526:	c4a6                	sw	s1,72(sp)
  a31528:	c6a2                	sw	s0,76(sp)
  a3152a:	c8fe                	sw	t6,80(sp)
  a3152c:	cafa                	sw	t5,84(sp)
  a3152e:	ccf6                	sw	t4,88(sp)
  a31530:	cef2                	sw	t3,92(sp)
  a31532:	d0c6                	sw	a7,96(sp)
  a31534:	d2c2                	sw	a6,100(sp)
  a31536:	d4be                	sw	a5,104(sp)
  a31538:	d6ba                	sw	a4,108(sp)
  a3153a:	d8b6                	sw	a3,112(sp)
  a3153c:	dab2                	sw	a2,116(sp)
  a3153e:	dcae                	sw	a1,120(sp)
  a31540:	deaa                	sw	a0,124(sp)
  a31542:	c11e                	sw	t2,128(sp)
  a31544:	c31a                	sw	t1,132(sp)
  a31546:	c516                	sw	t0,136(sp)
  a31548:	c706                	sw	ra,140(sp)
  a3154a:	fc202a73          	csrr	s4,0xfc2
  a3154e:	c052                	sw	s4,0(sp)
  a31550:	342029f3          	csrr	s3,mcause
  a31554:	c24e                	sw	s3,4(sp)
  a31556:	34302973          	csrr	s2,mtval
  a3155a:	c44a                	sw	s2,8(sp)
  a3155c:	c60e                	sw	gp,12(sp)
  a3155e:	300024f3          	csrr	s1,mstatus
  a31562:	c826                	sw	s1,16(sp)
  a31564:	34102473          	csrr	s0,mepc
  a31568:	ca22                	sw	s0,20(sp)
  a3156a:	cc12                	sw	tp,24(sp)
  a3156c:	ce0a                	sw	sp,28(sp)
  a3156e:	30047073          	csrci	mstatus,8
  a31572:	34011073          	csrw	mscratch,sp
  a31576:	fffd4117          	auipc	sp,0xfffd4
  a3157a:	f8a10113          	addi	sp,sp,-118 # a05500 <g_flash_cmd_funcs>
  a3157e:	42a1                	li	t0,8
  a31580:	00599463          	bne	s3,t0,a31588 <trap_entry+0x78>
  a31584:	fcff606f          	j	a28552 <handle_syscall>
  a31588:	00299293          	slli	t0,s3,0x2
  a3158c:	00000317          	auipc	t1,0x0
  a31590:	f3430313          	addi	t1,t1,-204 # a314c0 <excp_vect_table>
  a31594:	00000397          	auipc	t2,0x0
  a31598:	f7438393          	addi	t2,t2,-140 # a31508 <excp_vect_table_end>
  a3159c:	34002573          	csrr	a0,mscratch
  a315a0:	929a                	add	t0,t0,t1
  a315a2:	0472ff63          	bgeu	t0,t2,a31600 <trap_entry+0xf0>
  a315a6:	0002a283          	lw	t0,0(t0) # 1000000 <_gp_+0x5cb7ec>
  a315aa:	985fb0ef          	jal	ra,a2cf2e <do_hard_fault_handler>
  a315ae:	34002173          	csrr	sp,mscratch
  a315b2:	6289                	lui	t0,0x2
  a315b4:	80028293          	addi	t0,t0,-2048 # 1800 <ccause+0x83e>
  a315b8:	3002a073          	csrs	mstatus,t0
  a315bc:	42d2                	lw	t0,20(sp)
  a315be:	34129073          	csrw	mepc,t0
  a315c2:	5d82                	lw	s11,32(sp)
  a315c4:	5d12                	lw	s10,36(sp)
  a315c6:	5ca2                	lw	s9,40(sp)
  a315c8:	5c32                	lw	s8,44(sp)
  a315ca:	5bc2                	lw	s7,48(sp)
  a315cc:	5b52                	lw	s6,52(sp)
  a315ce:	5ae2                	lw	s5,56(sp)
  a315d0:	5a72                	lw	s4,60(sp)
  a315d2:	4986                	lw	s3,64(sp)
  a315d4:	4916                	lw	s2,68(sp)
  a315d6:	44a6                	lw	s1,72(sp)
  a315d8:	4436                	lw	s0,76(sp)
  a315da:	4fc6                	lw	t6,80(sp)
  a315dc:	4f56                	lw	t5,84(sp)
  a315de:	4ee6                	lw	t4,88(sp)
  a315e0:	4e76                	lw	t3,92(sp)
  a315e2:	5886                	lw	a7,96(sp)
  a315e4:	5816                	lw	a6,100(sp)
  a315e6:	57a6                	lw	a5,104(sp)
  a315e8:	5736                	lw	a4,108(sp)
  a315ea:	56c6                	lw	a3,112(sp)
  a315ec:	5656                	lw	a2,116(sp)
  a315ee:	55e6                	lw	a1,120(sp)
  a315f0:	5576                	lw	a0,124(sp)
  a315f2:	438a                	lw	t2,128(sp)
  a315f4:	431a                	lw	t1,132(sp)
  a315f6:	42aa                	lw	t0,136(sp)
  a315f8:	40ba                	lw	ra,140(sp)
  a315fa:	6149                	addi	sp,sp,144
  a315fc:	30200073          	mret
  a31600:	bd3fb06f          	j	a2d1d2 <do_trap_unknown>
	...

00a3160c <trap_vector>:
  a3160c:	f05ff06f          	j	a31510 <trap_entry>
  a31610:	d39fb06f          	j	a2d348 <default_handler>
  a31614:	d35fb06f          	j	a2d348 <default_handler>
  a31618:	d31fb06f          	j	a2d348 <default_handler>
  a3161c:	d2dfb06f          	j	a2d348 <default_handler>
  a31620:	d29fb06f          	j	a2d348 <default_handler>
  a31624:	d25fb06f          	j	a2d348 <default_handler>
  a31628:	d21fb06f          	j	a2d348 <default_handler>
  a3162c:	d1dfb06f          	j	a2d348 <default_handler>
  a31630:	d19fb06f          	j	a2d348 <default_handler>
  a31634:	d15fb06f          	j	a2d348 <default_handler>
  a31638:	d11fb06f          	j	a2d348 <default_handler>
  a3163c:	1700006f          	j	a317ac <nmi_vector>
  a31640:	d09fb06f          	j	a2d348 <default_handler>
  a31644:	d05fb06f          	j	a2d348 <default_handler>
  a31648:	d01fb06f          	j	a2d348 <default_handler>
  a3164c:	cfdfb06f          	j	a2d348 <default_handler>
  a31650:	cf9fb06f          	j	a2d348 <default_handler>
  a31654:	cf5fb06f          	j	a2d348 <default_handler>
  a31658:	cf1fb06f          	j	a2d348 <default_handler>
  a3165c:	cedfb06f          	j	a2d348 <default_handler>
  a31660:	ce9fb06f          	j	a2d348 <default_handler>
  a31664:	ce5fb06f          	j	a2d348 <default_handler>
  a31668:	ce1fb06f          	j	a2d348 <default_handler>
  a3166c:	cddfb06f          	j	a2d348 <default_handler>
  a31670:	cd9fb06f          	j	a2d348 <default_handler>
  a31674:	2000006f          	j	a31874 <default_interrupt0_handler>
  a31678:	2a80006f          	j	a31920 <default_interrupt1_handler>
  a3167c:	3500006f          	j	a319cc <default_interrupt2_handler>
  a31680:	3f80006f          	j	a31a78 <default_interrupt3_handler>
  a31684:	4a00006f          	j	a31b24 <default_interrupt4_handler>
  a31688:	5480006f          	j	a31bd0 <default_interrupt5_handler>
  a3168c:	5f00006f          	j	a31c7c <default_local_interrupt_handler>
  a31690:	5ec0006f          	j	a31c7c <default_local_interrupt_handler>
  a31694:	5e80006f          	j	a31c7c <default_local_interrupt_handler>
  a31698:	5e40006f          	j	a31c7c <default_local_interrupt_handler>
  a3169c:	5e00006f          	j	a31c7c <default_local_interrupt_handler>
  a316a0:	5dc0006f          	j	a31c7c <default_local_interrupt_handler>
  a316a4:	5d80006f          	j	a31c7c <default_local_interrupt_handler>
  a316a8:	5d40006f          	j	a31c7c <default_local_interrupt_handler>
  a316ac:	5d00006f          	j	a31c7c <default_local_interrupt_handler>
  a316b0:	5cc0006f          	j	a31c7c <default_local_interrupt_handler>
  a316b4:	5c80006f          	j	a31c7c <default_local_interrupt_handler>
  a316b8:	5c40006f          	j	a31c7c <default_local_interrupt_handler>
  a316bc:	5c00006f          	j	a31c7c <default_local_interrupt_handler>
  a316c0:	5bc0006f          	j	a31c7c <default_local_interrupt_handler>
  a316c4:	5b80006f          	j	a31c7c <default_local_interrupt_handler>
  a316c8:	5b40006f          	j	a31c7c <default_local_interrupt_handler>
  a316cc:	5b00006f          	j	a31c7c <default_local_interrupt_handler>
  a316d0:	5ac0006f          	j	a31c7c <default_local_interrupt_handler>
  a316d4:	5a80006f          	j	a31c7c <default_local_interrupt_handler>
  a316d8:	5a40006f          	j	a31c7c <default_local_interrupt_handler>
  a316dc:	5a00006f          	j	a31c7c <default_local_interrupt_handler>
  a316e0:	59c0006f          	j	a31c7c <default_local_interrupt_handler>
  a316e4:	5980006f          	j	a31c7c <default_local_interrupt_handler>
  a316e8:	5940006f          	j	a31c7c <default_local_interrupt_handler>
  a316ec:	5900006f          	j	a31c7c <default_local_interrupt_handler>
  a316f0:	58c0006f          	j	a31c7c <default_local_interrupt_handler>
  a316f4:	5880006f          	j	a31c7c <default_local_interrupt_handler>
  a316f8:	5840006f          	j	a31c7c <default_local_interrupt_handler>
  a316fc:	5800006f          	j	a31c7c <default_local_interrupt_handler>
  a31700:	57c0006f          	j	a31c7c <default_local_interrupt_handler>
  a31704:	5780006f          	j	a31c7c <default_local_interrupt_handler>
  a31708:	5740006f          	j	a31c7c <default_local_interrupt_handler>
  a3170c:	5700006f          	j	a31c7c <default_local_interrupt_handler>
  a31710:	56c0006f          	j	a31c7c <default_local_interrupt_handler>
  a31714:	5680006f          	j	a31c7c <default_local_interrupt_handler>
  a31718:	5640006f          	j	a31c7c <default_local_interrupt_handler>
  a3171c:	5600006f          	j	a31c7c <default_local_interrupt_handler>
  a31720:	55c0006f          	j	a31c7c <default_local_interrupt_handler>
  a31724:	5580006f          	j	a31c7c <default_local_interrupt_handler>
  a31728:	5540006f          	j	a31c7c <default_local_interrupt_handler>
  a3172c:	5500006f          	j	a31c7c <default_local_interrupt_handler>
  a31730:	54c0006f          	j	a31c7c <default_local_interrupt_handler>
  a31734:	5480006f          	j	a31c7c <default_local_interrupt_handler>
  a31738:	5440006f          	j	a31c7c <default_local_interrupt_handler>
  a3173c:	5400006f          	j	a31c7c <default_local_interrupt_handler>
  a31740:	53c0006f          	j	a31c7c <default_local_interrupt_handler>
  a31744:	5380006f          	j	a31c7c <default_local_interrupt_handler>
  a31748:	5340006f          	j	a31c7c <default_local_interrupt_handler>
  a3174c:	5300006f          	j	a31c7c <default_local_interrupt_handler>
  a31750:	52c0006f          	j	a31c7c <default_local_interrupt_handler>
  a31754:	5280006f          	j	a31c7c <default_local_interrupt_handler>
  a31758:	5240006f          	j	a31c7c <default_local_interrupt_handler>
  a3175c:	5200006f          	j	a31c7c <default_local_interrupt_handler>
  a31760:	51c0006f          	j	a31c7c <default_local_interrupt_handler>
  a31764:	5180006f          	j	a31c7c <default_local_interrupt_handler>
  a31768:	5140006f          	j	a31c7c <default_local_interrupt_handler>
  a3176c:	5100006f          	j	a31c7c <default_local_interrupt_handler>
  a31770:	50c0006f          	j	a31c7c <default_local_interrupt_handler>
  a31774:	5080006f          	j	a31c7c <default_local_interrupt_handler>
  a31778:	5040006f          	j	a31c7c <default_local_interrupt_handler>
  a3177c:	5000006f          	j	a31c7c <default_local_interrupt_handler>
  a31780:	4fc0006f          	j	a31c7c <default_local_interrupt_handler>
  a31784:	4f80006f          	j	a31c7c <default_local_interrupt_handler>
  a31788:	4f40006f          	j	a31c7c <default_local_interrupt_handler>
  a3178c:	4f00006f          	j	a31c7c <default_local_interrupt_handler>
  a31790:	4ec0006f          	j	a31c7c <default_local_interrupt_handler>
  a31794:	4e80006f          	j	a31c7c <default_local_interrupt_handler>
  a31798:	4e40006f          	j	a31c7c <default_local_interrupt_handler>
  a3179c:	4e00006f          	j	a31c7c <default_local_interrupt_handler>
  a317a0:	4dc0006f          	j	a31c7c <default_local_interrupt_handler>
  a317a4:	4d80006f          	j	a31c7c <default_local_interrupt_handler>
  a317a8:	0000                	unimp
	...

00a317ac <nmi_vector>:
  a317ac:	30047073          	csrci	mstatus,8
  a317b0:	7175                	addi	sp,sp,-144
  a317b2:	d06e                	sw	s11,32(sp)
  a317b4:	d26a                	sw	s10,36(sp)
  a317b6:	d466                	sw	s9,40(sp)
  a317b8:	d662                	sw	s8,44(sp)
  a317ba:	d85e                	sw	s7,48(sp)
  a317bc:	da5a                	sw	s6,52(sp)
  a317be:	dc56                	sw	s5,56(sp)
  a317c0:	de52                	sw	s4,60(sp)
  a317c2:	c0ce                	sw	s3,64(sp)
  a317c4:	c2ca                	sw	s2,68(sp)
  a317c6:	c4a6                	sw	s1,72(sp)
  a317c8:	c6a2                	sw	s0,76(sp)
  a317ca:	c8fe                	sw	t6,80(sp)
  a317cc:	cafa                	sw	t5,84(sp)
  a317ce:	ccf6                	sw	t4,88(sp)
  a317d0:	cef2                	sw	t3,92(sp)
  a317d2:	d0c6                	sw	a7,96(sp)
  a317d4:	d2c2                	sw	a6,100(sp)
  a317d6:	d4be                	sw	a5,104(sp)
  a317d8:	d6ba                	sw	a4,108(sp)
  a317da:	d8b6                	sw	a3,112(sp)
  a317dc:	dab2                	sw	a2,116(sp)
  a317de:	dcae                	sw	a1,120(sp)
  a317e0:	deaa                	sw	a0,124(sp)
  a317e2:	c11e                	sw	t2,128(sp)
  a317e4:	c31a                	sw	t1,132(sp)
  a317e6:	c516                	sw	t0,136(sp)
  a317e8:	c706                	sw	ra,140(sp)
  a317ea:	fc202a73          	csrr	s4,0xfc2
  a317ee:	c052                	sw	s4,0(sp)
  a317f0:	342029f3          	csrr	s3,mcause
  a317f4:	c24e                	sw	s3,4(sp)
  a317f6:	34302973          	csrr	s2,mtval
  a317fa:	c44a                	sw	s2,8(sp)
  a317fc:	c60e                	sw	gp,12(sp)
  a317fe:	300024f3          	csrr	s1,mstatus
  a31802:	c826                	sw	s1,16(sp)
  a31804:	34102473          	csrr	s0,mepc
  a31808:	ca22                	sw	s0,20(sp)
  a3180a:	cc12                	sw	tp,24(sp)
  a3180c:	ce0a                	sw	sp,28(sp)
  a3180e:	34011073          	csrw	mscratch,sp
  a31812:	fffd4117          	auipc	sp,0xfffd4
  a31816:	8ee10113          	addi	sp,sp,-1810 # a05100 <__irq_stack_top__>
  a3181a:	34002573          	csrr	a0,mscratch
  a3181e:	f10fb0ef          	jal	ra,a2cf2e <do_hard_fault_handler>
  a31822:	34002173          	csrr	sp,mscratch
  a31826:	6289                	lui	t0,0x2
  a31828:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a3182c:	3002a073          	csrs	mstatus,t0
  a31830:	42d2                	lw	t0,20(sp)
  a31832:	34129073          	csrw	mepc,t0
  a31836:	5d82                	lw	s11,32(sp)
  a31838:	5d12                	lw	s10,36(sp)
  a3183a:	5ca2                	lw	s9,40(sp)
  a3183c:	5c32                	lw	s8,44(sp)
  a3183e:	5bc2                	lw	s7,48(sp)
  a31840:	5b52                	lw	s6,52(sp)
  a31842:	5ae2                	lw	s5,56(sp)
  a31844:	5a72                	lw	s4,60(sp)
  a31846:	4986                	lw	s3,64(sp)
  a31848:	4916                	lw	s2,68(sp)
  a3184a:	44a6                	lw	s1,72(sp)
  a3184c:	4436                	lw	s0,76(sp)
  a3184e:	4fc6                	lw	t6,80(sp)
  a31850:	4f56                	lw	t5,84(sp)
  a31852:	4ee6                	lw	t4,88(sp)
  a31854:	4e76                	lw	t3,92(sp)
  a31856:	5886                	lw	a7,96(sp)
  a31858:	5816                	lw	a6,100(sp)
  a3185a:	57a6                	lw	a5,104(sp)
  a3185c:	5736                	lw	a4,108(sp)
  a3185e:	56c6                	lw	a3,112(sp)
  a31860:	5656                	lw	a2,116(sp)
  a31862:	55e6                	lw	a1,120(sp)
  a31864:	5576                	lw	a0,124(sp)
  a31866:	438a                	lw	t2,128(sp)
  a31868:	431a                	lw	t1,132(sp)
  a3186a:	42aa                	lw	t0,136(sp)
  a3186c:	40ba                	lw	ra,140(sp)
  a3186e:	6149                	addi	sp,sp,144
  a31870:	30200073          	mret

00a31874 <default_interrupt0_handler>:
  a31874:	30047073          	csrci	mstatus,8
  a31878:	7119                	addi	sp,sp,-128
  a3187a:	c006                	sw	ra,0(sp)
  a3187c:	c20a                	sw	sp,4(sp)
  a3187e:	c40e                	sw	gp,8(sp)
  a31880:	c612                	sw	tp,12(sp)
  a31882:	c816                	sw	t0,16(sp)
  a31884:	ca1a                	sw	t1,20(sp)
  a31886:	cc1e                	sw	t2,24(sp)
  a31888:	ce22                	sw	s0,28(sp)
  a3188a:	d026                	sw	s1,32(sp)
  a3188c:	d22a                	sw	a0,36(sp)
  a3188e:	d42e                	sw	a1,40(sp)
  a31890:	d632                	sw	a2,44(sp)
  a31892:	d836                	sw	a3,48(sp)
  a31894:	da3a                	sw	a4,52(sp)
  a31896:	dc3e                	sw	a5,56(sp)
  a31898:	de42                	sw	a6,60(sp)
  a3189a:	c0c6                	sw	a7,64(sp)
  a3189c:	c2ca                	sw	s2,68(sp)
  a3189e:	c4ce                	sw	s3,72(sp)
  a318a0:	c6d2                	sw	s4,76(sp)
  a318a2:	c8d6                	sw	s5,80(sp)
  a318a4:	cada                	sw	s6,84(sp)
  a318a6:	ccde                	sw	s7,88(sp)
  a318a8:	cee2                	sw	s8,92(sp)
  a318aa:	d0e6                	sw	s9,96(sp)
  a318ac:	d2ea                	sw	s10,100(sp)
  a318ae:	d4ee                	sw	s11,104(sp)
  a318b0:	d6f2                	sw	t3,108(sp)
  a318b2:	d8f6                	sw	t4,112(sp)
  a318b4:	dafa                	sw	t5,116(sp)
  a318b6:	dcfe                	sw	t6,120(sp)
  a318b8:	341022f3          	csrr	t0,mepc
  a318bc:	de96                	sw	t0,124(sp)
  a318be:	34011073          	csrw	mscratch,sp
  a318c2:	fffd4117          	auipc	sp,0xfffd4
  a318c6:	83e10113          	addi	sp,sp,-1986 # a05100 <__irq_stack_top__>
  a318ca:	c7efb0ef          	jal	ra,a2cd48 <interrupt0_handler>
  a318ce:	34002173          	csrr	sp,mscratch
  a318d2:	6289                	lui	t0,0x2
  a318d4:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a318d8:	3002a073          	csrs	mstatus,t0
  a318dc:	52f6                	lw	t0,124(sp)
  a318de:	34129073          	csrw	mepc,t0
  a318e2:	4082                	lw	ra,0(sp)
  a318e4:	42c2                	lw	t0,16(sp)
  a318e6:	4352                	lw	t1,20(sp)
  a318e8:	43e2                	lw	t2,24(sp)
  a318ea:	4472                	lw	s0,28(sp)
  a318ec:	5482                	lw	s1,32(sp)
  a318ee:	5512                	lw	a0,36(sp)
  a318f0:	55a2                	lw	a1,40(sp)
  a318f2:	5632                	lw	a2,44(sp)
  a318f4:	56c2                	lw	a3,48(sp)
  a318f6:	5752                	lw	a4,52(sp)
  a318f8:	57e2                	lw	a5,56(sp)
  a318fa:	5872                	lw	a6,60(sp)
  a318fc:	4886                	lw	a7,64(sp)
  a318fe:	4916                	lw	s2,68(sp)
  a31900:	49a6                	lw	s3,72(sp)
  a31902:	4a36                	lw	s4,76(sp)
  a31904:	4ac6                	lw	s5,80(sp)
  a31906:	4b56                	lw	s6,84(sp)
  a31908:	4be6                	lw	s7,88(sp)
  a3190a:	4c76                	lw	s8,92(sp)
  a3190c:	5c86                	lw	s9,96(sp)
  a3190e:	5d16                	lw	s10,100(sp)
  a31910:	5da6                	lw	s11,104(sp)
  a31912:	5e36                	lw	t3,108(sp)
  a31914:	5ec6                	lw	t4,112(sp)
  a31916:	5f56                	lw	t5,116(sp)
  a31918:	5fe6                	lw	t6,120(sp)
  a3191a:	6109                	addi	sp,sp,128
  a3191c:	30200073          	mret

00a31920 <default_interrupt1_handler>:
  a31920:	30047073          	csrci	mstatus,8
  a31924:	7119                	addi	sp,sp,-128
  a31926:	c006                	sw	ra,0(sp)
  a31928:	c20a                	sw	sp,4(sp)
  a3192a:	c40e                	sw	gp,8(sp)
  a3192c:	c612                	sw	tp,12(sp)
  a3192e:	c816                	sw	t0,16(sp)
  a31930:	ca1a                	sw	t1,20(sp)
  a31932:	cc1e                	sw	t2,24(sp)
  a31934:	ce22                	sw	s0,28(sp)
  a31936:	d026                	sw	s1,32(sp)
  a31938:	d22a                	sw	a0,36(sp)
  a3193a:	d42e                	sw	a1,40(sp)
  a3193c:	d632                	sw	a2,44(sp)
  a3193e:	d836                	sw	a3,48(sp)
  a31940:	da3a                	sw	a4,52(sp)
  a31942:	dc3e                	sw	a5,56(sp)
  a31944:	de42                	sw	a6,60(sp)
  a31946:	c0c6                	sw	a7,64(sp)
  a31948:	c2ca                	sw	s2,68(sp)
  a3194a:	c4ce                	sw	s3,72(sp)
  a3194c:	c6d2                	sw	s4,76(sp)
  a3194e:	c8d6                	sw	s5,80(sp)
  a31950:	cada                	sw	s6,84(sp)
  a31952:	ccde                	sw	s7,88(sp)
  a31954:	cee2                	sw	s8,92(sp)
  a31956:	d0e6                	sw	s9,96(sp)
  a31958:	d2ea                	sw	s10,100(sp)
  a3195a:	d4ee                	sw	s11,104(sp)
  a3195c:	d6f2                	sw	t3,108(sp)
  a3195e:	d8f6                	sw	t4,112(sp)
  a31960:	dafa                	sw	t5,116(sp)
  a31962:	dcfe                	sw	t6,120(sp)
  a31964:	341022f3          	csrr	t0,mepc
  a31968:	de96                	sw	t0,124(sp)
  a3196a:	34011073          	csrw	mscratch,sp
  a3196e:	fffd3117          	auipc	sp,0xfffd3
  a31972:	79210113          	addi	sp,sp,1938 # a05100 <__irq_stack_top__>
  a31976:	c12fb0ef          	jal	ra,a2cd88 <interrupt1_handler>
  a3197a:	34002173          	csrr	sp,mscratch
  a3197e:	6289                	lui	t0,0x2
  a31980:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31984:	3002a073          	csrs	mstatus,t0
  a31988:	52f6                	lw	t0,124(sp)
  a3198a:	34129073          	csrw	mepc,t0
  a3198e:	4082                	lw	ra,0(sp)
  a31990:	42c2                	lw	t0,16(sp)
  a31992:	4352                	lw	t1,20(sp)
  a31994:	43e2                	lw	t2,24(sp)
  a31996:	4472                	lw	s0,28(sp)
  a31998:	5482                	lw	s1,32(sp)
  a3199a:	5512                	lw	a0,36(sp)
  a3199c:	55a2                	lw	a1,40(sp)
  a3199e:	5632                	lw	a2,44(sp)
  a319a0:	56c2                	lw	a3,48(sp)
  a319a2:	5752                	lw	a4,52(sp)
  a319a4:	57e2                	lw	a5,56(sp)
  a319a6:	5872                	lw	a6,60(sp)
  a319a8:	4886                	lw	a7,64(sp)
  a319aa:	4916                	lw	s2,68(sp)
  a319ac:	49a6                	lw	s3,72(sp)
  a319ae:	4a36                	lw	s4,76(sp)
  a319b0:	4ac6                	lw	s5,80(sp)
  a319b2:	4b56                	lw	s6,84(sp)
  a319b4:	4be6                	lw	s7,88(sp)
  a319b6:	4c76                	lw	s8,92(sp)
  a319b8:	5c86                	lw	s9,96(sp)
  a319ba:	5d16                	lw	s10,100(sp)
  a319bc:	5da6                	lw	s11,104(sp)
  a319be:	5e36                	lw	t3,108(sp)
  a319c0:	5ec6                	lw	t4,112(sp)
  a319c2:	5f56                	lw	t5,116(sp)
  a319c4:	5fe6                	lw	t6,120(sp)
  a319c6:	6109                	addi	sp,sp,128
  a319c8:	30200073          	mret

00a319cc <default_interrupt2_handler>:
  a319cc:	30047073          	csrci	mstatus,8
  a319d0:	7119                	addi	sp,sp,-128
  a319d2:	c006                	sw	ra,0(sp)
  a319d4:	c20a                	sw	sp,4(sp)
  a319d6:	c40e                	sw	gp,8(sp)
  a319d8:	c612                	sw	tp,12(sp)
  a319da:	c816                	sw	t0,16(sp)
  a319dc:	ca1a                	sw	t1,20(sp)
  a319de:	cc1e                	sw	t2,24(sp)
  a319e0:	ce22                	sw	s0,28(sp)
  a319e2:	d026                	sw	s1,32(sp)
  a319e4:	d22a                	sw	a0,36(sp)
  a319e6:	d42e                	sw	a1,40(sp)
  a319e8:	d632                	sw	a2,44(sp)
  a319ea:	d836                	sw	a3,48(sp)
  a319ec:	da3a                	sw	a4,52(sp)
  a319ee:	dc3e                	sw	a5,56(sp)
  a319f0:	de42                	sw	a6,60(sp)
  a319f2:	c0c6                	sw	a7,64(sp)
  a319f4:	c2ca                	sw	s2,68(sp)
  a319f6:	c4ce                	sw	s3,72(sp)
  a319f8:	c6d2                	sw	s4,76(sp)
  a319fa:	c8d6                	sw	s5,80(sp)
  a319fc:	cada                	sw	s6,84(sp)
  a319fe:	ccde                	sw	s7,88(sp)
  a31a00:	cee2                	sw	s8,92(sp)
  a31a02:	d0e6                	sw	s9,96(sp)
  a31a04:	d2ea                	sw	s10,100(sp)
  a31a06:	d4ee                	sw	s11,104(sp)
  a31a08:	d6f2                	sw	t3,108(sp)
  a31a0a:	d8f6                	sw	t4,112(sp)
  a31a0c:	dafa                	sw	t5,116(sp)
  a31a0e:	dcfe                	sw	t6,120(sp)
  a31a10:	341022f3          	csrr	t0,mepc
  a31a14:	de96                	sw	t0,124(sp)
  a31a16:	34011073          	csrw	mscratch,sp
  a31a1a:	fffd3117          	auipc	sp,0xfffd3
  a31a1e:	6e610113          	addi	sp,sp,1766 # a05100 <__irq_stack_top__>
  a31a22:	ba6fb0ef          	jal	ra,a2cdc8 <interrupt2_handler>
  a31a26:	34002173          	csrr	sp,mscratch
  a31a2a:	6289                	lui	t0,0x2
  a31a2c:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31a30:	3002a073          	csrs	mstatus,t0
  a31a34:	52f6                	lw	t0,124(sp)
  a31a36:	34129073          	csrw	mepc,t0
  a31a3a:	4082                	lw	ra,0(sp)
  a31a3c:	42c2                	lw	t0,16(sp)
  a31a3e:	4352                	lw	t1,20(sp)
  a31a40:	43e2                	lw	t2,24(sp)
  a31a42:	4472                	lw	s0,28(sp)
  a31a44:	5482                	lw	s1,32(sp)
  a31a46:	5512                	lw	a0,36(sp)
  a31a48:	55a2                	lw	a1,40(sp)
  a31a4a:	5632                	lw	a2,44(sp)
  a31a4c:	56c2                	lw	a3,48(sp)
  a31a4e:	5752                	lw	a4,52(sp)
  a31a50:	57e2                	lw	a5,56(sp)
  a31a52:	5872                	lw	a6,60(sp)
  a31a54:	4886                	lw	a7,64(sp)
  a31a56:	4916                	lw	s2,68(sp)
  a31a58:	49a6                	lw	s3,72(sp)
  a31a5a:	4a36                	lw	s4,76(sp)
  a31a5c:	4ac6                	lw	s5,80(sp)
  a31a5e:	4b56                	lw	s6,84(sp)
  a31a60:	4be6                	lw	s7,88(sp)
  a31a62:	4c76                	lw	s8,92(sp)
  a31a64:	5c86                	lw	s9,96(sp)
  a31a66:	5d16                	lw	s10,100(sp)
  a31a68:	5da6                	lw	s11,104(sp)
  a31a6a:	5e36                	lw	t3,108(sp)
  a31a6c:	5ec6                	lw	t4,112(sp)
  a31a6e:	5f56                	lw	t5,116(sp)
  a31a70:	5fe6                	lw	t6,120(sp)
  a31a72:	6109                	addi	sp,sp,128
  a31a74:	30200073          	mret

00a31a78 <default_interrupt3_handler>:
  a31a78:	30047073          	csrci	mstatus,8
  a31a7c:	7119                	addi	sp,sp,-128
  a31a7e:	c006                	sw	ra,0(sp)
  a31a80:	c20a                	sw	sp,4(sp)
  a31a82:	c40e                	sw	gp,8(sp)
  a31a84:	c612                	sw	tp,12(sp)
  a31a86:	c816                	sw	t0,16(sp)
  a31a88:	ca1a                	sw	t1,20(sp)
  a31a8a:	cc1e                	sw	t2,24(sp)
  a31a8c:	ce22                	sw	s0,28(sp)
  a31a8e:	d026                	sw	s1,32(sp)
  a31a90:	d22a                	sw	a0,36(sp)
  a31a92:	d42e                	sw	a1,40(sp)
  a31a94:	d632                	sw	a2,44(sp)
  a31a96:	d836                	sw	a3,48(sp)
  a31a98:	da3a                	sw	a4,52(sp)
  a31a9a:	dc3e                	sw	a5,56(sp)
  a31a9c:	de42                	sw	a6,60(sp)
  a31a9e:	c0c6                	sw	a7,64(sp)
  a31aa0:	c2ca                	sw	s2,68(sp)
  a31aa2:	c4ce                	sw	s3,72(sp)
  a31aa4:	c6d2                	sw	s4,76(sp)
  a31aa6:	c8d6                	sw	s5,80(sp)
  a31aa8:	cada                	sw	s6,84(sp)
  a31aaa:	ccde                	sw	s7,88(sp)
  a31aac:	cee2                	sw	s8,92(sp)
  a31aae:	d0e6                	sw	s9,96(sp)
  a31ab0:	d2ea                	sw	s10,100(sp)
  a31ab2:	d4ee                	sw	s11,104(sp)
  a31ab4:	d6f2                	sw	t3,108(sp)
  a31ab6:	d8f6                	sw	t4,112(sp)
  a31ab8:	dafa                	sw	t5,116(sp)
  a31aba:	dcfe                	sw	t6,120(sp)
  a31abc:	341022f3          	csrr	t0,mepc
  a31ac0:	de96                	sw	t0,124(sp)
  a31ac2:	34011073          	csrw	mscratch,sp
  a31ac6:	fffd3117          	auipc	sp,0xfffd3
  a31aca:	63a10113          	addi	sp,sp,1594 # a05100 <__irq_stack_top__>
  a31ace:	b3afb0ef          	jal	ra,a2ce08 <interrupt3_handler>
  a31ad2:	34002173          	csrr	sp,mscratch
  a31ad6:	6289                	lui	t0,0x2
  a31ad8:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31adc:	3002a073          	csrs	mstatus,t0
  a31ae0:	52f6                	lw	t0,124(sp)
  a31ae2:	34129073          	csrw	mepc,t0
  a31ae6:	4082                	lw	ra,0(sp)
  a31ae8:	42c2                	lw	t0,16(sp)
  a31aea:	4352                	lw	t1,20(sp)
  a31aec:	43e2                	lw	t2,24(sp)
  a31aee:	4472                	lw	s0,28(sp)
  a31af0:	5482                	lw	s1,32(sp)
  a31af2:	5512                	lw	a0,36(sp)
  a31af4:	55a2                	lw	a1,40(sp)
  a31af6:	5632                	lw	a2,44(sp)
  a31af8:	56c2                	lw	a3,48(sp)
  a31afa:	5752                	lw	a4,52(sp)
  a31afc:	57e2                	lw	a5,56(sp)
  a31afe:	5872                	lw	a6,60(sp)
  a31b00:	4886                	lw	a7,64(sp)
  a31b02:	4916                	lw	s2,68(sp)
  a31b04:	49a6                	lw	s3,72(sp)
  a31b06:	4a36                	lw	s4,76(sp)
  a31b08:	4ac6                	lw	s5,80(sp)
  a31b0a:	4b56                	lw	s6,84(sp)
  a31b0c:	4be6                	lw	s7,88(sp)
  a31b0e:	4c76                	lw	s8,92(sp)
  a31b10:	5c86                	lw	s9,96(sp)
  a31b12:	5d16                	lw	s10,100(sp)
  a31b14:	5da6                	lw	s11,104(sp)
  a31b16:	5e36                	lw	t3,108(sp)
  a31b18:	5ec6                	lw	t4,112(sp)
  a31b1a:	5f56                	lw	t5,116(sp)
  a31b1c:	5fe6                	lw	t6,120(sp)
  a31b1e:	6109                	addi	sp,sp,128
  a31b20:	30200073          	mret

00a31b24 <default_interrupt4_handler>:
  a31b24:	30047073          	csrci	mstatus,8
  a31b28:	7119                	addi	sp,sp,-128
  a31b2a:	c006                	sw	ra,0(sp)
  a31b2c:	c20a                	sw	sp,4(sp)
  a31b2e:	c40e                	sw	gp,8(sp)
  a31b30:	c612                	sw	tp,12(sp)
  a31b32:	c816                	sw	t0,16(sp)
  a31b34:	ca1a                	sw	t1,20(sp)
  a31b36:	cc1e                	sw	t2,24(sp)
  a31b38:	ce22                	sw	s0,28(sp)
  a31b3a:	d026                	sw	s1,32(sp)
  a31b3c:	d22a                	sw	a0,36(sp)
  a31b3e:	d42e                	sw	a1,40(sp)
  a31b40:	d632                	sw	a2,44(sp)
  a31b42:	d836                	sw	a3,48(sp)
  a31b44:	da3a                	sw	a4,52(sp)
  a31b46:	dc3e                	sw	a5,56(sp)
  a31b48:	de42                	sw	a6,60(sp)
  a31b4a:	c0c6                	sw	a7,64(sp)
  a31b4c:	c2ca                	sw	s2,68(sp)
  a31b4e:	c4ce                	sw	s3,72(sp)
  a31b50:	c6d2                	sw	s4,76(sp)
  a31b52:	c8d6                	sw	s5,80(sp)
  a31b54:	cada                	sw	s6,84(sp)
  a31b56:	ccde                	sw	s7,88(sp)
  a31b58:	cee2                	sw	s8,92(sp)
  a31b5a:	d0e6                	sw	s9,96(sp)
  a31b5c:	d2ea                	sw	s10,100(sp)
  a31b5e:	d4ee                	sw	s11,104(sp)
  a31b60:	d6f2                	sw	t3,108(sp)
  a31b62:	d8f6                	sw	t4,112(sp)
  a31b64:	dafa                	sw	t5,116(sp)
  a31b66:	dcfe                	sw	t6,120(sp)
  a31b68:	341022f3          	csrr	t0,mepc
  a31b6c:	de96                	sw	t0,124(sp)
  a31b6e:	34011073          	csrw	mscratch,sp
  a31b72:	fffd3117          	auipc	sp,0xfffd3
  a31b76:	58e10113          	addi	sp,sp,1422 # a05100 <__irq_stack_top__>
  a31b7a:	acefb0ef          	jal	ra,a2ce48 <interrupt4_handler>
  a31b7e:	34002173          	csrr	sp,mscratch
  a31b82:	6289                	lui	t0,0x2
  a31b84:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31b88:	3002a073          	csrs	mstatus,t0
  a31b8c:	52f6                	lw	t0,124(sp)
  a31b8e:	34129073          	csrw	mepc,t0
  a31b92:	4082                	lw	ra,0(sp)
  a31b94:	42c2                	lw	t0,16(sp)
  a31b96:	4352                	lw	t1,20(sp)
  a31b98:	43e2                	lw	t2,24(sp)
  a31b9a:	4472                	lw	s0,28(sp)
  a31b9c:	5482                	lw	s1,32(sp)
  a31b9e:	5512                	lw	a0,36(sp)
  a31ba0:	55a2                	lw	a1,40(sp)
  a31ba2:	5632                	lw	a2,44(sp)
  a31ba4:	56c2                	lw	a3,48(sp)
  a31ba6:	5752                	lw	a4,52(sp)
  a31ba8:	57e2                	lw	a5,56(sp)
  a31baa:	5872                	lw	a6,60(sp)
  a31bac:	4886                	lw	a7,64(sp)
  a31bae:	4916                	lw	s2,68(sp)
  a31bb0:	49a6                	lw	s3,72(sp)
  a31bb2:	4a36                	lw	s4,76(sp)
  a31bb4:	4ac6                	lw	s5,80(sp)
  a31bb6:	4b56                	lw	s6,84(sp)
  a31bb8:	4be6                	lw	s7,88(sp)
  a31bba:	4c76                	lw	s8,92(sp)
  a31bbc:	5c86                	lw	s9,96(sp)
  a31bbe:	5d16                	lw	s10,100(sp)
  a31bc0:	5da6                	lw	s11,104(sp)
  a31bc2:	5e36                	lw	t3,108(sp)
  a31bc4:	5ec6                	lw	t4,112(sp)
  a31bc6:	5f56                	lw	t5,116(sp)
  a31bc8:	5fe6                	lw	t6,120(sp)
  a31bca:	6109                	addi	sp,sp,128
  a31bcc:	30200073          	mret

00a31bd0 <default_interrupt5_handler>:
  a31bd0:	30047073          	csrci	mstatus,8
  a31bd4:	7119                	addi	sp,sp,-128
  a31bd6:	c006                	sw	ra,0(sp)
  a31bd8:	c20a                	sw	sp,4(sp)
  a31bda:	c40e                	sw	gp,8(sp)
  a31bdc:	c612                	sw	tp,12(sp)
  a31bde:	c816                	sw	t0,16(sp)
  a31be0:	ca1a                	sw	t1,20(sp)
  a31be2:	cc1e                	sw	t2,24(sp)
  a31be4:	ce22                	sw	s0,28(sp)
  a31be6:	d026                	sw	s1,32(sp)
  a31be8:	d22a                	sw	a0,36(sp)
  a31bea:	d42e                	sw	a1,40(sp)
  a31bec:	d632                	sw	a2,44(sp)
  a31bee:	d836                	sw	a3,48(sp)
  a31bf0:	da3a                	sw	a4,52(sp)
  a31bf2:	dc3e                	sw	a5,56(sp)
  a31bf4:	de42                	sw	a6,60(sp)
  a31bf6:	c0c6                	sw	a7,64(sp)
  a31bf8:	c2ca                	sw	s2,68(sp)
  a31bfa:	c4ce                	sw	s3,72(sp)
  a31bfc:	c6d2                	sw	s4,76(sp)
  a31bfe:	c8d6                	sw	s5,80(sp)
  a31c00:	cada                	sw	s6,84(sp)
  a31c02:	ccde                	sw	s7,88(sp)
  a31c04:	cee2                	sw	s8,92(sp)
  a31c06:	d0e6                	sw	s9,96(sp)
  a31c08:	d2ea                	sw	s10,100(sp)
  a31c0a:	d4ee                	sw	s11,104(sp)
  a31c0c:	d6f2                	sw	t3,108(sp)
  a31c0e:	d8f6                	sw	t4,112(sp)
  a31c10:	dafa                	sw	t5,116(sp)
  a31c12:	dcfe                	sw	t6,120(sp)
  a31c14:	341022f3          	csrr	t0,mepc
  a31c18:	de96                	sw	t0,124(sp)
  a31c1a:	34011073          	csrw	mscratch,sp
  a31c1e:	fffd3117          	auipc	sp,0xfffd3
  a31c22:	4e210113          	addi	sp,sp,1250 # a05100 <__irq_stack_top__>
  a31c26:	a62fb0ef          	jal	ra,a2ce88 <interrupt5_handler>
  a31c2a:	34002173          	csrr	sp,mscratch
  a31c2e:	6289                	lui	t0,0x2
  a31c30:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31c34:	3002a073          	csrs	mstatus,t0
  a31c38:	52f6                	lw	t0,124(sp)
  a31c3a:	34129073          	csrw	mepc,t0
  a31c3e:	4082                	lw	ra,0(sp)
  a31c40:	42c2                	lw	t0,16(sp)
  a31c42:	4352                	lw	t1,20(sp)
  a31c44:	43e2                	lw	t2,24(sp)
  a31c46:	4472                	lw	s0,28(sp)
  a31c48:	5482                	lw	s1,32(sp)
  a31c4a:	5512                	lw	a0,36(sp)
  a31c4c:	55a2                	lw	a1,40(sp)
  a31c4e:	5632                	lw	a2,44(sp)
  a31c50:	56c2                	lw	a3,48(sp)
  a31c52:	5752                	lw	a4,52(sp)
  a31c54:	57e2                	lw	a5,56(sp)
  a31c56:	5872                	lw	a6,60(sp)
  a31c58:	4886                	lw	a7,64(sp)
  a31c5a:	4916                	lw	s2,68(sp)
  a31c5c:	49a6                	lw	s3,72(sp)
  a31c5e:	4a36                	lw	s4,76(sp)
  a31c60:	4ac6                	lw	s5,80(sp)
  a31c62:	4b56                	lw	s6,84(sp)
  a31c64:	4be6                	lw	s7,88(sp)
  a31c66:	4c76                	lw	s8,92(sp)
  a31c68:	5c86                	lw	s9,96(sp)
  a31c6a:	5d16                	lw	s10,100(sp)
  a31c6c:	5da6                	lw	s11,104(sp)
  a31c6e:	5e36                	lw	t3,108(sp)
  a31c70:	5ec6                	lw	t4,112(sp)
  a31c72:	5f56                	lw	t5,116(sp)
  a31c74:	5fe6                	lw	t6,120(sp)
  a31c76:	6109                	addi	sp,sp,128
  a31c78:	30200073          	mret

00a31c7c <default_local_interrupt_handler>:
  a31c7c:	30047073          	csrci	mstatus,8
  a31c80:	7119                	addi	sp,sp,-128
  a31c82:	c006                	sw	ra,0(sp)
  a31c84:	c20a                	sw	sp,4(sp)
  a31c86:	c40e                	sw	gp,8(sp)
  a31c88:	c612                	sw	tp,12(sp)
  a31c8a:	c816                	sw	t0,16(sp)
  a31c8c:	ca1a                	sw	t1,20(sp)
  a31c8e:	cc1e                	sw	t2,24(sp)
  a31c90:	ce22                	sw	s0,28(sp)
  a31c92:	d026                	sw	s1,32(sp)
  a31c94:	d22a                	sw	a0,36(sp)
  a31c96:	d42e                	sw	a1,40(sp)
  a31c98:	d632                	sw	a2,44(sp)
  a31c9a:	d836                	sw	a3,48(sp)
  a31c9c:	da3a                	sw	a4,52(sp)
  a31c9e:	dc3e                	sw	a5,56(sp)
  a31ca0:	de42                	sw	a6,60(sp)
  a31ca2:	c0c6                	sw	a7,64(sp)
  a31ca4:	c2ca                	sw	s2,68(sp)
  a31ca6:	c4ce                	sw	s3,72(sp)
  a31ca8:	c6d2                	sw	s4,76(sp)
  a31caa:	c8d6                	sw	s5,80(sp)
  a31cac:	cada                	sw	s6,84(sp)
  a31cae:	ccde                	sw	s7,88(sp)
  a31cb0:	cee2                	sw	s8,92(sp)
  a31cb2:	d0e6                	sw	s9,96(sp)
  a31cb4:	d2ea                	sw	s10,100(sp)
  a31cb6:	d4ee                	sw	s11,104(sp)
  a31cb8:	d6f2                	sw	t3,108(sp)
  a31cba:	d8f6                	sw	t4,112(sp)
  a31cbc:	dafa                	sw	t5,116(sp)
  a31cbe:	dcfe                	sw	t6,120(sp)
  a31cc0:	341022f3          	csrr	t0,mepc
  a31cc4:	de96                	sw	t0,124(sp)
  a31cc6:	34011073          	csrw	mscratch,sp
  a31cca:	fffd3117          	auipc	sp,0xfffd3
  a31cce:	43610113          	addi	sp,sp,1078 # a05100 <__irq_stack_top__>
  a31cd2:	9f6fb0ef          	jal	ra,a2cec8 <local_interrupt_handler>
  a31cd6:	34002173          	csrr	sp,mscratch
  a31cda:	6289                	lui	t0,0x2
  a31cdc:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31ce0:	3002a073          	csrs	mstatus,t0
  a31ce4:	52f6                	lw	t0,124(sp)
  a31ce6:	34129073          	csrw	mepc,t0
  a31cea:	4082                	lw	ra,0(sp)
  a31cec:	42c2                	lw	t0,16(sp)
  a31cee:	4352                	lw	t1,20(sp)
  a31cf0:	43e2                	lw	t2,24(sp)
  a31cf2:	4472                	lw	s0,28(sp)
  a31cf4:	5482                	lw	s1,32(sp)
  a31cf6:	5512                	lw	a0,36(sp)
  a31cf8:	55a2                	lw	a1,40(sp)
  a31cfa:	5632                	lw	a2,44(sp)
  a31cfc:	56c2                	lw	a3,48(sp)
  a31cfe:	5752                	lw	a4,52(sp)
  a31d00:	57e2                	lw	a5,56(sp)
  a31d02:	5872                	lw	a6,60(sp)
  a31d04:	4886                	lw	a7,64(sp)
  a31d06:	4916                	lw	s2,68(sp)
  a31d08:	49a6                	lw	s3,72(sp)
  a31d0a:	4a36                	lw	s4,76(sp)
  a31d0c:	4ac6                	lw	s5,80(sp)
  a31d0e:	4b56                	lw	s6,84(sp)
  a31d10:	4be6                	lw	s7,88(sp)
  a31d12:	4c76                	lw	s8,92(sp)
  a31d14:	5c86                	lw	s9,96(sp)
  a31d16:	5d16                	lw	s10,100(sp)
  a31d18:	5da6                	lw	s11,104(sp)
  a31d1a:	5e36                	lw	t3,108(sp)
  a31d1c:	5ec6                	lw	t4,112(sp)
  a31d1e:	5f56                	lw	t5,116(sp)
  a31d20:	5fe6                	lw	t6,120(sp)
  a31d22:	6109                	addi	sp,sp,128
  a31d24:	30200073          	mret

00a31d28 <global_interrupt_lock>:
  a31d28:	30002573          	csrr	a0,mstatus
  a31d2c:	42a1                	li	t0,8
  a31d2e:	3002b073          	csrc	mstatus,t0
  a31d32:	8082                	ret

00a31d34 <global_interrupt_unlock>:
  a31d34:	30002573          	csrr	a0,mstatus
  a31d38:	42a1                	li	t0,8
  a31d3a:	3002a073          	csrs	mstatus,t0
  a31d3e:	8082                	ret

00a31d40 <global_interrupt_restore>:
  a31d40:	30051073          	csrw	mstatus,a0
  a31d44:	8082                	ret
  a31d46:	0000                	unimp
  a31d48:	ffff                	.2byte	0xffff
  a31d4a:	00ff                	.2byte	0xff
  a31d4c:	ffff                	.2byte	0xffff
  a31d4e:	00ff                	.2byte	0xff

00a31d50 <__clz_tab>:
  a31d50:	0100 0202 0303 0303 0404 0404 0404 0404     ................
  a31d60:	0505 0505 0505 0505 0505 0505 0505 0505     ................
  a31d70:	0606 0606 0606 0606 0606 0606 0606 0606     ................
  a31d80:	0606 0606 0606 0606 0606 0606 0606 0606     ................
  a31d90:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a31da0:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a31db0:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a31dc0:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a31dd0:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31de0:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31df0:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31e00:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31e10:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31e20:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31e30:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31e40:	0808 0808 0808 0808 0808 0808 0808 0808     ................

00a31e50 <sfc_cfg>:
  a31e50:	0104 0000 0000 0020 0000 0080 6c46 7361     ...... .....Flas
  a31e60:	6268 6f6f 2074 6155 7472 4920 696e 2074     hboot Uart Init 
  a31e70:	7553 6363 0021 0000 6c46 7361 6268 6f6f     Succ!...Flashboo
  a31e80:	2074 614d 6c6c 636f 4920 696e 2074 7553     t Malloc Init Su
  a31e90:	6363 0021 6c46 7361 2068 6e49 7469 4620     cc!.Flash Init F
  a31ea0:	6961 216c 7220 7465 3d20 0020 6c46 7361     ail! ret = .Flas
  a31eb0:	2068 6e49 7469 5320 6375 2163 0000 0000     h Init Succ!....
  a31ec0:	4653 2043 6966 2078 5253 7220 7465 3d20     SFC fix SR ret =
  a31ed0:	0000 0000 7773 6d20 646f 2c65 6c20 7665     ....sw mode, lev
  a31ee0:	6c65 735b 3a77 6863 7069 3a5d 0000 0000     el[sw:chip]:....
  a31ef0:	7768 6d20 646f 2c65 6c20 7665 6c65 635b     hw mode, level[c
  a31f00:	6968 5d70 003a 0000 6175 6970 705f 7261     hip]:...uapi_par
  a31f10:	6974 6974 6e6f 675f 7465 695f 666e 206f     tition_get_info 
  a31f20:	6166 6c69 6465 0020 7075 5f67 6c66 7361     failed .upg_flas
  a31f30:	5f68 6572 6461 6620 6961 656c 2064 0000     h_read failed ..
  a31f40:	6f4e 6e20 6565 2064 6f74 7520 6770 6172     No need to upgra
  a31f50:	6564 2e2e 002e 0000 656e 6465 7520 6770     de......need upg
  a31f60:	6172 6564 0000 0000 2d2d 2d2d 2d2d 2d2d     rade....--------
  a31f70:	2d2d 2d2d 2d2d 2d2d 2d2d 2d2d 2d2d 2d2d     ----------------
  a31f80:	2d2d 0000 7075 7267 6461 2065 6166 6c69     --..upgrade fail
  a31f90:	6465 202c 6572 6573 2074 6f6e 0077 0000     ed, reset now...
  a31fa0:	7075 7267 6461 2065 7573 6363 7365 2c73     upgrade success,
  a31fb0:	7220 7365 7465 6e20 776f 0000 6547 2074      reset now..Get 
  a31fc0:	7061 2070 6170 7472 7469 6f69 206e 6166     app partition fa
  a31fd0:	6c69 6465 0021 0000 6c66 7361 5f68 6e65     iled!...flash_en
  a31fe0:	7263 7079 2074 6964 6173 6c62 2e65 0000     crypt disable...
  a31ff0:	6441 7264 6e20 746f 3220 3635 7962 6574     Addr not 256byte
  a32000:	6120 696c 6e67 656d 746e 0020 6c66 7361      alignment .flas
  a32010:	5f68 6e65 7263 7079 2074 6e65 6261 656c     h_encrypt enable
  a32020:	002e 0000 6e45 7263 7079 2074 646f 6b72     ....Encrypt odrk
  a32030:	2031 7265 3d72 0000 6e45 7263 7079 2074     1 err=..Encrypt 
  a32040:	6166 6370 6520 7272 003d 0000 6e45 7263     fapc err=...Encr
  a32050:	7079 2074 7962 6170 7373 6520 7272 003d     ypt bypass err=.
  a32060:	6576 6972 7966 6120 7070 6820 6165 2064     verify app head 
  a32070:	6166 6c69 6465 2021 6572 3d74 0000 0000     failed! ret=....
  a32080:	6576 6972 7966 6120 7070 6220 646f 2079     verify app body 
  a32090:	6166 6c69 6465 2121 7220 7465 003d 0000     failed!! ret=...
  a320a0:	6567 5f74 6b70 5f67 6568 6461 7265 6620     get_pkg_header f
  a320b0:	6961 2c6c 7220 7465 3d20 0020 7075 5f67     ail, ret = .upg_
  a320c0:	6576 6972 7966 6620 6961 2c6c 7220 7465     verify fail, ret
  a320d0:	3d20 0020 6572 6573 2074 7075 7267 6461      = .reset upgrad
  a320e0:	2065 6c66 6761 6620 6961 2c6c 7220 7465     e flag fail, ret
  a320f0:	003d 0000 6572 7571 7365 2074 7075 7267     =...request upgr
  a32100:	6461 2065 6166 6c69 202c 6572 3d74 0000     ade fail, ret=..
  a32110:	7254 2079 6f66 6174 6620 7869 6120 7070     Try fota fix app
  a32120:	002e 0000 6c46 7361 6268 6f6f 2074 6162     ....Flashboot ba
  a32130:	6b63 7075 7720 726f 696b 676e 0021 0000     ckup working!...
  a32140:	6c46 7361 6268 6f6f 2074 6170 7472 7469     Flashboot partit
  a32150:	6f69 206e 6e69 6f66 6720 7465 6620 6961     ion info get fai
  a32160:	216c 0000 6552 6f63 6576 7972 6520 6172     l!..Recovery era
  a32170:	6573 6620 6961 656c 2164 2021 6572 2074     se failed!! ret 
  a32180:	203d 0000 6552 6f63 6576 7972 7720 6972     = ..Recovery wri
  a32190:	6574 6620 6961 656c 2164 2021 6572 2074     te failed!! ret 
  a321a0:	203d 0000 6552 6f63 6576 7972 6f20 216b     = ..Recovery ok!
  a321b0:	0000 0000 4556 0000 6964 5f65 6469 6520     ....VE..die_id e
  a321c0:	7566 6573 725f 6165 5f64 7469 6d65 6620     fuse_read_item f
  a321d0:	6961 216c 0000 0000 6964 2065 6469 6d20     ail!....die id m
  a321e0:	6d65 6d63 2070 6166 6c69 0021 6d69 6761     emcmp fail!.imag
  a321f0:	2065 6469 6520 7272 726f 0021 6576 7372     e id error!.vers
  a32200:	6f69 206e 6665 7375 5f65 6572 6461 695f     ion efuse_read_i
  a32210:	6574 206d 6166 6c69 0021 0000 736d 6469     tem fail!...msid
  a32220:	6320 6d6f 6170 6572 6620 6961 216c 0000      compare fail!..
  a32230:	6665 7375 5f65 6572 6461 695f 6574 206d     efuse_read_item 
  a32240:	6576 6972 7966 6520 616e 6c62 2065 6166     verify enable fa
  a32250:	6c69 0021 6576 7372 6f69 206e 6f63 706d     il!.version comp
  a32260:	7261 2065 6166 6c69 0021 0000               are fail!...

00a3226c <g_verify_table>:
  a3226c:	0000 0000 f01e 4bd2 0000 0000 0100 0000     .......K........
  a3227c:	f02d 4bd2 0000 0000 0002 0000 3c1e 4b1e     -..K.........<.K
  a3228c:	0003 0000 0102 0000 3c2d 4b1e 0003 0000     ........-<.K....
  a3229c:	0003 0000 871e 4b69 0003 0000 0103 0000     ......iK........
  a322ac:	872d 4b69 0003 0000 0004 0000 3c1e 4b1e     -.iK.........<.K
  a322bc:	0003 0000 0104 0000 3c2d 4b1e 0003 0000     ........-<.K....
  a322cc:	0005 0000 871e 4b69 0003 0000 0105 0000     ......iK........
  a322dc:	872d 4b69 0003 0000 0201 0000 a51e 4b87     -.iK...........K
  a322ec:	0004 0000 0301 0000 a52d 4b87 0004 0000     ........-..K....
  a322fc:	0006 0000 2d1e 4b0f 0002 0000 0106 0000     .....-.K........
  a3230c:	2d2d 4b0f 0002 0000 6573 7563 6572 615f     --.K....secure_a
  a3231c:	7475 6568 746e 6369 7461 2065 7264 5f76     uthenticate drv_
  a3232c:	6f72 5f6d 6963 6870 7265 735f 6168 3532     rom_cipher_sha25
  a3233c:	2036 6166 6c69 0021 6573 7563 6572 615f     6 fail!.secure_a
  a3234c:	7475 6568 746e 6369 7461 2065 7264 5f76     uthenticate drv_
  a3235c:	6f72 5f6d 6963 6870 7265 705f 656b 625f     rom_cipher_pke_b
  a3236c:	3270 3635 5f72 6576 6972 7966 6620 6961     p256r_verify fai
  a3237c:	216c 0000 6576 6972 7966 695f 616d 6567     l!..verify_image
  a3238c:	635f 646f 5f65 7261 6165 6420 7672 725f     _code_area drv_r
  a3239c:	6d6f 635f 7069 6568 5f72 6873 3261 3635     om_cipher_sha256
  a323ac:	0021 0000 6576 6972 7966 695f 616d 6567     !...verify_image
  a323bc:	635f 646f 5f65 7261 6165 6820 7361 2068     _code_area hash 
  a323cc:	656d 636d 706d 6620 6961 216c 0000 0000     memcmp fail!....
  a323dc:	6576 6972 7966 695f 616d 6567 635f 646f     verify_image_cod
  a323ec:	5f65 7261 6165 6620 6961 216c 0000 0000     e_area fail!....
  a323fc:	6576 6972 7966 695f 616d 6567 6b5f 7965     verify_image_key
  a3240c:	615f 6572 2061 6573 7563 6572 7620 7265     _area secure ver
  a3241c:	6669 2079 6964 6173 6c62 2165 0000 0000     ify disable!....
  a3242c:	6576 6972 7966 695f 616d 6567 6b5f 7965     verify_image_key
  a3243c:	615f 6572 2061 6573 7563 6572 7620 7265     _area secure ver
  a3244c:	6669 2079 7265 6f72 2172 0000 6576 6972     ify error!..veri
  a3245c:	7966 695f 616d 6567 6b5f 7965 615f 6572     fy_image_key_are
  a3246c:	2061 6f72 746f 656b 5f79 7473 7461 7375     a rootkey_status
  a3247c:	6920 766e 6c61 6469 0021 0000 6576 6972      invalid!...veri
  a3248c:	7966 695f 616d 6567 6b5f 7965 615f 6572     fy_image_key_are
  a3249c:	2061 6d69 6761 2065 6469 6520 7272 726f     a image id error
  a324ac:	0021 0000 6576 6972 7966 695f 616d 6567     !...verify_image
  a324bc:	6b5f 7965 615f 6572 2061 6573 7563 6572     _key_area secure
  a324cc:	615f 7475 6568 746e 6369 7461 2165 0000     _authenticate!..
  a324dc:	6576 6972 7966 695f 616d 6567 6b5f 7965     verify_image_key
  a324ec:	615f 6572 2061 656b 2079 6576 7372 6f69     _area key versio
  a324fc:	206e 7265 6f72 2172 0000 0000 6576 6972     n error!....veri
  a3250c:	7966 695f 616d 6567 6b5f 7965 615f 6572     fy_image_key_are
  a3251c:	2061 736d 6469 6520 7272 726f 0021 0000     a msid error!...
  a3252c:	6576 6972 7966 695f 616d 6567 6b5f 7965     verify_image_key
  a3253c:	615f 6572 2061 6964 2065 6469 6520 7272     _area die id err
  a3254c:	726f 0021 6576 6972 7966 695f 616d 6567     or!.verify_image
  a3255c:	6b5f 7965 615f 6572 2061 6166 6c69 0021     _key_area fail!.
  a3256c:	6576 6972 7966 695f 616d 6567 635f 646f     verify_image_cod
  a3257c:	5f65 6e69 6f66 7320 6365 7275 2065 6576     e_info secure ve
  a3258c:	6972 7966 6420 7369 6261 656c 0021 0000     rify disable!...
  a3259c:	6576 6972 7966 695f 616d 6567 635f 646f     verify_image_cod
  a325ac:	5f65 6e69 6f66 7320 6365 7275 2065 6576     e_info secure ve
  a325bc:	6972 7966 6520 7272 726f 0021 6576 6972     rify error!.veri
  a325cc:	7966 695f 616d 6567 635f 646f 5f65 6e69     fy_image_code_in
  a325dc:	6f66 6920 616d 6567 6920 2064 7265 6f72     fo image id erro
  a325ec:	2172 0000 6576 6972 7966 695f 616d 6567     r!..verify_image
  a325fc:	635f 646f 5f65 6e69 6f66 7320 6365 7275     _code_info secur
  a3260c:	5f65 7561 6874 6e65 6974 6163 6574 0021     e_authenticate!.
  a3261c:	6576 6972 7966 695f 616d 6567 635f 646f     verify_image_cod
  a3262c:	5f65 6e69 6f66 6b20 7965 7620 7265 6973     e_info key versi
  a3263c:	6e6f 6520 7272 726f 0021 0000 6576 6972     on error!...veri
  a3264c:	7966 695f 616d 6567 635f 646f 5f65 6e69     fy_image_code_in
  a3265c:	6f66 6d20 6973 2064 7265 6f72 2172 0000     fo msid error!..
  a3266c:	6576 6972 7966 695f 616d 6567 635f 646f     verify_image_cod
  a3267c:	5f65 6e69 6f66 6620 6961 216c 0000 0000     e_info fail!....

00a3268c <g_sha256_ival>:
  a3268c:	096a 67e6 67bb 85ae 6e3c 72f3 4fa5 3af5     j..g.g..<n.r.O.:
  a3269c:	0e51 7f52 059b 8c68 831f abd9 e05b 19cd     Q.R...h.....[...

00a326ac <g_sm3_ival>:
  a326ac:	8073 6f16 1449 b9b2 2417 d742 8ada 0006     s..oI....$B.....
  a326bc:	6fa9 bc30 3116 aa38 8de3 4dee fbb0 4e0e     .o0..18....M...N
  a326cc:	a558 00a2 a516 00a2 a5e6 00a2 a678 00a2     X...........x...
  a326dc:	a692 00a2 b8c8 00a2 b8b2 00a2 b8aa 00a2     ................
  a326ec:	b8b2 00a2 b8b6 00a2 b8b2 00a2 b8c0 00a2     ................
  a326fc:	b8b2 00a2 b8b2 00a2 b8b2 00a2 b8b2 00a2     ................
  a3270c:	b8b2 00a2 b8b6 00a2 b8c0 00a2               ............

00a32718 <CSWTCH.8>:
  a32718:	1001 0020                                   .. .

00a3271c <g_hal_uart_ctrl_func_array>:
  a3271c:	b966 00a2 0000 0000 b8fc 00a2 b8ee 00a2     f...............
  a3272c:	b8e0 00a2 b8d2 00a2 b8d2 00a2 b6a4 00a2     ................
  a3273c:	b6ba 00a2 b6f0 00a2 0000 0000 b7ce 00a2     ................
  a3274c:	b7ae 00a2 0000 0000 0000 0000 0000 0000     ................
  a3275c:	0000 0000 b6d2 00a2 b646 00a2 b658 00a2     ........F...X...
  a3276c:	0000 0000                                   ....

00a32770 <g_uart_base_addrs>:
  a32770:	0000 4401 1000 4401 2000 4401               ...D...D. .D

00a3277c <g_default_erase_cmds>:
  a3277c:	c639 ffff 06c1 4000 0101 0400               9......@....

00a32788 <g_default_quad_enable>:
  a32788:	0002 0000 0000 0000                         ........

00a32790 <g_default_read_cmds>:
  a32790:	0019 0000                                   ....

00a32794 <g_default_write_cmds>:
  a32794:	0001 0000 0011 0000                         ........

00a3279c <g_flash_common_erase_cmds>:
  a3279c:	c639 ffff 06c1 4000 0291 2000 0101 0400     9......@... ....

00a327ac <g_flash_common_read_cmds>:
  a327ac:	0019 0000 4059 0000 49d9 0000 55d9 0000     ....Y@...I...U..
  a327bc:	6b59 0000 f759 0000                         Yk..Y...

00a327c4 <g_flash_common_write_cmds>:
  a327c4:	0001 0000 0011 0000 4000 0000 4000 0000     .........@...@..
  a327d4:	2991 0000 4000 0000                         .)...@..

00a327dc <g_flash_gd_bus_enable>:
  a327dc:	0301 0005 0000 0301 0135 0001 0002 0000     ........5.......
  a327ec:	0000 0000                                   ....

00a327f0 <g_flash_spi_info_list>:
  a327f0:	40c8 0016 0000 0040 0004 0000 27ac 00a3     .@....@......'..
  a32800:	27c4 00a3 279c 00a3 27dc 00a3               .'...'...'..

00a3280c <g_flash_spi_unknown_info>:
  a3280c:	ffff 00ff 0000 0008 0003 0000 2790 00a3     .............'..
  a3281c:	2794 00a3 277c 00a3 2788 00a3 6f4e 6e20     .'..|'...'..No n
  a3282c:	6565 2064 6f74 6620 7869 5320 2152 0a0d     eed to fix SR!..
  a3283c:	0000 0000 5253 6620 7869 6f20 216b 0a0d     ....SR fix ok!..
  a3284c:	0000 0000 5253 6425 305b 2578 5d78 6e20     ....SR%d[0x%x] n
  a3285c:	6565 7364 6620 7869 6e69 2c67 6520 7078     eeds fixing, exp
  a3286c:	6365 5b74 7830 7825 0d5d 000a               ect[0x%x]...

00a32878 <g_efuse_cfg>:
  a32878:	0000 0008 0003 0008 00a0 0003 0270 0020     ............p. .
  a32888:	0003 0290 0008 0003 0298 0008 0003 02a0     ................
  a32898:	0100 0003 03a0 0020 0003 03c0 0001 0003     ...... .........
  a328a8:	03e8 0008 0003 0630 0030 0003 0660 0030     ......0.0...`.0.
  a328b8:	0003 0690 0030 0003 06c0 0030 0003 06f0     ....0.....0.....
  a328c8:	0080 0003 02a0 0100 0003 046f 0001 0003     ..........o.....
  a328d8:	0460 000f 0003 0470 0010 0003 0770 0030     `.....p.....p.0.
  a328e8:	0003 0000 0020 0000 7830 0000 7075 6164     .... ...0x..upda
  a328f8:	6574 725f 7365 7465 635f 756f 746e 0020     te_reset_count .
  a32908:	4f52 7c4d 6564 6166 6c75 5f74 6168 646e     ROM|default_hand
  a32918:	656c 2072 203a 6e69 6574 7272 7075 2074     ler : interrupt 
  a32928:	6469 5b78 6425 0a5d 0000 0000 4f52 7c4d     idx[%d].....ROM|
  a32938:	6f4f 7370 2d20 6820 7261 2064 6166 6c75     Oops - hard faul
  a32948:	0d74 000a 4f52 7c4d 7865 6563 7470 6f69     t...ROM|exceptio
  a32958:	3a6e 7825 0a0d 0000 4f52 7c4d 6f4f 7370     n:%x....ROM|Oops
  a32968:	4e3a 494d 000a 0000 4f52 7c4d 6f4f 7370     :NMI....ROM|Oops
  a32978:	2d20 6920 736e 206e 6170 6567 6620 7561      - insn page fau
  a32988:	746c 0a0d 0000 0000 4f52 7c4d 6f4f 7370     lt......ROM|Oops
  a32998:	2d20 6c20 616f 2064 6170 6567 6620 7561      - load page fau
  a329a8:	746c 0a0d 0000 0000 4f52 7c4d 6f4f 7370     lt......ROM|Oops
  a329b8:	2d20 6c20 636f 206b 7075 0a0d 0000 0000      - lock up......
  a329c8:	4f52 7c4d 6f4f 7370 2d20 7320 6f74 6572     ROM|Oops - store
  a329d8:	7020 6761 2065 6166 6c75 0d74 000a 0000      page fault.....
  a329e8:	4f52 7c4d 6f4f 7370 2d20 6520 7262 6165     ROM|Oops - ebrea
  a329f8:	0d6b 000a 4f52 7c4d 6f4f 7370 2d20 6520     k...ROM|Oops - e
  a32a08:	766e 7269 6e6f 656d 746e 6320 6c61 206c     nvironment call 
  a32a18:	7266 6d6f 4d20 6d2d 646f 0d65 000a 0000     from M-mode.....
  a32a28:	4f52 7c4d 6f4f 7370 2d20 6520 766e 7269     ROM|Oops - envir
  a32a38:	6e6f 656d 746e 6320 6c61 206c 7266 6d6f     onment call from
  a32a48:	5320 6d2d 646f 0d65 000a 0000 4f52 7c4d      S-mode.....ROM|
  a32a58:	6f4f 7370 2d20 6520 766e 7269 6e6f 656d     Oops - environme
  a32a68:	746e 6320 6c61 206c 7266 6d6f 5520 6d2d     nt call from U-m
  a32a78:	646f 0d65 000a 0000 4f52 7c4d 6f4f 7370     ode.....ROM|Oops
  a32a88:	2d20 6920 736e 7274 6375 6974 6e6f 6120      - instruction a
  a32a98:	6363 7365 2073 6166 6c75 0d74 000a 0000     ccess fault.....
  a32aa8:	4f52 7c4d 6f4f 7370 2d20 6920 6c6c 6765     ROM|Oops - illeg
  a32ab8:	6c61 6920 736e 7274 6375 6974 6e6f 0a0d     al instruction..
  a32ac8:	0000 0000 4f52 7c4d 6f4f 7370 2d20 6920     ....ROM|Oops - i
  a32ad8:	736e 7274 6375 6974 6e6f 6120 6464 6572     nstruction addre
  a32ae8:	7373 6d20 7369 6c61 6769 656e 0d64 000a     ss misaligned...
  a32af8:	4f52 7c4d 6f4f 7370 2d20 6c20 616f 2064     ROM|Oops - load 
  a32b08:	6361 6563 7373 6620 7561 746c 0a0d 0000     access fault....
  a32b18:	4f52 7c4d 6f4f 7370 2d20 6c20 616f 2064     ROM|Oops - load 
  a32b28:	6461 7264 7365 2073 696d 6173 696c 6e67     address misalign
  a32b38:	6465 0a0d 0000 0000 4f52 7c4d 6f4f 7370     ed......ROM|Oops
  a32b48:	2d20 7320 6f74 6572 2820 726f 4120 4f4d      - store (or AMO
  a32b58:	2029 6361 6563 7373 6620 7561 746c 0a0d     ) access fault..
  a32b68:	0000 0000 4f52 7c4d 6f4f 7370 2d20 7320     ....ROM|Oops - s
  a32b78:	6f74 6572 2820 726f 4120 4f4d 2029 6461     tore (or AMO) ad
  a32b88:	7264 7365 2073 696d 6173 696c 6e67 6465     dress misaligned
  a32b98:	0a0d 0000 4f52 7c4d 6f4f 7370 2d20 7520     ....ROM|Oops - u
  a32ba8:	6b6e 6f6e 6e77 6520 6378 7065 6974 6e6f     nknown exception
  a32bb8:	0a0d 0000 4f52 7c4d 2a2a 2a2a 2a2a 2a2a     ....ROM|********
  a32bc8:	2a2a 2a2a 2a2a 7845 6563 7470 6f69 206e     ******Exception 
  a32bd8:	6e49 6f66 6d72 7461 6f69 2a6e 2a2a 2a2a     Information*****
  a32be8:	2a2a 2a2a 2a2a 2a2a 202a 000a 4f52 7c4d     ********* ..ROM|
  a32bf8:	7775 7845 5463 7079 2065 203d 7830 7825     uwExcType = 0x%x
  a32c08:	000a 0000 4f52 7c4d 656d 6370 2020 2020     ....ROM|mepc    
  a32c18:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32c28:	736d 6174 7574 2073 2020 3d20 3020 2578     mstatus    = 0x%
  a32c38:	0a78 0000 4f52 7c4d 746d 6176 206c 2020     x...ROM|mtval   
  a32c48:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32c58:	636d 7561 6573 2020 2020 3d20 3020 2578     mcause     = 0x%
  a32c68:	0a78 0000 4f52 7c4d 6363 7561 6573 2020     x...ROM|ccause  
  a32c78:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32c88:	6172 2020 2020 2020 2020 3d20 3020 2578     ra         = 0x%
  a32c98:	0a78 0000 4f52 7c4d 7073 2020 2020 2020     x...ROM|sp      
  a32ca8:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32cb8:	7067 2020 2020 2020 2020 3d20 3020 2578     gp         = 0x%
  a32cc8:	0a78 0000 4f52 7c4d 7074 2020 2020 2020     x...ROM|tp      
  a32cd8:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32ce8:	3074 2020 2020 2020 2020 3d20 3020 2578     t0         = 0x%
  a32cf8:	0a78 0000 4f52 7c4d 3174 2020 2020 2020     x...ROM|t1      
  a32d08:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32d18:	3274 2020 2020 2020 2020 3d20 3020 2578     t2         = 0x%
  a32d28:	0a78 0000 4f52 7c4d 3073 2020 2020 2020     x...ROM|s0      
  a32d38:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32d48:	3173 2020 2020 2020 2020 3d20 3020 2578     s1         = 0x%
  a32d58:	0a78 0000 4f52 7c4d 3061 2020 2020 2020     x...ROM|a0      
  a32d68:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32d78:	3161 2020 2020 2020 2020 3d20 3020 2578     a1         = 0x%
  a32d88:	0a78 0000 4f52 7c4d 3261 2020 2020 2020     x...ROM|a2      
  a32d98:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32da8:	3361 2020 2020 2020 2020 3d20 3020 2578     a3         = 0x%
  a32db8:	0a78 0000 4f52 7c4d 3461 2020 2020 2020     x...ROM|a4      
  a32dc8:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32dd8:	3561 2020 2020 2020 2020 3d20 3020 2578     a5         = 0x%
  a32de8:	0a78 0000 4f52 7c4d 3661 2020 2020 2020     x...ROM|a6      
  a32df8:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32e08:	3761 2020 2020 2020 2020 3d20 3020 2578     a7         = 0x%
  a32e18:	0a78 0000 4f52 7c4d 3273 2020 2020 2020     x...ROM|s2      
  a32e28:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32e38:	3373 2020 2020 2020 2020 3d20 3020 2578     s3         = 0x%
  a32e48:	0a78 0000 4f52 7c4d 3473 2020 2020 2020     x...ROM|s4      
  a32e58:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32e68:	3573 2020 2020 2020 2020 3d20 3020 2578     s5         = 0x%
  a32e78:	0a78 0000 4f52 7c4d 3673 2020 2020 2020     x...ROM|s6      
  a32e88:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32e98:	3773 2020 2020 2020 2020 3d20 3020 2578     s7         = 0x%
  a32ea8:	0a78 0000 4f52 7c4d 3873 2020 2020 2020     x...ROM|s8      
  a32eb8:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32ec8:	3973 2020 2020 2020 2020 3d20 3020 2578     s9         = 0x%
  a32ed8:	0a78 0000 4f52 7c4d 3173 2030 2020 2020     x...ROM|s10     
  a32ee8:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32ef8:	3173 2031 2020 2020 2020 3d20 3020 2578     s11        = 0x%
  a32f08:	0a78 0000 4f52 7c4d 3374 2020 2020 2020     x...ROM|t3      
  a32f18:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32f28:	3474 2020 2020 2020 2020 3d20 3020 2578     t4         = 0x%
  a32f38:	0a78 0000 4f52 7c4d 3574 2020 2020 2020     x...ROM|t5      
  a32f48:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32f58:	3674 2020 2020 2020 2020 3d20 3020 2578     t6         = 0x%
  a32f68:	0a78 0000 4f52 7c4d 2a2a 2a2a 2a2a 2a2a     x...ROM|********
  a32f78:	2a2a 2a2a 2a2a 7845 6563 7470 6f69 206e     ******Exception 
  a32f88:	6e49 6f66 6d72 7461 6f69 206e 6e65 2a64     Information end*
  a32f98:	2a2a 2a2a 2a2a 2a2a 2a2a 2a2a 202a 000a     ************* ..
  a32fa8:	4f52 7c4d 6d6e 5f69 6168 646e 656c 2072     ROM|nmi_handler 
  a32fb8:	203a 6e69 6574 7272 7075 2074 6469 5b78     : interrupt idx[
  a32fc8:	6425 0a5d 0000 0000 555b 4750 205d 6567     %d].....[UPG] ge
  a32fd8:	2074 736d 6469 6620 6961 2c6c 6572 3d74     t msid fail,ret=
  a32fe8:	7830 7825 0a0d 0000 555b 4750 205d 736d     0x%x....[UPG] ms
  a32ff8:	6469 7720 6f72 676e 0d21 000a 555b 4750     id wrong!...[UPG
  a33008:	205d 7270 676f 6572 7373 6320 6c61 626c     ] progress callb
  a33018:	6361 206b 6572 6967 7473 6620 6961 656c     ack regist faile
  a33028:	0d64 000a 555b 4750 205d 7075 2067 6570     d...[UPG] upg pe
  a33038:	6372 6e65 2074 203a 0000 0000 0031 0000     rcent : ....1...
  a33048:	2520 000d 555b 4750 205d 6e69 7469 6620      %..[UPG] init f
  a33058:	6961 656c 2164 0a0d 0000 0000 555b 4750     ailed!......[UPG
  a33068:	205d 6e69 7469 4f20 214b 0000 555b 4750     ] init OK!..[UPG
  a33078:	205d 7075 5f67 6e69 7469 635f 7972 6f74     ] upg_init_cryto
  a33088:	635f 6766 6d20 6d65 7063 5f79 2073 6e65     _cfg memcpy_s en
  a33098:	7263 2079 6173 746c 6620 6961 2e6c 0d20     cry salt fail. .
  a330a8:	000a 0000 555b 4750 205d 7075 5f67 6e69     ....[UPG] upg_in
  a330b8:	7469 635f 7972 6f74 635f 6766 6d20 6d65     it_cryto_cfg mem
  a330c8:	7063 5f79 2073 6564 7263 2079 6173 746c     cpy_s decry salt
  a330d8:	6620 6961 2e6c 0d20 000a 0000 555b 4750      fail. .....[UPG
  a330e8:	205d 7075 5f67 6e69 7469 635f 7972 6f74     ] upg_init_cryto
  a330f8:	635f 6766 6d20 6d65 7063 5f79 2073 6e65     _cfg memcpy_s en
  a33108:	7263 2079 7669 6620 6961 2e6c 0d20 000a     cry iv fail. ...
  a33118:	555b 4750 205d 7075 5f67 6e69 7469 635f     [UPG] upg_init_c
  a33128:	7972 6f74 635f 6766 6d20 6d65 7063 5f79     ryto_cfg memcpy_
  a33138:	2073 6564 7263 2079 7669 6620 6961 2e6c     s decry iv fail.
  a33148:	0d20 000a 555b 4750 205d 7264 5f76 6f72      ...[UPG] drv_ro
  a33158:	5f6d 6963 6870 7265 735f 6d79 5f63 6e69     m_cipher_symc_in
  a33168:	7469 6620 6961 2c6c 7220 7465 3d20 3020     it fail, ret = 0
  a33178:	2578 2e78 0d20 000a 555b 4750 205d 7264     x%x. ...[UPG] dr
  a33188:	5f76 6f72 5f6d 6963 6870 7265 635f 6572     v_rom_cipher_cre
  a33198:	7461 5f65 656b 7379 6f6c 2074 6e65 7263     ate_keyslot encr
  a331a8:	2079 6166 6c69 6465 202c 6572 2074 203d     y failed, ret = 
  a331b8:	7830 7825 202e 0a0d 0000 0000 555b 4750     0x%x. ......[UPG
  a331c8:	205d 7264 5f76 6f72 5f6d 6963 6870 7265     ] drv_rom_cipher
  a331d8:	635f 6572 7461 5f65 656b 7379 6f6c 2074     _create_keyslot 
  a331e8:	6564 7263 2079 6166 6c69 6465 202c 6572     decry failed, re
  a331f8:	2074 203d 7830 7825 202e 0a0d 0000 0000     t = 0x%x. ......
  a33208:	555b 4750 205d 7075 5f67 6564 7263 5f79     [UPG] upg_decry_
  a33218:	6f66 6174 705f 746b 643a 7672 725f 6d6f     fota_pkt:drv_rom
  a33228:	635f 7069 6568 5f72 7973 636d 645f 6365     _cipher_symc_dec
  a33238:	7972 7470 6620 6961 656c 2c64 7220 7465     rypt failed, ret
  a33248:	3d20 3020 2578 2078 0a0d 0000 555b 4750      = 0x%x ....[UPG
  a33258:	205d 7075 5f67 6e65 7263 5f79 6f66 6174     ] upg_encry_fota
  a33268:	705f 746b 643a 7672 725f 6d6f 635f 7069     _pkt:drv_rom_cip
  a33278:	6568 5f72 7973 636d 645f 6365 7972 7470     her_symc_decrypt
  a33288:	6620 6961 656c 2c64 7220 7465 3d20 3020      failed, ret = 0
  a33298:	2578 2078 0a0d 0000 4f52 7c4d 705b 6e61     x%x ....ROM|[pan
  a332a8:	6369 695d 3a64 6425 632c 646f 3a65 7830     ic]id:%d,code:0x
  a332b8:	7825 632c 6c61 3a6c 7830 7825 0000 0000     %x,call:0x%x....
  a332c8:	555b 4750 205d 7075 5f67 6567 5f74 7075     [UPG] upg_get_up
  a332d8:	7267 6461 5f65 6c66 6761 665f 616c 6873     grade_flag_flash
  a332e8:	735f 6174 7472 615f 6464 2072 6166 6c69     _start_addr fail
  a332f8:	0a0d 0000 555b 4750 205d 7075 5f67 6c61     ....[UPG] upg_al
  a33308:	6f6c 5f63 6e61 5f64 6567 5f74 7075 7267     loc_and_get_upgr
  a33318:	6461 5f65 6c66 6761 7520 6770 6d5f 6c61     ade_flag upg_mal
  a33328:	6f6c 2063 6166 6c69 0a0d 0000 555b 4750     loc fail....[UPG
  a33338:	205d 7075 5f67 6c61 6f6c 5f63 6e61 5f64     ] upg_alloc_and_
  a33348:	6567 5f74 7075 7267 6461 5f65 6c66 6761     get_upgrade_flag
  a33358:	7220 6165 2064 6c66 7361 2068 6166 6c69      read flash fail
  a33368:	0a0d 0000 555b 4750 205d 7075 5f67 6c66     ....[UPG] upg_fl
  a33378:	7361 5f68 6572 6461 6620 616c 2067 6166     ash_read flag fa
  a33388:	6c69 0a0d 0000 0000 555b 4750 205d 7277     il......[UPG] wr
  a33398:	7469 2065 6f63 706d 656c 6574 203a 7830     ite complete: 0x
  a333a8:	7825 0a0d 0000 0000 555b 4750 205d 7075     %x......[UPG] up
  a333b8:	5f67 6c66 7361 5f68 7277 7469 2065 7075     g_flash_write up
  a333c8:	7267 6461 7265 6620 616c 2067 6166 6c69     grader flag fail
  a333d8:	202e 6572 2074 203d 7830 7825 0a0d 0000     . ret = 0x%x....
  a333e8:	555b 4750 205d 6572 7274 2079 6974 656d     [UPG] retry time
  a333f8:	2073 6c61 206c 6166 6c69 6465 0a0d 0000     s all failed....
  a33408:	555b 4750 205d 6168 6873 6f5f 6570 6172     [UPG] hash_opera
  a33418:	6974 6e6f 203a 7264 5f76 6f72 5f6d 6963     tion: drv_rom_ci
  a33428:	6870 7265 685f 7361 2068 6166 6c69 7220     pher_hash fail r
  a33438:	7465 765f 6c61 3d20 3020 2578 0d78 000a     et_val = 0x%x...
  a33448:	555b 4750 205d 6163 636c 685f 7361 2068     [UPG] calc_hash 
  a33458:	6166 6c69 7220 7465 3d20 3020 2578 0d78     fail ret = 0x%x.
  a33468:	000a 0000 555b 4750 205d 6576 6972 7966     ....[UPG] verify
  a33478:	735f 6769 616e 7574 6572 6920 2073 6166     _signature is fa
  a33488:	6c69 202c 6572 2074 203d 7830 7825 0a0d     il, ret = 0x%x..
  a33498:	0000 0000 555b 4750 205d 7075 2067 6576     ....[UPG] upg ve
  a334a8:	6972 7966 6820 6165 2064 4b4f 0a0d 0000     rify head OK....
  a334b8:	555b 4750 205d 7075 5f67 6567 5f74 6b70     [UPG] upg_get_pk
  a334c8:	5f67 6d69 6761 5f65 6168 6873 745f 6261     g_image_hash_tab
  a334d8:	656c 6620 6961 0d6c 000a 0000 555b 4750     le fail.....[UPG
  a334e8:	205d 7075 5f67 6576 6972 7966 685f 7361     ] upg_verify_has
  a334f8:	2068 6d69 6761 2065 6174 6c62 2065 4b4f     h image table OK
  a33508:	0a0d 0000 555b 4750 205d 7075 5f67 6567     ....[UPG] upg_ge
  a33518:	5f74 6b70 5f67 6d69 6761 5f65 6568 6461     t_pkg_image_head
  a33528:	7265 6620 6961 0d6c 000a 0000 555b 4750     er fail.....[UPG
  a33538:	205d 7075 2067 6576 6972 7966 203a 6d69     ] upg verify: im
  a33548:	6761 2065 4449 6520 7272 726f 0a0d 0000     age ID error....
  a33558:	555b 4750 205d 6576 6972 7966 665f 746f     [UPG] verify_fot
  a33568:	5f61 656b 5f79 7261 6165 2d20 203e 6576     a_key_area -> ve
  a33578:	6972 7966 5320 4148 3532 0d36 000a 0000     rify SHA256.....
  a33588:	555b 4750 205d 7075 2067 6576 6972 7966     [UPG] upg verify
  a33598:	203a 656b 2079 7261 6165 6520 7272 726f     : key area error
  a335a8:	202e 6572 2074 203d 7830 7825 0a0d 0000     . ret = 0x%x....
  a335b8:	555b 4750 205d 7075 2067 6576 6972 7966     [UPG] upg verify
  a335c8:	203a 6f66 6174 6920 666e 206f 7265 6f72     : fota info erro
  a335d8:	2e72 7220 7465 3d20 3020 2578 0d78 000a     r. ret = 0x%x...
  a335e8:	555b 4750 205d 7075 2067 6576 6972 7966     [UPG] upg verify
  a335f8:	203a 7075 5f67 6863 6365 5f6b 6f66 6174     : upg_check_fota
  a33608:	695f 666e 726f 616d 6974 6e6f 202e 6572     _information. re
  a33618:	2074 203d 7830 7825 0a0d 0000 555b 4750     t = 0x%x....[UPG
  a33628:	205d 7075 2067 6576 6972 7966 203a 6966     ] upg verify: fi
  a33638:	656c 6920 616d 6567 6320 6568 6b63 6520     le image check e
  a33648:	7272 726f 202e 6568 6461 7265 6d5f 6761     rror. header_mag
  a33658:	6369 3d20 3020 2578 0d78 000a 555b 4750     ic = 0x%x...[UPG
  a33668:	205d 7075 2067 6576 6972 7966 203a 6d69     ] upg verify: im
  a33678:	6761 2065 6863 6365 206b 4b4f 202e 6d69     age check OK. im
  a33688:	6761 5f65 6469 3d20 3020 2578 0d78 000a     age_id = 0x%x...
  a33698:	555b 4750 205d 7075 5f67 6576 6972 7966     [UPG] upg_verify
  a336a8:	685f 7361 3a68 6820 7361 5f68 706f 7265     _hash: hash_oper
  a336b8:	7461 6f69 206e 6166 6c69 7220 7465 765f     ation fail ret_v
  a336c8:	6c61 3d20 3020 2578 0d78 000a 555b 4750     al = 0x%x...[UPG
  a336d8:	205d 6576 6972 7966 665f 746f 5f61 6e69     ] verify_fota_in
  a336e8:	6f66 2d20 203e 6576 6972 7966 5320 4148     fo -> verify SHA
  a336f8:	3532 0d36 000a 0000 555b 4750 205d 6576     256.....[UPG] ve
  a33708:	6972 7966 665f 746f 5f61 6e69 6f66 2d20     rify_fota_info -
  a33718:	203e 6576 6972 7966 7320 6769 656e 0d64     > verify signed.
  a33728:	000a 0000 555b 4750 205d 7075 5f67 6576     ....[UPG] upg_ve
  a33738:	6972 7966 685f 7361 3a68 6d20 6d65 6d63     rify_hash: memcm
  a33748:	2070 6168 6873 6620 6961 2e6c 0a0d 0000     p hash fail.....
  a33758:	555b 4750 205d 7075 5f67 6567 5f74 6170     [UPG] upg_get_pa
  a33768:	6b63 6761 5f65 6568 6461 7265 6620 6961     ckage_header fai
  a33778:	0d6c 000a 555b 4750 205d 6175 6970 755f     l...[UPG] uapi_u
  a33788:	6770 765f 7265 6669 5f79 6966 656c 6620     pg_verify_file f
  a33798:	6961 2c6c 7220 7465 3d20 3020 2578 0d78     ail, ret = 0x%x.
  a337a8:	000a 0000 555b 4750 205d 7075 5f67 6567     ....[UPG] upg_ge
  a337b8:	5f74 6966 6d72 6177 6572 6e5f 6d75 6562     t_firmware_numbe
  a337c8:	5f72 6e69 705f 6361 616b 6567 6620 6961     r_in_package fai
  a337d8:	2c6c 7220 7465 3d20 3020 2578 0d78 000a     l, ret = 0x%x...
  a337e8:	555b 4750 205d 7075 5f67 7075 7267 6461     [UPG] upg_upgrad
  a337f8:	5f65 6572 7571 7365 2074 6166 6c69 202e     e_request fail. 
  a33808:	6572 2074 203d 7830 7825 0a0d 0000 0000     ret = 0x%x......
  a33818:	555b 4750 205d 7075 5f67 6e65 7263 5f79     [UPG] upg_encry_
  a33828:	6f66 6174 705f 746b 6d3a 6d65 6f6d 6576     fota_pkt:memmove
  a33838:	735f 6620 6961 656c 2e64 0a0d 0000 0000     _s failed.......
  a33848:	555b 4750 205d 7075 5f67 7a6c 616d 615f     [UPG] upg_lzma_a
  a33858:	6c6c 636f 6620 6961 656c 2164 2121 7320     lloc failed!!! s
  a33868:	7a69 2065 203d 7830 7825 0a0d 0000 0000     ize = 0x%x......
  a33878:	555b 4750 205d 7075 5f67 7a6c 616d 725f     [UPG] upg_lzma_r
  a33888:	6165 5f64 6b70 5f74 6564 7263 2079 6166     ead_pkt_decry fa
  a33898:	6c69 7220 7465 3d20 3020 2578 2e78 0a0d     il ret = 0x%x...
  a338a8:	0000 0000 555b 4750 205d 7075 5f67 7a6c     ....[UPG] upg_lz
  a338b8:	616d 645f 6365 646f 5f65 6f74 625f 6675     ma_decode_to_buf
  a338c8:	6620 6961 206c 6572 2074 203d 7830 7825      fail ret = 0x%x
  a338d8:	0d2e 000a 555b 4750 205d 7a6c 616d 6564     ....[UPG] lzmade
  a338e8:	5f63 6564 6f63 6564 6f74 7562 2066 6166     c_decodetobuf fa
  a338f8:	6c69 7220 7465 3d20 3020 2578 2e78 0d20     il ret = 0x%x. .
  a33908:	000a 0000 555b 4750 205d 7075 5f67 7a6c     ....[UPG] upg_lz
  a33918:	616d 775f 6972 6574 695f 616d 6567 6620     ma_write_image f
  a33928:	6961 2e6c 0a0d 0000 555b 4750 205d 7075     ail.....[UPG] up
  a33938:	5f67 6e65 7263 5f79 6f66 6174 705f 746b     g_encry_fota_pkt
  a33948:	6620 6961 206c 6572 2074 203d 7830 7825      fail ret = 0x%x
  a33958:	0d20 000a 3044 8000 555b 4750 205d 6f4e      ...D0..[UPG] No
  a33968:	2074 656e 6465 7420 206f 7075 7267 6461     t need to upgrad
  a33978:	2e65 2e2e 0a0d 0000 555b 4750 205d 6170     e.......[UPG] pa
  a33988:	6b63 6761 2065 6e69 6f66 7420 746f 6c61     ckage info total
  a33998:	203d 7830 7825 202c 6966 696e 6873 6465     = 0x%x, finished
  a339a8:	3d20 3020 2578 0d78 000a 0000 555b 4750      = 0x%x.....[UPG
  a339b8:	205d 7075 6164 6574 6920 616d 6567 6e20     ] update image n
  a339c8:	6d75 6562 2072 203d 7830 7825 0a0d 0000     umber = 0x%x....
  a339d8:	555b 4750 205d 7075 6164 6574 6620 7269     [UPG] update fir
  a339e8:	776d 7261 2065 756e 626d 7265 3d20 3020     mware number = 0
  a339f8:	2578 0d78 000a 0000 555b 4750 205d 6854     x%x.....[UPG] Th
  a33a08:	2065 6d69 6761 2065 6168 2073 6966 696e     e image has fini
  a33a18:	6873 6465 202e 6d69 6761 5f65 6469 3d20     shed. image_id =
  a33a28:	3020 2578 0d78 000a 555b 4750 205d 7075      0x%x...[UPG] up
  a33a38:	5f67 6567 5f74 6b70 5f67 6d69 6761 5f65     g_get_pkg_image_
  a33a48:	6568 6461 7265 6620 6961 2e6c 0a0d 0000     header fail.....
  a33a58:	555b 4750 205d 7075 5f67 6573 5f74 6966     [UPG] upg_set_fi
  a33a68:	6d72 6177 6572 755f 6470 7461 5f65 7473     rmware_update_st
  a33a78:	7461 7375 6620 6961 0d6c 000a 555b 4750     atus fail...[UPG
  a33a88:	205d 7473 7261 2074 6570 6672 726f 206d     ] start perform 
  a33a98:	7075 6164 6574 6920 616d 6567 3a20 3020     update image : 0
  a33aa8:	2578 0d78 000a 0000 555b 4750 205d 7075     x%x.....[UPG] up
  a33ab8:	5f67 6c66 7361 5f68 7265 7361 5f65 656d     g_flash_erase_me
  a33ac8:	6174 6164 6174 705f 6761 7365 6620 6961     tadata_pages fai
  a33ad8:	2e6c 0a0d 0000 0000 555b 4750 205d 6d69     l.......[UPG] im
  a33ae8:	6761 2065 6564 6f63 706d 6572 7373 665f     age decompress_f
  a33af8:	616c 3a67 3020 2578 0d78 000a 555b 4750     lag: 0x%x...[UPG
  a33b08:	205d 6564 6f63 706d 6572 7373 7520 6770     ] decompress upg
  a33b18:	0a0d 0000 555b 4750 205d 6964 6666 7520     ....[UPG] diff u
  a33b28:	6770 0a0d 0000 0000 555b 4750 205d 7566     pg......[UPG] fu
  a33b38:	6c6c 7520 6770 0a0d 0000 0000 555b 4750     ll upg......[UPG
  a33b48:	205d 7773 7469 6863 7320 6174 7574 2073     ] switch status 
  a33b58:	203d 7830 7825 0a0d 0000 0000 555b 4750     = 0x%x......[UPG
  a33b68:	205d 6570 6672 726f 206d 7075 6164 6574     ] perform update
  a33b78:	6920 616d 6567 6f20 6576 2e72 7220 7465      image over. ret
  a33b88:	3d20 3020 2578 0d78 000a 0000 555b 4750      = 0x%x.....[UPG
  a33b98:	205d 7473 7261 2074 6570 6672 726f 206d     ] start perform 
  a33ba8:	564e 6920 616d 6567 3a20 3020 2578 0d78     NV image : 0x%x.
  a33bb8:	000a 0000 555b 4750 205d 6570 6672 726f     ....[UPG] perfor
  a33bc8:	206d 564e 6920 616d 6567 6f20 6576 2e72     m NV image over.
  a33bd8:	7220 7465 3d20 3020 2578 0d78 000a 0000      ret = 0x%x.....
  a33be8:	555b 4750 205d 7075 5f67 7270 636f 7365     [UPG] upg_proces
  a33bf8:	5f73 7075 6164 6574 695f 616d 6567 745f     s_update_image_t
  a33c08:	7361 736b 6620 6961 2c6c 7220 7465 3d20     asks fail, ret =
  a33c18:	3020 2578 0d78 000a 555b 4750 205d 7061      0x%x...[UPG] ap
  a33c28:	2070 6973 657a 6920 2073 6f6e 2074 6e65     p size is not en
  a33c38:	756f 6867 2021 7061 5f70 6973 657a 3d20     ough! app_size =
  a33c48:	3020 2578 2c78 6420 6365 6d6f 7270 7365      0x%x, decompres
  a33c58:	5f73 656c 206e 203d 7830 7825 0a0d 0000     s_len = 0x%x....
  a33c68:	555b 4750 205d 7075 5f67 7a6c 616d 645f     [UPG] upg_lzma_d
  a33c78:	6365 646f 2065 6166 6c69 7220 7465 3d20     ecode fail ret =
  a33c88:	3020 2578 0d78 000a 0c0c 00a3 0c3a 00a3      0x%x.......:...
  a33c98:	0c4e 00a3 0c94 00a3 0cf2 00a3 0cf6 00a3     N...............
  a33ca8:	0d34 00a3 0e4c 00a3                         4...L...

00a33cb0 <g_itoaLowerDigits>:
  a33cb0:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef
  a33cc0:	0078 0000                                   x...

00a33cc4 <g_itoaUpperDigits>:
  a33cc4:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
  a33cd4:	0058 0000                                   X...

00a33cd8 <stateTable.1749>:
	...
  a33cf8:	0006 0600 0100 0000 0000 0603 0600 0002     ................
  a33d08:	0504 0505 0505 0505 0505 0000 0000 0000     ................
  a33d18:	0000 0800 0800 0808 0700 0000 0007 0007     ................
  a33d28:	0000 0800 0000 0000 0008 0007 0000 0000     ................
  a33d38:	0000 0800 0808 0808 0807 0007 0007 0800     ................
  a33d48:	0708 0800 0807 0700 0008 0007 0000 0000     ................
	...
  a33dd8:	0800 0808 0808 0008 0100 0800 0808 0808     ................
  a33de8:	0001 0400 0404 0808 0008 0000 0303 0508     ................
  a33df8:	0808 0000 0200 0302 0505 0008 0000 0303     ................
  a33e08:	0503 0805 0000 0200 0202 0808 0008 0000     ................
  a33e18:	0606 0606 0606 0000 0700 0707 0707 0007     ................
  a33e28:	0000 0000                                   ....
