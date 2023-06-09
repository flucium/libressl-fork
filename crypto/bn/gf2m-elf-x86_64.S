#include "x86_arch.h"
.text	

.type	_mul_1x1,@function
.align	16
_mul_1x1:
	subq	$128+8,%rsp
	movq	$-1,%r9
	leaq	(%rax,%rax,1),%rsi
	shrq	$3,%r9
	leaq	(,%rax,4),%rdi
	andq	%rax,%r9
	leaq	(,%rax,8),%r12
	sarq	$63,%rax
	leaq	(%r9,%r9,1),%r10
	sarq	$63,%rsi
	leaq	(,%r9,4),%r11
	andq	%rbp,%rax
	sarq	$63,%rdi
	movq	%rax,%rdx
	shlq	$63,%rax
	andq	%rbp,%rsi
	shrq	$1,%rdx
	movq	%rsi,%rcx
	shlq	$62,%rsi
	andq	%rbp,%rdi
	shrq	$2,%rcx
	xorq	%rsi,%rax
	movq	%rdi,%rbx
	shlq	$61,%rdi
	xorq	%rcx,%rdx
	shrq	$3,%rbx
	xorq	%rdi,%rax
	xorq	%rbx,%rdx

	movq	%r9,%r13
	movq	$0,0(%rsp)
	xorq	%r10,%r13
	movq	%r9,8(%rsp)
	movq	%r11,%r14
	movq	%r10,16(%rsp)
	xorq	%r12,%r14
	movq	%r13,24(%rsp)

	xorq	%r11,%r9
	movq	%r11,32(%rsp)
	xorq	%r11,%r10
	movq	%r9,40(%rsp)
	xorq	%r11,%r13
	movq	%r10,48(%rsp)
	xorq	%r14,%r9
	movq	%r13,56(%rsp)
	xorq	%r14,%r10

	movq	%r12,64(%rsp)
	xorq	%r14,%r13
	movq	%r9,72(%rsp)
	xorq	%r11,%r9
	movq	%r10,80(%rsp)
	xorq	%r11,%r10
	movq	%r13,88(%rsp)

	xorq	%r11,%r13
	movq	%r14,96(%rsp)
	movq	%r8,%rsi
	movq	%r9,104(%rsp)
	andq	%rbp,%rsi
	movq	%r10,112(%rsp)
	shrq	$4,%rbp
	movq	%r13,120(%rsp)
	movq	%r8,%rdi
	andq	%rbp,%rdi
	shrq	$4,%rbp

	movq	(%rsp,%rsi,8),%xmm0
	movq	%r8,%rsi
	andq	%rbp,%rsi
	shrq	$4,%rbp
	movq	(%rsp,%rdi,8),%rcx
	movq	%r8,%rdi
	movq	%rcx,%rbx
	shlq	$4,%rcx
	andq	%rbp,%rdi
	movq	(%rsp,%rsi,8),%xmm1
	shrq	$60,%rbx
	xorq	%rcx,%rax
	pslldq	$1,%xmm1
	movq	%r8,%rsi
	shrq	$4,%rbp
	xorq	%rbx,%rdx
	andq	%rbp,%rsi
	shrq	$4,%rbp
	pxor	%xmm1,%xmm0
	movq	(%rsp,%rdi,8),%rcx
	movq	%r8,%rdi
	movq	%rcx,%rbx
	shlq	$12,%rcx
	andq	%rbp,%rdi
	movq	(%rsp,%rsi,8),%xmm1
	shrq	$52,%rbx
	xorq	%rcx,%rax
	pslldq	$2,%xmm1
	movq	%r8,%rsi
	shrq	$4,%rbp
	xorq	%rbx,%rdx
	andq	%rbp,%rsi
	shrq	$4,%rbp
	pxor	%xmm1,%xmm0
	movq	(%rsp,%rdi,8),%rcx
	movq	%r8,%rdi
	movq	%rcx,%rbx
	shlq	$20,%rcx
	andq	%rbp,%rdi
	movq	(%rsp,%rsi,8),%xmm1
	shrq	$44,%rbx
	xorq	%rcx,%rax
	pslldq	$3,%xmm1
	movq	%r8,%rsi
	shrq	$4,%rbp
	xorq	%rbx,%rdx
	andq	%rbp,%rsi
	shrq	$4,%rbp
	pxor	%xmm1,%xmm0
	movq	(%rsp,%rdi,8),%rcx
	movq	%r8,%rdi
	movq	%rcx,%rbx
	shlq	$28,%rcx
	andq	%rbp,%rdi
	movq	(%rsp,%rsi,8),%xmm1
	shrq	$36,%rbx
	xorq	%rcx,%rax
	pslldq	$4,%xmm1
	movq	%r8,%rsi
	shrq	$4,%rbp
	xorq	%rbx,%rdx
	andq	%rbp,%rsi
	shrq	$4,%rbp
	pxor	%xmm1,%xmm0
	movq	(%rsp,%rdi,8),%rcx
	movq	%r8,%rdi
	movq	%rcx,%rbx
	shlq	$36,%rcx
	andq	%rbp,%rdi
	movq	(%rsp,%rsi,8),%xmm1
	shrq	$28,%rbx
	xorq	%rcx,%rax
	pslldq	$5,%xmm1
	movq	%r8,%rsi
	shrq	$4,%rbp
	xorq	%rbx,%rdx
	andq	%rbp,%rsi
	shrq	$4,%rbp
	pxor	%xmm1,%xmm0
	movq	(%rsp,%rdi,8),%rcx
	movq	%r8,%rdi
	movq	%rcx,%rbx
	shlq	$44,%rcx
	andq	%rbp,%rdi
	movq	(%rsp,%rsi,8),%xmm1
	shrq	$20,%rbx
	xorq	%rcx,%rax
	pslldq	$6,%xmm1
	movq	%r8,%rsi
	shrq	$4,%rbp
	xorq	%rbx,%rdx
	andq	%rbp,%rsi
	shrq	$4,%rbp
	pxor	%xmm1,%xmm0
	movq	(%rsp,%rdi,8),%rcx
	movq	%r8,%rdi
	movq	%rcx,%rbx
	shlq	$52,%rcx
	andq	%rbp,%rdi
	movq	(%rsp,%rsi,8),%xmm1
	shrq	$12,%rbx
	xorq	%rcx,%rax
	pslldq	$7,%xmm1
	movq	%r8,%rsi
	shrq	$4,%rbp
	xorq	%rbx,%rdx
	andq	%rbp,%rsi
	shrq	$4,%rbp
	pxor	%xmm1,%xmm0
	movq	(%rsp,%rdi,8),%rcx
	movq	%rcx,%rbx
	shlq	$60,%rcx
	movd	%xmm0,%rsi
	shrq	$4,%rbx
	xorq	%rcx,%rax
	psrldq	$8,%xmm0
	xorq	%rbx,%rdx
	movd	%xmm0,%rdi
	xorq	%rsi,%rax
	xorq	%rdi,%rdx

	addq	$128+8,%rsp
	retq
.Lend_mul_1x1:
.size	_mul_1x1,.-_mul_1x1

.hidden	OPENSSL_ia32cap_P
.globl	bn_GF2m_mul_2x2
.type	bn_GF2m_mul_2x2,@function
.align	16
bn_GF2m_mul_2x2:
	movl	OPENSSL_ia32cap_P+4(%rip),%eax
	btl	$IA32CAP_BIT1_PCLMUL,%eax
	jnc	.Lvanilla_mul_2x2

	movd	%rsi,%xmm0
	movd	%rcx,%xmm1
	movd	%rdx,%xmm2
	movd	%r8,%xmm3
	movdqa	%xmm0,%xmm4
	movdqa	%xmm1,%xmm5
.byte	102,15,58,68,193,0
	pxor	%xmm2,%xmm4
	pxor	%xmm3,%xmm5
.byte	102,15,58,68,211,0
.byte	102,15,58,68,229,0
	xorps	%xmm0,%xmm4
	xorps	%xmm2,%xmm4
	movdqa	%xmm4,%xmm5
	pslldq	$8,%xmm4
	psrldq	$8,%xmm5
	pxor	%xmm4,%xmm2
	pxor	%xmm5,%xmm0
	movdqu	%xmm2,0(%rdi)
	movdqu	%xmm0,16(%rdi)
	retq

.align	16
.Lvanilla_mul_2x2:
	leaq	-136(%rsp),%rsp
	movq	%r14,80(%rsp)
	movq	%r13,88(%rsp)
	movq	%r12,96(%rsp)
	movq	%rbp,104(%rsp)
	movq	%rbx,112(%rsp)
.Lbody_mul_2x2:
	movq	%rdi,32(%rsp)
	movq	%rsi,40(%rsp)
	movq	%rdx,48(%rsp)
	movq	%rcx,56(%rsp)
	movq	%r8,64(%rsp)

	movq	$15,%r8
	movq	%rsi,%rax
	movq	%rcx,%rbp
	call	_mul_1x1		
	movq	%rax,16(%rsp)
	movq	%rdx,24(%rsp)

	movq	48(%rsp),%rax
	movq	64(%rsp),%rbp
	call	_mul_1x1		
	movq	%rax,0(%rsp)
	movq	%rdx,8(%rsp)

	movq	40(%rsp),%rax
	movq	56(%rsp),%rbp
	xorq	48(%rsp),%rax
	xorq	64(%rsp),%rbp
	call	_mul_1x1		
	movq	0(%rsp),%rbx
	movq	8(%rsp),%rcx
	movq	16(%rsp),%rdi
	movq	24(%rsp),%rsi
	movq	32(%rsp),%rbp

	xorq	%rdx,%rax
	xorq	%rcx,%rdx
	xorq	%rbx,%rax
	movq	%rbx,0(%rbp)
	xorq	%rdi,%rdx
	movq	%rsi,24(%rbp)
	xorq	%rsi,%rax
	xorq	%rsi,%rdx
	xorq	%rdx,%rax
	movq	%rdx,16(%rbp)
	movq	%rax,8(%rbp)

	movq	80(%rsp),%r14
	movq	88(%rsp),%r13
	movq	96(%rsp),%r12
	movq	104(%rsp),%rbp
	movq	112(%rsp),%rbx
	leaq	136(%rsp),%rsp
	retq
.Lend_mul_2x2:
.size	bn_GF2m_mul_2x2,.-bn_GF2m_mul_2x2
.align	16
#if defined(HAVE_GNU_STACK)
.section .note.GNU-stack,"",%progbits
#endif
