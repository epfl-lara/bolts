; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137790 () Bool)

(assert start!137790)

(declare-fun res!1081241 () Bool)

(declare-fun e!883310 () Bool)

(assert (=> start!137790 (=> (not res!1081241) (not e!883310))))

(declare-datatypes ((B!2818 0))(
  ( (B!2819 (val!19771 Int)) )
))
(declare-datatypes ((tuple2!25874 0))(
  ( (tuple2!25875 (_1!12947 (_ BitVec 64)) (_2!12947 B!2818)) )
))
(declare-datatypes ((List!37052 0))(
  ( (Nil!37049) (Cons!37048 (h!38592 tuple2!25874) (t!51973 List!37052)) )
))
(declare-fun l!1065 () List!37052)

(declare-fun isStrictlySorted!1123 (List!37052) Bool)

(assert (=> start!137790 (= res!1081241 (isStrictlySorted!1123 l!1065))))

(assert (=> start!137790 e!883310))

(declare-fun e!883311 () Bool)

(assert (=> start!137790 e!883311))

(assert (=> start!137790 true))

(declare-fun b!1582596 () Bool)

(declare-fun res!1081240 () Bool)

(assert (=> b!1582596 (=> (not res!1081240) (not e!883310))))

(declare-fun key!287 () (_ BitVec 64))

(declare-fun containsKey!969 (List!37052 (_ BitVec 64)) Bool)

(assert (=> b!1582596 (= res!1081240 (containsKey!969 l!1065 key!287))))

(declare-fun b!1582597 () Bool)

(declare-fun ListPrimitiveSize!206 (List!37052) Int)

(assert (=> b!1582597 (= e!883310 (< (ListPrimitiveSize!206 l!1065) 0))))

(declare-fun b!1582598 () Bool)

(declare-fun tp_is_empty!39351 () Bool)

(declare-fun tp!114844 () Bool)

(assert (=> b!1582598 (= e!883311 (and tp_is_empty!39351 tp!114844))))

(assert (= (and start!137790 res!1081241) b!1582596))

(assert (= (and b!1582596 res!1081240) b!1582597))

(get-info :version)

(assert (= (and start!137790 ((_ is Cons!37048) l!1065)) b!1582598))

(declare-fun m!1452941 () Bool)

(assert (=> start!137790 m!1452941))

(declare-fun m!1452943 () Bool)

(assert (=> b!1582596 m!1452943))

(declare-fun m!1452945 () Bool)

(assert (=> b!1582597 m!1452945))

(check-sat tp_is_empty!39351 (not b!1582596) (not b!1582597) (not start!137790) (not b!1582598))
(check-sat)
(get-model)

(declare-fun d!166975 () Bool)

(declare-fun res!1081260 () Bool)

(declare-fun e!883330 () Bool)

(assert (=> d!166975 (=> res!1081260 e!883330)))

(assert (=> d!166975 (= res!1081260 (and ((_ is Cons!37048) l!1065) (= (_1!12947 (h!38592 l!1065)) key!287)))))

(assert (=> d!166975 (= (containsKey!969 l!1065 key!287) e!883330)))

(declare-fun b!1582618 () Bool)

(declare-fun e!883331 () Bool)

(assert (=> b!1582618 (= e!883330 e!883331)))

(declare-fun res!1081261 () Bool)

(assert (=> b!1582618 (=> (not res!1081261) (not e!883331))))

(assert (=> b!1582618 (= res!1081261 (and (or (not ((_ is Cons!37048) l!1065)) (bvsle (_1!12947 (h!38592 l!1065)) key!287)) ((_ is Cons!37048) l!1065) (bvslt (_1!12947 (h!38592 l!1065)) key!287)))))

(declare-fun b!1582619 () Bool)

(assert (=> b!1582619 (= e!883331 (containsKey!969 (t!51973 l!1065) key!287))))

(assert (= (and d!166975 (not res!1081260)) b!1582618))

(assert (= (and b!1582618 res!1081261) b!1582619))

(declare-fun m!1452953 () Bool)

(assert (=> b!1582619 m!1452953))

(assert (=> b!1582596 d!166975))

(declare-fun d!166981 () Bool)

(declare-fun lt!677053 () Int)

(assert (=> d!166981 (>= lt!677053 0)))

(declare-fun e!883338 () Int)

(assert (=> d!166981 (= lt!677053 e!883338)))

(declare-fun c!146604 () Bool)

(assert (=> d!166981 (= c!146604 ((_ is Nil!37049) l!1065))))

(assert (=> d!166981 (= (ListPrimitiveSize!206 l!1065) lt!677053)))

(declare-fun b!1582630 () Bool)

(assert (=> b!1582630 (= e!883338 0)))

(declare-fun b!1582631 () Bool)

(assert (=> b!1582631 (= e!883338 (+ 1 (ListPrimitiveSize!206 (t!51973 l!1065))))))

(assert (= (and d!166981 c!146604) b!1582630))

(assert (= (and d!166981 (not c!146604)) b!1582631))

(declare-fun m!1452959 () Bool)

(assert (=> b!1582631 m!1452959))

(assert (=> b!1582597 d!166981))

(declare-fun d!166987 () Bool)

(declare-fun res!1081274 () Bool)

(declare-fun e!883349 () Bool)

(assert (=> d!166987 (=> res!1081274 e!883349)))

(assert (=> d!166987 (= res!1081274 (or ((_ is Nil!37049) l!1065) ((_ is Nil!37049) (t!51973 l!1065))))))

(assert (=> d!166987 (= (isStrictlySorted!1123 l!1065) e!883349)))

(declare-fun b!1582644 () Bool)

(declare-fun e!883350 () Bool)

(assert (=> b!1582644 (= e!883349 e!883350)))

(declare-fun res!1081275 () Bool)

(assert (=> b!1582644 (=> (not res!1081275) (not e!883350))))

(assert (=> b!1582644 (= res!1081275 (bvslt (_1!12947 (h!38592 l!1065)) (_1!12947 (h!38592 (t!51973 l!1065)))))))

(declare-fun b!1582645 () Bool)

(assert (=> b!1582645 (= e!883350 (isStrictlySorted!1123 (t!51973 l!1065)))))

(assert (= (and d!166987 (not res!1081274)) b!1582644))

(assert (= (and b!1582644 res!1081275) b!1582645))

(declare-fun m!1452961 () Bool)

(assert (=> b!1582645 m!1452961))

(assert (=> start!137790 d!166987))

(declare-fun b!1582652 () Bool)

(declare-fun e!883354 () Bool)

(declare-fun tp!114850 () Bool)

(assert (=> b!1582652 (= e!883354 (and tp_is_empty!39351 tp!114850))))

(assert (=> b!1582598 (= tp!114844 e!883354)))

(assert (= (and b!1582598 ((_ is Cons!37048) (t!51973 l!1065))) b!1582652))

(check-sat tp_is_empty!39351 (not b!1582619) (not b!1582645) (not b!1582652) (not b!1582631))
(check-sat)
