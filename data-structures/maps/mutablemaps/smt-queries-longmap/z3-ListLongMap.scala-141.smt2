; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2550 () Bool)

(assert start!2550)

(declare-fun b_free!525 () Bool)

(declare-fun b_next!525 () Bool)

(assert (=> start!2550 (= b_free!525 (not b_next!525))))

(declare-fun tp!2684 () Bool)

(declare-fun b_and!983 () Bool)

(assert (=> start!2550 (= tp!2684 b_and!983)))

(declare-fun res!11785 () Bool)

(declare-fun e!9531 () Bool)

(assert (=> start!2550 (=> (not res!11785) (not e!9531))))

(declare-datatypes ((B!646 0))(
  ( (B!647 (val!421 Int)) )
))
(declare-datatypes ((tuple2!624 0))(
  ( (tuple2!625 (_1!312 (_ BitVec 64)) (_2!312 B!646)) )
))
(declare-datatypes ((List!496 0))(
  ( (Nil!493) (Cons!492 (h!1058 tuple2!624) (t!2946 List!496)) )
))
(declare-datatypes ((ListLongMap!455 0))(
  ( (ListLongMap!456 (toList!243 List!496)) )
))
(declare-fun lm!238 () ListLongMap!455)

(declare-fun p!262 () Int)

(declare-fun forall!126 (List!496 Int) Bool)

(assert (=> start!2550 (= res!11785 (forall!126 (toList!243 lm!238) p!262))))

(assert (=> start!2550 e!9531))

(declare-fun e!9532 () Bool)

(declare-fun inv!833 (ListLongMap!455) Bool)

(assert (=> start!2550 (and (inv!833 lm!238) e!9532)))

(assert (=> start!2550 tp!2684))

(assert (=> start!2550 true))

(declare-fun b!15645 () Bool)

(declare-fun res!11784 () Bool)

(assert (=> b!15645 (=> (not res!11784) (not e!9531))))

(declare-datatypes ((List!497 0))(
  ( (Nil!494) (Cons!493 (h!1059 (_ BitVec 64)) (t!2947 List!497)) )
))
(declare-fun l!1612 () List!497)

(declare-fun isEmpty!136 (List!497) Bool)

(assert (=> b!15645 (= res!11784 (not (isEmpty!136 l!1612)))))

(declare-fun b!15646 () Bool)

(declare-fun --!5 (ListLongMap!455 List!497) ListLongMap!455)

(assert (=> b!15646 (= e!9531 (not (forall!126 (toList!243 (--!5 lm!238 l!1612)) p!262)))))

(declare-fun lt!3869 () ListLongMap!455)

(declare-fun lt!3870 () List!497)

(assert (=> b!15646 (forall!126 (toList!243 (--!5 lt!3869 lt!3870)) p!262)))

(declare-datatypes ((Unit!316 0))(
  ( (Unit!317) )
))
(declare-fun lt!3872 () Unit!316)

(declare-fun removeAllValidProp!3 (ListLongMap!455 List!497 Int) Unit!316)

(assert (=> b!15646 (= lt!3872 (removeAllValidProp!3 lt!3869 lt!3870 p!262))))

(declare-fun tail!63 (List!497) List!497)

(assert (=> b!15646 (= lt!3870 (tail!63 l!1612))))

(assert (=> b!15646 (forall!126 (toList!243 lt!3869) p!262)))

(declare-fun lt!3871 () (_ BitVec 64))

(declare-fun -!25 (ListLongMap!455 (_ BitVec 64)) ListLongMap!455)

(assert (=> b!15646 (= lt!3869 (-!25 lm!238 lt!3871))))

(declare-fun lt!3873 () Unit!316)

(declare-fun removeValidProp!18 (ListLongMap!455 Int (_ BitVec 64)) Unit!316)

(assert (=> b!15646 (= lt!3873 (removeValidProp!18 lm!238 p!262 lt!3871))))

(declare-fun head!816 (List!497) (_ BitVec 64))

(assert (=> b!15646 (= lt!3871 (head!816 l!1612))))

(declare-fun b!15647 () Bool)

(declare-fun tp!2683 () Bool)

(assert (=> b!15647 (= e!9532 tp!2683)))

(assert (= (and start!2550 res!11785) b!15645))

(assert (= (and b!15645 res!11784) b!15646))

(assert (= start!2550 b!15647))

(declare-fun m!10617 () Bool)

(assert (=> start!2550 m!10617))

(declare-fun m!10619 () Bool)

(assert (=> start!2550 m!10619))

(declare-fun m!10621 () Bool)

(assert (=> b!15645 m!10621))

(declare-fun m!10623 () Bool)

(assert (=> b!15646 m!10623))

(declare-fun m!10625 () Bool)

(assert (=> b!15646 m!10625))

(declare-fun m!10627 () Bool)

(assert (=> b!15646 m!10627))

(declare-fun m!10629 () Bool)

(assert (=> b!15646 m!10629))

(declare-fun m!10631 () Bool)

(assert (=> b!15646 m!10631))

(declare-fun m!10633 () Bool)

(assert (=> b!15646 m!10633))

(declare-fun m!10635 () Bool)

(assert (=> b!15646 m!10635))

(declare-fun m!10637 () Bool)

(assert (=> b!15646 m!10637))

(declare-fun m!10639 () Bool)

(assert (=> b!15646 m!10639))

(declare-fun m!10641 () Bool)

(assert (=> b!15646 m!10641))

(check-sat b_and!983 (not b_next!525) (not start!2550) (not b!15646) (not b!15647) (not b!15645))
(check-sat b_and!983 (not b_next!525))
(get-model)

(declare-fun d!2749 () Bool)

(declare-fun res!11808 () Bool)

(declare-fun e!9555 () Bool)

(assert (=> d!2749 (=> res!11808 e!9555)))

(get-info :version)

(assert (=> d!2749 (= res!11808 ((_ is Nil!493) (toList!243 lm!238)))))

(assert (=> d!2749 (= (forall!126 (toList!243 lm!238) p!262) e!9555)))

(declare-fun b!15673 () Bool)

(declare-fun e!9556 () Bool)

(assert (=> b!15673 (= e!9555 e!9556)))

(declare-fun res!11809 () Bool)

(assert (=> b!15673 (=> (not res!11809) (not e!9556))))

(declare-fun dynLambda!114 (Int tuple2!624) Bool)

(assert (=> b!15673 (= res!11809 (dynLambda!114 p!262 (h!1058 (toList!243 lm!238))))))

(declare-fun b!15674 () Bool)

(assert (=> b!15674 (= e!9556 (forall!126 (t!2946 (toList!243 lm!238)) p!262))))

(assert (= (and d!2749 (not res!11808)) b!15673))

(assert (= (and b!15673 res!11809) b!15674))

(declare-fun b_lambda!1071 () Bool)

(assert (=> (not b_lambda!1071) (not b!15673)))

(declare-fun t!2955 () Bool)

(declare-fun tb!445 () Bool)

(assert (=> (and start!2550 (= p!262 p!262) t!2955) tb!445))

(declare-fun result!781 () Bool)

(assert (=> tb!445 (= result!781 true)))

(assert (=> b!15673 t!2955))

(declare-fun b_and!991 () Bool)

(assert (= b_and!983 (and (=> t!2955 result!781) b_and!991)))

(declare-fun m!10679 () Bool)

(assert (=> b!15673 m!10679))

(declare-fun m!10681 () Bool)

(assert (=> b!15674 m!10681))

(assert (=> start!2550 d!2749))

(declare-fun d!2759 () Bool)

(declare-fun isStrictlySorted!149 (List!496) Bool)

(assert (=> d!2759 (= (inv!833 lm!238) (isStrictlySorted!149 (toList!243 lm!238)))))

(declare-fun bs!703 () Bool)

(assert (= bs!703 d!2759))

(declare-fun m!10689 () Bool)

(assert (=> bs!703 m!10689))

(assert (=> start!2550 d!2759))

(declare-fun d!2767 () Bool)

(assert (=> d!2767 (= (isEmpty!136 l!1612) ((_ is Nil!494) l!1612))))

(assert (=> b!15645 d!2767))

(declare-fun d!2771 () Bool)

(declare-fun c!1481 () Bool)

(assert (=> d!2771 (= c!1481 ((_ is Nil!494) l!1612))))

(declare-fun e!9565 () ListLongMap!455)

(assert (=> d!2771 (= (--!5 lm!238 l!1612) e!9565)))

(declare-fun b!15691 () Bool)

(assert (=> b!15691 (= e!9565 lm!238)))

(declare-fun b!15692 () Bool)

(assert (=> b!15692 (= e!9565 (--!5 (-!25 lm!238 (h!1059 l!1612)) (t!2947 l!1612)))))

(assert (= (and d!2771 c!1481) b!15691))

(assert (= (and d!2771 (not c!1481)) b!15692))

(declare-fun m!10695 () Bool)

(assert (=> b!15692 m!10695))

(assert (=> b!15692 m!10695))

(declare-fun m!10697 () Bool)

(assert (=> b!15692 m!10697))

(assert (=> b!15646 d!2771))

(declare-fun d!2775 () Bool)

(declare-fun lt!3899 () ListLongMap!455)

(declare-fun contains!190 (ListLongMap!455 (_ BitVec 64)) Bool)

(assert (=> d!2775 (not (contains!190 lt!3899 lt!3871))))

(declare-fun removeStrictlySorted!13 (List!496 (_ BitVec 64)) List!496)

(assert (=> d!2775 (= lt!3899 (ListLongMap!456 (removeStrictlySorted!13 (toList!243 lm!238) lt!3871)))))

(assert (=> d!2775 (= (-!25 lm!238 lt!3871) lt!3899)))

(declare-fun bs!706 () Bool)

(assert (= bs!706 d!2775))

(declare-fun m!10711 () Bool)

(assert (=> bs!706 m!10711))

(declare-fun m!10713 () Bool)

(assert (=> bs!706 m!10713))

(assert (=> b!15646 d!2775))

(declare-fun d!2783 () Bool)

(declare-fun res!11810 () Bool)

(declare-fun e!9567 () Bool)

(assert (=> d!2783 (=> res!11810 e!9567)))

(assert (=> d!2783 (= res!11810 ((_ is Nil!493) (toList!243 lt!3869)))))

(assert (=> d!2783 (= (forall!126 (toList!243 lt!3869) p!262) e!9567)))

(declare-fun b!15695 () Bool)

(declare-fun e!9568 () Bool)

(assert (=> b!15695 (= e!9567 e!9568)))

(declare-fun res!11811 () Bool)

(assert (=> b!15695 (=> (not res!11811) (not e!9568))))

(assert (=> b!15695 (= res!11811 (dynLambda!114 p!262 (h!1058 (toList!243 lt!3869))))))

(declare-fun b!15696 () Bool)

(assert (=> b!15696 (= e!9568 (forall!126 (t!2946 (toList!243 lt!3869)) p!262))))

(assert (= (and d!2783 (not res!11810)) b!15695))

(assert (= (and b!15695 res!11811) b!15696))

(declare-fun b_lambda!1073 () Bool)

(assert (=> (not b_lambda!1073) (not b!15695)))

(declare-fun t!2957 () Bool)

(declare-fun tb!447 () Bool)

(assert (=> (and start!2550 (= p!262 p!262) t!2957) tb!447))

(declare-fun result!783 () Bool)

(assert (=> tb!447 (= result!783 true)))

(assert (=> b!15695 t!2957))

(declare-fun b_and!993 () Bool)

(assert (= b_and!991 (and (=> t!2957 result!783) b_and!993)))

(declare-fun m!10723 () Bool)

(assert (=> b!15695 m!10723))

(declare-fun m!10725 () Bool)

(assert (=> b!15696 m!10725))

(assert (=> b!15646 d!2783))

(declare-fun d!2791 () Bool)

(assert (=> d!2791 (= (head!816 l!1612) (h!1059 l!1612))))

(assert (=> b!15646 d!2791))

(declare-fun d!2795 () Bool)

(assert (=> d!2795 (= (tail!63 l!1612) (t!2947 l!1612))))

(assert (=> b!15646 d!2795))

(declare-fun d!2801 () Bool)

(declare-fun c!1484 () Bool)

(assert (=> d!2801 (= c!1484 ((_ is Nil!494) lt!3870))))

(declare-fun e!9578 () ListLongMap!455)

(assert (=> d!2801 (= (--!5 lt!3869 lt!3870) e!9578)))

(declare-fun b!15707 () Bool)

(assert (=> b!15707 (= e!9578 lt!3869)))

(declare-fun b!15708 () Bool)

(assert (=> b!15708 (= e!9578 (--!5 (-!25 lt!3869 (h!1059 lt!3870)) (t!2947 lt!3870)))))

(assert (= (and d!2801 c!1484) b!15707))

(assert (= (and d!2801 (not c!1484)) b!15708))

(declare-fun m!10739 () Bool)

(assert (=> b!15708 m!10739))

(assert (=> b!15708 m!10739))

(declare-fun m!10741 () Bool)

(assert (=> b!15708 m!10741))

(assert (=> b!15646 d!2801))

(declare-fun d!2805 () Bool)

(declare-fun res!11820 () Bool)

(declare-fun e!9579 () Bool)

(assert (=> d!2805 (=> res!11820 e!9579)))

(assert (=> d!2805 (= res!11820 ((_ is Nil!493) (toList!243 (--!5 lt!3869 lt!3870))))))

(assert (=> d!2805 (= (forall!126 (toList!243 (--!5 lt!3869 lt!3870)) p!262) e!9579)))

(declare-fun b!15709 () Bool)

(declare-fun e!9580 () Bool)

(assert (=> b!15709 (= e!9579 e!9580)))

(declare-fun res!11821 () Bool)

(assert (=> b!15709 (=> (not res!11821) (not e!9580))))

(assert (=> b!15709 (= res!11821 (dynLambda!114 p!262 (h!1058 (toList!243 (--!5 lt!3869 lt!3870)))))))

(declare-fun b!15710 () Bool)

(assert (=> b!15710 (= e!9580 (forall!126 (t!2946 (toList!243 (--!5 lt!3869 lt!3870))) p!262))))

(assert (= (and d!2805 (not res!11820)) b!15709))

(assert (= (and b!15709 res!11821) b!15710))

(declare-fun b_lambda!1083 () Bool)

(assert (=> (not b_lambda!1083) (not b!15709)))

(declare-fun t!2967 () Bool)

(declare-fun tb!457 () Bool)

(assert (=> (and start!2550 (= p!262 p!262) t!2967) tb!457))

(declare-fun result!793 () Bool)

(assert (=> tb!457 (= result!793 true)))

(assert (=> b!15709 t!2967))

(declare-fun b_and!1003 () Bool)

(assert (= b_and!993 (and (=> t!2967 result!793) b_and!1003)))

(declare-fun m!10747 () Bool)

(assert (=> b!15709 m!10747))

(declare-fun m!10749 () Bool)

(assert (=> b!15710 m!10749))

(assert (=> b!15646 d!2805))

(declare-fun d!2809 () Bool)

(assert (=> d!2809 (forall!126 (toList!243 (-!25 lm!238 lt!3871)) p!262)))

(declare-fun lt!3906 () Unit!316)

(declare-fun choose!179 (ListLongMap!455 Int (_ BitVec 64)) Unit!316)

(assert (=> d!2809 (= lt!3906 (choose!179 lm!238 p!262 lt!3871))))

(assert (=> d!2809 (forall!126 (toList!243 lm!238) p!262)))

(assert (=> d!2809 (= (removeValidProp!18 lm!238 p!262 lt!3871) lt!3906)))

(declare-fun bs!709 () Bool)

(assert (= bs!709 d!2809))

(assert (=> bs!709 m!10631))

(declare-fun m!10757 () Bool)

(assert (=> bs!709 m!10757))

(declare-fun m!10759 () Bool)

(assert (=> bs!709 m!10759))

(assert (=> bs!709 m!10617))

(assert (=> b!15646 d!2809))

(declare-fun d!2817 () Bool)

(declare-fun res!11826 () Bool)

(declare-fun e!9585 () Bool)

(assert (=> d!2817 (=> res!11826 e!9585)))

(assert (=> d!2817 (= res!11826 ((_ is Nil!493) (toList!243 (--!5 lm!238 l!1612))))))

(assert (=> d!2817 (= (forall!126 (toList!243 (--!5 lm!238 l!1612)) p!262) e!9585)))

(declare-fun b!15715 () Bool)

(declare-fun e!9586 () Bool)

(assert (=> b!15715 (= e!9585 e!9586)))

(declare-fun res!11827 () Bool)

(assert (=> b!15715 (=> (not res!11827) (not e!9586))))

(assert (=> b!15715 (= res!11827 (dynLambda!114 p!262 (h!1058 (toList!243 (--!5 lm!238 l!1612)))))))

(declare-fun b!15716 () Bool)

(assert (=> b!15716 (= e!9586 (forall!126 (t!2946 (toList!243 (--!5 lm!238 l!1612))) p!262))))

(assert (= (and d!2817 (not res!11826)) b!15715))

(assert (= (and b!15715 res!11827) b!15716))

(declare-fun b_lambda!1089 () Bool)

(assert (=> (not b_lambda!1089) (not b!15715)))

(declare-fun t!2973 () Bool)

(declare-fun tb!463 () Bool)

(assert (=> (and start!2550 (= p!262 p!262) t!2973) tb!463))

(declare-fun result!799 () Bool)

(assert (=> tb!463 (= result!799 true)))

(assert (=> b!15715 t!2973))

(declare-fun b_and!1009 () Bool)

(assert (= b_and!1003 (and (=> t!2973 result!799) b_and!1009)))

(declare-fun m!10765 () Bool)

(assert (=> b!15715 m!10765))

(declare-fun m!10767 () Bool)

(assert (=> b!15716 m!10767))

(assert (=> b!15646 d!2817))

(declare-fun d!2821 () Bool)

(assert (=> d!2821 (forall!126 (toList!243 (--!5 lt!3869 lt!3870)) p!262)))

(declare-fun lt!3915 () Unit!316)

(declare-fun choose!182 (ListLongMap!455 List!497 Int) Unit!316)

(assert (=> d!2821 (= lt!3915 (choose!182 lt!3869 lt!3870 p!262))))

(assert (=> d!2821 (forall!126 (toList!243 lt!3869) p!262)))

(assert (=> d!2821 (= (removeAllValidProp!3 lt!3869 lt!3870 p!262) lt!3915)))

(declare-fun bs!712 () Bool)

(assert (= bs!712 d!2821))

(assert (=> bs!712 m!10633))

(assert (=> bs!712 m!10623))

(declare-fun m!10775 () Bool)

(assert (=> bs!712 m!10775))

(assert (=> bs!712 m!10629))

(assert (=> b!15646 d!2821))

(declare-fun b!15731 () Bool)

(declare-fun e!9595 () Bool)

(declare-fun tp_is_empty!803 () Bool)

(declare-fun tp!2699 () Bool)

(assert (=> b!15731 (= e!9595 (and tp_is_empty!803 tp!2699))))

(assert (=> b!15647 (= tp!2683 e!9595)))

(assert (= (and b!15647 ((_ is Cons!492) (toList!243 lm!238))) b!15731))

(declare-fun b_lambda!1107 () Bool)

(assert (= b_lambda!1071 (or (and start!2550 b_free!525) b_lambda!1107)))

(declare-fun b_lambda!1109 () Bool)

(assert (= b_lambda!1089 (or (and start!2550 b_free!525) b_lambda!1109)))

(declare-fun b_lambda!1111 () Bool)

(assert (= b_lambda!1083 (or (and start!2550 b_free!525) b_lambda!1111)))

(declare-fun b_lambda!1113 () Bool)

(assert (= b_lambda!1073 (or (and start!2550 b_free!525) b_lambda!1113)))

(check-sat (not b!15731) (not b!15692) (not b_lambda!1113) (not d!2821) (not d!2775) (not b!15708) (not b!15674) b_and!1009 (not b_next!525) (not b!15710) (not b_lambda!1107) (not d!2809) (not d!2759) (not b!15696) tp_is_empty!803 (not b!15716) (not b_lambda!1111) (not b_lambda!1109))
(check-sat b_and!1009 (not b_next!525))
