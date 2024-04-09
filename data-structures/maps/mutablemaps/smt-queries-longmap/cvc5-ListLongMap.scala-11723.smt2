; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137314 () Bool)

(assert start!137314)

(declare-fun b!1580754 () Bool)

(declare-fun res!1079992 () Bool)

(declare-fun e!881964 () Bool)

(assert (=> b!1580754 (=> (not res!1079992) (not e!881964))))

(declare-datatypes ((B!2678 0))(
  ( (B!2679 (val!19701 Int)) )
))
(declare-datatypes ((tuple2!25704 0))(
  ( (tuple2!25705 (_1!12862 (_ BitVec 64)) (_2!12862 B!2678)) )
))
(declare-datatypes ((List!36982 0))(
  ( (Nil!36979) (Cons!36978 (h!38522 tuple2!25704) (t!51903 List!36982)) )
))
(declare-fun l!1390 () List!36982)

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!923 (List!36982 (_ BitVec 64)) Bool)

(assert (=> b!1580754 (= res!1079992 (containsKey!923 l!1390 key!405))))

(declare-fun b!1580755 () Bool)

(declare-fun res!1079994 () Bool)

(declare-fun e!881965 () Bool)

(assert (=> b!1580755 (=> (not res!1079994) (not e!881965))))

(assert (=> b!1580755 (= res!1079994 (and (is-Cons!36978 l!1390) (= (_1!12862 (h!38522 l!1390)) key!405)))))

(declare-fun res!1079999 () Bool)

(assert (=> start!137314 (=> (not res!1079999) (not e!881964))))

(declare-fun isStrictlySorted!1077 (List!36982) Bool)

(assert (=> start!137314 (= res!1079999 (isStrictlySorted!1077 l!1390))))

(assert (=> start!137314 e!881964))

(declare-fun e!881963 () Bool)

(assert (=> start!137314 e!881963))

(assert (=> start!137314 true))

(declare-fun tp_is_empty!39223 () Bool)

(assert (=> start!137314 tp_is_empty!39223))

(declare-fun b!1580756 () Bool)

(declare-fun e!881967 () Bool)

(declare-datatypes ((tuple2!25706 0))(
  ( (tuple2!25707 (_1!12863 tuple2!25704) (_2!12863 List!36982)) )
))
(declare-datatypes ((Option!912 0))(
  ( (Some!911 (v!22414 tuple2!25706)) (None!910) )
))
(declare-fun lt!676751 () Option!912)

(declare-fun get!26831 (Option!912) tuple2!25706)

(assert (=> b!1580756 (= e!881967 (not (is-Nil!36979 (_2!12863 (get!26831 lt!676751)))))))

(declare-fun b!1580757 () Bool)

(declare-fun tp!114526 () Bool)

(assert (=> b!1580757 (= e!881963 (and tp_is_empty!39223 tp!114526))))

(declare-fun b!1580758 () Bool)

(declare-fun res!1079995 () Bool)

(assert (=> b!1580758 (=> (not res!1079995) (not e!881965))))

(assert (=> b!1580758 (= res!1079995 (isStrictlySorted!1077 (t!51903 l!1390)))))

(declare-fun b!1580759 () Bool)

(declare-fun res!1079997 () Bool)

(assert (=> b!1580759 (=> (not res!1079997) (not e!881965))))

(assert (=> b!1580759 (= res!1079997 (not (containsKey!923 (t!51903 l!1390) key!405)))))

(declare-fun b!1580760 () Bool)

(declare-fun e!881966 () Bool)

(assert (=> b!1580760 (= e!881966 e!881965)))

(declare-fun res!1079998 () Bool)

(assert (=> b!1580760 (=> (not res!1079998) (not e!881965))))

(assert (=> b!1580760 (= res!1079998 e!881967)))

(declare-fun res!1079996 () Bool)

(assert (=> b!1580760 (=> res!1079996 e!881967)))

(declare-fun isEmpty!1174 (Option!912) Bool)

(assert (=> b!1580760 (= res!1079996 (isEmpty!1174 lt!676751))))

(declare-fun unapply!88 (List!36982) Option!912)

(assert (=> b!1580760 (= lt!676751 (unapply!88 l!1390))))

(declare-fun b!1580761 () Bool)

(assert (=> b!1580761 (= e!881964 e!881966)))

(declare-fun res!1079993 () Bool)

(assert (=> b!1580761 (=> (not res!1079993) (not e!881966))))

(declare-fun lt!676753 () tuple2!25704)

(declare-fun contains!10510 (List!36982 tuple2!25704) Bool)

(assert (=> b!1580761 (= res!1079993 (contains!10510 l!1390 lt!676753))))

(declare-fun value!194 () B!2678)

(assert (=> b!1580761 (= lt!676753 (tuple2!25705 key!405 value!194))))

(declare-fun b!1580762 () Bool)

(declare-datatypes ((Option!913 0))(
  ( (Some!912 (v!22415 B!2678)) (None!911) )
))
(declare-fun getValueByKey!819 (List!36982 (_ BitVec 64)) Option!913)

(assert (=> b!1580762 (= e!881965 (not (= (getValueByKey!819 l!1390 key!405) (Some!912 value!194))))))

(assert (=> b!1580762 (not (contains!10510 (t!51903 l!1390) lt!676753))))

(declare-datatypes ((Unit!52184 0))(
  ( (Unit!52185) )
))
(declare-fun lt!676752 () Unit!52184)

(declare-fun lemmaNotContainsKeyThenNotContainsTuple!4 (List!36982 (_ BitVec 64) B!2678) Unit!52184)

(assert (=> b!1580762 (= lt!676752 (lemmaNotContainsKeyThenNotContainsTuple!4 (t!51903 l!1390) key!405 value!194))))

(assert (= (and start!137314 res!1079999) b!1580754))

(assert (= (and b!1580754 res!1079992) b!1580761))

(assert (= (and b!1580761 res!1079993) b!1580760))

(assert (= (and b!1580760 (not res!1079996)) b!1580756))

(assert (= (and b!1580760 res!1079998) b!1580755))

(assert (= (and b!1580755 res!1079994) b!1580758))

(assert (= (and b!1580758 res!1079995) b!1580759))

(assert (= (and b!1580759 res!1079997) b!1580762))

(assert (= (and start!137314 (is-Cons!36978 l!1390)) b!1580757))

(declare-fun m!1452005 () Bool)

(assert (=> b!1580756 m!1452005))

(declare-fun m!1452007 () Bool)

(assert (=> b!1580760 m!1452007))

(declare-fun m!1452009 () Bool)

(assert (=> b!1580760 m!1452009))

(declare-fun m!1452011 () Bool)

(assert (=> b!1580758 m!1452011))

(declare-fun m!1452013 () Bool)

(assert (=> start!137314 m!1452013))

(declare-fun m!1452015 () Bool)

(assert (=> b!1580762 m!1452015))

(declare-fun m!1452017 () Bool)

(assert (=> b!1580762 m!1452017))

(declare-fun m!1452019 () Bool)

(assert (=> b!1580762 m!1452019))

(declare-fun m!1452021 () Bool)

(assert (=> b!1580754 m!1452021))

(declare-fun m!1452023 () Bool)

(assert (=> b!1580759 m!1452023))

(declare-fun m!1452025 () Bool)

(assert (=> b!1580761 m!1452025))

(push 1)

(assert (not b!1580762))

(assert (not b!1580760))

(assert (not b!1580761))

(assert (not b!1580757))

(assert (not b!1580759))

(assert (not start!137314))

(assert (not b!1580756))

(assert (not b!1580758))

(assert tp_is_empty!39223)

(assert (not b!1580754))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166503 () Bool)

(assert (=> d!166503 (= (get!26831 lt!676751) (v!22414 lt!676751))))

(assert (=> b!1580756 d!166503))

(declare-fun d!166505 () Bool)

(declare-fun res!1080066 () Bool)

(declare-fun e!882022 () Bool)

(assert (=> d!166505 (=> res!1080066 e!882022)))

(assert (=> d!166505 (= res!1080066 (or (is-Nil!36979 l!1390) (is-Nil!36979 (t!51903 l!1390))))))

(assert (=> d!166505 (= (isStrictlySorted!1077 l!1390) e!882022)))

(declare-fun b!1580847 () Bool)

(declare-fun e!882023 () Bool)

(assert (=> b!1580847 (= e!882022 e!882023)))

(declare-fun res!1080067 () Bool)

(assert (=> b!1580847 (=> (not res!1080067) (not e!882023))))

(assert (=> b!1580847 (= res!1080067 (bvslt (_1!12862 (h!38522 l!1390)) (_1!12862 (h!38522 (t!51903 l!1390)))))))

(declare-fun b!1580848 () Bool)

(assert (=> b!1580848 (= e!882023 (isStrictlySorted!1077 (t!51903 l!1390)))))

(assert (= (and d!166505 (not res!1080066)) b!1580847))

(assert (= (and b!1580847 res!1080067) b!1580848))

(assert (=> b!1580848 m!1452011))

(assert (=> start!137314 d!166505))

(declare-fun b!1580879 () Bool)

(declare-fun e!882046 () Option!913)

(assert (=> b!1580879 (= e!882046 (Some!912 (_2!12862 (h!38522 l!1390))))))

(declare-fun b!1580880 () Bool)

(declare-fun e!882047 () Option!913)

(assert (=> b!1580880 (= e!882046 e!882047)))

(declare-fun c!146515 () Bool)

(assert (=> b!1580880 (= c!146515 (and (is-Cons!36978 l!1390) (not (= (_1!12862 (h!38522 l!1390)) key!405))))))

(declare-fun d!166511 () Bool)

(declare-fun c!146514 () Bool)

(assert (=> d!166511 (= c!146514 (and (is-Cons!36978 l!1390) (= (_1!12862 (h!38522 l!1390)) key!405)))))

(assert (=> d!166511 (= (getValueByKey!819 l!1390 key!405) e!882046)))

(declare-fun b!1580882 () Bool)

(assert (=> b!1580882 (= e!882047 None!911)))

(declare-fun b!1580881 () Bool)

(assert (=> b!1580881 (= e!882047 (getValueByKey!819 (t!51903 l!1390) key!405))))

(assert (= (and d!166511 c!146514) b!1580879))

(assert (= (and d!166511 (not c!146514)) b!1580880))

(assert (= (and b!1580880 c!146515) b!1580881))

(assert (= (and b!1580880 (not c!146515)) b!1580882))

(declare-fun m!1452087 () Bool)

(assert (=> b!1580881 m!1452087))

(assert (=> b!1580762 d!166511))

(declare-fun d!166521 () Bool)

(declare-fun lt!676786 () Bool)

(declare-fun content!846 (List!36982) (Set tuple2!25704))

(assert (=> d!166521 (= lt!676786 (set.member lt!676753 (content!846 (t!51903 l!1390))))))

(declare-fun e!882065 () Bool)

(assert (=> d!166521 (= lt!676786 e!882065)))

(declare-fun res!1080094 () Bool)

(assert (=> d!166521 (=> (not res!1080094) (not e!882065))))

(assert (=> d!166521 (= res!1080094 (is-Cons!36978 (t!51903 l!1390)))))

(assert (=> d!166521 (= (contains!10510 (t!51903 l!1390) lt!676753) lt!676786)))

(declare-fun b!1580903 () Bool)

(declare-fun e!882064 () Bool)

(assert (=> b!1580903 (= e!882065 e!882064)))

(declare-fun res!1080093 () Bool)

(assert (=> b!1580903 (=> res!1080093 e!882064)))

(assert (=> b!1580903 (= res!1080093 (= (h!38522 (t!51903 l!1390)) lt!676753))))

(declare-fun b!1580904 () Bool)

(assert (=> b!1580904 (= e!882064 (contains!10510 (t!51903 (t!51903 l!1390)) lt!676753))))

(assert (= (and d!166521 res!1080094) b!1580903))

(assert (= (and b!1580903 (not res!1080093)) b!1580904))

(declare-fun m!1452101 () Bool)

(assert (=> d!166521 m!1452101))

(declare-fun m!1452105 () Bool)

(assert (=> d!166521 m!1452105))

(declare-fun m!1452109 () Bool)

(assert (=> b!1580904 m!1452109))

(assert (=> b!1580762 d!166521))

(declare-fun d!166528 () Bool)

(assert (=> d!166528 (not (contains!10510 (t!51903 l!1390) (tuple2!25705 key!405 value!194)))))

(declare-fun lt!676790 () Unit!52184)

(declare-fun choose!2100 (List!36982 (_ BitVec 64) B!2678) Unit!52184)

(assert (=> d!166528 (= lt!676790 (choose!2100 (t!51903 l!1390) key!405 value!194))))

(declare-fun e!882075 () Bool)

(assert (=> d!166528 e!882075))

