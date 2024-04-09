; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106388 () Bool)

(assert start!106388)

(declare-fun b!1264926 () Bool)

(declare-fun res!842390 () Bool)

(declare-fun e!720376 () Bool)

(assert (=> b!1264926 (=> (not res!842390) (not e!720376))))

(declare-datatypes ((B!1950 0))(
  ( (B!1951 (val!16310 Int)) )
))
(declare-datatypes ((tuple2!21288 0))(
  ( (tuple2!21289 (_1!10654 (_ BitVec 64)) (_2!10654 B!1950)) )
))
(declare-datatypes ((List!28477 0))(
  ( (Nil!28474) (Cons!28473 (h!29682 tuple2!21288) (t!42005 List!28477)) )
))
(declare-fun l!706 () List!28477)

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!637 (List!28477 (_ BitVec 64)) Bool)

(assert (=> b!1264926 (= res!842390 (not (containsKey!637 (t!42005 l!706) key1!31)))))

(declare-fun b!1264927 () Bool)

(declare-fun res!842392 () Bool)

(assert (=> b!1264927 (=> (not res!842392) (not e!720376))))

(assert (=> b!1264927 (= res!842392 (not (containsKey!637 l!706 key1!31)))))

(declare-fun b!1264928 () Bool)

(declare-fun res!842389 () Bool)

(assert (=> b!1264928 (=> (not res!842389) (not e!720376))))

(assert (=> b!1264928 (= res!842389 (is-Cons!28473 l!706))))

(declare-fun res!842388 () Bool)

(assert (=> start!106388 (=> (not res!842388) (not e!720376))))

(declare-fun isStrictlySorted!776 (List!28477) Bool)

(assert (=> start!106388 (= res!842388 (isStrictlySorted!776 l!706))))

(assert (=> start!106388 e!720376))

(declare-fun e!720375 () Bool)

(assert (=> start!106388 e!720375))

(assert (=> start!106388 true))

(declare-fun tp_is_empty!32483 () Bool)

(assert (=> start!106388 tp_is_empty!32483))

(declare-fun b!1264929 () Bool)

(declare-fun res!842391 () Bool)

(assert (=> b!1264929 (=> (not res!842391) (not e!720376))))

(assert (=> b!1264929 (= res!842391 (isStrictlySorted!776 (t!42005 l!706)))))

(declare-fun b!1264930 () Bool)

(assert (=> b!1264930 (= e!720376 (not true))))

(declare-fun v1!26 () B!1950)

(declare-fun removeStrictlySorted!152 (List!28477 (_ BitVec 64)) List!28477)

(declare-fun insertStrictlySorted!458 (List!28477 (_ BitVec 64) B!1950) List!28477)

(assert (=> b!1264930 (= (removeStrictlySorted!152 (insertStrictlySorted!458 (t!42005 l!706) key1!31 v1!26) key1!31) (t!42005 l!706))))

(declare-datatypes ((Unit!42123 0))(
  ( (Unit!42124) )
))
(declare-fun lt!573938 () Unit!42123)

(declare-fun lemmaInsertStrictlySortedThenRemoveIsSame!6 (List!28477 (_ BitVec 64) B!1950) Unit!42123)

(assert (=> b!1264930 (= lt!573938 (lemmaInsertStrictlySortedThenRemoveIsSame!6 (t!42005 l!706) key1!31 v1!26))))

(declare-fun b!1264931 () Bool)

(declare-fun tp!96291 () Bool)

(assert (=> b!1264931 (= e!720375 (and tp_is_empty!32483 tp!96291))))

(assert (= (and start!106388 res!842388) b!1264927))

(assert (= (and b!1264927 res!842392) b!1264928))

(assert (= (and b!1264928 res!842389) b!1264929))

(assert (= (and b!1264929 res!842391) b!1264926))

(assert (= (and b!1264926 res!842390) b!1264930))

(assert (= (and start!106388 (is-Cons!28473 l!706)) b!1264931))

(declare-fun m!1165345 () Bool)

(assert (=> b!1264929 m!1165345))

(declare-fun m!1165347 () Bool)

(assert (=> b!1264930 m!1165347))

(assert (=> b!1264930 m!1165347))

(declare-fun m!1165349 () Bool)

(assert (=> b!1264930 m!1165349))

(declare-fun m!1165351 () Bool)

(assert (=> b!1264930 m!1165351))

(declare-fun m!1165353 () Bool)

(assert (=> start!106388 m!1165353))

(declare-fun m!1165355 () Bool)

(assert (=> b!1264927 m!1165355))

(declare-fun m!1165357 () Bool)

(assert (=> b!1264926 m!1165357))

(push 1)

(assert (not b!1264930))

(assert tp_is_empty!32483)

(assert (not b!1264927))

(assert (not b!1264929))

(assert (not b!1264931))

(assert (not start!106388))

(assert (not b!1264926))

(check-sat)

(pop 1)

