; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22022 () Bool)

(assert start!22022)

(declare-fun b!226519 () Bool)

(declare-fun b_free!6077 () Bool)

(declare-fun b_next!6077 () Bool)

(assert (=> b!226519 (= b_free!6077 (not b_next!6077))))

(declare-fun tp!21372 () Bool)

(declare-fun b_and!12993 () Bool)

(assert (=> b!226519 (= tp!21372 b_and!12993)))

(declare-fun b!226508 () Bool)

(declare-datatypes ((Unit!6852 0))(
  ( (Unit!6853) )
))
(declare-fun e!146967 () Unit!6852)

(declare-fun Unit!6854 () Unit!6852)

(assert (=> b!226508 (= e!146967 Unit!6854)))

(declare-fun lt!114066 () Unit!6852)

(declare-datatypes ((V!7565 0))(
  ( (V!7566 (val!3014 Int)) )
))
(declare-datatypes ((ValueCell!2626 0))(
  ( (ValueCellFull!2626 (v!5030 V!7565)) (EmptyCell!2626) )
))
(declare-datatypes ((array!11120 0))(
  ( (array!11121 (arr!5279 (Array (_ BitVec 32) ValueCell!2626)) (size!5612 (_ BitVec 32))) )
))
(declare-datatypes ((array!11122 0))(
  ( (array!11123 (arr!5280 (Array (_ BitVec 32) (_ BitVec 64))) (size!5613 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3152 0))(
  ( (LongMapFixedSize!3153 (defaultEntry!4235 Int) (mask!10087 (_ BitVec 32)) (extraKeys!3972 (_ BitVec 32)) (zeroValue!4076 V!7565) (minValue!4076 V!7565) (_size!1625 (_ BitVec 32)) (_keys!6289 array!11122) (_values!4218 array!11120) (_vacant!1625 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3152)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!96 (array!11122 array!11120 (_ BitVec 32) (_ BitVec 32) V!7565 V!7565 (_ BitVec 64) (_ BitVec 32) Int) Unit!6852)

(assert (=> b!226508 (= lt!114066 (lemmaArrayContainsKeyThenInListMap!96 (_keys!6289 thiss!1504) (_values!4218 thiss!1504) (mask!10087 thiss!1504) (extraKeys!3972 thiss!1504) (zeroValue!4076 thiss!1504) (minValue!4076 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4235 thiss!1504)))))

(assert (=> b!226508 false))

(declare-fun b!226509 () Bool)

(declare-fun res!111523 () Bool)

(declare-fun e!146973 () Bool)

(assert (=> b!226509 (=> (not res!111523) (not e!146973))))

(assert (=> b!226509 (= res!111523 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!226510 () Bool)

(declare-fun e!146969 () Bool)

(declare-fun e!146980 () Bool)

(assert (=> b!226510 (= e!146969 e!146980)))

(declare-fun res!111527 () Bool)

(declare-fun call!21064 () Bool)

(assert (=> b!226510 (= res!111527 call!21064)))

(assert (=> b!226510 (=> (not res!111527) (not e!146980))))

(declare-fun b!226511 () Bool)

(declare-fun res!111531 () Bool)

(declare-fun e!146971 () Bool)

(assert (=> b!226511 (=> res!111531 e!146971)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11122 (_ BitVec 32)) Bool)

(assert (=> b!226511 (= res!111531 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6289 thiss!1504) (mask!10087 thiss!1504))))))

(declare-fun b!226512 () Bool)

(declare-fun res!111525 () Bool)

(declare-datatypes ((SeekEntryResult!894 0))(
  ( (MissingZero!894 (index!5746 (_ BitVec 32))) (Found!894 (index!5747 (_ BitVec 32))) (Intermediate!894 (undefined!1706 Bool) (index!5748 (_ BitVec 32)) (x!23242 (_ BitVec 32))) (Undefined!894) (MissingVacant!894 (index!5749 (_ BitVec 32))) )
))
(declare-fun lt!114057 () SeekEntryResult!894)

(assert (=> b!226512 (= res!111525 (= (select (arr!5280 (_keys!6289 thiss!1504)) (index!5749 lt!114057)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!226512 (=> (not res!111525) (not e!146980))))

(declare-fun c!37538 () Bool)

(declare-fun bm!21060 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21060 (= call!21064 (inRange!0 (ite c!37538 (index!5746 lt!114057) (index!5749 lt!114057)) (mask!10087 thiss!1504)))))

(declare-fun b!226513 () Bool)

(declare-fun e!146972 () Unit!6852)

(declare-fun lt!114062 () Unit!6852)

(assert (=> b!226513 (= e!146972 lt!114062)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!268 (array!11122 array!11120 (_ BitVec 32) (_ BitVec 32) V!7565 V!7565 (_ BitVec 64) Int) Unit!6852)

(assert (=> b!226513 (= lt!114062 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!268 (_keys!6289 thiss!1504) (_values!4218 thiss!1504) (mask!10087 thiss!1504) (extraKeys!3972 thiss!1504) (zeroValue!4076 thiss!1504) (minValue!4076 thiss!1504) key!932 (defaultEntry!4235 thiss!1504)))))

(assert (=> b!226513 (= c!37538 (is-MissingZero!894 lt!114057))))

(declare-fun e!146975 () Bool)

(assert (=> b!226513 e!146975))

(declare-fun b!226514 () Bool)

(declare-fun res!111528 () Bool)

(declare-fun e!146977 () Bool)

(assert (=> b!226514 (=> (not res!111528) (not e!146977))))

(assert (=> b!226514 (= res!111528 (= (select (arr!5280 (_keys!6289 thiss!1504)) (index!5746 lt!114057)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!226515 () Bool)

(declare-fun e!146974 () Bool)

(declare-fun e!146970 () Bool)

(declare-fun mapRes!10078 () Bool)

(assert (=> b!226515 (= e!146974 (and e!146970 mapRes!10078))))

(declare-fun condMapEmpty!10078 () Bool)

(declare-fun mapDefault!10078 () ValueCell!2626)

