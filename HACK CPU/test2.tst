load Computer.hdl,
output-file test2.out,
output-list time%S1.4.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1;

ROM32K load test2.hack,
set RAM64[16] 20,
set RAM64[17] 25,  
output;

repeat 15 {
    tick, tock, output;
}

// Reset the PC
set reset 1,
set RAM64[16] 32,
set RAM64[17] 15, 
set RAM64[18] 0,
tick, tock, output;

set reset 0,

repeat 12 {
    tick, tock, output;
}