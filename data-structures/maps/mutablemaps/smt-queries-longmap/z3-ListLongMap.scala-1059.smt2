; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22050 () Bool)

(assert start!22050)

(declare-fun b!227506 () Bool)

(declare-fun b_free!6105 () Bool)

(declare-fun b_next!6105 () Bool)

(assert (=> b!227506 (= b_free!6105 (not b_next!6105))))

(declare-fun tp!21457 () Bool)

(declare-fun b_and!13021 () Bool)

(assert (=> b!227506 (= tp!21457 b_and!13021)))

(declare-fun b!227494 () Bool)

(declare-fun e!147609 () Bool)

(declare-fun e!147610 () Bool)

(declare-fun mapRes!10120 () Bool)

(assert (=> b!227494 (= e!147609 (and e!147610 mapRes!10120))))

(declare-fun condMapEmpty!10120 () Bool)

(declare-datatypes ((V!7603 0))(
  ( (V!7604 (val!3028 Int)) )
))
(declare-datatypes ((ValueCell!2640 0))(
  ( (ValueCellFull!2640 (v!5044 V!7603)) (EmptyCell!2640) )
))
(declare-datatypes ((array!11176 0))(
  ( (array!11177 (arr!5307 (Array (_ BitVec 32) ValueCell!2640)) (size!5640 (_ BitVec 32))) )
))
(declare-datatypes ((array!11178 0))(
  ( (array!11179 (arr!5308 (Array (_ BitVec 32) (_ BitVec 64))) (size!5641 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3180 0))(
  ( (LongMapFixedSize!3181 (defaultEntry!4249 Int) (mask!10111 (_ BitVec 32)) (extraKeys!3986 (_ BitVec 32)) (zeroValue!4090 V!7603) (minValue!4090 V!7603) (_size!1639 (_ BitVec 32)) (_keys!6303 array!11178) (_values!4232 array!11176) (_vacant!1639 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3180)

(declare-fun mapDefault!10120 () ValueCell!2640)

(assert (=> b!227494 (= condMapEmpty!10120 (= (arr!5307 (_values!4232 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2640)) mapDefault!10120)))))

(declare-fun mapNonEmpty!10120 () Bool)

(declare-fun tp!21456 () Bool)

(declare-fun e!147605 () Bool)

(assert (=> mapNonEmpty!10120 (= mapRes!10120 (and tp!21456 e!147605))))

(declare-fun mapRest!10120 () (Array (_ BitVec 32) ValueCell!2640))

(declare-fun mapKey!10120 () (_ BitVec 32))

(declare-fun mapValue!10120 () ValueCell!2640)

(assert (=> mapNonEmpty!10120 (= (arr!5307 (_values!4232 thiss!1504)) (store mapRest!10120 mapKey!10120 mapValue!10120))))

(declare-fun b!227495 () Bool)

(declare-fun res!112012 () Bool)

(declare-fun e!147602 () Bool)

(assert (=> b!227495 (=> (not res!112012) (not e!147602))))

(declare-datatypes ((SeekEntryResult!906 0))(
  ( (MissingZero!906 (index!5794 (_ BitVec 32))) (Found!906 (index!5795 (_ BitVec 32))) (Intermediate!906 (undefined!1718 Bool) (index!5796 (_ BitVec 32)) (x!23294 (_ BitVec 32))) (Undefined!906) (MissingVacant!906 (index!5797 (_ BitVec 32))) )
))
(declare-fun lt!114525 () SeekEntryResult!906)

(assert (=> b!227495 (= res!112012 (= (select (arr!5308 (_keys!6303 thiss!1504)) (index!5794 lt!114525)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!227496 () Bool)

(declare-fun e!147599 () Bool)

(declare-fun call!21147 () Bool)

(assert (=> b!227496 (= e!147599 (not call!21147))))

(declare-fun b!227497 () Bool)

(declare-datatypes ((Unit!6899 0))(
  ( (Unit!6900) )
))
(declare-fun e!147600 () Unit!6899)

(declare-fun Unit!6901 () Unit!6899)

(assert (=> b!227497 (= e!147600 Unit!6901)))

(declare-fun b!227498 () Bool)

(declare-fun res!112004 () Bool)

(assert (=> b!227498 (= res!112004 (= (select (arr!5308 (_keys!6303 thiss!1504)) (index!5797 lt!114525)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!227498 (=> (not res!112004) (not e!147599))))

(declare-fun b!227499 () Bool)

(declare-fun res!112002 () Bool)

(declare-fun e!147606 () Bool)

(assert (=> b!227499 (=> res!112002 e!147606)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11178 (_ BitVec 32)) Bool)

(assert (=> b!227499 (= res!112002 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6303 thiss!1504) (mask!10111 thiss!1504))))))

(declare-fun b!227500 () Bool)

(declare-fun res!112003 () Bool)

(declare-fun e!147598 () Bool)

(assert (=> b!227500 (=> (not res!112003) (not e!147598))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!227500 (= res!112003 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!227501 () Bool)

(declare-fun e!147604 () Bool)

(assert (=> b!227501 (= e!147604 e!147599)))

(declare-fun res!112008 () Bool)

(declare-fun call!21148 () Bool)

(assert (=> b!227501 (= res!112008 call!21148)))

(assert (=> b!227501 (=> (not res!112008) (not e!147599))))

(declare-fun b!227502 () Bool)

(declare-fun e!147603 () Unit!6899)

(declare-fun lt!114521 () Unit!6899)

(assert (=> b!227502 (= e!147603 lt!114521)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!278 (array!11178 array!11176 (_ BitVec 32) (_ BitVec 32) V!7603 V!7603 (_ BitVec 64) Int) Unit!6899)

(assert (=> b!227502 (= lt!114521 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!278 (_keys!6303 thiss!1504) (_values!4232 thiss!1504) (mask!10111 thiss!1504) (extraKeys!3986 thiss!1504) (zeroValue!4090 thiss!1504) (minValue!4090 thiss!1504) key!932 (defaultEntry!4249 thiss!1504)))))

(declare-fun c!37708 () Bool)

(get-info :version)

(assert (=> b!227502 (= c!37708 ((_ is MissingZero!906) lt!114525))))

(declare-fun e!147597 () Bool)

(assert (=> b!227502 e!147597))

(declare-fun b!227503 () Bool)

(declare-fun Unit!6902 () Unit!6899)

(assert (=> b!227503 (= e!147603 Unit!6902)))

(declare-fun lt!114523 () Unit!6899)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!266 (array!11178 array!11176 (_ BitVec 32) (_ BitVec 32) V!7603 V!7603 (_ BitVec 64) Int) Unit!6899)

(assert (=> b!227503 (= lt!114523 (lemmaInListMapThenSeekEntryOrOpenFindsIt!266 (_keys!6303 thiss!1504) (_values!4232 thiss!1504) (mask!10111 thiss!1504) (extraKeys!3986 thiss!1504) (zeroValue!4090 thiss!1504) (minValue!4090 thiss!1504) key!932 (defaultEntry!4249 thiss!1504)))))

(assert (=> b!227503 false))

(declare-fun b!227504 () Bool)

(declare-fun res!112010 () Bool)

(assert (=> b!227504 (=> res!112010 e!147606)))

(assert (=> b!227504 (= res!112010 (or (not (= (size!5640 (_values!4232 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10111 thiss!1504)))) (not (= (size!5641 (_keys!6303 thiss!1504)) (size!5640 (_values!4232 thiss!1504)))) (bvslt (mask!10111 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3986 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3986 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!10120 () Bool)

(assert (=> mapIsEmpty!10120 mapRes!10120))

(declare-fun b!227505 () Bool)

(assert (=> b!227505 (= e!147606 true)))

(declare-fun lt!114520 () Bool)

(declare-datatypes ((List!3414 0))(
  ( (Nil!3411) (Cons!3410 (h!4058 (_ BitVec 64)) (t!8381 List!3414)) )
))
(declare-fun arrayNoDuplicates!0 (array!11178 (_ BitVec 32) List!3414) Bool)

(assert (=> b!227505 (= lt!114520 (arrayNoDuplicates!0 (_keys!6303 thiss!1504) #b00000000000000000000000000000000 Nil!3411))))

(declare-fun tp_is_empty!5967 () Bool)

(declare-fun e!147596 () Bool)

(declare-fun array_inv!3499 (array!11178) Bool)

(declare-fun array_inv!3500 (array!11176) Bool)

(assert (=> b!227506 (= e!147596 (and tp!21457 tp_is_empty!5967 (array_inv!3499 (_keys!6303 thiss!1504)) (array_inv!3500 (_values!4232 thiss!1504)) e!147609))))

(declare-fun b!227507 () Bool)

(declare-fun Unit!6903 () Unit!6899)

(assert (=> b!227507 (= e!147600 Unit!6903)))

(declare-fun lt!114526 () Unit!6899)

(declare-fun lemmaArrayContainsKeyThenInListMap!103 (array!11178 array!11176 (_ BitVec 32) (_ BitVec 32) V!7603 V!7603 (_ BitVec 64) (_ BitVec 32) Int) Unit!6899)

(assert (=> b!227507 (= lt!114526 (lemmaArrayContainsKeyThenInListMap!103 (_keys!6303 thiss!1504) (_values!4232 thiss!1504) (mask!10111 thiss!1504) (extraKeys!3986 thiss!1504) (zeroValue!4090 thiss!1504) (minValue!4090 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4249 thiss!1504)))))

(assert (=> b!227507 false))

(declare-fun b!227508 () Bool)

(assert (=> b!227508 (= e!147604 ((_ is Undefined!906) lt!114525))))

(declare-fun res!112007 () Bool)

(assert (=> start!22050 (=> (not res!112007) (not e!147598))))

(declare-fun valid!1268 (LongMapFixedSize!3180) Bool)

(assert (=> start!22050 (= res!112007 (valid!1268 thiss!1504))))

(assert (=> start!22050 e!147598))

(assert (=> start!22050 e!147596))

(assert (=> start!22050 true))

(declare-fun b!227509 () Bool)

(declare-fun e!147607 () Bool)

(assert (=> b!227509 (= e!147598 e!147607)))

(declare-fun res!112005 () Bool)

(assert (=> b!227509 (=> (not res!112005) (not e!147607))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!227509 (= res!112005 (or (= lt!114525 (MissingZero!906 index!297)) (= lt!114525 (MissingVacant!906 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11178 (_ BitVec 32)) SeekEntryResult!906)

(assert (=> b!227509 (= lt!114525 (seekEntryOrOpen!0 key!932 (_keys!6303 thiss!1504) (mask!10111 thiss!1504)))))

(declare-fun b!227510 () Bool)

(declare-fun e!147608 () Bool)

(assert (=> b!227510 (= e!147608 (not e!147606))))

(declare-fun res!112009 () Bool)

(assert (=> b!227510 (=> res!112009 e!147606)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!227510 (= res!112009 (not (validMask!0 (mask!10111 thiss!1504))))))

(declare-fun lt!114518 () array!11178)

(assert (=> b!227510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!114518 (mask!10111 thiss!1504))))

(declare-fun lt!114522 () Unit!6899)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11178 (_ BitVec 32) (_ BitVec 32)) Unit!6899)

(assert (=> b!227510 (= lt!114522 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6303 thiss!1504) index!297 (mask!10111 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11178 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!227510 (= (arrayCountValidKeys!0 lt!114518 #b00000000000000000000000000000000 (size!5641 (_keys!6303 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6303 thiss!1504) #b00000000000000000000000000000000 (size!5641 (_keys!6303 thiss!1504)))))))

(declare-fun lt!114519 () Unit!6899)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11178 (_ BitVec 32) (_ BitVec 64)) Unit!6899)

(assert (=> b!227510 (= lt!114519 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6303 thiss!1504) index!297 key!932))))

(assert (=> b!227510 (arrayNoDuplicates!0 lt!114518 #b00000000000000000000000000000000 Nil!3411)))

(assert (=> b!227510 (= lt!114518 (array!11179 (store (arr!5308 (_keys!6303 thiss!1504)) index!297 key!932) (size!5641 (_keys!6303 thiss!1504))))))

(declare-fun lt!114524 () Unit!6899)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11178 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3414) Unit!6899)

(assert (=> b!227510 (= lt!114524 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6303 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3411))))

(declare-fun lt!114527 () Unit!6899)

(assert (=> b!227510 (= lt!114527 e!147600)))

(declare-fun c!37709 () Bool)

(declare-fun arrayContainsKey!0 (array!11178 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!227510 (= c!37709 (arrayContainsKey!0 (_keys!6303 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!21144 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21144 (= call!21148 (inRange!0 (ite c!37708 (index!5794 lt!114525) (index!5797 lt!114525)) (mask!10111 thiss!1504)))))

(declare-fun b!227511 () Bool)

(assert (=> b!227511 (= e!147610 tp_is_empty!5967)))

(declare-fun b!227512 () Bool)

(declare-fun res!112006 () Bool)

(assert (=> b!227512 (=> (not res!112006) (not e!147602))))

(assert (=> b!227512 (= res!112006 call!21148)))

(assert (=> b!227512 (= e!147597 e!147602)))

(declare-fun b!227513 () Bool)

(assert (=> b!227513 (= e!147602 (not call!21147))))

(declare-fun bm!21145 () Bool)

(assert (=> bm!21145 (= call!21147 (arrayContainsKey!0 (_keys!6303 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!227514 () Bool)

(assert (=> b!227514 (= e!147607 e!147608)))

(declare-fun res!112011 () Bool)

(assert (=> b!227514 (=> (not res!112011) (not e!147608))))

(assert (=> b!227514 (= res!112011 (inRange!0 index!297 (mask!10111 thiss!1504)))))

(declare-fun lt!114528 () Unit!6899)

(assert (=> b!227514 (= lt!114528 e!147603)))

(declare-fun c!37706 () Bool)

(declare-datatypes ((tuple2!4470 0))(
  ( (tuple2!4471 (_1!2245 (_ BitVec 64)) (_2!2245 V!7603)) )
))
(declare-datatypes ((List!3415 0))(
  ( (Nil!3412) (Cons!3411 (h!4059 tuple2!4470) (t!8382 List!3415)) )
))
(declare-datatypes ((ListLongMap!3397 0))(
  ( (ListLongMap!3398 (toList!1714 List!3415)) )
))
(declare-fun contains!1582 (ListLongMap!3397 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1237 (array!11178 array!11176 (_ BitVec 32) (_ BitVec 32) V!7603 V!7603 (_ BitVec 32) Int) ListLongMap!3397)

(assert (=> b!227514 (= c!37706 (contains!1582 (getCurrentListMap!1237 (_keys!6303 thiss!1504) (_values!4232 thiss!1504) (mask!10111 thiss!1504) (extraKeys!3986 thiss!1504) (zeroValue!4090 thiss!1504) (minValue!4090 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4249 thiss!1504)) key!932))))

(declare-fun b!227515 () Bool)

(declare-fun c!37707 () Bool)

(assert (=> b!227515 (= c!37707 ((_ is MissingVacant!906) lt!114525))))

(assert (=> b!227515 (= e!147597 e!147604)))

(declare-fun b!227516 () Bool)

(assert (=> b!227516 (= e!147605 tp_is_empty!5967)))

(assert (= (and start!22050 res!112007) b!227500))

(assert (= (and b!227500 res!112003) b!227509))

(assert (= (and b!227509 res!112005) b!227514))

(assert (= (and b!227514 c!37706) b!227503))

(assert (= (and b!227514 (not c!37706)) b!227502))

(assert (= (and b!227502 c!37708) b!227512))

(assert (= (and b!227502 (not c!37708)) b!227515))

(assert (= (and b!227512 res!112006) b!227495))

(assert (= (and b!227495 res!112012) b!227513))

(assert (= (and b!227515 c!37707) b!227501))

(assert (= (and b!227515 (not c!37707)) b!227508))

(assert (= (and b!227501 res!112008) b!227498))

(assert (= (and b!227498 res!112004) b!227496))

(assert (= (or b!227512 b!227501) bm!21144))

(assert (= (or b!227513 b!227496) bm!21145))

(assert (= (and b!227514 res!112011) b!227510))

(assert (= (and b!227510 c!37709) b!227507))

(assert (= (and b!227510 (not c!37709)) b!227497))

(assert (= (and b!227510 (not res!112009)) b!227504))

(assert (= (and b!227504 (not res!112010)) b!227499))

(assert (= (and b!227499 (not res!112002)) b!227505))

(assert (= (and b!227494 condMapEmpty!10120) mapIsEmpty!10120))

(assert (= (and b!227494 (not condMapEmpty!10120)) mapNonEmpty!10120))

(assert (= (and mapNonEmpty!10120 ((_ is ValueCellFull!2640) mapValue!10120)) b!227516))

(assert (= (and b!227494 ((_ is ValueCellFull!2640) mapDefault!10120)) b!227511))

(assert (= b!227506 b!227494))

(assert (= start!22050 b!227506))

(declare-fun m!249497 () Bool)

(assert (=> b!227509 m!249497))

(declare-fun m!249499 () Bool)

(assert (=> b!227495 m!249499))

(declare-fun m!249501 () Bool)

(assert (=> b!227514 m!249501))

(declare-fun m!249503 () Bool)

(assert (=> b!227514 m!249503))

(assert (=> b!227514 m!249503))

(declare-fun m!249505 () Bool)

(assert (=> b!227514 m!249505))

(declare-fun m!249507 () Bool)

(assert (=> b!227503 m!249507))

(declare-fun m!249509 () Bool)

(assert (=> b!227502 m!249509))

(declare-fun m!249511 () Bool)

(assert (=> b!227507 m!249511))

(declare-fun m!249513 () Bool)

(assert (=> b!227499 m!249513))

(declare-fun m!249515 () Bool)

(assert (=> b!227498 m!249515))

(declare-fun m!249517 () Bool)

(assert (=> bm!21144 m!249517))

(declare-fun m!249519 () Bool)

(assert (=> b!227506 m!249519))

(declare-fun m!249521 () Bool)

(assert (=> b!227506 m!249521))

(declare-fun m!249523 () Bool)

(assert (=> b!227505 m!249523))

(declare-fun m!249525 () Bool)

(assert (=> bm!21145 m!249525))

(declare-fun m!249527 () Bool)

(assert (=> b!227510 m!249527))

(assert (=> b!227510 m!249525))

(declare-fun m!249529 () Bool)

(assert (=> b!227510 m!249529))

(declare-fun m!249531 () Bool)

(assert (=> b!227510 m!249531))

(declare-fun m!249533 () Bool)

(assert (=> b!227510 m!249533))

(declare-fun m!249535 () Bool)

(assert (=> b!227510 m!249535))

(declare-fun m!249537 () Bool)

(assert (=> b!227510 m!249537))

(declare-fun m!249539 () Bool)

(assert (=> b!227510 m!249539))

(declare-fun m!249541 () Bool)

(assert (=> b!227510 m!249541))

(declare-fun m!249543 () Bool)

(assert (=> b!227510 m!249543))

(declare-fun m!249545 () Bool)

(assert (=> mapNonEmpty!10120 m!249545))

(declare-fun m!249547 () Bool)

(assert (=> start!22050 m!249547))

(check-sat (not b!227503) (not b!227507) (not b!227506) b_and!13021 tp_is_empty!5967 (not mapNonEmpty!10120) (not b!227499) (not b_next!6105) (not b!227505) (not b!227509) (not b!227510) (not bm!21144) (not bm!21145) (not b!227502) (not b!227514) (not start!22050))
(check-sat b_and!13021 (not b_next!6105))
