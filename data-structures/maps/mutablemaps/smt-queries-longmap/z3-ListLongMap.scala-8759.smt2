; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106386 () Bool)

(assert start!106386)

(declare-fun b!1264908 () Bool)

(declare-fun res!842374 () Bool)

(declare-fun e!720369 () Bool)

(assert (=> b!1264908 (=> (not res!842374) (not e!720369))))

(declare-datatypes ((B!1948 0))(
  ( (B!1949 (val!16309 Int)) )
))
(declare-datatypes ((tuple2!21286 0))(
  ( (tuple2!21287 (_1!10653 (_ BitVec 64)) (_2!10653 B!1948)) )
))
(declare-datatypes ((List!28476 0))(
  ( (Nil!28473) (Cons!28472 (h!29681 tuple2!21286) (t!42004 List!28476)) )
))
(declare-fun l!706 () List!28476)

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!636 (List!28476 (_ BitVec 64)) Bool)

(assert (=> b!1264908 (= res!842374 (not (containsKey!636 l!706 key1!31)))))

(declare-fun b!1264909 () Bool)

(declare-fun res!842377 () Bool)

(assert (=> b!1264909 (=> (not res!842377) (not e!720369))))

(assert (=> b!1264909 (= res!842377 (not (containsKey!636 (t!42004 l!706) key1!31)))))

(declare-fun b!1264910 () Bool)

(declare-fun res!842375 () Bool)

(assert (=> b!1264910 (=> (not res!842375) (not e!720369))))

(get-info :version)

(assert (=> b!1264910 (= res!842375 ((_ is Cons!28472) l!706))))

(declare-fun res!842376 () Bool)

(assert (=> start!106386 (=> (not res!842376) (not e!720369))))

(declare-fun isStrictlySorted!775 (List!28476) Bool)

(assert (=> start!106386 (= res!842376 (isStrictlySorted!775 l!706))))

(assert (=> start!106386 e!720369))

(declare-fun e!720370 () Bool)

(assert (=> start!106386 e!720370))

(assert (=> start!106386 true))

(declare-fun tp_is_empty!32481 () Bool)

(assert (=> start!106386 tp_is_empty!32481))

(declare-fun b!1264911 () Bool)

(declare-fun res!842373 () Bool)

(assert (=> b!1264911 (=> (not res!842373) (not e!720369))))

(assert (=> b!1264911 (= res!842373 (isStrictlySorted!775 (t!42004 l!706)))))

(declare-fun b!1264912 () Bool)

(declare-fun tp!96288 () Bool)

(assert (=> b!1264912 (= e!720370 (and tp_is_empty!32481 tp!96288))))

(declare-fun b!1264913 () Bool)

(assert (=> b!1264913 (= e!720369 (not true))))

(declare-fun v1!26 () B!1948)

(declare-fun removeStrictlySorted!151 (List!28476 (_ BitVec 64)) List!28476)

(declare-fun insertStrictlySorted!457 (List!28476 (_ BitVec 64) B!1948) List!28476)

(assert (=> b!1264913 (= (removeStrictlySorted!151 (insertStrictlySorted!457 (t!42004 l!706) key1!31 v1!26) key1!31) (t!42004 l!706))))

(declare-datatypes ((Unit!42121 0))(
  ( (Unit!42122) )
))
(declare-fun lt!573935 () Unit!42121)

(declare-fun lemmaInsertStrictlySortedThenRemoveIsSame!5 (List!28476 (_ BitVec 64) B!1948) Unit!42121)

(assert (=> b!1264913 (= lt!573935 (lemmaInsertStrictlySortedThenRemoveIsSame!5 (t!42004 l!706) key1!31 v1!26))))

(assert (= (and start!106386 res!842376) b!1264908))

(assert (= (and b!1264908 res!842374) b!1264910))

(assert (= (and b!1264910 res!842375) b!1264911))

(assert (= (and b!1264911 res!842373) b!1264909))

(assert (= (and b!1264909 res!842377) b!1264913))

(assert (= (and start!106386 ((_ is Cons!28472) l!706)) b!1264912))

(declare-fun m!1165331 () Bool)

(assert (=> b!1264909 m!1165331))

(declare-fun m!1165333 () Bool)

(assert (=> b!1264908 m!1165333))

(declare-fun m!1165335 () Bool)

(assert (=> b!1264911 m!1165335))

(declare-fun m!1165337 () Bool)

(assert (=> start!106386 m!1165337))

(declare-fun m!1165339 () Bool)

(assert (=> b!1264913 m!1165339))

(assert (=> b!1264913 m!1165339))

(declare-fun m!1165341 () Bool)

(assert (=> b!1264913 m!1165341))

(declare-fun m!1165343 () Bool)

(assert (=> b!1264913 m!1165343))

(check-sat (not b!1264911) tp_is_empty!32481 (not start!106386) (not b!1264912) (not b!1264909) (not b!1264908) (not b!1264913))
(check-sat)
