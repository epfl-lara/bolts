; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89088 () Bool)

(assert start!89088)

(declare-fun b!1020990 () Bool)

(declare-fun b_free!20113 () Bool)

(declare-fun b_next!20113 () Bool)

(assert (=> b!1020990 (= b_free!20113 (not b_next!20113))))

(declare-fun tp!71368 () Bool)

(declare-fun b_and!32319 () Bool)

(assert (=> b!1020990 (= tp!71368 b_and!32319)))

(declare-fun b!1020985 () Bool)

(declare-fun e!574913 () Bool)

(declare-fun e!574915 () Bool)

(assert (=> b!1020985 (= e!574913 e!574915)))

(declare-fun b!1020986 () Bool)

(declare-fun e!574911 () Bool)

(declare-fun tp_is_empty!23833 () Bool)

(assert (=> b!1020986 (= e!574911 tp_is_empty!23833)))

(declare-fun b!1020987 () Bool)

(declare-fun e!574917 () Bool)

(declare-fun mapRes!37161 () Bool)

(assert (=> b!1020987 (= e!574917 (and e!574911 mapRes!37161))))

(declare-fun condMapEmpty!37161 () Bool)

(declare-datatypes ((V!36651 0))(
  ( (V!36652 (val!11967 Int)) )
))
(declare-datatypes ((array!63690 0))(
  ( (array!63691 (arr!30655 (Array (_ BitVec 32) (_ BitVec 64))) (size!31167 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!11213 0))(
  ( (ValueCellFull!11213 (v!14522 V!36651)) (EmptyCell!11213) )
))
(declare-datatypes ((array!63692 0))(
  ( (array!63693 (arr!30656 (Array (_ BitVec 32) ValueCell!11213)) (size!31168 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5020 0))(
  ( (LongMapFixedSize!5021 (defaultEntry!5862 Int) (mask!29418 (_ BitVec 32)) (extraKeys!5594 (_ BitVec 32)) (zeroValue!5698 V!36651) (minValue!5698 V!36651) (_size!2565 (_ BitVec 32)) (_keys!11004 array!63690) (_values!5885 array!63692) (_vacant!2565 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1088 0))(
  ( (Cell!1089 (v!14523 LongMapFixedSize!5020)) )
))
(declare-datatypes ((LongMap!1088 0))(
  ( (LongMap!1089 (underlying!555 Cell!1088)) )
))
(declare-fun thiss!908 () LongMap!1088)

(declare-fun mapDefault!37161 () ValueCell!11213)

