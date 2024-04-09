; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137858 () Bool)

(assert start!137858)

(declare-fun b!1582974 () Bool)

(declare-fun e!883559 () Bool)

(declare-datatypes ((B!2838 0))(
  ( (B!2839 (val!19781 Int)) )
))
(declare-datatypes ((tuple2!25894 0))(
  ( (tuple2!25895 (_1!12957 (_ BitVec 64)) (_2!12957 B!2838)) )
))
(declare-datatypes ((List!37062 0))(
  ( (Nil!37059) (Cons!37058 (h!38602 tuple2!25894) (t!51983 List!37062)) )
))
(declare-fun l!1065 () List!37062)

(declare-fun key!287 () (_ BitVec 64))

(declare-datatypes ((Option!944 0))(
  ( (Some!943 (v!22467 B!2838)) (None!942) )
))
(declare-fun isDefined!604 (Option!944) Bool)

(declare-fun getValueByKey!836 (List!37062 (_ BitVec 64)) Option!944)

(assert (=> b!1582974 (= e!883559 (not (isDefined!604 (getValueByKey!836 l!1065 key!287))))))

(assert (=> b!1582974 (isDefined!604 (getValueByKey!836 (t!51983 l!1065) key!287))))

(declare-datatypes ((Unit!52221 0))(
  ( (Unit!52222) )
))
(declare-fun lt!677080 () Unit!52221)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!552 (List!37062 (_ BitVec 64)) Unit!52221)

(assert (=> b!1582974 (= lt!677080 (lemmaContainsKeyImpliesGetValueByKeyDefined!552 (t!51983 l!1065) key!287))))

(declare-fun b!1582975 () Bool)

(declare-fun res!1081502 () Bool)

(assert (=> b!1582975 (=> (not res!1081502) (not e!883559))))

(assert (=> b!1582975 (= res!1081502 (and (is-Cons!37058 l!1065) (not (= (_1!12957 (h!38602 l!1065)) key!287))))))

(declare-fun b!1582976 () Bool)

(declare-fun res!1081501 () Bool)

(assert (=> b!1582976 (=> (not res!1081501) (not e!883559))))

(declare-fun isStrictlySorted!1133 (List!37062) Bool)

(assert (=> b!1582976 (= res!1081501 (isStrictlySorted!1133 (t!51983 l!1065)))))

(declare-fun b!1582977 () Bool)

(declare-fun res!1081504 () Bool)

(assert (=> b!1582977 (=> (not res!1081504) (not e!883559))))

(declare-fun containsKey!979 (List!37062 (_ BitVec 64)) Bool)

(assert (=> b!1582977 (= res!1081504 (containsKey!979 l!1065 key!287))))

(declare-fun res!1081503 () Bool)

(assert (=> start!137858 (=> (not res!1081503) (not e!883559))))

(assert (=> start!137858 (= res!1081503 (isStrictlySorted!1133 l!1065))))

(assert (=> start!137858 e!883559))

(declare-fun e!883560 () Bool)

(assert (=> start!137858 e!883560))

(assert (=> start!137858 true))

(declare-fun b!1582978 () Bool)

(declare-fun tp_is_empty!39371 () Bool)

(declare-fun tp!114901 () Bool)

(assert (=> b!1582978 (= e!883560 (and tp_is_empty!39371 tp!114901))))

(declare-fun b!1582979 () Bool)

(declare-fun res!1081505 () Bool)

(assert (=> b!1582979 (=> (not res!1081505) (not e!883559))))

(assert (=> b!1582979 (= res!1081505 (containsKey!979 (t!51983 l!1065) key!287))))

(assert (= (and start!137858 res!1081503) b!1582977))

(assert (= (and b!1582977 res!1081504) b!1582975))

(assert (= (and b!1582975 res!1081502) b!1582976))

(assert (= (and b!1582976 res!1081501) b!1582979))

(assert (= (and b!1582979 res!1081505) b!1582974))

(assert (= (and start!137858 (is-Cons!37058 l!1065)) b!1582978))

(declare-fun m!1453097 () Bool)

(assert (=> b!1582977 m!1453097))

(declare-fun m!1453099 () Bool)

(assert (=> start!137858 m!1453099))

(declare-fun m!1453101 () Bool)

(assert (=> b!1582976 m!1453101))

(declare-fun m!1453103 () Bool)

(assert (=> b!1582974 m!1453103))

(declare-fun m!1453105 () Bool)

(assert (=> b!1582974 m!1453105))

(assert (=> b!1582974 m!1453103))

(declare-fun m!1453107 () Bool)

(assert (=> b!1582974 m!1453107))

(declare-fun m!1453109 () Bool)

(assert (=> b!1582974 m!1453109))

(assert (=> b!1582974 m!1453105))

(declare-fun m!1453111 () Bool)

(assert (=> b!1582974 m!1453111))

(declare-fun m!1453113 () Bool)

(assert (=> b!1582979 m!1453113))

(push 1)

(assert (not b!1582977))

(assert tp_is_empty!39371)

(assert (not start!137858))

(assert (not b!1582974))

(assert (not b!1582976))

(assert (not b!1582979))

(assert (not b!1582978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167063 () Bool)

(declare-fun res!1081514 () Bool)

(declare-fun e!883573 () Bool)

(assert (=> d!167063 (=> res!1081514 e!883573)))

(assert (=> d!167063 (= res!1081514 (or (is-Nil!37059 (t!51983 l!1065)) (is-Nil!37059 (t!51983 (t!51983 l!1065)))))))

(assert (=> d!167063 (= (isStrictlySorted!1133 (t!51983 l!1065)) e!883573)))

(declare-fun b!1582996 () Bool)

(declare-fun e!883574 () Bool)

(assert (=> b!1582996 (= e!883573 e!883574)))

(declare-fun res!1081515 () Bool)

(assert (=> b!1582996 (=> (not res!1081515) (not e!883574))))

(assert (=> b!1582996 (= res!1081515 (bvslt (_1!12957 (h!38602 (t!51983 l!1065))) (_1!12957 (h!38602 (t!51983 (t!51983 l!1065))))))))

(declare-fun b!1582997 () Bool)

(assert (=> b!1582997 (= e!883574 (isStrictlySorted!1133 (t!51983 (t!51983 l!1065))))))

(assert (= (and d!167063 (not res!1081514)) b!1582996))

(assert (= (and b!1582996 res!1081515) b!1582997))

(declare-fun m!1453117 () Bool)

(assert (=> b!1582997 m!1453117))

(assert (=> b!1582976 d!167063))

(declare-fun d!167067 () Bool)

(declare-fun res!1081516 () Bool)

(declare-fun e!883577 () Bool)

(assert (=> d!167067 (=> res!1081516 e!883577)))

(assert (=> d!167067 (= res!1081516 (or (is-Nil!37059 l!1065) (is-Nil!37059 (t!51983 l!1065))))))

(assert (=> d!167067 (= (isStrictlySorted!1133 l!1065) e!883577)))

(declare-fun b!1583002 () Bool)

(declare-fun e!883578 () Bool)

(assert (=> b!1583002 (= e!883577 e!883578)))

(declare-fun res!1081517 () Bool)

(assert (=> b!1583002 (=> (not res!1081517) (not e!883578))))

(assert (=> b!1583002 (= res!1081517 (bvslt (_1!12957 (h!38602 l!1065)) (_1!12957 (h!38602 (t!51983 l!1065)))))))

(declare-fun b!1583003 () Bool)

(assert (=> b!1583003 (= e!883578 (isStrictlySorted!1133 (t!51983 l!1065)))))

(assert (= (and d!167067 (not res!1081516)) b!1583002))

(assert (= (and b!1583002 res!1081517) b!1583003))

(assert (=> b!1583003 m!1453101))

(assert (=> start!137858 d!167067))

(declare-fun d!167071 () Bool)

(declare-fun isEmpty!1191 (Option!944) Bool)

(assert (=> d!167071 (= (isDefined!604 (getValueByKey!836 l!1065 key!287)) (not (isEmpty!1191 (getValueByKey!836 l!1065 key!287))))))

(declare-fun bs!45876 () Bool)

(assert (= bs!45876 d!167071))

(assert (=> bs!45876 m!1453103))

(declare-fun m!1453123 () Bool)

(assert (=> bs!45876 m!1453123))

(assert (=> b!1582974 d!167071))

(declare-fun b!1583030 () Bool)

(declare-fun e!883597 () Option!944)

(assert (=> b!1583030 (= e!883597 None!942)))

(declare-fun d!167079 () Bool)

(declare-fun c!146635 () Bool)

(assert (=> d!167079 (= c!146635 (and (is-Cons!37058 l!1065) (= (_1!12957 (h!38602 l!1065)) key!287)))))

(declare-fun e!883596 () Option!944)

(assert (=> d!167079 (= (getValueByKey!836 l!1065 key!287) e!883596)))

(declare-fun b!1583029 () Bool)

(assert (=> b!1583029 (= e!883597 (getValueByKey!836 (t!51983 l!1065) key!287))))

(declare-fun b!1583027 () Bool)

(assert (=> b!1583027 (= e!883596 (Some!943 (_2!12957 (h!38602 l!1065))))))

(declare-fun b!1583028 () Bool)

(assert (=> b!1583028 (= e!883596 e!883597)))

(declare-fun c!146636 () Bool)

(assert (=> b!1583028 (= c!146636 (and (is-Cons!37058 l!1065) (not (= (_1!12957 (h!38602 l!1065)) key!287))))))

(assert (= (and d!167079 c!146635) b!1583027))

(assert (= (and d!167079 (not c!146635)) b!1583028))

(assert (= (and b!1583028 c!146636) b!1583029))

(assert (= (and b!1583028 (not c!146636)) b!1583030))

(assert (=> b!1583029 m!1453105))

(assert (=> b!1582974 d!167079))

(declare-fun b!1583034 () Bool)

(declare-fun e!883599 () Option!944)

(assert (=> b!1583034 (= e!883599 None!942)))

(declare-fun d!167087 () Bool)

(declare-fun c!146637 () Bool)

(assert (=> d!167087 (= c!146637 (and (is-Cons!37058 (t!51983 l!1065)) (= (_1!12957 (h!38602 (t!51983 l!1065))) key!287)))))

(declare-fun e!883598 () Option!944)

(assert (=> d!167087 (= (getValueByKey!836 (t!51983 l!1065) key!287) e!883598)))

(declare-fun b!1583033 () Bool)

(assert (=> b!1583033 (= e!883599 (getValueByKey!836 (t!51983 (t!51983 l!1065)) key!287))))

(declare-fun b!1583031 () Bool)

(assert (=> b!1583031 (= e!883598 (Some!943 (_2!12957 (h!38602 (t!51983 l!1065)))))))

(declare-fun b!1583032 () Bool)

(assert (=> b!1583032 (= e!883598 e!883599)))

(declare-fun c!146638 () Bool)

(assert (=> b!1583032 (= c!146638 (and (is-Cons!37058 (t!51983 l!1065)) (not (= (_1!12957 (h!38602 (t!51983 l!1065))) key!287))))))

(assert (= (and d!167087 c!146637) b!1583031))

(assert (= (and d!167087 (not c!146637)) b!1583032))

(assert (= (and b!1583032 c!146638) b!1583033))

(assert (= (and b!1583032 (not c!146638)) b!1583034))

(declare-fun m!1453129 () Bool)

(assert (=> b!1583033 m!1453129))

(assert (=> b!1582974 d!167087))

(declare-fun d!167089 () Bool)

(assert (=> d!167089 (= (isDefined!604 (getValueByKey!836 (t!51983 l!1065) key!287)) (not (isEmpty!1191 (getValueByKey!836 (t!51983 l!1065) key!287))))))

(declare-fun bs!45878 () Bool)

(assert (= bs!45878 d!167089))

(assert (=> bs!45878 m!1453105))

(declare-fun m!1453131 () Bool)

(assert (=> bs!45878 m!1453131))

(assert (=> b!1582974 d!167089))

(declare-fun d!167091 () Bool)

(assert (=> d!167091 (isDefined!604 (getValueByKey!836 (t!51983 l!1065) key!287))))

(declare-fun lt!677086 () Unit!52221)

(declare-fun choose!2110 (List!37062 (_ BitVec 64)) Unit!52221)

(assert (=> d!167091 (= lt!677086 (choose!2110 (t!51983 l!1065) key!287))))

(declare-fun e!883616 () Bool)

(assert (=> d!167091 e!883616))

(declare-fun res!1081539 () Bool)

(assert (=> d!167091 (=> (not res!1081539) (not e!883616))))

(assert (=> d!167091 (= res!1081539 (isStrictlySorted!1133 (t!51983 l!1065)))))

(assert (=> d!167091 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!552 (t!51983 l!1065) key!287) lt!677086)))

(declare-fun b!1583057 () Bool)

(assert (=> b!1583057 (= e!883616 (containsKey!979 (t!51983 l!1065) key!287))))

(assert (= (and d!167091 res!1081539) b!1583057))

(assert (=> d!167091 m!1453105))

(assert (=> d!167091 m!1453105))

(assert (=> d!167091 m!1453111))

(declare-fun m!1453135 () Bool)

(assert (=> d!167091 m!1453135))

(assert (=> d!167091 m!1453101))

(assert (=> b!1583057 m!1453113))

(assert (=> b!1582974 d!167091))

(declare-fun d!167099 () Bool)

(declare-fun res!1081554 () Bool)

(declare-fun e!883636 () Bool)

(assert (=> d!167099 (=> res!1081554 e!883636)))

(assert (=> d!167099 (= res!1081554 (and (is-Cons!37058 (t!51983 l!1065)) (= (_1!12957 (h!38602 (t!51983 l!1065))) key!287)))))

(assert (=> d!167099 (= (containsKey!979 (t!51983 l!1065) key!287) e!883636)))

(declare-fun b!1583081 () Bool)

(declare-fun e!883637 () Bool)

(assert (=> b!1583081 (= e!883636 e!883637)))

(declare-fun res!1081555 () Bool)

(assert (=> b!1583081 (=> (not res!1081555) (not e!883637))))

(assert (=> b!1583081 (= res!1081555 (and (or (not (is-Cons!37058 (t!51983 l!1065))) (bvsle (_1!12957 (h!38602 (t!51983 l!1065))) key!287)) (is-Cons!37058 (t!51983 l!1065)) (bvslt (_1!12957 (h!38602 (t!51983 l!1065))) key!287)))))

(declare-fun b!1583082 () Bool)

(assert (=> b!1583082 (= e!883637 (containsKey!979 (t!51983 (t!51983 l!1065)) key!287))))

(assert (= (and d!167099 (not res!1081554)) b!1583081))

(assert (= (and b!1583081 res!1081555) b!1583082))

(declare-fun m!1453143 () Bool)

(assert (=> b!1583082 m!1453143))

(assert (=> b!1582979 d!167099))

