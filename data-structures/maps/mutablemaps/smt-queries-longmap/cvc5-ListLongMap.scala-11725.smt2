; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137410 () Bool)

(assert start!137410)

(declare-fun b!1581137 () Bool)

(declare-fun res!1080291 () Bool)

(declare-fun e!882254 () Bool)

(assert (=> b!1581137 (=> (not res!1080291) (not e!882254))))

(declare-datatypes ((B!2690 0))(
  ( (B!2691 (val!19707 Int)) )
))
(declare-datatypes ((tuple2!25728 0))(
  ( (tuple2!25729 (_1!12874 (_ BitVec 64)) (_2!12874 B!2690)) )
))
(declare-datatypes ((List!36988 0))(
  ( (Nil!36985) (Cons!36984 (h!38528 tuple2!25728) (t!51909 List!36988)) )
))
(declare-fun l!1390 () List!36988)

(declare-fun lt!676827 () tuple2!25728)

(declare-fun contains!10516 (List!36988 tuple2!25728) Bool)

(assert (=> b!1581137 (= res!1080291 (contains!10516 (t!51909 l!1390) lt!676827))))

(declare-fun b!1581138 () Bool)

(declare-fun res!1080299 () Bool)

(declare-fun e!882253 () Bool)

(assert (=> b!1581138 (=> (not res!1080299) (not e!882253))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!929 (List!36988 (_ BitVec 64)) Bool)

(assert (=> b!1581138 (= res!1080299 (containsKey!929 l!1390 key!405))))

(declare-fun res!1080298 () Bool)

(assert (=> start!137410 (=> (not res!1080298) (not e!882253))))

(declare-fun isStrictlySorted!1083 (List!36988) Bool)

(assert (=> start!137410 (= res!1080298 (isStrictlySorted!1083 l!1390))))

(assert (=> start!137410 e!882253))

(declare-fun e!882255 () Bool)

(assert (=> start!137410 e!882255))

(assert (=> start!137410 true))

(declare-fun tp_is_empty!39235 () Bool)

(assert (=> start!137410 tp_is_empty!39235))

(declare-fun b!1581139 () Bool)

(declare-fun e!882251 () Bool)

(declare-datatypes ((tuple2!25730 0))(
  ( (tuple2!25731 (_1!12875 tuple2!25728) (_2!12875 List!36988)) )
))
(declare-datatypes ((Option!921 0))(
  ( (Some!920 (v!22429 tuple2!25730)) (None!919) )
))
(declare-fun lt!676828 () Option!921)

(declare-fun get!26841 (Option!921) tuple2!25730)

(assert (=> b!1581139 (= e!882251 (not (is-Nil!36985 (_2!12875 (get!26841 lt!676828)))))))

(declare-fun b!1581140 () Bool)

(declare-fun e!882252 () Bool)

(assert (=> b!1581140 (= e!882253 e!882252)))

(declare-fun res!1080292 () Bool)

(assert (=> b!1581140 (=> (not res!1080292) (not e!882252))))

(assert (=> b!1581140 (= res!1080292 (contains!10516 l!1390 lt!676827))))

(declare-fun value!194 () B!2690)

(assert (=> b!1581140 (= lt!676827 (tuple2!25729 key!405 value!194))))

(declare-fun b!1581141 () Bool)

(declare-fun res!1080294 () Bool)

(assert (=> b!1581141 (=> (not res!1080294) (not e!882254))))

(assert (=> b!1581141 (= res!1080294 (containsKey!929 (t!51909 l!1390) key!405))))

(declare-fun b!1581142 () Bool)

(assert (=> b!1581142 (= e!882252 e!882254)))

(declare-fun res!1080293 () Bool)

(assert (=> b!1581142 (=> (not res!1080293) (not e!882254))))

(assert (=> b!1581142 (= res!1080293 e!882251)))

(declare-fun res!1080295 () Bool)

(assert (=> b!1581142 (=> res!1080295 e!882251)))

(declare-fun isEmpty!1180 (Option!921) Bool)

(assert (=> b!1581142 (= res!1080295 (isEmpty!1180 lt!676828))))

(declare-fun unapply!94 (List!36988) Option!921)

(assert (=> b!1581142 (= lt!676828 (unapply!94 l!1390))))

(declare-fun b!1581143 () Bool)

(declare-fun tp!114562 () Bool)

(assert (=> b!1581143 (= e!882255 (and tp_is_empty!39235 tp!114562))))

(declare-fun b!1581144 () Bool)

(declare-fun ListPrimitiveSize!196 (List!36988) Int)

(assert (=> b!1581144 (= e!882254 (>= (ListPrimitiveSize!196 (t!51909 l!1390)) (ListPrimitiveSize!196 l!1390)))))

(declare-fun b!1581145 () Bool)

(declare-fun res!1080297 () Bool)

(assert (=> b!1581145 (=> (not res!1080297) (not e!882254))))

(assert (=> b!1581145 (= res!1080297 (isStrictlySorted!1083 (t!51909 l!1390)))))

(declare-fun b!1581146 () Bool)

(declare-fun res!1080296 () Bool)

(assert (=> b!1581146 (=> (not res!1080296) (not e!882254))))

(assert (=> b!1581146 (= res!1080296 (and (or (not (is-Cons!36984 l!1390)) (not (= (_1!12874 (h!38528 l!1390)) key!405))) (is-Cons!36984 l!1390)))))

(assert (= (and start!137410 res!1080298) b!1581138))

(assert (= (and b!1581138 res!1080299) b!1581140))

(assert (= (and b!1581140 res!1080292) b!1581142))

(assert (= (and b!1581142 (not res!1080295)) b!1581139))

(assert (= (and b!1581142 res!1080293) b!1581146))

(assert (= (and b!1581146 res!1080296) b!1581145))

(assert (= (and b!1581145 res!1080297) b!1581141))

(assert (= (and b!1581141 res!1080294) b!1581137))

(assert (= (and b!1581137 res!1080291) b!1581144))

(assert (= (and start!137410 (is-Cons!36984 l!1390)) b!1581143))

(declare-fun m!1452227 () Bool)

(assert (=> b!1581139 m!1452227))

(declare-fun m!1452229 () Bool)

(assert (=> b!1581138 m!1452229))

(declare-fun m!1452231 () Bool)

(assert (=> b!1581142 m!1452231))

(declare-fun m!1452233 () Bool)

(assert (=> b!1581142 m!1452233))

(declare-fun m!1452235 () Bool)

(assert (=> b!1581140 m!1452235))

(declare-fun m!1452237 () Bool)

(assert (=> start!137410 m!1452237))

(declare-fun m!1452239 () Bool)

(assert (=> b!1581141 m!1452239))

(declare-fun m!1452241 () Bool)

(assert (=> b!1581144 m!1452241))

(declare-fun m!1452243 () Bool)

(assert (=> b!1581144 m!1452243))

(declare-fun m!1452245 () Bool)

(assert (=> b!1581137 m!1452245))

(declare-fun m!1452247 () Bool)

(assert (=> b!1581145 m!1452247))

(push 1)

(assert (not b!1581141))

(assert (not b!1581140))

(assert (not b!1581142))

(assert (not b!1581143))

(assert (not start!137410))

(assert tp_is_empty!39235)

(assert (not b!1581138))

(assert (not b!1581144))

(assert (not b!1581139))

(assert (not b!1581145))

(assert (not b!1581137))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166619 () Bool)

(assert (=> d!166619 (= (get!26841 lt!676828) (v!22429 lt!676828))))

(assert (=> b!1581139 d!166619))

(declare-fun d!166623 () Bool)

(declare-fun lt!676845 () Int)

(assert (=> d!166623 (>= lt!676845 0)))

(declare-fun e!882300 () Int)

(assert (=> d!166623 (= lt!676845 e!882300)))

(declare-fun c!146522 () Bool)

(assert (=> d!166623 (= c!146522 (is-Nil!36985 (t!51909 l!1390)))))

(assert (=> d!166623 (= (ListPrimitiveSize!196 (t!51909 l!1390)) lt!676845)))

(declare-fun b!1581225 () Bool)

(assert (=> b!1581225 (= e!882300 0)))

(declare-fun b!1581226 () Bool)

(assert (=> b!1581226 (= e!882300 (+ 1 (ListPrimitiveSize!196 (t!51909 (t!51909 l!1390)))))))

(assert (= (and d!166623 c!146522) b!1581225))

(assert (= (and d!166623 (not c!146522)) b!1581226))

(declare-fun m!1452293 () Bool)

(assert (=> b!1581226 m!1452293))

(assert (=> b!1581144 d!166623))

(declare-fun d!166625 () Bool)

(declare-fun lt!676846 () Int)

(assert (=> d!166625 (>= lt!676846 0)))

(declare-fun e!882301 () Int)

(assert (=> d!166625 (= lt!676846 e!882301)))

(declare-fun c!146523 () Bool)

(assert (=> d!166625 (= c!146523 (is-Nil!36985 l!1390))))

(assert (=> d!166625 (= (ListPrimitiveSize!196 l!1390) lt!676846)))

(declare-fun b!1581227 () Bool)

(assert (=> b!1581227 (= e!882301 0)))

(declare-fun b!1581228 () Bool)

(assert (=> b!1581228 (= e!882301 (+ 1 (ListPrimitiveSize!196 (t!51909 l!1390))))))

(assert (= (and d!166625 c!146523) b!1581227))

(assert (= (and d!166625 (not c!146523)) b!1581228))

(assert (=> b!1581228 m!1452241))

(assert (=> b!1581144 d!166625))

(declare-fun d!166627 () Bool)

(declare-fun res!1080372 () Bool)

(declare-fun e!882312 () Bool)

(assert (=> d!166627 (=> res!1080372 e!882312)))

(assert (=> d!166627 (= res!1080372 (or (is-Nil!36985 (t!51909 l!1390)) (is-Nil!36985 (t!51909 (t!51909 l!1390)))))))

(assert (=> d!166627 (= (isStrictlySorted!1083 (t!51909 l!1390)) e!882312)))

(declare-fun b!1581241 () Bool)

(declare-fun e!882313 () Bool)

(assert (=> b!1581241 (= e!882312 e!882313)))

(declare-fun res!1080373 () Bool)

(assert (=> b!1581241 (=> (not res!1080373) (not e!882313))))

(assert (=> b!1581241 (= res!1080373 (bvslt (_1!12874 (h!38528 (t!51909 l!1390))) (_1!12874 (h!38528 (t!51909 (t!51909 l!1390))))))))

(declare-fun b!1581242 () Bool)

(assert (=> b!1581242 (= e!882313 (isStrictlySorted!1083 (t!51909 (t!51909 l!1390))))))

(assert (= (and d!166627 (not res!1080372)) b!1581241))

(assert (= (and b!1581241 res!1080373) b!1581242))

(declare-fun m!1452299 () Bool)

(assert (=> b!1581242 m!1452299))

(assert (=> b!1581145 d!166627))

(declare-fun d!166637 () Bool)

(declare-fun lt!676853 () Bool)

(declare-fun content!850 (List!36988) (Set tuple2!25728))

(assert (=> d!166637 (= lt!676853 (set.member lt!676827 (content!850 l!1390)))))

(declare-fun e!882328 () Bool)

(assert (=> d!166637 (= lt!676853 e!882328)))

(declare-fun res!1080388 () Bool)

(assert (=> d!166637 (=> (not res!1080388) (not e!882328))))

(assert (=> d!166637 (= res!1080388 (is-Cons!36984 l!1390))))

(assert (=> d!166637 (= (contains!10516 l!1390 lt!676827) lt!676853)))

(declare-fun b!1581257 () Bool)

(declare-fun e!882329 () Bool)

(assert (=> b!1581257 (= e!882328 e!882329)))

(declare-fun res!1080389 () Bool)

(assert (=> b!1581257 (=> res!1080389 e!882329)))

(assert (=> b!1581257 (= res!1080389 (= (h!38528 l!1390) lt!676827))))

(declare-fun b!1581258 () Bool)

(assert (=> b!1581258 (= e!882329 (contains!10516 (t!51909 l!1390) lt!676827))))

(assert (= (and d!166637 res!1080388) b!1581257))

(assert (= (and b!1581257 (not res!1080389)) b!1581258))

(declare-fun m!1452301 () Bool)

(assert (=> d!166637 m!1452301))

(declare-fun m!1452303 () Bool)

(assert (=> d!166637 m!1452303))

(assert (=> b!1581258 m!1452245))

(assert (=> b!1581140 d!166637))

(declare-fun d!166641 () Bool)

(assert (=> d!166641 (= (isEmpty!1180 lt!676828) (not (is-Some!920 lt!676828)))))

(assert (=> b!1581142 d!166641))

(declare-fun d!166645 () Bool)

(assert (=> d!166645 (= (unapply!94 l!1390) (ite (is-Nil!36985 l!1390) None!919 (Some!920 (tuple2!25731 (h!38528 l!1390) (t!51909 l!1390)))))))

(assert (=> b!1581142 d!166645))

(declare-fun d!166647 () Bool)

(declare-fun res!1080406 () Bool)

(declare-fun e!882346 () Bool)

(assert (=> d!166647 (=> res!1080406 e!882346)))

(assert (=> d!166647 (= res!1080406 (and (is-Cons!36984 (t!51909 l!1390)) (= (_1!12874 (h!38528 (t!51909 l!1390))) key!405)))))

(assert (=> d!166647 (= (containsKey!929 (t!51909 l!1390) key!405) e!882346)))

(declare-fun b!1581275 () Bool)

(declare-fun e!882347 () Bool)

(assert (=> b!1581275 (= e!882346 e!882347)))

(declare-fun res!1080407 () Bool)

(assert (=> b!1581275 (=> (not res!1080407) (not e!882347))))

(assert (=> b!1581275 (= res!1080407 (and (or (not (is-Cons!36984 (t!51909 l!1390))) (bvsle (_1!12874 (h!38528 (t!51909 l!1390))) key!405)) (is-Cons!36984 (t!51909 l!1390)) (bvslt (_1!12874 (h!38528 (t!51909 l!1390))) key!405)))))

(declare-fun b!1581276 () Bool)

(assert (=> b!1581276 (= e!882347 (containsKey!929 (t!51909 (t!51909 l!1390)) key!405))))

(assert (= (and d!166647 (not res!1080406)) b!1581275))

(assert (= (and b!1581275 res!1080407) b!1581276))

(declare-fun m!1452311 () Bool)

(assert (=> b!1581276 m!1452311))

(assert (=> b!1581141 d!166647))

(declare-fun d!166649 () Bool)

(declare-fun res!1080408 () Bool)

(declare-fun e!882348 () Bool)

(assert (=> d!166649 (=> res!1080408 e!882348)))

(assert (=> d!166649 (= res!1080408 (or (is-Nil!36985 l!1390) (is-Nil!36985 (t!51909 l!1390))))))

(assert (=> d!166649 (= (isStrictlySorted!1083 l!1390) e!882348)))

(declare-fun b!1581277 () Bool)

(declare-fun e!882349 () Bool)

(assert (=> b!1581277 (= e!882348 e!882349)))

(declare-fun res!1080409 () Bool)

(assert (=> b!1581277 (=> (not res!1080409) (not e!882349))))

(assert (=> b!1581277 (= res!1080409 (bvslt (_1!12874 (h!38528 l!1390)) (_1!12874 (h!38528 (t!51909 l!1390)))))))

(declare-fun b!1581278 () Bool)

(assert (=> b!1581278 (= e!882349 (isStrictlySorted!1083 (t!51909 l!1390)))))

(assert (= (and d!166649 (not res!1080408)) b!1581277))

(assert (= (and b!1581277 res!1080409) b!1581278))

(assert (=> b!1581278 m!1452247))

(assert (=> start!137410 d!166649))

(declare-fun d!166653 () Bool)

(declare-fun res!1080412 () Bool)

(declare-fun e!882352 () Bool)

(assert (=> d!166653 (=> res!1080412 e!882352)))

(assert (=> d!166653 (= res!1080412 (and (is-Cons!36984 l!1390) (= (_1!12874 (h!38528 l!1390)) key!405)))))

(assert (=> d!166653 (= (containsKey!929 l!1390 key!405) e!882352)))

(declare-fun b!1581281 () Bool)

(declare-fun e!882353 () Bool)

(assert (=> b!1581281 (= e!882352 e!882353)))

(declare-fun res!1080413 () Bool)

(assert (=> b!1581281 (=> (not res!1080413) (not e!882353))))

(assert (=> b!1581281 (= res!1080413 (and (or (not (is-Cons!36984 l!1390)) (bvsle (_1!12874 (h!38528 l!1390)) key!405)) (is-Cons!36984 l!1390) (bvslt (_1!12874 (h!38528 l!1390)) key!405)))))

(declare-fun b!1581282 () Bool)

(assert (=> b!1581282 (= e!882353 (containsKey!929 (t!51909 l!1390) key!405))))

(assert (= (and d!166653 (not res!1080412)) b!1581281))

(assert (= (and b!1581281 res!1080413) b!1581282))

(assert (=> b!1581282 m!1452239))

(assert (=> b!1581138 d!166653))

(declare-fun d!166657 () Bool)

(declare-fun lt!676858 () Bool)

(assert (=> d!166657 (= lt!676858 (set.member lt!676827 (content!850 (t!51909 l!1390))))))

(declare-fun e!882356 () Bool)

(assert (=> d!166657 (= lt!676858 e!882356)))

(declare-fun res!1080416 () Bool)

(assert (=> d!166657 (=> (not res!1080416) (not e!882356))))

(assert (=> d!166657 (= res!1080416 (is-Cons!36984 (t!51909 l!1390)))))

(assert (=> d!166657 (= (contains!10516 (t!51909 l!1390) lt!676827) lt!676858)))

(declare-fun b!1581285 () Bool)

(declare-fun e!882357 () Bool)

(assert (=> b!1581285 (= e!882356 e!882357)))

(declare-fun res!1080417 () Bool)

(assert (=> b!1581285 (=> res!1080417 e!882357)))

(assert (=> b!1581285 (= res!1080417 (= (h!38528 (t!51909 l!1390)) lt!676827))))

(declare-fun b!1581286 () Bool)

(assert (=> b!1581286 (= e!882357 (contains!10516 (t!51909 (t!51909 l!1390)) lt!676827))))

(assert (= (and d!166657 res!1080416) b!1581285))

(assert (= (and b!1581285 (not res!1080417)) b!1581286))

(declare-fun m!1452319 () Bool)

(assert (=> d!166657 m!1452319))

(declare-fun m!1452321 () Bool)

(assert (=> d!166657 m!1452321))

(declare-fun m!1452323 () Bool)

(assert (=> b!1581286 m!1452323))

(assert (=> b!1581137 d!166657))

(declare-fun b!1581291 () Bool)

(declare-fun e!882360 () Bool)

(declare-fun tp!114571 () Bool)

(assert (=> b!1581291 (= e!882360 (and tp_is_empty!39235 tp!114571))))

(assert (=> b!1581143 (= tp!114562 e!882360)))

(assert (= (and b!1581143 (is-Cons!36984 (t!51909 l!1390))) b!1581291))

(push 1)

(assert (not b!1581278))

(assert (not b!1581228))

(assert (not b!1581276))

(assert (not b!1581282))

(assert (not b!1581258))

(assert tp_is_empty!39235)

(assert (not b!1581242))

(assert (not d!166657))

(assert (not b!1581291))

(assert (not b!1581286))

(assert (not b!1581226))

(assert (not d!166637))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

