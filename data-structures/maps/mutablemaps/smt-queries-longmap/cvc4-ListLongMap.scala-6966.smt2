; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87992 () Bool)

(assert start!87992)

(declare-fun b!1015729 () Bool)

(assert (=> b!1015729 true))

(assert (=> b!1015729 true))

(declare-fun res!681398 () Bool)

(declare-fun e!571434 () Bool)

(assert (=> start!87992 (=> (not res!681398) (not e!571434))))

(declare-datatypes ((B!1506 0))(
  ( (B!1507 (val!11837 Int)) )
))
(declare-datatypes ((tuple2!15310 0))(
  ( (tuple2!15311 (_1!7665 (_ BitVec 64)) (_2!7665 B!1506)) )
))
(declare-datatypes ((List!21611 0))(
  ( (Nil!21608) (Cons!21607 (h!22805 tuple2!15310) (t!30620 List!21611)) )
))
(declare-fun l!1114 () List!21611)

(declare-fun isStrictlySorted!601 (List!21611) Bool)

(assert (=> start!87992 (= res!681398 (isStrictlySorted!601 l!1114))))

(assert (=> start!87992 e!571434))

(declare-fun e!571436 () Bool)

(assert (=> start!87992 e!571436))

(assert (=> start!87992 true))

(declare-fun tp_is_empty!23573 () Bool)

(assert (=> start!87992 tp_is_empty!23573))

(declare-fun b!1015725 () Bool)

(declare-fun res!681397 () Bool)

(assert (=> b!1015725 (=> (not res!681397) (not e!571434))))

(declare-datatypes ((List!21612 0))(
  ( (Nil!21609) (Cons!21608 (h!22806 (_ BitVec 64)) (t!30621 List!21612)) )
))
(declare-fun keys!40 () List!21612)

(assert (=> b!1015725 (= res!681397 (is-Cons!21608 keys!40))))

(declare-fun b!1015726 () Bool)

(declare-fun e!571435 () Bool)

(declare-fun lambda!947 () Int)

(declare-fun forall!270 (List!21612 Int) Bool)

(assert (=> b!1015726 (= e!571435 (forall!270 (t!30621 keys!40) lambda!947))))

(declare-fun b!1015727 () Bool)

(declare-fun res!681395 () Bool)

(assert (=> b!1015727 (=> (not res!681395) (not e!571434))))

(declare-fun isEmpty!869 (List!21611) Bool)

(assert (=> b!1015727 (= res!681395 (not (isEmpty!869 l!1114)))))

(declare-fun b!1015728 () Bool)

(declare-fun tp!70698 () Bool)

(assert (=> b!1015728 (= e!571436 (and tp_is_empty!23573 tp!70698))))

(declare-fun res!681400 () Bool)

(assert (=> b!1015729 (=> (not res!681400) (not e!571434))))

(assert (=> b!1015729 (= res!681400 (forall!270 keys!40 lambda!947))))

(declare-fun b!1015730 () Bool)

(assert (=> b!1015730 (= e!571434 (not e!571435))))

(declare-fun res!681396 () Bool)

(assert (=> b!1015730 (=> res!681396 e!571435)))

(assert (=> b!1015730 (= res!681396 (not (forall!270 (t!30621 keys!40) lambda!947)))))

(declare-fun lt!449166 () List!21611)

(declare-datatypes ((Option!594 0))(
  ( (Some!593 (v!14442 B!1506)) (None!592) )
))
(declare-fun isDefined!395 (Option!594) Bool)

(declare-fun getValueByKey!543 (List!21611 (_ BitVec 64)) Option!594)

(assert (=> b!1015730 (isDefined!395 (getValueByKey!543 lt!449166 (h!22806 keys!40)))))

(declare-datatypes ((Unit!33202 0))(
  ( (Unit!33203) )
))
(declare-fun lt!449164 () Unit!33202)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!379 (List!21611 (_ BitVec 64)) Unit!33202)

(assert (=> b!1015730 (= lt!449164 (lemmaContainsKeyImpliesGetValueByKeyDefined!379 lt!449166 (h!22806 keys!40)))))

(declare-fun newHead!31 () tuple2!15310)

(assert (=> b!1015730 (= lt!449166 (Cons!21607 newHead!31 l!1114))))

(declare-fun containsKey!487 (List!21611 (_ BitVec 64)) Bool)

(assert (=> b!1015730 (containsKey!487 l!1114 (h!22806 keys!40))))

(declare-fun lt!449165 () Unit!33202)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!6 (List!21611 (_ BitVec 64)) Unit!33202)

(assert (=> b!1015730 (= lt!449165 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!6 l!1114 (h!22806 keys!40)))))

(declare-fun b!1015731 () Bool)

(declare-fun res!681399 () Bool)

(assert (=> b!1015731 (=> (not res!681399) (not e!571434))))

(declare-fun head!952 (List!21611) tuple2!15310)

(assert (=> b!1015731 (= res!681399 (bvslt (_1!7665 newHead!31) (_1!7665 (head!952 l!1114))))))

(assert (= (and start!87992 res!681398) b!1015727))

(assert (= (and b!1015727 res!681395) b!1015729))

(assert (= (and b!1015729 res!681400) b!1015731))

(assert (= (and b!1015731 res!681399) b!1015725))

(assert (= (and b!1015725 res!681397) b!1015730))

(assert (= (and b!1015730 (not res!681396)) b!1015726))

(assert (= (and start!87992 (is-Cons!21607 l!1114)) b!1015728))

(declare-fun m!937795 () Bool)

(assert (=> b!1015729 m!937795))

(declare-fun m!937797 () Bool)

(assert (=> start!87992 m!937797))

(declare-fun m!937799 () Bool)

(assert (=> b!1015730 m!937799))

(declare-fun m!937801 () Bool)

(assert (=> b!1015730 m!937801))

(declare-fun m!937803 () Bool)

(assert (=> b!1015730 m!937803))

(declare-fun m!937805 () Bool)

(assert (=> b!1015730 m!937805))

(declare-fun m!937807 () Bool)

(assert (=> b!1015730 m!937807))

(declare-fun m!937809 () Bool)

(assert (=> b!1015730 m!937809))

(assert (=> b!1015730 m!937803))

(declare-fun m!937811 () Bool)

(assert (=> b!1015727 m!937811))

(declare-fun m!937813 () Bool)

(assert (=> b!1015731 m!937813))

(assert (=> b!1015726 m!937809))

(push 1)

(assert (not b!1015727))

(assert (not b!1015729))

(assert (not b!1015728))

(assert (not b!1015726))

(assert (not start!87992))

(assert (not b!1015730))

(assert tp_is_empty!23573)

(assert (not b!1015731))

(check-sat)

