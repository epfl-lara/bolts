; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87998 () Bool)

(assert start!87998)

(declare-fun b!1015802 () Bool)

(assert (=> b!1015802 true))

(assert (=> b!1015802 true))

(declare-fun bs!29464 () Bool)

(declare-fun b!1015800 () Bool)

(assert (= bs!29464 (and b!1015800 b!1015802)))

(declare-fun lambda!971 () Int)

(declare-fun lambda!970 () Int)

(declare-datatypes ((B!1512 0))(
  ( (B!1513 (val!11840 Int)) )
))
(declare-datatypes ((tuple2!15316 0))(
  ( (tuple2!15317 (_1!7668 (_ BitVec 64)) (_2!7668 B!1512)) )
))
(declare-datatypes ((List!21617 0))(
  ( (Nil!21614) (Cons!21613 (h!22811 tuple2!15316) (t!30626 List!21617)) )
))
(declare-fun lt!449199 () List!21617)

(declare-fun l!1114 () List!21617)

(assert (=> bs!29464 (= (= lt!449199 l!1114) (= lambda!971 lambda!970))))

(assert (=> b!1015800 true))

(assert (=> b!1015800 true))

(declare-fun e!571462 () Bool)

(declare-fun isStrictlySorted!604 (List!21617) Bool)

(assert (=> b!1015800 (= e!571462 (isStrictlySorted!604 lt!449199))))

(declare-datatypes ((List!21618 0))(
  ( (Nil!21615) (Cons!21614 (h!22812 (_ BitVec 64)) (t!30627 List!21618)) )
))
(declare-fun keys!40 () List!21618)

(declare-fun forall!273 (List!21618 Int) Bool)

(assert (=> b!1015800 (forall!273 (t!30627 keys!40) lambda!971)))

(declare-fun value!178 () B!1512)

(declare-datatypes ((Unit!33208 0))(
  ( (Unit!33209) )
))
(declare-fun lt!449202 () Unit!33208)

(declare-fun newHead!31 () tuple2!15316)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!53 (List!21617 List!21618 B!1512 tuple2!15316) Unit!33208)

(assert (=> b!1015800 (= lt!449202 (lemmaForallGetValueByKeySameWithASmallerHead!53 l!1114 (t!30627 keys!40) value!178 newHead!31))))

(declare-fun b!1015801 () Bool)

(declare-fun res!681451 () Bool)

(declare-fun e!571463 () Bool)

(assert (=> b!1015801 (=> (not res!681451) (not e!571463))))

(assert (=> b!1015801 (= res!681451 (is-Cons!21614 keys!40))))

(declare-fun res!681449 () Bool)

(assert (=> b!1015802 (=> (not res!681449) (not e!571463))))

(assert (=> b!1015802 (= res!681449 (forall!273 keys!40 lambda!970))))

(declare-fun b!1015803 () Bool)

(assert (=> b!1015803 (= e!571463 (not e!571462))))

(declare-fun res!681452 () Bool)

(assert (=> b!1015803 (=> res!681452 e!571462)))

(assert (=> b!1015803 (= res!681452 (not (forall!273 (t!30627 keys!40) lambda!970)))))

(declare-datatypes ((Option!597 0))(
  ( (Some!596 (v!14445 B!1512)) (None!595) )
))
(declare-fun isDefined!398 (Option!597) Bool)

(declare-fun getValueByKey!546 (List!21617 (_ BitVec 64)) Option!597)

(assert (=> b!1015803 (isDefined!398 (getValueByKey!546 lt!449199 (h!22812 keys!40)))))

(declare-fun lt!449200 () Unit!33208)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!382 (List!21617 (_ BitVec 64)) Unit!33208)

(assert (=> b!1015803 (= lt!449200 (lemmaContainsKeyImpliesGetValueByKeyDefined!382 lt!449199 (h!22812 keys!40)))))

(assert (=> b!1015803 (= lt!449199 (Cons!21613 newHead!31 l!1114))))

(declare-fun containsKey!490 (List!21617 (_ BitVec 64)) Bool)

(assert (=> b!1015803 (containsKey!490 l!1114 (h!22812 keys!40))))

(declare-fun lt!449201 () Unit!33208)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!9 (List!21617 (_ BitVec 64)) Unit!33208)

(assert (=> b!1015803 (= lt!449201 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!9 l!1114 (h!22812 keys!40)))))

(declare-fun res!681450 () Bool)

(assert (=> start!87998 (=> (not res!681450) (not e!571463))))

(assert (=> start!87998 (= res!681450 (isStrictlySorted!604 l!1114))))

(assert (=> start!87998 e!571463))

(declare-fun e!571461 () Bool)

(assert (=> start!87998 e!571461))

(assert (=> start!87998 true))

(declare-fun tp_is_empty!23579 () Bool)

(assert (=> start!87998 tp_is_empty!23579))

(declare-fun b!1015804 () Bool)

(declare-fun res!681454 () Bool)

(assert (=> b!1015804 (=> (not res!681454) (not e!571463))))

(declare-fun head!955 (List!21617) tuple2!15316)

(assert (=> b!1015804 (= res!681454 (bvslt (_1!7668 newHead!31) (_1!7668 (head!955 l!1114))))))

(declare-fun b!1015805 () Bool)

(declare-fun res!681453 () Bool)

(assert (=> b!1015805 (=> (not res!681453) (not e!571463))))

(declare-fun isEmpty!872 (List!21617) Bool)

(assert (=> b!1015805 (= res!681453 (not (isEmpty!872 l!1114)))))

(declare-fun b!1015806 () Bool)

(declare-fun tp!70707 () Bool)

(assert (=> b!1015806 (= e!571461 (and tp_is_empty!23579 tp!70707))))

(assert (= (and start!87998 res!681450) b!1015805))

(assert (= (and b!1015805 res!681453) b!1015802))

(assert (= (and b!1015802 res!681449) b!1015804))

(assert (= (and b!1015804 res!681454) b!1015801))

(assert (= (and b!1015801 res!681451) b!1015803))

(assert (= (and b!1015803 (not res!681452)) b!1015800))

(assert (= (and start!87998 (is-Cons!21613 l!1114)) b!1015806))

(declare-fun m!937867 () Bool)

(assert (=> b!1015804 m!937867))

(declare-fun m!937869 () Bool)

(assert (=> b!1015805 m!937869))

(declare-fun m!937871 () Bool)

(assert (=> b!1015802 m!937871))

(declare-fun m!937873 () Bool)

(assert (=> b!1015800 m!937873))

(declare-fun m!937875 () Bool)

(assert (=> b!1015800 m!937875))

(declare-fun m!937877 () Bool)

(assert (=> b!1015800 m!937877))

(declare-fun m!937879 () Bool)

(assert (=> start!87998 m!937879))

(declare-fun m!937881 () Bool)

(assert (=> b!1015803 m!937881))

(declare-fun m!937883 () Bool)

(assert (=> b!1015803 m!937883))

(declare-fun m!937885 () Bool)

(assert (=> b!1015803 m!937885))

(declare-fun m!937887 () Bool)

(assert (=> b!1015803 m!937887))

(declare-fun m!937889 () Bool)

(assert (=> b!1015803 m!937889))

(declare-fun m!937891 () Bool)

(assert (=> b!1015803 m!937891))

(assert (=> b!1015803 m!937885))

(push 1)

(assert (not b!1015806))

(assert (not b!1015802))

(assert (not b!1015803))

(assert (not b!1015804))

(assert (not b!1015805))

(assert (not b!1015800))

(assert (not start!87998))

(assert tp_is_empty!23579)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121001 () Bool)

(declare-fun res!681477 () Bool)

(declare-fun e!571486 () Bool)

(assert (=> d!121001 (=> res!681477 e!571486)))

(assert (=> d!121001 (= res!681477 (or (is-Nil!21614 l!1114) (is-Nil!21614 (t!30626 l!1114))))))

(assert (=> d!121001 (= (isStrictlySorted!604 l!1114) e!571486)))

(declare-fun b!1015833 () Bool)

(declare-fun e!571487 () Bool)

(assert (=> b!1015833 (= e!571486 e!571487)))

(declare-fun res!681478 () Bool)

(assert (=> b!1015833 (=> (not res!681478) (not e!571487))))

(assert (=> b!1015833 (= res!681478 (bvslt (_1!7668 (h!22811 l!1114)) (_1!7668 (h!22811 (t!30626 l!1114)))))))

(declare-fun b!1015834 () Bool)

(assert (=> b!1015834 (= e!571487 (isStrictlySorted!604 (t!30626 l!1114)))))

(assert (= (and d!121001 (not res!681477)) b!1015833))

(assert (= (and b!1015833 res!681478) b!1015834))

(declare-fun m!937901 () Bool)

(assert (=> b!1015834 m!937901))

(assert (=> start!87998 d!121001))

(declare-fun d!121005 () Bool)

(assert (=> d!121005 (= (head!955 l!1114) (h!22811 l!1114))))

(assert (=> b!1015804 d!121005))

(declare-fun d!121007 () Bool)

(assert (=> d!121007 (= (isEmpty!872 l!1114) (is-Nil!21614 l!1114))))

(assert (=> b!1015805 d!121007))

(declare-fun d!121009 () Bool)

(assert (=> d!121009 (isDefined!398 (getValueByKey!546 lt!449199 (h!22812 keys!40)))))

(declare-fun lt!449211 () Unit!33208)

(declare-fun choose!1651 (List!21617 (_ BitVec 64)) Unit!33208)

(assert (=> d!121009 (= lt!449211 (choose!1651 lt!449199 (h!22812 keys!40)))))

(declare-fun e!571496 () Bool)

(assert (=> d!121009 e!571496))

(declare-fun res!681493 () Bool)

(assert (=> d!121009 (=> (not res!681493) (not e!571496))))

(assert (=> d!121009 (= res!681493 (isStrictlySorted!604 lt!449199))))

(assert (=> d!121009 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!382 lt!449199 (h!22812 keys!40)) lt!449211)))

(declare-fun b!1015849 () Bool)

(assert (=> b!1015849 (= e!571496 (containsKey!490 lt!449199 (h!22812 keys!40)))))

(assert (= (and d!121009 res!681493) b!1015849))

(assert (=> d!121009 m!937885))

(assert (=> d!121009 m!937885))

(assert (=> d!121009 m!937887))

(declare-fun m!937909 () Bool)

(assert (=> d!121009 m!937909))

(assert (=> d!121009 m!937873))

(declare-fun m!937911 () Bool)

(assert (=> b!1015849 m!937911))

(assert (=> b!1015803 d!121009))

(declare-fun d!121015 () Bool)

(declare-fun res!681505 () Bool)

(declare-fun e!571508 () Bool)

(assert (=> d!121015 (=> res!681505 e!571508)))

(assert (=> d!121015 (= res!681505 (is-Nil!21615 (t!30627 keys!40)))))

(assert (=> d!121015 (= (forall!273 (t!30627 keys!40) lambda!970) e!571508)))

(declare-fun b!1015863 () Bool)

(declare-fun e!571509 () Bool)

(assert (=> b!1015863 (= e!571508 e!571509)))

(declare-fun res!681506 () Bool)

(assert (=> b!1015863 (=> (not res!681506) (not e!571509))))

(declare-fun dynLambda!1910 (Int (_ BitVec 64)) Bool)

(assert (=> b!1015863 (= res!681506 (dynLambda!1910 lambda!970 (h!22812 (t!30627 keys!40))))))

(declare-fun b!1015864 () Bool)

(assert (=> b!1015864 (= e!571509 (forall!273 (t!30627 (t!30627 keys!40)) lambda!970))))

(assert (= (and d!121015 (not res!681505)) b!1015863))

(assert (= (and b!1015863 res!681506) b!1015864))

(declare-fun b_lambda!15473 () Bool)

(assert (=> (not b_lambda!15473) (not b!1015863)))

(declare-fun m!937927 () Bool)

(assert (=> b!1015863 m!937927))

(declare-fun m!937929 () Bool)

(assert (=> b!1015864 m!937929))

(assert (=> b!1015803 d!121015))

(declare-fun b!1015888 () Bool)

(declare-fun e!571525 () Option!597)

(assert (=> b!1015888 (= e!571525 (Some!596 (_2!7668 (h!22811 lt!449199))))))

(declare-fun b!1015892 () Bool)

(declare-fun e!571527 () Option!597)

(assert (=> b!1015892 (= e!571527 (getValueByKey!546 (t!30626 lt!449199) (h!22812 keys!40)))))

(declare-fun b!1015890 () Bool)

(assert (=> b!1015890 (= e!571525 e!571527)))

(declare-fun c!102855 () Bool)

(assert (=> b!1015890 (= c!102855 (and (is-Cons!21613 lt!449199) (not (= (_1!7668 (h!22811 lt!449199)) (h!22812 keys!40)))))))

(declare-fun b!1015894 () Bool)

(assert (=> b!1015894 (= e!571527 None!595)))

(declare-fun d!121025 () Bool)

(declare-fun c!102853 () Bool)

(assert (=> d!121025 (= c!102853 (and (is-Cons!21613 lt!449199) (= (_1!7668 (h!22811 lt!449199)) (h!22812 keys!40))))))

(assert (=> d!121025 (= (getValueByKey!546 lt!449199 (h!22812 keys!40)) e!571525)))

(assert (= (and d!121025 c!102853) b!1015888))

(assert (= (and d!121025 (not c!102853)) b!1015890))

(assert (= (and b!1015890 c!102855) b!1015892))

(assert (= (and b!1015890 (not c!102855)) b!1015894))

(declare-fun m!937936 () Bool)

(assert (=> b!1015892 m!937936))

(assert (=> b!1015803 d!121025))

(declare-fun d!121034 () Bool)

(assert (=> d!121034 (containsKey!490 l!1114 (h!22812 keys!40))))

(declare-fun lt!449220 () Unit!33208)

(declare-fun choose!1654 (List!21617 (_ BitVec 64)) Unit!33208)

