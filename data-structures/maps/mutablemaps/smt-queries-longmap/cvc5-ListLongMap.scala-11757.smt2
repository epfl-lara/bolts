; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137992 () Bool)

(assert start!137992)

(declare-fun b!1583517 () Bool)

(declare-fun res!1081763 () Bool)

(declare-fun e!883956 () Bool)

(assert (=> b!1583517 (=> (not res!1081763) (not e!883956))))

(declare-datatypes ((B!2882 0))(
  ( (B!2883 (val!19803 Int)) )
))
(declare-datatypes ((tuple2!25938 0))(
  ( (tuple2!25939 (_1!12979 (_ BitVec 64)) (_2!12979 B!2882)) )
))
(declare-datatypes ((List!37084 0))(
  ( (Nil!37081) (Cons!37080 (h!38624 tuple2!25938) (t!52005 List!37084)) )
))
(declare-fun l!1251 () List!37084)

(declare-fun isStrictlySorted!1149 (List!37084) Bool)

(assert (=> b!1583517 (= res!1081763 (isStrictlySorted!1149 (t!52005 l!1251)))))

(declare-fun b!1583518 () Bool)

(declare-fun res!1081762 () Bool)

(assert (=> b!1583518 (=> (not res!1081762) (not e!883956))))

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun containsKey!983 (List!37084 (_ BitVec 64)) Bool)

(assert (=> b!1583518 (= res!1081762 (not (containsKey!983 (t!52005 l!1251) otherKey!56)))))

(declare-fun b!1583519 () Bool)

(assert (=> b!1583519 (= e!883956 (not true))))

(declare-fun newKey!123 () (_ BitVec 64))

(declare-fun newValue!123 () B!2882)

(declare-fun insertStrictlySorted!616 (List!37084 (_ BitVec 64) B!2882) List!37084)

(assert (=> b!1583519 (not (containsKey!983 (insertStrictlySorted!616 (t!52005 l!1251) newKey!123 newValue!123) otherKey!56))))

(declare-datatypes ((Unit!52223 0))(
  ( (Unit!52224) )
))
(declare-fun lt!677113 () Unit!52223)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!4 (List!37084 (_ BitVec 64) B!2882 (_ BitVec 64)) Unit!52223)

(assert (=> b!1583519 (= lt!677113 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!4 (t!52005 l!1251) newKey!123 newValue!123 otherKey!56))))

(declare-fun b!1583521 () Bool)

(declare-fun e!883955 () Bool)

(declare-fun tp_is_empty!39415 () Bool)

(declare-fun tp!115015 () Bool)

(assert (=> b!1583521 (= e!883955 (and tp_is_empty!39415 tp!115015))))

(declare-fun b!1583522 () Bool)

(declare-fun res!1081764 () Bool)

(assert (=> b!1583522 (=> (not res!1081764) (not e!883956))))

(assert (=> b!1583522 (= res!1081764 (not (containsKey!983 l!1251 otherKey!56)))))

(declare-fun b!1583520 () Bool)

(declare-fun res!1081766 () Bool)

(assert (=> b!1583520 (=> (not res!1081766) (not e!883956))))

(assert (=> b!1583520 (= res!1081766 (and (not (= otherKey!56 newKey!123)) (is-Cons!37080 l!1251)))))

(declare-fun res!1081765 () Bool)

(assert (=> start!137992 (=> (not res!1081765) (not e!883956))))

(assert (=> start!137992 (= res!1081765 (isStrictlySorted!1149 l!1251))))

(assert (=> start!137992 e!883956))

(assert (=> start!137992 e!883955))

(assert (=> start!137992 true))

(assert (=> start!137992 tp_is_empty!39415))

(assert (= (and start!137992 res!1081765) b!1583522))

(assert (= (and b!1583522 res!1081764) b!1583520))

(assert (= (and b!1583520 res!1081766) b!1583517))

(assert (= (and b!1583517 res!1081763) b!1583518))

(assert (= (and b!1583518 res!1081762) b!1583519))

(assert (= (and start!137992 (is-Cons!37080 l!1251)) b!1583521))

(declare-fun m!1453295 () Bool)

(assert (=> b!1583518 m!1453295))

(declare-fun m!1453297 () Bool)

(assert (=> b!1583519 m!1453297))

(assert (=> b!1583519 m!1453297))

(declare-fun m!1453299 () Bool)

(assert (=> b!1583519 m!1453299))

(declare-fun m!1453301 () Bool)

(assert (=> b!1583519 m!1453301))

(declare-fun m!1453303 () Bool)

(assert (=> start!137992 m!1453303))

(declare-fun m!1453305 () Bool)

(assert (=> b!1583517 m!1453305))

(declare-fun m!1453307 () Bool)

(assert (=> b!1583522 m!1453307))

(push 1)

(assert (not b!1583521))

(assert (not b!1583522))

(assert (not b!1583518))

(assert (not start!137992))

(assert (not b!1583519))

(assert tp_is_empty!39415)

(assert (not b!1583517))

(check-sat)

