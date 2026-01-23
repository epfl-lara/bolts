; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416686 () Bool)

(assert start!416686)

(declare-fun b!4326596 () Bool)

(declare-fun b_free!129105 () Bool)

(declare-fun b_next!129809 () Bool)

(assert (=> b!4326596 (= b_free!129105 (not b_next!129809))))

(declare-fun tp!1327821 () Bool)

(declare-fun b_and!340693 () Bool)

(assert (=> b!4326596 (= tp!1327821 b_and!340693)))

(declare-fun mapIsEmpty!21324 () Bool)

(declare-fun mapRes!21324 () Bool)

(assert (=> mapIsEmpty!21324 mapRes!21324))

(declare-fun b!4326589 () Bool)

(declare-fun e!2692150 () Bool)

(declare-fun tp_is_empty!24243 () Bool)

(assert (=> b!4326589 (= e!2692150 (and tp_is_empty!24243 mapRes!21324))))

(declare-fun condMapEmpty!21324 () Bool)

(declare-datatypes ((V!9916 0))(
  ( (V!9917 (val!16028 Int)) )
))
(declare-datatypes ((array!17390 0))(
  ( (array!17391 (arr!7759 (Array (_ BitVec 32) V!9916)) (size!35798 (_ BitVec 32))) )
))
(declare-datatypes ((array!17392 0))(
  ( (array!17393 (arr!7760 (Array (_ BitVec 32) (_ BitVec 64))) (size!35799 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9574 0))(
  ( (LongMapFixedSize!9575 (defaultEntry!5192 Int) (mask!13443 (_ BitVec 32)) (extraKeys!5052 (_ BitVec 32)) (zeroValue!5064 V!9916) (minValue!5064 V!9916) (_size!9618 (_ BitVec 32)) (_keys!5113 array!17392) (_values!5088 array!17390) (_vacant!4850 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18955 0))(
  ( (Cell!18956 (v!42918 LongMapFixedSize!9574)) )
))
(declare-datatypes ((MutLongMap!4787 0))(
  ( (LongMap!4787 (underlying!9802 Cell!18955)) (MutLongMapExt!4786 (__x!30384 Int)) )
))
(declare-fun thiss!47260 () MutLongMap!4787)

(declare-fun mapDefault!21324 () V!9916)

(assert (=> b!4326589 (= condMapEmpty!21324 (= (arr!7759 (_values!5088 (v!42918 (underlying!9802 thiss!47260)))) ((as const (Array (_ BitVec 32) V!9916)) mapDefault!21324)))))

(declare-fun b!4326590 () Bool)

(declare-fun e!2692151 () Bool)

(declare-fun e!2692148 () Bool)

(assert (=> b!4326590 (= e!2692151 e!2692148)))

(declare-fun b!4326591 () Bool)

(declare-fun e!2692152 () Bool)

(declare-fun e!2692149 () Bool)

(assert (=> b!4326591 (= e!2692152 e!2692149)))

(declare-fun res!1773037 () Bool)

(assert (=> b!4326591 (=> (not res!1773037) (not e!2692149))))

(declare-datatypes ((tuple2!47416 0))(
  ( (tuple2!47417 (_1!26996 Bool) (_2!26996 MutLongMap!4787)) )
))
(declare-fun lt!1543955 () tuple2!47416)

(assert (=> b!4326591 (= res!1773037 (_1!26996 lt!1543955))))

(declare-fun e!2692153 () tuple2!47416)

(assert (=> b!4326591 (= lt!1543955 e!2692153)))

(declare-fun c!736116 () Bool)

(declare-fun imbalanced!92 (MutLongMap!4787) Bool)

(assert (=> b!4326591 (= c!736116 (imbalanced!92 thiss!47260))))

(declare-fun b!4326592 () Bool)

(declare-fun valid!3805 (LongMapFixedSize!9574) Bool)

(assert (=> b!4326592 (= e!2692149 (not (valid!3805 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))))))

(declare-fun b!4326593 () Bool)

(declare-fun res!1773038 () Bool)

(assert (=> b!4326593 (=> (not res!1773038) (not e!2692152))))

(declare-fun valid!3806 (MutLongMap!4787) Bool)

(assert (=> b!4326593 (= res!1773038 (valid!3806 thiss!47260))))

(declare-fun res!1773036 () Bool)

(assert (=> start!416686 (=> (not res!1773036) (not e!2692152))))

(get-info :version)

(assert (=> start!416686 (= res!1773036 ((_ is LongMap!4787) thiss!47260))))

(assert (=> start!416686 e!2692152))

(declare-fun e!2692155 () Bool)

(assert (=> start!416686 e!2692155))

(declare-fun b!4326594 () Bool)

(assert (=> b!4326594 (= e!2692155 e!2692151)))

(declare-fun b!4326595 () Bool)

(assert (=> b!4326595 (= e!2692153 (tuple2!47417 true thiss!47260))))

(declare-fun array_inv!5591 (array!17392) Bool)

(declare-fun array_inv!5592 (array!17390) Bool)

(assert (=> b!4326596 (= e!2692148 (and tp!1327821 tp_is_empty!24243 (array_inv!5591 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) (array_inv!5592 (_values!5088 (v!42918 (underlying!9802 thiss!47260)))) e!2692150))))

(declare-fun b!4326597 () Bool)

(declare-fun repack!96 (MutLongMap!4787) tuple2!47416)

(assert (=> b!4326597 (= e!2692153 (repack!96 thiss!47260))))

(declare-fun mapNonEmpty!21324 () Bool)

(declare-fun tp!1327822 () Bool)

(assert (=> mapNonEmpty!21324 (= mapRes!21324 (and tp!1327822 tp_is_empty!24243))))

(declare-fun mapKey!21324 () (_ BitVec 32))

(declare-fun mapValue!21324 () V!9916)

(declare-fun mapRest!21324 () (Array (_ BitVec 32) V!9916))

(assert (=> mapNonEmpty!21324 (= (arr!7759 (_values!5088 (v!42918 (underlying!9802 thiss!47260)))) (store mapRest!21324 mapKey!21324 mapValue!21324))))

(assert (= (and start!416686 res!1773036) b!4326593))

(assert (= (and b!4326593 res!1773038) b!4326591))

(assert (= (and b!4326591 c!736116) b!4326597))

(assert (= (and b!4326591 (not c!736116)) b!4326595))

(assert (= (and b!4326591 res!1773037) b!4326592))

(assert (= (and b!4326589 condMapEmpty!21324) mapIsEmpty!21324))

(assert (= (and b!4326589 (not condMapEmpty!21324)) mapNonEmpty!21324))

(assert (= b!4326596 b!4326589))

(assert (= b!4326590 b!4326596))

(assert (= b!4326594 b!4326590))

(assert (= (and start!416686 ((_ is LongMap!4787) thiss!47260)) b!4326594))

(declare-fun m!4921721 () Bool)

(assert (=> b!4326596 m!4921721))

(declare-fun m!4921723 () Bool)

(assert (=> b!4326596 m!4921723))

(declare-fun m!4921725 () Bool)

(assert (=> b!4326591 m!4921725))

(declare-fun m!4921727 () Bool)

(assert (=> b!4326597 m!4921727))

(declare-fun m!4921729 () Bool)

(assert (=> b!4326592 m!4921729))

(declare-fun m!4921731 () Bool)

(assert (=> b!4326593 m!4921731))

(declare-fun m!4921733 () Bool)

(assert (=> mapNonEmpty!21324 m!4921733))

(check-sat (not b!4326597) b_and!340693 (not b_next!129809) (not b!4326592) (not b!4326593) (not mapNonEmpty!21324) (not b!4326591) (not b!4326596) tp_is_empty!24243)
(check-sat b_and!340693 (not b_next!129809))
(get-model)

(declare-fun d!1271956 () Bool)

(assert (=> d!1271956 (= (array_inv!5591 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) (bvsge (size!35799 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) #b00000000000000000000000000000000))))

(assert (=> b!4326596 d!1271956))

(declare-fun d!1271958 () Bool)

(assert (=> d!1271958 (= (array_inv!5592 (_values!5088 (v!42918 (underlying!9802 thiss!47260)))) (bvsge (size!35798 (_values!5088 (v!42918 (underlying!9802 thiss!47260)))) #b00000000000000000000000000000000))))

(assert (=> b!4326596 d!1271958))

(declare-fun d!1271960 () Bool)

(assert (=> d!1271960 (= (imbalanced!92 thiss!47260) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!9618 (v!42918 (underlying!9802 thiss!47260))) (_vacant!4850 (v!42918 (underlying!9802 thiss!47260))))) (mask!13443 (v!42918 (underlying!9802 thiss!47260)))) (bvsgt (_vacant!4850 (v!42918 (underlying!9802 thiss!47260))) (_size!9618 (v!42918 (underlying!9802 thiss!47260))))))))

(assert (=> b!4326591 d!1271960))

(declare-fun b!4326619 () Bool)

(declare-fun c!736125 () Bool)

(assert (=> b!4326619 (= c!736125 (and (not (= (bvand (extraKeys!5052 (v!42918 (underlying!9802 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5052 (v!42918 (underlying!9802 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!47418 0))(
  ( (tuple2!47419 (_1!26997 Bool) (_2!26997 Cell!18955)) )
))
(declare-fun e!2692170 () tuple2!47418)

(declare-fun e!2692171 () tuple2!47418)

(assert (=> b!4326619 (= e!2692170 e!2692171)))

(declare-fun bm!300570 () Bool)

(declare-datatypes ((tuple2!47420 0))(
  ( (tuple2!47421 (_1!26998 Bool) (_2!26998 LongMapFixedSize!9574)) )
))
(declare-fun call!300575 () tuple2!47420)

(declare-fun call!300576 () tuple2!47420)

(assert (=> bm!300570 (= call!300575 call!300576)))

(declare-fun c!736126 () Bool)

(declare-fun bm!300571 () Bool)

(declare-fun lt!1543976 () tuple2!47420)

(declare-fun c!736128 () Bool)

(declare-fun call!300577 () LongMapFixedSize!9574)

(declare-fun update!566 (LongMapFixedSize!9574 (_ BitVec 64) V!9916) tuple2!47420)

(assert (=> bm!300571 (= call!300576 (update!566 (ite c!736126 (_2!26998 lt!1543976) call!300577) (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260)))))))))

(declare-fun b!4326620 () Bool)

(declare-datatypes ((tuple3!5510 0))(
  ( (tuple3!5511 (_1!26999 Bool) (_2!26999 Cell!18955) (_3!3288 MutLongMap!4787)) )
))
(declare-fun e!2692169 () tuple3!5510)

(declare-fun lt!1543978 () tuple2!47420)

(assert (=> b!4326620 (= e!2692169 (ite (_1!26998 lt!1543978) (tuple3!5511 true (underlying!9802 thiss!47260) (LongMap!4787 (Cell!18956 (_2!26998 lt!1543978)))) (tuple3!5511 false (Cell!18956 (_2!26998 lt!1543978)) thiss!47260)))))

(declare-fun lt!1543983 () tuple2!47418)

(declare-fun repackFrom!15 (MutLongMap!4787 LongMapFixedSize!9574 (_ BitVec 32)) tuple2!47420)

(assert (=> b!4326620 (= lt!1543978 (repackFrom!15 thiss!47260 (v!42918 (_2!26997 lt!1543983)) (bvsub (size!35799 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) #b00000000000000000000000000000001)))))

(declare-fun bm!300572 () Bool)

(declare-fun call!300578 () LongMapFixedSize!9574)

(assert (=> bm!300572 (= call!300577 call!300578)))

(declare-fun b!4326621 () Bool)

(declare-fun e!2692173 () Bool)

(declare-fun e!2692168 () Bool)

(assert (=> b!4326621 (= e!2692173 e!2692168)))

(declare-fun res!1773044 () Bool)

(assert (=> b!4326621 (=> res!1773044 e!2692168)))

(declare-fun lt!1543981 () tuple2!47416)

(assert (=> b!4326621 (= res!1773044 (= (_1!26996 lt!1543981) false))))

(declare-fun b!4326622 () Bool)

(declare-fun e!2692172 () tuple2!47418)

(declare-fun lt!1543984 () tuple2!47420)

(assert (=> b!4326622 (= e!2692172 (tuple2!47419 (and (_1!26998 lt!1543976) (_1!26998 lt!1543984)) (Cell!18956 (_2!26998 lt!1543984))))))

(assert (=> b!4326622 (= lt!1543976 (update!566 call!300578 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260)))))))

(assert (=> b!4326622 (= lt!1543984 call!300576)))

(declare-fun bm!300573 () Bool)

(declare-fun lt!1543985 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!29 ((_ BitVec 32) Int) LongMapFixedSize!9574)

(assert (=> bm!300573 (= call!300578 (getNewLongMapFixedSize!29 lt!1543985 (defaultEntry!5192 (v!42918 (underlying!9802 thiss!47260)))))))

(declare-fun b!4326618 () Bool)

(declare-datatypes ((tuple2!47422 0))(
  ( (tuple2!47423 (_1!27000 (_ BitVec 64)) (_2!27000 V!9916)) )
))
(declare-datatypes ((List!48574 0))(
  ( (Nil!48450) (Cons!48450 (h!53919 tuple2!47422) (t!355482 List!48574)) )
))
(declare-datatypes ((ListLongMap!1235 0))(
  ( (ListLongMap!1236 (toList!2618 List!48574)) )
))
(declare-fun map!10494 (MutLongMap!4787) ListLongMap!1235)

(assert (=> b!4326618 (= e!2692168 (= (map!10494 (_2!26996 lt!1543981)) (map!10494 thiss!47260)))))

(declare-fun d!1271962 () Bool)

(assert (=> d!1271962 e!2692173))

(declare-fun res!1773043 () Bool)

(assert (=> d!1271962 (=> (not res!1773043) (not e!2692173))))

(assert (=> d!1271962 (= res!1773043 ((_ is LongMap!4787) (_2!26996 lt!1543981)))))

(declare-fun lt!1543980 () tuple3!5510)

(assert (=> d!1271962 (= lt!1543981 (tuple2!47417 (_1!26999 lt!1543980) (_3!3288 lt!1543980)))))

(assert (=> d!1271962 (= lt!1543980 e!2692169)))

(declare-fun c!736127 () Bool)

(assert (=> d!1271962 (= c!736127 (not (_1!26997 lt!1543983)))))

(assert (=> d!1271962 (= lt!1543983 e!2692172)))

(assert (=> d!1271962 (= c!736126 (and (not (= (bvand (extraKeys!5052 (v!42918 (underlying!9802 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5052 (v!42918 (underlying!9802 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!1543977 () Cell!18955)

(assert (=> d!1271962 (= lt!1543977 (Cell!18956 (getNewLongMapFixedSize!29 lt!1543985 (defaultEntry!5192 (v!42918 (underlying!9802 thiss!47260))))))))

(declare-fun computeNewMask!15 (MutLongMap!4787 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1271962 (= lt!1543985 (computeNewMask!15 thiss!47260 (mask!13443 (v!42918 (underlying!9802 thiss!47260))) (_vacant!4850 (v!42918 (underlying!9802 thiss!47260))) (_size!9618 (v!42918 (underlying!9802 thiss!47260)))))))

(assert (=> d!1271962 (valid!3806 thiss!47260)))

(assert (=> d!1271962 (= (repack!96 thiss!47260) lt!1543981)))

(declare-fun b!4326623 () Bool)

(assert (=> b!4326623 (= e!2692171 (tuple2!47419 true lt!1543977))))

(declare-fun b!4326624 () Bool)

(assert (=> b!4326624 (= e!2692169 (tuple3!5511 false (_2!26997 lt!1543983) thiss!47260))))

(declare-fun b!4326625 () Bool)

(declare-fun lt!1543982 () tuple2!47420)

(assert (=> b!4326625 (= lt!1543982 call!300575)))

(assert (=> b!4326625 (= e!2692170 (tuple2!47419 (_1!26998 lt!1543982) (Cell!18956 (_2!26998 lt!1543982))))))

(declare-fun b!4326626 () Bool)

(declare-fun lt!1543979 () tuple2!47420)

(assert (=> b!4326626 (= e!2692171 (tuple2!47419 (_1!26998 lt!1543979) (Cell!18956 (_2!26998 lt!1543979))))))

(assert (=> b!4326626 (= lt!1543979 call!300575)))

(declare-fun b!4326627 () Bool)

(assert (=> b!4326627 (= e!2692172 e!2692170)))

(assert (=> b!4326627 (= c!736128 (and (not (= (bvand (extraKeys!5052 (v!42918 (underlying!9802 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5052 (v!42918 (underlying!9802 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!1271962 c!736126) b!4326622))

(assert (= (and d!1271962 (not c!736126)) b!4326627))

(assert (= (and b!4326627 c!736128) b!4326625))

(assert (= (and b!4326627 (not c!736128)) b!4326619))

(assert (= (and b!4326619 c!736125) b!4326626))

(assert (= (and b!4326619 (not c!736125)) b!4326623))

(assert (= (or b!4326625 b!4326626) bm!300572))

(assert (= (or b!4326625 b!4326626) bm!300570))

(assert (= (or b!4326622 bm!300572) bm!300573))

(assert (= (or b!4326622 bm!300570) bm!300571))

(assert (= (and d!1271962 c!736127) b!4326624))

(assert (= (and d!1271962 (not c!736127)) b!4326620))

(assert (= (and d!1271962 res!1773043) b!4326621))

(assert (= (and b!4326621 (not res!1773044)) b!4326618))

(declare-fun m!4921735 () Bool)

(assert (=> b!4326622 m!4921735))

(declare-fun m!4921737 () Bool)

(assert (=> bm!300573 m!4921737))

(declare-fun m!4921739 () Bool)

(assert (=> bm!300571 m!4921739))

(declare-fun m!4921741 () Bool)

(assert (=> b!4326618 m!4921741))

(declare-fun m!4921743 () Bool)

(assert (=> b!4326618 m!4921743))

(assert (=> d!1271962 m!4921737))

(declare-fun m!4921745 () Bool)

(assert (=> d!1271962 m!4921745))

(assert (=> d!1271962 m!4921731))

(declare-fun m!4921747 () Bool)

(assert (=> b!4326620 m!4921747))

(assert (=> b!4326597 d!1271962))

(declare-fun d!1271964 () Bool)

(declare-fun res!1773051 () Bool)

(declare-fun e!2692176 () Bool)

(assert (=> d!1271964 (=> (not res!1773051) (not e!2692176))))

(declare-fun simpleValid!10 (LongMapFixedSize!9574) Bool)

(assert (=> d!1271964 (= res!1773051 (simpleValid!10 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))))))

(assert (=> d!1271964 (= (valid!3805 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) e!2692176)))

(declare-fun b!4326634 () Bool)

(declare-fun res!1773052 () Bool)

(assert (=> b!4326634 (=> (not res!1773052) (not e!2692176))))

(declare-fun arrayCountValidKeys!0 (array!17392 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4326634 (= res!1773052 (= (arrayCountValidKeys!0 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) #b00000000000000000000000000000000 (size!35799 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))))) (_size!9618 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))))))

(declare-fun b!4326635 () Bool)

(declare-fun res!1773053 () Bool)

(assert (=> b!4326635 (=> (not res!1773053) (not e!2692176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17392 (_ BitVec 32)) Bool)

(assert (=> b!4326635 (= res!1773053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) (mask!13443 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))))))

(declare-fun b!4326636 () Bool)

(declare-datatypes ((List!48575 0))(
  ( (Nil!48451) (Cons!48451 (h!53920 (_ BitVec 64)) (t!355483 List!48575)) )
))
(declare-fun arrayNoDuplicates!0 (array!17392 (_ BitVec 32) List!48575) Bool)

(assert (=> b!4326636 (= e!2692176 (arrayNoDuplicates!0 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) #b00000000000000000000000000000000 Nil!48451))))

(assert (= (and d!1271964 res!1773051) b!4326634))

(assert (= (and b!4326634 res!1773052) b!4326635))

(assert (= (and b!4326635 res!1773053) b!4326636))

(declare-fun m!4921749 () Bool)

(assert (=> d!1271964 m!4921749))

(declare-fun m!4921751 () Bool)

(assert (=> b!4326634 m!4921751))

(declare-fun m!4921753 () Bool)

(assert (=> b!4326635 m!4921753))

(declare-fun m!4921755 () Bool)

(assert (=> b!4326636 m!4921755))

(assert (=> b!4326592 d!1271964))

(declare-fun d!1271966 () Bool)

(assert (=> d!1271966 (= (valid!3806 thiss!47260) (valid!3805 (v!42918 (underlying!9802 thiss!47260))))))

(declare-fun bs!607524 () Bool)

(assert (= bs!607524 d!1271966))

(declare-fun m!4921757 () Bool)

(assert (=> bs!607524 m!4921757))

(assert (=> b!4326593 d!1271966))

(declare-fun condMapEmpty!21327 () Bool)

(declare-fun mapDefault!21327 () V!9916)

(assert (=> mapNonEmpty!21324 (= condMapEmpty!21327 (= mapRest!21324 ((as const (Array (_ BitVec 32) V!9916)) mapDefault!21327)))))

(declare-fun mapRes!21327 () Bool)

(assert (=> mapNonEmpty!21324 (= tp!1327822 (and tp_is_empty!24243 mapRes!21327))))

(declare-fun mapIsEmpty!21327 () Bool)

(assert (=> mapIsEmpty!21327 mapRes!21327))

(declare-fun mapNonEmpty!21327 () Bool)

(declare-fun tp!1327825 () Bool)

(assert (=> mapNonEmpty!21327 (= mapRes!21327 (and tp!1327825 tp_is_empty!24243))))

(declare-fun mapRest!21327 () (Array (_ BitVec 32) V!9916))

(declare-fun mapValue!21327 () V!9916)

(declare-fun mapKey!21327 () (_ BitVec 32))

(assert (=> mapNonEmpty!21327 (= mapRest!21324 (store mapRest!21327 mapKey!21327 mapValue!21327))))

(assert (= (and mapNonEmpty!21324 condMapEmpty!21327) mapIsEmpty!21327))

(assert (= (and mapNonEmpty!21324 (not condMapEmpty!21327)) mapNonEmpty!21327))

(declare-fun m!4921759 () Bool)

(assert (=> mapNonEmpty!21327 m!4921759))

(check-sat (not b!4326618) (not d!1271962) (not d!1271966) (not bm!300573) (not b!4326635) b_and!340693 (not b!4326634) (not b_next!129809) (not d!1271964) (not b!4326622) (not bm!300571) (not b!4326620) (not mapNonEmpty!21327) (not b!4326636) tp_is_empty!24243)
(check-sat b_and!340693 (not b_next!129809))
(get-model)

(declare-fun d!1271968 () Bool)

(declare-fun res!1773064 () Bool)

(declare-fun e!2692179 () Bool)

(assert (=> d!1271968 (=> (not res!1773064) (not e!2692179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!1271968 (= res!1773064 (validMask!0 (mask!13443 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))))))

(assert (=> d!1271968 (= (simpleValid!10 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) e!2692179)))

(declare-fun b!4326649 () Bool)

(declare-fun res!1773065 () Bool)

(assert (=> b!4326649 (=> (not res!1773065) (not e!2692179))))

(declare-fun size!35800 (LongMapFixedSize!9574) (_ BitVec 32))

(assert (=> b!4326649 (= res!1773065 (= (size!35800 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) (bvadd (_size!9618 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) (bvsdiv (bvadd (extraKeys!5052 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!4326650 () Bool)

(assert (=> b!4326650 (= e!2692179 (and (bvsge (extraKeys!5052 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) #b00000000000000000000000000000000) (bvsle (extraKeys!5052 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) #b00000000000000000000000000000011) (bvsge (_vacant!4850 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) #b00000000000000000000000000000000)))))

(declare-fun b!4326648 () Bool)

(declare-fun res!1773062 () Bool)

(assert (=> b!4326648 (=> (not res!1773062) (not e!2692179))))

(assert (=> b!4326648 (= res!1773062 (bvsge (size!35800 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) (_size!9618 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))))))

(declare-fun b!4326647 () Bool)

(declare-fun res!1773063 () Bool)

(assert (=> b!4326647 (=> (not res!1773063) (not e!2692179))))

(assert (=> b!4326647 (= res!1773063 (and (= (size!35798 (_values!5088 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))) (bvadd (mask!13443 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) #b00000000000000000000000000000001)) (= (size!35799 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))) (size!35798 (_values!5088 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))))) (bvsge (_size!9618 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) #b00000000000000000000000000000000) (bvsle (_size!9618 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) (bvadd (mask!13443 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) #b00000000000000000000000000000001))))))

(assert (= (and d!1271968 res!1773064) b!4326647))

(assert (= (and b!4326647 res!1773063) b!4326648))

(assert (= (and b!4326648 res!1773062) b!4326649))

(assert (= (and b!4326649 res!1773065) b!4326650))

(declare-fun m!4921761 () Bool)

(assert (=> d!1271968 m!4921761))

(declare-fun m!4921763 () Bool)

(assert (=> b!4326649 m!4921763))

(assert (=> b!4326648 m!4921763))

(assert (=> d!1271964 d!1271968))

(declare-fun bm!300622 () Bool)

(declare-fun call!300650 () Bool)

(declare-fun call!300638 () Bool)

(assert (=> bm!300622 (= call!300650 call!300638)))

(declare-fun b!4326735 () Bool)

(declare-fun e!2692228 () tuple2!47420)

(declare-fun lt!1544051 () tuple2!47420)

(assert (=> b!4326735 (= e!2692228 (tuple2!47421 (_1!26998 lt!1544051) (_2!26998 lt!1544051)))))

(declare-fun call!300639 () tuple2!47420)

(assert (=> b!4326735 (= lt!1544051 call!300639)))

(declare-fun bm!300623 () Bool)

(declare-datatypes ((SeekEntryResult!23 0))(
  ( (Found!23 (index!1473 (_ BitVec 32))) (Undefined!23) (MissingZero!23 (index!1474 (_ BitVec 32))) (MissingVacant!23 (index!1475 (_ BitVec 32))) (Intermediate!23 (undefined!104 Bool) (index!1476 (_ BitVec 32)) (x!751069 (_ BitVec 32))) )
))
(declare-fun call!300630 () SeekEntryResult!23)

(declare-fun call!300645 () SeekEntryResult!23)

(assert (=> bm!300623 (= call!300630 call!300645)))

(declare-fun b!4326736 () Bool)

(declare-fun c!736162 () Bool)

(declare-fun lt!1544042 () SeekEntryResult!23)

(assert (=> b!4326736 (= c!736162 ((_ is MissingVacant!23) lt!1544042))))

(declare-fun e!2692242 () Bool)

(declare-fun e!2692233 () Bool)

(assert (=> b!4326736 (= e!2692242 e!2692233)))

(declare-fun b!4326737 () Bool)

(declare-datatypes ((Unit!68062 0))(
  ( (Unit!68063) )
))
(declare-fun e!2692239 () Unit!68062)

(declare-fun Unit!68064 () Unit!68062)

(assert (=> b!4326737 (= e!2692239 Unit!68064)))

(declare-fun lt!1544066 () Unit!68062)

(declare-fun call!300643 () Unit!68062)

(assert (=> b!4326737 (= lt!1544066 call!300643)))

(declare-fun lt!1544063 () SeekEntryResult!23)

(assert (=> b!4326737 (= lt!1544063 call!300630)))

(declare-fun c!736167 () Bool)

(assert (=> b!4326737 (= c!736167 ((_ is MissingZero!23) lt!1544063))))

(declare-fun e!2692231 () Bool)

(assert (=> b!4326737 e!2692231))

(declare-fun lt!1544048 () Unit!68062)

(assert (=> b!4326737 (= lt!1544048 lt!1544066)))

(assert (=> b!4326737 false))

(declare-fun b!4326738 () Bool)

(declare-fun e!2692227 () Unit!68062)

(declare-fun lt!1544057 () Unit!68062)

(assert (=> b!4326738 (= e!2692227 lt!1544057)))

(assert (=> b!4326738 (= lt!1544057 call!300643)))

(declare-fun call!300637 () SeekEntryResult!23)

(assert (=> b!4326738 (= lt!1544042 call!300637)))

(declare-fun c!736166 () Bool)

(assert (=> b!4326738 (= c!736166 ((_ is MissingZero!23) lt!1544042))))

(assert (=> b!4326738 e!2692242))

(declare-fun b!4326739 () Bool)

(declare-fun res!1773099 () Bool)

(assert (=> b!4326739 (= res!1773099 (= (select (arr!7760 (_keys!5113 call!300578)) (index!1475 lt!1544042)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2692234 () Bool)

(assert (=> b!4326739 (=> (not res!1773099) (not e!2692234))))

(declare-fun b!4326740 () Bool)

(declare-fun e!2692232 () Bool)

(declare-fun e!2692225 () Bool)

(assert (=> b!4326740 (= e!2692232 e!2692225)))

(declare-fun res!1773101 () Bool)

(declare-fun call!300635 () ListLongMap!1235)

(declare-fun contains!10546 (ListLongMap!1235 (_ BitVec 64)) Bool)

(assert (=> b!4326740 (= res!1773101 (contains!10546 call!300635 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4326740 (=> (not res!1773101) (not e!2692225))))

(declare-fun bm!300625 () Bool)

(declare-fun call!300648 () Bool)

(declare-fun call!300627 () Bool)

(assert (=> bm!300625 (= call!300648 call!300627)))

(declare-fun b!4326741 () Bool)

(declare-fun e!2692238 () Bool)

(assert (=> b!4326741 (= e!2692238 ((_ is Undefined!23) lt!1544063))))

(declare-fun bm!300626 () Bool)

(declare-fun call!300636 () ListLongMap!1235)

(declare-fun call!300644 () ListLongMap!1235)

(assert (=> bm!300626 (= call!300636 call!300644)))

(declare-fun b!4326742 () Bool)

(declare-fun e!2692237 () tuple2!47420)

(declare-fun e!2692240 () tuple2!47420)

(assert (=> b!4326742 (= e!2692237 e!2692240)))

(declare-fun lt!1544058 () SeekEntryResult!23)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17392 (_ BitVec 32)) SeekEntryResult!23)

(assert (=> b!4326742 (= lt!1544058 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!5113 call!300578) (mask!13443 call!300578)))))

(declare-fun c!736164 () Bool)

(assert (=> b!4326742 (= c!736164 ((_ is Undefined!23) lt!1544058))))

(declare-fun c!736159 () Bool)

(declare-fun bm!300627 () Bool)

(declare-fun call!300631 () Bool)

(declare-fun c!736163 () Bool)

(declare-fun lt!1544056 () SeekEntryResult!23)

(declare-fun lt!1544053 () SeekEntryResult!23)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!300627 (= call!300631 (inRange!0 (ite c!736164 (ite c!736159 (index!1473 lt!1544053) (ite c!736166 (index!1474 lt!1544042) (index!1475 lt!1544042))) (ite c!736163 (index!1473 lt!1544056) (ite c!736167 (index!1474 lt!1544063) (index!1475 lt!1544063)))) (mask!13443 call!300578)))))

(declare-fun b!4326743 () Bool)

(declare-fun lt!1544046 () tuple2!47420)

(assert (=> b!4326743 (= lt!1544046 call!300639)))

(declare-fun e!2692230 () tuple2!47420)

(assert (=> b!4326743 (= e!2692230 (tuple2!47421 (_1!26998 lt!1544046) (_2!26998 lt!1544046)))))

(declare-fun bm!300628 () Bool)

(declare-fun c!736168 () Bool)

(declare-fun updateHelperNewKey!13 (LongMapFixedSize!9574 (_ BitVec 64) V!9916 (_ BitVec 32)) tuple2!47420)

(assert (=> bm!300628 (= call!300639 (updateHelperNewKey!13 call!300578 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736168 (index!1475 lt!1544058) (index!1474 lt!1544058))))))

(declare-fun bm!300629 () Bool)

(declare-fun call!300646 () Unit!68062)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!13 (array!17392 array!17390 (_ BitVec 32) (_ BitVec 32) V!9916 V!9916 (_ BitVec 64) Int) Unit!68062)

(assert (=> bm!300629 (= call!300646 (lemmaInListMapThenSeekEntryOrOpenFindsIt!13 (_keys!5113 call!300578) (_values!5088 call!300578) (mask!13443 call!300578) (extraKeys!5052 call!300578) (zeroValue!5064 call!300578) (minValue!5064 call!300578) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!5192 call!300578)))))

(declare-fun b!4326744 () Bool)

(declare-fun e!2692244 () ListLongMap!1235)

(declare-fun getCurrentListMap!26 (array!17392 array!17390 (_ BitVec 32) (_ BitVec 32) V!9916 V!9916 (_ BitVec 32) Int) ListLongMap!1235)

(assert (=> b!4326744 (= e!2692244 (getCurrentListMap!26 (_keys!5113 call!300578) (_values!5088 call!300578) (mask!13443 call!300578) (extraKeys!5052 call!300578) (zeroValue!5064 call!300578) (minValue!5064 call!300578) #b00000000000000000000000000000000 (defaultEntry!5192 call!300578)))))

(declare-fun call!300649 () ListLongMap!1235)

(declare-fun b!4326745 () Bool)

(declare-fun +!378 (ListLongMap!1235 tuple2!47422) ListLongMap!1235)

(assert (=> b!4326745 (= e!2692225 (= call!300635 (+!378 call!300649 (tuple2!47423 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260)))))))))

(declare-fun b!4326746 () Bool)

(declare-fun e!2692224 () Bool)

(declare-fun call!300641 () Bool)

(assert (=> b!4326746 (= e!2692224 (not call!300641))))

(declare-fun b!4326747 () Bool)

(assert (=> b!4326747 (= e!2692228 e!2692230)))

(declare-fun c!736170 () Bool)

(assert (=> b!4326747 (= c!736170 ((_ is MissingZero!23) lt!1544058))))

(declare-fun bm!300630 () Bool)

(declare-fun call!300628 () ListLongMap!1235)

(declare-fun call!300629 () ListLongMap!1235)

(assert (=> bm!300630 (= call!300628 call!300629)))

(declare-fun b!4326748 () Bool)

(assert (=> b!4326748 (= e!2692233 ((_ is Undefined!23) lt!1544042))))

(declare-fun b!4326749 () Bool)

(declare-fun e!2692241 () ListLongMap!1235)

(declare-fun call!300633 () ListLongMap!1235)

(assert (=> b!4326749 (= e!2692241 call!300633)))

(declare-fun bm!300631 () Bool)

(assert (=> bm!300631 (= call!300645 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!5113 call!300578) (mask!13443 call!300578)))))

(declare-fun b!4326750 () Bool)

(declare-fun res!1773103 () Bool)

(assert (=> b!4326750 (= res!1773103 call!300627)))

(declare-fun e!2692235 () Bool)

(assert (=> b!4326750 (=> (not res!1773103) (not e!2692235))))

(declare-fun b!4326751 () Bool)

(declare-fun e!2692236 () Bool)

(assert (=> b!4326751 (= e!2692236 (= (select (arr!7760 (_keys!5113 call!300578)) (index!1473 lt!1544056)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4326752 () Bool)

(declare-fun res!1773097 () Bool)

(declare-fun call!300632 () Bool)

(assert (=> b!4326752 (= res!1773097 call!300632)))

(assert (=> b!4326752 (=> (not res!1773097) (not e!2692236))))

(declare-fun bm!300632 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!13 (array!17392 array!17390 (_ BitVec 32) (_ BitVec 32) V!9916 V!9916 (_ BitVec 64) Int) Unit!68062)

(assert (=> bm!300632 (= call!300643 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!13 (_keys!5113 call!300578) (_values!5088 call!300578) (mask!13443 call!300578) (extraKeys!5052 call!300578) (zeroValue!5064 call!300578) (minValue!5064 call!300578) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!5192 call!300578)))))

(declare-fun b!4326753 () Bool)

(declare-fun e!2692243 () Bool)

(assert (=> b!4326753 (= e!2692243 e!2692232)))

(declare-fun c!736165 () Bool)

(declare-fun lt!1544059 () tuple2!47420)

(assert (=> b!4326753 (= c!736165 (_1!26998 lt!1544059))))

(declare-fun lt!1544044 () array!17390)

(declare-fun bm!300633 () Bool)

(declare-fun lt!1544050 () (_ BitVec 32))

(declare-fun c!736161 () Bool)

(declare-fun c!736169 () Bool)

(assert (=> bm!300633 (= call!300644 (getCurrentListMap!26 (_keys!5113 call!300578) (ite (or c!736161 c!736164) (_values!5088 call!300578) lt!1544044) (mask!13443 call!300578) (ite c!736161 (ite c!736169 (extraKeys!5052 call!300578) lt!1544050) (extraKeys!5052 call!300578)) (zeroValue!5064 call!300578) (ite c!736161 (ite c!736169 (minValue!5064 call!300578) (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260)))) (minValue!5064 call!300578)) #b00000000000000000000000000000000 (defaultEntry!5192 call!300578)))))

(declare-fun bm!300634 () Bool)

(assert (=> bm!300634 (= call!300632 call!300631)))

(declare-fun b!4326754 () Bool)

(assert (=> b!4326754 (= e!2692241 (getCurrentListMap!26 (_keys!5113 call!300578) (_values!5088 call!300578) (mask!13443 call!300578) (extraKeys!5052 call!300578) (zeroValue!5064 call!300578) (minValue!5064 call!300578) #b00000000000000000000000000000000 (defaultEntry!5192 call!300578)))))

(declare-fun bm!300635 () Bool)

(assert (=> bm!300635 (= call!300633 call!300644)))

(declare-fun bm!300636 () Bool)

(declare-fun c!736157 () Bool)

(assert (=> bm!300636 (= c!736157 c!736164)))

(declare-fun call!300634 () Bool)

(assert (=> bm!300636 (= call!300634 (contains!10546 e!2692241 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4326755 () Bool)

(assert (=> b!4326755 (= e!2692232 (= call!300649 call!300635))))

(declare-fun bm!300637 () Bool)

(assert (=> bm!300637 (= call!300627 call!300631)))

(declare-fun b!4326756 () Bool)

(declare-fun e!2692229 () Bool)

(assert (=> b!4326756 (= e!2692229 (not call!300650))))

(declare-fun b!4326757 () Bool)

(assert (=> b!4326757 (= c!736168 ((_ is MissingVacant!23) lt!1544058))))

(assert (=> b!4326757 (= e!2692240 e!2692228)))

(declare-fun lt!1544041 () (_ BitVec 32))

(declare-fun bm!300638 () Bool)

(assert (=> bm!300638 (= call!300629 (getCurrentListMap!26 (_keys!5113 call!300578) (ite c!736161 (_values!5088 call!300578) (array!17391 (store (arr!7759 (_values!5088 call!300578)) (index!1473 lt!1544058) (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260)))) (size!35798 (_values!5088 call!300578)))) (mask!13443 call!300578) (ite (and c!736161 c!736169) lt!1544041 (extraKeys!5052 call!300578)) (ite (and c!736161 c!736169) (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (zeroValue!5064 call!300578)) (minValue!5064 call!300578) #b00000000000000000000000000000000 (defaultEntry!5192 call!300578)))))

(declare-fun b!4326758 () Bool)

(declare-fun res!1773107 () Bool)

(assert (=> b!4326758 (=> (not res!1773107) (not e!2692229))))

(assert (=> b!4326758 (= res!1773107 (= (select (arr!7760 (_keys!5113 call!300578)) (index!1474 lt!1544042)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!300639 () Bool)

(declare-fun call!300640 () ListLongMap!1235)

(declare-fun call!300647 () ListLongMap!1235)

(assert (=> bm!300639 (= call!300640 call!300647)))

(declare-fun b!4326759 () Bool)

(declare-fun e!2692245 () Bool)

(assert (=> b!4326759 (= e!2692238 e!2692245)))

(declare-fun res!1773096 () Bool)

(declare-fun call!300642 () Bool)

(assert (=> b!4326759 (= res!1773096 call!300642)))

(assert (=> b!4326759 (=> (not res!1773096) (not e!2692245))))

(declare-fun b!4326760 () Bool)

(declare-fun res!1773100 () Bool)

(assert (=> b!4326760 (=> (not res!1773100) (not e!2692229))))

(assert (=> b!4326760 (= res!1773100 call!300648)))

(assert (=> b!4326760 (= e!2692242 e!2692229)))

(declare-fun b!4326761 () Bool)

(assert (=> b!4326761 (= e!2692234 (not call!300650))))

(declare-fun bm!300640 () Bool)

(declare-fun arrayContainsKey!0 (array!17392 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!300640 (= call!300638 (arrayContainsKey!0 (_keys!5113 call!300578) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun b!4326762 () Bool)

(declare-fun res!1773105 () Bool)

(assert (=> b!4326762 (= res!1773105 (= (select (arr!7760 (_keys!5113 call!300578)) (index!1475 lt!1544063)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4326762 (=> (not res!1773105) (not e!2692245))))

(declare-fun bm!300641 () Bool)

(assert (=> bm!300641 (= call!300637 call!300645)))

(declare-fun b!4326763 () Bool)

(assert (=> b!4326763 (= e!2692244 (ite c!736169 call!300636 call!300628))))

(declare-fun b!4326764 () Bool)

(declare-fun e!2692226 () tuple2!47420)

(assert (=> b!4326764 (= e!2692237 e!2692226)))

(assert (=> b!4326764 (= c!736169 (= #b0000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4326765 () Bool)

(declare-fun lt!1544055 () Unit!68062)

(declare-fun lt!1544047 () Unit!68062)

(assert (=> b!4326765 (= lt!1544055 lt!1544047)))

(assert (=> b!4326765 (= call!300640 call!300636)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!13 (array!17392 array!17390 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!9916 V!9916 V!9916 Int) Unit!68062)

(assert (=> b!4326765 (= lt!1544047 (lemmaChangeLongMinValueKeyThenAddPairToListMap!13 (_keys!5113 call!300578) (_values!5088 call!300578) (mask!13443 call!300578) (extraKeys!5052 call!300578) lt!1544050 (zeroValue!5064 call!300578) (minValue!5064 call!300578) (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (defaultEntry!5192 call!300578)))))

(assert (=> b!4326765 (= lt!1544050 (bvor (extraKeys!5052 call!300578) #b00000000000000000000000000000010))))

(assert (=> b!4326765 (= e!2692226 (tuple2!47421 true (LongMapFixedSize!9575 (defaultEntry!5192 call!300578) (mask!13443 call!300578) (bvor (extraKeys!5052 call!300578) #b00000000000000000000000000000010) (zeroValue!5064 call!300578) (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (_size!9618 call!300578) (_keys!5113 call!300578) (_values!5088 call!300578) (_vacant!4850 call!300578))))))

(declare-fun bm!300642 () Bool)

(declare-fun map!10495 (LongMapFixedSize!9574) ListLongMap!1235)

(assert (=> bm!300642 (= call!300649 (map!10495 (ite c!736165 call!300578 (_2!26998 lt!1544059))))))

(declare-fun b!4326766 () Bool)

(declare-fun res!1773102 () Bool)

(assert (=> b!4326766 (=> (not res!1773102) (not e!2692224))))

(assert (=> b!4326766 (= res!1773102 (= (select (arr!7760 (_keys!5113 call!300578)) (index!1474 lt!1544063)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4326767 () Bool)

(declare-fun lt!1544054 () Unit!68062)

(declare-fun lt!1544065 () Unit!68062)

(assert (=> b!4326767 (= lt!1544054 lt!1544065)))

(assert (=> b!4326767 (= call!300640 call!300628)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!13 (array!17392 array!17390 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!9916 V!9916 V!9916 Int) Unit!68062)

(assert (=> b!4326767 (= lt!1544065 (lemmaChangeZeroKeyThenAddPairToListMap!13 (_keys!5113 call!300578) (_values!5088 call!300578) (mask!13443 call!300578) (extraKeys!5052 call!300578) lt!1544041 (zeroValue!5064 call!300578) (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 call!300578) (defaultEntry!5192 call!300578)))))

(assert (=> b!4326767 (= lt!1544041 (bvor (extraKeys!5052 call!300578) #b00000000000000000000000000000001))))

(assert (=> b!4326767 (= e!2692226 (tuple2!47421 true (LongMapFixedSize!9575 (defaultEntry!5192 call!300578) (mask!13443 call!300578) (bvor (extraKeys!5052 call!300578) #b00000000000000000000000000000001) (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 call!300578) (_size!9618 call!300578) (_keys!5113 call!300578) (_values!5088 call!300578) (_vacant!4850 call!300578))))))

(declare-fun b!4326768 () Bool)

(assert (=> b!4326768 (= e!2692233 e!2692234)))

(declare-fun res!1773104 () Bool)

(assert (=> b!4326768 (= res!1773104 call!300648)))

(assert (=> b!4326768 (=> (not res!1773104) (not e!2692234))))

(declare-fun b!4326769 () Bool)

(declare-fun lt!1544052 () Unit!68062)

(assert (=> b!4326769 (= e!2692239 lt!1544052)))

(assert (=> b!4326769 (= lt!1544052 call!300646)))

(assert (=> b!4326769 (= lt!1544056 call!300630)))

(declare-fun res!1773094 () Bool)

(assert (=> b!4326769 (= res!1773094 ((_ is Found!23) lt!1544056))))

(assert (=> b!4326769 (=> (not res!1773094) (not e!2692236))))

(assert (=> b!4326769 e!2692236))

(declare-fun bm!300643 () Bool)

(assert (=> bm!300643 (= call!300641 call!300638)))

(declare-fun bm!300624 () Bool)

(assert (=> bm!300624 (= call!300647 (+!378 e!2692244 (ite c!736161 (ite c!736169 (tuple2!47423 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260)))) (tuple2!47423 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))))) (tuple2!47423 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260)))))))))

(declare-fun c!736158 () Bool)

(assert (=> bm!300624 (= c!736158 c!736161)))

(declare-fun d!1271970 () Bool)

(assert (=> d!1271970 e!2692243))

(declare-fun res!1773106 () Bool)

(assert (=> d!1271970 (=> (not res!1773106) (not e!2692243))))

(assert (=> d!1271970 (= res!1773106 (valid!3805 (_2!26998 lt!1544059)))))

(assert (=> d!1271970 (= lt!1544059 e!2692237)))

(assert (=> d!1271970 (= c!736161 (= #b0000000000000000000000000000000000000000000000000000000000000000 (bvneg #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!1271970 (valid!3805 call!300578)))

(assert (=> d!1271970 (= (update!566 call!300578 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260)))) lt!1544059)))

(declare-fun b!4326770 () Bool)

(assert (=> b!4326770 (= e!2692235 (= (select (arr!7760 (_keys!5113 call!300578)) (index!1473 lt!1544053)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!300644 () Bool)

(assert (=> bm!300644 (= call!300642 call!300632)))

(declare-fun b!4326771 () Bool)

(declare-fun lt!1544045 () Unit!68062)

(assert (=> b!4326771 (= lt!1544045 e!2692227)))

(assert (=> b!4326771 (= c!736159 call!300634)))

(assert (=> b!4326771 (= e!2692240 (tuple2!47421 false call!300578))))

(declare-fun b!4326772 () Bool)

(declare-fun lt!1544043 () Unit!68062)

(declare-fun lt!1544060 () Unit!68062)

(assert (=> b!4326772 (= lt!1544043 lt!1544060)))

(assert (=> b!4326772 (contains!10546 call!300633 (select (arr!7760 (_keys!5113 call!300578)) (index!1473 lt!1544058)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!16 (array!17392 array!17390 (_ BitVec 32) (_ BitVec 32) V!9916 V!9916 (_ BitVec 32) Int) Unit!68062)

(assert (=> b!4326772 (= lt!1544060 (lemmaValidKeyInArrayIsInListMap!16 (_keys!5113 call!300578) lt!1544044 (mask!13443 call!300578) (extraKeys!5052 call!300578) (zeroValue!5064 call!300578) (minValue!5064 call!300578) (index!1473 lt!1544058) (defaultEntry!5192 call!300578)))))

(assert (=> b!4326772 (= lt!1544044 (array!17391 (store (arr!7759 (_values!5088 call!300578)) (index!1473 lt!1544058) (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260)))) (size!35798 (_values!5088 call!300578))))))

(declare-fun lt!1544064 () Unit!68062)

(declare-fun lt!1544040 () Unit!68062)

(assert (=> b!4326772 (= lt!1544064 lt!1544040)))

(assert (=> b!4326772 (= call!300647 call!300629)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!13 (array!17392 array!17390 (_ BitVec 32) (_ BitVec 32) V!9916 V!9916 (_ BitVec 32) (_ BitVec 64) V!9916 Int) Unit!68062)

(assert (=> b!4326772 (= lt!1544040 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!13 (_keys!5113 call!300578) (_values!5088 call!300578) (mask!13443 call!300578) (extraKeys!5052 call!300578) (zeroValue!5064 call!300578) (minValue!5064 call!300578) (index!1473 lt!1544058) #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (defaultEntry!5192 call!300578)))))

(declare-fun lt!1544061 () Unit!68062)

(assert (=> b!4326772 (= lt!1544061 e!2692239)))

(assert (=> b!4326772 (= c!736163 call!300634)))

(assert (=> b!4326772 (= e!2692230 (tuple2!47421 true (LongMapFixedSize!9575 (defaultEntry!5192 call!300578) (mask!13443 call!300578) (extraKeys!5052 call!300578) (zeroValue!5064 call!300578) (minValue!5064 call!300578) (_size!9618 call!300578) (_keys!5113 call!300578) (array!17391 (store (arr!7759 (_values!5088 call!300578)) (index!1473 lt!1544058) (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260)))) (size!35798 (_values!5088 call!300578))) (_vacant!4850 call!300578))))))

(declare-fun b!4326773 () Bool)

(declare-fun Unit!68065 () Unit!68062)

(assert (=> b!4326773 (= e!2692227 Unit!68065)))

(declare-fun lt!1544049 () Unit!68062)

(assert (=> b!4326773 (= lt!1544049 call!300646)))

(assert (=> b!4326773 (= lt!1544053 call!300637)))

(declare-fun res!1773098 () Bool)

(assert (=> b!4326773 (= res!1773098 ((_ is Found!23) lt!1544053))))

(assert (=> b!4326773 (=> (not res!1773098) (not e!2692235))))

(assert (=> b!4326773 e!2692235))

(declare-fun lt!1544062 () Unit!68062)

(assert (=> b!4326773 (= lt!1544062 lt!1544049)))

(assert (=> b!4326773 false))

(declare-fun b!4326774 () Bool)

(assert (=> b!4326774 (= e!2692245 (not call!300641))))

(declare-fun b!4326775 () Bool)

(declare-fun res!1773095 () Bool)

(assert (=> b!4326775 (=> (not res!1773095) (not e!2692224))))

(assert (=> b!4326775 (= res!1773095 call!300642)))

(assert (=> b!4326775 (= e!2692231 e!2692224)))

(declare-fun b!4326776 () Bool)

(declare-fun c!736160 () Bool)

(assert (=> b!4326776 (= c!736160 ((_ is MissingVacant!23) lt!1544063))))

(assert (=> b!4326776 (= e!2692231 e!2692238)))

(declare-fun bm!300645 () Bool)

(assert (=> bm!300645 (= call!300635 (map!10495 (ite c!736165 (_2!26998 lt!1544059) call!300578)))))

(assert (= (and d!1271970 c!736161) b!4326764))

(assert (= (and d!1271970 (not c!736161)) b!4326742))

(assert (= (and b!4326764 c!736169) b!4326767))

(assert (= (and b!4326764 (not c!736169)) b!4326765))

(assert (= (or b!4326767 b!4326765) bm!300630))

(assert (= (or b!4326767 b!4326765) bm!300626))

(assert (= (or b!4326767 b!4326765) bm!300639))

(assert (= (and b!4326742 c!736164) b!4326771))

(assert (= (and b!4326742 (not c!736164)) b!4326757))

(assert (= (and b!4326771 c!736159) b!4326773))

(assert (= (and b!4326771 (not c!736159)) b!4326738))

(assert (= (and b!4326773 res!1773098) b!4326750))

(assert (= (and b!4326750 res!1773103) b!4326770))

(assert (= (and b!4326738 c!736166) b!4326760))

(assert (= (and b!4326738 (not c!736166)) b!4326736))

(assert (= (and b!4326760 res!1773100) b!4326758))

(assert (= (and b!4326758 res!1773107) b!4326756))

(assert (= (and b!4326736 c!736162) b!4326768))

(assert (= (and b!4326736 (not c!736162)) b!4326748))

(assert (= (and b!4326768 res!1773104) b!4326739))

(assert (= (and b!4326739 res!1773099) b!4326761))

(assert (= (or b!4326756 b!4326761) bm!300622))

(assert (= (or b!4326760 b!4326768) bm!300625))

(assert (= (or b!4326750 bm!300625) bm!300637))

(assert (= (or b!4326773 b!4326738) bm!300641))

(assert (= (and b!4326757 c!736168) b!4326735))

(assert (= (and b!4326757 (not c!736168)) b!4326747))

(assert (= (and b!4326747 c!736170) b!4326743))

(assert (= (and b!4326747 (not c!736170)) b!4326772))

(assert (= (and b!4326772 c!736163) b!4326769))

(assert (= (and b!4326772 (not c!736163)) b!4326737))

(assert (= (and b!4326769 res!1773094) b!4326752))

(assert (= (and b!4326752 res!1773097) b!4326751))

(assert (= (and b!4326737 c!736167) b!4326775))

(assert (= (and b!4326737 (not c!736167)) b!4326776))

(assert (= (and b!4326775 res!1773095) b!4326766))

(assert (= (and b!4326766 res!1773102) b!4326746))

(assert (= (and b!4326776 c!736160) b!4326759))

(assert (= (and b!4326776 (not c!736160)) b!4326741))

(assert (= (and b!4326759 res!1773096) b!4326762))

(assert (= (and b!4326762 res!1773105) b!4326774))

(assert (= (or b!4326746 b!4326774) bm!300643))

(assert (= (or b!4326775 b!4326759) bm!300644))

(assert (= (or b!4326752 bm!300644) bm!300634))

(assert (= (or b!4326769 b!4326737) bm!300623))

(assert (= (or b!4326735 b!4326743) bm!300628))

(assert (= (or bm!300622 bm!300643) bm!300640))

(assert (= (or bm!300641 bm!300623) bm!300631))

(assert (= (or b!4326771 b!4326772) bm!300635))

(assert (= (or b!4326738 b!4326737) bm!300632))

(assert (= (or bm!300637 bm!300634) bm!300627))

(assert (= (or b!4326773 b!4326769) bm!300629))

(assert (= (or b!4326771 b!4326772) bm!300636))

(assert (= (and bm!300636 c!736157) b!4326749))

(assert (= (and bm!300636 (not c!736157)) b!4326754))

(assert (= (or bm!300626 bm!300635) bm!300633))

(assert (= (or bm!300630 b!4326772) bm!300638))

(assert (= (or bm!300639 b!4326772) bm!300624))

(assert (= (and bm!300624 c!736158) b!4326763))

(assert (= (and bm!300624 (not c!736158)) b!4326744))

(assert (= (and d!1271970 res!1773106) b!4326753))

(assert (= (and b!4326753 c!736165) b!4326740))

(assert (= (and b!4326753 (not c!736165)) b!4326755))

(assert (= (and b!4326740 res!1773101) b!4326745))

(assert (= (or b!4326740 b!4326745 b!4326755) bm!300645))

(assert (= (or b!4326745 b!4326755) bm!300642))

(declare-fun m!4921765 () Bool)

(assert (=> b!4326758 m!4921765))

(declare-fun m!4921767 () Bool)

(assert (=> b!4326742 m!4921767))

(declare-fun m!4921769 () Bool)

(assert (=> bm!300627 m!4921769))

(declare-fun m!4921771 () Bool)

(assert (=> bm!300633 m!4921771))

(declare-fun m!4921773 () Bool)

(assert (=> bm!300642 m!4921773))

(declare-fun m!4921775 () Bool)

(assert (=> bm!300640 m!4921775))

(declare-fun m!4921777 () Bool)

(assert (=> b!4326762 m!4921777))

(declare-fun m!4921779 () Bool)

(assert (=> bm!300645 m!4921779))

(declare-fun m!4921781 () Bool)

(assert (=> b!4326740 m!4921781))

(declare-fun m!4921783 () Bool)

(assert (=> b!4326770 m!4921783))

(declare-fun m!4921785 () Bool)

(assert (=> b!4326767 m!4921785))

(declare-fun m!4921787 () Bool)

(assert (=> bm!300632 m!4921787))

(declare-fun m!4921789 () Bool)

(assert (=> b!4326744 m!4921789))

(declare-fun m!4921791 () Bool)

(assert (=> b!4326772 m!4921791))

(declare-fun m!4921793 () Bool)

(assert (=> b!4326772 m!4921793))

(declare-fun m!4921795 () Bool)

(assert (=> b!4326772 m!4921795))

(declare-fun m!4921797 () Bool)

(assert (=> b!4326772 m!4921797))

(assert (=> b!4326772 m!4921791))

(declare-fun m!4921799 () Bool)

(assert (=> b!4326772 m!4921799))

(declare-fun m!4921801 () Bool)

(assert (=> b!4326751 m!4921801))

(declare-fun m!4921803 () Bool)

(assert (=> bm!300628 m!4921803))

(declare-fun m!4921805 () Bool)

(assert (=> bm!300636 m!4921805))

(declare-fun m!4921807 () Bool)

(assert (=> d!1271970 m!4921807))

(declare-fun m!4921809 () Bool)

(assert (=> d!1271970 m!4921809))

(declare-fun m!4921811 () Bool)

(assert (=> b!4326766 m!4921811))

(declare-fun m!4921813 () Bool)

(assert (=> b!4326745 m!4921813))

(declare-fun m!4921815 () Bool)

(assert (=> b!4326739 m!4921815))

(assert (=> b!4326754 m!4921789))

(declare-fun m!4921817 () Bool)

(assert (=> bm!300629 m!4921817))

(declare-fun m!4921819 () Bool)

(assert (=> bm!300624 m!4921819))

(assert (=> bm!300638 m!4921797))

(declare-fun m!4921821 () Bool)

(assert (=> bm!300638 m!4921821))

(assert (=> bm!300631 m!4921767))

(declare-fun m!4921823 () Bool)

(assert (=> b!4326765 m!4921823))

(assert (=> b!4326622 d!1271970))

(declare-fun d!1271972 () Bool)

(assert (=> d!1271972 (= (map!10494 (_2!26996 lt!1543981)) (map!10495 (v!42918 (underlying!9802 (_2!26996 lt!1543981)))))))

(declare-fun bs!607525 () Bool)

(assert (= bs!607525 d!1271972))

(declare-fun m!4921825 () Bool)

(assert (=> bs!607525 m!4921825))

(assert (=> b!4326618 d!1271972))

(declare-fun d!1271974 () Bool)

(assert (=> d!1271974 (= (map!10494 thiss!47260) (map!10495 (v!42918 (underlying!9802 thiss!47260))))))

(declare-fun bs!607526 () Bool)

(assert (= bs!607526 d!1271974))

(declare-fun m!4921827 () Bool)

(assert (=> bs!607526 m!4921827))

(assert (=> b!4326618 d!1271974))

(declare-fun d!1271976 () Bool)

(declare-fun res!1773116 () Bool)

(declare-fun e!2692255 () Bool)

(assert (=> d!1271976 (=> res!1773116 e!2692255)))

(assert (=> d!1271976 (= res!1773116 (bvsge #b00000000000000000000000000000000 (size!35799 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))))))))

(assert (=> d!1271976 (= (arrayNoDuplicates!0 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) #b00000000000000000000000000000000 Nil!48451) e!2692255)))

(declare-fun b!4326787 () Bool)

(declare-fun e!2692257 () Bool)

(declare-fun contains!10547 (List!48575 (_ BitVec 64)) Bool)

(assert (=> b!4326787 (= e!2692257 (contains!10547 Nil!48451 (select (arr!7760 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))) #b00000000000000000000000000000000)))))

(declare-fun b!4326788 () Bool)

(declare-fun e!2692254 () Bool)

(assert (=> b!4326788 (= e!2692255 e!2692254)))

(declare-fun res!1773115 () Bool)

(assert (=> b!4326788 (=> (not res!1773115) (not e!2692254))))

(assert (=> b!4326788 (= res!1773115 (not e!2692257))))

(declare-fun res!1773114 () Bool)

(assert (=> b!4326788 (=> (not res!1773114) (not e!2692257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!4326788 (= res!1773114 (validKeyInArray!0 (select (arr!7760 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))) #b00000000000000000000000000000000)))))

(declare-fun bm!300648 () Bool)

(declare-fun call!300653 () Bool)

(declare-fun c!736173 () Bool)

(assert (=> bm!300648 (= call!300653 (arrayNoDuplicates!0 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!736173 (Cons!48451 (select (arr!7760 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))) #b00000000000000000000000000000000) Nil!48451) Nil!48451)))))

(declare-fun b!4326789 () Bool)

(declare-fun e!2692256 () Bool)

(assert (=> b!4326789 (= e!2692256 call!300653)))

(declare-fun b!4326790 () Bool)

(assert (=> b!4326790 (= e!2692256 call!300653)))

(declare-fun b!4326791 () Bool)

(assert (=> b!4326791 (= e!2692254 e!2692256)))

(assert (=> b!4326791 (= c!736173 (validKeyInArray!0 (select (arr!7760 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))) #b00000000000000000000000000000000)))))

(assert (= (and d!1271976 (not res!1773116)) b!4326788))

(assert (= (and b!4326788 res!1773114) b!4326787))

(assert (= (and b!4326788 res!1773115) b!4326791))

(assert (= (and b!4326791 c!736173) b!4326790))

(assert (= (and b!4326791 (not c!736173)) b!4326789))

(assert (= (or b!4326790 b!4326789) bm!300648))

(declare-fun m!4921829 () Bool)

(assert (=> b!4326787 m!4921829))

(assert (=> b!4326787 m!4921829))

(declare-fun m!4921831 () Bool)

(assert (=> b!4326787 m!4921831))

(assert (=> b!4326788 m!4921829))

(assert (=> b!4326788 m!4921829))

(declare-fun m!4921833 () Bool)

(assert (=> b!4326788 m!4921833))

(assert (=> bm!300648 m!4921829))

(declare-fun m!4921835 () Bool)

(assert (=> bm!300648 m!4921835))

(assert (=> b!4326791 m!4921829))

(assert (=> b!4326791 m!4921829))

(assert (=> b!4326791 m!4921833))

(assert (=> b!4326636 d!1271976))

(declare-fun b!4326804 () Bool)

(declare-fun res!1773121 () Bool)

(declare-fun e!2692266 () Bool)

(assert (=> b!4326804 (=> (not res!1773121) (not e!2692266))))

(declare-fun lt!1544135 () LongMapFixedSize!9574)

(assert (=> b!4326804 (= res!1773121 (= (mask!13443 lt!1544135) lt!1543985))))

(declare-fun b!4326806 () Bool)

(declare-fun e!2692265 () Unit!68062)

(declare-fun Unit!68066 () Unit!68062)

(assert (=> b!4326806 (= e!2692265 Unit!68066)))

(declare-fun lt!1544132 () tuple2!47422)

(declare-fun lt!1544118 () LongMapFixedSize!9574)

(declare-fun head!9023 (List!48574) tuple2!47422)

(assert (=> b!4326806 (= lt!1544132 (head!9023 (toList!2618 (map!10495 lt!1544118))))))

(declare-fun lt!1544119 () array!17392)

(assert (=> b!4326806 (= lt!1544119 (array!17393 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1543985 #b00000000000000000000000000000001)))))

(declare-fun lt!1544124 () (_ BitVec 32))

(assert (=> b!4326806 (= lt!1544124 #b00000000000000000000000000000000)))

(declare-fun lt!1544125 () V!9916)

(declare-fun lt!1544115 () Unit!68062)

(declare-fun lemmaKeyInListMapIsInArray!19 (array!17392 array!17390 (_ BitVec 32) (_ BitVec 32) V!9916 V!9916 (_ BitVec 64) Int) Unit!68062)

(assert (=> b!4326806 (= lt!1544115 (lemmaKeyInListMapIsInArray!19 lt!1544119 (array!17391 ((as const (Array (_ BitVec 32) V!9916)) lt!1544125) (bvadd lt!1543985 #b00000000000000000000000000000001)) lt!1543985 lt!1544124 lt!1544125 lt!1544125 (_1!27000 lt!1544132) (defaultEntry!5192 (v!42918 (underlying!9802 thiss!47260)))))))

(declare-fun c!736179 () Bool)

(assert (=> b!4326806 (= c!736179 (and (not (= (_1!27000 lt!1544132) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!27000 lt!1544132) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!2692264 () Bool)

(assert (=> b!4326806 e!2692264))

(declare-fun lt!1544130 () Unit!68062)

(assert (=> b!4326806 (= lt!1544130 lt!1544115)))

(declare-fun lt!1544136 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17392 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4326806 (= lt!1544136 (arrayScanForKey!0 (array!17393 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1543985 #b00000000000000000000000000000001)) (_1!27000 lt!1544132) #b00000000000000000000000000000000))))

(assert (=> b!4326806 false))

(declare-fun b!4326807 () Bool)

(assert (=> b!4326807 (= e!2692264 (ite (= (_1!27000 lt!1544132) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!1544124 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!1544124 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4326808 () Bool)

(declare-fun Unit!68067 () Unit!68062)

(assert (=> b!4326808 (= e!2692265 Unit!68067)))

(declare-fun b!4326809 () Bool)

(assert (=> b!4326809 (= e!2692264 (arrayContainsKey!0 lt!1544119 (_1!27000 lt!1544132) #b00000000000000000000000000000000))))

(declare-fun d!1271978 () Bool)

(assert (=> d!1271978 e!2692266))

(declare-fun res!1773122 () Bool)

(assert (=> d!1271978 (=> (not res!1773122) (not e!2692266))))

(assert (=> d!1271978 (= res!1773122 (valid!3805 lt!1544135))))

(assert (=> d!1271978 (= lt!1544135 lt!1544118)))

(declare-fun lt!1544129 () Unit!68062)

(assert (=> d!1271978 (= lt!1544129 e!2692265)))

(declare-fun c!736178 () Bool)

(assert (=> d!1271978 (= c!736178 (not (= (map!10495 lt!1544118) (ListLongMap!1236 Nil!48450))))))

(declare-fun lt!1544122 () Unit!68062)

(declare-fun lt!1544126 () Unit!68062)

(assert (=> d!1271978 (= lt!1544122 lt!1544126)))

(declare-fun lt!1544134 () array!17392)

(declare-fun lt!1544131 () (_ BitVec 32))

(declare-fun lt!1544121 () List!48575)

(assert (=> d!1271978 (arrayNoDuplicates!0 lt!1544134 lt!1544131 lt!1544121)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!17392 (_ BitVec 32) (_ BitVec 32) List!48575) Unit!68062)

(assert (=> d!1271978 (= lt!1544126 (lemmaArrayNoDuplicatesInAll0Array!0 lt!1544134 lt!1544131 (bvadd lt!1543985 #b00000000000000000000000000000001) lt!1544121))))

(assert (=> d!1271978 (= lt!1544121 Nil!48451)))

(assert (=> d!1271978 (= lt!1544131 #b00000000000000000000000000000000)))

(assert (=> d!1271978 (= lt!1544134 (array!17393 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1543985 #b00000000000000000000000000000001)))))

(declare-fun lt!1544137 () Unit!68062)

(declare-fun lt!1544127 () Unit!68062)

(assert (=> d!1271978 (= lt!1544137 lt!1544127)))

(declare-fun lt!1544138 () (_ BitVec 32))

(declare-fun lt!1544133 () array!17392)

(assert (=> d!1271978 (arrayForallSeekEntryOrOpenFound!0 lt!1544138 lt!1544133 lt!1543985)))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!17392 (_ BitVec 32) (_ BitVec 32)) Unit!68062)

(assert (=> d!1271978 (= lt!1544127 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!1544133 lt!1543985 lt!1544138))))

(assert (=> d!1271978 (= lt!1544138 #b00000000000000000000000000000000)))

(assert (=> d!1271978 (= lt!1544133 (array!17393 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1543985 #b00000000000000000000000000000001)))))

(declare-fun lt!1544117 () Unit!68062)

(declare-fun lt!1544120 () Unit!68062)

(assert (=> d!1271978 (= lt!1544117 lt!1544120)))

(declare-fun lt!1544123 () array!17392)

(declare-fun lt!1544116 () (_ BitVec 32))

(declare-fun lt!1544128 () (_ BitVec 32))

(assert (=> d!1271978 (= (arrayCountValidKeys!0 lt!1544123 lt!1544116 lt!1544128) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!17392 (_ BitVec 32) (_ BitVec 32)) Unit!68062)

(assert (=> d!1271978 (= lt!1544120 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!1544123 lt!1544116 lt!1544128))))

(assert (=> d!1271978 (= lt!1544128 (bvadd lt!1543985 #b00000000000000000000000000000001))))

(assert (=> d!1271978 (= lt!1544116 #b00000000000000000000000000000000)))

(assert (=> d!1271978 (= lt!1544123 (array!17393 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1543985 #b00000000000000000000000000000001)))))

(assert (=> d!1271978 (= lt!1544118 (LongMapFixedSize!9575 (defaultEntry!5192 (v!42918 (underlying!9802 thiss!47260))) lt!1543985 #b00000000000000000000000000000000 lt!1544125 lt!1544125 #b00000000000000000000000000000000 (array!17393 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1543985 #b00000000000000000000000000000001)) (array!17391 ((as const (Array (_ BitVec 32) V!9916)) lt!1544125) (bvadd lt!1543985 #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun dynLambda!20528 (Int (_ BitVec 64)) V!9916)

(assert (=> d!1271978 (= lt!1544125 (dynLambda!20528 (defaultEntry!5192 (v!42918 (underlying!9802 thiss!47260))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!1271978 (validMask!0 lt!1543985)))

(assert (=> d!1271978 (= (getNewLongMapFixedSize!29 lt!1543985 (defaultEntry!5192 (v!42918 (underlying!9802 thiss!47260)))) lt!1544135)))

(declare-fun b!4326805 () Bool)

(assert (=> b!4326805 (= e!2692266 (= (map!10495 lt!1544135) (ListLongMap!1236 Nil!48450)))))

(assert (= (and d!1271978 c!736178) b!4326806))

(assert (= (and d!1271978 (not c!736178)) b!4326808))

(assert (= (and b!4326806 c!736179) b!4326809))

(assert (= (and b!4326806 (not c!736179)) b!4326807))

(assert (= (and d!1271978 res!1773122) b!4326804))

(assert (= (and b!4326804 res!1773121) b!4326805))

(declare-fun b_lambda!127555 () Bool)

(assert (=> (not b_lambda!127555) (not d!1271978)))

(declare-fun t!355485 () Bool)

(declare-fun tb!257393 () Bool)

(assert (=> (and b!4326596 (= (defaultEntry!5192 (v!42918 (underlying!9802 thiss!47260))) (defaultEntry!5192 (v!42918 (underlying!9802 thiss!47260)))) t!355485) tb!257393))

(declare-fun result!314952 () Bool)

(assert (=> tb!257393 (= result!314952 tp_is_empty!24243)))

(assert (=> d!1271978 t!355485))

(declare-fun b_and!340695 () Bool)

(assert (= b_and!340693 (and (=> t!355485 result!314952) b_and!340695)))

(declare-fun m!4921837 () Bool)

(assert (=> b!4326806 m!4921837))

(declare-fun m!4921839 () Bool)

(assert (=> b!4326806 m!4921839))

(declare-fun m!4921841 () Bool)

(assert (=> b!4326806 m!4921841))

(declare-fun m!4921843 () Bool)

(assert (=> b!4326806 m!4921843))

(declare-fun m!4921845 () Bool)

(assert (=> b!4326809 m!4921845))

(declare-fun m!4921847 () Bool)

(assert (=> d!1271978 m!4921847))

(declare-fun m!4921849 () Bool)

(assert (=> d!1271978 m!4921849))

(declare-fun m!4921851 () Bool)

(assert (=> d!1271978 m!4921851))

(declare-fun m!4921853 () Bool)

(assert (=> d!1271978 m!4921853))

(declare-fun m!4921855 () Bool)

(assert (=> d!1271978 m!4921855))

(declare-fun m!4921857 () Bool)

(assert (=> d!1271978 m!4921857))

(assert (=> d!1271978 m!4921837))

(declare-fun m!4921859 () Bool)

(assert (=> d!1271978 m!4921859))

(declare-fun m!4921861 () Bool)

(assert (=> d!1271978 m!4921861))

(declare-fun m!4921863 () Bool)

(assert (=> d!1271978 m!4921863))

(declare-fun m!4921865 () Bool)

(assert (=> b!4326805 m!4921865))

(assert (=> d!1271962 d!1271978))

(declare-fun d!1271980 () Bool)

(declare-fun e!2692271 () Bool)

(assert (=> d!1271980 e!2692271))

(declare-fun res!1773125 () Bool)

(assert (=> d!1271980 (=> (not res!1773125) (not e!2692271))))

(declare-fun lt!1544143 () (_ BitVec 32))

(assert (=> d!1271980 (= res!1773125 (validMask!0 lt!1544143))))

(declare-datatypes ((tuple2!47424 0))(
  ( (tuple2!47425 (_1!27001 Unit!68062) (_2!27001 (_ BitVec 32))) )
))
(declare-fun e!2692272 () tuple2!47424)

(assert (=> d!1271980 (= lt!1544143 (_2!27001 e!2692272))))

(declare-fun c!736182 () Bool)

(declare-fun lt!1544144 () tuple2!47424)

(assert (=> d!1271980 (= c!736182 (and (bvsgt (_2!27001 lt!1544144) #b00000000000000000000000000001000) (bvslt (_size!9618 (v!42918 (underlying!9802 thiss!47260))) (bvlshr (_2!27001 lt!1544144) #b00000000000000000000000000000011))))))

(declare-fun Unit!68068 () Unit!68062)

(declare-fun Unit!68069 () Unit!68062)

(assert (=> d!1271980 (= lt!1544144 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!9618 (v!42918 (underlying!9802 thiss!47260))) (_vacant!4850 (v!42918 (underlying!9802 thiss!47260))))) (mask!13443 (v!42918 (underlying!9802 thiss!47260)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!4850 (v!42918 (underlying!9802 thiss!47260)))) (mask!13443 (v!42918 (underlying!9802 thiss!47260))))) (tuple2!47425 Unit!68068 (bvand (bvadd (bvshl (mask!13443 (v!42918 (underlying!9802 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!47425 Unit!68069 (mask!13443 (v!42918 (underlying!9802 thiss!47260))))))))

(assert (=> d!1271980 (validMask!0 (mask!13443 (v!42918 (underlying!9802 thiss!47260))))))

(assert (=> d!1271980 (= (computeNewMask!15 thiss!47260 (mask!13443 (v!42918 (underlying!9802 thiss!47260))) (_vacant!4850 (v!42918 (underlying!9802 thiss!47260))) (_size!9618 (v!42918 (underlying!9802 thiss!47260)))) lt!1544143)))

(declare-fun b!4326818 () Bool)

(declare-fun computeNewMaskWhile!4 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!47424)

(assert (=> b!4326818 (= e!2692272 (computeNewMaskWhile!4 (_size!9618 (v!42918 (underlying!9802 thiss!47260))) (_vacant!4850 (v!42918 (underlying!9802 thiss!47260))) (mask!13443 (v!42918 (underlying!9802 thiss!47260))) (_2!27001 lt!1544144)))))

(declare-fun b!4326819 () Bool)

(declare-fun Unit!68070 () Unit!68062)

(assert (=> b!4326819 (= e!2692272 (tuple2!47425 Unit!68070 (_2!27001 lt!1544144)))))

(declare-fun b!4326820 () Bool)

(assert (=> b!4326820 (= e!2692271 (bvsle (_size!9618 (v!42918 (underlying!9802 thiss!47260))) (bvadd lt!1544143 #b00000000000000000000000000000001)))))

(assert (= (and d!1271980 c!736182) b!4326818))

(assert (= (and d!1271980 (not c!736182)) b!4326819))

(assert (= (and d!1271980 res!1773125) b!4326820))

(declare-fun m!4921867 () Bool)

(assert (=> d!1271980 m!4921867))

(declare-fun m!4921869 () Bool)

(assert (=> d!1271980 m!4921869))

(declare-fun m!4921871 () Bool)

(assert (=> b!4326818 m!4921871))

(assert (=> d!1271962 d!1271980))

(assert (=> d!1271962 d!1271966))

(declare-fun d!1271982 () Bool)

(declare-fun res!1773126 () Bool)

(declare-fun e!2692273 () Bool)

(assert (=> d!1271982 (=> (not res!1773126) (not e!2692273))))

(assert (=> d!1271982 (= res!1773126 (simpleValid!10 (v!42918 (underlying!9802 thiss!47260))))))

(assert (=> d!1271982 (= (valid!3805 (v!42918 (underlying!9802 thiss!47260))) e!2692273)))

(declare-fun b!4326821 () Bool)

(declare-fun res!1773127 () Bool)

(assert (=> b!4326821 (=> (not res!1773127) (not e!2692273))))

(assert (=> b!4326821 (= res!1773127 (= (arrayCountValidKeys!0 (_keys!5113 (v!42918 (underlying!9802 thiss!47260))) #b00000000000000000000000000000000 (size!35799 (_keys!5113 (v!42918 (underlying!9802 thiss!47260))))) (_size!9618 (v!42918 (underlying!9802 thiss!47260)))))))

(declare-fun b!4326822 () Bool)

(declare-fun res!1773128 () Bool)

(assert (=> b!4326822 (=> (not res!1773128) (not e!2692273))))

(assert (=> b!4326822 (= res!1773128 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5113 (v!42918 (underlying!9802 thiss!47260))) (mask!13443 (v!42918 (underlying!9802 thiss!47260)))))))

(declare-fun b!4326823 () Bool)

(assert (=> b!4326823 (= e!2692273 (arrayNoDuplicates!0 (_keys!5113 (v!42918 (underlying!9802 thiss!47260))) #b00000000000000000000000000000000 Nil!48451))))

(assert (= (and d!1271982 res!1773126) b!4326821))

(assert (= (and b!4326821 res!1773127) b!4326822))

(assert (= (and b!4326822 res!1773128) b!4326823))

(declare-fun m!4921873 () Bool)

(assert (=> d!1271982 m!4921873))

(declare-fun m!4921875 () Bool)

(assert (=> b!4326821 m!4921875))

(declare-fun m!4921877 () Bool)

(assert (=> b!4326822 m!4921877))

(declare-fun m!4921879 () Bool)

(assert (=> b!4326823 m!4921879))

(assert (=> d!1271966 d!1271982))

(declare-fun bm!300675 () Bool)

(declare-fun call!300689 () ListLongMap!1235)

(declare-fun getCurrentListMapNoExtraKeys!4 (array!17392 array!17390 (_ BitVec 32) (_ BitVec 32) V!9916 V!9916 (_ BitVec 32) Int) ListLongMap!1235)

(assert (=> bm!300675 (= call!300689 (getCurrentListMapNoExtraKeys!4 (_keys!5113 (v!42918 (underlying!9802 thiss!47260))) (_values!5088 (v!42918 (underlying!9802 thiss!47260))) (mask!13443 (v!42918 (underlying!9802 thiss!47260))) (extraKeys!5052 (v!42918 (underlying!9802 thiss!47260))) (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (bvadd (bvsub (size!35799 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!5192 (v!42918 (underlying!9802 thiss!47260)))))))

(declare-fun b!4326852 () Bool)

(declare-fun e!2692293 () Bool)

(declare-fun e!2692295 () Bool)

(assert (=> b!4326852 (= e!2692293 e!2692295)))

(declare-fun res!1773133 () Bool)

(assert (=> b!4326852 (=> (not res!1773133) (not e!2692295))))

(declare-fun lt!1544216 () tuple2!47420)

(assert (=> b!4326852 (= res!1773133 (valid!3805 (_2!26998 lt!1544216)))))

(declare-fun lt!1544226 () V!9916)

(declare-fun bm!300676 () Bool)

(declare-fun call!300685 () Unit!68062)

(declare-fun lt!1544224 () (_ BitVec 64))

(declare-fun lt!1544221 () (_ BitVec 64))

(declare-fun c!736195 () Bool)

(declare-fun lt!1544219 () ListLongMap!1235)

(declare-fun lt!1544223 () (_ BitVec 64))

(declare-fun lt!1544231 () ListLongMap!1235)

(declare-fun addCommutativeForDiffKeys!5 (ListLongMap!1235 (_ BitVec 64) V!9916 (_ BitVec 64) V!9916) Unit!68062)

(assert (=> bm!300676 (= call!300685 (addCommutativeForDiffKeys!5 (ite c!736195 lt!1544219 lt!1544231) lt!1544223 lt!1544226 (ite c!736195 lt!1544224 lt!1544221) (ite c!736195 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260))))))))

(declare-fun d!1271984 () Bool)

(assert (=> d!1271984 e!2692293))

(declare-fun res!1773134 () Bool)

(assert (=> d!1271984 (=> res!1773134 e!2692293)))

(assert (=> d!1271984 (= res!1773134 (not (_1!26998 lt!1544216)))))

(declare-fun e!2692292 () tuple2!47420)

(assert (=> d!1271984 (= lt!1544216 e!2692292)))

(declare-fun c!736197 () Bool)

(assert (=> d!1271984 (= c!736197 (and (not (= lt!1544223 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1544223 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1544225 () ListLongMap!1235)

(assert (=> d!1271984 (= lt!1544225 (map!10495 (v!42918 (_2!26997 lt!1543983))))))

(assert (=> d!1271984 (= lt!1544226 (select (arr!7759 (_values!5088 (v!42918 (underlying!9802 thiss!47260)))) (bvsub (size!35799 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) #b00000000000000000000000000000001)))))

(assert (=> d!1271984 (= lt!1544223 (select (arr!7760 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) (bvsub (size!35799 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) #b00000000000000000000000000000001)))))

(assert (=> d!1271984 (valid!3806 thiss!47260)))

(assert (=> d!1271984 (= (repackFrom!15 thiss!47260 (v!42918 (_2!26997 lt!1543983)) (bvsub (size!35799 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) #b00000000000000000000000000000001)) lt!1544216)))

(declare-fun b!4326853 () Bool)

(declare-fun e!2692290 () Unit!68062)

(declare-fun Unit!68071 () Unit!68062)

(assert (=> b!4326853 (= e!2692290 Unit!68071)))

(declare-fun b!4326854 () Bool)

(assert (=> b!4326854 (= e!2692295 (= (map!10495 (_2!26998 lt!1544216)) (map!10495 (v!42918 (underlying!9802 thiss!47260)))))))

(assert (=> b!4326854 ((_ is LongMap!4787) thiss!47260)))

(declare-fun call!300691 () ListLongMap!1235)

(declare-fun call!300686 () ListLongMap!1235)

(declare-fun bm!300677 () Bool)

(declare-fun call!300682 () ListLongMap!1235)

(assert (=> bm!300677 (= call!300682 (+!378 (ite c!736195 call!300691 call!300686) (tuple2!47423 lt!1544223 lt!1544226)))))

(declare-fun b!4326855 () Bool)

(declare-fun e!2692291 () tuple2!47420)

(assert (=> b!4326855 (= e!2692291 (tuple2!47421 true (v!42918 (_2!26997 lt!1543983))))))

(declare-fun bm!300678 () Bool)

(declare-fun lt!1544215 () (_ BitVec 64))

(declare-fun lt!1544237 () ListLongMap!1235)

(declare-fun lt!1544217 () (_ BitVec 64))

(declare-fun lt!1544228 () ListLongMap!1235)

(declare-fun call!300688 () Unit!68062)

(assert (=> bm!300678 (= call!300688 (addCommutativeForDiffKeys!5 (ite c!736195 lt!1544237 lt!1544228) lt!1544223 lt!1544226 (ite c!736195 lt!1544215 lt!1544217) (ite c!736195 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))))))))

(declare-fun bm!300679 () Bool)

(declare-fun call!300683 () ListLongMap!1235)

(declare-fun call!300680 () ListLongMap!1235)

(assert (=> bm!300679 (= call!300680 (+!378 call!300683 (ite c!736195 (tuple2!47423 lt!1544224 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260)))) (tuple2!47423 lt!1544221 (minValue!5064 (v!42918 (underlying!9802 thiss!47260)))))))))

(declare-fun b!4326856 () Bool)

(declare-fun e!2692294 () tuple2!47420)

(declare-fun lt!1544232 () tuple2!47420)

(assert (=> b!4326856 (= e!2692294 (tuple2!47421 false (_2!26998 lt!1544232)))))

(declare-fun e!2692297 () Bool)

(declare-fun b!4326857 () Bool)

(declare-fun lt!1544234 () (_ BitVec 32))

(assert (=> b!4326857 (= e!2692297 (arrayContainsKey!0 (_keys!5113 (v!42918 (underlying!9802 thiss!47260))) lt!1544223 lt!1544234))))

(declare-fun bm!300680 () Bool)

(assert (=> bm!300680 (= call!300686 (+!378 (ite c!736195 lt!1544219 lt!1544228) (ite c!736195 (tuple2!47423 lt!1544224 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260)))) (tuple2!47423 lt!1544217 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260)))))))))

(declare-fun b!4326858 () Bool)

(assert (=> b!4326858 (= c!736195 (bvsgt (bvsub (size!35799 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun e!2692296 () tuple2!47420)

(assert (=> b!4326858 (= e!2692294 e!2692296)))

(declare-fun bm!300681 () Bool)

(declare-fun call!300684 () ListLongMap!1235)

(assert (=> bm!300681 (= call!300684 (+!378 (ite c!736195 lt!1544237 lt!1544231) (ite c!736195 (tuple2!47423 lt!1544223 lt!1544226) (tuple2!47423 lt!1544221 (minValue!5064 (v!42918 (underlying!9802 thiss!47260)))))))))

(declare-fun b!4326859 () Bool)

(declare-fun lt!1544236 () tuple2!47420)

(assert (=> b!4326859 (= e!2692296 (tuple2!47421 (_1!26998 lt!1544236) (_2!26998 lt!1544236)))))

(assert (=> b!4326859 (= lt!1544219 call!300689)))

(assert (=> b!4326859 (= lt!1544224 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544211 () Unit!68062)

(assert (=> b!4326859 (= lt!1544211 call!300685)))

(declare-fun call!300687 () ListLongMap!1235)

(assert (=> b!4326859 (= call!300680 call!300687)))

(declare-fun lt!1544210 () Unit!68062)

(assert (=> b!4326859 (= lt!1544210 lt!1544211)))

(declare-fun call!300690 () ListLongMap!1235)

(assert (=> b!4326859 (= lt!1544237 call!300690)))

(assert (=> b!4326859 (= lt!1544215 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544240 () Unit!68062)

(assert (=> b!4326859 (= lt!1544240 call!300688)))

(declare-fun call!300692 () ListLongMap!1235)

(assert (=> b!4326859 (= call!300692 call!300682)))

(declare-fun lt!1544213 () Unit!68062)

(assert (=> b!4326859 (= lt!1544213 lt!1544240)))

(declare-fun call!300681 () tuple2!47420)

(assert (=> b!4326859 (= lt!1544236 call!300681)))

(declare-fun bm!300682 () Bool)

(assert (=> bm!300682 (= call!300687 (+!378 (ite c!736195 call!300686 call!300684) (tuple2!47423 lt!1544223 lt!1544226)))))

(declare-fun bm!300683 () Bool)

(assert (=> bm!300683 (= call!300681 (repackFrom!15 thiss!47260 (ite c!736197 (_2!26998 lt!1544232) (v!42918 (_2!26997 lt!1543983))) (bvsub (bvsub (size!35799 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun b!4326860 () Bool)

(assert (=> b!4326860 (= e!2692292 e!2692291)))

(declare-fun c!736196 () Bool)

(assert (=> b!4326860 (= c!736196 (bvsgt (bvsub (size!35799 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!300684 () Bool)

(assert (=> bm!300684 (= call!300690 (+!378 (ite c!736195 call!300689 call!300691) (ite c!736195 (tuple2!47423 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260)))) (tuple2!47423 lt!1544217 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260)))))))))

(declare-fun b!4326861 () Bool)

(assert (=> b!4326861 (= e!2692292 e!2692294)))

(assert (=> b!4326861 (= lt!1544232 (update!566 (v!42918 (_2!26997 lt!1543983)) lt!1544223 lt!1544226))))

(declare-fun c!736200 () Bool)

(assert (=> b!4326861 (= c!736200 (contains!10546 lt!1544225 lt!1544223))))

(declare-fun lt!1544235 () Unit!68062)

(assert (=> b!4326861 (= lt!1544235 e!2692290)))

(declare-fun c!736198 () Bool)

(assert (=> b!4326861 (= c!736198 (_1!26998 lt!1544232))))

(declare-fun b!4326862 () Bool)

(assert (=> b!4326862 false))

(declare-fun lt!1544230 () Unit!68062)

(declare-fun lt!1544222 () Unit!68062)

(assert (=> b!4326862 (= lt!1544230 lt!1544222)))

(declare-fun lt!1544218 () (_ BitVec 32))

(assert (=> b!4326862 (not (arrayContainsKey!0 (_keys!5113 (v!42918 (underlying!9802 thiss!47260))) lt!1544223 lt!1544218))))

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!17392 (_ BitVec 32) (_ BitVec 64) List!48575) Unit!68062)

(assert (=> b!4326862 (= lt!1544222 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!5113 (v!42918 (underlying!9802 thiss!47260))) lt!1544218 lt!1544223 (Cons!48451 lt!1544223 Nil!48451)))))

(assert (=> b!4326862 (= lt!1544218 (bvadd (bvsub (size!35799 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun lt!1544220 () Unit!68062)

(declare-fun lt!1544238 () Unit!68062)

(assert (=> b!4326862 (= lt!1544220 lt!1544238)))

(assert (=> b!4326862 (arrayNoDuplicates!0 (_keys!5113 (v!42918 (underlying!9802 thiss!47260))) (bvsub (size!35799 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) #b00000000000000000000000000000001) Nil!48451)))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!17392 (_ BitVec 32) (_ BitVec 32)) Unit!68062)

(assert (=> b!4326862 (= lt!1544238 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!5113 (v!42918 (underlying!9802 thiss!47260))) #b00000000000000000000000000000000 (bvsub (size!35799 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) #b00000000000000000000000000000001)))))

(declare-fun lt!1544229 () Unit!68062)

(declare-fun lt!1544212 () Unit!68062)

(assert (=> b!4326862 (= lt!1544229 lt!1544212)))

(assert (=> b!4326862 e!2692297))

(declare-fun c!736199 () Bool)

(assert (=> b!4326862 (= c!736199 (and (not (= lt!1544223 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1544223 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!4 (array!17392 array!17390 (_ BitVec 32) (_ BitVec 32) V!9916 V!9916 (_ BitVec 64) (_ BitVec 32) Int) Unit!68062)

(assert (=> b!4326862 (= lt!1544212 (lemmaListMapContainsThenArrayContainsFrom!4 (_keys!5113 (v!42918 (underlying!9802 thiss!47260))) (_values!5088 (v!42918 (underlying!9802 thiss!47260))) (mask!13443 (v!42918 (underlying!9802 thiss!47260))) (extraKeys!5052 (v!42918 (underlying!9802 thiss!47260))) (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) lt!1544223 lt!1544234 (defaultEntry!5192 (v!42918 (underlying!9802 thiss!47260)))))))

(assert (=> b!4326862 (= lt!1544234 (bvadd (bvsub (size!35799 (_keys!5113 (v!42918 (underlying!9802 thiss!47260)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun Unit!68072 () Unit!68062)

(assert (=> b!4326862 (= e!2692290 Unit!68072)))

(declare-fun b!4326863 () Bool)

(declare-fun lt!1544227 () tuple2!47420)

(assert (=> b!4326863 (= lt!1544227 call!300681)))

(assert (=> b!4326863 (= e!2692291 (tuple2!47421 (_1!26998 lt!1544227) (_2!26998 lt!1544227)))))

(declare-fun bm!300685 () Bool)

(assert (=> bm!300685 (= call!300683 (+!378 (ite c!736195 lt!1544219 lt!1544231) (tuple2!47423 lt!1544223 lt!1544226)))))

(declare-fun bm!300686 () Bool)

(assert (=> bm!300686 (= call!300692 (+!378 (ite c!736195 call!300684 call!300689) (ite c!736195 (tuple2!47423 lt!1544215 (minValue!5064 (v!42918 (underlying!9802 thiss!47260)))) (tuple2!47423 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260)))))))))

(declare-fun b!4326864 () Bool)

(assert (=> b!4326864 (= e!2692296 (tuple2!47421 true (_2!26998 lt!1544232)))))

(assert (=> b!4326864 (= lt!1544228 call!300689)))

(assert (=> b!4326864 (= lt!1544217 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544214 () Unit!68062)

(assert (=> b!4326864 (= lt!1544214 call!300688)))

(assert (=> b!4326864 (= call!300690 call!300682)))

(declare-fun lt!1544209 () Unit!68062)

(assert (=> b!4326864 (= lt!1544209 lt!1544214)))

(assert (=> b!4326864 (= lt!1544231 call!300692)))

(assert (=> b!4326864 (= lt!1544221 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544233 () Unit!68062)

(assert (=> b!4326864 (= lt!1544233 call!300685)))

(assert (=> b!4326864 (= call!300680 call!300687)))

(declare-fun lt!1544239 () Unit!68062)

(assert (=> b!4326864 (= lt!1544239 lt!1544233)))

(declare-fun bm!300687 () Bool)

(assert (=> bm!300687 (= call!300691 (+!378 (ite c!736195 lt!1544237 lt!1544228) (ite c!736195 (tuple2!47423 lt!1544215 (minValue!5064 (v!42918 (underlying!9802 thiss!47260)))) (tuple2!47423 lt!1544223 lt!1544226))))))

(declare-fun b!4326865 () Bool)

(assert (=> b!4326865 (= e!2692297 (ite (= lt!1544223 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5052 (v!42918 (underlying!9802 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5052 (v!42918 (underlying!9802 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!1271984 c!736197) b!4326861))

(assert (= (and d!1271984 (not c!736197)) b!4326860))

(assert (= (and b!4326861 c!736200) b!4326862))

(assert (= (and b!4326861 (not c!736200)) b!4326853))

(assert (= (and b!4326862 c!736199) b!4326857))

(assert (= (and b!4326862 (not c!736199)) b!4326865))

(assert (= (and b!4326861 c!736198) b!4326858))

(assert (= (and b!4326861 (not c!736198)) b!4326856))

(assert (= (and b!4326858 c!736195) b!4326859))

(assert (= (and b!4326858 (not c!736195)) b!4326864))

(assert (= (or b!4326859 b!4326864) bm!300681))

(assert (= (or b!4326859 b!4326864) bm!300675))

(assert (= (or b!4326859 b!4326864) bm!300687))

(assert (= (or b!4326859 b!4326864) bm!300678))

(assert (= (or b!4326859 b!4326864) bm!300676))

(assert (= (or b!4326859 b!4326864) bm!300680))

(assert (= (or b!4326859 b!4326864) bm!300685))

(assert (= (or b!4326859 b!4326864) bm!300677))

(assert (= (or b!4326859 b!4326864) bm!300682))

(assert (= (or b!4326859 b!4326864) bm!300684))

(assert (= (or b!4326859 b!4326864) bm!300686))

(assert (= (or b!4326859 b!4326864) bm!300679))

(assert (= (and b!4326860 c!736196) b!4326863))

(assert (= (and b!4326860 (not c!736196)) b!4326855))

(assert (= (or b!4326859 b!4326863) bm!300683))

(assert (= (and d!1271984 (not res!1773134)) b!4326852))

(assert (= (and b!4326852 res!1773133) b!4326854))

(declare-fun m!4921881 () Bool)

(assert (=> bm!300686 m!4921881))

(declare-fun m!4921883 () Bool)

(assert (=> bm!300687 m!4921883))

(declare-fun m!4921885 () Bool)

(assert (=> bm!300684 m!4921885))

(declare-fun m!4921887 () Bool)

(assert (=> bm!300678 m!4921887))

(declare-fun m!4921889 () Bool)

(assert (=> b!4326854 m!4921889))

(assert (=> b!4326854 m!4921827))

(declare-fun m!4921891 () Bool)

(assert (=> b!4326857 m!4921891))

(declare-fun m!4921893 () Bool)

(assert (=> bm!300682 m!4921893))

(declare-fun m!4921895 () Bool)

(assert (=> bm!300681 m!4921895))

(declare-fun m!4921897 () Bool)

(assert (=> b!4326861 m!4921897))

(declare-fun m!4921899 () Bool)

(assert (=> b!4326861 m!4921899))

(declare-fun m!4921901 () Bool)

(assert (=> b!4326852 m!4921901))

(declare-fun m!4921903 () Bool)

(assert (=> b!4326862 m!4921903))

(declare-fun m!4921905 () Bool)

(assert (=> b!4326862 m!4921905))

(declare-fun m!4921907 () Bool)

(assert (=> b!4326862 m!4921907))

(declare-fun m!4921909 () Bool)

(assert (=> b!4326862 m!4921909))

(declare-fun m!4921911 () Bool)

(assert (=> b!4326862 m!4921911))

(declare-fun m!4921913 () Bool)

(assert (=> bm!300685 m!4921913))

(declare-fun m!4921915 () Bool)

(assert (=> bm!300680 m!4921915))

(declare-fun m!4921917 () Bool)

(assert (=> bm!300677 m!4921917))

(declare-fun m!4921919 () Bool)

(assert (=> bm!300683 m!4921919))

(declare-fun m!4921921 () Bool)

(assert (=> bm!300675 m!4921921))

(declare-fun m!4921923 () Bool)

(assert (=> bm!300676 m!4921923))

(declare-fun m!4921925 () Bool)

(assert (=> d!1271984 m!4921925))

(declare-fun m!4921927 () Bool)

(assert (=> d!1271984 m!4921927))

(declare-fun m!4921929 () Bool)

(assert (=> d!1271984 m!4921929))

(assert (=> d!1271984 m!4921731))

(declare-fun m!4921931 () Bool)

(assert (=> bm!300679 m!4921931))

(assert (=> b!4326620 d!1271984))

(declare-fun b!4326874 () Bool)

(declare-fun e!2692305 () Bool)

(declare-fun e!2692304 () Bool)

(assert (=> b!4326874 (= e!2692305 e!2692304)))

(declare-fun lt!1544248 () (_ BitVec 64))

(assert (=> b!4326874 (= lt!1544248 (select (arr!7760 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))) #b00000000000000000000000000000000))))

(declare-fun lt!1544247 () Unit!68062)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17392 (_ BitVec 64) (_ BitVec 32)) Unit!68062)

(assert (=> b!4326874 (= lt!1544247 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) lt!1544248 #b00000000000000000000000000000000))))

(assert (=> b!4326874 (arrayContainsKey!0 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) lt!1544248 #b00000000000000000000000000000000)))

(declare-fun lt!1544249 () Unit!68062)

(assert (=> b!4326874 (= lt!1544249 lt!1544247)))

(declare-fun res!1773140 () Bool)

(assert (=> b!4326874 (= res!1773140 (= (seekEntryOrOpen!0 (select (arr!7760 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))) #b00000000000000000000000000000000) (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) (mask!13443 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))) (Found!23 #b00000000000000000000000000000000)))))

(assert (=> b!4326874 (=> (not res!1773140) (not e!2692304))))

(declare-fun b!4326875 () Bool)

(declare-fun call!300695 () Bool)

(assert (=> b!4326875 (= e!2692305 call!300695)))

(declare-fun b!4326876 () Bool)

(assert (=> b!4326876 (= e!2692304 call!300695)))

(declare-fun d!1271986 () Bool)

(declare-fun res!1773139 () Bool)

(declare-fun e!2692306 () Bool)

(assert (=> d!1271986 (=> res!1773139 e!2692306)))

(assert (=> d!1271986 (= res!1773139 (bvsge #b00000000000000000000000000000000 (size!35799 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))))))))

(assert (=> d!1271986 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) (mask!13443 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))) e!2692306)))

(declare-fun b!4326877 () Bool)

(assert (=> b!4326877 (= e!2692306 e!2692305)))

(declare-fun c!736203 () Bool)

(assert (=> b!4326877 (= c!736203 (validKeyInArray!0 (select (arr!7760 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))) #b00000000000000000000000000000000)))))

(declare-fun bm!300690 () Bool)

(assert (=> bm!300690 (= call!300695 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) (mask!13443 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))))))

(assert (= (and d!1271986 (not res!1773139)) b!4326877))

(assert (= (and b!4326877 c!736203) b!4326874))

(assert (= (and b!4326877 (not c!736203)) b!4326875))

(assert (= (and b!4326874 res!1773140) b!4326876))

(assert (= (or b!4326876 b!4326875) bm!300690))

(assert (=> b!4326874 m!4921829))

(declare-fun m!4921933 () Bool)

(assert (=> b!4326874 m!4921933))

(declare-fun m!4921935 () Bool)

(assert (=> b!4326874 m!4921935))

(assert (=> b!4326874 m!4921829))

(declare-fun m!4921937 () Bool)

(assert (=> b!4326874 m!4921937))

(assert (=> b!4326877 m!4921829))

(assert (=> b!4326877 m!4921829))

(assert (=> b!4326877 m!4921833))

(declare-fun m!4921939 () Bool)

(assert (=> bm!300690 m!4921939))

(assert (=> b!4326635 d!1271986))

(declare-fun bm!300691 () Bool)

(declare-fun call!300719 () Bool)

(declare-fun call!300707 () Bool)

(assert (=> bm!300691 (= call!300719 call!300707)))

(declare-fun b!4326878 () Bool)

(declare-fun e!2692311 () tuple2!47420)

(declare-fun lt!1544261 () tuple2!47420)

(assert (=> b!4326878 (= e!2692311 (tuple2!47421 (_1!26998 lt!1544261) (_2!26998 lt!1544261)))))

(declare-fun call!300708 () tuple2!47420)

(assert (=> b!4326878 (= lt!1544261 call!300708)))

(declare-fun bm!300692 () Bool)

(declare-fun call!300699 () SeekEntryResult!23)

(declare-fun call!300714 () SeekEntryResult!23)

(assert (=> bm!300692 (= call!300699 call!300714)))

(declare-fun b!4326879 () Bool)

(declare-fun c!736209 () Bool)

(declare-fun lt!1544252 () SeekEntryResult!23)

(assert (=> b!4326879 (= c!736209 ((_ is MissingVacant!23) lt!1544252))))

(declare-fun e!2692325 () Bool)

(declare-fun e!2692316 () Bool)

(assert (=> b!4326879 (= e!2692325 e!2692316)))

(declare-fun b!4326880 () Bool)

(declare-fun e!2692322 () Unit!68062)

(declare-fun Unit!68073 () Unit!68062)

(assert (=> b!4326880 (= e!2692322 Unit!68073)))

(declare-fun lt!1544276 () Unit!68062)

(declare-fun call!300712 () Unit!68062)

(assert (=> b!4326880 (= lt!1544276 call!300712)))

(declare-fun lt!1544273 () SeekEntryResult!23)

(assert (=> b!4326880 (= lt!1544273 call!300699)))

(declare-fun c!736214 () Bool)

(assert (=> b!4326880 (= c!736214 ((_ is MissingZero!23) lt!1544273))))

(declare-fun e!2692314 () Bool)

(assert (=> b!4326880 e!2692314))

(declare-fun lt!1544258 () Unit!68062)

(assert (=> b!4326880 (= lt!1544258 lt!1544276)))

(assert (=> b!4326880 false))

(declare-fun b!4326881 () Bool)

(declare-fun e!2692310 () Unit!68062)

(declare-fun lt!1544267 () Unit!68062)

(assert (=> b!4326881 (= e!2692310 lt!1544267)))

(assert (=> b!4326881 (= lt!1544267 call!300712)))

(declare-fun call!300706 () SeekEntryResult!23)

(assert (=> b!4326881 (= lt!1544252 call!300706)))

(declare-fun c!736213 () Bool)

(assert (=> b!4326881 (= c!736213 ((_ is MissingZero!23) lt!1544252))))

(assert (=> b!4326881 e!2692325))

(declare-fun res!1773146 () Bool)

(declare-fun b!4326882 () Bool)

(assert (=> b!4326882 (= res!1773146 (= (select (arr!7760 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577))) (index!1475 lt!1544252)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2692317 () Bool)

(assert (=> b!4326882 (=> (not res!1773146) (not e!2692317))))

(declare-fun b!4326883 () Bool)

(declare-fun e!2692315 () Bool)

(declare-fun e!2692308 () Bool)

(assert (=> b!4326883 (= e!2692315 e!2692308)))

(declare-fun call!300704 () ListLongMap!1235)

(declare-fun res!1773148 () Bool)

(assert (=> b!4326883 (= res!1773148 (contains!10546 call!300704 (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!4326883 (=> (not res!1773148) (not e!2692308))))

(declare-fun bm!300694 () Bool)

(declare-fun call!300717 () Bool)

(declare-fun call!300696 () Bool)

(assert (=> bm!300694 (= call!300717 call!300696)))

(declare-fun b!4326884 () Bool)

(declare-fun e!2692321 () Bool)

(assert (=> b!4326884 (= e!2692321 ((_ is Undefined!23) lt!1544273))))

(declare-fun bm!300695 () Bool)

(declare-fun call!300705 () ListLongMap!1235)

(declare-fun call!300713 () ListLongMap!1235)

(assert (=> bm!300695 (= call!300705 call!300713)))

(declare-fun b!4326885 () Bool)

(declare-fun e!2692320 () tuple2!47420)

(declare-fun e!2692323 () tuple2!47420)

(assert (=> b!4326885 (= e!2692320 e!2692323)))

(declare-fun lt!1544268 () SeekEntryResult!23)

(assert (=> b!4326885 (= lt!1544268 (seekEntryOrOpen!0 (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577))))))

(declare-fun c!736211 () Bool)

(assert (=> b!4326885 (= c!736211 ((_ is Undefined!23) lt!1544268))))

(declare-fun c!736206 () Bool)

(declare-fun lt!1544263 () SeekEntryResult!23)

(declare-fun bm!300696 () Bool)

(declare-fun call!300700 () Bool)

(declare-fun lt!1544266 () SeekEntryResult!23)

(declare-fun c!736210 () Bool)

(assert (=> bm!300696 (= call!300700 (inRange!0 (ite c!736211 (ite c!736206 (index!1473 lt!1544263) (ite c!736213 (index!1474 lt!1544252) (index!1475 lt!1544252))) (ite c!736210 (index!1473 lt!1544266) (ite c!736214 (index!1474 lt!1544273) (index!1475 lt!1544273)))) (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577))))))

(declare-fun b!4326886 () Bool)

(declare-fun lt!1544256 () tuple2!47420)

(assert (=> b!4326886 (= lt!1544256 call!300708)))

(declare-fun e!2692313 () tuple2!47420)

(assert (=> b!4326886 (= e!2692313 (tuple2!47421 (_1!26998 lt!1544256) (_2!26998 lt!1544256)))))

(declare-fun c!736215 () Bool)

(declare-fun bm!300697 () Bool)

(assert (=> bm!300697 (= call!300708 (updateHelperNewKey!13 (ite c!736126 (_2!26998 lt!1543976) call!300577) (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260))))) (ite c!736215 (index!1475 lt!1544268) (index!1474 lt!1544268))))))

(declare-fun call!300715 () Unit!68062)

(declare-fun bm!300698 () Bool)

(assert (=> bm!300698 (= call!300715 (lemmaInListMapThenSeekEntryOrOpenFindsIt!13 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (zeroValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (minValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!5192 (ite c!736126 (_2!26998 lt!1543976) call!300577))))))

(declare-fun b!4326887 () Bool)

(declare-fun e!2692327 () ListLongMap!1235)

(assert (=> b!4326887 (= e!2692327 (getCurrentListMap!26 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (zeroValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (minValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) #b00000000000000000000000000000000 (defaultEntry!5192 (ite c!736126 (_2!26998 lt!1543976) call!300577))))))

(declare-fun b!4326888 () Bool)

(declare-fun call!300718 () ListLongMap!1235)

(assert (=> b!4326888 (= e!2692308 (= call!300704 (+!378 call!300718 (tuple2!47423 (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260)))))))))))

(declare-fun b!4326889 () Bool)

(declare-fun e!2692307 () Bool)

(declare-fun call!300710 () Bool)

(assert (=> b!4326889 (= e!2692307 (not call!300710))))

(declare-fun b!4326890 () Bool)

(assert (=> b!4326890 (= e!2692311 e!2692313)))

(declare-fun c!736217 () Bool)

(assert (=> b!4326890 (= c!736217 ((_ is MissingZero!23) lt!1544268))))

(declare-fun bm!300699 () Bool)

(declare-fun call!300697 () ListLongMap!1235)

(declare-fun call!300698 () ListLongMap!1235)

(assert (=> bm!300699 (= call!300697 call!300698)))

(declare-fun b!4326891 () Bool)

(assert (=> b!4326891 (= e!2692316 ((_ is Undefined!23) lt!1544252))))

(declare-fun b!4326892 () Bool)

(declare-fun e!2692324 () ListLongMap!1235)

(declare-fun call!300702 () ListLongMap!1235)

(assert (=> b!4326892 (= e!2692324 call!300702)))

(declare-fun bm!300700 () Bool)

(assert (=> bm!300700 (= call!300714 (seekEntryOrOpen!0 (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577))))))

(declare-fun b!4326893 () Bool)

(declare-fun res!1773150 () Bool)

(assert (=> b!4326893 (= res!1773150 call!300696)))

(declare-fun e!2692318 () Bool)

(assert (=> b!4326893 (=> (not res!1773150) (not e!2692318))))

(declare-fun e!2692319 () Bool)

(declare-fun b!4326894 () Bool)

(assert (=> b!4326894 (= e!2692319 (= (select (arr!7760 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577))) (index!1473 lt!1544266)) (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!4326895 () Bool)

(declare-fun res!1773144 () Bool)

(declare-fun call!300701 () Bool)

(assert (=> b!4326895 (= res!1773144 call!300701)))

(assert (=> b!4326895 (=> (not res!1773144) (not e!2692319))))

(declare-fun bm!300701 () Bool)

(assert (=> bm!300701 (= call!300712 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!13 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (zeroValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (minValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!5192 (ite c!736126 (_2!26998 lt!1543976) call!300577))))))

(declare-fun b!4326896 () Bool)

(declare-fun e!2692326 () Bool)

(assert (=> b!4326896 (= e!2692326 e!2692315)))

(declare-fun c!736212 () Bool)

(declare-fun lt!1544269 () tuple2!47420)

(assert (=> b!4326896 (= c!736212 (_1!26998 lt!1544269))))

(declare-fun lt!1544254 () array!17390)

(declare-fun bm!300702 () Bool)

(declare-fun lt!1544260 () (_ BitVec 32))

(declare-fun c!736216 () Bool)

(declare-fun c!736208 () Bool)

(assert (=> bm!300702 (= call!300713 (getCurrentListMap!26 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (ite (or c!736208 c!736211) (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577)) lt!1544254) (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (ite c!736208 (ite c!736216 (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577)) lt!1544260) (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577))) (zeroValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (ite c!736208 (ite c!736216 (minValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260)))))) (minValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577))) #b00000000000000000000000000000000 (defaultEntry!5192 (ite c!736126 (_2!26998 lt!1543976) call!300577))))))

(declare-fun bm!300703 () Bool)

(assert (=> bm!300703 (= call!300701 call!300700)))

(declare-fun b!4326897 () Bool)

(assert (=> b!4326897 (= e!2692324 (getCurrentListMap!26 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (zeroValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (minValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) #b00000000000000000000000000000000 (defaultEntry!5192 (ite c!736126 (_2!26998 lt!1543976) call!300577))))))

(declare-fun bm!300704 () Bool)

(assert (=> bm!300704 (= call!300702 call!300713)))

(declare-fun bm!300705 () Bool)

(declare-fun c!736204 () Bool)

(assert (=> bm!300705 (= c!736204 c!736211)))

(declare-fun call!300703 () Bool)

(assert (=> bm!300705 (= call!300703 (contains!10546 e!2692324 (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!4326898 () Bool)

(assert (=> b!4326898 (= e!2692315 (= call!300718 call!300704))))

(declare-fun bm!300706 () Bool)

(assert (=> bm!300706 (= call!300696 call!300700)))

(declare-fun b!4326899 () Bool)

(declare-fun e!2692312 () Bool)

(assert (=> b!4326899 (= e!2692312 (not call!300719))))

(declare-fun b!4326900 () Bool)

(assert (=> b!4326900 (= c!736215 ((_ is MissingVacant!23) lt!1544268))))

(assert (=> b!4326900 (= e!2692323 e!2692311)))

(declare-fun bm!300707 () Bool)

(declare-fun lt!1544251 () (_ BitVec 32))

(assert (=> bm!300707 (= call!300698 (getCurrentListMap!26 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (ite c!736208 (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (array!17391 (store (arr!7759 (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577))) (index!1473 lt!1544268) (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260)))))) (size!35798 (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577))))) (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (ite (and c!736208 c!736216) lt!1544251 (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577))) (ite (and c!736208 c!736216) (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260))))) (zeroValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577))) (minValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) #b00000000000000000000000000000000 (defaultEntry!5192 (ite c!736126 (_2!26998 lt!1543976) call!300577))))))

(declare-fun b!4326901 () Bool)

(declare-fun res!1773154 () Bool)

(assert (=> b!4326901 (=> (not res!1773154) (not e!2692312))))

(assert (=> b!4326901 (= res!1773154 (= (select (arr!7760 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577))) (index!1474 lt!1544252)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!300708 () Bool)

(declare-fun call!300709 () ListLongMap!1235)

(declare-fun call!300716 () ListLongMap!1235)

(assert (=> bm!300708 (= call!300709 call!300716)))

(declare-fun b!4326902 () Bool)

(declare-fun e!2692328 () Bool)

(assert (=> b!4326902 (= e!2692321 e!2692328)))

(declare-fun res!1773143 () Bool)

(declare-fun call!300711 () Bool)

(assert (=> b!4326902 (= res!1773143 call!300711)))

(assert (=> b!4326902 (=> (not res!1773143) (not e!2692328))))

(declare-fun b!4326903 () Bool)

(declare-fun res!1773147 () Bool)

(assert (=> b!4326903 (=> (not res!1773147) (not e!2692312))))

(assert (=> b!4326903 (= res!1773147 call!300717)))

(assert (=> b!4326903 (= e!2692325 e!2692312)))

(declare-fun b!4326904 () Bool)

(assert (=> b!4326904 (= e!2692317 (not call!300719))))

(declare-fun bm!300709 () Bool)

(assert (=> bm!300709 (= call!300707 (arrayContainsKey!0 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000))))

(declare-fun res!1773152 () Bool)

(declare-fun b!4326905 () Bool)

(assert (=> b!4326905 (= res!1773152 (= (select (arr!7760 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577))) (index!1475 lt!1544273)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4326905 (=> (not res!1773152) (not e!2692328))))

(declare-fun bm!300710 () Bool)

(assert (=> bm!300710 (= call!300706 call!300714)))

(declare-fun b!4326906 () Bool)

(assert (=> b!4326906 (= e!2692327 (ite c!736216 call!300705 call!300697))))

(declare-fun b!4326907 () Bool)

(declare-fun e!2692309 () tuple2!47420)

(assert (=> b!4326907 (= e!2692320 e!2692309)))

(assert (=> b!4326907 (= c!736216 (= (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4326908 () Bool)

(declare-fun lt!1544265 () Unit!68062)

(declare-fun lt!1544257 () Unit!68062)

(assert (=> b!4326908 (= lt!1544265 lt!1544257)))

(assert (=> b!4326908 (= call!300709 call!300705)))

(assert (=> b!4326908 (= lt!1544257 (lemmaChangeLongMinValueKeyThenAddPairToListMap!13 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577)) lt!1544260 (zeroValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (minValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260))))) (defaultEntry!5192 (ite c!736126 (_2!26998 lt!1543976) call!300577))))))

(assert (=> b!4326908 (= lt!1544260 (bvor (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577)) #b00000000000000000000000000000010))))

(assert (=> b!4326908 (= e!2692309 (tuple2!47421 true (LongMapFixedSize!9575 (defaultEntry!5192 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (bvor (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577)) #b00000000000000000000000000000010) (zeroValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260))))) (_size!9618 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_vacant!4850 (ite c!736126 (_2!26998 lt!1543976) call!300577)))))))

(declare-fun bm!300711 () Bool)

(assert (=> bm!300711 (= call!300718 (map!10495 (ite c!736212 (ite c!736126 (_2!26998 lt!1543976) call!300577) (_2!26998 lt!1544269))))))

(declare-fun b!4326909 () Bool)

(declare-fun res!1773149 () Bool)

(assert (=> b!4326909 (=> (not res!1773149) (not e!2692307))))

(assert (=> b!4326909 (= res!1773149 (= (select (arr!7760 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577))) (index!1474 lt!1544273)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4326910 () Bool)

(declare-fun lt!1544264 () Unit!68062)

(declare-fun lt!1544275 () Unit!68062)

(assert (=> b!4326910 (= lt!1544264 lt!1544275)))

(assert (=> b!4326910 (= call!300709 call!300697)))

(assert (=> b!4326910 (= lt!1544275 (lemmaChangeZeroKeyThenAddPairToListMap!13 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577)) lt!1544251 (zeroValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260))))) (minValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (defaultEntry!5192 (ite c!736126 (_2!26998 lt!1543976) call!300577))))))

(assert (=> b!4326910 (= lt!1544251 (bvor (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577)) #b00000000000000000000000000000001))))

(assert (=> b!4326910 (= e!2692309 (tuple2!47421 true (LongMapFixedSize!9575 (defaultEntry!5192 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (bvor (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577)) #b00000000000000000000000000000001) (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260))))) (minValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_size!9618 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_vacant!4850 (ite c!736126 (_2!26998 lt!1543976) call!300577)))))))

(declare-fun b!4326911 () Bool)

(assert (=> b!4326911 (= e!2692316 e!2692317)))

(declare-fun res!1773151 () Bool)

(assert (=> b!4326911 (= res!1773151 call!300717)))

(assert (=> b!4326911 (=> (not res!1773151) (not e!2692317))))

(declare-fun b!4326912 () Bool)

(declare-fun lt!1544262 () Unit!68062)

(assert (=> b!4326912 (= e!2692322 lt!1544262)))

(assert (=> b!4326912 (= lt!1544262 call!300715)))

(assert (=> b!4326912 (= lt!1544266 call!300699)))

(declare-fun res!1773141 () Bool)

(assert (=> b!4326912 (= res!1773141 ((_ is Found!23) lt!1544266))))

(assert (=> b!4326912 (=> (not res!1773141) (not e!2692319))))

(assert (=> b!4326912 e!2692319))

(declare-fun bm!300712 () Bool)

(assert (=> bm!300712 (= call!300710 call!300707)))

(declare-fun bm!300693 () Bool)

(assert (=> bm!300693 (= call!300716 (+!378 e!2692327 (ite c!736208 (ite c!736216 (tuple2!47423 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260)))))) (tuple2!47423 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260))))))) (tuple2!47423 (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260)))))))))))

(declare-fun c!736205 () Bool)

(assert (=> bm!300693 (= c!736205 c!736208)))

(declare-fun d!1271988 () Bool)

(assert (=> d!1271988 e!2692326))

(declare-fun res!1773153 () Bool)

(assert (=> d!1271988 (=> (not res!1773153) (not e!2692326))))

(assert (=> d!1271988 (= res!1773153 (valid!3805 (_2!26998 lt!1544269)))))

(assert (=> d!1271988 (= lt!1544269 e!2692320)))

(assert (=> d!1271988 (= c!736208 (= (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvneg (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!1271988 (valid!3805 (ite c!736126 (_2!26998 lt!1543976) call!300577))))

(assert (=> d!1271988 (= (update!566 (ite c!736126 (_2!26998 lt!1543976) call!300577) (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260)))))) lt!1544269)))

(declare-fun b!4326913 () Bool)

(assert (=> b!4326913 (= e!2692318 (= (select (arr!7760 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577))) (index!1473 lt!1544263)) (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!300713 () Bool)

(assert (=> bm!300713 (= call!300711 call!300701)))

(declare-fun b!4326914 () Bool)

(declare-fun lt!1544255 () Unit!68062)

(assert (=> b!4326914 (= lt!1544255 e!2692310)))

(assert (=> b!4326914 (= c!736206 call!300703)))

(assert (=> b!4326914 (= e!2692323 (tuple2!47421 false (ite c!736126 (_2!26998 lt!1543976) call!300577)))))

(declare-fun b!4326915 () Bool)

(declare-fun lt!1544253 () Unit!68062)

(declare-fun lt!1544270 () Unit!68062)

(assert (=> b!4326915 (= lt!1544253 lt!1544270)))

(assert (=> b!4326915 (contains!10546 call!300702 (select (arr!7760 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577))) (index!1473 lt!1544268)))))

(assert (=> b!4326915 (= lt!1544270 (lemmaValidKeyInArrayIsInListMap!16 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) lt!1544254 (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (zeroValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (minValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (index!1473 lt!1544268) (defaultEntry!5192 (ite c!736126 (_2!26998 lt!1543976) call!300577))))))

(assert (=> b!4326915 (= lt!1544254 (array!17391 (store (arr!7759 (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577))) (index!1473 lt!1544268) (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260)))))) (size!35798 (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577)))))))

(declare-fun lt!1544274 () Unit!68062)

(declare-fun lt!1544250 () Unit!68062)

(assert (=> b!4326915 (= lt!1544274 lt!1544250)))

(assert (=> b!4326915 (= call!300716 call!300698)))

(assert (=> b!4326915 (= lt!1544250 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!13 (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (zeroValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (minValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (index!1473 lt!1544268) (ite c!736126 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736128 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260))))) (defaultEntry!5192 (ite c!736126 (_2!26998 lt!1543976) call!300577))))))

(declare-fun lt!1544271 () Unit!68062)

(assert (=> b!4326915 (= lt!1544271 e!2692322)))

(assert (=> b!4326915 (= c!736210 call!300703)))

(assert (=> b!4326915 (= e!2692313 (tuple2!47421 true (LongMapFixedSize!9575 (defaultEntry!5192 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (mask!13443 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (extraKeys!5052 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (zeroValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (minValue!5064 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_size!9618 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (_keys!5113 (ite c!736126 (_2!26998 lt!1543976) call!300577)) (array!17391 (store (arr!7759 (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577))) (index!1473 lt!1544268) (ite c!736126 (minValue!5064 (v!42918 (underlying!9802 thiss!47260))) (ite c!736128 (zeroValue!5064 (v!42918 (underlying!9802 thiss!47260))) (minValue!5064 (v!42918 (underlying!9802 thiss!47260)))))) (size!35798 (_values!5088 (ite c!736126 (_2!26998 lt!1543976) call!300577)))) (_vacant!4850 (ite c!736126 (_2!26998 lt!1543976) call!300577)))))))

(declare-fun b!4326916 () Bool)

(declare-fun Unit!68074 () Unit!68062)

(assert (=> b!4326916 (= e!2692310 Unit!68074)))

(declare-fun lt!1544259 () Unit!68062)

(assert (=> b!4326916 (= lt!1544259 call!300715)))

(assert (=> b!4326916 (= lt!1544263 call!300706)))

(declare-fun res!1773145 () Bool)

(assert (=> b!4326916 (= res!1773145 ((_ is Found!23) lt!1544263))))

(assert (=> b!4326916 (=> (not res!1773145) (not e!2692318))))

(assert (=> b!4326916 e!2692318))

(declare-fun lt!1544272 () Unit!68062)

(assert (=> b!4326916 (= lt!1544272 lt!1544259)))

(assert (=> b!4326916 false))

(declare-fun b!4326917 () Bool)

(assert (=> b!4326917 (= e!2692328 (not call!300710))))

(declare-fun b!4326918 () Bool)

(declare-fun res!1773142 () Bool)

(assert (=> b!4326918 (=> (not res!1773142) (not e!2692307))))

(assert (=> b!4326918 (= res!1773142 call!300711)))

(assert (=> b!4326918 (= e!2692314 e!2692307)))

(declare-fun b!4326919 () Bool)

(declare-fun c!736207 () Bool)

(assert (=> b!4326919 (= c!736207 ((_ is MissingVacant!23) lt!1544273))))

(assert (=> b!4326919 (= e!2692314 e!2692321)))

(declare-fun bm!300714 () Bool)

(assert (=> bm!300714 (= call!300704 (map!10495 (ite c!736212 (_2!26998 lt!1544269) (ite c!736126 (_2!26998 lt!1543976) call!300577))))))

(assert (= (and d!1271988 c!736208) b!4326907))

(assert (= (and d!1271988 (not c!736208)) b!4326885))

(assert (= (and b!4326907 c!736216) b!4326910))

(assert (= (and b!4326907 (not c!736216)) b!4326908))

(assert (= (or b!4326910 b!4326908) bm!300699))

(assert (= (or b!4326910 b!4326908) bm!300695))

(assert (= (or b!4326910 b!4326908) bm!300708))

(assert (= (and b!4326885 c!736211) b!4326914))

(assert (= (and b!4326885 (not c!736211)) b!4326900))

(assert (= (and b!4326914 c!736206) b!4326916))

(assert (= (and b!4326914 (not c!736206)) b!4326881))

(assert (= (and b!4326916 res!1773145) b!4326893))

(assert (= (and b!4326893 res!1773150) b!4326913))

(assert (= (and b!4326881 c!736213) b!4326903))

(assert (= (and b!4326881 (not c!736213)) b!4326879))

(assert (= (and b!4326903 res!1773147) b!4326901))

(assert (= (and b!4326901 res!1773154) b!4326899))

(assert (= (and b!4326879 c!736209) b!4326911))

(assert (= (and b!4326879 (not c!736209)) b!4326891))

(assert (= (and b!4326911 res!1773151) b!4326882))

(assert (= (and b!4326882 res!1773146) b!4326904))

(assert (= (or b!4326899 b!4326904) bm!300691))

(assert (= (or b!4326903 b!4326911) bm!300694))

(assert (= (or b!4326893 bm!300694) bm!300706))

(assert (= (or b!4326916 b!4326881) bm!300710))

(assert (= (and b!4326900 c!736215) b!4326878))

(assert (= (and b!4326900 (not c!736215)) b!4326890))

(assert (= (and b!4326890 c!736217) b!4326886))

(assert (= (and b!4326890 (not c!736217)) b!4326915))

(assert (= (and b!4326915 c!736210) b!4326912))

(assert (= (and b!4326915 (not c!736210)) b!4326880))

(assert (= (and b!4326912 res!1773141) b!4326895))

(assert (= (and b!4326895 res!1773144) b!4326894))

(assert (= (and b!4326880 c!736214) b!4326918))

(assert (= (and b!4326880 (not c!736214)) b!4326919))

(assert (= (and b!4326918 res!1773142) b!4326909))

(assert (= (and b!4326909 res!1773149) b!4326889))

(assert (= (and b!4326919 c!736207) b!4326902))

(assert (= (and b!4326919 (not c!736207)) b!4326884))

(assert (= (and b!4326902 res!1773143) b!4326905))

(assert (= (and b!4326905 res!1773152) b!4326917))

(assert (= (or b!4326889 b!4326917) bm!300712))

(assert (= (or b!4326918 b!4326902) bm!300713))

(assert (= (or b!4326895 bm!300713) bm!300703))

(assert (= (or b!4326912 b!4326880) bm!300692))

(assert (= (or b!4326878 b!4326886) bm!300697))

(assert (= (or bm!300691 bm!300712) bm!300709))

(assert (= (or bm!300710 bm!300692) bm!300700))

(assert (= (or b!4326914 b!4326915) bm!300704))

(assert (= (or b!4326881 b!4326880) bm!300701))

(assert (= (or bm!300706 bm!300703) bm!300696))

(assert (= (or b!4326916 b!4326912) bm!300698))

(assert (= (or b!4326914 b!4326915) bm!300705))

(assert (= (and bm!300705 c!736204) b!4326892))

(assert (= (and bm!300705 (not c!736204)) b!4326897))

(assert (= (or bm!300695 bm!300704) bm!300702))

(assert (= (or bm!300699 b!4326915) bm!300707))

(assert (= (or bm!300708 b!4326915) bm!300693))

(assert (= (and bm!300693 c!736205) b!4326906))

(assert (= (and bm!300693 (not c!736205)) b!4326887))

(assert (= (and d!1271988 res!1773153) b!4326896))

(assert (= (and b!4326896 c!736212) b!4326883))

(assert (= (and b!4326896 (not c!736212)) b!4326898))

(assert (= (and b!4326883 res!1773148) b!4326888))

(assert (= (or b!4326883 b!4326888 b!4326898) bm!300714))

(assert (= (or b!4326888 b!4326898) bm!300711))

(declare-fun m!4921941 () Bool)

(assert (=> b!4326901 m!4921941))

(declare-fun m!4921943 () Bool)

(assert (=> b!4326885 m!4921943))

(declare-fun m!4921945 () Bool)

(assert (=> bm!300696 m!4921945))

(declare-fun m!4921947 () Bool)

(assert (=> bm!300702 m!4921947))

(declare-fun m!4921949 () Bool)

(assert (=> bm!300711 m!4921949))

(declare-fun m!4921951 () Bool)

(assert (=> bm!300709 m!4921951))

(declare-fun m!4921953 () Bool)

(assert (=> b!4326905 m!4921953))

(declare-fun m!4921955 () Bool)

(assert (=> bm!300714 m!4921955))

(declare-fun m!4921957 () Bool)

(assert (=> b!4326883 m!4921957))

(declare-fun m!4921959 () Bool)

(assert (=> b!4326913 m!4921959))

(declare-fun m!4921961 () Bool)

(assert (=> b!4326910 m!4921961))

(declare-fun m!4921963 () Bool)

(assert (=> bm!300701 m!4921963))

(declare-fun m!4921965 () Bool)

(assert (=> b!4326887 m!4921965))

(declare-fun m!4921967 () Bool)

(assert (=> b!4326915 m!4921967))

(declare-fun m!4921969 () Bool)

(assert (=> b!4326915 m!4921969))

(declare-fun m!4921971 () Bool)

(assert (=> b!4326915 m!4921971))

(declare-fun m!4921973 () Bool)

(assert (=> b!4326915 m!4921973))

(assert (=> b!4326915 m!4921967))

(declare-fun m!4921975 () Bool)

(assert (=> b!4326915 m!4921975))

(declare-fun m!4921977 () Bool)

(assert (=> b!4326894 m!4921977))

(declare-fun m!4921979 () Bool)

(assert (=> bm!300697 m!4921979))

(declare-fun m!4921981 () Bool)

(assert (=> bm!300705 m!4921981))

(declare-fun m!4921983 () Bool)

(assert (=> d!1271988 m!4921983))

(declare-fun m!4921985 () Bool)

(assert (=> d!1271988 m!4921985))

(declare-fun m!4921987 () Bool)

(assert (=> b!4326909 m!4921987))

(declare-fun m!4921989 () Bool)

(assert (=> b!4326888 m!4921989))

(declare-fun m!4921991 () Bool)

(assert (=> b!4326882 m!4921991))

(assert (=> b!4326897 m!4921965))

(declare-fun m!4921993 () Bool)

(assert (=> bm!300698 m!4921993))

(declare-fun m!4921995 () Bool)

(assert (=> bm!300693 m!4921995))

(assert (=> bm!300707 m!4921973))

(declare-fun m!4921997 () Bool)

(assert (=> bm!300707 m!4921997))

(assert (=> bm!300700 m!4921943))

(declare-fun m!4921999 () Bool)

(assert (=> b!4326908 m!4921999))

(assert (=> bm!300571 d!1271988))

(declare-fun bm!300717 () Bool)

(declare-fun call!300722 () (_ BitVec 32))

(assert (=> bm!300717 (= call!300722 (arrayCountValidKeys!0 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!35799 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))))))))

(declare-fun b!4326928 () Bool)

(declare-fun e!2692334 () (_ BitVec 32))

(assert (=> b!4326928 (= e!2692334 (bvadd #b00000000000000000000000000000001 call!300722))))

(declare-fun b!4326929 () Bool)

(declare-fun e!2692333 () (_ BitVec 32))

(assert (=> b!4326929 (= e!2692333 e!2692334)))

(declare-fun c!736222 () Bool)

(assert (=> b!4326929 (= c!736222 (validKeyInArray!0 (select (arr!7760 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))) #b00000000000000000000000000000000)))))

(declare-fun b!4326931 () Bool)

(assert (=> b!4326931 (= e!2692333 #b00000000000000000000000000000000)))

(declare-fun b!4326930 () Bool)

(assert (=> b!4326930 (= e!2692334 call!300722)))

(declare-fun d!1271990 () Bool)

(declare-fun lt!1544279 () (_ BitVec 32))

(assert (=> d!1271990 (and (bvsge lt!1544279 #b00000000000000000000000000000000) (bvsle lt!1544279 (bvsub (size!35799 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))) #b00000000000000000000000000000000)))))

(assert (=> d!1271990 (= lt!1544279 e!2692333)))

(declare-fun c!736223 () Bool)

(assert (=> d!1271990 (= c!736223 (bvsge #b00000000000000000000000000000000 (size!35799 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))))))))

(assert (=> d!1271990 (and (bvsle #b00000000000000000000000000000000 (size!35799 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!35799 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955))))) (size!35799 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))))))))

(assert (=> d!1271990 (= (arrayCountValidKeys!0 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))) #b00000000000000000000000000000000 (size!35799 (_keys!5113 (v!42918 (underlying!9802 (_2!26996 lt!1543955)))))) lt!1544279)))

(assert (= (and d!1271990 c!736223) b!4326931))

(assert (= (and d!1271990 (not c!736223)) b!4326929))

(assert (= (and b!4326929 c!736222) b!4326928))

(assert (= (and b!4326929 (not c!736222)) b!4326930))

(assert (= (or b!4326928 b!4326930) bm!300717))

(declare-fun m!4922001 () Bool)

(assert (=> bm!300717 m!4922001))

(assert (=> b!4326929 m!4921829))

(assert (=> b!4326929 m!4921829))

(assert (=> b!4326929 m!4921833))

(assert (=> b!4326634 d!1271990))

(assert (=> bm!300573 d!1271978))

(declare-fun condMapEmpty!21328 () Bool)

(declare-fun mapDefault!21328 () V!9916)

(assert (=> mapNonEmpty!21327 (= condMapEmpty!21328 (= mapRest!21327 ((as const (Array (_ BitVec 32) V!9916)) mapDefault!21328)))))

(declare-fun mapRes!21328 () Bool)

(assert (=> mapNonEmpty!21327 (= tp!1327825 (and tp_is_empty!24243 mapRes!21328))))

(declare-fun mapIsEmpty!21328 () Bool)

(assert (=> mapIsEmpty!21328 mapRes!21328))

(declare-fun mapNonEmpty!21328 () Bool)

(declare-fun tp!1327826 () Bool)

(assert (=> mapNonEmpty!21328 (= mapRes!21328 (and tp!1327826 tp_is_empty!24243))))

(declare-fun mapValue!21328 () V!9916)

(declare-fun mapRest!21328 () (Array (_ BitVec 32) V!9916))

(declare-fun mapKey!21328 () (_ BitVec 32))

(assert (=> mapNonEmpty!21328 (= mapRest!21327 (store mapRest!21328 mapKey!21328 mapValue!21328))))

(assert (= (and mapNonEmpty!21327 condMapEmpty!21328) mapIsEmpty!21328))

(assert (= (and mapNonEmpty!21327 (not condMapEmpty!21328)) mapNonEmpty!21328))

(declare-fun m!4922003 () Bool)

(assert (=> mapNonEmpty!21328 m!4922003))

(declare-fun b_lambda!127557 () Bool)

(assert (= b_lambda!127555 (or (and b!4326596 b_free!129105) b_lambda!127557)))

(check-sat (not d!1271974) (not bm!300696) (not d!1271982) (not bm!300700) tp_is_empty!24243 (not b!4326874) (not b!4326915) (not bm!300628) (not bm!300698) (not bm!300690) (not b!4326754) (not b!4326929) (not b!4326857) (not bm!300631) (not bm!300711) (not bm!300648) (not b!4326887) (not bm!300645) (not b!4326744) (not b!4326883) (not b!4326648) (not bm!300717) (not bm!300632) (not b!4326740) (not bm!300714) (not bm!300638) (not d!1271988) (not bm!300680) (not b!4326767) (not b!4326910) (not bm!300709) (not b!4326809) (not b!4326852) (not d!1271972) (not b!4326772) (not b!4326862) (not b!4326908) (not d!1271984) (not bm!300640) (not b!4326818) (not b!4326897) (not bm!300687) (not b!4326788) (not bm!300678) (not b!4326805) (not b!4326787) (not b!4326765) (not bm!300682) (not bm!300684) (not b_lambda!127557) (not bm!300686) (not bm!300685) (not bm!300629) (not b_next!129809) (not bm!300642) (not bm!300701) (not b!4326791) (not bm!300679) (not b!4326745) (not b!4326649) (not bm!300636) (not bm!300676) (not bm!300627) (not b!4326854) (not bm!300677) (not b!4326822) (not b!4326823) (not bm!300705) (not bm!300707) (not bm!300624) (not b!4326742) (not b!4326885) (not bm!300693) (not b!4326821) (not bm!300683) (not b!4326877) b_and!340695 (not d!1271968) (not b!4326861) (not bm!300633) (not b!4326888) (not d!1271980) (not d!1271970) (not bm!300675) (not mapNonEmpty!21328) (not bm!300681) (not bm!300702) (not d!1271978) (not b!4326806) (not bm!300697))
(check-sat b_and!340695 (not b_next!129809))
