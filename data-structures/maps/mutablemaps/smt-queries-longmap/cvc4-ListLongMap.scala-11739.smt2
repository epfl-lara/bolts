; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137732 () Bool)

(assert start!137732)

(assert (=> start!137732 false))

(declare-datatypes ((B!2778 0))(
  ( (B!2779 (val!19751 Int)) )
))
(declare-datatypes ((tuple2!25834 0))(
  ( (tuple2!25835 (_1!12927 (_ BitVec 64)) (_2!12927 B!2778)) )
))
(declare-datatypes ((List!37032 0))(
  ( (Nil!37029) (Cons!37028 (h!38572 tuple2!25834) (t!51953 List!37032)) )
))
(declare-datatypes ((ListLongMap!22957 0))(
  ( (ListLongMap!22958 (toList!11494 List!37032)) )
))
(declare-fun thiss!185 () ListLongMap!22957)

(declare-fun e!883164 () Bool)

(declare-fun inv!59121 (ListLongMap!22957) Bool)

(assert (=> start!137732 (and (inv!59121 thiss!185) e!883164)))

(assert (=> start!137732 true))

(declare-fun b!1582394 () Bool)

(declare-fun tp!114775 () Bool)

(assert (=> b!1582394 (= e!883164 tp!114775)))

(assert (= start!137732 b!1582394))

(declare-fun m!1452831 () Bool)

(assert (=> start!137732 m!1452831))

(push 1)

(assert (not start!137732))

(assert (not b!1582394))

(check-sat)

(pop 1)

(push 1)

