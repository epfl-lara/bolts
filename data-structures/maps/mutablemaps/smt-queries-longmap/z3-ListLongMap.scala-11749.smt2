; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137856 () Bool)

(assert start!137856)

(declare-fun b!1582956 () Bool)

(declare-fun res!1081487 () Bool)

(declare-fun e!883553 () Bool)

(assert (=> b!1582956 (=> (not res!1081487) (not e!883553))))

(declare-datatypes ((B!2836 0))(
  ( (B!2837 (val!19780 Int)) )
))
(declare-datatypes ((tuple2!25892 0))(
  ( (tuple2!25893 (_1!12956 (_ BitVec 64)) (_2!12956 B!2836)) )
))
(declare-datatypes ((List!37061 0))(
  ( (Nil!37058) (Cons!37057 (h!38601 tuple2!25892) (t!51982 List!37061)) )
))
(declare-fun l!1065 () List!37061)

(declare-fun isStrictlySorted!1132 (List!37061) Bool)

(assert (=> b!1582956 (= res!1081487 (isStrictlySorted!1132 (t!51982 l!1065)))))

(declare-fun res!1081486 () Bool)

(assert (=> start!137856 (=> (not res!1081486) (not e!883553))))

(assert (=> start!137856 (= res!1081486 (isStrictlySorted!1132 l!1065))))

(assert (=> start!137856 e!883553))

(declare-fun e!883554 () Bool)

(assert (=> start!137856 e!883554))

(assert (=> start!137856 true))

(declare-fun b!1582957 () Bool)

(declare-fun key!287 () (_ BitVec 64))

(declare-datatypes ((Option!943 0))(
  ( (Some!942 (v!22466 B!2836)) (None!941) )
))
(declare-fun isDefined!603 (Option!943) Bool)

(declare-fun getValueByKey!835 (List!37061 (_ BitVec 64)) Option!943)

(assert (=> b!1582957 (= e!883553 (not (isDefined!603 (getValueByKey!835 l!1065 key!287))))))

(assert (=> b!1582957 (isDefined!603 (getValueByKey!835 (t!51982 l!1065) key!287))))

(declare-datatypes ((Unit!52219 0))(
  ( (Unit!52220) )
))
(declare-fun lt!677077 () Unit!52219)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!551 (List!37061 (_ BitVec 64)) Unit!52219)

(assert (=> b!1582957 (= lt!677077 (lemmaContainsKeyImpliesGetValueByKeyDefined!551 (t!51982 l!1065) key!287))))

(declare-fun b!1582958 () Bool)

(declare-fun res!1081488 () Bool)

(assert (=> b!1582958 (=> (not res!1081488) (not e!883553))))

(get-info :version)

(assert (=> b!1582958 (= res!1081488 (and ((_ is Cons!37057) l!1065) (not (= (_1!12956 (h!38601 l!1065)) key!287))))))

(declare-fun b!1582959 () Bool)

(declare-fun res!1081489 () Bool)

(assert (=> b!1582959 (=> (not res!1081489) (not e!883553))))

(declare-fun containsKey!978 (List!37061 (_ BitVec 64)) Bool)

(assert (=> b!1582959 (= res!1081489 (containsKey!978 l!1065 key!287))))

(declare-fun b!1582960 () Bool)

(declare-fun tp_is_empty!39369 () Bool)

(declare-fun tp!114898 () Bool)

(assert (=> b!1582960 (= e!883554 (and tp_is_empty!39369 tp!114898))))

(declare-fun b!1582961 () Bool)

(declare-fun res!1081490 () Bool)

(assert (=> b!1582961 (=> (not res!1081490) (not e!883553))))

(assert (=> b!1582961 (= res!1081490 (containsKey!978 (t!51982 l!1065) key!287))))

(assert (= (and start!137856 res!1081486) b!1582959))

(assert (= (and b!1582959 res!1081489) b!1582958))

(assert (= (and b!1582958 res!1081488) b!1582956))

(assert (= (and b!1582956 res!1081487) b!1582961))

(assert (= (and b!1582961 res!1081490) b!1582957))

(assert (= (and start!137856 ((_ is Cons!37057) l!1065)) b!1582960))

(declare-fun m!1453079 () Bool)

(assert (=> b!1582959 m!1453079))

(declare-fun m!1453081 () Bool)

(assert (=> start!137856 m!1453081))

(declare-fun m!1453083 () Bool)

(assert (=> b!1582957 m!1453083))

(declare-fun m!1453085 () Bool)

(assert (=> b!1582957 m!1453085))

(assert (=> b!1582957 m!1453083))

(declare-fun m!1453087 () Bool)

(assert (=> b!1582957 m!1453087))

(declare-fun m!1453089 () Bool)

(assert (=> b!1582957 m!1453089))

(assert (=> b!1582957 m!1453085))

(declare-fun m!1453091 () Bool)

(assert (=> b!1582957 m!1453091))

(declare-fun m!1453093 () Bool)

(assert (=> b!1582956 m!1453093))

(declare-fun m!1453095 () Bool)

(assert (=> b!1582961 m!1453095))

(check-sat (not b!1582957) (not b!1582961) (not b!1582956) (not b!1582959) (not b!1582960) (not start!137856) tp_is_empty!39369)
(check-sat)
(get-model)

(declare-fun d!167059 () Bool)

(declare-fun isEmpty!1189 (Option!943) Bool)

(assert (=> d!167059 (= (isDefined!603 (getValueByKey!835 l!1065 key!287)) (not (isEmpty!1189 (getValueByKey!835 l!1065 key!287))))))

(declare-fun bs!45874 () Bool)

(assert (= bs!45874 d!167059))

(assert (=> bs!45874 m!1453083))

(declare-fun m!1453115 () Bool)

(assert (=> bs!45874 m!1453115))

(assert (=> b!1582957 d!167059))

(declare-fun b!1582998 () Bool)

(declare-fun e!883575 () Option!943)

(assert (=> b!1582998 (= e!883575 (Some!942 (_2!12956 (h!38601 l!1065))))))

(declare-fun b!1583000 () Bool)

(declare-fun e!883576 () Option!943)

(assert (=> b!1583000 (= e!883576 (getValueByKey!835 (t!51982 l!1065) key!287))))

(declare-fun b!1583001 () Bool)

(assert (=> b!1583001 (= e!883576 None!941)))

(declare-fun d!167061 () Bool)

(declare-fun c!146627 () Bool)

(assert (=> d!167061 (= c!146627 (and ((_ is Cons!37057) l!1065) (= (_1!12956 (h!38601 l!1065)) key!287)))))

(assert (=> d!167061 (= (getValueByKey!835 l!1065 key!287) e!883575)))

(declare-fun b!1582999 () Bool)

(assert (=> b!1582999 (= e!883575 e!883576)))

(declare-fun c!146628 () Bool)

(assert (=> b!1582999 (= c!146628 (and ((_ is Cons!37057) l!1065) (not (= (_1!12956 (h!38601 l!1065)) key!287))))))

(assert (= (and d!167061 c!146627) b!1582998))

(assert (= (and d!167061 (not c!146627)) b!1582999))

(assert (= (and b!1582999 c!146628) b!1583000))

(assert (= (and b!1582999 (not c!146628)) b!1583001))

(assert (=> b!1583000 m!1453085))

(assert (=> b!1582957 d!167061))

(declare-fun b!1583004 () Bool)

(declare-fun e!883579 () Option!943)

(assert (=> b!1583004 (= e!883579 (Some!942 (_2!12956 (h!38601 (t!51982 l!1065)))))))

(declare-fun b!1583006 () Bool)

(declare-fun e!883580 () Option!943)

(assert (=> b!1583006 (= e!883580 (getValueByKey!835 (t!51982 (t!51982 l!1065)) key!287))))

(declare-fun b!1583007 () Bool)

(assert (=> b!1583007 (= e!883580 None!941)))

(declare-fun d!167069 () Bool)

(declare-fun c!146629 () Bool)

(assert (=> d!167069 (= c!146629 (and ((_ is Cons!37057) (t!51982 l!1065)) (= (_1!12956 (h!38601 (t!51982 l!1065))) key!287)))))

(assert (=> d!167069 (= (getValueByKey!835 (t!51982 l!1065) key!287) e!883579)))

(declare-fun b!1583005 () Bool)

(assert (=> b!1583005 (= e!883579 e!883580)))

(declare-fun c!146630 () Bool)

(assert (=> b!1583005 (= c!146630 (and ((_ is Cons!37057) (t!51982 l!1065)) (not (= (_1!12956 (h!38601 (t!51982 l!1065))) key!287))))))

(assert (= (and d!167069 c!146629) b!1583004))

(assert (= (and d!167069 (not c!146629)) b!1583005))

(assert (= (and b!1583005 c!146630) b!1583006))

(assert (= (and b!1583005 (not c!146630)) b!1583007))

(declare-fun m!1453119 () Bool)

(assert (=> b!1583006 m!1453119))

(assert (=> b!1582957 d!167069))

(declare-fun d!167073 () Bool)

(assert (=> d!167073 (= (isDefined!603 (getValueByKey!835 (t!51982 l!1065) key!287)) (not (isEmpty!1189 (getValueByKey!835 (t!51982 l!1065) key!287))))))

(declare-fun bs!45875 () Bool)

(assert (= bs!45875 d!167073))

(assert (=> bs!45875 m!1453085))

(declare-fun m!1453121 () Bool)

(assert (=> bs!45875 m!1453121))

(assert (=> b!1582957 d!167073))

(declare-fun d!167075 () Bool)

(assert (=> d!167075 (isDefined!603 (getValueByKey!835 (t!51982 l!1065) key!287))))

(declare-fun lt!677083 () Unit!52219)

(declare-fun choose!2108 (List!37061 (_ BitVec 64)) Unit!52219)

(assert (=> d!167075 (= lt!677083 (choose!2108 (t!51982 l!1065) key!287))))

(declare-fun e!883595 () Bool)

(assert (=> d!167075 e!883595))

(declare-fun res!1081528 () Bool)

(assert (=> d!167075 (=> (not res!1081528) (not e!883595))))

(assert (=> d!167075 (= res!1081528 (isStrictlySorted!1132 (t!51982 l!1065)))))

(assert (=> d!167075 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!551 (t!51982 l!1065) key!287) lt!677083)))

(declare-fun b!1583026 () Bool)

(assert (=> b!1583026 (= e!883595 (containsKey!978 (t!51982 l!1065) key!287))))

(assert (= (and d!167075 res!1081528) b!1583026))

(assert (=> d!167075 m!1453085))

(assert (=> d!167075 m!1453085))

(assert (=> d!167075 m!1453091))

(declare-fun m!1453125 () Bool)

(assert (=> d!167075 m!1453125))

(assert (=> d!167075 m!1453093))

(assert (=> b!1583026 m!1453095))

(assert (=> b!1582957 d!167075))

(declare-fun d!167083 () Bool)

(declare-fun res!1081533 () Bool)

(declare-fun e!883608 () Bool)

(assert (=> d!167083 (=> res!1081533 e!883608)))

(assert (=> d!167083 (= res!1081533 (or ((_ is Nil!37058) l!1065) ((_ is Nil!37058) (t!51982 l!1065))))))

(assert (=> d!167083 (= (isStrictlySorted!1132 l!1065) e!883608)))

(declare-fun b!1583047 () Bool)

(declare-fun e!883609 () Bool)

(assert (=> b!1583047 (= e!883608 e!883609)))

(declare-fun res!1081534 () Bool)

(assert (=> b!1583047 (=> (not res!1081534) (not e!883609))))

(assert (=> b!1583047 (= res!1081534 (bvslt (_1!12956 (h!38601 l!1065)) (_1!12956 (h!38601 (t!51982 l!1065)))))))

(declare-fun b!1583048 () Bool)

(assert (=> b!1583048 (= e!883609 (isStrictlySorted!1132 (t!51982 l!1065)))))

(assert (= (and d!167083 (not res!1081533)) b!1583047))

(assert (= (and b!1583047 res!1081534) b!1583048))

(assert (=> b!1583048 m!1453093))

(assert (=> start!137856 d!167083))

(declare-fun d!167093 () Bool)

(declare-fun res!1081535 () Bool)

(declare-fun e!883610 () Bool)

(assert (=> d!167093 (=> res!1081535 e!883610)))

(assert (=> d!167093 (= res!1081535 (or ((_ is Nil!37058) (t!51982 l!1065)) ((_ is Nil!37058) (t!51982 (t!51982 l!1065)))))))

(assert (=> d!167093 (= (isStrictlySorted!1132 (t!51982 l!1065)) e!883610)))

(declare-fun b!1583049 () Bool)

(declare-fun e!883611 () Bool)

(assert (=> b!1583049 (= e!883610 e!883611)))

(declare-fun res!1081536 () Bool)

(assert (=> b!1583049 (=> (not res!1081536) (not e!883611))))

(assert (=> b!1583049 (= res!1081536 (bvslt (_1!12956 (h!38601 (t!51982 l!1065))) (_1!12956 (h!38601 (t!51982 (t!51982 l!1065))))))))

(declare-fun b!1583050 () Bool)

(assert (=> b!1583050 (= e!883611 (isStrictlySorted!1132 (t!51982 (t!51982 l!1065))))))

(assert (= (and d!167093 (not res!1081535)) b!1583049))

(assert (= (and b!1583049 res!1081536) b!1583050))

(declare-fun m!1453133 () Bool)

(assert (=> b!1583050 m!1453133))

(assert (=> b!1582956 d!167093))

(declare-fun d!167095 () Bool)

(declare-fun res!1081544 () Bool)

(declare-fun e!883623 () Bool)

(assert (=> d!167095 (=> res!1081544 e!883623)))

(assert (=> d!167095 (= res!1081544 (and ((_ is Cons!37057) (t!51982 l!1065)) (= (_1!12956 (h!38601 (t!51982 l!1065))) key!287)))))

(assert (=> d!167095 (= (containsKey!978 (t!51982 l!1065) key!287) e!883623)))

(declare-fun b!1583066 () Bool)

(declare-fun e!883624 () Bool)

(assert (=> b!1583066 (= e!883623 e!883624)))

(declare-fun res!1081545 () Bool)

(assert (=> b!1583066 (=> (not res!1081545) (not e!883624))))

(assert (=> b!1583066 (= res!1081545 (and (or (not ((_ is Cons!37057) (t!51982 l!1065))) (bvsle (_1!12956 (h!38601 (t!51982 l!1065))) key!287)) ((_ is Cons!37057) (t!51982 l!1065)) (bvslt (_1!12956 (h!38601 (t!51982 l!1065))) key!287)))))

(declare-fun b!1583067 () Bool)

(assert (=> b!1583067 (= e!883624 (containsKey!978 (t!51982 (t!51982 l!1065)) key!287))))

(assert (= (and d!167095 (not res!1081544)) b!1583066))

(assert (= (and b!1583066 res!1081545) b!1583067))

(declare-fun m!1453141 () Bool)

(assert (=> b!1583067 m!1453141))

(assert (=> b!1582961 d!167095))

(declare-fun d!167105 () Bool)

(declare-fun res!1081550 () Bool)

(declare-fun e!883629 () Bool)

(assert (=> d!167105 (=> res!1081550 e!883629)))

(assert (=> d!167105 (= res!1081550 (and ((_ is Cons!37057) l!1065) (= (_1!12956 (h!38601 l!1065)) key!287)))))

(assert (=> d!167105 (= (containsKey!978 l!1065 key!287) e!883629)))

(declare-fun b!1583072 () Bool)

(declare-fun e!883630 () Bool)

(assert (=> b!1583072 (= e!883629 e!883630)))

(declare-fun res!1081551 () Bool)

(assert (=> b!1583072 (=> (not res!1081551) (not e!883630))))

(assert (=> b!1583072 (= res!1081551 (and (or (not ((_ is Cons!37057) l!1065)) (bvsle (_1!12956 (h!38601 l!1065)) key!287)) ((_ is Cons!37057) l!1065) (bvslt (_1!12956 (h!38601 l!1065)) key!287)))))

(declare-fun b!1583073 () Bool)

(assert (=> b!1583073 (= e!883630 (containsKey!978 (t!51982 l!1065) key!287))))

(assert (= (and d!167105 (not res!1081550)) b!1583072))

(assert (= (and b!1583072 res!1081551) b!1583073))

(assert (=> b!1583073 m!1453095))

(assert (=> b!1582959 d!167105))

(declare-fun b!1583080 () Bool)

(declare-fun e!883635 () Bool)

(declare-fun tp!114904 () Bool)

(assert (=> b!1583080 (= e!883635 (and tp_is_empty!39369 tp!114904))))

(assert (=> b!1582960 (= tp!114898 e!883635)))

(assert (= (and b!1582960 ((_ is Cons!37057) (t!51982 l!1065))) b!1583080))

(check-sat (not d!167075) (not b!1583067) (not b!1583080) (not b!1583048) (not d!167059) (not b!1583006) (not b!1583026) (not d!167073) (not b!1583050) (not b!1583073) tp_is_empty!39369 (not b!1583000))
(check-sat)
