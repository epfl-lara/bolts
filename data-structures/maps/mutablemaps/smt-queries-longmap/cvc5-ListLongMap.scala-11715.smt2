; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137158 () Bool)

(assert start!137158)

(declare-fun b!1579962 () Bool)

(declare-fun res!1079407 () Bool)

(declare-fun e!881442 () Bool)

(assert (=> b!1579962 (=> (not res!1079407) (not e!881442))))

(declare-datatypes ((B!2630 0))(
  ( (B!2631 (val!19677 Int)) )
))
(declare-datatypes ((tuple2!25626 0))(
  ( (tuple2!25627 (_1!12823 (_ BitVec 64)) (_2!12823 B!2630)) )
))
(declare-datatypes ((List!36958 0))(
  ( (Nil!36955) (Cons!36954 (h!38498 tuple2!25626) (t!51879 List!36958)) )
))
(declare-fun l!1390 () List!36958)

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!899 (List!36958 (_ BitVec 64)) Bool)

(assert (=> b!1579962 (= res!1079407 (containsKey!899 l!1390 key!405))))

(declare-fun b!1579963 () Bool)

(declare-fun e!881440 () Bool)

(assert (=> b!1579963 (= e!881442 e!881440)))

(declare-fun res!1079405 () Bool)

(assert (=> b!1579963 (=> (not res!1079405) (not e!881440))))

(declare-fun lt!676597 () tuple2!25626)

(declare-fun contains!10486 (List!36958 tuple2!25626) Bool)

(assert (=> b!1579963 (= res!1079405 (contains!10486 l!1390 lt!676597))))

(declare-fun value!194 () B!2630)

(assert (=> b!1579963 (= lt!676597 (tuple2!25627 key!405 value!194))))

(declare-fun b!1579964 () Bool)

(declare-fun e!881438 () Bool)

(assert (=> b!1579964 (= e!881440 e!881438)))

(declare-fun res!1079411 () Bool)

(assert (=> b!1579964 (=> (not res!1079411) (not e!881438))))

(declare-fun e!881439 () Bool)

(assert (=> b!1579964 (= res!1079411 e!881439)))

(declare-fun res!1079404 () Bool)

(assert (=> b!1579964 (=> res!1079404 e!881439)))

(declare-datatypes ((tuple2!25628 0))(
  ( (tuple2!25629 (_1!12824 tuple2!25626) (_2!12824 List!36958)) )
))
(declare-datatypes ((Option!891 0))(
  ( (Some!890 (v!22384 tuple2!25628)) (None!889) )
))
(declare-fun lt!676595 () Option!891)

(declare-fun isEmpty!1159 (Option!891) Bool)

(assert (=> b!1579964 (= res!1079404 (isEmpty!1159 lt!676595))))

(declare-fun unapply!73 (List!36958) Option!891)

(assert (=> b!1579964 (= lt!676595 (unapply!73 l!1390))))

(declare-fun b!1579965 () Bool)

(declare-fun res!1079408 () Bool)

(assert (=> b!1579965 (=> (not res!1079408) (not e!881438))))

(declare-fun isStrictlySorted!1053 (List!36958) Bool)

(assert (=> b!1579965 (= res!1079408 (isStrictlySorted!1053 (t!51879 l!1390)))))

(declare-fun b!1579966 () Bool)

(assert (=> b!1579966 (= e!881438 (not true))))

(assert (=> b!1579966 (not (contains!10486 (t!51879 l!1390) lt!676597))))

(declare-datatypes ((Unit!52172 0))(
  ( (Unit!52173) )
))
(declare-fun lt!676596 () Unit!52172)

(declare-fun lemmaNotContainsKeyThenNotContainsTuple!1 (List!36958 (_ BitVec 64) B!2630) Unit!52172)

(assert (=> b!1579966 (= lt!676596 (lemmaNotContainsKeyThenNotContainsTuple!1 (t!51879 l!1390) key!405 value!194))))

(declare-fun b!1579967 () Bool)

(declare-fun get!26800 (Option!891) tuple2!25628)

(assert (=> b!1579967 (= e!881439 (not (is-Nil!36955 (_2!12824 (get!26800 lt!676595)))))))

(declare-fun b!1579968 () Bool)

(declare-fun res!1079410 () Bool)

(assert (=> b!1579968 (=> (not res!1079410) (not e!881438))))

(assert (=> b!1579968 (= res!1079410 (and (is-Cons!36954 l!1390) (= (_1!12823 (h!38498 l!1390)) key!405)))))

(declare-fun res!1079406 () Bool)

(assert (=> start!137158 (=> (not res!1079406) (not e!881442))))

(assert (=> start!137158 (= res!1079406 (isStrictlySorted!1053 l!1390))))

(assert (=> start!137158 e!881442))

(declare-fun e!881441 () Bool)

(assert (=> start!137158 e!881441))

(assert (=> start!137158 true))

(declare-fun tp_is_empty!39175 () Bool)

(assert (=> start!137158 tp_is_empty!39175))

(declare-fun b!1579969 () Bool)

(declare-fun res!1079409 () Bool)

(assert (=> b!1579969 (=> (not res!1079409) (not e!881438))))

(assert (=> b!1579969 (= res!1079409 (not (containsKey!899 (t!51879 l!1390) key!405)))))

(declare-fun b!1579970 () Bool)

(declare-fun tp!114424 () Bool)

(assert (=> b!1579970 (= e!881441 (and tp_is_empty!39175 tp!114424))))

(assert (= (and start!137158 res!1079406) b!1579962))

(assert (= (and b!1579962 res!1079407) b!1579963))

(assert (= (and b!1579963 res!1079405) b!1579964))

(assert (= (and b!1579964 (not res!1079404)) b!1579967))

(assert (= (and b!1579964 res!1079411) b!1579968))

(assert (= (and b!1579968 res!1079410) b!1579965))

(assert (= (and b!1579965 res!1079408) b!1579969))

(assert (= (and b!1579969 res!1079409) b!1579966))

(assert (= (and start!137158 (is-Cons!36954 l!1390)) b!1579970))

(declare-fun m!1451531 () Bool)

(assert (=> b!1579969 m!1451531))

(declare-fun m!1451533 () Bool)

(assert (=> b!1579962 m!1451533))

(declare-fun m!1451535 () Bool)

(assert (=> b!1579965 m!1451535))

(declare-fun m!1451537 () Bool)

(assert (=> b!1579967 m!1451537))

(declare-fun m!1451539 () Bool)

(assert (=> b!1579964 m!1451539))

(declare-fun m!1451541 () Bool)

(assert (=> b!1579964 m!1451541))

(declare-fun m!1451543 () Bool)

(assert (=> b!1579966 m!1451543))

(declare-fun m!1451545 () Bool)

(assert (=> b!1579966 m!1451545))

(declare-fun m!1451547 () Bool)

(assert (=> b!1579963 m!1451547))

(declare-fun m!1451549 () Bool)

(assert (=> start!137158 m!1451549))

(push 1)

