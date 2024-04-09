; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21996 () Bool)

(assert start!21996)

(declare-fun b!225537 () Bool)

(declare-fun b_free!6051 () Bool)

(declare-fun b_next!6051 () Bool)

(assert (=> b!225537 (= b_free!6051 (not b_next!6051))))

(declare-fun tp!21294 () Bool)

(declare-fun b_and!12967 () Bool)

(assert (=> b!225537 (= tp!21294 b_and!12967)))

(declare-fun b!225533 () Bool)

(declare-datatypes ((Unit!6801 0))(
  ( (Unit!6802) )
))
(declare-fun e!146394 () Unit!6801)

(declare-fun Unit!6803 () Unit!6801)

(assert (=> b!225533 (= e!146394 Unit!6803)))

(declare-fun lt!113637 () Unit!6801)

(declare-datatypes ((V!7531 0))(
  ( (V!7532 (val!3001 Int)) )
))
(declare-datatypes ((ValueCell!2613 0))(
  ( (ValueCellFull!2613 (v!5017 V!7531)) (EmptyCell!2613) )
))
(declare-datatypes ((array!11068 0))(
  ( (array!11069 (arr!5253 (Array (_ BitVec 32) ValueCell!2613)) (size!5586 (_ BitVec 32))) )
))
(declare-datatypes ((array!11070 0))(
  ( (array!11071 (arr!5254 (Array (_ BitVec 32) (_ BitVec 64))) (size!5587 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3126 0))(
  ( (LongMapFixedSize!3127 (defaultEntry!4222 Int) (mask!10066 (_ BitVec 32)) (extraKeys!3959 (_ BitVec 32)) (zeroValue!4063 V!7531) (minValue!4063 V!7531) (_size!1612 (_ BitVec 32)) (_keys!6276 array!11070) (_values!4205 array!11068) (_vacant!1612 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3126)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!88 (array!11070 array!11068 (_ BitVec 32) (_ BitVec 32) V!7531 V!7531 (_ BitVec 64) (_ BitVec 32) Int) Unit!6801)

(assert (=> b!225533 (= lt!113637 (lemmaArrayContainsKeyThenInListMap!88 (_keys!6276 thiss!1504) (_values!4205 thiss!1504) (mask!10066 thiss!1504) (extraKeys!3959 thiss!1504) (zeroValue!4063 thiss!1504) (minValue!4063 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4222 thiss!1504)))))

(assert (=> b!225533 false))

(declare-fun b!225534 () Bool)

(declare-fun res!111025 () Bool)

(declare-fun e!146390 () Bool)

(assert (=> b!225534 (=> (not res!111025) (not e!146390))))

(declare-fun call!20985 () Bool)

(assert (=> b!225534 (= res!111025 call!20985)))

(declare-fun e!146384 () Bool)

(assert (=> b!225534 (= e!146384 e!146390)))

(declare-fun res!111022 () Bool)

(declare-fun e!146381 () Bool)

(assert (=> start!21996 (=> (not res!111022) (not e!146381))))

(declare-fun valid!1251 (LongMapFixedSize!3126) Bool)

(assert (=> start!21996 (= res!111022 (valid!1251 thiss!1504))))

(assert (=> start!21996 e!146381))

(declare-fun e!146392 () Bool)

(assert (=> start!21996 e!146392))

(assert (=> start!21996 true))

(declare-fun b!225535 () Bool)

(declare-fun e!146386 () Bool)

(assert (=> b!225535 (= e!146381 e!146386)))

(declare-fun res!111016 () Bool)

(assert (=> b!225535 (=> (not res!111016) (not e!146386))))

(declare-datatypes ((SeekEntryResult!881 0))(
  ( (MissingZero!881 (index!5694 (_ BitVec 32))) (Found!881 (index!5695 (_ BitVec 32))) (Intermediate!881 (undefined!1693 Bool) (index!5696 (_ BitVec 32)) (x!23197 (_ BitVec 32))) (Undefined!881) (MissingVacant!881 (index!5697 (_ BitVec 32))) )
))
(declare-fun lt!113628 () SeekEntryResult!881)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!225535 (= res!111016 (or (= lt!113628 (MissingZero!881 index!297)) (= lt!113628 (MissingVacant!881 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11070 (_ BitVec 32)) SeekEntryResult!881)

(assert (=> b!225535 (= lt!113628 (seekEntryOrOpen!0 key!932 (_keys!6276 thiss!1504) (mask!10066 thiss!1504)))))

(declare-fun b!225536 () Bool)

(declare-fun e!146393 () Unit!6801)

(declare-fun lt!113629 () Unit!6801)

(assert (=> b!225536 (= e!146393 lt!113629)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!259 (array!11070 array!11068 (_ BitVec 32) (_ BitVec 32) V!7531 V!7531 (_ BitVec 64) Int) Unit!6801)

(assert (=> b!225536 (= lt!113629 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!259 (_keys!6276 thiss!1504) (_values!4205 thiss!1504) (mask!10066 thiss!1504) (extraKeys!3959 thiss!1504) (zeroValue!4063 thiss!1504) (minValue!4063 thiss!1504) key!932 (defaultEntry!4222 thiss!1504)))))

(declare-fun c!37384 () Bool)

(get-info :version)

(assert (=> b!225536 (= c!37384 ((_ is MissingZero!881) lt!113628))))

(assert (=> b!225536 e!146384))

(declare-fun tp_is_empty!5913 () Bool)

(declare-fun e!146387 () Bool)

(declare-fun array_inv!3467 (array!11070) Bool)

(declare-fun array_inv!3468 (array!11068) Bool)

(assert (=> b!225537 (= e!146392 (and tp!21294 tp_is_empty!5913 (array_inv!3467 (_keys!6276 thiss!1504)) (array_inv!3468 (_values!4205 thiss!1504)) e!146387))))

(declare-fun b!225538 () Bool)

(declare-fun res!111015 () Bool)

(assert (=> b!225538 (= res!111015 (= (select (arr!5254 (_keys!6276 thiss!1504)) (index!5697 lt!113628)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!146385 () Bool)

(assert (=> b!225538 (=> (not res!111015) (not e!146385))))

(declare-fun b!225539 () Bool)

(declare-fun call!20986 () Bool)

(assert (=> b!225539 (= e!146385 (not call!20986))))

(declare-fun b!225540 () Bool)

(declare-fun Unit!6804 () Unit!6801)

(assert (=> b!225540 (= e!146394 Unit!6804)))

(declare-fun b!225541 () Bool)

(declare-fun e!146389 () Bool)

(declare-fun mapRes!10039 () Bool)

(assert (=> b!225541 (= e!146387 (and e!146389 mapRes!10039))))

(declare-fun condMapEmpty!10039 () Bool)

(declare-fun mapDefault!10039 () ValueCell!2613)

(assert (=> b!225541 (= condMapEmpty!10039 (= (arr!5253 (_values!4205 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2613)) mapDefault!10039)))))

(declare-fun b!225542 () Bool)

(declare-fun res!111024 () Bool)

(declare-fun e!146391 () Bool)

(assert (=> b!225542 (=> res!111024 e!146391)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!225542 (= res!111024 (not (validKeyInArray!0 key!932)))))

(declare-fun b!225543 () Bool)

(declare-fun e!146395 () Bool)

(assert (=> b!225543 (= e!146395 e!146385)))

(declare-fun res!111013 () Bool)

(assert (=> b!225543 (= res!111013 call!20985)))

(assert (=> b!225543 (=> (not res!111013) (not e!146385))))

(declare-fun b!225544 () Bool)

(declare-fun res!111023 () Bool)

(assert (=> b!225544 (=> res!111023 e!146391)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11070 (_ BitVec 32)) Bool)

(assert (=> b!225544 (= res!111023 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6276 thiss!1504) (mask!10066 thiss!1504))))))

(declare-fun b!225545 () Bool)

(assert (=> b!225545 (= e!146391 true)))

(declare-fun lt!113630 () Bool)

(declare-datatypes ((List!3377 0))(
  ( (Nil!3374) (Cons!3373 (h!4021 (_ BitVec 64)) (t!8344 List!3377)) )
))
(declare-fun arrayNoDuplicates!0 (array!11070 (_ BitVec 32) List!3377) Bool)

(assert (=> b!225545 (= lt!113630 (arrayNoDuplicates!0 (_keys!6276 thiss!1504) #b00000000000000000000000000000000 Nil!3374))))

(declare-fun bm!20982 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20982 (= call!20985 (inRange!0 (ite c!37384 (index!5694 lt!113628) (index!5697 lt!113628)) (mask!10066 thiss!1504)))))

(declare-fun b!225546 () Bool)

(declare-fun e!146382 () Bool)

(assert (=> b!225546 (= e!146386 e!146382)))

(declare-fun res!111014 () Bool)

(assert (=> b!225546 (=> (not res!111014) (not e!146382))))

(assert (=> b!225546 (= res!111014 (inRange!0 index!297 (mask!10066 thiss!1504)))))

(declare-fun lt!113635 () Unit!6801)

(assert (=> b!225546 (= lt!113635 e!146393)))

(declare-fun c!37382 () Bool)

(declare-datatypes ((tuple2!4440 0))(
  ( (tuple2!4441 (_1!2230 (_ BitVec 64)) (_2!2230 V!7531)) )
))
(declare-datatypes ((List!3378 0))(
  ( (Nil!3375) (Cons!3374 (h!4022 tuple2!4440) (t!8345 List!3378)) )
))
(declare-datatypes ((ListLongMap!3367 0))(
  ( (ListLongMap!3368 (toList!1699 List!3378)) )
))
(declare-fun contains!1567 (ListLongMap!3367 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1222 (array!11070 array!11068 (_ BitVec 32) (_ BitVec 32) V!7531 V!7531 (_ BitVec 32) Int) ListLongMap!3367)

(assert (=> b!225546 (= c!37382 (contains!1567 (getCurrentListMap!1222 (_keys!6276 thiss!1504) (_values!4205 thiss!1504) (mask!10066 thiss!1504) (extraKeys!3959 thiss!1504) (zeroValue!4063 thiss!1504) (minValue!4063 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4222 thiss!1504)) key!932))))

(declare-fun b!225547 () Bool)

(assert (=> b!225547 (= e!146382 (not e!146391))))

(declare-fun res!111020 () Bool)

(assert (=> b!225547 (=> res!111020 e!146391)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!225547 (= res!111020 (not (validMask!0 (mask!10066 thiss!1504))))))

(declare-fun lt!113631 () array!11070)

(declare-fun arrayCountValidKeys!0 (array!11070 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!225547 (= (arrayCountValidKeys!0 lt!113631 #b00000000000000000000000000000000 (size!5587 (_keys!6276 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6276 thiss!1504) #b00000000000000000000000000000000 (size!5587 (_keys!6276 thiss!1504)))))))

(declare-fun lt!113634 () Unit!6801)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11070 (_ BitVec 32) (_ BitVec 64)) Unit!6801)

(assert (=> b!225547 (= lt!113634 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6276 thiss!1504) index!297 key!932))))

(assert (=> b!225547 (arrayNoDuplicates!0 lt!113631 #b00000000000000000000000000000000 Nil!3374)))

(assert (=> b!225547 (= lt!113631 (array!11071 (store (arr!5254 (_keys!6276 thiss!1504)) index!297 key!932) (size!5587 (_keys!6276 thiss!1504))))))

(declare-fun lt!113632 () Unit!6801)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11070 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3377) Unit!6801)

(assert (=> b!225547 (= lt!113632 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6276 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3374))))

(declare-fun lt!113636 () Unit!6801)

(assert (=> b!225547 (= lt!113636 e!146394)))

(declare-fun c!37385 () Bool)

(declare-fun lt!113627 () Bool)

(assert (=> b!225547 (= c!37385 lt!113627)))

(declare-fun arrayContainsKey!0 (array!11070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!225547 (= lt!113627 (arrayContainsKey!0 (_keys!6276 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225548 () Bool)

(declare-fun c!37383 () Bool)

(assert (=> b!225548 (= c!37383 ((_ is MissingVacant!881) lt!113628))))

(assert (=> b!225548 (= e!146384 e!146395)))

(declare-fun b!225549 () Bool)

(assert (=> b!225549 (= e!146389 tp_is_empty!5913)))

(declare-fun b!225550 () Bool)

(declare-fun e!146388 () Bool)

(assert (=> b!225550 (= e!146388 tp_is_empty!5913)))

(declare-fun mapIsEmpty!10039 () Bool)

(assert (=> mapIsEmpty!10039 mapRes!10039))

(declare-fun b!225551 () Bool)

(declare-fun res!111021 () Bool)

(assert (=> b!225551 (=> res!111021 e!146391)))

(assert (=> b!225551 (= res!111021 (or (not (= (size!5587 (_keys!6276 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10066 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5587 (_keys!6276 thiss!1504)))))))

(declare-fun b!225552 () Bool)

(assert (=> b!225552 (= e!146395 ((_ is Undefined!881) lt!113628))))

(declare-fun b!225553 () Bool)

(declare-fun res!111019 () Bool)

(assert (=> b!225553 (=> (not res!111019) (not e!146381))))

(assert (=> b!225553 (= res!111019 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!10039 () Bool)

(declare-fun tp!21295 () Bool)

(assert (=> mapNonEmpty!10039 (= mapRes!10039 (and tp!21295 e!146388))))

(declare-fun mapKey!10039 () (_ BitVec 32))

(declare-fun mapValue!10039 () ValueCell!2613)

(declare-fun mapRest!10039 () (Array (_ BitVec 32) ValueCell!2613))

(assert (=> mapNonEmpty!10039 (= (arr!5253 (_values!4205 thiss!1504)) (store mapRest!10039 mapKey!10039 mapValue!10039))))

(declare-fun b!225554 () Bool)

(declare-fun Unit!6805 () Unit!6801)

(assert (=> b!225554 (= e!146393 Unit!6805)))

(declare-fun lt!113633 () Unit!6801)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!249 (array!11070 array!11068 (_ BitVec 32) (_ BitVec 32) V!7531 V!7531 (_ BitVec 64) Int) Unit!6801)

(assert (=> b!225554 (= lt!113633 (lemmaInListMapThenSeekEntryOrOpenFindsIt!249 (_keys!6276 thiss!1504) (_values!4205 thiss!1504) (mask!10066 thiss!1504) (extraKeys!3959 thiss!1504) (zeroValue!4063 thiss!1504) (minValue!4063 thiss!1504) key!932 (defaultEntry!4222 thiss!1504)))))

(assert (=> b!225554 false))

(declare-fun b!225555 () Bool)

(declare-fun res!111018 () Bool)

(assert (=> b!225555 (=> (not res!111018) (not e!146390))))

(assert (=> b!225555 (= res!111018 (= (select (arr!5254 (_keys!6276 thiss!1504)) (index!5694 lt!113628)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!225556 () Bool)

(assert (=> b!225556 (= e!146390 (not call!20986))))

(declare-fun bm!20983 () Bool)

(assert (=> bm!20983 (= call!20986 (arrayContainsKey!0 (_keys!6276 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225557 () Bool)

(declare-fun res!111017 () Bool)

(assert (=> b!225557 (=> res!111017 e!146391)))

(assert (=> b!225557 (= res!111017 lt!113627)))

(assert (= (and start!21996 res!111022) b!225553))

(assert (= (and b!225553 res!111019) b!225535))

(assert (= (and b!225535 res!111016) b!225546))

(assert (= (and b!225546 c!37382) b!225554))

(assert (= (and b!225546 (not c!37382)) b!225536))

(assert (= (and b!225536 c!37384) b!225534))

(assert (= (and b!225536 (not c!37384)) b!225548))

(assert (= (and b!225534 res!111025) b!225555))

(assert (= (and b!225555 res!111018) b!225556))

(assert (= (and b!225548 c!37383) b!225543))

(assert (= (and b!225548 (not c!37383)) b!225552))

(assert (= (and b!225543 res!111013) b!225538))

(assert (= (and b!225538 res!111015) b!225539))

(assert (= (or b!225534 b!225543) bm!20982))

(assert (= (or b!225556 b!225539) bm!20983))

(assert (= (and b!225546 res!111014) b!225547))

(assert (= (and b!225547 c!37385) b!225533))

(assert (= (and b!225547 (not c!37385)) b!225540))

(assert (= (and b!225547 (not res!111020)) b!225551))

(assert (= (and b!225551 (not res!111021)) b!225542))

(assert (= (and b!225542 (not res!111024)) b!225557))

(assert (= (and b!225557 (not res!111017)) b!225544))

(assert (= (and b!225544 (not res!111023)) b!225545))

(assert (= (and b!225541 condMapEmpty!10039) mapIsEmpty!10039))

(assert (= (and b!225541 (not condMapEmpty!10039)) mapNonEmpty!10039))

(assert (= (and mapNonEmpty!10039 ((_ is ValueCellFull!2613) mapValue!10039)) b!225550))

(assert (= (and b!225541 ((_ is ValueCellFull!2613) mapDefault!10039)) b!225549))

(assert (= b!225537 b!225541))

(assert (= start!21996 b!225537))

(declare-fun m!248127 () Bool)

(assert (=> b!225536 m!248127))

(declare-fun m!248129 () Bool)

(assert (=> b!225544 m!248129))

(declare-fun m!248131 () Bool)

(assert (=> bm!20983 m!248131))

(declare-fun m!248133 () Bool)

(assert (=> b!225533 m!248133))

(declare-fun m!248135 () Bool)

(assert (=> b!225555 m!248135))

(declare-fun m!248137 () Bool)

(assert (=> b!225542 m!248137))

(declare-fun m!248139 () Bool)

(assert (=> b!225538 m!248139))

(declare-fun m!248141 () Bool)

(assert (=> b!225545 m!248141))

(declare-fun m!248143 () Bool)

(assert (=> b!225535 m!248143))

(declare-fun m!248145 () Bool)

(assert (=> start!21996 m!248145))

(declare-fun m!248147 () Bool)

(assert (=> b!225547 m!248147))

(assert (=> b!225547 m!248131))

(declare-fun m!248149 () Bool)

(assert (=> b!225547 m!248149))

(declare-fun m!248151 () Bool)

(assert (=> b!225547 m!248151))

(declare-fun m!248153 () Bool)

(assert (=> b!225547 m!248153))

(declare-fun m!248155 () Bool)

(assert (=> b!225547 m!248155))

(declare-fun m!248157 () Bool)

(assert (=> b!225547 m!248157))

(declare-fun m!248159 () Bool)

(assert (=> b!225547 m!248159))

(declare-fun m!248161 () Bool)

(assert (=> mapNonEmpty!10039 m!248161))

(declare-fun m!248163 () Bool)

(assert (=> b!225537 m!248163))

(declare-fun m!248165 () Bool)

(assert (=> b!225537 m!248165))

(declare-fun m!248167 () Bool)

(assert (=> bm!20982 m!248167))

(declare-fun m!248169 () Bool)

(assert (=> b!225554 m!248169))

(declare-fun m!248171 () Bool)

(assert (=> b!225546 m!248171))

(declare-fun m!248173 () Bool)

(assert (=> b!225546 m!248173))

(assert (=> b!225546 m!248173))

(declare-fun m!248175 () Bool)

(assert (=> b!225546 m!248175))

(check-sat (not b!225535) (not bm!20983) tp_is_empty!5913 (not b!225546) (not b!225537) (not b!225554) (not b_next!6051) (not b!225536) (not b!225533) (not b!225547) (not bm!20982) b_and!12967 (not b!225544) (not b!225542) (not mapNonEmpty!10039) (not start!21996) (not b!225545))
(check-sat b_and!12967 (not b_next!6051))
