; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21888 () Bool)

(assert start!21888)

(declare-fun b!221087 () Bool)

(declare-fun b_free!5943 () Bool)

(declare-fun b_next!5943 () Bool)

(assert (=> b!221087 (= b_free!5943 (not b_next!5943))))

(declare-fun tp!20970 () Bool)

(declare-fun b_and!12859 () Bool)

(assert (=> b!221087 (= tp!20970 b_and!12859)))

(declare-fun b!221072 () Bool)

(declare-fun res!108463 () Bool)

(declare-fun e!143717 () Bool)

(assert (=> b!221072 (=> (not res!108463) (not e!143717))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!221072 (= res!108463 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!20658 () Bool)

(declare-fun call!20662 () Bool)

(declare-datatypes ((V!7387 0))(
  ( (V!7388 (val!2947 Int)) )
))
(declare-datatypes ((ValueCell!2559 0))(
  ( (ValueCellFull!2559 (v!4963 V!7387)) (EmptyCell!2559) )
))
(declare-datatypes ((array!10852 0))(
  ( (array!10853 (arr!5145 (Array (_ BitVec 32) ValueCell!2559)) (size!5478 (_ BitVec 32))) )
))
(declare-datatypes ((array!10854 0))(
  ( (array!10855 (arr!5146 (Array (_ BitVec 32) (_ BitVec 64))) (size!5479 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3018 0))(
  ( (LongMapFixedSize!3019 (defaultEntry!4168 Int) (mask!9976 (_ BitVec 32)) (extraKeys!3905 (_ BitVec 32)) (zeroValue!4009 V!7387) (minValue!4009 V!7387) (_size!1558 (_ BitVec 32)) (_keys!6222 array!10854) (_values!4151 array!10852) (_vacant!1558 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3018)

(declare-fun arrayContainsKey!0 (array!10854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20658 (= call!20662 (arrayContainsKey!0 (_keys!6222 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221073 () Bool)

(declare-fun e!143715 () Bool)

(declare-datatypes ((SeekEntryResult!830 0))(
  ( (MissingZero!830 (index!5490 (_ BitVec 32))) (Found!830 (index!5491 (_ BitVec 32))) (Intermediate!830 (undefined!1642 Bool) (index!5492 (_ BitVec 32)) (x!23002 (_ BitVec 32))) (Undefined!830) (MissingVacant!830 (index!5493 (_ BitVec 32))) )
))
(declare-fun lt!112358 () SeekEntryResult!830)

(get-info :version)

(assert (=> b!221073 (= e!143715 ((_ is Undefined!830) lt!112358))))

(declare-fun b!221074 () Bool)

(declare-fun res!108461 () Bool)

(declare-fun e!143719 () Bool)

(assert (=> b!221074 (=> (not res!108461) (not e!143719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10854 (_ BitVec 32)) Bool)

(assert (=> b!221074 (= res!108461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6222 thiss!1504) (mask!9976 thiss!1504)))))

(declare-fun b!221075 () Bool)

(declare-fun res!108460 () Bool)

(assert (=> b!221075 (=> (not res!108460) (not e!143719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!221075 (= res!108460 (validMask!0 (mask!9976 thiss!1504)))))

(declare-fun b!221076 () Bool)

(declare-fun e!143718 () Bool)

(declare-fun tp_is_empty!5805 () Bool)

(assert (=> b!221076 (= e!143718 tp_is_empty!5805)))

(declare-fun b!221077 () Bool)

(declare-fun res!108458 () Bool)

(declare-fun e!143709 () Bool)

(assert (=> b!221077 (=> (not res!108458) (not e!143709))))

(declare-fun call!20661 () Bool)

(assert (=> b!221077 (= res!108458 call!20661)))

(declare-fun e!143713 () Bool)

(assert (=> b!221077 (= e!143713 e!143709)))

(declare-fun b!221078 () Bool)

(declare-fun res!108459 () Bool)

(assert (=> b!221078 (=> (not res!108459) (not e!143709))))

(assert (=> b!221078 (= res!108459 (= (select (arr!5146 (_keys!6222 thiss!1504)) (index!5490 lt!112358)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!9877 () Bool)

(declare-fun mapRes!9877 () Bool)

(declare-fun tp!20971 () Bool)

(assert (=> mapNonEmpty!9877 (= mapRes!9877 (and tp!20971 e!143718))))

(declare-fun mapValue!9877 () ValueCell!2559)

(declare-fun mapKey!9877 () (_ BitVec 32))

(declare-fun mapRest!9877 () (Array (_ BitVec 32) ValueCell!2559))

(assert (=> mapNonEmpty!9877 (= (arr!5145 (_values!4151 thiss!1504)) (store mapRest!9877 mapKey!9877 mapValue!9877))))

(declare-fun res!108455 () Bool)

(assert (=> start!21888 (=> (not res!108455) (not e!143717))))

(declare-fun valid!1210 (LongMapFixedSize!3018) Bool)

(assert (=> start!21888 (= res!108455 (valid!1210 thiss!1504))))

(assert (=> start!21888 e!143717))

(declare-fun e!143714 () Bool)

(assert (=> start!21888 e!143714))

(assert (=> start!21888 true))

(declare-fun b!221079 () Bool)

(declare-fun e!143708 () Bool)

(assert (=> b!221079 (= e!143708 (not call!20662))))

(declare-fun b!221080 () Bool)

(declare-fun e!143707 () Bool)

(assert (=> b!221080 (= e!143707 tp_is_empty!5805)))

(declare-fun b!221081 () Bool)

(declare-fun c!36757 () Bool)

(assert (=> b!221081 (= c!36757 ((_ is MissingVacant!830) lt!112358))))

(assert (=> b!221081 (= e!143713 e!143715)))

(declare-fun b!221082 () Bool)

(declare-fun e!143712 () Bool)

(assert (=> b!221082 (= e!143712 (and e!143707 mapRes!9877))))

(declare-fun condMapEmpty!9877 () Bool)

(declare-fun mapDefault!9877 () ValueCell!2559)

(assert (=> b!221082 (= condMapEmpty!9877 (= (arr!5145 (_values!4151 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2559)) mapDefault!9877)))))

(declare-fun b!221083 () Bool)

(assert (=> b!221083 (= e!143715 e!143708)))

(declare-fun res!108452 () Bool)

(assert (=> b!221083 (= res!108452 call!20661)))

(assert (=> b!221083 (=> (not res!108452) (not e!143708))))

(declare-fun b!221084 () Bool)

(declare-datatypes ((Unit!6599 0))(
  ( (Unit!6600) )
))
(declare-fun e!143710 () Unit!6599)

(declare-fun Unit!6601 () Unit!6599)

(assert (=> b!221084 (= e!143710 Unit!6601)))

(declare-fun lt!112355 () Unit!6599)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!212 (array!10854 array!10852 (_ BitVec 32) (_ BitVec 32) V!7387 V!7387 (_ BitVec 64) Int) Unit!6599)

(assert (=> b!221084 (= lt!112355 (lemmaInListMapThenSeekEntryOrOpenFindsIt!212 (_keys!6222 thiss!1504) (_values!4151 thiss!1504) (mask!9976 thiss!1504) (extraKeys!3905 thiss!1504) (zeroValue!4009 thiss!1504) (minValue!4009 thiss!1504) key!932 (defaultEntry!4168 thiss!1504)))))

(assert (=> b!221084 false))

(declare-fun b!221085 () Bool)

(assert (=> b!221085 (= e!143709 (not call!20662))))

(declare-fun b!221086 () Bool)

(declare-fun res!108457 () Bool)

(assert (=> b!221086 (=> (not res!108457) (not e!143719))))

(assert (=> b!221086 (= res!108457 (arrayContainsKey!0 (_keys!6222 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun array_inv!3395 (array!10854) Bool)

(declare-fun array_inv!3396 (array!10852) Bool)

(assert (=> b!221087 (= e!143714 (and tp!20970 tp_is_empty!5805 (array_inv!3395 (_keys!6222 thiss!1504)) (array_inv!3396 (_values!4151 thiss!1504)) e!143712))))

(declare-fun bm!20659 () Bool)

(declare-fun c!36758 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20659 (= call!20661 (inRange!0 (ite c!36758 (index!5490 lt!112358) (index!5493 lt!112358)) (mask!9976 thiss!1504)))))

(declare-fun b!221088 () Bool)

(declare-fun res!108456 () Bool)

(assert (=> b!221088 (=> (not res!108456) (not e!143719))))

(assert (=> b!221088 (= res!108456 (and (= (size!5478 (_values!4151 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9976 thiss!1504))) (= (size!5479 (_keys!6222 thiss!1504)) (size!5478 (_values!4151 thiss!1504))) (bvsge (mask!9976 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3905 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3905 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!221089 () Bool)

(declare-fun e!143716 () Bool)

(assert (=> b!221089 (= e!143717 e!143716)))

(declare-fun res!108453 () Bool)

(assert (=> b!221089 (=> (not res!108453) (not e!143716))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!221089 (= res!108453 (or (= lt!112358 (MissingZero!830 index!297)) (= lt!112358 (MissingVacant!830 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10854 (_ BitVec 32)) SeekEntryResult!830)

(assert (=> b!221089 (= lt!112358 (seekEntryOrOpen!0 key!932 (_keys!6222 thiss!1504) (mask!9976 thiss!1504)))))

(declare-fun b!221090 () Bool)

(declare-fun res!108454 () Bool)

(assert (=> b!221090 (= res!108454 (= (select (arr!5146 (_keys!6222 thiss!1504)) (index!5493 lt!112358)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!221090 (=> (not res!108454) (not e!143708))))

(declare-fun mapIsEmpty!9877 () Bool)

(assert (=> mapIsEmpty!9877 mapRes!9877))

(declare-fun b!221091 () Bool)

(assert (=> b!221091 (= e!143719 false)))

(declare-fun lt!112357 () Bool)

(declare-datatypes ((List!3295 0))(
  ( (Nil!3292) (Cons!3291 (h!3939 (_ BitVec 64)) (t!8262 List!3295)) )
))
(declare-fun arrayNoDuplicates!0 (array!10854 (_ BitVec 32) List!3295) Bool)

(assert (=> b!221091 (= lt!112357 (arrayNoDuplicates!0 (_keys!6222 thiss!1504) #b00000000000000000000000000000000 Nil!3292))))

(declare-fun b!221092 () Bool)

(assert (=> b!221092 (= e!143716 e!143719)))

(declare-fun res!108462 () Bool)

(assert (=> b!221092 (=> (not res!108462) (not e!143719))))

(assert (=> b!221092 (= res!108462 (inRange!0 index!297 (mask!9976 thiss!1504)))))

(declare-fun lt!112356 () Unit!6599)

(assert (=> b!221092 (= lt!112356 e!143710)))

(declare-fun c!36756 () Bool)

(declare-datatypes ((tuple2!4368 0))(
  ( (tuple2!4369 (_1!2194 (_ BitVec 64)) (_2!2194 V!7387)) )
))
(declare-datatypes ((List!3296 0))(
  ( (Nil!3293) (Cons!3292 (h!3940 tuple2!4368) (t!8263 List!3296)) )
))
(declare-datatypes ((ListLongMap!3295 0))(
  ( (ListLongMap!3296 (toList!1663 List!3296)) )
))
(declare-fun contains!1500 (ListLongMap!3295 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1186 (array!10854 array!10852 (_ BitVec 32) (_ BitVec 32) V!7387 V!7387 (_ BitVec 32) Int) ListLongMap!3295)

(assert (=> b!221092 (= c!36756 (contains!1500 (getCurrentListMap!1186 (_keys!6222 thiss!1504) (_values!4151 thiss!1504) (mask!9976 thiss!1504) (extraKeys!3905 thiss!1504) (zeroValue!4009 thiss!1504) (minValue!4009 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4168 thiss!1504)) key!932))))

(declare-fun b!221093 () Bool)

(declare-fun lt!112359 () Unit!6599)

(assert (=> b!221093 (= e!143710 lt!112359)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!220 (array!10854 array!10852 (_ BitVec 32) (_ BitVec 32) V!7387 V!7387 (_ BitVec 64) Int) Unit!6599)

(assert (=> b!221093 (= lt!112359 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!220 (_keys!6222 thiss!1504) (_values!4151 thiss!1504) (mask!9976 thiss!1504) (extraKeys!3905 thiss!1504) (zeroValue!4009 thiss!1504) (minValue!4009 thiss!1504) key!932 (defaultEntry!4168 thiss!1504)))))

(assert (=> b!221093 (= c!36758 ((_ is MissingZero!830) lt!112358))))

(assert (=> b!221093 e!143713))

(assert (= (and start!21888 res!108455) b!221072))

(assert (= (and b!221072 res!108463) b!221089))

(assert (= (and b!221089 res!108453) b!221092))

(assert (= (and b!221092 c!36756) b!221084))

(assert (= (and b!221092 (not c!36756)) b!221093))

(assert (= (and b!221093 c!36758) b!221077))

(assert (= (and b!221093 (not c!36758)) b!221081))

(assert (= (and b!221077 res!108458) b!221078))

(assert (= (and b!221078 res!108459) b!221085))

(assert (= (and b!221081 c!36757) b!221083))

(assert (= (and b!221081 (not c!36757)) b!221073))

(assert (= (and b!221083 res!108452) b!221090))

(assert (= (and b!221090 res!108454) b!221079))

(assert (= (or b!221077 b!221083) bm!20659))

(assert (= (or b!221085 b!221079) bm!20658))

(assert (= (and b!221092 res!108462) b!221086))

(assert (= (and b!221086 res!108457) b!221075))

(assert (= (and b!221075 res!108460) b!221088))

(assert (= (and b!221088 res!108456) b!221074))

(assert (= (and b!221074 res!108461) b!221091))

(assert (= (and b!221082 condMapEmpty!9877) mapIsEmpty!9877))

(assert (= (and b!221082 (not condMapEmpty!9877)) mapNonEmpty!9877))

(assert (= (and mapNonEmpty!9877 ((_ is ValueCellFull!2559) mapValue!9877)) b!221076))

(assert (= (and b!221082 ((_ is ValueCellFull!2559) mapDefault!9877)) b!221080))

(assert (= b!221087 b!221082))

(assert (= start!21888 b!221087))

(declare-fun m!245891 () Bool)

(assert (=> b!221075 m!245891))

(declare-fun m!245893 () Bool)

(assert (=> b!221087 m!245893))

(declare-fun m!245895 () Bool)

(assert (=> b!221087 m!245895))

(declare-fun m!245897 () Bool)

(assert (=> mapNonEmpty!9877 m!245897))

(declare-fun m!245899 () Bool)

(assert (=> bm!20659 m!245899))

(declare-fun m!245901 () Bool)

(assert (=> b!221086 m!245901))

(declare-fun m!245903 () Bool)

(assert (=> start!21888 m!245903))

(declare-fun m!245905 () Bool)

(assert (=> b!221090 m!245905))

(declare-fun m!245907 () Bool)

(assert (=> b!221093 m!245907))

(declare-fun m!245909 () Bool)

(assert (=> b!221084 m!245909))

(declare-fun m!245911 () Bool)

(assert (=> b!221078 m!245911))

(declare-fun m!245913 () Bool)

(assert (=> b!221089 m!245913))

(declare-fun m!245915 () Bool)

(assert (=> b!221092 m!245915))

(declare-fun m!245917 () Bool)

(assert (=> b!221092 m!245917))

(assert (=> b!221092 m!245917))

(declare-fun m!245919 () Bool)

(assert (=> b!221092 m!245919))

(assert (=> bm!20658 m!245901))

(declare-fun m!245921 () Bool)

(assert (=> b!221074 m!245921))

(declare-fun m!245923 () Bool)

(assert (=> b!221091 m!245923))

(check-sat (not b!221089) (not b!221092) (not b!221087) (not mapNonEmpty!9877) (not b!221075) (not b!221093) tp_is_empty!5805 (not b!221084) (not b!221074) (not start!21888) b_and!12859 (not b!221086) (not b!221091) (not b_next!5943) (not bm!20659) (not bm!20658))
(check-sat b_and!12859 (not b_next!5943))
