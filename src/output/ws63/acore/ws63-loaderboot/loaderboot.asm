
loaderboot.elf:     file format elf32-littleriscv


Disassembly of section .text.entry:

00a20380 <_start>:
  a20380:	0040006f          	j	a20384 <Reset_Handler>

00a20384 <Reset_Handler>:
  a20384:	fffe6297          	auipc	t0,0xfffe6
  a20388:	71028293          	addi	t0,t0,1808 # a06a94 <g_uart_prag>
  a2038c:	00050313          	mv	t1,a0
  a20390:	00058393          	mv	t2,a1

00a20394 <set_arg_loop>:
  a20394:	00032e03          	lw	t3,0(t1)
  a20398:	01c2a023          	sw	t3,0(t0)
  a2039c:	00428293          	addi	t0,t0,4
  a203a0:	00430313          	addi	t1,t1,4
  a203a4:	ffc38393          	addi	t2,t2,-4
  a203a8:	fe7046e3          	bgtz	t2,a20394 <set_arg_loop>
  a203ac:	00006297          	auipc	t0,0x6
  a203b0:	d0028293          	addi	t0,t0,-768 # a260ac <trap_vector>
  a203b4:	00128293          	addi	t0,t0,1
  a203b8:	30529073          	csrw	mtvec,t0
  a203bc:	30005073          	csrwi	mstatus,0
  a203c0:	30405073          	csrwi	mie,0
  a203c4:	fffe3197          	auipc	gp,0xfffe3
  a203c8:	91818193          	addi	gp,gp,-1768 # a02cdc <_gp_>
  a203cc:	fffe2117          	auipc	sp,0xfffe2
  a203d0:	83410113          	addi	sp,sp,-1996 # a01c00 <__stack_top__>
  a203d4:	fffe0297          	auipc	t0,0xfffe0
  a203d8:	c2c28293          	addi	t0,t0,-980 # a00000 <g_system_stack_begin>
  a203dc:	fffe2317          	auipc	t1,0xfffe2
  a203e0:	02430313          	addi	t1,t1,36 # a02400 <g_efuse_clock_period>
  a203e4:	00628c63          	beq	t0,t1,a203fc <end_set_stack_loop>
  a203e8:	efbeb3b7          	lui	t2,0xefbeb
  a203ec:	dde38393          	addi	t2,t2,-546 # efbeadde <__data_load__+0xef1c339a>

00a203f0 <set_stack_loop>:
  a203f0:	0072a023          	sw	t2,0(t0)
  a203f4:	00428293          	addi	t0,t0,4
  a203f8:	fe62cce3          	blt	t0,t1,a203f0 <set_stack_loop>

00a203fc <end_set_stack_loop>:
  a203fc:	00000093          	li	ra,0
  a20400:	00000213          	li	tp,0
  a20404:	00000413          	li	s0,0
  a20408:	00000493          	li	s1,0
  a2040c:	00000513          	li	a0,0
  a20410:	00000593          	li	a1,0
  a20414:	00000613          	li	a2,0
  a20418:	00000693          	li	a3,0
  a2041c:	00000713          	li	a4,0
  a20420:	00000793          	li	a5,0
  a20424:	00000813          	li	a6,0
  a20428:	00000893          	li	a7,0
  a2042c:	00000913          	li	s2,0
  a20430:	00000993          	li	s3,0
  a20434:	00000a13          	li	s4,0
  a20438:	00000a93          	li	s5,0
  a2043c:	00000b13          	li	s6,0
  a20440:	00000b93          	li	s7,0
  a20444:	00000c13          	li	s8,0
  a20448:	00000c93          	li	s9,0
  a2044c:	00000d13          	li	s10,0
  a20450:	00000d93          	li	s11,0
  a20454:	00000e13          	li	t3,0
  a20458:	00000e93          	li	t4,0
  a2045c:	00000f13          	li	t5,0
  a20460:	00000f93          	li	t6,0
  a20464:	fffe2297          	auipc	t0,0xfffe2
  a20468:	f9c28293          	addi	t0,t0,-100 # a02400 <g_efuse_clock_period>
  a2046c:	00007317          	auipc	t1,0x7
  a20470:	5d830313          	addi	t1,t1,1496 # a27a44 <__data_load__>
  a20474:	0dc00393          	li	t2,220
  a20478:	00038e63          	beqz	t2,a20494 <end_set_data_loop>

00a2047c <set_data_loop>:
  a2047c:	00032e03          	lw	t3,0(t1)
  a20480:	01c2a023          	sw	t3,0(t0)
  a20484:	00428293          	addi	t0,t0,4
  a20488:	00430313          	addi	t1,t1,4
  a2048c:	ffc38393          	addi	t2,t2,-4
  a20490:	fe7046e3          	bgtz	t2,a2047c <set_data_loop>

00a20494 <end_set_data_loop>:
  a20494:	fffe2297          	auipc	t0,0xfffe2
  a20498:	14428293          	addi	t0,t0,324 # a025d8 <g_flash_cmd_funcs>
  a2049c:	fffe6317          	auipc	t1,0xfffe6
  a204a0:	5f830313          	addi	t1,t1,1528 # a06a94 <g_uart_prag>
  a204a4:	00628a63          	beq	t0,t1,a204b8 <end_clear_bss_loop>
  a204a8:	00000393          	li	t2,0

00a204ac <clear_bss_loop>:
  a204ac:	0072a023          	sw	t2,0(t0)
  a204b0:	00428293          	addi	t0,t0,4
  a204b4:	fe62cce3          	blt	t0,t1,a204ac <clear_bss_loop>

00a204b8 <end_clear_bss_loop>:
  a204b8:	76a0106f          	j	a21c22 <start_loaderboot>

00a204bc <g_ram_exception_table>:
  a204bc:	00a25fb0 00a2534a 00a2534a 00a2534a     ._..JS..JS..JS..
  a204cc:	00a2534a 00a2534a 00a2534a 00a2534a     JS..JS..JS..JS..
  a204dc:	00a2534a 00a2534a 00a2534a 00a2534a     JS..JS..JS..JS..
  a204ec:	00a2535e 00a2534a 00a2534a 00a2534a     ^S..JS..JS..JS..
  a204fc:	00a2534a 00a2534a 00a2534a 00a2534a     JS..JS..JS..JS..
  a2050c:	00a2534a 00a2534a 00a2534a 00a2534a     JS..JS..JS..JS..
  a2051c:	00a2534a 00a2534a 00a24f36 00a24f36     JS..JS..6O..6O..
  a2052c:	00a24f36 00a24f36 00a24f36 00a24f36     6O..6O..6O..6O..
  a2053c:	00a24f36 00a24f36 00a24f36 00a24f36     6O..6O..6O..6O..
  a2054c:	00a24f36 00a24f36 00a24f36 00a24f36     6O..6O..6O..6O..
  a2055c:	00a24f36 00a24f36 00a24f36 00a24f36     6O..6O..6O..6O..
  a2056c:	00a24f36 00a24f36 00a24f36 00a24f36     6O..6O..6O..6O..
  a2057c:	00a24f36 00a24f36 00a24f36 00a24f36     6O..6O..6O..6O..
  a2058c:	00a24f36 00a24f36 00a24f36 00a24f36     6O..6O..6O..6O..
  a2059c:	00a24f36 00a24f36 00a24f36 00a24f36     6O..6O..6O..6O..
  a205ac:	00a24f36 00a24f36 00a24f36 00a24f36     6O..6O..6O..6O..
  a205bc:	00a24f36 00a24f36 00a24f36 00a24f36     6O..6O..6O..6O..
  a205cc:	00a24f36 00a24f36 00a24f36 00a24f36     6O..6O..6O..6O..
  a205dc:	00a24f36 00a24f36                       6O..6O..

Disassembly of section .text:

00a205f0 <exc_syscall>:
  a205f0:	8082                	ret

00a205f2 <handle_syscall>:
  a205f2:	0411                	addi	s0,s0,4
  a205f4:	c022                	sw	s0,0(sp)
  a205f6:	3fed                	jal	ra,a205f0 <exc_syscall>
  a205f8:	42d2                	lw	t0,20(sp)
  a205fa:	34129073          	csrw	mepc,t0
  a205fe:	5d82                	lw	s11,32(sp)
  a20600:	5d12                	lw	s10,36(sp)
  a20602:	5ca2                	lw	s9,40(sp)
  a20604:	5c32                	lw	s8,44(sp)
  a20606:	5bc2                	lw	s7,48(sp)
  a20608:	5b52                	lw	s6,52(sp)
  a2060a:	5ae2                	lw	s5,56(sp)
  a2060c:	5a72                	lw	s4,60(sp)
  a2060e:	4986                	lw	s3,64(sp)
  a20610:	4916                	lw	s2,68(sp)
  a20612:	44a6                	lw	s1,72(sp)
  a20614:	4436                	lw	s0,76(sp)
  a20616:	4fc6                	lw	t6,80(sp)
  a20618:	4f56                	lw	t5,84(sp)
  a2061a:	4ee6                	lw	t4,88(sp)
  a2061c:	4e76                	lw	t3,92(sp)
  a2061e:	5886                	lw	a7,96(sp)
  a20620:	5816                	lw	a6,100(sp)
  a20622:	57a6                	lw	a5,104(sp)
  a20624:	5736                	lw	a4,108(sp)
  a20626:	56c6                	lw	a3,112(sp)
  a20628:	5656                	lw	a2,116(sp)
  a2062a:	55e6                	lw	a1,120(sp)
  a2062c:	5576                	lw	a0,124(sp)
  a2062e:	438a                	lw	t2,128(sp)
  a20630:	431a                	lw	t1,132(sp)
  a20632:	42aa                	lw	t0,136(sp)
  a20634:	40ba                	lw	ra,140(sp)
  a20636:	6149                	addi	sp,sp,144
  a20638:	30200073          	mret

00a2063c <__udivdi3>:
  a2063c:	4701                	li	a4,0
  a2063e:	a039                	j	a2064c <__udivmoddi4>

00a20640 <__umoddi3>:
  a20640:	8118                	push	{ra},-32
  a20642:	0038                	addi	a4,sp,8
  a20644:	2021                	jal	ra,a2064c <__udivmoddi4>
  a20646:	4522                	lw	a0,8(sp)
  a20648:	45b2                	lw	a1,12(sp)
  a2064a:	8114                	popret	{ra},32

00a2064c <__udivmoddi4>:
  a2064c:	88b6                	mv	a7,a3
  a2064e:	8832                	mv	a6,a2
  a20650:	87aa                	mv	a5,a0
  a20652:	8e2e                	mv	t3,a1
  a20654:	eedd                	bnez	a3,a20712 <__udivmoddi4+0xc6>
  a20656:	12c5f163          	bgeu	a1,a2,a20778 <__udivmoddi4+0x12c>
  a2065a:	66c1                	lui	a3,0x10
  a2065c:	1cd66a63          	bltu	a2,a3,a20830 <__udivmoddi4+0x1e4>
  a20660:	010006b7          	lui	a3,0x1000
  a20664:	3ad66563          	bltu	a2,a3,a20a0e <__udivmoddi4+0x3c2>
  a20668:	01865313          	srli	t1,a2,0x18
  a2066c:	48e1                	li	a7,24
  a2066e:	fffe2697          	auipc	a3,0xfffe2
  a20672:	e626a683          	lw	a3,-414(a3) # a024d0 <_GLOBAL_OFFSET_TABLE_+0x4>
  a20676:	969a                	add	a3,a3,t1
  a20678:	2294                	lbu	a3,0(a3)
  a2067a:	02000313          	li	t1,32
  a2067e:	98b6                	add	a7,a7,a3
  a20680:	41130333          	sub	t1,t1,a7
  a20684:	00030c63          	beqz	t1,a2069c <__udivmoddi4+0x50>
  a20688:	006595b3          	sll	a1,a1,t1
  a2068c:	011558b3          	srl	a7,a0,a7
  a20690:	00661833          	sll	a6,a2,t1
  a20694:	00b8ee33          	or	t3,a7,a1
  a20698:	006517b3          	sll	a5,a0,t1
  a2069c:	01085e93          	srli	t4,a6,0x10
  a206a0:	03de5f33          	divu	t5,t3,t4
  a206a4:	01081613          	slli	a2,a6,0x10
  a206a8:	8241                	srli	a2,a2,0x10
  a206aa:	0107d693          	srli	a3,a5,0x10
  a206ae:	03de75b3          	remu	a1,t3,t4
  a206b2:	03e60fb3          	mul	t6,a2,t5
  a206b6:	20b6a69b          	orshf	a3,a3,a1,sll,16
  a206ba:	01f6fa63          	bgeu	a3,t6,a206ce <__udivmoddi4+0x82>
  a206be:	96c2                	add	a3,a3,a6
  a206c0:	ffff0593          	addi	a1,t5,-1
  a206c4:	0106e463          	bltu	a3,a6,a206cc <__udivmoddi4+0x80>
  a206c8:	37f6e563          	bltu	a3,t6,a20a32 <__udivmoddi4+0x3e6>
  a206cc:	8f2e                	mv	t5,a1
  a206ce:	41f685b3          	sub	a1,a3,t6
  a206d2:	03d5d533          	divu	a0,a1,t4
  a206d6:	01079693          	slli	a3,a5,0x10
  a206da:	82c1                	srli	a3,a3,0x10
  a206dc:	03d5f5b3          	remu	a1,a1,t4
  a206e0:	02a60633          	mul	a2,a2,a0
  a206e4:	20b6a79b          	orshf	a5,a3,a1,sll,16
  a206e8:	00c7fa63          	bgeu	a5,a2,a206fc <__udivmoddi4+0xb0>
  a206ec:	97c2                	add	a5,a5,a6
  a206ee:	fff50693          	addi	a3,a0,-1
  a206f2:	0107e463          	bltu	a5,a6,a206fa <__udivmoddi4+0xae>
  a206f6:	32c7eb63          	bltu	a5,a2,a20a2c <__udivmoddi4+0x3e0>
  a206fa:	8536                	mv	a0,a3
  a206fc:	8f91                	sub	a5,a5,a2
  a206fe:	21e5251b          	orshf	a0,a0,t5,sll,16
  a20702:	4581                	li	a1,0
  a20704:	c711                	beqz	a4,a20710 <__udivmoddi4+0xc4>
  a20706:	0067d7b3          	srl	a5,a5,t1
  a2070a:	c31c                	sw	a5,0(a4)
  a2070c:	00072223          	sw	zero,4(a4)
  a20710:	8082                	ret
  a20712:	00d5f963          	bgeu	a1,a3,a20724 <__udivmoddi4+0xd8>
  a20716:	12070f63          	beqz	a4,a20854 <__udivmoddi4+0x208>
  a2071a:	c308                	sw	a0,0(a4)
  a2071c:	c34c                	sw	a1,4(a4)
  a2071e:	4501                	li	a0,0
  a20720:	4581                	li	a1,0
  a20722:	8082                	ret
  a20724:	67c1                	lui	a5,0x10
  a20726:	0ef6ed63          	bltu	a3,a5,a20820 <__udivmoddi4+0x1d4>
  a2072a:	010007b7          	lui	a5,0x1000
  a2072e:	2cf6ea63          	bltu	a3,a5,a20a02 <__udivmoddi4+0x3b6>
  a20732:	0186d893          	srli	a7,a3,0x18
  a20736:	4861                	li	a6,24
  a20738:	fffe2797          	auipc	a5,0xfffe2
  a2073c:	d987a783          	lw	a5,-616(a5) # a024d0 <_GLOBAL_OFFSET_TABLE_+0x4>
  a20740:	97c6                	add	a5,a5,a7
  a20742:	0007c303          	lbu	t1,0(a5)
  a20746:	02000e93          	li	t4,32
  a2074a:	9342                	add	t1,t1,a6
  a2074c:	406e8eb3          	sub	t4,t4,t1
  a20750:	180e9563          	bnez	t4,a208da <__udivmoddi4+0x28e>
  a20754:	00b6e463          	bltu	a3,a1,a2075c <__udivmoddi4+0x110>
  a20758:	2ec56363          	bltu	a0,a2,a20a3e <__udivmoddi4+0x3f2>
  a2075c:	40c50633          	sub	a2,a0,a2
  a20760:	00c53533          	sltu	a0,a0,a2
  a20764:	8d95                	sub	a1,a1,a3
  a20766:	40a58e33          	sub	t3,a1,a0
  a2076a:	4505                	li	a0,1
  a2076c:	4581                	li	a1,0
  a2076e:	d34d                	beqz	a4,a20710 <__udivmoddi4+0xc4>
  a20770:	c310                	sw	a2,0(a4)
  a20772:	01c72223          	sw	t3,4(a4)
  a20776:	8082                	ret
  a20778:	e601                	bnez	a2,a20780 <__udivmoddi4+0x134>
  a2077a:	4685                	li	a3,1
  a2077c:	02c6d833          	divu	a6,a3,a2
  a20780:	66c1                	lui	a3,0x10
  a20782:	0cd86063          	bltu	a6,a3,a20842 <__udivmoddi4+0x1f6>
  a20786:	010006b7          	lui	a3,0x1000
  a2078a:	26d86863          	bltu	a6,a3,a209fa <__udivmoddi4+0x3ae>
  a2078e:	01885613          	srli	a2,a6,0x18
  a20792:	48e1                	li	a7,24
  a20794:	fffe2697          	auipc	a3,0xfffe2
  a20798:	d3c6a683          	lw	a3,-708(a3) # a024d0 <_GLOBAL_OFFSET_TABLE_+0x4>
  a2079c:	96b2                	add	a3,a3,a2
  a2079e:	2290                	lbu	a2,0(a3)
  a207a0:	02000313          	li	t1,32
  a207a4:	9646                	add	a2,a2,a7
  a207a6:	40c30333          	sub	t1,t1,a2
  a207aa:	0a031863          	bnez	t1,a2085a <__udivmoddi4+0x20e>
  a207ae:	01081e93          	slli	t4,a6,0x10
  a207b2:	410586b3          	sub	a3,a1,a6
  a207b6:	01085f13          	srli	t5,a6,0x10
  a207ba:	010ede93          	srli	t4,t4,0x10
  a207be:	4585                	li	a1,1
  a207c0:	0107d893          	srli	a7,a5,0x10
  a207c4:	03e6de33          	divu	t3,a3,t5
  a207c8:	03e6f6b3          	remu	a3,a3,t5
  a207cc:	03de0633          	mul	a2,t3,t4
  a207d0:	20d8a69b          	orshf	a3,a7,a3,sll,16
  a207d4:	00c6fa63          	bgeu	a3,a2,a207e8 <__udivmoddi4+0x19c>
  a207d8:	96c2                	add	a3,a3,a6
  a207da:	fffe0513          	addi	a0,t3,-1
  a207de:	0106e463          	bltu	a3,a6,a207e6 <__udivmoddi4+0x19a>
  a207e2:	24c6eb63          	bltu	a3,a2,a20a38 <__udivmoddi4+0x3ec>
  a207e6:	8e2a                	mv	t3,a0
  a207e8:	40c68633          	sub	a2,a3,a2
  a207ec:	03e65533          	divu	a0,a2,t5
  a207f0:	01079693          	slli	a3,a5,0x10
  a207f4:	82c1                	srli	a3,a3,0x10
  a207f6:	03e67633          	remu	a2,a2,t5
  a207fa:	03d508b3          	mul	a7,a0,t4
  a207fe:	20c6a79b          	orshf	a5,a3,a2,sll,16
  a20802:	0117fa63          	bgeu	a5,a7,a20816 <__udivmoddi4+0x1ca>
  a20806:	97c2                	add	a5,a5,a6
  a20808:	fff50693          	addi	a3,a0,-1
  a2080c:	0107e463          	bltu	a5,a6,a20814 <__udivmoddi4+0x1c8>
  a20810:	2117eb63          	bltu	a5,a7,a20a26 <__udivmoddi4+0x3da>
  a20814:	8536                	mv	a0,a3
  a20816:	411787b3          	sub	a5,a5,a7
  a2081a:	21c5251b          	orshf	a0,a0,t3,sll,16
  a2081e:	b5dd                	j	a20704 <__udivmoddi4+0xb8>
  a20820:	0ff00793          	li	a5,255
  a20824:	1ed7f363          	bgeu	a5,a3,a20a0a <__udivmoddi4+0x3be>
  a20828:	0086d893          	srli	a7,a3,0x8
  a2082c:	4821                	li	a6,8
  a2082e:	b729                	j	a20738 <__udivmoddi4+0xec>
  a20830:	8332                	mv	t1,a2
  a20832:	0ff00693          	li	a3,255
  a20836:	e2c6fce3          	bgeu	a3,a2,a2066e <__udivmoddi4+0x22>
  a2083a:	00865313          	srli	t1,a2,0x8
  a2083e:	48a1                	li	a7,8
  a20840:	b53d                	j	a2066e <__udivmoddi4+0x22>
  a20842:	8642                	mv	a2,a6
  a20844:	0ff00693          	li	a3,255
  a20848:	f506f6e3          	bgeu	a3,a6,a20794 <__udivmoddi4+0x148>
  a2084c:	00885613          	srli	a2,a6,0x8
  a20850:	48a1                	li	a7,8
  a20852:	b789                	j	a20794 <__udivmoddi4+0x148>
  a20854:	4581                	li	a1,0
  a20856:	4501                	li	a0,0
  a20858:	8082                	ret
  a2085a:	00681833          	sll	a6,a6,t1
  a2085e:	00c5d8b3          	srl	a7,a1,a2
  a20862:	01085f13          	srli	t5,a6,0x10
  a20866:	03e8dfb3          	divu	t6,a7,t5
  a2086a:	01081e93          	slli	t4,a6,0x10
  a2086e:	006595b3          	sll	a1,a1,t1
  a20872:	00c55633          	srl	a2,a0,a2
  a20876:	010ede93          	srli	t4,t4,0x10
  a2087a:	8e4d                	or	a2,a2,a1
  a2087c:	01065e13          	srli	t3,a2,0x10
  a20880:	006517b3          	sll	a5,a0,t1
  a20884:	03e8f8b3          	remu	a7,a7,t5
  a20888:	03fe85b3          	mul	a1,t4,t6
  a2088c:	211e251b          	orshf	a0,t3,a7,sll,16
  a20890:	00b57b63          	bgeu	a0,a1,a208a6 <__udivmoddi4+0x25a>
  a20894:	9542                	add	a0,a0,a6
  a20896:	ffff8693          	addi	a3,t6,-1
  a2089a:	19056463          	bltu	a0,a6,a20a22 <__udivmoddi4+0x3d6>
  a2089e:	18b57263          	bgeu	a0,a1,a20a22 <__udivmoddi4+0x3d6>
  a208a2:	1ff9                	addi	t6,t6,-2
  a208a4:	9542                	add	a0,a0,a6
  a208a6:	8d0d                	sub	a0,a0,a1
  a208a8:	03e558b3          	divu	a7,a0,t5
  a208ac:	9e21                	uxth	a2
  a208ae:	03e57533          	remu	a0,a0,t5
  a208b2:	031e86b3          	mul	a3,t4,a7
  a208b6:	20a6259b          	orshf	a1,a2,a0,sll,16
  a208ba:	00d5fb63          	bgeu	a1,a3,a208d0 <__udivmoddi4+0x284>
  a208be:	95c2                	add	a1,a1,a6
  a208c0:	fff88613          	addi	a2,a7,-1
  a208c4:	1505eb63          	bltu	a1,a6,a20a1a <__udivmoddi4+0x3ce>
  a208c8:	14d5f963          	bgeu	a1,a3,a20a1a <__udivmoddi4+0x3ce>
  a208cc:	18f9                	addi	a7,a7,-2
  a208ce:	95c2                	add	a1,a1,a6
  a208d0:	40d586b3          	sub	a3,a1,a3
  a208d4:	21f8a59b          	orshf	a1,a7,t6,sll,16
  a208d8:	b5e5                	j	a207c0 <__udivmoddi4+0x174>
  a208da:	00665833          	srl	a6,a2,t1
  a208de:	01d696b3          	sll	a3,a3,t4
  a208e2:	00d866b3          	or	a3,a6,a3
  a208e6:	0065d7b3          	srl	a5,a1,t1
  a208ea:	0106de13          	srli	t3,a3,0x10
  a208ee:	03c7dfb3          	divu	t6,a5,t3
  a208f2:	01069893          	slli	a7,a3,0x10
  a208f6:	0108d893          	srli	a7,a7,0x10
  a208fa:	00655833          	srl	a6,a0,t1
  a208fe:	01d51f33          	sll	t5,a0,t4
  a20902:	01d595b3          	sll	a1,a1,t4
  a20906:	00b865b3          	or	a1,a6,a1
  a2090a:	0105d813          	srli	a6,a1,0x10
  a2090e:	01d61633          	sll	a2,a2,t4
  a20912:	03c7f7b3          	remu	a5,a5,t3
  a20916:	03f88533          	mul	a0,a7,t6
  a2091a:	20f8279b          	orshf	a5,a6,a5,sll,16
  a2091e:	00a7fb63          	bgeu	a5,a0,a20934 <__udivmoddi4+0x2e8>
  a20922:	97b6                	add	a5,a5,a3
  a20924:	ffff8813          	addi	a6,t6,-1
  a20928:	0ed7eb63          	bltu	a5,a3,a20a1e <__udivmoddi4+0x3d2>
  a2092c:	0ea7f963          	bgeu	a5,a0,a20a1e <__udivmoddi4+0x3d2>
  a20930:	1ff9                	addi	t6,t6,-2
  a20932:	97b6                	add	a5,a5,a3
  a20934:	8f89                	sub	a5,a5,a0
  a20936:	03c7d533          	divu	a0,a5,t3
  a2093a:	9da1                	uxth	a1
  a2093c:	03c7f7b3          	remu	a5,a5,t3
  a20940:	02a888b3          	mul	a7,a7,a0
  a20944:	20f5a59b          	orshf	a1,a1,a5,sll,16
  a20948:	0115fb63          	bgeu	a1,a7,a2095e <__udivmoddi4+0x312>
  a2094c:	95b6                	add	a1,a1,a3
  a2094e:	fff50793          	addi	a5,a0,-1
  a20952:	0cd5e263          	bltu	a1,a3,a20a16 <__udivmoddi4+0x3ca>
  a20956:	0d15f063          	bgeu	a1,a7,a20a16 <__udivmoddi4+0x3ca>
  a2095a:	1579                	addi	a0,a0,-2
  a2095c:	95b6                	add	a1,a1,a3
  a2095e:	63c1                	lui	t2,0x10
  a20960:	21f5251b          	orshf	a0,a0,t6,sll,16
  a20964:	fff38793          	addi	a5,t2,-1 # ffff <ccause+0xf03d>
  a20968:	00f57833          	and	a6,a0,a5
  a2096c:	01055e13          	srli	t3,a0,0x10
  a20970:	8ff1                	and	a5,a5,a2
  a20972:	01065f93          	srli	t6,a2,0x10
  a20976:	02fe02b3          	mul	t0,t3,a5
  a2097a:	411588b3          	sub	a7,a1,a7
  a2097e:	03f805b3          	mul	a1,a6,t6
  a20982:	02f80833          	mul	a6,a6,a5
  a20986:	9596                	add	a1,a1,t0
  a20988:	6105859b          	addshf	a1,a1,a6,srl,16
  a2098c:	03fe0e33          	mul	t3,t3,t6
  a20990:	0055f363          	bgeu	a1,t0,a20996 <__udivmoddi4+0x34a>
  a20994:	9e1e                	add	t3,t3,t2
  a20996:	67c1                	lui	a5,0x10
  a20998:	17fd                	addi	a5,a5,-1 # ffff <ccause+0xf03d>
  a2099a:	00f5ffb3          	and	t6,a1,a5
  a2099e:	00f877b3          	and	a5,a6,a5
  a209a2:	60be081b          	addshf	a6,t3,a1,srl,16
  a209a6:	21f7879b          	addshf	a5,a5,t6,sll,16
  a209aa:	0308ed63          	bltu	a7,a6,a209e4 <__udivmoddi4+0x398>
  a209ae:	03088963          	beq	a7,a6,a209e0 <__udivmoddi4+0x394>
  a209b2:	4581                	li	a1,0
  a209b4:	d4070ee3          	beqz	a4,a20710 <__udivmoddi4+0xc4>
  a209b8:	40ff07b3          	sub	a5,t5,a5
  a209bc:	00ff3f33          	sltu	t5,t5,a5
  a209c0:	410888b3          	sub	a7,a7,a6
  a209c4:	41e888b3          	sub	a7,a7,t5
  a209c8:	00689333          	sll	t1,a7,t1
  a209cc:	01d7d7b3          	srl	a5,a5,t4
  a209d0:	00f367b3          	or	a5,t1,a5
  a209d4:	01d8d8b3          	srl	a7,a7,t4
  a209d8:	c31c                	sw	a5,0(a4)
  a209da:	01172223          	sw	a7,4(a4)
  a209de:	8082                	ret
  a209e0:	fcff79e3          	bgeu	t5,a5,a209b2 <__udivmoddi4+0x366>
  a209e4:	40c78633          	sub	a2,a5,a2
  a209e8:	00c7b7b3          	sltu	a5,a5,a2
  a209ec:	40d80833          	sub	a6,a6,a3
  a209f0:	40f80833          	sub	a6,a6,a5
  a209f4:	157d                	addi	a0,a0,-1
  a209f6:	87b2                	mv	a5,a2
  a209f8:	bf6d                	j	a209b2 <__udivmoddi4+0x366>
  a209fa:	01085613          	srli	a2,a6,0x10
  a209fe:	48c1                	li	a7,16
  a20a00:	bb51                	j	a20794 <__udivmoddi4+0x148>
  a20a02:	0106d893          	srli	a7,a3,0x10
  a20a06:	4841                	li	a6,16
  a20a08:	bb05                	j	a20738 <__udivmoddi4+0xec>
  a20a0a:	4801                	li	a6,0
  a20a0c:	b335                	j	a20738 <__udivmoddi4+0xec>
  a20a0e:	01065313          	srli	t1,a2,0x10
  a20a12:	48c1                	li	a7,16
  a20a14:	b9a9                	j	a2066e <__udivmoddi4+0x22>
  a20a16:	853e                	mv	a0,a5
  a20a18:	b799                	j	a2095e <__udivmoddi4+0x312>
  a20a1a:	88b2                	mv	a7,a2
  a20a1c:	bd55                	j	a208d0 <__udivmoddi4+0x284>
  a20a1e:	8fc2                	mv	t6,a6
  a20a20:	bf11                	j	a20934 <__udivmoddi4+0x2e8>
  a20a22:	8fb6                	mv	t6,a3
  a20a24:	b549                	j	a208a6 <__udivmoddi4+0x25a>
  a20a26:	1579                	addi	a0,a0,-2
  a20a28:	97c2                	add	a5,a5,a6
  a20a2a:	b3f5                	j	a20816 <__udivmoddi4+0x1ca>
  a20a2c:	1579                	addi	a0,a0,-2
  a20a2e:	97c2                	add	a5,a5,a6
  a20a30:	b1f1                	j	a206fc <__udivmoddi4+0xb0>
  a20a32:	1f79                	addi	t5,t5,-2
  a20a34:	96c2                	add	a3,a3,a6
  a20a36:	b961                	j	a206ce <__udivmoddi4+0x82>
  a20a38:	1e79                	addi	t3,t3,-2
  a20a3a:	96c2                	add	a3,a3,a6
  a20a3c:	b375                	j	a207e8 <__udivmoddi4+0x19c>
  a20a3e:	862a                	mv	a2,a0
  a20a40:	4501                	li	a0,0
  a20a42:	b32d                	j	a2076c <__udivmoddi4+0x120>

00a20a44 <memset>:
  a20a44:	ca59                	beqz	a2,a20ada <memset+0x96>
  a20a46:	0ff5f793          	andi	a5,a1,255
  a20a4a:	a11c                	sb	a5,0(a0)
  a20a4c:	00c50733          	add	a4,a0,a2
  a20a50:	fef70fa3          	sb	a5,-1(a4)
  a20a54:	032661bb          	bltui	a2,3,a20ada <memset+0x96>
  a20a58:	b11c                	sb	a5,1(a0)
  a20a5a:	a13c                	sb	a5,2(a0)
  a20a5c:	fef70f23          	sb	a5,-2(a4)
  a20a60:	fef70ea3          	sb	a5,-3(a4)
  a20a64:	07166dbb          	bltui	a2,7,a20ada <memset+0x96>
  a20a68:	b13c                	sb	a5,3(a0)
  a20a6a:	fef70e23          	sb	a5,-4(a4)
  a20a6e:	46a1                	li	a3,8
  a20a70:	06c6f563          	bgeu	a3,a2,a20ada <memset+0x96>
  a20a74:	40a007b3          	neg	a5,a0
  a20a78:	8b8d                	andi	a5,a5,3
  a20a7a:	00f50733          	add	a4,a0,a5
  a20a7e:	8e1d                	sub	a2,a2,a5
  a20a80:	0ff5f593          	andi	a1,a1,255
  a20a84:	0101 0101 079f      	l.li	a5,0x1010101
  a20a8a:	02f585b3          	mul	a1,a1,a5
  a20a8e:	9a71                	andi	a2,a2,-4
  a20a90:	00c707b3          	add	a5,a4,a2
  a20a94:	c30c                	sw	a1,0(a4)
  a20a96:	feb7ae23          	sw	a1,-4(a5)
  a20a9a:	04c6f063          	bgeu	a3,a2,a20ada <memset+0x96>
  a20a9e:	c34c                	sw	a1,4(a4)
  a20aa0:	c70c                	sw	a1,8(a4)
  a20aa2:	feb7aa23          	sw	a1,-12(a5)
  a20aa6:	feb7ac23          	sw	a1,-8(a5)
  a20aaa:	19066c3b          	bltui	a2,25,a20ada <memset+0x96>
  a20aae:	c74c                	sw	a1,12(a4)
  a20ab0:	cb0c                	sw	a1,16(a4)
  a20ab2:	cb4c                	sw	a1,20(a4)
  a20ab4:	cf0c                	sw	a1,24(a4)
  a20ab6:	feb7a223          	sw	a1,-28(a5)
  a20aba:	feb7a423          	sw	a1,-24(a5)
  a20abe:	feb7a623          	sw	a1,-20(a5)
  a20ac2:	feb7a823          	sw	a1,-16(a5)
  a20ac6:	00477793          	andi	a5,a4,4
  a20aca:	07e1                	addi	a5,a5,24
  a20acc:	97ba                	add	a5,a5,a4
  a20ace:	46fd                	li	a3,31
  a20ad0:	9732                	add	a4,a4,a2
  a20ad2:	40f70633          	sub	a2,a4,a5
  a20ad6:	00c6e363          	bltu	a3,a2,a20adc <memset+0x98>
  a20ada:	8082                	ret
  a20adc:	c38c                	sw	a1,0(a5)
  a20ade:	c3cc                	sw	a1,4(a5)
  a20ae0:	c78c                	sw	a1,8(a5)
  a20ae2:	c7cc                	sw	a1,12(a5)
  a20ae4:	cb8c                	sw	a1,16(a5)
  a20ae6:	cbcc                	sw	a1,20(a5)
  a20ae8:	cf8c                	sw	a1,24(a5)
  a20aea:	cfcc                	sw	a1,28(a5)
  a20aec:	02078793          	addi	a5,a5,32
  a20af0:	b7cd                	j	a20ad2 <memset+0x8e>

00a20af2 <memcpy>:
  a20af2:	87aa                	mv	a5,a0
  a20af4:	0035f713          	andi	a4,a1,3
  a20af8:	c319                	beqz	a4,a20afe <memcpy+0xc>
  a20afa:	16061963          	bnez	a2,a20c6c <memcpy+0x17a>
  a20afe:	0037f813          	andi	a6,a5,3
  a20b02:	473d                	li	a4,15
  a20b04:	18080e63          	beqz	a6,a20ca0 <memcpy+0x1ae>
  a20b08:	20166abb          	bltui	a2,32,a20b72 <memcpy+0x80>
  a20b0c:	2194                	lbu	a3,0(a1)
  a20b0e:	4198                	lw	a4,0(a1)
  a20b10:	027807bb          	beqi	a6,2,a20cee <memcpy+0x1fc>
  a20b14:	488d                	li	a7,3
  a20b16:	23180563          	beq	a6,a7,a20d40 <memcpy+0x24e>
  a20b1a:	a394                	sb	a3,0(a5)
  a20b1c:	3194                	lbu	a3,1(a1)
  a20b1e:	1675                	addi	a2,a2,-3
  a20b20:	058d                	addi	a1,a1,3
  a20b22:	b394                	sb	a3,1(a5)
  a20b24:	fff5c683          	lbu	a3,-1(a1)
  a20b28:	078d                	addi	a5,a5,3
  a20b2a:	4e41                	li	t3,16
  a20b2c:	fed78fa3          	sb	a3,-1(a5)
  a20b30:	0015a303          	lw	t1,1(a1)
  a20b34:	0055a883          	lw	a7,5(a1)
  a20b38:	1641                	addi	a2,a2,-16
  a20b3a:	00831813          	slli	a6,t1,0x8
  a20b3e:	70e8271b          	orshf	a4,a6,a4,srl,24
  a20b42:	0095a803          	lw	a6,9(a1)
  a20b46:	c398                	sw	a4,0(a5)
  a20b48:	00889693          	slli	a3,a7,0x8
  a20b4c:	00881713          	slli	a4,a6,0x8
  a20b50:	7117271b          	orshf	a4,a4,a7,srl,24
  a20b54:	c798                	sw	a4,8(a5)
  a20b56:	00d5a703          	lw	a4,13(a1)
  a20b5a:	7066a69b          	orshf	a3,a3,t1,srl,24
  a20b5e:	c3d4                	sw	a3,4(a5)
  a20b60:	00871693          	slli	a3,a4,0x8
  a20b64:	7106a69b          	orshf	a3,a3,a6,srl,24
  a20b68:	c7d4                	sw	a3,12(a5)
  a20b6a:	05c1                	addi	a1,a1,16
  a20b6c:	07c1                	addi	a5,a5,16
  a20b6e:	fcce61e3          	bltu	t3,a2,a20b30 <memcpy+0x3e>
  a20b72:	01067713          	andi	a4,a2,16
  a20b76:	c351                	beqz	a4,a20bfa <memcpy+0x108>
  a20b78:	2198                	lbu	a4,0(a1)
  a20b7a:	07c1                	addi	a5,a5,16
  a20b7c:	05c1                	addi	a1,a1,16
  a20b7e:	fee78823          	sb	a4,-16(a5)
  a20b82:	ff15c703          	lbu	a4,-15(a1)
  a20b86:	fee788a3          	sb	a4,-15(a5)
  a20b8a:	ff25c703          	lbu	a4,-14(a1)
  a20b8e:	fee78923          	sb	a4,-14(a5)
  a20b92:	ff35c703          	lbu	a4,-13(a1)
  a20b96:	fee789a3          	sb	a4,-13(a5)
  a20b9a:	ff45c703          	lbu	a4,-12(a1)
  a20b9e:	fee78a23          	sb	a4,-12(a5)
  a20ba2:	ff55c703          	lbu	a4,-11(a1)
  a20ba6:	fee78aa3          	sb	a4,-11(a5)
  a20baa:	ff65c703          	lbu	a4,-10(a1)
  a20bae:	fee78b23          	sb	a4,-10(a5)
  a20bb2:	ff75c703          	lbu	a4,-9(a1)
  a20bb6:	fee78ba3          	sb	a4,-9(a5)
  a20bba:	ff85c703          	lbu	a4,-8(a1)
  a20bbe:	fee78c23          	sb	a4,-8(a5)
  a20bc2:	ff95c703          	lbu	a4,-7(a1)
  a20bc6:	fee78ca3          	sb	a4,-7(a5)
  a20bca:	ffa5c703          	lbu	a4,-6(a1)
  a20bce:	fee78d23          	sb	a4,-6(a5)
  a20bd2:	ffb5c703          	lbu	a4,-5(a1)
  a20bd6:	fee78da3          	sb	a4,-5(a5)
  a20bda:	ffc5c703          	lbu	a4,-4(a1)
  a20bde:	fee78e23          	sb	a4,-4(a5)
  a20be2:	ffd5c703          	lbu	a4,-3(a1)
  a20be6:	fee78ea3          	sb	a4,-3(a5)
  a20bea:	ffe5c703          	lbu	a4,-2(a1)
  a20bee:	fee78f23          	sb	a4,-2(a5)
  a20bf2:	fff5c703          	lbu	a4,-1(a1)
  a20bf6:	fee78fa3          	sb	a4,-1(a5)
  a20bfa:	00867713          	andi	a4,a2,8
  a20bfe:	c331                	beqz	a4,a20c42 <memcpy+0x150>
  a20c00:	2198                	lbu	a4,0(a1)
  a20c02:	07a1                	addi	a5,a5,8
  a20c04:	05a1                	addi	a1,a1,8
  a20c06:	fee78c23          	sb	a4,-8(a5)
  a20c0a:	ff95c703          	lbu	a4,-7(a1)
  a20c0e:	fee78ca3          	sb	a4,-7(a5)
  a20c12:	ffa5c703          	lbu	a4,-6(a1)
  a20c16:	fee78d23          	sb	a4,-6(a5)
  a20c1a:	ffb5c703          	lbu	a4,-5(a1)
  a20c1e:	fee78da3          	sb	a4,-5(a5)
  a20c22:	ffc5c703          	lbu	a4,-4(a1)
  a20c26:	fee78e23          	sb	a4,-4(a5)
  a20c2a:	ffd5c703          	lbu	a4,-3(a1)
  a20c2e:	fee78ea3          	sb	a4,-3(a5)
  a20c32:	ffe5c703          	lbu	a4,-2(a1)
  a20c36:	fee78f23          	sb	a4,-2(a5)
  a20c3a:	fff5c703          	lbu	a4,-1(a1)
  a20c3e:	fee78fa3          	sb	a4,-1(a5)
  a20c42:	00467713          	andi	a4,a2,4
  a20c46:	c359                	beqz	a4,a20ccc <memcpy+0x1da>
  a20c48:	2198                	lbu	a4,0(a1)
  a20c4a:	0791                	addi	a5,a5,4
  a20c4c:	0591                	addi	a1,a1,4
  a20c4e:	fee78e23          	sb	a4,-4(a5)
  a20c52:	ffd5c703          	lbu	a4,-3(a1)
  a20c56:	fee78ea3          	sb	a4,-3(a5)
  a20c5a:	ffe5c703          	lbu	a4,-2(a1)
  a20c5e:	fee78f23          	sb	a4,-2(a5)
  a20c62:	fff5c703          	lbu	a4,-1(a1)
  a20c66:	fee78fa3          	sb	a4,-1(a5)
  a20c6a:	a08d                	j	a20ccc <memcpy+0x1da>
  a20c6c:	0585                	addi	a1,a1,1
  a20c6e:	fff5c703          	lbu	a4,-1(a1)
  a20c72:	0785                	addi	a5,a5,1
  a20c74:	167d                	addi	a2,a2,-1
  a20c76:	fee78fa3          	sb	a4,-1(a5)
  a20c7a:	bdad                	j	a20af4 <memcpy+0x2>
  a20c7c:	4194                	lw	a3,0(a1)
  a20c7e:	07c1                	addi	a5,a5,16
  a20c80:	05c1                	addi	a1,a1,16
  a20c82:	fed7a823          	sw	a3,-16(a5)
  a20c86:	ff45a683          	lw	a3,-12(a1)
  a20c8a:	1641                	addi	a2,a2,-16
  a20c8c:	fed7aa23          	sw	a3,-12(a5)
  a20c90:	ff85a683          	lw	a3,-8(a1)
  a20c94:	fed7ac23          	sw	a3,-8(a5)
  a20c98:	ffc5a683          	lw	a3,-4(a1)
  a20c9c:	fed7ae23          	sw	a3,-4(a5)
  a20ca0:	fcc76ee3          	bltu	a4,a2,a20c7c <memcpy+0x18a>
  a20ca4:	00867713          	andi	a4,a2,8
  a20ca8:	cb11                	beqz	a4,a20cbc <memcpy+0x1ca>
  a20caa:	4198                	lw	a4,0(a1)
  a20cac:	07a1                	addi	a5,a5,8
  a20cae:	05a1                	addi	a1,a1,8
  a20cb0:	fee7ac23          	sw	a4,-8(a5)
  a20cb4:	ffc5a703          	lw	a4,-4(a1)
  a20cb8:	fee7ae23          	sw	a4,-4(a5)
  a20cbc:	00467713          	andi	a4,a2,4
  a20cc0:	c711                	beqz	a4,a20ccc <memcpy+0x1da>
  a20cc2:	4198                	lw	a4,0(a1)
  a20cc4:	0791                	addi	a5,a5,4
  a20cc6:	0591                	addi	a1,a1,4
  a20cc8:	fee7ae23          	sw	a4,-4(a5)
  a20ccc:	00267713          	andi	a4,a2,2
  a20cd0:	cb11                	beqz	a4,a20ce4 <memcpy+0x1f2>
  a20cd2:	2198                	lbu	a4,0(a1)
  a20cd4:	0789                	addi	a5,a5,2
  a20cd6:	0589                	addi	a1,a1,2
  a20cd8:	fee78f23          	sb	a4,-2(a5)
  a20cdc:	fff5c703          	lbu	a4,-1(a1)
  a20ce0:	fee78fa3          	sb	a4,-1(a5)
  a20ce4:	8a05                	andi	a2,a2,1
  a20ce6:	c219                	beqz	a2,a20cec <memcpy+0x1fa>
  a20ce8:	2198                	lbu	a4,0(a1)
  a20cea:	a398                	sb	a4,0(a5)
  a20cec:	8082                	ret
  a20cee:	a394                	sb	a3,0(a5)
  a20cf0:	3194                	lbu	a3,1(a1)
  a20cf2:	1679                	addi	a2,a2,-2
  a20cf4:	0589                	addi	a1,a1,2
  a20cf6:	b394                	sb	a3,1(a5)
  a20cf8:	4e45                	li	t3,17
  a20cfa:	0789                	addi	a5,a5,2
  a20cfc:	0025a303          	lw	t1,2(a1)
  a20d00:	0065a883          	lw	a7,6(a1)
  a20d04:	1641                	addi	a2,a2,-16
  a20d06:	01031813          	slli	a6,t1,0x10
  a20d0a:	60e8271b          	orshf	a4,a6,a4,srl,16
  a20d0e:	00a5a803          	lw	a6,10(a1)
  a20d12:	c398                	sw	a4,0(a5)
  a20d14:	01089693          	slli	a3,a7,0x10
  a20d18:	01081713          	slli	a4,a6,0x10
  a20d1c:	6117271b          	orshf	a4,a4,a7,srl,16
  a20d20:	c798                	sw	a4,8(a5)
  a20d22:	00e5a703          	lw	a4,14(a1)
  a20d26:	6066a69b          	orshf	a3,a3,t1,srl,16
  a20d2a:	c3d4                	sw	a3,4(a5)
  a20d2c:	01071693          	slli	a3,a4,0x10
  a20d30:	6106a69b          	orshf	a3,a3,a6,srl,16
  a20d34:	c7d4                	sw	a3,12(a5)
  a20d36:	05c1                	addi	a1,a1,16
  a20d38:	07c1                	addi	a5,a5,16
  a20d3a:	fcce61e3          	bltu	t3,a2,a20cfc <memcpy+0x20a>
  a20d3e:	bd15                	j	a20b72 <memcpy+0x80>
  a20d40:	a394                	sb	a3,0(a5)
  a20d42:	0585                	addi	a1,a1,1
  a20d44:	167d                	addi	a2,a2,-1
  a20d46:	0785                	addi	a5,a5,1
  a20d48:	4e49                	li	t3,18
  a20d4a:	0035a303          	lw	t1,3(a1)
  a20d4e:	0075a883          	lw	a7,7(a1)
  a20d52:	1641                	addi	a2,a2,-16
  a20d54:	01831813          	slli	a6,t1,0x18
  a20d58:	50e8271b          	orshf	a4,a6,a4,srl,8
  a20d5c:	00b5a803          	lw	a6,11(a1)
  a20d60:	c398                	sw	a4,0(a5)
  a20d62:	01889693          	slli	a3,a7,0x18
  a20d66:	01881713          	slli	a4,a6,0x18
  a20d6a:	5117271b          	orshf	a4,a4,a7,srl,8
  a20d6e:	c798                	sw	a4,8(a5)
  a20d70:	00f5a703          	lw	a4,15(a1)
  a20d74:	5066a69b          	orshf	a3,a3,t1,srl,8
  a20d78:	c3d4                	sw	a3,4(a5)
  a20d7a:	01871693          	slli	a3,a4,0x18
  a20d7e:	5106a69b          	orshf	a3,a3,a6,srl,8
  a20d82:	c7d4                	sw	a3,12(a5)
  a20d84:	05c1                	addi	a1,a1,16
  a20d86:	07c1                	addi	a5,a5,16
  a20d88:	fcce61e3          	bltu	t3,a2,a20d4a <memcpy+0x258>
  a20d8c:	b3dd                	j	a20b72 <memcpy+0x80>

00a20d8e <memcmp>:
  a20d8e:	962a                	add	a2,a2,a0
  a20d90:	00c50c63          	beq	a0,a2,a20da8 <memcmp+0x1a>
  a20d94:	211c                	lbu	a5,0(a0)
  a20d96:	2198                	lbu	a4,0(a1)
  a20d98:	00e78563          	beq	a5,a4,a20da2 <memcmp+0x14>
  a20d9c:	40e78533          	sub	a0,a5,a4
  a20da0:	8082                	ret
  a20da2:	0505                	addi	a0,a0,1
  a20da4:	0585                	addi	a1,a1,1
  a20da6:	b7ed                	j	a20d90 <memcmp+0x2>
  a20da8:	4501                	li	a0,0
  a20daa:	8082                	ret

00a20dac <strlen>:
  a20dac:	87aa                	mv	a5,a0
  a20dae:	0037f713          	andi	a4,a5,3
  a20db2:	e31d                	bnez	a4,a20dd8 <strlen+0x2c>
  a20db4:	fefe feff 059f      	l.li	a1,0xfefefeff
  a20dba:	8080 8080 061f      	l.li	a2,0x80808080
  a20dc0:	4394                	lw	a3,0(a5)
  a20dc2:	00b68733          	add	a4,a3,a1
  a20dc6:	fff6c693          	not	a3,a3
  a20dca:	8f75                	and	a4,a4,a3
  a20dcc:	8f71                	and	a4,a4,a2
  a20dce:	cf01                	beqz	a4,a20de6 <strlen+0x3a>
  a20dd0:	2398                	lbu	a4,0(a5)
  a20dd2:	c709                	beqz	a4,a20ddc <strlen+0x30>
  a20dd4:	0785                	addi	a5,a5,1
  a20dd6:	bfed                	j	a20dd0 <strlen+0x24>
  a20dd8:	2398                	lbu	a4,0(a5)
  a20dda:	e701                	bnez	a4,a20de2 <strlen+0x36>
  a20ddc:	40a78533          	sub	a0,a5,a0
  a20de0:	8082                	ret
  a20de2:	0785                	addi	a5,a5,1
  a20de4:	b7e9                	j	a20dae <strlen+0x2>
  a20de6:	0791                	addi	a5,a5,4
  a20de8:	bfe1                	j	a20dc0 <strlen+0x14>

00a20dea <reset>:
  a20dea:	8018                	push	{ra},-16
  a20dec:	677030ef          	jal	ra,a24c62 <update_reset_count>
  a20df0:	400027b7          	lui	a5,0x40002
  a20df4:	4711                	li	a4,4
  a20df6:	10e79823          	sh	a4,272(a5) # 40002110 <__data_load__+0x3f5da6cc>
  a20dfa:	a001                	j	a20dfa <reset+0x10>

00a20dfc <boot_get_flash_funcs>:
  a20dfc:	00a0 25d8 051f      	l.li	a0,0xa025d8
  a20e02:	8082                	ret

00a20e04 <boot_regist_flash_cmd>:
  a20e04:	8018                	push	{ra},-16
  a20e06:	862a                	mv	a2,a0
  a20e08:	46d1                	li	a3,20
  a20e0a:	45d1                	li	a1,20
  a20e0c:	00a0 25d8 051f      	l.li	a0,0xa025d8
  a20e12:	770040ef          	jal	ra,a25582 <memcpy_s>
  a20e16:	c501                	beqz	a0,a20e1e <boot_regist_flash_cmd+0x1a>
  a20e18:	80000537          	lui	a0,0x80000
  a20e1c:	0511                	addi	a0,a0,4 # 80000004 <__data_load__+0x7f5d85c0>
  a20e1e:	8014                	popret	{ra},16

00a20e20 <upload_send_file_info>:
  a20e20:	8058                	push	{ra,s0-s3},-32
  a20e22:	00a0 25ec 079f      	l.li	a5,0xa025ec
  a20e28:	4380                	lw	s0,0(a5)
  a20e2a:	283c                	lbu	a5,18(s0)
  a20e2c:	01340913          	addi	s2,s0,19
  a20e30:	8bbd                	andi	a5,a5,15
  a20e32:	c799                	beqz	a5,a20e40 <upload_send_file_info+0x20>
  a20e34:	08500593          	li	a1,133
  a20e38:	854a                	mv	a0,s2
  a20e3a:	8050                	pop	{ra,s0-s3},32
  a20e3c:	42f0306f          	j	a24a6a <serial_put_buf>
  a20e40:	40500693          	li	a3,1029
  a20e44:	4601                	li	a2,0
  a20e46:	40500593          	li	a1,1029
  a20e4a:	854a                	mv	a0,s2
  a20e4c:	4044                	lw	s1,4(s0)
  a20e4e:	76c040ef          	jal	ra,a255ba <memset_s>
  a20e52:	4785                	li	a5,1
  a20e54:	b83c                	sb	a5,19(s0)
  a20e56:	381c                	lbu	a5,17(s0)
  a20e58:	4410                	lw	a2,8(s0)
  a20e5a:	01640993          	addi	s3,s0,22
  a20e5e:	a85c                	sb	a5,20(s0)
  a20e60:	fff7c793          	not	a5,a5
  a20e64:	b85c                	sb	a5,21(s0)
  a20e66:	46ad                	li	a3,11
  a20e68:	08000593          	li	a1,128
  a20e6c:	854e                	mv	a0,s3
  a20e6e:	714040ef          	jal	ra,a25582 <memcpy_s>
  a20e72:	e529                	bnez	a0,a20ebc <upload_send_file_info+0x9c>
  a20e74:	02140793          	addi	a5,s0,33
  a20e78:	8726                	mv	a4,s1
  a20e7a:	86be                	mv	a3,a5
  a20e7c:	863e                	mv	a2,a5
  a20e7e:	4529                	li	a0,10
  a20e80:	40f605b3          	sub	a1,a2,a5
  a20e84:	02e04d63          	bgtz	a4,a20ebe <upload_send_file_info+0x9e>
  a20e88:	00b78733          	add	a4,a5,a1
  a20e8c:	82b7879b          	addshf	a5,a5,a1,sra,1
  a20e90:	177d                	addi	a4,a4,-1
  a20e92:	04f69063          	bne	a3,a5,a20ed2 <upload_send_file_info+0xb2>
  a20e96:	08000613          	li	a2,128
  a20e9a:	85ce                	mv	a1,s3
  a20e9c:	4501                	li	a0,0
  a20e9e:	243000ef          	jal	ra,a218e0 <crc16_ccitt>
  a20ea2:	00855793          	srli	a5,a0,0x8
  a20ea6:	08f40b23          	sb	a5,150(s0)
  a20eaa:	08a40ba3          	sb	a0,151(s0)
  a20eae:	08500593          	li	a1,133
  a20eb2:	854a                	mv	a0,s2
  a20eb4:	3b7030ef          	jal	ra,a24a6a <serial_put_buf>
  a20eb8:	4789                	li	a5,2
  a20eba:	a81c                	sb	a5,16(s0)
  a20ebc:	8054                	popret	{ra,s0-s3},32
  a20ebe:	02a765b3          	rem	a1,a4,a0
  a20ec2:	0605                	addi	a2,a2,1
  a20ec4:	03058593          	addi	a1,a1,48
  a20ec8:	feb60fa3          	sb	a1,-1(a2)
  a20ecc:	02a74733          	div	a4,a4,a0
  a20ed0:	bf45                	j	a20e80 <upload_send_file_info+0x60>
  a20ed2:	230c                	lbu	a1,0(a4)
  a20ed4:	2290                	lbu	a2,0(a3)
  a20ed6:	0685                	addi	a3,a3,1
  a20ed8:	feb68fa3          	sb	a1,-1(a3)
  a20edc:	a310                	sb	a2,0(a4)
  a20ede:	bf4d                	j	a20e90 <upload_send_file_info+0x70>

00a20ee0 <upload_send_data>:
  a20ee0:	8058                	push	{ra,s0-s3},-32
  a20ee2:	00a0 25ec 079f      	l.li	a5,0xa025ec
  a20ee8:	4380                	lw	s0,0(a5)
  a20eea:	283c                	lbu	a5,18(s0)
  a20eec:	01340913          	addi	s2,s0,19
  a20ef0:	8bbd                	andi	a5,a5,15
  a20ef2:	cf81                	beqz	a5,a20f0a <upload_send_data+0x2a>
  a20ef4:	383c                	lbu	a5,19(s0)
  a20ef6:	08500593          	li	a1,133
  a20efa:	0107823b          	beqi	a5,1,a20f02 <upload_send_data+0x22>
  a20efe:	40500593          	li	a1,1029
  a20f02:	854a                	mv	a0,s2
  a20f04:	8050                	pop	{ra,s0-s3},32
  a20f06:	3650306f          	j	a24a6a <serial_put_buf>
  a20f0a:	445c                	lw	a5,12(s0)
  a20f0c:	4044                	lw	s1,4(s0)
  a20f0e:	4669                	li	a2,26
  a20f10:	40500693          	li	a3,1029
  a20f14:	8c9d                	sub	s1,s1,a5
  a20f16:	4795                	li	a5,5
  a20f18:	a81c                	sb	a5,16(s0)
  a20f1a:	40500593          	li	a1,1029
  a20f1e:	854a                	mv	a0,s2
  a20f20:	69a040ef          	jal	ra,a255ba <memset_s>
  a20f24:	4789                	li	a5,2
  a20f26:	b83c                	sb	a5,19(s0)
  a20f28:	381c                	lbu	a5,17(s0)
  a20f2a:	01640993          	addi	s3,s0,22
  a20f2e:	4010                	lw	a2,0(s0)
  a20f30:	0785                	addi	a5,a5,1
  a20f32:	9f81                	uxtb	a5
  a20f34:	b81c                	sb	a5,17(s0)
  a20f36:	a85c                	sb	a5,20(s0)
  a20f38:	fff7c793          	not	a5,a5
  a20f3c:	b85c                	sb	a5,21(s0)
  a20f3e:	445c                	lw	a5,12(s0)
  a20f40:	8114f13b          	bgeui	s1,129,a20f84 <upload_send_data+0xa4>
  a20f44:	4705                	li	a4,1
  a20f46:	b838                	sb	a4,19(s0)
  a20f48:	86a6                	mv	a3,s1
  a20f4a:	963e                	add	a2,a2,a5
  a20f4c:	08000593          	li	a1,128
  a20f50:	854e                	mv	a0,s3
  a20f52:	630040ef          	jal	ra,a25582 <memcpy_s>
  a20f56:	e52d                	bnez	a0,a20fc0 <upload_send_data+0xe0>
  a20f58:	85ce                	mv	a1,s3
  a20f5a:	08000613          	li	a2,128
  a20f5e:	183000ef          	jal	ra,a218e0 <crc16_ccitt>
  a20f62:	00855793          	srli	a5,a0,0x8
  a20f66:	08f40b23          	sb	a5,150(s0)
  a20f6a:	08a40ba3          	sb	a0,151(s0)
  a20f6e:	08500593          	li	a1,133
  a20f72:	854a                	mv	a0,s2
  a20f74:	2f7030ef          	jal	ra,a24a6a <serial_put_buf>
  a20f78:	445c                	lw	a5,12(s0)
  a20f7a:	94be                	add	s1,s1,a5
  a20f7c:	c444                	sw	s1,12(s0)
  a20f7e:	8050                	pop	{ra,s0-s3},32
  a20f80:	4cb0306f          	j	a24c4a <boot_wdt_kick>
  a20f84:	40000713          	li	a4,1024
  a20f88:	00977663          	bgeu	a4,s1,a20f94 <upload_send_data+0xb4>
  a20f8c:	4711                	li	a4,4
  a20f8e:	a818                	sb	a4,16(s0)
  a20f90:	40000493          	li	s1,1024
  a20f94:	86a6                	mv	a3,s1
  a20f96:	963e                	add	a2,a2,a5
  a20f98:	40000593          	li	a1,1024
  a20f9c:	854e                	mv	a0,s3
  a20f9e:	5e4040ef          	jal	ra,a25582 <memcpy_s>
  a20fa2:	ed19                	bnez	a0,a20fc0 <upload_send_data+0xe0>
  a20fa4:	85ce                	mv	a1,s3
  a20fa6:	40000613          	li	a2,1024
  a20faa:	137000ef          	jal	ra,a218e0 <crc16_ccitt>
  a20fae:	00855793          	srli	a5,a0,0x8
  a20fb2:	40f40b23          	sb	a5,1046(s0)
  a20fb6:	40a40ba3          	sb	a0,1047(s0)
  a20fba:	40500593          	li	a1,1029
  a20fbe:	bf55                	j	a20f72 <upload_send_data+0x92>
  a20fc0:	8054                	popret	{ra,s0-s3},32

00a20fc2 <upload_send_null_info>:
  a20fc2:	8038                	push	{ra,s0-s1},-16
  a20fc4:	00a0 25ec 079f      	l.li	a5,0xa025ec
  a20fca:	4380                	lw	s0,0(a5)
  a20fcc:	08000693          	li	a3,128
  a20fd0:	4601                	li	a2,0
  a20fd2:	01340493          	addi	s1,s0,19
  a20fd6:	40500593          	li	a1,1029
  a20fda:	8526                	mv	a0,s1
  a20fdc:	5de040ef          	jal	ra,a255ba <memset_s>
  a20fe0:	4785                	li	a5,1
  a20fe2:	b83c                	sb	a5,19(s0)
  a20fe4:	57fd                	li	a5,-1
  a20fe6:	b85c                	sb	a5,21(s0)
  a20fe8:	08000613          	li	a2,128
  a20fec:	01640593          	addi	a1,s0,22
  a20ff0:	00040a23          	sb	zero,20(s0)
  a20ff4:	4501                	li	a0,0
  a20ff6:	0eb000ef          	jal	ra,a218e0 <crc16_ccitt>
  a20ffa:	00855793          	srli	a5,a0,0x8
  a20ffe:	08f40b23          	sb	a5,150(s0)
  a21002:	08a40ba3          	sb	a0,151(s0)
  a21006:	08500593          	li	a1,133
  a2100a:	8526                	mv	a0,s1
  a2100c:	25f030ef          	jal	ra,a24a6a <serial_put_buf>
  a21010:	479d                	li	a5,7
  a21012:	a81c                	sb	a5,16(s0)
  a21014:	8034                	popret	{ra,s0-s1},16

00a21016 <download_image>:
  a21016:	8058                	push	{ra,s0-s3},-32
  a21018:	842e                	mv	s0,a1
  a2101a:	84aa                	mv	s1,a0
  a2101c:	89b2                	mv	s3,a2
  a2101e:	3bf9                	jal	ra,a20dfc <boot_get_flash_funcs>
  a21020:	892a                	mv	s2,a0
  a21022:	429030ef          	jal	ra,a24c4a <boot_wdt_kick>
  a21026:	ff1416bb          	bnei	s0,-1,a21080 <download_image+0x6a>
  a2102a:	5d1000ef          	jal	ra,a21dfa <loader_download_is_flash_all_erased>
  a2102e:	cd11                	beqz	a0,a2104a <download_image+0x34>
  a21030:	00c92783          	lw	a5,12(s2)
  a21034:	85a2                	mv	a1,s0
  a21036:	8526                	mv	a0,s1
  a21038:	9782                	jalr	a5
  a2103a:	cd11                	beqz	a0,a21056 <download_image+0x40>
  a2103c:	0000 3622 051f      	l.li	a0,0x3622
  a21042:	2e9030ef          	jal	ra,a24b2a <boot_put_errno>
  a21046:	557d                	li	a0,-1
  a21048:	8054                	popret	{ra,s0-s3},32
  a2104a:	00c92783          	lw	a5,12(s2)
  a2104e:	55fd                	li	a1,-1
  a21050:	9782                	jalr	a5
  a21052:	f56d                	bnez	a0,a2103c <download_image+0x26>
  a21054:	547d                	li	s0,-1
  a21056:	3f5030ef          	jal	ra,a24c4a <boot_wdt_kick>
  a2105a:	00a2 6900 051f      	l.li	a0,0xa26900
  a21060:	2f5030ef          	jal	ra,a24b54 <boot_msg0>
  a21064:	05a00513          	li	a0,90
  a21068:	2cb1                	jal	ra,a212c4 <loader_ack>
  a2106a:	86ce                	mv	a3,s3
  a2106c:	4601                	li	a2,0
  a2106e:	85a2                	mv	a1,s0
  a21070:	8526                	mv	a0,s1
  a21072:	09f000ef          	jal	ra,a21910 <loader_serial_ymodem>
  a21076:	00a03533          	snez	a0,a0
  a2107a:	40a00533          	neg	a0,a0
  a2107e:	b7e9                	j	a21048 <download_image+0x32>
  a21080:	f845                	bnez	s0,a21030 <download_image+0x1a>
  a21082:	bfc9                	j	a21054 <download_image+0x3e>

00a21084 <download_factory_image>:
  a21084:	bf49                	j	a21016 <download_image>

00a21086 <upload_data>:
  a21086:	8198                	push	{ra,s0-s7},-64
  a21088:	00a02437          	lui	s0,0xa02
  a2108c:	5ec42783          	lw	a5,1516(s0) # a025ec <g_upload_ctx>
  a21090:	84aa                	mv	s1,a0
  a21092:	892e                	mv	s2,a1
  a21094:	5ec40413          	addi	s0,s0,1516
  a21098:	e791                	bnez	a5,a210a4 <upload_data+0x1e>
  a2109a:	41800513          	li	a0,1048
  a2109e:	4b9030ef          	jal	ra,a24d56 <boot_malloc>
  a210a2:	c008                	sw	a0,0(s0)
  a210a4:	4008                	lw	a0,0(s0)
  a210a6:	5bfd                	li	s7,-1
  a210a8:	c941                	beqz	a0,a21138 <upload_data+0xb2>
  a210aa:	41800693          	li	a3,1048
  a210ae:	4601                	li	a2,0
  a210b0:	41800593          	li	a1,1048
  a210b4:	506040ef          	jal	ra,a255ba <memset_s>
  a210b8:	401c                	lw	a5,0(s0)
  a210ba:	00200737          	lui	a4,0x200
  a210be:	94ba                	add	s1,s1,a4
  a210c0:	c384                	sw	s1,0(a5)
  a210c2:	401c                	lw	a5,0(s0)
  a210c4:	00a2 6914 071f      	l.li	a4,0xa26914
  a210ca:	05a00513          	li	a0,90
  a210ce:	c798                	sw	a4,8(a5)
  a210d0:	4705                	li	a4,1
  a210d2:	0127a223          	sw	s2,4(a5)
  a210d6:	ab98                	sb	a4,16(a5)
  a210d8:	22f5                	jal	ra,a212c4 <loader_ack>
  a210da:	4000                	lw	s0,0(s0)
  a210dc:	0098 9680 049f      	l.li	s1,0x989680
  a210e2:	00a27937          	lui	s2,0xa27
  a210e6:	04300993          	li	s3,67
  a210ea:	8e890913          	addi	s2,s2,-1816 # a268e8 <__clz_tab+0x100>
  a210ee:	8a26                	mv	s4,s1
  a210f0:	001e 8480 0a9f      	l.li	s5,0x1e8480
  a210f6:	00f10593          	addi	a1,sp,15
  a210fa:	8526                	mv	a0,s1
  a210fc:	207030ef          	jal	ra,a24b02 <serial_getc_timeout>
  a21100:	8baa                	mv	s7,a0
  a21102:	f975                	bnez	a0,a210f6 <upload_data+0x70>
  a21104:	00f14b03          	lbu	s6,15(sp)
  a21108:	013b1d63          	bne	s6,s3,a21122 <upload_data+0x9c>
  a2110c:	281c                	lbu	a5,16(s0)
  a2110e:	00040923          	sb	zero,18(s0)
  a21112:	03178dbb          	beqi	a5,3,a21188 <upload_data+0x102>
  a21116:	062780bb          	beqi	a5,6,a21198 <upload_data+0x112>
  a2111a:	01f7973b          	bnei	a5,1,a210f6 <upload_data+0x70>
  a2111e:	3309                	jal	ra,a20e20 <upload_send_file_info>
  a21120:	bfd9                	j	a210f6 <upload_data+0x70>
  a21122:	060b1ebb          	bnei	s6,6,a2115c <upload_data+0xd6>
  a21126:	281c                	lbu	a5,16(s0)
  a21128:	00040923          	sb	zero,18(s0)
  a2112c:	0707943b          	bnei	a5,7,a2113c <upload_data+0xb6>
  a21130:	06400513          	li	a0,100
  a21134:	0ef030ef          	jal	ra,a24a22 <mdelay>
  a21138:	855e                	mv	a0,s7
  a2113a:	8194                	popret	{ra,s0-s7},64
  a2113c:	0417833b          	beqi	a5,4,a21188 <upload_data+0x102>
  a21140:	0507843b          	beqi	a5,5,a21150 <upload_data+0xca>
  a21144:	02e79cbb          	bnei	a5,2,a210f6 <upload_data+0x70>
  a21148:	478d                	li	a5,3
  a2114a:	a81c                	sb	a5,16(s0)
  a2114c:	84d6                	mv	s1,s5
  a2114e:	b765                	j	a210f6 <upload_data+0x70>
  a21150:	4511                	li	a0,4
  a21152:	0d5030ef          	jal	ra,a24a26 <serial_putc>
  a21156:	01640823          	sb	s6,16(s0)
  a2115a:	bf71                	j	a210f6 <upload_data+0x70>
  a2115c:	151b103b          	bnei	s6,21,a2119c <upload_data+0x116>
  a21160:	283c                	lbu	a5,18(s0)
  a21162:	8bbd                	andi	a5,a5,15
  a21164:	a83c                	sb	a5,18(s0)
  a21166:	283e                	lhu	a5,18(s0)
  a21168:	0785                	addi	a5,a5,1
  a2116a:	8bbd                	andi	a5,a5,15
  a2116c:	a83c                	sb	a5,18(s0)
  a2116e:	c7a9                	beqz	a5,a211b8 <upload_data+0x132>
  a21170:	281c                	lbu	a5,16(s0)
  a21172:	17f9                	addi	a5,a5,-2
  a21174:	9f81                	uxtb	a5
  a21176:	06e7f03b          	bgeui	a5,6,a210f6 <upload_data+0x70>
  a2117a:	04f9079b          	addshf	a5,s2,a5,sll,2
  a2117e:	439c                	lw	a5,0(a5)
  a21180:	8782                	jr	a5
  a21182:	3979                	jal	ra,a20e20 <upload_send_file_info>
  a21184:	84d2                	mv	s1,s4
  a21186:	bf85                	j	a210f6 <upload_data+0x70>
  a21188:	3ba1                	jal	ra,a20ee0 <upload_send_data>
  a2118a:	b7b5                	j	a210f6 <upload_data+0x70>
  a2118c:	4511                	li	a0,4
  a2118e:	099030ef          	jal	ra,a24a26 <serial_putc>
  a21192:	4799                	li	a5,6
  a21194:	a81c                	sb	a5,16(s0)
  a21196:	b785                	j	a210f6 <upload_data+0x70>
  a21198:	352d                	jal	ra,a20fc2 <upload_send_null_info>
  a2119a:	bfb1                	j	a210f6 <upload_data+0x70>
  a2119c:	18db16bb          	bnei	s6,24,a210f6 <upload_data+0x70>
  a211a0:	283c                	lbu	a5,18(s0)
  a211a2:	9bc1                	andi	a5,a5,-16
  a211a4:	a83c                	sb	a5,18(s0)
  a211a6:	481c                	lw	a5,16(s0)
  a211a8:	83d1                	srli	a5,a5,0x14
  a211aa:	0785                	addi	a5,a5,1
  a211ac:	8bbd                	andi	a5,a5,15
  a211ae:	00479713          	slli	a4,a5,0x4
  a211b2:	a838                	sb	a4,18(s0)
  a211b4:	03d790bb          	bnei	a5,3,a210f6 <upload_data+0x70>
  a211b8:	5bfd                	li	s7,-1
  a211ba:	bfbd                	j	a21138 <upload_data+0xb2>

00a211bc <loader_download_image>:
  a211bc:	8268                	push	{ra,s0-s4},-64
  a211be:	2d14                	lbu	a3,24(a0)
  a211c0:	01f10593          	addi	a1,sp,31
  a211c4:	892a                	mv	s2,a0
  a211c6:	c636                	sw	a3,12(sp)
  a211c8:	00c52a03          	lw	s4,12(a0)
  a211cc:	01052983          	lw	s3,16(a0)
  a211d0:	4944                	lw	s1,20(a0)
  a211d2:	00010fa3          	sb	zero,31(sp)
  a211d6:	42f000ef          	jal	ra,a21e04 <loader_erase_all_process>
  a211da:	842a                	mv	s0,a0
  a211dc:	46b2                	lw	a3,12(sp)
  a211de:	c909                	beqz	a0,a211f0 <loader_download_image+0x34>
  a211e0:	85aa                	mv	a1,a0
  a211e2:	00a2 699c 051f      	l.li	a0,0xa2699c
  a211e8:	17f030ef          	jal	ra,a24b66 <boot_msg1>
  a211ec:	8522                	mv	a0,s0
  a211ee:	8264                	popret	{ra,s0-s4},64
  a211f0:	01f14783          	lbu	a5,31(sp)
  a211f4:	dfe5                	beqz	a5,a211ec <loader_download_image+0x30>
  a211f6:	00098963          	beqz	s3,a21208 <loader_download_image+0x4c>
  a211fa:	c099                	beqz	s1,a21200 <loader_download_image+0x44>
  a211fc:	0134e663          	bltu	s1,s3,a21208 <loader_download_image+0x4c>
  a21200:	004007b7          	lui	a5,0x400
  a21204:	0537f963          	bgeu	a5,s3,a21256 <loader_download_image+0x9a>
  a21208:	00a2 69b0 051f      	l.li	a0,0xa269b0
  a2120e:	147030ef          	jal	ra,a24b54 <boot_msg0>
  a21212:	00a2 69c0 051f      	l.li	a0,0xa269c0
  a21218:	02f030ef          	jal	ra,a24a46 <serial_puts>
  a2121c:	4585                	li	a1,1
  a2121e:	8552                	mv	a0,s4
  a21220:	07f030ef          	jal	ra,a24a9e <serial_puthex>
  a21224:	00a2 69d0 051f      	l.li	a0,0xa269d0
  a2122a:	01d030ef          	jal	ra,a24a46 <serial_puts>
  a2122e:	4585                	li	a1,1
  a21230:	854e                	mv	a0,s3
  a21232:	06d030ef          	jal	ra,a24a9e <serial_puthex>
  a21236:	00a2 69dc 051f      	l.li	a0,0xa269dc
  a2123c:	00b030ef          	jal	ra,a24a46 <serial_puts>
  a21240:	4585                	li	a1,1
  a21242:	8526                	mv	a0,s1
  a21244:	05b030ef          	jal	ra,a24a9e <serial_puthex>
  a21248:	00a2 7448 051f      	l.li	a0,0xa27448
  a2124e:	7f8030ef          	jal	ra,a24a46 <serial_puts>
  a21252:	547d                	li	s0,-1
  a21254:	bf61                	j	a211ec <loader_download_image+0x30>
  a21256:	00a94783          	lbu	a5,10(s2)
  a2125a:	00400637          	lui	a2,0x400
  a2125e:	85a6                	mv	a1,s1
  a21260:	8552                	mv	a0,s4
  a21262:	780792bb          	bnei	a5,120,a2126c <loader_download_image+0xb0>
  a21266:	3d39                	jal	ra,a21084 <download_factory_image>
  a21268:	842a                	mv	s0,a0
  a2126a:	b749                	j	a211ec <loader_download_image+0x30>
  a2126c:	336d                	jal	ra,a21016 <download_image>
  a2126e:	bfed                	j	a21268 <loader_download_image+0xac>

00a21270 <loader_upload_data>:
  a21270:	8018                	push	{ra},-16
  a21272:	454c                	lw	a1,12(a0)
  a21274:	004007b7          	lui	a5,0x400
  a21278:	fff58713          	addi	a4,a1,-1
  a2127c:	00f76963          	bltu	a4,a5,a2128e <loader_upload_data+0x1e>
  a21280:	00a2 6a00 051f      	l.li	a0,0xa26a00
  a21286:	0cf030ef          	jal	ra,a24b54 <boot_msg0>
  a2128a:	557d                	li	a0,-1
  a2128c:	8014                	popret	{ra},16
  a2128e:	4908                	lw	a0,16(a0)
  a21290:	00357713          	andi	a4,a0,3
  a21294:	c709                	beqz	a4,a2129e <loader_upload_data+0x2e>
  a21296:	00a2 6a14 051f      	l.li	a0,0xa26a14
  a2129c:	b7ed                	j	a21286 <loader_upload_data+0x16>
  a2129e:	00a58733          	add	a4,a1,a0
  a212a2:	00e7f663          	bgeu	a5,a4,a212ae <loader_upload_data+0x3e>
  a212a6:	00a2 6a28 051f      	l.li	a0,0xa26a28
  a212ac:	bfe9                	j	a21286 <loader_upload_data+0x16>
  a212ae:	8010                	pop	{ra},16
  a212b0:	bbd9                	j	a21086 <upload_data>

00a212b2 <loader_set_baudrate>:
  a212b2:	8018                	push	{ra},-16
  a212b4:	2f5000ef          	jal	ra,a21da8 <uart_baudrate_rcv>
  a212b8:	c501                	beqz	a0,a212c0 <loader_set_baudrate+0xe>
  a212ba:	8010                	pop	{ra},16
  a212bc:	2550006f          	j	a21d10 <serial_port_set_baudrate>
  a212c0:	557d                	li	a0,-1
  a212c2:	8014                	popret	{ra},16

00a212c4 <loader_ack>:
  a212c4:	9f28                	push	{ra,s0},-512
  a212c6:	de010113          	addi	sp,sp,-544
  a212ca:	842a                	mv	s0,a0
  a212cc:	41000613          	li	a2,1040
  a212d0:	4581                	li	a1,0
  a212d2:	850a                	mv	a0,sp
  a212d4:	f70ff0ef          	jal	ra,a20a44 <memset>
  a212d8:	dead beef 079f      	l.li	a5,0xdeadbeef
  a212de:	4629                	li	a2,10
  a212e0:	c23e                	sw	a5,4(sp)
  a212e2:	00810623          	sb	s0,12(sp)
  a212e6:	1ee1 000c 079f      	l.li	a5,0x1ee1000c
  a212ec:	fff44413          	not	s0,s0
  a212f0:	004c                	addi	a1,sp,4
  a212f2:	4501                	li	a0,0
  a212f4:	c43e                	sw	a5,8(sp)
  a212f6:	008106a3          	sb	s0,13(sp)
  a212fa:	23dd                	jal	ra,a218e0 <crc16_ccitt>
  a212fc:	00815583          	lhu	a1,8(sp)
  a21300:	40a11623          	sh	a0,1036(sp)
  a21304:	0048                	addi	a0,sp,4
  a21306:	15f9                	addi	a1,a1,-2
  a21308:	762030ef          	jal	ra,a24a6a <serial_put_buf>
  a2130c:	40c10513          	addi	a0,sp,1036
  a21310:	4589                	li	a1,2
  a21312:	758030ef          	jal	ra,a24a6a <serial_put_buf>
  a21316:	41010113          	addi	sp,sp,1040
  a2131a:	8024                	popret	{ra,s0},16

00a2131c <loader_reset>:
  a2131c:	8018                	push	{ra},-16
  a2131e:	00a2 69ec 051f      	l.li	a0,0xa269ec
  a21324:	031030ef          	jal	ra,a24b54 <boot_msg0>
  a21328:	05a00513          	li	a0,90
  a2132c:	3f61                	jal	ra,a212c4 <loader_ack>
  a2132e:	4515                	li	a0,5
  a21330:	6f2030ef          	jal	ra,a24a22 <mdelay>
  a21334:	3c5d                	jal	ra,a20dea <reset>
  a21336:	4501                	li	a0,0
  a21338:	8014                	popret	{ra},16

00a2133a <cmd_loop>:
  a2133a:	8198                	push	{ra,s0-s7},-64
  a2133c:	842a                	mv	s0,a0
  a2133e:	001e 8480 099f      	l.li	s3,0x1e8480
  a21344:	dead beef 0a1f      	l.li	s4,0xdeadbeef
  a2134a:	00440913          	addi	s2,s0,4
  a2134e:	00040023          	sb	zero,0(s0)
  a21352:	00041123          	sh	zero,2(s0)
  a21356:	40c00693          	li	a3,1036
  a2135a:	4601                	li	a2,0
  a2135c:	40c00593          	li	a1,1036
  a21360:	854a                	mv	a0,s2
  a21362:	258040ef          	jal	ra,a255ba <memset_s>
  a21366:	cd49                	beqz	a0,a21400 <cmd_loop+0xc6>
  a21368:	0a500513          	li	a0,165
  a2136c:	3fa1                	jal	ra,a212c4 <loader_ack>
  a2136e:	bff1                	j	a2134a <cmd_loop+0x10>
  a21370:	0db030ef          	jal	ra,a24c4a <boot_wdt_kick>
  a21374:	00b10593          	addi	a1,sp,11
  a21378:	854e                	mv	a0,s3
  a2137a:	788030ef          	jal	ra,a24b02 <serial_getc_timeout>
  a2137e:	8b2a                	mv	s6,a0
  a21380:	ed05                	bnez	a0,a213b8 <cmd_loop+0x7e>
  a21382:	0a85                	addi	s5,s5,1
  a21384:	0ac2                	slli	s5,s5,0x10
  a21386:	010ada93          	srli	s5,s5,0x10
  a2138a:	c489                	beqz	s1,a21394 <cmd_loop+0x5a>
  a2138c:	00042223          	sw	zero,4(s0)
  a21390:	00040023          	sb	zero,0(s0)
  a21394:	201c                	lbu	a5,0(s0)
  a21396:	00b14703          	lbu	a4,11(sp)
  a2139a:	0407fdbb          	bgeui	a5,4,a213d0 <cmd_loop+0x96>
  a2139e:	0814                	addi	a3,sp,16
  a213a0:	c652                	sw	s4,12(sp)
  a213a2:	96be                	add	a3,a3,a5
  a213a4:	ffc6c683          	lbu	a3,-4(a3)
  a213a8:	00e69b63          	bne	a3,a4,a213be <cmd_loop+0x84>
  a213ac:	97ca                	add	a5,a5,s2
  a213ae:	a394                	sb	a3,0(a5)
  a213b0:	201c                	lbu	a5,0(s0)
  a213b2:	0785                	addi	a5,a5,1 # 400001 <g_intheap_size+0x3e6aa1>
  a213b4:	a01c                	sb	a5,0(s0)
  a213b6:	4481                	li	s1,0
  a213b8:	fb7a9ce3          	bne	s5,s7,a21370 <cmd_loop+0x36>
  a213bc:	b775                	j	a21368 <cmd_loop+0x2e>
  a213be:	0ef00793          	li	a5,239
  a213c2:	4485                	li	s1,1
  a213c4:	fef71ae3          	bne	a4,a5,a213b8 <cmd_loop+0x7e>
  a213c8:	57bd                	li	a5,-17
  a213ca:	a05c                	sb	a5,4(s0)
  a213cc:	a004                	sb	s1,0(s0)
  a213ce:	b7e5                	j	a213b6 <cmd_loop+0x7c>
  a213d0:	97ca                	add	a5,a5,s2
  a213d2:	a398                	sb	a4,0(a5)
  a213d4:	201c                	lbu	a5,0(s0)
  a213d6:	c791                	beqz	a5,a213e2 <cmd_loop+0xa8>
  a213d8:	2416                	lhu	a3,8(s0)
  a213da:	40000713          	li	a4,1024
  a213de:	00d76f63          	bltu	a4,a3,a213fc <cmd_loop+0xc2>
  a213e2:	0785                	addi	a5,a5,1
  a213e4:	9f81                	uxtb	a5
  a213e6:	a01c                	sb	a5,0(s0)
  a213e8:	08f7e3bb          	bltui	a5,8,a213b6 <cmd_loop+0x7c>
  a213ec:	00041123          	sh	zero,2(s0)
  a213f0:	00c40493          	addi	s1,s0,12
  a213f4:	0001 86a0 0a9f      	l.li	s5,0x186a0
  a213fa:	a02d                	j	a21424 <cmd_loop+0xea>
  a213fc:	4485                	li	s1,1
  a213fe:	bf6d                	j	a213b8 <cmd_loop+0x7e>
  a21400:	4a81                	li	s5,0
  a21402:	4481                	li	s1,0
  a21404:	06500b93          	li	s7,101
  a21408:	bf45                	j	a213b8 <cmd_loop+0x7e>
  a2140a:	006c                	addi	a1,sp,12
  a2140c:	8556                	mv	a0,s5
  a2140e:	6f4030ef          	jal	ra,a24b02 <serial_getc_timeout>
  a21412:	f939                	bnez	a0,a21368 <cmd_loop+0x2e>
  a21414:	203e                	lhu	a5,2(s0)
  a21416:	00178713          	addi	a4,a5,1
  a2141a:	a03a                	sh	a4,2(s0)
  a2141c:	00c14703          	lbu	a4,12(sp)
  a21420:	97a6                	add	a5,a5,s1
  a21422:	a398                	sb	a4,0(a5)
  a21424:	241e                	lhu	a5,8(s0)
  a21426:	2036                	lhu	a3,2(s0)
  a21428:	ff878713          	addi	a4,a5,-8
  a2142c:	fce6efe3          	bltu	a3,a4,a2140a <cmd_loop+0xd0>
  a21430:	ff778713          	addi	a4,a5,-9
  a21434:	9726                	add	a4,a4,s1
  a21436:	97a6                	add	a5,a5,s1
  a21438:	2314                	lbu	a3,0(a4)
  a2143a:	ff67c783          	lbu	a5,-10(a5)
  a2143e:	10d7a79b          	orshf	a5,a5,a3,sll,8
  a21442:	40f41623          	sh	a5,1036(s0)
  a21446:	00070023          	sb	zero,0(a4) # 200000 <g_intheap_size+0x1e6aa0>
  a2144a:	241e                	lhu	a5,8(s0)
  a2144c:	94be                	add	s1,s1,a5
  a2144e:	fe048b23          	sb	zero,-10(s1)
  a21452:	2412                	lhu	a2,8(s0)
  a21454:	203a                	lhu	a4,2(s0)
  a21456:	ff860793          	addi	a5,a2,-8 # 3ffff8 <g_intheap_size+0x3e6a98>
  a2145a:	f0f717e3          	bne	a4,a5,a21368 <cmd_loop+0x2e>
  a2145e:	1679                	addi	a2,a2,-2
  a21460:	85ca                	mv	a1,s2
  a21462:	4501                	li	a0,0
  a21464:	29b5                	jal	ra,a218e0 <crc16_ccitt>
  a21466:	40c45783          	lhu	a5,1036(s0)
  a2146a:	eea79fe3          	bne	a5,a0,a21368 <cmd_loop+0x2e>
  a2146e:	242c                	lbu	a1,10(s0)
  a21470:	00a2 6964 079f      	l.li	a5,0xa26964
  a21476:	469d                	li	a3,7
  a21478:	2398                	lbu	a4,0(a5)
  a2147a:	02b71863          	bne	a4,a1,a214aa <cmd_loop+0x170>
  a2147e:	43d8                	lw	a4,4(a5)
  a21480:	c70d                	beqz	a4,a214aa <cmd_loop+0x170>
  a21482:	8522                	mv	a0,s0
  a21484:	9702                	jalr	a4
  a21486:	ee0511e3          	bnez	a0,a21368 <cmd_loop+0x2e>
  a2148a:	7c0030ef          	jal	ra,a24c4a <boot_wdt_kick>
  a2148e:	05a00513          	li	a0,90
  a21492:	3d0d                	jal	ra,a212c4 <loader_ack>
  a21494:	00a2 6930 051f      	l.li	a0,0xa26930
  a2149a:	6ba030ef          	jal	ra,a24b54 <boot_msg0>
  a2149e:	00a2 6948 051f      	l.li	a0,0xa26948
  a214a4:	6b0030ef          	jal	ra,a24b54 <boot_msg0>
  a214a8:	b54d                	j	a2134a <cmd_loop+0x10>
  a214aa:	0b05                	addi	s6,s6,1
  a214ac:	07a1                	addi	a5,a5,8
  a214ae:	fcdb15e3          	bne	s6,a3,a21478 <cmd_loop+0x13e>
  a214b2:	00a2 6920 051f      	l.li	a0,0xa26920
  a214b8:	6ae030ef          	jal	ra,a24b66 <boot_msg1>
  a214bc:	b575                	j	a21368 <cmd_loop+0x2e>

00a214be <ymodem_flush>:
  a214be:	8148                	push	{ra,s0-s2},-32
  a214c0:	597d                	li	s2,-1
  a214c2:	000f 4240 049f      	l.li	s1,0xf4240
  a214c8:	547d                	li	s0,-1
  a214ca:	00f10593          	addi	a1,sp,15
  a214ce:	8526                	mv	a0,s1
  a214d0:	012107a3          	sb	s2,15(sp)
  a214d4:	62e030ef          	jal	ra,a24b02 <serial_getc_timeout>
  a214d8:	fe8519e3          	bne	a0,s0,a214ca <ymodem_flush+0xc>
  a214dc:	8144                	popret	{ra,s0-s2},32

00a214de <ymodem_get_packet>:
  a214de:	81c8                	push	{ra,s0-s10},-64
  a214e0:	57fd                	li	a5,-1
  a214e2:	00a02437          	lui	s0,0xa02
  a214e6:	00f105a3          	sb	a5,11(sp)
  a214ea:	00f10623          	sb	a5,12(sp)
  a214ee:	00f106a3          	sb	a5,13(sp)
  a214f2:	00f10723          	sb	a5,14(sp)
  a214f6:	6709                	lui	a4,0x2
  a214f8:	5f040793          	addi	a5,s0,1520 # a025f0 <g_ymodem>
  a214fc:	97ba                	add	a5,a5,a4
  a214fe:	33dc                	lbu	a5,5(a5)
  a21500:	00a04937          	lui	s2,0xa04
  a21504:	5f040413          	addi	s0,s0,1520
  a21508:	5f090913          	addi	s2,s2,1520 # a045f0 <_gp_+0x1914>
  a2150c:	c791                	beqz	a5,a21518 <ymodem_get_packet+0x3a>
  a2150e:	4519                	li	a0,6
  a21510:	516030ef          	jal	ra,a24a26 <serial_putc>
  a21514:	000902a3          	sb	zero,5(s2)
  a21518:	57fd                	li	a5,-1
  a2151a:	00f107a3          	sb	a5,15(sp)
  a2151e:	4981                	li	s3,0
  a21520:	4481                	li	s1,0
  a21522:	000f 4240 0b1f      	l.li	s6,0xf4240
  a21528:	4a29                	li	s4,10
  a2152a:	4ab1                	li	s5,12
  a2152c:	4be1                	li	s7,24
  a2152e:	4c0d                	li	s8,3
  a21530:	4c89                	li	s9,2
  a21532:	4d11                	li	s10,4
  a21534:	00f10593          	addi	a1,sp,15
  a21538:	855a                	mv	a0,s6
  a2153a:	5c8030ef          	jal	ra,a24b02 <serial_getc_timeout>
  a2153e:	c909                	beqz	a0,a21550 <ymodem_get_packet+0x72>
  a21540:	3fbd                	jal	ra,a214be <ymodem_flush>
  a21542:	4551                	li	a0,20
  a21544:	4de030ef          	jal	ra,a24a22 <mdelay>
  a21548:	c35a 69a6 051f      	l.li	a0,0xc35a69a6
  a2154e:	a201                	j	a2164e <ymodem_get_packet+0x170>
  a21550:	00f14783          	lbu	a5,15(sp)
  a21554:	0485                	addi	s1,s1,1
  a21556:	0d478c63          	beq	a5,s4,a2162e <ymodem_get_packet+0x150>
  a2155a:	0afa6a63          	bltu	s4,a5,a2160e <ymodem_get_packet+0x130>
  a2155e:	0d978563          	beq	a5,s9,a21628 <ymodem_get_packet+0x14a>
  a21562:	0da78e63          	beq	a5,s10,a2163e <ymodem_get_packet+0x160>
  a21566:	01f793bb          	bnei	a5,1,a21534 <ymodem_get_packet+0x56>
  a2156a:	08000793          	li	a5,128
  a2156e:	000f44b7          	lui	s1,0xf4
  a21572:	00d10593          	addi	a1,sp,13
  a21576:	24048513          	addi	a0,s1,576 # f4240 <g_intheap_size+0xdace0>
  a2157a:	c01c                	sw	a5,0(s0)
  a2157c:	59fd                	li	s3,-1
  a2157e:	584030ef          	jal	ra,a24b02 <serial_getc_timeout>
  a21582:	fd3503e3          	beq	a0,s3,a21548 <ymodem_get_packet+0x6a>
  a21586:	00e10593          	addi	a1,sp,14
  a2158a:	24048513          	addi	a0,s1,576
  a2158e:	574030ef          	jal	ra,a24b02 <serial_getc_timeout>
  a21592:	fb350be3          	beq	a0,s3,a21548 <ymodem_get_packet+0x6a>
  a21596:	450d                	li	a0,3
  a21598:	486030ef          	jal	ra,a24a1e <udelay>
  a2159c:	4981                	li	s3,0
  a2159e:	00440a13          	addi	s4,s0,4
  a215a2:	24048493          	addi	s1,s1,576
  a215a6:	5afd                	li	s5,-1
  a215a8:	401c                	lw	a5,0(s0)
  a215aa:	0af9e363          	bltu	s3,a5,a21650 <ymodem_get_packet+0x172>
  a215ae:	000f49b7          	lui	s3,0xf4
  a215b2:	006c                	addi	a1,sp,12
  a215b4:	24098513          	addi	a0,s3,576 # f4240 <g_intheap_size+0xdace0>
  a215b8:	54a030ef          	jal	ra,a24b02 <serial_getc_timeout>
  a215bc:	54fd                	li	s1,-1
  a215be:	f89505e3          	beq	a0,s1,a21548 <ymodem_get_packet+0x6a>
  a215c2:	00b10593          	addi	a1,sp,11
  a215c6:	24098513          	addi	a0,s3,576
  a215ca:	538030ef          	jal	ra,a24b02 <serial_getc_timeout>
  a215ce:	f6950de3          	beq	a0,s1,a21548 <ymodem_get_packet+0x6a>
  a215d2:	00e14703          	lbu	a4,14(sp)
  a215d6:	00d14783          	lbu	a5,13(sp)
  a215da:	8fb9                	xor	a5,a5,a4
  a215dc:	0ff00713          	li	a4,255
  a215e0:	08e79163          	bne	a5,a4,a21662 <ymodem_get_packet+0x184>
  a215e4:	4010                	lw	a2,0(s0)
  a215e6:	00a025b7          	lui	a1,0xa02
  a215ea:	5f458593          	addi	a1,a1,1524 # a025f4 <g_ymodem+0x4>
  a215ee:	4501                	li	a0,0
  a215f0:	2cc5                	jal	ra,a218e0 <crc16_ccitt>
  a215f2:	00c14703          	lbu	a4,12(sp)
  a215f6:	00b14783          	lbu	a5,11(sp)
  a215fa:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a215fe:	06a79663          	bne	a5,a0,a2166a <ymodem_get_packet+0x18c>
  a21602:	00d14783          	lbu	a5,13(sp)
  a21606:	4501                	li	a0,0
  a21608:	00f90323          	sb	a5,6(s2)
  a2160c:	a089                	j	a2164e <ymodem_get_packet+0x170>
  a2160e:	03578663          	beq	a5,s5,a2163a <ymodem_get_packet+0x15c>
  a21612:	0357e263          	bltu	a5,s5,a21636 <ymodem_get_packet+0x158>
  a21616:	f1779fe3          	bne	a5,s7,a21534 <ymodem_get_packet+0x56>
  a2161a:	0985                	addi	s3,s3,1
  a2161c:	f1899ce3          	bne	s3,s8,a21534 <ymodem_get_packet+0x56>
  a21620:	c35a 69a7 051f      	l.li	a0,0xc35a69a7
  a21626:	a025                	j	a2164e <ymodem_get_packet+0x170>
  a21628:	40000793          	li	a5,1024
  a2162c:	b789                	j	a2156e <ymodem_get_packet+0x90>
  a2162e:	0000 0800 079f      	l.li	a5,0x800
  a21634:	bf2d                	j	a2156e <ymodem_get_packet+0x90>
  a21636:	6785                	lui	a5,0x1
  a21638:	bf1d                	j	a2156e <ymodem_get_packet+0x90>
  a2163a:	6789                	lui	a5,0x2
  a2163c:	bf0d                	j	a2156e <ymodem_get_packet+0x90>
  a2163e:	01b49dbb          	bnei	s1,1,a21534 <ymodem_get_packet+0x56>
  a21642:	4519                	li	a0,6
  a21644:	3e2030ef          	jal	ra,a24a26 <serial_putc>
  a21648:	c35a 69aa 051f      	l.li	a0,0xc35a69aa
  a2164e:	81c4                	popret	{ra,s0-s10},64
  a21650:	013a05b3          	add	a1,s4,s3
  a21654:	8526                	mv	a0,s1
  a21656:	4ac030ef          	jal	ra,a24b02 <serial_getc_timeout>
  a2165a:	ff550ae3          	beq	a0,s5,a2164e <ymodem_get_packet+0x170>
  a2165e:	0985                	addi	s3,s3,1
  a21660:	b7a1                	j	a215a8 <ymodem_get_packet+0xca>
  a21662:	c35a 69a8 051f      	l.li	a0,0xc35a69a8
  a21668:	b7dd                	j	a2164e <ymodem_get_packet+0x170>
  a2166a:	c35a 69a9 051f      	l.li	a0,0xc35a69a9
  a21670:	bff9                	j	a2164e <ymodem_get_packet+0x170>

00a21672 <ymodem_open>:
  a21672:	8088                	push	{ra,s0-s6},-32
  a21674:	00a02937          	lui	s2,0xa02
  a21678:	5f090793          	addi	a5,s2,1520 # a025f0 <g_ymodem>
  a2167c:	6709                	lui	a4,0x2
  a2167e:	0007a023          	sw	zero,0(a5) # 2000 <ccause+0x103e>
  a21682:	04300513          	li	a0,67
  a21686:	97ba                	add	a5,a5,a4
  a21688:	0007a423          	sw	zero,8(a5)
  a2168c:	0007a623          	sw	zero,12(a5)
  a21690:	000782a3          	sb	zero,5(a5)
  a21694:	00078223          	sb	zero,4(a5)
  a21698:	38e030ef          	jal	ra,a24a26 <serial_putc>
  a2169c:	5ae030ef          	jal	ra,a24c4a <boot_wdt_kick>
  a216a0:	c35a77b7          	lui	a5,0xc35a7
  a216a4:	00a04437          	lui	s0,0xa04
  a216a8:	4a51                	li	s4,20
  a216aa:	5f090913          	addi	s2,s2,1520
  a216ae:	5f040413          	addi	s0,s0,1520 # a045f0 <_gp_+0x1914>
  a216b2:	5afd                	li	s5,-1
  a216b4:	9a778b13          	addi	s6,a5,-1625 # c35a69a7 <__data_load__+0xc2b7ef63>
  a216b8:	9a678993          	addi	s3,a5,-1626
  a216bc:	1a7d                	addi	s4,s4,-1
  a216be:	015a1563          	bne	s4,s5,a216c8 <ymodem_open+0x56>
  a216c2:	54fd                	li	s1,-1
  a216c4:	8526                	mv	a0,s1
  a216c6:	8084                	popret	{ra,s0-s6},32
  a216c8:	3d19                	jal	ra,a214de <ymodem_get_packet>
  a216ca:	84aa                	mv	s1,a0
  a216cc:	ed61                	bnez	a0,a217a4 <ymodem_open+0x132>
  a216ce:	207c                	lbu	a5,6(s0)
  a216d0:	ef9d                	bnez	a5,a2170e <ymodem_open+0x9c>
  a216d2:	450d                	li	a0,3
  a216d4:	34a030ef          	jal	ra,a24a1e <udelay>
  a216d8:	00a027b7          	lui	a5,0xa02
  a216dc:	5f478793          	addi	a5,a5,1524 # a025f4 <g_ymodem+0x4>
  a216e0:	08590693          	addi	a3,s2,133
  a216e4:	0785                	addi	a5,a5,1
  a216e6:	fff7c703          	lbu	a4,-1(a5)
  a216ea:	c319                	beqz	a4,a216f0 <ymodem_open+0x7e>
  a216ec:	fed79ce3          	bne	a5,a3,a216e4 <ymodem_open+0x72>
  a216f0:	08000613          	li	a2,128
  a216f4:	02000693          	li	a3,32
  a216f8:	a019                	j	a216fe <ymodem_open+0x8c>
  a216fa:	0785                	addi	a5,a5,1
  a216fc:	167d                	addi	a2,a2,-1
  a216fe:	2398                	lbu	a4,0(a5)
  a21700:	00d71c63          	bne	a4,a3,a21718 <ymodem_open+0xa6>
  a21704:	fa7d                	bnez	a2,a216fa <ymodem_open+0x88>
  a21706:	00042423          	sw	zero,8(s0)
  a2170a:	4785                	li	a5,1
  a2170c:	b05c                	sb	a5,5(s0)
  a2170e:	4785                	li	a5,1
  a21710:	b07c                	sb	a5,7(s0)
  a21712:	00092023          	sw	zero,0(s2)
  a21716:	b77d                	j	a216c4 <ymodem_open+0x52>
  a21718:	4829                	li	a6,10
  a2171a:	3007163b          	bnei	a4,48,a21732 <ymodem_open+0xc0>
  a2171e:	3398                	lbu	a4,1(a5)
  a21720:	0df77713          	andi	a4,a4,223
  a21724:	580713bb          	bnei	a4,88,a21732 <ymodem_open+0xc0>
  a21728:	020662bb          	bltui	a2,2,a21732 <ymodem_open+0xc0>
  a2172c:	0789                	addi	a5,a5,2
  a2172e:	1679                	addi	a2,a2,-2
  a21730:	4841                	li	a6,16
  a21732:	4581                	li	a1,0
  a21734:	4325                	li	t1,9
  a21736:	4895                	li	a7,5
  a21738:	a801                	j	a21748 <ymodem_open+0xd6>
  a2173a:	fd068713          	addi	a4,a3,-48
  a2173e:	00e86563          	bltu	a6,a4,a21748 <ymodem_open+0xd6>
  a21742:	02b805b3          	mul	a1,a6,a1
  a21746:	95ba                	add	a1,a1,a4
  a21748:	2398                	lbu	a4,0(a5)
  a2174a:	e705                	bnez	a4,a21772 <ymodem_open+0x100>
  a2174c:	c40c                	sw	a1,8(s0)
  a2174e:	010007b7          	lui	a5,0x1000
  a21752:	fab7fce3          	bgeu	a5,a1,a2170a <ymodem_open+0x98>
  a21756:	c35a 69ac 049f      	l.li	s1,0xc35a69ac
  a2175c:	b7a5                	j	a216c4 <ymodem_open+0x52>
  a2175e:	fbf70713          	addi	a4,a4,-65 # 1fbf <ccause+0xffd>
  a21762:	9f01                	uxtb	a4
  a21764:	00e8e563          	bltu	a7,a4,a2176e <ymodem_open+0xfc>
  a21768:	fc968713          	addi	a4,a3,-55
  a2176c:	bfc9                	j	a2173e <ymodem_open+0xcc>
  a2176e:	4701                	li	a4,0
  a21770:	bfc9                	j	a21742 <ymodem_open+0xd0>
  a21772:	de69                	beqz	a2,a2174c <ymodem_open+0xda>
  a21774:	fd070513          	addi	a0,a4,-48
  a21778:	01871693          	slli	a3,a4,0x18
  a2177c:	9d01                	uxtb	a0
  a2177e:	0785                	addi	a5,a5,1 # 1000001 <__data_load__+0x5d85bd>
  a21780:	86e1                	srai	a3,a3,0x18
  a21782:	faa37ce3          	bgeu	t1,a0,a2173a <ymodem_open+0xc8>
  a21786:	fdf77513          	andi	a0,a4,-33
  a2178a:	fbf50513          	addi	a0,a0,-65
  a2178e:	9d01                	uxtb	a0
  a21790:	f2a8e9e3          	bltu	a7,a0,a216c2 <ymodem_open+0x50>
  a21794:	f9f70513          	addi	a0,a4,-97
  a21798:	9d01                	uxtb	a0
  a2179a:	fca8e2e3          	bltu	a7,a0,a2175e <ymodem_open+0xec>
  a2179e:	fa968713          	addi	a4,a3,-87
  a217a2:	bf71                	j	a2173e <ymodem_open+0xcc>
  a217a4:	f1650fe3          	beq	a0,s6,a216c2 <ymodem_open+0x50>
  a217a8:	f1351ae3          	bne	a0,s3,a216bc <ymodem_open+0x4a>
  a217ac:	49e030ef          	jal	ra,a24c4a <boot_wdt_kick>
  a217b0:	4551                	li	a0,20
  a217b2:	270030ef          	jal	ra,a24a22 <mdelay>
  a217b6:	04300513          	li	a0,67
  a217ba:	26c030ef          	jal	ra,a24a26 <serial_putc>
  a217be:	bdfd                	j	a216bc <ymodem_open+0x4a>

00a217c0 <ymodem_close>:
  a217c0:	8028                	push	{ra,s0},-16
  a217c2:	00a02437          	lui	s0,0xa02
  a217c6:	49444503          	lbu	a0,1172(s0) # a02494 <g_hiburn_uart>
  a217ca:	152010ef          	jal	ra,a2291c <uapi_uart_rx_fifo_is_empty>
  a217ce:	e501                	bnez	a0,a217d6 <ymodem_close+0x16>
  a217d0:	2b4030ef          	jal	ra,a24a84 <serial_getc>
  a217d4:	bfcd                	j	a217c6 <ymodem_close+0x6>
  a217d6:	8024                	popret	{ra,s0},16

00a217d8 <ymodem_read>:
  a217d8:	80d8                	push	{ra,s0-s11},-64
  a217da:	c35a7bb7          	lui	s7,0xc35a7
  a217de:	00a0 25f0 091f      	l.li	s2,0xa025f0
  a217e4:	6b09                	lui	s6,0x2
  a217e6:	00a04437          	lui	s0,0xa04
  a217ea:	8aaa                	mv	s5,a0
  a217ec:	84ae                	mv	s1,a1
  a217ee:	4a01                	li	s4,0
  a217f0:	9b4a                	add	s6,s6,s2
  a217f2:	5f040413          	addi	s0,s0,1520 # a045f0 <_gp_+0x1914>
  a217f6:	9a7b8c93          	addi	s9,s7,-1625 # c35a69a7 <__data_load__+0xc2b7ef63>
  a217fa:	9aab8d13          	addi	s10,s7,-1622
  a217fe:	004b4783          	lbu	a5,4(s6) # 2004 <ccause+0x1042>
  a21802:	ebdd                	bnez	a5,a218b8 <ymodem_read+0xe0>
  a21804:	c8d5                	beqz	s1,a218b8 <ymodem_read+0xe0>
  a21806:	00092783          	lw	a5,0(s2)
  a2180a:	ef9d                	bnez	a5,a21848 <ymodem_read+0x70>
  a2180c:	4c55                	li	s8,21
  a2180e:	59fd                	li	s3,-1
  a21810:	9abb8d93          	addi	s11,s7,-1621
  a21814:	a885                	j	a21884 <ymodem_read+0xac>
  a21816:	31e1                	jal	ra,a214de <ymodem_get_packet>
  a21818:	89aa                	mv	s3,a0
  a2181a:	e93d                	bnez	a0,a21890 <ymodem_read+0xb8>
  a2181c:	2078                	lbu	a4,6(s0)
  a2181e:	307c                	lbu	a5,7(s0)
  a21820:	04f71a63          	bne	a4,a5,a21874 <ymodem_read+0x9c>
  a21824:	4785                	li	a5,1
  a21826:	0705                	addi	a4,a4,1
  a21828:	b05c                	sb	a5,5(s0)
  a2182a:	b078                	sb	a4,7(s0)
  a2182c:	00092783          	lw	a5,0(s2)
  a21830:	4458                	lw	a4,12(s0)
  a21832:	4414                	lw	a3,8(s0)
  a21834:	973e                	add	a4,a4,a5
  a21836:	c458                	sw	a4,12(s0)
  a21838:	00e6f663          	bgeu	a3,a4,a21844 <ymodem_read+0x6c>
  a2183c:	97b6                	add	a5,a5,a3
  a2183e:	8f99                	sub	a5,a5,a4
  a21840:	00f92023          	sw	a5,0(s2)
  a21844:	205c                	lbu	a5,4(s0)
  a21846:	ffc5                	bnez	a5,a217fe <ymodem_read+0x26>
  a21848:	00092983          	lw	s3,0(s2)
  a2184c:	0134f363          	bgeu	s1,s3,a21852 <ymodem_read+0x7a>
  a21850:	89a6                	mv	s3,s1
  a21852:	00a02637          	lui	a2,0xa02
  a21856:	86ce                	mv	a3,s3
  a21858:	5f460613          	addi	a2,a2,1524 # a025f4 <g_ymodem+0x4>
  a2185c:	85a6                	mv	a1,s1
  a2185e:	8556                	mv	a0,s5
  a21860:	523030ef          	jal	ra,a25582 <memcpy_s>
  a21864:	e52d                	bnez	a0,a218ce <ymodem_read+0xf6>
  a21866:	413484b3          	sub	s1,s1,s3
  a2186a:	9ace                	add	s5,s5,s3
  a2186c:	9a4e                	add	s4,s4,s3
  a2186e:	00092023          	sw	zero,0(s2)
  a21872:	b771                	j	a217fe <ymodem_read+0x26>
  a21874:	17fd                	addi	a5,a5,-1
  a21876:	0ff7f793          	andi	a5,a5,255
  a2187a:	04f71163          	bne	a4,a5,a218bc <ymodem_read+0xe4>
  a2187e:	4519                	li	a0,6
  a21880:	1a6030ef          	jal	ra,a24a26 <serial_putc>
  a21884:	1c7d                	addi	s8,s8,-1
  a21886:	f80c18e3          	bnez	s8,a21816 <ymodem_read+0x3e>
  a2188a:	fa098de3          	beqz	s3,a21844 <ymodem_read+0x6c>
  a2188e:	a02d                	j	a218b8 <ymodem_read+0xe0>
  a21890:	03950463          	beq	a0,s9,a218b8 <ymodem_read+0xe0>
  a21894:	03a51563          	bne	a0,s10,a218be <ymodem_read+0xe6>
  a21898:	4519                	li	a0,6
  a2189a:	18c030ef          	jal	ra,a24a26 <serial_putc>
  a2189e:	04300513          	li	a0,67
  a218a2:	184030ef          	jal	ra,a24a26 <serial_putc>
  a218a6:	3925                	jal	ra,a214de <ymodem_get_packet>
  a218a8:	89aa                	mv	s3,a0
  a218aa:	4519                	li	a0,6
  a218ac:	17a030ef          	jal	ra,a24a26 <serial_putc>
  a218b0:	4785                	li	a5,1
  a218b2:	a05c                	sb	a5,4(s0)
  a218b4:	f40985e3          	beqz	s3,a217fe <ymodem_read+0x26>
  a218b8:	8552                	mv	a0,s4
  a218ba:	80d4                	popret	{ra,s0-s11},64
  a218bc:	89ee                	mv	s3,s11
  a218be:	3101                	jal	ra,a214be <ymodem_flush>
  a218c0:	04300513          	li	a0,67
  a218c4:	162030ef          	jal	ra,a24a26 <serial_putc>
  a218c8:	382030ef          	jal	ra,a24c4a <boot_wdt_kick>
  a218cc:	bf65                	j	a21884 <ymodem_read+0xac>
  a218ce:	5a7d                	li	s4,-1
  a218d0:	b7e5                	j	a218b8 <ymodem_read+0xe0>

00a218d2 <ymodem_get_length>:
  a218d2:	6709                	lui	a4,0x2
  a218d4:	00a0 25f0 079f      	l.li	a5,0xa025f0
  a218da:	97ba                	add	a5,a5,a4
  a218dc:	4788                	lw	a0,8(a5)
  a218de:	8082                	ret

00a218e0 <crc16_ccitt>:
  a218e0:	4781                	li	a5,0
  a218e2:	c989                	beqz	a1,a218f4 <crc16_ccitt+0x14>
  a218e4:	ca01                	beqz	a2,a218f4 <crc16_ccitt+0x14>
  a218e6:	962e                	add	a2,a2,a1
  a218e8:	87aa                	mv	a5,a0
  a218ea:	00a2 6a4c 069f      	l.li	a3,0xa26a4c
  a218f0:	00c59463          	bne	a1,a2,a218f8 <crc16_ccitt+0x18>
  a218f4:	853e                	mv	a0,a5
  a218f6:	8082                	ret
  a218f8:	0585                	addi	a1,a1,1
  a218fa:	fff5c703          	lbu	a4,-1(a1)
  a218fe:	50f7371b          	xorshf	a4,a4,a5,srl,8
  a21902:	02e6871b          	addshf	a4,a3,a4,sll,1
  a21906:	230a                	lhu	a0,0(a4)
  a21908:	10f5379b          	xorshf	a5,a0,a5,sll,8
  a2190c:	9fa1                	uxth	a5
  a2190e:	b7cd                	j	a218f0 <crc16_ccitt+0x10>

00a21910 <loader_serial_ymodem>:
  a21910:	8098                	push	{ra,s0-s7},-48
  a21912:	8aaa                	mv	s5,a0
  a21914:	892e                	mv	s2,a1
  a21916:	8a32                	mv	s4,a2
  a21918:	8436                	mv	s0,a3
  a2191a:	3ba1                	jal	ra,a21672 <ymodem_open>
  a2191c:	e90d                	bnez	a0,a2194e <loader_serial_ymodem+0x3e>
  a2191e:	89aa                	mv	s3,a0
  a21920:	3f4d                	jal	ra,a218d2 <ymodem_get_length>
  a21922:	84aa                	mv	s1,a0
  a21924:	00aa7463          	bgeu	s4,a0,a2192c <loader_serial_ymodem+0x1c>
  a21928:	00a47963          	bgeu	s0,a0,a2193a <loader_serial_ymodem+0x2a>
  a2192c:	85a6                	mv	a1,s1
  a2192e:	00a2 6c4c 051f      	l.li	a0,0xa26c4c
  a21934:	232030ef          	jal	ra,a24b66 <boot_msg1>
  a21938:	a819                	j	a2194e <loader_serial_ymodem+0x3e>
  a2193a:	842a                	mv	s0,a0
  a2193c:	06090d63          	beqz	s2,a219b6 <loader_serial_ymodem+0xa6>
  a21940:	06a97b63          	bgeu	s2,a0,a219b6 <loader_serial_ymodem+0xa6>
  a21944:	00a2 6c60 051f      	l.li	a0,0xa26c60
  a2194a:	20a030ef          	jal	ra,a24b54 <boot_msg0>
  a2194e:	3d8d                	jal	ra,a217c0 <ymodem_close>
  a21950:	547d                	li	s0,-1
  a21952:	a085                	j	a219b2 <loader_serial_ymodem+0xa2>
  a21954:	85a2                	mv	a1,s0
  a21956:	008b7363          	bgeu	s6,s0,a2195c <loader_serial_ymodem+0x4c>
  a2195a:	6589                	lui	a1,0x2
  a2195c:	600a0513          	addi	a0,s4,1536
  a21960:	3da5                	jal	ra,a217d8 <ymodem_read>
  a21962:	892a                	mv	s2,a0
  a21964:	d56d                	beqz	a0,a2194e <loader_serial_ymodem+0x3e>
  a21966:	fea464e3          	bltu	s0,a0,a2194e <loader_serial_ymodem+0x3e>
  a2196a:	c92ff0ef          	jal	ra,a20dfc <boot_get_flash_funcs>
  a2196e:	451c                	lw	a5,8(a0)
  a21970:	85ca                	mv	a1,s2
  a21972:	4681                	li	a3,0
  a21974:	600a0613          	addi	a2,s4,1536
  a21978:	017a8533          	add	a0,s5,s7
  a2197c:	9782                	jalr	a5
  a2197e:	85aa                	mv	a1,a0
  a21980:	c509                	beqz	a0,a2198a <loader_serial_ymodem+0x7a>
  a21982:	00a2 6c78 051f      	l.li	a0,0xa26c78
  a21988:	b775                	j	a21934 <loader_serial_ymodem+0x24>
  a2198a:	41240433          	sub	s0,s0,s2
  a2198e:	99ca                	add	s3,s3,s2
  a21990:	9aca                	add	s5,s5,s2
  a21992:	2b8030ef          	jal	ra,a24c4a <boot_wdt_kick>
  a21996:	fc5d                	bnez	s0,a21954 <loader_serial_ymodem+0x44>
  a21998:	6589                	lui	a1,0x2
  a2199a:	600a0513          	addi	a0,s4,1536
  a2199e:	3d2d                	jal	ra,a217d8 <ymodem_read>
  a219a0:	fb3497e3          	bne	s1,s3,a2194e <loader_serial_ymodem+0x3e>
  a219a4:	85a6                	mv	a1,s1
  a219a6:	00a2 6c8c 051f      	l.li	a0,0xa26c8c
  a219ac:	1ba030ef          	jal	ra,a24b66 <boot_msg1>
  a219b0:	3d01                	jal	ra,a217c0 <ymodem_close>
  a219b2:	8522                	mv	a0,s0
  a219b4:	8094                	popret	{ra,s0-s7},48
  a219b6:	00a04a37          	lui	s4,0xa04
  a219ba:	6b09                	lui	s6,0x2
  a219bc:	ffe00bb7          	lui	s7,0xffe00
  a219c0:	bfd9                	j	a21996 <loader_serial_ymodem+0x86>

00a219c2 <loader_burn_efuse>:
  a219c2:	83d8                	push	{ra,s0-s11},-112
  a219c4:	4540                	lw	s0,12(a0)
  a219c6:	4f700793          	li	a5,1271
  a219ca:	fcf40713          	addi	a4,s0,-49
  a219ce:	00e7fa63          	bgeu	a5,a4,a219e2 <loader_burn_efuse+0x20>
  a219d2:	85a2                	mv	a1,s0
  a219d4:	00a2 6c98 051f      	l.li	a0,0xa26c98
  a219da:	18c030ef          	jal	ra,a24b66 <boot_msg1>
  a219de:	5bfd                	li	s7,-1
  a219e0:	a02d                	j	a21a0a <loader_burn_efuse+0x48>
  a219e2:	05a00513          	li	a0,90
  a219e6:	8dfff0ef          	jal	ra,a212c4 <loader_ack>
  a219ea:	52800693          	li	a3,1320
  a219ee:	03000613          	li	a2,48
  a219f2:	4581                	li	a1,0
  a219f4:	00a30537          	lui	a0,0xa30
  a219f8:	3f21                	jal	ra,a21910 <loader_serial_ymodem>
  a219fa:	8baa                	mv	s7,a0
  a219fc:	c909                	beqz	a0,a21a0e <loader_burn_efuse+0x4c>
  a219fe:	85aa                	mv	a1,a0
  a21a00:	00a2 6cb0 051f      	l.li	a0,0xa26cb0
  a21a06:	160030ef          	jal	ra,a24b66 <boot_msg1>
  a21a0a:	855e                	mv	a0,s7
  a21a0c:	83d4                	popret	{ra,s0-s11},112
  a21a0e:	4581                	li	a1,0
  a21a10:	02000613          	li	a2,32
  a21a14:	0808                	addi	a0,sp,16
  a21a16:	82eff0ef          	jal	ra,a20a44 <memset>
  a21a1a:	09f000ef          	jal	ra,a222b8 <drv_rom_cipher_init>
  a21a1e:	85aa                	mv	a1,a0
  a21a20:	cd01                	beqz	a0,a21a38 <loader_burn_efuse+0x76>
  a21a22:	00a2 6ccc 051f      	l.li	a0,0xa26ccc
  a21a28:	13e030ef          	jal	ra,a24b66 <boot_msg1>
  a21a2c:	00a2 6d64 051f      	l.li	a0,0xa26d64
  a21a32:	122030ef          	jal	ra,a24b54 <boot_msg0>
  a21a36:	b765                	j	a219de <loader_burn_efuse+0x1c>
  a21a38:	fe040593          	addi	a1,s0,-32
  a21a3c:	00a30437          	lui	s0,0xa30
  a21a40:	02000693          	li	a3,32
  a21a44:	0810                	addi	a2,sp,16
  a21a46:	02040513          	addi	a0,s0,32 # a30020 <__data_load__+0x85dc>
  a21a4a:	03d000ef          	jal	ra,a22286 <drv_rom_cipher_sha256>
  a21a4e:	85aa                	mv	a1,a0
  a21a50:	c509                	beqz	a0,a21a5a <loader_burn_efuse+0x98>
  a21a52:	00a2 6cec 051f      	l.li	a0,0xa26cec
  a21a58:	bfc1                	j	a21a28 <loader_burn_efuse+0x66>
  a21a5a:	089000ef          	jal	ra,a222e2 <drv_rom_cipher_deinit>
  a21a5e:	8baa                	mv	s7,a0
  a21a60:	c511                	beqz	a0,a21a6c <loader_burn_efuse+0xaa>
  a21a62:	85aa                	mv	a1,a0
  a21a64:	00a2 6d10 051f      	l.li	a0,0xa26d10
  a21a6a:	bf7d                	j	a21a28 <loader_burn_efuse+0x66>
  a21a6c:	02000613          	li	a2,32
  a21a70:	080c                	addi	a1,sp,16
  a21a72:	00a30537          	lui	a0,0xa30
  a21a76:	b18ff0ef          	jal	ra,a20d8e <memcmp>
  a21a7a:	c519                	beqz	a0,a21a88 <loader_burn_efuse+0xc6>
  a21a7c:	00a2 6d34 051f      	l.li	a0,0xa26d34
  a21a82:	0d2030ef          	jal	ra,a24b54 <boot_msg0>
  a21a86:	b75d                	j	a21a2c <loader_burn_efuse+0x6a>
  a21a88:	303e                	lhu	a5,34(s0)
  a21a8a:	1407e33b          	bltui	a5,20,a21a96 <loader_burn_efuse+0xd4>
  a21a8e:	00a2 6d4c 051f      	l.li	a0,0xa26d4c
  a21a94:	b7fd                	j	a21a82 <loader_burn_efuse+0xc0>
  a21a96:	02144783          	lbu	a5,33(s0)
  a21a9a:	4c81                	li	s9,0
  a21a9c:	00a30ab7          	lui	s5,0xa30
  a21aa0:	943e                	add	s0,s0,a5
  a21aa2:	4b05                	li	s6,1
  a21aa4:	00a27a37          	lui	s4,0xa27
  a21aa8:	00a279b7          	lui	s3,0xa27
  a21aac:	00a27937          	lui	s2,0xa27
  a21ab0:	00a274b7          	lui	s1,0xa27
  a21ab4:	022ad783          	lhu	a5,34(s5) # a30022 <__data_load__+0x85de>
  a21ab8:	f4fcf9e3          	bgeu	s9,a5,a21a0a <loader_burn_efuse+0x48>
  a21abc:	f20401e3          	beqz	s0,a219de <loader_burn_efuse+0x1c>
  a21ac0:	00245d83          	lhu	s11,2(s0)
  a21ac4:	00445d03          	lhu	s10,4(s0)
  a21ac8:	00840713          	addi	a4,s0,8
  a21acc:	8c6e                	mv	s8,s11
  a21ace:	9d6e                	add	s10,s10,s11
  a21ad0:	41bc07b3          	sub	a5,s8,s11
  a21ad4:	9fa1                	uxth	a5
  a21ad6:	01ac4a63          	blt	s8,s10,a21aea <loader_burn_efuse+0x128>
  a21ada:	301c                	lbu	a5,1(s0)
  a21adc:	207a                	lhu	a4,6(s0)
  a21ade:	0c85                	addi	s9,s9,1
  a21ae0:	0ffcfc93          	andi	s9,s9,255
  a21ae4:	97ba                	add	a5,a5,a4
  a21ae6:	943e                	add	s0,s0,a5
  a21ae8:	b7f1                	j	a21ab4 <loader_burn_efuse+0xf2>
  a21aea:	46f7069b          	addshf	a3,a4,a5,srl,3
  a21aee:	2294                	lbu	a3,0(a3)
  a21af0:	8b9d                	andi	a5,a5,7
  a21af2:	00fb17b3          	sll	a5,s6,a5
  a21af6:	8ff5                	and	a5,a5,a3
  a21af8:	e791                	bnez	a5,a21b04 <loader_burn_efuse+0x142>
  a21afa:	0c05                	addi	s8,s8,1
  a21afc:	0c42                	slli	s8,s8,0x10
  a21afe:	010c5c13          	srli	s8,s8,0x10
  a21b02:	b7f9                	j	a21ad0 <loader_burn_efuse+0x10e>
  a21b04:	007c7593          	andi	a1,s8,7
  a21b08:	003c5513          	srli	a0,s8,0x3
  a21b0c:	c63a                	sw	a4,12(sp)
  a21b0e:	02e010ef          	jal	ra,a22b3c <uapi_efuse_write_bit>
  a21b12:	4732                	lw	a4,12(sp)
  a21b14:	d17d                	beqz	a0,a21afa <loader_burn_efuse+0x138>
  a21b16:	85e6                	mv	a1,s9
  a21b18:	d80a0513          	addi	a0,s4,-640 # a26d80 <g_crc16_tab+0x334>
  a21b1c:	04a030ef          	jal	ra,a24b66 <boot_msg1>
  a21b20:	d9c98513          	addi	a0,s3,-612 # a26d9c <g_crc16_tab+0x350>
  a21b24:	723020ef          	jal	ra,a24a46 <serial_puts>
  a21b28:	202a                	lhu	a0,2(s0)
  a21b2a:	4585                	li	a1,1
  a21b2c:	773020ef          	jal	ra,a24a9e <serial_puthex>
  a21b30:	da890513          	addi	a0,s2,-600 # a26da8 <g_crc16_tab+0x35c>
  a21b34:	713020ef          	jal	ra,a24a46 <serial_puts>
  a21b38:	204a                	lhu	a0,4(s0)
  a21b3a:	4585                	li	a1,1
  a21b3c:	763020ef          	jal	ra,a24a9e <serial_puthex>
  a21b40:	e6848513          	addi	a0,s1,-408 # a26e68 <sfc_cfg+0x98>
  a21b44:	703020ef          	jal	ra,a24a46 <serial_puts>
  a21b48:	bf49                	j	a21ada <loader_burn_efuse+0x118>

00a21b4a <loader_read_efuse>:
  a21b4a:	8258                	push	{ra,s0-s3},-64
  a21b4c:	2542                	lhu	s0,12(a0)
  a21b4e:	02000613          	li	a2,32
  a21b52:	4581                	li	a1,0
  a21b54:	850a                	mv	a0,sp
  a21b56:	eeffe0ef          	jal	ra,a20a44 <memset>
  a21b5a:	00a2 6db4 051f      	l.li	a0,0xa26db4
  a21b60:	7f5020ef          	jal	ra,a24b54 <boot_msg0>
  a21b64:	00a2 6d9c 051f      	l.li	a0,0xa26d9c
  a21b6a:	6dd020ef          	jal	ra,a24a46 <serial_puts>
  a21b6e:	8522                	mv	a0,s0
  a21b70:	4585                	li	a1,1
  a21b72:	72d020ef          	jal	ra,a24a9e <serial_puthex>
  a21b76:	00a2 7448 051f      	l.li	a0,0xa27448
  a21b7c:	6cb020ef          	jal	ra,a24a46 <serial_puts>
  a21b80:	130464bb          	bltui	s0,19,a21b92 <loader_read_efuse+0x48>
  a21b84:	00a2 6dc0 051f      	l.li	a0,0xa26dc0
  a21b8a:	7cb020ef          	jal	ra,a24b54 <boot_msg0>
  a21b8e:	547d                	li	s0,-1
  a21b90:	a825                	j	a21bc8 <loader_read_efuse+0x7e>
  a21b92:	0ff47513          	andi	a0,s0,255
  a21b96:	02000613          	li	a2,32
  a21b9a:	858a                	mv	a1,sp
  a21b9c:	51f020ef          	jal	ra,a248ba <efuse_read_item>
  a21ba0:	842a                	mv	s0,a0
  a21ba2:	f575                	bnez	a0,a21b8e <loader_read_efuse+0x44>
  a21ba4:	4481                	li	s1,0
  a21ba6:	00a279b7          	lui	s3,0xa27
  a21baa:	02000913          	li	s2,32
  a21bae:	009107b3          	add	a5,sp,s1
  a21bb2:	2388                	lbu	a0,0(a5)
  a21bb4:	4585                	li	a1,1
  a21bb6:	0485                	addi	s1,s1,1
  a21bb8:	6e7020ef          	jal	ra,a24a9e <serial_puthex>
  a21bbc:	dcc98513          	addi	a0,s3,-564 # a26dcc <g_crc16_tab+0x380>
  a21bc0:	687020ef          	jal	ra,a24a46 <serial_puts>
  a21bc4:	ff2495e3          	bne	s1,s2,a21bae <loader_read_efuse+0x64>
  a21bc8:	8522                	mv	a0,s0
  a21bca:	8254                	popret	{ra,s0-s3},64

00a21bcc <sfc_flash_read>:
  a21bcc:	87b2                	mv	a5,a2
  a21bce:	862e                	mv	a2,a1
  a21bd0:	85be                	mv	a1,a5
  a21bd2:	16d0206f          	j	a2453e <uapi_sfc_reg_read>

00a21bd6 <sfc_flash_init>:
  a21bd6:	00a2 6dd0 051f      	l.li	a0,0xa26dd0
  a21bdc:	0b90206f          	j	a24494 <uapi_sfc_init>

00a21be0 <sfc_flash_erase>:
  a21be0:	ff05923b          	bnei	a1,-1,a21be8 <sfc_flash_erase+0x8>
  a21be4:	3eb0206f          	j	a247ce <uapi_sfc_reg_erase_chip>
  a21be8:	ffe007b7          	lui	a5,0xffe00
  a21bec:	953e                	add	a0,a0,a5
  a21bee:	3230206f          	j	a24710 <uapi_sfc_reg_erase>

00a21bf2 <sfc_flash_write>:
  a21bf2:	00b508b3          	add	a7,a0,a1
  a21bf6:	00800837          	lui	a6,0x800
  a21bfa:	86ae                	mv	a3,a1
  a21bfc:	0108f763          	bgeu	a7,a6,a21c0a <sfc_flash_write+0x18>
  a21c00:	8732                	mv	a4,a2
  a21c02:	862e                	mv	a2,a1
  a21c04:	85ba                	mv	a1,a4
  a21c06:	20d0206f          	j	a24612 <uapi_sfc_reg_write>
  a21c0a:	8018                	push	{ra},-16
  a21c0c:	87aa                	mv	a5,a0
  a21c0e:	00200537          	lui	a0,0x200
  a21c12:	953e                	add	a0,a0,a5
  a21c14:	16f030ef          	jal	ra,a25582 <memcpy_s>
  a21c18:	00a03533          	snez	a0,a0
  a21c1c:	40a00533          	neg	a0,a0
  a21c20:	8014                	popret	{ra},16

00a21c22 <start_loaderboot>:
  a21c22:	9f18                	push	{ra},-512
  a21c24:	db010113          	addi	sp,sp,-592
  a21c28:	41000613          	li	a2,1040
  a21c2c:	4581                	li	a1,0
  a21c2e:	1808                	addi	a0,sp,48
  a21c30:	e15fe0ef          	jal	ra,a20a44 <memset>
  a21c34:	515020ef          	jal	ra,a24948 <boot_clock_adapt>
  a21c38:	451d                	li	a0,7
  a21c3a:	511000ef          	jal	ra,a2294a <uapi_watchdog_init>
  a21c3e:	4501                	li	a0,0
  a21c40:	55d000ef          	jal	ra,a2299c <uapi_watchdog_enable>
  a21c44:	704000ef          	jal	ra,a22348 <uapi_tcxo_init>
  a21c48:	4631                	li	a2,12
  a21c4a:	00a0 6a94 059f      	l.li	a1,0xa06a94
  a21c50:	850a                	mv	a0,sp
  a21c52:	ea1fe0ef          	jal	ra,a20af2 <memcpy>
  a21c56:	4581                	li	a1,0
  a21c58:	850a                	mv	a0,sp
  a21c5a:	75b020ef          	jal	ra,a24bb4 <hiburn_uart_init>
  a21c5e:	00a2 6ddc 051f      	l.li	a0,0xa26ddc
  a21c64:	6f1020ef          	jal	ra,a24b54 <boot_msg0>
  a21c68:	00a2 1bd6 079f      	l.li	a5,0xa21bd6
  a21c6e:	ce3e                	sw	a5,28(sp)
  a21c70:	00a2 1bcc 079f      	l.li	a5,0xa21bcc
  a21c76:	d03e                	sw	a5,32(sp)
  a21c78:	00a2 1bf2 079f      	l.li	a5,0xa21bf2
  a21c7e:	d23e                	sw	a5,36(sp)
  a21c80:	0868                	addi	a0,sp,28
  a21c82:	00a2 1be0 079f      	l.li	a5,0xa21be0
  a21c88:	d43e                	sw	a5,40(sp)
  a21c8a:	d602                	sw	zero,44(sp)
  a21c8c:	978ff0ef          	jal	ra,a20e04 <boot_regist_flash_cmd>
  a21c90:	40003737          	lui	a4,0x40003
  a21c94:	15472783          	lw	a5,340(a4) # 40003154 <__data_load__+0x3f5db710>
  a21c98:	010006b7          	lui	a3,0x1000
  a21c9c:	4515                	li	a0,5
  a21c9e:	8fd5                	or	a5,a5,a3
  a21ca0:	14f72a23          	sw	a5,340(a4)
  a21ca4:	57f020ef          	jal	ra,a24a22 <mdelay>
  a21ca8:	373d                	jal	ra,a21bd6 <sfc_flash_init>
  a21caa:	c931                	beqz	a0,a21cfe <start_loaderboot+0xdc>
  a21cac:	85aa                	mv	a1,a0
  a21cae:	00a2 6df8 051f      	l.li	a0,0xa26df8
  a21cb4:	6b3020ef          	jal	ra,a24b66 <boot_msg1>
  a21cb8:	4d5020ef          	jal	ra,a2498c <switch_flash_clock_to_pll>
  a21cbc:	4fd020ef          	jal	ra,a249b8 <config_sfc_ctrl_ds>
  a21cc0:	5e2020ef          	jal	ra,a242a2 <sfc_port_fix_sr>
  a21cc4:	85aa                	mv	a1,a0
  a21cc6:	c511                	beqz	a0,a21cd2 <start_loaderboot+0xb0>
  a21cc8:	00a2 6e24 051f      	l.li	a0,0xa26e24
  a21cce:	699020ef          	jal	ra,a24b66 <boot_msg1>
  a21cd2:	3f7020ef          	jal	ra,a248c8 <set_efuse_period>
  a21cd6:	5a7000ef          	jal	ra,a22a7c <uapi_efuse_init>
  a21cda:	078030ef          	jal	ra,a24d52 <boot_malloc_init>
  a21cde:	03c030ef          	jal	ra,a24d1a <check_chip_type>
  a21ce2:	e505                	bnez	a0,a21d0a <start_loaderboot+0xe8>
  a21ce4:	05a00513          	li	a0,90
  a21ce8:	ddcff0ef          	jal	ra,a212c4 <loader_ack>
  a21cec:	00a2 6e38 051f      	l.li	a0,0xa26e38
  a21cf2:	663020ef          	jal	ra,a24b54 <boot_msg0>
  a21cf6:	1808                	addi	a0,sp,48
  a21cf8:	e42ff0ef          	jal	ra,a2133a <cmd_loop>
  a21cfc:	a001                	j	a21cfc <start_loaderboot+0xda>
  a21cfe:	00a2 6e10 051f      	l.li	a0,0xa26e10
  a21d04:	651020ef          	jal	ra,a24b54 <boot_msg0>
  a21d08:	bf45                	j	a21cb8 <start_loaderboot+0x96>
  a21d0a:	44010113          	addi	sp,sp,1088
  a21d0e:	8014                	popret	{ra},16

00a21d10 <serial_port_set_baudrate>:
  a21d10:	8128                	push	{ra,s0},-32
  a21d12:	842a                	mv	s0,a0
  a21d14:	71d020ef          	jal	ra,a24c30 <hiburn_uart_deinit>
  a21d18:	440017b7          	lui	a5,0x44001
  a21d1c:	1047a703          	lw	a4,260(a5) # 44001104 <__data_load__+0x435d96c0>
  a21d20:	fffb ffff 069f      	l.li	a3,0xfffbffff
  a21d26:	0989 6800 059f      	l.li	a1,0x9896800
  a21d2c:	8f75                	and	a4,a4,a3
  a21d2e:	10e7a223          	sw	a4,260(a5)
  a21d32:	1347a703          	lw	a4,308(a5)
  a21d36:	000406b7          	lui	a3,0x40
  a21d3a:	4501                	li	a0,0
  a21d3c:	00276713          	ori	a4,a4,2
  a21d40:	12e7aa23          	sw	a4,308(a5)
  a21d44:	1047a703          	lw	a4,260(a5)
  a21d48:	8f55                	or	a4,a4,a3
  a21d4a:	10e7a223          	sw	a4,260(a5)
  a21d4e:	2ae020ef          	jal	ra,a23ffc <uart_port_set_clock_value>
  a21d52:	4631                	li	a2,12
  a21d54:	85a2                	mv	a1,s0
  a21d56:	850a                	mv	a0,sp
  a21d58:	d9bfe0ef          	jal	ra,a20af2 <memcpy>
  a21d5c:	850a                	mv	a0,sp
  a21d5e:	4581                	li	a1,0
  a21d60:	655020ef          	jal	ra,a24bb4 <hiburn_uart_init>
  a21d64:	4501                	li	a0,0
  a21d66:	8124                	popret	{ra,s0},32

00a21d68 <uart_ack>:
  a21d68:	8038                	push	{ra,s0-s1},-16
  a21d6a:	dead beef 079f      	l.li	a5,0xdeadbeef
  a21d70:	c15c                	sw	a5,4(a0)
  a21d72:	1ee1 000c 079f      	l.li	a5,0x1ee1000c
  a21d78:	00450493          	addi	s1,a0,4 # 200004 <g_intheap_size+0x1e6aa4>
  a21d7c:	c51c                	sw	a5,8(a0)
  a21d7e:	05a00793          	li	a5,90
  a21d82:	842a                	mv	s0,a0
  a21d84:	a55e                	sh	a5,12(a0)
  a21d86:	4629                	li	a2,10
  a21d88:	85a6                	mv	a1,s1
  a21d8a:	4501                	li	a0,0
  a21d8c:	3e91                	jal	ra,a218e0 <crc16_ccitt>
  a21d8e:	240e                	lhu	a1,8(s0)
  a21d90:	40a41623          	sh	a0,1036(s0)
  a21d94:	8526                	mv	a0,s1
  a21d96:	15f9                	addi	a1,a1,-2 # 1ffe <ccause+0x103c>
  a21d98:	4d3020ef          	jal	ra,a24a6a <serial_put_buf>
  a21d9c:	4589                	li	a1,2
  a21d9e:	40c40513          	addi	a0,s0,1036
  a21da2:	8030                	pop	{ra,s0-s1},16
  a21da4:	4c70206f          	j	a24a6a <serial_put_buf>

00a21da8 <uart_baudrate_rcv>:
  a21da8:	9f38                	push	{ra,s0-s1},-512
  a21daa:	de010113          	addi	sp,sp,-544
  a21dae:	84aa                	mv	s1,a0
  a21db0:	41000613          	li	a2,1040
  a21db4:	4581                	li	a1,0
  a21db6:	850a                	mv	a0,sp
  a21db8:	c8dfe0ef          	jal	ra,a20a44 <memset>
  a21dbc:	449c                	lw	a5,8(s1)
  a21dbe:	00ff ffff 071f      	l.li	a4,0xffffff
  a21dc4:	4501                	li	a0,0
  a21dc6:	8ff9                	and	a5,a5,a4
  a21dc8:	005a 0012 071f      	l.li	a4,0x5a0012
  a21dce:	02e79363          	bne	a5,a4,a21df4 <uart_baudrate_rcv+0x4c>
  a21dd2:	00a06437          	lui	s0,0xa06
  a21dd6:	46a1                	li	a3,8
  a21dd8:	00c48613          	addi	a2,s1,12
  a21ddc:	45b1                	li	a1,12
  a21dde:	60040513          	addi	a0,s0,1536 # a06600 <g_uart_param>
  a21de2:	7a0030ef          	jal	ra,a25582 <memcpy_s>
  a21de6:	850a                	mv	a0,sp
  a21de8:	3741                	jal	ra,a21d68 <uart_ack>
  a21dea:	4515                	li	a0,5
  a21dec:	437020ef          	jal	ra,a24a22 <mdelay>
  a21df0:	60040513          	addi	a0,s0,1536
  a21df4:	41010113          	addi	sp,sp,1040
  a21df8:	8034                	popret	{ra,s0-s1},16

00a21dfa <loader_download_is_flash_all_erased>:
  a21dfa:	00a0 660c 079f      	l.li	a5,0xa0660c
  a21e00:	2388                	lbu	a0,0(a5)
  a21e02:	8082                	ret

00a21e04 <loader_erase_all_process>:
  a21e04:	2538                	lbu	a4,10(a0)
  a21e06:	0d200793          	li	a5,210
  a21e0a:	00f70663          	beq	a4,a5,a21e16 <loader_erase_all_process+0x12>
  a21e0e:	557d                	li	a0,-1
  a21e10:	8082                	ret
  a21e12:	557d                	li	a0,-1
  a21e14:	8134                	popret	{ra,s0-s1},32
  a21e16:	8138                	push	{ra,s0-s1},-32
  a21e18:	4904                	lw	s1,16(a0)
  a21e1a:	495c                	lw	a5,20(a0)
  a21e1c:	842e                	mv	s0,a1
  a21e1e:	009034b3          	snez	s1,s1
  a21e22:	ff0799bb          	bnei	a5,-1,a21e48 <loader_erase_all_process+0x44>
  a21e26:	fd7fe0ef          	jal	ra,a20dfc <boot_get_flash_funcs>
  a21e2a:	c62a                	sw	a0,12(sp)
  a21e2c:	d17d                	beqz	a0,a21e12 <loader_erase_all_process+0xe>
  a21e2e:	61d020ef          	jal	ra,a24c4a <boot_wdt_kick>
  a21e32:	4532                	lw	a0,12(sp)
  a21e34:	55fd                	li	a1,-1
  a21e36:	455c                	lw	a5,12(a0)
  a21e38:	4501                	li	a0,0
  a21e3a:	9782                	jalr	a5
  a21e3c:	fd61                	bnez	a0,a21e14 <loader_erase_all_process+0x10>
  a21e3e:	00a0 660c 079f      	l.li	a5,0xa0660c
  a21e44:	4705                	li	a4,1
  a21e46:	a398                	sb	a4,0(a5)
  a21e48:	a004                	sb	s1,0(s0)
  a21e4a:	4501                	li	a0,0
  a21e4c:	b7e1                	j	a21e14 <loader_erase_all_process+0x10>

00a21e4e <non_os_enter_critical>:
  a21e4e:	8038                	push	{ra,s0-s1},-16
  a21e50:	300024f3          	csrr	s1,mstatus
  a21e54:	300477f3          	csrrci	a5,mstatus,8
  a21e58:	00a06437          	lui	s0,0xa06
  a21e5c:	61c40793          	addi	a5,s0,1564 # a0661c <g_non_os_critical_nesting>
  a21e60:	239e                	lhu	a5,0(a5)
  a21e62:	61c40413          	addi	s0,s0,1564
  a21e66:	9fa1                	uxth	a5
  a21e68:	eb89                	bnez	a5,a21e7a <non_os_enter_critical+0x2c>
  a21e6a:	00a0 6614 079f      	l.li	a5,0xa06614
  a21e70:	439c                	lw	a5,0(a5)
  a21e72:	c781                	beqz	a5,a21e7a <non_os_enter_critical+0x2c>
  a21e74:	8586                	mv	a1,ra
  a21e76:	4501                	li	a0,0
  a21e78:	9782                	jalr	a5
  a21e7a:	00a0 6610 079f      	l.li	a5,0xa06610
  a21e80:	439c                	lw	a5,0(a5)
  a21e82:	c789                	beqz	a5,a21e8c <non_os_enter_critical+0x3e>
  a21e84:	8586                	mv	a1,ra
  a21e86:	2012                	lhu	a2,0(s0)
  a21e88:	4501                	li	a0,0
  a21e8a:	9782                	jalr	a5
  a21e8c:	201e                	lhu	a5,0(s0)
  a21e8e:	9fa1                	uxth	a5
  a21e90:	eb89                	bnez	a5,a21ea2 <non_os_enter_critical+0x54>
  a21e92:	808d                	srli	s1,s1,0x3
  a21e94:	0014c493          	xori	s1,s1,1
  a21e98:	8885                	andi	s1,s1,1
  a21e9a:	00a0 6618 079f      	l.li	a5,0xa06618
  a21ea0:	c384                	sw	s1,0(a5)
  a21ea2:	201e                	lhu	a5,0(s0)
  a21ea4:	0785                	addi	a5,a5,1
  a21ea6:	9fa1                	uxth	a5
  a21ea8:	a01e                	sh	a5,0(s0)
  a21eaa:	201e                	lhu	a5,0(s0)
  a21eac:	9fa1                	uxth	a5
  a21eae:	eb81                	bnez	a5,a21ebe <non_os_enter_critical+0x70>
  a21eb0:	06300593          	li	a1,99
  a21eb4:	03100513          	li	a0,49
  a21eb8:	8030                	pop	{ra,s0-s1},16
  a21eba:	55a0306f          	j	a25414 <panic>
  a21ebe:	0ff0000f          	fence
  a21ec2:	0ff0000f          	fence
  a21ec6:	8034                	popret	{ra,s0-s1},16

00a21ec8 <non_os_exit_critical>:
  a21ec8:	8038                	push	{ra,s0-s1},-16
  a21eca:	00a06437          	lui	s0,0xa06
  a21ece:	61c40793          	addi	a5,s0,1564 # a0661c <g_non_os_critical_nesting>
  a21ed2:	239e                	lhu	a5,0(a5)
  a21ed4:	9fa1                	uxth	a5
  a21ed6:	eb81                	bnez	a5,a21ee6 <non_os_exit_critical+0x1e>
  a21ed8:	06f00593          	li	a1,111
  a21edc:	03100513          	li	a0,49
  a21ee0:	8030                	pop	{ra,s0-s1},16
  a21ee2:	5320306f          	j	a25414 <panic>
  a21ee6:	61c40413          	addi	s0,s0,1564
  a21eea:	201e                	lhu	a5,0(s0)
  a21eec:	8486                	mv	s1,ra
  a21eee:	17fd                	addi	a5,a5,-1
  a21ef0:	9fa1                	uxth	a5
  a21ef2:	a01e                	sh	a5,0(s0)
  a21ef4:	00a0 6610 079f      	l.li	a5,0xa06610
  a21efa:	439c                	lw	a5,0(a5)
  a21efc:	c789                	beqz	a5,a21f06 <non_os_exit_critical+0x3e>
  a21efe:	8586                	mv	a1,ra
  a21f00:	2012                	lhu	a2,0(s0)
  a21f02:	4505                	li	a0,1
  a21f04:	9782                	jalr	a5
  a21f06:	201e                	lhu	a5,0(s0)
  a21f08:	9fa1                	uxth	a5
  a21f0a:	e785                	bnez	a5,a21f32 <non_os_exit_critical+0x6a>
  a21f0c:	00a0 6614 079f      	l.li	a5,0xa06614
  a21f12:	439c                	lw	a5,0(a5)
  a21f14:	c781                	beqz	a5,a21f1c <non_os_exit_critical+0x54>
  a21f16:	85a6                	mv	a1,s1
  a21f18:	4505                	li	a0,1
  a21f1a:	9782                	jalr	a5
  a21f1c:	00a0 6618 079f      	l.li	a5,0xa06618
  a21f22:	439c                	lw	a5,0(a5)
  a21f24:	e399                	bnez	a5,a21f2a <non_os_exit_critical+0x62>
  a21f26:	300467f3          	csrrsi	a5,mstatus,8
  a21f2a:	0ff0000f          	fence
  a21f2e:	0ff0000f          	fence
  a21f32:	8034                	popret	{ra,s0-s1},16

00a21f34 <malloc_register_funcs>:
  a21f34:	8018                	push	{ra},-16
  a21f36:	862a                	mv	a2,a0
  a21f38:	46b1                	li	a3,12
  a21f3a:	45b1                	li	a1,12
  a21f3c:	00a0 6620 051f      	l.li	a0,0xa06620
  a21f42:	640030ef          	jal	ra,a25582 <memcpy_s>
  a21f46:	4501                	li	a0,0
  a21f48:	8014                	popret	{ra},16

00a21f4a <rom_malloc_init>:
  a21f4a:	8038                	push	{ra,s0-s1},-16
  a21f4c:	842e                	mv	s0,a1
  a21f4e:	46e1                	li	a3,24
  a21f50:	4601                	li	a2,0
  a21f52:	45e1                	li	a1,24
  a21f54:	84aa                	mv	s1,a0
  a21f56:	664030ef          	jal	ra,a255ba <memset_s>
  a21f5a:	ff840793          	addi	a5,s0,-8
  a21f5e:	00a0 662c 071f      	l.li	a4,0xa0662c
  a21f64:	01b48513          	addi	a0,s1,27
  a21f68:	9bf1                	andi	a5,a5,-4
  a21f6a:	9971                	andi	a0,a0,-4
  a21f6c:	cb1c                	sw	a5,16(a4)
  a21f6e:	17e1                	addi	a5,a5,-8
  a21f70:	8f89                	sub	a5,a5,a0
  a21f72:	c748                	sw	a0,12(a4)
  a21f74:	9fa1                	uxth	a5
  a21f76:	a15e                	sh	a5,4(a0)
  a21f78:	c71c                	sw	a5,8(a4)
  a21f7a:	679d                	lui	a5,0x7
  a21f7c:	07478793          	addi	a5,a5,116 # 7074 <ccause+0x60b2>
  a21f80:	a17e                	sh	a5,6(a0)
  a21f82:	00052023          	sw	zero,0(a0)
  a21f86:	8034                	popret	{ra,s0-s1},16

00a21f88 <malloc_init>:
  a21f88:	b7c9                	j	a21f4a <rom_malloc_init>

00a21f8a <rom_malloc>:
  a21f8a:	00a066b7          	lui	a3,0xa06
  a21f8e:	62c68793          	addi	a5,a3,1580 # a0662c <g_st_dfx>
  a21f92:	47dc                	lw	a5,12(a5)
  a21f94:	62c68693          	addi	a3,a3,1580
  a21f98:	e399                	bnez	a5,a21f9e <rom_malloc+0x14>
  a21f9a:	4501                	li	a0,0
  a21f9c:	8082                	ret
  a21f9e:	dd75                	beqz	a0,a21f9a <rom_malloc+0x10>
  a21fa0:	23f2                	lhu	a2,6(a5)
  a21fa2:	671d                	lui	a4,0x7
  a21fa4:	07470813          	addi	a6,a4,116 # 7074 <ccause+0x60b2>
  a21fa8:	01060663          	beq	a2,a6,a21fb4 <rom_malloc+0x2a>
  a21fac:	c6c70713          	addi	a4,a4,-916
  a21fb0:	fee615e3          	bne	a2,a4,a21f9a <rom_malloc+0x10>
  a21fb4:	050d                	addi	a0,a0,3
  a21fb6:	9971                	andi	a0,a0,-4
  a21fb8:	671d                	lui	a4,0x7
  a21fba:	9d21                	uxth	a0
  a21fbc:	4881                	li	a7,0
  a21fbe:	07470613          	addi	a2,a4,116 # 7074 <ccause+0x60b2>
  a21fc2:	00850813          	addi	a6,a0,8
  a21fc6:	c6c70313          	addi	t1,a4,-916
  a21fca:	0067de03          	lhu	t3,6(a5)
  a21fce:	23da                	lhu	a4,4(a5)
  a21fd0:	04ce1263          	bne	t3,a2,a22014 <rom_malloc+0x8a>
  a21fd4:	02e87563          	bgeu	a6,a4,a21ffe <rom_malloc+0x74>
  a21fd8:	8f09                	sub	a4,a4,a0
  a21fda:	983e                	add	a6,a6,a5
  a21fdc:	1761                	addi	a4,a4,-8
  a21fde:	00e81223          	sh	a4,4(a6) # 800004 <g_intheap_size+0x7e6aa4>
  a21fe2:	00c81323          	sh	a2,6(a6)
  a21fe6:	671d                	lui	a4,0x7
  a21fe8:	c6c70713          	addi	a4,a4,-916 # 6c6c <ccause+0x5caa>
  a21fec:	c38c                	sw	a1,0(a5)
  a21fee:	a3fa                	sh	a4,6(a5)
  a21ff0:	4298                	lw	a4,0(a3)
  a21ff2:	a3ca                	sh	a0,4(a5)
  a21ff4:	953a                	add	a0,a0,a4
  a21ff6:	c288                	sw	a0,0(a3)
  a21ff8:	00878513          	addi	a0,a5,8
  a21ffc:	8082                	ret
  a21ffe:	00a76b63          	bltu	a4,a0,a22014 <rom_malloc+0x8a>
  a22002:	661d                	lui	a2,0x7
  a22004:	c6c60613          	addi	a2,a2,-916 # 6c6c <ccause+0x5caa>
  a22008:	c38c                	sw	a1,0(a5)
  a2200a:	a3f2                	sh	a2,6(a5)
  a2200c:	4290                	lw	a2,0(a3)
  a2200e:	9732                	add	a4,a4,a2
  a22010:	c298                	sw	a4,0(a3)
  a22012:	b7dd                	j	a21ff8 <rom_malloc+0x6e>
  a22014:	0721                	addi	a4,a4,8
  a22016:	97ba                	add	a5,a5,a4
  a22018:	4a98                	lw	a4,16(a3)
  a2201a:	00e7ef63          	bltu	a5,a4,a22038 <rom_malloc+0xae>
  a2201e:	f6089ee3          	bnez	a7,a21f9a <rom_malloc+0x10>
  a22022:	46d8                	lw	a4,12(a3)
  a22024:	235e                	lhu	a5,4(a4)
  a22026:	0106ae03          	lw	t3,16(a3)
  a2202a:	07a1                	addi	a5,a5,8
  a2202c:	00f708b3          	add	a7,a4,a5
  a22030:	01c8ea63          	bltu	a7,t3,a22044 <rom_malloc+0xba>
  a22034:	46dc                	lw	a5,12(a3)
  a22036:	4885                	li	a7,1
  a22038:	23fa                	lhu	a4,6(a5)
  a2203a:	f86708e3          	beq	a4,t1,a21fca <rom_malloc+0x40>
  a2203e:	f8c706e3          	beq	a4,a2,a21fca <rom_malloc+0x40>
  a22042:	bfa1                	j	a21f9a <rom_malloc+0x10>
  a22044:	00675e03          	lhu	t3,6(a4)
  a22048:	00ce1b63          	bne	t3,a2,a2205e <rom_malloc+0xd4>
  a2204c:	0068de03          	lhu	t3,6(a7)
  a22050:	00ce1763          	bne	t3,a2,a2205e <rom_malloc+0xd4>
  a22054:	0048d883          	lhu	a7,4(a7)
  a22058:	97c6                	add	a5,a5,a7
  a2205a:	a35e                	sh	a5,4(a4)
  a2205c:	88ba                	mv	a7,a4
  a2205e:	8746                	mv	a4,a7
  a22060:	b7d1                	j	a22024 <rom_malloc+0x9a>

00a22062 <malloc>:
  a22062:	8018                	push	{ra},-16
  a22064:	8586                	mv	a1,ra
  a22066:	8010                	pop	{ra},16
  a22068:	b70d                	j	a21f8a <rom_malloc>

00a2206a <rom_free>:
  a2206a:	c50d                	beqz	a0,a22094 <rom_free+0x2a>
  a2206c:	ffe55703          	lhu	a4,-2(a0)
  a22070:	0000 6c6c 079f      	l.li	a5,0x6c6c
  a22076:	00f71f63          	bne	a4,a5,a22094 <rom_free+0x2a>
  a2207a:	679d                	lui	a5,0x7
  a2207c:	07478793          	addi	a5,a5,116 # 7074 <ccause+0x60b2>
  a22080:	fef51f23          	sh	a5,-2(a0)
  a22084:	00a0 662c 071f      	l.li	a4,0xa0662c
  a2208a:	ffc55683          	lhu	a3,-4(a0)
  a2208e:	435c                	lw	a5,4(a4)
  a22090:	97b6                	add	a5,a5,a3
  a22092:	c35c                	sw	a5,4(a4)
  a22094:	4501                	li	a0,0
  a22096:	8082                	ret

00a22098 <free>:
  a22098:	bfc9                	j	a2206a <rom_free>

00a2209a <osal_irq_lock>:
  a2209a:	8018                	push	{ra},-16
  a2209c:	3b4d                	jal	ra,a21e4e <non_os_enter_critical>
  a2209e:	4501                	li	a0,0
  a220a0:	8014                	popret	{ra},16

00a220a2 <osal_irq_restore>:
  a220a2:	b51d                	j	a21ec8 <non_os_exit_critical>

00a220a4 <drv_rom_hash>:
  a220a4:	8e78                	push	{ra,s0-s5},-256
  a220a6:	892a                	mv	s2,a0
  a220a8:	8aae                	mv	s5,a1
  a220aa:	84b2                	mv	s1,a2
  a220ac:	4581                	li	a1,0
  a220ae:	04000613          	li	a2,64
  a220b2:	1008                	addi	a0,sp,32
  a220b4:	c63a                	sw	a4,12(sp)
  a220b6:	8a36                	mv	s4,a3
  a220b8:	843e                	mv	s0,a5
  a220ba:	98bfe0ef          	jal	ra,a20a44 <memset>
  a220be:	08000613          	li	a2,128
  a220c2:	4581                	li	a1,0
  a220c4:	1088                	addi	a0,sp,96
  a220c6:	97ffe0ef          	jal	ra,a20a44 <memset>
  a220ca:	ce02                	sw	zero,28(sp)
  a220cc:	4732                	lw	a4,12(sp)
  a220ce:	000a9463          	bnez	s5,a220d6 <drv_rom_hash+0x32>
  a220d2:	557d                	li	a0,-1
  a220d4:	8e74                	popret	{ra,s0-s5},256
  a220d6:	fe0a0ee3          	beqz	s4,a220d2 <drv_rom_hash+0x2e>
  a220da:	010007b7          	lui	a5,0x1000
  a220de:	fef4fae3          	bgeu	s1,a5,a220d2 <drv_rom_hash+0x2e>
  a220e2:	20f71c3b          	bnei	a4,32,a220d2 <drv_rom_hash+0x2e>
  a220e6:	0216 9100 079f      	l.li	a5,0x2169100
  a220ec:	0cf90963          	beq	s2,a5,a221be <drv_rom_hash+0x11a>
  a220f0:	00a2 6e6c 061f      	l.li	a2,0xa26e6c
  a220f6:	85ca                	mv	a1,s2
  a220f8:	8522                	mv	a0,s0
  a220fa:	615000ef          	jal	ra,a22f0e <hal_cipher_hash_config>
  a220fe:	f979                	bnez	a0,a220d4 <drv_rom_hash+0x30>
  a22100:	03f4f913          	andi	s2,s1,63
  a22104:	412489b3          	sub	s3,s1,s2
  a22108:	0a099f63          	bnez	s3,a221c6 <drv_rom_hash+0x122>
  a2210c:	08000693          	li	a3,128
  a22110:	4601                	li	a2,0
  a22112:	08000593          	li	a1,128
  a22116:	1088                	addi	a0,sp,96
  a22118:	4a2030ef          	jal	ra,a255ba <memset_s>
  a2211c:	86ca                	mv	a3,s2
  a2211e:	013a8633          	add	a2,s5,s3
  a22122:	08000593          	li	a1,128
  a22126:	1088                	addi	a0,sp,96
  a22128:	45a030ef          	jal	ra,a25582 <memcpy_s>
  a2212c:	f15d                	bnez	a0,a220d2 <drv_rom_hash+0x2e>
  a2212e:	119c                	addi	a5,sp,224
  a22130:	97ca                	add	a5,a5,s2
  a22132:	f8000713          	li	a4,-128
  a22136:	f8e78023          	sb	a4,-128(a5) # ffff80 <__data_load__+0x5d853c>
  a2213a:	04000993          	li	s3,64
  a2213e:	3809623b          	bltui	s2,56,a22146 <drv_rom_hash+0xa2>
  a22142:	08000993          	li	s3,128
  a22146:	00349713          	slli	a4,s1,0x3
  a2214a:	01b49613          	slli	a2,s1,0x1b
  a2214e:	0000 ff00 079f      	l.li	a5,0xff00
  a22154:	50e7c79b          	andshf	a5,a5,a4,srl,8
  a22158:	70e6261b          	orshf	a2,a2,a4,srl,24
  a2215c:	8e5d                	or	a2,a2,a5
  a2215e:	00ff07b7          	lui	a5,0xff0
  a22162:	1697c49b          	andshf	s1,a5,s1,sll,11
  a22166:	8e45                	or	a2,a2,s1
  a22168:	ffc98513          	addi	a0,s3,-4
  a2216c:	109c                	addi	a5,sp,96
  a2216e:	ce32                	sw	a2,28(sp)
  a22170:	4691                	li	a3,4
  a22172:	0870                	addi	a2,sp,28
  a22174:	4591                	li	a1,4
  a22176:	953e                	add	a0,a0,a5
  a22178:	40a030ef          	jal	ra,a25582 <memcpy_s>
  a2217c:	f939                	bnez	a0,a220d2 <drv_rom_hash+0x2e>
  a2217e:	4695                	li	a3,5
  a22180:	864e                	mv	a2,s3
  a22182:	108c                	addi	a1,sp,96
  a22184:	8522                	mv	a0,s0
  a22186:	66b000ef          	jal	ra,a22ff0 <hal_cipher_hash_add_in_node>
  a2218a:	f529                	bnez	a0,a220d4 <drv_rom_hash+0x30>
  a2218c:	4581                	li	a1,0
  a2218e:	8522                	mv	a0,s0
  a22190:	6d5000ef          	jal	ra,a23064 <hal_cipher_hash_start>
  a22194:	f121                	bnez	a0,a220d4 <drv_rom_hash+0x30>
  a22196:	04000613          	li	a2,64
  a2219a:	100c                	addi	a1,sp,32
  a2219c:	8522                	mv	a0,s0
  a2219e:	0b0010ef          	jal	ra,a2324e <hal_cipher_hash_wait_done>
  a221a2:	f90d                	bnez	a0,a220d4 <drv_rom_hash+0x30>
  a221a4:	02000693          	li	a3,32
  a221a8:	1010                	addi	a2,sp,32
  a221aa:	02000593          	li	a1,32
  a221ae:	8552                	mv	a0,s4
  a221b0:	3d2030ef          	jal	ra,a25582 <memcpy_s>
  a221b4:	00a03533          	snez	a0,a0
  a221b8:	40a00533          	neg	a0,a0
  a221bc:	bf21                	j	a220d4 <drv_rom_hash+0x30>
  a221be:	00a2 6e8c 061f      	l.li	a2,0xa26e8c
  a221c4:	bf0d                	j	a220f6 <drv_rom_hash+0x52>
  a221c6:	4695                	li	a3,5
  a221c8:	864e                	mv	a2,s3
  a221ca:	85d6                	mv	a1,s5
  a221cc:	8522                	mv	a0,s0
  a221ce:	623000ef          	jal	ra,a22ff0 <hal_cipher_hash_add_in_node>
  a221d2:	f00511e3          	bnez	a0,a220d4 <drv_rom_hash+0x30>
  a221d6:	4581                	li	a1,0
  a221d8:	8522                	mv	a0,s0
  a221da:	68b000ef          	jal	ra,a23064 <hal_cipher_hash_start>
  a221de:	ee051be3          	bnez	a0,a220d4 <drv_rom_hash+0x30>
  a221e2:	4601                	li	a2,0
  a221e4:	4581                	li	a1,0
  a221e6:	8522                	mv	a0,s0
  a221e8:	066010ef          	jal	ra,a2324e <hal_cipher_hash_wait_done>
  a221ec:	f20500e3          	beqz	a0,a2210c <drv_rom_hash+0x68>
  a221f0:	b5d5                	j	a220d4 <drv_rom_hash+0x30>

00a221f2 <crypto_get_phys_addr>:
  a221f2:	00a0 6644 079f      	l.li	a5,0xa06644
  a221f8:	0087a303          	lw	t1,8(a5) # ff0008 <__data_load__+0x5c85c4>
  a221fc:	00030363          	beqz	t1,a22202 <crypto_get_phys_addr+0x10>
  a22200:	8302                	jr	t1
  a22202:	8082                	ret

00a22204 <drv_cipher_register_func>:
  a22204:	c115                	beqz	a0,a22228 <drv_cipher_register_func+0x24>
  a22206:	4118                	lw	a4,0(a0)
  a22208:	00a0 6644 079f      	l.li	a5,0xa06644
  a2220e:	c398                	sw	a4,0(a5)
  a22210:	4158                	lw	a4,4(a0)
  a22212:	c3d8                	sw	a4,4(a5)
  a22214:	4518                	lw	a4,8(a0)
  a22216:	c798                	sw	a4,8(a5)
  a22218:	4918                	lw	a4,16(a0)
  a2221a:	cb98                	sw	a4,16(a5)
  a2221c:	4d58                	lw	a4,28(a0)
  a2221e:	cfd8                	sw	a4,28(a5)
  a22220:	5118                	lw	a4,32(a0)
  a22222:	4501                	li	a0,0
  a22224:	d398                	sw	a4,32(a5)
  a22226:	8082                	ret
  a22228:	557d                	li	a0,-1
  a2222a:	8082                	ret

00a2222c <crypto_get_cpu_type>:
  a2222c:	00a0 6644 079f      	l.li	a5,0xa06644
  a22232:	01c7a303          	lw	t1,28(a5)
  a22236:	00030363          	beqz	t1,a2223c <crypto_get_cpu_type+0x10>
  a2223a:	8302                	jr	t1
  a2223c:	4505                	li	a0,1
  a2223e:	8082                	ret

00a22240 <crypto_curve_param_init>:
  a22240:	00a2 6eac 059f      	l.li	a1,0xa26eac
  a22246:	00a2 6eb0 051f      	l.li	a0,0xa26eb0
  a2224c:	a009                	j	a2224e <drv_cipher_pke_init_ecc_param>

00a2224e <drv_cipher_pke_init_ecc_param>:
  a2224e:	00a067b7          	lui	a5,0xa06
  a22252:	7aa7ac23          	sw	a0,1976(a5) # a067b8 <g_ecc_params>
  a22256:	00a067b7          	lui	a5,0xa06
  a2225a:	7ab7aa23          	sw	a1,1972(a5) # a067b4 <g_ecc_num>
  a2225e:	8082                	ret

00a22260 <drv_cipher_pke_init>:
  a22260:	8028                	push	{ra,s0},-16
  a22262:	397000ef          	jal	ra,a22df8 <hal_pke_init>
  a22266:	842a                	mv	s0,a0
  a22268:	c119                	beqz	a0,a2226e <drv_cipher_pke_init+0xe>
  a2226a:	3a3000ef          	jal	ra,a22e0c <hal_pke_deinit>
  a2226e:	8522                	mv	a0,s0
  a22270:	8024                	popret	{ra,s0},16

00a22272 <drv_cipher_pke_deinit>:
  a22272:	8118                	push	{ra},-32
  a22274:	399000ef          	jal	ra,a22e0c <hal_pke_deinit>
  a22278:	e509                	bnez	a0,a22282 <drv_cipher_pke_deinit+0x10>
  a2227a:	c62a                	sw	a0,12(sp)
  a2227c:	3ad000ef          	jal	ra,a22e28 <hal_pke_unlock>
  a22280:	4532                	lw	a0,12(sp)
  a22282:	8114                	popret	{ra},32

00a22284 <inner_get_phys_addr>:
  a22284:	8082                	ret

00a22286 <drv_rom_cipher_sha256>:
  a22286:	8128                	push	{ra,s0},-32
  a22288:	842a                	mv	s0,a0
  a2228a:	4505                	li	a0,1
  a2228c:	c62e                	sw	a1,12(sp)
  a2228e:	c432                	sw	a2,8(sp)
  a22290:	c236                	sw	a3,4(sp)
  a22292:	695000ef          	jal	ra,a23126 <hal_hash_lock>
  a22296:	4622                	lw	a2,8(sp)
  a22298:	45b2                	lw	a1,12(sp)
  a2229a:	4712                	lw	a4,4(sp)
  a2229c:	86b2                	mv	a3,a2
  a2229e:	4785                	li	a5,1
  a222a0:	862e                	mv	a2,a1
  a222a2:	0116 9100 051f      	l.li	a0,0x1169100
  a222a8:	85a2                	mv	a1,s0
  a222aa:	3bed                	jal	ra,a220a4 <drv_rom_hash>
  a222ac:	842a                	mv	s0,a0
  a222ae:	4505                	li	a0,1
  a222b0:	407000ef          	jal	ra,a22eb6 <hal_hash_unlock>
  a222b4:	8522                	mv	a0,s0
  a222b6:	8124                	popret	{ra,s0},32

00a222b8 <drv_rom_cipher_init>:
  a222b8:	8318                	push	{ra},-64
  a222ba:	02400613          	li	a2,36
  a222be:	4581                	li	a1,0
  a222c0:	0068                	addi	a0,sp,12
  a222c2:	f82fe0ef          	jal	ra,a20a44 <memset>
  a222c6:	0da010ef          	jal	ra,a233a0 <hal_cipher_trng_init>
  a222ca:	3f59                	jal	ra,a22260 <drv_cipher_pke_init>
  a222cc:	391000ef          	jal	ra,a22e5c <hal_cipher_hash_init>
  a222d0:	00a2 2284 079f      	l.li	a5,0xa22284
  a222d6:	0068                	addi	a0,sp,12
  a222d8:	ca3e                	sw	a5,20(sp)
  a222da:	372d                	jal	ra,a22204 <drv_cipher_register_func>
  a222dc:	3795                	jal	ra,a22240 <crypto_curve_param_init>
  a222de:	4501                	li	a0,0
  a222e0:	8314                	popret	{ra},64

00a222e2 <drv_rom_cipher_deinit>:
  a222e2:	8018                	push	{ra},-16
  a222e4:	3779                	jal	ra,a22272 <drv_cipher_pke_deinit>
  a222e6:	0c8010ef          	jal	ra,a233ae <hal_cipher_trng_deinit>
  a222ea:	3ed000ef          	jal	ra,a22ed6 <hal_cipher_hash_deinit>
  a222ee:	4501                	li	a0,0
  a222f0:	8014                	popret	{ra},16

00a222f2 <uapi_systick_get_count>:
  a222f2:	8048                	push	{ra,s0-s2},-16
  a222f4:	335d                	jal	ra,a2209a <osal_irq_lock>
  a222f6:	00a0 6668 079f      	l.li	a5,0xa06668
  a222fc:	239c                	lbu	a5,0(a5)
  a222fe:	e799                	bnez	a5,a2230c <uapi_systick_get_count+0x1a>
  a22300:	334d                	jal	ra,a220a2 <osal_irq_restore>
  a22302:	4401                	li	s0,0
  a22304:	4481                	li	s1,0
  a22306:	8522                	mv	a0,s0
  a22308:	85a6                	mv	a1,s1
  a2230a:	8044                	popret	{ra,s0-s2},16
  a2230c:	892a                	mv	s2,a0
  a2230e:	551010ef          	jal	ra,a2405e <hal_systick_get_count>
  a22312:	842a                	mv	s0,a0
  a22314:	854a                	mv	a0,s2
  a22316:	84ae                	mv	s1,a1
  a22318:	3369                	jal	ra,a220a2 <osal_irq_restore>
  a2231a:	b7f5                	j	a22306 <uapi_systick_get_count+0x14>

00a2231c <uapi_systick_get_us>:
  a2231c:	8128                	push	{ra,s0},-32
  a2231e:	3fd1                	jal	ra,a222f2 <uapi_systick_get_count>
  a22320:	842a                	mv	s0,a0
  a22322:	c62e                	sw	a1,12(sp)
  a22324:	54b010ef          	jal	ra,a2406e <systick_clock_get>
  a22328:	45b2                	lw	a1,12(sp)
  a2232a:	000f 4240 079f      	l.li	a5,0xf4240
  a22330:	02f43733          	mulhu	a4,s0,a5
  a22334:	862a                	mv	a2,a0
  a22336:	4681                	li	a3,0
  a22338:	02f585b3          	mul	a1,a1,a5
  a2233c:	02f40533          	mul	a0,s0,a5
  a22340:	95ba                	add	a1,a1,a4
  a22342:	afafe0ef          	jal	ra,a2063c <__udivdi3>
  a22346:	8124                	popret	{ra,s0},32

00a22348 <uapi_tcxo_init>:
  a22348:	8048                	push	{ra,s0-s2},-16
  a2234a:	3b81                	jal	ra,a2209a <osal_irq_lock>
  a2234c:	00a0 6669 091f      	l.li	s2,0xa06669
  a22352:	00094783          	lbu	a5,0(s2)
  a22356:	c789                	beqz	a5,a22360 <uapi_tcxo_init+0x18>
  a22358:	33a9                	jal	ra,a220a2 <osal_irq_restore>
  a2235a:	4401                	li	s0,0
  a2235c:	8522                	mv	a0,s0
  a2235e:	8044                	popret	{ra,s0-s2},16
  a22360:	84aa                	mv	s1,a0
  a22362:	05a010ef          	jal	ra,a233bc <hal_tcxo_init>
  a22366:	842a                	mv	s0,a0
  a22368:	c501                	beqz	a0,a22370 <uapi_tcxo_init+0x28>
  a2236a:	8526                	mv	a0,s1
  a2236c:	3b1d                	jal	ra,a220a2 <osal_irq_restore>
  a2236e:	b7fd                	j	a2235c <uapi_tcxo_init+0x14>
  a22370:	4785                	li	a5,1
  a22372:	00f90023          	sb	a5,0(s2)
  a22376:	bfd5                	j	a2236a <uapi_tcxo_init+0x22>

00a22378 <uapi_tcxo_get_count>:
  a22378:	8048                	push	{ra,s0-s2},-16
  a2237a:	3305                	jal	ra,a2209a <osal_irq_lock>
  a2237c:	00a0 6669 079f      	l.li	a5,0xa06669
  a22382:	239c                	lbu	a5,0(a5)
  a22384:	e799                	bnez	a5,a22392 <uapi_tcxo_get_count+0x1a>
  a22386:	3b31                	jal	ra,a220a2 <osal_irq_restore>
  a22388:	4401                	li	s0,0
  a2238a:	4481                	li	s1,0
  a2238c:	8522                	mv	a0,s0
  a2238e:	85a6                	mv	a1,s1
  a22390:	8044                	popret	{ra,s0-s2},16
  a22392:	892a                	mv	s2,a0
  a22394:	054010ef          	jal	ra,a233e8 <hal_tcxo_get>
  a22398:	842a                	mv	s0,a0
  a2239a:	854a                	mv	a0,s2
  a2239c:	84ae                	mv	s1,a1
  a2239e:	3311                	jal	ra,a220a2 <osal_irq_restore>
  a223a0:	b7f5                	j	a2238c <uapi_tcxo_get_count+0x14>

00a223a2 <uapi_tcxo_delay_ms>:
  a223a2:	00a0 6669 079f      	l.li	a5,0xa06669
  a223a8:	239c                	lbu	a5,0(a5)
  a223aa:	c3b1                	beqz	a5,a223ee <uapi_tcxo_delay_ms+0x4c>
  a223ac:	8048                	push	{ra,s0-s2},-16
  a223ae:	842a                	mv	s0,a0
  a223b0:	4d1010ef          	jal	ra,a24080 <tcxo_porting_ticks_per_usec_get>
  a223b4:	3e800793          	li	a5,1000
  a223b8:	02f405b3          	mul	a1,s0,a5
  a223bc:	02f43433          	mulhu	s0,s0,a5
  a223c0:	02a584b3          	mul	s1,a1,a0
  a223c4:	02a40433          	mul	s0,s0,a0
  a223c8:	02a5b5b3          	mulhu	a1,a1,a0
  a223cc:	942e                	add	s0,s0,a1
  a223ce:	376d                	jal	ra,a22378 <uapi_tcxo_get_count>
  a223d0:	00a48933          	add	s2,s1,a0
  a223d4:	009934b3          	sltu	s1,s2,s1
  a223d8:	95a2                	add	a1,a1,s0
  a223da:	94ae                	add	s1,s1,a1
  a223dc:	3f71                	jal	ra,a22378 <uapi_tcxo_get_count>
  a223de:	fe95efe3          	bltu	a1,s1,a223dc <uapi_tcxo_delay_ms+0x3a>
  a223e2:	00b49463          	bne	s1,a1,a223ea <uapi_tcxo_delay_ms+0x48>
  a223e6:	ff256be3          	bltu	a0,s2,a223dc <uapi_tcxo_delay_ms+0x3a>
  a223ea:	4501                	li	a0,0
  a223ec:	8044                	popret	{ra,s0-s2},16
  a223ee:	557d                	li	a0,-1
  a223f0:	8082                	ret

00a223f2 <uapi_tcxo_delay_us>:
  a223f2:	00a0 6669 079f      	l.li	a5,0xa06669
  a223f8:	239c                	lbu	a5,0(a5)
  a223fa:	cb8d                	beqz	a5,a2242c <uapi_tcxo_delay_us+0x3a>
  a223fc:	8048                	push	{ra,s0-s2},-16
  a223fe:	842a                	mv	s0,a0
  a22400:	481010ef          	jal	ra,a24080 <tcxo_porting_ticks_per_usec_get>
  a22404:	02a404b3          	mul	s1,s0,a0
  a22408:	02a43433          	mulhu	s0,s0,a0
  a2240c:	37b5                	jal	ra,a22378 <uapi_tcxo_get_count>
  a2240e:	00a48933          	add	s2,s1,a0
  a22412:	009934b3          	sltu	s1,s2,s1
  a22416:	942e                	add	s0,s0,a1
  a22418:	9426                	add	s0,s0,s1
  a2241a:	3fb9                	jal	ra,a22378 <uapi_tcxo_get_count>
  a2241c:	fe85efe3          	bltu	a1,s0,a2241a <uapi_tcxo_delay_us+0x28>
  a22420:	00b41463          	bne	s0,a1,a22428 <uapi_tcxo_delay_us+0x36>
  a22424:	ff256be3          	bltu	a0,s2,a2241a <uapi_tcxo_delay_us+0x28>
  a22428:	4501                	li	a0,0
  a2242a:	8044                	popret	{ra,s0-s2},16
  a2242c:	557d                	li	a0,-1
  a2242e:	8082                	ret

00a22430 <uart_rx_buffer_report>:
  a22430:	8038                	push	{ra,s0-s1},-16
  a22432:	00a06737          	lui	a4,0xa06
  a22436:	67070793          	addi	a5,a4,1648 # a06670 <g_uart_rx_state_array>
  a2243a:	18a797db          	muliadd	a5,a5,a0,24
  a2243e:	4394                	lw	a3,0(a5)
  a22440:	862e                	mv	a2,a1
  a22442:	842a                	mv	s0,a0
  a22444:	2bce                	lhu	a1,20(a5)
  a22446:	67070493          	addi	s1,a4,1648
  a2244a:	c299                	beqz	a3,a22450 <uart_rx_buffer_report+0x20>
  a2244c:	47c8                	lw	a0,12(a5)
  a2244e:	9682                	jalr	a3
  a22450:	1884945b          	muliadd	s0,s1,s0,24
  a22454:	00041a23          	sh	zero,20(s0)
  a22458:	8034                	popret	{ra,s0-s1},16

00a2245a <uart_helper_invoke_current_fragment_callback>:
  a2245a:	00a0 66b8 079f      	l.li	a5,0xa066b8
  a22460:	4ca7955b          	muliadd	a0,a5,a0,76
  a22464:	411c                	lw	a5,0(a0)
  a22466:	0087a303          	lw	t1,8(a5)
  a2246a:	00030663          	beqz	t1,a22476 <uart_helper_invoke_current_fragment_callback+0x1c>
  a2246e:	43d0                	lw	a2,4(a5)
  a22470:	47cc                	lw	a1,12(a5)
  a22472:	4388                	lw	a0,0(a5)
  a22474:	8302                	jr	t1
  a22476:	8082                	ret

00a22478 <uart_helper_move_to_next_fragment>:
  a22478:	04c00793          	li	a5,76
  a2247c:	02f507b3          	mul	a5,a0,a5
  a22480:	00a066b7          	lui	a3,0xa06
  a22484:	6b868713          	addi	a4,a3,1720 # a066b8 <g_uart_tx_state_array>
  a22488:	6b868693          	addi	a3,a3,1720
  a2248c:	00f705b3          	add	a1,a4,a5
  a22490:	4190                	lw	a2,0(a1)
  a22492:	07b1                	addi	a5,a5,12
  a22494:	97ba                	add	a5,a5,a4
  a22496:	0641                	addi	a2,a2,16
  a22498:	04078713          	addi	a4,a5,64
  a2249c:	00e67b63          	bgeu	a2,a4,a224b2 <uart_helper_move_to_next_fragment+0x3a>
  a224a0:	c190                	sw	a2,0(a1)
  a224a2:	4ca6955b          	muliadd	a0,a3,a0,76
  a224a6:	251e                	lhu	a5,8(a0)
  a224a8:	00051523          	sh	zero,10(a0)
  a224ac:	17fd                	addi	a5,a5,-1
  a224ae:	a51e                	sh	a5,8(a0)
  a224b0:	8082                	ret
  a224b2:	c19c                	sw	a5,0(a1)
  a224b4:	b7fd                	j	a224a2 <uart_helper_move_to_next_fragment+0x2a>

00a224b6 <uart_helper_send_next_char>:
  a224b6:	8038                	push	{ra,s0-s1},-16
  a224b8:	00a0 66b8 041f      	l.li	s0,0xa066b8
  a224be:	4ca4145b          	muliadd	s0,s0,a0,76
  a224c2:	4004                	lw	s1,0(s0)
  a224c4:	243e                	lhu	a5,10(s0)
  a224c6:	4605                	li	a2,1
  a224c8:	408c                	lw	a1,0(s1)
  a224ca:	95be                	add	a1,a1,a5
  a224cc:	7e9000ef          	jal	ra,a234b4 <hal_uart_write>
  a224d0:	242a                	lhu	a0,10(s0)
  a224d2:	0505                	addi	a0,a0,1
  a224d4:	9d21                	uxth	a0
  a224d6:	a42a                	sh	a0,10(s0)
  a224d8:	44dc                	lw	a5,12(s1)
  a224da:	00f53533          	sltu	a0,a0,a5
  a224de:	00154513          	xori	a0,a0,1
  a224e2:	8034                	popret	{ra,s0-s1},16

00a224e4 <uart_error_isr>:
  a224e4:	8148                	push	{ra,s0-s2},-32
  a224e6:	842a                	mv	s0,a0
  a224e8:	00f10613          	addi	a2,sp,15
  a224ec:	45a5                	li	a1,9
  a224ee:	00a0 6670 049f      	l.li	s1,0xa06670
  a224f4:	00010723          	sb	zero,14(sp)
  a224f8:	000107a3          	sb	zero,15(sp)
  a224fc:	1884995b          	muliadd	s2,s1,s0,24
  a22500:	7d9000ef          	jal	ra,a234d8 <hal_uart_ctrl>
  a22504:	00f14783          	lbu	a5,15(sp)
  a22508:	cb99                	beqz	a5,a2251e <uart_error_isr+0x3a>
  a2250a:	188494db          	muliadd	s1,s1,s0,24
  a2250e:	28de                	lhu	a5,20(s1)
  a22510:	c791                	beqz	a5,a2251c <uart_error_isr+0x38>
  a22512:	409c                	lw	a5,0(s1)
  a22514:	c781                	beqz	a5,a2251c <uart_error_isr+0x38>
  a22516:	4585                	li	a1,1
  a22518:	8522                	mv	a0,s0
  a2251a:	3f19                	jal	ra,a22430 <uart_rx_buffer_report>
  a2251c:	8144                	popret	{ra,s0-s2},32
  a2251e:	4605                	li	a2,1
  a22520:	00e10593          	addi	a1,sp,14
  a22524:	8522                	mv	a0,s0
  a22526:	7a1000ef          	jal	ra,a234c6 <hal_uart_read>
  a2252a:	01495683          	lhu	a3,20(s2)
  a2252e:	00c92783          	lw	a5,12(s2)
  a22532:	00e14703          	lbu	a4,14(sp)
  a22536:	97b6                	add	a5,a5,a3
  a22538:	a398                	sb	a4,0(a5)
  a2253a:	01495783          	lhu	a5,20(s2)
  a2253e:	01095703          	lhu	a4,16(s2)
  a22542:	0785                	addi	a5,a5,1
  a22544:	9fa1                	uxth	a5
  a22546:	00f91a23          	sh	a5,20(s2)
  a2254a:	00e7e563          	bltu	a5,a4,a22554 <uart_error_isr+0x70>
  a2254e:	4585                	li	a1,1
  a22550:	8522                	mv	a0,s0
  a22552:	3df9                	jal	ra,a22430 <uart_rx_buffer_report>
  a22554:	00f10613          	addi	a2,sp,15
  a22558:	45a5                	li	a1,9
  a2255a:	8522                	mv	a0,s0
  a2255c:	77d000ef          	jal	ra,a234d8 <hal_uart_ctrl>
  a22560:	b755                	j	a22504 <uart_error_isr+0x20>

00a22562 <uart_evt_callback>:
  a22562:	8158                	push	{ra,s0-s3},-48
  a22564:	15fd                	addi	a1,a1,-1
  a22566:	0ff5f793          	andi	a5,a1,255
  a2256a:	0567f3bb          	bgeui	a5,5,a226f8 <uart_evt_callback+0x196>
  a2256e:	00a275b7          	lui	a1,0xa27
  a22572:	eb058593          	addi	a1,a1,-336 # a26eb0 <g_crypto_ecc_params>
  a22576:	04f5859b          	addshf	a1,a1,a5,sll,2
  a2257a:	419c                	lw	a5,0(a1)
  a2257c:	842a                	mv	s0,a0
  a2257e:	8782                	jr	a5
  a22580:	00a0 66b8 049f      	l.li	s1,0xa066b8
  a22586:	000107a3          	sb	zero,15(sp)
  a2258a:	4ca494db          	muliadd	s1,s1,a0,76
  a2258e:	249e                	lhu	a5,8(s1)
  a22590:	eb81                	bnez	a5,a225a0 <uart_evt_callback+0x3e>
  a22592:	4601                	li	a2,0
  a22594:	4589                	li	a1,2
  a22596:	8522                	mv	a0,s0
  a22598:	741000ef          	jal	ra,a234d8 <hal_uart_ctrl>
  a2259c:	4501                	li	a0,0
  a2259e:	8154                	popret	{ra,s0-s3},48
  a225a0:	00f10613          	addi	a2,sp,15
  a225a4:	459d                	li	a1,7
  a225a6:	8522                	mv	a0,s0
  a225a8:	731000ef          	jal	ra,a234d8 <hal_uart_ctrl>
  a225ac:	00f14783          	lbu	a5,15(sp)
  a225b0:	f7f5                	bnez	a5,a2259c <uart_evt_callback+0x3a>
  a225b2:	8522                	mv	a0,s0
  a225b4:	3709                	jal	ra,a224b6 <uart_helper_send_next_char>
  a225b6:	d56d                	beqz	a0,a225a0 <uart_evt_callback+0x3e>
  a225b8:	8522                	mv	a0,s0
  a225ba:	3545                	jal	ra,a2245a <uart_helper_invoke_current_fragment_callback>
  a225bc:	8522                	mv	a0,s0
  a225be:	3d6d                	jal	ra,a22478 <uart_helper_move_to_next_fragment>
  a225c0:	b7f9                	j	a2258e <uart_evt_callback+0x2c>
  a225c2:	00f10613          	addi	a2,sp,15
  a225c6:	45a5                	li	a1,9
  a225c8:	00a0 6670 049f      	l.li	s1,0xa06670
  a225ce:	00010723          	sb	zero,14(sp)
  a225d2:	000107a3          	sb	zero,15(sp)
  a225d6:	4981                	li	s3,0
  a225d8:	701000ef          	jal	ra,a234d8 <hal_uart_ctrl>
  a225dc:	1884995b          	muliadd	s2,s1,s0,24
  a225e0:	00f14783          	lbu	a5,15(sp)
  a225e4:	cf81                	beqz	a5,a225fc <uart_evt_callback+0x9a>
  a225e6:	188497db          	muliadd	a5,s1,s0,24
  a225ea:	2bda                	lhu	a4,20(a5)
  a225ec:	db45                	beqz	a4,a2259c <uart_evt_callback+0x3a>
  a225ee:	2bf8                	lbu	a4,22(a5)
  a225f0:	8b09                	andi	a4,a4,2
  a225f2:	d74d                	beqz	a4,a2259c <uart_evt_callback+0x3a>
  a225f4:	2bbe                	lhu	a5,18(a5)
  a225f6:	faf9e3e3          	bltu	s3,a5,a2259c <uart_evt_callback+0x3a>
  a225fa:	a071                	j	a22686 <uart_evt_callback+0x124>
  a225fc:	4605                	li	a2,1
  a225fe:	00e10593          	addi	a1,sp,14
  a22602:	8522                	mv	a0,s0
  a22604:	6c3000ef          	jal	ra,a234c6 <hal_uart_read>
  a22608:	00092783          	lw	a5,0(s2)
  a2260c:	0985                	addi	s3,s3,1
  a2260e:	09c2                	slli	s3,s3,0x10
  a22610:	0109d993          	srli	s3,s3,0x10
  a22614:	eb81                	bnez	a5,a22624 <uart_evt_callback+0xc2>
  a22616:	00f10613          	addi	a2,sp,15
  a2261a:	45a5                	li	a1,9
  a2261c:	8522                	mv	a0,s0
  a2261e:	6bb000ef          	jal	ra,a234d8 <hal_uart_ctrl>
  a22622:	bf7d                	j	a225e0 <uart_evt_callback+0x7e>
  a22624:	01495683          	lhu	a3,20(s2)
  a22628:	00c92783          	lw	a5,12(s2)
  a2262c:	00e14703          	lbu	a4,14(sp)
  a22630:	97b6                	add	a5,a5,a3
  a22632:	a398                	sb	a4,0(a5)
  a22634:	01495783          	lhu	a5,20(s2)
  a22638:	01095703          	lhu	a4,16(s2)
  a2263c:	0785                	addi	a5,a5,1
  a2263e:	9fa1                	uxth	a5
  a22640:	00f91a23          	sh	a5,20(s2)
  a22644:	fce7e9e3          	bltu	a5,a4,a22616 <uart_evt_callback+0xb4>
  a22648:	4581                	li	a1,0
  a2264a:	8522                	mv	a0,s0
  a2264c:	33d5                	jal	ra,a22430 <uart_rx_buffer_report>
  a2264e:	b7e1                	j	a22616 <uart_evt_callback+0xb4>
  a22650:	00f10613          	addi	a2,sp,15
  a22654:	45a5                	li	a1,9
  a22656:	00a0 6670 049f      	l.li	s1,0xa06670
  a2265c:	00010723          	sb	zero,14(sp)
  a22660:	000107a3          	sb	zero,15(sp)
  a22664:	4981                	li	s3,0
  a22666:	673000ef          	jal	ra,a234d8 <hal_uart_ctrl>
  a2266a:	1884995b          	muliadd	s2,s1,s0,24
  a2266e:	00f14783          	lbu	a5,15(sp)
  a22672:	cf91                	beqz	a5,a2268e <uart_evt_callback+0x12c>
  a22674:	188497db          	muliadd	a5,s1,s0,24
  a22678:	2bda                	lhu	a4,20(a5)
  a2267a:	f20701e3          	beqz	a4,a2259c <uart_evt_callback+0x3a>
  a2267e:	2bf8                	lbu	a4,22(a5)
  a22680:	00177693          	andi	a3,a4,1
  a22684:	d6b5                	beqz	a3,a225f0 <uart_evt_callback+0x8e>
  a22686:	4581                	li	a1,0
  a22688:	8522                	mv	a0,s0
  a2268a:	335d                	jal	ra,a22430 <uart_rx_buffer_report>
  a2268c:	bf01                	j	a2259c <uart_evt_callback+0x3a>
  a2268e:	4605                	li	a2,1
  a22690:	00e10593          	addi	a1,sp,14
  a22694:	8522                	mv	a0,s0
  a22696:	631000ef          	jal	ra,a234c6 <hal_uart_read>
  a2269a:	00092783          	lw	a5,0(s2)
  a2269e:	0985                	addi	s3,s3,1
  a226a0:	09c2                	slli	s3,s3,0x10
  a226a2:	0109d993          	srli	s3,s3,0x10
  a226a6:	eb81                	bnez	a5,a226b6 <uart_evt_callback+0x154>
  a226a8:	00f10613          	addi	a2,sp,15
  a226ac:	45a5                	li	a1,9
  a226ae:	8522                	mv	a0,s0
  a226b0:	629000ef          	jal	ra,a234d8 <hal_uart_ctrl>
  a226b4:	bf6d                	j	a2266e <uart_evt_callback+0x10c>
  a226b6:	01495683          	lhu	a3,20(s2)
  a226ba:	00c92783          	lw	a5,12(s2)
  a226be:	00e14703          	lbu	a4,14(sp)
  a226c2:	97b6                	add	a5,a5,a3
  a226c4:	a398                	sb	a4,0(a5)
  a226c6:	01495783          	lhu	a5,20(s2)
  a226ca:	01095703          	lhu	a4,16(s2)
  a226ce:	0785                	addi	a5,a5,1
  a226d0:	9fa1                	uxth	a5
  a226d2:	00f91a23          	sh	a5,20(s2)
  a226d6:	fce7e9e3          	bltu	a5,a4,a226a8 <uart_evt_callback+0x146>
  a226da:	4581                	li	a1,0
  a226dc:	8522                	mv	a0,s0
  a226de:	3b89                	jal	ra,a22430 <uart_rx_buffer_report>
  a226e0:	b7e1                	j	a226a8 <uart_evt_callback+0x146>
  a226e2:	00a0 6670 079f      	l.li	a5,0xa06670
  a226e8:	18a797db          	muliadd	a5,a5,a0,24
  a226ec:	43dc                	lw	a5,4(a5)
  a226ee:	c781                	beqz	a5,a226f6 <uart_evt_callback+0x194>
  a226f0:	4581                	li	a1,0
  a226f2:	4501                	li	a0,0
  a226f4:	9782                	jalr	a5
  a226f6:	8522                	mv	a0,s0
  a226f8:	33f5                	jal	ra,a224e4 <uart_error_isr>
  a226fa:	b54d                	j	a2259c <uart_evt_callback+0x3a>
  a226fc:	00a0 6670 079f      	l.li	a5,0xa06670
  a22702:	18a797db          	muliadd	a5,a5,a0,24
  a22706:	479c                	lw	a5,8(a5)
  a22708:	b7dd                	j	a226ee <uart_evt_callback+0x18c>

00a2270a <uapi_uart_init>:
  a2270a:	8158                	push	{ra,s0-s3},-48
  a2270c:	4789                	li	a5,2
  a2270e:	0aa7ed63          	bltu	a5,a0,a227c8 <uapi_uart_init+0xbe>
  a22712:	c9dd                	beqz	a1,a227c8 <uapi_uart_init+0xbe>
  a22714:	0015c883          	lbu	a7,1(a1)
  a22718:	07200813          	li	a6,114
  a2271c:	0b186663          	bltu	a6,a7,a227c8 <uapi_uart_init+0xbe>
  a22720:	0005c883          	lbu	a7,0(a1)
  a22724:	0b186263          	bltu	a6,a7,a227c8 <uapi_uart_init+0xbe>
  a22728:	c245                	beqz	a2,a227c8 <uapi_uart_init+0xbe>
  a2272a:	00464803          	lbu	a6,4(a2)
  a2272e:	042876bb          	bgeui	a6,4,a227c8 <uapi_uart_init+0xbe>
  a22732:	00664803          	lbu	a6,6(a2)
  a22736:	0907e963          	bltu	a5,a6,a227c8 <uapi_uart_init+0xbe>
  a2273a:	325c                	lbu	a5,5(a2)
  a2273c:	0227f33b          	bgeui	a5,2,a227c8 <uapi_uart_init+0xbe>
  a22740:	00a06937          	lui	s2,0xa06
  a22744:	66c90793          	addi	a5,s2,1644 # a0666c <g_uart_inited>
  a22748:	97aa                	add	a5,a5,a0
  a2274a:	239c                	lbu	a5,0(a5)
  a2274c:	84aa                	mv	s1,a0
  a2274e:	66c90913          	addi	s2,s2,1644
  a22752:	4401                	li	s0,0
  a22754:	eba5                	bnez	a5,a227c4 <uapi_uart_init+0xba>
  a22756:	89ba                	mv	s3,a4
  a22758:	c636                	sw	a3,12(sp)
  a2275a:	8432                	mv	s0,a2
  a2275c:	c42e                	sw	a1,8(sp)
  a2275e:	0b3010ef          	jal	ra,a24010 <uart_port_config_pinmux>
  a22762:	06098763          	beqz	s3,a227d0 <uapi_uart_init+0xc6>
  a22766:	0009a683          	lw	a3,0(s3)
  a2276a:	c2bd                	beqz	a3,a227d0 <uapi_uart_init+0xc6>
  a2276c:	0049a703          	lw	a4,4(s3)
  a22770:	c325                	beqz	a4,a227d0 <uapi_uart_init+0xc6>
  a22772:	04c00513          	li	a0,76
  a22776:	02a48533          	mul	a0,s1,a0
  a2277a:	00a0 6670 071f      	l.li	a4,0xa06670
  a22780:	1897175b          	muliadd	a4,a4,s1,24
  a22784:	c754                	sw	a3,12(a4)
  a22786:	0049a683          	lw	a3,4(s3)
  a2278a:	47b2                	lw	a5,12(sp)
  a2278c:	4622                	lw	a2,8(sp)
  a2278e:	ab16                	sh	a3,16(a4)
  a22790:	00a0 66b8 071f      	l.li	a4,0xa066b8
  a22796:	86a2                	mv	a3,s0
  a22798:	00c50593          	addi	a1,a0,12
  a2279c:	95ba                	add	a1,a1,a4
  a2279e:	972a                	add	a4,a4,a0
  a227a0:	c30c                	sw	a1,0(a4)
  a227a2:	c34c                	sw	a1,4(a4)
  a227a4:	8526                	mv	a0,s1
  a227a6:	4711                	li	a4,4
  a227a8:	00a2 2562 059f      	l.li	a1,0xa22562
  a227ae:	4b7000ef          	jal	ra,a23464 <hal_uart_init>
  a227b2:	842a                	mv	s0,a0
  a227b4:	e901                	bnez	a0,a227c4 <uapi_uart_init+0xba>
  a227b6:	9926                	add	s2,s2,s1
  a227b8:	4785                	li	a5,1
  a227ba:	8526                	mv	a0,s1
  a227bc:	00f90023          	sb	a5,0(s2)
  a227c0:	061010ef          	jal	ra,a24020 <uart_port_register_irq>
  a227c4:	8522                	mv	a0,s0
  a227c6:	8154                	popret	{ra,s0-s3},48
  a227c8:	80000437          	lui	s0,0x80000
  a227cc:	0405                	addi	s0,s0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a227ce:	bfdd                	j	a227c4 <uapi_uart_init+0xba>
  a227d0:	8000 1044 041f      	l.li	s0,0x80001044
  a227d6:	b7fd                	j	a227c4 <uapi_uart_init+0xba>

00a227d8 <uapi_uart_deinit>:
  a227d8:	8048                	push	{ra,s0-s2},-16
  a227da:	031575bb          	bgeui	a0,3,a22830 <uapi_uart_deinit+0x58>
  a227de:	00a0 666c 091f      	l.li	s2,0xa0666c
  a227e4:	992a                	add	s2,s2,a0
  a227e6:	00094783          	lbu	a5,0(s2)
  a227ea:	842a                	mv	s0,a0
  a227ec:	4481                	li	s1,0
  a227ee:	cf9d                	beqz	a5,a2282c <uapi_uart_deinit+0x54>
  a227f0:	4b3000ef          	jal	ra,a234a2 <hal_uart_deinit>
  a227f4:	84aa                	mv	s1,a0
  a227f6:	8522                	mv	a0,s0
  a227f8:	02b010ef          	jal	ra,a24022 <uart_port_unregister_irq>
  a227fc:	00a0 6670 051f      	l.li	a0,0xa06670
  a22802:	46e1                	li	a3,24
  a22804:	4601                	li	a2,0
  a22806:	45e1                	li	a1,24
  a22808:	1885155b          	muliadd	a0,a0,s0,24
  a2280c:	5af020ef          	jal	ra,a255ba <memset_s>
  a22810:	00a0 66b8 051f      	l.li	a0,0xa066b8
  a22816:	04c00693          	li	a3,76
  a2281a:	4601                	li	a2,0
  a2281c:	04c00593          	li	a1,76
  a22820:	4c85155b          	muliadd	a0,a0,s0,76
  a22824:	597020ef          	jal	ra,a255ba <memset_s>
  a22828:	00090023          	sb	zero,0(s2)
  a2282c:	8526                	mv	a0,s1
  a2282e:	8044                	popret	{ra,s0-s2},16
  a22830:	800004b7          	lui	s1,0x80000
  a22834:	0485                	addi	s1,s1,1 # 80000001 <__data_load__+0x7f5d85bd>
  a22836:	bfdd                	j	a2282c <uapi_uart_deinit+0x54>

00a22838 <uapi_uart_write>:
  a22838:	8178                	push	{ra,s0-s5},-48
  a2283a:	000107a3          	sb	zero,15(sp)
  a2283e:	0315773b          	bgeui	a0,3,a2289a <uapi_uart_write+0x62>
  a22842:	cda1                	beqz	a1,a2289a <uapi_uart_write+0x62>
  a22844:	ca39                	beqz	a2,a2289a <uapi_uart_write+0x62>
  a22846:	00a0 666c 079f      	l.li	a5,0xa0666c
  a2284c:	97aa                	add	a5,a5,a0
  a2284e:	239c                	lbu	a5,0(a5)
  a22850:	84aa                	mv	s1,a0
  a22852:	cba1                	beqz	a5,a228a2 <uapi_uart_write+0x6a>
  a22854:	89ae                	mv	s3,a1
  a22856:	8932                	mv	s2,a2
  a22858:	7fc010ef          	jal	ra,a24054 <uart_porting_lock>
  a2285c:	8aaa                	mv	s5,a0
  a2285e:	994e                	add	s2,s2,s3
  a22860:	8a4e                	mv	s4,s3
  a22862:	413a0433          	sub	s0,s4,s3
  a22866:	012a1863          	bne	s4,s2,a22876 <uapi_uart_write+0x3e>
  a2286a:	85d6                	mv	a1,s5
  a2286c:	8526                	mv	a0,s1
  a2286e:	7ea010ef          	jal	ra,a24058 <uart_porting_unlock>
  a22872:	8522                	mv	a0,s0
  a22874:	8174                	popret	{ra,s0-s5},48
  a22876:	00f10613          	addi	a2,sp,15
  a2287a:	459d                	li	a1,7
  a2287c:	8526                	mv	a0,s1
  a2287e:	45b000ef          	jal	ra,a234d8 <hal_uart_ctrl>
  a22882:	00f14783          	lbu	a5,15(sp)
  a22886:	f3e5                	bnez	a5,a22866 <uapi_uart_write+0x2e>
  a22888:	85d2                	mv	a1,s4
  a2288a:	001a0413          	addi	s0,s4,1
  a2288e:	4605                	li	a2,1
  a22890:	8526                	mv	a0,s1
  a22892:	423000ef          	jal	ra,a234b4 <hal_uart_write>
  a22896:	8a22                	mv	s4,s0
  a22898:	b7e9                	j	a22862 <uapi_uart_write+0x2a>
  a2289a:	80000437          	lui	s0,0x80000
  a2289e:	0405                	addi	s0,s0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a228a0:	bfc9                	j	a22872 <uapi_uart_write+0x3a>
  a228a2:	8000 1040 041f      	l.li	s0,0x80001040
  a228a8:	b7e9                	j	a22872 <uapi_uart_write+0x3a>

00a228aa <uapi_uart_read>:
  a228aa:	8178                	push	{ra,s0-s5},-48
  a228ac:	0315783b          	bgeui	a0,3,a2290c <uapi_uart_read+0x62>
  a228b0:	cdb1                	beqz	a1,a2290c <uapi_uart_read+0x62>
  a228b2:	ce29                	beqz	a2,a2290c <uapi_uart_read+0x62>
  a228b4:	00a0 666c 079f      	l.li	a5,0xa0666c
  a228ba:	97aa                	add	a5,a5,a0
  a228bc:	239c                	lbu	a5,0(a5)
  a228be:	84aa                	mv	s1,a0
  a228c0:	cbb1                	beqz	a5,a22914 <uapi_uart_read+0x6a>
  a228c2:	89ae                	mv	s3,a1
  a228c4:	8932                	mv	s2,a2
  a228c6:	000107a3          	sb	zero,15(sp)
  a228ca:	78a010ef          	jal	ra,a24054 <uart_porting_lock>
  a228ce:	8aaa                	mv	s5,a0
  a228d0:	994e                	add	s2,s2,s3
  a228d2:	8a4e                	mv	s4,s3
  a228d4:	413a0433          	sub	s0,s4,s3
  a228d8:	01491863          	bne	s2,s4,a228e8 <uapi_uart_read+0x3e>
  a228dc:	85d6                	mv	a1,s5
  a228de:	8526                	mv	a0,s1
  a228e0:	778010ef          	jal	ra,a24058 <uart_porting_unlock>
  a228e4:	8522                	mv	a0,s0
  a228e6:	8174                	popret	{ra,s0-s5},48
  a228e8:	00f10613          	addi	a2,sp,15
  a228ec:	45a5                	li	a1,9
  a228ee:	8526                	mv	a0,s1
  a228f0:	3e9000ef          	jal	ra,a234d8 <hal_uart_ctrl>
  a228f4:	00f14783          	lbu	a5,15(sp)
  a228f8:	f3e5                	bnez	a5,a228d8 <uapi_uart_read+0x2e>
  a228fa:	85d2                	mv	a1,s4
  a228fc:	001a0413          	addi	s0,s4,1
  a22900:	4605                	li	a2,1
  a22902:	8526                	mv	a0,s1
  a22904:	3c3000ef          	jal	ra,a234c6 <hal_uart_read>
  a22908:	8a22                	mv	s4,s0
  a2290a:	b7e9                	j	a228d4 <uapi_uart_read+0x2a>
  a2290c:	80000437          	lui	s0,0x80000
  a22910:	0405                	addi	s0,s0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a22912:	bfc9                	j	a228e4 <uapi_uart_read+0x3a>
  a22914:	8000 1040 041f      	l.li	s0,0x80001040
  a2291a:	b7e9                	j	a228e4 <uapi_uart_read+0x3a>

00a2291c <uapi_uart_rx_fifo_is_empty>:
  a2291c:	03057a3b          	bgeui	a0,3,a22944 <uapi_uart_rx_fifo_is_empty+0x28>
  a22920:	00a0 666c 079f      	l.li	a5,0xa0666c
  a22926:	97aa                	add	a5,a5,a0
  a22928:	239c                	lbu	a5,0(a5)
  a2292a:	cf91                	beqz	a5,a22946 <uapi_uart_rx_fifo_is_empty+0x2a>
  a2292c:	8118                	push	{ra},-32
  a2292e:	00f10613          	addi	a2,sp,15
  a22932:	45a5                	li	a1,9
  a22934:	000107a3          	sb	zero,15(sp)
  a22938:	3a1000ef          	jal	ra,a234d8 <hal_uart_ctrl>
  a2293c:	00f14783          	lbu	a5,15(sp)
  a22940:	853e                	mv	a0,a5
  a22942:	8114                	popret	{ra},32
  a22944:	4781                	li	a5,0
  a22946:	853e                	mv	a0,a5
  a22948:	8082                	ret

00a2294a <uapi_watchdog_init>:
  a2294a:	8058                	push	{ra,s0-s3},-32
  a2294c:	89aa                	mv	s3,a0
  a2294e:	746010ef          	jal	ra,a24094 <watchdog_port_register_hal_funcs>
  a22952:	752010ef          	jal	ra,a240a4 <watchdog_port_register_irq>
  a22956:	f44ff0ef          	jal	ra,a2209a <osal_irq_lock>
  a2295a:	84aa                	mv	s1,a0
  a2295c:	7c7000ef          	jal	ra,a23922 <hal_watchdog_get_funcs>
  a22960:	411c                	lw	a5,0(a0)
  a22962:	00a0 679c 091f      	l.li	s2,0xa0679c
  a22968:	00a92023          	sw	a0,0(s2)
  a2296c:	9782                	jalr	a5
  a2296e:	c519                	beqz	a0,a2297c <uapi_watchdog_init+0x32>
  a22970:	842a                	mv	s0,a0
  a22972:	8526                	mv	a0,s1
  a22974:	f2eff0ef          	jal	ra,a220a2 <osal_irq_restore>
  a22978:	8522                	mv	a0,s0
  a2297a:	8054                	popret	{ra,s0-s3},32
  a2297c:	00092783          	lw	a5,0(s2)
  a22980:	854e                	mv	a0,s3
  a22982:	479c                	lw	a5,8(a5)
  a22984:	9782                	jalr	a5
  a22986:	842a                	mv	s0,a0
  a22988:	8526                	mv	a0,s1
  a2298a:	f18ff0ef          	jal	ra,a220a2 <osal_irq_restore>
  a2298e:	f46d                	bnez	s0,a22978 <uapi_watchdog_init+0x2e>
  a22990:	00a0 67a1 079f      	l.li	a5,0xa067a1
  a22996:	4705                	li	a4,1
  a22998:	a398                	sb	a4,0(a5)
  a2299a:	bff9                	j	a22978 <uapi_watchdog_init+0x2e>

00a2299c <uapi_watchdog_enable>:
  a2299c:	00a0 67a1 079f      	l.li	a5,0xa067a1
  a229a2:	239c                	lbu	a5,0(a5)
  a229a4:	cb9d                	beqz	a5,a229da <uapi_watchdog_enable+0x3e>
  a229a6:	8048                	push	{ra,s0-s2},-16
  a229a8:	4485                	li	s1,1
  a229aa:	57fd                	li	a5,-1
  a229ac:	02a4e563          	bltu	s1,a0,a229d6 <uapi_watchdog_enable+0x3a>
  a229b0:	842a                	mv	s0,a0
  a229b2:	ee8ff0ef          	jal	ra,a2209a <osal_irq_lock>
  a229b6:	00a0 679c 079f      	l.li	a5,0xa0679c
  a229bc:	439c                	lw	a5,0(a5)
  a229be:	892a                	mv	s2,a0
  a229c0:	8522                	mv	a0,s0
  a229c2:	4b9c                	lw	a5,16(a5)
  a229c4:	9782                	jalr	a5
  a229c6:	854a                	mv	a0,s2
  a229c8:	edaff0ef          	jal	ra,a220a2 <osal_irq_restore>
  a229cc:	00a0 67a0 079f      	l.li	a5,0xa067a0
  a229d2:	a384                	sb	s1,0(a5)
  a229d4:	4781                	li	a5,0
  a229d6:	853e                	mv	a0,a5
  a229d8:	8044                	popret	{ra,s0-s2},16
  a229da:	57fd                	li	a5,-1
  a229dc:	853e                	mv	a0,a5
  a229de:	8082                	ret

00a229e0 <uapi_watchdog_disable>:
  a229e0:	00a0 67a1 079f      	l.li	a5,0xa067a1
  a229e6:	239c                	lbu	a5,0(a5)
  a229e8:	e399                	bnez	a5,a229ee <uapi_watchdog_disable+0xe>
  a229ea:	557d                	li	a0,-1
  a229ec:	8082                	ret
  a229ee:	8118                	push	{ra},-32
  a229f0:	eaaff0ef          	jal	ra,a2209a <osal_irq_lock>
  a229f4:	00a0 679c 079f      	l.li	a5,0xa0679c
  a229fa:	439c                	lw	a5,0(a5)
  a229fc:	c62a                	sw	a0,12(sp)
  a229fe:	4bdc                	lw	a5,20(a5)
  a22a00:	9782                	jalr	a5
  a22a02:	4532                	lw	a0,12(sp)
  a22a04:	e9eff0ef          	jal	ra,a220a2 <osal_irq_restore>
  a22a08:	00a0 67a0 079f      	l.li	a5,0xa067a0
  a22a0e:	00078023          	sb	zero,0(a5)
  a22a12:	4501                	li	a0,0
  a22a14:	8114                	popret	{ra},32

00a22a16 <uapi_watchdog_deinit>:
  a22a16:	00a067b7          	lui	a5,0xa06
  a22a1a:	7a17c703          	lbu	a4,1953(a5) # a067a1 <g_watchdog_inited>
  a22a1e:	c71d                	beqz	a4,a22a4c <uapi_watchdog_deinit+0x36>
  a22a20:	8028                	push	{ra,s0},-16
  a22a22:	7a178413          	addi	s0,a5,1953
  a22a26:	00a0 67a0 079f      	l.li	a5,0xa067a0
  a22a2c:	239c                	lbu	a5,0(a5)
  a22a2e:	c391                	beqz	a5,a22a32 <uapi_watchdog_deinit+0x1c>
  a22a30:	3f45                	jal	ra,a229e0 <uapi_watchdog_disable>
  a22a32:	00a0 679c 079f      	l.li	a5,0xa0679c
  a22a38:	439c                	lw	a5,0(a5)
  a22a3a:	c399                	beqz	a5,a22a40 <uapi_watchdog_deinit+0x2a>
  a22a3c:	43dc                	lw	a5,4(a5)
  a22a3e:	9782                	jalr	a5
  a22a40:	660010ef          	jal	ra,a240a0 <watchdog_port_unregister_hal_funcs>
  a22a44:	4501                	li	a0,0
  a22a46:	00040023          	sb	zero,0(s0)
  a22a4a:	8024                	popret	{ra,s0},16
  a22a4c:	4501                	li	a0,0
  a22a4e:	8082                	ret

00a22a50 <uapi_watchdog_kick>:
  a22a50:	00a0 67a0 079f      	l.li	a5,0xa067a0
  a22a56:	239c                	lbu	a5,0(a5)
  a22a58:	e399                	bnez	a5,a22a5e <uapi_watchdog_kick+0xe>
  a22a5a:	557d                	li	a0,-1
  a22a5c:	8082                	ret
  a22a5e:	8118                	push	{ra},-32
  a22a60:	e3aff0ef          	jal	ra,a2209a <osal_irq_lock>
  a22a64:	00a0 679c 079f      	l.li	a5,0xa0679c
  a22a6a:	439c                	lw	a5,0(a5)
  a22a6c:	c62a                	sw	a0,12(sp)
  a22a6e:	4f9c                	lw	a5,24(a5)
  a22a70:	9782                	jalr	a5
  a22a72:	4532                	lw	a0,12(sp)
  a22a74:	e2eff0ef          	jal	ra,a220a2 <osal_irq_restore>
  a22a78:	4501                	li	a0,0
  a22a7a:	8114                	popret	{ra},32

00a22a7c <uapi_efuse_init>:
  a22a7c:	8018                	push	{ra},-16
  a22a7e:	627010ef          	jal	ra,a248a4 <efuse_port_register_hal_funcs>
  a22a82:	22a9                	jal	ra,a22bcc <hal_efuse_get_funcs>
  a22a84:	00052303          	lw	t1,0(a0)
  a22a88:	8010                	pop	{ra},16
  a22a8a:	8302                	jr	t1

00a22a8c <uapi_efuse_read_bit>:
  a22a8c:	8168                	push	{ra,s0-s4},-48
  a22a8e:	000107a3          	sb	zero,15(sp)
  a22a92:	547d                	li	s0,-1
  a22a94:	0ff00793          	li	a5,255
  a22a98:	02b7ee63          	bltu	a5,a1,a22ad4 <uapi_efuse_read_bit+0x48>
  a22a9c:	cd05                	beqz	a0,a22ad4 <uapi_efuse_read_bit+0x48>
  a22a9e:	08067dbb          	bgeui	a2,8,a22ad4 <uapi_efuse_read_bit+0x48>
  a22aa2:	842e                	mv	s0,a1
  a22aa4:	8932                	mv	s2,a2
  a22aa6:	84aa                	mv	s1,a0
  a22aa8:	2215                	jal	ra,a22bcc <hal_efuse_get_funcs>
  a22aaa:	8a2a                	mv	s4,a0
  a22aac:	deeff0ef          	jal	ra,a2209a <osal_irq_lock>
  a22ab0:	010a2783          	lw	a5,16(s4)
  a22ab4:	89aa                	mv	s3,a0
  a22ab6:	00f10593          	addi	a1,sp,15
  a22aba:	8522                	mv	a0,s0
  a22abc:	9782                	jalr	a5
  a22abe:	842a                	mv	s0,a0
  a22ac0:	ed01                	bnez	a0,a22ad8 <uapi_efuse_read_bit+0x4c>
  a22ac2:	00f14783          	lbu	a5,15(sp)
  a22ac6:	854e                	mv	a0,s3
  a22ac8:	4127d633          	sra	a2,a5,s2
  a22acc:	8a05                	andi	a2,a2,1
  a22ace:	a090                	sb	a2,0(s1)
  a22ad0:	dd2ff0ef          	jal	ra,a220a2 <osal_irq_restore>
  a22ad4:	8522                	mv	a0,s0
  a22ad6:	8164                	popret	{ra,s0-s4},48
  a22ad8:	854e                	mv	a0,s3
  a22ada:	dc8ff0ef          	jal	ra,a220a2 <osal_irq_restore>
  a22ade:	547d                	li	s0,-1
  a22ae0:	bfd5                	j	a22ad4 <uapi_efuse_read_bit+0x48>

00a22ae2 <uapi_efuse_read_buffer>:
  a22ae2:	8088                	push	{ra,s0-s6},-32
  a22ae4:	547d                	li	s0,-1
  a22ae6:	c231                	beqz	a2,a22b2a <uapi_efuse_read_buffer+0x48>
  a22ae8:	0ff00793          	li	a5,255
  a22aec:	02b7ef63          	bltu	a5,a1,a22b2a <uapi_efuse_read_buffer+0x48>
  a22af0:	00c587b3          	add	a5,a1,a2
  a22af4:	10000713          	li	a4,256
  a22af8:	02f76963          	bltu	a4,a5,a22b2a <uapi_efuse_read_buffer+0x48>
  a22afc:	c51d                	beqz	a0,a22b2a <uapi_efuse_read_buffer+0x48>
  a22afe:	8932                	mv	s2,a2
  a22b00:	89ae                	mv	s3,a1
  a22b02:	8a2a                	mv	s4,a0
  a22b04:	20e1                	jal	ra,a22bcc <hal_efuse_get_funcs>
  a22b06:	8b2a                	mv	s6,a0
  a22b08:	d92ff0ef          	jal	ra,a2209a <osal_irq_lock>
  a22b0c:	8aaa                	mv	s5,a0
  a22b0e:	4481                	li	s1,0
  a22b10:	010b2783          	lw	a5,16(s6) # 2010 <ccause+0x104e>
  a22b14:	009a05b3          	add	a1,s4,s1
  a22b18:	00998533          	add	a0,s3,s1
  a22b1c:	9782                	jalr	a5
  a22b1e:	842a                	mv	s0,a0
  a22b20:	c519                	beqz	a0,a22b2e <uapi_efuse_read_buffer+0x4c>
  a22b22:	8556                	mv	a0,s5
  a22b24:	d7eff0ef          	jal	ra,a220a2 <osal_irq_restore>
  a22b28:	547d                	li	s0,-1
  a22b2a:	8522                	mv	a0,s0
  a22b2c:	8084                	popret	{ra,s0-s6},32
  a22b2e:	0485                	addi	s1,s1,1
  a22b30:	ff24e0e3          	bltu	s1,s2,a22b10 <uapi_efuse_read_buffer+0x2e>
  a22b34:	8556                	mv	a0,s5
  a22b36:	d6cff0ef          	jal	ra,a220a2 <osal_irq_restore>
  a22b3a:	bfc5                	j	a22b2a <uapi_efuse_read_buffer+0x48>

00a22b3c <uapi_efuse_write_bit>:
  a22b3c:	8168                	push	{ra,s0-s4},-48
  a22b3e:	547d                	li	s0,-1
  a22b40:	0ff00793          	li	a5,255
  a22b44:	04a7e463          	bltu	a5,a0,a22b8c <uapi_efuse_write_bit+0x50>
  a22b48:	0815f13b          	bgeui	a1,8,a22b8c <uapi_efuse_write_bit+0x50>
  a22b4c:	892e                	mv	s2,a1
  a22b4e:	84aa                	mv	s1,a0
  a22b50:	000107a3          	sb	zero,15(sp)
  a22b54:	28a5                	jal	ra,a22bcc <hal_efuse_get_funcs>
  a22b56:	8a2a                	mv	s4,a0
  a22b58:	d42ff0ef          	jal	ra,a2209a <osal_irq_lock>
  a22b5c:	010a2783          	lw	a5,16(s4)
  a22b60:	89aa                	mv	s3,a0
  a22b62:	00f10593          	addi	a1,sp,15
  a22b66:	8526                	mv	a0,s1
  a22b68:	9782                	jalr	a5
  a22b6a:	c509                	beqz	a0,a22b74 <uapi_efuse_write_bit+0x38>
  a22b6c:	854e                	mv	a0,s3
  a22b6e:	d34ff0ef          	jal	ra,a220a2 <osal_irq_restore>
  a22b72:	a829                	j	a22b8c <uapi_efuse_write_bit+0x50>
  a22b74:	00f14783          	lbu	a5,15(sp)
  a22b78:	0127d7b3          	srl	a5,a5,s2
  a22b7c:	8b85                	andi	a5,a5,1
  a22b7e:	cb89                	beqz	a5,a22b90 <uapi_efuse_write_bit+0x54>
  a22b80:	854e                	mv	a0,s3
  a22b82:	80000437          	lui	s0,0x80000
  a22b86:	d1cff0ef          	jal	ra,a220a2 <osal_irq_restore>
  a22b8a:	0405                	addi	s0,s0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a22b8c:	8522                	mv	a0,s0
  a22b8e:	8164                	popret	{ra,s0-s4},48
  a22b90:	8526                	mv	a0,s1
  a22b92:	51f010ef          	jal	ra,a248b0 <hal_efuse_get_region>
  a22b96:	4585                	li	a1,1
  a22b98:	01ca2783          	lw	a5,28(s4)
  a22b9c:	012595b3          	sll	a1,a1,s2
  a22ba0:	862a                	mv	a2,a0
  a22ba2:	9d81                	uxtb	a1
  a22ba4:	8526                	mv	a0,s1
  a22ba6:	9782                	jalr	a5
  a22ba8:	842a                	mv	s0,a0
  a22baa:	854e                	mv	a0,s3
  a22bac:	d069                	beqz	s0,a22b6e <uapi_efuse_write_bit+0x32>
  a22bae:	cf4ff0ef          	jal	ra,a220a2 <osal_irq_restore>
  a22bb2:	547d                	li	s0,-1
  a22bb4:	bfe1                	j	a22b8c <uapi_efuse_write_bit+0x50>

00a22bb6 <hal_efuse_register_funcs>:
  a22bb6:	c519                	beqz	a0,a22bc4 <hal_efuse_register_funcs+0xe>
  a22bb8:	00a0 67a4 079f      	l.li	a5,0xa067a4
  a22bbe:	c388                	sw	a0,0(a5)
  a22bc0:	4501                	li	a0,0
  a22bc2:	8082                	ret
  a22bc4:	80000537          	lui	a0,0x80000
  a22bc8:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a22bca:	8082                	ret

00a22bcc <hal_efuse_get_funcs>:
  a22bcc:	00a0 67a4 079f      	l.li	a5,0xa067a4
  a22bd2:	4388                	lw	a0,0(a5)
  a22bd4:	8082                	ret

00a22bd6 <hal_efuse_deinit>:
  a22bd6:	00a0 67a8 079f      	l.li	a5,0xa067a8
  a22bdc:	00078023          	sb	zero,0(a5)
  a22be0:	8082                	ret

00a22be2 <hal_efuse_get_writeread_addr>:
  a22be2:	8038                	push	{ra,s0-s1},-16
  a22be4:	84aa                	mv	s1,a0
  a22be6:	4cb010ef          	jal	ra,a248b0 <hal_efuse_get_region>
  a22bea:	842a                	mv	s0,a0
  a22bec:	8526                	mv	a0,s1
  a22bee:	4c9010ef          	jal	ra,a248b6 <hal_efuse_get_byte_offset>
  a22bf2:	00a0 2490 079f      	l.li	a5,0xa02490
  a22bf8:	0487879b          	addshf	a5,a5,s0,sll,2
  a22bfc:	439c                	lw	a5,0(a5)
  a22bfe:	8105                	srli	a0,a0,0x1
  a22c00:	9d21                	uxth	a0
  a22c02:	04a7851b          	addshf	a0,a5,a0,sll,2
  a22c06:	8034                	popret	{ra,s0-s1},16

00a22c08 <hal_efuse_init>:
  a22c08:	8018                	push	{ra},-16
  a22c0a:	4501                	li	a0,0
  a22c0c:	2255                	jal	ra,a22db0 <hal_efuse_regs_init>
  a22c0e:	00a067b7          	lui	a5,0xa06
  a22c12:	7b07a703          	lw	a4,1968(a5) # a067b0 <g_efuse_regs>
  a22c16:	00a0 2400 069f      	l.li	a3,0xa02400
  a22c1c:	2294                	lbu	a3,0(a3)
  a22c1e:	435c                	lw	a5,4(a4)
  a22c20:	4501                	li	a0,0
  a22c22:	f007f793          	andi	a5,a5,-256
  a22c26:	8fd5                	or	a5,a5,a3
  a22c28:	c35c                	sw	a5,4(a4)
  a22c2a:	00a0 67a8 079f      	l.li	a5,0xa067a8
  a22c30:	4705                	li	a4,1
  a22c32:	a398                	sb	a4,0(a5)
  a22c34:	8014                	popret	{ra},16

00a22c36 <hal_efuse_read_byte>:
  a22c36:	00a0 67a8 079f      	l.li	a5,0xa067a8
  a22c3c:	239c                	lbu	a5,0(a5)
  a22c3e:	c7a1                	beqz	a5,a22c86 <hal_efuse_read_byte+0x50>
  a22c40:	8048                	push	{ra,s0-s2},-16
  a22c42:	842a                	mv	s0,a0
  a22c44:	0ff00793          	li	a5,255
  a22c48:	04a7e363          	bltu	a5,a0,a22c8e <hal_efuse_read_byte+0x58>
  a22c4c:	c1a9                	beqz	a1,a22c8e <hal_efuse_read_byte+0x58>
  a22c4e:	84ae                	mv	s1,a1
  a22c50:	3f49                	jal	ra,a22be2 <hal_efuse_get_writeread_addr>
  a22c52:	892a                	mv	s2,a0
  a22c54:	8522                	mv	a0,s0
  a22c56:	45b010ef          	jal	ra,a248b0 <hal_efuse_get_region>
  a22c5a:	00a0 67b0 079f      	l.li	a5,0xa067b0
  a22c60:	04a7851b          	addshf	a0,a5,a0,sll,2
  a22c64:	4118                	lw	a4,0(a0)
  a22c66:	76c1                	lui	a3,0xffff0
  a22c68:	8805                	andi	s0,s0,1
  a22c6a:	431c                	lw	a5,0(a4)
  a22c6c:	8ff5                	and	a5,a5,a3
  a22c6e:	0000 5a5a 069f      	l.li	a3,0x5a5a
  a22c74:	8fd5                	or	a5,a5,a3
  a22c76:	c31c                	sw	a5,0(a4)
  a22c78:	00092783          	lw	a5,0(s2)
  a22c7c:	c011                	beqz	s0,a22c80 <hal_efuse_read_byte+0x4a>
  a22c7e:	83a1                	srli	a5,a5,0x8
  a22c80:	a09c                	sb	a5,0(s1)
  a22c82:	4501                	li	a0,0
  a22c84:	8044                	popret	{ra,s0-s2},16
  a22c86:	8000 1391 051f      	l.li	a0,0x80001391
  a22c8c:	8082                	ret
  a22c8e:	80000537          	lui	a0,0x80000
  a22c92:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a22c94:	bfc5                	j	a22c84 <hal_efuse_read_byte+0x4e>

00a22c96 <hal_efuse_get_die_id>:
  a22c96:	00a0 67a8 079f      	l.li	a5,0xa067a8
  a22c9c:	239c                	lbu	a5,0(a5)
  a22c9e:	ef99                	bnez	a5,a22cbc <hal_efuse_get_die_id+0x26>
  a22ca0:	8000 1391 051f      	l.li	a0,0x80001391
  a22ca6:	8082                	ret
  a22ca8:	008905b3          	add	a1,s2,s0
  a22cac:	8522                	mv	a0,s0
  a22cae:	3761                	jal	ra,a22c36 <hal_efuse_read_byte>
  a22cb0:	e919                	bnez	a0,a22cc6 <hal_efuse_get_die_id+0x30>
  a22cb2:	0405                	addi	s0,s0,1
  a22cb4:	fe946ae3          	bltu	s0,s1,a22ca8 <hal_efuse_get_die_id+0x12>
  a22cb8:	4501                	li	a0,0
  a22cba:	8044                	popret	{ra,s0-s2},16
  a22cbc:	8048                	push	{ra,s0-s2},-16
  a22cbe:	892a                	mv	s2,a0
  a22cc0:	84ae                	mv	s1,a1
  a22cc2:	4401                	li	s0,0
  a22cc4:	bfc5                	j	a22cb4 <hal_efuse_get_die_id+0x1e>
  a22cc6:	557d                	li	a0,-1
  a22cc8:	bfcd                	j	a22cba <hal_efuse_get_die_id+0x24>

00a22cca <hal_efuse_write_operation>:
  a22cca:	00a0 67a8 079f      	l.li	a5,0xa067a8
  a22cd0:	239c                	lbu	a5,0(a5)
  a22cd2:	c3c1                	beqz	a5,a22d52 <hal_efuse_write_operation+0x88>
  a22cd4:	8058                	push	{ra,s0-s3},-32
  a22cd6:	842a                	mv	s0,a0
  a22cd8:	0ff00793          	li	a5,255
  a22cdc:	06a7ef63          	bltu	a5,a0,a22d5a <hal_efuse_write_operation+0x90>
  a22ce0:	00a064b7          	lui	s1,0xa06
  a22ce4:	892e                	mv	s2,a1
  a22ce6:	7b048993          	addi	s3,s1,1968 # a067b0 <g_efuse_regs>
  a22cea:	3c7010ef          	jal	ra,a248b0 <hal_efuse_get_region>
  a22cee:	04a9851b          	addshf	a0,s3,a0,sll,2
  a22cf2:	4118                	lw	a4,0(a0)
  a22cf4:	76c1                	lui	a3,0xffff0
  a22cf6:	8522                	mv	a0,s0
  a22cf8:	431c                	lw	a5,0(a4)
  a22cfa:	7b048493          	addi	s1,s1,1968
  a22cfe:	8ff5                	and	a5,a5,a3
  a22d00:	0000 a5a5 069f      	l.li	a3,0xa5a5
  a22d06:	8fd5                	or	a5,a5,a3
  a22d08:	c31c                	sw	a5,0(a4)
  a22d0a:	3a7010ef          	jal	ra,a248b0 <hal_efuse_get_region>
  a22d0e:	04a9851b          	addshf	a0,s3,a0,sll,2
  a22d12:	4118                	lw	a4,0(a0)
  a22d14:	06400513          	li	a0,100
  a22d18:	475c                	lw	a5,12(a4)
  a22d1a:	0017e793          	ori	a5,a5,1
  a22d1e:	c75c                	sw	a5,12(a4)
  a22d20:	ed2ff0ef          	jal	ra,a223f2 <uapi_tcxo_delay_us>
  a22d24:	8522                	mv	a0,s0
  a22d26:	3d75                	jal	ra,a22be2 <hal_efuse_get_writeread_addr>
  a22d28:	00147793          	andi	a5,s0,1
  a22d2c:	c391                	beqz	a5,a22d30 <hal_efuse_write_operation+0x66>
  a22d2e:	0922                	slli	s2,s2,0x8
  a22d30:	01252023          	sw	s2,0(a0)
  a22d34:	8522                	mv	a0,s0
  a22d36:	37b010ef          	jal	ra,a248b0 <hal_efuse_get_region>
  a22d3a:	04a4849b          	addshf	s1,s1,a0,sll,2
  a22d3e:	4098                	lw	a4,0(s1)
  a22d40:	06400513          	li	a0,100
  a22d44:	475c                	lw	a5,12(a4)
  a22d46:	9bf9                	andi	a5,a5,-2
  a22d48:	c75c                	sw	a5,12(a4)
  a22d4a:	ea8ff0ef          	jal	ra,a223f2 <uapi_tcxo_delay_us>
  a22d4e:	4501                	li	a0,0
  a22d50:	8054                	popret	{ra,s0-s3},32
  a22d52:	8000 1391 051f      	l.li	a0,0x80001391
  a22d58:	8082                	ret
  a22d5a:	80000537          	lui	a0,0x80000
  a22d5e:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a22d60:	bfc5                	j	a22d50 <hal_efuse_write_operation+0x86>

00a22d62 <hal_efuse_write_buffer_operation>:
  a22d62:	00a0 67a8 079f      	l.li	a5,0xa067a8
  a22d68:	239c                	lbu	a5,0(a5)
  a22d6a:	c795                	beqz	a5,a22d96 <hal_efuse_write_buffer_operation+0x34>
  a22d6c:	8058                	push	{ra,s0-s3},-32
  a22d6e:	89b2                	mv	s3,a2
  a22d70:	842e                	mv	s0,a1
  a22d72:	84ae                	mv	s1,a1
  a22d74:	40b50933          	sub	s2,a0,a1
  a22d78:	408487b3          	sub	a5,s1,s0
  a22d7c:	0137e463          	bltu	a5,s3,a22d84 <hal_efuse_write_buffer_operation+0x22>
  a22d80:	4501                	li	a0,0
  a22d82:	8054                	popret	{ra,s0-s3},32
  a22d84:	208c                	lbu	a1,0(s1)
  a22d86:	00990533          	add	a0,s2,s1
  a22d8a:	4601                	li	a2,0
  a22d8c:	3f3d                	jal	ra,a22cca <hal_efuse_write_operation>
  a22d8e:	0485                	addi	s1,s1,1
  a22d90:	d565                	beqz	a0,a22d78 <hal_efuse_write_buffer_operation+0x16>
  a22d92:	557d                	li	a0,-1
  a22d94:	b7fd                	j	a22d82 <hal_efuse_write_buffer_operation+0x20>
  a22d96:	8000 1391 051f      	l.li	a0,0x80001391
  a22d9c:	8082                	ret

00a22d9e <hal_efuse_set_clock_period>:
  a22d9e:	00a0 2400 079f      	l.li	a5,0xa02400
  a22da4:	c388                	sw	a0,0(a5)
  a22da6:	8082                	ret

00a22da8 <hal_efuse_funcs_get>:
  a22da8:	00a0 2404 051f      	l.li	a0,0xa02404
  a22dae:	8082                	ret

00a22db0 <hal_efuse_regs_init>:
  a22db0:	02a04763          	bgtz	a0,a22dde <hal_efuse_regs_init+0x2e>
  a22db4:	050a                	slli	a0,a0,0x2
  a22db6:	00a0 2488 071f      	l.li	a4,0xa02488
  a22dbc:	00a0 67b0 079f      	l.li	a5,0xa067b0
  a22dc2:	97aa                	add	a5,a5,a0
  a22dc4:	953a                	add	a0,a0,a4
  a22dc6:	4118                	lw	a4,0(a0)
  a22dc8:	4501                	li	a0,0
  a22dca:	c398                	sw	a4,0(a5)
  a22dcc:	00a027b7          	lui	a5,0xa02
  a22dd0:	48c7a703          	lw	a4,1164(a5) # a0248c <g_efuse_boot_done_addr>
  a22dd4:	00a0 67ac 079f      	l.li	a5,0xa067ac
  a22dda:	c398                	sw	a4,0(a5)
  a22ddc:	8082                	ret
  a22dde:	557d                	li	a0,-1
  a22de0:	8082                	ret

00a22de2 <hal_reboot_chip>:
  a22de2:	8018                	push	{ra},-16
  a22de4:	ab6ff0ef          	jal	ra,a2209a <osal_irq_lock>
  a22de8:	668020ef          	jal	ra,a25450 <set_cpu_utils_system_boot_magic>
  a22dec:	331010ef          	jal	ra,a2491c <reboot_port_reboot_chip>
  a22df0:	a001                	j	a22df0 <hal_reboot_chip+0xe>

00a22df2 <crypto_cache_flush>:
  a22df2:	8082                	ret

00a22df4 <crypto_wait_func_is_support>:
  a22df4:	4501                	li	a0,0
  a22df6:	8082                	ret

00a22df8 <hal_pke_init>:
  a22df8:	00a0 67bc 079f      	l.li	a5,0xa067bc
  a22dfe:	4394                	lw	a3,0(a5)
  a22e00:	4705                	li	a4,1
  a22e02:	00e68363          	beq	a3,a4,a22e08 <hal_pke_init+0x10>
  a22e06:	c398                	sw	a4,0(a5)
  a22e08:	4501                	li	a0,0
  a22e0a:	8082                	ret

00a22e0c <hal_pke_deinit>:
  a22e0c:	00a0 67bc 079f      	l.li	a5,0xa067bc
  a22e12:	4398                	lw	a4,0(a5)
  a22e14:	0107133b          	bnei	a4,1,a22e20 <hal_pke_deinit+0x14>
  a22e18:	0007a023          	sw	zero,0(a5)
  a22e1c:	4501                	li	a0,0
  a22e1e:	8082                	ret
  a22e20:	6530 0002 051f      	l.li	a0,0x65300002
  a22e26:	8082                	ret

00a22e28 <hal_pke_unlock>:
  a22e28:	44111737          	lui	a4,0x44111
  a22e2c:	81072783          	lw	a5,-2032(a4) # 44110810 <__data_load__+0x436e8dcc>
  a22e30:	0037e793          	ori	a5,a5,3
  a22e34:	80f72823          	sw	a5,-2032(a4)
  a22e38:	0ff0000f          	fence
  a22e3c:	8082                	ret

00a22e3e <hal_hash_condition>:
  a22e3e:	411c                	lw	a5,0(a0)
  a22e40:	00a0 67c4 071f      	l.li	a4,0xa067c4
  a22e46:	1cf717db          	muliadd	a5,a4,a5,28
  a22e4a:	3bd8                	lbu	a4,21(a5)
  a22e4c:	0107133b          	bnei	a4,1,a22e58 <hal_hash_condition+0x1a>
  a22e50:	00078aa3          	sb	zero,21(a5)
  a22e54:	4505                	li	a0,1
  a22e56:	8082                	ret
  a22e58:	4501                	li	a0,0
  a22e5a:	8082                	ret

00a22e5c <hal_cipher_hash_init>:
  a22e5c:	8048                	push	{ra,s0-s2},-16
  a22e5e:	00a0 67c0 049f      	l.li	s1,0xa067c0
  a22e64:	209c                	lbu	a5,0(s1)
  a22e66:	4905                	li	s2,1
  a22e68:	05278563          	beq	a5,s2,a22eb2 <hal_cipher_hash_init+0x56>
  a22e6c:	00a06537          	lui	a0,0xa06
  a22e70:	7c450413          	addi	s0,a0,1988 # a067c4 <g_hash_hard_ctx>
  a22e74:	05400693          	li	a3,84
  a22e78:	4601                	li	a2,0
  a22e7a:	05400593          	li	a1,84
  a22e7e:	7c450513          	addi	a0,a0,1988
  a22e82:	738020ef          	jal	ra,a255ba <memset_s>
  a22e86:	00a0 6818 079f      	l.li	a5,0xa06818
  a22e8c:	4709                	li	a4,2
  a22e8e:	02078693          	addi	a3,a5,32
  a22e92:	c01c                	sw	a5,0(s0)
  a22e94:	04078793          	addi	a5,a5,64
  a22e98:	c418                	sw	a4,8(s0)
  a22e9a:	00042223          	sw	zero,4(s0)
  a22e9e:	cc54                	sw	a3,28(s0)
  a22ea0:	d058                	sw	a4,36(s0)
  a22ea2:	02042023          	sw	zero,32(s0)
  a22ea6:	dc1c                	sw	a5,56(s0)
  a22ea8:	c038                	sw	a4,64(s0)
  a22eaa:	02042e23          	sw	zero,60(s0)
  a22eae:	01248023          	sb	s2,0(s1)
  a22eb2:	4501                	li	a0,0
  a22eb4:	8044                	popret	{ra,s0-s2},16

00a22eb6 <hal_hash_unlock>:
  a22eb6:	441007b7          	lui	a5,0x44100
  a22eba:	43b8                	lw	a4,64(a5)
  a22ebc:	00251693          	slli	a3,a0,0x2
  a22ec0:	453d                	li	a0,15
  a22ec2:	00d51533          	sll	a0,a0,a3
  a22ec6:	fff54513          	not	a0,a0
  a22eca:	8d79                	and	a0,a0,a4
  a22ecc:	c3a8                	sw	a0,64(a5)
  a22ece:	0ff0000f          	fence
  a22ed2:	4501                	li	a0,0
  a22ed4:	8082                	ret

00a22ed6 <hal_cipher_hash_deinit>:
  a22ed6:	8038                	push	{ra,s0-s1},-16
  a22ed8:	00a0 67c0 041f      	l.li	s0,0xa067c0
  a22ede:	201c                	lbu	a5,0(s0)
  a22ee0:	c78d                	beqz	a5,a22f0a <hal_cipher_hash_deinit+0x34>
  a22ee2:	00a0 67c4 079f      	l.li	a5,0xa067c4
  a22ee8:	4501                	li	a0,0
  a22eea:	4384                	lw	s1,0(a5)
  a22eec:	37e9                	jal	ra,a22eb6 <hal_hash_unlock>
  a22eee:	4505                	li	a0,1
  a22ef0:	37d9                	jal	ra,a22eb6 <hal_hash_unlock>
  a22ef2:	4509                	li	a0,2
  a22ef4:	37c9                	jal	ra,a22eb6 <hal_hash_unlock>
  a22ef6:	06000693          	li	a3,96
  a22efa:	4601                	li	a2,0
  a22efc:	06000593          	li	a1,96
  a22f00:	8526                	mv	a0,s1
  a22f02:	6b8020ef          	jal	ra,a255ba <memset_s>
  a22f06:	00040023          	sb	zero,0(s0)
  a22f0a:	4501                	li	a0,0
  a22f0c:	8034                	popret	{ra,s0-s1},16

00a22f0e <hal_cipher_hash_config>:
  a22f0e:	00a0 67c0 079f      	l.li	a5,0xa067c0
  a22f14:	239c                	lbu	a5,0(a5)
  a22f16:	872a                	mv	a4,a0
  a22f18:	557d                	li	a0,-1
  a22f1a:	01279a3b          	bnei	a5,1,a22fc2 <hal_cipher_hash_config+0xb4>
  a22f1e:	0437743b          	bgeui	a4,4,a22fee <hal_cipher_hash_config+0xe0>
  a22f22:	c671                	beqz	a2,a22fee <hal_cipher_hash_config+0xe0>
  a22f24:	0125d793          	srli	a5,a1,0x12
  a22f28:	00a276b7          	lui	a3,0xa27
  a22f2c:	03c7f793          	andi	a5,a5,60
  a22f30:	ec468693          	addi	a3,a3,-316 # a26ec4 <g_crypto_ecc_params+0x14>
  a22f34:	97b6                	add	a5,a5,a3
  a22f36:	439c                	lw	a5,0(a5)
  a22f38:	8782                	jr	a5
  a22f3a:	02000693          	li	a3,32
  a22f3e:	45ad                	li	a1,11
  a22f40:	4501                	li	a0,0
  a22f42:	a829                	j	a22f5c <hal_cipher_hash_config+0x4e>
  a22f44:	81e1                	srli	a1,a1,0x18
  a22f46:	89bd                	andi	a1,a1,15
  a22f48:	0125853b          	beqi	a1,1,a22fdc <hal_cipher_hash_config+0xce>
  a22f4c:	022586bb          	beqi	a1,2,a22fe6 <hal_cipher_hash_config+0xd8>
  a22f50:	557d                	li	a0,-1
  a22f52:	8082                	ret
  a22f54:	04000693          	li	a3,64
  a22f58:	45ad                	li	a1,11
  a22f5a:	450d                	li	a0,3
  a22f5c:	00ff ffff 081f      	l.li	a6,0xffffff
  a22f62:	010707b3          	add	a5,a4,a6
  a22f66:	4410 5110 081f      	l.li	a6,0x44105110
  a22f6c:	10f8081b          	addshf	a6,a6,a5,sll,8
  a22f70:	00082783          	lw	a5,0(a6)
  a22f74:	ff0f ffff 089f      	l.li	a7,0xff0fffff
  a22f7a:	0117f7b3          	and	a5,a5,a7
  a22f7e:	28a7a79b          	orshf	a5,a5,a0,sll,20
  a22f82:	fff0 ffff 051f      	l.li	a0,0xfff0ffff
  a22f88:	8fe9                	and	a5,a5,a0
  a22f8a:	20b7a79b          	orshf	a5,a5,a1,sll,16
  a22f8e:	00f82023          	sw	a5,0(a6)
  a22f92:	0ff0000f          	fence
  a22f96:	4410a537          	lui	a0,0x4410a
  a22f9a:	071e                	slli	a4,a4,0x7
  a22f9c:	00450593          	addi	a1,a0,4 # 4410a004 <__data_load__+0x436e25c0>
  a22fa0:	95ba                	add	a1,a1,a4
  a22fa2:	8289                	srli	a3,a3,0x2
  a22fa4:	972a                	add	a4,a4,a0
  a22fa6:	4781                	li	a5,0
  a22fa8:	c19c                	sw	a5,0(a1)
  a22faa:	0ff0000f          	fence
  a22fae:	4208                	lw	a0,0(a2)
  a22fb0:	c308                	sw	a0,0(a4)
  a22fb2:	0ff0000f          	fence
  a22fb6:	0785                	addi	a5,a5,1 # 44100001 <__data_load__+0x436d85bd>
  a22fb8:	0611                	addi	a2,a2,4
  a22fba:	fef697e3          	bne	a3,a5,a22fa8 <hal_cipher_hash_config+0x9a>
  a22fbe:	4501                	li	a0,0
  a22fc0:	8082                	ret
  a22fc2:	8082                	ret
  a22fc4:	6520 0003 051f      	l.li	a0,0x65200003
  a22fca:	8082                	ret
  a22fcc:	46d1                	li	a3,20
  a22fce:	45a9                	li	a1,10
  a22fd0:	bf85                	j	a22f40 <hal_cipher_hash_config+0x32>
  a22fd2:	04000693          	li	a3,64
  a22fd6:	45ad                	li	a1,11
  a22fd8:	4509                	li	a0,2
  a22fda:	b749                	j	a22f5c <hal_cipher_hash_config+0x4e>
  a22fdc:	02000693          	li	a3,32
  a22fe0:	45ad                	li	a1,11
  a22fe2:	4505                	li	a0,1
  a22fe4:	bfa5                	j	a22f5c <hal_cipher_hash_config+0x4e>
  a22fe6:	02000693          	li	a3,32
  a22fea:	45b1                	li	a1,12
  a22fec:	bf91                	j	a22f40 <hal_cipher_hash_config+0x32>
  a22fee:	8082                	ret

00a22ff0 <hal_cipher_hash_add_in_node>:
  a22ff0:	c5b5                	beqz	a1,a2305c <hal_cipher_hash_add_in_node+0x6c>
  a22ff2:	8068                	push	{ra,s0-s4},-32
  a22ff4:	00a0 67c4 041f      	l.li	s0,0xa067c4
  a22ffa:	1ca4145b          	muliadd	s0,s0,a0,28
  a22ffe:	4058                	lw	a4,4(s0)
  a23000:	8936                	mv	s2,a3
  a23002:	4414                	lw	a3,8(s0)
  a23004:	00170793          	addi	a5,a4,1
  a23008:	4004                	lw	s1,0(s0)
  a2300a:	02d7f7b3          	remu	a5,a5,a3
  a2300e:	8a32                	mv	s4,a2
  a23010:	08e4849b          	addshf	s1,s1,a4,sll,4
  a23014:	89ae                	mv	s3,a1
  a23016:	46c1                	li	a3,16
  a23018:	4601                	li	a2,0
  a2301a:	45c1                	li	a1,16
  a2301c:	8526                	mv	a0,s1
  a2301e:	c05c                	sw	a5,4(s0)
  a23020:	59a020ef          	jal	ra,a255ba <memset_s>
  a23024:	409c                	lw	a5,0(s1)
  a23026:	00197693          	andi	a3,s2,1
  a2302a:	00497913          	andi	s2,s2,4
  a2302e:	9bf1                	andi	a5,a5,-4
  a23030:	01203733          	snez	a4,s2
  a23034:	8fd5                	or	a5,a5,a3
  a23036:	02e7a79b          	orshf	a5,a5,a4,sll,1
  a2303a:	c09c                	sw	a5,0(s1)
  a2303c:	24dc                	lbu	a5,12(s1)
  a2303e:	0134a423          	sw	s3,8(s1)
  a23042:	0144a223          	sw	s4,4(s1)
  a23046:	9bc1                	andi	a5,a5,-16
  a23048:	a4dc                	sb	a5,12(s1)
  a2304a:	00090663          	beqz	s2,a23056 <hal_cipher_hash_add_in_node+0x66>
  a2304e:	4785                	li	a5,1
  a23050:	b87c                	sb	a5,23(s0)
  a23052:	4501                	li	a0,0
  a23054:	8064                	popret	{ra,s0-s4},32
  a23056:	00040ba3          	sb	zero,23(s0)
  a2305a:	bfe5                	j	a23052 <hal_cipher_hash_add_in_node+0x62>
  a2305c:	6520 00a4 051f      	l.li	a0,0x652000a4
  a23062:	8082                	ret

00a23064 <hal_cipher_hash_start>:
  a23064:	8068                	push	{ra,s0-s4},-32
  a23066:	00a069b7          	lui	s3,0xa06
  a2306a:	7c498913          	addi	s2,s3,1988 # a067c4 <g_hash_hard_ctx>
  a2306e:	1ca9195b          	muliadd	s2,s2,a0,28
  a23072:	01092783          	lw	a5,16(s2)
  a23076:	4a05                	li	s4,1
  a23078:	842a                	mv	s0,a0
  a2307a:	00aa14b3          	sll	s1,s4,a0
  a2307e:	7c498993          	addi	s3,s3,1988
  a23082:	cbad                	beqz	a5,a230f4 <hal_cipher_hash_start+0x90>
  a23084:	c9a5                	beqz	a1,a230f4 <hal_cipher_hash_start+0x90>
  a23086:	01494783          	lbu	a5,20(s2)
  a2308a:	c7ad                	beqz	a5,a230f4 <hal_cipher_hash_start+0x90>
  a2308c:	d69ff0ef          	jal	ra,a22df4 <crypto_wait_func_is_support>
  a23090:	c135                	beqz	a0,a230f4 <hal_cipher_hash_start+0x90>
  a23092:	00090aa3          	sb	zero,21(s2)
  a23096:	01490b23          	sb	s4,22(s2)
  a2309a:	441087b7          	lui	a5,0x44108
  a2309e:	6047a703          	lw	a4,1540(a5) # 44108604 <__data_load__+0x436e0bc0>
  a230a2:	8cd9                	or	s1,s1,a4
  a230a4:	6097a223          	sw	s1,1540(a5)
  a230a8:	0ff0000f          	fence
  a230ac:	00ff ffff 091f      	l.li	s2,0xffffff
  a230b2:	012407b3          	add	a5,s0,s2
  a230b6:	4410 5130 091f      	l.li	s2,0x44105130
  a230bc:	10f9091b          	addshf	s2,s2,a5,sll,8
  a230c0:	00092703          	lw	a4,0(s2)
  a230c4:	1c89945b          	muliadd	s0,s3,s0,28
  a230c8:	4414                	lw	a3,8(s0)
  a230ca:	0ff77793          	andi	a5,a4,255
  a230ce:	0785                	addi	a5,a5,1
  a230d0:	02d7f7b3          	remu	a5,a5,a3
  a230d4:	4008                	lw	a0,0(s0)
  a230d6:	f0077713          	andi	a4,a4,-256
  a230da:	02000593          	li	a1,32
  a230de:	9f81                	uxtb	a5
  a230e0:	00f764b3          	or	s1,a4,a5
  a230e4:	d0fff0ef          	jal	ra,a22df2 <crypto_cache_flush>
  a230e8:	00992023          	sw	s1,0(s2)
  a230ec:	0ff0000f          	fence
  a230f0:	4501                	li	a0,0
  a230f2:	8064                	popret	{ra,s0-s4},32
  a230f4:	1c8997db          	muliadd	a5,s3,s0,28
  a230f8:	00078b23          	sb	zero,22(a5)
  a230fc:	441087b7          	lui	a5,0x44108
  a23100:	6047a703          	lw	a4,1540(a5) # 44108604 <__data_load__+0x436e0bc0>
  a23104:	fff4c493          	not	s1,s1
  a23108:	8cf9                	and	s1,s1,a4
  a2310a:	bf69                	j	a230a4 <hal_cipher_hash_start+0x40>

00a2310c <hal_cipher_hash_done_try>:
  a2310c:	44108737          	lui	a4,0x44108
  a23110:	60072683          	lw	a3,1536(a4) # 44108600 <__data_load__+0x436e0bbc>
  a23114:	4785                	li	a5,1
  a23116:	00a79533          	sll	a0,a5,a0
  a2311a:	8d75                	and	a0,a0,a3
  a2311c:	60a72023          	sw	a0,1536(a4)
  a23120:	0ff0000f          	fence
  a23124:	8082                	ret

00a23126 <hal_hash_lock>:
  a23126:	fff50793          	addi	a5,a0,-1
  a2312a:	0347f03b          	bgeui	a5,3,a2322a <hal_hash_lock+0x104>
  a2312e:	8058                	push	{ra,s0-s3},-32
  a23130:	842a                	mv	s0,a0
  a23132:	8faff0ef          	jal	ra,a2222c <crypto_get_cpu_type>
  a23136:	44100737          	lui	a4,0x44100
  a2313a:	432c                	lw	a1,64(a4)
  a2313c:	00241693          	slli	a3,s0,0x2
  a23140:	00153513          	seqz	a0,a0
  a23144:	00d5d633          	srl	a2,a1,a3
  a23148:	8a3d                	andi	a2,a2,15
  a2314a:	0505                	addi	a0,a0,1
  a2314c:	c609                	beqz	a2,a23156 <hal_hash_lock+0x30>
  a2314e:	6520 0005 051f      	l.li	a0,0x65200005
  a23154:	8054                	popret	{ra,s0-s3},32
  a23156:	00d517b3          	sll	a5,a0,a3
  a2315a:	8fcd                	or	a5,a5,a1
  a2315c:	c33c                	sw	a5,64(a4)
  a2315e:	0ff0000f          	fence
  a23162:	433c                	lw	a5,64(a4)
  a23164:	00d7d7b3          	srl	a5,a5,a3
  a23168:	8bbd                	andi	a5,a5,15
  a2316a:	fef512e3          	bne	a0,a5,a2314e <hal_hash_lock+0x28>
  a2316e:	441086b7          	lui	a3,0x44108
  a23172:	6046a603          	lw	a2,1540(a3) # 44108604 <__data_load__+0x436e0bc0>
  a23176:	4485                	li	s1,1
  a23178:	008494b3          	sll	s1,s1,s0
  a2317c:	fff4c793          	not	a5,s1
  a23180:	8ff1                	and	a5,a5,a2
  a23182:	60f6a223          	sw	a5,1540(a3)
  a23186:	0ff0000f          	fence
  a2318a:	d724                	sw	s1,104(a4)
  a2318c:	0ff0000f          	fence
  a23190:	0098 9680 091f      	l.li	s2,0x989680
  a23196:	441009b7          	lui	s3,0x44100
  a2319a:	0149a783          	lw	a5,20(s3) # 44100014 <__data_load__+0x436d85d0>
  a2319e:	8fe5                	and	a5,a5,s1
  a231a0:	cba5                	beqz	a5,a23210 <hal_hash_lock+0xea>
  a231a2:	0099aa23          	sw	s1,20(s3)
  a231a6:	0ff0000f          	fence
  a231aa:	80000937          	lui	s2,0x80000
  a231ae:	87eff0ef          	jal	ra,a2222c <crypto_get_cpu_type>
  a231b2:	e535                	bnez	a0,a2321e <hal_hash_lock+0xf8>
  a231b4:	50096913          	ori	s2,s2,1280
  a231b8:	0044 1050 049f      	l.li	s1,0x441050
  a231be:	94a2                	add	s1,s1,s0
  a231c0:	04a2                	slli	s1,s1,0x8
  a231c2:	0124a023          	sw	s2,0(s1)
  a231c6:	0ff0000f          	fence
  a231ca:	00a0 67c4 091f      	l.li	s2,0xa067c4
  a231d0:	1c89195b          	muliadd	s2,s2,s0,28
  a231d4:	00092503          	lw	a0,0(s2) # 80000000 <__data_load__+0x7f5d85bc>
  a231d8:	81aff0ef          	jal	ra,a221f2 <crypto_get_phys_addr>
  a231dc:	d0c8                	sw	a0,36(s1)
  a231de:	0ff0000f          	fence
  a231e2:	0204a023          	sw	zero,32(s1)
  a231e6:	0ff0000f          	fence
  a231ea:	4789                	li	a5,2
  a231ec:	d4dc                	sw	a5,44(s1)
  a231ee:	0ff0000f          	fence
  a231f2:	8522                	mv	a0,s0
  a231f4:	3f21                	jal	ra,a2310c <hal_cipher_hash_done_try>
  a231f6:	00092503          	lw	a0,0(s2)
  a231fa:	00092223          	sw	zero,4(s2)
  a231fe:	02000693          	li	a3,32
  a23202:	4601                	li	a2,0
  a23204:	02000593          	li	a1,32
  a23208:	3b2020ef          	jal	ra,a255ba <memset_s>
  a2320c:	4501                	li	a0,0
  a2320e:	b799                	j	a23154 <hal_hash_lock+0x2e>
  a23210:	4505                	li	a0,1
  a23212:	197d                	addi	s2,s2,-1
  a23214:	9deff0ef          	jal	ra,a223f2 <uapi_tcxo_delay_us>
  a23218:	f80911e3          	bnez	s2,a2319a <hal_hash_lock+0x74>
  a2321c:	b779                	j	a231aa <hal_hash_lock+0x84>
  a2321e:	0000 0a00 079f      	l.li	a5,0xa00
  a23224:	00f96933          	or	s2,s2,a5
  a23228:	bf41                	j	a231b8 <hal_hash_lock+0x92>
  a2322a:	557d                	li	a0,-1
  a2322c:	8082                	ret

00a2322e <hal_hash_debug_chn>:
  a2322e:	030577bb          	bgeui	a0,3,a2324c <hal_hash_debug_chn+0x1e>
  a23232:	4410 a004 079f      	l.li	a5,0x4410a004
  a23238:	0ea7851b          	addshf	a0,a5,a0,sll,7
  a2323c:	4741                	li	a4,16
  a2323e:	4781                	li	a5,0
  a23240:	c11c                	sw	a5,0(a0)
  a23242:	0ff0000f          	fence
  a23246:	0785                	addi	a5,a5,1
  a23248:	fee79ce3          	bne	a5,a4,a23240 <hal_hash_debug_chn+0x12>
  a2324c:	8082                	ret

00a2324e <hal_cipher_hash_wait_done>:
  a2324e:	4446783b          	bgeui	a2,68,a2336e <hal_cipher_hash_wait_done+0x120>
  a23252:	81a8                	push	{ra,s0-s8},-64
  a23254:	00a0 67c4 079f      	l.li	a5,0xa067c4
  a2325a:	1ca797db          	muliadd	a5,a5,a0,28
  a2325e:	3bf8                	lbu	a4,23(a5)
  a23260:	89b2                	mv	s3,a2
  a23262:	892e                	mv	s2,a1
  a23264:	842a                	mv	s0,a0
  a23266:	cf41                	beqz	a4,a232fe <hal_cipher_hash_wait_done+0xb0>
  a23268:	2bf8                	lbu	a4,22(a5)
  a2326a:	c62a                	sw	a0,12(sp)
  a2326c:	4481                	li	s1,0
  a2326e:	0117193b          	bnei	a4,1,a232d2 <hal_cipher_hash_wait_done+0x84>
  a23272:	4b98                	lw	a4,16(a5)
  a23274:	cf39                	beqz	a4,a232d2 <hal_cipher_hash_wait_done+0x84>
  a23276:	4f94                	lw	a3,24(a5)
  a23278:	47c8                	lw	a0,12(a5)
  a2327a:	0070                	addi	a2,sp,12
  a2327c:	00a2 2e3e 059f      	l.li	a1,0xa22e3e
  a23282:	9702                	jalr	a4
  a23284:	0ca04663          	bgtz	a0,a23350 <hal_cipher_hash_wait_done+0x102>
  a23288:	441007b7          	lui	a5,0x44100
  a2328c:	43bc                	lw	a5,64(a5)
  a2328e:	8522                	mv	a0,s0
  a23290:	3f79                	jal	ra,a2322e <hal_hash_debug_chn>
  a23292:	6520 00b2 051f      	l.li	a0,0x652000b2
  a23298:	44108737          	lui	a4,0x44108
  a2329c:	60472683          	lw	a3,1540(a4) # 44108604 <__data_load__+0x436e0bc0>
  a232a0:	4785                	li	a5,1
  a232a2:	008797b3          	sll	a5,a5,s0
  a232a6:	fff7c793          	not	a5,a5
  a232aa:	8ff5                	and	a5,a5,a3
  a232ac:	60f72223          	sw	a5,1540(a4)
  a232b0:	0ff0000f          	fence
  a232b4:	00090e63          	beqz	s2,a232d0 <hal_cipher_hash_wait_done+0x82>
  a232b8:	4410a7b7          	lui	a5,0x4410a
  a232bc:	041e                	slli	s0,s0,0x7
  a232be:	00478713          	addi	a4,a5,4 # 4410a004 <__data_load__+0x436e25c0>
  a232c2:	9722                	add	a4,a4,s0
  a232c4:	0029d993          	srli	s3,s3,0x2
  a232c8:	943e                	add	s0,s0,a5
  a232ca:	4781                	li	a5,0
  a232cc:	08f99863          	bne	s3,a5,a2335c <hal_cipher_hash_wait_done+0x10e>
  a232d0:	81a4                	popret	{ra,s0-s8},64
  a232d2:	3e800a93          	li	s5,1000
  a232d6:	0000 1770 0a1f      	l.li	s4,0x1770
  a232dc:	4532                	lw	a0,12(sp)
  a232de:	353d                	jal	ra,a2310c <hal_cipher_hash_done_try>
  a232e0:	c119                	beqz	a0,a232e6 <hal_cipher_hash_wait_done+0x98>
  a232e2:	4501                	li	a0,0
  a232e4:	bf55                	j	a23298 <hal_cipher_hash_wait_done+0x4a>
  a232e6:	4505                	li	a0,1
  a232e8:	009ae863          	bltu	s5,s1,a232f8 <hal_cipher_hash_wait_done+0xaa>
  a232ec:	906ff0ef          	jal	ra,a223f2 <uapi_tcxo_delay_us>
  a232f0:	0485                	addi	s1,s1,1
  a232f2:	ff4495e3          	bne	s1,s4,a232dc <hal_cipher_hash_wait_done+0x8e>
  a232f6:	bf49                	j	a23288 <hal_cipher_hash_wait_done+0x3a>
  a232f8:	8aaff0ef          	jal	ra,a223a2 <uapi_tcxo_delay_ms>
  a232fc:	bfd5                	j	a232f0 <hal_cipher_hash_wait_done+0xa2>
  a232fe:	00ff ffff 049f      	l.li	s1,0xffffff
  a23304:	441057b7          	lui	a5,0x44105
  a23308:	94aa                	add	s1,s1,a0
  a2330a:	04a2                	slli	s1,s1,0x8
  a2330c:	13478b13          	addi	s6,a5,308 # 44105134 <__data_load__+0x436dd6f0>
  a23310:	13078793          	addi	a5,a5,304
  a23314:	9b26                	add	s6,s6,s1
  a23316:	00f48a33          	add	s4,s1,a5
  a2331a:	4a81                	li	s5,0
  a2331c:	3e800c13          	li	s8,1000
  a23320:	0000 1770 0b9f      	l.li	s7,0x1770
  a23326:	000b2703          	lw	a4,0(s6)
  a2332a:	000a2783          	lw	a5,0(s4)
  a2332e:	4505                	li	a0,1
  a23330:	04f70163          	beq	a4,a5,a23372 <hal_cipher_hash_wait_done+0x124>
  a23334:	015c6863          	bltu	s8,s5,a23344 <hal_cipher_hash_wait_done+0xf6>
  a23338:	8baff0ef          	jal	ra,a223f2 <uapi_tcxo_delay_us>
  a2333c:	0a85                	addi	s5,s5,1
  a2333e:	ff7a94e3          	bne	s5,s7,a23326 <hal_cipher_hash_wait_done+0xd8>
  a23342:	b799                	j	a23288 <hal_cipher_hash_wait_done+0x3a>
  a23344:	85eff0ef          	jal	ra,a223a2 <uapi_tcxo_delay_ms>
  a23348:	bfd5                	j	a2333c <hal_cipher_hash_wait_done+0xee>
  a2334a:	858ff0ef          	jal	ra,a223a2 <uapi_tcxo_delay_ms>
  a2334e:	a0a9                	j	a23398 <hal_cipher_hash_wait_done+0x14a>
  a23350:	6520 00b2 079f      	l.li	a5,0x652000b2
  a23356:	f8f516e3          	bne	a0,a5,a232e2 <hal_cipher_hash_wait_done+0x94>
  a2335a:	b73d                	j	a23288 <hal_cipher_hash_wait_done+0x3a>
  a2335c:	c31c                	sw	a5,0(a4)
  a2335e:	0ff0000f          	fence
  a23362:	4014                	lw	a3,0(s0)
  a23364:	0785                	addi	a5,a5,1
  a23366:	0911                	addi	s2,s2,4
  a23368:	fed92e23          	sw	a3,-4(s2)
  a2336c:	b785                	j	a232cc <hal_cipher_hash_wait_done+0x7e>
  a2336e:	557d                	li	a0,-1
  a23370:	8082                	ret
  a23372:	880ff0ef          	jal	ra,a223f2 <uapi_tcxo_delay_us>
  a23376:	4410 51c0 079f      	l.li	a5,0x441051c0
  a2337c:	4a01                	li	s4,0
  a2337e:	94be                	add	s1,s1,a5
  a23380:	3e800b13          	li	s6,1000
  a23384:	0000 1770 0a9f      	l.li	s5,0x1770
  a2338a:	409c                	lw	a5,0(s1)
  a2338c:	dbb9                	beqz	a5,a232e2 <hal_cipher_hash_wait_done+0x94>
  a2338e:	4505                	li	a0,1
  a23390:	fb4b6de3          	bltu	s6,s4,a2334a <hal_cipher_hash_wait_done+0xfc>
  a23394:	85eff0ef          	jal	ra,a223f2 <uapi_tcxo_delay_us>
  a23398:	0a05                	addi	s4,s4,1
  a2339a:	ff5a18e3          	bne	s4,s5,a2338a <hal_cipher_hash_wait_done+0x13c>
  a2339e:	b5ed                	j	a23288 <hal_cipher_hash_wait_done+0x3a>

00a233a0 <hal_cipher_trng_init>:
  a233a0:	00a0 6878 079f      	l.li	a5,0xa06878
  a233a6:	4705                	li	a4,1
  a233a8:	a398                	sb	a4,0(a5)
  a233aa:	4501                	li	a0,0
  a233ac:	8082                	ret

00a233ae <hal_cipher_trng_deinit>:
  a233ae:	00a0 6878 079f      	l.li	a5,0xa06878
  a233b4:	00078023          	sb	zero,0(a5)
  a233b8:	4501                	li	a0,0
  a233ba:	8082                	ret

00a233bc <hal_tcxo_init>:
  a233bc:	8018                	push	{ra},-16
  a233be:	28a9                	jal	ra,a23418 <hal_tcxo_v150_regs_init>
  a233c0:	e105                	bnez	a0,a233e0 <hal_tcxo_init+0x24>
  a233c2:	00a07737          	lui	a4,0xa07
  a233c6:	87c72683          	lw	a3,-1924(a4) # a0687c <g_tcxo_regs>
  a233ca:	429c                	lw	a5,0(a3)
  a233cc:	0047e793          	ori	a5,a5,4
  a233d0:	c29c                	sw	a5,0(a3)
  a233d2:	87c72703          	lw	a4,-1924(a4)
  a233d6:	431c                	lw	a5,0(a4)
  a233d8:	0027e793          	ori	a5,a5,2
  a233dc:	c31c                	sw	a5,0(a4)
  a233de:	8014                	popret	{ra},16
  a233e0:	8000 1180 051f      	l.li	a0,0x80001180
  a233e6:	bfe5                	j	a233de <hal_tcxo_init+0x22>

00a233e8 <hal_tcxo_get>:
  a233e8:	00a077b7          	lui	a5,0xa07
  a233ec:	87c7a683          	lw	a3,-1924(a5) # a0687c <g_tcxo_regs>
  a233f0:	4605                	li	a2,1
  a233f2:	4298                	lw	a4,0(a3)
  a233f4:	00176713          	ori	a4,a4,1
  a233f8:	c298                	sw	a4,0(a3)
  a233fa:	56fd                	li	a3,-1
  a233fc:	873e                	mv	a4,a5
  a233fe:	87c72783          	lw	a5,-1924(a4)
  a23402:	439c                	lw	a5,0(a5)
  a23404:	8391                	srli	a5,a5,0x4
  a23406:	8b85                	andi	a5,a5,1
  a23408:	00c78763          	beq	a5,a2,a23416 <hal_tcxo_get+0x2e>
  a2340c:	16fd                	addi	a3,a3,-1
  a2340e:	fae5                	bnez	a3,a233fe <hal_tcxo_get+0x16>
  a23410:	4501                	li	a0,0
  a23412:	4581                	li	a1,0
  a23414:	8082                	ret
  a23416:	a00d                	j	a23438 <hal_tcxo_reg_count_get>

00a23418 <hal_tcxo_v150_regs_init>:
  a23418:	8018                	push	{ra},-16
  a2341a:	45f000ef          	jal	ra,a24078 <tcxo_porting_base_addr_get>
  a2341e:	c909                	beqz	a0,a23430 <hal_tcxo_v150_regs_init+0x18>
  a23420:	459000ef          	jal	ra,a24078 <tcxo_porting_base_addr_get>
  a23424:	00a0 687c 079f      	l.li	a5,0xa0687c
  a2342a:	c388                	sw	a0,0(a5)
  a2342c:	4501                	li	a0,0
  a2342e:	8014                	popret	{ra},16
  a23430:	8000 1180 051f      	l.li	a0,0x80001180
  a23436:	bfe5                	j	a2342e <hal_tcxo_v150_regs_init+0x16>

00a23438 <hal_tcxo_reg_count_get>:
  a23438:	00a0 687c 079f      	l.li	a5,0xa0687c
  a2343e:	439c                	lw	a5,0(a5)
  a23440:	478c                	lw	a1,8(a5)
  a23442:	43c8                	lw	a0,4(a5)
  a23444:	8082                	ret

00a23446 <hal_uart_register_funcs>:
  a23446:	030575bb          	bgeui	a0,3,a2345c <hal_uart_register_funcs+0x16>
  a2344a:	c989                	beqz	a1,a2345c <hal_uart_register_funcs+0x16>
  a2344c:	00a0 6880 079f      	l.li	a5,0xa06880
  a23452:	04a7851b          	addshf	a0,a5,a0,sll,2
  a23456:	c10c                	sw	a1,0(a0)
  a23458:	4501                	li	a0,0
  a2345a:	8082                	ret
  a2345c:	80000537          	lui	a0,0x80000
  a23460:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a23462:	8082                	ret

00a23464 <hal_uart_init>:
  a23464:	8228                	push	{ra,s0},-48
  a23466:	842a                	mv	s0,a0
  a23468:	ce2e                	sw	a1,28(sp)
  a2346a:	cc32                	sw	a2,24(sp)
  a2346c:	ca36                	sw	a3,20(sp)
  a2346e:	c83a                	sw	a4,16(sp)
  a23470:	c63e                	sw	a5,12(sp)
  a23472:	379000ef          	jal	ra,a23fea <uart_port_register_hal_funcs>
  a23476:	00a0 6880 051f      	l.li	a0,0xa06880
  a2347c:	0485051b          	addshf	a0,a0,s0,sll,2
  a23480:	4108                	lw	a0,0(a0)
  a23482:	cd01                	beqz	a0,a2349a <hal_uart_init+0x36>
  a23484:	46d2                	lw	a3,20(sp)
  a23486:	ca91                	beqz	a3,a2349a <hal_uart_init+0x36>
  a23488:	00052303          	lw	t1,0(a0)
  a2348c:	47b2                	lw	a5,12(sp)
  a2348e:	4742                	lw	a4,16(sp)
  a23490:	4662                	lw	a2,24(sp)
  a23492:	45f2                	lw	a1,28(sp)
  a23494:	8522                	mv	a0,s0
  a23496:	8220                	pop	{ra,s0},48
  a23498:	8302                	jr	t1
  a2349a:	8000 1047 051f      	l.li	a0,0x80001047
  a234a0:	8224                	popret	{ra,s0},48

00a234a2 <hal_uart_deinit>:
  a234a2:	00a0 6880 079f      	l.li	a5,0xa06880
  a234a8:	04a7879b          	addshf	a5,a5,a0,sll,2
  a234ac:	439c                	lw	a5,0(a5)
  a234ae:	0047a303          	lw	t1,4(a5)
  a234b2:	8302                	jr	t1

00a234b4 <hal_uart_write>:
  a234b4:	00a0 6880 079f      	l.li	a5,0xa06880
  a234ba:	04a7879b          	addshf	a5,a5,a0,sll,2
  a234be:	439c                	lw	a5,0(a5)
  a234c0:	00c7a303          	lw	t1,12(a5)
  a234c4:	8302                	jr	t1

00a234c6 <hal_uart_read>:
  a234c6:	00a0 6880 079f      	l.li	a5,0xa06880
  a234cc:	04a7879b          	addshf	a5,a5,a0,sll,2
  a234d0:	439c                	lw	a5,0(a5)
  a234d2:	0107a303          	lw	t1,16(a5)
  a234d6:	8302                	jr	t1

00a234d8 <hal_uart_ctrl>:
  a234d8:	00a0 6880 079f      	l.li	a5,0xa06880
  a234de:	04a7879b          	addshf	a5,a5,a0,sll,2
  a234e2:	439c                	lw	a5,0(a5)
  a234e4:	c781                	beqz	a5,a234ec <hal_uart_ctrl+0x14>
  a234e6:	0087a303          	lw	t1,8(a5)
  a234ea:	8302                	jr	t1
  a234ec:	8000 1047 051f      	l.li	a0,0x80001047
  a234f2:	8082                	ret

00a234f4 <hal_uart_v151_ctrl_get_rxfifo_passnum>:
  a234f4:	c609                	beqz	a2,a234fe <hal_uart_v151_ctrl_get_rxfifo_passnum+0xa>
  a234f6:	57fd                	li	a5,-1
  a234f8:	c21c                	sw	a5,0(a2)
  a234fa:	4501                	li	a0,0
  a234fc:	8082                	ret
  a234fe:	80000537          	lui	a0,0x80000
  a23502:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a23504:	8082                	ret

00a23506 <hal_uart_v151_get_uart_rxfifo_threshold>:
  a23506:	00a0 68a8 079f      	l.li	a5,0xa068a8
  a2350c:	953e                	add	a0,a0,a5
  a2350e:	2114                	lbu	a3,0(a0)
  a23510:	03e00713          	li	a4,62
  a23514:	0306f3bb          	bgeui	a3,3,a23522 <hal_uart_v151_get_uart_rxfifo_threshold+0x1c>
  a23518:	00a2 6f3c 079f      	l.li	a5,0xa26f3c
  a2351e:	97b6                	add	a5,a5,a3
  a23520:	2398                	lbu	a4,0(a5)
  a23522:	c218                	sw	a4,0(a2)
  a23524:	4501                	li	a0,0
  a23526:	8082                	ret

00a23528 <hal_uart_v151_deinit>:
  a23528:	00a0 688c 079f      	l.li	a5,0xa0688c
  a2352e:	04a7851b          	addshf	a0,a5,a0,sll,2
  a23532:	00052023          	sw	zero,0(a0)
  a23536:	4501                	li	a0,0
  a23538:	8082                	ret

00a2353a <hal_uart_set_diven>:
  a2353a:	00a0 689c 079f      	l.li	a5,0xa0689c
  a23540:	04a7851b          	addshf	a0,a5,a0,sll,2
  a23544:	4118                	lw	a4,0(a0)
  a23546:	8985                	andi	a1,a1,1
  a23548:	471c                	lw	a5,8(a4)
  a2354a:	9bf9                	andi	a5,a5,-2
  a2354c:	8fcd                	or	a5,a5,a1
  a2354e:	c71c                	sw	a5,8(a4)
  a23550:	8082                	ret

00a23552 <hal_uart_is_tx_fifo_full>:
  a23552:	00a0 689c 079f      	l.li	a5,0xa0689c
  a23558:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2355c:	411c                	lw	a5,0(a0)
  a2355e:	4501                	li	a0,0
  a23560:	43fc                	lw	a5,68(a5)
  a23562:	8b85                	andi	a5,a5,1
  a23564:	a21c                	sb	a5,0(a2)
  a23566:	8082                	ret

00a23568 <hal_uart_is_tx_fifo_empty>:
  a23568:	00a0 689c 079f      	l.li	a5,0xa0689c
  a2356e:	04a7851b          	addshf	a0,a5,a0,sll,2
  a23572:	411c                	lw	a5,0(a0)
  a23574:	4501                	li	a0,0
  a23576:	43fc                	lw	a5,68(a5)
  a23578:	8385                	srli	a5,a5,0x1
  a2357a:	8b85                	andi	a5,a5,1
  a2357c:	a21c                	sb	a5,0(a2)
  a2357e:	8082                	ret

00a23580 <hal_uart_is_busy>:
  a23580:	00a0 689c 079f      	l.li	a5,0xa0689c
  a23586:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2358a:	411c                	lw	a5,0(a0)
  a2358c:	4501                	li	a0,0
  a2358e:	43fc                	lw	a5,68(a5)
  a23590:	9f81                	uxtb	a5
  a23592:	8385                	srli	a5,a5,0x1
  a23594:	0017c793          	xori	a5,a5,1
  a23598:	8b85                	andi	a5,a5,1
  a2359a:	a21c                	sb	a5,0(a2)
  a2359c:	8082                	ret

00a2359e <hal_uart_is_rx_fifo_empty>:
  a2359e:	00a0 689c 079f      	l.li	a5,0xa0689c
  a235a4:	04a7851b          	addshf	a0,a5,a0,sll,2
  a235a8:	411c                	lw	a5,0(a0)
  a235aa:	4501                	li	a0,0
  a235ac:	43fc                	lw	a5,68(a5)
  a235ae:	838d                	srli	a5,a5,0x3
  a235b0:	8b85                	andi	a5,a5,1
  a235b2:	a21c                	sb	a5,0(a2)
  a235b4:	8082                	ret

00a235b6 <hal_uart_v151_write>:
  a235b6:	00a0 689c 079f      	l.li	a5,0xa0689c
  a235bc:	04a7851b          	addshf	a0,a5,a0,sll,2
  a235c0:	e219                	bnez	a2,a235c6 <hal_uart_v151_write+0x10>
  a235c2:	4501                	li	a0,0
  a235c4:	8082                	ret
  a235c6:	4118                	lw	a4,0(a0)
  a235c8:	437c                	lw	a5,68(a4)
  a235ca:	8b85                	andi	a5,a5,1
  a235cc:	fbf5                	bnez	a5,a235c0 <hal_uart_v151_write+0xa>
  a235ce:	0585                	addi	a1,a1,1
  a235d0:	fff5c783          	lbu	a5,-1(a1)
  a235d4:	167d                	addi	a2,a2,-1
  a235d6:	9e21                	uxth	a2
  a235d8:	c35c                	sw	a5,4(a4)
  a235da:	b7dd                	j	a235c0 <hal_uart_v151_write+0xa>

00a235dc <hal_uart_v151_read>:
  a235dc:	00a0 689c 071f      	l.li	a4,0xa0689c
  a235e2:	4781                	li	a5,0
  a235e4:	04a7051b          	addshf	a0,a4,a0,sll,2
  a235e8:	00c7c463          	blt	a5,a2,a235f0 <hal_uart_v151_read+0x14>
  a235ec:	853e                	mv	a0,a5
  a235ee:	8082                	ret
  a235f0:	4114                	lw	a3,0(a0)
  a235f2:	42f8                	lw	a4,68(a3)
  a235f4:	8b21                	andi	a4,a4,8
  a235f6:	fb7d                	bnez	a4,a235ec <hal_uart_v151_read+0x10>
  a235f8:	42d4                	lw	a3,4(a3)
  a235fa:	00f58733          	add	a4,a1,a5
  a235fe:	0785                	addi	a5,a5,1
  a23600:	a314                	sb	a3,0(a4)
  a23602:	b7dd                	j	a235e8 <hal_uart_v151_read+0xc>

00a23604 <hal_uart_v151_ctrl>:
  a23604:	00a2 6f40 079f      	l.li	a5,0xa26f40
  a2360a:	04b7879b          	addshf	a5,a5,a1,sll,2
  a2360e:	0007a303          	lw	t1,0(a5)
  a23612:	00030363          	beqz	t1,a23618 <hal_uart_v151_ctrl+0x14>
  a23616:	8302                	jr	t1
  a23618:	8000 1047 051f      	l.li	a0,0x80001047
  a2361e:	8082                	ret

00a23620 <hal_uart_init_fifo>:
  a23620:	00a0 689c 079f      	l.li	a5,0xa0689c
  a23626:	04a7879b          	addshf	a5,a5,a0,sll,2
  a2362a:	4398                	lw	a4,0(a5)
  a2362c:	0035f693          	andi	a3,a1,3
  a23630:	535c                	lw	a5,36(a4)
  a23632:	9bcd                	andi	a5,a5,-13
  a23634:	04d7a79b          	orshf	a5,a5,a3,sll,2
  a23638:	9bf1                	andi	a5,a5,-4
  a2363a:	00367693          	andi	a3,a2,3
  a2363e:	8fd5                	or	a5,a5,a3
  a23640:	0107e793          	ori	a5,a5,16
  a23644:	d35c                	sw	a5,36(a4)
  a23646:	00a0 68a8 079f      	l.li	a5,0xa068a8
  a2364c:	97aa                	add	a5,a5,a0
  a2364e:	a38c                	sb	a1,0(a5)
  a23650:	00a0 68ac 079f      	l.li	a5,0xa068ac
  a23656:	953e                	add	a0,a0,a5
  a23658:	a110                	sb	a2,0(a0)
  a2365a:	8082                	ret

00a2365c <hal_uart_v151_ctrl_set_txfifo_int_level>:
  a2365c:	0406633b          	bltui	a2,4,a23668 <hal_uart_v151_ctrl_set_txfifo_int_level+0xc>
  a23660:	80000537          	lui	a0,0x80000
  a23664:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a23666:	8082                	ret
  a23668:	8018                	push	{ra},-16
  a2366a:	00a0 68a8 079f      	l.li	a5,0xa068a8
  a23670:	97aa                	add	a5,a5,a0
  a23672:	238c                	lbu	a1,0(a5)
  a23674:	9e01                	uxtb	a2
  a23676:	376d                	jal	ra,a23620 <hal_uart_init_fifo>
  a23678:	4501                	li	a0,0
  a2367a:	8014                	popret	{ra},16

00a2367c <hal_uart_v151_ctrl_set_rxfifo_int_level>:
  a2367c:	0406633b          	bltui	a2,4,a23688 <hal_uart_v151_ctrl_set_rxfifo_int_level+0xc>
  a23680:	80000537          	lui	a0,0x80000
  a23684:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a23686:	8082                	ret
  a23688:	8018                	push	{ra},-16
  a2368a:	00a0 68ac 079f      	l.li	a5,0xa068ac
  a23690:	97aa                	add	a5,a5,a0
  a23692:	85b2                	mv	a1,a2
  a23694:	2390                	lbu	a2,0(a5)
  a23696:	9d81                	uxtb	a1
  a23698:	3761                	jal	ra,a23620 <hal_uart_init_fifo>
  a2369a:	4501                	li	a0,0
  a2369c:	8014                	popret	{ra},16

00a2369e <hal_uart_set_baud_rate>:
  a2369e:	c1a9                	beqz	a1,a236e0 <hal_uart_set_baud_rate+0x42>
  a236a0:	8048                	push	{ra,s0-s2},-16
  a236a2:	0592                	slli	a1,a1,0x4
  a236a4:	02b67433          	remu	s0,a2,a1
  a236a8:	892a                	mv	s2,a0
  a236aa:	02b654b3          	divu	s1,a2,a1
  a236ae:	041a                	slli	s0,s0,0x6
  a236b0:	02b45433          	divu	s0,s0,a1
  a236b4:	4585                	li	a1,1
  a236b6:	3551                	jal	ra,a2353a <hal_uart_set_diven>
  a236b8:	00a0 689c 079f      	l.li	a5,0xa0689c
  a236be:	0527879b          	addshf	a5,a5,s2,sll,2
  a236c2:	439c                	lw	a5,0(a5)
  a236c4:	0ff4f713          	andi	a4,s1,255
  a236c8:	9ca1                	uxth	s1
  a236ca:	cb98                	sw	a4,16(a5)
  a236cc:	80a1                	srli	s1,s1,0x8
  a236ce:	c7c4                	sw	s1,12(a5)
  a236d0:	4581                	li	a1,0
  a236d2:	854a                	mv	a0,s2
  a236d4:	03f47413          	andi	s0,s0,63
  a236d8:	cbc0                	sw	s0,20(a5)
  a236da:	8040                	pop	{ra,s0-s2},16
  a236dc:	e5fff06f          	j	a2353a <hal_uart_set_diven>
  a236e0:	8082                	ret

00a236e2 <hal_uart_set_data_bits>:
  a236e2:	00a0 689c 079f      	l.li	a5,0xa0689c
  a236e8:	04a7851b          	addshf	a0,a5,a0,sll,2
  a236ec:	4118                	lw	a4,0(a0)
  a236ee:	898d                	andi	a1,a1,3
  a236f0:	471c                	lw	a5,8(a4)
  a236f2:	9bcd                	andi	a5,a5,-13
  a236f4:	04b7a79b          	orshf	a5,a5,a1,sll,2
  a236f8:	c71c                	sw	a5,8(a4)
  a236fa:	8082                	ret

00a236fc <hal_uart_set_stop_bits>:
  a236fc:	00a0 689c 079f      	l.li	a5,0xa0689c
  a23702:	04a7851b          	addshf	a0,a5,a0,sll,2
  a23706:	4118                	lw	a4,0(a0)
  a23708:	8985                	andi	a1,a1,1
  a2370a:	471c                	lw	a5,8(a4)
  a2370c:	f7f7f793          	andi	a5,a5,-129
  a23710:	0eb7a79b          	orshf	a5,a5,a1,sll,7
  a23714:	c71c                	sw	a5,8(a4)
  a23716:	8082                	ret

00a23718 <hal_uart_auto_flow_ctl_en>:
  a23718:	00a0 689c 079f      	l.li	a5,0xa0689c
  a2371e:	04a7851b          	addshf	a0,a5,a0,sll,2
  a23722:	4118                	lw	a4,0(a0)
  a23724:	8985                	andi	a1,a1,1
  a23726:	575c                	lw	a5,44(a4)
  a23728:	9be9                	andi	a5,a5,-6
  a2372a:	8fcd                	or	a5,a5,a1
  a2372c:	04b7a59b          	orshf	a1,a5,a1,sll,2
  a23730:	d74c                	sw	a1,44(a4)
  a23732:	8082                	ret

00a23734 <hal_uart_enable_interrupt>:
  a23734:	00a0 689c 079f      	l.li	a5,0xa0689c
  a2373a:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2373e:	4114                	lw	a3,0(a0)
  a23740:	4e9c                	lw	a5,24(a3)
  a23742:	0e05f73b          	bgeui	a1,14,a2375e <hal_uart_enable_interrupt+0x2a>
  a23746:	00a27737          	lui	a4,0xa27
  a2374a:	f0470713          	addi	a4,a4,-252 # a26f04 <g_crypto_ecc_params+0x54>
  a2374e:	04b7059b          	addshf	a1,a4,a1,sll,2
  a23752:	4198                	lw	a4,0(a1)
  a23754:	8702                	jr	a4
  a23756:	8a05                	andi	a2,a2,1
  a23758:	9bdd                	andi	a5,a5,-9
  a2375a:	06c7a79b          	orshf	a5,a5,a2,sll,3
  a2375e:	ce9c                	sw	a5,24(a3)
  a23760:	8082                	ret
  a23762:	8a05                	andi	a2,a2,1
  a23764:	9bed                	andi	a5,a5,-5
  a23766:	04c7a79b          	orshf	a5,a5,a2,sll,2
  a2376a:	bfd5                	j	a2375e <hal_uart_enable_interrupt+0x2a>
  a2376c:	8a05                	andi	a2,a2,1
  a2376e:	9bf9                	andi	a5,a5,-2
  a23770:	8fd1                	or	a5,a5,a2
  a23772:	b7f5                	j	a2375e <hal_uart_enable_interrupt+0x2a>
  a23774:	8a05                	andi	a2,a2,1
  a23776:	9bf5                	andi	a5,a5,-3
  a23778:	02c7a79b          	orshf	a5,a5,a2,sll,1
  a2377c:	b7cd                	j	a2375e <hal_uart_enable_interrupt+0x2a>

00a2377e <hal_uart_en_para_err_int>:
  a2377e:	8018                	push	{ra},-16
  a23780:	00c03633          	snez	a2,a2
  a23784:	45b5                	li	a1,13
  a23786:	377d                	jal	ra,a23734 <hal_uart_enable_interrupt>
  a23788:	4501                	li	a0,0
  a2378a:	8014                	popret	{ra},16

00a2378c <hal_uart_en_idle_int>:
  a2378c:	8018                	push	{ra},-16
  a2378e:	00c03633          	snez	a2,a2
  a23792:	45b1                	li	a1,12
  a23794:	3745                	jal	ra,a23734 <hal_uart_enable_interrupt>
  a23796:	4501                	li	a0,0
  a23798:	8014                	popret	{ra},16

00a2379a <hal_uart_en_rx_int>:
  a2379a:	8018                	push	{ra},-16
  a2379c:	00c03633          	snez	a2,a2
  a237a0:	4591                	li	a1,4
  a237a2:	3f49                	jal	ra,a23734 <hal_uart_enable_interrupt>
  a237a4:	4501                	li	a0,0
  a237a6:	8014                	popret	{ra},16

00a237a8 <hal_uart_en_tx_int>:
  a237a8:	8018                	push	{ra},-16
  a237aa:	00c03633          	snez	a2,a2
  a237ae:	4589                	li	a1,2
  a237b0:	3751                	jal	ra,a23734 <hal_uart_enable_interrupt>
  a237b2:	4501                	li	a0,0
  a237b4:	8014                	popret	{ra},16

00a237b6 <hal_uart_check_en>:
  a237b6:	00a0 689c 079f      	l.li	a5,0xa0689c
  a237bc:	04a7851b          	addshf	a0,a5,a0,sll,2
  a237c0:	4118                	lw	a4,0(a0)
  a237c2:	8985                	andi	a1,a1,1
  a237c4:	471c                	lw	a5,8(a4)
  a237c6:	fdf7f793          	andi	a5,a5,-33
  a237ca:	0ab7a79b          	orshf	a5,a5,a1,sll,5
  a237ce:	c71c                	sw	a5,8(a4)
  a237d0:	8082                	ret

00a237d2 <hal_uart_parity_en>:
  a237d2:	00a0 689c 079f      	l.li	a5,0xa0689c
  a237d8:	04a7851b          	addshf	a0,a5,a0,sll,2
  a237dc:	4118                	lw	a4,0(a0)
  a237de:	8985                	andi	a1,a1,1
  a237e0:	471c                	lw	a5,8(a4)
  a237e2:	9bbd                	andi	a5,a5,-17
  a237e4:	08b7a79b          	orshf	a5,a5,a1,sll,4
  a237e8:	c71c                	sw	a5,8(a4)
  a237ea:	8082                	ret

00a237ec <hal_uart_set_parity>:
  a237ec:	8028                	push	{ra,s0},-16
  a237ee:	842a                	mv	s0,a0
  a237f0:	0105873b          	beqi	a1,1,a2380c <hal_uart_set_parity+0x20>
  a237f4:	c581                	beqz	a1,a237fc <hal_uart_set_parity+0x10>
  a237f6:	020582bb          	beqi	a1,2,a23800 <hal_uart_set_parity+0x14>
  a237fa:	8024                	popret	{ra,s0},16
  a237fc:	8020                	pop	{ra,s0},16
  a237fe:	bf65                	j	a237b6 <hal_uart_check_en>
  a23800:	4585                	li	a1,1
  a23802:	3f55                	jal	ra,a237b6 <hal_uart_check_en>
  a23804:	4585                	li	a1,1
  a23806:	8522                	mv	a0,s0
  a23808:	8020                	pop	{ra,s0},16
  a2380a:	b7e1                	j	a237d2 <hal_uart_parity_en>
  a2380c:	376d                	jal	ra,a237b6 <hal_uart_check_en>
  a2380e:	4581                	li	a1,0
  a23810:	bfdd                	j	a23806 <hal_uart_set_parity+0x1a>

00a23812 <hal_uart_v151_ctrl_set_attr>:
  a23812:	8138                	push	{ra,s0-s1},-32
  a23814:	224c                	lbu	a1,4(a2)
  a23816:	84b2                	mv	s1,a2
  a23818:	842a                	mv	s0,a0
  a2381a:	35e1                	jal	ra,a236e2 <hal_uart_set_data_bits>
  a2381c:	30cc                	lbu	a1,5(s1)
  a2381e:	8522                	mv	a0,s0
  a23820:	3df1                	jal	ra,a236fc <hal_uart_set_stop_bits>
  a23822:	20ec                	lbu	a1,6(s1)
  a23824:	8522                	mv	a0,s0
  a23826:	37d9                	jal	ra,a237ec <hal_uart_set_parity>
  a23828:	408c                	lw	a1,0(s1)
  a2382a:	8522                	mv	a0,s0
  a2382c:	c62e                	sw	a1,12(sp)
  a2382e:	7d8000ef          	jal	ra,a24006 <uart_port_get_clock_value>
  a23832:	45b2                	lw	a1,12(sp)
  a23834:	862a                	mv	a2,a0
  a23836:	8522                	mv	a0,s0
  a23838:	e67ff0ef          	jal	ra,a2369e <hal_uart_set_baud_rate>
  a2383c:	4501                	li	a0,0
  a2383e:	8134                	popret	{ra,s0-s1},32

00a23840 <hal_uart_tx_pause_en>:
  a23840:	00a0 689c 079f      	l.li	a5,0xa0689c
  a23846:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2384a:	4118                	lw	a4,0(a0)
  a2384c:	8985                	andi	a1,a1,1
  a2384e:	4b3c                	lw	a5,80(a4)
  a23850:	9bf9                	andi	a5,a5,-2
  a23852:	8fcd                	or	a5,a5,a1
  a23854:	cb3c                	sw	a5,80(a4)
  a23856:	8082                	ret

00a23858 <hal_uart_v151_init>:
  a23858:	8168                	push	{ra,s0-s4},-48
  a2385a:	84b6                	mv	s1,a3
  a2385c:	00251913          	slli	s2,a0,0x2
  a23860:	00a2 6f94 069f      	l.li	a3,0xa26f94
  a23866:	8a2e                	mv	s4,a1
  a23868:	012685b3          	add	a1,a3,s2
  a2386c:	418c                	lw	a1,0(a1)
  a2386e:	4294                	lw	a3,0(a3)
  a23870:	89ba                	mv	s3,a4
  a23872:	00a0 689c 071f      	l.li	a4,0xa0689c
  a23878:	01270633          	add	a2,a4,s2
  a2387c:	c20c                	sw	a1,0(a2)
  a2387e:	c314                	sw	a3,0(a4)
  a23880:	20cc                	lbu	a1,4(s1)
  a23882:	00a0 6898 071f      	l.li	a4,0xa06898
  a23888:	972a                	add	a4,a4,a0
  a2388a:	c63e                	sw	a5,12(sp)
  a2388c:	00070023          	sb	zero,0(a4)
  a23890:	842a                	mv	s0,a0
  a23892:	e51ff0ef          	jal	ra,a236e2 <hal_uart_set_data_bits>
  a23896:	30cc                	lbu	a1,5(s1)
  a23898:	8522                	mv	a0,s0
  a2389a:	e63ff0ef          	jal	ra,a236fc <hal_uart_set_stop_bits>
  a2389e:	20ec                	lbu	a1,6(s1)
  a238a0:	8522                	mv	a0,s0
  a238a2:	37a9                	jal	ra,a237ec <hal_uart_set_parity>
  a238a4:	4581                	li	a1,0
  a238a6:	8522                	mv	a0,s0
  a238a8:	3f61                	jal	ra,a23840 <hal_uart_tx_pause_en>
  a238aa:	408c                	lw	a1,0(s1)
  a238ac:	8522                	mv	a0,s0
  a238ae:	c42e                	sw	a1,8(sp)
  a238b0:	756000ef          	jal	ra,a24006 <uart_port_get_clock_value>
  a238b4:	45a2                	lw	a1,8(sp)
  a238b6:	862a                	mv	a2,a0
  a238b8:	8522                	mv	a0,s0
  a238ba:	de5ff0ef          	jal	ra,a2369e <hal_uart_set_baud_rate>
  a238be:	4529                	li	a0,10
  a238c0:	b33fe0ef          	jal	ra,a223f2 <uapi_tcxo_delay_us>
  a238c4:	47b2                	lw	a5,12(sp)
  a238c6:	c78d                	beqz	a5,a238f0 <hal_uart_v151_init+0x98>
  a238c8:	3390                	lbu	a2,1(a5)
  a238ca:	33ac                	lbu	a1,3(a5)
  a238cc:	8522                	mv	a0,s0
  a238ce:	d53ff0ef          	jal	ra,a23620 <hal_uart_init_fifo>
  a238d2:	00a0 688c 079f      	l.li	a5,0xa0688c
  a238d8:	97ca                	add	a5,a5,s2
  a238da:	0147a023          	sw	s4,0(a5)
  a238de:	4585                	li	a1,1
  a238e0:	030981bb          	beqi	s3,3,a238e6 <hal_uart_v151_init+0x8e>
  a238e4:	4581                	li	a1,0
  a238e6:	8522                	mv	a0,s0
  a238e8:	e31ff0ef          	jal	ra,a23718 <hal_uart_auto_flow_ctl_en>
  a238ec:	4501                	li	a0,0
  a238ee:	8164                	popret	{ra,s0-s4},48
  a238f0:	4605                	li	a2,1
  a238f2:	4585                	li	a1,1
  a238f4:	bfe1                	j	a238cc <hal_uart_v151_init+0x74>

00a238f6 <hal_uart_v151_funcs_get>:
  a238f6:	00a0 2430 051f      	l.li	a0,0xa02430
  a238fc:	8082                	ret

00a238fe <hal_watchdog_register_funcs>:
  a238fe:	c519                	beqz	a0,a2390c <hal_watchdog_register_funcs+0xe>
  a23900:	00a0 68b0 079f      	l.li	a5,0xa068b0
  a23906:	c388                	sw	a0,0(a5)
  a23908:	4501                	li	a0,0
  a2390a:	8082                	ret
  a2390c:	80000537          	lui	a0,0x80000
  a23910:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a23912:	8082                	ret

00a23914 <hal_watchdog_unregister_funcs>:
  a23914:	00a0 68b0 079f      	l.li	a5,0xa068b0
  a2391a:	0007a023          	sw	zero,0(a5)
  a2391e:	4501                	li	a0,0
  a23920:	8082                	ret

00a23922 <hal_watchdog_get_funcs>:
  a23922:	00a0 68b0 079f      	l.li	a5,0xa068b0
  a23928:	4388                	lw	a0,0(a5)
  a2392a:	8082                	ret

00a2392c <hal_watchdog_regs_init>:
  a2392c:	00a027b7          	lui	a5,0xa02
  a23930:	4787a783          	lw	a5,1144(a5) # a02478 <g_watchdog_base_addr>
  a23934:	c799                	beqz	a5,a23942 <hal_watchdog_regs_init+0x16>
  a23936:	00a0 68b4 071f      	l.li	a4,0xa068b4
  a2393c:	c31c                	sw	a5,0(a4)
  a2393e:	4501                	li	a0,0
  a23940:	8082                	ret
  a23942:	8000 1200 051f      	l.li	a0,0x80001200
  a23948:	8082                	ret

00a2394a <hal_watchdog_regs_deinit>:
  a2394a:	00a0 68b4 079f      	l.li	a5,0xa068b4
  a23950:	0007a023          	sw	zero,0(a5)
  a23954:	8082                	ret

00a23956 <hal_watchdog_v151_kick>:
  a23956:	00a077b7          	lui	a5,0xa07
  a2395a:	8b47a783          	lw	a5,-1868(a5) # a068b4 <g_watchdog_regs>
  a2395e:	5a5a 5a5a 071f      	l.li	a4,0x5a5a5a5a
  a23964:	c798                	sw	a4,8(a5)
  a23966:	8082                	ret

00a23968 <hal_watchdog_v151_get_attr>:
  a23968:	00a0 68bc 079f      	l.li	a5,0xa068bc
  a2396e:	4388                	lw	a0,0(a5)
  a23970:	8082                	ret

00a23972 <hal_register_watchdog_v151_callback>:
  a23972:	00a0 68b8 079f      	l.li	a5,0xa068b8
  a23978:	c388                	sw	a0,0(a5)
  a2397a:	8082                	ret

00a2397c <hal_watchdog_v151_deinit>:
  a2397c:	b7f9                	j	a2394a <hal_watchdog_regs_deinit>

00a2397e <hal_watchdog_v151_init>:
  a2397e:	b77d                	j	a2392c <hal_watchdog_regs_init>

00a23980 <hal_watchdog_v151_get_left_time>:
  a23980:	8038                	push	{ra,s0-s1},-16
  a23982:	00a077b7          	lui	a5,0xa07
  a23986:	8b47a683          	lw	a3,-1868(a5) # a068b4 <g_watchdog_regs>
  a2398a:	7d100493          	li	s1,2001
  a2398e:	843e                	mv	s0,a5
  a23990:	5698                	lw	a4,40(a3)
  a23992:	00176713          	ori	a4,a4,1
  a23996:	d698                	sw	a4,40(a3)
  a23998:	8b442703          	lw	a4,-1868(s0)
  a2399c:	571c                	lw	a5,40(a4)
  a2399e:	8385                	srli	a5,a5,0x1
  a239a0:	8b85                	andi	a5,a5,1
  a239a2:	cf99                	beqz	a5,a239c0 <hal_watchdog_v151_get_left_time+0x40>
  a239a4:	4b40                	lw	s0,20(a4)
  a239a6:	716000ef          	jal	ra,a240bc <watchdog_port_get_clock>
  a239aa:	3e800793          	li	a5,1000
  a239ae:	862a                	mv	a2,a0
  a239b0:	02f435b3          	mulhu	a1,s0,a5
  a239b4:	4681                	li	a3,0
  a239b6:	02f40533          	mul	a0,s0,a5
  a239ba:	c83fc0ef          	jal	ra,a2063c <__udivdi3>
  a239be:	8034                	popret	{ra,s0-s1},16
  a239c0:	14fd                	addi	s1,s1,-1
  a239c2:	c489                	beqz	s1,a239cc <hal_watchdog_v151_get_left_time+0x4c>
  a239c4:	4505                	li	a0,1
  a239c6:	a2dfe0ef          	jal	ra,a223f2 <uapi_tcxo_delay_us>
  a239ca:	b7f9                	j	a23998 <hal_watchdog_v151_get_left_time+0x18>
  a239cc:	4501                	li	a0,0
  a239ce:	bfc5                	j	a239be <hal_watchdog_v151_get_left_time+0x3e>

00a239d0 <hal_watchdog_v151_clear_interrupt>:
  a239d0:	00a077b7          	lui	a5,0xa07
  a239d4:	8b47a703          	lw	a4,-1868(a5) # a068b4 <g_watchdog_regs>
  a239d8:	475c                	lw	a5,12(a4)
  a239da:	0017e793          	ori	a5,a5,1
  a239de:	c75c                	sw	a5,12(a4)
  a239e0:	8082                	ret

00a239e2 <hal_watchdog_v151_disable>:
  a239e2:	8018                	push	{ra},-16
  a239e4:	37f5                	jal	ra,a239d0 <hal_watchdog_v151_clear_interrupt>
  a239e6:	00a077b7          	lui	a5,0xa07
  a239ea:	8b47a703          	lw	a4,-1868(a5) # a068b4 <g_watchdog_regs>
  a239ee:	4b1c                	lw	a5,16(a4)
  a239f0:	9bf9                	andi	a5,a5,-2
  a239f2:	cb1c                	sw	a5,16(a4)
  a239f4:	8014                	popret	{ra},16

00a239f6 <hal_watchdog_v151_set_attr>:
  a239f6:	8048                	push	{ra,s0-s2},-16
  a239f8:	84aa                	mv	s1,a0
  a239fa:	6c2000ef          	jal	ra,a240bc <watchdog_port_get_clock>
  a239fe:	e489                	bnez	s1,a23a08 <hal_watchdog_v151_set_attr+0x12>
  a23a00:	80000537          	lui	a0,0x80000
  a23a04:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a23a06:	8044                	popret	{ra,s0-s2},16
  a23a08:	02950433          	mul	s0,a0,s1
  a23a0c:	02945933          	divu	s2,s0,s1
  a23a10:	6ac000ef          	jal	ra,a240bc <watchdog_port_get_clock>
  a23a14:	fea916e3          	bne	s2,a0,a23a00 <hal_watchdog_v151_set_attr+0xa>
  a23a18:	fff46a3b          	bltui	s0,255,a23a00 <hal_watchdog_v151_set_attr+0xa>
  a23a1c:	00a0 68bc 079f      	l.li	a5,0xa068bc
  a23a22:	00a07937          	lui	s2,0xa07
  a23a26:	c384                	sw	s1,0(a5)
  a23a28:	8b492783          	lw	a5,-1868(s2) # a068b4 <g_watchdog_regs>
  a23a2c:	5a5a 5a5a 049f      	l.li	s1,0x5a5a5a5a
  a23a32:	f0047413          	andi	s0,s0,-256
  a23a36:	c384                	sw	s1,0(a5)
  a23a38:	376d                	jal	ra,a239e2 <hal_watchdog_v151_disable>
  a23a3a:	8b492783          	lw	a5,-1868(s2)
  a23a3e:	4b98                	lw	a4,16(a5)
  a23a40:	00476713          	ori	a4,a4,4
  a23a44:	cb98                	sw	a4,16(a5)
  a23a46:	4b98                	lw	a4,16(a5)
  a23a48:	fbf77713          	andi	a4,a4,-65
  a23a4c:	cb98                	sw	a4,16(a5)
  a23a4e:	4b98                	lw	a4,16(a5)
  a23a50:	03876713          	ori	a4,a4,56
  a23a54:	cb98                	sw	a4,16(a5)
  a23a56:	43c8                	lw	a0,4(a5)
  a23a58:	0ff57513          	andi	a0,a0,255
  a23a5c:	8c49                	or	s0,s0,a0
  a23a5e:	c3c0                	sw	s0,4(a5)
  a23a60:	c784                	sw	s1,8(a5)
  a23a62:	4501                	li	a0,0
  a23a64:	b74d                	j	a23a06 <hal_watchdog_v151_set_attr+0x10>

00a23a66 <hal_watchdog_v151_enable>:
  a23a66:	8128                	push	{ra,s0},-32
  a23a68:	c62a                	sw	a0,12(sp)
  a23a6a:	3fa5                	jal	ra,a239e2 <hal_watchdog_v151_disable>
  a23a6c:	4532                	lw	a0,12(sp)
  a23a6e:	00a07437          	lui	s0,0xa07
  a23a72:	e10d                	bnez	a0,a23a94 <hal_watchdog_v151_enable+0x2e>
  a23a74:	8b442703          	lw	a4,-1868(s0) # a068b4 <g_watchdog_regs>
  a23a78:	4b1c                	lw	a5,16(a4)
  a23a7a:	f7f7f793          	andi	a5,a5,-129
  a23a7e:	cb1c                	sw	a5,16(a4)
  a23a80:	3f81                	jal	ra,a239d0 <hal_watchdog_v151_clear_interrupt>
  a23a82:	8b442703          	lw	a4,-1868(s0)
  a23a86:	4b1c                	lw	a5,16(a4)
  a23a88:	0017e793          	ori	a5,a5,1
  a23a8c:	cb1c                	sw	a5,16(a4)
  a23a8e:	8120                	pop	{ra,s0},32
  a23a90:	ec7ff06f          	j	a23956 <hal_watchdog_v151_kick>
  a23a94:	01f51b3b          	bnei	a0,1,a23a80 <hal_watchdog_v151_enable+0x1a>
  a23a98:	8b442703          	lw	a4,-1868(s0)
  a23a9c:	4b1c                	lw	a5,16(a4)
  a23a9e:	0807e793          	ori	a5,a5,128
  a23aa2:	bff1                	j	a23a7e <hal_watchdog_v151_enable+0x18>

00a23aa4 <hal_watchdog_v151_funcs_get>:
  a23aa4:	00a0 2448 051f      	l.li	a0,0xa02448
  a23aaa:	8082                	ret

00a23aac <hal_sfc_regs_init>:
  a23aac:	8058                	push	{ra,s0-s3},-32
  a23aae:	2d2d                	jal	ra,a240e8 <sfc_port_get_sfc_global_conf_base_addr>
  a23ab0:	00a0 68d0 099f      	l.li	s3,0xa068d0
  a23ab6:	00a9a023          	sw	a0,0(s3)
  a23aba:	00a0 68c4 091f      	l.li	s2,0xa068c4
  a23ac0:	2d05                	jal	ra,a240f0 <sfc_port_get_sfc_bus_regs_base_addr>
  a23ac2:	00a92023          	sw	a0,0(s2)
  a23ac6:	00a0 68c0 049f      	l.li	s1,0xa068c0
  a23acc:	2535                	jal	ra,a240f8 <sfc_port_get_sfc_bus_dma_regs_base_addr>
  a23ace:	c088                	sw	a0,0(s1)
  a23ad0:	00a0 68cc 041f      	l.li	s0,0xa068cc
  a23ad6:	252d                	jal	ra,a24100 <sfc_port_get_sfc_cmd_regs_base_addr>
  a23ad8:	c008                	sw	a0,0(s0)
  a23ada:	253d                	jal	ra,a24108 <sfc_port_get_sfc_cmd_databuf_base_addr>
  a23adc:	00a0 68c8 079f      	l.li	a5,0xa068c8
  a23ae2:	c388                	sw	a0,0(a5)
  a23ae4:	0009a783          	lw	a5,0(s3)
  a23ae8:	cb99                	beqz	a5,a23afe <hal_sfc_regs_init+0x52>
  a23aea:	00092783          	lw	a5,0(s2)
  a23aee:	cb81                	beqz	a5,a23afe <hal_sfc_regs_init+0x52>
  a23af0:	409c                	lw	a5,0(s1)
  a23af2:	c791                	beqz	a5,a23afe <hal_sfc_regs_init+0x52>
  a23af4:	401c                	lw	a5,0(s0)
  a23af6:	c781                	beqz	a5,a23afe <hal_sfc_regs_init+0x52>
  a23af8:	c119                	beqz	a0,a23afe <hal_sfc_regs_init+0x52>
  a23afa:	4501                	li	a0,0
  a23afc:	8054                	popret	{ra,s0-s3},32
  a23afe:	8000 1343 051f      	l.li	a0,0x80001343
  a23b04:	bfe5                	j	a23afc <hal_sfc_regs_init+0x50>

00a23b06 <hal_sfc_regs_set_cmd_addr>:
  a23b06:	00a077b7          	lui	a5,0xa07
  a23b0a:	8cc7a683          	lw	a3,-1844(a5) # a068cc <g_sfc_cmd_regs>
  a23b0e:	3fff ffff 071f      	l.li	a4,0x3fffffff
  a23b14:	8d79                	and	a0,a0,a4
  a23b16:	46dc                	lw	a5,12(a3)
  a23b18:	c0000737          	lui	a4,0xc0000
  a23b1c:	8ff9                	and	a5,a5,a4
  a23b1e:	8fc9                	or	a5,a5,a0
  a23b20:	c6dc                	sw	a5,12(a3)
  a23b22:	8082                	ret

00a23b24 <hal_sfc_regs_wait_ready.constprop.3>:
  a23b24:	8158                	push	{ra,s0-s3},-48
  a23b26:	2bd5                	jal	ra,a2411a <sfc_port_get_delay_times>
  a23b28:	84aa                	mv	s1,a0
  a23b2a:	23dd                	jal	ra,a24110 <sfc_port_get_delay_once_time>
  a23b2c:	4792                	lw	a5,4(sp)
  a23b2e:	ffff c7ff 071f      	l.li	a4,0xffffc7ff
  a23b34:	892a                	mv	s2,a0
  a23b36:	8077f793          	andi	a5,a5,-2041
  a23b3a:	0287e793          	ori	a5,a5,40
  a23b3e:	8ff9                	and	a5,a5,a4
  a23b40:	c23e                	sw	a5,4(sp)
  a23b42:	4785                	li	a5,1
  a23b44:	c43e                	sw	a5,8(sp)
  a23b46:	c602                	sw	zero,12(sp)
  a23b48:	4401                	li	s0,0
  a23b4a:	00a079b7          	lui	s3,0xa07
  a23b4e:	0048                	addi	a0,sp,4
  a23b50:	26ad                	jal	ra,a23eba <hal_sfc_regs_set_opt>
  a23b52:	4601                	li	a2,0
  a23b54:	4585                	li	a1,1
  a23b56:	4505                	li	a0,1
  a23b58:	2e69                	jal	ra,a23ef2 <hal_sfc_regs_set_opt_attr>
  a23b5a:	26d9                	jal	ra,a23f20 <hal_sfc_regs_wait_config>
  a23b5c:	8c89a783          	lw	a5,-1848(s3) # a068c8 <g_sfc_cmd_databuf>
  a23b60:	439c                	lw	a5,0(a5)
  a23b62:	8b85                	andi	a5,a5,1
  a23b64:	cf91                	beqz	a5,a23b80 <hal_sfc_regs_wait_ready.constprop.3+0x5c>
  a23b66:	854a                	mv	a0,s2
  a23b68:	88bfe0ef          	jal	ra,a223f2 <uapi_tcxo_delay_us>
  a23b6c:	00140793          	addi	a5,s0,1
  a23b70:	00946663          	bltu	s0,s1,a23b7c <hal_sfc_regs_wait_ready.constprop.3+0x58>
  a23b74:	8000 1344 051f      	l.li	a0,0x80001344
  a23b7a:	8154                	popret	{ra,s0-s3},48
  a23b7c:	843e                	mv	s0,a5
  a23b7e:	bfc1                	j	a23b4e <hal_sfc_regs_wait_ready.constprop.3+0x2a>
  a23b80:	4501                	li	a0,0
  a23b82:	bfe5                	j	a23b7a <hal_sfc_regs_wait_ready.constprop.3+0x56>

00a23b84 <hal_sfc_execute_type_cmd>:
  a23b84:	8148                	push	{ra,s0-s2},-32
  a23b86:	219c                	lbu	a5,0(a1)
  a23b88:	842a                	mv	s0,a0
  a23b8a:	892e                	mv	s2,a1
  a23b8c:	078e                	slli	a5,a5,0x3
  a23b8e:	0017e793          	ori	a5,a5,1
  a23b92:	c23e                	sw	a5,4(sp)
  a23b94:	fff50793          	addi	a5,a0,-1
  a23b98:	c43e                	sw	a5,8(sp)
  a23b9a:	c602                	sw	zero,12(sp)
  a23b9c:	3761                	jal	ra,a23b24 <hal_sfc_regs_wait_ready.constprop.3>
  a23b9e:	84aa                	mv	s1,a0
  a23ba0:	e50d                	bnez	a0,a23bca <hal_sfc_execute_type_cmd+0x46>
  a23ba2:	0048                	addi	a0,sp,4
  a23ba4:	2e19                	jal	ra,a23eba <hal_sfc_regs_set_opt>
  a23ba6:	4785                	li	a5,1
  a23ba8:	c002                	sw	zero,0(sp)
  a23baa:	0287e263          	bltu	a5,s0,a23bce <hal_sfc_execute_type_cmd+0x4a>
  a23bae:	00a077b7          	lui	a5,0xa07
  a23bb2:	8c87a783          	lw	a5,-1848(a5) # a068c8 <g_sfc_cmd_databuf>
  a23bb6:	4702                	lw	a4,0(sp)
  a23bb8:	00243593          	sltiu	a1,s0,2
  a23bbc:	4601                	li	a2,0
  a23bbe:	c398                	sw	a4,0(a5)
  a23bc0:	0015c593          	xori	a1,a1,1
  a23bc4:	4501                	li	a0,0
  a23bc6:	2635                	jal	ra,a23ef2 <hal_sfc_regs_set_opt_attr>
  a23bc8:	2ea1                	jal	ra,a23f20 <hal_sfc_regs_wait_config>
  a23bca:	8526                	mv	a0,s1
  a23bcc:	8144                	popret	{ra,s0-s2},32
  a23bce:	00f906b3          	add	a3,s2,a5
  a23bd2:	2294                	lbu	a3,0(a3)
  a23bd4:	00f10733          	add	a4,sp,a5
  a23bd8:	0785                	addi	a5,a5,1
  a23bda:	fed70fa3          	sb	a3,-1(a4) # bfffffff <__data_load__+0xbf5d85bb>
  a23bde:	b7f1                	j	a23baa <hal_sfc_execute_type_cmd+0x26>

00a23be0 <hal_sfc_write_enable>:
  a23be0:	8118                	push	{ra},-32
  a23be2:	f43ff0ef          	jal	ra,a23b24 <hal_sfc_regs_wait_ready.constprop.3>
  a23be6:	4799                	li	a5,6
  a23be8:	006c                	addi	a1,sp,12
  a23bea:	4505                	li	a0,1
  a23bec:	00f10623          	sb	a5,12(sp)
  a23bf0:	3f51                	jal	ra,a23b84 <hal_sfc_execute_type_cmd>
  a23bf2:	e119                	bnez	a0,a23bf8 <hal_sfc_write_enable+0x18>
  a23bf4:	f31ff0ef          	jal	ra,a23b24 <hal_sfc_regs_wait_ready.constprop.3>
  a23bf8:	8114                	popret	{ra},32

00a23bfa <hal_sfc_reg_write_once>:
  a23bfa:	8648                	push	{ra,s0-s2},-112
  a23bfc:	c636                	sw	a3,12(sp)
  a23bfe:	892a                	mv	s2,a0
  a23c00:	84ae                	mv	s1,a1
  a23c02:	8432                	mv	s0,a2
  a23c04:	3ff1                	jal	ra,a23be0 <hal_sfc_write_enable>
  a23c06:	87aa                	mv	a5,a0
  a23c08:	46b2                	lw	a3,12(sp)
  a23c0a:	e939                	bnez	a0,a23c60 <hal_sfc_reg_write_once+0x66>
  a23c0c:	ca36                	sw	a3,20(sp)
  a23c0e:	0848                	addi	a0,sp,20
  a23c10:	82b9                	srli	a3,a3,0xe
  a23c12:	ce36                	sw	a3,28(sp)
  a23c14:	cc22                	sw	s0,24(sp)
  a23c16:	2455                	jal	ra,a23eba <hal_sfc_regs_set_opt>
  a23c18:	854a                	mv	a0,s2
  a23c1a:	eedff0ef          	jal	ra,a23b06 <hal_sfc_regs_set_cmd_addr>
  a23c1e:	86a2                	mv	a3,s0
  a23c20:	8626                	mv	a2,s1
  a23c22:	04000593          	li	a1,64
  a23c26:	1008                	addi	a0,sp,32
  a23c28:	15b010ef          	jal	ra,a25582 <memcpy_s>
  a23c2c:	57fd                	li	a5,-1
  a23c2e:	e90d                	bnez	a0,a23c60 <hal_sfc_reg_write_once+0x66>
  a23c30:	00347613          	andi	a2,s0,3
  a23c34:	00c03633          	snez	a2,a2
  a23c38:	4486061b          	addshf	a2,a2,s0,srl,2
  a23c3c:	9e21                	uxth	a2
  a23c3e:	101c                	addi	a5,sp,32
  a23c40:	4701                	li	a4,0
  a23c42:	00a075b7          	lui	a1,0xa07
  a23c46:	01071693          	slli	a3,a4,0x10
  a23c4a:	82c1                	srli	a3,a3,0x10
  a23c4c:	00c6ec63          	bltu	a3,a2,a23c64 <hal_sfc_reg_write_once+0x6a>
  a23c50:	4605                	li	a2,1
  a23c52:	4585                	li	a1,1
  a23c54:	4501                	li	a0,0
  a23c56:	2c71                	jal	ra,a23ef2 <hal_sfc_regs_set_opt_attr>
  a23c58:	24e1                	jal	ra,a23f20 <hal_sfc_regs_wait_config>
  a23c5a:	ecbff0ef          	jal	ra,a23b24 <hal_sfc_regs_wait_ready.constprop.3>
  a23c5e:	87aa                	mv	a5,a0
  a23c60:	853e                	mv	a0,a5
  a23c62:	8644                	popret	{ra,s0-s2},112
  a23c64:	8c85a683          	lw	a3,-1848(a1) # a068c8 <g_sfc_cmd_databuf>
  a23c68:	4388                	lw	a0,0(a5)
  a23c6a:	0791                	addi	a5,a5,4
  a23c6c:	04e6869b          	addshf	a3,a3,a4,sll,2
  a23c70:	c288                	sw	a0,0(a3)
  a23c72:	0705                	addi	a4,a4,1
  a23c74:	bfc9                	j	a23c46 <hal_sfc_reg_write_once+0x4c>

00a23c76 <hal_sfc_get_flash_id>:
  a23c76:	8128                	push	{ra,s0},-32
  a23c78:	842a                	mv	s0,a0
  a23c7a:	e33ff0ef          	jal	ra,a23aac <hal_sfc_regs_init>
  a23c7e:	ea7ff0ef          	jal	ra,a23b24 <hal_sfc_regs_wait_ready.constprop.3>
  a23c82:	e91d                	bnez	a0,a23cb8 <hal_sfc_get_flash_id+0x42>
  a23c84:	4631                	li	a2,12
  a23c86:	00a2 5f4c 059f      	l.li	a1,0xa25f4c
  a23c8c:	0048                	addi	a0,sp,4
  a23c8e:	e65fc0ef          	jal	ra,a20af2 <memcpy>
  a23c92:	0048                	addi	a0,sp,4
  a23c94:	241d                	jal	ra,a23eba <hal_sfc_regs_set_opt>
  a23c96:	4601                	li	a2,0
  a23c98:	4585                	li	a1,1
  a23c9a:	4505                	li	a0,1
  a23c9c:	2c99                	jal	ra,a23ef2 <hal_sfc_regs_set_opt_attr>
  a23c9e:	2449                	jal	ra,a23f20 <hal_sfc_regs_wait_config>
  a23ca0:	00a077b7          	lui	a5,0xa07
  a23ca4:	8c87a783          	lw	a5,-1848(a5) # a068c8 <g_sfc_cmd_databuf>
  a23ca8:	00ff ffff 071f      	l.li	a4,0xffffff
  a23cae:	439c                	lw	a5,0(a5)
  a23cb0:	8ff9                	and	a5,a5,a4
  a23cb2:	c01c                	sw	a5,0(s0)
  a23cb4:	e71ff0ef          	jal	ra,a23b24 <hal_sfc_regs_wait_ready.constprop.3>
  a23cb8:	8124                	popret	{ra,s0},32

00a23cba <hal_sfc_init>:
  a23cba:	67c1                	lui	a5,0x10
  a23cbc:	0cf66c63          	bltu	a2,a5,a23d94 <hal_sfc_init+0xda>
  a23cc0:	8198                	push	{ra,s0-s7},-64
  a23cc2:	4940                	lw	s0,20(a0)
  a23cc4:	84b2                	mv	s1,a2
  a23cc6:	89ae                	mv	s3,a1
  a23cc8:	892a                	mv	s2,a0
  a23cca:	4a05                	li	s4,1
  a23ccc:	00a07ab7          	lui	s5,0xa07
  a23cd0:	e025                	bnez	s0,a23d30 <hal_sfc_init+0x76>
  a23cd2:	00a077b7          	lui	a5,0xa07
  a23cd6:	8c47a683          	lw	a3,-1852(a5) # a068c4 <g_sfc_bus_regs>
  a23cda:	0109d993          	srli	s3,s3,0x10
  a23cde:	00f4d613          	srli	a2,s1,0xf
  a23ce2:	4e9c                	lw	a5,24(a3)
  a23ce4:	4701                	li	a4,0
  a23ce6:	01079593          	slli	a1,a5,0x10
  a23cea:	81c1                	srli	a1,a1,0x10
  a23cec:	2135a59b          	orshf	a1,a1,s3,sll,16
  a23cf0:	ce8c                	sw	a1,24(a3)
  a23cf2:	00167793          	andi	a5,a2,1
  a23cf6:	cfc1                	beqz	a5,a23d8e <hal_sfc_init+0xd4>
  a23cf8:	4a9c                	lw	a5,16(a3)
  a23cfa:	ffff f0ff 061f      	l.li	a2,0xfffff0ff
  a23d00:	8b3d                	andi	a4,a4,15
  a23d02:	8ff1                	and	a5,a5,a2
  a23d04:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a23d08:	ca9c                	sw	a5,16(a3)
  a23d0a:	00492503          	lw	a0,4(s2)
  a23d0e:	240d                	jal	ra,a23f30 <hal_sfc_regs_set_bus_read>
  a23d10:	00c92503          	lw	a0,12(s2)
  a23d14:	7f857793          	andi	a5,a0,2040
  a23d18:	c391                	beqz	a5,a23d1c <hal_sfc_init+0x62>
  a23d1a:	2c89                	jal	ra,a23f6c <hal_sfc_regs_set_bus_write>
  a23d1c:	00a077b7          	lui	a5,0xa07
  a23d20:	8d07a783          	lw	a5,-1840(a5) # a068d0 <g_sfc_global_conf_regs>
  a23d24:	4705                	li	a4,1
  a23d26:	cb98                	sw	a4,16(a5)
  a23d28:	dfdff0ef          	jal	ra,a23b24 <hal_sfc_regs_wait_ready.constprop.3>
  a23d2c:	4501                	li	a0,0
  a23d2e:	a00d                	j	a23d50 <hal_sfc_init+0x96>
  a23d30:	201c                	lbu	a5,0(s0)
  a23d32:	03478063          	beq	a5,s4,a23d52 <hal_sfc_init+0x98>
  a23d36:	c799                	beqz	a5,a23d44 <hal_sfc_init+0x8a>
  a23d38:	02e786bb          	beqi	a5,2,a23cd2 <hal_sfc_init+0x18>
  a23d3c:	8000 1345 051f      	l.li	a0,0x80001345
  a23d42:	a039                	j	a23d50 <hal_sfc_init+0x96>
  a23d44:	3008                	lbu	a0,1(s0)
  a23d46:	00240593          	addi	a1,s0,2
  a23d4a:	e3bff0ef          	jal	ra,a23b84 <hal_sfc_execute_type_cmd>
  a23d4e:	cd15                	beqz	a0,a23d8a <hal_sfc_init+0xd0>
  a23d50:	8194                	popret	{ra,s0-s7},64
  a23d52:	2038                	lbu	a4,2(s0)
  a23d54:	00344b83          	lbu	s7,3(s0)
  a23d58:	00444b03          	lbu	s6,4(s0)
  a23d5c:	070e                	slli	a4,a4,0x3
  a23d5e:	00176713          	ori	a4,a4,1
  a23d62:	c23a                	sw	a4,4(sp)
  a23d64:	c452                	sw	s4,8(sp)
  a23d66:	c602                	sw	zero,12(sp)
  a23d68:	dbdff0ef          	jal	ra,a23b24 <hal_sfc_regs_wait_ready.constprop.3>
  a23d6c:	0048                	addi	a0,sp,4
  a23d6e:	22b1                	jal	ra,a23eba <hal_sfc_regs_set_opt>
  a23d70:	4601                	li	a2,0
  a23d72:	4585                	li	a1,1
  a23d74:	4505                	li	a0,1
  a23d76:	2ab5                	jal	ra,a23ef2 <hal_sfc_regs_set_opt_attr>
  a23d78:	2265                	jal	ra,a23f20 <hal_sfc_regs_wait_config>
  a23d7a:	8c8aa783          	lw	a5,-1848(s5) # a068c8 <g_sfc_cmd_databuf>
  a23d7e:	439c                	lw	a5,0(a5)
  a23d80:	0177d7b3          	srl	a5,a5,s7
  a23d84:	8b85                	andi	a5,a5,1
  a23d86:	fb679be3          	bne	a5,s6,a23d3c <hal_sfc_init+0x82>
  a23d8a:	0419                	addi	s0,s0,6
  a23d8c:	b791                	j	a23cd0 <hal_sfc_init+0x16>
  a23d8e:	8205                	srli	a2,a2,0x1
  a23d90:	0705                	addi	a4,a4,1
  a23d92:	b785                	j	a23cf2 <hal_sfc_init+0x38>
  a23d94:	80000537          	lui	a0,0x80000
  a23d98:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a23d9a:	8082                	ret

00a23d9c <hal_sfc_reg_read>:
  a23d9c:	8588                	push	{ra,s0-s6},-112
  a23d9e:	89aa                	mv	s3,a0
  a23da0:	8a2e                	mv	s4,a1
  a23da2:	84b2                	mv	s1,a2
  a23da4:	04000413          	li	s0,64
  a23da8:	00e6da93          	srli	s5,a3,0xe
  a23dac:	8936                	mv	s2,a3
  a23dae:	00a07b37          	lui	s6,0xa07
  a23db2:	e099                	bnez	s1,a23db8 <hal_sfc_reg_read+0x1c>
  a23db4:	4501                	li	a0,0
  a23db6:	a8a1                	j	a23e0e <hal_sfc_reg_read+0x72>
  a23db8:	d6dff0ef          	jal	ra,a23b24 <hal_sfc_regs_wait_ready.constprop.3>
  a23dbc:	e929                	bnez	a0,a23e0e <hal_sfc_reg_read+0x72>
  a23dbe:	0084f363          	bgeu	s1,s0,a23dc4 <hal_sfc_reg_read+0x28>
  a23dc2:	8426                	mv	s0,s1
  a23dc4:	0048                	addi	a0,sp,4
  a23dc6:	c24a                	sw	s2,4(sp)
  a23dc8:	c422                	sw	s0,8(sp)
  a23dca:	c656                	sw	s5,12(sp)
  a23dcc:	20fd                	jal	ra,a23eba <hal_sfc_regs_set_opt>
  a23dce:	854e                	mv	a0,s3
  a23dd0:	d37ff0ef          	jal	ra,a23b06 <hal_sfc_regs_set_cmd_addr>
  a23dd4:	4605                	li	a2,1
  a23dd6:	4505                	li	a0,1
  a23dd8:	4585                	li	a1,1
  a23dda:	2a21                	jal	ra,a23ef2 <hal_sfc_regs_set_opt_attr>
  a23ddc:	2291                	jal	ra,a23f20 <hal_sfc_regs_wait_config>
  a23dde:	00347793          	andi	a5,s0,3
  a23de2:	00f037b3          	snez	a5,a5
  a23de6:	8c8b2503          	lw	a0,-1848(s6) # a068c8 <g_sfc_cmd_databuf>
  a23dea:	4487879b          	addshf	a5,a5,s0,srl,2
  a23dee:	0814                	addi	a3,sp,16
  a23df0:	9fa1                	uxth	a5
  a23df2:	4701                	li	a4,0
  a23df4:	8636                	mv	a2,a3
  a23df6:	01071593          	slli	a1,a4,0x10
  a23dfa:	81c1                	srli	a1,a1,0x10
  a23dfc:	00f5ea63          	bltu	a1,a5,a23e10 <hal_sfc_reg_read+0x74>
  a23e00:	86a2                	mv	a3,s0
  a23e02:	85a2                	mv	a1,s0
  a23e04:	8552                	mv	a0,s4
  a23e06:	77c010ef          	jal	ra,a25582 <memcpy_s>
  a23e0a:	c919                	beqz	a0,a23e20 <hal_sfc_reg_read+0x84>
  a23e0c:	557d                	li	a0,-1
  a23e0e:	8584                	popret	{ra,s0-s6},112
  a23e10:	04e5059b          	addshf	a1,a0,a4,sll,2
  a23e14:	418c                	lw	a1,0(a1)
  a23e16:	0705                	addi	a4,a4,1
  a23e18:	0691                	addi	a3,a3,4
  a23e1a:	feb6ae23          	sw	a1,-4(a3)
  a23e1e:	bfe1                	j	a23df6 <hal_sfc_reg_read+0x5a>
  a23e20:	99a2                	add	s3,s3,s0
  a23e22:	9a22                	add	s4,s4,s0
  a23e24:	8c81                	sub	s1,s1,s0
  a23e26:	b771                	j	a23db2 <hal_sfc_reg_read+0x16>

00a23e28 <hal_sfc_reg_write>:
  a23e28:	8088                	push	{ra,s0-s6},-32
  a23e2a:	03f57793          	andi	a5,a0,63
  a23e2e:	04000413          	li	s0,64
  a23e32:	8c1d                	sub	s0,s0,a5
  a23e34:	89aa                	mv	s3,a0
  a23e36:	892e                	mv	s2,a1
  a23e38:	84b2                	mv	s1,a2
  a23e3a:	8ab6                	mv	s5,a3
  a23e3c:	00867363          	bgeu	a2,s0,a23e42 <hal_sfc_reg_write+0x1a>
  a23e40:	8432                	mv	s0,a2
  a23e42:	86d6                	mv	a3,s5
  a23e44:	8622                	mv	a2,s0
  a23e46:	85ca                	mv	a1,s2
  a23e48:	854e                	mv	a0,s3
  a23e4a:	db1ff0ef          	jal	ra,a23bfa <hal_sfc_reg_write_once>
  a23e4e:	8a2a                	mv	s4,a0
  a23e50:	e905                	bnez	a0,a23e80 <hal_sfc_reg_write+0x58>
  a23e52:	8c81                	sub	s1,s1,s0
  a23e54:	c495                	beqz	s1,a23e80 <hal_sfc_reg_write+0x58>
  a23e56:	9922                	add	s2,s2,s0
  a23e58:	04000b13          	li	s6,64
  a23e5c:	944e                	add	s0,s0,s3
  a23e5e:	89a6                	mv	s3,s1
  a23e60:	009b7463          	bgeu	s6,s1,a23e68 <hal_sfc_reg_write+0x40>
  a23e64:	04000993          	li	s3,64
  a23e68:	86d6                	mv	a3,s5
  a23e6a:	864e                	mv	a2,s3
  a23e6c:	85ca                	mv	a1,s2
  a23e6e:	8522                	mv	a0,s0
  a23e70:	d8bff0ef          	jal	ra,a23bfa <hal_sfc_reg_write_once>
  a23e74:	e901                	bnez	a0,a23e84 <hal_sfc_reg_write+0x5c>
  a23e76:	413484b3          	sub	s1,s1,s3
  a23e7a:	994e                	add	s2,s2,s3
  a23e7c:	944e                	add	s0,s0,s3
  a23e7e:	f0e5                	bnez	s1,a23e5e <hal_sfc_reg_write+0x36>
  a23e80:	8552                	mv	a0,s4
  a23e82:	8084                	popret	{ra,s0-s6},32
  a23e84:	8a2a                	mv	s4,a0
  a23e86:	bfed                	j	a23e80 <hal_sfc_reg_write+0x58>

00a23e88 <hal_sfc_reg_erase>:
  a23e88:	8238                	push	{ra,s0-s1},-48
  a23e8a:	c62e                	sw	a1,12(sp)
  a23e8c:	84aa                	mv	s1,a0
  a23e8e:	8432                	mv	s0,a2
  a23e90:	d51ff0ef          	jal	ra,a23be0 <hal_sfc_write_enable>
  a23e94:	45b2                	lw	a1,12(sp)
  a23e96:	e10d                	bnez	a0,a23eb8 <hal_sfc_reg_erase+0x30>
  a23e98:	0848                	addi	a0,sp,20
  a23e9a:	ca2e                	sw	a1,20(sp)
  a23e9c:	cc02                	sw	zero,24(sp)
  a23e9e:	ce02                	sw	zero,28(sp)
  a23ea0:	2829                	jal	ra,a23eba <hal_sfc_regs_set_opt>
  a23ea2:	8526                	mv	a0,s1
  a23ea4:	c63ff0ef          	jal	ra,a23b06 <hal_sfc_regs_set_cmd_addr>
  a23ea8:	00144613          	xori	a2,s0,1
  a23eac:	4581                	li	a1,0
  a23eae:	4501                	li	a0,0
  a23eb0:	2089                	jal	ra,a23ef2 <hal_sfc_regs_set_opt_attr>
  a23eb2:	20bd                	jal	ra,a23f20 <hal_sfc_regs_wait_config>
  a23eb4:	c71ff0ef          	jal	ra,a23b24 <hal_sfc_regs_wait_ready.constprop.3>
  a23eb8:	8234                	popret	{ra,s0-s1},48

00a23eba <hal_sfc_regs_set_opt>:
  a23eba:	00a077b7          	lui	a5,0xa07
  a23ebe:	8cc7a603          	lw	a2,-1844(a5) # a068cc <g_sfc_cmd_regs>
  a23ec2:	411c                	lw	a5,0(a0)
  a23ec4:	450c                	lw	a1,8(a0)
  a23ec6:	4618                	lw	a4,8(a2)
  a23ec8:	0037d693          	srli	a3,a5,0x3
  a23ecc:	9e81                	uxtb	a3
  a23ece:	f0077713          	andi	a4,a4,-256
  a23ed2:	8f55                	or	a4,a4,a3
  a23ed4:	4154                	lw	a3,4(a0)
  a23ed6:	83ad                	srli	a5,a5,0xb
  a23ed8:	8b9d                	andi	a5,a5,7
  a23eda:	899d                	andi	a1,a1,7
  a23edc:	07c6                	slli	a5,a5,0x11
  a23ede:	16fd                	addi	a3,a3,-1
  a23ee0:	03f6f693          	andi	a3,a3,63
  a23ee4:	08b7a79b          	orshf	a5,a5,a1,sll,4
  a23ee8:	12d7a79b          	orshf	a5,a5,a3,sll,9
  a23eec:	c618                	sw	a4,8(a2)
  a23eee:	c21c                	sw	a5,0(a2)
  a23ef0:	8082                	ret

00a23ef2 <hal_sfc_regs_set_opt_attr>:
  a23ef2:	00a077b7          	lui	a5,0xa07
  a23ef6:	8cc7a703          	lw	a4,-1844(a5) # a068cc <g_sfc_cmd_regs>
  a23efa:	8905                	andi	a0,a0,1
  a23efc:	8985                	andi	a1,a1,1
  a23efe:	431c                	lw	a5,0(a4)
  a23f00:	8a05                	andi	a2,a2,1
  a23f02:	eff7f793          	andi	a5,a5,-257
  a23f06:	10a7a79b          	orshf	a5,a5,a0,sll,8
  a23f0a:	f7f7f793          	andi	a5,a5,-129
  a23f0e:	0eb7a79b          	orshf	a5,a5,a1,sll,7
  a23f12:	9bdd                	andi	a5,a5,-9
  a23f14:	06c7a79b          	orshf	a5,a5,a2,sll,3
  a23f18:	0037e793          	ori	a5,a5,3
  a23f1c:	c31c                	sw	a5,0(a4)
  a23f1e:	8082                	ret

00a23f20 <hal_sfc_regs_wait_config>:
  a23f20:	00a077b7          	lui	a5,0xa07
  a23f24:	8cc7a703          	lw	a4,-1844(a5) # a068cc <g_sfc_cmd_regs>
  a23f28:	431c                	lw	a5,0(a4)
  a23f2a:	8b85                	andi	a5,a5,1
  a23f2c:	fff5                	bnez	a5,a23f28 <hal_sfc_regs_wait_config+0x8>
  a23f2e:	8082                	ret

00a23f30 <hal_sfc_regs_set_bus_read>:
  a23f30:	00a077b7          	lui	a5,0xa07
  a23f34:	8c47a603          	lw	a2,-1852(a5) # a068c4 <g_sfc_bus_regs>
  a23f38:	80000737          	lui	a4,0x80000
  a23f3c:	ffff 00ff 069f      	l.li	a3,0xffff00ff
  a23f42:	421c                	lw	a5,0(a2)
  a23f44:	8fd9                	or	a5,a5,a4
  a23f46:	00355713          	srli	a4,a0,0x3
  a23f4a:	9f01                	uxtb	a4
  a23f4c:	8ff5                	and	a5,a5,a3
  a23f4e:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a23f52:	00b55693          	srli	a3,a0,0xb
  a23f56:	8a9d                	andi	a3,a3,7
  a23f58:	812d                	srli	a0,a0,0xb
  a23f5a:	fc07f793          	andi	a5,a5,-64
  a23f5e:	03857713          	andi	a4,a0,56
  a23f62:	00d7e533          	or	a0,a5,a3
  a23f66:	8d59                	or	a0,a0,a4
  a23f68:	c208                	sw	a0,0(a2)
  a23f6a:	8082                	ret

00a23f6c <hal_sfc_regs_set_bus_write>:
  a23f6c:	00a077b7          	lui	a5,0xa07
  a23f70:	8c47a683          	lw	a3,-1852(a5) # a068c4 <g_sfc_bus_regs>
  a23f74:	00355713          	srli	a4,a0,0x3
  a23f78:	c03f ffff 061f      	l.li	a2,0xc03fffff
  a23f7e:	429c                	lw	a5,0(a3)
  a23f80:	9f01                	uxtb	a4
  a23f82:	812d                	srli	a0,a0,0xb
  a23f84:	8ff1                	and	a5,a5,a2
  a23f86:	2ce7a79b          	orshf	a5,a5,a4,sll,22
  a23f8a:	fff8 ffff 071f      	l.li	a4,0xfff8ffff
  a23f90:	8ff9                	and	a5,a5,a4
  a23f92:	891d                	andi	a0,a0,7
  a23f94:	20a7a79b          	orshf	a5,a5,a0,sll,16
  a23f98:	40000737          	lui	a4,0x40000
  a23f9c:	8fd9                	or	a5,a5,a4
  a23f9e:	c29c                	sw	a5,0(a3)
  a23fa0:	8082                	ret

00a23fa2 <print_str_inner>:
  a23fa2:	8038                	push	{ra,s0-s1},-16
  a23fa4:	00a07437          	lui	s0,0xa07
  a23fa8:	872e                	mv	a4,a1
  a23faa:	86aa                	mv	a3,a0
  a23fac:	07f00613          	li	a2,127
  a23fb0:	08000593          	li	a1,128
  a23fb4:	8d840513          	addi	a0,s0,-1832 # a068d8 <str_buf.2993>
  a23fb8:	745010ef          	jal	ra,a25efc <vsnprintf_s>
  a23fbc:	862a                	mv	a2,a0
  a23fbe:	8d840793          	addi	a5,s0,-1832
  a23fc2:	ff05133b          	bnei	a0,-1,a23fce <print_str_inner+0x2c>
  a23fc6:	8d840493          	addi	s1,s0,-1832
  a23fca:	2098                	lbu	a4,0(s1)
  a23fcc:	cf11                	beqz	a4,a23fe8 <print_str_inner+0x46>
  a23fce:	97b2                	add	a5,a5,a2
  a23fd0:	00078023          	sb	zero,0(a5)
  a23fd4:	00a0 68d4 079f      	l.li	a5,0xa068d4
  a23fda:	2388                	lbu	a0,0(a5)
  a23fdc:	4681                	li	a3,0
  a23fde:	8d840593          	addi	a1,s0,-1832
  a23fe2:	8030                	pop	{ra,s0-s1},16
  a23fe4:	855fe06f          	j	a22838 <uapi_uart_write>
  a23fe8:	8034                	popret	{ra,s0-s1},16

00a23fea <uart_port_register_hal_funcs>:
  a23fea:	8028                	push	{ra,s0},-16
  a23fec:	842a                	mv	s0,a0
  a23fee:	909ff0ef          	jal	ra,a238f6 <hal_uart_v151_funcs_get>
  a23ff2:	85aa                	mv	a1,a0
  a23ff4:	8522                	mv	a0,s0
  a23ff6:	8020                	pop	{ra,s0},16
  a23ff8:	c4eff06f          	j	a23446 <hal_uart_register_funcs>

00a23ffc <uart_port_set_clock_value>:
  a23ffc:	00a0 246c 079f      	l.li	a5,0xa0246c
  a24002:	c38c                	sw	a1,0(a5)
  a24004:	8082                	ret

00a24006 <uart_port_get_clock_value>:
  a24006:	00a0 246c 079f      	l.li	a5,0xa0246c
  a2400c:	4388                	lw	a0,0(a5)
  a2400e:	8082                	ret

00a24010 <uart_port_config_pinmux>:
  a24010:	020513bb          	bnei	a0,2,a2401e <uart_port_config_pinmux+0xe>
  a24014:	4400d7b7          	lui	a5,0x4400d
  a24018:	4705                	li	a4,1
  a2401a:	db98                	sw	a4,48(a5)
  a2401c:	dbd8                	sw	a4,52(a5)
  a2401e:	8082                	ret

00a24020 <uart_port_register_irq>:
  a24020:	8082                	ret

00a24022 <uart_port_unregister_irq>:
  a24022:	8082                	ret

00a24024 <print_str>:
  a24024:	7139                	addi	sp,sp,-64
  a24026:	ce06                	sw	ra,28(sp)
  a24028:	cc22                	sw	s0,24(sp)
  a2402a:	d22e                	sw	a1,36(sp)
  a2402c:	d432                	sw	a2,40(sp)
  a2402e:	d636                	sw	a3,44(sp)
  a24030:	d83a                	sw	a4,48(sp)
  a24032:	da3e                	sw	a5,52(sp)
  a24034:	dc42                	sw	a6,56(sp)
  a24036:	de46                	sw	a7,60(sp)
  a24038:	c911                	beqz	a0,a2404c <print_str+0x28>
  a2403a:	842a                	mv	s0,a0
  a2403c:	d71fc0ef          	jal	ra,a20dac <strlen>
  a24040:	c511                	beqz	a0,a2404c <print_str+0x28>
  a24042:	104c                	addi	a1,sp,36
  a24044:	8522                	mv	a0,s0
  a24046:	c62e                	sw	a1,12(sp)
  a24048:	f5bff0ef          	jal	ra,a23fa2 <print_str_inner>
  a2404c:	40f2                	lw	ra,28(sp)
  a2404e:	4462                	lw	s0,24(sp)
  a24050:	6121                	addi	sp,sp,64
  a24052:	8082                	ret

00a24054 <uart_porting_lock>:
  a24054:	846fe06f          	j	a2209a <osal_irq_lock>

00a24058 <uart_porting_unlock>:
  a24058:	852e                	mv	a0,a1
  a2405a:	848fe06f          	j	a220a2 <osal_irq_restore>

00a2405e <hal_systick_get_count>:
  a2405e:	400057b7          	lui	a5,0x40005
  a24062:	4fd8                	lw	a4,28(a5)
  a24064:	4f98                	lw	a4,24(a5)
  a24066:	4fc8                	lw	a0,28(a5)
  a24068:	4f8c                	lw	a1,24(a5)
  a2406a:	9da1                	uxth	a1
  a2406c:	8082                	ret

00a2406e <systick_clock_get>:
  a2406e:	00a0 2470 079f      	l.li	a5,0xa02470
  a24074:	4388                	lw	a0,0(a5)
  a24076:	8082                	ret

00a24078 <tcxo_porting_base_addr_get>:
  a24078:	4400 04c0 051f      	l.li	a0,0x440004c0
  a2407e:	8082                	ret

00a24080 <tcxo_porting_ticks_per_usec_get>:
  a24080:	00a0 2474 079f      	l.li	a5,0xa02474
  a24086:	4388                	lw	a0,0(a5)
  a24088:	8082                	ret

00a2408a <tcxo_porting_ticks_per_usec_set>:
  a2408a:	00a0 2474 079f      	l.li	a5,0xa02474
  a24090:	c388                	sw	a0,0(a5)
  a24092:	8082                	ret

00a24094 <watchdog_port_register_hal_funcs>:
  a24094:	8018                	push	{ra},-16
  a24096:	a0fff0ef          	jal	ra,a23aa4 <hal_watchdog_v151_funcs_get>
  a2409a:	8010                	pop	{ra},16
  a2409c:	863ff06f          	j	a238fe <hal_watchdog_register_funcs>

00a240a0 <watchdog_port_unregister_hal_funcs>:
  a240a0:	875ff06f          	j	a23914 <hal_watchdog_unregister_funcs>

00a240a4 <watchdog_port_register_irq>:
  a240a4:	8082                	ret

00a240a6 <watchdog_port_set_clock>:
  a240a6:	8028                	push	{ra,s0},-16
  a240a8:	842a                	mv	s0,a0
  a240aa:	ff1fd0ef          	jal	ra,a2209a <osal_irq_lock>
  a240ae:	00a0 247c 079f      	l.li	a5,0xa0247c
  a240b4:	c380                	sw	s0,0(a5)
  a240b6:	8020                	pop	{ra,s0},16
  a240b8:	febfd06f          	j	a220a2 <osal_irq_restore>

00a240bc <watchdog_port_get_clock>:
  a240bc:	00a0 247c 079f      	l.li	a5,0xa0247c
  a240c2:	4388                	lw	a0,0(a5)
  a240c4:	8082                	ret

00a240c6 <sfc_port_get_flash_spi_infos>:
  a240c6:	00a2 7014 051f      	l.li	a0,0xa27014
  a240cc:	8082                	ret

00a240ce <sfc_port_get_flash_num>:
  a240ce:	4505                	li	a0,1
  a240d0:	8082                	ret

00a240d2 <sfc_port_get_unknown_flash_info>:
  a240d2:	00a2 7030 051f      	l.li	a0,0xa27030
  a240d8:	8082                	ret

00a240da <sfc_port_get_sfc_start_addr>:
  a240da:	00200537          	lui	a0,0x200
  a240de:	8082                	ret

00a240e0 <sfc_port_get_sfc_end_addr>:
  a240e0:	009f ffff 051f      	l.li	a0,0x9fffff
  a240e6:	8082                	ret

00a240e8 <sfc_port_get_sfc_global_conf_base_addr>:
  a240e8:	4800 0100 051f      	l.li	a0,0x48000100
  a240ee:	8082                	ret

00a240f0 <sfc_port_get_sfc_bus_regs_base_addr>:
  a240f0:	4800 0200 051f      	l.li	a0,0x48000200
  a240f6:	8082                	ret

00a240f8 <sfc_port_get_sfc_bus_dma_regs_base_addr>:
  a240f8:	4800 0240 051f      	l.li	a0,0x48000240
  a240fe:	8082                	ret

00a24100 <sfc_port_get_sfc_cmd_regs_base_addr>:
  a24100:	4800 0300 051f      	l.li	a0,0x48000300
  a24106:	8082                	ret

00a24108 <sfc_port_get_sfc_cmd_databuf_base_addr>:
  a24108:	4800 0400 051f      	l.li	a0,0x48000400
  a2410e:	8082                	ret

00a24110 <sfc_port_get_delay_once_time>:
  a24110:	00a0 2480 079f      	l.li	a5,0xa02480
  a24116:	4388                	lw	a0,0(a5)
  a24118:	8082                	ret

00a2411a <sfc_port_get_delay_times>:
  a2411a:	00a0 2484 079f      	l.li	a5,0xa02484
  a24120:	4388                	lw	a0,0(a5)
  a24122:	8082                	ret

00a24124 <sfc_port_lock_init>:
  a24124:	8082                	ret

00a24126 <sfc_port_lock>:
  a24126:	4501                	li	a0,0
  a24128:	8082                	ret

00a2412a <sfc_port_unlock>:
  a2412a:	8082                	ret

00a2412c <hal_sfc_regs_wait_ready.constprop.0>:
  a2412c:	8158                	push	{ra,s0-s3},-48
  a2412e:	fedff0ef          	jal	ra,a2411a <sfc_port_get_delay_times>
  a24132:	84aa                	mv	s1,a0
  a24134:	fddff0ef          	jal	ra,a24110 <sfc_port_get_delay_once_time>
  a24138:	02800793          	li	a5,40
  a2413c:	c23e                	sw	a5,4(sp)
  a2413e:	4785                	li	a5,1
  a24140:	892a                	mv	s2,a0
  a24142:	c602                	sw	zero,12(sp)
  a24144:	c43e                	sw	a5,8(sp)
  a24146:	4401                	li	s0,0
  a24148:	00a079b7          	lui	s3,0xa07
  a2414c:	0048                	addi	a0,sp,4
  a2414e:	d6dff0ef          	jal	ra,a23eba <hal_sfc_regs_set_opt>
  a24152:	4601                	li	a2,0
  a24154:	4585                	li	a1,1
  a24156:	4505                	li	a0,1
  a24158:	d9bff0ef          	jal	ra,a23ef2 <hal_sfc_regs_set_opt_attr>
  a2415c:	dc5ff0ef          	jal	ra,a23f20 <hal_sfc_regs_wait_config>
  a24160:	8c89a783          	lw	a5,-1848(s3) # a068c8 <g_sfc_cmd_databuf>
  a24164:	439c                	lw	a5,0(a5)
  a24166:	8b85                	andi	a5,a5,1
  a24168:	cf91                	beqz	a5,a24184 <hal_sfc_regs_wait_ready.constprop.0+0x58>
  a2416a:	854a                	mv	a0,s2
  a2416c:	a86fe0ef          	jal	ra,a223f2 <uapi_tcxo_delay_us>
  a24170:	00140793          	addi	a5,s0,1
  a24174:	00946663          	bltu	s0,s1,a24180 <hal_sfc_regs_wait_ready.constprop.0+0x54>
  a24178:	8000 1344 051f      	l.li	a0,0x80001344
  a2417e:	8154                	popret	{ra,s0-s3},48
  a24180:	843e                	mv	s0,a5
  a24182:	b7e9                	j	a2414c <hal_sfc_regs_wait_ready.constprop.0+0x20>
  a24184:	4501                	li	a0,0
  a24186:	bfe5                	j	a2417e <hal_sfc_regs_wait_ready.constprop.0+0x52>

00a24188 <sfc_port_write_sr>:
  a24188:	8148                	push	{ra,s0-s2},-32
  a2418a:	892a                	mv	s2,a0
  a2418c:	842e                	mv	s0,a1
  a2418e:	84b2                	mv	s1,a2
  a24190:	f9dff0ef          	jal	ra,a2412c <hal_sfc_regs_wait_ready.constprop.0>
  a24194:	4792                	lw	a5,4(sp)
  a24196:	4719                	li	a4,6
  a24198:	9be1                	andi	a5,a5,-8
  a2419a:	0017e793          	ori	a5,a5,1
  a2419e:	c23e                	sw	a5,4(sp)
  a241a0:	00090463          	beqz	s2,a241a8 <sfc_port_write_sr+0x20>
  a241a4:	05000713          	li	a4,80
  a241a8:	4792                	lw	a5,4(sp)
  a241aa:	0048                	addi	a0,sp,4
  a241ac:	c402                	sw	zero,8(sp)
  a241ae:	8077f793          	andi	a5,a5,-2041
  a241b2:	06e7a79b          	orshf	a5,a5,a4,sll,3
  a241b6:	7ff7f793          	andi	a5,a5,2047
  a241ba:	c23e                	sw	a5,4(sp)
  a241bc:	c602                	sw	zero,12(sp)
  a241be:	cfdff0ef          	jal	ra,a23eba <hal_sfc_regs_set_opt>
  a241c2:	4601                	li	a2,0
  a241c4:	4581                	li	a1,0
  a241c6:	4501                	li	a0,0
  a241c8:	d2bff0ef          	jal	ra,a23ef2 <hal_sfc_regs_set_opt_attr>
  a241cc:	d55ff0ef          	jal	ra,a23f20 <hal_sfc_regs_wait_config>
  a241d0:	4785                	li	a5,1
  a241d2:	c43e                	sw	a5,8(sp)
  a241d4:	00a077b7          	lui	a5,0xa07
  a241d8:	8c87a783          	lw	a5,-1848(a5) # a068c8 <g_sfc_cmd_databuf>
  a241dc:	040e                	slli	s0,s0,0x3
  a241de:	00146413          	ori	s0,s0,1
  a241e2:	c222                	sw	s0,4(sp)
  a241e4:	c602                	sw	zero,12(sp)
  a241e6:	c384                	sw	s1,0(a5)
  a241e8:	0048                	addi	a0,sp,4
  a241ea:	cd1ff0ef          	jal	ra,a23eba <hal_sfc_regs_set_opt>
  a241ee:	4601                	li	a2,0
  a241f0:	4585                	li	a1,1
  a241f2:	4501                	li	a0,0
  a241f4:	cffff0ef          	jal	ra,a23ef2 <hal_sfc_regs_set_opt_attr>
  a241f8:	d29ff0ef          	jal	ra,a23f20 <hal_sfc_regs_wait_config>
  a241fc:	8144                	popret	{ra,s0-s2},32

00a241fe <sfc_port_read_sr>:
  a241fe:	8118                	push	{ra},-32
  a24200:	9d01                	uxtb	a0
  a24202:	4785                	li	a5,1
  a24204:	050e                	slli	a0,a0,0x3
  a24206:	c43e                	sw	a5,8(sp)
  a24208:	c602                	sw	zero,12(sp)
  a2420a:	c22a                	sw	a0,4(sp)
  a2420c:	f21ff0ef          	jal	ra,a2412c <hal_sfc_regs_wait_ready.constprop.0>
  a24210:	0048                	addi	a0,sp,4
  a24212:	ca9ff0ef          	jal	ra,a23eba <hal_sfc_regs_set_opt>
  a24216:	4601                	li	a2,0
  a24218:	4585                	li	a1,1
  a2421a:	4505                	li	a0,1
  a2421c:	cd7ff0ef          	jal	ra,a23ef2 <hal_sfc_regs_set_opt_attr>
  a24220:	d01ff0ef          	jal	ra,a23f20 <hal_sfc_regs_wait_config>
  a24224:	00a077b7          	lui	a5,0xa07
  a24228:	8c87a783          	lw	a5,-1848(a5) # a068c8 <g_sfc_cmd_databuf>
  a2422c:	4388                	lw	a0,0(a5)
  a2422e:	8114                	popret	{ra},32

00a24230 <sfc_port_write_lock>:
  a24230:	000207b7          	lui	a5,0x20
  a24234:	00f56863          	bltu	a0,a5,a24244 <sfc_port_write_lock+0x14>
  a24238:	004007b7          	lui	a5,0x400
  a2423c:	00b7ec63          	bltu	a5,a1,a24254 <sfc_port_write_lock+0x24>
  a24240:	4781                	li	a5,0
  a24242:	a005                	j	a24262 <sfc_port_write_lock+0x32>
  a24244:	67a1                	lui	a5,0x8
  a24246:	00f56963          	bltu	a0,a5,a24258 <sfc_port_write_lock+0x28>
  a2424a:	00400737          	lui	a4,0x400
  a2424e:	4785                	li	a5,1
  a24250:	00b77963          	bgeu	a4,a1,a24262 <sfc_port_write_lock+0x32>
  a24254:	4501                	li	a0,0
  a24256:	8082                	ret
  a24258:	004007b7          	lui	a5,0x400
  a2425c:	feb7ece3          	bltu	a5,a1,a24254 <sfc_port_write_lock+0x24>
  a24260:	4789                	li	a5,2
  a24262:	8018                	push	{ra},-16
  a24264:	00a2 704c 071f      	l.li	a4,0xa2704c
  a2426a:	0cf717db          	muliadd	a5,a4,a5,12
  a2426e:	3390                	lbu	a2,1(a5)
  a24270:	4585                	li	a1,1
  a24272:	4505                	li	a0,1
  a24274:	f15ff0ef          	jal	ra,a24188 <sfc_port_write_sr>
  a24278:	4609                	li	a2,2
  a2427a:	03100593          	li	a1,49
  a2427e:	4505                	li	a0,1
  a24280:	f09ff0ef          	jal	ra,a24188 <sfc_port_write_sr>
  a24284:	4501                	li	a0,0
  a24286:	8014                	popret	{ra},16

00a24288 <sfc_port_write_unlock>:
  a24288:	8018                	push	{ra},-16
  a2428a:	4671                	li	a2,28
  a2428c:	4585                	li	a1,1
  a2428e:	4505                	li	a0,1
  a24290:	ef9ff0ef          	jal	ra,a24188 <sfc_port_write_sr>
  a24294:	4609                	li	a2,2
  a24296:	03100593          	li	a1,49
  a2429a:	4505                	li	a0,1
  a2429c:	8010                	pop	{ra},16
  a2429e:	eebff06f          	j	a24188 <sfc_port_write_sr>

00a242a2 <sfc_port_fix_sr>:
  a242a2:	8118                	push	{ra},-32
  a242a4:	0068                	addi	a0,sp,12
  a242a6:	c602                	sw	zero,12(sp)
  a242a8:	9cfff0ef          	jal	ra,a23c76 <hal_sfc_get_flash_id>
  a242ac:	e901                	bnez	a0,a242bc <sfc_port_fix_sr+0x1a>
  a242ae:	4732                	lw	a4,12(sp)
  a242b0:	0016 40c8 079f      	l.li	a5,0x1640c8
  a242b6:	00f71463          	bne	a4,a5,a242be <sfc_port_fix_sr+0x1c>
  a242ba:	2079                	jal	ra,a24348 <sfc_port_fix_sr_gd25q32>
  a242bc:	8114                	popret	{ra},32
  a242be:	80000537          	lui	a0,0x80000
  a242c2:	0509                	addi	a0,a0,2 # 80000002 <__data_load__+0x7f5d85be>
  a242c4:	bfe5                	j	a242bc <sfc_port_fix_sr+0x1a>

00a242c6 <sfc_port_gd25q32_read_sr>:
  a242c6:	8078                	push	{ra,s0-s5},-32
  a242c8:	892a                	mv	s2,a0
  a242ca:	448d                	li	s1,3
  a242cc:	4995                	li	s3,5
  a242ce:	03500a13          	li	s4,53
  a242d2:	00a27ab7          	lui	s5,0xa27
  a242d6:	854a                	mv	a0,s2
  a242d8:	f27ff0ef          	jal	ra,a241fe <sfc_port_read_sr>
  a242dc:	0ff57413          	andi	s0,a0,255
  a242e0:	03391f63          	bne	s2,s3,a2431e <sfc_port_gd25q32_read_sr+0x58>
  a242e4:	09c47413          	andi	s0,s0,156
  a242e8:	1411                	addi	s0,s0,-28
  a242ea:	00143413          	seqz	s0,s0
  a242ee:	4585                	li	a1,1
  a242f0:	46f1                	li	a3,28
  a242f2:	e419                	bnez	s0,a24300 <sfc_port_gd25q32_read_sr+0x3a>
  a242f4:	0ff57613          	andi	a2,a0,255
  a242f8:	098a8513          	addi	a0,s5,152 # a27098 <g_sfc_protect_cfg+0x4c>
  a242fc:	d29ff0ef          	jal	ra,a24024 <print_str>
  a24300:	878fe0ef          	jal	ra,a22378 <uapi_tcxo_get_count>
  a24304:	06400613          	li	a2,100
  a24308:	4681                	li	a3,0
  a2430a:	b36fc0ef          	jal	ra,a20640 <__umoddi3>
  a2430e:	0505                	addi	a0,a0,1
  a24310:	8e2fe0ef          	jal	ra,a223f2 <uapi_tcxo_delay_us>
  a24314:	c805                	beqz	s0,a24344 <sfc_port_gd25q32_read_sr+0x7e>
  a24316:	14fd                	addi	s1,s1,-1
  a24318:	fcdd                	bnez	s1,a242d6 <sfc_port_gd25q32_read_sr+0x10>
  a2431a:	4501                	li	a0,0
  a2431c:	8074                	popret	{ra,s0-s5},32
  a2431e:	01491a63          	bne	s2,s4,a24332 <sfc_port_gd25q32_read_sr+0x6c>
  a24322:	04347413          	andi	s0,s0,67
  a24326:	1479                	addi	s0,s0,-2
  a24328:	00143413          	seqz	s0,s0
  a2432c:	4589                	li	a1,2
  a2432e:	4689                	li	a3,2
  a24330:	b7c9                	j	a242f2 <sfc_port_gd25q32_read_sr+0x2c>
  a24332:	06147413          	andi	s0,s0,97
  a24336:	1401                	addi	s0,s0,-32
  a24338:	00143413          	seqz	s0,s0
  a2433c:	458d                	li	a1,3
  a2433e:	02000693          	li	a3,32
  a24342:	bf45                	j	a242f2 <sfc_port_gd25q32_read_sr+0x2c>
  a24344:	557d                	li	a0,-1
  a24346:	bfd9                	j	a2431c <sfc_port_gd25q32_read_sr+0x56>

00a24348 <sfc_port_fix_sr_gd25q32>:
  a24348:	8068                	push	{ra,s0-s4},-32
  a2434a:	4481                	li	s1,0
  a2434c:	498d                	li	s3,3
  a2434e:	4515                	li	a0,5
  a24350:	f77ff0ef          	jal	ra,a242c6 <sfc_port_gd25q32_read_sr>
  a24354:	8a2a                	mv	s4,a0
  a24356:	03500513          	li	a0,53
  a2435a:	f6dff0ef          	jal	ra,a242c6 <sfc_port_gd25q32_read_sr>
  a2435e:	892a                	mv	s2,a0
  a24360:	4555                	li	a0,21
  a24362:	f65ff0ef          	jal	ra,a242c6 <sfc_port_gd25q32_read_sr>
  a24366:	842a                	mv	s0,a0
  a24368:	040a1763          	bnez	s4,a243b6 <sfc_port_fix_sr_gd25q32+0x6e>
  a2436c:	02090863          	beqz	s2,a2439c <sfc_port_fix_sr_gd25q32+0x54>
  a24370:	4609                	li	a2,2
  a24372:	03100593          	li	a1,49
  a24376:	4501                	li	a0,0
  a24378:	e11ff0ef          	jal	ra,a24188 <sfc_port_write_sr>
  a2437c:	c419                	beqz	s0,a2438a <sfc_port_fix_sr_gd25q32+0x42>
  a2437e:	02000613          	li	a2,32
  a24382:	45c5                	li	a1,17
  a24384:	4501                	li	a0,0
  a24386:	e03ff0ef          	jal	ra,a24188 <sfc_port_write_sr>
  a2438a:	03c00513          	li	a0,60
  a2438e:	0485                	addi	s1,s1,1
  a24390:	812fe0ef          	jal	ra,a223a2 <uapi_tcxo_delay_ms>
  a24394:	fb349de3          	bne	s1,s3,a2434e <sfc_port_fix_sr_gd25q32+0x6>
  a24398:	547d                	li	s0,-1
  a2439a:	a801                	j	a243aa <sfc_port_fix_sr_gd25q32+0x62>
  a2439c:	f16d                	bnez	a0,a2437e <sfc_port_fix_sr_gd25q32+0x36>
  a2439e:	e881                	bnez	s1,a243ae <sfc_port_fix_sr_gd25q32+0x66>
  a243a0:	00a2 7070 051f      	l.li	a0,0xa27070
  a243a6:	7ae000ef          	jal	ra,a24b54 <boot_msg0>
  a243aa:	8522                	mv	a0,s0
  a243ac:	8064                	popret	{ra,s0-s4},32
  a243ae:	00a2 7088 051f      	l.li	a0,0xa27088
  a243b4:	bfcd                	j	a243a6 <sfc_port_fix_sr_gd25q32+0x5e>
  a243b6:	4671                	li	a2,28
  a243b8:	4585                	li	a1,1
  a243ba:	4501                	li	a0,0
  a243bc:	dcdff0ef          	jal	ra,a24188 <sfc_port_write_sr>
  a243c0:	fa090ee3          	beqz	s2,a2437c <sfc_port_fix_sr_gd25q32+0x34>
  a243c4:	b775                	j	a24370 <sfc_port_fix_sr_gd25q32+0x28>

00a243c6 <build_flash_ctrl>:
  a243c6:	455c                	lw	a5,12(a0)
  a243c8:	04b7859b          	addshf	a1,a5,a1,sll,2
  a243cc:	4194                	lw	a3,0(a1)
  a243ce:	491c                	lw	a5,16(a0)
  a243d0:	04c7861b          	addshf	a2,a5,a2,sll,2
  a243d4:	0076f793          	andi	a5,a3,7
  a243d8:	4218                	lw	a4,0(a2)
  a243da:	01079bbb          	bnei	a5,1,a24408 <build_flash_ctrl+0x42>
  a243de:	8b1d                	andi	a4,a4,7
  a243e0:	02f71463          	bne	a4,a5,a24408 <build_flash_ctrl+0x42>
  a243e4:	00a0 6958 079f      	l.li	a5,0xa06958
  a243ea:	c3d4                	sw	a3,4(a5)
  a243ec:	4214                	lw	a3,0(a2)
  a243ee:	c7d4                	sw	a3,12(a5)
  a243f0:	4954                	lw	a3,20(a0)
  a243f2:	cb94                	sw	a3,16(a5)
  a243f4:	4154                	lw	a3,4(a0)
  a243f6:	c394                	sw	a3,0(a5)
  a243f8:	4514                	lw	a3,8(a0)
  a243fa:	00d77b63          	bgeu	a4,a3,a24410 <build_flash_ctrl+0x4a>
  a243fe:	4d18                	lw	a4,24(a0)
  a24400:	c794                	sw	a3,8(a5)
  a24402:	4501                	li	a0,0
  a24404:	cbd8                	sw	a4,20(a5)
  a24406:	8082                	ret
  a24408:	8000 1346 051f      	l.li	a0,0x80001346
  a2440e:	8082                	ret
  a24410:	8000 1349 051f      	l.li	a0,0x80001349
  a24416:	8082                	ret

00a24418 <check_opt_param>:
  a24418:	00a0 6970 079f      	l.li	a5,0xa06970
  a2441e:	239c                	lbu	a5,0(a5)
  a24420:	cf99                	beqz	a5,a2443e <check_opt_param+0x26>
  a24422:	00a0 6958 071f      	l.li	a4,0xa06958
  a24428:	4318                	lw	a4,0(a4)
  a2442a:	00b507b3          	add	a5,a0,a1
  a2442e:	00f76c63          	bltu	a4,a5,a24446 <check_opt_param+0x2e>
  a24432:	00f57a63          	bgeu	a0,a5,a24446 <check_opt_param+0x2e>
  a24436:	00b7e863          	bltu	a5,a1,a24446 <check_opt_param+0x2e>
  a2443a:	4501                	li	a0,0
  a2443c:	8082                	ret
  a2443e:	8000 1340 051f      	l.li	a0,0x80001340
  a24444:	8082                	ret
  a24446:	80000537          	lui	a0,0x80000
  a2444a:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a2444c:	8082                	ret

00a2444e <check_init_param>:
  a2444e:	8078                	push	{ra,s0-s5},-32
  a24450:	00452a83          	lw	s5,4(a0)
  a24454:	00a07937          	lui	s2,0xa07
  a24458:	89aa                	mv	s3,a0
  a2445a:	95892403          	lw	s0,-1704(s2) # a06958 <g_flash_ctrl>
  a2445e:	00852a03          	lw	s4,8(a0)
  a24462:	c79ff0ef          	jal	ra,a240da <sfc_port_get_sfc_start_addr>
  a24466:	00aaf663          	bgeu	s5,a0,a24472 <check_init_param+0x24>
  a2446a:	8000 1342 051f      	l.li	a0,0x80001342
  a24470:	8074                	popret	{ra,s0-s5},32
  a24472:	95890913          	addi	s2,s2,-1704
  a24476:	008a7363          	bgeu	s4,s0,a2447c <check_init_param+0x2e>
  a2447a:	8452                	mv	s0,s4
  a2447c:	0049a483          	lw	s1,4(s3)
  a24480:	14fd                	addi	s1,s1,-1
  a24482:	94a2                	add	s1,s1,s0
  a24484:	c5dff0ef          	jal	ra,a240e0 <sfc_port_get_sfc_end_addr>
  a24488:	fe9561e3          	bltu	a0,s1,a2446a <check_init_param+0x1c>
  a2448c:	00892023          	sw	s0,0(s2)
  a24490:	4501                	li	a0,0
  a24492:	bff9                	j	a24470 <check_init_param+0x22>

00a24494 <uapi_sfc_init>:
  a24494:	00a077b7          	lui	a5,0xa07
  a24498:	9707c703          	lbu	a4,-1680(a5) # a06970 <g_sfc_inited>
  a2449c:	ef59                	bnez	a4,a2453a <uapi_sfc_init+0xa6>
  a2449e:	8258                	push	{ra,s0-s3},-64
  a244a0:	842a                	mv	s0,a0
  a244a2:	97078913          	addi	s2,a5,-1680
  a244a6:	c7fff0ef          	jal	ra,a24124 <sfc_port_lock_init>
  a244aa:	0868                	addi	a0,sp,28
  a244ac:	fcaff0ef          	jal	ra,a23c76 <hal_sfc_get_flash_id>
  a244b0:	e151                	bnez	a0,a24534 <uapi_sfc_init+0xa0>
  a244b2:	200c                	lbu	a1,0(s0)
  a244b4:	3010                	lbu	a2,1(s0)
  a244b6:	49f2                	lw	s3,28(sp)
  a244b8:	c62e                	sw	a1,12(sp)
  a244ba:	c432                	sw	a2,8(sp)
  a244bc:	c0bff0ef          	jal	ra,a240c6 <sfc_port_get_flash_spi_infos>
  a244c0:	84aa                	mv	s1,a0
  a244c2:	c0dff0ef          	jal	ra,a240ce <sfc_port_get_flash_num>
  a244c6:	4622                	lw	a2,8(sp)
  a244c8:	45b2                	lw	a1,12(sp)
  a244ca:	86aa                	mv	a3,a0
  a244cc:	87a6                	mv	a5,s1
  a244ce:	4701                	li	a4,0
  a244d0:	04e69963          	bne	a3,a4,a24522 <uapi_sfc_init+0x8e>
  a244d4:	bffff0ef          	jal	ra,a240d2 <sfc_port_get_unknown_flash_info>
  a244d8:	4605                	li	a2,1
  a244da:	4581                	li	a1,0
  a244dc:	eebff0ef          	jal	ra,a243c6 <build_flash_ctrl>
  a244e0:	e931                	bnez	a0,a24534 <uapi_sfc_init+0xa0>
  a244e2:	00a0 6971 079f      	l.li	a5,0xa06971
  a244e8:	4705                	li	a4,1
  a244ea:	a398                	sb	a4,0(a5)
  a244ec:	8522                	mv	a0,s0
  a244ee:	f61ff0ef          	jal	ra,a2444e <check_init_param>
  a244f2:	e129                	bnez	a0,a24534 <uapi_sfc_init+0xa0>
  a244f4:	00a07537          	lui	a0,0xa07
  a244f8:	95852603          	lw	a2,-1704(a0) # a06958 <g_flash_ctrl>
  a244fc:	404c                	lw	a1,4(s0)
  a244fe:	95850513          	addi	a0,a0,-1704
  a24502:	fb8ff0ef          	jal	ra,a23cba <hal_sfc_init>
  a24506:	e51d                	bnez	a0,a24534 <uapi_sfc_init+0xa0>
  a24508:	4785                	li	a5,1
  a2450a:	00f90023          	sb	a5,0(s2)
  a2450e:	00a0 6971 079f      	l.li	a5,0xa06971
  a24514:	239c                	lbu	a5,0(a5)
  a24516:	4501                	li	a0,0
  a24518:	cf91                	beqz	a5,a24534 <uapi_sfc_init+0xa0>
  a2451a:	8000 1341 051f      	l.li	a0,0x80001341
  a24520:	a811                	j	a24534 <uapi_sfc_init+0xa0>
  a24522:	853e                	mv	a0,a5
  a24524:	07f1                	addi	a5,a5,28
  a24526:	fe47a803          	lw	a6,-28(a5)
  a2452a:	01099663          	bne	s3,a6,a24536 <uapi_sfc_init+0xa2>
  a2452e:	e99ff0ef          	jal	ra,a243c6 <build_flash_ctrl>
  a24532:	dd4d                	beqz	a0,a244ec <uapi_sfc_init+0x58>
  a24534:	8254                	popret	{ra,s0-s3},64
  a24536:	0705                	addi	a4,a4,1 # 400001 <g_intheap_size+0x3e6aa1>
  a24538:	bf61                	j	a244d0 <uapi_sfc_init+0x3c>
  a2453a:	4501                	li	a0,0
  a2453c:	8082                	ret

00a2453e <uapi_sfc_reg_read>:
  a2453e:	8188                	push	{ra,s0-s6},-48
  a24540:	8a2e                	mv	s4,a1
  a24542:	85b2                	mv	a1,a2
  a24544:	892a                	mv	s2,a0
  a24546:	84b2                	mv	s1,a2
  a24548:	ed1ff0ef          	jal	ra,a24418 <check_opt_param>
  a2454c:	e13d                	bnez	a0,a245b2 <uapi_sfc_reg_read+0x74>
  a2454e:	bd9ff0ef          	jal	ra,a24126 <sfc_port_lock>
  a24552:	00397b13          	andi	s6,s2,3
  a24556:	8aaa                	mv	s5,a0
  a24558:	060b0263          	beqz	s6,a245bc <uapi_sfc_reg_read+0x7e>
  a2455c:	4791                	li	a5,4
  a2455e:	416787b3          	sub	a5,a5,s6
  a24562:	41690933          	sub	s2,s2,s6
  a24566:	0ff4f993          	andi	s3,s1,255
  a2456a:	00f4e763          	bltu	s1,a5,a24578 <uapi_sfc_reg_read+0x3a>
  a2456e:	4991                	li	s3,4
  a24570:	416989b3          	sub	s3,s3,s6
  a24574:	0ff9f993          	andi	s3,s3,255
  a24578:	00a0 6958 079f      	l.li	a5,0xa06958
  a2457e:	43d4                	lw	a3,4(a5)
  a24580:	4611                	li	a2,4
  a24582:	006c                	addi	a1,sp,12
  a24584:	854a                	mv	a0,s2
  a24586:	c602                	sw	zero,12(sp)
  a24588:	815ff0ef          	jal	ra,a23d9c <hal_sfc_reg_read>
  a2458c:	842a                	mv	s0,a0
  a2458e:	ed11                	bnez	a0,a245aa <uapi_sfc_reg_read+0x6c>
  a24590:	007c                	addi	a5,sp,12
  a24592:	86ce                	mv	a3,s3
  a24594:	01678633          	add	a2,a5,s6
  a24598:	85ce                	mv	a1,s3
  a2459a:	8552                	mv	a0,s4
  a2459c:	7e7000ef          	jal	ra,a25582 <memcpy_s>
  a245a0:	c911                	beqz	a0,a245b4 <uapi_sfc_reg_read+0x76>
  a245a2:	80000537          	lui	a0,0x80000
  a245a6:	00450413          	addi	s0,a0,4 # 80000004 <__data_load__+0x7f5d85c0>
  a245aa:	8556                	mv	a0,s5
  a245ac:	b7fff0ef          	jal	ra,a2412a <sfc_port_unlock>
  a245b0:	8522                	mv	a0,s0
  a245b2:	8184                	popret	{ra,s0-s6},48
  a245b4:	0911                	addi	s2,s2,4
  a245b6:	9a4e                	add	s4,s4,s3
  a245b8:	413484b3          	sub	s1,s1,s3
  a245bc:	ffc4f993          	andi	s3,s1,-4
  a245c0:	02098163          	beqz	s3,a245e2 <uapi_sfc_reg_read+0xa4>
  a245c4:	00a0 6958 079f      	l.li	a5,0xa06958
  a245ca:	43d4                	lw	a3,4(a5)
  a245cc:	864e                	mv	a2,s3
  a245ce:	85d2                	mv	a1,s4
  a245d0:	854a                	mv	a0,s2
  a245d2:	fcaff0ef          	jal	ra,a23d9c <hal_sfc_reg_read>
  a245d6:	842a                	mv	s0,a0
  a245d8:	f969                	bnez	a0,a245aa <uapi_sfc_reg_read+0x6c>
  a245da:	9a4e                	add	s4,s4,s3
  a245dc:	994e                	add	s2,s2,s3
  a245de:	413484b3          	sub	s1,s1,s3
  a245e2:	4401                	li	s0,0
  a245e4:	d0f9                	beqz	s1,a245aa <uapi_sfc_reg_read+0x6c>
  a245e6:	00a0 6958 079f      	l.li	a5,0xa06958
  a245ec:	43d4                	lw	a3,4(a5)
  a245ee:	4611                	li	a2,4
  a245f0:	006c                	addi	a1,sp,12
  a245f2:	854a                	mv	a0,s2
  a245f4:	c602                	sw	zero,12(sp)
  a245f6:	fa6ff0ef          	jal	ra,a23d9c <hal_sfc_reg_read>
  a245fa:	842a                	mv	s0,a0
  a245fc:	86a6                	mv	a3,s1
  a245fe:	0070                	addi	a2,sp,12
  a24600:	85a6                	mv	a1,s1
  a24602:	8552                	mv	a0,s4
  a24604:	77f000ef          	jal	ra,a25582 <memcpy_s>
  a24608:	d14d                	beqz	a0,a245aa <uapi_sfc_reg_read+0x6c>
  a2460a:	80000437          	lui	s0,0x80000
  a2460e:	0411                	addi	s0,s0,4 # 80000004 <__data_load__+0x7f5d85c0>
  a24610:	bf69                	j	a245aa <uapi_sfc_reg_read+0x6c>

00a24612 <uapi_sfc_reg_write>:
  a24612:	8198                	push	{ra,s0-s7},-64
  a24614:	8a2e                	mv	s4,a1
  a24616:	85b2                	mv	a1,a2
  a24618:	84aa                	mv	s1,a0
  a2461a:	8932                	mv	s2,a2
  a2461c:	dfdff0ef          	jal	ra,a24418 <check_opt_param>
  a24620:	842a                	mv	s0,a0
  a24622:	e571                	bnez	a0,a246ee <uapi_sfc_reg_write+0xdc>
  a24624:	012485b3          	add	a1,s1,s2
  a24628:	8526                	mv	a0,s1
  a2462a:	c07ff0ef          	jal	ra,a24230 <sfc_port_write_lock>
  a2462e:	0034fa93          	andi	s5,s1,3
  a24632:	8b2a                	mv	s6,a0
  a24634:	060a8863          	beqz	s5,a246a4 <uapi_sfc_reg_write+0x92>
  a24638:	4791                	li	a5,4
  a2463a:	415787b3          	sub	a5,a5,s5
  a2463e:	415484b3          	sub	s1,s1,s5
  a24642:	0ff97993          	andi	s3,s2,255
  a24646:	00f96763          	bltu	s2,a5,a24654 <uapi_sfc_reg_write+0x42>
  a2464a:	4991                	li	s3,4
  a2464c:	415989b3          	sub	s3,s3,s5
  a24650:	0ff9f993          	andi	s3,s3,255
  a24654:	00a0 6958 0b9f      	l.li	s7,0xa06958
  a2465a:	004ba683          	lw	a3,4(s7) # ffe00004 <__data_load__+0xff3d85c0>
  a2465e:	4611                	li	a2,4
  a24660:	006c                	addi	a1,sp,12
  a24662:	8526                	mv	a0,s1
  a24664:	f38ff0ef          	jal	ra,a23d9c <hal_sfc_reg_read>
  a24668:	842a                	mv	s0,a0
  a2466a:	ed09                	bnez	a0,a24684 <uapi_sfc_reg_write+0x72>
  a2466c:	007c                	addi	a5,sp,12
  a2466e:	86ce                	mv	a3,s3
  a24670:	8652                	mv	a2,s4
  a24672:	85ce                	mv	a1,s3
  a24674:	01578533          	add	a0,a5,s5
  a24678:	70b000ef          	jal	ra,a25582 <memcpy_s>
  a2467c:	c901                	beqz	a0,a2468c <uapi_sfc_reg_write+0x7a>
  a2467e:	80000437          	lui	s0,0x80000
  a24682:	0411                	addi	s0,s0,4 # 80000004 <__data_load__+0x7f5d85c0>
  a24684:	855a                	mv	a0,s6
  a24686:	c03ff0ef          	jal	ra,a24288 <sfc_port_write_unlock>
  a2468a:	a095                	j	a246ee <uapi_sfc_reg_write+0xdc>
  a2468c:	00cba683          	lw	a3,12(s7)
  a24690:	8526                	mv	a0,s1
  a24692:	4611                	li	a2,4
  a24694:	006c                	addi	a1,sp,12
  a24696:	f92ff0ef          	jal	ra,a23e28 <hal_sfc_reg_write>
  a2469a:	842a                	mv	s0,a0
  a2469c:	0491                	addi	s1,s1,4
  a2469e:	9a4e                	add	s4,s4,s3
  a246a0:	41390933          	sub	s2,s2,s3
  a246a4:	ffc97993          	andi	s3,s2,-4
  a246a8:	fc71                	bnez	s0,a24684 <uapi_sfc_reg_write+0x72>
  a246aa:	02098063          	beqz	s3,a246ca <uapi_sfc_reg_write+0xb8>
  a246ae:	00a0 6958 079f      	l.li	a5,0xa06958
  a246b4:	47d4                	lw	a3,12(a5)
  a246b6:	85d2                	mv	a1,s4
  a246b8:	8526                	mv	a0,s1
  a246ba:	864e                	mv	a2,s3
  a246bc:	f6cff0ef          	jal	ra,a23e28 <hal_sfc_reg_write>
  a246c0:	9a4e                	add	s4,s4,s3
  a246c2:	94ce                	add	s1,s1,s3
  a246c4:	41390933          	sub	s2,s2,s3
  a246c8:	e131                	bnez	a0,a2470c <uapi_sfc_reg_write+0xfa>
  a246ca:	fa090de3          	beqz	s2,a24684 <uapi_sfc_reg_write+0x72>
  a246ce:	00a0 6958 041f      	l.li	s0,0xa06958
  a246d4:	4054                	lw	a3,4(s0)
  a246d6:	4611                	li	a2,4
  a246d8:	006c                	addi	a1,sp,12
  a246da:	8526                	mv	a0,s1
  a246dc:	ec0ff0ef          	jal	ra,a23d9c <hal_sfc_reg_read>
  a246e0:	c909                	beqz	a0,a246f2 <uapi_sfc_reg_write+0xe0>
  a246e2:	855a                	mv	a0,s6
  a246e4:	80000437          	lui	s0,0x80000
  a246e8:	ba1ff0ef          	jal	ra,a24288 <sfc_port_write_unlock>
  a246ec:	0411                	addi	s0,s0,4 # 80000004 <__data_load__+0x7f5d85c0>
  a246ee:	8522                	mv	a0,s0
  a246f0:	8194                	popret	{ra,s0-s7},64
  a246f2:	86ca                	mv	a3,s2
  a246f4:	8652                	mv	a2,s4
  a246f6:	4591                	li	a1,4
  a246f8:	0068                	addi	a0,sp,12
  a246fa:	689000ef          	jal	ra,a25582 <memcpy_s>
  a246fe:	f175                	bnez	a0,a246e2 <uapi_sfc_reg_write+0xd0>
  a24700:	4454                	lw	a3,12(s0)
  a24702:	4611                	li	a2,4
  a24704:	006c                	addi	a1,sp,12
  a24706:	8526                	mv	a0,s1
  a24708:	f20ff0ef          	jal	ra,a23e28 <hal_sfc_reg_write>
  a2470c:	842a                	mv	s0,a0
  a2470e:	bf9d                	j	a24684 <uapi_sfc_reg_write+0x72>

00a24710 <uapi_sfc_reg_erase>:
  a24710:	80a8                	push	{ra,s0-s8},-48
  a24712:	892a                	mv	s2,a0
  a24714:	842e                	mv	s0,a1
  a24716:	d03ff0ef          	jal	ra,a24418 <check_opt_param>
  a2471a:	e921                	bnez	a0,a2476a <uapi_sfc_reg_erase+0x5a>
  a2471c:	008905b3          	add	a1,s2,s0
  a24720:	77fd                	lui	a5,0xfffff
  a24722:	01459713          	slli	a4,a1,0x14
  a24726:	00f974b3          	and	s1,s2,a5
  a2472a:	cf41                	beqz	a4,a247c2 <uapi_sfc_reg_erase+0xb2>
  a2472c:	8fed                	and	a5,a5,a1
  a2472e:	6705                	lui	a4,0x1
  a24730:	80000537          	lui	a0,0x80000
  a24734:	97ba                	add	a5,a5,a4
  a24736:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a24738:	02991963          	bne	s2,s1,a2476a <uapi_sfc_reg_erase+0x5a>
  a2473c:	02f59763          	bne	a1,a5,a2476a <uapi_sfc_reg_erase+0x5a>
  a24740:	8526                	mv	a0,s1
  a24742:	40958a33          	sub	s4,a1,s1
  a24746:	6b11                	lui	s6,0x4
  a24748:	ae9ff0ef          	jal	ra,a24230 <sfc_port_write_lock>
  a2474c:	8c2a                	mv	s8,a0
  a2474e:	4901                	li	s2,0
  a24750:	4981                	li	s3,0
  a24752:	4a81                	li	s5,0
  a24754:	00a0 6958 0b9f      	l.li	s7,0xa06958
  a2475a:	1b7d                	addi	s6,s6,-1 # 3fff <ccause+0x303d>
  a2475c:	040a1d63          	bnez	s4,a247b6 <uapi_sfc_reg_erase+0xa6>
  a24760:	4401                	li	s0,0
  a24762:	8562                	mv	a0,s8
  a24764:	b25ff0ef          	jal	ra,a24288 <sfc_port_write_unlock>
  a24768:	8522                	mv	a0,s0
  a2476a:	80a4                	popret	{ra,s0-s8},48
  a2476c:	010ba703          	lw	a4,16(s7)
  a24770:	04f7071b          	addshf	a4,a4,a5,sll,2
  a24774:	00072903          	lw	s2,0(a4) # 1000 <ccause+0x3e>
  a24778:	00e95993          	srli	s3,s2,0xe
  a2477c:	8ace                	mv	s5,s3
  a2477e:	013a6663          	bltu	s4,s3,a2478a <uapi_sfc_reg_erase+0x7a>
  a24782:	fff98713          	addi	a4,s3,-1
  a24786:	8f65                	and	a4,a4,s1
  a24788:	cb01                	beqz	a4,a24798 <uapi_sfc_reg_erase+0x88>
  a2478a:	0785                	addi	a5,a5,1 # fffff001 <__data_load__+0xff5d75bd>
  a2478c:	008ba703          	lw	a4,8(s7)
  a24790:	fce7eee3          	bltu	a5,a4,a2476c <uapi_sfc_reg_erase+0x5c>
  a24794:	02e78363          	beq	a5,a4,a247ba <uapi_sfc_reg_erase+0xaa>
  a24798:	01697933          	and	s2,s2,s6
  a2479c:	1d39291b          	orshf	s2,s2,s3,sll,14
  a247a0:	4601                	li	a2,0
  a247a2:	85ca                	mv	a1,s2
  a247a4:	8526                	mv	a0,s1
  a247a6:	ee2ff0ef          	jal	ra,a23e88 <hal_sfc_reg_erase>
  a247aa:	842a                	mv	s0,a0
  a247ac:	f95d                	bnez	a0,a24762 <uapi_sfc_reg_erase+0x52>
  a247ae:	415a0a33          	sub	s4,s4,s5
  a247b2:	94d6                	add	s1,s1,s5
  a247b4:	b765                	j	a2475c <uapi_sfc_reg_erase+0x4c>
  a247b6:	4785                	li	a5,1
  a247b8:	bfd1                	j	a2478c <uapi_sfc_reg_erase+0x7c>
  a247ba:	8000 1347 041f      	l.li	s0,0x80001347
  a247c0:	b74d                	j	a24762 <uapi_sfc_reg_erase+0x52>
  a247c2:	f6990fe3          	beq	s2,s1,a24740 <uapi_sfc_reg_erase+0x30>
  a247c6:	80000537          	lui	a0,0x80000
  a247ca:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d85bd>
  a247cc:	bf79                	j	a2476a <uapi_sfc_reg_erase+0x5a>

00a247ce <uapi_sfc_reg_erase_chip>:
  a247ce:	8038                	push	{ra,s0-s1},-16
  a247d0:	00a0 6970 079f      	l.li	a5,0xa06970
  a247d6:	239c                	lbu	a5,0(a5)
  a247d8:	c795                	beqz	a5,a24804 <uapi_sfc_reg_erase_chip+0x36>
  a247da:	004005b7          	lui	a1,0x400
  a247de:	4501                	li	a0,0
  a247e0:	a51ff0ef          	jal	ra,a24230 <sfc_port_write_lock>
  a247e4:	00a0 6958 079f      	l.li	a5,0xa06958
  a247ea:	4b9c                	lw	a5,16(a5)
  a247ec:	84aa                	mv	s1,a0
  a247ee:	4605                	li	a2,1
  a247f0:	438c                	lw	a1,0(a5)
  a247f2:	4501                	li	a0,0
  a247f4:	e94ff0ef          	jal	ra,a23e88 <hal_sfc_reg_erase>
  a247f8:	842a                	mv	s0,a0
  a247fa:	8526                	mv	a0,s1
  a247fc:	a8dff0ef          	jal	ra,a24288 <sfc_port_write_unlock>
  a24800:	8522                	mv	a0,s0
  a24802:	8034                	popret	{ra,s0-s1},16
  a24804:	8000 1340 041f      	l.li	s0,0x80001340
  a2480a:	bfdd                	j	a24800 <uapi_sfc_reg_erase_chip+0x32>

00a2480c <efuse_read_item.part.1>:
  a2480c:	8188                	push	{ra,s0-s6},-48
  a2480e:	00a2 70c0 079f      	l.li	a5,0xa270c0
  a24814:	06a7955b          	muliadd	a0,a5,a0,6
  a24818:	2126                	lhu	s1,2(a0)
  a2481a:	00748a13          	addi	s4,s1,7
  a2481e:	003a5a13          	srli	s4,s4,0x3
  a24822:	07466f63          	bltu	a2,s4,a248a0 <efuse_read_item.part.1+0x94>
  a24826:	00055903          	lhu	s2,0(a0)
  a2482a:	86b2                	mv	a3,a2
  a2482c:	89ae                	mv	s3,a1
  a2482e:	4601                	li	a2,0
  a24830:	85b6                	mv	a1,a3
  a24832:	854e                	mv	a0,s3
  a24834:	587000ef          	jal	ra,a255ba <memset_s>
  a24838:	009967b3          	or	a5,s2,s1
  a2483c:	8b9d                	andi	a5,a5,7
  a2483e:	844a                	mv	s0,s2
  a24840:	cb91                	beqz	a5,a24854 <efuse_read_item.part.1+0x48>
  a24842:	6a41                	lui	s4,0x10
  a24844:	94ca                	add	s1,s1,s2
  a24846:	4aa1                	li	s5,8
  a24848:	1a7d                	addi	s4,s4,-1 # ffff <ccause+0xf03d>
  a2484a:	4b05                	li	s6,1
  a2484c:	00944b63          	blt	s0,s1,a24862 <efuse_read_item.part.1+0x56>
  a24850:	4501                	li	a0,0
  a24852:	a039                	j	a24860 <efuse_read_item.part.1+0x54>
  a24854:	8652                	mv	a2,s4
  a24856:	00395593          	srli	a1,s2,0x3
  a2485a:	854e                	mv	a0,s3
  a2485c:	a86fe0ef          	jal	ra,a22ae2 <uapi_efuse_read_buffer>
  a24860:	8184                	popret	{ra,s0-s6},48
  a24862:	00747613          	andi	a2,s0,7
  a24866:	00345593          	srli	a1,s0,0x3
  a2486a:	00f10513          	addi	a0,sp,15
  a2486e:	a1efe0ef          	jal	ra,a22a8c <uapi_efuse_read_bit>
  a24872:	f57d                	bnez	a0,a24860 <efuse_read_item.part.1+0x54>
  a24874:	00f14783          	lbu	a5,15(sp)
  a24878:	c38d                	beqz	a5,a2489a <efuse_read_item.part.1+0x8e>
  a2487a:	412407b3          	sub	a5,s0,s2
  a2487e:	0357c733          	div	a4,a5,s5
  a24882:	0357e7b3          	rem	a5,a5,s5
  a24886:	01477733          	and	a4,a4,s4
  a2488a:	974e                	add	a4,a4,s3
  a2488c:	2314                	lbu	a3,0(a4)
  a2488e:	0147f7b3          	and	a5,a5,s4
  a24892:	00fb17b3          	sll	a5,s6,a5
  a24896:	8fd5                	or	a5,a5,a3
  a24898:	a31c                	sb	a5,0(a4)
  a2489a:	0405                	addi	s0,s0,1
  a2489c:	9c21                	uxth	s0
  a2489e:	b77d                	j	a2484c <efuse_read_item.part.1+0x40>
  a248a0:	557d                	li	a0,-1
  a248a2:	bf7d                	j	a24860 <efuse_read_item.part.1+0x54>

00a248a4 <efuse_port_register_hal_funcs>:
  a248a4:	8018                	push	{ra},-16
  a248a6:	d02fe0ef          	jal	ra,a22da8 <hal_efuse_funcs_get>
  a248aa:	8010                	pop	{ra},16
  a248ac:	b0afe06f          	j	a22bb6 <hal_efuse_register_funcs>

00a248b0 <hal_efuse_get_region>:
  a248b0:	8121                	srli	a0,a0,0x8
  a248b2:	9d01                	uxtb	a0
  a248b4:	8082                	ret

00a248b6 <hal_efuse_get_byte_offset>:
  a248b6:	9d01                	uxtb	a0
  a248b8:	8082                	ret

00a248ba <efuse_read_item>:
  a248ba:	c589                	beqz	a1,a248c4 <efuse_read_item+0xa>
  a248bc:	1305723b          	bgeui	a0,19,a248c4 <efuse_read_item+0xa>
  a248c0:	f4dff06f          	j	a2480c <efuse_read_item.part.1>
  a248c4:	557d                	li	a0,-1
  a248c6:	8082                	ret

00a248c8 <set_efuse_period>:
  a248c8:	8018                	push	{ra},-16
  a248ca:	2895                	jal	ra,a2493e <get_tcxo_freq>
  a248cc:	010513bb          	bnei	a0,1,a248da <set_efuse_period+0x12>
  a248d0:	02900513          	li	a0,41
  a248d4:	8010                	pop	{ra},16
  a248d6:	cc8fe06f          	j	a22d9e <hal_efuse_set_clock_period>
  a248da:	4565                	li	a0,25
  a248dc:	bfe5                	j	a248d4 <set_efuse_period+0xc>

00a248de <malloc_port>:
  a248de:	f84fd06f          	j	a22062 <malloc>

00a248e2 <malloc_port_init>:
  a248e2:	8118                	push	{ra},-32
  a248e4:	00a2 1f88 079f      	l.li	a5,0xa21f88
  a248ea:	c23e                	sw	a5,4(sp)
  a248ec:	00a2 2098 079f      	l.li	a5,0xa22098
  a248f2:	c63e                	sw	a5,12(sp)
  a248f4:	0048                	addi	a0,sp,4
  a248f6:	00a2 48de 079f      	l.li	a5,0xa248de
  a248fc:	c43e                	sw	a5,8(sp)
  a248fe:	e36fd0ef          	jal	ra,a21f34 <malloc_register_funcs>
  a24902:	00a07537          	lui	a0,0xa07
  a24906:	0001 9560 079f      	l.li	a5,0x19560
  a2490c:	aa050593          	addi	a1,a0,-1376 # a06aa0 <__boot_uart_end__>
  a24910:	95be                	add	a1,a1,a5
  a24912:	aa050513          	addi	a0,a0,-1376
  a24916:	e72fd0ef          	jal	ra,a21f88 <malloc_init>
  a2491a:	8114                	popret	{ra},32

00a2491c <reboot_port_reboot_chip>:
  a2491c:	8018                	push	{ra},-16
  a2491e:	8f8fe0ef          	jal	ra,a22a16 <uapi_watchdog_deinit>
  a24922:	0000 0bb8 051f      	l.li	a0,0xbb8
  a24928:	acbfd0ef          	jal	ra,a223f2 <uapi_tcxo_delay_us>
  a2492c:	40002737          	lui	a4,0x40002
  a24930:	11072783          	lw	a5,272(a4) # 40002110 <__data_load__+0x3f5da6cc>
  a24934:	0047e793          	ori	a5,a5,4
  a24938:	10f72823          	sw	a5,272(a4)
  a2493c:	8014                	popret	{ra},16

00a2493e <get_tcxo_freq>:
  a2493e:	400007b7          	lui	a5,0x40000
  a24942:	4bc8                	lw	a0,20(a5)
  a24944:	8905                	andi	a0,a0,1
  a24946:	8082                	ret

00a24948 <boot_clock_adapt>:
  a24948:	8028                	push	{ra,s0},-16
  a2494a:	ff5ff0ef          	jal	ra,a2493e <get_tcxo_freq>
  a2494e:	010518bb          	bnei	a0,1,a24970 <boot_clock_adapt+0x28>
  a24952:	016e3437          	lui	s0,0x16e3
  a24956:	60040593          	addi	a1,s0,1536 # 16e3600 <__data_load__+0xcbbbbc>
  a2495a:	4501                	li	a0,0
  a2495c:	ea0ff0ef          	jal	ra,a23ffc <uart_port_set_clock_value>
  a24960:	4561                	li	a0,24
  a24962:	f28ff0ef          	jal	ra,a2408a <tcxo_porting_ticks_per_usec_set>
  a24966:	60040513          	addi	a0,s0,1536
  a2496a:	8020                	pop	{ra,s0},16
  a2496c:	f3aff06f          	j	a240a6 <watchdog_port_set_clock>
  a24970:	02626437          	lui	s0,0x2626
  a24974:	a0040593          	addi	a1,s0,-1536 # 2625a00 <__data_load__+0x1bfdfbc>
  a24978:	4501                	li	a0,0
  a2497a:	e82ff0ef          	jal	ra,a23ffc <uart_port_set_clock_value>
  a2497e:	02800513          	li	a0,40
  a24982:	f08ff0ef          	jal	ra,a2408a <tcxo_porting_ticks_per_usec_set>
  a24986:	a0040513          	addi	a0,s0,-1536
  a2498a:	b7c5                	j	a2496a <boot_clock_adapt+0x22>

00a2498c <switch_flash_clock_to_pll>:
  a2498c:	8028                	push	{ra,s0},-16
  a2498e:	40003437          	lui	s0,0x40003
  a24992:	4785                	li	a5,1
  a24994:	4af42223          	sw	a5,1188(s0) # 400034a4 <__data_load__+0x3f5dba60>
  a24998:	4505                	li	a0,1
  a2499a:	a59fd0ef          	jal	ra,a223f2 <uapi_tcxo_delay_us>
  a2499e:	478d                	li	a5,3
  a249a0:	4af42223          	sw	a5,1188(s0)
  a249a4:	44001737          	lui	a4,0x44001
  a249a8:	13472783          	lw	a5,308(a4) # 44001134 <__data_load__+0x435d96f0>
  a249ac:	000406b7          	lui	a3,0x40
  a249b0:	8fd5                	or	a5,a5,a3
  a249b2:	12f72a23          	sw	a5,308(a4)
  a249b6:	8024                	popret	{ra,s0},16

00a249b8 <config_sfc_ctrl_ds>:
  a249b8:	4400e7b7          	lui	a5,0x4400e
  a249bc:	8687a703          	lw	a4,-1944(a5) # 4400d868 <__data_load__+0x435e5e24>
  a249c0:	f8f77713          	andi	a4,a4,-113
  a249c4:	03076713          	ori	a4,a4,48
  a249c8:	86e7a423          	sw	a4,-1944(a5)
  a249cc:	86c7a703          	lw	a4,-1940(a5)
  a249d0:	f8f77713          	andi	a4,a4,-113
  a249d4:	02076713          	ori	a4,a4,32
  a249d8:	86e7a623          	sw	a4,-1940(a5)
  a249dc:	8707a703          	lw	a4,-1936(a5)
  a249e0:	f8f77713          	andi	a4,a4,-113
  a249e4:	02076713          	ori	a4,a4,32
  a249e8:	86e7a823          	sw	a4,-1936(a5)
  a249ec:	8747a703          	lw	a4,-1932(a5)
  a249f0:	f8f77713          	andi	a4,a4,-113
  a249f4:	02076713          	ori	a4,a4,32
  a249f8:	86e7aa23          	sw	a4,-1932(a5)
  a249fc:	8787a703          	lw	a4,-1928(a5)
  a24a00:	f8f77713          	andi	a4,a4,-113
  a24a04:	02076713          	ori	a4,a4,32
  a24a08:	86e7ac23          	sw	a4,-1928(a5)
  a24a0c:	87c7a703          	lw	a4,-1924(a5)
  a24a10:	f8f77713          	andi	a4,a4,-113
  a24a14:	02076713          	ori	a4,a4,32
  a24a18:	86e7ae23          	sw	a4,-1924(a5)
  a24a1c:	8082                	ret

00a24a1e <udelay>:
  a24a1e:	9d5fd06f          	j	a223f2 <uapi_tcxo_delay_us>

00a24a22 <mdelay>:
  a24a22:	981fd06f          	j	a223a2 <uapi_tcxo_delay_ms>

00a24a26 <serial_putc>:
  a24a26:	8118                	push	{ra},-32
  a24a28:	00a0 6973 079f      	l.li	a5,0xa06973
  a24a2e:	239c                	lbu	a5,0(a5)
  a24a30:	00a107a3          	sb	a0,15(sp)
  a24a34:	eb81                	bnez	a5,a24a44 <serial_putc+0x1e>
  a24a36:	4689                	li	a3,2
  a24a38:	4605                	li	a2,1
  a24a3a:	00f10593          	addi	a1,sp,15
  a24a3e:	4501                	li	a0,0
  a24a40:	df9fd0ef          	jal	ra,a22838 <uapi_uart_write>
  a24a44:	8114                	popret	{ra},32

00a24a46 <serial_puts>:
  a24a46:	00a0 6973 079f      	l.li	a5,0xa06973
  a24a4c:	239c                	lbu	a5,0(a5)
  a24a4e:	ef89                	bnez	a5,a24a68 <serial_puts+0x22>
  a24a50:	8118                	push	{ra},-32
  a24a52:	c62a                	sw	a0,12(sp)
  a24a54:	b58fc0ef          	jal	ra,a20dac <strlen>
  a24a58:	45b2                	lw	a1,12(sp)
  a24a5a:	862a                	mv	a2,a0
  a24a5c:	7d000693          	li	a3,2000
  a24a60:	4501                	li	a0,0
  a24a62:	8110                	pop	{ra},32
  a24a64:	dd5fd06f          	j	a22838 <uapi_uart_write>
  a24a68:	8082                	ret

00a24a6a <serial_put_buf>:
  a24a6a:	00a0 6973 079f      	l.li	a5,0xa06973
  a24a70:	239c                	lbu	a5,0(a5)
  a24a72:	862e                	mv	a2,a1
  a24a74:	e799                	bnez	a5,a24a82 <serial_put_buf+0x18>
  a24a76:	85aa                	mv	a1,a0
  a24a78:	7d000693          	li	a3,2000
  a24a7c:	4501                	li	a0,0
  a24a7e:	dbbfd06f          	j	a22838 <uapi_uart_write>
  a24a82:	8082                	ret

00a24a84 <serial_getc>:
  a24a84:	8118                	push	{ra},-32
  a24a86:	4689                	li	a3,2
  a24a88:	4605                	li	a2,1
  a24a8a:	00f10593          	addi	a1,sp,15
  a24a8e:	4501                	li	a0,0
  a24a90:	000107a3          	sb	zero,15(sp)
  a24a94:	e17fd0ef          	jal	ra,a228aa <uapi_uart_read>
  a24a98:	00f14503          	lbu	a0,15(sp)
  a24a9c:	8114                	popret	{ra},32

00a24a9e <serial_puthex>:
  a24a9e:	00a0 6973 079f      	l.li	a5,0xa06973
  a24aa4:	239c                	lbu	a5,0(a5)
  a24aa6:	efa9                	bnez	a5,a24b00 <serial_puthex+0x62>
  a24aa8:	8098                	push	{ra,s0-s7},-48
  a24aaa:	84aa                	mv	s1,a0
  a24aac:	00a2 713c 051f      	l.li	a0,0xa2713c
  a24ab2:	8a2e                	mv	s4,a1
  a24ab4:	4401                	li	s0,0
  a24ab6:	f91ff0ef          	jal	ra,a24a46 <serial_puts>
  a24aba:	4901                	li	s2,0
  a24abc:	4aa5                	li	s5,9
  a24abe:	4b1d                	li	s6,7
  a24ac0:	03000b93          	li	s7,48
  a24ac4:	49a1                	li	s3,8
  a24ac6:	01c4d713          	srli	a4,s1,0x1c
  a24aca:	0ff77793          	andi	a5,a4,255
  a24ace:	03078513          	addi	a0,a5,48
  a24ad2:	00eaf463          	bgeu	s5,a4,a24ada <serial_puthex+0x3c>
  a24ad6:	03778513          	addi	a0,a5,55
  a24ada:	0492                	slli	s1,s1,0x4
  a24adc:	000a0563          	beqz	s4,a24ae6 <serial_puthex+0x48>
  a24ae0:	f47ff0ef          	jal	ra,a24a26 <serial_putc>
  a24ae4:	a811                	j	a24af8 <serial_puthex+0x5a>
  a24ae6:	fe091de3          	bnez	s2,a24ae0 <serial_puthex+0x42>
  a24aea:	ff640be3          	beq	s0,s6,a24ae0 <serial_puthex+0x42>
  a24aee:	01750563          	beq	a0,s7,a24af8 <serial_puthex+0x5a>
  a24af2:	f35ff0ef          	jal	ra,a24a26 <serial_putc>
  a24af6:	4905                	li	s2,1
  a24af8:	0405                	addi	s0,s0,1
  a24afa:	fd3416e3          	bne	s0,s3,a24ac6 <serial_puthex+0x28>
  a24afe:	8094                	popret	{ra,s0-s7},48
  a24b00:	8082                	ret

00a24b02 <serial_getc_timeout>:
  a24b02:	8048                	push	{ra,s0-s2},-16
  a24b04:	84aa                	mv	s1,a0
  a24b06:	892e                	mv	s2,a1
  a24b08:	4401                	li	s0,0
  a24b0a:	00941463          	bne	s0,s1,a24b12 <serial_getc_timeout+0x10>
  a24b0e:	557d                	li	a0,-1
  a24b10:	a811                	j	a24b24 <serial_getc_timeout+0x22>
  a24b12:	4501                	li	a0,0
  a24b14:	e09fd0ef          	jal	ra,a2291c <uapi_uart_rx_fifo_is_empty>
  a24b18:	e519                	bnez	a0,a24b26 <serial_getc_timeout+0x24>
  a24b1a:	f6bff0ef          	jal	ra,a24a84 <serial_getc>
  a24b1e:	00a90023          	sb	a0,0(s2)
  a24b22:	4501                	li	a0,0
  a24b24:	8044                	popret	{ra,s0-s2},16
  a24b26:	0405                	addi	s0,s0,1
  a24b28:	b7cd                	j	a24b0a <serial_getc_timeout+0x8>

00a24b2a <boot_put_errno>:
  a24b2a:	8028                	push	{ra,s0},-16
  a24b2c:	842a                	mv	s0,a0
  a24b2e:	00a2 7134 051f      	l.li	a0,0xa27134
  a24b34:	f13ff0ef          	jal	ra,a24a46 <serial_puts>
  a24b38:	4581                	li	a1,0
  a24b3a:	8522                	mv	a0,s0
  a24b3c:	f63ff0ef          	jal	ra,a24a9e <serial_puthex>
  a24b40:	00a2 6e68 051f      	l.li	a0,0xa26e68
  a24b46:	f01ff0ef          	jal	ra,a24a46 <serial_puts>
  a24b4a:	06400513          	li	a0,100
  a24b4e:	8020                	pop	{ra,s0},16
  a24b50:	ed3ff06f          	j	a24a22 <mdelay>

00a24b54 <boot_msg0>:
  a24b54:	8018                	push	{ra},-16
  a24b56:	ef1ff0ef          	jal	ra,a24a46 <serial_puts>
  a24b5a:	00a2 7448 051f      	l.li	a0,0xa27448
  a24b60:	8010                	pop	{ra},16
  a24b62:	ee5ff06f          	j	a24a46 <serial_puts>

00a24b66 <boot_msg1>:
  a24b66:	8028                	push	{ra,s0},-16
  a24b68:	842e                	mv	s0,a1
  a24b6a:	eddff0ef          	jal	ra,a24a46 <serial_puts>
  a24b6e:	8522                	mv	a0,s0
  a24b70:	4581                	li	a1,0
  a24b72:	f2dff0ef          	jal	ra,a24a9e <serial_puthex>
  a24b76:	00a2 7448 051f      	l.li	a0,0xa27448
  a24b7c:	8020                	pop	{ra,s0},16
  a24b7e:	ec9ff06f          	j	a24a46 <serial_puts>

00a24b82 <boot_msg2>:
  a24b82:	8128                	push	{ra,s0},-32
  a24b84:	842e                	mv	s0,a1
  a24b86:	c632                	sw	a2,12(sp)
  a24b88:	ebfff0ef          	jal	ra,a24a46 <serial_puts>
  a24b8c:	4581                	li	a1,0
  a24b8e:	8522                	mv	a0,s0
  a24b90:	f0fff0ef          	jal	ra,a24a9e <serial_puthex>
  a24b94:	00a2 71b4 051f      	l.li	a0,0xa271b4
  a24b9a:	eadff0ef          	jal	ra,a24a46 <serial_puts>
  a24b9e:	4632                	lw	a2,12(sp)
  a24ba0:	4581                	li	a1,0
  a24ba2:	8532                	mv	a0,a2
  a24ba4:	efbff0ef          	jal	ra,a24a9e <serial_puthex>
  a24ba8:	00a2 7448 051f      	l.li	a0,0xa27448
  a24bae:	8120                	pop	{ra,s0},32
  a24bb0:	e97ff06f          	j	a24a46 <serial_puts>

00a24bb4 <hiburn_uart_init>:
  a24bb4:	8228                	push	{ra,s0},-48
  a24bb6:	00a0 2494 079f      	l.li	a5,0xa02494
  a24bbc:	00078023          	sb	zero,0(a5)
  a24bc0:	02900793          	li	a5,41
  a24bc4:	00f10623          	sb	a5,12(sp)
  a24bc8:	07300793          	li	a5,115
  a24bcc:	00f107a3          	sb	a5,15(sp)
  a24bd0:	00f10723          	sb	a5,14(sp)
  a24bd4:	411c                	lw	a5,0(a0)
  a24bd6:	02a00713          	li	a4,42
  a24bda:	00e106a3          	sb	a4,13(sp)
  a24bde:	c83e                	sw	a5,16(sp)
  a24be0:	215c                	lbu	a5,4(a0)
  a24be2:	2178                	lbu	a4,6(a0)
  a24be4:	00010423          	sb	zero,8(sp)
  a24be8:	17ed                	addi	a5,a5,-5
  a24bea:	00f10a23          	sb	a5,20(sp)
  a24bee:	fff70793          	addi	a5,a4,-1
  a24bf2:	9f81                	uxtb	a5
  a24bf4:	0207fdbb          	bgeui	a5,2,a24c2a <hiburn_uart_init+0x76>
  a24bf8:	00e10b23          	sb	a4,22(sp)
  a24bfc:	315c                	lbu	a5,5(a0)
  a24bfe:	4405                	li	s0,1
  a24c00:	0838                	addi	a4,sp,24
  a24c02:	17fd                	addi	a5,a5,-1
  a24c04:	00f10aa3          	sb	a5,21(sp)
  a24c08:	4681                	li	a3,0
  a24c0a:	003c                	addi	a5,sp,8
  a24c0c:	0810                	addi	a2,sp,16
  a24c0e:	006c                	addi	a1,sp,12
  a24c10:	4501                	li	a0,0
  a24c12:	cc3e                	sw	a5,24(sp)
  a24c14:	ce22                	sw	s0,28(sp)
  a24c16:	af5fd0ef          	jal	ra,a2270a <uapi_uart_init>
  a24c1a:	4501                	li	a0,0
  a24c1c:	c06ff0ef          	jal	ra,a24022 <uart_port_unregister_irq>
  a24c20:	00a0 6972 079f      	l.li	a5,0xa06972
  a24c26:	a380                	sb	s0,0(a5)
  a24c28:	8224                	popret	{ra,s0},48
  a24c2a:	00010b23          	sb	zero,22(sp)
  a24c2e:	b7f9                	j	a24bfc <hiburn_uart_init+0x48>

00a24c30 <hiburn_uart_deinit>:
  a24c30:	8018                	push	{ra},-16
  a24c32:	00a0 2494 079f      	l.li	a5,0xa02494
  a24c38:	2388                	lbu	a0,0(a5)
  a24c3a:	b9ffd0ef          	jal	ra,a227d8 <uapi_uart_deinit>
  a24c3e:	00a0 6972 079f      	l.li	a5,0xa06972
  a24c44:	00078023          	sb	zero,0(a5)
  a24c48:	8014                	popret	{ra},16

00a24c4a <boot_wdt_kick>:
  a24c4a:	e07fd06f          	j	a22a50 <uapi_watchdog_kick>

00a24c4e <set_reset_count>:
  a24c4e:	40000737          	lui	a4,0x40000
  a24c52:	471c                	lw	a5,8(a4)
  a24c54:	893d                	andi	a0,a0,15
  a24c56:	f0f7f793          	andi	a5,a5,-241
  a24c5a:	08a7a79b          	orshf	a5,a5,a0,sll,4
  a24c5e:	c71c                	sw	a5,8(a4)
  a24c60:	8082                	ret

00a24c62 <update_reset_count>:
  a24c62:	8038                	push	{ra,s0-s1},-16
  a24c64:	400007b7          	lui	a5,0x40000
  a24c68:	4780                	lw	s0,8(a5)
  a24c6a:	00a2 7140 051f      	l.li	a0,0xa27140
  a24c70:	8011                	srli	s0,s0,0x4
  a24c72:	883d                	andi	s0,s0,15
  a24c74:	00140493          	addi	s1,s0,1
  a24c78:	85a6                	mv	a1,s1
  a24c7a:	eedff0ef          	jal	ra,a24b66 <boot_msg1>
  a24c7e:	06400513          	li	a0,100
  a24c82:	f20fd0ef          	jal	ra,a223a2 <uapi_tcxo_delay_ms>
  a24c86:	0f04033b          	beqi	s0,15,a24c92 <update_reset_count+0x30>
  a24c8a:	8526                	mv	a0,s1
  a24c8c:	8030                	pop	{ra,s0-s1},16
  a24c8e:	fc1ff06f          	j	a24c4e <set_reset_count>
  a24c92:	d4ffd0ef          	jal	ra,a229e0 <uapi_watchdog_disable>
  a24c96:	10500073          	wfi
  a24c9a:	a001                	j	a24c9a <update_reset_count+0x38>

00a24c9c <get_efuse_chip_type>:
  a24c9c:	8228                	push	{ra,s0},-48
  a24c9e:	842a                	mv	s0,a0
  a24ca0:	4605                	li	a2,1
  a24ca2:	00b10593          	addi	a1,sp,11
  a24ca6:	4521                	li	a0,8
  a24ca8:	000105a3          	sb	zero,11(sp)
  a24cac:	c0fff0ef          	jal	ra,a248ba <efuse_read_item>
  a24cb0:	c909                	beqz	a0,a24cc2 <get_efuse_chip_type+0x26>
  a24cb2:	85aa                	mv	a1,a0
  a24cb4:	00a2 7178 051f      	l.li	a0,0xa27178
  a24cba:	eadff0ef          	jal	ra,a24b66 <boot_msg1>
  a24cbe:	557d                	li	a0,-1
  a24cc0:	8224                	popret	{ra,s0},48
  a24cc2:	00b14783          	lbu	a5,11(sp)
  a24cc6:	0037f713          	andi	a4,a5,3
  a24cca:	c719                	beqz	a4,a24cd8 <get_efuse_chip_type+0x3c>
  a24ccc:	8bb1                	andi	a5,a5,12
  a24cce:	e789                	bnez	a5,a24cd8 <get_efuse_chip_type+0x3c>
  a24cd0:	63e00793          	li	a5,1598
  a24cd4:	c01c                	sw	a5,0(s0)
  a24cd6:	b7ed                	j	a24cc0 <get_efuse_chip_type+0x24>
  a24cd8:	4651                	li	a2,20
  a24cda:	006c                	addi	a1,sp,12
  a24cdc:	4505                	li	a0,1
  a24cde:	c602                	sw	zero,12(sp)
  a24ce0:	c802                	sw	zero,16(sp)
  a24ce2:	ca02                	sw	zero,20(sp)
  a24ce4:	cc02                	sw	zero,24(sp)
  a24ce6:	ce02                	sw	zero,28(sp)
  a24ce8:	bd3ff0ef          	jal	ra,a248ba <efuse_read_item>
  a24cec:	c511                	beqz	a0,a24cf8 <get_efuse_chip_type+0x5c>
  a24cee:	85aa                	mv	a1,a0
  a24cf0:	00a2 7198 051f      	l.li	a0,0xa27198
  a24cf6:	b7d1                	j	a24cba <get_efuse_chip_type+0x1e>
  a24cf8:	01514703          	lbu	a4,21(sp)
  a24cfc:	01414783          	lbu	a5,20(sp)
  a24d00:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a24d04:	6721                	lui	a4,0x8
  a24d06:	177d                	addi	a4,a4,-1 # 7fff <ccause+0x703d>
  a24d08:	8ff9                	and	a5,a5,a4
  a24d0a:	0000 3058 071f      	l.li	a4,0x3058
  a24d10:	fce780e3          	beq	a5,a4,a24cd0 <get_efuse_chip_type+0x34>
  a24d14:	06300793          	li	a5,99
  a24d18:	bf75                	j	a24cd4 <get_efuse_chip_type+0x38>

00a24d1a <check_chip_type>:
  a24d1a:	8218                	push	{ra},-48
  a24d1c:	00a2 0080 079f      	l.li	a5,0xa20080
  a24d22:	53d0                	lw	a2,36(a5)
  a24d24:	ce02                	sw	zero,28(sp)
  a24d26:	c215                	beqz	a2,a24d4a <check_chip_type+0x30>
  a24d28:	0868                	addi	a0,sp,28
  a24d2a:	c632                	sw	a2,12(sp)
  a24d2c:	f71ff0ef          	jal	ra,a24c9c <get_efuse_chip_type>
  a24d30:	ed19                	bnez	a0,a24d4e <check_chip_type+0x34>
  a24d32:	45f2                	lw	a1,28(sp)
  a24d34:	4632                	lw	a2,12(sp)
  a24d36:	00c58a63          	beq	a1,a2,a24d4a <check_chip_type+0x30>
  a24d3a:	00a2 7154 051f      	l.li	a0,0xa27154
  a24d40:	e43ff0ef          	jal	ra,a24b82 <boot_msg2>
  a24d44:	c9dfd0ef          	jal	ra,a229e0 <uapi_watchdog_disable>
  a24d48:	a001                	j	a24d48 <check_chip_type+0x2e>
  a24d4a:	4501                	li	a0,0
  a24d4c:	8214                	popret	{ra},48
  a24d4e:	557d                	li	a0,-1
  a24d50:	bff5                	j	a24d4c <check_chip_type+0x32>

00a24d52 <boot_malloc_init>:
  a24d52:	b91ff06f          	j	a248e2 <malloc_port_init>

00a24d56 <boot_malloc>:
  a24d56:	b0cfd06f          	j	a22062 <malloc>

00a24d5a <interrupt0_handler>:
  a24d5a:	8028                	push	{ra,s0},-16
  a24d5c:	040007b7          	lui	a5,0x4000
  a24d60:	3047b7f3          	csrrc	a5,mie,a5
  a24d64:	00a07437          	lui	s0,0xa07
  a24d68:	97440713          	addi	a4,s0,-1676 # a06974 <g_interrupt_running>
  a24d6c:	431c                	lw	a5,0(a4)
  a24d6e:	97440413          	addi	s0,s0,-1676
  a24d72:	0785                	addi	a5,a5,1 # 4000001 <__data_load__+0x35d85bd>
  a24d74:	c31c                	sw	a5,0(a4)
  a24d76:	22c9                	jal	ra,a24f38 <isr_get_ramexceptiontable_addr>
  a24d78:	5538                	lw	a4,104(a0)
  a24d7a:	00a2 534a 079f      	l.li	a5,0xa2534a
  a24d80:	00f70563          	beq	a4,a5,a24d8a <interrupt0_handler+0x30>
  a24d84:	2a55                	jal	ra,a24f38 <isr_get_ramexceptiontable_addr>
  a24d86:	553c                	lw	a5,104(a0)
  a24d88:	9782                	jalr	a5
  a24d8a:	040007b7          	lui	a5,0x4000
  a24d8e:	3047a7f3          	csrrs	a5,mie,a5
  a24d92:	401c                	lw	a5,0(s0)
  a24d94:	17fd                	addi	a5,a5,-1 # 3ffffff <__data_load__+0x35d85bb>
  a24d96:	c01c                	sw	a5,0(s0)
  a24d98:	8024                	popret	{ra,s0},16

00a24d9a <interrupt1_handler>:
  a24d9a:	8028                	push	{ra,s0},-16
  a24d9c:	080007b7          	lui	a5,0x8000
  a24da0:	3047b7f3          	csrrc	a5,mie,a5
  a24da4:	00a07437          	lui	s0,0xa07
  a24da8:	97440713          	addi	a4,s0,-1676 # a06974 <g_interrupt_running>
  a24dac:	431c                	lw	a5,0(a4)
  a24dae:	97440413          	addi	s0,s0,-1676
  a24db2:	0785                	addi	a5,a5,1 # 8000001 <__data_load__+0x75d85bd>
  a24db4:	c31c                	sw	a5,0(a4)
  a24db6:	2249                	jal	ra,a24f38 <isr_get_ramexceptiontable_addr>
  a24db8:	5578                	lw	a4,108(a0)
  a24dba:	00a2 534a 079f      	l.li	a5,0xa2534a
  a24dc0:	00f70563          	beq	a4,a5,a24dca <interrupt1_handler+0x30>
  a24dc4:	2a95                	jal	ra,a24f38 <isr_get_ramexceptiontable_addr>
  a24dc6:	557c                	lw	a5,108(a0)
  a24dc8:	9782                	jalr	a5
  a24dca:	080007b7          	lui	a5,0x8000
  a24dce:	3047a7f3          	csrrs	a5,mie,a5
  a24dd2:	401c                	lw	a5,0(s0)
  a24dd4:	17fd                	addi	a5,a5,-1 # 7ffffff <__data_load__+0x75d85bb>
  a24dd6:	c01c                	sw	a5,0(s0)
  a24dd8:	8024                	popret	{ra,s0},16

00a24dda <interrupt2_handler>:
  a24dda:	8028                	push	{ra,s0},-16
  a24ddc:	100007b7          	lui	a5,0x10000
  a24de0:	3047b7f3          	csrrc	a5,mie,a5
  a24de4:	00a07437          	lui	s0,0xa07
  a24de8:	97440713          	addi	a4,s0,-1676 # a06974 <g_interrupt_running>
  a24dec:	431c                	lw	a5,0(a4)
  a24dee:	97440413          	addi	s0,s0,-1676
  a24df2:	0785                	addi	a5,a5,1 # 10000001 <__data_load__+0xf5d85bd>
  a24df4:	c31c                	sw	a5,0(a4)
  a24df6:	2289                	jal	ra,a24f38 <isr_get_ramexceptiontable_addr>
  a24df8:	5938                	lw	a4,112(a0)
  a24dfa:	00a2 534a 079f      	l.li	a5,0xa2534a
  a24e00:	00f70563          	beq	a4,a5,a24e0a <interrupt2_handler+0x30>
  a24e04:	2a15                	jal	ra,a24f38 <isr_get_ramexceptiontable_addr>
  a24e06:	593c                	lw	a5,112(a0)
  a24e08:	9782                	jalr	a5
  a24e0a:	100007b7          	lui	a5,0x10000
  a24e0e:	3047a7f3          	csrrs	a5,mie,a5
  a24e12:	401c                	lw	a5,0(s0)
  a24e14:	17fd                	addi	a5,a5,-1 # fffffff <__data_load__+0xf5d85bb>
  a24e16:	c01c                	sw	a5,0(s0)
  a24e18:	8024                	popret	{ra,s0},16

00a24e1a <interrupt3_handler>:
  a24e1a:	8028                	push	{ra,s0},-16
  a24e1c:	200007b7          	lui	a5,0x20000
  a24e20:	3047b7f3          	csrrc	a5,mie,a5
  a24e24:	00a07437          	lui	s0,0xa07
  a24e28:	97440713          	addi	a4,s0,-1676 # a06974 <g_interrupt_running>
  a24e2c:	431c                	lw	a5,0(a4)
  a24e2e:	97440413          	addi	s0,s0,-1676
  a24e32:	0785                	addi	a5,a5,1 # 20000001 <__data_load__+0x1f5d85bd>
  a24e34:	c31c                	sw	a5,0(a4)
  a24e36:	2209                	jal	ra,a24f38 <isr_get_ramexceptiontable_addr>
  a24e38:	5978                	lw	a4,116(a0)
  a24e3a:	00a2 534a 079f      	l.li	a5,0xa2534a
  a24e40:	00f70563          	beq	a4,a5,a24e4a <interrupt3_handler+0x30>
  a24e44:	28d5                	jal	ra,a24f38 <isr_get_ramexceptiontable_addr>
  a24e46:	597c                	lw	a5,116(a0)
  a24e48:	9782                	jalr	a5
  a24e4a:	200007b7          	lui	a5,0x20000
  a24e4e:	3047a7f3          	csrrs	a5,mie,a5
  a24e52:	401c                	lw	a5,0(s0)
  a24e54:	17fd                	addi	a5,a5,-1 # 1fffffff <__data_load__+0x1f5d85bb>
  a24e56:	c01c                	sw	a5,0(s0)
  a24e58:	8024                	popret	{ra,s0},16

00a24e5a <interrupt4_handler>:
  a24e5a:	8028                	push	{ra,s0},-16
  a24e5c:	400007b7          	lui	a5,0x40000
  a24e60:	3047b7f3          	csrrc	a5,mie,a5
  a24e64:	00a07437          	lui	s0,0xa07
  a24e68:	97440713          	addi	a4,s0,-1676 # a06974 <g_interrupt_running>
  a24e6c:	431c                	lw	a5,0(a4)
  a24e6e:	97440413          	addi	s0,s0,-1676
  a24e72:	0785                	addi	a5,a5,1 # 40000001 <__data_load__+0x3f5d85bd>
  a24e74:	c31c                	sw	a5,0(a4)
  a24e76:	20c9                	jal	ra,a24f38 <isr_get_ramexceptiontable_addr>
  a24e78:	5d38                	lw	a4,120(a0)
  a24e7a:	00a2 534a 079f      	l.li	a5,0xa2534a
  a24e80:	00f70563          	beq	a4,a5,a24e8a <interrupt4_handler+0x30>
  a24e84:	2855                	jal	ra,a24f38 <isr_get_ramexceptiontable_addr>
  a24e86:	5d3c                	lw	a5,120(a0)
  a24e88:	9782                	jalr	a5
  a24e8a:	400007b7          	lui	a5,0x40000
  a24e8e:	3047a7f3          	csrrs	a5,mie,a5
  a24e92:	401c                	lw	a5,0(s0)
  a24e94:	17fd                	addi	a5,a5,-1 # 3fffffff <__data_load__+0x3f5d85bb>
  a24e96:	c01c                	sw	a5,0(s0)
  a24e98:	8024                	popret	{ra,s0},16

00a24e9a <interrupt5_handler>:
  a24e9a:	8028                	push	{ra,s0},-16
  a24e9c:	800007b7          	lui	a5,0x80000
  a24ea0:	3047b7f3          	csrrc	a5,mie,a5
  a24ea4:	00a07437          	lui	s0,0xa07
  a24ea8:	97440713          	addi	a4,s0,-1676 # a06974 <g_interrupt_running>
  a24eac:	431c                	lw	a5,0(a4)
  a24eae:	97440413          	addi	s0,s0,-1676
  a24eb2:	0785                	addi	a5,a5,1 # 80000001 <__data_load__+0x7f5d85bd>
  a24eb4:	c31c                	sw	a5,0(a4)
  a24eb6:	2049                	jal	ra,a24f38 <isr_get_ramexceptiontable_addr>
  a24eb8:	5d78                	lw	a4,124(a0)
  a24eba:	00a2 534a 079f      	l.li	a5,0xa2534a
  a24ec0:	00f70563          	beq	a4,a5,a24eca <interrupt5_handler+0x30>
  a24ec4:	2895                	jal	ra,a24f38 <isr_get_ramexceptiontable_addr>
  a24ec6:	5d7c                	lw	a5,124(a0)
  a24ec8:	9782                	jalr	a5
  a24eca:	800007b7          	lui	a5,0x80000
  a24ece:	3047a7f3          	csrrs	a5,mie,a5
  a24ed2:	401c                	lw	a5,0(s0)
  a24ed4:	17fd                	addi	a5,a5,-1 # 7fffffff <__data_load__+0x7f5d85bb>
  a24ed6:	c01c                	sw	a5,0(s0)
  a24ed8:	8024                	popret	{ra,s0},16

00a24eda <local_interrupt_handler>:
  a24eda:	8038                	push	{ra,s0-s1},-16
  a24edc:	0ed010ef          	jal	ra,a267c8 <global_interrupt_lock>
  a24ee0:	00a074b7          	lui	s1,0xa07
  a24ee4:	97448713          	addi	a4,s1,-1676 # a06974 <g_interrupt_running>
  a24ee8:	431c                	lw	a5,0(a4)
  a24eea:	0785                	addi	a5,a5,1
  a24eec:	c31c                	sw	a5,0(a4)
  a24eee:	0f3010ef          	jal	ra,a267e0 <global_interrupt_restore>
  a24ef2:	34202473          	csrr	s0,mcause
  a24ef6:	2089                	jal	ra,a24f38 <isr_get_ramexceptiontable_addr>
  a24ef8:	6785                	lui	a5,0x1
  a24efa:	17fd                	addi	a5,a5,-1 # fff <ccause+0x3d>
  a24efc:	8c7d                	and	s0,s0,a5
  a24efe:	040a                	slli	s0,s0,0x2
  a24f00:	9522                	add	a0,a0,s0
  a24f02:	4118                	lw	a4,0(a0)
  a24f04:	00a2 4f36 079f      	l.li	a5,0xa24f36
  a24f0a:	97448493          	addi	s1,s1,-1676
  a24f0e:	00f70663          	beq	a4,a5,a24f1a <local_interrupt_handler+0x40>
  a24f12:	201d                	jal	ra,a24f38 <isr_get_ramexceptiontable_addr>
  a24f14:	9522                	add	a0,a0,s0
  a24f16:	411c                	lw	a5,0(a0)
  a24f18:	9782                	jalr	a5
  a24f1a:	0af010ef          	jal	ra,a267c8 <global_interrupt_lock>
  a24f1e:	409c                	lw	a5,0(s1)
  a24f20:	17fd                	addi	a5,a5,-1
  a24f22:	c09c                	sw	a5,0(s1)
  a24f24:	8030                	pop	{ra,s0-s1},16
  a24f26:	0bb0106f          	j	a267e0 <global_interrupt_restore>

00a24f2a <interrupt_number_get>:
  a24f2a:	34202573          	csrr	a0,mcause
  a24f2e:	6785                	lui	a5,0x1
  a24f30:	17fd                	addi	a5,a5,-1 # fff <ccause+0x3d>
  a24f32:	8d7d                	and	a0,a0,a5
  a24f34:	8082                	ret

00a24f36 <b_sub_monitor_handler>:
  a24f36:	a001                	j	a24f36 <b_sub_monitor_handler>

00a24f38 <isr_get_ramexceptiontable_addr>:
  a24f38:	00a2 04bc 051f      	l.li	a0,0xa204bc
  a24f3e:	8082                	ret

00a24f40 <do_hard_fault_handler>:
  a24f40:	c939                	beqz	a0,a24f96 <do_hard_fault_handler+0x56>
  a24f42:	8038                	push	{ra,s0-s1},-16
  a24f44:	4144                	lw	s1,4(a0)
  a24f46:	842a                	mv	s0,a0
  a24f48:	00a2 71fc 051f      	l.li	a0,0xa271fc
  a24f4e:	85a6                	mv	a1,s1
  a24f50:	8d4ff0ef          	jal	ra,a24024 <print_str>
  a24f54:	800007b7          	lui	a5,0x80000
  a24f58:	07b1                	addi	a5,a5,12 # 8000000c <__data_load__+0x7f5d85c8>
  a24f5a:	02f49b63          	bne	s1,a5,a24f90 <do_hard_fault_handler+0x50>
  a24f5e:	00a2 7210 051f      	l.li	a0,0xa27210
  a24f64:	8c0ff0ef          	jal	ra,a24024 <print_str>
  a24f68:	6509                	lui	a0,0x2
  a24f6a:	0521                	addi	a0,a0,8 # 2008 <ccause+0x1046>
  a24f6c:	2119                	jal	ra,a25372 <cpu_utils_set_system_status_by_cause>
  a24f6e:	4c5c                	lw	a5,28(s0)
  a24f70:	8522                	mv	a0,s0
  a24f72:	07c1                	addi	a5,a5,16
  a24f74:	cc5c                	sw	a5,28(s0)
  a24f76:	238d                	jal	ra,a254d8 <set_exception_info_riscv>
  a24f78:	00a0 698c 079f      	l.li	a5,0xa0698c
  a24f7e:	439c                	lw	a5,0(a5)
  a24f80:	c781                	beqz	a5,a24f88 <do_hard_fault_handler+0x48>
  a24f82:	85a2                	mv	a1,s0
  a24f84:	8526                	mv	a0,s1
  a24f86:	9782                	jalr	a5
  a24f88:	4501                	li	a0,0
  a24f8a:	8030                	pop	{ra,s0-s1},16
  a24f8c:	a11fd06f          	j	a2299c <uapi_watchdog_enable>
  a24f90:	6509                	lui	a0,0x2
  a24f92:	0511                	addi	a0,a0,4 # 2004 <ccause+0x1042>
  a24f94:	bfe1                	j	a24f6c <do_hard_fault_handler+0x2c>
  a24f96:	8082                	ret

00a24f98 <exc_info_display.part.3>:
  a24f98:	8028                	push	{ra,s0},-16
  a24f9a:	842a                	mv	s0,a0
  a24f9c:	00a2 746c 051f      	l.li	a0,0xa2746c
  a24fa2:	882ff0ef          	jal	ra,a24024 <print_str>
  a24fa6:	202e                	lhu	a1,2(s0)
  a24fa8:	00a2 74a4 051f      	l.li	a0,0xa274a4
  a24fae:	876ff0ef          	jal	ra,a24024 <print_str>
  a24fb2:	481c                	lw	a5,16(s0)
  a24fb4:	00a2 74bc 051f      	l.li	a0,0xa274bc
  a24fba:	4bcc                	lw	a1,20(a5)
  a24fbc:	868ff0ef          	jal	ra,a24024 <print_str>
  a24fc0:	481c                	lw	a5,16(s0)
  a24fc2:	00a2 74d4 051f      	l.li	a0,0xa274d4
  a24fc8:	4b8c                	lw	a1,16(a5)
  a24fca:	85aff0ef          	jal	ra,a24024 <print_str>
  a24fce:	481c                	lw	a5,16(s0)
  a24fd0:	00a2 74ec 051f      	l.li	a0,0xa274ec
  a24fd6:	478c                	lw	a1,8(a5)
  a24fd8:	84cff0ef          	jal	ra,a24024 <print_str>
  a24fdc:	481c                	lw	a5,16(s0)
  a24fde:	00a2 7504 051f      	l.li	a0,0xa27504
  a24fe4:	43cc                	lw	a1,4(a5)
  a24fe6:	83eff0ef          	jal	ra,a24024 <print_str>
  a24fea:	481c                	lw	a5,16(s0)
  a24fec:	00a2 751c 051f      	l.li	a0,0xa2751c
  a24ff2:	438c                	lw	a1,0(a5)
  a24ff4:	830ff0ef          	jal	ra,a24024 <print_str>
  a24ff8:	481c                	lw	a5,16(s0)
  a24ffa:	00a2 7534 051f      	l.li	a0,0xa27534
  a25000:	08c7a583          	lw	a1,140(a5)
  a25004:	820ff0ef          	jal	ra,a24024 <print_str>
  a25008:	481c                	lw	a5,16(s0)
  a2500a:	00a2 754c 051f      	l.li	a0,0xa2754c
  a25010:	4fcc                	lw	a1,28(a5)
  a25012:	812ff0ef          	jal	ra,a24024 <print_str>
  a25016:	481c                	lw	a5,16(s0)
  a25018:	00a2 7564 051f      	l.li	a0,0xa27564
  a2501e:	47cc                	lw	a1,12(a5)
  a25020:	804ff0ef          	jal	ra,a24024 <print_str>
  a25024:	481c                	lw	a5,16(s0)
  a25026:	00a2 757c 051f      	l.li	a0,0xa2757c
  a2502c:	4f8c                	lw	a1,24(a5)
  a2502e:	ff7fe0ef          	jal	ra,a24024 <print_str>
  a25032:	481c                	lw	a5,16(s0)
  a25034:	00a2 7594 051f      	l.li	a0,0xa27594
  a2503a:	0887a583          	lw	a1,136(a5)
  a2503e:	fe7fe0ef          	jal	ra,a24024 <print_str>
  a25042:	481c                	lw	a5,16(s0)
  a25044:	00a2 75ac 051f      	l.li	a0,0xa275ac
  a2504a:	0847a583          	lw	a1,132(a5)
  a2504e:	fd7fe0ef          	jal	ra,a24024 <print_str>
  a25052:	481c                	lw	a5,16(s0)
  a25054:	00a2 75c4 051f      	l.li	a0,0xa275c4
  a2505a:	0807a583          	lw	a1,128(a5)
  a2505e:	fc7fe0ef          	jal	ra,a24024 <print_str>
  a25062:	481c                	lw	a5,16(s0)
  a25064:	00a2 75dc 051f      	l.li	a0,0xa275dc
  a2506a:	47ec                	lw	a1,76(a5)
  a2506c:	fb9fe0ef          	jal	ra,a24024 <print_str>
  a25070:	481c                	lw	a5,16(s0)
  a25072:	00a2 75f4 051f      	l.li	a0,0xa275f4
  a25078:	47ac                	lw	a1,72(a5)
  a2507a:	fabfe0ef          	jal	ra,a24024 <print_str>
  a2507e:	481c                	lw	a5,16(s0)
  a25080:	00a2 760c 051f      	l.li	a0,0xa2760c
  a25086:	5fec                	lw	a1,124(a5)
  a25088:	f9dfe0ef          	jal	ra,a24024 <print_str>
  a2508c:	481c                	lw	a5,16(s0)
  a2508e:	00a2 7624 051f      	l.li	a0,0xa27624
  a25094:	5fac                	lw	a1,120(a5)
  a25096:	f8ffe0ef          	jal	ra,a24024 <print_str>
  a2509a:	481c                	lw	a5,16(s0)
  a2509c:	00a2 763c 051f      	l.li	a0,0xa2763c
  a250a2:	5bec                	lw	a1,116(a5)
  a250a4:	f81fe0ef          	jal	ra,a24024 <print_str>
  a250a8:	481c                	lw	a5,16(s0)
  a250aa:	00a2 7654 051f      	l.li	a0,0xa27654
  a250b0:	5bac                	lw	a1,112(a5)
  a250b2:	f73fe0ef          	jal	ra,a24024 <print_str>
  a250b6:	481c                	lw	a5,16(s0)
  a250b8:	00a2 766c 051f      	l.li	a0,0xa2766c
  a250be:	57ec                	lw	a1,108(a5)
  a250c0:	f65fe0ef          	jal	ra,a24024 <print_str>
  a250c4:	481c                	lw	a5,16(s0)
  a250c6:	00a2 7684 051f      	l.li	a0,0xa27684
  a250cc:	57ac                	lw	a1,104(a5)
  a250ce:	f57fe0ef          	jal	ra,a24024 <print_str>
  a250d2:	481c                	lw	a5,16(s0)
  a250d4:	00a2 769c 051f      	l.li	a0,0xa2769c
  a250da:	53ec                	lw	a1,100(a5)
  a250dc:	f49fe0ef          	jal	ra,a24024 <print_str>
  a250e0:	481c                	lw	a5,16(s0)
  a250e2:	00a2 76b4 051f      	l.li	a0,0xa276b4
  a250e8:	53ac                	lw	a1,96(a5)
  a250ea:	f3bfe0ef          	jal	ra,a24024 <print_str>
  a250ee:	481c                	lw	a5,16(s0)
  a250f0:	00a2 76cc 051f      	l.li	a0,0xa276cc
  a250f6:	43ec                	lw	a1,68(a5)
  a250f8:	f2dfe0ef          	jal	ra,a24024 <print_str>
  a250fc:	481c                	lw	a5,16(s0)
  a250fe:	00a2 76e4 051f      	l.li	a0,0xa276e4
  a25104:	43ac                	lw	a1,64(a5)
  a25106:	f1ffe0ef          	jal	ra,a24024 <print_str>
  a2510a:	481c                	lw	a5,16(s0)
  a2510c:	00a2 76fc 051f      	l.li	a0,0xa276fc
  a25112:	5fcc                	lw	a1,60(a5)
  a25114:	f11fe0ef          	jal	ra,a24024 <print_str>
  a25118:	481c                	lw	a5,16(s0)
  a2511a:	00a2 7714 051f      	l.li	a0,0xa27714
  a25120:	5f8c                	lw	a1,56(a5)
  a25122:	f03fe0ef          	jal	ra,a24024 <print_str>
  a25126:	481c                	lw	a5,16(s0)
  a25128:	00a2 772c 051f      	l.li	a0,0xa2772c
  a2512e:	5bcc                	lw	a1,52(a5)
  a25130:	ef5fe0ef          	jal	ra,a24024 <print_str>
  a25134:	481c                	lw	a5,16(s0)
  a25136:	00a2 7744 051f      	l.li	a0,0xa27744
  a2513c:	5b8c                	lw	a1,48(a5)
  a2513e:	ee7fe0ef          	jal	ra,a24024 <print_str>
  a25142:	481c                	lw	a5,16(s0)
  a25144:	00a2 775c 051f      	l.li	a0,0xa2775c
  a2514a:	57cc                	lw	a1,44(a5)
  a2514c:	ed9fe0ef          	jal	ra,a24024 <print_str>
  a25150:	481c                	lw	a5,16(s0)
  a25152:	00a2 7774 051f      	l.li	a0,0xa27774
  a25158:	578c                	lw	a1,40(a5)
  a2515a:	ecbfe0ef          	jal	ra,a24024 <print_str>
  a2515e:	481c                	lw	a5,16(s0)
  a25160:	00a2 778c 051f      	l.li	a0,0xa2778c
  a25166:	53cc                	lw	a1,36(a5)
  a25168:	ebdfe0ef          	jal	ra,a24024 <print_str>
  a2516c:	481c                	lw	a5,16(s0)
  a2516e:	00a2 77a4 051f      	l.li	a0,0xa277a4
  a25174:	538c                	lw	a1,32(a5)
  a25176:	eaffe0ef          	jal	ra,a24024 <print_str>
  a2517a:	481c                	lw	a5,16(s0)
  a2517c:	00a2 77bc 051f      	l.li	a0,0xa277bc
  a25182:	4fec                	lw	a1,92(a5)
  a25184:	ea1fe0ef          	jal	ra,a24024 <print_str>
  a25188:	481c                	lw	a5,16(s0)
  a2518a:	00a2 77d4 051f      	l.li	a0,0xa277d4
  a25190:	4fac                	lw	a1,88(a5)
  a25192:	e93fe0ef          	jal	ra,a24024 <print_str>
  a25196:	481c                	lw	a5,16(s0)
  a25198:	00a2 77ec 051f      	l.li	a0,0xa277ec
  a2519e:	4bec                	lw	a1,84(a5)
  a251a0:	e85fe0ef          	jal	ra,a24024 <print_str>
  a251a4:	481c                	lw	a5,16(s0)
  a251a6:	00a2 7804 051f      	l.li	a0,0xa27804
  a251ac:	4bac                	lw	a1,80(a5)
  a251ae:	e77fe0ef          	jal	ra,a24024 <print_str>
  a251b2:	00a2 781c 051f      	l.li	a0,0xa2781c
  a251b8:	8020                	pop	{ra,s0},16
  a251ba:	e6bfe06f          	j	a24024 <print_str>

00a251be <do_process_exception>:
  a251be:	4154                	lw	a3,4(a0)
  a251c0:	00a077b7          	lui	a5,0xa07
  a251c4:	97878713          	addi	a4,a5,-1672 # a06978 <g_exc_info>
  a251c8:	cb08                	sw	a0,16(a4)
  a251ca:	97878513          	addi	a0,a5,-1672
  a251ce:	a336                	sh	a3,2(a4)
  a251d0:	dc9ff06f          	j	a24f98 <exc_info_display.part.3>

00a251d4 <do_trap_unknown>:
  a251d4:	8028                	push	{ra,s0},-16
  a251d6:	842a                	mv	s0,a0
  a251d8:	00a2 744c 051f      	l.li	a0,0xa2744c
  a251de:	e47fe0ef          	jal	ra,a24024 <print_str>
  a251e2:	8522                	mv	a0,s0
  a251e4:	8020                	pop	{ra,s0},16
  a251e6:	fd9ff06f          	j	a251be <do_process_exception>

00a251ea <do_trap_insn_misaligned>:
  a251ea:	8028                	push	{ra,s0},-16
  a251ec:	842a                	mv	s0,a0
  a251ee:	00a2 737c 051f      	l.li	a0,0xa2737c
  a251f4:	e31fe0ef          	jal	ra,a24024 <print_str>
  a251f8:	8522                	mv	a0,s0
  a251fa:	8020                	pop	{ra,s0},16
  a251fc:	fc3ff06f          	j	a251be <do_process_exception>

00a25200 <do_trap_insn_fault>:
  a25200:	8028                	push	{ra,s0},-16
  a25202:	842a                	mv	s0,a0
  a25204:	00a2 7330 051f      	l.li	a0,0xa27330
  a2520a:	e1bfe0ef          	jal	ra,a24024 <print_str>
  a2520e:	8522                	mv	a0,s0
  a25210:	8020                	pop	{ra,s0},16
  a25212:	fadff06f          	j	a251be <do_process_exception>

00a25216 <do_trap_insn_illegal>:
  a25216:	8028                	push	{ra,s0},-16
  a25218:	842a                	mv	s0,a0
  a2521a:	00a2 7358 051f      	l.li	a0,0xa27358
  a25220:	e05fe0ef          	jal	ra,a24024 <print_str>
  a25224:	8522                	mv	a0,s0
  a25226:	8020                	pop	{ra,s0},16
  a25228:	f97ff06f          	j	a251be <do_process_exception>

00a2522c <do_trap_load_misaligned>:
  a2522c:	8028                	push	{ra,s0},-16
  a2522e:	842a                	mv	s0,a0
  a25230:	00a2 73c8 051f      	l.li	a0,0xa273c8
  a25236:	deffe0ef          	jal	ra,a24024 <print_str>
  a2523a:	8522                	mv	a0,s0
  a2523c:	8020                	pop	{ra,s0},16
  a2523e:	f81ff06f          	j	a251be <do_process_exception>

00a25242 <do_trap_load_fault>:
  a25242:	8028                	push	{ra,s0},-16
  a25244:	842a                	mv	s0,a0
  a25246:	00a2 73a8 051f      	l.li	a0,0xa273a8
  a2524c:	dd9fe0ef          	jal	ra,a24024 <print_str>
  a25250:	8522                	mv	a0,s0
  a25252:	8020                	pop	{ra,s0},16
  a25254:	f6bff06f          	j	a251be <do_process_exception>

00a25258 <do_trap_store_misaligned>:
  a25258:	8028                	push	{ra,s0},-16
  a2525a:	842a                	mv	s0,a0
  a2525c:	00a2 741c 051f      	l.li	a0,0xa2741c
  a25262:	dc3fe0ef          	jal	ra,a24024 <print_str>
  a25266:	8522                	mv	a0,s0
  a25268:	8020                	pop	{ra,s0},16
  a2526a:	f55ff06f          	j	a251be <do_process_exception>

00a2526e <do_trap_store_fault>:
  a2526e:	8028                	push	{ra,s0},-16
  a25270:	842a                	mv	s0,a0
  a25272:	00a2 73f0 051f      	l.li	a0,0xa273f0
  a25278:	dadfe0ef          	jal	ra,a24024 <print_str>
  a2527c:	8522                	mv	a0,s0
  a2527e:	8020                	pop	{ra,s0},16
  a25280:	f3fff06f          	j	a251be <do_process_exception>

00a25284 <do_trap_ecall_u>:
  a25284:	8028                	push	{ra,s0},-16
  a25286:	842a                	mv	s0,a0
  a25288:	00a2 7304 051f      	l.li	a0,0xa27304
  a2528e:	d97fe0ef          	jal	ra,a24024 <print_str>
  a25292:	8522                	mv	a0,s0
  a25294:	8020                	pop	{ra,s0},16
  a25296:	f29ff06f          	j	a251be <do_process_exception>

00a2529a <do_trap_ecall_s>:
  a2529a:	8028                	push	{ra,s0},-16
  a2529c:	842a                	mv	s0,a0
  a2529e:	00a2 72d8 051f      	l.li	a0,0xa272d8
  a252a4:	d81fe0ef          	jal	ra,a24024 <print_str>
  a252a8:	8522                	mv	a0,s0
  a252aa:	8020                	pop	{ra,s0},16
  a252ac:	f13ff06f          	j	a251be <do_process_exception>

00a252b0 <do_trap_ecall_m>:
  a252b0:	8028                	push	{ra,s0},-16
  a252b2:	842a                	mv	s0,a0
  a252b4:	00a2 72ac 051f      	l.li	a0,0xa272ac
  a252ba:	d6bfe0ef          	jal	ra,a24024 <print_str>
  a252be:	8522                	mv	a0,s0
  a252c0:	8020                	pop	{ra,s0},16
  a252c2:	efdff06f          	j	a251be <do_process_exception>

00a252c6 <do_trap_break>:
  a252c6:	8028                	push	{ra,s0},-16
  a252c8:	842a                	mv	s0,a0
  a252ca:	00a2 7298 051f      	l.li	a0,0xa27298
  a252d0:	d55fe0ef          	jal	ra,a24024 <print_str>
  a252d4:	8522                	mv	a0,s0
  a252d6:	8020                	pop	{ra,s0},16
  a252d8:	ee7ff06f          	j	a251be <do_process_exception>

00a252dc <do_insn_page_fault>:
  a252dc:	8028                	push	{ra,s0},-16
  a252de:	842a                	mv	s0,a0
  a252e0:	00a2 7220 051f      	l.li	a0,0xa27220
  a252e6:	d3ffe0ef          	jal	ra,a24024 <print_str>
  a252ea:	8522                	mv	a0,s0
  a252ec:	8020                	pop	{ra,s0},16
  a252ee:	ed1ff06f          	j	a251be <do_process_exception>

00a252f2 <do_load_page_fault>:
  a252f2:	8028                	push	{ra,s0},-16
  a252f4:	842a                	mv	s0,a0
  a252f6:	00a2 7240 051f      	l.li	a0,0xa27240
  a252fc:	d29fe0ef          	jal	ra,a24024 <print_str>
  a25300:	8522                	mv	a0,s0
  a25302:	8020                	pop	{ra,s0},16
  a25304:	ebbff06f          	j	a251be <do_process_exception>

00a25308 <do_store_page_fault>:
  a25308:	8028                	push	{ra,s0},-16
  a2530a:	842a                	mv	s0,a0
  a2530c:	00a2 7278 051f      	l.li	a0,0xa27278
  a25312:	d13fe0ef          	jal	ra,a24024 <print_str>
  a25316:	8522                	mv	a0,s0
  a25318:	8020                	pop	{ra,s0},16
  a2531a:	ea5ff06f          	j	a251be <do_process_exception>

00a2531e <do_hard_fault>:
  a2531e:	8028                	push	{ra,s0},-16
  a25320:	842a                	mv	s0,a0
  a25322:	00a2 71e4 051f      	l.li	a0,0xa271e4
  a25328:	cfdfe0ef          	jal	ra,a24024 <print_str>
  a2532c:	8522                	mv	a0,s0
  a2532e:	8020                	pop	{ra,s0},16
  a25330:	e8fff06f          	j	a251be <do_process_exception>

00a25334 <do_lockup>:
  a25334:	8028                	push	{ra,s0},-16
  a25336:	842a                	mv	s0,a0
  a25338:	00a2 7260 051f      	l.li	a0,0xa27260
  a2533e:	ce7fe0ef          	jal	ra,a24024 <print_str>
  a25342:	8522                	mv	a0,s0
  a25344:	8020                	pop	{ra,s0},16
  a25346:	e79ff06f          	j	a251be <do_process_exception>

00a2534a <default_handler>:
  a2534a:	8018                	push	{ra},-16
  a2534c:	bdfff0ef          	jal	ra,a24f2a <interrupt_number_get>
  a25350:	85aa                	mv	a1,a0
  a25352:	00a2 71b8 051f      	l.li	a0,0xa271b8
  a25358:	ccdfe0ef          	jal	ra,a24024 <print_str>
  a2535c:	a001                	j	a2535c <default_handler+0x12>

00a2535e <nmi_handler>:
  a2535e:	8018                	push	{ra},-16
  a25360:	bcbff0ef          	jal	ra,a24f2a <interrupt_number_get>
  a25364:	85aa                	mv	a1,a0
  a25366:	00a2 7858 051f      	l.li	a0,0xa27858
  a2536c:	cb9fe0ef          	jal	ra,a24024 <print_str>
  a25370:	a001                	j	a25370 <nmi_handler+0x12>

00a25372 <cpu_utils_set_system_status_by_cause>:
  a25372:	8018                	push	{ra},-16
  a25374:	2235                	jal	ra,a254a0 <set_cpu_utils_reset_cause>
  a25376:	8010                	pop	{ra},16
  a25378:	a8e1                	j	a25450 <set_cpu_utils_system_boot_magic>

00a2537a <cpu_utils_reset_chip_with_log>:
  a2537a:	8118                	push	{ra},-32
  a2537c:	4501                	li	a0,0
  a2537e:	c62e                	sw	a1,12(sp)
  a25380:	2a0d                	jal	ra,a254b2 <set_update_reset_cause_on_boot>
  a25382:	45b2                	lw	a1,12(sp)
  a25384:	852e                	mv	a0,a1
  a25386:	fedff0ef          	jal	ra,a25372 <cpu_utils_set_system_status_by_cause>
  a2538a:	8110                	pop	{ra},32
  a2538c:	a57fd06f          	j	a22de2 <hal_reboot_chip>

00a25390 <panic_deal>:
  a25390:	8458                	push	{ra,s0-s3},-96
  a25392:	86b2                	mv	a3,a2
  a25394:	892a                	mv	s2,a0
  a25396:	84ae                	mv	s1,a1
  a25398:	8432                	mv	s0,a2
  a2539a:	862e                	mv	a2,a1
  a2539c:	85aa                	mv	a1,a0
  a2539e:	00a2 7880 051f      	l.li	a0,0xa27880
  a253a4:	c81fe0ef          	jal	ra,a24024 <print_str>
  a253a8:	cf3fc0ef          	jal	ra,a2209a <osal_irq_lock>
  a253ac:	00a0 6990 079f      	l.li	a5,0xa06990
  a253b2:	2398                	lbu	a4,0(a5)
  a253b4:	89aa                	mv	s3,a0
  a253b6:	e321                	bnez	a4,a253f6 <panic_deal+0x66>
  a253b8:	4705                	li	a4,1
  a253ba:	a398                	sb	a4,0(a5)
  a253bc:	03210023          	sb	s2,32(sp)
  a253c0:	d226                	sw	s1,36(sp)
  a253c2:	f5bfc0ef          	jal	ra,a2231c <uapi_systick_get_us>
  a253c6:	d42a                	sw	a0,40(sp)
  a253c8:	1008                	addi	a0,sp,32
  a253ca:	d622                	sw	s0,44(sp)
  a253cc:	28cd                	jal	ra,a254be <set_last_panic>
  a253ce:	02000613          	li	a2,32
  a253d2:	4581                	li	a1,0
  a253d4:	1008                	addi	a0,sp,32
  a253d6:	c802                	sw	zero,16(sp)
  a253d8:	ca02                	sw	zero,20(sp)
  a253da:	cc02                	sw	zero,24(sp)
  a253dc:	ce02                	sw	zero,28(sp)
  a253de:	e66fb0ef          	jal	ra,a20a44 <memset>
  a253e2:	da22                	sw	s0,52(sp)
  a253e4:	341027f3          	csrr	a5,mepc
  a253e8:	dc3e                	sw	a5,56(sp)
  a253ea:	878a                	mv	a5,sp
  a253ec:	0068                	addi	a0,sp,12
  a253ee:	c63e                	sw	a5,12(sp)
  a253f0:	2209                	jal	ra,a254f2 <set_exception_info>
  a253f2:	1008                	addi	a0,sp,32
  a253f4:	2a31                	jal	ra,a25510 <set_exception_stack_frame>
  a253f6:	00a0 6994 079f      	l.li	a5,0xa06994
  a253fc:	439c                	lw	a5,0(a5)
  a253fe:	c391                	beqz	a5,a25402 <panic_deal+0x72>
  a25400:	9782                	jalr	a5
  a25402:	6589                	lui	a1,0x2
  a25404:	058d                	addi	a1,a1,3 # 2003 <ccause+0x1041>
  a25406:	4509                	li	a0,2
  a25408:	f73ff0ef          	jal	ra,a2537a <cpu_utils_reset_chip_with_log>
  a2540c:	854e                	mv	a0,s3
  a2540e:	c95fc0ef          	jal	ra,a220a2 <osal_irq_restore>
  a25412:	8454                	popret	{ra,s0-s3},96

00a25414 <panic>:
  a25414:	00a0 2498 079f      	l.li	a5,0xa02498
  a2541a:	0007a303          	lw	t1,0(a5)
  a2541e:	00030563          	beqz	t1,a25428 <panic+0x14>
  a25422:	ffb08613          	addi	a2,ra,-5
  a25426:	8302                	jr	t1
  a25428:	8118                	push	{ra},-32
  a2542a:	4785                	li	a5,1
  a2542c:	00f107a3          	sb	a5,15(sp)
  a25430:	00f14783          	lbu	a5,15(sp)
  a25434:	9f81                	uxtb	a5
  a25436:	ffed                	bnez	a5,a25430 <panic+0x1c>
  a25438:	8114                	popret	{ra},32

00a2543a <duplicate_preserve_mem>:
  a2543a:	0fc00693          	li	a3,252
  a2543e:	00a0 24dc 061f      	l.li	a2,0xa024dc
  a25444:	0fc00593          	li	a1,252
  a25448:	00a0 6998 051f      	l.li	a0,0xa06998
  a2544e:	aa15                	j	a25582 <memcpy_s>

00a25450 <set_cpu_utils_system_boot_magic>:
  a25450:	00a02737          	lui	a4,0xa02
  a25454:	4dc70793          	addi	a5,a4,1244 # a024dc <g_preserve_data_lib>
  a25458:	0d87d783          	lhu	a5,216(a5)
  a2545c:	6689                	lui	a3,0x2
  a2545e:	04068613          	addi	a2,a3,64 # 2040 <ccause+0x107e>
  a25462:	4dc70713          	addi	a4,a4,1244
  a25466:	02c78963          	beq	a5,a2,a25498 <set_cpu_utils_system_boot_magic+0x48>
  a2546a:	00f66c63          	bltu	a2,a5,a25482 <set_cpu_utils_system_boot_magic+0x32>
  a2546e:	c78d                	beqz	a5,a25498 <set_cpu_utils_system_boot_magic+0x48>
  a25470:	0685                	addi	a3,a3,1
  a25472:	02d78363          	beq	a5,a3,a25498 <set_cpu_utils_system_boot_magic+0x48>
  a25476:	dead beaf 079f      	l.li	a5,0xdeadbeaf
  a2547c:	0ef72423          	sw	a5,232(a4)
  a25480:	8082                	ret
  a25482:	66a1                	lui	a3,0x8
  a25484:	0685                	addi	a3,a3,1 # 8001 <ccause+0x703f>
  a25486:	00d78963          	beq	a5,a3,a25498 <set_cpu_utils_system_boot_magic+0x48>
  a2548a:	0000 f0f0 069f      	l.li	a3,0xf0f0
  a25490:	00d78463          	beq	a5,a3,a25498 <set_cpu_utils_system_boot_magic+0x48>
  a25494:	6691                	lui	a3,0x4
  a25496:	bfe9                	j	a25470 <set_cpu_utils_system_boot_magic+0x20>
  a25498:	dead dead 079f      	l.li	a5,0xdeaddead
  a2549e:	bff9                	j	a2547c <set_cpu_utils_system_boot_magic+0x2c>

00a254a0 <set_cpu_utils_reset_cause>:
  a254a0:	00a0 24dc 079f      	l.li	a5,0xa024dc
  a254a6:	0c078d23          	sb	zero,218(a5)
  a254aa:	0ca79c23          	sh	a0,216(a5)
  a254ae:	f8dff06f          	j	a2543a <duplicate_preserve_mem>

00a254b2 <set_update_reset_cause_on_boot>:
  a254b2:	00a0 24dc 079f      	l.li	a5,0xa024dc
  a254b8:	0ca78d23          	sb	a0,218(a5)
  a254bc:	8082                	ret

00a254be <set_last_panic>:
  a254be:	8018                	push	{ra},-16
  a254c0:	862a                	mv	a2,a0
  a254c2:	00a0 24dc 051f      	l.li	a0,0xa024dc
  a254c8:	46c1                	li	a3,16
  a254ca:	45c1                	li	a1,16
  a254cc:	0a450513          	addi	a0,a0,164
  a254d0:	284d                	jal	ra,a25582 <memcpy_s>
  a254d2:	8010                	pop	{ra},16
  a254d4:	f67ff06f          	j	a2543a <duplicate_preserve_mem>

00a254d8 <set_exception_info_riscv>:
  a254d8:	8018                	push	{ra},-16
  a254da:	862a                	mv	a2,a0
  a254dc:	09000693          	li	a3,144
  a254e0:	09000593          	li	a1,144
  a254e4:	00a0 24dc 051f      	l.li	a0,0xa024dc
  a254ea:	2861                	jal	ra,a25582 <memcpy_s>
  a254ec:	8010                	pop	{ra},16
  a254ee:	f4dff06f          	j	a2543a <duplicate_preserve_mem>

00a254f2 <set_exception_info>:
  a254f2:	cd11                	beqz	a0,a2550e <set_exception_info+0x1c>
  a254f4:	8018                	push	{ra},-16
  a254f6:	862a                	mv	a2,a0
  a254f8:	00a0 24dc 051f      	l.li	a0,0xa024dc
  a254fe:	46d1                	li	a3,20
  a25500:	45d1                	li	a1,20
  a25502:	09050513          	addi	a0,a0,144
  a25506:	28b5                	jal	ra,a25582 <memcpy_s>
  a25508:	8010                	pop	{ra},16
  a2550a:	f31ff06f          	j	a2543a <duplicate_preserve_mem>
  a2550e:	8082                	ret

00a25510 <set_exception_stack_frame>:
  a25510:	4958                	lw	a4,20(a0)
  a25512:	00a0 24dc 079f      	l.li	a5,0xa024dc
  a25518:	08e7a623          	sw	a4,140(a5)
  a2551c:	4d18                	lw	a4,24(a0)
  a2551e:	cbd8                	sw	a4,20(a5)
  a25520:	f1bff06f          	j	a2543a <duplicate_preserve_mem>

00a25524 <SecMemcpyError>:
  a25524:	04b05b63          	blez	a1,a2557a <SecMemcpyError+0x56>
  a25528:	87aa                	mv	a5,a0
  a2552a:	4859                	li	a6,22
  a2552c:	c929                	beqz	a0,a2557e <SecMemcpyError+0x5a>
  a2552e:	8018                	push	{ra},-16
  a25530:	8732                	mv	a4,a2
  a25532:	862e                	mv	a2,a1
  a25534:	eb01                	bnez	a4,a25544 <SecMemcpyError+0x20>
  a25536:	4581                	li	a1,0
  a25538:	d0cfb0ef          	jal	ra,a20a44 <memset>
  a2553c:	09600813          	li	a6,150
  a25540:	8542                	mv	a0,a6
  a25542:	8014                	popret	{ra},16
  a25544:	00d5f863          	bgeu	a1,a3,a25554 <SecMemcpyError+0x30>
  a25548:	4581                	li	a1,0
  a2554a:	cfafb0ef          	jal	ra,a20a44 <memset>
  a2554e:	0a200813          	li	a6,162
  a25552:	b7fd                	j	a25540 <SecMemcpyError+0x1c>
  a25554:	00a77663          	bgeu	a4,a0,a25560 <SecMemcpyError+0x3c>
  a25558:	00d705b3          	add	a1,a4,a3
  a2555c:	00b56863          	bltu	a0,a1,a2556c <SecMemcpyError+0x48>
  a25560:	4801                	li	a6,0
  a25562:	fce7ffe3          	bgeu	a5,a4,a25540 <SecMemcpyError+0x1c>
  a25566:	96be                	add	a3,a3,a5
  a25568:	fcd77ce3          	bgeu	a4,a3,a25540 <SecMemcpyError+0x1c>
  a2556c:	4581                	li	a1,0
  a2556e:	853e                	mv	a0,a5
  a25570:	cd4fb0ef          	jal	ra,a20a44 <memset>
  a25574:	0b600813          	li	a6,182
  a25578:	b7e1                	j	a25540 <SecMemcpyError+0x1c>
  a2557a:	02200813          	li	a6,34
  a2557e:	8542                	mv	a0,a6
  a25580:	8082                	ret

00a25582 <memcpy_s>:
  a25582:	02d5e363          	bltu	a1,a3,a255a8 <memcpy_s+0x26>
  a25586:	c10d                	beqz	a0,a255a8 <memcpy_s+0x26>
  a25588:	c205                	beqz	a2,a255a8 <memcpy_s+0x26>
  a2558a:	0005cf63          	bltz	a1,a255a8 <memcpy_s+0x26>
  a2558e:	ce89                	beqz	a3,a255a8 <memcpy_s+0x26>
  a25590:	00a67663          	bgeu	a2,a0,a2559c <memcpy_s+0x1a>
  a25594:	00d607b3          	add	a5,a2,a3
  a25598:	00f57a63          	bgeu	a0,a5,a255ac <memcpy_s+0x2a>
  a2559c:	00c57663          	bgeu	a0,a2,a255a8 <memcpy_s+0x26>
  a255a0:	00d507b3          	add	a5,a0,a3
  a255a4:	00f67463          	bgeu	a2,a5,a255ac <memcpy_s+0x2a>
  a255a8:	f7dff06f          	j	a25524 <SecMemcpyError>
  a255ac:	8018                	push	{ra},-16
  a255ae:	85b2                	mv	a1,a2
  a255b0:	8636                	mv	a2,a3
  a255b2:	d40fb0ef          	jal	ra,a20af2 <memcpy>
  a255b6:	4501                	li	a0,0
  a255b8:	8014                	popret	{ra},16

00a255ba <memset_s>:
  a255ba:	87ae                	mv	a5,a1
  a255bc:	0205c363          	bltz	a1,a255e2 <memset_s+0x28>
  a255c0:	8028                	push	{ra,s0},-16
  a255c2:	842a                	mv	s0,a0
  a255c4:	c911                	beqz	a0,a255d8 <memset_s+0x1e>
  a255c6:	85b2                	mv	a1,a2
  a255c8:	8636                	mv	a2,a3
  a255ca:	02d7e063          	bltu	a5,a3,a255ea <memset_s+0x30>
  a255ce:	c76fb0ef          	jal	ra,a20a44 <memset>
  a255d2:	4701                	li	a4,0
  a255d4:	853a                	mv	a0,a4
  a255d6:	8024                	popret	{ra,s0},16
  a255d8:	02200713          	li	a4,34
  a255dc:	dde5                	beqz	a1,a255d4 <memset_s+0x1a>
  a255de:	4759                	li	a4,22
  a255e0:	bfd5                	j	a255d4 <memset_s+0x1a>
  a255e2:	02200713          	li	a4,34
  a255e6:	853a                	mv	a0,a4
  a255e8:	8082                	ret
  a255ea:	02200713          	li	a4,34
  a255ee:	d3fd                	beqz	a5,a255d4 <memset_s+0x1a>
  a255f0:	863e                	mv	a2,a5
  a255f2:	c52fb0ef          	jal	ra,a20a44 <memset>
  a255f6:	0a200713          	li	a4,162
  a255fa:	bfe9                	j	a255d4 <memset_s+0x1a>

00a255fc <SecWriteMultiChar>:
  a255fc:	8732                	mv	a4,a2
  a255fe:	00e04663          	bgtz	a4,a2560a <SecWriteMultiChar+0xe>
  a25602:	429c                	lw	a5,0(a3)
  a25604:	963e                	add	a2,a2,a5
  a25606:	c290                	sw	a2,0(a3)
  a25608:	8082                	ret
  a2560a:	411c                	lw	a5,0(a0)
  a2560c:	17fd                	addi	a5,a5,-1
  a2560e:	c11c                	sw	a5,0(a0)
  a25610:	0007d563          	bgez	a5,a2561a <SecWriteMultiChar+0x1e>
  a25614:	57fd                	li	a5,-1
  a25616:	c29c                	sw	a5,0(a3)
  a25618:	8082                	ret
  a2561a:	415c                	lw	a5,4(a0)
  a2561c:	177d                	addi	a4,a4,-1
  a2561e:	a38c                	sb	a1,0(a5)
  a25620:	415c                	lw	a5,4(a0)
  a25622:	0785                	addi	a5,a5,1
  a25624:	c15c                	sw	a5,4(a0)
  a25626:	bfe1                	j	a255fe <SecWriteMultiChar+0x2>

00a25628 <SecOutput>:
  a25628:	9fd8                	push	{ra,s0-s11},-560
  a2562a:	00a28ab7          	lui	s5,0xa28
  a2562e:	8dca8793          	addi	a5,s5,-1828 # a278dc <g_itoaUpperDigits>
  a25632:	711d                	addi	sp,sp,-96
  a25634:	cc3e                	sw	a5,24(sp)
  a25636:	00a28b37          	lui	s6,0xa28
  a2563a:	47a9                	li	a5,10
  a2563c:	8caa                	mv	s9,a0
  a2563e:	8432                	mv	s0,a2
  a25640:	ce02                	sw	zero,28(sp)
  a25642:	d002                	sw	zero,32(sp)
  a25644:	d202                	sw	zero,36(sp)
  a25646:	d43e                	sw	a5,40(sp)
  a25648:	d602                	sw	zero,44(sp)
  a2564a:	d802                	sw	zero,48(sp)
  a2564c:	da02                	sw	zero,52(sp)
  a2564e:	dc02                	sw	zero,56(sp)
  a25650:	de02                	sw	zero,60(sp)
  a25652:	c082                	sw	zero,64(sp)
  a25654:	c282                	sw	zero,68(sp)
  a25656:	04011423          	sh	zero,72(sp)
  a2565a:	ca02                	sw	zero,20(sp)
  a2565c:	4701                	li	a4,0
  a2565e:	8dca8a93          	addi	s5,s5,-1828
  a25662:	00a2 78f0 0b9f      	l.li	s7,0xa278f0
  a25668:	8a8b0b13          	addi	s6,s6,-1880 # a278a8 <g_efuse_cfg+0x7e8>
  a2566c:	00a0 249c 0c1f      	l.li	s8,0xa0249c
  a25672:	00a2 78c8 091f      	l.li	s2,0xa278c8
  a25678:	219c                	lbu	a5,0(a1)
  a2567a:	c781                	beqz	a5,a25682 <SecOutput+0x5a>
  a2567c:	46d2                	lw	a3,20(sp)
  a2567e:	0006d963          	bgez	a3,a25690 <SecOutput+0x68>
  a25682:	c319                	beqz	a4,a25688 <SecOutput+0x60>
  a25684:	0737163b          	bnei	a4,7,a2575c <SecOutput+0x134>
  a25688:	4552                	lw	a0,20(sp)
  a2568a:	25010113          	addi	sp,sp,592
  a2568e:	80d4                	popret	{ra,s0-s11},64
  a25690:	00fb86b3          	add	a3,s7,a5
  a25694:	2294                	lbu	a3,0(a3)
  a25696:	00158a13          	addi	s4,a1,1
  a2569a:	08dbd6db          	muliadd	a3,s7,a3,9
  a2569e:	96ba                	add	a3,a3,a4
  a256a0:	1006c983          	lbu	s3,256(a3) # 4100 <ccause+0x313e>
  a256a4:	0829fe3b          	bgeui	s3,8,a2575c <SecOutput+0x134>
  a256a8:	053b069b          	addshf	a3,s6,s3,sll,2
  a256ac:	4294                	lw	a3,0(a3)
  a256ae:	8682                	jr	a3
  a256b0:	000ca703          	lw	a4,0(s9)
  a256b4:	177d                	addi	a4,a4,-1
  a256b6:	00eca023          	sw	a4,0(s9)
  a256ba:	02074063          	bltz	a4,a256da <SecOutput+0xb2>
  a256be:	004ca703          	lw	a4,4(s9)
  a256c2:	a31c                	sb	a5,0(a4)
  a256c4:	004ca783          	lw	a5,4(s9)
  a256c8:	0785                	addi	a5,a5,1
  a256ca:	00fca223          	sw	a5,4(s9)
  a256ce:	47d2                	lw	a5,20(sp)
  a256d0:	0785                	addi	a5,a5,1
  a256d2:	ca3e                	sw	a5,20(sp)
  a256d4:	85d2                	mv	a1,s4
  a256d6:	874e                	mv	a4,s3
  a256d8:	b745                	j	a25678 <SecOutput+0x50>
  a256da:	57fd                	li	a5,-1
  a256dc:	bfdd                	j	a256d2 <SecOutput+0xaa>
  a256de:	57fd                	li	a5,-1
  a256e0:	c282                	sw	zero,68(sp)
  a256e2:	d002                	sw	zero,32(sp)
  a256e4:	d602                	sw	zero,44(sp)
  a256e6:	d802                	sw	zero,48(sp)
  a256e8:	da3e                	sw	a5,52(sp)
  a256ea:	d202                	sw	zero,36(sp)
  a256ec:	dc02                	sw	zero,56(sp)
  a256ee:	de02                	sw	zero,60(sp)
  a256f0:	b7d5                	j	a256d4 <SecOutput+0xac>
  a256f2:	02b00713          	li	a4,43
  a256f6:	02e78963          	beq	a5,a4,a25728 <SecOutput+0x100>
  a256fa:	00f76a63          	bltu	a4,a5,a2570e <SecOutput+0xe6>
  a256fe:	2007883b          	beqi	a5,32,a2571e <SecOutput+0xf6>
  a25702:	23f794bb          	bnei	a5,35,a256d4 <SecOutput+0xac>
  a25706:	57b2                	lw	a5,44(sp)
  a25708:	0807e793          	ori	a5,a5,128
  a2570c:	a821                	j	a25724 <SecOutput+0xfc>
  a2570e:	2d0788bb          	beqi	a5,45,a25730 <SecOutput+0x108>
  a25712:	30f790bb          	bnei	a5,48,a256d4 <SecOutput+0xac>
  a25716:	57b2                	lw	a5,44(sp)
  a25718:	0087e793          	ori	a5,a5,8
  a2571c:	a021                	j	a25724 <SecOutput+0xfc>
  a2571e:	57b2                	lw	a5,44(sp)
  a25720:	0027e793          	ori	a5,a5,2
  a25724:	d63e                	sw	a5,44(sp)
  a25726:	b77d                	j	a256d4 <SecOutput+0xac>
  a25728:	57b2                	lw	a5,44(sp)
  a2572a:	0017e793          	ori	a5,a5,1
  a2572e:	bfdd                	j	a25724 <SecOutput+0xfc>
  a25730:	57b2                	lw	a5,44(sp)
  a25732:	0047e793          	ori	a5,a5,4
  a25736:	b7fd                	j	a25724 <SecOutput+0xfc>
  a25738:	2a0793bb          	bnei	a5,42,a25746 <SecOutput+0x11e>
  a2573c:	4014                	lw	a3,0(s0)
  a2573e:	0411                	addi	s0,s0,4
  a25740:	d836                	sw	a3,48(sp)
  a25742:	4685                	li	a3,1
  a25744:	dc36                	sw	a3,56(sp)
  a25746:	56e2                	lw	a3,56(sp)
  a25748:	e695                	bnez	a3,a25774 <SecOutput+0x14c>
  a2574a:	030701bb          	beqi	a4,3,a25750 <SecOutput+0x128>
  a2574e:	d802                	sw	zero,48(sp)
  a25750:	56c2                	lw	a3,48(sp)
  a25752:	0147 ae14 071f      	l.li	a4,0x147ae14
  a25758:	00d75463          	bge	a4,a3,a25760 <SecOutput+0x138>
  a2575c:	557d                	li	a0,-1
  a2575e:	b735                	j	a2568a <SecOutput+0x62>
  a25760:	00269713          	slli	a4,a3,0x2
  a25764:	fd078793          	addi	a5,a5,-48
  a25768:	9736                	add	a4,a4,a3
  a2576a:	9f81                	uxtb	a5
  a2576c:	02e7879b          	addshf	a5,a5,a4,sll,1
  a25770:	d83e                	sw	a5,48(sp)
  a25772:	b78d                	j	a256d4 <SecOutput+0xac>
  a25774:	57c2                	lw	a5,48(sp)
  a25776:	0007d963          	bgez	a5,a25788 <SecOutput+0x160>
  a2577a:	5732                	lw	a4,44(sp)
  a2577c:	40f007b3          	neg	a5,a5
  a25780:	d83e                	sw	a5,48(sp)
  a25782:	00476713          	ori	a4,a4,4
  a25786:	d63a                	sw	a4,44(sp)
  a25788:	5742                	lw	a4,48(sp)
  a2578a:	0ccc ccc8 079f      	l.li	a5,0xcccccc8
  a25790:	f4e7d2e3          	bge	a5,a4,a256d4 <SecOutput+0xac>
  a25794:	b7e1                	j	a2575c <SecOutput+0x134>
  a25796:	da02                	sw	zero,52(sp)
  a25798:	bf35                	j	a256d4 <SecOutput+0xac>
  a2579a:	2a0793bb          	bnei	a5,42,a257a8 <SecOutput+0x180>
  a2579e:	4018                	lw	a4,0(s0)
  a257a0:	0411                	addi	s0,s0,4
  a257a2:	da3a                	sw	a4,52(sp)
  a257a4:	4705                	li	a4,1
  a257a6:	de3a                	sw	a4,60(sp)
  a257a8:	56f2                	lw	a3,60(sp)
  a257aa:	5752                	lw	a4,52(sp)
  a257ac:	e285                	bnez	a3,a257cc <SecOutput+0x1a4>
  a257ae:	0147 ae14 069f      	l.li	a3,0x147ae14
  a257b4:	fae6c4e3          	blt	a3,a4,a2575c <SecOutput+0x134>
  a257b8:	00271693          	slli	a3,a4,0x2
  a257bc:	fd078793          	addi	a5,a5,-48
  a257c0:	9736                	add	a4,a4,a3
  a257c2:	9f81                	uxtb	a5
  a257c4:	02e7879b          	addshf	a5,a5,a4,sll,1
  a257c8:	da3e                	sw	a5,52(sp)
  a257ca:	b729                	j	a256d4 <SecOutput+0xac>
  a257cc:	00075463          	bgez	a4,a257d4 <SecOutput+0x1ac>
  a257d0:	57fd                	li	a5,-1
  a257d2:	da3e                	sw	a5,52(sp)
  a257d4:	5752                	lw	a4,52(sp)
  a257d6:	bf55                	j	a2578a <SecOutput+0x162>
  a257d8:	06a00713          	li	a4,106
  a257dc:	08e78763          	beq	a5,a4,a2586a <SecOutput+0x242>
  a257e0:	04f76063          	bltu	a4,a5,a25820 <SecOutput+0x1f8>
  a257e4:	04c00713          	li	a4,76
  a257e8:	04e78663          	beq	a5,a4,a25834 <SecOutput+0x20c>
  a257ec:	00f76e63          	bltu	a4,a5,a25808 <SecOutput+0x1e0>
  a257f0:	49b7993b          	bnei	a5,73,a256d4 <SecOutput+0xac>
  a257f4:	319c                	lbu	a5,1(a1)
  a257f6:	36179fbb          	bnei	a5,54,a25874 <SecOutput+0x24c>
  a257fa:	21bc                	lbu	a5,2(a1)
  a257fc:	34279d3b          	bnei	a5,52,a258b0 <SecOutput+0x288>
  a25800:	00358a13          	addi	s4,a1,3
  a25804:	6721                	lui	a4,0x8
  a25806:	a091                	j	a2584a <SecOutput+0x222>
  a25808:	5a078fbb          	beqi	a5,90,a25846 <SecOutput+0x21e>
  a2580c:	68b7923b          	bnei	a5,104,a256d4 <SecOutput+0xac>
  a25810:	3194                	lbu	a3,1(a1)
  a25812:	5732                	lw	a4,44(sp)
  a25814:	0af69763          	bne	a3,a5,a258c2 <SecOutput+0x29a>
  a25818:	00258a13          	addi	s4,a1,2
  a2581c:	6789                	lui	a5,0x2
  a2581e:	a081                	j	a2585e <SecOutput+0x236>
  a25820:	07400713          	li	a4,116
  a25824:	04e78663          	beq	a5,a4,a25870 <SecOutput+0x248>
  a25828:	00f76b63          	bltu	a4,a5,a2583e <SecOutput+0x216>
  a2582c:	6c07893b          	beqi	a5,108,a25850 <SecOutput+0x228>
  a25830:	71a7993b          	bnei	a5,113,a256d4 <SecOutput+0xac>
  a25834:	57b2                	lw	a5,44(sp)
  a25836:	0000 1400 071f      	l.li	a4,0x1400
  a2583c:	a801                	j	a2584c <SecOutput+0x224>
  a2583e:	772782bb          	beqi	a5,119,a258c8 <SecOutput+0x2a0>
  a25842:	7aa794bb          	bnei	a5,122,a256d4 <SecOutput+0xac>
  a25846:	00020737          	lui	a4,0x20
  a2584a:	57b2                	lw	a5,44(sp)
  a2584c:	8fd9                	or	a5,a5,a4
  a2584e:	bdd9                	j	a25724 <SecOutput+0xfc>
  a25850:	3194                	lbu	a3,1(a1)
  a25852:	5732                	lw	a4,44(sp)
  a25854:	00f69763          	bne	a3,a5,a25862 <SecOutput+0x23a>
  a25858:	00258a13          	addi	s4,a1,2
  a2585c:	6785                	lui	a5,0x1
  a2585e:	8f5d                	or	a4,a4,a5
  a25860:	a019                	j	a25866 <SecOutput+0x23e>
  a25862:	01076713          	ori	a4,a4,16
  a25866:	d63a                	sw	a4,44(sp)
  a25868:	b5b5                	j	a256d4 <SecOutput+0xac>
  a2586a:	00040737          	lui	a4,0x40
  a2586e:	bff1                	j	a2584a <SecOutput+0x222>
  a25870:	6741                	lui	a4,0x10
  a25872:	bfe1                	j	a2584a <SecOutput+0x222>
  a25874:	3307963b          	bnei	a5,51,a2588c <SecOutput+0x264>
  a25878:	21bc                	lbu	a5,2(a1)
  a2587a:	32079dbb          	bnei	a5,50,a258b0 <SecOutput+0x288>
  a2587e:	57b2                	lw	a5,44(sp)
  a25880:	7761                	lui	a4,0xffff8
  a25882:	177d                	addi	a4,a4,-1 # ffff7fff <__data_load__+0xff5d05bb>
  a25884:	00358a13          	addi	s4,a1,3
  a25888:	8ff9                	and	a5,a5,a4
  a2588a:	bd69                	j	a25724 <SecOutput+0xfc>
  a2588c:	f9c78713          	addi	a4,a5,-100 # f9c <__data_size__+0xec0>
  a25890:	0ff77693          	andi	a3,a4,255
  a25894:	1206f53b          	bgeui	a3,18,a258a8 <SecOutput+0x280>
  a25898:	0002 0821 071f      	l.li	a4,0x20821
  a2589e:	00d75733          	srl	a4,a4,a3
  a258a2:	8b05                	andi	a4,a4,1
  a258a4:	e20718e3          	bnez	a4,a256d4 <SecOutput+0xac>
  a258a8:	0df7f793          	andi	a5,a5,223
  a258ac:	58878a3b          	beqi	a5,88,a256d4 <SecOutput+0xac>
  a258b0:	000ca783          	lw	a5,0(s9)
  a258b4:	17fd                	addi	a5,a5,-1
  a258b6:	00fca023          	sw	a5,0(s9)
  a258ba:	0007dc63          	bgez	a5,a258d2 <SecOutput+0x2aa>
  a258be:	57fd                	li	a5,-1
  a258c0:	a02d                	j	a258ea <SecOutput+0x2c2>
  a258c2:	02076713          	ori	a4,a4,32
  a258c6:	b745                	j	a25866 <SecOutput+0x23e>
  a258c8:	57b2                	lw	a5,44(sp)
  a258ca:	0000 0800 071f      	l.li	a4,0x800
  a258d0:	bfb5                	j	a2584c <SecOutput+0x224>
  a258d2:	004ca783          	lw	a5,4(s9)
  a258d6:	04900713          	li	a4,73
  a258da:	a398                	sb	a4,0(a5)
  a258dc:	004ca783          	lw	a5,4(s9)
  a258e0:	0785                	addi	a5,a5,1
  a258e2:	00fca223          	sw	a5,4(s9)
  a258e6:	47d2                	lw	a5,20(sp)
  a258e8:	0785                	addi	a5,a5,1
  a258ea:	ca3e                	sw	a5,20(sp)
  a258ec:	4981                	li	s3,0
  a258ee:	b3dd                	j	a256d4 <SecOutput+0xac>
  a258f0:	6847f23b          	bgeui	a5,104,a259f8 <SecOutput+0x3d0>
  a258f4:	06500713          	li	a4,101
  a258f8:	e6e7f2e3          	bgeu	a5,a4,a2575c <SecOutput+0x134>
  a258fc:	05300713          	li	a4,83
  a25900:	1ae78963          	beq	a5,a4,a25ab2 <SecOutput+0x48a>
  a25904:	08f76f63          	bltu	a4,a5,a259a2 <SecOutput+0x37a>
  a25908:	04300713          	li	a4,67
  a2590c:	14e78f63          	beq	a5,a4,a25a6a <SecOutput+0x442>
  a25910:	00e7e663          	bltu	a5,a4,a2591c <SecOutput+0x2f4>
  a25914:	fbb78793          	addi	a5,a5,-69
  a25918:	0397e13b          	bltui	a5,3,a2575c <SecOutput+0x134>
  a2591c:	5782                	lw	a5,32(sp)
  a2591e:	5642                	lw	a2,48(sp)
  a25920:	8e1d                	sub	a2,a2,a5
  a25922:	4796                	lw	a5,68(sp)
  a25924:	8e1d                	sub	a2,a2,a5
  a25926:	57b2                	lw	a5,44(sp)
  a25928:	c0b2                	sw	a2,64(sp)
  a2592a:	8bb1                	andi	a5,a5,12
  a2592c:	eb89                	bnez	a5,a2593e <SecOutput+0x316>
  a2592e:	00c05863          	blez	a2,a2593e <SecOutput+0x316>
  a25932:	0854                	addi	a3,sp,20
  a25934:	02000593          	li	a1,32
  a25938:	8566                	mv	a0,s9
  a2593a:	cc3ff0ef          	jal	ra,a255fc <SecWriteMultiChar>
  a2593e:	4696                	lw	a3,68(sp)
  a25940:	00d05e63          	blez	a3,a2595c <SecOutput+0x334>
  a25944:	083c                	addi	a5,sp,24
  a25946:	00f68633          	add	a2,a3,a5
  a2594a:	000ca703          	lw	a4,0(s9)
  a2594e:	177d                	addi	a4,a4,-1
  a25950:	00eca023          	sw	a4,0(s9)
  a25954:	4a075e63          	bgez	a4,a25e10 <SecOutput+0x7e8>
  a25958:	57fd                	li	a5,-1
  a2595a:	ca3e                	sw	a5,20(sp)
  a2595c:	57b2                	lw	a5,44(sp)
  a2595e:	8bb1                	andi	a5,a5,12
  a25960:	080795bb          	bnei	a5,8,a25976 <SecOutput+0x34e>
  a25964:	4606                	lw	a2,64(sp)
  a25966:	00c05863          	blez	a2,a25976 <SecOutput+0x34e>
  a2596a:	0854                	addi	a3,sp,20
  a2596c:	03000593          	li	a1,48
  a25970:	8566                	mv	a0,s9
  a25972:	c8bff0ef          	jal	ra,a255fc <SecWriteMultiChar>
  a25976:	5792                	lw	a5,36(sp)
  a25978:	4a078c63          	beqz	a5,a25e30 <SecOutput+0x808>
  a2597c:	57fd                	li	a5,-1
  a2597e:	ca3e                	sw	a5,20(sp)
  a25980:	47d2                	lw	a5,20(sp)
  a25982:	d407c9e3          	bltz	a5,a256d4 <SecOutput+0xac>
  a25986:	57b2                	lw	a5,44(sp)
  a25988:	8b91                	andi	a5,a5,4
  a2598a:	d40785e3          	beqz	a5,a256d4 <SecOutput+0xac>
  a2598e:	4606                	lw	a2,64(sp)
  a25990:	d4c052e3          	blez	a2,a256d4 <SecOutput+0xac>
  a25994:	0854                	addi	a3,sp,20
  a25996:	02000593          	li	a1,32
  a2599a:	8566                	mv	a0,s9
  a2599c:	c61ff0ef          	jal	ra,a255fc <SecWriteMultiChar>
  a259a0:	bb15                	j	a256d4 <SecOutput+0xac>
  a259a2:	06300713          	li	a4,99
  a259a6:	0ce78c63          	beq	a5,a4,a25a7e <SecOutput+0x456>
  a259aa:	06f76163          	bltu	a4,a5,a25a0c <SecOutput+0x3e4>
  a259ae:	58d79bbb          	bnei	a5,88,a2591c <SecOutput+0x2f4>
  a259b2:	4741                	li	a4,16
  a259b4:	d43a                	sw	a4,40(sp)
  a259b6:	cc4a                	sw	s2,24(sp)
  a259b8:	5732                	lw	a4,44(sp)
  a259ba:	585785bb          	beqi	a5,88,a25b10 <SecOutput+0x4e8>
  a259be:	7057953b          	bnei	a5,112,a25b12 <SecOutput+0x4ea>
  a259c2:	0000 4090 079f      	l.li	a5,0x4090
  a259c8:	8f5d                	or	a4,a4,a5
  a259ca:	4789                	li	a5,2
  a259cc:	c2be                	sw	a5,68(sp)
  a259ce:	77e1                	lui	a5,0xffff8
  a259d0:	8307c793          	xori	a5,a5,-2000
  a259d4:	da02                	sw	zero,52(sp)
  a259d6:	d63a                	sw	a4,44(sp)
  a259d8:	04f11423          	sh	a5,72(sp)
  a259dc:	57b2                	lw	a5,44(sp)
  a259de:	6725                	lui	a4,0x9
  a259e0:	8f7d                	and	a4,a4,a5
  a259e2:	16070a63          	beqz	a4,a25b56 <SecOutput+0x52e>
  a259e6:	041d                	addi	s0,s0,7
  a259e8:	ff847793          	andi	a5,s0,-8
  a259ec:	00878413          	addi	s0,a5,8 # ffff8008 <__data_load__+0xff5d05c4>
  a259f0:	4384                	lw	s1,0(a5)
  a259f2:	0047ad03          	lw	s10,4(a5)
  a259f6:	a245                	j	a25b96 <SecOutput+0x56e>
  a259f8:	07000713          	li	a4,112
  a259fc:	fae78be3          	beq	a5,a4,a259b2 <SecOutput+0x38a>
  a25a00:	02f76363          	bltu	a4,a5,a25a26 <SecOutput+0x3fe>
  a25a04:	6907823b          	beqi	a5,105,a25a0c <SecOutput+0x3e4>
  a25a08:	6fc7953b          	bnei	a5,111,a2591c <SecOutput+0x2f4>
  a25a0c:	06900693          	li	a3,105
  a25a10:	5732                	lw	a4,44(sp)
  a25a12:	00d78663          	beq	a5,a3,a25a1e <SecOutput+0x3f6>
  a25a16:	10f6ed63          	bltu	a3,a5,a25b30 <SecOutput+0x508>
  a25a1a:	64f790bb          	bnei	a5,100,a259dc <SecOutput+0x3b4>
  a25a1e:	04076713          	ori	a4,a4,64
  a25a22:	d63a                	sw	a4,44(sp)
  a25a24:	aa11                	j	a25b38 <SecOutput+0x510>
  a25a26:	75f789bb          	beqi	a5,117,a25a0c <SecOutput+0x3e4>
  a25a2a:	78e7823b          	beqi	a5,120,a259b2 <SecOutput+0x38a>
  a25a2e:	73b79bbb          	bnei	a5,115,a2591c <SecOutput+0x2f4>
  a25a32:	57b2                	lw	a5,44(sp)
  a25a34:	4014                	lw	a3,0(s0)
  a25a36:	00440493          	addi	s1,s0,4
  a25a3a:	ff77f713          	andi	a4,a5,-9
  a25a3e:	d63a                	sw	a4,44(sp)
  a25a40:	0000 0810 071f      	l.li	a4,0x810
  a25a46:	8ff9                	and	a5,a5,a4
  a25a48:	ce36                	sw	a3,28(sp)
  a25a4a:	5752                	lw	a4,52(sp)
  a25a4c:	ebd9                	bnez	a5,a25ae2 <SecOutput+0x4ba>
  a25a4e:	e689                	bnez	a3,a25a58 <SecOutput+0x430>
  a25a50:	00a0 24a4 079f      	l.li	a5,0xa024a4
  a25a56:	ce3e                	sw	a5,28(sp)
  a25a58:	4572                	lw	a0,28(sp)
  a25a5a:	ff171bbb          	bnei	a4,-1,a25ac8 <SecOutput+0x4a0>
  a25a5e:	b4efb0ef          	jal	ra,a20dac <strlen>
  a25a62:	06055b63          	bgez	a0,a25ad8 <SecOutput+0x4b0>
  a25a66:	4501                	li	a0,0
  a25a68:	a885                	j	a25ad8 <SecOutput+0x4b0>
  a25a6a:	57b2                	lw	a5,44(sp)
  a25a6c:	6705                	lui	a4,0x1
  a25a6e:	83070693          	addi	a3,a4,-2000 # 830 <__data_size__+0x754>
  a25a72:	8efd                	and	a3,a3,a5
  a25a74:	e689                	bnez	a3,a25a7e <SecOutput+0x456>
  a25a76:	80070713          	addi	a4,a4,-2048
  a25a7a:	8fd9                	or	a5,a5,a4
  a25a7c:	d63e                	sw	a5,44(sp)
  a25a7e:	57b2                	lw	a5,44(sp)
  a25a80:	4605                	li	a2,1
  a25a82:	d032                	sw	a2,32(sp)
  a25a84:	ff77f593          	andi	a1,a5,-9
  a25a88:	d62e                	sw	a1,44(sp)
  a25a8a:	0000 0810 059f      	l.li	a1,0x810
  a25a90:	8fed                	and	a5,a5,a1
  a25a92:	00440713          	addi	a4,s0,4
  a25a96:	4014                	lw	a3,0(s0)
  a25a98:	c799                	beqz	a5,a25aa6 <SecOutput+0x47e>
  a25a9a:	00fc                	addi	a5,sp,76
  a25a9c:	c6b6                	sw	a3,76(sp)
  a25a9e:	ce3e                	sw	a5,28(sp)
  a25aa0:	d232                	sw	a2,36(sp)
  a25aa2:	843a                	mv	s0,a4
  a25aa4:	bda5                	j	a2591c <SecOutput+0x2f4>
  a25aa6:	00fc                	addi	a5,sp,76
  a25aa8:	04d10623          	sb	a3,76(sp)
  a25aac:	ce3e                	sw	a5,28(sp)
  a25aae:	d202                	sw	zero,36(sp)
  a25ab0:	bfcd                	j	a25aa2 <SecOutput+0x47a>
  a25ab2:	57b2                	lw	a5,44(sp)
  a25ab4:	6705                	lui	a4,0x1
  a25ab6:	83070693          	addi	a3,a4,-2000 # 830 <__data_size__+0x754>
  a25aba:	8efd                	and	a3,a3,a5
  a25abc:	fabd                	bnez	a3,a25a32 <SecOutput+0x40a>
  a25abe:	80070713          	addi	a4,a4,-2048
  a25ac2:	8fd9                	or	a5,a5,a4
  a25ac4:	d63e                	sw	a5,44(sp)
  a25ac6:	b7b5                	j	a25a32 <SecOutput+0x40a>
  a25ac8:	972a                	add	a4,a4,a0
  a25aca:	87aa                	mv	a5,a0
  a25acc:	00e78463          	beq	a5,a4,a25ad4 <SecOutput+0x4ac>
  a25ad0:	2394                	lbu	a3,0(a5)
  a25ad2:	e691                	bnez	a3,a25ade <SecOutput+0x4b6>
  a25ad4:	40a78533          	sub	a0,a5,a0
  a25ad8:	d02a                	sw	a0,32(sp)
  a25ada:	8426                	mv	s0,s1
  a25adc:	b581                	j	a2591c <SecOutput+0x2f4>
  a25ade:	0785                	addi	a5,a5,1
  a25ae0:	b7f5                	j	a25acc <SecOutput+0x4a4>
  a25ae2:	4785                	li	a5,1
  a25ae4:	d23e                	sw	a5,36(sp)
  a25ae6:	e689                	bnez	a3,a25af0 <SecOutput+0x4c8>
  a25ae8:	00a0 24ac 079f      	l.li	a5,0xa024ac
  a25aee:	ce3e                	sw	a5,28(sp)
  a25af0:	46f2                	lw	a3,28(sp)
  a25af2:	4781                	li	a5,0
  a25af4:	00e78463          	beq	a5,a4,a25afc <SecOutput+0x4d4>
  a25af8:	4290                	lw	a2,0(a3)
  a25afa:	ea01                	bnez	a2,a25b0a <SecOutput+0x4e2>
  a25afc:	20000737          	lui	a4,0x20000
  a25b00:	00e7e363          	bltu	a5,a4,a25b06 <SecOutput+0x4de>
  a25b04:	4781                	li	a5,0
  a25b06:	d03e                	sw	a5,32(sp)
  a25b08:	bfc9                	j	a25ada <SecOutput+0x4b2>
  a25b0a:	0785                	addi	a5,a5,1
  a25b0c:	0691                	addi	a3,a3,4
  a25b0e:	b7dd                	j	a25af4 <SecOutput+0x4cc>
  a25b10:	cc56                	sw	s5,24(sp)
  a25b12:	08077713          	andi	a4,a4,128
  a25b16:	ee070be3          	beqz	a4,a25a0c <SecOutput+0x3e4>
  a25b1a:	03000713          	li	a4,48
  a25b1e:	04e10423          	sb	a4,72(sp)
  a25b22:	4762                	lw	a4,24(sp)
  a25b24:	2b18                	lbu	a4,16(a4)
  a25b26:	04e104a3          	sb	a4,73(sp)
  a25b2a:	4709                	li	a4,2
  a25b2c:	c2ba                	sw	a4,68(sp)
  a25b2e:	bdf9                	j	a25a0c <SecOutput+0x3e4>
  a25b30:	6f07843b          	beqi	a5,111,a25b40 <SecOutput+0x518>
  a25b34:	75a79a3b          	bnei	a5,117,a259dc <SecOutput+0x3b4>
  a25b38:	47a9                	li	a5,10
  a25b3a:	d43e                	sw	a5,40(sp)
  a25b3c:	cc4a                	sw	s2,24(sp)
  a25b3e:	bd79                	j	a259dc <SecOutput+0x3b4>
  a25b40:	47a1                	li	a5,8
  a25b42:	d43e                	sw	a5,40(sp)
  a25b44:	cc4a                	sw	s2,24(sp)
  a25b46:	08077793          	andi	a5,a4,128
  a25b4a:	e80789e3          	beqz	a5,a259dc <SecOutput+0x3b4>
  a25b4e:	20076713          	ori	a4,a4,512
  a25b52:	d63a                	sw	a4,44(sp)
  a25b54:	b561                	j	a259dc <SecOutput+0x3b4>
  a25b56:	0107f693          	andi	a3,a5,16
  a25b5a:	0407f713          	andi	a4,a5,64
  a25b5e:	c689                	beqz	a3,a25b68 <SecOutput+0x540>
  a25b60:	4004                	lw	s1,0(s0)
  a25b62:	0411                	addi	s0,s0,4
  a25b64:	cb4d                	beqz	a4,a25c16 <SecOutput+0x5ee>
  a25b66:	a065                	j	a25c0e <SecOutput+0x5e6>
  a25b68:	01279693          	slli	a3,a5,0x12
  a25b6c:	0806d963          	bgez	a3,a25bfe <SecOutput+0x5d6>
  a25b70:	4014                	lw	a3,0(s0)
  a25b72:	4d01                	li	s10,0
  a25b74:	0411                	addi	s0,s0,4
  a25b76:	0ff6f493          	andi	s1,a3,255
  a25b7a:	cf11                	beqz	a4,a25b96 <SecOutput+0x56e>
  a25b7c:	06e2                	slli	a3,a3,0x18
  a25b7e:	86e1                	srai	a3,a3,0x18
  a25b80:	0006db63          	bgez	a3,a25b96 <SecOutput+0x56e>
  a25b84:	fff4c493          	not	s1,s1
  a25b88:	9c81                	uxtb	s1
  a25b8a:	0485                	addi	s1,s1,1
  a25b8c:	1007e793          	ori	a5,a5,256
  a25b90:	41f4dd13          	srai	s10,s1,0x1f
  a25b94:	d63e                	sw	a5,44(sp)
  a25b96:	57b2                	lw	a5,44(sp)
  a25b98:	8da6                	mv	s11,s1
  a25b9a:	876a                	mv	a4,s10
  a25b9c:	0407f693          	andi	a3,a5,64
  a25ba0:	ce89                	beqz	a3,a25bba <SecOutput+0x592>
  a25ba2:	000d5c63          	bgez	s10,a25bba <SecOutput+0x592>
  a25ba6:	40900db3          	neg	s11,s1
  a25baa:	01b036b3          	snez	a3,s11
  a25bae:	41a00733          	neg	a4,s10
  a25bb2:	1007e793          	ori	a5,a5,256
  a25bb6:	8f15                	sub	a4,a4,a3
  a25bb8:	d63e                	sw	a5,44(sp)
  a25bba:	56b2                	lw	a3,44(sp)
  a25bbc:	000497b7          	lui	a5,0x49
  a25bc0:	8ff5                	and	a5,a5,a3
  a25bc2:	e391                	bnez	a5,a25bc6 <SecOutput+0x59e>
  a25bc4:	4701                	li	a4,0
  a25bc6:	24c10813          	addi	a6,sp,588
  a25bca:	ce42                	sw	a6,28(sp)
  a25bcc:	00ede7b3          	or	a5,s11,a4
  a25bd0:	e3c1                	bnez	a5,a25c50 <SecOutput+0x628>
  a25bd2:	c282                	sw	zero,68(sp)
  a25bd4:	d002                	sw	zero,32(sp)
  a25bd6:	5752                	lw	a4,52(sp)
  a25bd8:	4685                	li	a3,1
  a25bda:	00074f63          	bltz	a4,a25bf8 <SecOutput+0x5d0>
  a25bde:	57b2                	lw	a5,44(sp)
  a25be0:	01179693          	slli	a3,a5,0x11
  a25be4:	0006c463          	bltz	a3,a25bec <SecOutput+0x5c4>
  a25be8:	9bdd                	andi	a5,a5,-9
  a25bea:	d63e                	sw	a5,44(sp)
  a25bec:	20000793          	li	a5,512
  a25bf0:	00e7d363          	bge	a5,a4,a25bf6 <SecOutput+0x5ce>
  a25bf4:	da3e                	sw	a5,52(sp)
  a25bf6:	56d2                	lw	a3,52(sp)
  a25bf8:	03000613          	li	a2,48
  a25bfc:	aa69                	j	a25d96 <SecOutput+0x76e>
  a25bfe:	0207f693          	andi	a3,a5,32
  a25c02:	ce81                	beqz	a3,a25c1a <SecOutput+0x5f2>
  a25c04:	4004                	lw	s1,0(s0)
  a25c06:	0411                	addi	s0,s0,4
  a25c08:	c711                	beqz	a4,a25c14 <SecOutput+0x5ec>
  a25c0a:	04c2                	slli	s1,s1,0x10
  a25c0c:	84c1                	srai	s1,s1,0x10
  a25c0e:	41f4dd13          	srai	s10,s1,0x1f
  a25c12:	b751                	j	a25b96 <SecOutput+0x56e>
  a25c14:	9ca1                	uxth	s1
  a25c16:	4d01                	li	s10,0
  a25c18:	bfbd                	j	a25b96 <SecOutput+0x56e>
  a25c1a:	00f79693          	slli	a3,a5,0xf
  a25c1e:	0006d763          	bgez	a3,a25c2c <SecOutput+0x604>
  a25c22:	4004                	lw	s1,0(s0)
  a25c24:	0411                	addi	s0,s0,4
  a25c26:	41f4dd13          	srai	s10,s1,0x1f
  a25c2a:	b7b5                	j	a25b96 <SecOutput+0x56e>
  a25c2c:	00e79693          	slli	a3,a5,0xe
  a25c30:	0006db63          	bgez	a3,a25c46 <SecOutput+0x61e>
  a25c34:	4004                	lw	s1,0(s0)
  a25c36:	00440793          	addi	a5,s0,4
  a25c3a:	41f4dd13          	srai	s10,s1,0x1f
  a25c3e:	e311                	bnez	a4,a25c42 <SecOutput+0x61a>
  a25c40:	4d01                	li	s10,0
  a25c42:	843e                	mv	s0,a5
  a25c44:	bf89                	j	a25b96 <SecOutput+0x56e>
  a25c46:	00d79693          	slli	a3,a5,0xd
  a25c4a:	f006dbe3          	bgez	a3,a25b60 <SecOutput+0x538>
  a25c4e:	bb61                	j	a259e6 <SecOutput+0x3be>
  a25c50:	57a2                	lw	a5,40(sp)
  a25c52:	ef49                	bnez	a4,a25cec <SecOutput+0x6c4>
  a25c54:	0a1791bb          	bnei	a5,10,a25c9a <SecOutput+0x672>
  a25c58:	46a9                	li	a3,10
  a25c5a:	4625                	li	a2,9
  a25c5c:	4772                	lw	a4,28(sp)
  a25c5e:	fff70793          	addi	a5,a4,-1 # 1fffffff <__data_load__+0x1f5d85bb>
  a25c62:	ce3e                	sw	a5,28(sp)
  a25c64:	02ddf7b3          	remu	a5,s11,a3
  a25c68:	97ca                	add	a5,a5,s2
  a25c6a:	239c                	lbu	a5,0(a5)
  a25c6c:	fef70fa3          	sb	a5,-1(a4)
  a25c70:	002dd793          	srli	a5,s11,0x2
  a25c74:	43b7879b          	addshf	a5,a5,s11,srl,1
  a25c78:	48f7879b          	addshf	a5,a5,a5,srl,4
  a25c7c:	50f7879b          	addshf	a5,a5,a5,srl,8
  a25c80:	60f7879b          	addshf	a5,a5,a5,srl,16
  a25c84:	838d                	srli	a5,a5,0x3
  a25c86:	00279513          	slli	a0,a5,0x2
  a25c8a:	953e                	add	a0,a0,a5
  a25c8c:	02ad951b          	subshf	a0,s11,a0,sll,1
  a25c90:	04a67c63          	bgeu	a2,a0,a25ce8 <SecOutput+0x6c0>
  a25c94:	0785                	addi	a5,a5,1 # 49001 <g_intheap_size+0x2faa1>
  a25c96:	8dbe                	mv	s11,a5
  a25c98:	b7d1                	j	a25c5c <SecOutput+0x634>
  a25c9a:	100789bb          	beqi	a5,16,a25cc0 <SecOutput+0x698>
  a25c9e:	0817903b          	bnei	a5,8,a25cde <SecOutput+0x6b6>
  a25ca2:	4772                	lw	a4,28(sp)
  a25ca4:	fff70793          	addi	a5,a4,-1
  a25ca8:	ce3e                	sw	a5,28(sp)
  a25caa:	007df793          	andi	a5,s11,7
  a25cae:	97ca                	add	a5,a5,s2
  a25cb0:	239c                	lbu	a5,0(a5)
  a25cb2:	003ddd93          	srli	s11,s11,0x3
  a25cb6:	fef70fa3          	sb	a5,-1(a4)
  a25cba:	fe0d94e3          	bnez	s11,a25ca2 <SecOutput+0x67a>
  a25cbe:	a005                	j	a25cde <SecOutput+0x6b6>
  a25cc0:	4772                	lw	a4,28(sp)
  a25cc2:	00fdf693          	andi	a3,s11,15
  a25cc6:	004ddd93          	srli	s11,s11,0x4
  a25cca:	fff70793          	addi	a5,a4,-1
  a25cce:	ce3e                	sw	a5,28(sp)
  a25cd0:	47e2                	lw	a5,24(sp)
  a25cd2:	97b6                	add	a5,a5,a3
  a25cd4:	239c                	lbu	a5,0(a5)
  a25cd6:	fef70fa3          	sb	a5,-1(a4)
  a25cda:	fe0d93e3          	bnez	s11,a25cc0 <SecOutput+0x698>
  a25cde:	47f2                	lw	a5,28(sp)
  a25ce0:	40f80833          	sub	a6,a6,a5
  a25ce4:	d042                	sw	a6,32(sp)
  a25ce6:	bdc5                	j	a25bd6 <SecOutput+0x5ae>
  a25ce8:	f7dd                	bnez	a5,a25c96 <SecOutput+0x66e>
  a25cea:	bfd5                	j	a25cde <SecOutput+0x6b6>
  a25cec:	0a078cbb          	beqi	a5,10,a25d1e <SecOutput+0x6f6>
  a25cf0:	10178b3b          	beqi	a5,16,a25d5c <SecOutput+0x734>
  a25cf4:	08f79abb          	bnei	a5,8,a25cde <SecOutput+0x6b6>
  a25cf8:	46f2                	lw	a3,28(sp)
  a25cfa:	fff68793          	addi	a5,a3,-1
  a25cfe:	ce3e                	sw	a5,28(sp)
  a25d00:	007df793          	andi	a5,s11,7
  a25d04:	97ca                	add	a5,a5,s2
  a25d06:	239c                	lbu	a5,0(a5)
  a25d08:	003ddd93          	srli	s11,s11,0x3
  a25d0c:	3aedad9b          	orshf	s11,s11,a4,sll,29
  a25d10:	830d                	srli	a4,a4,0x3
  a25d12:	fef68fa3          	sb	a5,-1(a3)
  a25d16:	00ede7b3          	or	a5,s11,a4
  a25d1a:	fff9                	bnez	a5,a25cf8 <SecOutput+0x6d0>
  a25d1c:	b7c9                	j	a25cde <SecOutput+0x6b6>
  a25d1e:	47f2                	lw	a5,28(sp)
  a25d20:	4629                	li	a2,10
  a25d22:	856e                	mv	a0,s11
  a25d24:	fff78693          	addi	a3,a5,-1
  a25d28:	ce36                	sw	a3,28(sp)
  a25d2a:	85ba                	mv	a1,a4
  a25d2c:	4681                	li	a3,0
  a25d2e:	c642                	sw	a6,12(sp)
  a25d30:	c43e                	sw	a5,8(sp)
  a25d32:	c23a                	sw	a4,4(sp)
  a25d34:	90dfa0ef          	jal	ra,a20640 <__umoddi3>
  a25d38:	954a                	add	a0,a0,s2
  a25d3a:	2114                	lbu	a3,0(a0)
  a25d3c:	4712                	lw	a4,4(sp)
  a25d3e:	47a2                	lw	a5,8(sp)
  a25d40:	856e                	mv	a0,s11
  a25d42:	85ba                	mv	a1,a4
  a25d44:	fed78fa3          	sb	a3,-1(a5)
  a25d48:	4629                	li	a2,10
  a25d4a:	4681                	li	a3,0
  a25d4c:	8f1fa0ef          	jal	ra,a2063c <__udivdi3>
  a25d50:	872e                	mv	a4,a1
  a25d52:	8dc9                	or	a1,a1,a0
  a25d54:	8daa                	mv	s11,a0
  a25d56:	4832                	lw	a6,12(sp)
  a25d58:	f1f9                	bnez	a1,a25d1e <SecOutput+0x6f6>
  a25d5a:	b751                	j	a25cde <SecOutput+0x6b6>
  a25d5c:	46f2                	lw	a3,28(sp)
  a25d5e:	00fdf613          	andi	a2,s11,15
  a25d62:	004ddd93          	srli	s11,s11,0x4
  a25d66:	fff68793          	addi	a5,a3,-1
  a25d6a:	ce3e                	sw	a5,28(sp)
  a25d6c:	47e2                	lw	a5,24(sp)
  a25d6e:	38edad9b          	orshf	s11,s11,a4,sll,28
  a25d72:	8311                	srli	a4,a4,0x4
  a25d74:	97b2                	add	a5,a5,a2
  a25d76:	239c                	lbu	a5,0(a5)
  a25d78:	fef68fa3          	sb	a5,-1(a3)
  a25d7c:	00ede7b3          	or	a5,s11,a4
  a25d80:	fff1                	bnez	a5,a25d5c <SecOutput+0x734>
  a25d82:	bfb1                	j	a25cde <SecOutput+0x6b6>
  a25d84:	47f2                	lw	a5,28(sp)
  a25d86:	fff78713          	addi	a4,a5,-1
  a25d8a:	ce3a                	sw	a4,28(sp)
  a25d8c:	fec78fa3          	sb	a2,-1(a5)
  a25d90:	5782                	lw	a5,32(sp)
  a25d92:	0785                	addi	a5,a5,1
  a25d94:	d03e                	sw	a5,32(sp)
  a25d96:	5702                	lw	a4,32(sp)
  a25d98:	fed746e3          	blt	a4,a3,a25d84 <SecOutput+0x75c>
  a25d9c:	57b2                	lw	a5,44(sp)
  a25d9e:	2007f793          	andi	a5,a5,512
  a25da2:	c385                	beqz	a5,a25dc2 <SecOutput+0x79a>
  a25da4:	47f2                	lw	a5,28(sp)
  a25da6:	c701                	beqz	a4,a25dae <SecOutput+0x786>
  a25da8:	2398                	lbu	a4,0(a5)
  a25daa:	3007063b          	beqi	a4,48,a25dc2 <SecOutput+0x79a>
  a25dae:	fff78713          	addi	a4,a5,-1
  a25db2:	ce3a                	sw	a4,28(sp)
  a25db4:	03000713          	li	a4,48
  a25db8:	fee78fa3          	sb	a4,-1(a5)
  a25dbc:	5782                	lw	a5,32(sp)
  a25dbe:	0785                	addi	a5,a5,1
  a25dc0:	d03e                	sw	a5,32(sp)
  a25dc2:	57b2                	lw	a5,44(sp)
  a25dc4:	0407f713          	andi	a4,a5,64
  a25dc8:	cb11                	beqz	a4,a25ddc <SecOutput+0x7b4>
  a25dca:	1007f713          	andi	a4,a5,256
  a25dce:	c70d                	beqz	a4,a25df8 <SecOutput+0x7d0>
  a25dd0:	02d00713          	li	a4,45
  a25dd4:	04e10423          	sb	a4,72(sp)
  a25dd8:	4705                	li	a4,1
  a25dda:	c2ba                	sw	a4,68(sp)
  a25ddc:	01a4e4b3          	or	s1,s1,s10
  a25de0:	b2049ee3          	bnez	s1,a2591c <SecOutput+0x2f4>
  a25de4:	01179713          	slli	a4,a5,0x11
  a25de8:	b2075ae3          	bgez	a4,a2591c <SecOutput+0x2f4>
  a25dec:	4715                	li	a4,5
  a25dee:	9bdd                	andi	a5,a5,-9
  a25df0:	ce62                	sw	s8,28(sp)
  a25df2:	d03a                	sw	a4,32(sp)
  a25df4:	d63e                	sw	a5,44(sp)
  a25df6:	b61d                	j	a2591c <SecOutput+0x2f4>
  a25df8:	0017f713          	andi	a4,a5,1
  a25dfc:	c701                	beqz	a4,a25e04 <SecOutput+0x7dc>
  a25dfe:	02b00713          	li	a4,43
  a25e02:	bfc9                	j	a25dd4 <SecOutput+0x7ac>
  a25e04:	0027f713          	andi	a4,a5,2
  a25e08:	db71                	beqz	a4,a25ddc <SecOutput+0x7b4>
  a25e0a:	02000713          	li	a4,32
  a25e0e:	b7d9                	j	a25dd4 <SecOutput+0x7ac>
  a25e10:	004ca703          	lw	a4,4(s9)
  a25e14:	0307c583          	lbu	a1,48(a5)
  a25e18:	0785                	addi	a5,a5,1
  a25e1a:	a30c                	sb	a1,0(a4)
  a25e1c:	004ca703          	lw	a4,4(s9)
  a25e20:	0705                	addi	a4,a4,1
  a25e22:	00eca223          	sw	a4,4(s9)
  a25e26:	b2f612e3          	bne	a2,a5,a2594a <SecOutput+0x322>
  a25e2a:	47d2                	lw	a5,20(sp)
  a25e2c:	97b6                	add	a5,a5,a3
  a25e2e:	b635                	j	a2595a <SecOutput+0x332>
  a25e30:	45f2                	lw	a1,28(sp)
  a25e32:	5482                	lw	s1,32(sp)
  a25e34:	000ca703          	lw	a4,0(s9)
  a25e38:	87ae                	mv	a5,a1
  a25e3a:	009586b3          	add	a3,a1,s1
  a25e3e:	06974963          	blt	a4,s1,a25eb0 <SecOutput+0x888>
  a25e42:	0c04ddbb          	bgei	s1,12,a25e78 <SecOutput+0x850>
  a25e46:	87ae                	mv	a5,a1
  a25e48:	a819                	j	a25e5e <SecOutput+0x836>
  a25e4a:	004ca703          	lw	a4,4(s9)
  a25e4e:	2394                	lbu	a3,0(a5)
  a25e50:	0785                	addi	a5,a5,1
  a25e52:	a314                	sb	a3,0(a4)
  a25e54:	004ca703          	lw	a4,4(s9)
  a25e58:	0705                	addi	a4,a4,1
  a25e5a:	00eca223          	sw	a4,4(s9)
  a25e5e:	40b78733          	sub	a4,a5,a1
  a25e62:	fe9744e3          	blt	a4,s1,a25e4a <SecOutput+0x822>
  a25e66:	000ca783          	lw	a5,0(s9)
  a25e6a:	8f85                	sub	a5,a5,s1
  a25e6c:	00fca023          	sw	a5,0(s9)
  a25e70:	47d2                	lw	a5,20(sp)
  a25e72:	94be                	add	s1,s1,a5
  a25e74:	ca26                	sw	s1,20(sp)
  a25e76:	b629                	j	a25980 <SecOutput+0x358>
  a25e78:	004ca503          	lw	a0,4(s9)
  a25e7c:	8626                	mv	a2,s1
  a25e7e:	c75fa0ef          	jal	ra,a20af2 <memcpy>
  a25e82:	004ca783          	lw	a5,4(s9)
  a25e86:	97a6                	add	a5,a5,s1
  a25e88:	00fca223          	sw	a5,4(s9)
  a25e8c:	bfe9                	j	a25e66 <SecOutput+0x83e>
  a25e8e:	000ca703          	lw	a4,0(s9)
  a25e92:	177d                	addi	a4,a4,-1
  a25e94:	00eca023          	sw	a4,0(s9)
  a25e98:	ae0742e3          	bltz	a4,a2597c <SecOutput+0x354>
  a25e9c:	004ca703          	lw	a4,4(s9)
  a25ea0:	2390                	lbu	a2,0(a5)
  a25ea2:	0785                	addi	a5,a5,1
  a25ea4:	a310                	sb	a2,0(a4)
  a25ea6:	004ca703          	lw	a4,4(s9)
  a25eaa:	0705                	addi	a4,a4,1
  a25eac:	00eca223          	sw	a4,4(s9)
  a25eb0:	40f68733          	sub	a4,a3,a5
  a25eb4:	fce04de3          	bgtz	a4,a25e8e <SecOutput+0x866>
  a25eb8:	bf65                	j	a25e70 <SecOutput+0x848>

00a25eba <SecVsnprintfImpl>:
  a25eba:	8138                	push	{ra,s0-s1},-32
  a25ebc:	84ae                	mv	s1,a1
  a25ebe:	842a                	mv	s0,a0
  a25ec0:	85b2                	mv	a1,a2
  a25ec2:	c62a                	sw	a0,12(sp)
  a25ec4:	8636                	mv	a2,a3
  a25ec6:	0028                	addi	a0,sp,8
  a25ec8:	c426                	sw	s1,8(sp)
  a25eca:	f5eff0ef          	jal	ra,a25628 <SecOutput>
  a25ece:	00054b63          	bltz	a0,a25ee4 <SecVsnprintfImpl+0x2a>
  a25ed2:	47a2                	lw	a5,8(sp)
  a25ed4:	17fd                	addi	a5,a5,-1
  a25ed6:	c43e                	sw	a5,8(sp)
  a25ed8:	0007c663          	bltz	a5,a25ee4 <SecVsnprintfImpl+0x2a>
  a25edc:	47b2                	lw	a5,12(sp)
  a25ede:	00078023          	sb	zero,0(a5)
  a25ee2:	8134                	popret	{ra,s0-s1},32
  a25ee4:	47a2                	lw	a5,8(sp)
  a25ee6:	0007d763          	bgez	a5,a25ef4 <SecVsnprintfImpl+0x3a>
  a25eea:	9426                	add	s0,s0,s1
  a25eec:	fe040fa3          	sb	zero,-1(s0)
  a25ef0:	5579                	li	a0,-2
  a25ef2:	bfc5                	j	a25ee2 <SecVsnprintfImpl+0x28>
  a25ef4:	00040023          	sb	zero,0(s0)
  a25ef8:	557d                	li	a0,-1
  a25efa:	b7e5                	j	a25ee2 <SecVsnprintfImpl+0x28>

00a25efc <vsnprintf_s>:
  a25efc:	8028                	push	{ra,s0},-16
  a25efe:	8832                	mv	a6,a2
  a25f00:	842a                	mv	s0,a0
  a25f02:	87ae                	mv	a5,a1
  a25f04:	8636                	mv	a2,a3
  a25f06:	ca8d                	beqz	a3,a25f38 <vsnprintf_s+0x3c>
  a25f08:	e119                	bnez	a0,a25f0e <vsnprintf_s+0x12>
  a25f0a:	557d                	li	a0,-1
  a25f0c:	8024                	popret	{ra,s0},16
  a25f0e:	ddf5                	beqz	a1,a25f0a <vsnprintf_s+0xe>
  a25f10:	fe05cde3          	bltz	a1,a25f0a <vsnprintf_s+0xe>
  a25f14:	800008b7          	lui	a7,0x80000
  a25f18:	ffe8c893          	xori	a7,a7,-2
  a25f1c:	0308e063          	bltu	a7,a6,a25f3c <vsnprintf_s+0x40>
  a25f20:	86ba                	mv	a3,a4
  a25f22:	02b87263          	bgeu	a6,a1,a25f46 <vsnprintf_s+0x4a>
  a25f26:	00180593          	addi	a1,a6,1
  a25f2a:	f91ff0ef          	jal	ra,a25eba <SecVsnprintfImpl>
  a25f2e:	fef5073b          	beqi	a0,-2,a25f0a <vsnprintf_s+0xe>
  a25f32:	fc055de3          	bgez	a0,a25f0c <vsnprintf_s+0x10>
  a25f36:	a029                	j	a25f40 <vsnprintf_s+0x44>
  a25f38:	d969                	beqz	a0,a25f0a <vsnprintf_s+0xe>
  a25f3a:	d9e1                	beqz	a1,a25f0a <vsnprintf_s+0xe>
  a25f3c:	fc07c7e3          	bltz	a5,a25f0a <vsnprintf_s+0xe>
  a25f40:	00040023          	sb	zero,0(s0)
  a25f44:	b7d9                	j	a25f0a <vsnprintf_s+0xe>
  a25f46:	f75ff0ef          	jal	ra,a25eba <SecVsnprintfImpl>
  a25f4a:	b7e5                	j	a25f32 <vsnprintf_s+0x36>
  a25f4c:	04f9                	addi	s1,s1,30
  a25f4e:	0000                	unimp
  a25f50:	00000003          	lb	zero,0(zero) # 0 <__data_size__-0xdc>
	...

00a25f60 <excp_vect_table>:
  a25f60:	51ea                	lw	gp,184(sp)
  a25f62:	00a2                	slli	ra,ra,0x8
  a25f64:	5200                	lw	s0,32(a2)
  a25f66:	00a2                	slli	ra,ra,0x8
  a25f68:	5216                	lw	tp,100(sp)
  a25f6a:	00a2                	slli	ra,ra,0x8
  a25f6c:	52c6                	lw	t0,112(sp)
  a25f6e:	00a2                	slli	ra,ra,0x8
  a25f70:	522c                	lw	a1,96(a2)
  a25f72:	00a2                	slli	ra,ra,0x8
  a25f74:	5242                	lw	tp,48(sp)
  a25f76:	00a2                	slli	ra,ra,0x8
  a25f78:	5258                	lw	a4,36(a2)
  a25f7a:	00a2                	slli	ra,ra,0x8
  a25f7c:	526e                	lw	tp,248(sp)
  a25f7e:	00a2                	slli	ra,ra,0x8
  a25f80:	5284                	lw	s1,32(a3)
  a25f82:	00a2                	slli	ra,ra,0x8
  a25f84:	529a                	lw	t0,164(sp)
  a25f86:	00a2                	slli	ra,ra,0x8
  a25f88:	51d4                	lw	a3,36(a1)
  a25f8a:	00a2                	slli	ra,ra,0x8
  a25f8c:	52b0                	lw	a2,96(a3)
  a25f8e:	00a2                	slli	ra,ra,0x8
  a25f90:	52dc                	lw	a5,36(a3)
  a25f92:	00a2                	slli	ra,ra,0x8
  a25f94:	52f2                	lw	t0,60(sp)
  a25f96:	00a2                	slli	ra,ra,0x8
  a25f98:	51d4                	lw	a3,36(a1)
  a25f9a:	00a2                	slli	ra,ra,0x8
  a25f9c:	5308                	lw	a0,32(a4)
  a25f9e:	00a2                	slli	ra,ra,0x8
  a25fa0:	531e                	lw	t1,228(sp)
  a25fa2:	00a2                	slli	ra,ra,0x8
  a25fa4:	5334                	lw	a3,96(a4)
  a25fa6:	00a2                	slli	ra,ra,0x8

00a25fa8 <excp_vect_table_end>:
	...

00a25fb0 <trap_entry>:
  a25fb0:	7175                	addi	sp,sp,-144
  a25fb2:	d06e                	sw	s11,32(sp)
  a25fb4:	d26a                	sw	s10,36(sp)
  a25fb6:	d466                	sw	s9,40(sp)
  a25fb8:	d662                	sw	s8,44(sp)
  a25fba:	d85e                	sw	s7,48(sp)
  a25fbc:	da5a                	sw	s6,52(sp)
  a25fbe:	dc56                	sw	s5,56(sp)
  a25fc0:	de52                	sw	s4,60(sp)
  a25fc2:	c0ce                	sw	s3,64(sp)
  a25fc4:	c2ca                	sw	s2,68(sp)
  a25fc6:	c4a6                	sw	s1,72(sp)
  a25fc8:	c6a2                	sw	s0,76(sp)
  a25fca:	c8fe                	sw	t6,80(sp)
  a25fcc:	cafa                	sw	t5,84(sp)
  a25fce:	ccf6                	sw	t4,88(sp)
  a25fd0:	cef2                	sw	t3,92(sp)
  a25fd2:	d0c6                	sw	a7,96(sp)
  a25fd4:	d2c2                	sw	a6,100(sp)
  a25fd6:	d4be                	sw	a5,104(sp)
  a25fd8:	d6ba                	sw	a4,108(sp)
  a25fda:	d8b6                	sw	a3,112(sp)
  a25fdc:	dab2                	sw	a2,116(sp)
  a25fde:	dcae                	sw	a1,120(sp)
  a25fe0:	deaa                	sw	a0,124(sp)
  a25fe2:	c11e                	sw	t2,128(sp)
  a25fe4:	c31a                	sw	t1,132(sp)
  a25fe6:	c516                	sw	t0,136(sp)
  a25fe8:	c706                	sw	ra,140(sp)
  a25fea:	fc202a73          	csrr	s4,0xfc2
  a25fee:	c052                	sw	s4,0(sp)
  a25ff0:	342029f3          	csrr	s3,mcause
  a25ff4:	c24e                	sw	s3,4(sp)
  a25ff6:	34302973          	csrr	s2,mtval
  a25ffa:	c44a                	sw	s2,8(sp)
  a25ffc:	c60e                	sw	gp,12(sp)
  a25ffe:	300024f3          	csrr	s1,mstatus
  a26002:	c826                	sw	s1,16(sp)
  a26004:	34102473          	csrr	s0,mepc
  a26008:	ca22                	sw	s0,20(sp)
  a2600a:	cc12                	sw	tp,24(sp)
  a2600c:	ce0a                	sw	sp,28(sp)
  a2600e:	30047073          	csrci	mstatus,8
  a26012:	34011073          	csrw	mscratch,sp
  a26016:	fffdc117          	auipc	sp,0xfffdc
  a2601a:	3ea10113          	addi	sp,sp,1002 # a02400 <g_efuse_clock_period>
  a2601e:	42a1                	li	t0,8
  a26020:	00599463          	bne	s3,t0,a26028 <trap_entry+0x78>
  a26024:	dcefa06f          	j	a205f2 <handle_syscall>
  a26028:	00299293          	slli	t0,s3,0x2
  a2602c:	00000317          	auipc	t1,0x0
  a26030:	f3430313          	addi	t1,t1,-204 # a25f60 <excp_vect_table>
  a26034:	00000397          	auipc	t2,0x0
  a26038:	f7438393          	addi	t2,t2,-140 # a25fa8 <excp_vect_table_end>
  a2603c:	34002573          	csrr	a0,mscratch
  a26040:	929a                	add	t0,t0,t1
  a26042:	0472ff63          	bgeu	t0,t2,a260a0 <trap_entry+0xf0>
  a26046:	0002a283          	lw	t0,0(t0)
  a2604a:	ef7fe0ef          	jal	ra,a24f40 <do_hard_fault_handler>
  a2604e:	34002173          	csrr	sp,mscratch
  a26052:	6289                	lui	t0,0x2
  a26054:	80028293          	addi	t0,t0,-2048 # 1800 <ccause+0x83e>
  a26058:	3002a073          	csrs	mstatus,t0
  a2605c:	42d2                	lw	t0,20(sp)
  a2605e:	34129073          	csrw	mepc,t0
  a26062:	5d82                	lw	s11,32(sp)
  a26064:	5d12                	lw	s10,36(sp)
  a26066:	5ca2                	lw	s9,40(sp)
  a26068:	5c32                	lw	s8,44(sp)
  a2606a:	5bc2                	lw	s7,48(sp)
  a2606c:	5b52                	lw	s6,52(sp)
  a2606e:	5ae2                	lw	s5,56(sp)
  a26070:	5a72                	lw	s4,60(sp)
  a26072:	4986                	lw	s3,64(sp)
  a26074:	4916                	lw	s2,68(sp)
  a26076:	44a6                	lw	s1,72(sp)
  a26078:	4436                	lw	s0,76(sp)
  a2607a:	4fc6                	lw	t6,80(sp)
  a2607c:	4f56                	lw	t5,84(sp)
  a2607e:	4ee6                	lw	t4,88(sp)
  a26080:	4e76                	lw	t3,92(sp)
  a26082:	5886                	lw	a7,96(sp)
  a26084:	5816                	lw	a6,100(sp)
  a26086:	57a6                	lw	a5,104(sp)
  a26088:	5736                	lw	a4,108(sp)
  a2608a:	56c6                	lw	a3,112(sp)
  a2608c:	5656                	lw	a2,116(sp)
  a2608e:	55e6                	lw	a1,120(sp)
  a26090:	5576                	lw	a0,124(sp)
  a26092:	438a                	lw	t2,128(sp)
  a26094:	431a                	lw	t1,132(sp)
  a26096:	42aa                	lw	t0,136(sp)
  a26098:	40ba                	lw	ra,140(sp)
  a2609a:	6149                	addi	sp,sp,144
  a2609c:	30200073          	mret
  a260a0:	934ff06f          	j	a251d4 <do_trap_unknown>
	...

00a260ac <trap_vector>:
  a260ac:	f05ff06f          	j	a25fb0 <trap_entry>
  a260b0:	a9aff06f          	j	a2534a <default_handler>
  a260b4:	a96ff06f          	j	a2534a <default_handler>
  a260b8:	a92ff06f          	j	a2534a <default_handler>
  a260bc:	a8eff06f          	j	a2534a <default_handler>
  a260c0:	a8aff06f          	j	a2534a <default_handler>
  a260c4:	a86ff06f          	j	a2534a <default_handler>
  a260c8:	a82ff06f          	j	a2534a <default_handler>
  a260cc:	a7eff06f          	j	a2534a <default_handler>
  a260d0:	a7aff06f          	j	a2534a <default_handler>
  a260d4:	a76ff06f          	j	a2534a <default_handler>
  a260d8:	a72ff06f          	j	a2534a <default_handler>
  a260dc:	1700006f          	j	a2624c <nmi_vector>
  a260e0:	a6aff06f          	j	a2534a <default_handler>
  a260e4:	a66ff06f          	j	a2534a <default_handler>
  a260e8:	a62ff06f          	j	a2534a <default_handler>
  a260ec:	a5eff06f          	j	a2534a <default_handler>
  a260f0:	a5aff06f          	j	a2534a <default_handler>
  a260f4:	a56ff06f          	j	a2534a <default_handler>
  a260f8:	a52ff06f          	j	a2534a <default_handler>
  a260fc:	a4eff06f          	j	a2534a <default_handler>
  a26100:	a4aff06f          	j	a2534a <default_handler>
  a26104:	a46ff06f          	j	a2534a <default_handler>
  a26108:	a42ff06f          	j	a2534a <default_handler>
  a2610c:	a3eff06f          	j	a2534a <default_handler>
  a26110:	a3aff06f          	j	a2534a <default_handler>
  a26114:	2000006f          	j	a26314 <default_interrupt0_handler>
  a26118:	2a80006f          	j	a263c0 <default_interrupt1_handler>
  a2611c:	3500006f          	j	a2646c <default_interrupt2_handler>
  a26120:	3f80006f          	j	a26518 <default_interrupt3_handler>
  a26124:	4a00006f          	j	a265c4 <default_interrupt4_handler>
  a26128:	5480006f          	j	a26670 <default_interrupt5_handler>
  a2612c:	5f00006f          	j	a2671c <default_local_interrupt_handler>
  a26130:	5ec0006f          	j	a2671c <default_local_interrupt_handler>
  a26134:	5e80006f          	j	a2671c <default_local_interrupt_handler>
  a26138:	5e40006f          	j	a2671c <default_local_interrupt_handler>
  a2613c:	5e00006f          	j	a2671c <default_local_interrupt_handler>
  a26140:	5dc0006f          	j	a2671c <default_local_interrupt_handler>
  a26144:	5d80006f          	j	a2671c <default_local_interrupt_handler>
  a26148:	5d40006f          	j	a2671c <default_local_interrupt_handler>
  a2614c:	5d00006f          	j	a2671c <default_local_interrupt_handler>
  a26150:	5cc0006f          	j	a2671c <default_local_interrupt_handler>
  a26154:	5c80006f          	j	a2671c <default_local_interrupt_handler>
  a26158:	5c40006f          	j	a2671c <default_local_interrupt_handler>
  a2615c:	5c00006f          	j	a2671c <default_local_interrupt_handler>
  a26160:	5bc0006f          	j	a2671c <default_local_interrupt_handler>
  a26164:	5b80006f          	j	a2671c <default_local_interrupt_handler>
  a26168:	5b40006f          	j	a2671c <default_local_interrupt_handler>
  a2616c:	5b00006f          	j	a2671c <default_local_interrupt_handler>
  a26170:	5ac0006f          	j	a2671c <default_local_interrupt_handler>
  a26174:	5a80006f          	j	a2671c <default_local_interrupt_handler>
  a26178:	5a40006f          	j	a2671c <default_local_interrupt_handler>
  a2617c:	5a00006f          	j	a2671c <default_local_interrupt_handler>
  a26180:	59c0006f          	j	a2671c <default_local_interrupt_handler>
  a26184:	5980006f          	j	a2671c <default_local_interrupt_handler>
  a26188:	5940006f          	j	a2671c <default_local_interrupt_handler>
  a2618c:	5900006f          	j	a2671c <default_local_interrupt_handler>
  a26190:	58c0006f          	j	a2671c <default_local_interrupt_handler>
  a26194:	5880006f          	j	a2671c <default_local_interrupt_handler>
  a26198:	5840006f          	j	a2671c <default_local_interrupt_handler>
  a2619c:	5800006f          	j	a2671c <default_local_interrupt_handler>
  a261a0:	57c0006f          	j	a2671c <default_local_interrupt_handler>
  a261a4:	5780006f          	j	a2671c <default_local_interrupt_handler>
  a261a8:	5740006f          	j	a2671c <default_local_interrupt_handler>
  a261ac:	5700006f          	j	a2671c <default_local_interrupt_handler>
  a261b0:	56c0006f          	j	a2671c <default_local_interrupt_handler>
  a261b4:	5680006f          	j	a2671c <default_local_interrupt_handler>
  a261b8:	5640006f          	j	a2671c <default_local_interrupt_handler>
  a261bc:	5600006f          	j	a2671c <default_local_interrupt_handler>
  a261c0:	55c0006f          	j	a2671c <default_local_interrupt_handler>
  a261c4:	5580006f          	j	a2671c <default_local_interrupt_handler>
  a261c8:	5540006f          	j	a2671c <default_local_interrupt_handler>
  a261cc:	5500006f          	j	a2671c <default_local_interrupt_handler>
  a261d0:	54c0006f          	j	a2671c <default_local_interrupt_handler>
  a261d4:	5480006f          	j	a2671c <default_local_interrupt_handler>
  a261d8:	5440006f          	j	a2671c <default_local_interrupt_handler>
  a261dc:	5400006f          	j	a2671c <default_local_interrupt_handler>
  a261e0:	53c0006f          	j	a2671c <default_local_interrupt_handler>
  a261e4:	5380006f          	j	a2671c <default_local_interrupt_handler>
  a261e8:	5340006f          	j	a2671c <default_local_interrupt_handler>
  a261ec:	5300006f          	j	a2671c <default_local_interrupt_handler>
  a261f0:	52c0006f          	j	a2671c <default_local_interrupt_handler>
  a261f4:	5280006f          	j	a2671c <default_local_interrupt_handler>
  a261f8:	5240006f          	j	a2671c <default_local_interrupt_handler>
  a261fc:	5200006f          	j	a2671c <default_local_interrupt_handler>
  a26200:	51c0006f          	j	a2671c <default_local_interrupt_handler>
  a26204:	5180006f          	j	a2671c <default_local_interrupt_handler>
  a26208:	5140006f          	j	a2671c <default_local_interrupt_handler>
  a2620c:	5100006f          	j	a2671c <default_local_interrupt_handler>
  a26210:	50c0006f          	j	a2671c <default_local_interrupt_handler>
  a26214:	5080006f          	j	a2671c <default_local_interrupt_handler>
  a26218:	5040006f          	j	a2671c <default_local_interrupt_handler>
  a2621c:	5000006f          	j	a2671c <default_local_interrupt_handler>
  a26220:	4fc0006f          	j	a2671c <default_local_interrupt_handler>
  a26224:	4f80006f          	j	a2671c <default_local_interrupt_handler>
  a26228:	4f40006f          	j	a2671c <default_local_interrupt_handler>
  a2622c:	4f00006f          	j	a2671c <default_local_interrupt_handler>
  a26230:	4ec0006f          	j	a2671c <default_local_interrupt_handler>
  a26234:	4e80006f          	j	a2671c <default_local_interrupt_handler>
  a26238:	4e40006f          	j	a2671c <default_local_interrupt_handler>
  a2623c:	4e00006f          	j	a2671c <default_local_interrupt_handler>
  a26240:	4dc0006f          	j	a2671c <default_local_interrupt_handler>
  a26244:	4d80006f          	j	a2671c <default_local_interrupt_handler>
  a26248:	0000                	unimp
	...

00a2624c <nmi_vector>:
  a2624c:	30047073          	csrci	mstatus,8
  a26250:	7175                	addi	sp,sp,-144
  a26252:	d06e                	sw	s11,32(sp)
  a26254:	d26a                	sw	s10,36(sp)
  a26256:	d466                	sw	s9,40(sp)
  a26258:	d662                	sw	s8,44(sp)
  a2625a:	d85e                	sw	s7,48(sp)
  a2625c:	da5a                	sw	s6,52(sp)
  a2625e:	dc56                	sw	s5,56(sp)
  a26260:	de52                	sw	s4,60(sp)
  a26262:	c0ce                	sw	s3,64(sp)
  a26264:	c2ca                	sw	s2,68(sp)
  a26266:	c4a6                	sw	s1,72(sp)
  a26268:	c6a2                	sw	s0,76(sp)
  a2626a:	c8fe                	sw	t6,80(sp)
  a2626c:	cafa                	sw	t5,84(sp)
  a2626e:	ccf6                	sw	t4,88(sp)
  a26270:	cef2                	sw	t3,92(sp)
  a26272:	d0c6                	sw	a7,96(sp)
  a26274:	d2c2                	sw	a6,100(sp)
  a26276:	d4be                	sw	a5,104(sp)
  a26278:	d6ba                	sw	a4,108(sp)
  a2627a:	d8b6                	sw	a3,112(sp)
  a2627c:	dab2                	sw	a2,116(sp)
  a2627e:	dcae                	sw	a1,120(sp)
  a26280:	deaa                	sw	a0,124(sp)
  a26282:	c11e                	sw	t2,128(sp)
  a26284:	c31a                	sw	t1,132(sp)
  a26286:	c516                	sw	t0,136(sp)
  a26288:	c706                	sw	ra,140(sp)
  a2628a:	fc202a73          	csrr	s4,0xfc2
  a2628e:	c052                	sw	s4,0(sp)
  a26290:	342029f3          	csrr	s3,mcause
  a26294:	c24e                	sw	s3,4(sp)
  a26296:	34302973          	csrr	s2,mtval
  a2629a:	c44a                	sw	s2,8(sp)
  a2629c:	c60e                	sw	gp,12(sp)
  a2629e:	300024f3          	csrr	s1,mstatus
  a262a2:	c826                	sw	s1,16(sp)
  a262a4:	34102473          	csrr	s0,mepc
  a262a8:	ca22                	sw	s0,20(sp)
  a262aa:	cc12                	sw	tp,24(sp)
  a262ac:	ce0a                	sw	sp,28(sp)
  a262ae:	34011073          	csrw	mscratch,sp
  a262b2:	fffdc117          	auipc	sp,0xfffdc
  a262b6:	d4e10113          	addi	sp,sp,-690 # a02000 <__irq_stack_top__>
  a262ba:	34002573          	csrr	a0,mscratch
  a262be:	c83fe0ef          	jal	ra,a24f40 <do_hard_fault_handler>
  a262c2:	34002173          	csrr	sp,mscratch
  a262c6:	6289                	lui	t0,0x2
  a262c8:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a262cc:	3002a073          	csrs	mstatus,t0
  a262d0:	42d2                	lw	t0,20(sp)
  a262d2:	34129073          	csrw	mepc,t0
  a262d6:	5d82                	lw	s11,32(sp)
  a262d8:	5d12                	lw	s10,36(sp)
  a262da:	5ca2                	lw	s9,40(sp)
  a262dc:	5c32                	lw	s8,44(sp)
  a262de:	5bc2                	lw	s7,48(sp)
  a262e0:	5b52                	lw	s6,52(sp)
  a262e2:	5ae2                	lw	s5,56(sp)
  a262e4:	5a72                	lw	s4,60(sp)
  a262e6:	4986                	lw	s3,64(sp)
  a262e8:	4916                	lw	s2,68(sp)
  a262ea:	44a6                	lw	s1,72(sp)
  a262ec:	4436                	lw	s0,76(sp)
  a262ee:	4fc6                	lw	t6,80(sp)
  a262f0:	4f56                	lw	t5,84(sp)
  a262f2:	4ee6                	lw	t4,88(sp)
  a262f4:	4e76                	lw	t3,92(sp)
  a262f6:	5886                	lw	a7,96(sp)
  a262f8:	5816                	lw	a6,100(sp)
  a262fa:	57a6                	lw	a5,104(sp)
  a262fc:	5736                	lw	a4,108(sp)
  a262fe:	56c6                	lw	a3,112(sp)
  a26300:	5656                	lw	a2,116(sp)
  a26302:	55e6                	lw	a1,120(sp)
  a26304:	5576                	lw	a0,124(sp)
  a26306:	438a                	lw	t2,128(sp)
  a26308:	431a                	lw	t1,132(sp)
  a2630a:	42aa                	lw	t0,136(sp)
  a2630c:	40ba                	lw	ra,140(sp)
  a2630e:	6149                	addi	sp,sp,144
  a26310:	30200073          	mret

00a26314 <default_interrupt0_handler>:
  a26314:	30047073          	csrci	mstatus,8
  a26318:	7119                	addi	sp,sp,-128
  a2631a:	c006                	sw	ra,0(sp)
  a2631c:	c20a                	sw	sp,4(sp)
  a2631e:	c40e                	sw	gp,8(sp)
  a26320:	c612                	sw	tp,12(sp)
  a26322:	c816                	sw	t0,16(sp)
  a26324:	ca1a                	sw	t1,20(sp)
  a26326:	cc1e                	sw	t2,24(sp)
  a26328:	ce22                	sw	s0,28(sp)
  a2632a:	d026                	sw	s1,32(sp)
  a2632c:	d22a                	sw	a0,36(sp)
  a2632e:	d42e                	sw	a1,40(sp)
  a26330:	d632                	sw	a2,44(sp)
  a26332:	d836                	sw	a3,48(sp)
  a26334:	da3a                	sw	a4,52(sp)
  a26336:	dc3e                	sw	a5,56(sp)
  a26338:	de42                	sw	a6,60(sp)
  a2633a:	c0c6                	sw	a7,64(sp)
  a2633c:	c2ca                	sw	s2,68(sp)
  a2633e:	c4ce                	sw	s3,72(sp)
  a26340:	c6d2                	sw	s4,76(sp)
  a26342:	c8d6                	sw	s5,80(sp)
  a26344:	cada                	sw	s6,84(sp)
  a26346:	ccde                	sw	s7,88(sp)
  a26348:	cee2                	sw	s8,92(sp)
  a2634a:	d0e6                	sw	s9,96(sp)
  a2634c:	d2ea                	sw	s10,100(sp)
  a2634e:	d4ee                	sw	s11,104(sp)
  a26350:	d6f2                	sw	t3,108(sp)
  a26352:	d8f6                	sw	t4,112(sp)
  a26354:	dafa                	sw	t5,116(sp)
  a26356:	dcfe                	sw	t6,120(sp)
  a26358:	341022f3          	csrr	t0,mepc
  a2635c:	de96                	sw	t0,124(sp)
  a2635e:	34011073          	csrw	mscratch,sp
  a26362:	fffdc117          	auipc	sp,0xfffdc
  a26366:	c9e10113          	addi	sp,sp,-866 # a02000 <__irq_stack_top__>
  a2636a:	9f1fe0ef          	jal	ra,a24d5a <interrupt0_handler>
  a2636e:	34002173          	csrr	sp,mscratch
  a26372:	6289                	lui	t0,0x2
  a26374:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a26378:	3002a073          	csrs	mstatus,t0
  a2637c:	52f6                	lw	t0,124(sp)
  a2637e:	34129073          	csrw	mepc,t0
  a26382:	4082                	lw	ra,0(sp)
  a26384:	42c2                	lw	t0,16(sp)
  a26386:	4352                	lw	t1,20(sp)
  a26388:	43e2                	lw	t2,24(sp)
  a2638a:	4472                	lw	s0,28(sp)
  a2638c:	5482                	lw	s1,32(sp)
  a2638e:	5512                	lw	a0,36(sp)
  a26390:	55a2                	lw	a1,40(sp)
  a26392:	5632                	lw	a2,44(sp)
  a26394:	56c2                	lw	a3,48(sp)
  a26396:	5752                	lw	a4,52(sp)
  a26398:	57e2                	lw	a5,56(sp)
  a2639a:	5872                	lw	a6,60(sp)
  a2639c:	4886                	lw	a7,64(sp)
  a2639e:	4916                	lw	s2,68(sp)
  a263a0:	49a6                	lw	s3,72(sp)
  a263a2:	4a36                	lw	s4,76(sp)
  a263a4:	4ac6                	lw	s5,80(sp)
  a263a6:	4b56                	lw	s6,84(sp)
  a263a8:	4be6                	lw	s7,88(sp)
  a263aa:	4c76                	lw	s8,92(sp)
  a263ac:	5c86                	lw	s9,96(sp)
  a263ae:	5d16                	lw	s10,100(sp)
  a263b0:	5da6                	lw	s11,104(sp)
  a263b2:	5e36                	lw	t3,108(sp)
  a263b4:	5ec6                	lw	t4,112(sp)
  a263b6:	5f56                	lw	t5,116(sp)
  a263b8:	5fe6                	lw	t6,120(sp)
  a263ba:	6109                	addi	sp,sp,128
  a263bc:	30200073          	mret

00a263c0 <default_interrupt1_handler>:
  a263c0:	30047073          	csrci	mstatus,8
  a263c4:	7119                	addi	sp,sp,-128
  a263c6:	c006                	sw	ra,0(sp)
  a263c8:	c20a                	sw	sp,4(sp)
  a263ca:	c40e                	sw	gp,8(sp)
  a263cc:	c612                	sw	tp,12(sp)
  a263ce:	c816                	sw	t0,16(sp)
  a263d0:	ca1a                	sw	t1,20(sp)
  a263d2:	cc1e                	sw	t2,24(sp)
  a263d4:	ce22                	sw	s0,28(sp)
  a263d6:	d026                	sw	s1,32(sp)
  a263d8:	d22a                	sw	a0,36(sp)
  a263da:	d42e                	sw	a1,40(sp)
  a263dc:	d632                	sw	a2,44(sp)
  a263de:	d836                	sw	a3,48(sp)
  a263e0:	da3a                	sw	a4,52(sp)
  a263e2:	dc3e                	sw	a5,56(sp)
  a263e4:	de42                	sw	a6,60(sp)
  a263e6:	c0c6                	sw	a7,64(sp)
  a263e8:	c2ca                	sw	s2,68(sp)
  a263ea:	c4ce                	sw	s3,72(sp)
  a263ec:	c6d2                	sw	s4,76(sp)
  a263ee:	c8d6                	sw	s5,80(sp)
  a263f0:	cada                	sw	s6,84(sp)
  a263f2:	ccde                	sw	s7,88(sp)
  a263f4:	cee2                	sw	s8,92(sp)
  a263f6:	d0e6                	sw	s9,96(sp)
  a263f8:	d2ea                	sw	s10,100(sp)
  a263fa:	d4ee                	sw	s11,104(sp)
  a263fc:	d6f2                	sw	t3,108(sp)
  a263fe:	d8f6                	sw	t4,112(sp)
  a26400:	dafa                	sw	t5,116(sp)
  a26402:	dcfe                	sw	t6,120(sp)
  a26404:	341022f3          	csrr	t0,mepc
  a26408:	de96                	sw	t0,124(sp)
  a2640a:	34011073          	csrw	mscratch,sp
  a2640e:	fffdc117          	auipc	sp,0xfffdc
  a26412:	bf210113          	addi	sp,sp,-1038 # a02000 <__irq_stack_top__>
  a26416:	985fe0ef          	jal	ra,a24d9a <interrupt1_handler>
  a2641a:	34002173          	csrr	sp,mscratch
  a2641e:	6289                	lui	t0,0x2
  a26420:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a26424:	3002a073          	csrs	mstatus,t0
  a26428:	52f6                	lw	t0,124(sp)
  a2642a:	34129073          	csrw	mepc,t0
  a2642e:	4082                	lw	ra,0(sp)
  a26430:	42c2                	lw	t0,16(sp)
  a26432:	4352                	lw	t1,20(sp)
  a26434:	43e2                	lw	t2,24(sp)
  a26436:	4472                	lw	s0,28(sp)
  a26438:	5482                	lw	s1,32(sp)
  a2643a:	5512                	lw	a0,36(sp)
  a2643c:	55a2                	lw	a1,40(sp)
  a2643e:	5632                	lw	a2,44(sp)
  a26440:	56c2                	lw	a3,48(sp)
  a26442:	5752                	lw	a4,52(sp)
  a26444:	57e2                	lw	a5,56(sp)
  a26446:	5872                	lw	a6,60(sp)
  a26448:	4886                	lw	a7,64(sp)
  a2644a:	4916                	lw	s2,68(sp)
  a2644c:	49a6                	lw	s3,72(sp)
  a2644e:	4a36                	lw	s4,76(sp)
  a26450:	4ac6                	lw	s5,80(sp)
  a26452:	4b56                	lw	s6,84(sp)
  a26454:	4be6                	lw	s7,88(sp)
  a26456:	4c76                	lw	s8,92(sp)
  a26458:	5c86                	lw	s9,96(sp)
  a2645a:	5d16                	lw	s10,100(sp)
  a2645c:	5da6                	lw	s11,104(sp)
  a2645e:	5e36                	lw	t3,108(sp)
  a26460:	5ec6                	lw	t4,112(sp)
  a26462:	5f56                	lw	t5,116(sp)
  a26464:	5fe6                	lw	t6,120(sp)
  a26466:	6109                	addi	sp,sp,128
  a26468:	30200073          	mret

00a2646c <default_interrupt2_handler>:
  a2646c:	30047073          	csrci	mstatus,8
  a26470:	7119                	addi	sp,sp,-128
  a26472:	c006                	sw	ra,0(sp)
  a26474:	c20a                	sw	sp,4(sp)
  a26476:	c40e                	sw	gp,8(sp)
  a26478:	c612                	sw	tp,12(sp)
  a2647a:	c816                	sw	t0,16(sp)
  a2647c:	ca1a                	sw	t1,20(sp)
  a2647e:	cc1e                	sw	t2,24(sp)
  a26480:	ce22                	sw	s0,28(sp)
  a26482:	d026                	sw	s1,32(sp)
  a26484:	d22a                	sw	a0,36(sp)
  a26486:	d42e                	sw	a1,40(sp)
  a26488:	d632                	sw	a2,44(sp)
  a2648a:	d836                	sw	a3,48(sp)
  a2648c:	da3a                	sw	a4,52(sp)
  a2648e:	dc3e                	sw	a5,56(sp)
  a26490:	de42                	sw	a6,60(sp)
  a26492:	c0c6                	sw	a7,64(sp)
  a26494:	c2ca                	sw	s2,68(sp)
  a26496:	c4ce                	sw	s3,72(sp)
  a26498:	c6d2                	sw	s4,76(sp)
  a2649a:	c8d6                	sw	s5,80(sp)
  a2649c:	cada                	sw	s6,84(sp)
  a2649e:	ccde                	sw	s7,88(sp)
  a264a0:	cee2                	sw	s8,92(sp)
  a264a2:	d0e6                	sw	s9,96(sp)
  a264a4:	d2ea                	sw	s10,100(sp)
  a264a6:	d4ee                	sw	s11,104(sp)
  a264a8:	d6f2                	sw	t3,108(sp)
  a264aa:	d8f6                	sw	t4,112(sp)
  a264ac:	dafa                	sw	t5,116(sp)
  a264ae:	dcfe                	sw	t6,120(sp)
  a264b0:	341022f3          	csrr	t0,mepc
  a264b4:	de96                	sw	t0,124(sp)
  a264b6:	34011073          	csrw	mscratch,sp
  a264ba:	fffdc117          	auipc	sp,0xfffdc
  a264be:	b4610113          	addi	sp,sp,-1210 # a02000 <__irq_stack_top__>
  a264c2:	919fe0ef          	jal	ra,a24dda <interrupt2_handler>
  a264c6:	34002173          	csrr	sp,mscratch
  a264ca:	6289                	lui	t0,0x2
  a264cc:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a264d0:	3002a073          	csrs	mstatus,t0
  a264d4:	52f6                	lw	t0,124(sp)
  a264d6:	34129073          	csrw	mepc,t0
  a264da:	4082                	lw	ra,0(sp)
  a264dc:	42c2                	lw	t0,16(sp)
  a264de:	4352                	lw	t1,20(sp)
  a264e0:	43e2                	lw	t2,24(sp)
  a264e2:	4472                	lw	s0,28(sp)
  a264e4:	5482                	lw	s1,32(sp)
  a264e6:	5512                	lw	a0,36(sp)
  a264e8:	55a2                	lw	a1,40(sp)
  a264ea:	5632                	lw	a2,44(sp)
  a264ec:	56c2                	lw	a3,48(sp)
  a264ee:	5752                	lw	a4,52(sp)
  a264f0:	57e2                	lw	a5,56(sp)
  a264f2:	5872                	lw	a6,60(sp)
  a264f4:	4886                	lw	a7,64(sp)
  a264f6:	4916                	lw	s2,68(sp)
  a264f8:	49a6                	lw	s3,72(sp)
  a264fa:	4a36                	lw	s4,76(sp)
  a264fc:	4ac6                	lw	s5,80(sp)
  a264fe:	4b56                	lw	s6,84(sp)
  a26500:	4be6                	lw	s7,88(sp)
  a26502:	4c76                	lw	s8,92(sp)
  a26504:	5c86                	lw	s9,96(sp)
  a26506:	5d16                	lw	s10,100(sp)
  a26508:	5da6                	lw	s11,104(sp)
  a2650a:	5e36                	lw	t3,108(sp)
  a2650c:	5ec6                	lw	t4,112(sp)
  a2650e:	5f56                	lw	t5,116(sp)
  a26510:	5fe6                	lw	t6,120(sp)
  a26512:	6109                	addi	sp,sp,128
  a26514:	30200073          	mret

00a26518 <default_interrupt3_handler>:
  a26518:	30047073          	csrci	mstatus,8
  a2651c:	7119                	addi	sp,sp,-128
  a2651e:	c006                	sw	ra,0(sp)
  a26520:	c20a                	sw	sp,4(sp)
  a26522:	c40e                	sw	gp,8(sp)
  a26524:	c612                	sw	tp,12(sp)
  a26526:	c816                	sw	t0,16(sp)
  a26528:	ca1a                	sw	t1,20(sp)
  a2652a:	cc1e                	sw	t2,24(sp)
  a2652c:	ce22                	sw	s0,28(sp)
  a2652e:	d026                	sw	s1,32(sp)
  a26530:	d22a                	sw	a0,36(sp)
  a26532:	d42e                	sw	a1,40(sp)
  a26534:	d632                	sw	a2,44(sp)
  a26536:	d836                	sw	a3,48(sp)
  a26538:	da3a                	sw	a4,52(sp)
  a2653a:	dc3e                	sw	a5,56(sp)
  a2653c:	de42                	sw	a6,60(sp)
  a2653e:	c0c6                	sw	a7,64(sp)
  a26540:	c2ca                	sw	s2,68(sp)
  a26542:	c4ce                	sw	s3,72(sp)
  a26544:	c6d2                	sw	s4,76(sp)
  a26546:	c8d6                	sw	s5,80(sp)
  a26548:	cada                	sw	s6,84(sp)
  a2654a:	ccde                	sw	s7,88(sp)
  a2654c:	cee2                	sw	s8,92(sp)
  a2654e:	d0e6                	sw	s9,96(sp)
  a26550:	d2ea                	sw	s10,100(sp)
  a26552:	d4ee                	sw	s11,104(sp)
  a26554:	d6f2                	sw	t3,108(sp)
  a26556:	d8f6                	sw	t4,112(sp)
  a26558:	dafa                	sw	t5,116(sp)
  a2655a:	dcfe                	sw	t6,120(sp)
  a2655c:	341022f3          	csrr	t0,mepc
  a26560:	de96                	sw	t0,124(sp)
  a26562:	34011073          	csrw	mscratch,sp
  a26566:	fffdc117          	auipc	sp,0xfffdc
  a2656a:	a9a10113          	addi	sp,sp,-1382 # a02000 <__irq_stack_top__>
  a2656e:	8adfe0ef          	jal	ra,a24e1a <interrupt3_handler>
  a26572:	34002173          	csrr	sp,mscratch
  a26576:	6289                	lui	t0,0x2
  a26578:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a2657c:	3002a073          	csrs	mstatus,t0
  a26580:	52f6                	lw	t0,124(sp)
  a26582:	34129073          	csrw	mepc,t0
  a26586:	4082                	lw	ra,0(sp)
  a26588:	42c2                	lw	t0,16(sp)
  a2658a:	4352                	lw	t1,20(sp)
  a2658c:	43e2                	lw	t2,24(sp)
  a2658e:	4472                	lw	s0,28(sp)
  a26590:	5482                	lw	s1,32(sp)
  a26592:	5512                	lw	a0,36(sp)
  a26594:	55a2                	lw	a1,40(sp)
  a26596:	5632                	lw	a2,44(sp)
  a26598:	56c2                	lw	a3,48(sp)
  a2659a:	5752                	lw	a4,52(sp)
  a2659c:	57e2                	lw	a5,56(sp)
  a2659e:	5872                	lw	a6,60(sp)
  a265a0:	4886                	lw	a7,64(sp)
  a265a2:	4916                	lw	s2,68(sp)
  a265a4:	49a6                	lw	s3,72(sp)
  a265a6:	4a36                	lw	s4,76(sp)
  a265a8:	4ac6                	lw	s5,80(sp)
  a265aa:	4b56                	lw	s6,84(sp)
  a265ac:	4be6                	lw	s7,88(sp)
  a265ae:	4c76                	lw	s8,92(sp)
  a265b0:	5c86                	lw	s9,96(sp)
  a265b2:	5d16                	lw	s10,100(sp)
  a265b4:	5da6                	lw	s11,104(sp)
  a265b6:	5e36                	lw	t3,108(sp)
  a265b8:	5ec6                	lw	t4,112(sp)
  a265ba:	5f56                	lw	t5,116(sp)
  a265bc:	5fe6                	lw	t6,120(sp)
  a265be:	6109                	addi	sp,sp,128
  a265c0:	30200073          	mret

00a265c4 <default_interrupt4_handler>:
  a265c4:	30047073          	csrci	mstatus,8
  a265c8:	7119                	addi	sp,sp,-128
  a265ca:	c006                	sw	ra,0(sp)
  a265cc:	c20a                	sw	sp,4(sp)
  a265ce:	c40e                	sw	gp,8(sp)
  a265d0:	c612                	sw	tp,12(sp)
  a265d2:	c816                	sw	t0,16(sp)
  a265d4:	ca1a                	sw	t1,20(sp)
  a265d6:	cc1e                	sw	t2,24(sp)
  a265d8:	ce22                	sw	s0,28(sp)
  a265da:	d026                	sw	s1,32(sp)
  a265dc:	d22a                	sw	a0,36(sp)
  a265de:	d42e                	sw	a1,40(sp)
  a265e0:	d632                	sw	a2,44(sp)
  a265e2:	d836                	sw	a3,48(sp)
  a265e4:	da3a                	sw	a4,52(sp)
  a265e6:	dc3e                	sw	a5,56(sp)
  a265e8:	de42                	sw	a6,60(sp)
  a265ea:	c0c6                	sw	a7,64(sp)
  a265ec:	c2ca                	sw	s2,68(sp)
  a265ee:	c4ce                	sw	s3,72(sp)
  a265f0:	c6d2                	sw	s4,76(sp)
  a265f2:	c8d6                	sw	s5,80(sp)
  a265f4:	cada                	sw	s6,84(sp)
  a265f6:	ccde                	sw	s7,88(sp)
  a265f8:	cee2                	sw	s8,92(sp)
  a265fa:	d0e6                	sw	s9,96(sp)
  a265fc:	d2ea                	sw	s10,100(sp)
  a265fe:	d4ee                	sw	s11,104(sp)
  a26600:	d6f2                	sw	t3,108(sp)
  a26602:	d8f6                	sw	t4,112(sp)
  a26604:	dafa                	sw	t5,116(sp)
  a26606:	dcfe                	sw	t6,120(sp)
  a26608:	341022f3          	csrr	t0,mepc
  a2660c:	de96                	sw	t0,124(sp)
  a2660e:	34011073          	csrw	mscratch,sp
  a26612:	fffdc117          	auipc	sp,0xfffdc
  a26616:	9ee10113          	addi	sp,sp,-1554 # a02000 <__irq_stack_top__>
  a2661a:	841fe0ef          	jal	ra,a24e5a <interrupt4_handler>
  a2661e:	34002173          	csrr	sp,mscratch
  a26622:	6289                	lui	t0,0x2
  a26624:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a26628:	3002a073          	csrs	mstatus,t0
  a2662c:	52f6                	lw	t0,124(sp)
  a2662e:	34129073          	csrw	mepc,t0
  a26632:	4082                	lw	ra,0(sp)
  a26634:	42c2                	lw	t0,16(sp)
  a26636:	4352                	lw	t1,20(sp)
  a26638:	43e2                	lw	t2,24(sp)
  a2663a:	4472                	lw	s0,28(sp)
  a2663c:	5482                	lw	s1,32(sp)
  a2663e:	5512                	lw	a0,36(sp)
  a26640:	55a2                	lw	a1,40(sp)
  a26642:	5632                	lw	a2,44(sp)
  a26644:	56c2                	lw	a3,48(sp)
  a26646:	5752                	lw	a4,52(sp)
  a26648:	57e2                	lw	a5,56(sp)
  a2664a:	5872                	lw	a6,60(sp)
  a2664c:	4886                	lw	a7,64(sp)
  a2664e:	4916                	lw	s2,68(sp)
  a26650:	49a6                	lw	s3,72(sp)
  a26652:	4a36                	lw	s4,76(sp)
  a26654:	4ac6                	lw	s5,80(sp)
  a26656:	4b56                	lw	s6,84(sp)
  a26658:	4be6                	lw	s7,88(sp)
  a2665a:	4c76                	lw	s8,92(sp)
  a2665c:	5c86                	lw	s9,96(sp)
  a2665e:	5d16                	lw	s10,100(sp)
  a26660:	5da6                	lw	s11,104(sp)
  a26662:	5e36                	lw	t3,108(sp)
  a26664:	5ec6                	lw	t4,112(sp)
  a26666:	5f56                	lw	t5,116(sp)
  a26668:	5fe6                	lw	t6,120(sp)
  a2666a:	6109                	addi	sp,sp,128
  a2666c:	30200073          	mret

00a26670 <default_interrupt5_handler>:
  a26670:	30047073          	csrci	mstatus,8
  a26674:	7119                	addi	sp,sp,-128
  a26676:	c006                	sw	ra,0(sp)
  a26678:	c20a                	sw	sp,4(sp)
  a2667a:	c40e                	sw	gp,8(sp)
  a2667c:	c612                	sw	tp,12(sp)
  a2667e:	c816                	sw	t0,16(sp)
  a26680:	ca1a                	sw	t1,20(sp)
  a26682:	cc1e                	sw	t2,24(sp)
  a26684:	ce22                	sw	s0,28(sp)
  a26686:	d026                	sw	s1,32(sp)
  a26688:	d22a                	sw	a0,36(sp)
  a2668a:	d42e                	sw	a1,40(sp)
  a2668c:	d632                	sw	a2,44(sp)
  a2668e:	d836                	sw	a3,48(sp)
  a26690:	da3a                	sw	a4,52(sp)
  a26692:	dc3e                	sw	a5,56(sp)
  a26694:	de42                	sw	a6,60(sp)
  a26696:	c0c6                	sw	a7,64(sp)
  a26698:	c2ca                	sw	s2,68(sp)
  a2669a:	c4ce                	sw	s3,72(sp)
  a2669c:	c6d2                	sw	s4,76(sp)
  a2669e:	c8d6                	sw	s5,80(sp)
  a266a0:	cada                	sw	s6,84(sp)
  a266a2:	ccde                	sw	s7,88(sp)
  a266a4:	cee2                	sw	s8,92(sp)
  a266a6:	d0e6                	sw	s9,96(sp)
  a266a8:	d2ea                	sw	s10,100(sp)
  a266aa:	d4ee                	sw	s11,104(sp)
  a266ac:	d6f2                	sw	t3,108(sp)
  a266ae:	d8f6                	sw	t4,112(sp)
  a266b0:	dafa                	sw	t5,116(sp)
  a266b2:	dcfe                	sw	t6,120(sp)
  a266b4:	341022f3          	csrr	t0,mepc
  a266b8:	de96                	sw	t0,124(sp)
  a266ba:	34011073          	csrw	mscratch,sp
  a266be:	fffdc117          	auipc	sp,0xfffdc
  a266c2:	94210113          	addi	sp,sp,-1726 # a02000 <__irq_stack_top__>
  a266c6:	fd4fe0ef          	jal	ra,a24e9a <interrupt5_handler>
  a266ca:	34002173          	csrr	sp,mscratch
  a266ce:	6289                	lui	t0,0x2
  a266d0:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a266d4:	3002a073          	csrs	mstatus,t0
  a266d8:	52f6                	lw	t0,124(sp)
  a266da:	34129073          	csrw	mepc,t0
  a266de:	4082                	lw	ra,0(sp)
  a266e0:	42c2                	lw	t0,16(sp)
  a266e2:	4352                	lw	t1,20(sp)
  a266e4:	43e2                	lw	t2,24(sp)
  a266e6:	4472                	lw	s0,28(sp)
  a266e8:	5482                	lw	s1,32(sp)
  a266ea:	5512                	lw	a0,36(sp)
  a266ec:	55a2                	lw	a1,40(sp)
  a266ee:	5632                	lw	a2,44(sp)
  a266f0:	56c2                	lw	a3,48(sp)
  a266f2:	5752                	lw	a4,52(sp)
  a266f4:	57e2                	lw	a5,56(sp)
  a266f6:	5872                	lw	a6,60(sp)
  a266f8:	4886                	lw	a7,64(sp)
  a266fa:	4916                	lw	s2,68(sp)
  a266fc:	49a6                	lw	s3,72(sp)
  a266fe:	4a36                	lw	s4,76(sp)
  a26700:	4ac6                	lw	s5,80(sp)
  a26702:	4b56                	lw	s6,84(sp)
  a26704:	4be6                	lw	s7,88(sp)
  a26706:	4c76                	lw	s8,92(sp)
  a26708:	5c86                	lw	s9,96(sp)
  a2670a:	5d16                	lw	s10,100(sp)
  a2670c:	5da6                	lw	s11,104(sp)
  a2670e:	5e36                	lw	t3,108(sp)
  a26710:	5ec6                	lw	t4,112(sp)
  a26712:	5f56                	lw	t5,116(sp)
  a26714:	5fe6                	lw	t6,120(sp)
  a26716:	6109                	addi	sp,sp,128
  a26718:	30200073          	mret

00a2671c <default_local_interrupt_handler>:
  a2671c:	30047073          	csrci	mstatus,8
  a26720:	7119                	addi	sp,sp,-128
  a26722:	c006                	sw	ra,0(sp)
  a26724:	c20a                	sw	sp,4(sp)
  a26726:	c40e                	sw	gp,8(sp)
  a26728:	c612                	sw	tp,12(sp)
  a2672a:	c816                	sw	t0,16(sp)
  a2672c:	ca1a                	sw	t1,20(sp)
  a2672e:	cc1e                	sw	t2,24(sp)
  a26730:	ce22                	sw	s0,28(sp)
  a26732:	d026                	sw	s1,32(sp)
  a26734:	d22a                	sw	a0,36(sp)
  a26736:	d42e                	sw	a1,40(sp)
  a26738:	d632                	sw	a2,44(sp)
  a2673a:	d836                	sw	a3,48(sp)
  a2673c:	da3a                	sw	a4,52(sp)
  a2673e:	dc3e                	sw	a5,56(sp)
  a26740:	de42                	sw	a6,60(sp)
  a26742:	c0c6                	sw	a7,64(sp)
  a26744:	c2ca                	sw	s2,68(sp)
  a26746:	c4ce                	sw	s3,72(sp)
  a26748:	c6d2                	sw	s4,76(sp)
  a2674a:	c8d6                	sw	s5,80(sp)
  a2674c:	cada                	sw	s6,84(sp)
  a2674e:	ccde                	sw	s7,88(sp)
  a26750:	cee2                	sw	s8,92(sp)
  a26752:	d0e6                	sw	s9,96(sp)
  a26754:	d2ea                	sw	s10,100(sp)
  a26756:	d4ee                	sw	s11,104(sp)
  a26758:	d6f2                	sw	t3,108(sp)
  a2675a:	d8f6                	sw	t4,112(sp)
  a2675c:	dafa                	sw	t5,116(sp)
  a2675e:	dcfe                	sw	t6,120(sp)
  a26760:	341022f3          	csrr	t0,mepc
  a26764:	de96                	sw	t0,124(sp)
  a26766:	34011073          	csrw	mscratch,sp
  a2676a:	fffdc117          	auipc	sp,0xfffdc
  a2676e:	89610113          	addi	sp,sp,-1898 # a02000 <__irq_stack_top__>
  a26772:	f68fe0ef          	jal	ra,a24eda <local_interrupt_handler>
  a26776:	34002173          	csrr	sp,mscratch
  a2677a:	6289                	lui	t0,0x2
  a2677c:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a26780:	3002a073          	csrs	mstatus,t0
  a26784:	52f6                	lw	t0,124(sp)
  a26786:	34129073          	csrw	mepc,t0
  a2678a:	4082                	lw	ra,0(sp)
  a2678c:	42c2                	lw	t0,16(sp)
  a2678e:	4352                	lw	t1,20(sp)
  a26790:	43e2                	lw	t2,24(sp)
  a26792:	4472                	lw	s0,28(sp)
  a26794:	5482                	lw	s1,32(sp)
  a26796:	5512                	lw	a0,36(sp)
  a26798:	55a2                	lw	a1,40(sp)
  a2679a:	5632                	lw	a2,44(sp)
  a2679c:	56c2                	lw	a3,48(sp)
  a2679e:	5752                	lw	a4,52(sp)
  a267a0:	57e2                	lw	a5,56(sp)
  a267a2:	5872                	lw	a6,60(sp)
  a267a4:	4886                	lw	a7,64(sp)
  a267a6:	4916                	lw	s2,68(sp)
  a267a8:	49a6                	lw	s3,72(sp)
  a267aa:	4a36                	lw	s4,76(sp)
  a267ac:	4ac6                	lw	s5,80(sp)
  a267ae:	4b56                	lw	s6,84(sp)
  a267b0:	4be6                	lw	s7,88(sp)
  a267b2:	4c76                	lw	s8,92(sp)
  a267b4:	5c86                	lw	s9,96(sp)
  a267b6:	5d16                	lw	s10,100(sp)
  a267b8:	5da6                	lw	s11,104(sp)
  a267ba:	5e36                	lw	t3,108(sp)
  a267bc:	5ec6                	lw	t4,112(sp)
  a267be:	5f56                	lw	t5,116(sp)
  a267c0:	5fe6                	lw	t6,120(sp)
  a267c2:	6109                	addi	sp,sp,128
  a267c4:	30200073          	mret

00a267c8 <global_interrupt_lock>:
  a267c8:	30002573          	csrr	a0,mstatus
  a267cc:	42a1                	li	t0,8
  a267ce:	3002b073          	csrc	mstatus,t0
  a267d2:	8082                	ret

00a267d4 <global_interrupt_unlock>:
  a267d4:	30002573          	csrr	a0,mstatus
  a267d8:	42a1                	li	t0,8
  a267da:	3002a073          	csrs	mstatus,t0
  a267de:	8082                	ret

00a267e0 <global_interrupt_restore>:
  a267e0:	30051073          	csrw	mstatus,a0
  a267e4:	8082                	ret
	...

00a267e8 <__clz_tab>:
  a267e8:	0100 0202 0303 0303 0404 0404 0404 0404     ................
  a267f8:	0505 0505 0505 0505 0505 0505 0505 0505     ................
  a26808:	0606 0606 0606 0606 0606 0606 0606 0606     ................
  a26818:	0606 0606 0606 0606 0606 0606 0606 0606     ................
  a26828:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a26838:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a26848:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a26858:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a26868:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a26878:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a26888:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a26898:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a268a8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a268b8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a268c8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a268d8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a268e8:	1182 00a2 10f6 00a2 1188 00a2 1188 00a2     ................
  a268f8:	118c 00a2 1198 00a2 6552 6461 2079 6f66     ........Ready fo
  a26908:	2072 6f64 6e77 6f6c 6461 0000 7075 6f6c     r download..uplo
  a26918:	6461 622e 6e69 0000 6e55 7573 7070 726f     ad.bin..Unsuppor
  a26928:	2074 4d43 3a44 0000 7845 6365 7475 6f69     t CMD:..Executio
  a26938:	206e 7553 6363 7365 6673 6c75 0000 0000     n Successful....
  a26948:	3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d     ================
  a26958:	3d3d 3d3d 3d3d 3d3d 003d 0000               =========...

00a26964 <g_loader_cmdtable>:
  a26964:	00d2 0000 11bc 00a2 0087 0000 131c 00a2     ................
  a26974:	0078 0000 11bc 00a2 00c3 0000 19c2 00a2     x...............
  a26984:	00a5 0000 1b4a 00a2 00b4 0000 1270 00a2     ....J.......p...
  a26994:	005a 0000 12b2 00a2 6843 7069 4520 6172     Z.......Chip Era
  a269a4:	6573 6620 6961 756c 6572 0021 6e49 6176     se failure!.Inva
  a269b4:	696c 2064 6170 6172 736d 0000 6f64 6e77     lid params..down
  a269c4:	6f6c 6461 615f 6464 2072 0000 6620 6c69     load_addr .. fil
  a269d4:	5f65 656c 206e 0000 6520 6172 6573 735f     e_len .. erase_s
  a269e4:	7a69 2065 0000 0000 520a 7365 7465 6420     ize .....Reset d
  a269f4:	7665 6369 2e65 2e2e 000a 0000 7055 6f6c     evice.......Uplo
  a26a04:	6461 6c20 6e65 7467 2068 7265 6f72 0072     ad length error.
  a26a14:	7055 6f6c 6461 6120 6464 2072 7265 6f72     Upload addr erro
  a26a24:	0072 0000 7055 6f6c 6461 6120 6464 2072     r...Upload addr 
  a26a34:	7865 6563 6465 2073 6c66 7361 2068 6163     exceeds flash ca
  a26a44:	6170 6963 7974 0000                         pacity..

00a26a4c <g_crc16_tab>:
  a26a4c:	0000 1021 2042 3063 4084 50a5 60c6 70e7     ..!.B c0.@.P.`.p
  a26a5c:	8108 9129 a14a b16b c18c d1ad e1ce f1ef     ..).J.k.........
  a26a6c:	1231 0210 3273 2252 52b5 4294 72f7 62d6     1...s2R".R.B.r.b
  a26a7c:	9339 8318 b37b a35a d3bd c39c f3ff e3de     9...{.Z.........
  a26a8c:	2462 3443 0420 1401 64e6 74c7 44a4 5485     b$C4 ....d.t.D.T
  a26a9c:	a56a b54b 8528 9509 e5ee f5cf c5ac d58d     j.K.(...........
  a26aac:	3653 2672 1611 0630 76d7 66f6 5695 46b4     S6r&..0..v.f.V.F
  a26abc:	b75b a77a 9719 8738 f7df e7fe d79d c7bc     [.z...8.........
  a26acc:	48c4 58e5 6886 78a7 0840 1861 2802 3823     .H.X.h.x@.a..(#8
  a26adc:	c9cc d9ed e98e f9af 8948 9969 a90a b92b     ........H.i...+.
  a26aec:	5af5 4ad4 7ab7 6a96 1a71 0a50 3a33 2a12     .Z.J.z.jq.P.3:.*
  a26afc:	dbfd cbdc fbbf eb9e 9b79 8b58 bb3b ab1a     ........y.X.;...
  a26b0c:	6ca6 7c87 4ce4 5cc5 2c22 3c03 0c60 1c41     .l.|.L.\",.<`.A.
  a26b1c:	edae fd8f cdec ddcd ad2a bd0b 8d68 9d49     ........*...h.I.
  a26b2c:	7e97 6eb6 5ed5 4ef4 3e13 2e32 1e51 0e70     .~.n.^.N.>2.Q.p.
  a26b3c:	ff9f efbe dfdd cffc bf1b af3a 9f59 8f78     ..........:.Y.x.
  a26b4c:	9188 81a9 b1ca a1eb d10c c12d f14e e16f     ..........-.N.o.
  a26b5c:	1080 00a1 30c2 20e3 5004 4025 7046 6067     .....0. .P%@Fpg`
  a26b6c:	83b9 9398 a3fb b3da c33d d31c e37f f35e     ........=.....^.
  a26b7c:	02b1 1290 22f3 32d2 4235 5214 6277 7256     .....".25B.RwbVr
  a26b8c:	b5ea a5cb 95a8 8589 f56e e54f d52c c50d     ........n.O.,...
  a26b9c:	34e2 24c3 14a0 0481 7466 6447 5424 4405     .4.$....ftGd$T.D
  a26bac:	a7db b7fa 8799 97b8 e75f f77e c71d d73c     ........_.~...<.
  a26bbc:	26d3 36f2 0691 16b0 6657 7676 4615 5634     .&.6....Wfvv.F4V
  a26bcc:	d94c c96d f90e e92f 99c8 89e9 b98a a9ab     L.m.../.........
  a26bdc:	5844 4865 7806 6827 18c0 08e1 3882 28a3     DXeH.x'h.....8.(
  a26bec:	cb7d db5c eb3f fb1e 8bf9 9bd8 abbb bb9a     }.\.?...........
  a26bfc:	4a75 5a54 6a37 7a16 0af1 1ad0 2ab3 3a92     uJTZ7j.z.....*.:
  a26c0c:	fd2e ed0f dd6c cd4d bdaa ad8b 9de8 8dc9     ....l.M.........
  a26c1c:	7c26 6c07 5c64 4c45 3ca2 2c83 1ce0 0cc1     &|.ld\EL.<.,....
  a26c2c:	ef1f ff3e cf5d df7c af9b bfba 8fd9 9ff8     ..>.].|.........
  a26c3c:	6e17 7e36 4e55 5e74 2e93 3eb2 0ed1 1ef0     .n6~UNt^...>....
  a26c4c:	6966 656c 6c20 6e65 7467 2068 7265 2072     file length err 
  a26c5c:	203a 0000 6966 656c 735f 7a69 2065 203e     : ..file_size > 
  a26c6c:	7265 7361 5f65 6973 657a 0000 6c66 7361     erase_size..flas
  a26c7c:	2068 7277 7469 2065 6166 6c69 0000 0000     h write fail....
  a26c8c:	6f74 6174 206c 6973 657a 003a 6946 656c     total size:.File
  a26c9c:	6c20 6e65 7467 2068 7265 6f72 2072 203a      length error : 
  a26cac:	0000 0000 6f4c 6461 2079 6665 7375 2065     ....Loady efuse 
  a26cbc:	6966 656c 6620 6961 656c 3a64 0000 0000     file failed:....
  a26ccc:	7264 5f76 6f72 5f6d 6963 6870 7265 695f     drv_rom_cipher_i
  a26cdc:	696e 2074 2121 2021 6572 2074 203d 0000     nit !!! ret = ..
  a26cec:	7264 5f76 6f72 5f6d 6963 6870 7265 735f     drv_rom_cipher_s
  a26cfc:	6168 3532 2036 2121 2021 6572 2074 203d     ha256 !!! ret = 
  a26d0c:	0000 0000 7264 5f76 6f72 5f6d 6963 6870     ....drv_rom_ciph
  a26d1c:	7265 645f 6965 696e 2074 2121 2021 6572     er_deinit !!! re
  a26d2c:	2074 203d 0000 0000 6168 6873 6320 6d6f     t = ....hash com
  a26d3c:	706d 7261 2065 6166 6c69 2121 0021 0000     mpare fail!!!...
  a26d4c:	7865 6563 6465 6520 7566 6573 6920 646e     exceed efuse ind
  a26d5c:	7865 2121 0021 0000 6645 7375 2065 6f63     ex!!!...Efuse co
  a26d6c:	666e 6769 6620 6c69 2065 6e69 6176 696c     nfig file invali
  a26d7c:	0064 0000 6665 7375 2065 7277 7469 2065     d...efuse write 
  a26d8c:	7265 6f72 2c72 6920 646e 7865 003a 0000     error, index:...
  a26d9c:	7453 7261 2074 6962 3a74 0020 6c20 6e65     Start bit: . len
  a26dac:	6228 7469 2973 003d 6645 7375 2065 6572     (bits)=.Efuse re
  a26dbc:	6461 0000 6150 6172 736d 6520 7272 0000     ad..Params err..
  a26dcc:	2020 0000                                     ..

00a26dd0 <sfc_cfg>:
  a26dd0:	0104 0000 0000 0020 0000 0080 6f4c 6461     ...... .....Load
  a26de0:	6f62 746f 5520 7261 2074 6e49 7469 5320     boot Uart Init S
  a26df0:	6375 2163 0000 0000 6c46 7361 2068 6e49     ucc!....Flash In
  a26e00:	7469 4620 6961 216c 7220 7465 3d20 0020     it Fail! ret = .
  a26e10:	6c46 7361 2068 6e49 7469 5320 6375 2163     Flash Init Succ!
  a26e20:	0000 0000 4653 2043 6966 2078 5253 7220     ....SFC fix SR r
  a26e30:	7465 3d20 0000 0000 3d3d 3d3d 3d3d 3d3d     et =....========
  a26e40:	3d3d 3d3d 3d3d 3d3d 4c20 616f 2064 6d43     ======== Load Cm
  a26e50:	2064 6f4c 706f 3d20 3d3d 3d3d 3d3d 3d3d     d Loop =========
  a26e60:	3d3d 3d3d 3d3d 0d3d 000a 0000               =======.....

00a26e6c <g_sha256_ival>:
  a26e6c:	096a 67e6 67bb 85ae 6e3c 72f3 4fa5 3af5     j..g.g..<n.r.O.:
  a26e7c:	0e51 7f52 059b 8c68 831f abd9 e05b 19cd     Q.R...h.....[...

00a26e8c <g_sm3_ival>:
  a26e8c:	8073 6f16 1449 b9b2 2417 d742 8ada 0006     s..oI....$B.....
  a26e9c:	6fa9 bc30 3116 aa38 8de3 4dee fbb0 4e0e     .o0..18....M...N

00a26eac <g_crypto_ecc_num>:
  a26eac:	0000 0000                                   ....

00a26eb0 <g_crypto_ecc_params>:
  a26eb0:	25c2 00a2 2580 00a2 2650 00a2 26e2 00a2     .%...%..P&...&..
  a26ec0:	26fc 00a2 2f3a 00a2 2f44 00a2 2fd2 00a2     .&..:/..D/.../..
  a26ed0:	2f54 00a2 2fc4 00a2 2fc4 00a2 2fc4 00a2     T/.../.../.../..
  a26ee0:	2fc4 00a2 2fc4 00a2 2fc4 00a2 2fc4 00a2     ./.../.../.../..
  a26ef0:	2fc4 00a2 2fc4 00a2 2fc4 00a2 2fc4 00a2     ./.../.../.../..
  a26f00:	2fcc 00a2 3774 00a2 375e 00a2 3756 00a2     ./..t7..^7..V7..
  a26f10:	375e 00a2 3762 00a2 375e 00a2 376c 00a2     ^7..b7..^7..l7..
  a26f20:	375e 00a2 375e 00a2 375e 00a2 375e 00a2     ^7..^7..^7..^7..
  a26f30:	375e 00a2 3762 00a2 376c 00a2               ^7..b7..l7..

00a26f3c <CSWTCH.8>:
  a26f3c:	1001 0020                                   .. .

00a26f40 <g_hal_uart_ctrl_func_array>:
  a26f40:	3812 00a2 0000 0000 37a8 00a2 379a 00a2     .8.......7...7..
  a26f50:	378c 00a2 377e 00a2 377e 00a2 3552 00a2     .7..~7..~7..R5..
  a26f60:	3568 00a2 359e 00a2 0000 0000 367c 00a2     h5...5......|6..
  a26f70:	365c 00a2 0000 0000 0000 0000 0000 0000     \6..............
  a26f80:	0000 0000 3580 00a2 34f4 00a2 3506 00a2     .....5...4...5..
  a26f90:	0000 0000                                   ....

00a26f94 <g_uart_base_addrs>:
  a26f94:	0000 4401 1000 4401 2000 4401               ...D...D. .D

00a26fa0 <g_default_erase_cmds>:
  a26fa0:	c639 ffff 06c1 4000 0101 0400               9......@....

00a26fac <g_default_quad_enable>:
  a26fac:	0002 0000 0000 0000                         ........

00a26fb4 <g_default_read_cmds>:
  a26fb4:	0019 0000                                   ....

00a26fb8 <g_default_write_cmds>:
  a26fb8:	0001 0000 0011 0000                         ........

00a26fc0 <g_flash_common_erase_cmds>:
  a26fc0:	c639 ffff 06c1 4000 0291 2000 0101 0400     9......@... ....

00a26fd0 <g_flash_common_read_cmds>:
  a26fd0:	0019 0000 4059 0000 49d9 0000 55d9 0000     ....Y@...I...U..
  a26fe0:	6b59 0000 f759 0000                         Yk..Y...

00a26fe8 <g_flash_common_write_cmds>:
  a26fe8:	0001 0000 0011 0000 4000 0000 4000 0000     .........@...@..
  a26ff8:	2991 0000 4000 0000                         .)...@..

00a27000 <g_flash_gd_bus_enable>:
  a27000:	0301 0005 0000 0301 0135 0001 0002 0000     ........5.......
  a27010:	0000 0000                                   ....

00a27014 <g_flash_spi_info_list>:
  a27014:	40c8 0016 0000 0040 0004 0000 6fd0 00a2     .@....@......o..
  a27024:	6fe8 00a2 6fc0 00a2 7000 00a2               .o...o...p..

00a27030 <g_flash_spi_unknown_info>:
  a27030:	ffff 00ff 0000 0008 0003 0000 6fb4 00a2     .............o..
  a27040:	6fb8 00a2 6fa0 00a2 6fac 00a2               .o...o...o..

00a2704c <g_sfc_protect_cfg>:
  a2704c:	2802 0000 0000 0002 0000 0040 7802 0000     .(........@..x..
  a2705c:	8000 0000 0000 0040 0002 0000 0000 0000     ......@.........
  a2706c:	0000 0040 6f4e 6e20 6565 2064 6f74 6620     ..@.No need to f
  a2707c:	7869 5320 2152 0a0d 0000 0000 5253 6620     ix SR!......SR f
  a2708c:	7869 6f20 216b 0a0d 0000 0000 5253 6425     ix ok!......SR%d
  a2709c:	305b 2578 5d78 6e20 6565 7364 6620 7869     [0x%x] needs fix
  a270ac:	6e69 2c67 6520 7078 6365 5b74 7830 7825     ing, expect[0x%x
  a270bc:	0d5d 000a                                   ]...

00a270c0 <g_efuse_cfg>:
  a270c0:	0000 0008 0003 0008 00a0 0003 0270 0020     ............p. .
  a270d0:	0003 0290 0008 0003 0298 0008 0003 02a0     ................
  a270e0:	0100 0003 03a0 0020 0003 03c0 0001 0003     ...... .........
  a270f0:	03e8 0008 0003 0630 0030 0003 0660 0030     ......0.0...`.0.
  a27100:	0003 0690 0030 0003 06c0 0030 0003 06f0     ....0.....0.....
  a27110:	0080 0003 02a0 0100 0003 046f 0001 0003     ..........o.....
  a27120:	0460 000f 0003 0470 0010 0003 0770 0030     `.....p.....p.0.
  a27130:	0003 0000 650a 7272 6f6e 003d 7830 0000     .....errno=.0x..
  a27140:	7075 6164 6574 725f 7365 7465 635f 756f     update_reset_cou
  a27150:	746e 0020 6863 6365 5f6b 6863 7069 745f     nt .check_chip_t
  a27160:	7079 2065 7265 2072 655b 7566 6573 703a     ype err [efuse:p
  a27170:	746b 3a5d 0000 0000 6572 6461 6520 7566     kt]:....read efu
  a27180:	6573 7420 7079 5f65 6469 6520 7272 2021     se type_id err! 
  a27190:	6572 2074 203d 0000 6572 6461 6520 7566     ret = ..read efu
  a271a0:	6573 6420 6569 695f 2064 7265 2172 7220     se die_id err! r
  a271b0:	7465 3d20 0020 0000 4f52 7c4d 6564 6166     et = ...ROM|defa
  a271c0:	6c75 5f74 6168 646e 656c 2072 203a 6e69     ult_handler : in
  a271d0:	6574 7272 7075 2074 6469 5b78 6425 0a5d     terrupt idx[%d].
  a271e0:	0000 0000 4f52 7c4d 6f4f 7370 2d20 6820     ....ROM|Oops - h
  a271f0:	7261 2064 6166 6c75 0d74 000a 4f52 7c4d     ard fault...ROM|
  a27200:	7865 6563 7470 6f69 3a6e 7825 0a0d 0000     exception:%x....
  a27210:	4f52 7c4d 6f4f 7370 4e3a 494d 000a 0000     ROM|Oops:NMI....
  a27220:	4f52 7c4d 6f4f 7370 2d20 6920 736e 206e     ROM|Oops - insn 
  a27230:	6170 6567 6620 7561 746c 0a0d 0000 0000     page fault......
  a27240:	4f52 7c4d 6f4f 7370 2d20 6c20 616f 2064     ROM|Oops - load 
  a27250:	6170 6567 6620 7561 746c 0a0d 0000 0000     page fault......
  a27260:	4f52 7c4d 6f4f 7370 2d20 6c20 636f 206b     ROM|Oops - lock 
  a27270:	7075 0a0d 0000 0000 4f52 7c4d 6f4f 7370     up......ROM|Oops
  a27280:	2d20 7320 6f74 6572 7020 6761 2065 6166      - store page fa
  a27290:	6c75 0d74 000a 0000 4f52 7c4d 6f4f 7370     ult.....ROM|Oops
  a272a0:	2d20 6520 7262 6165 0d6b 000a 4f52 7c4d      - ebreak...ROM|
  a272b0:	6f4f 7370 2d20 6520 766e 7269 6e6f 656d     Oops - environme
  a272c0:	746e 6320 6c61 206c 7266 6d6f 4d20 6d2d     nt call from M-m
  a272d0:	646f 0d65 000a 0000 4f52 7c4d 6f4f 7370     ode.....ROM|Oops
  a272e0:	2d20 6520 766e 7269 6e6f 656d 746e 6320      - environment c
  a272f0:	6c61 206c 7266 6d6f 5320 6d2d 646f 0d65     all from S-mode.
  a27300:	000a 0000 4f52 7c4d 6f4f 7370 2d20 6520     ....ROM|Oops - e
  a27310:	766e 7269 6e6f 656d 746e 6320 6c61 206c     nvironment call 
  a27320:	7266 6d6f 5520 6d2d 646f 0d65 000a 0000     from U-mode.....
  a27330:	4f52 7c4d 6f4f 7370 2d20 6920 736e 7274     ROM|Oops - instr
  a27340:	6375 6974 6e6f 6120 6363 7365 2073 6166     uction access fa
  a27350:	6c75 0d74 000a 0000 4f52 7c4d 6f4f 7370     ult.....ROM|Oops
  a27360:	2d20 6920 6c6c 6765 6c61 6920 736e 7274      - illegal instr
  a27370:	6375 6974 6e6f 0a0d 0000 0000 4f52 7c4d     uction......ROM|
  a27380:	6f4f 7370 2d20 6920 736e 7274 6375 6974     Oops - instructi
  a27390:	6e6f 6120 6464 6572 7373 6d20 7369 6c61     on address misal
  a273a0:	6769 656e 0d64 000a 4f52 7c4d 6f4f 7370     igned...ROM|Oops
  a273b0:	2d20 6c20 616f 2064 6361 6563 7373 6620      - load access f
  a273c0:	7561 746c 0a0d 0000 4f52 7c4d 6f4f 7370     ault....ROM|Oops
  a273d0:	2d20 6c20 616f 2064 6461 7264 7365 2073      - load address 
  a273e0:	696d 6173 696c 6e67 6465 0a0d 0000 0000     misaligned......
  a273f0:	4f52 7c4d 6f4f 7370 2d20 7320 6f74 6572     ROM|Oops - store
  a27400:	2820 726f 4120 4f4d 2029 6361 6563 7373      (or AMO) access
  a27410:	6620 7561 746c 0a0d 0000 0000 4f52 7c4d      fault......ROM|
  a27420:	6f4f 7370 2d20 7320 6f74 6572 2820 726f     Oops - store (or
  a27430:	4120 4f4d 2029 6461 7264 7365 2073 696d      AMO) address mi
  a27440:	6173 696c 6e67 6465 0a0d 0000 4f52 7c4d     saligned....ROM|
  a27450:	6f4f 7370 2d20 7520 6b6e 6f6e 6e77 6520     Oops - unknown e
  a27460:	6378 7065 6974 6e6f 0a0d 0000 4f52 7c4d     xception....ROM|
  a27470:	2a2a 2a2a 2a2a 2a2a 2a2a 2a2a 2a2a 7845     **************Ex
  a27480:	6563 7470 6f69 206e 6e49 6f66 6d72 7461     ception Informat
  a27490:	6f69 2a6e 2a2a 2a2a 2a2a 2a2a 2a2a 2a2a     ion*************
  a274a0:	202a 000a 4f52 7c4d 7775 7845 5463 7079     * ..ROM|uwExcTyp
  a274b0:	2065 203d 7830 7825 000a 0000 4f52 7c4d     e = 0x%x....ROM|
  a274c0:	656d 6370 2020 2020 2020 3d20 3020 2578     mepc       = 0x%
  a274d0:	0a78 0000 4f52 7c4d 736d 6174 7574 2073     x...ROM|mstatus 
  a274e0:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a274f0:	746d 6176 206c 2020 2020 3d20 3020 2578     mtval      = 0x%
  a27500:	0a78 0000 4f52 7c4d 636d 7561 6573 2020     x...ROM|mcause  
  a27510:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a27520:	6363 7561 6573 2020 2020 3d20 3020 2578     ccause     = 0x%
  a27530:	0a78 0000 4f52 7c4d 6172 2020 2020 2020     x...ROM|ra      
  a27540:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a27550:	7073 2020 2020 2020 2020 3d20 3020 2578     sp         = 0x%
  a27560:	0a78 0000 4f52 7c4d 7067 2020 2020 2020     x...ROM|gp      
  a27570:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a27580:	7074 2020 2020 2020 2020 3d20 3020 2578     tp         = 0x%
  a27590:	0a78 0000 4f52 7c4d 3074 2020 2020 2020     x...ROM|t0      
  a275a0:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a275b0:	3174 2020 2020 2020 2020 3d20 3020 2578     t1         = 0x%
  a275c0:	0a78 0000 4f52 7c4d 3274 2020 2020 2020     x...ROM|t2      
  a275d0:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a275e0:	3073 2020 2020 2020 2020 3d20 3020 2578     s0         = 0x%
  a275f0:	0a78 0000 4f52 7c4d 3173 2020 2020 2020     x...ROM|s1      
  a27600:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a27610:	3061 2020 2020 2020 2020 3d20 3020 2578     a0         = 0x%
  a27620:	0a78 0000 4f52 7c4d 3161 2020 2020 2020     x...ROM|a1      
  a27630:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a27640:	3261 2020 2020 2020 2020 3d20 3020 2578     a2         = 0x%
  a27650:	0a78 0000 4f52 7c4d 3361 2020 2020 2020     x...ROM|a3      
  a27660:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a27670:	3461 2020 2020 2020 2020 3d20 3020 2578     a4         = 0x%
  a27680:	0a78 0000 4f52 7c4d 3561 2020 2020 2020     x...ROM|a5      
  a27690:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a276a0:	3661 2020 2020 2020 2020 3d20 3020 2578     a6         = 0x%
  a276b0:	0a78 0000 4f52 7c4d 3761 2020 2020 2020     x...ROM|a7      
  a276c0:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a276d0:	3273 2020 2020 2020 2020 3d20 3020 2578     s2         = 0x%
  a276e0:	0a78 0000 4f52 7c4d 3373 2020 2020 2020     x...ROM|s3      
  a276f0:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a27700:	3473 2020 2020 2020 2020 3d20 3020 2578     s4         = 0x%
  a27710:	0a78 0000 4f52 7c4d 3573 2020 2020 2020     x...ROM|s5      
  a27720:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a27730:	3673 2020 2020 2020 2020 3d20 3020 2578     s6         = 0x%
  a27740:	0a78 0000 4f52 7c4d 3773 2020 2020 2020     x...ROM|s7      
  a27750:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a27760:	3873 2020 2020 2020 2020 3d20 3020 2578     s8         = 0x%
  a27770:	0a78 0000 4f52 7c4d 3973 2020 2020 2020     x...ROM|s9      
  a27780:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a27790:	3173 2030 2020 2020 2020 3d20 3020 2578     s10        = 0x%
  a277a0:	0a78 0000 4f52 7c4d 3173 2031 2020 2020     x...ROM|s11     
  a277b0:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a277c0:	3374 2020 2020 2020 2020 3d20 3020 2578     t3         = 0x%
  a277d0:	0a78 0000 4f52 7c4d 3474 2020 2020 2020     x...ROM|t4      
  a277e0:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a277f0:	3574 2020 2020 2020 2020 3d20 3020 2578     t5         = 0x%
  a27800:	0a78 0000 4f52 7c4d 3674 2020 2020 2020     x...ROM|t6      
  a27810:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a27820:	2a2a 2a2a 2a2a 2a2a 2a2a 2a2a 2a2a 7845     **************Ex
  a27830:	6563 7470 6f69 206e 6e49 6f66 6d72 7461     ception Informat
  a27840:	6f69 206e 6e65 2a64 2a2a 2a2a 2a2a 2a2a     ion end*********
  a27850:	2a2a 2a2a 202a 000a 4f52 7c4d 6d6e 5f69     ***** ..ROM|nmi_
  a27860:	6168 646e 656c 2072 203a 6e69 6574 7272     handler : interr
  a27870:	7075 2074 6469 5b78 6425 0a5d 0000 0000     upt idx[%d].....
  a27880:	4f52 7c4d 705b 6e61 6369 695d 3a64 6425     ROM|[panic]id:%d
  a27890:	632c 646f 3a65 7830 7825 632c 6c61 3a6c     ,code:0x%x,call:
  a278a0:	7830 7825 0000 0000 56b0 00a2 56de 00a2     0x%x.....V...V..
  a278b0:	56f2 00a2 5738 00a2 5796 00a2 579a 00a2     .V..8W...W...W..
  a278c0:	57d8 00a2 58f0 00a2                         .W...X..

00a278c8 <g_itoaLowerDigits>:
  a278c8:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef
  a278d8:	0078 0000                                   x...

00a278dc <g_itoaUpperDigits>:
  a278dc:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
  a278ec:	0058 0000                                   X...

00a278f0 <stateTable.1749>:
	...
  a27910:	0006 0600 0100 0000 0000 0603 0600 0002     ................
  a27920:	0504 0505 0505 0505 0505 0000 0000 0000     ................
  a27930:	0000 0800 0800 0808 0700 0000 0007 0007     ................
  a27940:	0000 0800 0000 0000 0008 0007 0000 0000     ................
  a27950:	0000 0800 0808 0808 0807 0007 0007 0800     ................
  a27960:	0708 0800 0807 0700 0008 0007 0000 0000     ................
	...
  a279f0:	0800 0808 0808 0008 0100 0800 0808 0808     ................
  a27a00:	0001 0400 0404 0808 0008 0000 0303 0508     ................
  a27a10:	0808 0000 0200 0302 0505 0008 0000 0303     ................
  a27a20:	0503 0805 0000 0200 0202 0808 0008 0000     ................
  a27a30:	0606 0606 0606 0000 0700 0707 0707 0007     ................
  a27a40:	0000 0000                                   ....
