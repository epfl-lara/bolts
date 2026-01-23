; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!466070 () Bool)

(assert start!466070)

(declare-fun b!4637127 () Bool)

(declare-fun res!1946734 () Bool)

(declare-fun e!2892747 () Bool)

(assert (=> b!4637127 (=> (not res!1946734) (not e!2892747))))

(declare-datatypes ((K!13043 0))(
  ( (K!13044 (val!18705 Int)) )
))
(declare-datatypes ((V!13289 0))(
  ( (V!13290 (val!18706 Int)) )
))
(declare-datatypes ((tuple2!52674 0))(
  ( (tuple2!52675 (_1!29631 K!13043) (_2!29631 V!13289)) )
))
(declare-datatypes ((List!51802 0))(
  ( (Nil!51678) (Cons!51678 (h!57770 tuple2!52674) (t!358876 List!51802)) )
))
(declare-fun oldBucket!40 () List!51802)

(declare-fun key!4968 () K!13043)

(declare-fun newBucket!224 () List!51802)

(declare-fun removePairForKey!1180 (List!51802 K!13043) List!51802)

(assert (=> b!4637127 (= res!1946734 (= (removePairForKey!1180 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4637128 () Bool)

(declare-fun res!1946733 () Bool)

(assert (=> b!4637128 (=> (not res!1946733) (not e!2892747))))

(declare-datatypes ((Hashable!5954 0))(
  ( (HashableExt!5953 (__x!31657 Int)) )
))
(declare-fun hashF!1389 () Hashable!5954)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1411 (List!51802 (_ BitVec 64) Hashable!5954) Bool)

(assert (=> b!4637128 (= res!1946733 (allKeysSameHash!1411 oldBucket!40 hash!414 hashF!1389))))

(declare-fun e!2892749 () Bool)

(declare-fun b!4637129 () Bool)

(declare-fun tp_is_empty!29521 () Bool)

(declare-fun tp!1342581 () Bool)

(declare-fun tp_is_empty!29523 () Bool)

(assert (=> b!4637129 (= e!2892749 (and tp_is_empty!29521 tp_is_empty!29523 tp!1342581))))

(declare-fun res!1946730 () Bool)

(assert (=> start!466070 (=> (not res!1946730) (not e!2892747))))

(declare-fun noDuplicateKeys!1557 (List!51802) Bool)

(assert (=> start!466070 (= res!1946730 (noDuplicateKeys!1557 oldBucket!40))))

(assert (=> start!466070 e!2892747))

(assert (=> start!466070 true))

(declare-fun e!2892748 () Bool)

(assert (=> start!466070 e!2892748))

(assert (=> start!466070 tp_is_empty!29521))

(assert (=> start!466070 e!2892749))

(declare-fun b!4637130 () Bool)

(declare-fun res!1946732 () Bool)

(assert (=> b!4637130 (=> (not res!1946732) (not e!2892747))))

(declare-datatypes ((ListMap!4383 0))(
  ( (ListMap!4384 (toList!5073 List!51802)) )
))
(declare-fun contains!14802 (ListMap!4383 K!13043) Bool)

(declare-datatypes ((tuple2!52676 0))(
  ( (tuple2!52677 (_1!29632 (_ BitVec 64)) (_2!29632 List!51802)) )
))
(declare-datatypes ((List!51803 0))(
  ( (Nil!51679) (Cons!51679 (h!57771 tuple2!52676) (t!358877 List!51803)) )
))
(declare-fun extractMap!1613 (List!51803) ListMap!4383)

(assert (=> b!4637130 (= res!1946732 (contains!14802 (extractMap!1613 (Cons!51679 (tuple2!52677 hash!414 oldBucket!40) Nil!51679)) key!4968))))

(declare-fun b!4637131 () Bool)

(declare-fun res!1946729 () Bool)

(assert (=> b!4637131 (=> (not res!1946729) (not e!2892747))))

(declare-fun hash!3633 (Hashable!5954 K!13043) (_ BitVec 64))

(assert (=> b!4637131 (= res!1946729 (= (hash!3633 hashF!1389 key!4968) hash!414))))

(declare-fun b!4637132 () Bool)

(declare-fun tp!1342580 () Bool)

(assert (=> b!4637132 (= e!2892748 (and tp_is_empty!29521 tp_is_empty!29523 tp!1342580))))

(declare-fun b!4637133 () Bool)

(declare-fun res!1946731 () Bool)

(assert (=> b!4637133 (=> (not res!1946731) (not e!2892747))))

(assert (=> b!4637133 (= res!1946731 (noDuplicateKeys!1557 newBucket!224))))

(declare-fun b!4637134 () Bool)

(assert (=> b!4637134 (= e!2892747 false)))

(assert (= (and start!466070 res!1946730) b!4637133))

(assert (= (and b!4637133 res!1946731) b!4637127))

(assert (= (and b!4637127 res!1946734) b!4637128))

(assert (= (and b!4637128 res!1946733) b!4637130))

(assert (= (and b!4637130 res!1946732) b!4637131))

(assert (= (and b!4637131 res!1946729) b!4637134))

(assert (= (and start!466070 (is-Cons!51678 oldBucket!40)) b!4637132))

(assert (= (and start!466070 (is-Cons!51678 newBucket!224)) b!4637129))

(declare-fun m!5495115 () Bool)

(assert (=> b!4637133 m!5495115))

(declare-fun m!5495117 () Bool)

(assert (=> b!4637127 m!5495117))

(declare-fun m!5495119 () Bool)

(assert (=> b!4637128 m!5495119))

(declare-fun m!5495121 () Bool)

(assert (=> b!4637131 m!5495121))

(declare-fun m!5495123 () Bool)

(assert (=> start!466070 m!5495123))

(declare-fun m!5495125 () Bool)

(assert (=> b!4637130 m!5495125))

(assert (=> b!4637130 m!5495125))

(declare-fun m!5495127 () Bool)

(assert (=> b!4637130 m!5495127))

(push 1)

(assert (not b!4637131))

(assert tp_is_empty!29521)

(assert (not start!466070))

(assert (not b!4637129))

(assert (not b!4637127))

(assert tp_is_empty!29523)

(assert (not b!4637128))

(assert (not b!4637132))

(assert (not b!4637133))

(assert (not b!4637130))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

