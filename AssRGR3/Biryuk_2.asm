.386
PUBLIC _Task1@4
PUBLIC _Task2
PUBLIC Task3
PUBLIC Task4
PUBLIC @Task5@4

.model flat
.data
.code
_Task1@4 proc
push ebp
mov ebp, esp
push ecx
push ebx
mov ecx, [ebp+8]
mov eax, [ebp+12][ecx*4-4]
mov ebx, 1
dec ecx
	fi:
cmp [ebp+12][ecx*4-4], eax
	jne nig
inc ebx
	nig:
	loop fi
push eax
push ebx
mov ecx, [ebp+8]
dec ecx
	cycle1:
mov eax, [ebp+12][ecx*4-4]
mov ebx, 0
push ecx
	cycle2:
cmp [ebp+12][ecx * 4 - 4], eax
	jne ne2
inc ebx
	ne2 :
	loop cycle2
pop ecx
cmp ebx, [esp]
	jb bo
mov [esp], ebx
mov [esp+4], eax
	bo:
	loop cycle1
pop ebx
pop eax
pop ebx
pop ecx
mov esp, ebp
pop ebp
ret 8
_Task1@4 endp

; ****

_Task2 proc
push ebp
mov ebp, esp
push ecx
push ebx
mov ecx, [ebp+8]
mov eax, [ebp+12][ecx*4-4]
mov ebx, 1
dec ecx
	fi:
cmp [ebp+12][ecx*4-4], eax
	jne nig
inc ebx
	nig:
	loop fi
push eax
push ebx
mov ecx, [ebp+8]
dec ecx
	cycle1:
mov eax, [ebp+12][ecx*4-4]
mov ebx, 0
push ecx
	cycle2:
cmp [ebp+12][ecx * 4 - 4], eax
	jne ne2
inc ebx
	ne2 :
	loop cycle2
pop ecx
cmp ebx, [esp]
	jb bo
mov [esp], ebx
mov [esp+4], eax
	bo:
	loop cycle1
pop ebx
pop eax
pop ebx
pop ecx
mov esp, ebp
pop ebp
ret
_Task2 endp

; ****

Task3 proc stdcall, a:dword, N:dword
push ecx
push ebx
mov ecx, N
; first element
mov eax, a[ecx*4-4]
mov ebx, 1
dec ecx
	fi:
cmp a[ecx*4-4], eax
	jne nig
inc ebx
	nig:
	loop fi
push eax
push ebx
mov ecx, N
dec ecx
	cycle1:
mov eax, a[ecx*4-4]
mov ebx, 0 ; 1
push ecx
; dec ecx
	cycle2:
cmp a[ecx * 4 - 4], eax
	jne ne2
inc ebx
	ne2 :
	loop cycle2
pop ecx
cmp ebx, [esp]
	jb bo
mov [esp], ebx
mov [esp+4], eax
	bo:
	loop cycle1
mov eax, [esp+4]
; empty stack
pop ebx
pop eax
pop ebx
pop ecx
ret ; 8
Task3 endp

; *****

Task4 proc C, a:dword, N:dword
push ecx
push ebx
mov ecx, N
; first element
mov eax, a[ecx*4-4]
mov ebx, 1
dec ecx
	fi:
cmp a[ecx*4-4], eax
	jne nig
inc ebx
	nig:
	loop fi
push eax
push ebx
mov ecx, N
dec ecx
	cycle1:
mov eax, a[ecx*4-4]
mov ebx, 0 ; 1
push ecx
; dec ecx
	cycle2:
cmp a[ecx * 4 - 4], eax
	jne ne2
inc ebx
	ne2 :
	loop cycle2
pop ecx
cmp ebx, [esp]
	jb bo
mov [esp], ebx
mov [esp+4], eax
	bo:
	loop cycle1
mov eax, [esp+4]
; empty stack
pop ebx
pop eax
pop ebx
pop ecx
ret
Task4 endp

; *****

@Task5@8 proc
push ebx
; first element
push ecx
mov eax, edx[ecx*4-4]
mov ebx, 1
dec ecx
	fi:
cmp edx[ecx*4-4], eax
	jne nig
inc ebx
	nig:
	loop fi
pop ecx
push eax
push ebx
dec ecx
	cycle1:
mov eax, edx[ecx*4-4]
mov ebx, 0 ; 1
push ecx
; dec ecx
	cycle2:
cmp edx[ecx * 4 - 4], eax
	jne ne2
inc ebx
	ne2 :
	loop cycle2
pop ecx
cmp ebx, [esp]
	jb bo
mov [esp], ebx
mov [esp+4], eax
	bo:
	loop cycle1
mov eax, [esp+4]
; empty stack
pop ebx
pop eax
pop ebx
ret
@Task5@8 endp

end