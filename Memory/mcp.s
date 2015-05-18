	.file	"main.cpp"
.lcomm __ZStL8__ioinit,1,1
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
	.text
.globl __Z7processPv
	.def	__Z7processPv;	.scl	2;	.type	32;	.endef
__Z7processPv:
LFB1056:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	subl	$72, %esp
LCFI2:
	movl	_pth1, %eax
	movl	%eax, -12(%ebp)
	movl	_pth2, %eax
	movl	%eax, -16(%ebp)
	movl	$0, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_gettimeofday
	movl	$0, -20(%ebp)
	jmp	L2
L3:
	movl	-12(%ebp), %eax
	fldl	(%eax)
	movl	-16(%ebp), %eax
	fstpl	(%eax)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	addl	$1, -20(%ebp)
L2:
	cmpl	$13107199, -20(%ebp)
	setle	%al
	testb	%al, %al
	jne	L3
	movl	$0, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_gettimeofday
L4:
	movl	_lock, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	jne	L4
	movl	$1, _lock
	movl	-36(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -44(%ebp)
	fildl	-44(%ebp)
	fldl	_total
	faddp	%st, %st(1)
	fstpl	_total
	movl	-32(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -44(%ebp)
	fildl	-44(%ebp)
	fldl	LC0
	fdivrp	%st, %st(1)
	fldl	_total
	faddp	%st, %st(1)
	fstpl	_total
	movl	$0, _lock
	leave
LCFI3:
	ret
LFE1056:
.globl __Z8process2Pv
	.def	__Z8process2Pv;	.scl	2;	.type	32;	.endef
__Z8process2Pv:
LFB1057:
	pushl	%ebp
LCFI4:
	movl	%esp, %ebp
LCFI5:
	subl	$72, %esp
LCFI6:
	movl	_pth3, %eax
	movl	%eax, -12(%ebp)
	movl	_pth4, %eax
	movl	%eax, -16(%ebp)
	movl	$0, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_gettimeofday
	movl	$0, -20(%ebp)
	jmp	L6
L7:
	movl	-12(%ebp), %eax
	fldl	(%eax)
	movl	-16(%ebp), %eax
	fstpl	(%eax)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	addl	$1, -20(%ebp)
L6:
	cmpl	$13107199, -20(%ebp)
	setle	%al
	testb	%al, %al
	jne	L7
	movl	$0, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_gettimeofday
L8:
	movl	_lock, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	jne	L8
	movl	$1, _lock
	movl	-36(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -44(%ebp)
	fildl	-44(%ebp)
	fldl	_total
	faddp	%st, %st(1)
	fstpl	_total
	movl	-32(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -44(%ebp)
	fildl	-44(%ebp)
	fldl	LC0
	fdivrp	%st, %st(1)
	fldl	_total
	faddp	%st, %st(1)
	fstpl	_total
	movl	$0, _lock
	leave
LCFI7:
	ret
LFE1057:
.globl __Z8process3Pv
	.def	__Z8process3Pv;	.scl	2;	.type	32;	.endef
__Z8process3Pv:
LFB1058:
	pushl	%ebp
LCFI8:
	movl	%esp, %ebp
LCFI9:
	subl	$72, %esp
LCFI10:
	movl	_pth5, %eax
	movl	%eax, -12(%ebp)
	movl	_pth6, %eax
	movl	%eax, -16(%ebp)
	movl	$0, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_gettimeofday
	movl	$0, -20(%ebp)
	jmp	L10
L11:
	movl	-12(%ebp), %eax
	fldl	(%eax)
	movl	-16(%ebp), %eax
	fstpl	(%eax)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	addl	$1, -20(%ebp)
L10:
	cmpl	$13107199, -20(%ebp)
	setle	%al
	testb	%al, %al
	jne	L11
	movl	$0, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_gettimeofday
L12:
	movl	_lock, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	jne	L12
	movl	$1, _lock
	movl	-36(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -44(%ebp)
	fildl	-44(%ebp)
	fldl	_total
	faddp	%st, %st(1)
	fstpl	_total
	movl	-32(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -44(%ebp)
	fildl	-44(%ebp)
	fldl	LC0
	fdivrp	%st, %st(1)
	fldl	_total
	faddp	%st, %st(1)
	fstpl	_total
	movl	$0, _lock
	leave
LCFI11:
	ret
LFE1058:
.globl __Z8process4Pv
	.def	__Z8process4Pv;	.scl	2;	.type	32;	.endef
__Z8process4Pv:
LFB1059:
	pushl	%ebp
LCFI12:
	movl	%esp, %ebp
LCFI13:
	subl	$72, %esp
LCFI14:
	movl	_pth7, %eax
	movl	%eax, -12(%ebp)
	movl	_pth8, %eax
	movl	%eax, -16(%ebp)
	movl	$0, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_gettimeofday
	movl	$0, -20(%ebp)
	jmp	L14
L15:
	movl	-12(%ebp), %eax
	fldl	(%eax)
	movl	-16(%ebp), %eax
	fstpl	(%eax)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	addl	$1, -20(%ebp)
L14:
	cmpl	$13107199, -20(%ebp)
	setle	%al
	testb	%al, %al
	jne	L15
	movl	$0, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_gettimeofday
L16:
	movl	_lock, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	jne	L16
	movl	$1, _lock
	movl	-36(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -44(%ebp)
	fildl	-44(%ebp)
	fldl	_total
	faddp	%st, %st(1)
	fstpl	_total
	movl	-32(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -44(%ebp)
	fildl	-44(%ebp)
	fldl	LC0
	fdivrp	%st, %st(1)
	fldl	_total
	faddp	%st, %st(1)
	fstpl	_total
	movl	$0, _lock
	leave
LCFI15:
	ret
LFE1059:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC3:
	.ascii "%d\12\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB1060:
	pushl	%ebp
LCFI16:
	movl	%esp, %ebp
LCFI17:
	andl	$-16, %esp
LCFI18:
	pushl	%esi
LCFI19:
	pushl	%ebx
LCFI20:
	subl	$88, %esp
LCFI21:
	call	___main
	movl	$90, 60(%esp)
	movl	$0, _lock
	fldz
	fstpl	_total
	fldz
	fstpl	_total
	movl	$104857600, (%esp)
	call	__Znaj
	movl	%eax, 56(%esp)
	movl	$104857600, (%esp)
	call	__Znaj
	movl	%eax, 52(%esp)
	movl	$0, 68(%esp)
	jmp	L18
L19:
	movl	68(%esp), %eax
	movl	%eax, %ebx
	addl	56(%esp), %ebx
	movl	68(%esp), %ecx
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
	addl	$1, 68(%esp)
L18:
	cmpl	$104857599, 68(%esp)
	setle	%al
	testb	%al, %al
	jne	L19
/APP
 # 181 "main.cpp" 1
	#a2,b2 = a,b
 # 0 "" 2
/NO_APP
	movl	56(%esp), %eax
	movl	%eax, 76(%esp)
	movl	52(%esp), %eax
	movl	%eax, 72(%esp)
	movl	$0, 4(%esp)
	leal	44(%esp), %eax
	movl	%eax, (%esp)
	call	_gettimeofday
/APP
 # 188 "main.cpp" 1
	#for loop:
 # 0 "" 2
/NO_APP
	movl	$0, 64(%esp)
	jmp	L20
PF:
    movl    64(%esp), %eax
    andl    $63 , %eax
    cmpl    $0 , %eax
    jne     L21
    movl    76(%esp), %eax
    prefetcht0  512(%eax)
L21:
	movl	76(%esp), %eax
	fldl	(%eax)
	movl	72(%esp), %eax
	fstpl	(%eax)
	addl	$8, 72(%esp)
	addl	$8, 76(%esp)
	addl	$1, 64(%esp)
L20:
	cmpl	$13107199, 64(%esp)
	setle	%al
	testb	%al, %al
	jne	PF
/APP
 # 192 "main.cpp" 1
	#end for loop
 # 0 "" 2
/NO_APP
	movl	$0, 4(%esp)
	leal	36(%esp), %eax
	movl	%eax, (%esp)
	call	_gettimeofday
	movl	36(%esp), %edx
	movl	44(%esp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 28(%esp)
	fildl	28(%esp)
	fldl	_total
	faddp	%st, %st(1)
	fstpl	_total
	movl	40(%esp), %edx
	movl	48(%esp), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, 28(%esp)
	fildl	28(%esp)
	fldl	LC0
	fdivrp	%st, %st(1)
	fldl	_total
	faddp	%st, %st(1)
	fstpl	_total
	fldl	_total
	fstpl	4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZNSolsEd
	movl	$__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSolsEPFRSoS_E
	movl	52(%esp), %eax
	addl	$104857599, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	cmpl	$0, 56(%esp)
	je	L22
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	call	__ZdaPv
L22:
	cmpl	$0, 52(%esp)
	je	L23
	movl	52(%esp), %eax
	movl	%eax, (%esp)
	call	__ZdaPv
L23:
	movl	$0, %eax
	addl	$88, %esp
	popl	%ebx
LCFI22:
	popl	%esi
LCFI23:
	movl	%ebp, %esp
LCFI24:
	popl	%ebp
LCFI25:
	ret
LFE1060:
	.def	__Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
__Z41__static_initialization_and_destruction_0ii:
LFB1067:
	pushl	%ebp
LCFI26:
	movl	%esp, %ebp
LCFI27:
	subl	$24, %esp
LCFI28:
	cmpl	$1, 8(%ebp)
	jne	L25
	cmpl	$65535, 12(%ebp)
	jne	L25
	movl	$__ZStL8__ioinit, (%esp)
	call	__ZNSt8ios_base4InitC1Ev
L25:
	cmpl	$0, 8(%ebp)
	jne	L24
	cmpl	$65535, 12(%ebp)
	jne	L24
	movl	$__ZStL8__ioinit, (%esp)
	call	__ZNSt8ios_base4InitD1Ev
L24:
	leave
LCFI29:
	ret
LFE1067:
	.def	__GLOBAL__I_total;	.scl	3;	.type	32;	.endef
__GLOBAL__I_total:
LFB1068:
	pushl	%ebp
LCFI30:
	movl	%esp, %ebp
LCFI31:
	subl	$24, %esp
LCFI32:
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	__Z41__static_initialization_and_destruction_0ii
	leave
LCFI33:
	ret
LFE1068:
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__I_total
	.text
	.def	__GLOBAL__D_total;	.scl	3;	.type	32;	.endef
__GLOBAL__D_total:
LFB1069:
	pushl	%ebp
LCFI34:
	movl	%esp, %ebp
LCFI35:
	subl	$24, %esp
LCFI36:
	movl	$65535, 4(%esp)
	movl	$0, (%esp)
	call	__Z41__static_initialization_and_destruction_0ii
	leave
LCFI37:
	ret
LFE1069:
	.section	.dtors,"w"
	.align 4
	.long	__GLOBAL__D_total
	.section .rdata,"dr"
	.align 8
LC0:
	.long	0
	.long	1093567616
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
	.long	LCFI7-LCFI5
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
	.long	LCFI8-LFB1058
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI9-LCFI8
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI11-LCFI9
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
	.long	LCFI12-LFB1059
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
LEFDE7:
LSFDE9:
	.long	LEFDE9-LASFDE9
LASFDE9:
	.long	LASFDE9-Lframe1
	.long	LFB1060
	.long	LFE1060-LFB1060
	.byte	0x4
	.long	LCFI16-LFB1060
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI17-LCFI16
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI21-LCFI17
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
	.long	LCFI22-LCFI21
	.byte	0xc3
	.byte	0x4
	.long	LCFI23-LCFI22
	.byte	0xc6
	.byte	0x4
	.long	LCFI24-LCFI23
	.byte	0xd
	.uleb128 0x4
	.byte	0x4
	.long	LCFI25-LCFI24
	.byte	0xc5
	.byte	0xe
	.uleb128 0x4
	.align 4
LEFDE9:
LSFDE11:
	.long	LEFDE11-LASFDE11
LASFDE11:
	.long	LASFDE11-Lframe1
	.long	LFB1067
	.long	LFE1067-LFB1067
	.byte	0x4
	.long	LCFI26-LFB1067
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
LEFDE11:
LSFDE13:
	.long	LEFDE13-LASFDE13
LASFDE13:
	.long	LASFDE13-Lframe1
	.long	LFB1068
	.long	LFE1068-LFB1068
	.byte	0x4
	.long	LCFI30-LFB1068
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI31-LCFI30
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI33-LCFI31
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
LEFDE13:
LSFDE15:
	.long	LEFDE15-LASFDE15
LASFDE15:
	.long	LASFDE15-Lframe1
	.long	LFB1069
	.long	LFE1069-LFB1069
	.byte	0x4
	.long	LCFI34-LFB1069
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	LCFI35-LCFI34
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI37-LCFI35
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
LEFDE15:
	.def	_gettimeofday;	.scl	2;	.type	32;	.endef
	.def	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	___real__Znaj;	.scl	2;	.type	32;	.endef
	.def	__Znaj;	.scl	2;	.type	32;	.endef
	.def	__ZNSolsEd;	.scl	2;	.type	32;	.endef
	.def	__ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	___real__ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
