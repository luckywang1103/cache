	.file	"mcp.cpp"
.lcomm __ZStL8__ioinit,1,1
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
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
	pushl	%esi
LCFI3:
	pushl	%ebx
LCFI4:
	subl	$56, %esp
LCFI5:
	call	___main
	movl	$104857600, (%esp)
	call	__Znaj
	movl	%eax, 40(%esp)
	movl	$104857600, (%esp)
	call	__Znaj
	movl	%eax, 36(%esp)
	movl	$0, 44(%esp)
	jmp	L2
L3:
	movl	44(%esp), %eax
	movl	%eax, %ebx
	addl	40(%esp), %ebx
	movl	44(%esp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$4, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	imull	$50, %eax, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, (%ebx)
	addl	$1, 44(%esp)
L2:
	cmpl	$104857599, 44(%esp)
	setle	%al
	testb	%al, %al
	jne	L3
/APP
 # 24 "mcp.cpp" 1
	#a2 , b2 = a , b:
 # 0 "" 2
/NO_APP
	movl	40(%esp), %eax
	movl	%eax, 32(%esp)
	movl	36(%esp), %eax
	movl	%eax, 28(%esp)
/APP
 # 37 "mcp.cpp" 1
	#memcpy
 # 0 "" 2
/NO_APP
	movl	$104857600, 8(%esp)
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	_memcpy
/APP
 # 41 "mcp.cpp" 1
	#deleting:
 # 0 "" 2
/NO_APP
	cmpl	$0, 40(%esp)
	je	L4
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__ZdaPv
L4:
	cmpl	$0, 36(%esp)
	je	L5
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	__ZdaPv
L5:
	movl	$0, %eax
	addl	$56, %esp
	popl	%ebx
LCFI6:
	popl	%esi
LCFI7:
	movl	%ebp, %esp
LCFI8:
	popl	%ebp
LCFI9:
	ret
LFE1056:
	.def	__Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
__Z41__static_initialization_and_destruction_0ii:
LFB1057:
	pushl	%ebp
LCFI10:
	movl	%esp, %ebp
LCFI11:
	subl	$24, %esp
LCFI12:
	cmpl	$1, 8(%ebp)
	jne	L7
	cmpl	$65535, 12(%ebp)
	jne	L7
	movl	$__ZStL8__ioinit, (%esp)
	call	__ZNSt8ios_base4InitC1Ev
L7:
	cmpl	$0, 8(%ebp)
	jne	L6
	cmpl	$65535, 12(%ebp)
	jne	L6
	movl	$__ZStL8__ioinit, (%esp)
	call	__ZNSt8ios_base4InitD1Ev
L6:
	leave
LCFI13:
	ret
LFE1057:
	.def	__GLOBAL__I_main;	.scl	3;	.type	32;	.endef
__GLOBAL__I_main:
LFB1058:
	pushl	%ebp
LCFI14:
	movl	%esp, %ebp
LCFI15:
	subl	$24, %esp
LCFI16:
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	__Z41__static_initialization_and_destruction_0ii
	leave
LCFI17:
	ret
LFE1058:
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__I_main
	.text
	.def	__GLOBAL__D_main;	.scl	3;	.type	32;	.endef
__GLOBAL__D_main:
LFB1059:
	pushl	%ebp
LCFI18:
	movl	%esp, %ebp
LCFI19:
	subl	$24, %esp
LCFI20:
	movl	$65535, 4(%esp)
	movl	$0, (%esp)
	call	__Z41__static_initialization_and_destruction_0ii
	leave
LCFI21:
	ret
LFE1059:
	.section	.dtors,"w"
	.align 4
	.long	__GLOBAL__D_main
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
	.long	LCFI5-LCFI1
	.byte	0x10
	.byte	0x3
	.uleb128 0x8
	.byte	0x75
	.sleb128 0
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x9
	.byte	0xf8
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
	.byte	0xfc
	.byte	0x22
	.byte	0x4
	.long	LCFI6-LCFI5
	.byte	0xc3
	.byte	0x4
	.long	LCFI7-LCFI6
	.byte	0xc6
	.byte	0x4
	.long	LCFI8-LCFI7
	.byte	0xd
	.uleb128 0x4
	.byte	0x4
	.long	LCFI9-LCFI8
	.byte	0xc5
	.byte	0xe
	.uleb128 0x4
	.align 4
LEFDE1:
LSFDE3:
	.long	LEFDE3-LASFDE3
LASFDE3:
	.long	LASFDE3-Lframe1
	.long	LFB1057
	.long	LFE1057-LFB1057
	.byte	0x4
	.long	LCFI10-LFB1057
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI11-LCFI10
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI13-LCFI11
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
	.long	LFB1058
	.long	LFE1058-LFB1058
	.byte	0x4
	.long	LCFI14-LFB1058
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI15-LCFI14
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI17-LCFI15
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
LEFDE5:
LSFDE7:
	.long	LEFDE7-LASFDE7
LASFDE7:
	.long	LASFDE7-Lframe1
	.long	LFB1059
	.long	LFE1059-LFB1059
	.byte	0x4
	.long	LCFI18-LFB1059
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI19-LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI21-LCFI19
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
LEFDE7:
	.def	___real__Znaj;	.scl	2;	.type	32;	.endef
	.def	__Znaj;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	___real__ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
