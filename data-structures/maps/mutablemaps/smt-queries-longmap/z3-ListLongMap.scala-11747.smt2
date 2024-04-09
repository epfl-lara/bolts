; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137814 () Bool)

(assert start!137814)

(declare-fun b!1582702 () Bool)

(declare-fun e!883389 () Bool)

(declare-fun tp_is_empty!39357 () Bool)

(declare-fun tp!114862 () Bool)

(assert (=> b!1582702 (= e!883389 (and tp_is_empty!39357 tp!114862))))

(declare-fun b!1582703 () Bool)

(declare-fun e!883388 () Bool)

(declare-datatypes ((B!2824 0))(
  ( (B!2825 (val!19774 Int)) )
))
(declare-datatypes ((tuple2!25880 0))(
  ( (tuple2!25881 (_1!12950 (_ BitVec 64)) (_2!12950 B!2824)) )
))
(declare-datatypes ((List!37055 0))(
  ( (Nil!37052) (Cons!37051 (h!38595 tuple2!25880) (t!51976 List!37055)) )
))
(declare-fun l!1065 () List!37055)

(declare-fun key!287 () (_ BitVec 64))

(declare-fun containsKey!972 (List!37055 (_ BitVec 64)) Bool)

(assert (=> b!1582703 (= e!883388 (not (containsKey!972 (t!51976 l!1065) key!287)))))

(declare-fun b!1582704 () Bool)

(declare-fun res!1081307 () Bool)

(declare-fun e!883387 () Bool)

(assert (=> b!1582704 (=> (not res!1081307) (not e!883387))))

(assert (=> b!1582704 (= res!1081307 (containsKey!972 l!1065 key!287))))

(declare-fun b!1582705 () Bool)

(assert (=> b!1582705 (= e!883387 e!883388)))

(declare-fun res!1081305 () Bool)

(assert (=> b!1582705 (=> res!1081305 e!883388)))

(declare-fun isStrictlySorted!1126 (List!37055) Bool)

(assert (=> b!1582705 (= res!1081305 (not (isStrictlySorted!1126 (t!51976 l!1065))))))

(declare-fun b!1582706 () Bool)

(declare-fun res!1081304 () Bool)

(assert (=> b!1582706 (=> (not res!1081304) (not e!883387))))

(get-info :version)

(assert (=> b!1582706 (= res!1081304 (and ((_ is Cons!37051) l!1065) (not (= (_1!12950 (h!38595 l!1065)) key!287))))))

(declare-fun res!1081306 () Bool)

(assert (=> start!137814 (=> (not res!1081306) (not e!883387))))

(assert (=> start!137814 (= res!1081306 (isStrictlySorted!1126 l!1065))))

(assert (=> start!137814 e!883387))

(assert (=> start!137814 e!883389))

(assert (=> start!137814 true))

(assert (= (and start!137814 res!1081306) b!1582704))

(assert (= (and b!1582704 res!1081307) b!1582706))

(assert (= (and b!1582706 res!1081304) b!1582705))

(assert (= (and b!1582705 (not res!1081305)) b!1582703))

(assert (= (and start!137814 ((_ is Cons!37051) l!1065)) b!1582702))

(declare-fun m!1452979 () Bool)

(assert (=> b!1582703 m!1452979))

(declare-fun m!1452981 () Bool)

(assert (=> b!1582704 m!1452981))

(declare-fun m!1452983 () Bool)

(assert (=> b!1582705 m!1452983))

(declare-fun m!1452985 () Bool)

(assert (=> start!137814 m!1452985))

(check-sat tp_is_empty!39357 (not b!1582703) (not start!137814) (not b!1582704) (not b!1582702) (not b!1582705))
(check-sat)
(get-model)

(declare-fun d!166995 () Bool)

(declare-fun res!1081324 () Bool)

(declare-fun e!883403 () Bool)

(assert (=> d!166995 (=> res!1081324 e!883403)))

(assert (=> d!166995 (= res!1081324 (and ((_ is Cons!37051) (t!51976 l!1065)) (= (_1!12950 (h!38595 (t!51976 l!1065))) key!287)))))

(assert (=> d!166995 (= (containsKey!972 (t!51976 l!1065) key!287) e!883403)))

(declare-fun b!1582726 () Bool)

(declare-fun e!883404 () Bool)

(assert (=> b!1582726 (= e!883403 e!883404)))

(declare-fun res!1081325 () Bool)

(assert (=> b!1582726 (=> (not res!1081325) (not e!883404))))

(assert (=> b!1582726 (= res!1081325 (and (or (not ((_ is Cons!37051) (t!51976 l!1065))) (bvsle (_1!12950 (h!38595 (t!51976 l!1065))) key!287)) ((_ is Cons!37051) (t!51976 l!1065)) (bvslt (_1!12950 (h!38595 (t!51976 l!1065))) key!287)))))

(declare-fun b!1582727 () Bool)

(assert (=> b!1582727 (= e!883404 (containsKey!972 (t!51976 (t!51976 l!1065)) key!287))))

(assert (= (and d!166995 (not res!1081324)) b!1582726))

(assert (= (and b!1582726 res!1081325) b!1582727))

(declare-fun m!1452995 () Bool)

(assert (=> b!1582727 m!1452995))

(assert (=> b!1582703 d!166995))

(declare-fun d!167001 () Bool)

(declare-fun res!1081326 () Bool)

(declare-fun e!883405 () Bool)

(assert (=> d!167001 (=> res!1081326 e!883405)))

(assert (=> d!167001 (= res!1081326 (and ((_ is Cons!37051) l!1065) (= (_1!12950 (h!38595 l!1065)) key!287)))))

(assert (=> d!167001 (= (containsKey!972 l!1065 key!287) e!883405)))

(declare-fun b!1582728 () Bool)

(declare-fun e!883406 () Bool)

(assert (=> b!1582728 (= e!883405 e!883406)))

(declare-fun res!1081327 () Bool)

(assert (=> b!1582728 (=> (not res!1081327) (not e!883406))))

(assert (=> b!1582728 (= res!1081327 (and (or (not ((_ is Cons!37051) l!1065)) (bvsle (_1!12950 (h!38595 l!1065)) key!287)) ((_ is Cons!37051) l!1065) (bvslt (_1!12950 (h!38595 l!1065)) key!287)))))

(declare-fun b!1582729 () Bool)

(assert (=> b!1582729 (= e!883406 (containsKey!972 (t!51976 l!1065) key!287))))

(assert (= (and d!167001 (not res!1081326)) b!1582728))

(assert (= (and b!1582728 res!1081327) b!1582729))

(assert (=> b!1582729 m!1452979))

(assert (=> b!1582704 d!167001))

(declare-fun d!167003 () Bool)

(declare-fun res!1081342 () Bool)

(declare-fun e!883421 () Bool)

(assert (=> d!167003 (=> res!1081342 e!883421)))

(assert (=> d!167003 (= res!1081342 (or ((_ is Nil!37052) (t!51976 l!1065)) ((_ is Nil!37052) (t!51976 (t!51976 l!1065)))))))

(assert (=> d!167003 (= (isStrictlySorted!1126 (t!51976 l!1065)) e!883421)))

(declare-fun b!1582744 () Bool)

(declare-fun e!883422 () Bool)

(assert (=> b!1582744 (= e!883421 e!883422)))

(declare-fun res!1081343 () Bool)

(assert (=> b!1582744 (=> (not res!1081343) (not e!883422))))

(assert (=> b!1582744 (= res!1081343 (bvslt (_1!12950 (h!38595 (t!51976 l!1065))) (_1!12950 (h!38595 (t!51976 (t!51976 l!1065))))))))

(declare-fun b!1582745 () Bool)

(assert (=> b!1582745 (= e!883422 (isStrictlySorted!1126 (t!51976 (t!51976 l!1065))))))

(assert (= (and d!167003 (not res!1081342)) b!1582744))

(assert (= (and b!1582744 res!1081343) b!1582745))

(declare-fun m!1452997 () Bool)

(assert (=> b!1582745 m!1452997))

(assert (=> b!1582705 d!167003))

(declare-fun d!167007 () Bool)

(declare-fun res!1081346 () Bool)

(declare-fun e!883425 () Bool)

(assert (=> d!167007 (=> res!1081346 e!883425)))

(assert (=> d!167007 (= res!1081346 (or ((_ is Nil!37052) l!1065) ((_ is Nil!37052) (t!51976 l!1065))))))

(assert (=> d!167007 (= (isStrictlySorted!1126 l!1065) e!883425)))

(declare-fun b!1582748 () Bool)

(declare-fun e!883426 () Bool)

(assert (=> b!1582748 (= e!883425 e!883426)))

(declare-fun res!1081347 () Bool)

(assert (=> b!1582748 (=> (not res!1081347) (not e!883426))))

(assert (=> b!1582748 (= res!1081347 (bvslt (_1!12950 (h!38595 l!1065)) (_1!12950 (h!38595 (t!51976 l!1065)))))))

(declare-fun b!1582749 () Bool)

(assert (=> b!1582749 (= e!883426 (isStrictlySorted!1126 (t!51976 l!1065)))))

(assert (= (and d!167007 (not res!1081346)) b!1582748))

(assert (= (and b!1582748 res!1081347) b!1582749))

(assert (=> b!1582749 m!1452983))

(assert (=> start!137814 d!167007))

(declare-fun b!1582760 () Bool)

(declare-fun e!883435 () Bool)

(declare-fun tp!114868 () Bool)

(assert (=> b!1582760 (= e!883435 (and tp_is_empty!39357 tp!114868))))

(assert (=> b!1582702 (= tp!114862 e!883435)))

(assert (= (and b!1582702 ((_ is Cons!37051) (t!51976 l!1065))) b!1582760))

(check-sat tp_is_empty!39357 (not b!1582749) (not b!1582745) (not b!1582760) (not b!1582727) (not b!1582729))
(check-sat)
