	.file	"mcp.cpp"
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.p2align 4,,15
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB1056:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	andl	$-16, %esp
LCFI2:
	pushl	%edi
LCFI3:
	movl	$1374389535, %edi
	pushl	%esi
LCFI4:
	pushl	%ebx
LCFI5:
	subl	$20, %esp
LCFI6:
	call	___main
	movl	$104857600, (%esp)
	call	__Znaj
	movl	$104857600, (%esp)
	movl	%eax, %ebx
	call	__Znaj
	xorl	%ecx, %ecx
	movl	%eax, %esi
	.p2align 4,,7
L2:
	movl	%ecx, %eax
	imull	%edi
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	imull	$50, %edx, %edx
	subl	%edx, %eax
	movb	%al, (%ebx,%ecx)
	addl	$1, %ecx
	cmpl	$104857600, %ecx
	jne	L2
/APP
 # 24 "mcp.cpp" 1
	#a2 , b2 = a , b:
 # 0 "" 2
 # 28 "mcp.cpp" 1
	#for loop:
 # 0 "" 2
/NO_APP
	xorl	%eax, %eax
	.p2align 4,,7
L3:
	fldl	(%ebx,%eax)
	fstpl	(%esi,%eax)
	addl	$8, %eax
	cmpl	$104857600, %eax
	jne	L3
/APP
 # 41 "mcp.cpp" 1
	#deleting:
 # 0 "" 2
/NO_APP
	testl	%ebx, %ebx
	je	L4
	movl	%ebx, (%esp)
	call	__ZdaPv
L4:
	testl	%esi, %esi
	je	L5
	movl	%esi, (%esp)
	call	__ZdaPv
L5:
	addl	$20, %esp
	xorl	%eax, %eax
	popl	%ebx
LCFI7:
	popl	%esi
LCFI8:
	popl	%edi
LCFI9:
	movl	%ebp, %esp
LCFI10:
	popl	%ebp
LCFI11:
	ret
LFE1056:
	.p2align 4,,15
	.def	__GLOBAL__I_main;	.scl	3;	.type	32;	.endef
__GLOBAL__I_main:
LFB1058:
	pushl	%ebp
LCFI12:
	movl	%esp, %ebp
LCFI13:
	subl	$24, %esp
LCFI14:
	movl	$__ZStL8__ioinit, (%esp)
	call	__ZNSt8ios_base4InitC1Ev
	leave
LCFI15:
	ret
LFE1058:
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__I_main
	.text
	.p2align 4,,15
	.def	__GLOBAL__D_main;	.scl	3;	.type	32;	.endef
__GLOBAL__D_main:
LFB1059:
	pushl	%ebp
LCFI16:
	movl	%esp, %ebp
LCFI17:
	subl	$24, %esp
LCFI18:
	movl	$__ZStL8__ioinit, (%esp)
	call	__ZNSt8ios_base4InitD1Ev
	leave
LCFI19:
	ret
LFE1059:
	.section	.dtors,"w"
	.align 4
	.long	__GLOBAL__D_main
.lcomm __ZStL8__ioinit,1,1
	.section	.eh_frame,"w"
Lframe1:
	.long	LECIE1-LSCIE1
LSCIE1:
	.long	0x0
	.byte	0x1
	.ascii "\0"
	.uleb128 0x1
	.sleb128 -4
	.byte	0x8
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x1
	.align 4
LECIE1:
LSFDE1:
	.long	LEFDE1-LASFDE1
LASFDE1:
	.long	LASFDE1-Lframe1
	.long	LFB1056
	.long	LFE1056-LFB1056
	.byte	0x4
	.long	LCFI0-LFB1056
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI1-LCFI0
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI3-LCFI1
	.byte	0x10
	.byte	0x7
	.uleb128 0x8
	.byte	0x75
	.sleb128 0
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x9
	.byte	0xfc
	.byte	0x22
	.byte	0x4
	.long	LCFI6-LCFI3
	.byte	0x10
	.byte	0x3
	.uleb128 0x8
	.byte	0x75
	.sleb128 0
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x9
	.byte	0xf4
	.byte	0x22
	.byte	0x10
	.byte	0x6
	.uleb128 0x8
	.byte	0x75
	.sleb128 0
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x9
	.byte	0xf8
	.byte	0x22
	.byte	0x4
	.long	LCFI7-LCFI6
	.byte	0xc3
	.byte	0x4
	.long	LCFI8-LCFI7
	.byte	0xc6
	.byte	0x4
	.long	LCFI9-LCFI8
	.byte	0xc7
	.byte	0x4
	.long	LCFI10-LCFI9
	.byte	0xd
	.uleb128 0x4
	.byte	0x4
	.long	LCFI11-LCFI10
	.byte	0xc5
	.byte	0xe
	.uleb128 0x4
	.align 4
LEFDE1:
LSFDE3:
	.long	LEFDE3-LASFDE3
LASFDE3:
	.long	LASFDE3-Lframe1
	.long	LFB1058
	.long	LFE1058-LFB1058
	.byte	0x4
	.long	LCFI12-LFB1058
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI13-LCFI12
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI15-LCFI13
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
LEFDE3:
LSFDE5:
	.long	LEFDE5-LASFDE5
LASFDE5:
	.long	LASFDE5-Lframe1
	.long	LFB1059
	.long	LFE1059-LFB1059
	.byte	0x4
	.long	LCFI16-LFB1059
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI17-LCFI16
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI19-LCFI17
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
LEFDE5:
	.def	___real__Znaj;	.scl	2;	.type	32;	.endef
	.def	__Znaj;	.scl	2;	.type	32;	.endef
	.def	___real__ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
