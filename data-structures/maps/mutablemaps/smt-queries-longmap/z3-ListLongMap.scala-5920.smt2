; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76906 () Bool)

(assert start!76906)

(declare-fun b!898718 () Bool)

(declare-fun b_free!16023 () Bool)

(declare-fun b_next!16023 () Bool)

(assert (=> b!898718 (= b_free!16023 (not b_next!16023))))

(declare-fun tp!56143 () Bool)

(declare-fun b_and!26341 () Bool)

(assert (=> b!898718 (= tp!56143 b_and!26341)))

(declare-fun mapIsEmpty!29185 () Bool)

(declare-fun mapRes!29185 () Bool)

(assert (=> mapIsEmpty!29185 mapRes!29185))

(declare-fun b!898712 () Bool)

(declare-fun e!502823 () Bool)

(declare-fun tp_is_empty!18351 () Bool)

(assert (=> b!898712 (= e!502823 tp_is_empty!18351)))

(declare-fun b!898713 () Bool)

(declare-fun res!607360 () Bool)

(declare-fun e!502818 () Bool)

(assert (=> b!898713 (=> (not res!607360) (not e!502818))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!898713 (= res!607360 (not (= key!785 (bvneg key!785))))))

(declare-fun b!898714 () Bool)

(declare-fun e!502820 () Bool)

(declare-fun e!502821 () Bool)

(assert (=> b!898714 (= e!502820 (and e!502821 mapRes!29185))))

(declare-fun condMapEmpty!29185 () Bool)

(declare-datatypes ((array!52728 0))(
  ( (array!52729 (arr!25336 (Array (_ BitVec 32) (_ BitVec 64))) (size!25793 (_ BitVec 32))) )
))
(declare-datatypes ((V!29433 0))(
  ( (V!29434 (val!9226 Int)) )
))
(declare-datatypes ((ValueCell!8694 0))(
  ( (ValueCellFull!8694 (v!11715 V!29433)) (EmptyCell!8694) )
))
(declare-datatypes ((array!52730 0))(
  ( (array!52731 (arr!25337 (Array (_ BitVec 32) ValueCell!8694)) (size!25794 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4404 0))(
  ( (LongMapFixedSize!4405 (defaultEntry!5420 Int) (mask!26154 (_ BitVec 32)) (extraKeys!5138 (_ BitVec 32)) (zeroValue!5242 V!29433) (minValue!5242 V!29433) (_size!2257 (_ BitVec 32)) (_keys!10197 array!52728) (_values!5429 array!52730) (_vacant!2257 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4404)

(declare-fun mapDefault!29185 () ValueCell!8694)

(assert (=> b!898714 (= condMapEmpty!29185 (= (arr!25337 (_values!5429 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8694)) mapDefault!29185)))))

(declare-fun b!898715 () Bool)

(declare-fun e!502825 () Bool)

(assert (=> b!898715 (= e!502825 (or (not (= (size!25794 (_values!5429 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26154 thiss!1181)))) (= (size!25793 (_keys!10197 thiss!1181)) (size!25794 (_values!5429 thiss!1181)))))))

(declare-fun b!898716 () Bool)

(assert (=> b!898716 (= e!502821 tp_is_empty!18351)))

(declare-fun b!898717 () Bool)

(declare-fun e!502822 () Bool)

(assert (=> b!898717 (= e!502818 (not e!502822))))

(declare-fun res!607362 () Bool)

(assert (=> b!898717 (=> res!607362 e!502822)))

(declare-datatypes ((SeekEntryResult!8915 0))(
  ( (MissingZero!8915 (index!38030 (_ BitVec 32))) (Found!8915 (index!38031 (_ BitVec 32))) (Intermediate!8915 (undefined!9727 Bool) (index!38032 (_ BitVec 32)) (x!76581 (_ BitVec 32))) (Undefined!8915) (MissingVacant!8915 (index!38033 (_ BitVec 32))) )
))
(declare-fun lt!405800 () SeekEntryResult!8915)

(get-info :version)

(assert (=> b!898717 (= res!607362 (not ((_ is Found!8915) lt!405800)))))

(declare-fun e!502819 () Bool)

(assert (=> b!898717 e!502819))

(declare-fun res!607364 () Bool)

(assert (=> b!898717 (=> res!607364 e!502819)))

(assert (=> b!898717 (= res!607364 (not ((_ is Found!8915) lt!405800)))))

(declare-datatypes ((Unit!30517 0))(
  ( (Unit!30518) )
))
(declare-fun lt!405803 () Unit!30517)

(declare-fun lemmaSeekEntryGivesInRangeIndex!98 (array!52728 array!52730 (_ BitVec 32) (_ BitVec 32) V!29433 V!29433 (_ BitVec 64)) Unit!30517)

(assert (=> b!898717 (= lt!405803 (lemmaSeekEntryGivesInRangeIndex!98 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52728 (_ BitVec 32)) SeekEntryResult!8915)

(assert (=> b!898717 (= lt!405800 (seekEntry!0 key!785 (_keys!10197 thiss!1181) (mask!26154 thiss!1181)))))

(declare-fun e!502826 () Bool)

(declare-fun array_inv!19856 (array!52728) Bool)

(declare-fun array_inv!19857 (array!52730) Bool)

(assert (=> b!898718 (= e!502826 (and tp!56143 tp_is_empty!18351 (array_inv!19856 (_keys!10197 thiss!1181)) (array_inv!19857 (_values!5429 thiss!1181)) e!502820))))

(declare-fun res!607363 () Bool)

(assert (=> start!76906 (=> (not res!607363) (not e!502818))))

(declare-fun valid!1678 (LongMapFixedSize!4404) Bool)

(assert (=> start!76906 (= res!607363 (valid!1678 thiss!1181))))

(assert (=> start!76906 e!502818))

(assert (=> start!76906 e!502826))

(assert (=> start!76906 true))

(declare-fun mapNonEmpty!29185 () Bool)

(declare-fun tp!56142 () Bool)

(assert (=> mapNonEmpty!29185 (= mapRes!29185 (and tp!56142 e!502823))))

(declare-fun mapKey!29185 () (_ BitVec 32))

(declare-fun mapValue!29185 () ValueCell!8694)

(declare-fun mapRest!29185 () (Array (_ BitVec 32) ValueCell!8694))

(assert (=> mapNonEmpty!29185 (= (arr!25337 (_values!5429 thiss!1181)) (store mapRest!29185 mapKey!29185 mapValue!29185))))

(declare-fun b!898719 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!898719 (= e!502819 (inRange!0 (index!38031 lt!405800) (mask!26154 thiss!1181)))))

(declare-fun b!898720 () Bool)

(assert (=> b!898720 (= e!502822 e!502825)))

(declare-fun res!607361 () Bool)

(assert (=> b!898720 (=> res!607361 e!502825)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!898720 (= res!607361 (not (validMask!0 (mask!26154 thiss!1181))))))

(declare-datatypes ((tuple2!12058 0))(
  ( (tuple2!12059 (_1!6039 (_ BitVec 64)) (_2!6039 V!29433)) )
))
(declare-datatypes ((List!17919 0))(
  ( (Nil!17916) (Cons!17915 (h!19058 tuple2!12058) (t!25270 List!17919)) )
))
(declare-datatypes ((ListLongMap!10769 0))(
  ( (ListLongMap!10770 (toList!5400 List!17919)) )
))
(declare-fun contains!4401 (ListLongMap!10769 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2643 (array!52728 array!52730 (_ BitVec 32) (_ BitVec 32) V!29433 V!29433 (_ BitVec 32) Int) ListLongMap!10769)

(assert (=> b!898720 (contains!4401 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800)))))

(declare-fun lt!405802 () Unit!30517)

(declare-fun lemmaValidKeyInArrayIsInListMap!236 (array!52728 array!52730 (_ BitVec 32) (_ BitVec 32) V!29433 V!29433 (_ BitVec 32) Int) Unit!30517)

(assert (=> b!898720 (= lt!405802 (lemmaValidKeyInArrayIsInListMap!236 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) (index!38031 lt!405800) (defaultEntry!5420 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!898720 (arrayContainsKey!0 (_keys!10197 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405801 () Unit!30517)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52728 (_ BitVec 64) (_ BitVec 32)) Unit!30517)

(assert (=> b!898720 (= lt!405801 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10197 thiss!1181) key!785 (index!38031 lt!405800)))))

(assert (= (and start!76906 res!607363) b!898713))

(assert (= (and b!898713 res!607360) b!898717))

(assert (= (and b!898717 (not res!607364)) b!898719))

(assert (= (and b!898717 (not res!607362)) b!898720))

(assert (= (and b!898720 (not res!607361)) b!898715))

(assert (= (and b!898714 condMapEmpty!29185) mapIsEmpty!29185))

(assert (= (and b!898714 (not condMapEmpty!29185)) mapNonEmpty!29185))

(assert (= (and mapNonEmpty!29185 ((_ is ValueCellFull!8694) mapValue!29185)) b!898712))

(assert (= (and b!898714 ((_ is ValueCellFull!8694) mapDefault!29185)) b!898716))

(assert (= b!898718 b!898714))

(assert (= start!76906 b!898718))

(declare-fun m!835317 () Bool)

(assert (=> b!898717 m!835317))

(declare-fun m!835319 () Bool)

(assert (=> b!898717 m!835319))

(declare-fun m!835321 () Bool)

(assert (=> start!76906 m!835321))

(declare-fun m!835323 () Bool)

(assert (=> mapNonEmpty!29185 m!835323))

(declare-fun m!835325 () Bool)

(assert (=> b!898719 m!835325))

(declare-fun m!835327 () Bool)

(assert (=> b!898720 m!835327))

(declare-fun m!835329 () Bool)

(assert (=> b!898720 m!835329))

(declare-fun m!835331 () Bool)

(assert (=> b!898720 m!835331))

(declare-fun m!835333 () Bool)

(assert (=> b!898720 m!835333))

(declare-fun m!835335 () Bool)

(assert (=> b!898720 m!835335))

(declare-fun m!835337 () Bool)

(assert (=> b!898720 m!835337))

(assert (=> b!898720 m!835337))

(assert (=> b!898720 m!835327))

(declare-fun m!835339 () Bool)

(assert (=> b!898720 m!835339))

(declare-fun m!835341 () Bool)

(assert (=> b!898718 m!835341))

(declare-fun m!835343 () Bool)

(assert (=> b!898718 m!835343))

(check-sat (not b_next!16023) (not b!898720) (not b!898719) b_and!26341 (not b!898717) (not start!76906) (not mapNonEmpty!29185) (not b!898718) tp_is_empty!18351)
(check-sat b_and!26341 (not b_next!16023))
(get-model)

(declare-fun d!111271 () Bool)

(assert (=> d!111271 (= (array_inv!19856 (_keys!10197 thiss!1181)) (bvsge (size!25793 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!898718 d!111271))

(declare-fun d!111273 () Bool)

(assert (=> d!111273 (= (array_inv!19857 (_values!5429 thiss!1181)) (bvsge (size!25794 (_values!5429 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!898718 d!111273))

(declare-fun d!111275 () Bool)

(declare-fun e!502856 () Bool)

(assert (=> d!111275 e!502856))

(declare-fun res!607382 () Bool)

(assert (=> d!111275 (=> res!607382 e!502856)))

(declare-fun lt!405821 () SeekEntryResult!8915)

(assert (=> d!111275 (= res!607382 (not ((_ is Found!8915) lt!405821)))))

(assert (=> d!111275 (= lt!405821 (seekEntry!0 key!785 (_keys!10197 thiss!1181) (mask!26154 thiss!1181)))))

(declare-fun lt!405820 () Unit!30517)

(declare-fun choose!1503 (array!52728 array!52730 (_ BitVec 32) (_ BitVec 32) V!29433 V!29433 (_ BitVec 64)) Unit!30517)

(assert (=> d!111275 (= lt!405820 (choose!1503 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) key!785))))

(assert (=> d!111275 (validMask!0 (mask!26154 thiss!1181))))

(assert (=> d!111275 (= (lemmaSeekEntryGivesInRangeIndex!98 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) key!785) lt!405820)))

(declare-fun b!898750 () Bool)

(assert (=> b!898750 (= e!502856 (inRange!0 (index!38031 lt!405821) (mask!26154 thiss!1181)))))

(assert (= (and d!111275 (not res!607382)) b!898750))

(assert (=> d!111275 m!835319))

(declare-fun m!835373 () Bool)

(assert (=> d!111275 m!835373))

(assert (=> d!111275 m!835335))

(declare-fun m!835375 () Bool)

(assert (=> b!898750 m!835375))

(assert (=> b!898717 d!111275))

(declare-fun b!898763 () Bool)

(declare-fun e!502863 () SeekEntryResult!8915)

(declare-fun lt!405830 () SeekEntryResult!8915)

(assert (=> b!898763 (= e!502863 (Found!8915 (index!38032 lt!405830)))))

(declare-fun b!898764 () Bool)

(declare-fun e!502865 () SeekEntryResult!8915)

(assert (=> b!898764 (= e!502865 e!502863)))

(declare-fun lt!405832 () (_ BitVec 64))

(assert (=> b!898764 (= lt!405832 (select (arr!25336 (_keys!10197 thiss!1181)) (index!38032 lt!405830)))))

(declare-fun c!94954 () Bool)

(assert (=> b!898764 (= c!94954 (= lt!405832 key!785))))

(declare-fun b!898765 () Bool)

(declare-fun e!502864 () SeekEntryResult!8915)

(assert (=> b!898765 (= e!502864 (MissingZero!8915 (index!38032 lt!405830)))))

(declare-fun b!898766 () Bool)

(declare-fun lt!405831 () SeekEntryResult!8915)

(assert (=> b!898766 (= e!502864 (ite ((_ is MissingVacant!8915) lt!405831) (MissingZero!8915 (index!38033 lt!405831)) lt!405831))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52728 (_ BitVec 32)) SeekEntryResult!8915)

(assert (=> b!898766 (= lt!405831 (seekKeyOrZeroReturnVacant!0 (x!76581 lt!405830) (index!38032 lt!405830) (index!38032 lt!405830) key!785 (_keys!10197 thiss!1181) (mask!26154 thiss!1181)))))

(declare-fun b!898767 () Bool)

(assert (=> b!898767 (= e!502865 Undefined!8915)))

(declare-fun b!898768 () Bool)

(declare-fun c!94953 () Bool)

(assert (=> b!898768 (= c!94953 (= lt!405832 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!898768 (= e!502863 e!502864)))

(declare-fun d!111277 () Bool)

(declare-fun lt!405833 () SeekEntryResult!8915)

(assert (=> d!111277 (and (or ((_ is MissingVacant!8915) lt!405833) (not ((_ is Found!8915) lt!405833)) (and (bvsge (index!38031 lt!405833) #b00000000000000000000000000000000) (bvslt (index!38031 lt!405833) (size!25793 (_keys!10197 thiss!1181))))) (not ((_ is MissingVacant!8915) lt!405833)) (or (not ((_ is Found!8915) lt!405833)) (= (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405833)) key!785)))))

(assert (=> d!111277 (= lt!405833 e!502865)))

(declare-fun c!94955 () Bool)

(assert (=> d!111277 (= c!94955 (and ((_ is Intermediate!8915) lt!405830) (undefined!9727 lt!405830)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52728 (_ BitVec 32)) SeekEntryResult!8915)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111277 (= lt!405830 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26154 thiss!1181)) key!785 (_keys!10197 thiss!1181) (mask!26154 thiss!1181)))))

(assert (=> d!111277 (validMask!0 (mask!26154 thiss!1181))))

(assert (=> d!111277 (= (seekEntry!0 key!785 (_keys!10197 thiss!1181) (mask!26154 thiss!1181)) lt!405833)))

(assert (= (and d!111277 c!94955) b!898767))

(assert (= (and d!111277 (not c!94955)) b!898764))

(assert (= (and b!898764 c!94954) b!898763))

(assert (= (and b!898764 (not c!94954)) b!898768))

(assert (= (and b!898768 c!94953) b!898765))

(assert (= (and b!898768 (not c!94953)) b!898766))

(declare-fun m!835377 () Bool)

(assert (=> b!898764 m!835377))

(declare-fun m!835379 () Bool)

(assert (=> b!898766 m!835379))

(declare-fun m!835381 () Bool)

(assert (=> d!111277 m!835381))

(declare-fun m!835383 () Bool)

(assert (=> d!111277 m!835383))

(assert (=> d!111277 m!835383))

(declare-fun m!835385 () Bool)

(assert (=> d!111277 m!835385))

(assert (=> d!111277 m!835335))

(assert (=> b!898717 d!111277))

(declare-fun d!111279 () Bool)

(assert (=> d!111279 (= (validMask!0 (mask!26154 thiss!1181)) (and (or (= (mask!26154 thiss!1181) #b00000000000000000000000000000111) (= (mask!26154 thiss!1181) #b00000000000000000000000000001111) (= (mask!26154 thiss!1181) #b00000000000000000000000000011111) (= (mask!26154 thiss!1181) #b00000000000000000000000000111111) (= (mask!26154 thiss!1181) #b00000000000000000000000001111111) (= (mask!26154 thiss!1181) #b00000000000000000000000011111111) (= (mask!26154 thiss!1181) #b00000000000000000000000111111111) (= (mask!26154 thiss!1181) #b00000000000000000000001111111111) (= (mask!26154 thiss!1181) #b00000000000000000000011111111111) (= (mask!26154 thiss!1181) #b00000000000000000000111111111111) (= (mask!26154 thiss!1181) #b00000000000000000001111111111111) (= (mask!26154 thiss!1181) #b00000000000000000011111111111111) (= (mask!26154 thiss!1181) #b00000000000000000111111111111111) (= (mask!26154 thiss!1181) #b00000000000000001111111111111111) (= (mask!26154 thiss!1181) #b00000000000000011111111111111111) (= (mask!26154 thiss!1181) #b00000000000000111111111111111111) (= (mask!26154 thiss!1181) #b00000000000001111111111111111111) (= (mask!26154 thiss!1181) #b00000000000011111111111111111111) (= (mask!26154 thiss!1181) #b00000000000111111111111111111111) (= (mask!26154 thiss!1181) #b00000000001111111111111111111111) (= (mask!26154 thiss!1181) #b00000000011111111111111111111111) (= (mask!26154 thiss!1181) #b00000000111111111111111111111111) (= (mask!26154 thiss!1181) #b00000001111111111111111111111111) (= (mask!26154 thiss!1181) #b00000011111111111111111111111111) (= (mask!26154 thiss!1181) #b00000111111111111111111111111111) (= (mask!26154 thiss!1181) #b00001111111111111111111111111111) (= (mask!26154 thiss!1181) #b00011111111111111111111111111111) (= (mask!26154 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26154 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!898720 d!111279))

(declare-fun bm!39901 () Bool)

(declare-fun call!39908 () Bool)

(declare-fun lt!405890 () ListLongMap!10769)

(assert (=> bm!39901 (= call!39908 (contains!4401 lt!405890 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!898811 () Bool)

(declare-fun e!502901 () Bool)

(declare-fun e!502893 () Bool)

(assert (=> b!898811 (= e!502901 e!502893)))

(declare-fun c!94971 () Bool)

(assert (=> b!898811 (= c!94971 (not (= (bvand (extraKeys!5138 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!898812 () Bool)

(declare-fun e!502897 () Bool)

(declare-fun apply!411 (ListLongMap!10769 (_ BitVec 64)) V!29433)

(assert (=> b!898812 (= e!502897 (= (apply!411 lt!405890 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5242 thiss!1181)))))

(declare-fun bm!39902 () Bool)

(declare-fun call!39905 () ListLongMap!10769)

(declare-fun call!39910 () ListLongMap!10769)

(assert (=> bm!39902 (= call!39905 call!39910)))

(declare-fun b!898813 () Bool)

(declare-fun e!502904 () ListLongMap!10769)

(declare-fun call!39906 () ListLongMap!10769)

(assert (=> b!898813 (= e!502904 call!39906)))

(declare-fun b!898814 () Bool)

(declare-fun call!39907 () Bool)

(assert (=> b!898814 (= e!502893 (not call!39907))))

(declare-fun b!898815 () Bool)

(declare-fun e!502900 () Unit!30517)

(declare-fun Unit!30521 () Unit!30517)

(assert (=> b!898815 (= e!502900 Unit!30521)))

(declare-fun b!898816 () Bool)

(declare-fun call!39904 () ListLongMap!10769)

(assert (=> b!898816 (= e!502904 call!39904)))

(declare-fun bm!39903 () Bool)

(declare-fun call!39909 () ListLongMap!10769)

(assert (=> bm!39903 (= call!39906 call!39909)))

(declare-fun b!898817 () Bool)

(declare-fun e!502894 () Bool)

(assert (=> b!898817 (= e!502893 e!502894)))

(declare-fun res!607408 () Bool)

(assert (=> b!898817 (= res!607408 call!39907)))

(assert (=> b!898817 (=> (not res!607408) (not e!502894))))

(declare-fun c!94973 () Bool)

(declare-fun c!94968 () Bool)

(declare-fun bm!39904 () Bool)

(declare-fun +!2547 (ListLongMap!10769 tuple2!12058) ListLongMap!10769)

(assert (=> bm!39904 (= call!39909 (+!2547 (ite c!94973 call!39910 (ite c!94968 call!39905 call!39904)) (ite (or c!94973 c!94968) (tuple2!12059 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5242 thiss!1181)) (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181)))))))

(declare-fun b!898818 () Bool)

(declare-fun res!607406 () Bool)

(assert (=> b!898818 (=> (not res!607406) (not e!502901))))

(declare-fun e!502895 () Bool)

(assert (=> b!898818 (= res!607406 e!502895)))

(declare-fun c!94969 () Bool)

(assert (=> b!898818 (= c!94969 (not (= (bvand (extraKeys!5138 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!898819 () Bool)

(declare-fun e!502902 () Bool)

(declare-fun get!13333 (ValueCell!8694 V!29433) V!29433)

(declare-fun dynLambda!1306 (Int (_ BitVec 64)) V!29433)

(assert (=> b!898819 (= e!502902 (= (apply!411 lt!405890 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)) (get!13333 (select (arr!25337 (_values!5429 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1306 (defaultEntry!5420 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!898819 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25794 (_values!5429 thiss!1181))))))

(assert (=> b!898819 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))))))

(declare-fun b!898820 () Bool)

(assert (=> b!898820 (= e!502895 e!502897)))

(declare-fun res!607404 () Bool)

(assert (=> b!898820 (= res!607404 call!39908)))

(assert (=> b!898820 (=> (not res!607404) (not e!502897))))

(declare-fun b!898821 () Bool)

(declare-fun e!502898 () ListLongMap!10769)

(declare-fun e!502899 () ListLongMap!10769)

(assert (=> b!898821 (= e!502898 e!502899)))

(assert (=> b!898821 (= c!94968 (and (not (= (bvand (extraKeys!5138 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5138 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!111281 () Bool)

(assert (=> d!111281 e!502901))

(declare-fun res!607409 () Bool)

(assert (=> d!111281 (=> (not res!607409) (not e!502901))))

(assert (=> d!111281 (= res!607409 (or (bvsge #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))))))))

(declare-fun lt!405882 () ListLongMap!10769)

(assert (=> d!111281 (= lt!405890 lt!405882)))

(declare-fun lt!405881 () Unit!30517)

(assert (=> d!111281 (= lt!405881 e!502900)))

(declare-fun c!94970 () Bool)

(declare-fun e!502903 () Bool)

(assert (=> d!111281 (= c!94970 e!502903)))

(declare-fun res!607402 () Bool)

(assert (=> d!111281 (=> (not res!607402) (not e!502903))))

(assert (=> d!111281 (= res!607402 (bvslt #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))))))

(assert (=> d!111281 (= lt!405882 e!502898)))

(assert (=> d!111281 (= c!94973 (and (not (= (bvand (extraKeys!5138 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5138 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!111281 (validMask!0 (mask!26154 thiss!1181))))

(assert (=> d!111281 (= (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)) lt!405890)))

(declare-fun b!898822 () Bool)

(declare-fun res!607407 () Bool)

(assert (=> b!898822 (=> (not res!607407) (not e!502901))))

(declare-fun e!502896 () Bool)

(assert (=> b!898822 (= res!607407 e!502896)))

(declare-fun res!607401 () Bool)

(assert (=> b!898822 (=> res!607401 e!502896)))

(declare-fun e!502892 () Bool)

(assert (=> b!898822 (= res!607401 (not e!502892))))

(declare-fun res!607403 () Bool)

(assert (=> b!898822 (=> (not res!607403) (not e!502892))))

(assert (=> b!898822 (= res!607403 (bvslt #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))))))

(declare-fun b!898823 () Bool)

(declare-fun c!94972 () Bool)

(assert (=> b!898823 (= c!94972 (and (not (= (bvand (extraKeys!5138 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5138 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!898823 (= e!502899 e!502904)))

(declare-fun bm!39905 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3295 (array!52728 array!52730 (_ BitVec 32) (_ BitVec 32) V!29433 V!29433 (_ BitVec 32) Int) ListLongMap!10769)

(assert (=> bm!39905 (= call!39910 (getCurrentListMapNoExtraKeys!3295 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)))))

(declare-fun b!898824 () Bool)

(assert (=> b!898824 (= e!502895 (not call!39908))))

(declare-fun b!898825 () Bool)

(assert (=> b!898825 (= e!502899 call!39906)))

(declare-fun b!898826 () Bool)

(assert (=> b!898826 (= e!502896 e!502902)))

(declare-fun res!607405 () Bool)

(assert (=> b!898826 (=> (not res!607405) (not e!502902))))

(assert (=> b!898826 (= res!607405 (contains!4401 lt!405890 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!898826 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))))))

(declare-fun b!898827 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!898827 (= e!502892 (validKeyInArray!0 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!898828 () Bool)

(assert (=> b!898828 (= e!502898 (+!2547 call!39909 (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181))))))

(declare-fun b!898829 () Bool)

(declare-fun lt!405883 () Unit!30517)

(assert (=> b!898829 (= e!502900 lt!405883)))

(declare-fun lt!405897 () ListLongMap!10769)

(assert (=> b!898829 (= lt!405897 (getCurrentListMapNoExtraKeys!3295 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)))))

(declare-fun lt!405899 () (_ BitVec 64))

(assert (=> b!898829 (= lt!405899 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!405886 () (_ BitVec 64))

(assert (=> b!898829 (= lt!405886 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405893 () Unit!30517)

(declare-fun addStillContains!333 (ListLongMap!10769 (_ BitVec 64) V!29433 (_ BitVec 64)) Unit!30517)

(assert (=> b!898829 (= lt!405893 (addStillContains!333 lt!405897 lt!405899 (zeroValue!5242 thiss!1181) lt!405886))))

(assert (=> b!898829 (contains!4401 (+!2547 lt!405897 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181))) lt!405886)))

(declare-fun lt!405880 () Unit!30517)

(assert (=> b!898829 (= lt!405880 lt!405893)))

(declare-fun lt!405896 () ListLongMap!10769)

(assert (=> b!898829 (= lt!405896 (getCurrentListMapNoExtraKeys!3295 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)))))

(declare-fun lt!405894 () (_ BitVec 64))

(assert (=> b!898829 (= lt!405894 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!405891 () (_ BitVec 64))

(assert (=> b!898829 (= lt!405891 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405885 () Unit!30517)

(declare-fun addApplyDifferent!333 (ListLongMap!10769 (_ BitVec 64) V!29433 (_ BitVec 64)) Unit!30517)

(assert (=> b!898829 (= lt!405885 (addApplyDifferent!333 lt!405896 lt!405894 (minValue!5242 thiss!1181) lt!405891))))

(assert (=> b!898829 (= (apply!411 (+!2547 lt!405896 (tuple2!12059 lt!405894 (minValue!5242 thiss!1181))) lt!405891) (apply!411 lt!405896 lt!405891))))

(declare-fun lt!405884 () Unit!30517)

(assert (=> b!898829 (= lt!405884 lt!405885)))

(declare-fun lt!405895 () ListLongMap!10769)

(assert (=> b!898829 (= lt!405895 (getCurrentListMapNoExtraKeys!3295 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)))))

(declare-fun lt!405892 () (_ BitVec 64))

(assert (=> b!898829 (= lt!405892 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!405888 () (_ BitVec 64))

(assert (=> b!898829 (= lt!405888 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405878 () Unit!30517)

(assert (=> b!898829 (= lt!405878 (addApplyDifferent!333 lt!405895 lt!405892 (zeroValue!5242 thiss!1181) lt!405888))))

(assert (=> b!898829 (= (apply!411 (+!2547 lt!405895 (tuple2!12059 lt!405892 (zeroValue!5242 thiss!1181))) lt!405888) (apply!411 lt!405895 lt!405888))))

(declare-fun lt!405898 () Unit!30517)

(assert (=> b!898829 (= lt!405898 lt!405878)))

(declare-fun lt!405887 () ListLongMap!10769)

(assert (=> b!898829 (= lt!405887 (getCurrentListMapNoExtraKeys!3295 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)))))

(declare-fun lt!405879 () (_ BitVec 64))

(assert (=> b!898829 (= lt!405879 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!405889 () (_ BitVec 64))

(assert (=> b!898829 (= lt!405889 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!898829 (= lt!405883 (addApplyDifferent!333 lt!405887 lt!405879 (minValue!5242 thiss!1181) lt!405889))))

(assert (=> b!898829 (= (apply!411 (+!2547 lt!405887 (tuple2!12059 lt!405879 (minValue!5242 thiss!1181))) lt!405889) (apply!411 lt!405887 lt!405889))))

(declare-fun b!898830 () Bool)

(assert (=> b!898830 (= e!502894 (= (apply!411 lt!405890 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5242 thiss!1181)))))

(declare-fun bm!39906 () Bool)

(assert (=> bm!39906 (= call!39907 (contains!4401 lt!405890 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!898831 () Bool)

(assert (=> b!898831 (= e!502903 (validKeyInArray!0 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39907 () Bool)

(assert (=> bm!39907 (= call!39904 call!39905)))

(assert (= (and d!111281 c!94973) b!898828))

(assert (= (and d!111281 (not c!94973)) b!898821))

(assert (= (and b!898821 c!94968) b!898825))

(assert (= (and b!898821 (not c!94968)) b!898823))

(assert (= (and b!898823 c!94972) b!898813))

(assert (= (and b!898823 (not c!94972)) b!898816))

(assert (= (or b!898813 b!898816) bm!39907))

(assert (= (or b!898825 bm!39907) bm!39902))

(assert (= (or b!898825 b!898813) bm!39903))

(assert (= (or b!898828 bm!39902) bm!39905))

(assert (= (or b!898828 bm!39903) bm!39904))

(assert (= (and d!111281 res!607402) b!898831))

(assert (= (and d!111281 c!94970) b!898829))

(assert (= (and d!111281 (not c!94970)) b!898815))

(assert (= (and d!111281 res!607409) b!898822))

(assert (= (and b!898822 res!607403) b!898827))

(assert (= (and b!898822 (not res!607401)) b!898826))

(assert (= (and b!898826 res!607405) b!898819))

(assert (= (and b!898822 res!607407) b!898818))

(assert (= (and b!898818 c!94969) b!898820))

(assert (= (and b!898818 (not c!94969)) b!898824))

(assert (= (and b!898820 res!607404) b!898812))

(assert (= (or b!898820 b!898824) bm!39901))

(assert (= (and b!898818 res!607406) b!898811))

(assert (= (and b!898811 c!94971) b!898817))

(assert (= (and b!898811 (not c!94971)) b!898814))

(assert (= (and b!898817 res!607408) b!898830))

(assert (= (or b!898817 b!898814) bm!39906))

(declare-fun b_lambda!13005 () Bool)

(assert (=> (not b_lambda!13005) (not b!898819)))

(declare-fun t!25273 () Bool)

(declare-fun tb!5203 () Bool)

(assert (=> (and b!898718 (= (defaultEntry!5420 thiss!1181) (defaultEntry!5420 thiss!1181)) t!25273) tb!5203))

(declare-fun result!10165 () Bool)

(assert (=> tb!5203 (= result!10165 tp_is_empty!18351)))

(assert (=> b!898819 t!25273))

(declare-fun b_and!26345 () Bool)

(assert (= b_and!26341 (and (=> t!25273 result!10165) b_and!26345)))

(declare-fun m!835387 () Bool)

(assert (=> bm!39905 m!835387))

(declare-fun m!835389 () Bool)

(assert (=> b!898830 m!835389))

(declare-fun m!835391 () Bool)

(assert (=> b!898828 m!835391))

(declare-fun m!835393 () Bool)

(assert (=> b!898812 m!835393))

(declare-fun m!835395 () Bool)

(assert (=> b!898826 m!835395))

(assert (=> b!898826 m!835395))

(declare-fun m!835397 () Bool)

(assert (=> b!898826 m!835397))

(declare-fun m!835399 () Bool)

(assert (=> bm!39904 m!835399))

(assert (=> b!898831 m!835395))

(assert (=> b!898831 m!835395))

(declare-fun m!835401 () Bool)

(assert (=> b!898831 m!835401))

(declare-fun m!835403 () Bool)

(assert (=> b!898819 m!835403))

(declare-fun m!835405 () Bool)

(assert (=> b!898819 m!835405))

(assert (=> b!898819 m!835405))

(assert (=> b!898819 m!835403))

(declare-fun m!835407 () Bool)

(assert (=> b!898819 m!835407))

(assert (=> b!898819 m!835395))

(declare-fun m!835409 () Bool)

(assert (=> b!898819 m!835409))

(assert (=> b!898819 m!835395))

(assert (=> d!111281 m!835335))

(assert (=> b!898827 m!835395))

(assert (=> b!898827 m!835395))

(assert (=> b!898827 m!835401))

(declare-fun m!835411 () Bool)

(assert (=> bm!39901 m!835411))

(declare-fun m!835413 () Bool)

(assert (=> b!898829 m!835413))

(declare-fun m!835415 () Bool)

(assert (=> b!898829 m!835415))

(declare-fun m!835417 () Bool)

(assert (=> b!898829 m!835417))

(declare-fun m!835419 () Bool)

(assert (=> b!898829 m!835419))

(declare-fun m!835421 () Bool)

(assert (=> b!898829 m!835421))

(assert (=> b!898829 m!835417))

(declare-fun m!835423 () Bool)

(assert (=> b!898829 m!835423))

(assert (=> b!898829 m!835395))

(declare-fun m!835425 () Bool)

(assert (=> b!898829 m!835425))

(declare-fun m!835427 () Bool)

(assert (=> b!898829 m!835427))

(assert (=> b!898829 m!835427))

(declare-fun m!835429 () Bool)

(assert (=> b!898829 m!835429))

(declare-fun m!835431 () Bool)

(assert (=> b!898829 m!835431))

(declare-fun m!835433 () Bool)

(assert (=> b!898829 m!835433))

(assert (=> b!898829 m!835387))

(declare-fun m!835435 () Bool)

(assert (=> b!898829 m!835435))

(declare-fun m!835437 () Bool)

(assert (=> b!898829 m!835437))

(declare-fun m!835439 () Bool)

(assert (=> b!898829 m!835439))

(assert (=> b!898829 m!835435))

(assert (=> b!898829 m!835421))

(declare-fun m!835441 () Bool)

(assert (=> b!898829 m!835441))

(declare-fun m!835443 () Bool)

(assert (=> bm!39906 m!835443))

(assert (=> b!898720 d!111281))

(declare-fun d!111283 () Bool)

(assert (=> d!111283 (arrayContainsKey!0 (_keys!10197 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405902 () Unit!30517)

(declare-fun choose!13 (array!52728 (_ BitVec 64) (_ BitVec 32)) Unit!30517)

(assert (=> d!111283 (= lt!405902 (choose!13 (_keys!10197 thiss!1181) key!785 (index!38031 lt!405800)))))

(assert (=> d!111283 (bvsge (index!38031 lt!405800) #b00000000000000000000000000000000)))

(assert (=> d!111283 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10197 thiss!1181) key!785 (index!38031 lt!405800)) lt!405902)))

(declare-fun bs!25223 () Bool)

(assert (= bs!25223 d!111283))

(assert (=> bs!25223 m!835333))

(declare-fun m!835445 () Bool)

(assert (=> bs!25223 m!835445))

(assert (=> b!898720 d!111283))

(declare-fun d!111285 () Bool)

(declare-fun e!502909 () Bool)

(assert (=> d!111285 e!502909))

(declare-fun res!607412 () Bool)

(assert (=> d!111285 (=> res!607412 e!502909)))

(declare-fun lt!405911 () Bool)

(assert (=> d!111285 (= res!607412 (not lt!405911))))

(declare-fun lt!405914 () Bool)

(assert (=> d!111285 (= lt!405911 lt!405914)))

(declare-fun lt!405912 () Unit!30517)

(declare-fun e!502910 () Unit!30517)

(assert (=> d!111285 (= lt!405912 e!502910)))

(declare-fun c!94976 () Bool)

(assert (=> d!111285 (= c!94976 lt!405914)))

(declare-fun containsKey!427 (List!17919 (_ BitVec 64)) Bool)

(assert (=> d!111285 (= lt!405914 (containsKey!427 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800))))))

(assert (=> d!111285 (= (contains!4401 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800))) lt!405911)))

(declare-fun b!898840 () Bool)

(declare-fun lt!405913 () Unit!30517)

(assert (=> b!898840 (= e!502910 lt!405913)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!322 (List!17919 (_ BitVec 64)) Unit!30517)

(assert (=> b!898840 (= lt!405913 (lemmaContainsKeyImpliesGetValueByKeyDefined!322 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800))))))

(declare-datatypes ((Option!463 0))(
  ( (Some!462 (v!11717 V!29433)) (None!461) )
))
(declare-fun isDefined!332 (Option!463) Bool)

(declare-fun getValueByKey!457 (List!17919 (_ BitVec 64)) Option!463)

(assert (=> b!898840 (isDefined!332 (getValueByKey!457 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800))))))

(declare-fun b!898841 () Bool)

(declare-fun Unit!30522 () Unit!30517)

(assert (=> b!898841 (= e!502910 Unit!30522)))

(declare-fun b!898842 () Bool)

(assert (=> b!898842 (= e!502909 (isDefined!332 (getValueByKey!457 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800)))))))

(assert (= (and d!111285 c!94976) b!898840))

(assert (= (and d!111285 (not c!94976)) b!898841))

(assert (= (and d!111285 (not res!607412)) b!898842))

(assert (=> d!111285 m!835327))

(declare-fun m!835447 () Bool)

(assert (=> d!111285 m!835447))

(assert (=> b!898840 m!835327))

(declare-fun m!835449 () Bool)

(assert (=> b!898840 m!835449))

(assert (=> b!898840 m!835327))

(declare-fun m!835451 () Bool)

(assert (=> b!898840 m!835451))

(assert (=> b!898840 m!835451))

(declare-fun m!835453 () Bool)

(assert (=> b!898840 m!835453))

(assert (=> b!898842 m!835327))

(assert (=> b!898842 m!835451))

(assert (=> b!898842 m!835451))

(assert (=> b!898842 m!835453))

(assert (=> b!898720 d!111285))

(declare-fun d!111287 () Bool)

(declare-fun res!607417 () Bool)

(declare-fun e!502915 () Bool)

(assert (=> d!111287 (=> res!607417 e!502915)))

(assert (=> d!111287 (= res!607417 (= (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111287 (= (arrayContainsKey!0 (_keys!10197 thiss!1181) key!785 #b00000000000000000000000000000000) e!502915)))

(declare-fun b!898847 () Bool)

(declare-fun e!502916 () Bool)

(assert (=> b!898847 (= e!502915 e!502916)))

(declare-fun res!607418 () Bool)

(assert (=> b!898847 (=> (not res!607418) (not e!502916))))

(assert (=> b!898847 (= res!607418 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25793 (_keys!10197 thiss!1181))))))

(declare-fun b!898848 () Bool)

(assert (=> b!898848 (= e!502916 (arrayContainsKey!0 (_keys!10197 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111287 (not res!607417)) b!898847))

(assert (= (and b!898847 res!607418) b!898848))

(assert (=> d!111287 m!835395))

(declare-fun m!835455 () Bool)

(assert (=> b!898848 m!835455))

(assert (=> b!898720 d!111287))

(declare-fun d!111289 () Bool)

(declare-fun e!502919 () Bool)

(assert (=> d!111289 e!502919))

(declare-fun res!607421 () Bool)

(assert (=> d!111289 (=> (not res!607421) (not e!502919))))

(assert (=> d!111289 (= res!607421 (and (bvsge (index!38031 lt!405800) #b00000000000000000000000000000000) (bvslt (index!38031 lt!405800) (size!25793 (_keys!10197 thiss!1181)))))))

(declare-fun lt!405917 () Unit!30517)

(declare-fun choose!1504 (array!52728 array!52730 (_ BitVec 32) (_ BitVec 32) V!29433 V!29433 (_ BitVec 32) Int) Unit!30517)

(assert (=> d!111289 (= lt!405917 (choose!1504 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) (index!38031 lt!405800) (defaultEntry!5420 thiss!1181)))))

(assert (=> d!111289 (validMask!0 (mask!26154 thiss!1181))))

(assert (=> d!111289 (= (lemmaValidKeyInArrayIsInListMap!236 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) (index!38031 lt!405800) (defaultEntry!5420 thiss!1181)) lt!405917)))

(declare-fun b!898851 () Bool)

(assert (=> b!898851 (= e!502919 (contains!4401 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800))))))

(assert (= (and d!111289 res!607421) b!898851))

(declare-fun m!835457 () Bool)

(assert (=> d!111289 m!835457))

(assert (=> d!111289 m!835335))

(assert (=> b!898851 m!835337))

(assert (=> b!898851 m!835327))

(assert (=> b!898851 m!835337))

(assert (=> b!898851 m!835327))

(assert (=> b!898851 m!835339))

(assert (=> b!898720 d!111289))

(declare-fun d!111291 () Bool)

(assert (=> d!111291 (= (inRange!0 (index!38031 lt!405800) (mask!26154 thiss!1181)) (and (bvsge (index!38031 lt!405800) #b00000000000000000000000000000000) (bvslt (index!38031 lt!405800) (bvadd (mask!26154 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!898719 d!111291))

(declare-fun d!111293 () Bool)

(declare-fun res!607428 () Bool)

(declare-fun e!502922 () Bool)

(assert (=> d!111293 (=> (not res!607428) (not e!502922))))

(declare-fun simpleValid!324 (LongMapFixedSize!4404) Bool)

(assert (=> d!111293 (= res!607428 (simpleValid!324 thiss!1181))))

(assert (=> d!111293 (= (valid!1678 thiss!1181) e!502922)))

(declare-fun b!898858 () Bool)

(declare-fun res!607429 () Bool)

(assert (=> b!898858 (=> (not res!607429) (not e!502922))))

(declare-fun arrayCountValidKeys!0 (array!52728 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!898858 (= res!607429 (= (arrayCountValidKeys!0 (_keys!10197 thiss!1181) #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))) (_size!2257 thiss!1181)))))

(declare-fun b!898859 () Bool)

(declare-fun res!607430 () Bool)

(assert (=> b!898859 (=> (not res!607430) (not e!502922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52728 (_ BitVec 32)) Bool)

(assert (=> b!898859 (= res!607430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10197 thiss!1181) (mask!26154 thiss!1181)))))

(declare-fun b!898860 () Bool)

(declare-datatypes ((List!17921 0))(
  ( (Nil!17918) (Cons!17917 (h!19060 (_ BitVec 64)) (t!25274 List!17921)) )
))
(declare-fun arrayNoDuplicates!0 (array!52728 (_ BitVec 32) List!17921) Bool)

(assert (=> b!898860 (= e!502922 (arrayNoDuplicates!0 (_keys!10197 thiss!1181) #b00000000000000000000000000000000 Nil!17918))))

(assert (= (and d!111293 res!607428) b!898858))

(assert (= (and b!898858 res!607429) b!898859))

(assert (= (and b!898859 res!607430) b!898860))

(declare-fun m!835459 () Bool)

(assert (=> d!111293 m!835459))

(declare-fun m!835461 () Bool)

(assert (=> b!898858 m!835461))

(declare-fun m!835463 () Bool)

(assert (=> b!898859 m!835463))

(declare-fun m!835465 () Bool)

(assert (=> b!898860 m!835465))

(assert (=> start!76906 d!111293))

(declare-fun b!898868 () Bool)

(declare-fun e!502928 () Bool)

(assert (=> b!898868 (= e!502928 tp_is_empty!18351)))

(declare-fun b!898867 () Bool)

(declare-fun e!502927 () Bool)

(assert (=> b!898867 (= e!502927 tp_is_empty!18351)))

(declare-fun condMapEmpty!29191 () Bool)

(declare-fun mapDefault!29191 () ValueCell!8694)

(assert (=> mapNonEmpty!29185 (= condMapEmpty!29191 (= mapRest!29185 ((as const (Array (_ BitVec 32) ValueCell!8694)) mapDefault!29191)))))

(declare-fun mapRes!29191 () Bool)

(assert (=> mapNonEmpty!29185 (= tp!56142 (and e!502928 mapRes!29191))))

(declare-fun mapIsEmpty!29191 () Bool)

(assert (=> mapIsEmpty!29191 mapRes!29191))

(declare-fun mapNonEmpty!29191 () Bool)

(declare-fun tp!56152 () Bool)

(assert (=> mapNonEmpty!29191 (= mapRes!29191 (and tp!56152 e!502927))))

(declare-fun mapValue!29191 () ValueCell!8694)

(declare-fun mapKey!29191 () (_ BitVec 32))

(declare-fun mapRest!29191 () (Array (_ BitVec 32) ValueCell!8694))

(assert (=> mapNonEmpty!29191 (= mapRest!29185 (store mapRest!29191 mapKey!29191 mapValue!29191))))

(assert (= (and mapNonEmpty!29185 condMapEmpty!29191) mapIsEmpty!29191))

(assert (= (and mapNonEmpty!29185 (not condMapEmpty!29191)) mapNonEmpty!29191))

(assert (= (and mapNonEmpty!29191 ((_ is ValueCellFull!8694) mapValue!29191)) b!898867))

(assert (= (and mapNonEmpty!29185 ((_ is ValueCellFull!8694) mapDefault!29191)) b!898868))

(declare-fun m!835467 () Bool)

(assert (=> mapNonEmpty!29191 m!835467))

(declare-fun b_lambda!13007 () Bool)

(assert (= b_lambda!13005 (or (and b!898718 b_free!16023) b_lambda!13007)))

(check-sat (not bm!39906) (not d!111283) (not b!898828) (not b_lambda!13007) (not b!898812) (not d!111289) (not b!898827) (not mapNonEmpty!29191) (not bm!39905) (not b!898829) (not d!111275) (not b!898848) (not bm!39901) (not b!898860) (not b_next!16023) (not b!898831) (not d!111281) (not bm!39904) (not b!898840) (not b!898842) (not b!898830) (not b!898851) (not d!111285) tp_is_empty!18351 (not d!111293) (not b!898859) (not b!898858) (not b!898826) (not b!898819) (not b!898750) (not d!111277) b_and!26345 (not b!898766))
(check-sat b_and!26345 (not b_next!16023))
(get-model)

(declare-fun b!898879 () Bool)

(declare-fun res!607440 () Bool)

(declare-fun e!502931 () Bool)

(assert (=> b!898879 (=> (not res!607440) (not e!502931))))

(declare-fun size!25797 (LongMapFixedSize!4404) (_ BitVec 32))

(assert (=> b!898879 (= res!607440 (= (size!25797 thiss!1181) (bvadd (_size!2257 thiss!1181) (bvsdiv (bvadd (extraKeys!5138 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!898878 () Bool)

(declare-fun res!607441 () Bool)

(assert (=> b!898878 (=> (not res!607441) (not e!502931))))

(assert (=> b!898878 (= res!607441 (bvsge (size!25797 thiss!1181) (_size!2257 thiss!1181)))))

(declare-fun d!111295 () Bool)

(declare-fun res!607439 () Bool)

(assert (=> d!111295 (=> (not res!607439) (not e!502931))))

(assert (=> d!111295 (= res!607439 (validMask!0 (mask!26154 thiss!1181)))))

(assert (=> d!111295 (= (simpleValid!324 thiss!1181) e!502931)))

(declare-fun b!898880 () Bool)

(assert (=> b!898880 (= e!502931 (and (bvsge (extraKeys!5138 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5138 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2257 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!898877 () Bool)

(declare-fun res!607442 () Bool)

(assert (=> b!898877 (=> (not res!607442) (not e!502931))))

(assert (=> b!898877 (= res!607442 (and (= (size!25794 (_values!5429 thiss!1181)) (bvadd (mask!26154 thiss!1181) #b00000000000000000000000000000001)) (= (size!25793 (_keys!10197 thiss!1181)) (size!25794 (_values!5429 thiss!1181))) (bvsge (_size!2257 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2257 thiss!1181) (bvadd (mask!26154 thiss!1181) #b00000000000000000000000000000001))))))

(assert (= (and d!111295 res!607439) b!898877))

(assert (= (and b!898877 res!607442) b!898878))

(assert (= (and b!898878 res!607441) b!898879))

(assert (= (and b!898879 res!607440) b!898880))

(declare-fun m!835469 () Bool)

(assert (=> b!898879 m!835469))

(assert (=> b!898878 m!835469))

(assert (=> d!111295 m!835335))

(assert (=> d!111293 d!111295))

(declare-fun d!111297 () Bool)

(assert (=> d!111297 (= (inRange!0 (index!38031 lt!405821) (mask!26154 thiss!1181)) (and (bvsge (index!38031 lt!405821) #b00000000000000000000000000000000) (bvslt (index!38031 lt!405821) (bvadd (mask!26154 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!898750 d!111297))

(declare-fun d!111299 () Bool)

(assert (=> d!111299 (= (validKeyInArray!0 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)) (and (not (= (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!898831 d!111299))

(declare-fun d!111301 () Bool)

(declare-fun isEmpty!691 (Option!463) Bool)

(assert (=> d!111301 (= (isDefined!332 (getValueByKey!457 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800)))) (not (isEmpty!691 (getValueByKey!457 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800))))))))

(declare-fun bs!25224 () Bool)

(assert (= bs!25224 d!111301))

(assert (=> bs!25224 m!835451))

(declare-fun m!835471 () Bool)

(assert (=> bs!25224 m!835471))

(assert (=> b!898842 d!111301))

(declare-fun d!111303 () Bool)

(declare-fun c!94981 () Bool)

(assert (=> d!111303 (= c!94981 (and ((_ is Cons!17915) (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)))) (= (_1!6039 (h!19058 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800)))))))

(declare-fun e!502936 () Option!463)

(assert (=> d!111303 (= (getValueByKey!457 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800))) e!502936)))

(declare-fun b!898892 () Bool)

(declare-fun e!502937 () Option!463)

(assert (=> b!898892 (= e!502937 None!461)))

(declare-fun b!898891 () Bool)

(assert (=> b!898891 (= e!502937 (getValueByKey!457 (t!25270 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800))))))

(declare-fun b!898889 () Bool)

(assert (=> b!898889 (= e!502936 (Some!462 (_2!6039 (h!19058 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)))))))))

(declare-fun b!898890 () Bool)

(assert (=> b!898890 (= e!502936 e!502937)))

(declare-fun c!94982 () Bool)

(assert (=> b!898890 (= c!94982 (and ((_ is Cons!17915) (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)))) (not (= (_1!6039 (h!19058 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800))))))))

(assert (= (and d!111303 c!94981) b!898889))

(assert (= (and d!111303 (not c!94981)) b!898890))

(assert (= (and b!898890 c!94982) b!898891))

(assert (= (and b!898890 (not c!94982)) b!898892))

(assert (=> b!898891 m!835327))

(declare-fun m!835473 () Bool)

(assert (=> b!898891 m!835473))

(assert (=> b!898842 d!111303))

(declare-fun d!111305 () Bool)

(declare-fun e!502938 () Bool)

(assert (=> d!111305 e!502938))

(declare-fun res!607443 () Bool)

(assert (=> d!111305 (=> res!607443 e!502938)))

(declare-fun lt!405918 () Bool)

(assert (=> d!111305 (= res!607443 (not lt!405918))))

(declare-fun lt!405921 () Bool)

(assert (=> d!111305 (= lt!405918 lt!405921)))

(declare-fun lt!405919 () Unit!30517)

(declare-fun e!502939 () Unit!30517)

(assert (=> d!111305 (= lt!405919 e!502939)))

(declare-fun c!94983 () Bool)

(assert (=> d!111305 (= c!94983 lt!405921)))

(assert (=> d!111305 (= lt!405921 (containsKey!427 (toList!5400 lt!405890) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!111305 (= (contains!4401 lt!405890 #b1000000000000000000000000000000000000000000000000000000000000000) lt!405918)))

(declare-fun b!898893 () Bool)

(declare-fun lt!405920 () Unit!30517)

(assert (=> b!898893 (= e!502939 lt!405920)))

(assert (=> b!898893 (= lt!405920 (lemmaContainsKeyImpliesGetValueByKeyDefined!322 (toList!5400 lt!405890) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!898893 (isDefined!332 (getValueByKey!457 (toList!5400 lt!405890) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!898894 () Bool)

(declare-fun Unit!30523 () Unit!30517)

(assert (=> b!898894 (= e!502939 Unit!30523)))

(declare-fun b!898895 () Bool)

(assert (=> b!898895 (= e!502938 (isDefined!332 (getValueByKey!457 (toList!5400 lt!405890) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!111305 c!94983) b!898893))

(assert (= (and d!111305 (not c!94983)) b!898894))

(assert (= (and d!111305 (not res!607443)) b!898895))

(declare-fun m!835475 () Bool)

(assert (=> d!111305 m!835475))

(declare-fun m!835477 () Bool)

(assert (=> b!898893 m!835477))

(declare-fun m!835479 () Bool)

(assert (=> b!898893 m!835479))

(assert (=> b!898893 m!835479))

(declare-fun m!835481 () Bool)

(assert (=> b!898893 m!835481))

(assert (=> b!898895 m!835479))

(assert (=> b!898895 m!835479))

(assert (=> b!898895 m!835481))

(assert (=> bm!39906 d!111305))

(declare-fun d!111307 () Bool)

(declare-fun get!13334 (Option!463) V!29433)

(assert (=> d!111307 (= (apply!411 lt!405890 #b1000000000000000000000000000000000000000000000000000000000000000) (get!13334 (getValueByKey!457 (toList!5400 lt!405890) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25225 () Bool)

(assert (= bs!25225 d!111307))

(assert (=> bs!25225 m!835479))

(assert (=> bs!25225 m!835479))

(declare-fun m!835483 () Bool)

(assert (=> bs!25225 m!835483))

(assert (=> b!898830 d!111307))

(assert (=> d!111275 d!111277))

(declare-fun d!111309 () Bool)

(declare-fun e!502942 () Bool)

(assert (=> d!111309 e!502942))

(declare-fun res!607446 () Bool)

(assert (=> d!111309 (=> res!607446 e!502942)))

(declare-fun lt!405924 () SeekEntryResult!8915)

(assert (=> d!111309 (= res!607446 (not ((_ is Found!8915) lt!405924)))))

(assert (=> d!111309 (= lt!405924 (seekEntry!0 key!785 (_keys!10197 thiss!1181) (mask!26154 thiss!1181)))))

(assert (=> d!111309 true))

(declare-fun _$36!369 () Unit!30517)

(assert (=> d!111309 (= (choose!1503 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) key!785) _$36!369)))

(declare-fun b!898898 () Bool)

(assert (=> b!898898 (= e!502942 (inRange!0 (index!38031 lt!405924) (mask!26154 thiss!1181)))))

(assert (= (and d!111309 (not res!607446)) b!898898))

(assert (=> d!111309 m!835319))

(declare-fun m!835485 () Bool)

(assert (=> b!898898 m!835485))

(assert (=> d!111275 d!111309))

(assert (=> d!111275 d!111279))

(declare-fun d!111311 () Bool)

(assert (=> d!111311 (= (apply!411 lt!405890 #b0000000000000000000000000000000000000000000000000000000000000000) (get!13334 (getValueByKey!457 (toList!5400 lt!405890) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25226 () Bool)

(assert (= bs!25226 d!111311))

(declare-fun m!835487 () Bool)

(assert (=> bs!25226 m!835487))

(assert (=> bs!25226 m!835487))

(declare-fun m!835489 () Bool)

(assert (=> bs!25226 m!835489))

(assert (=> b!898812 d!111311))

(declare-fun d!111313 () Bool)

(assert (=> d!111313 (isDefined!332 (getValueByKey!457 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800))))))

(declare-fun lt!405927 () Unit!30517)

(declare-fun choose!1505 (List!17919 (_ BitVec 64)) Unit!30517)

(assert (=> d!111313 (= lt!405927 (choose!1505 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800))))))

(declare-fun e!502945 () Bool)

(assert (=> d!111313 e!502945))

(declare-fun res!607449 () Bool)

(assert (=> d!111313 (=> (not res!607449) (not e!502945))))

(declare-fun isStrictlySorted!494 (List!17919) Bool)

(assert (=> d!111313 (= res!607449 (isStrictlySorted!494 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)))))))

(assert (=> d!111313 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!322 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800))) lt!405927)))

(declare-fun b!898901 () Bool)

(assert (=> b!898901 (= e!502945 (containsKey!427 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800))))))

(assert (= (and d!111313 res!607449) b!898901))

(assert (=> d!111313 m!835327))

(assert (=> d!111313 m!835451))

(assert (=> d!111313 m!835451))

(assert (=> d!111313 m!835453))

(assert (=> d!111313 m!835327))

(declare-fun m!835491 () Bool)

(assert (=> d!111313 m!835491))

(declare-fun m!835493 () Bool)

(assert (=> d!111313 m!835493))

(assert (=> b!898901 m!835327))

(assert (=> b!898901 m!835447))

(assert (=> b!898840 d!111313))

(assert (=> b!898840 d!111301))

(assert (=> b!898840 d!111303))

(declare-fun d!111315 () Bool)

(declare-fun e!502948 () Bool)

(assert (=> d!111315 e!502948))

(declare-fun res!607454 () Bool)

(assert (=> d!111315 (=> (not res!607454) (not e!502948))))

(declare-fun lt!405939 () ListLongMap!10769)

(assert (=> d!111315 (= res!607454 (contains!4401 lt!405939 (_1!6039 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181)))))))

(declare-fun lt!405937 () List!17919)

(assert (=> d!111315 (= lt!405939 (ListLongMap!10770 lt!405937))))

(declare-fun lt!405936 () Unit!30517)

(declare-fun lt!405938 () Unit!30517)

(assert (=> d!111315 (= lt!405936 lt!405938)))

(assert (=> d!111315 (= (getValueByKey!457 lt!405937 (_1!6039 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181)))) (Some!462 (_2!6039 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!250 (List!17919 (_ BitVec 64) V!29433) Unit!30517)

(assert (=> d!111315 (= lt!405938 (lemmaContainsTupThenGetReturnValue!250 lt!405937 (_1!6039 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181))) (_2!6039 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181)))))))

(declare-fun insertStrictlySorted!306 (List!17919 (_ BitVec 64) V!29433) List!17919)

(assert (=> d!111315 (= lt!405937 (insertStrictlySorted!306 (toList!5400 lt!405897) (_1!6039 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181))) (_2!6039 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181)))))))

(assert (=> d!111315 (= (+!2547 lt!405897 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181))) lt!405939)))

(declare-fun b!898906 () Bool)

(declare-fun res!607455 () Bool)

(assert (=> b!898906 (=> (not res!607455) (not e!502948))))

(assert (=> b!898906 (= res!607455 (= (getValueByKey!457 (toList!5400 lt!405939) (_1!6039 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181)))) (Some!462 (_2!6039 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181))))))))

(declare-fun b!898907 () Bool)

(declare-fun contains!4403 (List!17919 tuple2!12058) Bool)

(assert (=> b!898907 (= e!502948 (contains!4403 (toList!5400 lt!405939) (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181))))))

(assert (= (and d!111315 res!607454) b!898906))

(assert (= (and b!898906 res!607455) b!898907))

(declare-fun m!835495 () Bool)

(assert (=> d!111315 m!835495))

(declare-fun m!835497 () Bool)

(assert (=> d!111315 m!835497))

(declare-fun m!835499 () Bool)

(assert (=> d!111315 m!835499))

(declare-fun m!835501 () Bool)

(assert (=> d!111315 m!835501))

(declare-fun m!835503 () Bool)

(assert (=> b!898906 m!835503))

(declare-fun m!835505 () Bool)

(assert (=> b!898907 m!835505))

(assert (=> b!898829 d!111315))

(declare-fun d!111317 () Bool)

(assert (=> d!111317 (= (apply!411 (+!2547 lt!405896 (tuple2!12059 lt!405894 (minValue!5242 thiss!1181))) lt!405891) (apply!411 lt!405896 lt!405891))))

(declare-fun lt!405942 () Unit!30517)

(declare-fun choose!1506 (ListLongMap!10769 (_ BitVec 64) V!29433 (_ BitVec 64)) Unit!30517)

(assert (=> d!111317 (= lt!405942 (choose!1506 lt!405896 lt!405894 (minValue!5242 thiss!1181) lt!405891))))

(declare-fun e!502951 () Bool)

(assert (=> d!111317 e!502951))

(declare-fun res!607458 () Bool)

(assert (=> d!111317 (=> (not res!607458) (not e!502951))))

(assert (=> d!111317 (= res!607458 (contains!4401 lt!405896 lt!405891))))

(assert (=> d!111317 (= (addApplyDifferent!333 lt!405896 lt!405894 (minValue!5242 thiss!1181) lt!405891) lt!405942)))

(declare-fun b!898911 () Bool)

(assert (=> b!898911 (= e!502951 (not (= lt!405891 lt!405894)))))

(assert (= (and d!111317 res!607458) b!898911))

(declare-fun m!835507 () Bool)

(assert (=> d!111317 m!835507))

(assert (=> d!111317 m!835413))

(declare-fun m!835509 () Bool)

(assert (=> d!111317 m!835509))

(assert (=> d!111317 m!835417))

(assert (=> d!111317 m!835417))

(assert (=> d!111317 m!835423))

(assert (=> b!898829 d!111317))

(declare-fun d!111319 () Bool)

(assert (=> d!111319 (= (apply!411 lt!405887 lt!405889) (get!13334 (getValueByKey!457 (toList!5400 lt!405887) lt!405889)))))

(declare-fun bs!25227 () Bool)

(assert (= bs!25227 d!111319))

(declare-fun m!835511 () Bool)

(assert (=> bs!25227 m!835511))

(assert (=> bs!25227 m!835511))

(declare-fun m!835513 () Bool)

(assert (=> bs!25227 m!835513))

(assert (=> b!898829 d!111319))

(declare-fun d!111321 () Bool)

(assert (=> d!111321 (= (apply!411 (+!2547 lt!405887 (tuple2!12059 lt!405879 (minValue!5242 thiss!1181))) lt!405889) (get!13334 (getValueByKey!457 (toList!5400 (+!2547 lt!405887 (tuple2!12059 lt!405879 (minValue!5242 thiss!1181)))) lt!405889)))))

(declare-fun bs!25228 () Bool)

(assert (= bs!25228 d!111321))

(declare-fun m!835515 () Bool)

(assert (=> bs!25228 m!835515))

(assert (=> bs!25228 m!835515))

(declare-fun m!835517 () Bool)

(assert (=> bs!25228 m!835517))

(assert (=> b!898829 d!111321))

(declare-fun d!111323 () Bool)

(assert (=> d!111323 (= (apply!411 lt!405895 lt!405888) (get!13334 (getValueByKey!457 (toList!5400 lt!405895) lt!405888)))))

(declare-fun bs!25229 () Bool)

(assert (= bs!25229 d!111323))

(declare-fun m!835519 () Bool)

(assert (=> bs!25229 m!835519))

(assert (=> bs!25229 m!835519))

(declare-fun m!835521 () Bool)

(assert (=> bs!25229 m!835521))

(assert (=> b!898829 d!111323))

(declare-fun d!111325 () Bool)

(assert (=> d!111325 (= (apply!411 lt!405896 lt!405891) (get!13334 (getValueByKey!457 (toList!5400 lt!405896) lt!405891)))))

(declare-fun bs!25230 () Bool)

(assert (= bs!25230 d!111325))

(declare-fun m!835523 () Bool)

(assert (=> bs!25230 m!835523))

(assert (=> bs!25230 m!835523))

(declare-fun m!835525 () Bool)

(assert (=> bs!25230 m!835525))

(assert (=> b!898829 d!111325))

(declare-fun d!111327 () Bool)

(assert (=> d!111327 (= (apply!411 (+!2547 lt!405896 (tuple2!12059 lt!405894 (minValue!5242 thiss!1181))) lt!405891) (get!13334 (getValueByKey!457 (toList!5400 (+!2547 lt!405896 (tuple2!12059 lt!405894 (minValue!5242 thiss!1181)))) lt!405891)))))

(declare-fun bs!25231 () Bool)

(assert (= bs!25231 d!111327))

(declare-fun m!835527 () Bool)

(assert (=> bs!25231 m!835527))

(assert (=> bs!25231 m!835527))

(declare-fun m!835529 () Bool)

(assert (=> bs!25231 m!835529))

(assert (=> b!898829 d!111327))

(declare-fun b!898936 () Bool)

(assert (=> b!898936 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))))))

(assert (=> b!898936 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25794 (_values!5429 thiss!1181))))))

(declare-fun e!502968 () Bool)

(declare-fun lt!405962 () ListLongMap!10769)

(assert (=> b!898936 (= e!502968 (= (apply!411 lt!405962 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)) (get!13333 (select (arr!25337 (_values!5429 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1306 (defaultEntry!5420 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!898937 () Bool)

(declare-fun e!502970 () ListLongMap!10769)

(assert (=> b!898937 (= e!502970 (ListLongMap!10770 Nil!17916))))

(declare-fun b!898938 () Bool)

(declare-fun e!502972 () Bool)

(assert (=> b!898938 (= e!502972 (validKeyInArray!0 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!898938 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!111329 () Bool)

(declare-fun e!502969 () Bool)

(assert (=> d!111329 e!502969))

(declare-fun res!607467 () Bool)

(assert (=> d!111329 (=> (not res!607467) (not e!502969))))

(assert (=> d!111329 (= res!607467 (not (contains!4401 lt!405962 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!111329 (= lt!405962 e!502970)))

(declare-fun c!94995 () Bool)

(assert (=> d!111329 (= c!94995 (bvsge #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))))))

(assert (=> d!111329 (validMask!0 (mask!26154 thiss!1181))))

(assert (=> d!111329 (= (getCurrentListMapNoExtraKeys!3295 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)) lt!405962)))

(declare-fun b!898939 () Bool)

(declare-fun res!607469 () Bool)

(assert (=> b!898939 (=> (not res!607469) (not e!502969))))

(assert (=> b!898939 (= res!607469 (not (contains!4401 lt!405962 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!898940 () Bool)

(declare-fun e!502967 () ListLongMap!10769)

(declare-fun call!39913 () ListLongMap!10769)

(assert (=> b!898940 (= e!502967 call!39913)))

(declare-fun b!898941 () Bool)

(declare-fun e!502971 () Bool)

(assert (=> b!898941 (= e!502969 e!502971)))

(declare-fun c!94993 () Bool)

(assert (=> b!898941 (= c!94993 e!502972)))

(declare-fun res!607468 () Bool)

(assert (=> b!898941 (=> (not res!607468) (not e!502972))))

(assert (=> b!898941 (= res!607468 (bvslt #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))))))

(declare-fun b!898942 () Bool)

(declare-fun e!502966 () Bool)

(assert (=> b!898942 (= e!502966 (= lt!405962 (getCurrentListMapNoExtraKeys!3295 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5420 thiss!1181))))))

(declare-fun b!898943 () Bool)

(assert (=> b!898943 (= e!502970 e!502967)))

(declare-fun c!94992 () Bool)

(assert (=> b!898943 (= c!94992 (validKeyInArray!0 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!898944 () Bool)

(declare-fun isEmpty!692 (ListLongMap!10769) Bool)

(assert (=> b!898944 (= e!502966 (isEmpty!692 lt!405962))))

(declare-fun b!898945 () Bool)

(declare-fun lt!405963 () Unit!30517)

(declare-fun lt!405958 () Unit!30517)

(assert (=> b!898945 (= lt!405963 lt!405958)))

(declare-fun lt!405960 () (_ BitVec 64))

(declare-fun lt!405959 () V!29433)

(declare-fun lt!405961 () ListLongMap!10769)

(declare-fun lt!405957 () (_ BitVec 64))

(assert (=> b!898945 (not (contains!4401 (+!2547 lt!405961 (tuple2!12059 lt!405960 lt!405959)) lt!405957))))

(declare-fun addStillNotContains!217 (ListLongMap!10769 (_ BitVec 64) V!29433 (_ BitVec 64)) Unit!30517)

(assert (=> b!898945 (= lt!405958 (addStillNotContains!217 lt!405961 lt!405960 lt!405959 lt!405957))))

(assert (=> b!898945 (= lt!405957 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!898945 (= lt!405959 (get!13333 (select (arr!25337 (_values!5429 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1306 (defaultEntry!5420 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!898945 (= lt!405960 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!898945 (= lt!405961 call!39913)))

(assert (=> b!898945 (= e!502967 (+!2547 call!39913 (tuple2!12059 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000) (get!13333 (select (arr!25337 (_values!5429 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1306 (defaultEntry!5420 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!898946 () Bool)

(assert (=> b!898946 (= e!502971 e!502966)))

(declare-fun c!94994 () Bool)

(assert (=> b!898946 (= c!94994 (bvslt #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))))))

(declare-fun bm!39910 () Bool)

(assert (=> bm!39910 (= call!39913 (getCurrentListMapNoExtraKeys!3295 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5420 thiss!1181)))))

(declare-fun b!898947 () Bool)

(assert (=> b!898947 (= e!502971 e!502968)))

(assert (=> b!898947 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))))))

(declare-fun res!607470 () Bool)

(assert (=> b!898947 (= res!607470 (contains!4401 lt!405962 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!898947 (=> (not res!607470) (not e!502968))))

(assert (= (and d!111329 c!94995) b!898937))

(assert (= (and d!111329 (not c!94995)) b!898943))

(assert (= (and b!898943 c!94992) b!898945))

(assert (= (and b!898943 (not c!94992)) b!898940))

(assert (= (or b!898945 b!898940) bm!39910))

(assert (= (and d!111329 res!607467) b!898939))

(assert (= (and b!898939 res!607469) b!898941))

(assert (= (and b!898941 res!607468) b!898938))

(assert (= (and b!898941 c!94993) b!898947))

(assert (= (and b!898941 (not c!94993)) b!898946))

(assert (= (and b!898947 res!607470) b!898936))

(assert (= (and b!898946 c!94994) b!898942))

(assert (= (and b!898946 (not c!94994)) b!898944))

(declare-fun b_lambda!13009 () Bool)

(assert (=> (not b_lambda!13009) (not b!898936)))

(assert (=> b!898936 t!25273))

(declare-fun b_and!26347 () Bool)

(assert (= b_and!26345 (and (=> t!25273 result!10165) b_and!26347)))

(declare-fun b_lambda!13011 () Bool)

(assert (=> (not b_lambda!13011) (not b!898945)))

(assert (=> b!898945 t!25273))

(declare-fun b_and!26349 () Bool)

(assert (= b_and!26347 (and (=> t!25273 result!10165) b_and!26349)))

(declare-fun m!835531 () Bool)

(assert (=> b!898942 m!835531))

(declare-fun m!835533 () Bool)

(assert (=> d!111329 m!835533))

(assert (=> d!111329 m!835335))

(assert (=> b!898947 m!835395))

(assert (=> b!898947 m!835395))

(declare-fun m!835535 () Bool)

(assert (=> b!898947 m!835535))

(assert (=> b!898943 m!835395))

(assert (=> b!898943 m!835395))

(assert (=> b!898943 m!835401))

(assert (=> b!898936 m!835405))

(assert (=> b!898936 m!835405))

(assert (=> b!898936 m!835403))

(assert (=> b!898936 m!835407))

(assert (=> b!898936 m!835395))

(declare-fun m!835537 () Bool)

(assert (=> b!898936 m!835537))

(assert (=> b!898936 m!835395))

(assert (=> b!898936 m!835403))

(assert (=> b!898938 m!835395))

(assert (=> b!898938 m!835395))

(assert (=> b!898938 m!835401))

(assert (=> b!898945 m!835405))

(declare-fun m!835539 () Bool)

(assert (=> b!898945 m!835539))

(declare-fun m!835541 () Bool)

(assert (=> b!898945 m!835541))

(assert (=> b!898945 m!835403))

(declare-fun m!835543 () Bool)

(assert (=> b!898945 m!835543))

(declare-fun m!835545 () Bool)

(assert (=> b!898945 m!835545))

(assert (=> b!898945 m!835405))

(assert (=> b!898945 m!835403))

(assert (=> b!898945 m!835407))

(assert (=> b!898945 m!835395))

(assert (=> b!898945 m!835543))

(declare-fun m!835547 () Bool)

(assert (=> b!898939 m!835547))

(assert (=> bm!39910 m!835531))

(declare-fun m!835549 () Bool)

(assert (=> b!898944 m!835549))

(assert (=> b!898829 d!111329))

(declare-fun d!111331 () Bool)

(assert (=> d!111331 (= (apply!411 (+!2547 lt!405895 (tuple2!12059 lt!405892 (zeroValue!5242 thiss!1181))) lt!405888) (apply!411 lt!405895 lt!405888))))

(declare-fun lt!405964 () Unit!30517)

(assert (=> d!111331 (= lt!405964 (choose!1506 lt!405895 lt!405892 (zeroValue!5242 thiss!1181) lt!405888))))

(declare-fun e!502973 () Bool)

(assert (=> d!111331 e!502973))

(declare-fun res!607471 () Bool)

(assert (=> d!111331 (=> (not res!607471) (not e!502973))))

(assert (=> d!111331 (= res!607471 (contains!4401 lt!405895 lt!405888))))

(assert (=> d!111331 (= (addApplyDifferent!333 lt!405895 lt!405892 (zeroValue!5242 thiss!1181) lt!405888) lt!405964)))

(declare-fun b!898948 () Bool)

(assert (=> b!898948 (= e!502973 (not (= lt!405888 lt!405892)))))

(assert (= (and d!111331 res!607471) b!898948))

(declare-fun m!835551 () Bool)

(assert (=> d!111331 m!835551))

(assert (=> d!111331 m!835425))

(declare-fun m!835553 () Bool)

(assert (=> d!111331 m!835553))

(assert (=> d!111331 m!835427))

(assert (=> d!111331 m!835427))

(assert (=> d!111331 m!835429))

(assert (=> b!898829 d!111331))

(declare-fun d!111333 () Bool)

(declare-fun e!502974 () Bool)

(assert (=> d!111333 e!502974))

(declare-fun res!607472 () Bool)

(assert (=> d!111333 (=> (not res!607472) (not e!502974))))

(declare-fun lt!405968 () ListLongMap!10769)

(assert (=> d!111333 (= res!607472 (contains!4401 lt!405968 (_1!6039 (tuple2!12059 lt!405892 (zeroValue!5242 thiss!1181)))))))

(declare-fun lt!405966 () List!17919)

(assert (=> d!111333 (= lt!405968 (ListLongMap!10770 lt!405966))))

(declare-fun lt!405965 () Unit!30517)

(declare-fun lt!405967 () Unit!30517)

(assert (=> d!111333 (= lt!405965 lt!405967)))

(assert (=> d!111333 (= (getValueByKey!457 lt!405966 (_1!6039 (tuple2!12059 lt!405892 (zeroValue!5242 thiss!1181)))) (Some!462 (_2!6039 (tuple2!12059 lt!405892 (zeroValue!5242 thiss!1181)))))))

(assert (=> d!111333 (= lt!405967 (lemmaContainsTupThenGetReturnValue!250 lt!405966 (_1!6039 (tuple2!12059 lt!405892 (zeroValue!5242 thiss!1181))) (_2!6039 (tuple2!12059 lt!405892 (zeroValue!5242 thiss!1181)))))))

(assert (=> d!111333 (= lt!405966 (insertStrictlySorted!306 (toList!5400 lt!405895) (_1!6039 (tuple2!12059 lt!405892 (zeroValue!5242 thiss!1181))) (_2!6039 (tuple2!12059 lt!405892 (zeroValue!5242 thiss!1181)))))))

(assert (=> d!111333 (= (+!2547 lt!405895 (tuple2!12059 lt!405892 (zeroValue!5242 thiss!1181))) lt!405968)))

(declare-fun b!898949 () Bool)

(declare-fun res!607473 () Bool)

(assert (=> b!898949 (=> (not res!607473) (not e!502974))))

(assert (=> b!898949 (= res!607473 (= (getValueByKey!457 (toList!5400 lt!405968) (_1!6039 (tuple2!12059 lt!405892 (zeroValue!5242 thiss!1181)))) (Some!462 (_2!6039 (tuple2!12059 lt!405892 (zeroValue!5242 thiss!1181))))))))

(declare-fun b!898950 () Bool)

(assert (=> b!898950 (= e!502974 (contains!4403 (toList!5400 lt!405968) (tuple2!12059 lt!405892 (zeroValue!5242 thiss!1181))))))

(assert (= (and d!111333 res!607472) b!898949))

(assert (= (and b!898949 res!607473) b!898950))

(declare-fun m!835555 () Bool)

(assert (=> d!111333 m!835555))

(declare-fun m!835557 () Bool)

(assert (=> d!111333 m!835557))

(declare-fun m!835559 () Bool)

(assert (=> d!111333 m!835559))

(declare-fun m!835561 () Bool)

(assert (=> d!111333 m!835561))

(declare-fun m!835563 () Bool)

(assert (=> b!898949 m!835563))

(declare-fun m!835565 () Bool)

(assert (=> b!898950 m!835565))

(assert (=> b!898829 d!111333))

(declare-fun d!111335 () Bool)

(declare-fun e!502975 () Bool)

(assert (=> d!111335 e!502975))

(declare-fun res!607474 () Bool)

(assert (=> d!111335 (=> res!607474 e!502975)))

(declare-fun lt!405969 () Bool)

(assert (=> d!111335 (= res!607474 (not lt!405969))))

(declare-fun lt!405972 () Bool)

(assert (=> d!111335 (= lt!405969 lt!405972)))

(declare-fun lt!405970 () Unit!30517)

(declare-fun e!502976 () Unit!30517)

(assert (=> d!111335 (= lt!405970 e!502976)))

(declare-fun c!94996 () Bool)

(assert (=> d!111335 (= c!94996 lt!405972)))

(assert (=> d!111335 (= lt!405972 (containsKey!427 (toList!5400 (+!2547 lt!405897 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181)))) lt!405886))))

(assert (=> d!111335 (= (contains!4401 (+!2547 lt!405897 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181))) lt!405886) lt!405969)))

(declare-fun b!898951 () Bool)

(declare-fun lt!405971 () Unit!30517)

(assert (=> b!898951 (= e!502976 lt!405971)))

(assert (=> b!898951 (= lt!405971 (lemmaContainsKeyImpliesGetValueByKeyDefined!322 (toList!5400 (+!2547 lt!405897 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181)))) lt!405886))))

(assert (=> b!898951 (isDefined!332 (getValueByKey!457 (toList!5400 (+!2547 lt!405897 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181)))) lt!405886))))

(declare-fun b!898952 () Bool)

(declare-fun Unit!30524 () Unit!30517)

(assert (=> b!898952 (= e!502976 Unit!30524)))

(declare-fun b!898953 () Bool)

(assert (=> b!898953 (= e!502975 (isDefined!332 (getValueByKey!457 (toList!5400 (+!2547 lt!405897 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181)))) lt!405886)))))

(assert (= (and d!111335 c!94996) b!898951))

(assert (= (and d!111335 (not c!94996)) b!898952))

(assert (= (and d!111335 (not res!607474)) b!898953))

(declare-fun m!835567 () Bool)

(assert (=> d!111335 m!835567))

(declare-fun m!835569 () Bool)

(assert (=> b!898951 m!835569))

(declare-fun m!835571 () Bool)

(assert (=> b!898951 m!835571))

(assert (=> b!898951 m!835571))

(declare-fun m!835573 () Bool)

(assert (=> b!898951 m!835573))

(assert (=> b!898953 m!835571))

(assert (=> b!898953 m!835571))

(assert (=> b!898953 m!835573))

(assert (=> b!898829 d!111335))

(declare-fun d!111337 () Bool)

(assert (=> d!111337 (= (apply!411 (+!2547 lt!405887 (tuple2!12059 lt!405879 (minValue!5242 thiss!1181))) lt!405889) (apply!411 lt!405887 lt!405889))))

(declare-fun lt!405973 () Unit!30517)

(assert (=> d!111337 (= lt!405973 (choose!1506 lt!405887 lt!405879 (minValue!5242 thiss!1181) lt!405889))))

(declare-fun e!502977 () Bool)

(assert (=> d!111337 e!502977))

(declare-fun res!607475 () Bool)

(assert (=> d!111337 (=> (not res!607475) (not e!502977))))

(assert (=> d!111337 (= res!607475 (contains!4401 lt!405887 lt!405889))))

(assert (=> d!111337 (= (addApplyDifferent!333 lt!405887 lt!405879 (minValue!5242 thiss!1181) lt!405889) lt!405973)))

(declare-fun b!898954 () Bool)

(assert (=> b!898954 (= e!502977 (not (= lt!405889 lt!405879)))))

(assert (= (and d!111337 res!607475) b!898954))

(declare-fun m!835575 () Bool)

(assert (=> d!111337 m!835575))

(assert (=> d!111337 m!835433))

(declare-fun m!835577 () Bool)

(assert (=> d!111337 m!835577))

(assert (=> d!111337 m!835421))

(assert (=> d!111337 m!835421))

(assert (=> d!111337 m!835441))

(assert (=> b!898829 d!111337))

(declare-fun d!111339 () Bool)

(declare-fun e!502978 () Bool)

(assert (=> d!111339 e!502978))

(declare-fun res!607476 () Bool)

(assert (=> d!111339 (=> (not res!607476) (not e!502978))))

(declare-fun lt!405977 () ListLongMap!10769)

(assert (=> d!111339 (= res!607476 (contains!4401 lt!405977 (_1!6039 (tuple2!12059 lt!405894 (minValue!5242 thiss!1181)))))))

(declare-fun lt!405975 () List!17919)

(assert (=> d!111339 (= lt!405977 (ListLongMap!10770 lt!405975))))

(declare-fun lt!405974 () Unit!30517)

(declare-fun lt!405976 () Unit!30517)

(assert (=> d!111339 (= lt!405974 lt!405976)))

(assert (=> d!111339 (= (getValueByKey!457 lt!405975 (_1!6039 (tuple2!12059 lt!405894 (minValue!5242 thiss!1181)))) (Some!462 (_2!6039 (tuple2!12059 lt!405894 (minValue!5242 thiss!1181)))))))

(assert (=> d!111339 (= lt!405976 (lemmaContainsTupThenGetReturnValue!250 lt!405975 (_1!6039 (tuple2!12059 lt!405894 (minValue!5242 thiss!1181))) (_2!6039 (tuple2!12059 lt!405894 (minValue!5242 thiss!1181)))))))

(assert (=> d!111339 (= lt!405975 (insertStrictlySorted!306 (toList!5400 lt!405896) (_1!6039 (tuple2!12059 lt!405894 (minValue!5242 thiss!1181))) (_2!6039 (tuple2!12059 lt!405894 (minValue!5242 thiss!1181)))))))

(assert (=> d!111339 (= (+!2547 lt!405896 (tuple2!12059 lt!405894 (minValue!5242 thiss!1181))) lt!405977)))

(declare-fun b!898955 () Bool)

(declare-fun res!607477 () Bool)

(assert (=> b!898955 (=> (not res!607477) (not e!502978))))

(assert (=> b!898955 (= res!607477 (= (getValueByKey!457 (toList!5400 lt!405977) (_1!6039 (tuple2!12059 lt!405894 (minValue!5242 thiss!1181)))) (Some!462 (_2!6039 (tuple2!12059 lt!405894 (minValue!5242 thiss!1181))))))))

(declare-fun b!898956 () Bool)

(assert (=> b!898956 (= e!502978 (contains!4403 (toList!5400 lt!405977) (tuple2!12059 lt!405894 (minValue!5242 thiss!1181))))))

(assert (= (and d!111339 res!607476) b!898955))

(assert (= (and b!898955 res!607477) b!898956))

(declare-fun m!835579 () Bool)

(assert (=> d!111339 m!835579))

(declare-fun m!835581 () Bool)

(assert (=> d!111339 m!835581))

(declare-fun m!835583 () Bool)

(assert (=> d!111339 m!835583))

(declare-fun m!835585 () Bool)

(assert (=> d!111339 m!835585))

(declare-fun m!835587 () Bool)

(assert (=> b!898955 m!835587))

(declare-fun m!835589 () Bool)

(assert (=> b!898956 m!835589))

(assert (=> b!898829 d!111339))

(declare-fun d!111341 () Bool)

(declare-fun e!502979 () Bool)

(assert (=> d!111341 e!502979))

(declare-fun res!607478 () Bool)

(assert (=> d!111341 (=> (not res!607478) (not e!502979))))

(declare-fun lt!405981 () ListLongMap!10769)

(assert (=> d!111341 (= res!607478 (contains!4401 lt!405981 (_1!6039 (tuple2!12059 lt!405879 (minValue!5242 thiss!1181)))))))

(declare-fun lt!405979 () List!17919)

(assert (=> d!111341 (= lt!405981 (ListLongMap!10770 lt!405979))))

(declare-fun lt!405978 () Unit!30517)

(declare-fun lt!405980 () Unit!30517)

(assert (=> d!111341 (= lt!405978 lt!405980)))

(assert (=> d!111341 (= (getValueByKey!457 lt!405979 (_1!6039 (tuple2!12059 lt!405879 (minValue!5242 thiss!1181)))) (Some!462 (_2!6039 (tuple2!12059 lt!405879 (minValue!5242 thiss!1181)))))))

(assert (=> d!111341 (= lt!405980 (lemmaContainsTupThenGetReturnValue!250 lt!405979 (_1!6039 (tuple2!12059 lt!405879 (minValue!5242 thiss!1181))) (_2!6039 (tuple2!12059 lt!405879 (minValue!5242 thiss!1181)))))))

(assert (=> d!111341 (= lt!405979 (insertStrictlySorted!306 (toList!5400 lt!405887) (_1!6039 (tuple2!12059 lt!405879 (minValue!5242 thiss!1181))) (_2!6039 (tuple2!12059 lt!405879 (minValue!5242 thiss!1181)))))))

(assert (=> d!111341 (= (+!2547 lt!405887 (tuple2!12059 lt!405879 (minValue!5242 thiss!1181))) lt!405981)))

(declare-fun b!898957 () Bool)

(declare-fun res!607479 () Bool)

(assert (=> b!898957 (=> (not res!607479) (not e!502979))))

(assert (=> b!898957 (= res!607479 (= (getValueByKey!457 (toList!5400 lt!405981) (_1!6039 (tuple2!12059 lt!405879 (minValue!5242 thiss!1181)))) (Some!462 (_2!6039 (tuple2!12059 lt!405879 (minValue!5242 thiss!1181))))))))

(declare-fun b!898958 () Bool)

(assert (=> b!898958 (= e!502979 (contains!4403 (toList!5400 lt!405981) (tuple2!12059 lt!405879 (minValue!5242 thiss!1181))))))

(assert (= (and d!111341 res!607478) b!898957))

(assert (= (and b!898957 res!607479) b!898958))

(declare-fun m!835591 () Bool)

(assert (=> d!111341 m!835591))

(declare-fun m!835593 () Bool)

(assert (=> d!111341 m!835593))

(declare-fun m!835595 () Bool)

(assert (=> d!111341 m!835595))

(declare-fun m!835597 () Bool)

(assert (=> d!111341 m!835597))

(declare-fun m!835599 () Bool)

(assert (=> b!898957 m!835599))

(declare-fun m!835601 () Bool)

(assert (=> b!898958 m!835601))

(assert (=> b!898829 d!111341))

(declare-fun d!111343 () Bool)

(assert (=> d!111343 (contains!4401 (+!2547 lt!405897 (tuple2!12059 lt!405899 (zeroValue!5242 thiss!1181))) lt!405886)))

(declare-fun lt!405984 () Unit!30517)

(declare-fun choose!1507 (ListLongMap!10769 (_ BitVec 64) V!29433 (_ BitVec 64)) Unit!30517)

(assert (=> d!111343 (= lt!405984 (choose!1507 lt!405897 lt!405899 (zeroValue!5242 thiss!1181) lt!405886))))

(assert (=> d!111343 (contains!4401 lt!405897 lt!405886)))

(assert (=> d!111343 (= (addStillContains!333 lt!405897 lt!405899 (zeroValue!5242 thiss!1181) lt!405886) lt!405984)))

(declare-fun bs!25232 () Bool)

(assert (= bs!25232 d!111343))

(assert (=> bs!25232 m!835435))

(assert (=> bs!25232 m!835435))

(assert (=> bs!25232 m!835437))

(declare-fun m!835603 () Bool)

(assert (=> bs!25232 m!835603))

(declare-fun m!835605 () Bool)

(assert (=> bs!25232 m!835605))

(assert (=> b!898829 d!111343))

(declare-fun d!111345 () Bool)

(assert (=> d!111345 (= (apply!411 (+!2547 lt!405895 (tuple2!12059 lt!405892 (zeroValue!5242 thiss!1181))) lt!405888) (get!13334 (getValueByKey!457 (toList!5400 (+!2547 lt!405895 (tuple2!12059 lt!405892 (zeroValue!5242 thiss!1181)))) lt!405888)))))

(declare-fun bs!25233 () Bool)

(assert (= bs!25233 d!111345))

(declare-fun m!835607 () Bool)

(assert (=> bs!25233 m!835607))

(assert (=> bs!25233 m!835607))

(declare-fun m!835609 () Bool)

(assert (=> bs!25233 m!835609))

(assert (=> b!898829 d!111345))

(declare-fun d!111347 () Bool)

(declare-fun e!502980 () Bool)

(assert (=> d!111347 e!502980))

(declare-fun res!607480 () Bool)

(assert (=> d!111347 (=> (not res!607480) (not e!502980))))

(declare-fun lt!405988 () ListLongMap!10769)

(assert (=> d!111347 (= res!607480 (contains!4401 lt!405988 (_1!6039 (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181)))))))

(declare-fun lt!405986 () List!17919)

(assert (=> d!111347 (= lt!405988 (ListLongMap!10770 lt!405986))))

(declare-fun lt!405985 () Unit!30517)

(declare-fun lt!405987 () Unit!30517)

(assert (=> d!111347 (= lt!405985 lt!405987)))

(assert (=> d!111347 (= (getValueByKey!457 lt!405986 (_1!6039 (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181)))) (Some!462 (_2!6039 (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181)))))))

(assert (=> d!111347 (= lt!405987 (lemmaContainsTupThenGetReturnValue!250 lt!405986 (_1!6039 (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181))) (_2!6039 (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181)))))))

(assert (=> d!111347 (= lt!405986 (insertStrictlySorted!306 (toList!5400 call!39909) (_1!6039 (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181))) (_2!6039 (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181)))))))

(assert (=> d!111347 (= (+!2547 call!39909 (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181))) lt!405988)))

(declare-fun b!898960 () Bool)

(declare-fun res!607481 () Bool)

(assert (=> b!898960 (=> (not res!607481) (not e!502980))))

(assert (=> b!898960 (= res!607481 (= (getValueByKey!457 (toList!5400 lt!405988) (_1!6039 (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181)))) (Some!462 (_2!6039 (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181))))))))

(declare-fun b!898961 () Bool)

(assert (=> b!898961 (= e!502980 (contains!4403 (toList!5400 lt!405988) (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181))))))

(assert (= (and d!111347 res!607480) b!898960))

(assert (= (and b!898960 res!607481) b!898961))

(declare-fun m!835611 () Bool)

(assert (=> d!111347 m!835611))

(declare-fun m!835613 () Bool)

(assert (=> d!111347 m!835613))

(declare-fun m!835615 () Bool)

(assert (=> d!111347 m!835615))

(declare-fun m!835617 () Bool)

(assert (=> d!111347 m!835617))

(declare-fun m!835619 () Bool)

(assert (=> b!898960 m!835619))

(declare-fun m!835621 () Bool)

(assert (=> b!898961 m!835621))

(assert (=> b!898828 d!111347))

(declare-fun d!111349 () Bool)

(declare-fun e!502981 () Bool)

(assert (=> d!111349 e!502981))

(declare-fun res!607482 () Bool)

(assert (=> d!111349 (=> res!607482 e!502981)))

(declare-fun lt!405989 () Bool)

(assert (=> d!111349 (= res!607482 (not lt!405989))))

(declare-fun lt!405992 () Bool)

(assert (=> d!111349 (= lt!405989 lt!405992)))

(declare-fun lt!405990 () Unit!30517)

(declare-fun e!502982 () Unit!30517)

(assert (=> d!111349 (= lt!405990 e!502982)))

(declare-fun c!94997 () Bool)

(assert (=> d!111349 (= c!94997 lt!405992)))

(assert (=> d!111349 (= lt!405992 (containsKey!427 (toList!5400 lt!405890) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!111349 (= (contains!4401 lt!405890 #b0000000000000000000000000000000000000000000000000000000000000000) lt!405989)))

(declare-fun b!898962 () Bool)

(declare-fun lt!405991 () Unit!30517)

(assert (=> b!898962 (= e!502982 lt!405991)))

(assert (=> b!898962 (= lt!405991 (lemmaContainsKeyImpliesGetValueByKeyDefined!322 (toList!5400 lt!405890) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!898962 (isDefined!332 (getValueByKey!457 (toList!5400 lt!405890) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!898963 () Bool)

(declare-fun Unit!30525 () Unit!30517)

(assert (=> b!898963 (= e!502982 Unit!30525)))

(declare-fun b!898964 () Bool)

(assert (=> b!898964 (= e!502981 (isDefined!332 (getValueByKey!457 (toList!5400 lt!405890) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!111349 c!94997) b!898962))

(assert (= (and d!111349 (not c!94997)) b!898963))

(assert (= (and d!111349 (not res!607482)) b!898964))

(declare-fun m!835623 () Bool)

(assert (=> d!111349 m!835623))

(declare-fun m!835625 () Bool)

(assert (=> b!898962 m!835625))

(assert (=> b!898962 m!835487))

(assert (=> b!898962 m!835487))

(declare-fun m!835627 () Bool)

(assert (=> b!898962 m!835627))

(assert (=> b!898964 m!835487))

(assert (=> b!898964 m!835487))

(assert (=> b!898964 m!835627))

(assert (=> bm!39901 d!111349))

(assert (=> b!898827 d!111299))

(declare-fun b!898977 () Bool)

(declare-fun e!502990 () SeekEntryResult!8915)

(assert (=> b!898977 (= e!502990 (Found!8915 (index!38032 lt!405830)))))

(declare-fun b!898978 () Bool)

(declare-fun e!502991 () SeekEntryResult!8915)

(assert (=> b!898978 (= e!502991 Undefined!8915)))

(declare-fun b!898979 () Bool)

(declare-fun c!95005 () Bool)

(declare-fun lt!405998 () (_ BitVec 64))

(assert (=> b!898979 (= c!95005 (= lt!405998 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!502989 () SeekEntryResult!8915)

(assert (=> b!898979 (= e!502990 e!502989)))

(declare-fun b!898980 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!898980 (= e!502989 (seekKeyOrZeroReturnVacant!0 (bvadd (x!76581 lt!405830) #b00000000000000000000000000000001) (nextIndex!0 (index!38032 lt!405830) (x!76581 lt!405830) (mask!26154 thiss!1181)) (index!38032 lt!405830) key!785 (_keys!10197 thiss!1181) (mask!26154 thiss!1181)))))

(declare-fun lt!405997 () SeekEntryResult!8915)

(declare-fun d!111351 () Bool)

(assert (=> d!111351 (and (or ((_ is Undefined!8915) lt!405997) (not ((_ is Found!8915) lt!405997)) (and (bvsge (index!38031 lt!405997) #b00000000000000000000000000000000) (bvslt (index!38031 lt!405997) (size!25793 (_keys!10197 thiss!1181))))) (or ((_ is Undefined!8915) lt!405997) ((_ is Found!8915) lt!405997) (not ((_ is MissingVacant!8915) lt!405997)) (not (= (index!38033 lt!405997) (index!38032 lt!405830))) (and (bvsge (index!38033 lt!405997) #b00000000000000000000000000000000) (bvslt (index!38033 lt!405997) (size!25793 (_keys!10197 thiss!1181))))) (or ((_ is Undefined!8915) lt!405997) (ite ((_ is Found!8915) lt!405997) (= (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405997)) key!785) (and ((_ is MissingVacant!8915) lt!405997) (= (index!38033 lt!405997) (index!38032 lt!405830)) (= (select (arr!25336 (_keys!10197 thiss!1181)) (index!38033 lt!405997)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!111351 (= lt!405997 e!502991)))

(declare-fun c!95004 () Bool)

(assert (=> d!111351 (= c!95004 (bvsge (x!76581 lt!405830) #b01111111111111111111111111111110))))

(assert (=> d!111351 (= lt!405998 (select (arr!25336 (_keys!10197 thiss!1181)) (index!38032 lt!405830)))))

(assert (=> d!111351 (validMask!0 (mask!26154 thiss!1181))))

(assert (=> d!111351 (= (seekKeyOrZeroReturnVacant!0 (x!76581 lt!405830) (index!38032 lt!405830) (index!38032 lt!405830) key!785 (_keys!10197 thiss!1181) (mask!26154 thiss!1181)) lt!405997)))

(declare-fun b!898981 () Bool)

(assert (=> b!898981 (= e!502991 e!502990)))

(declare-fun c!95006 () Bool)

(assert (=> b!898981 (= c!95006 (= lt!405998 key!785))))

(declare-fun b!898982 () Bool)

(assert (=> b!898982 (= e!502989 (MissingVacant!8915 (index!38032 lt!405830)))))

(assert (= (and d!111351 c!95004) b!898978))

(assert (= (and d!111351 (not c!95004)) b!898981))

(assert (= (and b!898981 c!95006) b!898977))

(assert (= (and b!898981 (not c!95006)) b!898979))

(assert (= (and b!898979 c!95005) b!898982))

(assert (= (and b!898979 (not c!95005)) b!898980))

(declare-fun m!835629 () Bool)

(assert (=> b!898980 m!835629))

(assert (=> b!898980 m!835629))

(declare-fun m!835631 () Bool)

(assert (=> b!898980 m!835631))

(declare-fun m!835633 () Bool)

(assert (=> d!111351 m!835633))

(declare-fun m!835635 () Bool)

(assert (=> d!111351 m!835635))

(assert (=> d!111351 m!835377))

(assert (=> d!111351 m!835335))

(assert (=> b!898766 d!111351))

(assert (=> b!898851 d!111285))

(assert (=> b!898851 d!111281))

(declare-fun d!111353 () Bool)

(declare-fun e!502992 () Bool)

(assert (=> d!111353 e!502992))

(declare-fun res!607483 () Bool)

(assert (=> d!111353 (=> res!607483 e!502992)))

(declare-fun lt!405999 () Bool)

(assert (=> d!111353 (= res!607483 (not lt!405999))))

(declare-fun lt!406002 () Bool)

(assert (=> d!111353 (= lt!405999 lt!406002)))

(declare-fun lt!406000 () Unit!30517)

(declare-fun e!502993 () Unit!30517)

(assert (=> d!111353 (= lt!406000 e!502993)))

(declare-fun c!95007 () Bool)

(assert (=> d!111353 (= c!95007 lt!406002)))

(assert (=> d!111353 (= lt!406002 (containsKey!427 (toList!5400 lt!405890) (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!111353 (= (contains!4401 lt!405890 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)) lt!405999)))

(declare-fun b!898983 () Bool)

(declare-fun lt!406001 () Unit!30517)

(assert (=> b!898983 (= e!502993 lt!406001)))

(assert (=> b!898983 (= lt!406001 (lemmaContainsKeyImpliesGetValueByKeyDefined!322 (toList!5400 lt!405890) (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!898983 (isDefined!332 (getValueByKey!457 (toList!5400 lt!405890) (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!898984 () Bool)

(declare-fun Unit!30526 () Unit!30517)

(assert (=> b!898984 (= e!502993 Unit!30526)))

(declare-fun b!898985 () Bool)

(assert (=> b!898985 (= e!502992 (isDefined!332 (getValueByKey!457 (toList!5400 lt!405890) (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000))))))

(assert (= (and d!111353 c!95007) b!898983))

(assert (= (and d!111353 (not c!95007)) b!898984))

(assert (= (and d!111353 (not res!607483)) b!898985))

(assert (=> d!111353 m!835395))

(declare-fun m!835637 () Bool)

(assert (=> d!111353 m!835637))

(assert (=> b!898983 m!835395))

(declare-fun m!835639 () Bool)

(assert (=> b!898983 m!835639))

(assert (=> b!898983 m!835395))

(declare-fun m!835641 () Bool)

(assert (=> b!898983 m!835641))

(assert (=> b!898983 m!835641))

(declare-fun m!835643 () Bool)

(assert (=> b!898983 m!835643))

(assert (=> b!898985 m!835395))

(assert (=> b!898985 m!835641))

(assert (=> b!898985 m!835641))

(assert (=> b!898985 m!835643))

(assert (=> b!898826 d!111353))

(declare-fun d!111355 () Bool)

(assert (=> d!111355 (contains!4401 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800)))))

(assert (=> d!111355 true))

(declare-fun _$16!181 () Unit!30517)

(assert (=> d!111355 (= (choose!1504 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) (index!38031 lt!405800) (defaultEntry!5420 thiss!1181)) _$16!181)))

(declare-fun bs!25234 () Bool)

(assert (= bs!25234 d!111355))

(assert (=> bs!25234 m!835337))

(assert (=> bs!25234 m!835327))

(assert (=> bs!25234 m!835337))

(assert (=> bs!25234 m!835327))

(assert (=> bs!25234 m!835339))

(assert (=> d!111289 d!111355))

(assert (=> d!111289 d!111279))

(assert (=> d!111281 d!111279))

(assert (=> d!111283 d!111287))

(declare-fun d!111357 () Bool)

(assert (=> d!111357 (arrayContainsKey!0 (_keys!10197 thiss!1181) key!785 #b00000000000000000000000000000000)))

(assert (=> d!111357 true))

(declare-fun _$60!421 () Unit!30517)

(assert (=> d!111357 (= (choose!13 (_keys!10197 thiss!1181) key!785 (index!38031 lt!405800)) _$60!421)))

(declare-fun bs!25235 () Bool)

(assert (= bs!25235 d!111357))

(assert (=> bs!25235 m!835333))

(assert (=> d!111283 d!111357))

(assert (=> bm!39905 d!111329))

(declare-fun d!111359 () Bool)

(declare-fun res!607484 () Bool)

(declare-fun e!502994 () Bool)

(assert (=> d!111359 (=> res!607484 e!502994)))

(assert (=> d!111359 (= res!607484 (= (select (arr!25336 (_keys!10197 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!785))))

(assert (=> d!111359 (= (arrayContainsKey!0 (_keys!10197 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!502994)))

(declare-fun b!898986 () Bool)

(declare-fun e!502995 () Bool)

(assert (=> b!898986 (= e!502994 e!502995)))

(declare-fun res!607485 () Bool)

(assert (=> b!898986 (=> (not res!607485) (not e!502995))))

(assert (=> b!898986 (= res!607485 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!25793 (_keys!10197 thiss!1181))))))

(declare-fun b!898987 () Bool)

(assert (=> b!898987 (= e!502995 (arrayContainsKey!0 (_keys!10197 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!111359 (not res!607484)) b!898986))

(assert (= (and b!898986 res!607485) b!898987))

(declare-fun m!835645 () Bool)

(assert (=> d!111359 m!835645))

(declare-fun m!835647 () Bool)

(assert (=> b!898987 m!835647))

(assert (=> b!898848 d!111359))

(declare-fun d!111361 () Bool)

(assert (=> d!111361 (= (apply!411 lt!405890 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)) (get!13334 (getValueByKey!457 (toList!5400 lt!405890) (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000))))))

(declare-fun bs!25236 () Bool)

(assert (= bs!25236 d!111361))

(assert (=> bs!25236 m!835395))

(assert (=> bs!25236 m!835641))

(assert (=> bs!25236 m!835641))

(declare-fun m!835649 () Bool)

(assert (=> bs!25236 m!835649))

(assert (=> b!898819 d!111361))

(declare-fun d!111363 () Bool)

(declare-fun c!95010 () Bool)

(assert (=> d!111363 (= c!95010 ((_ is ValueCellFull!8694) (select (arr!25337 (_values!5429 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun e!502998 () V!29433)

(assert (=> d!111363 (= (get!13333 (select (arr!25337 (_values!5429 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1306 (defaultEntry!5420 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)) e!502998)))

(declare-fun b!898992 () Bool)

(declare-fun get!13335 (ValueCell!8694 V!29433) V!29433)

(assert (=> b!898992 (= e!502998 (get!13335 (select (arr!25337 (_values!5429 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1306 (defaultEntry!5420 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!898993 () Bool)

(declare-fun get!13336 (ValueCell!8694 V!29433) V!29433)

(assert (=> b!898993 (= e!502998 (get!13336 (select (arr!25337 (_values!5429 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1306 (defaultEntry!5420 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!111363 c!95010) b!898992))

(assert (= (and d!111363 (not c!95010)) b!898993))

(assert (=> b!898992 m!835405))

(assert (=> b!898992 m!835403))

(declare-fun m!835651 () Bool)

(assert (=> b!898992 m!835651))

(assert (=> b!898993 m!835405))

(assert (=> b!898993 m!835403))

(declare-fun m!835653 () Bool)

(assert (=> b!898993 m!835653))

(assert (=> b!898819 d!111363))

(declare-fun b!899004 () Bool)

(declare-fun e!503007 () Bool)

(declare-fun call!39916 () Bool)

(assert (=> b!899004 (= e!503007 call!39916)))

(declare-fun b!899005 () Bool)

(declare-fun e!503009 () Bool)

(declare-fun contains!4404 (List!17921 (_ BitVec 64)) Bool)

(assert (=> b!899005 (= e!503009 (contains!4404 Nil!17918 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899006 () Bool)

(declare-fun e!503010 () Bool)

(assert (=> b!899006 (= e!503010 e!503007)))

(declare-fun c!95013 () Bool)

(assert (=> b!899006 (= c!95013 (validKeyInArray!0 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899007 () Bool)

(declare-fun e!503008 () Bool)

(assert (=> b!899007 (= e!503008 e!503010)))

(declare-fun res!607493 () Bool)

(assert (=> b!899007 (=> (not res!607493) (not e!503010))))

(assert (=> b!899007 (= res!607493 (not e!503009))))

(declare-fun res!607494 () Bool)

(assert (=> b!899007 (=> (not res!607494) (not e!503009))))

(assert (=> b!899007 (= res!607494 (validKeyInArray!0 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!111365 () Bool)

(declare-fun res!607492 () Bool)

(assert (=> d!111365 (=> res!607492 e!503008)))

(assert (=> d!111365 (= res!607492 (bvsge #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))))))

(assert (=> d!111365 (= (arrayNoDuplicates!0 (_keys!10197 thiss!1181) #b00000000000000000000000000000000 Nil!17918) e!503008)))

(declare-fun bm!39913 () Bool)

(assert (=> bm!39913 (= call!39916 (arrayNoDuplicates!0 (_keys!10197 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95013 (Cons!17917 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000) Nil!17918) Nil!17918)))))

(declare-fun b!899008 () Bool)

(assert (=> b!899008 (= e!503007 call!39916)))

(assert (= (and d!111365 (not res!607492)) b!899007))

(assert (= (and b!899007 res!607494) b!899005))

(assert (= (and b!899007 res!607493) b!899006))

(assert (= (and b!899006 c!95013) b!899008))

(assert (= (and b!899006 (not c!95013)) b!899004))

(assert (= (or b!899008 b!899004) bm!39913))

(assert (=> b!899005 m!835395))

(assert (=> b!899005 m!835395))

(declare-fun m!835655 () Bool)

(assert (=> b!899005 m!835655))

(assert (=> b!899006 m!835395))

(assert (=> b!899006 m!835395))

(assert (=> b!899006 m!835401))

(assert (=> b!899007 m!835395))

(assert (=> b!899007 m!835395))

(assert (=> b!899007 m!835401))

(assert (=> bm!39913 m!835395))

(declare-fun m!835657 () Bool)

(assert (=> bm!39913 m!835657))

(assert (=> b!898860 d!111365))

(declare-fun d!111367 () Bool)

(declare-fun e!503023 () Bool)

(assert (=> d!111367 e!503023))

(declare-fun c!95021 () Bool)

(declare-fun lt!406007 () SeekEntryResult!8915)

(assert (=> d!111367 (= c!95021 (and ((_ is Intermediate!8915) lt!406007) (undefined!9727 lt!406007)))))

(declare-fun e!503025 () SeekEntryResult!8915)

(assert (=> d!111367 (= lt!406007 e!503025)))

(declare-fun c!95022 () Bool)

(assert (=> d!111367 (= c!95022 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!406008 () (_ BitVec 64))

(assert (=> d!111367 (= lt!406008 (select (arr!25336 (_keys!10197 thiss!1181)) (toIndex!0 key!785 (mask!26154 thiss!1181))))))

(assert (=> d!111367 (validMask!0 (mask!26154 thiss!1181))))

(assert (=> d!111367 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26154 thiss!1181)) key!785 (_keys!10197 thiss!1181) (mask!26154 thiss!1181)) lt!406007)))

(declare-fun b!899027 () Bool)

(declare-fun e!503024 () SeekEntryResult!8915)

(assert (=> b!899027 (= e!503024 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!785 (mask!26154 thiss!1181)) #b00000000000000000000000000000000 (mask!26154 thiss!1181)) key!785 (_keys!10197 thiss!1181) (mask!26154 thiss!1181)))))

(declare-fun b!899028 () Bool)

(assert (=> b!899028 (and (bvsge (index!38032 lt!406007) #b00000000000000000000000000000000) (bvslt (index!38032 lt!406007) (size!25793 (_keys!10197 thiss!1181))))))

(declare-fun e!503021 () Bool)

(assert (=> b!899028 (= e!503021 (= (select (arr!25336 (_keys!10197 thiss!1181)) (index!38032 lt!406007)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!899029 () Bool)

(assert (=> b!899029 (= e!503023 (bvsge (x!76581 lt!406007) #b01111111111111111111111111111110))))

(declare-fun b!899030 () Bool)

(assert (=> b!899030 (= e!503025 (Intermediate!8915 true (toIndex!0 key!785 (mask!26154 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!899031 () Bool)

(assert (=> b!899031 (and (bvsge (index!38032 lt!406007) #b00000000000000000000000000000000) (bvslt (index!38032 lt!406007) (size!25793 (_keys!10197 thiss!1181))))))

(declare-fun res!607503 () Bool)

(assert (=> b!899031 (= res!607503 (= (select (arr!25336 (_keys!10197 thiss!1181)) (index!38032 lt!406007)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!899031 (=> res!607503 e!503021)))

(declare-fun b!899032 () Bool)

(assert (=> b!899032 (= e!503025 e!503024)))

(declare-fun c!95020 () Bool)

(assert (=> b!899032 (= c!95020 (or (= lt!406008 key!785) (= (bvadd lt!406008 lt!406008) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!899033 () Bool)

(assert (=> b!899033 (and (bvsge (index!38032 lt!406007) #b00000000000000000000000000000000) (bvslt (index!38032 lt!406007) (size!25793 (_keys!10197 thiss!1181))))))

(declare-fun res!607501 () Bool)

(assert (=> b!899033 (= res!607501 (= (select (arr!25336 (_keys!10197 thiss!1181)) (index!38032 lt!406007)) key!785))))

(assert (=> b!899033 (=> res!607501 e!503021)))

(declare-fun e!503022 () Bool)

(assert (=> b!899033 (= e!503022 e!503021)))

(declare-fun b!899034 () Bool)

(assert (=> b!899034 (= e!503024 (Intermediate!8915 false (toIndex!0 key!785 (mask!26154 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!899035 () Bool)

(assert (=> b!899035 (= e!503023 e!503022)))

(declare-fun res!607502 () Bool)

(assert (=> b!899035 (= res!607502 (and ((_ is Intermediate!8915) lt!406007) (not (undefined!9727 lt!406007)) (bvslt (x!76581 lt!406007) #b01111111111111111111111111111110) (bvsge (x!76581 lt!406007) #b00000000000000000000000000000000) (bvsge (x!76581 lt!406007) #b00000000000000000000000000000000)))))

(assert (=> b!899035 (=> (not res!607502) (not e!503022))))

(assert (= (and d!111367 c!95022) b!899030))

(assert (= (and d!111367 (not c!95022)) b!899032))

(assert (= (and b!899032 c!95020) b!899034))

(assert (= (and b!899032 (not c!95020)) b!899027))

(assert (= (and d!111367 c!95021) b!899029))

(assert (= (and d!111367 (not c!95021)) b!899035))

(assert (= (and b!899035 res!607502) b!899033))

(assert (= (and b!899033 (not res!607501)) b!899031))

(assert (= (and b!899031 (not res!607503)) b!899028))

(declare-fun m!835659 () Bool)

(assert (=> b!899033 m!835659))

(assert (=> b!899028 m!835659))

(assert (=> d!111367 m!835383))

(declare-fun m!835661 () Bool)

(assert (=> d!111367 m!835661))

(assert (=> d!111367 m!835335))

(assert (=> b!899031 m!835659))

(assert (=> b!899027 m!835383))

(declare-fun m!835663 () Bool)

(assert (=> b!899027 m!835663))

(assert (=> b!899027 m!835663))

(declare-fun m!835665 () Bool)

(assert (=> b!899027 m!835665))

(assert (=> d!111277 d!111367))

(declare-fun d!111369 () Bool)

(declare-fun lt!406014 () (_ BitVec 32))

(declare-fun lt!406013 () (_ BitVec 32))

(assert (=> d!111369 (= lt!406014 (bvmul (bvxor lt!406013 (bvlshr lt!406013 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!111369 (= lt!406013 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!111369 (and (bvsge (mask!26154 thiss!1181) #b00000000000000000000000000000000) (let ((res!607504 (let ((h!19061 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!76600 (bvmul (bvxor h!19061 (bvlshr h!19061 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!76600 (bvlshr x!76600 #b00000000000000000000000000001101)) (mask!26154 thiss!1181)))))) (and (bvslt res!607504 (bvadd (mask!26154 thiss!1181) #b00000000000000000000000000000001)) (bvsge res!607504 #b00000000000000000000000000000000))))))

(assert (=> d!111369 (= (toIndex!0 key!785 (mask!26154 thiss!1181)) (bvand (bvxor lt!406014 (bvlshr lt!406014 #b00000000000000000000000000001101)) (mask!26154 thiss!1181)))))

(assert (=> d!111277 d!111369))

(assert (=> d!111277 d!111279))

(declare-fun b!899044 () Bool)

(declare-fun e!503033 () Bool)

(declare-fun call!39919 () Bool)

(assert (=> b!899044 (= e!503033 call!39919)))

(declare-fun bm!39916 () Bool)

(assert (=> bm!39916 (= call!39919 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10197 thiss!1181) (mask!26154 thiss!1181)))))

(declare-fun b!899045 () Bool)

(declare-fun e!503034 () Bool)

(assert (=> b!899045 (= e!503033 e!503034)))

(declare-fun lt!406021 () (_ BitVec 64))

(assert (=> b!899045 (= lt!406021 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406022 () Unit!30517)

(assert (=> b!899045 (= lt!406022 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10197 thiss!1181) lt!406021 #b00000000000000000000000000000000))))

(assert (=> b!899045 (arrayContainsKey!0 (_keys!10197 thiss!1181) lt!406021 #b00000000000000000000000000000000)))

(declare-fun lt!406023 () Unit!30517)

(assert (=> b!899045 (= lt!406023 lt!406022)))

(declare-fun res!607510 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52728 (_ BitVec 32)) SeekEntryResult!8915)

(assert (=> b!899045 (= res!607510 (= (seekEntryOrOpen!0 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000) (_keys!10197 thiss!1181) (mask!26154 thiss!1181)) (Found!8915 #b00000000000000000000000000000000)))))

(assert (=> b!899045 (=> (not res!607510) (not e!503034))))

(declare-fun d!111371 () Bool)

(declare-fun res!607509 () Bool)

(declare-fun e!503032 () Bool)

(assert (=> d!111371 (=> res!607509 e!503032)))

(assert (=> d!111371 (= res!607509 (bvsge #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))))))

(assert (=> d!111371 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10197 thiss!1181) (mask!26154 thiss!1181)) e!503032)))

(declare-fun b!899046 () Bool)

(assert (=> b!899046 (= e!503032 e!503033)))

(declare-fun c!95025 () Bool)

(assert (=> b!899046 (= c!95025 (validKeyInArray!0 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899047 () Bool)

(assert (=> b!899047 (= e!503034 call!39919)))

(assert (= (and d!111371 (not res!607509)) b!899046))

(assert (= (and b!899046 c!95025) b!899045))

(assert (= (and b!899046 (not c!95025)) b!899044))

(assert (= (and b!899045 res!607510) b!899047))

(assert (= (or b!899047 b!899044) bm!39916))

(declare-fun m!835667 () Bool)

(assert (=> bm!39916 m!835667))

(assert (=> b!899045 m!835395))

(declare-fun m!835669 () Bool)

(assert (=> b!899045 m!835669))

(declare-fun m!835671 () Bool)

(assert (=> b!899045 m!835671))

(assert (=> b!899045 m!835395))

(declare-fun m!835673 () Bool)

(assert (=> b!899045 m!835673))

(assert (=> b!899046 m!835395))

(assert (=> b!899046 m!835395))

(assert (=> b!899046 m!835401))

(assert (=> b!898859 d!111371))

(declare-fun d!111373 () Bool)

(declare-fun e!503035 () Bool)

(assert (=> d!111373 e!503035))

(declare-fun res!607511 () Bool)

(assert (=> d!111373 (=> (not res!607511) (not e!503035))))

(declare-fun lt!406027 () ListLongMap!10769)

(assert (=> d!111373 (= res!607511 (contains!4401 lt!406027 (_1!6039 (ite (or c!94973 c!94968) (tuple2!12059 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5242 thiss!1181)) (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181))))))))

(declare-fun lt!406025 () List!17919)

(assert (=> d!111373 (= lt!406027 (ListLongMap!10770 lt!406025))))

(declare-fun lt!406024 () Unit!30517)

(declare-fun lt!406026 () Unit!30517)

(assert (=> d!111373 (= lt!406024 lt!406026)))

(assert (=> d!111373 (= (getValueByKey!457 lt!406025 (_1!6039 (ite (or c!94973 c!94968) (tuple2!12059 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5242 thiss!1181)) (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181))))) (Some!462 (_2!6039 (ite (or c!94973 c!94968) (tuple2!12059 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5242 thiss!1181)) (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181))))))))

(assert (=> d!111373 (= lt!406026 (lemmaContainsTupThenGetReturnValue!250 lt!406025 (_1!6039 (ite (or c!94973 c!94968) (tuple2!12059 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5242 thiss!1181)) (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181)))) (_2!6039 (ite (or c!94973 c!94968) (tuple2!12059 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5242 thiss!1181)) (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181))))))))

(assert (=> d!111373 (= lt!406025 (insertStrictlySorted!306 (toList!5400 (ite c!94973 call!39910 (ite c!94968 call!39905 call!39904))) (_1!6039 (ite (or c!94973 c!94968) (tuple2!12059 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5242 thiss!1181)) (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181)))) (_2!6039 (ite (or c!94973 c!94968) (tuple2!12059 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5242 thiss!1181)) (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181))))))))

(assert (=> d!111373 (= (+!2547 (ite c!94973 call!39910 (ite c!94968 call!39905 call!39904)) (ite (or c!94973 c!94968) (tuple2!12059 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5242 thiss!1181)) (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181)))) lt!406027)))

(declare-fun b!899048 () Bool)

(declare-fun res!607512 () Bool)

(assert (=> b!899048 (=> (not res!607512) (not e!503035))))

(assert (=> b!899048 (= res!607512 (= (getValueByKey!457 (toList!5400 lt!406027) (_1!6039 (ite (or c!94973 c!94968) (tuple2!12059 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5242 thiss!1181)) (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181))))) (Some!462 (_2!6039 (ite (or c!94973 c!94968) (tuple2!12059 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5242 thiss!1181)) (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181)))))))))

(declare-fun b!899049 () Bool)

(assert (=> b!899049 (= e!503035 (contains!4403 (toList!5400 lt!406027) (ite (or c!94973 c!94968) (tuple2!12059 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5242 thiss!1181)) (tuple2!12059 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5242 thiss!1181)))))))

(assert (= (and d!111373 res!607511) b!899048))

(assert (= (and b!899048 res!607512) b!899049))

(declare-fun m!835675 () Bool)

(assert (=> d!111373 m!835675))

(declare-fun m!835677 () Bool)

(assert (=> d!111373 m!835677))

(declare-fun m!835679 () Bool)

(assert (=> d!111373 m!835679))

(declare-fun m!835681 () Bool)

(assert (=> d!111373 m!835681))

(declare-fun m!835683 () Bool)

(assert (=> b!899048 m!835683))

(declare-fun m!835685 () Bool)

(assert (=> b!899049 m!835685))

(assert (=> bm!39904 d!111373))

(declare-fun b!899059 () Bool)

(declare-fun e!503041 () (_ BitVec 32))

(declare-fun call!39922 () (_ BitVec 32))

(assert (=> b!899059 (= e!503041 (bvadd #b00000000000000000000000000000001 call!39922))))

(declare-fun b!899060 () Bool)

(declare-fun e!503040 () (_ BitVec 32))

(assert (=> b!899060 (= e!503040 #b00000000000000000000000000000000)))

(declare-fun b!899061 () Bool)

(assert (=> b!899061 (= e!503041 call!39922)))

(declare-fun bm!39919 () Bool)

(assert (=> bm!39919 (= call!39922 (arrayCountValidKeys!0 (_keys!10197 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25793 (_keys!10197 thiss!1181))))))

(declare-fun d!111375 () Bool)

(declare-fun lt!406030 () (_ BitVec 32))

(assert (=> d!111375 (and (bvsge lt!406030 #b00000000000000000000000000000000) (bvsle lt!406030 (bvsub (size!25793 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!111375 (= lt!406030 e!503040)))

(declare-fun c!95031 () Bool)

(assert (=> d!111375 (= c!95031 (bvsge #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))))))

(assert (=> d!111375 (and (bvsle #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25793 (_keys!10197 thiss!1181)) (size!25793 (_keys!10197 thiss!1181))))))

(assert (=> d!111375 (= (arrayCountValidKeys!0 (_keys!10197 thiss!1181) #b00000000000000000000000000000000 (size!25793 (_keys!10197 thiss!1181))) lt!406030)))

(declare-fun b!899058 () Bool)

(assert (=> b!899058 (= e!503040 e!503041)))

(declare-fun c!95030 () Bool)

(assert (=> b!899058 (= c!95030 (validKeyInArray!0 (select (arr!25336 (_keys!10197 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!111375 c!95031) b!899060))

(assert (= (and d!111375 (not c!95031)) b!899058))

(assert (= (and b!899058 c!95030) b!899059))

(assert (= (and b!899058 (not c!95030)) b!899061))

(assert (= (or b!899059 b!899061) bm!39919))

(declare-fun m!835687 () Bool)

(assert (=> bm!39919 m!835687))

(assert (=> b!899058 m!835395))

(assert (=> b!899058 m!835395))

(assert (=> b!899058 m!835401))

(assert (=> b!898858 d!111375))

(declare-fun d!111377 () Bool)

(declare-fun res!607517 () Bool)

(declare-fun e!503046 () Bool)

(assert (=> d!111377 (=> res!607517 e!503046)))

(assert (=> d!111377 (= res!607517 (and ((_ is Cons!17915) (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)))) (= (_1!6039 (h!19058 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800)))))))

(assert (=> d!111377 (= (containsKey!427 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800))) e!503046)))

(declare-fun b!899066 () Bool)

(declare-fun e!503047 () Bool)

(assert (=> b!899066 (= e!503046 e!503047)))

(declare-fun res!607518 () Bool)

(assert (=> b!899066 (=> (not res!607518) (not e!503047))))

(assert (=> b!899066 (= res!607518 (and (or (not ((_ is Cons!17915) (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))))) (bvsle (_1!6039 (h!19058 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800)))) ((_ is Cons!17915) (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)))) (bvslt (_1!6039 (h!19058 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181))))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800)))))))

(declare-fun b!899067 () Bool)

(assert (=> b!899067 (= e!503047 (containsKey!427 (t!25270 (toList!5400 (getCurrentListMap!2643 (_keys!10197 thiss!1181) (_values!5429 thiss!1181) (mask!26154 thiss!1181) (extraKeys!5138 thiss!1181) (zeroValue!5242 thiss!1181) (minValue!5242 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5420 thiss!1181)))) (select (arr!25336 (_keys!10197 thiss!1181)) (index!38031 lt!405800))))))

(assert (= (and d!111377 (not res!607517)) b!899066))

(assert (= (and b!899066 res!607518) b!899067))

(assert (=> b!899067 m!835327))

(declare-fun m!835689 () Bool)

(assert (=> b!899067 m!835689))

(assert (=> d!111285 d!111377))

(declare-fun b!899069 () Bool)

(declare-fun e!503049 () Bool)

(assert (=> b!899069 (= e!503049 tp_is_empty!18351)))

(declare-fun b!899068 () Bool)

(declare-fun e!503048 () Bool)

(assert (=> b!899068 (= e!503048 tp_is_empty!18351)))

(declare-fun condMapEmpty!29192 () Bool)

(declare-fun mapDefault!29192 () ValueCell!8694)

(assert (=> mapNonEmpty!29191 (= condMapEmpty!29192 (= mapRest!29191 ((as const (Array (_ BitVec 32) ValueCell!8694)) mapDefault!29192)))))

(declare-fun mapRes!29192 () Bool)

(assert (=> mapNonEmpty!29191 (= tp!56152 (and e!503049 mapRes!29192))))

(declare-fun mapIsEmpty!29192 () Bool)

(assert (=> mapIsEmpty!29192 mapRes!29192))

(declare-fun mapNonEmpty!29192 () Bool)

(declare-fun tp!56153 () Bool)

(assert (=> mapNonEmpty!29192 (= mapRes!29192 (and tp!56153 e!503048))))

(declare-fun mapValue!29192 () ValueCell!8694)

(declare-fun mapRest!29192 () (Array (_ BitVec 32) ValueCell!8694))

(declare-fun mapKey!29192 () (_ BitVec 32))

(assert (=> mapNonEmpty!29192 (= mapRest!29191 (store mapRest!29192 mapKey!29192 mapValue!29192))))

(assert (= (and mapNonEmpty!29191 condMapEmpty!29192) mapIsEmpty!29192))

(assert (= (and mapNonEmpty!29191 (not condMapEmpty!29192)) mapNonEmpty!29192))

(assert (= (and mapNonEmpty!29192 ((_ is ValueCellFull!8694) mapValue!29192)) b!899068))

(assert (= (and mapNonEmpty!29191 ((_ is ValueCellFull!8694) mapDefault!29192)) b!899069))

(declare-fun m!835691 () Bool)

(assert (=> mapNonEmpty!29192 m!835691))

(declare-fun b_lambda!13013 () Bool)

(assert (= b_lambda!13009 (or (and b!898718 b_free!16023) b_lambda!13013)))

(declare-fun b_lambda!13015 () Bool)

(assert (= b_lambda!13011 (or (and b!898718 b_free!16023) b_lambda!13015)))

(check-sat (not bm!39910) (not d!111325) (not b_lambda!13015) (not d!111347) (not b!899007) (not d!111319) (not d!111367) (not d!111317) (not b!899045) (not b!898939) (not b!898985) (not b!898958) (not b!898956) (not d!111331) (not b!898987) (not b!898944) (not d!111355) (not d!111311) (not b_next!16023) (not b!898960) (not d!111351) (not b!898907) (not b!898955) (not b!898879) (not b!898962) (not d!111323) (not d!111353) (not b!898938) (not b!899067) (not d!111327) (not b!898943) (not b!899058) (not b!898891) (not b!898898) (not d!111329) b_and!26349 (not b!898993) (not bm!39913) (not b!898947) (not bm!39916) (not b!898957) (not d!111357) (not mapNonEmpty!29192) (not bm!39919) (not b!898878) (not d!111339) (not b!899048) (not d!111301) (not b!898936) (not b!898893) (not d!111305) (not b_lambda!13007) (not d!111341) (not d!111337) (not b!898980) (not b!898942) (not d!111315) (not d!111343) (not b!898964) (not d!111321) tp_is_empty!18351 (not b!898949) (not b!898992) (not b!899046) (not b_lambda!13013) (not d!111361) (not d!111307) (not d!111313) (not b!898945) (not b!898983) (not d!111373) (not b!898895) (not b!899005) (not b!898961) (not b!898951) (not b!899027) (not b!898901) (not b!898906) (not b!898950) (not d!111309) (not b!899049) (not d!111349) (not d!111345) (not d!111295) (not d!111335) (not d!111333) (not b!898953) (not b!899006))
(check-sat b_and!26349 (not b_next!16023))
