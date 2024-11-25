bind axi_xslv_wrap axi_xslv_prop
	#(
		.Cfg (Cfg),
		.ATOPs (ATOPs),
		.Connectivity (Connectivity),
		.slv_aw_chan_t (autocc_axi_xbar_pkg::slv_aw_chan_t),
		.mst_aw_chan_t (autocc_axi_xbar_pkg::mst_aw_chan_t),
		.w_chan_t (autocc_axi_xbar_pkg::slv_w_chan_t),
		.slv_b_chan_t (autocc_axi_xbar_pkg::slv_b_chan_t),
		.mst_b_chan_t (autocc_axi_xbar_pkg::mst_b_chan_t),
		.slv_ar_chan_t (autocc_axi_xbar_pkg::slv_ar_chan_t),
		.mst_ar_chan_t (autocc_axi_xbar_pkg::mst_ar_chan_t),
		.slv_r_chan_t (autocc_axi_xbar_pkg::slv_r_chan_t),
		.mst_r_chan_t (autocc_axi_xbar_pkg::mst_r_chan_t),
		.slv_req_t (autocc_axi_xbar_pkg::slv_req_t),
		.slv_resp_t (autocc_axi_xbar_pkg::slv_resp_t),
		.mst_req_t (autocc_axi_xbar_pkg::mst_req_t),
		.mst_resp_t (autocc_axi_xbar_pkg::mst_resp_t),
		.rule_t (autocc_axi_xbar_pkg::rule_t),
		.rule_t (rule_t),
		.ASSERT_INPUTS (0)
	) u_axi_xslv_sva(.*);
