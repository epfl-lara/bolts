; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103604 () Bool)

(assert start!103604)

(declare-fun res!827882 () Bool)

(declare-fun e!703283 () Bool)

(assert (=> start!103604 (=> (not res!827882) (not e!703283))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103604 (= res!827882 (not (= key1!25 key2!15)))))

(assert (=> start!103604 e!703283))

(assert (=> start!103604 true))

(declare-fun e!703282 () Bool)

(assert (=> start!103604 e!703282))

(declare-fun tp_is_empty!31215 () Bool)

(assert (=> start!103604 tp_is_empty!31215))

(declare-fun b!1240703 () Bool)

(declare-fun res!827881 () Bool)

(assert (=> b!1240703 (=> (not res!827881) (not e!703283))))

(declare-datatypes ((B!1816 0))(
  ( (B!1817 (val!15670 Int)) )
))
(declare-datatypes ((tuple2!20368 0))(
  ( (tuple2!20369 (_1!10194 (_ BitVec 64)) (_2!10194 B!1816)) )
))
(declare-datatypes ((List!27499 0))(
  ( (Nil!27496) (Cons!27495 (h!28704 tuple2!20368) (t!40969 List!27499)) )
))
(declare-fun l!644 () List!27499)

(declare-fun isStrictlySorted!733 (List!27499) Bool)

(assert (=> b!1240703 (= res!827881 (isStrictlySorted!733 l!644))))

(declare-fun b!1240704 () Bool)

(declare-fun res!827884 () Bool)

(assert (=> b!1240704 (=> (not res!827884) (not e!703283))))

(assert (=> b!1240704 (= res!827884 (isStrictlySorted!733 (t!40969 l!644)))))

(declare-fun b!1240705 () Bool)

(declare-fun tp!92577 () Bool)

(assert (=> b!1240705 (= e!703282 (and tp_is_empty!31215 tp!92577))))

(declare-fun b!1240706 () Bool)

(assert (=> b!1240706 (= e!703283 (not true))))

(declare-fun v1!20 () B!1816)

(declare-fun insertStrictlySorted!423 (List!27499 (_ BitVec 64) B!1816) List!27499)

(declare-fun removeStrictlySorted!117 (List!27499 (_ BitVec 64)) List!27499)

(assert (=> b!1240706 (= (insertStrictlySorted!423 (removeStrictlySorted!117 (t!40969 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!117 (insertStrictlySorted!423 (t!40969 l!644) key1!25 v1!20) key2!15))))

(declare-datatypes ((Unit!41181 0))(
  ( (Unit!41182) )
))
(declare-fun lt!561976 () Unit!41181)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!5 (List!27499 (_ BitVec 64) B!1816 (_ BitVec 64)) Unit!41181)

(assert (=> b!1240706 (= lt!561976 (lemmaInsertAndRemoveStrictlySortedCommutative!5 (t!40969 l!644) key1!25 v1!20 key2!15))))

(declare-fun b!1240707 () Bool)

(declare-fun res!827883 () Bool)

(assert (=> b!1240707 (=> (not res!827883) (not e!703283))))

(get-info :version)

(assert (=> b!1240707 (= res!827883 ((_ is Cons!27495) l!644))))

(assert (= (and start!103604 res!827882) b!1240703))

(assert (= (and b!1240703 res!827881) b!1240707))

(assert (= (and b!1240707 res!827883) b!1240704))

(assert (= (and b!1240704 res!827884) b!1240706))

(assert (= (and start!103604 ((_ is Cons!27495) l!644)) b!1240705))

(declare-fun m!1143991 () Bool)

(assert (=> b!1240703 m!1143991))

(declare-fun m!1143993 () Bool)

(assert (=> b!1240704 m!1143993))

(declare-fun m!1143995 () Bool)

(assert (=> b!1240706 m!1143995))

(declare-fun m!1143997 () Bool)

(assert (=> b!1240706 m!1143997))

(assert (=> b!1240706 m!1143995))

(declare-fun m!1143999 () Bool)

(assert (=> b!1240706 m!1143999))

(declare-fun m!1144001 () Bool)

(assert (=> b!1240706 m!1144001))

(assert (=> b!1240706 m!1143999))

(declare-fun m!1144003 () Bool)

(assert (=> b!1240706 m!1144003))

(check-sat (not b!1240705) (not b!1240706) (not b!1240703) tp_is_empty!31215 (not b!1240704))
(check-sat)
