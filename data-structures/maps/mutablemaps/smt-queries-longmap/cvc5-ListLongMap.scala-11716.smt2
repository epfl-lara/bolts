; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137164 () Bool)

(assert start!137164)

(declare-fun b!1580043 () Bool)

(declare-fun res!1079477 () Bool)

(declare-fun e!881486 () Bool)

(assert (=> b!1580043 (=> (not res!1079477) (not e!881486))))

(declare-datatypes ((B!2636 0))(
  ( (B!2637 (val!19680 Int)) )
))
(declare-datatypes ((tuple2!25638 0))(
  ( (tuple2!25639 (_1!12829 (_ BitVec 64)) (_2!12829 B!2636)) )
))
(declare-datatypes ((List!36961 0))(
  ( (Nil!36958) (Cons!36957 (h!38501 tuple2!25638) (t!51882 List!36961)) )
))
(declare-fun l!1390 () List!36961)

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!902 (List!36961 (_ BitVec 64)) Bool)

(assert (=> b!1580043 (= res!1079477 (containsKey!902 (t!51882 l!1390) key!405))))

(declare-fun b!1580044 () Bool)

(declare-fun res!1079483 () Bool)

(assert (=> b!1580044 (=> (not res!1079483) (not e!881486))))

(assert (=> b!1580044 (= res!1079483 (and (or (not (is-Cons!36957 l!1390)) (not (= (_1!12829 (h!38501 l!1390)) key!405))) (is-Cons!36957 l!1390)))))

(declare-fun b!1580045 () Bool)

(assert (=> b!1580045 (= e!881486 false)))

(declare-fun lt!676622 () Bool)

(declare-fun lt!676623 () tuple2!25638)

(declare-fun contains!10489 (List!36961 tuple2!25638) Bool)

(assert (=> b!1580045 (= lt!676622 (contains!10489 (t!51882 l!1390) lt!676623))))

(declare-fun b!1580046 () Bool)

(declare-fun e!881484 () Bool)

(assert (=> b!1580046 (= e!881484 e!881486)))

(declare-fun res!1079482 () Bool)

(assert (=> b!1580046 (=> (not res!1079482) (not e!881486))))

(declare-fun e!881487 () Bool)

(assert (=> b!1580046 (= res!1079482 e!881487)))

(declare-fun res!1079480 () Bool)

(assert (=> b!1580046 (=> res!1079480 e!881487)))

(declare-datatypes ((tuple2!25640 0))(
  ( (tuple2!25641 (_1!12830 tuple2!25638) (_2!12830 List!36961)) )
))
(declare-datatypes ((Option!894 0))(
  ( (Some!893 (v!22387 tuple2!25640)) (None!892) )
))
(declare-fun lt!676624 () Option!894)

(declare-fun isEmpty!1162 (Option!894) Bool)

(assert (=> b!1580046 (= res!1079480 (isEmpty!1162 lt!676624))))

(declare-fun unapply!76 (List!36961) Option!894)

(assert (=> b!1580046 (= lt!676624 (unapply!76 l!1390))))

(declare-fun b!1580047 () Bool)

(declare-fun e!881485 () Bool)

(assert (=> b!1580047 (= e!881485 e!881484)))

(declare-fun res!1079481 () Bool)

(assert (=> b!1580047 (=> (not res!1079481) (not e!881484))))

(assert (=> b!1580047 (= res!1079481 (contains!10489 l!1390 lt!676623))))

(declare-fun value!194 () B!2636)

(assert (=> b!1580047 (= lt!676623 (tuple2!25639 key!405 value!194))))

(declare-fun res!1079476 () Bool)

(assert (=> start!137164 (=> (not res!1079476) (not e!881485))))

(declare-fun isStrictlySorted!1056 (List!36961) Bool)

(assert (=> start!137164 (= res!1079476 (isStrictlySorted!1056 l!1390))))

(assert (=> start!137164 e!881485))

(declare-fun e!881483 () Bool)

(assert (=> start!137164 e!881483))

(assert (=> start!137164 true))

(declare-fun tp_is_empty!39181 () Bool)

(assert (=> start!137164 tp_is_empty!39181))

(declare-fun b!1580048 () Bool)

(declare-fun get!26805 (Option!894) tuple2!25640)

(assert (=> b!1580048 (= e!881487 (not (is-Nil!36958 (_2!12830 (get!26805 lt!676624)))))))

(declare-fun b!1580049 () Bool)

(declare-fun res!1079479 () Bool)

(assert (=> b!1580049 (=> (not res!1079479) (not e!881485))))

(assert (=> b!1580049 (= res!1079479 (containsKey!902 l!1390 key!405))))

(declare-fun b!1580050 () Bool)

(declare-fun res!1079478 () Bool)

(assert (=> b!1580050 (=> (not res!1079478) (not e!881486))))

(assert (=> b!1580050 (= res!1079478 (isStrictlySorted!1056 (t!51882 l!1390)))))

(declare-fun b!1580051 () Bool)

(declare-fun tp!114433 () Bool)

(assert (=> b!1580051 (= e!881483 (and tp_is_empty!39181 tp!114433))))

(assert (= (and start!137164 res!1079476) b!1580049))

(assert (= (and b!1580049 res!1079479) b!1580047))

(assert (= (and b!1580047 res!1079481) b!1580046))

(assert (= (and b!1580046 (not res!1079480)) b!1580048))

(assert (= (and b!1580046 res!1079482) b!1580044))

(assert (= (and b!1580044 res!1079483) b!1580050))

(assert (= (and b!1580050 res!1079478) b!1580043))

(assert (= (and b!1580043 res!1079477) b!1580045))

(assert (= (and start!137164 (is-Cons!36957 l!1390)) b!1580051))

(declare-fun m!1451591 () Bool)

(assert (=> b!1580046 m!1451591))

(declare-fun m!1451593 () Bool)

(assert (=> b!1580046 m!1451593))

(declare-fun m!1451595 () Bool)

(assert (=> b!1580043 m!1451595))

(declare-fun m!1451597 () Bool)

(assert (=> start!137164 m!1451597))

(declare-fun m!1451599 () Bool)

(assert (=> b!1580045 m!1451599))

(declare-fun m!1451601 () Bool)

(assert (=> b!1580048 m!1451601))

(declare-fun m!1451603 () Bool)

(assert (=> b!1580049 m!1451603))

(declare-fun m!1451605 () Bool)

(assert (=> b!1580047 m!1451605))

(declare-fun m!1451607 () Bool)

(assert (=> b!1580050 m!1451607))

(push 1)

