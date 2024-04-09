; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77184 () Bool)

(assert start!77184)

(declare-fun b!900359 () Bool)

(declare-fun b_free!16053 () Bool)

(declare-fun b_next!16053 () Bool)

(assert (=> b!900359 (= b_free!16053 (not b_next!16053))))

(declare-fun tp!56251 () Bool)

(declare-fun b_and!26393 () Bool)

(assert (=> b!900359 (= tp!56251 b_and!26393)))

(declare-fun b!900356 () Bool)

(declare-fun e!503972 () Bool)

(declare-datatypes ((SeekEntryResult!8927 0))(
  ( (MissingZero!8927 (index!38078 (_ BitVec 32))) (Found!8927 (index!38079 (_ BitVec 32))) (Intermediate!8927 (undefined!9739 Bool) (index!38080 (_ BitVec 32)) (x!76707 (_ BitVec 32))) (Undefined!8927) (MissingVacant!8927 (index!38081 (_ BitVec 32))) )
))
(declare-fun lt!406840 () SeekEntryResult!8927)

(declare-datatypes ((array!52798 0))(
  ( (array!52799 (arr!25366 (Array (_ BitVec 32) (_ BitVec 64))) (size!25826 (_ BitVec 32))) )
))
(declare-datatypes ((V!29473 0))(
  ( (V!29474 (val!9241 Int)) )
))
(declare-datatypes ((ValueCell!8709 0))(
  ( (ValueCellFull!8709 (v!11735 V!29473)) (EmptyCell!8709) )
))
(declare-datatypes ((array!52800 0))(
  ( (array!52801 (arr!25367 (Array (_ BitVec 32) ValueCell!8709)) (size!25827 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4434 0))(
  ( (LongMapFixedSize!4435 (defaultEntry!5451 Int) (mask!26231 (_ BitVec 32)) (extraKeys!5177 (_ BitVec 32)) (zeroValue!5281 V!29473) (minValue!5281 V!29473) (_size!2272 (_ BitVec 32)) (_keys!10251 array!52798) (_values!5468 array!52800) (_vacant!2272 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4434)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!900356 (= e!503972 (inRange!0 (index!38079 lt!406840) (mask!26231 thiss!1181)))))

(declare-fun b!900357 () Bool)

(declare-fun res!608132 () Bool)

(declare-fun e!503974 () Bool)

(assert (=> b!900357 (=> res!608132 e!503974)))

(assert (=> b!900357 (= res!608132 (or (not (= (size!25827 (_values!5468 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26231 thiss!1181)))) (not (= (size!25826 (_keys!10251 thiss!1181)) (size!25827 (_values!5468 thiss!1181)))) (bvslt (mask!26231 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5177 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5177 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!900358 () Bool)

(declare-fun e!503973 () Bool)

(declare-fun tp_is_empty!18381 () Bool)

(assert (=> b!900358 (= e!503973 tp_is_empty!18381)))

(declare-fun e!503975 () Bool)

(declare-fun e!503976 () Bool)

(declare-fun array_inv!19878 (array!52798) Bool)

(declare-fun array_inv!19879 (array!52800) Bool)

(assert (=> b!900359 (= e!503976 (and tp!56251 tp_is_empty!18381 (array_inv!19878 (_keys!10251 thiss!1181)) (array_inv!19879 (_values!5468 thiss!1181)) e!503975))))

(declare-fun res!608131 () Bool)

(declare-fun e!503970 () Bool)

(assert (=> start!77184 (=> (not res!608131) (not e!503970))))

(declare-fun valid!1688 (LongMapFixedSize!4434) Bool)

(assert (=> start!77184 (= res!608131 (valid!1688 thiss!1181))))

(assert (=> start!77184 e!503970))

(assert (=> start!77184 e!503976))

(assert (=> start!77184 true))

(declare-fun b!900360 () Bool)

(declare-fun e!503977 () Bool)

(assert (=> b!900360 (= e!503977 tp_is_empty!18381)))

(declare-fun b!900361 () Bool)

(declare-fun res!608133 () Bool)

(assert (=> b!900361 (=> (not res!608133) (not e!503970))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!900361 (= res!608133 (not (= key!785 (bvneg key!785))))))

(declare-fun b!900362 () Bool)

(declare-fun e!503971 () Bool)

(assert (=> b!900362 (= e!503971 e!503974)))

(declare-fun res!608135 () Bool)

(assert (=> b!900362 (=> res!608135 e!503974)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!900362 (= res!608135 (not (validMask!0 (mask!26231 thiss!1181))))))

(declare-datatypes ((tuple2!12074 0))(
  ( (tuple2!12075 (_1!6047 (_ BitVec 64)) (_2!6047 V!29473)) )
))
(declare-datatypes ((List!17933 0))(
  ( (Nil!17930) (Cons!17929 (h!19075 tuple2!12074) (t!25294 List!17933)) )
))
(declare-datatypes ((ListLongMap!10785 0))(
  ( (ListLongMap!10786 (toList!5408 List!17933)) )
))
(declare-fun contains!4415 (ListLongMap!10785 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2651 (array!52798 array!52800 (_ BitVec 32) (_ BitVec 32) V!29473 V!29473 (_ BitVec 32) Int) ListLongMap!10785)

(assert (=> b!900362 (contains!4415 (getCurrentListMap!2651 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5451 thiss!1181)) (select (arr!25366 (_keys!10251 thiss!1181)) (index!38079 lt!406840)))))

(declare-datatypes ((Unit!30561 0))(
  ( (Unit!30562) )
))
(declare-fun lt!406841 () Unit!30561)

(declare-fun lemmaValidKeyInArrayIsInListMap!244 (array!52798 array!52800 (_ BitVec 32) (_ BitVec 32) V!29473 V!29473 (_ BitVec 32) Int) Unit!30561)

(assert (=> b!900362 (= lt!406841 (lemmaValidKeyInArrayIsInListMap!244 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) (index!38079 lt!406840) (defaultEntry!5451 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52798 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!900362 (arrayContainsKey!0 (_keys!10251 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!406838 () Unit!30561)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52798 (_ BitVec 64) (_ BitVec 32)) Unit!30561)

(assert (=> b!900362 (= lt!406838 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10251 thiss!1181) key!785 (index!38079 lt!406840)))))

(declare-fun b!900363 () Bool)

(declare-fun res!608129 () Bool)

(assert (=> b!900363 (=> res!608129 e!503974)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52798 (_ BitVec 32)) Bool)

(assert (=> b!900363 (= res!608129 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10251 thiss!1181) (mask!26231 thiss!1181))))))

(declare-fun mapNonEmpty!29248 () Bool)

(declare-fun mapRes!29248 () Bool)

(declare-fun tp!56250 () Bool)

(assert (=> mapNonEmpty!29248 (= mapRes!29248 (and tp!56250 e!503977))))

(declare-fun mapKey!29248 () (_ BitVec 32))

(declare-fun mapRest!29248 () (Array (_ BitVec 32) ValueCell!8709))

(declare-fun mapValue!29248 () ValueCell!8709)

(assert (=> mapNonEmpty!29248 (= (arr!25367 (_values!5468 thiss!1181)) (store mapRest!29248 mapKey!29248 mapValue!29248))))

(declare-fun mapIsEmpty!29248 () Bool)

(assert (=> mapIsEmpty!29248 mapRes!29248))

(declare-fun b!900364 () Bool)

(declare-datatypes ((List!17934 0))(
  ( (Nil!17931) (Cons!17930 (h!19076 (_ BitVec 64)) (t!25295 List!17934)) )
))
(declare-fun arrayNoDuplicates!0 (array!52798 (_ BitVec 32) List!17934) Bool)

(assert (=> b!900364 (= e!503974 (arrayNoDuplicates!0 (_keys!10251 thiss!1181) #b00000000000000000000000000000000 Nil!17931))))

(declare-fun b!900365 () Bool)

(assert (=> b!900365 (= e!503975 (and e!503973 mapRes!29248))))

(declare-fun condMapEmpty!29248 () Bool)

(declare-fun mapDefault!29248 () ValueCell!8709)

(assert (=> b!900365 (= condMapEmpty!29248 (= (arr!25367 (_values!5468 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8709)) mapDefault!29248)))))

(declare-fun b!900366 () Bool)

(assert (=> b!900366 (= e!503970 (not e!503971))))

(declare-fun res!608130 () Bool)

(assert (=> b!900366 (=> res!608130 e!503971)))

(get-info :version)

(assert (=> b!900366 (= res!608130 (not ((_ is Found!8927) lt!406840)))))

(assert (=> b!900366 e!503972))

(declare-fun res!608134 () Bool)

(assert (=> b!900366 (=> res!608134 e!503972)))

(assert (=> b!900366 (= res!608134 (not ((_ is Found!8927) lt!406840)))))

(declare-fun lt!406839 () Unit!30561)

(declare-fun lemmaSeekEntryGivesInRangeIndex!108 (array!52798 array!52800 (_ BitVec 32) (_ BitVec 32) V!29473 V!29473 (_ BitVec 64)) Unit!30561)

(assert (=> b!900366 (= lt!406839 (lemmaSeekEntryGivesInRangeIndex!108 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52798 (_ BitVec 32)) SeekEntryResult!8927)

(assert (=> b!900366 (= lt!406840 (seekEntry!0 key!785 (_keys!10251 thiss!1181) (mask!26231 thiss!1181)))))

(assert (= (and start!77184 res!608131) b!900361))

(assert (= (and b!900361 res!608133) b!900366))

(assert (= (and b!900366 (not res!608134)) b!900356))

(assert (= (and b!900366 (not res!608130)) b!900362))

(assert (= (and b!900362 (not res!608135)) b!900357))

(assert (= (and b!900357 (not res!608132)) b!900363))

(assert (= (and b!900363 (not res!608129)) b!900364))

(assert (= (and b!900365 condMapEmpty!29248) mapIsEmpty!29248))

(assert (= (and b!900365 (not condMapEmpty!29248)) mapNonEmpty!29248))

(assert (= (and mapNonEmpty!29248 ((_ is ValueCellFull!8709) mapValue!29248)) b!900360))

(assert (= (and b!900365 ((_ is ValueCellFull!8709) mapDefault!29248)) b!900358))

(assert (= b!900359 b!900365))

(assert (= start!77184 b!900359))

(declare-fun m!836905 () Bool)

(assert (=> b!900366 m!836905))

(declare-fun m!836907 () Bool)

(assert (=> b!900366 m!836907))

(declare-fun m!836909 () Bool)

(assert (=> b!900359 m!836909))

(declare-fun m!836911 () Bool)

(assert (=> b!900359 m!836911))

(declare-fun m!836913 () Bool)

(assert (=> start!77184 m!836913))

(declare-fun m!836915 () Bool)

(assert (=> mapNonEmpty!29248 m!836915))

(declare-fun m!836917 () Bool)

(assert (=> b!900364 m!836917))

(declare-fun m!836919 () Bool)

(assert (=> b!900362 m!836919))

(declare-fun m!836921 () Bool)

(assert (=> b!900362 m!836921))

(declare-fun m!836923 () Bool)

(assert (=> b!900362 m!836923))

(declare-fun m!836925 () Bool)

(assert (=> b!900362 m!836925))

(assert (=> b!900362 m!836925))

(assert (=> b!900362 m!836919))

(declare-fun m!836927 () Bool)

(assert (=> b!900362 m!836927))

(declare-fun m!836929 () Bool)

(assert (=> b!900362 m!836929))

(declare-fun m!836931 () Bool)

(assert (=> b!900362 m!836931))

(declare-fun m!836933 () Bool)

(assert (=> b!900356 m!836933))

(declare-fun m!836935 () Bool)

(assert (=> b!900363 m!836935))

(check-sat b_and!26393 (not b!900356) (not b!900362) (not b!900366) (not mapNonEmpty!29248) (not b!900359) (not start!77184) (not b!900363) (not b!900364) tp_is_empty!18381 (not b_next!16053))
(check-sat b_and!26393 (not b_next!16053))
(get-model)

(declare-fun d!111655 () Bool)

(declare-fun e!504011 () Bool)

(assert (=> d!111655 e!504011))

(declare-fun res!608159 () Bool)

(assert (=> d!111655 (=> res!608159 e!504011)))

(declare-fun lt!406865 () Bool)

(assert (=> d!111655 (= res!608159 (not lt!406865))))

(declare-fun lt!406862 () Bool)

(assert (=> d!111655 (= lt!406865 lt!406862)))

(declare-fun lt!406864 () Unit!30561)

(declare-fun e!504010 () Unit!30561)

(assert (=> d!111655 (= lt!406864 e!504010)))

(declare-fun c!95267 () Bool)

(assert (=> d!111655 (= c!95267 lt!406862)))

(declare-fun containsKey!432 (List!17933 (_ BitVec 64)) Bool)

(assert (=> d!111655 (= lt!406862 (containsKey!432 (toList!5408 (getCurrentListMap!2651 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5451 thiss!1181))) (select (arr!25366 (_keys!10251 thiss!1181)) (index!38079 lt!406840))))))

(assert (=> d!111655 (= (contains!4415 (getCurrentListMap!2651 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5451 thiss!1181)) (select (arr!25366 (_keys!10251 thiss!1181)) (index!38079 lt!406840))) lt!406865)))

(declare-fun b!900406 () Bool)

(declare-fun lt!406863 () Unit!30561)

(assert (=> b!900406 (= e!504010 lt!406863)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!327 (List!17933 (_ BitVec 64)) Unit!30561)

(assert (=> b!900406 (= lt!406863 (lemmaContainsKeyImpliesGetValueByKeyDefined!327 (toList!5408 (getCurrentListMap!2651 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5451 thiss!1181))) (select (arr!25366 (_keys!10251 thiss!1181)) (index!38079 lt!406840))))))

(declare-datatypes ((Option!468 0))(
  ( (Some!467 (v!11737 V!29473)) (None!466) )
))
(declare-fun isDefined!337 (Option!468) Bool)

(declare-fun getValueByKey!462 (List!17933 (_ BitVec 64)) Option!468)

(assert (=> b!900406 (isDefined!337 (getValueByKey!462 (toList!5408 (getCurrentListMap!2651 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5451 thiss!1181))) (select (arr!25366 (_keys!10251 thiss!1181)) (index!38079 lt!406840))))))

(declare-fun b!900407 () Bool)

(declare-fun Unit!30565 () Unit!30561)

(assert (=> b!900407 (= e!504010 Unit!30565)))

(declare-fun b!900408 () Bool)

(assert (=> b!900408 (= e!504011 (isDefined!337 (getValueByKey!462 (toList!5408 (getCurrentListMap!2651 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5451 thiss!1181))) (select (arr!25366 (_keys!10251 thiss!1181)) (index!38079 lt!406840)))))))

(assert (= (and d!111655 c!95267) b!900406))

(assert (= (and d!111655 (not c!95267)) b!900407))

(assert (= (and d!111655 (not res!608159)) b!900408))

(assert (=> d!111655 m!836919))

(declare-fun m!836969 () Bool)

(assert (=> d!111655 m!836969))

(assert (=> b!900406 m!836919))

(declare-fun m!836971 () Bool)

(assert (=> b!900406 m!836971))

(assert (=> b!900406 m!836919))

(declare-fun m!836973 () Bool)

(assert (=> b!900406 m!836973))

(assert (=> b!900406 m!836973))

(declare-fun m!836975 () Bool)

(assert (=> b!900406 m!836975))

(assert (=> b!900408 m!836919))

(assert (=> b!900408 m!836973))

(assert (=> b!900408 m!836973))

(assert (=> b!900408 m!836975))

(assert (=> b!900362 d!111655))

(declare-fun d!111657 () Bool)

(assert (=> d!111657 (= (validMask!0 (mask!26231 thiss!1181)) (and (or (= (mask!26231 thiss!1181) #b00000000000000000000000000000111) (= (mask!26231 thiss!1181) #b00000000000000000000000000001111) (= (mask!26231 thiss!1181) #b00000000000000000000000000011111) (= (mask!26231 thiss!1181) #b00000000000000000000000000111111) (= (mask!26231 thiss!1181) #b00000000000000000000000001111111) (= (mask!26231 thiss!1181) #b00000000000000000000000011111111) (= (mask!26231 thiss!1181) #b00000000000000000000000111111111) (= (mask!26231 thiss!1181) #b00000000000000000000001111111111) (= (mask!26231 thiss!1181) #b00000000000000000000011111111111) (= (mask!26231 thiss!1181) #b00000000000000000000111111111111) (= (mask!26231 thiss!1181) #b00000000000000000001111111111111) (= (mask!26231 thiss!1181) #b00000000000000000011111111111111) (= (mask!26231 thiss!1181) #b00000000000000000111111111111111) (= (mask!26231 thiss!1181) #b00000000000000001111111111111111) (= (mask!26231 thiss!1181) #b00000000000000011111111111111111) (= (mask!26231 thiss!1181) #b00000000000000111111111111111111) (= (mask!26231 thiss!1181) #b00000000000001111111111111111111) (= (mask!26231 thiss!1181) #b00000000000011111111111111111111) (= (mask!26231 thiss!1181) #b00000000000111111111111111111111) (= (mask!26231 thiss!1181) #b00000000001111111111111111111111) (= (mask!26231 thiss!1181) #b00000000011111111111111111111111) (= (mask!26231 thiss!1181) #b00000000111111111111111111111111) (= (mask!26231 thiss!1181) #b00000001111111111111111111111111) (= (mask!26231 thiss!1181) #b00000011111111111111111111111111) (= (mask!26231 thiss!1181) #b00000111111111111111111111111111) (= (mask!26231 thiss!1181) #b00001111111111111111111111111111) (= (mask!26231 thiss!1181) #b00011111111111111111111111111111) (= (mask!26231 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26231 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!900362 d!111657))

(declare-fun d!111659 () Bool)

(declare-fun e!504014 () Bool)

(assert (=> d!111659 e!504014))

(declare-fun res!608162 () Bool)

(assert (=> d!111659 (=> (not res!608162) (not e!504014))))

(assert (=> d!111659 (= res!608162 (and (bvsge (index!38079 lt!406840) #b00000000000000000000000000000000) (bvslt (index!38079 lt!406840) (size!25826 (_keys!10251 thiss!1181)))))))

(declare-fun lt!406868 () Unit!30561)

(declare-fun choose!1522 (array!52798 array!52800 (_ BitVec 32) (_ BitVec 32) V!29473 V!29473 (_ BitVec 32) Int) Unit!30561)

(assert (=> d!111659 (= lt!406868 (choose!1522 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) (index!38079 lt!406840) (defaultEntry!5451 thiss!1181)))))

(assert (=> d!111659 (validMask!0 (mask!26231 thiss!1181))))

(assert (=> d!111659 (= (lemmaValidKeyInArrayIsInListMap!244 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) (index!38079 lt!406840) (defaultEntry!5451 thiss!1181)) lt!406868)))

(declare-fun b!900411 () Bool)

(assert (=> b!900411 (= e!504014 (contains!4415 (getCurrentListMap!2651 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5451 thiss!1181)) (select (arr!25366 (_keys!10251 thiss!1181)) (index!38079 lt!406840))))))

(assert (= (and d!111659 res!608162) b!900411))

(declare-fun m!836977 () Bool)

(assert (=> d!111659 m!836977))

(assert (=> d!111659 m!836923))

(assert (=> b!900411 m!836925))

(assert (=> b!900411 m!836919))

(assert (=> b!900411 m!836925))

(assert (=> b!900411 m!836919))

(assert (=> b!900411 m!836927))

(assert (=> b!900362 d!111659))

(declare-fun d!111661 () Bool)

(declare-fun res!608167 () Bool)

(declare-fun e!504019 () Bool)

(assert (=> d!111661 (=> res!608167 e!504019)))

(assert (=> d!111661 (= res!608167 (= (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111661 (= (arrayContainsKey!0 (_keys!10251 thiss!1181) key!785 #b00000000000000000000000000000000) e!504019)))

(declare-fun b!900416 () Bool)

(declare-fun e!504020 () Bool)

(assert (=> b!900416 (= e!504019 e!504020)))

(declare-fun res!608168 () Bool)

(assert (=> b!900416 (=> (not res!608168) (not e!504020))))

(assert (=> b!900416 (= res!608168 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25826 (_keys!10251 thiss!1181))))))

(declare-fun b!900417 () Bool)

(assert (=> b!900417 (= e!504020 (arrayContainsKey!0 (_keys!10251 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111661 (not res!608167)) b!900416))

(assert (= (and b!900416 res!608168) b!900417))

(declare-fun m!836979 () Bool)

(assert (=> d!111661 m!836979))

(declare-fun m!836981 () Bool)

(assert (=> b!900417 m!836981))

(assert (=> b!900362 d!111661))

(declare-fun bm!40045 () Bool)

(declare-fun call!40050 () ListLongMap!10785)

(declare-fun call!40052 () ListLongMap!10785)

(assert (=> bm!40045 (= call!40050 call!40052)))

(declare-fun b!900460 () Bool)

(declare-fun e!504053 () ListLongMap!10785)

(declare-fun call!40048 () ListLongMap!10785)

(assert (=> b!900460 (= e!504053 call!40048)))

(declare-fun bm!40046 () Bool)

(declare-fun call!40049 () Bool)

(declare-fun lt!406932 () ListLongMap!10785)

(assert (=> bm!40046 (= call!40049 (contains!4415 lt!406932 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!900461 () Bool)

(declare-fun e!504049 () Unit!30561)

(declare-fun Unit!30566 () Unit!30561)

(assert (=> b!900461 (= e!504049 Unit!30566)))

(declare-fun b!900462 () Bool)

(declare-fun e!504054 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!900462 (= e!504054 (validKeyInArray!0 (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!900463 () Bool)

(declare-fun e!504051 () ListLongMap!10785)

(assert (=> b!900463 (= e!504051 call!40048)))

(declare-fun bm!40047 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3300 (array!52798 array!52800 (_ BitVec 32) (_ BitVec 32) V!29473 V!29473 (_ BitVec 32) Int) ListLongMap!10785)

(assert (=> bm!40047 (= call!40052 (getCurrentListMapNoExtraKeys!3300 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5451 thiss!1181)))))

(declare-fun b!900464 () Bool)

(declare-fun e!504050 () Bool)

(assert (=> b!900464 (= e!504050 (not call!40049))))

(declare-fun b!900465 () Bool)

(declare-fun e!504047 () Bool)

(declare-fun apply!416 (ListLongMap!10785 (_ BitVec 64)) V!29473)

(declare-fun get!13357 (ValueCell!8709 V!29473) V!29473)

(declare-fun dynLambda!1311 (Int (_ BitVec 64)) V!29473)

(assert (=> b!900465 (= e!504047 (= (apply!416 lt!406932 (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000)) (get!13357 (select (arr!25367 (_values!5468 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1311 (defaultEntry!5451 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!900465 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25827 (_values!5468 thiss!1181))))))

(assert (=> b!900465 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25826 (_keys!10251 thiss!1181))))))

(declare-fun c!95280 () Bool)

(declare-fun c!95281 () Bool)

(declare-fun call!40053 () ListLongMap!10785)

(declare-fun call!40051 () ListLongMap!10785)

(declare-fun bm!40048 () Bool)

(declare-fun +!2552 (ListLongMap!10785 tuple2!12074) ListLongMap!10785)

(assert (=> bm!40048 (= call!40053 (+!2552 (ite c!95281 call!40052 (ite c!95280 call!40050 call!40051)) (ite (or c!95281 c!95280) (tuple2!12075 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5281 thiss!1181)) (tuple2!12075 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5281 thiss!1181)))))))

(declare-fun b!900466 () Bool)

(declare-fun e!504059 () Bool)

(assert (=> b!900466 (= e!504059 e!504050)))

(declare-fun c!95283 () Bool)

(assert (=> b!900466 (= c!95283 (not (= (bvand (extraKeys!5177 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!900467 () Bool)

(assert (=> b!900467 (= e!504053 call!40051)))

(declare-fun b!900468 () Bool)

(declare-fun lt!406925 () Unit!30561)

(assert (=> b!900468 (= e!504049 lt!406925)))

(declare-fun lt!406916 () ListLongMap!10785)

(assert (=> b!900468 (= lt!406916 (getCurrentListMapNoExtraKeys!3300 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5451 thiss!1181)))))

(declare-fun lt!406914 () (_ BitVec 64))

(assert (=> b!900468 (= lt!406914 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406927 () (_ BitVec 64))

(assert (=> b!900468 (= lt!406927 (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406928 () Unit!30561)

(declare-fun addStillContains!338 (ListLongMap!10785 (_ BitVec 64) V!29473 (_ BitVec 64)) Unit!30561)

(assert (=> b!900468 (= lt!406928 (addStillContains!338 lt!406916 lt!406914 (zeroValue!5281 thiss!1181) lt!406927))))

(assert (=> b!900468 (contains!4415 (+!2552 lt!406916 (tuple2!12075 lt!406914 (zeroValue!5281 thiss!1181))) lt!406927)))

(declare-fun lt!406923 () Unit!30561)

(assert (=> b!900468 (= lt!406923 lt!406928)))

(declare-fun lt!406913 () ListLongMap!10785)

(assert (=> b!900468 (= lt!406913 (getCurrentListMapNoExtraKeys!3300 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5451 thiss!1181)))))

(declare-fun lt!406926 () (_ BitVec 64))

(assert (=> b!900468 (= lt!406926 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406921 () (_ BitVec 64))

(assert (=> b!900468 (= lt!406921 (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406930 () Unit!30561)

(declare-fun addApplyDifferent!338 (ListLongMap!10785 (_ BitVec 64) V!29473 (_ BitVec 64)) Unit!30561)

(assert (=> b!900468 (= lt!406930 (addApplyDifferent!338 lt!406913 lt!406926 (minValue!5281 thiss!1181) lt!406921))))

(assert (=> b!900468 (= (apply!416 (+!2552 lt!406913 (tuple2!12075 lt!406926 (minValue!5281 thiss!1181))) lt!406921) (apply!416 lt!406913 lt!406921))))

(declare-fun lt!406917 () Unit!30561)

(assert (=> b!900468 (= lt!406917 lt!406930)))

(declare-fun lt!406934 () ListLongMap!10785)

(assert (=> b!900468 (= lt!406934 (getCurrentListMapNoExtraKeys!3300 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5451 thiss!1181)))))

(declare-fun lt!406931 () (_ BitVec 64))

(assert (=> b!900468 (= lt!406931 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406929 () (_ BitVec 64))

(assert (=> b!900468 (= lt!406929 (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406918 () Unit!30561)

(assert (=> b!900468 (= lt!406918 (addApplyDifferent!338 lt!406934 lt!406931 (zeroValue!5281 thiss!1181) lt!406929))))

(assert (=> b!900468 (= (apply!416 (+!2552 lt!406934 (tuple2!12075 lt!406931 (zeroValue!5281 thiss!1181))) lt!406929) (apply!416 lt!406934 lt!406929))))

(declare-fun lt!406920 () Unit!30561)

(assert (=> b!900468 (= lt!406920 lt!406918)))

(declare-fun lt!406922 () ListLongMap!10785)

(assert (=> b!900468 (= lt!406922 (getCurrentListMapNoExtraKeys!3300 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5451 thiss!1181)))))

(declare-fun lt!406924 () (_ BitVec 64))

(assert (=> b!900468 (= lt!406924 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406933 () (_ BitVec 64))

(assert (=> b!900468 (= lt!406933 (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!900468 (= lt!406925 (addApplyDifferent!338 lt!406922 lt!406924 (minValue!5281 thiss!1181) lt!406933))))

(assert (=> b!900468 (= (apply!416 (+!2552 lt!406922 (tuple2!12075 lt!406924 (minValue!5281 thiss!1181))) lt!406933) (apply!416 lt!406922 lt!406933))))

(declare-fun b!900469 () Bool)

(declare-fun e!504057 () Bool)

(assert (=> b!900469 (= e!504057 e!504047)))

(declare-fun res!608190 () Bool)

(assert (=> b!900469 (=> (not res!608190) (not e!504047))))

(assert (=> b!900469 (= res!608190 (contains!4415 lt!406932 (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!900469 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25826 (_keys!10251 thiss!1181))))))

(declare-fun bm!40049 () Bool)

(assert (=> bm!40049 (= call!40048 call!40053)))

(declare-fun b!900470 () Bool)

(declare-fun e!504055 () ListLongMap!10785)

(assert (=> b!900470 (= e!504055 (+!2552 call!40053 (tuple2!12075 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5281 thiss!1181))))))

(declare-fun d!111663 () Bool)

(assert (=> d!111663 e!504059))

(declare-fun res!608194 () Bool)

(assert (=> d!111663 (=> (not res!608194) (not e!504059))))

(assert (=> d!111663 (= res!608194 (or (bvsge #b00000000000000000000000000000000 (size!25826 (_keys!10251 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25826 (_keys!10251 thiss!1181))))))))

(declare-fun lt!406915 () ListLongMap!10785)

(assert (=> d!111663 (= lt!406932 lt!406915)))

(declare-fun lt!406919 () Unit!30561)

(assert (=> d!111663 (= lt!406919 e!504049)))

(declare-fun c!95284 () Bool)

(declare-fun e!504056 () Bool)

(assert (=> d!111663 (= c!95284 e!504056)))

(declare-fun res!608193 () Bool)

(assert (=> d!111663 (=> (not res!608193) (not e!504056))))

(assert (=> d!111663 (= res!608193 (bvslt #b00000000000000000000000000000000 (size!25826 (_keys!10251 thiss!1181))))))

(assert (=> d!111663 (= lt!406915 e!504055)))

(assert (=> d!111663 (= c!95281 (and (not (= (bvand (extraKeys!5177 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5177 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!111663 (validMask!0 (mask!26231 thiss!1181))))

(assert (=> d!111663 (= (getCurrentListMap!2651 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5451 thiss!1181)) lt!406932)))

(declare-fun b!900471 () Bool)

(declare-fun e!504052 () Bool)

(assert (=> b!900471 (= e!504050 e!504052)))

(declare-fun res!608191 () Bool)

(assert (=> b!900471 (= res!608191 call!40049)))

(assert (=> b!900471 (=> (not res!608191) (not e!504052))))

(declare-fun b!900472 () Bool)

(declare-fun e!504048 () Bool)

(declare-fun e!504058 () Bool)

(assert (=> b!900472 (= e!504048 e!504058)))

(declare-fun res!608192 () Bool)

(declare-fun call!40054 () Bool)

(assert (=> b!900472 (= res!608192 call!40054)))

(assert (=> b!900472 (=> (not res!608192) (not e!504058))))

(declare-fun b!900473 () Bool)

(assert (=> b!900473 (= e!504055 e!504051)))

(assert (=> b!900473 (= c!95280 (and (not (= (bvand (extraKeys!5177 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5177 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!900474 () Bool)

(assert (=> b!900474 (= e!504048 (not call!40054))))

(declare-fun b!900475 () Bool)

(declare-fun c!95285 () Bool)

(assert (=> b!900475 (= c!95285 (and (not (= (bvand (extraKeys!5177 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5177 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!900475 (= e!504051 e!504053)))

(declare-fun b!900476 () Bool)

(declare-fun res!608187 () Bool)

(assert (=> b!900476 (=> (not res!608187) (not e!504059))))

(assert (=> b!900476 (= res!608187 e!504057)))

(declare-fun res!608188 () Bool)

(assert (=> b!900476 (=> res!608188 e!504057)))

(assert (=> b!900476 (= res!608188 (not e!504054))))

(declare-fun res!608195 () Bool)

(assert (=> b!900476 (=> (not res!608195) (not e!504054))))

(assert (=> b!900476 (= res!608195 (bvslt #b00000000000000000000000000000000 (size!25826 (_keys!10251 thiss!1181))))))

(declare-fun bm!40050 () Bool)

(assert (=> bm!40050 (= call!40054 (contains!4415 lt!406932 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!900477 () Bool)

(declare-fun res!608189 () Bool)

(assert (=> b!900477 (=> (not res!608189) (not e!504059))))

(assert (=> b!900477 (= res!608189 e!504048)))

(declare-fun c!95282 () Bool)

(assert (=> b!900477 (= c!95282 (not (= (bvand (extraKeys!5177 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!900478 () Bool)

(assert (=> b!900478 (= e!504056 (validKeyInArray!0 (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!40051 () Bool)

(assert (=> bm!40051 (= call!40051 call!40050)))

(declare-fun b!900479 () Bool)

(assert (=> b!900479 (= e!504052 (= (apply!416 lt!406932 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5281 thiss!1181)))))

(declare-fun b!900480 () Bool)

(assert (=> b!900480 (= e!504058 (= (apply!416 lt!406932 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5281 thiss!1181)))))

(assert (= (and d!111663 c!95281) b!900470))

(assert (= (and d!111663 (not c!95281)) b!900473))

(assert (= (and b!900473 c!95280) b!900463))

(assert (= (and b!900473 (not c!95280)) b!900475))

(assert (= (and b!900475 c!95285) b!900460))

(assert (= (and b!900475 (not c!95285)) b!900467))

(assert (= (or b!900460 b!900467) bm!40051))

(assert (= (or b!900463 bm!40051) bm!40045))

(assert (= (or b!900463 b!900460) bm!40049))

(assert (= (or b!900470 bm!40045) bm!40047))

(assert (= (or b!900470 bm!40049) bm!40048))

(assert (= (and d!111663 res!608193) b!900478))

(assert (= (and d!111663 c!95284) b!900468))

(assert (= (and d!111663 (not c!95284)) b!900461))

(assert (= (and d!111663 res!608194) b!900476))

(assert (= (and b!900476 res!608195) b!900462))

(assert (= (and b!900476 (not res!608188)) b!900469))

(assert (= (and b!900469 res!608190) b!900465))

(assert (= (and b!900476 res!608187) b!900477))

(assert (= (and b!900477 c!95282) b!900472))

(assert (= (and b!900477 (not c!95282)) b!900474))

(assert (= (and b!900472 res!608192) b!900480))

(assert (= (or b!900472 b!900474) bm!40050))

(assert (= (and b!900477 res!608189) b!900466))

(assert (= (and b!900466 c!95283) b!900471))

(assert (= (and b!900466 (not c!95283)) b!900464))

(assert (= (and b!900471 res!608191) b!900479))

(assert (= (or b!900471 b!900464) bm!40046))

(declare-fun b_lambda!13049 () Bool)

(assert (=> (not b_lambda!13049) (not b!900465)))

(declare-fun t!25299 () Bool)

(declare-fun tb!5213 () Bool)

(assert (=> (and b!900359 (= (defaultEntry!5451 thiss!1181) (defaultEntry!5451 thiss!1181)) t!25299) tb!5213))

(declare-fun result!10195 () Bool)

(assert (=> tb!5213 (= result!10195 tp_is_empty!18381)))

(assert (=> b!900465 t!25299))

(declare-fun b_and!26397 () Bool)

(assert (= b_and!26393 (and (=> t!25299 result!10195) b_and!26397)))

(declare-fun m!836983 () Bool)

(assert (=> b!900470 m!836983))

(assert (=> b!900469 m!836979))

(assert (=> b!900469 m!836979))

(declare-fun m!836985 () Bool)

(assert (=> b!900469 m!836985))

(declare-fun m!836987 () Bool)

(assert (=> b!900468 m!836987))

(declare-fun m!836989 () Bool)

(assert (=> b!900468 m!836989))

(declare-fun m!836991 () Bool)

(assert (=> b!900468 m!836991))

(declare-fun m!836993 () Bool)

(assert (=> b!900468 m!836993))

(declare-fun m!836995 () Bool)

(assert (=> b!900468 m!836995))

(declare-fun m!836997 () Bool)

(assert (=> b!900468 m!836997))

(declare-fun m!836999 () Bool)

(assert (=> b!900468 m!836999))

(declare-fun m!837001 () Bool)

(assert (=> b!900468 m!837001))

(declare-fun m!837003 () Bool)

(assert (=> b!900468 m!837003))

(declare-fun m!837005 () Bool)

(assert (=> b!900468 m!837005))

(assert (=> b!900468 m!836989))

(declare-fun m!837007 () Bool)

(assert (=> b!900468 m!837007))

(assert (=> b!900468 m!836979))

(declare-fun m!837009 () Bool)

(assert (=> b!900468 m!837009))

(declare-fun m!837011 () Bool)

(assert (=> b!900468 m!837011))

(declare-fun m!837013 () Bool)

(assert (=> b!900468 m!837013))

(assert (=> b!900468 m!836995))

(assert (=> b!900468 m!836999))

(declare-fun m!837015 () Bool)

(assert (=> b!900468 m!837015))

(assert (=> b!900468 m!836987))

(declare-fun m!837017 () Bool)

(assert (=> b!900468 m!837017))

(declare-fun m!837019 () Bool)

(assert (=> b!900479 m!837019))

(declare-fun m!837021 () Bool)

(assert (=> bm!40046 m!837021))

(assert (=> d!111663 m!836923))

(declare-fun m!837023 () Bool)

(assert (=> bm!40050 m!837023))

(declare-fun m!837025 () Bool)

(assert (=> b!900480 m!837025))

(assert (=> b!900478 m!836979))

(assert (=> b!900478 m!836979))

(declare-fun m!837027 () Bool)

(assert (=> b!900478 m!837027))

(assert (=> b!900462 m!836979))

(assert (=> b!900462 m!836979))

(assert (=> b!900462 m!837027))

(declare-fun m!837029 () Bool)

(assert (=> b!900465 m!837029))

(assert (=> b!900465 m!836979))

(assert (=> b!900465 m!837029))

(declare-fun m!837031 () Bool)

(assert (=> b!900465 m!837031))

(declare-fun m!837033 () Bool)

(assert (=> b!900465 m!837033))

(assert (=> b!900465 m!837031))

(assert (=> b!900465 m!836979))

(declare-fun m!837035 () Bool)

(assert (=> b!900465 m!837035))

(assert (=> bm!40047 m!837005))

(declare-fun m!837037 () Bool)

(assert (=> bm!40048 m!837037))

(assert (=> b!900362 d!111663))

(declare-fun d!111665 () Bool)

(assert (=> d!111665 (arrayContainsKey!0 (_keys!10251 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!406937 () Unit!30561)

(declare-fun choose!13 (array!52798 (_ BitVec 64) (_ BitVec 32)) Unit!30561)

(assert (=> d!111665 (= lt!406937 (choose!13 (_keys!10251 thiss!1181) key!785 (index!38079 lt!406840)))))

(assert (=> d!111665 (bvsge (index!38079 lt!406840) #b00000000000000000000000000000000)))

(assert (=> d!111665 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10251 thiss!1181) key!785 (index!38079 lt!406840)) lt!406937)))

(declare-fun bs!25282 () Bool)

(assert (= bs!25282 d!111665))

(assert (=> bs!25282 m!836929))

(declare-fun m!837039 () Bool)

(assert (=> bs!25282 m!837039))

(assert (=> b!900362 d!111665))

(declare-fun d!111667 () Bool)

(assert (=> d!111667 (= (inRange!0 (index!38079 lt!406840) (mask!26231 thiss!1181)) (and (bvsge (index!38079 lt!406840) #b00000000000000000000000000000000) (bvslt (index!38079 lt!406840) (bvadd (mask!26231 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!900356 d!111667))

(declare-fun d!111669 () Bool)

(declare-fun res!608202 () Bool)

(declare-fun e!504062 () Bool)

(assert (=> d!111669 (=> (not res!608202) (not e!504062))))

(declare-fun simpleValid!329 (LongMapFixedSize!4434) Bool)

(assert (=> d!111669 (= res!608202 (simpleValid!329 thiss!1181))))

(assert (=> d!111669 (= (valid!1688 thiss!1181) e!504062)))

(declare-fun b!900489 () Bool)

(declare-fun res!608203 () Bool)

(assert (=> b!900489 (=> (not res!608203) (not e!504062))))

(declare-fun arrayCountValidKeys!0 (array!52798 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!900489 (= res!608203 (= (arrayCountValidKeys!0 (_keys!10251 thiss!1181) #b00000000000000000000000000000000 (size!25826 (_keys!10251 thiss!1181))) (_size!2272 thiss!1181)))))

(declare-fun b!900490 () Bool)

(declare-fun res!608204 () Bool)

(assert (=> b!900490 (=> (not res!608204) (not e!504062))))

(assert (=> b!900490 (= res!608204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10251 thiss!1181) (mask!26231 thiss!1181)))))

(declare-fun b!900491 () Bool)

(assert (=> b!900491 (= e!504062 (arrayNoDuplicates!0 (_keys!10251 thiss!1181) #b00000000000000000000000000000000 Nil!17931))))

(assert (= (and d!111669 res!608202) b!900489))

(assert (= (and b!900489 res!608203) b!900490))

(assert (= (and b!900490 res!608204) b!900491))

(declare-fun m!837041 () Bool)

(assert (=> d!111669 m!837041))

(declare-fun m!837043 () Bool)

(assert (=> b!900489 m!837043))

(assert (=> b!900490 m!836935))

(assert (=> b!900491 m!836917))

(assert (=> start!77184 d!111669))

(declare-fun b!900502 () Bool)

(declare-fun e!504073 () Bool)

(declare-fun call!40057 () Bool)

(assert (=> b!900502 (= e!504073 call!40057)))

(declare-fun b!900503 () Bool)

(assert (=> b!900503 (= e!504073 call!40057)))

(declare-fun bm!40054 () Bool)

(declare-fun c!95288 () Bool)

(assert (=> bm!40054 (= call!40057 (arrayNoDuplicates!0 (_keys!10251 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95288 (Cons!17930 (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000) Nil!17931) Nil!17931)))))

(declare-fun d!111671 () Bool)

(declare-fun res!608211 () Bool)

(declare-fun e!504072 () Bool)

(assert (=> d!111671 (=> res!608211 e!504072)))

(assert (=> d!111671 (= res!608211 (bvsge #b00000000000000000000000000000000 (size!25826 (_keys!10251 thiss!1181))))))

(assert (=> d!111671 (= (arrayNoDuplicates!0 (_keys!10251 thiss!1181) #b00000000000000000000000000000000 Nil!17931) e!504072)))

(declare-fun b!900504 () Bool)

(declare-fun e!504074 () Bool)

(assert (=> b!900504 (= e!504074 e!504073)))

(assert (=> b!900504 (= c!95288 (validKeyInArray!0 (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!900505 () Bool)

(assert (=> b!900505 (= e!504072 e!504074)))

(declare-fun res!608213 () Bool)

(assert (=> b!900505 (=> (not res!608213) (not e!504074))))

(declare-fun e!504071 () Bool)

(assert (=> b!900505 (= res!608213 (not e!504071))))

(declare-fun res!608212 () Bool)

(assert (=> b!900505 (=> (not res!608212) (not e!504071))))

(assert (=> b!900505 (= res!608212 (validKeyInArray!0 (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!900506 () Bool)

(declare-fun contains!4417 (List!17934 (_ BitVec 64)) Bool)

(assert (=> b!900506 (= e!504071 (contains!4417 Nil!17931 (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!111671 (not res!608211)) b!900505))

(assert (= (and b!900505 res!608212) b!900506))

(assert (= (and b!900505 res!608213) b!900504))

(assert (= (and b!900504 c!95288) b!900503))

(assert (= (and b!900504 (not c!95288)) b!900502))

(assert (= (or b!900503 b!900502) bm!40054))

(assert (=> bm!40054 m!836979))

(declare-fun m!837045 () Bool)

(assert (=> bm!40054 m!837045))

(assert (=> b!900504 m!836979))

(assert (=> b!900504 m!836979))

(assert (=> b!900504 m!837027))

(assert (=> b!900505 m!836979))

(assert (=> b!900505 m!836979))

(assert (=> b!900505 m!837027))

(assert (=> b!900506 m!836979))

(assert (=> b!900506 m!836979))

(declare-fun m!837047 () Bool)

(assert (=> b!900506 m!837047))

(assert (=> b!900364 d!111671))

(declare-fun d!111673 () Bool)

(assert (=> d!111673 (= (array_inv!19878 (_keys!10251 thiss!1181)) (bvsge (size!25826 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!900359 d!111673))

(declare-fun d!111675 () Bool)

(assert (=> d!111675 (= (array_inv!19879 (_values!5468 thiss!1181)) (bvsge (size!25827 (_values!5468 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!900359 d!111675))

(declare-fun b!900515 () Bool)

(declare-fun e!504081 () Bool)

(declare-fun call!40060 () Bool)

(assert (=> b!900515 (= e!504081 call!40060)))

(declare-fun b!900516 () Bool)

(declare-fun e!504083 () Bool)

(assert (=> b!900516 (= e!504083 call!40060)))

(declare-fun b!900517 () Bool)

(assert (=> b!900517 (= e!504081 e!504083)))

(declare-fun lt!406946 () (_ BitVec 64))

(assert (=> b!900517 (= lt!406946 (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406944 () Unit!30561)

(assert (=> b!900517 (= lt!406944 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10251 thiss!1181) lt!406946 #b00000000000000000000000000000000))))

(assert (=> b!900517 (arrayContainsKey!0 (_keys!10251 thiss!1181) lt!406946 #b00000000000000000000000000000000)))

(declare-fun lt!406945 () Unit!30561)

(assert (=> b!900517 (= lt!406945 lt!406944)))

(declare-fun res!608219 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52798 (_ BitVec 32)) SeekEntryResult!8927)

(assert (=> b!900517 (= res!608219 (= (seekEntryOrOpen!0 (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000) (_keys!10251 thiss!1181) (mask!26231 thiss!1181)) (Found!8927 #b00000000000000000000000000000000)))))

(assert (=> b!900517 (=> (not res!608219) (not e!504083))))

(declare-fun b!900518 () Bool)

(declare-fun e!504082 () Bool)

(assert (=> b!900518 (= e!504082 e!504081)))

(declare-fun c!95291 () Bool)

(assert (=> b!900518 (= c!95291 (validKeyInArray!0 (select (arr!25366 (_keys!10251 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!111677 () Bool)

(declare-fun res!608218 () Bool)

(assert (=> d!111677 (=> res!608218 e!504082)))

(assert (=> d!111677 (= res!608218 (bvsge #b00000000000000000000000000000000 (size!25826 (_keys!10251 thiss!1181))))))

(assert (=> d!111677 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10251 thiss!1181) (mask!26231 thiss!1181)) e!504082)))

(declare-fun bm!40057 () Bool)

(assert (=> bm!40057 (= call!40060 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10251 thiss!1181) (mask!26231 thiss!1181)))))

(assert (= (and d!111677 (not res!608218)) b!900518))

(assert (= (and b!900518 c!95291) b!900517))

(assert (= (and b!900518 (not c!95291)) b!900515))

(assert (= (and b!900517 res!608219) b!900516))

(assert (= (or b!900516 b!900515) bm!40057))

(assert (=> b!900517 m!836979))

(declare-fun m!837049 () Bool)

(assert (=> b!900517 m!837049))

(declare-fun m!837051 () Bool)

(assert (=> b!900517 m!837051))

(assert (=> b!900517 m!836979))

(declare-fun m!837053 () Bool)

(assert (=> b!900517 m!837053))

(assert (=> b!900518 m!836979))

(assert (=> b!900518 m!836979))

(assert (=> b!900518 m!837027))

(declare-fun m!837055 () Bool)

(assert (=> bm!40057 m!837055))

(assert (=> b!900363 d!111677))

(declare-fun d!111679 () Bool)

(declare-fun e!504086 () Bool)

(assert (=> d!111679 e!504086))

(declare-fun res!608222 () Bool)

(assert (=> d!111679 (=> res!608222 e!504086)))

(declare-fun lt!406952 () SeekEntryResult!8927)

(assert (=> d!111679 (= res!608222 (not ((_ is Found!8927) lt!406952)))))

(assert (=> d!111679 (= lt!406952 (seekEntry!0 key!785 (_keys!10251 thiss!1181) (mask!26231 thiss!1181)))))

(declare-fun lt!406951 () Unit!30561)

(declare-fun choose!1523 (array!52798 array!52800 (_ BitVec 32) (_ BitVec 32) V!29473 V!29473 (_ BitVec 64)) Unit!30561)

(assert (=> d!111679 (= lt!406951 (choose!1523 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) key!785))))

(assert (=> d!111679 (validMask!0 (mask!26231 thiss!1181))))

(assert (=> d!111679 (= (lemmaSeekEntryGivesInRangeIndex!108 (_keys!10251 thiss!1181) (_values!5468 thiss!1181) (mask!26231 thiss!1181) (extraKeys!5177 thiss!1181) (zeroValue!5281 thiss!1181) (minValue!5281 thiss!1181) key!785) lt!406951)))

(declare-fun b!900521 () Bool)

(assert (=> b!900521 (= e!504086 (inRange!0 (index!38079 lt!406952) (mask!26231 thiss!1181)))))

(assert (= (and d!111679 (not res!608222)) b!900521))

(assert (=> d!111679 m!836907))

(declare-fun m!837057 () Bool)

(assert (=> d!111679 m!837057))

(assert (=> d!111679 m!836923))

(declare-fun m!837059 () Bool)

(assert (=> b!900521 m!837059))

(assert (=> b!900366 d!111679))

(declare-fun b!900534 () Bool)

(declare-fun e!504093 () SeekEntryResult!8927)

(declare-fun lt!406962 () SeekEntryResult!8927)

(assert (=> b!900534 (= e!504093 (Found!8927 (index!38080 lt!406962)))))

(declare-fun d!111681 () Bool)

(declare-fun lt!406961 () SeekEntryResult!8927)

(assert (=> d!111681 (and (or ((_ is MissingVacant!8927) lt!406961) (not ((_ is Found!8927) lt!406961)) (and (bvsge (index!38079 lt!406961) #b00000000000000000000000000000000) (bvslt (index!38079 lt!406961) (size!25826 (_keys!10251 thiss!1181))))) (not ((_ is MissingVacant!8927) lt!406961)) (or (not ((_ is Found!8927) lt!406961)) (= (select (arr!25366 (_keys!10251 thiss!1181)) (index!38079 lt!406961)) key!785)))))

(declare-fun e!504095 () SeekEntryResult!8927)

(assert (=> d!111681 (= lt!406961 e!504095)))

(declare-fun c!95300 () Bool)

(assert (=> d!111681 (= c!95300 (and ((_ is Intermediate!8927) lt!406962) (undefined!9739 lt!406962)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52798 (_ BitVec 32)) SeekEntryResult!8927)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111681 (= lt!406962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26231 thiss!1181)) key!785 (_keys!10251 thiss!1181) (mask!26231 thiss!1181)))))

(assert (=> d!111681 (validMask!0 (mask!26231 thiss!1181))))

(assert (=> d!111681 (= (seekEntry!0 key!785 (_keys!10251 thiss!1181) (mask!26231 thiss!1181)) lt!406961)))

(declare-fun b!900535 () Bool)

(declare-fun e!504094 () SeekEntryResult!8927)

(declare-fun lt!406963 () SeekEntryResult!8927)

(assert (=> b!900535 (= e!504094 (ite ((_ is MissingVacant!8927) lt!406963) (MissingZero!8927 (index!38081 lt!406963)) lt!406963))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52798 (_ BitVec 32)) SeekEntryResult!8927)

(assert (=> b!900535 (= lt!406963 (seekKeyOrZeroReturnVacant!0 (x!76707 lt!406962) (index!38080 lt!406962) (index!38080 lt!406962) key!785 (_keys!10251 thiss!1181) (mask!26231 thiss!1181)))))

(declare-fun b!900536 () Bool)

(assert (=> b!900536 (= e!504095 e!504093)))

(declare-fun lt!406964 () (_ BitVec 64))

(assert (=> b!900536 (= lt!406964 (select (arr!25366 (_keys!10251 thiss!1181)) (index!38080 lt!406962)))))

(declare-fun c!95299 () Bool)

(assert (=> b!900536 (= c!95299 (= lt!406964 key!785))))

(declare-fun b!900537 () Bool)

(declare-fun c!95298 () Bool)

(assert (=> b!900537 (= c!95298 (= lt!406964 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!900537 (= e!504093 e!504094)))

(declare-fun b!900538 () Bool)

(assert (=> b!900538 (= e!504095 Undefined!8927)))

(declare-fun b!900539 () Bool)

(assert (=> b!900539 (= e!504094 (MissingZero!8927 (index!38080 lt!406962)))))

(assert (= (and d!111681 c!95300) b!900538))

(assert (= (and d!111681 (not c!95300)) b!900536))

(assert (= (and b!900536 c!95299) b!900534))

(assert (= (and b!900536 (not c!95299)) b!900537))

(assert (= (and b!900537 c!95298) b!900539))

(assert (= (and b!900537 (not c!95298)) b!900535))

(declare-fun m!837061 () Bool)

(assert (=> d!111681 m!837061))

(declare-fun m!837063 () Bool)

(assert (=> d!111681 m!837063))

(assert (=> d!111681 m!837063))

(declare-fun m!837065 () Bool)

(assert (=> d!111681 m!837065))

(assert (=> d!111681 m!836923))

(declare-fun m!837067 () Bool)

(assert (=> b!900535 m!837067))

(declare-fun m!837069 () Bool)

(assert (=> b!900536 m!837069))

(assert (=> b!900366 d!111681))

(declare-fun b!900547 () Bool)

(declare-fun e!504101 () Bool)

(assert (=> b!900547 (= e!504101 tp_is_empty!18381)))

(declare-fun b!900546 () Bool)

(declare-fun e!504100 () Bool)

(assert (=> b!900546 (= e!504100 tp_is_empty!18381)))

(declare-fun condMapEmpty!29254 () Bool)

(declare-fun mapDefault!29254 () ValueCell!8709)

(assert (=> mapNonEmpty!29248 (= condMapEmpty!29254 (= mapRest!29248 ((as const (Array (_ BitVec 32) ValueCell!8709)) mapDefault!29254)))))

(declare-fun mapRes!29254 () Bool)

(assert (=> mapNonEmpty!29248 (= tp!56250 (and e!504101 mapRes!29254))))

(declare-fun mapNonEmpty!29254 () Bool)

(declare-fun tp!56260 () Bool)

(assert (=> mapNonEmpty!29254 (= mapRes!29254 (and tp!56260 e!504100))))

(declare-fun mapRest!29254 () (Array (_ BitVec 32) ValueCell!8709))

(declare-fun mapKey!29254 () (_ BitVec 32))

(declare-fun mapValue!29254 () ValueCell!8709)

(assert (=> mapNonEmpty!29254 (= mapRest!29248 (store mapRest!29254 mapKey!29254 mapValue!29254))))

(declare-fun mapIsEmpty!29254 () Bool)

(assert (=> mapIsEmpty!29254 mapRes!29254))

(assert (= (and mapNonEmpty!29248 condMapEmpty!29254) mapIsEmpty!29254))

(assert (= (and mapNonEmpty!29248 (not condMapEmpty!29254)) mapNonEmpty!29254))

(assert (= (and mapNonEmpty!29254 ((_ is ValueCellFull!8709) mapValue!29254)) b!900546))

(assert (= (and mapNonEmpty!29248 ((_ is ValueCellFull!8709) mapDefault!29254)) b!900547))

(declare-fun m!837071 () Bool)

(assert (=> mapNonEmpty!29254 m!837071))

(declare-fun b_lambda!13051 () Bool)

(assert (= b_lambda!13049 (or (and b!900359 b_free!16053) b_lambda!13051)))

(check-sat (not d!111659) (not b!900506) (not bm!40057) (not b!900490) (not d!111681) (not b!900462) b_and!26397 (not b!900479) (not b!900469) (not d!111669) (not b!900491) (not b_lambda!13051) (not b!900480) (not b!900478) (not d!111663) (not b!900465) (not b!900411) (not b!900504) (not b!900406) (not mapNonEmpty!29254) (not b!900521) (not bm!40046) (not b!900417) (not b!900489) (not b!900408) (not b!900470) (not b!900517) (not bm!40050) (not b!900468) (not bm!40054) tp_is_empty!18381 (not b_next!16053) (not d!111655) (not b!900518) (not b!900535) (not b!900505) (not bm!40047) (not d!111679) (not bm!40048) (not d!111665))
(check-sat b_and!26397 (not b_next!16053))
