'GitHub Account: GitHub.com/AliRezaJoodi

$regfile = "reg51.dat"
$crystal = 8000000

Config Lcdpin = Pin , Db4 = P1.4 , Db5 = P1.5 , Db6 = P1.6 , Db7 = P1.7 , E = P1.2 , Rs = P1.0
Config Lcd = 16 * 2
Cls

Locate 1 , 1 : Lcd "Loading ..."
Locate 2 , 1 : Lcd "LCD Config"

Do
Loop

End