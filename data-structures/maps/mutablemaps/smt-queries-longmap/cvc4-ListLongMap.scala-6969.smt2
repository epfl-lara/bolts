; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88094 () Bool)

(assert start!88094)

(declare-fun b!1016160 () Bool)

(assert (=> b!1016160 true))

(assert (=> b!1016160 true))

(declare-fun b!1016156 () Bool)

(declare-fun e!571676 () Bool)

(declare-datatypes ((List!21629 0))(
  ( (Nil!21626) (Cons!21625 (h!22823 (_ BitVec 64)) (t!30638 List!21629)) )
))
(declare-fun keys!40 () List!21629)

(declare-fun ListPrimitiveSize!123 (List!21629) Int)

(assert (=> b!1016156 (= e!571676 (< (ListPrimitiveSize!123 keys!40) 0))))

(declare-fun b!1016157 () Bool)

(declare-fun e!571675 () Bool)

(declare-fun tp_is_empty!23591 () Bool)

(declare-fun tp!70743 () Bool)

(assert (=> b!1016157 (= e!571675 (and tp_is_empty!23591 tp!70743))))

(declare-fun b!1016158 () Bool)

(declare-fun res!681694 () Bool)

(assert (=> b!1016158 (=> (not res!681694) (not e!571676))))

(declare-datatypes ((B!1524 0))(
  ( (B!1525 (val!11846 Int)) )
))
(declare-datatypes ((tuple2!15328 0))(
  ( (tuple2!15329 (_1!7674 (_ BitVec 64)) (_2!7674 B!1524)) )
))
(declare-datatypes ((List!21630 0))(
  ( (Nil!21627) (Cons!21626 (h!22824 tuple2!15328) (t!30639 List!21630)) )
))
(declare-fun l!1114 () List!21630)

(declare-fun isEmpty!880 (List!21630) Bool)

(assert (=> b!1016158 (= res!681694 (not (isEmpty!880 l!1114)))))

(declare-fun b!1016159 () Bool)

(declare-fun res!681693 () Bool)

(assert (=> b!1016159 (=> (not res!681693) (not e!571676))))

(declare-fun newHead!31 () tuple2!15328)

(declare-fun head!961 (List!21630) tuple2!15328)

(assert (=> b!1016159 (= res!681693 (bvslt (_1!7674 newHead!31) (_1!7674 (head!961 l!1114))))))

(declare-fun res!681692 () Bool)

(assert (=> start!88094 (=> (not res!681692) (not e!571676))))

(declare-fun isStrictlySorted!610 (List!21630) Bool)

(assert (=> start!88094 (= res!681692 (isStrictlySorted!610 l!1114))))

(assert (=> start!88094 e!571676))

(assert (=> start!88094 e!571675))

(assert (=> start!88094 true))

(assert (=> start!88094 tp_is_empty!23591))

(declare-fun res!681691 () Bool)

(assert (=> b!1016160 (=> (not res!681691) (not e!571676))))

(declare-fun lambda!1007 () Int)

(declare-fun forall!279 (List!21629 Int) Bool)

(assert (=> b!1016160 (= res!681691 (forall!279 keys!40 lambda!1007))))

(assert (= (and start!88094 res!681692) b!1016158))

(assert (= (and b!1016158 res!681694) b!1016160))

(assert (= (and b!1016160 res!681691) b!1016159))

(assert (= (and b!1016159 res!681693) b!1016156))

(assert (= (and start!88094 (is-Cons!21626 l!1114)) b!1016157))

(declare-fun m!938093 () Bool)

(assert (=> b!1016158 m!938093))

(declare-fun m!938095 () Bool)

(assert (=> b!1016156 m!938095))

(declare-fun m!938097 () Bool)

(assert (=> start!88094 m!938097))

(declare-fun m!938099 () Bool)

(assert (=> b!1016159 m!938099))

(declare-fun m!938101 () Bool)

(assert (=> b!1016160 m!938101))

(push 1)

(assert (not b!1016158))

(assert (not b!1016157))

(assert tp_is_empty!23591)

(assert (not b!1016160))

(assert (not b!1016156))

(assert (not b!1016159))

(assert (not start!88094))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121137 () Bool)

(assert (=> d!121137 (= (isEmpty!880 l!1114) (is-Nil!21627 l!1114))))

(assert (=> b!1016158 d!121137))

(declare-fun d!121145 () Bool)

(assert (=> d!121145 (= (head!961 l!1114) (h!22824 l!1114))))

(assert (=> b!1016159 d!121145))

(declare-fun d!121149 () Bool)

(declare-fun res!681723 () Bool)

(declare-fun e!571716 () Bool)

(assert (=> d!121149 (=> res!681723 e!571716)))

(assert (=> d!121149 (= res!681723 (is-Nil!21626 keys!40))))

(assert (=> d!121149 (= (forall!279 keys!40 lambda!1007) e!571716)))

(declare-fun b!1016214 () Bool)

(declare-fun e!571717 () Bool)

(assert (=> b!1016214 (= e!571716 e!571717)))

(declare-fun res!681724 () Bool)

(assert (=> b!1016214 (=> (not res!681724) (not e!571717))))

(declare-fun dynLambda!1917 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016214 (= res!681724 (dynLambda!1917 lambda!1007 (h!22823 keys!40)))))

(declare-fun b!1016215 () Bool)

(assert (=> b!1016215 (= e!571717 (forall!279 (t!30638 keys!40) lambda!1007))))

(assert (= (and d!121149 (not res!681723)) b!1016214))

(assert (= (and b!1016214 res!681724) b!1016215))

(declare-fun b_lambda!15523 () Bool)

(assert (=> (not b_lambda!15523) (not b!1016214)))

(declare-fun m!938121 () Bool)

(assert (=> b!1016214 m!938121))

(declare-fun m!938123 () Bool)

(assert (=> b!1016215 m!938123))

(assert (=> b!1016160 d!121149))

(declare-fun d!121155 () Bool)

(declare-fun res!681729 () Bool)

(declare-fun e!571723 () Bool)

(assert (=> d!121155 (=> res!681729 e!571723)))

(assert (=> d!121155 (= res!681729 (or (is-Nil!21627 l!1114) (is-Nil!21627 (t!30639 l!1114))))))

(assert (=> d!121155 (= (isStrictlySorted!610 l!1114) e!571723)))

(declare-fun b!1016221 () Bool)

