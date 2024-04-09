; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103602 () Bool)

(assert start!103602)

(declare-fun b!1240688 () Bool)

(declare-fun e!703276 () Bool)

(assert (=> b!1240688 (= e!703276 (not true))))

(declare-datatypes ((B!1814 0))(
  ( (B!1815 (val!15669 Int)) )
))
(declare-fun v1!20 () B!1814)

(declare-fun key1!25 () (_ BitVec 64))

(declare-datatypes ((tuple2!20366 0))(
  ( (tuple2!20367 (_1!10193 (_ BitVec 64)) (_2!10193 B!1814)) )
))
(declare-datatypes ((List!27498 0))(
  ( (Nil!27495) (Cons!27494 (h!28703 tuple2!20366) (t!40968 List!27498)) )
))
(declare-fun l!644 () List!27498)

(declare-fun key2!15 () (_ BitVec 64))

(declare-fun insertStrictlySorted!422 (List!27498 (_ BitVec 64) B!1814) List!27498)

(declare-fun removeStrictlySorted!116 (List!27498 (_ BitVec 64)) List!27498)

(assert (=> b!1240688 (= (insertStrictlySorted!422 (removeStrictlySorted!116 (t!40968 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!116 (insertStrictlySorted!422 (t!40968 l!644) key1!25 v1!20) key2!15))))

(declare-datatypes ((Unit!41179 0))(
  ( (Unit!41180) )
))
(declare-fun lt!561973 () Unit!41179)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!4 (List!27498 (_ BitVec 64) B!1814 (_ BitVec 64)) Unit!41179)

(assert (=> b!1240688 (= lt!561973 (lemmaInsertAndRemoveStrictlySortedCommutative!4 (t!40968 l!644) key1!25 v1!20 key2!15))))

(declare-fun b!1240689 () Bool)

(declare-fun res!827870 () Bool)

(assert (=> b!1240689 (=> (not res!827870) (not e!703276))))

(assert (=> b!1240689 (= res!827870 (is-Cons!27494 l!644))))

(declare-fun b!1240690 () Bool)

(declare-fun res!827872 () Bool)

(assert (=> b!1240690 (=> (not res!827872) (not e!703276))))

(declare-fun isStrictlySorted!732 (List!27498) Bool)

(assert (=> b!1240690 (= res!827872 (isStrictlySorted!732 l!644))))

(declare-fun b!1240691 () Bool)

(declare-fun e!703277 () Bool)

(declare-fun tp_is_empty!31213 () Bool)

(declare-fun tp!92574 () Bool)

(assert (=> b!1240691 (= e!703277 (and tp_is_empty!31213 tp!92574))))

(declare-fun b!1240692 () Bool)

(declare-fun res!827871 () Bool)

(assert (=> b!1240692 (=> (not res!827871) (not e!703276))))

(assert (=> b!1240692 (= res!827871 (isStrictlySorted!732 (t!40968 l!644)))))

(declare-fun res!827869 () Bool)

(assert (=> start!103602 (=> (not res!827869) (not e!703276))))

(assert (=> start!103602 (= res!827869 (not (= key1!25 key2!15)))))

(assert (=> start!103602 e!703276))

(assert (=> start!103602 true))

(assert (=> start!103602 e!703277))

(assert (=> start!103602 tp_is_empty!31213))

(assert (= (and start!103602 res!827869) b!1240690))

(assert (= (and b!1240690 res!827872) b!1240689))

(assert (= (and b!1240689 res!827870) b!1240692))

(assert (= (and b!1240692 res!827871) b!1240688))

(assert (= (and start!103602 (is-Cons!27494 l!644)) b!1240691))

(declare-fun m!1143977 () Bool)

(assert (=> b!1240688 m!1143977))

(declare-fun m!1143979 () Bool)

(assert (=> b!1240688 m!1143979))

(assert (=> b!1240688 m!1143977))

(declare-fun m!1143981 () Bool)

(assert (=> b!1240688 m!1143981))

(declare-fun m!1143983 () Bool)

(assert (=> b!1240688 m!1143983))

(assert (=> b!1240688 m!1143981))

(declare-fun m!1143985 () Bool)

(assert (=> b!1240688 m!1143985))

(declare-fun m!1143987 () Bool)

(assert (=> b!1240690 m!1143987))

(declare-fun m!1143989 () Bool)

(assert (=> b!1240692 m!1143989))

(push 1)

(assert (not b!1240688))

(assert (not b!1240692))

(assert (not b!1240690))

(assert (not b!1240691))

(assert tp_is_empty!31213)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

