; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137834 () Bool)

(assert start!137834)

(declare-fun b!1582833 () Bool)

(declare-fun res!1081409 () Bool)

(declare-fun e!883473 () Bool)

(assert (=> b!1582833 (=> (not res!1081409) (not e!883473))))

(declare-datatypes ((B!2832 0))(
  ( (B!2833 (val!19778 Int)) )
))
(declare-datatypes ((tuple2!25888 0))(
  ( (tuple2!25889 (_1!12954 (_ BitVec 64)) (_2!12954 B!2832)) )
))
(declare-datatypes ((List!37059 0))(
  ( (Nil!37056) (Cons!37055 (h!38599 tuple2!25888) (t!51980 List!37059)) )
))
(declare-fun l!1065 () List!37059)

(declare-fun isStrictlySorted!1130 (List!37059) Bool)

(assert (=> b!1582833 (= res!1081409 (isStrictlySorted!1130 (t!51980 l!1065)))))

(declare-fun b!1582834 () Bool)

(declare-fun e!883472 () Bool)

(declare-fun tp_is_empty!39365 () Bool)

(declare-fun tp!114883 () Bool)

(assert (=> b!1582834 (= e!883472 (and tp_is_empty!39365 tp!114883))))

(declare-fun b!1582835 () Bool)

(declare-fun res!1081411 () Bool)

(assert (=> b!1582835 (=> (not res!1081411) (not e!883473))))

(declare-fun key!287 () (_ BitVec 64))

(declare-fun containsKey!976 (List!37059 (_ BitVec 64)) Bool)

(assert (=> b!1582835 (= res!1081411 (containsKey!976 (t!51980 l!1065) key!287))))

(declare-fun b!1582836 () Bool)

(declare-fun ListPrimitiveSize!210 (List!37059) Int)

(assert (=> b!1582836 (= e!883473 (>= (ListPrimitiveSize!210 (t!51980 l!1065)) (ListPrimitiveSize!210 l!1065)))))

(declare-fun b!1582837 () Bool)

(declare-fun res!1081412 () Bool)

(assert (=> b!1582837 (=> (not res!1081412) (not e!883473))))

(assert (=> b!1582837 (= res!1081412 (and (is-Cons!37055 l!1065) (not (= (_1!12954 (h!38599 l!1065)) key!287))))))

(declare-fun b!1582838 () Bool)

(declare-fun res!1081408 () Bool)

(assert (=> b!1582838 (=> (not res!1081408) (not e!883473))))

(assert (=> b!1582838 (= res!1081408 (containsKey!976 l!1065 key!287))))

(declare-fun res!1081410 () Bool)

(assert (=> start!137834 (=> (not res!1081410) (not e!883473))))

(assert (=> start!137834 (= res!1081410 (isStrictlySorted!1130 l!1065))))

(assert (=> start!137834 e!883473))

(assert (=> start!137834 e!883472))

(assert (=> start!137834 true))

(assert (= (and start!137834 res!1081410) b!1582838))

(assert (= (and b!1582838 res!1081408) b!1582837))

(assert (= (and b!1582837 res!1081412) b!1582833))

(assert (= (and b!1582833 res!1081409) b!1582835))

(assert (= (and b!1582835 res!1081411) b!1582836))

(assert (= (and start!137834 (is-Cons!37055 l!1065)) b!1582834))

(declare-fun m!1453031 () Bool)

(assert (=> start!137834 m!1453031))

(declare-fun m!1453033 () Bool)

(assert (=> b!1582833 m!1453033))

(declare-fun m!1453035 () Bool)

(assert (=> b!1582838 m!1453035))

(declare-fun m!1453037 () Bool)

(assert (=> b!1582836 m!1453037))

(declare-fun m!1453039 () Bool)

(assert (=> b!1582836 m!1453039))

(declare-fun m!1453041 () Bool)

(assert (=> b!1582835 m!1453041))

(push 1)

(assert (not start!137834))

(assert (not b!1582833))

(assert (not b!1582834))

(assert (not b!1582836))

(assert (not b!1582835))

(assert (not b!1582838))

(assert tp_is_empty!39365)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167025 () Bool)

(declare-fun res!1081429 () Bool)

(declare-fun e!883494 () Bool)

(assert (=> d!167025 (=> res!1081429 e!883494)))

(assert (=> d!167025 (= res!1081429 (and (is-Cons!37055 (t!51980 l!1065)) (= (_1!12954 (h!38599 (t!51980 l!1065))) key!287)))))

(assert (=> d!167025 (= (containsKey!976 (t!51980 l!1065) key!287) e!883494)))

(declare-fun b!1582863 () Bool)

(declare-fun e!883495 () Bool)

(assert (=> b!1582863 (= e!883494 e!883495)))

(declare-fun res!1081430 () Bool)

(assert (=> b!1582863 (=> (not res!1081430) (not e!883495))))

(assert (=> b!1582863 (= res!1081430 (and (or (not (is-Cons!37055 (t!51980 l!1065))) (bvsle (_1!12954 (h!38599 (t!51980 l!1065))) key!287)) (is-Cons!37055 (t!51980 l!1065)) (bvslt (_1!12954 (h!38599 (t!51980 l!1065))) key!287)))))

(declare-fun b!1582864 () Bool)

(assert (=> b!1582864 (= e!883495 (containsKey!976 (t!51980 (t!51980 l!1065)) key!287))))

(assert (= (and d!167025 (not res!1081429)) b!1582863))

(assert (= (and b!1582863 res!1081430) b!1582864))

(declare-fun m!1453047 () Bool)

(assert (=> b!1582864 m!1453047))

(assert (=> b!1582835 d!167025))

(declare-fun d!167035 () Bool)

(declare-fun lt!677070 () Int)

(assert (=> d!167035 (>= lt!677070 0)))

(declare-fun e!883504 () Int)

(assert (=> d!167035 (= lt!677070 e!883504)))

(declare-fun c!146621 () Bool)

(assert (=> d!167035 (= c!146621 (is-Nil!37056 (t!51980 l!1065)))))

(assert (=> d!167035 (= (ListPrimitiveSize!210 (t!51980 l!1065)) lt!677070)))

(declare-fun b!1582879 () Bool)

(assert (=> b!1582879 (= e!883504 0)))

(declare-fun b!1582880 () Bool)

(assert (=> b!1582880 (= e!883504 (+ 1 (ListPrimitiveSize!210 (t!51980 (t!51980 l!1065)))))))

(assert (= (and d!167035 c!146621) b!1582879))

(assert (= (and d!167035 (not c!146621)) b!1582880))

(declare-fun m!1453053 () Bool)

(assert (=> b!1582880 m!1453053))

(assert (=> b!1582836 d!167035))

(declare-fun d!167043 () Bool)

(declare-fun lt!677071 () Int)

(assert (=> d!167043 (>= lt!677071 0)))

(declare-fun e!883509 () Int)

(assert (=> d!167043 (= lt!677071 e!883509)))

(declare-fun c!146622 () Bool)

(assert (=> d!167043 (= c!146622 (is-Nil!37056 l!1065))))

(assert (=> d!167043 (= (ListPrimitiveSize!210 l!1065) lt!677071)))

(declare-fun b!1582883 () Bool)

(assert (=> b!1582883 (= e!883509 0)))

(declare-fun b!1582884 () Bool)

(assert (=> b!1582884 (= e!883509 (+ 1 (ListPrimitiveSize!210 (t!51980 l!1065))))))

(assert (= (and d!167043 c!146622) b!1582883))

(assert (= (and d!167043 (not c!146622)) b!1582884))

(assert (=> b!1582884 m!1453037))

(assert (=> b!1582836 d!167043))

(declare-fun d!167045 () Bool)

(declare-fun res!1081455 () Bool)

(declare-fun e!883531 () Bool)

(assert (=> d!167045 (=> res!1081455 e!883531)))

(assert (=> d!167045 (= res!1081455 (or (is-Nil!37056 l!1065) (is-Nil!37056 (t!51980 l!1065))))))

(assert (=> d!167045 (= (isStrictlySorted!1130 l!1065) e!883531)))

(declare-fun b!1582910 () Bool)

(declare-fun e!883532 () Bool)

(assert (=> b!1582910 (= e!883531 e!883532)))

(declare-fun res!1081456 () Bool)

(assert (=> b!1582910 (=> (not res!1081456) (not e!883532))))

(assert (=> b!1582910 (= res!1081456 (bvslt (_1!12954 (h!38599 l!1065)) (_1!12954 (h!38599 (t!51980 l!1065)))))))

(declare-fun b!1582911 () Bool)

(assert (=> b!1582911 (= e!883532 (isStrictlySorted!1130 (t!51980 l!1065)))))

(assert (= (and d!167045 (not res!1081455)) b!1582910))

(assert (= (and b!1582910 res!1081456) b!1582911))

(assert (=> b!1582911 m!1453033))

(assert (=> start!137834 d!167045))

(declare-fun d!167053 () Bool)

(declare-fun res!1081457 () Bool)

(declare-fun e!883535 () Bool)

(assert (=> d!167053 (=> res!1081457 e!883535)))

(assert (=> d!167053 (= res!1081457 (and (is-Cons!37055 l!1065) (= (_1!12954 (h!38599 l!1065)) key!287)))))

(assert (=> d!167053 (= (containsKey!976 l!1065 key!287) e!883535)))

(declare-fun b!1582916 () Bool)

(declare-fun e!883536 () Bool)

(assert (=> b!1582916 (= e!883535 e!883536)))

(declare-fun res!1081458 () Bool)

(assert (=> b!1582916 (=> (not res!1081458) (not e!883536))))

(assert (=> b!1582916 (= res!1081458 (and (or (not (is-Cons!37055 l!1065)) (bvsle (_1!12954 (h!38599 l!1065)) key!287)) (is-Cons!37055 l!1065) (bvslt (_1!12954 (h!38599 l!1065)) key!287)))))

(declare-fun b!1582917 () Bool)

(assert (=> b!1582917 (= e!883536 (containsKey!976 (t!51980 l!1065) key!287))))

(assert (= (and d!167053 (not res!1081457)) b!1582916))

(assert (= (and b!1582916 res!1081458) b!1582917))

(assert (=> b!1582917 m!1453041))

(assert (=> b!1582838 d!167053))

(declare-fun d!167055 () Bool)

(declare-fun res!1081459 () Bool)

(declare-fun e!883538 () Bool)

(assert (=> d!167055 (=> res!1081459 e!883538)))

(assert (=> d!167055 (= res!1081459 (or (is-Nil!37056 (t!51980 l!1065)) (is-Nil!37056 (t!51980 (t!51980 l!1065)))))))

(assert (=> d!167055 (= (isStrictlySorted!1130 (t!51980 l!1065)) e!883538)))

(declare-fun b!1582919 () Bool)

(declare-fun e!883539 () Bool)

(assert (=> b!1582919 (= e!883538 e!883539)))

(declare-fun res!1081460 () Bool)

(assert (=> b!1582919 (=> (not res!1081460) (not e!883539))))

