; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89100 () Bool)

(assert start!89100)

(declare-fun b!1021117 () Bool)

(declare-fun b_free!20125 () Bool)

(declare-fun b_next!20125 () Bool)

(assert (=> b!1021117 (= b_free!20125 (not b_next!20125))))

(declare-fun tp!71405 () Bool)

(declare-fun b_and!32331 () Bool)

(assert (=> b!1021117 (= tp!71405 b_and!32331)))

(declare-fun b!1021111 () Bool)

(declare-fun e!575060 () Bool)

(declare-fun tp_is_empty!23845 () Bool)

(assert (=> b!1021111 (= e!575060 tp_is_empty!23845)))

(declare-fun b!1021112 () Bool)

(declare-fun e!575056 () Bool)

(declare-fun e!575059 () Bool)

(declare-fun mapRes!37179 () Bool)

(assert (=> b!1021112 (= e!575056 (and e!575059 mapRes!37179))))

(declare-fun condMapEmpty!37179 () Bool)

(declare-datatypes ((V!36667 0))(
  ( (V!36668 (val!11973 Int)) )
))
(declare-datatypes ((array!63714 0))(
  ( (array!63715 (arr!30667 (Array (_ BitVec 32) (_ BitVec 64))) (size!31179 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!11219 0))(
  ( (ValueCellFull!11219 (v!14534 V!36667)) (EmptyCell!11219) )
))
(declare-datatypes ((array!63716 0))(
  ( (array!63717 (arr!30668 (Array (_ BitVec 32) ValueCell!11219)) (size!31180 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5032 0))(
  ( (LongMapFixedSize!5033 (defaultEntry!5868 Int) (mask!29428 (_ BitVec 32)) (extraKeys!5600 (_ BitVec 32)) (zeroValue!5704 V!36667) (minValue!5704 V!36667) (_size!2571 (_ BitVec 32)) (_keys!11010 array!63714) (_values!5891 array!63716) (_vacant!2571 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1100 0))(
  ( (Cell!1101 (v!14535 LongMapFixedSize!5032)) )
))
(declare-datatypes ((LongMap!1100 0))(
  ( (LongMap!1101 (underlying!561 Cell!1100)) )
))
(declare-fun thiss!908 () LongMap!1100)

(declare-fun mapDefault!37179 () ValueCell!11219)

