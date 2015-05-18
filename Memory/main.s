	.file	"main.cpp"
	.text
	.p2align 4,,15
.globl __Z7processPv
	.def	__Z7processPv;	.scl	2;	.type	32;	.endef
__Z7processPv:
LFB1056:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	subl	$56, %esp
LCFI2:
	leal	-16(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_gettimeofday
	movl	_pth1, %eax
	movl	$104857600, 8(%esp)
	movl	%eax, 4(%esp)
	movl	_pth2, %eax
	movl	%eax, (%esp)
	call	_memcpy
	leal	-24(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_gettimeofday
	movl	_lock, %eax
	testl	%eax, %eax
	je	L2
L4:
	jmp	L4
	.p2align 4,,7
L2:
	movl	-24(%ebp), %eax
	subl	-16(%ebp), %eax
	movl	$0, _lock
	movl	%eax, -28(%ebp)
	movl	-20(%ebp), %eax
	fildl	-28(%ebp)
	faddl	_total
	subl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	fildl	-28(%ebp)
	fdivs	LC0
	faddp	%st, %st(1)
	fstpl	_total
	leave
LCFI3:
	ret
LFE1056:
	.p2align 4,,15
.globl __Z8process2Pv
	.def	__Z8process2Pv;	.scl	2;	.type	32;	.endef
__Z8process2Pv:
LFB1057:
	pushl	%ebp
LCFI4:
	movl	%esp, %ebp
LCFI5:
	pushl	%esi
LCFI6:
	pushl	%ebx
LCFI7:
	subl	$48, %esp
LCFI8:
	movl	_pth3, %esi
	leal	-16(%ebp), %eax
	movl	_pth4, %ebx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_gettimeofday
	xorl	%eax, %eax
	.p2align 4,,7
L7:
	fldl	(%esi,%eax)
	fstpl	(%ebx,%eax)
	addl	$8, %eax
	cmpl	$104857600, %eax
	jne	L7
	leal	-24(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_gettimeofday
	movl	_lock, %edx
	testl	%edx, %edx
	je	L8
L11:
	jmp	L11
	.p2align 4,,7
L8:
	movl	-24(%ebp), %eax
	subl	-16(%ebp), %eax
	movl	$0, _lock
	movl	%eax, -28(%ebp)
	movl	-20(%ebp), %eax
	fildl	-28(%ebp)
	faddl	_total
	subl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	fildl	-28(%ebp)
	fdivs	LC0
	faddp	%st, %st(1)
	fstpl	_total
	addl	$48, %esp
	popl	%ebx
LCFI9:
	popl	%esi
LCFI10:
	popl	%ebp
LCFI11:
	ret
LFE1057:
	.p2align 4,,15
.globl __Z8process3Pv
	.def	__Z8process3Pv;	.scl	2;	.type	32;	.endef
__Z8process3Pv:
LFB1058:
	pushl	%ebp
LCFI12:
	movl	%esp, %ebp
LCFI13:
	pushl	%esi
LCFI14:
	pushl	%ebx
LCFI15:
	subl	$48, %esp
LCFI16:
	movl	_pth5, %esi
	leal	-16(%ebp), %eax
	movl	_pth6, %ebx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_gettimeofday
	xorl	%eax, %eax
	.p2align 4,,7
L13:
	fldl	(%esi,%eax)
	fstpl	(%ebx,%eax)
	addl	$8, %eax
	cmpl	$104857600, %eax
	jne	L13
	leal	-24(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_gettimeofday
	movl	_lock, %ecx
	testl	%ecx, %ecx
	je	L14
L17:
	jmp	L17
	.p2align 4,,7
L14:
	movl	-24(%ebp), %eax
	subl	-16(%ebp), %eax
	movl	$0, _lock
	movl	%eax, -28(%ebp)
	movl	-20(%ebp), %eax
	fildl	-28(%ebp)
	faddl	_total
	subl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	fildl	-28(%ebp)
	fdivs	LC0
	faddp	%st, %st(1)
	fstpl	_total
	addl	$48, %esp
	popl	%ebx
LCFI17:
	popl	%esi
LCFI18:
	popl	%ebp
LCFI19:
	ret
LFE1058:
	.p2align 4,,15
.globl __Z8process4Pv
	.def	__Z8process4Pv;	.scl	2;	.type	32;	.endef
__Z8process4Pv:
LFB1059:
	pushl	%ebp
LCFI20:
	movl	%esp, %ebp
LCFI21:
	pushl	%esi
LCFI22:
	pushl	%ebx
LCFI23:
	subl	$48, %esp
LCFI24:
	movl	_pth7, %esi
	leal	-16(%ebp), %eax
	movl	_pth8, %ebx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_gettimeofday
	xorl	%eax, %eax
	.p2align 4,,7
L19:
	fldl	(%esi,%eax)
	fstpl	(%ebx,%eax)
	addl	$8, %eax
	cmpl	$104857600, %eax
	jne	L19
	leal	-24(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_gettimeofday
	movl	_lock, %ebx
	testl	%ebx, %ebx
	je	L20
L23:
	jmp	L23
	.p2align 4,,7
L20:
	movl	-24(%ebp), %eax
	subl	-16(%ebp), %eax
	movl	$0, _lock
	movl	%eax, -28(%ebp)
	movl	-20(%ebp), %eax
	fildl	-28(%ebp)
	faddl	_total
	subl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	fildl	-28(%ebp)
	fdivs	LC0
	faddp	%st, %st(1)
	fstpl	_total
	addl	$48, %esp
	popl	%ebx
LCFI25:
	popl	%esi
LCFI26:
	popl	%ebp
LCFI27:
	ret
LFE1059:
	.def	___main;	.scl	2;	.type	32;	.endef
	.p2align 4,,15
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB1060:
	pushl	%ebp
LCFI28:
	movl	%esp, %ebp
LCFI29:
	andl	$-16, %esp
LCFI30:
	pushl	%edi
LCFI31:
	movl	$1374389535, %edi
	pushl	%esi
LCFI32:
	pushl	%ebx
LCFI33:
	subl	$52, %esp
LCFI34:
	call	___main
	movl	$0, _lock
	movl	$104857600, (%esp)
	fldz
	fstpl	_total
	call	__Znaj
	movl	$104857600, (%esp)
	movl	%eax, %ebx
	call	__Znaj
	xorl	%ecx, %ecx
	movl	%eax, %esi
	.p2align 4,,7
L25:
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
	jne	L25
/APP
 # 181 "main.cpp" 1
	#a2,b2 = a,b
 # 0 "" 2
/NO_APP
	leal	40(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_gettimeofday
/APP
 # 188 "main.cpp" 1
	#for loop:
 # 0 "" 2
/NO_APP
	xorl	%eax, %eax
	.p2align 4,,7
L27:
    movl %eax , %ecx
    andl $63 , %ecx
    cmpl $0 , %ecx
    jne L26
    movl %eax , %ecx
    addl %ebx , %ecx
    prefetcht0 64(%ecx)
L26:
	fldl	(%ebx,%eax)
	fstpl	(%esi,%eax)
	addl	$8, %eax
	cmpl	$104857600, %eax
	jne	L27
/APP
 # 192 "main.cpp" 1
	#end for loop
 # 0 "" 2
/NO_APP
	leal	32(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_gettimeofday
	movl	32(%esp), %eax
	subl	40(%esp), %eax
	movl	$__ZSt4cout, (%esp)
	movl	%eax, 28(%esp)
	movl	36(%esp), %eax
	subl	44(%esp), %eax
	fildl	28(%esp)
	faddl	_total
	movl	%eax, 28(%esp)
	fildl	28(%esp)
	fdivs	LC0
	faddp	%st, %st(1)
	fstl	_total
	fmuls	LC3
	fdivrs	LC4
	fstpl	4(%esp)
	call	__ZNSo9_M_insertIdEERSoT_
	movl	%eax, %edi
	movl	(%eax), %eax
	movl	-12(%eax), %eax
	movl	124(%edi,%eax), %eax
	testl	%eax, %eax
	je	L34
	cmpb	$0, 28(%eax)
	je	L28
	movzbl	39(%eax), %eax
L29:
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZNSo3putEc
	movl	%eax, (%esp)
	call	__ZNSo5flushEv
	testl	%ebx, %ebx
	je	L30
	movl	%ebx, (%esp)
	call	__ZdaPv
L30:
	testl	%esi, %esi
	je	L31
	movl	%esi, (%esp)
	call	__ZdaPv
L31:
	addl	$52, %esp
	xorl	%eax, %eax
	popl	%ebx
LCFI35:
	popl	%esi
LCFI36:
	popl	%edi
LCFI37:
	movl	%ebp, %esp
LCFI38:
	popl	%ebp
LCFI39:
	ret
L28:
LCFI40:
	movl	%eax, (%esp)
	movl	%eax, 24(%esp)
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	24(%esp), %eax
	movl	(%eax), %edx
	movl	$10, 4(%esp)
	movl	%eax, (%esp)
	call	*24(%edx)
	jmp	L29
L34:
	call	__ZSt16__throw_bad_castv
LFE1060:
	.p2align 4,,15
	.def	__GLOBAL__I_total;	.scl	3;	.type	32;	.endef
__GLOBAL__I_total:
LFB1068:
	pushl	%ebp
LCFI41:
	movl	%esp, %ebp
LCFI42:
	subl	$24, %esp
LCFI43:
	movl	$__ZStL8__ioinit, (%esp)
	call	__ZNSt8ios_base4InitC1Ev
	leave
LCFI44:
	ret
LFE1068:
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__I_total
	.text
	.p2align 4,,15
	.def	__GLOBAL__D_total;	.scl	3;	.type	32;	.endef
__GLOBAL__D_total:
LFB1069:
	pushl	%ebp
LCFI45:
	movl	%esp, %ebp
LCFI46:
	subl	$24, %esp
LCFI47:
	movl	$__ZStL8__ioinit, (%esp)
	call	__ZNSt8ios_base4InitD1Ev
	leave
LCFI48:
	ret
LFE1069:
	.section	.dtors,"w"
	.align 4
	.long	__GLOBAL__D_total
.globl _total
	.bss
	.align 8
_total:
	.space 8
.globl _lock
	.align 4
_lock:
	.space 4
.globl _pth1
	.align 4
_pth1:
	.space 4
.globl _pth2
	.align 4
_pth2:
	.space 4
.globl _pth3
	.align 4
_pth3:
	.space 4
.globl _pth4
	.align 4
_pth4:
	.space 4
.globl _pth5
	.align 4
_pth5:
	.space 4
.globl _pth6
	.align 4
_pth6:
	.space 4
.globl _pth7
	.align 4
_pth7:
	.space 4
.globl _pth8
	.align 4
_pth8:
	.space 4
.lcomm __ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1232348160
	.align 4
LC3:
	.long	1149239296
	.align 4
LC4:
	.long	1128792064
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
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
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
	.long	LCFI4-LFB1057
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI5-LCFI4
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI8-LCFI5
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	LCFI9-LCFI8
	.byte	0xc3
	.byte	0x4
	.long	LCFI10-LCFI9
	.byte	0xc6
	.byte	0x4
	.long	LCFI11-LCFI10
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
	.long	LCFI16-LCFI13
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	LCFI17-LCFI16
	.byte	0xc3
	.byte	0x4
	.long	LCFI18-LCFI17
	.byte	0xc6
	.byte	0x4
	.long	LCFI19-LCFI18
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
	.long	LCFI20-LFB1059
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI21-LCFI20
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI24-LCFI21
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	LCFI25-LCFI24
	.byte	0xc3
	.byte	0x4
	.long	LCFI26-LCFI25
	.byte	0xc6
	.byte	0x4
	.long	LCFI27-LCFI26
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
LEFDE7:
LSFDE9:
	.long	LEFDE9-LASFDE9
LASFDE9:
	.long	LASFDE9-Lframe1
	.long	LFB1060
	.long	LFE1060-LFB1060
	.byte	0x4
	.long	LCFI28-LFB1060
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI29-LCFI28
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI31-LCFI29
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
	.long	LCFI34-LCFI31
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
	.long	LCFI35-LCFI34
	.byte	0xa
	.byte	0xc3
	.byte	0x4
	.long	LCFI36-LCFI35
	.byte	0xc6
	.byte	0x4
	.long	LCFI37-LCFI36
	.byte	0xc7
	.byte	0x4
	.long	LCFI38-LCFI37
	.byte	0xd
	.uleb128 0x4
	.byte	0x4
	.long	LCFI39-LCFI38
	.byte	0xc5
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.long	LCFI40-LCFI39
	.byte	0xb
	.align 4
LEFDE9:
LSFDE11:
	.long	LEFDE11-LASFDE11
LASFDE11:
	.long	LASFDE11-Lframe1
	.long	LFB1068
	.long	LFE1068-LFB1068
	.byte	0x4
	.long	LCFI41-LFB1068
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI42-LCFI41
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI44-LCFI42
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
LEFDE11:
LSFDE13:
	.long	LEFDE13-LASFDE13
LASFDE13:
	.long	LASFDE13-Lframe1
	.long	LFB1069
	.long	LFE1069-LFB1069
	.byte	0x4
	.long	LCFI45-LFB1069
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI46-LCFI45
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI48-LCFI46
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
LEFDE13:
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_gettimeofday;	.scl	2;	.type	32;	.endef
	.def	___real__Znaj;	.scl	2;	.type	32;	.endef
	.def	__Znaj;	.scl	2;	.type	32;	.endef
	.def	__ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	__ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	__ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	___real__ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	__ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
