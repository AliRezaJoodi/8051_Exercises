 // GitHub Account:     GitHub.com/AliRezaJoodi
 
// LCD module connections
sbit LCD_RS at P1_0_bit;
sbit LCD_EN at P1_2_bit;

sbit LCD_D4 at P1_4_bit;
sbit LCD_D5 at P1_5_bit;
sbit LCD_D6 at P1_6_bit;
sbit LCD_D7 at P1_7_bit;
// End LCD module connections

char i;                              // Loop variable

void main(){
     Lcd_Init();                        // Initialize LCD
     Lcd_Cmd(_LCD_CLEAR);               // Clear display
     Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
     
     LCD_Out(1,1,"Loading ...");
     LCD_Out(2,1,"LCD Config");
     Delay_ms(2000);
     
     for(i=0; i<4; i++) {               // Move text to the right 4 times
              Lcd_Cmd(_LCD_SHIFT_RIGHT);
              Delay_ms(500);
     }

     while(1){
     }
}