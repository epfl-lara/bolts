; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87988 () Bool)

(assert start!87988)

(declare-fun b!1015676 () Bool)

(assert (=> b!1015676 true))

(assert (=> b!1015676 true))

(declare-fun b!1015675 () Bool)

(declare-fun e!571418 () Bool)

(declare-fun tp_is_empty!23569 () Bool)

(declare-fun tp!70692 () Bool)

(assert (=> b!1015675 (= e!571418 (and tp_is_empty!23569 tp!70692))))

(declare-fun res!681364 () Bool)

(declare-fun e!571416 () Bool)

(assert (=> start!87988 (=> (not res!681364) (not e!571416))))

(declare-datatypes ((B!1502 0))(
  ( (B!1503 (val!11835 Int)) )
))
(declare-datatypes ((tuple2!15306 0))(
  ( (tuple2!15307 (_1!7663 (_ BitVec 64)) (_2!7663 B!1502)) )
))
(declare-datatypes ((List!21607 0))(
  ( (Nil!21604) (Cons!21603 (h!22801 tuple2!15306) (t!30616 List!21607)) )
))
(declare-fun l!1114 () List!21607)

(declare-fun isStrictlySorted!599 (List!21607) Bool)

(assert (=> start!87988 (= res!681364 (isStrictlySorted!599 l!1114))))

(assert (=> start!87988 e!571416))

(assert (=> start!87988 e!571418))

(assert (=> start!87988 true))

(assert (=> start!87988 tp_is_empty!23569))

(declare-fun res!681362 () Bool)

(assert (=> b!1015676 (=> (not res!681362) (not e!571416))))

(declare-datatypes ((List!21608 0))(
  ( (Nil!21605) (Cons!21604 (h!22802 (_ BitVec 64)) (t!30617 List!21608)) )
))
(declare-fun keys!40 () List!21608)

(declare-fun lambda!933 () Int)

(declare-fun forall!268 (List!21608 Int) Bool)

(assert (=> b!1015676 (= res!681362 (forall!268 keys!40 lambda!933))))

(declare-fun b!1015677 () Bool)

(declare-fun e!571417 () Bool)

(assert (=> b!1015677 (= e!571416 (not e!571417))))

(declare-fun res!681363 () Bool)

(assert (=> b!1015677 (=> res!681363 e!571417)))

(assert (=> b!1015677 (= res!681363 (not (forall!268 (t!30617 keys!40) lambda!933)))))

(declare-fun lt!449147 () List!21607)

(declare-datatypes ((Option!592 0))(
  ( (Some!591 (v!14440 B!1502)) (None!590) )
))
(declare-fun isDefined!393 (Option!592) Bool)

(declare-fun getValueByKey!541 (List!21607 (_ BitVec 64)) Option!592)

(assert (=> b!1015677 (isDefined!393 (getValueByKey!541 lt!449147 (h!22802 keys!40)))))

(declare-datatypes ((Unit!33198 0))(
  ( (Unit!33199) )
))
(declare-fun lt!449148 () Unit!33198)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!377 (List!21607 (_ BitVec 64)) Unit!33198)

(assert (=> b!1015677 (= lt!449148 (lemmaContainsKeyImpliesGetValueByKeyDefined!377 lt!449147 (h!22802 keys!40)))))

(declare-fun newHead!31 () tuple2!15306)

(assert (=> b!1015677 (= lt!449147 (Cons!21603 newHead!31 l!1114))))

(declare-fun containsKey!485 (List!21607 (_ BitVec 64)) Bool)

(assert (=> b!1015677 (containsKey!485 l!1114 (h!22802 keys!40))))

(declare-fun lt!449146 () Unit!33198)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!4 (List!21607 (_ BitVec 64)) Unit!33198)

(assert (=> b!1015677 (= lt!449146 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!4 l!1114 (h!22802 keys!40)))))

(declare-fun b!1015678 () Bool)

(assert (=> b!1015678 (= e!571417 (forall!268 (t!30617 keys!40) lambda!933))))

(declare-fun b!1015679 () Bool)

(declare-fun res!681361 () Bool)

(assert (=> b!1015679 (=> (not res!681361) (not e!571416))))

(declare-fun isEmpty!867 (List!21607) Bool)

(assert (=> b!1015679 (= res!681361 (not (isEmpty!867 l!1114)))))

(declare-fun b!1015680 () Bool)

(declare-fun res!681360 () Bool)

(assert (=> b!1015680 (=> (not res!681360) (not e!571416))))

(assert (=> b!1015680 (= res!681360 (is-Cons!21604 keys!40))))

(declare-fun b!1015681 () Bool)

(declare-fun res!681359 () Bool)

(assert (=> b!1015681 (=> (not res!681359) (not e!571416))))

(declare-fun head!950 (List!21607) tuple2!15306)

(assert (=> b!1015681 (= res!681359 (bvslt (_1!7663 newHead!31) (_1!7663 (head!950 l!1114))))))

(assert (= (and start!87988 res!681364) b!1015679))

(assert (= (and b!1015679 res!681361) b!1015676))

(assert (= (and b!1015676 res!681362) b!1015681))

(assert (= (and b!1015681 res!681359) b!1015680))

(assert (= (and b!1015680 res!681360) b!1015677))

(assert (= (and b!1015677 (not res!681363)) b!1015678))

(assert (= (and start!87988 (is-Cons!21603 l!1114)) b!1015675))

(declare-fun m!937755 () Bool)

(assert (=> b!1015681 m!937755))

(declare-fun m!937757 () Bool)

(assert (=> b!1015678 m!937757))

(declare-fun m!937759 () Bool)

(assert (=> b!1015676 m!937759))

(assert (=> b!1015677 m!937757))

(declare-fun m!937761 () Bool)

(assert (=> b!1015677 m!937761))

(declare-fun m!937763 () Bool)

(assert (=> b!1015677 m!937763))

(declare-fun m!937765 () Bool)

(assert (=> b!1015677 m!937765))

(declare-fun m!937767 () Bool)

(assert (=> b!1015677 m!937767))

(assert (=> b!1015677 m!937763))

(declare-fun m!937769 () Bool)

(assert (=> b!1015677 m!937769))

(declare-fun m!937771 () Bool)

(assert (=> b!1015679 m!937771))

(declare-fun m!937773 () Bool)

(assert (=> start!87988 m!937773))

(push 1)

(assert tp_is_empty!23569)

(assert (not start!87988))

(assert (not b!1015677))

(assert (not b!1015681))

(assert (not b!1015678))

(assert (not b!1015675))

(assert (not b!1015676))

(assert (not b!1015679))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

