'GitHub Account: GitHub.com/AliRezaJoodi

$regfile = "reg51.dat"
$crystal = 8000000

Active Alias 1
S0 Alias P1.0 : S0 = Not Active
S1 Alias P1.1 : S1 = Not Active
S2 Alias P1.2 : S2 = Not Active
S3 Alias P1.3 : S3 = Not Active
S4 Alias P1.4 : S4 = Not Active
S5 Alias P1.5 : S5 = Not Active
S6 Alias P1.6 : S6 = Not Active
S7 Alias P1.7 : S7 = Not Active
'P1 = &B11111111

Dim Value As Long : Value = 87654321
Dim I As Byte : I = 0

Declare Sub Show(value As Long)

Do
   Call Show(value)
   Waitms 1
Loop

End

'*******************************************    Show
Sub Show(value As Long)
   Dim Value_temporary As Long
   Dim Digit As Long

   S0 = Not Active
   S1 = Not Active
   S2 = Not Active
   S3 = Not Active
   S4 = Not Active
   S5 = Not Active
   S6 = Not Active
   S7 = Not Active

   Select Case I
      Case 0:
         Value_temporary = Value / 1
         Digit = Value_temporary Mod 10
         P3 = Digit
         S0 = Active
         Incr I : If Value_temporary < 10 Then I = 0
      Case 1:
         Value_temporary = Value / 10
         Digit = Value_temporary Mod 10
         P3 = Digit
         S1 = Active
         Incr I : If Value_temporary < 10 Then I = 0
      Case 2:
         Value_temporary = Value / 100
         Digit = Value_temporary Mod 10
         P3 = Digit
         S2 = Active
         Incr I : If Value_temporary < 10 Then I = 0
      Case 3:
         Value_temporary = Value / 1000
         Digit = Value_temporary Mod 10
         P3 = Digit
         S3 = Active
         Incr I : If Value_temporary < 10 Then I = 0
      Case 4:
         Value_temporary = Value / 10000
         Digit = Value_temporary Mod 10
         P3 = Digit
         S4 = Active
         Incr I : If Value_temporary < 10 Then I = 0
      Case 5:
         Value_temporary = Value / 100000
         Digit = Value_temporary Mod 10
         P3 = Digit
         S5 = Active
         Incr I : If Value_temporary < 10 Then I = 0
      Case 6:
         Value_temporary = Value / 1000000
         Digit = Value_temporary Mod 10
         P3 = Digit
         S6 = Active
         Incr I : If Value_temporary < 10 Then I = 0
      Case 7:
         Value_temporary = Value / 10000000
         Digit = Value_temporary Mod 10
         P3 = Digit
         S7 = Active
         Incr I : If Value_temporary < 10 Then I = 0
         I = 0
   End Select
End Sub