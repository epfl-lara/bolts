; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21948 () Bool)

(assert start!21948)

(declare-fun b!223570 () Bool)

(declare-fun b_free!6003 () Bool)

(declare-fun b_next!6003 () Bool)

(assert (=> b!223570 (= b_free!6003 (not b_next!6003))))

(declare-fun tp!21151 () Bool)

(declare-fun b_and!12919 () Bool)

(assert (=> b!223570 (= tp!21151 b_and!12919)))

(declare-datatypes ((SeekEntryResult!860 0))(
  ( (MissingZero!860 (index!5610 (_ BitVec 32))) (Found!860 (index!5611 (_ BitVec 32))) (Intermediate!860 (undefined!1672 Bool) (index!5612 (_ BitVec 32)) (x!23112 (_ BitVec 32))) (Undefined!860) (MissingVacant!860 (index!5613 (_ BitVec 32))) )
))
(declare-fun lt!112969 () SeekEntryResult!860)

(declare-fun call!20842 () Bool)

(declare-datatypes ((V!7467 0))(
  ( (V!7468 (val!2977 Int)) )
))
(declare-datatypes ((ValueCell!2589 0))(
  ( (ValueCellFull!2589 (v!4993 V!7467)) (EmptyCell!2589) )
))
(declare-datatypes ((array!10972 0))(
  ( (array!10973 (arr!5205 (Array (_ BitVec 32) ValueCell!2589)) (size!5538 (_ BitVec 32))) )
))
(declare-datatypes ((array!10974 0))(
  ( (array!10975 (arr!5206 (Array (_ BitVec 32) (_ BitVec 64))) (size!5539 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3078 0))(
  ( (LongMapFixedSize!3079 (defaultEntry!4198 Int) (mask!10026 (_ BitVec 32)) (extraKeys!3935 (_ BitVec 32)) (zeroValue!4039 V!7467) (minValue!4039 V!7467) (_size!1588 (_ BitVec 32)) (_keys!6252 array!10974) (_values!4181 array!10972) (_vacant!1588 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3078)

(declare-fun bm!20838 () Bool)

(declare-fun c!37097 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20838 (= call!20842 (inRange!0 (ite c!37097 (index!5610 lt!112969) (index!5613 lt!112969)) (mask!10026 thiss!1504)))))

(declare-fun b!223561 () Bool)

(declare-fun e!145233 () Bool)

(declare-fun call!20841 () Bool)

(assert (=> b!223561 (= e!145233 (not call!20841))))

(declare-fun b!223562 () Bool)

(declare-fun e!145217 () Bool)

(assert (=> b!223562 (= e!145217 false)))

(declare-fun lt!112968 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((List!3343 0))(
  ( (Nil!3340) (Cons!3339 (h!3987 (_ BitVec 64)) (t!8310 List!3343)) )
))
(declare-fun contains!1542 (List!3343 (_ BitVec 64)) Bool)

(assert (=> b!223562 (= lt!112968 (contains!1542 Nil!3340 key!932))))

(declare-fun b!223563 () Bool)

(declare-fun res!109909 () Bool)

(assert (=> b!223563 (=> (not res!109909) (not e!145217))))

(assert (=> b!223563 (= res!109909 (not (contains!1542 Nil!3340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!223564 () Bool)

(declare-fun e!145232 () Bool)

(assert (=> b!223564 (= e!145232 (not call!20841))))

(declare-fun b!223565 () Bool)

(declare-fun res!109908 () Bool)

(assert (=> b!223565 (=> (not res!109908) (not e!145217))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!223565 (= res!109908 (validKeyInArray!0 key!932))))

(declare-fun b!223566 () Bool)

(declare-fun e!145228 () Bool)

(declare-fun tp_is_empty!5865 () Bool)

(assert (=> b!223566 (= e!145228 tp_is_empty!5865)))

(declare-fun b!223567 () Bool)

(declare-fun res!109915 () Bool)

(assert (=> b!223567 (=> (not res!109915) (not e!145217))))

(declare-fun lt!112966 () Bool)

(assert (=> b!223567 (= res!109915 (not lt!112966))))

(declare-fun b!223568 () Bool)

(declare-datatypes ((Unit!6718 0))(
  ( (Unit!6719) )
))
(declare-fun e!145220 () Unit!6718)

(declare-fun lt!112967 () Unit!6718)

(assert (=> b!223568 (= e!145220 lt!112967)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!243 (array!10974 array!10972 (_ BitVec 32) (_ BitVec 32) V!7467 V!7467 (_ BitVec 64) Int) Unit!6718)

(assert (=> b!223568 (= lt!112967 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!243 (_keys!6252 thiss!1504) (_values!4181 thiss!1504) (mask!10026 thiss!1504) (extraKeys!3935 thiss!1504) (zeroValue!4039 thiss!1504) (minValue!4039 thiss!1504) key!932 (defaultEntry!4198 thiss!1504)))))

(get-info :version)

(assert (=> b!223568 (= c!37097 ((_ is MissingZero!860) lt!112969))))

(declare-fun e!145222 () Bool)

(assert (=> b!223568 e!145222))

(declare-fun b!223569 () Bool)

(declare-fun e!145224 () Bool)

(declare-fun e!145229 () Bool)

(declare-fun mapRes!9967 () Bool)

(assert (=> b!223569 (= e!145224 (and e!145229 mapRes!9967))))

(declare-fun condMapEmpty!9967 () Bool)

(declare-fun mapDefault!9967 () ValueCell!2589)

(assert (=> b!223569 (= condMapEmpty!9967 (= (arr!5205 (_values!4181 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2589)) mapDefault!9967)))))

(declare-fun e!145230 () Bool)

(declare-fun array_inv!3435 (array!10974) Bool)

(declare-fun array_inv!3436 (array!10972) Bool)

(assert (=> b!223570 (= e!145230 (and tp!21151 tp_is_empty!5865 (array_inv!3435 (_keys!6252 thiss!1504)) (array_inv!3436 (_values!4181 thiss!1504)) e!145224))))

(declare-fun b!223572 () Bool)

(declare-fun e!145227 () Bool)

(assert (=> b!223572 (= e!145227 ((_ is Undefined!860) lt!112969))))

(declare-fun b!223573 () Bool)

(declare-fun res!109913 () Bool)

(assert (=> b!223573 (=> (not res!109913) (not e!145232))))

(assert (=> b!223573 (= res!109913 (= (select (arr!5206 (_keys!6252 thiss!1504)) (index!5610 lt!112969)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!223574 () Bool)

(declare-fun res!109917 () Bool)

(assert (=> b!223574 (=> (not res!109917) (not e!145232))))

(assert (=> b!223574 (= res!109917 call!20842)))

(assert (=> b!223574 (= e!145222 e!145232)))

(declare-fun b!223575 () Bool)

(declare-fun e!145225 () Bool)

(assert (=> b!223575 (= e!145225 (contains!1542 Nil!3340 key!932))))

(declare-fun b!223576 () Bool)

(declare-fun e!145223 () Bool)

(declare-fun e!145234 () Bool)

(assert (=> b!223576 (= e!145223 e!145234)))

(declare-fun res!109916 () Bool)

(assert (=> b!223576 (=> (not res!109916) (not e!145234))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!223576 (= res!109916 (inRange!0 index!297 (mask!10026 thiss!1504)))))

(declare-fun lt!112964 () Unit!6718)

(assert (=> b!223576 (= lt!112964 e!145220)))

(declare-fun c!37094 () Bool)

(declare-datatypes ((tuple2!4410 0))(
  ( (tuple2!4411 (_1!2215 (_ BitVec 64)) (_2!2215 V!7467)) )
))
(declare-datatypes ((List!3344 0))(
  ( (Nil!3341) (Cons!3340 (h!3988 tuple2!4410) (t!8311 List!3344)) )
))
(declare-datatypes ((ListLongMap!3337 0))(
  ( (ListLongMap!3338 (toList!1684 List!3344)) )
))
(declare-fun contains!1543 (ListLongMap!3337 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1207 (array!10974 array!10972 (_ BitVec 32) (_ BitVec 32) V!7467 V!7467 (_ BitVec 32) Int) ListLongMap!3337)

(assert (=> b!223576 (= c!37094 (contains!1543 (getCurrentListMap!1207 (_keys!6252 thiss!1504) (_values!4181 thiss!1504) (mask!10026 thiss!1504) (extraKeys!3935 thiss!1504) (zeroValue!4039 thiss!1504) (minValue!4039 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4198 thiss!1504)) key!932))))

(declare-fun b!223577 () Bool)

(declare-fun c!37095 () Bool)

(assert (=> b!223577 (= c!37095 ((_ is MissingVacant!860) lt!112969))))

(assert (=> b!223577 (= e!145222 e!145227)))

(declare-fun b!223578 () Bool)

(declare-fun res!109910 () Bool)

(assert (=> b!223578 (=> (not res!109910) (not e!145217))))

(assert (=> b!223578 (= res!109910 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!5539 (_keys!6252 thiss!1504)))))))

(declare-fun bm!20839 () Bool)

(declare-fun arrayContainsKey!0 (array!10974 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20839 (= call!20841 (arrayContainsKey!0 (_keys!6252 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!223579 () Bool)

(declare-fun e!145219 () Unit!6718)

(declare-fun Unit!6720 () Unit!6718)

(assert (=> b!223579 (= e!145219 Unit!6720)))

(declare-fun b!223580 () Bool)

(assert (=> b!223580 (= e!145229 tp_is_empty!5865)))

(declare-fun b!223581 () Bool)

(assert (=> b!223581 (= e!145227 e!145233)))

(declare-fun res!109906 () Bool)

(assert (=> b!223581 (= res!109906 call!20842)))

(assert (=> b!223581 (=> (not res!109906) (not e!145233))))

(declare-fun b!223582 () Bool)

(declare-fun e!145221 () Bool)

(assert (=> b!223582 (= e!145221 e!145223)))

(declare-fun res!109923 () Bool)

(assert (=> b!223582 (=> (not res!109923) (not e!145223))))

(assert (=> b!223582 (= res!109923 (or (= lt!112969 (MissingZero!860 index!297)) (= lt!112969 (MissingVacant!860 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10974 (_ BitVec 32)) SeekEntryResult!860)

(assert (=> b!223582 (= lt!112969 (seekEntryOrOpen!0 key!932 (_keys!6252 thiss!1504) (mask!10026 thiss!1504)))))

(declare-fun mapIsEmpty!9967 () Bool)

(assert (=> mapIsEmpty!9967 mapRes!9967))

(declare-fun b!223583 () Bool)

(declare-fun Unit!6721 () Unit!6718)

(assert (=> b!223583 (= e!145220 Unit!6721)))

(declare-fun lt!112971 () Unit!6718)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!235 (array!10974 array!10972 (_ BitVec 32) (_ BitVec 32) V!7467 V!7467 (_ BitVec 64) Int) Unit!6718)

(assert (=> b!223583 (= lt!112971 (lemmaInListMapThenSeekEntryOrOpenFindsIt!235 (_keys!6252 thiss!1504) (_values!4181 thiss!1504) (mask!10026 thiss!1504) (extraKeys!3935 thiss!1504) (zeroValue!4039 thiss!1504) (minValue!4039 thiss!1504) key!932 (defaultEntry!4198 thiss!1504)))))

(assert (=> b!223583 false))

(declare-fun b!223584 () Bool)

(declare-fun res!109912 () Bool)

(assert (=> b!223584 (=> (not res!109912) (not e!145221))))

(assert (=> b!223584 (= res!109912 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!223585 () Bool)

(declare-fun res!109918 () Bool)

(assert (=> b!223585 (=> (not res!109918) (not e!145217))))

(declare-fun e!145231 () Bool)

(assert (=> b!223585 (= res!109918 e!145231)))

(declare-fun res!109907 () Bool)

(assert (=> b!223585 (=> res!109907 e!145231)))

(assert (=> b!223585 (= res!109907 e!145225)))

(declare-fun res!109924 () Bool)

(assert (=> b!223585 (=> (not res!109924) (not e!145225))))

(assert (=> b!223585 (= res!109924 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!223586 () Bool)

(declare-fun Unit!6722 () Unit!6718)

(assert (=> b!223586 (= e!145219 Unit!6722)))

(declare-fun lt!112970 () Unit!6718)

(declare-fun lemmaArrayContainsKeyThenInListMap!73 (array!10974 array!10972 (_ BitVec 32) (_ BitVec 32) V!7467 V!7467 (_ BitVec 64) (_ BitVec 32) Int) Unit!6718)

(assert (=> b!223586 (= lt!112970 (lemmaArrayContainsKeyThenInListMap!73 (_keys!6252 thiss!1504) (_values!4181 thiss!1504) (mask!10026 thiss!1504) (extraKeys!3935 thiss!1504) (zeroValue!4039 thiss!1504) (minValue!4039 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4198 thiss!1504)))))

(assert (=> b!223586 false))

(declare-fun b!223587 () Bool)

(declare-fun res!109920 () Bool)

(assert (=> b!223587 (=> (not res!109920) (not e!145217))))

(declare-fun arrayNoDuplicates!0 (array!10974 (_ BitVec 32) List!3343) Bool)

(assert (=> b!223587 (= res!109920 (arrayNoDuplicates!0 (_keys!6252 thiss!1504) #b00000000000000000000000000000000 Nil!3340))))

(declare-fun b!223588 () Bool)

(declare-fun res!109911 () Bool)

(assert (=> b!223588 (= res!109911 (= (select (arr!5206 (_keys!6252 thiss!1504)) (index!5613 lt!112969)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!223588 (=> (not res!109911) (not e!145233))))

(declare-fun res!109914 () Bool)

(assert (=> start!21948 (=> (not res!109914) (not e!145221))))

(declare-fun valid!1232 (LongMapFixedSize!3078) Bool)

(assert (=> start!21948 (= res!109914 (valid!1232 thiss!1504))))

(assert (=> start!21948 e!145221))

(assert (=> start!21948 e!145230))

(assert (=> start!21948 true))

(declare-fun b!223571 () Bool)

(declare-fun res!109905 () Bool)

(assert (=> b!223571 (=> (not res!109905) (not e!145217))))

(declare-fun noDuplicate!79 (List!3343) Bool)

(assert (=> b!223571 (= res!109905 (noDuplicate!79 Nil!3340))))

(declare-fun b!223589 () Bool)

(declare-fun e!145226 () Bool)

(assert (=> b!223589 (= e!145226 (not (contains!1542 Nil!3340 key!932)))))

(declare-fun b!223590 () Bool)

(declare-fun res!109919 () Bool)

(assert (=> b!223590 (=> (not res!109919) (not e!145217))))

(assert (=> b!223590 (= res!109919 (not (contains!1542 Nil!3340 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!9967 () Bool)

(declare-fun tp!21150 () Bool)

(assert (=> mapNonEmpty!9967 (= mapRes!9967 (and tp!21150 e!145228))))

(declare-fun mapKey!9967 () (_ BitVec 32))

(declare-fun mapValue!9967 () ValueCell!2589)

(declare-fun mapRest!9967 () (Array (_ BitVec 32) ValueCell!2589))

(assert (=> mapNonEmpty!9967 (= (arr!5205 (_values!4181 thiss!1504)) (store mapRest!9967 mapKey!9967 mapValue!9967))))

(declare-fun b!223591 () Bool)

(assert (=> b!223591 (= e!145231 e!145226)))

(declare-fun res!109922 () Bool)

(assert (=> b!223591 (=> (not res!109922) (not e!145226))))

(assert (=> b!223591 (= res!109922 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!223592 () Bool)

(assert (=> b!223592 (= e!145234 e!145217)))

(declare-fun res!109921 () Bool)

(assert (=> b!223592 (=> (not res!109921) (not e!145217))))

(assert (=> b!223592 (= res!109921 (and (bvslt (size!5539 (_keys!6252 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5539 (_keys!6252 thiss!1504)))))))

(declare-fun lt!112965 () Unit!6718)

(assert (=> b!223592 (= lt!112965 e!145219)))

(declare-fun c!37096 () Bool)

(assert (=> b!223592 (= c!37096 lt!112966)))

(assert (=> b!223592 (= lt!112966 (arrayContainsKey!0 (_keys!6252 thiss!1504) key!932 #b00000000000000000000000000000000))))

(assert (= (and start!21948 res!109914) b!223584))

(assert (= (and b!223584 res!109912) b!223582))

(assert (= (and b!223582 res!109923) b!223576))

(assert (= (and b!223576 c!37094) b!223583))

(assert (= (and b!223576 (not c!37094)) b!223568))

(assert (= (and b!223568 c!37097) b!223574))

(assert (= (and b!223568 (not c!37097)) b!223577))

(assert (= (and b!223574 res!109917) b!223573))

(assert (= (and b!223573 res!109913) b!223564))

(assert (= (and b!223577 c!37095) b!223581))

(assert (= (and b!223577 (not c!37095)) b!223572))

(assert (= (and b!223581 res!109906) b!223588))

(assert (= (and b!223588 res!109911) b!223561))

(assert (= (or b!223574 b!223581) bm!20838))

(assert (= (or b!223564 b!223561) bm!20839))

(assert (= (and b!223576 res!109916) b!223592))

(assert (= (and b!223592 c!37096) b!223586))

(assert (= (and b!223592 (not c!37096)) b!223579))

(assert (= (and b!223592 res!109921) b!223571))

(assert (= (and b!223571 res!109905) b!223563))

(assert (= (and b!223563 res!109909) b!223590))

(assert (= (and b!223590 res!109919) b!223585))

(assert (= (and b!223585 res!109924) b!223575))

(assert (= (and b!223585 (not res!109907)) b!223591))

(assert (= (and b!223591 res!109922) b!223589))

(assert (= (and b!223585 res!109918) b!223587))

(assert (= (and b!223587 res!109920) b!223578))

(assert (= (and b!223578 res!109910) b!223565))

(assert (= (and b!223565 res!109908) b!223567))

(assert (= (and b!223567 res!109915) b!223562))

(assert (= (and b!223569 condMapEmpty!9967) mapIsEmpty!9967))

(assert (= (and b!223569 (not condMapEmpty!9967)) mapNonEmpty!9967))

(assert (= (and mapNonEmpty!9967 ((_ is ValueCellFull!2589) mapValue!9967)) b!223566))

(assert (= (and b!223569 ((_ is ValueCellFull!2589) mapDefault!9967)) b!223580))

(assert (= b!223570 b!223569))

(assert (= start!21948 b!223570))

(declare-fun m!247057 () Bool)

(assert (=> start!21948 m!247057))

(declare-fun m!247059 () Bool)

(assert (=> b!223576 m!247059))

(declare-fun m!247061 () Bool)

(assert (=> b!223576 m!247061))

(assert (=> b!223576 m!247061))

(declare-fun m!247063 () Bool)

(assert (=> b!223576 m!247063))

(declare-fun m!247065 () Bool)

(assert (=> b!223563 m!247065))

(declare-fun m!247067 () Bool)

(assert (=> b!223588 m!247067))

(declare-fun m!247069 () Bool)

(assert (=> b!223586 m!247069))

(declare-fun m!247071 () Bool)

(assert (=> b!223575 m!247071))

(declare-fun m!247073 () Bool)

(assert (=> b!223590 m!247073))

(declare-fun m!247075 () Bool)

(assert (=> bm!20838 m!247075))

(declare-fun m!247077 () Bool)

(assert (=> b!223582 m!247077))

(assert (=> b!223589 m!247071))

(declare-fun m!247079 () Bool)

(assert (=> b!223565 m!247079))

(declare-fun m!247081 () Bool)

(assert (=> b!223583 m!247081))

(declare-fun m!247083 () Bool)

(assert (=> b!223592 m!247083))

(assert (=> bm!20839 m!247083))

(declare-fun m!247085 () Bool)

(assert (=> b!223570 m!247085))

(declare-fun m!247087 () Bool)

(assert (=> b!223570 m!247087))

(declare-fun m!247089 () Bool)

(assert (=> mapNonEmpty!9967 m!247089))

(declare-fun m!247091 () Bool)

(assert (=> b!223568 m!247091))

(declare-fun m!247093 () Bool)

(assert (=> b!223573 m!247093))

(declare-fun m!247095 () Bool)

(assert (=> b!223571 m!247095))

(assert (=> b!223562 m!247071))

(declare-fun m!247097 () Bool)

(assert (=> b!223587 m!247097))

(check-sat (not b!223563) (not b!223570) (not b!223589) tp_is_empty!5865 (not bm!20838) (not b!223590) (not b!223565) (not b!223568) (not b!223582) (not b!223583) (not b!223571) (not bm!20839) b_and!12919 (not mapNonEmpty!9967) (not start!21948) (not b!223587) (not b!223592) (not b!223575) (not b!223576) (not b!223562) (not b_next!6003) (not b!223586))
(check-sat b_and!12919 (not b_next!6003))
