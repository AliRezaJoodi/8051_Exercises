 // GitHub Account:     GitHub.com/AliRezaJoodi

//Declarations------------------------------------------------------------------
//const code char truck_bmp[1024];
//--------------------------------------------------------------end-declarations
const code char bank_bmp[1024];
const code char P0_bmp[1024];

// Glcd module connections
char GLCD_DataPort at P1;

sbit GLCD_CS1 at P3_3_bit;
sbit GLCD_CS2 at P3_2_bit;
sbit GLCD_RS  at P3_5_bit;
sbit GLCD_RW  at P3_7_bit;
sbit GLCD_EN  at P3_6_bit;
sbit GLCD_RST at P3_4_bit;
// End Glcd module connections

void delay2S(){                             // 2 seconds delay function
  Delay_ms(2000);
}

void main() {                       
  unsigned short ii;
  char *someText;

  #define COMPLETE_EXAMPLE                  // comment this line to make simpler/smaller example
  Glcd_Init();                              // Initialize GLCD
  Glcd_Fill(0x00);                          // Clear GLCD

  while(1) {
    //#ifdef COMPLETE_EXAMPLE
      //Glcd_Image(truck_bmp);                // Draw image
      //delay2S(); delay2S();
    //#endif
    //Glcd_Image(bank_bmp);                // Draw image
    //delay2S(); delay2S();
    //Glcd_Fill(0x00);                        // Clear GLCD
    
    Glcd_Image(P0_bmp);                // Draw image
    delay2S(); delay2S();

    //Glcd_Box(62,40,124,56,1);               // Draw box
    //Glcd_Rectangle(5,5,84,35,2);            // Draw rectangle
    //Glcd_Line(0, 0, 127, 63, 1);            // Draw line
    //delay2S();

    //for(ii = 5; ii < 60; ii+=5 ) {          // Draw horizontal and vertical lines
      //Delay_ms(250);
      //Glcd_V_Line(2, 54, ii, 1);
      //Glcd_H_Line(2, 120, ii, 1);
    //}

    //delay2S();

    //Glcd_Fill(0x00);                        // Clear GLCD
    //#ifdef COMPLETE_EXAMPLE
      //Glcd_Set_Font(Character8x7, 8, 7, 32);// Choose font, see __Lib_GLCDFonts.c in Uses folder

      //Glcd_Write_Text("mikroE", 1, 7, 2);   // Write string

      //for (ii = 1; ii <= 10; ii++)          // Draw circles
        //Glcd_Circle(63,32, 3*ii, 1);
      //delay2S();

      //Glcd_Box(12,20, 70,57, 2);            // Draw box
      //delay2S();

      //Glcd_Fill(0xFF);                      // Fill GLCD

      //Glcd_Set_Font(Character8x7, 8, 7, 32);// Change font
      //someText = "8x7 Font";
      //Glcd_Write_Text(someText, 5, 0, 2);   // Write string
      //delay2S();

      //Glcd_Set_Font(System3x5, 3, 5, 32);   // Change font
      //someText = "3X5 CAPITALS ONLY";
      //Glcd_Write_Text(someText, 60, 2, 1);  // Write string
      //delay2S();

      //Glcd_Set_Font(font5x7 , 5, 7, 32);     // Change font
      //someText = "5x7 Font";
      //Glcd_Write_Text(someText, 5, 4, 1);   // Write string
      //delay2S();

      //Glcd_Set_Font(FontSystem5x7_v2, 5, 7, 32); // Change font
      //someText = "5x7 Font (v2)";
      //Glcd_Write_Text(someText, 5, 6, 1);   // Write string
      //delay2S();
    //#endif
  }
}
