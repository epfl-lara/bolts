; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23228 () Bool)

(assert start!23228)

(declare-fun b!243659 () Bool)

(declare-fun b_free!6527 () Bool)

(declare-fun b_next!6527 () Bool)

(assert (=> b!243659 (= b_free!6527 (not b_next!6527))))

(declare-fun tp!22803 () Bool)

(declare-fun b_and!13527 () Bool)

(assert (=> b!243659 (= tp!22803 b_and!13527)))

(declare-fun b!243635 () Bool)

(declare-fun res!119453 () Bool)

(declare-fun e!158134 () Bool)

(assert (=> b!243635 (=> (not res!119453) (not e!158134))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!243635 (= res!119453 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!243636 () Bool)

(declare-fun res!119459 () Bool)

(declare-fun e!158130 () Bool)

(assert (=> b!243636 (=> (not res!119459) (not e!158130))))

(declare-fun call!22722 () Bool)

(assert (=> b!243636 (= res!119459 call!22722)))

(declare-fun e!158124 () Bool)

(assert (=> b!243636 (= e!158124 e!158130)))

(declare-fun b!243637 () Bool)

(declare-fun c!40657 () Bool)

(declare-datatypes ((SeekEntryResult!1084 0))(
  ( (MissingZero!1084 (index!6506 (_ BitVec 32))) (Found!1084 (index!6507 (_ BitVec 32))) (Intermediate!1084 (undefined!1896 Bool) (index!6508 (_ BitVec 32)) (x!24344 (_ BitVec 32))) (Undefined!1084) (MissingVacant!1084 (index!6509 (_ BitVec 32))) )
))
(declare-fun lt!122281 () SeekEntryResult!1084)

(assert (=> b!243637 (= c!40657 (is-MissingVacant!1084 lt!122281))))

(declare-fun e!158128 () Bool)

(assert (=> b!243637 (= e!158124 e!158128)))

(declare-fun b!243638 () Bool)

(assert (=> b!243638 (= e!158128 (is-Undefined!1084 lt!122281))))

(declare-fun bm!22719 () Bool)

(declare-fun call!22723 () Bool)

(declare-datatypes ((V!8165 0))(
  ( (V!8166 (val!3239 Int)) )
))
(declare-datatypes ((ValueCell!2851 0))(
  ( (ValueCellFull!2851 (v!5282 V!8165)) (EmptyCell!2851) )
))
(declare-datatypes ((array!12068 0))(
  ( (array!12069 (arr!5729 (Array (_ BitVec 32) ValueCell!2851)) (size!6071 (_ BitVec 32))) )
))
(declare-datatypes ((array!12070 0))(
  ( (array!12071 (arr!5730 (Array (_ BitVec 32) (_ BitVec 64))) (size!6072 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3602 0))(
  ( (LongMapFixedSize!3603 (defaultEntry!4514 Int) (mask!10607 (_ BitVec 32)) (extraKeys!4251 (_ BitVec 32)) (zeroValue!4355 V!8165) (minValue!4355 V!8165) (_size!1850 (_ BitVec 32)) (_keys!6625 array!12070) (_values!4497 array!12068) (_vacant!1850 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3602)

(declare-fun arrayContainsKey!0 (array!12070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22719 (= call!22723 (arrayContainsKey!0 (_keys!6625 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!243639 () Bool)

(declare-fun res!119457 () Bool)

(declare-fun e!158118 () Bool)

(assert (=> b!243639 (=> (not res!119457) (not e!158118))))

(declare-datatypes ((List!3669 0))(
  ( (Nil!3666) (Cons!3665 (h!4322 (_ BitVec 64)) (t!8684 List!3669)) )
))
(declare-fun noDuplicate!98 (List!3669) Bool)

(assert (=> b!243639 (= res!119457 (noDuplicate!98 Nil!3666))))

(declare-fun b!243640 () Bool)

(declare-datatypes ((Unit!7515 0))(
  ( (Unit!7516) )
))
(declare-fun e!158123 () Unit!7515)

(declare-fun Unit!7517 () Unit!7515)

(assert (=> b!243640 (= e!158123 Unit!7517)))

(declare-fun lt!122284 () Unit!7515)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!362 (array!12070 array!12068 (_ BitVec 32) (_ BitVec 32) V!8165 V!8165 (_ BitVec 64) Int) Unit!7515)

(assert (=> b!243640 (= lt!122284 (lemmaInListMapThenSeekEntryOrOpenFindsIt!362 (_keys!6625 thiss!1504) (_values!4497 thiss!1504) (mask!10607 thiss!1504) (extraKeys!4251 thiss!1504) (zeroValue!4355 thiss!1504) (minValue!4355 thiss!1504) key!932 (defaultEntry!4514 thiss!1504)))))

(assert (=> b!243640 false))

(declare-fun mapNonEmpty!10834 () Bool)

(declare-fun mapRes!10834 () Bool)

(declare-fun tp!22804 () Bool)

(declare-fun e!158122 () Bool)

(assert (=> mapNonEmpty!10834 (= mapRes!10834 (and tp!22804 e!158122))))

(declare-fun mapValue!10834 () ValueCell!2851)

(declare-fun mapRest!10834 () (Array (_ BitVec 32) ValueCell!2851))

(declare-fun mapKey!10834 () (_ BitVec 32))

(assert (=> mapNonEmpty!10834 (= (arr!5729 (_values!4497 thiss!1504)) (store mapRest!10834 mapKey!10834 mapValue!10834))))

(declare-fun b!243641 () Bool)

(declare-fun e!158133 () Bool)

(declare-fun e!158125 () Bool)

(assert (=> b!243641 (= e!158133 (and e!158125 mapRes!10834))))

(declare-fun condMapEmpty!10834 () Bool)

(declare-fun mapDefault!10834 () ValueCell!2851)

