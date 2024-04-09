; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132882 () Bool)

(assert start!132882)

(declare-fun res!1064592 () Bool)

(declare-fun e!866550 () Bool)

(assert (=> start!132882 (=> (not res!1064592) (not e!866550))))

(declare-datatypes ((B!2332 0))(
  ( (B!2333 (val!19252 Int)) )
))
(declare-datatypes ((tuple2!25020 0))(
  ( (tuple2!25021 (_1!12520 (_ BitVec 64)) (_2!12520 B!2332)) )
))
(declare-datatypes ((List!36432 0))(
  ( (Nil!36429) (Cons!36428 (h!37875 tuple2!25020) (t!51160 List!36432)) )
))
(declare-fun l!1177 () List!36432)

(declare-fun isStrictlySorted!936 (List!36432) Bool)

(assert (=> start!132882 (= res!1064592 (isStrictlySorted!936 l!1177))))

(assert (=> start!132882 e!866550))

(declare-fun e!866549 () Bool)

(assert (=> start!132882 e!866549))

(assert (=> start!132882 true))

(declare-fun b!1555895 () Bool)

(declare-fun res!1064591 () Bool)

(assert (=> b!1555895 (=> (not res!1064591) (not e!866550))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(assert (=> b!1555895 (= res!1064591 (not (= newKey!105 otherKey!50)))))

(declare-fun b!1555896 () Bool)

(declare-fun ListPrimitiveSize!176 (List!36432) Int)

(assert (=> b!1555896 (= e!866550 (< (ListPrimitiveSize!176 l!1177) 0))))

(declare-fun b!1555897 () Bool)

(declare-fun tp_is_empty!38343 () Bool)

(declare-fun tp!112375 () Bool)

(assert (=> b!1555897 (= e!866549 (and tp_is_empty!38343 tp!112375))))

(assert (= (and start!132882 res!1064592) b!1555895))

(assert (= (and b!1555895 res!1064591) b!1555896))

(get-info :version)

(assert (= (and start!132882 ((_ is Cons!36428) l!1177)) b!1555897))

(declare-fun m!1433677 () Bool)

(assert (=> start!132882 m!1433677))

(declare-fun m!1433679 () Bool)

(assert (=> b!1555896 m!1433679))

(check-sat (not start!132882) (not b!1555896) (not b!1555897) tp_is_empty!38343)
(check-sat)
(get-model)

(declare-fun d!161969 () Bool)

(declare-fun res!1064603 () Bool)

(declare-fun e!866567 () Bool)

(assert (=> d!161969 (=> res!1064603 e!866567)))

(assert (=> d!161969 (= res!1064603 (or ((_ is Nil!36429) l!1177) ((_ is Nil!36429) (t!51160 l!1177))))))

(assert (=> d!161969 (= (isStrictlySorted!936 l!1177) e!866567)))

(declare-fun b!1555923 () Bool)

(declare-fun e!866568 () Bool)

(assert (=> b!1555923 (= e!866567 e!866568)))

(declare-fun res!1064604 () Bool)

(assert (=> b!1555923 (=> (not res!1064604) (not e!866568))))

(assert (=> b!1555923 (= res!1064604 (bvslt (_1!12520 (h!37875 l!1177)) (_1!12520 (h!37875 (t!51160 l!1177)))))))

(declare-fun b!1555924 () Bool)

(assert (=> b!1555924 (= e!866568 (isStrictlySorted!936 (t!51160 l!1177)))))

(assert (= (and d!161969 (not res!1064603)) b!1555923))

(assert (= (and b!1555923 res!1064604) b!1555924))

(declare-fun m!1433689 () Bool)

(assert (=> b!1555924 m!1433689))

(assert (=> start!132882 d!161969))

(declare-fun d!161977 () Bool)

(declare-fun lt!670301 () Int)

(assert (=> d!161977 (>= lt!670301 0)))

(declare-fun e!866584 () Int)

(assert (=> d!161977 (= lt!670301 e!866584)))

(declare-fun c!143648 () Bool)

(assert (=> d!161977 (= c!143648 ((_ is Nil!36429) l!1177))))

(assert (=> d!161977 (= (ListPrimitiveSize!176 l!1177) lt!670301)))

(declare-fun b!1555944 () Bool)

(assert (=> b!1555944 (= e!866584 0)))

(declare-fun b!1555945 () Bool)

(assert (=> b!1555945 (= e!866584 (+ 1 (ListPrimitiveSize!176 (t!51160 l!1177))))))

(assert (= (and d!161977 c!143648) b!1555944))

(assert (= (and d!161977 (not c!143648)) b!1555945))

(declare-fun m!1433693 () Bool)

(assert (=> b!1555945 m!1433693))

(assert (=> b!1555896 d!161977))

(declare-fun b!1555956 () Bool)

(declare-fun e!866591 () Bool)

(declare-fun tp!112386 () Bool)

(assert (=> b!1555956 (= e!866591 (and tp_is_empty!38343 tp!112386))))

(assert (=> b!1555897 (= tp!112375 e!866591)))

(assert (= (and b!1555897 ((_ is Cons!36428) (t!51160 l!1177))) b!1555956))

(check-sat (not b!1555945) (not b!1555924) (not b!1555956) tp_is_empty!38343)
(check-sat)
