; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103606 () Bool)

(assert start!103606)

(declare-fun b!1240718 () Bool)

(declare-fun res!827893 () Bool)

(declare-fun e!703289 () Bool)

(assert (=> b!1240718 (=> (not res!827893) (not e!703289))))

(declare-datatypes ((B!1818 0))(
  ( (B!1819 (val!15671 Int)) )
))
(declare-datatypes ((tuple2!20370 0))(
  ( (tuple2!20371 (_1!10195 (_ BitVec 64)) (_2!10195 B!1818)) )
))
(declare-datatypes ((List!27500 0))(
  ( (Nil!27497) (Cons!27496 (h!28705 tuple2!20370) (t!40970 List!27500)) )
))
(declare-fun l!644 () List!27500)

(assert (=> b!1240718 (= res!827893 (is-Cons!27496 l!644))))

(declare-fun b!1240719 () Bool)

(declare-fun res!827894 () Bool)

(assert (=> b!1240719 (=> (not res!827894) (not e!703289))))

(declare-fun isStrictlySorted!734 (List!27500) Bool)

(assert (=> b!1240719 (= res!827894 (isStrictlySorted!734 l!644))))

(declare-fun res!827896 () Bool)

(assert (=> start!103606 (=> (not res!827896) (not e!703289))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103606 (= res!827896 (not (= key1!25 key2!15)))))

(assert (=> start!103606 e!703289))

(assert (=> start!103606 true))

(declare-fun e!703288 () Bool)

(assert (=> start!103606 e!703288))

(declare-fun tp_is_empty!31217 () Bool)

(assert (=> start!103606 tp_is_empty!31217))

(declare-fun b!1240720 () Bool)

(declare-fun res!827895 () Bool)

(assert (=> b!1240720 (=> (not res!827895) (not e!703289))))

(assert (=> b!1240720 (= res!827895 (isStrictlySorted!734 (t!40970 l!644)))))

(declare-fun b!1240721 () Bool)

(assert (=> b!1240721 (= e!703289 (not true))))

(declare-fun v1!20 () B!1818)

(declare-fun insertStrictlySorted!424 (List!27500 (_ BitVec 64) B!1818) List!27500)

(declare-fun removeStrictlySorted!118 (List!27500 (_ BitVec 64)) List!27500)

(assert (=> b!1240721 (= (insertStrictlySorted!424 (removeStrictlySorted!118 (t!40970 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!118 (insertStrictlySorted!424 (t!40970 l!644) key1!25 v1!20) key2!15))))

(declare-datatypes ((Unit!41183 0))(
  ( (Unit!41184) )
))
(declare-fun lt!561979 () Unit!41183)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!6 (List!27500 (_ BitVec 64) B!1818 (_ BitVec 64)) Unit!41183)

(assert (=> b!1240721 (= lt!561979 (lemmaInsertAndRemoveStrictlySortedCommutative!6 (t!40970 l!644) key1!25 v1!20 key2!15))))

(declare-fun b!1240722 () Bool)

(declare-fun tp!92580 () Bool)

(assert (=> b!1240722 (= e!703288 (and tp_is_empty!31217 tp!92580))))

(assert (= (and start!103606 res!827896) b!1240719))

(assert (= (and b!1240719 res!827894) b!1240718))

(assert (= (and b!1240718 res!827893) b!1240720))

(assert (= (and b!1240720 res!827895) b!1240721))

(assert (= (and start!103606 (is-Cons!27496 l!644)) b!1240722))

(declare-fun m!1144005 () Bool)

(assert (=> b!1240719 m!1144005))

(declare-fun m!1144007 () Bool)

(assert (=> b!1240720 m!1144007))

(declare-fun m!1144009 () Bool)

(assert (=> b!1240721 m!1144009))

(declare-fun m!1144011 () Bool)

(assert (=> b!1240721 m!1144011))

(assert (=> b!1240721 m!1144009))

(declare-fun m!1144013 () Bool)

(assert (=> b!1240721 m!1144013))

(declare-fun m!1144015 () Bool)

(assert (=> b!1240721 m!1144015))

(assert (=> b!1240721 m!1144013))

(declare-fun m!1144017 () Bool)

(assert (=> b!1240721 m!1144017))

(push 1)

(assert (not b!1240720))

(assert (not b!1240719))

(assert (not b!1240722))

(assert (not b!1240721))

(assert tp_is_empty!31217)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

