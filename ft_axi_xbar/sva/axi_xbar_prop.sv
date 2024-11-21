// This property file was autogenerated by AutoCC on 2024-11-18
// to check the behavior of the original RTL module, whose interface is described below: 

/// axi_xbar: Fully-connected AXI4+ATOP crossbar with an arbitrary number of slave and master ports.
/// See `doc/axi_xbar.md` for the documentation, including the definition of parameters and ports.
module axi_xbar_prop
import cf_math_pkg::idx_width;
#(
		parameter ASSERT_INPUTS = 0,
		parameter axi_pkg::xbar_cfg_t Cfg                                   = '0,
		parameter bit  ATOPs                                                = 1'b1,
		parameter bit [Cfg.NoSlvPorts-1:0][Cfg.NoMstPorts-1:0] Connectivity = '1,
		parameter type slv_aw_chan_t                                        = logic,
		parameter type mst_aw_chan_t                                        = logic,
		parameter type w_chan_t                                             = logic,
		parameter type slv_b_chan_t                                         = logic,
		parameter type mst_b_chan_t                                         = logic,
		parameter type slv_ar_chan_t                                        = logic,
		parameter type mst_ar_chan_t                                        = logic,
		parameter type slv_r_chan_t                                         = logic,
		parameter type mst_r_chan_t                                         = logic,
		parameter type slv_req_t                                            = logic,
		parameter type slv_resp_t                                           = logic,
		parameter type mst_req_t                                            = logic,
		parameter type mst_resp_t                                           = logic,
		parameter type rule_t                                               = axi_pkg::xbar_rule_64_t
) (
		/// Clock, positive edge triggered.
		input  logic                                                          clk_i,
		/// Asynchronous reset, active low.  
		input  logic                                                          rst_ni,
		/// Testmode enable, active high.
		input  logic                                                          test_i,
		/// AXI4+ATOP requests to the slave ports.  
		input  slv_req_t  [Cfg.NoSlvPorts-1:0]                                slv_ports_req_i_2,
		input  slv_req_t  [Cfg.NoSlvPorts-1:0]                                slv_ports_req_i,
		/// AXI4+ATOP responses of the slave ports.  
		input  slv_resp_t [Cfg.NoSlvPorts-1:0]                                slv_ports_resp_o_2,
		input  slv_resp_t [Cfg.NoSlvPorts-1:0]                                slv_ports_resp_o, //output
		/// AXI4+ATOP requests of the master ports.  
		input  mst_req_t  [Cfg.NoMstPorts-1:0]                                mst_ports_req_o_2,
		input  mst_req_t  [Cfg.NoMstPorts-1:0]                                mst_ports_req_o, //output
		/// AXI4+ATOP responses to the master ports.  
		input  mst_resp_t [Cfg.NoMstPorts-1:0]                                mst_ports_resp_i_2,
		input  mst_resp_t [Cfg.NoMstPorts-1:0]                                mst_ports_resp_i,
		/// Address map array input for the crossbar. This map is global for the whole module.
		/// It is used for routing the transactions to the respective master ports.
		/// Each master port can have multiple different rules.
		input  rule_t     [Cfg.NoAddrRules-1:0]                               addr_map_i,
		/// Enable default master port.
		input  logic      [Cfg.NoSlvPorts-1:0]                                en_default_mst_port_i,
		`ifdef VCS
		/// Enables a default master port for each slave port. When this is enabled unmapped
		/// transactions get issued at the master port given by `default_mst_port_i`.
		/// When not used, tie to `'0`.  
		input  logic      [Cfg.NoSlvPorts-1:0][MstPortsIdxWidth-1:0]          default_mst_port_i
		`else
		/// Enables a default master port for each slave port. When this is enabled unmapped
		/// transactions get issued at the master port given by `default_mst_port_i`.
		/// When not used, tie to `'0`.  
		input  logic      [Cfg.NoSlvPorts-1:0][idx_width(Cfg.NoMstPorts)-1:0] default_mst_port_i
		`endif
	);

//==============================================================================
// Local Parameters
//==============================================================================

genvar j;
default clocking cb @(posedge clk_i);
endclocking
default disable iff (!rst_ni);

// Re-defined wires 
wire mst_port_r_req_0_val;
wire mst_port_r_req_0__2_val;
wire mst_port_r_req_0_rdy;
wire mst_port_r_req_0__2_rdy;
wire mst_port_r_req_0_transid;
wire mst_port_r_req_0__2_transid;
wire mst_port_r_resp_0_val;
wire mst_port_r_resp_0__2_val;
wire mst_port_r_resp_0_rdy;
wire mst_port_r_resp_0__2_rdy;
wire mst_port_r_resp_0_transid;
wire mst_port_r_resp_0__2_transid;
wire mst_port_r_req_1_val;
wire mst_port_r_req_1__2_val;
wire mst_port_r_req_1_rdy;
wire mst_port_r_req_1__2_rdy;
wire mst_port_r_req_1_transid;
wire mst_port_r_req_1__2_transid;
wire mst_port_r_resp_1_val;
wire mst_port_r_resp_1__2_val;
wire mst_port_r_resp_1_rdy;
wire mst_port_r_resp_1__2_rdy;
wire mst_port_r_resp_1_transid;
wire mst_port_r_resp_1__2_transid;
wire mst_port_w_req_0_val;
wire mst_port_w_req_0__2_val;
wire mst_port_w_req_0_rdy;
wire mst_port_w_req_0__2_rdy;
wire mst_port_w_req_0_transid;
wire mst_port_w_req_0__2_transid;
wire mst_port_w_resp_0_val;
wire mst_port_w_resp_0__2_val;
wire mst_port_w_resp_0_rdy;
wire mst_port_w_resp_0__2_rdy;
wire mst_port_w_resp_0_transid;
wire mst_port_w_resp_0__2_transid;
wire mst_port_w_req_1_val;
wire mst_port_w_req_1__2_val;
wire mst_port_w_req_1_rdy;
wire mst_port_w_req_1__2_rdy;
wire mst_port_w_req_1_transid;
wire mst_port_w_req_1__2_transid;
wire mst_port_w_resp_1_val;
wire mst_port_w_resp_1__2_val;
wire mst_port_w_resp_1_rdy;
wire mst_port_w_resp_1__2_rdy;
wire mst_port_w_resp_1_transid;
wire mst_port_w_resp_1__2_transid;

// Symbolics and Handshake signals
wire mst_port_r_req_0_hsk = mst_port_r_req_0_val && mst_port_r_req_0_rdy;
wire mst_port_r_resp_0_hsk = mst_port_r_resp_0_val && mst_port_r_resp_0_rdy;
wire [0:0] symb_mst_port_r_req_0_transid;
am__symb_mst_port_r_req_0_transid_stable: assume property($stable(symb_mst_port_r_req_0_transid));
wire mst_port_r_req_0__2_hsk = mst_port_r_req_0__2_val && mst_port_r_req_0__2_rdy;
wire mst_port_r_resp_0__2_hsk = mst_port_r_resp_0__2_val && mst_port_r_resp_0__2_rdy;
wire [0:0] symb_mst_port_r_req_0__2_transid;
am__symb_mst_port_r_req_0__2_transid_stable: assume property($stable(symb_mst_port_r_req_0__2_transid));
wire mst_port_r_req_1_hsk = mst_port_r_req_1_val && mst_port_r_req_1_rdy;
wire mst_port_r_resp_1_hsk = mst_port_r_resp_1_val && mst_port_r_resp_1_rdy;
wire [0:0] symb_mst_port_r_req_1_transid;
am__symb_mst_port_r_req_1_transid_stable: assume property($stable(symb_mst_port_r_req_1_transid));
wire mst_port_r_req_1__2_hsk = mst_port_r_req_1__2_val && mst_port_r_req_1__2_rdy;
wire mst_port_r_resp_1__2_hsk = mst_port_r_resp_1__2_val && mst_port_r_resp_1__2_rdy;
wire [0:0] symb_mst_port_r_req_1__2_transid;
am__symb_mst_port_r_req_1__2_transid_stable: assume property($stable(symb_mst_port_r_req_1__2_transid));
wire mst_port_w_req_0_hsk = mst_port_w_req_0_val && mst_port_w_req_0_rdy;
wire mst_port_w_resp_0_hsk = mst_port_w_resp_0_val && mst_port_w_resp_0_rdy;
wire [0:0] symb_mst_port_w_req_0_transid;
am__symb_mst_port_w_req_0_transid_stable: assume property($stable(symb_mst_port_w_req_0_transid));
wire mst_port_w_req_0__2_hsk = mst_port_w_req_0__2_val && mst_port_w_req_0__2_rdy;
wire mst_port_w_resp_0__2_hsk = mst_port_w_resp_0__2_val && mst_port_w_resp_0__2_rdy;
wire [0:0] symb_mst_port_w_req_0__2_transid;
am__symb_mst_port_w_req_0__2_transid_stable: assume property($stable(symb_mst_port_w_req_0__2_transid));
wire mst_port_w_req_1_hsk = mst_port_w_req_1_val && mst_port_w_req_1_rdy;
wire mst_port_w_resp_1_hsk = mst_port_w_resp_1_val && mst_port_w_resp_1_rdy;
wire [0:0] symb_mst_port_w_req_1_transid;
am__symb_mst_port_w_req_1_transid_stable: assume property($stable(symb_mst_port_w_req_1_transid));
wire mst_port_w_req_1__2_hsk = mst_port_w_req_1__2_val && mst_port_w_req_1__2_rdy;
wire mst_port_w_resp_1__2_hsk = mst_port_w_resp_1__2_val && mst_port_w_resp_1__2_rdy;
wire [0:0] symb_mst_port_w_req_1__2_transid;
am__symb_mst_port_w_req_1__2_transid_stable: assume property($stable(symb_mst_port_w_req_1__2_transid));

localparam THRESHOLD = 3;
reg [$clog2(THRESHOLD):0] equal_cnt;
wire transfer_cond;
reg spy_mode; //Set when the equal_cnt reaches THRESHOLD
wire spy_starts = transfer_cond && equal_cnt >= THRESHOLD;
wire flush_done; //Set free by default (anytime) USER may set the conditions that indicate the flush has finished for both universes.
always_ff @(posedge clk_i) begin
	if (!rst_ni) begin
		spy_mode   <= '0;
		equal_cnt  <= '0;
	end else begin
		spy_mode <= spy_starts || spy_mode;
		equal_cnt <= (flush_done || equal_cnt>0) && transfer_cond ? equal_cnt + 1 : '0;
	end
end

// There is an assertion per output signal from the DUT
as__slv_ports_resp_o: assert property (spy_mode |-> (slv_ports_resp_o == slv_ports_resp_o_2));
as__mst_ports_req_o: assert property (spy_mode |-> (mst_ports_req_o == mst_ports_req_o_2));

// There is an assumption per input signal to the DUT
am__slv_ports_req_i: assume property (spy_mode |-> (slv_ports_req_i == slv_ports_req_i_2));
am__mst_ports_resp_i: assume property (spy_mode |-> (mst_ports_resp_i == mst_ports_resp_i_2));

assign io_equal = slv_ports_req_i == slv_ports_req_i_2 &&
 slv_ports_resp_o == slv_ports_resp_o_2 &&
 mst_ports_req_o == mst_ports_req_o_2 &&
 mst_ports_resp_i == mst_ports_resp_i_2 &&
1'b1;
// The USER includes conditions here based on the architectural state of the DUT
wire architectural_state_eq;
// Conjunction of all conditions that need to be met before starting to check 
assign transfer_cond = architectural_state_eq && io_equal;
//==============================================================================
// Modeling
//==============================================================================

// Modeling outstanding request for mst_port_r_req_0
reg [2**(0+1)-1:0] mst_port_r_req_0_outstanding_req_r;

always_ff @(posedge clk_i) begin
	if(!rst_ni) begin
		mst_port_r_req_0_outstanding_req_r <= '0;
	end else begin
		if (mst_port_r_req_0_hsk) begin
			mst_port_r_req_0_outstanding_req_r[mst_port_r_req_0_transid] <= 1'b1;
		end
		if (mst_port_r_resp_0_hsk) begin
			mst_port_r_req_0_outstanding_req_r[mst_port_r_resp_0_transid] <= 1'b0;
		end
	end
end


generate
if (ASSERT_INPUTS) begin : mst_port_r_req_0_gen
	as__mst_port_r_req_01: assert property (!mst_port_r_req_0_outstanding_req_r[symb_mst_port_r_req_0_transid] |-> !(mst_port_r_resp_0_hsk && (mst_port_r_resp_0_transid == symb_mst_port_r_req_0_transid)));
	as__mst_port_r_req_02: assert property (mst_port_r_req_0_outstanding_req_r[symb_mst_port_r_req_0_transid] |-> s_eventually(mst_port_r_resp_0_hsk && (mst_port_r_resp_0_transid == symb_mst_port_r_req_0_transid)));
end else begin : mst_port_r_req_0_else_gen
	am__mst_port_r_req_0_fairness: assume property (mst_port_r_req_0_val |-> s_eventually(mst_port_r_req_0_rdy));
	for ( j = 0; j < 2**(0+1); j = j + 1) begin : mst_port_r_req_0_for_gen
		co__mst_port_r_req_0: cover property (mst_port_r_req_0_outstanding_req_r[j]);
		am__mst_port_r_req_01: assume property (!mst_port_r_req_0_outstanding_req_r[j] |-> !(mst_port_r_resp_0_val && (mst_port_r_resp_0_transid == j)));
		am__mst_port_r_req_02: assume property (mst_port_r_req_0_outstanding_req_r[j] |-> s_eventually(mst_port_r_resp_0_val && (mst_port_r_resp_0_transid == j)));
	end
end
endgenerate

// Modeling outstanding request for mst_port_r_req_0__2
reg [2**(0+1)-1:0] mst_port_r_req_0__2_outstanding_req_r;

always_ff @(posedge clk_i) begin
	if(!rst_ni) begin
		mst_port_r_req_0__2_outstanding_req_r <= '0;
	end else begin
		if (mst_port_r_req_0__2_hsk) begin
			mst_port_r_req_0__2_outstanding_req_r[mst_port_r_req_0__2_transid] <= 1'b1;
		end
		if (mst_port_r_resp_0__2_hsk) begin
			mst_port_r_req_0__2_outstanding_req_r[mst_port_r_resp_0__2_transid] <= 1'b0;
		end
	end
end


generate
if (ASSERT_INPUTS) begin : mst_port_r_req_0__2_gen
	as__mst_port_r_req_0__21: assert property (!mst_port_r_req_0__2_outstanding_req_r[symb_mst_port_r_req_0__2_transid] |-> !(mst_port_r_resp_0__2_hsk && (mst_port_r_resp_0__2_transid == symb_mst_port_r_req_0__2_transid)));
	as__mst_port_r_req_0__22: assert property (mst_port_r_req_0__2_outstanding_req_r[symb_mst_port_r_req_0__2_transid] |-> s_eventually(mst_port_r_resp_0__2_hsk && (mst_port_r_resp_0__2_transid == symb_mst_port_r_req_0__2_transid)));
end else begin : mst_port_r_req_0__2_else_gen
	am__mst_port_r_req_0__2_fairness: assume property (mst_port_r_req_0__2_val |-> s_eventually(mst_port_r_req_0__2_rdy));
	for ( j = 0; j < 2**(0+1); j = j + 1) begin : mst_port_r_req_0__2_for_gen
		co__mst_port_r_req_0__2: cover property (mst_port_r_req_0__2_outstanding_req_r[j]);
		am__mst_port_r_req_0__21: assume property (!mst_port_r_req_0__2_outstanding_req_r[j] |-> !(mst_port_r_resp_0__2_val && (mst_port_r_resp_0__2_transid == j)));
		am__mst_port_r_req_0__22: assume property (mst_port_r_req_0__2_outstanding_req_r[j] |-> s_eventually(mst_port_r_resp_0__2_val && (mst_port_r_resp_0__2_transid == j)));
	end
end
endgenerate

// Modeling outstanding request for mst_port_r_req_1
reg [2**(0+1)-1:0] mst_port_r_req_1_outstanding_req_r;

always_ff @(posedge clk_i) begin
	if(!rst_ni) begin
		mst_port_r_req_1_outstanding_req_r <= '0;
	end else begin
		if (mst_port_r_req_1_hsk) begin
			mst_port_r_req_1_outstanding_req_r[mst_port_r_req_1_transid] <= 1'b1;
		end
		if (mst_port_r_resp_1_hsk) begin
			mst_port_r_req_1_outstanding_req_r[mst_port_r_resp_1_transid] <= 1'b0;
		end
	end
end


generate
if (ASSERT_INPUTS) begin : mst_port_r_req_1_gen
	as__mst_port_r_req_11: assert property (!mst_port_r_req_1_outstanding_req_r[symb_mst_port_r_req_1_transid] |-> !(mst_port_r_resp_1_hsk && (mst_port_r_resp_1_transid == symb_mst_port_r_req_1_transid)));
	as__mst_port_r_req_12: assert property (mst_port_r_req_1_outstanding_req_r[symb_mst_port_r_req_1_transid] |-> s_eventually(mst_port_r_resp_1_hsk && (mst_port_r_resp_1_transid == symb_mst_port_r_req_1_transid)));
end else begin : mst_port_r_req_1_else_gen
	am__mst_port_r_req_1_fairness: assume property (mst_port_r_req_1_val |-> s_eventually(mst_port_r_req_1_rdy));
	for ( j = 0; j < 2**(0+1); j = j + 1) begin : mst_port_r_req_1_for_gen
		co__mst_port_r_req_1: cover property (mst_port_r_req_1_outstanding_req_r[j]);
		am__mst_port_r_req_11: assume property (!mst_port_r_req_1_outstanding_req_r[j] |-> !(mst_port_r_resp_1_val && (mst_port_r_resp_1_transid == j)));
		am__mst_port_r_req_12: assume property (mst_port_r_req_1_outstanding_req_r[j] |-> s_eventually(mst_port_r_resp_1_val && (mst_port_r_resp_1_transid == j)));
	end
end
endgenerate

// Modeling outstanding request for mst_port_r_req_1__2
reg [2**(0+1)-1:0] mst_port_r_req_1__2_outstanding_req_r;

always_ff @(posedge clk_i) begin
	if(!rst_ni) begin
		mst_port_r_req_1__2_outstanding_req_r <= '0;
	end else begin
		if (mst_port_r_req_1__2_hsk) begin
			mst_port_r_req_1__2_outstanding_req_r[mst_port_r_req_1__2_transid] <= 1'b1;
		end
		if (mst_port_r_resp_1__2_hsk) begin
			mst_port_r_req_1__2_outstanding_req_r[mst_port_r_resp_1__2_transid] <= 1'b0;
		end
	end
end


generate
if (ASSERT_INPUTS) begin : mst_port_r_req_1__2_gen
	as__mst_port_r_req_1__21: assert property (!mst_port_r_req_1__2_outstanding_req_r[symb_mst_port_r_req_1__2_transid] |-> !(mst_port_r_resp_1__2_hsk && (mst_port_r_resp_1__2_transid == symb_mst_port_r_req_1__2_transid)));
	as__mst_port_r_req_1__22: assert property (mst_port_r_req_1__2_outstanding_req_r[symb_mst_port_r_req_1__2_transid] |-> s_eventually(mst_port_r_resp_1__2_hsk && (mst_port_r_resp_1__2_transid == symb_mst_port_r_req_1__2_transid)));
end else begin : mst_port_r_req_1__2_else_gen
	am__mst_port_r_req_1__2_fairness: assume property (mst_port_r_req_1__2_val |-> s_eventually(mst_port_r_req_1__2_rdy));
	for ( j = 0; j < 2**(0+1); j = j + 1) begin : mst_port_r_req_1__2_for_gen
		co__mst_port_r_req_1__2: cover property (mst_port_r_req_1__2_outstanding_req_r[j]);
		am__mst_port_r_req_1__21: assume property (!mst_port_r_req_1__2_outstanding_req_r[j] |-> !(mst_port_r_resp_1__2_val && (mst_port_r_resp_1__2_transid == j)));
		am__mst_port_r_req_1__22: assume property (mst_port_r_req_1__2_outstanding_req_r[j] |-> s_eventually(mst_port_r_resp_1__2_val && (mst_port_r_resp_1__2_transid == j)));
	end
end
endgenerate

// Modeling outstanding request for mst_port_w_req_0
reg [2**(0+1)-1:0] mst_port_w_req_0_outstanding_req_r;

always_ff @(posedge clk_i) begin
	if(!rst_ni) begin
		mst_port_w_req_0_outstanding_req_r <= '0;
	end else begin
		if (mst_port_w_req_0_hsk) begin
			mst_port_w_req_0_outstanding_req_r[mst_port_w_req_0_transid] <= 1'b1;
		end
		if (mst_port_w_resp_0_hsk) begin
			mst_port_w_req_0_outstanding_req_r[mst_port_w_resp_0_transid] <= 1'b0;
		end
	end
end


generate
if (ASSERT_INPUTS) begin : mst_port_w_req_0_gen
	as__mst_port_w_req_01: assert property (!mst_port_w_req_0_outstanding_req_r[symb_mst_port_w_req_0_transid] |-> !(mst_port_w_resp_0_hsk && (mst_port_w_resp_0_transid == symb_mst_port_w_req_0_transid)));
	as__mst_port_w_req_02: assert property (mst_port_w_req_0_outstanding_req_r[symb_mst_port_w_req_0_transid] |-> s_eventually(mst_port_w_resp_0_hsk && (mst_port_w_resp_0_transid == symb_mst_port_w_req_0_transid)));
end else begin : mst_port_w_req_0_else_gen
	am__mst_port_w_req_0_fairness: assume property (mst_port_w_req_0_val |-> s_eventually(mst_port_w_req_0_rdy));
	for ( j = 0; j < 2**(0+1); j = j + 1) begin : mst_port_w_req_0_for_gen
		co__mst_port_w_req_0: cover property (mst_port_w_req_0_outstanding_req_r[j]);
		am__mst_port_w_req_01: assume property (!mst_port_w_req_0_outstanding_req_r[j] |-> !(mst_port_w_resp_0_val && (mst_port_w_resp_0_transid == j)));
		am__mst_port_w_req_02: assume property (mst_port_w_req_0_outstanding_req_r[j] |-> s_eventually(mst_port_w_resp_0_val && (mst_port_w_resp_0_transid == j)));
	end
end
endgenerate

// Modeling outstanding request for mst_port_w_req_0__2
reg [2**(0+1)-1:0] mst_port_w_req_0__2_outstanding_req_r;

always_ff @(posedge clk_i) begin
	if(!rst_ni) begin
		mst_port_w_req_0__2_outstanding_req_r <= '0;
	end else begin
		if (mst_port_w_req_0__2_hsk) begin
			mst_port_w_req_0__2_outstanding_req_r[mst_port_w_req_0__2_transid] <= 1'b1;
		end
		if (mst_port_w_resp_0__2_hsk) begin
			mst_port_w_req_0__2_outstanding_req_r[mst_port_w_resp_0__2_transid] <= 1'b0;
		end
	end
end


generate
if (ASSERT_INPUTS) begin : mst_port_w_req_0__2_gen
	as__mst_port_w_req_0__21: assert property (!mst_port_w_req_0__2_outstanding_req_r[symb_mst_port_w_req_0__2_transid] |-> !(mst_port_w_resp_0__2_hsk && (mst_port_w_resp_0__2_transid == symb_mst_port_w_req_0__2_transid)));
	as__mst_port_w_req_0__22: assert property (mst_port_w_req_0__2_outstanding_req_r[symb_mst_port_w_req_0__2_transid] |-> s_eventually(mst_port_w_resp_0__2_hsk && (mst_port_w_resp_0__2_transid == symb_mst_port_w_req_0__2_transid)));
end else begin : mst_port_w_req_0__2_else_gen
	am__mst_port_w_req_0__2_fairness: assume property (mst_port_w_req_0__2_val |-> s_eventually(mst_port_w_req_0__2_rdy));
	for ( j = 0; j < 2**(0+1); j = j + 1) begin : mst_port_w_req_0__2_for_gen
		co__mst_port_w_req_0__2: cover property (mst_port_w_req_0__2_outstanding_req_r[j]);
		am__mst_port_w_req_0__21: assume property (!mst_port_w_req_0__2_outstanding_req_r[j] |-> !(mst_port_w_resp_0__2_val && (mst_port_w_resp_0__2_transid == j)));
		am__mst_port_w_req_0__22: assume property (mst_port_w_req_0__2_outstanding_req_r[j] |-> s_eventually(mst_port_w_resp_0__2_val && (mst_port_w_resp_0__2_transid == j)));
	end
end
endgenerate

// Modeling outstanding request for mst_port_w_req_1
reg [2**(0+1)-1:0] mst_port_w_req_1_outstanding_req_r;

always_ff @(posedge clk_i) begin
	if(!rst_ni) begin
		mst_port_w_req_1_outstanding_req_r <= '0;
	end else begin
		if (mst_port_w_req_1_hsk) begin
			mst_port_w_req_1_outstanding_req_r[mst_port_w_req_1_transid] <= 1'b1;
		end
		if (mst_port_w_resp_1_hsk) begin
			mst_port_w_req_1_outstanding_req_r[mst_port_w_resp_1_transid] <= 1'b0;
		end
	end
end


generate
if (ASSERT_INPUTS) begin : mst_port_w_req_1_gen
	as__mst_port_w_req_11: assert property (!mst_port_w_req_1_outstanding_req_r[symb_mst_port_w_req_1_transid] |-> !(mst_port_w_resp_1_hsk && (mst_port_w_resp_1_transid == symb_mst_port_w_req_1_transid)));
	as__mst_port_w_req_12: assert property (mst_port_w_req_1_outstanding_req_r[symb_mst_port_w_req_1_transid] |-> s_eventually(mst_port_w_resp_1_hsk && (mst_port_w_resp_1_transid == symb_mst_port_w_req_1_transid)));
end else begin : mst_port_w_req_1_else_gen
	am__mst_port_w_req_1_fairness: assume property (mst_port_w_req_1_val |-> s_eventually(mst_port_w_req_1_rdy));
	for ( j = 0; j < 2**(0+1); j = j + 1) begin : mst_port_w_req_1_for_gen
		co__mst_port_w_req_1: cover property (mst_port_w_req_1_outstanding_req_r[j]);
		am__mst_port_w_req_11: assume property (!mst_port_w_req_1_outstanding_req_r[j] |-> !(mst_port_w_resp_1_val && (mst_port_w_resp_1_transid == j)));
		am__mst_port_w_req_12: assume property (mst_port_w_req_1_outstanding_req_r[j] |-> s_eventually(mst_port_w_resp_1_val && (mst_port_w_resp_1_transid == j)));
	end
end
endgenerate

// Modeling outstanding request for mst_port_w_req_1__2
reg [2**(0+1)-1:0] mst_port_w_req_1__2_outstanding_req_r;

always_ff @(posedge clk_i) begin
	if(!rst_ni) begin
		mst_port_w_req_1__2_outstanding_req_r <= '0;
	end else begin
		if (mst_port_w_req_1__2_hsk) begin
			mst_port_w_req_1__2_outstanding_req_r[mst_port_w_req_1__2_transid] <= 1'b1;
		end
		if (mst_port_w_resp_1__2_hsk) begin
			mst_port_w_req_1__2_outstanding_req_r[mst_port_w_resp_1__2_transid] <= 1'b0;
		end
	end
end


generate
if (ASSERT_INPUTS) begin : mst_port_w_req_1__2_gen
	as__mst_port_w_req_1__21: assert property (!mst_port_w_req_1__2_outstanding_req_r[symb_mst_port_w_req_1__2_transid] |-> !(mst_port_w_resp_1__2_hsk && (mst_port_w_resp_1__2_transid == symb_mst_port_w_req_1__2_transid)));
	as__mst_port_w_req_1__22: assert property (mst_port_w_req_1__2_outstanding_req_r[symb_mst_port_w_req_1__2_transid] |-> s_eventually(mst_port_w_resp_1__2_hsk && (mst_port_w_resp_1__2_transid == symb_mst_port_w_req_1__2_transid)));
end else begin : mst_port_w_req_1__2_else_gen
	am__mst_port_w_req_1__2_fairness: assume property (mst_port_w_req_1__2_val |-> s_eventually(mst_port_w_req_1__2_rdy));
	for ( j = 0; j < 2**(0+1); j = j + 1) begin : mst_port_w_req_1__2_for_gen
		co__mst_port_w_req_1__2: cover property (mst_port_w_req_1__2_outstanding_req_r[j]);
		am__mst_port_w_req_1__21: assume property (!mst_port_w_req_1__2_outstanding_req_r[j] |-> !(mst_port_w_resp_1__2_val && (mst_port_w_resp_1__2_transid == j)));
		am__mst_port_w_req_1__22: assume property (mst_port_w_req_1__2_outstanding_req_r[j] |-> s_eventually(mst_port_w_resp_1__2_val && (mst_port_w_resp_1__2_transid == j)));
	end
end
endgenerate

assign mst_port_r_req_0_val = mst_ports_req_o[0].ar_valid;
assign mst_port_r_req_0__2_val = mst_ports_req_o_2[0].ar_valid;
assign mst_port_r_req_0_rdy = mst_ports_resp_i[0].ar_ready;
assign mst_port_r_req_0__2_rdy = mst_ports_resp_i_2[0].ar_ready;
assign mst_port_r_req_0_transid = mst_ports_req_o[0].ar.id;
assign mst_port_r_req_0__2_transid = mst_ports_req_o_2[0].ar.id;
assign mst_port_r_resp_0_val = mst_ports_resp_i[0].r_valid;
assign mst_port_r_resp_0__2_val = mst_ports_resp_i_2[0].r_valid;
assign mst_port_r_resp_0_rdy = mst_ports_req_o[0].r_ready;
assign mst_port_r_resp_0__2_rdy = mst_ports_req_o_2[0].r_ready;
assign mst_port_r_resp_0_transid = mst_ports_resp_o[0].ar.id;
assign mst_port_r_resp_0__2_transid = mst_ports_resp_o_2[0].ar.id;
assign mst_port_r_req_1_val = mst_ports_req_o[1].ar_valid;
assign mst_port_r_req_1__2_val = mst_ports_req_o_2[1].ar_valid;
assign mst_port_r_req_1_rdy = mst_ports_resp_i[1].ar_ready;
assign mst_port_r_req_1__2_rdy = mst_ports_resp_i_2[1].ar_ready;
assign mst_port_r_req_1_transid = mst_ports_req_o[1].ar.id;
assign mst_port_r_req_1__2_transid = mst_ports_req_o_2[1].ar.id;
assign mst_port_r_resp_1_val = mst_ports_resp_i[1].r_valid;
assign mst_port_r_resp_1__2_val = mst_ports_resp_i_2[1].r_valid;
assign mst_port_r_resp_1_rdy = mst_ports_req_o[1].r_ready;
assign mst_port_r_resp_1__2_rdy = mst_ports_req_o_2[1].r_ready;
assign mst_port_r_resp_1_transid = mst_ports_resp_o[1].ar.id;
assign mst_port_r_resp_1__2_transid = mst_ports_resp_o_2[1].ar.id;
assign mst_port_w_req_0_val = mst_ports_req_o[0].aw_valid;
assign mst_port_w_req_0__2_val = mst_ports_req_o_2[0].aw_valid;
assign mst_port_w_req_0_rdy = mst_ports_resp_i[0].aw_ready;
assign mst_port_w_req_0__2_rdy = mst_ports_resp_i_2[0].aw_ready;
assign mst_port_w_req_0_transid = mst_ports_req_o[0].aw.id;
assign mst_port_w_req_0__2_transid = mst_ports_req_o_2[0].aw.id;
assign mst_port_w_resp_0_val = mst_ports_resp_i[0].b_valid;
assign mst_port_w_resp_0__2_val = mst_ports_resp_i_2[0].b_valid;
assign mst_port_w_resp_0_rdy = mst_ports_req_o[0].b_ready;
assign mst_port_w_resp_0__2_rdy = mst_ports_req_o_2[0].b_ready;
assign mst_port_w_resp_0_transid = mst_ports_resp_o[0].b.id;
assign mst_port_w_resp_0__2_transid = mst_ports_resp_o_2[0].b.id;
assign mst_port_w_req_1_val = mst_ports_req_o[1].aw_valid;
assign mst_port_w_req_1__2_val = mst_ports_req_o_2[1].aw_valid;
assign mst_port_w_req_1_rdy = mst_ports_resp_i[1].aw_ready;
assign mst_port_w_req_1__2_rdy = mst_ports_resp_i_2[1].aw_ready;
assign mst_port_w_req_1_transid = mst_ports_req_o[1].aw.id;
assign mst_port_w_req_1__2_transid = mst_ports_req_o_2[1].aw.id;
assign mst_port_w_resp_1_val = mst_ports_resp_i[1].b_valid;
assign mst_port_w_resp_1__2_val = mst_ports_resp_i_2[1].b_valid;
assign mst_port_w_resp_1_rdy = mst_ports_req_o[1].b_ready;
assign mst_port_w_resp_1__2_rdy = mst_ports_req_o_2[1].b_ready;
assign mst_port_w_resp_1_transid = mst_ports_resp_o[1].b.id;
assign mst_port_w_resp_1__2_transid = mst_ports_resp_o_2[1].b.id;

//====DESIGNER-ADDED-SVA====//

  // ASSUME 1: We are never in testmode
  no_testmode: assume property (test_i == 1'b0);

  // ASSUME 2: We have a legal address map
  for (genvar i = 0; i < Cfg.NoAddrRules; i++) begin : legal_address_map
    // Each address rule needs to be increasing (end address higher than start address)
    am_pos_range: assume property (addr_map_i[i].end_addr > addr_map_i[i].start_addr);
    // Each address rule must not overlap with any other address rule
    for (genvar j = 0; j < Cfg.NoAddrRules; j++) begin : am_non_overlapping
      if (i != j) begin : am_non_overlapping_other
        am_no_overlap: assume property (addr_map_i[i].end_addr < addr_map_i[j].start_addr ||
                                        addr_map_i[i].start_addr > addr_map_i[j].end_addr);
      end
    end
  end

  // ASSUME 3: There is no valid request during context switch
  logic any_valid;
  always_comb begin : no_valid
    any_valid = 1'b0;
    for (int i = 0; i < Cfg.NoSlvPorts; i++) begin
      if (slv_ports_req_i[i].ar_valid || slv_ports_req_i[i].aw_valid || slv_ports_req_i[i].w_valid || slv_ports_resp_o[i].r_valid || slv_ports_resp_o[i].b_valid ||
          slv_ports_req_i_2[i].ar_valid || slv_ports_req_i_2[i].aw_valid || slv_ports_req_i_2[i].w_valid || slv_ports_resp_o_2[i].r_valid || slv_ports_resp_o_2[i].b_valid)
        any_valid = 1'b1;
    end
  end

  // ASSUME 4: There are no outstanding transactions during context switch (transaction-level)
  // Count outstanding transactions
  reg [1:0][Cfg.NoSlvPorts-1:0][$clog2(Cfg.MaxMstTrans)-1:0] r_cnt_d, r_cnt_q, w_cnt_d, w_cnt_q;

  for (genvar i = 0; i < Cfg.NoSlvPorts; i++) begin : count_outstanding
    assign r_cnt_d[0][i] = r_cnt_q[0][i] + (slv_ports_req_i[i].ar_valid && slv_ports_resp_o[i].ar_ready) -
                           (slv_ports_resp_o[i].r_valid && slv_ports_req_i[i].r_ready && slv_ports_resp_o[i].r.last);
    assign r_cnt_d[1][i] = r_cnt_q[1][i] + (slv_ports_req_i_2[i].ar_valid && slv_ports_resp_o_2[i].ar_ready) -
                           (slv_ports_resp_o_2[i].r_valid && slv_ports_req_i_2[i].r_ready && slv_ports_resp_o_2[i].r.last);
    assign w_cnt_d[0][i] = w_cnt_q[0][i] + (slv_ports_req_i[i].aw_valid && slv_ports_resp_o[i].aw_ready) -
                           (slv_ports_resp_o[i].b_valid && slv_ports_req_i[i].b_ready);
    assign w_cnt_d[1][i] = r_cnt_q[1][i] + (slv_ports_req_i_2[i].aw_valid && slv_ports_resp_o_2[i].aw_ready) -
                           (slv_ports_resp_o_2[i].b_valid && slv_ports_req_i_2[i].b_ready);
  end

  always_ff @(posedge clk_i) begin
    if (!rst_ni) begin
      r_cnt_q <= 0;
      w_cnt_q <= 0;
    end else begin
      r_cnt_q <= r_cnt_d;
      w_cnt_q <= w_cnt_d;
    end
  end

  // ASSUME 5: There are no inflight beats during context switch (channel-level)
  // Count inflight transactions
  reg [1:0][$clog2(5*Cfg.MaxMstTrans*Cfg.NoSlvPorts+Cfg.MaxSlvTrans*Cfg.NoMstPorts)-1:0] inf_d, inf_q;

  always_comb begin : cnt_inf
    inf_d = inf_q;
    for (int i = 0; i < Cfg.NoSlvPorts; i++) begin
      inf_d[0] += slv_ports_req_i[i].ar_valid && slv_ports_resp_o[i].ar_ready;
      inf_d[1] += slv_ports_req_i_2[i].ar_valid && slv_ports_resp_o_2[i].ar_ready;
      inf_d[0] += slv_ports_req_i[i].aw_valid && slv_ports_resp_o[i].aw_ready;
      inf_d[1] += slv_ports_req_i_2[i].aw_valid && slv_ports_resp_o_2[i].aw_ready;
      inf_d[0] += slv_ports_req_i[i].w_valid && slv_ports_resp_o[i].w_ready;
      inf_d[1] += slv_ports_req_i_2[i].w_valid && slv_ports_resp_o_2[i].w_ready;
      inf_d[0] -= slv_ports_resp_o[i].r_valid && slv_ports_req_i[i].r_ready;
      inf_d[1] -= slv_ports_resp_o_2[i].r_valid && slv_ports_req_i_2[i].r_ready;
      inf_d[0] -= slv_ports_resp_o[i].b_valid && slv_ports_req_i[i].b_ready;
      inf_d[1] -= slv_ports_resp_o_2[i].b_valid && slv_ports_req_i_2[i].b_ready;
    end
    for (int i = 0; i < Cfg.NoMstPorts; i++) begin
      inf_d[0] -= mst_ports_req_o[i].ar_valid && mst_ports_resp_i[i].ar_ready;
      inf_d[1] -= mst_ports_req_o_2[i].ar_valid && mst_ports_resp_i_2[i].ar_ready;
      inf_d[0] -= mst_ports_req_o[i].aw_valid && mst_ports_resp_i[i].aw_ready;
      inf_d[1] -= mst_ports_req_o_2[i].aw_valid && mst_ports_resp_i_2[i].aw_ready;
      inf_d[0] -= mst_ports_req_o[i].w_valid && mst_ports_resp_i[i].w_ready;
      inf_d[1] -= mst_ports_req_o_2[i].w_valid && mst_ports_resp_i_2[i].w_ready;
      inf_d[0] += mst_ports_resp_i[i].r_valid && mst_ports_req_o[i].r_ready;
      inf_d[1] += mst_ports_resp_i_2[i].r_valid && mst_ports_req_o_2[i].r_ready;
      inf_d[0] += mst_ports_resp_i[i].b_valid && mst_ports_req_o[i].b_ready;
      inf_d[1] += mst_ports_resp_i_2[i].b_valid && mst_ports_req_o_2[i].b_ready;
    end
  end

  always_ff @(posedge clk_i) begin
    if (!rst_ni) begin
      inf_q <= 0;
    end else begin
      inf_q <= inf_d;
    end
  end

  assign architectural_state_eq = !|r_cnt_q && !|w_cnt_q && !|inf_q && !any_valid;

endmodule
