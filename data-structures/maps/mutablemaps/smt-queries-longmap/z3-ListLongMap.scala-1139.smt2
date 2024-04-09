; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23578 () Bool)

(assert start!23578)

(declare-fun b!247455 () Bool)

(declare-fun b_free!6585 () Bool)

(declare-fun b_next!6585 () Bool)

(assert (=> b!247455 (= b_free!6585 (not b_next!6585))))

(declare-fun tp!23003 () Bool)

(declare-fun b_and!13605 () Bool)

(assert (=> b!247455 (= tp!23003 b_and!13605)))

(declare-fun b!247444 () Bool)

(declare-datatypes ((Unit!7644 0))(
  ( (Unit!7645) )
))
(declare-fun e!160529 () Unit!7644)

(declare-fun Unit!7646 () Unit!7644)

(assert (=> b!247444 (= e!160529 Unit!7646)))

(declare-fun lt!123981 () Unit!7644)

(declare-datatypes ((V!8243 0))(
  ( (V!8244 (val!3268 Int)) )
))
(declare-datatypes ((ValueCell!2880 0))(
  ( (ValueCellFull!2880 (v!5322 V!8243)) (EmptyCell!2880) )
))
(declare-datatypes ((array!12200 0))(
  ( (array!12201 (arr!5787 (Array (_ BitVec 32) ValueCell!2880)) (size!6130 (_ BitVec 32))) )
))
(declare-datatypes ((array!12202 0))(
  ( (array!12203 (arr!5788 (Array (_ BitVec 32) (_ BitVec 64))) (size!6131 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3660 0))(
  ( (LongMapFixedSize!3661 (defaultEntry!4579 Int) (mask!10717 (_ BitVec 32)) (extraKeys!4316 (_ BitVec 32)) (zeroValue!4420 V!8243) (minValue!4420 V!8243) (_size!1879 (_ BitVec 32)) (_keys!6701 array!12202) (_values!4562 array!12200) (_vacant!1879 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3660)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!185 (array!12202 array!12200 (_ BitVec 32) (_ BitVec 32) V!8243 V!8243 (_ BitVec 64) (_ BitVec 32) Int) Unit!7644)

(assert (=> b!247444 (= lt!123981 (lemmaArrayContainsKeyThenInListMap!185 (_keys!6701 thiss!1504) (_values!4562 thiss!1504) (mask!10717 thiss!1504) (extraKeys!4316 thiss!1504) (zeroValue!4420 thiss!1504) (minValue!4420 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4579 thiss!1504)))))

(assert (=> b!247444 false))

(declare-fun b!247445 () Bool)

(declare-fun e!160537 () Bool)

(declare-fun call!23175 () Bool)

(assert (=> b!247445 (= e!160537 (not call!23175))))

(declare-fun b!247446 () Bool)

(declare-fun e!160528 () Bool)

(declare-fun tp_is_empty!6447 () Bool)

(assert (=> b!247446 (= e!160528 tp_is_empty!6447)))

(declare-fun mapIsEmpty!10946 () Bool)

(declare-fun mapRes!10946 () Bool)

(assert (=> mapIsEmpty!10946 mapRes!10946))

(declare-fun b!247448 () Bool)

(declare-fun res!121309 () Bool)

(declare-fun e!160526 () Bool)

(assert (=> b!247448 (=> (not res!121309) (not e!160526))))

(assert (=> b!247448 (= res!121309 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!247449 () Bool)

(declare-fun e!160531 () Bool)

(assert (=> b!247449 (= e!160531 (not call!23175))))

(declare-fun b!247450 () Bool)

(declare-fun e!160534 () Unit!7644)

(declare-fun Unit!7647 () Unit!7644)

(assert (=> b!247450 (= e!160534 Unit!7647)))

(declare-fun lt!123973 () Unit!7644)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!383 (array!12202 array!12200 (_ BitVec 32) (_ BitVec 32) V!8243 V!8243 (_ BitVec 64) Int) Unit!7644)

(assert (=> b!247450 (= lt!123973 (lemmaInListMapThenSeekEntryOrOpenFindsIt!383 (_keys!6701 thiss!1504) (_values!4562 thiss!1504) (mask!10717 thiss!1504) (extraKeys!4316 thiss!1504) (zeroValue!4420 thiss!1504) (minValue!4420 thiss!1504) key!932 (defaultEntry!4579 thiss!1504)))))

(assert (=> b!247450 false))

(declare-fun b!247451 () Bool)

(declare-fun lt!123974 () Unit!7644)

(assert (=> b!247451 (= e!160534 lt!123974)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!384 (array!12202 array!12200 (_ BitVec 32) (_ BitVec 32) V!8243 V!8243 (_ BitVec 64) Int) Unit!7644)

(assert (=> b!247451 (= lt!123974 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!384 (_keys!6701 thiss!1504) (_values!4562 thiss!1504) (mask!10717 thiss!1504) (extraKeys!4316 thiss!1504) (zeroValue!4420 thiss!1504) (minValue!4420 thiss!1504) key!932 (defaultEntry!4579 thiss!1504)))))

(declare-fun c!41416 () Bool)

(declare-datatypes ((SeekEntryResult!1111 0))(
  ( (MissingZero!1111 (index!6614 (_ BitVec 32))) (Found!1111 (index!6615 (_ BitVec 32))) (Intermediate!1111 (undefined!1923 Bool) (index!6616 (_ BitVec 32)) (x!24539 (_ BitVec 32))) (Undefined!1111) (MissingVacant!1111 (index!6617 (_ BitVec 32))) )
))
(declare-fun lt!123975 () SeekEntryResult!1111)

(get-info :version)

(assert (=> b!247451 (= c!41416 ((_ is MissingZero!1111) lt!123975))))

(declare-fun e!160532 () Bool)

(assert (=> b!247451 e!160532))

(declare-fun b!247452 () Bool)

(declare-fun e!160536 () Bool)

(declare-fun lt!123979 () Bool)

(assert (=> b!247452 (= e!160536 (not lt!123979))))

(declare-fun b!247453 () Bool)

(declare-fun res!121311 () Bool)

(assert (=> b!247453 (=> res!121311 e!160536)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!247453 (= res!121311 (not (validKeyInArray!0 key!932)))))

(declare-fun b!247454 () Bool)

(declare-fun Unit!7648 () Unit!7644)

(assert (=> b!247454 (= e!160529 Unit!7648)))

(declare-fun e!160525 () Bool)

(declare-fun e!160527 () Bool)

(declare-fun array_inv!3813 (array!12202) Bool)

(declare-fun array_inv!3814 (array!12200) Bool)

(assert (=> b!247455 (= e!160527 (and tp!23003 tp_is_empty!6447 (array_inv!3813 (_keys!6701 thiss!1504)) (array_inv!3814 (_values!4562 thiss!1504)) e!160525))))

(declare-fun b!247456 () Bool)

(declare-fun e!160535 () Bool)

(assert (=> b!247456 (= e!160535 tp_is_empty!6447)))

(declare-fun b!247457 () Bool)

(declare-fun c!41418 () Bool)

(assert (=> b!247457 (= c!41418 ((_ is MissingVacant!1111) lt!123975))))

(declare-fun e!160524 () Bool)

(assert (=> b!247457 (= e!160532 e!160524)))

(declare-fun b!247458 () Bool)

(declare-fun e!160530 () Bool)

(assert (=> b!247458 (= e!160526 e!160530)))

(declare-fun res!121307 () Bool)

(assert (=> b!247458 (=> (not res!121307) (not e!160530))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!247458 (= res!121307 (or (= lt!123975 (MissingZero!1111 index!297)) (= lt!123975 (MissingVacant!1111 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12202 (_ BitVec 32)) SeekEntryResult!1111)

(assert (=> b!247458 (= lt!123975 (seekEntryOrOpen!0 key!932 (_keys!6701 thiss!1504) (mask!10717 thiss!1504)))))

(declare-fun b!247459 () Bool)

(assert (=> b!247459 (= e!160524 ((_ is Undefined!1111) lt!123975))))

(declare-fun call!23174 () Bool)

(declare-fun bm!23171 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23171 (= call!23174 (inRange!0 (ite c!41416 (index!6614 lt!123975) (index!6617 lt!123975)) (mask!10717 thiss!1504)))))

(declare-fun b!247460 () Bool)

(declare-fun e!160538 () Bool)

(assert (=> b!247460 (= e!160530 e!160538)))

(declare-fun res!121305 () Bool)

(assert (=> b!247460 (=> (not res!121305) (not e!160538))))

(assert (=> b!247460 (= res!121305 (inRange!0 index!297 (mask!10717 thiss!1504)))))

(declare-fun lt!123977 () Unit!7644)

(assert (=> b!247460 (= lt!123977 e!160534)))

(declare-fun c!41419 () Bool)

(declare-datatypes ((tuple2!4806 0))(
  ( (tuple2!4807 (_1!2413 (_ BitVec 64)) (_2!2413 V!8243)) )
))
(declare-datatypes ((List!3711 0))(
  ( (Nil!3708) (Cons!3707 (h!4365 tuple2!4806) (t!8742 List!3711)) )
))
(declare-datatypes ((ListLongMap!3733 0))(
  ( (ListLongMap!3734 (toList!1882 List!3711)) )
))
(declare-fun contains!1790 (ListLongMap!3733 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1405 (array!12202 array!12200 (_ BitVec 32) (_ BitVec 32) V!8243 V!8243 (_ BitVec 32) Int) ListLongMap!3733)

(assert (=> b!247460 (= c!41419 (contains!1790 (getCurrentListMap!1405 (_keys!6701 thiss!1504) (_values!4562 thiss!1504) (mask!10717 thiss!1504) (extraKeys!4316 thiss!1504) (zeroValue!4420 thiss!1504) (minValue!4420 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4579 thiss!1504)) key!932))))

(declare-fun b!247461 () Bool)

(assert (=> b!247461 (= e!160525 (and e!160535 mapRes!10946))))

(declare-fun condMapEmpty!10946 () Bool)

(declare-fun mapDefault!10946 () ValueCell!2880)

(assert (=> b!247461 (= condMapEmpty!10946 (= (arr!5787 (_values!4562 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2880)) mapDefault!10946)))))

(declare-fun b!247462 () Bool)

(declare-fun res!121302 () Bool)

(assert (=> b!247462 (=> res!121302 e!160536)))

(assert (=> b!247462 (= res!121302 (or (not (= (size!6131 (_keys!6701 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10717 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6131 (_keys!6701 thiss!1504)))))))

(declare-fun b!247463 () Bool)

(declare-fun res!121310 () Bool)

(assert (=> b!247463 (= res!121310 (= (select (arr!5788 (_keys!6701 thiss!1504)) (index!6617 lt!123975)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!247463 (=> (not res!121310) (not e!160531))))

(declare-fun res!121308 () Bool)

(assert (=> start!23578 (=> (not res!121308) (not e!160526))))

(declare-fun valid!1423 (LongMapFixedSize!3660) Bool)

(assert (=> start!23578 (= res!121308 (valid!1423 thiss!1504))))

(assert (=> start!23578 e!160526))

(assert (=> start!23578 e!160527))

(assert (=> start!23578 true))

(declare-fun b!247447 () Bool)

(declare-fun res!121306 () Bool)

(assert (=> b!247447 (=> (not res!121306) (not e!160537))))

(assert (=> b!247447 (= res!121306 (= (select (arr!5788 (_keys!6701 thiss!1504)) (index!6614 lt!123975)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!10946 () Bool)

(declare-fun tp!23002 () Bool)

(assert (=> mapNonEmpty!10946 (= mapRes!10946 (and tp!23002 e!160528))))

(declare-fun mapRest!10946 () (Array (_ BitVec 32) ValueCell!2880))

(declare-fun mapKey!10946 () (_ BitVec 32))

(declare-fun mapValue!10946 () ValueCell!2880)

(assert (=> mapNonEmpty!10946 (= (arr!5787 (_values!4562 thiss!1504)) (store mapRest!10946 mapKey!10946 mapValue!10946))))

(declare-fun b!247464 () Bool)

(assert (=> b!247464 (= e!160524 e!160531)))

(declare-fun res!121303 () Bool)

(assert (=> b!247464 (= res!121303 call!23174)))

(assert (=> b!247464 (=> (not res!121303) (not e!160531))))

(declare-fun bm!23172 () Bool)

(declare-fun arrayContainsKey!0 (array!12202 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23172 (= call!23175 (arrayContainsKey!0 (_keys!6701 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247465 () Bool)

(assert (=> b!247465 (= e!160538 (not e!160536))))

(declare-fun res!121304 () Bool)

(assert (=> b!247465 (=> res!121304 e!160536)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!247465 (= res!121304 (not (validMask!0 (mask!10717 thiss!1504))))))

(declare-fun lt!123980 () array!12202)

(declare-fun arrayCountValidKeys!0 (array!12202 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!247465 (= (arrayCountValidKeys!0 lt!123980 #b00000000000000000000000000000000 (size!6131 (_keys!6701 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6701 thiss!1504) #b00000000000000000000000000000000 (size!6131 (_keys!6701 thiss!1504)))))))

(declare-fun lt!123982 () Unit!7644)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12202 (_ BitVec 32) (_ BitVec 64)) Unit!7644)

(assert (=> b!247465 (= lt!123982 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6701 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3712 0))(
  ( (Nil!3709) (Cons!3708 (h!4366 (_ BitVec 64)) (t!8743 List!3712)) )
))
(declare-fun arrayNoDuplicates!0 (array!12202 (_ BitVec 32) List!3712) Bool)

(assert (=> b!247465 (arrayNoDuplicates!0 lt!123980 #b00000000000000000000000000000000 Nil!3709)))

(assert (=> b!247465 (= lt!123980 (array!12203 (store (arr!5788 (_keys!6701 thiss!1504)) index!297 key!932) (size!6131 (_keys!6701 thiss!1504))))))

(declare-fun lt!123978 () Unit!7644)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12202 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3712) Unit!7644)

(assert (=> b!247465 (= lt!123978 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6701 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3709))))

(declare-fun lt!123976 () Unit!7644)

(assert (=> b!247465 (= lt!123976 e!160529)))

(declare-fun c!41417 () Bool)

(assert (=> b!247465 (= c!41417 lt!123979)))

(assert (=> b!247465 (= lt!123979 (arrayContainsKey!0 (_keys!6701 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247466 () Bool)

(declare-fun res!121312 () Bool)

(assert (=> b!247466 (=> (not res!121312) (not e!160537))))

(assert (=> b!247466 (= res!121312 call!23174)))

(assert (=> b!247466 (= e!160532 e!160537)))

(assert (= (and start!23578 res!121308) b!247448))

(assert (= (and b!247448 res!121309) b!247458))

(assert (= (and b!247458 res!121307) b!247460))

(assert (= (and b!247460 c!41419) b!247450))

(assert (= (and b!247460 (not c!41419)) b!247451))

(assert (= (and b!247451 c!41416) b!247466))

(assert (= (and b!247451 (not c!41416)) b!247457))

(assert (= (and b!247466 res!121312) b!247447))

(assert (= (and b!247447 res!121306) b!247445))

(assert (= (and b!247457 c!41418) b!247464))

(assert (= (and b!247457 (not c!41418)) b!247459))

(assert (= (and b!247464 res!121303) b!247463))

(assert (= (and b!247463 res!121310) b!247449))

(assert (= (or b!247466 b!247464) bm!23171))

(assert (= (or b!247445 b!247449) bm!23172))

(assert (= (and b!247460 res!121305) b!247465))

(assert (= (and b!247465 c!41417) b!247444))

(assert (= (and b!247465 (not c!41417)) b!247454))

(assert (= (and b!247465 (not res!121304)) b!247462))

(assert (= (and b!247462 (not res!121302)) b!247453))

(assert (= (and b!247453 (not res!121311)) b!247452))

(assert (= (and b!247461 condMapEmpty!10946) mapIsEmpty!10946))

(assert (= (and b!247461 (not condMapEmpty!10946)) mapNonEmpty!10946))

(assert (= (and mapNonEmpty!10946 ((_ is ValueCellFull!2880) mapValue!10946)) b!247446))

(assert (= (and b!247461 ((_ is ValueCellFull!2880) mapDefault!10946)) b!247456))

(assert (= b!247455 b!247461))

(assert (= start!23578 b!247455))

(declare-fun m!264517 () Bool)

(assert (=> b!247463 m!264517))

(declare-fun m!264519 () Bool)

(assert (=> mapNonEmpty!10946 m!264519))

(declare-fun m!264521 () Bool)

(assert (=> bm!23172 m!264521))

(declare-fun m!264523 () Bool)

(assert (=> bm!23171 m!264523))

(declare-fun m!264525 () Bool)

(assert (=> b!247455 m!264525))

(declare-fun m!264527 () Bool)

(assert (=> b!247455 m!264527))

(declare-fun m!264529 () Bool)

(assert (=> b!247453 m!264529))

(declare-fun m!264531 () Bool)

(assert (=> b!247450 m!264531))

(declare-fun m!264533 () Bool)

(assert (=> b!247465 m!264533))

(assert (=> b!247465 m!264521))

(declare-fun m!264535 () Bool)

(assert (=> b!247465 m!264535))

(declare-fun m!264537 () Bool)

(assert (=> b!247465 m!264537))

(declare-fun m!264539 () Bool)

(assert (=> b!247465 m!264539))

(declare-fun m!264541 () Bool)

(assert (=> b!247465 m!264541))

(declare-fun m!264543 () Bool)

(assert (=> b!247465 m!264543))

(declare-fun m!264545 () Bool)

(assert (=> b!247465 m!264545))

(declare-fun m!264547 () Bool)

(assert (=> b!247451 m!264547))

(declare-fun m!264549 () Bool)

(assert (=> b!247444 m!264549))

(declare-fun m!264551 () Bool)

(assert (=> start!23578 m!264551))

(declare-fun m!264553 () Bool)

(assert (=> b!247460 m!264553))

(declare-fun m!264555 () Bool)

(assert (=> b!247460 m!264555))

(assert (=> b!247460 m!264555))

(declare-fun m!264557 () Bool)

(assert (=> b!247460 m!264557))

(declare-fun m!264559 () Bool)

(assert (=> b!247447 m!264559))

(declare-fun m!264561 () Bool)

(assert (=> b!247458 m!264561))

(check-sat (not b!247450) tp_is_empty!6447 (not b!247460) (not b!247455) (not b!247453) (not mapNonEmpty!10946) (not start!23578) (not bm!23171) (not b!247458) (not b!247451) (not b!247444) (not bm!23172) (not b!247465) (not b_next!6585) b_and!13605)
(check-sat b_and!13605 (not b_next!6585))
