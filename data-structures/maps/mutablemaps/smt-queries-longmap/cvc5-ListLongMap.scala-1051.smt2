; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22000 () Bool)

(assert start!22000)

(declare-fun b!225683 () Bool)

(declare-fun b_free!6055 () Bool)

(declare-fun b_next!6055 () Bool)

(assert (=> b!225683 (= b_free!6055 (not b_next!6055))))

(declare-fun tp!21306 () Bool)

(declare-fun b_and!12971 () Bool)

(assert (=> b!225683 (= tp!21306 b_and!12971)))

(declare-fun e!146481 () Bool)

(declare-datatypes ((V!7537 0))(
  ( (V!7538 (val!3003 Int)) )
))
(declare-datatypes ((ValueCell!2615 0))(
  ( (ValueCellFull!2615 (v!5019 V!7537)) (EmptyCell!2615) )
))
(declare-datatypes ((array!11076 0))(
  ( (array!11077 (arr!5257 (Array (_ BitVec 32) ValueCell!2615)) (size!5590 (_ BitVec 32))) )
))
(declare-datatypes ((array!11078 0))(
  ( (array!11079 (arr!5258 (Array (_ BitVec 32) (_ BitVec 64))) (size!5591 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3130 0))(
  ( (LongMapFixedSize!3131 (defaultEntry!4224 Int) (mask!10070 (_ BitVec 32)) (extraKeys!3961 (_ BitVec 32)) (zeroValue!4065 V!7537) (minValue!4065 V!7537) (_size!1614 (_ BitVec 32)) (_keys!6278 array!11078) (_values!4207 array!11076) (_vacant!1614 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3130)

(declare-fun e!146477 () Bool)

(declare-fun tp_is_empty!5917 () Bool)

(declare-fun array_inv!3469 (array!11078) Bool)

(declare-fun array_inv!3470 (array!11076) Bool)

(assert (=> b!225683 (= e!146481 (and tp!21306 tp_is_empty!5917 (array_inv!3469 (_keys!6278 thiss!1504)) (array_inv!3470 (_values!4207 thiss!1504)) e!146477))))

(declare-fun b!225684 () Bool)

(declare-fun e!146476 () Bool)

(declare-fun e!146485 () Bool)

(assert (=> b!225684 (= e!146476 e!146485)))

(declare-fun res!111100 () Bool)

(assert (=> b!225684 (=> (not res!111100) (not e!146485))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!225684 (= res!111100 (inRange!0 index!297 (mask!10070 thiss!1504)))))

(declare-datatypes ((Unit!6806 0))(
  ( (Unit!6807) )
))
(declare-fun lt!113694 () Unit!6806)

(declare-fun e!146480 () Unit!6806)

(assert (=> b!225684 (= lt!113694 e!146480)))

(declare-fun c!37409 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4442 0))(
  ( (tuple2!4443 (_1!2231 (_ BitVec 64)) (_2!2231 V!7537)) )
))
(declare-datatypes ((List!3380 0))(
  ( (Nil!3377) (Cons!3376 (h!4024 tuple2!4442) (t!8347 List!3380)) )
))
(declare-datatypes ((ListLongMap!3369 0))(
  ( (ListLongMap!3370 (toList!1700 List!3380)) )
))
(declare-fun contains!1568 (ListLongMap!3369 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1223 (array!11078 array!11076 (_ BitVec 32) (_ BitVec 32) V!7537 V!7537 (_ BitVec 32) Int) ListLongMap!3369)

(assert (=> b!225684 (= c!37409 (contains!1568 (getCurrentListMap!1223 (_keys!6278 thiss!1504) (_values!4207 thiss!1504) (mask!10070 thiss!1504) (extraKeys!3961 thiss!1504) (zeroValue!4065 thiss!1504) (minValue!4065 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4224 thiss!1504)) key!932))))

(declare-fun b!225685 () Bool)

(declare-fun Unit!6808 () Unit!6806)

(assert (=> b!225685 (= e!146480 Unit!6808)))

(declare-fun lt!113703 () Unit!6806)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!250 (array!11078 array!11076 (_ BitVec 32) (_ BitVec 32) V!7537 V!7537 (_ BitVec 64) Int) Unit!6806)

(assert (=> b!225685 (= lt!113703 (lemmaInListMapThenSeekEntryOrOpenFindsIt!250 (_keys!6278 thiss!1504) (_values!4207 thiss!1504) (mask!10070 thiss!1504) (extraKeys!3961 thiss!1504) (zeroValue!4065 thiss!1504) (minValue!4065 thiss!1504) key!932 (defaultEntry!4224 thiss!1504)))))

(assert (=> b!225685 false))

(declare-fun b!225686 () Bool)

(declare-fun lt!113699 () Unit!6806)

(assert (=> b!225686 (= e!146480 lt!113699)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!260 (array!11078 array!11076 (_ BitVec 32) (_ BitVec 32) V!7537 V!7537 (_ BitVec 64) Int) Unit!6806)

(assert (=> b!225686 (= lt!113699 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!260 (_keys!6278 thiss!1504) (_values!4207 thiss!1504) (mask!10070 thiss!1504) (extraKeys!3961 thiss!1504) (zeroValue!4065 thiss!1504) (minValue!4065 thiss!1504) key!932 (defaultEntry!4224 thiss!1504)))))

(declare-fun c!37407 () Bool)

(declare-datatypes ((SeekEntryResult!883 0))(
  ( (MissingZero!883 (index!5702 (_ BitVec 32))) (Found!883 (index!5703 (_ BitVec 32))) (Intermediate!883 (undefined!1695 Bool) (index!5704 (_ BitVec 32)) (x!23207 (_ BitVec 32))) (Undefined!883) (MissingVacant!883 (index!5705 (_ BitVec 32))) )
))
(declare-fun lt!113701 () SeekEntryResult!883)

(assert (=> b!225686 (= c!37407 (is-MissingZero!883 lt!113701))))

(declare-fun e!146473 () Bool)

(assert (=> b!225686 e!146473))

(declare-fun b!225687 () Bool)

(declare-fun e!146479 () Unit!6806)

(declare-fun Unit!6809 () Unit!6806)

(assert (=> b!225687 (= e!146479 Unit!6809)))

(declare-fun b!225688 () Bool)

(declare-fun e!146482 () Bool)

(assert (=> b!225688 (= e!146485 (not e!146482))))

(declare-fun res!111099 () Bool)

(assert (=> b!225688 (=> res!111099 e!146482)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!225688 (= res!111099 (not (validMask!0 (mask!10070 thiss!1504))))))

(declare-fun lt!113695 () array!11078)

(declare-fun arrayCountValidKeys!0 (array!11078 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!225688 (= (arrayCountValidKeys!0 lt!113695 #b00000000000000000000000000000000 (size!5591 (_keys!6278 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6278 thiss!1504) #b00000000000000000000000000000000 (size!5591 (_keys!6278 thiss!1504)))))))

(declare-fun lt!113700 () Unit!6806)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11078 (_ BitVec 32) (_ BitVec 64)) Unit!6806)

(assert (=> b!225688 (= lt!113700 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6278 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3381 0))(
  ( (Nil!3378) (Cons!3377 (h!4025 (_ BitVec 64)) (t!8348 List!3381)) )
))
(declare-fun arrayNoDuplicates!0 (array!11078 (_ BitVec 32) List!3381) Bool)

(assert (=> b!225688 (arrayNoDuplicates!0 lt!113695 #b00000000000000000000000000000000 Nil!3378)))

(assert (=> b!225688 (= lt!113695 (array!11079 (store (arr!5258 (_keys!6278 thiss!1504)) index!297 key!932) (size!5591 (_keys!6278 thiss!1504))))))

(declare-fun lt!113693 () Unit!6806)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11078 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3381) Unit!6806)

(assert (=> b!225688 (= lt!113693 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6278 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3378))))

(declare-fun lt!113697 () Unit!6806)

(assert (=> b!225688 (= lt!113697 e!146479)))

(declare-fun c!37408 () Bool)

(declare-fun lt!113698 () Bool)

(assert (=> b!225688 (= c!37408 lt!113698)))

(declare-fun arrayContainsKey!0 (array!11078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!225688 (= lt!113698 (arrayContainsKey!0 (_keys!6278 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225689 () Bool)

(declare-fun e!146484 () Bool)

(assert (=> b!225689 (= e!146484 e!146476)))

(declare-fun res!111091 () Bool)

(assert (=> b!225689 (=> (not res!111091) (not e!146476))))

(assert (=> b!225689 (= res!111091 (or (= lt!113701 (MissingZero!883 index!297)) (= lt!113701 (MissingVacant!883 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11078 (_ BitVec 32)) SeekEntryResult!883)

(assert (=> b!225689 (= lt!113701 (seekEntryOrOpen!0 key!932 (_keys!6278 thiss!1504) (mask!10070 thiss!1504)))))

(declare-fun bm!20994 () Bool)

(declare-fun call!20998 () Bool)

(assert (=> bm!20994 (= call!20998 (inRange!0 (ite c!37407 (index!5702 lt!113701) (index!5705 lt!113701)) (mask!10070 thiss!1504)))))

(declare-fun b!225690 () Bool)

(declare-fun res!111095 () Bool)

(assert (=> b!225690 (=> res!111095 e!146482)))

(assert (=> b!225690 (= res!111095 lt!113698)))

(declare-fun mapNonEmpty!10045 () Bool)

(declare-fun mapRes!10045 () Bool)

(declare-fun tp!21307 () Bool)

(declare-fun e!146471 () Bool)

(assert (=> mapNonEmpty!10045 (= mapRes!10045 (and tp!21307 e!146471))))

(declare-fun mapValue!10045 () ValueCell!2615)

(declare-fun mapRest!10045 () (Array (_ BitVec 32) ValueCell!2615))

(declare-fun mapKey!10045 () (_ BitVec 32))

(assert (=> mapNonEmpty!10045 (= (arr!5257 (_values!4207 thiss!1504)) (store mapRest!10045 mapKey!10045 mapValue!10045))))

(declare-fun b!225691 () Bool)

(declare-fun res!111092 () Bool)

(assert (=> b!225691 (= res!111092 (= (select (arr!5258 (_keys!6278 thiss!1504)) (index!5705 lt!113701)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!146475 () Bool)

(assert (=> b!225691 (=> (not res!111092) (not e!146475))))

(declare-fun b!225692 () Bool)

(declare-fun e!146483 () Bool)

(assert (=> b!225692 (= e!146477 (and e!146483 mapRes!10045))))

(declare-fun condMapEmpty!10045 () Bool)

(declare-fun mapDefault!10045 () ValueCell!2615)

