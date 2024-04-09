; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21882 () Bool)

(assert start!21882)

(declare-fun b!220895 () Bool)

(declare-fun b_free!5937 () Bool)

(declare-fun b_next!5937 () Bool)

(assert (=> b!220895 (= b_free!5937 (not b_next!5937))))

(declare-fun tp!20953 () Bool)

(declare-fun b_and!12853 () Bool)

(assert (=> b!220895 (= tp!20953 b_and!12853)))

(declare-fun bm!20640 () Bool)

(declare-fun call!20644 () Bool)

(declare-fun c!36731 () Bool)

(declare-datatypes ((V!7379 0))(
  ( (V!7380 (val!2944 Int)) )
))
(declare-datatypes ((ValueCell!2556 0))(
  ( (ValueCellFull!2556 (v!4960 V!7379)) (EmptyCell!2556) )
))
(declare-datatypes ((array!10840 0))(
  ( (array!10841 (arr!5139 (Array (_ BitVec 32) ValueCell!2556)) (size!5472 (_ BitVec 32))) )
))
(declare-datatypes ((array!10842 0))(
  ( (array!10843 (arr!5140 (Array (_ BitVec 32) (_ BitVec 64))) (size!5473 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3012 0))(
  ( (LongMapFixedSize!3013 (defaultEntry!4165 Int) (mask!9971 (_ BitVec 32)) (extraKeys!3902 (_ BitVec 32)) (zeroValue!4006 V!7379) (minValue!4006 V!7379) (_size!1555 (_ BitVec 32)) (_keys!6219 array!10842) (_values!4148 array!10840) (_vacant!1555 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3012)

(declare-datatypes ((SeekEntryResult!828 0))(
  ( (MissingZero!828 (index!5482 (_ BitVec 32))) (Found!828 (index!5483 (_ BitVec 32))) (Intermediate!828 (undefined!1640 Bool) (index!5484 (_ BitVec 32)) (x!22992 (_ BitVec 32))) (Undefined!828) (MissingVacant!828 (index!5485 (_ BitVec 32))) )
))
(declare-fun lt!112312 () SeekEntryResult!828)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20640 (= call!20644 (inRange!0 (ite c!36731 (index!5482 lt!112312) (index!5485 lt!112312)) (mask!9971 thiss!1504)))))

(declare-fun b!220874 () Bool)

(declare-fun e!143601 () Bool)

(declare-fun tp_is_empty!5799 () Bool)

(assert (=> b!220874 (= e!143601 tp_is_empty!5799)))

(declare-fun b!220875 () Bool)

(declare-fun e!143598 () Bool)

(declare-fun e!143595 () Bool)

(assert (=> b!220875 (= e!143598 e!143595)))

(declare-fun res!108352 () Bool)

(assert (=> b!220875 (=> (not res!108352) (not e!143595))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!220875 (= res!108352 (or (= lt!112312 (MissingZero!828 index!297)) (= lt!112312 (MissingVacant!828 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10842 (_ BitVec 32)) SeekEntryResult!828)

(assert (=> b!220875 (= lt!112312 (seekEntryOrOpen!0 key!932 (_keys!6219 thiss!1504) (mask!9971 thiss!1504)))))

(declare-fun b!220876 () Bool)

(declare-fun e!143599 () Bool)

(declare-fun call!20643 () Bool)

(assert (=> b!220876 (= e!143599 (not call!20643))))

(declare-fun b!220877 () Bool)

(declare-fun res!108353 () Bool)

(assert (=> b!220877 (= res!108353 (= (select (arr!5140 (_keys!6219 thiss!1504)) (index!5485 lt!112312)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!220877 (=> (not res!108353) (not e!143599))))

(declare-fun b!220878 () Bool)

(declare-fun e!143592 () Bool)

(assert (=> b!220878 (= e!143592 (not call!20643))))

(declare-fun b!220879 () Bool)

(declare-datatypes ((Unit!6591 0))(
  ( (Unit!6592) )
))
(declare-fun e!143597 () Unit!6591)

(declare-fun lt!112314 () Unit!6591)

(assert (=> b!220879 (= e!143597 lt!112314)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!218 (array!10842 array!10840 (_ BitVec 32) (_ BitVec 32) V!7379 V!7379 (_ BitVec 64) Int) Unit!6591)

(assert (=> b!220879 (= lt!112314 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!218 (_keys!6219 thiss!1504) (_values!4148 thiss!1504) (mask!9971 thiss!1504) (extraKeys!3902 thiss!1504) (zeroValue!4006 thiss!1504) (minValue!4006 thiss!1504) key!932 (defaultEntry!4165 thiss!1504)))))

(get-info :version)

(assert (=> b!220879 (= c!36731 ((_ is MissingZero!828) lt!112312))))

(declare-fun e!143591 () Bool)

(assert (=> b!220879 e!143591))

(declare-fun mapIsEmpty!9868 () Bool)

(declare-fun mapRes!9868 () Bool)

(assert (=> mapIsEmpty!9868 mapRes!9868))

(declare-fun b!220880 () Bool)

(declare-fun e!143602 () Bool)

(assert (=> b!220880 (= e!143602 false)))

(declare-fun lt!112311 () Bool)

(declare-datatypes ((List!3291 0))(
  ( (Nil!3288) (Cons!3287 (h!3935 (_ BitVec 64)) (t!8258 List!3291)) )
))
(declare-fun arrayNoDuplicates!0 (array!10842 (_ BitVec 32) List!3291) Bool)

(assert (=> b!220880 (= lt!112311 (arrayNoDuplicates!0 (_keys!6219 thiss!1504) #b00000000000000000000000000000000 Nil!3288))))

(declare-fun b!220881 () Bool)

(declare-fun res!108347 () Bool)

(assert (=> b!220881 (=> (not res!108347) (not e!143602))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10842 (_ BitVec 32)) Bool)

(assert (=> b!220881 (= res!108347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6219 thiss!1504) (mask!9971 thiss!1504)))))

(declare-fun b!220882 () Bool)

(declare-fun res!108346 () Bool)

(assert (=> b!220882 (=> (not res!108346) (not e!143602))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!220882 (= res!108346 (validMask!0 (mask!9971 thiss!1504)))))

(declare-fun b!220883 () Bool)

(declare-fun res!108349 () Bool)

(assert (=> b!220883 (=> (not res!108349) (not e!143598))))

(assert (=> b!220883 (= res!108349 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!220884 () Bool)

(assert (=> b!220884 (= e!143595 e!143602)))

(declare-fun res!108351 () Bool)

(assert (=> b!220884 (=> (not res!108351) (not e!143602))))

(assert (=> b!220884 (= res!108351 (inRange!0 index!297 (mask!9971 thiss!1504)))))

(declare-fun lt!112310 () Unit!6591)

(assert (=> b!220884 (= lt!112310 e!143597)))

(declare-fun c!36730 () Bool)

(declare-datatypes ((tuple2!4364 0))(
  ( (tuple2!4365 (_1!2192 (_ BitVec 64)) (_2!2192 V!7379)) )
))
(declare-datatypes ((List!3292 0))(
  ( (Nil!3289) (Cons!3288 (h!3936 tuple2!4364) (t!8259 List!3292)) )
))
(declare-datatypes ((ListLongMap!3291 0))(
  ( (ListLongMap!3292 (toList!1661 List!3292)) )
))
(declare-fun contains!1498 (ListLongMap!3291 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1184 (array!10842 array!10840 (_ BitVec 32) (_ BitVec 32) V!7379 V!7379 (_ BitVec 32) Int) ListLongMap!3291)

(assert (=> b!220884 (= c!36730 (contains!1498 (getCurrentListMap!1184 (_keys!6219 thiss!1504) (_values!4148 thiss!1504) (mask!9971 thiss!1504) (extraKeys!3902 thiss!1504) (zeroValue!4006 thiss!1504) (minValue!4006 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4165 thiss!1504)) key!932))))

(declare-fun b!220885 () Bool)

(declare-fun e!143596 () Bool)

(declare-fun e!143593 () Bool)

(assert (=> b!220885 (= e!143596 (and e!143593 mapRes!9868))))

(declare-fun condMapEmpty!9868 () Bool)

(declare-fun mapDefault!9868 () ValueCell!2556)

(assert (=> b!220885 (= condMapEmpty!9868 (= (arr!5139 (_values!4148 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2556)) mapDefault!9868)))))

(declare-fun b!220886 () Bool)

(declare-fun res!108348 () Bool)

(assert (=> b!220886 (=> (not res!108348) (not e!143602))))

(declare-fun arrayContainsKey!0 (array!10842 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!220886 (= res!108348 (arrayContainsKey!0 (_keys!6219 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!220887 () Bool)

(declare-fun res!108355 () Bool)

(assert (=> b!220887 (=> (not res!108355) (not e!143602))))

(assert (=> b!220887 (= res!108355 (and (= (size!5472 (_values!4148 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9971 thiss!1504))) (= (size!5473 (_keys!6219 thiss!1504)) (size!5472 (_values!4148 thiss!1504))) (bvsge (mask!9971 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3902 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3902 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!108344 () Bool)

(assert (=> start!21882 (=> (not res!108344) (not e!143598))))

(declare-fun valid!1207 (LongMapFixedSize!3012) Bool)

(assert (=> start!21882 (= res!108344 (valid!1207 thiss!1504))))

(assert (=> start!21882 e!143598))

(declare-fun e!143594 () Bool)

(assert (=> start!21882 e!143594))

(assert (=> start!21882 true))

(declare-fun b!220888 () Bool)

(declare-fun e!143590 () Bool)

(assert (=> b!220888 (= e!143590 ((_ is Undefined!828) lt!112312))))

(declare-fun b!220889 () Bool)

(declare-fun res!108354 () Bool)

(assert (=> b!220889 (=> (not res!108354) (not e!143592))))

(assert (=> b!220889 (= res!108354 call!20644)))

(assert (=> b!220889 (= e!143591 e!143592)))

(declare-fun b!220890 () Bool)

(assert (=> b!220890 (= e!143593 tp_is_empty!5799)))

(declare-fun b!220891 () Bool)

(declare-fun c!36729 () Bool)

(assert (=> b!220891 (= c!36729 ((_ is MissingVacant!828) lt!112312))))

(assert (=> b!220891 (= e!143591 e!143590)))

(declare-fun b!220892 () Bool)

(assert (=> b!220892 (= e!143590 e!143599)))

(declare-fun res!108350 () Bool)

(assert (=> b!220892 (= res!108350 call!20644)))

(assert (=> b!220892 (=> (not res!108350) (not e!143599))))

(declare-fun b!220893 () Bool)

(declare-fun res!108345 () Bool)

(assert (=> b!220893 (=> (not res!108345) (not e!143592))))

(assert (=> b!220893 (= res!108345 (= (select (arr!5140 (_keys!6219 thiss!1504)) (index!5482 lt!112312)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!9868 () Bool)

(declare-fun tp!20952 () Bool)

(assert (=> mapNonEmpty!9868 (= mapRes!9868 (and tp!20952 e!143601))))

(declare-fun mapRest!9868 () (Array (_ BitVec 32) ValueCell!2556))

(declare-fun mapKey!9868 () (_ BitVec 32))

(declare-fun mapValue!9868 () ValueCell!2556)

(assert (=> mapNonEmpty!9868 (= (arr!5139 (_values!4148 thiss!1504)) (store mapRest!9868 mapKey!9868 mapValue!9868))))

(declare-fun b!220894 () Bool)

(declare-fun Unit!6593 () Unit!6591)

(assert (=> b!220894 (= e!143597 Unit!6593)))

(declare-fun lt!112313 () Unit!6591)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!210 (array!10842 array!10840 (_ BitVec 32) (_ BitVec 32) V!7379 V!7379 (_ BitVec 64) Int) Unit!6591)

(assert (=> b!220894 (= lt!112313 (lemmaInListMapThenSeekEntryOrOpenFindsIt!210 (_keys!6219 thiss!1504) (_values!4148 thiss!1504) (mask!9971 thiss!1504) (extraKeys!3902 thiss!1504) (zeroValue!4006 thiss!1504) (minValue!4006 thiss!1504) key!932 (defaultEntry!4165 thiss!1504)))))

(assert (=> b!220894 false))

(declare-fun bm!20641 () Bool)

(assert (=> bm!20641 (= call!20643 (arrayContainsKey!0 (_keys!6219 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun array_inv!3391 (array!10842) Bool)

(declare-fun array_inv!3392 (array!10840) Bool)

(assert (=> b!220895 (= e!143594 (and tp!20953 tp_is_empty!5799 (array_inv!3391 (_keys!6219 thiss!1504)) (array_inv!3392 (_values!4148 thiss!1504)) e!143596))))

(assert (= (and start!21882 res!108344) b!220883))

(assert (= (and b!220883 res!108349) b!220875))

(assert (= (and b!220875 res!108352) b!220884))

(assert (= (and b!220884 c!36730) b!220894))

(assert (= (and b!220884 (not c!36730)) b!220879))

(assert (= (and b!220879 c!36731) b!220889))

(assert (= (and b!220879 (not c!36731)) b!220891))

(assert (= (and b!220889 res!108354) b!220893))

(assert (= (and b!220893 res!108345) b!220878))

(assert (= (and b!220891 c!36729) b!220892))

(assert (= (and b!220891 (not c!36729)) b!220888))

(assert (= (and b!220892 res!108350) b!220877))

(assert (= (and b!220877 res!108353) b!220876))

(assert (= (or b!220889 b!220892) bm!20640))

(assert (= (or b!220878 b!220876) bm!20641))

(assert (= (and b!220884 res!108351) b!220886))

(assert (= (and b!220886 res!108348) b!220882))

(assert (= (and b!220882 res!108346) b!220887))

(assert (= (and b!220887 res!108355) b!220881))

(assert (= (and b!220881 res!108347) b!220880))

(assert (= (and b!220885 condMapEmpty!9868) mapIsEmpty!9868))

(assert (= (and b!220885 (not condMapEmpty!9868)) mapNonEmpty!9868))

(assert (= (and mapNonEmpty!9868 ((_ is ValueCellFull!2556) mapValue!9868)) b!220874))

(assert (= (and b!220885 ((_ is ValueCellFull!2556) mapDefault!9868)) b!220890))

(assert (= b!220895 b!220885))

(assert (= start!21882 b!220895))

(declare-fun m!245789 () Bool)

(assert (=> b!220895 m!245789))

(declare-fun m!245791 () Bool)

(assert (=> b!220895 m!245791))

(declare-fun m!245793 () Bool)

(assert (=> b!220894 m!245793))

(declare-fun m!245795 () Bool)

(assert (=> b!220881 m!245795))

(declare-fun m!245797 () Bool)

(assert (=> b!220880 m!245797))

(declare-fun m!245799 () Bool)

(assert (=> mapNonEmpty!9868 m!245799))

(declare-fun m!245801 () Bool)

(assert (=> bm!20641 m!245801))

(declare-fun m!245803 () Bool)

(assert (=> bm!20640 m!245803))

(declare-fun m!245805 () Bool)

(assert (=> b!220877 m!245805))

(declare-fun m!245807 () Bool)

(assert (=> b!220884 m!245807))

(declare-fun m!245809 () Bool)

(assert (=> b!220884 m!245809))

(assert (=> b!220884 m!245809))

(declare-fun m!245811 () Bool)

(assert (=> b!220884 m!245811))

(assert (=> b!220886 m!245801))

(declare-fun m!245813 () Bool)

(assert (=> b!220875 m!245813))

(declare-fun m!245815 () Bool)

(assert (=> b!220893 m!245815))

(declare-fun m!245817 () Bool)

(assert (=> start!21882 m!245817))

(declare-fun m!245819 () Bool)

(assert (=> b!220879 m!245819))

(declare-fun m!245821 () Bool)

(assert (=> b!220882 m!245821))

(check-sat tp_is_empty!5799 (not b!220886) (not b!220882) (not bm!20640) (not b!220894) (not b!220880) (not b!220875) (not start!21882) (not b!220879) (not b!220884) (not b!220895) (not mapNonEmpty!9868) b_and!12853 (not b_next!5937) (not b!220881) (not bm!20641))
(check-sat b_and!12853 (not b_next!5937))
