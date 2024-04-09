; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137830 () Bool)

(assert start!137830)

(declare-fun b!1582797 () Bool)

(declare-fun e!883460 () Bool)

(declare-fun tp_is_empty!39361 () Bool)

(declare-fun tp!114877 () Bool)

(assert (=> b!1582797 (= e!883460 (and tp_is_empty!39361 tp!114877))))

(declare-fun b!1582798 () Bool)

(declare-fun res!1081379 () Bool)

(declare-fun e!883461 () Bool)

(assert (=> b!1582798 (=> (not res!1081379) (not e!883461))))

(declare-datatypes ((B!2828 0))(
  ( (B!2829 (val!19776 Int)) )
))
(declare-datatypes ((tuple2!25884 0))(
  ( (tuple2!25885 (_1!12952 (_ BitVec 64)) (_2!12952 B!2828)) )
))
(declare-datatypes ((List!37057 0))(
  ( (Nil!37054) (Cons!37053 (h!38597 tuple2!25884) (t!51978 List!37057)) )
))
(declare-fun l!1065 () List!37057)

(declare-fun key!287 () (_ BitVec 64))

(declare-fun containsKey!974 (List!37057 (_ BitVec 64)) Bool)

(assert (=> b!1582798 (= res!1081379 (containsKey!974 (t!51978 l!1065) key!287))))

(declare-fun b!1582799 () Bool)

(declare-fun res!1081380 () Bool)

(assert (=> b!1582799 (=> (not res!1081380) (not e!883461))))

(assert (=> b!1582799 (= res!1081380 (containsKey!974 l!1065 key!287))))

(declare-fun res!1081378 () Bool)

(assert (=> start!137830 (=> (not res!1081378) (not e!883461))))

(declare-fun isStrictlySorted!1128 (List!37057) Bool)

(assert (=> start!137830 (= res!1081378 (isStrictlySorted!1128 l!1065))))

(assert (=> start!137830 e!883461))

(assert (=> start!137830 e!883460))

(assert (=> start!137830 true))

(declare-fun b!1582800 () Bool)

(declare-fun res!1081381 () Bool)

(assert (=> b!1582800 (=> (not res!1081381) (not e!883461))))

(assert (=> b!1582800 (= res!1081381 (isStrictlySorted!1128 (t!51978 l!1065)))))

(declare-fun b!1582801 () Bool)

(declare-fun res!1081382 () Bool)

(assert (=> b!1582801 (=> (not res!1081382) (not e!883461))))

(assert (=> b!1582801 (= res!1081382 (and (is-Cons!37053 l!1065) (not (= (_1!12952 (h!38597 l!1065)) key!287))))))

(declare-fun b!1582802 () Bool)

(declare-fun ListPrimitiveSize!208 (List!37057) Int)

(assert (=> b!1582802 (= e!883461 (>= (ListPrimitiveSize!208 (t!51978 l!1065)) (ListPrimitiveSize!208 l!1065)))))

(assert (= (and start!137830 res!1081378) b!1582799))

(assert (= (and b!1582799 res!1081380) b!1582801))

(assert (= (and b!1582801 res!1081382) b!1582800))

(assert (= (and b!1582800 res!1081381) b!1582798))

(assert (= (and b!1582798 res!1081379) b!1582802))

(assert (= (and start!137830 (is-Cons!37053 l!1065)) b!1582797))

(declare-fun m!1453007 () Bool)

(assert (=> b!1582798 m!1453007))

(declare-fun m!1453009 () Bool)

(assert (=> b!1582799 m!1453009))

(declare-fun m!1453011 () Bool)

(assert (=> start!137830 m!1453011))

(declare-fun m!1453013 () Bool)

(assert (=> b!1582800 m!1453013))

(declare-fun m!1453015 () Bool)

(assert (=> b!1582802 m!1453015))

(declare-fun m!1453017 () Bool)

(assert (=> b!1582802 m!1453017))

(push 1)

(assert (not b!1582798))

(assert (not b!1582797))

(assert (not b!1582799))

(assert (not start!137830))

(assert (not b!1582800))

(assert (not b!1582802))

(assert tp_is_empty!39361)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167023 () Bool)

(declare-fun res!1081419 () Bool)

(declare-fun e!883484 () Bool)

(assert (=> d!167023 (=> res!1081419 e!883484)))

(assert (=> d!167023 (= res!1081419 (or (is-Nil!37054 (t!51978 l!1065)) (is-Nil!37054 (t!51978 (t!51978 l!1065)))))))

(assert (=> d!167023 (= (isStrictlySorted!1128 (t!51978 l!1065)) e!883484)))

(declare-fun b!1582853 () Bool)

(declare-fun e!883485 () Bool)

(assert (=> b!1582853 (= e!883484 e!883485)))

(declare-fun res!1081420 () Bool)

(assert (=> b!1582853 (=> (not res!1081420) (not e!883485))))

(assert (=> b!1582853 (= res!1081420 (bvslt (_1!12952 (h!38597 (t!51978 l!1065))) (_1!12952 (h!38597 (t!51978 (t!51978 l!1065))))))))

(declare-fun b!1582854 () Bool)

(assert (=> b!1582854 (= e!883485 (isStrictlySorted!1128 (t!51978 (t!51978 l!1065))))))

(assert (= (and d!167023 (not res!1081419)) b!1582853))

(assert (= (and b!1582853 res!1081420) b!1582854))

(declare-fun m!1453045 () Bool)

(assert (=> b!1582854 m!1453045))

(assert (=> b!1582800 d!167023))

(declare-fun d!167031 () Bool)

(declare-fun res!1081423 () Bool)

(declare-fun e!883488 () Bool)

(assert (=> d!167031 (=> res!1081423 e!883488)))

(assert (=> d!167031 (= res!1081423 (or (is-Nil!37054 l!1065) (is-Nil!37054 (t!51978 l!1065))))))

(assert (=> d!167031 (= (isStrictlySorted!1128 l!1065) e!883488)))

(declare-fun b!1582857 () Bool)

(declare-fun e!883489 () Bool)

(assert (=> b!1582857 (= e!883488 e!883489)))

(declare-fun res!1081424 () Bool)

(assert (=> b!1582857 (=> (not res!1081424) (not e!883489))))

(assert (=> b!1582857 (= res!1081424 (bvslt (_1!12952 (h!38597 l!1065)) (_1!12952 (h!38597 (t!51978 l!1065)))))))

(declare-fun b!1582858 () Bool)

(assert (=> b!1582858 (= e!883489 (isStrictlySorted!1128 (t!51978 l!1065)))))

(assert (= (and d!167031 (not res!1081423)) b!1582857))

(assert (= (and b!1582857 res!1081424) b!1582858))

(assert (=> b!1582858 m!1453013))

(assert (=> start!137830 d!167031))

(declare-fun d!167033 () Bool)

(declare-fun lt!677068 () Int)

(assert (=> d!167033 (>= lt!677068 0)))

(declare-fun e!883502 () Int)

(assert (=> d!167033 (= lt!677068 e!883502)))

(declare-fun c!146619 () Bool)

(assert (=> d!167033 (= c!146619 (is-Nil!37054 (t!51978 l!1065)))))

(assert (=> d!167033 (= (ListPrimitiveSize!208 (t!51978 l!1065)) lt!677068)))

(declare-fun b!1582875 () Bool)

(assert (=> b!1582875 (= e!883502 0)))

(declare-fun b!1582876 () Bool)

(assert (=> b!1582876 (= e!883502 (+ 1 (ListPrimitiveSize!208 (t!51978 (t!51978 l!1065)))))))

(assert (= (and d!167033 c!146619) b!1582875))

(assert (= (and d!167033 (not c!146619)) b!1582876))

(declare-fun m!1453051 () Bool)

(assert (=> b!1582876 m!1453051))

(assert (=> b!1582802 d!167033))

(declare-fun d!167039 () Bool)

(declare-fun lt!677069 () Int)

(assert (=> d!167039 (>= lt!677069 0)))

(declare-fun e!883503 () Int)

(assert (=> d!167039 (= lt!677069 e!883503)))

(declare-fun c!146620 () Bool)

(assert (=> d!167039 (= c!146620 (is-Nil!37054 l!1065))))

(assert (=> d!167039 (= (ListPrimitiveSize!208 l!1065) lt!677069)))

(declare-fun b!1582877 () Bool)

(assert (=> b!1582877 (= e!883503 0)))

(declare-fun b!1582878 () Bool)

(assert (=> b!1582878 (= e!883503 (+ 1 (ListPrimitiveSize!208 (t!51978 l!1065))))))

(assert (= (and d!167039 c!146620) b!1582877))

(assert (= (and d!167039 (not c!146620)) b!1582878))

(assert (=> b!1582878 m!1453015))

(assert (=> b!1582802 d!167039))

(declare-fun d!167041 () Bool)

(declare-fun res!1081451 () Bool)

(declare-fun e!883524 () Bool)

(assert (=> d!167041 (=> res!1081451 e!883524)))

(assert (=> d!167041 (= res!1081451 (and (is-Cons!37053 (t!51978 l!1065)) (= (_1!12952 (h!38597 (t!51978 l!1065))) key!287)))))

(assert (=> d!167041 (= (containsKey!974 (t!51978 l!1065) key!287) e!883524)))

(declare-fun b!1582903 () Bool)

(declare-fun e!883525 () Bool)

(assert (=> b!1582903 (= e!883524 e!883525)))

(declare-fun res!1081452 () Bool)

(assert (=> b!1582903 (=> (not res!1081452) (not e!883525))))

(assert (=> b!1582903 (= res!1081452 (and (or (not (is-Cons!37053 (t!51978 l!1065))) (bvsle (_1!12952 (h!38597 (t!51978 l!1065))) key!287)) (is-Cons!37053 (t!51978 l!1065)) (bvslt (_1!12952 (h!38597 (t!51978 l!1065))) key!287)))))

(declare-fun b!1582904 () Bool)

(assert (=> b!1582904 (= e!883525 (containsKey!974 (t!51978 (t!51978 l!1065)) key!287))))

(assert (= (and d!167041 (not res!1081451)) b!1582903))

(assert (= (and b!1582903 res!1081452) b!1582904))

(declare-fun m!1453057 () Bool)

(assert (=> b!1582904 m!1453057))

(assert (=> b!1582798 d!167041))

(declare-fun d!167051 () Bool)

(declare-fun res!1081453 () Bool)

(declare-fun e!883528 () Bool)

(assert (=> d!167051 (=> res!1081453 e!883528)))

(assert (=> d!167051 (= res!1081453 (and (is-Cons!37053 l!1065) (= (_1!12952 (h!38597 l!1065)) key!287)))))

(assert (=> d!167051 (= (containsKey!974 l!1065 key!287) e!883528)))

(declare-fun b!1582907 () Bool)

(declare-fun e!883529 () Bool)

(assert (=> b!1582907 (= e!883528 e!883529)))

(declare-fun res!1081454 () Bool)

(assert (=> b!1582907 (=> (not res!1081454) (not e!883529))))

(assert (=> b!1582907 (= res!1081454 (and (or (not (is-Cons!37053 l!1065)) (bvsle (_1!12952 (h!38597 l!1065)) key!287)) (is-Cons!37053 l!1065) (bvslt (_1!12952 (h!38597 l!1065)) key!287)))))

(declare-fun b!1582908 () Bool)

(assert (=> b!1582908 (= e!883529 (containsKey!974 (t!51978 l!1065) key!287))))

(assert (= (and d!167051 (not res!1081453)) b!1582907))

(assert (= (and b!1582907 res!1081454) b!1582908))

(assert (=> b!1582908 m!1453007))

(assert (=> b!1582799 d!167051))

(declare-fun b!1582918 () Bool)

(declare-fun e!883537 () Bool)

(declare-fun tp!114889 () Bool)

(assert (=> b!1582918 (= e!883537 (and tp_is_empty!39361 tp!114889))))

(assert (=> b!1582797 (= tp!114877 e!883537)))

(assert (= (and b!1582797 (is-Cons!37053 (t!51978 l!1065))) b!1582918))

(push 1)

(assert (not b!1582876))

(assert (not b!1582904))

(assert (not b!1582854))

(assert (not b!1582858))

(assert (not b!1582918))

(assert (not b!1582878))

(assert tp_is_empty!39361)

(assert (not b!1582908))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

