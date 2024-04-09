; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137730 () Bool)

(assert start!137730)

(assert (=> start!137730 false))

(declare-datatypes ((B!2776 0))(
  ( (B!2777 (val!19750 Int)) )
))
(declare-datatypes ((tuple2!25832 0))(
  ( (tuple2!25833 (_1!12926 (_ BitVec 64)) (_2!12926 B!2776)) )
))
(declare-datatypes ((List!37031 0))(
  ( (Nil!37028) (Cons!37027 (h!38571 tuple2!25832) (t!51952 List!37031)) )
))
(declare-datatypes ((ListLongMap!22955 0))(
  ( (ListLongMap!22956 (toList!11493 List!37031)) )
))
(declare-fun thiss!185 () ListLongMap!22955)

(declare-fun e!883161 () Bool)

(declare-fun inv!59120 (ListLongMap!22955) Bool)

(assert (=> start!137730 (and (inv!59120 thiss!185) e!883161)))

(assert (=> start!137730 true))

(declare-fun b!1582391 () Bool)

(declare-fun tp!114772 () Bool)

(assert (=> b!1582391 (= e!883161 tp!114772)))

(assert (= start!137730 b!1582391))

(declare-fun m!1452829 () Bool)

(assert (=> start!137730 m!1452829))

(check-sat (not start!137730) (not b!1582391))
(check-sat)
