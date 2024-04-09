; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88062 () Bool)

(assert start!88062)

(declare-fun b!1016020 () Bool)

(assert (=> b!1016020 true))

(assert (=> b!1016020 true))

(declare-fun b!1016019 () Bool)

(declare-fun res!681601 () Bool)

(declare-fun e!571601 () Bool)

(assert (=> b!1016019 (=> (not res!681601) (not e!571601))))

(declare-datatypes ((List!21621 0))(
  ( (Nil!21618) (Cons!21617 (h!22815 (_ BitVec 64)) (t!30630 List!21621)) )
))
(declare-fun keys!40 () List!21621)

(get-info :version)

(assert (=> b!1016019 (= res!681601 (not ((_ is Cons!21617) keys!40)))))

(declare-fun res!681598 () Bool)

(assert (=> b!1016020 (=> (not res!681598) (not e!571601))))

(declare-fun lambda!995 () Int)

(declare-fun forall!275 (List!21621 Int) Bool)

(assert (=> b!1016020 (= res!681598 (forall!275 keys!40 lambda!995))))

(declare-fun b!1016021 () Bool)

(declare-datatypes ((B!1516 0))(
  ( (B!1517 (val!11842 Int)) )
))
(declare-datatypes ((tuple2!15320 0))(
  ( (tuple2!15321 (_1!7670 (_ BitVec 64)) (_2!7670 B!1516)) )
))
(declare-fun newHead!31 () tuple2!15320)

(declare-datatypes ((List!21622 0))(
  ( (Nil!21619) (Cons!21618 (h!22816 tuple2!15320) (t!30631 List!21622)) )
))
(declare-fun l!1114 () List!21622)

(declare-fun isStrictlySorted!606 (List!21622) Bool)

(assert (=> b!1016021 (= e!571601 (not (isStrictlySorted!606 (Cons!21618 newHead!31 l!1114))))))

(declare-fun res!681597 () Bool)

(assert (=> start!88062 (=> (not res!681597) (not e!571601))))

(assert (=> start!88062 (= res!681597 (isStrictlySorted!606 l!1114))))

(assert (=> start!88062 e!571601))

(declare-fun e!571600 () Bool)

(assert (=> start!88062 e!571600))

(assert (=> start!88062 true))

(declare-fun tp_is_empty!23583 () Bool)

(assert (=> start!88062 tp_is_empty!23583))

(declare-fun b!1016022 () Bool)

(declare-fun res!681599 () Bool)

(assert (=> b!1016022 (=> (not res!681599) (not e!571601))))

(declare-fun head!957 (List!21622) tuple2!15320)

(assert (=> b!1016022 (= res!681599 (bvslt (_1!7670 newHead!31) (_1!7670 (head!957 l!1114))))))

(declare-fun b!1016023 () Bool)

(declare-fun res!681600 () Bool)

(assert (=> b!1016023 (=> (not res!681600) (not e!571601))))

(declare-fun isEmpty!876 (List!21622) Bool)

(assert (=> b!1016023 (= res!681600 (not (isEmpty!876 l!1114)))))

(declare-fun b!1016024 () Bool)

(declare-fun tp!70722 () Bool)

(assert (=> b!1016024 (= e!571600 (and tp_is_empty!23583 tp!70722))))

(assert (= (and start!88062 res!681597) b!1016023))

(assert (= (and b!1016023 res!681600) b!1016020))

(assert (= (and b!1016020 res!681598) b!1016022))

(assert (= (and b!1016022 res!681599) b!1016019))

(assert (= (and b!1016019 res!681601) b!1016021))

(assert (= (and start!88062 ((_ is Cons!21618) l!1114)) b!1016024))

(declare-fun m!938023 () Bool)

(assert (=> start!88062 m!938023))

(declare-fun m!938025 () Bool)

(assert (=> b!1016020 m!938025))

(declare-fun m!938027 () Bool)

(assert (=> b!1016022 m!938027))

(declare-fun m!938029 () Bool)

(assert (=> b!1016021 m!938029))

(declare-fun m!938031 () Bool)

(assert (=> b!1016023 m!938031))

(check-sat (not b!1016020) (not b!1016022) (not b!1016024) tp_is_empty!23583 (not b!1016023) (not b!1016021) (not start!88062))
(check-sat)
(get-model)

(declare-fun d!121089 () Bool)

(declare-fun res!681621 () Bool)

(declare-fun e!571612 () Bool)

(assert (=> d!121089 (=> res!681621 e!571612)))

(assert (=> d!121089 (= res!681621 (or ((_ is Nil!21619) (Cons!21618 newHead!31 l!1114)) ((_ is Nil!21619) (t!30631 (Cons!21618 newHead!31 l!1114)))))))

(assert (=> d!121089 (= (isStrictlySorted!606 (Cons!21618 newHead!31 l!1114)) e!571612)))

(declare-fun b!1016055 () Bool)

(declare-fun e!571613 () Bool)

(assert (=> b!1016055 (= e!571612 e!571613)))

(declare-fun res!681622 () Bool)

(assert (=> b!1016055 (=> (not res!681622) (not e!571613))))

(assert (=> b!1016055 (= res!681622 (bvslt (_1!7670 (h!22816 (Cons!21618 newHead!31 l!1114))) (_1!7670 (h!22816 (t!30631 (Cons!21618 newHead!31 l!1114))))))))

(declare-fun b!1016056 () Bool)

(assert (=> b!1016056 (= e!571613 (isStrictlySorted!606 (t!30631 (Cons!21618 newHead!31 l!1114))))))

(assert (= (and d!121089 (not res!681621)) b!1016055))

(assert (= (and b!1016055 res!681622) b!1016056))

(declare-fun m!938043 () Bool)

(assert (=> b!1016056 m!938043))

(assert (=> b!1016021 d!121089))

(declare-fun d!121091 () Bool)

(declare-fun res!681627 () Bool)

(declare-fun e!571618 () Bool)

(assert (=> d!121091 (=> res!681627 e!571618)))

(assert (=> d!121091 (= res!681627 ((_ is Nil!21618) keys!40))))

(assert (=> d!121091 (= (forall!275 keys!40 lambda!995) e!571618)))

(declare-fun b!1016061 () Bool)

(declare-fun e!571619 () Bool)

(assert (=> b!1016061 (= e!571618 e!571619)))

(declare-fun res!681628 () Bool)

(assert (=> b!1016061 (=> (not res!681628) (not e!571619))))

(declare-fun dynLambda!1912 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016061 (= res!681628 (dynLambda!1912 lambda!995 (h!22815 keys!40)))))

(declare-fun b!1016062 () Bool)

(assert (=> b!1016062 (= e!571619 (forall!275 (t!30630 keys!40) lambda!995))))

(assert (= (and d!121091 (not res!681627)) b!1016061))

(assert (= (and b!1016061 res!681628) b!1016062))

(declare-fun b_lambda!15505 () Bool)

(assert (=> (not b_lambda!15505) (not b!1016061)))

(declare-fun m!938045 () Bool)

(assert (=> b!1016061 m!938045))

(declare-fun m!938047 () Bool)

(assert (=> b!1016062 m!938047))

(assert (=> b!1016020 d!121091))

(declare-fun d!121097 () Bool)

(assert (=> d!121097 (= (head!957 l!1114) (h!22816 l!1114))))

(assert (=> b!1016022 d!121097))

(declare-fun d!121099 () Bool)

(declare-fun res!681629 () Bool)

(declare-fun e!571620 () Bool)

(assert (=> d!121099 (=> res!681629 e!571620)))

(assert (=> d!121099 (= res!681629 (or ((_ is Nil!21619) l!1114) ((_ is Nil!21619) (t!30631 l!1114))))))

(assert (=> d!121099 (= (isStrictlySorted!606 l!1114) e!571620)))

(declare-fun b!1016063 () Bool)

(declare-fun e!571621 () Bool)

(assert (=> b!1016063 (= e!571620 e!571621)))

(declare-fun res!681630 () Bool)

(assert (=> b!1016063 (=> (not res!681630) (not e!571621))))

(assert (=> b!1016063 (= res!681630 (bvslt (_1!7670 (h!22816 l!1114)) (_1!7670 (h!22816 (t!30631 l!1114)))))))

(declare-fun b!1016064 () Bool)

(assert (=> b!1016064 (= e!571621 (isStrictlySorted!606 (t!30631 l!1114)))))

(assert (= (and d!121099 (not res!681629)) b!1016063))

(assert (= (and b!1016063 res!681630) b!1016064))

(declare-fun m!938049 () Bool)

(assert (=> b!1016064 m!938049))

(assert (=> start!88062 d!121099))

(declare-fun d!121103 () Bool)

(assert (=> d!121103 (= (isEmpty!876 l!1114) ((_ is Nil!21619) l!1114))))

(assert (=> b!1016023 d!121103))

(declare-fun b!1016075 () Bool)

(declare-fun e!571630 () Bool)

(declare-fun tp!70728 () Bool)

(assert (=> b!1016075 (= e!571630 (and tp_is_empty!23583 tp!70728))))

(assert (=> b!1016024 (= tp!70722 e!571630)))

(assert (= (and b!1016024 ((_ is Cons!21618) (t!30631 l!1114))) b!1016075))

(declare-fun b_lambda!15507 () Bool)

(assert (= b_lambda!15505 (or b!1016020 b_lambda!15507)))

(declare-fun bs!29495 () Bool)

(declare-fun d!121109 () Bool)

(assert (= bs!29495 (and d!121109 b!1016020)))

(declare-fun value!178 () B!1516)

(declare-datatypes ((Option!598 0))(
  ( (Some!597 (v!14446 B!1516)) (None!596) )
))
(declare-fun getValueByKey!547 (List!21622 (_ BitVec 64)) Option!598)

(assert (=> bs!29495 (= (dynLambda!1912 lambda!995 (h!22815 keys!40)) (= (getValueByKey!547 l!1114 (h!22815 keys!40)) (Some!597 value!178)))))

(declare-fun m!938053 () Bool)

(assert (=> bs!29495 m!938053))

(assert (=> b!1016061 d!121109))

(check-sat (not b!1016075) (not b!1016062) (not b_lambda!15507) tp_is_empty!23583 (not b!1016064) (not bs!29495) (not b!1016056))
