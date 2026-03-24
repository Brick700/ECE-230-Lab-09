module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory

    wire [7:0] data_A, data_B, data_C, data_D;
    wire store_A, store_B, store_C, store_D;
    wire [7:0] memory_A, memory_B, memory_C, memory_D;

    demux_8bit data_demux(
        .data(data),
        .sel(addr),
        .A(data_A),
        .B(data_B),
        .C(data_C),
        .D(data_D)
    );

    demux_1bit store_demux(
        .data(store),
        .sel(addr),
        .A(store_A),
        .B(store_B),
        .C(store_C),
        .D(store_D)
    );

    byte_memory byte0(.data(data_A), .store(store_A), .memory(memory_A));
    byte_memory byte1(.data(data_B), .store(store_B), .memory(memory_B));
    byte_memory byte2(.data(data_C), .store(store_C), .memory(memory_C));
    byte_memory byte3(.data(data_D), .store(store_D), .memory(memory_D));

    mux_8bit output_mux(
        .A(memory_A),
        .B(memory_B),
        .C(memory_C),
        .D(memory_D),
        .Select(addr),
        .Out(memory)
    );

endmodule