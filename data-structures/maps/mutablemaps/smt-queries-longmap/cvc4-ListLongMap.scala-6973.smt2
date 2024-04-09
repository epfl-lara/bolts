; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88278 () Bool)

(assert start!88278)

(declare-fun b!1016832 () Bool)

(assert (=> b!1016832 true))

(assert (=> b!1016832 true))

(declare-fun b!1016829 () Bool)

(declare-fun e!572085 () Bool)

(declare-fun tp_is_empty!23615 () Bool)

(declare-fun tp!70817 () Bool)

(assert (=> b!1016829 (= e!572085 (and tp_is_empty!23615 tp!70817))))

(declare-fun b!1016830 () Bool)

(declare-fun res!682122 () Bool)

(declare-fun e!572084 () Bool)

(assert (=> b!1016830 (=> (not res!682122) (not e!572084))))

(declare-datatypes ((List!21653 0))(
  ( (Nil!21650) (Cons!21649 (h!22847 (_ BitVec 64)) (t!30662 List!21653)) )
))
(declare-fun keys!40 () List!21653)

(assert (=> b!1016830 (= res!682122 (is-Cons!21649 keys!40))))

(declare-fun b!1016831 () Bool)

(declare-fun e!572086 () Bool)

(assert (=> b!1016831 (= e!572084 (not e!572086))))

(declare-fun res!682121 () Bool)

(assert (=> b!1016831 (=> res!682121 e!572086)))

(declare-fun lambda!1055 () Int)

(declare-fun forall!291 (List!21653 Int) Bool)

(assert (=> b!1016831 (= res!682121 (not (forall!291 (t!30662 keys!40) lambda!1055)))))

(declare-datatypes ((B!1548 0))(
  ( (B!1549 (val!11858 Int)) )
))
(declare-datatypes ((tuple2!15352 0))(
  ( (tuple2!15353 (_1!7686 (_ BitVec 64)) (_2!7686 B!1548)) )
))
(declare-datatypes ((List!21654 0))(
  ( (Nil!21651) (Cons!21650 (h!22848 tuple2!15352) (t!30663 List!21654)) )
))
(declare-fun lt!449337 () List!21654)

(declare-datatypes ((Option!614 0))(
  ( (Some!613 (v!14462 B!1548)) (None!612) )
))
(declare-fun isDefined!410 (Option!614) Bool)

(declare-fun getValueByKey!563 (List!21654 (_ BitVec 64)) Option!614)

(assert (=> b!1016831 (isDefined!410 (getValueByKey!563 lt!449337 (h!22847 keys!40)))))

(declare-datatypes ((Unit!33226 0))(
  ( (Unit!33227) )
))
(declare-fun lt!449335 () Unit!33226)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!388 (List!21654 (_ BitVec 64)) Unit!33226)

(assert (=> b!1016831 (= lt!449335 (lemmaContainsKeyImpliesGetValueByKeyDefined!388 lt!449337 (h!22847 keys!40)))))

(declare-fun newHead!31 () tuple2!15352)

(declare-fun l!1114 () List!21654)

(assert (=> b!1016831 (= lt!449337 (Cons!21650 newHead!31 l!1114))))

(declare-fun containsKey!499 (List!21654 (_ BitVec 64)) Bool)

(assert (=> b!1016831 (containsKey!499 l!1114 (h!22847 keys!40))))

(declare-fun lt!449336 () Unit!33226)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!18 (List!21654 (_ BitVec 64)) Unit!33226)

(assert (=> b!1016831 (= lt!449336 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!18 l!1114 (h!22847 keys!40)))))

(declare-fun res!682120 () Bool)

(assert (=> start!88278 (=> (not res!682120) (not e!572084))))

(declare-fun isStrictlySorted!622 (List!21654) Bool)

(assert (=> start!88278 (= res!682120 (isStrictlySorted!622 l!1114))))

(assert (=> start!88278 e!572084))

(assert (=> start!88278 e!572085))

(assert (=> start!88278 true))

(assert (=> start!88278 tp_is_empty!23615))

(declare-fun res!682123 () Bool)

(assert (=> b!1016832 (=> (not res!682123) (not e!572084))))

(assert (=> b!1016832 (= res!682123 (forall!291 keys!40 lambda!1055))))

(declare-fun b!1016833 () Bool)

(declare-fun ListPrimitiveSize!126 (List!21653) Int)

(assert (=> b!1016833 (= e!572086 (< (ListPrimitiveSize!126 (t!30662 keys!40)) (ListPrimitiveSize!126 keys!40)))))

(declare-fun b!1016834 () Bool)

(declare-fun res!682124 () Bool)

(assert (=> b!1016834 (=> (not res!682124) (not e!572084))))

(declare-fun isEmpty!898 (List!21654) Bool)

(assert (=> b!1016834 (= res!682124 (not (isEmpty!898 l!1114)))))

(declare-fun b!1016835 () Bool)

(declare-fun res!682125 () Bool)

(assert (=> b!1016835 (=> (not res!682125) (not e!572084))))

(declare-fun head!973 (List!21654) tuple2!15352)

(assert (=> b!1016835 (= res!682125 (bvslt (_1!7686 newHead!31) (_1!7686 (head!973 l!1114))))))

(assert (= (and start!88278 res!682120) b!1016834))

(assert (= (and b!1016834 res!682124) b!1016832))

(assert (= (and b!1016832 res!682123) b!1016835))

(assert (= (and b!1016835 res!682125) b!1016830))

(assert (= (and b!1016830 res!682122) b!1016831))

(assert (= (and b!1016831 (not res!682121)) b!1016833))

(assert (= (and start!88278 (is-Cons!21650 l!1114)) b!1016829))

(declare-fun m!938513 () Bool)

(assert (=> b!1016832 m!938513))

(declare-fun m!938515 () Bool)

(assert (=> b!1016833 m!938515))

(declare-fun m!938517 () Bool)

(assert (=> b!1016833 m!938517))

(declare-fun m!938519 () Bool)

(assert (=> b!1016834 m!938519))

(declare-fun m!938521 () Bool)

(assert (=> b!1016835 m!938521))

(declare-fun m!938523 () Bool)

(assert (=> b!1016831 m!938523))

(declare-fun m!938525 () Bool)

(assert (=> b!1016831 m!938525))

(declare-fun m!938527 () Bool)

(assert (=> b!1016831 m!938527))

(declare-fun m!938529 () Bool)

(assert (=> b!1016831 m!938529))

(declare-fun m!938531 () Bool)

(assert (=> b!1016831 m!938531))

(assert (=> b!1016831 m!938525))

(declare-fun m!938533 () Bool)

(assert (=> b!1016831 m!938533))

(declare-fun m!938535 () Bool)

(assert (=> start!88278 m!938535))

(push 1)

(assert (not start!88278))

(assert (not b!1016834))

(assert (not b!1016835))

(assert (not b!1016832))

(assert (not b!1016831))

(assert (not b!1016829))

(assert tp_is_empty!23615)

(assert (not b!1016833))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121371 () Bool)

(declare-fun lt!449343 () Int)

(assert (=> d!121371 (>= lt!449343 0)))

(declare-fun e!572104 () Int)

(assert (=> d!121371 (= lt!449343 e!572104)))

(declare-fun c!102913 () Bool)

(assert (=> d!121371 (= c!102913 (is-Nil!21650 (t!30662 keys!40)))))

(assert (=> d!121371 (= (ListPrimitiveSize!126 (t!30662 keys!40)) lt!449343)))

(declare-fun b!1016859 () Bool)

(assert (=> b!1016859 (= e!572104 0)))

(declare-fun b!1016860 () Bool)

(assert (=> b!1016860 (= e!572104 (+ 1 (ListPrimitiveSize!126 (t!30662 (t!30662 keys!40)))))))

(assert (= (and d!121371 c!102913) b!1016859))

(assert (= (and d!121371 (not c!102913)) b!1016860))

(declare-fun m!938549 () Bool)

(assert (=> b!1016860 m!938549))

(assert (=> b!1016833 d!121371))

(declare-fun d!121375 () Bool)

(declare-fun lt!449344 () Int)

(assert (=> d!121375 (>= lt!449344 0)))

(declare-fun e!572107 () Int)

(assert (=> d!121375 (= lt!449344 e!572107)))

(declare-fun c!102916 () Bool)

(assert (=> d!121375 (= c!102916 (is-Nil!21650 keys!40))))

(assert (=> d!121375 (= (ListPrimitiveSize!126 keys!40) lt!449344)))

(declare-fun b!1016865 () Bool)

(assert (=> b!1016865 (= e!572107 0)))

(declare-fun b!1016866 () Bool)

(assert (=> b!1016866 (= e!572107 (+ 1 (ListPrimitiveSize!126 (t!30662 keys!40))))))

(assert (= (and d!121375 c!102916) b!1016865))

(assert (= (and d!121375 (not c!102916)) b!1016866))

(assert (=> b!1016866 m!938515))

(assert (=> b!1016833 d!121375))

(declare-fun d!121377 () Bool)

(declare-fun res!682145 () Bool)

(declare-fun e!572116 () Bool)

(assert (=> d!121377 (=> res!682145 e!572116)))

(assert (=> d!121377 (= res!682145 (is-Nil!21650 keys!40))))

(assert (=> d!121377 (= (forall!291 keys!40 lambda!1055) e!572116)))

(declare-fun b!1016879 () Bool)

(declare-fun e!572117 () Bool)

(assert (=> b!1016879 (= e!572116 e!572117)))

(declare-fun res!682146 () Bool)

(assert (=> b!1016879 (=> (not res!682146) (not e!572117))))

(declare-fun dynLambda!1928 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016879 (= res!682146 (dynLambda!1928 lambda!1055 (h!22847 keys!40)))))

(declare-fun b!1016880 () Bool)

(assert (=> b!1016880 (= e!572117 (forall!291 (t!30662 keys!40) lambda!1055))))

(assert (= (and d!121377 (not res!682145)) b!1016879))

(assert (= (and b!1016879 res!682146) b!1016880))

(declare-fun b_lambda!15585 () Bool)

(assert (=> (not b_lambda!15585) (not b!1016879)))

(declare-fun m!938553 () Bool)

(assert (=> b!1016879 m!938553))

(assert (=> b!1016880 m!938523))

(assert (=> b!1016832 d!121377))

(declare-fun d!121383 () Bool)

(declare-fun res!682163 () Bool)

(declare-fun e!572134 () Bool)

(assert (=> d!121383 (=> res!682163 e!572134)))

(assert (=> d!121383 (= res!682163 (or (is-Nil!21651 l!1114) (is-Nil!21651 (t!30663 l!1114))))))

(assert (=> d!121383 (= (isStrictlySorted!622 l!1114) e!572134)))

(declare-fun b!1016897 () Bool)

(declare-fun e!572135 () Bool)

(assert (=> b!1016897 (= e!572134 e!572135)))

(declare-fun res!682164 () Bool)

(assert (=> b!1016897 (=> (not res!682164) (not e!572135))))

(assert (=> b!1016897 (= res!682164 (bvslt (_1!7686 (h!22848 l!1114)) (_1!7686 (h!22848 (t!30663 l!1114)))))))

(declare-fun b!1016898 () Bool)

(assert (=> b!1016898 (= e!572135 (isStrictlySorted!622 (t!30663 l!1114)))))

(assert (= (and d!121383 (not res!682163)) b!1016897))

(assert (= (and b!1016897 res!682164) b!1016898))

(declare-fun m!938561 () Bool)

(assert (=> b!1016898 m!938561))

(assert (=> start!88278 d!121383))

(declare-fun d!121389 () Bool)

(declare-fun res!682180 () Bool)

(declare-fun e!572151 () Bool)

(assert (=> d!121389 (=> res!682180 e!572151)))

(assert (=> d!121389 (= res!682180 (and (is-Cons!21650 l!1114) (= (_1!7686 (h!22848 l!1114)) (h!22847 keys!40))))))

(assert (=> d!121389 (= (containsKey!499 l!1114 (h!22847 keys!40)) e!572151)))

(declare-fun b!1016914 () Bool)

(declare-fun e!572152 () Bool)

(assert (=> b!1016914 (= e!572151 e!572152)))

(declare-fun res!682181 () Bool)

(assert (=> b!1016914 (=> (not res!682181) (not e!572152))))

(assert (=> b!1016914 (= res!682181 (and (or (not (is-Cons!21650 l!1114)) (bvsle (_1!7686 (h!22848 l!1114)) (h!22847 keys!40))) (is-Cons!21650 l!1114) (bvslt (_1!7686 (h!22848 l!1114)) (h!22847 keys!40))))))

(declare-fun b!1016915 () Bool)

(assert (=> b!1016915 (= e!572152 (containsKey!499 (t!30663 l!1114) (h!22847 keys!40)))))

(assert (= (and d!121389 (not res!682180)) b!1016914))

(assert (= (and b!1016914 res!682181) b!1016915))

(declare-fun m!938573 () Bool)

(assert (=> b!1016915 m!938573))

(assert (=> b!1016831 d!121389))

(declare-fun d!121397 () Bool)

(declare-fun res!682182 () Bool)

(declare-fun e!572153 () Bool)

(assert (=> d!121397 (=> res!682182 e!572153)))

(assert (=> d!121397 (= res!682182 (is-Nil!21650 (t!30662 keys!40)))))

(assert (=> d!121397 (= (forall!291 (t!30662 keys!40) lambda!1055) e!572153)))

(declare-fun b!1016916 () Bool)

(declare-fun e!572154 () Bool)

(assert (=> b!1016916 (= e!572153 e!572154)))

(declare-fun res!682183 () Bool)

(assert (=> b!1016916 (=> (not res!682183) (not e!572154))))

(assert (=> b!1016916 (= res!682183 (dynLambda!1928 lambda!1055 (h!22847 (t!30662 keys!40))))))

(declare-fun b!1016917 () Bool)

(assert (=> b!1016917 (= e!572154 (forall!291 (t!30662 (t!30662 keys!40)) lambda!1055))))

(assert (= (and d!121397 (not res!682182)) b!1016916))

(assert (= (and b!1016916 res!682183) b!1016917))

(declare-fun b_lambda!15591 () Bool)

(assert (=> (not b_lambda!15591) (not b!1016916)))

(declare-fun m!938575 () Bool)

(assert (=> b!1016916 m!938575))

(declare-fun m!938577 () Bool)

(assert (=> b!1016917 m!938577))

(assert (=> b!1016831 d!121397))

(declare-fun d!121399 () Bool)

(assert (=> d!121399 (containsKey!499 l!1114 (h!22847 keys!40))))

(declare-fun lt!449357 () Unit!33226)

(declare-fun choose!1668 (List!21654 (_ BitVec 64)) Unit!33226)

(assert (=> d!121399 (= lt!449357 (choose!1668 l!1114 (h!22847 keys!40)))))

