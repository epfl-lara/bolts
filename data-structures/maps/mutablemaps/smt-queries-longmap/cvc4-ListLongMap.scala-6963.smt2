; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87956 () Bool)

(assert start!87956)

(declare-fun b!1015528 () Bool)

(assert (=> b!1015528 true))

(assert (=> b!1015528 true))

(declare-fun b!1015527 () Bool)

(declare-fun res!681263 () Bool)

(declare-fun e!571337 () Bool)

(assert (=> b!1015527 (=> (not res!681263) (not e!571337))))

(declare-datatypes ((B!1488 0))(
  ( (B!1489 (val!11828 Int)) )
))
(declare-datatypes ((tuple2!15292 0))(
  ( (tuple2!15293 (_1!7656 (_ BitVec 64)) (_2!7656 B!1488)) )
))
(declare-datatypes ((List!21596 0))(
  ( (Nil!21593) (Cons!21592 (h!22790 tuple2!15292) (t!30605 List!21596)) )
))
(declare-fun l!1114 () List!21596)

(declare-fun isEmpty!863 (List!21596) Bool)

(assert (=> b!1015527 (= res!681263 (not (isEmpty!863 l!1114)))))

(declare-fun b!1015529 () Bool)

(assert (=> b!1015529 (= e!571337 (= l!1114 Nil!21593))))

(declare-fun res!681264 () Bool)

(assert (=> b!1015528 (=> (not res!681264) (not e!571337))))

(declare-datatypes ((List!21597 0))(
  ( (Nil!21594) (Cons!21593 (h!22791 (_ BitVec 64)) (t!30606 List!21597)) )
))
(declare-fun keys!40 () List!21597)

(declare-fun lambda!917 () Int)

(declare-fun forall!264 (List!21597 Int) Bool)

(assert (=> b!1015528 (= res!681264 (forall!264 keys!40 lambda!917))))

(declare-fun res!681265 () Bool)

(assert (=> start!87956 (=> (not res!681265) (not e!571337))))

(declare-fun isStrictlySorted!595 (List!21596) Bool)

(assert (=> start!87956 (= res!681265 (isStrictlySorted!595 l!1114))))

(assert (=> start!87956 e!571337))

(declare-fun e!571336 () Bool)

(assert (=> start!87956 e!571336))

(assert (=> start!87956 true))

(declare-fun tp_is_empty!23555 () Bool)

(assert (=> start!87956 tp_is_empty!23555))

(declare-fun b!1015530 () Bool)

(declare-fun tp!70662 () Bool)

(assert (=> b!1015530 (= e!571336 (and tp_is_empty!23555 tp!70662))))

(assert (= (and start!87956 res!681265) b!1015527))

(assert (= (and b!1015527 res!681263) b!1015528))

(assert (= (and b!1015528 res!681264) b!1015529))

(assert (= (and start!87956 (is-Cons!21592 l!1114)) b!1015530))

(declare-fun m!937689 () Bool)

(assert (=> b!1015527 m!937689))

(declare-fun m!937691 () Bool)

(assert (=> b!1015528 m!937691))

(declare-fun m!937693 () Bool)

(assert (=> start!87956 m!937693))

(push 1)

(assert (not b!1015530))

(assert (not b!1015527))

(assert (not start!87956))

(assert (not b!1015528))

(assert tp_is_empty!23555)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120965 () Bool)

(declare-fun res!681282 () Bool)

(declare-fun e!571354 () Bool)

(assert (=> d!120965 (=> res!681282 e!571354)))

(assert (=> d!120965 (= res!681282 (or (is-Nil!21593 l!1114) (is-Nil!21593 (t!30605 l!1114))))))

(assert (=> d!120965 (= (isStrictlySorted!595 l!1114) e!571354)))

(declare-fun b!1015551 () Bool)

(declare-fun e!571355 () Bool)

(assert (=> b!1015551 (= e!571354 e!571355)))

(declare-fun res!681283 () Bool)

(assert (=> b!1015551 (=> (not res!681283) (not e!571355))))

(assert (=> b!1015551 (= res!681283 (bvslt (_1!7656 (h!22790 l!1114)) (_1!7656 (h!22790 (t!30605 l!1114)))))))

(declare-fun b!1015552 () Bool)

(assert (=> b!1015552 (= e!571355 (isStrictlySorted!595 (t!30605 l!1114)))))

(assert (= (and d!120965 (not res!681282)) b!1015551))

(assert (= (and b!1015551 res!681283) b!1015552))

(declare-fun m!937701 () Bool)

(assert (=> b!1015552 m!937701))

(assert (=> start!87956 d!120965))

(declare-fun d!120973 () Bool)

(declare-fun res!681300 () Bool)

(declare-fun e!571374 () Bool)

(assert (=> d!120973 (=> res!681300 e!571374)))

(assert (=> d!120973 (= res!681300 (is-Nil!21594 keys!40))))

(assert (=> d!120973 (= (forall!264 keys!40 lambda!917) e!571374)))

(declare-fun b!1015573 () Bool)

(declare-fun e!571375 () Bool)

(assert (=> b!1015573 (= e!571374 e!571375)))

(declare-fun res!681301 () Bool)

(assert (=> b!1015573 (=> (not res!681301) (not e!571375))))

(declare-fun dynLambda!1908 (Int (_ BitVec 64)) Bool)

(assert (=> b!1015573 (= res!681301 (dynLambda!1908 lambda!917 (h!22791 keys!40)))))

(declare-fun b!1015574 () Bool)

(assert (=> b!1015574 (= e!571375 (forall!264 (t!30606 keys!40) lambda!917))))

(assert (= (and d!120973 (not res!681300)) b!1015573))

(assert (= (and b!1015573 res!681301) b!1015574))

(declare-fun b_lambda!15463 () Bool)

(assert (=> (not b_lambda!15463) (not b!1015573)))

(declare-fun m!937709 () Bool)

(assert (=> b!1015573 m!937709))

(declare-fun m!937711 () Bool)

(assert (=> b!1015574 m!937711))

(assert (=> b!1015528 d!120973))

(declare-fun d!120977 () Bool)

(assert (=> d!120977 (= (isEmpty!863 l!1114) (is-Nil!21593 l!1114))))

