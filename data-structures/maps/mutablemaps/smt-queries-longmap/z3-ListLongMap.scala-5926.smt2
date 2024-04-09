; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77218 () Bool)

(assert start!77218)

(declare-fun b!900618 () Bool)

(declare-fun b_free!16059 () Bool)

(declare-fun b_next!16059 () Bool)

(assert (=> b!900618 (= b_free!16059 (not b_next!16059))))

(declare-fun tp!56271 () Bool)

(declare-fun b_and!26401 () Bool)

(assert (=> b!900618 (= tp!56271 b_and!26401)))

(declare-fun b!900608 () Bool)

(declare-fun res!608263 () Bool)

(declare-fun e!504154 () Bool)

(assert (=> b!900608 (=> res!608263 e!504154)))

(declare-datatypes ((array!52812 0))(
  ( (array!52813 (arr!25372 (Array (_ BitVec 32) (_ BitVec 64))) (size!25832 (_ BitVec 32))) )
))
(declare-datatypes ((V!29481 0))(
  ( (V!29482 (val!9244 Int)) )
))
(declare-datatypes ((ValueCell!8712 0))(
  ( (ValueCellFull!8712 (v!11739 V!29481)) (EmptyCell!8712) )
))
(declare-datatypes ((array!52814 0))(
  ( (array!52815 (arr!25373 (Array (_ BitVec 32) ValueCell!8712)) (size!25833 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4440 0))(
  ( (LongMapFixedSize!4441 (defaultEntry!5456 Int) (mask!26243 (_ BitVec 32)) (extraKeys!5183 (_ BitVec 32)) (zeroValue!5287 V!29481) (minValue!5287 V!29481) (_size!2275 (_ BitVec 32)) (_keys!10259 array!52812) (_values!5474 array!52814) (_vacant!2275 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4440)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52812 (_ BitVec 32)) Bool)

(assert (=> b!900608 (= res!608263 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10259 thiss!1181) (mask!26243 thiss!1181))))))

(declare-fun res!608269 () Bool)

(declare-fun e!504149 () Bool)

(assert (=> start!77218 (=> (not res!608269) (not e!504149))))

(declare-fun valid!1689 (LongMapFixedSize!4440) Bool)

(assert (=> start!77218 (= res!608269 (valid!1689 thiss!1181))))

(assert (=> start!77218 e!504149))

(declare-fun e!504151 () Bool)

(assert (=> start!77218 e!504151))

(assert (=> start!77218 true))

(declare-fun mapNonEmpty!29260 () Bool)

(declare-fun mapRes!29260 () Bool)

(declare-fun tp!56272 () Bool)

(declare-fun e!504155 () Bool)

(assert (=> mapNonEmpty!29260 (= mapRes!29260 (and tp!56272 e!504155))))

(declare-fun mapRest!29260 () (Array (_ BitVec 32) ValueCell!8712))

(declare-fun mapValue!29260 () ValueCell!8712)

(declare-fun mapKey!29260 () (_ BitVec 32))

(assert (=> mapNonEmpty!29260 (= (arr!25373 (_values!5474 thiss!1181)) (store mapRest!29260 mapKey!29260 mapValue!29260))))

(declare-fun b!900609 () Bool)

(declare-fun e!504147 () Bool)

(assert (=> b!900609 (= e!504147 e!504154)))

(declare-fun res!608265 () Bool)

(assert (=> b!900609 (=> res!608265 e!504154)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!900609 (= res!608265 (not (validMask!0 (mask!26243 thiss!1181))))))

(declare-datatypes ((tuple2!12080 0))(
  ( (tuple2!12081 (_1!6050 (_ BitVec 64)) (_2!6050 V!29481)) )
))
(declare-datatypes ((List!17939 0))(
  ( (Nil!17936) (Cons!17935 (h!19081 tuple2!12080) (t!25302 List!17939)) )
))
(declare-datatypes ((ListLongMap!10791 0))(
  ( (ListLongMap!10792 (toList!5411 List!17939)) )
))
(declare-fun lt!406991 () ListLongMap!10791)

(declare-datatypes ((SeekEntryResult!8930 0))(
  ( (MissingZero!8930 (index!38090 (_ BitVec 32))) (Found!8930 (index!38091 (_ BitVec 32))) (Intermediate!8930 (undefined!9742 Bool) (index!38092 (_ BitVec 32)) (x!76728 (_ BitVec 32))) (Undefined!8930) (MissingVacant!8930 (index!38093 (_ BitVec 32))) )
))
(declare-fun lt!406990 () SeekEntryResult!8930)

(declare-fun contains!4419 (ListLongMap!10791 (_ BitVec 64)) Bool)

(assert (=> b!900609 (contains!4419 lt!406991 (select (arr!25372 (_keys!10259 thiss!1181)) (index!38091 lt!406990)))))

(declare-fun getCurrentListMap!2654 (array!52812 array!52814 (_ BitVec 32) (_ BitVec 32) V!29481 V!29481 (_ BitVec 32) Int) ListLongMap!10791)

(assert (=> b!900609 (= lt!406991 (getCurrentListMap!2654 (_keys!10259 thiss!1181) (_values!5474 thiss!1181) (mask!26243 thiss!1181) (extraKeys!5183 thiss!1181) (zeroValue!5287 thiss!1181) (minValue!5287 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5456 thiss!1181)))))

(declare-datatypes ((Unit!30569 0))(
  ( (Unit!30570) )
))
(declare-fun lt!406993 () Unit!30569)

(declare-fun lemmaValidKeyInArrayIsInListMap!247 (array!52812 array!52814 (_ BitVec 32) (_ BitVec 32) V!29481 V!29481 (_ BitVec 32) Int) Unit!30569)

(assert (=> b!900609 (= lt!406993 (lemmaValidKeyInArrayIsInListMap!247 (_keys!10259 thiss!1181) (_values!5474 thiss!1181) (mask!26243 thiss!1181) (extraKeys!5183 thiss!1181) (zeroValue!5287 thiss!1181) (minValue!5287 thiss!1181) (index!38091 lt!406990) (defaultEntry!5456 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!900609 (arrayContainsKey!0 (_keys!10259 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!406992 () Unit!30569)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52812 (_ BitVec 64) (_ BitVec 32)) Unit!30569)

(assert (=> b!900609 (= lt!406992 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10259 thiss!1181) key!785 (index!38091 lt!406990)))))

(declare-fun b!900610 () Bool)

(declare-fun res!608267 () Bool)

(assert (=> b!900610 (=> res!608267 e!504154)))

(assert (=> b!900610 (= res!608267 (or (not (= (size!25833 (_values!5474 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26243 thiss!1181)))) (not (= (size!25832 (_keys!10259 thiss!1181)) (size!25833 (_values!5474 thiss!1181)))) (bvslt (mask!26243 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5183 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5183 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!900611 () Bool)

(declare-fun res!608264 () Bool)

(assert (=> b!900611 (=> (not res!608264) (not e!504149))))

(assert (=> b!900611 (= res!608264 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!29260 () Bool)

(assert (=> mapIsEmpty!29260 mapRes!29260))

(declare-fun b!900612 () Bool)

(declare-fun e!504153 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!900612 (= e!504153 (inRange!0 (index!38091 lt!406990) (mask!26243 thiss!1181)))))

(declare-fun b!900613 () Bool)

(declare-fun res!608266 () Bool)

(assert (=> b!900613 (=> res!608266 e!504154)))

(declare-datatypes ((List!17940 0))(
  ( (Nil!17937) (Cons!17936 (h!19082 (_ BitVec 64)) (t!25303 List!17940)) )
))
(declare-fun arrayNoDuplicates!0 (array!52812 (_ BitVec 32) List!17940) Bool)

(assert (=> b!900613 (= res!608266 (not (arrayNoDuplicates!0 (_keys!10259 thiss!1181) #b00000000000000000000000000000000 Nil!17937)))))

(declare-fun b!900614 () Bool)

(assert (=> b!900614 (= e!504154 (contains!4419 lt!406991 key!785))))

(declare-fun b!900615 () Bool)

(declare-fun e!504150 () Bool)

(declare-fun e!504148 () Bool)

(assert (=> b!900615 (= e!504150 (and e!504148 mapRes!29260))))

(declare-fun condMapEmpty!29260 () Bool)

(declare-fun mapDefault!29260 () ValueCell!8712)

(assert (=> b!900615 (= condMapEmpty!29260 (= (arr!25373 (_values!5474 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8712)) mapDefault!29260)))))

(declare-fun b!900616 () Bool)

(declare-fun tp_is_empty!18387 () Bool)

(assert (=> b!900616 (= e!504155 tp_is_empty!18387)))

(declare-fun b!900617 () Bool)

(assert (=> b!900617 (= e!504149 (not e!504147))))

(declare-fun res!608270 () Bool)

(assert (=> b!900617 (=> res!608270 e!504147)))

(get-info :version)

(assert (=> b!900617 (= res!608270 (not ((_ is Found!8930) lt!406990)))))

(assert (=> b!900617 e!504153))

(declare-fun res!608268 () Bool)

(assert (=> b!900617 (=> res!608268 e!504153)))

(assert (=> b!900617 (= res!608268 (not ((_ is Found!8930) lt!406990)))))

(declare-fun lt!406994 () Unit!30569)

(declare-fun lemmaSeekEntryGivesInRangeIndex!111 (array!52812 array!52814 (_ BitVec 32) (_ BitVec 32) V!29481 V!29481 (_ BitVec 64)) Unit!30569)

(assert (=> b!900617 (= lt!406994 (lemmaSeekEntryGivesInRangeIndex!111 (_keys!10259 thiss!1181) (_values!5474 thiss!1181) (mask!26243 thiss!1181) (extraKeys!5183 thiss!1181) (zeroValue!5287 thiss!1181) (minValue!5287 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52812 (_ BitVec 32)) SeekEntryResult!8930)

(assert (=> b!900617 (= lt!406990 (seekEntry!0 key!785 (_keys!10259 thiss!1181) (mask!26243 thiss!1181)))))

(declare-fun array_inv!19882 (array!52812) Bool)

(declare-fun array_inv!19883 (array!52814) Bool)

(assert (=> b!900618 (= e!504151 (and tp!56271 tp_is_empty!18387 (array_inv!19882 (_keys!10259 thiss!1181)) (array_inv!19883 (_values!5474 thiss!1181)) e!504150))))

(declare-fun b!900619 () Bool)

(assert (=> b!900619 (= e!504148 tp_is_empty!18387)))

(assert (= (and start!77218 res!608269) b!900611))

(assert (= (and b!900611 res!608264) b!900617))

(assert (= (and b!900617 (not res!608268)) b!900612))

(assert (= (and b!900617 (not res!608270)) b!900609))

(assert (= (and b!900609 (not res!608265)) b!900610))

(assert (= (and b!900610 (not res!608267)) b!900608))

(assert (= (and b!900608 (not res!608263)) b!900613))

(assert (= (and b!900613 (not res!608266)) b!900614))

(assert (= (and b!900615 condMapEmpty!29260) mapIsEmpty!29260))

(assert (= (and b!900615 (not condMapEmpty!29260)) mapNonEmpty!29260))

(assert (= (and mapNonEmpty!29260 ((_ is ValueCellFull!8712) mapValue!29260)) b!900616))

(assert (= (and b!900615 ((_ is ValueCellFull!8712) mapDefault!29260)) b!900619))

(assert (= b!900618 b!900615))

(assert (= start!77218 b!900618))

(declare-fun m!837107 () Bool)

(assert (=> b!900608 m!837107))

(declare-fun m!837109 () Bool)

(assert (=> mapNonEmpty!29260 m!837109))

(declare-fun m!837111 () Bool)

(assert (=> start!77218 m!837111))

(declare-fun m!837113 () Bool)

(assert (=> b!900618 m!837113))

(declare-fun m!837115 () Bool)

(assert (=> b!900618 m!837115))

(declare-fun m!837117 () Bool)

(assert (=> b!900614 m!837117))

(declare-fun m!837119 () Bool)

(assert (=> b!900612 m!837119))

(declare-fun m!837121 () Bool)

(assert (=> b!900617 m!837121))

(declare-fun m!837123 () Bool)

(assert (=> b!900617 m!837123))

(declare-fun m!837125 () Bool)

(assert (=> b!900613 m!837125))

(declare-fun m!837127 () Bool)

(assert (=> b!900609 m!837127))

(declare-fun m!837129 () Bool)

(assert (=> b!900609 m!837129))

(declare-fun m!837131 () Bool)

(assert (=> b!900609 m!837131))

(declare-fun m!837133 () Bool)

(assert (=> b!900609 m!837133))

(declare-fun m!837135 () Bool)

(assert (=> b!900609 m!837135))

(declare-fun m!837137 () Bool)

(assert (=> b!900609 m!837137))

(declare-fun m!837139 () Bool)

(assert (=> b!900609 m!837139))

(assert (=> b!900609 m!837133))

(check-sat (not b_next!16059) (not start!77218) (not b!900614) (not b!900618) (not b!900613) (not b!900609) (not b!900617) tp_is_empty!18387 (not b!900608) b_and!26401 (not b!900612) (not mapNonEmpty!29260))
(check-sat b_and!26401 (not b_next!16059))
(get-model)

(declare-fun d!111685 () Bool)

(declare-fun e!504188 () Bool)

(assert (=> d!111685 e!504188))

(declare-fun res!608297 () Bool)

(assert (=> d!111685 (=> res!608297 e!504188)))

(declare-fun lt!407021 () Bool)

(assert (=> d!111685 (= res!608297 (not lt!407021))))

(declare-fun lt!407018 () Bool)

(assert (=> d!111685 (= lt!407021 lt!407018)))

(declare-fun lt!407020 () Unit!30569)

(declare-fun e!504187 () Unit!30569)

(assert (=> d!111685 (= lt!407020 e!504187)))

(declare-fun c!95303 () Bool)

(assert (=> d!111685 (= c!95303 lt!407018)))

(declare-fun containsKey!433 (List!17939 (_ BitVec 64)) Bool)

(assert (=> d!111685 (= lt!407018 (containsKey!433 (toList!5411 lt!406991) key!785))))

(assert (=> d!111685 (= (contains!4419 lt!406991 key!785) lt!407021)))

(declare-fun b!900662 () Bool)

(declare-fun lt!407019 () Unit!30569)

(assert (=> b!900662 (= e!504187 lt!407019)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!328 (List!17939 (_ BitVec 64)) Unit!30569)

(assert (=> b!900662 (= lt!407019 (lemmaContainsKeyImpliesGetValueByKeyDefined!328 (toList!5411 lt!406991) key!785))))

(declare-datatypes ((Option!469 0))(
  ( (Some!468 (v!11741 V!29481)) (None!467) )
))
(declare-fun isDefined!338 (Option!469) Bool)

(declare-fun getValueByKey!463 (List!17939 (_ BitVec 64)) Option!469)

(assert (=> b!900662 (isDefined!338 (getValueByKey!463 (toList!5411 lt!406991) key!785))))

(declare-fun b!900663 () Bool)

(declare-fun Unit!30573 () Unit!30569)

(assert (=> b!900663 (= e!504187 Unit!30573)))

(declare-fun b!900664 () Bool)

(assert (=> b!900664 (= e!504188 (isDefined!338 (getValueByKey!463 (toList!5411 lt!406991) key!785)))))

(assert (= (and d!111685 c!95303) b!900662))

(assert (= (and d!111685 (not c!95303)) b!900663))

(assert (= (and d!111685 (not res!608297)) b!900664))

(declare-fun m!837175 () Bool)

(assert (=> d!111685 m!837175))

(declare-fun m!837177 () Bool)

(assert (=> b!900662 m!837177))

(declare-fun m!837179 () Bool)

(assert (=> b!900662 m!837179))

(assert (=> b!900662 m!837179))

(declare-fun m!837181 () Bool)

(assert (=> b!900662 m!837181))

(assert (=> b!900664 m!837179))

(assert (=> b!900664 m!837179))

(assert (=> b!900664 m!837181))

(assert (=> b!900614 d!111685))

(declare-fun d!111687 () Bool)

(assert (=> d!111687 (= (array_inv!19882 (_keys!10259 thiss!1181)) (bvsge (size!25832 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!900618 d!111687))

(declare-fun d!111689 () Bool)

(assert (=> d!111689 (= (array_inv!19883 (_values!5474 thiss!1181)) (bvsge (size!25833 (_values!5474 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!900618 d!111689))

(declare-fun bm!40060 () Bool)

(declare-fun call!40063 () Bool)

(declare-fun c!95306 () Bool)

(assert (=> bm!40060 (= call!40063 (arrayNoDuplicates!0 (_keys!10259 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95306 (Cons!17936 (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000) Nil!17937) Nil!17937)))))

(declare-fun b!900675 () Bool)

(declare-fun e!504199 () Bool)

(assert (=> b!900675 (= e!504199 call!40063)))

(declare-fun b!900676 () Bool)

(declare-fun e!504197 () Bool)

(declare-fun e!504200 () Bool)

(assert (=> b!900676 (= e!504197 e!504200)))

(declare-fun res!608305 () Bool)

(assert (=> b!900676 (=> (not res!608305) (not e!504200))))

(declare-fun e!504198 () Bool)

(assert (=> b!900676 (= res!608305 (not e!504198))))

(declare-fun res!608306 () Bool)

(assert (=> b!900676 (=> (not res!608306) (not e!504198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!900676 (= res!608306 (validKeyInArray!0 (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!111691 () Bool)

(declare-fun res!608304 () Bool)

(assert (=> d!111691 (=> res!608304 e!504197)))

(assert (=> d!111691 (= res!608304 (bvsge #b00000000000000000000000000000000 (size!25832 (_keys!10259 thiss!1181))))))

(assert (=> d!111691 (= (arrayNoDuplicates!0 (_keys!10259 thiss!1181) #b00000000000000000000000000000000 Nil!17937) e!504197)))

(declare-fun b!900677 () Bool)

(declare-fun contains!4420 (List!17940 (_ BitVec 64)) Bool)

(assert (=> b!900677 (= e!504198 (contains!4420 Nil!17937 (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!900678 () Bool)

(assert (=> b!900678 (= e!504200 e!504199)))

(assert (=> b!900678 (= c!95306 (validKeyInArray!0 (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!900679 () Bool)

(assert (=> b!900679 (= e!504199 call!40063)))

(assert (= (and d!111691 (not res!608304)) b!900676))

(assert (= (and b!900676 res!608306) b!900677))

(assert (= (and b!900676 res!608305) b!900678))

(assert (= (and b!900678 c!95306) b!900679))

(assert (= (and b!900678 (not c!95306)) b!900675))

(assert (= (or b!900679 b!900675) bm!40060))

(declare-fun m!837183 () Bool)

(assert (=> bm!40060 m!837183))

(declare-fun m!837185 () Bool)

(assert (=> bm!40060 m!837185))

(assert (=> b!900676 m!837183))

(assert (=> b!900676 m!837183))

(declare-fun m!837187 () Bool)

(assert (=> b!900676 m!837187))

(assert (=> b!900677 m!837183))

(assert (=> b!900677 m!837183))

(declare-fun m!837189 () Bool)

(assert (=> b!900677 m!837189))

(assert (=> b!900678 m!837183))

(assert (=> b!900678 m!837183))

(assert (=> b!900678 m!837187))

(assert (=> b!900613 d!111691))

(declare-fun d!111693 () Bool)

(declare-fun res!608313 () Bool)

(declare-fun e!504203 () Bool)

(assert (=> d!111693 (=> (not res!608313) (not e!504203))))

(declare-fun simpleValid!330 (LongMapFixedSize!4440) Bool)

(assert (=> d!111693 (= res!608313 (simpleValid!330 thiss!1181))))

(assert (=> d!111693 (= (valid!1689 thiss!1181) e!504203)))

(declare-fun b!900686 () Bool)

(declare-fun res!608314 () Bool)

(assert (=> b!900686 (=> (not res!608314) (not e!504203))))

(declare-fun arrayCountValidKeys!0 (array!52812 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!900686 (= res!608314 (= (arrayCountValidKeys!0 (_keys!10259 thiss!1181) #b00000000000000000000000000000000 (size!25832 (_keys!10259 thiss!1181))) (_size!2275 thiss!1181)))))

(declare-fun b!900687 () Bool)

(declare-fun res!608315 () Bool)

(assert (=> b!900687 (=> (not res!608315) (not e!504203))))

(assert (=> b!900687 (= res!608315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10259 thiss!1181) (mask!26243 thiss!1181)))))

(declare-fun b!900688 () Bool)

(assert (=> b!900688 (= e!504203 (arrayNoDuplicates!0 (_keys!10259 thiss!1181) #b00000000000000000000000000000000 Nil!17937))))

(assert (= (and d!111693 res!608313) b!900686))

(assert (= (and b!900686 res!608314) b!900687))

(assert (= (and b!900687 res!608315) b!900688))

(declare-fun m!837191 () Bool)

(assert (=> d!111693 m!837191))

(declare-fun m!837193 () Bool)

(assert (=> b!900686 m!837193))

(assert (=> b!900687 m!837107))

(assert (=> b!900688 m!837125))

(assert (=> start!77218 d!111693))

(declare-fun d!111695 () Bool)

(assert (=> d!111695 (= (validMask!0 (mask!26243 thiss!1181)) (and (or (= (mask!26243 thiss!1181) #b00000000000000000000000000000111) (= (mask!26243 thiss!1181) #b00000000000000000000000000001111) (= (mask!26243 thiss!1181) #b00000000000000000000000000011111) (= (mask!26243 thiss!1181) #b00000000000000000000000000111111) (= (mask!26243 thiss!1181) #b00000000000000000000000001111111) (= (mask!26243 thiss!1181) #b00000000000000000000000011111111) (= (mask!26243 thiss!1181) #b00000000000000000000000111111111) (= (mask!26243 thiss!1181) #b00000000000000000000001111111111) (= (mask!26243 thiss!1181) #b00000000000000000000011111111111) (= (mask!26243 thiss!1181) #b00000000000000000000111111111111) (= (mask!26243 thiss!1181) #b00000000000000000001111111111111) (= (mask!26243 thiss!1181) #b00000000000000000011111111111111) (= (mask!26243 thiss!1181) #b00000000000000000111111111111111) (= (mask!26243 thiss!1181) #b00000000000000001111111111111111) (= (mask!26243 thiss!1181) #b00000000000000011111111111111111) (= (mask!26243 thiss!1181) #b00000000000000111111111111111111) (= (mask!26243 thiss!1181) #b00000000000001111111111111111111) (= (mask!26243 thiss!1181) #b00000000000011111111111111111111) (= (mask!26243 thiss!1181) #b00000000000111111111111111111111) (= (mask!26243 thiss!1181) #b00000000001111111111111111111111) (= (mask!26243 thiss!1181) #b00000000011111111111111111111111) (= (mask!26243 thiss!1181) #b00000000111111111111111111111111) (= (mask!26243 thiss!1181) #b00000001111111111111111111111111) (= (mask!26243 thiss!1181) #b00000011111111111111111111111111) (= (mask!26243 thiss!1181) #b00000111111111111111111111111111) (= (mask!26243 thiss!1181) #b00001111111111111111111111111111) (= (mask!26243 thiss!1181) #b00011111111111111111111111111111) (= (mask!26243 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26243 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!900609 d!111695))

(declare-fun d!111697 () Bool)

(assert (=> d!111697 (arrayContainsKey!0 (_keys!10259 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!407024 () Unit!30569)

(declare-fun choose!13 (array!52812 (_ BitVec 64) (_ BitVec 32)) Unit!30569)

(assert (=> d!111697 (= lt!407024 (choose!13 (_keys!10259 thiss!1181) key!785 (index!38091 lt!406990)))))

(assert (=> d!111697 (bvsge (index!38091 lt!406990) #b00000000000000000000000000000000)))

(assert (=> d!111697 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10259 thiss!1181) key!785 (index!38091 lt!406990)) lt!407024)))

(declare-fun bs!25286 () Bool)

(assert (= bs!25286 d!111697))

(assert (=> bs!25286 m!837131))

(declare-fun m!837195 () Bool)

(assert (=> bs!25286 m!837195))

(assert (=> b!900609 d!111697))

(declare-fun d!111699 () Bool)

(declare-fun e!504206 () Bool)

(assert (=> d!111699 e!504206))

(declare-fun res!608318 () Bool)

(assert (=> d!111699 (=> (not res!608318) (not e!504206))))

(assert (=> d!111699 (= res!608318 (and (bvsge (index!38091 lt!406990) #b00000000000000000000000000000000) (bvslt (index!38091 lt!406990) (size!25832 (_keys!10259 thiss!1181)))))))

(declare-fun lt!407027 () Unit!30569)

(declare-fun choose!1524 (array!52812 array!52814 (_ BitVec 32) (_ BitVec 32) V!29481 V!29481 (_ BitVec 32) Int) Unit!30569)

(assert (=> d!111699 (= lt!407027 (choose!1524 (_keys!10259 thiss!1181) (_values!5474 thiss!1181) (mask!26243 thiss!1181) (extraKeys!5183 thiss!1181) (zeroValue!5287 thiss!1181) (minValue!5287 thiss!1181) (index!38091 lt!406990) (defaultEntry!5456 thiss!1181)))))

(assert (=> d!111699 (validMask!0 (mask!26243 thiss!1181))))

(assert (=> d!111699 (= (lemmaValidKeyInArrayIsInListMap!247 (_keys!10259 thiss!1181) (_values!5474 thiss!1181) (mask!26243 thiss!1181) (extraKeys!5183 thiss!1181) (zeroValue!5287 thiss!1181) (minValue!5287 thiss!1181) (index!38091 lt!406990) (defaultEntry!5456 thiss!1181)) lt!407027)))

(declare-fun b!900691 () Bool)

(assert (=> b!900691 (= e!504206 (contains!4419 (getCurrentListMap!2654 (_keys!10259 thiss!1181) (_values!5474 thiss!1181) (mask!26243 thiss!1181) (extraKeys!5183 thiss!1181) (zeroValue!5287 thiss!1181) (minValue!5287 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5456 thiss!1181)) (select (arr!25372 (_keys!10259 thiss!1181)) (index!38091 lt!406990))))))

(assert (= (and d!111699 res!608318) b!900691))

(declare-fun m!837197 () Bool)

(assert (=> d!111699 m!837197))

(assert (=> d!111699 m!837137))

(assert (=> b!900691 m!837139))

(assert (=> b!900691 m!837133))

(assert (=> b!900691 m!837139))

(assert (=> b!900691 m!837133))

(declare-fun m!837199 () Bool)

(assert (=> b!900691 m!837199))

(assert (=> b!900609 d!111699))

(declare-fun b!900734 () Bool)

(declare-fun e!504240 () Bool)

(declare-fun e!504236 () Bool)

(assert (=> b!900734 (= e!504240 e!504236)))

(declare-fun res!608338 () Bool)

(assert (=> b!900734 (=> (not res!608338) (not e!504236))))

(declare-fun lt!407075 () ListLongMap!10791)

(assert (=> b!900734 (= res!608338 (contains!4419 lt!407075 (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!900734 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25832 (_keys!10259 thiss!1181))))))

(declare-fun b!900735 () Bool)

(declare-fun e!504234 () ListLongMap!10791)

(declare-fun e!504238 () ListLongMap!10791)

(assert (=> b!900735 (= e!504234 e!504238)))

(declare-fun c!95322 () Bool)

(assert (=> b!900735 (= c!95322 (and (not (= (bvand (extraKeys!5183 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5183 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40075 () Bool)

(declare-fun call!40081 () Bool)

(assert (=> bm!40075 (= call!40081 (contains!4419 lt!407075 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!900736 () Bool)

(declare-fun e!504239 () ListLongMap!10791)

(declare-fun call!40083 () ListLongMap!10791)

(assert (=> b!900736 (= e!504239 call!40083)))

(declare-fun b!900737 () Bool)

(declare-fun e!504241 () Bool)

(declare-fun apply!417 (ListLongMap!10791 (_ BitVec 64)) V!29481)

(assert (=> b!900737 (= e!504241 (= (apply!417 lt!407075 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5287 thiss!1181)))))

(declare-fun b!900738 () Bool)

(declare-fun e!504245 () Bool)

(declare-fun e!504242 () Bool)

(assert (=> b!900738 (= e!504245 e!504242)))

(declare-fun c!95320 () Bool)

(assert (=> b!900738 (= c!95320 (not (= (bvand (extraKeys!5183 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!900740 () Bool)

(declare-fun e!504235 () Unit!30569)

(declare-fun Unit!30574 () Unit!30569)

(assert (=> b!900740 (= e!504235 Unit!30574)))

(declare-fun b!900741 () Bool)

(declare-fun res!608345 () Bool)

(assert (=> b!900741 (=> (not res!608345) (not e!504245))))

(declare-fun e!504243 () Bool)

(assert (=> b!900741 (= res!608345 e!504243)))

(declare-fun c!95321 () Bool)

(assert (=> b!900741 (= c!95321 (not (= (bvand (extraKeys!5183 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!900742 () Bool)

(assert (=> b!900742 (= e!504238 call!40083)))

(declare-fun b!900743 () Bool)

(declare-fun e!504233 () Bool)

(assert (=> b!900743 (= e!504242 e!504233)))

(declare-fun res!608344 () Bool)

(declare-fun call!40079 () Bool)

(assert (=> b!900743 (= res!608344 call!40079)))

(assert (=> b!900743 (=> (not res!608344) (not e!504233))))

(declare-fun c!95324 () Bool)

(declare-fun call!40082 () ListLongMap!10791)

(declare-fun call!40084 () ListLongMap!10791)

(declare-fun bm!40076 () Bool)

(declare-fun call!40080 () ListLongMap!10791)

(declare-fun call!40078 () ListLongMap!10791)

(declare-fun +!2553 (ListLongMap!10791 tuple2!12080) ListLongMap!10791)

(assert (=> bm!40076 (= call!40082 (+!2553 (ite c!95324 call!40084 (ite c!95322 call!40078 call!40080)) (ite (or c!95324 c!95322) (tuple2!12081 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5287 thiss!1181)) (tuple2!12081 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5287 thiss!1181)))))))

(declare-fun b!900744 () Bool)

(declare-fun e!504237 () Bool)

(assert (=> b!900744 (= e!504237 (validKeyInArray!0 (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!40077 () Bool)

(assert (=> bm!40077 (= call!40083 call!40082)))

(declare-fun bm!40078 () Bool)

(assert (=> bm!40078 (= call!40078 call!40084)))

(declare-fun bm!40079 () Bool)

(assert (=> bm!40079 (= call!40080 call!40078)))

(declare-fun b!900745 () Bool)

(assert (=> b!900745 (= e!504243 e!504241)))

(declare-fun res!608340 () Bool)

(assert (=> b!900745 (= res!608340 call!40081)))

(assert (=> b!900745 (=> (not res!608340) (not e!504241))))

(declare-fun d!111701 () Bool)

(assert (=> d!111701 e!504245))

(declare-fun res!608341 () Bool)

(assert (=> d!111701 (=> (not res!608341) (not e!504245))))

(assert (=> d!111701 (= res!608341 (or (bvsge #b00000000000000000000000000000000 (size!25832 (_keys!10259 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25832 (_keys!10259 thiss!1181))))))))

(declare-fun lt!407080 () ListLongMap!10791)

(assert (=> d!111701 (= lt!407075 lt!407080)))

(declare-fun lt!407091 () Unit!30569)

(assert (=> d!111701 (= lt!407091 e!504235)))

(declare-fun c!95323 () Bool)

(assert (=> d!111701 (= c!95323 e!504237)))

(declare-fun res!608343 () Bool)

(assert (=> d!111701 (=> (not res!608343) (not e!504237))))

(assert (=> d!111701 (= res!608343 (bvslt #b00000000000000000000000000000000 (size!25832 (_keys!10259 thiss!1181))))))

(assert (=> d!111701 (= lt!407080 e!504234)))

(assert (=> d!111701 (= c!95324 (and (not (= (bvand (extraKeys!5183 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5183 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!111701 (validMask!0 (mask!26243 thiss!1181))))

(assert (=> d!111701 (= (getCurrentListMap!2654 (_keys!10259 thiss!1181) (_values!5474 thiss!1181) (mask!26243 thiss!1181) (extraKeys!5183 thiss!1181) (zeroValue!5287 thiss!1181) (minValue!5287 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5456 thiss!1181)) lt!407075)))

(declare-fun b!900739 () Bool)

(assert (=> b!900739 (= e!504243 (not call!40081))))

(declare-fun b!900746 () Bool)

(assert (=> b!900746 (= e!504234 (+!2553 call!40082 (tuple2!12081 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5287 thiss!1181))))))

(declare-fun b!900747 () Bool)

(declare-fun e!504244 () Bool)

(assert (=> b!900747 (= e!504244 (validKeyInArray!0 (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!900748 () Bool)

(assert (=> b!900748 (= e!504239 call!40080)))

(declare-fun b!900749 () Bool)

(declare-fun c!95319 () Bool)

(assert (=> b!900749 (= c!95319 (and (not (= (bvand (extraKeys!5183 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5183 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!900749 (= e!504238 e!504239)))

(declare-fun b!900750 () Bool)

(assert (=> b!900750 (= e!504242 (not call!40079))))

(declare-fun b!900751 () Bool)

(assert (=> b!900751 (= e!504233 (= (apply!417 lt!407075 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5287 thiss!1181)))))

(declare-fun b!900752 () Bool)

(declare-fun get!13360 (ValueCell!8712 V!29481) V!29481)

(declare-fun dynLambda!1312 (Int (_ BitVec 64)) V!29481)

(assert (=> b!900752 (= e!504236 (= (apply!417 lt!407075 (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000)) (get!13360 (select (arr!25373 (_values!5474 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1312 (defaultEntry!5456 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!900752 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25833 (_values!5474 thiss!1181))))))

(assert (=> b!900752 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25832 (_keys!10259 thiss!1181))))))

(declare-fun bm!40080 () Bool)

(assert (=> bm!40080 (= call!40079 (contains!4419 lt!407075 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!900753 () Bool)

(declare-fun lt!407078 () Unit!30569)

(assert (=> b!900753 (= e!504235 lt!407078)))

(declare-fun lt!407083 () ListLongMap!10791)

(declare-fun getCurrentListMapNoExtraKeys!3301 (array!52812 array!52814 (_ BitVec 32) (_ BitVec 32) V!29481 V!29481 (_ BitVec 32) Int) ListLongMap!10791)

(assert (=> b!900753 (= lt!407083 (getCurrentListMapNoExtraKeys!3301 (_keys!10259 thiss!1181) (_values!5474 thiss!1181) (mask!26243 thiss!1181) (extraKeys!5183 thiss!1181) (zeroValue!5287 thiss!1181) (minValue!5287 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5456 thiss!1181)))))

(declare-fun lt!407077 () (_ BitVec 64))

(assert (=> b!900753 (= lt!407077 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407089 () (_ BitVec 64))

(assert (=> b!900753 (= lt!407089 (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!407076 () Unit!30569)

(declare-fun addStillContains!339 (ListLongMap!10791 (_ BitVec 64) V!29481 (_ BitVec 64)) Unit!30569)

(assert (=> b!900753 (= lt!407076 (addStillContains!339 lt!407083 lt!407077 (zeroValue!5287 thiss!1181) lt!407089))))

(assert (=> b!900753 (contains!4419 (+!2553 lt!407083 (tuple2!12081 lt!407077 (zeroValue!5287 thiss!1181))) lt!407089)))

(declare-fun lt!407087 () Unit!30569)

(assert (=> b!900753 (= lt!407087 lt!407076)))

(declare-fun lt!407074 () ListLongMap!10791)

(assert (=> b!900753 (= lt!407074 (getCurrentListMapNoExtraKeys!3301 (_keys!10259 thiss!1181) (_values!5474 thiss!1181) (mask!26243 thiss!1181) (extraKeys!5183 thiss!1181) (zeroValue!5287 thiss!1181) (minValue!5287 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5456 thiss!1181)))))

(declare-fun lt!407085 () (_ BitVec 64))

(assert (=> b!900753 (= lt!407085 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407073 () (_ BitVec 64))

(assert (=> b!900753 (= lt!407073 (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!407090 () Unit!30569)

(declare-fun addApplyDifferent!339 (ListLongMap!10791 (_ BitVec 64) V!29481 (_ BitVec 64)) Unit!30569)

(assert (=> b!900753 (= lt!407090 (addApplyDifferent!339 lt!407074 lt!407085 (minValue!5287 thiss!1181) lt!407073))))

(assert (=> b!900753 (= (apply!417 (+!2553 lt!407074 (tuple2!12081 lt!407085 (minValue!5287 thiss!1181))) lt!407073) (apply!417 lt!407074 lt!407073))))

(declare-fun lt!407088 () Unit!30569)

(assert (=> b!900753 (= lt!407088 lt!407090)))

(declare-fun lt!407093 () ListLongMap!10791)

(assert (=> b!900753 (= lt!407093 (getCurrentListMapNoExtraKeys!3301 (_keys!10259 thiss!1181) (_values!5474 thiss!1181) (mask!26243 thiss!1181) (extraKeys!5183 thiss!1181) (zeroValue!5287 thiss!1181) (minValue!5287 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5456 thiss!1181)))))

(declare-fun lt!407092 () (_ BitVec 64))

(assert (=> b!900753 (= lt!407092 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407072 () (_ BitVec 64))

(assert (=> b!900753 (= lt!407072 (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!407079 () Unit!30569)

(assert (=> b!900753 (= lt!407079 (addApplyDifferent!339 lt!407093 lt!407092 (zeroValue!5287 thiss!1181) lt!407072))))

(assert (=> b!900753 (= (apply!417 (+!2553 lt!407093 (tuple2!12081 lt!407092 (zeroValue!5287 thiss!1181))) lt!407072) (apply!417 lt!407093 lt!407072))))

(declare-fun lt!407081 () Unit!30569)

(assert (=> b!900753 (= lt!407081 lt!407079)))

(declare-fun lt!407084 () ListLongMap!10791)

(assert (=> b!900753 (= lt!407084 (getCurrentListMapNoExtraKeys!3301 (_keys!10259 thiss!1181) (_values!5474 thiss!1181) (mask!26243 thiss!1181) (extraKeys!5183 thiss!1181) (zeroValue!5287 thiss!1181) (minValue!5287 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5456 thiss!1181)))))

(declare-fun lt!407082 () (_ BitVec 64))

(assert (=> b!900753 (= lt!407082 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407086 () (_ BitVec 64))

(assert (=> b!900753 (= lt!407086 (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!900753 (= lt!407078 (addApplyDifferent!339 lt!407084 lt!407082 (minValue!5287 thiss!1181) lt!407086))))

(assert (=> b!900753 (= (apply!417 (+!2553 lt!407084 (tuple2!12081 lt!407082 (minValue!5287 thiss!1181))) lt!407086) (apply!417 lt!407084 lt!407086))))

(declare-fun b!900754 () Bool)

(declare-fun res!608342 () Bool)

(assert (=> b!900754 (=> (not res!608342) (not e!504245))))

(assert (=> b!900754 (= res!608342 e!504240)))

(declare-fun res!608339 () Bool)

(assert (=> b!900754 (=> res!608339 e!504240)))

(assert (=> b!900754 (= res!608339 (not e!504244))))

(declare-fun res!608337 () Bool)

(assert (=> b!900754 (=> (not res!608337) (not e!504244))))

(assert (=> b!900754 (= res!608337 (bvslt #b00000000000000000000000000000000 (size!25832 (_keys!10259 thiss!1181))))))

(declare-fun bm!40081 () Bool)

(assert (=> bm!40081 (= call!40084 (getCurrentListMapNoExtraKeys!3301 (_keys!10259 thiss!1181) (_values!5474 thiss!1181) (mask!26243 thiss!1181) (extraKeys!5183 thiss!1181) (zeroValue!5287 thiss!1181) (minValue!5287 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5456 thiss!1181)))))

(assert (= (and d!111701 c!95324) b!900746))

(assert (= (and d!111701 (not c!95324)) b!900735))

(assert (= (and b!900735 c!95322) b!900742))

(assert (= (and b!900735 (not c!95322)) b!900749))

(assert (= (and b!900749 c!95319) b!900736))

(assert (= (and b!900749 (not c!95319)) b!900748))

(assert (= (or b!900736 b!900748) bm!40079))

(assert (= (or b!900742 bm!40079) bm!40078))

(assert (= (or b!900742 b!900736) bm!40077))

(assert (= (or b!900746 bm!40078) bm!40081))

(assert (= (or b!900746 bm!40077) bm!40076))

(assert (= (and d!111701 res!608343) b!900744))

(assert (= (and d!111701 c!95323) b!900753))

(assert (= (and d!111701 (not c!95323)) b!900740))

(assert (= (and d!111701 res!608341) b!900754))

(assert (= (and b!900754 res!608337) b!900747))

(assert (= (and b!900754 (not res!608339)) b!900734))

(assert (= (and b!900734 res!608338) b!900752))

(assert (= (and b!900754 res!608342) b!900741))

(assert (= (and b!900741 c!95321) b!900745))

(assert (= (and b!900741 (not c!95321)) b!900739))

(assert (= (and b!900745 res!608340) b!900737))

(assert (= (or b!900745 b!900739) bm!40075))

(assert (= (and b!900741 res!608345) b!900738))

(assert (= (and b!900738 c!95320) b!900743))

(assert (= (and b!900738 (not c!95320)) b!900750))

(assert (= (and b!900743 res!608344) b!900751))

(assert (= (or b!900743 b!900750) bm!40080))

(declare-fun b_lambda!13053 () Bool)

(assert (=> (not b_lambda!13053) (not b!900752)))

(declare-fun t!25306 () Bool)

(declare-fun tb!5215 () Bool)

(assert (=> (and b!900618 (= (defaultEntry!5456 thiss!1181) (defaultEntry!5456 thiss!1181)) t!25306) tb!5215))

(declare-fun result!10201 () Bool)

(assert (=> tb!5215 (= result!10201 tp_is_empty!18387)))

(assert (=> b!900752 t!25306))

(declare-fun b_and!26405 () Bool)

(assert (= b_and!26401 (and (=> t!25306 result!10201) b_and!26405)))

(declare-fun m!837201 () Bool)

(assert (=> bm!40081 m!837201))

(declare-fun m!837203 () Bool)

(assert (=> bm!40075 m!837203))

(assert (=> b!900744 m!837183))

(assert (=> b!900744 m!837183))

(assert (=> b!900744 m!837187))

(declare-fun m!837205 () Bool)

(assert (=> b!900746 m!837205))

(assert (=> b!900734 m!837183))

(assert (=> b!900734 m!837183))

(declare-fun m!837207 () Bool)

(assert (=> b!900734 m!837207))

(assert (=> b!900747 m!837183))

(assert (=> b!900747 m!837183))

(assert (=> b!900747 m!837187))

(declare-fun m!837209 () Bool)

(assert (=> bm!40076 m!837209))

(declare-fun m!837211 () Bool)

(assert (=> b!900737 m!837211))

(declare-fun m!837213 () Bool)

(assert (=> b!900751 m!837213))

(declare-fun m!837215 () Bool)

(assert (=> bm!40080 m!837215))

(declare-fun m!837217 () Bool)

(assert (=> b!900753 m!837217))

(declare-fun m!837219 () Bool)

(assert (=> b!900753 m!837219))

(declare-fun m!837221 () Bool)

(assert (=> b!900753 m!837221))

(declare-fun m!837223 () Bool)

(assert (=> b!900753 m!837223))

(declare-fun m!837225 () Bool)

(assert (=> b!900753 m!837225))

(assert (=> b!900753 m!837183))

(declare-fun m!837227 () Bool)

(assert (=> b!900753 m!837227))

(declare-fun m!837229 () Bool)

(assert (=> b!900753 m!837229))

(assert (=> b!900753 m!837225))

(declare-fun m!837231 () Bool)

(assert (=> b!900753 m!837231))

(declare-fun m!837233 () Bool)

(assert (=> b!900753 m!837233))

(declare-fun m!837235 () Bool)

(assert (=> b!900753 m!837235))

(assert (=> b!900753 m!837235))

(declare-fun m!837237 () Bool)

(assert (=> b!900753 m!837237))

(assert (=> b!900753 m!837201))

(assert (=> b!900753 m!837233))

(declare-fun m!837239 () Bool)

(assert (=> b!900753 m!837239))

(assert (=> b!900753 m!837229))

(declare-fun m!837241 () Bool)

(assert (=> b!900753 m!837241))

(declare-fun m!837243 () Bool)

(assert (=> b!900753 m!837243))

(declare-fun m!837245 () Bool)

(assert (=> b!900753 m!837245))

(assert (=> d!111701 m!837137))

(declare-fun m!837247 () Bool)

(assert (=> b!900752 m!837247))

(assert (=> b!900752 m!837183))

(declare-fun m!837249 () Bool)

(assert (=> b!900752 m!837249))

(declare-fun m!837251 () Bool)

(assert (=> b!900752 m!837251))

(assert (=> b!900752 m!837247))

(declare-fun m!837253 () Bool)

(assert (=> b!900752 m!837253))

(assert (=> b!900752 m!837183))

(assert (=> b!900752 m!837251))

(assert (=> b!900609 d!111701))

(declare-fun d!111703 () Bool)

(declare-fun e!504247 () Bool)

(assert (=> d!111703 e!504247))

(declare-fun res!608346 () Bool)

(assert (=> d!111703 (=> res!608346 e!504247)))

(declare-fun lt!407097 () Bool)

(assert (=> d!111703 (= res!608346 (not lt!407097))))

(declare-fun lt!407094 () Bool)

(assert (=> d!111703 (= lt!407097 lt!407094)))

(declare-fun lt!407096 () Unit!30569)

(declare-fun e!504246 () Unit!30569)

(assert (=> d!111703 (= lt!407096 e!504246)))

(declare-fun c!95325 () Bool)

(assert (=> d!111703 (= c!95325 lt!407094)))

(assert (=> d!111703 (= lt!407094 (containsKey!433 (toList!5411 lt!406991) (select (arr!25372 (_keys!10259 thiss!1181)) (index!38091 lt!406990))))))

(assert (=> d!111703 (= (contains!4419 lt!406991 (select (arr!25372 (_keys!10259 thiss!1181)) (index!38091 lt!406990))) lt!407097)))

(declare-fun b!900757 () Bool)

(declare-fun lt!407095 () Unit!30569)

(assert (=> b!900757 (= e!504246 lt!407095)))

(assert (=> b!900757 (= lt!407095 (lemmaContainsKeyImpliesGetValueByKeyDefined!328 (toList!5411 lt!406991) (select (arr!25372 (_keys!10259 thiss!1181)) (index!38091 lt!406990))))))

(assert (=> b!900757 (isDefined!338 (getValueByKey!463 (toList!5411 lt!406991) (select (arr!25372 (_keys!10259 thiss!1181)) (index!38091 lt!406990))))))

(declare-fun b!900758 () Bool)

(declare-fun Unit!30575 () Unit!30569)

(assert (=> b!900758 (= e!504246 Unit!30575)))

(declare-fun b!900759 () Bool)

(assert (=> b!900759 (= e!504247 (isDefined!338 (getValueByKey!463 (toList!5411 lt!406991) (select (arr!25372 (_keys!10259 thiss!1181)) (index!38091 lt!406990)))))))

(assert (= (and d!111703 c!95325) b!900757))

(assert (= (and d!111703 (not c!95325)) b!900758))

(assert (= (and d!111703 (not res!608346)) b!900759))

(assert (=> d!111703 m!837133))

(declare-fun m!837255 () Bool)

(assert (=> d!111703 m!837255))

(assert (=> b!900757 m!837133))

(declare-fun m!837257 () Bool)

(assert (=> b!900757 m!837257))

(assert (=> b!900757 m!837133))

(declare-fun m!837259 () Bool)

(assert (=> b!900757 m!837259))

(assert (=> b!900757 m!837259))

(declare-fun m!837261 () Bool)

(assert (=> b!900757 m!837261))

(assert (=> b!900759 m!837133))

(assert (=> b!900759 m!837259))

(assert (=> b!900759 m!837259))

(assert (=> b!900759 m!837261))

(assert (=> b!900609 d!111703))

(declare-fun d!111705 () Bool)

(declare-fun res!608351 () Bool)

(declare-fun e!504252 () Bool)

(assert (=> d!111705 (=> res!608351 e!504252)))

(assert (=> d!111705 (= res!608351 (= (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111705 (= (arrayContainsKey!0 (_keys!10259 thiss!1181) key!785 #b00000000000000000000000000000000) e!504252)))

(declare-fun b!900764 () Bool)

(declare-fun e!504253 () Bool)

(assert (=> b!900764 (= e!504252 e!504253)))

(declare-fun res!608352 () Bool)

(assert (=> b!900764 (=> (not res!608352) (not e!504253))))

(assert (=> b!900764 (= res!608352 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25832 (_keys!10259 thiss!1181))))))

(declare-fun b!900765 () Bool)

(assert (=> b!900765 (= e!504253 (arrayContainsKey!0 (_keys!10259 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111705 (not res!608351)) b!900764))

(assert (= (and b!900764 res!608352) b!900765))

(assert (=> d!111705 m!837183))

(declare-fun m!837263 () Bool)

(assert (=> b!900765 m!837263))

(assert (=> b!900609 d!111705))

(declare-fun b!900774 () Bool)

(declare-fun e!504260 () Bool)

(declare-fun call!40087 () Bool)

(assert (=> b!900774 (= e!504260 call!40087)))

(declare-fun b!900775 () Bool)

(declare-fun e!504261 () Bool)

(assert (=> b!900775 (= e!504260 e!504261)))

(declare-fun lt!407105 () (_ BitVec 64))

(assert (=> b!900775 (= lt!407105 (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!407106 () Unit!30569)

(assert (=> b!900775 (= lt!407106 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10259 thiss!1181) lt!407105 #b00000000000000000000000000000000))))

(assert (=> b!900775 (arrayContainsKey!0 (_keys!10259 thiss!1181) lt!407105 #b00000000000000000000000000000000)))

(declare-fun lt!407104 () Unit!30569)

(assert (=> b!900775 (= lt!407104 lt!407106)))

(declare-fun res!608358 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52812 (_ BitVec 32)) SeekEntryResult!8930)

(assert (=> b!900775 (= res!608358 (= (seekEntryOrOpen!0 (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000) (_keys!10259 thiss!1181) (mask!26243 thiss!1181)) (Found!8930 #b00000000000000000000000000000000)))))

(assert (=> b!900775 (=> (not res!608358) (not e!504261))))

(declare-fun d!111707 () Bool)

(declare-fun res!608357 () Bool)

(declare-fun e!504262 () Bool)

(assert (=> d!111707 (=> res!608357 e!504262)))

(assert (=> d!111707 (= res!608357 (bvsge #b00000000000000000000000000000000 (size!25832 (_keys!10259 thiss!1181))))))

(assert (=> d!111707 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10259 thiss!1181) (mask!26243 thiss!1181)) e!504262)))

(declare-fun b!900776 () Bool)

(assert (=> b!900776 (= e!504261 call!40087)))

(declare-fun b!900777 () Bool)

(assert (=> b!900777 (= e!504262 e!504260)))

(declare-fun c!95328 () Bool)

(assert (=> b!900777 (= c!95328 (validKeyInArray!0 (select (arr!25372 (_keys!10259 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!40084 () Bool)

(assert (=> bm!40084 (= call!40087 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10259 thiss!1181) (mask!26243 thiss!1181)))))

(assert (= (and d!111707 (not res!608357)) b!900777))

(assert (= (and b!900777 c!95328) b!900775))

(assert (= (and b!900777 (not c!95328)) b!900774))

(assert (= (and b!900775 res!608358) b!900776))

(assert (= (or b!900776 b!900774) bm!40084))

(assert (=> b!900775 m!837183))

(declare-fun m!837265 () Bool)

(assert (=> b!900775 m!837265))

(declare-fun m!837267 () Bool)

(assert (=> b!900775 m!837267))

(assert (=> b!900775 m!837183))

(declare-fun m!837269 () Bool)

(assert (=> b!900775 m!837269))

(assert (=> b!900777 m!837183))

(assert (=> b!900777 m!837183))

(assert (=> b!900777 m!837187))

(declare-fun m!837271 () Bool)

(assert (=> bm!40084 m!837271))

(assert (=> b!900608 d!111707))

(declare-fun d!111709 () Bool)

(declare-fun e!504265 () Bool)

(assert (=> d!111709 e!504265))

(declare-fun res!608361 () Bool)

(assert (=> d!111709 (=> res!608361 e!504265)))

(declare-fun lt!407112 () SeekEntryResult!8930)

(assert (=> d!111709 (= res!608361 (not ((_ is Found!8930) lt!407112)))))

(assert (=> d!111709 (= lt!407112 (seekEntry!0 key!785 (_keys!10259 thiss!1181) (mask!26243 thiss!1181)))))

(declare-fun lt!407111 () Unit!30569)

(declare-fun choose!1525 (array!52812 array!52814 (_ BitVec 32) (_ BitVec 32) V!29481 V!29481 (_ BitVec 64)) Unit!30569)

(assert (=> d!111709 (= lt!407111 (choose!1525 (_keys!10259 thiss!1181) (_values!5474 thiss!1181) (mask!26243 thiss!1181) (extraKeys!5183 thiss!1181) (zeroValue!5287 thiss!1181) (minValue!5287 thiss!1181) key!785))))

(assert (=> d!111709 (validMask!0 (mask!26243 thiss!1181))))

(assert (=> d!111709 (= (lemmaSeekEntryGivesInRangeIndex!111 (_keys!10259 thiss!1181) (_values!5474 thiss!1181) (mask!26243 thiss!1181) (extraKeys!5183 thiss!1181) (zeroValue!5287 thiss!1181) (minValue!5287 thiss!1181) key!785) lt!407111)))

(declare-fun b!900780 () Bool)

(assert (=> b!900780 (= e!504265 (inRange!0 (index!38091 lt!407112) (mask!26243 thiss!1181)))))

(assert (= (and d!111709 (not res!608361)) b!900780))

(assert (=> d!111709 m!837123))

(declare-fun m!837273 () Bool)

(assert (=> d!111709 m!837273))

(assert (=> d!111709 m!837137))

(declare-fun m!837275 () Bool)

(assert (=> b!900780 m!837275))

(assert (=> b!900617 d!111709))

(declare-fun d!111711 () Bool)

(declare-fun lt!407123 () SeekEntryResult!8930)

(assert (=> d!111711 (and (or ((_ is MissingVacant!8930) lt!407123) (not ((_ is Found!8930) lt!407123)) (and (bvsge (index!38091 lt!407123) #b00000000000000000000000000000000) (bvslt (index!38091 lt!407123) (size!25832 (_keys!10259 thiss!1181))))) (not ((_ is MissingVacant!8930) lt!407123)) (or (not ((_ is Found!8930) lt!407123)) (= (select (arr!25372 (_keys!10259 thiss!1181)) (index!38091 lt!407123)) key!785)))))

(declare-fun e!504274 () SeekEntryResult!8930)

(assert (=> d!111711 (= lt!407123 e!504274)))

(declare-fun c!95335 () Bool)

(declare-fun lt!407121 () SeekEntryResult!8930)

(assert (=> d!111711 (= c!95335 (and ((_ is Intermediate!8930) lt!407121) (undefined!9742 lt!407121)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52812 (_ BitVec 32)) SeekEntryResult!8930)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111711 (= lt!407121 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26243 thiss!1181)) key!785 (_keys!10259 thiss!1181) (mask!26243 thiss!1181)))))

(assert (=> d!111711 (validMask!0 (mask!26243 thiss!1181))))

(assert (=> d!111711 (= (seekEntry!0 key!785 (_keys!10259 thiss!1181) (mask!26243 thiss!1181)) lt!407123)))

(declare-fun b!900793 () Bool)

(assert (=> b!900793 (= e!504274 Undefined!8930)))

(declare-fun b!900794 () Bool)

(declare-fun e!504272 () SeekEntryResult!8930)

(assert (=> b!900794 (= e!504272 (MissingZero!8930 (index!38092 lt!407121)))))

(declare-fun b!900795 () Bool)

(declare-fun c!95336 () Bool)

(declare-fun lt!407124 () (_ BitVec 64))

(assert (=> b!900795 (= c!95336 (= lt!407124 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!504273 () SeekEntryResult!8930)

(assert (=> b!900795 (= e!504273 e!504272)))

(declare-fun b!900796 () Bool)

(declare-fun lt!407122 () SeekEntryResult!8930)

(assert (=> b!900796 (= e!504272 (ite ((_ is MissingVacant!8930) lt!407122) (MissingZero!8930 (index!38093 lt!407122)) lt!407122))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52812 (_ BitVec 32)) SeekEntryResult!8930)

(assert (=> b!900796 (= lt!407122 (seekKeyOrZeroReturnVacant!0 (x!76728 lt!407121) (index!38092 lt!407121) (index!38092 lt!407121) key!785 (_keys!10259 thiss!1181) (mask!26243 thiss!1181)))))

(declare-fun b!900797 () Bool)

(assert (=> b!900797 (= e!504273 (Found!8930 (index!38092 lt!407121)))))

(declare-fun b!900798 () Bool)

(assert (=> b!900798 (= e!504274 e!504273)))

(assert (=> b!900798 (= lt!407124 (select (arr!25372 (_keys!10259 thiss!1181)) (index!38092 lt!407121)))))

(declare-fun c!95337 () Bool)

(assert (=> b!900798 (= c!95337 (= lt!407124 key!785))))

(assert (= (and d!111711 c!95335) b!900793))

(assert (= (and d!111711 (not c!95335)) b!900798))

(assert (= (and b!900798 c!95337) b!900797))

(assert (= (and b!900798 (not c!95337)) b!900795))

(assert (= (and b!900795 c!95336) b!900794))

(assert (= (and b!900795 (not c!95336)) b!900796))

(declare-fun m!837277 () Bool)

(assert (=> d!111711 m!837277))

(declare-fun m!837279 () Bool)

(assert (=> d!111711 m!837279))

(assert (=> d!111711 m!837279))

(declare-fun m!837281 () Bool)

(assert (=> d!111711 m!837281))

(assert (=> d!111711 m!837137))

(declare-fun m!837283 () Bool)

(assert (=> b!900796 m!837283))

(declare-fun m!837285 () Bool)

(assert (=> b!900798 m!837285))

(assert (=> b!900617 d!111711))

(declare-fun d!111713 () Bool)

(assert (=> d!111713 (= (inRange!0 (index!38091 lt!406990) (mask!26243 thiss!1181)) (and (bvsge (index!38091 lt!406990) #b00000000000000000000000000000000) (bvslt (index!38091 lt!406990) (bvadd (mask!26243 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!900612 d!111713))

(declare-fun mapNonEmpty!29266 () Bool)

(declare-fun mapRes!29266 () Bool)

(declare-fun tp!56281 () Bool)

(declare-fun e!504280 () Bool)

(assert (=> mapNonEmpty!29266 (= mapRes!29266 (and tp!56281 e!504280))))

(declare-fun mapRest!29266 () (Array (_ BitVec 32) ValueCell!8712))

(declare-fun mapValue!29266 () ValueCell!8712)

(declare-fun mapKey!29266 () (_ BitVec 32))

(assert (=> mapNonEmpty!29266 (= mapRest!29260 (store mapRest!29266 mapKey!29266 mapValue!29266))))

(declare-fun mapIsEmpty!29266 () Bool)

(assert (=> mapIsEmpty!29266 mapRes!29266))

(declare-fun condMapEmpty!29266 () Bool)

(declare-fun mapDefault!29266 () ValueCell!8712)

(assert (=> mapNonEmpty!29260 (= condMapEmpty!29266 (= mapRest!29260 ((as const (Array (_ BitVec 32) ValueCell!8712)) mapDefault!29266)))))

(declare-fun e!504279 () Bool)

(assert (=> mapNonEmpty!29260 (= tp!56272 (and e!504279 mapRes!29266))))

(declare-fun b!900806 () Bool)

(assert (=> b!900806 (= e!504279 tp_is_empty!18387)))

(declare-fun b!900805 () Bool)

(assert (=> b!900805 (= e!504280 tp_is_empty!18387)))

(assert (= (and mapNonEmpty!29260 condMapEmpty!29266) mapIsEmpty!29266))

(assert (= (and mapNonEmpty!29260 (not condMapEmpty!29266)) mapNonEmpty!29266))

(assert (= (and mapNonEmpty!29266 ((_ is ValueCellFull!8712) mapValue!29266)) b!900805))

(assert (= (and mapNonEmpty!29260 ((_ is ValueCellFull!8712) mapDefault!29266)) b!900806))

(declare-fun m!837287 () Bool)

(assert (=> mapNonEmpty!29266 m!837287))

(declare-fun b_lambda!13055 () Bool)

(assert (= b_lambda!13053 (or (and b!900618 b_free!16059) b_lambda!13055)))

(check-sat (not b!900734) (not b!900662) b_and!26405 (not b!900757) (not b!900691) (not mapNonEmpty!29266) (not bm!40081) (not b!900687) (not b!900780) (not d!111701) (not d!111699) (not b!900777) (not bm!40060) (not b!900678) (not b!900796) tp_is_empty!18387 (not bm!40076) (not b!900759) (not b!900677) (not b!900752) (not b!900686) (not d!111685) (not b!900765) (not b_next!16059) (not bm!40080) (not b!900775) (not b!900744) (not d!111697) (not d!111711) (not b!900688) (not b!900737) (not d!111703) (not bm!40084) (not b!900676) (not d!111709) (not b_lambda!13055) (not b!900751) (not d!111693) (not b!900746) (not bm!40075) (not b!900747) (not b!900753) (not b!900664))
(check-sat b_and!26405 (not b_next!16059))
