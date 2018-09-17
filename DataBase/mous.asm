
main1 PROC
;--------------------------------------------------
	mov cx , 18
mov si , 0
mov dl , 0
l_51:
mov temp , cx
mov ah , 2
mov bh , 0
mov dh , 0
int 10h
;--------------
mov ah , 9     ; function 
mov al , '-'
mov bh , 0
mov bl , 0bh
mov cx , 1
int 10h
inc dl
mov cx , temp
inc si
loop l_51
;--------------------------------------------------
;--------------------------------------------------
mov cx , 18
mov si , 0
mov dl , 0
l_52:
mov temp , cx
mov ah , 2
mov bh , 0
mov dh , 4
int 10h
;--------------
mov ah , 9     ; function 
mov al , '-'
mov bh , 0
mov bl , 0bh
mov cx , 1
int 10h
inc dl
mov cx , temp
inc si
loop l_52
;--------------------------------------------------
;--------------------------------------------------
mov cx , 12
mov si , 0
mov dl , 0
l_53:
mov temp , cx
mov ah , 2
mov bh , 0
mov dh , 7
int 10h
;--------------
mov ah , 9     ; function 
mov al , '-'
mov bh , 0
mov bl , 0bh
mov cx , 1
int 10h
inc dl
mov cx , temp
inc si
loop l_53
;--------------------------------------------------
;--------------------------------------------------

mov cx , 12
mov si , 0
mov dl , 0
l_54:
mov temp , cx
mov ah , 2
mov bh , 0
mov dh , 11
int 10h
;--------------
mov ah , 9     ; function 
mov al , '-'
mov bh , 0
mov bl , 0bh
mov cx , 1
int 10h
inc dl
mov cx , temp
inc si
loop l_54
;--------------------------------------------------		

mov cx , 3
mov si , 0
mov dh , 1
l_5123:
mov temp , cx
mov ah , 2
mov bh , 0
mov dl , 0
int 10h
;--------------
mov ah , 9     ; function 
mov al , '#'
mov bh , 0
mov bl , 0bh
mov cx , 1
int 10h
inc dh
mov cx , temp
inc si
loop l_5123
;--------------------------------------------------
;--------------------------------------------------		

mov cx , 3
mov si , 0
mov dh , 8
l_51234:
mov temp , cx
mov ah , 2
mov bh , 0
mov dl , 0
int 10h
;--------------
mov ah , 9     ; function 
mov al , '#'
mov bh , 0
mov bl , 0bh
mov cx , 1
int 10h
inc dh
mov cx , temp
inc si
loop l_51234
;--------------------------------------------------

mov cx , 3
mov si , 0
mov dh , 1
l_51231:
mov temp , cx
mov ah , 2
mov bh , 0
mov dl , 17
int 10h
;--------------
mov ah , 9     ; function 
mov al , '#'
mov bh , 0
mov bl , 0bh
mov cx , 1
int 10h
inc dh
mov cx , temp
inc si
loop l_51231
;--------------------------------------------------
;--------------------------------------------------		

mov cx , 3
mov si , 0
mov dh , 8
l_5123412:
mov temp , cx
mov ah , 2
mov bh , 0
mov dl , 11
int 10h
;--------------
mov ah , 9     ; function 
mov al , '#'
mov bh , 0
mov bl , 0bh
mov cx , 1
int 10h
inc dh
mov cx , temp
inc si
loop l_5123412
;--------------------------------------------------
	mov cx , 18
mov si , 0
mov dl , 0
sai:
mov temp , cx
mov ah , 2
mov bh , 0
mov dh , 13
int 10h
;--------------
mov ah , 9     ; function 
mov al , '-'
mov bh , 0
mov bl , 0bh
mov cx , 1
int 10h
inc dl
mov cx , temp
inc si
loop sai
;--------------------------------------------------
;--------------------------------------------------
mov cx , 18
mov si , 0
mov dl , 0
alka:
mov temp , cx
mov ah , 2
mov bh , 0
mov dh , 17
int 10h
;--------------
mov ah , 9     
mov al , '-'
mov bh , 0
mov bl , 0bh
mov cx , 1
int 10h
inc dl
mov cx , temp
inc si
loop alka
;--------------------------------------------------
;--------------------------------------------------



;--------------------------------------------------		

mov cx , 3
mov si , 0
mov dh , 14
alja:
mov temp , cx
mov ah , 2
mov bh , 0
mov dl , 0
int 10h
;--------------
mov ah , 9     ; function 
mov al , '#'
mov bh , 0
mov bl , 0bh
mov cx , 1
int 10h
inc dh
mov cx , temp
inc si
loop alja
;--------------------------------------------------
;--------------------------------------------------		

mov cx , 3
mov si , 0
mov dh , 14
hshus:
mov temp , cx
mov ah , 2
mov bh , 0
mov dl , 18
int 10h
;--------------
mov ah , 9     ; function 
mov al , '#'
mov bh , 0
mov bl , 0bh
mov cx , 1
int 10h
inc dh
mov cx , temp
inc si
loop hshus
;--------------------------------------------------



	mov dh,2
	mov dl,6
	call gotoxy
	mwrite" VOTE "
	mov dh,9
	mov dl,3
	call gotoxy
	mwrite" Result "
	mov dh,15
	mov dl,5
	call gotoxy
	mwrite" Quit "
ret
main1 ENDP
main2 PROC
mov ah,0
mov al,10h
int 10h
;==================================
call get_value
ret
main2 ENDP
;================================
get_value proc
call main1
Call HideCursor11
mov dx, OFFSET Greeting
;Call WriteString
Call ShowMousePointer
mov dh,24
mov dl,0
Call Gotoxy
;mov dx,OFFSET StatusLine
;Call WriteString
;=================================
L1: 
Call ShowMousePosition
Call LeftButtonClick    
mov ah,11h
int 16h
jz l2
mov ah,10h
int 16h
cmp al,ESCKEY
je Quit
L2: jmp L1
Quit: Call HideMousePointer
Call ShowCursor11
Call ClrScr
Call waitmsg
;================================
ret
get_value endp

;================================
GetMousePosition PROC
push ax
mov ax,3
int 33h
pop ax
ret
GetMousePosition ENDP
;===============================
HideCursor11 PROC
mov ah,3
int 10h
or ch,30h
mov ah,1
int 10h
ret
HideCursor11 ENDP
;===============================
ShowCursor11 PROC
mov ah,3
int 10 
mov ah,1
mov cx,0607h
int 10h
ret
ShowCursor11 ENDP
;===============================
HideMousePointer PROC
push ax
mov ax,2
int 33h
pop ax
ret
HideMousePointer ENDP
;==============================
ShowMousePointer PROC
push ax
mov ax,1
int 33h
pop ax
ret
ShowMousePointer ENDP
;===============================
LeftButtonClick PROC
pusha
mov ah,0
mov al,5
mov bx,0
int 33h
;-----------------------------------
and ax,1
.if ax==1

.IF ( cx>0 && cX<100 ) && (dx>200 && dx<255)
mov QP,2
jmp REPEAT_A
.endif
.endif
cmp cx,Xclick
jne lbc1
cmp bx,Yclick
je lbc_exit
LBC1:
mov Xclick,cx
mov Yclick,dx
mov dh,24
mov dl,15
call gotoxy
push dx
mov dx, OFFSET Blanks

pop dx
Call Gotoxy
mov ax,Xcoordinate

mov dl,20
call gotoxy
mov ax,ycoordinate

lbc_exit:
popa
ret
leftButtonClick ENDP
;=================================
SETMousePosition PRoc
mov ax,4
int 33h
ret

SetMousePosition ENDP
;=================================
ShowMousePosition PROC

pusha
Call GetMousePosition
cmp cx,xcoordinate
jne smp1
cmp dx,ycoordinate
je smp_exit
smp1: mov xcoordinate,cx
mov ycoordinate,dx
mov dh,24
mov dl,60
Call gotoxy
push dx
mov dx, OFFSET Blanks
;Call WriteString
pop dx
Call gotoxy
mov ax, xcoordinate
;Call WriteDec
mov dl,65
call gotoxy
mov ax,ycoordinate
;Call WriteDec
smp_exit:
popa
ret
ShowMousePosition ENDP
;=====================================;
;Loading functions


gotoxy1 PROC
	pusha
	mov ah,2
	mov bh,0
	int 10h
	popa
ret
gotoxy1 ENDP

Wall PROC
	pusha
	mov ah,2
	mov bh,0
	int 10h
	mov ah,9
	mov bh,0
	mov bl,0dh
	mov cx,1
	int 10h
	popa
ret
Wall ENDP
;=======================getValue=================
get_value1 proc
	Call ShowMousePointer1
;-------------------------------------------------------------------------------------
L1:
	.IF set==0	
		mov ah,2 
		mov bh,0
		mov dh,22
		mov dl,22
		int 10h
		mov dx , offset Name1   						;Name of player1
		call writestring
		mov dx, offset p1
		call writestring
;-------------------------------------------------------------------------------------
	.ELSEIF set == 1
		mov ah,2 
		mov bh,0
		mov dh,22
		mov dl,22
		int 10h
		mov bl ,1
		mov dx , offset Name2                            ;Same Copy 0k
		call writestring
		mov dx, offset p1
		call writestring 
	.ENDIF
	Call LeftButtonClick1 
	.IF bili==0 || bili==1 || bili == 2
		JMP last_p
	.endif
L2:
		jmp L1
;--------------------------------------------------------------------------------------
ret
get_value1 endp
;--------------------------------------------------------------------------------------
GetMousePosition1 PROC
		push ax
		mov ax,3
		int 33h
		pop ax
	ret
GetMousePosition1 ENDP
;--------------------------------------------------------------------------------------
ShowCursor111 PROC
		mov ah,3
		int 10 
		mov ah,1
		mov cx,0607h
		int 10h
	ret
ShowCursor111 ENDP
;---------------------------------------------------------------------------------------
HideMousePointer1 PROC
		push ax
		mov ax,2
		int 33h
		pop ax
	ret
HideMousePointer1 ENDP
;---------------------------------------------------------------------------------------
ShowMousePointer1 PROC
		push ax
		mov ax,1
		int 33h
		pop ax
	ret
ShowMousePointer1 ENDP
;----------------------------------------------------------------------------------------
LeftButtonClick1 PROC
		push ax
		push bx
		mov ax , 5
		mov bx,0
		int 33h
		and ax,1
		mov button,ax
.IF button==1
.IF ((cx>=150 && cx<=215) && (dx>=70 && dx<=140))
mov b,1

.ENDIF
.IF ((cx>=150 && cx<=215) && (dx>=141 && dx<=210))
mov b,4


.ENDIF
.IF ((cx>=150 && cx<=215) && (dx>=211 && dx<=270))
mov b,7

.ENDIF
.IF ((cx>=215 && cx<=280) && (dx>=70 && dx<=140))
mov b,2

.ENDIF
.IF ((cx>=215 && cx<=280) && (dx>=141 && dx<=210))
mov b,5

.ENDIF
.IF ((cx>=215 && cx<=280) && (dx>=211 && dx<=270))
mov b,8

.ENDIF
.IF ((cx>=280 && cx<=350) && (dx>=70 && dx<=140))
mov b,3

.ENDIF
.IF ((cx>=280 && cx<=350) && (dx>=141 && dx<=210))
mov b,6

.ENDIF
.IF ((cx>=280 && cx<=350) && (dx>=211 && dx<=270))
mov b,9

.ENDIF


pop bx
pop ax
ret
leftButtonClick1 ENDP
;=================================
SETMousePosition1 PRoc
mov ax,4
int 33h
ret
SetMousePosition1 ENDP
;=================================
ShowMousePosition1 PROC
pusha
Call GetMousePosition1
popa
ret
ShowMousePosition1 ENDP

