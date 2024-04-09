; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137370 () Bool)

(assert start!137370)

(declare-fun b!1580994 () Bool)

(declare-fun res!1080173 () Bool)

(declare-fun e!882139 () Bool)

(assert (=> b!1580994 (=> (not res!1080173) (not e!882139))))

(declare-datatypes ((B!2686 0))(
  ( (B!2687 (val!19705 Int)) )
))
(declare-datatypes ((tuple2!25720 0))(
  ( (tuple2!25721 (_1!12870 (_ BitVec 64)) (_2!12870 B!2686)) )
))
(declare-datatypes ((List!36986 0))(
  ( (Nil!36983) (Cons!36982 (h!38526 tuple2!25720) (t!51907 List!36986)) )
))
(declare-fun l!1390 () List!36986)

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!927 (List!36986 (_ BitVec 64)) Bool)

(assert (=> b!1580994 (= res!1080173 (containsKey!927 l!1390 key!405))))

(declare-fun b!1580995 () Bool)

(declare-fun e!882137 () Bool)

(declare-fun e!882141 () Bool)

(assert (=> b!1580995 (= e!882137 e!882141)))

(declare-fun res!1080169 () Bool)

(assert (=> b!1580995 (=> (not res!1080169) (not e!882141))))

(declare-fun e!882140 () Bool)

(assert (=> b!1580995 (= res!1080169 e!882140)))

(declare-fun res!1080172 () Bool)

(assert (=> b!1580995 (=> res!1080172 e!882140)))

(declare-datatypes ((tuple2!25722 0))(
  ( (tuple2!25723 (_1!12871 tuple2!25720) (_2!12871 List!36986)) )
))
(declare-datatypes ((Option!919 0))(
  ( (Some!918 (v!22424 tuple2!25722)) (None!917) )
))
(declare-fun lt!676803 () Option!919)

(declare-fun isEmpty!1178 (Option!919) Bool)

(assert (=> b!1580995 (= res!1080172 (isEmpty!1178 lt!676803))))

(declare-fun unapply!92 (List!36986) Option!919)

(assert (=> b!1580995 (= lt!676803 (unapply!92 l!1390))))

(declare-fun b!1580996 () Bool)

(declare-fun e!882138 () Bool)

(declare-fun lt!676804 () tuple2!25720)

(declare-fun contains!10514 (List!36986 tuple2!25720) Bool)

(assert (=> b!1580996 (= e!882138 (not (contains!10514 (t!51907 l!1390) lt!676804)))))

(declare-fun b!1580997 () Bool)

(declare-fun res!1080175 () Bool)

(assert (=> b!1580997 (=> (not res!1080175) (not e!882141))))

(get-info :version)

(assert (=> b!1580997 (= res!1080175 (and (or (not ((_ is Cons!36982) l!1390)) (not (= (_1!12870 (h!38526 l!1390)) key!405))) ((_ is Cons!36982) l!1390)))))

(declare-fun b!1580998 () Bool)

(declare-fun res!1080176 () Bool)

(assert (=> b!1580998 (=> res!1080176 e!882138)))

(assert (=> b!1580998 (= res!1080176 (not (containsKey!927 (t!51907 l!1390) key!405)))))

(declare-fun res!1080171 () Bool)

(assert (=> start!137370 (=> (not res!1080171) (not e!882139))))

(declare-fun isStrictlySorted!1081 (List!36986) Bool)

(assert (=> start!137370 (= res!1080171 (isStrictlySorted!1081 l!1390))))

(assert (=> start!137370 e!882139))

(declare-fun e!882136 () Bool)

(assert (=> start!137370 e!882136))

(assert (=> start!137370 true))

(declare-fun tp_is_empty!39231 () Bool)

(assert (=> start!137370 tp_is_empty!39231))

(declare-fun b!1580999 () Bool)

(declare-fun get!26837 (Option!919) tuple2!25722)

(assert (=> b!1580999 (= e!882140 (not ((_ is Nil!36983) (_2!12871 (get!26837 lt!676803)))))))

(declare-fun b!1581000 () Bool)

(assert (=> b!1581000 (= e!882139 e!882137)))

(declare-fun res!1080170 () Bool)

(assert (=> b!1581000 (=> (not res!1080170) (not e!882137))))

(assert (=> b!1581000 (= res!1080170 (contains!10514 l!1390 lt!676804))))

(declare-fun value!194 () B!2686)

(assert (=> b!1581000 (= lt!676804 (tuple2!25721 key!405 value!194))))

(declare-fun b!1581001 () Bool)

(assert (=> b!1581001 (= e!882141 e!882138)))

(declare-fun res!1080174 () Bool)

(assert (=> b!1581001 (=> res!1080174 e!882138)))

(assert (=> b!1581001 (= res!1080174 (not (isStrictlySorted!1081 (t!51907 l!1390))))))

(declare-fun b!1581002 () Bool)

(declare-fun tp!114547 () Bool)

(assert (=> b!1581002 (= e!882136 (and tp_is_empty!39231 tp!114547))))

(assert (= (and start!137370 res!1080171) b!1580994))

(assert (= (and b!1580994 res!1080173) b!1581000))

(assert (= (and b!1581000 res!1080170) b!1580995))

(assert (= (and b!1580995 (not res!1080172)) b!1580999))

(assert (= (and b!1580995 res!1080169) b!1580997))

(assert (= (and b!1580997 res!1080175) b!1581001))

(assert (= (and b!1581001 (not res!1080174)) b!1580998))

(assert (= (and b!1580998 (not res!1080176)) b!1580996))

(assert (= (and start!137370 ((_ is Cons!36982) l!1390)) b!1581002))

(declare-fun m!1452149 () Bool)

(assert (=> b!1581000 m!1452149))

(declare-fun m!1452151 () Bool)

(assert (=> b!1580994 m!1452151))

(declare-fun m!1452153 () Bool)

(assert (=> b!1580995 m!1452153))

(declare-fun m!1452155 () Bool)

(assert (=> b!1580995 m!1452155))

(declare-fun m!1452157 () Bool)

(assert (=> b!1580999 m!1452157))

(declare-fun m!1452159 () Bool)

(assert (=> b!1581001 m!1452159))

(declare-fun m!1452161 () Bool)

(assert (=> b!1580998 m!1452161))

(declare-fun m!1452163 () Bool)

(assert (=> start!137370 m!1452163))

(declare-fun m!1452165 () Bool)

(assert (=> b!1580996 m!1452165))

(check-sat (not b!1580996) (not b!1580995) (not start!137370) (not b!1581001) (not b!1581002) (not b!1580994) (not b!1581000) tp_is_empty!39231 (not b!1580998) (not b!1580999))
(check-sat)
(get-model)

(declare-fun d!166559 () Bool)

(declare-fun res!1080205 () Bool)

(declare-fun e!882164 () Bool)

(assert (=> d!166559 (=> res!1080205 e!882164)))

(assert (=> d!166559 (= res!1080205 (or ((_ is Nil!36983) (t!51907 l!1390)) ((_ is Nil!36983) (t!51907 (t!51907 l!1390)))))))

(assert (=> d!166559 (= (isStrictlySorted!1081 (t!51907 l!1390)) e!882164)))

(declare-fun b!1581034 () Bool)

(declare-fun e!882165 () Bool)

(assert (=> b!1581034 (= e!882164 e!882165)))

(declare-fun res!1080206 () Bool)

(assert (=> b!1581034 (=> (not res!1080206) (not e!882165))))

(assert (=> b!1581034 (= res!1080206 (bvslt (_1!12870 (h!38526 (t!51907 l!1390))) (_1!12870 (h!38526 (t!51907 (t!51907 l!1390))))))))

(declare-fun b!1581035 () Bool)

(assert (=> b!1581035 (= e!882165 (isStrictlySorted!1081 (t!51907 (t!51907 l!1390))))))

(assert (= (and d!166559 (not res!1080205)) b!1581034))

(assert (= (and b!1581034 res!1080206) b!1581035))

(declare-fun m!1452185 () Bool)

(assert (=> b!1581035 m!1452185))

(assert (=> b!1581001 d!166559))

(declare-fun d!166565 () Bool)

(assert (=> d!166565 (= (isEmpty!1178 lt!676803) (not ((_ is Some!918) lt!676803)))))

(assert (=> b!1580995 d!166565))

(declare-fun d!166569 () Bool)

(assert (=> d!166569 (= (unapply!92 l!1390) (ite ((_ is Nil!36983) l!1390) None!917 (Some!918 (tuple2!25723 (h!38526 l!1390) (t!51907 l!1390)))))))

(assert (=> b!1580995 d!166569))

(declare-fun d!166573 () Bool)

(declare-fun lt!676813 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!847 (List!36986) (InoxSet tuple2!25720))

(assert (=> d!166573 (= lt!676813 (select (content!847 l!1390) lt!676804))))

(declare-fun e!882190 () Bool)

(assert (=> d!166573 (= lt!676813 e!882190)))

(declare-fun res!1080231 () Bool)

(assert (=> d!166573 (=> (not res!1080231) (not e!882190))))

(assert (=> d!166573 (= res!1080231 ((_ is Cons!36982) l!1390))))

(assert (=> d!166573 (= (contains!10514 l!1390 lt!676804) lt!676813)))

(declare-fun b!1581060 () Bool)

(declare-fun e!882191 () Bool)

(assert (=> b!1581060 (= e!882190 e!882191)))

(declare-fun res!1080232 () Bool)

(assert (=> b!1581060 (=> res!1080232 e!882191)))

(assert (=> b!1581060 (= res!1080232 (= (h!38526 l!1390) lt!676804))))

(declare-fun b!1581061 () Bool)

(assert (=> b!1581061 (= e!882191 (contains!10514 (t!51907 l!1390) lt!676804))))

(assert (= (and d!166573 res!1080231) b!1581060))

(assert (= (and b!1581060 (not res!1080232)) b!1581061))

(declare-fun m!1452191 () Bool)

(assert (=> d!166573 m!1452191))

(declare-fun m!1452193 () Bool)

(assert (=> d!166573 m!1452193))

(assert (=> b!1581061 m!1452165))

(assert (=> b!1581000 d!166573))

(declare-fun d!166587 () Bool)

(declare-fun res!1080233 () Bool)

(declare-fun e!882192 () Bool)

(assert (=> d!166587 (=> res!1080233 e!882192)))

(assert (=> d!166587 (= res!1080233 (or ((_ is Nil!36983) l!1390) ((_ is Nil!36983) (t!51907 l!1390))))))

(assert (=> d!166587 (= (isStrictlySorted!1081 l!1390) e!882192)))

(declare-fun b!1581062 () Bool)

(declare-fun e!882193 () Bool)

(assert (=> b!1581062 (= e!882192 e!882193)))

(declare-fun res!1080234 () Bool)

(assert (=> b!1581062 (=> (not res!1080234) (not e!882193))))

(assert (=> b!1581062 (= res!1080234 (bvslt (_1!12870 (h!38526 l!1390)) (_1!12870 (h!38526 (t!51907 l!1390)))))))

(declare-fun b!1581063 () Bool)

(assert (=> b!1581063 (= e!882193 (isStrictlySorted!1081 (t!51907 l!1390)))))

(assert (= (and d!166587 (not res!1080233)) b!1581062))

(assert (= (and b!1581062 res!1080234) b!1581063))

(assert (=> b!1581063 m!1452159))

(assert (=> start!137370 d!166587))

(declare-fun d!166589 () Bool)

(declare-fun lt!676814 () Bool)

(assert (=> d!166589 (= lt!676814 (select (content!847 (t!51907 l!1390)) lt!676804))))

(declare-fun e!882194 () Bool)

(assert (=> d!166589 (= lt!676814 e!882194)))

(declare-fun res!1080235 () Bool)

(assert (=> d!166589 (=> (not res!1080235) (not e!882194))))

(assert (=> d!166589 (= res!1080235 ((_ is Cons!36982) (t!51907 l!1390)))))

(assert (=> d!166589 (= (contains!10514 (t!51907 l!1390) lt!676804) lt!676814)))

(declare-fun b!1581064 () Bool)

(declare-fun e!882195 () Bool)

(assert (=> b!1581064 (= e!882194 e!882195)))

(declare-fun res!1080236 () Bool)

(assert (=> b!1581064 (=> res!1080236 e!882195)))

(assert (=> b!1581064 (= res!1080236 (= (h!38526 (t!51907 l!1390)) lt!676804))))

(declare-fun b!1581065 () Bool)

(assert (=> b!1581065 (= e!882195 (contains!10514 (t!51907 (t!51907 l!1390)) lt!676804))))

(assert (= (and d!166589 res!1080235) b!1581064))

(assert (= (and b!1581064 (not res!1080236)) b!1581065))

(declare-fun m!1452195 () Bool)

(assert (=> d!166589 m!1452195))

(declare-fun m!1452197 () Bool)

(assert (=> d!166589 m!1452197))

(declare-fun m!1452199 () Bool)

(assert (=> b!1581065 m!1452199))

(assert (=> b!1580996 d!166589))

(declare-fun d!166591 () Bool)

(declare-fun res!1080257 () Bool)

(declare-fun e!882219 () Bool)

(assert (=> d!166591 (=> res!1080257 e!882219)))

(assert (=> d!166591 (= res!1080257 (and ((_ is Cons!36982) (t!51907 l!1390)) (= (_1!12870 (h!38526 (t!51907 l!1390))) key!405)))))

(assert (=> d!166591 (= (containsKey!927 (t!51907 l!1390) key!405) e!882219)))

(declare-fun b!1581091 () Bool)

(declare-fun e!882220 () Bool)

(assert (=> b!1581091 (= e!882219 e!882220)))

(declare-fun res!1080258 () Bool)

(assert (=> b!1581091 (=> (not res!1080258) (not e!882220))))

(assert (=> b!1581091 (= res!1080258 (and (or (not ((_ is Cons!36982) (t!51907 l!1390))) (bvsle (_1!12870 (h!38526 (t!51907 l!1390))) key!405)) ((_ is Cons!36982) (t!51907 l!1390)) (bvslt (_1!12870 (h!38526 (t!51907 l!1390))) key!405)))))

(declare-fun b!1581092 () Bool)

(assert (=> b!1581092 (= e!882220 (containsKey!927 (t!51907 (t!51907 l!1390)) key!405))))

(assert (= (and d!166591 (not res!1080257)) b!1581091))

(assert (= (and b!1581091 res!1080258) b!1581092))

(declare-fun m!1452211 () Bool)

(assert (=> b!1581092 m!1452211))

(assert (=> b!1580998 d!166591))

(declare-fun d!166603 () Bool)

(declare-fun res!1080259 () Bool)

(declare-fun e!882221 () Bool)

(assert (=> d!166603 (=> res!1080259 e!882221)))

(assert (=> d!166603 (= res!1080259 (and ((_ is Cons!36982) l!1390) (= (_1!12870 (h!38526 l!1390)) key!405)))))

(assert (=> d!166603 (= (containsKey!927 l!1390 key!405) e!882221)))

(declare-fun b!1581093 () Bool)

(declare-fun e!882222 () Bool)

(assert (=> b!1581093 (= e!882221 e!882222)))

(declare-fun res!1080260 () Bool)

(assert (=> b!1581093 (=> (not res!1080260) (not e!882222))))

(assert (=> b!1581093 (= res!1080260 (and (or (not ((_ is Cons!36982) l!1390)) (bvsle (_1!12870 (h!38526 l!1390)) key!405)) ((_ is Cons!36982) l!1390) (bvslt (_1!12870 (h!38526 l!1390)) key!405)))))

(declare-fun b!1581094 () Bool)

(assert (=> b!1581094 (= e!882222 (containsKey!927 (t!51907 l!1390) key!405))))

(assert (= (and d!166603 (not res!1080259)) b!1581093))

(assert (= (and b!1581093 res!1080260) b!1581094))

(assert (=> b!1581094 m!1452161))

(assert (=> b!1580994 d!166603))

(declare-fun d!166605 () Bool)

(assert (=> d!166605 (= (get!26837 lt!676803) (v!22424 lt!676803))))

(assert (=> b!1580999 d!166605))

(declare-fun b!1581103 () Bool)

(declare-fun e!882229 () Bool)

(declare-fun tp!114556 () Bool)

(assert (=> b!1581103 (= e!882229 (and tp_is_empty!39231 tp!114556))))

(assert (=> b!1581002 (= tp!114547 e!882229)))

(assert (= (and b!1581002 ((_ is Cons!36982) (t!51907 l!1390))) b!1581103))

(check-sat (not b!1581094) (not b!1581103) (not b!1581092) (not d!166589) tp_is_empty!39231 (not b!1581063) (not b!1581035) (not d!166573) (not b!1581061) (not b!1581065))
