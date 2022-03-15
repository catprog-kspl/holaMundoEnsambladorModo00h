.model small
.stack 100h
.data
mensaje1 db "Este programa utiliza el modo de video 00h ",'$'
.code
    iniciar:
    mov ax,@data
    mov ds, ax
    
    mov ah,0
    mov al,00h
    int 10h


    mov ah,02h              ;servicio asignaci?n del cursor
    mov bh,0                ;ubicar en la pantalla 0 (primera pantalla )
    mov dh,2                ;coordenada renglon
    mov dl,2                ;coordenada columna
    int 10h                 ;interrupci?n del bios      
  
    mov ah,09h
    lea dx,mensaje1
    int 21h  
    
    
    mov ah,02h              ;servicio asignaci?n del cursor
    mov bh,0                ;ubicar en la pantalla 0 (primera pantalla )
    mov dh,4                ;coordenada renglon
    mov dl,2                ;coordenada columna
    int 10h                 ;interrupci?n del bios  
  
  
  
  
 mov ah,4ch
 int 21h 
  
  END iniciar  