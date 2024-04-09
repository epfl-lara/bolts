; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21858 () Bool)

(assert start!21858)

(declare-fun b!220099 () Bool)

(declare-fun b_free!5913 () Bool)

(declare-fun b_next!5913 () Bool)

(assert (=> b!220099 (= b_free!5913 (not b_next!5913))))

(declare-fun tp!20880 () Bool)

(declare-fun b_and!12829 () Bool)

(assert (=> b!220099 (= tp!20880 b_and!12829)))

(declare-fun b!220082 () Bool)

(declare-fun c!36622 () Bool)

(declare-datatypes ((SeekEntryResult!817 0))(
  ( (MissingZero!817 (index!5438 (_ BitVec 32))) (Found!817 (index!5439 (_ BitVec 32))) (Intermediate!817 (undefined!1629 Bool) (index!5440 (_ BitVec 32)) (x!22949 (_ BitVec 32))) (Undefined!817) (MissingVacant!817 (index!5441 (_ BitVec 32))) )
))
(declare-fun lt!112131 () SeekEntryResult!817)

(get-info :version)

(assert (=> b!220082 (= c!36622 ((_ is MissingVacant!817) lt!112131))))

(declare-fun e!143132 () Bool)

(declare-fun e!143128 () Bool)

(assert (=> b!220082 (= e!143132 e!143128)))

(declare-fun mapNonEmpty!9832 () Bool)

(declare-fun mapRes!9832 () Bool)

(declare-fun tp!20881 () Bool)

(declare-fun e!143122 () Bool)

(assert (=> mapNonEmpty!9832 (= mapRes!9832 (and tp!20881 e!143122))))

(declare-datatypes ((V!7347 0))(
  ( (V!7348 (val!2932 Int)) )
))
(declare-datatypes ((ValueCell!2544 0))(
  ( (ValueCellFull!2544 (v!4948 V!7347)) (EmptyCell!2544) )
))
(declare-fun mapValue!9832 () ValueCell!2544)

(declare-datatypes ((array!10792 0))(
  ( (array!10793 (arr!5115 (Array (_ BitVec 32) ValueCell!2544)) (size!5448 (_ BitVec 32))) )
))
(declare-datatypes ((array!10794 0))(
  ( (array!10795 (arr!5116 (Array (_ BitVec 32) (_ BitVec 64))) (size!5449 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2988 0))(
  ( (LongMapFixedSize!2989 (defaultEntry!4153 Int) (mask!9951 (_ BitVec 32)) (extraKeys!3890 (_ BitVec 32)) (zeroValue!3994 V!7347) (minValue!3994 V!7347) (_size!1543 (_ BitVec 32)) (_keys!6207 array!10794) (_values!4136 array!10792) (_vacant!1543 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2988)

(declare-fun mapRest!9832 () (Array (_ BitVec 32) ValueCell!2544))

(declare-fun mapKey!9832 () (_ BitVec 32))

(assert (=> mapNonEmpty!9832 (= (arr!5115 (_values!4136 thiss!1504)) (store mapRest!9832 mapKey!9832 mapValue!9832))))

(declare-fun b!220083 () Bool)

(declare-fun res!107916 () Bool)

(declare-fun e!143127 () Bool)

(assert (=> b!220083 (=> (not res!107916) (not e!143127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!220083 (= res!107916 (validMask!0 (mask!9951 thiss!1504)))))

(declare-fun b!220084 () Bool)

(declare-fun res!107919 () Bool)

(assert (=> b!220084 (= res!107919 (= (select (arr!5116 (_keys!6207 thiss!1504)) (index!5441 lt!112131)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!143124 () Bool)

(assert (=> b!220084 (=> (not res!107919) (not e!143124))))

(declare-fun b!220085 () Bool)

(declare-fun e!143133 () Bool)

(declare-fun tp_is_empty!5775 () Bool)

(assert (=> b!220085 (= e!143133 tp_is_empty!5775)))

(declare-fun b!220086 () Bool)

(declare-fun e!143129 () Bool)

(declare-fun call!20572 () Bool)

(assert (=> b!220086 (= e!143129 (not call!20572))))

(declare-fun mapIsEmpty!9832 () Bool)

(assert (=> mapIsEmpty!9832 mapRes!9832))

(declare-fun b!220087 () Bool)

(declare-fun res!107921 () Bool)

(assert (=> b!220087 (=> (not res!107921) (not e!143129))))

(assert (=> b!220087 (= res!107921 (= (select (arr!5116 (_keys!6207 thiss!1504)) (index!5438 lt!112131)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!220088 () Bool)

(assert (=> b!220088 (= e!143122 tp_is_empty!5775)))

(declare-fun b!220089 () Bool)

(declare-fun res!107918 () Bool)

(assert (=> b!220089 (=> (not res!107918) (not e!143129))))

(declare-fun call!20571 () Bool)

(assert (=> b!220089 (= res!107918 call!20571)))

(assert (=> b!220089 (= e!143132 e!143129)))

(declare-fun c!36621 () Bool)

(declare-fun bm!20568 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20568 (= call!20571 (inRange!0 (ite c!36621 (index!5438 lt!112131) (index!5441 lt!112131)) (mask!9951 thiss!1504)))))

(declare-fun b!220090 () Bool)

(declare-fun e!143126 () Bool)

(declare-fun e!143134 () Bool)

(assert (=> b!220090 (= e!143126 e!143134)))

(declare-fun res!107912 () Bool)

(assert (=> b!220090 (=> (not res!107912) (not e!143134))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!220090 (= res!107912 (or (= lt!112131 (MissingZero!817 index!297)) (= lt!112131 (MissingVacant!817 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10794 (_ BitVec 32)) SeekEntryResult!817)

(assert (=> b!220090 (= lt!112131 (seekEntryOrOpen!0 key!932 (_keys!6207 thiss!1504) (mask!9951 thiss!1504)))))

(declare-fun b!220091 () Bool)

(declare-fun res!107922 () Bool)

(assert (=> b!220091 (=> (not res!107922) (not e!143127))))

(declare-fun arrayContainsKey!0 (array!10794 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!220091 (= res!107922 (arrayContainsKey!0 (_keys!6207 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun res!107915 () Bool)

(assert (=> start!21858 (=> (not res!107915) (not e!143126))))

(declare-fun valid!1199 (LongMapFixedSize!2988) Bool)

(assert (=> start!21858 (= res!107915 (valid!1199 thiss!1504))))

(assert (=> start!21858 e!143126))

(declare-fun e!143123 () Bool)

(assert (=> start!21858 e!143123))

(assert (=> start!21858 true))

(declare-fun b!220092 () Bool)

(assert (=> b!220092 (= e!143128 e!143124)))

(declare-fun res!107913 () Bool)

(assert (=> b!220092 (= res!107913 call!20571)))

(assert (=> b!220092 (=> (not res!107913) (not e!143124))))

(declare-fun b!220093 () Bool)

(declare-fun res!107920 () Bool)

(assert (=> b!220093 (=> (not res!107920) (not e!143126))))

(assert (=> b!220093 (= res!107920 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!220094 () Bool)

(assert (=> b!220094 (= e!143127 false)))

(declare-fun lt!112132 () Bool)

(declare-datatypes ((List!3277 0))(
  ( (Nil!3274) (Cons!3273 (h!3921 (_ BitVec 64)) (t!8244 List!3277)) )
))
(declare-fun arrayNoDuplicates!0 (array!10794 (_ BitVec 32) List!3277) Bool)

(assert (=> b!220094 (= lt!112132 (arrayNoDuplicates!0 (_keys!6207 thiss!1504) #b00000000000000000000000000000000 Nil!3274))))

(declare-fun b!220095 () Bool)

(assert (=> b!220095 (= e!143124 (not call!20572))))

(declare-fun b!220096 () Bool)

(assert (=> b!220096 (= e!143134 e!143127)))

(declare-fun res!107923 () Bool)

(assert (=> b!220096 (=> (not res!107923) (not e!143127))))

(assert (=> b!220096 (= res!107923 (inRange!0 index!297 (mask!9951 thiss!1504)))))

(declare-datatypes ((Unit!6563 0))(
  ( (Unit!6564) )
))
(declare-fun lt!112133 () Unit!6563)

(declare-fun e!143130 () Unit!6563)

(assert (=> b!220096 (= lt!112133 e!143130)))

(declare-fun c!36623 () Bool)

(declare-datatypes ((tuple2!4350 0))(
  ( (tuple2!4351 (_1!2185 (_ BitVec 64)) (_2!2185 V!7347)) )
))
(declare-datatypes ((List!3278 0))(
  ( (Nil!3275) (Cons!3274 (h!3922 tuple2!4350) (t!8245 List!3278)) )
))
(declare-datatypes ((ListLongMap!3277 0))(
  ( (ListLongMap!3278 (toList!1654 List!3278)) )
))
(declare-fun contains!1491 (ListLongMap!3277 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1177 (array!10794 array!10792 (_ BitVec 32) (_ BitVec 32) V!7347 V!7347 (_ BitVec 32) Int) ListLongMap!3277)

(assert (=> b!220096 (= c!36623 (contains!1491 (getCurrentListMap!1177 (_keys!6207 thiss!1504) (_values!4136 thiss!1504) (mask!9951 thiss!1504) (extraKeys!3890 thiss!1504) (zeroValue!3994 thiss!1504) (minValue!3994 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4153 thiss!1504)) key!932))))

(declare-fun b!220097 () Bool)

(declare-fun Unit!6565 () Unit!6563)

(assert (=> b!220097 (= e!143130 Unit!6565)))

(declare-fun lt!112134 () Unit!6563)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!202 (array!10794 array!10792 (_ BitVec 32) (_ BitVec 32) V!7347 V!7347 (_ BitVec 64) Int) Unit!6563)

(assert (=> b!220097 (= lt!112134 (lemmaInListMapThenSeekEntryOrOpenFindsIt!202 (_keys!6207 thiss!1504) (_values!4136 thiss!1504) (mask!9951 thiss!1504) (extraKeys!3890 thiss!1504) (zeroValue!3994 thiss!1504) (minValue!3994 thiss!1504) key!932 (defaultEntry!4153 thiss!1504)))))

(assert (=> b!220097 false))

(declare-fun bm!20569 () Bool)

(assert (=> bm!20569 (= call!20572 (arrayContainsKey!0 (_keys!6207 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!220098 () Bool)

(declare-fun res!107914 () Bool)

(assert (=> b!220098 (=> (not res!107914) (not e!143127))))

(assert (=> b!220098 (= res!107914 (and (= (size!5448 (_values!4136 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9951 thiss!1504))) (= (size!5449 (_keys!6207 thiss!1504)) (size!5448 (_values!4136 thiss!1504))) (bvsge (mask!9951 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3890 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3890 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun e!143125 () Bool)

(declare-fun array_inv!3377 (array!10794) Bool)

(declare-fun array_inv!3378 (array!10792) Bool)

(assert (=> b!220099 (= e!143123 (and tp!20880 tp_is_empty!5775 (array_inv!3377 (_keys!6207 thiss!1504)) (array_inv!3378 (_values!4136 thiss!1504)) e!143125))))

(declare-fun b!220100 () Bool)

(declare-fun lt!112130 () Unit!6563)

(assert (=> b!220100 (= e!143130 lt!112130)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!211 (array!10794 array!10792 (_ BitVec 32) (_ BitVec 32) V!7347 V!7347 (_ BitVec 64) Int) Unit!6563)

(assert (=> b!220100 (= lt!112130 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!211 (_keys!6207 thiss!1504) (_values!4136 thiss!1504) (mask!9951 thiss!1504) (extraKeys!3890 thiss!1504) (zeroValue!3994 thiss!1504) (minValue!3994 thiss!1504) key!932 (defaultEntry!4153 thiss!1504)))))

(assert (=> b!220100 (= c!36621 ((_ is MissingZero!817) lt!112131))))

(assert (=> b!220100 e!143132))

(declare-fun b!220101 () Bool)

(declare-fun res!107917 () Bool)

(assert (=> b!220101 (=> (not res!107917) (not e!143127))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10794 (_ BitVec 32)) Bool)

(assert (=> b!220101 (= res!107917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6207 thiss!1504) (mask!9951 thiss!1504)))))

(declare-fun b!220102 () Bool)

(assert (=> b!220102 (= e!143128 ((_ is Undefined!817) lt!112131))))

(declare-fun b!220103 () Bool)

(assert (=> b!220103 (= e!143125 (and e!143133 mapRes!9832))))

(declare-fun condMapEmpty!9832 () Bool)

(declare-fun mapDefault!9832 () ValueCell!2544)

(assert (=> b!220103 (= condMapEmpty!9832 (= (arr!5115 (_values!4136 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2544)) mapDefault!9832)))))

(assert (= (and start!21858 res!107915) b!220093))

(assert (= (and b!220093 res!107920) b!220090))

(assert (= (and b!220090 res!107912) b!220096))

(assert (= (and b!220096 c!36623) b!220097))

(assert (= (and b!220096 (not c!36623)) b!220100))

(assert (= (and b!220100 c!36621) b!220089))

(assert (= (and b!220100 (not c!36621)) b!220082))

(assert (= (and b!220089 res!107918) b!220087))

(assert (= (and b!220087 res!107921) b!220086))

(assert (= (and b!220082 c!36622) b!220092))

(assert (= (and b!220082 (not c!36622)) b!220102))

(assert (= (and b!220092 res!107913) b!220084))

(assert (= (and b!220084 res!107919) b!220095))

(assert (= (or b!220089 b!220092) bm!20568))

(assert (= (or b!220086 b!220095) bm!20569))

(assert (= (and b!220096 res!107923) b!220091))

(assert (= (and b!220091 res!107922) b!220083))

(assert (= (and b!220083 res!107916) b!220098))

(assert (= (and b!220098 res!107914) b!220101))

(assert (= (and b!220101 res!107917) b!220094))

(assert (= (and b!220103 condMapEmpty!9832) mapIsEmpty!9832))

(assert (= (and b!220103 (not condMapEmpty!9832)) mapNonEmpty!9832))

(assert (= (and mapNonEmpty!9832 ((_ is ValueCellFull!2544) mapValue!9832)) b!220088))

(assert (= (and b!220103 ((_ is ValueCellFull!2544) mapDefault!9832)) b!220085))

(assert (= b!220099 b!220103))

(assert (= start!21858 b!220099))

(declare-fun m!245381 () Bool)

(assert (=> b!220087 m!245381))

(declare-fun m!245383 () Bool)

(assert (=> b!220097 m!245383))

(declare-fun m!245385 () Bool)

(assert (=> bm!20569 m!245385))

(declare-fun m!245387 () Bool)

(assert (=> b!220101 m!245387))

(declare-fun m!245389 () Bool)

(assert (=> b!220090 m!245389))

(declare-fun m!245391 () Bool)

(assert (=> b!220099 m!245391))

(declare-fun m!245393 () Bool)

(assert (=> b!220099 m!245393))

(declare-fun m!245395 () Bool)

(assert (=> b!220100 m!245395))

(assert (=> b!220091 m!245385))

(declare-fun m!245397 () Bool)

(assert (=> b!220094 m!245397))

(declare-fun m!245399 () Bool)

(assert (=> start!21858 m!245399))

(declare-fun m!245401 () Bool)

(assert (=> b!220083 m!245401))

(declare-fun m!245403 () Bool)

(assert (=> b!220096 m!245403))

(declare-fun m!245405 () Bool)

(assert (=> b!220096 m!245405))

(assert (=> b!220096 m!245405))

(declare-fun m!245407 () Bool)

(assert (=> b!220096 m!245407))

(declare-fun m!245409 () Bool)

(assert (=> b!220084 m!245409))

(declare-fun m!245411 () Bool)

(assert (=> bm!20568 m!245411))

(declare-fun m!245413 () Bool)

(assert (=> mapNonEmpty!9832 m!245413))

(check-sat (not b!220097) (not b!220096) (not b!220100) (not bm!20568) (not b!220094) (not b!220101) (not start!21858) (not bm!20569) tp_is_empty!5775 (not b!220099) (not b_next!5913) b_and!12829 (not b!220083) (not mapNonEmpty!9832) (not b!220091) (not b!220090))
(check-sat b_and!12829 (not b_next!5913))
