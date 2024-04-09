; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18552 () Bool)

(assert start!18552)

(declare-fun b!183686 () Bool)

(declare-fun b_free!4533 () Bool)

(declare-fun b_next!4533 () Bool)

(assert (=> b!183686 (= b_free!4533 (not b_next!4533))))

(declare-fun tp!16373 () Bool)

(declare-fun b_and!11127 () Bool)

(assert (=> b!183686 (= tp!16373 b_and!11127)))

(declare-fun b!183679 () Bool)

(declare-fun res!86948 () Bool)

(declare-fun e!120935 () Bool)

(assert (=> b!183679 (=> (not res!86948) (not e!120935))))

(declare-datatypes ((V!5387 0))(
  ( (V!5388 (val!2197 Int)) )
))
(declare-datatypes ((ValueCell!1809 0))(
  ( (ValueCellFull!1809 (v!4097 V!5387)) (EmptyCell!1809) )
))
(declare-datatypes ((array!7804 0))(
  ( (array!7805 (arr!3688 (Array (_ BitVec 32) (_ BitVec 64))) (size!4001 (_ BitVec 32))) )
))
(declare-datatypes ((array!7806 0))(
  ( (array!7807 (arr!3689 (Array (_ BitVec 32) ValueCell!1809)) (size!4002 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2526 0))(
  ( (LongMapFixedSize!2527 (defaultEntry!3755 Int) (mask!8825 (_ BitVec 32)) (extraKeys!3492 (_ BitVec 32)) (zeroValue!3596 V!5387) (minValue!3596 V!5387) (_size!1312 (_ BitVec 32)) (_keys!5677 array!7804) (_values!3738 array!7806) (_vacant!1312 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2526)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!183679 (= res!86948 (validMask!0 (mask!8825 thiss!1248)))))

(declare-fun b!183680 () Bool)

(declare-fun e!120933 () Bool)

(declare-fun e!120932 () Bool)

(declare-fun mapRes!7395 () Bool)

(assert (=> b!183680 (= e!120933 (and e!120932 mapRes!7395))))

(declare-fun condMapEmpty!7395 () Bool)

(declare-fun mapDefault!7395 () ValueCell!1809)

(assert (=> b!183680 (= condMapEmpty!7395 (= (arr!3689 (_values!3738 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1809)) mapDefault!7395)))))

(declare-fun b!183682 () Bool)

(declare-fun tp_is_empty!4305 () Bool)

(assert (=> b!183682 (= e!120932 tp_is_empty!4305)))

(declare-fun b!183683 () Bool)

(declare-fun res!86945 () Bool)

(declare-fun e!120934 () Bool)

(assert (=> b!183683 (=> (not res!86945) (not e!120934))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!183683 (= res!86945 (not (= key!828 (bvneg key!828))))))

(declare-fun b!183684 () Bool)

(declare-fun e!120931 () Bool)

(assert (=> b!183684 (= e!120931 tp_is_empty!4305)))

(declare-fun b!183685 () Bool)

(assert (=> b!183685 (= e!120934 e!120935)))

(declare-fun res!86944 () Bool)

(assert (=> b!183685 (=> (not res!86944) (not e!120935))))

(declare-datatypes ((SeekEntryResult!632 0))(
  ( (MissingZero!632 (index!4698 (_ BitVec 32))) (Found!632 (index!4699 (_ BitVec 32))) (Intermediate!632 (undefined!1444 Bool) (index!4700 (_ BitVec 32)) (x!20012 (_ BitVec 32))) (Undefined!632) (MissingVacant!632 (index!4701 (_ BitVec 32))) )
))
(declare-fun lt!90850 () SeekEntryResult!632)

(get-info :version)

(assert (=> b!183685 (= res!86944 (and (not ((_ is Undefined!632) lt!90850)) (not ((_ is MissingVacant!632) lt!90850)) (not ((_ is MissingZero!632) lt!90850)) ((_ is Found!632) lt!90850)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7804 (_ BitVec 32)) SeekEntryResult!632)

(assert (=> b!183685 (= lt!90850 (seekEntryOrOpen!0 key!828 (_keys!5677 thiss!1248) (mask!8825 thiss!1248)))))

(declare-fun e!120930 () Bool)

(declare-fun array_inv!2377 (array!7804) Bool)

(declare-fun array_inv!2378 (array!7806) Bool)

(assert (=> b!183686 (= e!120930 (and tp!16373 tp_is_empty!4305 (array_inv!2377 (_keys!5677 thiss!1248)) (array_inv!2378 (_values!3738 thiss!1248)) e!120933))))

(declare-fun b!183687 () Bool)

(assert (=> b!183687 (= e!120935 (and (= (size!4002 (_values!3738 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8825 thiss!1248))) (not (= (size!4001 (_keys!5677 thiss!1248)) (size!4002 (_values!3738 thiss!1248))))))))

(declare-fun mapNonEmpty!7395 () Bool)

(declare-fun tp!16374 () Bool)

(assert (=> mapNonEmpty!7395 (= mapRes!7395 (and tp!16374 e!120931))))

(declare-fun mapValue!7395 () ValueCell!1809)

(declare-fun mapKey!7395 () (_ BitVec 32))

(declare-fun mapRest!7395 () (Array (_ BitVec 32) ValueCell!1809))

(assert (=> mapNonEmpty!7395 (= (arr!3689 (_values!3738 thiss!1248)) (store mapRest!7395 mapKey!7395 mapValue!7395))))

(declare-fun mapIsEmpty!7395 () Bool)

(assert (=> mapIsEmpty!7395 mapRes!7395))

(declare-fun res!86947 () Bool)

(assert (=> start!18552 (=> (not res!86947) (not e!120934))))

(declare-fun valid!1037 (LongMapFixedSize!2526) Bool)

(assert (=> start!18552 (= res!86947 (valid!1037 thiss!1248))))

(assert (=> start!18552 e!120934))

(assert (=> start!18552 e!120930))

(assert (=> start!18552 true))

(declare-fun b!183681 () Bool)

(declare-fun res!86946 () Bool)

(assert (=> b!183681 (=> (not res!86946) (not e!120935))))

(declare-datatypes ((tuple2!3420 0))(
  ( (tuple2!3421 (_1!1720 (_ BitVec 64)) (_2!1720 V!5387)) )
))
(declare-datatypes ((List!2360 0))(
  ( (Nil!2357) (Cons!2356 (h!2986 tuple2!3420) (t!7238 List!2360)) )
))
(declare-datatypes ((ListLongMap!2351 0))(
  ( (ListLongMap!2352 (toList!1191 List!2360)) )
))
(declare-fun contains!1273 (ListLongMap!2351 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!834 (array!7804 array!7806 (_ BitVec 32) (_ BitVec 32) V!5387 V!5387 (_ BitVec 32) Int) ListLongMap!2351)

(assert (=> b!183681 (= res!86946 (not (contains!1273 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)) key!828)))))

(assert (= (and start!18552 res!86947) b!183683))

(assert (= (and b!183683 res!86945) b!183685))

(assert (= (and b!183685 res!86944) b!183681))

(assert (= (and b!183681 res!86946) b!183679))

(assert (= (and b!183679 res!86948) b!183687))

(assert (= (and b!183680 condMapEmpty!7395) mapIsEmpty!7395))

(assert (= (and b!183680 (not condMapEmpty!7395)) mapNonEmpty!7395))

(assert (= (and mapNonEmpty!7395 ((_ is ValueCellFull!1809) mapValue!7395)) b!183684))

(assert (= (and b!183680 ((_ is ValueCellFull!1809) mapDefault!7395)) b!183682))

(assert (= b!183686 b!183680))

(assert (= start!18552 b!183686))

(declare-fun m!211181 () Bool)

(assert (=> b!183681 m!211181))

(assert (=> b!183681 m!211181))

(declare-fun m!211183 () Bool)

(assert (=> b!183681 m!211183))

(declare-fun m!211185 () Bool)

(assert (=> b!183679 m!211185))

(declare-fun m!211187 () Bool)

(assert (=> mapNonEmpty!7395 m!211187))

(declare-fun m!211189 () Bool)

(assert (=> b!183686 m!211189))

(declare-fun m!211191 () Bool)

(assert (=> b!183686 m!211191))

(declare-fun m!211193 () Bool)

(assert (=> start!18552 m!211193))

(declare-fun m!211195 () Bool)

(assert (=> b!183685 m!211195))

(check-sat (not b!183686) (not mapNonEmpty!7395) tp_is_empty!4305 (not b_next!4533) (not b!183679) (not b!183681) b_and!11127 (not b!183685) (not start!18552))
(check-sat b_and!11127 (not b_next!4533))
(get-model)

(declare-fun d!54709 () Bool)

(declare-fun res!86970 () Bool)

(declare-fun e!120960 () Bool)

(assert (=> d!54709 (=> (not res!86970) (not e!120960))))

(declare-fun simpleValid!175 (LongMapFixedSize!2526) Bool)

(assert (=> d!54709 (= res!86970 (simpleValid!175 thiss!1248))))

(assert (=> d!54709 (= (valid!1037 thiss!1248) e!120960)))

(declare-fun b!183721 () Bool)

(declare-fun res!86971 () Bool)

(assert (=> b!183721 (=> (not res!86971) (not e!120960))))

(declare-fun arrayCountValidKeys!0 (array!7804 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!183721 (= res!86971 (= (arrayCountValidKeys!0 (_keys!5677 thiss!1248) #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))) (_size!1312 thiss!1248)))))

(declare-fun b!183722 () Bool)

(declare-fun res!86972 () Bool)

(assert (=> b!183722 (=> (not res!86972) (not e!120960))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7804 (_ BitVec 32)) Bool)

(assert (=> b!183722 (= res!86972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5677 thiss!1248) (mask!8825 thiss!1248)))))

(declare-fun b!183723 () Bool)

(declare-datatypes ((List!2361 0))(
  ( (Nil!2358) (Cons!2357 (h!2987 (_ BitVec 64)) (t!7241 List!2361)) )
))
(declare-fun arrayNoDuplicates!0 (array!7804 (_ BitVec 32) List!2361) Bool)

(assert (=> b!183723 (= e!120960 (arrayNoDuplicates!0 (_keys!5677 thiss!1248) #b00000000000000000000000000000000 Nil!2358))))

(assert (= (and d!54709 res!86970) b!183721))

(assert (= (and b!183721 res!86971) b!183722))

(assert (= (and b!183722 res!86972) b!183723))

(declare-fun m!211213 () Bool)

(assert (=> d!54709 m!211213))

(declare-fun m!211215 () Bool)

(assert (=> b!183721 m!211215))

(declare-fun m!211217 () Bool)

(assert (=> b!183722 m!211217))

(declare-fun m!211219 () Bool)

(assert (=> b!183723 m!211219))

(assert (=> start!18552 d!54709))

(declare-fun d!54711 () Bool)

(assert (=> d!54711 (= (array_inv!2377 (_keys!5677 thiss!1248)) (bvsge (size!4001 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!183686 d!54711))

(declare-fun d!54713 () Bool)

(assert (=> d!54713 (= (array_inv!2378 (_values!3738 thiss!1248)) (bvsge (size!4002 (_values!3738 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!183686 d!54713))

(declare-fun d!54715 () Bool)

(declare-fun e!120966 () Bool)

(assert (=> d!54715 e!120966))

(declare-fun res!86975 () Bool)

(assert (=> d!54715 (=> res!86975 e!120966)))

(declare-fun lt!90864 () Bool)

(assert (=> d!54715 (= res!86975 (not lt!90864))))

(declare-fun lt!90862 () Bool)

(assert (=> d!54715 (= lt!90864 lt!90862)))

(declare-datatypes ((Unit!5553 0))(
  ( (Unit!5554) )
))
(declare-fun lt!90865 () Unit!5553)

(declare-fun e!120965 () Unit!5553)

(assert (=> d!54715 (= lt!90865 e!120965)))

(declare-fun c!32916 () Bool)

(assert (=> d!54715 (= c!32916 lt!90862)))

(declare-fun containsKey!220 (List!2360 (_ BitVec 64)) Bool)

(assert (=> d!54715 (= lt!90862 (containsKey!220 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))) key!828))))

(assert (=> d!54715 (= (contains!1273 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)) key!828) lt!90864)))

(declare-fun b!183730 () Bool)

(declare-fun lt!90863 () Unit!5553)

(assert (=> b!183730 (= e!120965 lt!90863)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!169 (List!2360 (_ BitVec 64)) Unit!5553)

(assert (=> b!183730 (= lt!90863 (lemmaContainsKeyImpliesGetValueByKeyDefined!169 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))) key!828))))

(declare-datatypes ((Option!222 0))(
  ( (Some!221 (v!4099 V!5387)) (None!220) )
))
(declare-fun isDefined!170 (Option!222) Bool)

(declare-fun getValueByKey!216 (List!2360 (_ BitVec 64)) Option!222)

(assert (=> b!183730 (isDefined!170 (getValueByKey!216 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))) key!828))))

(declare-fun b!183731 () Bool)

(declare-fun Unit!5555 () Unit!5553)

(assert (=> b!183731 (= e!120965 Unit!5555)))

(declare-fun b!183732 () Bool)

(assert (=> b!183732 (= e!120966 (isDefined!170 (getValueByKey!216 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))) key!828)))))

(assert (= (and d!54715 c!32916) b!183730))

(assert (= (and d!54715 (not c!32916)) b!183731))

(assert (= (and d!54715 (not res!86975)) b!183732))

(declare-fun m!211221 () Bool)

(assert (=> d!54715 m!211221))

(declare-fun m!211223 () Bool)

(assert (=> b!183730 m!211223))

(declare-fun m!211225 () Bool)

(assert (=> b!183730 m!211225))

(assert (=> b!183730 m!211225))

(declare-fun m!211227 () Bool)

(assert (=> b!183730 m!211227))

(assert (=> b!183732 m!211225))

(assert (=> b!183732 m!211225))

(assert (=> b!183732 m!211227))

(assert (=> b!183681 d!54715))

(declare-fun bm!18551 () Bool)

(declare-fun call!18554 () ListLongMap!2351)

(declare-fun call!18557 () ListLongMap!2351)

(assert (=> bm!18551 (= call!18554 call!18557)))

(declare-fun b!183775 () Bool)

(declare-fun e!121004 () Bool)

(declare-fun lt!90927 () ListLongMap!2351)

(declare-fun apply!160 (ListLongMap!2351 (_ BitVec 64)) V!5387)

(declare-fun get!2115 (ValueCell!1809 V!5387) V!5387)

(declare-fun dynLambda!498 (Int (_ BitVec 64)) V!5387)

(assert (=> b!183775 (= e!121004 (= (apply!160 lt!90927 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)) (get!2115 (select (arr!3689 (_values!3738 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!498 (defaultEntry!3755 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!183775 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4002 (_values!3738 thiss!1248))))))

(assert (=> b!183775 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))))))

(declare-fun bm!18552 () Bool)

(declare-fun call!18558 () Bool)

(assert (=> bm!18552 (= call!18558 (contains!1273 lt!90927 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!183776 () Bool)

(declare-fun e!121000 () Unit!5553)

(declare-fun lt!90920 () Unit!5553)

(assert (=> b!183776 (= e!121000 lt!90920)))

(declare-fun lt!90922 () ListLongMap!2351)

(declare-fun getCurrentListMapNoExtraKeys!190 (array!7804 array!7806 (_ BitVec 32) (_ BitVec 32) V!5387 V!5387 (_ BitVec 32) Int) ListLongMap!2351)

(assert (=> b!183776 (= lt!90922 (getCurrentListMapNoExtraKeys!190 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)))))

(declare-fun lt!90911 () (_ BitVec 64))

(assert (=> b!183776 (= lt!90911 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90930 () (_ BitVec 64))

(assert (=> b!183776 (= lt!90930 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90925 () Unit!5553)

(declare-fun addStillContains!136 (ListLongMap!2351 (_ BitVec 64) V!5387 (_ BitVec 64)) Unit!5553)

(assert (=> b!183776 (= lt!90925 (addStillContains!136 lt!90922 lt!90911 (zeroValue!3596 thiss!1248) lt!90930))))

(declare-fun +!275 (ListLongMap!2351 tuple2!3420) ListLongMap!2351)

(assert (=> b!183776 (contains!1273 (+!275 lt!90922 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248))) lt!90930)))

(declare-fun lt!90923 () Unit!5553)

(assert (=> b!183776 (= lt!90923 lt!90925)))

(declare-fun lt!90913 () ListLongMap!2351)

(assert (=> b!183776 (= lt!90913 (getCurrentListMapNoExtraKeys!190 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)))))

(declare-fun lt!90918 () (_ BitVec 64))

(assert (=> b!183776 (= lt!90918 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90926 () (_ BitVec 64))

(assert (=> b!183776 (= lt!90926 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90919 () Unit!5553)

(declare-fun addApplyDifferent!136 (ListLongMap!2351 (_ BitVec 64) V!5387 (_ BitVec 64)) Unit!5553)

(assert (=> b!183776 (= lt!90919 (addApplyDifferent!136 lt!90913 lt!90918 (minValue!3596 thiss!1248) lt!90926))))

(assert (=> b!183776 (= (apply!160 (+!275 lt!90913 (tuple2!3421 lt!90918 (minValue!3596 thiss!1248))) lt!90926) (apply!160 lt!90913 lt!90926))))

(declare-fun lt!90929 () Unit!5553)

(assert (=> b!183776 (= lt!90929 lt!90919)))

(declare-fun lt!90916 () ListLongMap!2351)

(assert (=> b!183776 (= lt!90916 (getCurrentListMapNoExtraKeys!190 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)))))

(declare-fun lt!90910 () (_ BitVec 64))

(assert (=> b!183776 (= lt!90910 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90921 () (_ BitVec 64))

(assert (=> b!183776 (= lt!90921 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90912 () Unit!5553)

(assert (=> b!183776 (= lt!90912 (addApplyDifferent!136 lt!90916 lt!90910 (zeroValue!3596 thiss!1248) lt!90921))))

(assert (=> b!183776 (= (apply!160 (+!275 lt!90916 (tuple2!3421 lt!90910 (zeroValue!3596 thiss!1248))) lt!90921) (apply!160 lt!90916 lt!90921))))

(declare-fun lt!90914 () Unit!5553)

(assert (=> b!183776 (= lt!90914 lt!90912)))

(declare-fun lt!90915 () ListLongMap!2351)

(assert (=> b!183776 (= lt!90915 (getCurrentListMapNoExtraKeys!190 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)))))

(declare-fun lt!90931 () (_ BitVec 64))

(assert (=> b!183776 (= lt!90931 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90917 () (_ BitVec 64))

(assert (=> b!183776 (= lt!90917 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!183776 (= lt!90920 (addApplyDifferent!136 lt!90915 lt!90931 (minValue!3596 thiss!1248) lt!90917))))

(assert (=> b!183776 (= (apply!160 (+!275 lt!90915 (tuple2!3421 lt!90931 (minValue!3596 thiss!1248))) lt!90917) (apply!160 lt!90915 lt!90917))))

(declare-fun b!183777 () Bool)

(declare-fun Unit!5556 () Unit!5553)

(assert (=> b!183777 (= e!121000 Unit!5556)))

(declare-fun b!183778 () Bool)

(declare-fun e!120995 () ListLongMap!2351)

(declare-fun call!18556 () ListLongMap!2351)

(assert (=> b!183778 (= e!120995 call!18556)))

(declare-fun b!183779 () Bool)

(declare-fun e!120998 () ListLongMap!2351)

(assert (=> b!183779 (= e!120998 (+!275 call!18557 (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248))))))

(declare-fun b!183780 () Bool)

(declare-fun e!120993 () Bool)

(declare-fun e!121001 () Bool)

(assert (=> b!183780 (= e!120993 e!121001)))

(declare-fun c!32929 () Bool)

(assert (=> b!183780 (= c!32929 (not (= (bvand (extraKeys!3492 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18553 () Bool)

(declare-fun call!18555 () ListLongMap!2351)

(assert (=> bm!18553 (= call!18556 call!18555)))

(declare-fun b!183782 () Bool)

(declare-fun res!86995 () Bool)

(assert (=> b!183782 (=> (not res!86995) (not e!120993))))

(declare-fun e!120994 () Bool)

(assert (=> b!183782 (= res!86995 e!120994)))

(declare-fun c!32934 () Bool)

(assert (=> b!183782 (= c!32934 (not (= (bvand (extraKeys!3492 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!183783 () Bool)

(declare-fun e!121002 () Bool)

(assert (=> b!183783 (= e!121002 (= (apply!160 lt!90927 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3596 thiss!1248)))))

(declare-fun bm!18554 () Bool)

(declare-fun call!18559 () ListLongMap!2351)

(assert (=> bm!18554 (= call!18559 (getCurrentListMapNoExtraKeys!190 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)))))

(declare-fun b!183784 () Bool)

(declare-fun e!120996 () Bool)

(assert (=> b!183784 (= e!121001 e!120996)))

(declare-fun res!86997 () Bool)

(assert (=> b!183784 (= res!86997 call!18558)))

(assert (=> b!183784 (=> (not res!86997) (not e!120996))))

(declare-fun b!183785 () Bool)

(assert (=> b!183785 (= e!121001 (not call!18558))))

(declare-fun bm!18555 () Bool)

(declare-fun call!18560 () Bool)

(assert (=> bm!18555 (= call!18560 (contains!1273 lt!90927 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!183786 () Bool)

(declare-fun res!87001 () Bool)

(assert (=> b!183786 (=> (not res!87001) (not e!120993))))

(declare-fun e!121005 () Bool)

(assert (=> b!183786 (= res!87001 e!121005)))

(declare-fun res!86998 () Bool)

(assert (=> b!183786 (=> res!86998 e!121005)))

(declare-fun e!121003 () Bool)

(assert (=> b!183786 (= res!86998 (not e!121003))))

(declare-fun res!86994 () Bool)

(assert (=> b!183786 (=> (not res!86994) (not e!121003))))

(assert (=> b!183786 (= res!86994 (bvslt #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))))))

(declare-fun b!183787 () Bool)

(assert (=> b!183787 (= e!120996 (= (apply!160 lt!90927 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3596 thiss!1248)))))

(declare-fun b!183788 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!183788 (= e!121003 (validKeyInArray!0 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183789 () Bool)

(declare-fun c!32930 () Bool)

(assert (=> b!183789 (= c!32930 (and (not (= (bvand (extraKeys!3492 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3492 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!120999 () ListLongMap!2351)

(assert (=> b!183789 (= e!120999 e!120995)))

(declare-fun b!183790 () Bool)

(assert (=> b!183790 (= e!120999 call!18554)))

(declare-fun b!183791 () Bool)

(assert (=> b!183791 (= e!121005 e!121004)))

(declare-fun res!86999 () Bool)

(assert (=> b!183791 (=> (not res!86999) (not e!121004))))

(assert (=> b!183791 (= res!86999 (contains!1273 lt!90927 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!183791 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))))))

(declare-fun bm!18556 () Bool)

(assert (=> bm!18556 (= call!18555 call!18559)))

(declare-fun b!183792 () Bool)

(declare-fun e!120997 () Bool)

(assert (=> b!183792 (= e!120997 (validKeyInArray!0 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183793 () Bool)

(assert (=> b!183793 (= e!120998 e!120999)))

(declare-fun c!32931 () Bool)

(assert (=> b!183793 (= c!32931 (and (not (= (bvand (extraKeys!3492 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3492 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18557 () Bool)

(declare-fun c!32933 () Bool)

(assert (=> bm!18557 (= call!18557 (+!275 (ite c!32933 call!18559 (ite c!32931 call!18555 call!18556)) (ite (or c!32933 c!32931) (tuple2!3421 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3596 thiss!1248)) (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248)))))))

(declare-fun b!183794 () Bool)

(assert (=> b!183794 (= e!120994 (not call!18560))))

(declare-fun b!183795 () Bool)

(assert (=> b!183795 (= e!120994 e!121002)))

(declare-fun res!87002 () Bool)

(assert (=> b!183795 (= res!87002 call!18560)))

(assert (=> b!183795 (=> (not res!87002) (not e!121002))))

(declare-fun b!183781 () Bool)

(assert (=> b!183781 (= e!120995 call!18554)))

(declare-fun d!54717 () Bool)

(assert (=> d!54717 e!120993))

(declare-fun res!86996 () Bool)

(assert (=> d!54717 (=> (not res!86996) (not e!120993))))

(assert (=> d!54717 (= res!86996 (or (bvsge #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))))))))

(declare-fun lt!90924 () ListLongMap!2351)

(assert (=> d!54717 (= lt!90927 lt!90924)))

(declare-fun lt!90928 () Unit!5553)

(assert (=> d!54717 (= lt!90928 e!121000)))

(declare-fun c!32932 () Bool)

(assert (=> d!54717 (= c!32932 e!120997)))

(declare-fun res!87000 () Bool)

(assert (=> d!54717 (=> (not res!87000) (not e!120997))))

(assert (=> d!54717 (= res!87000 (bvslt #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))))))

(assert (=> d!54717 (= lt!90924 e!120998)))

(assert (=> d!54717 (= c!32933 (and (not (= (bvand (extraKeys!3492 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3492 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54717 (validMask!0 (mask!8825 thiss!1248))))

(assert (=> d!54717 (= (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)) lt!90927)))

(assert (= (and d!54717 c!32933) b!183779))

(assert (= (and d!54717 (not c!32933)) b!183793))

(assert (= (and b!183793 c!32931) b!183790))

(assert (= (and b!183793 (not c!32931)) b!183789))

(assert (= (and b!183789 c!32930) b!183781))

(assert (= (and b!183789 (not c!32930)) b!183778))

(assert (= (or b!183781 b!183778) bm!18553))

(assert (= (or b!183790 bm!18553) bm!18556))

(assert (= (or b!183790 b!183781) bm!18551))

(assert (= (or b!183779 bm!18556) bm!18554))

(assert (= (or b!183779 bm!18551) bm!18557))

(assert (= (and d!54717 res!87000) b!183792))

(assert (= (and d!54717 c!32932) b!183776))

(assert (= (and d!54717 (not c!32932)) b!183777))

(assert (= (and d!54717 res!86996) b!183786))

(assert (= (and b!183786 res!86994) b!183788))

(assert (= (and b!183786 (not res!86998)) b!183791))

(assert (= (and b!183791 res!86999) b!183775))

(assert (= (and b!183786 res!87001) b!183782))

(assert (= (and b!183782 c!32934) b!183795))

(assert (= (and b!183782 (not c!32934)) b!183794))

(assert (= (and b!183795 res!87002) b!183783))

(assert (= (or b!183795 b!183794) bm!18555))

(assert (= (and b!183782 res!86995) b!183780))

(assert (= (and b!183780 c!32929) b!183784))

(assert (= (and b!183780 (not c!32929)) b!183785))

(assert (= (and b!183784 res!86997) b!183787))

(assert (= (or b!183784 b!183785) bm!18552))

(declare-fun b_lambda!7233 () Bool)

(assert (=> (not b_lambda!7233) (not b!183775)))

(declare-fun t!7240 () Bool)

(declare-fun tb!2839 () Bool)

(assert (=> (and b!183686 (= (defaultEntry!3755 thiss!1248) (defaultEntry!3755 thiss!1248)) t!7240) tb!2839))

(declare-fun result!4779 () Bool)

(assert (=> tb!2839 (= result!4779 tp_is_empty!4305)))

(assert (=> b!183775 t!7240))

(declare-fun b_and!11131 () Bool)

(assert (= b_and!11127 (and (=> t!7240 result!4779) b_and!11131)))

(declare-fun m!211229 () Bool)

(assert (=> b!183779 m!211229))

(declare-fun m!211231 () Bool)

(assert (=> bm!18552 m!211231))

(declare-fun m!211233 () Bool)

(assert (=> b!183776 m!211233))

(declare-fun m!211235 () Bool)

(assert (=> b!183776 m!211235))

(declare-fun m!211237 () Bool)

(assert (=> b!183776 m!211237))

(declare-fun m!211239 () Bool)

(assert (=> b!183776 m!211239))

(declare-fun m!211241 () Bool)

(assert (=> b!183776 m!211241))

(assert (=> b!183776 m!211239))

(assert (=> b!183776 m!211237))

(declare-fun m!211243 () Bool)

(assert (=> b!183776 m!211243))

(declare-fun m!211245 () Bool)

(assert (=> b!183776 m!211245))

(declare-fun m!211247 () Bool)

(assert (=> b!183776 m!211247))

(declare-fun m!211249 () Bool)

(assert (=> b!183776 m!211249))

(declare-fun m!211251 () Bool)

(assert (=> b!183776 m!211251))

(declare-fun m!211253 () Bool)

(assert (=> b!183776 m!211253))

(assert (=> b!183776 m!211247))

(declare-fun m!211255 () Bool)

(assert (=> b!183776 m!211255))

(declare-fun m!211257 () Bool)

(assert (=> b!183776 m!211257))

(declare-fun m!211259 () Bool)

(assert (=> b!183776 m!211259))

(declare-fun m!211261 () Bool)

(assert (=> b!183776 m!211261))

(assert (=> b!183776 m!211249))

(declare-fun m!211263 () Bool)

(assert (=> b!183776 m!211263))

(declare-fun m!211265 () Bool)

(assert (=> b!183776 m!211265))

(assert (=> b!183791 m!211235))

(assert (=> b!183791 m!211235))

(declare-fun m!211267 () Bool)

(assert (=> b!183791 m!211267))

(assert (=> b!183792 m!211235))

(assert (=> b!183792 m!211235))

(declare-fun m!211269 () Bool)

(assert (=> b!183792 m!211269))

(assert (=> b!183788 m!211235))

(assert (=> b!183788 m!211235))

(assert (=> b!183788 m!211269))

(assert (=> bm!18554 m!211233))

(declare-fun m!211271 () Bool)

(assert (=> bm!18557 m!211271))

(assert (=> d!54717 m!211185))

(declare-fun m!211273 () Bool)

(assert (=> bm!18555 m!211273))

(declare-fun m!211275 () Bool)

(assert (=> b!183787 m!211275))

(declare-fun m!211277 () Bool)

(assert (=> b!183775 m!211277))

(declare-fun m!211279 () Bool)

(assert (=> b!183775 m!211279))

(declare-fun m!211281 () Bool)

(assert (=> b!183775 m!211281))

(assert (=> b!183775 m!211235))

(declare-fun m!211283 () Bool)

(assert (=> b!183775 m!211283))

(assert (=> b!183775 m!211277))

(assert (=> b!183775 m!211235))

(assert (=> b!183775 m!211279))

(declare-fun m!211285 () Bool)

(assert (=> b!183783 m!211285))

(assert (=> b!183681 d!54717))

(declare-fun b!183810 () Bool)

(declare-fun e!121012 () SeekEntryResult!632)

(declare-fun lt!90940 () SeekEntryResult!632)

(assert (=> b!183810 (= e!121012 (Found!632 (index!4700 lt!90940)))))

(declare-fun e!121013 () SeekEntryResult!632)

(declare-fun b!183811 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7804 (_ BitVec 32)) SeekEntryResult!632)

(assert (=> b!183811 (= e!121013 (seekKeyOrZeroReturnVacant!0 (x!20012 lt!90940) (index!4700 lt!90940) (index!4700 lt!90940) key!828 (_keys!5677 thiss!1248) (mask!8825 thiss!1248)))))

(declare-fun b!183812 () Bool)

(declare-fun e!121014 () SeekEntryResult!632)

(assert (=> b!183812 (= e!121014 e!121012)))

(declare-fun lt!90939 () (_ BitVec 64))

(assert (=> b!183812 (= lt!90939 (select (arr!3688 (_keys!5677 thiss!1248)) (index!4700 lt!90940)))))

(declare-fun c!32941 () Bool)

(assert (=> b!183812 (= c!32941 (= lt!90939 key!828))))

(declare-fun d!54719 () Bool)

(declare-fun lt!90938 () SeekEntryResult!632)

(assert (=> d!54719 (and (or ((_ is Undefined!632) lt!90938) (not ((_ is Found!632) lt!90938)) (and (bvsge (index!4699 lt!90938) #b00000000000000000000000000000000) (bvslt (index!4699 lt!90938) (size!4001 (_keys!5677 thiss!1248))))) (or ((_ is Undefined!632) lt!90938) ((_ is Found!632) lt!90938) (not ((_ is MissingZero!632) lt!90938)) (and (bvsge (index!4698 lt!90938) #b00000000000000000000000000000000) (bvslt (index!4698 lt!90938) (size!4001 (_keys!5677 thiss!1248))))) (or ((_ is Undefined!632) lt!90938) ((_ is Found!632) lt!90938) ((_ is MissingZero!632) lt!90938) (not ((_ is MissingVacant!632) lt!90938)) (and (bvsge (index!4701 lt!90938) #b00000000000000000000000000000000) (bvslt (index!4701 lt!90938) (size!4001 (_keys!5677 thiss!1248))))) (or ((_ is Undefined!632) lt!90938) (ite ((_ is Found!632) lt!90938) (= (select (arr!3688 (_keys!5677 thiss!1248)) (index!4699 lt!90938)) key!828) (ite ((_ is MissingZero!632) lt!90938) (= (select (arr!3688 (_keys!5677 thiss!1248)) (index!4698 lt!90938)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!632) lt!90938) (= (select (arr!3688 (_keys!5677 thiss!1248)) (index!4701 lt!90938)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54719 (= lt!90938 e!121014)))

(declare-fun c!32943 () Bool)

(assert (=> d!54719 (= c!32943 (and ((_ is Intermediate!632) lt!90940) (undefined!1444 lt!90940)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7804 (_ BitVec 32)) SeekEntryResult!632)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54719 (= lt!90940 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8825 thiss!1248)) key!828 (_keys!5677 thiss!1248) (mask!8825 thiss!1248)))))

(assert (=> d!54719 (validMask!0 (mask!8825 thiss!1248))))

(assert (=> d!54719 (= (seekEntryOrOpen!0 key!828 (_keys!5677 thiss!1248) (mask!8825 thiss!1248)) lt!90938)))

(declare-fun b!183813 () Bool)

(assert (=> b!183813 (= e!121014 Undefined!632)))

(declare-fun b!183814 () Bool)

(assert (=> b!183814 (= e!121013 (MissingZero!632 (index!4700 lt!90940)))))

(declare-fun b!183815 () Bool)

(declare-fun c!32942 () Bool)

(assert (=> b!183815 (= c!32942 (= lt!90939 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!183815 (= e!121012 e!121013)))

(assert (= (and d!54719 c!32943) b!183813))

(assert (= (and d!54719 (not c!32943)) b!183812))

(assert (= (and b!183812 c!32941) b!183810))

(assert (= (and b!183812 (not c!32941)) b!183815))

(assert (= (and b!183815 c!32942) b!183814))

(assert (= (and b!183815 (not c!32942)) b!183811))

(declare-fun m!211287 () Bool)

(assert (=> b!183811 m!211287))

(declare-fun m!211289 () Bool)

(assert (=> b!183812 m!211289))

(declare-fun m!211291 () Bool)

(assert (=> d!54719 m!211291))

(assert (=> d!54719 m!211185))

(declare-fun m!211293 () Bool)

(assert (=> d!54719 m!211293))

(declare-fun m!211295 () Bool)

(assert (=> d!54719 m!211295))

(assert (=> d!54719 m!211291))

(declare-fun m!211297 () Bool)

(assert (=> d!54719 m!211297))

(declare-fun m!211299 () Bool)

(assert (=> d!54719 m!211299))

(assert (=> b!183685 d!54719))

(declare-fun d!54721 () Bool)

(assert (=> d!54721 (= (validMask!0 (mask!8825 thiss!1248)) (and (or (= (mask!8825 thiss!1248) #b00000000000000000000000000000111) (= (mask!8825 thiss!1248) #b00000000000000000000000000001111) (= (mask!8825 thiss!1248) #b00000000000000000000000000011111) (= (mask!8825 thiss!1248) #b00000000000000000000000000111111) (= (mask!8825 thiss!1248) #b00000000000000000000000001111111) (= (mask!8825 thiss!1248) #b00000000000000000000000011111111) (= (mask!8825 thiss!1248) #b00000000000000000000000111111111) (= (mask!8825 thiss!1248) #b00000000000000000000001111111111) (= (mask!8825 thiss!1248) #b00000000000000000000011111111111) (= (mask!8825 thiss!1248) #b00000000000000000000111111111111) (= (mask!8825 thiss!1248) #b00000000000000000001111111111111) (= (mask!8825 thiss!1248) #b00000000000000000011111111111111) (= (mask!8825 thiss!1248) #b00000000000000000111111111111111) (= (mask!8825 thiss!1248) #b00000000000000001111111111111111) (= (mask!8825 thiss!1248) #b00000000000000011111111111111111) (= (mask!8825 thiss!1248) #b00000000000000111111111111111111) (= (mask!8825 thiss!1248) #b00000000000001111111111111111111) (= (mask!8825 thiss!1248) #b00000000000011111111111111111111) (= (mask!8825 thiss!1248) #b00000000000111111111111111111111) (= (mask!8825 thiss!1248) #b00000000001111111111111111111111) (= (mask!8825 thiss!1248) #b00000000011111111111111111111111) (= (mask!8825 thiss!1248) #b00000000111111111111111111111111) (= (mask!8825 thiss!1248) #b00000001111111111111111111111111) (= (mask!8825 thiss!1248) #b00000011111111111111111111111111) (= (mask!8825 thiss!1248) #b00000111111111111111111111111111) (= (mask!8825 thiss!1248) #b00001111111111111111111111111111) (= (mask!8825 thiss!1248) #b00011111111111111111111111111111) (= (mask!8825 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8825 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!183679 d!54721))

(declare-fun b!183822 () Bool)

(declare-fun e!121020 () Bool)

(assert (=> b!183822 (= e!121020 tp_is_empty!4305)))

(declare-fun b!183823 () Bool)

(declare-fun e!121019 () Bool)

(assert (=> b!183823 (= e!121019 tp_is_empty!4305)))

(declare-fun mapNonEmpty!7401 () Bool)

(declare-fun mapRes!7401 () Bool)

(declare-fun tp!16383 () Bool)

(assert (=> mapNonEmpty!7401 (= mapRes!7401 (and tp!16383 e!121020))))

(declare-fun mapRest!7401 () (Array (_ BitVec 32) ValueCell!1809))

(declare-fun mapKey!7401 () (_ BitVec 32))

(declare-fun mapValue!7401 () ValueCell!1809)

(assert (=> mapNonEmpty!7401 (= mapRest!7395 (store mapRest!7401 mapKey!7401 mapValue!7401))))

(declare-fun mapIsEmpty!7401 () Bool)

(assert (=> mapIsEmpty!7401 mapRes!7401))

(declare-fun condMapEmpty!7401 () Bool)

(declare-fun mapDefault!7401 () ValueCell!1809)

(assert (=> mapNonEmpty!7395 (= condMapEmpty!7401 (= mapRest!7395 ((as const (Array (_ BitVec 32) ValueCell!1809)) mapDefault!7401)))))

(assert (=> mapNonEmpty!7395 (= tp!16374 (and e!121019 mapRes!7401))))

(assert (= (and mapNonEmpty!7395 condMapEmpty!7401) mapIsEmpty!7401))

(assert (= (and mapNonEmpty!7395 (not condMapEmpty!7401)) mapNonEmpty!7401))

(assert (= (and mapNonEmpty!7401 ((_ is ValueCellFull!1809) mapValue!7401)) b!183822))

(assert (= (and mapNonEmpty!7395 ((_ is ValueCellFull!1809) mapDefault!7401)) b!183823))

(declare-fun m!211301 () Bool)

(assert (=> mapNonEmpty!7401 m!211301))

(declare-fun b_lambda!7235 () Bool)

(assert (= b_lambda!7233 (or (and b!183686 b_free!4533) b_lambda!7235)))

(check-sat (not b!183723) (not b_lambda!7235) (not bm!18557) (not bm!18552) (not d!54717) (not b!183783) (not b_next!4533) (not d!54719) (not bm!18555) (not b!183721) (not d!54715) (not b!183779) (not b!183775) (not b!183776) (not b!183791) (not b!183811) (not mapNonEmpty!7401) (not b!183787) (not d!54709) tp_is_empty!4305 (not b!183722) (not b!183732) (not bm!18554) (not b!183730) (not b!183792) b_and!11131 (not b!183788))
(check-sat b_and!11131 (not b_next!4533))
(get-model)

(declare-fun d!54723 () Bool)

(declare-fun e!121023 () Bool)

(assert (=> d!54723 e!121023))

(declare-fun res!87007 () Bool)

(assert (=> d!54723 (=> (not res!87007) (not e!121023))))

(declare-fun lt!90949 () ListLongMap!2351)

(assert (=> d!54723 (= res!87007 (contains!1273 lt!90949 (_1!1720 (ite (or c!32933 c!32931) (tuple2!3421 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3596 thiss!1248)) (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248))))))))

(declare-fun lt!90950 () List!2360)

(assert (=> d!54723 (= lt!90949 (ListLongMap!2352 lt!90950))))

(declare-fun lt!90951 () Unit!5553)

(declare-fun lt!90952 () Unit!5553)

(assert (=> d!54723 (= lt!90951 lt!90952)))

(assert (=> d!54723 (= (getValueByKey!216 lt!90950 (_1!1720 (ite (or c!32933 c!32931) (tuple2!3421 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3596 thiss!1248)) (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248))))) (Some!221 (_2!1720 (ite (or c!32933 c!32931) (tuple2!3421 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3596 thiss!1248)) (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!115 (List!2360 (_ BitVec 64) V!5387) Unit!5553)

(assert (=> d!54723 (= lt!90952 (lemmaContainsTupThenGetReturnValue!115 lt!90950 (_1!1720 (ite (or c!32933 c!32931) (tuple2!3421 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3596 thiss!1248)) (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248)))) (_2!1720 (ite (or c!32933 c!32931) (tuple2!3421 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3596 thiss!1248)) (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248))))))))

(declare-fun insertStrictlySorted!117 (List!2360 (_ BitVec 64) V!5387) List!2360)

(assert (=> d!54723 (= lt!90950 (insertStrictlySorted!117 (toList!1191 (ite c!32933 call!18559 (ite c!32931 call!18555 call!18556))) (_1!1720 (ite (or c!32933 c!32931) (tuple2!3421 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3596 thiss!1248)) (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248)))) (_2!1720 (ite (or c!32933 c!32931) (tuple2!3421 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3596 thiss!1248)) (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248))))))))

(assert (=> d!54723 (= (+!275 (ite c!32933 call!18559 (ite c!32931 call!18555 call!18556)) (ite (or c!32933 c!32931) (tuple2!3421 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3596 thiss!1248)) (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248)))) lt!90949)))

(declare-fun b!183828 () Bool)

(declare-fun res!87008 () Bool)

(assert (=> b!183828 (=> (not res!87008) (not e!121023))))

(assert (=> b!183828 (= res!87008 (= (getValueByKey!216 (toList!1191 lt!90949) (_1!1720 (ite (or c!32933 c!32931) (tuple2!3421 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3596 thiss!1248)) (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248))))) (Some!221 (_2!1720 (ite (or c!32933 c!32931) (tuple2!3421 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3596 thiss!1248)) (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248)))))))))

(declare-fun b!183829 () Bool)

(declare-fun contains!1274 (List!2360 tuple2!3420) Bool)

(assert (=> b!183829 (= e!121023 (contains!1274 (toList!1191 lt!90949) (ite (or c!32933 c!32931) (tuple2!3421 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3596 thiss!1248)) (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248)))))))

(assert (= (and d!54723 res!87007) b!183828))

(assert (= (and b!183828 res!87008) b!183829))

(declare-fun m!211303 () Bool)

(assert (=> d!54723 m!211303))

(declare-fun m!211305 () Bool)

(assert (=> d!54723 m!211305))

(declare-fun m!211307 () Bool)

(assert (=> d!54723 m!211307))

(declare-fun m!211309 () Bool)

(assert (=> d!54723 m!211309))

(declare-fun m!211311 () Bool)

(assert (=> b!183828 m!211311))

(declare-fun m!211313 () Bool)

(assert (=> b!183829 m!211313))

(assert (=> bm!18557 d!54723))

(declare-fun b!183838 () Bool)

(declare-fun e!121030 () Bool)

(declare-fun e!121032 () Bool)

(assert (=> b!183838 (= e!121030 e!121032)))

(declare-fun lt!90960 () (_ BitVec 64))

(assert (=> b!183838 (= lt!90960 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90961 () Unit!5553)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7804 (_ BitVec 64) (_ BitVec 32)) Unit!5553)

(assert (=> b!183838 (= lt!90961 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5677 thiss!1248) lt!90960 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!183838 (arrayContainsKey!0 (_keys!5677 thiss!1248) lt!90960 #b00000000000000000000000000000000)))

(declare-fun lt!90959 () Unit!5553)

(assert (=> b!183838 (= lt!90959 lt!90961)))

(declare-fun res!87014 () Bool)

(assert (=> b!183838 (= res!87014 (= (seekEntryOrOpen!0 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000) (_keys!5677 thiss!1248) (mask!8825 thiss!1248)) (Found!632 #b00000000000000000000000000000000)))))

(assert (=> b!183838 (=> (not res!87014) (not e!121032))))

(declare-fun bm!18560 () Bool)

(declare-fun call!18563 () Bool)

(assert (=> bm!18560 (= call!18563 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5677 thiss!1248) (mask!8825 thiss!1248)))))

(declare-fun b!183839 () Bool)

(assert (=> b!183839 (= e!121032 call!18563)))

(declare-fun d!54725 () Bool)

(declare-fun res!87013 () Bool)

(declare-fun e!121031 () Bool)

(assert (=> d!54725 (=> res!87013 e!121031)))

(assert (=> d!54725 (= res!87013 (bvsge #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))))))

(assert (=> d!54725 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5677 thiss!1248) (mask!8825 thiss!1248)) e!121031)))

(declare-fun b!183840 () Bool)

(assert (=> b!183840 (= e!121031 e!121030)))

(declare-fun c!32946 () Bool)

(assert (=> b!183840 (= c!32946 (validKeyInArray!0 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183841 () Bool)

(assert (=> b!183841 (= e!121030 call!18563)))

(assert (= (and d!54725 (not res!87013)) b!183840))

(assert (= (and b!183840 c!32946) b!183838))

(assert (= (and b!183840 (not c!32946)) b!183841))

(assert (= (and b!183838 res!87014) b!183839))

(assert (= (or b!183839 b!183841) bm!18560))

(assert (=> b!183838 m!211235))

(declare-fun m!211315 () Bool)

(assert (=> b!183838 m!211315))

(declare-fun m!211317 () Bool)

(assert (=> b!183838 m!211317))

(assert (=> b!183838 m!211235))

(declare-fun m!211319 () Bool)

(assert (=> b!183838 m!211319))

(declare-fun m!211321 () Bool)

(assert (=> bm!18560 m!211321))

(assert (=> b!183840 m!211235))

(assert (=> b!183840 m!211235))

(assert (=> b!183840 m!211269))

(assert (=> b!183722 d!54725))

(declare-fun d!54727 () Bool)

(declare-fun e!121034 () Bool)

(assert (=> d!54727 e!121034))

(declare-fun res!87015 () Bool)

(assert (=> d!54727 (=> res!87015 e!121034)))

(declare-fun lt!90964 () Bool)

(assert (=> d!54727 (= res!87015 (not lt!90964))))

(declare-fun lt!90962 () Bool)

(assert (=> d!54727 (= lt!90964 lt!90962)))

(declare-fun lt!90965 () Unit!5553)

(declare-fun e!121033 () Unit!5553)

(assert (=> d!54727 (= lt!90965 e!121033)))

(declare-fun c!32947 () Bool)

(assert (=> d!54727 (= c!32947 lt!90962)))

(assert (=> d!54727 (= lt!90962 (containsKey!220 (toList!1191 lt!90927) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54727 (= (contains!1273 lt!90927 #b0000000000000000000000000000000000000000000000000000000000000000) lt!90964)))

(declare-fun b!183842 () Bool)

(declare-fun lt!90963 () Unit!5553)

(assert (=> b!183842 (= e!121033 lt!90963)))

(assert (=> b!183842 (= lt!90963 (lemmaContainsKeyImpliesGetValueByKeyDefined!169 (toList!1191 lt!90927) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!183842 (isDefined!170 (getValueByKey!216 (toList!1191 lt!90927) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!183843 () Bool)

(declare-fun Unit!5557 () Unit!5553)

(assert (=> b!183843 (= e!121033 Unit!5557)))

(declare-fun b!183844 () Bool)

(assert (=> b!183844 (= e!121034 (isDefined!170 (getValueByKey!216 (toList!1191 lt!90927) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54727 c!32947) b!183842))

(assert (= (and d!54727 (not c!32947)) b!183843))

(assert (= (and d!54727 (not res!87015)) b!183844))

(declare-fun m!211323 () Bool)

(assert (=> d!54727 m!211323))

(declare-fun m!211325 () Bool)

(assert (=> b!183842 m!211325))

(declare-fun m!211327 () Bool)

(assert (=> b!183842 m!211327))

(assert (=> b!183842 m!211327))

(declare-fun m!211329 () Bool)

(assert (=> b!183842 m!211329))

(assert (=> b!183844 m!211327))

(assert (=> b!183844 m!211327))

(assert (=> b!183844 m!211329))

(assert (=> bm!18555 d!54727))

(declare-fun b!183855 () Bool)

(declare-fun e!121045 () Bool)

(declare-fun call!18566 () Bool)

(assert (=> b!183855 (= e!121045 call!18566)))

(declare-fun b!183856 () Bool)

(declare-fun e!121043 () Bool)

(assert (=> b!183856 (= e!121043 e!121045)))

(declare-fun c!32950 () Bool)

(assert (=> b!183856 (= c!32950 (validKeyInArray!0 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183857 () Bool)

(declare-fun e!121046 () Bool)

(declare-fun contains!1275 (List!2361 (_ BitVec 64)) Bool)

(assert (=> b!183857 (= e!121046 (contains!1275 Nil!2358 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183858 () Bool)

(declare-fun e!121044 () Bool)

(assert (=> b!183858 (= e!121044 e!121043)))

(declare-fun res!87024 () Bool)

(assert (=> b!183858 (=> (not res!87024) (not e!121043))))

(assert (=> b!183858 (= res!87024 (not e!121046))))

(declare-fun res!87023 () Bool)

(assert (=> b!183858 (=> (not res!87023) (not e!121046))))

(assert (=> b!183858 (= res!87023 (validKeyInArray!0 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18563 () Bool)

(assert (=> bm!18563 (= call!18566 (arrayNoDuplicates!0 (_keys!5677 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!32950 (Cons!2357 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000) Nil!2358) Nil!2358)))))

(declare-fun b!183859 () Bool)

(assert (=> b!183859 (= e!121045 call!18566)))

(declare-fun d!54729 () Bool)

(declare-fun res!87022 () Bool)

(assert (=> d!54729 (=> res!87022 e!121044)))

(assert (=> d!54729 (= res!87022 (bvsge #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))))))

(assert (=> d!54729 (= (arrayNoDuplicates!0 (_keys!5677 thiss!1248) #b00000000000000000000000000000000 Nil!2358) e!121044)))

(assert (= (and d!54729 (not res!87022)) b!183858))

(assert (= (and b!183858 res!87023) b!183857))

(assert (= (and b!183858 res!87024) b!183856))

(assert (= (and b!183856 c!32950) b!183859))

(assert (= (and b!183856 (not c!32950)) b!183855))

(assert (= (or b!183859 b!183855) bm!18563))

(assert (=> b!183856 m!211235))

(assert (=> b!183856 m!211235))

(assert (=> b!183856 m!211269))

(assert (=> b!183857 m!211235))

(assert (=> b!183857 m!211235))

(declare-fun m!211331 () Bool)

(assert (=> b!183857 m!211331))

(assert (=> b!183858 m!211235))

(assert (=> b!183858 m!211235))

(assert (=> b!183858 m!211269))

(assert (=> bm!18563 m!211235))

(declare-fun m!211333 () Bool)

(assert (=> bm!18563 m!211333))

(assert (=> b!183723 d!54729))

(declare-fun b!183868 () Bool)

(declare-fun e!121052 () (_ BitVec 32))

(declare-fun call!18569 () (_ BitVec 32))

(assert (=> b!183868 (= e!121052 (bvadd #b00000000000000000000000000000001 call!18569))))

(declare-fun d!54731 () Bool)

(declare-fun lt!90968 () (_ BitVec 32))

(assert (=> d!54731 (and (bvsge lt!90968 #b00000000000000000000000000000000) (bvsle lt!90968 (bvsub (size!4001 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!121051 () (_ BitVec 32))

(assert (=> d!54731 (= lt!90968 e!121051)))

(declare-fun c!32955 () Bool)

(assert (=> d!54731 (= c!32955 (bvsge #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))))))

(assert (=> d!54731 (and (bvsle #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!4001 (_keys!5677 thiss!1248)) (size!4001 (_keys!5677 thiss!1248))))))

(assert (=> d!54731 (= (arrayCountValidKeys!0 (_keys!5677 thiss!1248) #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))) lt!90968)))

(declare-fun bm!18566 () Bool)

(assert (=> bm!18566 (= call!18569 (arrayCountValidKeys!0 (_keys!5677 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4001 (_keys!5677 thiss!1248))))))

(declare-fun b!183869 () Bool)

(assert (=> b!183869 (= e!121051 e!121052)))

(declare-fun c!32956 () Bool)

(assert (=> b!183869 (= c!32956 (validKeyInArray!0 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183870 () Bool)

(assert (=> b!183870 (= e!121051 #b00000000000000000000000000000000)))

(declare-fun b!183871 () Bool)

(assert (=> b!183871 (= e!121052 call!18569)))

(assert (= (and d!54731 c!32955) b!183870))

(assert (= (and d!54731 (not c!32955)) b!183869))

(assert (= (and b!183869 c!32956) b!183868))

(assert (= (and b!183869 (not c!32956)) b!183871))

(assert (= (or b!183868 b!183871) bm!18566))

(declare-fun m!211335 () Bool)

(assert (=> bm!18566 m!211335))

(assert (=> b!183869 m!211235))

(assert (=> b!183869 m!211235))

(assert (=> b!183869 m!211269))

(assert (=> b!183721 d!54731))

(declare-fun d!54733 () Bool)

(declare-fun e!121054 () Bool)

(assert (=> d!54733 e!121054))

(declare-fun res!87025 () Bool)

(assert (=> d!54733 (=> res!87025 e!121054)))

(declare-fun lt!90971 () Bool)

(assert (=> d!54733 (= res!87025 (not lt!90971))))

(declare-fun lt!90969 () Bool)

(assert (=> d!54733 (= lt!90971 lt!90969)))

(declare-fun lt!90972 () Unit!5553)

(declare-fun e!121053 () Unit!5553)

(assert (=> d!54733 (= lt!90972 e!121053)))

(declare-fun c!32957 () Bool)

(assert (=> d!54733 (= c!32957 lt!90969)))

(assert (=> d!54733 (= lt!90969 (containsKey!220 (toList!1191 lt!90927) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54733 (= (contains!1273 lt!90927 #b1000000000000000000000000000000000000000000000000000000000000000) lt!90971)))

(declare-fun b!183872 () Bool)

(declare-fun lt!90970 () Unit!5553)

(assert (=> b!183872 (= e!121053 lt!90970)))

(assert (=> b!183872 (= lt!90970 (lemmaContainsKeyImpliesGetValueByKeyDefined!169 (toList!1191 lt!90927) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!183872 (isDefined!170 (getValueByKey!216 (toList!1191 lt!90927) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!183873 () Bool)

(declare-fun Unit!5558 () Unit!5553)

(assert (=> b!183873 (= e!121053 Unit!5558)))

(declare-fun b!183874 () Bool)

(assert (=> b!183874 (= e!121054 (isDefined!170 (getValueByKey!216 (toList!1191 lt!90927) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54733 c!32957) b!183872))

(assert (= (and d!54733 (not c!32957)) b!183873))

(assert (= (and d!54733 (not res!87025)) b!183874))

(declare-fun m!211337 () Bool)

(assert (=> d!54733 m!211337))

(declare-fun m!211339 () Bool)

(assert (=> b!183872 m!211339))

(declare-fun m!211341 () Bool)

(assert (=> b!183872 m!211341))

(assert (=> b!183872 m!211341))

(declare-fun m!211343 () Bool)

(assert (=> b!183872 m!211343))

(assert (=> b!183874 m!211341))

(assert (=> b!183874 m!211341))

(assert (=> b!183874 m!211343))

(assert (=> bm!18552 d!54733))

(declare-fun b!183899 () Bool)

(declare-fun e!121069 () ListLongMap!2351)

(declare-fun e!121074 () ListLongMap!2351)

(assert (=> b!183899 (= e!121069 e!121074)))

(declare-fun c!32967 () Bool)

(assert (=> b!183899 (= c!32967 (validKeyInArray!0 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183900 () Bool)

(declare-fun e!121071 () Bool)

(declare-fun e!121075 () Bool)

(assert (=> b!183900 (= e!121071 e!121075)))

(declare-fun c!32968 () Bool)

(assert (=> b!183900 (= c!32968 (bvslt #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))))))

(declare-fun b!183901 () Bool)

(declare-fun e!121072 () Bool)

(assert (=> b!183901 (= e!121071 e!121072)))

(assert (=> b!183901 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))))))

(declare-fun res!87036 () Bool)

(declare-fun lt!90991 () ListLongMap!2351)

(assert (=> b!183901 (= res!87036 (contains!1273 lt!90991 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!183901 (=> (not res!87036) (not e!121072))))

(declare-fun b!183903 () Bool)

(assert (=> b!183903 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))))))

(assert (=> b!183903 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4002 (_values!3738 thiss!1248))))))

(assert (=> b!183903 (= e!121072 (= (apply!160 lt!90991 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)) (get!2115 (select (arr!3689 (_values!3738 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!498 (defaultEntry!3755 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!183904 () Bool)

(declare-fun call!18572 () ListLongMap!2351)

(assert (=> b!183904 (= e!121074 call!18572)))

(declare-fun b!183905 () Bool)

(declare-fun res!87035 () Bool)

(declare-fun e!121073 () Bool)

(assert (=> b!183905 (=> (not res!87035) (not e!121073))))

(assert (=> b!183905 (= res!87035 (not (contains!1273 lt!90991 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!183906 () Bool)

(assert (=> b!183906 (= e!121069 (ListLongMap!2352 Nil!2357))))

(declare-fun b!183907 () Bool)

(declare-fun isEmpty!470 (ListLongMap!2351) Bool)

(assert (=> b!183907 (= e!121075 (isEmpty!470 lt!90991))))

(declare-fun b!183902 () Bool)

(declare-fun e!121070 () Bool)

(assert (=> b!183902 (= e!121070 (validKeyInArray!0 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!183902 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!54735 () Bool)

(assert (=> d!54735 e!121073))

(declare-fun res!87037 () Bool)

(assert (=> d!54735 (=> (not res!87037) (not e!121073))))

(assert (=> d!54735 (= res!87037 (not (contains!1273 lt!90991 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!54735 (= lt!90991 e!121069)))

(declare-fun c!32966 () Bool)

(assert (=> d!54735 (= c!32966 (bvsge #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))))))

(assert (=> d!54735 (validMask!0 (mask!8825 thiss!1248))))

(assert (=> d!54735 (= (getCurrentListMapNoExtraKeys!190 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)) lt!90991)))

(declare-fun b!183908 () Bool)

(declare-fun lt!90993 () Unit!5553)

(declare-fun lt!90992 () Unit!5553)

(assert (=> b!183908 (= lt!90993 lt!90992)))

(declare-fun lt!90988 () V!5387)

(declare-fun lt!90989 () (_ BitVec 64))

(declare-fun lt!90990 () (_ BitVec 64))

(declare-fun lt!90987 () ListLongMap!2351)

(assert (=> b!183908 (not (contains!1273 (+!275 lt!90987 (tuple2!3421 lt!90990 lt!90988)) lt!90989))))

(declare-fun addStillNotContains!88 (ListLongMap!2351 (_ BitVec 64) V!5387 (_ BitVec 64)) Unit!5553)

(assert (=> b!183908 (= lt!90992 (addStillNotContains!88 lt!90987 lt!90990 lt!90988 lt!90989))))

(assert (=> b!183908 (= lt!90989 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!183908 (= lt!90988 (get!2115 (select (arr!3689 (_values!3738 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!498 (defaultEntry!3755 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!183908 (= lt!90990 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!183908 (= lt!90987 call!18572)))

(assert (=> b!183908 (= e!121074 (+!275 call!18572 (tuple2!3421 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000) (get!2115 (select (arr!3689 (_values!3738 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!498 (defaultEntry!3755 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!18569 () Bool)

(assert (=> bm!18569 (= call!18572 (getCurrentListMapNoExtraKeys!190 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3755 thiss!1248)))))

(declare-fun b!183909 () Bool)

(assert (=> b!183909 (= e!121075 (= lt!90991 (getCurrentListMapNoExtraKeys!190 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3755 thiss!1248))))))

(declare-fun b!183910 () Bool)

(assert (=> b!183910 (= e!121073 e!121071)))

(declare-fun c!32969 () Bool)

(assert (=> b!183910 (= c!32969 e!121070)))

(declare-fun res!87034 () Bool)

(assert (=> b!183910 (=> (not res!87034) (not e!121070))))

(assert (=> b!183910 (= res!87034 (bvslt #b00000000000000000000000000000000 (size!4001 (_keys!5677 thiss!1248))))))

(assert (= (and d!54735 c!32966) b!183906))

(assert (= (and d!54735 (not c!32966)) b!183899))

(assert (= (and b!183899 c!32967) b!183908))

(assert (= (and b!183899 (not c!32967)) b!183904))

(assert (= (or b!183908 b!183904) bm!18569))

(assert (= (and d!54735 res!87037) b!183905))

(assert (= (and b!183905 res!87035) b!183910))

(assert (= (and b!183910 res!87034) b!183902))

(assert (= (and b!183910 c!32969) b!183901))

(assert (= (and b!183910 (not c!32969)) b!183900))

(assert (= (and b!183901 res!87036) b!183903))

(assert (= (and b!183900 c!32968) b!183909))

(assert (= (and b!183900 (not c!32968)) b!183907))

(declare-fun b_lambda!7237 () Bool)

(assert (=> (not b_lambda!7237) (not b!183903)))

(assert (=> b!183903 t!7240))

(declare-fun b_and!11133 () Bool)

(assert (= b_and!11131 (and (=> t!7240 result!4779) b_and!11133)))

(declare-fun b_lambda!7239 () Bool)

(assert (=> (not b_lambda!7239) (not b!183908)))

(assert (=> b!183908 t!7240))

(declare-fun b_and!11135 () Bool)

(assert (= b_and!11133 (and (=> t!7240 result!4779) b_and!11135)))

(declare-fun m!211345 () Bool)

(assert (=> bm!18569 m!211345))

(assert (=> b!183901 m!211235))

(assert (=> b!183901 m!211235))

(declare-fun m!211347 () Bool)

(assert (=> b!183901 m!211347))

(assert (=> b!183903 m!211235))

(declare-fun m!211349 () Bool)

(assert (=> b!183903 m!211349))

(assert (=> b!183903 m!211277))

(assert (=> b!183903 m!211235))

(assert (=> b!183903 m!211279))

(assert (=> b!183903 m!211277))

(assert (=> b!183903 m!211279))

(assert (=> b!183903 m!211281))

(assert (=> b!183902 m!211235))

(assert (=> b!183902 m!211235))

(assert (=> b!183902 m!211269))

(declare-fun m!211351 () Bool)

(assert (=> b!183908 m!211351))

(declare-fun m!211353 () Bool)

(assert (=> b!183908 m!211353))

(declare-fun m!211355 () Bool)

(assert (=> b!183908 m!211355))

(assert (=> b!183908 m!211277))

(assert (=> b!183908 m!211351))

(declare-fun m!211357 () Bool)

(assert (=> b!183908 m!211357))

(assert (=> b!183908 m!211235))

(assert (=> b!183908 m!211279))

(assert (=> b!183908 m!211277))

(assert (=> b!183908 m!211279))

(assert (=> b!183908 m!211281))

(assert (=> b!183909 m!211345))

(assert (=> b!183899 m!211235))

(assert (=> b!183899 m!211235))

(assert (=> b!183899 m!211269))

(declare-fun m!211359 () Bool)

(assert (=> b!183907 m!211359))

(declare-fun m!211361 () Bool)

(assert (=> d!54735 m!211361))

(assert (=> d!54735 m!211185))

(declare-fun m!211363 () Bool)

(assert (=> b!183905 m!211363))

(assert (=> b!183776 d!54735))

(declare-fun d!54737 () Bool)

(declare-fun e!121076 () Bool)

(assert (=> d!54737 e!121076))

(declare-fun res!87038 () Bool)

(assert (=> d!54737 (=> (not res!87038) (not e!121076))))

(declare-fun lt!90994 () ListLongMap!2351)

(assert (=> d!54737 (= res!87038 (contains!1273 lt!90994 (_1!1720 (tuple2!3421 lt!90918 (minValue!3596 thiss!1248)))))))

(declare-fun lt!90995 () List!2360)

(assert (=> d!54737 (= lt!90994 (ListLongMap!2352 lt!90995))))

(declare-fun lt!90996 () Unit!5553)

(declare-fun lt!90997 () Unit!5553)

(assert (=> d!54737 (= lt!90996 lt!90997)))

(assert (=> d!54737 (= (getValueByKey!216 lt!90995 (_1!1720 (tuple2!3421 lt!90918 (minValue!3596 thiss!1248)))) (Some!221 (_2!1720 (tuple2!3421 lt!90918 (minValue!3596 thiss!1248)))))))

(assert (=> d!54737 (= lt!90997 (lemmaContainsTupThenGetReturnValue!115 lt!90995 (_1!1720 (tuple2!3421 lt!90918 (minValue!3596 thiss!1248))) (_2!1720 (tuple2!3421 lt!90918 (minValue!3596 thiss!1248)))))))

(assert (=> d!54737 (= lt!90995 (insertStrictlySorted!117 (toList!1191 lt!90913) (_1!1720 (tuple2!3421 lt!90918 (minValue!3596 thiss!1248))) (_2!1720 (tuple2!3421 lt!90918 (minValue!3596 thiss!1248)))))))

(assert (=> d!54737 (= (+!275 lt!90913 (tuple2!3421 lt!90918 (minValue!3596 thiss!1248))) lt!90994)))

(declare-fun b!183911 () Bool)

(declare-fun res!87039 () Bool)

(assert (=> b!183911 (=> (not res!87039) (not e!121076))))

(assert (=> b!183911 (= res!87039 (= (getValueByKey!216 (toList!1191 lt!90994) (_1!1720 (tuple2!3421 lt!90918 (minValue!3596 thiss!1248)))) (Some!221 (_2!1720 (tuple2!3421 lt!90918 (minValue!3596 thiss!1248))))))))

(declare-fun b!183912 () Bool)

(assert (=> b!183912 (= e!121076 (contains!1274 (toList!1191 lt!90994) (tuple2!3421 lt!90918 (minValue!3596 thiss!1248))))))

(assert (= (and d!54737 res!87038) b!183911))

(assert (= (and b!183911 res!87039) b!183912))

(declare-fun m!211365 () Bool)

(assert (=> d!54737 m!211365))

(declare-fun m!211367 () Bool)

(assert (=> d!54737 m!211367))

(declare-fun m!211369 () Bool)

(assert (=> d!54737 m!211369))

(declare-fun m!211371 () Bool)

(assert (=> d!54737 m!211371))

(declare-fun m!211373 () Bool)

(assert (=> b!183911 m!211373))

(declare-fun m!211375 () Bool)

(assert (=> b!183912 m!211375))

(assert (=> b!183776 d!54737))

(declare-fun d!54739 () Bool)

(declare-fun e!121077 () Bool)

(assert (=> d!54739 e!121077))

(declare-fun res!87040 () Bool)

(assert (=> d!54739 (=> (not res!87040) (not e!121077))))

(declare-fun lt!90998 () ListLongMap!2351)

(assert (=> d!54739 (= res!87040 (contains!1273 lt!90998 (_1!1720 (tuple2!3421 lt!90931 (minValue!3596 thiss!1248)))))))

(declare-fun lt!90999 () List!2360)

(assert (=> d!54739 (= lt!90998 (ListLongMap!2352 lt!90999))))

(declare-fun lt!91000 () Unit!5553)

(declare-fun lt!91001 () Unit!5553)

(assert (=> d!54739 (= lt!91000 lt!91001)))

(assert (=> d!54739 (= (getValueByKey!216 lt!90999 (_1!1720 (tuple2!3421 lt!90931 (minValue!3596 thiss!1248)))) (Some!221 (_2!1720 (tuple2!3421 lt!90931 (minValue!3596 thiss!1248)))))))

(assert (=> d!54739 (= lt!91001 (lemmaContainsTupThenGetReturnValue!115 lt!90999 (_1!1720 (tuple2!3421 lt!90931 (minValue!3596 thiss!1248))) (_2!1720 (tuple2!3421 lt!90931 (minValue!3596 thiss!1248)))))))

(assert (=> d!54739 (= lt!90999 (insertStrictlySorted!117 (toList!1191 lt!90915) (_1!1720 (tuple2!3421 lt!90931 (minValue!3596 thiss!1248))) (_2!1720 (tuple2!3421 lt!90931 (minValue!3596 thiss!1248)))))))

(assert (=> d!54739 (= (+!275 lt!90915 (tuple2!3421 lt!90931 (minValue!3596 thiss!1248))) lt!90998)))

(declare-fun b!183913 () Bool)

(declare-fun res!87041 () Bool)

(assert (=> b!183913 (=> (not res!87041) (not e!121077))))

(assert (=> b!183913 (= res!87041 (= (getValueByKey!216 (toList!1191 lt!90998) (_1!1720 (tuple2!3421 lt!90931 (minValue!3596 thiss!1248)))) (Some!221 (_2!1720 (tuple2!3421 lt!90931 (minValue!3596 thiss!1248))))))))

(declare-fun b!183914 () Bool)

(assert (=> b!183914 (= e!121077 (contains!1274 (toList!1191 lt!90998) (tuple2!3421 lt!90931 (minValue!3596 thiss!1248))))))

(assert (= (and d!54739 res!87040) b!183913))

(assert (= (and b!183913 res!87041) b!183914))

(declare-fun m!211377 () Bool)

(assert (=> d!54739 m!211377))

(declare-fun m!211379 () Bool)

(assert (=> d!54739 m!211379))

(declare-fun m!211381 () Bool)

(assert (=> d!54739 m!211381))

(declare-fun m!211383 () Bool)

(assert (=> d!54739 m!211383))

(declare-fun m!211385 () Bool)

(assert (=> b!183913 m!211385))

(declare-fun m!211387 () Bool)

(assert (=> b!183914 m!211387))

(assert (=> b!183776 d!54739))

(declare-fun d!54741 () Bool)

(declare-fun e!121079 () Bool)

(assert (=> d!54741 e!121079))

(declare-fun res!87042 () Bool)

(assert (=> d!54741 (=> res!87042 e!121079)))

(declare-fun lt!91004 () Bool)

(assert (=> d!54741 (= res!87042 (not lt!91004))))

(declare-fun lt!91002 () Bool)

(assert (=> d!54741 (= lt!91004 lt!91002)))

(declare-fun lt!91005 () Unit!5553)

(declare-fun e!121078 () Unit!5553)

(assert (=> d!54741 (= lt!91005 e!121078)))

(declare-fun c!32970 () Bool)

(assert (=> d!54741 (= c!32970 lt!91002)))

(assert (=> d!54741 (= lt!91002 (containsKey!220 (toList!1191 (+!275 lt!90922 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248)))) lt!90930))))

(assert (=> d!54741 (= (contains!1273 (+!275 lt!90922 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248))) lt!90930) lt!91004)))

(declare-fun b!183915 () Bool)

(declare-fun lt!91003 () Unit!5553)

(assert (=> b!183915 (= e!121078 lt!91003)))

(assert (=> b!183915 (= lt!91003 (lemmaContainsKeyImpliesGetValueByKeyDefined!169 (toList!1191 (+!275 lt!90922 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248)))) lt!90930))))

(assert (=> b!183915 (isDefined!170 (getValueByKey!216 (toList!1191 (+!275 lt!90922 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248)))) lt!90930))))

(declare-fun b!183916 () Bool)

(declare-fun Unit!5559 () Unit!5553)

(assert (=> b!183916 (= e!121078 Unit!5559)))

(declare-fun b!183917 () Bool)

(assert (=> b!183917 (= e!121079 (isDefined!170 (getValueByKey!216 (toList!1191 (+!275 lt!90922 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248)))) lt!90930)))))

(assert (= (and d!54741 c!32970) b!183915))

(assert (= (and d!54741 (not c!32970)) b!183916))

(assert (= (and d!54741 (not res!87042)) b!183917))

(declare-fun m!211389 () Bool)

(assert (=> d!54741 m!211389))

(declare-fun m!211391 () Bool)

(assert (=> b!183915 m!211391))

(declare-fun m!211393 () Bool)

(assert (=> b!183915 m!211393))

(assert (=> b!183915 m!211393))

(declare-fun m!211395 () Bool)

(assert (=> b!183915 m!211395))

(assert (=> b!183917 m!211393))

(assert (=> b!183917 m!211393))

(assert (=> b!183917 m!211395))

(assert (=> b!183776 d!54741))

(declare-fun d!54743 () Bool)

(declare-fun get!2116 (Option!222) V!5387)

(assert (=> d!54743 (= (apply!160 lt!90916 lt!90921) (get!2116 (getValueByKey!216 (toList!1191 lt!90916) lt!90921)))))

(declare-fun bs!7469 () Bool)

(assert (= bs!7469 d!54743))

(declare-fun m!211397 () Bool)

(assert (=> bs!7469 m!211397))

(assert (=> bs!7469 m!211397))

(declare-fun m!211399 () Bool)

(assert (=> bs!7469 m!211399))

(assert (=> b!183776 d!54743))

(declare-fun d!54745 () Bool)

(assert (=> d!54745 (= (apply!160 (+!275 lt!90916 (tuple2!3421 lt!90910 (zeroValue!3596 thiss!1248))) lt!90921) (get!2116 (getValueByKey!216 (toList!1191 (+!275 lt!90916 (tuple2!3421 lt!90910 (zeroValue!3596 thiss!1248)))) lt!90921)))))

(declare-fun bs!7470 () Bool)

(assert (= bs!7470 d!54745))

(declare-fun m!211401 () Bool)

(assert (=> bs!7470 m!211401))

(assert (=> bs!7470 m!211401))

(declare-fun m!211403 () Bool)

(assert (=> bs!7470 m!211403))

(assert (=> b!183776 d!54745))

(declare-fun d!54747 () Bool)

(assert (=> d!54747 (= (apply!160 (+!275 lt!90913 (tuple2!3421 lt!90918 (minValue!3596 thiss!1248))) lt!90926) (apply!160 lt!90913 lt!90926))))

(declare-fun lt!91008 () Unit!5553)

(declare-fun choose!981 (ListLongMap!2351 (_ BitVec 64) V!5387 (_ BitVec 64)) Unit!5553)

(assert (=> d!54747 (= lt!91008 (choose!981 lt!90913 lt!90918 (minValue!3596 thiss!1248) lt!90926))))

(declare-fun e!121082 () Bool)

(assert (=> d!54747 e!121082))

(declare-fun res!87045 () Bool)

(assert (=> d!54747 (=> (not res!87045) (not e!121082))))

(assert (=> d!54747 (= res!87045 (contains!1273 lt!90913 lt!90926))))

(assert (=> d!54747 (= (addApplyDifferent!136 lt!90913 lt!90918 (minValue!3596 thiss!1248) lt!90926) lt!91008)))

(declare-fun b!183921 () Bool)

(assert (=> b!183921 (= e!121082 (not (= lt!90926 lt!90918)))))

(assert (= (and d!54747 res!87045) b!183921))

(assert (=> d!54747 m!211239))

(assert (=> d!54747 m!211241))

(assert (=> d!54747 m!211253))

(assert (=> d!54747 m!211239))

(declare-fun m!211405 () Bool)

(assert (=> d!54747 m!211405))

(declare-fun m!211407 () Bool)

(assert (=> d!54747 m!211407))

(assert (=> b!183776 d!54747))

(declare-fun d!54749 () Bool)

(assert (=> d!54749 (= (apply!160 lt!90915 lt!90917) (get!2116 (getValueByKey!216 (toList!1191 lt!90915) lt!90917)))))

(declare-fun bs!7471 () Bool)

(assert (= bs!7471 d!54749))

(declare-fun m!211409 () Bool)

(assert (=> bs!7471 m!211409))

(assert (=> bs!7471 m!211409))

(declare-fun m!211411 () Bool)

(assert (=> bs!7471 m!211411))

(assert (=> b!183776 d!54749))

(declare-fun d!54751 () Bool)

(assert (=> d!54751 (contains!1273 (+!275 lt!90922 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248))) lt!90930)))

(declare-fun lt!91011 () Unit!5553)

(declare-fun choose!982 (ListLongMap!2351 (_ BitVec 64) V!5387 (_ BitVec 64)) Unit!5553)

(assert (=> d!54751 (= lt!91011 (choose!982 lt!90922 lt!90911 (zeroValue!3596 thiss!1248) lt!90930))))

(assert (=> d!54751 (contains!1273 lt!90922 lt!90930)))

(assert (=> d!54751 (= (addStillContains!136 lt!90922 lt!90911 (zeroValue!3596 thiss!1248) lt!90930) lt!91011)))

(declare-fun bs!7472 () Bool)

(assert (= bs!7472 d!54751))

(assert (=> bs!7472 m!211237))

(assert (=> bs!7472 m!211237))

(assert (=> bs!7472 m!211243))

(declare-fun m!211413 () Bool)

(assert (=> bs!7472 m!211413))

(declare-fun m!211415 () Bool)

(assert (=> bs!7472 m!211415))

(assert (=> b!183776 d!54751))

(declare-fun d!54753 () Bool)

(assert (=> d!54753 (= (apply!160 (+!275 lt!90915 (tuple2!3421 lt!90931 (minValue!3596 thiss!1248))) lt!90917) (apply!160 lt!90915 lt!90917))))

(declare-fun lt!91012 () Unit!5553)

(assert (=> d!54753 (= lt!91012 (choose!981 lt!90915 lt!90931 (minValue!3596 thiss!1248) lt!90917))))

(declare-fun e!121083 () Bool)

(assert (=> d!54753 e!121083))

(declare-fun res!87046 () Bool)

(assert (=> d!54753 (=> (not res!87046) (not e!121083))))

(assert (=> d!54753 (= res!87046 (contains!1273 lt!90915 lt!90917))))

(assert (=> d!54753 (= (addApplyDifferent!136 lt!90915 lt!90931 (minValue!3596 thiss!1248) lt!90917) lt!91012)))

(declare-fun b!183923 () Bool)

(assert (=> b!183923 (= e!121083 (not (= lt!90917 lt!90931)))))

(assert (= (and d!54753 res!87046) b!183923))

(assert (=> d!54753 m!211247))

(assert (=> d!54753 m!211255))

(assert (=> d!54753 m!211257))

(assert (=> d!54753 m!211247))

(declare-fun m!211417 () Bool)

(assert (=> d!54753 m!211417))

(declare-fun m!211419 () Bool)

(assert (=> d!54753 m!211419))

(assert (=> b!183776 d!54753))

(declare-fun d!54755 () Bool)

(assert (=> d!54755 (= (apply!160 lt!90913 lt!90926) (get!2116 (getValueByKey!216 (toList!1191 lt!90913) lt!90926)))))

(declare-fun bs!7473 () Bool)

(assert (= bs!7473 d!54755))

(declare-fun m!211421 () Bool)

(assert (=> bs!7473 m!211421))

(assert (=> bs!7473 m!211421))

(declare-fun m!211423 () Bool)

(assert (=> bs!7473 m!211423))

(assert (=> b!183776 d!54755))

(declare-fun d!54757 () Bool)

(assert (=> d!54757 (= (apply!160 (+!275 lt!90913 (tuple2!3421 lt!90918 (minValue!3596 thiss!1248))) lt!90926) (get!2116 (getValueByKey!216 (toList!1191 (+!275 lt!90913 (tuple2!3421 lt!90918 (minValue!3596 thiss!1248)))) lt!90926)))))

(declare-fun bs!7474 () Bool)

(assert (= bs!7474 d!54757))

(declare-fun m!211425 () Bool)

(assert (=> bs!7474 m!211425))

(assert (=> bs!7474 m!211425))

(declare-fun m!211427 () Bool)

(assert (=> bs!7474 m!211427))

(assert (=> b!183776 d!54757))

(declare-fun d!54759 () Bool)

(declare-fun e!121084 () Bool)

(assert (=> d!54759 e!121084))

(declare-fun res!87047 () Bool)

(assert (=> d!54759 (=> (not res!87047) (not e!121084))))

(declare-fun lt!91013 () ListLongMap!2351)

(assert (=> d!54759 (= res!87047 (contains!1273 lt!91013 (_1!1720 (tuple2!3421 lt!90910 (zeroValue!3596 thiss!1248)))))))

(declare-fun lt!91014 () List!2360)

(assert (=> d!54759 (= lt!91013 (ListLongMap!2352 lt!91014))))

(declare-fun lt!91015 () Unit!5553)

(declare-fun lt!91016 () Unit!5553)

(assert (=> d!54759 (= lt!91015 lt!91016)))

(assert (=> d!54759 (= (getValueByKey!216 lt!91014 (_1!1720 (tuple2!3421 lt!90910 (zeroValue!3596 thiss!1248)))) (Some!221 (_2!1720 (tuple2!3421 lt!90910 (zeroValue!3596 thiss!1248)))))))

(assert (=> d!54759 (= lt!91016 (lemmaContainsTupThenGetReturnValue!115 lt!91014 (_1!1720 (tuple2!3421 lt!90910 (zeroValue!3596 thiss!1248))) (_2!1720 (tuple2!3421 lt!90910 (zeroValue!3596 thiss!1248)))))))

(assert (=> d!54759 (= lt!91014 (insertStrictlySorted!117 (toList!1191 lt!90916) (_1!1720 (tuple2!3421 lt!90910 (zeroValue!3596 thiss!1248))) (_2!1720 (tuple2!3421 lt!90910 (zeroValue!3596 thiss!1248)))))))

(assert (=> d!54759 (= (+!275 lt!90916 (tuple2!3421 lt!90910 (zeroValue!3596 thiss!1248))) lt!91013)))

(declare-fun b!183924 () Bool)

(declare-fun res!87048 () Bool)

(assert (=> b!183924 (=> (not res!87048) (not e!121084))))

(assert (=> b!183924 (= res!87048 (= (getValueByKey!216 (toList!1191 lt!91013) (_1!1720 (tuple2!3421 lt!90910 (zeroValue!3596 thiss!1248)))) (Some!221 (_2!1720 (tuple2!3421 lt!90910 (zeroValue!3596 thiss!1248))))))))

(declare-fun b!183925 () Bool)

(assert (=> b!183925 (= e!121084 (contains!1274 (toList!1191 lt!91013) (tuple2!3421 lt!90910 (zeroValue!3596 thiss!1248))))))

(assert (= (and d!54759 res!87047) b!183924))

(assert (= (and b!183924 res!87048) b!183925))

(declare-fun m!211429 () Bool)

(assert (=> d!54759 m!211429))

(declare-fun m!211431 () Bool)

(assert (=> d!54759 m!211431))

(declare-fun m!211433 () Bool)

(assert (=> d!54759 m!211433))

(declare-fun m!211435 () Bool)

(assert (=> d!54759 m!211435))

(declare-fun m!211437 () Bool)

(assert (=> b!183924 m!211437))

(declare-fun m!211439 () Bool)

(assert (=> b!183925 m!211439))

(assert (=> b!183776 d!54759))

(declare-fun d!54761 () Bool)

(assert (=> d!54761 (= (apply!160 (+!275 lt!90915 (tuple2!3421 lt!90931 (minValue!3596 thiss!1248))) lt!90917) (get!2116 (getValueByKey!216 (toList!1191 (+!275 lt!90915 (tuple2!3421 lt!90931 (minValue!3596 thiss!1248)))) lt!90917)))))

(declare-fun bs!7475 () Bool)

(assert (= bs!7475 d!54761))

(declare-fun m!211441 () Bool)

(assert (=> bs!7475 m!211441))

(assert (=> bs!7475 m!211441))

(declare-fun m!211443 () Bool)

(assert (=> bs!7475 m!211443))

(assert (=> b!183776 d!54761))

(declare-fun d!54763 () Bool)

(declare-fun e!121085 () Bool)

(assert (=> d!54763 e!121085))

(declare-fun res!87049 () Bool)

(assert (=> d!54763 (=> (not res!87049) (not e!121085))))

(declare-fun lt!91017 () ListLongMap!2351)

(assert (=> d!54763 (= res!87049 (contains!1273 lt!91017 (_1!1720 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248)))))))

(declare-fun lt!91018 () List!2360)

(assert (=> d!54763 (= lt!91017 (ListLongMap!2352 lt!91018))))

(declare-fun lt!91019 () Unit!5553)

(declare-fun lt!91020 () Unit!5553)

(assert (=> d!54763 (= lt!91019 lt!91020)))

(assert (=> d!54763 (= (getValueByKey!216 lt!91018 (_1!1720 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248)))) (Some!221 (_2!1720 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248)))))))

(assert (=> d!54763 (= lt!91020 (lemmaContainsTupThenGetReturnValue!115 lt!91018 (_1!1720 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248))) (_2!1720 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248)))))))

(assert (=> d!54763 (= lt!91018 (insertStrictlySorted!117 (toList!1191 lt!90922) (_1!1720 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248))) (_2!1720 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248)))))))

(assert (=> d!54763 (= (+!275 lt!90922 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248))) lt!91017)))

(declare-fun b!183926 () Bool)

(declare-fun res!87050 () Bool)

(assert (=> b!183926 (=> (not res!87050) (not e!121085))))

(assert (=> b!183926 (= res!87050 (= (getValueByKey!216 (toList!1191 lt!91017) (_1!1720 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248)))) (Some!221 (_2!1720 (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248))))))))

(declare-fun b!183927 () Bool)

(assert (=> b!183927 (= e!121085 (contains!1274 (toList!1191 lt!91017) (tuple2!3421 lt!90911 (zeroValue!3596 thiss!1248))))))

(assert (= (and d!54763 res!87049) b!183926))

(assert (= (and b!183926 res!87050) b!183927))

(declare-fun m!211445 () Bool)

(assert (=> d!54763 m!211445))

(declare-fun m!211447 () Bool)

(assert (=> d!54763 m!211447))

(declare-fun m!211449 () Bool)

(assert (=> d!54763 m!211449))

(declare-fun m!211451 () Bool)

(assert (=> d!54763 m!211451))

(declare-fun m!211453 () Bool)

(assert (=> b!183926 m!211453))

(declare-fun m!211455 () Bool)

(assert (=> b!183927 m!211455))

(assert (=> b!183776 d!54763))

(declare-fun d!54765 () Bool)

(assert (=> d!54765 (= (apply!160 (+!275 lt!90916 (tuple2!3421 lt!90910 (zeroValue!3596 thiss!1248))) lt!90921) (apply!160 lt!90916 lt!90921))))

(declare-fun lt!91021 () Unit!5553)

(assert (=> d!54765 (= lt!91021 (choose!981 lt!90916 lt!90910 (zeroValue!3596 thiss!1248) lt!90921))))

(declare-fun e!121086 () Bool)

(assert (=> d!54765 e!121086))

(declare-fun res!87051 () Bool)

(assert (=> d!54765 (=> (not res!87051) (not e!121086))))

(assert (=> d!54765 (= res!87051 (contains!1273 lt!90916 lt!90921))))

(assert (=> d!54765 (= (addApplyDifferent!136 lt!90916 lt!90910 (zeroValue!3596 thiss!1248) lt!90921) lt!91021)))

(declare-fun b!183928 () Bool)

(assert (=> b!183928 (= e!121086 (not (= lt!90921 lt!90910)))))

(assert (= (and d!54765 res!87051) b!183928))

(assert (=> d!54765 m!211249))

(assert (=> d!54765 m!211263))

(assert (=> d!54765 m!211251))

(assert (=> d!54765 m!211249))

(declare-fun m!211457 () Bool)

(assert (=> d!54765 m!211457))

(declare-fun m!211459 () Bool)

(assert (=> d!54765 m!211459))

(assert (=> b!183776 d!54765))

(declare-fun d!54767 () Bool)

(declare-fun res!87056 () Bool)

(declare-fun e!121091 () Bool)

(assert (=> d!54767 (=> res!87056 e!121091)))

(assert (=> d!54767 (= res!87056 (and ((_ is Cons!2356) (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)))) (= (_1!1720 (h!2986 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))))) key!828)))))

(assert (=> d!54767 (= (containsKey!220 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))) key!828) e!121091)))

(declare-fun b!183933 () Bool)

(declare-fun e!121092 () Bool)

(assert (=> b!183933 (= e!121091 e!121092)))

(declare-fun res!87057 () Bool)

(assert (=> b!183933 (=> (not res!87057) (not e!121092))))

(assert (=> b!183933 (= res!87057 (and (or (not ((_ is Cons!2356) (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))))) (bvsle (_1!1720 (h!2986 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))))) key!828)) ((_ is Cons!2356) (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)))) (bvslt (_1!1720 (h!2986 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))))) key!828)))))

(declare-fun b!183934 () Bool)

(assert (=> b!183934 (= e!121092 (containsKey!220 (t!7238 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)))) key!828))))

(assert (= (and d!54767 (not res!87056)) b!183933))

(assert (= (and b!183933 res!87057) b!183934))

(declare-fun m!211461 () Bool)

(assert (=> b!183934 m!211461))

(assert (=> d!54715 d!54767))

(declare-fun b!183947 () Bool)

(declare-fun e!121100 () SeekEntryResult!632)

(assert (=> b!183947 (= e!121100 Undefined!632)))

(declare-fun b!183948 () Bool)

(declare-fun e!121099 () SeekEntryResult!632)

(assert (=> b!183948 (= e!121099 (Found!632 (index!4700 lt!90940)))))

(declare-fun b!183949 () Bool)

(declare-fun c!32979 () Bool)

(declare-fun lt!91027 () (_ BitVec 64))

(assert (=> b!183949 (= c!32979 (= lt!91027 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!121101 () SeekEntryResult!632)

(assert (=> b!183949 (= e!121099 e!121101)))

(declare-fun lt!91026 () SeekEntryResult!632)

(declare-fun d!54769 () Bool)

(assert (=> d!54769 (and (or ((_ is Undefined!632) lt!91026) (not ((_ is Found!632) lt!91026)) (and (bvsge (index!4699 lt!91026) #b00000000000000000000000000000000) (bvslt (index!4699 lt!91026) (size!4001 (_keys!5677 thiss!1248))))) (or ((_ is Undefined!632) lt!91026) ((_ is Found!632) lt!91026) (not ((_ is MissingVacant!632) lt!91026)) (not (= (index!4701 lt!91026) (index!4700 lt!90940))) (and (bvsge (index!4701 lt!91026) #b00000000000000000000000000000000) (bvslt (index!4701 lt!91026) (size!4001 (_keys!5677 thiss!1248))))) (or ((_ is Undefined!632) lt!91026) (ite ((_ is Found!632) lt!91026) (= (select (arr!3688 (_keys!5677 thiss!1248)) (index!4699 lt!91026)) key!828) (and ((_ is MissingVacant!632) lt!91026) (= (index!4701 lt!91026) (index!4700 lt!90940)) (= (select (arr!3688 (_keys!5677 thiss!1248)) (index!4701 lt!91026)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!54769 (= lt!91026 e!121100)))

(declare-fun c!32977 () Bool)

(assert (=> d!54769 (= c!32977 (bvsge (x!20012 lt!90940) #b01111111111111111111111111111110))))

(assert (=> d!54769 (= lt!91027 (select (arr!3688 (_keys!5677 thiss!1248)) (index!4700 lt!90940)))))

(assert (=> d!54769 (validMask!0 (mask!8825 thiss!1248))))

(assert (=> d!54769 (= (seekKeyOrZeroReturnVacant!0 (x!20012 lt!90940) (index!4700 lt!90940) (index!4700 lt!90940) key!828 (_keys!5677 thiss!1248) (mask!8825 thiss!1248)) lt!91026)))

(declare-fun b!183950 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!183950 (= e!121101 (seekKeyOrZeroReturnVacant!0 (bvadd (x!20012 lt!90940) #b00000000000000000000000000000001) (nextIndex!0 (index!4700 lt!90940) (x!20012 lt!90940) (mask!8825 thiss!1248)) (index!4700 lt!90940) key!828 (_keys!5677 thiss!1248) (mask!8825 thiss!1248)))))

(declare-fun b!183951 () Bool)

(assert (=> b!183951 (= e!121101 (MissingVacant!632 (index!4700 lt!90940)))))

(declare-fun b!183952 () Bool)

(assert (=> b!183952 (= e!121100 e!121099)))

(declare-fun c!32978 () Bool)

(assert (=> b!183952 (= c!32978 (= lt!91027 key!828))))

(assert (= (and d!54769 c!32977) b!183947))

(assert (= (and d!54769 (not c!32977)) b!183952))

(assert (= (and b!183952 c!32978) b!183948))

(assert (= (and b!183952 (not c!32978)) b!183949))

(assert (= (and b!183949 c!32979) b!183951))

(assert (= (and b!183949 (not c!32979)) b!183950))

(declare-fun m!211463 () Bool)

(assert (=> d!54769 m!211463))

(declare-fun m!211465 () Bool)

(assert (=> d!54769 m!211465))

(assert (=> d!54769 m!211289))

(assert (=> d!54769 m!211185))

(declare-fun m!211467 () Bool)

(assert (=> b!183950 m!211467))

(assert (=> b!183950 m!211467))

(declare-fun m!211469 () Bool)

(assert (=> b!183950 m!211469))

(assert (=> b!183811 d!54769))

(declare-fun d!54771 () Bool)

(assert (=> d!54771 (= (apply!160 lt!90927 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)) (get!2116 (getValueByKey!216 (toList!1191 lt!90927) (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7476 () Bool)

(assert (= bs!7476 d!54771))

(assert (=> bs!7476 m!211235))

(declare-fun m!211471 () Bool)

(assert (=> bs!7476 m!211471))

(assert (=> bs!7476 m!211471))

(declare-fun m!211473 () Bool)

(assert (=> bs!7476 m!211473))

(assert (=> b!183775 d!54771))

(declare-fun d!54773 () Bool)

(declare-fun c!32982 () Bool)

(assert (=> d!54773 (= c!32982 ((_ is ValueCellFull!1809) (select (arr!3689 (_values!3738 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!121104 () V!5387)

(assert (=> d!54773 (= (get!2115 (select (arr!3689 (_values!3738 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!498 (defaultEntry!3755 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!121104)))

(declare-fun b!183957 () Bool)

(declare-fun get!2117 (ValueCell!1809 V!5387) V!5387)

(assert (=> b!183957 (= e!121104 (get!2117 (select (arr!3689 (_values!3738 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!498 (defaultEntry!3755 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!183958 () Bool)

(declare-fun get!2118 (ValueCell!1809 V!5387) V!5387)

(assert (=> b!183958 (= e!121104 (get!2118 (select (arr!3689 (_values!3738 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!498 (defaultEntry!3755 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54773 c!32982) b!183957))

(assert (= (and d!54773 (not c!32982)) b!183958))

(assert (=> b!183957 m!211277))

(assert (=> b!183957 m!211279))

(declare-fun m!211475 () Bool)

(assert (=> b!183957 m!211475))

(assert (=> b!183958 m!211277))

(assert (=> b!183958 m!211279))

(declare-fun m!211477 () Bool)

(assert (=> b!183958 m!211477))

(assert (=> b!183775 d!54773))

(declare-fun d!54775 () Bool)

(assert (=> d!54775 (= (validKeyInArray!0 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!183792 d!54775))

(declare-fun d!54777 () Bool)

(declare-fun res!87067 () Bool)

(declare-fun e!121107 () Bool)

(assert (=> d!54777 (=> (not res!87067) (not e!121107))))

(assert (=> d!54777 (= res!87067 (validMask!0 (mask!8825 thiss!1248)))))

(assert (=> d!54777 (= (simpleValid!175 thiss!1248) e!121107)))

(declare-fun b!183968 () Bool)

(declare-fun res!87068 () Bool)

(assert (=> b!183968 (=> (not res!87068) (not e!121107))))

(declare-fun size!4005 (LongMapFixedSize!2526) (_ BitVec 32))

(assert (=> b!183968 (= res!87068 (bvsge (size!4005 thiss!1248) (_size!1312 thiss!1248)))))

(declare-fun b!183970 () Bool)

(assert (=> b!183970 (= e!121107 (and (bvsge (extraKeys!3492 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3492 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1312 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!183967 () Bool)

(declare-fun res!87069 () Bool)

(assert (=> b!183967 (=> (not res!87069) (not e!121107))))

(assert (=> b!183967 (= res!87069 (and (= (size!4002 (_values!3738 thiss!1248)) (bvadd (mask!8825 thiss!1248) #b00000000000000000000000000000001)) (= (size!4001 (_keys!5677 thiss!1248)) (size!4002 (_values!3738 thiss!1248))) (bvsge (_size!1312 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1312 thiss!1248) (bvadd (mask!8825 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!183969 () Bool)

(declare-fun res!87066 () Bool)

(assert (=> b!183969 (=> (not res!87066) (not e!121107))))

(assert (=> b!183969 (= res!87066 (= (size!4005 thiss!1248) (bvadd (_size!1312 thiss!1248) (bvsdiv (bvadd (extraKeys!3492 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!54777 res!87067) b!183967))

(assert (= (and b!183967 res!87069) b!183968))

(assert (= (and b!183968 res!87068) b!183969))

(assert (= (and b!183969 res!87066) b!183970))

(assert (=> d!54777 m!211185))

(declare-fun m!211479 () Bool)

(assert (=> b!183968 m!211479))

(assert (=> b!183969 m!211479))

(assert (=> d!54709 d!54777))

(assert (=> bm!18554 d!54735))

(declare-fun d!54779 () Bool)

(declare-fun e!121109 () Bool)

(assert (=> d!54779 e!121109))

(declare-fun res!87070 () Bool)

(assert (=> d!54779 (=> res!87070 e!121109)))

(declare-fun lt!91030 () Bool)

(assert (=> d!54779 (= res!87070 (not lt!91030))))

(declare-fun lt!91028 () Bool)

(assert (=> d!54779 (= lt!91030 lt!91028)))

(declare-fun lt!91031 () Unit!5553)

(declare-fun e!121108 () Unit!5553)

(assert (=> d!54779 (= lt!91031 e!121108)))

(declare-fun c!32983 () Bool)

(assert (=> d!54779 (= c!32983 lt!91028)))

(assert (=> d!54779 (= lt!91028 (containsKey!220 (toList!1191 lt!90927) (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!54779 (= (contains!1273 lt!90927 (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)) lt!91030)))

(declare-fun b!183971 () Bool)

(declare-fun lt!91029 () Unit!5553)

(assert (=> b!183971 (= e!121108 lt!91029)))

(assert (=> b!183971 (= lt!91029 (lemmaContainsKeyImpliesGetValueByKeyDefined!169 (toList!1191 lt!90927) (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!183971 (isDefined!170 (getValueByKey!216 (toList!1191 lt!90927) (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183972 () Bool)

(declare-fun Unit!5560 () Unit!5553)

(assert (=> b!183972 (= e!121108 Unit!5560)))

(declare-fun b!183973 () Bool)

(assert (=> b!183973 (= e!121109 (isDefined!170 (getValueByKey!216 (toList!1191 lt!90927) (select (arr!3688 (_keys!5677 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!54779 c!32983) b!183971))

(assert (= (and d!54779 (not c!32983)) b!183972))

(assert (= (and d!54779 (not res!87070)) b!183973))

(assert (=> d!54779 m!211235))

(declare-fun m!211481 () Bool)

(assert (=> d!54779 m!211481))

(assert (=> b!183971 m!211235))

(declare-fun m!211483 () Bool)

(assert (=> b!183971 m!211483))

(assert (=> b!183971 m!211235))

(assert (=> b!183971 m!211471))

(assert (=> b!183971 m!211471))

(declare-fun m!211485 () Bool)

(assert (=> b!183971 m!211485))

(assert (=> b!183973 m!211235))

(assert (=> b!183973 m!211471))

(assert (=> b!183973 m!211471))

(assert (=> b!183973 m!211485))

(assert (=> b!183791 d!54779))

(declare-fun d!54781 () Bool)

(assert (=> d!54781 (= (apply!160 lt!90927 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2116 (getValueByKey!216 (toList!1191 lt!90927) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7477 () Bool)

(assert (= bs!7477 d!54781))

(assert (=> bs!7477 m!211327))

(assert (=> bs!7477 m!211327))

(declare-fun m!211487 () Bool)

(assert (=> bs!7477 m!211487))

(assert (=> b!183783 d!54781))

(assert (=> b!183788 d!54775))

(assert (=> d!54717 d!54721))

(declare-fun d!54783 () Bool)

(declare-fun isEmpty!471 (Option!222) Bool)

(assert (=> d!54783 (= (isDefined!170 (getValueByKey!216 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))) key!828)) (not (isEmpty!471 (getValueByKey!216 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))) key!828))))))

(declare-fun bs!7478 () Bool)

(assert (= bs!7478 d!54783))

(assert (=> bs!7478 m!211225))

(declare-fun m!211489 () Bool)

(assert (=> bs!7478 m!211489))

(assert (=> b!183732 d!54783))

(declare-fun d!54785 () Bool)

(declare-fun c!32988 () Bool)

(assert (=> d!54785 (= c!32988 (and ((_ is Cons!2356) (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)))) (= (_1!1720 (h!2986 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))))) key!828)))))

(declare-fun e!121114 () Option!222)

(assert (=> d!54785 (= (getValueByKey!216 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))) key!828) e!121114)))

(declare-fun b!183983 () Bool)

(declare-fun e!121115 () Option!222)

(assert (=> b!183983 (= e!121114 e!121115)))

(declare-fun c!32989 () Bool)

(assert (=> b!183983 (= c!32989 (and ((_ is Cons!2356) (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)))) (not (= (_1!1720 (h!2986 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))))) key!828))))))

(declare-fun b!183984 () Bool)

(assert (=> b!183984 (= e!121115 (getValueByKey!216 (t!7238 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)))) key!828))))

(declare-fun b!183985 () Bool)

(assert (=> b!183985 (= e!121115 None!220)))

(declare-fun b!183982 () Bool)

(assert (=> b!183982 (= e!121114 (Some!221 (_2!1720 (h!2986 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)))))))))

(assert (= (and d!54785 c!32988) b!183982))

(assert (= (and d!54785 (not c!32988)) b!183983))

(assert (= (and b!183983 c!32989) b!183984))

(assert (= (and b!183983 (not c!32989)) b!183985))

(declare-fun m!211491 () Bool)

(assert (=> b!183984 m!211491))

(assert (=> b!183732 d!54785))

(declare-fun d!54787 () Bool)

(assert (=> d!54787 (= (apply!160 lt!90927 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2116 (getValueByKey!216 (toList!1191 lt!90927) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7479 () Bool)

(assert (= bs!7479 d!54787))

(assert (=> bs!7479 m!211341))

(assert (=> bs!7479 m!211341))

(declare-fun m!211493 () Bool)

(assert (=> bs!7479 m!211493))

(assert (=> b!183787 d!54787))

(declare-fun d!54789 () Bool)

(declare-fun e!121116 () Bool)

(assert (=> d!54789 e!121116))

(declare-fun res!87071 () Bool)

(assert (=> d!54789 (=> (not res!87071) (not e!121116))))

(declare-fun lt!91032 () ListLongMap!2351)

(assert (=> d!54789 (= res!87071 (contains!1273 lt!91032 (_1!1720 (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248)))))))

(declare-fun lt!91033 () List!2360)

(assert (=> d!54789 (= lt!91032 (ListLongMap!2352 lt!91033))))

(declare-fun lt!91034 () Unit!5553)

(declare-fun lt!91035 () Unit!5553)

(assert (=> d!54789 (= lt!91034 lt!91035)))

(assert (=> d!54789 (= (getValueByKey!216 lt!91033 (_1!1720 (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248)))) (Some!221 (_2!1720 (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248)))))))

(assert (=> d!54789 (= lt!91035 (lemmaContainsTupThenGetReturnValue!115 lt!91033 (_1!1720 (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248))) (_2!1720 (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248)))))))

(assert (=> d!54789 (= lt!91033 (insertStrictlySorted!117 (toList!1191 call!18557) (_1!1720 (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248))) (_2!1720 (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248)))))))

(assert (=> d!54789 (= (+!275 call!18557 (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248))) lt!91032)))

(declare-fun b!183986 () Bool)

(declare-fun res!87072 () Bool)

(assert (=> b!183986 (=> (not res!87072) (not e!121116))))

(assert (=> b!183986 (= res!87072 (= (getValueByKey!216 (toList!1191 lt!91032) (_1!1720 (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248)))) (Some!221 (_2!1720 (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248))))))))

(declare-fun b!183987 () Bool)

(assert (=> b!183987 (= e!121116 (contains!1274 (toList!1191 lt!91032) (tuple2!3421 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3596 thiss!1248))))))

(assert (= (and d!54789 res!87071) b!183986))

(assert (= (and b!183986 res!87072) b!183987))

(declare-fun m!211495 () Bool)

(assert (=> d!54789 m!211495))

(declare-fun m!211497 () Bool)

(assert (=> d!54789 m!211497))

(declare-fun m!211499 () Bool)

(assert (=> d!54789 m!211499))

(declare-fun m!211501 () Bool)

(assert (=> d!54789 m!211501))

(declare-fun m!211503 () Bool)

(assert (=> b!183986 m!211503))

(declare-fun m!211505 () Bool)

(assert (=> b!183987 m!211505))

(assert (=> b!183779 d!54789))

(declare-fun d!54791 () Bool)

(assert (=> d!54791 (isDefined!170 (getValueByKey!216 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))) key!828))))

(declare-fun lt!91038 () Unit!5553)

(declare-fun choose!983 (List!2360 (_ BitVec 64)) Unit!5553)

(assert (=> d!54791 (= lt!91038 (choose!983 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))) key!828))))

(declare-fun e!121119 () Bool)

(assert (=> d!54791 e!121119))

(declare-fun res!87075 () Bool)

(assert (=> d!54791 (=> (not res!87075) (not e!121119))))

(declare-fun isStrictlySorted!341 (List!2360) Bool)

(assert (=> d!54791 (= res!87075 (isStrictlySorted!341 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248)))))))

(assert (=> d!54791 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!169 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))) key!828) lt!91038)))

(declare-fun b!183990 () Bool)

(assert (=> b!183990 (= e!121119 (containsKey!220 (toList!1191 (getCurrentListMap!834 (_keys!5677 thiss!1248) (_values!3738 thiss!1248) (mask!8825 thiss!1248) (extraKeys!3492 thiss!1248) (zeroValue!3596 thiss!1248) (minValue!3596 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3755 thiss!1248))) key!828))))

(assert (= (and d!54791 res!87075) b!183990))

(assert (=> d!54791 m!211225))

(assert (=> d!54791 m!211225))

(assert (=> d!54791 m!211227))

(declare-fun m!211507 () Bool)

(assert (=> d!54791 m!211507))

(declare-fun m!211509 () Bool)

(assert (=> d!54791 m!211509))

(assert (=> b!183990 m!211221))

(assert (=> b!183730 d!54791))

(assert (=> b!183730 d!54783))

(assert (=> b!183730 d!54785))

(declare-fun b!184009 () Bool)

(declare-fun e!121133 () SeekEntryResult!632)

(assert (=> b!184009 (= e!121133 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8825 thiss!1248)) #b00000000000000000000000000000000 (mask!8825 thiss!1248)) key!828 (_keys!5677 thiss!1248) (mask!8825 thiss!1248)))))

(declare-fun b!184010 () Bool)

(assert (=> b!184010 (= e!121133 (Intermediate!632 false (toIndex!0 key!828 (mask!8825 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!184011 () Bool)

(declare-fun e!121130 () SeekEntryResult!632)

(assert (=> b!184011 (= e!121130 (Intermediate!632 true (toIndex!0 key!828 (mask!8825 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!184012 () Bool)

(declare-fun lt!91044 () SeekEntryResult!632)

(assert (=> b!184012 (and (bvsge (index!4700 lt!91044) #b00000000000000000000000000000000) (bvslt (index!4700 lt!91044) (size!4001 (_keys!5677 thiss!1248))))))

(declare-fun res!87082 () Bool)

(assert (=> b!184012 (= res!87082 (= (select (arr!3688 (_keys!5677 thiss!1248)) (index!4700 lt!91044)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!121132 () Bool)

(assert (=> b!184012 (=> res!87082 e!121132)))

(declare-fun d!54793 () Bool)

(declare-fun e!121131 () Bool)

(assert (=> d!54793 e!121131))

(declare-fun c!32997 () Bool)

(assert (=> d!54793 (= c!32997 (and ((_ is Intermediate!632) lt!91044) (undefined!1444 lt!91044)))))

(assert (=> d!54793 (= lt!91044 e!121130)))

(declare-fun c!32998 () Bool)

(assert (=> d!54793 (= c!32998 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!91043 () (_ BitVec 64))

(assert (=> d!54793 (= lt!91043 (select (arr!3688 (_keys!5677 thiss!1248)) (toIndex!0 key!828 (mask!8825 thiss!1248))))))

(assert (=> d!54793 (validMask!0 (mask!8825 thiss!1248))))

(assert (=> d!54793 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8825 thiss!1248)) key!828 (_keys!5677 thiss!1248) (mask!8825 thiss!1248)) lt!91044)))

(declare-fun b!184013 () Bool)

(declare-fun e!121134 () Bool)

(assert (=> b!184013 (= e!121131 e!121134)))

(declare-fun res!87083 () Bool)

(assert (=> b!184013 (= res!87083 (and ((_ is Intermediate!632) lt!91044) (not (undefined!1444 lt!91044)) (bvslt (x!20012 lt!91044) #b01111111111111111111111111111110) (bvsge (x!20012 lt!91044) #b00000000000000000000000000000000) (bvsge (x!20012 lt!91044) #b00000000000000000000000000000000)))))

(assert (=> b!184013 (=> (not res!87083) (not e!121134))))

(declare-fun b!184014 () Bool)

(assert (=> b!184014 (= e!121130 e!121133)))

(declare-fun c!32996 () Bool)

(assert (=> b!184014 (= c!32996 (or (= lt!91043 key!828) (= (bvadd lt!91043 lt!91043) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!184015 () Bool)

(assert (=> b!184015 (= e!121131 (bvsge (x!20012 lt!91044) #b01111111111111111111111111111110))))

(declare-fun b!184016 () Bool)

(assert (=> b!184016 (and (bvsge (index!4700 lt!91044) #b00000000000000000000000000000000) (bvslt (index!4700 lt!91044) (size!4001 (_keys!5677 thiss!1248))))))

(assert (=> b!184016 (= e!121132 (= (select (arr!3688 (_keys!5677 thiss!1248)) (index!4700 lt!91044)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!184017 () Bool)

(assert (=> b!184017 (and (bvsge (index!4700 lt!91044) #b00000000000000000000000000000000) (bvslt (index!4700 lt!91044) (size!4001 (_keys!5677 thiss!1248))))))

(declare-fun res!87084 () Bool)

(assert (=> b!184017 (= res!87084 (= (select (arr!3688 (_keys!5677 thiss!1248)) (index!4700 lt!91044)) key!828))))

(assert (=> b!184017 (=> res!87084 e!121132)))

(assert (=> b!184017 (= e!121134 e!121132)))

(assert (= (and d!54793 c!32998) b!184011))

(assert (= (and d!54793 (not c!32998)) b!184014))

(assert (= (and b!184014 c!32996) b!184010))

(assert (= (and b!184014 (not c!32996)) b!184009))

(assert (= (and d!54793 c!32997) b!184015))

(assert (= (and d!54793 (not c!32997)) b!184013))

(assert (= (and b!184013 res!87083) b!184017))

(assert (= (and b!184017 (not res!87084)) b!184012))

(assert (= (and b!184012 (not res!87082)) b!184016))

(assert (=> d!54793 m!211291))

(declare-fun m!211511 () Bool)

(assert (=> d!54793 m!211511))

(assert (=> d!54793 m!211185))

(declare-fun m!211513 () Bool)

(assert (=> b!184012 m!211513))

(assert (=> b!184009 m!211291))

(declare-fun m!211515 () Bool)

(assert (=> b!184009 m!211515))

(assert (=> b!184009 m!211515))

(declare-fun m!211517 () Bool)

(assert (=> b!184009 m!211517))

(assert (=> b!184016 m!211513))

(assert (=> b!184017 m!211513))

(assert (=> d!54719 d!54793))

(declare-fun d!54795 () Bool)

(declare-fun lt!91050 () (_ BitVec 32))

(declare-fun lt!91049 () (_ BitVec 32))

(assert (=> d!54795 (= lt!91050 (bvmul (bvxor lt!91049 (bvlshr lt!91049 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!54795 (= lt!91049 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!54795 (and (bvsge (mask!8825 thiss!1248) #b00000000000000000000000000000000) (let ((res!87085 (let ((h!2988 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!20031 (bvmul (bvxor h!2988 (bvlshr h!2988 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!20031 (bvlshr x!20031 #b00000000000000000000000000001101)) (mask!8825 thiss!1248)))))) (and (bvslt res!87085 (bvadd (mask!8825 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!87085 #b00000000000000000000000000000000))))))

(assert (=> d!54795 (= (toIndex!0 key!828 (mask!8825 thiss!1248)) (bvand (bvxor lt!91050 (bvlshr lt!91050 #b00000000000000000000000000001101)) (mask!8825 thiss!1248)))))

(assert (=> d!54719 d!54795))

(assert (=> d!54719 d!54721))

(declare-fun b!184018 () Bool)

(declare-fun e!121136 () Bool)

(assert (=> b!184018 (= e!121136 tp_is_empty!4305)))

(declare-fun b!184019 () Bool)

(declare-fun e!121135 () Bool)

(assert (=> b!184019 (= e!121135 tp_is_empty!4305)))

(declare-fun mapNonEmpty!7402 () Bool)

(declare-fun mapRes!7402 () Bool)

(declare-fun tp!16384 () Bool)

(assert (=> mapNonEmpty!7402 (= mapRes!7402 (and tp!16384 e!121136))))

(declare-fun mapRest!7402 () (Array (_ BitVec 32) ValueCell!1809))

(declare-fun mapKey!7402 () (_ BitVec 32))

(declare-fun mapValue!7402 () ValueCell!1809)

(assert (=> mapNonEmpty!7402 (= mapRest!7401 (store mapRest!7402 mapKey!7402 mapValue!7402))))

(declare-fun mapIsEmpty!7402 () Bool)

(assert (=> mapIsEmpty!7402 mapRes!7402))

(declare-fun condMapEmpty!7402 () Bool)

(declare-fun mapDefault!7402 () ValueCell!1809)

(assert (=> mapNonEmpty!7401 (= condMapEmpty!7402 (= mapRest!7401 ((as const (Array (_ BitVec 32) ValueCell!1809)) mapDefault!7402)))))

(assert (=> mapNonEmpty!7401 (= tp!16383 (and e!121135 mapRes!7402))))

(assert (= (and mapNonEmpty!7401 condMapEmpty!7402) mapIsEmpty!7402))

(assert (= (and mapNonEmpty!7401 (not condMapEmpty!7402)) mapNonEmpty!7402))

(assert (= (and mapNonEmpty!7402 ((_ is ValueCellFull!1809) mapValue!7402)) b!184018))

(assert (= (and mapNonEmpty!7401 ((_ is ValueCellFull!1809) mapDefault!7402)) b!184019))

(declare-fun m!211519 () Bool)

(assert (=> mapNonEmpty!7402 m!211519))

(declare-fun b_lambda!7241 () Bool)

(assert (= b_lambda!7239 (or (and b!183686 b_free!4533) b_lambda!7241)))

(declare-fun b_lambda!7243 () Bool)

(assert (= b_lambda!7237 (or (and b!183686 b_free!4533) b_lambda!7243)))

(check-sat (not d!54769) (not b!183924) (not b!183957) (not b!183950) (not b_lambda!7235) (not d!54739) (not b_lambda!7241) (not b!183903) (not b_lambda!7243) (not bm!18569) (not b!183968) (not b!183856) (not b!184009) (not b!183857) (not b!183899) (not b!183915) (not b!183902) (not d!54779) (not d!54753) (not d!54733) (not d!54759) (not d!54749) (not bm!18560) (not b!183973) (not d!54789) (not b!183869) (not d!54747) (not d!54783) (not b!183987) (not b!183986) (not d!54787) (not d!54743) (not b!183912) (not b!183829) (not b!183927) (not b!183934) (not d!54737) (not d!54723) (not d!54757) (not b!183984) (not b!183925) (not b!183971) (not b!183872) (not b!183828) (not d!54781) (not b!183840) (not d!54745) (not d!54771) (not b!183844) (not b!183969) (not b!183858) (not b!183908) (not d!54793) (not d!54727) (not b!183914) (not mapNonEmpty!7402) (not b!183874) tp_is_empty!4305 (not b!183842) (not d!54751) (not b!183926) (not d!54741) (not b!183901) (not d!54763) (not bm!18563) (not b_next!4533) (not d!54755) (not b!183905) (not b!183990) (not d!54761) (not d!54777) (not d!54765) (not d!54791) b_and!11135 (not b!183913) (not b!183907) (not d!54735) (not b!183838) (not b!183917) (not b!183909) (not b!183911) (not b!183958) (not bm!18566))
(check-sat b_and!11135 (not b_next!4533))
