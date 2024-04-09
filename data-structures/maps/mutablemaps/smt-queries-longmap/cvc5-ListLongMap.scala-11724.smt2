; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137368 () Bool)

(assert start!137368)

(declare-fun b!1580967 () Bool)

(declare-fun res!1080148 () Bool)

(declare-fun e!882123 () Bool)

(assert (=> b!1580967 (=> (not res!1080148) (not e!882123))))

(declare-datatypes ((B!2684 0))(
  ( (B!2685 (val!19704 Int)) )
))
(declare-datatypes ((tuple2!25716 0))(
  ( (tuple2!25717 (_1!12868 (_ BitVec 64)) (_2!12868 B!2684)) )
))
(declare-datatypes ((List!36985 0))(
  ( (Nil!36982) (Cons!36981 (h!38525 tuple2!25716) (t!51906 List!36985)) )
))
(declare-fun l!1390 () List!36985)

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!926 (List!36985 (_ BitVec 64)) Bool)

(assert (=> b!1580967 (= res!1080148 (containsKey!926 l!1390 key!405))))

(declare-fun b!1580968 () Bool)

(declare-fun e!882121 () Bool)

(declare-fun e!882120 () Bool)

(assert (=> b!1580968 (= e!882121 e!882120)))

(declare-fun res!1080146 () Bool)

(assert (=> b!1580968 (=> res!1080146 e!882120)))

(declare-fun isStrictlySorted!1080 (List!36985) Bool)

(assert (=> b!1580968 (= res!1080146 (not (isStrictlySorted!1080 (t!51906 l!1390))))))

(declare-fun b!1580969 () Bool)

(declare-fun res!1080152 () Bool)

(assert (=> b!1580969 (=> (not res!1080152) (not e!882121))))

(assert (=> b!1580969 (= res!1080152 (and (or (not (is-Cons!36981 l!1390)) (not (= (_1!12868 (h!38525 l!1390)) key!405))) (is-Cons!36981 l!1390)))))

(declare-fun res!1080145 () Bool)

(assert (=> start!137368 (=> (not res!1080145) (not e!882123))))

(assert (=> start!137368 (= res!1080145 (isStrictlySorted!1080 l!1390))))

(assert (=> start!137368 e!882123))

(declare-fun e!882119 () Bool)

(assert (=> start!137368 e!882119))

(assert (=> start!137368 true))

(declare-fun tp_is_empty!39229 () Bool)

(assert (=> start!137368 tp_is_empty!39229))

(declare-fun b!1580970 () Bool)

(declare-fun e!882122 () Bool)

(declare-datatypes ((tuple2!25718 0))(
  ( (tuple2!25719 (_1!12869 tuple2!25716) (_2!12869 List!36985)) )
))
(declare-datatypes ((Option!918 0))(
  ( (Some!917 (v!22423 tuple2!25718)) (None!916) )
))
(declare-fun lt!676798 () Option!918)

(declare-fun get!26836 (Option!918) tuple2!25718)

(assert (=> b!1580970 (= e!882122 (not (is-Nil!36982 (_2!12869 (get!26836 lt!676798)))))))

(declare-fun b!1580971 () Bool)

(declare-fun res!1080150 () Bool)

(assert (=> b!1580971 (=> res!1080150 e!882120)))

(assert (=> b!1580971 (= res!1080150 (not (containsKey!926 (t!51906 l!1390) key!405)))))

(declare-fun b!1580972 () Bool)

(declare-fun tp!114544 () Bool)

(assert (=> b!1580972 (= e!882119 (and tp_is_empty!39229 tp!114544))))

(declare-fun b!1580973 () Bool)

(declare-fun e!882118 () Bool)

(assert (=> b!1580973 (= e!882118 e!882121)))

(declare-fun res!1080151 () Bool)

(assert (=> b!1580973 (=> (not res!1080151) (not e!882121))))

(assert (=> b!1580973 (= res!1080151 e!882122)))

(declare-fun res!1080149 () Bool)

(assert (=> b!1580973 (=> res!1080149 e!882122)))

(declare-fun isEmpty!1177 (Option!918) Bool)

(assert (=> b!1580973 (= res!1080149 (isEmpty!1177 lt!676798))))

(declare-fun unapply!91 (List!36985) Option!918)

(assert (=> b!1580973 (= lt!676798 (unapply!91 l!1390))))

(declare-fun b!1580974 () Bool)

(assert (=> b!1580974 (= e!882123 e!882118)))

(declare-fun res!1080147 () Bool)

(assert (=> b!1580974 (=> (not res!1080147) (not e!882118))))

(declare-fun lt!676797 () tuple2!25716)

(declare-fun contains!10513 (List!36985 tuple2!25716) Bool)

(assert (=> b!1580974 (= res!1080147 (contains!10513 l!1390 lt!676797))))

(declare-fun value!194 () B!2684)

(assert (=> b!1580974 (= lt!676797 (tuple2!25717 key!405 value!194))))

(declare-fun b!1580975 () Bool)

(assert (=> b!1580975 (= e!882120 (not (contains!10513 (t!51906 l!1390) lt!676797)))))

(assert (= (and start!137368 res!1080145) b!1580967))

(assert (= (and b!1580967 res!1080148) b!1580974))

(assert (= (and b!1580974 res!1080147) b!1580973))

(assert (= (and b!1580973 (not res!1080149)) b!1580970))

(assert (= (and b!1580973 res!1080151) b!1580969))

(assert (= (and b!1580969 res!1080152) b!1580968))

(assert (= (and b!1580968 (not res!1080146)) b!1580971))

(assert (= (and b!1580971 (not res!1080150)) b!1580975))

(assert (= (and start!137368 (is-Cons!36981 l!1390)) b!1580972))

(declare-fun m!1452131 () Bool)

(assert (=> b!1580973 m!1452131))

(declare-fun m!1452133 () Bool)

(assert (=> b!1580973 m!1452133))

(declare-fun m!1452135 () Bool)

(assert (=> b!1580970 m!1452135))

(declare-fun m!1452137 () Bool)

(assert (=> start!137368 m!1452137))

(declare-fun m!1452139 () Bool)

(assert (=> b!1580974 m!1452139))

(declare-fun m!1452141 () Bool)

(assert (=> b!1580968 m!1452141))

(declare-fun m!1452143 () Bool)

(assert (=> b!1580975 m!1452143))

(declare-fun m!1452145 () Bool)

(assert (=> b!1580967 m!1452145))

(declare-fun m!1452147 () Bool)

(assert (=> b!1580971 m!1452147))

(push 1)

(assert (not b!1580973))

(assert (not b!1580971))

(assert tp_is_empty!39229)

(assert (not b!1580970))

(assert (not b!1580972))

(assert (not b!1580975))

(assert (not b!1580968))

(assert (not b!1580967))

(assert (not b!1580974))

(assert (not start!137368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166561 () Bool)

(declare-fun res!1080211 () Bool)

(declare-fun e!882170 () Bool)

(assert (=> d!166561 (=> res!1080211 e!882170)))

(assert (=> d!166561 (= res!1080211 (and (is-Cons!36981 (t!51906 l!1390)) (= (_1!12868 (h!38525 (t!51906 l!1390))) key!405)))))

(assert (=> d!166561 (= (containsKey!926 (t!51906 l!1390) key!405) e!882170)))

(declare-fun b!1581040 () Bool)

(declare-fun e!882171 () Bool)

(assert (=> b!1581040 (= e!882170 e!882171)))

(declare-fun res!1080212 () Bool)

(assert (=> b!1581040 (=> (not res!1080212) (not e!882171))))

(assert (=> b!1581040 (= res!1080212 (and (or (not (is-Cons!36981 (t!51906 l!1390))) (bvsle (_1!12868 (h!38525 (t!51906 l!1390))) key!405)) (is-Cons!36981 (t!51906 l!1390)) (bvslt (_1!12868 (h!38525 (t!51906 l!1390))) key!405)))))

(declare-fun b!1581041 () Bool)

(assert (=> b!1581041 (= e!882171 (containsKey!926 (t!51906 (t!51906 l!1390)) key!405))))

(assert (= (and d!166561 (not res!1080211)) b!1581040))

(assert (= (and b!1581040 res!1080212) b!1581041))

(declare-fun m!1452187 () Bool)

(assert (=> b!1581041 m!1452187))

(assert (=> b!1580971 d!166561))

(declare-fun d!166575 () Bool)

(declare-fun res!1080221 () Bool)

(declare-fun e!882180 () Bool)

(assert (=> d!166575 (=> res!1080221 e!882180)))

(assert (=> d!166575 (= res!1080221 (or (is-Nil!36982 (t!51906 l!1390)) (is-Nil!36982 (t!51906 (t!51906 l!1390)))))))

(assert (=> d!166575 (= (isStrictlySorted!1080 (t!51906 l!1390)) e!882180)))

(declare-fun b!1581050 () Bool)

(declare-fun e!882181 () Bool)

(assert (=> b!1581050 (= e!882180 e!882181)))

(declare-fun res!1080222 () Bool)

(assert (=> b!1581050 (=> (not res!1080222) (not e!882181))))

(assert (=> b!1581050 (= res!1080222 (bvslt (_1!12868 (h!38525 (t!51906 l!1390))) (_1!12868 (h!38525 (t!51906 (t!51906 l!1390))))))))

(declare-fun b!1581051 () Bool)

(assert (=> b!1581051 (= e!882181 (isStrictlySorted!1080 (t!51906 (t!51906 l!1390))))))

(assert (= (and d!166575 (not res!1080221)) b!1581050))

(assert (= (and b!1581050 res!1080222) b!1581051))

(declare-fun m!1452189 () Bool)

(assert (=> b!1581051 m!1452189))

(assert (=> b!1580968 d!166575))

(declare-fun d!166577 () Bool)

(assert (=> d!166577 (= (isEmpty!1177 lt!676798) (not (is-Some!917 lt!676798)))))

(assert (=> b!1580973 d!166577))

(declare-fun d!166579 () Bool)

(assert (=> d!166579 (= (unapply!91 l!1390) (ite (is-Nil!36982 l!1390) None!916 (Some!917 (tuple2!25719 (h!38525 l!1390) (t!51906 l!1390)))))))

(assert (=> b!1580973 d!166579))

(declare-fun d!166583 () Bool)

(declare-fun res!1080229 () Bool)

(declare-fun e!882188 () Bool)

(assert (=> d!166583 (=> res!1080229 e!882188)))

(assert (=> d!166583 (= res!1080229 (and (is-Cons!36981 l!1390) (= (_1!12868 (h!38525 l!1390)) key!405)))))

(assert (=> d!166583 (= (containsKey!926 l!1390 key!405) e!882188)))

(declare-fun b!1581058 () Bool)

(declare-fun e!882189 () Bool)

(assert (=> b!1581058 (= e!882188 e!882189)))

(declare-fun res!1080230 () Bool)

(assert (=> b!1581058 (=> (not res!1080230) (not e!882189))))

(assert (=> b!1581058 (= res!1080230 (and (or (not (is-Cons!36981 l!1390)) (bvsle (_1!12868 (h!38525 l!1390)) key!405)) (is-Cons!36981 l!1390) (bvslt (_1!12868 (h!38525 l!1390)) key!405)))))

(declare-fun b!1581059 () Bool)

(assert (=> b!1581059 (= e!882189 (containsKey!926 (t!51906 l!1390) key!405))))

(assert (= (and d!166583 (not res!1080229)) b!1581058))

(assert (= (and b!1581058 res!1080230) b!1581059))

(assert (=> b!1581059 m!1452147))

(assert (=> b!1580967 d!166583))

(declare-fun d!166585 () Bool)

(declare-fun lt!676817 () Bool)

(declare-fun content!848 (List!36985) (Set tuple2!25716))

(assert (=> d!166585 (= lt!676817 (set.member lt!676797 (content!848 l!1390)))))

(declare-fun e!882205 () Bool)

(assert (=> d!166585 (= lt!676817 e!882205)))

(declare-fun res!1080246 () Bool)

(assert (=> d!166585 (=> (not res!1080246) (not e!882205))))

(assert (=> d!166585 (= res!1080246 (is-Cons!36981 l!1390))))

(assert (=> d!166585 (= (contains!10513 l!1390 lt!676797) lt!676817)))

(declare-fun b!1581074 () Bool)

(declare-fun e!882204 () Bool)

(assert (=> b!1581074 (= e!882205 e!882204)))

(declare-fun res!1080245 () Bool)

(assert (=> b!1581074 (=> res!1080245 e!882204)))

(assert (=> b!1581074 (= res!1080245 (= (h!38525 l!1390) lt!676797))))

(declare-fun b!1581075 () Bool)

(assert (=> b!1581075 (= e!882204 (contains!10513 (t!51906 l!1390) lt!676797))))

(assert (= (and d!166585 res!1080246) b!1581074))

(assert (= (and b!1581074 (not res!1080245)) b!1581075))

(declare-fun m!1452201 () Bool)

(assert (=> d!166585 m!1452201))

(declare-fun m!1452203 () Bool)

(assert (=> d!166585 m!1452203))

(assert (=> b!1581075 m!1452143))

(assert (=> b!1580974 d!166585))

(declare-fun d!166593 () Bool)

(assert (=> d!166593 (= (get!26836 lt!676798) (v!22423 lt!676798))))

(assert (=> b!1580970 d!166593))

(declare-fun d!166597 () Bool)

(declare-fun res!1080251 () Bool)

(declare-fun e!882210 () Bool)

(assert (=> d!166597 (=> res!1080251 e!882210)))

(assert (=> d!166597 (= res!1080251 (or (is-Nil!36982 l!1390) (is-Nil!36982 (t!51906 l!1390))))))

(assert (=> d!166597 (= (isStrictlySorted!1080 l!1390) e!882210)))

(declare-fun b!1581078 () Bool)

(declare-fun e!882211 () Bool)

(assert (=> b!1581078 (= e!882210 e!882211)))

(declare-fun res!1080252 () Bool)

(assert (=> b!1581078 (=> (not res!1080252) (not e!882211))))

(assert (=> b!1581078 (= res!1080252 (bvslt (_1!12868 (h!38525 l!1390)) (_1!12868 (h!38525 (t!51906 l!1390)))))))

(declare-fun b!1581079 () Bool)

(assert (=> b!1581079 (= e!882211 (isStrictlySorted!1080 (t!51906 l!1390)))))

(assert (= (and d!166597 (not res!1080251)) b!1581078))

(assert (= (and b!1581078 res!1080252) b!1581079))

(assert (=> b!1581079 m!1452141))

(assert (=> start!137368 d!166597))

(declare-fun d!166599 () Bool)

(declare-fun lt!676818 () Bool)

(assert (=> d!166599 (= lt!676818 (set.member lt!676797 (content!848 (t!51906 l!1390))))))

(declare-fun e!882215 () Bool)

(assert (=> d!166599 (= lt!676818 e!882215)))

(declare-fun res!1080256 () Bool)

(assert (=> d!166599 (=> (not res!1080256) (not e!882215))))

(assert (=> d!166599 (= res!1080256 (is-Cons!36981 (t!51906 l!1390)))))

(assert (=> d!166599 (= (contains!10513 (t!51906 l!1390) lt!676797) lt!676818)))

(declare-fun b!1581082 () Bool)

(declare-fun e!882214 () Bool)

(assert (=> b!1581082 (= e!882215 e!882214)))

(declare-fun res!1080255 () Bool)

(assert (=> b!1581082 (=> res!1080255 e!882214)))

(assert (=> b!1581082 (= res!1080255 (= (h!38525 (t!51906 l!1390)) lt!676797))))

(declare-fun b!1581083 () Bool)

(assert (=> b!1581083 (= e!882214 (contains!10513 (t!51906 (t!51906 l!1390)) lt!676797))))

(assert (= (and d!166599 res!1080256) b!1581082))

(assert (= (and b!1581082 (not res!1080255)) b!1581083))

(declare-fun m!1452205 () Bool)

(assert (=> d!166599 m!1452205))

(declare-fun m!1452207 () Bool)

(assert (=> d!166599 m!1452207))

(declare-fun m!1452209 () Bool)

(assert (=> b!1581083 m!1452209))

(assert (=> b!1580975 d!166599))

(declare-fun b!1581090 () Bool)

(declare-fun e!882218 () Bool)

(declare-fun tp!114553 () Bool)

(assert (=> b!1581090 (= e!882218 (and tp_is_empty!39229 tp!114553))))

(assert (=> b!1580972 (= tp!114544 e!882218)))

(assert (= (and b!1580972 (is-Cons!36981 (t!51906 l!1390))) b!1581090))

(push 1)

(assert (not b!1581051))

(assert (not d!166599))

(assert (not b!1581090))

(assert (not b!1581083))

(assert (not b!1581041))

(assert tp_is_empty!39229)

(assert (not b!1581075))

(assert (not b!1581079))

(assert (not d!166585))

(assert (not b!1581059))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

