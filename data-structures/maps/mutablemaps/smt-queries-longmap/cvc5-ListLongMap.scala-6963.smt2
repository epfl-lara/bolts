; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87952 () Bool)

(assert start!87952)

(declare-fun b!1015496 () Bool)

(assert (=> b!1015496 true))

(assert (=> b!1015496 true))

(declare-fun b!1015497 () Bool)

(declare-fun e!571325 () Bool)

(declare-datatypes ((B!1484 0))(
  ( (B!1485 (val!11826 Int)) )
))
(declare-datatypes ((tuple2!15288 0))(
  ( (tuple2!15289 (_1!7654 (_ BitVec 64)) (_2!7654 B!1484)) )
))
(declare-datatypes ((List!21592 0))(
  ( (Nil!21589) (Cons!21588 (h!22786 tuple2!15288) (t!30601 List!21592)) )
))
(declare-fun l!1114 () List!21592)

(assert (=> b!1015497 (= e!571325 (= l!1114 Nil!21589))))

(declare-fun b!1015495 () Bool)

(declare-fun res!681247 () Bool)

(assert (=> b!1015495 (=> (not res!681247) (not e!571325))))

(declare-fun isEmpty!861 (List!21592) Bool)

(assert (=> b!1015495 (= res!681247 (not (isEmpty!861 l!1114)))))

(declare-fun res!681246 () Bool)

(assert (=> b!1015496 (=> (not res!681246) (not e!571325))))

(declare-datatypes ((List!21593 0))(
  ( (Nil!21590) (Cons!21589 (h!22787 (_ BitVec 64)) (t!30602 List!21593)) )
))
(declare-fun keys!40 () List!21593)

(declare-fun lambda!911 () Int)

(declare-fun forall!262 (List!21593 Int) Bool)

(assert (=> b!1015496 (= res!681246 (forall!262 keys!40 lambda!911))))

(declare-fun res!681245 () Bool)

(assert (=> start!87952 (=> (not res!681245) (not e!571325))))

(declare-fun isStrictlySorted!593 (List!21592) Bool)

(assert (=> start!87952 (= res!681245 (isStrictlySorted!593 l!1114))))

(assert (=> start!87952 e!571325))

(declare-fun e!571324 () Bool)

(assert (=> start!87952 e!571324))

(assert (=> start!87952 true))

(declare-fun tp_is_empty!23551 () Bool)

(assert (=> start!87952 tp_is_empty!23551))

(declare-fun b!1015498 () Bool)

(declare-fun tp!70656 () Bool)

(assert (=> b!1015498 (= e!571324 (and tp_is_empty!23551 tp!70656))))

(assert (= (and start!87952 res!681245) b!1015495))

(assert (= (and b!1015495 res!681247) b!1015496))

(assert (= (and b!1015496 res!681246) b!1015497))

(assert (= (and start!87952 (is-Cons!21588 l!1114)) b!1015498))

(declare-fun m!937677 () Bool)

(assert (=> b!1015495 m!937677))

(declare-fun m!937679 () Bool)

(assert (=> b!1015496 m!937679))

(declare-fun m!937681 () Bool)

(assert (=> start!87952 m!937681))

(push 1)

(assert (not b!1015496))

(assert (not b!1015495))

(assert tp_is_empty!23551)

(assert (not start!87952))

(assert (not b!1015498))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120959 () Bool)

(declare-fun res!681270 () Bool)

(declare-fun e!571342 () Bool)

(assert (=> d!120959 (=> res!681270 e!571342)))

(assert (=> d!120959 (= res!681270 (is-Nil!21590 keys!40))))

(assert (=> d!120959 (= (forall!262 keys!40 lambda!911) e!571342)))

(declare-fun b!1015539 () Bool)

(declare-fun e!571343 () Bool)

(assert (=> b!1015539 (= e!571342 e!571343)))

(declare-fun res!681271 () Bool)

(assert (=> b!1015539 (=> (not res!681271) (not e!571343))))

(declare-fun dynLambda!1906 (Int (_ BitVec 64)) Bool)

(assert (=> b!1015539 (= res!681271 (dynLambda!1906 lambda!911 (h!22787 keys!40)))))

(declare-fun b!1015540 () Bool)

(assert (=> b!1015540 (= e!571343 (forall!262 (t!30602 keys!40) lambda!911))))

(assert (= (and d!120959 (not res!681270)) b!1015539))

(assert (= (and b!1015539 res!681271) b!1015540))

(declare-fun b_lambda!15457 () Bool)

(assert (=> (not b_lambda!15457) (not b!1015539)))

(declare-fun m!937695 () Bool)

(assert (=> b!1015539 m!937695))

(declare-fun m!937697 () Bool)

(assert (=> b!1015540 m!937697))

(assert (=> b!1015496 d!120959))

(declare-fun d!120967 () Bool)

(assert (=> d!120967 (= (isEmpty!861 l!1114) (is-Nil!21589 l!1114))))

(assert (=> b!1015495 d!120967))

(declare-fun d!120969 () Bool)

(declare-fun res!681296 () Bool)

(declare-fun e!571368 () Bool)

(assert (=> d!120969 (=> res!681296 e!571368)))

(assert (=> d!120969 (= res!681296 (or (is-Nil!21589 l!1114) (is-Nil!21589 (t!30601 l!1114))))))

(assert (=> d!120969 (= (isStrictlySorted!593 l!1114) e!571368)))

(declare-fun b!1015565 () Bool)

(declare-fun e!571369 () Bool)

(assert (=> b!1015565 (= e!571368 e!571369)))

(declare-fun res!681297 () Bool)

(assert (=> b!1015565 (=> (not res!681297) (not e!571369))))

(assert (=> b!1015565 (= res!681297 (bvslt (_1!7654 (h!22786 l!1114)) (_1!7654 (h!22786 (t!30601 l!1114)))))))

(declare-fun b!1015566 () Bool)

(assert (=> b!1015566 (= e!571369 (isStrictlySorted!593 (t!30601 l!1114)))))

(assert (= (and d!120969 (not res!681296)) b!1015565))

(assert (= (and b!1015565 res!681297) b!1015566))

(declare-fun m!937703 () Bool)

(assert (=> b!1015566 m!937703))

(assert (=> start!87952 d!120969))

(declare-fun b!1015575 () Bool)

(declare-fun e!571376 () Bool)

(declare-fun tp!70665 () Bool)

(assert (=> b!1015575 (= e!571376 (and tp_is_empty!23551 tp!70665))))

(assert (=> b!1015498 (= tp!70656 e!571376)))

(assert (= (and b!1015498 (is-Cons!21588 (t!30601 l!1114))) b!1015575))

(declare-fun b_lambda!15461 () Bool)

(assert (= b_lambda!15457 (or b!1015496 b_lambda!15461)))

(declare-fun bs!29447 () Bool)

(declare-fun d!120975 () Bool)

(assert (= bs!29447 (and d!120975 b!1015496)))

(declare-fun value!178 () B!1484)

(declare-datatypes ((Option!590 0))(
  ( (Some!589 (v!14438 B!1484)) (None!588) )
))
(declare-fun getValueByKey!539 (List!21592 (_ BitVec 64)) Option!590)

(assert (=> bs!29447 (= (dynLambda!1906 lambda!911 (h!22787 keys!40)) (= (getValueByKey!539 l!1114 (h!22787 keys!40)) (Some!589 value!178)))))

(declare-fun m!937713 () Bool)

(assert (=> bs!29447 m!937713))

(assert (=> b!1015539 d!120975))

(push 1)

(assert (not b!1015540))

(assert (not b!1015566))

(assert tp_is_empty!23551)

(assert (not b!1015575))

(assert (not bs!29447))

(assert (not b_lambda!15461))

(check-sat)

(pop 1)

