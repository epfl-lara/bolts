; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137372 () Bool)

(assert start!137372)

(declare-fun b!1581021 () Bool)

(declare-fun e!882157 () Bool)

(declare-fun e!882158 () Bool)

(assert (=> b!1581021 (= e!882157 e!882158)))

(declare-fun res!1080198 () Bool)

(assert (=> b!1581021 (=> res!1080198 e!882158)))

(declare-datatypes ((B!2688 0))(
  ( (B!2689 (val!19706 Int)) )
))
(declare-datatypes ((tuple2!25724 0))(
  ( (tuple2!25725 (_1!12872 (_ BitVec 64)) (_2!12872 B!2688)) )
))
(declare-datatypes ((List!36987 0))(
  ( (Nil!36984) (Cons!36983 (h!38527 tuple2!25724) (t!51908 List!36987)) )
))
(declare-fun l!1390 () List!36987)

(declare-fun isStrictlySorted!1082 (List!36987) Bool)

(assert (=> b!1581021 (= res!1080198 (not (isStrictlySorted!1082 (t!51908 l!1390))))))

(declare-fun b!1581022 () Bool)

(declare-fun e!882156 () Bool)

(declare-datatypes ((tuple2!25726 0))(
  ( (tuple2!25727 (_1!12873 tuple2!25724) (_2!12873 List!36987)) )
))
(declare-datatypes ((Option!920 0))(
  ( (Some!919 (v!22425 tuple2!25726)) (None!918) )
))
(declare-fun lt!676809 () Option!920)

(declare-fun get!26838 (Option!920) tuple2!25726)

(assert (=> b!1581022 (= e!882156 (not (is-Nil!36984 (_2!12873 (get!26838 lt!676809)))))))

(declare-fun b!1581023 () Bool)

(declare-fun lt!676810 () tuple2!25724)

(declare-fun contains!10515 (List!36987 tuple2!25724) Bool)

(assert (=> b!1581023 (= e!882158 (not (contains!10515 (t!51908 l!1390) lt!676810)))))

(declare-fun b!1581024 () Bool)

(declare-fun e!882154 () Bool)

(assert (=> b!1581024 (= e!882154 e!882157)))

(declare-fun res!1080200 () Bool)

(assert (=> b!1581024 (=> (not res!1080200) (not e!882157))))

(assert (=> b!1581024 (= res!1080200 e!882156)))

(declare-fun res!1080199 () Bool)

(assert (=> b!1581024 (=> res!1080199 e!882156)))

(declare-fun isEmpty!1179 (Option!920) Bool)

(assert (=> b!1581024 (= res!1080199 (isEmpty!1179 lt!676809))))

(declare-fun unapply!93 (List!36987) Option!920)

(assert (=> b!1581024 (= lt!676809 (unapply!93 l!1390))))

(declare-fun res!1080195 () Bool)

(declare-fun e!882159 () Bool)

(assert (=> start!137372 (=> (not res!1080195) (not e!882159))))

(assert (=> start!137372 (= res!1080195 (isStrictlySorted!1082 l!1390))))

(assert (=> start!137372 e!882159))

(declare-fun e!882155 () Bool)

(assert (=> start!137372 e!882155))

(assert (=> start!137372 true))

(declare-fun tp_is_empty!39233 () Bool)

(assert (=> start!137372 tp_is_empty!39233))

(declare-fun b!1581025 () Bool)

(declare-fun res!1080197 () Bool)

(assert (=> b!1581025 (=> (not res!1080197) (not e!882157))))

(declare-fun key!405 () (_ BitVec 64))

(assert (=> b!1581025 (= res!1080197 (and (or (not (is-Cons!36983 l!1390)) (not (= (_1!12872 (h!38527 l!1390)) key!405))) (is-Cons!36983 l!1390)))))

(declare-fun b!1581026 () Bool)

(declare-fun res!1080194 () Bool)

(assert (=> b!1581026 (=> (not res!1080194) (not e!882159))))

(declare-fun containsKey!928 (List!36987 (_ BitVec 64)) Bool)

(assert (=> b!1581026 (= res!1080194 (containsKey!928 l!1390 key!405))))

(declare-fun b!1581027 () Bool)

(assert (=> b!1581027 (= e!882159 e!882154)))

(declare-fun res!1080196 () Bool)

(assert (=> b!1581027 (=> (not res!1080196) (not e!882154))))

(assert (=> b!1581027 (= res!1080196 (contains!10515 l!1390 lt!676810))))

(declare-fun value!194 () B!2688)

(assert (=> b!1581027 (= lt!676810 (tuple2!25725 key!405 value!194))))

(declare-fun b!1581028 () Bool)

(declare-fun res!1080193 () Bool)

(assert (=> b!1581028 (=> res!1080193 e!882158)))

(assert (=> b!1581028 (= res!1080193 (not (containsKey!928 (t!51908 l!1390) key!405)))))

(declare-fun b!1581029 () Bool)

(declare-fun tp!114550 () Bool)

(assert (=> b!1581029 (= e!882155 (and tp_is_empty!39233 tp!114550))))

(assert (= (and start!137372 res!1080195) b!1581026))

(assert (= (and b!1581026 res!1080194) b!1581027))

(assert (= (and b!1581027 res!1080196) b!1581024))

(assert (= (and b!1581024 (not res!1080199)) b!1581022))

(assert (= (and b!1581024 res!1080200) b!1581025))

(assert (= (and b!1581025 res!1080197) b!1581021))

(assert (= (and b!1581021 (not res!1080198)) b!1581028))

(assert (= (and b!1581028 (not res!1080193)) b!1581023))

(assert (= (and start!137372 (is-Cons!36983 l!1390)) b!1581029))

(declare-fun m!1452167 () Bool)

(assert (=> b!1581024 m!1452167))

(declare-fun m!1452169 () Bool)

(assert (=> b!1581024 m!1452169))

(declare-fun m!1452171 () Bool)

(assert (=> start!137372 m!1452171))

(declare-fun m!1452173 () Bool)

(assert (=> b!1581026 m!1452173))

(declare-fun m!1452175 () Bool)

(assert (=> b!1581027 m!1452175))

(declare-fun m!1452177 () Bool)

(assert (=> b!1581022 m!1452177))

(declare-fun m!1452179 () Bool)

(assert (=> b!1581023 m!1452179))

(declare-fun m!1452181 () Bool)

(assert (=> b!1581028 m!1452181))

(declare-fun m!1452183 () Bool)

(assert (=> b!1581021 m!1452183))

(push 1)

(assert (not b!1581026))

(assert (not b!1581028))

(assert (not b!1581023))

(assert (not b!1581027))

(assert (not b!1581021))

(assert (not b!1581029))

(assert (not b!1581024))

(assert (not b!1581022))

(assert tp_is_empty!39233)

(assert (not start!137372))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166563 () Bool)

(assert (=> d!166563 (= (isEmpty!1179 lt!676809) (not (is-Some!919 lt!676809)))))

(assert (=> b!1581024 d!166563))

(declare-fun d!166567 () Bool)

(assert (=> d!166567 (= (unapply!93 l!1390) (ite (is-Nil!36984 l!1390) None!918 (Some!919 (tuple2!25727 (h!38527 l!1390) (t!51908 l!1390)))))))

(assert (=> b!1581024 d!166567))

(declare-fun d!166571 () Bool)

(declare-fun res!1080227 () Bool)

(declare-fun e!882186 () Bool)

(assert (=> d!166571 (=> res!1080227 e!882186)))

(assert (=> d!166571 (= res!1080227 (or (is-Nil!36984 l!1390) (is-Nil!36984 (t!51908 l!1390))))))

(assert (=> d!166571 (= (isStrictlySorted!1082 l!1390) e!882186)))

(declare-fun b!1581056 () Bool)

(declare-fun e!882187 () Bool)

(assert (=> b!1581056 (= e!882186 e!882187)))

(declare-fun res!1080228 () Bool)

(assert (=> b!1581056 (=> (not res!1080228) (not e!882187))))

(assert (=> b!1581056 (= res!1080228 (bvslt (_1!12872 (h!38527 l!1390)) (_1!12872 (h!38527 (t!51908 l!1390)))))))

(declare-fun b!1581057 () Bool)

(assert (=> b!1581057 (= e!882187 (isStrictlySorted!1082 (t!51908 l!1390)))))

(assert (= (and d!166571 (not res!1080227)) b!1581056))

(assert (= (and b!1581056 res!1080228) b!1581057))

(assert (=> b!1581057 m!1452183))

(assert (=> start!137372 d!166571))

(declare-fun d!166581 () Bool)

(declare-fun res!1080247 () Bool)

(declare-fun e!882206 () Bool)

(assert (=> d!166581 (=> res!1080247 e!882206)))

(assert (=> d!166581 (= res!1080247 (and (is-Cons!36983 l!1390) (= (_1!12872 (h!38527 l!1390)) key!405)))))

(assert (=> d!166581 (= (containsKey!928 l!1390 key!405) e!882206)))

(declare-fun b!1581076 () Bool)

(declare-fun e!882207 () Bool)

(assert (=> b!1581076 (= e!882206 e!882207)))

(declare-fun res!1080248 () Bool)

(assert (=> b!1581076 (=> (not res!1080248) (not e!882207))))

(assert (=> b!1581076 (= res!1080248 (and (or (not (is-Cons!36983 l!1390)) (bvsle (_1!12872 (h!38527 l!1390)) key!405)) (is-Cons!36983 l!1390) (bvslt (_1!12872 (h!38527 l!1390)) key!405)))))

(declare-fun b!1581077 () Bool)

(assert (=> b!1581077 (= e!882207 (containsKey!928 (t!51908 l!1390) key!405))))

(assert (= (and d!166581 (not res!1080247)) b!1581076))

(assert (= (and b!1581076 res!1080248) b!1581077))

(assert (=> b!1581077 m!1452181))

(assert (=> b!1581026 d!166581))

(declare-fun d!166595 () Bool)

(assert (=> d!166595 (= (get!26838 lt!676809) (v!22425 lt!676809))))

(assert (=> b!1581022 d!166595))

(declare-fun d!166601 () Bool)

(declare-fun lt!676821 () Bool)

(declare-fun content!849 (List!36987) (Set tuple2!25724))

(assert (=> d!166601 (= lt!676821 (member lt!676810 (content!849 l!1390)))))

(declare-fun e!882231 () Bool)

(assert (=> d!166601 (= lt!676821 e!882231)))

(declare-fun res!1080266 () Bool)

(assert (=> d!166601 (=> (not res!1080266) (not e!882231))))

(assert (=> d!166601 (= res!1080266 (is-Cons!36983 l!1390))))

(assert (=> d!166601 (= (contains!10515 l!1390 lt!676810) lt!676821)))

(declare-fun b!1581104 () Bool)

(declare-fun e!882230 () Bool)

(assert (=> b!1581104 (= e!882231 e!882230)))

(declare-fun res!1080265 () Bool)

(assert (=> b!1581104 (=> res!1080265 e!882230)))

(assert (=> b!1581104 (= res!1080265 (= (h!38527 l!1390) lt!676810))))

(declare-fun b!1581105 () Bool)

(assert (=> b!1581105 (= e!882230 (contains!10515 (t!51908 l!1390) lt!676810))))

(assert (= (and d!166601 res!1080266) b!1581104))

(assert (= (and b!1581104 (not res!1080265)) b!1581105))

(declare-fun m!1452213 () Bool)

(assert (=> d!166601 m!1452213))

(declare-fun m!1452215 () Bool)

(assert (=> d!166601 m!1452215))

(assert (=> b!1581105 m!1452179))

(assert (=> b!1581027 d!166601))

(declare-fun d!166607 () Bool)

(declare-fun res!1080267 () Bool)

(declare-fun e!882232 () Bool)

(assert (=> d!166607 (=> res!1080267 e!882232)))

(assert (=> d!166607 (= res!1080267 (or (is-Nil!36984 (t!51908 l!1390)) (is-Nil!36984 (t!51908 (t!51908 l!1390)))))))

(assert (=> d!166607 (= (isStrictlySorted!1082 (t!51908 l!1390)) e!882232)))

(declare-fun b!1581106 () Bool)

(declare-fun e!882233 () Bool)

(assert (=> b!1581106 (= e!882232 e!882233)))

(declare-fun res!1080268 () Bool)

(assert (=> b!1581106 (=> (not res!1080268) (not e!882233))))

(assert (=> b!1581106 (= res!1080268 (bvslt (_1!12872 (h!38527 (t!51908 l!1390))) (_1!12872 (h!38527 (t!51908 (t!51908 l!1390))))))))

(declare-fun b!1581107 () Bool)

(assert (=> b!1581107 (= e!882233 (isStrictlySorted!1082 (t!51908 (t!51908 l!1390))))))

(assert (= (and d!166607 (not res!1080267)) b!1581106))

(assert (= (and b!1581106 res!1080268) b!1581107))

(declare-fun m!1452217 () Bool)

(assert (=> b!1581107 m!1452217))

