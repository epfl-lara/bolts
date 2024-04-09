; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24152 () Bool)

(assert start!24152)

(declare-fun b!252422 () Bool)

(declare-fun b_free!6651 () Bool)

(declare-fun b_next!6651 () Bool)

(assert (=> b!252422 (= b_free!6651 (not b_next!6651))))

(declare-fun tp!23231 () Bool)

(declare-fun b_and!13705 () Bool)

(assert (=> b!252422 (= tp!23231 b_and!13705)))

(declare-fun b!252420 () Bool)

(declare-fun e!163701 () Bool)

(declare-fun e!163693 () Bool)

(assert (=> b!252420 (= e!163701 e!163693)))

(declare-fun res!123577 () Bool)

(declare-fun call!23779 () Bool)

(assert (=> b!252420 (= res!123577 call!23779)))

(assert (=> b!252420 (=> (not res!123577) (not e!163693))))

(declare-fun res!123574 () Bool)

(declare-fun e!163700 () Bool)

(assert (=> start!24152 (=> (not res!123574) (not e!163700))))

(declare-datatypes ((V!8331 0))(
  ( (V!8332 (val!3301 Int)) )
))
(declare-datatypes ((ValueCell!2913 0))(
  ( (ValueCellFull!2913 (v!5368 V!8331)) (EmptyCell!2913) )
))
(declare-datatypes ((array!12350 0))(
  ( (array!12351 (arr!5853 (Array (_ BitVec 32) ValueCell!2913)) (size!6200 (_ BitVec 32))) )
))
(declare-datatypes ((array!12352 0))(
  ( (array!12353 (arr!5854 (Array (_ BitVec 32) (_ BitVec 64))) (size!6201 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3726 0))(
  ( (LongMapFixedSize!3727 (defaultEntry!4664 Int) (mask!10883 (_ BitVec 32)) (extraKeys!4401 (_ BitVec 32)) (zeroValue!4505 V!8331) (minValue!4505 V!8331) (_size!1912 (_ BitVec 32)) (_keys!6812 array!12352) (_values!4647 array!12350) (_vacant!1912 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3726)

(declare-fun valid!1450 (LongMapFixedSize!3726) Bool)

(assert (=> start!24152 (= res!123574 (valid!1450 thiss!1504))))

(assert (=> start!24152 e!163700))

(declare-fun e!163707 () Bool)

(assert (=> start!24152 e!163707))

(assert (=> start!24152 true))

(declare-fun b!252421 () Bool)

(declare-fun e!163705 () Bool)

(declare-fun tp_is_empty!6513 () Bool)

(assert (=> b!252421 (= e!163705 tp_is_empty!6513)))

(declare-fun e!163696 () Bool)

(declare-fun array_inv!3859 (array!12352) Bool)

(declare-fun array_inv!3860 (array!12350) Bool)

(assert (=> b!252422 (= e!163707 (and tp!23231 tp_is_empty!6513 (array_inv!3859 (_keys!6812 thiss!1504)) (array_inv!3860 (_values!4647 thiss!1504)) e!163696))))

(declare-fun b!252423 () Bool)

(declare-fun e!163702 () Bool)

(assert (=> b!252423 (= e!163700 e!163702)))

(declare-fun res!123582 () Bool)

(assert (=> b!252423 (=> (not res!123582) (not e!163702))))

(declare-datatypes ((SeekEntryResult!1143 0))(
  ( (MissingZero!1143 (index!6742 (_ BitVec 32))) (Found!1143 (index!6743 (_ BitVec 32))) (Intermediate!1143 (undefined!1955 Bool) (index!6744 (_ BitVec 32)) (x!24781 (_ BitVec 32))) (Undefined!1143) (MissingVacant!1143 (index!6745 (_ BitVec 32))) )
))
(declare-fun lt!126569 () SeekEntryResult!1143)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!252423 (= res!123582 (or (= lt!126569 (MissingZero!1143 index!297)) (= lt!126569 (MissingVacant!1143 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12352 (_ BitVec 32)) SeekEntryResult!1143)

(assert (=> b!252423 (= lt!126569 (seekEntryOrOpen!0 key!932 (_keys!6812 thiss!1504) (mask!10883 thiss!1504)))))

(declare-fun b!252424 () Bool)

(declare-fun e!163699 () Bool)

(declare-datatypes ((List!3762 0))(
  ( (Nil!3759) (Cons!3758 (h!4420 (_ BitVec 64)) (t!8811 List!3762)) )
))
(declare-fun arrayNoDuplicates!0 (array!12352 (_ BitVec 32) List!3762) Bool)

(assert (=> b!252424 (= e!163699 (arrayNoDuplicates!0 (_keys!6812 thiss!1504) #b00000000000000000000000000000000 Nil!3759))))

(declare-fun mapNonEmpty!11076 () Bool)

(declare-fun mapRes!11076 () Bool)

(declare-fun tp!23232 () Bool)

(assert (=> mapNonEmpty!11076 (= mapRes!11076 (and tp!23232 e!163705))))

(declare-fun mapKey!11076 () (_ BitVec 32))

(declare-fun mapValue!11076 () ValueCell!2913)

(declare-fun mapRest!11076 () (Array (_ BitVec 32) ValueCell!2913))

(assert (=> mapNonEmpty!11076 (= (arr!5853 (_values!4647 thiss!1504)) (store mapRest!11076 mapKey!11076 mapValue!11076))))

(declare-fun b!252425 () Bool)

(declare-datatypes ((Unit!7812 0))(
  ( (Unit!7813) )
))
(declare-fun e!163694 () Unit!7812)

(declare-fun Unit!7814 () Unit!7812)

(assert (=> b!252425 (= e!163694 Unit!7814)))

(declare-fun lt!126573 () Unit!7812)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!406 (array!12352 array!12350 (_ BitVec 32) (_ BitVec 32) V!8331 V!8331 (_ BitVec 64) Int) Unit!7812)

(assert (=> b!252425 (= lt!126573 (lemmaInListMapThenSeekEntryOrOpenFindsIt!406 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) key!932 (defaultEntry!4664 thiss!1504)))))

(assert (=> b!252425 false))

(declare-fun b!252426 () Bool)

(declare-fun res!123576 () Bool)

(assert (=> b!252426 (=> res!123576 e!163699)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12352 (_ BitVec 32)) Bool)

(assert (=> b!252426 (= res!123576 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6812 thiss!1504) (mask!10883 thiss!1504))))))

(declare-fun b!252427 () Bool)

(declare-fun res!123575 () Bool)

(assert (=> b!252427 (=> (not res!123575) (not e!163700))))

(assert (=> b!252427 (= res!123575 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!252428 () Bool)

(declare-fun e!163703 () Bool)

(declare-fun call!23780 () Bool)

(assert (=> b!252428 (= e!163703 (not call!23780))))

(declare-fun b!252429 () Bool)

(declare-fun e!163706 () Bool)

(assert (=> b!252429 (= e!163696 (and e!163706 mapRes!11076))))

(declare-fun condMapEmpty!11076 () Bool)

(declare-fun mapDefault!11076 () ValueCell!2913)

(assert (=> b!252429 (= condMapEmpty!11076 (= (arr!5853 (_values!4647 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2913)) mapDefault!11076)))))

(declare-fun b!252430 () Bool)

(assert (=> b!252430 (= e!163706 tp_is_empty!6513)))

(declare-fun b!252431 () Bool)

(declare-fun res!123581 () Bool)

(assert (=> b!252431 (= res!123581 (= (select (arr!5854 (_keys!6812 thiss!1504)) (index!6745 lt!126569)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!252431 (=> (not res!123581) (not e!163693))))

(declare-fun b!252432 () Bool)

(declare-fun lt!126567 () Unit!7812)

(assert (=> b!252432 (= e!163694 lt!126567)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!408 (array!12352 array!12350 (_ BitVec 32) (_ BitVec 32) V!8331 V!8331 (_ BitVec 64) Int) Unit!7812)

(assert (=> b!252432 (= lt!126567 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!408 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) key!932 (defaultEntry!4664 thiss!1504)))))

(declare-fun c!42522 () Bool)

(get-info :version)

(assert (=> b!252432 (= c!42522 ((_ is MissingZero!1143) lt!126569))))

(declare-fun e!163695 () Bool)

(assert (=> b!252432 e!163695))

(declare-fun b!252433 () Bool)

(declare-fun e!163697 () Unit!7812)

(declare-fun Unit!7815 () Unit!7812)

(assert (=> b!252433 (= e!163697 Unit!7815)))

(declare-fun bm!23776 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23776 (= call!23779 (inRange!0 (ite c!42522 (index!6742 lt!126569) (index!6745 lt!126569)) (mask!10883 thiss!1504)))))

(declare-fun b!252434 () Bool)

(declare-fun Unit!7816 () Unit!7812)

(assert (=> b!252434 (= e!163697 Unit!7816)))

(declare-fun lt!126570 () Unit!7812)

(declare-fun lemmaArrayContainsKeyThenInListMap!211 (array!12352 array!12350 (_ BitVec 32) (_ BitVec 32) V!8331 V!8331 (_ BitVec 64) (_ BitVec 32) Int) Unit!7812)

(assert (=> b!252434 (= lt!126570 (lemmaArrayContainsKeyThenInListMap!211 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504)))))

(assert (=> b!252434 false))

(declare-fun b!252435 () Bool)

(declare-fun res!123579 () Bool)

(assert (=> b!252435 (=> (not res!123579) (not e!163703))))

(assert (=> b!252435 (= res!123579 call!23779)))

(assert (=> b!252435 (= e!163695 e!163703)))

(declare-fun b!252436 () Bool)

(declare-fun res!123578 () Bool)

(assert (=> b!252436 (=> res!123578 e!163699)))

(assert (=> b!252436 (= res!123578 (or (not (= (size!6200 (_values!4647 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10883 thiss!1504)))) (not (= (size!6201 (_keys!6812 thiss!1504)) (size!6200 (_values!4647 thiss!1504)))) (bvslt (mask!10883 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4401 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4401 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!252437 () Bool)

(declare-fun c!42520 () Bool)

(assert (=> b!252437 (= c!42520 ((_ is MissingVacant!1143) lt!126569))))

(assert (=> b!252437 (= e!163695 e!163701)))

(declare-fun b!252438 () Bool)

(declare-fun e!163698 () Bool)

(assert (=> b!252438 (= e!163698 (not e!163699))))

(declare-fun res!123573 () Bool)

(assert (=> b!252438 (=> res!123573 e!163699)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!252438 (= res!123573 (not (validMask!0 (mask!10883 thiss!1504))))))

(declare-fun lt!126576 () array!12352)

(assert (=> b!252438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!126576 (mask!10883 thiss!1504))))

(declare-fun lt!126574 () Unit!7812)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12352 (_ BitVec 32) (_ BitVec 32)) Unit!7812)

(assert (=> b!252438 (= lt!126574 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6812 thiss!1504) index!297 (mask!10883 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12352 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!252438 (= (arrayCountValidKeys!0 lt!126576 #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6812 thiss!1504) #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504)))))))

(declare-fun lt!126568 () Unit!7812)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12352 (_ BitVec 32) (_ BitVec 64)) Unit!7812)

(assert (=> b!252438 (= lt!126568 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6812 thiss!1504) index!297 key!932))))

(assert (=> b!252438 (arrayNoDuplicates!0 lt!126576 #b00000000000000000000000000000000 Nil!3759)))

(assert (=> b!252438 (= lt!126576 (array!12353 (store (arr!5854 (_keys!6812 thiss!1504)) index!297 key!932) (size!6201 (_keys!6812 thiss!1504))))))

(declare-fun lt!126572 () Unit!7812)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12352 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3762) Unit!7812)

(assert (=> b!252438 (= lt!126572 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6812 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3759))))

(declare-fun lt!126575 () Unit!7812)

(assert (=> b!252438 (= lt!126575 e!163697)))

(declare-fun c!42521 () Bool)

(declare-fun arrayContainsKey!0 (array!12352 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!252438 (= c!42521 (arrayContainsKey!0 (_keys!6812 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!252439 () Bool)

(assert (=> b!252439 (= e!163701 ((_ is Undefined!1143) lt!126569))))

(declare-fun b!252440 () Bool)

(assert (=> b!252440 (= e!163693 (not call!23780))))

(declare-fun bm!23777 () Bool)

(assert (=> bm!23777 (= call!23780 (arrayContainsKey!0 (_keys!6812 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!252441 () Bool)

(assert (=> b!252441 (= e!163702 e!163698)))

(declare-fun res!123572 () Bool)

(assert (=> b!252441 (=> (not res!123572) (not e!163698))))

(assert (=> b!252441 (= res!123572 (inRange!0 index!297 (mask!10883 thiss!1504)))))

(declare-fun lt!126571 () Unit!7812)

(assert (=> b!252441 (= lt!126571 e!163694)))

(declare-fun c!42523 () Bool)

(declare-datatypes ((tuple2!4858 0))(
  ( (tuple2!4859 (_1!2439 (_ BitVec 64)) (_2!2439 V!8331)) )
))
(declare-datatypes ((List!3763 0))(
  ( (Nil!3760) (Cons!3759 (h!4421 tuple2!4858) (t!8812 List!3763)) )
))
(declare-datatypes ((ListLongMap!3785 0))(
  ( (ListLongMap!3786 (toList!1908 List!3763)) )
))
(declare-fun contains!1829 (ListLongMap!3785 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1431 (array!12352 array!12350 (_ BitVec 32) (_ BitVec 32) V!8331 V!8331 (_ BitVec 32) Int) ListLongMap!3785)

(assert (=> b!252441 (= c!42523 (contains!1829 (getCurrentListMap!1431 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504)) key!932))))

(declare-fun mapIsEmpty!11076 () Bool)

(assert (=> mapIsEmpty!11076 mapRes!11076))

(declare-fun b!252442 () Bool)

(declare-fun res!123580 () Bool)

(assert (=> b!252442 (=> (not res!123580) (not e!163703))))

(assert (=> b!252442 (= res!123580 (= (select (arr!5854 (_keys!6812 thiss!1504)) (index!6742 lt!126569)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!24152 res!123574) b!252427))

(assert (= (and b!252427 res!123575) b!252423))

(assert (= (and b!252423 res!123582) b!252441))

(assert (= (and b!252441 c!42523) b!252425))

(assert (= (and b!252441 (not c!42523)) b!252432))

(assert (= (and b!252432 c!42522) b!252435))

(assert (= (and b!252432 (not c!42522)) b!252437))

(assert (= (and b!252435 res!123579) b!252442))

(assert (= (and b!252442 res!123580) b!252428))

(assert (= (and b!252437 c!42520) b!252420))

(assert (= (and b!252437 (not c!42520)) b!252439))

(assert (= (and b!252420 res!123577) b!252431))

(assert (= (and b!252431 res!123581) b!252440))

(assert (= (or b!252435 b!252420) bm!23776))

(assert (= (or b!252428 b!252440) bm!23777))

(assert (= (and b!252441 res!123572) b!252438))

(assert (= (and b!252438 c!42521) b!252434))

(assert (= (and b!252438 (not c!42521)) b!252433))

(assert (= (and b!252438 (not res!123573)) b!252436))

(assert (= (and b!252436 (not res!123578)) b!252426))

(assert (= (and b!252426 (not res!123576)) b!252424))

(assert (= (and b!252429 condMapEmpty!11076) mapIsEmpty!11076))

(assert (= (and b!252429 (not condMapEmpty!11076)) mapNonEmpty!11076))

(assert (= (and mapNonEmpty!11076 ((_ is ValueCellFull!2913) mapValue!11076)) b!252421))

(assert (= (and b!252429 ((_ is ValueCellFull!2913) mapDefault!11076)) b!252430))

(assert (= b!252422 b!252429))

(assert (= start!24152 b!252422))

(declare-fun m!268559 () Bool)

(assert (=> b!252434 m!268559))

(declare-fun m!268561 () Bool)

(assert (=> b!252438 m!268561))

(declare-fun m!268563 () Bool)

(assert (=> b!252438 m!268563))

(declare-fun m!268565 () Bool)

(assert (=> b!252438 m!268565))

(declare-fun m!268567 () Bool)

(assert (=> b!252438 m!268567))

(declare-fun m!268569 () Bool)

(assert (=> b!252438 m!268569))

(declare-fun m!268571 () Bool)

(assert (=> b!252438 m!268571))

(declare-fun m!268573 () Bool)

(assert (=> b!252438 m!268573))

(declare-fun m!268575 () Bool)

(assert (=> b!252438 m!268575))

(declare-fun m!268577 () Bool)

(assert (=> b!252438 m!268577))

(declare-fun m!268579 () Bool)

(assert (=> b!252438 m!268579))

(declare-fun m!268581 () Bool)

(assert (=> mapNonEmpty!11076 m!268581))

(declare-fun m!268583 () Bool)

(assert (=> b!252431 m!268583))

(declare-fun m!268585 () Bool)

(assert (=> b!252442 m!268585))

(declare-fun m!268587 () Bool)

(assert (=> b!252425 m!268587))

(declare-fun m!268589 () Bool)

(assert (=> b!252432 m!268589))

(declare-fun m!268591 () Bool)

(assert (=> b!252423 m!268591))

(declare-fun m!268593 () Bool)

(assert (=> b!252426 m!268593))

(assert (=> bm!23777 m!268563))

(declare-fun m!268595 () Bool)

(assert (=> b!252441 m!268595))

(declare-fun m!268597 () Bool)

(assert (=> b!252441 m!268597))

(assert (=> b!252441 m!268597))

(declare-fun m!268599 () Bool)

(assert (=> b!252441 m!268599))

(declare-fun m!268601 () Bool)

(assert (=> b!252424 m!268601))

(declare-fun m!268603 () Bool)

(assert (=> bm!23776 m!268603))

(declare-fun m!268605 () Bool)

(assert (=> start!24152 m!268605))

(declare-fun m!268607 () Bool)

(assert (=> b!252422 m!268607))

(declare-fun m!268609 () Bool)

(assert (=> b!252422 m!268609))

(check-sat (not b!252441) (not b!252422) (not b!252425) (not b_next!6651) (not b!252434) tp_is_empty!6513 (not b!252423) (not b!252438) (not start!24152) (not b!252426) b_and!13705 (not b!252424) (not bm!23777) (not b!252432) (not bm!23776) (not mapNonEmpty!11076))
(check-sat b_and!13705 (not b_next!6651))
(get-model)

(declare-fun d!61253 () Bool)

(declare-fun res!123620 () Bool)

(declare-fun e!163761 () Bool)

(assert (=> d!61253 (=> res!123620 e!163761)))

(assert (=> d!61253 (= res!123620 (bvsge #b00000000000000000000000000000000 (size!6201 lt!126576)))))

(assert (=> d!61253 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!126576 (mask!10883 thiss!1504)) e!163761)))

(declare-fun b!252520 () Bool)

(declare-fun e!163760 () Bool)

(declare-fun call!23789 () Bool)

(assert (=> b!252520 (= e!163760 call!23789)))

(declare-fun bm!23786 () Bool)

(assert (=> bm!23786 (= call!23789 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!126576 (mask!10883 thiss!1504)))))

(declare-fun b!252521 () Bool)

(declare-fun e!163759 () Bool)

(assert (=> b!252521 (= e!163760 e!163759)))

(declare-fun lt!126615 () (_ BitVec 64))

(assert (=> b!252521 (= lt!126615 (select (arr!5854 lt!126576) #b00000000000000000000000000000000))))

(declare-fun lt!126614 () Unit!7812)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12352 (_ BitVec 64) (_ BitVec 32)) Unit!7812)

(assert (=> b!252521 (= lt!126614 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!126576 lt!126615 #b00000000000000000000000000000000))))

(assert (=> b!252521 (arrayContainsKey!0 lt!126576 lt!126615 #b00000000000000000000000000000000)))

(declare-fun lt!126613 () Unit!7812)

(assert (=> b!252521 (= lt!126613 lt!126614)))

(declare-fun res!123621 () Bool)

(assert (=> b!252521 (= res!123621 (= (seekEntryOrOpen!0 (select (arr!5854 lt!126576) #b00000000000000000000000000000000) lt!126576 (mask!10883 thiss!1504)) (Found!1143 #b00000000000000000000000000000000)))))

(assert (=> b!252521 (=> (not res!123621) (not e!163759))))

(declare-fun b!252522 () Bool)

(assert (=> b!252522 (= e!163759 call!23789)))

(declare-fun b!252523 () Bool)

(assert (=> b!252523 (= e!163761 e!163760)))

(declare-fun c!42538 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!252523 (= c!42538 (validKeyInArray!0 (select (arr!5854 lt!126576) #b00000000000000000000000000000000)))))

(assert (= (and d!61253 (not res!123620)) b!252523))

(assert (= (and b!252523 c!42538) b!252521))

(assert (= (and b!252523 (not c!42538)) b!252520))

(assert (= (and b!252521 res!123621) b!252522))

(assert (= (or b!252522 b!252520) bm!23786))

(declare-fun m!268663 () Bool)

(assert (=> bm!23786 m!268663))

(declare-fun m!268665 () Bool)

(assert (=> b!252521 m!268665))

(declare-fun m!268667 () Bool)

(assert (=> b!252521 m!268667))

(declare-fun m!268669 () Bool)

(assert (=> b!252521 m!268669))

(assert (=> b!252521 m!268665))

(declare-fun m!268671 () Bool)

(assert (=> b!252521 m!268671))

(assert (=> b!252523 m!268665))

(assert (=> b!252523 m!268665))

(declare-fun m!268673 () Bool)

(assert (=> b!252523 m!268673))

(assert (=> b!252438 d!61253))

(declare-fun d!61255 () Bool)

(declare-fun e!163766 () Bool)

(assert (=> d!61255 e!163766))

(declare-fun res!123631 () Bool)

(assert (=> d!61255 (=> (not res!123631) (not e!163766))))

(assert (=> d!61255 (= res!123631 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6201 (_keys!6812 thiss!1504)))))))

(declare-fun lt!126618 () Unit!7812)

(declare-fun choose!1 (array!12352 (_ BitVec 32) (_ BitVec 64)) Unit!7812)

(assert (=> d!61255 (= lt!126618 (choose!1 (_keys!6812 thiss!1504) index!297 key!932))))

(declare-fun e!163767 () Bool)

(assert (=> d!61255 e!163767))

(declare-fun res!123632 () Bool)

(assert (=> d!61255 (=> (not res!123632) (not e!163767))))

(assert (=> d!61255 (= res!123632 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6201 (_keys!6812 thiss!1504)))))))

(assert (=> d!61255 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6812 thiss!1504) index!297 key!932) lt!126618)))

(declare-fun b!252534 () Bool)

(assert (=> b!252534 (= e!163767 (bvslt (size!6201 (_keys!6812 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!252535 () Bool)

(assert (=> b!252535 (= e!163766 (= (arrayCountValidKeys!0 (array!12353 (store (arr!5854 (_keys!6812 thiss!1504)) index!297 key!932) (size!6201 (_keys!6812 thiss!1504))) #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6812 thiss!1504) #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!252533 () Bool)

(declare-fun res!123633 () Bool)

(assert (=> b!252533 (=> (not res!123633) (not e!163767))))

(assert (=> b!252533 (= res!123633 (validKeyInArray!0 key!932))))

(declare-fun b!252532 () Bool)

(declare-fun res!123630 () Bool)

(assert (=> b!252532 (=> (not res!123630) (not e!163767))))

(assert (=> b!252532 (= res!123630 (not (validKeyInArray!0 (select (arr!5854 (_keys!6812 thiss!1504)) index!297))))))

(assert (= (and d!61255 res!123632) b!252532))

(assert (= (and b!252532 res!123630) b!252533))

(assert (= (and b!252533 res!123633) b!252534))

(assert (= (and d!61255 res!123631) b!252535))

(declare-fun m!268675 () Bool)

(assert (=> d!61255 m!268675))

(assert (=> b!252535 m!268575))

(declare-fun m!268677 () Bool)

(assert (=> b!252535 m!268677))

(assert (=> b!252535 m!268577))

(declare-fun m!268679 () Bool)

(assert (=> b!252533 m!268679))

(declare-fun m!268681 () Bool)

(assert (=> b!252532 m!268681))

(assert (=> b!252532 m!268681))

(declare-fun m!268683 () Bool)

(assert (=> b!252532 m!268683))

(assert (=> b!252438 d!61255))

(declare-fun bm!23789 () Bool)

(declare-fun call!23792 () Bool)

(declare-fun c!42541 () Bool)

(assert (=> bm!23789 (= call!23792 (arrayNoDuplicates!0 lt!126576 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42541 (Cons!3758 (select (arr!5854 lt!126576) #b00000000000000000000000000000000) Nil!3759) Nil!3759)))))

(declare-fun b!252546 () Bool)

(declare-fun e!163779 () Bool)

(assert (=> b!252546 (= e!163779 call!23792)))

(declare-fun d!61257 () Bool)

(declare-fun res!123640 () Bool)

(declare-fun e!163778 () Bool)

(assert (=> d!61257 (=> res!123640 e!163778)))

(assert (=> d!61257 (= res!123640 (bvsge #b00000000000000000000000000000000 (size!6201 lt!126576)))))

(assert (=> d!61257 (= (arrayNoDuplicates!0 lt!126576 #b00000000000000000000000000000000 Nil!3759) e!163778)))

(declare-fun b!252547 () Bool)

(assert (=> b!252547 (= e!163779 call!23792)))

(declare-fun b!252548 () Bool)

(declare-fun e!163777 () Bool)

(declare-fun contains!1831 (List!3762 (_ BitVec 64)) Bool)

(assert (=> b!252548 (= e!163777 (contains!1831 Nil!3759 (select (arr!5854 lt!126576) #b00000000000000000000000000000000)))))

(declare-fun b!252549 () Bool)

(declare-fun e!163776 () Bool)

(assert (=> b!252549 (= e!163778 e!163776)))

(declare-fun res!123642 () Bool)

(assert (=> b!252549 (=> (not res!123642) (not e!163776))))

(assert (=> b!252549 (= res!123642 (not e!163777))))

(declare-fun res!123641 () Bool)

(assert (=> b!252549 (=> (not res!123641) (not e!163777))))

(assert (=> b!252549 (= res!123641 (validKeyInArray!0 (select (arr!5854 lt!126576) #b00000000000000000000000000000000)))))

(declare-fun b!252550 () Bool)

(assert (=> b!252550 (= e!163776 e!163779)))

(assert (=> b!252550 (= c!42541 (validKeyInArray!0 (select (arr!5854 lt!126576) #b00000000000000000000000000000000)))))

(assert (= (and d!61257 (not res!123640)) b!252549))

(assert (= (and b!252549 res!123641) b!252548))

(assert (= (and b!252549 res!123642) b!252550))

(assert (= (and b!252550 c!42541) b!252546))

(assert (= (and b!252550 (not c!42541)) b!252547))

(assert (= (or b!252546 b!252547) bm!23789))

(assert (=> bm!23789 m!268665))

(declare-fun m!268685 () Bool)

(assert (=> bm!23789 m!268685))

(assert (=> b!252548 m!268665))

(assert (=> b!252548 m!268665))

(declare-fun m!268687 () Bool)

(assert (=> b!252548 m!268687))

(assert (=> b!252549 m!268665))

(assert (=> b!252549 m!268665))

(assert (=> b!252549 m!268673))

(assert (=> b!252550 m!268665))

(assert (=> b!252550 m!268665))

(assert (=> b!252550 m!268673))

(assert (=> b!252438 d!61257))

(declare-fun b!252559 () Bool)

(declare-fun e!163785 () (_ BitVec 32))

(declare-fun e!163784 () (_ BitVec 32))

(assert (=> b!252559 (= e!163785 e!163784)))

(declare-fun c!42547 () Bool)

(assert (=> b!252559 (= c!42547 (validKeyInArray!0 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!252560 () Bool)

(declare-fun call!23795 () (_ BitVec 32))

(assert (=> b!252560 (= e!163784 (bvadd #b00000000000000000000000000000001 call!23795))))

(declare-fun b!252561 () Bool)

(assert (=> b!252561 (= e!163784 call!23795)))

(declare-fun b!252562 () Bool)

(assert (=> b!252562 (= e!163785 #b00000000000000000000000000000000)))

(declare-fun d!61259 () Bool)

(declare-fun lt!126621 () (_ BitVec 32))

(assert (=> d!61259 (and (bvsge lt!126621 #b00000000000000000000000000000000) (bvsle lt!126621 (bvsub (size!6201 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!61259 (= lt!126621 e!163785)))

(declare-fun c!42546 () Bool)

(assert (=> d!61259 (= c!42546 (bvsge #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))))))

(assert (=> d!61259 (and (bvsle #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6201 (_keys!6812 thiss!1504)) (size!6201 (_keys!6812 thiss!1504))))))

(assert (=> d!61259 (= (arrayCountValidKeys!0 (_keys!6812 thiss!1504) #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))) lt!126621)))

(declare-fun bm!23792 () Bool)

(assert (=> bm!23792 (= call!23795 (arrayCountValidKeys!0 (_keys!6812 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6201 (_keys!6812 thiss!1504))))))

(assert (= (and d!61259 c!42546) b!252562))

(assert (= (and d!61259 (not c!42546)) b!252559))

(assert (= (and b!252559 c!42547) b!252560))

(assert (= (and b!252559 (not c!42547)) b!252561))

(assert (= (or b!252560 b!252561) bm!23792))

(declare-fun m!268689 () Bool)

(assert (=> b!252559 m!268689))

(assert (=> b!252559 m!268689))

(declare-fun m!268691 () Bool)

(assert (=> b!252559 m!268691))

(declare-fun m!268693 () Bool)

(assert (=> bm!23792 m!268693))

(assert (=> b!252438 d!61259))

(declare-fun d!61261 () Bool)

(assert (=> d!61261 (= (validMask!0 (mask!10883 thiss!1504)) (and (or (= (mask!10883 thiss!1504) #b00000000000000000000000000000111) (= (mask!10883 thiss!1504) #b00000000000000000000000000001111) (= (mask!10883 thiss!1504) #b00000000000000000000000000011111) (= (mask!10883 thiss!1504) #b00000000000000000000000000111111) (= (mask!10883 thiss!1504) #b00000000000000000000000001111111) (= (mask!10883 thiss!1504) #b00000000000000000000000011111111) (= (mask!10883 thiss!1504) #b00000000000000000000000111111111) (= (mask!10883 thiss!1504) #b00000000000000000000001111111111) (= (mask!10883 thiss!1504) #b00000000000000000000011111111111) (= (mask!10883 thiss!1504) #b00000000000000000000111111111111) (= (mask!10883 thiss!1504) #b00000000000000000001111111111111) (= (mask!10883 thiss!1504) #b00000000000000000011111111111111) (= (mask!10883 thiss!1504) #b00000000000000000111111111111111) (= (mask!10883 thiss!1504) #b00000000000000001111111111111111) (= (mask!10883 thiss!1504) #b00000000000000011111111111111111) (= (mask!10883 thiss!1504) #b00000000000000111111111111111111) (= (mask!10883 thiss!1504) #b00000000000001111111111111111111) (= (mask!10883 thiss!1504) #b00000000000011111111111111111111) (= (mask!10883 thiss!1504) #b00000000000111111111111111111111) (= (mask!10883 thiss!1504) #b00000000001111111111111111111111) (= (mask!10883 thiss!1504) #b00000000011111111111111111111111) (= (mask!10883 thiss!1504) #b00000000111111111111111111111111) (= (mask!10883 thiss!1504) #b00000001111111111111111111111111) (= (mask!10883 thiss!1504) #b00000011111111111111111111111111) (= (mask!10883 thiss!1504) #b00000111111111111111111111111111) (= (mask!10883 thiss!1504) #b00001111111111111111111111111111) (= (mask!10883 thiss!1504) #b00011111111111111111111111111111) (= (mask!10883 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10883 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!252438 d!61261))

(declare-fun b!252563 () Bool)

(declare-fun e!163787 () (_ BitVec 32))

(declare-fun e!163786 () (_ BitVec 32))

(assert (=> b!252563 (= e!163787 e!163786)))

(declare-fun c!42549 () Bool)

(assert (=> b!252563 (= c!42549 (validKeyInArray!0 (select (arr!5854 lt!126576) #b00000000000000000000000000000000)))))

(declare-fun b!252564 () Bool)

(declare-fun call!23796 () (_ BitVec 32))

(assert (=> b!252564 (= e!163786 (bvadd #b00000000000000000000000000000001 call!23796))))

(declare-fun b!252565 () Bool)

(assert (=> b!252565 (= e!163786 call!23796)))

(declare-fun b!252566 () Bool)

(assert (=> b!252566 (= e!163787 #b00000000000000000000000000000000)))

(declare-fun d!61263 () Bool)

(declare-fun lt!126622 () (_ BitVec 32))

(assert (=> d!61263 (and (bvsge lt!126622 #b00000000000000000000000000000000) (bvsle lt!126622 (bvsub (size!6201 lt!126576) #b00000000000000000000000000000000)))))

(assert (=> d!61263 (= lt!126622 e!163787)))

(declare-fun c!42548 () Bool)

(assert (=> d!61263 (= c!42548 (bvsge #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))))))

(assert (=> d!61263 (and (bvsle #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6201 (_keys!6812 thiss!1504)) (size!6201 lt!126576)))))

(assert (=> d!61263 (= (arrayCountValidKeys!0 lt!126576 #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))) lt!126622)))

(declare-fun bm!23793 () Bool)

(assert (=> bm!23793 (= call!23796 (arrayCountValidKeys!0 lt!126576 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6201 (_keys!6812 thiss!1504))))))

(assert (= (and d!61263 c!42548) b!252566))

(assert (= (and d!61263 (not c!42548)) b!252563))

(assert (= (and b!252563 c!42549) b!252564))

(assert (= (and b!252563 (not c!42549)) b!252565))

(assert (= (or b!252564 b!252565) bm!23793))

(assert (=> b!252563 m!268665))

(assert (=> b!252563 m!268665))

(assert (=> b!252563 m!268673))

(declare-fun m!268695 () Bool)

(assert (=> bm!23793 m!268695))

(assert (=> b!252438 d!61263))

(declare-fun d!61265 () Bool)

(declare-fun e!163790 () Bool)

(assert (=> d!61265 e!163790))

(declare-fun res!123645 () Bool)

(assert (=> d!61265 (=> (not res!123645) (not e!163790))))

(assert (=> d!61265 (= res!123645 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6201 (_keys!6812 thiss!1504)))))))

(declare-fun lt!126625 () Unit!7812)

(declare-fun choose!41 (array!12352 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3762) Unit!7812)

(assert (=> d!61265 (= lt!126625 (choose!41 (_keys!6812 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3759))))

(assert (=> d!61265 (bvslt (size!6201 (_keys!6812 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!61265 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6812 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3759) lt!126625)))

(declare-fun b!252569 () Bool)

(assert (=> b!252569 (= e!163790 (arrayNoDuplicates!0 (array!12353 (store (arr!5854 (_keys!6812 thiss!1504)) index!297 key!932) (size!6201 (_keys!6812 thiss!1504))) #b00000000000000000000000000000000 Nil!3759))))

(assert (= (and d!61265 res!123645) b!252569))

(declare-fun m!268697 () Bool)

(assert (=> d!61265 m!268697))

(assert (=> b!252569 m!268575))

(declare-fun m!268699 () Bool)

(assert (=> b!252569 m!268699))

(assert (=> b!252438 d!61265))

(declare-fun d!61267 () Bool)

(declare-fun res!123650 () Bool)

(declare-fun e!163795 () Bool)

(assert (=> d!61267 (=> res!123650 e!163795)))

(assert (=> d!61267 (= res!123650 (= (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61267 (= (arrayContainsKey!0 (_keys!6812 thiss!1504) key!932 #b00000000000000000000000000000000) e!163795)))

(declare-fun b!252574 () Bool)

(declare-fun e!163796 () Bool)

(assert (=> b!252574 (= e!163795 e!163796)))

(declare-fun res!123651 () Bool)

(assert (=> b!252574 (=> (not res!123651) (not e!163796))))

(assert (=> b!252574 (= res!123651 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6201 (_keys!6812 thiss!1504))))))

(declare-fun b!252575 () Bool)

(assert (=> b!252575 (= e!163796 (arrayContainsKey!0 (_keys!6812 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61267 (not res!123650)) b!252574))

(assert (= (and b!252574 res!123651) b!252575))

(assert (=> d!61267 m!268689))

(declare-fun m!268701 () Bool)

(assert (=> b!252575 m!268701))

(assert (=> b!252438 d!61267))

(declare-fun d!61269 () Bool)

(declare-fun e!163799 () Bool)

(assert (=> d!61269 e!163799))

(declare-fun res!123654 () Bool)

(assert (=> d!61269 (=> (not res!123654) (not e!163799))))

(assert (=> d!61269 (= res!123654 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6201 (_keys!6812 thiss!1504)))))))

(declare-fun lt!126628 () Unit!7812)

(declare-fun choose!102 ((_ BitVec 64) array!12352 (_ BitVec 32) (_ BitVec 32)) Unit!7812)

(assert (=> d!61269 (= lt!126628 (choose!102 key!932 (_keys!6812 thiss!1504) index!297 (mask!10883 thiss!1504)))))

(assert (=> d!61269 (validMask!0 (mask!10883 thiss!1504))))

(assert (=> d!61269 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6812 thiss!1504) index!297 (mask!10883 thiss!1504)) lt!126628)))

(declare-fun b!252578 () Bool)

(assert (=> b!252578 (= e!163799 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12353 (store (arr!5854 (_keys!6812 thiss!1504)) index!297 key!932) (size!6201 (_keys!6812 thiss!1504))) (mask!10883 thiss!1504)))))

(assert (= (and d!61269 res!123654) b!252578))

(declare-fun m!268703 () Bool)

(assert (=> d!61269 m!268703))

(assert (=> d!61269 m!268561))

(assert (=> b!252578 m!268575))

(declare-fun m!268705 () Bool)

(assert (=> b!252578 m!268705))

(assert (=> b!252438 d!61269))

(declare-fun d!61271 () Bool)

(declare-fun e!163802 () Bool)

(assert (=> d!61271 e!163802))

(declare-fun res!123659 () Bool)

(assert (=> d!61271 (=> (not res!123659) (not e!163802))))

(declare-fun lt!126634 () SeekEntryResult!1143)

(assert (=> d!61271 (= res!123659 ((_ is Found!1143) lt!126634))))

(assert (=> d!61271 (= lt!126634 (seekEntryOrOpen!0 key!932 (_keys!6812 thiss!1504) (mask!10883 thiss!1504)))))

(declare-fun lt!126633 () Unit!7812)

(declare-fun choose!1211 (array!12352 array!12350 (_ BitVec 32) (_ BitVec 32) V!8331 V!8331 (_ BitVec 64) Int) Unit!7812)

(assert (=> d!61271 (= lt!126633 (choose!1211 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) key!932 (defaultEntry!4664 thiss!1504)))))

(assert (=> d!61271 (validMask!0 (mask!10883 thiss!1504))))

(assert (=> d!61271 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!406 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) key!932 (defaultEntry!4664 thiss!1504)) lt!126633)))

(declare-fun b!252583 () Bool)

(declare-fun res!123660 () Bool)

(assert (=> b!252583 (=> (not res!123660) (not e!163802))))

(assert (=> b!252583 (= res!123660 (inRange!0 (index!6743 lt!126634) (mask!10883 thiss!1504)))))

(declare-fun b!252584 () Bool)

(assert (=> b!252584 (= e!163802 (= (select (arr!5854 (_keys!6812 thiss!1504)) (index!6743 lt!126634)) key!932))))

(assert (=> b!252584 (and (bvsge (index!6743 lt!126634) #b00000000000000000000000000000000) (bvslt (index!6743 lt!126634) (size!6201 (_keys!6812 thiss!1504))))))

(assert (= (and d!61271 res!123659) b!252583))

(assert (= (and b!252583 res!123660) b!252584))

(assert (=> d!61271 m!268591))

(declare-fun m!268707 () Bool)

(assert (=> d!61271 m!268707))

(assert (=> d!61271 m!268561))

(declare-fun m!268709 () Bool)

(assert (=> b!252583 m!268709))

(declare-fun m!268711 () Bool)

(assert (=> b!252584 m!268711))

(assert (=> b!252425 d!61271))

(declare-fun d!61273 () Bool)

(assert (=> d!61273 (contains!1829 (getCurrentListMap!1431 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504)) key!932)))

(declare-fun lt!126637 () Unit!7812)

(declare-fun choose!1212 (array!12352 array!12350 (_ BitVec 32) (_ BitVec 32) V!8331 V!8331 (_ BitVec 64) (_ BitVec 32) Int) Unit!7812)

(assert (=> d!61273 (= lt!126637 (choose!1212 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504)))))

(assert (=> d!61273 (validMask!0 (mask!10883 thiss!1504))))

(assert (=> d!61273 (= (lemmaArrayContainsKeyThenInListMap!211 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504)) lt!126637)))

(declare-fun bs!9032 () Bool)

(assert (= bs!9032 d!61273))

(assert (=> bs!9032 m!268597))

(assert (=> bs!9032 m!268597))

(assert (=> bs!9032 m!268599))

(declare-fun m!268713 () Bool)

(assert (=> bs!9032 m!268713))

(assert (=> bs!9032 m!268561))

(assert (=> b!252434 d!61273))

(declare-fun d!61275 () Bool)

(declare-fun res!123661 () Bool)

(declare-fun e!163805 () Bool)

(assert (=> d!61275 (=> res!123661 e!163805)))

(assert (=> d!61275 (= res!123661 (bvsge #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))))))

(assert (=> d!61275 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6812 thiss!1504) (mask!10883 thiss!1504)) e!163805)))

(declare-fun b!252585 () Bool)

(declare-fun e!163804 () Bool)

(declare-fun call!23797 () Bool)

(assert (=> b!252585 (= e!163804 call!23797)))

(declare-fun bm!23794 () Bool)

(assert (=> bm!23794 (= call!23797 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6812 thiss!1504) (mask!10883 thiss!1504)))))

(declare-fun b!252586 () Bool)

(declare-fun e!163803 () Bool)

(assert (=> b!252586 (= e!163804 e!163803)))

(declare-fun lt!126640 () (_ BitVec 64))

(assert (=> b!252586 (= lt!126640 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126639 () Unit!7812)

(assert (=> b!252586 (= lt!126639 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6812 thiss!1504) lt!126640 #b00000000000000000000000000000000))))

(assert (=> b!252586 (arrayContainsKey!0 (_keys!6812 thiss!1504) lt!126640 #b00000000000000000000000000000000)))

(declare-fun lt!126638 () Unit!7812)

(assert (=> b!252586 (= lt!126638 lt!126639)))

(declare-fun res!123662 () Bool)

(assert (=> b!252586 (= res!123662 (= (seekEntryOrOpen!0 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000) (_keys!6812 thiss!1504) (mask!10883 thiss!1504)) (Found!1143 #b00000000000000000000000000000000)))))

(assert (=> b!252586 (=> (not res!123662) (not e!163803))))

(declare-fun b!252587 () Bool)

(assert (=> b!252587 (= e!163803 call!23797)))

(declare-fun b!252588 () Bool)

(assert (=> b!252588 (= e!163805 e!163804)))

(declare-fun c!42550 () Bool)

(assert (=> b!252588 (= c!42550 (validKeyInArray!0 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!61275 (not res!123661)) b!252588))

(assert (= (and b!252588 c!42550) b!252586))

(assert (= (and b!252588 (not c!42550)) b!252585))

(assert (= (and b!252586 res!123662) b!252587))

(assert (= (or b!252587 b!252585) bm!23794))

(declare-fun m!268715 () Bool)

(assert (=> bm!23794 m!268715))

(assert (=> b!252586 m!268689))

(declare-fun m!268717 () Bool)

(assert (=> b!252586 m!268717))

(declare-fun m!268719 () Bool)

(assert (=> b!252586 m!268719))

(assert (=> b!252586 m!268689))

(declare-fun m!268721 () Bool)

(assert (=> b!252586 m!268721))

(assert (=> b!252588 m!268689))

(assert (=> b!252588 m!268689))

(assert (=> b!252588 m!268691))

(assert (=> b!252426 d!61275))

(declare-fun d!61277 () Bool)

(declare-fun res!123669 () Bool)

(declare-fun e!163808 () Bool)

(assert (=> d!61277 (=> (not res!123669) (not e!163808))))

(declare-fun simpleValid!266 (LongMapFixedSize!3726) Bool)

(assert (=> d!61277 (= res!123669 (simpleValid!266 thiss!1504))))

(assert (=> d!61277 (= (valid!1450 thiss!1504) e!163808)))

(declare-fun b!252595 () Bool)

(declare-fun res!123670 () Bool)

(assert (=> b!252595 (=> (not res!123670) (not e!163808))))

(assert (=> b!252595 (= res!123670 (= (arrayCountValidKeys!0 (_keys!6812 thiss!1504) #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))) (_size!1912 thiss!1504)))))

(declare-fun b!252596 () Bool)

(declare-fun res!123671 () Bool)

(assert (=> b!252596 (=> (not res!123671) (not e!163808))))

(assert (=> b!252596 (= res!123671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6812 thiss!1504) (mask!10883 thiss!1504)))))

(declare-fun b!252597 () Bool)

(assert (=> b!252597 (= e!163808 (arrayNoDuplicates!0 (_keys!6812 thiss!1504) #b00000000000000000000000000000000 Nil!3759))))

(assert (= (and d!61277 res!123669) b!252595))

(assert (= (and b!252595 res!123670) b!252596))

(assert (= (and b!252596 res!123671) b!252597))

(declare-fun m!268723 () Bool)

(assert (=> d!61277 m!268723))

(assert (=> b!252595 m!268577))

(assert (=> b!252596 m!268593))

(assert (=> b!252597 m!268601))

(assert (=> start!24152 d!61277))

(declare-fun b!252610 () Bool)

(declare-fun e!163817 () SeekEntryResult!1143)

(declare-fun lt!126649 () SeekEntryResult!1143)

(assert (=> b!252610 (= e!163817 (MissingZero!1143 (index!6744 lt!126649)))))

(declare-fun d!61279 () Bool)

(declare-fun lt!126647 () SeekEntryResult!1143)

(assert (=> d!61279 (and (or ((_ is Undefined!1143) lt!126647) (not ((_ is Found!1143) lt!126647)) (and (bvsge (index!6743 lt!126647) #b00000000000000000000000000000000) (bvslt (index!6743 lt!126647) (size!6201 (_keys!6812 thiss!1504))))) (or ((_ is Undefined!1143) lt!126647) ((_ is Found!1143) lt!126647) (not ((_ is MissingZero!1143) lt!126647)) (and (bvsge (index!6742 lt!126647) #b00000000000000000000000000000000) (bvslt (index!6742 lt!126647) (size!6201 (_keys!6812 thiss!1504))))) (or ((_ is Undefined!1143) lt!126647) ((_ is Found!1143) lt!126647) ((_ is MissingZero!1143) lt!126647) (not ((_ is MissingVacant!1143) lt!126647)) (and (bvsge (index!6745 lt!126647) #b00000000000000000000000000000000) (bvslt (index!6745 lt!126647) (size!6201 (_keys!6812 thiss!1504))))) (or ((_ is Undefined!1143) lt!126647) (ite ((_ is Found!1143) lt!126647) (= (select (arr!5854 (_keys!6812 thiss!1504)) (index!6743 lt!126647)) key!932) (ite ((_ is MissingZero!1143) lt!126647) (= (select (arr!5854 (_keys!6812 thiss!1504)) (index!6742 lt!126647)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1143) lt!126647) (= (select (arr!5854 (_keys!6812 thiss!1504)) (index!6745 lt!126647)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!163815 () SeekEntryResult!1143)

(assert (=> d!61279 (= lt!126647 e!163815)))

(declare-fun c!42558 () Bool)

(assert (=> d!61279 (= c!42558 (and ((_ is Intermediate!1143) lt!126649) (undefined!1955 lt!126649)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12352 (_ BitVec 32)) SeekEntryResult!1143)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!61279 (= lt!126649 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10883 thiss!1504)) key!932 (_keys!6812 thiss!1504) (mask!10883 thiss!1504)))))

(assert (=> d!61279 (validMask!0 (mask!10883 thiss!1504))))

(assert (=> d!61279 (= (seekEntryOrOpen!0 key!932 (_keys!6812 thiss!1504) (mask!10883 thiss!1504)) lt!126647)))

(declare-fun b!252611 () Bool)

(declare-fun e!163816 () SeekEntryResult!1143)

(assert (=> b!252611 (= e!163816 (Found!1143 (index!6744 lt!126649)))))

(declare-fun b!252612 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12352 (_ BitVec 32)) SeekEntryResult!1143)

(assert (=> b!252612 (= e!163817 (seekKeyOrZeroReturnVacant!0 (x!24781 lt!126649) (index!6744 lt!126649) (index!6744 lt!126649) key!932 (_keys!6812 thiss!1504) (mask!10883 thiss!1504)))))

(declare-fun b!252613 () Bool)

(assert (=> b!252613 (= e!163815 e!163816)))

(declare-fun lt!126648 () (_ BitVec 64))

(assert (=> b!252613 (= lt!126648 (select (arr!5854 (_keys!6812 thiss!1504)) (index!6744 lt!126649)))))

(declare-fun c!42557 () Bool)

(assert (=> b!252613 (= c!42557 (= lt!126648 key!932))))

(declare-fun b!252614 () Bool)

(declare-fun c!42559 () Bool)

(assert (=> b!252614 (= c!42559 (= lt!126648 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!252614 (= e!163816 e!163817)))

(declare-fun b!252615 () Bool)

(assert (=> b!252615 (= e!163815 Undefined!1143)))

(assert (= (and d!61279 c!42558) b!252615))

(assert (= (and d!61279 (not c!42558)) b!252613))

(assert (= (and b!252613 c!42557) b!252611))

(assert (= (and b!252613 (not c!42557)) b!252614))

(assert (= (and b!252614 c!42559) b!252610))

(assert (= (and b!252614 (not c!42559)) b!252612))

(declare-fun m!268725 () Bool)

(assert (=> d!61279 m!268725))

(declare-fun m!268727 () Bool)

(assert (=> d!61279 m!268727))

(declare-fun m!268729 () Bool)

(assert (=> d!61279 m!268729))

(declare-fun m!268731 () Bool)

(assert (=> d!61279 m!268731))

(declare-fun m!268733 () Bool)

(assert (=> d!61279 m!268733))

(assert (=> d!61279 m!268561))

(assert (=> d!61279 m!268725))

(declare-fun m!268735 () Bool)

(assert (=> b!252612 m!268735))

(declare-fun m!268737 () Bool)

(assert (=> b!252613 m!268737))

(assert (=> b!252423 d!61279))

(declare-fun d!61281 () Bool)

(assert (=> d!61281 (= (inRange!0 index!297 (mask!10883 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10883 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!252441 d!61281))

(declare-fun d!61283 () Bool)

(declare-fun e!163823 () Bool)

(assert (=> d!61283 e!163823))

(declare-fun res!123674 () Bool)

(assert (=> d!61283 (=> res!123674 e!163823)))

(declare-fun lt!126659 () Bool)

(assert (=> d!61283 (= res!123674 (not lt!126659))))

(declare-fun lt!126661 () Bool)

(assert (=> d!61283 (= lt!126659 lt!126661)))

(declare-fun lt!126658 () Unit!7812)

(declare-fun e!163822 () Unit!7812)

(assert (=> d!61283 (= lt!126658 e!163822)))

(declare-fun c!42562 () Bool)

(assert (=> d!61283 (= c!42562 lt!126661)))

(declare-fun containsKey!293 (List!3763 (_ BitVec 64)) Bool)

(assert (=> d!61283 (= lt!126661 (containsKey!293 (toList!1908 (getCurrentListMap!1431 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504))) key!932))))

(assert (=> d!61283 (= (contains!1829 (getCurrentListMap!1431 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504)) key!932) lt!126659)))

(declare-fun b!252622 () Bool)

(declare-fun lt!126660 () Unit!7812)

(assert (=> b!252622 (= e!163822 lt!126660)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!242 (List!3763 (_ BitVec 64)) Unit!7812)

(assert (=> b!252622 (= lt!126660 (lemmaContainsKeyImpliesGetValueByKeyDefined!242 (toList!1908 (getCurrentListMap!1431 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504))) key!932))))

(declare-datatypes ((Option!307 0))(
  ( (Some!306 (v!5370 V!8331)) (None!305) )
))
(declare-fun isDefined!243 (Option!307) Bool)

(declare-fun getValueByKey!301 (List!3763 (_ BitVec 64)) Option!307)

(assert (=> b!252622 (isDefined!243 (getValueByKey!301 (toList!1908 (getCurrentListMap!1431 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504))) key!932))))

(declare-fun b!252623 () Bool)

(declare-fun Unit!7820 () Unit!7812)

(assert (=> b!252623 (= e!163822 Unit!7820)))

(declare-fun b!252624 () Bool)

(assert (=> b!252624 (= e!163823 (isDefined!243 (getValueByKey!301 (toList!1908 (getCurrentListMap!1431 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504))) key!932)))))

(assert (= (and d!61283 c!42562) b!252622))

(assert (= (and d!61283 (not c!42562)) b!252623))

(assert (= (and d!61283 (not res!123674)) b!252624))

(declare-fun m!268739 () Bool)

(assert (=> d!61283 m!268739))

(declare-fun m!268741 () Bool)

(assert (=> b!252622 m!268741))

(declare-fun m!268743 () Bool)

(assert (=> b!252622 m!268743))

(assert (=> b!252622 m!268743))

(declare-fun m!268745 () Bool)

(assert (=> b!252622 m!268745))

(assert (=> b!252624 m!268743))

(assert (=> b!252624 m!268743))

(assert (=> b!252624 m!268745))

(assert (=> b!252441 d!61283))

(declare-fun call!23812 () ListLongMap!3785)

(declare-fun c!42576 () Bool)

(declare-fun bm!23809 () Bool)

(declare-fun call!23818 () ListLongMap!3785)

(declare-fun call!23815 () ListLongMap!3785)

(declare-fun call!23814 () ListLongMap!3785)

(declare-fun c!42580 () Bool)

(declare-fun +!666 (ListLongMap!3785 tuple2!4858) ListLongMap!3785)

(assert (=> bm!23809 (= call!23818 (+!666 (ite c!42576 call!23815 (ite c!42580 call!23812 call!23814)) (ite (or c!42576 c!42580) (tuple2!4859 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4505 thiss!1504)) (tuple2!4859 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4505 thiss!1504)))))))

(declare-fun b!252667 () Bool)

(declare-fun c!42577 () Bool)

(assert (=> b!252667 (= c!42577 (and (not (= (bvand (extraKeys!4401 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4401 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!163859 () ListLongMap!3785)

(declare-fun e!163860 () ListLongMap!3785)

(assert (=> b!252667 (= e!163859 e!163860)))

(declare-fun b!252668 () Bool)

(declare-fun e!163850 () Bool)

(declare-fun lt!126722 () ListLongMap!3785)

(declare-fun apply!244 (ListLongMap!3785 (_ BitVec 64)) V!8331)

(assert (=> b!252668 (= e!163850 (= (apply!244 lt!126722 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4505 thiss!1504)))))

(declare-fun b!252669 () Bool)

(declare-fun e!163852 () Unit!7812)

(declare-fun lt!126723 () Unit!7812)

(assert (=> b!252669 (= e!163852 lt!126723)))

(declare-fun lt!126719 () ListLongMap!3785)

(declare-fun getCurrentListMapNoExtraKeys!563 (array!12352 array!12350 (_ BitVec 32) (_ BitVec 32) V!8331 V!8331 (_ BitVec 32) Int) ListLongMap!3785)

(assert (=> b!252669 (= lt!126719 (getCurrentListMapNoExtraKeys!563 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504)))))

(declare-fun lt!126709 () (_ BitVec 64))

(assert (=> b!252669 (= lt!126709 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126712 () (_ BitVec 64))

(assert (=> b!252669 (= lt!126712 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126708 () Unit!7812)

(declare-fun addStillContains!220 (ListLongMap!3785 (_ BitVec 64) V!8331 (_ BitVec 64)) Unit!7812)

(assert (=> b!252669 (= lt!126708 (addStillContains!220 lt!126719 lt!126709 (zeroValue!4505 thiss!1504) lt!126712))))

(assert (=> b!252669 (contains!1829 (+!666 lt!126719 (tuple2!4859 lt!126709 (zeroValue!4505 thiss!1504))) lt!126712)))

(declare-fun lt!126724 () Unit!7812)

(assert (=> b!252669 (= lt!126724 lt!126708)))

(declare-fun lt!126713 () ListLongMap!3785)

(assert (=> b!252669 (= lt!126713 (getCurrentListMapNoExtraKeys!563 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504)))))

(declare-fun lt!126707 () (_ BitVec 64))

(assert (=> b!252669 (= lt!126707 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126720 () (_ BitVec 64))

(assert (=> b!252669 (= lt!126720 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126711 () Unit!7812)

(declare-fun addApplyDifferent!220 (ListLongMap!3785 (_ BitVec 64) V!8331 (_ BitVec 64)) Unit!7812)

(assert (=> b!252669 (= lt!126711 (addApplyDifferent!220 lt!126713 lt!126707 (minValue!4505 thiss!1504) lt!126720))))

(assert (=> b!252669 (= (apply!244 (+!666 lt!126713 (tuple2!4859 lt!126707 (minValue!4505 thiss!1504))) lt!126720) (apply!244 lt!126713 lt!126720))))

(declare-fun lt!126714 () Unit!7812)

(assert (=> b!252669 (= lt!126714 lt!126711)))

(declare-fun lt!126725 () ListLongMap!3785)

(assert (=> b!252669 (= lt!126725 (getCurrentListMapNoExtraKeys!563 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504)))))

(declare-fun lt!126717 () (_ BitVec 64))

(assert (=> b!252669 (= lt!126717 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126710 () (_ BitVec 64))

(assert (=> b!252669 (= lt!126710 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126727 () Unit!7812)

(assert (=> b!252669 (= lt!126727 (addApplyDifferent!220 lt!126725 lt!126717 (zeroValue!4505 thiss!1504) lt!126710))))

(assert (=> b!252669 (= (apply!244 (+!666 lt!126725 (tuple2!4859 lt!126717 (zeroValue!4505 thiss!1504))) lt!126710) (apply!244 lt!126725 lt!126710))))

(declare-fun lt!126715 () Unit!7812)

(assert (=> b!252669 (= lt!126715 lt!126727)))

(declare-fun lt!126718 () ListLongMap!3785)

(assert (=> b!252669 (= lt!126718 (getCurrentListMapNoExtraKeys!563 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504)))))

(declare-fun lt!126726 () (_ BitVec 64))

(assert (=> b!252669 (= lt!126726 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126706 () (_ BitVec 64))

(assert (=> b!252669 (= lt!126706 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!252669 (= lt!126723 (addApplyDifferent!220 lt!126718 lt!126726 (minValue!4505 thiss!1504) lt!126706))))

(assert (=> b!252669 (= (apply!244 (+!666 lt!126718 (tuple2!4859 lt!126726 (minValue!4505 thiss!1504))) lt!126706) (apply!244 lt!126718 lt!126706))))

(declare-fun b!252670 () Bool)

(declare-fun e!163857 () Bool)

(assert (=> b!252670 (= e!163857 e!163850)))

(declare-fun res!123701 () Bool)

(declare-fun call!23813 () Bool)

(assert (=> b!252670 (= res!123701 call!23813)))

(assert (=> b!252670 (=> (not res!123701) (not e!163850))))

(declare-fun b!252671 () Bool)

(declare-fun res!123695 () Bool)

(declare-fun e!163851 () Bool)

(assert (=> b!252671 (=> (not res!123695) (not e!163851))))

(declare-fun e!163858 () Bool)

(assert (=> b!252671 (= res!123695 e!163858)))

(declare-fun res!123694 () Bool)

(assert (=> b!252671 (=> res!123694 e!163858)))

(declare-fun e!163855 () Bool)

(assert (=> b!252671 (= res!123694 (not e!163855))))

(declare-fun res!123697 () Bool)

(assert (=> b!252671 (=> (not res!123697) (not e!163855))))

(assert (=> b!252671 (= res!123697 (bvslt #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))))))

(declare-fun b!252672 () Bool)

(declare-fun e!163853 () Bool)

(declare-fun call!23816 () Bool)

(assert (=> b!252672 (= e!163853 (not call!23816))))

(declare-fun b!252673 () Bool)

(declare-fun res!123698 () Bool)

(assert (=> b!252673 (=> (not res!123698) (not e!163851))))

(assert (=> b!252673 (= res!123698 e!163853)))

(declare-fun c!42575 () Bool)

(assert (=> b!252673 (= c!42575 (not (= (bvand (extraKeys!4401 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!252674 () Bool)

(declare-fun e!163862 () ListLongMap!3785)

(assert (=> b!252674 (= e!163862 e!163859)))

(assert (=> b!252674 (= c!42580 (and (not (= (bvand (extraKeys!4401 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4401 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!252675 () Bool)

(assert (=> b!252675 (= e!163857 (not call!23813))))

(declare-fun bm!23811 () Bool)

(assert (=> bm!23811 (= call!23815 (getCurrentListMapNoExtraKeys!563 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504)))))

(declare-fun b!252676 () Bool)

(assert (=> b!252676 (= e!163855 (validKeyInArray!0 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!252677 () Bool)

(declare-fun e!163854 () Bool)

(assert (=> b!252677 (= e!163854 (= (apply!244 lt!126722 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4505 thiss!1504)))))

(declare-fun b!252678 () Bool)

(assert (=> b!252678 (= e!163851 e!163857)))

(declare-fun c!42578 () Bool)

(assert (=> b!252678 (= c!42578 (not (= (bvand (extraKeys!4401 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!252679 () Bool)

(declare-fun call!23817 () ListLongMap!3785)

(assert (=> b!252679 (= e!163859 call!23817)))

(declare-fun b!252680 () Bool)

(declare-fun e!163856 () Bool)

(assert (=> b!252680 (= e!163856 (validKeyInArray!0 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!23812 () Bool)

(assert (=> bm!23812 (= call!23816 (contains!1829 lt!126722 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!23813 () Bool)

(assert (=> bm!23813 (= call!23814 call!23812)))

(declare-fun b!252681 () Bool)

(assert (=> b!252681 (= e!163860 call!23817)))

(declare-fun b!252682 () Bool)

(assert (=> b!252682 (= e!163862 (+!666 call!23818 (tuple2!4859 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4505 thiss!1504))))))

(declare-fun d!61285 () Bool)

(assert (=> d!61285 e!163851))

(declare-fun res!123699 () Bool)

(assert (=> d!61285 (=> (not res!123699) (not e!163851))))

(assert (=> d!61285 (= res!123699 (or (bvsge #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))))))))

(declare-fun lt!126721 () ListLongMap!3785)

(assert (=> d!61285 (= lt!126722 lt!126721)))

(declare-fun lt!126716 () Unit!7812)

(assert (=> d!61285 (= lt!126716 e!163852)))

(declare-fun c!42579 () Bool)

(assert (=> d!61285 (= c!42579 e!163856)))

(declare-fun res!123700 () Bool)

(assert (=> d!61285 (=> (not res!123700) (not e!163856))))

(assert (=> d!61285 (= res!123700 (bvslt #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))))))

(assert (=> d!61285 (= lt!126721 e!163862)))

(assert (=> d!61285 (= c!42576 (and (not (= (bvand (extraKeys!4401 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4401 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61285 (validMask!0 (mask!10883 thiss!1504))))

(assert (=> d!61285 (= (getCurrentListMap!1431 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4664 thiss!1504)) lt!126722)))

(declare-fun bm!23810 () Bool)

(assert (=> bm!23810 (= call!23817 call!23818)))

(declare-fun b!252683 () Bool)

(declare-fun e!163861 () Bool)

(declare-fun get!3016 (ValueCell!2913 V!8331) V!8331)

(declare-fun dynLambda!582 (Int (_ BitVec 64)) V!8331)

(assert (=> b!252683 (= e!163861 (= (apply!244 lt!126722 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000)) (get!3016 (select (arr!5853 (_values!4647 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!582 (defaultEntry!4664 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!252683 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6200 (_values!4647 thiss!1504))))))

(assert (=> b!252683 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))))))

(declare-fun b!252684 () Bool)

(assert (=> b!252684 (= e!163853 e!163854)))

(declare-fun res!123696 () Bool)

(assert (=> b!252684 (= res!123696 call!23816)))

(assert (=> b!252684 (=> (not res!123696) (not e!163854))))

(declare-fun b!252685 () Bool)

(assert (=> b!252685 (= e!163860 call!23814)))

(declare-fun b!252686 () Bool)

(assert (=> b!252686 (= e!163858 e!163861)))

(declare-fun res!123693 () Bool)

(assert (=> b!252686 (=> (not res!123693) (not e!163861))))

(assert (=> b!252686 (= res!123693 (contains!1829 lt!126722 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!252686 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))))))

(declare-fun bm!23814 () Bool)

(assert (=> bm!23814 (= call!23813 (contains!1829 lt!126722 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!23815 () Bool)

(assert (=> bm!23815 (= call!23812 call!23815)))

(declare-fun b!252687 () Bool)

(declare-fun Unit!7821 () Unit!7812)

(assert (=> b!252687 (= e!163852 Unit!7821)))

(assert (= (and d!61285 c!42576) b!252682))

(assert (= (and d!61285 (not c!42576)) b!252674))

(assert (= (and b!252674 c!42580) b!252679))

(assert (= (and b!252674 (not c!42580)) b!252667))

(assert (= (and b!252667 c!42577) b!252681))

(assert (= (and b!252667 (not c!42577)) b!252685))

(assert (= (or b!252681 b!252685) bm!23813))

(assert (= (or b!252679 bm!23813) bm!23815))

(assert (= (or b!252679 b!252681) bm!23810))

(assert (= (or b!252682 bm!23815) bm!23811))

(assert (= (or b!252682 bm!23810) bm!23809))

(assert (= (and d!61285 res!123700) b!252680))

(assert (= (and d!61285 c!42579) b!252669))

(assert (= (and d!61285 (not c!42579)) b!252687))

(assert (= (and d!61285 res!123699) b!252671))

(assert (= (and b!252671 res!123697) b!252676))

(assert (= (and b!252671 (not res!123694)) b!252686))

(assert (= (and b!252686 res!123693) b!252683))

(assert (= (and b!252671 res!123695) b!252673))

(assert (= (and b!252673 c!42575) b!252684))

(assert (= (and b!252673 (not c!42575)) b!252672))

(assert (= (and b!252684 res!123696) b!252677))

(assert (= (or b!252684 b!252672) bm!23812))

(assert (= (and b!252673 res!123698) b!252678))

(assert (= (and b!252678 c!42578) b!252670))

(assert (= (and b!252678 (not c!42578)) b!252675))

(assert (= (and b!252670 res!123701) b!252668))

(assert (= (or b!252670 b!252675) bm!23814))

(declare-fun b_lambda!8149 () Bool)

(assert (=> (not b_lambda!8149) (not b!252683)))

(declare-fun t!8816 () Bool)

(declare-fun tb!3009 () Bool)

(assert (=> (and b!252422 (= (defaultEntry!4664 thiss!1504) (defaultEntry!4664 thiss!1504)) t!8816) tb!3009))

(declare-fun result!5333 () Bool)

(assert (=> tb!3009 (= result!5333 tp_is_empty!6513)))

(assert (=> b!252683 t!8816))

(declare-fun b_and!13709 () Bool)

(assert (= b_and!13705 (and (=> t!8816 result!5333) b_and!13709)))

(assert (=> b!252676 m!268689))

(assert (=> b!252676 m!268689))

(assert (=> b!252676 m!268691))

(declare-fun m!268747 () Bool)

(assert (=> b!252682 m!268747))

(assert (=> b!252680 m!268689))

(assert (=> b!252680 m!268689))

(assert (=> b!252680 m!268691))

(assert (=> b!252686 m!268689))

(assert (=> b!252686 m!268689))

(declare-fun m!268749 () Bool)

(assert (=> b!252686 m!268749))

(declare-fun m!268751 () Bool)

(assert (=> bm!23809 m!268751))

(declare-fun m!268753 () Bool)

(assert (=> b!252668 m!268753))

(declare-fun m!268755 () Bool)

(assert (=> bm!23814 m!268755))

(declare-fun m!268757 () Bool)

(assert (=> b!252683 m!268757))

(declare-fun m!268759 () Bool)

(assert (=> b!252683 m!268759))

(declare-fun m!268761 () Bool)

(assert (=> b!252683 m!268761))

(assert (=> b!252683 m!268759))

(assert (=> b!252683 m!268689))

(assert (=> b!252683 m!268689))

(declare-fun m!268763 () Bool)

(assert (=> b!252683 m!268763))

(assert (=> b!252683 m!268757))

(declare-fun m!268765 () Bool)

(assert (=> bm!23812 m!268765))

(declare-fun m!268767 () Bool)

(assert (=> b!252677 m!268767))

(declare-fun m!268769 () Bool)

(assert (=> b!252669 m!268769))

(declare-fun m!268771 () Bool)

(assert (=> b!252669 m!268771))

(assert (=> b!252669 m!268689))

(declare-fun m!268773 () Bool)

(assert (=> b!252669 m!268773))

(declare-fun m!268775 () Bool)

(assert (=> b!252669 m!268775))

(declare-fun m!268777 () Bool)

(assert (=> b!252669 m!268777))

(declare-fun m!268779 () Bool)

(assert (=> b!252669 m!268779))

(declare-fun m!268781 () Bool)

(assert (=> b!252669 m!268781))

(declare-fun m!268783 () Bool)

(assert (=> b!252669 m!268783))

(declare-fun m!268785 () Bool)

(assert (=> b!252669 m!268785))

(declare-fun m!268787 () Bool)

(assert (=> b!252669 m!268787))

(declare-fun m!268789 () Bool)

(assert (=> b!252669 m!268789))

(assert (=> b!252669 m!268783))

(declare-fun m!268791 () Bool)

(assert (=> b!252669 m!268791))

(declare-fun m!268793 () Bool)

(assert (=> b!252669 m!268793))

(assert (=> b!252669 m!268769))

(declare-fun m!268795 () Bool)

(assert (=> b!252669 m!268795))

(declare-fun m!268797 () Bool)

(assert (=> b!252669 m!268797))

(declare-fun m!268799 () Bool)

(assert (=> b!252669 m!268799))

(assert (=> b!252669 m!268777))

(assert (=> b!252669 m!268787))

(assert (=> d!61285 m!268561))

(assert (=> bm!23811 m!268793))

(assert (=> b!252441 d!61285))

(declare-fun b!252706 () Bool)

(declare-fun e!163873 () Bool)

(declare-fun call!23824 () Bool)

(assert (=> b!252706 (= e!163873 (not call!23824))))

(declare-fun b!252707 () Bool)

(declare-fun e!163872 () Bool)

(declare-fun e!163874 () Bool)

(assert (=> b!252707 (= e!163872 e!163874)))

(declare-fun c!42586 () Bool)

(declare-fun lt!126733 () SeekEntryResult!1143)

(assert (=> b!252707 (= c!42586 ((_ is MissingVacant!1143) lt!126733))))

(declare-fun c!42585 () Bool)

(declare-fun call!23823 () Bool)

(declare-fun bm!23820 () Bool)

(assert (=> bm!23820 (= call!23823 (inRange!0 (ite c!42585 (index!6742 lt!126733) (index!6745 lt!126733)) (mask!10883 thiss!1504)))))

(declare-fun b!252708 () Bool)

(declare-fun e!163871 () Bool)

(assert (=> b!252708 (= e!163872 e!163871)))

(declare-fun res!123710 () Bool)

(assert (=> b!252708 (= res!123710 call!23823)))

(assert (=> b!252708 (=> (not res!123710) (not e!163871))))

(declare-fun d!61287 () Bool)

(assert (=> d!61287 e!163872))

(assert (=> d!61287 (= c!42585 ((_ is MissingZero!1143) lt!126733))))

(assert (=> d!61287 (= lt!126733 (seekEntryOrOpen!0 key!932 (_keys!6812 thiss!1504) (mask!10883 thiss!1504)))))

(declare-fun lt!126732 () Unit!7812)

(declare-fun choose!1213 (array!12352 array!12350 (_ BitVec 32) (_ BitVec 32) V!8331 V!8331 (_ BitVec 64) Int) Unit!7812)

(assert (=> d!61287 (= lt!126732 (choose!1213 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) key!932 (defaultEntry!4664 thiss!1504)))))

(assert (=> d!61287 (validMask!0 (mask!10883 thiss!1504))))

(assert (=> d!61287 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!408 (_keys!6812 thiss!1504) (_values!4647 thiss!1504) (mask!10883 thiss!1504) (extraKeys!4401 thiss!1504) (zeroValue!4505 thiss!1504) (minValue!4505 thiss!1504) key!932 (defaultEntry!4664 thiss!1504)) lt!126732)))

(declare-fun b!252709 () Bool)

(declare-fun res!123712 () Bool)

(assert (=> b!252709 (=> (not res!123712) (not e!163873))))

(assert (=> b!252709 (= res!123712 (= (select (arr!5854 (_keys!6812 thiss!1504)) (index!6745 lt!126733)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!252709 (and (bvsge (index!6745 lt!126733) #b00000000000000000000000000000000) (bvslt (index!6745 lt!126733) (size!6201 (_keys!6812 thiss!1504))))))

(declare-fun b!252710 () Bool)

(declare-fun res!123711 () Bool)

(assert (=> b!252710 (=> (not res!123711) (not e!163873))))

(assert (=> b!252710 (= res!123711 call!23823)))

(assert (=> b!252710 (= e!163874 e!163873)))

(declare-fun bm!23821 () Bool)

(assert (=> bm!23821 (= call!23824 (arrayContainsKey!0 (_keys!6812 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!252711 () Bool)

(assert (=> b!252711 (= e!163871 (not call!23824))))

(declare-fun b!252712 () Bool)

(assert (=> b!252712 (and (bvsge (index!6742 lt!126733) #b00000000000000000000000000000000) (bvslt (index!6742 lt!126733) (size!6201 (_keys!6812 thiss!1504))))))

(declare-fun res!123713 () Bool)

(assert (=> b!252712 (= res!123713 (= (select (arr!5854 (_keys!6812 thiss!1504)) (index!6742 lt!126733)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!252712 (=> (not res!123713) (not e!163871))))

(declare-fun b!252713 () Bool)

(assert (=> b!252713 (= e!163874 ((_ is Undefined!1143) lt!126733))))

(assert (= (and d!61287 c!42585) b!252708))

(assert (= (and d!61287 (not c!42585)) b!252707))

(assert (= (and b!252708 res!123710) b!252712))

(assert (= (and b!252712 res!123713) b!252711))

(assert (= (and b!252707 c!42586) b!252710))

(assert (= (and b!252707 (not c!42586)) b!252713))

(assert (= (and b!252710 res!123711) b!252709))

(assert (= (and b!252709 res!123712) b!252706))

(assert (= (or b!252708 b!252710) bm!23820))

(assert (= (or b!252711 b!252706) bm!23821))

(assert (=> bm!23821 m!268563))

(declare-fun m!268801 () Bool)

(assert (=> b!252712 m!268801))

(assert (=> d!61287 m!268591))

(declare-fun m!268803 () Bool)

(assert (=> d!61287 m!268803))

(assert (=> d!61287 m!268561))

(declare-fun m!268805 () Bool)

(assert (=> b!252709 m!268805))

(declare-fun m!268807 () Bool)

(assert (=> bm!23820 m!268807))

(assert (=> b!252432 d!61287))

(declare-fun d!61289 () Bool)

(assert (=> d!61289 (= (inRange!0 (ite c!42522 (index!6742 lt!126569) (index!6745 lt!126569)) (mask!10883 thiss!1504)) (and (bvsge (ite c!42522 (index!6742 lt!126569) (index!6745 lt!126569)) #b00000000000000000000000000000000) (bvslt (ite c!42522 (index!6742 lt!126569) (index!6745 lt!126569)) (bvadd (mask!10883 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23776 d!61289))

(declare-fun bm!23822 () Bool)

(declare-fun call!23825 () Bool)

(declare-fun c!42587 () Bool)

(assert (=> bm!23822 (= call!23825 (arrayNoDuplicates!0 (_keys!6812 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42587 (Cons!3758 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000) Nil!3759) Nil!3759)))))

(declare-fun b!252714 () Bool)

(declare-fun e!163878 () Bool)

(assert (=> b!252714 (= e!163878 call!23825)))

(declare-fun d!61291 () Bool)

(declare-fun res!123714 () Bool)

(declare-fun e!163877 () Bool)

(assert (=> d!61291 (=> res!123714 e!163877)))

(assert (=> d!61291 (= res!123714 (bvsge #b00000000000000000000000000000000 (size!6201 (_keys!6812 thiss!1504))))))

(assert (=> d!61291 (= (arrayNoDuplicates!0 (_keys!6812 thiss!1504) #b00000000000000000000000000000000 Nil!3759) e!163877)))

(declare-fun b!252715 () Bool)

(assert (=> b!252715 (= e!163878 call!23825)))

(declare-fun b!252716 () Bool)

(declare-fun e!163876 () Bool)

(assert (=> b!252716 (= e!163876 (contains!1831 Nil!3759 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!252717 () Bool)

(declare-fun e!163875 () Bool)

(assert (=> b!252717 (= e!163877 e!163875)))

(declare-fun res!123716 () Bool)

(assert (=> b!252717 (=> (not res!123716) (not e!163875))))

(assert (=> b!252717 (= res!123716 (not e!163876))))

(declare-fun res!123715 () Bool)

(assert (=> b!252717 (=> (not res!123715) (not e!163876))))

(assert (=> b!252717 (= res!123715 (validKeyInArray!0 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!252718 () Bool)

(assert (=> b!252718 (= e!163875 e!163878)))

(assert (=> b!252718 (= c!42587 (validKeyInArray!0 (select (arr!5854 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!61291 (not res!123714)) b!252717))

(assert (= (and b!252717 res!123715) b!252716))

(assert (= (and b!252717 res!123716) b!252718))

(assert (= (and b!252718 c!42587) b!252714))

(assert (= (and b!252718 (not c!42587)) b!252715))

(assert (= (or b!252714 b!252715) bm!23822))

(assert (=> bm!23822 m!268689))

(declare-fun m!268809 () Bool)

(assert (=> bm!23822 m!268809))

(assert (=> b!252716 m!268689))

(assert (=> b!252716 m!268689))

(declare-fun m!268811 () Bool)

(assert (=> b!252716 m!268811))

(assert (=> b!252717 m!268689))

(assert (=> b!252717 m!268689))

(assert (=> b!252717 m!268691))

(assert (=> b!252718 m!268689))

(assert (=> b!252718 m!268689))

(assert (=> b!252718 m!268691))

(assert (=> b!252424 d!61291))

(declare-fun d!61293 () Bool)

(assert (=> d!61293 (= (array_inv!3859 (_keys!6812 thiss!1504)) (bvsge (size!6201 (_keys!6812 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!252422 d!61293))

(declare-fun d!61295 () Bool)

(assert (=> d!61295 (= (array_inv!3860 (_values!4647 thiss!1504)) (bvsge (size!6200 (_values!4647 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!252422 d!61295))

(assert (=> bm!23777 d!61267))

(declare-fun mapIsEmpty!11082 () Bool)

(declare-fun mapRes!11082 () Bool)

(assert (=> mapIsEmpty!11082 mapRes!11082))

(declare-fun mapNonEmpty!11082 () Bool)

(declare-fun tp!23241 () Bool)

(declare-fun e!163884 () Bool)

(assert (=> mapNonEmpty!11082 (= mapRes!11082 (and tp!23241 e!163884))))

(declare-fun mapKey!11082 () (_ BitVec 32))

(declare-fun mapRest!11082 () (Array (_ BitVec 32) ValueCell!2913))

(declare-fun mapValue!11082 () ValueCell!2913)

(assert (=> mapNonEmpty!11082 (= mapRest!11076 (store mapRest!11082 mapKey!11082 mapValue!11082))))

(declare-fun condMapEmpty!11082 () Bool)

(declare-fun mapDefault!11082 () ValueCell!2913)

(assert (=> mapNonEmpty!11076 (= condMapEmpty!11082 (= mapRest!11076 ((as const (Array (_ BitVec 32) ValueCell!2913)) mapDefault!11082)))))

(declare-fun e!163883 () Bool)

(assert (=> mapNonEmpty!11076 (= tp!23232 (and e!163883 mapRes!11082))))

(declare-fun b!252726 () Bool)

(assert (=> b!252726 (= e!163883 tp_is_empty!6513)))

(declare-fun b!252725 () Bool)

(assert (=> b!252725 (= e!163884 tp_is_empty!6513)))

(assert (= (and mapNonEmpty!11076 condMapEmpty!11082) mapIsEmpty!11082))

(assert (= (and mapNonEmpty!11076 (not condMapEmpty!11082)) mapNonEmpty!11082))

(assert (= (and mapNonEmpty!11082 ((_ is ValueCellFull!2913) mapValue!11082)) b!252725))

(assert (= (and mapNonEmpty!11076 ((_ is ValueCellFull!2913) mapDefault!11082)) b!252726))

(declare-fun m!268813 () Bool)

(assert (=> mapNonEmpty!11082 m!268813))

(declare-fun b_lambda!8151 () Bool)

(assert (= b_lambda!8149 (or (and b!252422 b_free!6651) b_lambda!8151)))

(check-sat (not b!252550) tp_is_empty!6513 (not bm!23821) (not d!61255) (not b!252588) (not b!252624) (not d!61273) (not b!252521) (not bm!23793) (not mapNonEmpty!11082) (not b!252682) (not b!252596) (not bm!23786) (not b!252569) (not b!252622) (not b!252563) (not bm!23812) (not b!252683) (not b_lambda!8151) (not b!252586) (not bm!23820) (not b!252597) (not b!252583) (not b!252533) (not bm!23811) (not d!61279) (not b!252668) (not bm!23822) (not b!252717) (not d!61271) (not d!61285) (not b!252686) (not b!252535) (not b!252676) (not b_next!6651) (not b!252677) (not d!61277) (not d!61283) (not bm!23789) (not d!61287) (not d!61269) (not b!252612) (not b!252523) (not d!61265) (not b!252718) (not b!252549) (not bm!23792) (not bm!23809) b_and!13709 (not b!252548) (not b!252532) (not b!252595) (not b!252575) (not bm!23794) (not b!252559) (not b!252716) (not b!252669) (not b!252578) (not bm!23814) (not b!252680))
(check-sat b_and!13709 (not b_next!6651))
