'GitHub Account: GitHub.com/AliRezaJoodi

$regfile = "reg51.dat"
$crystal = 11059200
$baud = 9600

Config Lcdpin = Pin , Db4 = P1.4 , Db5 = P1.5 , Db6 = P1.6 , Db7 = P1.7 , E = P1.2 , Rs = P1.0
Config Lcd = 16 * 2
'Cursor On
Cursor Blink
Cls

Dim Buffer As Byte
Dim D As Byte
Dim Txt As String * 10 : Txt = "test this"

Open "COM3.0:9600" For Input As #1
Open "COM3.1:9600" For Output As #2

Do
   Get #2 , Buffer
   If 32 <= Buffer And Buffer <= 126 Then
      Lcd Chr(buffer)
   End If
   If Buffer = 13 Then
      Lowerline
   End If
   'Lcd Buffer
   Put #1 , Buffer
Loop

Close #1
Close #2

End