	TITLE	C:\Users\R\Desktop\HiFR13ND\popup.obj
	.686P
	.XMM
;	include listing.inc
	.model	flat
assume fs:nothing

;INCLUDELIB LIBCMT
;INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG90235 DB	'k', 00H, 'e', 00H, 'r', 00H, 'n', 00H, 'e', 00H, 'l', 00H
	DB	'3', 00H, '2', 00H, '.', 00H, 'd', 00H, 'l', 00H, 'l', 00H, 00H
	DB	00H
	ORG $+2
$SG90237 DB	'LoadLibraryA', 00H
	ORG $+3
$SG90239 DB	'GetProcAddress', 00H
	ORG $+1
$SG90241 DB	'user32.dll', 00H
	ORG $+1
$SG90242 DB	'MessageBoxW', 00H
$SG90244 DB	'H', 00H, 'e', 00H, 'l', 00H, 'l', 00H, 'o', 00H, ' ', 00H
	DB	'F', 00H, 'R', 00H, '1', 00H, '3', 00H, 'N', 00H, 'D', 00H, 'S'
	DB	00H, 00H, 00H
$SG90245 DB	'R', 00H, 'y', 00H, 'a', 00H, 'n', 00H, ' ', 00H, 'W', 00H
	DB	'a', 00H, 's', 00H, ' ', 00H, 'H', 00H, 'e', 00H, 'r', 00H, 'e'
	DB	00H, 00H, 00H
CONST	ENDS
PUBLIC	?get_module_by_name@@YAPAXPA_W@Z		; get_module_by_name
PUBLIC	?get_func_by_name@@YAPAXPAXPAD@Z		; get_func_by_name
PUBLIC	_main
; Function compile flags: /Odtp
_TEXT	SEGMENT
__GetProcAddress$ = -28					; size = 4
_u32_dll$ = -24						; size = 4
__LoadLibraryA$ = -20					; size = 4
__MessageBoxW$ = -16					; size = 4
_get_proc$ = -12					; size = 4
_load_lib$ = -8						; size = 4
_base$ = -4						; size = 4
_main	PROC
; File C:\Users\R\Desktop\HiFR13ND\popup.cpp
; Line 5
	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH
; Line 6
	push	OFFSET $SG90235
	call	?get_module_by_name@@YAPAXPA_W@Z	; get_module_by_name
	add	esp, 4
	mov	DWORD PTR _base$[ebp], eax
; Line 7
	cmp	DWORD PTR _base$[ebp], 0
	jne	SHORT $LN2@main
; Line 8
	mov	eax, 1
	jmp	$LN1@main
$LN2@main:
; Line 11
	push	OFFSET $SG90237
	mov	eax, DWORD PTR _base$[ebp]
	push	eax
	call	?get_func_by_name@@YAPAXPAXPAD@Z	; get_func_by_name
	add	esp, 8
	mov	DWORD PTR _load_lib$[ebp], eax
; Line 12
	cmp	DWORD PTR _load_lib$[ebp], 0
	jne	SHORT $LN3@main
; Line 13
	mov	eax, 2
	jmp	SHORT $LN1@main
$LN3@main:
; Line 15
	push	OFFSET $SG90239
	mov	ecx, DWORD PTR _base$[ebp]
	push	ecx
	call	?get_func_by_name@@YAPAXPAXPAD@Z	; get_func_by_name
	add	esp, 8
	mov	DWORD PTR _get_proc$[ebp], eax
; Line 16
	cmp	DWORD PTR _get_proc$[ebp], 0
	jne	SHORT $LN4@main
; Line 17
	mov	eax, 3
	jmp	SHORT $LN1@main
$LN4@main:
; Line 19
	mov	edx, DWORD PTR _load_lib$[ebp]
	mov	DWORD PTR __LoadLibraryA$[ebp], edx
; Line 21
	mov	eax, DWORD PTR _get_proc$[ebp]
	mov	DWORD PTR __GetProcAddress$[ebp], eax
; Line 23
	push	OFFSET $SG90241
	call	DWORD PTR __LoadLibraryA$[ebp]
	mov	DWORD PTR _u32_dll$[ebp], eax
; Line 29
	push	OFFSET $SG90242
	mov	ecx, DWORD PTR _u32_dll$[ebp]
	push	ecx
	call	DWORD PTR __GetProcAddress$[ebp]
	mov	DWORD PTR __MessageBoxW$[ebp], eax
; Line 35
	cmp	DWORD PTR __MessageBoxW$[ebp], 0
	jne	SHORT $LN5@main
	mov	eax, 4
	jmp	SHORT $LN1@main
$LN5@main:
; Line 37
	push	0
	push	OFFSET $SG90244
	push	OFFSET $SG90245
	push	0
	call	DWORD PTR __MessageBoxW$[ebp]
; Line 39
	xor	eax, eax
$LN1@main:
; Line 40
	mov	esp, ebp
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT ?get_func_by_name@@YAPAXPAXPAD@Z
_TEXT	SEGMENT
_funcRVA$1 = -60					; size = 4
_nameRVA$2 = -56					; size = 4
_nameIndex$3 = -52					; size = 4
_funcsListRVA$ = -48					; size = 4
_namesOrdsListRVA$ = -44				; size = 4
_funcNamesListRVA$ = -40				; size = 4
_namesCount$ = -36					; size = 4
_expAddr$ = -32						; size = 4
_nt_headers$ = -28					; size = 4
_exportsDir$ = -24					; size = 4
_idh$ = -20						; size = 4
_curr_name$4 = -16					; size = 4
_exp$ = -12						; size = 4
_i$5 = -8						; size = 4
_k$6 = -4						; size = 4
_module$ = 8						; size = 4
_func_name$ = 12					; size = 4
?get_func_by_name@@YAPAXPAXPAD@Z PROC			; get_func_by_name, COMDAT
; File C:\Users\R\Desktop\HiFR13ND\peb_lookup.h
; Line 104
	push	ebp
	mov	ebp, esp
	sub	esp, 60					; 0000003cH
; Line 105
	mov	eax, DWORD PTR _module$[ebp]
	mov	DWORD PTR _idh$[ebp], eax
; Line 106
	mov	ecx, DWORD PTR _idh$[ebp]
	movzx	edx, WORD PTR [ecx]
	cmp	edx, 23117				; 00005a4dH
	je	SHORT $LN8@get_func_b
; Line 107
	xor	eax, eax
	jmp	$LN1@get_func_b
$LN8@get_func_b:
; Line 109
	mov	eax, DWORD PTR _idh$[ebp]
	mov	ecx, DWORD PTR _module$[ebp]
	add	ecx, DWORD PTR [eax+60]
	mov	DWORD PTR _nt_headers$[ebp], ecx
; Line 110
	mov	edx, 8
	imul	eax, edx, 0
	mov	ecx, DWORD PTR _nt_headers$[ebp]
	lea	edx, DWORD PTR [ecx+eax+120]
	mov	DWORD PTR _exportsDir$[ebp], edx
; Line 111
	mov	eax, DWORD PTR _exportsDir$[ebp]
	cmp	DWORD PTR [eax], 0
	jne	SHORT $LN9@get_func_b
; Line 112
	xor	eax, eax
	jmp	$LN1@get_func_b
$LN9@get_func_b:
; Line 115
	mov	ecx, DWORD PTR _exportsDir$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _expAddr$[ebp], edx
; Line 116
	mov	eax, DWORD PTR _expAddr$[ebp]
	add	eax, DWORD PTR _module$[ebp]
	mov	DWORD PTR _exp$[ebp], eax
; Line 117
	mov	ecx, DWORD PTR _exp$[ebp]
	mov	edx, DWORD PTR [ecx+24]
	mov	DWORD PTR _namesCount$[ebp], edx
; Line 119
	mov	eax, DWORD PTR _exp$[ebp]
	mov	ecx, DWORD PTR [eax+28]
	mov	DWORD PTR _funcsListRVA$[ebp], ecx
; Line 120
	mov	edx, DWORD PTR _exp$[ebp]
	mov	eax, DWORD PTR [edx+32]
	mov	DWORD PTR _funcNamesListRVA$[ebp], eax
; Line 121
	mov	ecx, DWORD PTR _exp$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	mov	DWORD PTR _namesOrdsListRVA$[ebp], edx
; Line 124
	mov	DWORD PTR _i$5[ebp], 0
	jmp	SHORT $LN4@get_func_b
$LN2@get_func_b:
	mov	eax, DWORD PTR _i$5[ebp]
	add	eax, 1
	mov	DWORD PTR _i$5[ebp], eax
$LN4@get_func_b:
	mov	ecx, DWORD PTR _i$5[ebp]
	cmp	ecx, DWORD PTR _namesCount$[ebp]
	jae	$LN3@get_func_b
; Line 125
	mov	edx, DWORD PTR _module$[ebp]
	add	edx, DWORD PTR _funcNamesListRVA$[ebp]
	mov	eax, DWORD PTR _i$5[ebp]
	lea	ecx, DWORD PTR [edx+eax*4]
	mov	DWORD PTR _nameRVA$2[ebp], ecx
; Line 126
	mov	edx, DWORD PTR _module$[ebp]
	add	edx, DWORD PTR _namesOrdsListRVA$[ebp]
	mov	eax, DWORD PTR _i$5[ebp]
	lea	ecx, DWORD PTR [edx+eax*2]
	mov	DWORD PTR _nameIndex$3[ebp], ecx
; Line 127
	mov	edx, DWORD PTR _module$[ebp]
	add	edx, DWORD PTR _funcsListRVA$[ebp]
	mov	eax, DWORD PTR _nameIndex$3[ebp]
	movzx	ecx, WORD PTR [eax]
	lea	edx, DWORD PTR [edx+ecx*4]
	mov	DWORD PTR _funcRVA$1[ebp], edx
; Line 129
	mov	eax, DWORD PTR _nameRVA$2[ebp]
	mov	ecx, DWORD PTR _module$[ebp]
	add	ecx, DWORD PTR [eax]
	mov	DWORD PTR _curr_name$4[ebp], ecx
; Line 130
	mov	DWORD PTR _k$6[ebp], 0
; Line 131
	mov	DWORD PTR _k$6[ebp], 0
	jmp	SHORT $LN7@get_func_b
$LN5@get_func_b:
	mov	edx, DWORD PTR _k$6[ebp]
	add	edx, 1
	mov	DWORD PTR _k$6[ebp], edx
$LN7@get_func_b:
	mov	eax, DWORD PTR _func_name$[ebp]
	add	eax, DWORD PTR _k$6[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $LN6@get_func_b
	mov	edx, DWORD PTR _curr_name$4[ebp]
	add	edx, DWORD PTR _k$6[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $LN6@get_func_b
; Line 132
	mov	ecx, DWORD PTR _func_name$[ebp]
	add	ecx, DWORD PTR _k$6[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _curr_name$4[ebp]
	add	eax, DWORD PTR _k$6[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	je	SHORT $LN10@get_func_b
	jmp	SHORT $LN6@get_func_b
$LN10@get_func_b:
; Line 133
	jmp	SHORT $LN5@get_func_b
$LN6@get_func_b:
; Line 134
	mov	edx, DWORD PTR _func_name$[ebp]
	add	edx, DWORD PTR _k$6[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	jne	SHORT $LN11@get_func_b
	mov	ecx, DWORD PTR _curr_name$4[ebp]
	add	ecx, DWORD PTR _k$6[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	jne	SHORT $LN11@get_func_b
; Line 136
	mov	eax, DWORD PTR _funcRVA$1[ebp]
	mov	ecx, DWORD PTR _module$[ebp]
	add	ecx, DWORD PTR [eax]
	mov	eax, ecx
	jmp	SHORT $LN1@get_func_b
$LN11@get_func_b:
; Line 138
	jmp	$LN2@get_func_b
$LN3@get_func_b:
; Line 139
	xor	eax, eax
$LN1@get_func_b:
; Line 140
	mov	esp, ebp
	pop	ebp
	ret	0
?get_func_by_name@@YAPAXPAXPAD@Z ENDP			; get_func_by_name
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT ?get_module_by_name@@YAPAXPA_W@Z
_TEXT	SEGMENT
_list$ = -52						; size = 8
_Flink$ = -44						; size = 4
_ldr$ = -40						; size = 4
tv151 = -36						; size = 4
tv132 = -32						; size = 4
_peb$ = -28						; size = 4
_curr_module$ = -24					; size = 4
_curr_name$1 = -20					; size = 4
_i$2 = -16						; size = 4
_c2$3 = -12						; size = 2
_c1$4 = -8						; size = 2
tv155 = -4						; size = 2
tv136 = -2						; size = 2
_module_name$ = 8					; size = 4
?get_module_by_name@@YAPAXPA_W@Z PROC			; get_module_by_name, COMDAT
; File C:\Users\R\Desktop\HiFR13ND\peb_lookup.h
; Line 69
	push	ebp
	mov	ebp, esp
	sub	esp, 52					; 00000034H
; Line 70
	mov	DWORD PTR _peb$[ebp], 0
; Line 74
	mov	eax, DWORD PTR fs:48
	mov	DWORD PTR _peb$[ebp], eax
; Line 76
	mov	ecx, DWORD PTR _peb$[ebp]
	mov	edx, DWORD PTR [ecx+12]
	mov	DWORD PTR _ldr$[ebp], edx
; Line 77
	mov	eax, DWORD PTR _ldr$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	mov	edx, DWORD PTR [eax+16]
	mov	DWORD PTR _list$[ebp], ecx
	mov	DWORD PTR _list$[ebp+4], edx
; Line 79
	mov	eax, DWORD PTR _list$[ebp]
	mov	DWORD PTR _Flink$[ebp], eax
; Line 80
	mov	ecx, DWORD PTR _Flink$[ebp]
	mov	DWORD PTR _curr_module$[ebp], ecx
$LN2@get_module:
; Line 82
	cmp	DWORD PTR _curr_module$[ebp], 0
	je	$LN3@get_module
	mov	edx, DWORD PTR _curr_module$[ebp]
	cmp	DWORD PTR [edx+24], 0
	je	$LN3@get_module
; Line 83
	mov	eax, DWORD PTR _curr_module$[ebp]
	cmp	DWORD PTR [eax+48], 0
	jne	SHORT $LN7@get_module
	jmp	SHORT $LN2@get_module
$LN7@get_module:
; Line 84
	mov	ecx, DWORD PTR _curr_module$[ebp]
	mov	edx, DWORD PTR [ecx+48]
	mov	DWORD PTR _curr_name$1[ebp], edx
; Line 86
	mov	DWORD PTR _i$2[ebp], 0
; Line 87
	mov	DWORD PTR _i$2[ebp], 0
	jmp	SHORT $LN6@get_module
$LN4@get_module:
	mov	eax, DWORD PTR _i$2[ebp]
	add	eax, 1
	mov	DWORD PTR _i$2[ebp], eax
$LN6@get_module:
	mov	ecx, DWORD PTR _i$2[ebp]
	mov	edx, DWORD PTR _module_name$[ebp]
	movzx	eax, WORD PTR [edx+ecx*2]
	test	eax, eax
	je	$LN5@get_module
	mov	ecx, DWORD PTR _i$2[ebp]
	mov	edx, DWORD PTR _curr_name$1[ebp]
	movzx	eax, WORD PTR [edx+ecx*2]
	test	eax, eax
	je	$LN5@get_module
; Line 89
	mov	ecx, DWORD PTR _i$2[ebp]
	mov	edx, DWORD PTR _module_name$[ebp]
	movzx	eax, WORD PTR [edx+ecx*2]
	cmp	eax, 90					; 0000005aH
	jg	SHORT $LN11@get_module
	mov	ecx, DWORD PTR _i$2[ebp]
	mov	edx, DWORD PTR _module_name$[ebp]
	movzx	eax, WORD PTR [edx+ecx*2]
	cmp	eax, 65					; 00000041H
	jl	SHORT $LN11@get_module
	mov	ecx, DWORD PTR _i$2[ebp]
	mov	edx, DWORD PTR _module_name$[ebp]
	movzx	eax, WORD PTR [edx+ecx*2]
	add	eax, 32					; 00000020H
	mov	DWORD PTR tv132[ebp], eax
	mov	ecx, DWORD PTR _i$2[ebp]
	mov	edx, DWORD PTR _module_name$[ebp]
	mov	ax, WORD PTR tv132[ebp]
	mov	WORD PTR [edx+ecx*2], ax
	mov	cx, WORD PTR tv132[ebp]
	mov	WORD PTR tv136[ebp], cx
	jmp	SHORT $LN12@get_module
$LN11@get_module:
	mov	edx, DWORD PTR _i$2[ebp]
	mov	eax, DWORD PTR _module_name$[ebp]
	mov	cx, WORD PTR [eax+edx*2]
	mov	WORD PTR tv136[ebp], cx
$LN12@get_module:
	mov	dx, WORD PTR tv136[ebp]
	mov	WORD PTR _c1$4[ebp], dx
; Line 90
	mov	eax, DWORD PTR _i$2[ebp]
	mov	ecx, DWORD PTR _curr_name$1[ebp]
	movzx	edx, WORD PTR [ecx+eax*2]
	cmp	edx, 90					; 0000005aH
	jg	SHORT $LN13@get_module
	mov	eax, DWORD PTR _i$2[ebp]
	mov	ecx, DWORD PTR _curr_name$1[ebp]
	movzx	edx, WORD PTR [ecx+eax*2]
	cmp	edx, 65					; 00000041H
	jl	SHORT $LN13@get_module
	mov	eax, DWORD PTR _i$2[ebp]
	mov	ecx, DWORD PTR _curr_name$1[ebp]
	movzx	edx, WORD PTR [ecx+eax*2]
	add	edx, 32					; 00000020H
	mov	DWORD PTR tv151[ebp], edx
	mov	eax, DWORD PTR _i$2[ebp]
	mov	ecx, DWORD PTR _curr_name$1[ebp]
	mov	dx, WORD PTR tv151[ebp]
	mov	WORD PTR [ecx+eax*2], dx
	mov	ax, WORD PTR tv151[ebp]
	mov	WORD PTR tv155[ebp], ax
	jmp	SHORT $LN14@get_module
$LN13@get_module:
	mov	ecx, DWORD PTR _i$2[ebp]
	mov	edx, DWORD PTR _curr_name$1[ebp]
	mov	ax, WORD PTR [edx+ecx*2]
	mov	WORD PTR tv155[ebp], ax
$LN14@get_module:
	mov	cx, WORD PTR tv155[ebp]
	mov	WORD PTR _c2$3[ebp], cx
; Line 91
	movzx	edx, WORD PTR _c1$4[ebp]
	movzx	eax, WORD PTR _c2$3[ebp]
	cmp	edx, eax
	je	SHORT $LN8@get_module
	jmp	SHORT $LN5@get_module
$LN8@get_module:
; Line 92
	jmp	$LN4@get_module
$LN5@get_module:
; Line 93
	mov	ecx, DWORD PTR _i$2[ebp]
	mov	edx, DWORD PTR _module_name$[ebp]
	movzx	eax, WORD PTR [edx+ecx*2]
	test	eax, eax
	jne	SHORT $LN9@get_module
	mov	ecx, DWORD PTR _i$2[ebp]
	mov	edx, DWORD PTR _curr_name$1[ebp]
	movzx	eax, WORD PTR [edx+ecx*2]
	test	eax, eax
	jne	SHORT $LN9@get_module
; Line 95
	mov	ecx, DWORD PTR _curr_module$[ebp]
	mov	eax, DWORD PTR [ecx+24]
	jmp	SHORT $LN1@get_module
$LN9@get_module:
; Line 98
	mov	edx, DWORD PTR _curr_module$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR _curr_module$[ebp], eax
; Line 99
	jmp	$LN2@get_module
$LN3@get_module:
; Line 100
	xor	eax, eax
$LN1@get_module:
; Line 101
	mov	esp, ebp
	pop	ebp
	ret	0
?get_module_by_name@@YAPAXPA_W@Z ENDP			; get_module_by_name
_TEXT	ENDS
END
