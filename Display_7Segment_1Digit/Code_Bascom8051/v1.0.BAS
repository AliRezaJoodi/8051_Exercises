'GitHub Account: GitHub.com/AliRezaJoodi

$regfile = "89C51cc.dat"
$crystal = 8000000

Dim Value As Byte

Value = 2

Do
   For Value = 0 To 17
      Gosub Display_value
      Waitms 500
   Next Value
Loop

End

'**********************************************
Display_value:
   Dim Buffer As Byte

   Buffer = Lookup(value , Data_7segment)
   P1 = Not Buffer
   P3 = Buffer
Return

'___________________________
'0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
'A , B , C , D , E , F,
' - , Dp
Data_7segment:
Data &B00111111 , &B00000110 , &B01011011 , &B01001111 , &B01100110 , &B01101101 , &B01111101 , &B00000111 , &B01111111 , &B01101111
Data &B01110111 , &B01111100 , &B00111001 , &B01011110 , &B01111001 , &B01110001
Data &B01000000 , &B10000000

