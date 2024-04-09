; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3042 () Bool)

(assert start!3042)

(declare-fun b!18232 () Bool)

(declare-fun b_free!651 () Bool)

(declare-fun b_next!651 () Bool)

(assert (=> b!18232 (= b_free!651 (not b_next!651))))

(declare-fun tp!3144 () Bool)

(declare-fun b_and!1301 () Bool)

(assert (=> b!18232 (= tp!3144 b_and!1301)))

(declare-fun b!18229 () Bool)

(declare-datatypes ((V!1045 0))(
  ( (V!1046 (val!484 Int)) )
))
(declare-datatypes ((ValueCell!258 0))(
  ( (ValueCellFull!258 (v!1472 V!1045)) (EmptyCell!258) )
))
(declare-datatypes ((array!1027 0))(
  ( (array!1028 (arr!495 (Array (_ BitVec 32) ValueCell!258)) (size!585 (_ BitVec 32))) )
))
(declare-datatypes ((array!1029 0))(
  ( (array!1030 (arr!496 (Array (_ BitVec 32) (_ BitVec 64))) (size!586 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!102 0))(
  ( (LongMapFixedSize!103 (defaultEntry!1662 Int) (mask!4595 (_ BitVec 32)) (extraKeys!1575 (_ BitVec 32)) (zeroValue!1598 V!1045) (minValue!1598 V!1045) (_size!83 (_ BitVec 32)) (_keys!3087 array!1029) (_values!1659 array!1027) (_vacant!83 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!102 0))(
  ( (Cell!103 (v!1473 LongMapFixedSize!102)) )
))
(declare-datatypes ((LongMap!102 0))(
  ( (LongMap!103 (underlying!62 Cell!102)) )
))
(declare-datatypes ((tuple2!772 0))(
  ( (tuple2!773 (_1!387 Bool) (_2!387 LongMap!102)) )
))
(declare-fun e!11710 () tuple2!772)

(declare-fun thiss!848 () LongMap!102)

(assert (=> b!18229 (= e!11710 (tuple2!773 true thiss!848))))

(declare-fun b!18230 () Bool)

(declare-fun key!682 () (_ BitVec 64))

(declare-fun e!11704 () Bool)

(declare-datatypes ((tuple2!774 0))(
  ( (tuple2!775 (_1!388 (_ BitVec 64)) (_2!388 V!1045)) )
))
(declare-datatypes ((List!534 0))(
  ( (Nil!531) (Cons!530 (h!1096 tuple2!774) (t!3175 List!534)) )
))
(declare-datatypes ((ListLongMap!519 0))(
  ( (ListLongMap!520 (toList!275 List!534)) )
))
(declare-fun call!626 () ListLongMap!519)

(declare-fun v!259 () V!1045)

(declare-fun lt!4710 () ListLongMap!519)

(declare-fun +!36 (ListLongMap!519 tuple2!774) ListLongMap!519)

(assert (=> b!18230 (= e!11704 (not (= lt!4710 (+!36 call!626 (tuple2!775 key!682 v!259)))))))

(declare-fun bm!622 () Bool)

(declare-fun call!625 () ListLongMap!519)

(declare-fun lt!4709 () LongMap!102)

(declare-fun map!355 (LongMap!102) ListLongMap!519)

(assert (=> bm!622 (= call!625 (map!355 lt!4709))))

(declare-fun b!18231 () Bool)

(declare-fun e!11709 () Bool)

(declare-fun e!11705 () Bool)

(assert (=> b!18231 (= e!11709 e!11705)))

(declare-fun e!11708 () Bool)

(declare-fun e!11701 () Bool)

(declare-fun tp_is_empty!915 () Bool)

(declare-fun array_inv!351 (array!1029) Bool)

(declare-fun array_inv!352 (array!1027) Bool)

(assert (=> b!18232 (= e!11708 (and tp!3144 tp_is_empty!915 (array_inv!351 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) (array_inv!352 (_values!1659 (v!1473 (underlying!62 thiss!848)))) e!11701))))

(declare-fun b!18233 () Bool)

(declare-fun e!11702 () Bool)

(declare-fun e!11711 () Bool)

(assert (=> b!18233 (= e!11702 e!11711)))

(declare-fun res!12758 () Bool)

(assert (=> b!18233 (=> res!12758 e!11711)))

(declare-fun valid!52 (LongMap!102) Bool)

(assert (=> b!18233 (= res!12758 (not (valid!52 lt!4709)))))

(declare-datatypes ((tuple2!776 0))(
  ( (tuple2!777 (_1!389 Bool) (_2!389 LongMapFixedSize!102)) )
))
(declare-fun lt!4708 () tuple2!776)

(assert (=> b!18233 (= lt!4709 (LongMap!103 (Cell!103 (_2!389 lt!4708))))))

(declare-fun lt!4707 () tuple2!772)

(declare-fun update!11 (LongMapFixedSize!102 (_ BitVec 64) V!1045) tuple2!776)

(assert (=> b!18233 (= lt!4708 (update!11 (v!1473 (underlying!62 (_2!387 lt!4707))) key!682 v!259))))

(declare-fun b!18234 () Bool)

(assert (=> b!18234 (= e!11705 e!11708)))

(declare-fun b!18235 () Bool)

(declare-fun repack!24 (LongMap!102) tuple2!772)

(assert (=> b!18235 (= e!11710 (repack!24 thiss!848))))

(declare-fun b!18236 () Bool)

(declare-fun e!11703 () Bool)

(declare-fun mapRes!807 () Bool)

(assert (=> b!18236 (= e!11701 (and e!11703 mapRes!807))))

(declare-fun condMapEmpty!807 () Bool)

(declare-fun mapDefault!807 () ValueCell!258)

(assert (=> b!18236 (= condMapEmpty!807 (= (arr!495 (_values!1659 (v!1473 (underlying!62 thiss!848)))) ((as const (Array (_ BitVec 32) ValueCell!258)) mapDefault!807)))))

(declare-fun b!18237 () Bool)

(assert (=> b!18237 (= e!11703 tp_is_empty!915)))

(declare-fun mapNonEmpty!807 () Bool)

(declare-fun tp!3143 () Bool)

(declare-fun e!11707 () Bool)

(assert (=> mapNonEmpty!807 (= mapRes!807 (and tp!3143 e!11707))))

(declare-fun mapRest!807 () (Array (_ BitVec 32) ValueCell!258))

(declare-fun mapKey!807 () (_ BitVec 32))

(declare-fun mapValue!807 () ValueCell!258)

(assert (=> mapNonEmpty!807 (= (arr!495 (_values!1659 (v!1473 (underlying!62 thiss!848)))) (store mapRest!807 mapKey!807 mapValue!807))))

(declare-fun b!18238 () Bool)

(assert (=> b!18238 (= e!11707 tp_is_empty!915)))

(declare-fun mapIsEmpty!807 () Bool)

(assert (=> mapIsEmpty!807 mapRes!807))

(declare-fun bm!623 () Bool)

(assert (=> bm!623 (= call!626 (map!355 thiss!848))))

(declare-fun b!18239 () Bool)

(declare-fun e!11700 () Bool)

(assert (=> b!18239 (= e!11700 e!11702)))

(declare-fun res!12756 () Bool)

(assert (=> b!18239 (=> (not res!12756) (not e!11702))))

(assert (=> b!18239 (= res!12756 (_1!387 lt!4707))))

(assert (=> b!18239 (= lt!4707 e!11710)))

(declare-fun c!1837 () Bool)

(declare-fun imbalanced!28 (LongMap!102) Bool)

(assert (=> b!18239 (= c!1837 (imbalanced!28 thiss!848))))

(declare-fun b!18240 () Bool)

(declare-fun e!11699 () Bool)

(assert (=> b!18240 (= e!11699 e!11704)))

(assert (=> b!18240 (= lt!4710 call!625)))

(declare-fun res!12757 () Bool)

(declare-fun contains!206 (ListLongMap!519 (_ BitVec 64)) Bool)

(assert (=> b!18240 (= res!12757 (not (contains!206 lt!4710 key!682)))))

(assert (=> b!18240 (=> res!12757 e!11704)))

(declare-fun res!12759 () Bool)

(assert (=> start!3042 (=> (not res!12759) (not e!11700))))

(assert (=> start!3042 (= res!12759 (valid!52 thiss!848))))

(assert (=> start!3042 e!11700))

(assert (=> start!3042 e!11709))

(assert (=> start!3042 true))

(assert (=> start!3042 tp_is_empty!915))

(declare-fun b!18241 () Bool)

(assert (=> b!18241 (= e!11711 e!11699)))

(declare-fun c!1836 () Bool)

(assert (=> b!18241 (= c!1836 (_1!389 lt!4708))))

(declare-fun b!18242 () Bool)

(assert (=> b!18242 (= e!11699 (not (= call!625 call!626)))))

(assert (= (and start!3042 res!12759) b!18239))

(assert (= (and b!18239 c!1837) b!18235))

(assert (= (and b!18239 (not c!1837)) b!18229))

(assert (= (and b!18239 res!12756) b!18233))

(assert (= (and b!18233 (not res!12758)) b!18241))

(assert (= (and b!18241 c!1836) b!18240))

(assert (= (and b!18241 (not c!1836)) b!18242))

(assert (= (and b!18240 (not res!12757)) b!18230))

(assert (= (or b!18230 b!18242) bm!623))

(assert (= (or b!18240 b!18242) bm!622))

(assert (= (and b!18236 condMapEmpty!807) mapIsEmpty!807))

(assert (= (and b!18236 (not condMapEmpty!807)) mapNonEmpty!807))

(get-info :version)

(assert (= (and mapNonEmpty!807 ((_ is ValueCellFull!258) mapValue!807)) b!18238))

(assert (= (and b!18236 ((_ is ValueCellFull!258) mapDefault!807)) b!18237))

(assert (= b!18232 b!18236))

(assert (= b!18234 b!18232))

(assert (= b!18231 b!18234))

(assert (= start!3042 b!18231))

(declare-fun m!12663 () Bool)

(assert (=> bm!623 m!12663))

(declare-fun m!12665 () Bool)

(assert (=> b!18233 m!12665))

(declare-fun m!12667 () Bool)

(assert (=> b!18233 m!12667))

(declare-fun m!12669 () Bool)

(assert (=> b!18232 m!12669))

(declare-fun m!12671 () Bool)

(assert (=> b!18232 m!12671))

(declare-fun m!12673 () Bool)

(assert (=> bm!622 m!12673))

(declare-fun m!12675 () Bool)

(assert (=> mapNonEmpty!807 m!12675))

(declare-fun m!12677 () Bool)

(assert (=> b!18239 m!12677))

(declare-fun m!12679 () Bool)

(assert (=> b!18230 m!12679))

(declare-fun m!12681 () Bool)

(assert (=> b!18240 m!12681))

(declare-fun m!12683 () Bool)

(assert (=> start!3042 m!12683))

(declare-fun m!12685 () Bool)

(assert (=> b!18235 m!12685))

(check-sat (not b!18230) (not mapNonEmpty!807) b_and!1301 (not b!18235) (not b!18240) (not bm!623) (not b!18232) (not b!18239) (not start!3042) (not b_next!651) (not b!18233) tp_is_empty!915 (not bm!622))
(check-sat b_and!1301 (not b_next!651))
(get-model)

(declare-fun d!3423 () Bool)

(declare-fun map!357 (LongMapFixedSize!102) ListLongMap!519)

(assert (=> d!3423 (= (map!355 lt!4709) (map!357 (v!1473 (underlying!62 lt!4709))))))

(declare-fun bs!839 () Bool)

(assert (= bs!839 d!3423))

(declare-fun m!12711 () Bool)

(assert (=> bs!839 m!12711))

(assert (=> bm!622 d!3423))

(declare-fun d!3425 () Bool)

(assert (=> d!3425 (= (map!355 thiss!848) (map!357 (v!1473 (underlying!62 thiss!848))))))

(declare-fun bs!840 () Bool)

(assert (= bs!840 d!3425))

(declare-fun m!12713 () Bool)

(assert (=> bs!840 m!12713))

(assert (=> bm!623 d!3425))

(declare-fun d!3427 () Bool)

(assert (=> d!3427 (= (imbalanced!28 thiss!848) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!83 (v!1473 (underlying!62 thiss!848))) (_vacant!83 (v!1473 (underlying!62 thiss!848))))) (mask!4595 (v!1473 (underlying!62 thiss!848)))) (bvsgt (_vacant!83 (v!1473 (underlying!62 thiss!848))) (_size!83 (v!1473 (underlying!62 thiss!848))))))))

(assert (=> b!18239 d!3427))

(declare-fun d!3429 () Bool)

(assert (=> d!3429 (= (array_inv!351 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) (bvsge (size!586 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) #b00000000000000000000000000000000))))

(assert (=> b!18232 d!3429))

(declare-fun d!3431 () Bool)

(assert (=> d!3431 (= (array_inv!352 (_values!1659 (v!1473 (underlying!62 thiss!848)))) (bvsge (size!585 (_values!1659 (v!1473 (underlying!62 thiss!848)))) #b00000000000000000000000000000000))))

(assert (=> b!18232 d!3431))

(declare-fun d!3433 () Bool)

(declare-fun e!11756 () Bool)

(assert (=> d!3433 e!11756))

(declare-fun res!12774 () Bool)

(assert (=> d!3433 (=> res!12774 e!11756)))

(declare-fun lt!4734 () Bool)

(assert (=> d!3433 (= res!12774 (not lt!4734))))

(declare-fun lt!4732 () Bool)

(assert (=> d!3433 (= lt!4734 lt!4732)))

(declare-datatypes ((Unit!354 0))(
  ( (Unit!355) )
))
(declare-fun lt!4733 () Unit!354)

(declare-fun e!11755 () Unit!354)

(assert (=> d!3433 (= lt!4733 e!11755)))

(declare-fun c!1846 () Bool)

(assert (=> d!3433 (= c!1846 lt!4732)))

(declare-fun containsKey!23 (List!534 (_ BitVec 64)) Bool)

(assert (=> d!3433 (= lt!4732 (containsKey!23 (toList!275 lt!4710) key!682))))

(assert (=> d!3433 (= (contains!206 lt!4710 key!682) lt!4734)))

(declare-fun b!18291 () Bool)

(declare-fun lt!4731 () Unit!354)

(assert (=> b!18291 (= e!11755 lt!4731)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!20 (List!534 (_ BitVec 64)) Unit!354)

(assert (=> b!18291 (= lt!4731 (lemmaContainsKeyImpliesGetValueByKeyDefined!20 (toList!275 lt!4710) key!682))))

(declare-datatypes ((Option!65 0))(
  ( (Some!64 (v!1480 V!1045)) (None!63) )
))
(declare-fun isDefined!21 (Option!65) Bool)

(declare-fun getValueByKey!59 (List!534 (_ BitVec 64)) Option!65)

(assert (=> b!18291 (isDefined!21 (getValueByKey!59 (toList!275 lt!4710) key!682))))

(declare-fun b!18292 () Bool)

(declare-fun Unit!356 () Unit!354)

(assert (=> b!18292 (= e!11755 Unit!356)))

(declare-fun b!18293 () Bool)

(assert (=> b!18293 (= e!11756 (isDefined!21 (getValueByKey!59 (toList!275 lt!4710) key!682)))))

(assert (= (and d!3433 c!1846) b!18291))

(assert (= (and d!3433 (not c!1846)) b!18292))

(assert (= (and d!3433 (not res!12774)) b!18293))

(declare-fun m!12715 () Bool)

(assert (=> d!3433 m!12715))

(declare-fun m!12717 () Bool)

(assert (=> b!18291 m!12717))

(declare-fun m!12719 () Bool)

(assert (=> b!18291 m!12719))

(assert (=> b!18291 m!12719))

(declare-fun m!12721 () Bool)

(assert (=> b!18291 m!12721))

(assert (=> b!18293 m!12719))

(assert (=> b!18293 m!12719))

(assert (=> b!18293 m!12721))

(assert (=> b!18240 d!3433))

(declare-fun d!3435 () Bool)

(declare-fun valid!54 (LongMapFixedSize!102) Bool)

(assert (=> d!3435 (= (valid!52 lt!4709) (valid!54 (v!1473 (underlying!62 lt!4709))))))

(declare-fun bs!841 () Bool)

(assert (= bs!841 d!3435))

(declare-fun m!12723 () Bool)

(assert (=> bs!841 m!12723))

(assert (=> b!18233 d!3435))

(declare-fun bm!678 () Bool)

(declare-fun call!693 () ListLongMap!519)

(declare-fun call!685 () ListLongMap!519)

(assert (=> bm!678 (= call!693 call!685)))

(declare-fun c!1871 () Bool)

(declare-fun c!1879 () Bool)

(declare-datatypes ((SeekEntryResult!48 0))(
  ( (MissingZero!48 (index!2311 (_ BitVec 32))) (Found!48 (index!2312 (_ BitVec 32))) (Intermediate!48 (undefined!860 Bool) (index!2313 (_ BitVec 32)) (x!4493 (_ BitVec 32))) (Undefined!48) (MissingVacant!48 (index!2314 (_ BitVec 32))) )
))
(declare-fun lt!4802 () SeekEntryResult!48)

(declare-fun call!702 () Bool)

(declare-fun c!1881 () Bool)

(declare-fun c!1873 () Bool)

(declare-fun lt!4789 () SeekEntryResult!48)

(declare-fun c!1875 () Bool)

(declare-fun bm!679 () Bool)

(declare-fun lt!4809 () SeekEntryResult!48)

(declare-fun lt!4807 () SeekEntryResult!48)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!679 (= call!702 (inRange!0 (ite c!1875 (ite c!1879 (index!2312 lt!4809) (ite c!1871 (index!2311 lt!4807) (index!2314 lt!4807))) (ite c!1881 (index!2312 lt!4789) (ite c!1873 (index!2311 lt!4802) (index!2314 lt!4802)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18370 () Bool)

(declare-fun res!12815 () Bool)

(declare-fun call!691 () Bool)

(assert (=> b!18370 (= res!12815 call!691)))

(declare-fun e!11798 () Bool)

(assert (=> b!18370 (=> (not res!12815) (not e!11798))))

(declare-fun b!18371 () Bool)

(declare-fun e!11809 () Bool)

(assert (=> b!18371 (= e!11809 (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4809)) key!682))))

(declare-fun bm!680 () Bool)

(declare-fun call!697 () Bool)

(assert (=> bm!680 (= call!697 call!702)))

(declare-fun bm!681 () Bool)

(declare-fun call!694 () SeekEntryResult!48)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1029 (_ BitVec 32)) SeekEntryResult!48)

(assert (=> bm!681 (= call!694 (seekEntryOrOpen!0 key!682 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18372 () Bool)

(declare-fun res!12816 () Bool)

(declare-fun e!11815 () Bool)

(assert (=> b!18372 (=> (not res!12816) (not e!11815))))

(declare-fun call!688 () Bool)

(assert (=> b!18372 (= res!12816 call!688)))

(declare-fun e!11814 () Bool)

(assert (=> b!18372 (= e!11814 e!11815)))

(declare-fun b!18373 () Bool)

(declare-fun res!12814 () Bool)

(assert (=> b!18373 (= res!12814 (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2314 lt!4807)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!11806 () Bool)

(assert (=> b!18373 (=> (not res!12814) (not e!11806))))

(declare-fun bm!682 () Bool)

(declare-fun call!701 () SeekEntryResult!48)

(assert (=> bm!682 (= call!701 call!694)))

(declare-fun b!18374 () Bool)

(declare-fun e!11799 () Unit!354)

(declare-fun lt!4813 () Unit!354)

(assert (=> b!18374 (= e!11799 lt!4813)))

(declare-fun call!681 () Unit!354)

(assert (=> b!18374 (= lt!4813 call!681)))

(declare-fun call!682 () SeekEntryResult!48)

(assert (=> b!18374 (= lt!4807 call!682)))

(assert (=> b!18374 (= c!1871 ((_ is MissingZero!48) lt!4807))))

(assert (=> b!18374 e!11814))

(declare-fun b!18375 () Bool)

(declare-fun e!11816 () tuple2!776)

(declare-fun lt!4804 () tuple2!776)

(assert (=> b!18375 (= e!11816 (tuple2!777 (_1!389 lt!4804) (_2!389 lt!4804)))))

(declare-fun call!704 () tuple2!776)

(assert (=> b!18375 (= lt!4804 call!704)))

(declare-fun bm!683 () Bool)

(declare-fun call!692 () Bool)

(assert (=> bm!683 (= call!692 call!691)))

(declare-fun bm!684 () Bool)

(declare-fun lt!4801 () tuple2!776)

(declare-fun call!686 () ListLongMap!519)

(declare-fun c!1872 () Bool)

(assert (=> bm!684 (= call!686 (map!357 (ite c!1872 (v!1473 (underlying!62 (_2!387 lt!4707))) (_2!389 lt!4801))))))

(declare-fun bm!685 () Bool)

(assert (=> bm!685 (= call!682 call!694)))

(declare-fun b!18376 () Bool)

(declare-fun lt!4810 () Unit!354)

(declare-fun lt!4797 () Unit!354)

(assert (=> b!18376 (= lt!4810 lt!4797)))

(declare-fun call!695 () ListLongMap!519)

(declare-fun call!703 () ListLongMap!519)

(assert (=> b!18376 (= call!695 call!703)))

(declare-fun lt!4799 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!2 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 V!1045 Int) Unit!354)

(assert (=> b!18376 (= lt!4797 (lemmaChangeLongMinValueKeyThenAddPairToListMap!2 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(assert (=> b!18376 (= lt!4799 (bvor (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000010))))

(declare-fun e!11805 () tuple2!776)

(assert (=> b!18376 (= e!11805 (tuple2!777 true (LongMapFixedSize!103 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (bvor (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000010) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259 (_size!83 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_vacant!83 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun b!18377 () Bool)

(declare-fun e!11801 () Bool)

(assert (=> b!18377 (= e!11801 ((_ is Undefined!48) lt!4807))))

(declare-fun b!18378 () Bool)

(declare-fun e!11800 () tuple2!776)

(assert (=> b!18378 (= e!11800 e!11805)))

(declare-fun c!1880 () Bool)

(assert (=> b!18378 (= c!1880 (= key!682 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!686 () Bool)

(declare-fun c!1882 () Bool)

(declare-fun lt!4794 () SeekEntryResult!48)

(declare-fun updateHelperNewKey!2 (LongMapFixedSize!102 (_ BitVec 64) V!1045 (_ BitVec 32)) tuple2!776)

(assert (=> bm!686 (= call!704 (updateHelperNewKey!2 (v!1473 (underlying!62 (_2!387 lt!4707))) key!682 v!259 (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794))))))

(declare-fun call!684 () ListLongMap!519)

(declare-fun e!11808 () Bool)

(declare-fun b!18379 () Bool)

(assert (=> b!18379 (= e!11808 (= call!684 (+!36 call!686 (tuple2!775 key!682 v!259))))))

(declare-fun b!18380 () Bool)

(declare-fun e!11804 () Unit!354)

(declare-fun Unit!357 () Unit!354)

(assert (=> b!18380 (= e!11804 Unit!357)))

(declare-fun lt!4795 () Unit!354)

(assert (=> b!18380 (= lt!4795 call!681)))

(assert (=> b!18380 (= lt!4802 call!701)))

(assert (=> b!18380 (= c!1873 ((_ is MissingZero!48) lt!4802))))

(declare-fun e!11811 () Bool)

(assert (=> b!18380 e!11811))

(declare-fun lt!4812 () Unit!354)

(assert (=> b!18380 (= lt!4812 lt!4795)))

(assert (=> b!18380 false))

(declare-fun bm!687 () Bool)

(assert (=> bm!687 (= call!703 call!685)))

(declare-fun bm!688 () Bool)

(declare-fun call!696 () Bool)

(declare-fun arrayContainsKey!0 (array!1029 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!688 (= call!696 (arrayContainsKey!0 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 #b00000000000000000000000000000000))))

(declare-fun b!18381 () Bool)

(declare-fun e!11807 () Bool)

(assert (=> b!18381 (= e!11807 ((_ is Undefined!48) lt!4802))))

(declare-fun bm!689 () Bool)

(declare-fun call!690 () Bool)

(assert (=> bm!689 (= call!690 (contains!206 call!693 key!682))))

(declare-fun bm!690 () Bool)

(declare-fun call!699 () Bool)

(assert (=> bm!690 (= call!699 call!696)))

(declare-fun b!18382 () Bool)

(declare-fun res!12807 () Bool)

(declare-fun e!11813 () Bool)

(assert (=> b!18382 (=> (not res!12807) (not e!11813))))

(assert (=> b!18382 (= res!12807 call!692)))

(assert (=> b!18382 (= e!11811 e!11813)))

(declare-fun bm!691 () Bool)

(declare-fun call!683 () ListLongMap!519)

(assert (=> bm!691 (= call!695 call!683)))

(declare-fun b!18383 () Bool)

(declare-fun e!11803 () tuple2!776)

(assert (=> b!18383 (= e!11816 e!11803)))

(declare-fun c!1877 () Bool)

(assert (=> b!18383 (= c!1877 ((_ is MissingZero!48) lt!4794))))

(declare-fun b!18384 () Bool)

(declare-fun lt!4803 () Unit!354)

(assert (=> b!18384 (= e!11804 lt!4803)))

(declare-fun call!700 () Unit!354)

(assert (=> b!18384 (= lt!4803 call!700)))

(assert (=> b!18384 (= lt!4789 call!701)))

(declare-fun res!12809 () Bool)

(assert (=> b!18384 (= res!12809 ((_ is Found!48) lt!4789))))

(assert (=> b!18384 (=> (not res!12809) (not e!11798))))

(assert (=> b!18384 e!11798))

(declare-fun bm!692 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!2 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 (_ BitVec 64) Int) Unit!354)

(assert (=> bm!692 (= call!700 (lemmaInListMapThenSeekEntryOrOpenFindsIt!2 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18385 () Bool)

(declare-fun lt!4790 () Unit!354)

(declare-fun lt!4798 () Unit!354)

(assert (=> b!18385 (= lt!4790 lt!4798)))

(declare-fun call!687 () ListLongMap!519)

(assert (=> b!18385 (= call!695 call!687)))

(declare-fun lt!4805 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!2 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 V!1045 Int) Unit!354)

(assert (=> b!18385 (= lt!4798 (lemmaChangeZeroKeyThenAddPairToListMap!2 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4805 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(assert (=> b!18385 (= lt!4805 (bvor (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000001))))

(assert (=> b!18385 (= e!11805 (tuple2!777 true (LongMapFixedSize!103 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (bvor (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000001) v!259 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_size!83 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_vacant!83 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun b!18386 () Bool)

(declare-fun lt!4796 () tuple2!776)

(assert (=> b!18386 (= lt!4796 call!704)))

(assert (=> b!18386 (= e!11803 (tuple2!777 (_1!389 lt!4796) (_2!389 lt!4796)))))

(declare-fun b!18387 () Bool)

(assert (=> b!18387 (= e!11801 e!11806)))

(declare-fun res!12810 () Bool)

(assert (=> b!18387 (= res!12810 call!688)))

(assert (=> b!18387 (=> (not res!12810) (not e!11806))))

(declare-fun b!18388 () Bool)

(declare-fun call!698 () Bool)

(assert (=> b!18388 (= e!11813 (not call!698))))

(declare-fun b!18389 () Bool)

(declare-fun e!11797 () Bool)

(assert (=> b!18389 (= e!11807 e!11797)))

(declare-fun res!12803 () Bool)

(assert (=> b!18389 (= res!12803 call!692)))

(assert (=> b!18389 (=> (not res!12803) (not e!11797))))

(declare-fun bm!693 () Bool)

(assert (=> bm!693 (= call!691 call!702)))

(declare-fun b!18390 () Bool)

(declare-fun lt!4811 () Unit!354)

(declare-fun lt!4792 () Unit!354)

(assert (=> b!18390 (= lt!4811 lt!4792)))

(declare-fun call!689 () ListLongMap!519)

(assert (=> b!18390 (contains!206 call!689 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794)))))

(declare-fun lt!4791 () array!1027)

(declare-fun lemmaValidKeyInArrayIsInListMap!2 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 (_ BitVec 32) Int) Unit!354)

(assert (=> b!18390 (= lt!4792 (lemmaValidKeyInArrayIsInListMap!2 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4791 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (index!2312 lt!4794) (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(assert (=> b!18390 (= lt!4791 (array!1028 (store (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794) (ValueCellFull!258 v!259)) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun lt!4808 () Unit!354)

(declare-fun lt!4815 () Unit!354)

(assert (=> b!18390 (= lt!4808 lt!4815)))

(declare-fun getCurrentListMap!111 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 (_ BitVec 32) Int) ListLongMap!519)

(assert (=> b!18390 (= call!683 (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (array!1028 (store (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794) (ValueCellFull!258 v!259)) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!2 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 (_ BitVec 32) (_ BitVec 64) V!1045 Int) Unit!354)

(assert (=> b!18390 (= lt!4815 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!2 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (index!2312 lt!4794) key!682 v!259 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!4793 () Unit!354)

(assert (=> b!18390 (= lt!4793 e!11804)))

(assert (=> b!18390 (= c!1881 call!690)))

(assert (=> b!18390 (= e!11803 (tuple2!777 true (LongMapFixedSize!103 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_size!83 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (array!1028 (store (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794) (ValueCellFull!258 v!259)) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (_vacant!83 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun d!3437 () Bool)

(declare-fun e!11810 () Bool)

(assert (=> d!3437 e!11810))

(declare-fun res!12805 () Bool)

(assert (=> d!3437 (=> (not res!12805) (not e!11810))))

(assert (=> d!3437 (= res!12805 (valid!54 (_2!389 lt!4801)))))

(assert (=> d!3437 (= lt!4801 e!11800)))

(declare-fun c!1874 () Bool)

(assert (=> d!3437 (= c!1874 (= key!682 (bvneg key!682)))))

(assert (=> d!3437 (valid!54 (v!1473 (underlying!62 (_2!387 lt!4707))))))

(assert (=> d!3437 (= (update!11 (v!1473 (underlying!62 (_2!387 lt!4707))) key!682 v!259) lt!4801)))

(declare-fun b!18391 () Bool)

(declare-fun res!12808 () Bool)

(assert (=> b!18391 (=> (not res!12808) (not e!11815))))

(assert (=> b!18391 (= res!12808 (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2311 lt!4807)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!694 () Bool)

(assert (=> bm!694 (= call!687 call!689)))

(declare-fun b!18392 () Bool)

(assert (=> b!18392 (= e!11798 (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4789)) key!682))))

(declare-fun b!18393 () Bool)

(declare-fun e!11812 () Bool)

(assert (=> b!18393 (= e!11812 e!11808)))

(declare-fun res!12813 () Bool)

(assert (=> b!18393 (= res!12813 (contains!206 call!684 key!682))))

(assert (=> b!18393 (=> (not res!12813) (not e!11808))))

(declare-fun b!18394 () Bool)

(assert (=> b!18394 (= e!11810 e!11812)))

(assert (=> b!18394 (= c!1872 (_1!389 lt!4801))))

(declare-fun bm!695 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!2 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 (_ BitVec 64) Int) Unit!354)

(assert (=> bm!695 (= call!681 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!2 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18395 () Bool)

(declare-fun res!12804 () Bool)

(assert (=> b!18395 (=> (not res!12804) (not e!11813))))

(assert (=> b!18395 (= res!12804 (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2311 lt!4802)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!18396 () Bool)

(assert (=> b!18396 (= e!11812 (= call!686 call!684))))

(declare-fun bm!696 () Bool)

(assert (=> bm!696 (= call!684 (map!357 (ite c!1872 (_2!389 lt!4801) (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18397 () Bool)

(assert (=> b!18397 (= e!11815 (not call!699))))

(declare-fun b!18398 () Bool)

(assert (=> b!18398 (= e!11797 (not call!698))))

(declare-fun b!18399 () Bool)

(declare-fun c!1878 () Bool)

(assert (=> b!18399 (= c!1878 ((_ is MissingVacant!48) lt!4802))))

(assert (=> b!18399 (= e!11811 e!11807)))

(declare-fun b!18400 () Bool)

(assert (=> b!18400 (= c!1882 ((_ is MissingVacant!48) lt!4794))))

(declare-fun e!11802 () tuple2!776)

(assert (=> b!18400 (= e!11802 e!11816)))

(declare-fun b!18401 () Bool)

(declare-fun c!1876 () Bool)

(assert (=> b!18401 (= c!1876 ((_ is MissingVacant!48) lt!4807))))

(assert (=> b!18401 (= e!11814 e!11801)))

(declare-fun b!18402 () Bool)

(assert (=> b!18402 (= e!11800 e!11802)))

(assert (=> b!18402 (= lt!4794 (seekEntryOrOpen!0 key!682 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(assert (=> b!18402 (= c!1875 ((_ is Undefined!48) lt!4794))))

(declare-fun bm!697 () Bool)

(assert (=> bm!697 (= call!685 (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (ite c!1880 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (ite c!1880 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18403 () Bool)

(declare-fun res!12806 () Bool)

(assert (=> b!18403 (= res!12806 (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2314 lt!4802)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!18403 (=> (not res!12806) (not e!11797))))

(declare-fun bm!698 () Bool)

(assert (=> bm!698 (= call!683 (+!36 (ite c!1874 (ite c!1880 call!703 call!687) call!693) (ite c!1874 (ite c!1880 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 v!259) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 v!259)) (tuple2!775 key!682 v!259))))))

(declare-fun b!18404 () Bool)

(declare-fun lt!4814 () Unit!354)

(assert (=> b!18404 (= lt!4814 e!11799)))

(assert (=> b!18404 (= c!1879 call!690)))

(assert (=> b!18404 (= e!11802 (tuple2!777 false (v!1473 (underlying!62 (_2!387 lt!4707)))))))

(declare-fun bm!699 () Bool)

(assert (=> bm!699 (= call!698 call!696)))

(declare-fun bm!700 () Bool)

(assert (=> bm!700 (= call!689 (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4791) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite (and c!1874 c!1880) lt!4805 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite (and c!1874 c!1880) v!259 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18405 () Bool)

(assert (=> b!18405 (= e!11806 (not call!699))))

(declare-fun b!18406 () Bool)

(declare-fun res!12811 () Bool)

(assert (=> b!18406 (= res!12811 call!697)))

(assert (=> b!18406 (=> (not res!12811) (not e!11809))))

(declare-fun bm!701 () Bool)

(assert (=> bm!701 (= call!688 call!697)))

(declare-fun b!18407 () Bool)

(declare-fun Unit!358 () Unit!354)

(assert (=> b!18407 (= e!11799 Unit!358)))

(declare-fun lt!4800 () Unit!354)

(assert (=> b!18407 (= lt!4800 call!700)))

(assert (=> b!18407 (= lt!4809 call!682)))

(declare-fun res!12812 () Bool)

(assert (=> b!18407 (= res!12812 ((_ is Found!48) lt!4809))))

(assert (=> b!18407 (=> (not res!12812) (not e!11809))))

(assert (=> b!18407 e!11809))

(declare-fun lt!4806 () Unit!354)

(assert (=> b!18407 (= lt!4806 lt!4800)))

(assert (=> b!18407 false))

(assert (= (and d!3437 c!1874) b!18378))

(assert (= (and d!3437 (not c!1874)) b!18402))

(assert (= (and b!18378 c!1880) b!18385))

(assert (= (and b!18378 (not c!1880)) b!18376))

(assert (= (or b!18385 b!18376) bm!687))

(assert (= (or b!18385 b!18376) bm!694))

(assert (= (or b!18385 b!18376) bm!691))

(assert (= (and b!18402 c!1875) b!18404))

(assert (= (and b!18402 (not c!1875)) b!18400))

(assert (= (and b!18404 c!1879) b!18407))

(assert (= (and b!18404 (not c!1879)) b!18374))

(assert (= (and b!18407 res!12812) b!18406))

(assert (= (and b!18406 res!12811) b!18371))

(assert (= (and b!18374 c!1871) b!18372))

(assert (= (and b!18374 (not c!1871)) b!18401))

(assert (= (and b!18372 res!12816) b!18391))

(assert (= (and b!18391 res!12808) b!18397))

(assert (= (and b!18401 c!1876) b!18387))

(assert (= (and b!18401 (not c!1876)) b!18377))

(assert (= (and b!18387 res!12810) b!18373))

(assert (= (and b!18373 res!12814) b!18405))

(assert (= (or b!18372 b!18387) bm!701))

(assert (= (or b!18397 b!18405) bm!690))

(assert (= (or b!18406 bm!701) bm!680))

(assert (= (or b!18407 b!18374) bm!685))

(assert (= (and b!18400 c!1882) b!18375))

(assert (= (and b!18400 (not c!1882)) b!18383))

(assert (= (and b!18383 c!1877) b!18386))

(assert (= (and b!18383 (not c!1877)) b!18390))

(assert (= (and b!18390 c!1881) b!18384))

(assert (= (and b!18390 (not c!1881)) b!18380))

(assert (= (and b!18384 res!12809) b!18370))

(assert (= (and b!18370 res!12815) b!18392))

(assert (= (and b!18380 c!1873) b!18382))

(assert (= (and b!18380 (not c!1873)) b!18399))

(assert (= (and b!18382 res!12807) b!18395))

(assert (= (and b!18395 res!12804) b!18388))

(assert (= (and b!18399 c!1878) b!18389))

(assert (= (and b!18399 (not c!1878)) b!18381))

(assert (= (and b!18389 res!12803) b!18403))

(assert (= (and b!18403 res!12806) b!18398))

(assert (= (or b!18382 b!18389) bm!683))

(assert (= (or b!18388 b!18398) bm!699))

(assert (= (or b!18370 bm!683) bm!693))

(assert (= (or b!18384 b!18380) bm!682))

(assert (= (or b!18375 b!18386) bm!686))

(assert (= (or b!18374 b!18380) bm!695))

(assert (= (or bm!680 bm!693) bm!679))

(assert (= (or bm!690 bm!699) bm!688))

(assert (= (or b!18407 b!18384) bm!692))

(assert (= (or b!18404 b!18390) bm!678))

(assert (= (or bm!685 bm!682) bm!681))

(assert (= (or b!18404 b!18390) bm!689))

(assert (= (or bm!691 b!18390) bm!698))

(assert (= (or bm!687 bm!678) bm!697))

(assert (= (or bm!694 b!18390) bm!700))

(assert (= (and d!3437 res!12805) b!18394))

(assert (= (and b!18394 c!1872) b!18393))

(assert (= (and b!18394 (not c!1872)) b!18396))

(assert (= (and b!18393 res!12813) b!18379))

(assert (= (or b!18393 b!18379 b!18396) bm!696))

(assert (= (or b!18379 b!18396) bm!684))

(declare-fun m!12725 () Bool)

(assert (=> bm!684 m!12725))

(declare-fun m!12727 () Bool)

(assert (=> b!18371 m!12727))

(declare-fun m!12729 () Bool)

(assert (=> b!18395 m!12729))

(declare-fun m!12731 () Bool)

(assert (=> bm!692 m!12731))

(declare-fun m!12733 () Bool)

(assert (=> b!18379 m!12733))

(declare-fun m!12735 () Bool)

(assert (=> b!18392 m!12735))

(declare-fun m!12737 () Bool)

(assert (=> bm!688 m!12737))

(declare-fun m!12739 () Bool)

(assert (=> b!18385 m!12739))

(declare-fun m!12741 () Bool)

(assert (=> d!3437 m!12741))

(declare-fun m!12743 () Bool)

(assert (=> d!3437 m!12743))

(declare-fun m!12745 () Bool)

(assert (=> bm!696 m!12745))

(declare-fun m!12747 () Bool)

(assert (=> b!18376 m!12747))

(declare-fun m!12749 () Bool)

(assert (=> b!18403 m!12749))

(declare-fun m!12751 () Bool)

(assert (=> b!18373 m!12751))

(declare-fun m!12753 () Bool)

(assert (=> bm!686 m!12753))

(declare-fun m!12755 () Bool)

(assert (=> bm!679 m!12755))

(declare-fun m!12757 () Bool)

(assert (=> b!18390 m!12757))

(declare-fun m!12759 () Bool)

(assert (=> b!18390 m!12759))

(declare-fun m!12761 () Bool)

(assert (=> b!18390 m!12761))

(assert (=> b!18390 m!12757))

(declare-fun m!12763 () Bool)

(assert (=> b!18390 m!12763))

(declare-fun m!12765 () Bool)

(assert (=> b!18390 m!12765))

(declare-fun m!12767 () Bool)

(assert (=> b!18390 m!12767))

(declare-fun m!12769 () Bool)

(assert (=> b!18391 m!12769))

(declare-fun m!12771 () Bool)

(assert (=> bm!697 m!12771))

(declare-fun m!12773 () Bool)

(assert (=> bm!700 m!12773))

(declare-fun m!12775 () Bool)

(assert (=> bm!698 m!12775))

(declare-fun m!12777 () Bool)

(assert (=> bm!695 m!12777))

(declare-fun m!12779 () Bool)

(assert (=> bm!689 m!12779))

(declare-fun m!12781 () Bool)

(assert (=> b!18393 m!12781))

(declare-fun m!12783 () Bool)

(assert (=> bm!681 m!12783))

(assert (=> b!18402 m!12783))

(assert (=> b!18233 d!3437))

(declare-fun d!3439 () Bool)

(assert (=> d!3439 (= (valid!52 thiss!848) (valid!54 (v!1473 (underlying!62 thiss!848))))))

(declare-fun bs!842 () Bool)

(assert (= bs!842 d!3439))

(declare-fun m!12785 () Bool)

(assert (=> bs!842 m!12785))

(assert (=> start!3042 d!3439))

(declare-fun d!3441 () Bool)

(declare-fun e!11819 () Bool)

(assert (=> d!3441 e!11819))

(declare-fun res!12822 () Bool)

(assert (=> d!3441 (=> (not res!12822) (not e!11819))))

(declare-fun lt!4827 () ListLongMap!519)

(assert (=> d!3441 (= res!12822 (contains!206 lt!4827 (_1!388 (tuple2!775 key!682 v!259))))))

(declare-fun lt!4826 () List!534)

(assert (=> d!3441 (= lt!4827 (ListLongMap!520 lt!4826))))

(declare-fun lt!4824 () Unit!354)

(declare-fun lt!4825 () Unit!354)

(assert (=> d!3441 (= lt!4824 lt!4825)))

(assert (=> d!3441 (= (getValueByKey!59 lt!4826 (_1!388 (tuple2!775 key!682 v!259))) (Some!64 (_2!388 (tuple2!775 key!682 v!259))))))

(declare-fun lemmaContainsTupThenGetReturnValue!16 (List!534 (_ BitVec 64) V!1045) Unit!354)

(assert (=> d!3441 (= lt!4825 (lemmaContainsTupThenGetReturnValue!16 lt!4826 (_1!388 (tuple2!775 key!682 v!259)) (_2!388 (tuple2!775 key!682 v!259))))))

(declare-fun insertStrictlySorted!16 (List!534 (_ BitVec 64) V!1045) List!534)

(assert (=> d!3441 (= lt!4826 (insertStrictlySorted!16 (toList!275 call!626) (_1!388 (tuple2!775 key!682 v!259)) (_2!388 (tuple2!775 key!682 v!259))))))

(assert (=> d!3441 (= (+!36 call!626 (tuple2!775 key!682 v!259)) lt!4827)))

(declare-fun b!18412 () Bool)

(declare-fun res!12821 () Bool)

(assert (=> b!18412 (=> (not res!12821) (not e!11819))))

(assert (=> b!18412 (= res!12821 (= (getValueByKey!59 (toList!275 lt!4827) (_1!388 (tuple2!775 key!682 v!259))) (Some!64 (_2!388 (tuple2!775 key!682 v!259)))))))

(declare-fun b!18413 () Bool)

(declare-fun contains!207 (List!534 tuple2!774) Bool)

(assert (=> b!18413 (= e!11819 (contains!207 (toList!275 lt!4827) (tuple2!775 key!682 v!259)))))

(assert (= (and d!3441 res!12822) b!18412))

(assert (= (and b!18412 res!12821) b!18413))

(declare-fun m!12787 () Bool)

(assert (=> d!3441 m!12787))

(declare-fun m!12789 () Bool)

(assert (=> d!3441 m!12789))

(declare-fun m!12791 () Bool)

(assert (=> d!3441 m!12791))

(declare-fun m!12793 () Bool)

(assert (=> d!3441 m!12793))

(declare-fun m!12795 () Bool)

(assert (=> b!18412 m!12795))

(declare-fun m!12797 () Bool)

(assert (=> b!18413 m!12797))

(assert (=> b!18230 d!3441))

(declare-fun b!18432 () Bool)

(declare-datatypes ((tuple2!784 0))(
  ( (tuple2!785 (_1!393 Bool) (_2!393 Cell!102)) )
))
(declare-fun e!11834 () tuple2!784)

(declare-fun lt!4854 () tuple2!776)

(assert (=> b!18432 (= e!11834 (tuple2!785 (_1!389 lt!4854) (Cell!103 (_2!389 lt!4854))))))

(declare-fun call!716 () tuple2!776)

(assert (=> b!18432 (= lt!4854 call!716)))

(declare-fun b!18433 () Bool)

(declare-fun e!11831 () tuple2!784)

(declare-fun lt!4848 () tuple2!776)

(declare-fun lt!4849 () tuple2!776)

(assert (=> b!18433 (= e!11831 (tuple2!785 (and (_1!389 lt!4848) (_1!389 lt!4849)) (Cell!103 (_2!389 lt!4849))))))

(declare-fun call!713 () LongMapFixedSize!102)

(assert (=> b!18433 (= lt!4848 (update!11 call!713 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1598 (v!1473 (underlying!62 thiss!848)))))))

(declare-fun call!714 () tuple2!776)

(assert (=> b!18433 (= lt!4849 call!714)))

(declare-fun b!18434 () Bool)

(declare-fun e!11833 () Bool)

(declare-fun lt!4852 () tuple2!772)

(assert (=> b!18434 (= e!11833 (= (map!355 (_2!387 lt!4852)) (map!355 thiss!848)))))

(declare-fun b!18435 () Bool)

(declare-fun lt!4850 () Cell!102)

(assert (=> b!18435 (= e!11834 (tuple2!785 true lt!4850))))

(declare-fun b!18436 () Bool)

(declare-fun lt!4857 () tuple2!776)

(assert (=> b!18436 (= lt!4857 call!716)))

(declare-fun e!11830 () tuple2!784)

(assert (=> b!18436 (= e!11830 (tuple2!785 (_1!389 lt!4857) (Cell!103 (_2!389 lt!4857))))))

(declare-fun d!3443 () Bool)

(assert (=> d!3443 e!11833))

(declare-fun res!12825 () Bool)

(assert (=> d!3443 (=> res!12825 e!11833)))

(assert (=> d!3443 (= res!12825 (= (_1!387 lt!4852) false))))

(declare-datatypes ((tuple3!2 0))(
  ( (tuple3!3 (_1!394 Bool) (_2!394 Cell!102) (_3!1 LongMap!102)) )
))
(declare-fun lt!4853 () tuple3!2)

(assert (=> d!3443 (= lt!4852 (tuple2!773 (_1!394 lt!4853) (_3!1 lt!4853)))))

(declare-fun e!11832 () tuple3!2)

(assert (=> d!3443 (= lt!4853 e!11832)))

(declare-fun c!1893 () Bool)

(declare-fun lt!4855 () tuple2!784)

(assert (=> d!3443 (= c!1893 (not (_1!393 lt!4855)))))

(assert (=> d!3443 (= lt!4855 e!11831)))

(declare-fun c!1892 () Bool)

(assert (=> d!3443 (= c!1892 (and (not (= (bvand (extraKeys!1575 (v!1473 (underlying!62 thiss!848))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1575 (v!1473 (underlying!62 thiss!848))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!4851 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!8 ((_ BitVec 32) Int) LongMapFixedSize!102)

(assert (=> d!3443 (= lt!4850 (Cell!103 (getNewLongMapFixedSize!8 lt!4851 (defaultEntry!1662 (v!1473 (underlying!62 thiss!848))))))))

(declare-fun computeNewMask!2 (LongMap!102 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!3443 (= lt!4851 (computeNewMask!2 thiss!848 (mask!4595 (v!1473 (underlying!62 thiss!848))) (_vacant!83 (v!1473 (underlying!62 thiss!848))) (_size!83 (v!1473 (underlying!62 thiss!848)))))))

(assert (=> d!3443 (valid!52 thiss!848)))

(assert (=> d!3443 (= (repack!24 thiss!848) lt!4852)))

(declare-fun bm!710 () Bool)

(assert (=> bm!710 (= call!713 (getNewLongMapFixedSize!8 lt!4851 (defaultEntry!1662 (v!1473 (underlying!62 thiss!848)))))))

(declare-fun bm!711 () Bool)

(declare-fun c!1894 () Bool)

(declare-fun call!715 () LongMapFixedSize!102)

(assert (=> bm!711 (= call!714 (update!11 (ite c!1892 (_2!389 lt!4848) call!715) (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848)))))))))

(declare-fun bm!712 () Bool)

(assert (=> bm!712 (= call!715 call!713)))

(declare-fun b!18437 () Bool)

(assert (=> b!18437 (= e!11831 e!11830)))

(assert (=> b!18437 (= c!1894 (and (not (= (bvand (extraKeys!1575 (v!1473 (underlying!62 thiss!848))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1575 (v!1473 (underlying!62 thiss!848))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!713 () Bool)

(assert (=> bm!713 (= call!716 call!714)))

(declare-fun b!18438 () Bool)

(declare-fun c!1891 () Bool)

(assert (=> b!18438 (= c!1891 (and (not (= (bvand (extraKeys!1575 (v!1473 (underlying!62 thiss!848))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1575 (v!1473 (underlying!62 thiss!848))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!18438 (= e!11830 e!11834)))

(declare-fun b!18439 () Bool)

(assert (=> b!18439 (= e!11832 (tuple3!3 false (_2!393 lt!4855) thiss!848))))

(declare-fun b!18440 () Bool)

(declare-fun lt!4856 () tuple2!776)

(assert (=> b!18440 (= e!11832 (ite (_1!389 lt!4856) (tuple3!3 true (underlying!62 thiss!848) (LongMap!103 (Cell!103 (_2!389 lt!4856)))) (tuple3!3 false (Cell!103 (_2!389 lt!4856)) thiss!848)))))

(declare-fun repackFrom!2 (LongMap!102 LongMapFixedSize!102 (_ BitVec 32)) tuple2!776)

(assert (=> b!18440 (= lt!4856 (repackFrom!2 thiss!848 (v!1473 (_2!393 lt!4855)) (bvsub (size!586 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) #b00000000000000000000000000000001)))))

(assert (= (and d!3443 c!1892) b!18433))

(assert (= (and d!3443 (not c!1892)) b!18437))

(assert (= (and b!18437 c!1894) b!18436))

(assert (= (and b!18437 (not c!1894)) b!18438))

(assert (= (and b!18438 c!1891) b!18432))

(assert (= (and b!18438 (not c!1891)) b!18435))

(assert (= (or b!18436 b!18432) bm!712))

(assert (= (or b!18436 b!18432) bm!713))

(assert (= (or b!18433 bm!713) bm!711))

(assert (= (or b!18433 bm!712) bm!710))

(assert (= (and d!3443 c!1893) b!18439))

(assert (= (and d!3443 (not c!1893)) b!18440))

(assert (= (and d!3443 (not res!12825)) b!18434))

(declare-fun m!12799 () Bool)

(assert (=> bm!710 m!12799))

(assert (=> d!3443 m!12799))

(declare-fun m!12801 () Bool)

(assert (=> d!3443 m!12801))

(assert (=> d!3443 m!12683))

(declare-fun m!12803 () Bool)

(assert (=> b!18440 m!12803))

(declare-fun m!12805 () Bool)

(assert (=> bm!711 m!12805))

(declare-fun m!12807 () Bool)

(assert (=> b!18433 m!12807))

(declare-fun m!12809 () Bool)

(assert (=> b!18434 m!12809))

(assert (=> b!18434 m!12663))

(assert (=> b!18235 d!3443))

(declare-fun mapIsEmpty!813 () Bool)

(declare-fun mapRes!813 () Bool)

(assert (=> mapIsEmpty!813 mapRes!813))

(declare-fun condMapEmpty!813 () Bool)

(declare-fun mapDefault!813 () ValueCell!258)

(assert (=> mapNonEmpty!807 (= condMapEmpty!813 (= mapRest!807 ((as const (Array (_ BitVec 32) ValueCell!258)) mapDefault!813)))))

(declare-fun e!11840 () Bool)

(assert (=> mapNonEmpty!807 (= tp!3143 (and e!11840 mapRes!813))))

(declare-fun b!18447 () Bool)

(declare-fun e!11839 () Bool)

(assert (=> b!18447 (= e!11839 tp_is_empty!915)))

(declare-fun b!18448 () Bool)

(assert (=> b!18448 (= e!11840 tp_is_empty!915)))

(declare-fun mapNonEmpty!813 () Bool)

(declare-fun tp!3153 () Bool)

(assert (=> mapNonEmpty!813 (= mapRes!813 (and tp!3153 e!11839))))

(declare-fun mapKey!813 () (_ BitVec 32))

(declare-fun mapValue!813 () ValueCell!258)

(declare-fun mapRest!813 () (Array (_ BitVec 32) ValueCell!258))

(assert (=> mapNonEmpty!813 (= mapRest!807 (store mapRest!813 mapKey!813 mapValue!813))))

(assert (= (and mapNonEmpty!807 condMapEmpty!813) mapIsEmpty!813))

(assert (= (and mapNonEmpty!807 (not condMapEmpty!813)) mapNonEmpty!813))

(assert (= (and mapNonEmpty!813 ((_ is ValueCellFull!258) mapValue!813)) b!18447))

(assert (= (and mapNonEmpty!807 ((_ is ValueCellFull!258) mapDefault!813)) b!18448))

(declare-fun m!12811 () Bool)

(assert (=> mapNonEmpty!813 m!12811))

(check-sat (not b!18433) (not b!18440) (not bm!710) (not b!18293) (not bm!700) (not b!18402) (not bm!696) (not b!18390) (not mapNonEmpty!813) (not d!3425) (not bm!689) (not b!18434) (not d!3437) (not bm!679) (not b!18385) (not bm!684) (not bm!688) (not d!3441) (not d!3423) (not d!3435) (not bm!697) (not b!18413) (not bm!695) (not b!18379) b_and!1301 (not d!3443) (not bm!692) (not bm!686) (not b!18291) (not b!18412) (not b!18393) (not d!3439) (not bm!681) (not b_next!651) (not bm!698) tp_is_empty!915 (not bm!711) (not b!18376) (not d!3433))
(check-sat b_and!1301 (not b_next!651))
(get-model)

(declare-fun d!3445 () Bool)

(declare-fun e!11842 () Bool)

(assert (=> d!3445 e!11842))

(declare-fun res!12826 () Bool)

(assert (=> d!3445 (=> res!12826 e!11842)))

(declare-fun lt!4861 () Bool)

(assert (=> d!3445 (= res!12826 (not lt!4861))))

(declare-fun lt!4859 () Bool)

(assert (=> d!3445 (= lt!4861 lt!4859)))

(declare-fun lt!4860 () Unit!354)

(declare-fun e!11841 () Unit!354)

(assert (=> d!3445 (= lt!4860 e!11841)))

(declare-fun c!1895 () Bool)

(assert (=> d!3445 (= c!1895 lt!4859)))

(assert (=> d!3445 (= lt!4859 (containsKey!23 (toList!275 call!693) key!682))))

(assert (=> d!3445 (= (contains!206 call!693 key!682) lt!4861)))

(declare-fun b!18449 () Bool)

(declare-fun lt!4858 () Unit!354)

(assert (=> b!18449 (= e!11841 lt!4858)))

(assert (=> b!18449 (= lt!4858 (lemmaContainsKeyImpliesGetValueByKeyDefined!20 (toList!275 call!693) key!682))))

(assert (=> b!18449 (isDefined!21 (getValueByKey!59 (toList!275 call!693) key!682))))

(declare-fun b!18450 () Bool)

(declare-fun Unit!359 () Unit!354)

(assert (=> b!18450 (= e!11841 Unit!359)))

(declare-fun b!18451 () Bool)

(assert (=> b!18451 (= e!11842 (isDefined!21 (getValueByKey!59 (toList!275 call!693) key!682)))))

(assert (= (and d!3445 c!1895) b!18449))

(assert (= (and d!3445 (not c!1895)) b!18450))

(assert (= (and d!3445 (not res!12826)) b!18451))

(declare-fun m!12813 () Bool)

(assert (=> d!3445 m!12813))

(declare-fun m!12815 () Bool)

(assert (=> b!18449 m!12815))

(declare-fun m!12817 () Bool)

(assert (=> b!18449 m!12817))

(assert (=> b!18449 m!12817))

(declare-fun m!12819 () Bool)

(assert (=> b!18449 m!12819))

(assert (=> b!18451 m!12817))

(assert (=> b!18451 m!12817))

(assert (=> b!18451 m!12819))

(assert (=> bm!689 d!3445))

(declare-fun d!3447 () Bool)

(declare-fun e!11844 () Bool)

(assert (=> d!3447 e!11844))

(declare-fun res!12827 () Bool)

(assert (=> d!3447 (=> res!12827 e!11844)))

(declare-fun lt!4865 () Bool)

(assert (=> d!3447 (= res!12827 (not lt!4865))))

(declare-fun lt!4863 () Bool)

(assert (=> d!3447 (= lt!4865 lt!4863)))

(declare-fun lt!4864 () Unit!354)

(declare-fun e!11843 () Unit!354)

(assert (=> d!3447 (= lt!4864 e!11843)))

(declare-fun c!1896 () Bool)

(assert (=> d!3447 (= c!1896 lt!4863)))

(assert (=> d!3447 (= lt!4863 (containsKey!23 (toList!275 lt!4827) (_1!388 (tuple2!775 key!682 v!259))))))

(assert (=> d!3447 (= (contains!206 lt!4827 (_1!388 (tuple2!775 key!682 v!259))) lt!4865)))

(declare-fun b!18452 () Bool)

(declare-fun lt!4862 () Unit!354)

(assert (=> b!18452 (= e!11843 lt!4862)))

(assert (=> b!18452 (= lt!4862 (lemmaContainsKeyImpliesGetValueByKeyDefined!20 (toList!275 lt!4827) (_1!388 (tuple2!775 key!682 v!259))))))

(assert (=> b!18452 (isDefined!21 (getValueByKey!59 (toList!275 lt!4827) (_1!388 (tuple2!775 key!682 v!259))))))

(declare-fun b!18453 () Bool)

(declare-fun Unit!360 () Unit!354)

(assert (=> b!18453 (= e!11843 Unit!360)))

(declare-fun b!18454 () Bool)

(assert (=> b!18454 (= e!11844 (isDefined!21 (getValueByKey!59 (toList!275 lt!4827) (_1!388 (tuple2!775 key!682 v!259)))))))

(assert (= (and d!3447 c!1896) b!18452))

(assert (= (and d!3447 (not c!1896)) b!18453))

(assert (= (and d!3447 (not res!12827)) b!18454))

(declare-fun m!12821 () Bool)

(assert (=> d!3447 m!12821))

(declare-fun m!12823 () Bool)

(assert (=> b!18452 m!12823))

(assert (=> b!18452 m!12795))

(assert (=> b!18452 m!12795))

(declare-fun m!12825 () Bool)

(assert (=> b!18452 m!12825))

(assert (=> b!18454 m!12795))

(assert (=> b!18454 m!12795))

(assert (=> b!18454 m!12825))

(assert (=> d!3441 d!3447))

(declare-fun b!18463 () Bool)

(declare-fun e!11849 () Option!65)

(assert (=> b!18463 (= e!11849 (Some!64 (_2!388 (h!1096 lt!4826))))))

(declare-fun b!18465 () Bool)

(declare-fun e!11850 () Option!65)

(assert (=> b!18465 (= e!11850 (getValueByKey!59 (t!3175 lt!4826) (_1!388 (tuple2!775 key!682 v!259))))))

(declare-fun d!3449 () Bool)

(declare-fun c!1901 () Bool)

(assert (=> d!3449 (= c!1901 (and ((_ is Cons!530) lt!4826) (= (_1!388 (h!1096 lt!4826)) (_1!388 (tuple2!775 key!682 v!259)))))))

(assert (=> d!3449 (= (getValueByKey!59 lt!4826 (_1!388 (tuple2!775 key!682 v!259))) e!11849)))

(declare-fun b!18466 () Bool)

(assert (=> b!18466 (= e!11850 None!63)))

(declare-fun b!18464 () Bool)

(assert (=> b!18464 (= e!11849 e!11850)))

(declare-fun c!1902 () Bool)

(assert (=> b!18464 (= c!1902 (and ((_ is Cons!530) lt!4826) (not (= (_1!388 (h!1096 lt!4826)) (_1!388 (tuple2!775 key!682 v!259))))))))

(assert (= (and d!3449 c!1901) b!18463))

(assert (= (and d!3449 (not c!1901)) b!18464))

(assert (= (and b!18464 c!1902) b!18465))

(assert (= (and b!18464 (not c!1902)) b!18466))

(declare-fun m!12827 () Bool)

(assert (=> b!18465 m!12827))

(assert (=> d!3441 d!3449))

(declare-fun d!3451 () Bool)

(assert (=> d!3451 (= (getValueByKey!59 lt!4826 (_1!388 (tuple2!775 key!682 v!259))) (Some!64 (_2!388 (tuple2!775 key!682 v!259))))))

(declare-fun lt!4868 () Unit!354)

(declare-fun choose!189 (List!534 (_ BitVec 64) V!1045) Unit!354)

(assert (=> d!3451 (= lt!4868 (choose!189 lt!4826 (_1!388 (tuple2!775 key!682 v!259)) (_2!388 (tuple2!775 key!682 v!259))))))

(declare-fun e!11853 () Bool)

(assert (=> d!3451 e!11853))

(declare-fun res!12832 () Bool)

(assert (=> d!3451 (=> (not res!12832) (not e!11853))))

(declare-fun isStrictlySorted!167 (List!534) Bool)

(assert (=> d!3451 (= res!12832 (isStrictlySorted!167 lt!4826))))

(assert (=> d!3451 (= (lemmaContainsTupThenGetReturnValue!16 lt!4826 (_1!388 (tuple2!775 key!682 v!259)) (_2!388 (tuple2!775 key!682 v!259))) lt!4868)))

(declare-fun b!18471 () Bool)

(declare-fun res!12833 () Bool)

(assert (=> b!18471 (=> (not res!12833) (not e!11853))))

(assert (=> b!18471 (= res!12833 (containsKey!23 lt!4826 (_1!388 (tuple2!775 key!682 v!259))))))

(declare-fun b!18472 () Bool)

(assert (=> b!18472 (= e!11853 (contains!207 lt!4826 (tuple2!775 (_1!388 (tuple2!775 key!682 v!259)) (_2!388 (tuple2!775 key!682 v!259)))))))

(assert (= (and d!3451 res!12832) b!18471))

(assert (= (and b!18471 res!12833) b!18472))

(assert (=> d!3451 m!12789))

(declare-fun m!12829 () Bool)

(assert (=> d!3451 m!12829))

(declare-fun m!12831 () Bool)

(assert (=> d!3451 m!12831))

(declare-fun m!12833 () Bool)

(assert (=> b!18471 m!12833))

(declare-fun m!12835 () Bool)

(assert (=> b!18472 m!12835))

(assert (=> d!3441 d!3451))

(declare-fun b!18493 () Bool)

(declare-fun e!11865 () List!534)

(declare-fun call!723 () List!534)

(assert (=> b!18493 (= e!11865 call!723)))

(declare-fun d!3453 () Bool)

(declare-fun e!11867 () Bool)

(assert (=> d!3453 e!11867))

(declare-fun res!12839 () Bool)

(assert (=> d!3453 (=> (not res!12839) (not e!11867))))

(declare-fun lt!4871 () List!534)

(assert (=> d!3453 (= res!12839 (isStrictlySorted!167 lt!4871))))

(assert (=> d!3453 (= lt!4871 e!11865)))

(declare-fun c!1911 () Bool)

(assert (=> d!3453 (= c!1911 (and ((_ is Cons!530) (toList!275 call!626)) (bvslt (_1!388 (h!1096 (toList!275 call!626))) (_1!388 (tuple2!775 key!682 v!259)))))))

(assert (=> d!3453 (isStrictlySorted!167 (toList!275 call!626))))

(assert (=> d!3453 (= (insertStrictlySorted!16 (toList!275 call!626) (_1!388 (tuple2!775 key!682 v!259)) (_2!388 (tuple2!775 key!682 v!259))) lt!4871)))

(declare-fun b!18494 () Bool)

(declare-fun e!11868 () List!534)

(assert (=> b!18494 (= e!11865 e!11868)))

(declare-fun c!1914 () Bool)

(assert (=> b!18494 (= c!1914 (and ((_ is Cons!530) (toList!275 call!626)) (= (_1!388 (h!1096 (toList!275 call!626))) (_1!388 (tuple2!775 key!682 v!259)))))))

(declare-fun b!18495 () Bool)

(declare-fun res!12838 () Bool)

(assert (=> b!18495 (=> (not res!12838) (not e!11867))))

(assert (=> b!18495 (= res!12838 (containsKey!23 lt!4871 (_1!388 (tuple2!775 key!682 v!259))))))

(declare-fun b!18496 () Bool)

(assert (=> b!18496 (= e!11867 (contains!207 lt!4871 (tuple2!775 (_1!388 (tuple2!775 key!682 v!259)) (_2!388 (tuple2!775 key!682 v!259)))))))

(declare-fun b!18497 () Bool)

(declare-fun e!11866 () List!534)

(declare-fun call!725 () List!534)

(assert (=> b!18497 (= e!11866 call!725)))

(declare-fun bm!720 () Bool)

(declare-fun e!11864 () List!534)

(declare-fun $colon$colon!29 (List!534 tuple2!774) List!534)

(assert (=> bm!720 (= call!723 ($colon$colon!29 e!11864 (ite c!1911 (h!1096 (toList!275 call!626)) (tuple2!775 (_1!388 (tuple2!775 key!682 v!259)) (_2!388 (tuple2!775 key!682 v!259))))))))

(declare-fun c!1912 () Bool)

(assert (=> bm!720 (= c!1912 c!1911)))

(declare-fun b!18498 () Bool)

(assert (=> b!18498 (= e!11866 call!725)))

(declare-fun bm!721 () Bool)

(declare-fun call!724 () List!534)

(assert (=> bm!721 (= call!724 call!723)))

(declare-fun b!18499 () Bool)

(declare-fun c!1913 () Bool)

(assert (=> b!18499 (= e!11864 (ite c!1914 (t!3175 (toList!275 call!626)) (ite c!1913 (Cons!530 (h!1096 (toList!275 call!626)) (t!3175 (toList!275 call!626))) Nil!531)))))

(declare-fun b!18500 () Bool)

(assert (=> b!18500 (= e!11864 (insertStrictlySorted!16 (t!3175 (toList!275 call!626)) (_1!388 (tuple2!775 key!682 v!259)) (_2!388 (tuple2!775 key!682 v!259))))))

(declare-fun b!18501 () Bool)

(assert (=> b!18501 (= e!11868 call!724)))

(declare-fun bm!722 () Bool)

(assert (=> bm!722 (= call!725 call!724)))

(declare-fun b!18502 () Bool)

(assert (=> b!18502 (= c!1913 (and ((_ is Cons!530) (toList!275 call!626)) (bvsgt (_1!388 (h!1096 (toList!275 call!626))) (_1!388 (tuple2!775 key!682 v!259)))))))

(assert (=> b!18502 (= e!11868 e!11866)))

(assert (= (and d!3453 c!1911) b!18493))

(assert (= (and d!3453 (not c!1911)) b!18494))

(assert (= (and b!18494 c!1914) b!18501))

(assert (= (and b!18494 (not c!1914)) b!18502))

(assert (= (and b!18502 c!1913) b!18498))

(assert (= (and b!18502 (not c!1913)) b!18497))

(assert (= (or b!18498 b!18497) bm!722))

(assert (= (or b!18501 bm!722) bm!721))

(assert (= (or b!18493 bm!721) bm!720))

(assert (= (and bm!720 c!1912) b!18500))

(assert (= (and bm!720 (not c!1912)) b!18499))

(assert (= (and d!3453 res!12839) b!18495))

(assert (= (and b!18495 res!12838) b!18496))

(declare-fun m!12837 () Bool)

(assert (=> b!18495 m!12837))

(declare-fun m!12839 () Bool)

(assert (=> bm!720 m!12839))

(declare-fun m!12841 () Bool)

(assert (=> b!18500 m!12841))

(declare-fun m!12843 () Bool)

(assert (=> b!18496 m!12843))

(declare-fun m!12845 () Bool)

(assert (=> d!3453 m!12845))

(declare-fun m!12847 () Bool)

(assert (=> d!3453 m!12847))

(assert (=> d!3441 d!3453))

(declare-fun b!18519 () Bool)

(declare-fun e!11879 () Bool)

(declare-fun call!731 () Bool)

(assert (=> b!18519 (= e!11879 (not call!731))))

(declare-fun b!18520 () Bool)

(declare-fun lt!4876 () SeekEntryResult!48)

(assert (=> b!18520 (and (bvsge (index!2311 lt!4876) #b00000000000000000000000000000000) (bvslt (index!2311 lt!4876) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun res!12849 () Bool)

(assert (=> b!18520 (= res!12849 (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2311 lt!4876)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!11877 () Bool)

(assert (=> b!18520 (=> (not res!12849) (not e!11877))))

(declare-fun d!3455 () Bool)

(declare-fun e!11878 () Bool)

(assert (=> d!3455 e!11878))

(declare-fun c!1920 () Bool)

(assert (=> d!3455 (= c!1920 ((_ is MissingZero!48) lt!4876))))

(assert (=> d!3455 (= lt!4876 (seekEntryOrOpen!0 key!682 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!4877 () Unit!354)

(declare-fun choose!190 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 (_ BitVec 64) Int) Unit!354)

(assert (=> d!3455 (= lt!4877 (choose!190 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!3455 (validMask!0 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))))))

(assert (=> d!3455 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!2 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) lt!4877)))

(declare-fun b!18521 () Bool)

(declare-fun res!12851 () Bool)

(assert (=> b!18521 (=> (not res!12851) (not e!11879))))

(assert (=> b!18521 (= res!12851 (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2314 lt!4876)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!18521 (and (bvsge (index!2314 lt!4876) #b00000000000000000000000000000000) (bvslt (index!2314 lt!4876) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun call!730 () Bool)

(declare-fun bm!727 () Bool)

(assert (=> bm!727 (= call!730 (inRange!0 (ite c!1920 (index!2311 lt!4876) (index!2314 lt!4876)) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun bm!728 () Bool)

(assert (=> bm!728 (= call!731 (arrayContainsKey!0 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 #b00000000000000000000000000000000))))

(declare-fun b!18522 () Bool)

(assert (=> b!18522 (= e!11877 (not call!731))))

(declare-fun b!18523 () Bool)

(declare-fun e!11880 () Bool)

(assert (=> b!18523 (= e!11880 ((_ is Undefined!48) lt!4876))))

(declare-fun b!18524 () Bool)

(assert (=> b!18524 (= e!11878 e!11877)))

(declare-fun res!12848 () Bool)

(assert (=> b!18524 (= res!12848 call!730)))

(assert (=> b!18524 (=> (not res!12848) (not e!11877))))

(declare-fun b!18525 () Bool)

(declare-fun res!12850 () Bool)

(assert (=> b!18525 (=> (not res!12850) (not e!11879))))

(assert (=> b!18525 (= res!12850 call!730)))

(assert (=> b!18525 (= e!11880 e!11879)))

(declare-fun b!18526 () Bool)

(assert (=> b!18526 (= e!11878 e!11880)))

(declare-fun c!1919 () Bool)

(assert (=> b!18526 (= c!1919 ((_ is MissingVacant!48) lt!4876))))

(assert (= (and d!3455 c!1920) b!18524))

(assert (= (and d!3455 (not c!1920)) b!18526))

(assert (= (and b!18524 res!12848) b!18520))

(assert (= (and b!18520 res!12849) b!18522))

(assert (= (and b!18526 c!1919) b!18525))

(assert (= (and b!18526 (not c!1919)) b!18523))

(assert (= (and b!18525 res!12850) b!18521))

(assert (= (and b!18521 res!12851) b!18519))

(assert (= (or b!18524 b!18525) bm!727))

(assert (= (or b!18522 b!18519) bm!728))

(assert (=> bm!728 m!12737))

(declare-fun m!12849 () Bool)

(assert (=> bm!727 m!12849))

(declare-fun m!12851 () Bool)

(assert (=> b!18521 m!12851))

(assert (=> d!3455 m!12783))

(declare-fun m!12853 () Bool)

(assert (=> d!3455 m!12853))

(declare-fun m!12855 () Bool)

(assert (=> d!3455 m!12855))

(declare-fun m!12857 () Bool)

(assert (=> b!18520 m!12857))

(assert (=> bm!695 d!3455))

(declare-fun d!3457 () Bool)

(declare-fun res!12856 () Bool)

(declare-fun e!11885 () Bool)

(assert (=> d!3457 (=> res!12856 e!11885)))

(assert (=> d!3457 (= res!12856 (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000) key!682))))

(assert (=> d!3457 (= (arrayContainsKey!0 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 #b00000000000000000000000000000000) e!11885)))

(declare-fun b!18531 () Bool)

(declare-fun e!11886 () Bool)

(assert (=> b!18531 (= e!11885 e!11886)))

(declare-fun res!12857 () Bool)

(assert (=> b!18531 (=> (not res!12857) (not e!11886))))

(assert (=> b!18531 (= res!12857 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun b!18532 () Bool)

(assert (=> b!18532 (= e!11886 (arrayContainsKey!0 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!3457 (not res!12856)) b!18531))

(assert (= (and b!18531 res!12857) b!18532))

(declare-fun m!12859 () Bool)

(assert (=> d!3457 m!12859))

(declare-fun m!12861 () Bool)

(assert (=> b!18532 m!12861))

(assert (=> bm!688 d!3457))

(declare-fun d!3459 () Bool)

(assert (=> d!3459 (= (map!355 (_2!387 lt!4852)) (map!357 (v!1473 (underlying!62 (_2!387 lt!4852)))))))

(declare-fun bs!843 () Bool)

(assert (= bs!843 d!3459))

(declare-fun m!12863 () Bool)

(assert (=> bs!843 m!12863))

(assert (=> b!18434 d!3459))

(assert (=> b!18434 d!3425))

(declare-fun b!18545 () Bool)

(declare-fun e!11893 () Bool)

(declare-fun lt!4946 () LongMapFixedSize!102)

(assert (=> b!18545 (= e!11893 (= (map!357 lt!4946) (ListLongMap!520 Nil!531)))))

(declare-fun d!3461 () Bool)

(assert (=> d!3461 e!11893))

(declare-fun res!12862 () Bool)

(assert (=> d!3461 (=> (not res!12862) (not e!11893))))

(assert (=> d!3461 (= res!12862 (valid!54 lt!4946))))

(declare-fun lt!4937 () LongMapFixedSize!102)

(assert (=> d!3461 (= lt!4946 lt!4937)))

(declare-fun lt!4938 () Unit!354)

(declare-fun e!11895 () Unit!354)

(assert (=> d!3461 (= lt!4938 e!11895)))

(declare-fun c!1925 () Bool)

(assert (=> d!3461 (= c!1925 (not (= (map!357 lt!4937) (ListLongMap!520 Nil!531))))))

(declare-fun lt!4924 () Unit!354)

(declare-fun lt!4933 () Unit!354)

(assert (=> d!3461 (= lt!4924 lt!4933)))

(declare-fun lt!4927 () array!1029)

(declare-fun lt!4926 () (_ BitVec 32))

(declare-datatypes ((List!536 0))(
  ( (Nil!533) (Cons!532 (h!1098 (_ BitVec 64)) (t!3181 List!536)) )
))
(declare-fun lt!4929 () List!536)

(declare-fun arrayNoDuplicates!0 (array!1029 (_ BitVec 32) List!536) Bool)

(assert (=> d!3461 (arrayNoDuplicates!0 lt!4927 lt!4926 lt!4929)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!1029 (_ BitVec 32) (_ BitVec 32) List!536) Unit!354)

(assert (=> d!3461 (= lt!4933 (lemmaArrayNoDuplicatesInAll0Array!0 lt!4927 lt!4926 (bvadd lt!4851 #b00000000000000000000000000000001) lt!4929))))

(assert (=> d!3461 (= lt!4929 Nil!533)))

(assert (=> d!3461 (= lt!4926 #b00000000000000000000000000000000)))

(assert (=> d!3461 (= lt!4927 (array!1030 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!4851 #b00000000000000000000000000000001)))))

(declare-fun lt!4930 () Unit!354)

(declare-fun lt!4931 () Unit!354)

(assert (=> d!3461 (= lt!4930 lt!4931)))

(declare-fun lt!4939 () (_ BitVec 32))

(declare-fun lt!4945 () array!1029)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1029 (_ BitVec 32)) Bool)

(assert (=> d!3461 (arrayForallSeekEntryOrOpenFound!0 lt!4939 lt!4945 lt!4851)))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!1029 (_ BitVec 32) (_ BitVec 32)) Unit!354)

(assert (=> d!3461 (= lt!4931 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!4945 lt!4851 lt!4939))))

(assert (=> d!3461 (= lt!4939 #b00000000000000000000000000000000)))

(assert (=> d!3461 (= lt!4945 (array!1030 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!4851 #b00000000000000000000000000000001)))))

(declare-fun lt!4940 () Unit!354)

(declare-fun lt!4942 () Unit!354)

(assert (=> d!3461 (= lt!4940 lt!4942)))

(declare-fun lt!4941 () array!1029)

(declare-fun lt!4935 () (_ BitVec 32))

(declare-fun lt!4928 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!1029 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!3461 (= (arrayCountValidKeys!0 lt!4941 lt!4935 lt!4928) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!1029 (_ BitVec 32) (_ BitVec 32)) Unit!354)

(assert (=> d!3461 (= lt!4942 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!4941 lt!4935 lt!4928))))

(assert (=> d!3461 (= lt!4928 (bvadd lt!4851 #b00000000000000000000000000000001))))

(assert (=> d!3461 (= lt!4935 #b00000000000000000000000000000000)))

(assert (=> d!3461 (= lt!4941 (array!1030 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!4851 #b00000000000000000000000000000001)))))

(declare-fun dynLambda!133 (Int (_ BitVec 64)) V!1045)

(assert (=> d!3461 (= lt!4937 (LongMapFixedSize!103 (defaultEntry!1662 (v!1473 (underlying!62 thiss!848))) lt!4851 #b00000000000000000000000000000000 (dynLambda!133 (defaultEntry!1662 (v!1473 (underlying!62 thiss!848))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!133 (defaultEntry!1662 (v!1473 (underlying!62 thiss!848))) #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!1030 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!4851 #b00000000000000000000000000000001)) (array!1028 ((as const (Array (_ BitVec 32) ValueCell!258)) EmptyCell!258) (bvadd lt!4851 #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(assert (=> d!3461 (validMask!0 lt!4851)))

(assert (=> d!3461 (= (getNewLongMapFixedSize!8 lt!4851 (defaultEntry!1662 (v!1473 (underlying!62 thiss!848)))) lt!4946)))

(declare-fun b!18546 () Bool)

(declare-fun e!11894 () Bool)

(declare-fun lt!4934 () tuple2!774)

(declare-fun lt!4936 () (_ BitVec 32))

(assert (=> b!18546 (= e!11894 (ite (= (_1!388 lt!4934) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!4936 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!4936 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!18547 () Bool)

(declare-fun Unit!361 () Unit!354)

(assert (=> b!18547 (= e!11895 Unit!361)))

(declare-fun b!18548 () Bool)

(declare-fun lt!4932 () array!1029)

(assert (=> b!18548 (= e!11894 (arrayContainsKey!0 lt!4932 (_1!388 lt!4934) #b00000000000000000000000000000000))))

(declare-fun b!18549 () Bool)

(declare-fun res!12863 () Bool)

(assert (=> b!18549 (=> (not res!12863) (not e!11893))))

(assert (=> b!18549 (= res!12863 (= (mask!4595 lt!4946) lt!4851))))

(declare-fun b!18550 () Bool)

(declare-fun Unit!362 () Unit!354)

(assert (=> b!18550 (= e!11895 Unit!362)))

(declare-fun head!819 (List!534) tuple2!774)

(assert (=> b!18550 (= lt!4934 (head!819 (toList!275 (map!357 lt!4937))))))

(assert (=> b!18550 (= lt!4932 (array!1030 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!4851 #b00000000000000000000000000000001)))))

(assert (=> b!18550 (= lt!4936 #b00000000000000000000000000000000)))

(declare-fun lt!4925 () Unit!354)

(declare-fun lemmaKeyInListMapIsInArray!82 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 (_ BitVec 64) Int) Unit!354)

(assert (=> b!18550 (= lt!4925 (lemmaKeyInListMapIsInArray!82 lt!4932 (array!1028 ((as const (Array (_ BitVec 32) ValueCell!258)) EmptyCell!258) (bvadd lt!4851 #b00000000000000000000000000000001)) lt!4851 lt!4936 (dynLambda!133 (defaultEntry!1662 (v!1473 (underlying!62 thiss!848))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!133 (defaultEntry!1662 (v!1473 (underlying!62 thiss!848))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!388 lt!4934) (defaultEntry!1662 (v!1473 (underlying!62 thiss!848)))))))

(declare-fun c!1926 () Bool)

(assert (=> b!18550 (= c!1926 (and (not (= (_1!388 lt!4934) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!388 lt!4934) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!18550 e!11894))

(declare-fun lt!4943 () Unit!354)

(assert (=> b!18550 (= lt!4943 lt!4925)))

(declare-fun lt!4944 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1029 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!18550 (= lt!4944 (arrayScanForKey!0 (array!1030 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!4851 #b00000000000000000000000000000001)) (_1!388 lt!4934) #b00000000000000000000000000000000))))

(assert (=> b!18550 false))

(assert (= (and d!3461 c!1925) b!18550))

(assert (= (and d!3461 (not c!1925)) b!18547))

(assert (= (and b!18550 c!1926) b!18548))

(assert (= (and b!18550 (not c!1926)) b!18546))

(assert (= (and d!3461 res!12862) b!18549))

(assert (= (and b!18549 res!12863) b!18545))

(declare-fun b_lambda!1451 () Bool)

(assert (=> (not b_lambda!1451) (not d!3461)))

(declare-fun t!3178 () Bool)

(declare-fun tb!629 () Bool)

(assert (=> (and b!18232 (= (defaultEntry!1662 (v!1473 (underlying!62 thiss!848))) (defaultEntry!1662 (v!1473 (underlying!62 thiss!848)))) t!3178) tb!629))

(declare-fun result!1013 () Bool)

(assert (=> tb!629 (= result!1013 tp_is_empty!915)))

(assert (=> d!3461 t!3178))

(declare-fun b_and!1305 () Bool)

(assert (= b_and!1301 (and (=> t!3178 result!1013) b_and!1305)))

(declare-fun b_lambda!1453 () Bool)

(assert (=> (not b_lambda!1453) (not b!18550)))

(assert (=> b!18550 t!3178))

(declare-fun b_and!1307 () Bool)

(assert (= b_and!1305 (and (=> t!3178 result!1013) b_and!1307)))

(declare-fun m!12865 () Bool)

(assert (=> b!18545 m!12865))

(declare-fun m!12867 () Bool)

(assert (=> d!3461 m!12867))

(declare-fun m!12869 () Bool)

(assert (=> d!3461 m!12869))

(declare-fun m!12871 () Bool)

(assert (=> d!3461 m!12871))

(declare-fun m!12873 () Bool)

(assert (=> d!3461 m!12873))

(declare-fun m!12875 () Bool)

(assert (=> d!3461 m!12875))

(declare-fun m!12877 () Bool)

(assert (=> d!3461 m!12877))

(declare-fun m!12879 () Bool)

(assert (=> d!3461 m!12879))

(declare-fun m!12881 () Bool)

(assert (=> d!3461 m!12881))

(declare-fun m!12883 () Bool)

(assert (=> d!3461 m!12883))

(declare-fun m!12885 () Bool)

(assert (=> d!3461 m!12885))

(declare-fun m!12887 () Bool)

(assert (=> b!18548 m!12887))

(assert (=> b!18550 m!12875))

(declare-fun m!12889 () Bool)

(assert (=> b!18550 m!12889))

(assert (=> b!18550 m!12879))

(assert (=> b!18550 m!12879))

(assert (=> b!18550 m!12879))

(declare-fun m!12891 () Bool)

(assert (=> b!18550 m!12891))

(declare-fun m!12893 () Bool)

(assert (=> b!18550 m!12893))

(assert (=> d!3443 d!3461))

(declare-fun d!3463 () Bool)

(declare-fun e!11900 () Bool)

(assert (=> d!3463 e!11900))

(declare-fun res!12866 () Bool)

(assert (=> d!3463 (=> (not res!12866) (not e!11900))))

(declare-fun lt!4952 () (_ BitVec 32))

(assert (=> d!3463 (= res!12866 (validMask!0 lt!4952))))

(declare-datatypes ((tuple2!786 0))(
  ( (tuple2!787 (_1!395 Unit!354) (_2!395 (_ BitVec 32))) )
))
(declare-fun e!11901 () tuple2!786)

(assert (=> d!3463 (= lt!4952 (_2!395 e!11901))))

(declare-fun c!1929 () Bool)

(declare-fun lt!4951 () tuple2!786)

(assert (=> d!3463 (= c!1929 (and (bvsgt (_2!395 lt!4951) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!83 (v!1473 (underlying!62 thiss!848)))) (_2!395 lt!4951)) (bvsge (bvadd (bvand (bvashr (_2!395 lt!4951) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!83 (v!1473 (underlying!62 thiss!848))))))))

(declare-fun Unit!363 () Unit!354)

(declare-fun Unit!364 () Unit!354)

(assert (=> d!3463 (= lt!4951 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!83 (v!1473 (underlying!62 thiss!848))) (_vacant!83 (v!1473 (underlying!62 thiss!848))))) (mask!4595 (v!1473 (underlying!62 thiss!848)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!83 (v!1473 (underlying!62 thiss!848)))) (mask!4595 (v!1473 (underlying!62 thiss!848))))) (tuple2!787 Unit!363 (bvand (bvadd (bvshl (mask!4595 (v!1473 (underlying!62 thiss!848))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!787 Unit!364 (mask!4595 (v!1473 (underlying!62 thiss!848))))))))

(assert (=> d!3463 (validMask!0 (mask!4595 (v!1473 (underlying!62 thiss!848))))))

(assert (=> d!3463 (= (computeNewMask!2 thiss!848 (mask!4595 (v!1473 (underlying!62 thiss!848))) (_vacant!83 (v!1473 (underlying!62 thiss!848))) (_size!83 (v!1473 (underlying!62 thiss!848)))) lt!4952)))

(declare-fun b!18559 () Bool)

(declare-fun computeNewMaskWhile!2 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!786)

(assert (=> b!18559 (= e!11901 (computeNewMaskWhile!2 (_size!83 (v!1473 (underlying!62 thiss!848))) (_vacant!83 (v!1473 (underlying!62 thiss!848))) (mask!4595 (v!1473 (underlying!62 thiss!848))) (_2!395 lt!4951)))))

(declare-fun b!18560 () Bool)

(declare-fun Unit!365 () Unit!354)

(assert (=> b!18560 (= e!11901 (tuple2!787 Unit!365 (_2!395 lt!4951)))))

(declare-fun b!18561 () Bool)

(assert (=> b!18561 (= e!11900 (bvsle (_size!83 (v!1473 (underlying!62 thiss!848))) (bvadd lt!4952 #b00000000000000000000000000000001)))))

(assert (= (and d!3463 c!1929) b!18559))

(assert (= (and d!3463 (not c!1929)) b!18560))

(assert (= (and d!3463 res!12866) b!18561))

(declare-fun m!12895 () Bool)

(assert (=> d!3463 m!12895))

(declare-fun m!12897 () Bool)

(assert (=> d!3463 m!12897))

(declare-fun m!12899 () Bool)

(assert (=> b!18559 m!12899))

(assert (=> d!3443 d!3463))

(assert (=> d!3443 d!3439))

(declare-fun d!3465 () Bool)

(assert (=> d!3465 (= (map!357 (ite c!1872 (_2!389 lt!4801) (v!1473 (underlying!62 (_2!387 lt!4707))))) (getCurrentListMap!111 (_keys!3087 (ite c!1872 (_2!389 lt!4801) (v!1473 (underlying!62 (_2!387 lt!4707))))) (_values!1659 (ite c!1872 (_2!389 lt!4801) (v!1473 (underlying!62 (_2!387 lt!4707))))) (mask!4595 (ite c!1872 (_2!389 lt!4801) (v!1473 (underlying!62 (_2!387 lt!4707))))) (extraKeys!1575 (ite c!1872 (_2!389 lt!4801) (v!1473 (underlying!62 (_2!387 lt!4707))))) (zeroValue!1598 (ite c!1872 (_2!389 lt!4801) (v!1473 (underlying!62 (_2!387 lt!4707))))) (minValue!1598 (ite c!1872 (_2!389 lt!4801) (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000 (defaultEntry!1662 (ite c!1872 (_2!389 lt!4801) (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun bs!844 () Bool)

(assert (= bs!844 d!3465))

(declare-fun m!12901 () Bool)

(assert (=> bs!844 m!12901))

(assert (=> bm!696 d!3465))

(declare-fun bm!729 () Bool)

(declare-fun call!744 () ListLongMap!519)

(declare-fun call!736 () ListLongMap!519)

(assert (=> bm!729 (= call!744 call!736)))

(declare-fun lt!4953 () SeekEntryResult!48)

(declare-fun lt!4966 () SeekEntryResult!48)

(declare-fun call!753 () Bool)

(declare-fun c!1938 () Bool)

(declare-fun c!1940 () Bool)

(declare-fun c!1930 () Bool)

(declare-fun bm!730 () Bool)

(declare-fun lt!4973 () SeekEntryResult!48)

(declare-fun c!1932 () Bool)

(declare-fun c!1934 () Bool)

(declare-fun lt!4971 () SeekEntryResult!48)

(assert (=> bm!730 (= call!753 (inRange!0 (ite c!1934 (ite c!1938 (index!2312 lt!4973) (ite c!1930 (index!2311 lt!4971) (index!2314 lt!4971))) (ite c!1940 (index!2312 lt!4953) (ite c!1932 (index!2311 lt!4966) (index!2314 lt!4966)))) (mask!4595 call!713)))))

(declare-fun b!18562 () Bool)

(declare-fun res!12879 () Bool)

(declare-fun call!742 () Bool)

(assert (=> b!18562 (= res!12879 call!742)))

(declare-fun e!11903 () Bool)

(assert (=> b!18562 (=> (not res!12879) (not e!11903))))

(declare-fun b!18563 () Bool)

(declare-fun e!11914 () Bool)

(assert (=> b!18563 (= e!11914 (= (select (arr!496 (_keys!3087 call!713)) (index!2312 lt!4973)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!731 () Bool)

(declare-fun call!748 () Bool)

(assert (=> bm!731 (= call!748 call!753)))

(declare-fun bm!732 () Bool)

(declare-fun call!745 () SeekEntryResult!48)

(assert (=> bm!732 (= call!745 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3087 call!713) (mask!4595 call!713)))))

(declare-fun b!18564 () Bool)

(declare-fun res!12880 () Bool)

(declare-fun e!11920 () Bool)

(assert (=> b!18564 (=> (not res!12880) (not e!11920))))

(declare-fun call!739 () Bool)

(assert (=> b!18564 (= res!12880 call!739)))

(declare-fun e!11919 () Bool)

(assert (=> b!18564 (= e!11919 e!11920)))

(declare-fun b!18565 () Bool)

(declare-fun res!12878 () Bool)

(assert (=> b!18565 (= res!12878 (= (select (arr!496 (_keys!3087 call!713)) (index!2314 lt!4971)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!11911 () Bool)

(assert (=> b!18565 (=> (not res!12878) (not e!11911))))

(declare-fun bm!733 () Bool)

(declare-fun call!752 () SeekEntryResult!48)

(assert (=> bm!733 (= call!752 call!745)))

(declare-fun b!18566 () Bool)

(declare-fun e!11904 () Unit!354)

(declare-fun lt!4977 () Unit!354)

(assert (=> b!18566 (= e!11904 lt!4977)))

(declare-fun call!732 () Unit!354)

(assert (=> b!18566 (= lt!4977 call!732)))

(declare-fun call!733 () SeekEntryResult!48)

(assert (=> b!18566 (= lt!4971 call!733)))

(assert (=> b!18566 (= c!1930 ((_ is MissingZero!48) lt!4971))))

(assert (=> b!18566 e!11919))

(declare-fun b!18567 () Bool)

(declare-fun e!11921 () tuple2!776)

(declare-fun lt!4968 () tuple2!776)

(assert (=> b!18567 (= e!11921 (tuple2!777 (_1!389 lt!4968) (_2!389 lt!4968)))))

(declare-fun call!755 () tuple2!776)

(assert (=> b!18567 (= lt!4968 call!755)))

(declare-fun bm!734 () Bool)

(declare-fun call!743 () Bool)

(assert (=> bm!734 (= call!743 call!742)))

(declare-fun lt!4965 () tuple2!776)

(declare-fun call!737 () ListLongMap!519)

(declare-fun bm!735 () Bool)

(declare-fun c!1931 () Bool)

(assert (=> bm!735 (= call!737 (map!357 (ite c!1931 call!713 (_2!389 lt!4965))))))

(declare-fun bm!736 () Bool)

(assert (=> bm!736 (= call!733 call!745)))

(declare-fun b!18568 () Bool)

(declare-fun lt!4974 () Unit!354)

(declare-fun lt!4961 () Unit!354)

(assert (=> b!18568 (= lt!4974 lt!4961)))

(declare-fun call!746 () ListLongMap!519)

(declare-fun call!754 () ListLongMap!519)

(assert (=> b!18568 (= call!746 call!754)))

(declare-fun lt!4963 () (_ BitVec 32))

(assert (=> b!18568 (= lt!4961 (lemmaChangeLongMinValueKeyThenAddPairToListMap!2 (_keys!3087 call!713) (_values!1659 call!713) (mask!4595 call!713) (extraKeys!1575 call!713) lt!4963 (zeroValue!1598 call!713) (minValue!1598 call!713) (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (defaultEntry!1662 call!713)))))

(assert (=> b!18568 (= lt!4963 (bvor (extraKeys!1575 call!713) #b00000000000000000000000000000010))))

(declare-fun e!11910 () tuple2!776)

(assert (=> b!18568 (= e!11910 (tuple2!777 true (LongMapFixedSize!103 (defaultEntry!1662 call!713) (mask!4595 call!713) (bvor (extraKeys!1575 call!713) #b00000000000000000000000000000010) (zeroValue!1598 call!713) (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (_size!83 call!713) (_keys!3087 call!713) (_values!1659 call!713) (_vacant!83 call!713))))))

(declare-fun b!18569 () Bool)

(declare-fun e!11906 () Bool)

(assert (=> b!18569 (= e!11906 ((_ is Undefined!48) lt!4971))))

(declare-fun b!18570 () Bool)

(declare-fun e!11905 () tuple2!776)

(assert (=> b!18570 (= e!11905 e!11910)))

(declare-fun c!1939 () Bool)

(assert (=> b!18570 (= c!1939 (= #b0000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!737 () Bool)

(declare-fun c!1941 () Bool)

(declare-fun lt!4958 () SeekEntryResult!48)

(assert (=> bm!737 (= call!755 (updateHelperNewKey!2 call!713 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1941 (index!2314 lt!4958) (index!2311 lt!4958))))))

(declare-fun b!18571 () Bool)

(declare-fun e!11913 () Bool)

(declare-fun call!735 () ListLongMap!519)

(assert (=> b!18571 (= e!11913 (= call!735 (+!36 call!737 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1598 (v!1473 (underlying!62 thiss!848)))))))))

(declare-fun b!18572 () Bool)

(declare-fun e!11909 () Unit!354)

(declare-fun Unit!366 () Unit!354)

(assert (=> b!18572 (= e!11909 Unit!366)))

(declare-fun lt!4959 () Unit!354)

(assert (=> b!18572 (= lt!4959 call!732)))

(assert (=> b!18572 (= lt!4966 call!752)))

(assert (=> b!18572 (= c!1932 ((_ is MissingZero!48) lt!4966))))

(declare-fun e!11916 () Bool)

(assert (=> b!18572 e!11916))

(declare-fun lt!4976 () Unit!354)

(assert (=> b!18572 (= lt!4976 lt!4959)))

(assert (=> b!18572 false))

(declare-fun bm!738 () Bool)

(assert (=> bm!738 (= call!754 call!736)))

(declare-fun bm!739 () Bool)

(declare-fun call!747 () Bool)

(assert (=> bm!739 (= call!747 (arrayContainsKey!0 (_keys!3087 call!713) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun b!18573 () Bool)

(declare-fun e!11912 () Bool)

(assert (=> b!18573 (= e!11912 ((_ is Undefined!48) lt!4966))))

(declare-fun bm!740 () Bool)

(declare-fun call!741 () Bool)

(assert (=> bm!740 (= call!741 (contains!206 call!744 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!741 () Bool)

(declare-fun call!750 () Bool)

(assert (=> bm!741 (= call!750 call!747)))

(declare-fun b!18574 () Bool)

(declare-fun res!12871 () Bool)

(declare-fun e!11918 () Bool)

(assert (=> b!18574 (=> (not res!12871) (not e!11918))))

(assert (=> b!18574 (= res!12871 call!743)))

(assert (=> b!18574 (= e!11916 e!11918)))

(declare-fun bm!742 () Bool)

(declare-fun call!734 () ListLongMap!519)

(assert (=> bm!742 (= call!746 call!734)))

(declare-fun b!18575 () Bool)

(declare-fun e!11908 () tuple2!776)

(assert (=> b!18575 (= e!11921 e!11908)))

(declare-fun c!1936 () Bool)

(assert (=> b!18575 (= c!1936 ((_ is MissingZero!48) lt!4958))))

(declare-fun b!18576 () Bool)

(declare-fun lt!4967 () Unit!354)

(assert (=> b!18576 (= e!11909 lt!4967)))

(declare-fun call!751 () Unit!354)

(assert (=> b!18576 (= lt!4967 call!751)))

(assert (=> b!18576 (= lt!4953 call!752)))

(declare-fun res!12873 () Bool)

(assert (=> b!18576 (= res!12873 ((_ is Found!48) lt!4953))))

(assert (=> b!18576 (=> (not res!12873) (not e!11903))))

(assert (=> b!18576 e!11903))

(declare-fun bm!743 () Bool)

(assert (=> bm!743 (= call!751 (lemmaInListMapThenSeekEntryOrOpenFindsIt!2 (_keys!3087 call!713) (_values!1659 call!713) (mask!4595 call!713) (extraKeys!1575 call!713) (zeroValue!1598 call!713) (minValue!1598 call!713) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1662 call!713)))))

(declare-fun b!18577 () Bool)

(declare-fun lt!4954 () Unit!354)

(declare-fun lt!4962 () Unit!354)

(assert (=> b!18577 (= lt!4954 lt!4962)))

(declare-fun call!738 () ListLongMap!519)

(assert (=> b!18577 (= call!746 call!738)))

(declare-fun lt!4969 () (_ BitVec 32))

(assert (=> b!18577 (= lt!4962 (lemmaChangeZeroKeyThenAddPairToListMap!2 (_keys!3087 call!713) (_values!1659 call!713) (mask!4595 call!713) (extraKeys!1575 call!713) lt!4969 (zeroValue!1598 call!713) (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 call!713) (defaultEntry!1662 call!713)))))

(assert (=> b!18577 (= lt!4969 (bvor (extraKeys!1575 call!713) #b00000000000000000000000000000001))))

(assert (=> b!18577 (= e!11910 (tuple2!777 true (LongMapFixedSize!103 (defaultEntry!1662 call!713) (mask!4595 call!713) (bvor (extraKeys!1575 call!713) #b00000000000000000000000000000001) (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 call!713) (_size!83 call!713) (_keys!3087 call!713) (_values!1659 call!713) (_vacant!83 call!713))))))

(declare-fun b!18578 () Bool)

(declare-fun lt!4960 () tuple2!776)

(assert (=> b!18578 (= lt!4960 call!755)))

(assert (=> b!18578 (= e!11908 (tuple2!777 (_1!389 lt!4960) (_2!389 lt!4960)))))

(declare-fun b!18579 () Bool)

(assert (=> b!18579 (= e!11906 e!11911)))

(declare-fun res!12874 () Bool)

(assert (=> b!18579 (= res!12874 call!739)))

(assert (=> b!18579 (=> (not res!12874) (not e!11911))))

(declare-fun b!18580 () Bool)

(declare-fun call!749 () Bool)

(assert (=> b!18580 (= e!11918 (not call!749))))

(declare-fun b!18581 () Bool)

(declare-fun e!11902 () Bool)

(assert (=> b!18581 (= e!11912 e!11902)))

(declare-fun res!12867 () Bool)

(assert (=> b!18581 (= res!12867 call!743)))

(assert (=> b!18581 (=> (not res!12867) (not e!11902))))

(declare-fun bm!744 () Bool)

(assert (=> bm!744 (= call!742 call!753)))

(declare-fun b!18582 () Bool)

(declare-fun lt!4975 () Unit!354)

(declare-fun lt!4956 () Unit!354)

(assert (=> b!18582 (= lt!4975 lt!4956)))

(declare-fun call!740 () ListLongMap!519)

(assert (=> b!18582 (contains!206 call!740 (select (arr!496 (_keys!3087 call!713)) (index!2312 lt!4958)))))

(declare-fun lt!4955 () array!1027)

(assert (=> b!18582 (= lt!4956 (lemmaValidKeyInArrayIsInListMap!2 (_keys!3087 call!713) lt!4955 (mask!4595 call!713) (extraKeys!1575 call!713) (zeroValue!1598 call!713) (minValue!1598 call!713) (index!2312 lt!4958) (defaultEntry!1662 call!713)))))

(assert (=> b!18582 (= lt!4955 (array!1028 (store (arr!495 (_values!1659 call!713)) (index!2312 lt!4958) (ValueCellFull!258 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))))) (size!585 (_values!1659 call!713))))))

(declare-fun lt!4972 () Unit!354)

(declare-fun lt!4979 () Unit!354)

(assert (=> b!18582 (= lt!4972 lt!4979)))

(assert (=> b!18582 (= call!734 (getCurrentListMap!111 (_keys!3087 call!713) (array!1028 (store (arr!495 (_values!1659 call!713)) (index!2312 lt!4958) (ValueCellFull!258 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))))) (size!585 (_values!1659 call!713))) (mask!4595 call!713) (extraKeys!1575 call!713) (zeroValue!1598 call!713) (minValue!1598 call!713) #b00000000000000000000000000000000 (defaultEntry!1662 call!713)))))

(assert (=> b!18582 (= lt!4979 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!2 (_keys!3087 call!713) (_values!1659 call!713) (mask!4595 call!713) (extraKeys!1575 call!713) (zeroValue!1598 call!713) (minValue!1598 call!713) (index!2312 lt!4958) #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (defaultEntry!1662 call!713)))))

(declare-fun lt!4957 () Unit!354)

(assert (=> b!18582 (= lt!4957 e!11909)))

(assert (=> b!18582 (= c!1940 call!741)))

(assert (=> b!18582 (= e!11908 (tuple2!777 true (LongMapFixedSize!103 (defaultEntry!1662 call!713) (mask!4595 call!713) (extraKeys!1575 call!713) (zeroValue!1598 call!713) (minValue!1598 call!713) (_size!83 call!713) (_keys!3087 call!713) (array!1028 (store (arr!495 (_values!1659 call!713)) (index!2312 lt!4958) (ValueCellFull!258 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))))) (size!585 (_values!1659 call!713))) (_vacant!83 call!713))))))

(declare-fun d!3467 () Bool)

(declare-fun e!11915 () Bool)

(assert (=> d!3467 e!11915))

(declare-fun res!12869 () Bool)

(assert (=> d!3467 (=> (not res!12869) (not e!11915))))

(assert (=> d!3467 (= res!12869 (valid!54 (_2!389 lt!4965)))))

(assert (=> d!3467 (= lt!4965 e!11905)))

(declare-fun c!1933 () Bool)

(assert (=> d!3467 (= c!1933 (= #b0000000000000000000000000000000000000000000000000000000000000000 (bvneg #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!3467 (valid!54 call!713)))

(assert (=> d!3467 (= (update!11 call!713 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1598 (v!1473 (underlying!62 thiss!848)))) lt!4965)))

(declare-fun b!18583 () Bool)

(declare-fun res!12872 () Bool)

(assert (=> b!18583 (=> (not res!12872) (not e!11920))))

(assert (=> b!18583 (= res!12872 (= (select (arr!496 (_keys!3087 call!713)) (index!2311 lt!4971)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!745 () Bool)

(assert (=> bm!745 (= call!738 call!740)))

(declare-fun b!18584 () Bool)

(assert (=> b!18584 (= e!11903 (= (select (arr!496 (_keys!3087 call!713)) (index!2312 lt!4953)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!18585 () Bool)

(declare-fun e!11917 () Bool)

(assert (=> b!18585 (= e!11917 e!11913)))

(declare-fun res!12877 () Bool)

(assert (=> b!18585 (= res!12877 (contains!206 call!735 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!18585 (=> (not res!12877) (not e!11913))))

(declare-fun b!18586 () Bool)

(assert (=> b!18586 (= e!11915 e!11917)))

(assert (=> b!18586 (= c!1931 (_1!389 lt!4965))))

(declare-fun bm!746 () Bool)

(assert (=> bm!746 (= call!732 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!2 (_keys!3087 call!713) (_values!1659 call!713) (mask!4595 call!713) (extraKeys!1575 call!713) (zeroValue!1598 call!713) (minValue!1598 call!713) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1662 call!713)))))

(declare-fun b!18587 () Bool)

(declare-fun res!12868 () Bool)

(assert (=> b!18587 (=> (not res!12868) (not e!11918))))

(assert (=> b!18587 (= res!12868 (= (select (arr!496 (_keys!3087 call!713)) (index!2311 lt!4966)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!18588 () Bool)

(assert (=> b!18588 (= e!11917 (= call!737 call!735))))

(declare-fun bm!747 () Bool)

(assert (=> bm!747 (= call!735 (map!357 (ite c!1931 (_2!389 lt!4965) call!713)))))

(declare-fun b!18589 () Bool)

(assert (=> b!18589 (= e!11920 (not call!750))))

(declare-fun b!18590 () Bool)

(assert (=> b!18590 (= e!11902 (not call!749))))

(declare-fun b!18591 () Bool)

(declare-fun c!1937 () Bool)

(assert (=> b!18591 (= c!1937 ((_ is MissingVacant!48) lt!4966))))

(assert (=> b!18591 (= e!11916 e!11912)))

(declare-fun b!18592 () Bool)

(assert (=> b!18592 (= c!1941 ((_ is MissingVacant!48) lt!4958))))

(declare-fun e!11907 () tuple2!776)

(assert (=> b!18592 (= e!11907 e!11921)))

(declare-fun b!18593 () Bool)

(declare-fun c!1935 () Bool)

(assert (=> b!18593 (= c!1935 ((_ is MissingVacant!48) lt!4971))))

(assert (=> b!18593 (= e!11919 e!11906)))

(declare-fun b!18594 () Bool)

(assert (=> b!18594 (= e!11905 e!11907)))

(assert (=> b!18594 (= lt!4958 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3087 call!713) (mask!4595 call!713)))))

(assert (=> b!18594 (= c!1934 ((_ is Undefined!48) lt!4958))))

(declare-fun bm!748 () Bool)

(assert (=> bm!748 (= call!736 (getCurrentListMap!111 (_keys!3087 call!713) (_values!1659 call!713) (mask!4595 call!713) (ite c!1933 (ite c!1939 (extraKeys!1575 call!713) lt!4963) (extraKeys!1575 call!713)) (zeroValue!1598 call!713) (ite c!1933 (ite c!1939 (minValue!1598 call!713) (zeroValue!1598 (v!1473 (underlying!62 thiss!848)))) (minValue!1598 call!713)) #b00000000000000000000000000000000 (defaultEntry!1662 call!713)))))

(declare-fun b!18595 () Bool)

(declare-fun res!12870 () Bool)

(assert (=> b!18595 (= res!12870 (= (select (arr!496 (_keys!3087 call!713)) (index!2314 lt!4966)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!18595 (=> (not res!12870) (not e!11902))))

(declare-fun bm!749 () Bool)

(assert (=> bm!749 (= call!734 (+!36 (ite c!1933 (ite c!1939 call!754 call!738) call!744) (ite c!1933 (ite c!1939 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1598 (v!1473 (underlying!62 thiss!848)))) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))))) (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1598 (v!1473 (underlying!62 thiss!848)))))))))

(declare-fun b!18596 () Bool)

(declare-fun lt!4978 () Unit!354)

(assert (=> b!18596 (= lt!4978 e!11904)))

(assert (=> b!18596 (= c!1938 call!741)))

(assert (=> b!18596 (= e!11907 (tuple2!777 false call!713))))

(declare-fun bm!750 () Bool)

(assert (=> bm!750 (= call!749 call!747)))

(declare-fun bm!751 () Bool)

(assert (=> bm!751 (= call!740 (getCurrentListMap!111 (_keys!3087 call!713) (ite c!1933 (_values!1659 call!713) lt!4955) (mask!4595 call!713) (ite (and c!1933 c!1939) lt!4969 (extraKeys!1575 call!713)) (ite (and c!1933 c!1939) (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (zeroValue!1598 call!713)) (minValue!1598 call!713) #b00000000000000000000000000000000 (defaultEntry!1662 call!713)))))

(declare-fun b!18597 () Bool)

(assert (=> b!18597 (= e!11911 (not call!750))))

(declare-fun b!18598 () Bool)

(declare-fun res!12875 () Bool)

(assert (=> b!18598 (= res!12875 call!748)))

(assert (=> b!18598 (=> (not res!12875) (not e!11914))))

(declare-fun bm!752 () Bool)

(assert (=> bm!752 (= call!739 call!748)))

(declare-fun b!18599 () Bool)

(declare-fun Unit!367 () Unit!354)

(assert (=> b!18599 (= e!11904 Unit!367)))

(declare-fun lt!4964 () Unit!354)

(assert (=> b!18599 (= lt!4964 call!751)))

(assert (=> b!18599 (= lt!4973 call!733)))

(declare-fun res!12876 () Bool)

(assert (=> b!18599 (= res!12876 ((_ is Found!48) lt!4973))))

(assert (=> b!18599 (=> (not res!12876) (not e!11914))))

(assert (=> b!18599 e!11914))

(declare-fun lt!4970 () Unit!354)

(assert (=> b!18599 (= lt!4970 lt!4964)))

(assert (=> b!18599 false))

(assert (= (and d!3467 c!1933) b!18570))

(assert (= (and d!3467 (not c!1933)) b!18594))

(assert (= (and b!18570 c!1939) b!18577))

(assert (= (and b!18570 (not c!1939)) b!18568))

(assert (= (or b!18577 b!18568) bm!738))

(assert (= (or b!18577 b!18568) bm!745))

(assert (= (or b!18577 b!18568) bm!742))

(assert (= (and b!18594 c!1934) b!18596))

(assert (= (and b!18594 (not c!1934)) b!18592))

(assert (= (and b!18596 c!1938) b!18599))

(assert (= (and b!18596 (not c!1938)) b!18566))

(assert (= (and b!18599 res!12876) b!18598))

(assert (= (and b!18598 res!12875) b!18563))

(assert (= (and b!18566 c!1930) b!18564))

(assert (= (and b!18566 (not c!1930)) b!18593))

(assert (= (and b!18564 res!12880) b!18583))

(assert (= (and b!18583 res!12872) b!18589))

(assert (= (and b!18593 c!1935) b!18579))

(assert (= (and b!18593 (not c!1935)) b!18569))

(assert (= (and b!18579 res!12874) b!18565))

(assert (= (and b!18565 res!12878) b!18597))

(assert (= (or b!18564 b!18579) bm!752))

(assert (= (or b!18589 b!18597) bm!741))

(assert (= (or b!18598 bm!752) bm!731))

(assert (= (or b!18599 b!18566) bm!736))

(assert (= (and b!18592 c!1941) b!18567))

(assert (= (and b!18592 (not c!1941)) b!18575))

(assert (= (and b!18575 c!1936) b!18578))

(assert (= (and b!18575 (not c!1936)) b!18582))

(assert (= (and b!18582 c!1940) b!18576))

(assert (= (and b!18582 (not c!1940)) b!18572))

(assert (= (and b!18576 res!12873) b!18562))

(assert (= (and b!18562 res!12879) b!18584))

(assert (= (and b!18572 c!1932) b!18574))

(assert (= (and b!18572 (not c!1932)) b!18591))

(assert (= (and b!18574 res!12871) b!18587))

(assert (= (and b!18587 res!12868) b!18580))

(assert (= (and b!18591 c!1937) b!18581))

(assert (= (and b!18591 (not c!1937)) b!18573))

(assert (= (and b!18581 res!12867) b!18595))

(assert (= (and b!18595 res!12870) b!18590))

(assert (= (or b!18574 b!18581) bm!734))

(assert (= (or b!18580 b!18590) bm!750))

(assert (= (or b!18562 bm!734) bm!744))

(assert (= (or b!18576 b!18572) bm!733))

(assert (= (or b!18567 b!18578) bm!737))

(assert (= (or b!18566 b!18572) bm!746))

(assert (= (or bm!731 bm!744) bm!730))

(assert (= (or bm!741 bm!750) bm!739))

(assert (= (or b!18599 b!18576) bm!743))

(assert (= (or b!18596 b!18582) bm!729))

(assert (= (or bm!736 bm!733) bm!732))

(assert (= (or b!18596 b!18582) bm!740))

(assert (= (or bm!742 b!18582) bm!749))

(assert (= (or bm!738 bm!729) bm!748))

(assert (= (or bm!745 b!18582) bm!751))

(assert (= (and d!3467 res!12869) b!18586))

(assert (= (and b!18586 c!1931) b!18585))

(assert (= (and b!18586 (not c!1931)) b!18588))

(assert (= (and b!18585 res!12877) b!18571))

(assert (= (or b!18585 b!18571 b!18588) bm!747))

(assert (= (or b!18571 b!18588) bm!735))

(declare-fun m!12903 () Bool)

(assert (=> bm!735 m!12903))

(declare-fun m!12905 () Bool)

(assert (=> b!18563 m!12905))

(declare-fun m!12907 () Bool)

(assert (=> b!18587 m!12907))

(declare-fun m!12909 () Bool)

(assert (=> bm!743 m!12909))

(declare-fun m!12911 () Bool)

(assert (=> b!18571 m!12911))

(declare-fun m!12913 () Bool)

(assert (=> b!18584 m!12913))

(declare-fun m!12915 () Bool)

(assert (=> bm!739 m!12915))

(declare-fun m!12917 () Bool)

(assert (=> b!18577 m!12917))

(declare-fun m!12919 () Bool)

(assert (=> d!3467 m!12919))

(declare-fun m!12921 () Bool)

(assert (=> d!3467 m!12921))

(declare-fun m!12923 () Bool)

(assert (=> bm!747 m!12923))

(declare-fun m!12925 () Bool)

(assert (=> b!18568 m!12925))

(declare-fun m!12927 () Bool)

(assert (=> b!18595 m!12927))

(declare-fun m!12929 () Bool)

(assert (=> b!18565 m!12929))

(declare-fun m!12931 () Bool)

(assert (=> bm!737 m!12931))

(declare-fun m!12933 () Bool)

(assert (=> bm!730 m!12933))

(declare-fun m!12935 () Bool)

(assert (=> b!18582 m!12935))

(declare-fun m!12937 () Bool)

(assert (=> b!18582 m!12937))

(declare-fun m!12939 () Bool)

(assert (=> b!18582 m!12939))

(assert (=> b!18582 m!12935))

(declare-fun m!12941 () Bool)

(assert (=> b!18582 m!12941))

(declare-fun m!12943 () Bool)

(assert (=> b!18582 m!12943))

(declare-fun m!12945 () Bool)

(assert (=> b!18582 m!12945))

(declare-fun m!12947 () Bool)

(assert (=> b!18583 m!12947))

(declare-fun m!12949 () Bool)

(assert (=> bm!748 m!12949))

(declare-fun m!12951 () Bool)

(assert (=> bm!751 m!12951))

(declare-fun m!12953 () Bool)

(assert (=> bm!749 m!12953))

(declare-fun m!12955 () Bool)

(assert (=> bm!746 m!12955))

(declare-fun m!12957 () Bool)

(assert (=> bm!740 m!12957))

(declare-fun m!12959 () Bool)

(assert (=> b!18585 m!12959))

(declare-fun m!12961 () Bool)

(assert (=> bm!732 m!12961))

(assert (=> b!18594 m!12961))

(assert (=> b!18433 d!3467))

(declare-fun d!3469 () Bool)

(assert (=> d!3469 (= (inRange!0 (ite c!1875 (ite c!1879 (index!2312 lt!4809) (ite c!1871 (index!2311 lt!4807) (index!2314 lt!4807))) (ite c!1881 (index!2312 lt!4789) (ite c!1873 (index!2311 lt!4802) (index!2314 lt!4802)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))) (and (bvsge (ite c!1875 (ite c!1879 (index!2312 lt!4809) (ite c!1871 (index!2311 lt!4807) (index!2314 lt!4807))) (ite c!1881 (index!2312 lt!4789) (ite c!1873 (index!2311 lt!4802) (index!2314 lt!4802)))) #b00000000000000000000000000000000) (bvslt (ite c!1875 (ite c!1879 (index!2312 lt!4809) (ite c!1871 (index!2311 lt!4807) (index!2314 lt!4807))) (ite c!1881 (index!2312 lt!4789) (ite c!1873 (index!2311 lt!4802) (index!2314 lt!4802)))) (bvadd (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000001))))))

(assert (=> bm!679 d!3469))

(declare-fun d!3471 () Bool)

(assert (=> d!3471 (isDefined!21 (getValueByKey!59 (toList!275 lt!4710) key!682))))

(declare-fun lt!4982 () Unit!354)

(declare-fun choose!191 (List!534 (_ BitVec 64)) Unit!354)

(assert (=> d!3471 (= lt!4982 (choose!191 (toList!275 lt!4710) key!682))))

(declare-fun e!11924 () Bool)

(assert (=> d!3471 e!11924))

(declare-fun res!12883 () Bool)

(assert (=> d!3471 (=> (not res!12883) (not e!11924))))

(assert (=> d!3471 (= res!12883 (isStrictlySorted!167 (toList!275 lt!4710)))))

(assert (=> d!3471 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!20 (toList!275 lt!4710) key!682) lt!4982)))

(declare-fun b!18602 () Bool)

(assert (=> b!18602 (= e!11924 (containsKey!23 (toList!275 lt!4710) key!682))))

(assert (= (and d!3471 res!12883) b!18602))

(assert (=> d!3471 m!12719))

(assert (=> d!3471 m!12719))

(assert (=> d!3471 m!12721))

(declare-fun m!12963 () Bool)

(assert (=> d!3471 m!12963))

(declare-fun m!12965 () Bool)

(assert (=> d!3471 m!12965))

(assert (=> b!18602 m!12715))

(assert (=> b!18291 d!3471))

(declare-fun d!3473 () Bool)

(declare-fun isEmpty!171 (Option!65) Bool)

(assert (=> d!3473 (= (isDefined!21 (getValueByKey!59 (toList!275 lt!4710) key!682)) (not (isEmpty!171 (getValueByKey!59 (toList!275 lt!4710) key!682))))))

(declare-fun bs!845 () Bool)

(assert (= bs!845 d!3473))

(assert (=> bs!845 m!12719))

(declare-fun m!12967 () Bool)

(assert (=> bs!845 m!12967))

(assert (=> b!18291 d!3473))

(declare-fun b!18603 () Bool)

(declare-fun e!11925 () Option!65)

(assert (=> b!18603 (= e!11925 (Some!64 (_2!388 (h!1096 (toList!275 lt!4710)))))))

(declare-fun b!18605 () Bool)

(declare-fun e!11926 () Option!65)

(assert (=> b!18605 (= e!11926 (getValueByKey!59 (t!3175 (toList!275 lt!4710)) key!682))))

(declare-fun d!3475 () Bool)

(declare-fun c!1942 () Bool)

(assert (=> d!3475 (= c!1942 (and ((_ is Cons!530) (toList!275 lt!4710)) (= (_1!388 (h!1096 (toList!275 lt!4710))) key!682)))))

(assert (=> d!3475 (= (getValueByKey!59 (toList!275 lt!4710) key!682) e!11925)))

(declare-fun b!18606 () Bool)

(assert (=> b!18606 (= e!11926 None!63)))

(declare-fun b!18604 () Bool)

(assert (=> b!18604 (= e!11925 e!11926)))

(declare-fun c!1943 () Bool)

(assert (=> b!18604 (= c!1943 (and ((_ is Cons!530) (toList!275 lt!4710)) (not (= (_1!388 (h!1096 (toList!275 lt!4710))) key!682))))))

(assert (= (and d!3475 c!1942) b!18603))

(assert (= (and d!3475 (not c!1942)) b!18604))

(assert (= (and b!18604 c!1943) b!18605))

(assert (= (and b!18604 (not c!1943)) b!18606))

(declare-fun m!12969 () Bool)

(assert (=> b!18605 m!12969))

(assert (=> b!18291 d!3475))

(assert (=> bm!710 d!3461))

(declare-fun d!3477 () Bool)

(declare-fun e!11929 () Bool)

(assert (=> d!3477 e!11929))

(declare-fun res!12889 () Bool)

(assert (=> d!3477 (=> (not res!12889) (not e!11929))))

(declare-fun lt!4987 () SeekEntryResult!48)

(assert (=> d!3477 (= res!12889 ((_ is Found!48) lt!4987))))

(assert (=> d!3477 (= lt!4987 (seekEntryOrOpen!0 key!682 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!4988 () Unit!354)

(declare-fun choose!192 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 (_ BitVec 64) Int) Unit!354)

(assert (=> d!3477 (= lt!4988 (choose!192 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(assert (=> d!3477 (validMask!0 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))))))

(assert (=> d!3477 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!2 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) lt!4988)))

(declare-fun b!18611 () Bool)

(declare-fun res!12888 () Bool)

(assert (=> b!18611 (=> (not res!12888) (not e!11929))))

(assert (=> b!18611 (= res!12888 (inRange!0 (index!2312 lt!4987) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18612 () Bool)

(assert (=> b!18612 (= e!11929 (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4987)) key!682))))

(assert (=> b!18612 (and (bvsge (index!2312 lt!4987) #b00000000000000000000000000000000) (bvslt (index!2312 lt!4987) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(assert (= (and d!3477 res!12889) b!18611))

(assert (= (and b!18611 res!12888) b!18612))

(assert (=> d!3477 m!12783))

(declare-fun m!12971 () Bool)

(assert (=> d!3477 m!12971))

(assert (=> d!3477 m!12855))

(declare-fun m!12973 () Bool)

(assert (=> b!18611 m!12973))

(declare-fun m!12975 () Bool)

(assert (=> b!18612 m!12975))

(assert (=> bm!692 d!3477))

(declare-fun d!3479 () Bool)

(assert (=> d!3479 (= (map!357 (v!1473 (underlying!62 lt!4709))) (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 lt!4709))) (_values!1659 (v!1473 (underlying!62 lt!4709))) (mask!4595 (v!1473 (underlying!62 lt!4709))) (extraKeys!1575 (v!1473 (underlying!62 lt!4709))) (zeroValue!1598 (v!1473 (underlying!62 lt!4709))) (minValue!1598 (v!1473 (underlying!62 lt!4709))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 lt!4709)))))))

(declare-fun bs!846 () Bool)

(assert (= bs!846 d!3479))

(declare-fun m!12977 () Bool)

(assert (=> bs!846 m!12977))

(assert (=> d!3423 d!3479))

(declare-fun d!3481 () Bool)

(assert (=> d!3481 (= (+!36 (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 v!259)) (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4805 v!259 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!4991 () Unit!354)

(declare-fun choose!193 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 V!1045 Int) Unit!354)

(assert (=> d!3481 (= lt!4991 (choose!193 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4805 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(assert (=> d!3481 (validMask!0 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))))))

(assert (=> d!3481 (= (lemmaChangeZeroKeyThenAddPairToListMap!2 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4805 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) lt!4991)))

(declare-fun bs!847 () Bool)

(assert (= bs!847 d!3481))

(declare-fun m!12979 () Bool)

(assert (=> bs!847 m!12979))

(declare-fun m!12981 () Bool)

(assert (=> bs!847 m!12981))

(assert (=> bs!847 m!12979))

(declare-fun m!12983 () Bool)

(assert (=> bs!847 m!12983))

(declare-fun m!12985 () Bool)

(assert (=> bs!847 m!12985))

(assert (=> bs!847 m!12855))

(assert (=> b!18385 d!3481))

(assert (=> b!18293 d!3473))

(assert (=> b!18293 d!3475))

(declare-fun b!18613 () Bool)

(declare-fun e!11930 () Option!65)

(assert (=> b!18613 (= e!11930 (Some!64 (_2!388 (h!1096 (toList!275 lt!4827)))))))

(declare-fun b!18615 () Bool)

(declare-fun e!11931 () Option!65)

(assert (=> b!18615 (= e!11931 (getValueByKey!59 (t!3175 (toList!275 lt!4827)) (_1!388 (tuple2!775 key!682 v!259))))))

(declare-fun c!1944 () Bool)

(declare-fun d!3483 () Bool)

(assert (=> d!3483 (= c!1944 (and ((_ is Cons!530) (toList!275 lt!4827)) (= (_1!388 (h!1096 (toList!275 lt!4827))) (_1!388 (tuple2!775 key!682 v!259)))))))

(assert (=> d!3483 (= (getValueByKey!59 (toList!275 lt!4827) (_1!388 (tuple2!775 key!682 v!259))) e!11930)))

(declare-fun b!18616 () Bool)

(assert (=> b!18616 (= e!11931 None!63)))

(declare-fun b!18614 () Bool)

(assert (=> b!18614 (= e!11930 e!11931)))

(declare-fun c!1945 () Bool)

(assert (=> b!18614 (= c!1945 (and ((_ is Cons!530) (toList!275 lt!4827)) (not (= (_1!388 (h!1096 (toList!275 lt!4827))) (_1!388 (tuple2!775 key!682 v!259))))))))

(assert (= (and d!3483 c!1944) b!18613))

(assert (= (and d!3483 (not c!1944)) b!18614))

(assert (= (and b!18614 c!1945) b!18615))

(assert (= (and b!18614 (not c!1945)) b!18616))

(declare-fun m!12987 () Bool)

(assert (=> b!18615 m!12987))

(assert (=> b!18412 d!3483))

(declare-fun d!3485 () Bool)

(declare-fun lt!5000 () SeekEntryResult!48)

(assert (=> d!3485 (and (or ((_ is Undefined!48) lt!5000) (not ((_ is Found!48) lt!5000)) (and (bvsge (index!2312 lt!5000) #b00000000000000000000000000000000) (bvslt (index!2312 lt!5000) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))) (or ((_ is Undefined!48) lt!5000) ((_ is Found!48) lt!5000) (not ((_ is MissingZero!48) lt!5000)) (and (bvsge (index!2311 lt!5000) #b00000000000000000000000000000000) (bvslt (index!2311 lt!5000) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))) (or ((_ is Undefined!48) lt!5000) ((_ is Found!48) lt!5000) ((_ is MissingZero!48) lt!5000) (not ((_ is MissingVacant!48) lt!5000)) (and (bvsge (index!2314 lt!5000) #b00000000000000000000000000000000) (bvslt (index!2314 lt!5000) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))) (or ((_ is Undefined!48) lt!5000) (ite ((_ is Found!48) lt!5000) (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!5000)) key!682) (ite ((_ is MissingZero!48) lt!5000) (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2311 lt!5000)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!48) lt!5000) (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2314 lt!5000)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!11938 () SeekEntryResult!48)

(assert (=> d!3485 (= lt!5000 e!11938)))

(declare-fun c!1954 () Bool)

(declare-fun lt!4998 () SeekEntryResult!48)

(assert (=> d!3485 (= c!1954 (and ((_ is Intermediate!48) lt!4998) (undefined!860 lt!4998)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!1029 (_ BitVec 32)) SeekEntryResult!48)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!3485 (= lt!4998 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!682 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))) key!682 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(assert (=> d!3485 (validMask!0 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))))))

(assert (=> d!3485 (= (seekEntryOrOpen!0 key!682 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))) lt!5000)))

(declare-fun b!18629 () Bool)

(declare-fun e!11939 () SeekEntryResult!48)

(assert (=> b!18629 (= e!11939 (Found!48 (index!2313 lt!4998)))))

(declare-fun b!18630 () Bool)

(assert (=> b!18630 (= e!11938 e!11939)))

(declare-fun lt!4999 () (_ BitVec 64))

(assert (=> b!18630 (= lt!4999 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2313 lt!4998)))))

(declare-fun c!1952 () Bool)

(assert (=> b!18630 (= c!1952 (= lt!4999 key!682))))

(declare-fun b!18631 () Bool)

(declare-fun e!11940 () SeekEntryResult!48)

(assert (=> b!18631 (= e!11940 (MissingZero!48 (index!2313 lt!4998)))))

(declare-fun b!18632 () Bool)

(declare-fun c!1953 () Bool)

(assert (=> b!18632 (= c!1953 (= lt!4999 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!18632 (= e!11939 e!11940)))

(declare-fun b!18633 () Bool)

(assert (=> b!18633 (= e!11938 Undefined!48)))

(declare-fun b!18634 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!1029 (_ BitVec 32)) SeekEntryResult!48)

(assert (=> b!18634 (= e!11940 (seekKeyOrZeroReturnVacant!0 (x!4493 lt!4998) (index!2313 lt!4998) (index!2313 lt!4998) key!682 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(assert (= (and d!3485 c!1954) b!18633))

(assert (= (and d!3485 (not c!1954)) b!18630))

(assert (= (and b!18630 c!1952) b!18629))

(assert (= (and b!18630 (not c!1952)) b!18632))

(assert (= (and b!18632 c!1953) b!18631))

(assert (= (and b!18632 (not c!1953)) b!18634))

(declare-fun m!12989 () Bool)

(assert (=> d!3485 m!12989))

(declare-fun m!12991 () Bool)

(assert (=> d!3485 m!12991))

(assert (=> d!3485 m!12855))

(declare-fun m!12993 () Bool)

(assert (=> d!3485 m!12993))

(declare-fun m!12995 () Bool)

(assert (=> d!3485 m!12995))

(declare-fun m!12997 () Bool)

(assert (=> d!3485 m!12997))

(assert (=> d!3485 m!12989))

(declare-fun m!12999 () Bool)

(assert (=> b!18630 m!12999))

(declare-fun m!13001 () Bool)

(assert (=> b!18634 m!13001))

(assert (=> b!18402 d!3485))

(assert (=> bm!681 d!3485))

(declare-fun d!3487 () Bool)

(declare-fun res!12896 () Bool)

(declare-fun e!11943 () Bool)

(assert (=> d!3487 (=> (not res!12896) (not e!11943))))

(declare-fun simpleValid!8 (LongMapFixedSize!102) Bool)

(assert (=> d!3487 (= res!12896 (simpleValid!8 (_2!389 lt!4801)))))

(assert (=> d!3487 (= (valid!54 (_2!389 lt!4801)) e!11943)))

(declare-fun b!18641 () Bool)

(declare-fun res!12897 () Bool)

(assert (=> b!18641 (=> (not res!12897) (not e!11943))))

(assert (=> b!18641 (= res!12897 (= (arrayCountValidKeys!0 (_keys!3087 (_2!389 lt!4801)) #b00000000000000000000000000000000 (size!586 (_keys!3087 (_2!389 lt!4801)))) (_size!83 (_2!389 lt!4801))))))

(declare-fun b!18642 () Bool)

(declare-fun res!12898 () Bool)

(assert (=> b!18642 (=> (not res!12898) (not e!11943))))

(assert (=> b!18642 (= res!12898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3087 (_2!389 lt!4801)) (mask!4595 (_2!389 lt!4801))))))

(declare-fun b!18643 () Bool)

(assert (=> b!18643 (= e!11943 (arrayNoDuplicates!0 (_keys!3087 (_2!389 lt!4801)) #b00000000000000000000000000000000 Nil!533))))

(assert (= (and d!3487 res!12896) b!18641))

(assert (= (and b!18641 res!12897) b!18642))

(assert (= (and b!18642 res!12898) b!18643))

(declare-fun m!13003 () Bool)

(assert (=> d!3487 m!13003))

(declare-fun m!13005 () Bool)

(assert (=> b!18641 m!13005))

(declare-fun m!13007 () Bool)

(assert (=> b!18642 m!13007))

(declare-fun m!13009 () Bool)

(assert (=> b!18643 m!13009))

(assert (=> d!3437 d!3487))

(declare-fun d!3489 () Bool)

(declare-fun res!12899 () Bool)

(declare-fun e!11944 () Bool)

(assert (=> d!3489 (=> (not res!12899) (not e!11944))))

(assert (=> d!3489 (= res!12899 (simpleValid!8 (v!1473 (underlying!62 (_2!387 lt!4707)))))))

(assert (=> d!3489 (= (valid!54 (v!1473 (underlying!62 (_2!387 lt!4707)))) e!11944)))

(declare-fun b!18644 () Bool)

(declare-fun res!12900 () Bool)

(assert (=> b!18644 (=> (not res!12900) (not e!11944))))

(assert (=> b!18644 (= res!12900 (= (arrayCountValidKeys!0 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (_size!83 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18645 () Bool)

(declare-fun res!12901 () Bool)

(assert (=> b!18645 (=> (not res!12901) (not e!11944))))

(assert (=> b!18645 (= res!12901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18646 () Bool)

(assert (=> b!18646 (= e!11944 (arrayNoDuplicates!0 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 Nil!533))))

(assert (= (and d!3489 res!12899) b!18644))

(assert (= (and b!18644 res!12900) b!18645))

(assert (= (and b!18645 res!12901) b!18646))

(declare-fun m!13011 () Bool)

(assert (=> d!3489 m!13011))

(declare-fun m!13013 () Bool)

(assert (=> b!18644 m!13013))

(declare-fun m!13015 () Bool)

(assert (=> b!18645 m!13015))

(declare-fun m!13017 () Bool)

(assert (=> b!18646 m!13017))

(assert (=> d!3437 d!3489))

(declare-fun bm!753 () Bool)

(declare-fun call!768 () ListLongMap!519)

(declare-fun call!760 () ListLongMap!519)

(assert (=> bm!753 (= call!768 call!760)))

(declare-fun c!1965 () Bool)

(declare-fun lt!5019 () SeekEntryResult!48)

(declare-fun call!777 () Bool)

(declare-fun lt!5014 () SeekEntryResult!48)

(declare-fun c!1955 () Bool)

(declare-fun lt!5001 () SeekEntryResult!48)

(declare-fun lt!5021 () SeekEntryResult!48)

(declare-fun bm!754 () Bool)

(declare-fun c!1963 () Bool)

(declare-fun c!1959 () Bool)

(declare-fun c!1957 () Bool)

(assert (=> bm!754 (= call!777 (inRange!0 (ite c!1959 (ite c!1963 (index!2312 lt!5021) (ite c!1955 (index!2311 lt!5019) (index!2314 lt!5019))) (ite c!1965 (index!2312 lt!5001) (ite c!1957 (index!2311 lt!5014) (index!2314 lt!5014)))) (mask!4595 (ite c!1892 (_2!389 lt!4848) call!715))))))

(declare-fun b!18647 () Bool)

(declare-fun res!12914 () Bool)

(declare-fun call!766 () Bool)

(assert (=> b!18647 (= res!12914 call!766)))

(declare-fun e!11946 () Bool)

(assert (=> b!18647 (=> (not res!12914) (not e!11946))))

(declare-fun e!11957 () Bool)

(declare-fun b!18648 () Bool)

(assert (=> b!18648 (= e!11957 (= (select (arr!496 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715))) (index!2312 lt!5021)) (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!755 () Bool)

(declare-fun call!772 () Bool)

(assert (=> bm!755 (= call!772 call!777)))

(declare-fun call!769 () SeekEntryResult!48)

(declare-fun bm!756 () Bool)

(assert (=> bm!756 (= call!769 (seekEntryOrOpen!0 (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715)) (mask!4595 (ite c!1892 (_2!389 lt!4848) call!715))))))

(declare-fun b!18649 () Bool)

(declare-fun res!12915 () Bool)

(declare-fun e!11963 () Bool)

(assert (=> b!18649 (=> (not res!12915) (not e!11963))))

(declare-fun call!763 () Bool)

(assert (=> b!18649 (= res!12915 call!763)))

(declare-fun e!11962 () Bool)

(assert (=> b!18649 (= e!11962 e!11963)))

(declare-fun b!18650 () Bool)

(declare-fun res!12913 () Bool)

(assert (=> b!18650 (= res!12913 (= (select (arr!496 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715))) (index!2314 lt!5019)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!11954 () Bool)

(assert (=> b!18650 (=> (not res!12913) (not e!11954))))

(declare-fun bm!757 () Bool)

(declare-fun call!776 () SeekEntryResult!48)

(assert (=> bm!757 (= call!776 call!769)))

(declare-fun b!18651 () Bool)

(declare-fun e!11947 () Unit!354)

(declare-fun lt!5025 () Unit!354)

(assert (=> b!18651 (= e!11947 lt!5025)))

(declare-fun call!756 () Unit!354)

(assert (=> b!18651 (= lt!5025 call!756)))

(declare-fun call!757 () SeekEntryResult!48)

(assert (=> b!18651 (= lt!5019 call!757)))

(assert (=> b!18651 (= c!1955 ((_ is MissingZero!48) lt!5019))))

(assert (=> b!18651 e!11962))

(declare-fun b!18652 () Bool)

(declare-fun e!11964 () tuple2!776)

(declare-fun lt!5016 () tuple2!776)

(assert (=> b!18652 (= e!11964 (tuple2!777 (_1!389 lt!5016) (_2!389 lt!5016)))))

(declare-fun call!779 () tuple2!776)

(assert (=> b!18652 (= lt!5016 call!779)))

(declare-fun bm!758 () Bool)

(declare-fun call!767 () Bool)

(assert (=> bm!758 (= call!767 call!766)))

(declare-fun bm!759 () Bool)

(declare-fun call!761 () ListLongMap!519)

(declare-fun lt!5013 () tuple2!776)

(declare-fun c!1956 () Bool)

(assert (=> bm!759 (= call!761 (map!357 (ite c!1956 (ite c!1892 (_2!389 lt!4848) call!715) (_2!389 lt!5013))))))

(declare-fun bm!760 () Bool)

(assert (=> bm!760 (= call!757 call!769)))

(declare-fun b!18653 () Bool)

(declare-fun lt!5022 () Unit!354)

(declare-fun lt!5009 () Unit!354)

(assert (=> b!18653 (= lt!5022 lt!5009)))

(declare-fun call!770 () ListLongMap!519)

(declare-fun call!778 () ListLongMap!519)

(assert (=> b!18653 (= call!770 call!778)))

(declare-fun lt!5011 () (_ BitVec 32))

(assert (=> b!18653 (= lt!5009 (lemmaChangeLongMinValueKeyThenAddPairToListMap!2 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715)) (_values!1659 (ite c!1892 (_2!389 lt!4848) call!715)) (mask!4595 (ite c!1892 (_2!389 lt!4848) call!715)) (extraKeys!1575 (ite c!1892 (_2!389 lt!4848) call!715)) lt!5011 (zeroValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (minValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848))))) (defaultEntry!1662 (ite c!1892 (_2!389 lt!4848) call!715))))))

(assert (=> b!18653 (= lt!5011 (bvor (extraKeys!1575 (ite c!1892 (_2!389 lt!4848) call!715)) #b00000000000000000000000000000010))))

(declare-fun e!11953 () tuple2!776)

(assert (=> b!18653 (= e!11953 (tuple2!777 true (LongMapFixedSize!103 (defaultEntry!1662 (ite c!1892 (_2!389 lt!4848) call!715)) (mask!4595 (ite c!1892 (_2!389 lt!4848) call!715)) (bvor (extraKeys!1575 (ite c!1892 (_2!389 lt!4848) call!715)) #b00000000000000000000000000000010) (zeroValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848))))) (_size!83 (ite c!1892 (_2!389 lt!4848) call!715)) (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715)) (_values!1659 (ite c!1892 (_2!389 lt!4848) call!715)) (_vacant!83 (ite c!1892 (_2!389 lt!4848) call!715)))))))

(declare-fun b!18654 () Bool)

(declare-fun e!11949 () Bool)

(assert (=> b!18654 (= e!11949 ((_ is Undefined!48) lt!5019))))

(declare-fun b!18655 () Bool)

(declare-fun e!11948 () tuple2!776)

(assert (=> b!18655 (= e!11948 e!11953)))

(declare-fun c!1964 () Bool)

(assert (=> b!18655 (= c!1964 (= (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!1966 () Bool)

(declare-fun lt!5006 () SeekEntryResult!48)

(declare-fun bm!761 () Bool)

(assert (=> bm!761 (= call!779 (updateHelperNewKey!2 (ite c!1892 (_2!389 lt!4848) call!715) (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848))))) (ite c!1966 (index!2314 lt!5006) (index!2311 lt!5006))))))

(declare-fun e!11956 () Bool)

(declare-fun b!18656 () Bool)

(declare-fun call!759 () ListLongMap!519)

(assert (=> b!18656 (= e!11956 (= call!759 (+!36 call!761 (tuple2!775 (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848)))))))))))

(declare-fun b!18657 () Bool)

(declare-fun e!11952 () Unit!354)

(declare-fun Unit!368 () Unit!354)

(assert (=> b!18657 (= e!11952 Unit!368)))

(declare-fun lt!5007 () Unit!354)

(assert (=> b!18657 (= lt!5007 call!756)))

(assert (=> b!18657 (= lt!5014 call!776)))

(assert (=> b!18657 (= c!1957 ((_ is MissingZero!48) lt!5014))))

(declare-fun e!11959 () Bool)

(assert (=> b!18657 e!11959))

(declare-fun lt!5024 () Unit!354)

(assert (=> b!18657 (= lt!5024 lt!5007)))

(assert (=> b!18657 false))

(declare-fun bm!762 () Bool)

(assert (=> bm!762 (= call!778 call!760)))

(declare-fun call!771 () Bool)

(declare-fun bm!763 () Bool)

(assert (=> bm!763 (= call!771 (arrayContainsKey!0 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715)) (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000))))

(declare-fun b!18658 () Bool)

(declare-fun e!11955 () Bool)

(assert (=> b!18658 (= e!11955 ((_ is Undefined!48) lt!5014))))

(declare-fun bm!764 () Bool)

(declare-fun call!765 () Bool)

(assert (=> bm!764 (= call!765 (contains!206 call!768 (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!765 () Bool)

(declare-fun call!774 () Bool)

(assert (=> bm!765 (= call!774 call!771)))

(declare-fun b!18659 () Bool)

(declare-fun res!12906 () Bool)

(declare-fun e!11961 () Bool)

(assert (=> b!18659 (=> (not res!12906) (not e!11961))))

(assert (=> b!18659 (= res!12906 call!767)))

(assert (=> b!18659 (= e!11959 e!11961)))

(declare-fun bm!766 () Bool)

(declare-fun call!758 () ListLongMap!519)

(assert (=> bm!766 (= call!770 call!758)))

(declare-fun b!18660 () Bool)

(declare-fun e!11951 () tuple2!776)

(assert (=> b!18660 (= e!11964 e!11951)))

(declare-fun c!1961 () Bool)

(assert (=> b!18660 (= c!1961 ((_ is MissingZero!48) lt!5006))))

(declare-fun b!18661 () Bool)

(declare-fun lt!5015 () Unit!354)

(assert (=> b!18661 (= e!11952 lt!5015)))

(declare-fun call!775 () Unit!354)

(assert (=> b!18661 (= lt!5015 call!775)))

(assert (=> b!18661 (= lt!5001 call!776)))

(declare-fun res!12908 () Bool)

(assert (=> b!18661 (= res!12908 ((_ is Found!48) lt!5001))))

(assert (=> b!18661 (=> (not res!12908) (not e!11946))))

(assert (=> b!18661 e!11946))

(declare-fun bm!767 () Bool)

(assert (=> bm!767 (= call!775 (lemmaInListMapThenSeekEntryOrOpenFindsIt!2 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715)) (_values!1659 (ite c!1892 (_2!389 lt!4848) call!715)) (mask!4595 (ite c!1892 (_2!389 lt!4848) call!715)) (extraKeys!1575 (ite c!1892 (_2!389 lt!4848) call!715)) (zeroValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (minValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1662 (ite c!1892 (_2!389 lt!4848) call!715))))))

(declare-fun b!18662 () Bool)

(declare-fun lt!5002 () Unit!354)

(declare-fun lt!5010 () Unit!354)

(assert (=> b!18662 (= lt!5002 lt!5010)))

(declare-fun call!762 () ListLongMap!519)

(assert (=> b!18662 (= call!770 call!762)))

(declare-fun lt!5017 () (_ BitVec 32))

(assert (=> b!18662 (= lt!5010 (lemmaChangeZeroKeyThenAddPairToListMap!2 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715)) (_values!1659 (ite c!1892 (_2!389 lt!4848) call!715)) (mask!4595 (ite c!1892 (_2!389 lt!4848) call!715)) (extraKeys!1575 (ite c!1892 (_2!389 lt!4848) call!715)) lt!5017 (zeroValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848))))) (minValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (defaultEntry!1662 (ite c!1892 (_2!389 lt!4848) call!715))))))

(assert (=> b!18662 (= lt!5017 (bvor (extraKeys!1575 (ite c!1892 (_2!389 lt!4848) call!715)) #b00000000000000000000000000000001))))

(assert (=> b!18662 (= e!11953 (tuple2!777 true (LongMapFixedSize!103 (defaultEntry!1662 (ite c!1892 (_2!389 lt!4848) call!715)) (mask!4595 (ite c!1892 (_2!389 lt!4848) call!715)) (bvor (extraKeys!1575 (ite c!1892 (_2!389 lt!4848) call!715)) #b00000000000000000000000000000001) (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848))))) (minValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (_size!83 (ite c!1892 (_2!389 lt!4848) call!715)) (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715)) (_values!1659 (ite c!1892 (_2!389 lt!4848) call!715)) (_vacant!83 (ite c!1892 (_2!389 lt!4848) call!715)))))))

(declare-fun b!18663 () Bool)

(declare-fun lt!5008 () tuple2!776)

(assert (=> b!18663 (= lt!5008 call!779)))

(assert (=> b!18663 (= e!11951 (tuple2!777 (_1!389 lt!5008) (_2!389 lt!5008)))))

(declare-fun b!18664 () Bool)

(assert (=> b!18664 (= e!11949 e!11954)))

(declare-fun res!12909 () Bool)

(assert (=> b!18664 (= res!12909 call!763)))

(assert (=> b!18664 (=> (not res!12909) (not e!11954))))

(declare-fun b!18665 () Bool)

(declare-fun call!773 () Bool)

(assert (=> b!18665 (= e!11961 (not call!773))))

(declare-fun b!18666 () Bool)

(declare-fun e!11945 () Bool)

(assert (=> b!18666 (= e!11955 e!11945)))

(declare-fun res!12902 () Bool)

(assert (=> b!18666 (= res!12902 call!767)))

(assert (=> b!18666 (=> (not res!12902) (not e!11945))))

(declare-fun bm!768 () Bool)

(assert (=> bm!768 (= call!766 call!777)))

(declare-fun b!18667 () Bool)

(declare-fun lt!5023 () Unit!354)

(declare-fun lt!5004 () Unit!354)

(assert (=> b!18667 (= lt!5023 lt!5004)))

(declare-fun call!764 () ListLongMap!519)

(assert (=> b!18667 (contains!206 call!764 (select (arr!496 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715))) (index!2312 lt!5006)))))

(declare-fun lt!5003 () array!1027)

(assert (=> b!18667 (= lt!5004 (lemmaValidKeyInArrayIsInListMap!2 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715)) lt!5003 (mask!4595 (ite c!1892 (_2!389 lt!4848) call!715)) (extraKeys!1575 (ite c!1892 (_2!389 lt!4848) call!715)) (zeroValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (minValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (index!2312 lt!5006) (defaultEntry!1662 (ite c!1892 (_2!389 lt!4848) call!715))))))

(assert (=> b!18667 (= lt!5003 (array!1028 (store (arr!495 (_values!1659 (ite c!1892 (_2!389 lt!4848) call!715))) (index!2312 lt!5006) (ValueCellFull!258 (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848))))))) (size!585 (_values!1659 (ite c!1892 (_2!389 lt!4848) call!715)))))))

(declare-fun lt!5020 () Unit!354)

(declare-fun lt!5027 () Unit!354)

(assert (=> b!18667 (= lt!5020 lt!5027)))

(assert (=> b!18667 (= call!758 (getCurrentListMap!111 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715)) (array!1028 (store (arr!495 (_values!1659 (ite c!1892 (_2!389 lt!4848) call!715))) (index!2312 lt!5006) (ValueCellFull!258 (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848))))))) (size!585 (_values!1659 (ite c!1892 (_2!389 lt!4848) call!715)))) (mask!4595 (ite c!1892 (_2!389 lt!4848) call!715)) (extraKeys!1575 (ite c!1892 (_2!389 lt!4848) call!715)) (zeroValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (minValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) #b00000000000000000000000000000000 (defaultEntry!1662 (ite c!1892 (_2!389 lt!4848) call!715))))))

(assert (=> b!18667 (= lt!5027 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!2 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715)) (_values!1659 (ite c!1892 (_2!389 lt!4848) call!715)) (mask!4595 (ite c!1892 (_2!389 lt!4848) call!715)) (extraKeys!1575 (ite c!1892 (_2!389 lt!4848) call!715)) (zeroValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (minValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (index!2312 lt!5006) (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848))))) (defaultEntry!1662 (ite c!1892 (_2!389 lt!4848) call!715))))))

(declare-fun lt!5005 () Unit!354)

(assert (=> b!18667 (= lt!5005 e!11952)))

(assert (=> b!18667 (= c!1965 call!765)))

(assert (=> b!18667 (= e!11951 (tuple2!777 true (LongMapFixedSize!103 (defaultEntry!1662 (ite c!1892 (_2!389 lt!4848) call!715)) (mask!4595 (ite c!1892 (_2!389 lt!4848) call!715)) (extraKeys!1575 (ite c!1892 (_2!389 lt!4848) call!715)) (zeroValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (minValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (_size!83 (ite c!1892 (_2!389 lt!4848) call!715)) (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715)) (array!1028 (store (arr!495 (_values!1659 (ite c!1892 (_2!389 lt!4848) call!715))) (index!2312 lt!5006) (ValueCellFull!258 (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848))))))) (size!585 (_values!1659 (ite c!1892 (_2!389 lt!4848) call!715)))) (_vacant!83 (ite c!1892 (_2!389 lt!4848) call!715)))))))

(declare-fun d!3491 () Bool)

(declare-fun e!11958 () Bool)

(assert (=> d!3491 e!11958))

(declare-fun res!12904 () Bool)

(assert (=> d!3491 (=> (not res!12904) (not e!11958))))

(assert (=> d!3491 (= res!12904 (valid!54 (_2!389 lt!5013)))))

(assert (=> d!3491 (= lt!5013 e!11948)))

(declare-fun c!1958 () Bool)

(assert (=> d!3491 (= c!1958 (= (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvneg (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!3491 (valid!54 (ite c!1892 (_2!389 lt!4848) call!715))))

(assert (=> d!3491 (= (update!11 (ite c!1892 (_2!389 lt!4848) call!715) (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848)))))) lt!5013)))

(declare-fun b!18668 () Bool)

(declare-fun res!12907 () Bool)

(assert (=> b!18668 (=> (not res!12907) (not e!11963))))

(assert (=> b!18668 (= res!12907 (= (select (arr!496 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715))) (index!2311 lt!5019)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!769 () Bool)

(assert (=> bm!769 (= call!762 call!764)))

(declare-fun b!18669 () Bool)

(assert (=> b!18669 (= e!11946 (= (select (arr!496 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715))) (index!2312 lt!5001)) (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!18670 () Bool)

(declare-fun e!11960 () Bool)

(assert (=> b!18670 (= e!11960 e!11956)))

(declare-fun res!12912 () Bool)

(assert (=> b!18670 (= res!12912 (contains!206 call!759 (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!18670 (=> (not res!12912) (not e!11956))))

(declare-fun b!18671 () Bool)

(assert (=> b!18671 (= e!11958 e!11960)))

(assert (=> b!18671 (= c!1956 (_1!389 lt!5013))))

(declare-fun bm!770 () Bool)

(assert (=> bm!770 (= call!756 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!2 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715)) (_values!1659 (ite c!1892 (_2!389 lt!4848) call!715)) (mask!4595 (ite c!1892 (_2!389 lt!4848) call!715)) (extraKeys!1575 (ite c!1892 (_2!389 lt!4848) call!715)) (zeroValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (minValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1662 (ite c!1892 (_2!389 lt!4848) call!715))))))

(declare-fun b!18672 () Bool)

(declare-fun res!12903 () Bool)

(assert (=> b!18672 (=> (not res!12903) (not e!11961))))

(assert (=> b!18672 (= res!12903 (= (select (arr!496 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715))) (index!2311 lt!5014)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!18673 () Bool)

(assert (=> b!18673 (= e!11960 (= call!761 call!759))))

(declare-fun bm!771 () Bool)

(assert (=> bm!771 (= call!759 (map!357 (ite c!1956 (_2!389 lt!5013) (ite c!1892 (_2!389 lt!4848) call!715))))))

(declare-fun b!18674 () Bool)

(assert (=> b!18674 (= e!11963 (not call!774))))

(declare-fun b!18675 () Bool)

(assert (=> b!18675 (= e!11945 (not call!773))))

(declare-fun b!18676 () Bool)

(declare-fun c!1962 () Bool)

(assert (=> b!18676 (= c!1962 ((_ is MissingVacant!48) lt!5014))))

(assert (=> b!18676 (= e!11959 e!11955)))

(declare-fun b!18677 () Bool)

(assert (=> b!18677 (= c!1966 ((_ is MissingVacant!48) lt!5006))))

(declare-fun e!11950 () tuple2!776)

(assert (=> b!18677 (= e!11950 e!11964)))

(declare-fun b!18678 () Bool)

(declare-fun c!1960 () Bool)

(assert (=> b!18678 (= c!1960 ((_ is MissingVacant!48) lt!5019))))

(assert (=> b!18678 (= e!11962 e!11949)))

(declare-fun b!18679 () Bool)

(assert (=> b!18679 (= e!11948 e!11950)))

(assert (=> b!18679 (= lt!5006 (seekEntryOrOpen!0 (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715)) (mask!4595 (ite c!1892 (_2!389 lt!4848) call!715))))))

(assert (=> b!18679 (= c!1959 ((_ is Undefined!48) lt!5006))))

(declare-fun bm!772 () Bool)

(assert (=> bm!772 (= call!760 (getCurrentListMap!111 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715)) (_values!1659 (ite c!1892 (_2!389 lt!4848) call!715)) (mask!4595 (ite c!1892 (_2!389 lt!4848) call!715)) (ite c!1958 (ite c!1964 (extraKeys!1575 (ite c!1892 (_2!389 lt!4848) call!715)) lt!5011) (extraKeys!1575 (ite c!1892 (_2!389 lt!4848) call!715))) (zeroValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (ite c!1958 (ite c!1964 (minValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848)))))) (minValue!1598 (ite c!1892 (_2!389 lt!4848) call!715))) #b00000000000000000000000000000000 (defaultEntry!1662 (ite c!1892 (_2!389 lt!4848) call!715))))))

(declare-fun b!18680 () Bool)

(declare-fun res!12905 () Bool)

(assert (=> b!18680 (= res!12905 (= (select (arr!496 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715))) (index!2314 lt!5014)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!18680 (=> (not res!12905) (not e!11945))))

(declare-fun bm!773 () Bool)

(assert (=> bm!773 (= call!758 (+!36 (ite c!1958 (ite c!1964 call!778 call!762) call!768) (ite c!1958 (ite c!1964 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848)))))) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848))))))) (tuple2!775 (ite c!1892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1894 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848)))))))))))

(declare-fun b!18681 () Bool)

(declare-fun lt!5026 () Unit!354)

(assert (=> b!18681 (= lt!5026 e!11947)))

(assert (=> b!18681 (= c!1963 call!765)))

(assert (=> b!18681 (= e!11950 (tuple2!777 false (ite c!1892 (_2!389 lt!4848) call!715)))))

(declare-fun bm!774 () Bool)

(assert (=> bm!774 (= call!773 call!771)))

(declare-fun bm!775 () Bool)

(assert (=> bm!775 (= call!764 (getCurrentListMap!111 (_keys!3087 (ite c!1892 (_2!389 lt!4848) call!715)) (ite c!1958 (_values!1659 (ite c!1892 (_2!389 lt!4848) call!715)) lt!5003) (mask!4595 (ite c!1892 (_2!389 lt!4848) call!715)) (ite (and c!1958 c!1964) lt!5017 (extraKeys!1575 (ite c!1892 (_2!389 lt!4848) call!715))) (ite (and c!1958 c!1964) (ite c!1892 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (ite c!1894 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848))))) (zeroValue!1598 (ite c!1892 (_2!389 lt!4848) call!715))) (minValue!1598 (ite c!1892 (_2!389 lt!4848) call!715)) #b00000000000000000000000000000000 (defaultEntry!1662 (ite c!1892 (_2!389 lt!4848) call!715))))))

(declare-fun b!18682 () Bool)

(assert (=> b!18682 (= e!11954 (not call!774))))

(declare-fun b!18683 () Bool)

(declare-fun res!12910 () Bool)

(assert (=> b!18683 (= res!12910 call!772)))

(assert (=> b!18683 (=> (not res!12910) (not e!11957))))

(declare-fun bm!776 () Bool)

(assert (=> bm!776 (= call!763 call!772)))

(declare-fun b!18684 () Bool)

(declare-fun Unit!369 () Unit!354)

(assert (=> b!18684 (= e!11947 Unit!369)))

(declare-fun lt!5012 () Unit!354)

(assert (=> b!18684 (= lt!5012 call!775)))

(assert (=> b!18684 (= lt!5021 call!757)))

(declare-fun res!12911 () Bool)

(assert (=> b!18684 (= res!12911 ((_ is Found!48) lt!5021))))

(assert (=> b!18684 (=> (not res!12911) (not e!11957))))

(assert (=> b!18684 e!11957))

(declare-fun lt!5018 () Unit!354)

(assert (=> b!18684 (= lt!5018 lt!5012)))

(assert (=> b!18684 false))

(assert (= (and d!3491 c!1958) b!18655))

(assert (= (and d!3491 (not c!1958)) b!18679))

(assert (= (and b!18655 c!1964) b!18662))

(assert (= (and b!18655 (not c!1964)) b!18653))

(assert (= (or b!18662 b!18653) bm!762))

(assert (= (or b!18662 b!18653) bm!769))

(assert (= (or b!18662 b!18653) bm!766))

(assert (= (and b!18679 c!1959) b!18681))

(assert (= (and b!18679 (not c!1959)) b!18677))

(assert (= (and b!18681 c!1963) b!18684))

(assert (= (and b!18681 (not c!1963)) b!18651))

(assert (= (and b!18684 res!12911) b!18683))

(assert (= (and b!18683 res!12910) b!18648))

(assert (= (and b!18651 c!1955) b!18649))

(assert (= (and b!18651 (not c!1955)) b!18678))

(assert (= (and b!18649 res!12915) b!18668))

(assert (= (and b!18668 res!12907) b!18674))

(assert (= (and b!18678 c!1960) b!18664))

(assert (= (and b!18678 (not c!1960)) b!18654))

(assert (= (and b!18664 res!12909) b!18650))

(assert (= (and b!18650 res!12913) b!18682))

(assert (= (or b!18649 b!18664) bm!776))

(assert (= (or b!18674 b!18682) bm!765))

(assert (= (or b!18683 bm!776) bm!755))

(assert (= (or b!18684 b!18651) bm!760))

(assert (= (and b!18677 c!1966) b!18652))

(assert (= (and b!18677 (not c!1966)) b!18660))

(assert (= (and b!18660 c!1961) b!18663))

(assert (= (and b!18660 (not c!1961)) b!18667))

(assert (= (and b!18667 c!1965) b!18661))

(assert (= (and b!18667 (not c!1965)) b!18657))

(assert (= (and b!18661 res!12908) b!18647))

(assert (= (and b!18647 res!12914) b!18669))

(assert (= (and b!18657 c!1957) b!18659))

(assert (= (and b!18657 (not c!1957)) b!18676))

(assert (= (and b!18659 res!12906) b!18672))

(assert (= (and b!18672 res!12903) b!18665))

(assert (= (and b!18676 c!1962) b!18666))

(assert (= (and b!18676 (not c!1962)) b!18658))

(assert (= (and b!18666 res!12902) b!18680))

(assert (= (and b!18680 res!12905) b!18675))

(assert (= (or b!18659 b!18666) bm!758))

(assert (= (or b!18665 b!18675) bm!774))

(assert (= (or b!18647 bm!758) bm!768))

(assert (= (or b!18661 b!18657) bm!757))

(assert (= (or b!18652 b!18663) bm!761))

(assert (= (or b!18651 b!18657) bm!770))

(assert (= (or bm!755 bm!768) bm!754))

(assert (= (or bm!765 bm!774) bm!763))

(assert (= (or b!18684 b!18661) bm!767))

(assert (= (or b!18681 b!18667) bm!753))

(assert (= (or bm!760 bm!757) bm!756))

(assert (= (or b!18681 b!18667) bm!764))

(assert (= (or bm!766 b!18667) bm!773))

(assert (= (or bm!762 bm!753) bm!772))

(assert (= (or bm!769 b!18667) bm!775))

(assert (= (and d!3491 res!12904) b!18671))

(assert (= (and b!18671 c!1956) b!18670))

(assert (= (and b!18671 (not c!1956)) b!18673))

(assert (= (and b!18670 res!12912) b!18656))

(assert (= (or b!18670 b!18656 b!18673) bm!771))

(assert (= (or b!18656 b!18673) bm!759))

(declare-fun m!13019 () Bool)

(assert (=> bm!759 m!13019))

(declare-fun m!13021 () Bool)

(assert (=> b!18648 m!13021))

(declare-fun m!13023 () Bool)

(assert (=> b!18672 m!13023))

(declare-fun m!13025 () Bool)

(assert (=> bm!767 m!13025))

(declare-fun m!13027 () Bool)

(assert (=> b!18656 m!13027))

(declare-fun m!13029 () Bool)

(assert (=> b!18669 m!13029))

(declare-fun m!13031 () Bool)

(assert (=> bm!763 m!13031))

(declare-fun m!13033 () Bool)

(assert (=> b!18662 m!13033))

(declare-fun m!13035 () Bool)

(assert (=> d!3491 m!13035))

(declare-fun m!13037 () Bool)

(assert (=> d!3491 m!13037))

(declare-fun m!13039 () Bool)

(assert (=> bm!771 m!13039))

(declare-fun m!13041 () Bool)

(assert (=> b!18653 m!13041))

(declare-fun m!13043 () Bool)

(assert (=> b!18680 m!13043))

(declare-fun m!13045 () Bool)

(assert (=> b!18650 m!13045))

(declare-fun m!13047 () Bool)

(assert (=> bm!761 m!13047))

(declare-fun m!13049 () Bool)

(assert (=> bm!754 m!13049))

(declare-fun m!13051 () Bool)

(assert (=> b!18667 m!13051))

(declare-fun m!13053 () Bool)

(assert (=> b!18667 m!13053))

(declare-fun m!13055 () Bool)

(assert (=> b!18667 m!13055))

(assert (=> b!18667 m!13051))

(declare-fun m!13057 () Bool)

(assert (=> b!18667 m!13057))

(declare-fun m!13059 () Bool)

(assert (=> b!18667 m!13059))

(declare-fun m!13061 () Bool)

(assert (=> b!18667 m!13061))

(declare-fun m!13063 () Bool)

(assert (=> b!18668 m!13063))

(declare-fun m!13065 () Bool)

(assert (=> bm!772 m!13065))

(declare-fun m!13067 () Bool)

(assert (=> bm!775 m!13067))

(declare-fun m!13069 () Bool)

(assert (=> bm!773 m!13069))

(declare-fun m!13071 () Bool)

(assert (=> bm!770 m!13071))

(declare-fun m!13073 () Bool)

(assert (=> bm!764 m!13073))

(declare-fun m!13075 () Bool)

(assert (=> b!18670 m!13075))

(declare-fun m!13077 () Bool)

(assert (=> bm!756 m!13077))

(assert (=> b!18679 m!13077))

(assert (=> bm!711 d!3491))

(declare-fun d!3493 () Bool)

(assert (=> d!3493 (= (map!357 (ite c!1872 (v!1473 (underlying!62 (_2!387 lt!4707))) (_2!389 lt!4801))) (getCurrentListMap!111 (_keys!3087 (ite c!1872 (v!1473 (underlying!62 (_2!387 lt!4707))) (_2!389 lt!4801))) (_values!1659 (ite c!1872 (v!1473 (underlying!62 (_2!387 lt!4707))) (_2!389 lt!4801))) (mask!4595 (ite c!1872 (v!1473 (underlying!62 (_2!387 lt!4707))) (_2!389 lt!4801))) (extraKeys!1575 (ite c!1872 (v!1473 (underlying!62 (_2!387 lt!4707))) (_2!389 lt!4801))) (zeroValue!1598 (ite c!1872 (v!1473 (underlying!62 (_2!387 lt!4707))) (_2!389 lt!4801))) (minValue!1598 (ite c!1872 (v!1473 (underlying!62 (_2!387 lt!4707))) (_2!389 lt!4801))) #b00000000000000000000000000000000 (defaultEntry!1662 (ite c!1872 (v!1473 (underlying!62 (_2!387 lt!4707))) (_2!389 lt!4801)))))))

(declare-fun bs!848 () Bool)

(assert (= bs!848 d!3493))

(declare-fun m!13079 () Bool)

(assert (=> bs!848 m!13079))

(assert (=> bm!684 d!3493))

(declare-fun d!3495 () Bool)

(declare-fun e!11965 () Bool)

(assert (=> d!3495 e!11965))

(declare-fun res!12917 () Bool)

(assert (=> d!3495 (=> (not res!12917) (not e!11965))))

(declare-fun lt!5031 () ListLongMap!519)

(assert (=> d!3495 (= res!12917 (contains!206 lt!5031 (_1!388 (ite c!1874 (ite c!1880 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 v!259) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 v!259)) (tuple2!775 key!682 v!259)))))))

(declare-fun lt!5030 () List!534)

(assert (=> d!3495 (= lt!5031 (ListLongMap!520 lt!5030))))

(declare-fun lt!5028 () Unit!354)

(declare-fun lt!5029 () Unit!354)

(assert (=> d!3495 (= lt!5028 lt!5029)))

(assert (=> d!3495 (= (getValueByKey!59 lt!5030 (_1!388 (ite c!1874 (ite c!1880 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 v!259) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 v!259)) (tuple2!775 key!682 v!259)))) (Some!64 (_2!388 (ite c!1874 (ite c!1880 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 v!259) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 v!259)) (tuple2!775 key!682 v!259)))))))

(assert (=> d!3495 (= lt!5029 (lemmaContainsTupThenGetReturnValue!16 lt!5030 (_1!388 (ite c!1874 (ite c!1880 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 v!259) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 v!259)) (tuple2!775 key!682 v!259))) (_2!388 (ite c!1874 (ite c!1880 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 v!259) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 v!259)) (tuple2!775 key!682 v!259)))))))

(assert (=> d!3495 (= lt!5030 (insertStrictlySorted!16 (toList!275 (ite c!1874 (ite c!1880 call!703 call!687) call!693)) (_1!388 (ite c!1874 (ite c!1880 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 v!259) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 v!259)) (tuple2!775 key!682 v!259))) (_2!388 (ite c!1874 (ite c!1880 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 v!259) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 v!259)) (tuple2!775 key!682 v!259)))))))

(assert (=> d!3495 (= (+!36 (ite c!1874 (ite c!1880 call!703 call!687) call!693) (ite c!1874 (ite c!1880 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 v!259) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 v!259)) (tuple2!775 key!682 v!259))) lt!5031)))

(declare-fun b!18685 () Bool)

(declare-fun res!12916 () Bool)

(assert (=> b!18685 (=> (not res!12916) (not e!11965))))

(assert (=> b!18685 (= res!12916 (= (getValueByKey!59 (toList!275 lt!5031) (_1!388 (ite c!1874 (ite c!1880 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 v!259) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 v!259)) (tuple2!775 key!682 v!259)))) (Some!64 (_2!388 (ite c!1874 (ite c!1880 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 v!259) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 v!259)) (tuple2!775 key!682 v!259))))))))

(declare-fun b!18686 () Bool)

(assert (=> b!18686 (= e!11965 (contains!207 (toList!275 lt!5031) (ite c!1874 (ite c!1880 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 v!259) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 v!259)) (tuple2!775 key!682 v!259))))))

(assert (= (and d!3495 res!12917) b!18685))

(assert (= (and b!18685 res!12916) b!18686))

(declare-fun m!13081 () Bool)

(assert (=> d!3495 m!13081))

(declare-fun m!13083 () Bool)

(assert (=> d!3495 m!13083))

(declare-fun m!13085 () Bool)

(assert (=> d!3495 m!13085))

(declare-fun m!13087 () Bool)

(assert (=> d!3495 m!13087))

(declare-fun m!13089 () Bool)

(assert (=> b!18685 m!13089))

(declare-fun m!13091 () Bool)

(assert (=> b!18686 m!13091))

(assert (=> bm!698 d!3495))

(declare-fun d!3497 () Bool)

(assert (=> d!3497 (= (+!36 (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 v!259)) (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259 #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5034 () Unit!354)

(declare-fun choose!194 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 V!1045 Int) Unit!354)

(assert (=> d!3497 (= lt!5034 (choose!194 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(assert (=> d!3497 (validMask!0 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))))))

(assert (=> d!3497 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!2 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) lt!5034)))

(declare-fun bs!849 () Bool)

(assert (= bs!849 d!3497))

(declare-fun m!13093 () Bool)

(assert (=> bs!849 m!13093))

(assert (=> bs!849 m!12979))

(declare-fun m!13095 () Bool)

(assert (=> bs!849 m!13095))

(declare-fun m!13097 () Bool)

(assert (=> bs!849 m!13097))

(assert (=> bs!849 m!12855))

(assert (=> bs!849 m!12979))

(assert (=> b!18376 d!3497))

(declare-fun d!3499 () Bool)

(declare-fun lt!5037 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14 (List!534) (InoxSet tuple2!774))

(assert (=> d!3499 (= lt!5037 (select (content!14 (toList!275 lt!4827)) (tuple2!775 key!682 v!259)))))

(declare-fun e!11970 () Bool)

(assert (=> d!3499 (= lt!5037 e!11970)))

(declare-fun res!12922 () Bool)

(assert (=> d!3499 (=> (not res!12922) (not e!11970))))

(assert (=> d!3499 (= res!12922 ((_ is Cons!530) (toList!275 lt!4827)))))

(assert (=> d!3499 (= (contains!207 (toList!275 lt!4827) (tuple2!775 key!682 v!259)) lt!5037)))

(declare-fun b!18691 () Bool)

(declare-fun e!11971 () Bool)

(assert (=> b!18691 (= e!11970 e!11971)))

(declare-fun res!12923 () Bool)

(assert (=> b!18691 (=> res!12923 e!11971)))

(assert (=> b!18691 (= res!12923 (= (h!1096 (toList!275 lt!4827)) (tuple2!775 key!682 v!259)))))

(declare-fun b!18692 () Bool)

(assert (=> b!18692 (= e!11971 (contains!207 (t!3175 (toList!275 lt!4827)) (tuple2!775 key!682 v!259)))))

(assert (= (and d!3499 res!12922) b!18691))

(assert (= (and b!18691 (not res!12923)) b!18692))

(declare-fun m!13099 () Bool)

(assert (=> d!3499 m!13099))

(declare-fun m!13101 () Bool)

(assert (=> d!3499 m!13101))

(declare-fun m!13103 () Bool)

(assert (=> b!18692 m!13103))

(assert (=> b!18413 d!3499))

(declare-fun b!18735 () Bool)

(declare-fun e!12006 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!18735 (= e!12006 (validKeyInArray!0 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000)))))

(declare-fun bm!791 () Bool)

(declare-fun call!796 () Bool)

(declare-fun lt!5099 () ListLongMap!519)

(assert (=> bm!791 (= call!796 (contains!206 lt!5099 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!18736 () Bool)

(declare-fun e!11998 () Bool)

(declare-fun apply!27 (ListLongMap!519 (_ BitVec 64)) V!1045)

(declare-fun get!348 (ValueCell!258 V!1045) V!1045)

(assert (=> b!18736 (= e!11998 (= (apply!27 lt!5099 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000)) (get!348 (select (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000) (dynLambda!133 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!18736 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(assert (=> b!18736 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun b!18737 () Bool)

(declare-fun res!12949 () Bool)

(declare-fun e!12000 () Bool)

(assert (=> b!18737 (=> (not res!12949) (not e!12000))))

(declare-fun e!12002 () Bool)

(assert (=> b!18737 (= res!12949 e!12002)))

(declare-fun res!12947 () Bool)

(assert (=> b!18737 (=> res!12947 e!12002)))

(declare-fun e!11999 () Bool)

(assert (=> b!18737 (= res!12947 (not e!11999))))

(declare-fun res!12942 () Bool)

(assert (=> b!18737 (=> (not res!12942) (not e!11999))))

(assert (=> b!18737 (= res!12942 (bvslt #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun c!1980 () Bool)

(declare-fun b!18738 () Bool)

(assert (=> b!18738 (= c!1980 (and (not (= (bvand (ite c!1874 (ite c!1880 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!1874 (ite c!1880 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!12009 () ListLongMap!519)

(declare-fun e!12008 () ListLongMap!519)

(assert (=> b!18738 (= e!12009 e!12008)))

(declare-fun b!18739 () Bool)

(declare-fun e!12003 () Bool)

(declare-fun call!797 () Bool)

(assert (=> b!18739 (= e!12003 (not call!797))))

(declare-fun d!3501 () Bool)

(assert (=> d!3501 e!12000))

(declare-fun res!12950 () Bool)

(assert (=> d!3501 (=> (not res!12950) (not e!12000))))

(assert (=> d!3501 (= res!12950 (or (bvsge #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))))

(declare-fun lt!5096 () ListLongMap!519)

(assert (=> d!3501 (= lt!5099 lt!5096)))

(declare-fun lt!5095 () Unit!354)

(declare-fun e!12001 () Unit!354)

(assert (=> d!3501 (= lt!5095 e!12001)))

(declare-fun c!1983 () Bool)

(assert (=> d!3501 (= c!1983 e!12006)))

(declare-fun res!12946 () Bool)

(assert (=> d!3501 (=> (not res!12946) (not e!12006))))

(assert (=> d!3501 (= res!12946 (bvslt #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun e!12004 () ListLongMap!519)

(assert (=> d!3501 (= lt!5096 e!12004)))

(declare-fun c!1982 () Bool)

(assert (=> d!3501 (= c!1982 (and (not (= (bvand (ite c!1874 (ite c!1880 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!1874 (ite c!1880 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!3501 (validMask!0 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))))))

(assert (=> d!3501 (= (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (ite c!1880 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (ite c!1880 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) lt!5099)))

(declare-fun b!18740 () Bool)

(declare-fun Unit!370 () Unit!354)

(assert (=> b!18740 (= e!12001 Unit!370)))

(declare-fun bm!792 () Bool)

(declare-fun call!798 () ListLongMap!519)

(declare-fun call!799 () ListLongMap!519)

(assert (=> bm!792 (= call!798 call!799)))

(declare-fun b!18741 () Bool)

(declare-fun lt!5101 () Unit!354)

(assert (=> b!18741 (= e!12001 lt!5101)))

(declare-fun lt!5094 () ListLongMap!519)

(declare-fun getCurrentListMapNoExtraKeys!12 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 (_ BitVec 32) Int) ListLongMap!519)

(assert (=> b!18741 (= lt!5094 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (ite c!1880 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (ite c!1880 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5092 () (_ BitVec 64))

(assert (=> b!18741 (= lt!5092 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5093 () (_ BitVec 64))

(assert (=> b!18741 (= lt!5093 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000))))

(declare-fun lt!5102 () Unit!354)

(declare-fun addStillContains!12 (ListLongMap!519 (_ BitVec 64) V!1045 (_ BitVec 64)) Unit!354)

(assert (=> b!18741 (= lt!5102 (addStillContains!12 lt!5094 lt!5092 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!5093))))

(assert (=> b!18741 (contains!206 (+!36 lt!5094 (tuple2!775 lt!5092 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))))) lt!5093)))

(declare-fun lt!5098 () Unit!354)

(assert (=> b!18741 (= lt!5098 lt!5102)))

(declare-fun lt!5084 () ListLongMap!519)

(assert (=> b!18741 (= lt!5084 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (ite c!1880 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (ite c!1880 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5103 () (_ BitVec 64))

(assert (=> b!18741 (= lt!5103 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5091 () (_ BitVec 64))

(assert (=> b!18741 (= lt!5091 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000))))

(declare-fun lt!5085 () Unit!354)

(declare-fun addApplyDifferent!12 (ListLongMap!519 (_ BitVec 64) V!1045 (_ BitVec 64)) Unit!354)

(assert (=> b!18741 (= lt!5085 (addApplyDifferent!12 lt!5084 lt!5103 (ite c!1874 (ite c!1880 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) lt!5091))))

(assert (=> b!18741 (= (apply!27 (+!36 lt!5084 (tuple2!775 lt!5103 (ite c!1874 (ite c!1880 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))))) lt!5091) (apply!27 lt!5084 lt!5091))))

(declare-fun lt!5086 () Unit!354)

(assert (=> b!18741 (= lt!5086 lt!5085)))

(declare-fun lt!5088 () ListLongMap!519)

(assert (=> b!18741 (= lt!5088 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (ite c!1880 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (ite c!1880 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5097 () (_ BitVec 64))

(assert (=> b!18741 (= lt!5097 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5083 () (_ BitVec 64))

(assert (=> b!18741 (= lt!5083 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000))))

(declare-fun lt!5090 () Unit!354)

(assert (=> b!18741 (= lt!5090 (addApplyDifferent!12 lt!5088 lt!5097 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!5083))))

(assert (=> b!18741 (= (apply!27 (+!36 lt!5088 (tuple2!775 lt!5097 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))))) lt!5083) (apply!27 lt!5088 lt!5083))))

(declare-fun lt!5089 () Unit!354)

(assert (=> b!18741 (= lt!5089 lt!5090)))

(declare-fun lt!5087 () ListLongMap!519)

(assert (=> b!18741 (= lt!5087 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (ite c!1880 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (ite c!1880 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5082 () (_ BitVec 64))

(assert (=> b!18741 (= lt!5082 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5100 () (_ BitVec 64))

(assert (=> b!18741 (= lt!5100 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000))))

(assert (=> b!18741 (= lt!5101 (addApplyDifferent!12 lt!5087 lt!5082 (ite c!1874 (ite c!1880 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) lt!5100))))

(assert (=> b!18741 (= (apply!27 (+!36 lt!5087 (tuple2!775 lt!5082 (ite c!1874 (ite c!1880 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))))) lt!5100) (apply!27 lt!5087 lt!5100))))

(declare-fun bm!793 () Bool)

(assert (=> bm!793 (= call!797 (contains!206 lt!5099 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!18742 () Bool)

(assert (=> b!18742 (= e!12009 call!798)))

(declare-fun b!18743 () Bool)

(assert (=> b!18743 (= e!12008 call!798)))

(declare-fun bm!794 () Bool)

(declare-fun call!794 () ListLongMap!519)

(declare-fun call!800 () ListLongMap!519)

(assert (=> bm!794 (= call!794 call!800)))

(declare-fun b!18744 () Bool)

(assert (=> b!18744 (= e!12004 (+!36 call!799 (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1874 (ite c!1880 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))))))))

(declare-fun b!18745 () Bool)

(declare-fun e!12010 () Bool)

(assert (=> b!18745 (= e!12003 e!12010)))

(declare-fun res!12944 () Bool)

(assert (=> b!18745 (= res!12944 call!797)))

(assert (=> b!18745 (=> (not res!12944) (not e!12010))))

(declare-fun bm!795 () Bool)

(declare-fun call!795 () ListLongMap!519)

(assert (=> bm!795 (= call!795 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (ite c!1880 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (ite c!1880 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18746 () Bool)

(assert (=> b!18746 (= e!12002 e!11998)))

(declare-fun res!12945 () Bool)

(assert (=> b!18746 (=> (not res!12945) (not e!11998))))

(assert (=> b!18746 (= res!12945 (contains!206 lt!5099 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000)))))

(assert (=> b!18746 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun b!18747 () Bool)

(assert (=> b!18747 (= e!12008 call!794)))

(declare-fun b!18748 () Bool)

(declare-fun e!12005 () Bool)

(declare-fun e!12007 () Bool)

(assert (=> b!18748 (= e!12005 e!12007)))

(declare-fun res!12948 () Bool)

(assert (=> b!18748 (= res!12948 call!796)))

(assert (=> b!18748 (=> (not res!12948) (not e!12007))))

(declare-fun b!18749 () Bool)

(assert (=> b!18749 (= e!12010 (= (apply!27 lt!5099 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!1874 (ite c!1880 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun bm!796 () Bool)

(assert (=> bm!796 (= call!800 call!795)))

(declare-fun b!18750 () Bool)

(assert (=> b!18750 (= e!12005 (not call!796))))

(declare-fun b!18751 () Bool)

(assert (=> b!18751 (= e!12000 e!12003)))

(declare-fun c!1979 () Bool)

(assert (=> b!18751 (= c!1979 (not (= (bvand (ite c!1874 (ite c!1880 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!1981 () Bool)

(declare-fun bm!797 () Bool)

(assert (=> bm!797 (= call!799 (+!36 (ite c!1982 call!795 (ite c!1981 call!800 call!794)) (ite (or c!1982 c!1981) (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1874 (ite c!1880 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) v!259) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))))

(declare-fun b!18752 () Bool)

(assert (=> b!18752 (= e!11999 (validKeyInArray!0 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000)))))

(declare-fun b!18753 () Bool)

(assert (=> b!18753 (= e!12004 e!12009)))

(assert (=> b!18753 (= c!1981 (and (not (= (bvand (ite c!1874 (ite c!1880 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!1874 (ite c!1880 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!18754 () Bool)

(assert (=> b!18754 (= e!12007 (= (apply!27 lt!5099 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18755 () Bool)

(declare-fun res!12943 () Bool)

(assert (=> b!18755 (=> (not res!12943) (not e!12000))))

(assert (=> b!18755 (= res!12943 e!12005)))

(declare-fun c!1984 () Bool)

(assert (=> b!18755 (= c!1984 (not (= (bvand (ite c!1874 (ite c!1880 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4799) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!3501 c!1982) b!18744))

(assert (= (and d!3501 (not c!1982)) b!18753))

(assert (= (and b!18753 c!1981) b!18742))

(assert (= (and b!18753 (not c!1981)) b!18738))

(assert (= (and b!18738 c!1980) b!18743))

(assert (= (and b!18738 (not c!1980)) b!18747))

(assert (= (or b!18743 b!18747) bm!794))

(assert (= (or b!18742 bm!794) bm!796))

(assert (= (or b!18742 b!18743) bm!792))

(assert (= (or b!18744 bm!796) bm!795))

(assert (= (or b!18744 bm!792) bm!797))

(assert (= (and d!3501 res!12946) b!18735))

(assert (= (and d!3501 c!1983) b!18741))

(assert (= (and d!3501 (not c!1983)) b!18740))

(assert (= (and d!3501 res!12950) b!18737))

(assert (= (and b!18737 res!12942) b!18752))

(assert (= (and b!18737 (not res!12947)) b!18746))

(assert (= (and b!18746 res!12945) b!18736))

(assert (= (and b!18737 res!12949) b!18755))

(assert (= (and b!18755 c!1984) b!18748))

(assert (= (and b!18755 (not c!1984)) b!18750))

(assert (= (and b!18748 res!12948) b!18754))

(assert (= (or b!18748 b!18750) bm!791))

(assert (= (and b!18755 res!12943) b!18751))

(assert (= (and b!18751 c!1979) b!18745))

(assert (= (and b!18751 (not c!1979)) b!18739))

(assert (= (and b!18745 res!12944) b!18749))

(assert (= (or b!18745 b!18739) bm!793))

(declare-fun b_lambda!1455 () Bool)

(assert (=> (not b_lambda!1455) (not b!18736)))

(declare-fun t!3180 () Bool)

(declare-fun tb!631 () Bool)

(assert (=> (and b!18232 (= (defaultEntry!1662 (v!1473 (underlying!62 thiss!848))) (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) t!3180) tb!631))

(declare-fun result!1017 () Bool)

(assert (=> tb!631 (= result!1017 tp_is_empty!915)))

(assert (=> b!18736 t!3180))

(declare-fun b_and!1309 () Bool)

(assert (= b_and!1307 (and (=> t!3180 result!1017) b_and!1309)))

(declare-fun m!13105 () Bool)

(assert (=> bm!795 m!13105))

(declare-fun m!13107 () Bool)

(assert (=> b!18741 m!13107))

(declare-fun m!13109 () Bool)

(assert (=> b!18741 m!13109))

(declare-fun m!13111 () Bool)

(assert (=> b!18741 m!13111))

(declare-fun m!13113 () Bool)

(assert (=> b!18741 m!13113))

(declare-fun m!13115 () Bool)

(assert (=> b!18741 m!13115))

(declare-fun m!13117 () Bool)

(assert (=> b!18741 m!13117))

(assert (=> b!18741 m!12859))

(declare-fun m!13119 () Bool)

(assert (=> b!18741 m!13119))

(declare-fun m!13121 () Bool)

(assert (=> b!18741 m!13121))

(assert (=> b!18741 m!13121))

(declare-fun m!13123 () Bool)

(assert (=> b!18741 m!13123))

(declare-fun m!13125 () Bool)

(assert (=> b!18741 m!13125))

(declare-fun m!13127 () Bool)

(assert (=> b!18741 m!13127))

(declare-fun m!13129 () Bool)

(assert (=> b!18741 m!13129))

(assert (=> b!18741 m!13107))

(declare-fun m!13131 () Bool)

(assert (=> b!18741 m!13131))

(assert (=> b!18741 m!13109))

(assert (=> b!18741 m!13105))

(assert (=> b!18741 m!13113))

(declare-fun m!13133 () Bool)

(assert (=> b!18741 m!13133))

(declare-fun m!13135 () Bool)

(assert (=> b!18741 m!13135))

(assert (=> b!18735 m!12859))

(assert (=> b!18735 m!12859))

(declare-fun m!13137 () Bool)

(assert (=> b!18735 m!13137))

(assert (=> b!18736 m!12859))

(declare-fun m!13139 () Bool)

(assert (=> b!18736 m!13139))

(declare-fun m!13141 () Bool)

(assert (=> b!18736 m!13141))

(assert (=> b!18736 m!13139))

(assert (=> b!18736 m!13141))

(declare-fun m!13143 () Bool)

(assert (=> b!18736 m!13143))

(assert (=> b!18736 m!12859))

(declare-fun m!13145 () Bool)

(assert (=> b!18736 m!13145))

(declare-fun m!13147 () Bool)

(assert (=> b!18754 m!13147))

(assert (=> b!18752 m!12859))

(assert (=> b!18752 m!12859))

(assert (=> b!18752 m!13137))

(assert (=> d!3501 m!12855))

(declare-fun m!13149 () Bool)

(assert (=> b!18749 m!13149))

(declare-fun m!13151 () Bool)

(assert (=> bm!797 m!13151))

(assert (=> b!18746 m!12859))

(assert (=> b!18746 m!12859))

(declare-fun m!13153 () Bool)

(assert (=> b!18746 m!13153))

(declare-fun m!13155 () Bool)

(assert (=> b!18744 m!13155))

(declare-fun m!13157 () Bool)

(assert (=> bm!793 m!13157))

(declare-fun m!13159 () Bool)

(assert (=> bm!791 m!13159))

(assert (=> bm!697 d!3501))

(declare-fun b!18756 () Bool)

(declare-fun e!12019 () Bool)

(assert (=> b!18756 (= e!12019 (validKeyInArray!0 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000)))))

(declare-fun bm!798 () Bool)

(declare-fun call!803 () Bool)

(declare-fun lt!5121 () ListLongMap!519)

(assert (=> bm!798 (= call!803 (contains!206 lt!5121 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!18757 () Bool)

(declare-fun e!12011 () Bool)

(assert (=> b!18757 (= e!12011 (= (apply!27 lt!5121 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000)) (get!348 (select (arr!495 (ite c!1874 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4791)) #b00000000000000000000000000000000) (dynLambda!133 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!18757 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!585 (ite c!1874 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4791))))))

(assert (=> b!18757 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun b!18758 () Bool)

(declare-fun res!12958 () Bool)

(declare-fun e!12013 () Bool)

(assert (=> b!18758 (=> (not res!12958) (not e!12013))))

(declare-fun e!12015 () Bool)

(assert (=> b!18758 (= res!12958 e!12015)))

(declare-fun res!12956 () Bool)

(assert (=> b!18758 (=> res!12956 e!12015)))

(declare-fun e!12012 () Bool)

(assert (=> b!18758 (= res!12956 (not e!12012))))

(declare-fun res!12951 () Bool)

(assert (=> b!18758 (=> (not res!12951) (not e!12012))))

(assert (=> b!18758 (= res!12951 (bvslt #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun b!18759 () Bool)

(declare-fun c!1986 () Bool)

(assert (=> b!18759 (= c!1986 (and (not (= (bvand (ite (and c!1874 c!1880) lt!4805 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite (and c!1874 c!1880) lt!4805 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!12022 () ListLongMap!519)

(declare-fun e!12021 () ListLongMap!519)

(assert (=> b!18759 (= e!12022 e!12021)))

(declare-fun b!18760 () Bool)

(declare-fun e!12016 () Bool)

(declare-fun call!804 () Bool)

(assert (=> b!18760 (= e!12016 (not call!804))))

(declare-fun d!3503 () Bool)

(assert (=> d!3503 e!12013))

(declare-fun res!12959 () Bool)

(assert (=> d!3503 (=> (not res!12959) (not e!12013))))

(assert (=> d!3503 (= res!12959 (or (bvsge #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))))

(declare-fun lt!5118 () ListLongMap!519)

(assert (=> d!3503 (= lt!5121 lt!5118)))

(declare-fun lt!5117 () Unit!354)

(declare-fun e!12014 () Unit!354)

(assert (=> d!3503 (= lt!5117 e!12014)))

(declare-fun c!1989 () Bool)

(assert (=> d!3503 (= c!1989 e!12019)))

(declare-fun res!12955 () Bool)

(assert (=> d!3503 (=> (not res!12955) (not e!12019))))

(assert (=> d!3503 (= res!12955 (bvslt #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun e!12017 () ListLongMap!519)

(assert (=> d!3503 (= lt!5118 e!12017)))

(declare-fun c!1988 () Bool)

(assert (=> d!3503 (= c!1988 (and (not (= (bvand (ite (and c!1874 c!1880) lt!4805 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite (and c!1874 c!1880) lt!4805 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!3503 (validMask!0 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))))))

(assert (=> d!3503 (= (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4791) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite (and c!1874 c!1880) lt!4805 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite (and c!1874 c!1880) v!259 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) lt!5121)))

(declare-fun b!18761 () Bool)

(declare-fun Unit!371 () Unit!354)

(assert (=> b!18761 (= e!12014 Unit!371)))

(declare-fun bm!799 () Bool)

(declare-fun call!805 () ListLongMap!519)

(declare-fun call!806 () ListLongMap!519)

(assert (=> bm!799 (= call!805 call!806)))

(declare-fun b!18762 () Bool)

(declare-fun lt!5123 () Unit!354)

(assert (=> b!18762 (= e!12014 lt!5123)))

(declare-fun lt!5116 () ListLongMap!519)

(assert (=> b!18762 (= lt!5116 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4791) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite (and c!1874 c!1880) lt!4805 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite (and c!1874 c!1880) v!259 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5114 () (_ BitVec 64))

(assert (=> b!18762 (= lt!5114 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5115 () (_ BitVec 64))

(assert (=> b!18762 (= lt!5115 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000))))

(declare-fun lt!5124 () Unit!354)

(assert (=> b!18762 (= lt!5124 (addStillContains!12 lt!5116 lt!5114 (ite (and c!1874 c!1880) v!259 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) lt!5115))))

(assert (=> b!18762 (contains!206 (+!36 lt!5116 (tuple2!775 lt!5114 (ite (and c!1874 c!1880) v!259 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))))) lt!5115)))

(declare-fun lt!5120 () Unit!354)

(assert (=> b!18762 (= lt!5120 lt!5124)))

(declare-fun lt!5106 () ListLongMap!519)

(assert (=> b!18762 (= lt!5106 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4791) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite (and c!1874 c!1880) lt!4805 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite (and c!1874 c!1880) v!259 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5125 () (_ BitVec 64))

(assert (=> b!18762 (= lt!5125 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5113 () (_ BitVec 64))

(assert (=> b!18762 (= lt!5113 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000))))

(declare-fun lt!5107 () Unit!354)

(assert (=> b!18762 (= lt!5107 (addApplyDifferent!12 lt!5106 lt!5125 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!5113))))

(assert (=> b!18762 (= (apply!27 (+!36 lt!5106 (tuple2!775 lt!5125 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))))) lt!5113) (apply!27 lt!5106 lt!5113))))

(declare-fun lt!5108 () Unit!354)

(assert (=> b!18762 (= lt!5108 lt!5107)))

(declare-fun lt!5110 () ListLongMap!519)

(assert (=> b!18762 (= lt!5110 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4791) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite (and c!1874 c!1880) lt!4805 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite (and c!1874 c!1880) v!259 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5119 () (_ BitVec 64))

(assert (=> b!18762 (= lt!5119 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5105 () (_ BitVec 64))

(assert (=> b!18762 (= lt!5105 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000))))

(declare-fun lt!5112 () Unit!354)

(assert (=> b!18762 (= lt!5112 (addApplyDifferent!12 lt!5110 lt!5119 (ite (and c!1874 c!1880) v!259 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) lt!5105))))

(assert (=> b!18762 (= (apply!27 (+!36 lt!5110 (tuple2!775 lt!5119 (ite (and c!1874 c!1880) v!259 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))))) lt!5105) (apply!27 lt!5110 lt!5105))))

(declare-fun lt!5111 () Unit!354)

(assert (=> b!18762 (= lt!5111 lt!5112)))

(declare-fun lt!5109 () ListLongMap!519)

(assert (=> b!18762 (= lt!5109 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4791) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite (and c!1874 c!1880) lt!4805 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite (and c!1874 c!1880) v!259 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5104 () (_ BitVec 64))

(assert (=> b!18762 (= lt!5104 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5122 () (_ BitVec 64))

(assert (=> b!18762 (= lt!5122 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000))))

(assert (=> b!18762 (= lt!5123 (addApplyDifferent!12 lt!5109 lt!5104 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!5122))))

(assert (=> b!18762 (= (apply!27 (+!36 lt!5109 (tuple2!775 lt!5104 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))))) lt!5122) (apply!27 lt!5109 lt!5122))))

(declare-fun bm!800 () Bool)

(assert (=> bm!800 (= call!804 (contains!206 lt!5121 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!18763 () Bool)

(assert (=> b!18763 (= e!12022 call!805)))

(declare-fun b!18764 () Bool)

(assert (=> b!18764 (= e!12021 call!805)))

(declare-fun bm!801 () Bool)

(declare-fun call!801 () ListLongMap!519)

(declare-fun call!807 () ListLongMap!519)

(assert (=> bm!801 (= call!801 call!807)))

(declare-fun b!18765 () Bool)

(assert (=> b!18765 (= e!12017 (+!36 call!806 (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun b!18766 () Bool)

(declare-fun e!12023 () Bool)

(assert (=> b!18766 (= e!12016 e!12023)))

(declare-fun res!12953 () Bool)

(assert (=> b!18766 (= res!12953 call!804)))

(assert (=> b!18766 (=> (not res!12953) (not e!12023))))

(declare-fun bm!802 () Bool)

(declare-fun call!802 () ListLongMap!519)

(assert (=> bm!802 (= call!802 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1874 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4791) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite (and c!1874 c!1880) lt!4805 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite (and c!1874 c!1880) v!259 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18767 () Bool)

(assert (=> b!18767 (= e!12015 e!12011)))

(declare-fun res!12954 () Bool)

(assert (=> b!18767 (=> (not res!12954) (not e!12011))))

(assert (=> b!18767 (= res!12954 (contains!206 lt!5121 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000)))))

(assert (=> b!18767 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun b!18768 () Bool)

(assert (=> b!18768 (= e!12021 call!801)))

(declare-fun b!18769 () Bool)

(declare-fun e!12018 () Bool)

(declare-fun e!12020 () Bool)

(assert (=> b!18769 (= e!12018 e!12020)))

(declare-fun res!12957 () Bool)

(assert (=> b!18769 (= res!12957 call!803)))

(assert (=> b!18769 (=> (not res!12957) (not e!12020))))

(declare-fun b!18770 () Bool)

(assert (=> b!18770 (= e!12023 (= (apply!27 lt!5121 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun bm!803 () Bool)

(assert (=> bm!803 (= call!807 call!802)))

(declare-fun b!18771 () Bool)

(assert (=> b!18771 (= e!12018 (not call!803))))

(declare-fun b!18772 () Bool)

(assert (=> b!18772 (= e!12013 e!12016)))

(declare-fun c!1985 () Bool)

(assert (=> b!18772 (= c!1985 (not (= (bvand (ite (and c!1874 c!1880) lt!4805 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!804 () Bool)

(declare-fun c!1987 () Bool)

(assert (=> bm!804 (= call!806 (+!36 (ite c!1988 call!802 (ite c!1987 call!807 call!801)) (ite (or c!1988 c!1987) (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!1874 c!1880) v!259 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))))))))

(declare-fun b!18773 () Bool)

(assert (=> b!18773 (= e!12012 (validKeyInArray!0 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000)))))

(declare-fun b!18774 () Bool)

(assert (=> b!18774 (= e!12017 e!12022)))

(assert (=> b!18774 (= c!1987 (and (not (= (bvand (ite (and c!1874 c!1880) lt!4805 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite (and c!1874 c!1880) lt!4805 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!18775 () Bool)

(assert (=> b!18775 (= e!12020 (= (apply!27 lt!5121 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!1874 c!1880) v!259 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun b!18776 () Bool)

(declare-fun res!12952 () Bool)

(assert (=> b!18776 (=> (not res!12952) (not e!12013))))

(assert (=> b!18776 (= res!12952 e!12018)))

(declare-fun c!1990 () Bool)

(assert (=> b!18776 (= c!1990 (not (= (bvand (ite (and c!1874 c!1880) lt!4805 (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!3503 c!1988) b!18765))

(assert (= (and d!3503 (not c!1988)) b!18774))

(assert (= (and b!18774 c!1987) b!18763))

(assert (= (and b!18774 (not c!1987)) b!18759))

(assert (= (and b!18759 c!1986) b!18764))

(assert (= (and b!18759 (not c!1986)) b!18768))

(assert (= (or b!18764 b!18768) bm!801))

(assert (= (or b!18763 bm!801) bm!803))

(assert (= (or b!18763 b!18764) bm!799))

(assert (= (or b!18765 bm!803) bm!802))

(assert (= (or b!18765 bm!799) bm!804))

(assert (= (and d!3503 res!12955) b!18756))

(assert (= (and d!3503 c!1989) b!18762))

(assert (= (and d!3503 (not c!1989)) b!18761))

(assert (= (and d!3503 res!12959) b!18758))

(assert (= (and b!18758 res!12951) b!18773))

(assert (= (and b!18758 (not res!12956)) b!18767))

(assert (= (and b!18767 res!12954) b!18757))

(assert (= (and b!18758 res!12958) b!18776))

(assert (= (and b!18776 c!1990) b!18769))

(assert (= (and b!18776 (not c!1990)) b!18771))

(assert (= (and b!18769 res!12957) b!18775))

(assert (= (or b!18769 b!18771) bm!798))

(assert (= (and b!18776 res!12952) b!18772))

(assert (= (and b!18772 c!1985) b!18766))

(assert (= (and b!18772 (not c!1985)) b!18760))

(assert (= (and b!18766 res!12953) b!18770))

(assert (= (or b!18766 b!18760) bm!800))

(declare-fun b_lambda!1457 () Bool)

(assert (=> (not b_lambda!1457) (not b!18757)))

(assert (=> b!18757 t!3180))

(declare-fun b_and!1311 () Bool)

(assert (= b_and!1309 (and (=> t!3180 result!1017) b_and!1311)))

(declare-fun m!13161 () Bool)

(assert (=> bm!802 m!13161))

(declare-fun m!13163 () Bool)

(assert (=> b!18762 m!13163))

(declare-fun m!13165 () Bool)

(assert (=> b!18762 m!13165))

(declare-fun m!13167 () Bool)

(assert (=> b!18762 m!13167))

(declare-fun m!13169 () Bool)

(assert (=> b!18762 m!13169))

(declare-fun m!13171 () Bool)

(assert (=> b!18762 m!13171))

(declare-fun m!13173 () Bool)

(assert (=> b!18762 m!13173))

(assert (=> b!18762 m!12859))

(declare-fun m!13175 () Bool)

(assert (=> b!18762 m!13175))

(declare-fun m!13177 () Bool)

(assert (=> b!18762 m!13177))

(assert (=> b!18762 m!13177))

(declare-fun m!13179 () Bool)

(assert (=> b!18762 m!13179))

(declare-fun m!13181 () Bool)

(assert (=> b!18762 m!13181))

(declare-fun m!13183 () Bool)

(assert (=> b!18762 m!13183))

(declare-fun m!13185 () Bool)

(assert (=> b!18762 m!13185))

(assert (=> b!18762 m!13163))

(declare-fun m!13187 () Bool)

(assert (=> b!18762 m!13187))

(assert (=> b!18762 m!13165))

(assert (=> b!18762 m!13161))

(assert (=> b!18762 m!13169))

(declare-fun m!13189 () Bool)

(assert (=> b!18762 m!13189))

(declare-fun m!13191 () Bool)

(assert (=> b!18762 m!13191))

(assert (=> b!18756 m!12859))

(assert (=> b!18756 m!12859))

(assert (=> b!18756 m!13137))

(assert (=> b!18757 m!12859))

(declare-fun m!13193 () Bool)

(assert (=> b!18757 m!13193))

(assert (=> b!18757 m!13141))

(assert (=> b!18757 m!13193))

(assert (=> b!18757 m!13141))

(declare-fun m!13195 () Bool)

(assert (=> b!18757 m!13195))

(assert (=> b!18757 m!12859))

(declare-fun m!13197 () Bool)

(assert (=> b!18757 m!13197))

(declare-fun m!13199 () Bool)

(assert (=> b!18775 m!13199))

(assert (=> b!18773 m!12859))

(assert (=> b!18773 m!12859))

(assert (=> b!18773 m!13137))

(assert (=> d!3503 m!12855))

(declare-fun m!13201 () Bool)

(assert (=> b!18770 m!13201))

(declare-fun m!13203 () Bool)

(assert (=> bm!804 m!13203))

(assert (=> b!18767 m!12859))

(assert (=> b!18767 m!12859))

(declare-fun m!13205 () Bool)

(assert (=> b!18767 m!13205))

(declare-fun m!13207 () Bool)

(assert (=> b!18765 m!13207))

(declare-fun m!13209 () Bool)

(assert (=> bm!800 m!13209))

(declare-fun m!13211 () Bool)

(assert (=> bm!798 m!13211))

(assert (=> bm!700 d!3503))

(declare-fun b!18805 () Bool)

(declare-fun e!12045 () tuple2!776)

(declare-fun lt!5196 () tuple2!776)

(assert (=> b!18805 (= e!12045 (tuple2!777 (_1!389 lt!5196) (_2!389 lt!5196)))))

(declare-fun lt!5213 () ListLongMap!519)

(declare-fun call!844 () ListLongMap!519)

(assert (=> b!18805 (= lt!5213 call!844)))

(declare-fun lt!5212 () (_ BitVec 64))

(assert (=> b!18805 (= lt!5212 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5208 () Unit!354)

(declare-fun call!837 () Unit!354)

(assert (=> b!18805 (= lt!5208 call!837)))

(declare-fun call!840 () ListLongMap!519)

(declare-fun call!839 () ListLongMap!519)

(assert (=> b!18805 (= call!840 call!839)))

(declare-fun lt!5206 () Unit!354)

(assert (=> b!18805 (= lt!5206 lt!5208)))

(declare-fun lt!5195 () ListLongMap!519)

(declare-fun call!836 () ListLongMap!519)

(assert (=> b!18805 (= lt!5195 call!836)))

(declare-fun lt!5217 () (_ BitVec 64))

(assert (=> b!18805 (= lt!5217 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5193 () Unit!354)

(declare-fun call!835 () Unit!354)

(assert (=> b!18805 (= lt!5193 call!835)))

(declare-fun call!846 () ListLongMap!519)

(declare-fun call!841 () ListLongMap!519)

(assert (=> b!18805 (= call!846 call!841)))

(declare-fun lt!5207 () Unit!354)

(assert (=> b!18805 (= lt!5207 lt!5193)))

(declare-fun call!834 () tuple2!776)

(assert (=> b!18805 (= lt!5196 call!834)))

(declare-fun b!18806 () Bool)

(declare-fun e!12040 () tuple2!776)

(declare-fun lt!5204 () tuple2!776)

(assert (=> b!18806 (= e!12040 (tuple2!777 false (_2!389 lt!5204)))))

(declare-fun c!2004 () Bool)

(declare-fun bm!831 () Bool)

(declare-fun lt!5197 () (_ BitVec 64))

(declare-fun lt!5205 () ListLongMap!519)

(declare-fun lt!5214 () (_ BitVec 64))

(declare-fun lt!5200 () V!1045)

(declare-fun addCommutativeForDiffKeys!2 (ListLongMap!519 (_ BitVec 64) V!1045 (_ BitVec 64) V!1045) Unit!354)

(assert (=> bm!831 (= call!837 (addCommutativeForDiffKeys!2 (ite c!2004 lt!5213 lt!5205) lt!5214 lt!5200 (ite c!2004 lt!5212 lt!5197) (ite c!2004 (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848))))))))

(declare-fun b!18807 () Bool)

(declare-fun e!12043 () Bool)

(declare-fun lt!5210 () (_ BitVec 32))

(assert (=> b!18807 (= e!12043 (arrayContainsKey!0 (_keys!3087 (v!1473 (underlying!62 thiss!848))) lt!5214 lt!5210))))

(declare-fun b!18808 () Bool)

(declare-fun e!12044 () tuple2!776)

(assert (=> b!18808 (= e!12044 e!12040)))

(assert (=> b!18808 (= lt!5204 (update!11 (v!1473 (_2!393 lt!4855)) lt!5214 lt!5200))))

(declare-fun c!2008 () Bool)

(declare-fun lt!5220 () ListLongMap!519)

(assert (=> b!18808 (= c!2008 (contains!206 lt!5220 lt!5214))))

(declare-fun lt!5211 () Unit!354)

(declare-fun e!12047 () Unit!354)

(assert (=> b!18808 (= lt!5211 e!12047)))

(declare-fun c!2007 () Bool)

(assert (=> b!18808 (= c!2007 (_1!389 lt!5204))))

(declare-fun b!18809 () Bool)

(declare-fun e!12046 () tuple2!776)

(assert (=> b!18809 (= e!12044 e!12046)))

(declare-fun c!2006 () Bool)

(assert (=> b!18809 (= c!2006 (bvsgt (bvsub (size!586 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!18810 () Bool)

(declare-fun e!12042 () Bool)

(declare-fun lt!5216 () tuple2!776)

(assert (=> b!18810 (= e!12042 (= (map!357 (_2!389 lt!5216)) (map!357 (v!1473 (underlying!62 thiss!848)))))))

(declare-fun bm!832 () Bool)

(declare-fun call!843 () ListLongMap!519)

(declare-fun lt!5209 () (_ BitVec 64))

(assert (=> bm!832 (= call!836 (+!36 (ite c!2004 call!844 call!843) (ite c!2004 (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1598 (v!1473 (underlying!62 thiss!848)))) (tuple2!775 lt!5209 (zeroValue!1598 (v!1473 (underlying!62 thiss!848)))))))))

(declare-fun bm!833 () Bool)

(assert (=> bm!833 (= call!844 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 thiss!848))) (_values!1659 (v!1473 (underlying!62 thiss!848))) (mask!4595 (v!1473 (underlying!62 thiss!848))) (extraKeys!1575 (v!1473 (underlying!62 thiss!848))) (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848))) (bvadd (bvsub (size!586 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!1662 (v!1473 (underlying!62 thiss!848)))))))

(declare-fun d!3505 () Bool)

(declare-fun e!12041 () Bool)

(assert (=> d!3505 e!12041))

(declare-fun res!12964 () Bool)

(assert (=> d!3505 (=> res!12964 e!12041)))

(assert (=> d!3505 (= res!12964 (not (_1!389 lt!5216)))))

(assert (=> d!3505 (= lt!5216 e!12044)))

(declare-fun c!2003 () Bool)

(assert (=> d!3505 (= c!2003 (and (not (= lt!5214 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!5214 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!3505 (= lt!5220 (map!357 (v!1473 (_2!393 lt!4855))))))

(assert (=> d!3505 (= lt!5200 (get!348 (select (arr!495 (_values!1659 (v!1473 (underlying!62 thiss!848)))) (bvsub (size!586 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) #b00000000000000000000000000000001)) (dynLambda!133 (defaultEntry!1662 (v!1473 (underlying!62 thiss!848))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!3505 (= lt!5214 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) (bvsub (size!586 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) #b00000000000000000000000000000001)))))

(assert (=> d!3505 (valid!52 thiss!848)))

(assert (=> d!3505 (= (repackFrom!2 thiss!848 (v!1473 (_2!393 lt!4855)) (bvsub (size!586 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) #b00000000000000000000000000000001)) lt!5216)))

(declare-fun call!842 () ListLongMap!519)

(declare-fun lt!5198 () ListLongMap!519)

(declare-fun bm!834 () Bool)

(assert (=> bm!834 (= call!842 (+!36 (ite c!2004 lt!5195 lt!5198) (ite c!2004 (tuple2!775 lt!5217 (minValue!1598 (v!1473 (underlying!62 thiss!848)))) (tuple2!775 lt!5209 (zeroValue!1598 (v!1473 (underlying!62 thiss!848)))))))))

(declare-fun b!18811 () Bool)

(assert (=> b!18811 (= e!12043 (ite (= lt!5214 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!1575 (v!1473 (underlying!62 thiss!848))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1575 (v!1473 (underlying!62 thiss!848))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!835 () Bool)

(assert (=> bm!835 (= call!834 (repackFrom!2 thiss!848 (ite c!2003 (_2!389 lt!5204) (v!1473 (_2!393 lt!4855))) (bvsub (bvsub (size!586 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun b!18812 () Bool)

(assert (=> b!18812 false))

(declare-fun lt!5219 () Unit!354)

(declare-fun lt!5215 () Unit!354)

(assert (=> b!18812 (= lt!5219 lt!5215)))

(declare-fun lt!5190 () (_ BitVec 32))

(assert (=> b!18812 (not (arrayContainsKey!0 (_keys!3087 (v!1473 (underlying!62 thiss!848))) lt!5214 lt!5190))))

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!1029 (_ BitVec 32) (_ BitVec 64) List!536) Unit!354)

(assert (=> b!18812 (= lt!5215 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3087 (v!1473 (underlying!62 thiss!848))) lt!5190 lt!5214 (Cons!532 lt!5214 Nil!533)))))

(assert (=> b!18812 (= lt!5190 (bvadd (bvsub (size!586 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun lt!5191 () Unit!354)

(declare-fun lt!5192 () Unit!354)

(assert (=> b!18812 (= lt!5191 lt!5192)))

(assert (=> b!18812 (arrayNoDuplicates!0 (_keys!3087 (v!1473 (underlying!62 thiss!848))) (bvsub (size!586 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) #b00000000000000000000000000000001) Nil!533)))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!1029 (_ BitVec 32) (_ BitVec 32)) Unit!354)

(assert (=> b!18812 (= lt!5192 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3087 (v!1473 (underlying!62 thiss!848))) #b00000000000000000000000000000000 (bvsub (size!586 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) #b00000000000000000000000000000001)))))

(declare-fun lt!5218 () Unit!354)

(declare-fun lt!5202 () Unit!354)

(assert (=> b!18812 (= lt!5218 lt!5202)))

(assert (=> b!18812 e!12043))

(declare-fun c!2005 () Bool)

(assert (=> b!18812 (= c!2005 (and (not (= lt!5214 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!5214 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!2 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 (_ BitVec 64) (_ BitVec 32) Int) Unit!354)

(assert (=> b!18812 (= lt!5202 (lemmaListMapContainsThenArrayContainsFrom!2 (_keys!3087 (v!1473 (underlying!62 thiss!848))) (_values!1659 (v!1473 (underlying!62 thiss!848))) (mask!4595 (v!1473 (underlying!62 thiss!848))) (extraKeys!1575 (v!1473 (underlying!62 thiss!848))) (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848))) lt!5214 lt!5210 (defaultEntry!1662 (v!1473 (underlying!62 thiss!848)))))))

(assert (=> b!18812 (= lt!5210 (bvadd (bvsub (size!586 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun Unit!372 () Unit!354)

(assert (=> b!18812 (= e!12047 Unit!372)))

(declare-fun call!838 () ListLongMap!519)

(declare-fun bm!836 () Bool)

(assert (=> bm!836 (= call!838 (+!36 (ite c!2004 lt!5213 lt!5205) (ite c!2004 (tuple2!775 lt!5212 (zeroValue!1598 (v!1473 (underlying!62 thiss!848)))) (tuple2!775 lt!5214 lt!5200))))))

(declare-fun b!18813 () Bool)

(assert (=> b!18813 (= e!12045 (tuple2!777 true (_2!389 lt!5204)))))

(assert (=> b!18813 (= lt!5198 call!844)))

(assert (=> b!18813 (= lt!5209 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5221 () Unit!354)

(assert (=> b!18813 (= lt!5221 call!835)))

(assert (=> b!18813 (= call!836 call!846)))

(declare-fun lt!5201 () Unit!354)

(assert (=> b!18813 (= lt!5201 lt!5221)))

(assert (=> b!18813 (= lt!5205 call!841)))

(assert (=> b!18813 (= lt!5197 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5194 () Unit!354)

(assert (=> b!18813 (= lt!5194 call!837)))

(assert (=> b!18813 (= call!840 call!839)))

(declare-fun lt!5199 () Unit!354)

(assert (=> b!18813 (= lt!5199 lt!5194)))

(declare-fun bm!837 () Bool)

(assert (=> bm!837 (= call!841 (+!36 (ite c!2004 call!842 call!844) (ite c!2004 (tuple2!775 lt!5214 lt!5200) (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1598 (v!1473 (underlying!62 thiss!848)))))))))

(declare-fun call!845 () ListLongMap!519)

(declare-fun bm!838 () Bool)

(assert (=> bm!838 (= call!845 (+!36 (ite c!2004 lt!5195 lt!5205) (ite c!2004 (tuple2!775 lt!5214 lt!5200) (tuple2!775 lt!5197 (minValue!1598 (v!1473 (underlying!62 thiss!848)))))))))

(declare-fun b!18814 () Bool)

(declare-fun lt!5203 () tuple2!776)

(assert (=> b!18814 (= lt!5203 call!834)))

(assert (=> b!18814 (= e!12046 (tuple2!777 (_1!389 lt!5203) (_2!389 lt!5203)))))

(declare-fun b!18815 () Bool)

(assert (=> b!18815 (= e!12046 (tuple2!777 true (v!1473 (_2!393 lt!4855))))))

(declare-fun b!18816 () Bool)

(assert (=> b!18816 (= c!2004 (bvsgt (bvsub (size!586 (_keys!3087 (v!1473 (underlying!62 thiss!848)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!18816 (= e!12040 e!12045)))

(declare-fun bm!839 () Bool)

(assert (=> bm!839 (= call!840 (+!36 (ite c!2004 call!843 call!838) (ite c!2004 (tuple2!775 lt!5212 (zeroValue!1598 (v!1473 (underlying!62 thiss!848)))) (tuple2!775 lt!5197 (minValue!1598 (v!1473 (underlying!62 thiss!848)))))))))

(declare-fun b!18817 () Bool)

(declare-fun Unit!373 () Unit!354)

(assert (=> b!18817 (= e!12047 Unit!373)))

(declare-fun bm!840 () Bool)

(assert (=> bm!840 (= call!843 (+!36 (ite c!2004 lt!5213 lt!5198) (tuple2!775 lt!5214 lt!5200)))))

(declare-fun bm!841 () Bool)

(assert (=> bm!841 (= call!846 (+!36 (ite c!2004 call!845 call!842) (ite c!2004 (tuple2!775 lt!5217 (minValue!1598 (v!1473 (underlying!62 thiss!848)))) (tuple2!775 lt!5214 lt!5200))))))

(declare-fun b!18818 () Bool)

(assert (=> b!18818 (= e!12041 e!12042)))

(declare-fun res!12965 () Bool)

(assert (=> b!18818 (=> (not res!12965) (not e!12042))))

(assert (=> b!18818 (= res!12965 (valid!54 (_2!389 lt!5216)))))

(declare-fun bm!842 () Bool)

(assert (=> bm!842 (= call!835 (addCommutativeForDiffKeys!2 (ite c!2004 lt!5195 lt!5198) lt!5214 lt!5200 (ite c!2004 lt!5217 lt!5209) (ite c!2004 (minValue!1598 (v!1473 (underlying!62 thiss!848))) (zeroValue!1598 (v!1473 (underlying!62 thiss!848))))))))

(declare-fun bm!843 () Bool)

(assert (=> bm!843 (= call!839 (+!36 (ite c!2004 call!838 call!845) (tuple2!775 lt!5214 lt!5200)))))

(assert (= (and d!3505 c!2003) b!18808))

(assert (= (and d!3505 (not c!2003)) b!18809))

(assert (= (and b!18808 c!2008) b!18812))

(assert (= (and b!18808 (not c!2008)) b!18817))

(assert (= (and b!18812 c!2005) b!18807))

(assert (= (and b!18812 (not c!2005)) b!18811))

(assert (= (and b!18808 c!2007) b!18816))

(assert (= (and b!18808 (not c!2007)) b!18806))

(assert (= (and b!18816 c!2004) b!18805))

(assert (= (and b!18816 (not c!2004)) b!18813))

(assert (= (or b!18805 b!18813) bm!840))

(assert (= (or b!18805 b!18813) bm!834))

(assert (= (or b!18805 b!18813) bm!833))

(assert (= (or b!18805 b!18813) bm!831))

(assert (= (or b!18805 b!18813) bm!842))

(assert (= (or b!18805 b!18813) bm!836))

(assert (= (or b!18805 b!18813) bm!838))

(assert (= (or b!18805 b!18813) bm!832))

(assert (= (or b!18805 b!18813) bm!841))

(assert (= (or b!18805 b!18813) bm!837))

(assert (= (or b!18805 b!18813) bm!839))

(assert (= (or b!18805 b!18813) bm!843))

(assert (= (and b!18809 c!2006) b!18814))

(assert (= (and b!18809 (not c!2006)) b!18815))

(assert (= (or b!18805 b!18814) bm!835))

(assert (= (and d!3505 (not res!12964)) b!18818))

(assert (= (and b!18818 res!12965) b!18810))

(declare-fun b_lambda!1459 () Bool)

(assert (=> (not b_lambda!1459) (not d!3505)))

(assert (=> d!3505 t!3178))

(declare-fun b_and!1313 () Bool)

(assert (= b_and!1311 (and (=> t!3178 result!1013) b_and!1313)))

(declare-fun m!13213 () Bool)

(assert (=> d!3505 m!13213))

(assert (=> d!3505 m!12879))

(declare-fun m!13215 () Bool)

(assert (=> d!3505 m!13215))

(assert (=> d!3505 m!12683))

(assert (=> d!3505 m!12879))

(declare-fun m!13217 () Bool)

(assert (=> d!3505 m!13217))

(assert (=> d!3505 m!13213))

(declare-fun m!13219 () Bool)

(assert (=> d!3505 m!13219))

(declare-fun m!13221 () Bool)

(assert (=> b!18818 m!13221))

(declare-fun m!13223 () Bool)

(assert (=> b!18810 m!13223))

(assert (=> b!18810 m!12713))

(declare-fun m!13225 () Bool)

(assert (=> b!18808 m!13225))

(declare-fun m!13227 () Bool)

(assert (=> b!18808 m!13227))

(declare-fun m!13229 () Bool)

(assert (=> bm!833 m!13229))

(declare-fun m!13231 () Bool)

(assert (=> bm!840 m!13231))

(declare-fun m!13233 () Bool)

(assert (=> bm!841 m!13233))

(declare-fun m!13235 () Bool)

(assert (=> bm!839 m!13235))

(declare-fun m!13237 () Bool)

(assert (=> bm!843 m!13237))

(declare-fun m!13239 () Bool)

(assert (=> bm!834 m!13239))

(declare-fun m!13241 () Bool)

(assert (=> bm!831 m!13241))

(declare-fun m!13243 () Bool)

(assert (=> bm!832 m!13243))

(declare-fun m!13245 () Bool)

(assert (=> bm!835 m!13245))

(declare-fun m!13247 () Bool)

(assert (=> b!18807 m!13247))

(declare-fun m!13249 () Bool)

(assert (=> bm!838 m!13249))

(declare-fun m!13251 () Bool)

(assert (=> bm!837 m!13251))

(declare-fun m!13253 () Bool)

(assert (=> b!18812 m!13253))

(declare-fun m!13255 () Bool)

(assert (=> b!18812 m!13255))

(declare-fun m!13257 () Bool)

(assert (=> b!18812 m!13257))

(declare-fun m!13259 () Bool)

(assert (=> b!18812 m!13259))

(declare-fun m!13261 () Bool)

(assert (=> b!18812 m!13261))

(declare-fun m!13263 () Bool)

(assert (=> bm!842 m!13263))

(declare-fun m!13265 () Bool)

(assert (=> bm!836 m!13265))

(assert (=> b!18440 d!3505))

(declare-fun d!3507 () Bool)

(declare-fun e!12048 () Bool)

(assert (=> d!3507 e!12048))

(declare-fun res!12967 () Bool)

(assert (=> d!3507 (=> (not res!12967) (not e!12048))))

(declare-fun lt!5225 () ListLongMap!519)

(assert (=> d!3507 (= res!12967 (contains!206 lt!5225 (_1!388 (tuple2!775 key!682 v!259))))))

(declare-fun lt!5224 () List!534)

(assert (=> d!3507 (= lt!5225 (ListLongMap!520 lt!5224))))

(declare-fun lt!5222 () Unit!354)

(declare-fun lt!5223 () Unit!354)

(assert (=> d!3507 (= lt!5222 lt!5223)))

(assert (=> d!3507 (= (getValueByKey!59 lt!5224 (_1!388 (tuple2!775 key!682 v!259))) (Some!64 (_2!388 (tuple2!775 key!682 v!259))))))

(assert (=> d!3507 (= lt!5223 (lemmaContainsTupThenGetReturnValue!16 lt!5224 (_1!388 (tuple2!775 key!682 v!259)) (_2!388 (tuple2!775 key!682 v!259))))))

(assert (=> d!3507 (= lt!5224 (insertStrictlySorted!16 (toList!275 call!686) (_1!388 (tuple2!775 key!682 v!259)) (_2!388 (tuple2!775 key!682 v!259))))))

(assert (=> d!3507 (= (+!36 call!686 (tuple2!775 key!682 v!259)) lt!5225)))

(declare-fun b!18819 () Bool)

(declare-fun res!12966 () Bool)

(assert (=> b!18819 (=> (not res!12966) (not e!12048))))

(assert (=> b!18819 (= res!12966 (= (getValueByKey!59 (toList!275 lt!5225) (_1!388 (tuple2!775 key!682 v!259))) (Some!64 (_2!388 (tuple2!775 key!682 v!259)))))))

(declare-fun b!18820 () Bool)

(assert (=> b!18820 (= e!12048 (contains!207 (toList!275 lt!5225) (tuple2!775 key!682 v!259)))))

(assert (= (and d!3507 res!12967) b!18819))

(assert (= (and b!18819 res!12966) b!18820))

(declare-fun m!13267 () Bool)

(assert (=> d!3507 m!13267))

(declare-fun m!13269 () Bool)

(assert (=> d!3507 m!13269))

(declare-fun m!13271 () Bool)

(assert (=> d!3507 m!13271))

(declare-fun m!13273 () Bool)

(assert (=> d!3507 m!13273))

(declare-fun m!13275 () Bool)

(assert (=> b!18819 m!13275))

(declare-fun m!13277 () Bool)

(assert (=> b!18820 m!13277))

(assert (=> b!18379 d!3507))

(declare-fun d!3509 () Bool)

(declare-fun res!12968 () Bool)

(declare-fun e!12049 () Bool)

(assert (=> d!3509 (=> (not res!12968) (not e!12049))))

(assert (=> d!3509 (= res!12968 (simpleValid!8 (v!1473 (underlying!62 thiss!848))))))

(assert (=> d!3509 (= (valid!54 (v!1473 (underlying!62 thiss!848))) e!12049)))

(declare-fun b!18821 () Bool)

(declare-fun res!12969 () Bool)

(assert (=> b!18821 (=> (not res!12969) (not e!12049))))

(assert (=> b!18821 (= res!12969 (= (arrayCountValidKeys!0 (_keys!3087 (v!1473 (underlying!62 thiss!848))) #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 thiss!848))))) (_size!83 (v!1473 (underlying!62 thiss!848)))))))

(declare-fun b!18822 () Bool)

(declare-fun res!12970 () Bool)

(assert (=> b!18822 (=> (not res!12970) (not e!12049))))

(assert (=> b!18822 (= res!12970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3087 (v!1473 (underlying!62 thiss!848))) (mask!4595 (v!1473 (underlying!62 thiss!848)))))))

(declare-fun b!18823 () Bool)

(assert (=> b!18823 (= e!12049 (arrayNoDuplicates!0 (_keys!3087 (v!1473 (underlying!62 thiss!848))) #b00000000000000000000000000000000 Nil!533))))

(assert (= (and d!3509 res!12968) b!18821))

(assert (= (and b!18821 res!12969) b!18822))

(assert (= (and b!18822 res!12970) b!18823))

(declare-fun m!13279 () Bool)

(assert (=> d!3509 m!13279))

(declare-fun m!13281 () Bool)

(assert (=> b!18821 m!13281))

(declare-fun m!13283 () Bool)

(assert (=> b!18822 m!13283))

(declare-fun m!13285 () Bool)

(assert (=> b!18823 m!13285))

(assert (=> d!3439 d!3509))

(declare-fun d!3511 () Bool)

(declare-fun res!12971 () Bool)

(declare-fun e!12050 () Bool)

(assert (=> d!3511 (=> (not res!12971) (not e!12050))))

(assert (=> d!3511 (= res!12971 (simpleValid!8 (v!1473 (underlying!62 lt!4709))))))

(assert (=> d!3511 (= (valid!54 (v!1473 (underlying!62 lt!4709))) e!12050)))

(declare-fun b!18824 () Bool)

(declare-fun res!12972 () Bool)

(assert (=> b!18824 (=> (not res!12972) (not e!12050))))

(assert (=> b!18824 (= res!12972 (= (arrayCountValidKeys!0 (_keys!3087 (v!1473 (underlying!62 lt!4709))) #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 lt!4709))))) (_size!83 (v!1473 (underlying!62 lt!4709)))))))

(declare-fun b!18825 () Bool)

(declare-fun res!12973 () Bool)

(assert (=> b!18825 (=> (not res!12973) (not e!12050))))

(assert (=> b!18825 (= res!12973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3087 (v!1473 (underlying!62 lt!4709))) (mask!4595 (v!1473 (underlying!62 lt!4709)))))))

(declare-fun b!18826 () Bool)

(assert (=> b!18826 (= e!12050 (arrayNoDuplicates!0 (_keys!3087 (v!1473 (underlying!62 lt!4709))) #b00000000000000000000000000000000 Nil!533))))

(assert (= (and d!3511 res!12971) b!18824))

(assert (= (and b!18824 res!12972) b!18825))

(assert (= (and b!18825 res!12973) b!18826))

(declare-fun m!13287 () Bool)

(assert (=> d!3511 m!13287))

(declare-fun m!13289 () Bool)

(assert (=> b!18824 m!13289))

(declare-fun m!13291 () Bool)

(assert (=> b!18825 m!13291))

(declare-fun m!13293 () Bool)

(assert (=> b!18826 m!13293))

(assert (=> d!3435 d!3511))

(declare-fun d!3513 () Bool)

(declare-fun e!12052 () Bool)

(assert (=> d!3513 e!12052))

(declare-fun res!12974 () Bool)

(assert (=> d!3513 (=> res!12974 e!12052)))

(declare-fun lt!5229 () Bool)

(assert (=> d!3513 (= res!12974 (not lt!5229))))

(declare-fun lt!5227 () Bool)

(assert (=> d!3513 (= lt!5229 lt!5227)))

(declare-fun lt!5228 () Unit!354)

(declare-fun e!12051 () Unit!354)

(assert (=> d!3513 (= lt!5228 e!12051)))

(declare-fun c!2009 () Bool)

(assert (=> d!3513 (= c!2009 lt!5227)))

(assert (=> d!3513 (= lt!5227 (containsKey!23 (toList!275 call!689) (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794))))))

(assert (=> d!3513 (= (contains!206 call!689 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794))) lt!5229)))

(declare-fun b!18827 () Bool)

(declare-fun lt!5226 () Unit!354)

(assert (=> b!18827 (= e!12051 lt!5226)))

(assert (=> b!18827 (= lt!5226 (lemmaContainsKeyImpliesGetValueByKeyDefined!20 (toList!275 call!689) (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794))))))

(assert (=> b!18827 (isDefined!21 (getValueByKey!59 (toList!275 call!689) (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794))))))

(declare-fun b!18828 () Bool)

(declare-fun Unit!374 () Unit!354)

(assert (=> b!18828 (= e!12051 Unit!374)))

(declare-fun b!18829 () Bool)

(assert (=> b!18829 (= e!12052 (isDefined!21 (getValueByKey!59 (toList!275 call!689) (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794)))))))

(assert (= (and d!3513 c!2009) b!18827))

(assert (= (and d!3513 (not c!2009)) b!18828))

(assert (= (and d!3513 (not res!12974)) b!18829))

(assert (=> d!3513 m!12757))

(declare-fun m!13295 () Bool)

(assert (=> d!3513 m!13295))

(assert (=> b!18827 m!12757))

(declare-fun m!13297 () Bool)

(assert (=> b!18827 m!13297))

(assert (=> b!18827 m!12757))

(declare-fun m!13299 () Bool)

(assert (=> b!18827 m!13299))

(assert (=> b!18827 m!13299))

(declare-fun m!13301 () Bool)

(assert (=> b!18827 m!13301))

(assert (=> b!18829 m!12757))

(assert (=> b!18829 m!13299))

(assert (=> b!18829 m!13299))

(assert (=> b!18829 m!13301))

(assert (=> b!18390 d!3513))

(declare-fun d!3515 () Bool)

(declare-fun e!12055 () Bool)

(assert (=> d!3515 e!12055))

(declare-fun res!12977 () Bool)

(assert (=> d!3515 (=> (not res!12977) (not e!12055))))

(assert (=> d!3515 (= res!12977 (and (bvsge (index!2312 lt!4794) #b00000000000000000000000000000000) (bvslt (index!2312 lt!4794) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))))))))

(declare-fun lt!5232 () Unit!354)

(declare-fun choose!195 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 (_ BitVec 32) Int) Unit!354)

(assert (=> d!3515 (= lt!5232 (choose!195 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4791 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (index!2312 lt!4794) (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(assert (=> d!3515 (validMask!0 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))))))

(assert (=> d!3515 (= (lemmaValidKeyInArrayIsInListMap!2 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4791 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (index!2312 lt!4794) (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) lt!5232)))

(declare-fun b!18832 () Bool)

(assert (=> b!18832 (= e!12055 (contains!206 (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!4791 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794))))))

(assert (= (and d!3515 res!12977) b!18832))

(declare-fun m!13303 () Bool)

(assert (=> d!3515 m!13303))

(assert (=> d!3515 m!12855))

(declare-fun m!13305 () Bool)

(assert (=> b!18832 m!13305))

(assert (=> b!18832 m!12757))

(assert (=> b!18832 m!13305))

(assert (=> b!18832 m!12757))

(declare-fun m!13307 () Bool)

(assert (=> b!18832 m!13307))

(assert (=> b!18390 d!3515))

(declare-fun b!18833 () Bool)

(declare-fun e!12064 () Bool)

(assert (=> b!18833 (= e!12064 (validKeyInArray!0 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000)))))

(declare-fun bm!844 () Bool)

(declare-fun call!849 () Bool)

(declare-fun lt!5250 () ListLongMap!519)

(assert (=> bm!844 (= call!849 (contains!206 lt!5250 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!18834 () Bool)

(declare-fun e!12056 () Bool)

(assert (=> b!18834 (= e!12056 (= (apply!27 lt!5250 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000)) (get!348 (select (arr!495 (array!1028 (store (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794) (ValueCellFull!258 v!259)) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))))) #b00000000000000000000000000000000) (dynLambda!133 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!18834 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!585 (array!1028 (store (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794) (ValueCellFull!258 v!259)) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))))

(assert (=> b!18834 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun b!18835 () Bool)

(declare-fun res!12985 () Bool)

(declare-fun e!12058 () Bool)

(assert (=> b!18835 (=> (not res!12985) (not e!12058))))

(declare-fun e!12060 () Bool)

(assert (=> b!18835 (= res!12985 e!12060)))

(declare-fun res!12983 () Bool)

(assert (=> b!18835 (=> res!12983 e!12060)))

(declare-fun e!12057 () Bool)

(assert (=> b!18835 (= res!12983 (not e!12057))))

(declare-fun res!12978 () Bool)

(assert (=> b!18835 (=> (not res!12978) (not e!12057))))

(assert (=> b!18835 (= res!12978 (bvslt #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun b!18836 () Bool)

(declare-fun c!2011 () Bool)

(assert (=> b!18836 (= c!2011 (and (not (= (bvand (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!12067 () ListLongMap!519)

(declare-fun e!12066 () ListLongMap!519)

(assert (=> b!18836 (= e!12067 e!12066)))

(declare-fun b!18837 () Bool)

(declare-fun e!12061 () Bool)

(declare-fun call!850 () Bool)

(assert (=> b!18837 (= e!12061 (not call!850))))

(declare-fun d!3517 () Bool)

(assert (=> d!3517 e!12058))

(declare-fun res!12986 () Bool)

(assert (=> d!3517 (=> (not res!12986) (not e!12058))))

(assert (=> d!3517 (= res!12986 (or (bvsge #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))))

(declare-fun lt!5247 () ListLongMap!519)

(assert (=> d!3517 (= lt!5250 lt!5247)))

(declare-fun lt!5246 () Unit!354)

(declare-fun e!12059 () Unit!354)

(assert (=> d!3517 (= lt!5246 e!12059)))

(declare-fun c!2014 () Bool)

(assert (=> d!3517 (= c!2014 e!12064)))

(declare-fun res!12982 () Bool)

(assert (=> d!3517 (=> (not res!12982) (not e!12064))))

(assert (=> d!3517 (= res!12982 (bvslt #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun e!12062 () ListLongMap!519)

(assert (=> d!3517 (= lt!5247 e!12062)))

(declare-fun c!2013 () Bool)

(assert (=> d!3517 (= c!2013 (and (not (= (bvand (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!3517 (validMask!0 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))))))

(assert (=> d!3517 (= (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (array!1028 (store (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794) (ValueCellFull!258 v!259)) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) lt!5250)))

(declare-fun b!18838 () Bool)

(declare-fun Unit!375 () Unit!354)

(assert (=> b!18838 (= e!12059 Unit!375)))

(declare-fun bm!845 () Bool)

(declare-fun call!851 () ListLongMap!519)

(declare-fun call!852 () ListLongMap!519)

(assert (=> bm!845 (= call!851 call!852)))

(declare-fun b!18839 () Bool)

(declare-fun lt!5252 () Unit!354)

(assert (=> b!18839 (= e!12059 lt!5252)))

(declare-fun lt!5245 () ListLongMap!519)

(assert (=> b!18839 (= lt!5245 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (array!1028 (store (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794) (ValueCellFull!258 v!259)) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5243 () (_ BitVec 64))

(assert (=> b!18839 (= lt!5243 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5244 () (_ BitVec 64))

(assert (=> b!18839 (= lt!5244 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000))))

(declare-fun lt!5253 () Unit!354)

(assert (=> b!18839 (= lt!5253 (addStillContains!12 lt!5245 lt!5243 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!5244))))

(assert (=> b!18839 (contains!206 (+!36 lt!5245 (tuple2!775 lt!5243 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))))) lt!5244)))

(declare-fun lt!5249 () Unit!354)

(assert (=> b!18839 (= lt!5249 lt!5253)))

(declare-fun lt!5235 () ListLongMap!519)

(assert (=> b!18839 (= lt!5235 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (array!1028 (store (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794) (ValueCellFull!258 v!259)) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5254 () (_ BitVec 64))

(assert (=> b!18839 (= lt!5254 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5242 () (_ BitVec 64))

(assert (=> b!18839 (= lt!5242 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000))))

(declare-fun lt!5236 () Unit!354)

(assert (=> b!18839 (= lt!5236 (addApplyDifferent!12 lt!5235 lt!5254 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!5242))))

(assert (=> b!18839 (= (apply!27 (+!36 lt!5235 (tuple2!775 lt!5254 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))))) lt!5242) (apply!27 lt!5235 lt!5242))))

(declare-fun lt!5237 () Unit!354)

(assert (=> b!18839 (= lt!5237 lt!5236)))

(declare-fun lt!5239 () ListLongMap!519)

(assert (=> b!18839 (= lt!5239 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (array!1028 (store (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794) (ValueCellFull!258 v!259)) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5248 () (_ BitVec 64))

(assert (=> b!18839 (= lt!5248 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5234 () (_ BitVec 64))

(assert (=> b!18839 (= lt!5234 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000))))

(declare-fun lt!5241 () Unit!354)

(assert (=> b!18839 (= lt!5241 (addApplyDifferent!12 lt!5239 lt!5248 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!5234))))

(assert (=> b!18839 (= (apply!27 (+!36 lt!5239 (tuple2!775 lt!5248 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))))) lt!5234) (apply!27 lt!5239 lt!5234))))

(declare-fun lt!5240 () Unit!354)

(assert (=> b!18839 (= lt!5240 lt!5241)))

(declare-fun lt!5238 () ListLongMap!519)

(assert (=> b!18839 (= lt!5238 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (array!1028 (store (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794) (ValueCellFull!258 v!259)) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5233 () (_ BitVec 64))

(assert (=> b!18839 (= lt!5233 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!5251 () (_ BitVec 64))

(assert (=> b!18839 (= lt!5251 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000))))

(assert (=> b!18839 (= lt!5252 (addApplyDifferent!12 lt!5238 lt!5233 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) lt!5251))))

(assert (=> b!18839 (= (apply!27 (+!36 lt!5238 (tuple2!775 lt!5233 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))))) lt!5251) (apply!27 lt!5238 lt!5251))))

(declare-fun bm!846 () Bool)

(assert (=> bm!846 (= call!850 (contains!206 lt!5250 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!18840 () Bool)

(assert (=> b!18840 (= e!12067 call!851)))

(declare-fun b!18841 () Bool)

(assert (=> b!18841 (= e!12066 call!851)))

(declare-fun bm!847 () Bool)

(declare-fun call!847 () ListLongMap!519)

(declare-fun call!853 () ListLongMap!519)

(assert (=> bm!847 (= call!847 call!853)))

(declare-fun b!18842 () Bool)

(assert (=> b!18842 (= e!12062 (+!36 call!852 (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun b!18843 () Bool)

(declare-fun e!12068 () Bool)

(assert (=> b!18843 (= e!12061 e!12068)))

(declare-fun res!12980 () Bool)

(assert (=> b!18843 (= res!12980 call!850)))

(assert (=> b!18843 (=> (not res!12980) (not e!12068))))

(declare-fun bm!848 () Bool)

(declare-fun call!848 () ListLongMap!519)

(assert (=> bm!848 (= call!848 (getCurrentListMapNoExtraKeys!12 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (array!1028 (store (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794) (ValueCellFull!258 v!259)) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18844 () Bool)

(assert (=> b!18844 (= e!12060 e!12056)))

(declare-fun res!12981 () Bool)

(assert (=> b!18844 (=> (not res!12981) (not e!12056))))

(assert (=> b!18844 (= res!12981 (contains!206 lt!5250 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000)))))

(assert (=> b!18844 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun b!18845 () Bool)

(assert (=> b!18845 (= e!12066 call!847)))

(declare-fun b!18846 () Bool)

(declare-fun e!12063 () Bool)

(declare-fun e!12065 () Bool)

(assert (=> b!18846 (= e!12063 e!12065)))

(declare-fun res!12984 () Bool)

(assert (=> b!18846 (= res!12984 call!849)))

(assert (=> b!18846 (=> (not res!12984) (not e!12065))))

(declare-fun b!18847 () Bool)

(assert (=> b!18847 (= e!12068 (= (apply!27 lt!5250 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun bm!849 () Bool)

(assert (=> bm!849 (= call!853 call!848)))

(declare-fun b!18848 () Bool)

(assert (=> b!18848 (= e!12063 (not call!849))))

(declare-fun b!18849 () Bool)

(assert (=> b!18849 (= e!12058 e!12061)))

(declare-fun c!2010 () Bool)

(assert (=> b!18849 (= c!2010 (not (= (bvand (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!2012 () Bool)

(declare-fun bm!850 () Bool)

(assert (=> bm!850 (= call!852 (+!36 (ite c!2013 call!848 (ite c!2012 call!853 call!847)) (ite (or c!2013 c!2012) (tuple2!775 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))) (tuple2!775 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))))))))

(declare-fun b!18850 () Bool)

(assert (=> b!18850 (= e!12057 (validKeyInArray!0 (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) #b00000000000000000000000000000000)))))

(declare-fun b!18851 () Bool)

(assert (=> b!18851 (= e!12062 e!12067)))

(assert (=> b!18851 (= c!2012 (and (not (= (bvand (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!18852 () Bool)

(assert (=> b!18852 (= e!12065 (= (apply!27 lt!5250 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18853 () Bool)

(declare-fun res!12979 () Bool)

(assert (=> b!18853 (=> (not res!12979) (not e!12058))))

(assert (=> b!18853 (= res!12979 e!12063)))

(declare-fun c!2015 () Bool)

(assert (=> b!18853 (= c!2015 (not (= (bvand (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!3517 c!2013) b!18842))

(assert (= (and d!3517 (not c!2013)) b!18851))

(assert (= (and b!18851 c!2012) b!18840))

(assert (= (and b!18851 (not c!2012)) b!18836))

(assert (= (and b!18836 c!2011) b!18841))

(assert (= (and b!18836 (not c!2011)) b!18845))

(assert (= (or b!18841 b!18845) bm!847))

(assert (= (or b!18840 bm!847) bm!849))

(assert (= (or b!18840 b!18841) bm!845))

(assert (= (or b!18842 bm!849) bm!848))

(assert (= (or b!18842 bm!845) bm!850))

(assert (= (and d!3517 res!12982) b!18833))

(assert (= (and d!3517 c!2014) b!18839))

(assert (= (and d!3517 (not c!2014)) b!18838))

(assert (= (and d!3517 res!12986) b!18835))

(assert (= (and b!18835 res!12978) b!18850))

(assert (= (and b!18835 (not res!12983)) b!18844))

(assert (= (and b!18844 res!12981) b!18834))

(assert (= (and b!18835 res!12985) b!18853))

(assert (= (and b!18853 c!2015) b!18846))

(assert (= (and b!18853 (not c!2015)) b!18848))

(assert (= (and b!18846 res!12984) b!18852))

(assert (= (or b!18846 b!18848) bm!844))

(assert (= (and b!18853 res!12979) b!18849))

(assert (= (and b!18849 c!2010) b!18843))

(assert (= (and b!18849 (not c!2010)) b!18837))

(assert (= (and b!18843 res!12980) b!18847))

(assert (= (or b!18843 b!18837) bm!846))

(declare-fun b_lambda!1461 () Bool)

(assert (=> (not b_lambda!1461) (not b!18834)))

(assert (=> b!18834 t!3180))

(declare-fun b_and!1315 () Bool)

(assert (= b_and!1313 (and (=> t!3180 result!1017) b_and!1315)))

(declare-fun m!13309 () Bool)

(assert (=> bm!848 m!13309))

(declare-fun m!13311 () Bool)

(assert (=> b!18839 m!13311))

(declare-fun m!13313 () Bool)

(assert (=> b!18839 m!13313))

(declare-fun m!13315 () Bool)

(assert (=> b!18839 m!13315))

(declare-fun m!13317 () Bool)

(assert (=> b!18839 m!13317))

(declare-fun m!13319 () Bool)

(assert (=> b!18839 m!13319))

(declare-fun m!13321 () Bool)

(assert (=> b!18839 m!13321))

(assert (=> b!18839 m!12859))

(declare-fun m!13323 () Bool)

(assert (=> b!18839 m!13323))

(declare-fun m!13325 () Bool)

(assert (=> b!18839 m!13325))

(assert (=> b!18839 m!13325))

(declare-fun m!13327 () Bool)

(assert (=> b!18839 m!13327))

(declare-fun m!13329 () Bool)

(assert (=> b!18839 m!13329))

(declare-fun m!13331 () Bool)

(assert (=> b!18839 m!13331))

(declare-fun m!13333 () Bool)

(assert (=> b!18839 m!13333))

(assert (=> b!18839 m!13311))

(declare-fun m!13335 () Bool)

(assert (=> b!18839 m!13335))

(assert (=> b!18839 m!13313))

(assert (=> b!18839 m!13309))

(assert (=> b!18839 m!13317))

(declare-fun m!13337 () Bool)

(assert (=> b!18839 m!13337))

(declare-fun m!13339 () Bool)

(assert (=> b!18839 m!13339))

(assert (=> b!18833 m!12859))

(assert (=> b!18833 m!12859))

(assert (=> b!18833 m!13137))

(assert (=> b!18834 m!12859))

(declare-fun m!13341 () Bool)

(assert (=> b!18834 m!13341))

(assert (=> b!18834 m!13141))

(assert (=> b!18834 m!13341))

(assert (=> b!18834 m!13141))

(declare-fun m!13343 () Bool)

(assert (=> b!18834 m!13343))

(assert (=> b!18834 m!12859))

(declare-fun m!13345 () Bool)

(assert (=> b!18834 m!13345))

(declare-fun m!13347 () Bool)

(assert (=> b!18852 m!13347))

(assert (=> b!18850 m!12859))

(assert (=> b!18850 m!12859))

(assert (=> b!18850 m!13137))

(assert (=> d!3517 m!12855))

(declare-fun m!13349 () Bool)

(assert (=> b!18847 m!13349))

(declare-fun m!13351 () Bool)

(assert (=> bm!850 m!13351))

(assert (=> b!18844 m!12859))

(assert (=> b!18844 m!12859))

(declare-fun m!13353 () Bool)

(assert (=> b!18844 m!13353))

(declare-fun m!13355 () Bool)

(assert (=> b!18842 m!13355))

(declare-fun m!13357 () Bool)

(assert (=> bm!846 m!13357))

(declare-fun m!13359 () Bool)

(assert (=> bm!844 m!13359))

(assert (=> b!18390 d!3517))

(declare-fun d!3519 () Bool)

(declare-fun e!12071 () Bool)

(assert (=> d!3519 e!12071))

(declare-fun res!12989 () Bool)

(assert (=> d!3519 (=> (not res!12989) (not e!12071))))

(assert (=> d!3519 (= res!12989 (and (bvsge (index!2312 lt!4794) #b00000000000000000000000000000000) (bvslt (index!2312 lt!4794) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))))))))

(declare-fun lt!5257 () Unit!354)

(declare-fun choose!196 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 (_ BitVec 32) (_ BitVec 64) V!1045 Int) Unit!354)

(assert (=> d!3519 (= lt!5257 (choose!196 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (index!2312 lt!4794) key!682 v!259 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(assert (=> d!3519 (validMask!0 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))))))

(assert (=> d!3519 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!2 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (index!2312 lt!4794) key!682 v!259 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) lt!5257)))

(declare-fun b!18856 () Bool)

(assert (=> b!18856 (= e!12071 (= (+!36 (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) (tuple2!775 key!682 v!259)) (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (array!1028 (store (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!4794) (ValueCellFull!258 v!259)) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(assert (= (and d!3519 res!12989) b!18856))

(declare-fun m!13361 () Bool)

(assert (=> d!3519 m!13361))

(assert (=> d!3519 m!12855))

(assert (=> b!18856 m!12979))

(assert (=> b!18856 m!12979))

(declare-fun m!13363 () Bool)

(assert (=> b!18856 m!13363))

(assert (=> b!18856 m!12767))

(assert (=> b!18856 m!12763))

(assert (=> b!18390 d!3519))

(declare-fun d!3521 () Bool)

(declare-fun res!12994 () Bool)

(declare-fun e!12076 () Bool)

(assert (=> d!3521 (=> res!12994 e!12076)))

(assert (=> d!3521 (= res!12994 (and ((_ is Cons!530) (toList!275 lt!4710)) (= (_1!388 (h!1096 (toList!275 lt!4710))) key!682)))))

(assert (=> d!3521 (= (containsKey!23 (toList!275 lt!4710) key!682) e!12076)))

(declare-fun b!18861 () Bool)

(declare-fun e!12077 () Bool)

(assert (=> b!18861 (= e!12076 e!12077)))

(declare-fun res!12995 () Bool)

(assert (=> b!18861 (=> (not res!12995) (not e!12077))))

(assert (=> b!18861 (= res!12995 (and (or (not ((_ is Cons!530) (toList!275 lt!4710))) (bvsle (_1!388 (h!1096 (toList!275 lt!4710))) key!682)) ((_ is Cons!530) (toList!275 lt!4710)) (bvslt (_1!388 (h!1096 (toList!275 lt!4710))) key!682)))))

(declare-fun b!18862 () Bool)

(assert (=> b!18862 (= e!12077 (containsKey!23 (t!3175 (toList!275 lt!4710)) key!682))))

(assert (= (and d!3521 (not res!12994)) b!18861))

(assert (= (and b!18861 res!12995) b!18862))

(declare-fun m!13365 () Bool)

(assert (=> b!18862 m!13365))

(assert (=> d!3433 d!3521))

(declare-fun d!3523 () Bool)

(declare-fun e!12079 () Bool)

(assert (=> d!3523 e!12079))

(declare-fun res!12996 () Bool)

(assert (=> d!3523 (=> res!12996 e!12079)))

(declare-fun lt!5261 () Bool)

(assert (=> d!3523 (= res!12996 (not lt!5261))))

(declare-fun lt!5259 () Bool)

(assert (=> d!3523 (= lt!5261 lt!5259)))

(declare-fun lt!5260 () Unit!354)

(declare-fun e!12078 () Unit!354)

(assert (=> d!3523 (= lt!5260 e!12078)))

(declare-fun c!2016 () Bool)

(assert (=> d!3523 (= c!2016 lt!5259)))

(assert (=> d!3523 (= lt!5259 (containsKey!23 (toList!275 call!684) key!682))))

(assert (=> d!3523 (= (contains!206 call!684 key!682) lt!5261)))

(declare-fun b!18863 () Bool)

(declare-fun lt!5258 () Unit!354)

(assert (=> b!18863 (= e!12078 lt!5258)))

(assert (=> b!18863 (= lt!5258 (lemmaContainsKeyImpliesGetValueByKeyDefined!20 (toList!275 call!684) key!682))))

(assert (=> b!18863 (isDefined!21 (getValueByKey!59 (toList!275 call!684) key!682))))

(declare-fun b!18864 () Bool)

(declare-fun Unit!376 () Unit!354)

(assert (=> b!18864 (= e!12078 Unit!376)))

(declare-fun b!18865 () Bool)

(assert (=> b!18865 (= e!12079 (isDefined!21 (getValueByKey!59 (toList!275 call!684) key!682)))))

(assert (= (and d!3523 c!2016) b!18863))

(assert (= (and d!3523 (not c!2016)) b!18864))

(assert (= (and d!3523 (not res!12996)) b!18865))

(declare-fun m!13367 () Bool)

(assert (=> d!3523 m!13367))

(declare-fun m!13369 () Bool)

(assert (=> b!18863 m!13369))

(declare-fun m!13371 () Bool)

(assert (=> b!18863 m!13371))

(assert (=> b!18863 m!13371))

(declare-fun m!13373 () Bool)

(assert (=> b!18863 m!13373))

(assert (=> b!18865 m!13371))

(assert (=> b!18865 m!13371))

(assert (=> b!18865 m!13373))

(assert (=> b!18393 d!3523))

(declare-fun d!3525 () Bool)

(assert (=> d!3525 (= (map!357 (v!1473 (underlying!62 thiss!848))) (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 thiss!848))) (_values!1659 (v!1473 (underlying!62 thiss!848))) (mask!4595 (v!1473 (underlying!62 thiss!848))) (extraKeys!1575 (v!1473 (underlying!62 thiss!848))) (zeroValue!1598 (v!1473 (underlying!62 thiss!848))) (minValue!1598 (v!1473 (underlying!62 thiss!848))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 thiss!848)))))))

(declare-fun bs!850 () Bool)

(assert (= bs!850 d!3525))

(declare-fun m!13375 () Bool)

(assert (=> bs!850 m!13375))

(assert (=> d!3425 d!3525))

(declare-fun b!18900 () Bool)

(declare-fun e!12100 () Unit!354)

(declare-fun Unit!377 () Unit!354)

(assert (=> b!18900 (= e!12100 Unit!377)))

(declare-fun lt!5333 () Unit!354)

(assert (=> b!18900 (= lt!5333 (lemmaInListMapThenSeekEntryOrOpenFindsIt!2 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5349 () SeekEntryResult!48)

(declare-fun call!865 () SeekEntryResult!48)

(assert (=> b!18900 (= lt!5349 call!865)))

(declare-fun res!13020 () Bool)

(assert (=> b!18900 (= res!13020 ((_ is Found!48) lt!5349))))

(declare-fun e!12101 () Bool)

(assert (=> b!18900 (=> (not res!13020) (not e!12101))))

(assert (=> b!18900 e!12101))

(declare-fun lt!5338 () Unit!354)

(assert (=> b!18900 (= lt!5338 lt!5333)))

(assert (=> b!18900 false))

(declare-fun b!18901 () Bool)

(declare-fun e!12098 () Bool)

(declare-fun e!12102 () Bool)

(assert (=> b!18901 (= e!12098 e!12102)))

(declare-fun res!13021 () Bool)

(declare-fun call!864 () Bool)

(assert (=> b!18901 (= res!13021 call!864)))

(assert (=> b!18901 (=> (not res!13021) (not e!12102))))

(declare-fun b!18902 () Bool)

(declare-fun res!13017 () Bool)

(declare-fun lt!5340 () SeekEntryResult!48)

(assert (=> b!18902 (= res!13017 (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2314 lt!5340)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!18902 (=> (not res!13017) (not e!12102))))

(declare-fun b!18903 () Bool)

(declare-fun e!12096 () Unit!354)

(declare-fun Unit!378 () Unit!354)

(assert (=> b!18903 (= e!12096 Unit!378)))

(declare-fun bm!860 () Bool)

(declare-fun call!863 () Bool)

(assert (=> bm!860 (= call!864 call!863)))

(declare-fun b!18904 () Bool)

(declare-fun lt!5336 () Unit!354)

(assert (=> b!18904 (= e!12100 lt!5336)))

(assert (=> b!18904 (= lt!5336 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!2 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(assert (=> b!18904 (= lt!5340 call!865)))

(declare-fun c!2028 () Bool)

(assert (=> b!18904 (= c!2028 ((_ is MissingZero!48) lt!5340))))

(declare-fun e!12097 () Bool)

(assert (=> b!18904 e!12097))

(declare-fun b!18905 () Bool)

(assert (=> b!18905 (= e!12098 ((_ is Undefined!48) lt!5340))))

(declare-fun e!12103 () Bool)

(declare-fun lt!5329 () tuple2!776)

(declare-fun b!18906 () Bool)

(assert (=> b!18906 (= e!12103 (= (map!357 (_2!389 lt!5329)) (+!36 (map!357 (v!1473 (underlying!62 (_2!387 lt!4707)))) (tuple2!775 key!682 v!259))))))

(declare-fun b!18907 () Bool)

(declare-fun res!13022 () Bool)

(assert (=> b!18907 (=> (not res!13022) (not e!12103))))

(assert (=> b!18907 (= res!13022 (valid!54 (_2!389 lt!5329)))))

(declare-fun bm!861 () Bool)

(declare-fun call!862 () Bool)

(assert (=> bm!861 (= call!862 (arrayContainsKey!0 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 #b00000000000000000000000000000000))))

(declare-fun b!18908 () Bool)

(declare-fun res!13015 () Bool)

(declare-fun e!12099 () Bool)

(assert (=> b!18908 (=> (not res!13015) (not e!12099))))

(assert (=> b!18908 (= res!13015 (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2311 lt!5340)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!18909 () Bool)

(assert (=> b!18909 (= e!12099 (not call!862))))

(declare-fun b!18910 () Bool)

(assert (=> b!18910 (= e!12101 (= (select (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (index!2312 lt!5349)) key!682))))

(declare-fun b!18911 () Bool)

(declare-fun res!13018 () Bool)

(assert (=> b!18911 (= res!13018 call!863)))

(assert (=> b!18911 (=> (not res!13018) (not e!12101))))

(declare-fun b!18912 () Bool)

(declare-fun Unit!379 () Unit!354)

(assert (=> b!18912 (= e!12096 Unit!379)))

(declare-fun lt!5345 () Unit!354)

(declare-fun lemmaArrayContainsKeyThenInListMap!1 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 (_ BitVec 64) (_ BitVec 32) Int) Unit!354)

(assert (=> b!18912 (= lt!5345 (lemmaArrayContainsKeyThenInListMap!1 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(assert (=> b!18912 (contains!206 (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) key!682)))

(declare-fun lt!5348 () Unit!354)

(assert (=> b!18912 (= lt!5348 lt!5345)))

(assert (=> b!18912 false))

(declare-fun d!3527 () Bool)

(assert (=> d!3527 e!12103))

(declare-fun res!13016 () Bool)

(assert (=> d!3527 (=> (not res!13016) (not e!12103))))

(assert (=> d!3527 (= res!13016 (_1!389 lt!5329))))

(assert (=> d!3527 (= lt!5329 (tuple2!777 true (LongMapFixedSize!103 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (bvadd (_size!83 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000001) (array!1030 (store (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) key!682) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (array!1028 (store (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) (ValueCellFull!258 v!259)) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (_vacant!83 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun lt!5334 () Unit!354)

(declare-fun lt!5341 () Unit!354)

(assert (=> d!3527 (= lt!5334 lt!5341)))

(declare-fun lt!5335 () array!1029)

(declare-fun lt!5332 () array!1027)

(assert (=> d!3527 (contains!206 (getCurrentListMap!111 lt!5335 lt!5332 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) (select (store (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) key!682) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794))))))

(assert (=> d!3527 (= lt!5341 (lemmaValidKeyInArrayIsInListMap!2 lt!5335 lt!5332 (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(assert (=> d!3527 (= lt!5332 (array!1028 (store (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) (ValueCellFull!258 v!259)) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(assert (=> d!3527 (= lt!5335 (array!1030 (store (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) key!682) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun lt!5325 () Unit!354)

(declare-fun lt!5331 () Unit!354)

(assert (=> d!3527 (= lt!5325 lt!5331)))

(declare-fun lt!5324 () array!1029)

(assert (=> d!3527 (= (arrayCountValidKeys!0 lt!5324 (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) (bvadd (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!1029 (_ BitVec 32)) Unit!354)

(assert (=> d!3527 (= lt!5331 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!5324 (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794))))))

(assert (=> d!3527 (= lt!5324 (array!1030 (store (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) key!682) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun lt!5323 () Unit!354)

(declare-fun lt!5328 () Unit!354)

(assert (=> d!3527 (= lt!5323 lt!5328)))

(declare-fun lt!5346 () array!1029)

(assert (=> d!3527 (arrayContainsKey!0 lt!5346 key!682 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!1029 (_ BitVec 64) (_ BitVec 32)) Unit!354)

(assert (=> d!3527 (= lt!5328 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!5346 key!682 (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794))))))

(assert (=> d!3527 (= lt!5346 (array!1030 (store (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) key!682) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))))))

(declare-fun lt!5342 () Unit!354)

(declare-fun lt!5337 () Unit!354)

(assert (=> d!3527 (= lt!5342 lt!5337)))

(assert (=> d!3527 (= (+!36 (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) (tuple2!775 key!682 v!259)) (getCurrentListMap!111 (array!1030 (store (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) key!682) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (array!1028 (store (arr!495 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) (ValueCellFull!258 v!259)) (size!585 (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!1 (array!1029 array!1027 (_ BitVec 32) (_ BitVec 32) V!1045 V!1045 (_ BitVec 32) (_ BitVec 64) V!1045 Int) Unit!354)

(assert (=> d!3527 (= lt!5337 (lemmaAddValidKeyToArrayThenAddPairToListMap!1 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) key!682 v!259 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5344 () Unit!354)

(declare-fun lt!5347 () Unit!354)

(assert (=> d!3527 (= lt!5344 lt!5347)))

(assert (=> d!3527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!1030 (store (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) key!682) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!1029 (_ BitVec 32) (_ BitVec 32)) Unit!354)

(assert (=> d!3527 (= lt!5347 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!682 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun lt!5330 () Unit!354)

(declare-fun lt!5343 () Unit!354)

(assert (=> d!3527 (= lt!5330 lt!5343)))

(assert (=> d!3527 (= (arrayCountValidKeys!0 (array!1030 (store (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) key!682) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))) #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))) (bvadd (arrayCountValidKeys!0 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!1029 (_ BitVec 32) (_ BitVec 64)) Unit!354)

(assert (=> d!3527 (= lt!5343 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) key!682))))

(declare-fun lt!5339 () Unit!354)

(declare-fun lt!5351 () Unit!354)

(assert (=> d!3527 (= lt!5339 lt!5351)))

(declare-fun lt!5322 () (_ BitVec 32))

(declare-fun lt!5350 () List!536)

(assert (=> d!3527 (arrayNoDuplicates!0 (array!1030 (store (arr!496 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707))))) (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) key!682) (size!586 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))))) lt!5322 lt!5350)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!1029 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!536) Unit!354)

(assert (=> d!3527 (= lt!5351 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794)) lt!5322 lt!5350))))

(assert (=> d!3527 (= lt!5350 Nil!533)))

(assert (=> d!3527 (= lt!5322 #b00000000000000000000000000000000)))

(declare-fun lt!5326 () Unit!354)

(assert (=> d!3527 (= lt!5326 e!12096)))

(declare-fun c!2025 () Bool)

(assert (=> d!3527 (= c!2025 (arrayContainsKey!0 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) key!682 #b00000000000000000000000000000000))))

(declare-fun lt!5327 () Unit!354)

(assert (=> d!3527 (= lt!5327 e!12100)))

(declare-fun c!2027 () Bool)

(assert (=> d!3527 (= c!2027 (contains!206 (getCurrentListMap!111 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (_values!1659 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707)))) (extraKeys!1575 (v!1473 (underlying!62 (_2!387 lt!4707)))) (zeroValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) (minValue!1598 (v!1473 (underlying!62 (_2!387 lt!4707)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!1473 (underlying!62 (_2!387 lt!4707))))) key!682))))

(assert (=> d!3527 (valid!54 (v!1473 (underlying!62 (_2!387 lt!4707))))))

(assert (=> d!3527 (= (updateHelperNewKey!2 (v!1473 (underlying!62 (_2!387 lt!4707))) key!682 v!259 (ite c!1882 (index!2314 lt!4794) (index!2311 lt!4794))) lt!5329)))

(declare-fun bm!859 () Bool)

(assert (=> bm!859 (= call!863 (inRange!0 (ite c!2027 (index!2312 lt!5349) (ite c!2028 (index!2311 lt!5340) (index!2314 lt!5340))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18913 () Bool)

(declare-fun c!2026 () Bool)

(assert (=> b!18913 (= c!2026 ((_ is MissingVacant!48) lt!5340))))

(assert (=> b!18913 (= e!12097 e!12098)))

(declare-fun b!18914 () Bool)

(declare-fun res!13019 () Bool)

(assert (=> b!18914 (=> (not res!13019) (not e!12099))))

(assert (=> b!18914 (= res!13019 call!864)))

(assert (=> b!18914 (= e!12097 e!12099)))

(declare-fun b!18915 () Bool)

(assert (=> b!18915 (= e!12102 (not call!862))))

(declare-fun bm!862 () Bool)

(assert (=> bm!862 (= call!865 (seekEntryOrOpen!0 key!682 (_keys!3087 (v!1473 (underlying!62 (_2!387 lt!4707)))) (mask!4595 (v!1473 (underlying!62 (_2!387 lt!4707))))))))

(declare-fun b!18916 () Bool)

(declare-fun res!13023 () Bool)

(assert (=> b!18916 (=> (not res!13023) (not e!12103))))

(assert (=> b!18916 (= res!13023 (contains!206 (map!357 (_2!389 lt!5329)) key!682))))

(assert (= (and d!3527 c!2027) b!18900))

(assert (= (and d!3527 (not c!2027)) b!18904))

(assert (= (and b!18900 res!13020) b!18911))

(assert (= (and b!18911 res!13018) b!18910))

(assert (= (and b!18904 c!2028) b!18914))

(assert (= (and b!18904 (not c!2028)) b!18913))

(assert (= (and b!18914 res!13019) b!18908))

(assert (= (and b!18908 res!13015) b!18909))

(assert (= (and b!18913 c!2026) b!18901))

(assert (= (and b!18913 (not c!2026)) b!18905))

(assert (= (and b!18901 res!13021) b!18902))

(assert (= (and b!18902 res!13017) b!18915))

(assert (= (or b!18914 b!18901) bm!860))

(assert (= (or b!18909 b!18915) bm!861))

(assert (= (or b!18911 bm!860) bm!859))

(assert (= (or b!18900 b!18904) bm!862))

(assert (= (and d!3527 c!2025) b!18912))

(assert (= (and d!3527 (not c!2025)) b!18903))

(assert (= (and d!3527 res!13016) b!18907))

(assert (= (and b!18907 res!13022) b!18916))

(assert (= (and b!18916 res!13023) b!18906))

(assert (=> bm!862 m!12783))

(declare-fun m!13377 () Bool)

(assert (=> bm!859 m!13377))

(declare-fun m!13379 () Bool)

(assert (=> b!18910 m!13379))

(assert (=> bm!861 m!12737))

(declare-fun m!13381 () Bool)

(assert (=> b!18916 m!13381))

(assert (=> b!18916 m!13381))

(declare-fun m!13383 () Bool)

(assert (=> b!18916 m!13383))

(assert (=> b!18900 m!12731))

(declare-fun m!13385 () Bool)

(assert (=> b!18908 m!13385))

(declare-fun m!13387 () Bool)

(assert (=> d!3527 m!13387))

(declare-fun m!13389 () Bool)

(assert (=> d!3527 m!13389))

(declare-fun m!13391 () Bool)

(assert (=> d!3527 m!13391))

(declare-fun m!13393 () Bool)

(assert (=> d!3527 m!13393))

(declare-fun m!13395 () Bool)

(assert (=> d!3527 m!13395))

(declare-fun m!13397 () Bool)

(assert (=> d!3527 m!13397))

(assert (=> d!3527 m!13013))

(declare-fun m!13399 () Bool)

(assert (=> d!3527 m!13399))

(declare-fun m!13401 () Bool)

(assert (=> d!3527 m!13401))

(declare-fun m!13403 () Bool)

(assert (=> d!3527 m!13403))

(declare-fun m!13405 () Bool)

(assert (=> d!3527 m!13405))

(declare-fun m!13407 () Bool)

(assert (=> d!3527 m!13407))

(assert (=> d!3527 m!12743))

(assert (=> d!3527 m!12979))

(declare-fun m!13409 () Bool)

(assert (=> d!3527 m!13409))

(declare-fun m!13411 () Bool)

(assert (=> d!3527 m!13411))

(assert (=> d!3527 m!13389))

(declare-fun m!13413 () Bool)

(assert (=> d!3527 m!13413))

(declare-fun m!13415 () Bool)

(assert (=> d!3527 m!13415))

(declare-fun m!13417 () Bool)

(assert (=> d!3527 m!13417))

(assert (=> d!3527 m!13413))

(assert (=> d!3527 m!12737))

(declare-fun m!13419 () Bool)

(assert (=> d!3527 m!13419))

(assert (=> d!3527 m!12979))

(assert (=> d!3527 m!12979))

(assert (=> d!3527 m!13363))

(declare-fun m!13421 () Bool)

(assert (=> d!3527 m!13421))

(declare-fun m!13423 () Bool)

(assert (=> d!3527 m!13423))

(declare-fun m!13425 () Bool)

(assert (=> b!18912 m!13425))

(assert (=> b!18912 m!12979))

(assert (=> b!18912 m!12979))

(assert (=> b!18912 m!13409))

(declare-fun m!13427 () Bool)

(assert (=> b!18902 m!13427))

(declare-fun m!13429 () Bool)

(assert (=> b!18907 m!13429))

(assert (=> b!18904 m!12777))

(assert (=> b!18906 m!13381))

(declare-fun m!13431 () Bool)

(assert (=> b!18906 m!13431))

(assert (=> b!18906 m!13431))

(declare-fun m!13433 () Bool)

(assert (=> b!18906 m!13433))

(assert (=> bm!686 d!3527))

(declare-fun mapIsEmpty!814 () Bool)

(declare-fun mapRes!814 () Bool)

(assert (=> mapIsEmpty!814 mapRes!814))

(declare-fun condMapEmpty!814 () Bool)

(declare-fun mapDefault!814 () ValueCell!258)

(assert (=> mapNonEmpty!813 (= condMapEmpty!814 (= mapRest!813 ((as const (Array (_ BitVec 32) ValueCell!258)) mapDefault!814)))))

(declare-fun e!12105 () Bool)

(assert (=> mapNonEmpty!813 (= tp!3153 (and e!12105 mapRes!814))))

(declare-fun b!18917 () Bool)

(declare-fun e!12104 () Bool)

(assert (=> b!18917 (= e!12104 tp_is_empty!915)))

(declare-fun b!18918 () Bool)

(assert (=> b!18918 (= e!12105 tp_is_empty!915)))

(declare-fun mapNonEmpty!814 () Bool)

(declare-fun tp!3154 () Bool)

(assert (=> mapNonEmpty!814 (= mapRes!814 (and tp!3154 e!12104))))

(declare-fun mapValue!814 () ValueCell!258)

(declare-fun mapRest!814 () (Array (_ BitVec 32) ValueCell!258))

(declare-fun mapKey!814 () (_ BitVec 32))

(assert (=> mapNonEmpty!814 (= mapRest!813 (store mapRest!814 mapKey!814 mapValue!814))))

(assert (= (and mapNonEmpty!813 condMapEmpty!814) mapIsEmpty!814))

(assert (= (and mapNonEmpty!813 (not condMapEmpty!814)) mapNonEmpty!814))

(assert (= (and mapNonEmpty!814 ((_ is ValueCellFull!258) mapValue!814)) b!18917))

(assert (= (and mapNonEmpty!813 ((_ is ValueCellFull!258) mapDefault!814)) b!18918))

(declare-fun m!13435 () Bool)

(assert (=> mapNonEmpty!814 m!13435))

(declare-fun b_lambda!1463 () Bool)

(assert (= b_lambda!1453 (or (and b!18232 b_free!651) b_lambda!1463)))

(declare-fun b_lambda!1465 () Bool)

(assert (= b_lambda!1459 (or (and b!18232 b_free!651) b_lambda!1465)))

(declare-fun b_lambda!1467 () Bool)

(assert (= b_lambda!1451 (or (and b!18232 b_free!651) b_lambda!1467)))

(check-sat (not b!18611) (not bm!797) b_and!1315 (not b!18559) (not bm!840) (not d!3473) (not b!18824) (not b_lambda!1457) (not d!3489) (not b!18900) (not b!18770) (not b!18500) (not b!18818) (not b!18585) (not b!18644) (not b!18605) (not b!18532) (not b!18856) (not b!18653) (not b!18746) (not d!3501) (not b!18454) (not b!18692) (not bm!754) (not bm!795) (not bm!730) (not bm!838) (not b!18449) (not bm!737) (not b!18545) (not b!18571) (not b!18808) (not b!18451) (not b!18662) (not b!18736) (not d!3477) (not b!18550) (not b!18577) (not b!18833) (not b!18826) (not b!18850) (not bm!862) (not d!3517) (not b!18670) (not b!18471) (not bm!833) (not d!3497) (not b!18906) (not b!18496) (not bm!859) (not b!18641) (not b!18832) (not b!18667) (not b!18744) (not bm!747) (not b!18762) (not b!18844) (not b!18912) (not bm!793) (not b!18862) (not d!3507) (not bm!798) (not bm!850) (not b_lambda!1463) (not b!18907) (not b!18752) (not b!18452) (not bm!835) (not b!18765) (not bm!831) (not bm!791) (not bm!839) (not d!3491) (not b!18642) (not bm!775) (not b!18495) (not bm!740) (not b!18754) (not bm!802) (not d!3495) (not b!18568) (not b_lambda!1455) (not d!3527) (not bm!764) (not b!18825) (not b!18916) (not bm!843) (not d!3509) (not b!18757) (not d!3515) (not bm!756) (not b!18749) (not mapNonEmpty!814) (not b!18741) (not b!18773) (not d!3451) (not d!3523) (not b!18643) (not b!18472) (not d!3461) (not b!18582) (not b!18834) (not b_lambda!1465) (not bm!834) (not d!3505) (not b!18839) (not bm!842) (not bm!728) (not bm!735) (not bm!772) (not d!3453) (not b!18822) (not b!18810) (not d!3493) (not b!18602) (not b!18686) (not d!3479) (not bm!844) (not d!3499) (not bm!861) (not bm!727) (not bm!720) (not b!18812) (not bm!773) (not b!18852) (not d!3471) (not b_lambda!1467) (not bm!749) (not b!18679) (not b!18465) (not d!3487) (not b!18865) (not b!18685) (not d!3455) (not bm!746) (not bm!800) (not b!18594) (not bm!841) (not d!3459) (not b!18863) (not b!18829) (not b!18842) (not b!18820) (not d!3503) (not bm!743) (not bm!804) (not b!18634) (not d!3513) (not b!18904) (not bm!751) (not b!18775) (not b!18819) (not d!3511) (not bm!732) (not d!3445) (not bm!832) (not b_lambda!1461) (not b!18807) (not b_next!651) (not b!18827) (not d!3463) (not d!3481) (not bm!837) (not b!18847) (not b!18823) (not bm!759) (not b!18821) tp_is_empty!915 (not d!3447) (not d!3485) (not bm!739) (not bm!771) (not bm!846) (not bm!848) (not d!3465) (not b!18615) (not bm!763) (not bm!748) (not bm!770) (not b!18656) (not bm!836) (not b!18646) (not b!18548) (not d!3519) (not bm!767) (not b!18767) (not b!18756) (not d!3467) (not b!18645) (not bm!761) (not b!18735) (not d!3525))
(check-sat b_and!1315 (not b_next!651))
