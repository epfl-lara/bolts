; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137276 () Bool)

(assert start!137276)

(declare-fun b!1580647 () Bool)

(declare-fun res!1079909 () Bool)

(declare-fun e!881874 () Bool)

(assert (=> b!1580647 (=> (not res!1079909) (not e!881874))))

(declare-datatypes ((B!2676 0))(
  ( (B!2677 (val!19700 Int)) )
))
(declare-datatypes ((tuple2!25700 0))(
  ( (tuple2!25701 (_1!12860 (_ BitVec 64)) (_2!12860 B!2676)) )
))
(declare-datatypes ((List!36981 0))(
  ( (Nil!36978) (Cons!36977 (h!38521 tuple2!25700) (t!51902 List!36981)) )
))
(declare-fun l!1390 () List!36981)

(declare-fun key!405 () (_ BitVec 64))

(assert (=> b!1580647 (= res!1079909 (and (is-Cons!36977 l!1390) (= (_1!12860 (h!38521 l!1390)) key!405)))))

(declare-fun b!1580648 () Bool)

(declare-fun res!1079907 () Bool)

(declare-fun e!881875 () Bool)

(assert (=> b!1580648 (=> (not res!1079907) (not e!881875))))

(declare-fun containsKey!922 (List!36981 (_ BitVec 64)) Bool)

(assert (=> b!1580648 (= res!1079907 (containsKey!922 l!1390 key!405))))

(declare-fun b!1580649 () Bool)

(assert (=> b!1580649 (= e!881875 e!881874)))

(declare-fun res!1079908 () Bool)

(assert (=> b!1580649 (=> (not res!1079908) (not e!881874))))

(declare-fun e!881877 () Bool)

(assert (=> b!1580649 (= res!1079908 e!881877)))

(declare-fun res!1079904 () Bool)

(assert (=> b!1580649 (=> res!1079904 e!881877)))

(declare-datatypes ((tuple2!25702 0))(
  ( (tuple2!25703 (_1!12861 tuple2!25700) (_2!12861 List!36981)) )
))
(declare-datatypes ((Option!911 0))(
  ( (Some!910 (v!22410 tuple2!25702)) (None!909) )
))
(declare-fun lt!676735 () Option!911)

(declare-fun isEmpty!1173 (Option!911) Bool)

(assert (=> b!1580649 (= res!1079904 (isEmpty!1173 lt!676735))))

(declare-fun unapply!87 (List!36981) Option!911)

(assert (=> b!1580649 (= lt!676735 (unapply!87 l!1390))))

(declare-fun b!1580650 () Bool)

(declare-fun e!881873 () Bool)

(assert (=> b!1580650 (= e!881874 e!881873)))

(declare-fun res!1079903 () Bool)

(assert (=> b!1580650 (=> res!1079903 e!881873)))

(declare-fun isStrictlySorted!1076 (List!36981) Bool)

(assert (=> b!1580650 (= res!1079903 (not (isStrictlySorted!1076 (t!51902 l!1390))))))

(declare-fun b!1580651 () Bool)

(assert (=> b!1580651 (= e!881873 (containsKey!922 (t!51902 l!1390) key!405))))

(declare-fun b!1580652 () Bool)

(declare-fun e!881876 () Bool)

(declare-fun tp_is_empty!39221 () Bool)

(declare-fun tp!114514 () Bool)

(assert (=> b!1580652 (= e!881876 (and tp_is_empty!39221 tp!114514))))

(declare-fun b!1580654 () Bool)

(declare-fun res!1079905 () Bool)

(assert (=> b!1580654 (=> (not res!1079905) (not e!881875))))

(declare-fun value!194 () B!2676)

(declare-fun contains!10509 (List!36981 tuple2!25700) Bool)

(assert (=> b!1580654 (= res!1079905 (contains!10509 l!1390 (tuple2!25701 key!405 value!194)))))

(declare-fun b!1580653 () Bool)

(declare-fun get!26828 (Option!911) tuple2!25702)

(assert (=> b!1580653 (= e!881877 (not (is-Nil!36978 (_2!12861 (get!26828 lt!676735)))))))

(declare-fun res!1079906 () Bool)

(assert (=> start!137276 (=> (not res!1079906) (not e!881875))))

(assert (=> start!137276 (= res!1079906 (isStrictlySorted!1076 l!1390))))

(assert (=> start!137276 e!881875))

(assert (=> start!137276 e!881876))

(assert (=> start!137276 true))

(assert (=> start!137276 tp_is_empty!39221))

(assert (= (and start!137276 res!1079906) b!1580648))

(assert (= (and b!1580648 res!1079907) b!1580654))

(assert (= (and b!1580654 res!1079905) b!1580649))

(assert (= (and b!1580649 (not res!1079904)) b!1580653))

(assert (= (and b!1580649 res!1079908) b!1580647))

(assert (= (and b!1580647 res!1079909) b!1580650))

(assert (= (and b!1580650 (not res!1079903)) b!1580651))

(assert (= (and start!137276 (is-Cons!36977 l!1390)) b!1580652))

(declare-fun m!1451959 () Bool)

(assert (=> b!1580654 m!1451959))

(declare-fun m!1451961 () Bool)

(assert (=> b!1580650 m!1451961))

(declare-fun m!1451963 () Bool)

(assert (=> b!1580653 m!1451963))

(declare-fun m!1451965 () Bool)

(assert (=> b!1580649 m!1451965))

(declare-fun m!1451967 () Bool)

(assert (=> b!1580649 m!1451967))

(declare-fun m!1451969 () Bool)

(assert (=> b!1580651 m!1451969))

(declare-fun m!1451971 () Bool)

(assert (=> b!1580648 m!1451971))

(declare-fun m!1451973 () Bool)

(assert (=> start!137276 m!1451973))

(push 1)

(assert (not b!1580654))

(assert (not b!1580650))

(assert (not b!1580652))

(assert (not b!1580653))

(assert (not start!137276))

(assert (not b!1580648))

(assert (not b!1580651))

(assert tp_is_empty!39221)

(assert (not b!1580649))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166443 () Bool)

(declare-fun res!1079920 () Bool)

(declare-fun e!881888 () Bool)

(assert (=> d!166443 (=> res!1079920 e!881888)))

(assert (=> d!166443 (= res!1079920 (or (is-Nil!36978 l!1390) (is-Nil!36978 (t!51902 l!1390))))))

(assert (=> d!166443 (= (isStrictlySorted!1076 l!1390) e!881888)))

(declare-fun b!1580665 () Bool)

(declare-fun e!881889 () Bool)

(assert (=> b!1580665 (= e!881888 e!881889)))

(declare-fun res!1079921 () Bool)

(assert (=> b!1580665 (=> (not res!1079921) (not e!881889))))

(assert (=> b!1580665 (= res!1079921 (bvslt (_1!12860 (h!38521 l!1390)) (_1!12860 (h!38521 (t!51902 l!1390)))))))

(declare-fun b!1580666 () Bool)

(assert (=> b!1580666 (= e!881889 (isStrictlySorted!1076 (t!51902 l!1390)))))

(assert (= (and d!166443 (not res!1079920)) b!1580665))

(assert (= (and b!1580665 res!1079921) b!1580666))

(assert (=> b!1580666 m!1451961))

(assert (=> start!137276 d!166443))

(declare-fun d!166451 () Bool)

(declare-fun res!1079922 () Bool)

(declare-fun e!881890 () Bool)

(assert (=> d!166451 (=> res!1079922 e!881890)))

(assert (=> d!166451 (= res!1079922 (or (is-Nil!36978 (t!51902 l!1390)) (is-Nil!36978 (t!51902 (t!51902 l!1390)))))))

(assert (=> d!166451 (= (isStrictlySorted!1076 (t!51902 l!1390)) e!881890)))

(declare-fun b!1580667 () Bool)

(declare-fun e!881891 () Bool)

(assert (=> b!1580667 (= e!881890 e!881891)))

(declare-fun res!1079923 () Bool)

(assert (=> b!1580667 (=> (not res!1079923) (not e!881891))))

(assert (=> b!1580667 (= res!1079923 (bvslt (_1!12860 (h!38521 (t!51902 l!1390))) (_1!12860 (h!38521 (t!51902 (t!51902 l!1390))))))))

(declare-fun b!1580668 () Bool)

(assert (=> b!1580668 (= e!881891 (isStrictlySorted!1076 (t!51902 (t!51902 l!1390))))))

(assert (= (and d!166451 (not res!1079922)) b!1580667))

(assert (= (and b!1580667 res!1079923) b!1580668))

(declare-fun m!1451975 () Bool)

(assert (=> b!1580668 m!1451975))

(assert (=> b!1580650 d!166451))

(declare-fun d!166453 () Bool)

(declare-fun res!1079936 () Bool)

(declare-fun e!881904 () Bool)

(assert (=> d!166453 (=> res!1079936 e!881904)))

(assert (=> d!166453 (= res!1079936 (and (is-Cons!36977 (t!51902 l!1390)) (= (_1!12860 (h!38521 (t!51902 l!1390))) key!405)))))

(assert (=> d!166453 (= (containsKey!922 (t!51902 l!1390) key!405) e!881904)))

(declare-fun b!1580679 () Bool)

(declare-fun e!881905 () Bool)

(assert (=> b!1580679 (= e!881904 e!881905)))

(declare-fun res!1079937 () Bool)

(assert (=> b!1580679 (=> (not res!1079937) (not e!881905))))

(assert (=> b!1580679 (= res!1079937 (and (or (not (is-Cons!36977 (t!51902 l!1390))) (bvsle (_1!12860 (h!38521 (t!51902 l!1390))) key!405)) (is-Cons!36977 (t!51902 l!1390)) (bvslt (_1!12860 (h!38521 (t!51902 l!1390))) key!405)))))

(declare-fun b!1580680 () Bool)

(assert (=> b!1580680 (= e!881905 (containsKey!922 (t!51902 (t!51902 l!1390)) key!405))))

(assert (= (and d!166453 (not res!1079936)) b!1580679))

(assert (= (and b!1580679 res!1079937) b!1580680))

(declare-fun m!1451977 () Bool)

(assert (=> b!1580680 m!1451977))

(assert (=> b!1580651 d!166453))

(declare-fun d!166457 () Bool)

(assert (=> d!166457 (= (isEmpty!1173 lt!676735) (not (is-Some!910 lt!676735)))))

(assert (=> b!1580649 d!166457))

(declare-fun d!166461 () Bool)

(assert (=> d!166461 (= (unapply!87 l!1390) (ite (is-Nil!36978 l!1390) None!909 (Some!910 (tuple2!25703 (h!38521 l!1390) (t!51902 l!1390)))))))

(assert (=> b!1580649 d!166461))

(declare-fun lt!676738 () Bool)

(declare-fun d!166465 () Bool)

(declare-fun content!841 (List!36981) (Set tuple2!25700))

(assert (=> d!166465 (= lt!676738 (member (tuple2!25701 key!405 value!194) (content!841 l!1390)))))

(declare-fun e!881919 () Bool)

(assert (=> d!166465 (= lt!676738 e!881919)))

(declare-fun res!1079950 () Bool)

(assert (=> d!166465 (=> (not res!1079950) (not e!881919))))

(assert (=> d!166465 (= res!1079950 (is-Cons!36977 l!1390))))

(assert (=> d!166465 (= (contains!10509 l!1390 (tuple2!25701 key!405 value!194)) lt!676738)))

(declare-fun b!1580695 () Bool)

(declare-fun e!881918 () Bool)

(assert (=> b!1580695 (= e!881919 e!881918)))

(declare-fun res!1079951 () Bool)

(assert (=> b!1580695 (=> res!1079951 e!881918)))

(assert (=> b!1580695 (= res!1079951 (= (h!38521 l!1390) (tuple2!25701 key!405 value!194)))))

(declare-fun b!1580696 () Bool)

(assert (=> b!1580696 (= e!881918 (contains!10509 (t!51902 l!1390) (tuple2!25701 key!405 value!194)))))

(assert (= (and d!166465 res!1079950) b!1580695))

(assert (= (and b!1580695 (not res!1079951)) b!1580696))

(declare-fun m!1451983 () Bool)

(assert (=> d!166465 m!1451983))

(declare-fun m!1451985 () Bool)

(assert (=> d!166465 m!1451985))

(declare-fun m!1451987 () Bool)

(assert (=> b!1580696 m!1451987))

(assert (=> b!1580654 d!166465))

(declare-fun d!166477 () Bool)

(assert (=> d!166477 (= (get!26828 lt!676735) (v!22410 lt!676735))))

(assert (=> b!1580653 d!166477))

(declare-fun d!166479 () Bool)

(declare-fun res!1079956 () Bool)

(declare-fun e!881924 () Bool)

(assert (=> d!166479 (=> res!1079956 e!881924)))

(assert (=> d!166479 (= res!1079956 (and (is-Cons!36977 l!1390) (= (_1!12860 (h!38521 l!1390)) key!405)))))

(assert (=> d!166479 (= (containsKey!922 l!1390 key!405) e!881924)))

(declare-fun b!1580701 () Bool)

(declare-fun e!881925 () Bool)

(assert (=> b!1580701 (= e!881924 e!881925)))

(declare-fun res!1079957 () Bool)

(assert (=> b!1580701 (=> (not res!1079957) (not e!881925))))

(assert (=> b!1580701 (= res!1079957 (and (or (not (is-Cons!36977 l!1390)) (bvsle (_1!12860 (h!38521 l!1390)) key!405)) (is-Cons!36977 l!1390) (bvslt (_1!12860 (h!38521 l!1390)) key!405)))))

(declare-fun b!1580702 () Bool)

(assert (=> b!1580702 (= e!881925 (containsKey!922 (t!51902 l!1390) key!405))))

(assert (= (and d!166479 (not res!1079956)) b!1580701))

(assert (= (and b!1580701 res!1079957) b!1580702))

(assert (=> b!1580702 m!1451969))

(assert (=> b!1580648 d!166479))

(declare-fun b!1580711 () Bool)

(declare-fun e!881932 () Bool)

(declare-fun tp!114517 () Bool)

(assert (=> b!1580711 (= e!881932 (and tp_is_empty!39221 tp!114517))))

(assert (=> b!1580652 (= tp!114514 e!881932)))

(assert (= (and b!1580652 (is-Cons!36977 (t!51902 l!1390))) b!1580711))

(push 1)

(assert (not b!1580702))

(assert (not b!1580696))

(assert (not b!1580668))

(assert tp_is_empty!39221)

(assert (not b!1580666))

(assert (not b!1580680))

(assert (not b!1580711))

(assert (not d!166465))

(check-sat)

(pop 1)

(push 1)

(check-sat)

