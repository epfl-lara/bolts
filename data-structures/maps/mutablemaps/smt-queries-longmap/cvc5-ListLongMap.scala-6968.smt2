; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88060 () Bool)

(assert start!88060)

(declare-fun b!1015999 () Bool)

(assert (=> b!1015999 true))

(assert (=> b!1015999 true))

(declare-fun res!681582 () Bool)

(declare-fun e!571594 () Bool)

(assert (=> start!88060 (=> (not res!681582) (not e!571594))))

(declare-datatypes ((B!1514 0))(
  ( (B!1515 (val!11841 Int)) )
))
(declare-datatypes ((tuple2!15318 0))(
  ( (tuple2!15319 (_1!7669 (_ BitVec 64)) (_2!7669 B!1514)) )
))
(declare-datatypes ((List!21619 0))(
  ( (Nil!21616) (Cons!21615 (h!22813 tuple2!15318) (t!30628 List!21619)) )
))
(declare-fun l!1114 () List!21619)

(declare-fun isStrictlySorted!605 (List!21619) Bool)

(assert (=> start!88060 (= res!681582 (isStrictlySorted!605 l!1114))))

(assert (=> start!88060 e!571594))

(declare-fun e!571595 () Bool)

(assert (=> start!88060 e!571595))

(assert (=> start!88060 true))

(declare-fun tp_is_empty!23581 () Bool)

(assert (=> start!88060 tp_is_empty!23581))

(declare-fun b!1015997 () Bool)

(declare-fun res!681586 () Bool)

(assert (=> b!1015997 (=> (not res!681586) (not e!571594))))

(declare-datatypes ((List!21620 0))(
  ( (Nil!21617) (Cons!21616 (h!22814 (_ BitVec 64)) (t!30629 List!21620)) )
))
(declare-fun keys!40 () List!21620)

(assert (=> b!1015997 (= res!681586 (not (is-Cons!21616 keys!40)))))

(declare-fun b!1015998 () Bool)

(declare-fun tp!70719 () Bool)

(assert (=> b!1015998 (= e!571595 (and tp_is_empty!23581 tp!70719))))

(declare-fun res!681583 () Bool)

(assert (=> b!1015999 (=> (not res!681583) (not e!571594))))

(declare-fun lambda!992 () Int)

(declare-fun forall!274 (List!21620 Int) Bool)

(assert (=> b!1015999 (= res!681583 (forall!274 keys!40 lambda!992))))

(declare-fun b!1016000 () Bool)

(declare-fun newHead!31 () tuple2!15318)

(assert (=> b!1016000 (= e!571594 (not (isStrictlySorted!605 (Cons!21615 newHead!31 l!1114))))))

(declare-fun b!1016001 () Bool)

(declare-fun res!681584 () Bool)

(assert (=> b!1016001 (=> (not res!681584) (not e!571594))))

(declare-fun isEmpty!875 (List!21619) Bool)

(assert (=> b!1016001 (= res!681584 (not (isEmpty!875 l!1114)))))

(declare-fun b!1016002 () Bool)

(declare-fun res!681585 () Bool)

(assert (=> b!1016002 (=> (not res!681585) (not e!571594))))

(declare-fun head!956 (List!21619) tuple2!15318)

(assert (=> b!1016002 (= res!681585 (bvslt (_1!7669 newHead!31) (_1!7669 (head!956 l!1114))))))

(assert (= (and start!88060 res!681582) b!1016001))

(assert (= (and b!1016001 res!681584) b!1015999))

(assert (= (and b!1015999 res!681583) b!1016002))

(assert (= (and b!1016002 res!681585) b!1015997))

(assert (= (and b!1015997 res!681586) b!1016000))

(assert (= (and start!88060 (is-Cons!21615 l!1114)) b!1015998))

(declare-fun m!938013 () Bool)

(assert (=> start!88060 m!938013))

(declare-fun m!938015 () Bool)

(assert (=> b!1016001 m!938015))

(declare-fun m!938017 () Bool)

(assert (=> b!1016002 m!938017))

(declare-fun m!938019 () Bool)

(assert (=> b!1016000 m!938019))

(declare-fun m!938021 () Bool)

(assert (=> b!1015999 m!938021))

(push 1)

(assert (not start!88060))

(assert (not b!1016001))

(assert (not b!1016000))

(assert (not b!1016002))

(assert (not b!1015998))

(assert tp_is_empty!23581)

(assert (not b!1015999))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121093 () Bool)

(assert (=> d!121093 (= (isEmpty!875 l!1114) (is-Nil!21616 l!1114))))

(assert (=> b!1016001 d!121093))

(declare-fun d!121095 () Bool)

(declare-fun res!681635 () Bool)

(declare-fun e!571628 () Bool)

(assert (=> d!121095 (=> res!681635 e!571628)))

(assert (=> d!121095 (= res!681635 (or (is-Nil!21616 l!1114) (is-Nil!21616 (t!30628 l!1114))))))

(assert (=> d!121095 (= (isStrictlySorted!605 l!1114) e!571628)))

(declare-fun b!1016073 () Bool)

(declare-fun e!571629 () Bool)

(assert (=> b!1016073 (= e!571628 e!571629)))

(declare-fun res!681636 () Bool)

(assert (=> b!1016073 (=> (not res!681636) (not e!571629))))

(assert (=> b!1016073 (= res!681636 (bvslt (_1!7669 (h!22813 l!1114)) (_1!7669 (h!22813 (t!30628 l!1114)))))))

(declare-fun b!1016074 () Bool)

(assert (=> b!1016074 (= e!571629 (isStrictlySorted!605 (t!30628 l!1114)))))

(assert (= (and d!121095 (not res!681635)) b!1016073))

(assert (= (and b!1016073 res!681636) b!1016074))

(declare-fun m!938051 () Bool)

(assert (=> b!1016074 m!938051))

(assert (=> start!88060 d!121095))

(declare-fun d!121105 () Bool)

(assert (=> d!121105 (= (head!956 l!1114) (h!22813 l!1114))))

(assert (=> b!1016002 d!121105))

(declare-fun d!121107 () Bool)

(declare-fun res!681647 () Bool)

(declare-fun e!571641 () Bool)

(assert (=> d!121107 (=> res!681647 e!571641)))

(assert (=> d!121107 (= res!681647 (is-Nil!21617 keys!40))))

(assert (=> d!121107 (= (forall!274 keys!40 lambda!992) e!571641)))

(declare-fun b!1016086 () Bool)

(declare-fun e!571642 () Bool)

(assert (=> b!1016086 (= e!571641 e!571642)))

(declare-fun res!681648 () Bool)

(assert (=> b!1016086 (=> (not res!681648) (not e!571642))))

(declare-fun dynLambda!1913 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016086 (= res!681648 (dynLambda!1913 lambda!992 (h!22814 keys!40)))))

(declare-fun b!1016087 () Bool)

(assert (=> b!1016087 (= e!571642 (forall!274 (t!30629 keys!40) lambda!992))))

(assert (= (and d!121107 (not res!681647)) b!1016086))

(assert (= (and b!1016086 res!681648) b!1016087))

(declare-fun b_lambda!15509 () Bool)

(assert (=> (not b_lambda!15509) (not b!1016086)))

(declare-fun m!938057 () Bool)

(assert (=> b!1016086 m!938057))

(declare-fun m!938059 () Bool)

(assert (=> b!1016087 m!938059))

(assert (=> b!1015999 d!121107))

(declare-fun d!121113 () Bool)

(declare-fun res!681651 () Bool)

(declare-fun e!571645 () Bool)

(assert (=> d!121113 (=> res!681651 e!571645)))

(assert (=> d!121113 (= res!681651 (or (is-Nil!21616 (Cons!21615 newHead!31 l!1114)) (is-Nil!21616 (t!30628 (Cons!21615 newHead!31 l!1114)))))))

(assert (=> d!121113 (= (isStrictlySorted!605 (Cons!21615 newHead!31 l!1114)) e!571645)))

(declare-fun b!1016090 () Bool)

(declare-fun e!571646 () Bool)

(assert (=> b!1016090 (= e!571645 e!571646)))

(declare-fun res!681652 () Bool)

(assert (=> b!1016090 (=> (not res!681652) (not e!571646))))

(assert (=> b!1016090 (= res!681652 (bvslt (_1!7669 (h!22813 (Cons!21615 newHead!31 l!1114))) (_1!7669 (h!22813 (t!30628 (Cons!21615 newHead!31 l!1114))))))))

(declare-fun b!1016091 () Bool)

(assert (=> b!1016091 (= e!571646 (isStrictlySorted!605 (t!30628 (Cons!21615 newHead!31 l!1114))))))

(assert (= (and d!121113 (not res!681651)) b!1016090))

(assert (= (and b!1016090 res!681652) b!1016091))

(declare-fun m!938063 () Bool)

(assert (=> b!1016091 m!938063))

(assert (=> b!1016000 d!121113))

(declare-fun b!1016096 () Bool)

(declare-fun e!571649 () Bool)

(declare-fun tp!70731 () Bool)

(assert (=> b!1016096 (= e!571649 (and tp_is_empty!23581 tp!70731))))

(assert (=> b!1015998 (= tp!70719 e!571649)))

(assert (= (and b!1015998 (is-Cons!21615 (t!30628 l!1114))) b!1016096))

(declare-fun b_lambda!15511 () Bool)

(assert (= b_lambda!15509 (or b!1015999 b_lambda!15511)))

(declare-fun bs!29496 () Bool)

(declare-fun d!121117 () Bool)

(assert (= bs!29496 (and d!121117 b!1015999)))

(declare-fun value!178 () B!1514)

(declare-datatypes ((Option!599 0))(
  ( (Some!598 (v!14447 B!1514)) (None!597) )
))
(declare-fun getValueByKey!548 (List!21619 (_ BitVec 64)) Option!599)

(assert (=> bs!29496 (= (dynLambda!1913 lambda!992 (h!22814 keys!40)) (= (getValueByKey!548 l!1114 (h!22814 keys!40)) (Some!598 value!178)))))

(declare-fun m!938065 () Bool)

(assert (=> bs!29496 m!938065))

(assert (=> b!1016086 d!121117))

(push 1)

(assert (not b!1016074))

(assert tp_is_empty!23581)

(assert (not b!1016096))

(assert (not bs!29496))

(assert (not b!1016087))

(assert (not b!1016091))

(assert (not b_lambda!15511))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

