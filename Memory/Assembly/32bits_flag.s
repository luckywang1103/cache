	.file	"main.cpp"
	.text
	.p2align 4,,15
.globl __Z7memcpy2PvPKvj
	.def	__Z7memcpy2PvPKvj;	.scl	2;	.type	32;	.endef
__Z7memcpy2PvPKvj:
LFB1056:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	pushl	%edi
LCFI2:
	movl	8(%ebp), %eax
	pushl	%esi
LCFI3:
	movl	12(%ebp), %ecx
	pushl	%ebx
LCFI4:
	movl	16(%ebp), %ebx
	movl	%eax, %esi
	movl	%ecx, %edi
	cmpl	$3, %ebx
	jbe	L2
	subl	$4, %ebx
	xorl	%edx, %edx
	movl	%ebx, %edi
	shrl	$2, %edi
	addl	$1, %edi
	.p2align 4,,7
L3:
	movl	(%ecx,%edx,4), %esi
	movl	%esi, (%eax,%edx,4)
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	L3
	sall	$2, %edx
	andl	$3, %ebx
	leal	(%eax,%edx), %esi
	leal	(%ecx,%edx), %edi
L2:
	testl	%ebx, %ebx
	je	L4
	xorl	%ecx, %ecx
	.p2align 4,,7
L5:
	movzbl	(%edi,%ecx), %edx
	movb	%dl, (%esi,%ecx)
	addl	$1, %ecx
	cmpl	%ecx, %ebx
	jne	L5
L4:
	popl	%ebx
LCFI5:
	popl	%esi
LCFI6:
	popl	%edi
LCFI7:
	popl	%ebp
LCFI8:
	ret
LFE1056:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
	.text
	.p2align 4,,15
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB1057:
	pushl	%ebp
LCFI9:
	movl	%esp, %ebp
LCFI10:
	andl	$-16, %esp
LCFI11:
	pushl	%edi
LCFI12:
	movl	$1374389535, %edi
	pushl	%esi
LCFI13:
	pushl	%ebx
LCFI14:
	subl	$36, %esp
LCFI15:
	call	___main
	movl	$104857600, (%esp)
	call	__Znaj
	movl	$104857600, (%esp)
	movl	%eax, %ebx
	call	__Znaj
	xorl	%ecx, %ecx
	movl	%eax, %esi
	.p2align 4,,7
L10:
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
	jne	L10
/APP
 # 51 "main.cpp" 1
	#a2,b2 = a,b
 # 0 "" 2
/NO_APP
	call	_clock
	movl	%eax, %edi
/APP
 # 56 "main.cpp" 1
	#for loop:
 # 0 "" 2
/NO_APP
	xorl	%eax, %eax
	.p2align 4,,7
L11:
	movl	(%ebx,%eax), %edx
	movl	%edx, (%esi,%eax)
	addl	$4, %eax
	cmpl	$104857600, %eax
	jne	L11
/APP
 # 65 "main.cpp" 1
	#end for loop
 # 0 "" 2
/NO_APP
	call	_clock
	movl	$__ZSt4cout, (%esp)
	subl	%edi, %eax
	movl	%eax, 4(%esp)
	call	__ZNSolsEi
	movl	%eax, %edi
	movl	(%eax), %eax
	movl	-12(%eax), %eax
	movl	124(%edi,%eax), %eax
	testl	%eax, %eax
	je	L19
	cmpb	$0, 28(%eax)
	je	L13
	movzbl	39(%eax), %eax
L14:
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZNSo3putEc
	movl	%eax, (%esp)
	call	__ZNSo5flushEv
	movsbl	104857599(%esi), %eax
	movl	$LC0, (%esp)
	movl	%eax, 4(%esp)
	call	_printf
	testl	%ebx, %ebx
	je	L15
	movl	%ebx, (%esp)
	call	__ZdaPv
L15:
	testl	%esi, %esi
	je	L16
	movl	%esi, (%esp)
	call	__ZdaPv
L16:
	addl	$36, %esp
	xorl	%eax, %eax
	popl	%ebx
LCFI16:
	popl	%esi
LCFI17:
	popl	%edi
LCFI18:
	movl	%ebp, %esp
LCFI19:
	popl	%ebp
LCFI20:
	ret
L13:
LCFI21:
	movl	%eax, (%esp)
	movl	%eax, 28(%esp)
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	28(%esp), %eax
	movl	(%eax), %edx
	movl	$10, 4(%esp)
	movl	%eax, (%esp)
	call	*24(%edx)
	jmp	L14
L19:
	call	__ZSt16__throw_bad_castv
LFE1057:
	.p2align 4,,15
	.def	__GLOBAL__I__Z7memcpy2PvPKvj;	.scl	3;	.type	32;	.endef
__GLOBAL__I__Z7memcpy2PvPKvj:
LFB1064:
	pushl	%ebp
LCFI22:
	movl	%esp, %ebp
LCFI23:
	subl	$24, %esp
LCFI24:
	movl	$__ZStL8__ioinit, (%esp)
	call	__ZNSt8ios_base4InitC1Ev
	leave
LCFI25:
	ret
LFE1064:
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__I__Z7memcpy2PvPKvj
	.text
	.p2align 4,,15
	.def	__GLOBAL__D__Z7memcpy2PvPKvj;	.scl	3;	.type	32;	.endef
__GLOBAL__D__Z7memcpy2PvPKvj:
LFB1065:
	pushl	%ebp
LCFI26:
	movl	%esp, %ebp
LCFI27:
	subl	$24, %esp
LCFI28:
	movl	$__ZStL8__ioinit, (%esp)
	call	__ZNSt8ios_base4InitD1Ev
	leave
LCFI29:
	ret
LFE1065:
	.section	.dtors,"w"
	.align 4
	.long	__GLOBAL__D__Z7memcpy2PvPKvj
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
	.long	LFB1057
	.long	LFE1057-LFB1057
	.byte	0x4
	.long	LCFI9-LFB1057
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI10-LCFI9
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI12-LCFI10
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
	.long	LCFI15-LCFI12
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
	.long	LCFI16-LCFI15
	.byte	0xa
	.byte	0xc3
	.byte	0x4
	.long	LCFI17-LCFI16
	.byte	0xc6
	.byte	0x4
	.long	LCFI18-LCFI17
	.byte	0xc7
	.byte	0x4
	.long	LCFI19-LCFI18
	.byte	0xd
	.uleb128 0x4
	.byte	0x4
	.long	LCFI20-LCFI19
	.byte	0xc5
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.long	LCFI21-LCFI20
	.byte	0xb
	.align 4
LEFDE1:
LSFDE3:
	.long	LEFDE3-LASFDE3
LASFDE3:
	.long	LASFDE3-Lframe1
	.long	LFB1064
	.long	LFE1064-LFB1064
	.byte	0x4
	.long	LCFI22-LFB1064
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI23-LCFI22
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI25-LCFI23
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
	.long	LFB1065
	.long	LFE1065-LFB1065
	.byte	0x4
	.long	LCFI26-LFB1065
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI27-LCFI26
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI29-LCFI27
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
LEFDE5:
	.def	___real__Znaj;	.scl	2;	.type	32;	.endef
	.def	__Znaj;	.scl	2;	.type	32;	.endef
	.def	_clock;	.scl	2;	.type	32;	.endef
	.def	__ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	__ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	__ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	___real__ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	__ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
