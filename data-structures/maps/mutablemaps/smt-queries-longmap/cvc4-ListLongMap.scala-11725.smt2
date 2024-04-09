; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137414 () Bool)

(assert start!137414)

(declare-fun b!1581197 () Bool)

(declare-fun e!882284 () Bool)

(declare-fun e!882281 () Bool)

(assert (=> b!1581197 (= e!882284 e!882281)))

(declare-fun res!1080346 () Bool)

(assert (=> b!1581197 (=> (not res!1080346) (not e!882281))))

(declare-datatypes ((B!2694 0))(
  ( (B!2695 (val!19709 Int)) )
))
(declare-datatypes ((tuple2!25736 0))(
  ( (tuple2!25737 (_1!12878 (_ BitVec 64)) (_2!12878 B!2694)) )
))
(declare-datatypes ((List!36990 0))(
  ( (Nil!36987) (Cons!36986 (h!38530 tuple2!25736) (t!51911 List!36990)) )
))
(declare-fun l!1390 () List!36990)

(declare-fun lt!676839 () tuple2!25736)

(declare-fun contains!10518 (List!36990 tuple2!25736) Bool)

(assert (=> b!1581197 (= res!1080346 (contains!10518 l!1390 lt!676839))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun value!194 () B!2694)

(assert (=> b!1581197 (= lt!676839 (tuple2!25737 key!405 value!194))))

(declare-fun b!1581198 () Bool)

(declare-fun res!1080345 () Bool)

(declare-fun e!882282 () Bool)

(assert (=> b!1581198 (=> (not res!1080345) (not e!882282))))

(declare-fun isStrictlySorted!1085 (List!36990) Bool)

(assert (=> b!1581198 (= res!1080345 (isStrictlySorted!1085 (t!51911 l!1390)))))

(declare-fun b!1581199 () Bool)

(declare-fun res!1080347 () Bool)

(assert (=> b!1581199 (=> (not res!1080347) (not e!882282))))

(assert (=> b!1581199 (= res!1080347 (and (or (not (is-Cons!36986 l!1390)) (not (= (_1!12878 (h!38530 l!1390)) key!405))) (is-Cons!36986 l!1390)))))

(declare-fun b!1581200 () Bool)

(declare-fun res!1080348 () Bool)

(assert (=> b!1581200 (=> (not res!1080348) (not e!882282))))

(assert (=> b!1581200 (= res!1080348 (contains!10518 (t!51911 l!1390) lt!676839))))

(declare-fun res!1080350 () Bool)

(assert (=> start!137414 (=> (not res!1080350) (not e!882284))))

(assert (=> start!137414 (= res!1080350 (isStrictlySorted!1085 l!1390))))

(assert (=> start!137414 e!882284))

(declare-fun e!882285 () Bool)

(assert (=> start!137414 e!882285))

(assert (=> start!137414 true))

(declare-fun tp_is_empty!39239 () Bool)

(assert (=> start!137414 tp_is_empty!39239))

(declare-fun b!1581201 () Bool)

(declare-fun e!882283 () Bool)

(declare-datatypes ((tuple2!25738 0))(
  ( (tuple2!25739 (_1!12879 tuple2!25736) (_2!12879 List!36990)) )
))
(declare-datatypes ((Option!923 0))(
  ( (Some!922 (v!22431 tuple2!25738)) (None!921) )
))
(declare-fun lt!676840 () Option!923)

(declare-fun get!26843 (Option!923) tuple2!25738)

(assert (=> b!1581201 (= e!882283 (not (is-Nil!36987 (_2!12879 (get!26843 lt!676840)))))))

(declare-fun b!1581202 () Bool)

(assert (=> b!1581202 (= e!882281 e!882282)))

(declare-fun res!1080351 () Bool)

(assert (=> b!1581202 (=> (not res!1080351) (not e!882282))))

(assert (=> b!1581202 (= res!1080351 e!882283)))

(declare-fun res!1080352 () Bool)

(assert (=> b!1581202 (=> res!1080352 e!882283)))

(declare-fun isEmpty!1182 (Option!923) Bool)

(assert (=> b!1581202 (= res!1080352 (isEmpty!1182 lt!676840))))

(declare-fun unapply!96 (List!36990) Option!923)

(assert (=> b!1581202 (= lt!676840 (unapply!96 l!1390))))

(declare-fun b!1581203 () Bool)

(declare-fun tp!114568 () Bool)

(assert (=> b!1581203 (= e!882285 (and tp_is_empty!39239 tp!114568))))

(declare-fun b!1581204 () Bool)

(declare-fun res!1080349 () Bool)

(assert (=> b!1581204 (=> (not res!1080349) (not e!882282))))

(declare-fun containsKey!931 (List!36990 (_ BitVec 64)) Bool)

(assert (=> b!1581204 (= res!1080349 (containsKey!931 (t!51911 l!1390) key!405))))

(declare-fun b!1581205 () Bool)

(declare-fun ListPrimitiveSize!198 (List!36990) Int)

(assert (=> b!1581205 (= e!882282 (>= (ListPrimitiveSize!198 (t!51911 l!1390)) (ListPrimitiveSize!198 l!1390)))))

(declare-fun b!1581206 () Bool)

(declare-fun res!1080353 () Bool)

(assert (=> b!1581206 (=> (not res!1080353) (not e!882284))))

(assert (=> b!1581206 (= res!1080353 (containsKey!931 l!1390 key!405))))

(assert (= (and start!137414 res!1080350) b!1581206))

(assert (= (and b!1581206 res!1080353) b!1581197))

(assert (= (and b!1581197 res!1080346) b!1581202))

(assert (= (and b!1581202 (not res!1080352)) b!1581201))

(assert (= (and b!1581202 res!1080351) b!1581199))

(assert (= (and b!1581199 res!1080347) b!1581198))

(assert (= (and b!1581198 res!1080345) b!1581204))

(assert (= (and b!1581204 res!1080349) b!1581200))

(assert (= (and b!1581200 res!1080348) b!1581205))

(assert (= (and start!137414 (is-Cons!36986 l!1390)) b!1581203))

(declare-fun m!1452271 () Bool)

(assert (=> b!1581206 m!1452271))

(declare-fun m!1452273 () Bool)

(assert (=> b!1581205 m!1452273))

(declare-fun m!1452275 () Bool)

(assert (=> b!1581205 m!1452275))

(declare-fun m!1452277 () Bool)

(assert (=> b!1581201 m!1452277))

(declare-fun m!1452279 () Bool)

(assert (=> start!137414 m!1452279))

(declare-fun m!1452281 () Bool)

(assert (=> b!1581200 m!1452281))

(declare-fun m!1452283 () Bool)

(assert (=> b!1581204 m!1452283))

(declare-fun m!1452285 () Bool)

(assert (=> b!1581197 m!1452285))

(declare-fun m!1452287 () Bool)

(assert (=> b!1581202 m!1452287))

(declare-fun m!1452289 () Bool)

(assert (=> b!1581202 m!1452289))

(declare-fun m!1452291 () Bool)

(assert (=> b!1581198 m!1452291))

(push 1)

(assert (not b!1581202))

(assert (not b!1581206))

(assert tp_is_empty!39239)

(assert (not b!1581205))

(assert (not start!137414))

(assert (not b!1581198))

(assert (not b!1581201))

(assert (not b!1581200))

(assert (not b!1581197))

(assert (not b!1581204))

(assert (not b!1581203))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166621 () Bool)

(declare-fun res!1080364 () Bool)

(declare-fun e!882303 () Bool)

(assert (=> d!166621 (=> res!1080364 e!882303)))

(assert (=> d!166621 (= res!1080364 (or (is-Nil!36987 l!1390) (is-Nil!36987 (t!51911 l!1390))))))

(assert (=> d!166621 (= (isStrictlySorted!1085 l!1390) e!882303)))

(declare-fun b!1581233 () Bool)

(declare-fun e!882305 () Bool)

(assert (=> b!1581233 (= e!882303 e!882305)))

(declare-fun res!1080365 () Bool)

(assert (=> b!1581233 (=> (not res!1080365) (not e!882305))))

(assert (=> b!1581233 (= res!1080365 (bvslt (_1!12878 (h!38530 l!1390)) (_1!12878 (h!38530 (t!51911 l!1390)))))))

(declare-fun b!1581234 () Bool)

(assert (=> b!1581234 (= e!882305 (isStrictlySorted!1085 (t!51911 l!1390)))))

(assert (= (and d!166621 (not res!1080364)) b!1581233))

(assert (= (and b!1581233 res!1080365) b!1581234))

(assert (=> b!1581234 m!1452291))

(assert (=> start!137414 d!166621))

(declare-fun d!166633 () Bool)

(declare-fun res!1080366 () Bool)

(declare-fun e!882306 () Bool)

(assert (=> d!166633 (=> res!1080366 e!882306)))

(assert (=> d!166633 (= res!1080366 (or (is-Nil!36987 (t!51911 l!1390)) (is-Nil!36987 (t!51911 (t!51911 l!1390)))))))

(assert (=> d!166633 (= (isStrictlySorted!1085 (t!51911 l!1390)) e!882306)))

(declare-fun b!1581235 () Bool)

(declare-fun e!882307 () Bool)

(assert (=> b!1581235 (= e!882306 e!882307)))

(declare-fun res!1080367 () Bool)

(assert (=> b!1581235 (=> (not res!1080367) (not e!882307))))

(assert (=> b!1581235 (= res!1080367 (bvslt (_1!12878 (h!38530 (t!51911 l!1390))) (_1!12878 (h!38530 (t!51911 (t!51911 l!1390))))))))

(declare-fun b!1581236 () Bool)

(assert (=> b!1581236 (= e!882307 (isStrictlySorted!1085 (t!51911 (t!51911 l!1390))))))

(assert (= (and d!166633 (not res!1080366)) b!1581235))

(assert (= (and b!1581235 res!1080367) b!1581236))

(declare-fun m!1452297 () Bool)

(assert (=> b!1581236 m!1452297))

(assert (=> b!1581198 d!166633))

(declare-fun d!166635 () Bool)

(declare-fun lt!676854 () Bool)

(declare-fun content!852 (List!36990) (Set tuple2!25736))

(assert (=> d!166635 (= lt!676854 (member lt!676839 (content!852 l!1390)))))

(declare-fun e!882331 () Bool)

(assert (=> d!166635 (= lt!676854 e!882331)))

(declare-fun res!1080390 () Bool)

(assert (=> d!166635 (=> (not res!1080390) (not e!882331))))

(assert (=> d!166635 (= res!1080390 (is-Cons!36986 l!1390))))

(assert (=> d!166635 (= (contains!10518 l!1390 lt!676839) lt!676854)))

(declare-fun b!1581259 () Bool)

(declare-fun e!882330 () Bool)

(assert (=> b!1581259 (= e!882331 e!882330)))

(declare-fun res!1080391 () Bool)

(assert (=> b!1581259 (=> res!1080391 e!882330)))

(assert (=> b!1581259 (= res!1080391 (= (h!38530 l!1390) lt!676839))))

(declare-fun b!1581260 () Bool)

(assert (=> b!1581260 (= e!882330 (contains!10518 (t!51911 l!1390) lt!676839))))

(assert (= (and d!166635 res!1080390) b!1581259))

(assert (= (and b!1581259 (not res!1080391)) b!1581260))

(declare-fun m!1452305 () Bool)

(assert (=> d!166635 m!1452305))

(declare-fun m!1452307 () Bool)

(assert (=> d!166635 m!1452307))

(assert (=> b!1581260 m!1452281))

(assert (=> b!1581197 d!166635))

(declare-fun d!166643 () Bool)

(declare-fun res!1080410 () Bool)

(declare-fun e!882350 () Bool)

(assert (=> d!166643 (=> res!1080410 e!882350)))

(assert (=> d!166643 (= res!1080410 (and (is-Cons!36986 (t!51911 l!1390)) (= (_1!12878 (h!38530 (t!51911 l!1390))) key!405)))))

(assert (=> d!166643 (= (containsKey!931 (t!51911 l!1390) key!405) e!882350)))

(declare-fun b!1581279 () Bool)

(declare-fun e!882351 () Bool)

(assert (=> b!1581279 (= e!882350 e!882351)))

(declare-fun res!1080411 () Bool)

(assert (=> b!1581279 (=> (not res!1080411) (not e!882351))))

(assert (=> b!1581279 (= res!1080411 (and (or (not (is-Cons!36986 (t!51911 l!1390))) (bvsle (_1!12878 (h!38530 (t!51911 l!1390))) key!405)) (is-Cons!36986 (t!51911 l!1390)) (bvslt (_1!12878 (h!38530 (t!51911 l!1390))) key!405)))))

(declare-fun b!1581280 () Bool)

(assert (=> b!1581280 (= e!882351 (containsKey!931 (t!51911 (t!51911 l!1390)) key!405))))

(assert (= (and d!166643 (not res!1080410)) b!1581279))

(assert (= (and b!1581279 res!1080411) b!1581280))

(declare-fun m!1452317 () Bool)

(assert (=> b!1581280 m!1452317))

(assert (=> b!1581204 d!166643))

(declare-fun d!166655 () Bool)

(declare-fun res!1080414 () Bool)

(declare-fun e!882354 () Bool)

(assert (=> d!166655 (=> res!1080414 e!882354)))

(assert (=> d!166655 (= res!1080414 (and (is-Cons!36986 l!1390) (= (_1!12878 (h!38530 l!1390)) key!405)))))

(assert (=> d!166655 (= (containsKey!931 l!1390 key!405) e!882354)))

(declare-fun b!1581283 () Bool)

(declare-fun e!882355 () Bool)

(assert (=> b!1581283 (= e!882354 e!882355)))

(declare-fun res!1080415 () Bool)

(assert (=> b!1581283 (=> (not res!1080415) (not e!882355))))

(assert (=> b!1581283 (= res!1080415 (and (or (not (is-Cons!36986 l!1390)) (bvsle (_1!12878 (h!38530 l!1390)) key!405)) (is-Cons!36986 l!1390) (bvslt (_1!12878 (h!38530 l!1390)) key!405)))))

(declare-fun b!1581284 () Bool)

(assert (=> b!1581284 (= e!882355 (containsKey!931 (t!51911 l!1390) key!405))))

(assert (= (and d!166655 (not res!1080414)) b!1581283))

(assert (= (and b!1581283 res!1080415) b!1581284))

(assert (=> b!1581284 m!1452283))

(assert (=> b!1581206 d!166655))

(declare-fun d!166661 () Bool)

(declare-fun lt!676862 () Int)

(assert (=> d!166661 (>= lt!676862 0)))

(declare-fun e!882367 () Int)

(assert (=> d!166661 (= lt!676862 e!882367)))

(declare-fun c!146528 () Bool)

(assert (=> d!166661 (= c!146528 (is-Nil!36987 (t!51911 l!1390)))))

(assert (=> d!166661 (= (ListPrimitiveSize!198 (t!51911 l!1390)) lt!676862)))

(declare-fun b!1581300 () Bool)

(assert (=> b!1581300 (= e!882367 0)))

(declare-fun b!1581301 () Bool)

(assert (=> b!1581301 (= e!882367 (+ 1 (ListPrimitiveSize!198 (t!51911 (t!51911 l!1390)))))))

(assert (= (and d!166661 c!146528) b!1581300))

(assert (= (and d!166661 (not c!146528)) b!1581301))

