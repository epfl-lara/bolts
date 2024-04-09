; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22006 () Bool)

(assert start!22006)

(declare-fun b!225932 () Bool)

(declare-fun b_free!6061 () Bool)

(declare-fun b_next!6061 () Bool)

(assert (=> b!225932 (= b_free!6061 (not b_next!6061))))

(declare-fun tp!21325 () Bool)

(declare-fun b_and!12977 () Bool)

(assert (=> b!225932 (= tp!21325 b_and!12977)))

(declare-fun mapNonEmpty!10054 () Bool)

(declare-fun mapRes!10054 () Bool)

(declare-fun tp!21324 () Bool)

(declare-fun e!146618 () Bool)

(assert (=> mapNonEmpty!10054 (= mapRes!10054 (and tp!21324 e!146618))))

(declare-fun mapKey!10054 () (_ BitVec 32))

(declare-datatypes ((V!7545 0))(
  ( (V!7546 (val!3006 Int)) )
))
(declare-datatypes ((ValueCell!2618 0))(
  ( (ValueCellFull!2618 (v!5022 V!7545)) (EmptyCell!2618) )
))
(declare-fun mapRest!10054 () (Array (_ BitVec 32) ValueCell!2618))

(declare-datatypes ((array!11088 0))(
  ( (array!11089 (arr!5263 (Array (_ BitVec 32) ValueCell!2618)) (size!5596 (_ BitVec 32))) )
))
(declare-datatypes ((array!11090 0))(
  ( (array!11091 (arr!5264 (Array (_ BitVec 32) (_ BitVec 64))) (size!5597 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3136 0))(
  ( (LongMapFixedSize!3137 (defaultEntry!4227 Int) (mask!10075 (_ BitVec 32)) (extraKeys!3964 (_ BitVec 32)) (zeroValue!4068 V!7545) (minValue!4068 V!7545) (_size!1617 (_ BitVec 32)) (_keys!6281 array!11090) (_values!4210 array!11088) (_vacant!1617 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3136)

(declare-fun mapValue!10054 () ValueCell!2618)

(assert (=> mapNonEmpty!10054 (= (arr!5263 (_values!4210 thiss!1504)) (store mapRest!10054 mapKey!10054 mapValue!10054))))

(declare-fun b!225908 () Bool)

(declare-datatypes ((Unit!6818 0))(
  ( (Unit!6819) )
))
(declare-fun e!146615 () Unit!6818)

(declare-fun lt!113798 () Unit!6818)

(assert (=> b!225908 (= e!146615 lt!113798)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!262 (array!11090 array!11088 (_ BitVec 32) (_ BitVec 32) V!7545 V!7545 (_ BitVec 64) Int) Unit!6818)

(assert (=> b!225908 (= lt!113798 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!262 (_keys!6281 thiss!1504) (_values!4210 thiss!1504) (mask!10075 thiss!1504) (extraKeys!3964 thiss!1504) (zeroValue!4068 thiss!1504) (minValue!4068 thiss!1504) key!932 (defaultEntry!4227 thiss!1504)))))

(declare-fun c!37442 () Bool)

(declare-datatypes ((SeekEntryResult!886 0))(
  ( (MissingZero!886 (index!5714 (_ BitVec 32))) (Found!886 (index!5715 (_ BitVec 32))) (Intermediate!886 (undefined!1698 Bool) (index!5716 (_ BitVec 32)) (x!23218 (_ BitVec 32))) (Undefined!886) (MissingVacant!886 (index!5717 (_ BitVec 32))) )
))
(declare-fun lt!113794 () SeekEntryResult!886)

(assert (=> b!225908 (= c!37442 (is-MissingZero!886 lt!113794))))

(declare-fun e!146613 () Bool)

(assert (=> b!225908 e!146613))

(declare-fun bm!21012 () Bool)

(declare-fun call!21015 () Bool)

(declare-fun arrayContainsKey!0 (array!11090 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21012 (= call!21015 (arrayContainsKey!0 (_keys!6281 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!10054 () Bool)

(assert (=> mapIsEmpty!10054 mapRes!10054))

(declare-fun b!225909 () Bool)

(declare-fun res!111220 () Bool)

(declare-fun e!146617 () Bool)

(assert (=> b!225909 (=> res!111220 e!146617)))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!225909 (= res!111220 (or (not (= (size!5597 (_keys!6281 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10075 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5597 (_keys!6281 thiss!1504)))))))

(declare-fun b!225910 () Bool)

(declare-fun res!111209 () Bool)

(assert (=> b!225910 (= res!111209 (= (select (arr!5264 (_keys!6281 thiss!1504)) (index!5717 lt!113794)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!146609 () Bool)

(assert (=> b!225910 (=> (not res!111209) (not e!146609))))

(declare-fun b!225912 () Bool)

(declare-fun Unit!6820 () Unit!6818)

(assert (=> b!225912 (= e!146615 Unit!6820)))

(declare-fun lt!113795 () Unit!6818)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!252 (array!11090 array!11088 (_ BitVec 32) (_ BitVec 32) V!7545 V!7545 (_ BitVec 64) Int) Unit!6818)

(assert (=> b!225912 (= lt!113795 (lemmaInListMapThenSeekEntryOrOpenFindsIt!252 (_keys!6281 thiss!1504) (_values!4210 thiss!1504) (mask!10075 thiss!1504) (extraKeys!3964 thiss!1504) (zeroValue!4068 thiss!1504) (minValue!4068 thiss!1504) key!932 (defaultEntry!4227 thiss!1504)))))

(assert (=> b!225912 false))

(declare-fun b!225913 () Bool)

(assert (=> b!225913 (= e!146617 true)))

(declare-fun lt!113792 () Bool)

(declare-datatypes ((List!3384 0))(
  ( (Nil!3381) (Cons!3380 (h!4028 (_ BitVec 64)) (t!8351 List!3384)) )
))
(declare-fun arrayNoDuplicates!0 (array!11090 (_ BitVec 32) List!3384) Bool)

(assert (=> b!225913 (= lt!113792 (arrayNoDuplicates!0 (_keys!6281 thiss!1504) #b00000000000000000000000000000000 Nil!3381))))

(declare-fun b!225914 () Bool)

(declare-fun res!111213 () Bool)

(declare-fun e!146608 () Bool)

(assert (=> b!225914 (=> (not res!111213) (not e!146608))))

(declare-fun call!21016 () Bool)

(assert (=> b!225914 (= res!111213 call!21016)))

(assert (=> b!225914 (= e!146613 e!146608)))

(declare-fun b!225915 () Bool)

(declare-fun res!111208 () Bool)

(assert (=> b!225915 (=> (not res!111208) (not e!146608))))

(assert (=> b!225915 (= res!111208 (= (select (arr!5264 (_keys!6281 thiss!1504)) (index!5714 lt!113794)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!225916 () Bool)

(declare-fun e!146619 () Bool)

(declare-fun tp_is_empty!5923 () Bool)

(assert (=> b!225916 (= e!146619 tp_is_empty!5923)))

(declare-fun b!225917 () Bool)

(declare-fun e!146611 () Unit!6818)

(declare-fun Unit!6821 () Unit!6818)

(assert (=> b!225917 (= e!146611 Unit!6821)))

(declare-fun lt!113802 () Unit!6818)

(declare-fun lemmaArrayContainsKeyThenInListMap!90 (array!11090 array!11088 (_ BitVec 32) (_ BitVec 32) V!7545 V!7545 (_ BitVec 64) (_ BitVec 32) Int) Unit!6818)

(assert (=> b!225917 (= lt!113802 (lemmaArrayContainsKeyThenInListMap!90 (_keys!6281 thiss!1504) (_values!4210 thiss!1504) (mask!10075 thiss!1504) (extraKeys!3964 thiss!1504) (zeroValue!4068 thiss!1504) (minValue!4068 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4227 thiss!1504)))))

(assert (=> b!225917 false))

(declare-fun b!225918 () Bool)

(declare-fun res!111211 () Bool)

(assert (=> b!225918 (=> res!111211 e!146617)))

(declare-fun lt!113800 () Bool)

(assert (=> b!225918 (= res!111211 lt!113800)))

(declare-fun b!225919 () Bool)

(assert (=> b!225919 (= e!146608 (not call!21015))))

(declare-fun b!225920 () Bool)

(declare-fun e!146607 () Bool)

(assert (=> b!225920 (= e!146607 (and e!146619 mapRes!10054))))

(declare-fun condMapEmpty!10054 () Bool)

(declare-fun mapDefault!10054 () ValueCell!2618)

