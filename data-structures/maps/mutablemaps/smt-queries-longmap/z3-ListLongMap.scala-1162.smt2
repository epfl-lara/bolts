; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24524 () Bool)

(assert start!24524)

(declare-fun b!256690 () Bool)

(declare-fun b_free!6723 () Bool)

(declare-fun b_next!6723 () Bool)

(assert (=> b!256690 (= b_free!6723 (not b_next!6723))))

(declare-fun tp!23471 () Bool)

(declare-fun b_and!13803 () Bool)

(assert (=> b!256690 (= tp!23471 b_and!13803)))

(declare-fun b!256681 () Bool)

(declare-fun e!166403 () Bool)

(declare-fun tp_is_empty!6585 () Bool)

(assert (=> b!256681 (= e!166403 tp_is_empty!6585)))

(declare-fun b!256683 () Bool)

(declare-datatypes ((Unit!7965 0))(
  ( (Unit!7966) )
))
(declare-fun e!166396 () Unit!7965)

(declare-fun Unit!7967 () Unit!7965)

(assert (=> b!256683 (= e!166396 Unit!7967)))

(declare-fun lt!128968 () Unit!7965)

(declare-datatypes ((V!8427 0))(
  ( (V!8428 (val!3337 Int)) )
))
(declare-datatypes ((ValueCell!2949 0))(
  ( (ValueCellFull!2949 (v!5422 V!8427)) (EmptyCell!2949) )
))
(declare-datatypes ((array!12510 0))(
  ( (array!12511 (arr!5925 (Array (_ BitVec 32) ValueCell!2949)) (size!6272 (_ BitVec 32))) )
))
(declare-datatypes ((array!12512 0))(
  ( (array!12513 (arr!5926 (Array (_ BitVec 32) (_ BitVec 64))) (size!6273 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3798 0))(
  ( (LongMapFixedSize!3799 (defaultEntry!4737 Int) (mask!11015 (_ BitVec 32)) (extraKeys!4474 (_ BitVec 32)) (zeroValue!4578 V!8427) (minValue!4578 V!8427) (_size!1948 (_ BitVec 32)) (_keys!6901 array!12512) (_values!4720 array!12510) (_vacant!1948 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3798)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!235 (array!12512 array!12510 (_ BitVec 32) (_ BitVec 32) V!8427 V!8427 (_ BitVec 64) (_ BitVec 32) Int) Unit!7965)

(assert (=> b!256683 (= lt!128968 (lemmaArrayContainsKeyThenInListMap!235 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)))))

(assert (=> b!256683 false))

(declare-fun b!256684 () Bool)

(declare-fun res!125589 () Bool)

(declare-fun e!166401 () Bool)

(assert (=> b!256684 (=> (not res!125589) (not e!166401))))

(declare-fun call!24333 () Bool)

(assert (=> b!256684 (= res!125589 call!24333)))

(declare-fun e!166408 () Bool)

(assert (=> b!256684 (= e!166408 e!166401)))

(declare-fun b!256685 () Bool)

(declare-fun e!166398 () Bool)

(declare-fun call!24332 () Bool)

(assert (=> b!256685 (= e!166398 (not call!24332))))

(declare-fun b!256686 () Bool)

(declare-fun e!166404 () Unit!7965)

(declare-fun Unit!7968 () Unit!7965)

(assert (=> b!256686 (= e!166404 Unit!7968)))

(declare-fun lt!128975 () Unit!7965)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!430 (array!12512 array!12510 (_ BitVec 32) (_ BitVec 32) V!8427 V!8427 (_ BitVec 64) Int) Unit!7965)

(assert (=> b!256686 (= lt!128975 (lemmaInListMapThenSeekEntryOrOpenFindsIt!430 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) key!932 (defaultEntry!4737 thiss!1504)))))

(assert (=> b!256686 false))

(declare-fun b!256687 () Bool)

(declare-fun res!125591 () Bool)

(declare-fun e!166405 () Bool)

(assert (=> b!256687 (=> (not res!125591) (not e!166405))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!256687 (= res!125591 (validKeyInArray!0 key!932))))

(declare-fun b!256688 () Bool)

(declare-fun Unit!7969 () Unit!7965)

(assert (=> b!256688 (= e!166396 Unit!7969)))

(declare-fun b!256689 () Bool)

(declare-fun e!166400 () Bool)

(declare-fun e!166397 () Bool)

(declare-fun mapRes!11208 () Bool)

(assert (=> b!256689 (= e!166400 (and e!166397 mapRes!11208))))

(declare-fun condMapEmpty!11208 () Bool)

(declare-fun mapDefault!11208 () ValueCell!2949)

(assert (=> b!256689 (= condMapEmpty!11208 (= (arr!5925 (_values!4720 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2949)) mapDefault!11208)))))

(declare-fun e!166406 () Bool)

(declare-fun array_inv!3907 (array!12512) Bool)

(declare-fun array_inv!3908 (array!12510) Bool)

(assert (=> b!256690 (= e!166406 (and tp!23471 tp_is_empty!6585 (array_inv!3907 (_keys!6901 thiss!1504)) (array_inv!3908 (_values!4720 thiss!1504)) e!166400))))

(declare-fun b!256691 () Bool)

(declare-fun e!166407 () Bool)

(declare-fun e!166399 () Bool)

(assert (=> b!256691 (= e!166407 e!166399)))

(declare-fun res!125593 () Bool)

(assert (=> b!256691 (=> (not res!125593) (not e!166399))))

(declare-datatypes ((SeekEntryResult!1175 0))(
  ( (MissingZero!1175 (index!6870 (_ BitVec 32))) (Found!1175 (index!6871 (_ BitVec 32))) (Intermediate!1175 (undefined!1987 Bool) (index!6872 (_ BitVec 32)) (x!24989 (_ BitVec 32))) (Undefined!1175) (MissingVacant!1175 (index!6873 (_ BitVec 32))) )
))
(declare-fun lt!128977 () SeekEntryResult!1175)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!256691 (= res!125593 (or (= lt!128977 (MissingZero!1175 index!297)) (= lt!128977 (MissingVacant!1175 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12512 (_ BitVec 32)) SeekEntryResult!1175)

(assert (=> b!256691 (= lt!128977 (seekEntryOrOpen!0 key!932 (_keys!6901 thiss!1504) (mask!11015 thiss!1504)))))

(declare-fun b!256692 () Bool)

(assert (=> b!256692 (= e!166405 (bvslt (size!6273 (_keys!6901 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!256693 () Bool)

(declare-fun e!166402 () Bool)

(assert (=> b!256693 (= e!166402 e!166398)))

(declare-fun res!125594 () Bool)

(assert (=> b!256693 (= res!125594 call!24333)))

(assert (=> b!256693 (=> (not res!125594) (not e!166398))))

(declare-fun b!256694 () Bool)

(assert (=> b!256694 (= e!166397 tp_is_empty!6585)))

(declare-fun b!256695 () Bool)

(get-info :version)

(assert (=> b!256695 (= e!166402 ((_ is Undefined!1175) lt!128977))))

(declare-fun bm!24329 () Bool)

(declare-fun c!43388 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24329 (= call!24333 (inRange!0 (ite c!43388 (index!6870 lt!128977) (index!6873 lt!128977)) (mask!11015 thiss!1504)))))

(declare-fun b!256696 () Bool)

(assert (=> b!256696 (= e!166401 (not call!24332))))

(declare-fun b!256697 () Bool)

(declare-fun c!43391 () Bool)

(assert (=> b!256697 (= c!43391 ((_ is MissingVacant!1175) lt!128977))))

(assert (=> b!256697 (= e!166408 e!166402)))

(declare-fun res!125588 () Bool)

(assert (=> start!24524 (=> (not res!125588) (not e!166407))))

(declare-fun valid!1476 (LongMapFixedSize!3798) Bool)

(assert (=> start!24524 (= res!125588 (valid!1476 thiss!1504))))

(assert (=> start!24524 e!166407))

(assert (=> start!24524 e!166406))

(assert (=> start!24524 true))

(assert (=> start!24524 tp_is_empty!6585))

(declare-fun b!256682 () Bool)

(declare-fun res!125587 () Bool)

(assert (=> b!256682 (= res!125587 (= (select (arr!5926 (_keys!6901 thiss!1504)) (index!6873 lt!128977)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!256682 (=> (not res!125587) (not e!166398))))

(declare-fun bm!24330 () Bool)

(declare-fun arrayContainsKey!0 (array!12512 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24330 (= call!24332 (arrayContainsKey!0 (_keys!6901 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!256698 () Bool)

(declare-fun res!125586 () Bool)

(assert (=> b!256698 (=> (not res!125586) (not e!166407))))

(assert (=> b!256698 (= res!125586 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!11208 () Bool)

(declare-fun tp!23472 () Bool)

(assert (=> mapNonEmpty!11208 (= mapRes!11208 (and tp!23472 e!166403))))

(declare-fun mapRest!11208 () (Array (_ BitVec 32) ValueCell!2949))

(declare-fun mapKey!11208 () (_ BitVec 32))

(declare-fun mapValue!11208 () ValueCell!2949)

(assert (=> mapNonEmpty!11208 (= (arr!5925 (_values!4720 thiss!1504)) (store mapRest!11208 mapKey!11208 mapValue!11208))))

(declare-fun b!256699 () Bool)

(declare-fun e!166395 () Bool)

(assert (=> b!256699 (= e!166399 e!166395)))

(declare-fun res!125592 () Bool)

(assert (=> b!256699 (=> (not res!125592) (not e!166395))))

(assert (=> b!256699 (= res!125592 (inRange!0 index!297 (mask!11015 thiss!1504)))))

(declare-fun lt!128970 () Unit!7965)

(assert (=> b!256699 (= lt!128970 e!166404)))

(declare-fun c!43390 () Bool)

(declare-datatypes ((tuple2!4910 0))(
  ( (tuple2!4911 (_1!2465 (_ BitVec 64)) (_2!2465 V!8427)) )
))
(declare-datatypes ((List!3813 0))(
  ( (Nil!3810) (Cons!3809 (h!4471 tuple2!4910) (t!8878 List!3813)) )
))
(declare-datatypes ((ListLongMap!3837 0))(
  ( (ListLongMap!3838 (toList!1934 List!3813)) )
))
(declare-fun lt!128974 () ListLongMap!3837)

(declare-fun contains!1867 (ListLongMap!3837 (_ BitVec 64)) Bool)

(assert (=> b!256699 (= c!43390 (contains!1867 lt!128974 key!932))))

(declare-fun getCurrentListMap!1457 (array!12512 array!12510 (_ BitVec 32) (_ BitVec 32) V!8427 V!8427 (_ BitVec 32) Int) ListLongMap!3837)

(assert (=> b!256699 (= lt!128974 (getCurrentListMap!1457 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)))))

(declare-fun b!256700 () Bool)

(declare-fun res!125590 () Bool)

(assert (=> b!256700 (=> (not res!125590) (not e!166401))))

(assert (=> b!256700 (= res!125590 (= (select (arr!5926 (_keys!6901 thiss!1504)) (index!6870 lt!128977)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!256701 () Bool)

(declare-fun lt!128966 () Unit!7965)

(assert (=> b!256701 (= e!166404 lt!128966)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!430 (array!12512 array!12510 (_ BitVec 32) (_ BitVec 32) V!8427 V!8427 (_ BitVec 64) Int) Unit!7965)

(assert (=> b!256701 (= lt!128966 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!430 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) key!932 (defaultEntry!4737 thiss!1504)))))

(assert (=> b!256701 (= c!43388 ((_ is MissingZero!1175) lt!128977))))

(assert (=> b!256701 e!166408))

(declare-fun b!256702 () Bool)

(assert (=> b!256702 (= e!166395 (not e!166405))))

(declare-fun res!125585 () Bool)

(assert (=> b!256702 (=> (not res!125585) (not e!166405))))

(assert (=> b!256702 (= res!125585 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6273 (_keys!6901 thiss!1504)))))))

(declare-fun lt!128973 () array!12512)

(assert (=> b!256702 (arrayContainsKey!0 lt!128973 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!128965 () Unit!7965)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12512 (_ BitVec 64) (_ BitVec 32)) Unit!7965)

(assert (=> b!256702 (= lt!128965 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!128973 key!932 index!297))))

(declare-fun v!346 () V!8427)

(declare-fun +!678 (ListLongMap!3837 tuple2!4910) ListLongMap!3837)

(assert (=> b!256702 (= (+!678 lt!128974 (tuple2!4911 key!932 v!346)) (getCurrentListMap!1457 lt!128973 (array!12511 (store (arr!5925 (_values!4720 thiss!1504)) index!297 (ValueCellFull!2949 v!346)) (size!6272 (_values!4720 thiss!1504))) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)))))

(declare-fun lt!128967 () Unit!7965)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!93 (array!12512 array!12510 (_ BitVec 32) (_ BitVec 32) V!8427 V!8427 (_ BitVec 32) (_ BitVec 64) V!8427 Int) Unit!7965)

(assert (=> b!256702 (= lt!128967 (lemmaAddValidKeyToArrayThenAddPairToListMap!93 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) index!297 key!932 v!346 (defaultEntry!4737 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12512 (_ BitVec 32)) Bool)

(assert (=> b!256702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!128973 (mask!11015 thiss!1504))))

(declare-fun lt!128971 () Unit!7965)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12512 (_ BitVec 32) (_ BitVec 32)) Unit!7965)

(assert (=> b!256702 (= lt!128971 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6901 thiss!1504) index!297 (mask!11015 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12512 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!256702 (= (arrayCountValidKeys!0 lt!128973 #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6901 thiss!1504) #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504)))))))

(declare-fun lt!128972 () Unit!7965)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12512 (_ BitVec 32) (_ BitVec 64)) Unit!7965)

(assert (=> b!256702 (= lt!128972 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6901 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3814 0))(
  ( (Nil!3811) (Cons!3810 (h!4472 (_ BitVec 64)) (t!8879 List!3814)) )
))
(declare-fun arrayNoDuplicates!0 (array!12512 (_ BitVec 32) List!3814) Bool)

(assert (=> b!256702 (arrayNoDuplicates!0 lt!128973 #b00000000000000000000000000000000 Nil!3811)))

(assert (=> b!256702 (= lt!128973 (array!12513 (store (arr!5926 (_keys!6901 thiss!1504)) index!297 key!932) (size!6273 (_keys!6901 thiss!1504))))))

(declare-fun lt!128969 () Unit!7965)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12512 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3814) Unit!7965)

(assert (=> b!256702 (= lt!128969 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6901 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3811))))

(declare-fun lt!128976 () Unit!7965)

(assert (=> b!256702 (= lt!128976 e!166396)))

(declare-fun c!43389 () Bool)

(assert (=> b!256702 (= c!43389 (arrayContainsKey!0 (_keys!6901 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!11208 () Bool)

(assert (=> mapIsEmpty!11208 mapRes!11208))

(assert (= (and start!24524 res!125588) b!256698))

(assert (= (and b!256698 res!125586) b!256691))

(assert (= (and b!256691 res!125593) b!256699))

(assert (= (and b!256699 c!43390) b!256686))

(assert (= (and b!256699 (not c!43390)) b!256701))

(assert (= (and b!256701 c!43388) b!256684))

(assert (= (and b!256701 (not c!43388)) b!256697))

(assert (= (and b!256684 res!125589) b!256700))

(assert (= (and b!256700 res!125590) b!256696))

(assert (= (and b!256697 c!43391) b!256693))

(assert (= (and b!256697 (not c!43391)) b!256695))

(assert (= (and b!256693 res!125594) b!256682))

(assert (= (and b!256682 res!125587) b!256685))

(assert (= (or b!256684 b!256693) bm!24329))

(assert (= (or b!256696 b!256685) bm!24330))

(assert (= (and b!256699 res!125592) b!256702))

(assert (= (and b!256702 c!43389) b!256683))

(assert (= (and b!256702 (not c!43389)) b!256688))

(assert (= (and b!256702 res!125585) b!256687))

(assert (= (and b!256687 res!125591) b!256692))

(assert (= (and b!256689 condMapEmpty!11208) mapIsEmpty!11208))

(assert (= (and b!256689 (not condMapEmpty!11208)) mapNonEmpty!11208))

(assert (= (and mapNonEmpty!11208 ((_ is ValueCellFull!2949) mapValue!11208)) b!256681))

(assert (= (and b!256689 ((_ is ValueCellFull!2949) mapDefault!11208)) b!256694))

(assert (= b!256690 b!256689))

(assert (= start!24524 b!256690))

(declare-fun m!272053 () Bool)

(assert (=> b!256691 m!272053))

(declare-fun m!272055 () Bool)

(assert (=> bm!24329 m!272055))

(declare-fun m!272057 () Bool)

(assert (=> b!256701 m!272057))

(declare-fun m!272059 () Bool)

(assert (=> b!256700 m!272059))

(declare-fun m!272061 () Bool)

(assert (=> b!256687 m!272061))

(declare-fun m!272063 () Bool)

(assert (=> b!256702 m!272063))

(declare-fun m!272065 () Bool)

(assert (=> b!256702 m!272065))

(declare-fun m!272067 () Bool)

(assert (=> b!256702 m!272067))

(declare-fun m!272069 () Bool)

(assert (=> b!256702 m!272069))

(declare-fun m!272071 () Bool)

(assert (=> b!256702 m!272071))

(declare-fun m!272073 () Bool)

(assert (=> b!256702 m!272073))

(declare-fun m!272075 () Bool)

(assert (=> b!256702 m!272075))

(declare-fun m!272077 () Bool)

(assert (=> b!256702 m!272077))

(declare-fun m!272079 () Bool)

(assert (=> b!256702 m!272079))

(declare-fun m!272081 () Bool)

(assert (=> b!256702 m!272081))

(declare-fun m!272083 () Bool)

(assert (=> b!256702 m!272083))

(declare-fun m!272085 () Bool)

(assert (=> b!256702 m!272085))

(declare-fun m!272087 () Bool)

(assert (=> b!256702 m!272087))

(declare-fun m!272089 () Bool)

(assert (=> b!256702 m!272089))

(declare-fun m!272091 () Bool)

(assert (=> b!256702 m!272091))

(assert (=> bm!24330 m!272063))

(declare-fun m!272093 () Bool)

(assert (=> b!256699 m!272093))

(declare-fun m!272095 () Bool)

(assert (=> b!256699 m!272095))

(declare-fun m!272097 () Bool)

(assert (=> b!256699 m!272097))

(declare-fun m!272099 () Bool)

(assert (=> b!256690 m!272099))

(declare-fun m!272101 () Bool)

(assert (=> b!256690 m!272101))

(declare-fun m!272103 () Bool)

(assert (=> mapNonEmpty!11208 m!272103))

(declare-fun m!272105 () Bool)

(assert (=> b!256686 m!272105))

(declare-fun m!272107 () Bool)

(assert (=> b!256683 m!272107))

(declare-fun m!272109 () Bool)

(assert (=> b!256682 m!272109))

(declare-fun m!272111 () Bool)

(assert (=> start!24524 m!272111))

(check-sat (not mapNonEmpty!11208) (not b!256687) (not b!256691) (not b!256702) (not b!256686) (not b_next!6723) tp_is_empty!6585 (not b!256690) (not b!256701) b_and!13803 (not start!24524) (not b!256683) (not b!256699) (not bm!24329) (not bm!24330))
(check-sat b_and!13803 (not b_next!6723))
(get-model)

(declare-fun d!61633 () Bool)

(assert (=> d!61633 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!256687 d!61633))

(declare-fun d!61635 () Bool)

(assert (=> d!61635 (= (inRange!0 (ite c!43388 (index!6870 lt!128977) (index!6873 lt!128977)) (mask!11015 thiss!1504)) (and (bvsge (ite c!43388 (index!6870 lt!128977) (index!6873 lt!128977)) #b00000000000000000000000000000000) (bvslt (ite c!43388 (index!6870 lt!128977) (index!6873 lt!128977)) (bvadd (mask!11015 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24329 d!61635))

(declare-fun b!256781 () Bool)

(declare-fun c!43411 () Bool)

(declare-fun lt!129024 () (_ BitVec 64))

(assert (=> b!256781 (= c!43411 (= lt!129024 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!166463 () SeekEntryResult!1175)

(declare-fun e!166462 () SeekEntryResult!1175)

(assert (=> b!256781 (= e!166463 e!166462)))

(declare-fun b!256782 () Bool)

(declare-fun lt!129025 () SeekEntryResult!1175)

(assert (=> b!256782 (= e!166463 (Found!1175 (index!6872 lt!129025)))))

(declare-fun b!256783 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12512 (_ BitVec 32)) SeekEntryResult!1175)

(assert (=> b!256783 (= e!166462 (seekKeyOrZeroReturnVacant!0 (x!24989 lt!129025) (index!6872 lt!129025) (index!6872 lt!129025) key!932 (_keys!6901 thiss!1504) (mask!11015 thiss!1504)))))

(declare-fun b!256784 () Bool)

(declare-fun e!166461 () SeekEntryResult!1175)

(assert (=> b!256784 (= e!166461 Undefined!1175)))

(declare-fun d!61637 () Bool)

(declare-fun lt!129023 () SeekEntryResult!1175)

(assert (=> d!61637 (and (or ((_ is Undefined!1175) lt!129023) (not ((_ is Found!1175) lt!129023)) (and (bvsge (index!6871 lt!129023) #b00000000000000000000000000000000) (bvslt (index!6871 lt!129023) (size!6273 (_keys!6901 thiss!1504))))) (or ((_ is Undefined!1175) lt!129023) ((_ is Found!1175) lt!129023) (not ((_ is MissingZero!1175) lt!129023)) (and (bvsge (index!6870 lt!129023) #b00000000000000000000000000000000) (bvslt (index!6870 lt!129023) (size!6273 (_keys!6901 thiss!1504))))) (or ((_ is Undefined!1175) lt!129023) ((_ is Found!1175) lt!129023) ((_ is MissingZero!1175) lt!129023) (not ((_ is MissingVacant!1175) lt!129023)) (and (bvsge (index!6873 lt!129023) #b00000000000000000000000000000000) (bvslt (index!6873 lt!129023) (size!6273 (_keys!6901 thiss!1504))))) (or ((_ is Undefined!1175) lt!129023) (ite ((_ is Found!1175) lt!129023) (= (select (arr!5926 (_keys!6901 thiss!1504)) (index!6871 lt!129023)) key!932) (ite ((_ is MissingZero!1175) lt!129023) (= (select (arr!5926 (_keys!6901 thiss!1504)) (index!6870 lt!129023)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1175) lt!129023) (= (select (arr!5926 (_keys!6901 thiss!1504)) (index!6873 lt!129023)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!61637 (= lt!129023 e!166461)))

(declare-fun c!43412 () Bool)

(assert (=> d!61637 (= c!43412 (and ((_ is Intermediate!1175) lt!129025) (undefined!1987 lt!129025)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12512 (_ BitVec 32)) SeekEntryResult!1175)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!61637 (= lt!129025 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11015 thiss!1504)) key!932 (_keys!6901 thiss!1504) (mask!11015 thiss!1504)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!61637 (validMask!0 (mask!11015 thiss!1504))))

(assert (=> d!61637 (= (seekEntryOrOpen!0 key!932 (_keys!6901 thiss!1504) (mask!11015 thiss!1504)) lt!129023)))

(declare-fun b!256785 () Bool)

(assert (=> b!256785 (= e!166461 e!166463)))

(assert (=> b!256785 (= lt!129024 (select (arr!5926 (_keys!6901 thiss!1504)) (index!6872 lt!129025)))))

(declare-fun c!43410 () Bool)

(assert (=> b!256785 (= c!43410 (= lt!129024 key!932))))

(declare-fun b!256786 () Bool)

(assert (=> b!256786 (= e!166462 (MissingZero!1175 (index!6872 lt!129025)))))

(assert (= (and d!61637 c!43412) b!256784))

(assert (= (and d!61637 (not c!43412)) b!256785))

(assert (= (and b!256785 c!43410) b!256782))

(assert (= (and b!256785 (not c!43410)) b!256781))

(assert (= (and b!256781 c!43411) b!256786))

(assert (= (and b!256781 (not c!43411)) b!256783))

(declare-fun m!272173 () Bool)

(assert (=> b!256783 m!272173))

(declare-fun m!272175 () Bool)

(assert (=> d!61637 m!272175))

(declare-fun m!272177 () Bool)

(assert (=> d!61637 m!272177))

(declare-fun m!272179 () Bool)

(assert (=> d!61637 m!272179))

(assert (=> d!61637 m!272177))

(declare-fun m!272181 () Bool)

(assert (=> d!61637 m!272181))

(declare-fun m!272183 () Bool)

(assert (=> d!61637 m!272183))

(declare-fun m!272185 () Bool)

(assert (=> d!61637 m!272185))

(declare-fun m!272187 () Bool)

(assert (=> b!256785 m!272187))

(assert (=> b!256691 d!61637))

(declare-fun d!61639 () Bool)

(assert (=> d!61639 (= (inRange!0 index!297 (mask!11015 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!11015 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!256699 d!61639))

(declare-fun d!61641 () Bool)

(declare-fun e!166468 () Bool)

(assert (=> d!61641 e!166468))

(declare-fun res!125627 () Bool)

(assert (=> d!61641 (=> res!125627 e!166468)))

(declare-fun lt!129035 () Bool)

(assert (=> d!61641 (= res!125627 (not lt!129035))))

(declare-fun lt!129034 () Bool)

(assert (=> d!61641 (= lt!129035 lt!129034)))

(declare-fun lt!129036 () Unit!7965)

(declare-fun e!166469 () Unit!7965)

(assert (=> d!61641 (= lt!129036 e!166469)))

(declare-fun c!43415 () Bool)

(assert (=> d!61641 (= c!43415 lt!129034)))

(declare-fun containsKey!301 (List!3813 (_ BitVec 64)) Bool)

(assert (=> d!61641 (= lt!129034 (containsKey!301 (toList!1934 lt!128974) key!932))))

(assert (=> d!61641 (= (contains!1867 lt!128974 key!932) lt!129035)))

(declare-fun b!256793 () Bool)

(declare-fun lt!129037 () Unit!7965)

(assert (=> b!256793 (= e!166469 lt!129037)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!250 (List!3813 (_ BitVec 64)) Unit!7965)

(assert (=> b!256793 (= lt!129037 (lemmaContainsKeyImpliesGetValueByKeyDefined!250 (toList!1934 lt!128974) key!932))))

(declare-datatypes ((Option!315 0))(
  ( (Some!314 (v!5426 V!8427)) (None!313) )
))
(declare-fun isDefined!251 (Option!315) Bool)

(declare-fun getValueByKey!309 (List!3813 (_ BitVec 64)) Option!315)

(assert (=> b!256793 (isDefined!251 (getValueByKey!309 (toList!1934 lt!128974) key!932))))

(declare-fun b!256794 () Bool)

(declare-fun Unit!7975 () Unit!7965)

(assert (=> b!256794 (= e!166469 Unit!7975)))

(declare-fun b!256795 () Bool)

(assert (=> b!256795 (= e!166468 (isDefined!251 (getValueByKey!309 (toList!1934 lt!128974) key!932)))))

(assert (= (and d!61641 c!43415) b!256793))

(assert (= (and d!61641 (not c!43415)) b!256794))

(assert (= (and d!61641 (not res!125627)) b!256795))

(declare-fun m!272189 () Bool)

(assert (=> d!61641 m!272189))

(declare-fun m!272191 () Bool)

(assert (=> b!256793 m!272191))

(declare-fun m!272193 () Bool)

(assert (=> b!256793 m!272193))

(assert (=> b!256793 m!272193))

(declare-fun m!272195 () Bool)

(assert (=> b!256793 m!272195))

(assert (=> b!256795 m!272193))

(assert (=> b!256795 m!272193))

(assert (=> b!256795 m!272195))

(assert (=> b!256699 d!61641))

(declare-fun b!256838 () Bool)

(declare-fun e!166496 () Bool)

(declare-fun call!24357 () Bool)

(assert (=> b!256838 (= e!166496 (not call!24357))))

(declare-fun b!256839 () Bool)

(declare-fun res!125650 () Bool)

(declare-fun e!166507 () Bool)

(assert (=> b!256839 (=> (not res!125650) (not e!166507))))

(declare-fun e!166506 () Bool)

(assert (=> b!256839 (= res!125650 e!166506)))

(declare-fun res!125648 () Bool)

(assert (=> b!256839 (=> res!125648 e!166506)))

(declare-fun e!166498 () Bool)

(assert (=> b!256839 (= res!125648 (not e!166498))))

(declare-fun res!125652 () Bool)

(assert (=> b!256839 (=> (not res!125652) (not e!166498))))

(assert (=> b!256839 (= res!125652 (bvslt #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))))))

(declare-fun b!256840 () Bool)

(declare-fun e!166504 () ListLongMap!3837)

(declare-fun call!24356 () ListLongMap!3837)

(assert (=> b!256840 (= e!166504 call!24356)))

(declare-fun d!61643 () Bool)

(assert (=> d!61643 e!166507))

(declare-fun res!125647 () Bool)

(assert (=> d!61643 (=> (not res!125647) (not e!166507))))

(assert (=> d!61643 (= res!125647 (or (bvsge #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))))))))

(declare-fun lt!129100 () ListLongMap!3837)

(declare-fun lt!129084 () ListLongMap!3837)

(assert (=> d!61643 (= lt!129100 lt!129084)))

(declare-fun lt!129085 () Unit!7965)

(declare-fun e!166502 () Unit!7965)

(assert (=> d!61643 (= lt!129085 e!166502)))

(declare-fun c!43433 () Bool)

(declare-fun e!166499 () Bool)

(assert (=> d!61643 (= c!43433 e!166499)))

(declare-fun res!125651 () Bool)

(assert (=> d!61643 (=> (not res!125651) (not e!166499))))

(assert (=> d!61643 (= res!125651 (bvslt #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))))))

(declare-fun e!166500 () ListLongMap!3837)

(assert (=> d!61643 (= lt!129084 e!166500)))

(declare-fun c!43430 () Bool)

(assert (=> d!61643 (= c!43430 (and (not (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61643 (validMask!0 (mask!11015 thiss!1504))))

(assert (=> d!61643 (= (getCurrentListMap!1457 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)) lt!129100)))

(declare-fun b!256841 () Bool)

(declare-fun c!43432 () Bool)

(assert (=> b!256841 (= c!43432 (and (not (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!166501 () ListLongMap!3837)

(assert (=> b!256841 (= e!166504 e!166501)))

(declare-fun b!256842 () Bool)

(declare-fun lt!129087 () Unit!7965)

(assert (=> b!256842 (= e!166502 lt!129087)))

(declare-fun lt!129098 () ListLongMap!3837)

(declare-fun getCurrentListMapNoExtraKeys!571 (array!12512 array!12510 (_ BitVec 32) (_ BitVec 32) V!8427 V!8427 (_ BitVec 32) Int) ListLongMap!3837)

(assert (=> b!256842 (= lt!129098 (getCurrentListMapNoExtraKeys!571 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)))))

(declare-fun lt!129092 () (_ BitVec 64))

(assert (=> b!256842 (= lt!129092 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129088 () (_ BitVec 64))

(assert (=> b!256842 (= lt!129088 (select (arr!5926 (_keys!6901 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!129096 () Unit!7965)

(declare-fun addStillContains!228 (ListLongMap!3837 (_ BitVec 64) V!8427 (_ BitVec 64)) Unit!7965)

(assert (=> b!256842 (= lt!129096 (addStillContains!228 lt!129098 lt!129092 (zeroValue!4578 thiss!1504) lt!129088))))

(assert (=> b!256842 (contains!1867 (+!678 lt!129098 (tuple2!4911 lt!129092 (zeroValue!4578 thiss!1504))) lt!129088)))

(declare-fun lt!129093 () Unit!7965)

(assert (=> b!256842 (= lt!129093 lt!129096)))

(declare-fun lt!129099 () ListLongMap!3837)

(assert (=> b!256842 (= lt!129099 (getCurrentListMapNoExtraKeys!571 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)))))

(declare-fun lt!129097 () (_ BitVec 64))

(assert (=> b!256842 (= lt!129097 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129089 () (_ BitVec 64))

(assert (=> b!256842 (= lt!129089 (select (arr!5926 (_keys!6901 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!129101 () Unit!7965)

(declare-fun addApplyDifferent!228 (ListLongMap!3837 (_ BitVec 64) V!8427 (_ BitVec 64)) Unit!7965)

(assert (=> b!256842 (= lt!129101 (addApplyDifferent!228 lt!129099 lt!129097 (minValue!4578 thiss!1504) lt!129089))))

(declare-fun apply!252 (ListLongMap!3837 (_ BitVec 64)) V!8427)

(assert (=> b!256842 (= (apply!252 (+!678 lt!129099 (tuple2!4911 lt!129097 (minValue!4578 thiss!1504))) lt!129089) (apply!252 lt!129099 lt!129089))))

(declare-fun lt!129091 () Unit!7965)

(assert (=> b!256842 (= lt!129091 lt!129101)))

(declare-fun lt!129082 () ListLongMap!3837)

(assert (=> b!256842 (= lt!129082 (getCurrentListMapNoExtraKeys!571 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)))))

(declare-fun lt!129095 () (_ BitVec 64))

(assert (=> b!256842 (= lt!129095 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129090 () (_ BitVec 64))

(assert (=> b!256842 (= lt!129090 (select (arr!5926 (_keys!6901 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!129086 () Unit!7965)

(assert (=> b!256842 (= lt!129086 (addApplyDifferent!228 lt!129082 lt!129095 (zeroValue!4578 thiss!1504) lt!129090))))

(assert (=> b!256842 (= (apply!252 (+!678 lt!129082 (tuple2!4911 lt!129095 (zeroValue!4578 thiss!1504))) lt!129090) (apply!252 lt!129082 lt!129090))))

(declare-fun lt!129083 () Unit!7965)

(assert (=> b!256842 (= lt!129083 lt!129086)))

(declare-fun lt!129102 () ListLongMap!3837)

(assert (=> b!256842 (= lt!129102 (getCurrentListMapNoExtraKeys!571 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)))))

(declare-fun lt!129103 () (_ BitVec 64))

(assert (=> b!256842 (= lt!129103 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129094 () (_ BitVec 64))

(assert (=> b!256842 (= lt!129094 (select (arr!5926 (_keys!6901 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!256842 (= lt!129087 (addApplyDifferent!228 lt!129102 lt!129103 (minValue!4578 thiss!1504) lt!129094))))

(assert (=> b!256842 (= (apply!252 (+!678 lt!129102 (tuple2!4911 lt!129103 (minValue!4578 thiss!1504))) lt!129094) (apply!252 lt!129102 lt!129094))))

(declare-fun b!256843 () Bool)

(declare-fun e!166497 () Bool)

(declare-fun e!166503 () Bool)

(assert (=> b!256843 (= e!166497 e!166503)))

(declare-fun res!125653 () Bool)

(declare-fun call!24360 () Bool)

(assert (=> b!256843 (= res!125653 call!24360)))

(assert (=> b!256843 (=> (not res!125653) (not e!166503))))

(declare-fun bm!24351 () Bool)

(declare-fun call!24359 () ListLongMap!3837)

(assert (=> bm!24351 (= call!24356 call!24359)))

(declare-fun call!24358 () ListLongMap!3837)

(declare-fun bm!24352 () Bool)

(declare-fun call!24355 () ListLongMap!3837)

(declare-fun c!43431 () Bool)

(declare-fun call!24354 () ListLongMap!3837)

(assert (=> bm!24352 (= call!24359 (+!678 (ite c!43430 call!24358 (ite c!43431 call!24355 call!24354)) (ite (or c!43430 c!43431) (tuple2!4911 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4578 thiss!1504)) (tuple2!4911 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4578 thiss!1504)))))))

(declare-fun bm!24353 () Bool)

(assert (=> bm!24353 (= call!24360 (contains!1867 lt!129100 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24354 () Bool)

(assert (=> bm!24354 (= call!24354 call!24355)))

(declare-fun b!256844 () Bool)

(declare-fun e!166508 () Bool)

(declare-fun get!3048 (ValueCell!2949 V!8427) V!8427)

(declare-fun dynLambda!590 (Int (_ BitVec 64)) V!8427)

(assert (=> b!256844 (= e!166508 (= (apply!252 lt!129100 (select (arr!5926 (_keys!6901 thiss!1504)) #b00000000000000000000000000000000)) (get!3048 (select (arr!5925 (_values!4720 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!590 (defaultEntry!4737 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!256844 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6272 (_values!4720 thiss!1504))))))

(assert (=> b!256844 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))))))

(declare-fun b!256845 () Bool)

(declare-fun Unit!7976 () Unit!7965)

(assert (=> b!256845 (= e!166502 Unit!7976)))

(declare-fun b!256846 () Bool)

(assert (=> b!256846 (= e!166503 (= (apply!252 lt!129100 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4578 thiss!1504)))))

(declare-fun b!256847 () Bool)

(assert (=> b!256847 (= e!166501 call!24354)))

(declare-fun b!256848 () Bool)

(assert (=> b!256848 (= e!166500 (+!678 call!24359 (tuple2!4911 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4578 thiss!1504))))))

(declare-fun b!256849 () Bool)

(declare-fun res!125646 () Bool)

(assert (=> b!256849 (=> (not res!125646) (not e!166507))))

(assert (=> b!256849 (= res!125646 e!166497)))

(declare-fun c!43428 () Bool)

(assert (=> b!256849 (= c!43428 (not (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!256850 () Bool)

(declare-fun e!166505 () Bool)

(assert (=> b!256850 (= e!166496 e!166505)))

(declare-fun res!125649 () Bool)

(assert (=> b!256850 (= res!125649 call!24357)))

(assert (=> b!256850 (=> (not res!125649) (not e!166505))))

(declare-fun b!256851 () Bool)

(assert (=> b!256851 (= e!166499 (validKeyInArray!0 (select (arr!5926 (_keys!6901 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!24355 () Bool)

(assert (=> bm!24355 (= call!24357 (contains!1867 lt!129100 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!256852 () Bool)

(assert (=> b!256852 (= e!166506 e!166508)))

(declare-fun res!125654 () Bool)

(assert (=> b!256852 (=> (not res!125654) (not e!166508))))

(assert (=> b!256852 (= res!125654 (contains!1867 lt!129100 (select (arr!5926 (_keys!6901 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!256852 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))))))

(declare-fun bm!24356 () Bool)

(assert (=> bm!24356 (= call!24358 (getCurrentListMapNoExtraKeys!571 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)))))

(declare-fun b!256853 () Bool)

(assert (=> b!256853 (= e!166505 (= (apply!252 lt!129100 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4578 thiss!1504)))))

(declare-fun bm!24357 () Bool)

(assert (=> bm!24357 (= call!24355 call!24358)))

(declare-fun b!256854 () Bool)

(assert (=> b!256854 (= e!166497 (not call!24360))))

(declare-fun b!256855 () Bool)

(assert (=> b!256855 (= e!166507 e!166496)))

(declare-fun c!43429 () Bool)

(assert (=> b!256855 (= c!43429 (not (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!256856 () Bool)

(assert (=> b!256856 (= e!166498 (validKeyInArray!0 (select (arr!5926 (_keys!6901 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!256857 () Bool)

(assert (=> b!256857 (= e!166501 call!24356)))

(declare-fun b!256858 () Bool)

(assert (=> b!256858 (= e!166500 e!166504)))

(assert (=> b!256858 (= c!43431 (and (not (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!61643 c!43430) b!256848))

(assert (= (and d!61643 (not c!43430)) b!256858))

(assert (= (and b!256858 c!43431) b!256840))

(assert (= (and b!256858 (not c!43431)) b!256841))

(assert (= (and b!256841 c!43432) b!256857))

(assert (= (and b!256841 (not c!43432)) b!256847))

(assert (= (or b!256857 b!256847) bm!24354))

(assert (= (or b!256840 bm!24354) bm!24357))

(assert (= (or b!256840 b!256857) bm!24351))

(assert (= (or b!256848 bm!24357) bm!24356))

(assert (= (or b!256848 bm!24351) bm!24352))

(assert (= (and d!61643 res!125651) b!256851))

(assert (= (and d!61643 c!43433) b!256842))

(assert (= (and d!61643 (not c!43433)) b!256845))

(assert (= (and d!61643 res!125647) b!256839))

(assert (= (and b!256839 res!125652) b!256856))

(assert (= (and b!256839 (not res!125648)) b!256852))

(assert (= (and b!256852 res!125654) b!256844))

(assert (= (and b!256839 res!125650) b!256849))

(assert (= (and b!256849 c!43428) b!256843))

(assert (= (and b!256849 (not c!43428)) b!256854))

(assert (= (and b!256843 res!125653) b!256846))

(assert (= (or b!256843 b!256854) bm!24353))

(assert (= (and b!256849 res!125646) b!256855))

(assert (= (and b!256855 c!43429) b!256850))

(assert (= (and b!256855 (not c!43429)) b!256838))

(assert (= (and b!256850 res!125649) b!256853))

(assert (= (or b!256850 b!256838) bm!24355))

(declare-fun b_lambda!8201 () Bool)

(assert (=> (not b_lambda!8201) (not b!256844)))

(declare-fun t!8883 () Bool)

(declare-fun tb!3025 () Bool)

(assert (=> (and b!256690 (= (defaultEntry!4737 thiss!1504) (defaultEntry!4737 thiss!1504)) t!8883) tb!3025))

(declare-fun result!5381 () Bool)

(assert (=> tb!3025 (= result!5381 tp_is_empty!6585)))

(assert (=> b!256844 t!8883))

(declare-fun b_and!13807 () Bool)

(assert (= b_and!13803 (and (=> t!8883 result!5381) b_and!13807)))

(declare-fun m!272197 () Bool)

(assert (=> bm!24353 m!272197))

(declare-fun m!272199 () Bool)

(assert (=> b!256844 m!272199))

(declare-fun m!272201 () Bool)

(assert (=> b!256844 m!272201))

(assert (=> b!256844 m!272201))

(declare-fun m!272203 () Bool)

(assert (=> b!256844 m!272203))

(declare-fun m!272205 () Bool)

(assert (=> b!256844 m!272205))

(assert (=> b!256844 m!272205))

(assert (=> b!256844 m!272199))

(declare-fun m!272207 () Bool)

(assert (=> b!256844 m!272207))

(declare-fun m!272209 () Bool)

(assert (=> b!256846 m!272209))

(declare-fun m!272211 () Bool)

(assert (=> b!256848 m!272211))

(assert (=> b!256851 m!272201))

(assert (=> b!256851 m!272201))

(declare-fun m!272213 () Bool)

(assert (=> b!256851 m!272213))

(assert (=> b!256852 m!272201))

(assert (=> b!256852 m!272201))

(declare-fun m!272215 () Bool)

(assert (=> b!256852 m!272215))

(assert (=> b!256856 m!272201))

(assert (=> b!256856 m!272201))

(assert (=> b!256856 m!272213))

(declare-fun m!272217 () Bool)

(assert (=> bm!24352 m!272217))

(declare-fun m!272219 () Bool)

(assert (=> bm!24355 m!272219))

(declare-fun m!272221 () Bool)

(assert (=> b!256842 m!272221))

(declare-fun m!272223 () Bool)

(assert (=> b!256842 m!272223))

(assert (=> b!256842 m!272201))

(declare-fun m!272225 () Bool)

(assert (=> b!256842 m!272225))

(declare-fun m!272227 () Bool)

(assert (=> b!256842 m!272227))

(declare-fun m!272229 () Bool)

(assert (=> b!256842 m!272229))

(assert (=> b!256842 m!272225))

(declare-fun m!272231 () Bool)

(assert (=> b!256842 m!272231))

(declare-fun m!272233 () Bool)

(assert (=> b!256842 m!272233))

(declare-fun m!272235 () Bool)

(assert (=> b!256842 m!272235))

(declare-fun m!272237 () Bool)

(assert (=> b!256842 m!272237))

(declare-fun m!272239 () Bool)

(assert (=> b!256842 m!272239))

(declare-fun m!272241 () Bool)

(assert (=> b!256842 m!272241))

(declare-fun m!272243 () Bool)

(assert (=> b!256842 m!272243))

(declare-fun m!272245 () Bool)

(assert (=> b!256842 m!272245))

(assert (=> b!256842 m!272237))

(declare-fun m!272247 () Bool)

(assert (=> b!256842 m!272247))

(assert (=> b!256842 m!272235))

(declare-fun m!272249 () Bool)

(assert (=> b!256842 m!272249))

(assert (=> b!256842 m!272233))

(declare-fun m!272251 () Bool)

(assert (=> b!256842 m!272251))

(declare-fun m!272253 () Bool)

(assert (=> b!256853 m!272253))

(assert (=> d!61643 m!272183))

(assert (=> bm!24356 m!272229))

(assert (=> b!256699 d!61643))

(declare-fun d!61645 () Bool)

(declare-fun e!166511 () Bool)

(assert (=> d!61645 e!166511))

(declare-fun res!125659 () Bool)

(assert (=> d!61645 (=> (not res!125659) (not e!166511))))

(declare-fun lt!129108 () SeekEntryResult!1175)

(assert (=> d!61645 (= res!125659 ((_ is Found!1175) lt!129108))))

(assert (=> d!61645 (= lt!129108 (seekEntryOrOpen!0 key!932 (_keys!6901 thiss!1504) (mask!11015 thiss!1504)))))

(declare-fun lt!129109 () Unit!7965)

(declare-fun choose!1240 (array!12512 array!12510 (_ BitVec 32) (_ BitVec 32) V!8427 V!8427 (_ BitVec 64) Int) Unit!7965)

(assert (=> d!61645 (= lt!129109 (choose!1240 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) key!932 (defaultEntry!4737 thiss!1504)))))

(assert (=> d!61645 (validMask!0 (mask!11015 thiss!1504))))

(assert (=> d!61645 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!430 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) key!932 (defaultEntry!4737 thiss!1504)) lt!129109)))

(declare-fun b!256865 () Bool)

(declare-fun res!125660 () Bool)

(assert (=> b!256865 (=> (not res!125660) (not e!166511))))

(assert (=> b!256865 (= res!125660 (inRange!0 (index!6871 lt!129108) (mask!11015 thiss!1504)))))

(declare-fun b!256866 () Bool)

(assert (=> b!256866 (= e!166511 (= (select (arr!5926 (_keys!6901 thiss!1504)) (index!6871 lt!129108)) key!932))))

(assert (=> b!256866 (and (bvsge (index!6871 lt!129108) #b00000000000000000000000000000000) (bvslt (index!6871 lt!129108) (size!6273 (_keys!6901 thiss!1504))))))

(assert (= (and d!61645 res!125659) b!256865))

(assert (= (and b!256865 res!125660) b!256866))

(assert (=> d!61645 m!272053))

(declare-fun m!272255 () Bool)

(assert (=> d!61645 m!272255))

(assert (=> d!61645 m!272183))

(declare-fun m!272257 () Bool)

(assert (=> b!256865 m!272257))

(declare-fun m!272259 () Bool)

(assert (=> b!256866 m!272259))

(assert (=> b!256686 d!61645))

(declare-fun bm!24360 () Bool)

(declare-fun call!24363 () Bool)

(assert (=> bm!24360 (= call!24363 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!128973 (mask!11015 thiss!1504)))))

(declare-fun b!256876 () Bool)

(declare-fun e!166519 () Bool)

(declare-fun e!166518 () Bool)

(assert (=> b!256876 (= e!166519 e!166518)))

(declare-fun lt!129117 () (_ BitVec 64))

(assert (=> b!256876 (= lt!129117 (select (arr!5926 lt!128973) #b00000000000000000000000000000000))))

(declare-fun lt!129116 () Unit!7965)

(assert (=> b!256876 (= lt!129116 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!128973 lt!129117 #b00000000000000000000000000000000))))

(assert (=> b!256876 (arrayContainsKey!0 lt!128973 lt!129117 #b00000000000000000000000000000000)))

(declare-fun lt!129118 () Unit!7965)

(assert (=> b!256876 (= lt!129118 lt!129116)))

(declare-fun res!125665 () Bool)

(assert (=> b!256876 (= res!125665 (= (seekEntryOrOpen!0 (select (arr!5926 lt!128973) #b00000000000000000000000000000000) lt!128973 (mask!11015 thiss!1504)) (Found!1175 #b00000000000000000000000000000000)))))

(assert (=> b!256876 (=> (not res!125665) (not e!166518))))

(declare-fun b!256877 () Bool)

(assert (=> b!256877 (= e!166518 call!24363)))

(declare-fun b!256878 () Bool)

(assert (=> b!256878 (= e!166519 call!24363)))

(declare-fun b!256875 () Bool)

(declare-fun e!166520 () Bool)

(assert (=> b!256875 (= e!166520 e!166519)))

(declare-fun c!43436 () Bool)

(assert (=> b!256875 (= c!43436 (validKeyInArray!0 (select (arr!5926 lt!128973) #b00000000000000000000000000000000)))))

(declare-fun d!61647 () Bool)

(declare-fun res!125666 () Bool)

(assert (=> d!61647 (=> res!125666 e!166520)))

(assert (=> d!61647 (= res!125666 (bvsge #b00000000000000000000000000000000 (size!6273 lt!128973)))))

(assert (=> d!61647 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!128973 (mask!11015 thiss!1504)) e!166520)))

(assert (= (and d!61647 (not res!125666)) b!256875))

(assert (= (and b!256875 c!43436) b!256876))

(assert (= (and b!256875 (not c!43436)) b!256878))

(assert (= (and b!256876 res!125665) b!256877))

(assert (= (or b!256877 b!256878) bm!24360))

(declare-fun m!272261 () Bool)

(assert (=> bm!24360 m!272261))

(declare-fun m!272263 () Bool)

(assert (=> b!256876 m!272263))

(declare-fun m!272265 () Bool)

(assert (=> b!256876 m!272265))

(declare-fun m!272267 () Bool)

(assert (=> b!256876 m!272267))

(assert (=> b!256876 m!272263))

(declare-fun m!272269 () Bool)

(assert (=> b!256876 m!272269))

(assert (=> b!256875 m!272263))

(assert (=> b!256875 m!272263))

(declare-fun m!272271 () Bool)

(assert (=> b!256875 m!272271))

(assert (=> b!256702 d!61647))

(declare-fun b!256879 () Bool)

(declare-fun e!166521 () Bool)

(declare-fun call!24367 () Bool)

(assert (=> b!256879 (= e!166521 (not call!24367))))

(declare-fun b!256880 () Bool)

(declare-fun res!125671 () Bool)

(declare-fun e!166532 () Bool)

(assert (=> b!256880 (=> (not res!125671) (not e!166532))))

(declare-fun e!166531 () Bool)

(assert (=> b!256880 (= res!125671 e!166531)))

(declare-fun res!125669 () Bool)

(assert (=> b!256880 (=> res!125669 e!166531)))

(declare-fun e!166523 () Bool)

(assert (=> b!256880 (= res!125669 (not e!166523))))

(declare-fun res!125673 () Bool)

(assert (=> b!256880 (=> (not res!125673) (not e!166523))))

(assert (=> b!256880 (= res!125673 (bvslt #b00000000000000000000000000000000 (size!6273 lt!128973)))))

(declare-fun b!256881 () Bool)

(declare-fun e!166529 () ListLongMap!3837)

(declare-fun call!24366 () ListLongMap!3837)

(assert (=> b!256881 (= e!166529 call!24366)))

(declare-fun d!61649 () Bool)

(assert (=> d!61649 e!166532))

(declare-fun res!125668 () Bool)

(assert (=> d!61649 (=> (not res!125668) (not e!166532))))

(assert (=> d!61649 (= res!125668 (or (bvsge #b00000000000000000000000000000000 (size!6273 lt!128973)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6273 lt!128973)))))))

(declare-fun lt!129137 () ListLongMap!3837)

(declare-fun lt!129121 () ListLongMap!3837)

(assert (=> d!61649 (= lt!129137 lt!129121)))

(declare-fun lt!129122 () Unit!7965)

(declare-fun e!166527 () Unit!7965)

(assert (=> d!61649 (= lt!129122 e!166527)))

(declare-fun c!43442 () Bool)

(declare-fun e!166524 () Bool)

(assert (=> d!61649 (= c!43442 e!166524)))

(declare-fun res!125672 () Bool)

(assert (=> d!61649 (=> (not res!125672) (not e!166524))))

(assert (=> d!61649 (= res!125672 (bvslt #b00000000000000000000000000000000 (size!6273 lt!128973)))))

(declare-fun e!166525 () ListLongMap!3837)

(assert (=> d!61649 (= lt!129121 e!166525)))

(declare-fun c!43439 () Bool)

(assert (=> d!61649 (= c!43439 (and (not (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61649 (validMask!0 (mask!11015 thiss!1504))))

(assert (=> d!61649 (= (getCurrentListMap!1457 lt!128973 (array!12511 (store (arr!5925 (_values!4720 thiss!1504)) index!297 (ValueCellFull!2949 v!346)) (size!6272 (_values!4720 thiss!1504))) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)) lt!129137)))

(declare-fun b!256882 () Bool)

(declare-fun c!43441 () Bool)

(assert (=> b!256882 (= c!43441 (and (not (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!166526 () ListLongMap!3837)

(assert (=> b!256882 (= e!166529 e!166526)))

(declare-fun b!256883 () Bool)

(declare-fun lt!129124 () Unit!7965)

(assert (=> b!256883 (= e!166527 lt!129124)))

(declare-fun lt!129135 () ListLongMap!3837)

(assert (=> b!256883 (= lt!129135 (getCurrentListMapNoExtraKeys!571 lt!128973 (array!12511 (store (arr!5925 (_values!4720 thiss!1504)) index!297 (ValueCellFull!2949 v!346)) (size!6272 (_values!4720 thiss!1504))) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)))))

(declare-fun lt!129129 () (_ BitVec 64))

(assert (=> b!256883 (= lt!129129 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129125 () (_ BitVec 64))

(assert (=> b!256883 (= lt!129125 (select (arr!5926 lt!128973) #b00000000000000000000000000000000))))

(declare-fun lt!129133 () Unit!7965)

(assert (=> b!256883 (= lt!129133 (addStillContains!228 lt!129135 lt!129129 (zeroValue!4578 thiss!1504) lt!129125))))

(assert (=> b!256883 (contains!1867 (+!678 lt!129135 (tuple2!4911 lt!129129 (zeroValue!4578 thiss!1504))) lt!129125)))

(declare-fun lt!129130 () Unit!7965)

(assert (=> b!256883 (= lt!129130 lt!129133)))

(declare-fun lt!129136 () ListLongMap!3837)

(assert (=> b!256883 (= lt!129136 (getCurrentListMapNoExtraKeys!571 lt!128973 (array!12511 (store (arr!5925 (_values!4720 thiss!1504)) index!297 (ValueCellFull!2949 v!346)) (size!6272 (_values!4720 thiss!1504))) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)))))

(declare-fun lt!129134 () (_ BitVec 64))

(assert (=> b!256883 (= lt!129134 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129126 () (_ BitVec 64))

(assert (=> b!256883 (= lt!129126 (select (arr!5926 lt!128973) #b00000000000000000000000000000000))))

(declare-fun lt!129138 () Unit!7965)

(assert (=> b!256883 (= lt!129138 (addApplyDifferent!228 lt!129136 lt!129134 (minValue!4578 thiss!1504) lt!129126))))

(assert (=> b!256883 (= (apply!252 (+!678 lt!129136 (tuple2!4911 lt!129134 (minValue!4578 thiss!1504))) lt!129126) (apply!252 lt!129136 lt!129126))))

(declare-fun lt!129128 () Unit!7965)

(assert (=> b!256883 (= lt!129128 lt!129138)))

(declare-fun lt!129119 () ListLongMap!3837)

(assert (=> b!256883 (= lt!129119 (getCurrentListMapNoExtraKeys!571 lt!128973 (array!12511 (store (arr!5925 (_values!4720 thiss!1504)) index!297 (ValueCellFull!2949 v!346)) (size!6272 (_values!4720 thiss!1504))) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)))))

(declare-fun lt!129132 () (_ BitVec 64))

(assert (=> b!256883 (= lt!129132 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129127 () (_ BitVec 64))

(assert (=> b!256883 (= lt!129127 (select (arr!5926 lt!128973) #b00000000000000000000000000000000))))

(declare-fun lt!129123 () Unit!7965)

(assert (=> b!256883 (= lt!129123 (addApplyDifferent!228 lt!129119 lt!129132 (zeroValue!4578 thiss!1504) lt!129127))))

(assert (=> b!256883 (= (apply!252 (+!678 lt!129119 (tuple2!4911 lt!129132 (zeroValue!4578 thiss!1504))) lt!129127) (apply!252 lt!129119 lt!129127))))

(declare-fun lt!129120 () Unit!7965)

(assert (=> b!256883 (= lt!129120 lt!129123)))

(declare-fun lt!129139 () ListLongMap!3837)

(assert (=> b!256883 (= lt!129139 (getCurrentListMapNoExtraKeys!571 lt!128973 (array!12511 (store (arr!5925 (_values!4720 thiss!1504)) index!297 (ValueCellFull!2949 v!346)) (size!6272 (_values!4720 thiss!1504))) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)))))

(declare-fun lt!129140 () (_ BitVec 64))

(assert (=> b!256883 (= lt!129140 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129131 () (_ BitVec 64))

(assert (=> b!256883 (= lt!129131 (select (arr!5926 lt!128973) #b00000000000000000000000000000000))))

(assert (=> b!256883 (= lt!129124 (addApplyDifferent!228 lt!129139 lt!129140 (minValue!4578 thiss!1504) lt!129131))))

(assert (=> b!256883 (= (apply!252 (+!678 lt!129139 (tuple2!4911 lt!129140 (minValue!4578 thiss!1504))) lt!129131) (apply!252 lt!129139 lt!129131))))

(declare-fun b!256884 () Bool)

(declare-fun e!166522 () Bool)

(declare-fun e!166528 () Bool)

(assert (=> b!256884 (= e!166522 e!166528)))

(declare-fun res!125674 () Bool)

(declare-fun call!24370 () Bool)

(assert (=> b!256884 (= res!125674 call!24370)))

(assert (=> b!256884 (=> (not res!125674) (not e!166528))))

(declare-fun bm!24361 () Bool)

(declare-fun call!24369 () ListLongMap!3837)

(assert (=> bm!24361 (= call!24366 call!24369)))

(declare-fun c!43440 () Bool)

(declare-fun bm!24362 () Bool)

(declare-fun call!24365 () ListLongMap!3837)

(declare-fun call!24368 () ListLongMap!3837)

(declare-fun call!24364 () ListLongMap!3837)

(assert (=> bm!24362 (= call!24369 (+!678 (ite c!43439 call!24368 (ite c!43440 call!24365 call!24364)) (ite (or c!43439 c!43440) (tuple2!4911 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4578 thiss!1504)) (tuple2!4911 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4578 thiss!1504)))))))

(declare-fun bm!24363 () Bool)

(assert (=> bm!24363 (= call!24370 (contains!1867 lt!129137 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24364 () Bool)

(assert (=> bm!24364 (= call!24364 call!24365)))

(declare-fun e!166533 () Bool)

(declare-fun b!256885 () Bool)

(assert (=> b!256885 (= e!166533 (= (apply!252 lt!129137 (select (arr!5926 lt!128973) #b00000000000000000000000000000000)) (get!3048 (select (arr!5925 (array!12511 (store (arr!5925 (_values!4720 thiss!1504)) index!297 (ValueCellFull!2949 v!346)) (size!6272 (_values!4720 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!590 (defaultEntry!4737 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!256885 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6272 (array!12511 (store (arr!5925 (_values!4720 thiss!1504)) index!297 (ValueCellFull!2949 v!346)) (size!6272 (_values!4720 thiss!1504))))))))

(assert (=> b!256885 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6273 lt!128973)))))

(declare-fun b!256886 () Bool)

(declare-fun Unit!7977 () Unit!7965)

(assert (=> b!256886 (= e!166527 Unit!7977)))

(declare-fun b!256887 () Bool)

(assert (=> b!256887 (= e!166528 (= (apply!252 lt!129137 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4578 thiss!1504)))))

(declare-fun b!256888 () Bool)

(assert (=> b!256888 (= e!166526 call!24364)))

(declare-fun b!256889 () Bool)

(assert (=> b!256889 (= e!166525 (+!678 call!24369 (tuple2!4911 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4578 thiss!1504))))))

(declare-fun b!256890 () Bool)

(declare-fun res!125667 () Bool)

(assert (=> b!256890 (=> (not res!125667) (not e!166532))))

(assert (=> b!256890 (= res!125667 e!166522)))

(declare-fun c!43437 () Bool)

(assert (=> b!256890 (= c!43437 (not (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!256891 () Bool)

(declare-fun e!166530 () Bool)

(assert (=> b!256891 (= e!166521 e!166530)))

(declare-fun res!125670 () Bool)

(assert (=> b!256891 (= res!125670 call!24367)))

(assert (=> b!256891 (=> (not res!125670) (not e!166530))))

(declare-fun b!256892 () Bool)

(assert (=> b!256892 (= e!166524 (validKeyInArray!0 (select (arr!5926 lt!128973) #b00000000000000000000000000000000)))))

(declare-fun bm!24365 () Bool)

(assert (=> bm!24365 (= call!24367 (contains!1867 lt!129137 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!256893 () Bool)

(assert (=> b!256893 (= e!166531 e!166533)))

(declare-fun res!125675 () Bool)

(assert (=> b!256893 (=> (not res!125675) (not e!166533))))

(assert (=> b!256893 (= res!125675 (contains!1867 lt!129137 (select (arr!5926 lt!128973) #b00000000000000000000000000000000)))))

(assert (=> b!256893 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6273 lt!128973)))))

(declare-fun bm!24366 () Bool)

(assert (=> bm!24366 (= call!24368 (getCurrentListMapNoExtraKeys!571 lt!128973 (array!12511 (store (arr!5925 (_values!4720 thiss!1504)) index!297 (ValueCellFull!2949 v!346)) (size!6272 (_values!4720 thiss!1504))) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)))))

(declare-fun b!256894 () Bool)

(assert (=> b!256894 (= e!166530 (= (apply!252 lt!129137 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4578 thiss!1504)))))

(declare-fun bm!24367 () Bool)

(assert (=> bm!24367 (= call!24365 call!24368)))

(declare-fun b!256895 () Bool)

(assert (=> b!256895 (= e!166522 (not call!24370))))

(declare-fun b!256896 () Bool)

(assert (=> b!256896 (= e!166532 e!166521)))

(declare-fun c!43438 () Bool)

(assert (=> b!256896 (= c!43438 (not (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!256897 () Bool)

(assert (=> b!256897 (= e!166523 (validKeyInArray!0 (select (arr!5926 lt!128973) #b00000000000000000000000000000000)))))

(declare-fun b!256898 () Bool)

(assert (=> b!256898 (= e!166526 call!24366)))

(declare-fun b!256899 () Bool)

(assert (=> b!256899 (= e!166525 e!166529)))

(assert (=> b!256899 (= c!43440 (and (not (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4474 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!61649 c!43439) b!256889))

(assert (= (and d!61649 (not c!43439)) b!256899))

(assert (= (and b!256899 c!43440) b!256881))

(assert (= (and b!256899 (not c!43440)) b!256882))

(assert (= (and b!256882 c!43441) b!256898))

(assert (= (and b!256882 (not c!43441)) b!256888))

(assert (= (or b!256898 b!256888) bm!24364))

(assert (= (or b!256881 bm!24364) bm!24367))

(assert (= (or b!256881 b!256898) bm!24361))

(assert (= (or b!256889 bm!24367) bm!24366))

(assert (= (or b!256889 bm!24361) bm!24362))

(assert (= (and d!61649 res!125672) b!256892))

(assert (= (and d!61649 c!43442) b!256883))

(assert (= (and d!61649 (not c!43442)) b!256886))

(assert (= (and d!61649 res!125668) b!256880))

(assert (= (and b!256880 res!125673) b!256897))

(assert (= (and b!256880 (not res!125669)) b!256893))

(assert (= (and b!256893 res!125675) b!256885))

(assert (= (and b!256880 res!125671) b!256890))

(assert (= (and b!256890 c!43437) b!256884))

(assert (= (and b!256890 (not c!43437)) b!256895))

(assert (= (and b!256884 res!125674) b!256887))

(assert (= (or b!256884 b!256895) bm!24363))

(assert (= (and b!256890 res!125667) b!256896))

(assert (= (and b!256896 c!43438) b!256891))

(assert (= (and b!256896 (not c!43438)) b!256879))

(assert (= (and b!256891 res!125670) b!256894))

(assert (= (or b!256891 b!256879) bm!24365))

(declare-fun b_lambda!8203 () Bool)

(assert (=> (not b_lambda!8203) (not b!256885)))

(assert (=> b!256885 t!8883))

(declare-fun b_and!13809 () Bool)

(assert (= b_and!13807 (and (=> t!8883 result!5381) b_and!13809)))

(declare-fun m!272273 () Bool)

(assert (=> bm!24363 m!272273))

(assert (=> b!256885 m!272199))

(assert (=> b!256885 m!272263))

(assert (=> b!256885 m!272263))

(declare-fun m!272275 () Bool)

(assert (=> b!256885 m!272275))

(declare-fun m!272277 () Bool)

(assert (=> b!256885 m!272277))

(assert (=> b!256885 m!272277))

(assert (=> b!256885 m!272199))

(declare-fun m!272279 () Bool)

(assert (=> b!256885 m!272279))

(declare-fun m!272281 () Bool)

(assert (=> b!256887 m!272281))

(declare-fun m!272283 () Bool)

(assert (=> b!256889 m!272283))

(assert (=> b!256892 m!272263))

(assert (=> b!256892 m!272263))

(assert (=> b!256892 m!272271))

(assert (=> b!256893 m!272263))

(assert (=> b!256893 m!272263))

(declare-fun m!272285 () Bool)

(assert (=> b!256893 m!272285))

(assert (=> b!256897 m!272263))

(assert (=> b!256897 m!272263))

(assert (=> b!256897 m!272271))

(declare-fun m!272287 () Bool)

(assert (=> bm!24362 m!272287))

(declare-fun m!272289 () Bool)

(assert (=> bm!24365 m!272289))

(declare-fun m!272291 () Bool)

(assert (=> b!256883 m!272291))

(declare-fun m!272293 () Bool)

(assert (=> b!256883 m!272293))

(assert (=> b!256883 m!272263))

(declare-fun m!272295 () Bool)

(assert (=> b!256883 m!272295))

(declare-fun m!272297 () Bool)

(assert (=> b!256883 m!272297))

(declare-fun m!272299 () Bool)

(assert (=> b!256883 m!272299))

(assert (=> b!256883 m!272295))

(declare-fun m!272301 () Bool)

(assert (=> b!256883 m!272301))

(declare-fun m!272303 () Bool)

(assert (=> b!256883 m!272303))

(declare-fun m!272305 () Bool)

(assert (=> b!256883 m!272305))

(declare-fun m!272307 () Bool)

(assert (=> b!256883 m!272307))

(declare-fun m!272309 () Bool)

(assert (=> b!256883 m!272309))

(declare-fun m!272311 () Bool)

(assert (=> b!256883 m!272311))

(declare-fun m!272313 () Bool)

(assert (=> b!256883 m!272313))

(declare-fun m!272315 () Bool)

(assert (=> b!256883 m!272315))

(assert (=> b!256883 m!272307))

(declare-fun m!272317 () Bool)

(assert (=> b!256883 m!272317))

(assert (=> b!256883 m!272305))

(declare-fun m!272319 () Bool)

(assert (=> b!256883 m!272319))

(assert (=> b!256883 m!272303))

(declare-fun m!272321 () Bool)

(assert (=> b!256883 m!272321))

(declare-fun m!272323 () Bool)

(assert (=> b!256894 m!272323))

(assert (=> d!61649 m!272183))

(assert (=> bm!24366 m!272299))

(assert (=> b!256702 d!61649))

(declare-fun b!256910 () Bool)

(declare-fun e!166538 () Bool)

(assert (=> b!256910 (= e!166538 (bvslt (size!6273 (_keys!6901 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!256909 () Bool)

(declare-fun res!125687 () Bool)

(assert (=> b!256909 (=> (not res!125687) (not e!166538))))

(assert (=> b!256909 (= res!125687 (validKeyInArray!0 key!932))))

(declare-fun b!256908 () Bool)

(declare-fun res!125684 () Bool)

(assert (=> b!256908 (=> (not res!125684) (not e!166538))))

(assert (=> b!256908 (= res!125684 (not (validKeyInArray!0 (select (arr!5926 (_keys!6901 thiss!1504)) index!297))))))

(declare-fun b!256911 () Bool)

(declare-fun e!166539 () Bool)

(assert (=> b!256911 (= e!166539 (= (arrayCountValidKeys!0 (array!12513 (store (arr!5926 (_keys!6901 thiss!1504)) index!297 key!932) (size!6273 (_keys!6901 thiss!1504))) #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6901 thiss!1504) #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun d!61651 () Bool)

(assert (=> d!61651 e!166539))

(declare-fun res!125686 () Bool)

(assert (=> d!61651 (=> (not res!125686) (not e!166539))))

(assert (=> d!61651 (= res!125686 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6273 (_keys!6901 thiss!1504)))))))

(declare-fun lt!129143 () Unit!7965)

(declare-fun choose!1 (array!12512 (_ BitVec 32) (_ BitVec 64)) Unit!7965)

(assert (=> d!61651 (= lt!129143 (choose!1 (_keys!6901 thiss!1504) index!297 key!932))))

(assert (=> d!61651 e!166538))

(declare-fun res!125685 () Bool)

(assert (=> d!61651 (=> (not res!125685) (not e!166538))))

(assert (=> d!61651 (= res!125685 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6273 (_keys!6901 thiss!1504)))))))

(assert (=> d!61651 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6901 thiss!1504) index!297 key!932) lt!129143)))

(assert (= (and d!61651 res!125685) b!256908))

(assert (= (and b!256908 res!125684) b!256909))

(assert (= (and b!256909 res!125687) b!256910))

(assert (= (and d!61651 res!125686) b!256911))

(assert (=> b!256909 m!272061))

(declare-fun m!272325 () Bool)

(assert (=> b!256908 m!272325))

(assert (=> b!256908 m!272325))

(declare-fun m!272327 () Bool)

(assert (=> b!256908 m!272327))

(assert (=> b!256911 m!272075))

(declare-fun m!272329 () Bool)

(assert (=> b!256911 m!272329))

(assert (=> b!256911 m!272087))

(declare-fun m!272331 () Bool)

(assert (=> d!61651 m!272331))

(assert (=> b!256702 d!61651))

(declare-fun d!61653 () Bool)

(declare-fun res!125692 () Bool)

(declare-fun e!166544 () Bool)

(assert (=> d!61653 (=> res!125692 e!166544)))

(assert (=> d!61653 (= res!125692 (= (select (arr!5926 lt!128973) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61653 (= (arrayContainsKey!0 lt!128973 key!932 #b00000000000000000000000000000000) e!166544)))

(declare-fun b!256916 () Bool)

(declare-fun e!166545 () Bool)

(assert (=> b!256916 (= e!166544 e!166545)))

(declare-fun res!125693 () Bool)

(assert (=> b!256916 (=> (not res!125693) (not e!166545))))

(assert (=> b!256916 (= res!125693 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6273 lt!128973)))))

(declare-fun b!256917 () Bool)

(assert (=> b!256917 (= e!166545 (arrayContainsKey!0 lt!128973 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61653 (not res!125692)) b!256916))

(assert (= (and b!256916 res!125693) b!256917))

(assert (=> d!61653 m!272263))

(declare-fun m!272333 () Bool)

(assert (=> b!256917 m!272333))

(assert (=> b!256702 d!61653))

(declare-fun d!61655 () Bool)

(declare-fun e!166548 () Bool)

(assert (=> d!61655 e!166548))

(declare-fun res!125698 () Bool)

(assert (=> d!61655 (=> (not res!125698) (not e!166548))))

(declare-fun lt!129152 () ListLongMap!3837)

(assert (=> d!61655 (= res!125698 (contains!1867 lt!129152 (_1!2465 (tuple2!4911 key!932 v!346))))))

(declare-fun lt!129153 () List!3813)

(assert (=> d!61655 (= lt!129152 (ListLongMap!3838 lt!129153))))

(declare-fun lt!129154 () Unit!7965)

(declare-fun lt!129155 () Unit!7965)

(assert (=> d!61655 (= lt!129154 lt!129155)))

(assert (=> d!61655 (= (getValueByKey!309 lt!129153 (_1!2465 (tuple2!4911 key!932 v!346))) (Some!314 (_2!2465 (tuple2!4911 key!932 v!346))))))

(declare-fun lemmaContainsTupThenGetReturnValue!167 (List!3813 (_ BitVec 64) V!8427) Unit!7965)

(assert (=> d!61655 (= lt!129155 (lemmaContainsTupThenGetReturnValue!167 lt!129153 (_1!2465 (tuple2!4911 key!932 v!346)) (_2!2465 (tuple2!4911 key!932 v!346))))))

(declare-fun insertStrictlySorted!169 (List!3813 (_ BitVec 64) V!8427) List!3813)

(assert (=> d!61655 (= lt!129153 (insertStrictlySorted!169 (toList!1934 lt!128974) (_1!2465 (tuple2!4911 key!932 v!346)) (_2!2465 (tuple2!4911 key!932 v!346))))))

(assert (=> d!61655 (= (+!678 lt!128974 (tuple2!4911 key!932 v!346)) lt!129152)))

(declare-fun b!256922 () Bool)

(declare-fun res!125699 () Bool)

(assert (=> b!256922 (=> (not res!125699) (not e!166548))))

(assert (=> b!256922 (= res!125699 (= (getValueByKey!309 (toList!1934 lt!129152) (_1!2465 (tuple2!4911 key!932 v!346))) (Some!314 (_2!2465 (tuple2!4911 key!932 v!346)))))))

(declare-fun b!256923 () Bool)

(declare-fun contains!1868 (List!3813 tuple2!4910) Bool)

(assert (=> b!256923 (= e!166548 (contains!1868 (toList!1934 lt!129152) (tuple2!4911 key!932 v!346)))))

(assert (= (and d!61655 res!125698) b!256922))

(assert (= (and b!256922 res!125699) b!256923))

(declare-fun m!272335 () Bool)

(assert (=> d!61655 m!272335))

(declare-fun m!272337 () Bool)

(assert (=> d!61655 m!272337))

(declare-fun m!272339 () Bool)

(assert (=> d!61655 m!272339))

(declare-fun m!272341 () Bool)

(assert (=> d!61655 m!272341))

(declare-fun m!272343 () Bool)

(assert (=> b!256922 m!272343))

(declare-fun m!272345 () Bool)

(assert (=> b!256923 m!272345))

(assert (=> b!256702 d!61655))

(declare-fun b!256932 () Bool)

(declare-fun e!166554 () (_ BitVec 32))

(declare-fun call!24373 () (_ BitVec 32))

(assert (=> b!256932 (= e!166554 call!24373)))

(declare-fun bm!24370 () Bool)

(assert (=> bm!24370 (= call!24373 (arrayCountValidKeys!0 (_keys!6901 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6273 (_keys!6901 thiss!1504))))))

(declare-fun b!256933 () Bool)

(declare-fun e!166553 () (_ BitVec 32))

(assert (=> b!256933 (= e!166553 #b00000000000000000000000000000000)))

(declare-fun b!256934 () Bool)

(assert (=> b!256934 (= e!166554 (bvadd #b00000000000000000000000000000001 call!24373))))

(declare-fun b!256935 () Bool)

(assert (=> b!256935 (= e!166553 e!166554)))

(declare-fun c!43447 () Bool)

(assert (=> b!256935 (= c!43447 (validKeyInArray!0 (select (arr!5926 (_keys!6901 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!61657 () Bool)

(declare-fun lt!129158 () (_ BitVec 32))

(assert (=> d!61657 (and (bvsge lt!129158 #b00000000000000000000000000000000) (bvsle lt!129158 (bvsub (size!6273 (_keys!6901 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!61657 (= lt!129158 e!166553)))

(declare-fun c!43448 () Bool)

(assert (=> d!61657 (= c!43448 (bvsge #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))))))

(assert (=> d!61657 (and (bvsle #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6273 (_keys!6901 thiss!1504)) (size!6273 (_keys!6901 thiss!1504))))))

(assert (=> d!61657 (= (arrayCountValidKeys!0 (_keys!6901 thiss!1504) #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))) lt!129158)))

(assert (= (and d!61657 c!43448) b!256933))

(assert (= (and d!61657 (not c!43448)) b!256935))

(assert (= (and b!256935 c!43447) b!256934))

(assert (= (and b!256935 (not c!43447)) b!256932))

(assert (= (or b!256934 b!256932) bm!24370))

(declare-fun m!272347 () Bool)

(assert (=> bm!24370 m!272347))

(assert (=> b!256935 m!272201))

(assert (=> b!256935 m!272201))

(assert (=> b!256935 m!272213))

(assert (=> b!256702 d!61657))

(declare-fun b!256946 () Bool)

(declare-fun e!166564 () Bool)

(declare-fun e!166565 () Bool)

(assert (=> b!256946 (= e!166564 e!166565)))

(declare-fun c!43451 () Bool)

(assert (=> b!256946 (= c!43451 (validKeyInArray!0 (select (arr!5926 lt!128973) #b00000000000000000000000000000000)))))

(declare-fun b!256947 () Bool)

(declare-fun e!166563 () Bool)

(declare-fun contains!1869 (List!3814 (_ BitVec 64)) Bool)

(assert (=> b!256947 (= e!166563 (contains!1869 Nil!3811 (select (arr!5926 lt!128973) #b00000000000000000000000000000000)))))

(declare-fun b!256948 () Bool)

(declare-fun e!166566 () Bool)

(assert (=> b!256948 (= e!166566 e!166564)))

(declare-fun res!125707 () Bool)

(assert (=> b!256948 (=> (not res!125707) (not e!166564))))

(assert (=> b!256948 (= res!125707 (not e!166563))))

(declare-fun res!125708 () Bool)

(assert (=> b!256948 (=> (not res!125708) (not e!166563))))

(assert (=> b!256948 (= res!125708 (validKeyInArray!0 (select (arr!5926 lt!128973) #b00000000000000000000000000000000)))))

(declare-fun b!256949 () Bool)

(declare-fun call!24376 () Bool)

(assert (=> b!256949 (= e!166565 call!24376)))

(declare-fun b!256950 () Bool)

(assert (=> b!256950 (= e!166565 call!24376)))

(declare-fun bm!24373 () Bool)

(assert (=> bm!24373 (= call!24376 (arrayNoDuplicates!0 lt!128973 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!43451 (Cons!3810 (select (arr!5926 lt!128973) #b00000000000000000000000000000000) Nil!3811) Nil!3811)))))

(declare-fun d!61659 () Bool)

(declare-fun res!125706 () Bool)

(assert (=> d!61659 (=> res!125706 e!166566)))

(assert (=> d!61659 (= res!125706 (bvsge #b00000000000000000000000000000000 (size!6273 lt!128973)))))

(assert (=> d!61659 (= (arrayNoDuplicates!0 lt!128973 #b00000000000000000000000000000000 Nil!3811) e!166566)))

(assert (= (and d!61659 (not res!125706)) b!256948))

(assert (= (and b!256948 res!125708) b!256947))

(assert (= (and b!256948 res!125707) b!256946))

(assert (= (and b!256946 c!43451) b!256949))

(assert (= (and b!256946 (not c!43451)) b!256950))

(assert (= (or b!256949 b!256950) bm!24373))

(assert (=> b!256946 m!272263))

(assert (=> b!256946 m!272263))

(assert (=> b!256946 m!272271))

(assert (=> b!256947 m!272263))

(assert (=> b!256947 m!272263))

(declare-fun m!272349 () Bool)

(assert (=> b!256947 m!272349))

(assert (=> b!256948 m!272263))

(assert (=> b!256948 m!272263))

(assert (=> b!256948 m!272271))

(assert (=> bm!24373 m!272263))

(declare-fun m!272351 () Bool)

(assert (=> bm!24373 m!272351))

(assert (=> b!256702 d!61659))

(declare-fun d!61661 () Bool)

(assert (=> d!61661 (arrayContainsKey!0 lt!128973 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!129161 () Unit!7965)

(declare-fun choose!13 (array!12512 (_ BitVec 64) (_ BitVec 32)) Unit!7965)

(assert (=> d!61661 (= lt!129161 (choose!13 lt!128973 key!932 index!297))))

(assert (=> d!61661 (bvsge index!297 #b00000000000000000000000000000000)))

(assert (=> d!61661 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!128973 key!932 index!297) lt!129161)))

(declare-fun bs!9076 () Bool)

(assert (= bs!9076 d!61661))

(assert (=> bs!9076 m!272083))

(declare-fun m!272353 () Bool)

(assert (=> bs!9076 m!272353))

(assert (=> b!256702 d!61661))

(declare-fun d!61663 () Bool)

(declare-fun e!166569 () Bool)

(assert (=> d!61663 e!166569))

(declare-fun res!125711 () Bool)

(assert (=> d!61663 (=> (not res!125711) (not e!166569))))

(assert (=> d!61663 (= res!125711 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6273 (_keys!6901 thiss!1504)))))))

(declare-fun lt!129164 () Unit!7965)

(declare-fun choose!41 (array!12512 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3814) Unit!7965)

(assert (=> d!61663 (= lt!129164 (choose!41 (_keys!6901 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3811))))

(assert (=> d!61663 (bvslt (size!6273 (_keys!6901 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!61663 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6901 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3811) lt!129164)))

(declare-fun b!256953 () Bool)

(assert (=> b!256953 (= e!166569 (arrayNoDuplicates!0 (array!12513 (store (arr!5926 (_keys!6901 thiss!1504)) index!297 key!932) (size!6273 (_keys!6901 thiss!1504))) #b00000000000000000000000000000000 Nil!3811))))

(assert (= (and d!61663 res!125711) b!256953))

(declare-fun m!272355 () Bool)

(assert (=> d!61663 m!272355))

(assert (=> b!256953 m!272075))

(declare-fun m!272357 () Bool)

(assert (=> b!256953 m!272357))

(assert (=> b!256702 d!61663))

(declare-fun d!61665 () Bool)

(declare-fun res!125712 () Bool)

(declare-fun e!166570 () Bool)

(assert (=> d!61665 (=> res!125712 e!166570)))

(assert (=> d!61665 (= res!125712 (= (select (arr!5926 (_keys!6901 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61665 (= (arrayContainsKey!0 (_keys!6901 thiss!1504) key!932 #b00000000000000000000000000000000) e!166570)))

(declare-fun b!256954 () Bool)

(declare-fun e!166571 () Bool)

(assert (=> b!256954 (= e!166570 e!166571)))

(declare-fun res!125713 () Bool)

(assert (=> b!256954 (=> (not res!125713) (not e!166571))))

(assert (=> b!256954 (= res!125713 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6273 (_keys!6901 thiss!1504))))))

(declare-fun b!256955 () Bool)

(assert (=> b!256955 (= e!166571 (arrayContainsKey!0 (_keys!6901 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61665 (not res!125712)) b!256954))

(assert (= (and b!256954 res!125713) b!256955))

(assert (=> d!61665 m!272201))

(declare-fun m!272359 () Bool)

(assert (=> b!256955 m!272359))

(assert (=> b!256702 d!61665))

(declare-fun d!61667 () Bool)

(declare-fun e!166574 () Bool)

(assert (=> d!61667 e!166574))

(declare-fun res!125716 () Bool)

(assert (=> d!61667 (=> (not res!125716) (not e!166574))))

(assert (=> d!61667 (= res!125716 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6273 (_keys!6901 thiss!1504)))))))

(declare-fun lt!129167 () Unit!7965)

(declare-fun choose!102 ((_ BitVec 64) array!12512 (_ BitVec 32) (_ BitVec 32)) Unit!7965)

(assert (=> d!61667 (= lt!129167 (choose!102 key!932 (_keys!6901 thiss!1504) index!297 (mask!11015 thiss!1504)))))

(assert (=> d!61667 (validMask!0 (mask!11015 thiss!1504))))

(assert (=> d!61667 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6901 thiss!1504) index!297 (mask!11015 thiss!1504)) lt!129167)))

(declare-fun b!256958 () Bool)

(assert (=> b!256958 (= e!166574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12513 (store (arr!5926 (_keys!6901 thiss!1504)) index!297 key!932) (size!6273 (_keys!6901 thiss!1504))) (mask!11015 thiss!1504)))))

(assert (= (and d!61667 res!125716) b!256958))

(declare-fun m!272361 () Bool)

(assert (=> d!61667 m!272361))

(assert (=> d!61667 m!272183))

(assert (=> b!256958 m!272075))

(declare-fun m!272363 () Bool)

(assert (=> b!256958 m!272363))

(assert (=> b!256702 d!61667))

(declare-fun d!61669 () Bool)

(declare-fun e!166577 () Bool)

(assert (=> d!61669 e!166577))

(declare-fun res!125719 () Bool)

(assert (=> d!61669 (=> (not res!125719) (not e!166577))))

(assert (=> d!61669 (= res!125719 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6273 (_keys!6901 thiss!1504))) (bvslt index!297 (size!6272 (_values!4720 thiss!1504)))))))

(declare-fun lt!129170 () Unit!7965)

(declare-fun choose!1241 (array!12512 array!12510 (_ BitVec 32) (_ BitVec 32) V!8427 V!8427 (_ BitVec 32) (_ BitVec 64) V!8427 Int) Unit!7965)

(assert (=> d!61669 (= lt!129170 (choose!1241 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) index!297 key!932 v!346 (defaultEntry!4737 thiss!1504)))))

(assert (=> d!61669 (validMask!0 (mask!11015 thiss!1504))))

(assert (=> d!61669 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!93 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) index!297 key!932 v!346 (defaultEntry!4737 thiss!1504)) lt!129170)))

(declare-fun b!256961 () Bool)

(assert (=> b!256961 (= e!166577 (= (+!678 (getCurrentListMap!1457 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)) (tuple2!4911 key!932 v!346)) (getCurrentListMap!1457 (array!12513 (store (arr!5926 (_keys!6901 thiss!1504)) index!297 key!932) (size!6273 (_keys!6901 thiss!1504))) (array!12511 (store (arr!5925 (_values!4720 thiss!1504)) index!297 (ValueCellFull!2949 v!346)) (size!6272 (_values!4720 thiss!1504))) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504))))))

(assert (= (and d!61669 res!125719) b!256961))

(declare-fun m!272365 () Bool)

(assert (=> d!61669 m!272365))

(assert (=> d!61669 m!272183))

(declare-fun m!272367 () Bool)

(assert (=> b!256961 m!272367))

(assert (=> b!256961 m!272069))

(assert (=> b!256961 m!272075))

(assert (=> b!256961 m!272097))

(declare-fun m!272369 () Bool)

(assert (=> b!256961 m!272369))

(assert (=> b!256961 m!272097))

(assert (=> b!256702 d!61669))

(declare-fun b!256962 () Bool)

(declare-fun e!166579 () (_ BitVec 32))

(declare-fun call!24377 () (_ BitVec 32))

(assert (=> b!256962 (= e!166579 call!24377)))

(declare-fun bm!24374 () Bool)

(assert (=> bm!24374 (= call!24377 (arrayCountValidKeys!0 lt!128973 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6273 (_keys!6901 thiss!1504))))))

(declare-fun b!256963 () Bool)

(declare-fun e!166578 () (_ BitVec 32))

(assert (=> b!256963 (= e!166578 #b00000000000000000000000000000000)))

(declare-fun b!256964 () Bool)

(assert (=> b!256964 (= e!166579 (bvadd #b00000000000000000000000000000001 call!24377))))

(declare-fun b!256965 () Bool)

(assert (=> b!256965 (= e!166578 e!166579)))

(declare-fun c!43452 () Bool)

(assert (=> b!256965 (= c!43452 (validKeyInArray!0 (select (arr!5926 lt!128973) #b00000000000000000000000000000000)))))

(declare-fun d!61671 () Bool)

(declare-fun lt!129171 () (_ BitVec 32))

(assert (=> d!61671 (and (bvsge lt!129171 #b00000000000000000000000000000000) (bvsle lt!129171 (bvsub (size!6273 lt!128973) #b00000000000000000000000000000000)))))

(assert (=> d!61671 (= lt!129171 e!166578)))

(declare-fun c!43453 () Bool)

(assert (=> d!61671 (= c!43453 (bvsge #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))))))

(assert (=> d!61671 (and (bvsle #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6273 (_keys!6901 thiss!1504)) (size!6273 lt!128973)))))

(assert (=> d!61671 (= (arrayCountValidKeys!0 lt!128973 #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))) lt!129171)))

(assert (= (and d!61671 c!43453) b!256963))

(assert (= (and d!61671 (not c!43453)) b!256965))

(assert (= (and b!256965 c!43452) b!256964))

(assert (= (and b!256965 (not c!43452)) b!256962))

(assert (= (or b!256964 b!256962) bm!24374))

(declare-fun m!272371 () Bool)

(assert (=> bm!24374 m!272371))

(assert (=> b!256965 m!272263))

(assert (=> b!256965 m!272263))

(assert (=> b!256965 m!272271))

(assert (=> b!256702 d!61671))

(declare-fun d!61673 () Bool)

(assert (=> d!61673 (= (array_inv!3907 (_keys!6901 thiss!1504)) (bvsge (size!6273 (_keys!6901 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!256690 d!61673))

(declare-fun d!61675 () Bool)

(assert (=> d!61675 (= (array_inv!3908 (_values!4720 thiss!1504)) (bvsge (size!6272 (_values!4720 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!256690 d!61675))

(declare-fun b!256982 () Bool)

(declare-fun e!166588 () Bool)

(declare-fun call!24382 () Bool)

(assert (=> b!256982 (= e!166588 (not call!24382))))

(declare-fun b!256983 () Bool)

(declare-fun e!166589 () Bool)

(assert (=> b!256983 (= e!166589 e!166588)))

(declare-fun res!125730 () Bool)

(declare-fun call!24383 () Bool)

(assert (=> b!256983 (= res!125730 call!24383)))

(assert (=> b!256983 (=> (not res!125730) (not e!166588))))

(declare-fun b!256984 () Bool)

(declare-fun e!166591 () Bool)

(assert (=> b!256984 (= e!166589 e!166591)))

(declare-fun c!43458 () Bool)

(declare-fun lt!129176 () SeekEntryResult!1175)

(assert (=> b!256984 (= c!43458 ((_ is MissingVacant!1175) lt!129176))))

(declare-fun bm!24379 () Bool)

(assert (=> bm!24379 (= call!24382 (arrayContainsKey!0 (_keys!6901 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!256985 () Bool)

(assert (=> b!256985 (and (bvsge (index!6870 lt!129176) #b00000000000000000000000000000000) (bvslt (index!6870 lt!129176) (size!6273 (_keys!6901 thiss!1504))))))

(declare-fun res!125728 () Bool)

(assert (=> b!256985 (= res!125728 (= (select (arr!5926 (_keys!6901 thiss!1504)) (index!6870 lt!129176)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!256985 (=> (not res!125728) (not e!166588))))

(declare-fun c!43459 () Bool)

(declare-fun bm!24380 () Bool)

(assert (=> bm!24380 (= call!24383 (inRange!0 (ite c!43459 (index!6870 lt!129176) (index!6873 lt!129176)) (mask!11015 thiss!1504)))))

(declare-fun d!61677 () Bool)

(assert (=> d!61677 e!166589))

(assert (=> d!61677 (= c!43459 ((_ is MissingZero!1175) lt!129176))))

(assert (=> d!61677 (= lt!129176 (seekEntryOrOpen!0 key!932 (_keys!6901 thiss!1504) (mask!11015 thiss!1504)))))

(declare-fun lt!129177 () Unit!7965)

(declare-fun choose!1242 (array!12512 array!12510 (_ BitVec 32) (_ BitVec 32) V!8427 V!8427 (_ BitVec 64) Int) Unit!7965)

(assert (=> d!61677 (= lt!129177 (choose!1242 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) key!932 (defaultEntry!4737 thiss!1504)))))

(assert (=> d!61677 (validMask!0 (mask!11015 thiss!1504))))

(assert (=> d!61677 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!430 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) key!932 (defaultEntry!4737 thiss!1504)) lt!129177)))

(declare-fun b!256986 () Bool)

(assert (=> b!256986 (= e!166591 ((_ is Undefined!1175) lt!129176))))

(declare-fun b!256987 () Bool)

(declare-fun res!125729 () Bool)

(declare-fun e!166590 () Bool)

(assert (=> b!256987 (=> (not res!125729) (not e!166590))))

(assert (=> b!256987 (= res!125729 (= (select (arr!5926 (_keys!6901 thiss!1504)) (index!6873 lt!129176)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!256987 (and (bvsge (index!6873 lt!129176) #b00000000000000000000000000000000) (bvslt (index!6873 lt!129176) (size!6273 (_keys!6901 thiss!1504))))))

(declare-fun b!256988 () Bool)

(declare-fun res!125731 () Bool)

(assert (=> b!256988 (=> (not res!125731) (not e!166590))))

(assert (=> b!256988 (= res!125731 call!24383)))

(assert (=> b!256988 (= e!166591 e!166590)))

(declare-fun b!256989 () Bool)

(assert (=> b!256989 (= e!166590 (not call!24382))))

(assert (= (and d!61677 c!43459) b!256983))

(assert (= (and d!61677 (not c!43459)) b!256984))

(assert (= (and b!256983 res!125730) b!256985))

(assert (= (and b!256985 res!125728) b!256982))

(assert (= (and b!256984 c!43458) b!256988))

(assert (= (and b!256984 (not c!43458)) b!256986))

(assert (= (and b!256988 res!125731) b!256987))

(assert (= (and b!256987 res!125729) b!256989))

(assert (= (or b!256983 b!256988) bm!24380))

(assert (= (or b!256982 b!256989) bm!24379))

(declare-fun m!272373 () Bool)

(assert (=> bm!24380 m!272373))

(declare-fun m!272375 () Bool)

(assert (=> b!256985 m!272375))

(declare-fun m!272377 () Bool)

(assert (=> b!256987 m!272377))

(assert (=> d!61677 m!272053))

(declare-fun m!272379 () Bool)

(assert (=> d!61677 m!272379))

(assert (=> d!61677 m!272183))

(assert (=> bm!24379 m!272063))

(assert (=> b!256701 d!61677))

(declare-fun d!61679 () Bool)

(declare-fun res!125738 () Bool)

(declare-fun e!166594 () Bool)

(assert (=> d!61679 (=> (not res!125738) (not e!166594))))

(declare-fun simpleValid!274 (LongMapFixedSize!3798) Bool)

(assert (=> d!61679 (= res!125738 (simpleValid!274 thiss!1504))))

(assert (=> d!61679 (= (valid!1476 thiss!1504) e!166594)))

(declare-fun b!256996 () Bool)

(declare-fun res!125739 () Bool)

(assert (=> b!256996 (=> (not res!125739) (not e!166594))))

(assert (=> b!256996 (= res!125739 (= (arrayCountValidKeys!0 (_keys!6901 thiss!1504) #b00000000000000000000000000000000 (size!6273 (_keys!6901 thiss!1504))) (_size!1948 thiss!1504)))))

(declare-fun b!256997 () Bool)

(declare-fun res!125740 () Bool)

(assert (=> b!256997 (=> (not res!125740) (not e!166594))))

(assert (=> b!256997 (= res!125740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6901 thiss!1504) (mask!11015 thiss!1504)))))

(declare-fun b!256998 () Bool)

(assert (=> b!256998 (= e!166594 (arrayNoDuplicates!0 (_keys!6901 thiss!1504) #b00000000000000000000000000000000 Nil!3811))))

(assert (= (and d!61679 res!125738) b!256996))

(assert (= (and b!256996 res!125739) b!256997))

(assert (= (and b!256997 res!125740) b!256998))

(declare-fun m!272381 () Bool)

(assert (=> d!61679 m!272381))

(assert (=> b!256996 m!272087))

(declare-fun m!272383 () Bool)

(assert (=> b!256997 m!272383))

(declare-fun m!272385 () Bool)

(assert (=> b!256998 m!272385))

(assert (=> start!24524 d!61679))

(assert (=> bm!24330 d!61665))

(declare-fun d!61681 () Bool)

(assert (=> d!61681 (contains!1867 (getCurrentListMap!1457 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)) key!932)))

(declare-fun lt!129180 () Unit!7965)

(declare-fun choose!1243 (array!12512 array!12510 (_ BitVec 32) (_ BitVec 32) V!8427 V!8427 (_ BitVec 64) (_ BitVec 32) Int) Unit!7965)

(assert (=> d!61681 (= lt!129180 (choose!1243 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)))))

(assert (=> d!61681 (validMask!0 (mask!11015 thiss!1504))))

(assert (=> d!61681 (= (lemmaArrayContainsKeyThenInListMap!235 (_keys!6901 thiss!1504) (_values!4720 thiss!1504) (mask!11015 thiss!1504) (extraKeys!4474 thiss!1504) (zeroValue!4578 thiss!1504) (minValue!4578 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4737 thiss!1504)) lt!129180)))

(declare-fun bs!9077 () Bool)

(assert (= bs!9077 d!61681))

(assert (=> bs!9077 m!272097))

(assert (=> bs!9077 m!272097))

(declare-fun m!272387 () Bool)

(assert (=> bs!9077 m!272387))

(declare-fun m!272389 () Bool)

(assert (=> bs!9077 m!272389))

(assert (=> bs!9077 m!272183))

(assert (=> b!256683 d!61681))

(declare-fun b!257005 () Bool)

(declare-fun e!166599 () Bool)

(assert (=> b!257005 (= e!166599 tp_is_empty!6585)))

(declare-fun mapNonEmpty!11214 () Bool)

(declare-fun mapRes!11214 () Bool)

(declare-fun tp!23481 () Bool)

(assert (=> mapNonEmpty!11214 (= mapRes!11214 (and tp!23481 e!166599))))

(declare-fun mapKey!11214 () (_ BitVec 32))

(declare-fun mapRest!11214 () (Array (_ BitVec 32) ValueCell!2949))

(declare-fun mapValue!11214 () ValueCell!2949)

(assert (=> mapNonEmpty!11214 (= mapRest!11208 (store mapRest!11214 mapKey!11214 mapValue!11214))))

(declare-fun b!257006 () Bool)

(declare-fun e!166600 () Bool)

(assert (=> b!257006 (= e!166600 tp_is_empty!6585)))

(declare-fun mapIsEmpty!11214 () Bool)

(assert (=> mapIsEmpty!11214 mapRes!11214))

(declare-fun condMapEmpty!11214 () Bool)

(declare-fun mapDefault!11214 () ValueCell!2949)

(assert (=> mapNonEmpty!11208 (= condMapEmpty!11214 (= mapRest!11208 ((as const (Array (_ BitVec 32) ValueCell!2949)) mapDefault!11214)))))

(assert (=> mapNonEmpty!11208 (= tp!23472 (and e!166600 mapRes!11214))))

(assert (= (and mapNonEmpty!11208 condMapEmpty!11214) mapIsEmpty!11214))

(assert (= (and mapNonEmpty!11208 (not condMapEmpty!11214)) mapNonEmpty!11214))

(assert (= (and mapNonEmpty!11214 ((_ is ValueCellFull!2949) mapValue!11214)) b!257005))

(assert (= (and mapNonEmpty!11208 ((_ is ValueCellFull!2949) mapDefault!11214)) b!257006))

(declare-fun m!272391 () Bool)

(assert (=> mapNonEmpty!11214 m!272391))

(declare-fun b_lambda!8205 () Bool)

(assert (= b_lambda!8203 (or (and b!256690 b_free!6723) b_lambda!8205)))

(declare-fun b_lambda!8207 () Bool)

(assert (= b_lambda!8201 (or (and b!256690 b_free!6723) b_lambda!8207)))

(check-sat (not b!256865) (not b!256922) (not b!256889) (not bm!24362) (not mapNonEmpty!11214) (not bm!24365) (not d!61641) (not bm!24352) (not d!61677) (not b!256998) (not b!256793) (not b!256894) (not bm!24380) (not b!256856) (not d!61667) (not b!256842) (not bm!24370) (not d!61681) (not bm!24353) (not d!61655) (not b!256909) (not d!61661) (not b!256923) (not b!256848) (not bm!24356) (not b!256935) tp_is_empty!6585 (not b!256917) (not b_lambda!8205) (not b!256887) (not b!256911) (not b!256883) (not b!256897) (not b!256996) (not b!256844) (not bm!24363) (not b!256953) (not bm!24355) (not d!61649) (not b!256965) b_and!13809 (not d!61637) (not bm!24379) (not b!256795) (not b!256885) (not b!256852) (not b!256846) (not d!61651) (not b!256958) (not b!256955) (not b!256948) (not b!256961) (not b!256893) (not b!256946) (not d!61645) (not d!61663) (not b!256875) (not b!256853) (not bm!24373) (not b_lambda!8207) (not b!256892) (not bm!24360) (not d!61679) (not d!61669) (not d!61643) (not b!256997) (not b!256947) (not b_next!6723) (not bm!24374) (not b!256876) (not b!256908) (not b!256783) (not bm!24366) (not b!256851))
(check-sat b_and!13809 (not b_next!6723))
