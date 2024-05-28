CLASS zsvss_hola_mundo2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zsvss_hola_mundo2 IMPLEMENTATION.


   METHOD if_oo_adt_classrun~main.

    out->write( 'Hola Mundo en ABAP cloud' ).

  ENDMETHOD.

ENDCLASS.
