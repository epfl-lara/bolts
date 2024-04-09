; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88174 () Bool)

(assert start!88174)

(declare-fun b!1016448 () Bool)

(assert (=> b!1016448 true))

(assert (=> b!1016448 true))

(declare-fun b!1016444 () Bool)

(declare-fun res!681854 () Bool)

(declare-fun e!571843 () Bool)

(assert (=> b!1016444 (=> (not res!681854) (not e!571843))))

(declare-datatypes ((B!1534 0))(
  ( (B!1535 (val!11851 Int)) )
))
(declare-datatypes ((tuple2!15338 0))(
  ( (tuple2!15339 (_1!7679 (_ BitVec 64)) (_2!7679 B!1534)) )
))
(declare-fun newHead!31 () tuple2!15338)

(declare-datatypes ((List!21639 0))(
  ( (Nil!21636) (Cons!21635 (h!22833 tuple2!15338) (t!30648 List!21639)) )
))
(declare-fun l!1114 () List!21639)

(declare-fun head!966 (List!21639) tuple2!15338)

(assert (=> b!1016444 (= res!681854 (bvslt (_1!7679 newHead!31) (_1!7679 (head!966 l!1114))))))

(declare-fun b!1016445 () Bool)

(declare-fun res!681853 () Bool)

(assert (=> b!1016445 (=> (not res!681853) (not e!571843))))

(declare-datatypes ((List!21640 0))(
  ( (Nil!21637) (Cons!21636 (h!22834 (_ BitVec 64)) (t!30649 List!21640)) )
))
(declare-fun keys!40 () List!21640)

(get-info :version)

(assert (=> b!1016445 (= res!681853 ((_ is Cons!21636) keys!40))))

(declare-fun b!1016446 () Bool)

(declare-fun res!681852 () Bool)

(assert (=> b!1016446 (=> (not res!681852) (not e!571843))))

(declare-fun isEmpty!888 (List!21639) Bool)

(assert (=> b!1016446 (= res!681852 (not (isEmpty!888 l!1114)))))

(declare-fun b!1016447 () Bool)

(declare-fun e!571841 () Bool)

(declare-fun lt!449249 () List!21639)

(declare-fun containsKey!492 (List!21639 (_ BitVec 64)) Bool)

(assert (=> b!1016447 (= e!571841 (containsKey!492 lt!449249 (h!22834 keys!40)))))

(declare-fun res!681850 () Bool)

(assert (=> b!1016448 (=> (not res!681850) (not e!571843))))

(declare-fun lambda!1022 () Int)

(declare-fun forall!284 (List!21640 Int) Bool)

(assert (=> b!1016448 (= res!681850 (forall!284 keys!40 lambda!1022))))

(declare-fun b!1016449 () Bool)

(declare-fun e!571842 () Bool)

(declare-fun tp_is_empty!23601 () Bool)

(declare-fun tp!70778 () Bool)

(assert (=> b!1016449 (= e!571842 (and tp_is_empty!23601 tp!70778))))

(declare-fun res!681851 () Bool)

(assert (=> start!88174 (=> (not res!681851) (not e!571843))))

(declare-fun isStrictlySorted!615 (List!21639) Bool)

(assert (=> start!88174 (= res!681851 (isStrictlySorted!615 l!1114))))

(assert (=> start!88174 e!571843))

(assert (=> start!88174 e!571842))

(assert (=> start!88174 true))

(assert (=> start!88174 tp_is_empty!23601))

(declare-fun b!1016450 () Bool)

(assert (=> b!1016450 (= e!571843 (not e!571841))))

(declare-fun res!681855 () Bool)

(assert (=> b!1016450 (=> (not res!681855) (not e!571841))))

(assert (=> b!1016450 (= res!681855 (isStrictlySorted!615 lt!449249))))

(assert (=> b!1016450 (= lt!449249 (Cons!21635 newHead!31 l!1114))))

(assert (=> b!1016450 (containsKey!492 l!1114 (h!22834 keys!40))))

(declare-datatypes ((Unit!33212 0))(
  ( (Unit!33213) )
))
(declare-fun lt!449250 () Unit!33212)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!11 (List!21639 (_ BitVec 64)) Unit!33212)

(assert (=> b!1016450 (= lt!449250 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!11 l!1114 (h!22834 keys!40)))))

(assert (= (and start!88174 res!681851) b!1016446))

(assert (= (and b!1016446 res!681852) b!1016448))

(assert (= (and b!1016448 res!681850) b!1016444))

(assert (= (and b!1016444 res!681854) b!1016445))

(assert (= (and b!1016445 res!681853) b!1016450))

(assert (= (and b!1016450 res!681855) b!1016447))

(assert (= (and start!88174 ((_ is Cons!21635) l!1114)) b!1016449))

(declare-fun m!938235 () Bool)

(assert (=> b!1016450 m!938235))

(declare-fun m!938237 () Bool)

(assert (=> b!1016450 m!938237))

(declare-fun m!938239 () Bool)

(assert (=> b!1016450 m!938239))

(declare-fun m!938241 () Bool)

(assert (=> b!1016446 m!938241))

(declare-fun m!938243 () Bool)

(assert (=> b!1016444 m!938243))

(declare-fun m!938245 () Bool)

(assert (=> b!1016448 m!938245))

(declare-fun m!938247 () Bool)

(assert (=> start!88174 m!938247))

(declare-fun m!938249 () Bool)

(assert (=> b!1016447 m!938249))

(check-sat (not b!1016450) (not b!1016449) (not b!1016448) (not start!88174) tp_is_empty!23601 (not b!1016446) (not b!1016447) (not b!1016444))
(check-sat)
(get-model)

(declare-fun d!121229 () Bool)

(assert (=> d!121229 (= (head!966 l!1114) (h!22833 l!1114))))

(assert (=> b!1016444 d!121229))

(declare-fun d!121231 () Bool)

(declare-fun res!681878 () Bool)

(declare-fun e!571857 () Bool)

(assert (=> d!121231 (=> res!681878 e!571857)))

(assert (=> d!121231 (= res!681878 (or ((_ is Nil!21636) lt!449249) ((_ is Nil!21636) (t!30648 lt!449249))))))

(assert (=> d!121231 (= (isStrictlySorted!615 lt!449249) e!571857)))

(declare-fun b!1016484 () Bool)

(declare-fun e!571858 () Bool)

(assert (=> b!1016484 (= e!571857 e!571858)))

(declare-fun res!681879 () Bool)

(assert (=> b!1016484 (=> (not res!681879) (not e!571858))))

(assert (=> b!1016484 (= res!681879 (bvslt (_1!7679 (h!22833 lt!449249)) (_1!7679 (h!22833 (t!30648 lt!449249)))))))

(declare-fun b!1016485 () Bool)

(assert (=> b!1016485 (= e!571858 (isStrictlySorted!615 (t!30648 lt!449249)))))

(assert (= (and d!121231 (not res!681878)) b!1016484))

(assert (= (and b!1016484 res!681879) b!1016485))

(declare-fun m!938267 () Bool)

(assert (=> b!1016485 m!938267))

(assert (=> b!1016450 d!121231))

(declare-fun d!121233 () Bool)

(declare-fun res!681888 () Bool)

(declare-fun e!571867 () Bool)

(assert (=> d!121233 (=> res!681888 e!571867)))

(assert (=> d!121233 (= res!681888 (and ((_ is Cons!21635) l!1114) (= (_1!7679 (h!22833 l!1114)) (h!22834 keys!40))))))

(assert (=> d!121233 (= (containsKey!492 l!1114 (h!22834 keys!40)) e!571867)))

(declare-fun b!1016494 () Bool)

(declare-fun e!571868 () Bool)

(assert (=> b!1016494 (= e!571867 e!571868)))

(declare-fun res!681889 () Bool)

(assert (=> b!1016494 (=> (not res!681889) (not e!571868))))

(assert (=> b!1016494 (= res!681889 (and (or (not ((_ is Cons!21635) l!1114)) (bvsle (_1!7679 (h!22833 l!1114)) (h!22834 keys!40))) ((_ is Cons!21635) l!1114) (bvslt (_1!7679 (h!22833 l!1114)) (h!22834 keys!40))))))

(declare-fun b!1016495 () Bool)

(assert (=> b!1016495 (= e!571868 (containsKey!492 (t!30648 l!1114) (h!22834 keys!40)))))

(assert (= (and d!121233 (not res!681888)) b!1016494))

(assert (= (and b!1016494 res!681889) b!1016495))

(declare-fun m!938269 () Bool)

(assert (=> b!1016495 m!938269))

(assert (=> b!1016450 d!121233))

(declare-fun d!121237 () Bool)

(assert (=> d!121237 (containsKey!492 l!1114 (h!22834 keys!40))))

(declare-fun lt!449259 () Unit!33212)

(declare-fun choose!1655 (List!21639 (_ BitVec 64)) Unit!33212)

(assert (=> d!121237 (= lt!449259 (choose!1655 l!1114 (h!22834 keys!40)))))

(declare-fun e!571873 () Bool)

(assert (=> d!121237 e!571873))

(declare-fun res!681894 () Bool)

(assert (=> d!121237 (=> (not res!681894) (not e!571873))))

(assert (=> d!121237 (= res!681894 (isStrictlySorted!615 l!1114))))

(assert (=> d!121237 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!11 l!1114 (h!22834 keys!40)) lt!449259)))

(declare-fun b!1016500 () Bool)

(declare-datatypes ((Option!606 0))(
  ( (Some!605 (v!14454 B!1534)) (None!604) )
))
(declare-fun isDefined!402 (Option!606) Bool)

(declare-fun getValueByKey!555 (List!21639 (_ BitVec 64)) Option!606)

(assert (=> b!1016500 (= e!571873 (isDefined!402 (getValueByKey!555 l!1114 (h!22834 keys!40))))))

(assert (= (and d!121237 res!681894) b!1016500))

(assert (=> d!121237 m!938237))

(declare-fun m!938273 () Bool)

(assert (=> d!121237 m!938273))

(assert (=> d!121237 m!938247))

(declare-fun m!938275 () Bool)

(assert (=> b!1016500 m!938275))

(assert (=> b!1016500 m!938275))

(declare-fun m!938277 () Bool)

(assert (=> b!1016500 m!938277))

(assert (=> b!1016450 d!121237))

(declare-fun d!121243 () Bool)

(declare-fun res!681895 () Bool)

(declare-fun e!571874 () Bool)

(assert (=> d!121243 (=> res!681895 e!571874)))

(assert (=> d!121243 (= res!681895 (or ((_ is Nil!21636) l!1114) ((_ is Nil!21636) (t!30648 l!1114))))))

(assert (=> d!121243 (= (isStrictlySorted!615 l!1114) e!571874)))

(declare-fun b!1016501 () Bool)

(declare-fun e!571875 () Bool)

(assert (=> b!1016501 (= e!571874 e!571875)))

(declare-fun res!681896 () Bool)

(assert (=> b!1016501 (=> (not res!681896) (not e!571875))))

(assert (=> b!1016501 (= res!681896 (bvslt (_1!7679 (h!22833 l!1114)) (_1!7679 (h!22833 (t!30648 l!1114)))))))

(declare-fun b!1016502 () Bool)

(assert (=> b!1016502 (= e!571875 (isStrictlySorted!615 (t!30648 l!1114)))))

(assert (= (and d!121243 (not res!681895)) b!1016501))

(assert (= (and b!1016501 res!681896) b!1016502))

(declare-fun m!938279 () Bool)

(assert (=> b!1016502 m!938279))

(assert (=> start!88174 d!121243))

(declare-fun d!121245 () Bool)

(assert (=> d!121245 (= (isEmpty!888 l!1114) ((_ is Nil!21636) l!1114))))

(assert (=> b!1016446 d!121245))

(declare-fun d!121249 () Bool)

(declare-fun res!681897 () Bool)

(declare-fun e!571876 () Bool)

(assert (=> d!121249 (=> res!681897 e!571876)))

(assert (=> d!121249 (= res!681897 (and ((_ is Cons!21635) lt!449249) (= (_1!7679 (h!22833 lt!449249)) (h!22834 keys!40))))))

(assert (=> d!121249 (= (containsKey!492 lt!449249 (h!22834 keys!40)) e!571876)))

(declare-fun b!1016503 () Bool)

(declare-fun e!571877 () Bool)

(assert (=> b!1016503 (= e!571876 e!571877)))

(declare-fun res!681898 () Bool)

(assert (=> b!1016503 (=> (not res!681898) (not e!571877))))

(assert (=> b!1016503 (= res!681898 (and (or (not ((_ is Cons!21635) lt!449249)) (bvsle (_1!7679 (h!22833 lt!449249)) (h!22834 keys!40))) ((_ is Cons!21635) lt!449249) (bvslt (_1!7679 (h!22833 lt!449249)) (h!22834 keys!40))))))

(declare-fun b!1016504 () Bool)

(assert (=> b!1016504 (= e!571877 (containsKey!492 (t!30648 lt!449249) (h!22834 keys!40)))))

(assert (= (and d!121249 (not res!681897)) b!1016503))

(assert (= (and b!1016503 res!681898) b!1016504))

(declare-fun m!938281 () Bool)

(assert (=> b!1016504 m!938281))

(assert (=> b!1016447 d!121249))

(declare-fun d!121251 () Bool)

(declare-fun res!681913 () Bool)

(declare-fun e!571892 () Bool)

(assert (=> d!121251 (=> res!681913 e!571892)))

(assert (=> d!121251 (= res!681913 ((_ is Nil!21637) keys!40))))

(assert (=> d!121251 (= (forall!284 keys!40 lambda!1022) e!571892)))

(declare-fun b!1016519 () Bool)

(declare-fun e!571893 () Bool)

(assert (=> b!1016519 (= e!571892 e!571893)))

(declare-fun res!681914 () Bool)

(assert (=> b!1016519 (=> (not res!681914) (not e!571893))))

(declare-fun dynLambda!1921 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016519 (= res!681914 (dynLambda!1921 lambda!1022 (h!22834 keys!40)))))

(declare-fun b!1016520 () Bool)

(assert (=> b!1016520 (= e!571893 (forall!284 (t!30649 keys!40) lambda!1022))))

(assert (= (and d!121251 (not res!681913)) b!1016519))

(assert (= (and b!1016519 res!681914) b!1016520))

(declare-fun b_lambda!15549 () Bool)

(assert (=> (not b_lambda!15549) (not b!1016519)))

(declare-fun m!938285 () Bool)

(assert (=> b!1016519 m!938285))

(declare-fun m!938287 () Bool)

(assert (=> b!1016520 m!938287))

(assert (=> b!1016448 d!121251))

(declare-fun b!1016527 () Bool)

(declare-fun e!571898 () Bool)

(declare-fun tp!70784 () Bool)

(assert (=> b!1016527 (= e!571898 (and tp_is_empty!23601 tp!70784))))

(assert (=> b!1016449 (= tp!70778 e!571898)))

(assert (= (and b!1016449 ((_ is Cons!21635) (t!30648 l!1114))) b!1016527))

(declare-fun b_lambda!15553 () Bool)

(assert (= b_lambda!15549 (or b!1016448 b_lambda!15553)))

(declare-fun bs!29518 () Bool)

(declare-fun d!121257 () Bool)

(assert (= bs!29518 (and d!121257 b!1016448)))

(declare-fun value!178 () B!1534)

(assert (=> bs!29518 (= (dynLambda!1921 lambda!1022 (h!22834 keys!40)) (= (getValueByKey!555 l!1114 (h!22834 keys!40)) (Some!605 value!178)))))

(assert (=> bs!29518 m!938275))

(assert (=> b!1016519 d!121257))

(check-sat (not b!1016504) (not bs!29518) (not b!1016527) (not b!1016500) (not d!121237) (not b_lambda!15553) (not b!1016495) tp_is_empty!23601 (not b!1016485) (not b!1016520) (not b!1016502))
(check-sat)
