; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507008 () Bool)

(assert start!507008)

(declare-fun b!4854461 () Bool)

(declare-fun b_free!130341 () Bool)

(declare-fun b_next!131131 () Bool)

(assert (=> b!4854461 (= b_free!130341 (not b_next!131131))))

(declare-fun tp!1365357 () Bool)

(declare-fun b_and!342169 () Bool)

(assert (=> b!4854461 (= tp!1365357 b_and!342169)))

(declare-fun b!4854458 () Bool)

(declare-fun e!3034871 () Bool)

(declare-fun e!3034870 () Bool)

(assert (=> b!4854458 (= e!3034871 e!3034870)))

(declare-fun b!4854459 () Bool)

(declare-fun e!3034873 () Bool)

(declare-datatypes ((V!17840 0))(
  ( (V!17841 (val!22370 Int)) )
))
(declare-datatypes ((array!18814 0))(
  ( (array!18815 (arr!8395 (Array (_ BitVec 32) V!17840)) (size!36669 (_ BitVec 32))) )
))
(declare-datatypes ((array!18816 0))(
  ( (array!18817 (arr!8396 (Array (_ BitVec 32) (_ BitVec 64))) (size!36670 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10210 0))(
  ( (LongMapFixedSize!10211 (defaultEntry!5530 Int) (mask!15407 (_ BitVec 32)) (extraKeys!5389 (_ BitVec 32)) (zeroValue!5402 V!17840) (minValue!5402 V!17840) (_size!10224 (_ BitVec 32)) (_keys!5459 array!18816) (_values!5427 array!18814) (_vacant!5170 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20163 0))(
  ( (Cell!20164 (v!49585 LongMapFixedSize!10210)) )
))
(declare-datatypes ((MutLongMap!5105 0))(
  ( (LongMap!5105 (underlying!10406 Cell!20163)) (MutLongMapExt!5104 (__x!33837 Int)) )
))
(declare-fun thiss!47233 () MutLongMap!5105)

(declare-fun key!6996 () (_ BitVec 64))

(declare-fun contains!19352 (LongMapFixedSize!10210 (_ BitVec 64)) Bool)

(declare-datatypes ((tuple2!59534 0))(
  ( (tuple2!59535 (_1!33061 (_ BitVec 64)) (_2!33061 V!17840)) )
))
(declare-datatypes ((List!55825 0))(
  ( (Nil!55701) (Cons!55701 (h!62149 tuple2!59534) (t!363327 List!55825)) )
))
(declare-datatypes ((ListLongMap!6565 0))(
  ( (ListLongMap!6566 (toList!7911 List!55825)) )
))
(declare-fun contains!19353 (ListLongMap!6565 (_ BitVec 64)) Bool)

(declare-fun map!12794 (MutLongMap!5105) ListLongMap!6565)

(assert (=> b!4854459 (= e!3034873 (not (= (contains!19352 (v!49585 (underlying!10406 thiss!47233)) key!6996) (contains!19353 (map!12794 thiss!47233) key!6996))))))

(declare-fun res!2072551 () Bool)

(assert (=> start!507008 (=> (not res!2072551) (not e!3034873))))

(get-info :version)

(assert (=> start!507008 (= res!2072551 ((_ is LongMap!5105) thiss!47233))))

(assert (=> start!507008 e!3034873))

(declare-fun e!3034874 () Bool)

(assert (=> start!507008 e!3034874))

(assert (=> start!507008 true))

(declare-fun b!4854460 () Bool)

(declare-fun res!2072550 () Bool)

(assert (=> b!4854460 (=> (not res!2072550) (not e!3034873))))

(declare-fun valid!4131 (MutLongMap!5105) Bool)

(assert (=> b!4854460 (= res!2072550 (valid!4131 thiss!47233))))

(declare-fun mapIsEmpty!22518 () Bool)

(declare-fun mapRes!22518 () Bool)

(assert (=> mapIsEmpty!22518 mapRes!22518))

(declare-fun e!3034872 () Bool)

(declare-fun tp_is_empty!35475 () Bool)

(declare-fun array_inv!6067 (array!18816) Bool)

(declare-fun array_inv!6068 (array!18814) Bool)

(assert (=> b!4854461 (= e!3034870 (and tp!1365357 tp_is_empty!35475 (array_inv!6067 (_keys!5459 (v!49585 (underlying!10406 thiss!47233)))) (array_inv!6068 (_values!5427 (v!49585 (underlying!10406 thiss!47233)))) e!3034872))))

(declare-fun mapNonEmpty!22518 () Bool)

(declare-fun tp!1365356 () Bool)

(assert (=> mapNonEmpty!22518 (= mapRes!22518 (and tp!1365356 tp_is_empty!35475))))

(declare-fun mapValue!22518 () V!17840)

(declare-fun mapKey!22518 () (_ BitVec 32))

(declare-fun mapRest!22518 () (Array (_ BitVec 32) V!17840))

(assert (=> mapNonEmpty!22518 (= (arr!8395 (_values!5427 (v!49585 (underlying!10406 thiss!47233)))) (store mapRest!22518 mapKey!22518 mapValue!22518))))

(declare-fun b!4854462 () Bool)

(assert (=> b!4854462 (= e!3034872 (and tp_is_empty!35475 mapRes!22518))))

(declare-fun condMapEmpty!22518 () Bool)

(declare-fun mapDefault!22518 () V!17840)

(assert (=> b!4854462 (= condMapEmpty!22518 (= (arr!8395 (_values!5427 (v!49585 (underlying!10406 thiss!47233)))) ((as const (Array (_ BitVec 32) V!17840)) mapDefault!22518)))))

(declare-fun b!4854463 () Bool)

(assert (=> b!4854463 (= e!3034874 e!3034871)))

(assert (= (and start!507008 res!2072551) b!4854460))

(assert (= (and b!4854460 res!2072550) b!4854459))

(assert (= (and b!4854462 condMapEmpty!22518) mapIsEmpty!22518))

(assert (= (and b!4854462 (not condMapEmpty!22518)) mapNonEmpty!22518))

(assert (= b!4854461 b!4854462))

(assert (= b!4854458 b!4854461))

(assert (= b!4854463 b!4854458))

(assert (= (and start!507008 ((_ is LongMap!5105) thiss!47233)) b!4854463))

(declare-fun m!5852356 () Bool)

(assert (=> b!4854459 m!5852356))

(declare-fun m!5852358 () Bool)

(assert (=> b!4854459 m!5852358))

(assert (=> b!4854459 m!5852358))

(declare-fun m!5852360 () Bool)

(assert (=> b!4854459 m!5852360))

(declare-fun m!5852362 () Bool)

(assert (=> b!4854460 m!5852362))

(declare-fun m!5852364 () Bool)

(assert (=> b!4854461 m!5852364))

(declare-fun m!5852366 () Bool)

(assert (=> b!4854461 m!5852366))

(declare-fun m!5852368 () Bool)

(assert (=> mapNonEmpty!22518 m!5852368))

(check-sat (not b!4854460) (not b!4854461) tp_is_empty!35475 (not b!4854459) (not mapNonEmpty!22518) b_and!342169 (not b_next!131131))
(check-sat b_and!342169 (not b_next!131131))
(get-model)

(declare-fun b!4854484 () Bool)

(declare-fun e!3034887 () Bool)

(assert (=> b!4854484 (= e!3034887 (not (= (bvand (extraKeys!5389 (v!49585 (underlying!10406 thiss!47233))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4854485 () Bool)

(declare-fun e!3034885 () Bool)

(assert (=> b!4854485 (= e!3034885 (not (= (bvand (extraKeys!5389 (v!49585 (underlying!10406 thiss!47233))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4854486 () Bool)

(declare-fun e!3034886 () Bool)

(assert (=> b!4854486 (= e!3034886 false)))

(declare-fun c!825914 () Bool)

(declare-fun call!337755 () Bool)

(assert (=> b!4854486 (= c!825914 call!337755)))

(declare-datatypes ((Unit!145824 0))(
  ( (Unit!145825) )
))
(declare-fun lt!1991117 () Unit!145824)

(declare-fun e!3034889 () Unit!145824)

(assert (=> b!4854486 (= lt!1991117 e!3034889)))

(declare-fun b!4854487 () Bool)

(declare-fun e!3034888 () Bool)

(assert (=> b!4854487 (= e!3034888 (ite (= key!6996 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5389 (v!49585 (underlying!10406 thiss!47233))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5389 (v!49585 (underlying!10406 thiss!47233))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4854488 () Bool)

(declare-fun call!337756 () Bool)

(assert (=> b!4854488 (= e!3034888 call!337756)))

(declare-fun b!4854489 () Bool)

(assert (=> b!4854489 (= e!3034885 e!3034887)))

(declare-fun c!825911 () Bool)

(assert (=> b!4854489 (= c!825911 (= key!6996 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!337749 () Bool)

(declare-fun arrayContainsKey!0 (array!18816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!337749 (= call!337756 (arrayContainsKey!0 (_keys!5459 (v!49585 (underlying!10406 thiss!47233))) key!6996 #b00000000000000000000000000000000))))

(declare-fun bm!337750 () Bool)

(declare-fun call!337754 () ListLongMap!6565)

(declare-fun getCurrentListMap!36 (array!18816 array!18814 (_ BitVec 32) (_ BitVec 32) V!17840 V!17840 (_ BitVec 32) Int) ListLongMap!6565)

(assert (=> bm!337750 (= call!337754 (getCurrentListMap!36 (_keys!5459 (v!49585 (underlying!10406 thiss!47233))) (_values!5427 (v!49585 (underlying!10406 thiss!47233))) (mask!15407 (v!49585 (underlying!10406 thiss!47233))) (extraKeys!5389 (v!49585 (underlying!10406 thiss!47233))) (zeroValue!5402 (v!49585 (underlying!10406 thiss!47233))) (minValue!5402 (v!49585 (underlying!10406 thiss!47233))) #b00000000000000000000000000000000 (defaultEntry!5530 (v!49585 (underlying!10406 thiss!47233)))))))

(declare-fun b!4854490 () Bool)

(declare-fun c!825913 () Bool)

(declare-datatypes ((SeekEntryResult!33 0))(
  ( (Found!33 (index!1514 (_ BitVec 32))) (Undefined!33) (MissingZero!33 (index!1515 (_ BitVec 32))) (MissingVacant!33 (index!1516 (_ BitVec 32))) (Intermediate!33 (undefined!114 Bool) (index!1517 (_ BitVec 32)) (x!835775 (_ BitVec 32))) )
))
(declare-fun lt!1991109 () SeekEntryResult!33)

(assert (=> b!4854490 (= c!825913 ((_ is Found!33) lt!1991109))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!18816 (_ BitVec 32)) SeekEntryResult!33)

(assert (=> b!4854490 (= lt!1991109 (seekEntry!0 key!6996 (_keys!5459 (v!49585 (underlying!10406 thiss!47233))) (mask!15407 (v!49585 (underlying!10406 thiss!47233)))))))

(assert (=> b!4854490 (= e!3034887 e!3034886)))

(declare-fun b!4854491 () Bool)

(assert (=> b!4854491 false))

(declare-fun lt!1991103 () Unit!145824)

(declare-fun lt!1991116 () Unit!145824)

(assert (=> b!4854491 (= lt!1991103 lt!1991116)))

(declare-fun lt!1991113 () SeekEntryResult!33)

(declare-fun lt!1991106 () (_ BitVec 32))

(assert (=> b!4854491 (and ((_ is Found!33) lt!1991113) (= (index!1514 lt!1991113) lt!1991106))))

(assert (=> b!4854491 (= lt!1991113 (seekEntry!0 key!6996 (_keys!5459 (v!49585 (underlying!10406 thiss!47233))) (mask!15407 (v!49585 (underlying!10406 thiss!47233)))))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!18816 (_ BitVec 32)) Unit!145824)

(assert (=> b!4854491 (= lt!1991116 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!6996 lt!1991106 (_keys!5459 (v!49585 (underlying!10406 thiss!47233))) (mask!15407 (v!49585 (underlying!10406 thiss!47233)))))))

(declare-fun lt!1991111 () Unit!145824)

(declare-fun lt!1991105 () Unit!145824)

(assert (=> b!4854491 (= lt!1991111 lt!1991105)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18816 (_ BitVec 32)) Bool)

(assert (=> b!4854491 (arrayForallSeekEntryOrOpenFound!0 lt!1991106 (_keys!5459 (v!49585 (underlying!10406 thiss!47233))) (mask!15407 (v!49585 (underlying!10406 thiss!47233))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!18816 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!145824)

(assert (=> b!4854491 (= lt!1991105 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!5459 (v!49585 (underlying!10406 thiss!47233))) (mask!15407 (v!49585 (underlying!10406 thiss!47233))) #b00000000000000000000000000000000 lt!1991106))))

(declare-fun arrayScanForKey!0 (array!18816 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4854491 (= lt!1991106 (arrayScanForKey!0 (_keys!5459 (v!49585 (underlying!10406 thiss!47233))) key!6996 #b00000000000000000000000000000000))))

(declare-fun lt!1991107 () Unit!145824)

(declare-fun lt!1991108 () Unit!145824)

(assert (=> b!4854491 (= lt!1991107 lt!1991108)))

(assert (=> b!4854491 e!3034888))

(declare-fun c!825912 () Bool)

(assert (=> b!4854491 (= c!825912 (and (not (= key!6996 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!6996 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!25 (array!18816 array!18814 (_ BitVec 32) (_ BitVec 32) V!17840 V!17840 (_ BitVec 64) Int) Unit!145824)

(assert (=> b!4854491 (= lt!1991108 (lemmaKeyInListMapIsInArray!25 (_keys!5459 (v!49585 (underlying!10406 thiss!47233))) (_values!5427 (v!49585 (underlying!10406 thiss!47233))) (mask!15407 (v!49585 (underlying!10406 thiss!47233))) (extraKeys!5389 (v!49585 (underlying!10406 thiss!47233))) (zeroValue!5402 (v!49585 (underlying!10406 thiss!47233))) (minValue!5402 (v!49585 (underlying!10406 thiss!47233))) key!6996 (defaultEntry!5530 (v!49585 (underlying!10406 thiss!47233)))))))

(declare-fun Unit!145826 () Unit!145824)

(assert (=> b!4854491 (= e!3034889 Unit!145826)))

(declare-fun b!4854492 () Bool)

(assert (=> b!4854492 (= e!3034886 true)))

(declare-fun lt!1991115 () Unit!145824)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18816 (_ BitVec 64) (_ BitVec 32)) Unit!145824)

(assert (=> b!4854492 (= lt!1991115 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5459 (v!49585 (underlying!10406 thiss!47233))) key!6996 (index!1514 lt!1991109)))))

(assert (=> b!4854492 call!337756))

(declare-fun lt!1991104 () Unit!145824)

(assert (=> b!4854492 (= lt!1991104 lt!1991115)))

(declare-fun lt!1991110 () Unit!145824)

(declare-fun lemmaValidKeyInArrayIsInListMap!26 (array!18816 array!18814 (_ BitVec 32) (_ BitVec 32) V!17840 V!17840 (_ BitVec 32) Int) Unit!145824)

(assert (=> b!4854492 (= lt!1991110 (lemmaValidKeyInArrayIsInListMap!26 (_keys!5459 (v!49585 (underlying!10406 thiss!47233))) (_values!5427 (v!49585 (underlying!10406 thiss!47233))) (mask!15407 (v!49585 (underlying!10406 thiss!47233))) (extraKeys!5389 (v!49585 (underlying!10406 thiss!47233))) (zeroValue!5402 (v!49585 (underlying!10406 thiss!47233))) (minValue!5402 (v!49585 (underlying!10406 thiss!47233))) (index!1514 lt!1991109) (defaultEntry!5530 (v!49585 (underlying!10406 thiss!47233)))))))

(assert (=> b!4854492 call!337755))

(declare-fun lt!1991114 () Unit!145824)

(assert (=> b!4854492 (= lt!1991114 lt!1991110)))

(declare-fun b!4854493 () Bool)

(declare-fun Unit!145827 () Unit!145824)

(assert (=> b!4854493 (= e!3034889 Unit!145827)))

(declare-fun d!1558234 () Bool)

(declare-fun lt!1991112 () Bool)

(declare-fun map!12795 (LongMapFixedSize!10210) ListLongMap!6565)

(assert (=> d!1558234 (= lt!1991112 (contains!19353 (map!12795 (v!49585 (underlying!10406 thiss!47233))) key!6996))))

(assert (=> d!1558234 (= lt!1991112 e!3034885)))

(declare-fun c!825915 () Bool)

(assert (=> d!1558234 (= c!825915 (= key!6996 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun valid!4132 (LongMapFixedSize!10210) Bool)

(assert (=> d!1558234 (valid!4132 (v!49585 (underlying!10406 thiss!47233)))))

(assert (=> d!1558234 (= (contains!19352 (v!49585 (underlying!10406 thiss!47233)) key!6996) lt!1991112)))

(declare-fun bm!337751 () Bool)

(assert (=> bm!337751 (= call!337755 (contains!19353 call!337754 (ite c!825913 (select (arr!8396 (_keys!5459 (v!49585 (underlying!10406 thiss!47233)))) (index!1514 lt!1991109)) key!6996)))))

(assert (= (and d!1558234 c!825915) b!4854485))

(assert (= (and d!1558234 (not c!825915)) b!4854489))

(assert (= (and b!4854489 c!825911) b!4854484))

(assert (= (and b!4854489 (not c!825911)) b!4854490))

(assert (= (and b!4854490 c!825913) b!4854492))

(assert (= (and b!4854490 (not c!825913)) b!4854486))

(assert (= (and b!4854486 c!825914) b!4854491))

(assert (= (and b!4854486 (not c!825914)) b!4854493))

(assert (= (and b!4854491 c!825912) b!4854488))

(assert (= (and b!4854491 (not c!825912)) b!4854487))

(assert (= (or b!4854492 b!4854488) bm!337749))

(assert (= (or b!4854492 b!4854486) bm!337750))

(assert (= (or b!4854492 b!4854486) bm!337751))

(declare-fun m!5852370 () Bool)

(assert (=> b!4854492 m!5852370))

(declare-fun m!5852372 () Bool)

(assert (=> b!4854492 m!5852372))

(declare-fun m!5852374 () Bool)

(assert (=> b!4854491 m!5852374))

(declare-fun m!5852376 () Bool)

(assert (=> b!4854491 m!5852376))

(declare-fun m!5852378 () Bool)

(assert (=> b!4854491 m!5852378))

(declare-fun m!5852380 () Bool)

(assert (=> b!4854491 m!5852380))

(declare-fun m!5852382 () Bool)

(assert (=> b!4854491 m!5852382))

(declare-fun m!5852384 () Bool)

(assert (=> b!4854491 m!5852384))

(declare-fun m!5852386 () Bool)

(assert (=> bm!337750 m!5852386))

(assert (=> b!4854490 m!5852382))

(declare-fun m!5852388 () Bool)

(assert (=> d!1558234 m!5852388))

(assert (=> d!1558234 m!5852388))

(declare-fun m!5852390 () Bool)

(assert (=> d!1558234 m!5852390))

(declare-fun m!5852392 () Bool)

(assert (=> d!1558234 m!5852392))

(declare-fun m!5852394 () Bool)

(assert (=> bm!337749 m!5852394))

(declare-fun m!5852396 () Bool)

(assert (=> bm!337751 m!5852396))

(declare-fun m!5852398 () Bool)

(assert (=> bm!337751 m!5852398))

(assert (=> b!4854459 d!1558234))

(declare-fun d!1558236 () Bool)

(declare-fun e!3034895 () Bool)

(assert (=> d!1558236 e!3034895))

(declare-fun res!2072554 () Bool)

(assert (=> d!1558236 (=> res!2072554 e!3034895)))

(declare-fun lt!1991127 () Bool)

(assert (=> d!1558236 (= res!2072554 (not lt!1991127))))

(declare-fun lt!1991126 () Bool)

(assert (=> d!1558236 (= lt!1991127 lt!1991126)))

(declare-fun lt!1991129 () Unit!145824)

(declare-fun e!3034894 () Unit!145824)

(assert (=> d!1558236 (= lt!1991129 e!3034894)))

(declare-fun c!825918 () Bool)

(assert (=> d!1558236 (= c!825918 lt!1991126)))

(declare-fun containsKey!4774 (List!55825 (_ BitVec 64)) Bool)

(assert (=> d!1558236 (= lt!1991126 (containsKey!4774 (toList!7911 (map!12794 thiss!47233)) key!6996))))

(assert (=> d!1558236 (= (contains!19353 (map!12794 thiss!47233) key!6996) lt!1991127)))

(declare-fun b!4854500 () Bool)

(declare-fun lt!1991128 () Unit!145824)

(assert (=> b!4854500 (= e!3034894 lt!1991128)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2528 (List!55825 (_ BitVec 64)) Unit!145824)

(assert (=> b!4854500 (= lt!1991128 (lemmaContainsKeyImpliesGetValueByKeyDefined!2528 (toList!7911 (map!12794 thiss!47233)) key!6996))))

(declare-datatypes ((Option!13759 0))(
  ( (None!13758) (Some!13758 (v!49586 V!17840)) )
))
(declare-fun isDefined!10837 (Option!13759) Bool)

(declare-fun getValueByKey!2757 (List!55825 (_ BitVec 64)) Option!13759)

(assert (=> b!4854500 (isDefined!10837 (getValueByKey!2757 (toList!7911 (map!12794 thiss!47233)) key!6996))))

(declare-fun b!4854501 () Bool)

(declare-fun Unit!145828 () Unit!145824)

(assert (=> b!4854501 (= e!3034894 Unit!145828)))

(declare-fun b!4854502 () Bool)

(assert (=> b!4854502 (= e!3034895 (isDefined!10837 (getValueByKey!2757 (toList!7911 (map!12794 thiss!47233)) key!6996)))))

(assert (= (and d!1558236 c!825918) b!4854500))

(assert (= (and d!1558236 (not c!825918)) b!4854501))

(assert (= (and d!1558236 (not res!2072554)) b!4854502))

(declare-fun m!5852400 () Bool)

(assert (=> d!1558236 m!5852400))

(declare-fun m!5852402 () Bool)

(assert (=> b!4854500 m!5852402))

(declare-fun m!5852404 () Bool)

(assert (=> b!4854500 m!5852404))

(assert (=> b!4854500 m!5852404))

(declare-fun m!5852406 () Bool)

(assert (=> b!4854500 m!5852406))

(assert (=> b!4854502 m!5852404))

(assert (=> b!4854502 m!5852404))

(assert (=> b!4854502 m!5852406))

(assert (=> b!4854459 d!1558236))

(declare-fun d!1558238 () Bool)

(assert (=> d!1558238 (= (map!12794 thiss!47233) (map!12795 (v!49585 (underlying!10406 thiss!47233))))))

(declare-fun bs!1173263 () Bool)

(assert (= bs!1173263 d!1558238))

(assert (=> bs!1173263 m!5852388))

(assert (=> b!4854459 d!1558238))

(declare-fun d!1558240 () Bool)

(assert (=> d!1558240 (= (valid!4131 thiss!47233) (valid!4132 (v!49585 (underlying!10406 thiss!47233))))))

(declare-fun bs!1173264 () Bool)

(assert (= bs!1173264 d!1558240))

(assert (=> bs!1173264 m!5852392))

(assert (=> b!4854460 d!1558240))

(declare-fun d!1558242 () Bool)

(assert (=> d!1558242 (= (array_inv!6067 (_keys!5459 (v!49585 (underlying!10406 thiss!47233)))) (bvsge (size!36670 (_keys!5459 (v!49585 (underlying!10406 thiss!47233)))) #b00000000000000000000000000000000))))

(assert (=> b!4854461 d!1558242))

(declare-fun d!1558244 () Bool)

(assert (=> d!1558244 (= (array_inv!6068 (_values!5427 (v!49585 (underlying!10406 thiss!47233)))) (bvsge (size!36669 (_values!5427 (v!49585 (underlying!10406 thiss!47233)))) #b00000000000000000000000000000000))))

(assert (=> b!4854461 d!1558244))

(declare-fun condMapEmpty!22521 () Bool)

(declare-fun mapDefault!22521 () V!17840)

(assert (=> mapNonEmpty!22518 (= condMapEmpty!22521 (= mapRest!22518 ((as const (Array (_ BitVec 32) V!17840)) mapDefault!22521)))))

(declare-fun mapRes!22521 () Bool)

(assert (=> mapNonEmpty!22518 (= tp!1365356 (and tp_is_empty!35475 mapRes!22521))))

(declare-fun mapIsEmpty!22521 () Bool)

(assert (=> mapIsEmpty!22521 mapRes!22521))

(declare-fun mapNonEmpty!22521 () Bool)

(declare-fun tp!1365360 () Bool)

(assert (=> mapNonEmpty!22521 (= mapRes!22521 (and tp!1365360 tp_is_empty!35475))))

(declare-fun mapValue!22521 () V!17840)

(declare-fun mapRest!22521 () (Array (_ BitVec 32) V!17840))

(declare-fun mapKey!22521 () (_ BitVec 32))

(assert (=> mapNonEmpty!22521 (= mapRest!22518 (store mapRest!22521 mapKey!22521 mapValue!22521))))

(assert (= (and mapNonEmpty!22518 condMapEmpty!22521) mapIsEmpty!22521))

(assert (= (and mapNonEmpty!22518 (not condMapEmpty!22521)) mapNonEmpty!22521))

(declare-fun m!5852408 () Bool)

(assert (=> mapNonEmpty!22521 m!5852408))

(check-sat (not b!4854502) (not b!4854491) (not d!1558236) (not d!1558240) (not mapNonEmpty!22521) (not bm!337749) (not b!4854492) (not b!4854490) tp_is_empty!35475 b_and!342169 (not b_next!131131) (not b!4854500) (not d!1558238) (not bm!337750) (not d!1558234) (not bm!337751))
(check-sat b_and!342169 (not b_next!131131))
