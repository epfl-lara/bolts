; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22098 () Bool)

(assert start!22098)

(declare-fun b!229155 () Bool)

(declare-fun b_free!6153 () Bool)

(declare-fun b_next!6153 () Bool)

(assert (=> b!229155 (= b_free!6153 (not b_next!6153))))

(declare-fun tp!21600 () Bool)

(declare-fun b_and!13069 () Bool)

(assert (=> b!229155 (= tp!21600 b_and!13069)))

(declare-fun b!229150 () Bool)

(declare-fun e!148688 () Bool)

(declare-fun call!21292 () Bool)

(assert (=> b!229150 (= e!148688 (not call!21292))))

(declare-fun b!229151 () Bool)

(declare-datatypes ((Unit!6982 0))(
  ( (Unit!6983) )
))
(declare-fun e!148683 () Unit!6982)

(declare-fun lt!115317 () Unit!6982)

(assert (=> b!229151 (= e!148683 lt!115317)))

(declare-datatypes ((V!7667 0))(
  ( (V!7668 (val!3052 Int)) )
))
(declare-datatypes ((ValueCell!2664 0))(
  ( (ValueCellFull!2664 (v!5068 V!7667)) (EmptyCell!2664) )
))
(declare-datatypes ((array!11272 0))(
  ( (array!11273 (arr!5355 (Array (_ BitVec 32) ValueCell!2664)) (size!5688 (_ BitVec 32))) )
))
(declare-datatypes ((array!11274 0))(
  ( (array!11275 (arr!5356 (Array (_ BitVec 32) (_ BitVec 64))) (size!5689 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3228 0))(
  ( (LongMapFixedSize!3229 (defaultEntry!4273 Int) (mask!10151 (_ BitVec 32)) (extraKeys!4010 (_ BitVec 32)) (zeroValue!4114 V!7667) (minValue!4114 V!7667) (_size!1663 (_ BitVec 32)) (_keys!6327 array!11274) (_values!4256 array!11272) (_vacant!1663 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3228)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!294 (array!11274 array!11272 (_ BitVec 32) (_ BitVec 32) V!7667 V!7667 (_ BitVec 64) Int) Unit!6982)

(assert (=> b!229151 (= lt!115317 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!294 (_keys!6327 thiss!1504) (_values!4256 thiss!1504) (mask!10151 thiss!1504) (extraKeys!4010 thiss!1504) (zeroValue!4114 thiss!1504) (minValue!4114 thiss!1504) key!932 (defaultEntry!4273 thiss!1504)))))

(declare-fun c!37995 () Bool)

(declare-datatypes ((SeekEntryResult!928 0))(
  ( (MissingZero!928 (index!5882 (_ BitVec 32))) (Found!928 (index!5883 (_ BitVec 32))) (Intermediate!928 (undefined!1740 Bool) (index!5884 (_ BitVec 32)) (x!23380 (_ BitVec 32))) (Undefined!928) (MissingVacant!928 (index!5885 (_ BitVec 32))) )
))
(declare-fun lt!115318 () SeekEntryResult!928)

(get-info :version)

(assert (=> b!229151 (= c!37995 ((_ is MissingZero!928) lt!115318))))

(declare-fun e!148679 () Bool)

(assert (=> b!229151 e!148679))

(declare-fun b!229152 () Bool)

(declare-fun e!148686 () Unit!6982)

(declare-fun Unit!6984 () Unit!6982)

(assert (=> b!229152 (= e!148686 Unit!6984)))

(declare-fun b!229153 () Bool)

(declare-fun e!148684 () Bool)

(declare-fun e!148685 () Bool)

(assert (=> b!229153 (= e!148684 e!148685)))

(declare-fun res!112801 () Bool)

(assert (=> b!229153 (=> (not res!112801) (not e!148685))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!229153 (= res!112801 (inRange!0 index!297 (mask!10151 thiss!1504)))))

(declare-fun lt!115316 () Unit!6982)

(assert (=> b!229153 (= lt!115316 e!148683)))

(declare-fun c!37994 () Bool)

(declare-datatypes ((tuple2!4500 0))(
  ( (tuple2!4501 (_1!2260 (_ BitVec 64)) (_2!2260 V!7667)) )
))
(declare-datatypes ((List!3447 0))(
  ( (Nil!3444) (Cons!3443 (h!4091 tuple2!4500) (t!8414 List!3447)) )
))
(declare-datatypes ((ListLongMap!3427 0))(
  ( (ListLongMap!3428 (toList!1729 List!3447)) )
))
(declare-fun contains!1597 (ListLongMap!3427 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1252 (array!11274 array!11272 (_ BitVec 32) (_ BitVec 32) V!7667 V!7667 (_ BitVec 32) Int) ListLongMap!3427)

(assert (=> b!229153 (= c!37994 (contains!1597 (getCurrentListMap!1252 (_keys!6327 thiss!1504) (_values!4256 thiss!1504) (mask!10151 thiss!1504) (extraKeys!4010 thiss!1504) (zeroValue!4114 thiss!1504) (minValue!4114 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4273 thiss!1504)) key!932))))

(declare-fun b!229154 () Bool)

(declare-fun e!148690 () Bool)

(declare-fun e!148677 () Bool)

(declare-fun mapRes!10192 () Bool)

(assert (=> b!229154 (= e!148690 (and e!148677 mapRes!10192))))

(declare-fun condMapEmpty!10192 () Bool)

(declare-fun mapDefault!10192 () ValueCell!2664)

(assert (=> b!229154 (= condMapEmpty!10192 (= (arr!5355 (_values!4256 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2664)) mapDefault!10192)))))

(declare-fun e!148676 () Bool)

(declare-fun tp_is_empty!6015 () Bool)

(declare-fun array_inv!3529 (array!11274) Bool)

(declare-fun array_inv!3530 (array!11272) Bool)

(assert (=> b!229155 (= e!148676 (and tp!21600 tp_is_empty!6015 (array_inv!3529 (_keys!6327 thiss!1504)) (array_inv!3530 (_values!4256 thiss!1504)) e!148690))))

(declare-fun b!229156 () Bool)

(declare-fun e!148682 () Bool)

(assert (=> b!229156 (= e!148682 tp_is_empty!6015)))

(declare-fun b!229157 () Bool)

(declare-fun e!148689 () Bool)

(assert (=> b!229157 (= e!148689 e!148688)))

(declare-fun res!112794 () Bool)

(declare-fun call!21291 () Bool)

(assert (=> b!229157 (= res!112794 call!21291)))

(assert (=> b!229157 (=> (not res!112794) (not e!148688))))

(declare-fun bm!21288 () Bool)

(assert (=> bm!21288 (= call!21291 (inRange!0 (ite c!37995 (index!5882 lt!115318) (index!5885 lt!115318)) (mask!10151 thiss!1504)))))

(declare-fun b!229158 () Bool)

(declare-fun Unit!6985 () Unit!6982)

(assert (=> b!229158 (= e!148683 Unit!6985)))

(declare-fun lt!115310 () Unit!6982)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!280 (array!11274 array!11272 (_ BitVec 32) (_ BitVec 32) V!7667 V!7667 (_ BitVec 64) Int) Unit!6982)

(assert (=> b!229158 (= lt!115310 (lemmaInListMapThenSeekEntryOrOpenFindsIt!280 (_keys!6327 thiss!1504) (_values!4256 thiss!1504) (mask!10151 thiss!1504) (extraKeys!4010 thiss!1504) (zeroValue!4114 thiss!1504) (minValue!4114 thiss!1504) key!932 (defaultEntry!4273 thiss!1504)))))

(assert (=> b!229158 false))

(declare-fun b!229159 () Bool)

(assert (=> b!229159 (= e!148677 tp_is_empty!6015)))

(declare-fun bm!21289 () Bool)

(declare-fun arrayContainsKey!0 (array!11274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21289 (= call!21292 (arrayContainsKey!0 (_keys!6327 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229160 () Bool)

(declare-fun res!112800 () Bool)

(declare-fun e!148680 () Bool)

(assert (=> b!229160 (=> (not res!112800) (not e!148680))))

(assert (=> b!229160 (= res!112800 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!229161 () Bool)

(declare-fun res!112796 () Bool)

(declare-fun e!148687 () Bool)

(assert (=> b!229161 (=> (not res!112796) (not e!148687))))

(assert (=> b!229161 (= res!112796 (= (select (arr!5356 (_keys!6327 thiss!1504)) (index!5882 lt!115318)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!10192 () Bool)

(assert (=> mapIsEmpty!10192 mapRes!10192))

(declare-fun b!229162 () Bool)

(declare-fun e!148681 () Bool)

(assert (=> b!229162 (= e!148685 (not e!148681))))

(declare-fun res!112799 () Bool)

(assert (=> b!229162 (=> res!112799 e!148681)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!229162 (= res!112799 (not (validMask!0 (mask!10151 thiss!1504))))))

(declare-fun lt!115311 () array!11274)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11274 (_ BitVec 32)) Bool)

(assert (=> b!229162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115311 (mask!10151 thiss!1504))))

(declare-fun lt!115312 () Unit!6982)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11274 (_ BitVec 32) (_ BitVec 32)) Unit!6982)

(assert (=> b!229162 (= lt!115312 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6327 thiss!1504) index!297 (mask!10151 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11274 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!229162 (= (arrayCountValidKeys!0 lt!115311 #b00000000000000000000000000000000 (size!5689 (_keys!6327 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6327 thiss!1504) #b00000000000000000000000000000000 (size!5689 (_keys!6327 thiss!1504)))))))

(declare-fun lt!115313 () Unit!6982)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11274 (_ BitVec 32) (_ BitVec 64)) Unit!6982)

(assert (=> b!229162 (= lt!115313 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6327 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3448 0))(
  ( (Nil!3445) (Cons!3444 (h!4092 (_ BitVec 64)) (t!8415 List!3448)) )
))
(declare-fun arrayNoDuplicates!0 (array!11274 (_ BitVec 32) List!3448) Bool)

(assert (=> b!229162 (arrayNoDuplicates!0 lt!115311 #b00000000000000000000000000000000 Nil!3445)))

(assert (=> b!229162 (= lt!115311 (array!11275 (store (arr!5356 (_keys!6327 thiss!1504)) index!297 key!932) (size!5689 (_keys!6327 thiss!1504))))))

(declare-fun lt!115315 () Unit!6982)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11274 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3448) Unit!6982)

(assert (=> b!229162 (= lt!115315 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6327 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3445))))

(declare-fun lt!115314 () Unit!6982)

(assert (=> b!229162 (= lt!115314 e!148686)))

(declare-fun c!37997 () Bool)

(assert (=> b!229162 (= c!37997 (arrayContainsKey!0 (_keys!6327 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229163 () Bool)

(declare-fun res!112804 () Bool)

(assert (=> b!229163 (=> (not res!112804) (not e!148687))))

(assert (=> b!229163 (= res!112804 call!21291)))

(assert (=> b!229163 (= e!148679 e!148687)))

(declare-fun b!229164 () Bool)

(declare-fun res!112795 () Bool)

(assert (=> b!229164 (= res!112795 (= (select (arr!5356 (_keys!6327 thiss!1504)) (index!5885 lt!115318)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!229164 (=> (not res!112795) (not e!148688))))

(declare-fun b!229165 () Bool)

(declare-fun res!112803 () Bool)

(assert (=> b!229165 (=> res!112803 e!148681)))

(assert (=> b!229165 (= res!112803 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6327 thiss!1504) (mask!10151 thiss!1504))))))

(declare-fun b!229166 () Bool)

(assert (=> b!229166 (= e!148680 e!148684)))

(declare-fun res!112802 () Bool)

(assert (=> b!229166 (=> (not res!112802) (not e!148684))))

(assert (=> b!229166 (= res!112802 (or (= lt!115318 (MissingZero!928 index!297)) (= lt!115318 (MissingVacant!928 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11274 (_ BitVec 32)) SeekEntryResult!928)

(assert (=> b!229166 (= lt!115318 (seekEntryOrOpen!0 key!932 (_keys!6327 thiss!1504) (mask!10151 thiss!1504)))))

(declare-fun mapNonEmpty!10192 () Bool)

(declare-fun tp!21601 () Bool)

(assert (=> mapNonEmpty!10192 (= mapRes!10192 (and tp!21601 e!148682))))

(declare-fun mapRest!10192 () (Array (_ BitVec 32) ValueCell!2664))

(declare-fun mapValue!10192 () ValueCell!2664)

(declare-fun mapKey!10192 () (_ BitVec 32))

(assert (=> mapNonEmpty!10192 (= (arr!5355 (_values!4256 thiss!1504)) (store mapRest!10192 mapKey!10192 mapValue!10192))))

(declare-fun res!112798 () Bool)

(assert (=> start!22098 (=> (not res!112798) (not e!148680))))

(declare-fun valid!1280 (LongMapFixedSize!3228) Bool)

(assert (=> start!22098 (= res!112798 (valid!1280 thiss!1504))))

(assert (=> start!22098 e!148680))

(assert (=> start!22098 e!148676))

(assert (=> start!22098 true))

(declare-fun b!229167 () Bool)

(declare-fun Unit!6986 () Unit!6982)

(assert (=> b!229167 (= e!148686 Unit!6986)))

(declare-fun lt!115320 () Unit!6982)

(declare-fun lemmaArrayContainsKeyThenInListMap!113 (array!11274 array!11272 (_ BitVec 32) (_ BitVec 32) V!7667 V!7667 (_ BitVec 64) (_ BitVec 32) Int) Unit!6982)

(assert (=> b!229167 (= lt!115320 (lemmaArrayContainsKeyThenInListMap!113 (_keys!6327 thiss!1504) (_values!4256 thiss!1504) (mask!10151 thiss!1504) (extraKeys!4010 thiss!1504) (zeroValue!4114 thiss!1504) (minValue!4114 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4273 thiss!1504)))))

(assert (=> b!229167 false))

(declare-fun b!229168 () Bool)

(assert (=> b!229168 (= e!148687 (not call!21292))))

(declare-fun b!229169 () Bool)

(assert (=> b!229169 (= e!148681 true)))

(declare-fun lt!115319 () Bool)

(assert (=> b!229169 (= lt!115319 (arrayNoDuplicates!0 (_keys!6327 thiss!1504) #b00000000000000000000000000000000 Nil!3445))))

(declare-fun b!229170 () Bool)

(declare-fun c!37996 () Bool)

(assert (=> b!229170 (= c!37996 ((_ is MissingVacant!928) lt!115318))))

(assert (=> b!229170 (= e!148679 e!148689)))

(declare-fun b!229171 () Bool)

(declare-fun res!112797 () Bool)

(assert (=> b!229171 (=> res!112797 e!148681)))

(assert (=> b!229171 (= res!112797 (or (not (= (size!5688 (_values!4256 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10151 thiss!1504)))) (not (= (size!5689 (_keys!6327 thiss!1504)) (size!5688 (_values!4256 thiss!1504)))) (bvslt (mask!10151 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4010 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4010 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!229172 () Bool)

(assert (=> b!229172 (= e!148689 ((_ is Undefined!928) lt!115318))))

(assert (= (and start!22098 res!112798) b!229160))

(assert (= (and b!229160 res!112800) b!229166))

(assert (= (and b!229166 res!112802) b!229153))

(assert (= (and b!229153 c!37994) b!229158))

(assert (= (and b!229153 (not c!37994)) b!229151))

(assert (= (and b!229151 c!37995) b!229163))

(assert (= (and b!229151 (not c!37995)) b!229170))

(assert (= (and b!229163 res!112804) b!229161))

(assert (= (and b!229161 res!112796) b!229168))

(assert (= (and b!229170 c!37996) b!229157))

(assert (= (and b!229170 (not c!37996)) b!229172))

(assert (= (and b!229157 res!112794) b!229164))

(assert (= (and b!229164 res!112795) b!229150))

(assert (= (or b!229163 b!229157) bm!21288))

(assert (= (or b!229168 b!229150) bm!21289))

(assert (= (and b!229153 res!112801) b!229162))

(assert (= (and b!229162 c!37997) b!229167))

(assert (= (and b!229162 (not c!37997)) b!229152))

(assert (= (and b!229162 (not res!112799)) b!229171))

(assert (= (and b!229171 (not res!112797)) b!229165))

(assert (= (and b!229165 (not res!112803)) b!229169))

(assert (= (and b!229154 condMapEmpty!10192) mapIsEmpty!10192))

(assert (= (and b!229154 (not condMapEmpty!10192)) mapNonEmpty!10192))

(assert (= (and mapNonEmpty!10192 ((_ is ValueCellFull!2664) mapValue!10192)) b!229156))

(assert (= (and b!229154 ((_ is ValueCellFull!2664) mapDefault!10192)) b!229159))

(assert (= b!229155 b!229154))

(assert (= start!22098 b!229155))

(declare-fun m!250745 () Bool)

(assert (=> b!229151 m!250745))

(declare-fun m!250747 () Bool)

(assert (=> b!229161 m!250747))

(declare-fun m!250749 () Bool)

(assert (=> b!229166 m!250749))

(declare-fun m!250751 () Bool)

(assert (=> b!229162 m!250751))

(declare-fun m!250753 () Bool)

(assert (=> b!229162 m!250753))

(declare-fun m!250755 () Bool)

(assert (=> b!229162 m!250755))

(declare-fun m!250757 () Bool)

(assert (=> b!229162 m!250757))

(declare-fun m!250759 () Bool)

(assert (=> b!229162 m!250759))

(declare-fun m!250761 () Bool)

(assert (=> b!229162 m!250761))

(declare-fun m!250763 () Bool)

(assert (=> b!229162 m!250763))

(declare-fun m!250765 () Bool)

(assert (=> b!229162 m!250765))

(declare-fun m!250767 () Bool)

(assert (=> b!229162 m!250767))

(declare-fun m!250769 () Bool)

(assert (=> b!229162 m!250769))

(assert (=> bm!21289 m!250753))

(declare-fun m!250771 () Bool)

(assert (=> b!229167 m!250771))

(declare-fun m!250773 () Bool)

(assert (=> start!22098 m!250773))

(declare-fun m!250775 () Bool)

(assert (=> b!229169 m!250775))

(declare-fun m!250777 () Bool)

(assert (=> b!229155 m!250777))

(declare-fun m!250779 () Bool)

(assert (=> b!229155 m!250779))

(declare-fun m!250781 () Bool)

(assert (=> bm!21288 m!250781))

(declare-fun m!250783 () Bool)

(assert (=> b!229158 m!250783))

(declare-fun m!250785 () Bool)

(assert (=> b!229165 m!250785))

(declare-fun m!250787 () Bool)

(assert (=> b!229164 m!250787))

(declare-fun m!250789 () Bool)

(assert (=> b!229153 m!250789))

(declare-fun m!250791 () Bool)

(assert (=> b!229153 m!250791))

(assert (=> b!229153 m!250791))

(declare-fun m!250793 () Bool)

(assert (=> b!229153 m!250793))

(declare-fun m!250795 () Bool)

(assert (=> mapNonEmpty!10192 m!250795))

(check-sat (not bm!21289) tp_is_empty!6015 (not b!229158) (not start!22098) (not b!229162) (not mapNonEmpty!10192) (not b!229151) (not b!229153) (not b!229166) (not b_next!6153) (not b!229155) (not b!229169) (not b!229165) b_and!13069 (not b!229167) (not bm!21288))
(check-sat b_and!13069 (not b_next!6153))
