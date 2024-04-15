module por_dig (force_dis_rc_osc,
    force_ena_rc_osc,
    force_pdn,
    force_pdnb,
    force_short_oneshot,
    osc_ck,
    osc_ena,
    por_timed_out,
    por_unbuf,
    pwup_filt,
    startup_timed_out,
    otrip,
    otrip_decoded,
    VPWR,
    VGND);
 input force_dis_rc_osc;
 input force_ena_rc_osc;
 input force_pdn;
 output force_pdnb;
 input force_short_oneshot;
 input osc_ck;
 output osc_ena;
 output por_timed_out;
 output por_unbuf;
 input pwup_filt;
 output startup_timed_out;
 input [2:0] otrip;
 output [7:0] otrip_decoded;
 inout VPWR;
 inout VGND;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire \cnt_por[0] ;
 wire \cnt_por[10] ;
 wire \cnt_por[1] ;
 wire \cnt_por[2] ;
 wire \cnt_por[3] ;
 wire \cnt_por[4] ;
 wire \cnt_por[5] ;
 wire \cnt_por[6] ;
 wire \cnt_por[7] ;
 wire \cnt_por[8] ;
 wire \cnt_por[9] ;
 wire cnt_rsb;
 wire cnt_rsb_stg1;
 wire \cnt_st[0] ;
 wire \cnt_st[1] ;
 wire \cnt_st[2] ;
 wire \cnt_st[3] ;
 wire \cnt_st[4] ;
 wire one_;

 sky130_fd_sc_hd__inv_2 _054_ (.A(force_pdn),
    .Y(force_pdnb));
 sky130_fd_sc_hd__nand2_2 _055_ (.A(\cnt_st[1] ),
    .B(\cnt_st[0] ),
    .Y(_029_));
 sky130_fd_sc_hd__and3_2 _056_ (.A(\cnt_st[1] ),
    .B(\cnt_st[0] ),
    .C(\cnt_st[2] ),
    .X(_030_));
 sky130_fd_sc_hd__and4_2 _057_ (.A(\cnt_st[1] ),
    .B(\cnt_st[0] ),
    .C(\cnt_st[3] ),
    .D(\cnt_st[2] ),
    .X(_031_));
 sky130_fd_sc_hd__inv_2 _058_ (.A(_031_),
    .Y(_032_));
 sky130_fd_sc_hd__and2_2 _059_ (.A(\cnt_st[4] ),
    .B(_031_),
    .X(startup_timed_out));
 sky130_fd_sc_hd__and4_2 _060_ (.A(\cnt_por[1] ),
    .B(\cnt_por[0] ),
    .C(\cnt_por[3] ),
    .D(\cnt_por[2] ),
    .X(_033_));
 sky130_fd_sc_hd__nand4_2 _061_ (.A(\cnt_por[1] ),
    .B(\cnt_por[0] ),
    .C(\cnt_por[3] ),
    .D(\cnt_por[2] ),
    .Y(_034_));
 sky130_fd_sc_hd__nand4_2 _062_ (.A(\cnt_por[5] ),
    .B(\cnt_por[4] ),
    .C(\cnt_por[7] ),
    .D(\cnt_por[6] ),
    .Y(_035_));
 sky130_fd_sc_hd__nor2_2 _063_ (.A(_034_),
    .B(_035_),
    .Y(_036_));
 sky130_fd_sc_hd__nand3_2 _064_ (.A(\cnt_por[9] ),
    .B(\cnt_por[8] ),
    .C(\cnt_por[10] ),
    .Y(_037_));
 sky130_fd_sc_hd__nor3_2 _065_ (.A(_034_),
    .B(_035_),
    .C(_037_),
    .Y(por_timed_out));
 sky130_fd_sc_hd__nor3_2 _066_ (.A(otrip[2]),
    .B(otrip[1]),
    .C(otrip[0]),
    .Y(otrip_decoded[0]));
 sky130_fd_sc_hd__nor3b_2 _067_ (.A(otrip[2]),
    .B(otrip[1]),
    .C_N(otrip[0]),
    .Y(otrip_decoded[1]));
 sky130_fd_sc_hd__nor3b_2 _068_ (.A(otrip[2]),
    .B(otrip[0]),
    .C_N(otrip[1]),
    .Y(otrip_decoded[2]));
 sky130_fd_sc_hd__and3b_2 _069_ (.A_N(otrip[2]),
    .B(otrip[1]),
    .C(otrip[0]),
    .X(otrip_decoded[3]));
 sky130_fd_sc_hd__nor3b_2 _070_ (.A(otrip[1]),
    .B(otrip[0]),
    .C_N(otrip[2]),
    .Y(otrip_decoded[4]));
 sky130_fd_sc_hd__and3b_2 _071_ (.A_N(otrip[1]),
    .B(otrip[0]),
    .C(otrip[2]),
    .X(otrip_decoded[5]));
 sky130_fd_sc_hd__and3b_2 _072_ (.A_N(otrip[0]),
    .B(otrip[1]),
    .C(otrip[2]),
    .X(otrip_decoded[6]));
 sky130_fd_sc_hd__and3_2 _073_ (.A(otrip[2]),
    .B(otrip[1]),
    .C(otrip[0]),
    .X(otrip_decoded[7]));
 sky130_fd_sc_hd__or3b_2 _074_ (.A(force_dis_rc_osc),
    .B(por_timed_out),
    .C_N(pwup_filt),
    .X(_038_));
 sky130_fd_sc_hd__nand2b_2 _075_ (.A_N(force_ena_rc_osc),
    .B(_038_),
    .Y(osc_ena));
 sky130_fd_sc_hd__o311a_2 _076_ (.A1(_034_),
    .A2(_035_),
    .A3(_037_),
    .B1(_031_),
    .C1(\cnt_st[4] ),
    .X(por_unbuf));
 sky130_fd_sc_hd__nor2_2 _077_ (.A(force_short_oneshot),
    .B(startup_timed_out),
    .Y(_039_));
 sky130_fd_sc_hd__nand2_2 _078_ (.A(\cnt_st[0] ),
    .B(_039_),
    .Y(_000_));
 sky130_fd_sc_hd__or2_2 _079_ (.A(\cnt_st[1] ),
    .B(\cnt_st[0] ),
    .X(_040_));
 sky130_fd_sc_hd__a211o_2 _080_ (.A1(_029_),
    .A2(_040_),
    .B1(startup_timed_out),
    .C1(force_short_oneshot),
    .X(_001_));
 sky130_fd_sc_hd__a21oi_2 _081_ (.A1(\cnt_st[1] ),
    .A2(\cnt_st[0] ),
    .B1(\cnt_st[2] ),
    .Y(_041_));
 sky130_fd_sc_hd__o21ai_2 _082_ (.A1(_030_),
    .A2(_041_),
    .B1(_039_),
    .Y(_002_));
 sky130_fd_sc_hd__nand2_2 _083_ (.A(\cnt_st[3] ),
    .B(force_short_oneshot),
    .Y(_042_));
 sky130_fd_sc_hd__or2_2 _084_ (.A(\cnt_st[3] ),
    .B(force_short_oneshot),
    .X(_043_));
 sky130_fd_sc_hd__a21o_2 _085_ (.A1(_042_),
    .A2(_043_),
    .B1(_030_),
    .X(_044_));
 sky130_fd_sc_hd__o21a_2 _086_ (.A1(\cnt_st[4] ),
    .A2(_032_),
    .B1(_044_),
    .X(_003_));
 sky130_fd_sc_hd__o21a_2 _087_ (.A1(\cnt_st[4] ),
    .A2(_042_),
    .B1(_032_),
    .X(_045_));
 sky130_fd_sc_hd__a21bo_2 _088_ (.A1(\cnt_st[4] ),
    .A2(_042_),
    .B1_N(_045_),
    .X(_004_));
 sky130_fd_sc_hd__nand2b_2 _089_ (.A_N(force_short_oneshot),
    .B(por_unbuf),
    .Y(_046_));
 sky130_fd_sc_hd__mux2_1 _090_ (.A0(por_unbuf),
    .A1(_046_),
    .S(\cnt_por[0] ),
    .X(_005_));
 sky130_fd_sc_hd__and2_2 _091_ (.A(force_short_oneshot),
    .B(por_unbuf),
    .X(_047_));
 sky130_fd_sc_hd__nand2_2 _092_ (.A(force_short_oneshot),
    .B(por_unbuf),
    .Y(_048_));
 sky130_fd_sc_hd__a21oi_2 _093_ (.A1(\cnt_por[0] ),
    .A2(por_unbuf),
    .B1(\cnt_por[1] ),
    .Y(_049_));
 sky130_fd_sc_hd__and3_2 _094_ (.A(\cnt_por[1] ),
    .B(\cnt_por[0] ),
    .C(por_unbuf),
    .X(_050_));
 sky130_fd_sc_hd__o21ai_2 _095_ (.A1(_049_),
    .A2(_050_),
    .B1(_048_),
    .Y(_006_));
 sky130_fd_sc_hd__nand4_2 _096_ (.A(\cnt_por[1] ),
    .B(\cnt_por[0] ),
    .C(\cnt_por[2] ),
    .D(por_unbuf),
    .Y(_051_));
 sky130_fd_sc_hd__a31o_2 _097_ (.A1(\cnt_por[1] ),
    .A2(\cnt_por[0] ),
    .A3(por_unbuf),
    .B1(\cnt_por[2] ),
    .X(_052_));
 sky130_fd_sc_hd__a21o_2 _098_ (.A1(_051_),
    .A2(_052_),
    .B1(_047_),
    .X(_007_));
 sky130_fd_sc_hd__a41o_2 _099_ (.A1(\cnt_por[1] ),
    .A2(\cnt_por[0] ),
    .A3(\cnt_por[2] ),
    .A4(por_unbuf),
    .B1(\cnt_por[3] ),
    .X(_053_));
 sky130_fd_sc_hd__nand2_2 _100_ (.A(_033_),
    .B(por_unbuf),
    .Y(_016_));
 sky130_fd_sc_hd__a21o_2 _101_ (.A1(_053_),
    .A2(_016_),
    .B1(_047_),
    .X(_008_));
 sky130_fd_sc_hd__and3_2 _102_ (.A(\cnt_por[4] ),
    .B(_033_),
    .C(por_unbuf),
    .X(_017_));
 sky130_fd_sc_hd__a21oi_2 _103_ (.A1(_033_),
    .A2(por_unbuf),
    .B1(\cnt_por[4] ),
    .Y(_018_));
 sky130_fd_sc_hd__o21ai_2 _104_ (.A1(_017_),
    .A2(_018_),
    .B1(_048_),
    .Y(_009_));
 sky130_fd_sc_hd__and3_2 _105_ (.A(\cnt_por[5] ),
    .B(\cnt_por[4] ),
    .C(_033_),
    .X(_019_));
 sky130_fd_sc_hd__nand2_2 _106_ (.A(por_unbuf),
    .B(_019_),
    .Y(_020_));
 sky130_fd_sc_hd__a31o_2 _107_ (.A1(\cnt_por[4] ),
    .A2(_033_),
    .A3(por_unbuf),
    .B1(\cnt_por[5] ),
    .X(_021_));
 sky130_fd_sc_hd__a21o_2 _108_ (.A1(_020_),
    .A2(_021_),
    .B1(_047_),
    .X(_010_));
 sky130_fd_sc_hd__a21oi_2 _109_ (.A1(por_unbuf),
    .A2(_019_),
    .B1(\cnt_por[6] ),
    .Y(_022_));
 sky130_fd_sc_hd__and3_2 _110_ (.A(\cnt_por[6] ),
    .B(por_unbuf),
    .C(_019_),
    .X(_023_));
 sky130_fd_sc_hd__o21ai_2 _111_ (.A1(_022_),
    .A2(_023_),
    .B1(_048_),
    .Y(_011_));
 sky130_fd_sc_hd__a31o_2 _112_ (.A1(\cnt_por[6] ),
    .A2(por_unbuf),
    .A3(_019_),
    .B1(\cnt_por[7] ),
    .X(_024_));
 sky130_fd_sc_hd__nand4_2 _113_ (.A(\cnt_por[7] ),
    .B(\cnt_por[6] ),
    .C(por_unbuf),
    .D(_019_),
    .Y(_025_));
 sky130_fd_sc_hd__a21o_2 _114_ (.A1(_024_),
    .A2(_025_),
    .B1(_047_),
    .X(_012_));
 sky130_fd_sc_hd__o21ai_2 _115_ (.A1(force_short_oneshot),
    .A2(_036_),
    .B1(por_unbuf),
    .Y(_026_));
 sky130_fd_sc_hd__o211a_2 _116_ (.A1(force_short_oneshot),
    .A2(_036_),
    .B1(por_unbuf),
    .C1(\cnt_por[8] ),
    .X(_027_));
 sky130_fd_sc_hd__xnor2_2 _117_ (.A(\cnt_por[8] ),
    .B(_026_),
    .Y(_013_));
 sky130_fd_sc_hd__o2111a_2 _118_ (.A1(force_short_oneshot),
    .A2(_036_),
    .B1(por_unbuf),
    .C1(\cnt_por[8] ),
    .D1(\cnt_por[9] ),
    .X(_028_));
 sky130_fd_sc_hd__xor2_2 _119_ (.A(\cnt_por[9] ),
    .B(_027_),
    .X(_014_));
 sky130_fd_sc_hd__xor2_2 _120_ (.A(\cnt_por[10] ),
    .B(_028_),
    .X(_015_));
 sky130_fd_sc_hd__dfrtp_2 _121_ (.CLK(osc_ck),
    .D(_000_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_st[0] ));
 sky130_fd_sc_hd__dfrtp_2 _122_ (.CLK(osc_ck),
    .D(_001_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_st[1] ));
 sky130_fd_sc_hd__dfrtp_2 _123_ (.CLK(osc_ck),
    .D(_002_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_st[2] ));
 sky130_fd_sc_hd__dfrtp_2 _124_ (.CLK(osc_ck),
    .D(_003_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_st[3] ));
 sky130_fd_sc_hd__dfrtp_2 _125_ (.CLK(osc_ck),
    .D(_004_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_st[4] ));
 sky130_fd_sc_hd__dfrtp_2 _126_ (.CLK(osc_ck),
    .D(_005_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_por[0] ));
 sky130_fd_sc_hd__dfrtp_2 _127_ (.CLK(osc_ck),
    .D(_006_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_por[1] ));
 sky130_fd_sc_hd__dfrtp_2 _128_ (.CLK(osc_ck),
    .D(_007_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_por[2] ));
 sky130_fd_sc_hd__dfrtp_2 _129_ (.CLK(osc_ck),
    .D(_008_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_por[3] ));
 sky130_fd_sc_hd__dfrtp_2 _130_ (.CLK(osc_ck),
    .D(_009_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_por[4] ));
 sky130_fd_sc_hd__dfrtp_2 _131_ (.CLK(osc_ck),
    .D(_010_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_por[5] ));
 sky130_fd_sc_hd__dfrtp_2 _132_ (.CLK(osc_ck),
    .D(_011_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_por[6] ));
 sky130_fd_sc_hd__dfrtp_2 _133_ (.CLK(osc_ck),
    .D(_012_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_por[7] ));
 sky130_fd_sc_hd__dfrtp_2 _134_ (.CLK(osc_ck),
    .D(_013_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_por[8] ));
 sky130_fd_sc_hd__dfrtp_2 _135_ (.CLK(osc_ck),
    .D(_014_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_por[9] ));
 sky130_fd_sc_hd__dfrtp_2 _136_ (.CLK(osc_ck),
    .D(_015_),
    .RESET_B(cnt_rsb),
    .Q(\cnt_por[10] ));
 sky130_fd_sc_hd__dfrtp_2 _137_ (.CLK(osc_ck),
    .D(one_),
    .RESET_B(pwup_filt),
    .Q(cnt_rsb_stg1));
 sky130_fd_sc_hd__dfrtp_2 _138_ (.CLK(osc_ck),
    .D(cnt_rsb_stg1),
    .RESET_B(pwup_filt),
    .Q(cnt_rsb));
 sky130_fd_sc_hd__conb_1 TIE_ONE_one_ (.HI(one_));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_61 ();
endmodule