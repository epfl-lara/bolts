; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2608 () Bool)

(assert start!2608)

(declare-fun b_free!529 () Bool)

(declare-fun b_next!529 () Bool)

(assert (=> start!2608 (= b_free!529 (not b_next!529))))

(declare-fun tp!2705 () Bool)

(declare-fun b_and!1011 () Bool)

(assert (=> start!2608 (= tp!2705 b_and!1011)))

(declare-fun res!11832 () Bool)

(declare-fun e!9600 () Bool)

(assert (=> start!2608 (=> (not res!11832) (not e!9600))))

(declare-datatypes ((B!650 0))(
  ( (B!651 (val!423 Int)) )
))
(declare-datatypes ((tuple2!628 0))(
  ( (tuple2!629 (_1!314 (_ BitVec 64)) (_2!314 B!650)) )
))
(declare-datatypes ((List!500 0))(
  ( (Nil!497) (Cons!496 (h!1062 tuple2!628) (t!2974 List!500)) )
))
(declare-datatypes ((ListLongMap!459 0))(
  ( (ListLongMap!460 (toList!245 List!500)) )
))
(declare-fun lm!238 () ListLongMap!459)

(declare-fun p!262 () Int)

(declare-fun forall!128 (List!500 Int) Bool)

(assert (=> start!2608 (= res!11832 (forall!128 (toList!245 lm!238) p!262))))

(assert (=> start!2608 e!9600))

(declare-fun e!9601 () Bool)

(declare-fun inv!840 (ListLongMap!459) Bool)

(assert (=> start!2608 (and (inv!840 lm!238) e!9601)))

(assert (=> start!2608 tp!2705))

(assert (=> start!2608 true))

(declare-fun b!15738 () Bool)

(declare-fun res!11833 () Bool)

(assert (=> b!15738 (=> (not res!11833) (not e!9600))))

(declare-datatypes ((List!501 0))(
  ( (Nil!498) (Cons!497 (h!1063 (_ BitVec 64)) (t!2975 List!501)) )
))
(declare-fun l!1612 () List!501)

(declare-fun isEmpty!138 (List!501) Bool)

(assert (=> b!15738 (= res!11833 (isEmpty!138 l!1612))))

(declare-fun b!15739 () Bool)

(declare-fun --!7 (ListLongMap!459 List!501) ListLongMap!459)

(assert (=> b!15739 (= e!9600 (not (forall!128 (toList!245 (--!7 lm!238 l!1612)) p!262)))))

(declare-fun b!15740 () Bool)

(declare-fun tp!2704 () Bool)

(assert (=> b!15740 (= e!9601 tp!2704)))

(assert (= (and start!2608 res!11832) b!15738))

(assert (= (and b!15738 res!11833) b!15739))

(assert (= start!2608 b!15740))

(declare-fun m!10777 () Bool)

(assert (=> start!2608 m!10777))

(declare-fun m!10779 () Bool)

(assert (=> start!2608 m!10779))

(declare-fun m!10781 () Bool)

(assert (=> b!15738 m!10781))

(declare-fun m!10783 () Bool)

(assert (=> b!15739 m!10783))

(declare-fun m!10785 () Bool)

(assert (=> b!15739 m!10785))

(push 1)

(assert (not start!2608))

(assert (not b!15740))

(assert (not b!15738))

(assert b_and!1011)

(assert (not b_next!529))

(assert (not b!15739))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1011)

(assert (not b_next!529))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2827 () Bool)

(assert (=> d!2827 (= (isEmpty!138 l!1612) (is-Nil!498 l!1612))))

(assert (=> b!15738 d!2827))

(declare-fun d!2829 () Bool)

(declare-fun res!11858 () Bool)

(declare-fun e!9626 () Bool)

(assert (=> d!2829 (=> res!11858 e!9626)))

(assert (=> d!2829 (= res!11858 (is-Nil!497 (toList!245 lm!238)))))

(assert (=> d!2829 (= (forall!128 (toList!245 lm!238) p!262) e!9626)))

(declare-fun b!15771 () Bool)

(declare-fun e!9627 () Bool)

(assert (=> b!15771 (= e!9626 e!9627)))

(declare-fun res!11859 () Bool)

(assert (=> b!15771 (=> (not res!11859) (not e!9627))))

(declare-fun dynLambda!115 (Int tuple2!628) Bool)

(assert (=> b!15771 (= res!11859 (dynLambda!115 p!262 (h!1062 (toList!245 lm!238))))))

(declare-fun b!15772 () Bool)

(assert (=> b!15772 (= e!9627 (forall!128 (t!2974 (toList!245 lm!238)) p!262))))

(assert (= (and d!2829 (not res!11858)) b!15771))

(assert (= (and b!15771 res!11859) b!15772))

(declare-fun b_lambda!1115 () Bool)

(assert (=> (not b_lambda!1115) (not b!15771)))

(declare-fun t!2981 () Bool)

(declare-fun tb!465 () Bool)

(assert (=> (and start!2608 (= p!262 p!262) t!2981) tb!465))

(declare-fun result!807 () Bool)

(assert (=> tb!465 (= result!807 true)))

(assert (=> b!15771 t!2981))

(declare-fun b_and!1017 () Bool)

(assert (= b_and!1011 (and (=> t!2981 result!807) b_and!1017)))

(declare-fun m!10807 () Bool)

(assert (=> b!15771 m!10807))

(declare-fun m!10809 () Bool)

(assert (=> b!15772 m!10809))

(assert (=> start!2608 d!2829))

(declare-fun d!2835 () Bool)

(declare-fun isStrictlySorted!150 (List!500) Bool)

(assert (=> d!2835 (= (inv!840 lm!238) (isStrictlySorted!150 (toList!245 lm!238)))))

(declare-fun bs!716 () Bool)

(assert (= bs!716 d!2835))

(declare-fun m!10811 () Bool)

(assert (=> bs!716 m!10811))

(assert (=> start!2608 d!2835))

(declare-fun d!2837 () Bool)

(declare-fun res!11864 () Bool)

(declare-fun e!9632 () Bool)

(assert (=> d!2837 (=> res!11864 e!9632)))

(assert (=> d!2837 (= res!11864 (is-Nil!497 (toList!245 (--!7 lm!238 l!1612))))))

(assert (=> d!2837 (= (forall!128 (toList!245 (--!7 lm!238 l!1612)) p!262) e!9632)))

(declare-fun b!15777 () Bool)

(declare-fun e!9633 () Bool)

(assert (=> b!15777 (= e!9632 e!9633)))

(declare-fun res!11865 () Bool)

(assert (=> b!15777 (=> (not res!11865) (not e!9633))))

(assert (=> b!15777 (= res!11865 (dynLambda!115 p!262 (h!1062 (toList!245 (--!7 lm!238 l!1612)))))))

(declare-fun b!15778 () Bool)

(assert (=> b!15778 (= e!9633 (forall!128 (t!2974 (toList!245 (--!7 lm!238 l!1612))) p!262))))

(assert (= (and d!2837 (not res!11864)) b!15777))

(assert (= (and b!15777 res!11865) b!15778))

(declare-fun b_lambda!1121 () Bool)

(assert (=> (not b_lambda!1121) (not b!15777)))

(declare-fun t!2987 () Bool)

(declare-fun tb!471 () Bool)

(assert (=> (and start!2608 (= p!262 p!262) t!2987) tb!471))

(declare-fun result!813 () Bool)

(assert (=> tb!471 (= result!813 true)))

(assert (=> b!15777 t!2987))

(declare-fun b_and!1023 () Bool)

(assert (= b_and!1017 (and (=> t!2987 result!813) b_and!1023)))

(declare-fun m!10821 () Bool)

(assert (=> b!15777 m!10821))

(declare-fun m!10823 () Bool)

(assert (=> b!15778 m!10823))

(assert (=> b!15739 d!2837))

(declare-fun d!2843 () Bool)

(declare-fun c!1491 () Bool)

(assert (=> d!2843 (= c!1491 (is-Nil!498 l!1612))))

(declare-fun e!9640 () ListLongMap!459)

(assert (=> d!2843 (= (--!7 lm!238 l!1612) e!9640)))

(declare-fun b!15791 () Bool)

(assert (=> b!15791 (= e!9640 lm!238)))

(declare-fun b!15792 () Bool)

(declare-fun -!28 (ListLongMap!459 (_ BitVec 64)) ListLongMap!459)

(assert (=> b!15792 (= e!9640 (--!7 (-!28 lm!238 (h!1063 l!1612)) (t!2975 l!1612)))))

(assert (= (and d!2843 c!1491) b!15791))

(assert (= (and d!2843 (not c!1491)) b!15792))

(declare-fun m!10825 () Bool)

(assert (=> b!15792 m!10825))

(assert (=> b!15792 m!10825))

(declare-fun m!10827 () Bool)

(assert (=> b!15792 m!10827))

(assert (=> b!15739 d!2843))

(declare-fun b!15797 () Bool)

(declare-fun e!9643 () Bool)

(declare-fun tp_is_empty!805 () Bool)

(declare-fun tp!2720 () Bool)

(assert (=> b!15797 (= e!9643 (and tp_is_empty!805 tp!2720))))

(assert (=> b!15740 (= tp!2704 e!9643)))

(assert (= (and b!15740 (is-Cons!496 (toList!245 lm!238))) b!15797))

(declare-fun b_lambda!1123 () Bool)

(assert (= b_lambda!1115 (or (and start!2608 b_free!529) b_lambda!1123)))

(declare-fun b_lambda!1125 () Bool)

(assert (= b_lambda!1121 (or (and start!2608 b_free!529) b_lambda!1125)))

(push 1)

(assert (not b!15772))

(assert (not d!2835))

(assert (not b!15778))

(assert b_and!1023)

(assert (not b_lambda!1123))

(assert (not b!15797))

(assert (not b_next!529))

(assert (not b_lambda!1125))

(assert (not b!15792))

(assert tp_is_empty!805)

(check-sat)

(pop 1)

