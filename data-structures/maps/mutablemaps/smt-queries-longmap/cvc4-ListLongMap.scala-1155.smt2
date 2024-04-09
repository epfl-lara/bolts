; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24294 () Bool)

(assert start!24294)

(declare-fun b!254259 () Bool)

(declare-fun b_free!6683 () Bool)

(declare-fun b_next!6683 () Bool)

(assert (=> b!254259 (= b_free!6683 (not b_next!6683))))

(declare-fun tp!23337 () Bool)

(declare-fun b_and!13743 () Bool)

(assert (=> b!254259 (= tp!23337 b_and!13743)))

(declare-fun mapNonEmpty!11133 () Bool)

(declare-fun mapRes!11133 () Bool)

(declare-fun tp!23336 () Bool)

(declare-fun e!164822 () Bool)

(assert (=> mapNonEmpty!11133 (= mapRes!11133 (and tp!23336 e!164822))))

(declare-datatypes ((V!8373 0))(
  ( (V!8374 (val!3317 Int)) )
))
(declare-datatypes ((ValueCell!2929 0))(
  ( (ValueCellFull!2929 (v!5387 V!8373)) (EmptyCell!2929) )
))
(declare-fun mapValue!11133 () ValueCell!2929)

(declare-fun mapRest!11133 () (Array (_ BitVec 32) ValueCell!2929))

(declare-fun mapKey!11133 () (_ BitVec 32))

(declare-datatypes ((array!12420 0))(
  ( (array!12421 (arr!5885 (Array (_ BitVec 32) ValueCell!2929)) (size!6232 (_ BitVec 32))) )
))
(declare-datatypes ((array!12422 0))(
  ( (array!12423 (arr!5886 (Array (_ BitVec 32) (_ BitVec 64))) (size!6233 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3758 0))(
  ( (LongMapFixedSize!3759 (defaultEntry!4692 Int) (mask!10936 (_ BitVec 32)) (extraKeys!4429 (_ BitVec 32)) (zeroValue!4533 V!8373) (minValue!4533 V!8373) (_size!1928 (_ BitVec 32)) (_keys!6846 array!12422) (_values!4675 array!12420) (_vacant!1928 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3758)

(assert (=> mapNonEmpty!11133 (= (arr!5885 (_values!4675 thiss!1504)) (store mapRest!11133 mapKey!11133 mapValue!11133))))

(declare-fun b!254250 () Bool)

(declare-fun e!164816 () Bool)

(declare-fun tp_is_empty!6545 () Bool)

(assert (=> b!254250 (= e!164816 tp_is_empty!6545)))

(declare-fun res!124492 () Bool)

(declare-fun e!164821 () Bool)

(assert (=> start!24294 (=> (not res!124492) (not e!164821))))

(declare-fun valid!1462 (LongMapFixedSize!3758) Bool)

(assert (=> start!24294 (= res!124492 (valid!1462 thiss!1504))))

(assert (=> start!24294 e!164821))

(declare-fun e!164814 () Bool)

(assert (=> start!24294 e!164814))

(assert (=> start!24294 true))

(declare-fun b!254251 () Bool)

(declare-fun e!164819 () Bool)

(declare-fun call!23993 () Bool)

(assert (=> b!254251 (= e!164819 (not call!23993))))

(declare-fun b!254252 () Bool)

(declare-fun e!164809 () Bool)

(declare-fun e!164813 () Bool)

(assert (=> b!254252 (= e!164809 e!164813)))

(declare-fun res!124489 () Bool)

(assert (=> b!254252 (=> (not res!124489) (not e!164813))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!254252 (= res!124489 (inRange!0 index!297 (mask!10936 thiss!1504)))))

(declare-datatypes ((Unit!7875 0))(
  ( (Unit!7876) )
))
(declare-fun lt!127451 () Unit!7875)

(declare-fun e!164820 () Unit!7875)

(assert (=> b!254252 (= lt!127451 e!164820)))

(declare-fun c!42868 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4880 0))(
  ( (tuple2!4881 (_1!2450 (_ BitVec 64)) (_2!2450 V!8373)) )
))
(declare-datatypes ((List!3785 0))(
  ( (Nil!3782) (Cons!3781 (h!4443 tuple2!4880) (t!8840 List!3785)) )
))
(declare-datatypes ((ListLongMap!3807 0))(
  ( (ListLongMap!3808 (toList!1919 List!3785)) )
))
(declare-fun contains!1843 (ListLongMap!3807 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1442 (array!12422 array!12420 (_ BitVec 32) (_ BitVec 32) V!8373 V!8373 (_ BitVec 32) Int) ListLongMap!3807)

(assert (=> b!254252 (= c!42868 (contains!1843 (getCurrentListMap!1442 (_keys!6846 thiss!1504) (_values!4675 thiss!1504) (mask!10936 thiss!1504) (extraKeys!4429 thiss!1504) (zeroValue!4533 thiss!1504) (minValue!4533 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4692 thiss!1504)) key!932))))

(declare-fun b!254253 () Bool)

(declare-fun e!164811 () Bool)

(assert (=> b!254253 (= e!164811 (not call!23993))))

(declare-fun b!254254 () Bool)

(declare-fun Unit!7877 () Unit!7875)

(assert (=> b!254254 (= e!164820 Unit!7877)))

(declare-fun lt!127447 () Unit!7875)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!417 (array!12422 array!12420 (_ BitVec 32) (_ BitVec 32) V!8373 V!8373 (_ BitVec 64) Int) Unit!7875)

(assert (=> b!254254 (= lt!127447 (lemmaInListMapThenSeekEntryOrOpenFindsIt!417 (_keys!6846 thiss!1504) (_values!4675 thiss!1504) (mask!10936 thiss!1504) (extraKeys!4429 thiss!1504) (zeroValue!4533 thiss!1504) (minValue!4533 thiss!1504) key!932 (defaultEntry!4692 thiss!1504)))))

(assert (=> b!254254 false))

(declare-fun b!254255 () Bool)

(declare-fun res!124487 () Bool)

(declare-fun e!164823 () Bool)

(assert (=> b!254255 (=> res!124487 e!164823)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12422 (_ BitVec 32)) Bool)

(assert (=> b!254255 (= res!124487 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6846 thiss!1504) (mask!10936 thiss!1504))))))

(declare-fun b!254256 () Bool)

(declare-fun res!124490 () Bool)

(assert (=> b!254256 (=> (not res!124490) (not e!164819))))

(declare-fun call!23992 () Bool)

(assert (=> b!254256 (= res!124490 call!23992)))

(declare-fun e!164818 () Bool)

(assert (=> b!254256 (= e!164818 e!164819)))

(declare-fun b!254257 () Bool)

(declare-fun res!124484 () Bool)

(assert (=> b!254257 (=> (not res!124484) (not e!164819))))

(declare-datatypes ((SeekEntryResult!1158 0))(
  ( (MissingZero!1158 (index!6802 (_ BitVec 32))) (Found!1158 (index!6803 (_ BitVec 32))) (Intermediate!1158 (undefined!1970 Bool) (index!6804 (_ BitVec 32)) (x!24866 (_ BitVec 32))) (Undefined!1158) (MissingVacant!1158 (index!6805 (_ BitVec 32))) )
))
(declare-fun lt!127454 () SeekEntryResult!1158)

(assert (=> b!254257 (= res!124484 (= (select (arr!5886 (_keys!6846 thiss!1504)) (index!6802 lt!127454)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!254258 () Bool)

(declare-fun res!124488 () Bool)

(assert (=> b!254258 (= res!124488 (= (select (arr!5886 (_keys!6846 thiss!1504)) (index!6805 lt!127454)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!254258 (=> (not res!124488) (not e!164811))))

(declare-fun e!164810 () Bool)

(declare-fun array_inv!3883 (array!12422) Bool)

(declare-fun array_inv!3884 (array!12420) Bool)

(assert (=> b!254259 (= e!164814 (and tp!23337 tp_is_empty!6545 (array_inv!3883 (_keys!6846 thiss!1504)) (array_inv!3884 (_values!4675 thiss!1504)) e!164810))))

(declare-fun b!254260 () Bool)

(declare-fun e!164815 () Bool)

(assert (=> b!254260 (= e!164815 e!164811)))

(declare-fun res!124485 () Bool)

(assert (=> b!254260 (= res!124485 call!23992)))

(assert (=> b!254260 (=> (not res!124485) (not e!164811))))

(declare-fun b!254261 () Bool)

(declare-fun e!164812 () Unit!7875)

(declare-fun Unit!7878 () Unit!7875)

(assert (=> b!254261 (= e!164812 Unit!7878)))

(declare-fun b!254262 () Bool)

(assert (=> b!254262 (= e!164813 (not e!164823))))

(declare-fun res!124491 () Bool)

(assert (=> b!254262 (=> res!124491 e!164823)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!254262 (= res!124491 (not (validMask!0 (mask!10936 thiss!1504))))))

(declare-fun lt!127450 () array!12422)

(assert (=> b!254262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!127450 (mask!10936 thiss!1504))))

(declare-fun lt!127448 () Unit!7875)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12422 (_ BitVec 32) (_ BitVec 32)) Unit!7875)

(assert (=> b!254262 (= lt!127448 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6846 thiss!1504) index!297 (mask!10936 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12422 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!254262 (= (arrayCountValidKeys!0 lt!127450 #b00000000000000000000000000000000 (size!6233 (_keys!6846 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6846 thiss!1504) #b00000000000000000000000000000000 (size!6233 (_keys!6846 thiss!1504)))))))

(declare-fun lt!127455 () Unit!7875)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12422 (_ BitVec 32) (_ BitVec 64)) Unit!7875)

(assert (=> b!254262 (= lt!127455 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6846 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3786 0))(
  ( (Nil!3783) (Cons!3782 (h!4444 (_ BitVec 64)) (t!8841 List!3786)) )
))
(declare-fun arrayNoDuplicates!0 (array!12422 (_ BitVec 32) List!3786) Bool)

(assert (=> b!254262 (arrayNoDuplicates!0 lt!127450 #b00000000000000000000000000000000 Nil!3783)))

(assert (=> b!254262 (= lt!127450 (array!12423 (store (arr!5886 (_keys!6846 thiss!1504)) index!297 key!932) (size!6233 (_keys!6846 thiss!1504))))))

(declare-fun lt!127445 () Unit!7875)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12422 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3786) Unit!7875)

(assert (=> b!254262 (= lt!127445 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6846 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3783))))

(declare-fun lt!127453 () Unit!7875)

(assert (=> b!254262 (= lt!127453 e!164812)))

(declare-fun c!42869 () Bool)

(declare-fun arrayContainsKey!0 (array!12422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!254262 (= c!42869 (arrayContainsKey!0 (_keys!6846 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!254263 () Bool)

(assert (=> b!254263 (= e!164815 (is-Undefined!1158 lt!127454))))

(declare-fun b!254264 () Bool)

(assert (=> b!254264 (= e!164821 e!164809)))

(declare-fun res!124494 () Bool)

(assert (=> b!254264 (=> (not res!124494) (not e!164809))))

(assert (=> b!254264 (= res!124494 (or (= lt!127454 (MissingZero!1158 index!297)) (= lt!127454 (MissingVacant!1158 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12422 (_ BitVec 32)) SeekEntryResult!1158)

(assert (=> b!254264 (= lt!127454 (seekEntryOrOpen!0 key!932 (_keys!6846 thiss!1504) (mask!10936 thiss!1504)))))

(declare-fun b!254265 () Bool)

(declare-fun Unit!7879 () Unit!7875)

(assert (=> b!254265 (= e!164812 Unit!7879)))

(declare-fun lt!127452 () Unit!7875)

(declare-fun lemmaArrayContainsKeyThenInListMap!222 (array!12422 array!12420 (_ BitVec 32) (_ BitVec 32) V!8373 V!8373 (_ BitVec 64) (_ BitVec 32) Int) Unit!7875)

(assert (=> b!254265 (= lt!127452 (lemmaArrayContainsKeyThenInListMap!222 (_keys!6846 thiss!1504) (_values!4675 thiss!1504) (mask!10936 thiss!1504) (extraKeys!4429 thiss!1504) (zeroValue!4533 thiss!1504) (minValue!4533 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4692 thiss!1504)))))

(assert (=> b!254265 false))

(declare-fun b!254266 () Bool)

(declare-fun res!124493 () Bool)

(assert (=> b!254266 (=> res!124493 e!164823)))

(assert (=> b!254266 (= res!124493 (or (not (= (size!6232 (_values!4675 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10936 thiss!1504)))) (not (= (size!6233 (_keys!6846 thiss!1504)) (size!6232 (_values!4675 thiss!1504)))) (bvslt (mask!10936 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4429 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4429 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!254267 () Bool)

(assert (=> b!254267 (= e!164823 true)))

(declare-fun lt!127449 () Bool)

(assert (=> b!254267 (= lt!127449 (arrayNoDuplicates!0 (_keys!6846 thiss!1504) #b00000000000000000000000000000000 Nil!3783))))

(declare-fun b!254268 () Bool)

(declare-fun res!124486 () Bool)

(assert (=> b!254268 (=> (not res!124486) (not e!164821))))

(assert (=> b!254268 (= res!124486 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!254269 () Bool)

(assert (=> b!254269 (= e!164822 tp_is_empty!6545)))

(declare-fun mapIsEmpty!11133 () Bool)

(assert (=> mapIsEmpty!11133 mapRes!11133))

(declare-fun b!254270 () Bool)

(declare-fun lt!127446 () Unit!7875)

(assert (=> b!254270 (= e!164820 lt!127446)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!417 (array!12422 array!12420 (_ BitVec 32) (_ BitVec 32) V!8373 V!8373 (_ BitVec 64) Int) Unit!7875)

(assert (=> b!254270 (= lt!127446 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!417 (_keys!6846 thiss!1504) (_values!4675 thiss!1504) (mask!10936 thiss!1504) (extraKeys!4429 thiss!1504) (zeroValue!4533 thiss!1504) (minValue!4533 thiss!1504) key!932 (defaultEntry!4692 thiss!1504)))))

(declare-fun c!42871 () Bool)

(assert (=> b!254270 (= c!42871 (is-MissingZero!1158 lt!127454))))

(assert (=> b!254270 e!164818))

(declare-fun b!254271 () Bool)

(declare-fun c!42870 () Bool)

(assert (=> b!254271 (= c!42870 (is-MissingVacant!1158 lt!127454))))

(assert (=> b!254271 (= e!164818 e!164815)))

(declare-fun bm!23989 () Bool)

(assert (=> bm!23989 (= call!23993 (arrayContainsKey!0 (_keys!6846 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!254272 () Bool)

(assert (=> b!254272 (= e!164810 (and e!164816 mapRes!11133))))

(declare-fun condMapEmpty!11133 () Bool)

(declare-fun mapDefault!11133 () ValueCell!2929)

