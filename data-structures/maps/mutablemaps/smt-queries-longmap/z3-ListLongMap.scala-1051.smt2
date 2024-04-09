; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22002 () Bool)

(assert start!22002)

(declare-fun b!225773 () Bool)

(declare-fun b_free!6057 () Bool)

(declare-fun b_next!6057 () Bool)

(assert (=> b!225773 (= b_free!6057 (not b_next!6057))))

(declare-fun tp!21312 () Bool)

(declare-fun b_and!12973 () Bool)

(assert (=> b!225773 (= tp!21312 b_and!12973)))

(declare-fun b!225758 () Bool)

(declare-fun c!37421 () Bool)

(declare-datatypes ((SeekEntryResult!884 0))(
  ( (MissingZero!884 (index!5706 (_ BitVec 32))) (Found!884 (index!5707 (_ BitVec 32))) (Intermediate!884 (undefined!1696 Bool) (index!5708 (_ BitVec 32)) (x!23208 (_ BitVec 32))) (Undefined!884) (MissingVacant!884 (index!5709 (_ BitVec 32))) )
))
(declare-fun lt!113726 () SeekEntryResult!884)

(get-info :version)

(assert (=> b!225758 (= c!37421 ((_ is MissingVacant!884) lt!113726))))

(declare-fun e!146519 () Bool)

(declare-fun e!146528 () Bool)

(assert (=> b!225758 (= e!146519 e!146528)))

(declare-fun b!225759 () Bool)

(declare-fun res!111140 () Bool)

(declare-fun e!146521 () Bool)

(assert (=> b!225759 (=> (not res!111140) (not e!146521))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!225759 (= res!111140 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!225760 () Bool)

(declare-fun res!111132 () Bool)

(declare-fun e!146520 () Bool)

(assert (=> b!225760 (=> res!111132 e!146520)))

(declare-datatypes ((V!7539 0))(
  ( (V!7540 (val!3004 Int)) )
))
(declare-datatypes ((ValueCell!2616 0))(
  ( (ValueCellFull!2616 (v!5020 V!7539)) (EmptyCell!2616) )
))
(declare-datatypes ((array!11080 0))(
  ( (array!11081 (arr!5259 (Array (_ BitVec 32) ValueCell!2616)) (size!5592 (_ BitVec 32))) )
))
(declare-datatypes ((array!11082 0))(
  ( (array!11083 (arr!5260 (Array (_ BitVec 32) (_ BitVec 64))) (size!5593 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3132 0))(
  ( (LongMapFixedSize!3133 (defaultEntry!4225 Int) (mask!10071 (_ BitVec 32)) (extraKeys!3962 (_ BitVec 32)) (zeroValue!4066 V!7539) (minValue!4066 V!7539) (_size!1615 (_ BitVec 32)) (_keys!6279 array!11082) (_values!4208 array!11080) (_vacant!1615 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3132)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!225760 (= res!111132 (or (not (= (size!5593 (_keys!6279 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10071 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5593 (_keys!6279 thiss!1504)))))))

(declare-fun mapIsEmpty!10048 () Bool)

(declare-fun mapRes!10048 () Bool)

(assert (=> mapIsEmpty!10048 mapRes!10048))

(declare-fun b!225762 () Bool)

(assert (=> b!225762 (= e!146528 ((_ is Undefined!884) lt!113726))))

(declare-fun b!225763 () Bool)

(declare-datatypes ((Unit!6810 0))(
  ( (Unit!6811) )
))
(declare-fun e!146517 () Unit!6810)

(declare-fun Unit!6812 () Unit!6810)

(assert (=> b!225763 (= e!146517 Unit!6812)))

(declare-fun lt!113734 () Unit!6810)

(declare-fun lemmaArrayContainsKeyThenInListMap!89 (array!11082 array!11080 (_ BitVec 32) (_ BitVec 32) V!7539 V!7539 (_ BitVec 64) (_ BitVec 32) Int) Unit!6810)

(assert (=> b!225763 (= lt!113734 (lemmaArrayContainsKeyThenInListMap!89 (_keys!6279 thiss!1504) (_values!4208 thiss!1504) (mask!10071 thiss!1504) (extraKeys!3962 thiss!1504) (zeroValue!4066 thiss!1504) (minValue!4066 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4225 thiss!1504)))))

(assert (=> b!225763 false))

(declare-fun b!225764 () Bool)

(declare-fun e!146530 () Bool)

(assert (=> b!225764 (= e!146530 (not e!146520))))

(declare-fun res!111130 () Bool)

(assert (=> b!225764 (=> res!111130 e!146520)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!225764 (= res!111130 (not (validMask!0 (mask!10071 thiss!1504))))))

(declare-fun lt!113729 () array!11082)

(declare-fun arrayCountValidKeys!0 (array!11082 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!225764 (= (arrayCountValidKeys!0 lt!113729 #b00000000000000000000000000000000 (size!5593 (_keys!6279 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6279 thiss!1504) #b00000000000000000000000000000000 (size!5593 (_keys!6279 thiss!1504)))))))

(declare-fun lt!113728 () Unit!6810)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11082 (_ BitVec 32) (_ BitVec 64)) Unit!6810)

(assert (=> b!225764 (= lt!113728 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6279 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3382 0))(
  ( (Nil!3379) (Cons!3378 (h!4026 (_ BitVec 64)) (t!8349 List!3382)) )
))
(declare-fun arrayNoDuplicates!0 (array!11082 (_ BitVec 32) List!3382) Bool)

(assert (=> b!225764 (arrayNoDuplicates!0 lt!113729 #b00000000000000000000000000000000 Nil!3379)))

(assert (=> b!225764 (= lt!113729 (array!11083 (store (arr!5260 (_keys!6279 thiss!1504)) index!297 key!932) (size!5593 (_keys!6279 thiss!1504))))))

(declare-fun lt!113731 () Unit!6810)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11082 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3382) Unit!6810)

(assert (=> b!225764 (= lt!113731 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6279 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3379))))

(declare-fun lt!113727 () Unit!6810)

(assert (=> b!225764 (= lt!113727 e!146517)))

(declare-fun c!37420 () Bool)

(declare-fun lt!113736 () Bool)

(assert (=> b!225764 (= c!37420 lt!113736)))

(declare-fun arrayContainsKey!0 (array!11082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!225764 (= lt!113736 (arrayContainsKey!0 (_keys!6279 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225765 () Bool)

(declare-fun res!111141 () Bool)

(assert (=> b!225765 (= res!111141 (= (select (arr!5260 (_keys!6279 thiss!1504)) (index!5709 lt!113726)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!146525 () Bool)

(assert (=> b!225765 (=> (not res!111141) (not e!146525))))

(declare-fun bm!21000 () Bool)

(declare-fun call!21004 () Bool)

(assert (=> bm!21000 (= call!21004 (arrayContainsKey!0 (_keys!6279 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225766 () Bool)

(declare-fun res!111134 () Bool)

(declare-fun e!146524 () Bool)

(assert (=> b!225766 (=> (not res!111134) (not e!146524))))

(declare-fun call!21003 () Bool)

(assert (=> b!225766 (= res!111134 call!21003)))

(assert (=> b!225766 (= e!146519 e!146524)))

(declare-fun b!225767 () Bool)

(declare-fun e!146527 () Unit!6810)

(declare-fun lt!113735 () Unit!6810)

(assert (=> b!225767 (= e!146527 lt!113735)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!261 (array!11082 array!11080 (_ BitVec 32) (_ BitVec 32) V!7539 V!7539 (_ BitVec 64) Int) Unit!6810)

(assert (=> b!225767 (= lt!113735 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!261 (_keys!6279 thiss!1504) (_values!4208 thiss!1504) (mask!10071 thiss!1504) (extraKeys!3962 thiss!1504) (zeroValue!4066 thiss!1504) (minValue!4066 thiss!1504) key!932 (defaultEntry!4225 thiss!1504)))))

(declare-fun c!37418 () Bool)

(assert (=> b!225767 (= c!37418 ((_ is MissingZero!884) lt!113726))))

(assert (=> b!225767 e!146519))

(declare-fun b!225768 () Bool)

(declare-fun e!146526 () Bool)

(declare-fun tp_is_empty!5919 () Bool)

(assert (=> b!225768 (= e!146526 tp_is_empty!5919)))

(declare-fun b!225769 () Bool)

(declare-fun Unit!6813 () Unit!6810)

(assert (=> b!225769 (= e!146517 Unit!6813)))

(declare-fun b!225770 () Bool)

(declare-fun e!146522 () Bool)

(assert (=> b!225770 (= e!146522 (and e!146526 mapRes!10048))))

(declare-fun condMapEmpty!10048 () Bool)

(declare-fun mapDefault!10048 () ValueCell!2616)

(assert (=> b!225770 (= condMapEmpty!10048 (= (arr!5259 (_values!4208 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2616)) mapDefault!10048)))))

(declare-fun b!225771 () Bool)

(declare-fun res!111142 () Bool)

(assert (=> b!225771 (=> res!111142 e!146520)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!225771 (= res!111142 (not (validKeyInArray!0 key!932)))))

(declare-fun b!225772 () Bool)

(declare-fun e!146516 () Bool)

(assert (=> b!225772 (= e!146521 e!146516)))

(declare-fun res!111136 () Bool)

(assert (=> b!225772 (=> (not res!111136) (not e!146516))))

(assert (=> b!225772 (= res!111136 (or (= lt!113726 (MissingZero!884 index!297)) (= lt!113726 (MissingVacant!884 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11082 (_ BitVec 32)) SeekEntryResult!884)

(assert (=> b!225772 (= lt!113726 (seekEntryOrOpen!0 key!932 (_keys!6279 thiss!1504) (mask!10071 thiss!1504)))))

(declare-fun res!111133 () Bool)

(assert (=> start!22002 (=> (not res!111133) (not e!146521))))

(declare-fun valid!1253 (LongMapFixedSize!3132) Bool)

(assert (=> start!22002 (= res!111133 (valid!1253 thiss!1504))))

(assert (=> start!22002 e!146521))

(declare-fun e!146523 () Bool)

(assert (=> start!22002 e!146523))

(assert (=> start!22002 true))

(declare-fun b!225761 () Bool)

(assert (=> b!225761 (= e!146524 (not call!21004))))

(declare-fun array_inv!3471 (array!11082) Bool)

(declare-fun array_inv!3472 (array!11080) Bool)

(assert (=> b!225773 (= e!146523 (and tp!21312 tp_is_empty!5919 (array_inv!3471 (_keys!6279 thiss!1504)) (array_inv!3472 (_values!4208 thiss!1504)) e!146522))))

(declare-fun bm!21001 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21001 (= call!21003 (inRange!0 (ite c!37418 (index!5706 lt!113726) (index!5709 lt!113726)) (mask!10071 thiss!1504)))))

(declare-fun b!225774 () Bool)

(declare-fun res!111137 () Bool)

(assert (=> b!225774 (=> (not res!111137) (not e!146524))))

(assert (=> b!225774 (= res!111137 (= (select (arr!5260 (_keys!6279 thiss!1504)) (index!5706 lt!113726)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!225775 () Bool)

(declare-fun res!111135 () Bool)

(assert (=> b!225775 (=> res!111135 e!146520)))

(assert (=> b!225775 (= res!111135 lt!113736)))

(declare-fun b!225776 () Bool)

(assert (=> b!225776 (= e!146520 true)))

(declare-fun lt!113733 () Bool)

(assert (=> b!225776 (= lt!113733 (arrayNoDuplicates!0 (_keys!6279 thiss!1504) #b00000000000000000000000000000000 Nil!3379))))

(declare-fun b!225777 () Bool)

(assert (=> b!225777 (= e!146528 e!146525)))

(declare-fun res!111138 () Bool)

(assert (=> b!225777 (= res!111138 call!21003)))

(assert (=> b!225777 (=> (not res!111138) (not e!146525))))

(declare-fun b!225778 () Bool)

(declare-fun e!146529 () Bool)

(assert (=> b!225778 (= e!146529 tp_is_empty!5919)))

(declare-fun b!225779 () Bool)

(assert (=> b!225779 (= e!146516 e!146530)))

(declare-fun res!111131 () Bool)

(assert (=> b!225779 (=> (not res!111131) (not e!146530))))

(assert (=> b!225779 (= res!111131 (inRange!0 index!297 (mask!10071 thiss!1504)))))

(declare-fun lt!113730 () Unit!6810)

(assert (=> b!225779 (= lt!113730 e!146527)))

(declare-fun c!37419 () Bool)

(declare-datatypes ((tuple2!4444 0))(
  ( (tuple2!4445 (_1!2232 (_ BitVec 64)) (_2!2232 V!7539)) )
))
(declare-datatypes ((List!3383 0))(
  ( (Nil!3380) (Cons!3379 (h!4027 tuple2!4444) (t!8350 List!3383)) )
))
(declare-datatypes ((ListLongMap!3371 0))(
  ( (ListLongMap!3372 (toList!1701 List!3383)) )
))
(declare-fun contains!1569 (ListLongMap!3371 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1224 (array!11082 array!11080 (_ BitVec 32) (_ BitVec 32) V!7539 V!7539 (_ BitVec 32) Int) ListLongMap!3371)

(assert (=> b!225779 (= c!37419 (contains!1569 (getCurrentListMap!1224 (_keys!6279 thiss!1504) (_values!4208 thiss!1504) (mask!10071 thiss!1504) (extraKeys!3962 thiss!1504) (zeroValue!4066 thiss!1504) (minValue!4066 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4225 thiss!1504)) key!932))))

(declare-fun b!225780 () Bool)

(declare-fun res!111139 () Bool)

(assert (=> b!225780 (=> res!111139 e!146520)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11082 (_ BitVec 32)) Bool)

(assert (=> b!225780 (= res!111139 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6279 thiss!1504) (mask!10071 thiss!1504))))))

(declare-fun b!225781 () Bool)

(assert (=> b!225781 (= e!146525 (not call!21004))))

(declare-fun mapNonEmpty!10048 () Bool)

(declare-fun tp!21313 () Bool)

(assert (=> mapNonEmpty!10048 (= mapRes!10048 (and tp!21313 e!146529))))

(declare-fun mapKey!10048 () (_ BitVec 32))

(declare-fun mapRest!10048 () (Array (_ BitVec 32) ValueCell!2616))

(declare-fun mapValue!10048 () ValueCell!2616)

(assert (=> mapNonEmpty!10048 (= (arr!5259 (_values!4208 thiss!1504)) (store mapRest!10048 mapKey!10048 mapValue!10048))))

(declare-fun b!225782 () Bool)

(declare-fun Unit!6814 () Unit!6810)

(assert (=> b!225782 (= e!146527 Unit!6814)))

(declare-fun lt!113732 () Unit!6810)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!251 (array!11082 array!11080 (_ BitVec 32) (_ BitVec 32) V!7539 V!7539 (_ BitVec 64) Int) Unit!6810)

(assert (=> b!225782 (= lt!113732 (lemmaInListMapThenSeekEntryOrOpenFindsIt!251 (_keys!6279 thiss!1504) (_values!4208 thiss!1504) (mask!10071 thiss!1504) (extraKeys!3962 thiss!1504) (zeroValue!4066 thiss!1504) (minValue!4066 thiss!1504) key!932 (defaultEntry!4225 thiss!1504)))))

(assert (=> b!225782 false))

(assert (= (and start!22002 res!111133) b!225759))

(assert (= (and b!225759 res!111140) b!225772))

(assert (= (and b!225772 res!111136) b!225779))

(assert (= (and b!225779 c!37419) b!225782))

(assert (= (and b!225779 (not c!37419)) b!225767))

(assert (= (and b!225767 c!37418) b!225766))

(assert (= (and b!225767 (not c!37418)) b!225758))

(assert (= (and b!225766 res!111134) b!225774))

(assert (= (and b!225774 res!111137) b!225761))

(assert (= (and b!225758 c!37421) b!225777))

(assert (= (and b!225758 (not c!37421)) b!225762))

(assert (= (and b!225777 res!111138) b!225765))

(assert (= (and b!225765 res!111141) b!225781))

(assert (= (or b!225766 b!225777) bm!21001))

(assert (= (or b!225761 b!225781) bm!21000))

(assert (= (and b!225779 res!111131) b!225764))

(assert (= (and b!225764 c!37420) b!225763))

(assert (= (and b!225764 (not c!37420)) b!225769))

(assert (= (and b!225764 (not res!111130)) b!225760))

(assert (= (and b!225760 (not res!111132)) b!225771))

(assert (= (and b!225771 (not res!111142)) b!225775))

(assert (= (and b!225775 (not res!111135)) b!225780))

(assert (= (and b!225780 (not res!111139)) b!225776))

(assert (= (and b!225770 condMapEmpty!10048) mapIsEmpty!10048))

(assert (= (and b!225770 (not condMapEmpty!10048)) mapNonEmpty!10048))

(assert (= (and mapNonEmpty!10048 ((_ is ValueCellFull!2616) mapValue!10048)) b!225778))

(assert (= (and b!225770 ((_ is ValueCellFull!2616) mapDefault!10048)) b!225768))

(assert (= b!225773 b!225770))

(assert (= start!22002 b!225773))

(declare-fun m!248277 () Bool)

(assert (=> b!225774 m!248277))

(declare-fun m!248279 () Bool)

(assert (=> b!225764 m!248279))

(declare-fun m!248281 () Bool)

(assert (=> b!225764 m!248281))

(declare-fun m!248283 () Bool)

(assert (=> b!225764 m!248283))

(declare-fun m!248285 () Bool)

(assert (=> b!225764 m!248285))

(declare-fun m!248287 () Bool)

(assert (=> b!225764 m!248287))

(declare-fun m!248289 () Bool)

(assert (=> b!225764 m!248289))

(declare-fun m!248291 () Bool)

(assert (=> b!225764 m!248291))

(declare-fun m!248293 () Bool)

(assert (=> b!225764 m!248293))

(declare-fun m!248295 () Bool)

(assert (=> b!225763 m!248295))

(declare-fun m!248297 () Bool)

(assert (=> bm!21001 m!248297))

(declare-fun m!248299 () Bool)

(assert (=> mapNonEmpty!10048 m!248299))

(declare-fun m!248301 () Bool)

(assert (=> b!225782 m!248301))

(declare-fun m!248303 () Bool)

(assert (=> b!225771 m!248303))

(declare-fun m!248305 () Bool)

(assert (=> b!225779 m!248305))

(declare-fun m!248307 () Bool)

(assert (=> b!225779 m!248307))

(assert (=> b!225779 m!248307))

(declare-fun m!248309 () Bool)

(assert (=> b!225779 m!248309))

(declare-fun m!248311 () Bool)

(assert (=> b!225773 m!248311))

(declare-fun m!248313 () Bool)

(assert (=> b!225773 m!248313))

(declare-fun m!248315 () Bool)

(assert (=> start!22002 m!248315))

(declare-fun m!248317 () Bool)

(assert (=> b!225765 m!248317))

(assert (=> bm!21000 m!248281))

(declare-fun m!248319 () Bool)

(assert (=> b!225780 m!248319))

(declare-fun m!248321 () Bool)

(assert (=> b!225776 m!248321))

(declare-fun m!248323 () Bool)

(assert (=> b!225767 m!248323))

(declare-fun m!248325 () Bool)

(assert (=> b!225772 m!248325))

(check-sat tp_is_empty!5919 (not b_next!6057) (not mapNonEmpty!10048) (not b!225782) (not b!225773) (not b!225776) b_and!12973 (not b!225763) (not b!225779) (not b!225764) (not b!225771) (not b!225780) (not bm!21001) (not start!22002) (not b!225772) (not bm!21000) (not b!225767))
(check-sat b_and!12973 (not b_next!6057))
