; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87982 () Bool)

(assert start!87982)

(declare-fun b!1015612 () Bool)

(assert (=> b!1015612 true))

(assert (=> b!1015612 true))

(declare-fun res!681316 () Bool)

(declare-fun e!571397 () Bool)

(assert (=> start!87982 (=> (not res!681316) (not e!571397))))

(declare-datatypes ((B!1496 0))(
  ( (B!1497 (val!11832 Int)) )
))
(declare-datatypes ((tuple2!15300 0))(
  ( (tuple2!15301 (_1!7660 (_ BitVec 64)) (_2!7660 B!1496)) )
))
(declare-datatypes ((List!21601 0))(
  ( (Nil!21598) (Cons!21597 (h!22795 tuple2!15300) (t!30610 List!21601)) )
))
(declare-fun l!1114 () List!21601)

(declare-fun isStrictlySorted!596 (List!21601) Bool)

(assert (=> start!87982 (= res!681316 (isStrictlySorted!596 l!1114))))

(assert (=> start!87982 e!571397))

(declare-fun e!571396 () Bool)

(assert (=> start!87982 e!571396))

(assert (=> start!87982 true))

(declare-fun tp_is_empty!23563 () Bool)

(assert (=> start!87982 tp_is_empty!23563))

(declare-fun b!1015607 () Bool)

(declare-fun res!681315 () Bool)

(assert (=> b!1015607 (=> (not res!681315) (not e!571397))))

(declare-fun newHead!31 () tuple2!15300)

(declare-fun head!947 (List!21601) tuple2!15300)

(assert (=> b!1015607 (= res!681315 (bvslt (_1!7660 newHead!31) (_1!7660 (head!947 l!1114))))))

(declare-fun b!1015608 () Bool)

(declare-fun res!681312 () Bool)

(assert (=> b!1015608 (=> (not res!681312) (not e!571397))))

(declare-fun isEmpty!864 (List!21601) Bool)

(assert (=> b!1015608 (= res!681312 (not (isEmpty!864 l!1114)))))

(declare-fun b!1015609 () Bool)

(assert (=> b!1015609 (= e!571397 (not true))))

(declare-datatypes ((List!21602 0))(
  ( (Nil!21599) (Cons!21598 (h!22796 (_ BitVec 64)) (t!30611 List!21602)) )
))
(declare-fun keys!40 () List!21602)

(declare-fun containsKey!482 (List!21601 (_ BitVec 64)) Bool)

(assert (=> b!1015609 (containsKey!482 l!1114 (h!22796 keys!40))))

(declare-datatypes ((Unit!33192 0))(
  ( (Unit!33193) )
))
(declare-fun lt!449133 () Unit!33192)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!1 (List!21601 (_ BitVec 64)) Unit!33192)

(assert (=> b!1015609 (= lt!449133 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!1 l!1114 (h!22796 keys!40)))))

(declare-fun b!1015610 () Bool)

(declare-fun tp!70683 () Bool)

(assert (=> b!1015610 (= e!571396 (and tp_is_empty!23563 tp!70683))))

(declare-fun b!1015611 () Bool)

(declare-fun res!681313 () Bool)

(assert (=> b!1015611 (=> (not res!681313) (not e!571397))))

(assert (=> b!1015611 (= res!681313 (is-Cons!21598 keys!40))))

(declare-fun res!681314 () Bool)

(assert (=> b!1015612 (=> (not res!681314) (not e!571397))))

(declare-fun lambda!920 () Int)

(declare-fun forall!265 (List!21602 Int) Bool)

(assert (=> b!1015612 (= res!681314 (forall!265 keys!40 lambda!920))))

(assert (= (and start!87982 res!681316) b!1015608))

(assert (= (and b!1015608 res!681312) b!1015612))

(assert (= (and b!1015612 res!681314) b!1015607))

(assert (= (and b!1015607 res!681315) b!1015611))

(assert (= (and b!1015611 res!681313) b!1015609))

(assert (= (and start!87982 (is-Cons!21597 l!1114)) b!1015610))

(declare-fun m!937719 () Bool)

(assert (=> b!1015608 m!937719))

(declare-fun m!937721 () Bool)

(assert (=> b!1015612 m!937721))

(declare-fun m!937723 () Bool)

(assert (=> start!87982 m!937723))

(declare-fun m!937725 () Bool)

(assert (=> b!1015609 m!937725))

(declare-fun m!937727 () Bool)

(assert (=> b!1015609 m!937727))

(declare-fun m!937729 () Bool)

(assert (=> b!1015607 m!937729))

(push 1)

(assert (not b!1015608))

(assert (not b!1015610))

(assert (not b!1015612))

(assert tp_is_empty!23563)

(assert (not b!1015609))

(assert (not b!1015607))

(assert (not start!87982))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

