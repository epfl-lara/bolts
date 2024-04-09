; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137160 () Bool)

(assert start!137160)

(declare-fun b!1579989 () Bool)

(declare-fun e!881456 () Bool)

(declare-fun e!881454 () Bool)

(assert (=> b!1579989 (= e!881456 e!881454)))

(declare-fun res!1079430 () Bool)

(assert (=> b!1579989 (=> (not res!1079430) (not e!881454))))

(declare-datatypes ((B!2632 0))(
  ( (B!2633 (val!19678 Int)) )
))
(declare-datatypes ((tuple2!25630 0))(
  ( (tuple2!25631 (_1!12825 (_ BitVec 64)) (_2!12825 B!2632)) )
))
(declare-datatypes ((List!36959 0))(
  ( (Nil!36956) (Cons!36955 (h!38499 tuple2!25630) (t!51880 List!36959)) )
))
(declare-fun l!1390 () List!36959)

(declare-fun lt!676605 () tuple2!25630)

(declare-fun contains!10487 (List!36959 tuple2!25630) Bool)

(assert (=> b!1579989 (= res!1079430 (contains!10487 l!1390 lt!676605))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun value!194 () B!2632)

(assert (=> b!1579989 (= lt!676605 (tuple2!25631 key!405 value!194))))

(declare-fun res!1079431 () Bool)

(assert (=> start!137160 (=> (not res!1079431) (not e!881456))))

(declare-fun isStrictlySorted!1054 (List!36959) Bool)

(assert (=> start!137160 (= res!1079431 (isStrictlySorted!1054 l!1390))))

(assert (=> start!137160 e!881456))

(declare-fun e!881457 () Bool)

(assert (=> start!137160 e!881457))

(assert (=> start!137160 true))

(declare-fun tp_is_empty!39177 () Bool)

(assert (=> start!137160 tp_is_empty!39177))

(declare-fun b!1579990 () Bool)

(declare-fun e!881453 () Bool)

(assert (=> b!1579990 (= e!881454 e!881453)))

(declare-fun res!1079433 () Bool)

(assert (=> b!1579990 (=> (not res!1079433) (not e!881453))))

(declare-fun e!881455 () Bool)

(assert (=> b!1579990 (= res!1079433 e!881455)))

(declare-fun res!1079434 () Bool)

(assert (=> b!1579990 (=> res!1079434 e!881455)))

(declare-datatypes ((tuple2!25632 0))(
  ( (tuple2!25633 (_1!12826 tuple2!25630) (_2!12826 List!36959)) )
))
(declare-datatypes ((Option!892 0))(
  ( (Some!891 (v!22385 tuple2!25632)) (None!890) )
))
(declare-fun lt!676604 () Option!892)

(declare-fun isEmpty!1160 (Option!892) Bool)

(assert (=> b!1579990 (= res!1079434 (isEmpty!1160 lt!676604))))

(declare-fun unapply!74 (List!36959) Option!892)

(assert (=> b!1579990 (= lt!676604 (unapply!74 l!1390))))

(declare-fun b!1579991 () Bool)

(declare-fun res!1079428 () Bool)

(assert (=> b!1579991 (=> (not res!1079428) (not e!881453))))

(declare-fun containsKey!900 (List!36959 (_ BitVec 64)) Bool)

(assert (=> b!1579991 (= res!1079428 (not (containsKey!900 (t!51880 l!1390) key!405)))))

(declare-fun b!1579992 () Bool)

(assert (=> b!1579992 (= e!881453 (not true))))

(assert (=> b!1579992 (not (contains!10487 (t!51880 l!1390) lt!676605))))

(declare-datatypes ((Unit!52174 0))(
  ( (Unit!52175) )
))
(declare-fun lt!676606 () Unit!52174)

(declare-fun lemmaNotContainsKeyThenNotContainsTuple!2 (List!36959 (_ BitVec 64) B!2632) Unit!52174)

(assert (=> b!1579992 (= lt!676606 (lemmaNotContainsKeyThenNotContainsTuple!2 (t!51880 l!1390) key!405 value!194))))

(declare-fun b!1579993 () Bool)

(declare-fun res!1079432 () Bool)

(assert (=> b!1579993 (=> (not res!1079432) (not e!881453))))

(get-info :version)

(assert (=> b!1579993 (= res!1079432 (and ((_ is Cons!36955) l!1390) (= (_1!12825 (h!38499 l!1390)) key!405)))))

(declare-fun b!1579994 () Bool)

(declare-fun res!1079429 () Bool)

(assert (=> b!1579994 (=> (not res!1079429) (not e!881453))))

(assert (=> b!1579994 (= res!1079429 (isStrictlySorted!1054 (t!51880 l!1390)))))

(declare-fun b!1579995 () Bool)

(declare-fun get!26801 (Option!892) tuple2!25632)

(assert (=> b!1579995 (= e!881455 (not ((_ is Nil!36956) (_2!12826 (get!26801 lt!676604)))))))

(declare-fun b!1579996 () Bool)

(declare-fun res!1079435 () Bool)

(assert (=> b!1579996 (=> (not res!1079435) (not e!881456))))

(assert (=> b!1579996 (= res!1079435 (containsKey!900 l!1390 key!405))))

(declare-fun b!1579997 () Bool)

(declare-fun tp!114427 () Bool)

(assert (=> b!1579997 (= e!881457 (and tp_is_empty!39177 tp!114427))))

(assert (= (and start!137160 res!1079431) b!1579996))

(assert (= (and b!1579996 res!1079435) b!1579989))

(assert (= (and b!1579989 res!1079430) b!1579990))

(assert (= (and b!1579990 (not res!1079434)) b!1579995))

(assert (= (and b!1579990 res!1079433) b!1579993))

(assert (= (and b!1579993 res!1079432) b!1579994))

(assert (= (and b!1579994 res!1079429) b!1579991))

(assert (= (and b!1579991 res!1079428) b!1579992))

(assert (= (and start!137160 ((_ is Cons!36955) l!1390)) b!1579997))

(declare-fun m!1451551 () Bool)

(assert (=> b!1579989 m!1451551))

(declare-fun m!1451553 () Bool)

(assert (=> b!1579994 m!1451553))

(declare-fun m!1451555 () Bool)

(assert (=> b!1579990 m!1451555))

(declare-fun m!1451557 () Bool)

(assert (=> b!1579990 m!1451557))

(declare-fun m!1451559 () Bool)

(assert (=> b!1579991 m!1451559))

(declare-fun m!1451561 () Bool)

(assert (=> b!1579995 m!1451561))

(declare-fun m!1451563 () Bool)

(assert (=> b!1579992 m!1451563))

(declare-fun m!1451565 () Bool)

(assert (=> b!1579992 m!1451565))

(declare-fun m!1451567 () Bool)

(assert (=> start!137160 m!1451567))

(declare-fun m!1451569 () Bool)

(assert (=> b!1579996 m!1451569))

(check-sat (not b!1579990) (not b!1579989) (not b!1579991) (not b!1579997) (not b!1579992) (not b!1579994) tp_is_empty!39177 (not b!1579995) (not start!137160) (not b!1579996))
(check-sat)
