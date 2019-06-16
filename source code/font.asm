drawFontSize macro sizeX, sizeY
	pusha
		mov xPos, si
		mov yPos, di
		mov xSize, sizeX
		mov ySize, sizeY
		mov al, FontColor
		mov bh, 0
		
		mov xEnd, si
		add xEnd, sizeX
		mov yEnd, di
		add yEnd, sizeY
		                 
		call draw
	popa
endm
       
PrintAlphaNum macro x, y, AlphaNum  
	pusha
		mov si, x
		mov di, y
		call GetAlphaNum[AlphaNum]  
	popa
endm

.data
	; AlphaNumeric Equivalence
	 	_0 equ 0
	 	_1 equ 2
	 	_2 equ 4	
	    _3 equ 6
	    _4 equ 8
	    _5 equ 10
	    _6 equ 12
	    _7 equ 14
	    _8 equ 16
	    _9 equ 18
	    _A equ 20
	    _B equ 22
	    _C equ 24
	    _D equ 26
	    _E equ 28
	    _F equ 30
	    _G equ 32
	    _H equ 34
	    _I equ 36
	    _J equ 38
	    _K equ 40
	    _L equ 42
	    _M equ 44
	    _N equ 46
	    _O equ 48
	    _P equ 50
	    _Q equ 52
	    _R equ 54
	    _S equ 56
	    _T equ 58
	    _U equ 60
	    _V equ 62
	    _W equ 64
	    _X equ 66
	    _Y equ 68
	    _Z equ 70

.code     
   
putFontsToArray proc near
		lea di, GetAlphaNum
	   	xor bx, bx
	   	 
	   	lea si, draw0	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, draw1 
		mov [di+bx], si
		add bx, 2  
		 
		lea si, draw2	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, draw3 
		mov [di+bx], si
		add bx, 2
	   	          
		lea si, draw4	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, draw5 
		mov [di+bx], si
		add bx, 2  
		 
		lea si, draw6	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, draw7 
		mov [di+bx], si
		add bx, 2
		
		lea si, draw8	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, draw9 
		mov [di+bx], si
		add bx, 2  
		 
		lea si, drawA	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, drawB 
		mov [di+bx], si
		add bx, 2
	   	          
		lea si, drawC	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, drawD 
		mov [di+bx], si
		add bx, 2  
		 
		lea si, drawE	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, drawF 
		mov [di+bx], si
		add bx, 2
		
		lea si, drawG	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, drawH 
		mov [di+bx], si
		add bx, 2  
		 
		lea si, drawI	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, drawJ 
		mov [di+bx], si
		add bx, 2
	   	          
		lea si, drawK	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, drawL 
		mov [di+bx], si
		add bx, 2  
		 
		lea si, drawM	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, drawN 
		mov [di+bx], si
		add bx, 2
		
		lea si, drawO	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, drawP 
		mov [di+bx], si
		add bx, 2  
		 
		lea si, drawQ	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, drawR 
		mov [di+bx], si
		add bx, 2
	   	          
		lea si, drawS	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, drawT 
		mov [di+bx], si
		add bx, 2  
		 
		lea si, drawU	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, drawV 
		mov [di+bx], si
		add bx, 2	
		
		lea si, drawW	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, drawX 
		mov [di+bx], si
		add bx, 2  
		 
		lea si, drawY	
	   	mov [di+bx], si
	   	add bx, 2    
	   	
		lea si, drawZ
		mov [di+bx], si
		add bx, 2   	          
	   
	ret
putFontsToArray endp

; FONTS
drawA proc near
		push di 
		add di, 5
		drawFontSize 8, 45
		add si, 22
		drawFontSize 8, 45
	    pop di
	    sub si, 17
	    drawFontSize 20, 8
	    add di, 21
	    drawFontSize 20, 8
	            
	ret
drawA endp

drawB proc near
		push si
		drawFontSize 8, 50 
		add si, 22 
		add di, 5
		drawFontSize 8, 40
		pop si
		add si, 8
		sub di, 5
		drawFontSize 14, 8
		add di, 21
		drawFontSize 14, 8
		add di, 21
		drawFontSize 14, 8
	    
	ret
drawB endp

drawC proc near 
		drawFontSize 30, 8
		drawFontSize 8, 50
		add di, 42
		drawFontSize 30, 8
	      
	ret
drawC endp
	
drawD proc near
		push si
		drawFontSize 8, 50 
		add si, 22 
		add di, 5
		drawFontSize 8, 40
		pop si
		add si, 8
		sub di, 5
		drawFontSize 14, 8
		add di, 42
		drawFontSize 14, 8
	    
	ret
drawD endp

drawE proc near
		push di 
	    drawFontSize 30, 8 
	    add di, 21
	    drawFontSize 30, 8 
	    add di, 21
	    drawFontSize 30, 8 
	   	pop di
	    
	    add di, 8
	    drawFontSize 8, 34 
	    
	ret
drawE endp   

drawF proc near
		push di 
	    drawFontSize 30, 8 
	    add di, 21
	    drawFontSize 30, 8 
	   	pop di
	    
	    add di, 8
	    drawFontSize 8, 42 
	    
	ret
drawF endp

drawG proc near 
		push di 
	    drawFontSize 30, 8 
	    add di, 21
	    add si, 15
	    drawFontSize 15, 8 
	    sub si, 15
	    add di, 21
	    drawFontSize 30, 8 
	   	pop di
	    
	    add di, 8
	    drawFontSize 8, 34 
	                
	    add si, 22
	    add di, 20
	    drawFontSize 8, 14
	     
	ret
drawG endp

drawH proc near    
	 	drawFontSize 8, 50
	 	add si, 22
	 	drawFontSize 8, 50
	 	sub si, 14
	 	add di, 21
	 	drawFontSize 14, 8 
	
	ret
drawH endp

drawI proc near
	 	drawFontSize 30, 8   
	 	add di, 42
	 	drawFontSize 30, 8
	 	sub di, 34
	 	add si, 11
	 	drawFontSize 8, 34
	
	ret
drawI endp
     
drawJ proc near 
	 	add si, 22
	 	drawFontSize 8, 50
	 	sub si, 22
	 	add di, 25
	 	drawFontSize 8, 22
	 	add di, 17
	 	drawFontSize 22, 8 
	
	ret
drawJ endp

drawK proc near
		drawFontSize 8, 50
		add si, 23
		drawFontSize 7, 8
		sub si, 7
		add di, 8
		drawFontSize 7, 8
		sub si, 8
		add di, 8
		drawFontSize 8, 8
	  	add si, 8
	  	add di, 8
	  	drawFontSize 7, 8
	  	add si, 7
	  	add di, 8
	  	drawFontSize 7, 16
	  	     
	ret
drawK endp

drawL proc near
		drawFontSize 8, 50
		add di, 42
		drawFontSize 30, 8
	
	ret
drawL endp 

drawM proc near
		drawFontSize 8, 50
		add si, 8
		add di, 8
		drawFontSize 8, 8 
		add si, 8
		add di, 8
		drawFontSize 8, 8
		add si, 8
		sub di, 8
		drawFontSize 8, 8
		add si, 8
		sub di, 8
		drawFontSize 8, 50
	      
	ret
drawM endp

drawN proc near 
		drawFontSize 8, 50
		add si, 8
		add di, 8
		drawFontSize 8, 8 
		add si, 8
		add di, 8
		drawFontSize 8, 8
		add si, 8
		add di, 8
		drawFontSize 8, 16
		sub di, 24
		add si, 8
		drawFontSize 8, 50
	
	ret
drawN endp

drawO proc near
		drawFontSize 8, 50
		drawFontSize 22, 8
		add di, 42
		drawFontSize 22, 8
		sub di, 42
		add si, 22
		drawFontSize 8, 50
	
	ret
drawO endp 

drawP proc near
		drawFontSize 8, 50
		drawFontSize 30, 8
		add di, 20
		drawFontSize 30, 8
		sub di, 12
		add si, 22
		drawFontSize 8, 12 
	        
	ret
drawP endp

drawQ proc near
		drawFontSize 8, 50
		drawFontSize 30, 8
		add si, 30
		drawFontSize 8, 34
		sub si, 22
		add di, 42
		drawFontSize 14, 8
		sub di, 16
		add si, 6
		drawFontSize 8, 8
		add si, 8
		add di, 8
		drawFontSize 8, 8
		add si, 8
		add di, 8
		drawFontSize 8, 8
	
	ret
drawQ endp

drawR proc near 
		drawFontSize 8, 50
		drawFontSize 25, 8
		add di, 21
		drawFontSize 25, 8
	    sub di, 13
	    add si, 25
	    drawFontSize 8, 13
	    add di, 21
	    drawFontSize 8, 21
		
	ret
drawR endp

drawS proc near 
		call draw5
	ret
drawS endp

drawT proc near 
		drawFontSize 34, 8
		add si, 13
		add di, 8
		drawFontSize 8, 42
	
	ret
drawT endp

drawU proc near
		drawFontSize 8, 50
		add si, 22
		drawFontSize 8, 50
		sub si, 14
		add di, 42
		drawFontSize 14, 8
	
	ret
drawU endp

drawV proc near
		drawFontSize 8, 26
		add si, 32
		drawFontSize 8, 26
		add di, 26
		sub si, 24
		drawFontSize 8, 15
		add si, 16
		drawFontSize 8, 15
		add di, 15
		sub si, 8
		drawFontSize 8, 8
		
	ret
drawV endp

drawW proc near
		drawFontSize 8, 26
		add si, 48
		drawFontSize 8, 26
		sub si, 40
		add di, 26
		drawFontSize 8, 15
		add si, 16
		drawFontSize 8, 15
		add si, 16
		drawFontSize 8, 15
		sub si, 24
		add di, 15
		drawFontSize 8, 8
		add si, 16
		drawFontSize 8, 8
		 
	ret
drawW endp

drawX proc near
		drawFontSize 8, 20
		add si, 22
		drawFontSize 8, 20
		sub si, 14
		add di, 20
		drawFontSize 14, 8
		sub si, 8
		add di, 8
		drawFontSize 8, 22
		add si, 22
		drawFontSize 8, 22
		
	ret
drawX endp

drawY proc near 
		drawFontSize 8, 20
		add si, 30
		drawFontSize 8, 20
		sub si, 22 
		add di, 20
		drawFontSize 8,8
		add si, 14
		drawFontSize 8,8
		sub si, 6
		add di, 8
		drawFontSize 8, 22
	    
	ret
drawY endp

drawZ proc near   
	 	drawFontSize 32, 8
	 	add si, 24
	 	add di, 8
	 	drawFontSize 8, 8
	 	sub si, 8
	 	add di, 8
	 	drawFontSize 8, 8
	 	sub si, 8
	 	add di, 8
	 	drawFontSize 8, 8
		sub si, 8
		add di, 8
		drawFontSize 8, 8
		add di, 8
		drawFontSize 32, 8
	
	ret
drawZ endp
   
draw0 proc near
		call drawO
	ret
draw0 endp
         
draw1 proc near
		add si, 11
		drawFontSize 8, 50 
		add si, 11
	ret
draw1 endp
 
draw2 proc near
		push di 
	    drawFontSize 30, 8 
	    add di, 21
	    drawFontSize 30, 8 
	    add di, 21
	    drawFontSize 30, 8 
	   	pop di
	   	
	   	push di
	   	push si
	    add si, 22
	    add di, 8
	    drawFontSize 8, 14 
	    pop si 
	    pop di
	    
	    add di, 28
	    drawFontSize 8, 14     
	    
	ret
draw2 endp

draw3 proc near
		push di 
	    drawFontSize 30, 8 
	    add di, 21
	    drawFontSize 22, 8 
	    add di, 21
	    drawFontSize 30, 8 
	   	pop di
	   	
	    add si, 22   
	    add di, 8
	    drawFontSize 8, 34 
	
	ret
draw3 endp

draw4 proc near
		push di
	 	drawFontSize 8, 21 
		add di, 21
		drawFontSize 22, 8 
	    pop di
	    add si, 22
	    drawFontSize 8, 50  
	   
	ret
draw4 endp

draw5 proc near
		push di 
	    drawFontSize 30, 8 
	    add di, 21
	    drawFontSize 30, 8 
	    add di, 21
	    drawFontSize 30, 8 
	   	pop di
	    
	    add di, 8
	    drawFontSize 8, 14 
	           
	    add si, 22
	    add di, 20
	    drawFontSize 8, 14     
	    
	ret
draw5 endp
              
draw6 proc near
		push di 
	    drawFontSize 30, 8 
	    add di, 21
	    drawFontSize 30, 8 
	    add di, 21
	    drawFontSize 30, 8 
	   	pop di
	    
	    add di, 8
	    drawFontSize 8, 34 
	                
	    add si, 22
	    add di, 20
	    drawFontSize 8, 14     
	    
	ret
draw6 endp 

draw7 proc near
		drawFontSize 30, 8
		add si, 22
		drawFontSize 8, 50
	ret       
draw7 endp

draw8 proc near
		push si
		drawFontSize 8, 50 
		add si, 22
		drawFontSize 8, 50
		pop si
		add si, 8
		drawFontSize 14, 8
		add di, 21
		drawFontSize 14, 8
		add di, 21
		drawFontSize 14, 8
	
	ret
draw8 endp

draw9 proc near
		push si
		drawFontSize 8, 29 
		add si, 22
		drawFontSize 8, 50
		pop si
		add si, 8
		drawFontSize 14, 8
		add di, 21
		drawFontSize 14, 8
	      
	ret
draw9 endp
   
