; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76832 () Bool)

(assert start!76832)

(declare-fun b!898285 () Bool)

(declare-fun b_free!16015 () Bool)

(declare-fun b_next!16015 () Bool)

(assert (=> b!898285 (= b_free!16015 (not b_next!16015))))

(declare-fun tp!56115 () Bool)

(declare-fun b_and!26327 () Bool)

(assert (=> b!898285 (= tp!56115 b_and!26327)))

(declare-fun b!898282 () Bool)

(declare-fun e!502514 () Bool)

(declare-fun e!502515 () Bool)

(assert (=> b!898282 (= e!502514 e!502515)))

(declare-fun res!607162 () Bool)

(assert (=> b!898282 (=> res!607162 e!502515)))

(declare-datatypes ((array!52710 0))(
  ( (array!52711 (arr!25328 (Array (_ BitVec 32) (_ BitVec 64))) (size!25784 (_ BitVec 32))) )
))
(declare-datatypes ((V!29423 0))(
  ( (V!29424 (val!9222 Int)) )
))
(declare-datatypes ((ValueCell!8690 0))(
  ( (ValueCellFull!8690 (v!11710 V!29423)) (EmptyCell!8690) )
))
(declare-datatypes ((array!52712 0))(
  ( (array!52713 (arr!25329 (Array (_ BitVec 32) ValueCell!8690)) (size!25785 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4396 0))(
  ( (LongMapFixedSize!4397 (defaultEntry!5412 Int) (mask!26135 (_ BitVec 32)) (extraKeys!5128 (_ BitVec 32)) (zeroValue!5232 V!29423) (minValue!5232 V!29423) (_size!2253 (_ BitVec 32)) (_keys!10183 array!52710) (_values!5419 array!52712) (_vacant!2253 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4396)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!898282 (= res!607162 (not (validMask!0 (mask!26135 thiss!1181))))))

(declare-datatypes ((SeekEntryResult!8912 0))(
  ( (MissingZero!8912 (index!38018 (_ BitVec 32))) (Found!8912 (index!38019 (_ BitVec 32))) (Intermediate!8912 (undefined!9724 Bool) (index!38020 (_ BitVec 32)) (x!76552 (_ BitVec 32))) (Undefined!8912) (MissingVacant!8912 (index!38021 (_ BitVec 32))) )
))
(declare-fun lt!405538 () SeekEntryResult!8912)

(declare-datatypes ((tuple2!12054 0))(
  ( (tuple2!12055 (_1!6037 (_ BitVec 64)) (_2!6037 V!29423)) )
))
(declare-datatypes ((List!17916 0))(
  ( (Nil!17913) (Cons!17912 (h!19054 tuple2!12054) (t!25265 List!17916)) )
))
(declare-datatypes ((ListLongMap!10765 0))(
  ( (ListLongMap!10766 (toList!5398 List!17916)) )
))
(declare-fun contains!4397 (ListLongMap!10765 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2641 (array!52710 array!52712 (_ BitVec 32) (_ BitVec 32) V!29423 V!29423 (_ BitVec 32) Int) ListLongMap!10765)

(assert (=> b!898282 (contains!4397 (getCurrentListMap!2641 (_keys!10183 thiss!1181) (_values!5419 thiss!1181) (mask!26135 thiss!1181) (extraKeys!5128 thiss!1181) (zeroValue!5232 thiss!1181) (minValue!5232 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5412 thiss!1181)) (select (arr!25328 (_keys!10183 thiss!1181)) (index!38019 lt!405538)))))

(declare-datatypes ((Unit!30507 0))(
  ( (Unit!30508) )
))
(declare-fun lt!405539 () Unit!30507)

(declare-fun lemmaValidKeyInArrayIsInListMap!234 (array!52710 array!52712 (_ BitVec 32) (_ BitVec 32) V!29423 V!29423 (_ BitVec 32) Int) Unit!30507)

(assert (=> b!898282 (= lt!405539 (lemmaValidKeyInArrayIsInListMap!234 (_keys!10183 thiss!1181) (_values!5419 thiss!1181) (mask!26135 thiss!1181) (extraKeys!5128 thiss!1181) (zeroValue!5232 thiss!1181) (minValue!5232 thiss!1181) (index!38019 lt!405538) (defaultEntry!5412 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!898282 (arrayContainsKey!0 (_keys!10183 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405537 () Unit!30507)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52710 (_ BitVec 64) (_ BitVec 32)) Unit!30507)

(assert (=> b!898282 (= lt!405537 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10183 thiss!1181) key!785 (index!38019 lt!405538)))))

(declare-fun b!898283 () Bool)

(declare-fun e!502516 () Bool)

(declare-fun e!502519 () Bool)

(declare-fun mapRes!29169 () Bool)

(assert (=> b!898283 (= e!502516 (and e!502519 mapRes!29169))))

(declare-fun condMapEmpty!29169 () Bool)

(declare-fun mapDefault!29169 () ValueCell!8690)

