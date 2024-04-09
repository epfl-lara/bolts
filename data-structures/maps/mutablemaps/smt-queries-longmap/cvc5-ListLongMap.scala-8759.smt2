; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106384 () Bool)

(assert start!106384)

(declare-fun b!1264890 () Bool)

(declare-fun res!842361 () Bool)

(declare-fun e!720364 () Bool)

(assert (=> b!1264890 (=> (not res!842361) (not e!720364))))

(declare-datatypes ((B!1946 0))(
  ( (B!1947 (val!16308 Int)) )
))
(declare-datatypes ((tuple2!21284 0))(
  ( (tuple2!21285 (_1!10652 (_ BitVec 64)) (_2!10652 B!1946)) )
))
(declare-datatypes ((List!28475 0))(
  ( (Nil!28472) (Cons!28471 (h!29680 tuple2!21284) (t!42003 List!28475)) )
))
(declare-fun l!706 () List!28475)

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!635 (List!28475 (_ BitVec 64)) Bool)

(assert (=> b!1264890 (= res!842361 (not (containsKey!635 (t!42003 l!706) key1!31)))))

(declare-fun b!1264891 () Bool)

(declare-fun e!720363 () Bool)

(declare-fun tp_is_empty!32479 () Bool)

(declare-fun tp!96285 () Bool)

(assert (=> b!1264891 (= e!720363 (and tp_is_empty!32479 tp!96285))))

(declare-fun b!1264892 () Bool)

(declare-fun res!842359 () Bool)

(assert (=> b!1264892 (=> (not res!842359) (not e!720364))))

(declare-fun isStrictlySorted!774 (List!28475) Bool)

(assert (=> b!1264892 (= res!842359 (isStrictlySorted!774 (t!42003 l!706)))))

(declare-fun b!1264893 () Bool)

(assert (=> b!1264893 (= e!720364 (not true))))

(declare-fun v1!26 () B!1946)

(declare-fun removeStrictlySorted!150 (List!28475 (_ BitVec 64)) List!28475)

(declare-fun insertStrictlySorted!456 (List!28475 (_ BitVec 64) B!1946) List!28475)

(assert (=> b!1264893 (= (removeStrictlySorted!150 (insertStrictlySorted!456 (t!42003 l!706) key1!31 v1!26) key1!31) (t!42003 l!706))))

(declare-datatypes ((Unit!42119 0))(
  ( (Unit!42120) )
))
(declare-fun lt!573932 () Unit!42119)

(declare-fun lemmaInsertStrictlySortedThenRemoveIsSame!4 (List!28475 (_ BitVec 64) B!1946) Unit!42119)

(assert (=> b!1264893 (= lt!573932 (lemmaInsertStrictlySortedThenRemoveIsSame!4 (t!42003 l!706) key1!31 v1!26))))

(declare-fun b!1264894 () Bool)

(declare-fun res!842358 () Bool)

(assert (=> b!1264894 (=> (not res!842358) (not e!720364))))

(assert (=> b!1264894 (= res!842358 (is-Cons!28471 l!706))))

(declare-fun res!842362 () Bool)

(assert (=> start!106384 (=> (not res!842362) (not e!720364))))

(assert (=> start!106384 (= res!842362 (isStrictlySorted!774 l!706))))

(assert (=> start!106384 e!720364))

(assert (=> start!106384 e!720363))

(assert (=> start!106384 true))

(assert (=> start!106384 tp_is_empty!32479))

(declare-fun b!1264895 () Bool)

(declare-fun res!842360 () Bool)

(assert (=> b!1264895 (=> (not res!842360) (not e!720364))))

(assert (=> b!1264895 (= res!842360 (not (containsKey!635 l!706 key1!31)))))

(assert (= (and start!106384 res!842362) b!1264895))

(assert (= (and b!1264895 res!842360) b!1264894))

(assert (= (and b!1264894 res!842358) b!1264892))

(assert (= (and b!1264892 res!842359) b!1264890))

(assert (= (and b!1264890 res!842361) b!1264893))

(assert (= (and start!106384 (is-Cons!28471 l!706)) b!1264891))

(declare-fun m!1165317 () Bool)

(assert (=> b!1264895 m!1165317))

(declare-fun m!1165319 () Bool)

(assert (=> b!1264890 m!1165319))

(declare-fun m!1165321 () Bool)

(assert (=> b!1264893 m!1165321))

(assert (=> b!1264893 m!1165321))

(declare-fun m!1165323 () Bool)

(assert (=> b!1264893 m!1165323))

(declare-fun m!1165325 () Bool)

(assert (=> b!1264893 m!1165325))

(declare-fun m!1165327 () Bool)

(assert (=> start!106384 m!1165327))

(declare-fun m!1165329 () Bool)

(assert (=> b!1264892 m!1165329))

(push 1)

(assert (not b!1264891))

(assert (not b!1264895))

(assert (not b!1264890))

(assert (not b!1264892))

(assert (not b!1264893))

(assert tp_is_empty!32479)

(assert (not start!106384))

(check-sat)

