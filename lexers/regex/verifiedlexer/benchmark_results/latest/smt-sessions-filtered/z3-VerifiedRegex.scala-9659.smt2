; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506984 () Bool)

(assert start!506984)

(declare-fun b!4854316 () Bool)

(declare-fun b_free!130333 () Bool)

(declare-fun b_next!131123 () Bool)

(assert (=> b!4854316 (= b_free!130333 (not b_next!131123))))

(declare-fun tp!1365330 () Bool)

(declare-fun b_and!342153 () Bool)

(assert (=> b!4854316 (= tp!1365330 b_and!342153)))

(declare-fun e!3034757 () Bool)

(declare-datatypes ((V!17830 0))(
  ( (V!17831 (val!22366 Int)) )
))
(declare-fun lt!1991030 () V!17830)

(declare-fun key!7003 () (_ BitVec 64))

(declare-fun b!4854314 () Bool)

(declare-datatypes ((array!18796 0))(
  ( (array!18797 (arr!8387 (Array (_ BitVec 32) (_ BitVec 64))) (size!36661 (_ BitVec 32))) )
))
(declare-datatypes ((array!18798 0))(
  ( (array!18799 (arr!8388 (Array (_ BitVec 32) V!17830)) (size!36662 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10202 0))(
  ( (LongMapFixedSize!10203 (defaultEntry!5526 Int) (mask!15401 (_ BitVec 32)) (extraKeys!5385 (_ BitVec 32)) (zeroValue!5398 V!17830) (minValue!5398 V!17830) (_size!10220 (_ BitVec 32)) (_keys!5455 array!18796) (_values!5423 array!18798) (_vacant!5166 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20155 0))(
  ( (Cell!20156 (v!49580 LongMapFixedSize!10202)) )
))
(declare-datatypes ((MutLongMap!5101 0))(
  ( (LongMap!5101 (underlying!10402 Cell!20155)) (MutLongMapExt!5100 (__x!33833 Int)) )
))
(declare-fun thiss!47245 () MutLongMap!5101)

(declare-datatypes ((Option!13758 0))(
  ( (None!13757) (Some!13757 (v!49581 V!17830)) )
))
(declare-fun get!19149 (Option!13758) V!17830)

(declare-datatypes ((tuple2!59532 0))(
  ( (tuple2!59533 (_1!33060 (_ BitVec 64)) (_2!33060 V!17830)) )
))
(declare-datatypes ((List!55824 0))(
  ( (Nil!55700) (Cons!55700 (h!62148 tuple2!59532) (t!363326 List!55824)) )
))
(declare-fun getValueByKey!2756 (List!55824 (_ BitVec 64)) Option!13758)

(declare-datatypes ((ListLongMap!6563 0))(
  ( (ListLongMap!6564 (toList!7910 List!55824)) )
))
(declare-fun map!12790 (MutLongMap!5101) ListLongMap!6563)

(assert (=> b!4854314 (= e!3034757 (not (= lt!1991030 (get!19149 (getValueByKey!2756 (toList!7910 (map!12790 thiss!47245)) key!7003)))))))

(declare-fun res!2072514 () Bool)

(declare-fun e!3034763 () Bool)

(assert (=> start!506984 (=> (not res!2072514) (not e!3034763))))

(get-info :version)

(assert (=> start!506984 (= res!2072514 ((_ is LongMap!5101) thiss!47245))))

(assert (=> start!506984 e!3034763))

(declare-fun e!3034762 () Bool)

(assert (=> start!506984 e!3034762))

(assert (=> start!506984 true))

(declare-fun b!4854315 () Bool)

(declare-fun e!3034759 () Bool)

(declare-fun e!3034758 () Bool)

(assert (=> b!4854315 (= e!3034759 e!3034758)))

(declare-fun tp_is_empty!35467 () Bool)

(declare-fun e!3034761 () Bool)

(declare-fun array_inv!6061 (array!18796) Bool)

(declare-fun array_inv!6062 (array!18798) Bool)

(assert (=> b!4854316 (= e!3034758 (and tp!1365330 tp_is_empty!35467 (array_inv!6061 (_keys!5455 (v!49580 (underlying!10402 thiss!47245)))) (array_inv!6062 (_values!5423 (v!49580 (underlying!10402 thiss!47245)))) e!3034761))))

(declare-fun mapNonEmpty!22503 () Bool)

(declare-fun mapRes!22503 () Bool)

(declare-fun tp!1365329 () Bool)

(assert (=> mapNonEmpty!22503 (= mapRes!22503 (and tp!1365329 tp_is_empty!35467))))

(declare-fun mapRest!22503 () (Array (_ BitVec 32) V!17830))

(declare-fun mapValue!22503 () V!17830)

(declare-fun mapKey!22503 () (_ BitVec 32))

(assert (=> mapNonEmpty!22503 (= (arr!8388 (_values!5423 (v!49580 (underlying!10402 thiss!47245)))) (store mapRest!22503 mapKey!22503 mapValue!22503))))

(declare-fun b!4854317 () Bool)

(assert (=> b!4854317 (= e!3034762 e!3034759)))

(declare-fun b!4854318 () Bool)

(assert (=> b!4854318 (= e!3034763 e!3034757)))

(declare-fun c!825873 () Bool)

(declare-fun contains!19348 (MutLongMap!5101 (_ BitVec 64)) Bool)

(assert (=> b!4854318 (= c!825873 (contains!19348 thiss!47245 key!7003))))

(declare-fun apply!13495 (LongMapFixedSize!10202 (_ BitVec 64)) V!17830)

(assert (=> b!4854318 (= lt!1991030 (apply!13495 (v!49580 (underlying!10402 thiss!47245)) key!7003))))

(declare-fun mapIsEmpty!22503 () Bool)

(assert (=> mapIsEmpty!22503 mapRes!22503))

(declare-fun b!4854319 () Bool)

(declare-fun dynLambda!22386 (Int (_ BitVec 64)) V!17830)

(assert (=> b!4854319 (= e!3034757 (not (= lt!1991030 (dynLambda!22386 (defaultEntry!5526 (v!49580 (underlying!10402 thiss!47245))) key!7003))))))

(declare-fun b!4854320 () Bool)

(assert (=> b!4854320 (= e!3034761 (and tp_is_empty!35467 mapRes!22503))))

(declare-fun condMapEmpty!22503 () Bool)

(declare-fun mapDefault!22503 () V!17830)

(assert (=> b!4854320 (= condMapEmpty!22503 (= (arr!8388 (_values!5423 (v!49580 (underlying!10402 thiss!47245)))) ((as const (Array (_ BitVec 32) V!17830)) mapDefault!22503)))))

(declare-fun b!4854321 () Bool)

(declare-fun res!2072515 () Bool)

(assert (=> b!4854321 (=> (not res!2072515) (not e!3034763))))

(declare-fun valid!4127 (MutLongMap!5101) Bool)

(assert (=> b!4854321 (= res!2072515 (valid!4127 thiss!47245))))

(assert (= (and start!506984 res!2072514) b!4854321))

(assert (= (and b!4854321 res!2072515) b!4854318))

(assert (= (and b!4854318 c!825873) b!4854314))

(assert (= (and b!4854318 (not c!825873)) b!4854319))

(assert (= (and b!4854320 condMapEmpty!22503) mapIsEmpty!22503))

(assert (= (and b!4854320 (not condMapEmpty!22503)) mapNonEmpty!22503))

(assert (= b!4854316 b!4854320))

(assert (= b!4854315 b!4854316))

(assert (= b!4854317 b!4854315))

(assert (= (and start!506984 ((_ is LongMap!5101) thiss!47245)) b!4854317))

(declare-fun b_lambda!193217 () Bool)

(assert (=> (not b_lambda!193217) (not b!4854319)))

(declare-fun t!363325 () Bool)

(declare-fun tb!257553 () Bool)

(assert (=> (and b!4854316 (= (defaultEntry!5526 (v!49580 (underlying!10402 thiss!47245))) (defaultEntry!5526 (v!49580 (underlying!10402 thiss!47245)))) t!363325) tb!257553))

(declare-fun result!320384 () Bool)

(assert (=> tb!257553 (= result!320384 tp_is_empty!35467)))

(assert (=> b!4854319 t!363325))

(declare-fun b_and!342155 () Bool)

(assert (= b_and!342153 (and (=> t!363325 result!320384) b_and!342155)))

(declare-fun m!5852262 () Bool)

(assert (=> b!4854318 m!5852262))

(declare-fun m!5852264 () Bool)

(assert (=> b!4854318 m!5852264))

(declare-fun m!5852266 () Bool)

(assert (=> b!4854321 m!5852266))

(declare-fun m!5852268 () Bool)

(assert (=> mapNonEmpty!22503 m!5852268))

(declare-fun m!5852270 () Bool)

(assert (=> b!4854316 m!5852270))

(declare-fun m!5852272 () Bool)

(assert (=> b!4854316 m!5852272))

(declare-fun m!5852274 () Bool)

(assert (=> b!4854319 m!5852274))

(declare-fun m!5852276 () Bool)

(assert (=> b!4854314 m!5852276))

(declare-fun m!5852278 () Bool)

(assert (=> b!4854314 m!5852278))

(assert (=> b!4854314 m!5852278))

(declare-fun m!5852280 () Bool)

(assert (=> b!4854314 m!5852280))

(check-sat (not b_lambda!193217) (not b!4854321) (not b!4854318) (not b!4854316) b_and!342155 (not b!4854314) (not mapNonEmpty!22503) tp_is_empty!35467 (not b_next!131123))
(check-sat b_and!342155 (not b_next!131123))
(get-model)

(declare-fun b_lambda!193219 () Bool)

(assert (= b_lambda!193217 (or (and b!4854316 b_free!130333) b_lambda!193219)))

(check-sat (not b!4854321) (not b!4854318) (not b!4854316) b_and!342155 (not b_lambda!193219) (not b!4854314) (not mapNonEmpty!22503) tp_is_empty!35467 (not b_next!131123))
(check-sat b_and!342155 (not b_next!131123))
(get-model)

(declare-fun d!1558216 () Bool)

(assert (=> d!1558216 (= (array_inv!6061 (_keys!5455 (v!49580 (underlying!10402 thiss!47245)))) (bvsge (size!36661 (_keys!5455 (v!49580 (underlying!10402 thiss!47245)))) #b00000000000000000000000000000000))))

(assert (=> b!4854316 d!1558216))

(declare-fun d!1558218 () Bool)

(assert (=> d!1558218 (= (array_inv!6062 (_values!5423 (v!49580 (underlying!10402 thiss!47245)))) (bvsge (size!36662 (_values!5423 (v!49580 (underlying!10402 thiss!47245)))) #b00000000000000000000000000000000))))

(assert (=> b!4854316 d!1558218))

(declare-fun d!1558220 () Bool)

(declare-fun lt!1991033 () Bool)

(declare-fun contains!19349 (ListLongMap!6563 (_ BitVec 64)) Bool)

(assert (=> d!1558220 (= lt!1991033 (contains!19349 (map!12790 thiss!47245) key!7003))))

(declare-fun contains!19350 (LongMapFixedSize!10202 (_ BitVec 64)) Bool)

(assert (=> d!1558220 (= lt!1991033 (contains!19350 (v!49580 (underlying!10402 thiss!47245)) key!7003))))

(assert (=> d!1558220 (valid!4127 thiss!47245)))

(assert (=> d!1558220 (= (contains!19348 thiss!47245 key!7003) lt!1991033)))

(declare-fun bs!1173256 () Bool)

(assert (= bs!1173256 d!1558220))

(assert (=> bs!1173256 m!5852276))

(assert (=> bs!1173256 m!5852276))

(declare-fun m!5852282 () Bool)

(assert (=> bs!1173256 m!5852282))

(declare-fun m!5852284 () Bool)

(assert (=> bs!1173256 m!5852284))

(assert (=> bs!1173256 m!5852266))

(assert (=> b!4854318 d!1558220))

(declare-fun e!3034790 () Bool)

(declare-fun b!4854360 () Bool)

(declare-fun lt!1991064 () V!17830)

(assert (=> b!4854360 (= e!3034790 (= lt!1991064 (dynLambda!22386 (defaultEntry!5526 (v!49580 (underlying!10402 thiss!47245))) key!7003)))))

(declare-fun b!4854361 () Bool)

(declare-fun e!3034793 () V!17830)

(assert (=> b!4854361 (= e!3034793 (minValue!5398 (v!49580 (underlying!10402 thiss!47245))))))

(declare-datatypes ((SeekEntryResult!32 0))(
  ( (Found!32 (index!1510 (_ BitVec 32))) (Undefined!32) (MissingZero!32 (index!1511 (_ BitVec 32))) (MissingVacant!32 (index!1512 (_ BitVec 32))) (Intermediate!32 (undefined!113 Bool) (index!1513 (_ BitVec 32)) (x!835758 (_ BitVec 32))) )
))
(declare-fun lt!1991056 () SeekEntryResult!32)

(declare-fun e!3034787 () Bool)

(declare-fun b!4854362 () Bool)

(declare-fun call!337745 () V!17830)

(assert (=> b!4854362 (= e!3034787 (= call!337745 (select (arr!8388 (_values!5423 (v!49580 (underlying!10402 thiss!47245)))) (index!1510 lt!1991056))))))

(declare-fun b!4854363 () Bool)

(declare-fun c!825892 () Bool)

(assert (=> b!4854363 (= c!825892 (and (= key!7003 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5385 (v!49580 (underlying!10402 thiss!47245))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!3034792 () V!17830)

(assert (=> b!4854363 (= e!3034792 e!3034793)))

(declare-fun b!4854364 () Bool)

(declare-fun e!3034794 () Bool)

(assert (=> b!4854364 (= e!3034794 (= call!337745 (minValue!5398 (v!49580 (underlying!10402 thiss!47245)))))))

(declare-fun b!4854365 () Bool)

(declare-fun e!3034791 () V!17830)

(declare-fun e!3034789 () V!17830)

(assert (=> b!4854365 (= e!3034791 e!3034789)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!18796 (_ BitVec 32)) SeekEntryResult!32)

(assert (=> b!4854365 (= lt!1991056 (seekEntry!0 key!7003 (_keys!5455 (v!49580 (underlying!10402 thiss!47245))) (mask!15401 (v!49580 (underlying!10402 thiss!47245)))))))

(declare-datatypes ((Unit!145822 0))(
  ( (Unit!145823) )
))
(declare-fun lt!1991060 () Unit!145822)

(declare-fun lemmaSeekEntryGivesInRangeIndex!20 (array!18796 array!18798 (_ BitVec 32) (_ BitVec 32) V!17830 V!17830 (_ BitVec 64)) Unit!145822)

(assert (=> b!4854365 (= lt!1991060 (lemmaSeekEntryGivesInRangeIndex!20 (_keys!5455 (v!49580 (underlying!10402 thiss!47245))) (_values!5423 (v!49580 (underlying!10402 thiss!47245))) (mask!15401 (v!49580 (underlying!10402 thiss!47245))) (extraKeys!5385 (v!49580 (underlying!10402 thiss!47245))) (zeroValue!5398 (v!49580 (underlying!10402 thiss!47245))) (minValue!5398 (v!49580 (underlying!10402 thiss!47245))) key!7003))))

(declare-fun lt!1991057 () SeekEntryResult!32)

(assert (=> b!4854365 (= lt!1991057 (seekEntry!0 key!7003 (_keys!5455 (v!49580 (underlying!10402 thiss!47245))) (mask!15401 (v!49580 (underlying!10402 thiss!47245)))))))

(declare-fun res!2072524 () Bool)

(assert (=> b!4854365 (= res!2072524 (not ((_ is Found!32) lt!1991057)))))

(declare-fun e!3034788 () Bool)

(assert (=> b!4854365 (=> res!2072524 e!3034788)))

(assert (=> b!4854365 e!3034788))

(declare-fun lt!1991063 () Unit!145822)

(assert (=> b!4854365 (= lt!1991063 lt!1991060)))

(declare-fun c!825888 () Bool)

(assert (=> b!4854365 (= c!825888 ((_ is Found!32) lt!1991056))))

(declare-fun b!4854366 () Bool)

(declare-fun lt!1991059 () Unit!145822)

(declare-fun lt!1991065 () Unit!145822)

(assert (=> b!4854366 (= lt!1991059 lt!1991065)))

(declare-fun e!3034795 () Bool)

(assert (=> b!4854366 e!3034795))

(declare-fun c!825894 () Bool)

(assert (=> b!4854366 (= c!825894 (= key!7003 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lemmaKeyInListMapThenSameValueInArray!20 (array!18796 array!18798 (_ BitVec 32) (_ BitVec 32) V!17830 V!17830 (_ BitVec 64) (_ BitVec 32) Int) Unit!145822)

(assert (=> b!4854366 (= lt!1991065 (lemmaKeyInListMapThenSameValueInArray!20 (_keys!5455 (v!49580 (underlying!10402 thiss!47245))) (_values!5423 (v!49580 (underlying!10402 thiss!47245))) (mask!15401 (v!49580 (underlying!10402 thiss!47245))) (extraKeys!5385 (v!49580 (underlying!10402 thiss!47245))) (zeroValue!5398 (v!49580 (underlying!10402 thiss!47245))) (minValue!5398 (v!49580 (underlying!10402 thiss!47245))) key!7003 (index!1510 lt!1991056) (defaultEntry!5526 (v!49580 (underlying!10402 thiss!47245)))))))

(declare-fun lt!1991062 () Unit!145822)

(declare-fun lt!1991066 () Unit!145822)

(assert (=> b!4854366 (= lt!1991062 lt!1991066)))

(declare-fun getCurrentListMap!35 (array!18796 array!18798 (_ BitVec 32) (_ BitVec 32) V!17830 V!17830 (_ BitVec 32) Int) ListLongMap!6563)

(assert (=> b!4854366 (contains!19349 (getCurrentListMap!35 (_keys!5455 (v!49580 (underlying!10402 thiss!47245))) (_values!5423 (v!49580 (underlying!10402 thiss!47245))) (mask!15401 (v!49580 (underlying!10402 thiss!47245))) (extraKeys!5385 (v!49580 (underlying!10402 thiss!47245))) (zeroValue!5398 (v!49580 (underlying!10402 thiss!47245))) (minValue!5398 (v!49580 (underlying!10402 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5526 (v!49580 (underlying!10402 thiss!47245)))) (select (arr!8387 (_keys!5455 (v!49580 (underlying!10402 thiss!47245)))) (index!1510 lt!1991056)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!25 (array!18796 array!18798 (_ BitVec 32) (_ BitVec 32) V!17830 V!17830 (_ BitVec 32) Int) Unit!145822)

(assert (=> b!4854366 (= lt!1991066 (lemmaValidKeyInArrayIsInListMap!25 (_keys!5455 (v!49580 (underlying!10402 thiss!47245))) (_values!5423 (v!49580 (underlying!10402 thiss!47245))) (mask!15401 (v!49580 (underlying!10402 thiss!47245))) (extraKeys!5385 (v!49580 (underlying!10402 thiss!47245))) (zeroValue!5398 (v!49580 (underlying!10402 thiss!47245))) (minValue!5398 (v!49580 (underlying!10402 thiss!47245))) (index!1510 lt!1991056) (defaultEntry!5526 (v!49580 (underlying!10402 thiss!47245)))))))

(declare-fun lt!1991058 () Unit!145822)

(declare-fun lt!1991061 () Unit!145822)

(assert (=> b!4854366 (= lt!1991058 lt!1991061)))

(declare-fun arrayContainsKey!0 (array!18796 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4854366 (arrayContainsKey!0 (_keys!5455 (v!49580 (underlying!10402 thiss!47245))) key!7003 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18796 (_ BitVec 64) (_ BitVec 32)) Unit!145822)

(assert (=> b!4854366 (= lt!1991061 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5455 (v!49580 (underlying!10402 thiss!47245))) key!7003 (index!1510 lt!1991056)))))

(assert (=> b!4854366 (= e!3034789 (select (arr!8388 (_values!5423 (v!49580 (underlying!10402 thiss!47245)))) (index!1510 lt!1991056)))))

(declare-fun bm!337739 () Bool)

(declare-fun call!337747 () ListLongMap!6563)

(assert (=> bm!337739 (= call!337747 (getCurrentListMap!35 (_keys!5455 (v!49580 (underlying!10402 thiss!47245))) (_values!5423 (v!49580 (underlying!10402 thiss!47245))) (mask!15401 (v!49580 (underlying!10402 thiss!47245))) (extraKeys!5385 (v!49580 (underlying!10402 thiss!47245))) (zeroValue!5398 (v!49580 (underlying!10402 thiss!47245))) (minValue!5398 (v!49580 (underlying!10402 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5526 (v!49580 (underlying!10402 thiss!47245)))))))

(declare-fun b!4854368 () Bool)

(assert (=> b!4854368 (= e!3034793 (dynLambda!22386 (defaultEntry!5526 (v!49580 (underlying!10402 thiss!47245))) key!7003))))

(declare-fun b!4854369 () Bool)

(assert (=> b!4854369 (= e!3034789 (dynLambda!22386 (defaultEntry!5526 (v!49580 (underlying!10402 thiss!47245))) key!7003))))

(declare-fun b!4854370 () Bool)

(assert (=> b!4854370 (= e!3034791 e!3034792)))

(declare-fun c!825889 () Bool)

(assert (=> b!4854370 (= c!825889 (and (= key!7003 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5385 (v!49580 (underlying!10402 thiss!47245))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun bm!337740 () Bool)

(declare-fun call!337746 () V!17830)

(declare-fun call!337744 () ListLongMap!6563)

(declare-fun apply!13496 (ListLongMap!6563 (_ BitVec 64)) V!17830)

(assert (=> bm!337740 (= call!337746 (apply!13496 (ite c!825894 call!337747 call!337744) key!7003))))

(declare-fun b!4854371 () Bool)

(declare-fun e!3034786 () Bool)

(assert (=> b!4854371 (= e!3034786 (= call!337746 (zeroValue!5398 (v!49580 (underlying!10402 thiss!47245)))))))

(declare-fun bm!337741 () Bool)

(assert (=> bm!337741 (= call!337745 call!337746)))

(declare-fun b!4854372 () Bool)

(declare-fun e!3034796 () Bool)

(assert (=> b!4854372 (= e!3034795 e!3034796)))

(declare-fun c!825893 () Bool)

(assert (=> b!4854372 (= c!825893 (= key!7003 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4854373 () Bool)

(declare-fun map!12791 (LongMapFixedSize!10202) ListLongMap!6563)

(assert (=> b!4854373 (= e!3034790 (= lt!1991064 (get!19149 (getValueByKey!2756 (toList!7910 (map!12791 (v!49580 (underlying!10402 thiss!47245)))) key!7003))))))

(declare-fun b!4854374 () Bool)

(declare-fun res!2072526 () Bool)

(assert (=> b!4854374 (=> (not res!2072526) (not e!3034794))))

(assert (=> b!4854374 (= res!2072526 (not (= (bvand (extraKeys!5385 (v!49580 (underlying!10402 thiss!47245))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!4854374 (= e!3034796 e!3034794)))

(declare-fun b!4854375 () Bool)

(assert (=> b!4854375 (= e!3034792 (zeroValue!5398 (v!49580 (underlying!10402 thiss!47245))))))

(declare-fun bm!337742 () Bool)

(assert (=> bm!337742 (= call!337744 call!337747)))

(declare-fun b!4854367 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!4854367 (= e!3034788 (inRange!0 (index!1510 lt!1991057) (mask!15401 (v!49580 (underlying!10402 thiss!47245)))))))

(declare-fun d!1558222 () Bool)

(assert (=> d!1558222 e!3034790))

(declare-fun c!825890 () Bool)

(assert (=> d!1558222 (= c!825890 (contains!19350 (v!49580 (underlying!10402 thiss!47245)) key!7003))))

(assert (=> d!1558222 (= lt!1991064 e!3034791)))

(declare-fun c!825891 () Bool)

(assert (=> d!1558222 (= c!825891 (= key!7003 (bvneg key!7003)))))

(declare-fun valid!4128 (LongMapFixedSize!10202) Bool)

(assert (=> d!1558222 (valid!4128 (v!49580 (underlying!10402 thiss!47245)))))

(assert (=> d!1558222 (= (apply!13495 (v!49580 (underlying!10402 thiss!47245)) key!7003) lt!1991064)))

(declare-fun b!4854376 () Bool)

(declare-fun res!2072525 () Bool)

(assert (=> b!4854376 (=> (not res!2072525) (not e!3034787))))

(assert (=> b!4854376 (= res!2072525 (arrayContainsKey!0 (_keys!5455 (v!49580 (underlying!10402 thiss!47245))) key!7003 #b00000000000000000000000000000000))))

(assert (=> b!4854376 (= e!3034796 e!3034787)))

(declare-fun b!4854377 () Bool)

(assert (=> b!4854377 (= e!3034795 e!3034786)))

(declare-fun res!2072527 () Bool)

(assert (=> b!4854377 (= res!2072527 (not (= (bvand (extraKeys!5385 (v!49580 (underlying!10402 thiss!47245))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4854377 (=> (not res!2072527) (not e!3034786))))

(assert (= (and d!1558222 c!825891) b!4854370))

(assert (= (and d!1558222 (not c!825891)) b!4854365))

(assert (= (and b!4854370 c!825889) b!4854375))

(assert (= (and b!4854370 (not c!825889)) b!4854363))

(assert (= (and b!4854363 c!825892) b!4854361))

(assert (= (and b!4854363 (not c!825892)) b!4854368))

(assert (= (and b!4854365 (not res!2072524)) b!4854367))

(assert (= (and b!4854365 c!825888) b!4854366))

(assert (= (and b!4854365 (not c!825888)) b!4854369))

(assert (= (and b!4854366 c!825894) b!4854377))

(assert (= (and b!4854366 (not c!825894)) b!4854372))

(assert (= (and b!4854377 res!2072527) b!4854371))

(assert (= (and b!4854372 c!825893) b!4854374))

(assert (= (and b!4854372 (not c!825893)) b!4854376))

(assert (= (and b!4854374 res!2072526) b!4854364))

(assert (= (and b!4854376 res!2072525) b!4854362))

(assert (= (or b!4854364 b!4854362) bm!337742))

(assert (= (or b!4854364 b!4854362) bm!337741))

(assert (= (or b!4854371 bm!337742) bm!337739))

(assert (= (or b!4854371 bm!337741) bm!337740))

(assert (= (and d!1558222 c!825890) b!4854373))

(assert (= (and d!1558222 (not c!825890)) b!4854360))

(declare-fun b_lambda!193221 () Bool)

(assert (=> (not b_lambda!193221) (not b!4854360)))

(assert (=> b!4854360 t!363325))

(declare-fun b_and!342157 () Bool)

(assert (= b_and!342155 (and (=> t!363325 result!320384) b_and!342157)))

(declare-fun b_lambda!193223 () Bool)

(assert (=> (not b_lambda!193223) (not b!4854368)))

(assert (=> b!4854368 t!363325))

(declare-fun b_and!342159 () Bool)

(assert (= b_and!342157 (and (=> t!363325 result!320384) b_and!342159)))

(declare-fun b_lambda!193225 () Bool)

(assert (=> (not b_lambda!193225) (not b!4854369)))

(assert (=> b!4854369 t!363325))

(declare-fun b_and!342161 () Bool)

(assert (= b_and!342159 (and (=> t!363325 result!320384) b_and!342161)))

(declare-fun m!5852286 () Bool)

(assert (=> bm!337739 m!5852286))

(assert (=> d!1558222 m!5852284))

(declare-fun m!5852288 () Bool)

(assert (=> d!1558222 m!5852288))

(assert (=> b!4854366 m!5852286))

(declare-fun m!5852290 () Bool)

(assert (=> b!4854366 m!5852290))

(declare-fun m!5852292 () Bool)

(assert (=> b!4854366 m!5852292))

(declare-fun m!5852294 () Bool)

(assert (=> b!4854366 m!5852294))

(assert (=> b!4854366 m!5852286))

(declare-fun m!5852296 () Bool)

(assert (=> b!4854366 m!5852296))

(assert (=> b!4854366 m!5852290))

(declare-fun m!5852298 () Bool)

(assert (=> b!4854366 m!5852298))

(declare-fun m!5852300 () Bool)

(assert (=> b!4854366 m!5852300))

(declare-fun m!5852302 () Bool)

(assert (=> b!4854366 m!5852302))

(declare-fun m!5852304 () Bool)

(assert (=> bm!337740 m!5852304))

(declare-fun m!5852306 () Bool)

(assert (=> b!4854367 m!5852306))

(assert (=> b!4854360 m!5852274))

(assert (=> b!4854376 m!5852302))

(declare-fun m!5852308 () Bool)

(assert (=> b!4854365 m!5852308))

(declare-fun m!5852310 () Bool)

(assert (=> b!4854365 m!5852310))

(assert (=> b!4854368 m!5852274))

(assert (=> b!4854369 m!5852274))

(assert (=> b!4854362 m!5852298))

(declare-fun m!5852312 () Bool)

(assert (=> b!4854373 m!5852312))

(declare-fun m!5852314 () Bool)

(assert (=> b!4854373 m!5852314))

(assert (=> b!4854373 m!5852314))

(declare-fun m!5852316 () Bool)

(assert (=> b!4854373 m!5852316))

(assert (=> b!4854318 d!1558222))

(declare-fun d!1558224 () Bool)

(assert (=> d!1558224 (= (get!19149 (getValueByKey!2756 (toList!7910 (map!12790 thiss!47245)) key!7003)) (v!49581 (getValueByKey!2756 (toList!7910 (map!12790 thiss!47245)) key!7003)))))

(assert (=> b!4854314 d!1558224))

(declare-fun b!4854386 () Bool)

(declare-fun e!3034801 () Option!13758)

(assert (=> b!4854386 (= e!3034801 (Some!13757 (_2!33060 (h!62148 (toList!7910 (map!12790 thiss!47245))))))))

(declare-fun b!4854387 () Bool)

(declare-fun e!3034802 () Option!13758)

(assert (=> b!4854387 (= e!3034801 e!3034802)))

(declare-fun c!825900 () Bool)

(assert (=> b!4854387 (= c!825900 (and ((_ is Cons!55700) (toList!7910 (map!12790 thiss!47245))) (not (= (_1!33060 (h!62148 (toList!7910 (map!12790 thiss!47245)))) key!7003))))))

(declare-fun b!4854388 () Bool)

(assert (=> b!4854388 (= e!3034802 (getValueByKey!2756 (t!363326 (toList!7910 (map!12790 thiss!47245))) key!7003))))

(declare-fun d!1558226 () Bool)

(declare-fun c!825899 () Bool)

(assert (=> d!1558226 (= c!825899 (and ((_ is Cons!55700) (toList!7910 (map!12790 thiss!47245))) (= (_1!33060 (h!62148 (toList!7910 (map!12790 thiss!47245)))) key!7003)))))

(assert (=> d!1558226 (= (getValueByKey!2756 (toList!7910 (map!12790 thiss!47245)) key!7003) e!3034801)))

(declare-fun b!4854389 () Bool)

(assert (=> b!4854389 (= e!3034802 None!13757)))

(assert (= (and d!1558226 c!825899) b!4854386))

(assert (= (and d!1558226 (not c!825899)) b!4854387))

(assert (= (and b!4854387 c!825900) b!4854388))

(assert (= (and b!4854387 (not c!825900)) b!4854389))

(declare-fun m!5852318 () Bool)

(assert (=> b!4854388 m!5852318))

(assert (=> b!4854314 d!1558226))

(declare-fun d!1558228 () Bool)

(assert (=> d!1558228 (= (map!12790 thiss!47245) (map!12791 (v!49580 (underlying!10402 thiss!47245))))))

(declare-fun bs!1173257 () Bool)

(assert (= bs!1173257 d!1558228))

(assert (=> bs!1173257 m!5852312))

(assert (=> b!4854314 d!1558228))

(declare-fun d!1558230 () Bool)

(assert (=> d!1558230 (= (valid!4127 thiss!47245) (valid!4128 (v!49580 (underlying!10402 thiss!47245))))))

(declare-fun bs!1173258 () Bool)

(assert (= bs!1173258 d!1558230))

(assert (=> bs!1173258 m!5852288))

(assert (=> b!4854321 d!1558230))

(declare-fun condMapEmpty!22506 () Bool)

(declare-fun mapDefault!22506 () V!17830)

(assert (=> mapNonEmpty!22503 (= condMapEmpty!22506 (= mapRest!22503 ((as const (Array (_ BitVec 32) V!17830)) mapDefault!22506)))))

(declare-fun mapRes!22506 () Bool)

(assert (=> mapNonEmpty!22503 (= tp!1365329 (and tp_is_empty!35467 mapRes!22506))))

(declare-fun mapIsEmpty!22506 () Bool)

(assert (=> mapIsEmpty!22506 mapRes!22506))

(declare-fun mapNonEmpty!22506 () Bool)

(declare-fun tp!1365333 () Bool)

(assert (=> mapNonEmpty!22506 (= mapRes!22506 (and tp!1365333 tp_is_empty!35467))))

(declare-fun mapKey!22506 () (_ BitVec 32))

(declare-fun mapRest!22506 () (Array (_ BitVec 32) V!17830))

(declare-fun mapValue!22506 () V!17830)

(assert (=> mapNonEmpty!22506 (= mapRest!22503 (store mapRest!22506 mapKey!22506 mapValue!22506))))

(assert (= (and mapNonEmpty!22503 condMapEmpty!22506) mapIsEmpty!22506))

(assert (= (and mapNonEmpty!22503 (not condMapEmpty!22506)) mapNonEmpty!22506))

(declare-fun m!5852320 () Bool)

(assert (=> mapNonEmpty!22506 m!5852320))

(declare-fun b_lambda!193227 () Bool)

(assert (= b_lambda!193223 (or (and b!4854316 b_free!130333) b_lambda!193227)))

(declare-fun b_lambda!193229 () Bool)

(assert (= b_lambda!193225 (or (and b!4854316 b_free!130333) b_lambda!193229)))

(declare-fun b_lambda!193231 () Bool)

(assert (= b_lambda!193221 (or (and b!4854316 b_free!130333) b_lambda!193231)))

(check-sat (not b!4854366) (not d!1558220) (not d!1558222) b_and!342161 (not b!4854376) (not d!1558228) (not b!4854367) (not b_lambda!193227) (not mapNonEmpty!22506) (not bm!337739) (not b_lambda!193231) (not b!4854373) tp_is_empty!35467 (not b_next!131123) (not d!1558230) (not b_lambda!193229) (not b!4854388) (not b_lambda!193219) (not bm!337740) (not b!4854365))
(check-sat b_and!342161 (not b_next!131123))
