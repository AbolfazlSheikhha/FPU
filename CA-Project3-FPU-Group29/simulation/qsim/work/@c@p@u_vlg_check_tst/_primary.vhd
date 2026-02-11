library verilog;
use verilog.vl_types.all;
entity CPU_vlg_check_tst is
    port(
        branchsignal    : in     vl_logic;
        fpu_in1         : in     vl_logic_vector(7 downto 0);
        fpu_in2         : in     vl_logic_vector(7 downto 0);
        fpu_op          : in     vl_logic_vector(2 downto 0);
        opcode          : in     vl_logic_vector(3 downto 0);
        PC              : in     vl_logic_vector(7 downto 0);
        pin_name1       : in     vl_logic;
        R0              : in     vl_logic_vector(7 downto 0);
        R1              : in     vl_logic_vector(7 downto 0);
        R2              : in     vl_logic_vector(7 downto 0);
        R3              : in     vl_logic_vector(7 downto 0);
        R4              : in     vl_logic_vector(7 downto 0);
        R5              : in     vl_logic_vector(7 downto 0);
        R6              : in     vl_logic_vector(7 downto 0);
        R7              : in     vl_logic_vector(7 downto 0);
        reg_read_addr2  : in     vl_logic_vector(2 downto 0);
        reg_write_addr  : in     vl_logic_vector(2 downto 0);
        test_out        : in     vl_logic_vector(7 downto 0);
        test_ready      : in     vl_logic;
        zerosignal      : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end CPU_vlg_check_tst;
