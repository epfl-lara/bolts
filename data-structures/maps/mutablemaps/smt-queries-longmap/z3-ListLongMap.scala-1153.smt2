; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24280 () Bool)

(assert start!24280)

(declare-fun b!253729 () Bool)

(declare-fun b_free!6669 () Bool)

(declare-fun b_next!6669 () Bool)

(assert (=> b!253729 (= b_free!6669 (not b_next!6669))))

(declare-fun tp!23295 () Bool)

(declare-fun b_and!13729 () Bool)

(assert (=> b!253729 (= tp!23295 b_and!13729)))

(declare-fun b!253728 () Bool)

(declare-fun e!164500 () Bool)

(declare-fun tp_is_empty!6531 () Bool)

(assert (=> b!253728 (= e!164500 tp_is_empty!6531)))

(declare-fun e!164505 () Bool)

(declare-fun e!164508 () Bool)

(declare-datatypes ((V!8355 0))(
  ( (V!8356 (val!3310 Int)) )
))
(declare-datatypes ((ValueCell!2922 0))(
  ( (ValueCellFull!2922 (v!5380 V!8355)) (EmptyCell!2922) )
))
(declare-datatypes ((array!12392 0))(
  ( (array!12393 (arr!5871 (Array (_ BitVec 32) ValueCell!2922)) (size!6218 (_ BitVec 32))) )
))
(declare-datatypes ((array!12394 0))(
  ( (array!12395 (arr!5872 (Array (_ BitVec 32) (_ BitVec 64))) (size!6219 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3744 0))(
  ( (LongMapFixedSize!3745 (defaultEntry!4685 Int) (mask!10925 (_ BitVec 32)) (extraKeys!4422 (_ BitVec 32)) (zeroValue!4526 V!8355) (minValue!4526 V!8355) (_size!1921 (_ BitVec 32)) (_keys!6839 array!12394) (_values!4668 array!12392) (_vacant!1921 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3744)

(declare-fun array_inv!3873 (array!12394) Bool)

(declare-fun array_inv!3874 (array!12392) Bool)

(assert (=> b!253729 (= e!164505 (and tp!23295 tp_is_empty!6531 (array_inv!3873 (_keys!6839 thiss!1504)) (array_inv!3874 (_values!4668 thiss!1504)) e!164508))))

(declare-fun b!253730 () Bool)

(declare-datatypes ((Unit!7845 0))(
  ( (Unit!7846) )
))
(declare-fun e!164506 () Unit!7845)

(declare-fun Unit!7847 () Unit!7845)

(assert (=> b!253730 (= e!164506 Unit!7847)))

(declare-fun b!253731 () Bool)

(declare-fun e!164495 () Unit!7845)

(declare-fun lt!127223 () Unit!7845)

(assert (=> b!253731 (= e!164495 lt!127223)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!413 (array!12394 array!12392 (_ BitVec 32) (_ BitVec 32) V!8355 V!8355 (_ BitVec 64) Int) Unit!7845)

(assert (=> b!253731 (= lt!127223 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!413 (_keys!6839 thiss!1504) (_values!4668 thiss!1504) (mask!10925 thiss!1504) (extraKeys!4422 thiss!1504) (zeroValue!4526 thiss!1504) (minValue!4526 thiss!1504) key!932 (defaultEntry!4685 thiss!1504)))))

(declare-fun c!42784 () Bool)

(declare-datatypes ((SeekEntryResult!1151 0))(
  ( (MissingZero!1151 (index!6774 (_ BitVec 32))) (Found!1151 (index!6775 (_ BitVec 32))) (Intermediate!1151 (undefined!1963 Bool) (index!6776 (_ BitVec 32)) (x!24843 (_ BitVec 32))) (Undefined!1151) (MissingVacant!1151 (index!6777 (_ BitVec 32))) )
))
(declare-fun lt!127222 () SeekEntryResult!1151)

(get-info :version)

(assert (=> b!253731 (= c!42784 ((_ is MissingZero!1151) lt!127222))))

(declare-fun e!164498 () Bool)

(assert (=> b!253731 e!164498))

(declare-fun b!253732 () Bool)

(declare-fun res!124225 () Bool)

(declare-fun e!164497 () Bool)

(assert (=> b!253732 (=> (not res!124225) (not e!164497))))

(assert (=> b!253732 (= res!124225 (= (select (arr!5872 (_keys!6839 thiss!1504)) (index!6774 lt!127222)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!253733 () Bool)

(declare-fun res!124218 () Bool)

(declare-fun e!164501 () Bool)

(assert (=> b!253733 (=> res!124218 e!164501)))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!253733 (= res!124218 (or (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6219 (_keys!6839 thiss!1504)))))))

(declare-fun b!253734 () Bool)

(declare-fun Unit!7848 () Unit!7845)

(assert (=> b!253734 (= e!164495 Unit!7848)))

(declare-fun lt!127224 () Unit!7845)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!411 (array!12394 array!12392 (_ BitVec 32) (_ BitVec 32) V!8355 V!8355 (_ BitVec 64) Int) Unit!7845)

(assert (=> b!253734 (= lt!127224 (lemmaInListMapThenSeekEntryOrOpenFindsIt!411 (_keys!6839 thiss!1504) (_values!4668 thiss!1504) (mask!10925 thiss!1504) (extraKeys!4422 thiss!1504) (zeroValue!4526 thiss!1504) (minValue!4526 thiss!1504) key!932 (defaultEntry!4685 thiss!1504)))))

(assert (=> b!253734 false))

(declare-fun b!253735 () Bool)

(declare-fun e!164503 () Bool)

(assert (=> b!253735 (= e!164503 tp_is_empty!6531)))

(declare-fun b!253736 () Bool)

(declare-fun res!124226 () Bool)

(assert (=> b!253736 (=> res!124226 e!164501)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12394 (_ BitVec 32)) Bool)

(assert (=> b!253736 (= res!124226 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6839 thiss!1504) (mask!10925 thiss!1504))))))

(declare-fun b!253737 () Bool)

(declare-fun Unit!7849 () Unit!7845)

(assert (=> b!253737 (= e!164506 Unit!7849)))

(declare-fun lt!127227 () Unit!7845)

(declare-fun lemmaArrayContainsKeyThenInListMap!216 (array!12394 array!12392 (_ BitVec 32) (_ BitVec 32) V!8355 V!8355 (_ BitVec 64) (_ BitVec 32) Int) Unit!7845)

(assert (=> b!253737 (= lt!127227 (lemmaArrayContainsKeyThenInListMap!216 (_keys!6839 thiss!1504) (_values!4668 thiss!1504) (mask!10925 thiss!1504) (extraKeys!4422 thiss!1504) (zeroValue!4526 thiss!1504) (minValue!4526 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4685 thiss!1504)))))

(assert (=> b!253737 false))

(declare-fun mapNonEmpty!11112 () Bool)

(declare-fun mapRes!11112 () Bool)

(declare-fun tp!23294 () Bool)

(assert (=> mapNonEmpty!11112 (= mapRes!11112 (and tp!23294 e!164500))))

(declare-fun mapRest!11112 () (Array (_ BitVec 32) ValueCell!2922))

(declare-fun mapValue!11112 () ValueCell!2922)

(declare-fun mapKey!11112 () (_ BitVec 32))

(assert (=> mapNonEmpty!11112 (= (arr!5871 (_values!4668 thiss!1504)) (store mapRest!11112 mapKey!11112 mapValue!11112))))

(declare-fun b!253738 () Bool)

(declare-fun res!124222 () Bool)

(assert (=> b!253738 (=> res!124222 e!164501)))

(assert (=> b!253738 (= res!124222 (or (not (= (size!6218 (_values!4668 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10925 thiss!1504)))) (not (= (size!6219 (_keys!6839 thiss!1504)) (size!6218 (_values!4668 thiss!1504)))) (bvslt (mask!10925 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4422 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4422 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!253739 () Bool)

(declare-fun e!164494 () Bool)

(assert (=> b!253739 (= e!164494 ((_ is Undefined!1151) lt!127222))))

(declare-fun bm!23947 () Bool)

(declare-fun call!23951 () Bool)

(declare-fun arrayContainsKey!0 (array!12394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23947 (= call!23951 (arrayContainsKey!0 (_keys!6839 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!253740 () Bool)

(assert (=> b!253740 (= e!164497 (not call!23951))))

(declare-fun b!253741 () Bool)

(declare-fun e!164499 () Bool)

(assert (=> b!253741 (= e!164494 e!164499)))

(declare-fun res!124219 () Bool)

(declare-fun call!23950 () Bool)

(assert (=> b!253741 (= res!124219 call!23950)))

(assert (=> b!253741 (=> (not res!124219) (not e!164499))))

(declare-fun b!253742 () Bool)

(declare-fun c!42787 () Bool)

(assert (=> b!253742 (= c!42787 ((_ is MissingVacant!1151) lt!127222))))

(assert (=> b!253742 (= e!164498 e!164494)))

(declare-fun b!253743 () Bool)

(assert (=> b!253743 (= e!164499 (not call!23951))))

(declare-fun b!253744 () Bool)

(declare-fun e!164496 () Bool)

(declare-fun e!164507 () Bool)

(assert (=> b!253744 (= e!164496 e!164507)))

(declare-fun res!124215 () Bool)

(assert (=> b!253744 (=> (not res!124215) (not e!164507))))

(assert (=> b!253744 (= res!124215 (or (= lt!127222 (MissingZero!1151 index!297)) (= lt!127222 (MissingVacant!1151 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12394 (_ BitVec 32)) SeekEntryResult!1151)

(assert (=> b!253744 (= lt!127222 (seekEntryOrOpen!0 key!932 (_keys!6839 thiss!1504) (mask!10925 thiss!1504)))))

(declare-fun b!253745 () Bool)

(declare-fun res!124217 () Bool)

(assert (=> b!253745 (= res!124217 (= (select (arr!5872 (_keys!6839 thiss!1504)) (index!6777 lt!127222)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!253745 (=> (not res!124217) (not e!164499))))

(declare-fun b!253746 () Bool)

(assert (=> b!253746 (= e!164508 (and e!164503 mapRes!11112))))

(declare-fun condMapEmpty!11112 () Bool)

(declare-fun mapDefault!11112 () ValueCell!2922)

(assert (=> b!253746 (= condMapEmpty!11112 (= (arr!5871 (_values!4668 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2922)) mapDefault!11112)))))

(declare-fun b!253747 () Bool)

(declare-fun res!124223 () Bool)

(assert (=> b!253747 (=> res!124223 e!164501)))

(declare-datatypes ((List!3773 0))(
  ( (Nil!3770) (Cons!3769 (h!4431 (_ BitVec 64)) (t!8828 List!3773)) )
))
(declare-fun arrayNoDuplicates!0 (array!12394 (_ BitVec 32) List!3773) Bool)

(assert (=> b!253747 (= res!124223 (not (arrayNoDuplicates!0 (_keys!6839 thiss!1504) #b00000000000000000000000000000000 Nil!3770)))))

(declare-fun mapIsEmpty!11112 () Bool)

(assert (=> mapIsEmpty!11112 mapRes!11112))

(declare-fun bm!23948 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23948 (= call!23950 (inRange!0 (ite c!42784 (index!6774 lt!127222) (index!6777 lt!127222)) (mask!10925 thiss!1504)))))

(declare-fun b!253748 () Bool)

(declare-fun res!124214 () Bool)

(assert (=> b!253748 (=> res!124214 e!164501)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!253748 (= res!124214 (not (validKeyInArray!0 key!932)))))

(declare-fun res!124221 () Bool)

(assert (=> start!24280 (=> (not res!124221) (not e!164496))))

(declare-fun valid!1457 (LongMapFixedSize!3744) Bool)

(assert (=> start!24280 (= res!124221 (valid!1457 thiss!1504))))

(assert (=> start!24280 e!164496))

(assert (=> start!24280 e!164505))

(assert (=> start!24280 true))

(declare-fun b!253749 () Bool)

(assert (=> b!253749 (= e!164501 (or (= (select (arr!5872 (_keys!6839 thiss!1504)) index!297) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!5872 (_keys!6839 thiss!1504)) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!253750 () Bool)

(declare-fun res!124227 () Bool)

(assert (=> b!253750 (=> (not res!124227) (not e!164497))))

(assert (=> b!253750 (= res!124227 call!23950)))

(assert (=> b!253750 (= e!164498 e!164497)))

(declare-fun b!253751 () Bool)

(declare-fun res!124224 () Bool)

(assert (=> b!253751 (=> (not res!124224) (not e!164496))))

(assert (=> b!253751 (= res!124224 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!253752 () Bool)

(declare-fun e!164502 () Bool)

(assert (=> b!253752 (= e!164502 (not e!164501))))

(declare-fun res!124220 () Bool)

(assert (=> b!253752 (=> res!124220 e!164501)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!253752 (= res!124220 (not (validMask!0 (mask!10925 thiss!1504))))))

(declare-fun lt!127225 () array!12394)

(assert (=> b!253752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!127225 (mask!10925 thiss!1504))))

(declare-fun lt!127218 () Unit!7845)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12394 (_ BitVec 32) (_ BitVec 32)) Unit!7845)

(assert (=> b!253752 (= lt!127218 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6839 thiss!1504) index!297 (mask!10925 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12394 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!253752 (= (arrayCountValidKeys!0 lt!127225 #b00000000000000000000000000000000 (size!6219 (_keys!6839 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6839 thiss!1504) #b00000000000000000000000000000000 (size!6219 (_keys!6839 thiss!1504)))))))

(declare-fun lt!127220 () Unit!7845)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12394 (_ BitVec 32) (_ BitVec 64)) Unit!7845)

(assert (=> b!253752 (= lt!127220 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6839 thiss!1504) index!297 key!932))))

(assert (=> b!253752 (arrayNoDuplicates!0 lt!127225 #b00000000000000000000000000000000 Nil!3770)))

(assert (=> b!253752 (= lt!127225 (array!12395 (store (arr!5872 (_keys!6839 thiss!1504)) index!297 key!932) (size!6219 (_keys!6839 thiss!1504))))))

(declare-fun lt!127221 () Unit!7845)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12394 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3773) Unit!7845)

(assert (=> b!253752 (= lt!127221 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6839 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3770))))

(declare-fun lt!127219 () Unit!7845)

(assert (=> b!253752 (= lt!127219 e!164506)))

(declare-fun c!42785 () Bool)

(assert (=> b!253752 (= c!42785 (arrayContainsKey!0 (_keys!6839 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!253753 () Bool)

(assert (=> b!253753 (= e!164507 e!164502)))

(declare-fun res!124216 () Bool)

(assert (=> b!253753 (=> (not res!124216) (not e!164502))))

(assert (=> b!253753 (= res!124216 (inRange!0 index!297 (mask!10925 thiss!1504)))))

(declare-fun lt!127226 () Unit!7845)

(assert (=> b!253753 (= lt!127226 e!164495)))

(declare-fun c!42786 () Bool)

(declare-datatypes ((tuple2!4868 0))(
  ( (tuple2!4869 (_1!2444 (_ BitVec 64)) (_2!2444 V!8355)) )
))
(declare-datatypes ((List!3774 0))(
  ( (Nil!3771) (Cons!3770 (h!4432 tuple2!4868) (t!8829 List!3774)) )
))
(declare-datatypes ((ListLongMap!3795 0))(
  ( (ListLongMap!3796 (toList!1913 List!3774)) )
))
(declare-fun contains!1837 (ListLongMap!3795 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1436 (array!12394 array!12392 (_ BitVec 32) (_ BitVec 32) V!8355 V!8355 (_ BitVec 32) Int) ListLongMap!3795)

(assert (=> b!253753 (= c!42786 (contains!1837 (getCurrentListMap!1436 (_keys!6839 thiss!1504) (_values!4668 thiss!1504) (mask!10925 thiss!1504) (extraKeys!4422 thiss!1504) (zeroValue!4526 thiss!1504) (minValue!4526 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4685 thiss!1504)) key!932))))

(assert (= (and start!24280 res!124221) b!253751))

(assert (= (and b!253751 res!124224) b!253744))

(assert (= (and b!253744 res!124215) b!253753))

(assert (= (and b!253753 c!42786) b!253734))

(assert (= (and b!253753 (not c!42786)) b!253731))

(assert (= (and b!253731 c!42784) b!253750))

(assert (= (and b!253731 (not c!42784)) b!253742))

(assert (= (and b!253750 res!124227) b!253732))

(assert (= (and b!253732 res!124225) b!253740))

(assert (= (and b!253742 c!42787) b!253741))

(assert (= (and b!253742 (not c!42787)) b!253739))

(assert (= (and b!253741 res!124219) b!253745))

(assert (= (and b!253745 res!124217) b!253743))

(assert (= (or b!253750 b!253741) bm!23948))

(assert (= (or b!253740 b!253743) bm!23947))

(assert (= (and b!253753 res!124216) b!253752))

(assert (= (and b!253752 c!42785) b!253737))

(assert (= (and b!253752 (not c!42785)) b!253730))

(assert (= (and b!253752 (not res!124220)) b!253738))

(assert (= (and b!253738 (not res!124222)) b!253736))

(assert (= (and b!253736 (not res!124226)) b!253747))

(assert (= (and b!253747 (not res!124223)) b!253733))

(assert (= (and b!253733 (not res!124218)) b!253748))

(assert (= (and b!253748 (not res!124214)) b!253749))

(assert (= (and b!253746 condMapEmpty!11112) mapIsEmpty!11112))

(assert (= (and b!253746 (not condMapEmpty!11112)) mapNonEmpty!11112))

(assert (= (and mapNonEmpty!11112 ((_ is ValueCellFull!2922) mapValue!11112)) b!253728))

(assert (= (and b!253746 ((_ is ValueCellFull!2922) mapDefault!11112)) b!253735))

(assert (= b!253729 b!253746))

(assert (= start!24280 b!253729))

(declare-fun m!269491 () Bool)

(assert (=> b!253744 m!269491))

(declare-fun m!269493 () Bool)

(assert (=> b!253731 m!269493))

(declare-fun m!269495 () Bool)

(assert (=> b!253736 m!269495))

(declare-fun m!269497 () Bool)

(assert (=> mapNonEmpty!11112 m!269497))

(declare-fun m!269499 () Bool)

(assert (=> b!253734 m!269499))

(declare-fun m!269501 () Bool)

(assert (=> b!253737 m!269501))

(declare-fun m!269503 () Bool)

(assert (=> b!253747 m!269503))

(declare-fun m!269505 () Bool)

(assert (=> b!253752 m!269505))

(declare-fun m!269507 () Bool)

(assert (=> b!253752 m!269507))

(declare-fun m!269509 () Bool)

(assert (=> b!253752 m!269509))

(declare-fun m!269511 () Bool)

(assert (=> b!253752 m!269511))

(declare-fun m!269513 () Bool)

(assert (=> b!253752 m!269513))

(declare-fun m!269515 () Bool)

(assert (=> b!253752 m!269515))

(declare-fun m!269517 () Bool)

(assert (=> b!253752 m!269517))

(declare-fun m!269519 () Bool)

(assert (=> b!253752 m!269519))

(declare-fun m!269521 () Bool)

(assert (=> b!253752 m!269521))

(declare-fun m!269523 () Bool)

(assert (=> b!253752 m!269523))

(declare-fun m!269525 () Bool)

(assert (=> b!253749 m!269525))

(declare-fun m!269527 () Bool)

(assert (=> start!24280 m!269527))

(declare-fun m!269529 () Bool)

(assert (=> b!253753 m!269529))

(declare-fun m!269531 () Bool)

(assert (=> b!253753 m!269531))

(assert (=> b!253753 m!269531))

(declare-fun m!269533 () Bool)

(assert (=> b!253753 m!269533))

(declare-fun m!269535 () Bool)

(assert (=> b!253748 m!269535))

(declare-fun m!269537 () Bool)

(assert (=> bm!23948 m!269537))

(declare-fun m!269539 () Bool)

(assert (=> b!253729 m!269539))

(declare-fun m!269541 () Bool)

(assert (=> b!253729 m!269541))

(declare-fun m!269543 () Bool)

(assert (=> b!253732 m!269543))

(assert (=> bm!23947 m!269507))

(declare-fun m!269545 () Bool)

(assert (=> b!253745 m!269545))

(check-sat (not mapNonEmpty!11112) (not b!253729) (not b_next!6669) (not b!253748) tp_is_empty!6531 (not b!253737) (not b!253752) (not bm!23948) (not bm!23947) (not b!253744) (not b!253736) (not b!253734) (not b!253747) b_and!13729 (not b!253731) (not b!253753) (not start!24280))
(check-sat b_and!13729 (not b_next!6669))
