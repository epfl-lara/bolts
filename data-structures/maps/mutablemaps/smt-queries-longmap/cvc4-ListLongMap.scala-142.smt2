; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2612 () Bool)

(assert start!2612)

(declare-fun b_free!533 () Bool)

(declare-fun b_next!533 () Bool)

(assert (=> start!2612 (= b_free!533 (not b_next!533))))

(declare-fun tp!2716 () Bool)

(declare-fun b_and!1015 () Bool)

(assert (=> start!2612 (= tp!2716 b_and!1015)))

(declare-fun res!11844 () Bool)

(declare-fun e!9613 () Bool)

(assert (=> start!2612 (=> (not res!11844) (not e!9613))))

(declare-datatypes ((B!654 0))(
  ( (B!655 (val!425 Int)) )
))
(declare-datatypes ((tuple2!632 0))(
  ( (tuple2!633 (_1!316 (_ BitVec 64)) (_2!316 B!654)) )
))
(declare-datatypes ((List!504 0))(
  ( (Nil!501) (Cons!500 (h!1066 tuple2!632) (t!2978 List!504)) )
))
(declare-datatypes ((ListLongMap!463 0))(
  ( (ListLongMap!464 (toList!247 List!504)) )
))
(declare-fun lm!238 () ListLongMap!463)

(declare-fun p!262 () Int)

(declare-fun forall!130 (List!504 Int) Bool)

(assert (=> start!2612 (= res!11844 (forall!130 (toList!247 lm!238) p!262))))

(assert (=> start!2612 e!9613))

(declare-fun e!9612 () Bool)

(declare-fun inv!842 (ListLongMap!463) Bool)

(assert (=> start!2612 (and (inv!842 lm!238) e!9612)))

(assert (=> start!2612 tp!2716))

(assert (=> start!2612 true))

(declare-fun b!15756 () Bool)

(declare-fun res!11845 () Bool)

(assert (=> b!15756 (=> (not res!11845) (not e!9613))))

(declare-datatypes ((List!505 0))(
  ( (Nil!502) (Cons!501 (h!1067 (_ BitVec 64)) (t!2979 List!505)) )
))
(declare-fun l!1612 () List!505)

(declare-fun isEmpty!140 (List!505) Bool)

(assert (=> b!15756 (= res!11845 (isEmpty!140 l!1612))))

(declare-fun b!15757 () Bool)

(declare-fun --!9 (ListLongMap!463 List!505) ListLongMap!463)

(assert (=> b!15757 (= e!9613 (not (forall!130 (toList!247 (--!9 lm!238 l!1612)) p!262)))))

(declare-fun b!15758 () Bool)

(declare-fun tp!2717 () Bool)

(assert (=> b!15758 (= e!9612 tp!2717)))

(assert (= (and start!2612 res!11844) b!15756))

(assert (= (and b!15756 res!11845) b!15757))

(assert (= start!2612 b!15758))

(declare-fun m!10797 () Bool)

(assert (=> start!2612 m!10797))

(declare-fun m!10799 () Bool)

(assert (=> start!2612 m!10799))

(declare-fun m!10801 () Bool)

(assert (=> b!15756 m!10801))

(declare-fun m!10803 () Bool)

(assert (=> b!15757 m!10803))

(declare-fun m!10805 () Bool)

(assert (=> b!15757 m!10805))

(push 1)

(assert (not b!15758))

(assert (not b_next!533))

(assert b_and!1015)

(assert (not start!2612))

(assert (not b!15756))

(assert (not b!15757))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1015)

(assert (not b_next!533))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2825 () Bool)

(assert (=> d!2825 (= (isEmpty!140 l!1612) (is-Nil!502 l!1612))))

(assert (=> b!15756 d!2825))

(declare-fun d!2831 () Bool)

(declare-fun res!11860 () Bool)

(declare-fun e!9628 () Bool)

(assert (=> d!2831 (=> res!11860 e!9628)))

(assert (=> d!2831 (= res!11860 (is-Nil!501 (toList!247 (--!9 lm!238 l!1612))))))

(assert (=> d!2831 (= (forall!130 (toList!247 (--!9 lm!238 l!1612)) p!262) e!9628)))

(declare-fun b!15773 () Bool)

(declare-fun e!9629 () Bool)

(assert (=> b!15773 (= e!9628 e!9629)))

(declare-fun res!11861 () Bool)

(assert (=> b!15773 (=> (not res!11861) (not e!9629))))

(declare-fun dynLambda!117 (Int tuple2!632) Bool)

(assert (=> b!15773 (= res!11861 (dynLambda!117 p!262 (h!1066 (toList!247 (--!9 lm!238 l!1612)))))))

(declare-fun b!15774 () Bool)

(assert (=> b!15774 (= e!9629 (forall!130 (t!2978 (toList!247 (--!9 lm!238 l!1612))) p!262))))

(assert (= (and d!2831 (not res!11860)) b!15773))

(assert (= (and b!15773 res!11861) b!15774))

(declare-fun b_lambda!1117 () Bool)

(assert (=> (not b_lambda!1117) (not b!15773)))

(declare-fun t!2983 () Bool)

(declare-fun tb!467 () Bool)

(assert (=> (and start!2612 (= p!262 p!262) t!2983) tb!467))

(declare-fun result!809 () Bool)

(assert (=> tb!467 (= result!809 true)))

(assert (=> b!15773 t!2983))

(declare-fun b_and!1019 () Bool)

(assert (= b_and!1015 (and (=> t!2983 result!809) b_and!1019)))

(declare-fun m!10813 () Bool)

(assert (=> b!15773 m!10813))

(declare-fun m!10817 () Bool)

(assert (=> b!15774 m!10817))

(assert (=> b!15757 d!2831))

(declare-fun d!2839 () Bool)

(declare-fun c!1493 () Bool)

(assert (=> d!2839 (= c!1493 (is-Nil!502 l!1612))))

(declare-fun e!9645 () ListLongMap!463)

(assert (=> d!2839 (= (--!9 lm!238 l!1612) e!9645)))

(declare-fun b!15799 () Bool)

(assert (=> b!15799 (= e!9645 lm!238)))

(declare-fun b!15801 () Bool)

(declare-fun -!29 (ListLongMap!463 (_ BitVec 64)) ListLongMap!463)

(assert (=> b!15801 (= e!9645 (--!9 (-!29 lm!238 (h!1067 l!1612)) (t!2979 l!1612)))))

(assert (= (and d!2839 c!1493) b!15799))

(assert (= (and d!2839 (not c!1493)) b!15801))

(declare-fun m!10830 () Bool)

(assert (=> b!15801 m!10830))

(assert (=> b!15801 m!10830))

(declare-fun m!10833 () Bool)

(assert (=> b!15801 m!10833))

(assert (=> b!15757 d!2839))

(declare-fun d!2846 () Bool)

(declare-fun res!11866 () Bool)

(declare-fun e!9646 () Bool)

(assert (=> d!2846 (=> res!11866 e!9646)))

(assert (=> d!2846 (= res!11866 (is-Nil!501 (toList!247 lm!238)))))

(assert (=> d!2846 (= (forall!130 (toList!247 lm!238) p!262) e!9646)))

(declare-fun b!15802 () Bool)

(declare-fun e!9647 () Bool)

(assert (=> b!15802 (= e!9646 e!9647)))

(declare-fun res!11867 () Bool)

(assert (=> b!15802 (=> (not res!11867) (not e!9647))))

(assert (=> b!15802 (= res!11867 (dynLambda!117 p!262 (h!1066 (toList!247 lm!238))))))

(declare-fun b!15803 () Bool)

(assert (=> b!15803 (= e!9647 (forall!130 (t!2978 (toList!247 lm!238)) p!262))))

(assert (= (and d!2846 (not res!11866)) b!15802))

(assert (= (and b!15802 res!11867) b!15803))

(declare-fun b_lambda!1127 () Bool)

(assert (=> (not b_lambda!1127) (not b!15802)))

(declare-fun t!2989 () Bool)

(declare-fun tb!473 () Bool)

(assert (=> (and start!2612 (= p!262 p!262) t!2989) tb!473))

(declare-fun result!817 () Bool)

(assert (=> tb!473 (= result!817 true)))

(assert (=> b!15802 t!2989))

(declare-fun b_and!1025 () Bool)

(assert (= b_and!1019 (and (=> t!2989 result!817) b_and!1025)))

(declare-fun m!10837 () Bool)

(assert (=> b!15802 m!10837))

(declare-fun m!10839 () Bool)

(assert (=> b!15803 m!10839))

(assert (=> start!2612 d!2846))

(declare-fun d!2851 () Bool)

(declare-fun isStrictlySorted!152 (List!504) Bool)

(assert (=> d!2851 (= (inv!842 lm!238) (isStrictlySorted!152 (toList!247 lm!238)))))

(declare-fun bs!717 () Bool)

