; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137728 () Bool)

(assert start!137728)

(assert (=> start!137728 false))

(declare-datatypes ((B!2774 0))(
  ( (B!2775 (val!19749 Int)) )
))
(declare-datatypes ((tuple2!25830 0))(
  ( (tuple2!25831 (_1!12925 (_ BitVec 64)) (_2!12925 B!2774)) )
))
(declare-datatypes ((List!37030 0))(
  ( (Nil!37027) (Cons!37026 (h!38570 tuple2!25830) (t!51951 List!37030)) )
))
(declare-datatypes ((ListLongMap!22953 0))(
  ( (ListLongMap!22954 (toList!11492 List!37030)) )
))
(declare-fun thiss!185 () ListLongMap!22953)

(declare-fun e!883158 () Bool)

(declare-fun inv!59119 (ListLongMap!22953) Bool)

(assert (=> start!137728 (and (inv!59119 thiss!185) e!883158)))

(assert (=> start!137728 true))

(declare-fun b!1582388 () Bool)

(declare-fun tp!114769 () Bool)

(assert (=> b!1582388 (= e!883158 tp!114769)))

(assert (= start!137728 b!1582388))

(declare-fun m!1452827 () Bool)

(assert (=> start!137728 m!1452827))

(push 1)

(assert (not start!137728))

(assert (not b!1582388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

