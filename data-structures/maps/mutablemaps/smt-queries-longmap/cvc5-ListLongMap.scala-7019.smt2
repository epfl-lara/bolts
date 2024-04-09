; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89162 () Bool)

(assert start!89162)

(declare-fun b!1021744 () Bool)

(declare-fun b_free!20167 () Bool)

(declare-fun b_next!20167 () Bool)

(assert (=> b!1021744 (= b_free!20167 (not b_next!20167))))

(declare-fun tp!71536 () Bool)

(declare-fun b_and!32383 () Bool)

(assert (=> b!1021744 (= tp!71536 b_and!32383)))

(declare-fun b!1021739 () Bool)

(declare-fun res!684635 () Bool)

(declare-fun e!575551 () Bool)

(assert (=> b!1021739 (=> (not res!684635) (not e!575551))))

(declare-datatypes ((V!36723 0))(
  ( (V!36724 (val!11994 Int)) )
))
(declare-datatypes ((ValueCell!11240 0))(
  ( (ValueCellFull!11240 (v!14564 V!36723)) (EmptyCell!11240) )
))
(declare-datatypes ((array!63802 0))(
  ( (array!63803 (arr!30709 (Array (_ BitVec 32) (_ BitVec 64))) (size!31221 (_ BitVec 32))) )
))
(declare-datatypes ((array!63804 0))(
  ( (array!63805 (arr!30710 (Array (_ BitVec 32) ValueCell!11240)) (size!31222 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5074 0))(
  ( (LongMapFixedSize!5075 (defaultEntry!5889 Int) (mask!29463 (_ BitVec 32)) (extraKeys!5621 (_ BitVec 32)) (zeroValue!5725 V!36723) (minValue!5725 V!36723) (_size!2592 (_ BitVec 32)) (_keys!11031 array!63802) (_values!5912 array!63804) (_vacant!2592 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5074)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63802 (_ BitVec 32)) Bool)

(assert (=> b!1021739 (= res!684635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11031 thiss!1427) (mask!29463 thiss!1427)))))

(declare-fun b!1021741 () Bool)

(declare-fun e!575547 () Bool)

(declare-fun e!575548 () Bool)

(declare-fun mapRes!37248 () Bool)

(assert (=> b!1021741 (= e!575547 (and e!575548 mapRes!37248))))

(declare-fun condMapEmpty!37248 () Bool)

(declare-fun mapDefault!37248 () ValueCell!11240)

