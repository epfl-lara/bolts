; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90322 () Bool)

(assert start!90322)

(declare-fun b!1033451 () Bool)

(declare-fun b_free!20795 () Bool)

(declare-fun b_next!20795 () Bool)

(assert (=> b!1033451 (= b_free!20795 (not b_next!20795))))

(declare-fun tp!73483 () Bool)

(declare-fun b_and!33281 () Bool)

(assert (=> b!1033451 (= tp!73483 b_and!33281)))

(declare-fun b!1033449 () Bool)

(declare-fun res!690599 () Bool)

(declare-fun e!584182 () Bool)

(assert (=> b!1033449 (=> (not res!690599) (not e!584182))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1033449 (= res!690599 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!38252 () Bool)

(declare-fun mapRes!38252 () Bool)

(declare-fun tp!73482 () Bool)

(declare-fun e!584178 () Bool)

(assert (=> mapNonEmpty!38252 (= mapRes!38252 (and tp!73482 e!584178))))

(declare-fun mapKey!38252 () (_ BitVec 32))

(declare-datatypes ((V!37559 0))(
  ( (V!37560 (val!12308 Int)) )
))
(declare-datatypes ((ValueCell!11554 0))(
  ( (ValueCellFull!11554 (v!14886 V!37559)) (EmptyCell!11554) )
))
(declare-fun mapValue!38252 () ValueCell!11554)

(declare-fun mapRest!38252 () (Array (_ BitVec 32) ValueCell!11554))

(declare-datatypes ((array!65092 0))(
  ( (array!65093 (arr!31337 (Array (_ BitVec 32) (_ BitVec 64))) (size!31860 (_ BitVec 32))) )
))
(declare-datatypes ((array!65094 0))(
  ( (array!65095 (arr!31338 (Array (_ BitVec 32) ValueCell!11554)) (size!31861 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5702 0))(
  ( (LongMapFixedSize!5703 (defaultEntry!6225 Int) (mask!30073 (_ BitVec 32)) (extraKeys!5957 (_ BitVec 32)) (zeroValue!6061 V!37559) (minValue!6061 V!37559) (_size!2906 (_ BitVec 32)) (_keys!11401 array!65092) (_values!6248 array!65094) (_vacant!2906 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5702)

(assert (=> mapNonEmpty!38252 (= (arr!31338 (_values!6248 thiss!1427)) (store mapRest!38252 mapKey!38252 mapValue!38252))))

(declare-fun b!1033450 () Bool)

(declare-fun res!690597 () Bool)

(assert (=> b!1033450 (=> (not res!690597) (not e!584182))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1033450 (= res!690597 (validMask!0 (mask!30073 thiss!1427)))))

(declare-fun mapIsEmpty!38252 () Bool)

(assert (=> mapIsEmpty!38252 mapRes!38252))

(declare-fun e!584180 () Bool)

(declare-fun tp_is_empty!24515 () Bool)

(declare-fun e!584183 () Bool)

(declare-fun array_inv!24077 (array!65092) Bool)

(declare-fun array_inv!24078 (array!65094) Bool)

(assert (=> b!1033451 (= e!584183 (and tp!73483 tp_is_empty!24515 (array_inv!24077 (_keys!11401 thiss!1427)) (array_inv!24078 (_values!6248 thiss!1427)) e!584180))))

(declare-fun b!1033452 () Bool)

(declare-fun res!690598 () Bool)

(assert (=> b!1033452 (=> (not res!690598) (not e!584182))))

(assert (=> b!1033452 (= res!690598 (and (= (size!31861 (_values!6248 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30073 thiss!1427))) (= (size!31860 (_keys!11401 thiss!1427)) (size!31861 (_values!6248 thiss!1427))) (bvsge (mask!30073 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5957 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5957 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5957 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5957 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5957 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5957 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5957 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1033453 () Bool)

(declare-fun e!584179 () Bool)

(assert (=> b!1033453 (= e!584179 tp_is_empty!24515)))

(declare-fun b!1033454 () Bool)

(assert (=> b!1033454 (= e!584180 (and e!584179 mapRes!38252))))

(declare-fun condMapEmpty!38252 () Bool)

(declare-fun mapDefault!38252 () ValueCell!11554)

