; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89156 () Bool)

(assert start!89156)

(declare-fun b!1021661 () Bool)

(declare-fun b_free!20161 () Bool)

(declare-fun b_next!20161 () Bool)

(assert (=> b!1021661 (= b_free!20161 (not b_next!20161))))

(declare-fun tp!71519 () Bool)

(declare-fun b_and!32377 () Bool)

(assert (=> b!1021661 (= tp!71519 b_and!32377)))

(declare-fun mapNonEmpty!37239 () Bool)

(declare-fun mapRes!37239 () Bool)

(declare-fun tp!71518 () Bool)

(declare-fun e!575496 () Bool)

(assert (=> mapNonEmpty!37239 (= mapRes!37239 (and tp!71518 e!575496))))

(declare-datatypes ((V!36715 0))(
  ( (V!36716 (val!11991 Int)) )
))
(declare-datatypes ((ValueCell!11237 0))(
  ( (ValueCellFull!11237 (v!14561 V!36715)) (EmptyCell!11237) )
))
(declare-fun mapRest!37239 () (Array (_ BitVec 32) ValueCell!11237))

(declare-fun mapKey!37239 () (_ BitVec 32))

(declare-fun mapValue!37239 () ValueCell!11237)

(declare-datatypes ((array!63790 0))(
  ( (array!63791 (arr!30703 (Array (_ BitVec 32) (_ BitVec 64))) (size!31215 (_ BitVec 32))) )
))
(declare-datatypes ((array!63792 0))(
  ( (array!63793 (arr!30704 (Array (_ BitVec 32) ValueCell!11237)) (size!31216 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5068 0))(
  ( (LongMapFixedSize!5069 (defaultEntry!5886 Int) (mask!29458 (_ BitVec 32)) (extraKeys!5618 (_ BitVec 32)) (zeroValue!5722 V!36715) (minValue!5722 V!36715) (_size!2589 (_ BitVec 32)) (_keys!11028 array!63790) (_values!5909 array!63792) (_vacant!2589 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5068)

(assert (=> mapNonEmpty!37239 (= (arr!30704 (_values!5909 thiss!1427)) (store mapRest!37239 mapKey!37239 mapValue!37239))))

(declare-fun b!1021658 () Bool)

(declare-fun e!575492 () Bool)

(declare-fun e!575493 () Bool)

(assert (=> b!1021658 (= e!575492 (and e!575493 mapRes!37239))))

(declare-fun condMapEmpty!37239 () Bool)

(declare-fun mapDefault!37239 () ValueCell!11237)

