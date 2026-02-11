library verilog;
use verilog.vl_types.all;
entity CPU is
    port(
        test_ready      : out    vl_logic;
        opcode          : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        pin_name1       : out    vl_logic;
        zerosignal      : out    vl_logic;
        branchsignal    : out    vl_logic;
        fpu_in1         : out    vl_logic_vector(7 downto 0);
        fpu_in2         : out    vl_logic_vector(7 downto 0);
        fpu_op          : out    vl_logic_vector(2 downto 0);
        PC              : out    vl_logic_vector(7 downto 0);
        R0              : out    vl_logic_vector(7 downto 0);
        R1              : out    vl_logic_vector(7 downto 0);
        R2              : out    vl_logic_vector(7 downto 0);
        R3              : out    vl_logic_vector(7 downto 0);
        R4              : out    vl_logic_vector(7 downto 0);
        R5              : out    vl_logic_vector(7 downto 0);
        R6              : out    vl_logic_vector(7 downto 0);
        R7              : out    vl_logic_vector(7 downto 0);
        reg_read_addr2  : out    vl_logic_vector(2 downto 0);
        reg_write_addr  : out    vl_logic_vector(2 downto 0);
        test_out        : out    vl_logic_vector(7 downto 0)
    );
end CPU;
