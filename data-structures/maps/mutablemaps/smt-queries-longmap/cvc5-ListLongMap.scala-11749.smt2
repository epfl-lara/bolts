; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137854 () Bool)

(assert start!137854)

(declare-fun b!1582938 () Bool)

(declare-fun e!883548 () Bool)

(declare-datatypes ((B!2834 0))(
  ( (B!2835 (val!19779 Int)) )
))
(declare-datatypes ((tuple2!25890 0))(
  ( (tuple2!25891 (_1!12955 (_ BitVec 64)) (_2!12955 B!2834)) )
))
(declare-datatypes ((List!37060 0))(
  ( (Nil!37057) (Cons!37056 (h!38600 tuple2!25890) (t!51981 List!37060)) )
))
(declare-fun l!1065 () List!37060)

(declare-fun key!287 () (_ BitVec 64))

(declare-datatypes ((Option!942 0))(
  ( (Some!941 (v!22465 B!2834)) (None!940) )
))
(declare-fun isDefined!602 (Option!942) Bool)

(declare-fun getValueByKey!834 (List!37060 (_ BitVec 64)) Option!942)

(assert (=> b!1582938 (= e!883548 (not (isDefined!602 (getValueByKey!834 l!1065 key!287))))))

(assert (=> b!1582938 (isDefined!602 (getValueByKey!834 (t!51981 l!1065) key!287))))

(declare-datatypes ((Unit!52217 0))(
  ( (Unit!52218) )
))
(declare-fun lt!677074 () Unit!52217)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!550 (List!37060 (_ BitVec 64)) Unit!52217)

(assert (=> b!1582938 (= lt!677074 (lemmaContainsKeyImpliesGetValueByKeyDefined!550 (t!51981 l!1065) key!287))))

(declare-fun b!1582939 () Bool)

(declare-fun res!1081473 () Bool)

(assert (=> b!1582939 (=> (not res!1081473) (not e!883548))))

(declare-fun containsKey!977 (List!37060 (_ BitVec 64)) Bool)

(assert (=> b!1582939 (= res!1081473 (containsKey!977 l!1065 key!287))))

(declare-fun b!1582940 () Bool)

(declare-fun res!1081472 () Bool)

(assert (=> b!1582940 (=> (not res!1081472) (not e!883548))))

(declare-fun isStrictlySorted!1131 (List!37060) Bool)

(assert (=> b!1582940 (= res!1081472 (isStrictlySorted!1131 (t!51981 l!1065)))))

(declare-fun res!1081474 () Bool)

(assert (=> start!137854 (=> (not res!1081474) (not e!883548))))

(assert (=> start!137854 (= res!1081474 (isStrictlySorted!1131 l!1065))))

(assert (=> start!137854 e!883548))

(declare-fun e!883547 () Bool)

(assert (=> start!137854 e!883547))

(assert (=> start!137854 true))

(declare-fun b!1582941 () Bool)

(declare-fun tp_is_empty!39367 () Bool)

(declare-fun tp!114895 () Bool)

(assert (=> b!1582941 (= e!883547 (and tp_is_empty!39367 tp!114895))))

(declare-fun b!1582942 () Bool)

(declare-fun res!1081471 () Bool)

(assert (=> b!1582942 (=> (not res!1081471) (not e!883548))))

(assert (=> b!1582942 (= res!1081471 (and (is-Cons!37056 l!1065) (not (= (_1!12955 (h!38600 l!1065)) key!287))))))

(declare-fun b!1582943 () Bool)

(declare-fun res!1081475 () Bool)

(assert (=> b!1582943 (=> (not res!1081475) (not e!883548))))

(assert (=> b!1582943 (= res!1081475 (containsKey!977 (t!51981 l!1065) key!287))))

(assert (= (and start!137854 res!1081474) b!1582939))

(assert (= (and b!1582939 res!1081473) b!1582942))

(assert (= (and b!1582942 res!1081471) b!1582940))

(assert (= (and b!1582940 res!1081472) b!1582943))

(assert (= (and b!1582943 res!1081475) b!1582938))

(assert (= (and start!137854 (is-Cons!37056 l!1065)) b!1582941))

(declare-fun m!1453061 () Bool)

(assert (=> b!1582938 m!1453061))

(declare-fun m!1453063 () Bool)

(assert (=> b!1582938 m!1453063))

(assert (=> b!1582938 m!1453061))

(declare-fun m!1453065 () Bool)

(assert (=> b!1582938 m!1453065))

(declare-fun m!1453067 () Bool)

(assert (=> b!1582938 m!1453067))

(assert (=> b!1582938 m!1453063))

(declare-fun m!1453069 () Bool)

(assert (=> b!1582938 m!1453069))

(declare-fun m!1453071 () Bool)

(assert (=> start!137854 m!1453071))

(declare-fun m!1453073 () Bool)

(assert (=> b!1582940 m!1453073))

(declare-fun m!1453075 () Bool)

(assert (=> b!1582939 m!1453075))

(declare-fun m!1453077 () Bool)

(assert (=> b!1582943 m!1453077))

(push 1)

(assert tp_is_empty!39367)

(assert (not b!1582938))

(assert (not start!137854))

(assert (not b!1582941))

(assert (not b!1582943))

(assert (not b!1582939))

(assert (not b!1582940))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167065 () Bool)

(declare-fun res!1081518 () Bool)

(declare-fun e!883581 () Bool)

(assert (=> d!167065 (=> res!1081518 e!883581)))

(assert (=> d!167065 (= res!1081518 (and (is-Cons!37056 l!1065) (= (_1!12955 (h!38600 l!1065)) key!287)))))

(assert (=> d!167065 (= (containsKey!977 l!1065 key!287) e!883581)))

(declare-fun b!1583008 () Bool)

(declare-fun e!883582 () Bool)

(assert (=> b!1583008 (= e!883581 e!883582)))

(declare-fun res!1081519 () Bool)

(assert (=> b!1583008 (=> (not res!1081519) (not e!883582))))

(assert (=> b!1583008 (= res!1081519 (and (or (not (is-Cons!37056 l!1065)) (bvsle (_1!12955 (h!38600 l!1065)) key!287)) (is-Cons!37056 l!1065) (bvslt (_1!12955 (h!38600 l!1065)) key!287)))))

(declare-fun b!1583009 () Bool)

(assert (=> b!1583009 (= e!883582 (containsKey!977 (t!51981 l!1065) key!287))))

(assert (= (and d!167065 (not res!1081518)) b!1583008))

(assert (= (and b!1583008 res!1081519) b!1583009))

(assert (=> b!1583009 m!1453077))

(assert (=> b!1582939 d!167065))

(declare-fun d!167077 () Bool)

(declare-fun res!1081526 () Bool)

(declare-fun e!883593 () Bool)

(assert (=> d!167077 (=> res!1081526 e!883593)))

(assert (=> d!167077 (= res!1081526 (or (is-Nil!37057 l!1065) (is-Nil!37057 (t!51981 l!1065))))))

(assert (=> d!167077 (= (isStrictlySorted!1131 l!1065) e!883593)))

(declare-fun b!1583024 () Bool)

(declare-fun e!883594 () Bool)

(assert (=> b!1583024 (= e!883593 e!883594)))

(declare-fun res!1081527 () Bool)

(assert (=> b!1583024 (=> (not res!1081527) (not e!883594))))

(assert (=> b!1583024 (= res!1081527 (bvslt (_1!12955 (h!38600 l!1065)) (_1!12955 (h!38600 (t!51981 l!1065)))))))

(declare-fun b!1583025 () Bool)

(assert (=> b!1583025 (= e!883594 (isStrictlySorted!1131 (t!51981 l!1065)))))

(assert (= (and d!167077 (not res!1081526)) b!1583024))

(assert (= (and b!1583024 res!1081527) b!1583025))

(assert (=> b!1583025 m!1453073))

(assert (=> start!137854 d!167077))

(declare-fun d!167081 () Bool)

(declare-fun isEmpty!1190 (Option!942) Bool)

(assert (=> d!167081 (= (isDefined!602 (getValueByKey!834 l!1065 key!287)) (not (isEmpty!1190 (getValueByKey!834 l!1065 key!287))))))

(declare-fun bs!45877 () Bool)

(assert (= bs!45877 d!167081))

(assert (=> bs!45877 m!1453061))

(declare-fun m!1453127 () Bool)

(assert (=> bs!45877 m!1453127))

(assert (=> b!1582938 d!167081))

(declare-fun d!167085 () Bool)

(declare-fun c!146643 () Bool)

(assert (=> d!167085 (= c!146643 (and (is-Cons!37056 l!1065) (= (_1!12955 (h!38600 l!1065)) key!287)))))

(declare-fun e!883614 () Option!942)

(assert (=> d!167085 (= (getValueByKey!834 l!1065 key!287) e!883614)))

(declare-fun b!1583054 () Bool)

(declare-fun e!883615 () Option!942)

(assert (=> b!1583054 (= e!883614 e!883615)))

(declare-fun c!146644 () Bool)

(assert (=> b!1583054 (= c!146644 (and (is-Cons!37056 l!1065) (not (= (_1!12955 (h!38600 l!1065)) key!287))))))

(declare-fun b!1583056 () Bool)

(assert (=> b!1583056 (= e!883615 None!940)))

(declare-fun b!1583055 () Bool)

(assert (=> b!1583055 (= e!883615 (getValueByKey!834 (t!51981 l!1065) key!287))))

(declare-fun b!1583053 () Bool)

(assert (=> b!1583053 (= e!883614 (Some!941 (_2!12955 (h!38600 l!1065))))))

(assert (= (and d!167085 c!146643) b!1583053))

(assert (= (and d!167085 (not c!146643)) b!1583054))

(assert (= (and b!1583054 c!146644) b!1583055))

(assert (= (and b!1583054 (not c!146644)) b!1583056))

(assert (=> b!1583055 m!1453063))

(assert (=> b!1582938 d!167085))

(declare-fun d!167097 () Bool)

(declare-fun c!146645 () Bool)

(assert (=> d!167097 (= c!146645 (and (is-Cons!37056 (t!51981 l!1065)) (= (_1!12955 (h!38600 (t!51981 l!1065))) key!287)))))

(declare-fun e!883617 () Option!942)

(assert (=> d!167097 (= (getValueByKey!834 (t!51981 l!1065) key!287) e!883617)))

(declare-fun b!1583059 () Bool)

(declare-fun e!883618 () Option!942)

(assert (=> b!1583059 (= e!883617 e!883618)))

(declare-fun c!146646 () Bool)

(assert (=> b!1583059 (= c!146646 (and (is-Cons!37056 (t!51981 l!1065)) (not (= (_1!12955 (h!38600 (t!51981 l!1065))) key!287))))))

(declare-fun b!1583061 () Bool)

(assert (=> b!1583061 (= e!883618 None!940)))

(declare-fun b!1583060 () Bool)

(assert (=> b!1583060 (= e!883618 (getValueByKey!834 (t!51981 (t!51981 l!1065)) key!287))))

(declare-fun b!1583058 () Bool)

(assert (=> b!1583058 (= e!883617 (Some!941 (_2!12955 (h!38600 (t!51981 l!1065)))))))

(assert (= (and d!167097 c!146645) b!1583058))

(assert (= (and d!167097 (not c!146645)) b!1583059))

(assert (= (and b!1583059 c!146646) b!1583060))

(assert (= (and b!1583059 (not c!146646)) b!1583061))

(declare-fun m!1453137 () Bool)

(assert (=> b!1583060 m!1453137))

(assert (=> b!1582938 d!167097))

(declare-fun d!167101 () Bool)

(assert (=> d!167101 (= (isDefined!602 (getValueByKey!834 (t!51981 l!1065) key!287)) (not (isEmpty!1190 (getValueByKey!834 (t!51981 l!1065) key!287))))))

(declare-fun bs!45879 () Bool)

(assert (= bs!45879 d!167101))

(assert (=> bs!45879 m!1453063))

(declare-fun m!1453139 () Bool)

(assert (=> bs!45879 m!1453139))

(assert (=> b!1582938 d!167101))

(declare-fun d!167103 () Bool)

(assert (=> d!167103 (isDefined!602 (getValueByKey!834 (t!51981 l!1065) key!287))))

(declare-fun lt!677089 () Unit!52217)

(declare-fun choose!2109 (List!37060 (_ BitVec 64)) Unit!52217)

(assert (=> d!167103 (= lt!677089 (choose!2109 (t!51981 l!1065) key!287))))

(declare-fun e!883638 () Bool)

(assert (=> d!167103 e!883638))

(declare-fun res!1081556 () Bool)

(assert (=> d!167103 (=> (not res!1081556) (not e!883638))))

(assert (=> d!167103 (= res!1081556 (isStrictlySorted!1131 (t!51981 l!1065)))))

(assert (=> d!167103 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!550 (t!51981 l!1065) key!287) lt!677089)))

(declare-fun b!1583083 () Bool)

(assert (=> b!1583083 (= e!883638 (containsKey!977 (t!51981 l!1065) key!287))))

(assert (= (and d!167103 res!1081556) b!1583083))

(assert (=> d!167103 m!1453063))

(assert (=> d!167103 m!1453063))

(assert (=> d!167103 m!1453069))

(declare-fun m!1453145 () Bool)

(assert (=> d!167103 m!1453145))

(assert (=> d!167103 m!1453073))

(assert (=> b!1583083 m!1453077))

(assert (=> b!1582938 d!167103))

(declare-fun d!167109 () Bool)

(declare-fun res!1081559 () Bool)

(declare-fun e!883641 () Bool)

(assert (=> d!167109 (=> res!1081559 e!883641)))

(assert (=> d!167109 (= res!1081559 (and (is-Cons!37056 (t!51981 l!1065)) (= (_1!12955 (h!38600 (t!51981 l!1065))) key!287)))))

(assert (=> d!167109 (= (containsKey!977 (t!51981 l!1065) key!287) e!883641)))

(declare-fun b!1583086 () Bool)

(declare-fun e!883642 () Bool)

(assert (=> b!1583086 (= e!883641 e!883642)))

(declare-fun res!1081560 () Bool)

(assert (=> b!1583086 (=> (not res!1081560) (not e!883642))))

(assert (=> b!1583086 (= res!1081560 (and (or (not (is-Cons!37056 (t!51981 l!1065))) (bvsle (_1!12955 (h!38600 (t!51981 l!1065))) key!287)) (is-Cons!37056 (t!51981 l!1065)) (bvslt (_1!12955 (h!38600 (t!51981 l!1065))) key!287)))))

(declare-fun b!1583087 () Bool)

(assert (=> b!1583087 (= e!883642 (containsKey!977 (t!51981 (t!51981 l!1065)) key!287))))

(assert (= (and d!167109 (not res!1081559)) b!1583086))

(assert (= (and b!1583086 res!1081560) b!1583087))

(declare-fun m!1453147 () Bool)

(assert (=> b!1583087 m!1453147))

(assert (=> b!1582943 d!167109))

(declare-fun d!167111 () Bool)

(declare-fun res!1081561 () Bool)

(declare-fun e!883645 () Bool)

(assert (=> d!167111 (=> res!1081561 e!883645)))

(assert (=> d!167111 (= res!1081561 (or (is-Nil!37057 (t!51981 l!1065)) (is-Nil!37057 (t!51981 (t!51981 l!1065)))))))

(assert (=> d!167111 (= (isStrictlySorted!1131 (t!51981 l!1065)) e!883645)))

(declare-fun b!1583092 () Bool)

(declare-fun e!883646 () Bool)

(assert (=> b!1583092 (= e!883645 e!883646)))

(declare-fun res!1081562 () Bool)

(assert (=> b!1583092 (=> (not res!1081562) (not e!883646))))

(assert (=> b!1583092 (= res!1081562 (bvslt (_1!12955 (h!38600 (t!51981 l!1065))) (_1!12955 (h!38600 (t!51981 (t!51981 l!1065))))))))

(declare-fun b!1583093 () Bool)

(assert (=> b!1583093 (= e!883646 (isStrictlySorted!1131 (t!51981 (t!51981 l!1065))))))

(assert (= (and d!167111 (not res!1081561)) b!1583092))

(assert (= (and b!1583092 res!1081562) b!1583093))

(declare-fun m!1453149 () Bool)

(assert (=> b!1583093 m!1453149))

(assert (=> b!1582940 d!167111))

(declare-fun b!1583099 () Bool)

(declare-fun e!883650 () Bool)

(declare-fun tp!114910 () Bool)

(assert (=> b!1583099 (= e!883650 (and tp_is_empty!39367 tp!114910))))

(assert (=> b!1582941 (= tp!114895 e!883650)))

(assert (= (and b!1582941 (is-Cons!37056 (t!51981 l!1065))) b!1583099))

(push 1)

