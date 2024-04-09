; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21906 () Bool)

(assert start!21906)

(declare-fun b!221702 () Bool)

(declare-fun b_free!5961 () Bool)

(declare-fun b_next!5961 () Bool)

(assert (=> b!221702 (= b_free!5961 (not b_next!5961))))

(declare-fun tp!21025 () Bool)

(declare-fun b_and!12877 () Bool)

(assert (=> b!221702 (= tp!21025 b_and!12877)))

(declare-fun b!221696 () Bool)

(declare-fun res!108809 () Bool)

(declare-fun e!144093 () Bool)

(assert (=> b!221696 (=> (not res!108809) (not e!144093))))

(declare-datatypes ((List!3310 0))(
  ( (Nil!3307) (Cons!3306 (h!3954 (_ BitVec 64)) (t!8277 List!3310)) )
))
(declare-fun contains!1509 (List!3310 (_ BitVec 64)) Bool)

(assert (=> b!221696 (= res!108809 (not (contains!1509 Nil!3307 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!221697 () Bool)

(declare-fun e!144096 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!221697 (= e!144096 (contains!1509 Nil!3307 key!932))))

(declare-fun b!221698 () Bool)

(declare-fun e!144086 () Bool)

(assert (=> b!221698 (= e!144086 e!144093)))

(declare-fun res!108798 () Bool)

(assert (=> b!221698 (=> (not res!108798) (not e!144093))))

(declare-datatypes ((V!7411 0))(
  ( (V!7412 (val!2956 Int)) )
))
(declare-datatypes ((ValueCell!2568 0))(
  ( (ValueCellFull!2568 (v!4972 V!7411)) (EmptyCell!2568) )
))
(declare-datatypes ((array!10888 0))(
  ( (array!10889 (arr!5163 (Array (_ BitVec 32) ValueCell!2568)) (size!5496 (_ BitVec 32))) )
))
(declare-datatypes ((array!10890 0))(
  ( (array!10891 (arr!5164 (Array (_ BitVec 32) (_ BitVec 64))) (size!5497 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3036 0))(
  ( (LongMapFixedSize!3037 (defaultEntry!4177 Int) (mask!9991 (_ BitVec 32)) (extraKeys!3914 (_ BitVec 32)) (zeroValue!4018 V!7411) (minValue!4018 V!7411) (_size!1567 (_ BitVec 32)) (_keys!6231 array!10890) (_values!4160 array!10888) (_vacant!1567 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3036)

(assert (=> b!221698 (= res!108798 (and (bvslt (size!5497 (_keys!6231 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5497 (_keys!6231 thiss!1504)))))))

(declare-datatypes ((Unit!6625 0))(
  ( (Unit!6626) )
))
(declare-fun lt!112506 () Unit!6625)

(declare-fun e!144091 () Unit!6625)

(assert (=> b!221698 (= lt!112506 e!144091)))

(declare-fun c!36843 () Bool)

(declare-fun arrayContainsKey!0 (array!10890 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!221698 (= c!36843 (arrayContainsKey!0 (_keys!6231 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221699 () Bool)

(declare-fun res!108811 () Bool)

(assert (=> b!221699 (=> (not res!108811) (not e!144093))))

(declare-fun noDuplicate!64 (List!3310) Bool)

(assert (=> b!221699 (= res!108811 (noDuplicate!64 Nil!3307))))

(declare-fun b!221700 () Bool)

(declare-fun e!144095 () Unit!6625)

(declare-fun Unit!6627 () Unit!6625)

(assert (=> b!221700 (= e!144095 Unit!6627)))

(declare-fun lt!112503 () Unit!6625)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!219 (array!10890 array!10888 (_ BitVec 32) (_ BitVec 32) V!7411 V!7411 (_ BitVec 64) Int) Unit!6625)

(assert (=> b!221700 (= lt!112503 (lemmaInListMapThenSeekEntryOrOpenFindsIt!219 (_keys!6231 thiss!1504) (_values!4160 thiss!1504) (mask!9991 thiss!1504) (extraKeys!3914 thiss!1504) (zeroValue!4018 thiss!1504) (minValue!4018 thiss!1504) key!932 (defaultEntry!4177 thiss!1504)))))

(assert (=> b!221700 false))

(declare-fun mapIsEmpty!9904 () Bool)

(declare-fun mapRes!9904 () Bool)

(assert (=> mapIsEmpty!9904 mapRes!9904))

(declare-fun b!221701 () Bool)

(declare-fun e!144089 () Bool)

(declare-fun e!144087 () Bool)

(assert (=> b!221701 (= e!144089 (and e!144087 mapRes!9904))))

(declare-fun condMapEmpty!9904 () Bool)

(declare-fun mapDefault!9904 () ValueCell!2568)

(assert (=> b!221701 (= condMapEmpty!9904 (= (arr!5163 (_values!4160 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2568)) mapDefault!9904)))))

(declare-fun e!144083 () Bool)

(declare-fun tp_is_empty!5823 () Bool)

(declare-fun array_inv!3409 (array!10890) Bool)

(declare-fun array_inv!3410 (array!10888) Bool)

(assert (=> b!221702 (= e!144083 (and tp!21025 tp_is_empty!5823 (array_inv!3409 (_keys!6231 thiss!1504)) (array_inv!3410 (_values!4160 thiss!1504)) e!144089))))

(declare-fun b!221703 () Bool)

(declare-fun e!144094 () Bool)

(declare-fun call!20716 () Bool)

(assert (=> b!221703 (= e!144094 (not call!20716))))

(declare-fun b!221704 () Bool)

(declare-fun res!108797 () Bool)

(declare-datatypes ((SeekEntryResult!839 0))(
  ( (MissingZero!839 (index!5526 (_ BitVec 32))) (Found!839 (index!5527 (_ BitVec 32))) (Intermediate!839 (undefined!1651 Bool) (index!5528 (_ BitVec 32)) (x!23035 (_ BitVec 32))) (Undefined!839) (MissingVacant!839 (index!5529 (_ BitVec 32))) )
))
(declare-fun lt!112502 () SeekEntryResult!839)

(assert (=> b!221704 (= res!108797 (= (select (arr!5164 (_keys!6231 thiss!1504)) (index!5529 lt!112502)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!221704 (=> (not res!108797) (not e!144094))))

(declare-fun b!221705 () Bool)

(declare-fun e!144092 () Bool)

(declare-fun e!144085 () Bool)

(assert (=> b!221705 (= e!144092 e!144085)))

(declare-fun res!108808 () Bool)

(assert (=> b!221705 (=> (not res!108808) (not e!144085))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!221705 (= res!108808 (or (= lt!112502 (MissingZero!839 index!297)) (= lt!112502 (MissingVacant!839 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10890 (_ BitVec 32)) SeekEntryResult!839)

(assert (=> b!221705 (= lt!112502 (seekEntryOrOpen!0 key!932 (_keys!6231 thiss!1504) (mask!9991 thiss!1504)))))

(declare-fun b!221706 () Bool)

(declare-fun lt!112505 () Unit!6625)

(assert (=> b!221706 (= e!144095 lt!112505)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!229 (array!10890 array!10888 (_ BitVec 32) (_ BitVec 32) V!7411 V!7411 (_ BitVec 64) Int) Unit!6625)

(assert (=> b!221706 (= lt!112505 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!229 (_keys!6231 thiss!1504) (_values!4160 thiss!1504) (mask!9991 thiss!1504) (extraKeys!3914 thiss!1504) (zeroValue!4018 thiss!1504) (minValue!4018 thiss!1504) key!932 (defaultEntry!4177 thiss!1504)))))

(declare-fun c!36842 () Bool)

(get-info :version)

(assert (=> b!221706 (= c!36842 ((_ is MissingZero!839) lt!112502))))

(declare-fun e!144088 () Bool)

(assert (=> b!221706 e!144088))

(declare-fun b!221707 () Bool)

(declare-fun e!144099 () Bool)

(declare-fun e!144098 () Bool)

(assert (=> b!221707 (= e!144099 e!144098)))

(declare-fun res!108802 () Bool)

(assert (=> b!221707 (=> (not res!108802) (not e!144098))))

(assert (=> b!221707 (= res!108802 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!221708 () Bool)

(declare-fun e!144084 () Bool)

(assert (=> b!221708 (= e!144084 (not call!20716))))

(declare-fun bm!20712 () Bool)

(declare-fun call!20715 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20712 (= call!20715 (inRange!0 (ite c!36842 (index!5526 lt!112502) (index!5529 lt!112502)) (mask!9991 thiss!1504)))))

(declare-fun b!221709 () Bool)

(declare-fun res!108807 () Bool)

(assert (=> b!221709 (=> (not res!108807) (not e!144093))))

(assert (=> b!221709 (= res!108807 e!144099)))

(declare-fun res!108800 () Bool)

(assert (=> b!221709 (=> res!108800 e!144099)))

(assert (=> b!221709 (= res!108800 e!144096)))

(declare-fun res!108804 () Bool)

(assert (=> b!221709 (=> (not res!108804) (not e!144096))))

(assert (=> b!221709 (= res!108804 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!221710 () Bool)

(declare-fun e!144100 () Bool)

(assert (=> b!221710 (= e!144100 ((_ is Undefined!839) lt!112502))))

(declare-fun b!221711 () Bool)

(declare-fun Unit!6628 () Unit!6625)

(assert (=> b!221711 (= e!144091 Unit!6628)))

(declare-fun lt!112504 () Unit!6625)

(declare-fun lemmaArrayContainsKeyThenInListMap!53 (array!10890 array!10888 (_ BitVec 32) (_ BitVec 32) V!7411 V!7411 (_ BitVec 64) (_ BitVec 32) Int) Unit!6625)

(assert (=> b!221711 (= lt!112504 (lemmaArrayContainsKeyThenInListMap!53 (_keys!6231 thiss!1504) (_values!4160 thiss!1504) (mask!9991 thiss!1504) (extraKeys!3914 thiss!1504) (zeroValue!4018 thiss!1504) (minValue!4018 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4177 thiss!1504)))))

(assert (=> b!221711 false))

(declare-fun b!221712 () Bool)

(declare-fun e!144090 () Bool)

(assert (=> b!221712 (= e!144090 tp_is_empty!5823)))

(declare-fun b!221713 () Bool)

(assert (=> b!221713 (= e!144100 e!144094)))

(declare-fun res!108805 () Bool)

(assert (=> b!221713 (= res!108805 call!20715)))

(assert (=> b!221713 (=> (not res!108805) (not e!144094))))

(declare-fun mapNonEmpty!9904 () Bool)

(declare-fun tp!21024 () Bool)

(assert (=> mapNonEmpty!9904 (= mapRes!9904 (and tp!21024 e!144090))))

(declare-fun mapValue!9904 () ValueCell!2568)

(declare-fun mapKey!9904 () (_ BitVec 32))

(declare-fun mapRest!9904 () (Array (_ BitVec 32) ValueCell!2568))

(assert (=> mapNonEmpty!9904 (= (arr!5163 (_values!4160 thiss!1504)) (store mapRest!9904 mapKey!9904 mapValue!9904))))

(declare-fun b!221714 () Bool)

(assert (=> b!221714 (= e!144085 e!144086)))

(declare-fun res!108801 () Bool)

(assert (=> b!221714 (=> (not res!108801) (not e!144086))))

(assert (=> b!221714 (= res!108801 (inRange!0 index!297 (mask!9991 thiss!1504)))))

(declare-fun lt!112501 () Unit!6625)

(assert (=> b!221714 (= lt!112501 e!144095)))

(declare-fun c!36844 () Bool)

(declare-datatypes ((tuple2!4384 0))(
  ( (tuple2!4385 (_1!2202 (_ BitVec 64)) (_2!2202 V!7411)) )
))
(declare-datatypes ((List!3311 0))(
  ( (Nil!3308) (Cons!3307 (h!3955 tuple2!4384) (t!8278 List!3311)) )
))
(declare-datatypes ((ListLongMap!3311 0))(
  ( (ListLongMap!3312 (toList!1671 List!3311)) )
))
(declare-fun contains!1510 (ListLongMap!3311 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1194 (array!10890 array!10888 (_ BitVec 32) (_ BitVec 32) V!7411 V!7411 (_ BitVec 32) Int) ListLongMap!3311)

(assert (=> b!221714 (= c!36844 (contains!1510 (getCurrentListMap!1194 (_keys!6231 thiss!1504) (_values!4160 thiss!1504) (mask!9991 thiss!1504) (extraKeys!3914 thiss!1504) (zeroValue!4018 thiss!1504) (minValue!4018 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4177 thiss!1504)) key!932))))

(declare-fun b!221715 () Bool)

(declare-fun res!108799 () Bool)

(assert (=> b!221715 (=> (not res!108799) (not e!144093))))

(assert (=> b!221715 (= res!108799 (not (contains!1509 Nil!3307 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!221716 () Bool)

(declare-fun res!108810 () Bool)

(assert (=> b!221716 (=> (not res!108810) (not e!144084))))

(assert (=> b!221716 (= res!108810 call!20715)))

(assert (=> b!221716 (= e!144088 e!144084)))

(declare-fun b!221717 () Bool)

(assert (=> b!221717 (= e!144098 (not (contains!1509 Nil!3307 key!932)))))

(declare-fun b!221718 () Bool)

(assert (=> b!221718 (= e!144087 tp_is_empty!5823)))

(declare-fun res!108796 () Bool)

(assert (=> start!21906 (=> (not res!108796) (not e!144092))))

(declare-fun valid!1218 (LongMapFixedSize!3036) Bool)

(assert (=> start!21906 (= res!108796 (valid!1218 thiss!1504))))

(assert (=> start!21906 e!144092))

(assert (=> start!21906 e!144083))

(assert (=> start!21906 true))

(declare-fun b!221719 () Bool)

(declare-fun Unit!6629 () Unit!6625)

(assert (=> b!221719 (= e!144091 Unit!6629)))

(declare-fun b!221720 () Bool)

(declare-fun c!36845 () Bool)

(assert (=> b!221720 (= c!36845 ((_ is MissingVacant!839) lt!112502))))

(assert (=> b!221720 (= e!144088 e!144100)))

(declare-fun b!221721 () Bool)

(declare-fun res!108803 () Bool)

(assert (=> b!221721 (=> (not res!108803) (not e!144092))))

(assert (=> b!221721 (= res!108803 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!221722 () Bool)

(assert (=> b!221722 (= e!144093 false)))

(declare-fun lt!112500 () Bool)

(declare-fun arrayNoDuplicates!0 (array!10890 (_ BitVec 32) List!3310) Bool)

(assert (=> b!221722 (= lt!112500 (arrayNoDuplicates!0 (_keys!6231 thiss!1504) #b00000000000000000000000000000000 Nil!3307))))

(declare-fun b!221723 () Bool)

(declare-fun res!108806 () Bool)

(assert (=> b!221723 (=> (not res!108806) (not e!144084))))

(assert (=> b!221723 (= res!108806 (= (select (arr!5164 (_keys!6231 thiss!1504)) (index!5526 lt!112502)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!20713 () Bool)

(assert (=> bm!20713 (= call!20716 (arrayContainsKey!0 (_keys!6231 thiss!1504) key!932 #b00000000000000000000000000000000))))

(assert (= (and start!21906 res!108796) b!221721))

(assert (= (and b!221721 res!108803) b!221705))

(assert (= (and b!221705 res!108808) b!221714))

(assert (= (and b!221714 c!36844) b!221700))

(assert (= (and b!221714 (not c!36844)) b!221706))

(assert (= (and b!221706 c!36842) b!221716))

(assert (= (and b!221706 (not c!36842)) b!221720))

(assert (= (and b!221716 res!108810) b!221723))

(assert (= (and b!221723 res!108806) b!221708))

(assert (= (and b!221720 c!36845) b!221713))

(assert (= (and b!221720 (not c!36845)) b!221710))

(assert (= (and b!221713 res!108805) b!221704))

(assert (= (and b!221704 res!108797) b!221703))

(assert (= (or b!221716 b!221713) bm!20712))

(assert (= (or b!221708 b!221703) bm!20713))

(assert (= (and b!221714 res!108801) b!221698))

(assert (= (and b!221698 c!36843) b!221711))

(assert (= (and b!221698 (not c!36843)) b!221719))

(assert (= (and b!221698 res!108798) b!221699))

(assert (= (and b!221699 res!108811) b!221696))

(assert (= (and b!221696 res!108809) b!221715))

(assert (= (and b!221715 res!108799) b!221709))

(assert (= (and b!221709 res!108804) b!221697))

(assert (= (and b!221709 (not res!108800)) b!221707))

(assert (= (and b!221707 res!108802) b!221717))

(assert (= (and b!221709 res!108807) b!221722))

(assert (= (and b!221701 condMapEmpty!9904) mapIsEmpty!9904))

(assert (= (and b!221701 (not condMapEmpty!9904)) mapNonEmpty!9904))

(assert (= (and mapNonEmpty!9904 ((_ is ValueCellFull!2568) mapValue!9904)) b!221712))

(assert (= (and b!221701 ((_ is ValueCellFull!2568) mapDefault!9904)) b!221718))

(assert (= b!221702 b!221701))

(assert (= start!21906 b!221702))

(declare-fun m!246203 () Bool)

(assert (=> b!221717 m!246203))

(declare-fun m!246205 () Bool)

(assert (=> b!221704 m!246205))

(declare-fun m!246207 () Bool)

(assert (=> b!221714 m!246207))

(declare-fun m!246209 () Bool)

(assert (=> b!221714 m!246209))

(assert (=> b!221714 m!246209))

(declare-fun m!246211 () Bool)

(assert (=> b!221714 m!246211))

(declare-fun m!246213 () Bool)

(assert (=> b!221706 m!246213))

(declare-fun m!246215 () Bool)

(assert (=> start!21906 m!246215))

(declare-fun m!246217 () Bool)

(assert (=> bm!20713 m!246217))

(declare-fun m!246219 () Bool)

(assert (=> b!221702 m!246219))

(declare-fun m!246221 () Bool)

(assert (=> b!221702 m!246221))

(declare-fun m!246223 () Bool)

(assert (=> b!221696 m!246223))

(declare-fun m!246225 () Bool)

(assert (=> b!221723 m!246225))

(declare-fun m!246227 () Bool)

(assert (=> b!221699 m!246227))

(declare-fun m!246229 () Bool)

(assert (=> mapNonEmpty!9904 m!246229))

(assert (=> b!221698 m!246217))

(declare-fun m!246231 () Bool)

(assert (=> b!221722 m!246231))

(declare-fun m!246233 () Bool)

(assert (=> bm!20712 m!246233))

(assert (=> b!221697 m!246203))

(declare-fun m!246235 () Bool)

(assert (=> b!221705 m!246235))

(declare-fun m!246237 () Bool)

(assert (=> b!221711 m!246237))

(declare-fun m!246239 () Bool)

(assert (=> b!221700 m!246239))

(declare-fun m!246241 () Bool)

(assert (=> b!221715 m!246241))

(check-sat (not start!21906) (not b!221706) (not b!221699) tp_is_empty!5823 (not b!221698) b_and!12877 (not b!221700) (not bm!20713) (not b!221705) (not mapNonEmpty!9904) (not b!221715) (not b_next!5961) (not b!221714) (not b!221702) (not b!221711) (not b!221717) (not bm!20712) (not b!221696) (not b!221697) (not b!221722))
(check-sat b_and!12877 (not b_next!5961))
