; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91734 () Bool)

(assert start!91734)

(declare-fun b!1043709 () Bool)

(declare-fun b_free!21105 () Bool)

(declare-fun b_next!21105 () Bool)

(assert (=> b!1043709 (= b_free!21105 (not b_next!21105))))

(declare-fun tp!74557 () Bool)

(declare-fun b_and!33669 () Bool)

(assert (=> b!1043709 (= tp!74557 b_and!33669)))

(declare-fun mapNonEmpty!38861 () Bool)

(declare-fun mapRes!38861 () Bool)

(declare-fun tp!74556 () Bool)

(declare-fun e!591446 () Bool)

(assert (=> mapNonEmpty!38861 (= mapRes!38861 (and tp!74556 e!591446))))

(declare-datatypes ((V!37973 0))(
  ( (V!37974 (val!12463 Int)) )
))
(declare-datatypes ((ValueCell!11709 0))(
  ( (ValueCellFull!11709 (v!15055 V!37973)) (EmptyCell!11709) )
))
(declare-fun mapValue!38861 () ValueCell!11709)

(declare-datatypes ((array!65798 0))(
  ( (array!65799 (arr!31647 (Array (_ BitVec 32) (_ BitVec 64))) (size!32183 (_ BitVec 32))) )
))
(declare-datatypes ((array!65800 0))(
  ( (array!65801 (arr!31648 (Array (_ BitVec 32) ValueCell!11709)) (size!32184 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6012 0))(
  ( (LongMapFixedSize!6013 (defaultEntry!6390 Int) (mask!30481 (_ BitVec 32)) (extraKeys!6118 (_ BitVec 32)) (zeroValue!6224 V!37973) (minValue!6224 V!37973) (_size!3061 (_ BitVec 32)) (_keys!11647 array!65798) (_values!6413 array!65800) (_vacant!3061 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6012)

(declare-fun mapKey!38861 () (_ BitVec 32))

(declare-fun mapRest!38861 () (Array (_ BitVec 32) ValueCell!11709))

(assert (=> mapNonEmpty!38861 (= (arr!31648 (_values!6413 thiss!1427)) (store mapRest!38861 mapKey!38861 mapValue!38861))))

(declare-fun b!1043707 () Bool)

(declare-fun e!591451 () Bool)

(declare-fun tp_is_empty!24825 () Bool)

(assert (=> b!1043707 (= e!591451 tp_is_empty!24825)))

(declare-fun b!1043708 () Bool)

(declare-fun e!591447 () Bool)

(assert (=> b!1043708 (= e!591447 (and e!591451 mapRes!38861))))

(declare-fun condMapEmpty!38861 () Bool)

(declare-fun mapDefault!38861 () ValueCell!11709)

(assert (=> b!1043708 (= condMapEmpty!38861 (= (arr!31648 (_values!6413 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11709)) mapDefault!38861)))))

(declare-fun res!695366 () Bool)

(declare-fun e!591448 () Bool)

(assert (=> start!91734 (=> (not res!695366) (not e!591448))))

(declare-fun valid!2210 (LongMapFixedSize!6012) Bool)

(assert (=> start!91734 (= res!695366 (valid!2210 thiss!1427))))

(assert (=> start!91734 e!591448))

(declare-fun e!591449 () Bool)

(assert (=> start!91734 e!591449))

(assert (=> start!91734 true))

(declare-fun array_inv!24295 (array!65798) Bool)

(declare-fun array_inv!24296 (array!65800) Bool)

(assert (=> b!1043709 (= e!591449 (and tp!74557 tp_is_empty!24825 (array_inv!24295 (_keys!11647 thiss!1427)) (array_inv!24296 (_values!6413 thiss!1427)) e!591447))))

(declare-fun b!1043710 () Bool)

(declare-fun e!591450 () Bool)

(assert (=> b!1043710 (= e!591448 e!591450)))

(declare-fun res!695367 () Bool)

(assert (=> b!1043710 (=> (not res!695367) (not e!591450))))

(declare-datatypes ((SeekEntryResult!9834 0))(
  ( (MissingZero!9834 (index!41706 (_ BitVec 32))) (Found!9834 (index!41707 (_ BitVec 32))) (Intermediate!9834 (undefined!10646 Bool) (index!41708 (_ BitVec 32)) (x!93189 (_ BitVec 32))) (Undefined!9834) (MissingVacant!9834 (index!41709 (_ BitVec 32))) )
))
(declare-fun lt!460162 () SeekEntryResult!9834)

(get-info :version)

(assert (=> b!1043710 (= res!695367 ((_ is Found!9834) lt!460162))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65798 (_ BitVec 32)) SeekEntryResult!9834)

(assert (=> b!1043710 (= lt!460162 (seekEntry!0 key!909 (_keys!11647 thiss!1427) (mask!30481 thiss!1427)))))

(declare-fun b!1043711 () Bool)

(assert (=> b!1043711 (= e!591446 tp_is_empty!24825)))

(declare-fun b!1043712 () Bool)

(assert (=> b!1043712 (= e!591450 (not (and (bvsge (index!41707 lt!460162) #b00000000000000000000000000000000) (bvslt (index!41707 lt!460162) (size!32184 (_values!6413 thiss!1427))))))))

(declare-fun lt!460167 () array!65798)

(declare-datatypes ((tuple2!15848 0))(
  ( (tuple2!15849 (_1!7934 (_ BitVec 64)) (_2!7934 V!37973)) )
))
(declare-datatypes ((List!22124 0))(
  ( (Nil!22121) (Cons!22120 (h!23328 tuple2!15848) (t!31355 List!22124)) )
))
(declare-datatypes ((ListLongMap!13885 0))(
  ( (ListLongMap!13886 (toList!6958 List!22124)) )
))
(declare-fun -!534 (ListLongMap!13885 (_ BitVec 64)) ListLongMap!13885)

(declare-fun getCurrentListMap!3964 (array!65798 array!65800 (_ BitVec 32) (_ BitVec 32) V!37973 V!37973 (_ BitVec 32) Int) ListLongMap!13885)

(declare-fun dynLambda!2008 (Int (_ BitVec 64)) V!37973)

(assert (=> b!1043712 (= (-!534 (getCurrentListMap!3964 (_keys!11647 thiss!1427) (_values!6413 thiss!1427) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)) key!909) (getCurrentListMap!3964 lt!460167 (array!65801 (store (arr!31648 (_values!6413 thiss!1427)) (index!41707 lt!460162) (ValueCellFull!11709 (dynLambda!2008 (defaultEntry!6390 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32184 (_values!6413 thiss!1427))) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)))))

(declare-datatypes ((Unit!34080 0))(
  ( (Unit!34081) )
))
(declare-fun lt!460168 () Unit!34080)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!54 (array!65798 array!65800 (_ BitVec 32) (_ BitVec 32) V!37973 V!37973 (_ BitVec 32) (_ BitVec 64) Int) Unit!34080)

(assert (=> b!1043712 (= lt!460168 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!54 (_keys!11647 thiss!1427) (_values!6413 thiss!1427) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) (index!41707 lt!460162) key!909 (defaultEntry!6390 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65798 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1043712 (not (arrayContainsKey!0 lt!460167 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!460163 () Unit!34080)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65798 (_ BitVec 32) (_ BitVec 64)) Unit!34080)

(assert (=> b!1043712 (= lt!460163 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11647 thiss!1427) (index!41707 lt!460162) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65798 (_ BitVec 32)) Bool)

(assert (=> b!1043712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!460167 (mask!30481 thiss!1427))))

(declare-fun lt!460164 () Unit!34080)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65798 (_ BitVec 32) (_ BitVec 32)) Unit!34080)

(assert (=> b!1043712 (= lt!460164 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11647 thiss!1427) (index!41707 lt!460162) (mask!30481 thiss!1427)))))

(declare-datatypes ((List!22125 0))(
  ( (Nil!22122) (Cons!22121 (h!23329 (_ BitVec 64)) (t!31356 List!22125)) )
))
(declare-fun arrayNoDuplicates!0 (array!65798 (_ BitVec 32) List!22125) Bool)

(assert (=> b!1043712 (arrayNoDuplicates!0 lt!460167 #b00000000000000000000000000000000 Nil!22122)))

(declare-fun lt!460165 () Unit!34080)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65798 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22125) Unit!34080)

(assert (=> b!1043712 (= lt!460165 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11647 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41707 lt!460162) #b00000000000000000000000000000000 Nil!22122))))

(declare-fun arrayCountValidKeys!0 (array!65798 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1043712 (= (arrayCountValidKeys!0 lt!460167 #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11647 thiss!1427) #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1043712 (= lt!460167 (array!65799 (store (arr!31647 (_keys!11647 thiss!1427)) (index!41707 lt!460162) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32183 (_keys!11647 thiss!1427))))))

(declare-fun lt!460166 () Unit!34080)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65798 (_ BitVec 32) (_ BitVec 64)) Unit!34080)

(assert (=> b!1043712 (= lt!460166 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11647 thiss!1427) (index!41707 lt!460162) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1043713 () Bool)

(declare-fun res!695368 () Bool)

(assert (=> b!1043713 (=> (not res!695368) (not e!591448))))

(assert (=> b!1043713 (= res!695368 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!38861 () Bool)

(assert (=> mapIsEmpty!38861 mapRes!38861))

(assert (= (and start!91734 res!695366) b!1043713))

(assert (= (and b!1043713 res!695368) b!1043710))

(assert (= (and b!1043710 res!695367) b!1043712))

(assert (= (and b!1043708 condMapEmpty!38861) mapIsEmpty!38861))

(assert (= (and b!1043708 (not condMapEmpty!38861)) mapNonEmpty!38861))

(assert (= (and mapNonEmpty!38861 ((_ is ValueCellFull!11709) mapValue!38861)) b!1043711))

(assert (= (and b!1043708 ((_ is ValueCellFull!11709) mapDefault!38861)) b!1043707))

(assert (= b!1043709 b!1043708))

(assert (= start!91734 b!1043709))

(declare-fun b_lambda!16209 () Bool)

(assert (=> (not b_lambda!16209) (not b!1043712)))

(declare-fun t!31354 () Bool)

(declare-fun tb!7053 () Bool)

(assert (=> (and b!1043709 (= (defaultEntry!6390 thiss!1427) (defaultEntry!6390 thiss!1427)) t!31354) tb!7053))

(declare-fun result!14521 () Bool)

(assert (=> tb!7053 (= result!14521 tp_is_empty!24825)))

(assert (=> b!1043712 t!31354))

(declare-fun b_and!33671 () Bool)

(assert (= b_and!33669 (and (=> t!31354 result!14521) b_and!33671)))

(declare-fun m!963131 () Bool)

(assert (=> mapNonEmpty!38861 m!963131))

(declare-fun m!963133 () Bool)

(assert (=> b!1043712 m!963133))

(declare-fun m!963135 () Bool)

(assert (=> b!1043712 m!963135))

(declare-fun m!963137 () Bool)

(assert (=> b!1043712 m!963137))

(declare-fun m!963139 () Bool)

(assert (=> b!1043712 m!963139))

(declare-fun m!963141 () Bool)

(assert (=> b!1043712 m!963141))

(declare-fun m!963143 () Bool)

(assert (=> b!1043712 m!963143))

(declare-fun m!963145 () Bool)

(assert (=> b!1043712 m!963145))

(declare-fun m!963147 () Bool)

(assert (=> b!1043712 m!963147))

(declare-fun m!963149 () Bool)

(assert (=> b!1043712 m!963149))

(declare-fun m!963151 () Bool)

(assert (=> b!1043712 m!963151))

(declare-fun m!963153 () Bool)

(assert (=> b!1043712 m!963153))

(assert (=> b!1043712 m!963149))

(declare-fun m!963155 () Bool)

(assert (=> b!1043712 m!963155))

(declare-fun m!963157 () Bool)

(assert (=> b!1043712 m!963157))

(declare-fun m!963159 () Bool)

(assert (=> b!1043712 m!963159))

(declare-fun m!963161 () Bool)

(assert (=> b!1043712 m!963161))

(declare-fun m!963163 () Bool)

(assert (=> b!1043712 m!963163))

(declare-fun m!963165 () Bool)

(assert (=> start!91734 m!963165))

(declare-fun m!963167 () Bool)

(assert (=> b!1043710 m!963167))

(declare-fun m!963169 () Bool)

(assert (=> b!1043709 m!963169))

(declare-fun m!963171 () Bool)

(assert (=> b!1043709 m!963171))

(check-sat tp_is_empty!24825 (not b_next!21105) (not b!1043710) (not start!91734) (not b!1043712) (not mapNonEmpty!38861) b_and!33671 (not b_lambda!16209) (not b!1043709))
(check-sat b_and!33671 (not b_next!21105))
(get-model)

(declare-fun b_lambda!16213 () Bool)

(assert (= b_lambda!16209 (or (and b!1043709 b_free!21105) b_lambda!16213)))

(check-sat tp_is_empty!24825 (not b_next!21105) (not b!1043710) (not b!1043709) (not b!1043712) (not mapNonEmpty!38861) b_and!33671 (not start!91734) (not b_lambda!16213))
(check-sat b_and!33671 (not b_next!21105))
(get-model)

(declare-fun b!1043749 () Bool)

(declare-fun e!591481 () Bool)

(declare-fun e!591482 () Bool)

(assert (=> b!1043749 (= e!591481 e!591482)))

(declare-fun res!695385 () Bool)

(assert (=> b!1043749 (=> (not res!695385) (not e!591482))))

(declare-fun e!591484 () Bool)

(assert (=> b!1043749 (= res!695385 (not e!591484))))

(declare-fun res!695384 () Bool)

(assert (=> b!1043749 (=> (not res!695384) (not e!591484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1043749 (= res!695384 (validKeyInArray!0 (select (arr!31647 lt!460167) #b00000000000000000000000000000000)))))

(declare-fun b!1043750 () Bool)

(declare-fun e!591483 () Bool)

(assert (=> b!1043750 (= e!591482 e!591483)))

(declare-fun c!105930 () Bool)

(assert (=> b!1043750 (= c!105930 (validKeyInArray!0 (select (arr!31647 lt!460167) #b00000000000000000000000000000000)))))

(declare-fun bm!44261 () Bool)

(declare-fun call!44264 () Bool)

(assert (=> bm!44261 (= call!44264 (arrayNoDuplicates!0 lt!460167 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105930 (Cons!22121 (select (arr!31647 lt!460167) #b00000000000000000000000000000000) Nil!22122) Nil!22122)))))

(declare-fun b!1043751 () Bool)

(declare-fun contains!6087 (List!22125 (_ BitVec 64)) Bool)

(assert (=> b!1043751 (= e!591484 (contains!6087 Nil!22122 (select (arr!31647 lt!460167) #b00000000000000000000000000000000)))))

(declare-fun d!126251 () Bool)

(declare-fun res!695386 () Bool)

(assert (=> d!126251 (=> res!695386 e!591481)))

(assert (=> d!126251 (= res!695386 (bvsge #b00000000000000000000000000000000 (size!32183 lt!460167)))))

(assert (=> d!126251 (= (arrayNoDuplicates!0 lt!460167 #b00000000000000000000000000000000 Nil!22122) e!591481)))

(declare-fun b!1043752 () Bool)

(assert (=> b!1043752 (= e!591483 call!44264)))

(declare-fun b!1043753 () Bool)

(assert (=> b!1043753 (= e!591483 call!44264)))

(assert (= (and d!126251 (not res!695386)) b!1043749))

(assert (= (and b!1043749 res!695384) b!1043751))

(assert (= (and b!1043749 res!695385) b!1043750))

(assert (= (and b!1043750 c!105930) b!1043752))

(assert (= (and b!1043750 (not c!105930)) b!1043753))

(assert (= (or b!1043752 b!1043753) bm!44261))

(declare-fun m!963215 () Bool)

(assert (=> b!1043749 m!963215))

(assert (=> b!1043749 m!963215))

(declare-fun m!963217 () Bool)

(assert (=> b!1043749 m!963217))

(assert (=> b!1043750 m!963215))

(assert (=> b!1043750 m!963215))

(assert (=> b!1043750 m!963217))

(assert (=> bm!44261 m!963215))

(declare-fun m!963219 () Bool)

(assert (=> bm!44261 m!963219))

(assert (=> b!1043751 m!963215))

(assert (=> b!1043751 m!963215))

(declare-fun m!963221 () Bool)

(assert (=> b!1043751 m!963221))

(assert (=> b!1043712 d!126251))

(declare-fun b!1043765 () Bool)

(declare-fun e!591490 () Bool)

(assert (=> b!1043765 (= e!591490 (= (arrayCountValidKeys!0 (array!65799 (store (arr!31647 (_keys!11647 thiss!1427)) (index!41707 lt!460162) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32183 (_keys!11647 thiss!1427))) #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11647 thiss!1427) #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1043762 () Bool)

(declare-fun res!695396 () Bool)

(declare-fun e!591489 () Bool)

(assert (=> b!1043762 (=> (not res!695396) (not e!591489))))

(assert (=> b!1043762 (= res!695396 (validKeyInArray!0 (select (arr!31647 (_keys!11647 thiss!1427)) (index!41707 lt!460162))))))

(declare-fun b!1043764 () Bool)

(assert (=> b!1043764 (= e!591489 (bvslt (size!32183 (_keys!11647 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1043763 () Bool)

(declare-fun res!695398 () Bool)

(assert (=> b!1043763 (=> (not res!695398) (not e!591489))))

(assert (=> b!1043763 (= res!695398 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!126253 () Bool)

(assert (=> d!126253 e!591490))

(declare-fun res!695397 () Bool)

(assert (=> d!126253 (=> (not res!695397) (not e!591490))))

(assert (=> d!126253 (= res!695397 (and (bvsge (index!41707 lt!460162) #b00000000000000000000000000000000) (bvslt (index!41707 lt!460162) (size!32183 (_keys!11647 thiss!1427)))))))

(declare-fun lt!460192 () Unit!34080)

(declare-fun choose!82 (array!65798 (_ BitVec 32) (_ BitVec 64)) Unit!34080)

(assert (=> d!126253 (= lt!460192 (choose!82 (_keys!11647 thiss!1427) (index!41707 lt!460162) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!126253 e!591489))

(declare-fun res!695395 () Bool)

(assert (=> d!126253 (=> (not res!695395) (not e!591489))))

(assert (=> d!126253 (= res!695395 (and (bvsge (index!41707 lt!460162) #b00000000000000000000000000000000) (bvslt (index!41707 lt!460162) (size!32183 (_keys!11647 thiss!1427)))))))

(assert (=> d!126253 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11647 thiss!1427) (index!41707 lt!460162) #b1000000000000000000000000000000000000000000000000000000000000000) lt!460192)))

(assert (= (and d!126253 res!695395) b!1043762))

(assert (= (and b!1043762 res!695396) b!1043763))

(assert (= (and b!1043763 res!695398) b!1043764))

(assert (= (and d!126253 res!695397) b!1043765))

(assert (=> b!1043765 m!963155))

(declare-fun m!963223 () Bool)

(assert (=> b!1043765 m!963223))

(assert (=> b!1043765 m!963145))

(declare-fun m!963225 () Bool)

(assert (=> b!1043762 m!963225))

(assert (=> b!1043762 m!963225))

(declare-fun m!963227 () Bool)

(assert (=> b!1043762 m!963227))

(declare-fun m!963229 () Bool)

(assert (=> b!1043763 m!963229))

(declare-fun m!963231 () Bool)

(assert (=> d!126253 m!963231))

(assert (=> b!1043712 d!126253))

(declare-fun b!1043808 () Bool)

(declare-fun e!591520 () Bool)

(declare-fun e!591519 () Bool)

(assert (=> b!1043808 (= e!591520 e!591519)))

(declare-fun c!105946 () Bool)

(assert (=> b!1043808 (= c!105946 (not (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1043809 () Bool)

(declare-fun e!591521 () ListLongMap!13885)

(declare-fun call!44282 () ListLongMap!13885)

(assert (=> b!1043809 (= e!591521 call!44282)))

(declare-fun b!1043810 () Bool)

(declare-fun res!695418 () Bool)

(assert (=> b!1043810 (=> (not res!695418) (not e!591520))))

(declare-fun e!591528 () Bool)

(assert (=> b!1043810 (= res!695418 e!591528)))

(declare-fun c!105948 () Bool)

(assert (=> b!1043810 (= c!105948 (not (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1043811 () Bool)

(declare-fun call!44279 () Bool)

(assert (=> b!1043811 (= e!591528 (not call!44279))))

(declare-fun b!1043813 () Bool)

(declare-fun e!591525 () Unit!34080)

(declare-fun lt!460243 () Unit!34080)

(assert (=> b!1043813 (= e!591525 lt!460243)))

(declare-fun lt!460254 () ListLongMap!13885)

(declare-fun getCurrentListMapNoExtraKeys!3537 (array!65798 array!65800 (_ BitVec 32) (_ BitVec 32) V!37973 V!37973 (_ BitVec 32) Int) ListLongMap!13885)

(assert (=> b!1043813 (= lt!460254 (getCurrentListMapNoExtraKeys!3537 (_keys!11647 thiss!1427) (_values!6413 thiss!1427) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)))))

(declare-fun lt!460258 () (_ BitVec 64))

(assert (=> b!1043813 (= lt!460258 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460250 () (_ BitVec 64))

(assert (=> b!1043813 (= lt!460250 (select (arr!31647 (_keys!11647 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!460246 () Unit!34080)

(declare-fun addStillContains!632 (ListLongMap!13885 (_ BitVec 64) V!37973 (_ BitVec 64)) Unit!34080)

(assert (=> b!1043813 (= lt!460246 (addStillContains!632 lt!460254 lt!460258 (zeroValue!6224 thiss!1427) lt!460250))))

(declare-fun contains!6088 (ListLongMap!13885 (_ BitVec 64)) Bool)

(declare-fun +!3067 (ListLongMap!13885 tuple2!15848) ListLongMap!13885)

(assert (=> b!1043813 (contains!6088 (+!3067 lt!460254 (tuple2!15849 lt!460258 (zeroValue!6224 thiss!1427))) lt!460250)))

(declare-fun lt!460237 () Unit!34080)

(assert (=> b!1043813 (= lt!460237 lt!460246)))

(declare-fun lt!460255 () ListLongMap!13885)

(assert (=> b!1043813 (= lt!460255 (getCurrentListMapNoExtraKeys!3537 (_keys!11647 thiss!1427) (_values!6413 thiss!1427) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)))))

(declare-fun lt!460240 () (_ BitVec 64))

(assert (=> b!1043813 (= lt!460240 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460239 () (_ BitVec 64))

(assert (=> b!1043813 (= lt!460239 (select (arr!31647 (_keys!11647 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!460257 () Unit!34080)

(declare-fun addApplyDifferent!484 (ListLongMap!13885 (_ BitVec 64) V!37973 (_ BitVec 64)) Unit!34080)

(assert (=> b!1043813 (= lt!460257 (addApplyDifferent!484 lt!460255 lt!460240 (minValue!6224 thiss!1427) lt!460239))))

(declare-fun apply!944 (ListLongMap!13885 (_ BitVec 64)) V!37973)

(assert (=> b!1043813 (= (apply!944 (+!3067 lt!460255 (tuple2!15849 lt!460240 (minValue!6224 thiss!1427))) lt!460239) (apply!944 lt!460255 lt!460239))))

(declare-fun lt!460251 () Unit!34080)

(assert (=> b!1043813 (= lt!460251 lt!460257)))

(declare-fun lt!460244 () ListLongMap!13885)

(assert (=> b!1043813 (= lt!460244 (getCurrentListMapNoExtraKeys!3537 (_keys!11647 thiss!1427) (_values!6413 thiss!1427) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)))))

(declare-fun lt!460245 () (_ BitVec 64))

(assert (=> b!1043813 (= lt!460245 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460242 () (_ BitVec 64))

(assert (=> b!1043813 (= lt!460242 (select (arr!31647 (_keys!11647 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!460249 () Unit!34080)

(assert (=> b!1043813 (= lt!460249 (addApplyDifferent!484 lt!460244 lt!460245 (zeroValue!6224 thiss!1427) lt!460242))))

(assert (=> b!1043813 (= (apply!944 (+!3067 lt!460244 (tuple2!15849 lt!460245 (zeroValue!6224 thiss!1427))) lt!460242) (apply!944 lt!460244 lt!460242))))

(declare-fun lt!460252 () Unit!34080)

(assert (=> b!1043813 (= lt!460252 lt!460249)))

(declare-fun lt!460253 () ListLongMap!13885)

(assert (=> b!1043813 (= lt!460253 (getCurrentListMapNoExtraKeys!3537 (_keys!11647 thiss!1427) (_values!6413 thiss!1427) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)))))

(declare-fun lt!460256 () (_ BitVec 64))

(assert (=> b!1043813 (= lt!460256 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460247 () (_ BitVec 64))

(assert (=> b!1043813 (= lt!460247 (select (arr!31647 (_keys!11647 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1043813 (= lt!460243 (addApplyDifferent!484 lt!460253 lt!460256 (minValue!6224 thiss!1427) lt!460247))))

(assert (=> b!1043813 (= (apply!944 (+!3067 lt!460253 (tuple2!15849 lt!460256 (minValue!6224 thiss!1427))) lt!460247) (apply!944 lt!460253 lt!460247))))

(declare-fun bm!44276 () Bool)

(declare-fun call!44284 () ListLongMap!13885)

(assert (=> bm!44276 (= call!44284 (getCurrentListMapNoExtraKeys!3537 (_keys!11647 thiss!1427) (_values!6413 thiss!1427) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)))))

(declare-fun b!1043814 () Bool)

(declare-fun e!591523 () Bool)

(assert (=> b!1043814 (= e!591523 (validKeyInArray!0 (select (arr!31647 (_keys!11647 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44277 () Bool)

(declare-fun call!44285 () ListLongMap!13885)

(assert (=> bm!44277 (= call!44282 call!44285)))

(declare-fun b!1043815 () Bool)

(declare-fun e!591527 () Bool)

(assert (=> b!1043815 (= e!591527 (validKeyInArray!0 (select (arr!31647 (_keys!11647 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1043816 () Bool)

(declare-fun e!591529 () Bool)

(assert (=> b!1043816 (= e!591519 e!591529)))

(declare-fun res!695423 () Bool)

(declare-fun call!44280 () Bool)

(assert (=> b!1043816 (= res!695423 call!44280)))

(assert (=> b!1043816 (=> (not res!695423) (not e!591529))))

(declare-fun b!1043817 () Bool)

(declare-fun e!591517 () ListLongMap!13885)

(assert (=> b!1043817 (= e!591517 (+!3067 call!44285 (tuple2!15849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6224 thiss!1427))))))

(declare-fun b!1043818 () Bool)

(assert (=> b!1043818 (= e!591519 (not call!44280))))

(declare-fun b!1043819 () Bool)

(declare-fun e!591524 () ListLongMap!13885)

(assert (=> b!1043819 (= e!591517 e!591524)))

(declare-fun c!105947 () Bool)

(assert (=> b!1043819 (= c!105947 (and (not (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1043812 () Bool)

(declare-fun Unit!34084 () Unit!34080)

(assert (=> b!1043812 (= e!591525 Unit!34084)))

(declare-fun d!126255 () Bool)

(assert (=> d!126255 e!591520))

(declare-fun res!695422 () Bool)

(assert (=> d!126255 (=> (not res!695422) (not e!591520))))

(assert (=> d!126255 (= res!695422 (or (bvsge #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))))))))

(declare-fun lt!460241 () ListLongMap!13885)

(declare-fun lt!460238 () ListLongMap!13885)

(assert (=> d!126255 (= lt!460241 lt!460238)))

(declare-fun lt!460248 () Unit!34080)

(assert (=> d!126255 (= lt!460248 e!591525)))

(declare-fun c!105944 () Bool)

(assert (=> d!126255 (= c!105944 e!591527)))

(declare-fun res!695417 () Bool)

(assert (=> d!126255 (=> (not res!695417) (not e!591527))))

(assert (=> d!126255 (= res!695417 (bvslt #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))))))

(assert (=> d!126255 (= lt!460238 e!591517)))

(declare-fun c!105945 () Bool)

(assert (=> d!126255 (= c!105945 (and (not (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!126255 (validMask!0 (mask!30481 thiss!1427))))

(assert (=> d!126255 (= (getCurrentListMap!3964 (_keys!11647 thiss!1427) (_values!6413 thiss!1427) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)) lt!460241)))

(declare-fun b!1043820 () Bool)

(assert (=> b!1043820 (= e!591524 call!44282)))

(declare-fun b!1043821 () Bool)

(declare-fun e!591522 () Bool)

(assert (=> b!1043821 (= e!591528 e!591522)))

(declare-fun res!695425 () Bool)

(assert (=> b!1043821 (= res!695425 call!44279)))

(assert (=> b!1043821 (=> (not res!695425) (not e!591522))))

(declare-fun bm!44278 () Bool)

(declare-fun call!44283 () ListLongMap!13885)

(assert (=> bm!44278 (= call!44283 call!44284)))

(declare-fun b!1043822 () Bool)

(declare-fun e!591526 () Bool)

(declare-fun get!16555 (ValueCell!11709 V!37973) V!37973)

(assert (=> b!1043822 (= e!591526 (= (apply!944 lt!460241 (select (arr!31647 (_keys!11647 thiss!1427)) #b00000000000000000000000000000000)) (get!16555 (select (arr!31648 (_values!6413 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2008 (defaultEntry!6390 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1043822 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32184 (_values!6413 thiss!1427))))))

(assert (=> b!1043822 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))))))

(declare-fun bm!44279 () Bool)

(assert (=> bm!44279 (= call!44280 (contains!6088 lt!460241 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!44280 () Bool)

(declare-fun call!44281 () ListLongMap!13885)

(assert (=> bm!44280 (= call!44281 call!44283)))

(declare-fun b!1043823 () Bool)

(assert (=> b!1043823 (= e!591521 call!44281)))

(declare-fun b!1043824 () Bool)

(assert (=> b!1043824 (= e!591529 (= (apply!944 lt!460241 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6224 thiss!1427)))))

(declare-fun b!1043825 () Bool)

(declare-fun e!591518 () Bool)

(assert (=> b!1043825 (= e!591518 e!591526)))

(declare-fun res!695424 () Bool)

(assert (=> b!1043825 (=> (not res!695424) (not e!591526))))

(assert (=> b!1043825 (= res!695424 (contains!6088 lt!460241 (select (arr!31647 (_keys!11647 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1043825 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))))))

(declare-fun bm!44281 () Bool)

(assert (=> bm!44281 (= call!44279 (contains!6088 lt!460241 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1043826 () Bool)

(assert (=> b!1043826 (= e!591522 (= (apply!944 lt!460241 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6224 thiss!1427)))))

(declare-fun b!1043827 () Bool)

(declare-fun c!105943 () Bool)

(assert (=> b!1043827 (= c!105943 (and (not (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1043827 (= e!591524 e!591521)))

(declare-fun bm!44282 () Bool)

(assert (=> bm!44282 (= call!44285 (+!3067 (ite c!105945 call!44284 (ite c!105947 call!44283 call!44281)) (ite (or c!105945 c!105947) (tuple2!15849 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6224 thiss!1427)) (tuple2!15849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6224 thiss!1427)))))))

(declare-fun b!1043828 () Bool)

(declare-fun res!695421 () Bool)

(assert (=> b!1043828 (=> (not res!695421) (not e!591520))))

(assert (=> b!1043828 (= res!695421 e!591518)))

(declare-fun res!695419 () Bool)

(assert (=> b!1043828 (=> res!695419 e!591518)))

(assert (=> b!1043828 (= res!695419 (not e!591523))))

(declare-fun res!695420 () Bool)

(assert (=> b!1043828 (=> (not res!695420) (not e!591523))))

(assert (=> b!1043828 (= res!695420 (bvslt #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))))))

(assert (= (and d!126255 c!105945) b!1043817))

(assert (= (and d!126255 (not c!105945)) b!1043819))

(assert (= (and b!1043819 c!105947) b!1043820))

(assert (= (and b!1043819 (not c!105947)) b!1043827))

(assert (= (and b!1043827 c!105943) b!1043809))

(assert (= (and b!1043827 (not c!105943)) b!1043823))

(assert (= (or b!1043809 b!1043823) bm!44280))

(assert (= (or b!1043820 bm!44280) bm!44278))

(assert (= (or b!1043820 b!1043809) bm!44277))

(assert (= (or b!1043817 bm!44278) bm!44276))

(assert (= (or b!1043817 bm!44277) bm!44282))

(assert (= (and d!126255 res!695417) b!1043815))

(assert (= (and d!126255 c!105944) b!1043813))

(assert (= (and d!126255 (not c!105944)) b!1043812))

(assert (= (and d!126255 res!695422) b!1043828))

(assert (= (and b!1043828 res!695420) b!1043814))

(assert (= (and b!1043828 (not res!695419)) b!1043825))

(assert (= (and b!1043825 res!695424) b!1043822))

(assert (= (and b!1043828 res!695421) b!1043810))

(assert (= (and b!1043810 c!105948) b!1043821))

(assert (= (and b!1043810 (not c!105948)) b!1043811))

(assert (= (and b!1043821 res!695425) b!1043826))

(assert (= (or b!1043821 b!1043811) bm!44281))

(assert (= (and b!1043810 res!695418) b!1043808))

(assert (= (and b!1043808 c!105946) b!1043816))

(assert (= (and b!1043808 (not c!105946)) b!1043818))

(assert (= (and b!1043816 res!695423) b!1043824))

(assert (= (or b!1043816 b!1043818) bm!44279))

(declare-fun b_lambda!16215 () Bool)

(assert (=> (not b_lambda!16215) (not b!1043822)))

(assert (=> b!1043822 t!31354))

(declare-fun b_and!33677 () Bool)

(assert (= b_and!33671 (and (=> t!31354 result!14521) b_and!33677)))

(declare-fun m!963233 () Bool)

(assert (=> bm!44276 m!963233))

(declare-fun m!963235 () Bool)

(assert (=> b!1043826 m!963235))

(declare-fun m!963237 () Bool)

(assert (=> bm!44282 m!963237))

(declare-fun m!963239 () Bool)

(assert (=> b!1043825 m!963239))

(assert (=> b!1043825 m!963239))

(declare-fun m!963241 () Bool)

(assert (=> b!1043825 m!963241))

(declare-fun m!963243 () Bool)

(assert (=> b!1043822 m!963243))

(assert (=> b!1043822 m!963157))

(declare-fun m!963245 () Bool)

(assert (=> b!1043822 m!963245))

(assert (=> b!1043822 m!963239))

(declare-fun m!963247 () Bool)

(assert (=> b!1043822 m!963247))

(assert (=> b!1043822 m!963157))

(assert (=> b!1043822 m!963239))

(assert (=> b!1043822 m!963243))

(declare-fun m!963249 () Bool)

(assert (=> bm!44279 m!963249))

(declare-fun m!963251 () Bool)

(assert (=> d!126255 m!963251))

(assert (=> b!1043815 m!963239))

(assert (=> b!1043815 m!963239))

(declare-fun m!963253 () Bool)

(assert (=> b!1043815 m!963253))

(declare-fun m!963255 () Bool)

(assert (=> b!1043817 m!963255))

(declare-fun m!963257 () Bool)

(assert (=> b!1043824 m!963257))

(assert (=> b!1043814 m!963239))

(assert (=> b!1043814 m!963239))

(assert (=> b!1043814 m!963253))

(declare-fun m!963259 () Bool)

(assert (=> b!1043813 m!963259))

(declare-fun m!963261 () Bool)

(assert (=> b!1043813 m!963261))

(assert (=> b!1043813 m!963261))

(declare-fun m!963263 () Bool)

(assert (=> b!1043813 m!963263))

(declare-fun m!963265 () Bool)

(assert (=> b!1043813 m!963265))

(declare-fun m!963267 () Bool)

(assert (=> b!1043813 m!963267))

(assert (=> b!1043813 m!963233))

(declare-fun m!963269 () Bool)

(assert (=> b!1043813 m!963269))

(declare-fun m!963271 () Bool)

(assert (=> b!1043813 m!963271))

(declare-fun m!963273 () Bool)

(assert (=> b!1043813 m!963273))

(declare-fun m!963275 () Bool)

(assert (=> b!1043813 m!963275))

(assert (=> b!1043813 m!963275))

(declare-fun m!963277 () Bool)

(assert (=> b!1043813 m!963277))

(declare-fun m!963279 () Bool)

(assert (=> b!1043813 m!963279))

(declare-fun m!963281 () Bool)

(assert (=> b!1043813 m!963281))

(declare-fun m!963283 () Bool)

(assert (=> b!1043813 m!963283))

(assert (=> b!1043813 m!963239))

(assert (=> b!1043813 m!963269))

(assert (=> b!1043813 m!963279))

(declare-fun m!963285 () Bool)

(assert (=> b!1043813 m!963285))

(declare-fun m!963287 () Bool)

(assert (=> b!1043813 m!963287))

(declare-fun m!963289 () Bool)

(assert (=> bm!44281 m!963289))

(assert (=> b!1043712 d!126255))

(declare-fun b!1043838 () Bool)

(declare-fun e!591536 () Bool)

(declare-fun e!591537 () Bool)

(assert (=> b!1043838 (= e!591536 e!591537)))

(declare-fun c!105951 () Bool)

(assert (=> b!1043838 (= c!105951 (validKeyInArray!0 (select (arr!31647 lt!460167) #b00000000000000000000000000000000)))))

(declare-fun b!1043839 () Bool)

(declare-fun call!44288 () Bool)

(assert (=> b!1043839 (= e!591537 call!44288)))

(declare-fun b!1043837 () Bool)

(declare-fun e!591538 () Bool)

(assert (=> b!1043837 (= e!591538 call!44288)))

(declare-fun d!126257 () Bool)

(declare-fun res!695431 () Bool)

(assert (=> d!126257 (=> res!695431 e!591536)))

(assert (=> d!126257 (= res!695431 (bvsge #b00000000000000000000000000000000 (size!32183 lt!460167)))))

(assert (=> d!126257 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!460167 (mask!30481 thiss!1427)) e!591536)))

(declare-fun bm!44285 () Bool)

(assert (=> bm!44285 (= call!44288 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!460167 (mask!30481 thiss!1427)))))

(declare-fun b!1043840 () Bool)

(assert (=> b!1043840 (= e!591537 e!591538)))

(declare-fun lt!460267 () (_ BitVec 64))

(assert (=> b!1043840 (= lt!460267 (select (arr!31647 lt!460167) #b00000000000000000000000000000000))))

(declare-fun lt!460266 () Unit!34080)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65798 (_ BitVec 64) (_ BitVec 32)) Unit!34080)

(assert (=> b!1043840 (= lt!460266 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!460167 lt!460267 #b00000000000000000000000000000000))))

(assert (=> b!1043840 (arrayContainsKey!0 lt!460167 lt!460267 #b00000000000000000000000000000000)))

(declare-fun lt!460265 () Unit!34080)

(assert (=> b!1043840 (= lt!460265 lt!460266)))

(declare-fun res!695430 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65798 (_ BitVec 32)) SeekEntryResult!9834)

(assert (=> b!1043840 (= res!695430 (= (seekEntryOrOpen!0 (select (arr!31647 lt!460167) #b00000000000000000000000000000000) lt!460167 (mask!30481 thiss!1427)) (Found!9834 #b00000000000000000000000000000000)))))

(assert (=> b!1043840 (=> (not res!695430) (not e!591538))))

(assert (= (and d!126257 (not res!695431)) b!1043838))

(assert (= (and b!1043838 c!105951) b!1043840))

(assert (= (and b!1043838 (not c!105951)) b!1043839))

(assert (= (and b!1043840 res!695430) b!1043837))

(assert (= (or b!1043837 b!1043839) bm!44285))

(assert (=> b!1043838 m!963215))

(assert (=> b!1043838 m!963215))

(assert (=> b!1043838 m!963217))

(declare-fun m!963291 () Bool)

(assert (=> bm!44285 m!963291))

(assert (=> b!1043840 m!963215))

(declare-fun m!963293 () Bool)

(assert (=> b!1043840 m!963293))

(declare-fun m!963295 () Bool)

(assert (=> b!1043840 m!963295))

(assert (=> b!1043840 m!963215))

(declare-fun m!963297 () Bool)

(assert (=> b!1043840 m!963297))

(assert (=> b!1043712 d!126257))

(declare-fun d!126259 () Bool)

(declare-fun lt!460270 () ListLongMap!13885)

(assert (=> d!126259 (not (contains!6088 lt!460270 key!909))))

(declare-fun removeStrictlySorted!60 (List!22124 (_ BitVec 64)) List!22124)

(assert (=> d!126259 (= lt!460270 (ListLongMap!13886 (removeStrictlySorted!60 (toList!6958 (getCurrentListMap!3964 (_keys!11647 thiss!1427) (_values!6413 thiss!1427) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427))) key!909)))))

(assert (=> d!126259 (= (-!534 (getCurrentListMap!3964 (_keys!11647 thiss!1427) (_values!6413 thiss!1427) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)) key!909) lt!460270)))

(declare-fun bs!30503 () Bool)

(assert (= bs!30503 d!126259))

(declare-fun m!963299 () Bool)

(assert (=> bs!30503 m!963299))

(declare-fun m!963301 () Bool)

(assert (=> bs!30503 m!963301))

(assert (=> b!1043712 d!126259))

(declare-fun d!126261 () Bool)

(declare-fun e!591541 () Bool)

(assert (=> d!126261 e!591541))

(declare-fun res!695434 () Bool)

(assert (=> d!126261 (=> (not res!695434) (not e!591541))))

(assert (=> d!126261 (= res!695434 (and (bvsge (index!41707 lt!460162) #b00000000000000000000000000000000) (bvslt (index!41707 lt!460162) (size!32183 (_keys!11647 thiss!1427)))))))

(declare-fun lt!460273 () Unit!34080)

(declare-fun choose!25 (array!65798 (_ BitVec 32) (_ BitVec 32)) Unit!34080)

(assert (=> d!126261 (= lt!460273 (choose!25 (_keys!11647 thiss!1427) (index!41707 lt!460162) (mask!30481 thiss!1427)))))

(assert (=> d!126261 (validMask!0 (mask!30481 thiss!1427))))

(assert (=> d!126261 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11647 thiss!1427) (index!41707 lt!460162) (mask!30481 thiss!1427)) lt!460273)))

(declare-fun b!1043843 () Bool)

(assert (=> b!1043843 (= e!591541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65799 (store (arr!31647 (_keys!11647 thiss!1427)) (index!41707 lt!460162) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32183 (_keys!11647 thiss!1427))) (mask!30481 thiss!1427)))))

(assert (= (and d!126261 res!695434) b!1043843))

(declare-fun m!963303 () Bool)

(assert (=> d!126261 m!963303))

(assert (=> d!126261 m!963251))

(assert (=> b!1043843 m!963155))

(declare-fun m!963305 () Bool)

(assert (=> b!1043843 m!963305))

(assert (=> b!1043712 d!126261))

(declare-fun b!1043844 () Bool)

(declare-fun e!591545 () Bool)

(declare-fun e!591544 () Bool)

(assert (=> b!1043844 (= e!591545 e!591544)))

(declare-fun c!105955 () Bool)

(assert (=> b!1043844 (= c!105955 (not (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1043845 () Bool)

(declare-fun e!591546 () ListLongMap!13885)

(declare-fun call!44292 () ListLongMap!13885)

(assert (=> b!1043845 (= e!591546 call!44292)))

(declare-fun b!1043846 () Bool)

(declare-fun res!695436 () Bool)

(assert (=> b!1043846 (=> (not res!695436) (not e!591545))))

(declare-fun e!591553 () Bool)

(assert (=> b!1043846 (= res!695436 e!591553)))

(declare-fun c!105957 () Bool)

(assert (=> b!1043846 (= c!105957 (not (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1043847 () Bool)

(declare-fun call!44289 () Bool)

(assert (=> b!1043847 (= e!591553 (not call!44289))))

(declare-fun b!1043849 () Bool)

(declare-fun e!591550 () Unit!34080)

(declare-fun lt!460280 () Unit!34080)

(assert (=> b!1043849 (= e!591550 lt!460280)))

(declare-fun lt!460291 () ListLongMap!13885)

(assert (=> b!1043849 (= lt!460291 (getCurrentListMapNoExtraKeys!3537 lt!460167 (array!65801 (store (arr!31648 (_values!6413 thiss!1427)) (index!41707 lt!460162) (ValueCellFull!11709 (dynLambda!2008 (defaultEntry!6390 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32184 (_values!6413 thiss!1427))) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)))))

(declare-fun lt!460295 () (_ BitVec 64))

(assert (=> b!1043849 (= lt!460295 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460287 () (_ BitVec 64))

(assert (=> b!1043849 (= lt!460287 (select (arr!31647 lt!460167) #b00000000000000000000000000000000))))

(declare-fun lt!460283 () Unit!34080)

(assert (=> b!1043849 (= lt!460283 (addStillContains!632 lt!460291 lt!460295 (zeroValue!6224 thiss!1427) lt!460287))))

(assert (=> b!1043849 (contains!6088 (+!3067 lt!460291 (tuple2!15849 lt!460295 (zeroValue!6224 thiss!1427))) lt!460287)))

(declare-fun lt!460274 () Unit!34080)

(assert (=> b!1043849 (= lt!460274 lt!460283)))

(declare-fun lt!460292 () ListLongMap!13885)

(assert (=> b!1043849 (= lt!460292 (getCurrentListMapNoExtraKeys!3537 lt!460167 (array!65801 (store (arr!31648 (_values!6413 thiss!1427)) (index!41707 lt!460162) (ValueCellFull!11709 (dynLambda!2008 (defaultEntry!6390 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32184 (_values!6413 thiss!1427))) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)))))

(declare-fun lt!460277 () (_ BitVec 64))

(assert (=> b!1043849 (= lt!460277 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460276 () (_ BitVec 64))

(assert (=> b!1043849 (= lt!460276 (select (arr!31647 lt!460167) #b00000000000000000000000000000000))))

(declare-fun lt!460294 () Unit!34080)

(assert (=> b!1043849 (= lt!460294 (addApplyDifferent!484 lt!460292 lt!460277 (minValue!6224 thiss!1427) lt!460276))))

(assert (=> b!1043849 (= (apply!944 (+!3067 lt!460292 (tuple2!15849 lt!460277 (minValue!6224 thiss!1427))) lt!460276) (apply!944 lt!460292 lt!460276))))

(declare-fun lt!460288 () Unit!34080)

(assert (=> b!1043849 (= lt!460288 lt!460294)))

(declare-fun lt!460281 () ListLongMap!13885)

(assert (=> b!1043849 (= lt!460281 (getCurrentListMapNoExtraKeys!3537 lt!460167 (array!65801 (store (arr!31648 (_values!6413 thiss!1427)) (index!41707 lt!460162) (ValueCellFull!11709 (dynLambda!2008 (defaultEntry!6390 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32184 (_values!6413 thiss!1427))) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)))))

(declare-fun lt!460282 () (_ BitVec 64))

(assert (=> b!1043849 (= lt!460282 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460279 () (_ BitVec 64))

(assert (=> b!1043849 (= lt!460279 (select (arr!31647 lt!460167) #b00000000000000000000000000000000))))

(declare-fun lt!460286 () Unit!34080)

(assert (=> b!1043849 (= lt!460286 (addApplyDifferent!484 lt!460281 lt!460282 (zeroValue!6224 thiss!1427) lt!460279))))

(assert (=> b!1043849 (= (apply!944 (+!3067 lt!460281 (tuple2!15849 lt!460282 (zeroValue!6224 thiss!1427))) lt!460279) (apply!944 lt!460281 lt!460279))))

(declare-fun lt!460289 () Unit!34080)

(assert (=> b!1043849 (= lt!460289 lt!460286)))

(declare-fun lt!460290 () ListLongMap!13885)

(assert (=> b!1043849 (= lt!460290 (getCurrentListMapNoExtraKeys!3537 lt!460167 (array!65801 (store (arr!31648 (_values!6413 thiss!1427)) (index!41707 lt!460162) (ValueCellFull!11709 (dynLambda!2008 (defaultEntry!6390 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32184 (_values!6413 thiss!1427))) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)))))

(declare-fun lt!460293 () (_ BitVec 64))

(assert (=> b!1043849 (= lt!460293 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460284 () (_ BitVec 64))

(assert (=> b!1043849 (= lt!460284 (select (arr!31647 lt!460167) #b00000000000000000000000000000000))))

(assert (=> b!1043849 (= lt!460280 (addApplyDifferent!484 lt!460290 lt!460293 (minValue!6224 thiss!1427) lt!460284))))

(assert (=> b!1043849 (= (apply!944 (+!3067 lt!460290 (tuple2!15849 lt!460293 (minValue!6224 thiss!1427))) lt!460284) (apply!944 lt!460290 lt!460284))))

(declare-fun bm!44286 () Bool)

(declare-fun call!44294 () ListLongMap!13885)

(assert (=> bm!44286 (= call!44294 (getCurrentListMapNoExtraKeys!3537 lt!460167 (array!65801 (store (arr!31648 (_values!6413 thiss!1427)) (index!41707 lt!460162) (ValueCellFull!11709 (dynLambda!2008 (defaultEntry!6390 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32184 (_values!6413 thiss!1427))) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)))))

(declare-fun b!1043850 () Bool)

(declare-fun e!591548 () Bool)

(assert (=> b!1043850 (= e!591548 (validKeyInArray!0 (select (arr!31647 lt!460167) #b00000000000000000000000000000000)))))

(declare-fun bm!44287 () Bool)

(declare-fun call!44295 () ListLongMap!13885)

(assert (=> bm!44287 (= call!44292 call!44295)))

(declare-fun b!1043851 () Bool)

(declare-fun e!591552 () Bool)

(assert (=> b!1043851 (= e!591552 (validKeyInArray!0 (select (arr!31647 lt!460167) #b00000000000000000000000000000000)))))

(declare-fun b!1043852 () Bool)

(declare-fun e!591554 () Bool)

(assert (=> b!1043852 (= e!591544 e!591554)))

(declare-fun res!695441 () Bool)

(declare-fun call!44290 () Bool)

(assert (=> b!1043852 (= res!695441 call!44290)))

(assert (=> b!1043852 (=> (not res!695441) (not e!591554))))

(declare-fun b!1043853 () Bool)

(declare-fun e!591542 () ListLongMap!13885)

(assert (=> b!1043853 (= e!591542 (+!3067 call!44295 (tuple2!15849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6224 thiss!1427))))))

(declare-fun b!1043854 () Bool)

(assert (=> b!1043854 (= e!591544 (not call!44290))))

(declare-fun b!1043855 () Bool)

(declare-fun e!591549 () ListLongMap!13885)

(assert (=> b!1043855 (= e!591542 e!591549)))

(declare-fun c!105956 () Bool)

(assert (=> b!1043855 (= c!105956 (and (not (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1043848 () Bool)

(declare-fun Unit!34085 () Unit!34080)

(assert (=> b!1043848 (= e!591550 Unit!34085)))

(declare-fun d!126263 () Bool)

(assert (=> d!126263 e!591545))

(declare-fun res!695440 () Bool)

(assert (=> d!126263 (=> (not res!695440) (not e!591545))))

(assert (=> d!126263 (= res!695440 (or (bvsge #b00000000000000000000000000000000 (size!32183 lt!460167)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32183 lt!460167)))))))

(declare-fun lt!460278 () ListLongMap!13885)

(declare-fun lt!460275 () ListLongMap!13885)

(assert (=> d!126263 (= lt!460278 lt!460275)))

(declare-fun lt!460285 () Unit!34080)

(assert (=> d!126263 (= lt!460285 e!591550)))

(declare-fun c!105953 () Bool)

(assert (=> d!126263 (= c!105953 e!591552)))

(declare-fun res!695435 () Bool)

(assert (=> d!126263 (=> (not res!695435) (not e!591552))))

(assert (=> d!126263 (= res!695435 (bvslt #b00000000000000000000000000000000 (size!32183 lt!460167)))))

(assert (=> d!126263 (= lt!460275 e!591542)))

(declare-fun c!105954 () Bool)

(assert (=> d!126263 (= c!105954 (and (not (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126263 (validMask!0 (mask!30481 thiss!1427))))

(assert (=> d!126263 (= (getCurrentListMap!3964 lt!460167 (array!65801 (store (arr!31648 (_values!6413 thiss!1427)) (index!41707 lt!460162) (ValueCellFull!11709 (dynLambda!2008 (defaultEntry!6390 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32184 (_values!6413 thiss!1427))) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)) lt!460278)))

(declare-fun b!1043856 () Bool)

(assert (=> b!1043856 (= e!591549 call!44292)))

(declare-fun b!1043857 () Bool)

(declare-fun e!591547 () Bool)

(assert (=> b!1043857 (= e!591553 e!591547)))

(declare-fun res!695443 () Bool)

(assert (=> b!1043857 (= res!695443 call!44289)))

(assert (=> b!1043857 (=> (not res!695443) (not e!591547))))

(declare-fun bm!44288 () Bool)

(declare-fun call!44293 () ListLongMap!13885)

(assert (=> bm!44288 (= call!44293 call!44294)))

(declare-fun e!591551 () Bool)

(declare-fun b!1043858 () Bool)

(assert (=> b!1043858 (= e!591551 (= (apply!944 lt!460278 (select (arr!31647 lt!460167) #b00000000000000000000000000000000)) (get!16555 (select (arr!31648 (array!65801 (store (arr!31648 (_values!6413 thiss!1427)) (index!41707 lt!460162) (ValueCellFull!11709 (dynLambda!2008 (defaultEntry!6390 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32184 (_values!6413 thiss!1427)))) #b00000000000000000000000000000000) (dynLambda!2008 (defaultEntry!6390 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1043858 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32184 (array!65801 (store (arr!31648 (_values!6413 thiss!1427)) (index!41707 lt!460162) (ValueCellFull!11709 (dynLambda!2008 (defaultEntry!6390 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32184 (_values!6413 thiss!1427))))))))

(assert (=> b!1043858 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32183 lt!460167)))))

(declare-fun bm!44289 () Bool)

(assert (=> bm!44289 (= call!44290 (contains!6088 lt!460278 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!44290 () Bool)

(declare-fun call!44291 () ListLongMap!13885)

(assert (=> bm!44290 (= call!44291 call!44293)))

(declare-fun b!1043859 () Bool)

(assert (=> b!1043859 (= e!591546 call!44291)))

(declare-fun b!1043860 () Bool)

(assert (=> b!1043860 (= e!591554 (= (apply!944 lt!460278 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6224 thiss!1427)))))

(declare-fun b!1043861 () Bool)

(declare-fun e!591543 () Bool)

(assert (=> b!1043861 (= e!591543 e!591551)))

(declare-fun res!695442 () Bool)

(assert (=> b!1043861 (=> (not res!695442) (not e!591551))))

(assert (=> b!1043861 (= res!695442 (contains!6088 lt!460278 (select (arr!31647 lt!460167) #b00000000000000000000000000000000)))))

(assert (=> b!1043861 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32183 lt!460167)))))

(declare-fun bm!44291 () Bool)

(assert (=> bm!44291 (= call!44289 (contains!6088 lt!460278 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1043862 () Bool)

(assert (=> b!1043862 (= e!591547 (= (apply!944 lt!460278 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6224 thiss!1427)))))

(declare-fun b!1043863 () Bool)

(declare-fun c!105952 () Bool)

(assert (=> b!1043863 (= c!105952 (and (not (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6118 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1043863 (= e!591549 e!591546)))

(declare-fun bm!44292 () Bool)

(assert (=> bm!44292 (= call!44295 (+!3067 (ite c!105954 call!44294 (ite c!105956 call!44293 call!44291)) (ite (or c!105954 c!105956) (tuple2!15849 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6224 thiss!1427)) (tuple2!15849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6224 thiss!1427)))))))

(declare-fun b!1043864 () Bool)

(declare-fun res!695439 () Bool)

(assert (=> b!1043864 (=> (not res!695439) (not e!591545))))

(assert (=> b!1043864 (= res!695439 e!591543)))

(declare-fun res!695437 () Bool)

(assert (=> b!1043864 (=> res!695437 e!591543)))

(assert (=> b!1043864 (= res!695437 (not e!591548))))

(declare-fun res!695438 () Bool)

(assert (=> b!1043864 (=> (not res!695438) (not e!591548))))

(assert (=> b!1043864 (= res!695438 (bvslt #b00000000000000000000000000000000 (size!32183 lt!460167)))))

(assert (= (and d!126263 c!105954) b!1043853))

(assert (= (and d!126263 (not c!105954)) b!1043855))

(assert (= (and b!1043855 c!105956) b!1043856))

(assert (= (and b!1043855 (not c!105956)) b!1043863))

(assert (= (and b!1043863 c!105952) b!1043845))

(assert (= (and b!1043863 (not c!105952)) b!1043859))

(assert (= (or b!1043845 b!1043859) bm!44290))

(assert (= (or b!1043856 bm!44290) bm!44288))

(assert (= (or b!1043856 b!1043845) bm!44287))

(assert (= (or b!1043853 bm!44288) bm!44286))

(assert (= (or b!1043853 bm!44287) bm!44292))

(assert (= (and d!126263 res!695435) b!1043851))

(assert (= (and d!126263 c!105953) b!1043849))

(assert (= (and d!126263 (not c!105953)) b!1043848))

(assert (= (and d!126263 res!695440) b!1043864))

(assert (= (and b!1043864 res!695438) b!1043850))

(assert (= (and b!1043864 (not res!695437)) b!1043861))

(assert (= (and b!1043861 res!695442) b!1043858))

(assert (= (and b!1043864 res!695439) b!1043846))

(assert (= (and b!1043846 c!105957) b!1043857))

(assert (= (and b!1043846 (not c!105957)) b!1043847))

(assert (= (and b!1043857 res!695443) b!1043862))

(assert (= (or b!1043857 b!1043847) bm!44291))

(assert (= (and b!1043846 res!695436) b!1043844))

(assert (= (and b!1043844 c!105955) b!1043852))

(assert (= (and b!1043844 (not c!105955)) b!1043854))

(assert (= (and b!1043852 res!695441) b!1043860))

(assert (= (or b!1043852 b!1043854) bm!44289))

(declare-fun b_lambda!16217 () Bool)

(assert (=> (not b_lambda!16217) (not b!1043858)))

(assert (=> b!1043858 t!31354))

(declare-fun b_and!33679 () Bool)

(assert (= b_and!33677 (and (=> t!31354 result!14521) b_and!33679)))

(declare-fun m!963307 () Bool)

(assert (=> bm!44286 m!963307))

(declare-fun m!963309 () Bool)

(assert (=> b!1043862 m!963309))

(declare-fun m!963311 () Bool)

(assert (=> bm!44292 m!963311))

(assert (=> b!1043861 m!963215))

(assert (=> b!1043861 m!963215))

(declare-fun m!963313 () Bool)

(assert (=> b!1043861 m!963313))

(declare-fun m!963315 () Bool)

(assert (=> b!1043858 m!963315))

(assert (=> b!1043858 m!963157))

(declare-fun m!963317 () Bool)

(assert (=> b!1043858 m!963317))

(assert (=> b!1043858 m!963215))

(declare-fun m!963319 () Bool)

(assert (=> b!1043858 m!963319))

(assert (=> b!1043858 m!963157))

(assert (=> b!1043858 m!963215))

(assert (=> b!1043858 m!963315))

(declare-fun m!963321 () Bool)

(assert (=> bm!44289 m!963321))

(assert (=> d!126263 m!963251))

(assert (=> b!1043851 m!963215))

(assert (=> b!1043851 m!963215))

(assert (=> b!1043851 m!963217))

(declare-fun m!963323 () Bool)

(assert (=> b!1043853 m!963323))

(declare-fun m!963325 () Bool)

(assert (=> b!1043860 m!963325))

(assert (=> b!1043850 m!963215))

(assert (=> b!1043850 m!963215))

(assert (=> b!1043850 m!963217))

(declare-fun m!963327 () Bool)

(assert (=> b!1043849 m!963327))

(declare-fun m!963329 () Bool)

(assert (=> b!1043849 m!963329))

(assert (=> b!1043849 m!963329))

(declare-fun m!963331 () Bool)

(assert (=> b!1043849 m!963331))

(declare-fun m!963333 () Bool)

(assert (=> b!1043849 m!963333))

(declare-fun m!963335 () Bool)

(assert (=> b!1043849 m!963335))

(assert (=> b!1043849 m!963307))

(declare-fun m!963337 () Bool)

(assert (=> b!1043849 m!963337))

(declare-fun m!963339 () Bool)

(assert (=> b!1043849 m!963339))

(declare-fun m!963341 () Bool)

(assert (=> b!1043849 m!963341))

(declare-fun m!963343 () Bool)

(assert (=> b!1043849 m!963343))

(assert (=> b!1043849 m!963343))

(declare-fun m!963345 () Bool)

(assert (=> b!1043849 m!963345))

(declare-fun m!963347 () Bool)

(assert (=> b!1043849 m!963347))

(declare-fun m!963349 () Bool)

(assert (=> b!1043849 m!963349))

(declare-fun m!963351 () Bool)

(assert (=> b!1043849 m!963351))

(assert (=> b!1043849 m!963215))

(assert (=> b!1043849 m!963337))

(assert (=> b!1043849 m!963347))

(declare-fun m!963353 () Bool)

(assert (=> b!1043849 m!963353))

(declare-fun m!963355 () Bool)

(assert (=> b!1043849 m!963355))

(declare-fun m!963357 () Bool)

(assert (=> bm!44291 m!963357))

(assert (=> b!1043712 d!126263))

(declare-fun d!126265 () Bool)

(declare-fun e!591557 () Bool)

(assert (=> d!126265 e!591557))

(declare-fun res!695446 () Bool)

(assert (=> d!126265 (=> (not res!695446) (not e!591557))))

(assert (=> d!126265 (= res!695446 (and (bvsge (index!41707 lt!460162) #b00000000000000000000000000000000) (bvslt (index!41707 lt!460162) (size!32183 (_keys!11647 thiss!1427)))))))

(declare-fun lt!460298 () Unit!34080)

(declare-fun choose!1715 (array!65798 array!65800 (_ BitVec 32) (_ BitVec 32) V!37973 V!37973 (_ BitVec 32) (_ BitVec 64) Int) Unit!34080)

(assert (=> d!126265 (= lt!460298 (choose!1715 (_keys!11647 thiss!1427) (_values!6413 thiss!1427) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) (index!41707 lt!460162) key!909 (defaultEntry!6390 thiss!1427)))))

(assert (=> d!126265 (validMask!0 (mask!30481 thiss!1427))))

(assert (=> d!126265 (= (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!54 (_keys!11647 thiss!1427) (_values!6413 thiss!1427) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) (index!41707 lt!460162) key!909 (defaultEntry!6390 thiss!1427)) lt!460298)))

(declare-fun b!1043867 () Bool)

(assert (=> b!1043867 (= e!591557 (= (-!534 (getCurrentListMap!3964 (_keys!11647 thiss!1427) (_values!6413 thiss!1427) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427)) key!909) (getCurrentListMap!3964 (array!65799 (store (arr!31647 (_keys!11647 thiss!1427)) (index!41707 lt!460162) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32183 (_keys!11647 thiss!1427))) (array!65801 (store (arr!31648 (_values!6413 thiss!1427)) (index!41707 lt!460162) (ValueCellFull!11709 (dynLambda!2008 (defaultEntry!6390 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32184 (_values!6413 thiss!1427))) (mask!30481 thiss!1427) (extraKeys!6118 thiss!1427) (zeroValue!6224 thiss!1427) (minValue!6224 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6390 thiss!1427))))))

(assert (=> b!1043867 (bvslt (index!41707 lt!460162) (size!32184 (_values!6413 thiss!1427)))))

(assert (= (and d!126265 res!695446) b!1043867))

(declare-fun b_lambda!16219 () Bool)

(assert (=> (not b_lambda!16219) (not b!1043867)))

(assert (=> b!1043867 t!31354))

(declare-fun b_and!33681 () Bool)

(assert (= b_and!33679 (and (=> t!31354 result!14521) b_and!33681)))

(declare-fun m!963359 () Bool)

(assert (=> d!126265 m!963359))

(assert (=> d!126265 m!963251))

(assert (=> b!1043867 m!963133))

(assert (=> b!1043867 m!963155))

(assert (=> b!1043867 m!963149))

(declare-fun m!963361 () Bool)

(assert (=> b!1043867 m!963361))

(assert (=> b!1043867 m!963149))

(assert (=> b!1043867 m!963151))

(assert (=> b!1043867 m!963157))

(assert (=> b!1043712 d!126265))

(declare-fun d!126267 () Bool)

(declare-fun e!591560 () Bool)

(assert (=> d!126267 e!591560))

(declare-fun res!695449 () Bool)

(assert (=> d!126267 (=> (not res!695449) (not e!591560))))

(assert (=> d!126267 (= res!695449 (bvslt (index!41707 lt!460162) (size!32183 (_keys!11647 thiss!1427))))))

(declare-fun lt!460301 () Unit!34080)

(declare-fun choose!121 (array!65798 (_ BitVec 32) (_ BitVec 64)) Unit!34080)

(assert (=> d!126267 (= lt!460301 (choose!121 (_keys!11647 thiss!1427) (index!41707 lt!460162) key!909))))

(assert (=> d!126267 (bvsge (index!41707 lt!460162) #b00000000000000000000000000000000)))

(assert (=> d!126267 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11647 thiss!1427) (index!41707 lt!460162) key!909) lt!460301)))

(declare-fun b!1043870 () Bool)

(assert (=> b!1043870 (= e!591560 (not (arrayContainsKey!0 (array!65799 (store (arr!31647 (_keys!11647 thiss!1427)) (index!41707 lt!460162) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32183 (_keys!11647 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!126267 res!695449) b!1043870))

(declare-fun m!963363 () Bool)

(assert (=> d!126267 m!963363))

(assert (=> b!1043870 m!963155))

(declare-fun m!963365 () Bool)

(assert (=> b!1043870 m!963365))

(assert (=> b!1043712 d!126267))

(declare-fun b!1043879 () Bool)

(declare-fun e!591566 () (_ BitVec 32))

(declare-fun call!44298 () (_ BitVec 32))

(assert (=> b!1043879 (= e!591566 (bvadd #b00000000000000000000000000000001 call!44298))))

(declare-fun b!1043880 () Bool)

(declare-fun e!591565 () (_ BitVec 32))

(assert (=> b!1043880 (= e!591565 e!591566)))

(declare-fun c!105962 () Bool)

(assert (=> b!1043880 (= c!105962 (validKeyInArray!0 (select (arr!31647 (_keys!11647 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!126269 () Bool)

(declare-fun lt!460304 () (_ BitVec 32))

(assert (=> d!126269 (and (bvsge lt!460304 #b00000000000000000000000000000000) (bvsle lt!460304 (bvsub (size!32183 (_keys!11647 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!126269 (= lt!460304 e!591565)))

(declare-fun c!105963 () Bool)

(assert (=> d!126269 (= c!105963 (bvsge #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))))))

(assert (=> d!126269 (and (bvsle #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32183 (_keys!11647 thiss!1427)) (size!32183 (_keys!11647 thiss!1427))))))

(assert (=> d!126269 (= (arrayCountValidKeys!0 (_keys!11647 thiss!1427) #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))) lt!460304)))

(declare-fun b!1043881 () Bool)

(assert (=> b!1043881 (= e!591566 call!44298)))

(declare-fun bm!44295 () Bool)

(assert (=> bm!44295 (= call!44298 (arrayCountValidKeys!0 (_keys!11647 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32183 (_keys!11647 thiss!1427))))))

(declare-fun b!1043882 () Bool)

(assert (=> b!1043882 (= e!591565 #b00000000000000000000000000000000)))

(assert (= (and d!126269 c!105963) b!1043882))

(assert (= (and d!126269 (not c!105963)) b!1043880))

(assert (= (and b!1043880 c!105962) b!1043879))

(assert (= (and b!1043880 (not c!105962)) b!1043881))

(assert (= (or b!1043879 b!1043881) bm!44295))

(assert (=> b!1043880 m!963239))

(assert (=> b!1043880 m!963239))

(assert (=> b!1043880 m!963253))

(declare-fun m!963367 () Bool)

(assert (=> bm!44295 m!963367))

(assert (=> b!1043712 d!126269))

(declare-fun d!126271 () Bool)

(declare-fun e!591569 () Bool)

(assert (=> d!126271 e!591569))

(declare-fun res!695452 () Bool)

(assert (=> d!126271 (=> (not res!695452) (not e!591569))))

(assert (=> d!126271 (= res!695452 (and (bvsge (index!41707 lt!460162) #b00000000000000000000000000000000) (bvslt (index!41707 lt!460162) (size!32183 (_keys!11647 thiss!1427)))))))

(declare-fun lt!460307 () Unit!34080)

(declare-fun choose!53 (array!65798 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22125) Unit!34080)

(assert (=> d!126271 (= lt!460307 (choose!53 (_keys!11647 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41707 lt!460162) #b00000000000000000000000000000000 Nil!22122))))

(assert (=> d!126271 (bvslt (size!32183 (_keys!11647 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!126271 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11647 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41707 lt!460162) #b00000000000000000000000000000000 Nil!22122) lt!460307)))

(declare-fun b!1043885 () Bool)

(assert (=> b!1043885 (= e!591569 (arrayNoDuplicates!0 (array!65799 (store (arr!31647 (_keys!11647 thiss!1427)) (index!41707 lt!460162) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32183 (_keys!11647 thiss!1427))) #b00000000000000000000000000000000 Nil!22122))))

(assert (= (and d!126271 res!695452) b!1043885))

(declare-fun m!963369 () Bool)

(assert (=> d!126271 m!963369))

(assert (=> b!1043885 m!963155))

(declare-fun m!963371 () Bool)

(assert (=> b!1043885 m!963371))

(assert (=> b!1043712 d!126271))

(declare-fun b!1043886 () Bool)

(declare-fun e!591571 () (_ BitVec 32))

(declare-fun call!44299 () (_ BitVec 32))

(assert (=> b!1043886 (= e!591571 (bvadd #b00000000000000000000000000000001 call!44299))))

(declare-fun b!1043887 () Bool)

(declare-fun e!591570 () (_ BitVec 32))

(assert (=> b!1043887 (= e!591570 e!591571)))

(declare-fun c!105964 () Bool)

(assert (=> b!1043887 (= c!105964 (validKeyInArray!0 (select (arr!31647 lt!460167) #b00000000000000000000000000000000)))))

(declare-fun d!126273 () Bool)

(declare-fun lt!460308 () (_ BitVec 32))

(assert (=> d!126273 (and (bvsge lt!460308 #b00000000000000000000000000000000) (bvsle lt!460308 (bvsub (size!32183 lt!460167) #b00000000000000000000000000000000)))))

(assert (=> d!126273 (= lt!460308 e!591570)))

(declare-fun c!105965 () Bool)

(assert (=> d!126273 (= c!105965 (bvsge #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))))))

(assert (=> d!126273 (and (bvsle #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32183 (_keys!11647 thiss!1427)) (size!32183 lt!460167)))))

(assert (=> d!126273 (= (arrayCountValidKeys!0 lt!460167 #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))) lt!460308)))

(declare-fun b!1043888 () Bool)

(assert (=> b!1043888 (= e!591571 call!44299)))

(declare-fun bm!44296 () Bool)

(assert (=> bm!44296 (= call!44299 (arrayCountValidKeys!0 lt!460167 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32183 (_keys!11647 thiss!1427))))))

(declare-fun b!1043889 () Bool)

(assert (=> b!1043889 (= e!591570 #b00000000000000000000000000000000)))

(assert (= (and d!126273 c!105965) b!1043889))

(assert (= (and d!126273 (not c!105965)) b!1043887))

(assert (= (and b!1043887 c!105964) b!1043886))

(assert (= (and b!1043887 (not c!105964)) b!1043888))

(assert (= (or b!1043886 b!1043888) bm!44296))

(assert (=> b!1043887 m!963215))

(assert (=> b!1043887 m!963215))

(assert (=> b!1043887 m!963217))

(declare-fun m!963373 () Bool)

(assert (=> bm!44296 m!963373))

(assert (=> b!1043712 d!126273))

(declare-fun d!126275 () Bool)

(declare-fun res!695457 () Bool)

(declare-fun e!591576 () Bool)

(assert (=> d!126275 (=> res!695457 e!591576)))

(assert (=> d!126275 (= res!695457 (= (select (arr!31647 lt!460167) #b00000000000000000000000000000000) key!909))))

(assert (=> d!126275 (= (arrayContainsKey!0 lt!460167 key!909 #b00000000000000000000000000000000) e!591576)))

(declare-fun b!1043894 () Bool)

(declare-fun e!591577 () Bool)

(assert (=> b!1043894 (= e!591576 e!591577)))

(declare-fun res!695458 () Bool)

(assert (=> b!1043894 (=> (not res!695458) (not e!591577))))

(assert (=> b!1043894 (= res!695458 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32183 lt!460167)))))

(declare-fun b!1043895 () Bool)

(assert (=> b!1043895 (= e!591577 (arrayContainsKey!0 lt!460167 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!126275 (not res!695457)) b!1043894))

(assert (= (and b!1043894 res!695458) b!1043895))

(assert (=> d!126275 m!963215))

(declare-fun m!963375 () Bool)

(assert (=> b!1043895 m!963375))

(assert (=> b!1043712 d!126275))

(declare-fun d!126277 () Bool)

(declare-fun res!695465 () Bool)

(declare-fun e!591580 () Bool)

(assert (=> d!126277 (=> (not res!695465) (not e!591580))))

(declare-fun simpleValid!446 (LongMapFixedSize!6012) Bool)

(assert (=> d!126277 (= res!695465 (simpleValid!446 thiss!1427))))

(assert (=> d!126277 (= (valid!2210 thiss!1427) e!591580)))

(declare-fun b!1043902 () Bool)

(declare-fun res!695466 () Bool)

(assert (=> b!1043902 (=> (not res!695466) (not e!591580))))

(assert (=> b!1043902 (= res!695466 (= (arrayCountValidKeys!0 (_keys!11647 thiss!1427) #b00000000000000000000000000000000 (size!32183 (_keys!11647 thiss!1427))) (_size!3061 thiss!1427)))))

(declare-fun b!1043903 () Bool)

(declare-fun res!695467 () Bool)

(assert (=> b!1043903 (=> (not res!695467) (not e!591580))))

(assert (=> b!1043903 (= res!695467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11647 thiss!1427) (mask!30481 thiss!1427)))))

(declare-fun b!1043904 () Bool)

(assert (=> b!1043904 (= e!591580 (arrayNoDuplicates!0 (_keys!11647 thiss!1427) #b00000000000000000000000000000000 Nil!22122))))

(assert (= (and d!126277 res!695465) b!1043902))

(assert (= (and b!1043902 res!695466) b!1043903))

(assert (= (and b!1043903 res!695467) b!1043904))

(declare-fun m!963377 () Bool)

(assert (=> d!126277 m!963377))

(assert (=> b!1043902 m!963145))

(declare-fun m!963379 () Bool)

(assert (=> b!1043903 m!963379))

(declare-fun m!963381 () Bool)

(assert (=> b!1043904 m!963381))

(assert (=> start!91734 d!126277))

(declare-fun b!1043917 () Bool)

(declare-fun e!591589 () SeekEntryResult!9834)

(declare-fun lt!460317 () SeekEntryResult!9834)

(assert (=> b!1043917 (= e!591589 (Found!9834 (index!41708 lt!460317)))))

(declare-fun d!126279 () Bool)

(declare-fun lt!460319 () SeekEntryResult!9834)

(assert (=> d!126279 (and (or ((_ is MissingVacant!9834) lt!460319) (not ((_ is Found!9834) lt!460319)) (and (bvsge (index!41707 lt!460319) #b00000000000000000000000000000000) (bvslt (index!41707 lt!460319) (size!32183 (_keys!11647 thiss!1427))))) (not ((_ is MissingVacant!9834) lt!460319)) (or (not ((_ is Found!9834) lt!460319)) (= (select (arr!31647 (_keys!11647 thiss!1427)) (index!41707 lt!460319)) key!909)))))

(declare-fun e!591587 () SeekEntryResult!9834)

(assert (=> d!126279 (= lt!460319 e!591587)))

(declare-fun c!105973 () Bool)

(assert (=> d!126279 (= c!105973 (and ((_ is Intermediate!9834) lt!460317) (undefined!10646 lt!460317)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65798 (_ BitVec 32)) SeekEntryResult!9834)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!126279 (= lt!460317 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30481 thiss!1427)) key!909 (_keys!11647 thiss!1427) (mask!30481 thiss!1427)))))

(assert (=> d!126279 (validMask!0 (mask!30481 thiss!1427))))

(assert (=> d!126279 (= (seekEntry!0 key!909 (_keys!11647 thiss!1427) (mask!30481 thiss!1427)) lt!460319)))

(declare-fun b!1043918 () Bool)

(declare-fun e!591588 () SeekEntryResult!9834)

(declare-fun lt!460320 () SeekEntryResult!9834)

(assert (=> b!1043918 (= e!591588 (ite ((_ is MissingVacant!9834) lt!460320) (MissingZero!9834 (index!41709 lt!460320)) lt!460320))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65798 (_ BitVec 32)) SeekEntryResult!9834)

(assert (=> b!1043918 (= lt!460320 (seekKeyOrZeroReturnVacant!0 (x!93189 lt!460317) (index!41708 lt!460317) (index!41708 lt!460317) key!909 (_keys!11647 thiss!1427) (mask!30481 thiss!1427)))))

(declare-fun b!1043919 () Bool)

(assert (=> b!1043919 (= e!591588 (MissingZero!9834 (index!41708 lt!460317)))))

(declare-fun b!1043920 () Bool)

(assert (=> b!1043920 (= e!591587 e!591589)))

(declare-fun lt!460318 () (_ BitVec 64))

(assert (=> b!1043920 (= lt!460318 (select (arr!31647 (_keys!11647 thiss!1427)) (index!41708 lt!460317)))))

(declare-fun c!105972 () Bool)

(assert (=> b!1043920 (= c!105972 (= lt!460318 key!909))))

(declare-fun b!1043921 () Bool)

(declare-fun c!105974 () Bool)

(assert (=> b!1043921 (= c!105974 (= lt!460318 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1043921 (= e!591589 e!591588)))

(declare-fun b!1043922 () Bool)

(assert (=> b!1043922 (= e!591587 Undefined!9834)))

(assert (= (and d!126279 c!105973) b!1043922))

(assert (= (and d!126279 (not c!105973)) b!1043920))

(assert (= (and b!1043920 c!105972) b!1043917))

(assert (= (and b!1043920 (not c!105972)) b!1043921))

(assert (= (and b!1043921 c!105974) b!1043919))

(assert (= (and b!1043921 (not c!105974)) b!1043918))

(declare-fun m!963383 () Bool)

(assert (=> d!126279 m!963383))

(declare-fun m!963385 () Bool)

(assert (=> d!126279 m!963385))

(assert (=> d!126279 m!963385))

(declare-fun m!963387 () Bool)

(assert (=> d!126279 m!963387))

(assert (=> d!126279 m!963251))

(declare-fun m!963389 () Bool)

(assert (=> b!1043918 m!963389))

(declare-fun m!963391 () Bool)

(assert (=> b!1043920 m!963391))

(assert (=> b!1043710 d!126279))

(declare-fun d!126281 () Bool)

(assert (=> d!126281 (= (array_inv!24295 (_keys!11647 thiss!1427)) (bvsge (size!32183 (_keys!11647 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1043709 d!126281))

(declare-fun d!126283 () Bool)

(assert (=> d!126283 (= (array_inv!24296 (_values!6413 thiss!1427)) (bvsge (size!32184 (_values!6413 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1043709 d!126283))

(declare-fun b!1043929 () Bool)

(declare-fun e!591594 () Bool)

(assert (=> b!1043929 (= e!591594 tp_is_empty!24825)))

(declare-fun b!1043930 () Bool)

(declare-fun e!591595 () Bool)

(assert (=> b!1043930 (= e!591595 tp_is_empty!24825)))

(declare-fun mapNonEmpty!38867 () Bool)

(declare-fun mapRes!38867 () Bool)

(declare-fun tp!74566 () Bool)

(assert (=> mapNonEmpty!38867 (= mapRes!38867 (and tp!74566 e!591594))))

(declare-fun mapKey!38867 () (_ BitVec 32))

(declare-fun mapValue!38867 () ValueCell!11709)

(declare-fun mapRest!38867 () (Array (_ BitVec 32) ValueCell!11709))

(assert (=> mapNonEmpty!38867 (= mapRest!38861 (store mapRest!38867 mapKey!38867 mapValue!38867))))

(declare-fun mapIsEmpty!38867 () Bool)

(assert (=> mapIsEmpty!38867 mapRes!38867))

(declare-fun condMapEmpty!38867 () Bool)

(declare-fun mapDefault!38867 () ValueCell!11709)

(assert (=> mapNonEmpty!38861 (= condMapEmpty!38867 (= mapRest!38861 ((as const (Array (_ BitVec 32) ValueCell!11709)) mapDefault!38867)))))

(assert (=> mapNonEmpty!38861 (= tp!74556 (and e!591595 mapRes!38867))))

(assert (= (and mapNonEmpty!38861 condMapEmpty!38867) mapIsEmpty!38867))

(assert (= (and mapNonEmpty!38861 (not condMapEmpty!38867)) mapNonEmpty!38867))

(assert (= (and mapNonEmpty!38867 ((_ is ValueCellFull!11709) mapValue!38867)) b!1043929))

(assert (= (and mapNonEmpty!38861 ((_ is ValueCellFull!11709) mapDefault!38867)) b!1043930))

(declare-fun m!963393 () Bool)

(assert (=> mapNonEmpty!38867 m!963393))

(declare-fun b_lambda!16221 () Bool)

(assert (= b_lambda!16215 (or (and b!1043709 b_free!21105) b_lambda!16221)))

(declare-fun b_lambda!16223 () Bool)

(assert (= b_lambda!16217 (or (and b!1043709 b_free!21105) b_lambda!16223)))

(declare-fun b_lambda!16225 () Bool)

(assert (= b_lambda!16219 (or (and b!1043709 b_free!21105) b_lambda!16225)))

(check-sat (not b_lambda!16221) (not b!1043885) (not b!1043853) (not bm!44276) (not b!1043817) (not b!1043887) (not b!1043870) (not b_lambda!16225) (not d!126265) (not bm!44286) (not b!1043880) (not b!1043902) (not b!1043822) (not d!126267) (not bm!44289) (not bm!44281) (not b!1043838) (not b!1043765) tp_is_empty!24825 (not b!1043867) (not bm!44282) (not b!1043862) (not bm!44295) (not mapNonEmpty!38867) (not b!1043749) (not b!1043918) (not d!126279) (not b!1043850) (not b!1043813) (not b!1043849) (not b_next!21105) (not b!1043860) (not b_lambda!16223) (not b!1043825) (not b!1043858) (not d!126253) (not bm!44292) (not b!1043763) (not d!126259) (not bm!44285) (not b!1043762) (not b!1043751) (not b!1043826) (not d!126255) (not bm!44291) (not b!1043815) (not bm!44261) (not b!1043824) (not d!126271) b_and!33681 (not d!126277) (not bm!44296) (not b!1043750) (not b!1043840) (not b!1043861) (not b!1043851) (not b!1043895) (not d!126261) (not b!1043903) (not b!1043843) (not b_lambda!16213) (not d!126263) (not bm!44279) (not b!1043904) (not b!1043814))
(check-sat b_and!33681 (not b_next!21105))
