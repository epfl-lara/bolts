; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137512 () Bool)

(assert start!137512)

(declare-fun b!1581575 () Bool)

(declare-fun res!1080613 () Bool)

(declare-fun e!882547 () Bool)

(assert (=> b!1581575 (=> (not res!1080613) (not e!882547))))

(declare-fun key!405 () (_ BitVec 64))

(declare-datatypes ((B!2702 0))(
  ( (B!2703 (val!19713 Int)) )
))
(declare-datatypes ((tuple2!25752 0))(
  ( (tuple2!25753 (_1!12886 (_ BitVec 64)) (_2!12886 B!2702)) )
))
(declare-datatypes ((List!36994 0))(
  ( (Nil!36991) (Cons!36990 (h!38534 tuple2!25752) (t!51915 List!36994)) )
))
(declare-fun l!1390 () List!36994)

(declare-fun value!194 () B!2702)

(declare-fun contains!10522 (List!36994 tuple2!25752) Bool)

(assert (=> b!1581575 (= res!1080613 (contains!10522 l!1390 (tuple2!25753 key!405 value!194)))))

(declare-fun b!1581576 () Bool)

(declare-fun e!882548 () Bool)

(declare-datatypes ((Option!930 0))(
  ( (Some!929 (v!22444 B!2702)) (None!928) )
))
(declare-fun getValueByKey!825 (List!36994 (_ BitVec 64)) Option!930)

(assert (=> b!1581576 (= e!882548 (not (= (getValueByKey!825 l!1390 key!405) (Some!929 value!194))))))

(declare-fun res!1080612 () Bool)

(assert (=> start!137512 (=> (not res!1080612) (not e!882547))))

(declare-fun isStrictlySorted!1089 (List!36994) Bool)

(assert (=> start!137512 (= res!1080612 (isStrictlySorted!1089 l!1390))))

(assert (=> start!137512 e!882547))

(declare-fun e!882546 () Bool)

(assert (=> start!137512 e!882546))

(assert (=> start!137512 true))

(declare-fun tp_is_empty!39247 () Bool)

(assert (=> start!137512 tp_is_empty!39247))

(declare-fun b!1581577 () Bool)

(declare-fun res!1080610 () Bool)

(assert (=> b!1581577 (=> (not res!1080610) (not e!882548))))

(assert (=> b!1581577 (= res!1080610 (not (is-Cons!36990 l!1390)))))

(declare-fun b!1581578 () Bool)

(declare-fun res!1080609 () Bool)

(assert (=> b!1581578 (=> (not res!1080609) (not e!882547))))

(declare-fun containsKey!935 (List!36994 (_ BitVec 64)) Bool)

(assert (=> b!1581578 (= res!1080609 (containsKey!935 l!1390 key!405))))

(declare-fun b!1581579 () Bool)

(assert (=> b!1581579 (= e!882547 e!882548)))

(declare-fun res!1080614 () Bool)

(assert (=> b!1581579 (=> (not res!1080614) (not e!882548))))

(declare-fun e!882549 () Bool)

(assert (=> b!1581579 (= res!1080614 e!882549)))

(declare-fun res!1080611 () Bool)

(assert (=> b!1581579 (=> res!1080611 e!882549)))

(declare-datatypes ((tuple2!25754 0))(
  ( (tuple2!25755 (_1!12887 tuple2!25752) (_2!12887 List!36994)) )
))
(declare-datatypes ((Option!931 0))(
  ( (Some!930 (v!22445 tuple2!25754)) (None!929) )
))
(declare-fun lt!676924 () Option!931)

(declare-fun isEmpty!1186 (Option!931) Bool)

(assert (=> b!1581579 (= res!1080611 (isEmpty!1186 lt!676924))))

(declare-fun unapply!100 (List!36994) Option!931)

(assert (=> b!1581579 (= lt!676924 (unapply!100 l!1390))))

(declare-fun b!1581580 () Bool)

(declare-fun get!26851 (Option!931) tuple2!25754)

(assert (=> b!1581580 (= e!882549 (not (is-Nil!36991 (_2!12887 (get!26851 lt!676924)))))))

(declare-fun b!1581581 () Bool)

(declare-fun tp!114598 () Bool)

(assert (=> b!1581581 (= e!882546 (and tp_is_empty!39247 tp!114598))))

(assert (= (and start!137512 res!1080612) b!1581578))

(assert (= (and b!1581578 res!1080609) b!1581575))

(assert (= (and b!1581575 res!1080613) b!1581579))

(assert (= (and b!1581579 (not res!1080611)) b!1581580))

(assert (= (and b!1581579 res!1080614) b!1581577))

(assert (= (and b!1581577 res!1080610) b!1581576))

(assert (= (and start!137512 (is-Cons!36990 l!1390)) b!1581581))

(declare-fun m!1452473 () Bool)

(assert (=> b!1581575 m!1452473))

(declare-fun m!1452475 () Bool)

(assert (=> start!137512 m!1452475))

(declare-fun m!1452477 () Bool)

(assert (=> b!1581580 m!1452477))

(declare-fun m!1452479 () Bool)

(assert (=> b!1581579 m!1452479))

(declare-fun m!1452481 () Bool)

(assert (=> b!1581579 m!1452481))

(declare-fun m!1452483 () Bool)

(assert (=> b!1581576 m!1452483))

(declare-fun m!1452485 () Bool)

(assert (=> b!1581578 m!1452485))

(push 1)

(assert (not b!1581581))

(assert (not b!1581580))

(assert (not b!1581578))

(assert tp_is_empty!39247)

(assert (not start!137512))

(assert (not b!1581576))

(assert (not b!1581579))

(assert (not b!1581575))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166757 () Bool)

(declare-fun res!1080655 () Bool)

(declare-fun e!882578 () Bool)

(assert (=> d!166757 (=> res!1080655 e!882578)))

(assert (=> d!166757 (= res!1080655 (and (is-Cons!36990 l!1390) (= (_1!12886 (h!38534 l!1390)) key!405)))))

(assert (=> d!166757 (= (containsKey!935 l!1390 key!405) e!882578)))

(declare-fun b!1581628 () Bool)

(declare-fun e!882579 () Bool)

(assert (=> b!1581628 (= e!882578 e!882579)))

(declare-fun res!1080656 () Bool)

(assert (=> b!1581628 (=> (not res!1080656) (not e!882579))))

(assert (=> b!1581628 (= res!1080656 (and (or (not (is-Cons!36990 l!1390)) (bvsle (_1!12886 (h!38534 l!1390)) key!405)) (is-Cons!36990 l!1390) (bvslt (_1!12886 (h!38534 l!1390)) key!405)))))

(declare-fun b!1581629 () Bool)

(assert (=> b!1581629 (= e!882579 (containsKey!935 (t!51915 l!1390) key!405))))

(assert (= (and d!166757 (not res!1080655)) b!1581628))

(assert (= (and b!1581628 res!1080656) b!1581629))

(declare-fun m!1452515 () Bool)

(assert (=> b!1581629 m!1452515))

(assert (=> b!1581578 d!166757))

(declare-fun d!166767 () Bool)

(assert (=> d!166767 (= (isEmpty!1186 lt!676924) (not (is-Some!930 lt!676924)))))

(assert (=> b!1581579 d!166767))

(declare-fun d!166769 () Bool)

(assert (=> d!166769 (= (unapply!100 l!1390) (ite (is-Nil!36991 l!1390) None!929 (Some!930 (tuple2!25755 (h!38534 l!1390) (t!51915 l!1390)))))))

(assert (=> b!1581579 d!166769))

(declare-fun d!166771 () Bool)

(assert (=> d!166771 (= (get!26851 lt!676924) (v!22445 lt!676924))))

(assert (=> b!1581580 d!166771))

(declare-fun d!166773 () Bool)

(declare-fun lt!676933 () Bool)

(declare-fun content!856 (List!36994) (Set tuple2!25752))

(assert (=> d!166773 (= lt!676933 (set.member (tuple2!25753 key!405 value!194) (content!856 l!1390)))))

(declare-fun e!882600 () Bool)

(assert (=> d!166773 (= lt!676933 e!882600)))

(declare-fun res!1080673 () Bool)

(assert (=> d!166773 (=> (not res!1080673) (not e!882600))))

(assert (=> d!166773 (= res!1080673 (is-Cons!36990 l!1390))))

(assert (=> d!166773 (= (contains!10522 l!1390 (tuple2!25753 key!405 value!194)) lt!676933)))

(declare-fun b!1581654 () Bool)

(declare-fun e!882601 () Bool)

(assert (=> b!1581654 (= e!882600 e!882601)))

(declare-fun res!1080674 () Bool)

(assert (=> b!1581654 (=> res!1080674 e!882601)))

(assert (=> b!1581654 (= res!1080674 (= (h!38534 l!1390) (tuple2!25753 key!405 value!194)))))

(declare-fun b!1581655 () Bool)

(assert (=> b!1581655 (= e!882601 (contains!10522 (t!51915 l!1390) (tuple2!25753 key!405 value!194)))))

(assert (= (and d!166773 res!1080673) b!1581654))

(assert (= (and b!1581654 (not res!1080674)) b!1581655))

(declare-fun m!1452521 () Bool)

(assert (=> d!166773 m!1452521))

(declare-fun m!1452523 () Bool)

(assert (=> d!166773 m!1452523))

(declare-fun m!1452525 () Bool)

(assert (=> b!1581655 m!1452525))

(assert (=> b!1581575 d!166773))

(declare-fun d!166781 () Bool)

(declare-fun res!1080683 () Bool)

(declare-fun e!882612 () Bool)

(assert (=> d!166781 (=> res!1080683 e!882612)))

(assert (=> d!166781 (= res!1080683 (or (is-Nil!36991 l!1390) (is-Nil!36991 (t!51915 l!1390))))))

(assert (=> d!166781 (= (isStrictlySorted!1089 l!1390) e!882612)))

(declare-fun b!1581668 () Bool)

(declare-fun e!882613 () Bool)

(assert (=> b!1581668 (= e!882612 e!882613)))

(declare-fun res!1080684 () Bool)

(assert (=> b!1581668 (=> (not res!1080684) (not e!882613))))

(assert (=> b!1581668 (= res!1080684 (bvslt (_1!12886 (h!38534 l!1390)) (_1!12886 (h!38534 (t!51915 l!1390)))))))

(declare-fun b!1581669 () Bool)

(assert (=> b!1581669 (= e!882613 (isStrictlySorted!1089 (t!51915 l!1390)))))

(assert (= (and d!166781 (not res!1080683)) b!1581668))

(assert (= (and b!1581668 res!1080684) b!1581669))

(declare-fun m!1452529 () Bool)

(assert (=> b!1581669 m!1452529))

(assert (=> start!137512 d!166781))

(declare-fun d!166785 () Bool)

(declare-fun c!146564 () Bool)

(assert (=> d!166785 (= c!146564 (and (is-Cons!36990 l!1390) (= (_1!12886 (h!38534 l!1390)) key!405)))))

(declare-fun e!882624 () Option!930)

(assert (=> d!166785 (= (getValueByKey!825 l!1390 key!405) e!882624)))

(declare-fun b!1581687 () Bool)

(declare-fun e!882625 () Option!930)

(assert (=> b!1581687 (= e!882625 None!928)))

(declare-fun b!1581685 () Bool)

(assert (=> b!1581685 (= e!882624 e!882625)))

(declare-fun c!146565 () Bool)

(assert (=> b!1581685 (= c!146565 (and (is-Cons!36990 l!1390) (not (= (_1!12886 (h!38534 l!1390)) key!405))))))

(declare-fun b!1581686 () Bool)

(assert (=> b!1581686 (= e!882625 (getValueByKey!825 (t!51915 l!1390) key!405))))

(declare-fun b!1581684 () Bool)

(assert (=> b!1581684 (= e!882624 (Some!929 (_2!12886 (h!38534 l!1390))))))

(assert (= (and d!166785 c!146564) b!1581684))

(assert (= (and d!166785 (not c!146564)) b!1581685))

(assert (= (and b!1581685 c!146565) b!1581686))

(assert (= (and b!1581685 (not c!146565)) b!1581687))

(declare-fun m!1452533 () Bool)

(assert (=> b!1581686 m!1452533))

(assert (=> b!1581576 d!166785))

(declare-fun b!1581694 () Bool)

(declare-fun e!882630 () Bool)

(declare-fun tp!114607 () Bool)

(assert (=> b!1581694 (= e!882630 (and tp_is_empty!39247 tp!114607))))

(assert (=> b!1581581 (= tp!114598 e!882630)))

(assert (= (and b!1581581 (is-Cons!36990 (t!51915 l!1390))) b!1581694))

(push 1)

(assert (not b!1581655))

(assert (not b!1581694))

(assert (not b!1581669))

(assert (not d!166773))

(assert (not b!1581629))

(assert tp_is_empty!39247)

(assert (not b!1581686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

