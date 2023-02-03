'GitHub Account: GitHub.com/AliRezaJoodi

$regfile = "reg51.dat"
$crystal = 8000000

Config Lcdpin = Pin , Rs = P1.0 , E = P1.2 , Db4 = P1.4 , Db5 = P1.5 , Db6 = P1.6 , Db7 = P1.7
Config Lcd = 16 * 2
Cursor Off
Cls

Const Gain_adc = 5000 / 256
Enable_adc Alias P0.0 : Enable_adc = 1

Dim W As Byte
Dim Input_mv As Single
Dim Temp As Single
Dim Txt As String * 16

Do
   Gosub Read_adc
   Gosub Convert
   Gosub Display_value
   Waitms 250
Loop

End

'***************************************
Read_adc:
   Enable_adc = 0 : Waitms 10 : Enable_adc = 1
   W = P2
   Input_mv = W * Gain_adc
Return

'**********************************************
Convert:
   Temp = Input_mv / 10
Return

'**********************************************
Display_value:
   Deflcdchar 0 , 7 , 5 , 7 , 32 , 32 , 32 , 32 , 32
   Locate 1 , 1 : Lcd "Temp: " : Txt = Fusing(temp , "#.#") : Lcd Txt ; Chr(0) ; "C  "
   Locate 2 , 1 : Lcd "LM35 Sensor"
Return