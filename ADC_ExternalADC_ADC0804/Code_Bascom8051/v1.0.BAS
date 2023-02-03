'GitHub Account: GitHub.com/AliRezaJoodi

$regfile = "reg51.dat"
$crystal = 8000000

Config Lcdpin = Pin , Rs = P1.0 , E = P1.2 , Db4 = P1.4 , Db5 = P1.5 , Db6 = P1.6 , Db7 = P1.7
Config Lcd = 16 * 2
Cursor Off
Cls

Const Gain_adc = 5 / 256
Enable_adc Alias P0.0 : Enable_adc = 1

Dim W As Byte
Dim Input_v As Single
Dim txt As String * 16

Do
   Gosub Read_adc
   Gosub Display_value
   Waitms 250
Loop

End

'***************************************
Read_adc:
   Enable_adc = 0 : Waitms 10 : Enable_adc = 1
   W = P2
   Input_v = W * Gain_adc
Return

'**********************************************
Display_Value:
   Locate 1 , 1 : Lcd "In:" : Txt = Fusing(input_v , "#.##") : Lcd Txt ; "V"
   Locate 2 , 1 : Lcd "ADC with ADC0804"
Return