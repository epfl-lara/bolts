; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137318 () Bool)

(assert start!137318)

(declare-fun b!1580808 () Bool)

(declare-fun e!881997 () Bool)

(declare-fun e!881994 () Bool)

(assert (=> b!1580808 (= e!881997 e!881994)))

(declare-fun res!1080041 () Bool)

(assert (=> b!1580808 (=> (not res!1080041) (not e!881994))))

(declare-fun e!881995 () Bool)

(assert (=> b!1580808 (= res!1080041 e!881995)))

(declare-fun res!1080047 () Bool)

(assert (=> b!1580808 (=> res!1080047 e!881995)))

(declare-datatypes ((B!2682 0))(
  ( (B!2683 (val!19703 Int)) )
))
(declare-datatypes ((tuple2!25712 0))(
  ( (tuple2!25713 (_1!12866 (_ BitVec 64)) (_2!12866 B!2682)) )
))
(declare-datatypes ((List!36984 0))(
  ( (Nil!36981) (Cons!36980 (h!38524 tuple2!25712) (t!51905 List!36984)) )
))
(declare-datatypes ((tuple2!25714 0))(
  ( (tuple2!25715 (_1!12867 tuple2!25712) (_2!12867 List!36984)) )
))
(declare-datatypes ((Option!916 0))(
  ( (Some!915 (v!22418 tuple2!25714)) (None!914) )
))
(declare-fun lt!676771 () Option!916)

(declare-fun isEmpty!1176 (Option!916) Bool)

(assert (=> b!1580808 (= res!1080047 (isEmpty!1176 lt!676771))))

(declare-fun l!1390 () List!36984)

(declare-fun unapply!90 (List!36984) Option!916)

(assert (=> b!1580808 (= lt!676771 (unapply!90 l!1390))))

(declare-fun b!1580809 () Bool)

(declare-fun res!1080044 () Bool)

(assert (=> b!1580809 (=> (not res!1080044) (not e!881994))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!925 (List!36984 (_ BitVec 64)) Bool)

(assert (=> b!1580809 (= res!1080044 (not (containsKey!925 (t!51905 l!1390) key!405)))))

(declare-fun b!1580810 () Bool)

(declare-fun value!194 () B!2682)

(declare-datatypes ((Option!917 0))(
  ( (Some!916 (v!22419 B!2682)) (None!915) )
))
(declare-fun getValueByKey!821 (List!36984 (_ BitVec 64)) Option!917)

(assert (=> b!1580810 (= e!881994 (not (= (getValueByKey!821 l!1390 key!405) (Some!916 value!194))))))

(declare-fun lt!676769 () tuple2!25712)

(declare-fun contains!10512 (List!36984 tuple2!25712) Bool)

(assert (=> b!1580810 (not (contains!10512 (t!51905 l!1390) lt!676769))))

(declare-datatypes ((Unit!52188 0))(
  ( (Unit!52189) )
))
(declare-fun lt!676770 () Unit!52188)

(declare-fun lemmaNotContainsKeyThenNotContainsTuple!6 (List!36984 (_ BitVec 64) B!2682) Unit!52188)

(assert (=> b!1580810 (= lt!676770 (lemmaNotContainsKeyThenNotContainsTuple!6 (t!51905 l!1390) key!405 value!194))))

(declare-fun b!1580811 () Bool)

(declare-fun res!1080045 () Bool)

(assert (=> b!1580811 (=> (not res!1080045) (not e!881994))))

(declare-fun isStrictlySorted!1079 (List!36984) Bool)

(assert (=> b!1580811 (= res!1080045 (isStrictlySorted!1079 (t!51905 l!1390)))))

(declare-fun b!1580812 () Bool)

(declare-fun res!1080043 () Bool)

(assert (=> b!1580812 (=> (not res!1080043) (not e!881994))))

(assert (=> b!1580812 (= res!1080043 (and (is-Cons!36980 l!1390) (= (_1!12866 (h!38524 l!1390)) key!405)))))

(declare-fun b!1580813 () Bool)

(declare-fun e!881996 () Bool)

(assert (=> b!1580813 (= e!881996 e!881997)))

(declare-fun res!1080046 () Bool)

(assert (=> b!1580813 (=> (not res!1080046) (not e!881997))))

(assert (=> b!1580813 (= res!1080046 (contains!10512 l!1390 lt!676769))))

(assert (=> b!1580813 (= lt!676769 (tuple2!25713 key!405 value!194))))

(declare-fun res!1080040 () Bool)

(assert (=> start!137318 (=> (not res!1080040) (not e!881996))))

(assert (=> start!137318 (= res!1080040 (isStrictlySorted!1079 l!1390))))

(assert (=> start!137318 e!881996))

(declare-fun e!881993 () Bool)

(assert (=> start!137318 e!881993))

(assert (=> start!137318 true))

(declare-fun tp_is_empty!39227 () Bool)

(assert (=> start!137318 tp_is_empty!39227))

(declare-fun b!1580814 () Bool)

(declare-fun tp!114532 () Bool)

(assert (=> b!1580814 (= e!881993 (and tp_is_empty!39227 tp!114532))))

(declare-fun b!1580815 () Bool)

(declare-fun get!26833 (Option!916) tuple2!25714)

(assert (=> b!1580815 (= e!881995 (not (is-Nil!36981 (_2!12867 (get!26833 lt!676771)))))))

(declare-fun b!1580816 () Bool)

(declare-fun res!1080042 () Bool)

(assert (=> b!1580816 (=> (not res!1080042) (not e!881996))))

(assert (=> b!1580816 (= res!1080042 (containsKey!925 l!1390 key!405))))

(assert (= (and start!137318 res!1080040) b!1580816))

(assert (= (and b!1580816 res!1080042) b!1580813))

(assert (= (and b!1580813 res!1080046) b!1580808))

(assert (= (and b!1580808 (not res!1080047)) b!1580815))

(assert (= (and b!1580808 res!1080041) b!1580812))

(assert (= (and b!1580812 res!1080043) b!1580811))

(assert (= (and b!1580811 res!1080045) b!1580809))

(assert (= (and b!1580809 res!1080044) b!1580810))

(assert (= (and start!137318 (is-Cons!36980 l!1390)) b!1580814))

(declare-fun m!1452049 () Bool)

(assert (=> start!137318 m!1452049))

(declare-fun m!1452051 () Bool)

(assert (=> b!1580816 m!1452051))

(declare-fun m!1452053 () Bool)

(assert (=> b!1580810 m!1452053))

(declare-fun m!1452055 () Bool)

(assert (=> b!1580810 m!1452055))

(declare-fun m!1452057 () Bool)

(assert (=> b!1580810 m!1452057))

(declare-fun m!1452059 () Bool)

(assert (=> b!1580815 m!1452059))

(declare-fun m!1452061 () Bool)

(assert (=> b!1580809 m!1452061))

(declare-fun m!1452063 () Bool)

(assert (=> b!1580808 m!1452063))

(declare-fun m!1452065 () Bool)

(assert (=> b!1580808 m!1452065))

(declare-fun m!1452067 () Bool)

(assert (=> b!1580813 m!1452067))

(declare-fun m!1452069 () Bool)

(assert (=> b!1580811 m!1452069))

(push 1)

(assert (not b!1580809))

(assert tp_is_empty!39227)

(assert (not start!137318))

(assert (not b!1580814))

(assert (not b!1580810))

(assert (not b!1580813))

(assert (not b!1580816))

(assert (not b!1580808))

(assert (not b!1580815))

(assert (not b!1580811))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1580841 () Bool)

(declare-fun e!882018 () Option!917)

(assert (=> b!1580841 (= e!882018 (Some!916 (_2!12866 (h!38524 l!1390))))))

(declare-fun b!1580843 () Bool)

(declare-fun e!882019 () Option!917)

(assert (=> b!1580843 (= e!882019 (getValueByKey!821 (t!51905 l!1390) key!405))))

(declare-fun b!1580842 () Bool)

(assert (=> b!1580842 (= e!882018 e!882019)))

(declare-fun c!146505 () Bool)

(assert (=> b!1580842 (= c!146505 (and (is-Cons!36980 l!1390) (not (= (_1!12866 (h!38524 l!1390)) key!405))))))

(declare-fun b!1580844 () Bool)

(assert (=> b!1580844 (= e!882019 None!915)))

(declare-fun d!166499 () Bool)

(declare-fun c!146504 () Bool)

(assert (=> d!166499 (= c!146504 (and (is-Cons!36980 l!1390) (= (_1!12866 (h!38524 l!1390)) key!405)))))

(assert (=> d!166499 (= (getValueByKey!821 l!1390 key!405) e!882018)))

(assert (= (and d!166499 c!146504) b!1580841))

(assert (= (and d!166499 (not c!146504)) b!1580842))

(assert (= (and b!1580842 c!146505) b!1580843))

(assert (= (and b!1580842 (not c!146505)) b!1580844))

(declare-fun m!1452071 () Bool)

(assert (=> b!1580843 m!1452071))

(assert (=> b!1580810 d!166499))

(declare-fun d!166509 () Bool)

(declare-fun lt!676777 () Bool)

(declare-fun content!845 (List!36984) (Set tuple2!25712))

(assert (=> d!166509 (= lt!676777 (member lt!676769 (content!845 (t!51905 l!1390))))))

(declare-fun e!882045 () Bool)

(assert (=> d!166509 (= lt!676777 e!882045)))

(declare-fun res!1080080 () Bool)

(assert (=> d!166509 (=> (not res!1080080) (not e!882045))))

(assert (=> d!166509 (= res!1080080 (is-Cons!36980 (t!51905 l!1390)))))

(assert (=> d!166509 (= (contains!10512 (t!51905 l!1390) lt!676769) lt!676777)))

(declare-fun b!1580877 () Bool)

(declare-fun e!882044 () Bool)

(assert (=> b!1580877 (= e!882045 e!882044)))

(declare-fun res!1080081 () Bool)

(assert (=> b!1580877 (=> res!1080081 e!882044)))

(assert (=> b!1580877 (= res!1080081 (= (h!38524 (t!51905 l!1390)) lt!676769))))

(declare-fun b!1580878 () Bool)

(assert (=> b!1580878 (= e!882044 (contains!10512 (t!51905 (t!51905 l!1390)) lt!676769))))

(assert (= (and d!166509 res!1080080) b!1580877))

(assert (= (and b!1580877 (not res!1080081)) b!1580878))

(declare-fun m!1452081 () Bool)

(assert (=> d!166509 m!1452081))

(declare-fun m!1452083 () Bool)

(assert (=> d!166509 m!1452083))

(declare-fun m!1452085 () Bool)

(assert (=> b!1580878 m!1452085))

(assert (=> b!1580810 d!166509))

(declare-fun d!166519 () Bool)

(assert (=> d!166519 (not (contains!10512 (t!51905 l!1390) (tuple2!25713 key!405 value!194)))))

(declare-fun lt!676787 () Unit!52188)

(declare-fun choose!2101 (List!36984 (_ BitVec 64) B!2682) Unit!52188)

(assert (=> d!166519 (= lt!676787 (choose!2101 (t!51905 l!1390) key!405 value!194))))

(declare-fun e!882066 () Bool)

(assert (=> d!166519 e!882066))

