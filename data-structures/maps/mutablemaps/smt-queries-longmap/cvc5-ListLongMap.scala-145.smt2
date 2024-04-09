; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2650 () Bool)

(assert start!2650)

(declare-fun b_free!547 () Bool)

(declare-fun b_next!547 () Bool)

(assert (=> start!2650 (= b_free!547 (not b_next!547))))

(declare-fun tp!2767 () Bool)

(declare-fun b_and!1041 () Bool)

(assert (=> start!2650 (= tp!2767 b_and!1041)))

(declare-fun res!11890 () Bool)

(declare-fun e!9688 () Bool)

(assert (=> start!2650 (=> (not res!11890) (not e!9688))))

(declare-datatypes ((B!668 0))(
  ( (B!669 (val!432 Int)) )
))
(declare-datatypes ((tuple2!646 0))(
  ( (tuple2!647 (_1!323 (_ BitVec 64)) (_2!323 B!668)) )
))
(declare-datatypes ((List!512 0))(
  ( (Nil!509) (Cons!508 (h!1074 tuple2!646) (t!2998 List!512)) )
))
(declare-datatypes ((ListLongMap!477 0))(
  ( (ListLongMap!478 (toList!254 List!512)) )
))
(declare-fun lm!221 () ListLongMap!477)

(declare-fun p!191 () Int)

(declare-fun forall!134 (List!512 Int) Bool)

(assert (=> start!2650 (= res!11890 (forall!134 (toList!254 lm!221) p!191))))

(assert (=> start!2650 e!9688))

(declare-fun e!9687 () Bool)

(declare-fun inv!864 (ListLongMap!477) Bool)

(assert (=> start!2650 (and (inv!864 lm!221) e!9687)))

(assert (=> start!2650 tp!2767))

(declare-fun b!15856 () Bool)

(declare-fun size!504 (List!512) Int)

(assert (=> b!15856 (= e!9688 (< (size!504 (toList!254 lm!221)) 0))))

(declare-fun b!15857 () Bool)

(declare-fun tp!2768 () Bool)

(assert (=> b!15857 (= e!9687 tp!2768)))

(assert (= (and start!2650 res!11890) b!15856))

(assert (= start!2650 b!15857))

(declare-fun m!10885 () Bool)

(assert (=> start!2650 m!10885))

(declare-fun m!10887 () Bool)

(assert (=> start!2650 m!10887))

(declare-fun m!10889 () Bool)

(assert (=> b!15856 m!10889))

(push 1)

(assert (not b_next!547))

(assert (not b!15857))

(assert (not start!2650))

(assert b_and!1041)

(assert (not b!15856))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1041)

(assert (not b_next!547))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2861 () Bool)

(declare-fun lt!3929 () Int)

(assert (=> d!2861 (>= lt!3929 0)))

(declare-fun e!9705 () Int)

(assert (=> d!2861 (= lt!3929 e!9705)))

(declare-fun c!1498 () Bool)

(assert (=> d!2861 (= c!1498 (is-Nil!509 (toList!254 lm!221)))))

(assert (=> d!2861 (= (size!504 (toList!254 lm!221)) lt!3929)))

(declare-fun b!15878 () Bool)

(assert (=> b!15878 (= e!9705 0)))

(declare-fun b!15879 () Bool)

(assert (=> b!15879 (= e!9705 (+ 1 (size!504 (t!2998 (toList!254 lm!221)))))))

(assert (= (and d!2861 c!1498) b!15878))

(assert (= (and d!2861 (not c!1498)) b!15879))

(declare-fun m!10903 () Bool)

(assert (=> b!15879 m!10903))

(assert (=> b!15856 d!2861))

(declare-fun d!2865 () Bool)

(declare-fun res!11905 () Bool)

(declare-fun e!9715 () Bool)

(assert (=> d!2865 (=> res!11905 e!9715)))

(assert (=> d!2865 (= res!11905 (is-Nil!509 (toList!254 lm!221)))))

(assert (=> d!2865 (= (forall!134 (toList!254 lm!221) p!191) e!9715)))

(declare-fun b!15890 () Bool)

(declare-fun e!9716 () Bool)

(assert (=> b!15890 (= e!9715 e!9716)))

(declare-fun res!11906 () Bool)

(assert (=> b!15890 (=> (not res!11906) (not e!9716))))

(declare-fun dynLambda!118 (Int tuple2!646) Bool)

(assert (=> b!15890 (= res!11906 (dynLambda!118 p!191 (h!1074 (toList!254 lm!221))))))

(declare-fun b!15891 () Bool)

(assert (=> b!15891 (= e!9716 (forall!134 (t!2998 (toList!254 lm!221)) p!191))))

(assert (= (and d!2865 (not res!11905)) b!15890))

(assert (= (and b!15890 res!11906) b!15891))

(declare-fun b_lambda!1139 () Bool)

(assert (=> (not b_lambda!1139) (not b!15890)))

(declare-fun t!3002 () Bool)

(declare-fun tb!477 () Bool)

(assert (=> (and start!2650 (= p!191 p!191) t!3002) tb!477))

(declare-fun result!825 () Bool)

(assert (=> tb!477 (= result!825 true)))

(assert (=> b!15890 t!3002))

(declare-fun b_and!1047 () Bool)

(assert (= b_and!1041 (and (=> t!3002 result!825) b_and!1047)))

(declare-fun m!10907 () Bool)

(assert (=> b!15890 m!10907))

(declare-fun m!10909 () Bool)

(assert (=> b!15891 m!10909))

(assert (=> start!2650 d!2865))

(declare-fun d!2871 () Bool)

(declare-fun isStrictlySorted!153 (List!512) Bool)

(assert (=> d!2871 (= (inv!864 lm!221) (isStrictlySorted!153 (toList!254 lm!221)))))

(declare-fun bs!728 () Bool)

(assert (= bs!728 d!2871))

(declare-fun m!10915 () Bool)

(assert (=> bs!728 m!10915))

(assert (=> start!2650 d!2871))

(declare-fun b!15908 () Bool)

(declare-fun e!9726 () Bool)

(declare-fun tp_is_empty!811 () Bool)

(declare-fun tp!2785 () Bool)

(assert (=> b!15908 (= e!9726 (and tp_is_empty!811 tp!2785))))

(assert (=> b!15857 (= tp!2768 e!9726)))

(assert (= (and b!15857 (is-Cons!508 (toList!254 lm!221))) b!15908))

(declare-fun b_lambda!1143 () Bool)

(assert (= b_lambda!1139 (or (and start!2650 b_free!547) b_lambda!1143)))

(push 1)

