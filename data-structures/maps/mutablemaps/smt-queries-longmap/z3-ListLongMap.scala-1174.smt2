; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25250 () Bool)

(assert start!25250)

(declare-fun b!262890 () Bool)

(declare-fun b_free!6795 () Bool)

(declare-fun b_next!6795 () Bool)

(assert (=> b!262890 (= b_free!6795 (not b_next!6795))))

(declare-fun tp!23721 () Bool)

(declare-fun b_and!13955 () Bool)

(assert (=> b!262890 (= tp!23721 b_and!13955)))

(declare-fun b!262873 () Bool)

(declare-fun e!170366 () Bool)

(declare-fun e!170373 () Bool)

(assert (=> b!262873 (= e!170366 e!170373)))

(declare-fun res!128408 () Bool)

(assert (=> b!262873 (=> (not res!128408) (not e!170373))))

(declare-datatypes ((SeekEntryResult!1210 0))(
  ( (MissingZero!1210 (index!7010 (_ BitVec 32))) (Found!1210 (index!7011 (_ BitVec 32))) (Intermediate!1210 (undefined!2022 Bool) (index!7012 (_ BitVec 32)) (x!25252 (_ BitVec 32))) (Undefined!1210) (MissingVacant!1210 (index!7013 (_ BitVec 32))) )
))
(declare-fun lt!133040 () SeekEntryResult!1210)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!262873 (= res!128408 (or (= lt!133040 (MissingZero!1210 index!297)) (= lt!133040 (MissingVacant!1210 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!8523 0))(
  ( (V!8524 (val!3373 Int)) )
))
(declare-datatypes ((ValueCell!2985 0))(
  ( (ValueCellFull!2985 (v!5500 V!8523)) (EmptyCell!2985) )
))
(declare-datatypes ((array!12674 0))(
  ( (array!12675 (arr!5997 (Array (_ BitVec 32) ValueCell!2985)) (size!6348 (_ BitVec 32))) )
))
(declare-datatypes ((array!12676 0))(
  ( (array!12677 (arr!5998 (Array (_ BitVec 32) (_ BitVec 64))) (size!6349 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3870 0))(
  ( (LongMapFixedSize!3871 (defaultEntry!4843 Int) (mask!11209 (_ BitVec 32)) (extraKeys!4580 (_ BitVec 32)) (zeroValue!4684 V!8523) (minValue!4684 V!8523) (_size!1984 (_ BitVec 32)) (_keys!7035 array!12676) (_values!4826 array!12674) (_vacant!1984 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3870)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12676 (_ BitVec 32)) SeekEntryResult!1210)

(assert (=> b!262873 (= lt!133040 (seekEntryOrOpen!0 key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(declare-fun b!262874 () Bool)

(declare-fun e!170368 () Bool)

(declare-fun e!170379 () Bool)

(assert (=> b!262874 (= e!170368 e!170379)))

(declare-fun res!128406 () Bool)

(assert (=> b!262874 (=> (not res!128406) (not e!170379))))

(declare-datatypes ((tuple2!4974 0))(
  ( (tuple2!4975 (_1!2497 (_ BitVec 64)) (_2!2497 V!8523)) )
))
(declare-datatypes ((List!3872 0))(
  ( (Nil!3869) (Cons!3868 (h!4534 tuple2!4974) (t!8957 List!3872)) )
))
(declare-datatypes ((ListLongMap!3901 0))(
  ( (ListLongMap!3902 (toList!1966 List!3872)) )
))
(declare-fun lt!133031 () ListLongMap!3901)

(declare-fun contains!1911 (ListLongMap!3901 (_ BitVec 64)) Bool)

(assert (=> b!262874 (= res!128406 (contains!1911 lt!133031 key!932))))

(declare-fun lt!133037 () LongMapFixedSize!3870)

(declare-fun map!2757 (LongMapFixedSize!3870) ListLongMap!3901)

(assert (=> b!262874 (= lt!133031 (map!2757 lt!133037))))

(declare-fun lt!133042 () tuple2!4974)

(declare-fun b!262876 () Bool)

(declare-fun +!705 (ListLongMap!3901 tuple2!4974) ListLongMap!3901)

(assert (=> b!262876 (= e!170379 (= lt!133031 (+!705 (map!2757 thiss!1504) lt!133042)))))

(declare-fun b!262877 () Bool)

(declare-fun e!170374 () Bool)

(declare-fun call!25145 () Bool)

(assert (=> b!262877 (= e!170374 (not call!25145))))

(declare-fun b!262878 () Bool)

(declare-fun e!170369 () Bool)

(assert (=> b!262878 (= e!170373 e!170369)))

(declare-fun res!128413 () Bool)

(assert (=> b!262878 (=> (not res!128413) (not e!170369))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!262878 (= res!128413 (inRange!0 index!297 (mask!11209 thiss!1504)))))

(declare-datatypes ((Unit!8187 0))(
  ( (Unit!8188) )
))
(declare-fun lt!133044 () Unit!8187)

(declare-fun e!170378 () Unit!8187)

(assert (=> b!262878 (= lt!133044 e!170378)))

(declare-fun c!44802 () Bool)

(declare-fun lt!133034 () ListLongMap!3901)

(assert (=> b!262878 (= c!44802 (contains!1911 lt!133034 key!932))))

(declare-fun getCurrentListMap!1489 (array!12676 array!12674 (_ BitVec 32) (_ BitVec 32) V!8523 V!8523 (_ BitVec 32) Int) ListLongMap!3901)

(assert (=> b!262878 (= lt!133034 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun bm!25142 () Bool)

(declare-fun arrayContainsKey!0 (array!12676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!25142 (= call!25145 (arrayContainsKey!0 (_keys!7035 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!262879 () Bool)

(assert (=> b!262879 (= e!170369 (not e!170368))))

(declare-fun res!128407 () Bool)

(assert (=> b!262879 (=> (not res!128407) (not e!170368))))

(declare-fun valid!1499 (LongMapFixedSize!3870) Bool)

(assert (=> b!262879 (= res!128407 (valid!1499 lt!133037))))

(declare-fun lt!133047 () ListLongMap!3901)

(assert (=> b!262879 (contains!1911 lt!133047 key!932)))

(declare-fun lt!133039 () Unit!8187)

(declare-fun lt!133048 () array!12676)

(declare-fun lt!133045 () array!12674)

(declare-fun lemmaValidKeyInArrayIsInListMap!149 (array!12676 array!12674 (_ BitVec 32) (_ BitVec 32) V!8523 V!8523 (_ BitVec 32) Int) Unit!8187)

(assert (=> b!262879 (= lt!133039 (lemmaValidKeyInArrayIsInListMap!149 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) index!297 (defaultEntry!4843 thiss!1504)))))

(assert (=> b!262879 (= lt!133037 (LongMapFixedSize!3871 (defaultEntry!4843 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) (bvadd #b00000000000000000000000000000001 (_size!1984 thiss!1504)) lt!133048 lt!133045 (_vacant!1984 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12676 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!262879 (= (arrayCountValidKeys!0 lt!133048 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!133041 () Unit!8187)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12676 (_ BitVec 32)) Unit!8187)

(assert (=> b!262879 (= lt!133041 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!133048 index!297))))

(assert (=> b!262879 (arrayContainsKey!0 lt!133048 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!133038 () Unit!8187)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12676 (_ BitVec 64) (_ BitVec 32)) Unit!8187)

(assert (=> b!262879 (= lt!133038 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!133048 key!932 index!297))))

(declare-fun lt!133029 () ListLongMap!3901)

(assert (=> b!262879 (= lt!133029 lt!133047)))

(assert (=> b!262879 (= lt!133047 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(assert (=> b!262879 (= lt!133029 (+!705 lt!133034 lt!133042))))

(declare-fun v!346 () V!8523)

(assert (=> b!262879 (= lt!133045 (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504))))))

(assert (=> b!262879 (= lt!133042 (tuple2!4975 key!932 v!346))))

(declare-fun lt!133035 () Unit!8187)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!120 (array!12676 array!12674 (_ BitVec 32) (_ BitVec 32) V!8523 V!8523 (_ BitVec 32) (_ BitVec 64) V!8523 Int) Unit!8187)

(assert (=> b!262879 (= lt!133035 (lemmaAddValidKeyToArrayThenAddPairToListMap!120 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) index!297 key!932 v!346 (defaultEntry!4843 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12676 (_ BitVec 32)) Bool)

(assert (=> b!262879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!133048 (mask!11209 thiss!1504))))

(declare-fun lt!133043 () Unit!8187)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12676 (_ BitVec 32) (_ BitVec 32)) Unit!8187)

(assert (=> b!262879 (= lt!133043 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!7035 thiss!1504) index!297 (mask!11209 thiss!1504)))))

(assert (=> b!262879 (= (arrayCountValidKeys!0 lt!133048 #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!7035 thiss!1504) #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504)))))))

(declare-fun lt!133036 () Unit!8187)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12676 (_ BitVec 32) (_ BitVec 64)) Unit!8187)

(assert (=> b!262879 (= lt!133036 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!7035 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3873 0))(
  ( (Nil!3870) (Cons!3869 (h!4535 (_ BitVec 64)) (t!8958 List!3873)) )
))
(declare-fun arrayNoDuplicates!0 (array!12676 (_ BitVec 32) List!3873) Bool)

(assert (=> b!262879 (arrayNoDuplicates!0 lt!133048 #b00000000000000000000000000000000 Nil!3870)))

(assert (=> b!262879 (= lt!133048 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun lt!133032 () Unit!8187)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12676 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3873) Unit!8187)

(assert (=> b!262879 (= lt!133032 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!7035 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3870))))

(declare-fun lt!133028 () Unit!8187)

(declare-fun e!170371 () Unit!8187)

(assert (=> b!262879 (= lt!133028 e!170371)))

(declare-fun c!44805 () Bool)

(assert (=> b!262879 (= c!44805 (arrayContainsKey!0 (_keys!7035 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!262880 () Bool)

(declare-fun e!170372 () Bool)

(assert (=> b!262880 (= e!170372 (not call!25145))))

(declare-fun b!262881 () Bool)

(declare-fun res!128414 () Bool)

(assert (=> b!262881 (= res!128414 (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7013 lt!133040)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!262881 (=> (not res!128414) (not e!170372))))

(declare-fun b!262882 () Bool)

(declare-fun Unit!8189 () Unit!8187)

(assert (=> b!262882 (= e!170378 Unit!8189)))

(declare-fun lt!133033 () Unit!8187)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!456 (array!12676 array!12674 (_ BitVec 32) (_ BitVec 32) V!8523 V!8523 (_ BitVec 64) Int) Unit!8187)

(assert (=> b!262882 (= lt!133033 (lemmaInListMapThenSeekEntryOrOpenFindsIt!456 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) key!932 (defaultEntry!4843 thiss!1504)))))

(assert (=> b!262882 false))

(declare-fun b!262883 () Bool)

(declare-fun Unit!8190 () Unit!8187)

(assert (=> b!262883 (= e!170371 Unit!8190)))

(declare-fun b!262884 () Bool)

(declare-fun e!170380 () Bool)

(declare-fun tp_is_empty!6657 () Bool)

(assert (=> b!262884 (= e!170380 tp_is_empty!6657)))

(declare-fun b!262875 () Bool)

(declare-fun Unit!8191 () Unit!8187)

(assert (=> b!262875 (= e!170371 Unit!8191)))

(declare-fun lt!133046 () Unit!8187)

(declare-fun lemmaArrayContainsKeyThenInListMap!262 (array!12676 array!12674 (_ BitVec 32) (_ BitVec 32) V!8523 V!8523 (_ BitVec 64) (_ BitVec 32) Int) Unit!8187)

(assert (=> b!262875 (= lt!133046 (lemmaArrayContainsKeyThenInListMap!262 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(assert (=> b!262875 false))

(declare-fun res!128411 () Bool)

(assert (=> start!25250 (=> (not res!128411) (not e!170366))))

(assert (=> start!25250 (= res!128411 (valid!1499 thiss!1504))))

(assert (=> start!25250 e!170366))

(declare-fun e!170367 () Bool)

(assert (=> start!25250 e!170367))

(assert (=> start!25250 true))

(assert (=> start!25250 tp_is_empty!6657))

(declare-fun b!262885 () Bool)

(declare-fun e!170365 () Bool)

(get-info :version)

(assert (=> b!262885 (= e!170365 ((_ is Undefined!1210) lt!133040))))

(declare-fun b!262886 () Bool)

(declare-fun res!128412 () Bool)

(assert (=> b!262886 (=> (not res!128412) (not e!170374))))

(assert (=> b!262886 (= res!128412 (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7010 lt!133040)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!11350 () Bool)

(declare-fun mapRes!11350 () Bool)

(declare-fun tp!23722 () Bool)

(assert (=> mapNonEmpty!11350 (= mapRes!11350 (and tp!23722 e!170380))))

(declare-fun mapRest!11350 () (Array (_ BitVec 32) ValueCell!2985))

(declare-fun mapValue!11350 () ValueCell!2985)

(declare-fun mapKey!11350 () (_ BitVec 32))

(assert (=> mapNonEmpty!11350 (= (arr!5997 (_values!4826 thiss!1504)) (store mapRest!11350 mapKey!11350 mapValue!11350))))

(declare-fun b!262887 () Bool)

(declare-fun lt!133030 () Unit!8187)

(assert (=> b!262887 (= e!170378 lt!133030)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!453 (array!12676 array!12674 (_ BitVec 32) (_ BitVec 32) V!8523 V!8523 (_ BitVec 64) Int) Unit!8187)

(assert (=> b!262887 (= lt!133030 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!453 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) key!932 (defaultEntry!4843 thiss!1504)))))

(declare-fun c!44803 () Bool)

(assert (=> b!262887 (= c!44803 ((_ is MissingZero!1210) lt!133040))))

(declare-fun e!170375 () Bool)

(assert (=> b!262887 e!170375))

(declare-fun b!262888 () Bool)

(declare-fun res!128410 () Bool)

(assert (=> b!262888 (=> (not res!128410) (not e!170374))))

(declare-fun call!25146 () Bool)

(assert (=> b!262888 (= res!128410 call!25146)))

(assert (=> b!262888 (= e!170375 e!170374)))

(declare-fun b!262889 () Bool)

(assert (=> b!262889 (= e!170365 e!170372)))

(declare-fun res!128405 () Bool)

(assert (=> b!262889 (= res!128405 call!25146)))

(assert (=> b!262889 (=> (not res!128405) (not e!170372))))

(declare-fun e!170376 () Bool)

(declare-fun array_inv!3953 (array!12676) Bool)

(declare-fun array_inv!3954 (array!12674) Bool)

(assert (=> b!262890 (= e!170367 (and tp!23721 tp_is_empty!6657 (array_inv!3953 (_keys!7035 thiss!1504)) (array_inv!3954 (_values!4826 thiss!1504)) e!170376))))

(declare-fun mapIsEmpty!11350 () Bool)

(assert (=> mapIsEmpty!11350 mapRes!11350))

(declare-fun b!262891 () Bool)

(declare-fun c!44804 () Bool)

(assert (=> b!262891 (= c!44804 ((_ is MissingVacant!1210) lt!133040))))

(assert (=> b!262891 (= e!170375 e!170365)))

(declare-fun bm!25143 () Bool)

(assert (=> bm!25143 (= call!25146 (inRange!0 (ite c!44803 (index!7010 lt!133040) (index!7013 lt!133040)) (mask!11209 thiss!1504)))))

(declare-fun b!262892 () Bool)

(declare-fun e!170377 () Bool)

(assert (=> b!262892 (= e!170377 tp_is_empty!6657)))

(declare-fun b!262893 () Bool)

(declare-fun res!128409 () Bool)

(assert (=> b!262893 (=> (not res!128409) (not e!170366))))

(assert (=> b!262893 (= res!128409 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!262894 () Bool)

(assert (=> b!262894 (= e!170376 (and e!170377 mapRes!11350))))

(declare-fun condMapEmpty!11350 () Bool)

(declare-fun mapDefault!11350 () ValueCell!2985)

(assert (=> b!262894 (= condMapEmpty!11350 (= (arr!5997 (_values!4826 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2985)) mapDefault!11350)))))

(assert (= (and start!25250 res!128411) b!262893))

(assert (= (and b!262893 res!128409) b!262873))

(assert (= (and b!262873 res!128408) b!262878))

(assert (= (and b!262878 c!44802) b!262882))

(assert (= (and b!262878 (not c!44802)) b!262887))

(assert (= (and b!262887 c!44803) b!262888))

(assert (= (and b!262887 (not c!44803)) b!262891))

(assert (= (and b!262888 res!128410) b!262886))

(assert (= (and b!262886 res!128412) b!262877))

(assert (= (and b!262891 c!44804) b!262889))

(assert (= (and b!262891 (not c!44804)) b!262885))

(assert (= (and b!262889 res!128405) b!262881))

(assert (= (and b!262881 res!128414) b!262880))

(assert (= (or b!262888 b!262889) bm!25143))

(assert (= (or b!262877 b!262880) bm!25142))

(assert (= (and b!262878 res!128413) b!262879))

(assert (= (and b!262879 c!44805) b!262875))

(assert (= (and b!262879 (not c!44805)) b!262883))

(assert (= (and b!262879 res!128407) b!262874))

(assert (= (and b!262874 res!128406) b!262876))

(assert (= (and b!262894 condMapEmpty!11350) mapIsEmpty!11350))

(assert (= (and b!262894 (not condMapEmpty!11350)) mapNonEmpty!11350))

(assert (= (and mapNonEmpty!11350 ((_ is ValueCellFull!2985) mapValue!11350)) b!262884))

(assert (= (and b!262894 ((_ is ValueCellFull!2985) mapDefault!11350)) b!262892))

(assert (= b!262890 b!262894))

(assert (= start!25250 b!262890))

(declare-fun m!278959 () Bool)

(assert (=> b!262890 m!278959))

(declare-fun m!278961 () Bool)

(assert (=> b!262890 m!278961))

(declare-fun m!278963 () Bool)

(assert (=> b!262874 m!278963))

(declare-fun m!278965 () Bool)

(assert (=> b!262874 m!278965))

(declare-fun m!278967 () Bool)

(assert (=> b!262876 m!278967))

(assert (=> b!262876 m!278967))

(declare-fun m!278969 () Bool)

(assert (=> b!262876 m!278969))

(declare-fun m!278971 () Bool)

(assert (=> b!262887 m!278971))

(declare-fun m!278973 () Bool)

(assert (=> start!25250 m!278973))

(declare-fun m!278975 () Bool)

(assert (=> b!262881 m!278975))

(declare-fun m!278977 () Bool)

(assert (=> b!262882 m!278977))

(declare-fun m!278979 () Bool)

(assert (=> b!262879 m!278979))

(declare-fun m!278981 () Bool)

(assert (=> b!262879 m!278981))

(declare-fun m!278983 () Bool)

(assert (=> b!262879 m!278983))

(declare-fun m!278985 () Bool)

(assert (=> b!262879 m!278985))

(declare-fun m!278987 () Bool)

(assert (=> b!262879 m!278987))

(declare-fun m!278989 () Bool)

(assert (=> b!262879 m!278989))

(declare-fun m!278991 () Bool)

(assert (=> b!262879 m!278991))

(declare-fun m!278993 () Bool)

(assert (=> b!262879 m!278993))

(declare-fun m!278995 () Bool)

(assert (=> b!262879 m!278995))

(declare-fun m!278997 () Bool)

(assert (=> b!262879 m!278997))

(declare-fun m!278999 () Bool)

(assert (=> b!262879 m!278999))

(declare-fun m!279001 () Bool)

(assert (=> b!262879 m!279001))

(declare-fun m!279003 () Bool)

(assert (=> b!262879 m!279003))

(declare-fun m!279005 () Bool)

(assert (=> b!262879 m!279005))

(declare-fun m!279007 () Bool)

(assert (=> b!262879 m!279007))

(declare-fun m!279009 () Bool)

(assert (=> b!262879 m!279009))

(declare-fun m!279011 () Bool)

(assert (=> b!262879 m!279011))

(declare-fun m!279013 () Bool)

(assert (=> b!262879 m!279013))

(declare-fun m!279015 () Bool)

(assert (=> b!262879 m!279015))

(declare-fun m!279017 () Bool)

(assert (=> b!262879 m!279017))

(assert (=> bm!25142 m!278979))

(declare-fun m!279019 () Bool)

(assert (=> b!262878 m!279019))

(declare-fun m!279021 () Bool)

(assert (=> b!262878 m!279021))

(declare-fun m!279023 () Bool)

(assert (=> b!262878 m!279023))

(declare-fun m!279025 () Bool)

(assert (=> b!262875 m!279025))

(declare-fun m!279027 () Bool)

(assert (=> b!262873 m!279027))

(declare-fun m!279029 () Bool)

(assert (=> b!262886 m!279029))

(declare-fun m!279031 () Bool)

(assert (=> mapNonEmpty!11350 m!279031))

(declare-fun m!279033 () Bool)

(assert (=> bm!25143 m!279033))

(check-sat (not bm!25143) (not b!262887) (not mapNonEmpty!11350) (not b_next!6795) (not b!262875) tp_is_empty!6657 b_and!13955 (not b!262882) (not start!25250) (not b!262876) (not b!262873) (not bm!25142) (not b!262890) (not b!262878) (not b!262879) (not b!262874))
(check-sat b_and!13955 (not b_next!6795))
(get-model)

(declare-fun b!262973 () Bool)

(declare-fun e!170437 () SeekEntryResult!1210)

(declare-fun lt!133119 () SeekEntryResult!1210)

(assert (=> b!262973 (= e!170437 (MissingZero!1210 (index!7012 lt!133119)))))

(declare-fun b!262974 () Bool)

(declare-fun e!170436 () SeekEntryResult!1210)

(declare-fun e!170435 () SeekEntryResult!1210)

(assert (=> b!262974 (= e!170436 e!170435)))

(declare-fun lt!133120 () (_ BitVec 64))

(assert (=> b!262974 (= lt!133120 (select (arr!5998 (_keys!7035 thiss!1504)) (index!7012 lt!133119)))))

(declare-fun c!44826 () Bool)

(assert (=> b!262974 (= c!44826 (= lt!133120 key!932))))

(declare-fun b!262975 () Bool)

(declare-fun c!44824 () Bool)

(assert (=> b!262975 (= c!44824 (= lt!133120 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!262975 (= e!170435 e!170437)))

(declare-fun b!262976 () Bool)

(assert (=> b!262976 (= e!170435 (Found!1210 (index!7012 lt!133119)))))

(declare-fun b!262977 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12676 (_ BitVec 32)) SeekEntryResult!1210)

(assert (=> b!262977 (= e!170437 (seekKeyOrZeroReturnVacant!0 (x!25252 lt!133119) (index!7012 lt!133119) (index!7012 lt!133119) key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(declare-fun d!62993 () Bool)

(declare-fun lt!133118 () SeekEntryResult!1210)

(assert (=> d!62993 (and (or ((_ is Undefined!1210) lt!133118) (not ((_ is Found!1210) lt!133118)) (and (bvsge (index!7011 lt!133118) #b00000000000000000000000000000000) (bvslt (index!7011 lt!133118) (size!6349 (_keys!7035 thiss!1504))))) (or ((_ is Undefined!1210) lt!133118) ((_ is Found!1210) lt!133118) (not ((_ is MissingZero!1210) lt!133118)) (and (bvsge (index!7010 lt!133118) #b00000000000000000000000000000000) (bvslt (index!7010 lt!133118) (size!6349 (_keys!7035 thiss!1504))))) (or ((_ is Undefined!1210) lt!133118) ((_ is Found!1210) lt!133118) ((_ is MissingZero!1210) lt!133118) (not ((_ is MissingVacant!1210) lt!133118)) (and (bvsge (index!7013 lt!133118) #b00000000000000000000000000000000) (bvslt (index!7013 lt!133118) (size!6349 (_keys!7035 thiss!1504))))) (or ((_ is Undefined!1210) lt!133118) (ite ((_ is Found!1210) lt!133118) (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7011 lt!133118)) key!932) (ite ((_ is MissingZero!1210) lt!133118) (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7010 lt!133118)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1210) lt!133118) (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7013 lt!133118)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!62993 (= lt!133118 e!170436)))

(declare-fun c!44825 () Bool)

(assert (=> d!62993 (= c!44825 (and ((_ is Intermediate!1210) lt!133119) (undefined!2022 lt!133119)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12676 (_ BitVec 32)) SeekEntryResult!1210)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!62993 (= lt!133119 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11209 thiss!1504)) key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!62993 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!62993 (= (seekEntryOrOpen!0 key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)) lt!133118)))

(declare-fun b!262978 () Bool)

(assert (=> b!262978 (= e!170436 Undefined!1210)))

(assert (= (and d!62993 c!44825) b!262978))

(assert (= (and d!62993 (not c!44825)) b!262974))

(assert (= (and b!262974 c!44826) b!262976))

(assert (= (and b!262974 (not c!44826)) b!262975))

(assert (= (and b!262975 c!44824) b!262973))

(assert (= (and b!262975 (not c!44824)) b!262977))

(declare-fun m!279111 () Bool)

(assert (=> b!262974 m!279111))

(declare-fun m!279113 () Bool)

(assert (=> b!262977 m!279113))

(declare-fun m!279115 () Bool)

(assert (=> d!62993 m!279115))

(declare-fun m!279117 () Bool)

(assert (=> d!62993 m!279117))

(declare-fun m!279119 () Bool)

(assert (=> d!62993 m!279119))

(declare-fun m!279121 () Bool)

(assert (=> d!62993 m!279121))

(declare-fun m!279123 () Bool)

(assert (=> d!62993 m!279123))

(assert (=> d!62993 m!279121))

(declare-fun m!279125 () Bool)

(assert (=> d!62993 m!279125))

(assert (=> b!262873 d!62993))

(declare-fun d!62995 () Bool)

(declare-fun e!170440 () Bool)

(assert (=> d!62995 e!170440))

(declare-fun res!128450 () Bool)

(assert (=> d!62995 (=> (not res!128450) (not e!170440))))

(declare-fun lt!133126 () SeekEntryResult!1210)

(assert (=> d!62995 (= res!128450 ((_ is Found!1210) lt!133126))))

(assert (=> d!62995 (= lt!133126 (seekEntryOrOpen!0 key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(declare-fun lt!133125 () Unit!8187)

(declare-fun choose!1296 (array!12676 array!12674 (_ BitVec 32) (_ BitVec 32) V!8523 V!8523 (_ BitVec 64) Int) Unit!8187)

(assert (=> d!62995 (= lt!133125 (choose!1296 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) key!932 (defaultEntry!4843 thiss!1504)))))

(assert (=> d!62995 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!62995 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!456 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) key!932 (defaultEntry!4843 thiss!1504)) lt!133125)))

(declare-fun b!262983 () Bool)

(declare-fun res!128449 () Bool)

(assert (=> b!262983 (=> (not res!128449) (not e!170440))))

(assert (=> b!262983 (= res!128449 (inRange!0 (index!7011 lt!133126) (mask!11209 thiss!1504)))))

(declare-fun b!262984 () Bool)

(assert (=> b!262984 (= e!170440 (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7011 lt!133126)) key!932))))

(assert (=> b!262984 (and (bvsge (index!7011 lt!133126) #b00000000000000000000000000000000) (bvslt (index!7011 lt!133126) (size!6349 (_keys!7035 thiss!1504))))))

(assert (= (and d!62995 res!128450) b!262983))

(assert (= (and b!262983 res!128449) b!262984))

(assert (=> d!62995 m!279027))

(declare-fun m!279127 () Bool)

(assert (=> d!62995 m!279127))

(assert (=> d!62995 m!279117))

(declare-fun m!279129 () Bool)

(assert (=> b!262983 m!279129))

(declare-fun m!279131 () Bool)

(assert (=> b!262984 m!279131))

(assert (=> b!262882 d!62995))

(declare-fun d!62997 () Bool)

(assert (=> d!62997 (= (inRange!0 (ite c!44803 (index!7010 lt!133040) (index!7013 lt!133040)) (mask!11209 thiss!1504)) (and (bvsge (ite c!44803 (index!7010 lt!133040) (index!7013 lt!133040)) #b00000000000000000000000000000000) (bvslt (ite c!44803 (index!7010 lt!133040) (index!7013 lt!133040)) (bvadd (mask!11209 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!25143 d!62997))

(declare-fun d!62999 () Bool)

(declare-fun e!170445 () Bool)

(assert (=> d!62999 e!170445))

(declare-fun res!128453 () Bool)

(assert (=> d!62999 (=> res!128453 e!170445)))

(declare-fun lt!133136 () Bool)

(assert (=> d!62999 (= res!128453 (not lt!133136))))

(declare-fun lt!133135 () Bool)

(assert (=> d!62999 (= lt!133136 lt!133135)))

(declare-fun lt!133137 () Unit!8187)

(declare-fun e!170446 () Unit!8187)

(assert (=> d!62999 (= lt!133137 e!170446)))

(declare-fun c!44829 () Bool)

(assert (=> d!62999 (= c!44829 lt!133135)))

(declare-fun containsKey!311 (List!3872 (_ BitVec 64)) Bool)

(assert (=> d!62999 (= lt!133135 (containsKey!311 (toList!1966 lt!133031) key!932))))

(assert (=> d!62999 (= (contains!1911 lt!133031 key!932) lt!133136)))

(declare-fun b!262991 () Bool)

(declare-fun lt!133138 () Unit!8187)

(assert (=> b!262991 (= e!170446 lt!133138)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!260 (List!3872 (_ BitVec 64)) Unit!8187)

(assert (=> b!262991 (= lt!133138 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133031) key!932))))

(declare-datatypes ((Option!325 0))(
  ( (Some!324 (v!5504 V!8523)) (None!323) )
))
(declare-fun isDefined!261 (Option!325) Bool)

(declare-fun getValueByKey!319 (List!3872 (_ BitVec 64)) Option!325)

(assert (=> b!262991 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133031) key!932))))

(declare-fun b!262992 () Bool)

(declare-fun Unit!8196 () Unit!8187)

(assert (=> b!262992 (= e!170446 Unit!8196)))

(declare-fun b!262993 () Bool)

(assert (=> b!262993 (= e!170445 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133031) key!932)))))

(assert (= (and d!62999 c!44829) b!262991))

(assert (= (and d!62999 (not c!44829)) b!262992))

(assert (= (and d!62999 (not res!128453)) b!262993))

(declare-fun m!279133 () Bool)

(assert (=> d!62999 m!279133))

(declare-fun m!279135 () Bool)

(assert (=> b!262991 m!279135))

(declare-fun m!279137 () Bool)

(assert (=> b!262991 m!279137))

(assert (=> b!262991 m!279137))

(declare-fun m!279139 () Bool)

(assert (=> b!262991 m!279139))

(assert (=> b!262993 m!279137))

(assert (=> b!262993 m!279137))

(assert (=> b!262993 m!279139))

(assert (=> b!262874 d!62999))

(declare-fun d!63001 () Bool)

(assert (=> d!63001 (= (map!2757 lt!133037) (getCurrentListMap!1489 (_keys!7035 lt!133037) (_values!4826 lt!133037) (mask!11209 lt!133037) (extraKeys!4580 lt!133037) (zeroValue!4684 lt!133037) (minValue!4684 lt!133037) #b00000000000000000000000000000000 (defaultEntry!4843 lt!133037)))))

(declare-fun bs!9248 () Bool)

(assert (= bs!9248 d!63001))

(declare-fun m!279141 () Bool)

(assert (=> bs!9248 m!279141))

(assert (=> b!262874 d!63001))

(declare-fun d!63003 () Bool)

(declare-fun e!170449 () Bool)

(assert (=> d!63003 e!170449))

(declare-fun res!128458 () Bool)

(assert (=> d!63003 (=> (not res!128458) (not e!170449))))

(declare-fun lt!133149 () ListLongMap!3901)

(assert (=> d!63003 (= res!128458 (contains!1911 lt!133149 (_1!2497 lt!133042)))))

(declare-fun lt!133150 () List!3872)

(assert (=> d!63003 (= lt!133149 (ListLongMap!3902 lt!133150))))

(declare-fun lt!133148 () Unit!8187)

(declare-fun lt!133147 () Unit!8187)

(assert (=> d!63003 (= lt!133148 lt!133147)))

(assert (=> d!63003 (= (getValueByKey!319 lt!133150 (_1!2497 lt!133042)) (Some!324 (_2!2497 lt!133042)))))

(declare-fun lemmaContainsTupThenGetReturnValue!177 (List!3872 (_ BitVec 64) V!8523) Unit!8187)

(assert (=> d!63003 (= lt!133147 (lemmaContainsTupThenGetReturnValue!177 lt!133150 (_1!2497 lt!133042) (_2!2497 lt!133042)))))

(declare-fun insertStrictlySorted!179 (List!3872 (_ BitVec 64) V!8523) List!3872)

(assert (=> d!63003 (= lt!133150 (insertStrictlySorted!179 (toList!1966 (map!2757 thiss!1504)) (_1!2497 lt!133042) (_2!2497 lt!133042)))))

(assert (=> d!63003 (= (+!705 (map!2757 thiss!1504) lt!133042) lt!133149)))

(declare-fun b!262998 () Bool)

(declare-fun res!128459 () Bool)

(assert (=> b!262998 (=> (not res!128459) (not e!170449))))

(assert (=> b!262998 (= res!128459 (= (getValueByKey!319 (toList!1966 lt!133149) (_1!2497 lt!133042)) (Some!324 (_2!2497 lt!133042))))))

(declare-fun b!262999 () Bool)

(declare-fun contains!1913 (List!3872 tuple2!4974) Bool)

(assert (=> b!262999 (= e!170449 (contains!1913 (toList!1966 lt!133149) lt!133042))))

(assert (= (and d!63003 res!128458) b!262998))

(assert (= (and b!262998 res!128459) b!262999))

(declare-fun m!279143 () Bool)

(assert (=> d!63003 m!279143))

(declare-fun m!279145 () Bool)

(assert (=> d!63003 m!279145))

(declare-fun m!279147 () Bool)

(assert (=> d!63003 m!279147))

(declare-fun m!279149 () Bool)

(assert (=> d!63003 m!279149))

(declare-fun m!279151 () Bool)

(assert (=> b!262998 m!279151))

(declare-fun m!279153 () Bool)

(assert (=> b!262999 m!279153))

(assert (=> b!262876 d!63003))

(declare-fun d!63005 () Bool)

(assert (=> d!63005 (= (map!2757 thiss!1504) (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun bs!9249 () Bool)

(assert (= bs!9249 d!63005))

(assert (=> bs!9249 m!279023))

(assert (=> b!262876 d!63005))

(declare-fun d!63007 () Bool)

(assert (=> d!63007 (contains!1911 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) key!932)))

(declare-fun lt!133153 () Unit!8187)

(declare-fun choose!1297 (array!12676 array!12674 (_ BitVec 32) (_ BitVec 32) V!8523 V!8523 (_ BitVec 64) (_ BitVec 32) Int) Unit!8187)

(assert (=> d!63007 (= lt!133153 (choose!1297 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(assert (=> d!63007 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63007 (= (lemmaArrayContainsKeyThenInListMap!262 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) lt!133153)))

(declare-fun bs!9250 () Bool)

(assert (= bs!9250 d!63007))

(assert (=> bs!9250 m!279023))

(assert (=> bs!9250 m!279023))

(declare-fun m!279155 () Bool)

(assert (=> bs!9250 m!279155))

(declare-fun m!279157 () Bool)

(assert (=> bs!9250 m!279157))

(assert (=> bs!9250 m!279117))

(assert (=> b!262875 d!63007))

(declare-fun b!263016 () Bool)

(declare-fun res!128468 () Bool)

(declare-fun e!170460 () Bool)

(assert (=> b!263016 (=> (not res!128468) (not e!170460))))

(declare-fun lt!133158 () SeekEntryResult!1210)

(assert (=> b!263016 (= res!128468 (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7013 lt!133158)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!263016 (and (bvsge (index!7013 lt!133158) #b00000000000000000000000000000000) (bvslt (index!7013 lt!133158) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun d!63009 () Bool)

(declare-fun e!170461 () Bool)

(assert (=> d!63009 e!170461))

(declare-fun c!44834 () Bool)

(assert (=> d!63009 (= c!44834 ((_ is MissingZero!1210) lt!133158))))

(assert (=> d!63009 (= lt!133158 (seekEntryOrOpen!0 key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(declare-fun lt!133159 () Unit!8187)

(declare-fun choose!1298 (array!12676 array!12674 (_ BitVec 32) (_ BitVec 32) V!8523 V!8523 (_ BitVec 64) Int) Unit!8187)

(assert (=> d!63009 (= lt!133159 (choose!1298 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) key!932 (defaultEntry!4843 thiss!1504)))))

(assert (=> d!63009 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63009 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!453 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) key!932 (defaultEntry!4843 thiss!1504)) lt!133159)))

(declare-fun b!263017 () Bool)

(declare-fun res!128469 () Bool)

(assert (=> b!263017 (=> (not res!128469) (not e!170460))))

(declare-fun call!25157 () Bool)

(assert (=> b!263017 (= res!128469 call!25157)))

(declare-fun e!170459 () Bool)

(assert (=> b!263017 (= e!170459 e!170460)))

(declare-fun b!263018 () Bool)

(declare-fun e!170458 () Bool)

(assert (=> b!263018 (= e!170461 e!170458)))

(declare-fun res!128471 () Bool)

(assert (=> b!263018 (= res!128471 call!25157)))

(assert (=> b!263018 (=> (not res!128471) (not e!170458))))

(declare-fun b!263019 () Bool)

(assert (=> b!263019 (= e!170459 ((_ is Undefined!1210) lt!133158))))

(declare-fun b!263020 () Bool)

(assert (=> b!263020 (and (bvsge (index!7010 lt!133158) #b00000000000000000000000000000000) (bvslt (index!7010 lt!133158) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun res!128470 () Bool)

(assert (=> b!263020 (= res!128470 (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7010 lt!133158)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!263020 (=> (not res!128470) (not e!170458))))

(declare-fun bm!25154 () Bool)

(assert (=> bm!25154 (= call!25157 (inRange!0 (ite c!44834 (index!7010 lt!133158) (index!7013 lt!133158)) (mask!11209 thiss!1504)))))

(declare-fun b!263021 () Bool)

(declare-fun call!25158 () Bool)

(assert (=> b!263021 (= e!170460 (not call!25158))))

(declare-fun b!263022 () Bool)

(assert (=> b!263022 (= e!170461 e!170459)))

(declare-fun c!44835 () Bool)

(assert (=> b!263022 (= c!44835 ((_ is MissingVacant!1210) lt!133158))))

(declare-fun b!263023 () Bool)

(assert (=> b!263023 (= e!170458 (not call!25158))))

(declare-fun bm!25155 () Bool)

(assert (=> bm!25155 (= call!25158 (arrayContainsKey!0 (_keys!7035 thiss!1504) key!932 #b00000000000000000000000000000000))))

(assert (= (and d!63009 c!44834) b!263018))

(assert (= (and d!63009 (not c!44834)) b!263022))

(assert (= (and b!263018 res!128471) b!263020))

(assert (= (and b!263020 res!128470) b!263023))

(assert (= (and b!263022 c!44835) b!263017))

(assert (= (and b!263022 (not c!44835)) b!263019))

(assert (= (and b!263017 res!128469) b!263016))

(assert (= (and b!263016 res!128468) b!263021))

(assert (= (or b!263018 b!263017) bm!25154))

(assert (= (or b!263023 b!263021) bm!25155))

(assert (=> d!63009 m!279027))

(declare-fun m!279159 () Bool)

(assert (=> d!63009 m!279159))

(assert (=> d!63009 m!279117))

(declare-fun m!279161 () Bool)

(assert (=> b!263020 m!279161))

(declare-fun m!279163 () Bool)

(assert (=> b!263016 m!279163))

(declare-fun m!279165 () Bool)

(assert (=> bm!25154 m!279165))

(assert (=> bm!25155 m!278979))

(assert (=> b!262887 d!63009))

(declare-fun d!63011 () Bool)

(assert (=> d!63011 (= (inRange!0 index!297 (mask!11209 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!11209 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!262878 d!63011))

(declare-fun d!63013 () Bool)

(declare-fun e!170462 () Bool)

(assert (=> d!63013 e!170462))

(declare-fun res!128472 () Bool)

(assert (=> d!63013 (=> res!128472 e!170462)))

(declare-fun lt!133161 () Bool)

(assert (=> d!63013 (= res!128472 (not lt!133161))))

(declare-fun lt!133160 () Bool)

(assert (=> d!63013 (= lt!133161 lt!133160)))

(declare-fun lt!133162 () Unit!8187)

(declare-fun e!170463 () Unit!8187)

(assert (=> d!63013 (= lt!133162 e!170463)))

(declare-fun c!44836 () Bool)

(assert (=> d!63013 (= c!44836 lt!133160)))

(assert (=> d!63013 (= lt!133160 (containsKey!311 (toList!1966 lt!133034) key!932))))

(assert (=> d!63013 (= (contains!1911 lt!133034 key!932) lt!133161)))

(declare-fun b!263024 () Bool)

(declare-fun lt!133163 () Unit!8187)

(assert (=> b!263024 (= e!170463 lt!133163)))

(assert (=> b!263024 (= lt!133163 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133034) key!932))))

(assert (=> b!263024 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133034) key!932))))

(declare-fun b!263025 () Bool)

(declare-fun Unit!8197 () Unit!8187)

(assert (=> b!263025 (= e!170463 Unit!8197)))

(declare-fun b!263026 () Bool)

(assert (=> b!263026 (= e!170462 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133034) key!932)))))

(assert (= (and d!63013 c!44836) b!263024))

(assert (= (and d!63013 (not c!44836)) b!263025))

(assert (= (and d!63013 (not res!128472)) b!263026))

(declare-fun m!279167 () Bool)

(assert (=> d!63013 m!279167))

(declare-fun m!279169 () Bool)

(assert (=> b!263024 m!279169))

(declare-fun m!279171 () Bool)

(assert (=> b!263024 m!279171))

(assert (=> b!263024 m!279171))

(declare-fun m!279173 () Bool)

(assert (=> b!263024 m!279173))

(assert (=> b!263026 m!279171))

(assert (=> b!263026 m!279171))

(assert (=> b!263026 m!279173))

(assert (=> b!262878 d!63013))

(declare-fun d!63015 () Bool)

(declare-fun e!170494 () Bool)

(assert (=> d!63015 e!170494))

(declare-fun res!128499 () Bool)

(assert (=> d!63015 (=> (not res!128499) (not e!170494))))

(assert (=> d!63015 (= res!128499 (or (bvsge #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))))))))

(declare-fun lt!133223 () ListLongMap!3901)

(declare-fun lt!133214 () ListLongMap!3901)

(assert (=> d!63015 (= lt!133223 lt!133214)))

(declare-fun lt!133217 () Unit!8187)

(declare-fun e!170490 () Unit!8187)

(assert (=> d!63015 (= lt!133217 e!170490)))

(declare-fun c!44849 () Bool)

(declare-fun e!170497 () Bool)

(assert (=> d!63015 (= c!44849 e!170497)))

(declare-fun res!128494 () Bool)

(assert (=> d!63015 (=> (not res!128494) (not e!170497))))

(assert (=> d!63015 (= res!128494 (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun e!170492 () ListLongMap!3901)

(assert (=> d!63015 (= lt!133214 e!170492)))

(declare-fun c!44853 () Bool)

(assert (=> d!63015 (= c!44853 (and (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!63015 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63015 (= (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) lt!133223)))

(declare-fun b!263069 () Bool)

(declare-fun Unit!8198 () Unit!8187)

(assert (=> b!263069 (= e!170490 Unit!8198)))

(declare-fun b!263070 () Bool)

(declare-fun e!170499 () Bool)

(declare-fun apply!262 (ListLongMap!3901 (_ BitVec 64)) V!8523)

(declare-fun get!3094 (ValueCell!2985 V!8523) V!8523)

(declare-fun dynLambda!600 (Int (_ BitVec 64)) V!8523)

(assert (=> b!263070 (= e!170499 (= (apply!262 lt!133223 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!263070 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6348 (_values!4826 thiss!1504))))))

(assert (=> b!263070 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun b!263071 () Bool)

(declare-fun e!170500 () Bool)

(declare-fun call!25177 () Bool)

(assert (=> b!263071 (= e!170500 (not call!25177))))

(declare-fun b!263072 () Bool)

(assert (=> b!263072 (= e!170494 e!170500)))

(declare-fun c!44852 () Bool)

(assert (=> b!263072 (= c!44852 (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!263073 () Bool)

(declare-fun e!170502 () Bool)

(assert (=> b!263073 (= e!170502 (= (apply!262 lt!133223 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4684 thiss!1504)))))

(declare-fun bm!25170 () Bool)

(declare-fun call!25175 () ListLongMap!3901)

(declare-fun getCurrentListMapNoExtraKeys!581 (array!12676 array!12674 (_ BitVec 32) (_ BitVec 32) V!8523 V!8523 (_ BitVec 32) Int) ListLongMap!3901)

(assert (=> bm!25170 (= call!25175 (getCurrentListMapNoExtraKeys!581 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun b!263074 () Bool)

(declare-fun res!128491 () Bool)

(assert (=> b!263074 (=> (not res!128491) (not e!170494))))

(declare-fun e!170491 () Bool)

(assert (=> b!263074 (= res!128491 e!170491)))

(declare-fun c!44851 () Bool)

(assert (=> b!263074 (= c!44851 (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!263075 () Bool)

(declare-fun res!128493 () Bool)

(assert (=> b!263075 (=> (not res!128493) (not e!170494))))

(declare-fun e!170496 () Bool)

(assert (=> b!263075 (= res!128493 e!170496)))

(declare-fun res!128492 () Bool)

(assert (=> b!263075 (=> res!128492 e!170496)))

(declare-fun e!170498 () Bool)

(assert (=> b!263075 (= res!128492 (not e!170498))))

(declare-fun res!128495 () Bool)

(assert (=> b!263075 (=> (not res!128495) (not e!170498))))

(assert (=> b!263075 (= res!128495 (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun bm!25171 () Bool)

(assert (=> bm!25171 (= call!25177 (contains!1911 lt!133223 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263076 () Bool)

(declare-fun lt!133228 () Unit!8187)

(assert (=> b!263076 (= e!170490 lt!133228)))

(declare-fun lt!133229 () ListLongMap!3901)

(assert (=> b!263076 (= lt!133229 (getCurrentListMapNoExtraKeys!581 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun lt!133209 () (_ BitVec 64))

(assert (=> b!263076 (= lt!133209 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133222 () (_ BitVec 64))

(assert (=> b!263076 (= lt!133222 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!133219 () Unit!8187)

(declare-fun addStillContains!238 (ListLongMap!3901 (_ BitVec 64) V!8523 (_ BitVec 64)) Unit!8187)

(assert (=> b!263076 (= lt!133219 (addStillContains!238 lt!133229 lt!133209 (zeroValue!4684 thiss!1504) lt!133222))))

(assert (=> b!263076 (contains!1911 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))) lt!133222)))

(declare-fun lt!133211 () Unit!8187)

(assert (=> b!263076 (= lt!133211 lt!133219)))

(declare-fun lt!133225 () ListLongMap!3901)

(assert (=> b!263076 (= lt!133225 (getCurrentListMapNoExtraKeys!581 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun lt!133224 () (_ BitVec 64))

(assert (=> b!263076 (= lt!133224 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133208 () (_ BitVec 64))

(assert (=> b!263076 (= lt!133208 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!133227 () Unit!8187)

(declare-fun addApplyDifferent!238 (ListLongMap!3901 (_ BitVec 64) V!8523 (_ BitVec 64)) Unit!8187)

(assert (=> b!263076 (= lt!133227 (addApplyDifferent!238 lt!133225 lt!133224 (minValue!4684 thiss!1504) lt!133208))))

(assert (=> b!263076 (= (apply!262 (+!705 lt!133225 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))) lt!133208) (apply!262 lt!133225 lt!133208))))

(declare-fun lt!133213 () Unit!8187)

(assert (=> b!263076 (= lt!133213 lt!133227)))

(declare-fun lt!133215 () ListLongMap!3901)

(assert (=> b!263076 (= lt!133215 (getCurrentListMapNoExtraKeys!581 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun lt!133216 () (_ BitVec 64))

(assert (=> b!263076 (= lt!133216 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133220 () (_ BitVec 64))

(assert (=> b!263076 (= lt!133220 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!133226 () Unit!8187)

(assert (=> b!263076 (= lt!133226 (addApplyDifferent!238 lt!133215 lt!133216 (zeroValue!4684 thiss!1504) lt!133220))))

(assert (=> b!263076 (= (apply!262 (+!705 lt!133215 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))) lt!133220) (apply!262 lt!133215 lt!133220))))

(declare-fun lt!133218 () Unit!8187)

(assert (=> b!263076 (= lt!133218 lt!133226)))

(declare-fun lt!133221 () ListLongMap!3901)

(assert (=> b!263076 (= lt!133221 (getCurrentListMapNoExtraKeys!581 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun lt!133210 () (_ BitVec 64))

(assert (=> b!263076 (= lt!133210 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133212 () (_ BitVec 64))

(assert (=> b!263076 (= lt!133212 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!263076 (= lt!133228 (addApplyDifferent!238 lt!133221 lt!133210 (minValue!4684 thiss!1504) lt!133212))))

(assert (=> b!263076 (= (apply!262 (+!705 lt!133221 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))) lt!133212) (apply!262 lt!133221 lt!133212))))

(declare-fun bm!25172 () Bool)

(declare-fun call!25174 () ListLongMap!3901)

(declare-fun call!25173 () ListLongMap!3901)

(assert (=> bm!25172 (= call!25174 call!25173)))

(declare-fun b!263077 () Bool)

(declare-fun e!170493 () ListLongMap!3901)

(declare-fun call!25178 () ListLongMap!3901)

(assert (=> b!263077 (= e!170493 call!25178)))

(declare-fun b!263078 () Bool)

(declare-fun call!25179 () ListLongMap!3901)

(assert (=> b!263078 (= e!170492 (+!705 call!25179 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))

(declare-fun bm!25173 () Bool)

(assert (=> bm!25173 (= call!25173 call!25175)))

(declare-fun b!263079 () Bool)

(declare-fun e!170495 () Bool)

(assert (=> b!263079 (= e!170495 (= (apply!262 lt!133223 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4684 thiss!1504)))))

(declare-fun bm!25174 () Bool)

(declare-fun c!44850 () Bool)

(assert (=> bm!25174 (= call!25179 (+!705 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174)) (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!263080 () Bool)

(declare-fun c!44854 () Bool)

(assert (=> b!263080 (= c!44854 (and (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!170501 () ListLongMap!3901)

(assert (=> b!263080 (= e!170493 e!170501)))

(declare-fun b!263081 () Bool)

(assert (=> b!263081 (= e!170491 e!170502)))

(declare-fun res!128496 () Bool)

(declare-fun call!25176 () Bool)

(assert (=> b!263081 (= res!128496 call!25176)))

(assert (=> b!263081 (=> (not res!128496) (not e!170502))))

(declare-fun b!263082 () Bool)

(assert (=> b!263082 (= e!170501 call!25178)))

(declare-fun b!263083 () Bool)

(assert (=> b!263083 (= e!170496 e!170499)))

(declare-fun res!128497 () Bool)

(assert (=> b!263083 (=> (not res!128497) (not e!170499))))

(assert (=> b!263083 (= res!128497 (contains!1911 lt!133223 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!263083 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun bm!25175 () Bool)

(assert (=> bm!25175 (= call!25176 (contains!1911 lt!133223 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263084 () Bool)

(assert (=> b!263084 (= e!170492 e!170493)))

(assert (=> b!263084 (= c!44850 (and (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!263085 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!263085 (= e!170498 (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!263086 () Bool)

(assert (=> b!263086 (= e!170491 (not call!25176))))

(declare-fun b!263087 () Bool)

(assert (=> b!263087 (= e!170501 call!25174)))

(declare-fun b!263088 () Bool)

(assert (=> b!263088 (= e!170500 e!170495)))

(declare-fun res!128498 () Bool)

(assert (=> b!263088 (= res!128498 call!25177)))

(assert (=> b!263088 (=> (not res!128498) (not e!170495))))

(declare-fun b!263089 () Bool)

(assert (=> b!263089 (= e!170497 (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!25176 () Bool)

(assert (=> bm!25176 (= call!25178 call!25179)))

(assert (= (and d!63015 c!44853) b!263078))

(assert (= (and d!63015 (not c!44853)) b!263084))

(assert (= (and b!263084 c!44850) b!263077))

(assert (= (and b!263084 (not c!44850)) b!263080))

(assert (= (and b!263080 c!44854) b!263082))

(assert (= (and b!263080 (not c!44854)) b!263087))

(assert (= (or b!263082 b!263087) bm!25172))

(assert (= (or b!263077 bm!25172) bm!25173))

(assert (= (or b!263077 b!263082) bm!25176))

(assert (= (or b!263078 bm!25173) bm!25170))

(assert (= (or b!263078 bm!25176) bm!25174))

(assert (= (and d!63015 res!128494) b!263089))

(assert (= (and d!63015 c!44849) b!263076))

(assert (= (and d!63015 (not c!44849)) b!263069))

(assert (= (and d!63015 res!128499) b!263075))

(assert (= (and b!263075 res!128495) b!263085))

(assert (= (and b!263075 (not res!128492)) b!263083))

(assert (= (and b!263083 res!128497) b!263070))

(assert (= (and b!263075 res!128493) b!263074))

(assert (= (and b!263074 c!44851) b!263081))

(assert (= (and b!263074 (not c!44851)) b!263086))

(assert (= (and b!263081 res!128496) b!263073))

(assert (= (or b!263081 b!263086) bm!25175))

(assert (= (and b!263074 res!128491) b!263072))

(assert (= (and b!263072 c!44852) b!263088))

(assert (= (and b!263072 (not c!44852)) b!263071))

(assert (= (and b!263088 res!128498) b!263079))

(assert (= (or b!263088 b!263071) bm!25171))

(declare-fun b_lambda!8361 () Bool)

(assert (=> (not b_lambda!8361) (not b!263070)))

(declare-fun t!8961 () Bool)

(declare-fun tb!3045 () Bool)

(assert (=> (and b!262890 (= (defaultEntry!4843 thiss!1504) (defaultEntry!4843 thiss!1504)) t!8961) tb!3045))

(declare-fun result!5441 () Bool)

(assert (=> tb!3045 (= result!5441 tp_is_empty!6657)))

(assert (=> b!263070 t!8961))

(declare-fun b_and!13959 () Bool)

(assert (= b_and!13955 (and (=> t!8961 result!5441) b_and!13959)))

(declare-fun m!279175 () Bool)

(assert (=> bm!25174 m!279175))

(declare-fun m!279177 () Bool)

(assert (=> b!263085 m!279177))

(assert (=> b!263085 m!279177))

(declare-fun m!279179 () Bool)

(assert (=> b!263085 m!279179))

(assert (=> b!263089 m!279177))

(assert (=> b!263089 m!279177))

(assert (=> b!263089 m!279179))

(declare-fun m!279181 () Bool)

(assert (=> bm!25175 m!279181))

(declare-fun m!279183 () Bool)

(assert (=> bm!25170 m!279183))

(declare-fun m!279185 () Bool)

(assert (=> b!263073 m!279185))

(assert (=> d!63015 m!279117))

(declare-fun m!279187 () Bool)

(assert (=> bm!25171 m!279187))

(assert (=> b!263083 m!279177))

(assert (=> b!263083 m!279177))

(declare-fun m!279189 () Bool)

(assert (=> b!263083 m!279189))

(declare-fun m!279191 () Bool)

(assert (=> b!263078 m!279191))

(declare-fun m!279193 () Bool)

(assert (=> b!263076 m!279193))

(declare-fun m!279195 () Bool)

(assert (=> b!263076 m!279195))

(declare-fun m!279197 () Bool)

(assert (=> b!263076 m!279197))

(declare-fun m!279199 () Bool)

(assert (=> b!263076 m!279199))

(declare-fun m!279201 () Bool)

(assert (=> b!263076 m!279201))

(assert (=> b!263076 m!279197))

(assert (=> b!263076 m!279177))

(declare-fun m!279203 () Bool)

(assert (=> b!263076 m!279203))

(assert (=> b!263076 m!279201))

(declare-fun m!279205 () Bool)

(assert (=> b!263076 m!279205))

(declare-fun m!279207 () Bool)

(assert (=> b!263076 m!279207))

(assert (=> b!263076 m!279193))

(declare-fun m!279209 () Bool)

(assert (=> b!263076 m!279209))

(assert (=> b!263076 m!279183))

(declare-fun m!279211 () Bool)

(assert (=> b!263076 m!279211))

(declare-fun m!279213 () Bool)

(assert (=> b!263076 m!279213))

(declare-fun m!279215 () Bool)

(assert (=> b!263076 m!279215))

(assert (=> b!263076 m!279213))

(declare-fun m!279217 () Bool)

(assert (=> b!263076 m!279217))

(declare-fun m!279219 () Bool)

(assert (=> b!263076 m!279219))

(declare-fun m!279221 () Bool)

(assert (=> b!263076 m!279221))

(declare-fun m!279223 () Bool)

(assert (=> b!263079 m!279223))

(assert (=> b!263070 m!279177))

(declare-fun m!279225 () Bool)

(assert (=> b!263070 m!279225))

(declare-fun m!279227 () Bool)

(assert (=> b!263070 m!279227))

(declare-fun m!279229 () Bool)

(assert (=> b!263070 m!279229))

(declare-fun m!279231 () Bool)

(assert (=> b!263070 m!279231))

(assert (=> b!263070 m!279229))

(assert (=> b!263070 m!279227))

(assert (=> b!263070 m!279177))

(assert (=> b!262878 d!63015))

(declare-fun b!263100 () Bool)

(declare-fun e!170507 () (_ BitVec 32))

(assert (=> b!263100 (= e!170507 #b00000000000000000000000000000000)))

(declare-fun b!263102 () Bool)

(declare-fun e!170508 () (_ BitVec 32))

(assert (=> b!263102 (= e!170507 e!170508)))

(declare-fun c!44860 () Bool)

(assert (=> b!263102 (= c!44860 (validKeyInArray!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun b!263103 () Bool)

(declare-fun call!25182 () (_ BitVec 32))

(assert (=> b!263103 (= e!170508 call!25182)))

(declare-fun bm!25179 () Bool)

(assert (=> bm!25179 (= call!25182 (arrayCountValidKeys!0 lt!133048 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun d!63017 () Bool)

(declare-fun lt!133232 () (_ BitVec 32))

(assert (=> d!63017 (and (bvsge lt!133232 #b00000000000000000000000000000000) (bvsle lt!133232 (bvsub (size!6349 lt!133048) #b00000000000000000000000000000000)))))

(assert (=> d!63017 (= lt!133232 e!170507)))

(declare-fun c!44859 () Bool)

(assert (=> d!63017 (= c!44859 (bvsge #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63017 (and (bvsle #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6349 (_keys!7035 thiss!1504)) (size!6349 lt!133048)))))

(assert (=> d!63017 (= (arrayCountValidKeys!0 lt!133048 #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))) lt!133232)))

(declare-fun b!263101 () Bool)

(assert (=> b!263101 (= e!170508 (bvadd #b00000000000000000000000000000001 call!25182))))

(assert (= (and d!63017 c!44859) b!263100))

(assert (= (and d!63017 (not c!44859)) b!263102))

(assert (= (and b!263102 c!44860) b!263101))

(assert (= (and b!263102 (not c!44860)) b!263103))

(assert (= (or b!263101 b!263103) bm!25179))

(declare-fun m!279233 () Bool)

(assert (=> b!263102 m!279233))

(assert (=> b!263102 m!279233))

(declare-fun m!279235 () Bool)

(assert (=> b!263102 m!279235))

(declare-fun m!279237 () Bool)

(assert (=> bm!25179 m!279237))

(assert (=> b!262879 d!63017))

(declare-fun b!263112 () Bool)

(declare-fun res!128511 () Bool)

(declare-fun e!170513 () Bool)

(assert (=> b!263112 (=> (not res!128511) (not e!170513))))

(assert (=> b!263112 (= res!128511 (not (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) index!297))))))

(declare-fun e!170514 () Bool)

(declare-fun b!263115 () Bool)

(assert (=> b!263115 (= e!170514 (= (arrayCountValidKeys!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!7035 thiss!1504) #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun d!63019 () Bool)

(assert (=> d!63019 e!170514))

(declare-fun res!128510 () Bool)

(assert (=> d!63019 (=> (not res!128510) (not e!170514))))

(assert (=> d!63019 (= res!128510 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6349 (_keys!7035 thiss!1504)))))))

(declare-fun lt!133235 () Unit!8187)

(declare-fun choose!1 (array!12676 (_ BitVec 32) (_ BitVec 64)) Unit!8187)

(assert (=> d!63019 (= lt!133235 (choose!1 (_keys!7035 thiss!1504) index!297 key!932))))

(assert (=> d!63019 e!170513))

(declare-fun res!128508 () Bool)

(assert (=> d!63019 (=> (not res!128508) (not e!170513))))

(assert (=> d!63019 (= res!128508 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6349 (_keys!7035 thiss!1504)))))))

(assert (=> d!63019 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!7035 thiss!1504) index!297 key!932) lt!133235)))

(declare-fun b!263113 () Bool)

(declare-fun res!128509 () Bool)

(assert (=> b!263113 (=> (not res!128509) (not e!170513))))

(assert (=> b!263113 (= res!128509 (validKeyInArray!0 key!932))))

(declare-fun b!263114 () Bool)

(assert (=> b!263114 (= e!170513 (bvslt (size!6349 (_keys!7035 thiss!1504)) #b01111111111111111111111111111111))))

(assert (= (and d!63019 res!128508) b!263112))

(assert (= (and b!263112 res!128511) b!263113))

(assert (= (and b!263113 res!128509) b!263114))

(assert (= (and d!63019 res!128510) b!263115))

(declare-fun m!279239 () Bool)

(assert (=> b!263112 m!279239))

(assert (=> b!263112 m!279239))

(declare-fun m!279241 () Bool)

(assert (=> b!263112 m!279241))

(assert (=> b!263115 m!278995))

(declare-fun m!279243 () Bool)

(assert (=> b!263115 m!279243))

(assert (=> b!263115 m!278997))

(declare-fun m!279245 () Bool)

(assert (=> d!63019 m!279245))

(declare-fun m!279247 () Bool)

(assert (=> b!263113 m!279247))

(assert (=> b!262879 d!63019))

(declare-fun b!263125 () Bool)

(declare-fun e!170521 () Bool)

(declare-fun call!25185 () Bool)

(assert (=> b!263125 (= e!170521 call!25185)))

(declare-fun b!263126 () Bool)

(declare-fun e!170522 () Bool)

(assert (=> b!263126 (= e!170521 e!170522)))

(declare-fun lt!133242 () (_ BitVec 64))

(assert (=> b!263126 (= lt!133242 (select (arr!5998 lt!133048) #b00000000000000000000000000000000))))

(declare-fun lt!133243 () Unit!8187)

(assert (=> b!263126 (= lt!133243 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!133048 lt!133242 #b00000000000000000000000000000000))))

(assert (=> b!263126 (arrayContainsKey!0 lt!133048 lt!133242 #b00000000000000000000000000000000)))

(declare-fun lt!133244 () Unit!8187)

(assert (=> b!263126 (= lt!133244 lt!133243)))

(declare-fun res!128517 () Bool)

(assert (=> b!263126 (= res!128517 (= (seekEntryOrOpen!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) lt!133048 (mask!11209 thiss!1504)) (Found!1210 #b00000000000000000000000000000000)))))

(assert (=> b!263126 (=> (not res!128517) (not e!170522))))

(declare-fun b!263127 () Bool)

(assert (=> b!263127 (= e!170522 call!25185)))

(declare-fun bm!25182 () Bool)

(assert (=> bm!25182 (= call!25185 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!133048 (mask!11209 thiss!1504)))))

(declare-fun b!263124 () Bool)

(declare-fun e!170523 () Bool)

(assert (=> b!263124 (= e!170523 e!170521)))

(declare-fun c!44863 () Bool)

(assert (=> b!263124 (= c!44863 (validKeyInArray!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun d!63021 () Bool)

(declare-fun res!128516 () Bool)

(assert (=> d!63021 (=> res!128516 e!170523)))

(assert (=> d!63021 (= res!128516 (bvsge #b00000000000000000000000000000000 (size!6349 lt!133048)))))

(assert (=> d!63021 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!133048 (mask!11209 thiss!1504)) e!170523)))

(assert (= (and d!63021 (not res!128516)) b!263124))

(assert (= (and b!263124 c!44863) b!263126))

(assert (= (and b!263124 (not c!44863)) b!263125))

(assert (= (and b!263126 res!128517) b!263127))

(assert (= (or b!263127 b!263125) bm!25182))

(assert (=> b!263126 m!279233))

(declare-fun m!279249 () Bool)

(assert (=> b!263126 m!279249))

(declare-fun m!279251 () Bool)

(assert (=> b!263126 m!279251))

(assert (=> b!263126 m!279233))

(declare-fun m!279253 () Bool)

(assert (=> b!263126 m!279253))

(declare-fun m!279255 () Bool)

(assert (=> bm!25182 m!279255))

(assert (=> b!263124 m!279233))

(assert (=> b!263124 m!279233))

(assert (=> b!263124 m!279235))

(assert (=> b!262879 d!63021))

(declare-fun b!263138 () Bool)

(declare-fun e!170532 () Bool)

(declare-fun contains!1914 (List!3873 (_ BitVec 64)) Bool)

(assert (=> b!263138 (= e!170532 (contains!1914 Nil!3870 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun b!263140 () Bool)

(declare-fun e!170535 () Bool)

(declare-fun call!25188 () Bool)

(assert (=> b!263140 (= e!170535 call!25188)))

(declare-fun b!263141 () Bool)

(declare-fun e!170533 () Bool)

(assert (=> b!263141 (= e!170533 e!170535)))

(declare-fun c!44866 () Bool)

(assert (=> b!263141 (= c!44866 (validKeyInArray!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun b!263139 () Bool)

(declare-fun e!170534 () Bool)

(assert (=> b!263139 (= e!170534 e!170533)))

(declare-fun res!128525 () Bool)

(assert (=> b!263139 (=> (not res!128525) (not e!170533))))

(assert (=> b!263139 (= res!128525 (not e!170532))))

(declare-fun res!128526 () Bool)

(assert (=> b!263139 (=> (not res!128526) (not e!170532))))

(assert (=> b!263139 (= res!128526 (validKeyInArray!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun d!63023 () Bool)

(declare-fun res!128524 () Bool)

(assert (=> d!63023 (=> res!128524 e!170534)))

(assert (=> d!63023 (= res!128524 (bvsge #b00000000000000000000000000000000 (size!6349 lt!133048)))))

(assert (=> d!63023 (= (arrayNoDuplicates!0 lt!133048 #b00000000000000000000000000000000 Nil!3870) e!170534)))

(declare-fun bm!25185 () Bool)

(assert (=> bm!25185 (= call!25188 (arrayNoDuplicates!0 lt!133048 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870)))))

(declare-fun b!263142 () Bool)

(assert (=> b!263142 (= e!170535 call!25188)))

(assert (= (and d!63023 (not res!128524)) b!263139))

(assert (= (and b!263139 res!128526) b!263138))

(assert (= (and b!263139 res!128525) b!263141))

(assert (= (and b!263141 c!44866) b!263140))

(assert (= (and b!263141 (not c!44866)) b!263142))

(assert (= (or b!263140 b!263142) bm!25185))

(assert (=> b!263138 m!279233))

(assert (=> b!263138 m!279233))

(declare-fun m!279257 () Bool)

(assert (=> b!263138 m!279257))

(assert (=> b!263141 m!279233))

(assert (=> b!263141 m!279233))

(assert (=> b!263141 m!279235))

(assert (=> b!263139 m!279233))

(assert (=> b!263139 m!279233))

(assert (=> b!263139 m!279235))

(assert (=> bm!25185 m!279233))

(declare-fun m!279259 () Bool)

(assert (=> bm!25185 m!279259))

(assert (=> b!262879 d!63023))

(declare-fun b!263143 () Bool)

(declare-fun e!170536 () (_ BitVec 32))

(assert (=> b!263143 (= e!170536 #b00000000000000000000000000000000)))

(declare-fun b!263145 () Bool)

(declare-fun e!170537 () (_ BitVec 32))

(assert (=> b!263145 (= e!170536 e!170537)))

(declare-fun c!44868 () Bool)

(assert (=> b!263145 (= c!44868 (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!263146 () Bool)

(declare-fun call!25189 () (_ BitVec 32))

(assert (=> b!263146 (= e!170537 call!25189)))

(declare-fun bm!25186 () Bool)

(assert (=> bm!25186 (= call!25189 (arrayCountValidKeys!0 (_keys!7035 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun d!63025 () Bool)

(declare-fun lt!133245 () (_ BitVec 32))

(assert (=> d!63025 (and (bvsge lt!133245 #b00000000000000000000000000000000) (bvsle lt!133245 (bvsub (size!6349 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!63025 (= lt!133245 e!170536)))

(declare-fun c!44867 () Bool)

(assert (=> d!63025 (= c!44867 (bvsge #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63025 (and (bvsle #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6349 (_keys!7035 thiss!1504)) (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63025 (= (arrayCountValidKeys!0 (_keys!7035 thiss!1504) #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))) lt!133245)))

(declare-fun b!263144 () Bool)

(assert (=> b!263144 (= e!170537 (bvadd #b00000000000000000000000000000001 call!25189))))

(assert (= (and d!63025 c!44867) b!263143))

(assert (= (and d!63025 (not c!44867)) b!263145))

(assert (= (and b!263145 c!44868) b!263144))

(assert (= (and b!263145 (not c!44868)) b!263146))

(assert (= (or b!263144 b!263146) bm!25186))

(assert (=> b!263145 m!279177))

(assert (=> b!263145 m!279177))

(assert (=> b!263145 m!279179))

(declare-fun m!279261 () Bool)

(assert (=> bm!25186 m!279261))

(assert (=> b!262879 d!63025))

(declare-fun d!63027 () Bool)

(declare-fun e!170538 () Bool)

(assert (=> d!63027 e!170538))

(declare-fun res!128527 () Bool)

(assert (=> d!63027 (=> res!128527 e!170538)))

(declare-fun lt!133247 () Bool)

(assert (=> d!63027 (= res!128527 (not lt!133247))))

(declare-fun lt!133246 () Bool)

(assert (=> d!63027 (= lt!133247 lt!133246)))

(declare-fun lt!133248 () Unit!8187)

(declare-fun e!170539 () Unit!8187)

(assert (=> d!63027 (= lt!133248 e!170539)))

(declare-fun c!44869 () Bool)

(assert (=> d!63027 (= c!44869 lt!133246)))

(assert (=> d!63027 (= lt!133246 (containsKey!311 (toList!1966 lt!133047) key!932))))

(assert (=> d!63027 (= (contains!1911 lt!133047 key!932) lt!133247)))

(declare-fun b!263147 () Bool)

(declare-fun lt!133249 () Unit!8187)

(assert (=> b!263147 (= e!170539 lt!133249)))

(assert (=> b!263147 (= lt!133249 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133047) key!932))))

(assert (=> b!263147 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133047) key!932))))

(declare-fun b!263148 () Bool)

(declare-fun Unit!8199 () Unit!8187)

(assert (=> b!263148 (= e!170539 Unit!8199)))

(declare-fun b!263149 () Bool)

(assert (=> b!263149 (= e!170538 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133047) key!932)))))

(assert (= (and d!63027 c!44869) b!263147))

(assert (= (and d!63027 (not c!44869)) b!263148))

(assert (= (and d!63027 (not res!128527)) b!263149))

(declare-fun m!279263 () Bool)

(assert (=> d!63027 m!279263))

(declare-fun m!279265 () Bool)

(assert (=> b!263147 m!279265))

(declare-fun m!279267 () Bool)

(assert (=> b!263147 m!279267))

(assert (=> b!263147 m!279267))

(declare-fun m!279269 () Bool)

(assert (=> b!263147 m!279269))

(assert (=> b!263149 m!279267))

(assert (=> b!263149 m!279267))

(assert (=> b!263149 m!279269))

(assert (=> b!262879 d!63027))

(declare-fun d!63029 () Bool)

(declare-fun res!128532 () Bool)

(declare-fun e!170544 () Bool)

(assert (=> d!63029 (=> res!128532 e!170544)))

(assert (=> d!63029 (= res!128532 (= (select (arr!5998 lt!133048) #b00000000000000000000000000000000) key!932))))

(assert (=> d!63029 (= (arrayContainsKey!0 lt!133048 key!932 #b00000000000000000000000000000000) e!170544)))

(declare-fun b!263154 () Bool)

(declare-fun e!170545 () Bool)

(assert (=> b!263154 (= e!170544 e!170545)))

(declare-fun res!128533 () Bool)

(assert (=> b!263154 (=> (not res!128533) (not e!170545))))

(assert (=> b!263154 (= res!128533 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(declare-fun b!263155 () Bool)

(assert (=> b!263155 (= e!170545 (arrayContainsKey!0 lt!133048 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!63029 (not res!128532)) b!263154))

(assert (= (and b!263154 res!128533) b!263155))

(assert (=> d!63029 m!279233))

(declare-fun m!279271 () Bool)

(assert (=> b!263155 m!279271))

(assert (=> b!262879 d!63029))

(declare-fun d!63031 () Bool)

(declare-fun res!128540 () Bool)

(declare-fun e!170548 () Bool)

(assert (=> d!63031 (=> (not res!128540) (not e!170548))))

(declare-fun simpleValid!284 (LongMapFixedSize!3870) Bool)

(assert (=> d!63031 (= res!128540 (simpleValid!284 lt!133037))))

(assert (=> d!63031 (= (valid!1499 lt!133037) e!170548)))

(declare-fun b!263162 () Bool)

(declare-fun res!128541 () Bool)

(assert (=> b!263162 (=> (not res!128541) (not e!170548))))

(assert (=> b!263162 (= res!128541 (= (arrayCountValidKeys!0 (_keys!7035 lt!133037) #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))) (_size!1984 lt!133037)))))

(declare-fun b!263163 () Bool)

(declare-fun res!128542 () Bool)

(assert (=> b!263163 (=> (not res!128542) (not e!170548))))

(assert (=> b!263163 (= res!128542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!7035 lt!133037) (mask!11209 lt!133037)))))

(declare-fun b!263164 () Bool)

(assert (=> b!263164 (= e!170548 (arrayNoDuplicates!0 (_keys!7035 lt!133037) #b00000000000000000000000000000000 Nil!3870))))

(assert (= (and d!63031 res!128540) b!263162))

(assert (= (and b!263162 res!128541) b!263163))

(assert (= (and b!263163 res!128542) b!263164))

(declare-fun m!279273 () Bool)

(assert (=> d!63031 m!279273))

(declare-fun m!279275 () Bool)

(assert (=> b!263162 m!279275))

(declare-fun m!279277 () Bool)

(assert (=> b!263163 m!279277))

(declare-fun m!279279 () Bool)

(assert (=> b!263164 m!279279))

(assert (=> b!262879 d!63031))

(declare-fun d!63033 () Bool)

(assert (=> d!63033 (= (arrayCountValidKeys!0 lt!133048 index!297 (bvadd index!297 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lt!133252 () Unit!8187)

(declare-fun choose!2 (array!12676 (_ BitVec 32)) Unit!8187)

(assert (=> d!63033 (= lt!133252 (choose!2 lt!133048 index!297))))

(declare-fun e!170551 () Bool)

(assert (=> d!63033 e!170551))

(declare-fun res!128547 () Bool)

(assert (=> d!63033 (=> (not res!128547) (not e!170551))))

(assert (=> d!63033 (= res!128547 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6349 lt!133048))))))

(assert (=> d!63033 (= (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!133048 index!297) lt!133252)))

(declare-fun b!263169 () Bool)

(declare-fun res!128548 () Bool)

(assert (=> b!263169 (=> (not res!128548) (not e!170551))))

(assert (=> b!263169 (= res!128548 (validKeyInArray!0 (select (arr!5998 lt!133048) index!297)))))

(declare-fun b!263170 () Bool)

(assert (=> b!263170 (= e!170551 (bvslt (size!6349 lt!133048) #b01111111111111111111111111111111))))

(assert (= (and d!63033 res!128547) b!263169))

(assert (= (and b!263169 res!128548) b!263170))

(declare-fun m!279281 () Bool)

(assert (=> d!63033 m!279281))

(declare-fun m!279283 () Bool)

(assert (=> d!63033 m!279283))

(declare-fun m!279285 () Bool)

(assert (=> b!263169 m!279285))

(assert (=> b!263169 m!279285))

(declare-fun m!279287 () Bool)

(assert (=> b!263169 m!279287))

(assert (=> b!262879 d!63033))

(declare-fun b!263171 () Bool)

(declare-fun e!170552 () (_ BitVec 32))

(assert (=> b!263171 (= e!170552 #b00000000000000000000000000000000)))

(declare-fun b!263173 () Bool)

(declare-fun e!170553 () (_ BitVec 32))

(assert (=> b!263173 (= e!170552 e!170553)))

(declare-fun c!44871 () Bool)

(assert (=> b!263173 (= c!44871 (validKeyInArray!0 (select (arr!5998 lt!133048) index!297)))))

(declare-fun b!263174 () Bool)

(declare-fun call!25190 () (_ BitVec 32))

(assert (=> b!263174 (= e!170553 call!25190)))

(declare-fun bm!25187 () Bool)

(assert (=> bm!25187 (= call!25190 (arrayCountValidKeys!0 lt!133048 (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(declare-fun d!63035 () Bool)

(declare-fun lt!133253 () (_ BitVec 32))

(assert (=> d!63035 (and (bvsge lt!133253 #b00000000000000000000000000000000) (bvsle lt!133253 (bvsub (size!6349 lt!133048) index!297)))))

(assert (=> d!63035 (= lt!133253 e!170552)))

(declare-fun c!44870 () Bool)

(assert (=> d!63035 (= c!44870 (bvsge index!297 (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!63035 (and (bvsle index!297 (bvadd #b00000000000000000000000000000001 index!297)) (bvsge index!297 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6349 lt!133048)))))

(assert (=> d!63035 (= (arrayCountValidKeys!0 lt!133048 index!297 (bvadd #b00000000000000000000000000000001 index!297)) lt!133253)))

(declare-fun b!263172 () Bool)

(assert (=> b!263172 (= e!170553 (bvadd #b00000000000000000000000000000001 call!25190))))

(assert (= (and d!63035 c!44870) b!263171))

(assert (= (and d!63035 (not c!44870)) b!263173))

(assert (= (and b!263173 c!44871) b!263172))

(assert (= (and b!263173 (not c!44871)) b!263174))

(assert (= (or b!263172 b!263174) bm!25187))

(assert (=> b!263173 m!279285))

(assert (=> b!263173 m!279285))

(assert (=> b!263173 m!279287))

(declare-fun m!279289 () Bool)

(assert (=> bm!25187 m!279289))

(assert (=> b!262879 d!63035))

(declare-fun d!63037 () Bool)

(declare-fun res!128549 () Bool)

(declare-fun e!170554 () Bool)

(assert (=> d!63037 (=> res!128549 e!170554)))

(assert (=> d!63037 (= res!128549 (= (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!63037 (= (arrayContainsKey!0 (_keys!7035 thiss!1504) key!932 #b00000000000000000000000000000000) e!170554)))

(declare-fun b!263175 () Bool)

(declare-fun e!170555 () Bool)

(assert (=> b!263175 (= e!170554 e!170555)))

(declare-fun res!128550 () Bool)

(assert (=> b!263175 (=> (not res!128550) (not e!170555))))

(assert (=> b!263175 (= res!128550 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun b!263176 () Bool)

(assert (=> b!263176 (= e!170555 (arrayContainsKey!0 (_keys!7035 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!63037 (not res!128549)) b!263175))

(assert (= (and b!263175 res!128550) b!263176))

(assert (=> d!63037 m!279177))

(declare-fun m!279291 () Bool)

(assert (=> b!263176 m!279291))

(assert (=> b!262879 d!63037))

(declare-fun d!63039 () Bool)

(declare-fun e!170558 () Bool)

(assert (=> d!63039 e!170558))

(declare-fun res!128553 () Bool)

(assert (=> d!63039 (=> (not res!128553) (not e!170558))))

(assert (=> d!63039 (= res!128553 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6349 (_keys!7035 thiss!1504)))))))

(declare-fun lt!133256 () Unit!8187)

(declare-fun choose!102 ((_ BitVec 64) array!12676 (_ BitVec 32) (_ BitVec 32)) Unit!8187)

(assert (=> d!63039 (= lt!133256 (choose!102 key!932 (_keys!7035 thiss!1504) index!297 (mask!11209 thiss!1504)))))

(assert (=> d!63039 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63039 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!7035 thiss!1504) index!297 (mask!11209 thiss!1504)) lt!133256)))

(declare-fun b!263179 () Bool)

(assert (=> b!263179 (= e!170558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (mask!11209 thiss!1504)))))

(assert (= (and d!63039 res!128553) b!263179))

(declare-fun m!279293 () Bool)

(assert (=> d!63039 m!279293))

(assert (=> d!63039 m!279117))

(assert (=> b!263179 m!278995))

(declare-fun m!279295 () Bool)

(assert (=> b!263179 m!279295))

(assert (=> b!262879 d!63039))

(declare-fun d!63041 () Bool)

(declare-fun e!170561 () Bool)

(assert (=> d!63041 e!170561))

(declare-fun res!128556 () Bool)

(assert (=> d!63041 (=> (not res!128556) (not e!170561))))

(assert (=> d!63041 (= res!128556 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6349 lt!133048))))))

(declare-fun lt!133259 () Unit!8187)

(declare-fun choose!1299 (array!12676 array!12674 (_ BitVec 32) (_ BitVec 32) V!8523 V!8523 (_ BitVec 32) Int) Unit!8187)

(assert (=> d!63041 (= lt!133259 (choose!1299 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) index!297 (defaultEntry!4843 thiss!1504)))))

(assert (=> d!63041 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63041 (= (lemmaValidKeyInArrayIsInListMap!149 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) index!297 (defaultEntry!4843 thiss!1504)) lt!133259)))

(declare-fun b!263182 () Bool)

(assert (=> b!263182 (= e!170561 (contains!1911 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) (select (arr!5998 lt!133048) index!297)))))

(assert (= (and d!63041 res!128556) b!263182))

(declare-fun m!279297 () Bool)

(assert (=> d!63041 m!279297))

(assert (=> d!63041 m!279117))

(assert (=> b!263182 m!279007))

(assert (=> b!263182 m!279285))

(assert (=> b!263182 m!279007))

(assert (=> b!263182 m!279285))

(declare-fun m!279299 () Bool)

(assert (=> b!263182 m!279299))

(assert (=> b!262879 d!63041))

(declare-fun d!63043 () Bool)

(declare-fun e!170564 () Bool)

(assert (=> d!63043 e!170564))

(declare-fun res!128559 () Bool)

(assert (=> d!63043 (=> (not res!128559) (not e!170564))))

(assert (=> d!63043 (= res!128559 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6349 (_keys!7035 thiss!1504))) (bvslt index!297 (size!6348 (_values!4826 thiss!1504)))))))

(declare-fun lt!133262 () Unit!8187)

(declare-fun choose!1300 (array!12676 array!12674 (_ BitVec 32) (_ BitVec 32) V!8523 V!8523 (_ BitVec 32) (_ BitVec 64) V!8523 Int) Unit!8187)

(assert (=> d!63043 (= lt!133262 (choose!1300 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) index!297 key!932 v!346 (defaultEntry!4843 thiss!1504)))))

(assert (=> d!63043 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63043 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!120 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) index!297 key!932 v!346 (defaultEntry!4843 thiss!1504)) lt!133262)))

(declare-fun b!263185 () Bool)

(assert (=> b!263185 (= e!170564 (= (+!705 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) (tuple2!4975 key!932 v!346)) (getCurrentListMap!1489 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504))) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))))

(assert (= (and d!63043 res!128559) b!263185))

(declare-fun m!279301 () Bool)

(assert (=> d!63043 m!279301))

(assert (=> d!63043 m!279117))

(assert (=> b!263185 m!279023))

(assert (=> b!263185 m!279023))

(declare-fun m!279303 () Bool)

(assert (=> b!263185 m!279303))

(declare-fun m!279305 () Bool)

(assert (=> b!263185 m!279305))

(assert (=> b!263185 m!278995))

(assert (=> b!263185 m!278985))

(assert (=> b!262879 d!63043))

(declare-fun d!63045 () Bool)

(declare-fun e!170569 () Bool)

(assert (=> d!63045 e!170569))

(declare-fun res!128568 () Bool)

(assert (=> d!63045 (=> (not res!128568) (not e!170569))))

(assert (=> d!63045 (= res!128568 (or (bvsge #b00000000000000000000000000000000 (size!6349 lt!133048)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 lt!133048)))))))

(declare-fun lt!133278 () ListLongMap!3901)

(declare-fun lt!133269 () ListLongMap!3901)

(assert (=> d!63045 (= lt!133278 lt!133269)))

(declare-fun lt!133272 () Unit!8187)

(declare-fun e!170565 () Unit!8187)

(assert (=> d!63045 (= lt!133272 e!170565)))

(declare-fun c!44872 () Bool)

(declare-fun e!170572 () Bool)

(assert (=> d!63045 (= c!44872 e!170572)))

(declare-fun res!128563 () Bool)

(assert (=> d!63045 (=> (not res!128563) (not e!170572))))

(assert (=> d!63045 (= res!128563 (bvslt #b00000000000000000000000000000000 (size!6349 lt!133048)))))

(declare-fun e!170567 () ListLongMap!3901)

(assert (=> d!63045 (= lt!133269 e!170567)))

(declare-fun c!44876 () Bool)

(assert (=> d!63045 (= c!44876 (and (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!63045 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63045 (= (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) lt!133278)))

(declare-fun b!263186 () Bool)

(declare-fun Unit!8200 () Unit!8187)

(assert (=> b!263186 (= e!170565 Unit!8200)))

(declare-fun e!170574 () Bool)

(declare-fun b!263187 () Bool)

(assert (=> b!263187 (= e!170574 (= (apply!262 lt!133278 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)) (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!263187 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6348 lt!133045)))))

(assert (=> b!263187 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 lt!133048)))))

(declare-fun b!263188 () Bool)

(declare-fun e!170575 () Bool)

(declare-fun call!25195 () Bool)

(assert (=> b!263188 (= e!170575 (not call!25195))))

(declare-fun b!263189 () Bool)

(assert (=> b!263189 (= e!170569 e!170575)))

(declare-fun c!44875 () Bool)

(assert (=> b!263189 (= c!44875 (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!263190 () Bool)

(declare-fun e!170577 () Bool)

(assert (=> b!263190 (= e!170577 (= (apply!262 lt!133278 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4684 thiss!1504)))))

(declare-fun bm!25188 () Bool)

(declare-fun call!25193 () ListLongMap!3901)

(assert (=> bm!25188 (= call!25193 (getCurrentListMapNoExtraKeys!581 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun b!263191 () Bool)

(declare-fun res!128560 () Bool)

(assert (=> b!263191 (=> (not res!128560) (not e!170569))))

(declare-fun e!170566 () Bool)

(assert (=> b!263191 (= res!128560 e!170566)))

(declare-fun c!44874 () Bool)

(assert (=> b!263191 (= c!44874 (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!263192 () Bool)

(declare-fun res!128562 () Bool)

(assert (=> b!263192 (=> (not res!128562) (not e!170569))))

(declare-fun e!170571 () Bool)

(assert (=> b!263192 (= res!128562 e!170571)))

(declare-fun res!128561 () Bool)

(assert (=> b!263192 (=> res!128561 e!170571)))

(declare-fun e!170573 () Bool)

(assert (=> b!263192 (= res!128561 (not e!170573))))

(declare-fun res!128564 () Bool)

(assert (=> b!263192 (=> (not res!128564) (not e!170573))))

(assert (=> b!263192 (= res!128564 (bvslt #b00000000000000000000000000000000 (size!6349 lt!133048)))))

(declare-fun bm!25189 () Bool)

(assert (=> bm!25189 (= call!25195 (contains!1911 lt!133278 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263193 () Bool)

(declare-fun lt!133283 () Unit!8187)

(assert (=> b!263193 (= e!170565 lt!133283)))

(declare-fun lt!133284 () ListLongMap!3901)

(assert (=> b!263193 (= lt!133284 (getCurrentListMapNoExtraKeys!581 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun lt!133264 () (_ BitVec 64))

(assert (=> b!263193 (= lt!133264 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133277 () (_ BitVec 64))

(assert (=> b!263193 (= lt!133277 (select (arr!5998 lt!133048) #b00000000000000000000000000000000))))

(declare-fun lt!133274 () Unit!8187)

(assert (=> b!263193 (= lt!133274 (addStillContains!238 lt!133284 lt!133264 (zeroValue!4684 thiss!1504) lt!133277))))

(assert (=> b!263193 (contains!1911 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))) lt!133277)))

(declare-fun lt!133266 () Unit!8187)

(assert (=> b!263193 (= lt!133266 lt!133274)))

(declare-fun lt!133280 () ListLongMap!3901)

(assert (=> b!263193 (= lt!133280 (getCurrentListMapNoExtraKeys!581 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun lt!133279 () (_ BitVec 64))

(assert (=> b!263193 (= lt!133279 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133263 () (_ BitVec 64))

(assert (=> b!263193 (= lt!133263 (select (arr!5998 lt!133048) #b00000000000000000000000000000000))))

(declare-fun lt!133282 () Unit!8187)

(assert (=> b!263193 (= lt!133282 (addApplyDifferent!238 lt!133280 lt!133279 (minValue!4684 thiss!1504) lt!133263))))

(assert (=> b!263193 (= (apply!262 (+!705 lt!133280 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))) lt!133263) (apply!262 lt!133280 lt!133263))))

(declare-fun lt!133268 () Unit!8187)

(assert (=> b!263193 (= lt!133268 lt!133282)))

(declare-fun lt!133270 () ListLongMap!3901)

(assert (=> b!263193 (= lt!133270 (getCurrentListMapNoExtraKeys!581 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun lt!133271 () (_ BitVec 64))

(assert (=> b!263193 (= lt!133271 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133275 () (_ BitVec 64))

(assert (=> b!263193 (= lt!133275 (select (arr!5998 lt!133048) #b00000000000000000000000000000000))))

(declare-fun lt!133281 () Unit!8187)

(assert (=> b!263193 (= lt!133281 (addApplyDifferent!238 lt!133270 lt!133271 (zeroValue!4684 thiss!1504) lt!133275))))

(assert (=> b!263193 (= (apply!262 (+!705 lt!133270 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))) lt!133275) (apply!262 lt!133270 lt!133275))))

(declare-fun lt!133273 () Unit!8187)

(assert (=> b!263193 (= lt!133273 lt!133281)))

(declare-fun lt!133276 () ListLongMap!3901)

(assert (=> b!263193 (= lt!133276 (getCurrentListMapNoExtraKeys!581 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun lt!133265 () (_ BitVec 64))

(assert (=> b!263193 (= lt!133265 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133267 () (_ BitVec 64))

(assert (=> b!263193 (= lt!133267 (select (arr!5998 lt!133048) #b00000000000000000000000000000000))))

(assert (=> b!263193 (= lt!133283 (addApplyDifferent!238 lt!133276 lt!133265 (minValue!4684 thiss!1504) lt!133267))))

(assert (=> b!263193 (= (apply!262 (+!705 lt!133276 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))) lt!133267) (apply!262 lt!133276 lt!133267))))

(declare-fun bm!25190 () Bool)

(declare-fun call!25192 () ListLongMap!3901)

(declare-fun call!25191 () ListLongMap!3901)

(assert (=> bm!25190 (= call!25192 call!25191)))

(declare-fun b!263194 () Bool)

(declare-fun e!170568 () ListLongMap!3901)

(declare-fun call!25196 () ListLongMap!3901)

(assert (=> b!263194 (= e!170568 call!25196)))

(declare-fun b!263195 () Bool)

(declare-fun call!25197 () ListLongMap!3901)

(assert (=> b!263195 (= e!170567 (+!705 call!25197 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))

(declare-fun bm!25191 () Bool)

(assert (=> bm!25191 (= call!25191 call!25193)))

(declare-fun b!263196 () Bool)

(declare-fun e!170570 () Bool)

(assert (=> b!263196 (= e!170570 (= (apply!262 lt!133278 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4684 thiss!1504)))))

(declare-fun bm!25192 () Bool)

(declare-fun c!44873 () Bool)

(assert (=> bm!25192 (= call!25197 (+!705 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192)) (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!263197 () Bool)

(declare-fun c!44877 () Bool)

(assert (=> b!263197 (= c!44877 (and (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!170576 () ListLongMap!3901)

(assert (=> b!263197 (= e!170568 e!170576)))

(declare-fun b!263198 () Bool)

(assert (=> b!263198 (= e!170566 e!170577)))

(declare-fun res!128565 () Bool)

(declare-fun call!25194 () Bool)

(assert (=> b!263198 (= res!128565 call!25194)))

(assert (=> b!263198 (=> (not res!128565) (not e!170577))))

(declare-fun b!263199 () Bool)

(assert (=> b!263199 (= e!170576 call!25196)))

(declare-fun b!263200 () Bool)

(assert (=> b!263200 (= e!170571 e!170574)))

(declare-fun res!128566 () Bool)

(assert (=> b!263200 (=> (not res!128566) (not e!170574))))

(assert (=> b!263200 (= res!128566 (contains!1911 lt!133278 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(assert (=> b!263200 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 lt!133048)))))

(declare-fun bm!25193 () Bool)

(assert (=> bm!25193 (= call!25194 (contains!1911 lt!133278 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263201 () Bool)

(assert (=> b!263201 (= e!170567 e!170568)))

(assert (=> b!263201 (= c!44873 (and (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!263202 () Bool)

(assert (=> b!263202 (= e!170573 (validKeyInArray!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun b!263203 () Bool)

(assert (=> b!263203 (= e!170566 (not call!25194))))

(declare-fun b!263204 () Bool)

(assert (=> b!263204 (= e!170576 call!25192)))

(declare-fun b!263205 () Bool)

(assert (=> b!263205 (= e!170575 e!170570)))

(declare-fun res!128567 () Bool)

(assert (=> b!263205 (= res!128567 call!25195)))

(assert (=> b!263205 (=> (not res!128567) (not e!170570))))

(declare-fun b!263206 () Bool)

(assert (=> b!263206 (= e!170572 (validKeyInArray!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun bm!25194 () Bool)

(assert (=> bm!25194 (= call!25196 call!25197)))

(assert (= (and d!63045 c!44876) b!263195))

(assert (= (and d!63045 (not c!44876)) b!263201))

(assert (= (and b!263201 c!44873) b!263194))

(assert (= (and b!263201 (not c!44873)) b!263197))

(assert (= (and b!263197 c!44877) b!263199))

(assert (= (and b!263197 (not c!44877)) b!263204))

(assert (= (or b!263199 b!263204) bm!25190))

(assert (= (or b!263194 bm!25190) bm!25191))

(assert (= (or b!263194 b!263199) bm!25194))

(assert (= (or b!263195 bm!25191) bm!25188))

(assert (= (or b!263195 bm!25194) bm!25192))

(assert (= (and d!63045 res!128563) b!263206))

(assert (= (and d!63045 c!44872) b!263193))

(assert (= (and d!63045 (not c!44872)) b!263186))

(assert (= (and d!63045 res!128568) b!263192))

(assert (= (and b!263192 res!128564) b!263202))

(assert (= (and b!263192 (not res!128561)) b!263200))

(assert (= (and b!263200 res!128566) b!263187))

(assert (= (and b!263192 res!128562) b!263191))

(assert (= (and b!263191 c!44874) b!263198))

(assert (= (and b!263191 (not c!44874)) b!263203))

(assert (= (and b!263198 res!128565) b!263190))

(assert (= (or b!263198 b!263203) bm!25193))

(assert (= (and b!263191 res!128560) b!263189))

(assert (= (and b!263189 c!44875) b!263205))

(assert (= (and b!263189 (not c!44875)) b!263188))

(assert (= (and b!263205 res!128567) b!263196))

(assert (= (or b!263205 b!263188) bm!25189))

(declare-fun b_lambda!8363 () Bool)

(assert (=> (not b_lambda!8363) (not b!263187)))

(assert (=> b!263187 t!8961))

(declare-fun b_and!13961 () Bool)

(assert (= b_and!13959 (and (=> t!8961 result!5441) b_and!13961)))

(declare-fun m!279307 () Bool)

(assert (=> bm!25192 m!279307))

(assert (=> b!263202 m!279233))

(assert (=> b!263202 m!279233))

(assert (=> b!263202 m!279235))

(assert (=> b!263206 m!279233))

(assert (=> b!263206 m!279233))

(assert (=> b!263206 m!279235))

(declare-fun m!279309 () Bool)

(assert (=> bm!25193 m!279309))

(declare-fun m!279311 () Bool)

(assert (=> bm!25188 m!279311))

(declare-fun m!279313 () Bool)

(assert (=> b!263190 m!279313))

(assert (=> d!63045 m!279117))

(declare-fun m!279315 () Bool)

(assert (=> bm!25189 m!279315))

(assert (=> b!263200 m!279233))

(assert (=> b!263200 m!279233))

(declare-fun m!279317 () Bool)

(assert (=> b!263200 m!279317))

(declare-fun m!279319 () Bool)

(assert (=> b!263195 m!279319))

(declare-fun m!279321 () Bool)

(assert (=> b!263193 m!279321))

(declare-fun m!279323 () Bool)

(assert (=> b!263193 m!279323))

(declare-fun m!279325 () Bool)

(assert (=> b!263193 m!279325))

(declare-fun m!279327 () Bool)

(assert (=> b!263193 m!279327))

(declare-fun m!279329 () Bool)

(assert (=> b!263193 m!279329))

(assert (=> b!263193 m!279325))

(assert (=> b!263193 m!279233))

(declare-fun m!279331 () Bool)

(assert (=> b!263193 m!279331))

(assert (=> b!263193 m!279329))

(declare-fun m!279333 () Bool)

(assert (=> b!263193 m!279333))

(declare-fun m!279335 () Bool)

(assert (=> b!263193 m!279335))

(assert (=> b!263193 m!279321))

(declare-fun m!279337 () Bool)

(assert (=> b!263193 m!279337))

(assert (=> b!263193 m!279311))

(declare-fun m!279339 () Bool)

(assert (=> b!263193 m!279339))

(declare-fun m!279341 () Bool)

(assert (=> b!263193 m!279341))

(declare-fun m!279343 () Bool)

(assert (=> b!263193 m!279343))

(assert (=> b!263193 m!279341))

(declare-fun m!279345 () Bool)

(assert (=> b!263193 m!279345))

(declare-fun m!279347 () Bool)

(assert (=> b!263193 m!279347))

(declare-fun m!279349 () Bool)

(assert (=> b!263193 m!279349))

(declare-fun m!279351 () Bool)

(assert (=> b!263196 m!279351))

(assert (=> b!263187 m!279233))

(declare-fun m!279353 () Bool)

(assert (=> b!263187 m!279353))

(declare-fun m!279355 () Bool)

(assert (=> b!263187 m!279355))

(assert (=> b!263187 m!279229))

(declare-fun m!279357 () Bool)

(assert (=> b!263187 m!279357))

(assert (=> b!263187 m!279229))

(assert (=> b!263187 m!279355))

(assert (=> b!263187 m!279233))

(assert (=> b!262879 d!63045))

(declare-fun d!63047 () Bool)

(declare-fun e!170578 () Bool)

(assert (=> d!63047 e!170578))

(declare-fun res!128569 () Bool)

(assert (=> d!63047 (=> (not res!128569) (not e!170578))))

(declare-fun lt!133287 () ListLongMap!3901)

(assert (=> d!63047 (= res!128569 (contains!1911 lt!133287 (_1!2497 lt!133042)))))

(declare-fun lt!133288 () List!3872)

(assert (=> d!63047 (= lt!133287 (ListLongMap!3902 lt!133288))))

(declare-fun lt!133286 () Unit!8187)

(declare-fun lt!133285 () Unit!8187)

(assert (=> d!63047 (= lt!133286 lt!133285)))

(assert (=> d!63047 (= (getValueByKey!319 lt!133288 (_1!2497 lt!133042)) (Some!324 (_2!2497 lt!133042)))))

(assert (=> d!63047 (= lt!133285 (lemmaContainsTupThenGetReturnValue!177 lt!133288 (_1!2497 lt!133042) (_2!2497 lt!133042)))))

(assert (=> d!63047 (= lt!133288 (insertStrictlySorted!179 (toList!1966 lt!133034) (_1!2497 lt!133042) (_2!2497 lt!133042)))))

(assert (=> d!63047 (= (+!705 lt!133034 lt!133042) lt!133287)))

(declare-fun b!263207 () Bool)

(declare-fun res!128570 () Bool)

(assert (=> b!263207 (=> (not res!128570) (not e!170578))))

(assert (=> b!263207 (= res!128570 (= (getValueByKey!319 (toList!1966 lt!133287) (_1!2497 lt!133042)) (Some!324 (_2!2497 lt!133042))))))

(declare-fun b!263208 () Bool)

(assert (=> b!263208 (= e!170578 (contains!1913 (toList!1966 lt!133287) lt!133042))))

(assert (= (and d!63047 res!128569) b!263207))

(assert (= (and b!263207 res!128570) b!263208))

(declare-fun m!279359 () Bool)

(assert (=> d!63047 m!279359))

(declare-fun m!279361 () Bool)

(assert (=> d!63047 m!279361))

(declare-fun m!279363 () Bool)

(assert (=> d!63047 m!279363))

(declare-fun m!279365 () Bool)

(assert (=> d!63047 m!279365))

(declare-fun m!279367 () Bool)

(assert (=> b!263207 m!279367))

(declare-fun m!279369 () Bool)

(assert (=> b!263208 m!279369))

(assert (=> b!262879 d!63047))

(declare-fun d!63049 () Bool)

(assert (=> d!63049 (arrayContainsKey!0 lt!133048 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!133291 () Unit!8187)

(declare-fun choose!13 (array!12676 (_ BitVec 64) (_ BitVec 32)) Unit!8187)

(assert (=> d!63049 (= lt!133291 (choose!13 lt!133048 key!932 index!297))))

(assert (=> d!63049 (bvsge index!297 #b00000000000000000000000000000000)))

(assert (=> d!63049 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!133048 key!932 index!297) lt!133291)))

(declare-fun bs!9251 () Bool)

(assert (= bs!9251 d!63049))

(assert (=> bs!9251 m!279009))

(declare-fun m!279371 () Bool)

(assert (=> bs!9251 m!279371))

(assert (=> b!262879 d!63049))

(declare-fun d!63051 () Bool)

(declare-fun e!170581 () Bool)

(assert (=> d!63051 e!170581))

(declare-fun res!128573 () Bool)

(assert (=> d!63051 (=> (not res!128573) (not e!170581))))

(assert (=> d!63051 (= res!128573 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6349 (_keys!7035 thiss!1504)))))))

(declare-fun lt!133294 () Unit!8187)

(declare-fun choose!41 (array!12676 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3873) Unit!8187)

(assert (=> d!63051 (= lt!133294 (choose!41 (_keys!7035 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3870))))

(assert (=> d!63051 (bvslt (size!6349 (_keys!7035 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!63051 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!7035 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3870) lt!133294)))

(declare-fun b!263211 () Bool)

(assert (=> b!263211 (= e!170581 (arrayNoDuplicates!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) #b00000000000000000000000000000000 Nil!3870))))

(assert (= (and d!63051 res!128573) b!263211))

(declare-fun m!279373 () Bool)

(assert (=> d!63051 m!279373))

(assert (=> b!263211 m!278995))

(declare-fun m!279375 () Bool)

(assert (=> b!263211 m!279375))

(assert (=> b!262879 d!63051))

(assert (=> bm!25142 d!63037))

(declare-fun d!63053 () Bool)

(assert (=> d!63053 (= (array_inv!3953 (_keys!7035 thiss!1504)) (bvsge (size!6349 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!262890 d!63053))

(declare-fun d!63055 () Bool)

(assert (=> d!63055 (= (array_inv!3954 (_values!4826 thiss!1504)) (bvsge (size!6348 (_values!4826 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!262890 d!63055))

(declare-fun d!63057 () Bool)

(declare-fun res!128574 () Bool)

(declare-fun e!170582 () Bool)

(assert (=> d!63057 (=> (not res!128574) (not e!170582))))

(assert (=> d!63057 (= res!128574 (simpleValid!284 thiss!1504))))

(assert (=> d!63057 (= (valid!1499 thiss!1504) e!170582)))

(declare-fun b!263212 () Bool)

(declare-fun res!128575 () Bool)

(assert (=> b!263212 (=> (not res!128575) (not e!170582))))

(assert (=> b!263212 (= res!128575 (= (arrayCountValidKeys!0 (_keys!7035 thiss!1504) #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))) (_size!1984 thiss!1504)))))

(declare-fun b!263213 () Bool)

(declare-fun res!128576 () Bool)

(assert (=> b!263213 (=> (not res!128576) (not e!170582))))

(assert (=> b!263213 (= res!128576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(declare-fun b!263214 () Bool)

(assert (=> b!263214 (= e!170582 (arrayNoDuplicates!0 (_keys!7035 thiss!1504) #b00000000000000000000000000000000 Nil!3870))))

(assert (= (and d!63057 res!128574) b!263212))

(assert (= (and b!263212 res!128575) b!263213))

(assert (= (and b!263213 res!128576) b!263214))

(declare-fun m!279377 () Bool)

(assert (=> d!63057 m!279377))

(assert (=> b!263212 m!278997))

(declare-fun m!279379 () Bool)

(assert (=> b!263213 m!279379))

(declare-fun m!279381 () Bool)

(assert (=> b!263214 m!279381))

(assert (=> start!25250 d!63057))

(declare-fun condMapEmpty!11356 () Bool)

(declare-fun mapDefault!11356 () ValueCell!2985)

(assert (=> mapNonEmpty!11350 (= condMapEmpty!11356 (= mapRest!11350 ((as const (Array (_ BitVec 32) ValueCell!2985)) mapDefault!11356)))))

(declare-fun e!170587 () Bool)

(declare-fun mapRes!11356 () Bool)

(assert (=> mapNonEmpty!11350 (= tp!23722 (and e!170587 mapRes!11356))))

(declare-fun b!263222 () Bool)

(assert (=> b!263222 (= e!170587 tp_is_empty!6657)))

(declare-fun mapIsEmpty!11356 () Bool)

(assert (=> mapIsEmpty!11356 mapRes!11356))

(declare-fun mapNonEmpty!11356 () Bool)

(declare-fun tp!23731 () Bool)

(declare-fun e!170588 () Bool)

(assert (=> mapNonEmpty!11356 (= mapRes!11356 (and tp!23731 e!170588))))

(declare-fun mapValue!11356 () ValueCell!2985)

(declare-fun mapRest!11356 () (Array (_ BitVec 32) ValueCell!2985))

(declare-fun mapKey!11356 () (_ BitVec 32))

(assert (=> mapNonEmpty!11356 (= mapRest!11350 (store mapRest!11356 mapKey!11356 mapValue!11356))))

(declare-fun b!263221 () Bool)

(assert (=> b!263221 (= e!170588 tp_is_empty!6657)))

(assert (= (and mapNonEmpty!11350 condMapEmpty!11356) mapIsEmpty!11356))

(assert (= (and mapNonEmpty!11350 (not condMapEmpty!11356)) mapNonEmpty!11356))

(assert (= (and mapNonEmpty!11356 ((_ is ValueCellFull!2985) mapValue!11356)) b!263221))

(assert (= (and mapNonEmpty!11350 ((_ is ValueCellFull!2985) mapDefault!11356)) b!263222))

(declare-fun m!279383 () Bool)

(assert (=> mapNonEmpty!11356 m!279383))

(declare-fun b_lambda!8365 () Bool)

(assert (= b_lambda!8361 (or (and b!262890 b_free!6795) b_lambda!8365)))

(declare-fun b_lambda!8367 () Bool)

(assert (= b_lambda!8363 (or (and b!262890 b_free!6795) b_lambda!8367)))

(check-sat (not b!263070) (not b!263147) (not d!63007) (not bm!25155) (not b!263187) (not b!263124) (not b!262983) (not b!263182) (not bm!25154) (not b!263163) (not b!263176) (not b!263126) (not bm!25185) (not b!263214) (not bm!25193) (not b_next!6795) (not b!262999) (not b!263207) (not d!63003) (not b!263162) (not bm!25170) (not d!63049) (not bm!25174) (not d!63045) (not d!63057) (not b!263073) (not b!263083) (not b!262998) b_and!13961 (not b!262993) (not d!63031) (not b!262991) (not b!263024) (not b!263113) (not b!263076) (not d!63001) (not b!263079) (not bm!25186) (not b!263115) (not b!263173) (not d!63019) (not b_lambda!8367) (not d!63005) tp_is_empty!6657 (not d!63033) (not b!263141) (not b!263112) (not d!62995) (not b!263213) (not b!263193) (not b!263102) (not d!63013) (not d!63051) (not d!63009) (not b!263196) (not b!263164) (not b!263026) (not d!62993) (not b!263190) (not b!263195) (not bm!25182) (not b!263089) (not b!263145) (not b!263179) (not b!263139) (not b!263212) (not b!263085) (not b!263185) (not b_lambda!8365) (not b!262977) (not b!263169) (not b!263202) (not bm!25188) (not b!263138) (not b!263211) (not b!263208) (not b!263078) (not d!63047) (not bm!25179) (not d!63027) (not d!63039) (not d!62999) (not d!63015) (not mapNonEmpty!11356) (not d!63041) (not bm!25175) (not b!263149) (not b!263200) (not b!263206) (not bm!25187) (not bm!25192) (not d!63043) (not bm!25171) (not b!263155) (not bm!25189))
(check-sat b_and!13961 (not b_next!6795))
(get-model)

(declare-fun d!63059 () Bool)

(declare-fun e!170589 () Bool)

(assert (=> d!63059 e!170589))

(declare-fun res!128577 () Bool)

(assert (=> d!63059 (=> (not res!128577) (not e!170589))))

(declare-fun lt!133297 () ListLongMap!3901)

(assert (=> d!63059 (= res!128577 (contains!1911 lt!133297 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun lt!133298 () List!3872)

(assert (=> d!63059 (= lt!133297 (ListLongMap!3902 lt!133298))))

(declare-fun lt!133296 () Unit!8187)

(declare-fun lt!133295 () Unit!8187)

(assert (=> d!63059 (= lt!133296 lt!133295)))

(assert (=> d!63059 (= (getValueByKey!319 lt!133298 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (=> d!63059 (= lt!133295 (lemmaContainsTupThenGetReturnValue!177 lt!133298 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (=> d!63059 (= lt!133298 (insertStrictlySorted!179 (toList!1966 call!25179) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (=> d!63059 (= (+!705 call!25179 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) lt!133297)))

(declare-fun b!263223 () Bool)

(declare-fun res!128578 () Bool)

(assert (=> b!263223 (=> (not res!128578) (not e!170589))))

(assert (=> b!263223 (= res!128578 (= (getValueByKey!319 (toList!1966 lt!133297) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!263224 () Bool)

(assert (=> b!263224 (= e!170589 (contains!1913 (toList!1966 lt!133297) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))

(assert (= (and d!63059 res!128577) b!263223))

(assert (= (and b!263223 res!128578) b!263224))

(declare-fun m!279385 () Bool)

(assert (=> d!63059 m!279385))

(declare-fun m!279387 () Bool)

(assert (=> d!63059 m!279387))

(declare-fun m!279389 () Bool)

(assert (=> d!63059 m!279389))

(declare-fun m!279391 () Bool)

(assert (=> d!63059 m!279391))

(declare-fun m!279393 () Bool)

(assert (=> b!263223 m!279393))

(declare-fun m!279395 () Bool)

(assert (=> b!263224 m!279395))

(assert (=> b!263078 d!63059))

(declare-fun d!63061 () Bool)

(declare-fun e!170590 () Bool)

(assert (=> d!63061 e!170590))

(declare-fun res!128579 () Bool)

(assert (=> d!63061 (=> res!128579 e!170590)))

(declare-fun lt!133300 () Bool)

(assert (=> d!63061 (= res!128579 (not lt!133300))))

(declare-fun lt!133299 () Bool)

(assert (=> d!63061 (= lt!133300 lt!133299)))

(declare-fun lt!133301 () Unit!8187)

(declare-fun e!170591 () Unit!8187)

(assert (=> d!63061 (= lt!133301 e!170591)))

(declare-fun c!44878 () Bool)

(assert (=> d!63061 (= c!44878 lt!133299)))

(assert (=> d!63061 (= lt!133299 (containsKey!311 (toList!1966 lt!133278) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(assert (=> d!63061 (= (contains!1911 lt!133278 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)) lt!133300)))

(declare-fun b!263225 () Bool)

(declare-fun lt!133302 () Unit!8187)

(assert (=> b!263225 (= e!170591 lt!133302)))

(assert (=> b!263225 (= lt!133302 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133278) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(assert (=> b!263225 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133278) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun b!263226 () Bool)

(declare-fun Unit!8201 () Unit!8187)

(assert (=> b!263226 (= e!170591 Unit!8201)))

(declare-fun b!263227 () Bool)

(assert (=> b!263227 (= e!170590 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133278) (select (arr!5998 lt!133048) #b00000000000000000000000000000000))))))

(assert (= (and d!63061 c!44878) b!263225))

(assert (= (and d!63061 (not c!44878)) b!263226))

(assert (= (and d!63061 (not res!128579)) b!263227))

(assert (=> d!63061 m!279233))

(declare-fun m!279397 () Bool)

(assert (=> d!63061 m!279397))

(assert (=> b!263225 m!279233))

(declare-fun m!279399 () Bool)

(assert (=> b!263225 m!279399))

(assert (=> b!263225 m!279233))

(declare-fun m!279401 () Bool)

(assert (=> b!263225 m!279401))

(assert (=> b!263225 m!279401))

(declare-fun m!279403 () Bool)

(assert (=> b!263225 m!279403))

(assert (=> b!263227 m!279233))

(assert (=> b!263227 m!279401))

(assert (=> b!263227 m!279401))

(assert (=> b!263227 m!279403))

(assert (=> b!263200 d!63061))

(declare-fun d!63063 () Bool)

(assert (=> d!63063 (arrayContainsKey!0 lt!133048 lt!133242 #b00000000000000000000000000000000)))

(declare-fun lt!133303 () Unit!8187)

(assert (=> d!63063 (= lt!133303 (choose!13 lt!133048 lt!133242 #b00000000000000000000000000000000))))

(assert (=> d!63063 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!63063 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!133048 lt!133242 #b00000000000000000000000000000000) lt!133303)))

(declare-fun bs!9252 () Bool)

(assert (= bs!9252 d!63063))

(assert (=> bs!9252 m!279251))

(declare-fun m!279405 () Bool)

(assert (=> bs!9252 m!279405))

(assert (=> b!263126 d!63063))

(declare-fun d!63065 () Bool)

(declare-fun res!128580 () Bool)

(declare-fun e!170592 () Bool)

(assert (=> d!63065 (=> res!128580 e!170592)))

(assert (=> d!63065 (= res!128580 (= (select (arr!5998 lt!133048) #b00000000000000000000000000000000) lt!133242))))

(assert (=> d!63065 (= (arrayContainsKey!0 lt!133048 lt!133242 #b00000000000000000000000000000000) e!170592)))

(declare-fun b!263228 () Bool)

(declare-fun e!170593 () Bool)

(assert (=> b!263228 (= e!170592 e!170593)))

(declare-fun res!128581 () Bool)

(assert (=> b!263228 (=> (not res!128581) (not e!170593))))

(assert (=> b!263228 (= res!128581 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(declare-fun b!263229 () Bool)

(assert (=> b!263229 (= e!170593 (arrayContainsKey!0 lt!133048 lt!133242 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!63065 (not res!128580)) b!263228))

(assert (= (and b!263228 res!128581) b!263229))

(assert (=> d!63065 m!279233))

(declare-fun m!279407 () Bool)

(assert (=> b!263229 m!279407))

(assert (=> b!263126 d!63065))

(declare-fun b!263230 () Bool)

(declare-fun e!170596 () SeekEntryResult!1210)

(declare-fun lt!133305 () SeekEntryResult!1210)

(assert (=> b!263230 (= e!170596 (MissingZero!1210 (index!7012 lt!133305)))))

(declare-fun b!263231 () Bool)

(declare-fun e!170595 () SeekEntryResult!1210)

(declare-fun e!170594 () SeekEntryResult!1210)

(assert (=> b!263231 (= e!170595 e!170594)))

(declare-fun lt!133306 () (_ BitVec 64))

(assert (=> b!263231 (= lt!133306 (select (arr!5998 lt!133048) (index!7012 lt!133305)))))

(declare-fun c!44881 () Bool)

(assert (=> b!263231 (= c!44881 (= lt!133306 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun b!263232 () Bool)

(declare-fun c!44879 () Bool)

(assert (=> b!263232 (= c!44879 (= lt!133306 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!263232 (= e!170594 e!170596)))

(declare-fun b!263233 () Bool)

(assert (=> b!263233 (= e!170594 (Found!1210 (index!7012 lt!133305)))))

(declare-fun b!263234 () Bool)

(assert (=> b!263234 (= e!170596 (seekKeyOrZeroReturnVacant!0 (x!25252 lt!133305) (index!7012 lt!133305) (index!7012 lt!133305) (select (arr!5998 lt!133048) #b00000000000000000000000000000000) lt!133048 (mask!11209 thiss!1504)))))

(declare-fun d!63067 () Bool)

(declare-fun lt!133304 () SeekEntryResult!1210)

(assert (=> d!63067 (and (or ((_ is Undefined!1210) lt!133304) (not ((_ is Found!1210) lt!133304)) (and (bvsge (index!7011 lt!133304) #b00000000000000000000000000000000) (bvslt (index!7011 lt!133304) (size!6349 lt!133048)))) (or ((_ is Undefined!1210) lt!133304) ((_ is Found!1210) lt!133304) (not ((_ is MissingZero!1210) lt!133304)) (and (bvsge (index!7010 lt!133304) #b00000000000000000000000000000000) (bvslt (index!7010 lt!133304) (size!6349 lt!133048)))) (or ((_ is Undefined!1210) lt!133304) ((_ is Found!1210) lt!133304) ((_ is MissingZero!1210) lt!133304) (not ((_ is MissingVacant!1210) lt!133304)) (and (bvsge (index!7013 lt!133304) #b00000000000000000000000000000000) (bvslt (index!7013 lt!133304) (size!6349 lt!133048)))) (or ((_ is Undefined!1210) lt!133304) (ite ((_ is Found!1210) lt!133304) (= (select (arr!5998 lt!133048) (index!7011 lt!133304)) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!1210) lt!133304) (= (select (arr!5998 lt!133048) (index!7010 lt!133304)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1210) lt!133304) (= (select (arr!5998 lt!133048) (index!7013 lt!133304)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!63067 (= lt!133304 e!170595)))

(declare-fun c!44880 () Bool)

(assert (=> d!63067 (= c!44880 (and ((_ is Intermediate!1210) lt!133305) (undefined!2022 lt!133305)))))

(assert (=> d!63067 (= lt!133305 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (mask!11209 thiss!1504)) (select (arr!5998 lt!133048) #b00000000000000000000000000000000) lt!133048 (mask!11209 thiss!1504)))))

(assert (=> d!63067 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63067 (= (seekEntryOrOpen!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) lt!133048 (mask!11209 thiss!1504)) lt!133304)))

(declare-fun b!263235 () Bool)

(assert (=> b!263235 (= e!170595 Undefined!1210)))

(assert (= (and d!63067 c!44880) b!263235))

(assert (= (and d!63067 (not c!44880)) b!263231))

(assert (= (and b!263231 c!44881) b!263233))

(assert (= (and b!263231 (not c!44881)) b!263232))

(assert (= (and b!263232 c!44879) b!263230))

(assert (= (and b!263232 (not c!44879)) b!263234))

(declare-fun m!279409 () Bool)

(assert (=> b!263231 m!279409))

(assert (=> b!263234 m!279233))

(declare-fun m!279411 () Bool)

(assert (=> b!263234 m!279411))

(declare-fun m!279413 () Bool)

(assert (=> d!63067 m!279413))

(assert (=> d!63067 m!279117))

(declare-fun m!279415 () Bool)

(assert (=> d!63067 m!279415))

(assert (=> d!63067 m!279233))

(declare-fun m!279417 () Bool)

(assert (=> d!63067 m!279417))

(declare-fun m!279419 () Bool)

(assert (=> d!63067 m!279419))

(assert (=> d!63067 m!279417))

(assert (=> d!63067 m!279233))

(declare-fun m!279421 () Bool)

(assert (=> d!63067 m!279421))

(assert (=> b!263126 d!63067))

(declare-fun d!63069 () Bool)

(declare-fun res!128586 () Bool)

(declare-fun e!170601 () Bool)

(assert (=> d!63069 (=> res!128586 e!170601)))

(assert (=> d!63069 (= res!128586 (and ((_ is Cons!3868) (toList!1966 lt!133031)) (= (_1!2497 (h!4534 (toList!1966 lt!133031))) key!932)))))

(assert (=> d!63069 (= (containsKey!311 (toList!1966 lt!133031) key!932) e!170601)))

(declare-fun b!263240 () Bool)

(declare-fun e!170602 () Bool)

(assert (=> b!263240 (= e!170601 e!170602)))

(declare-fun res!128587 () Bool)

(assert (=> b!263240 (=> (not res!128587) (not e!170602))))

(assert (=> b!263240 (= res!128587 (and (or (not ((_ is Cons!3868) (toList!1966 lt!133031))) (bvsle (_1!2497 (h!4534 (toList!1966 lt!133031))) key!932)) ((_ is Cons!3868) (toList!1966 lt!133031)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133031))) key!932)))))

(declare-fun b!263241 () Bool)

(assert (=> b!263241 (= e!170602 (containsKey!311 (t!8957 (toList!1966 lt!133031)) key!932))))

(assert (= (and d!63069 (not res!128586)) b!263240))

(assert (= (and b!263240 res!128587) b!263241))

(declare-fun m!279423 () Bool)

(assert (=> b!263241 m!279423))

(assert (=> d!62999 d!63069))

(declare-fun d!63071 () Bool)

(assert (=> d!63071 (= (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) index!297)) (and (not (= (select (arr!5998 (_keys!7035 thiss!1504)) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5998 (_keys!7035 thiss!1504)) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!263112 d!63071))

(declare-fun d!63073 () Bool)

(declare-fun lt!133309 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!175 (List!3872) (InoxSet tuple2!4974))

(assert (=> d!63073 (= lt!133309 (select (content!175 (toList!1966 lt!133149)) lt!133042))))

(declare-fun e!170608 () Bool)

(assert (=> d!63073 (= lt!133309 e!170608)))

(declare-fun res!128593 () Bool)

(assert (=> d!63073 (=> (not res!128593) (not e!170608))))

(assert (=> d!63073 (= res!128593 ((_ is Cons!3868) (toList!1966 lt!133149)))))

(assert (=> d!63073 (= (contains!1913 (toList!1966 lt!133149) lt!133042) lt!133309)))

(declare-fun b!263246 () Bool)

(declare-fun e!170607 () Bool)

(assert (=> b!263246 (= e!170608 e!170607)))

(declare-fun res!128592 () Bool)

(assert (=> b!263246 (=> res!128592 e!170607)))

(assert (=> b!263246 (= res!128592 (= (h!4534 (toList!1966 lt!133149)) lt!133042))))

(declare-fun b!263247 () Bool)

(assert (=> b!263247 (= e!170607 (contains!1913 (t!8957 (toList!1966 lt!133149)) lt!133042))))

(assert (= (and d!63073 res!128593) b!263246))

(assert (= (and b!263246 (not res!128592)) b!263247))

(declare-fun m!279425 () Bool)

(assert (=> d!63073 m!279425))

(declare-fun m!279427 () Bool)

(assert (=> d!63073 m!279427))

(declare-fun m!279429 () Bool)

(assert (=> b!263247 m!279429))

(assert (=> b!262999 d!63073))

(declare-fun d!63075 () Bool)

(declare-fun get!3095 (Option!325) V!8523)

(assert (=> d!63075 (= (apply!262 lt!133223 #b1000000000000000000000000000000000000000000000000000000000000000) (get!3095 (getValueByKey!319 (toList!1966 lt!133223) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9253 () Bool)

(assert (= bs!9253 d!63075))

(declare-fun m!279431 () Bool)

(assert (=> bs!9253 m!279431))

(assert (=> bs!9253 m!279431))

(declare-fun m!279433 () Bool)

(assert (=> bs!9253 m!279433))

(assert (=> b!263079 d!63075))

(declare-fun b!263249 () Bool)

(declare-fun e!170609 () Bool)

(declare-fun call!25198 () Bool)

(assert (=> b!263249 (= e!170609 call!25198)))

(declare-fun b!263250 () Bool)

(declare-fun e!170610 () Bool)

(assert (=> b!263250 (= e!170609 e!170610)))

(declare-fun lt!133310 () (_ BitVec 64))

(assert (=> b!263250 (= lt!133310 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!133311 () Unit!8187)

(assert (=> b!263250 (= lt!133311 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!133048 lt!133310 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!263250 (arrayContainsKey!0 lt!133048 lt!133310 #b00000000000000000000000000000000)))

(declare-fun lt!133312 () Unit!8187)

(assert (=> b!263250 (= lt!133312 lt!133311)))

(declare-fun res!128595 () Bool)

(assert (=> b!263250 (= res!128595 (= (seekEntryOrOpen!0 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!133048 (mask!11209 thiss!1504)) (Found!1210 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!263250 (=> (not res!128595) (not e!170610))))

(declare-fun b!263251 () Bool)

(assert (=> b!263251 (= e!170610 call!25198)))

(declare-fun bm!25195 () Bool)

(assert (=> bm!25195 (= call!25198 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!133048 (mask!11209 thiss!1504)))))

(declare-fun b!263248 () Bool)

(declare-fun e!170611 () Bool)

(assert (=> b!263248 (= e!170611 e!170609)))

(declare-fun c!44882 () Bool)

(assert (=> b!263248 (= c!44882 (validKeyInArray!0 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!63077 () Bool)

(declare-fun res!128594 () Bool)

(assert (=> d!63077 (=> res!128594 e!170611)))

(assert (=> d!63077 (= res!128594 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(assert (=> d!63077 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!133048 (mask!11209 thiss!1504)) e!170611)))

(assert (= (and d!63077 (not res!128594)) b!263248))

(assert (= (and b!263248 c!44882) b!263250))

(assert (= (and b!263248 (not c!44882)) b!263249))

(assert (= (and b!263250 res!128595) b!263251))

(assert (= (or b!263251 b!263249) bm!25195))

(declare-fun m!279435 () Bool)

(assert (=> b!263250 m!279435))

(declare-fun m!279437 () Bool)

(assert (=> b!263250 m!279437))

(declare-fun m!279439 () Bool)

(assert (=> b!263250 m!279439))

(assert (=> b!263250 m!279435))

(declare-fun m!279441 () Bool)

(assert (=> b!263250 m!279441))

(declare-fun m!279443 () Bool)

(assert (=> bm!25195 m!279443))

(assert (=> b!263248 m!279435))

(assert (=> b!263248 m!279435))

(declare-fun m!279445 () Bool)

(assert (=> b!263248 m!279445))

(assert (=> bm!25182 d!63077))

(declare-fun d!63079 () Bool)

(declare-fun lt!133315 () Bool)

(declare-fun content!176 (List!3873) (InoxSet (_ BitVec 64)))

(assert (=> d!63079 (= lt!133315 (select (content!176 Nil!3870) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun e!170616 () Bool)

(assert (=> d!63079 (= lt!133315 e!170616)))

(declare-fun res!128601 () Bool)

(assert (=> d!63079 (=> (not res!128601) (not e!170616))))

(assert (=> d!63079 (= res!128601 ((_ is Cons!3869) Nil!3870))))

(assert (=> d!63079 (= (contains!1914 Nil!3870 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)) lt!133315)))

(declare-fun b!263256 () Bool)

(declare-fun e!170617 () Bool)

(assert (=> b!263256 (= e!170616 e!170617)))

(declare-fun res!128600 () Bool)

(assert (=> b!263256 (=> res!128600 e!170617)))

(assert (=> b!263256 (= res!128600 (= (h!4535 Nil!3870) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun b!263257 () Bool)

(assert (=> b!263257 (= e!170617 (contains!1914 (t!8958 Nil!3870) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(assert (= (and d!63079 res!128601) b!263256))

(assert (= (and b!263256 (not res!128600)) b!263257))

(declare-fun m!279447 () Bool)

(assert (=> d!63079 m!279447))

(assert (=> d!63079 m!279233))

(declare-fun m!279449 () Bool)

(assert (=> d!63079 m!279449))

(assert (=> b!263257 m!279233))

(declare-fun m!279451 () Bool)

(assert (=> b!263257 m!279451))

(assert (=> b!263138 d!63079))

(assert (=> bm!25155 d!63037))

(declare-fun b!263259 () Bool)

(declare-fun e!170618 () Bool)

(declare-fun call!25199 () Bool)

(assert (=> b!263259 (= e!170618 call!25199)))

(declare-fun b!263260 () Bool)

(declare-fun e!170619 () Bool)

(assert (=> b!263260 (= e!170618 e!170619)))

(declare-fun lt!133316 () (_ BitVec 64))

(assert (=> b!263260 (= lt!133316 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!133317 () Unit!8187)

(assert (=> b!263260 (= lt!133317 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!7035 thiss!1504) lt!133316 #b00000000000000000000000000000000))))

(assert (=> b!263260 (arrayContainsKey!0 (_keys!7035 thiss!1504) lt!133316 #b00000000000000000000000000000000)))

(declare-fun lt!133318 () Unit!8187)

(assert (=> b!263260 (= lt!133318 lt!133317)))

(declare-fun res!128603 () Bool)

(assert (=> b!263260 (= res!128603 (= (seekEntryOrOpen!0 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (_keys!7035 thiss!1504) (mask!11209 thiss!1504)) (Found!1210 #b00000000000000000000000000000000)))))

(assert (=> b!263260 (=> (not res!128603) (not e!170619))))

(declare-fun b!263261 () Bool)

(assert (=> b!263261 (= e!170619 call!25199)))

(declare-fun bm!25196 () Bool)

(assert (=> bm!25196 (= call!25199 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(declare-fun b!263258 () Bool)

(declare-fun e!170620 () Bool)

(assert (=> b!263258 (= e!170620 e!170618)))

(declare-fun c!44883 () Bool)

(assert (=> b!263258 (= c!44883 (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!63081 () Bool)

(declare-fun res!128602 () Bool)

(assert (=> d!63081 (=> res!128602 e!170620)))

(assert (=> d!63081 (= res!128602 (bvsge #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63081 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)) e!170620)))

(assert (= (and d!63081 (not res!128602)) b!263258))

(assert (= (and b!263258 c!44883) b!263260))

(assert (= (and b!263258 (not c!44883)) b!263259))

(assert (= (and b!263260 res!128603) b!263261))

(assert (= (or b!263261 b!263259) bm!25196))

(assert (=> b!263260 m!279177))

(declare-fun m!279453 () Bool)

(assert (=> b!263260 m!279453))

(declare-fun m!279455 () Bool)

(assert (=> b!263260 m!279455))

(assert (=> b!263260 m!279177))

(declare-fun m!279457 () Bool)

(assert (=> b!263260 m!279457))

(declare-fun m!279459 () Bool)

(assert (=> bm!25196 m!279459))

(assert (=> b!263258 m!279177))

(assert (=> b!263258 m!279177))

(assert (=> b!263258 m!279179))

(assert (=> b!263213 d!63081))

(declare-fun d!63083 () Bool)

(assert (=> d!63083 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133034) key!932))))

(declare-fun lt!133321 () Unit!8187)

(declare-fun choose!1301 (List!3872 (_ BitVec 64)) Unit!8187)

(assert (=> d!63083 (= lt!133321 (choose!1301 (toList!1966 lt!133034) key!932))))

(declare-fun e!170623 () Bool)

(assert (=> d!63083 e!170623))

(declare-fun res!128606 () Bool)

(assert (=> d!63083 (=> (not res!128606) (not e!170623))))

(declare-fun isStrictlySorted!372 (List!3872) Bool)

(assert (=> d!63083 (= res!128606 (isStrictlySorted!372 (toList!1966 lt!133034)))))

(assert (=> d!63083 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133034) key!932) lt!133321)))

(declare-fun b!263264 () Bool)

(assert (=> b!263264 (= e!170623 (containsKey!311 (toList!1966 lt!133034) key!932))))

(assert (= (and d!63083 res!128606) b!263264))

(assert (=> d!63083 m!279171))

(assert (=> d!63083 m!279171))

(assert (=> d!63083 m!279173))

(declare-fun m!279461 () Bool)

(assert (=> d!63083 m!279461))

(declare-fun m!279463 () Bool)

(assert (=> d!63083 m!279463))

(assert (=> b!263264 m!279167))

(assert (=> b!263024 d!63083))

(declare-fun d!63085 () Bool)

(declare-fun isEmpty!545 (Option!325) Bool)

(assert (=> d!63085 (= (isDefined!261 (getValueByKey!319 (toList!1966 lt!133034) key!932)) (not (isEmpty!545 (getValueByKey!319 (toList!1966 lt!133034) key!932))))))

(declare-fun bs!9254 () Bool)

(assert (= bs!9254 d!63085))

(assert (=> bs!9254 m!279171))

(declare-fun m!279465 () Bool)

(assert (=> bs!9254 m!279465))

(assert (=> b!263024 d!63085))

(declare-fun b!263275 () Bool)

(declare-fun e!170629 () Option!325)

(assert (=> b!263275 (= e!170629 (getValueByKey!319 (t!8957 (toList!1966 lt!133034)) key!932))))

(declare-fun b!263273 () Bool)

(declare-fun e!170628 () Option!325)

(assert (=> b!263273 (= e!170628 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133034)))))))

(declare-fun d!63087 () Bool)

(declare-fun c!44888 () Bool)

(assert (=> d!63087 (= c!44888 (and ((_ is Cons!3868) (toList!1966 lt!133034)) (= (_1!2497 (h!4534 (toList!1966 lt!133034))) key!932)))))

(assert (=> d!63087 (= (getValueByKey!319 (toList!1966 lt!133034) key!932) e!170628)))

(declare-fun b!263276 () Bool)

(assert (=> b!263276 (= e!170629 None!323)))

(declare-fun b!263274 () Bool)

(assert (=> b!263274 (= e!170628 e!170629)))

(declare-fun c!44889 () Bool)

(assert (=> b!263274 (= c!44889 (and ((_ is Cons!3868) (toList!1966 lt!133034)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133034))) key!932))))))

(assert (= (and d!63087 c!44888) b!263273))

(assert (= (and d!63087 (not c!44888)) b!263274))

(assert (= (and b!263274 c!44889) b!263275))

(assert (= (and b!263274 (not c!44889)) b!263276))

(declare-fun m!279467 () Bool)

(assert (=> b!263275 m!279467))

(assert (=> b!263024 d!63087))

(declare-fun b!263277 () Bool)

(declare-fun e!170630 () (_ BitVec 32))

(assert (=> b!263277 (= e!170630 #b00000000000000000000000000000000)))

(declare-fun b!263279 () Bool)

(declare-fun e!170631 () (_ BitVec 32))

(assert (=> b!263279 (= e!170630 e!170631)))

(declare-fun c!44891 () Bool)

(assert (=> b!263279 (= c!44891 (validKeyInArray!0 (select (arr!5998 lt!133048) (bvadd index!297 #b00000000000000000000000000000001))))))

(declare-fun b!263280 () Bool)

(declare-fun call!25200 () (_ BitVec 32))

(assert (=> b!263280 (= e!170631 call!25200)))

(declare-fun bm!25197 () Bool)

(assert (=> bm!25197 (= call!25200 (arrayCountValidKeys!0 lt!133048 (bvadd index!297 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(declare-fun d!63089 () Bool)

(declare-fun lt!133322 () (_ BitVec 32))

(assert (=> d!63089 (and (bvsge lt!133322 #b00000000000000000000000000000000) (bvsle lt!133322 (bvsub (size!6349 lt!133048) (bvadd index!297 #b00000000000000000000000000000001))))))

(assert (=> d!63089 (= lt!133322 e!170630)))

(declare-fun c!44890 () Bool)

(assert (=> d!63089 (= c!44890 (bvsge (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!63089 (and (bvsle (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)) (bvsge (bvadd index!297 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6349 lt!133048)))))

(assert (=> d!63089 (= (arrayCountValidKeys!0 lt!133048 (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)) lt!133322)))

(declare-fun b!263278 () Bool)

(assert (=> b!263278 (= e!170631 (bvadd #b00000000000000000000000000000001 call!25200))))

(assert (= (and d!63089 c!44890) b!263277))

(assert (= (and d!63089 (not c!44890)) b!263279))

(assert (= (and b!263279 c!44891) b!263278))

(assert (= (and b!263279 (not c!44891)) b!263280))

(assert (= (or b!263278 b!263280) bm!25197))

(declare-fun m!279469 () Bool)

(assert (=> b!263279 m!279469))

(assert (=> b!263279 m!279469))

(declare-fun m!279471 () Bool)

(assert (=> b!263279 m!279471))

(declare-fun m!279473 () Bool)

(assert (=> bm!25197 m!279473))

(assert (=> bm!25187 d!63089))

(declare-fun d!63091 () Bool)

(declare-fun e!170632 () Bool)

(assert (=> d!63091 e!170632))

(declare-fun res!128607 () Bool)

(assert (=> d!63091 (=> res!128607 e!170632)))

(declare-fun lt!133324 () Bool)

(assert (=> d!63091 (= res!128607 (not lt!133324))))

(declare-fun lt!133323 () Bool)

(assert (=> d!63091 (= lt!133324 lt!133323)))

(declare-fun lt!133325 () Unit!8187)

(declare-fun e!170633 () Unit!8187)

(assert (=> d!63091 (= lt!133325 e!170633)))

(declare-fun c!44892 () Bool)

(assert (=> d!63091 (= c!44892 lt!133323)))

(assert (=> d!63091 (= lt!133323 (containsKey!311 (toList!1966 lt!133223) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!63091 (= (contains!1911 lt!133223 #b1000000000000000000000000000000000000000000000000000000000000000) lt!133324)))

(declare-fun b!263281 () Bool)

(declare-fun lt!133326 () Unit!8187)

(assert (=> b!263281 (= e!170633 lt!133326)))

(assert (=> b!263281 (= lt!133326 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133223) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!263281 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133223) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263282 () Bool)

(declare-fun Unit!8202 () Unit!8187)

(assert (=> b!263282 (= e!170633 Unit!8202)))

(declare-fun b!263283 () Bool)

(assert (=> b!263283 (= e!170632 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133223) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63091 c!44892) b!263281))

(assert (= (and d!63091 (not c!44892)) b!263282))

(assert (= (and d!63091 (not res!128607)) b!263283))

(declare-fun m!279475 () Bool)

(assert (=> d!63091 m!279475))

(declare-fun m!279477 () Bool)

(assert (=> b!263281 m!279477))

(assert (=> b!263281 m!279431))

(assert (=> b!263281 m!279431))

(declare-fun m!279479 () Bool)

(assert (=> b!263281 m!279479))

(assert (=> b!263283 m!279431))

(assert (=> b!263283 m!279431))

(assert (=> b!263283 m!279479))

(assert (=> bm!25171 d!63091))

(assert (=> b!263026 d!63085))

(assert (=> b!263026 d!63087))

(declare-fun d!63093 () Bool)

(declare-fun e!170634 () Bool)

(assert (=> d!63093 e!170634))

(declare-fun res!128608 () Bool)

(assert (=> d!63093 (=> (not res!128608) (not e!170634))))

(declare-fun lt!133329 () ListLongMap!3901)

(assert (=> d!63093 (= res!128608 (contains!1911 lt!133329 (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun lt!133330 () List!3872)

(assert (=> d!63093 (= lt!133329 (ListLongMap!3902 lt!133330))))

(declare-fun lt!133328 () Unit!8187)

(declare-fun lt!133327 () Unit!8187)

(assert (=> d!63093 (= lt!133328 lt!133327)))

(assert (=> d!63093 (= (getValueByKey!319 lt!133330 (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) (Some!324 (_2!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63093 (= lt!133327 (lemmaContainsTupThenGetReturnValue!177 lt!133330 (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63093 (= lt!133330 (insertStrictlySorted!179 (toList!1966 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192))) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63093 (= (+!705 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192)) (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) lt!133329)))

(declare-fun b!263284 () Bool)

(declare-fun res!128609 () Bool)

(assert (=> b!263284 (=> (not res!128609) (not e!170634))))

(assert (=> b!263284 (= res!128609 (= (getValueByKey!319 (toList!1966 lt!133329) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) (Some!324 (_2!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(declare-fun b!263285 () Bool)

(assert (=> b!263285 (= e!170634 (contains!1913 (toList!1966 lt!133329) (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (= (and d!63093 res!128608) b!263284))

(assert (= (and b!263284 res!128609) b!263285))

(declare-fun m!279481 () Bool)

(assert (=> d!63093 m!279481))

(declare-fun m!279483 () Bool)

(assert (=> d!63093 m!279483))

(declare-fun m!279485 () Bool)

(assert (=> d!63093 m!279485))

(declare-fun m!279487 () Bool)

(assert (=> d!63093 m!279487))

(declare-fun m!279489 () Bool)

(assert (=> b!263284 m!279489))

(declare-fun m!279491 () Bool)

(assert (=> b!263285 m!279491))

(assert (=> bm!25192 d!63093))

(assert (=> d!63009 d!62993))

(declare-fun b!263302 () Bool)

(declare-fun res!128619 () Bool)

(declare-fun lt!133333 () SeekEntryResult!1210)

(assert (=> b!263302 (= res!128619 (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7010 lt!133333)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!170645 () Bool)

(assert (=> b!263302 (=> (not res!128619) (not e!170645))))

(declare-fun b!263303 () Bool)

(declare-fun call!25205 () Bool)

(assert (=> b!263303 (= e!170645 (not call!25205))))

(declare-fun b!263304 () Bool)

(declare-fun e!170646 () Bool)

(assert (=> b!263304 (= e!170646 ((_ is Undefined!1210) lt!133333))))

(declare-fun b!263305 () Bool)

(declare-fun e!170644 () Bool)

(assert (=> b!263305 (= e!170644 e!170645)))

(declare-fun res!128618 () Bool)

(declare-fun call!25206 () Bool)

(assert (=> b!263305 (= res!128618 call!25206)))

(assert (=> b!263305 (=> (not res!128618) (not e!170645))))

(declare-fun bm!25202 () Bool)

(assert (=> bm!25202 (= call!25205 (arrayContainsKey!0 (_keys!7035 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!263306 () Bool)

(assert (=> b!263306 (= e!170644 e!170646)))

(declare-fun c!44897 () Bool)

(assert (=> b!263306 (= c!44897 ((_ is MissingVacant!1210) lt!133333))))

(declare-fun c!44898 () Bool)

(declare-fun bm!25203 () Bool)

(assert (=> bm!25203 (= call!25206 (inRange!0 (ite c!44898 (index!7010 lt!133333) (index!7013 lt!133333)) (mask!11209 thiss!1504)))))

(declare-fun b!263307 () Bool)

(declare-fun res!128621 () Bool)

(declare-fun e!170643 () Bool)

(assert (=> b!263307 (=> (not res!128621) (not e!170643))))

(assert (=> b!263307 (= res!128621 call!25206)))

(assert (=> b!263307 (= e!170646 e!170643)))

(declare-fun d!63095 () Bool)

(assert (=> d!63095 e!170644))

(assert (=> d!63095 (= c!44898 ((_ is MissingZero!1210) lt!133333))))

(assert (=> d!63095 (= lt!133333 (seekEntryOrOpen!0 key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(assert (=> d!63095 true))

(declare-fun _$34!1128 () Unit!8187)

(assert (=> d!63095 (= (choose!1298 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) key!932 (defaultEntry!4843 thiss!1504)) _$34!1128)))

(declare-fun b!263308 () Bool)

(assert (=> b!263308 (= e!170643 (not call!25205))))

(declare-fun b!263309 () Bool)

(declare-fun res!128620 () Bool)

(assert (=> b!263309 (=> (not res!128620) (not e!170643))))

(assert (=> b!263309 (= res!128620 (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7013 lt!133333)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!63095 c!44898) b!263305))

(assert (= (and d!63095 (not c!44898)) b!263306))

(assert (= (and b!263305 res!128618) b!263302))

(assert (= (and b!263302 res!128619) b!263303))

(assert (= (and b!263306 c!44897) b!263307))

(assert (= (and b!263306 (not c!44897)) b!263304))

(assert (= (and b!263307 res!128621) b!263309))

(assert (= (and b!263309 res!128620) b!263308))

(assert (= (or b!263305 b!263307) bm!25203))

(assert (= (or b!263303 b!263308) bm!25202))

(assert (=> d!63095 m!279027))

(declare-fun m!279493 () Bool)

(assert (=> b!263309 m!279493))

(assert (=> bm!25202 m!278979))

(declare-fun m!279495 () Bool)

(assert (=> bm!25203 m!279495))

(declare-fun m!279497 () Bool)

(assert (=> b!263302 m!279497))

(assert (=> d!63009 d!63095))

(declare-fun d!63097 () Bool)

(assert (=> d!63097 (= (validMask!0 (mask!11209 thiss!1504)) (and (or (= (mask!11209 thiss!1504) #b00000000000000000000000000000111) (= (mask!11209 thiss!1504) #b00000000000000000000000000001111) (= (mask!11209 thiss!1504) #b00000000000000000000000000011111) (= (mask!11209 thiss!1504) #b00000000000000000000000000111111) (= (mask!11209 thiss!1504) #b00000000000000000000000001111111) (= (mask!11209 thiss!1504) #b00000000000000000000000011111111) (= (mask!11209 thiss!1504) #b00000000000000000000000111111111) (= (mask!11209 thiss!1504) #b00000000000000000000001111111111) (= (mask!11209 thiss!1504) #b00000000000000000000011111111111) (= (mask!11209 thiss!1504) #b00000000000000000000111111111111) (= (mask!11209 thiss!1504) #b00000000000000000001111111111111) (= (mask!11209 thiss!1504) #b00000000000000000011111111111111) (= (mask!11209 thiss!1504) #b00000000000000000111111111111111) (= (mask!11209 thiss!1504) #b00000000000000001111111111111111) (= (mask!11209 thiss!1504) #b00000000000000011111111111111111) (= (mask!11209 thiss!1504) #b00000000000000111111111111111111) (= (mask!11209 thiss!1504) #b00000000000001111111111111111111) (= (mask!11209 thiss!1504) #b00000000000011111111111111111111) (= (mask!11209 thiss!1504) #b00000000000111111111111111111111) (= (mask!11209 thiss!1504) #b00000000001111111111111111111111) (= (mask!11209 thiss!1504) #b00000000011111111111111111111111) (= (mask!11209 thiss!1504) #b00000000111111111111111111111111) (= (mask!11209 thiss!1504) #b00000001111111111111111111111111) (= (mask!11209 thiss!1504) #b00000011111111111111111111111111) (= (mask!11209 thiss!1504) #b00000111111111111111111111111111) (= (mask!11209 thiss!1504) #b00001111111111111111111111111111) (= (mask!11209 thiss!1504) #b00011111111111111111111111111111) (= (mask!11209 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!11209 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> d!63009 d!63097))

(declare-fun b!263310 () Bool)

(declare-fun e!170647 () Bool)

(assert (=> b!263310 (= e!170647 (contains!1914 (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870) (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!263312 () Bool)

(declare-fun e!170650 () Bool)

(declare-fun call!25207 () Bool)

(assert (=> b!263312 (= e!170650 call!25207)))

(declare-fun b!263313 () Bool)

(declare-fun e!170648 () Bool)

(assert (=> b!263313 (= e!170648 e!170650)))

(declare-fun c!44899 () Bool)

(assert (=> b!263313 (= c!44899 (validKeyInArray!0 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!263311 () Bool)

(declare-fun e!170649 () Bool)

(assert (=> b!263311 (= e!170649 e!170648)))

(declare-fun res!128623 () Bool)

(assert (=> b!263311 (=> (not res!128623) (not e!170648))))

(assert (=> b!263311 (= res!128623 (not e!170647))))

(declare-fun res!128624 () Bool)

(assert (=> b!263311 (=> (not res!128624) (not e!170647))))

(assert (=> b!263311 (= res!128624 (validKeyInArray!0 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!63099 () Bool)

(declare-fun res!128622 () Bool)

(assert (=> d!63099 (=> res!128622 e!170649)))

(assert (=> d!63099 (= res!128622 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(assert (=> d!63099 (= (arrayNoDuplicates!0 lt!133048 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) e!170649)))

(declare-fun bm!25204 () Bool)

(assert (=> bm!25204 (= call!25207 (arrayNoDuplicates!0 lt!133048 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!44899 (Cons!3869 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870))))))

(declare-fun b!263314 () Bool)

(assert (=> b!263314 (= e!170650 call!25207)))

(assert (= (and d!63099 (not res!128622)) b!263311))

(assert (= (and b!263311 res!128624) b!263310))

(assert (= (and b!263311 res!128623) b!263313))

(assert (= (and b!263313 c!44899) b!263312))

(assert (= (and b!263313 (not c!44899)) b!263314))

(assert (= (or b!263312 b!263314) bm!25204))

(assert (=> b!263310 m!279435))

(assert (=> b!263310 m!279435))

(declare-fun m!279499 () Bool)

(assert (=> b!263310 m!279499))

(assert (=> b!263313 m!279435))

(assert (=> b!263313 m!279435))

(assert (=> b!263313 m!279445))

(assert (=> b!263311 m!279435))

(assert (=> b!263311 m!279435))

(assert (=> b!263311 m!279445))

(assert (=> bm!25204 m!279435))

(declare-fun m!279501 () Bool)

(assert (=> bm!25204 m!279501))

(assert (=> bm!25185 d!63099))

(declare-fun d!63101 () Bool)

(declare-fun e!170651 () Bool)

(assert (=> d!63101 e!170651))

(declare-fun res!128625 () Bool)

(assert (=> d!63101 (=> res!128625 e!170651)))

(declare-fun lt!133335 () Bool)

(assert (=> d!63101 (= res!128625 (not lt!133335))))

(declare-fun lt!133334 () Bool)

(assert (=> d!63101 (= lt!133335 lt!133334)))

(declare-fun lt!133336 () Unit!8187)

(declare-fun e!170652 () Unit!8187)

(assert (=> d!63101 (= lt!133336 e!170652)))

(declare-fun c!44900 () Bool)

(assert (=> d!63101 (= c!44900 lt!133334)))

(assert (=> d!63101 (= lt!133334 (containsKey!311 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) key!932))))

(assert (=> d!63101 (= (contains!1911 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) key!932) lt!133335)))

(declare-fun b!263315 () Bool)

(declare-fun lt!133337 () Unit!8187)

(assert (=> b!263315 (= e!170652 lt!133337)))

(assert (=> b!263315 (= lt!133337 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) key!932))))

(assert (=> b!263315 (isDefined!261 (getValueByKey!319 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) key!932))))

(declare-fun b!263316 () Bool)

(declare-fun Unit!8203 () Unit!8187)

(assert (=> b!263316 (= e!170652 Unit!8203)))

(declare-fun b!263317 () Bool)

(assert (=> b!263317 (= e!170651 (isDefined!261 (getValueByKey!319 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) key!932)))))

(assert (= (and d!63101 c!44900) b!263315))

(assert (= (and d!63101 (not c!44900)) b!263316))

(assert (= (and d!63101 (not res!128625)) b!263317))

(declare-fun m!279503 () Bool)

(assert (=> d!63101 m!279503))

(declare-fun m!279505 () Bool)

(assert (=> b!263315 m!279505))

(declare-fun m!279507 () Bool)

(assert (=> b!263315 m!279507))

(assert (=> b!263315 m!279507))

(declare-fun m!279509 () Bool)

(assert (=> b!263315 m!279509))

(assert (=> b!263317 m!279507))

(assert (=> b!263317 m!279507))

(assert (=> b!263317 m!279509))

(assert (=> d!63007 d!63101))

(assert (=> d!63007 d!63015))

(declare-fun d!63103 () Bool)

(assert (=> d!63103 (contains!1911 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) key!932)))

(assert (=> d!63103 true))

(declare-fun _$17!95 () Unit!8187)

(assert (=> d!63103 (= (choose!1297 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) _$17!95)))

(declare-fun bs!9255 () Bool)

(assert (= bs!9255 d!63103))

(assert (=> bs!9255 m!279023))

(assert (=> bs!9255 m!279023))

(assert (=> bs!9255 m!279155))

(assert (=> d!63007 d!63103))

(assert (=> d!63007 d!63097))

(declare-fun d!63105 () Bool)

(assert (=> d!63105 (= (validKeyInArray!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)) (and (not (= (select (arr!5998 lt!133048) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5998 lt!133048) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!263124 d!63105))

(declare-fun d!63107 () Bool)

(assert (=> d!63107 (= (apply!262 lt!133223 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)) (get!3095 (getValueByKey!319 (toList!1966 lt!133223) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!9256 () Bool)

(assert (= bs!9256 d!63107))

(assert (=> bs!9256 m!279177))

(declare-fun m!279511 () Bool)

(assert (=> bs!9256 m!279511))

(assert (=> bs!9256 m!279511))

(declare-fun m!279513 () Bool)

(assert (=> bs!9256 m!279513))

(assert (=> b!263070 d!63107))

(declare-fun d!63109 () Bool)

(declare-fun c!44903 () Bool)

(assert (=> d!63109 (= c!44903 ((_ is ValueCellFull!2985) (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!170655 () V!8523)

(assert (=> d!63109 (= (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!170655)))

(declare-fun b!263322 () Bool)

(declare-fun get!3096 (ValueCell!2985 V!8523) V!8523)

(assert (=> b!263322 (= e!170655 (get!3096 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!263323 () Bool)

(declare-fun get!3097 (ValueCell!2985 V!8523) V!8523)

(assert (=> b!263323 (= e!170655 (get!3097 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63109 c!44903) b!263322))

(assert (= (and d!63109 (not c!44903)) b!263323))

(assert (=> b!263322 m!279227))

(assert (=> b!263322 m!279229))

(declare-fun m!279515 () Bool)

(assert (=> b!263322 m!279515))

(assert (=> b!263323 m!279227))

(assert (=> b!263323 m!279229))

(declare-fun m!279517 () Bool)

(assert (=> b!263323 m!279517))

(assert (=> b!263070 d!63109))

(declare-fun d!63111 () Bool)

(assert (=> d!63111 (= (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!263085 d!63111))

(declare-fun d!63113 () Bool)

(declare-fun e!170656 () Bool)

(assert (=> d!63113 e!170656))

(declare-fun res!128626 () Bool)

(assert (=> d!63113 (=> res!128626 e!170656)))

(declare-fun lt!133339 () Bool)

(assert (=> d!63113 (= res!128626 (not lt!133339))))

(declare-fun lt!133338 () Bool)

(assert (=> d!63113 (= lt!133339 lt!133338)))

(declare-fun lt!133340 () Unit!8187)

(declare-fun e!170657 () Unit!8187)

(assert (=> d!63113 (= lt!133340 e!170657)))

(declare-fun c!44904 () Bool)

(assert (=> d!63113 (= c!44904 lt!133338)))

(assert (=> d!63113 (= lt!133338 (containsKey!311 (toList!1966 lt!133278) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!63113 (= (contains!1911 lt!133278 #b1000000000000000000000000000000000000000000000000000000000000000) lt!133339)))

(declare-fun b!263324 () Bool)

(declare-fun lt!133341 () Unit!8187)

(assert (=> b!263324 (= e!170657 lt!133341)))

(assert (=> b!263324 (= lt!133341 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133278) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!263324 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133278) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263325 () Bool)

(declare-fun Unit!8204 () Unit!8187)

(assert (=> b!263325 (= e!170657 Unit!8204)))

(declare-fun b!263326 () Bool)

(assert (=> b!263326 (= e!170656 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133278) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63113 c!44904) b!263324))

(assert (= (and d!63113 (not c!44904)) b!263325))

(assert (= (and d!63113 (not res!128626)) b!263326))

(declare-fun m!279519 () Bool)

(assert (=> d!63113 m!279519))

(declare-fun m!279521 () Bool)

(assert (=> b!263324 m!279521))

(declare-fun m!279523 () Bool)

(assert (=> b!263324 m!279523))

(assert (=> b!263324 m!279523))

(declare-fun m!279525 () Bool)

(assert (=> b!263324 m!279525))

(assert (=> b!263326 m!279523))

(assert (=> b!263326 m!279523))

(assert (=> b!263326 m!279525))

(assert (=> bm!25189 d!63113))

(declare-fun d!63115 () Bool)

(declare-fun lt!133342 () Bool)

(assert (=> d!63115 (= lt!133342 (select (content!175 (toList!1966 lt!133287)) lt!133042))))

(declare-fun e!170659 () Bool)

(assert (=> d!63115 (= lt!133342 e!170659)))

(declare-fun res!128628 () Bool)

(assert (=> d!63115 (=> (not res!128628) (not e!170659))))

(assert (=> d!63115 (= res!128628 ((_ is Cons!3868) (toList!1966 lt!133287)))))

(assert (=> d!63115 (= (contains!1913 (toList!1966 lt!133287) lt!133042) lt!133342)))

(declare-fun b!263327 () Bool)

(declare-fun e!170658 () Bool)

(assert (=> b!263327 (= e!170659 e!170658)))

(declare-fun res!128627 () Bool)

(assert (=> b!263327 (=> res!128627 e!170658)))

(assert (=> b!263327 (= res!128627 (= (h!4534 (toList!1966 lt!133287)) lt!133042))))

(declare-fun b!263328 () Bool)

(assert (=> b!263328 (= e!170658 (contains!1913 (t!8957 (toList!1966 lt!133287)) lt!133042))))

(assert (= (and d!63115 res!128628) b!263327))

(assert (= (and b!263327 (not res!128627)) b!263328))

(declare-fun m!279527 () Bool)

(assert (=> d!63115 m!279527))

(declare-fun m!279529 () Bool)

(assert (=> d!63115 m!279529))

(declare-fun m!279531 () Bool)

(assert (=> b!263328 m!279531))

(assert (=> b!263208 d!63115))

(declare-fun d!63117 () Bool)

(declare-fun e!170660 () Bool)

(assert (=> d!63117 e!170660))

(declare-fun res!128629 () Bool)

(assert (=> d!63117 (=> res!128629 e!170660)))

(declare-fun lt!133344 () Bool)

(assert (=> d!63117 (= res!128629 (not lt!133344))))

(declare-fun lt!133343 () Bool)

(assert (=> d!63117 (= lt!133344 lt!133343)))

(declare-fun lt!133345 () Unit!8187)

(declare-fun e!170661 () Unit!8187)

(assert (=> d!63117 (= lt!133345 e!170661)))

(declare-fun c!44905 () Bool)

(assert (=> d!63117 (= c!44905 lt!133343)))

(assert (=> d!63117 (= lt!133343 (containsKey!311 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) (select (arr!5998 lt!133048) index!297)))))

(assert (=> d!63117 (= (contains!1911 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) (select (arr!5998 lt!133048) index!297)) lt!133344)))

(declare-fun b!263329 () Bool)

(declare-fun lt!133346 () Unit!8187)

(assert (=> b!263329 (= e!170661 lt!133346)))

(assert (=> b!263329 (= lt!133346 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) (select (arr!5998 lt!133048) index!297)))))

(assert (=> b!263329 (isDefined!261 (getValueByKey!319 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) (select (arr!5998 lt!133048) index!297)))))

(declare-fun b!263330 () Bool)

(declare-fun Unit!8205 () Unit!8187)

(assert (=> b!263330 (= e!170661 Unit!8205)))

(declare-fun b!263331 () Bool)

(assert (=> b!263331 (= e!170660 (isDefined!261 (getValueByKey!319 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) (select (arr!5998 lt!133048) index!297))))))

(assert (= (and d!63117 c!44905) b!263329))

(assert (= (and d!63117 (not c!44905)) b!263330))

(assert (= (and d!63117 (not res!128629)) b!263331))

(assert (=> d!63117 m!279285))

(declare-fun m!279533 () Bool)

(assert (=> d!63117 m!279533))

(assert (=> b!263329 m!279285))

(declare-fun m!279535 () Bool)

(assert (=> b!263329 m!279535))

(assert (=> b!263329 m!279285))

(declare-fun m!279537 () Bool)

(assert (=> b!263329 m!279537))

(assert (=> b!263329 m!279537))

(declare-fun m!279539 () Bool)

(assert (=> b!263329 m!279539))

(assert (=> b!263331 m!279285))

(assert (=> b!263331 m!279537))

(assert (=> b!263331 m!279537))

(assert (=> b!263331 m!279539))

(assert (=> b!263182 d!63117))

(assert (=> b!263182 d!63045))

(declare-fun b!263350 () Bool)

(declare-fun e!170675 () Bool)

(declare-fun e!170672 () Bool)

(assert (=> b!263350 (= e!170675 e!170672)))

(declare-fun res!128637 () Bool)

(declare-fun lt!133352 () SeekEntryResult!1210)

(assert (=> b!263350 (= res!128637 (and ((_ is Intermediate!1210) lt!133352) (not (undefined!2022 lt!133352)) (bvslt (x!25252 lt!133352) #b01111111111111111111111111111110) (bvsge (x!25252 lt!133352) #b00000000000000000000000000000000) (bvsge (x!25252 lt!133352) #b00000000000000000000000000000000)))))

(assert (=> b!263350 (=> (not res!128637) (not e!170672))))

(declare-fun b!263351 () Bool)

(declare-fun e!170676 () SeekEntryResult!1210)

(declare-fun e!170674 () SeekEntryResult!1210)

(assert (=> b!263351 (= e!170676 e!170674)))

(declare-fun c!44912 () Bool)

(declare-fun lt!133351 () (_ BitVec 64))

(assert (=> b!263351 (= c!44912 (or (= lt!133351 key!932) (= (bvadd lt!133351 lt!133351) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!263352 () Bool)

(assert (=> b!263352 (and (bvsge (index!7012 lt!133352) #b00000000000000000000000000000000) (bvslt (index!7012 lt!133352) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun e!170673 () Bool)

(assert (=> b!263352 (= e!170673 (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7012 lt!133352)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263353 () Bool)

(assert (=> b!263353 (and (bvsge (index!7012 lt!133352) #b00000000000000000000000000000000) (bvslt (index!7012 lt!133352) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun res!128636 () Bool)

(assert (=> b!263353 (= res!128636 (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7012 lt!133352)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!263353 (=> res!128636 e!170673)))

(declare-fun b!263354 () Bool)

(assert (=> b!263354 (= e!170676 (Intermediate!1210 true (toIndex!0 key!932 (mask!11209 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!263355 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!263355 (= e!170674 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!11209 thiss!1504)) #b00000000000000000000000000000000 (mask!11209 thiss!1504)) key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(declare-fun b!263356 () Bool)

(assert (=> b!263356 (= e!170675 (bvsge (x!25252 lt!133352) #b01111111111111111111111111111110))))

(declare-fun d!63119 () Bool)

(assert (=> d!63119 e!170675))

(declare-fun c!44913 () Bool)

(assert (=> d!63119 (= c!44913 (and ((_ is Intermediate!1210) lt!133352) (undefined!2022 lt!133352)))))

(assert (=> d!63119 (= lt!133352 e!170676)))

(declare-fun c!44914 () Bool)

(assert (=> d!63119 (= c!44914 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!63119 (= lt!133351 (select (arr!5998 (_keys!7035 thiss!1504)) (toIndex!0 key!932 (mask!11209 thiss!1504))))))

(assert (=> d!63119 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63119 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11209 thiss!1504)) key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)) lt!133352)))

(declare-fun b!263357 () Bool)

(assert (=> b!263357 (and (bvsge (index!7012 lt!133352) #b00000000000000000000000000000000) (bvslt (index!7012 lt!133352) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun res!128638 () Bool)

(assert (=> b!263357 (= res!128638 (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7012 lt!133352)) key!932))))

(assert (=> b!263357 (=> res!128638 e!170673)))

(assert (=> b!263357 (= e!170672 e!170673)))

(declare-fun b!263358 () Bool)

(assert (=> b!263358 (= e!170674 (Intermediate!1210 false (toIndex!0 key!932 (mask!11209 thiss!1504)) #b00000000000000000000000000000000))))

(assert (= (and d!63119 c!44914) b!263354))

(assert (= (and d!63119 (not c!44914)) b!263351))

(assert (= (and b!263351 c!44912) b!263358))

(assert (= (and b!263351 (not c!44912)) b!263355))

(assert (= (and d!63119 c!44913) b!263356))

(assert (= (and d!63119 (not c!44913)) b!263350))

(assert (= (and b!263350 res!128637) b!263357))

(assert (= (and b!263357 (not res!128638)) b!263353))

(assert (= (and b!263353 (not res!128636)) b!263352))

(assert (=> b!263355 m!279121))

(declare-fun m!279541 () Bool)

(assert (=> b!263355 m!279541))

(assert (=> b!263355 m!279541))

(declare-fun m!279543 () Bool)

(assert (=> b!263355 m!279543))

(declare-fun m!279545 () Bool)

(assert (=> b!263352 m!279545))

(assert (=> b!263353 m!279545))

(assert (=> b!263357 m!279545))

(assert (=> d!63119 m!279121))

(declare-fun m!279547 () Bool)

(assert (=> d!63119 m!279547))

(assert (=> d!63119 m!279117))

(assert (=> d!62993 d!63119))

(declare-fun d!63121 () Bool)

(declare-fun lt!133358 () (_ BitVec 32))

(declare-fun lt!133357 () (_ BitVec 32))

(assert (=> d!63121 (= lt!133358 (bvmul (bvxor lt!133357 (bvlshr lt!133357 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!63121 (= lt!133357 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!63121 (and (bvsge (mask!11209 thiss!1504) #b00000000000000000000000000000000) (let ((res!128639 (let ((h!4537 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!25277 (bvmul (bvxor h!4537 (bvlshr h!4537 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!25277 (bvlshr x!25277 #b00000000000000000000000000001101)) (mask!11209 thiss!1504)))))) (and (bvslt res!128639 (bvadd (mask!11209 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!128639 #b00000000000000000000000000000000))))))

(assert (=> d!63121 (= (toIndex!0 key!932 (mask!11209 thiss!1504)) (bvand (bvxor lt!133358 (bvlshr lt!133358 #b00000000000000000000000000001101)) (mask!11209 thiss!1504)))))

(assert (=> d!62993 d!63121))

(assert (=> d!62993 d!63097))

(assert (=> b!263145 d!63111))

(declare-fun b!263383 () Bool)

(declare-fun e!170696 () Bool)

(declare-fun lt!133374 () ListLongMap!3901)

(assert (=> b!263383 (= e!170696 (= lt!133374 (getCurrentListMapNoExtraKeys!581 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4843 thiss!1504))))))

(declare-fun b!263384 () Bool)

(declare-fun e!170694 () Bool)

(assert (=> b!263384 (= e!170694 (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!263384 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!263385 () Bool)

(declare-fun res!128648 () Bool)

(declare-fun e!170695 () Bool)

(assert (=> b!263385 (=> (not res!128648) (not e!170695))))

(assert (=> b!263385 (= res!128648 (not (contains!1911 lt!133374 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!263386 () Bool)

(declare-fun e!170697 () Bool)

(assert (=> b!263386 (= e!170695 e!170697)))

(declare-fun c!44924 () Bool)

(assert (=> b!263386 (= c!44924 e!170694)))

(declare-fun res!128649 () Bool)

(assert (=> b!263386 (=> (not res!128649) (not e!170694))))

(assert (=> b!263386 (= res!128649 (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun b!263387 () Bool)

(declare-fun e!170693 () ListLongMap!3901)

(declare-fun e!170691 () ListLongMap!3901)

(assert (=> b!263387 (= e!170693 e!170691)))

(declare-fun c!44926 () Bool)

(assert (=> b!263387 (= c!44926 (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!263388 () Bool)

(declare-fun isEmpty!546 (ListLongMap!3901) Bool)

(assert (=> b!263388 (= e!170696 (isEmpty!546 lt!133374))))

(declare-fun bm!25207 () Bool)

(declare-fun call!25210 () ListLongMap!3901)

(assert (=> bm!25207 (= call!25210 (getCurrentListMapNoExtraKeys!581 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4843 thiss!1504)))))

(declare-fun d!63123 () Bool)

(assert (=> d!63123 e!170695))

(declare-fun res!128651 () Bool)

(assert (=> d!63123 (=> (not res!128651) (not e!170695))))

(assert (=> d!63123 (= res!128651 (not (contains!1911 lt!133374 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63123 (= lt!133374 e!170693)))

(declare-fun c!44923 () Bool)

(assert (=> d!63123 (= c!44923 (bvsge #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63123 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63123 (= (getCurrentListMapNoExtraKeys!581 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) lt!133374)))

(declare-fun b!263389 () Bool)

(assert (=> b!263389 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> b!263389 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6348 (_values!4826 thiss!1504))))))

(declare-fun e!170692 () Bool)

(assert (=> b!263389 (= e!170692 (= (apply!262 lt!133374 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!263390 () Bool)

(assert (=> b!263390 (= e!170697 e!170696)))

(declare-fun c!44925 () Bool)

(assert (=> b!263390 (= c!44925 (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun b!263391 () Bool)

(assert (=> b!263391 (= e!170693 (ListLongMap!3902 Nil!3869))))

(declare-fun b!263392 () Bool)

(declare-fun lt!133373 () Unit!8187)

(declare-fun lt!133376 () Unit!8187)

(assert (=> b!263392 (= lt!133373 lt!133376)))

(declare-fun lt!133377 () (_ BitVec 64))

(declare-fun lt!133378 () (_ BitVec 64))

(declare-fun lt!133375 () V!8523)

(declare-fun lt!133379 () ListLongMap!3901)

(assert (=> b!263392 (not (contains!1911 (+!705 lt!133379 (tuple2!4975 lt!133378 lt!133375)) lt!133377))))

(declare-fun addStillNotContains!131 (ListLongMap!3901 (_ BitVec 64) V!8523 (_ BitVec 64)) Unit!8187)

(assert (=> b!263392 (= lt!133376 (addStillNotContains!131 lt!133379 lt!133378 lt!133375 lt!133377))))

(assert (=> b!263392 (= lt!133377 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!263392 (= lt!133375 (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!263392 (= lt!133378 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!263392 (= lt!133379 call!25210)))

(assert (=> b!263392 (= e!170691 (+!705 call!25210 (tuple2!4975 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!263393 () Bool)

(assert (=> b!263393 (= e!170691 call!25210)))

(declare-fun b!263394 () Bool)

(assert (=> b!263394 (= e!170697 e!170692)))

(assert (=> b!263394 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun res!128650 () Bool)

(assert (=> b!263394 (= res!128650 (contains!1911 lt!133374 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!263394 (=> (not res!128650) (not e!170692))))

(assert (= (and d!63123 c!44923) b!263391))

(assert (= (and d!63123 (not c!44923)) b!263387))

(assert (= (and b!263387 c!44926) b!263392))

(assert (= (and b!263387 (not c!44926)) b!263393))

(assert (= (or b!263392 b!263393) bm!25207))

(assert (= (and d!63123 res!128651) b!263385))

(assert (= (and b!263385 res!128648) b!263386))

(assert (= (and b!263386 res!128649) b!263384))

(assert (= (and b!263386 c!44924) b!263394))

(assert (= (and b!263386 (not c!44924)) b!263390))

(assert (= (and b!263394 res!128650) b!263389))

(assert (= (and b!263390 c!44925) b!263383))

(assert (= (and b!263390 (not c!44925)) b!263388))

(declare-fun b_lambda!8369 () Bool)

(assert (=> (not b_lambda!8369) (not b!263389)))

(assert (=> b!263389 t!8961))

(declare-fun b_and!13963 () Bool)

(assert (= b_and!13961 (and (=> t!8961 result!5441) b_and!13963)))

(declare-fun b_lambda!8371 () Bool)

(assert (=> (not b_lambda!8371) (not b!263392)))

(assert (=> b!263392 t!8961))

(declare-fun b_and!13965 () Bool)

(assert (= b_and!13963 (and (=> t!8961 result!5441) b_and!13965)))

(declare-fun m!279549 () Bool)

(assert (=> bm!25207 m!279549))

(assert (=> b!263384 m!279177))

(assert (=> b!263384 m!279177))

(assert (=> b!263384 m!279179))

(assert (=> b!263383 m!279549))

(declare-fun m!279551 () Bool)

(assert (=> b!263392 m!279551))

(assert (=> b!263392 m!279229))

(declare-fun m!279553 () Bool)

(assert (=> b!263392 m!279553))

(assert (=> b!263392 m!279177))

(assert (=> b!263392 m!279227))

(declare-fun m!279555 () Bool)

(assert (=> b!263392 m!279555))

(declare-fun m!279557 () Bool)

(assert (=> b!263392 m!279557))

(assert (=> b!263392 m!279555))

(assert (=> b!263392 m!279227))

(assert (=> b!263392 m!279229))

(assert (=> b!263392 m!279231))

(declare-fun m!279559 () Bool)

(assert (=> b!263388 m!279559))

(assert (=> b!263394 m!279177))

(assert (=> b!263394 m!279177))

(declare-fun m!279561 () Bool)

(assert (=> b!263394 m!279561))

(declare-fun m!279563 () Bool)

(assert (=> b!263385 m!279563))

(assert (=> b!263387 m!279177))

(assert (=> b!263387 m!279177))

(assert (=> b!263387 m!279179))

(declare-fun m!279565 () Bool)

(assert (=> d!63123 m!279565))

(assert (=> d!63123 m!279117))

(assert (=> b!263389 m!279229))

(assert (=> b!263389 m!279177))

(assert (=> b!263389 m!279227))

(assert (=> b!263389 m!279177))

(declare-fun m!279567 () Bool)

(assert (=> b!263389 m!279567))

(assert (=> b!263389 m!279227))

(assert (=> b!263389 m!279229))

(assert (=> b!263389 m!279231))

(assert (=> bm!25170 d!63123))

(assert (=> b!263089 d!63111))

(assert (=> b!263212 d!63025))

(declare-fun b!263395 () Bool)

(declare-fun e!170698 () (_ BitVec 32))

(assert (=> b!263395 (= e!170698 #b00000000000000000000000000000000)))

(declare-fun b!263397 () Bool)

(declare-fun e!170699 () (_ BitVec 32))

(assert (=> b!263397 (= e!170698 e!170699)))

(declare-fun c!44928 () Bool)

(assert (=> b!263397 (= c!44928 (validKeyInArray!0 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(declare-fun b!263398 () Bool)

(declare-fun call!25211 () (_ BitVec 32))

(assert (=> b!263398 (= e!170699 call!25211)))

(declare-fun bm!25208 () Bool)

(assert (=> bm!25208 (= call!25211 (arrayCountValidKeys!0 (_keys!7035 lt!133037) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 lt!133037))))))

(declare-fun d!63125 () Bool)

(declare-fun lt!133380 () (_ BitVec 32))

(assert (=> d!63125 (and (bvsge lt!133380 #b00000000000000000000000000000000) (bvsle lt!133380 (bvsub (size!6349 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(assert (=> d!63125 (= lt!133380 e!170698)))

(declare-fun c!44927 () Bool)

(assert (=> d!63125 (= c!44927 (bvsge #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))))))

(assert (=> d!63125 (and (bvsle #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6349 (_keys!7035 lt!133037)) (size!6349 (_keys!7035 lt!133037))))))

(assert (=> d!63125 (= (arrayCountValidKeys!0 (_keys!7035 lt!133037) #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))) lt!133380)))

(declare-fun b!263396 () Bool)

(assert (=> b!263396 (= e!170699 (bvadd #b00000000000000000000000000000001 call!25211))))

(assert (= (and d!63125 c!44927) b!263395))

(assert (= (and d!63125 (not c!44927)) b!263397))

(assert (= (and b!263397 c!44928) b!263396))

(assert (= (and b!263397 (not c!44928)) b!263398))

(assert (= (or b!263396 b!263398) bm!25208))

(declare-fun m!279569 () Bool)

(assert (=> b!263397 m!279569))

(assert (=> b!263397 m!279569))

(declare-fun m!279571 () Bool)

(assert (=> b!263397 m!279571))

(declare-fun m!279573 () Bool)

(assert (=> bm!25208 m!279573))

(assert (=> b!263162 d!63125))

(declare-fun d!63127 () Bool)

(declare-fun res!128652 () Bool)

(declare-fun e!170700 () Bool)

(assert (=> d!63127 (=> res!128652 e!170700)))

(assert (=> d!63127 (= res!128652 (= (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!63127 (= (arrayContainsKey!0 (_keys!7035 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!170700)))

(declare-fun b!263399 () Bool)

(declare-fun e!170701 () Bool)

(assert (=> b!263399 (= e!170700 e!170701)))

(declare-fun res!128653 () Bool)

(assert (=> b!263399 (=> (not res!128653) (not e!170701))))

(assert (=> b!263399 (= res!128653 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun b!263400 () Bool)

(assert (=> b!263400 (= e!170701 (arrayContainsKey!0 (_keys!7035 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!63127 (not res!128652)) b!263399))

(assert (= (and b!263399 res!128653) b!263400))

(declare-fun m!279575 () Bool)

(assert (=> d!63127 m!279575))

(declare-fun m!279577 () Bool)

(assert (=> b!263400 m!279577))

(assert (=> b!263176 d!63127))

(declare-fun d!63129 () Bool)

(declare-fun res!128654 () Bool)

(declare-fun e!170702 () Bool)

(assert (=> d!63129 (=> res!128654 e!170702)))

(assert (=> d!63129 (= res!128654 (and ((_ is Cons!3868) (toList!1966 lt!133034)) (= (_1!2497 (h!4534 (toList!1966 lt!133034))) key!932)))))

(assert (=> d!63129 (= (containsKey!311 (toList!1966 lt!133034) key!932) e!170702)))

(declare-fun b!263401 () Bool)

(declare-fun e!170703 () Bool)

(assert (=> b!263401 (= e!170702 e!170703)))

(declare-fun res!128655 () Bool)

(assert (=> b!263401 (=> (not res!128655) (not e!170703))))

(assert (=> b!263401 (= res!128655 (and (or (not ((_ is Cons!3868) (toList!1966 lt!133034))) (bvsle (_1!2497 (h!4534 (toList!1966 lt!133034))) key!932)) ((_ is Cons!3868) (toList!1966 lt!133034)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133034))) key!932)))))

(declare-fun b!263402 () Bool)

(assert (=> b!263402 (= e!170703 (containsKey!311 (t!8957 (toList!1966 lt!133034)) key!932))))

(assert (= (and d!63129 (not res!128654)) b!263401))

(assert (= (and b!263401 res!128655) b!263402))

(declare-fun m!279579 () Bool)

(assert (=> b!263402 m!279579))

(assert (=> d!63013 d!63129))

(declare-fun b!263403 () Bool)

(declare-fun e!170704 () Bool)

(assert (=> b!263403 (= e!170704 (contains!1914 Nil!3870 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(declare-fun b!263405 () Bool)

(declare-fun e!170707 () Bool)

(declare-fun call!25212 () Bool)

(assert (=> b!263405 (= e!170707 call!25212)))

(declare-fun b!263406 () Bool)

(declare-fun e!170705 () Bool)

(assert (=> b!263406 (= e!170705 e!170707)))

(declare-fun c!44929 () Bool)

(assert (=> b!263406 (= c!44929 (validKeyInArray!0 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(declare-fun b!263404 () Bool)

(declare-fun e!170706 () Bool)

(assert (=> b!263404 (= e!170706 e!170705)))

(declare-fun res!128657 () Bool)

(assert (=> b!263404 (=> (not res!128657) (not e!170705))))

(assert (=> b!263404 (= res!128657 (not e!170704))))

(declare-fun res!128658 () Bool)

(assert (=> b!263404 (=> (not res!128658) (not e!170704))))

(assert (=> b!263404 (= res!128658 (validKeyInArray!0 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(declare-fun d!63131 () Bool)

(declare-fun res!128656 () Bool)

(assert (=> d!63131 (=> res!128656 e!170706)))

(assert (=> d!63131 (= res!128656 (bvsge #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))))))

(assert (=> d!63131 (= (arrayNoDuplicates!0 (_keys!7035 lt!133037) #b00000000000000000000000000000000 Nil!3870) e!170706)))

(declare-fun bm!25209 () Bool)

(assert (=> bm!25209 (= call!25212 (arrayNoDuplicates!0 (_keys!7035 lt!133037) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44929 (Cons!3869 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000) Nil!3870) Nil!3870)))))

(declare-fun b!263407 () Bool)

(assert (=> b!263407 (= e!170707 call!25212)))

(assert (= (and d!63131 (not res!128656)) b!263404))

(assert (= (and b!263404 res!128658) b!263403))

(assert (= (and b!263404 res!128657) b!263406))

(assert (= (and b!263406 c!44929) b!263405))

(assert (= (and b!263406 (not c!44929)) b!263407))

(assert (= (or b!263405 b!263407) bm!25209))

(assert (=> b!263403 m!279569))

(assert (=> b!263403 m!279569))

(declare-fun m!279581 () Bool)

(assert (=> b!263403 m!279581))

(assert (=> b!263406 m!279569))

(assert (=> b!263406 m!279569))

(assert (=> b!263406 m!279571))

(assert (=> b!263404 m!279569))

(assert (=> b!263404 m!279569))

(assert (=> b!263404 m!279571))

(assert (=> bm!25209 m!279569))

(declare-fun m!279583 () Bool)

(assert (=> bm!25209 m!279583))

(assert (=> b!263164 d!63131))

(assert (=> d!63015 d!63097))

(declare-fun d!63133 () Bool)

(assert (=> d!63133 (= (apply!262 lt!133278 #b0000000000000000000000000000000000000000000000000000000000000000) (get!3095 (getValueByKey!319 (toList!1966 lt!133278) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9257 () Bool)

(assert (= bs!9257 d!63133))

(declare-fun m!279585 () Bool)

(assert (=> bs!9257 m!279585))

(assert (=> bs!9257 m!279585))

(declare-fun m!279587 () Bool)

(assert (=> bs!9257 m!279587))

(assert (=> b!263190 d!63133))

(declare-fun d!63135 () Bool)

(assert (=> d!63135 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133047) key!932))))

(declare-fun lt!133381 () Unit!8187)

(assert (=> d!63135 (= lt!133381 (choose!1301 (toList!1966 lt!133047) key!932))))

(declare-fun e!170708 () Bool)

(assert (=> d!63135 e!170708))

(declare-fun res!128659 () Bool)

(assert (=> d!63135 (=> (not res!128659) (not e!170708))))

(assert (=> d!63135 (= res!128659 (isStrictlySorted!372 (toList!1966 lt!133047)))))

(assert (=> d!63135 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133047) key!932) lt!133381)))

(declare-fun b!263408 () Bool)

(assert (=> b!263408 (= e!170708 (containsKey!311 (toList!1966 lt!133047) key!932))))

(assert (= (and d!63135 res!128659) b!263408))

(assert (=> d!63135 m!279267))

(assert (=> d!63135 m!279267))

(assert (=> d!63135 m!279269))

(declare-fun m!279589 () Bool)

(assert (=> d!63135 m!279589))

(declare-fun m!279591 () Bool)

(assert (=> d!63135 m!279591))

(assert (=> b!263408 m!279263))

(assert (=> b!263147 d!63135))

(declare-fun d!63137 () Bool)

(assert (=> d!63137 (= (isDefined!261 (getValueByKey!319 (toList!1966 lt!133047) key!932)) (not (isEmpty!545 (getValueByKey!319 (toList!1966 lt!133047) key!932))))))

(declare-fun bs!9258 () Bool)

(assert (= bs!9258 d!63137))

(assert (=> bs!9258 m!279267))

(declare-fun m!279593 () Bool)

(assert (=> bs!9258 m!279593))

(assert (=> b!263147 d!63137))

(declare-fun b!263411 () Bool)

(declare-fun e!170710 () Option!325)

(assert (=> b!263411 (= e!170710 (getValueByKey!319 (t!8957 (toList!1966 lt!133047)) key!932))))

(declare-fun b!263409 () Bool)

(declare-fun e!170709 () Option!325)

(assert (=> b!263409 (= e!170709 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133047)))))))

(declare-fun d!63139 () Bool)

(declare-fun c!44930 () Bool)

(assert (=> d!63139 (= c!44930 (and ((_ is Cons!3868) (toList!1966 lt!133047)) (= (_1!2497 (h!4534 (toList!1966 lt!133047))) key!932)))))

(assert (=> d!63139 (= (getValueByKey!319 (toList!1966 lt!133047) key!932) e!170709)))

(declare-fun b!263412 () Bool)

(assert (=> b!263412 (= e!170710 None!323)))

(declare-fun b!263410 () Bool)

(assert (=> b!263410 (= e!170709 e!170710)))

(declare-fun c!44931 () Bool)

(assert (=> b!263410 (= c!44931 (and ((_ is Cons!3868) (toList!1966 lt!133047)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133047))) key!932))))))

(assert (= (and d!63139 c!44930) b!263409))

(assert (= (and d!63139 (not c!44930)) b!263410))

(assert (= (and b!263410 c!44931) b!263411))

(assert (= (and b!263410 (not c!44931)) b!263412))

(declare-fun m!279595 () Bool)

(assert (=> b!263411 m!279595))

(assert (=> b!263147 d!63139))

(declare-fun d!63141 () Bool)

(declare-fun e!170711 () Bool)

(assert (=> d!63141 e!170711))

(declare-fun res!128660 () Bool)

(assert (=> d!63141 (=> res!128660 e!170711)))

(declare-fun lt!133383 () Bool)

(assert (=> d!63141 (= res!128660 (not lt!133383))))

(declare-fun lt!133382 () Bool)

(assert (=> d!63141 (= lt!133383 lt!133382)))

(declare-fun lt!133384 () Unit!8187)

(declare-fun e!170712 () Unit!8187)

(assert (=> d!63141 (= lt!133384 e!170712)))

(declare-fun c!44932 () Bool)

(assert (=> d!63141 (= c!44932 lt!133382)))

(assert (=> d!63141 (= lt!133382 (containsKey!311 (toList!1966 lt!133223) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!63141 (= (contains!1911 lt!133223 #b0000000000000000000000000000000000000000000000000000000000000000) lt!133383)))

(declare-fun b!263413 () Bool)

(declare-fun lt!133385 () Unit!8187)

(assert (=> b!263413 (= e!170712 lt!133385)))

(assert (=> b!263413 (= lt!133385 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133223) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!263413 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133223) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263414 () Bool)

(declare-fun Unit!8206 () Unit!8187)

(assert (=> b!263414 (= e!170712 Unit!8206)))

(declare-fun b!263415 () Bool)

(assert (=> b!263415 (= e!170711 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133223) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63141 c!44932) b!263413))

(assert (= (and d!63141 (not c!44932)) b!263414))

(assert (= (and d!63141 (not res!128660)) b!263415))

(declare-fun m!279597 () Bool)

(assert (=> d!63141 m!279597))

(declare-fun m!279599 () Bool)

(assert (=> b!263413 m!279599))

(declare-fun m!279601 () Bool)

(assert (=> b!263413 m!279601))

(assert (=> b!263413 m!279601))

(declare-fun m!279603 () Bool)

(assert (=> b!263413 m!279603))

(assert (=> b!263415 m!279601))

(assert (=> b!263415 m!279601))

(assert (=> b!263415 m!279603))

(assert (=> bm!25175 d!63141))

(declare-fun d!63143 () Bool)

(assert (=> d!63143 (= (inRange!0 (index!7011 lt!133126) (mask!11209 thiss!1504)) (and (bvsge (index!7011 lt!133126) #b00000000000000000000000000000000) (bvslt (index!7011 lt!133126) (bvadd (mask!11209 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!262983 d!63143))

(declare-fun d!63145 () Bool)

(assert (=> d!63145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (mask!11209 thiss!1504))))

(assert (=> d!63145 true))

(declare-fun _$56!45 () Unit!8187)

(assert (=> d!63145 (= (choose!102 key!932 (_keys!7035 thiss!1504) index!297 (mask!11209 thiss!1504)) _$56!45)))

(declare-fun bs!9259 () Bool)

(assert (= bs!9259 d!63145))

(assert (=> bs!9259 m!278995))

(assert (=> bs!9259 m!279295))

(assert (=> d!63039 d!63145))

(assert (=> d!63039 d!63097))

(assert (=> b!263149 d!63137))

(assert (=> b!263149 d!63139))

(assert (=> b!263102 d!63105))

(declare-fun d!63147 () Bool)

(declare-fun res!128661 () Bool)

(declare-fun e!170713 () Bool)

(assert (=> d!63147 (=> res!128661 e!170713)))

(assert (=> d!63147 (= res!128661 (= (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!63147 (= (arrayContainsKey!0 lt!133048 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!170713)))

(declare-fun b!263416 () Bool)

(declare-fun e!170714 () Bool)

(assert (=> b!263416 (= e!170713 e!170714)))

(declare-fun res!128662 () Bool)

(assert (=> b!263416 (=> (not res!128662) (not e!170714))))

(assert (=> b!263416 (= res!128662 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(declare-fun b!263417 () Bool)

(assert (=> b!263417 (= e!170714 (arrayContainsKey!0 lt!133048 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!63147 (not res!128661)) b!263416))

(assert (= (and b!263416 res!128662) b!263417))

(assert (=> d!63147 m!279435))

(declare-fun m!279605 () Bool)

(assert (=> b!263417 m!279605))

(assert (=> b!263155 d!63147))

(assert (=> d!62995 d!62993))

(declare-fun d!63149 () Bool)

(declare-fun e!170717 () Bool)

(assert (=> d!63149 e!170717))

(declare-fun res!128668 () Bool)

(assert (=> d!63149 (=> (not res!128668) (not e!170717))))

(declare-fun lt!133388 () SeekEntryResult!1210)

(assert (=> d!63149 (= res!128668 ((_ is Found!1210) lt!133388))))

(assert (=> d!63149 (= lt!133388 (seekEntryOrOpen!0 key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(assert (=> d!63149 true))

(declare-fun _$33!186 () Unit!8187)

(assert (=> d!63149 (= (choose!1296 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) key!932 (defaultEntry!4843 thiss!1504)) _$33!186)))

(declare-fun b!263422 () Bool)

(declare-fun res!128667 () Bool)

(assert (=> b!263422 (=> (not res!128667) (not e!170717))))

(assert (=> b!263422 (= res!128667 (inRange!0 (index!7011 lt!133388) (mask!11209 thiss!1504)))))

(declare-fun b!263423 () Bool)

(assert (=> b!263423 (= e!170717 (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7011 lt!133388)) key!932))))

(assert (= (and d!63149 res!128668) b!263422))

(assert (= (and b!263422 res!128667) b!263423))

(assert (=> d!63149 m!279027))

(declare-fun m!279607 () Bool)

(assert (=> b!263422 m!279607))

(declare-fun m!279609 () Bool)

(assert (=> b!263423 m!279609))

(assert (=> d!62995 d!63149))

(assert (=> d!62995 d!63097))

(declare-fun d!63151 () Bool)

(declare-fun e!170718 () Bool)

(assert (=> d!63151 e!170718))

(declare-fun res!128669 () Bool)

(assert (=> d!63151 (=> (not res!128669) (not e!170718))))

(declare-fun lt!133391 () ListLongMap!3901)

(assert (=> d!63151 (= res!128669 (contains!1911 lt!133391 (_1!2497 (tuple2!4975 key!932 v!346))))))

(declare-fun lt!133392 () List!3872)

(assert (=> d!63151 (= lt!133391 (ListLongMap!3902 lt!133392))))

(declare-fun lt!133390 () Unit!8187)

(declare-fun lt!133389 () Unit!8187)

(assert (=> d!63151 (= lt!133390 lt!133389)))

(assert (=> d!63151 (= (getValueByKey!319 lt!133392 (_1!2497 (tuple2!4975 key!932 v!346))) (Some!324 (_2!2497 (tuple2!4975 key!932 v!346))))))

(assert (=> d!63151 (= lt!133389 (lemmaContainsTupThenGetReturnValue!177 lt!133392 (_1!2497 (tuple2!4975 key!932 v!346)) (_2!2497 (tuple2!4975 key!932 v!346))))))

(assert (=> d!63151 (= lt!133392 (insertStrictlySorted!179 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) (_1!2497 (tuple2!4975 key!932 v!346)) (_2!2497 (tuple2!4975 key!932 v!346))))))

(assert (=> d!63151 (= (+!705 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) (tuple2!4975 key!932 v!346)) lt!133391)))

(declare-fun b!263424 () Bool)

(declare-fun res!128670 () Bool)

(assert (=> b!263424 (=> (not res!128670) (not e!170718))))

(assert (=> b!263424 (= res!128670 (= (getValueByKey!319 (toList!1966 lt!133391) (_1!2497 (tuple2!4975 key!932 v!346))) (Some!324 (_2!2497 (tuple2!4975 key!932 v!346)))))))

(declare-fun b!263425 () Bool)

(assert (=> b!263425 (= e!170718 (contains!1913 (toList!1966 lt!133391) (tuple2!4975 key!932 v!346)))))

(assert (= (and d!63151 res!128669) b!263424))

(assert (= (and b!263424 res!128670) b!263425))

(declare-fun m!279611 () Bool)

(assert (=> d!63151 m!279611))

(declare-fun m!279613 () Bool)

(assert (=> d!63151 m!279613))

(declare-fun m!279615 () Bool)

(assert (=> d!63151 m!279615))

(declare-fun m!279617 () Bool)

(assert (=> d!63151 m!279617))

(declare-fun m!279619 () Bool)

(assert (=> b!263424 m!279619))

(declare-fun m!279621 () Bool)

(assert (=> b!263425 m!279621))

(assert (=> b!263185 d!63151))

(assert (=> b!263185 d!63015))

(declare-fun d!63153 () Bool)

(declare-fun e!170723 () Bool)

(assert (=> d!63153 e!170723))

(declare-fun res!128679 () Bool)

(assert (=> d!63153 (=> (not res!128679) (not e!170723))))

(assert (=> d!63153 (= res!128679 (or (bvsge #b00000000000000000000000000000000 (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))))

(declare-fun lt!133408 () ListLongMap!3901)

(declare-fun lt!133399 () ListLongMap!3901)

(assert (=> d!63153 (= lt!133408 lt!133399)))

(declare-fun lt!133402 () Unit!8187)

(declare-fun e!170719 () Unit!8187)

(assert (=> d!63153 (= lt!133402 e!170719)))

(declare-fun c!44933 () Bool)

(declare-fun e!170726 () Bool)

(assert (=> d!63153 (= c!44933 e!170726)))

(declare-fun res!128674 () Bool)

(assert (=> d!63153 (=> (not res!128674) (not e!170726))))

(assert (=> d!63153 (= res!128674 (bvslt #b00000000000000000000000000000000 (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(declare-fun e!170721 () ListLongMap!3901)

(assert (=> d!63153 (= lt!133399 e!170721)))

(declare-fun c!44937 () Bool)

(assert (=> d!63153 (= c!44937 (and (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!63153 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63153 (= (getCurrentListMap!1489 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504))) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) lt!133408)))

(declare-fun b!263426 () Bool)

(declare-fun Unit!8207 () Unit!8187)

(assert (=> b!263426 (= e!170719 Unit!8207)))

(declare-fun e!170728 () Bool)

(declare-fun b!263427 () Bool)

(assert (=> b!263427 (= e!170728 (= (apply!262 lt!133408 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)) (get!3094 (select (arr!5997 (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!263427 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6348 (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504))))))))

(assert (=> b!263427 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(declare-fun b!263428 () Bool)

(declare-fun e!170729 () Bool)

(declare-fun call!25217 () Bool)

(assert (=> b!263428 (= e!170729 (not call!25217))))

(declare-fun b!263429 () Bool)

(assert (=> b!263429 (= e!170723 e!170729)))

(declare-fun c!44936 () Bool)

(assert (=> b!263429 (= c!44936 (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!263430 () Bool)

(declare-fun e!170731 () Bool)

(assert (=> b!263430 (= e!170731 (= (apply!262 lt!133408 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4684 thiss!1504)))))

(declare-fun call!25215 () ListLongMap!3901)

(declare-fun bm!25210 () Bool)

(assert (=> bm!25210 (= call!25215 (getCurrentListMapNoExtraKeys!581 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504))) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun b!263431 () Bool)

(declare-fun res!128671 () Bool)

(assert (=> b!263431 (=> (not res!128671) (not e!170723))))

(declare-fun e!170720 () Bool)

(assert (=> b!263431 (= res!128671 e!170720)))

(declare-fun c!44935 () Bool)

(assert (=> b!263431 (= c!44935 (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!263432 () Bool)

(declare-fun res!128673 () Bool)

(assert (=> b!263432 (=> (not res!128673) (not e!170723))))

(declare-fun e!170725 () Bool)

(assert (=> b!263432 (= res!128673 e!170725)))

(declare-fun res!128672 () Bool)

(assert (=> b!263432 (=> res!128672 e!170725)))

(declare-fun e!170727 () Bool)

(assert (=> b!263432 (= res!128672 (not e!170727))))

(declare-fun res!128675 () Bool)

(assert (=> b!263432 (=> (not res!128675) (not e!170727))))

(assert (=> b!263432 (= res!128675 (bvslt #b00000000000000000000000000000000 (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(declare-fun bm!25211 () Bool)

(assert (=> bm!25211 (= call!25217 (contains!1911 lt!133408 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263433 () Bool)

(declare-fun lt!133413 () Unit!8187)

(assert (=> b!263433 (= e!170719 lt!133413)))

(declare-fun lt!133414 () ListLongMap!3901)

(assert (=> b!263433 (= lt!133414 (getCurrentListMapNoExtraKeys!581 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504))) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun lt!133394 () (_ BitVec 64))

(assert (=> b!263433 (= lt!133394 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133407 () (_ BitVec 64))

(assert (=> b!263433 (= lt!133407 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!133404 () Unit!8187)

(assert (=> b!263433 (= lt!133404 (addStillContains!238 lt!133414 lt!133394 (zeroValue!4684 thiss!1504) lt!133407))))

(assert (=> b!263433 (contains!1911 (+!705 lt!133414 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504))) lt!133407)))

(declare-fun lt!133396 () Unit!8187)

(assert (=> b!263433 (= lt!133396 lt!133404)))

(declare-fun lt!133410 () ListLongMap!3901)

(assert (=> b!263433 (= lt!133410 (getCurrentListMapNoExtraKeys!581 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504))) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun lt!133409 () (_ BitVec 64))

(assert (=> b!263433 (= lt!133409 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133393 () (_ BitVec 64))

(assert (=> b!263433 (= lt!133393 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!133412 () Unit!8187)

(assert (=> b!263433 (= lt!133412 (addApplyDifferent!238 lt!133410 lt!133409 (minValue!4684 thiss!1504) lt!133393))))

(assert (=> b!263433 (= (apply!262 (+!705 lt!133410 (tuple2!4975 lt!133409 (minValue!4684 thiss!1504))) lt!133393) (apply!262 lt!133410 lt!133393))))

(declare-fun lt!133398 () Unit!8187)

(assert (=> b!263433 (= lt!133398 lt!133412)))

(declare-fun lt!133400 () ListLongMap!3901)

(assert (=> b!263433 (= lt!133400 (getCurrentListMapNoExtraKeys!581 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504))) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun lt!133401 () (_ BitVec 64))

(assert (=> b!263433 (= lt!133401 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133405 () (_ BitVec 64))

(assert (=> b!263433 (= lt!133405 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!133411 () Unit!8187)

(assert (=> b!263433 (= lt!133411 (addApplyDifferent!238 lt!133400 lt!133401 (zeroValue!4684 thiss!1504) lt!133405))))

(assert (=> b!263433 (= (apply!262 (+!705 lt!133400 (tuple2!4975 lt!133401 (zeroValue!4684 thiss!1504))) lt!133405) (apply!262 lt!133400 lt!133405))))

(declare-fun lt!133403 () Unit!8187)

(assert (=> b!263433 (= lt!133403 lt!133411)))

(declare-fun lt!133406 () ListLongMap!3901)

(assert (=> b!263433 (= lt!133406 (getCurrentListMapNoExtraKeys!581 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504))) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(declare-fun lt!133395 () (_ BitVec 64))

(assert (=> b!263433 (= lt!133395 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133397 () (_ BitVec 64))

(assert (=> b!263433 (= lt!133397 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000))))

(assert (=> b!263433 (= lt!133413 (addApplyDifferent!238 lt!133406 lt!133395 (minValue!4684 thiss!1504) lt!133397))))

(assert (=> b!263433 (= (apply!262 (+!705 lt!133406 (tuple2!4975 lt!133395 (minValue!4684 thiss!1504))) lt!133397) (apply!262 lt!133406 lt!133397))))

(declare-fun bm!25212 () Bool)

(declare-fun call!25214 () ListLongMap!3901)

(declare-fun call!25213 () ListLongMap!3901)

(assert (=> bm!25212 (= call!25214 call!25213)))

(declare-fun b!263434 () Bool)

(declare-fun e!170722 () ListLongMap!3901)

(declare-fun call!25218 () ListLongMap!3901)

(assert (=> b!263434 (= e!170722 call!25218)))

(declare-fun b!263435 () Bool)

(declare-fun call!25219 () ListLongMap!3901)

(assert (=> b!263435 (= e!170721 (+!705 call!25219 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))

(declare-fun bm!25213 () Bool)

(assert (=> bm!25213 (= call!25213 call!25215)))

(declare-fun b!263436 () Bool)

(declare-fun e!170724 () Bool)

(assert (=> b!263436 (= e!170724 (= (apply!262 lt!133408 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4684 thiss!1504)))))

(declare-fun bm!25214 () Bool)

(declare-fun c!44934 () Bool)

(assert (=> bm!25214 (= call!25219 (+!705 (ite c!44937 call!25215 (ite c!44934 call!25213 call!25214)) (ite (or c!44937 c!44934) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!263437 () Bool)

(declare-fun c!44938 () Bool)

(assert (=> b!263437 (= c!44938 (and (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!170730 () ListLongMap!3901)

(assert (=> b!263437 (= e!170722 e!170730)))

(declare-fun b!263438 () Bool)

(assert (=> b!263438 (= e!170720 e!170731)))

(declare-fun res!128676 () Bool)

(declare-fun call!25216 () Bool)

(assert (=> b!263438 (= res!128676 call!25216)))

(assert (=> b!263438 (=> (not res!128676) (not e!170731))))

(declare-fun b!263439 () Bool)

(assert (=> b!263439 (= e!170730 call!25218)))

(declare-fun b!263440 () Bool)

(assert (=> b!263440 (= e!170725 e!170728)))

(declare-fun res!128677 () Bool)

(assert (=> b!263440 (=> (not res!128677) (not e!170728))))

(assert (=> b!263440 (= res!128677 (contains!1911 lt!133408 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (=> b!263440 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(declare-fun bm!25215 () Bool)

(assert (=> bm!25215 (= call!25216 (contains!1911 lt!133408 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263441 () Bool)

(assert (=> b!263441 (= e!170721 e!170722)))

(assert (=> b!263441 (= c!44934 (and (not (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4580 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!263442 () Bool)

(assert (=> b!263442 (= e!170727 (validKeyInArray!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!263443 () Bool)

(assert (=> b!263443 (= e!170720 (not call!25216))))

(declare-fun b!263444 () Bool)

(assert (=> b!263444 (= e!170730 call!25214)))

(declare-fun b!263445 () Bool)

(assert (=> b!263445 (= e!170729 e!170724)))

(declare-fun res!128678 () Bool)

(assert (=> b!263445 (= res!128678 call!25217)))

(assert (=> b!263445 (=> (not res!128678) (not e!170724))))

(declare-fun b!263446 () Bool)

(assert (=> b!263446 (= e!170726 (validKeyInArray!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun bm!25216 () Bool)

(assert (=> bm!25216 (= call!25218 call!25219)))

(assert (= (and d!63153 c!44937) b!263435))

(assert (= (and d!63153 (not c!44937)) b!263441))

(assert (= (and b!263441 c!44934) b!263434))

(assert (= (and b!263441 (not c!44934)) b!263437))

(assert (= (and b!263437 c!44938) b!263439))

(assert (= (and b!263437 (not c!44938)) b!263444))

(assert (= (or b!263439 b!263444) bm!25212))

(assert (= (or b!263434 bm!25212) bm!25213))

(assert (= (or b!263434 b!263439) bm!25216))

(assert (= (or b!263435 bm!25213) bm!25210))

(assert (= (or b!263435 bm!25216) bm!25214))

(assert (= (and d!63153 res!128674) b!263446))

(assert (= (and d!63153 c!44933) b!263433))

(assert (= (and d!63153 (not c!44933)) b!263426))

(assert (= (and d!63153 res!128679) b!263432))

(assert (= (and b!263432 res!128675) b!263442))

(assert (= (and b!263432 (not res!128672)) b!263440))

(assert (= (and b!263440 res!128677) b!263427))

(assert (= (and b!263432 res!128673) b!263431))

(assert (= (and b!263431 c!44935) b!263438))

(assert (= (and b!263431 (not c!44935)) b!263443))

(assert (= (and b!263438 res!128676) b!263430))

(assert (= (or b!263438 b!263443) bm!25215))

(assert (= (and b!263431 res!128671) b!263429))

(assert (= (and b!263429 c!44936) b!263445))

(assert (= (and b!263429 (not c!44936)) b!263428))

(assert (= (and b!263445 res!128678) b!263436))

(assert (= (or b!263445 b!263428) bm!25211))

(declare-fun b_lambda!8373 () Bool)

(assert (=> (not b_lambda!8373) (not b!263427)))

(assert (=> b!263427 t!8961))

(declare-fun b_and!13967 () Bool)

(assert (= b_and!13965 (and (=> t!8961 result!5441) b_and!13967)))

(declare-fun m!279623 () Bool)

(assert (=> bm!25214 m!279623))

(declare-fun m!279625 () Bool)

(assert (=> b!263442 m!279625))

(assert (=> b!263442 m!279625))

(declare-fun m!279627 () Bool)

(assert (=> b!263442 m!279627))

(assert (=> b!263446 m!279625))

(assert (=> b!263446 m!279625))

(assert (=> b!263446 m!279627))

(declare-fun m!279629 () Bool)

(assert (=> bm!25215 m!279629))

(declare-fun m!279631 () Bool)

(assert (=> bm!25210 m!279631))

(declare-fun m!279633 () Bool)

(assert (=> b!263430 m!279633))

(assert (=> d!63153 m!279117))

(declare-fun m!279635 () Bool)

(assert (=> bm!25211 m!279635))

(assert (=> b!263440 m!279625))

(assert (=> b!263440 m!279625))

(declare-fun m!279637 () Bool)

(assert (=> b!263440 m!279637))

(declare-fun m!279639 () Bool)

(assert (=> b!263435 m!279639))

(declare-fun m!279641 () Bool)

(assert (=> b!263433 m!279641))

(declare-fun m!279643 () Bool)

(assert (=> b!263433 m!279643))

(declare-fun m!279645 () Bool)

(assert (=> b!263433 m!279645))

(declare-fun m!279647 () Bool)

(assert (=> b!263433 m!279647))

(declare-fun m!279649 () Bool)

(assert (=> b!263433 m!279649))

(assert (=> b!263433 m!279645))

(assert (=> b!263433 m!279625))

(declare-fun m!279651 () Bool)

(assert (=> b!263433 m!279651))

(assert (=> b!263433 m!279649))

(declare-fun m!279653 () Bool)

(assert (=> b!263433 m!279653))

(declare-fun m!279655 () Bool)

(assert (=> b!263433 m!279655))

(assert (=> b!263433 m!279641))

(declare-fun m!279657 () Bool)

(assert (=> b!263433 m!279657))

(assert (=> b!263433 m!279631))

(declare-fun m!279659 () Bool)

(assert (=> b!263433 m!279659))

(declare-fun m!279661 () Bool)

(assert (=> b!263433 m!279661))

(declare-fun m!279663 () Bool)

(assert (=> b!263433 m!279663))

(assert (=> b!263433 m!279661))

(declare-fun m!279665 () Bool)

(assert (=> b!263433 m!279665))

(declare-fun m!279667 () Bool)

(assert (=> b!263433 m!279667))

(declare-fun m!279669 () Bool)

(assert (=> b!263433 m!279669))

(declare-fun m!279671 () Bool)

(assert (=> b!263436 m!279671))

(assert (=> b!263427 m!279625))

(declare-fun m!279673 () Bool)

(assert (=> b!263427 m!279673))

(declare-fun m!279675 () Bool)

(assert (=> b!263427 m!279675))

(assert (=> b!263427 m!279229))

(declare-fun m!279677 () Bool)

(assert (=> b!263427 m!279677))

(assert (=> b!263427 m!279229))

(assert (=> b!263427 m!279675))

(assert (=> b!263427 m!279625))

(assert (=> b!263185 d!63153))

(declare-fun b!263447 () Bool)

(declare-fun e!170732 () (_ BitVec 32))

(assert (=> b!263447 (= e!170732 #b00000000000000000000000000000000)))

(declare-fun b!263449 () Bool)

(declare-fun e!170733 () (_ BitVec 32))

(assert (=> b!263449 (= e!170732 e!170733)))

(declare-fun c!44940 () Bool)

(assert (=> b!263449 (= c!44940 (validKeyInArray!0 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!263450 () Bool)

(declare-fun call!25220 () (_ BitVec 32))

(assert (=> b!263450 (= e!170733 call!25220)))

(declare-fun bm!25217 () Bool)

(assert (=> bm!25217 (= call!25220 (arrayCountValidKeys!0 lt!133048 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun d!63155 () Bool)

(declare-fun lt!133415 () (_ BitVec 32))

(assert (=> d!63155 (and (bvsge lt!133415 #b00000000000000000000000000000000) (bvsle lt!133415 (bvsub (size!6349 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!63155 (= lt!133415 e!170732)))

(declare-fun c!44939 () Bool)

(assert (=> d!63155 (= c!44939 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63155 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6349 (_keys!7035 thiss!1504)) (size!6349 lt!133048)))))

(assert (=> d!63155 (= (arrayCountValidKeys!0 lt!133048 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))) lt!133415)))

(declare-fun b!263448 () Bool)

(assert (=> b!263448 (= e!170733 (bvadd #b00000000000000000000000000000001 call!25220))))

(assert (= (and d!63155 c!44939) b!263447))

(assert (= (and d!63155 (not c!44939)) b!263449))

(assert (= (and b!263449 c!44940) b!263448))

(assert (= (and b!263449 (not c!44940)) b!263450))

(assert (= (or b!263448 b!263450) bm!25217))

(assert (=> b!263449 m!279435))

(assert (=> b!263449 m!279435))

(assert (=> b!263449 m!279445))

(declare-fun m!279679 () Bool)

(assert (=> bm!25217 m!279679))

(assert (=> bm!25179 d!63155))

(declare-fun lt!133420 () SeekEntryResult!1210)

(declare-fun d!63157 () Bool)

(assert (=> d!63157 (and (or ((_ is Undefined!1210) lt!133420) (not ((_ is Found!1210) lt!133420)) (and (bvsge (index!7011 lt!133420) #b00000000000000000000000000000000) (bvslt (index!7011 lt!133420) (size!6349 (_keys!7035 thiss!1504))))) (or ((_ is Undefined!1210) lt!133420) ((_ is Found!1210) lt!133420) (not ((_ is MissingVacant!1210) lt!133420)) (not (= (index!7013 lt!133420) (index!7012 lt!133119))) (and (bvsge (index!7013 lt!133420) #b00000000000000000000000000000000) (bvslt (index!7013 lt!133420) (size!6349 (_keys!7035 thiss!1504))))) (or ((_ is Undefined!1210) lt!133420) (ite ((_ is Found!1210) lt!133420) (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7011 lt!133420)) key!932) (and ((_ is MissingVacant!1210) lt!133420) (= (index!7013 lt!133420) (index!7012 lt!133119)) (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7013 lt!133420)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!170742 () SeekEntryResult!1210)

(assert (=> d!63157 (= lt!133420 e!170742)))

(declare-fun c!44947 () Bool)

(assert (=> d!63157 (= c!44947 (bvsge (x!25252 lt!133119) #b01111111111111111111111111111110))))

(declare-fun lt!133421 () (_ BitVec 64))

(assert (=> d!63157 (= lt!133421 (select (arr!5998 (_keys!7035 thiss!1504)) (index!7012 lt!133119)))))

(assert (=> d!63157 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63157 (= (seekKeyOrZeroReturnVacant!0 (x!25252 lt!133119) (index!7012 lt!133119) (index!7012 lt!133119) key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)) lt!133420)))

(declare-fun b!263463 () Bool)

(declare-fun e!170741 () SeekEntryResult!1210)

(assert (=> b!263463 (= e!170741 (seekKeyOrZeroReturnVacant!0 (bvadd (x!25252 lt!133119) #b00000000000000000000000000000001) (nextIndex!0 (index!7012 lt!133119) (x!25252 lt!133119) (mask!11209 thiss!1504)) (index!7012 lt!133119) key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(declare-fun b!263464 () Bool)

(assert (=> b!263464 (= e!170741 (MissingVacant!1210 (index!7012 lt!133119)))))

(declare-fun b!263465 () Bool)

(declare-fun c!44949 () Bool)

(assert (=> b!263465 (= c!44949 (= lt!133421 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!170740 () SeekEntryResult!1210)

(assert (=> b!263465 (= e!170740 e!170741)))

(declare-fun b!263466 () Bool)

(assert (=> b!263466 (= e!170742 e!170740)))

(declare-fun c!44948 () Bool)

(assert (=> b!263466 (= c!44948 (= lt!133421 key!932))))

(declare-fun b!263467 () Bool)

(assert (=> b!263467 (= e!170740 (Found!1210 (index!7012 lt!133119)))))

(declare-fun b!263468 () Bool)

(assert (=> b!263468 (= e!170742 Undefined!1210)))

(assert (= (and d!63157 c!44947) b!263468))

(assert (= (and d!63157 (not c!44947)) b!263466))

(assert (= (and b!263466 c!44948) b!263467))

(assert (= (and b!263466 (not c!44948)) b!263465))

(assert (= (and b!263465 c!44949) b!263464))

(assert (= (and b!263465 (not c!44949)) b!263463))

(declare-fun m!279681 () Bool)

(assert (=> d!63157 m!279681))

(declare-fun m!279683 () Bool)

(assert (=> d!63157 m!279683))

(assert (=> d!63157 m!279111))

(assert (=> d!63157 m!279117))

(declare-fun m!279685 () Bool)

(assert (=> b!263463 m!279685))

(assert (=> b!263463 m!279685))

(declare-fun m!279687 () Bool)

(assert (=> b!263463 m!279687))

(assert (=> b!262977 d!63157))

(declare-fun d!63159 () Bool)

(declare-fun e!170743 () Bool)

(assert (=> d!63159 e!170743))

(declare-fun res!128680 () Bool)

(assert (=> d!63159 (=> res!128680 e!170743)))

(declare-fun lt!133423 () Bool)

(assert (=> d!63159 (= res!128680 (not lt!133423))))

(declare-fun lt!133422 () Bool)

(assert (=> d!63159 (= lt!133423 lt!133422)))

(declare-fun lt!133424 () Unit!8187)

(declare-fun e!170744 () Unit!8187)

(assert (=> d!63159 (= lt!133424 e!170744)))

(declare-fun c!44950 () Bool)

(assert (=> d!63159 (= c!44950 lt!133422)))

(assert (=> d!63159 (= lt!133422 (containsKey!311 (toList!1966 lt!133278) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!63159 (= (contains!1911 lt!133278 #b0000000000000000000000000000000000000000000000000000000000000000) lt!133423)))

(declare-fun b!263469 () Bool)

(declare-fun lt!133425 () Unit!8187)

(assert (=> b!263469 (= e!170744 lt!133425)))

(assert (=> b!263469 (= lt!133425 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133278) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!263469 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133278) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263470 () Bool)

(declare-fun Unit!8208 () Unit!8187)

(assert (=> b!263470 (= e!170744 Unit!8208)))

(declare-fun b!263471 () Bool)

(assert (=> b!263471 (= e!170743 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133278) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63159 c!44950) b!263469))

(assert (= (and d!63159 (not c!44950)) b!263470))

(assert (= (and d!63159 (not res!128680)) b!263471))

(declare-fun m!279689 () Bool)

(assert (=> d!63159 m!279689))

(declare-fun m!279691 () Bool)

(assert (=> b!263469 m!279691))

(assert (=> b!263469 m!279585))

(assert (=> b!263469 m!279585))

(declare-fun m!279693 () Bool)

(assert (=> b!263469 m!279693))

(assert (=> b!263471 m!279585))

(assert (=> b!263471 m!279585))

(assert (=> b!263471 m!279693))

(assert (=> bm!25193 d!63159))

(declare-fun b!263474 () Bool)

(declare-fun e!170746 () Option!325)

(assert (=> b!263474 (= e!170746 (getValueByKey!319 (t!8957 (toList!1966 lt!133149)) (_1!2497 lt!133042)))))

(declare-fun b!263472 () Bool)

(declare-fun e!170745 () Option!325)

(assert (=> b!263472 (= e!170745 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133149)))))))

(declare-fun d!63161 () Bool)

(declare-fun c!44951 () Bool)

(assert (=> d!63161 (= c!44951 (and ((_ is Cons!3868) (toList!1966 lt!133149)) (= (_1!2497 (h!4534 (toList!1966 lt!133149))) (_1!2497 lt!133042))))))

(assert (=> d!63161 (= (getValueByKey!319 (toList!1966 lt!133149) (_1!2497 lt!133042)) e!170745)))

(declare-fun b!263475 () Bool)

(assert (=> b!263475 (= e!170746 None!323)))

(declare-fun b!263473 () Bool)

(assert (=> b!263473 (= e!170745 e!170746)))

(declare-fun c!44952 () Bool)

(assert (=> b!263473 (= c!44952 (and ((_ is Cons!3868) (toList!1966 lt!133149)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133149))) (_1!2497 lt!133042)))))))

(assert (= (and d!63161 c!44951) b!263472))

(assert (= (and d!63161 (not c!44951)) b!263473))

(assert (= (and b!263473 c!44952) b!263474))

(assert (= (and b!263473 (not c!44952)) b!263475))

(declare-fun m!279695 () Bool)

(assert (=> b!263474 m!279695))

(assert (=> b!262998 d!63161))

(declare-fun d!63163 () Bool)

(declare-fun e!170747 () Bool)

(assert (=> d!63163 e!170747))

(declare-fun res!128681 () Bool)

(assert (=> d!63163 (=> res!128681 e!170747)))

(declare-fun lt!133427 () Bool)

(assert (=> d!63163 (= res!128681 (not lt!133427))))

(declare-fun lt!133426 () Bool)

(assert (=> d!63163 (= lt!133427 lt!133426)))

(declare-fun lt!133428 () Unit!8187)

(declare-fun e!170748 () Unit!8187)

(assert (=> d!63163 (= lt!133428 e!170748)))

(declare-fun c!44953 () Bool)

(assert (=> d!63163 (= c!44953 lt!133426)))

(assert (=> d!63163 (= lt!133426 (containsKey!311 (toList!1966 lt!133287) (_1!2497 lt!133042)))))

(assert (=> d!63163 (= (contains!1911 lt!133287 (_1!2497 lt!133042)) lt!133427)))

(declare-fun b!263476 () Bool)

(declare-fun lt!133429 () Unit!8187)

(assert (=> b!263476 (= e!170748 lt!133429)))

(assert (=> b!263476 (= lt!133429 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133287) (_1!2497 lt!133042)))))

(assert (=> b!263476 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133287) (_1!2497 lt!133042)))))

(declare-fun b!263477 () Bool)

(declare-fun Unit!8209 () Unit!8187)

(assert (=> b!263477 (= e!170748 Unit!8209)))

(declare-fun b!263478 () Bool)

(assert (=> b!263478 (= e!170747 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133287) (_1!2497 lt!133042))))))

(assert (= (and d!63163 c!44953) b!263476))

(assert (= (and d!63163 (not c!44953)) b!263477))

(assert (= (and d!63163 (not res!128681)) b!263478))

(declare-fun m!279697 () Bool)

(assert (=> d!63163 m!279697))

(declare-fun m!279699 () Bool)

(assert (=> b!263476 m!279699))

(assert (=> b!263476 m!279367))

(assert (=> b!263476 m!279367))

(declare-fun m!279701 () Bool)

(assert (=> b!263476 m!279701))

(assert (=> b!263478 m!279367))

(assert (=> b!263478 m!279367))

(assert (=> b!263478 m!279701))

(assert (=> d!63047 d!63163))

(declare-fun b!263481 () Bool)

(declare-fun e!170750 () Option!325)

(assert (=> b!263481 (= e!170750 (getValueByKey!319 (t!8957 lt!133288) (_1!2497 lt!133042)))))

(declare-fun b!263479 () Bool)

(declare-fun e!170749 () Option!325)

(assert (=> b!263479 (= e!170749 (Some!324 (_2!2497 (h!4534 lt!133288))))))

(declare-fun d!63165 () Bool)

(declare-fun c!44954 () Bool)

(assert (=> d!63165 (= c!44954 (and ((_ is Cons!3868) lt!133288) (= (_1!2497 (h!4534 lt!133288)) (_1!2497 lt!133042))))))

(assert (=> d!63165 (= (getValueByKey!319 lt!133288 (_1!2497 lt!133042)) e!170749)))

(declare-fun b!263482 () Bool)

(assert (=> b!263482 (= e!170750 None!323)))

(declare-fun b!263480 () Bool)

(assert (=> b!263480 (= e!170749 e!170750)))

(declare-fun c!44955 () Bool)

(assert (=> b!263480 (= c!44955 (and ((_ is Cons!3868) lt!133288) (not (= (_1!2497 (h!4534 lt!133288)) (_1!2497 lt!133042)))))))

(assert (= (and d!63165 c!44954) b!263479))

(assert (= (and d!63165 (not c!44954)) b!263480))

(assert (= (and b!263480 c!44955) b!263481))

(assert (= (and b!263480 (not c!44955)) b!263482))

(declare-fun m!279703 () Bool)

(assert (=> b!263481 m!279703))

(assert (=> d!63047 d!63165))

(declare-fun d!63167 () Bool)

(assert (=> d!63167 (= (getValueByKey!319 lt!133288 (_1!2497 lt!133042)) (Some!324 (_2!2497 lt!133042)))))

(declare-fun lt!133432 () Unit!8187)

(declare-fun choose!1302 (List!3872 (_ BitVec 64) V!8523) Unit!8187)

(assert (=> d!63167 (= lt!133432 (choose!1302 lt!133288 (_1!2497 lt!133042) (_2!2497 lt!133042)))))

(declare-fun e!170753 () Bool)

(assert (=> d!63167 e!170753))

(declare-fun res!128686 () Bool)

(assert (=> d!63167 (=> (not res!128686) (not e!170753))))

(assert (=> d!63167 (= res!128686 (isStrictlySorted!372 lt!133288))))

(assert (=> d!63167 (= (lemmaContainsTupThenGetReturnValue!177 lt!133288 (_1!2497 lt!133042) (_2!2497 lt!133042)) lt!133432)))

(declare-fun b!263487 () Bool)

(declare-fun res!128687 () Bool)

(assert (=> b!263487 (=> (not res!128687) (not e!170753))))

(assert (=> b!263487 (= res!128687 (containsKey!311 lt!133288 (_1!2497 lt!133042)))))

(declare-fun b!263488 () Bool)

(assert (=> b!263488 (= e!170753 (contains!1913 lt!133288 (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(assert (= (and d!63167 res!128686) b!263487))

(assert (= (and b!263487 res!128687) b!263488))

(assert (=> d!63167 m!279361))

(declare-fun m!279705 () Bool)

(assert (=> d!63167 m!279705))

(declare-fun m!279707 () Bool)

(assert (=> d!63167 m!279707))

(declare-fun m!279709 () Bool)

(assert (=> b!263487 m!279709))

(declare-fun m!279711 () Bool)

(assert (=> b!263488 m!279711))

(assert (=> d!63047 d!63167))

(declare-fun bm!25224 () Bool)

(declare-fun call!25229 () List!3872)

(declare-fun call!25228 () List!3872)

(assert (=> bm!25224 (= call!25229 call!25228)))

(declare-fun bm!25225 () Bool)

(declare-fun call!25227 () List!3872)

(assert (=> bm!25225 (= call!25227 call!25229)))

(declare-fun b!263509 () Bool)

(declare-fun res!128692 () Bool)

(declare-fun e!170768 () Bool)

(assert (=> b!263509 (=> (not res!128692) (not e!170768))))

(declare-fun lt!133435 () List!3872)

(assert (=> b!263509 (= res!128692 (containsKey!311 lt!133435 (_1!2497 lt!133042)))))

(declare-fun b!263510 () Bool)

(declare-fun c!44964 () Bool)

(assert (=> b!263510 (= c!44964 (and ((_ is Cons!3868) (toList!1966 lt!133034)) (bvsgt (_1!2497 (h!4534 (toList!1966 lt!133034))) (_1!2497 lt!133042))))))

(declare-fun e!170767 () List!3872)

(declare-fun e!170764 () List!3872)

(assert (=> b!263510 (= e!170767 e!170764)))

(declare-fun b!263511 () Bool)

(declare-fun e!170766 () List!3872)

(assert (=> b!263511 (= e!170766 e!170767)))

(declare-fun c!44967 () Bool)

(assert (=> b!263511 (= c!44967 (and ((_ is Cons!3868) (toList!1966 lt!133034)) (= (_1!2497 (h!4534 (toList!1966 lt!133034))) (_1!2497 lt!133042))))))

(declare-fun b!263512 () Bool)

(assert (=> b!263512 (= e!170768 (contains!1913 lt!133435 (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(declare-fun b!263513 () Bool)

(assert (=> b!263513 (= e!170766 call!25228)))

(declare-fun b!263514 () Bool)

(assert (=> b!263514 (= e!170767 call!25229)))

(declare-fun b!263515 () Bool)

(declare-fun e!170765 () List!3872)

(assert (=> b!263515 (= e!170765 (insertStrictlySorted!179 (t!8957 (toList!1966 lt!133034)) (_1!2497 lt!133042) (_2!2497 lt!133042)))))

(declare-fun b!263516 () Bool)

(assert (=> b!263516 (= e!170764 call!25227)))

(declare-fun bm!25226 () Bool)

(declare-fun c!44966 () Bool)

(declare-fun $colon$colon!107 (List!3872 tuple2!4974) List!3872)

(assert (=> bm!25226 (= call!25228 ($colon$colon!107 e!170765 (ite c!44966 (h!4534 (toList!1966 lt!133034)) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042)))))))

(declare-fun c!44965 () Bool)

(assert (=> bm!25226 (= c!44965 c!44966)))

(declare-fun d!63169 () Bool)

(assert (=> d!63169 e!170768))

(declare-fun res!128693 () Bool)

(assert (=> d!63169 (=> (not res!128693) (not e!170768))))

(assert (=> d!63169 (= res!128693 (isStrictlySorted!372 lt!133435))))

(assert (=> d!63169 (= lt!133435 e!170766)))

(assert (=> d!63169 (= c!44966 (and ((_ is Cons!3868) (toList!1966 lt!133034)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133034))) (_1!2497 lt!133042))))))

(assert (=> d!63169 (isStrictlySorted!372 (toList!1966 lt!133034))))

(assert (=> d!63169 (= (insertStrictlySorted!179 (toList!1966 lt!133034) (_1!2497 lt!133042) (_2!2497 lt!133042)) lt!133435)))

(declare-fun b!263517 () Bool)

(assert (=> b!263517 (= e!170764 call!25227)))

(declare-fun b!263518 () Bool)

(assert (=> b!263518 (= e!170765 (ite c!44967 (t!8957 (toList!1966 lt!133034)) (ite c!44964 (Cons!3868 (h!4534 (toList!1966 lt!133034)) (t!8957 (toList!1966 lt!133034))) Nil!3869)))))

(assert (= (and d!63169 c!44966) b!263513))

(assert (= (and d!63169 (not c!44966)) b!263511))

(assert (= (and b!263511 c!44967) b!263514))

(assert (= (and b!263511 (not c!44967)) b!263510))

(assert (= (and b!263510 c!44964) b!263517))

(assert (= (and b!263510 (not c!44964)) b!263516))

(assert (= (or b!263517 b!263516) bm!25225))

(assert (= (or b!263514 bm!25225) bm!25224))

(assert (= (or b!263513 bm!25224) bm!25226))

(assert (= (and bm!25226 c!44965) b!263515))

(assert (= (and bm!25226 (not c!44965)) b!263518))

(assert (= (and d!63169 res!128693) b!263509))

(assert (= (and b!263509 res!128692) b!263512))

(declare-fun m!279713 () Bool)

(assert (=> bm!25226 m!279713))

(declare-fun m!279715 () Bool)

(assert (=> b!263515 m!279715))

(declare-fun m!279717 () Bool)

(assert (=> b!263512 m!279717))

(declare-fun m!279719 () Bool)

(assert (=> b!263509 m!279719))

(declare-fun m!279721 () Bool)

(assert (=> d!63169 m!279721))

(assert (=> d!63169 m!279463))

(assert (=> d!63047 d!63169))

(declare-fun d!63171 () Bool)

(assert (=> d!63171 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!263113 d!63171))

(declare-fun d!63173 () Bool)

(declare-fun e!170769 () Bool)

(assert (=> d!63173 e!170769))

(declare-fun res!128694 () Bool)

(assert (=> d!63173 (=> (not res!128694) (not e!170769))))

(declare-fun lt!133438 () ListLongMap!3901)

(assert (=> d!63173 (= res!128694 (contains!1911 lt!133438 (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun lt!133439 () List!3872)

(assert (=> d!63173 (= lt!133438 (ListLongMap!3902 lt!133439))))

(declare-fun lt!133437 () Unit!8187)

(declare-fun lt!133436 () Unit!8187)

(assert (=> d!63173 (= lt!133437 lt!133436)))

(assert (=> d!63173 (= (getValueByKey!319 lt!133439 (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) (Some!324 (_2!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63173 (= lt!133436 (lemmaContainsTupThenGetReturnValue!177 lt!133439 (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63173 (= lt!133439 (insertStrictlySorted!179 (toList!1966 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174))) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63173 (= (+!705 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174)) (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) lt!133438)))

(declare-fun b!263519 () Bool)

(declare-fun res!128695 () Bool)

(assert (=> b!263519 (=> (not res!128695) (not e!170769))))

(assert (=> b!263519 (= res!128695 (= (getValueByKey!319 (toList!1966 lt!133438) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) (Some!324 (_2!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(declare-fun b!263520 () Bool)

(assert (=> b!263520 (= e!170769 (contains!1913 (toList!1966 lt!133438) (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (= (and d!63173 res!128694) b!263519))

(assert (= (and b!263519 res!128695) b!263520))

(declare-fun m!279723 () Bool)

(assert (=> d!63173 m!279723))

(declare-fun m!279725 () Bool)

(assert (=> d!63173 m!279725))

(declare-fun m!279727 () Bool)

(assert (=> d!63173 m!279727))

(declare-fun m!279729 () Bool)

(assert (=> d!63173 m!279729))

(declare-fun m!279731 () Bool)

(assert (=> b!263519 m!279731))

(declare-fun m!279733 () Bool)

(assert (=> b!263520 m!279733))

(assert (=> bm!25174 d!63173))

(assert (=> b!263202 d!63105))

(declare-fun d!63175 () Bool)

(declare-fun res!128704 () Bool)

(declare-fun e!170772 () Bool)

(assert (=> d!63175 (=> (not res!128704) (not e!170772))))

(assert (=> d!63175 (= res!128704 (validMask!0 (mask!11209 lt!133037)))))

(assert (=> d!63175 (= (simpleValid!284 lt!133037) e!170772)))

(declare-fun b!263531 () Bool)

(declare-fun res!128705 () Bool)

(assert (=> b!263531 (=> (not res!128705) (not e!170772))))

(declare-fun size!6352 (LongMapFixedSize!3870) (_ BitVec 32))

(assert (=> b!263531 (= res!128705 (= (size!6352 lt!133037) (bvadd (_size!1984 lt!133037) (bvsdiv (bvadd (extraKeys!4580 lt!133037) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!263529 () Bool)

(declare-fun res!128706 () Bool)

(assert (=> b!263529 (=> (not res!128706) (not e!170772))))

(assert (=> b!263529 (= res!128706 (and (= (size!6348 (_values!4826 lt!133037)) (bvadd (mask!11209 lt!133037) #b00000000000000000000000000000001)) (= (size!6349 (_keys!7035 lt!133037)) (size!6348 (_values!4826 lt!133037))) (bvsge (_size!1984 lt!133037) #b00000000000000000000000000000000) (bvsle (_size!1984 lt!133037) (bvadd (mask!11209 lt!133037) #b00000000000000000000000000000001))))))

(declare-fun b!263532 () Bool)

(assert (=> b!263532 (= e!170772 (and (bvsge (extraKeys!4580 lt!133037) #b00000000000000000000000000000000) (bvsle (extraKeys!4580 lt!133037) #b00000000000000000000000000000011) (bvsge (_vacant!1984 lt!133037) #b00000000000000000000000000000000)))))

(declare-fun b!263530 () Bool)

(declare-fun res!128707 () Bool)

(assert (=> b!263530 (=> (not res!128707) (not e!170772))))

(assert (=> b!263530 (= res!128707 (bvsge (size!6352 lt!133037) (_size!1984 lt!133037)))))

(assert (= (and d!63175 res!128704) b!263529))

(assert (= (and b!263529 res!128706) b!263530))

(assert (= (and b!263530 res!128707) b!263531))

(assert (= (and b!263531 res!128705) b!263532))

(declare-fun m!279735 () Bool)

(assert (=> d!63175 m!279735))

(declare-fun m!279737 () Bool)

(assert (=> b!263531 m!279737))

(assert (=> b!263530 m!279737))

(assert (=> d!63031 d!63175))

(declare-fun d!63177 () Bool)

(assert (=> d!63177 (= (apply!262 lt!133278 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)) (get!3095 (getValueByKey!319 (toList!1966 lt!133278) (select (arr!5998 lt!133048) #b00000000000000000000000000000000))))))

(declare-fun bs!9260 () Bool)

(assert (= bs!9260 d!63177))

(assert (=> bs!9260 m!279233))

(assert (=> bs!9260 m!279401))

(assert (=> bs!9260 m!279401))

(declare-fun m!279739 () Bool)

(assert (=> bs!9260 m!279739))

(assert (=> b!263187 d!63177))

(declare-fun d!63179 () Bool)

(declare-fun c!44968 () Bool)

(assert (=> d!63179 (= c!44968 ((_ is ValueCellFull!2985) (select (arr!5997 lt!133045) #b00000000000000000000000000000000)))))

(declare-fun e!170773 () V!8523)

(assert (=> d!63179 (= (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!170773)))

(declare-fun b!263533 () Bool)

(assert (=> b!263533 (= e!170773 (get!3096 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!263534 () Bool)

(assert (=> b!263534 (= e!170773 (get!3097 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63179 c!44968) b!263533))

(assert (= (and d!63179 (not c!44968)) b!263534))

(assert (=> b!263533 m!279355))

(assert (=> b!263533 m!279229))

(declare-fun m!279741 () Bool)

(assert (=> b!263533 m!279741))

(assert (=> b!263534 m!279355))

(assert (=> b!263534 m!279229))

(declare-fun m!279743 () Bool)

(assert (=> b!263534 m!279743))

(assert (=> b!263187 d!63179))

(declare-fun b!263535 () Bool)

(declare-fun e!170774 () Bool)

(assert (=> b!263535 (= e!170774 (contains!1914 Nil!3870 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!263537 () Bool)

(declare-fun e!170777 () Bool)

(declare-fun call!25230 () Bool)

(assert (=> b!263537 (= e!170777 call!25230)))

(declare-fun b!263538 () Bool)

(declare-fun e!170775 () Bool)

(assert (=> b!263538 (= e!170775 e!170777)))

(declare-fun c!44969 () Bool)

(assert (=> b!263538 (= c!44969 (validKeyInArray!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!263536 () Bool)

(declare-fun e!170776 () Bool)

(assert (=> b!263536 (= e!170776 e!170775)))

(declare-fun res!128709 () Bool)

(assert (=> b!263536 (=> (not res!128709) (not e!170775))))

(assert (=> b!263536 (= res!128709 (not e!170774))))

(declare-fun res!128710 () Bool)

(assert (=> b!263536 (=> (not res!128710) (not e!170774))))

(assert (=> b!263536 (= res!128710 (validKeyInArray!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun d!63181 () Bool)

(declare-fun res!128708 () Bool)

(assert (=> d!63181 (=> res!128708 e!170776)))

(assert (=> d!63181 (= res!128708 (bvsge #b00000000000000000000000000000000 (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(assert (=> d!63181 (= (arrayNoDuplicates!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) #b00000000000000000000000000000000 Nil!3870) e!170776)))

(declare-fun bm!25227 () Bool)

(assert (=> bm!25227 (= call!25230 (arrayNoDuplicates!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44969 (Cons!3869 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000) Nil!3870) Nil!3870)))))

(declare-fun b!263539 () Bool)

(assert (=> b!263539 (= e!170777 call!25230)))

(assert (= (and d!63181 (not res!128708)) b!263536))

(assert (= (and b!263536 res!128710) b!263535))

(assert (= (and b!263536 res!128709) b!263538))

(assert (= (and b!263538 c!44969) b!263537))

(assert (= (and b!263538 (not c!44969)) b!263539))

(assert (= (or b!263537 b!263539) bm!25227))

(assert (=> b!263535 m!279625))

(assert (=> b!263535 m!279625))

(declare-fun m!279745 () Bool)

(assert (=> b!263535 m!279745))

(assert (=> b!263538 m!279625))

(assert (=> b!263538 m!279625))

(assert (=> b!263538 m!279627))

(assert (=> b!263536 m!279625))

(assert (=> b!263536 m!279625))

(assert (=> b!263536 m!279627))

(assert (=> bm!25227 m!279625))

(declare-fun m!279747 () Bool)

(assert (=> bm!25227 m!279747))

(assert (=> b!263211 d!63181))

(declare-fun d!63183 () Bool)

(declare-fun e!170778 () Bool)

(assert (=> d!63183 e!170778))

(declare-fun res!128711 () Bool)

(assert (=> d!63183 (=> (not res!128711) (not e!170778))))

(declare-fun lt!133442 () ListLongMap!3901)

(assert (=> d!63183 (= res!128711 (contains!1911 lt!133442 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun lt!133443 () List!3872)

(assert (=> d!63183 (= lt!133442 (ListLongMap!3902 lt!133443))))

(declare-fun lt!133441 () Unit!8187)

(declare-fun lt!133440 () Unit!8187)

(assert (=> d!63183 (= lt!133441 lt!133440)))

(assert (=> d!63183 (= (getValueByKey!319 lt!133443 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (=> d!63183 (= lt!133440 (lemmaContainsTupThenGetReturnValue!177 lt!133443 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (=> d!63183 (= lt!133443 (insertStrictlySorted!179 (toList!1966 call!25197) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (=> d!63183 (= (+!705 call!25197 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) lt!133442)))

(declare-fun b!263540 () Bool)

(declare-fun res!128712 () Bool)

(assert (=> b!263540 (=> (not res!128712) (not e!170778))))

(assert (=> b!263540 (= res!128712 (= (getValueByKey!319 (toList!1966 lt!133442) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!263541 () Bool)

(assert (=> b!263541 (= e!170778 (contains!1913 (toList!1966 lt!133442) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))

(assert (= (and d!63183 res!128711) b!263540))

(assert (= (and b!263540 res!128712) b!263541))

(declare-fun m!279749 () Bool)

(assert (=> d!63183 m!279749))

(declare-fun m!279751 () Bool)

(assert (=> d!63183 m!279751))

(declare-fun m!279753 () Bool)

(assert (=> d!63183 m!279753))

(declare-fun m!279755 () Bool)

(assert (=> d!63183 m!279755))

(declare-fun m!279757 () Bool)

(assert (=> b!263540 m!279757))

(declare-fun m!279759 () Bool)

(assert (=> b!263541 m!279759))

(assert (=> b!263195 d!63183))

(declare-fun b!263542 () Bool)

(declare-fun e!170779 () (_ BitVec 32))

(assert (=> b!263542 (= e!170779 #b00000000000000000000000000000000)))

(declare-fun b!263544 () Bool)

(declare-fun e!170780 () (_ BitVec 32))

(assert (=> b!263544 (= e!170779 e!170780)))

(declare-fun c!44971 () Bool)

(assert (=> b!263544 (= c!44971 (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!263545 () Bool)

(declare-fun call!25231 () (_ BitVec 32))

(assert (=> b!263545 (= e!170780 call!25231)))

(declare-fun bm!25228 () Bool)

(assert (=> bm!25228 (= call!25231 (arrayCountValidKeys!0 (_keys!7035 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun d!63185 () Bool)

(declare-fun lt!133444 () (_ BitVec 32))

(assert (=> d!63185 (and (bvsge lt!133444 #b00000000000000000000000000000000) (bvsle lt!133444 (bvsub (size!6349 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!63185 (= lt!133444 e!170779)))

(declare-fun c!44970 () Bool)

(assert (=> d!63185 (= c!44970 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63185 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6349 (_keys!7035 thiss!1504)) (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63185 (= (arrayCountValidKeys!0 (_keys!7035 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))) lt!133444)))

(declare-fun b!263543 () Bool)

(assert (=> b!263543 (= e!170780 (bvadd #b00000000000000000000000000000001 call!25231))))

(assert (= (and d!63185 c!44970) b!263542))

(assert (= (and d!63185 (not c!44970)) b!263544))

(assert (= (and b!263544 c!44971) b!263543))

(assert (= (and b!263544 (not c!44971)) b!263545))

(assert (= (or b!263543 b!263545) bm!25228))

(assert (=> b!263544 m!279575))

(assert (=> b!263544 m!279575))

(declare-fun m!279761 () Bool)

(assert (=> b!263544 m!279761))

(declare-fun m!279763 () Bool)

(assert (=> bm!25228 m!279763))

(assert (=> bm!25186 d!63185))

(declare-fun d!63187 () Bool)

(assert (=> d!63187 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133031) key!932))))

(declare-fun lt!133445 () Unit!8187)

(assert (=> d!63187 (= lt!133445 (choose!1301 (toList!1966 lt!133031) key!932))))

(declare-fun e!170781 () Bool)

(assert (=> d!63187 e!170781))

(declare-fun res!128713 () Bool)

(assert (=> d!63187 (=> (not res!128713) (not e!170781))))

(assert (=> d!63187 (= res!128713 (isStrictlySorted!372 (toList!1966 lt!133031)))))

(assert (=> d!63187 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133031) key!932) lt!133445)))

(declare-fun b!263546 () Bool)

(assert (=> b!263546 (= e!170781 (containsKey!311 (toList!1966 lt!133031) key!932))))

(assert (= (and d!63187 res!128713) b!263546))

(assert (=> d!63187 m!279137))

(assert (=> d!63187 m!279137))

(assert (=> d!63187 m!279139))

(declare-fun m!279765 () Bool)

(assert (=> d!63187 m!279765))

(declare-fun m!279767 () Bool)

(assert (=> d!63187 m!279767))

(assert (=> b!263546 m!279133))

(assert (=> b!262991 d!63187))

(declare-fun d!63189 () Bool)

(assert (=> d!63189 (= (isDefined!261 (getValueByKey!319 (toList!1966 lt!133031) key!932)) (not (isEmpty!545 (getValueByKey!319 (toList!1966 lt!133031) key!932))))))

(declare-fun bs!9261 () Bool)

(assert (= bs!9261 d!63189))

(assert (=> bs!9261 m!279137))

(declare-fun m!279769 () Bool)

(assert (=> bs!9261 m!279769))

(assert (=> b!262991 d!63189))

(declare-fun b!263549 () Bool)

(declare-fun e!170783 () Option!325)

(assert (=> b!263549 (= e!170783 (getValueByKey!319 (t!8957 (toList!1966 lt!133031)) key!932))))

(declare-fun b!263547 () Bool)

(declare-fun e!170782 () Option!325)

(assert (=> b!263547 (= e!170782 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133031)))))))

(declare-fun d!63191 () Bool)

(declare-fun c!44972 () Bool)

(assert (=> d!63191 (= c!44972 (and ((_ is Cons!3868) (toList!1966 lt!133031)) (= (_1!2497 (h!4534 (toList!1966 lt!133031))) key!932)))))

(assert (=> d!63191 (= (getValueByKey!319 (toList!1966 lt!133031) key!932) e!170782)))

(declare-fun b!263550 () Bool)

(assert (=> b!263550 (= e!170783 None!323)))

(declare-fun b!263548 () Bool)

(assert (=> b!263548 (= e!170782 e!170783)))

(declare-fun c!44973 () Bool)

(assert (=> b!263548 (= c!44973 (and ((_ is Cons!3868) (toList!1966 lt!133031)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133031))) key!932))))))

(assert (= (and d!63191 c!44972) b!263547))

(assert (= (and d!63191 (not c!44972)) b!263548))

(assert (= (and b!263548 c!44973) b!263549))

(assert (= (and b!263548 (not c!44973)) b!263550))

(declare-fun m!279771 () Bool)

(assert (=> b!263549 m!279771))

(assert (=> b!262991 d!63191))

(declare-fun d!63193 () Bool)

(assert (=> d!63193 (= (validKeyInArray!0 (select (arr!5998 lt!133048) index!297)) (and (not (= (select (arr!5998 lt!133048) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5998 lt!133048) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!263169 d!63193))

(assert (=> b!263139 d!63105))

(assert (=> d!63005 d!63015))

(declare-fun b!263551 () Bool)

(declare-fun e!170784 () (_ BitVec 32))

(assert (=> b!263551 (= e!170784 #b00000000000000000000000000000000)))

(declare-fun b!263553 () Bool)

(declare-fun e!170785 () (_ BitVec 32))

(assert (=> b!263553 (= e!170784 e!170785)))

(declare-fun c!44975 () Bool)

(assert (=> b!263553 (= c!44975 (validKeyInArray!0 (select (arr!5998 lt!133048) index!297)))))

(declare-fun b!263554 () Bool)

(declare-fun call!25232 () (_ BitVec 32))

(assert (=> b!263554 (= e!170785 call!25232)))

(declare-fun bm!25229 () Bool)

(assert (=> bm!25229 (= call!25232 (arrayCountValidKeys!0 lt!133048 (bvadd index!297 #b00000000000000000000000000000001) (bvadd index!297 #b00000000000000000000000000000001)))))

(declare-fun d!63195 () Bool)

(declare-fun lt!133446 () (_ BitVec 32))

(assert (=> d!63195 (and (bvsge lt!133446 #b00000000000000000000000000000000) (bvsle lt!133446 (bvsub (size!6349 lt!133048) index!297)))))

(assert (=> d!63195 (= lt!133446 e!170784)))

(declare-fun c!44974 () Bool)

(assert (=> d!63195 (= c!44974 (bvsge index!297 (bvadd index!297 #b00000000000000000000000000000001)))))

(assert (=> d!63195 (and (bvsle index!297 (bvadd index!297 #b00000000000000000000000000000001)) (bvsge index!297 #b00000000000000000000000000000000) (bvsle (bvadd index!297 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(assert (=> d!63195 (= (arrayCountValidKeys!0 lt!133048 index!297 (bvadd index!297 #b00000000000000000000000000000001)) lt!133446)))

(declare-fun b!263552 () Bool)

(assert (=> b!263552 (= e!170785 (bvadd #b00000000000000000000000000000001 call!25232))))

(assert (= (and d!63195 c!44974) b!263551))

(assert (= (and d!63195 (not c!44974)) b!263553))

(assert (= (and b!263553 c!44975) b!263552))

(assert (= (and b!263553 (not c!44975)) b!263554))

(assert (= (or b!263552 b!263554) bm!25229))

(assert (=> b!263553 m!279285))

(assert (=> b!263553 m!279285))

(assert (=> b!263553 m!279287))

(declare-fun m!279773 () Bool)

(assert (=> bm!25229 m!279773))

(assert (=> d!63033 d!63195))

(declare-fun d!63197 () Bool)

(assert (=> d!63197 (= (arrayCountValidKeys!0 lt!133048 index!297 (bvadd index!297 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(assert (=> d!63197 true))

(declare-fun _$85!33 () Unit!8187)

(assert (=> d!63197 (= (choose!2 lt!133048 index!297) _$85!33)))

(declare-fun bs!9262 () Bool)

(assert (= bs!9262 d!63197))

(assert (=> bs!9262 m!279281))

(assert (=> d!63033 d!63197))

(declare-fun b!263555 () Bool)

(declare-fun e!170786 () Bool)

(assert (=> b!263555 (= e!170786 (contains!1914 Nil!3870 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!263557 () Bool)

(declare-fun e!170789 () Bool)

(declare-fun call!25233 () Bool)

(assert (=> b!263557 (= e!170789 call!25233)))

(declare-fun b!263558 () Bool)

(declare-fun e!170787 () Bool)

(assert (=> b!263558 (= e!170787 e!170789)))

(declare-fun c!44976 () Bool)

(assert (=> b!263558 (= c!44976 (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!263556 () Bool)

(declare-fun e!170788 () Bool)

(assert (=> b!263556 (= e!170788 e!170787)))

(declare-fun res!128715 () Bool)

(assert (=> b!263556 (=> (not res!128715) (not e!170787))))

(assert (=> b!263556 (= res!128715 (not e!170786))))

(declare-fun res!128716 () Bool)

(assert (=> b!263556 (=> (not res!128716) (not e!170786))))

(assert (=> b!263556 (= res!128716 (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!63199 () Bool)

(declare-fun res!128714 () Bool)

(assert (=> d!63199 (=> res!128714 e!170788)))

(assert (=> d!63199 (= res!128714 (bvsge #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63199 (= (arrayNoDuplicates!0 (_keys!7035 thiss!1504) #b00000000000000000000000000000000 Nil!3870) e!170788)))

(declare-fun bm!25230 () Bool)

(assert (=> bm!25230 (= call!25233 (arrayNoDuplicates!0 (_keys!7035 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44976 (Cons!3869 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) Nil!3870) Nil!3870)))))

(declare-fun b!263559 () Bool)

(assert (=> b!263559 (= e!170789 call!25233)))

(assert (= (and d!63199 (not res!128714)) b!263556))

(assert (= (and b!263556 res!128716) b!263555))

(assert (= (and b!263556 res!128715) b!263558))

(assert (= (and b!263558 c!44976) b!263557))

(assert (= (and b!263558 (not c!44976)) b!263559))

(assert (= (or b!263557 b!263559) bm!25230))

(assert (=> b!263555 m!279177))

(assert (=> b!263555 m!279177))

(declare-fun m!279775 () Bool)

(assert (=> b!263555 m!279775))

(assert (=> b!263558 m!279177))

(assert (=> b!263558 m!279177))

(assert (=> b!263558 m!279179))

(assert (=> b!263556 m!279177))

(assert (=> b!263556 m!279177))

(assert (=> b!263556 m!279179))

(assert (=> bm!25230 m!279177))

(declare-fun m!279777 () Bool)

(assert (=> bm!25230 m!279777))

(assert (=> b!263214 d!63199))

(declare-fun d!63201 () Bool)

(assert (=> d!63201 (= (apply!262 lt!133278 #b1000000000000000000000000000000000000000000000000000000000000000) (get!3095 (getValueByKey!319 (toList!1966 lt!133278) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9263 () Bool)

(assert (= bs!9263 d!63201))

(assert (=> bs!9263 m!279523))

(assert (=> bs!9263 m!279523))

(declare-fun m!279779 () Bool)

(assert (=> bs!9263 m!279779))

(assert (=> b!263196 d!63201))

(declare-fun d!63203 () Bool)

(assert (=> d!63203 (arrayNoDuplicates!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) #b00000000000000000000000000000000 Nil!3870)))

(assert (=> d!63203 true))

(declare-fun _$65!98 () Unit!8187)

(assert (=> d!63203 (= (choose!41 (_keys!7035 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3870) _$65!98)))

(declare-fun bs!9264 () Bool)

(assert (= bs!9264 d!63203))

(assert (=> bs!9264 m!278995))

(assert (=> bs!9264 m!279375))

(assert (=> d!63051 d!63203))

(assert (=> b!262993 d!63189))

(assert (=> b!262993 d!63191))

(assert (=> b!263141 d!63105))

(declare-fun d!63205 () Bool)

(assert (=> d!63205 (= (apply!262 lt!133221 lt!133212) (get!3095 (getValueByKey!319 (toList!1966 lt!133221) lt!133212)))))

(declare-fun bs!9265 () Bool)

(assert (= bs!9265 d!63205))

(declare-fun m!279781 () Bool)

(assert (=> bs!9265 m!279781))

(assert (=> bs!9265 m!279781))

(declare-fun m!279783 () Bool)

(assert (=> bs!9265 m!279783))

(assert (=> b!263076 d!63205))

(declare-fun d!63207 () Bool)

(assert (=> d!63207 (= (apply!262 (+!705 lt!133215 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))) lt!133220) (apply!262 lt!133215 lt!133220))))

(declare-fun lt!133449 () Unit!8187)

(declare-fun choose!1303 (ListLongMap!3901 (_ BitVec 64) V!8523 (_ BitVec 64)) Unit!8187)

(assert (=> d!63207 (= lt!133449 (choose!1303 lt!133215 lt!133216 (zeroValue!4684 thiss!1504) lt!133220))))

(declare-fun e!170792 () Bool)

(assert (=> d!63207 e!170792))

(declare-fun res!128719 () Bool)

(assert (=> d!63207 (=> (not res!128719) (not e!170792))))

(assert (=> d!63207 (= res!128719 (contains!1911 lt!133215 lt!133220))))

(assert (=> d!63207 (= (addApplyDifferent!238 lt!133215 lt!133216 (zeroValue!4684 thiss!1504) lt!133220) lt!133449)))

(declare-fun b!263563 () Bool)

(assert (=> b!263563 (= e!170792 (not (= lt!133220 lt!133216)))))

(assert (= (and d!63207 res!128719) b!263563))

(assert (=> d!63207 m!279221))

(assert (=> d!63207 m!279201))

(assert (=> d!63207 m!279201))

(assert (=> d!63207 m!279205))

(declare-fun m!279785 () Bool)

(assert (=> d!63207 m!279785))

(declare-fun m!279787 () Bool)

(assert (=> d!63207 m!279787))

(assert (=> b!263076 d!63207))

(declare-fun d!63209 () Bool)

(assert (=> d!63209 (= (apply!262 lt!133225 lt!133208) (get!3095 (getValueByKey!319 (toList!1966 lt!133225) lt!133208)))))

(declare-fun bs!9266 () Bool)

(assert (= bs!9266 d!63209))

(declare-fun m!279789 () Bool)

(assert (=> bs!9266 m!279789))

(assert (=> bs!9266 m!279789))

(declare-fun m!279791 () Bool)

(assert (=> bs!9266 m!279791))

(assert (=> b!263076 d!63209))

(declare-fun d!63211 () Bool)

(assert (=> d!63211 (= (apply!262 (+!705 lt!133225 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))) lt!133208) (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133225 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))) lt!133208)))))

(declare-fun bs!9267 () Bool)

(assert (= bs!9267 d!63211))

(declare-fun m!279793 () Bool)

(assert (=> bs!9267 m!279793))

(assert (=> bs!9267 m!279793))

(declare-fun m!279795 () Bool)

(assert (=> bs!9267 m!279795))

(assert (=> b!263076 d!63211))

(declare-fun d!63213 () Bool)

(declare-fun e!170793 () Bool)

(assert (=> d!63213 e!170793))

(declare-fun res!128720 () Bool)

(assert (=> d!63213 (=> res!128720 e!170793)))

(declare-fun lt!133451 () Bool)

(assert (=> d!63213 (= res!128720 (not lt!133451))))

(declare-fun lt!133450 () Bool)

(assert (=> d!63213 (= lt!133451 lt!133450)))

(declare-fun lt!133452 () Unit!8187)

(declare-fun e!170794 () Unit!8187)

(assert (=> d!63213 (= lt!133452 e!170794)))

(declare-fun c!44977 () Bool)

(assert (=> d!63213 (= c!44977 lt!133450)))

(assert (=> d!63213 (= lt!133450 (containsKey!311 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) lt!133222))))

(assert (=> d!63213 (= (contains!1911 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))) lt!133222) lt!133451)))

(declare-fun b!263564 () Bool)

(declare-fun lt!133453 () Unit!8187)

(assert (=> b!263564 (= e!170794 lt!133453)))

(assert (=> b!263564 (= lt!133453 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) lt!133222))))

(assert (=> b!263564 (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) lt!133222))))

(declare-fun b!263565 () Bool)

(declare-fun Unit!8210 () Unit!8187)

(assert (=> b!263565 (= e!170794 Unit!8210)))

(declare-fun b!263566 () Bool)

(assert (=> b!263566 (= e!170793 (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) lt!133222)))))

(assert (= (and d!63213 c!44977) b!263564))

(assert (= (and d!63213 (not c!44977)) b!263565))

(assert (= (and d!63213 (not res!128720)) b!263566))

(declare-fun m!279797 () Bool)

(assert (=> d!63213 m!279797))

(declare-fun m!279799 () Bool)

(assert (=> b!263564 m!279799))

(declare-fun m!279801 () Bool)

(assert (=> b!263564 m!279801))

(assert (=> b!263564 m!279801))

(declare-fun m!279803 () Bool)

(assert (=> b!263564 m!279803))

(assert (=> b!263566 m!279801))

(assert (=> b!263566 m!279801))

(assert (=> b!263566 m!279803))

(assert (=> b!263076 d!63213))

(declare-fun d!63215 () Bool)

(assert (=> d!63215 (= (apply!262 (+!705 lt!133221 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))) lt!133212) (apply!262 lt!133221 lt!133212))))

(declare-fun lt!133454 () Unit!8187)

(assert (=> d!63215 (= lt!133454 (choose!1303 lt!133221 lt!133210 (minValue!4684 thiss!1504) lt!133212))))

(declare-fun e!170795 () Bool)

(assert (=> d!63215 e!170795))

(declare-fun res!128721 () Bool)

(assert (=> d!63215 (=> (not res!128721) (not e!170795))))

(assert (=> d!63215 (= res!128721 (contains!1911 lt!133221 lt!133212))))

(assert (=> d!63215 (= (addApplyDifferent!238 lt!133221 lt!133210 (minValue!4684 thiss!1504) lt!133212) lt!133454)))

(declare-fun b!263567 () Bool)

(assert (=> b!263567 (= e!170795 (not (= lt!133212 lt!133210)))))

(assert (= (and d!63215 res!128721) b!263567))

(assert (=> d!63215 m!279219))

(assert (=> d!63215 m!279213))

(assert (=> d!63215 m!279213))

(assert (=> d!63215 m!279217))

(declare-fun m!279805 () Bool)

(assert (=> d!63215 m!279805))

(declare-fun m!279807 () Bool)

(assert (=> d!63215 m!279807))

(assert (=> b!263076 d!63215))

(assert (=> b!263076 d!63123))

(declare-fun d!63217 () Bool)

(declare-fun e!170796 () Bool)

(assert (=> d!63217 e!170796))

(declare-fun res!128722 () Bool)

(assert (=> d!63217 (=> (not res!128722) (not e!170796))))

(declare-fun lt!133457 () ListLongMap!3901)

(assert (=> d!63217 (= res!128722 (contains!1911 lt!133457 (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))

(declare-fun lt!133458 () List!3872)

(assert (=> d!63217 (= lt!133457 (ListLongMap!3902 lt!133458))))

(declare-fun lt!133456 () Unit!8187)

(declare-fun lt!133455 () Unit!8187)

(assert (=> d!63217 (= lt!133456 lt!133455)))

(assert (=> d!63217 (= (getValueByKey!319 lt!133458 (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63217 (= lt!133455 (lemmaContainsTupThenGetReturnValue!177 lt!133458 (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63217 (= lt!133458 (insertStrictlySorted!179 (toList!1966 lt!133215) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63217 (= (+!705 lt!133215 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))) lt!133457)))

(declare-fun b!263568 () Bool)

(declare-fun res!128723 () Bool)

(assert (=> b!263568 (=> (not res!128723) (not e!170796))))

(assert (=> b!263568 (= res!128723 (= (getValueByKey!319 (toList!1966 lt!133457) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))))))

(declare-fun b!263569 () Bool)

(assert (=> b!263569 (= e!170796 (contains!1913 (toList!1966 lt!133457) (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))))

(assert (= (and d!63217 res!128722) b!263568))

(assert (= (and b!263568 res!128723) b!263569))

(declare-fun m!279809 () Bool)

(assert (=> d!63217 m!279809))

(declare-fun m!279811 () Bool)

(assert (=> d!63217 m!279811))

(declare-fun m!279813 () Bool)

(assert (=> d!63217 m!279813))

(declare-fun m!279815 () Bool)

(assert (=> d!63217 m!279815))

(declare-fun m!279817 () Bool)

(assert (=> b!263568 m!279817))

(declare-fun m!279819 () Bool)

(assert (=> b!263569 m!279819))

(assert (=> b!263076 d!63217))

(declare-fun d!63219 () Bool)

(assert (=> d!63219 (= (apply!262 (+!705 lt!133215 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))) lt!133220) (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133215 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))) lt!133220)))))

(declare-fun bs!9268 () Bool)

(assert (= bs!9268 d!63219))

(declare-fun m!279821 () Bool)

(assert (=> bs!9268 m!279821))

(assert (=> bs!9268 m!279821))

(declare-fun m!279823 () Bool)

(assert (=> bs!9268 m!279823))

(assert (=> b!263076 d!63219))

(declare-fun d!63221 () Bool)

(declare-fun e!170797 () Bool)

(assert (=> d!63221 e!170797))

(declare-fun res!128724 () Bool)

(assert (=> d!63221 (=> (not res!128724) (not e!170797))))

(declare-fun lt!133461 () ListLongMap!3901)

(assert (=> d!63221 (= res!128724 (contains!1911 lt!133461 (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))

(declare-fun lt!133462 () List!3872)

(assert (=> d!63221 (= lt!133461 (ListLongMap!3902 lt!133462))))

(declare-fun lt!133460 () Unit!8187)

(declare-fun lt!133459 () Unit!8187)

(assert (=> d!63221 (= lt!133460 lt!133459)))

(assert (=> d!63221 (= (getValueByKey!319 lt!133462 (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))

(assert (=> d!63221 (= lt!133459 (lemmaContainsTupThenGetReturnValue!177 lt!133462 (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))

(assert (=> d!63221 (= lt!133462 (insertStrictlySorted!179 (toList!1966 lt!133225) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))

(assert (=> d!63221 (= (+!705 lt!133225 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))) lt!133461)))

(declare-fun b!263570 () Bool)

(declare-fun res!128725 () Bool)

(assert (=> b!263570 (=> (not res!128725) (not e!170797))))

(assert (=> b!263570 (= res!128725 (= (getValueByKey!319 (toList!1966 lt!133461) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))))))

(declare-fun b!263571 () Bool)

(assert (=> b!263571 (= e!170797 (contains!1913 (toList!1966 lt!133461) (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))))

(assert (= (and d!63221 res!128724) b!263570))

(assert (= (and b!263570 res!128725) b!263571))

(declare-fun m!279825 () Bool)

(assert (=> d!63221 m!279825))

(declare-fun m!279827 () Bool)

(assert (=> d!63221 m!279827))

(declare-fun m!279829 () Bool)

(assert (=> d!63221 m!279829))

(declare-fun m!279831 () Bool)

(assert (=> d!63221 m!279831))

(declare-fun m!279833 () Bool)

(assert (=> b!263570 m!279833))

(declare-fun m!279835 () Bool)

(assert (=> b!263571 m!279835))

(assert (=> b!263076 d!63221))

(declare-fun d!63223 () Bool)

(assert (=> d!63223 (= (apply!262 lt!133215 lt!133220) (get!3095 (getValueByKey!319 (toList!1966 lt!133215) lt!133220)))))

(declare-fun bs!9269 () Bool)

(assert (= bs!9269 d!63223))

(declare-fun m!279837 () Bool)

(assert (=> bs!9269 m!279837))

(assert (=> bs!9269 m!279837))

(declare-fun m!279839 () Bool)

(assert (=> bs!9269 m!279839))

(assert (=> b!263076 d!63223))

(declare-fun d!63225 () Bool)

(assert (=> d!63225 (= (apply!262 (+!705 lt!133221 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))) lt!133212) (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133221 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))) lt!133212)))))

(declare-fun bs!9270 () Bool)

(assert (= bs!9270 d!63225))

(declare-fun m!279841 () Bool)

(assert (=> bs!9270 m!279841))

(assert (=> bs!9270 m!279841))

(declare-fun m!279843 () Bool)

(assert (=> bs!9270 m!279843))

(assert (=> b!263076 d!63225))

(declare-fun d!63227 () Bool)

(declare-fun e!170798 () Bool)

(assert (=> d!63227 e!170798))

(declare-fun res!128726 () Bool)

(assert (=> d!63227 (=> (not res!128726) (not e!170798))))

(declare-fun lt!133465 () ListLongMap!3901)

(assert (=> d!63227 (= res!128726 (contains!1911 lt!133465 (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))

(declare-fun lt!133466 () List!3872)

(assert (=> d!63227 (= lt!133465 (ListLongMap!3902 lt!133466))))

(declare-fun lt!133464 () Unit!8187)

(declare-fun lt!133463 () Unit!8187)

(assert (=> d!63227 (= lt!133464 lt!133463)))

(assert (=> d!63227 (= (getValueByKey!319 lt!133466 (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))

(assert (=> d!63227 (= lt!133463 (lemmaContainsTupThenGetReturnValue!177 lt!133466 (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))

(assert (=> d!63227 (= lt!133466 (insertStrictlySorted!179 (toList!1966 lt!133221) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))

(assert (=> d!63227 (= (+!705 lt!133221 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))) lt!133465)))

(declare-fun b!263572 () Bool)

(declare-fun res!128727 () Bool)

(assert (=> b!263572 (=> (not res!128727) (not e!170798))))

(assert (=> b!263572 (= res!128727 (= (getValueByKey!319 (toList!1966 lt!133465) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))))))

(declare-fun b!263573 () Bool)

(assert (=> b!263573 (= e!170798 (contains!1913 (toList!1966 lt!133465) (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))))

(assert (= (and d!63227 res!128726) b!263572))

(assert (= (and b!263572 res!128727) b!263573))

(declare-fun m!279845 () Bool)

(assert (=> d!63227 m!279845))

(declare-fun m!279847 () Bool)

(assert (=> d!63227 m!279847))

(declare-fun m!279849 () Bool)

(assert (=> d!63227 m!279849))

(declare-fun m!279851 () Bool)

(assert (=> d!63227 m!279851))

(declare-fun m!279853 () Bool)

(assert (=> b!263572 m!279853))

(declare-fun m!279855 () Bool)

(assert (=> b!263573 m!279855))

(assert (=> b!263076 d!63227))

(declare-fun d!63229 () Bool)

(assert (=> d!63229 (contains!1911 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))) lt!133222)))

(declare-fun lt!133469 () Unit!8187)

(declare-fun choose!1304 (ListLongMap!3901 (_ BitVec 64) V!8523 (_ BitVec 64)) Unit!8187)

(assert (=> d!63229 (= lt!133469 (choose!1304 lt!133229 lt!133209 (zeroValue!4684 thiss!1504) lt!133222))))

(assert (=> d!63229 (contains!1911 lt!133229 lt!133222)))

(assert (=> d!63229 (= (addStillContains!238 lt!133229 lt!133209 (zeroValue!4684 thiss!1504) lt!133222) lt!133469)))

(declare-fun bs!9271 () Bool)

(assert (= bs!9271 d!63229))

(assert (=> bs!9271 m!279197))

(assert (=> bs!9271 m!279197))

(assert (=> bs!9271 m!279199))

(declare-fun m!279857 () Bool)

(assert (=> bs!9271 m!279857))

(declare-fun m!279859 () Bool)

(assert (=> bs!9271 m!279859))

(assert (=> b!263076 d!63229))

(declare-fun d!63231 () Bool)

(assert (=> d!63231 (= (apply!262 (+!705 lt!133225 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))) lt!133208) (apply!262 lt!133225 lt!133208))))

(declare-fun lt!133470 () Unit!8187)

(assert (=> d!63231 (= lt!133470 (choose!1303 lt!133225 lt!133224 (minValue!4684 thiss!1504) lt!133208))))

(declare-fun e!170799 () Bool)

(assert (=> d!63231 e!170799))

(declare-fun res!128728 () Bool)

(assert (=> d!63231 (=> (not res!128728) (not e!170799))))

(assert (=> d!63231 (= res!128728 (contains!1911 lt!133225 lt!133208))))

(assert (=> d!63231 (= (addApplyDifferent!238 lt!133225 lt!133224 (minValue!4684 thiss!1504) lt!133208) lt!133470)))

(declare-fun b!263575 () Bool)

(assert (=> b!263575 (= e!170799 (not (= lt!133208 lt!133224)))))

(assert (= (and d!63231 res!128728) b!263575))

(assert (=> d!63231 m!279203))

(assert (=> d!63231 m!279193))

(assert (=> d!63231 m!279193))

(assert (=> d!63231 m!279195))

(declare-fun m!279861 () Bool)

(assert (=> d!63231 m!279861))

(declare-fun m!279863 () Bool)

(assert (=> d!63231 m!279863))

(assert (=> b!263076 d!63231))

(declare-fun d!63233 () Bool)

(declare-fun e!170800 () Bool)

(assert (=> d!63233 e!170800))

(declare-fun res!128729 () Bool)

(assert (=> d!63233 (=> (not res!128729) (not e!170800))))

(declare-fun lt!133473 () ListLongMap!3901)

(assert (=> d!63233 (= res!128729 (contains!1911 lt!133473 (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))

(declare-fun lt!133474 () List!3872)

(assert (=> d!63233 (= lt!133473 (ListLongMap!3902 lt!133474))))

(declare-fun lt!133472 () Unit!8187)

(declare-fun lt!133471 () Unit!8187)

(assert (=> d!63233 (= lt!133472 lt!133471)))

(assert (=> d!63233 (= (getValueByKey!319 lt!133474 (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63233 (= lt!133471 (lemmaContainsTupThenGetReturnValue!177 lt!133474 (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63233 (= lt!133474 (insertStrictlySorted!179 (toList!1966 lt!133229) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63233 (= (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))) lt!133473)))

(declare-fun b!263576 () Bool)

(declare-fun res!128730 () Bool)

(assert (=> b!263576 (=> (not res!128730) (not e!170800))))

(assert (=> b!263576 (= res!128730 (= (getValueByKey!319 (toList!1966 lt!133473) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))))))

(declare-fun b!263577 () Bool)

(assert (=> b!263577 (= e!170800 (contains!1913 (toList!1966 lt!133473) (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))))

(assert (= (and d!63233 res!128729) b!263576))

(assert (= (and b!263576 res!128730) b!263577))

(declare-fun m!279865 () Bool)

(assert (=> d!63233 m!279865))

(declare-fun m!279867 () Bool)

(assert (=> d!63233 m!279867))

(declare-fun m!279869 () Bool)

(assert (=> d!63233 m!279869))

(declare-fun m!279871 () Bool)

(assert (=> d!63233 m!279871))

(declare-fun m!279873 () Bool)

(assert (=> b!263576 m!279873))

(declare-fun m!279875 () Bool)

(assert (=> b!263577 m!279875))

(assert (=> b!263076 d!63233))

(declare-fun d!63235 () Bool)

(assert (=> d!63235 (= (+!705 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) (tuple2!4975 key!932 v!346)) (getCurrentListMap!1489 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504))) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))

(assert (=> d!63235 true))

(declare-fun _$3!67 () Unit!8187)

(assert (=> d!63235 (= (choose!1300 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) index!297 key!932 v!346 (defaultEntry!4843 thiss!1504)) _$3!67)))

(declare-fun bs!9272 () Bool)

(assert (= bs!9272 d!63235))

(assert (=> bs!9272 m!279023))

(assert (=> bs!9272 m!278995))

(assert (=> bs!9272 m!279305))

(assert (=> bs!9272 m!278985))

(assert (=> bs!9272 m!279023))

(assert (=> bs!9272 m!279303))

(assert (=> d!63043 d!63235))

(assert (=> d!63043 d!63097))

(declare-fun d!63237 () Bool)

(declare-fun res!128731 () Bool)

(declare-fun e!170801 () Bool)

(assert (=> d!63237 (=> res!128731 e!170801)))

(assert (=> d!63237 (= res!128731 (and ((_ is Cons!3868) (toList!1966 lt!133047)) (= (_1!2497 (h!4534 (toList!1966 lt!133047))) key!932)))))

(assert (=> d!63237 (= (containsKey!311 (toList!1966 lt!133047) key!932) e!170801)))

(declare-fun b!263578 () Bool)

(declare-fun e!170802 () Bool)

(assert (=> b!263578 (= e!170801 e!170802)))

(declare-fun res!128732 () Bool)

(assert (=> b!263578 (=> (not res!128732) (not e!170802))))

(assert (=> b!263578 (= res!128732 (and (or (not ((_ is Cons!3868) (toList!1966 lt!133047))) (bvsle (_1!2497 (h!4534 (toList!1966 lt!133047))) key!932)) ((_ is Cons!3868) (toList!1966 lt!133047)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133047))) key!932)))))

(declare-fun b!263579 () Bool)

(assert (=> b!263579 (= e!170802 (containsKey!311 (t!8957 (toList!1966 lt!133047)) key!932))))

(assert (= (and d!63237 (not res!128731)) b!263578))

(assert (= (and b!263578 res!128732) b!263579))

(declare-fun m!279877 () Bool)

(assert (=> b!263579 m!279877))

(assert (=> d!63027 d!63237))

(declare-fun d!63239 () Bool)

(declare-fun res!128733 () Bool)

(declare-fun e!170803 () Bool)

(assert (=> d!63239 (=> (not res!128733) (not e!170803))))

(assert (=> d!63239 (= res!128733 (validMask!0 (mask!11209 thiss!1504)))))

(assert (=> d!63239 (= (simpleValid!284 thiss!1504) e!170803)))

(declare-fun b!263582 () Bool)

(declare-fun res!128734 () Bool)

(assert (=> b!263582 (=> (not res!128734) (not e!170803))))

(assert (=> b!263582 (= res!128734 (= (size!6352 thiss!1504) (bvadd (_size!1984 thiss!1504) (bvsdiv (bvadd (extraKeys!4580 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!263580 () Bool)

(declare-fun res!128735 () Bool)

(assert (=> b!263580 (=> (not res!128735) (not e!170803))))

(assert (=> b!263580 (= res!128735 (and (= (size!6348 (_values!4826 thiss!1504)) (bvadd (mask!11209 thiss!1504) #b00000000000000000000000000000001)) (= (size!6349 (_keys!7035 thiss!1504)) (size!6348 (_values!4826 thiss!1504))) (bvsge (_size!1984 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1984 thiss!1504) (bvadd (mask!11209 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!263583 () Bool)

(assert (=> b!263583 (= e!170803 (and (bvsge (extraKeys!4580 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4580 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1984 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!263581 () Bool)

(declare-fun res!128736 () Bool)

(assert (=> b!263581 (=> (not res!128736) (not e!170803))))

(assert (=> b!263581 (= res!128736 (bvsge (size!6352 thiss!1504) (_size!1984 thiss!1504)))))

(assert (= (and d!63239 res!128733) b!263580))

(assert (= (and b!263580 res!128735) b!263581))

(assert (= (and b!263581 res!128736) b!263582))

(assert (= (and b!263582 res!128734) b!263583))

(assert (=> d!63239 m!279117))

(declare-fun m!279879 () Bool)

(assert (=> b!263582 m!279879))

(assert (=> b!263581 m!279879))

(assert (=> d!63057 d!63239))

(declare-fun b!263586 () Bool)

(declare-fun e!170805 () Option!325)

(assert (=> b!263586 (= e!170805 (getValueByKey!319 (t!8957 (toList!1966 lt!133287)) (_1!2497 lt!133042)))))

(declare-fun b!263584 () Bool)

(declare-fun e!170804 () Option!325)

(assert (=> b!263584 (= e!170804 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133287)))))))

(declare-fun d!63241 () Bool)

(declare-fun c!44978 () Bool)

(assert (=> d!63241 (= c!44978 (and ((_ is Cons!3868) (toList!1966 lt!133287)) (= (_1!2497 (h!4534 (toList!1966 lt!133287))) (_1!2497 lt!133042))))))

(assert (=> d!63241 (= (getValueByKey!319 (toList!1966 lt!133287) (_1!2497 lt!133042)) e!170804)))

(declare-fun b!263587 () Bool)

(assert (=> b!263587 (= e!170805 None!323)))

(declare-fun b!263585 () Bool)

(assert (=> b!263585 (= e!170804 e!170805)))

(declare-fun c!44979 () Bool)

(assert (=> b!263585 (= c!44979 (and ((_ is Cons!3868) (toList!1966 lt!133287)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133287))) (_1!2497 lt!133042)))))))

(assert (= (and d!63241 c!44978) b!263584))

(assert (= (and d!63241 (not c!44978)) b!263585))

(assert (= (and b!263585 c!44979) b!263586))

(assert (= (and b!263585 (not c!44979)) b!263587))

(declare-fun m!279881 () Bool)

(assert (=> b!263586 m!279881))

(assert (=> b!263207 d!63241))

(declare-fun d!63243 () Bool)

(assert (=> d!63243 (= (inRange!0 (ite c!44834 (index!7010 lt!133158) (index!7013 lt!133158)) (mask!11209 thiss!1504)) (and (bvsge (ite c!44834 (index!7010 lt!133158) (index!7013 lt!133158)) #b00000000000000000000000000000000) (bvslt (ite c!44834 (index!7010 lt!133158) (index!7013 lt!133158)) (bvadd (mask!11209 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!25154 d!63243))

(declare-fun d!63245 () Bool)

(assert (=> d!63245 (= (apply!262 (+!705 lt!133280 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))) lt!133263) (apply!262 lt!133280 lt!133263))))

(declare-fun lt!133475 () Unit!8187)

(assert (=> d!63245 (= lt!133475 (choose!1303 lt!133280 lt!133279 (minValue!4684 thiss!1504) lt!133263))))

(declare-fun e!170806 () Bool)

(assert (=> d!63245 e!170806))

(declare-fun res!128737 () Bool)

(assert (=> d!63245 (=> (not res!128737) (not e!170806))))

(assert (=> d!63245 (= res!128737 (contains!1911 lt!133280 lt!133263))))

(assert (=> d!63245 (= (addApplyDifferent!238 lt!133280 lt!133279 (minValue!4684 thiss!1504) lt!133263) lt!133475)))

(declare-fun b!263588 () Bool)

(assert (=> b!263588 (= e!170806 (not (= lt!133263 lt!133279)))))

(assert (= (and d!63245 res!128737) b!263588))

(assert (=> d!63245 m!279331))

(assert (=> d!63245 m!279321))

(assert (=> d!63245 m!279321))

(assert (=> d!63245 m!279323))

(declare-fun m!279883 () Bool)

(assert (=> d!63245 m!279883))

(declare-fun m!279885 () Bool)

(assert (=> d!63245 m!279885))

(assert (=> b!263193 d!63245))

(declare-fun d!63247 () Bool)

(assert (=> d!63247 (= (apply!262 (+!705 lt!133276 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))) lt!133267) (apply!262 lt!133276 lt!133267))))

(declare-fun lt!133476 () Unit!8187)

(assert (=> d!63247 (= lt!133476 (choose!1303 lt!133276 lt!133265 (minValue!4684 thiss!1504) lt!133267))))

(declare-fun e!170807 () Bool)

(assert (=> d!63247 e!170807))

(declare-fun res!128738 () Bool)

(assert (=> d!63247 (=> (not res!128738) (not e!170807))))

(assert (=> d!63247 (= res!128738 (contains!1911 lt!133276 lt!133267))))

(assert (=> d!63247 (= (addApplyDifferent!238 lt!133276 lt!133265 (minValue!4684 thiss!1504) lt!133267) lt!133476)))

(declare-fun b!263589 () Bool)

(assert (=> b!263589 (= e!170807 (not (= lt!133267 lt!133265)))))

(assert (= (and d!63247 res!128738) b!263589))

(assert (=> d!63247 m!279347))

(assert (=> d!63247 m!279341))

(assert (=> d!63247 m!279341))

(assert (=> d!63247 m!279345))

(declare-fun m!279887 () Bool)

(assert (=> d!63247 m!279887))

(declare-fun m!279889 () Bool)

(assert (=> d!63247 m!279889))

(assert (=> b!263193 d!63247))

(declare-fun d!63249 () Bool)

(declare-fun e!170808 () Bool)

(assert (=> d!63249 e!170808))

(declare-fun res!128739 () Bool)

(assert (=> d!63249 (=> (not res!128739) (not e!170808))))

(declare-fun lt!133479 () ListLongMap!3901)

(assert (=> d!63249 (= res!128739 (contains!1911 lt!133479 (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))

(declare-fun lt!133480 () List!3872)

(assert (=> d!63249 (= lt!133479 (ListLongMap!3902 lt!133480))))

(declare-fun lt!133478 () Unit!8187)

(declare-fun lt!133477 () Unit!8187)

(assert (=> d!63249 (= lt!133478 lt!133477)))

(assert (=> d!63249 (= (getValueByKey!319 lt!133480 (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63249 (= lt!133477 (lemmaContainsTupThenGetReturnValue!177 lt!133480 (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63249 (= lt!133480 (insertStrictlySorted!179 (toList!1966 lt!133284) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63249 (= (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))) lt!133479)))

(declare-fun b!263590 () Bool)

(declare-fun res!128740 () Bool)

(assert (=> b!263590 (=> (not res!128740) (not e!170808))))

(assert (=> b!263590 (= res!128740 (= (getValueByKey!319 (toList!1966 lt!133479) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))))))

(declare-fun b!263591 () Bool)

(assert (=> b!263591 (= e!170808 (contains!1913 (toList!1966 lt!133479) (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))))

(assert (= (and d!63249 res!128739) b!263590))

(assert (= (and b!263590 res!128740) b!263591))

(declare-fun m!279891 () Bool)

(assert (=> d!63249 m!279891))

(declare-fun m!279893 () Bool)

(assert (=> d!63249 m!279893))

(declare-fun m!279895 () Bool)

(assert (=> d!63249 m!279895))

(declare-fun m!279897 () Bool)

(assert (=> d!63249 m!279897))

(declare-fun m!279899 () Bool)

(assert (=> b!263590 m!279899))

(declare-fun m!279901 () Bool)

(assert (=> b!263591 m!279901))

(assert (=> b!263193 d!63249))

(declare-fun d!63251 () Bool)

(assert (=> d!63251 (= (apply!262 lt!133276 lt!133267) (get!3095 (getValueByKey!319 (toList!1966 lt!133276) lt!133267)))))

(declare-fun bs!9273 () Bool)

(assert (= bs!9273 d!63251))

(declare-fun m!279903 () Bool)

(assert (=> bs!9273 m!279903))

(assert (=> bs!9273 m!279903))

(declare-fun m!279905 () Bool)

(assert (=> bs!9273 m!279905))

(assert (=> b!263193 d!63251))

(declare-fun b!263592 () Bool)

(declare-fun lt!133482 () ListLongMap!3901)

(declare-fun e!170814 () Bool)

(assert (=> b!263592 (= e!170814 (= lt!133482 (getCurrentListMapNoExtraKeys!581 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4843 thiss!1504))))))

(declare-fun b!263593 () Bool)

(declare-fun e!170812 () Bool)

(assert (=> b!263593 (= e!170812 (validKeyInArray!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(assert (=> b!263593 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!263594 () Bool)

(declare-fun res!128741 () Bool)

(declare-fun e!170813 () Bool)

(assert (=> b!263594 (=> (not res!128741) (not e!170813))))

(assert (=> b!263594 (= res!128741 (not (contains!1911 lt!133482 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!263595 () Bool)

(declare-fun e!170815 () Bool)

(assert (=> b!263595 (= e!170813 e!170815)))

(declare-fun c!44981 () Bool)

(assert (=> b!263595 (= c!44981 e!170812)))

(declare-fun res!128742 () Bool)

(assert (=> b!263595 (=> (not res!128742) (not e!170812))))

(assert (=> b!263595 (= res!128742 (bvslt #b00000000000000000000000000000000 (size!6349 lt!133048)))))

(declare-fun b!263596 () Bool)

(declare-fun e!170811 () ListLongMap!3901)

(declare-fun e!170809 () ListLongMap!3901)

(assert (=> b!263596 (= e!170811 e!170809)))

(declare-fun c!44983 () Bool)

(assert (=> b!263596 (= c!44983 (validKeyInArray!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun b!263597 () Bool)

(assert (=> b!263597 (= e!170814 (isEmpty!546 lt!133482))))

(declare-fun call!25234 () ListLongMap!3901)

(declare-fun bm!25231 () Bool)

(assert (=> bm!25231 (= call!25234 (getCurrentListMapNoExtraKeys!581 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4843 thiss!1504)))))

(declare-fun d!63253 () Bool)

(assert (=> d!63253 e!170813))

(declare-fun res!128744 () Bool)

(assert (=> d!63253 (=> (not res!128744) (not e!170813))))

(assert (=> d!63253 (= res!128744 (not (contains!1911 lt!133482 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63253 (= lt!133482 e!170811)))

(declare-fun c!44980 () Bool)

(assert (=> d!63253 (= c!44980 (bvsge #b00000000000000000000000000000000 (size!6349 lt!133048)))))

(assert (=> d!63253 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63253 (= (getCurrentListMapNoExtraKeys!581 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) lt!133482)))

(declare-fun b!263598 () Bool)

(assert (=> b!263598 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 lt!133048)))))

(assert (=> b!263598 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6348 lt!133045)))))

(declare-fun e!170810 () Bool)

(assert (=> b!263598 (= e!170810 (= (apply!262 lt!133482 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)) (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!263599 () Bool)

(assert (=> b!263599 (= e!170815 e!170814)))

(declare-fun c!44982 () Bool)

(assert (=> b!263599 (= c!44982 (bvslt #b00000000000000000000000000000000 (size!6349 lt!133048)))))

(declare-fun b!263600 () Bool)

(assert (=> b!263600 (= e!170811 (ListLongMap!3902 Nil!3869))))

(declare-fun b!263601 () Bool)

(declare-fun lt!133481 () Unit!8187)

(declare-fun lt!133484 () Unit!8187)

(assert (=> b!263601 (= lt!133481 lt!133484)))

(declare-fun lt!133487 () ListLongMap!3901)

(declare-fun lt!133486 () (_ BitVec 64))

(declare-fun lt!133485 () (_ BitVec 64))

(declare-fun lt!133483 () V!8523)

(assert (=> b!263601 (not (contains!1911 (+!705 lt!133487 (tuple2!4975 lt!133486 lt!133483)) lt!133485))))

(assert (=> b!263601 (= lt!133484 (addStillNotContains!131 lt!133487 lt!133486 lt!133483 lt!133485))))

(assert (=> b!263601 (= lt!133485 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!263601 (= lt!133483 (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!263601 (= lt!133486 (select (arr!5998 lt!133048) #b00000000000000000000000000000000))))

(assert (=> b!263601 (= lt!133487 call!25234)))

(assert (=> b!263601 (= e!170809 (+!705 call!25234 (tuple2!4975 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!263602 () Bool)

(assert (=> b!263602 (= e!170809 call!25234)))

(declare-fun b!263603 () Bool)

(assert (=> b!263603 (= e!170815 e!170810)))

(assert (=> b!263603 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 lt!133048)))))

(declare-fun res!128743 () Bool)

(assert (=> b!263603 (= res!128743 (contains!1911 lt!133482 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(assert (=> b!263603 (=> (not res!128743) (not e!170810))))

(assert (= (and d!63253 c!44980) b!263600))

(assert (= (and d!63253 (not c!44980)) b!263596))

(assert (= (and b!263596 c!44983) b!263601))

(assert (= (and b!263596 (not c!44983)) b!263602))

(assert (= (or b!263601 b!263602) bm!25231))

(assert (= (and d!63253 res!128744) b!263594))

(assert (= (and b!263594 res!128741) b!263595))

(assert (= (and b!263595 res!128742) b!263593))

(assert (= (and b!263595 c!44981) b!263603))

(assert (= (and b!263595 (not c!44981)) b!263599))

(assert (= (and b!263603 res!128743) b!263598))

(assert (= (and b!263599 c!44982) b!263592))

(assert (= (and b!263599 (not c!44982)) b!263597))

(declare-fun b_lambda!8375 () Bool)

(assert (=> (not b_lambda!8375) (not b!263598)))

(assert (=> b!263598 t!8961))

(declare-fun b_and!13969 () Bool)

(assert (= b_and!13967 (and (=> t!8961 result!5441) b_and!13969)))

(declare-fun b_lambda!8377 () Bool)

(assert (=> (not b_lambda!8377) (not b!263601)))

(assert (=> b!263601 t!8961))

(declare-fun b_and!13971 () Bool)

(assert (= b_and!13969 (and (=> t!8961 result!5441) b_and!13971)))

(declare-fun m!279907 () Bool)

(assert (=> bm!25231 m!279907))

(assert (=> b!263593 m!279233))

(assert (=> b!263593 m!279233))

(assert (=> b!263593 m!279235))

(assert (=> b!263592 m!279907))

(declare-fun m!279909 () Bool)

(assert (=> b!263601 m!279909))

(assert (=> b!263601 m!279229))

(declare-fun m!279911 () Bool)

(assert (=> b!263601 m!279911))

(assert (=> b!263601 m!279233))

(assert (=> b!263601 m!279355))

(declare-fun m!279913 () Bool)

(assert (=> b!263601 m!279913))

(declare-fun m!279915 () Bool)

(assert (=> b!263601 m!279915))

(assert (=> b!263601 m!279913))

(assert (=> b!263601 m!279355))

(assert (=> b!263601 m!279229))

(assert (=> b!263601 m!279357))

(declare-fun m!279917 () Bool)

(assert (=> b!263597 m!279917))

(assert (=> b!263603 m!279233))

(assert (=> b!263603 m!279233))

(declare-fun m!279919 () Bool)

(assert (=> b!263603 m!279919))

(declare-fun m!279921 () Bool)

(assert (=> b!263594 m!279921))

(assert (=> b!263596 m!279233))

(assert (=> b!263596 m!279233))

(assert (=> b!263596 m!279235))

(declare-fun m!279923 () Bool)

(assert (=> d!63253 m!279923))

(assert (=> d!63253 m!279117))

(assert (=> b!263598 m!279229))

(assert (=> b!263598 m!279233))

(assert (=> b!263598 m!279355))

(assert (=> b!263598 m!279233))

(declare-fun m!279925 () Bool)

(assert (=> b!263598 m!279925))

(assert (=> b!263598 m!279355))

(assert (=> b!263598 m!279229))

(assert (=> b!263598 m!279357))

(assert (=> b!263193 d!63253))

(declare-fun d!63255 () Bool)

(declare-fun e!170816 () Bool)

(assert (=> d!63255 e!170816))

(declare-fun res!128745 () Bool)

(assert (=> d!63255 (=> (not res!128745) (not e!170816))))

(declare-fun lt!133490 () ListLongMap!3901)

(assert (=> d!63255 (= res!128745 (contains!1911 lt!133490 (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))

(declare-fun lt!133491 () List!3872)

(assert (=> d!63255 (= lt!133490 (ListLongMap!3902 lt!133491))))

(declare-fun lt!133489 () Unit!8187)

(declare-fun lt!133488 () Unit!8187)

(assert (=> d!63255 (= lt!133489 lt!133488)))

(assert (=> d!63255 (= (getValueByKey!319 lt!133491 (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63255 (= lt!133488 (lemmaContainsTupThenGetReturnValue!177 lt!133491 (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63255 (= lt!133491 (insertStrictlySorted!179 (toList!1966 lt!133270) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63255 (= (+!705 lt!133270 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))) lt!133490)))

(declare-fun b!263604 () Bool)

(declare-fun res!128746 () Bool)

(assert (=> b!263604 (=> (not res!128746) (not e!170816))))

(assert (=> b!263604 (= res!128746 (= (getValueByKey!319 (toList!1966 lt!133490) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))))))

(declare-fun b!263605 () Bool)

(assert (=> b!263605 (= e!170816 (contains!1913 (toList!1966 lt!133490) (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))))

(assert (= (and d!63255 res!128745) b!263604))

(assert (= (and b!263604 res!128746) b!263605))

(declare-fun m!279927 () Bool)

(assert (=> d!63255 m!279927))

(declare-fun m!279929 () Bool)

(assert (=> d!63255 m!279929))

(declare-fun m!279931 () Bool)

(assert (=> d!63255 m!279931))

(declare-fun m!279933 () Bool)

(assert (=> d!63255 m!279933))

(declare-fun m!279935 () Bool)

(assert (=> b!263604 m!279935))

(declare-fun m!279937 () Bool)

(assert (=> b!263605 m!279937))

(assert (=> b!263193 d!63255))

(declare-fun d!63257 () Bool)

(declare-fun e!170817 () Bool)

(assert (=> d!63257 e!170817))

(declare-fun res!128747 () Bool)

(assert (=> d!63257 (=> (not res!128747) (not e!170817))))

(declare-fun lt!133494 () ListLongMap!3901)

(assert (=> d!63257 (= res!128747 (contains!1911 lt!133494 (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))

(declare-fun lt!133495 () List!3872)

(assert (=> d!63257 (= lt!133494 (ListLongMap!3902 lt!133495))))

(declare-fun lt!133493 () Unit!8187)

(declare-fun lt!133492 () Unit!8187)

(assert (=> d!63257 (= lt!133493 lt!133492)))

(assert (=> d!63257 (= (getValueByKey!319 lt!133495 (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))

(assert (=> d!63257 (= lt!133492 (lemmaContainsTupThenGetReturnValue!177 lt!133495 (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))

(assert (=> d!63257 (= lt!133495 (insertStrictlySorted!179 (toList!1966 lt!133276) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))

(assert (=> d!63257 (= (+!705 lt!133276 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))) lt!133494)))

(declare-fun b!263606 () Bool)

(declare-fun res!128748 () Bool)

(assert (=> b!263606 (=> (not res!128748) (not e!170817))))

(assert (=> b!263606 (= res!128748 (= (getValueByKey!319 (toList!1966 lt!133494) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))))))

(declare-fun b!263607 () Bool)

(assert (=> b!263607 (= e!170817 (contains!1913 (toList!1966 lt!133494) (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))))

(assert (= (and d!63257 res!128747) b!263606))

(assert (= (and b!263606 res!128748) b!263607))

(declare-fun m!279939 () Bool)

(assert (=> d!63257 m!279939))

(declare-fun m!279941 () Bool)

(assert (=> d!63257 m!279941))

(declare-fun m!279943 () Bool)

(assert (=> d!63257 m!279943))

(declare-fun m!279945 () Bool)

(assert (=> d!63257 m!279945))

(declare-fun m!279947 () Bool)

(assert (=> b!263606 m!279947))

(declare-fun m!279949 () Bool)

(assert (=> b!263607 m!279949))

(assert (=> b!263193 d!63257))

(declare-fun d!63259 () Bool)

(declare-fun e!170818 () Bool)

(assert (=> d!63259 e!170818))

(declare-fun res!128749 () Bool)

(assert (=> d!63259 (=> res!128749 e!170818)))

(declare-fun lt!133497 () Bool)

(assert (=> d!63259 (= res!128749 (not lt!133497))))

(declare-fun lt!133496 () Bool)

(assert (=> d!63259 (= lt!133497 lt!133496)))

(declare-fun lt!133498 () Unit!8187)

(declare-fun e!170819 () Unit!8187)

(assert (=> d!63259 (= lt!133498 e!170819)))

(declare-fun c!44984 () Bool)

(assert (=> d!63259 (= c!44984 lt!133496)))

(assert (=> d!63259 (= lt!133496 (containsKey!311 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) lt!133277))))

(assert (=> d!63259 (= (contains!1911 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))) lt!133277) lt!133497)))

(declare-fun b!263608 () Bool)

(declare-fun lt!133499 () Unit!8187)

(assert (=> b!263608 (= e!170819 lt!133499)))

(assert (=> b!263608 (= lt!133499 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) lt!133277))))

(assert (=> b!263608 (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) lt!133277))))

(declare-fun b!263609 () Bool)

(declare-fun Unit!8211 () Unit!8187)

(assert (=> b!263609 (= e!170819 Unit!8211)))

(declare-fun b!263610 () Bool)

(assert (=> b!263610 (= e!170818 (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) lt!133277)))))

(assert (= (and d!63259 c!44984) b!263608))

(assert (= (and d!63259 (not c!44984)) b!263609))

(assert (= (and d!63259 (not res!128749)) b!263610))

(declare-fun m!279951 () Bool)

(assert (=> d!63259 m!279951))

(declare-fun m!279953 () Bool)

(assert (=> b!263608 m!279953))

(declare-fun m!279955 () Bool)

(assert (=> b!263608 m!279955))

(assert (=> b!263608 m!279955))

(declare-fun m!279957 () Bool)

(assert (=> b!263608 m!279957))

(assert (=> b!263610 m!279955))

(assert (=> b!263610 m!279955))

(assert (=> b!263610 m!279957))

(assert (=> b!263193 d!63259))

(declare-fun d!63261 () Bool)

(assert (=> d!63261 (= (apply!262 lt!133270 lt!133275) (get!3095 (getValueByKey!319 (toList!1966 lt!133270) lt!133275)))))

(declare-fun bs!9274 () Bool)

(assert (= bs!9274 d!63261))

(declare-fun m!279959 () Bool)

(assert (=> bs!9274 m!279959))

(assert (=> bs!9274 m!279959))

(declare-fun m!279961 () Bool)

(assert (=> bs!9274 m!279961))

(assert (=> b!263193 d!63261))

(declare-fun d!63263 () Bool)

(assert (=> d!63263 (= (apply!262 (+!705 lt!133270 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))) lt!133275) (apply!262 lt!133270 lt!133275))))

(declare-fun lt!133500 () Unit!8187)

(assert (=> d!63263 (= lt!133500 (choose!1303 lt!133270 lt!133271 (zeroValue!4684 thiss!1504) lt!133275))))

(declare-fun e!170820 () Bool)

(assert (=> d!63263 e!170820))

(declare-fun res!128750 () Bool)

(assert (=> d!63263 (=> (not res!128750) (not e!170820))))

(assert (=> d!63263 (= res!128750 (contains!1911 lt!133270 lt!133275))))

(assert (=> d!63263 (= (addApplyDifferent!238 lt!133270 lt!133271 (zeroValue!4684 thiss!1504) lt!133275) lt!133500)))

(declare-fun b!263611 () Bool)

(assert (=> b!263611 (= e!170820 (not (= lt!133275 lt!133271)))))

(assert (= (and d!63263 res!128750) b!263611))

(assert (=> d!63263 m!279349))

(assert (=> d!63263 m!279329))

(assert (=> d!63263 m!279329))

(assert (=> d!63263 m!279333))

(declare-fun m!279963 () Bool)

(assert (=> d!63263 m!279963))

(declare-fun m!279965 () Bool)

(assert (=> d!63263 m!279965))

(assert (=> b!263193 d!63263))

(declare-fun d!63265 () Bool)

(assert (=> d!63265 (= (apply!262 (+!705 lt!133276 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))) lt!133267) (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133276 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))) lt!133267)))))

(declare-fun bs!9275 () Bool)

(assert (= bs!9275 d!63265))

(declare-fun m!279967 () Bool)

(assert (=> bs!9275 m!279967))

(assert (=> bs!9275 m!279967))

(declare-fun m!279969 () Bool)

(assert (=> bs!9275 m!279969))

(assert (=> b!263193 d!63265))

(declare-fun d!63267 () Bool)

(assert (=> d!63267 (= (apply!262 lt!133280 lt!133263) (get!3095 (getValueByKey!319 (toList!1966 lt!133280) lt!133263)))))

(declare-fun bs!9276 () Bool)

(assert (= bs!9276 d!63267))

(declare-fun m!279971 () Bool)

(assert (=> bs!9276 m!279971))

(assert (=> bs!9276 m!279971))

(declare-fun m!279973 () Bool)

(assert (=> bs!9276 m!279973))

(assert (=> b!263193 d!63267))

(declare-fun d!63269 () Bool)

(declare-fun e!170821 () Bool)

(assert (=> d!63269 e!170821))

(declare-fun res!128751 () Bool)

(assert (=> d!63269 (=> (not res!128751) (not e!170821))))

(declare-fun lt!133503 () ListLongMap!3901)

(assert (=> d!63269 (= res!128751 (contains!1911 lt!133503 (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))

(declare-fun lt!133504 () List!3872)

(assert (=> d!63269 (= lt!133503 (ListLongMap!3902 lt!133504))))

(declare-fun lt!133502 () Unit!8187)

(declare-fun lt!133501 () Unit!8187)

(assert (=> d!63269 (= lt!133502 lt!133501)))

(assert (=> d!63269 (= (getValueByKey!319 lt!133504 (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))

(assert (=> d!63269 (= lt!133501 (lemmaContainsTupThenGetReturnValue!177 lt!133504 (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))

(assert (=> d!63269 (= lt!133504 (insertStrictlySorted!179 (toList!1966 lt!133280) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))

(assert (=> d!63269 (= (+!705 lt!133280 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))) lt!133503)))

(declare-fun b!263612 () Bool)

(declare-fun res!128752 () Bool)

(assert (=> b!263612 (=> (not res!128752) (not e!170821))))

(assert (=> b!263612 (= res!128752 (= (getValueByKey!319 (toList!1966 lt!133503) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))))))

(declare-fun b!263613 () Bool)

(assert (=> b!263613 (= e!170821 (contains!1913 (toList!1966 lt!133503) (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))))

(assert (= (and d!63269 res!128751) b!263612))

(assert (= (and b!263612 res!128752) b!263613))

(declare-fun m!279975 () Bool)

(assert (=> d!63269 m!279975))

(declare-fun m!279977 () Bool)

(assert (=> d!63269 m!279977))

(declare-fun m!279979 () Bool)

(assert (=> d!63269 m!279979))

(declare-fun m!279981 () Bool)

(assert (=> d!63269 m!279981))

(declare-fun m!279983 () Bool)

(assert (=> b!263612 m!279983))

(declare-fun m!279985 () Bool)

(assert (=> b!263613 m!279985))

(assert (=> b!263193 d!63269))

(declare-fun d!63271 () Bool)

(assert (=> d!63271 (= (apply!262 (+!705 lt!133280 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))) lt!133263) (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133280 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))) lt!133263)))))

(declare-fun bs!9277 () Bool)

(assert (= bs!9277 d!63271))

(declare-fun m!279987 () Bool)

(assert (=> bs!9277 m!279987))

(assert (=> bs!9277 m!279987))

(declare-fun m!279989 () Bool)

(assert (=> bs!9277 m!279989))

(assert (=> b!263193 d!63271))

(declare-fun d!63273 () Bool)

(assert (=> d!63273 (contains!1911 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))) lt!133277)))

(declare-fun lt!133505 () Unit!8187)

(assert (=> d!63273 (= lt!133505 (choose!1304 lt!133284 lt!133264 (zeroValue!4684 thiss!1504) lt!133277))))

(assert (=> d!63273 (contains!1911 lt!133284 lt!133277)))

(assert (=> d!63273 (= (addStillContains!238 lt!133284 lt!133264 (zeroValue!4684 thiss!1504) lt!133277) lt!133505)))

(declare-fun bs!9278 () Bool)

(assert (= bs!9278 d!63273))

(assert (=> bs!9278 m!279325))

(assert (=> bs!9278 m!279325))

(assert (=> bs!9278 m!279327))

(declare-fun m!279991 () Bool)

(assert (=> bs!9278 m!279991))

(declare-fun m!279993 () Bool)

(assert (=> bs!9278 m!279993))

(assert (=> b!263193 d!63273))

(declare-fun d!63275 () Bool)

(assert (=> d!63275 (= (apply!262 (+!705 lt!133270 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))) lt!133275) (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133270 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))) lt!133275)))))

(declare-fun bs!9279 () Bool)

(assert (= bs!9279 d!63275))

(declare-fun m!279995 () Bool)

(assert (=> bs!9279 m!279995))

(assert (=> bs!9279 m!279995))

(declare-fun m!279997 () Bool)

(assert (=> bs!9279 m!279997))

(assert (=> b!263193 d!63275))

(declare-fun d!63277 () Bool)

(assert (=> d!63277 (contains!1911 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) (select (arr!5998 lt!133048) index!297))))

(assert (=> d!63277 true))

(declare-fun _$16!169 () Unit!8187)

(assert (=> d!63277 (= (choose!1299 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) index!297 (defaultEntry!4843 thiss!1504)) _$16!169)))

(declare-fun bs!9280 () Bool)

(assert (= bs!9280 d!63277))

(assert (=> bs!9280 m!279007))

(assert (=> bs!9280 m!279285))

(assert (=> bs!9280 m!279007))

(assert (=> bs!9280 m!279285))

(assert (=> bs!9280 m!279299))

(assert (=> d!63041 d!63277))

(assert (=> d!63041 d!63097))

(declare-fun d!63279 () Bool)

(assert (=> d!63279 (= (apply!262 lt!133223 #b0000000000000000000000000000000000000000000000000000000000000000) (get!3095 (getValueByKey!319 (toList!1966 lt!133223) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9281 () Bool)

(assert (= bs!9281 d!63279))

(assert (=> bs!9281 m!279601))

(assert (=> bs!9281 m!279601))

(declare-fun m!279999 () Bool)

(assert (=> bs!9281 m!279999))

(assert (=> b!263073 d!63279))

(declare-fun d!63281 () Bool)

(declare-fun e!170822 () Bool)

(assert (=> d!63281 e!170822))

(declare-fun res!128753 () Bool)

(assert (=> d!63281 (=> res!128753 e!170822)))

(declare-fun lt!133507 () Bool)

(assert (=> d!63281 (= res!128753 (not lt!133507))))

(declare-fun lt!133506 () Bool)

(assert (=> d!63281 (= lt!133507 lt!133506)))

(declare-fun lt!133508 () Unit!8187)

(declare-fun e!170823 () Unit!8187)

(assert (=> d!63281 (= lt!133508 e!170823)))

(declare-fun c!44985 () Bool)

(assert (=> d!63281 (= c!44985 lt!133506)))

(assert (=> d!63281 (= lt!133506 (containsKey!311 (toList!1966 lt!133149) (_1!2497 lt!133042)))))

(assert (=> d!63281 (= (contains!1911 lt!133149 (_1!2497 lt!133042)) lt!133507)))

(declare-fun b!263614 () Bool)

(declare-fun lt!133509 () Unit!8187)

(assert (=> b!263614 (= e!170823 lt!133509)))

(assert (=> b!263614 (= lt!133509 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133149) (_1!2497 lt!133042)))))

(assert (=> b!263614 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133149) (_1!2497 lt!133042)))))

(declare-fun b!263615 () Bool)

(declare-fun Unit!8212 () Unit!8187)

(assert (=> b!263615 (= e!170823 Unit!8212)))

(declare-fun b!263616 () Bool)

(assert (=> b!263616 (= e!170822 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133149) (_1!2497 lt!133042))))))

(assert (= (and d!63281 c!44985) b!263614))

(assert (= (and d!63281 (not c!44985)) b!263615))

(assert (= (and d!63281 (not res!128753)) b!263616))

(declare-fun m!280001 () Bool)

(assert (=> d!63281 m!280001))

(declare-fun m!280003 () Bool)

(assert (=> b!263614 m!280003))

(assert (=> b!263614 m!279151))

(assert (=> b!263614 m!279151))

(declare-fun m!280005 () Bool)

(assert (=> b!263614 m!280005))

(assert (=> b!263616 m!279151))

(assert (=> b!263616 m!279151))

(assert (=> b!263616 m!280005))

(assert (=> d!63003 d!63281))

(declare-fun b!263619 () Bool)

(declare-fun e!170825 () Option!325)

(assert (=> b!263619 (= e!170825 (getValueByKey!319 (t!8957 lt!133150) (_1!2497 lt!133042)))))

(declare-fun b!263617 () Bool)

(declare-fun e!170824 () Option!325)

(assert (=> b!263617 (= e!170824 (Some!324 (_2!2497 (h!4534 lt!133150))))))

(declare-fun d!63283 () Bool)

(declare-fun c!44986 () Bool)

(assert (=> d!63283 (= c!44986 (and ((_ is Cons!3868) lt!133150) (= (_1!2497 (h!4534 lt!133150)) (_1!2497 lt!133042))))))

(assert (=> d!63283 (= (getValueByKey!319 lt!133150 (_1!2497 lt!133042)) e!170824)))

(declare-fun b!263620 () Bool)

(assert (=> b!263620 (= e!170825 None!323)))

(declare-fun b!263618 () Bool)

(assert (=> b!263618 (= e!170824 e!170825)))

(declare-fun c!44987 () Bool)

(assert (=> b!263618 (= c!44987 (and ((_ is Cons!3868) lt!133150) (not (= (_1!2497 (h!4534 lt!133150)) (_1!2497 lt!133042)))))))

(assert (= (and d!63283 c!44986) b!263617))

(assert (= (and d!63283 (not c!44986)) b!263618))

(assert (= (and b!263618 c!44987) b!263619))

(assert (= (and b!263618 (not c!44987)) b!263620))

(declare-fun m!280007 () Bool)

(assert (=> b!263619 m!280007))

(assert (=> d!63003 d!63283))

(declare-fun d!63285 () Bool)

(assert (=> d!63285 (= (getValueByKey!319 lt!133150 (_1!2497 lt!133042)) (Some!324 (_2!2497 lt!133042)))))

(declare-fun lt!133510 () Unit!8187)

(assert (=> d!63285 (= lt!133510 (choose!1302 lt!133150 (_1!2497 lt!133042) (_2!2497 lt!133042)))))

(declare-fun e!170826 () Bool)

(assert (=> d!63285 e!170826))

(declare-fun res!128754 () Bool)

(assert (=> d!63285 (=> (not res!128754) (not e!170826))))

(assert (=> d!63285 (= res!128754 (isStrictlySorted!372 lt!133150))))

(assert (=> d!63285 (= (lemmaContainsTupThenGetReturnValue!177 lt!133150 (_1!2497 lt!133042) (_2!2497 lt!133042)) lt!133510)))

(declare-fun b!263621 () Bool)

(declare-fun res!128755 () Bool)

(assert (=> b!263621 (=> (not res!128755) (not e!170826))))

(assert (=> b!263621 (= res!128755 (containsKey!311 lt!133150 (_1!2497 lt!133042)))))

(declare-fun b!263622 () Bool)

(assert (=> b!263622 (= e!170826 (contains!1913 lt!133150 (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(assert (= (and d!63285 res!128754) b!263621))

(assert (= (and b!263621 res!128755) b!263622))

(assert (=> d!63285 m!279145))

(declare-fun m!280009 () Bool)

(assert (=> d!63285 m!280009))

(declare-fun m!280011 () Bool)

(assert (=> d!63285 m!280011))

(declare-fun m!280013 () Bool)

(assert (=> b!263621 m!280013))

(declare-fun m!280015 () Bool)

(assert (=> b!263622 m!280015))

(assert (=> d!63003 d!63285))

(declare-fun bm!25232 () Bool)

(declare-fun call!25237 () List!3872)

(declare-fun call!25236 () List!3872)

(assert (=> bm!25232 (= call!25237 call!25236)))

(declare-fun bm!25233 () Bool)

(declare-fun call!25235 () List!3872)

(assert (=> bm!25233 (= call!25235 call!25237)))

(declare-fun b!263623 () Bool)

(declare-fun res!128756 () Bool)

(declare-fun e!170831 () Bool)

(assert (=> b!263623 (=> (not res!128756) (not e!170831))))

(declare-fun lt!133511 () List!3872)

(assert (=> b!263623 (= res!128756 (containsKey!311 lt!133511 (_1!2497 lt!133042)))))

(declare-fun b!263624 () Bool)

(declare-fun c!44988 () Bool)

(assert (=> b!263624 (= c!44988 (and ((_ is Cons!3868) (toList!1966 (map!2757 thiss!1504))) (bvsgt (_1!2497 (h!4534 (toList!1966 (map!2757 thiss!1504)))) (_1!2497 lt!133042))))))

(declare-fun e!170830 () List!3872)

(declare-fun e!170827 () List!3872)

(assert (=> b!263624 (= e!170830 e!170827)))

(declare-fun b!263625 () Bool)

(declare-fun e!170829 () List!3872)

(assert (=> b!263625 (= e!170829 e!170830)))

(declare-fun c!44991 () Bool)

(assert (=> b!263625 (= c!44991 (and ((_ is Cons!3868) (toList!1966 (map!2757 thiss!1504))) (= (_1!2497 (h!4534 (toList!1966 (map!2757 thiss!1504)))) (_1!2497 lt!133042))))))

(declare-fun b!263626 () Bool)

(assert (=> b!263626 (= e!170831 (contains!1913 lt!133511 (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(declare-fun b!263627 () Bool)

(assert (=> b!263627 (= e!170829 call!25236)))

(declare-fun b!263628 () Bool)

(assert (=> b!263628 (= e!170830 call!25237)))

(declare-fun b!263629 () Bool)

(declare-fun e!170828 () List!3872)

(assert (=> b!263629 (= e!170828 (insertStrictlySorted!179 (t!8957 (toList!1966 (map!2757 thiss!1504))) (_1!2497 lt!133042) (_2!2497 lt!133042)))))

(declare-fun b!263630 () Bool)

(assert (=> b!263630 (= e!170827 call!25235)))

(declare-fun c!44990 () Bool)

(declare-fun bm!25234 () Bool)

(assert (=> bm!25234 (= call!25236 ($colon$colon!107 e!170828 (ite c!44990 (h!4534 (toList!1966 (map!2757 thiss!1504))) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042)))))))

(declare-fun c!44989 () Bool)

(assert (=> bm!25234 (= c!44989 c!44990)))

(declare-fun d!63287 () Bool)

(assert (=> d!63287 e!170831))

(declare-fun res!128757 () Bool)

(assert (=> d!63287 (=> (not res!128757) (not e!170831))))

(assert (=> d!63287 (= res!128757 (isStrictlySorted!372 lt!133511))))

(assert (=> d!63287 (= lt!133511 e!170829)))

(assert (=> d!63287 (= c!44990 (and ((_ is Cons!3868) (toList!1966 (map!2757 thiss!1504))) (bvslt (_1!2497 (h!4534 (toList!1966 (map!2757 thiss!1504)))) (_1!2497 lt!133042))))))

(assert (=> d!63287 (isStrictlySorted!372 (toList!1966 (map!2757 thiss!1504)))))

(assert (=> d!63287 (= (insertStrictlySorted!179 (toList!1966 (map!2757 thiss!1504)) (_1!2497 lt!133042) (_2!2497 lt!133042)) lt!133511)))

(declare-fun b!263631 () Bool)

(assert (=> b!263631 (= e!170827 call!25235)))

(declare-fun b!263632 () Bool)

(assert (=> b!263632 (= e!170828 (ite c!44991 (t!8957 (toList!1966 (map!2757 thiss!1504))) (ite c!44988 (Cons!3868 (h!4534 (toList!1966 (map!2757 thiss!1504))) (t!8957 (toList!1966 (map!2757 thiss!1504)))) Nil!3869)))))

(assert (= (and d!63287 c!44990) b!263627))

(assert (= (and d!63287 (not c!44990)) b!263625))

(assert (= (and b!263625 c!44991) b!263628))

(assert (= (and b!263625 (not c!44991)) b!263624))

(assert (= (and b!263624 c!44988) b!263631))

(assert (= (and b!263624 (not c!44988)) b!263630))

(assert (= (or b!263631 b!263630) bm!25233))

(assert (= (or b!263628 bm!25233) bm!25232))

(assert (= (or b!263627 bm!25232) bm!25234))

(assert (= (and bm!25234 c!44989) b!263629))

(assert (= (and bm!25234 (not c!44989)) b!263632))

(assert (= (and d!63287 res!128757) b!263623))

(assert (= (and b!263623 res!128756) b!263626))

(declare-fun m!280017 () Bool)

(assert (=> bm!25234 m!280017))

(declare-fun m!280019 () Bool)

(assert (=> b!263629 m!280019))

(declare-fun m!280021 () Bool)

(assert (=> b!263626 m!280021))

(declare-fun m!280023 () Bool)

(assert (=> b!263623 m!280023))

(declare-fun m!280025 () Bool)

(assert (=> d!63287 m!280025))

(declare-fun m!280027 () Bool)

(assert (=> d!63287 m!280027))

(assert (=> d!63003 d!63287))

(assert (=> b!263173 d!63193))

(assert (=> d!63049 d!63029))

(declare-fun d!63289 () Bool)

(assert (=> d!63289 (arrayContainsKey!0 lt!133048 key!932 #b00000000000000000000000000000000)))

(assert (=> d!63289 true))

(declare-fun _$60!390 () Unit!8187)

(assert (=> d!63289 (= (choose!13 lt!133048 key!932 index!297) _$60!390)))

(declare-fun bs!9282 () Bool)

(assert (= bs!9282 d!63289))

(assert (=> bs!9282 m!279009))

(assert (=> d!63049 d!63289))

(declare-fun b!263633 () Bool)

(declare-fun e!170832 () (_ BitVec 32))

(assert (=> b!263633 (= e!170832 #b00000000000000000000000000000000)))

(declare-fun b!263635 () Bool)

(declare-fun e!170833 () (_ BitVec 32))

(assert (=> b!263635 (= e!170832 e!170833)))

(declare-fun c!44993 () Bool)

(assert (=> b!263635 (= c!44993 (validKeyInArray!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!263636 () Bool)

(declare-fun call!25238 () (_ BitVec 32))

(assert (=> b!263636 (= e!170833 call!25238)))

(declare-fun bm!25235 () Bool)

(assert (=> bm!25235 (= call!25238 (arrayCountValidKeys!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun lt!133512 () (_ BitVec 32))

(declare-fun d!63291 () Bool)

(assert (=> d!63291 (and (bvsge lt!133512 #b00000000000000000000000000000000) (bvsle lt!133512 (bvsub (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (=> d!63291 (= lt!133512 e!170832)))

(declare-fun c!44992 () Bool)

(assert (=> d!63291 (= c!44992 (bvsge #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63291 (and (bvsle #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6349 (_keys!7035 thiss!1504)) (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(assert (=> d!63291 (= (arrayCountValidKeys!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))) lt!133512)))

(declare-fun b!263634 () Bool)

(assert (=> b!263634 (= e!170833 (bvadd #b00000000000000000000000000000001 call!25238))))

(assert (= (and d!63291 c!44992) b!263633))

(assert (= (and d!63291 (not c!44992)) b!263635))

(assert (= (and b!263635 c!44993) b!263634))

(assert (= (and b!263635 (not c!44993)) b!263636))

(assert (= (or b!263634 b!263636) bm!25235))

(assert (=> b!263635 m!279625))

(assert (=> b!263635 m!279625))

(assert (=> b!263635 m!279627))

(declare-fun m!280029 () Bool)

(assert (=> bm!25235 m!280029))

(assert (=> b!263115 d!63291))

(assert (=> b!263115 d!63025))

(declare-fun b!263638 () Bool)

(declare-fun e!170834 () Bool)

(declare-fun call!25239 () Bool)

(assert (=> b!263638 (= e!170834 call!25239)))

(declare-fun b!263639 () Bool)

(declare-fun e!170835 () Bool)

(assert (=> b!263639 (= e!170834 e!170835)))

(declare-fun lt!133513 () (_ BitVec 64))

(assert (=> b!263639 (= lt!133513 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000))))

(declare-fun lt!133514 () Unit!8187)

(assert (=> b!263639 (= lt!133514 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!7035 lt!133037) lt!133513 #b00000000000000000000000000000000))))

(assert (=> b!263639 (arrayContainsKey!0 (_keys!7035 lt!133037) lt!133513 #b00000000000000000000000000000000)))

(declare-fun lt!133515 () Unit!8187)

(assert (=> b!263639 (= lt!133515 lt!133514)))

(declare-fun res!128759 () Bool)

(assert (=> b!263639 (= res!128759 (= (seekEntryOrOpen!0 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000) (_keys!7035 lt!133037) (mask!11209 lt!133037)) (Found!1210 #b00000000000000000000000000000000)))))

(assert (=> b!263639 (=> (not res!128759) (not e!170835))))

(declare-fun b!263640 () Bool)

(assert (=> b!263640 (= e!170835 call!25239)))

(declare-fun bm!25236 () Bool)

(assert (=> bm!25236 (= call!25239 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!7035 lt!133037) (mask!11209 lt!133037)))))

(declare-fun b!263637 () Bool)

(declare-fun e!170836 () Bool)

(assert (=> b!263637 (= e!170836 e!170834)))

(declare-fun c!44994 () Bool)

(assert (=> b!263637 (= c!44994 (validKeyInArray!0 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(declare-fun d!63293 () Bool)

(declare-fun res!128758 () Bool)

(assert (=> d!63293 (=> res!128758 e!170836)))

(assert (=> d!63293 (= res!128758 (bvsge #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))))))

(assert (=> d!63293 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!7035 lt!133037) (mask!11209 lt!133037)) e!170836)))

(assert (= (and d!63293 (not res!128758)) b!263637))

(assert (= (and b!263637 c!44994) b!263639))

(assert (= (and b!263637 (not c!44994)) b!263638))

(assert (= (and b!263639 res!128759) b!263640))

(assert (= (or b!263640 b!263638) bm!25236))

(assert (=> b!263639 m!279569))

(declare-fun m!280031 () Bool)

(assert (=> b!263639 m!280031))

(declare-fun m!280033 () Bool)

(assert (=> b!263639 m!280033))

(assert (=> b!263639 m!279569))

(declare-fun m!280035 () Bool)

(assert (=> b!263639 m!280035))

(declare-fun m!280037 () Bool)

(assert (=> bm!25236 m!280037))

(assert (=> b!263637 m!279569))

(assert (=> b!263637 m!279569))

(assert (=> b!263637 m!279571))

(assert (=> b!263163 d!63293))

(declare-fun b!263642 () Bool)

(declare-fun e!170837 () Bool)

(declare-fun call!25240 () Bool)

(assert (=> b!263642 (= e!170837 call!25240)))

(declare-fun b!263643 () Bool)

(declare-fun e!170838 () Bool)

(assert (=> b!263643 (= e!170837 e!170838)))

(declare-fun lt!133516 () (_ BitVec 64))

(assert (=> b!263643 (= lt!133516 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!133517 () Unit!8187)

(assert (=> b!263643 (= lt!133517 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) lt!133516 #b00000000000000000000000000000000))))

(assert (=> b!263643 (arrayContainsKey!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) lt!133516 #b00000000000000000000000000000000)))

(declare-fun lt!133518 () Unit!8187)

(assert (=> b!263643 (= lt!133518 lt!133517)))

(declare-fun res!128761 () Bool)

(assert (=> b!263643 (= res!128761 (= (seekEntryOrOpen!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000) (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (mask!11209 thiss!1504)) (Found!1210 #b00000000000000000000000000000000)))))

(assert (=> b!263643 (=> (not res!128761) (not e!170838))))

(declare-fun b!263644 () Bool)

(assert (=> b!263644 (= e!170838 call!25240)))

(declare-fun bm!25237 () Bool)

(assert (=> bm!25237 (= call!25240 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (mask!11209 thiss!1504)))))

(declare-fun b!263641 () Bool)

(declare-fun e!170839 () Bool)

(assert (=> b!263641 (= e!170839 e!170837)))

(declare-fun c!44995 () Bool)

(assert (=> b!263641 (= c!44995 (validKeyInArray!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun d!63295 () Bool)

(declare-fun res!128760 () Bool)

(assert (=> d!63295 (=> res!128760 e!170839)))

(assert (=> d!63295 (= res!128760 (bvsge #b00000000000000000000000000000000 (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(assert (=> d!63295 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (mask!11209 thiss!1504)) e!170839)))

(assert (= (and d!63295 (not res!128760)) b!263641))

(assert (= (and b!263641 c!44995) b!263643))

(assert (= (and b!263641 (not c!44995)) b!263642))

(assert (= (and b!263643 res!128761) b!263644))

(assert (= (or b!263644 b!263642) bm!25237))

(assert (=> b!263643 m!279625))

(declare-fun m!280039 () Bool)

(assert (=> b!263643 m!280039))

(declare-fun m!280041 () Bool)

(assert (=> b!263643 m!280041))

(assert (=> b!263643 m!279625))

(declare-fun m!280043 () Bool)

(assert (=> b!263643 m!280043))

(declare-fun m!280045 () Bool)

(assert (=> bm!25237 m!280045))

(assert (=> b!263641 m!279625))

(assert (=> b!263641 m!279625))

(assert (=> b!263641 m!279627))

(assert (=> b!263179 d!63295))

(declare-fun d!63297 () Bool)

(declare-fun e!170844 () Bool)

(assert (=> d!63297 e!170844))

(declare-fun res!128770 () Bool)

(assert (=> d!63297 (=> (not res!128770) (not e!170844))))

(assert (=> d!63297 (= res!128770 (or (bvsge #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))))))))

(declare-fun lt!133534 () ListLongMap!3901)

(declare-fun lt!133525 () ListLongMap!3901)

(assert (=> d!63297 (= lt!133534 lt!133525)))

(declare-fun lt!133528 () Unit!8187)

(declare-fun e!170840 () Unit!8187)

(assert (=> d!63297 (= lt!133528 e!170840)))

(declare-fun c!44996 () Bool)

(declare-fun e!170847 () Bool)

(assert (=> d!63297 (= c!44996 e!170847)))

(declare-fun res!128765 () Bool)

(assert (=> d!63297 (=> (not res!128765) (not e!170847))))

(assert (=> d!63297 (= res!128765 (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))))))

(declare-fun e!170842 () ListLongMap!3901)

(assert (=> d!63297 (= lt!133525 e!170842)))

(declare-fun c!45000 () Bool)

(assert (=> d!63297 (= c!45000 (and (not (= (bvand (extraKeys!4580 lt!133037) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4580 lt!133037) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!63297 (validMask!0 (mask!11209 lt!133037))))

(assert (=> d!63297 (= (getCurrentListMap!1489 (_keys!7035 lt!133037) (_values!4826 lt!133037) (mask!11209 lt!133037) (extraKeys!4580 lt!133037) (zeroValue!4684 lt!133037) (minValue!4684 lt!133037) #b00000000000000000000000000000000 (defaultEntry!4843 lt!133037)) lt!133534)))

(declare-fun b!263645 () Bool)

(declare-fun Unit!8213 () Unit!8187)

(assert (=> b!263645 (= e!170840 Unit!8213)))

(declare-fun b!263646 () Bool)

(declare-fun e!170849 () Bool)

(assert (=> b!263646 (= e!170849 (= (apply!262 lt!133534 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)) (get!3094 (select (arr!5997 (_values!4826 lt!133037)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 lt!133037) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!263646 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6348 (_values!4826 lt!133037))))))

(assert (=> b!263646 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))))))

(declare-fun b!263647 () Bool)

(declare-fun e!170850 () Bool)

(declare-fun call!25245 () Bool)

(assert (=> b!263647 (= e!170850 (not call!25245))))

(declare-fun b!263648 () Bool)

(assert (=> b!263648 (= e!170844 e!170850)))

(declare-fun c!44999 () Bool)

(assert (=> b!263648 (= c!44999 (not (= (bvand (extraKeys!4580 lt!133037) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!263649 () Bool)

(declare-fun e!170852 () Bool)

(assert (=> b!263649 (= e!170852 (= (apply!262 lt!133534 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4684 lt!133037)))))

(declare-fun bm!25238 () Bool)

(declare-fun call!25243 () ListLongMap!3901)

(assert (=> bm!25238 (= call!25243 (getCurrentListMapNoExtraKeys!581 (_keys!7035 lt!133037) (_values!4826 lt!133037) (mask!11209 lt!133037) (extraKeys!4580 lt!133037) (zeroValue!4684 lt!133037) (minValue!4684 lt!133037) #b00000000000000000000000000000000 (defaultEntry!4843 lt!133037)))))

(declare-fun b!263650 () Bool)

(declare-fun res!128762 () Bool)

(assert (=> b!263650 (=> (not res!128762) (not e!170844))))

(declare-fun e!170841 () Bool)

(assert (=> b!263650 (= res!128762 e!170841)))

(declare-fun c!44998 () Bool)

(assert (=> b!263650 (= c!44998 (not (= (bvand (extraKeys!4580 lt!133037) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!263651 () Bool)

(declare-fun res!128764 () Bool)

(assert (=> b!263651 (=> (not res!128764) (not e!170844))))

(declare-fun e!170846 () Bool)

(assert (=> b!263651 (= res!128764 e!170846)))

(declare-fun res!128763 () Bool)

(assert (=> b!263651 (=> res!128763 e!170846)))

(declare-fun e!170848 () Bool)

(assert (=> b!263651 (= res!128763 (not e!170848))))

(declare-fun res!128766 () Bool)

(assert (=> b!263651 (=> (not res!128766) (not e!170848))))

(assert (=> b!263651 (= res!128766 (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))))))

(declare-fun bm!25239 () Bool)

(assert (=> bm!25239 (= call!25245 (contains!1911 lt!133534 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263652 () Bool)

(declare-fun lt!133539 () Unit!8187)

(assert (=> b!263652 (= e!170840 lt!133539)))

(declare-fun lt!133540 () ListLongMap!3901)

(assert (=> b!263652 (= lt!133540 (getCurrentListMapNoExtraKeys!581 (_keys!7035 lt!133037) (_values!4826 lt!133037) (mask!11209 lt!133037) (extraKeys!4580 lt!133037) (zeroValue!4684 lt!133037) (minValue!4684 lt!133037) #b00000000000000000000000000000000 (defaultEntry!4843 lt!133037)))))

(declare-fun lt!133520 () (_ BitVec 64))

(assert (=> b!263652 (= lt!133520 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133533 () (_ BitVec 64))

(assert (=> b!263652 (= lt!133533 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000))))

(declare-fun lt!133530 () Unit!8187)

(assert (=> b!263652 (= lt!133530 (addStillContains!238 lt!133540 lt!133520 (zeroValue!4684 lt!133037) lt!133533))))

(assert (=> b!263652 (contains!1911 (+!705 lt!133540 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037))) lt!133533)))

(declare-fun lt!133522 () Unit!8187)

(assert (=> b!263652 (= lt!133522 lt!133530)))

(declare-fun lt!133536 () ListLongMap!3901)

(assert (=> b!263652 (= lt!133536 (getCurrentListMapNoExtraKeys!581 (_keys!7035 lt!133037) (_values!4826 lt!133037) (mask!11209 lt!133037) (extraKeys!4580 lt!133037) (zeroValue!4684 lt!133037) (minValue!4684 lt!133037) #b00000000000000000000000000000000 (defaultEntry!4843 lt!133037)))))

(declare-fun lt!133535 () (_ BitVec 64))

(assert (=> b!263652 (= lt!133535 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133519 () (_ BitVec 64))

(assert (=> b!263652 (= lt!133519 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000))))

(declare-fun lt!133538 () Unit!8187)

(assert (=> b!263652 (= lt!133538 (addApplyDifferent!238 lt!133536 lt!133535 (minValue!4684 lt!133037) lt!133519))))

(assert (=> b!263652 (= (apply!262 (+!705 lt!133536 (tuple2!4975 lt!133535 (minValue!4684 lt!133037))) lt!133519) (apply!262 lt!133536 lt!133519))))

(declare-fun lt!133524 () Unit!8187)

(assert (=> b!263652 (= lt!133524 lt!133538)))

(declare-fun lt!133526 () ListLongMap!3901)

(assert (=> b!263652 (= lt!133526 (getCurrentListMapNoExtraKeys!581 (_keys!7035 lt!133037) (_values!4826 lt!133037) (mask!11209 lt!133037) (extraKeys!4580 lt!133037) (zeroValue!4684 lt!133037) (minValue!4684 lt!133037) #b00000000000000000000000000000000 (defaultEntry!4843 lt!133037)))))

(declare-fun lt!133527 () (_ BitVec 64))

(assert (=> b!263652 (= lt!133527 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133531 () (_ BitVec 64))

(assert (=> b!263652 (= lt!133531 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000))))

(declare-fun lt!133537 () Unit!8187)

(assert (=> b!263652 (= lt!133537 (addApplyDifferent!238 lt!133526 lt!133527 (zeroValue!4684 lt!133037) lt!133531))))

(assert (=> b!263652 (= (apply!262 (+!705 lt!133526 (tuple2!4975 lt!133527 (zeroValue!4684 lt!133037))) lt!133531) (apply!262 lt!133526 lt!133531))))

(declare-fun lt!133529 () Unit!8187)

(assert (=> b!263652 (= lt!133529 lt!133537)))

(declare-fun lt!133532 () ListLongMap!3901)

(assert (=> b!263652 (= lt!133532 (getCurrentListMapNoExtraKeys!581 (_keys!7035 lt!133037) (_values!4826 lt!133037) (mask!11209 lt!133037) (extraKeys!4580 lt!133037) (zeroValue!4684 lt!133037) (minValue!4684 lt!133037) #b00000000000000000000000000000000 (defaultEntry!4843 lt!133037)))))

(declare-fun lt!133521 () (_ BitVec 64))

(assert (=> b!263652 (= lt!133521 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!133523 () (_ BitVec 64))

(assert (=> b!263652 (= lt!133523 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000))))

(assert (=> b!263652 (= lt!133539 (addApplyDifferent!238 lt!133532 lt!133521 (minValue!4684 lt!133037) lt!133523))))

(assert (=> b!263652 (= (apply!262 (+!705 lt!133532 (tuple2!4975 lt!133521 (minValue!4684 lt!133037))) lt!133523) (apply!262 lt!133532 lt!133523))))

(declare-fun bm!25240 () Bool)

(declare-fun call!25242 () ListLongMap!3901)

(declare-fun call!25241 () ListLongMap!3901)

(assert (=> bm!25240 (= call!25242 call!25241)))

(declare-fun b!263653 () Bool)

(declare-fun e!170843 () ListLongMap!3901)

(declare-fun call!25246 () ListLongMap!3901)

(assert (=> b!263653 (= e!170843 call!25246)))

(declare-fun b!263654 () Bool)

(declare-fun call!25247 () ListLongMap!3901)

(assert (=> b!263654 (= e!170842 (+!705 call!25247 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037))))))

(declare-fun bm!25241 () Bool)

(assert (=> bm!25241 (= call!25241 call!25243)))

(declare-fun b!263655 () Bool)

(declare-fun e!170845 () Bool)

(assert (=> b!263655 (= e!170845 (= (apply!262 lt!133534 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4684 lt!133037)))))

(declare-fun bm!25242 () Bool)

(declare-fun c!44997 () Bool)

(assert (=> bm!25242 (= call!25247 (+!705 (ite c!45000 call!25243 (ite c!44997 call!25241 call!25242)) (ite (or c!45000 c!44997) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 lt!133037)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037)))))))

(declare-fun b!263656 () Bool)

(declare-fun c!45001 () Bool)

(assert (=> b!263656 (= c!45001 (and (not (= (bvand (extraKeys!4580 lt!133037) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4580 lt!133037) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!170851 () ListLongMap!3901)

(assert (=> b!263656 (= e!170843 e!170851)))

(declare-fun b!263657 () Bool)

(assert (=> b!263657 (= e!170841 e!170852)))

(declare-fun res!128767 () Bool)

(declare-fun call!25244 () Bool)

(assert (=> b!263657 (= res!128767 call!25244)))

(assert (=> b!263657 (=> (not res!128767) (not e!170852))))

(declare-fun b!263658 () Bool)

(assert (=> b!263658 (= e!170851 call!25246)))

(declare-fun b!263659 () Bool)

(assert (=> b!263659 (= e!170846 e!170849)))

(declare-fun res!128768 () Bool)

(assert (=> b!263659 (=> (not res!128768) (not e!170849))))

(assert (=> b!263659 (= res!128768 (contains!1911 lt!133534 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(assert (=> b!263659 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))))))

(declare-fun bm!25243 () Bool)

(assert (=> bm!25243 (= call!25244 (contains!1911 lt!133534 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263660 () Bool)

(assert (=> b!263660 (= e!170842 e!170843)))

(assert (=> b!263660 (= c!44997 (and (not (= (bvand (extraKeys!4580 lt!133037) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4580 lt!133037) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!263661 () Bool)

(assert (=> b!263661 (= e!170848 (validKeyInArray!0 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(declare-fun b!263662 () Bool)

(assert (=> b!263662 (= e!170841 (not call!25244))))

(declare-fun b!263663 () Bool)

(assert (=> b!263663 (= e!170851 call!25242)))

(declare-fun b!263664 () Bool)

(assert (=> b!263664 (= e!170850 e!170845)))

(declare-fun res!128769 () Bool)

(assert (=> b!263664 (= res!128769 call!25245)))

(assert (=> b!263664 (=> (not res!128769) (not e!170845))))

(declare-fun b!263665 () Bool)

(assert (=> b!263665 (= e!170847 (validKeyInArray!0 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(declare-fun bm!25244 () Bool)

(assert (=> bm!25244 (= call!25246 call!25247)))

(assert (= (and d!63297 c!45000) b!263654))

(assert (= (and d!63297 (not c!45000)) b!263660))

(assert (= (and b!263660 c!44997) b!263653))

(assert (= (and b!263660 (not c!44997)) b!263656))

(assert (= (and b!263656 c!45001) b!263658))

(assert (= (and b!263656 (not c!45001)) b!263663))

(assert (= (or b!263658 b!263663) bm!25240))

(assert (= (or b!263653 bm!25240) bm!25241))

(assert (= (or b!263653 b!263658) bm!25244))

(assert (= (or b!263654 bm!25241) bm!25238))

(assert (= (or b!263654 bm!25244) bm!25242))

(assert (= (and d!63297 res!128765) b!263665))

(assert (= (and d!63297 c!44996) b!263652))

(assert (= (and d!63297 (not c!44996)) b!263645))

(assert (= (and d!63297 res!128770) b!263651))

(assert (= (and b!263651 res!128766) b!263661))

(assert (= (and b!263651 (not res!128763)) b!263659))

(assert (= (and b!263659 res!128768) b!263646))

(assert (= (and b!263651 res!128764) b!263650))

(assert (= (and b!263650 c!44998) b!263657))

(assert (= (and b!263650 (not c!44998)) b!263662))

(assert (= (and b!263657 res!128767) b!263649))

(assert (= (or b!263657 b!263662) bm!25243))

(assert (= (and b!263650 res!128762) b!263648))

(assert (= (and b!263648 c!44999) b!263664))

(assert (= (and b!263648 (not c!44999)) b!263647))

(assert (= (and b!263664 res!128769) b!263655))

(assert (= (or b!263664 b!263647) bm!25239))

(declare-fun b_lambda!8379 () Bool)

(assert (=> (not b_lambda!8379) (not b!263646)))

(declare-fun t!8963 () Bool)

(declare-fun tb!3047 () Bool)

(assert (=> (and b!262890 (= (defaultEntry!4843 thiss!1504) (defaultEntry!4843 lt!133037)) t!8963) tb!3047))

(declare-fun result!5447 () Bool)

(assert (=> tb!3047 (= result!5447 tp_is_empty!6657)))

(assert (=> b!263646 t!8963))

(declare-fun b_and!13973 () Bool)

(assert (= b_and!13971 (and (=> t!8963 result!5447) b_and!13973)))

(declare-fun m!280047 () Bool)

(assert (=> bm!25242 m!280047))

(assert (=> b!263661 m!279569))

(assert (=> b!263661 m!279569))

(assert (=> b!263661 m!279571))

(assert (=> b!263665 m!279569))

(assert (=> b!263665 m!279569))

(assert (=> b!263665 m!279571))

(declare-fun m!280049 () Bool)

(assert (=> bm!25243 m!280049))

(declare-fun m!280051 () Bool)

(assert (=> bm!25238 m!280051))

(declare-fun m!280053 () Bool)

(assert (=> b!263649 m!280053))

(assert (=> d!63297 m!279735))

(declare-fun m!280055 () Bool)

(assert (=> bm!25239 m!280055))

(assert (=> b!263659 m!279569))

(assert (=> b!263659 m!279569))

(declare-fun m!280057 () Bool)

(assert (=> b!263659 m!280057))

(declare-fun m!280059 () Bool)

(assert (=> b!263654 m!280059))

(declare-fun m!280061 () Bool)

(assert (=> b!263652 m!280061))

(declare-fun m!280063 () Bool)

(assert (=> b!263652 m!280063))

(declare-fun m!280065 () Bool)

(assert (=> b!263652 m!280065))

(declare-fun m!280067 () Bool)

(assert (=> b!263652 m!280067))

(declare-fun m!280069 () Bool)

(assert (=> b!263652 m!280069))

(assert (=> b!263652 m!280065))

(assert (=> b!263652 m!279569))

(declare-fun m!280071 () Bool)

(assert (=> b!263652 m!280071))

(assert (=> b!263652 m!280069))

(declare-fun m!280073 () Bool)

(assert (=> b!263652 m!280073))

(declare-fun m!280075 () Bool)

(assert (=> b!263652 m!280075))

(assert (=> b!263652 m!280061))

(declare-fun m!280077 () Bool)

(assert (=> b!263652 m!280077))

(assert (=> b!263652 m!280051))

(declare-fun m!280079 () Bool)

(assert (=> b!263652 m!280079))

(declare-fun m!280081 () Bool)

(assert (=> b!263652 m!280081))

(declare-fun m!280083 () Bool)

(assert (=> b!263652 m!280083))

(assert (=> b!263652 m!280081))

(declare-fun m!280085 () Bool)

(assert (=> b!263652 m!280085))

(declare-fun m!280087 () Bool)

(assert (=> b!263652 m!280087))

(declare-fun m!280089 () Bool)

(assert (=> b!263652 m!280089))

(declare-fun m!280091 () Bool)

(assert (=> b!263655 m!280091))

(assert (=> b!263646 m!279569))

(declare-fun m!280093 () Bool)

(assert (=> b!263646 m!280093))

(declare-fun m!280095 () Bool)

(assert (=> b!263646 m!280095))

(declare-fun m!280097 () Bool)

(assert (=> b!263646 m!280097))

(declare-fun m!280099 () Bool)

(assert (=> b!263646 m!280099))

(assert (=> b!263646 m!280097))

(assert (=> b!263646 m!280095))

(assert (=> b!263646 m!279569))

(assert (=> d!63001 d!63297))

(declare-fun d!63299 () Bool)

(declare-fun e!170853 () Bool)

(assert (=> d!63299 e!170853))

(declare-fun res!128771 () Bool)

(assert (=> d!63299 (=> res!128771 e!170853)))

(declare-fun lt!133542 () Bool)

(assert (=> d!63299 (= res!128771 (not lt!133542))))

(declare-fun lt!133541 () Bool)

(assert (=> d!63299 (= lt!133542 lt!133541)))

(declare-fun lt!133543 () Unit!8187)

(declare-fun e!170854 () Unit!8187)

(assert (=> d!63299 (= lt!133543 e!170854)))

(declare-fun c!45002 () Bool)

(assert (=> d!63299 (= c!45002 lt!133541)))

(assert (=> d!63299 (= lt!133541 (containsKey!311 (toList!1966 lt!133223) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!63299 (= (contains!1911 lt!133223 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)) lt!133542)))

(declare-fun b!263666 () Bool)

(declare-fun lt!133544 () Unit!8187)

(assert (=> b!263666 (= e!170854 lt!133544)))

(assert (=> b!263666 (= lt!133544 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133223) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!263666 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133223) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!263667 () Bool)

(declare-fun Unit!8214 () Unit!8187)

(assert (=> b!263667 (= e!170854 Unit!8214)))

(declare-fun b!263668 () Bool)

(assert (=> b!263668 (= e!170853 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133223) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!63299 c!45002) b!263666))

(assert (= (and d!63299 (not c!45002)) b!263667))

(assert (= (and d!63299 (not res!128771)) b!263668))

(assert (=> d!63299 m!279177))

(declare-fun m!280101 () Bool)

(assert (=> d!63299 m!280101))

(assert (=> b!263666 m!279177))

(declare-fun m!280103 () Bool)

(assert (=> b!263666 m!280103))

(assert (=> b!263666 m!279177))

(assert (=> b!263666 m!279511))

(assert (=> b!263666 m!279511))

(declare-fun m!280105 () Bool)

(assert (=> b!263666 m!280105))

(assert (=> b!263668 m!279177))

(assert (=> b!263668 m!279511))

(assert (=> b!263668 m!279511))

(assert (=> b!263668 m!280105))

(assert (=> b!263083 d!63299))

(assert (=> b!263206 d!63105))

(assert (=> bm!25188 d!63253))

(assert (=> d!63045 d!63097))

(declare-fun d!63301 () Bool)

(assert (=> d!63301 (= (arrayCountValidKeys!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!7035 thiss!1504) #b00000000000000000000000000000000 (size!6349 (_keys!7035 thiss!1504))) #b00000000000000000000000000000001))))

(assert (=> d!63301 true))

(declare-fun _$84!48 () Unit!8187)

(assert (=> d!63301 (= (choose!1 (_keys!7035 thiss!1504) index!297 key!932) _$84!48)))

(declare-fun bs!9283 () Bool)

(assert (= bs!9283 d!63301))

(assert (=> bs!9283 m!278995))

(assert (=> bs!9283 m!279243))

(assert (=> bs!9283 m!278997))

(assert (=> d!63019 d!63301))

(declare-fun condMapEmpty!11357 () Bool)

(declare-fun mapDefault!11357 () ValueCell!2985)

(assert (=> mapNonEmpty!11356 (= condMapEmpty!11357 (= mapRest!11356 ((as const (Array (_ BitVec 32) ValueCell!2985)) mapDefault!11357)))))

(declare-fun e!170855 () Bool)

(declare-fun mapRes!11357 () Bool)

(assert (=> mapNonEmpty!11356 (= tp!23731 (and e!170855 mapRes!11357))))

(declare-fun b!263670 () Bool)

(assert (=> b!263670 (= e!170855 tp_is_empty!6657)))

(declare-fun mapIsEmpty!11357 () Bool)

(assert (=> mapIsEmpty!11357 mapRes!11357))

(declare-fun mapNonEmpty!11357 () Bool)

(declare-fun tp!23732 () Bool)

(declare-fun e!170856 () Bool)

(assert (=> mapNonEmpty!11357 (= mapRes!11357 (and tp!23732 e!170856))))

(declare-fun mapKey!11357 () (_ BitVec 32))

(declare-fun mapRest!11357 () (Array (_ BitVec 32) ValueCell!2985))

(declare-fun mapValue!11357 () ValueCell!2985)

(assert (=> mapNonEmpty!11357 (= mapRest!11356 (store mapRest!11357 mapKey!11357 mapValue!11357))))

(declare-fun b!263669 () Bool)

(assert (=> b!263669 (= e!170856 tp_is_empty!6657)))

(assert (= (and mapNonEmpty!11356 condMapEmpty!11357) mapIsEmpty!11357))

(assert (= (and mapNonEmpty!11356 (not condMapEmpty!11357)) mapNonEmpty!11357))

(assert (= (and mapNonEmpty!11357 ((_ is ValueCellFull!2985) mapValue!11357)) b!263669))

(assert (= (and mapNonEmpty!11356 ((_ is ValueCellFull!2985) mapDefault!11357)) b!263670))

(declare-fun m!280107 () Bool)

(assert (=> mapNonEmpty!11357 m!280107))

(declare-fun b_lambda!8381 () Bool)

(assert (= b_lambda!8373 (or (and b!262890 b_free!6795) b_lambda!8381)))

(declare-fun b_lambda!8383 () Bool)

(assert (= b_lambda!8377 (or (and b!262890 b_free!6795) b_lambda!8383)))

(declare-fun b_lambda!8385 () Bool)

(assert (= b_lambda!8375 (or (and b!262890 b_free!6795) b_lambda!8385)))

(declare-fun b_lambda!8387 () Bool)

(assert (= b_lambda!8371 (or (and b!262890 b_free!6795) b_lambda!8387)))

(declare-fun b_lambda!8389 () Bool)

(assert (= b_lambda!8369 (or (and b!262890 b_free!6795) b_lambda!8389)))

(check-sat (not b!263257) (not bm!25208) (not d!63137) (not b!263601) (not d!63269) (not d!63107) (not d!63175) (not d!63075) (not b!263311) (not b!263610) (not d!63073) (not d!63213) (not b!263649) (not b!263478) (not d!63299) (not bm!25230) (not b!263324) (not d!63059) (not b!263481) (not b!263260) (not b!263591) (not b!263612) (not b!263643) (not b!263596) (not b!263229) (not b_lambda!8385) (not b!263515) (not b!263530) (not d!63151) (not b!263411) (not b!263281) (not b!263284) (not d!63187) (not d!63229) (not b!263487) (not b!263604) (not b!263241) (not d!63115) (not b_lambda!8379) (not d!63095) (not bm!25242) (not d!63219) (not d!63267) (not b!263598) (not b!263388) (not b!263608) (not d!63285) (not b!263424) (not bm!25207) (not b!263540) (not b!263546) (not b!263389) (not b!263283) (not b!263326) (not d!63255) (not b!263613) (not d!63217) (not b!263635) (not b!263328) (not d!63259) (not b!263534) (not bm!25231) (not b!263659) (not b_next!6795) (not b!263422) (not b!263512) (not b!263258) (not b!263279) (not b!263637) (not b!263519) (not bm!25226) (not b!263536) (not b!263564) (not b!263392) (not bm!25214) (not b!263394) (not b!263285) (not b!263619) (not bm!25229) (not d!63221) (not b!263531) (not b!263355) (not d!63135) (not b!263385) (not b_lambda!8387) (not b!263471) (not b!263224) (not b!263433) (not b!263622) (not b!263641) (not b!263488) (not b!263275) (not d!63261) (not b!263535) (not bm!25237) (not d!63201) (not b!263225) (not d!63183) (not bm!25204) (not b!263313) (not b!263668) (not bm!25238) (not b!263569) (not d!63093) (not b!263655) (not d!63085) (not d!63159) (not b!263646) (not b!263652) (not b!263430) (not b!263579) (not b!263614) (not b!263250) (not d!63113) (not d!63211) (not d!63247) (not b!263558) (not bm!25217) (not b!263400) (not d!63079) (not d!63245) tp_is_empty!6657 (not b!263582) (not d!63149) (not d!63203) (not b!263666) (not bm!25202) (not b_lambda!8367) (not bm!25228) (not b_lambda!8383) (not b!263264) (not d!63225) (not d!63281) (not b!263581) (not d!63061) b_and!13973 (not d!63207) (not d!63189) (not d!63083) (not b!263586) (not d!63141) (not b!263413) (not b!263541) (not b!263442) (not b!263573) (not d!63119) (not b!263234) (not d!63067) (not b!263568) (not b!263331) (not d!63277) (not b!263556) (not d!63279) (not b!263566) (not d!63209) (not b!263387) (not b!263533) (not bm!25195) (not b!263593) (not b!263227) (not b!263544) (not d!63227) (not d!63145) (not b_lambda!8381) (not d!63197) (not b!263248) (not d!63123) (not b!263384) (not d!63103) (not b!263402) (not d!63091) (not b!263577) (not bm!25227) (not d!63273) (not b!263629) (not b!263616) (not bm!25211) (not b!263474) (not bm!25210) (not b!263606) (not b!263417) (not b!263661) (not d!63173) (not bm!25197) (not d!63289) (not b!263415) (not b!263425) (not b!263592) (not b!263404) (not b!263538) (not d!63231) (not d!63133) (not b!263603) (not bm!25243) (not b_lambda!8389) (not b!263590) (not d!63205) (not b!263572) (not b_lambda!8365) (not d!63263) (not d!63233) (not b!263315) (not b!263310) (not b!263449) (not b!263607) (not b!263605) (not b!263576) (not b!263665) (not b!263329) (not d!63117) (not b!263639) (not b!263623) (not d!63169) (not bm!25215) (not bm!25239) (not bm!25203) (not d!63253) (not b!263397) (not b!263247) (not b!263406) (not b!263403) (not d!63157) (not b!263654) (not d!63177) (not d!63287) (not d!63101) (not d!63271) (not b!263626) (not d!63275) (not bm!25234) (not d!63301) (not b!263317) (not bm!25235) (not bm!25209) (not d!63297) (not b!263435) (not d!63063) (not d!63223) (not b!263570) (not b!263323) (not d!63251) (not b!263555) (not b!263427) (not b!263476) (not d!63235) (not b!263469) (not b!263463) (not bm!25196) (not b!263594) (not b!263621) (not d!63257) (not d!63249) (not b!263408) (not d!63265) (not b!263509) (not b!263383) (not d!63215) (not d!63153) (not d!63167) (not b!263446) (not b!263553) (not b!263571) (not b!263436) (not b!263597) (not b!263223) (not mapNonEmpty!11357) (not b!263520) (not bm!25236) (not b!263549) (not b!263440) (not d!63163) (not d!63239) (not b!263322))
(check-sat b_and!13973 (not b_next!6795))
(get-model)

(declare-fun d!63303 () Bool)

(declare-fun lt!133545 () SeekEntryResult!1210)

(assert (=> d!63303 (and (or ((_ is Undefined!1210) lt!133545) (not ((_ is Found!1210) lt!133545)) (and (bvsge (index!7011 lt!133545) #b00000000000000000000000000000000) (bvslt (index!7011 lt!133545) (size!6349 lt!133048)))) (or ((_ is Undefined!1210) lt!133545) ((_ is Found!1210) lt!133545) (not ((_ is MissingVacant!1210) lt!133545)) (not (= (index!7013 lt!133545) (index!7012 lt!133305))) (and (bvsge (index!7013 lt!133545) #b00000000000000000000000000000000) (bvslt (index!7013 lt!133545) (size!6349 lt!133048)))) (or ((_ is Undefined!1210) lt!133545) (ite ((_ is Found!1210) lt!133545) (= (select (arr!5998 lt!133048) (index!7011 lt!133545)) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)) (and ((_ is MissingVacant!1210) lt!133545) (= (index!7013 lt!133545) (index!7012 lt!133305)) (= (select (arr!5998 lt!133048) (index!7013 lt!133545)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!170859 () SeekEntryResult!1210)

(assert (=> d!63303 (= lt!133545 e!170859)))

(declare-fun c!45003 () Bool)

(assert (=> d!63303 (= c!45003 (bvsge (x!25252 lt!133305) #b01111111111111111111111111111110))))

(declare-fun lt!133546 () (_ BitVec 64))

(assert (=> d!63303 (= lt!133546 (select (arr!5998 lt!133048) (index!7012 lt!133305)))))

(assert (=> d!63303 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63303 (= (seekKeyOrZeroReturnVacant!0 (x!25252 lt!133305) (index!7012 lt!133305) (index!7012 lt!133305) (select (arr!5998 lt!133048) #b00000000000000000000000000000000) lt!133048 (mask!11209 thiss!1504)) lt!133545)))

(declare-fun b!263671 () Bool)

(declare-fun e!170858 () SeekEntryResult!1210)

(assert (=> b!263671 (= e!170858 (seekKeyOrZeroReturnVacant!0 (bvadd (x!25252 lt!133305) #b00000000000000000000000000000001) (nextIndex!0 (index!7012 lt!133305) (x!25252 lt!133305) (mask!11209 thiss!1504)) (index!7012 lt!133305) (select (arr!5998 lt!133048) #b00000000000000000000000000000000) lt!133048 (mask!11209 thiss!1504)))))

(declare-fun b!263672 () Bool)

(assert (=> b!263672 (= e!170858 (MissingVacant!1210 (index!7012 lt!133305)))))

(declare-fun b!263673 () Bool)

(declare-fun c!45005 () Bool)

(assert (=> b!263673 (= c!45005 (= lt!133546 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!170857 () SeekEntryResult!1210)

(assert (=> b!263673 (= e!170857 e!170858)))

(declare-fun b!263674 () Bool)

(assert (=> b!263674 (= e!170859 e!170857)))

(declare-fun c!45004 () Bool)

(assert (=> b!263674 (= c!45004 (= lt!133546 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun b!263675 () Bool)

(assert (=> b!263675 (= e!170857 (Found!1210 (index!7012 lt!133305)))))

(declare-fun b!263676 () Bool)

(assert (=> b!263676 (= e!170859 Undefined!1210)))

(assert (= (and d!63303 c!45003) b!263676))

(assert (= (and d!63303 (not c!45003)) b!263674))

(assert (= (and b!263674 c!45004) b!263675))

(assert (= (and b!263674 (not c!45004)) b!263673))

(assert (= (and b!263673 c!45005) b!263672))

(assert (= (and b!263673 (not c!45005)) b!263671))

(declare-fun m!280109 () Bool)

(assert (=> d!63303 m!280109))

(declare-fun m!280111 () Bool)

(assert (=> d!63303 m!280111))

(assert (=> d!63303 m!279409))

(assert (=> d!63303 m!279117))

(declare-fun m!280113 () Bool)

(assert (=> b!263671 m!280113))

(assert (=> b!263671 m!280113))

(assert (=> b!263671 m!279233))

(declare-fun m!280115 () Bool)

(assert (=> b!263671 m!280115))

(assert (=> b!263234 d!63303))

(declare-fun d!63305 () Bool)

(assert (=> d!63305 (= (validKeyInArray!0 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!263449 d!63305))

(declare-fun d!63307 () Bool)

(assert (=> d!63307 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133278) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun lt!133547 () Unit!8187)

(assert (=> d!63307 (= lt!133547 (choose!1301 (toList!1966 lt!133278) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun e!170860 () Bool)

(assert (=> d!63307 e!170860))

(declare-fun res!128772 () Bool)

(assert (=> d!63307 (=> (not res!128772) (not e!170860))))

(assert (=> d!63307 (= res!128772 (isStrictlySorted!372 (toList!1966 lt!133278)))))

(assert (=> d!63307 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133278) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)) lt!133547)))

(declare-fun b!263677 () Bool)

(assert (=> b!263677 (= e!170860 (containsKey!311 (toList!1966 lt!133278) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(assert (= (and d!63307 res!128772) b!263677))

(assert (=> d!63307 m!279233))

(assert (=> d!63307 m!279401))

(assert (=> d!63307 m!279401))

(assert (=> d!63307 m!279403))

(assert (=> d!63307 m!279233))

(declare-fun m!280117 () Bool)

(assert (=> d!63307 m!280117))

(declare-fun m!280119 () Bool)

(assert (=> d!63307 m!280119))

(assert (=> b!263677 m!279233))

(assert (=> b!263677 m!279397))

(assert (=> b!263225 d!63307))

(declare-fun d!63309 () Bool)

(assert (=> d!63309 (= (isDefined!261 (getValueByKey!319 (toList!1966 lt!133278) (select (arr!5998 lt!133048) #b00000000000000000000000000000000))) (not (isEmpty!545 (getValueByKey!319 (toList!1966 lt!133278) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))))

(declare-fun bs!9284 () Bool)

(assert (= bs!9284 d!63309))

(assert (=> bs!9284 m!279401))

(declare-fun m!280121 () Bool)

(assert (=> bs!9284 m!280121))

(assert (=> b!263225 d!63309))

(declare-fun b!263680 () Bool)

(declare-fun e!170862 () Option!325)

(assert (=> b!263680 (= e!170862 (getValueByKey!319 (t!8957 (toList!1966 lt!133278)) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun b!263678 () Bool)

(declare-fun e!170861 () Option!325)

(assert (=> b!263678 (= e!170861 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133278)))))))

(declare-fun d!63311 () Bool)

(declare-fun c!45006 () Bool)

(assert (=> d!63311 (= c!45006 (and ((_ is Cons!3868) (toList!1966 lt!133278)) (= (_1!2497 (h!4534 (toList!1966 lt!133278))) (select (arr!5998 lt!133048) #b00000000000000000000000000000000))))))

(assert (=> d!63311 (= (getValueByKey!319 (toList!1966 lt!133278) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)) e!170861)))

(declare-fun b!263681 () Bool)

(assert (=> b!263681 (= e!170862 None!323)))

(declare-fun b!263679 () Bool)

(assert (=> b!263679 (= e!170861 e!170862)))

(declare-fun c!45007 () Bool)

(assert (=> b!263679 (= c!45007 (and ((_ is Cons!3868) (toList!1966 lt!133278)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133278))) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))))

(assert (= (and d!63311 c!45006) b!263678))

(assert (= (and d!63311 (not c!45006)) b!263679))

(assert (= (and b!263679 c!45007) b!263680))

(assert (= (and b!263679 (not c!45007)) b!263681))

(assert (=> b!263680 m!279233))

(declare-fun m!280123 () Bool)

(assert (=> b!263680 m!280123))

(assert (=> b!263225 d!63311))

(declare-fun b!263682 () Bool)

(declare-fun e!170863 () (_ BitVec 32))

(assert (=> b!263682 (= e!170863 #b00000000000000000000000000000000)))

(declare-fun b!263684 () Bool)

(declare-fun e!170864 () (_ BitVec 32))

(assert (=> b!263684 (= e!170863 e!170864)))

(declare-fun c!45009 () Bool)

(assert (=> b!263684 (= c!45009 (validKeyInArray!0 (select (arr!5998 lt!133048) (bvadd index!297 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!263685 () Bool)

(declare-fun call!25248 () (_ BitVec 32))

(assert (=> b!263685 (= e!170864 call!25248)))

(declare-fun bm!25245 () Bool)

(assert (=> bm!25245 (= call!25248 (arrayCountValidKeys!0 lt!133048 (bvadd index!297 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(declare-fun d!63313 () Bool)

(declare-fun lt!133548 () (_ BitVec 32))

(assert (=> d!63313 (and (bvsge lt!133548 #b00000000000000000000000000000000) (bvsle lt!133548 (bvsub (size!6349 lt!133048) (bvadd index!297 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> d!63313 (= lt!133548 e!170863)))

(declare-fun c!45008 () Bool)

(assert (=> d!63313 (= c!45008 (bvsge (bvadd index!297 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!63313 (and (bvsle (bvadd index!297 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)) (bvsge (bvadd index!297 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6349 lt!133048)))))

(assert (=> d!63313 (= (arrayCountValidKeys!0 lt!133048 (bvadd index!297 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)) lt!133548)))

(declare-fun b!263683 () Bool)

(assert (=> b!263683 (= e!170864 (bvadd #b00000000000000000000000000000001 call!25248))))

(assert (= (and d!63313 c!45008) b!263682))

(assert (= (and d!63313 (not c!45008)) b!263684))

(assert (= (and b!263684 c!45009) b!263683))

(assert (= (and b!263684 (not c!45009)) b!263685))

(assert (= (or b!263683 b!263685) bm!25245))

(declare-fun m!280125 () Bool)

(assert (=> b!263684 m!280125))

(assert (=> b!263684 m!280125))

(declare-fun m!280127 () Bool)

(assert (=> b!263684 m!280127))

(declare-fun m!280129 () Bool)

(assert (=> bm!25245 m!280129))

(assert (=> bm!25197 d!63313))

(declare-fun d!63315 () Bool)

(declare-fun e!170865 () Bool)

(assert (=> d!63315 e!170865))

(declare-fun res!128773 () Bool)

(assert (=> d!63315 (=> res!128773 e!170865)))

(declare-fun lt!133550 () Bool)

(assert (=> d!63315 (= res!128773 (not lt!133550))))

(declare-fun lt!133549 () Bool)

(assert (=> d!63315 (= lt!133550 lt!133549)))

(declare-fun lt!133551 () Unit!8187)

(declare-fun e!170866 () Unit!8187)

(assert (=> d!63315 (= lt!133551 e!170866)))

(declare-fun c!45010 () Bool)

(assert (=> d!63315 (= c!45010 lt!133549)))

(assert (=> d!63315 (= lt!133549 (containsKey!311 (toList!1966 lt!133442) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (=> d!63315 (= (contains!1911 lt!133442 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) lt!133550)))

(declare-fun b!263686 () Bool)

(declare-fun lt!133552 () Unit!8187)

(assert (=> b!263686 (= e!170866 lt!133552)))

(assert (=> b!263686 (= lt!133552 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133442) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (=> b!263686 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133442) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!263687 () Bool)

(declare-fun Unit!8215 () Unit!8187)

(assert (=> b!263687 (= e!170866 Unit!8215)))

(declare-fun b!263688 () Bool)

(assert (=> b!263688 (= e!170865 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133442) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (= (and d!63315 c!45010) b!263686))

(assert (= (and d!63315 (not c!45010)) b!263687))

(assert (= (and d!63315 (not res!128773)) b!263688))

(declare-fun m!280131 () Bool)

(assert (=> d!63315 m!280131))

(declare-fun m!280133 () Bool)

(assert (=> b!263686 m!280133))

(assert (=> b!263686 m!279757))

(assert (=> b!263686 m!279757))

(declare-fun m!280135 () Bool)

(assert (=> b!263686 m!280135))

(assert (=> b!263688 m!279757))

(assert (=> b!263688 m!279757))

(assert (=> b!263688 m!280135))

(assert (=> d!63183 d!63315))

(declare-fun b!263691 () Bool)

(declare-fun e!170868 () Option!325)

(assert (=> b!263691 (= e!170868 (getValueByKey!319 (t!8957 lt!133443) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!263689 () Bool)

(declare-fun e!170867 () Option!325)

(assert (=> b!263689 (= e!170867 (Some!324 (_2!2497 (h!4534 lt!133443))))))

(declare-fun d!63317 () Bool)

(declare-fun c!45011 () Bool)

(assert (=> d!63317 (= c!45011 (and ((_ is Cons!3868) lt!133443) (= (_1!2497 (h!4534 lt!133443)) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63317 (= (getValueByKey!319 lt!133443 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) e!170867)))

(declare-fun b!263692 () Bool)

(assert (=> b!263692 (= e!170868 None!323)))

(declare-fun b!263690 () Bool)

(assert (=> b!263690 (= e!170867 e!170868)))

(declare-fun c!45012 () Bool)

(assert (=> b!263690 (= c!45012 (and ((_ is Cons!3868) lt!133443) (not (= (_1!2497 (h!4534 lt!133443)) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63317 c!45011) b!263689))

(assert (= (and d!63317 (not c!45011)) b!263690))

(assert (= (and b!263690 c!45012) b!263691))

(assert (= (and b!263690 (not c!45012)) b!263692))

(declare-fun m!280137 () Bool)

(assert (=> b!263691 m!280137))

(assert (=> d!63183 d!63317))

(declare-fun d!63319 () Bool)

(assert (=> d!63319 (= (getValueByKey!319 lt!133443 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun lt!133553 () Unit!8187)

(assert (=> d!63319 (= lt!133553 (choose!1302 lt!133443 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun e!170869 () Bool)

(assert (=> d!63319 e!170869))

(declare-fun res!128774 () Bool)

(assert (=> d!63319 (=> (not res!128774) (not e!170869))))

(assert (=> d!63319 (= res!128774 (isStrictlySorted!372 lt!133443))))

(assert (=> d!63319 (= (lemmaContainsTupThenGetReturnValue!177 lt!133443 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) lt!133553)))

(declare-fun b!263693 () Bool)

(declare-fun res!128775 () Bool)

(assert (=> b!263693 (=> (not res!128775) (not e!170869))))

(assert (=> b!263693 (= res!128775 (containsKey!311 lt!133443 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!263694 () Bool)

(assert (=> b!263694 (= e!170869 (contains!1913 lt!133443 (tuple2!4975 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (= (and d!63319 res!128774) b!263693))

(assert (= (and b!263693 res!128775) b!263694))

(assert (=> d!63319 m!279751))

(declare-fun m!280139 () Bool)

(assert (=> d!63319 m!280139))

(declare-fun m!280141 () Bool)

(assert (=> d!63319 m!280141))

(declare-fun m!280143 () Bool)

(assert (=> b!263693 m!280143))

(declare-fun m!280145 () Bool)

(assert (=> b!263694 m!280145))

(assert (=> d!63183 d!63319))

(declare-fun bm!25246 () Bool)

(declare-fun call!25251 () List!3872)

(declare-fun call!25250 () List!3872)

(assert (=> bm!25246 (= call!25251 call!25250)))

(declare-fun bm!25247 () Bool)

(declare-fun call!25249 () List!3872)

(assert (=> bm!25247 (= call!25249 call!25251)))

(declare-fun b!263695 () Bool)

(declare-fun res!128776 () Bool)

(declare-fun e!170874 () Bool)

(assert (=> b!263695 (=> (not res!128776) (not e!170874))))

(declare-fun lt!133554 () List!3872)

(assert (=> b!263695 (= res!128776 (containsKey!311 lt!133554 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!263696 () Bool)

(declare-fun c!45013 () Bool)

(assert (=> b!263696 (= c!45013 (and ((_ is Cons!3868) (toList!1966 call!25197)) (bvsgt (_1!2497 (h!4534 (toList!1966 call!25197))) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun e!170873 () List!3872)

(declare-fun e!170870 () List!3872)

(assert (=> b!263696 (= e!170873 e!170870)))

(declare-fun b!263697 () Bool)

(declare-fun e!170872 () List!3872)

(assert (=> b!263697 (= e!170872 e!170873)))

(declare-fun c!45016 () Bool)

(assert (=> b!263697 (= c!45016 (and ((_ is Cons!3868) (toList!1966 call!25197)) (= (_1!2497 (h!4534 (toList!1966 call!25197))) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!263698 () Bool)

(assert (=> b!263698 (= e!170874 (contains!1913 lt!133554 (tuple2!4975 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!263699 () Bool)

(assert (=> b!263699 (= e!170872 call!25250)))

(declare-fun b!263700 () Bool)

(assert (=> b!263700 (= e!170873 call!25251)))

(declare-fun b!263701 () Bool)

(declare-fun e!170871 () List!3872)

(assert (=> b!263701 (= e!170871 (insertStrictlySorted!179 (t!8957 (toList!1966 call!25197)) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!263702 () Bool)

(assert (=> b!263702 (= e!170870 call!25249)))

(declare-fun c!45015 () Bool)

(declare-fun bm!25248 () Bool)

(assert (=> bm!25248 (= call!25250 ($colon$colon!107 e!170871 (ite c!45015 (h!4534 (toList!1966 call!25197)) (tuple2!4975 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(declare-fun c!45014 () Bool)

(assert (=> bm!25248 (= c!45014 c!45015)))

(declare-fun d!63321 () Bool)

(assert (=> d!63321 e!170874))

(declare-fun res!128777 () Bool)

(assert (=> d!63321 (=> (not res!128777) (not e!170874))))

(assert (=> d!63321 (= res!128777 (isStrictlySorted!372 lt!133554))))

(assert (=> d!63321 (= lt!133554 e!170872)))

(assert (=> d!63321 (= c!45015 (and ((_ is Cons!3868) (toList!1966 call!25197)) (bvslt (_1!2497 (h!4534 (toList!1966 call!25197))) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63321 (isStrictlySorted!372 (toList!1966 call!25197))))

(assert (=> d!63321 (= (insertStrictlySorted!179 (toList!1966 call!25197) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) lt!133554)))

(declare-fun b!263703 () Bool)

(assert (=> b!263703 (= e!170870 call!25249)))

(declare-fun b!263704 () Bool)

(assert (=> b!263704 (= e!170871 (ite c!45016 (t!8957 (toList!1966 call!25197)) (ite c!45013 (Cons!3868 (h!4534 (toList!1966 call!25197)) (t!8957 (toList!1966 call!25197))) Nil!3869)))))

(assert (= (and d!63321 c!45015) b!263699))

(assert (= (and d!63321 (not c!45015)) b!263697))

(assert (= (and b!263697 c!45016) b!263700))

(assert (= (and b!263697 (not c!45016)) b!263696))

(assert (= (and b!263696 c!45013) b!263703))

(assert (= (and b!263696 (not c!45013)) b!263702))

(assert (= (or b!263703 b!263702) bm!25247))

(assert (= (or b!263700 bm!25247) bm!25246))

(assert (= (or b!263699 bm!25246) bm!25248))

(assert (= (and bm!25248 c!45014) b!263701))

(assert (= (and bm!25248 (not c!45014)) b!263704))

(assert (= (and d!63321 res!128777) b!263695))

(assert (= (and b!263695 res!128776) b!263698))

(declare-fun m!280147 () Bool)

(assert (=> bm!25248 m!280147))

(declare-fun m!280149 () Bool)

(assert (=> b!263701 m!280149))

(declare-fun m!280151 () Bool)

(assert (=> b!263698 m!280151))

(declare-fun m!280153 () Bool)

(assert (=> b!263695 m!280153))

(declare-fun m!280155 () Bool)

(assert (=> d!63321 m!280155))

(declare-fun m!280157 () Bool)

(assert (=> d!63321 m!280157))

(assert (=> d!63183 d!63321))

(declare-fun b!263705 () Bool)

(declare-fun e!170875 () Bool)

(assert (=> b!263705 (= e!170875 (contains!1914 (ite c!44929 (Cons!3869 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000) Nil!3870) Nil!3870) (select (arr!5998 (_keys!7035 lt!133037)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!263707 () Bool)

(declare-fun e!170878 () Bool)

(declare-fun call!25252 () Bool)

(assert (=> b!263707 (= e!170878 call!25252)))

(declare-fun b!263708 () Bool)

(declare-fun e!170876 () Bool)

(assert (=> b!263708 (= e!170876 e!170878)))

(declare-fun c!45017 () Bool)

(assert (=> b!263708 (= c!45017 (validKeyInArray!0 (select (arr!5998 (_keys!7035 lt!133037)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!263706 () Bool)

(declare-fun e!170877 () Bool)

(assert (=> b!263706 (= e!170877 e!170876)))

(declare-fun res!128779 () Bool)

(assert (=> b!263706 (=> (not res!128779) (not e!170876))))

(assert (=> b!263706 (= res!128779 (not e!170875))))

(declare-fun res!128780 () Bool)

(assert (=> b!263706 (=> (not res!128780) (not e!170875))))

(assert (=> b!263706 (= res!128780 (validKeyInArray!0 (select (arr!5998 (_keys!7035 lt!133037)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!63323 () Bool)

(declare-fun res!128778 () Bool)

(assert (=> d!63323 (=> res!128778 e!170877)))

(assert (=> d!63323 (= res!128778 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 lt!133037))))))

(assert (=> d!63323 (= (arrayNoDuplicates!0 (_keys!7035 lt!133037) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44929 (Cons!3869 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) e!170877)))

(declare-fun bm!25249 () Bool)

(assert (=> bm!25249 (= call!25252 (arrayNoDuplicates!0 (_keys!7035 lt!133037) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!45017 (Cons!3869 (select (arr!5998 (_keys!7035 lt!133037)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!44929 (Cons!3869 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) (ite c!44929 (Cons!3869 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000) Nil!3870) Nil!3870))))))

(declare-fun b!263709 () Bool)

(assert (=> b!263709 (= e!170878 call!25252)))

(assert (= (and d!63323 (not res!128778)) b!263706))

(assert (= (and b!263706 res!128780) b!263705))

(assert (= (and b!263706 res!128779) b!263708))

(assert (= (and b!263708 c!45017) b!263707))

(assert (= (and b!263708 (not c!45017)) b!263709))

(assert (= (or b!263707 b!263709) bm!25249))

(declare-fun m!280159 () Bool)

(assert (=> b!263705 m!280159))

(assert (=> b!263705 m!280159))

(declare-fun m!280161 () Bool)

(assert (=> b!263705 m!280161))

(assert (=> b!263708 m!280159))

(assert (=> b!263708 m!280159))

(declare-fun m!280163 () Bool)

(assert (=> b!263708 m!280163))

(assert (=> b!263706 m!280159))

(assert (=> b!263706 m!280159))

(assert (=> b!263706 m!280163))

(assert (=> bm!25249 m!280159))

(declare-fun m!280165 () Bool)

(assert (=> bm!25249 m!280165))

(assert (=> bm!25209 d!63323))

(assert (=> d!63197 d!63195))

(declare-fun d!63325 () Bool)

(assert (=> d!63325 (= (apply!262 (+!705 lt!133536 (tuple2!4975 lt!133535 (minValue!4684 lt!133037))) lt!133519) (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133536 (tuple2!4975 lt!133535 (minValue!4684 lt!133037)))) lt!133519)))))

(declare-fun bs!9285 () Bool)

(assert (= bs!9285 d!63325))

(declare-fun m!280167 () Bool)

(assert (=> bs!9285 m!280167))

(assert (=> bs!9285 m!280167))

(declare-fun m!280169 () Bool)

(assert (=> bs!9285 m!280169))

(assert (=> b!263652 d!63325))

(declare-fun d!63327 () Bool)

(assert (=> d!63327 (= (apply!262 (+!705 lt!133532 (tuple2!4975 lt!133521 (minValue!4684 lt!133037))) lt!133523) (apply!262 lt!133532 lt!133523))))

(declare-fun lt!133555 () Unit!8187)

(assert (=> d!63327 (= lt!133555 (choose!1303 lt!133532 lt!133521 (minValue!4684 lt!133037) lt!133523))))

(declare-fun e!170879 () Bool)

(assert (=> d!63327 e!170879))

(declare-fun res!128781 () Bool)

(assert (=> d!63327 (=> (not res!128781) (not e!170879))))

(assert (=> d!63327 (= res!128781 (contains!1911 lt!133532 lt!133523))))

(assert (=> d!63327 (= (addApplyDifferent!238 lt!133532 lt!133521 (minValue!4684 lt!133037) lt!133523) lt!133555)))

(declare-fun b!263710 () Bool)

(assert (=> b!263710 (= e!170879 (not (= lt!133523 lt!133521)))))

(assert (= (and d!63327 res!128781) b!263710))

(assert (=> d!63327 m!280087))

(assert (=> d!63327 m!280081))

(assert (=> d!63327 m!280081))

(assert (=> d!63327 m!280085))

(declare-fun m!280171 () Bool)

(assert (=> d!63327 m!280171))

(declare-fun m!280173 () Bool)

(assert (=> d!63327 m!280173))

(assert (=> b!263652 d!63327))

(declare-fun d!63329 () Bool)

(declare-fun e!170880 () Bool)

(assert (=> d!63329 e!170880))

(declare-fun res!128782 () Bool)

(assert (=> d!63329 (=> (not res!128782) (not e!170880))))

(declare-fun lt!133558 () ListLongMap!3901)

(assert (=> d!63329 (= res!128782 (contains!1911 lt!133558 (_1!2497 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037)))))))

(declare-fun lt!133559 () List!3872)

(assert (=> d!63329 (= lt!133558 (ListLongMap!3902 lt!133559))))

(declare-fun lt!133557 () Unit!8187)

(declare-fun lt!133556 () Unit!8187)

(assert (=> d!63329 (= lt!133557 lt!133556)))

(assert (=> d!63329 (= (getValueByKey!319 lt!133559 (_1!2497 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037)))) (Some!324 (_2!2497 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037)))))))

(assert (=> d!63329 (= lt!133556 (lemmaContainsTupThenGetReturnValue!177 lt!133559 (_1!2497 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037))) (_2!2497 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037)))))))

(assert (=> d!63329 (= lt!133559 (insertStrictlySorted!179 (toList!1966 lt!133540) (_1!2497 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037))) (_2!2497 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037)))))))

(assert (=> d!63329 (= (+!705 lt!133540 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037))) lt!133558)))

(declare-fun b!263711 () Bool)

(declare-fun res!128783 () Bool)

(assert (=> b!263711 (=> (not res!128783) (not e!170880))))

(assert (=> b!263711 (= res!128783 (= (getValueByKey!319 (toList!1966 lt!133558) (_1!2497 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037)))) (Some!324 (_2!2497 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037))))))))

(declare-fun b!263712 () Bool)

(assert (=> b!263712 (= e!170880 (contains!1913 (toList!1966 lt!133558) (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037))))))

(assert (= (and d!63329 res!128782) b!263711))

(assert (= (and b!263711 res!128783) b!263712))

(declare-fun m!280175 () Bool)

(assert (=> d!63329 m!280175))

(declare-fun m!280177 () Bool)

(assert (=> d!63329 m!280177))

(declare-fun m!280179 () Bool)

(assert (=> d!63329 m!280179))

(declare-fun m!280181 () Bool)

(assert (=> d!63329 m!280181))

(declare-fun m!280183 () Bool)

(assert (=> b!263711 m!280183))

(declare-fun m!280185 () Bool)

(assert (=> b!263712 m!280185))

(assert (=> b!263652 d!63329))

(declare-fun d!63331 () Bool)

(assert (=> d!63331 (contains!1911 (+!705 lt!133540 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037))) lt!133533)))

(declare-fun lt!133560 () Unit!8187)

(assert (=> d!63331 (= lt!133560 (choose!1304 lt!133540 lt!133520 (zeroValue!4684 lt!133037) lt!133533))))

(assert (=> d!63331 (contains!1911 lt!133540 lt!133533)))

(assert (=> d!63331 (= (addStillContains!238 lt!133540 lt!133520 (zeroValue!4684 lt!133037) lt!133533) lt!133560)))

(declare-fun bs!9286 () Bool)

(assert (= bs!9286 d!63331))

(assert (=> bs!9286 m!280065))

(assert (=> bs!9286 m!280065))

(assert (=> bs!9286 m!280067))

(declare-fun m!280187 () Bool)

(assert (=> bs!9286 m!280187))

(declare-fun m!280189 () Bool)

(assert (=> bs!9286 m!280189))

(assert (=> b!263652 d!63331))

(declare-fun d!63333 () Bool)

(assert (=> d!63333 (= (apply!262 (+!705 lt!133532 (tuple2!4975 lt!133521 (minValue!4684 lt!133037))) lt!133523) (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133532 (tuple2!4975 lt!133521 (minValue!4684 lt!133037)))) lt!133523)))))

(declare-fun bs!9287 () Bool)

(assert (= bs!9287 d!63333))

(declare-fun m!280191 () Bool)

(assert (=> bs!9287 m!280191))

(assert (=> bs!9287 m!280191))

(declare-fun m!280193 () Bool)

(assert (=> bs!9287 m!280193))

(assert (=> b!263652 d!63333))

(declare-fun d!63335 () Bool)

(assert (=> d!63335 (= (apply!262 lt!133536 lt!133519) (get!3095 (getValueByKey!319 (toList!1966 lt!133536) lt!133519)))))

(declare-fun bs!9288 () Bool)

(assert (= bs!9288 d!63335))

(declare-fun m!280195 () Bool)

(assert (=> bs!9288 m!280195))

(assert (=> bs!9288 m!280195))

(declare-fun m!280197 () Bool)

(assert (=> bs!9288 m!280197))

(assert (=> b!263652 d!63335))

(declare-fun d!63337 () Bool)

(declare-fun e!170881 () Bool)

(assert (=> d!63337 e!170881))

(declare-fun res!128784 () Bool)

(assert (=> d!63337 (=> (not res!128784) (not e!170881))))

(declare-fun lt!133563 () ListLongMap!3901)

(assert (=> d!63337 (= res!128784 (contains!1911 lt!133563 (_1!2497 (tuple2!4975 lt!133527 (zeroValue!4684 lt!133037)))))))

(declare-fun lt!133564 () List!3872)

(assert (=> d!63337 (= lt!133563 (ListLongMap!3902 lt!133564))))

(declare-fun lt!133562 () Unit!8187)

(declare-fun lt!133561 () Unit!8187)

(assert (=> d!63337 (= lt!133562 lt!133561)))

(assert (=> d!63337 (= (getValueByKey!319 lt!133564 (_1!2497 (tuple2!4975 lt!133527 (zeroValue!4684 lt!133037)))) (Some!324 (_2!2497 (tuple2!4975 lt!133527 (zeroValue!4684 lt!133037)))))))

(assert (=> d!63337 (= lt!133561 (lemmaContainsTupThenGetReturnValue!177 lt!133564 (_1!2497 (tuple2!4975 lt!133527 (zeroValue!4684 lt!133037))) (_2!2497 (tuple2!4975 lt!133527 (zeroValue!4684 lt!133037)))))))

(assert (=> d!63337 (= lt!133564 (insertStrictlySorted!179 (toList!1966 lt!133526) (_1!2497 (tuple2!4975 lt!133527 (zeroValue!4684 lt!133037))) (_2!2497 (tuple2!4975 lt!133527 (zeroValue!4684 lt!133037)))))))

(assert (=> d!63337 (= (+!705 lt!133526 (tuple2!4975 lt!133527 (zeroValue!4684 lt!133037))) lt!133563)))

(declare-fun b!263713 () Bool)

(declare-fun res!128785 () Bool)

(assert (=> b!263713 (=> (not res!128785) (not e!170881))))

(assert (=> b!263713 (= res!128785 (= (getValueByKey!319 (toList!1966 lt!133563) (_1!2497 (tuple2!4975 lt!133527 (zeroValue!4684 lt!133037)))) (Some!324 (_2!2497 (tuple2!4975 lt!133527 (zeroValue!4684 lt!133037))))))))

(declare-fun b!263714 () Bool)

(assert (=> b!263714 (= e!170881 (contains!1913 (toList!1966 lt!133563) (tuple2!4975 lt!133527 (zeroValue!4684 lt!133037))))))

(assert (= (and d!63337 res!128784) b!263713))

(assert (= (and b!263713 res!128785) b!263714))

(declare-fun m!280199 () Bool)

(assert (=> d!63337 m!280199))

(declare-fun m!280201 () Bool)

(assert (=> d!63337 m!280201))

(declare-fun m!280203 () Bool)

(assert (=> d!63337 m!280203))

(declare-fun m!280205 () Bool)

(assert (=> d!63337 m!280205))

(declare-fun m!280207 () Bool)

(assert (=> b!263713 m!280207))

(declare-fun m!280209 () Bool)

(assert (=> b!263714 m!280209))

(assert (=> b!263652 d!63337))

(declare-fun d!63339 () Bool)

(declare-fun e!170882 () Bool)

(assert (=> d!63339 e!170882))

(declare-fun res!128786 () Bool)

(assert (=> d!63339 (=> res!128786 e!170882)))

(declare-fun lt!133566 () Bool)

(assert (=> d!63339 (= res!128786 (not lt!133566))))

(declare-fun lt!133565 () Bool)

(assert (=> d!63339 (= lt!133566 lt!133565)))

(declare-fun lt!133567 () Unit!8187)

(declare-fun e!170883 () Unit!8187)

(assert (=> d!63339 (= lt!133567 e!170883)))

(declare-fun c!45018 () Bool)

(assert (=> d!63339 (= c!45018 lt!133565)))

(assert (=> d!63339 (= lt!133565 (containsKey!311 (toList!1966 (+!705 lt!133540 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037)))) lt!133533))))

(assert (=> d!63339 (= (contains!1911 (+!705 lt!133540 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037))) lt!133533) lt!133566)))

(declare-fun b!263715 () Bool)

(declare-fun lt!133568 () Unit!8187)

(assert (=> b!263715 (= e!170883 lt!133568)))

(assert (=> b!263715 (= lt!133568 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 (+!705 lt!133540 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037)))) lt!133533))))

(assert (=> b!263715 (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133540 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037)))) lt!133533))))

(declare-fun b!263716 () Bool)

(declare-fun Unit!8216 () Unit!8187)

(assert (=> b!263716 (= e!170883 Unit!8216)))

(declare-fun b!263717 () Bool)

(assert (=> b!263717 (= e!170882 (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133540 (tuple2!4975 lt!133520 (zeroValue!4684 lt!133037)))) lt!133533)))))

(assert (= (and d!63339 c!45018) b!263715))

(assert (= (and d!63339 (not c!45018)) b!263716))

(assert (= (and d!63339 (not res!128786)) b!263717))

(declare-fun m!280211 () Bool)

(assert (=> d!63339 m!280211))

(declare-fun m!280213 () Bool)

(assert (=> b!263715 m!280213))

(declare-fun m!280215 () Bool)

(assert (=> b!263715 m!280215))

(assert (=> b!263715 m!280215))

(declare-fun m!280217 () Bool)

(assert (=> b!263715 m!280217))

(assert (=> b!263717 m!280215))

(assert (=> b!263717 m!280215))

(assert (=> b!263717 m!280217))

(assert (=> b!263652 d!63339))

(declare-fun b!263718 () Bool)

(declare-fun e!170889 () Bool)

(declare-fun lt!133570 () ListLongMap!3901)

(assert (=> b!263718 (= e!170889 (= lt!133570 (getCurrentListMapNoExtraKeys!581 (_keys!7035 lt!133037) (_values!4826 lt!133037) (mask!11209 lt!133037) (extraKeys!4580 lt!133037) (zeroValue!4684 lt!133037) (minValue!4684 lt!133037) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4843 lt!133037))))))

(declare-fun b!263719 () Bool)

(declare-fun e!170887 () Bool)

(assert (=> b!263719 (= e!170887 (validKeyInArray!0 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(assert (=> b!263719 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!263720 () Bool)

(declare-fun res!128787 () Bool)

(declare-fun e!170888 () Bool)

(assert (=> b!263720 (=> (not res!128787) (not e!170888))))

(assert (=> b!263720 (= res!128787 (not (contains!1911 lt!133570 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!263721 () Bool)

(declare-fun e!170890 () Bool)

(assert (=> b!263721 (= e!170888 e!170890)))

(declare-fun c!45020 () Bool)

(assert (=> b!263721 (= c!45020 e!170887)))

(declare-fun res!128788 () Bool)

(assert (=> b!263721 (=> (not res!128788) (not e!170887))))

(assert (=> b!263721 (= res!128788 (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))))))

(declare-fun b!263722 () Bool)

(declare-fun e!170886 () ListLongMap!3901)

(declare-fun e!170884 () ListLongMap!3901)

(assert (=> b!263722 (= e!170886 e!170884)))

(declare-fun c!45022 () Bool)

(assert (=> b!263722 (= c!45022 (validKeyInArray!0 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(declare-fun b!263723 () Bool)

(assert (=> b!263723 (= e!170889 (isEmpty!546 lt!133570))))

(declare-fun bm!25250 () Bool)

(declare-fun call!25253 () ListLongMap!3901)

(assert (=> bm!25250 (= call!25253 (getCurrentListMapNoExtraKeys!581 (_keys!7035 lt!133037) (_values!4826 lt!133037) (mask!11209 lt!133037) (extraKeys!4580 lt!133037) (zeroValue!4684 lt!133037) (minValue!4684 lt!133037) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4843 lt!133037)))))

(declare-fun d!63341 () Bool)

(assert (=> d!63341 e!170888))

(declare-fun res!128790 () Bool)

(assert (=> d!63341 (=> (not res!128790) (not e!170888))))

(assert (=> d!63341 (= res!128790 (not (contains!1911 lt!133570 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63341 (= lt!133570 e!170886)))

(declare-fun c!45019 () Bool)

(assert (=> d!63341 (= c!45019 (bvsge #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))))))

(assert (=> d!63341 (validMask!0 (mask!11209 lt!133037))))

(assert (=> d!63341 (= (getCurrentListMapNoExtraKeys!581 (_keys!7035 lt!133037) (_values!4826 lt!133037) (mask!11209 lt!133037) (extraKeys!4580 lt!133037) (zeroValue!4684 lt!133037) (minValue!4684 lt!133037) #b00000000000000000000000000000000 (defaultEntry!4843 lt!133037)) lt!133570)))

(declare-fun b!263724 () Bool)

(assert (=> b!263724 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))))))

(assert (=> b!263724 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6348 (_values!4826 lt!133037))))))

(declare-fun e!170885 () Bool)

(assert (=> b!263724 (= e!170885 (= (apply!262 lt!133570 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)) (get!3094 (select (arr!5997 (_values!4826 lt!133037)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 lt!133037) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!263725 () Bool)

(assert (=> b!263725 (= e!170890 e!170889)))

(declare-fun c!45021 () Bool)

(assert (=> b!263725 (= c!45021 (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))))))

(declare-fun b!263726 () Bool)

(assert (=> b!263726 (= e!170886 (ListLongMap!3902 Nil!3869))))

(declare-fun b!263727 () Bool)

(declare-fun lt!133569 () Unit!8187)

(declare-fun lt!133572 () Unit!8187)

(assert (=> b!263727 (= lt!133569 lt!133572)))

(declare-fun lt!133571 () V!8523)

(declare-fun lt!133574 () (_ BitVec 64))

(declare-fun lt!133575 () ListLongMap!3901)

(declare-fun lt!133573 () (_ BitVec 64))

(assert (=> b!263727 (not (contains!1911 (+!705 lt!133575 (tuple2!4975 lt!133574 lt!133571)) lt!133573))))

(assert (=> b!263727 (= lt!133572 (addStillNotContains!131 lt!133575 lt!133574 lt!133571 lt!133573))))

(assert (=> b!263727 (= lt!133573 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!263727 (= lt!133571 (get!3094 (select (arr!5997 (_values!4826 lt!133037)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 lt!133037) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!263727 (= lt!133574 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000))))

(assert (=> b!263727 (= lt!133575 call!25253)))

(assert (=> b!263727 (= e!170884 (+!705 call!25253 (tuple2!4975 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 (_values!4826 lt!133037)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 lt!133037) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!263728 () Bool)

(assert (=> b!263728 (= e!170884 call!25253)))

(declare-fun b!263729 () Bool)

(assert (=> b!263729 (= e!170890 e!170885)))

(assert (=> b!263729 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 (_keys!7035 lt!133037))))))

(declare-fun res!128789 () Bool)

(assert (=> b!263729 (= res!128789 (contains!1911 lt!133570 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(assert (=> b!263729 (=> (not res!128789) (not e!170885))))

(assert (= (and d!63341 c!45019) b!263726))

(assert (= (and d!63341 (not c!45019)) b!263722))

(assert (= (and b!263722 c!45022) b!263727))

(assert (= (and b!263722 (not c!45022)) b!263728))

(assert (= (or b!263727 b!263728) bm!25250))

(assert (= (and d!63341 res!128790) b!263720))

(assert (= (and b!263720 res!128787) b!263721))

(assert (= (and b!263721 res!128788) b!263719))

(assert (= (and b!263721 c!45020) b!263729))

(assert (= (and b!263721 (not c!45020)) b!263725))

(assert (= (and b!263729 res!128789) b!263724))

(assert (= (and b!263725 c!45021) b!263718))

(assert (= (and b!263725 (not c!45021)) b!263723))

(declare-fun b_lambda!8391 () Bool)

(assert (=> (not b_lambda!8391) (not b!263724)))

(assert (=> b!263724 t!8963))

(declare-fun b_and!13975 () Bool)

(assert (= b_and!13973 (and (=> t!8963 result!5447) b_and!13975)))

(declare-fun b_lambda!8393 () Bool)

(assert (=> (not b_lambda!8393) (not b!263727)))

(assert (=> b!263727 t!8963))

(declare-fun b_and!13977 () Bool)

(assert (= b_and!13975 (and (=> t!8963 result!5447) b_and!13977)))

(declare-fun m!280219 () Bool)

(assert (=> bm!25250 m!280219))

(assert (=> b!263719 m!279569))

(assert (=> b!263719 m!279569))

(assert (=> b!263719 m!279571))

(assert (=> b!263718 m!280219))

(declare-fun m!280221 () Bool)

(assert (=> b!263727 m!280221))

(assert (=> b!263727 m!280097))

(declare-fun m!280223 () Bool)

(assert (=> b!263727 m!280223))

(assert (=> b!263727 m!279569))

(assert (=> b!263727 m!280095))

(declare-fun m!280225 () Bool)

(assert (=> b!263727 m!280225))

(declare-fun m!280227 () Bool)

(assert (=> b!263727 m!280227))

(assert (=> b!263727 m!280225))

(assert (=> b!263727 m!280095))

(assert (=> b!263727 m!280097))

(assert (=> b!263727 m!280099))

(declare-fun m!280229 () Bool)

(assert (=> b!263723 m!280229))

(assert (=> b!263729 m!279569))

(assert (=> b!263729 m!279569))

(declare-fun m!280231 () Bool)

(assert (=> b!263729 m!280231))

(declare-fun m!280233 () Bool)

(assert (=> b!263720 m!280233))

(assert (=> b!263722 m!279569))

(assert (=> b!263722 m!279569))

(assert (=> b!263722 m!279571))

(declare-fun m!280235 () Bool)

(assert (=> d!63341 m!280235))

(assert (=> d!63341 m!279735))

(assert (=> b!263724 m!280097))

(assert (=> b!263724 m!279569))

(assert (=> b!263724 m!280095))

(assert (=> b!263724 m!279569))

(declare-fun m!280237 () Bool)

(assert (=> b!263724 m!280237))

(assert (=> b!263724 m!280095))

(assert (=> b!263724 m!280097))

(assert (=> b!263724 m!280099))

(assert (=> b!263652 d!63341))

(declare-fun d!63343 () Bool)

(declare-fun e!170891 () Bool)

(assert (=> d!63343 e!170891))

(declare-fun res!128791 () Bool)

(assert (=> d!63343 (=> (not res!128791) (not e!170891))))

(declare-fun lt!133578 () ListLongMap!3901)

(assert (=> d!63343 (= res!128791 (contains!1911 lt!133578 (_1!2497 (tuple2!4975 lt!133521 (minValue!4684 lt!133037)))))))

(declare-fun lt!133579 () List!3872)

(assert (=> d!63343 (= lt!133578 (ListLongMap!3902 lt!133579))))

(declare-fun lt!133577 () Unit!8187)

(declare-fun lt!133576 () Unit!8187)

(assert (=> d!63343 (= lt!133577 lt!133576)))

(assert (=> d!63343 (= (getValueByKey!319 lt!133579 (_1!2497 (tuple2!4975 lt!133521 (minValue!4684 lt!133037)))) (Some!324 (_2!2497 (tuple2!4975 lt!133521 (minValue!4684 lt!133037)))))))

(assert (=> d!63343 (= lt!133576 (lemmaContainsTupThenGetReturnValue!177 lt!133579 (_1!2497 (tuple2!4975 lt!133521 (minValue!4684 lt!133037))) (_2!2497 (tuple2!4975 lt!133521 (minValue!4684 lt!133037)))))))

(assert (=> d!63343 (= lt!133579 (insertStrictlySorted!179 (toList!1966 lt!133532) (_1!2497 (tuple2!4975 lt!133521 (minValue!4684 lt!133037))) (_2!2497 (tuple2!4975 lt!133521 (minValue!4684 lt!133037)))))))

(assert (=> d!63343 (= (+!705 lt!133532 (tuple2!4975 lt!133521 (minValue!4684 lt!133037))) lt!133578)))

(declare-fun b!263730 () Bool)

(declare-fun res!128792 () Bool)

(assert (=> b!263730 (=> (not res!128792) (not e!170891))))

(assert (=> b!263730 (= res!128792 (= (getValueByKey!319 (toList!1966 lt!133578) (_1!2497 (tuple2!4975 lt!133521 (minValue!4684 lt!133037)))) (Some!324 (_2!2497 (tuple2!4975 lt!133521 (minValue!4684 lt!133037))))))))

(declare-fun b!263731 () Bool)

(assert (=> b!263731 (= e!170891 (contains!1913 (toList!1966 lt!133578) (tuple2!4975 lt!133521 (minValue!4684 lt!133037))))))

(assert (= (and d!63343 res!128791) b!263730))

(assert (= (and b!263730 res!128792) b!263731))

(declare-fun m!280239 () Bool)

(assert (=> d!63343 m!280239))

(declare-fun m!280241 () Bool)

(assert (=> d!63343 m!280241))

(declare-fun m!280243 () Bool)

(assert (=> d!63343 m!280243))

(declare-fun m!280245 () Bool)

(assert (=> d!63343 m!280245))

(declare-fun m!280247 () Bool)

(assert (=> b!263730 m!280247))

(declare-fun m!280249 () Bool)

(assert (=> b!263731 m!280249))

(assert (=> b!263652 d!63343))

(declare-fun d!63345 () Bool)

(assert (=> d!63345 (= (apply!262 (+!705 lt!133536 (tuple2!4975 lt!133535 (minValue!4684 lt!133037))) lt!133519) (apply!262 lt!133536 lt!133519))))

(declare-fun lt!133580 () Unit!8187)

(assert (=> d!63345 (= lt!133580 (choose!1303 lt!133536 lt!133535 (minValue!4684 lt!133037) lt!133519))))

(declare-fun e!170892 () Bool)

(assert (=> d!63345 e!170892))

(declare-fun res!128793 () Bool)

(assert (=> d!63345 (=> (not res!128793) (not e!170892))))

(assert (=> d!63345 (= res!128793 (contains!1911 lt!133536 lt!133519))))

(assert (=> d!63345 (= (addApplyDifferent!238 lt!133536 lt!133535 (minValue!4684 lt!133037) lt!133519) lt!133580)))

(declare-fun b!263732 () Bool)

(assert (=> b!263732 (= e!170892 (not (= lt!133519 lt!133535)))))

(assert (= (and d!63345 res!128793) b!263732))

(assert (=> d!63345 m!280071))

(assert (=> d!63345 m!280061))

(assert (=> d!63345 m!280061))

(assert (=> d!63345 m!280063))

(declare-fun m!280251 () Bool)

(assert (=> d!63345 m!280251))

(declare-fun m!280253 () Bool)

(assert (=> d!63345 m!280253))

(assert (=> b!263652 d!63345))

(declare-fun d!63347 () Bool)

(assert (=> d!63347 (= (apply!262 lt!133526 lt!133531) (get!3095 (getValueByKey!319 (toList!1966 lt!133526) lt!133531)))))

(declare-fun bs!9289 () Bool)

(assert (= bs!9289 d!63347))

(declare-fun m!280255 () Bool)

(assert (=> bs!9289 m!280255))

(assert (=> bs!9289 m!280255))

(declare-fun m!280257 () Bool)

(assert (=> bs!9289 m!280257))

(assert (=> b!263652 d!63347))

(declare-fun d!63349 () Bool)

(assert (=> d!63349 (= (apply!262 (+!705 lt!133526 (tuple2!4975 lt!133527 (zeroValue!4684 lt!133037))) lt!133531) (apply!262 lt!133526 lt!133531))))

(declare-fun lt!133581 () Unit!8187)

(assert (=> d!63349 (= lt!133581 (choose!1303 lt!133526 lt!133527 (zeroValue!4684 lt!133037) lt!133531))))

(declare-fun e!170893 () Bool)

(assert (=> d!63349 e!170893))

(declare-fun res!128794 () Bool)

(assert (=> d!63349 (=> (not res!128794) (not e!170893))))

(assert (=> d!63349 (= res!128794 (contains!1911 lt!133526 lt!133531))))

(assert (=> d!63349 (= (addApplyDifferent!238 lt!133526 lt!133527 (zeroValue!4684 lt!133037) lt!133531) lt!133581)))

(declare-fun b!263733 () Bool)

(assert (=> b!263733 (= e!170893 (not (= lt!133531 lt!133527)))))

(assert (= (and d!63349 res!128794) b!263733))

(assert (=> d!63349 m!280089))

(assert (=> d!63349 m!280069))

(assert (=> d!63349 m!280069))

(assert (=> d!63349 m!280073))

(declare-fun m!280259 () Bool)

(assert (=> d!63349 m!280259))

(declare-fun m!280261 () Bool)

(assert (=> d!63349 m!280261))

(assert (=> b!263652 d!63349))

(declare-fun d!63351 () Bool)

(assert (=> d!63351 (= (apply!262 lt!133532 lt!133523) (get!3095 (getValueByKey!319 (toList!1966 lt!133532) lt!133523)))))

(declare-fun bs!9290 () Bool)

(assert (= bs!9290 d!63351))

(declare-fun m!280263 () Bool)

(assert (=> bs!9290 m!280263))

(assert (=> bs!9290 m!280263))

(declare-fun m!280265 () Bool)

(assert (=> bs!9290 m!280265))

(assert (=> b!263652 d!63351))

(declare-fun d!63353 () Bool)

(declare-fun e!170894 () Bool)

(assert (=> d!63353 e!170894))

(declare-fun res!128795 () Bool)

(assert (=> d!63353 (=> (not res!128795) (not e!170894))))

(declare-fun lt!133584 () ListLongMap!3901)

(assert (=> d!63353 (= res!128795 (contains!1911 lt!133584 (_1!2497 (tuple2!4975 lt!133535 (minValue!4684 lt!133037)))))))

(declare-fun lt!133585 () List!3872)

(assert (=> d!63353 (= lt!133584 (ListLongMap!3902 lt!133585))))

(declare-fun lt!133583 () Unit!8187)

(declare-fun lt!133582 () Unit!8187)

(assert (=> d!63353 (= lt!133583 lt!133582)))

(assert (=> d!63353 (= (getValueByKey!319 lt!133585 (_1!2497 (tuple2!4975 lt!133535 (minValue!4684 lt!133037)))) (Some!324 (_2!2497 (tuple2!4975 lt!133535 (minValue!4684 lt!133037)))))))

(assert (=> d!63353 (= lt!133582 (lemmaContainsTupThenGetReturnValue!177 lt!133585 (_1!2497 (tuple2!4975 lt!133535 (minValue!4684 lt!133037))) (_2!2497 (tuple2!4975 lt!133535 (minValue!4684 lt!133037)))))))

(assert (=> d!63353 (= lt!133585 (insertStrictlySorted!179 (toList!1966 lt!133536) (_1!2497 (tuple2!4975 lt!133535 (minValue!4684 lt!133037))) (_2!2497 (tuple2!4975 lt!133535 (minValue!4684 lt!133037)))))))

(assert (=> d!63353 (= (+!705 lt!133536 (tuple2!4975 lt!133535 (minValue!4684 lt!133037))) lt!133584)))

(declare-fun b!263734 () Bool)

(declare-fun res!128796 () Bool)

(assert (=> b!263734 (=> (not res!128796) (not e!170894))))

(assert (=> b!263734 (= res!128796 (= (getValueByKey!319 (toList!1966 lt!133584) (_1!2497 (tuple2!4975 lt!133535 (minValue!4684 lt!133037)))) (Some!324 (_2!2497 (tuple2!4975 lt!133535 (minValue!4684 lt!133037))))))))

(declare-fun b!263735 () Bool)

(assert (=> b!263735 (= e!170894 (contains!1913 (toList!1966 lt!133584) (tuple2!4975 lt!133535 (minValue!4684 lt!133037))))))

(assert (= (and d!63353 res!128795) b!263734))

(assert (= (and b!263734 res!128796) b!263735))

(declare-fun m!280267 () Bool)

(assert (=> d!63353 m!280267))

(declare-fun m!280269 () Bool)

(assert (=> d!63353 m!280269))

(declare-fun m!280271 () Bool)

(assert (=> d!63353 m!280271))

(declare-fun m!280273 () Bool)

(assert (=> d!63353 m!280273))

(declare-fun m!280275 () Bool)

(assert (=> b!263734 m!280275))

(declare-fun m!280277 () Bool)

(assert (=> b!263735 m!280277))

(assert (=> b!263652 d!63353))

(declare-fun d!63355 () Bool)

(assert (=> d!63355 (= (apply!262 (+!705 lt!133526 (tuple2!4975 lt!133527 (zeroValue!4684 lt!133037))) lt!133531) (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133526 (tuple2!4975 lt!133527 (zeroValue!4684 lt!133037)))) lt!133531)))))

(declare-fun bs!9291 () Bool)

(assert (= bs!9291 d!63355))

(declare-fun m!280279 () Bool)

(assert (=> bs!9291 m!280279))

(assert (=> bs!9291 m!280279))

(declare-fun m!280281 () Bool)

(assert (=> bs!9291 m!280281))

(assert (=> b!263652 d!63355))

(declare-fun d!63357 () Bool)

(declare-fun e!170895 () Bool)

(assert (=> d!63357 e!170895))

(declare-fun res!128797 () Bool)

(assert (=> d!63357 (=> res!128797 e!170895)))

(declare-fun lt!133587 () Bool)

(assert (=> d!63357 (= res!128797 (not lt!133587))))

(declare-fun lt!133586 () Bool)

(assert (=> d!63357 (= lt!133587 lt!133586)))

(declare-fun lt!133588 () Unit!8187)

(declare-fun e!170896 () Unit!8187)

(assert (=> d!63357 (= lt!133588 e!170896)))

(declare-fun c!45023 () Bool)

(assert (=> d!63357 (= c!45023 lt!133586)))

(assert (=> d!63357 (= lt!133586 (containsKey!311 (toList!1966 lt!133280) lt!133263))))

(assert (=> d!63357 (= (contains!1911 lt!133280 lt!133263) lt!133587)))

(declare-fun b!263736 () Bool)

(declare-fun lt!133589 () Unit!8187)

(assert (=> b!263736 (= e!170896 lt!133589)))

(assert (=> b!263736 (= lt!133589 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133280) lt!133263))))

(assert (=> b!263736 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133280) lt!133263))))

(declare-fun b!263737 () Bool)

(declare-fun Unit!8217 () Unit!8187)

(assert (=> b!263737 (= e!170896 Unit!8217)))

(declare-fun b!263738 () Bool)

(assert (=> b!263738 (= e!170895 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133280) lt!133263)))))

(assert (= (and d!63357 c!45023) b!263736))

(assert (= (and d!63357 (not c!45023)) b!263737))

(assert (= (and d!63357 (not res!128797)) b!263738))

(declare-fun m!280283 () Bool)

(assert (=> d!63357 m!280283))

(declare-fun m!280285 () Bool)

(assert (=> b!263736 m!280285))

(assert (=> b!263736 m!279971))

(assert (=> b!263736 m!279971))

(declare-fun m!280287 () Bool)

(assert (=> b!263736 m!280287))

(assert (=> b!263738 m!279971))

(assert (=> b!263738 m!279971))

(assert (=> b!263738 m!280287))

(assert (=> d!63245 d!63357))

(assert (=> d!63245 d!63267))

(declare-fun d!63359 () Bool)

(assert (=> d!63359 (= (apply!262 (+!705 lt!133280 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))) lt!133263) (apply!262 lt!133280 lt!133263))))

(assert (=> d!63359 true))

(declare-fun _$34!1131 () Unit!8187)

(assert (=> d!63359 (= (choose!1303 lt!133280 lt!133279 (minValue!4684 thiss!1504) lt!133263) _$34!1131)))

(declare-fun bs!9292 () Bool)

(assert (= bs!9292 d!63359))

(assert (=> bs!9292 m!279321))

(assert (=> bs!9292 m!279321))

(assert (=> bs!9292 m!279323))

(assert (=> bs!9292 m!279331))

(assert (=> d!63245 d!63359))

(assert (=> d!63245 d!63269))

(assert (=> d!63245 d!63271))

(declare-fun d!63361 () Bool)

(declare-fun lt!133590 () Bool)

(assert (=> d!63361 (= lt!133590 (select (content!175 (toList!1966 lt!133465)) (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))))

(declare-fun e!170898 () Bool)

(assert (=> d!63361 (= lt!133590 e!170898)))

(declare-fun res!128799 () Bool)

(assert (=> d!63361 (=> (not res!128799) (not e!170898))))

(assert (=> d!63361 (= res!128799 ((_ is Cons!3868) (toList!1966 lt!133465)))))

(assert (=> d!63361 (= (contains!1913 (toList!1966 lt!133465) (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))) lt!133590)))

(declare-fun b!263740 () Bool)

(declare-fun e!170897 () Bool)

(assert (=> b!263740 (= e!170898 e!170897)))

(declare-fun res!128798 () Bool)

(assert (=> b!263740 (=> res!128798 e!170897)))

(assert (=> b!263740 (= res!128798 (= (h!4534 (toList!1966 lt!133465)) (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))))

(declare-fun b!263741 () Bool)

(assert (=> b!263741 (= e!170897 (contains!1913 (t!8957 (toList!1966 lt!133465)) (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))))

(assert (= (and d!63361 res!128799) b!263740))

(assert (= (and b!263740 (not res!128798)) b!263741))

(declare-fun m!280289 () Bool)

(assert (=> d!63361 m!280289))

(declare-fun m!280291 () Bool)

(assert (=> d!63361 m!280291))

(declare-fun m!280293 () Bool)

(assert (=> b!263741 m!280293))

(assert (=> b!263573 d!63361))

(declare-fun d!63363 () Bool)

(declare-fun res!128800 () Bool)

(declare-fun e!170899 () Bool)

(assert (=> d!63363 (=> res!128800 e!170899)))

(assert (=> d!63363 (= res!128800 (and ((_ is Cons!3868) (toList!1966 lt!133223)) (= (_1!2497 (h!4534 (toList!1966 lt!133223))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63363 (= (containsKey!311 (toList!1966 lt!133223) #b1000000000000000000000000000000000000000000000000000000000000000) e!170899)))

(declare-fun b!263742 () Bool)

(declare-fun e!170900 () Bool)

(assert (=> b!263742 (= e!170899 e!170900)))

(declare-fun res!128801 () Bool)

(assert (=> b!263742 (=> (not res!128801) (not e!170900))))

(assert (=> b!263742 (= res!128801 (and (or (not ((_ is Cons!3868) (toList!1966 lt!133223))) (bvsle (_1!2497 (h!4534 (toList!1966 lt!133223))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!3868) (toList!1966 lt!133223)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133223))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!263743 () Bool)

(assert (=> b!263743 (= e!170900 (containsKey!311 (t!8957 (toList!1966 lt!133223)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!63363 (not res!128800)) b!263742))

(assert (= (and b!263742 res!128801) b!263743))

(declare-fun m!280295 () Bool)

(assert (=> b!263743 m!280295))

(assert (=> d!63091 d!63363))

(declare-fun b!263746 () Bool)

(declare-fun e!170902 () Option!325)

(assert (=> b!263746 (= e!170902 (getValueByKey!319 (t!8957 (toList!1966 lt!133442)) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!263744 () Bool)

(declare-fun e!170901 () Option!325)

(assert (=> b!263744 (= e!170901 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133442)))))))

(declare-fun d!63365 () Bool)

(declare-fun c!45024 () Bool)

(assert (=> d!63365 (= c!45024 (and ((_ is Cons!3868) (toList!1966 lt!133442)) (= (_1!2497 (h!4534 (toList!1966 lt!133442))) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63365 (= (getValueByKey!319 (toList!1966 lt!133442) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) e!170901)))

(declare-fun b!263747 () Bool)

(assert (=> b!263747 (= e!170902 None!323)))

(declare-fun b!263745 () Bool)

(assert (=> b!263745 (= e!170901 e!170902)))

(declare-fun c!45025 () Bool)

(assert (=> b!263745 (= c!45025 (and ((_ is Cons!3868) (toList!1966 lt!133442)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133442))) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63365 c!45024) b!263744))

(assert (= (and d!63365 (not c!45024)) b!263745))

(assert (= (and b!263745 c!45025) b!263746))

(assert (= (and b!263745 (not c!45025)) b!263747))

(declare-fun m!280297 () Bool)

(assert (=> b!263746 m!280297))

(assert (=> b!263540 d!63365))

(assert (=> d!63095 d!62993))

(declare-fun d!63367 () Bool)

(assert (=> d!63367 (= (isEmpty!545 (getValueByKey!319 (toList!1966 lt!133031) key!932)) (not ((_ is Some!324) (getValueByKey!319 (toList!1966 lt!133031) key!932))))))

(assert (=> d!63189 d!63367))

(declare-fun d!63369 () Bool)

(assert (=> d!63369 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133223) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!133591 () Unit!8187)

(assert (=> d!63369 (= lt!133591 (choose!1301 (toList!1966 lt!133223) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!170903 () Bool)

(assert (=> d!63369 e!170903))

(declare-fun res!128802 () Bool)

(assert (=> d!63369 (=> (not res!128802) (not e!170903))))

(assert (=> d!63369 (= res!128802 (isStrictlySorted!372 (toList!1966 lt!133223)))))

(assert (=> d!63369 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133223) #b0000000000000000000000000000000000000000000000000000000000000000) lt!133591)))

(declare-fun b!263748 () Bool)

(assert (=> b!263748 (= e!170903 (containsKey!311 (toList!1966 lt!133223) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!63369 res!128802) b!263748))

(assert (=> d!63369 m!279601))

(assert (=> d!63369 m!279601))

(assert (=> d!63369 m!279603))

(declare-fun m!280299 () Bool)

(assert (=> d!63369 m!280299))

(declare-fun m!280301 () Bool)

(assert (=> d!63369 m!280301))

(assert (=> b!263748 m!279597))

(assert (=> b!263413 d!63369))

(declare-fun d!63371 () Bool)

(assert (=> d!63371 (= (isDefined!261 (getValueByKey!319 (toList!1966 lt!133223) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!545 (getValueByKey!319 (toList!1966 lt!133223) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!9293 () Bool)

(assert (= bs!9293 d!63371))

(assert (=> bs!9293 m!279601))

(declare-fun m!280303 () Bool)

(assert (=> bs!9293 m!280303))

(assert (=> b!263413 d!63371))

(declare-fun b!263751 () Bool)

(declare-fun e!170905 () Option!325)

(assert (=> b!263751 (= e!170905 (getValueByKey!319 (t!8957 (toList!1966 lt!133223)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263749 () Bool)

(declare-fun e!170904 () Option!325)

(assert (=> b!263749 (= e!170904 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133223)))))))

(declare-fun d!63373 () Bool)

(declare-fun c!45026 () Bool)

(assert (=> d!63373 (= c!45026 (and ((_ is Cons!3868) (toList!1966 lt!133223)) (= (_1!2497 (h!4534 (toList!1966 lt!133223))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63373 (= (getValueByKey!319 (toList!1966 lt!133223) #b0000000000000000000000000000000000000000000000000000000000000000) e!170904)))

(declare-fun b!263752 () Bool)

(assert (=> b!263752 (= e!170905 None!323)))

(declare-fun b!263750 () Bool)

(assert (=> b!263750 (= e!170904 e!170905)))

(declare-fun c!45027 () Bool)

(assert (=> b!263750 (= c!45027 (and ((_ is Cons!3868) (toList!1966 lt!133223)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133223))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!63373 c!45026) b!263749))

(assert (= (and d!63373 (not c!45026)) b!263750))

(assert (= (and b!263750 c!45027) b!263751))

(assert (= (and b!263750 (not c!45027)) b!263752))

(declare-fun m!280305 () Bool)

(assert (=> b!263751 m!280305))

(assert (=> b!263413 d!63373))

(declare-fun d!63375 () Bool)

(declare-fun e!170906 () Bool)

(assert (=> d!63375 e!170906))

(declare-fun res!128803 () Bool)

(assert (=> d!63375 (=> res!128803 e!170906)))

(declare-fun lt!133593 () Bool)

(assert (=> d!63375 (= res!128803 (not lt!133593))))

(declare-fun lt!133592 () Bool)

(assert (=> d!63375 (= lt!133593 lt!133592)))

(declare-fun lt!133594 () Unit!8187)

(declare-fun e!170907 () Unit!8187)

(assert (=> d!63375 (= lt!133594 e!170907)))

(declare-fun c!45028 () Bool)

(assert (=> d!63375 (= c!45028 lt!133592)))

(assert (=> d!63375 (= lt!133592 (containsKey!311 (toList!1966 lt!133482) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!63375 (= (contains!1911 lt!133482 #b0000000000000000000000000000000000000000000000000000000000000000) lt!133593)))

(declare-fun b!263753 () Bool)

(declare-fun lt!133595 () Unit!8187)

(assert (=> b!263753 (= e!170907 lt!133595)))

(assert (=> b!263753 (= lt!133595 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133482) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!263753 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133482) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263754 () Bool)

(declare-fun Unit!8218 () Unit!8187)

(assert (=> b!263754 (= e!170907 Unit!8218)))

(declare-fun b!263755 () Bool)

(assert (=> b!263755 (= e!170906 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133482) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63375 c!45028) b!263753))

(assert (= (and d!63375 (not c!45028)) b!263754))

(assert (= (and d!63375 (not res!128803)) b!263755))

(declare-fun m!280307 () Bool)

(assert (=> d!63375 m!280307))

(declare-fun m!280309 () Bool)

(assert (=> b!263753 m!280309))

(declare-fun m!280311 () Bool)

(assert (=> b!263753 m!280311))

(assert (=> b!263753 m!280311))

(declare-fun m!280313 () Bool)

(assert (=> b!263753 m!280313))

(assert (=> b!263755 m!280311))

(assert (=> b!263755 m!280311))

(assert (=> b!263755 m!280313))

(assert (=> d!63253 d!63375))

(assert (=> d!63253 d!63097))

(declare-fun d!63377 () Bool)

(declare-fun res!128808 () Bool)

(declare-fun e!170912 () Bool)

(assert (=> d!63377 (=> res!128808 e!170912)))

(assert (=> d!63377 (= res!128808 (or ((_ is Nil!3869) lt!133511) ((_ is Nil!3869) (t!8957 lt!133511))))))

(assert (=> d!63377 (= (isStrictlySorted!372 lt!133511) e!170912)))

(declare-fun b!263760 () Bool)

(declare-fun e!170913 () Bool)

(assert (=> b!263760 (= e!170912 e!170913)))

(declare-fun res!128809 () Bool)

(assert (=> b!263760 (=> (not res!128809) (not e!170913))))

(assert (=> b!263760 (= res!128809 (bvslt (_1!2497 (h!4534 lt!133511)) (_1!2497 (h!4534 (t!8957 lt!133511)))))))

(declare-fun b!263761 () Bool)

(assert (=> b!263761 (= e!170913 (isStrictlySorted!372 (t!8957 lt!133511)))))

(assert (= (and d!63377 (not res!128808)) b!263760))

(assert (= (and b!263760 res!128809) b!263761))

(declare-fun m!280315 () Bool)

(assert (=> b!263761 m!280315))

(assert (=> d!63287 d!63377))

(declare-fun d!63379 () Bool)

(declare-fun res!128810 () Bool)

(declare-fun e!170914 () Bool)

(assert (=> d!63379 (=> res!128810 e!170914)))

(assert (=> d!63379 (= res!128810 (or ((_ is Nil!3869) (toList!1966 (map!2757 thiss!1504))) ((_ is Nil!3869) (t!8957 (toList!1966 (map!2757 thiss!1504))))))))

(assert (=> d!63379 (= (isStrictlySorted!372 (toList!1966 (map!2757 thiss!1504))) e!170914)))

(declare-fun b!263762 () Bool)

(declare-fun e!170915 () Bool)

(assert (=> b!263762 (= e!170914 e!170915)))

(declare-fun res!128811 () Bool)

(assert (=> b!263762 (=> (not res!128811) (not e!170915))))

(assert (=> b!263762 (= res!128811 (bvslt (_1!2497 (h!4534 (toList!1966 (map!2757 thiss!1504)))) (_1!2497 (h!4534 (t!8957 (toList!1966 (map!2757 thiss!1504)))))))))

(declare-fun b!263763 () Bool)

(assert (=> b!263763 (= e!170915 (isStrictlySorted!372 (t!8957 (toList!1966 (map!2757 thiss!1504)))))))

(assert (= (and d!63379 (not res!128810)) b!263762))

(assert (= (and b!263762 res!128811) b!263763))

(declare-fun m!280317 () Bool)

(assert (=> b!263763 m!280317))

(assert (=> d!63287 d!63379))

(declare-fun d!63381 () Bool)

(declare-fun lt!133596 () Bool)

(assert (=> d!63381 (= lt!133596 (select (content!175 (toList!1966 lt!133457)) (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))))

(declare-fun e!170917 () Bool)

(assert (=> d!63381 (= lt!133596 e!170917)))

(declare-fun res!128813 () Bool)

(assert (=> d!63381 (=> (not res!128813) (not e!170917))))

(assert (=> d!63381 (= res!128813 ((_ is Cons!3868) (toList!1966 lt!133457)))))

(assert (=> d!63381 (= (contains!1913 (toList!1966 lt!133457) (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))) lt!133596)))

(declare-fun b!263764 () Bool)

(declare-fun e!170916 () Bool)

(assert (=> b!263764 (= e!170917 e!170916)))

(declare-fun res!128812 () Bool)

(assert (=> b!263764 (=> res!128812 e!170916)))

(assert (=> b!263764 (= res!128812 (= (h!4534 (toList!1966 lt!133457)) (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))))

(declare-fun b!263765 () Bool)

(assert (=> b!263765 (= e!170916 (contains!1913 (t!8957 (toList!1966 lt!133457)) (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))))

(assert (= (and d!63381 res!128813) b!263764))

(assert (= (and b!263764 (not res!128812)) b!263765))

(declare-fun m!280319 () Bool)

(assert (=> d!63381 m!280319))

(declare-fun m!280321 () Bool)

(assert (=> d!63381 m!280321))

(declare-fun m!280323 () Bool)

(assert (=> b!263765 m!280323))

(assert (=> b!263569 d!63381))

(assert (=> d!63289 d!63029))

(declare-fun d!63383 () Bool)

(assert (=> d!63383 (= (apply!262 lt!133408 #b1000000000000000000000000000000000000000000000000000000000000000) (get!3095 (getValueByKey!319 (toList!1966 lt!133408) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9294 () Bool)

(assert (= bs!9294 d!63383))

(declare-fun m!280325 () Bool)

(assert (=> bs!9294 m!280325))

(assert (=> bs!9294 m!280325))

(declare-fun m!280327 () Bool)

(assert (=> bs!9294 m!280327))

(assert (=> b!263436 d!63383))

(declare-fun d!63385 () Bool)

(assert (=> d!63385 (= (isEmpty!545 (getValueByKey!319 (toList!1966 lt!133034) key!932)) (not ((_ is Some!324) (getValueByKey!319 (toList!1966 lt!133034) key!932))))))

(assert (=> d!63085 d!63385))

(assert (=> b!263387 d!63111))

(declare-fun d!63387 () Bool)

(assert (=> d!63387 (= (validKeyInArray!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!263442 d!63387))

(declare-fun d!63389 () Bool)

(declare-fun res!128814 () Bool)

(declare-fun e!170918 () Bool)

(assert (=> d!63389 (=> res!128814 e!170918)))

(assert (=> d!63389 (= res!128814 (and ((_ is Cons!3868) (toList!1966 lt!133278)) (= (_1!2497 (h!4534 (toList!1966 lt!133278))) (select (arr!5998 lt!133048) #b00000000000000000000000000000000))))))

(assert (=> d!63389 (= (containsKey!311 (toList!1966 lt!133278) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)) e!170918)))

(declare-fun b!263766 () Bool)

(declare-fun e!170919 () Bool)

(assert (=> b!263766 (= e!170918 e!170919)))

(declare-fun res!128815 () Bool)

(assert (=> b!263766 (=> (not res!128815) (not e!170919))))

(assert (=> b!263766 (= res!128815 (and (or (not ((_ is Cons!3868) (toList!1966 lt!133278))) (bvsle (_1!2497 (h!4534 (toList!1966 lt!133278))) (select (arr!5998 lt!133048) #b00000000000000000000000000000000))) ((_ is Cons!3868) (toList!1966 lt!133278)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133278))) (select (arr!5998 lt!133048) #b00000000000000000000000000000000))))))

(declare-fun b!263767 () Bool)

(assert (=> b!263767 (= e!170919 (containsKey!311 (t!8957 (toList!1966 lt!133278)) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(assert (= (and d!63389 (not res!128814)) b!263766))

(assert (= (and b!263766 res!128815) b!263767))

(assert (=> b!263767 m!279233))

(declare-fun m!280329 () Bool)

(assert (=> b!263767 m!280329))

(assert (=> d!63061 d!63389))

(declare-fun e!170920 () Bool)

(declare-fun b!263768 () Bool)

(assert (=> b!263768 (= e!170920 (contains!1914 (ite c!44899 (Cons!3869 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!263770 () Bool)

(declare-fun e!170923 () Bool)

(declare-fun call!25254 () Bool)

(assert (=> b!263770 (= e!170923 call!25254)))

(declare-fun b!263771 () Bool)

(declare-fun e!170921 () Bool)

(assert (=> b!263771 (= e!170921 e!170923)))

(declare-fun c!45029 () Bool)

(assert (=> b!263771 (= c!45029 (validKeyInArray!0 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!263769 () Bool)

(declare-fun e!170922 () Bool)

(assert (=> b!263769 (= e!170922 e!170921)))

(declare-fun res!128817 () Bool)

(assert (=> b!263769 (=> (not res!128817) (not e!170921))))

(assert (=> b!263769 (= res!128817 (not e!170920))))

(declare-fun res!128818 () Bool)

(assert (=> b!263769 (=> (not res!128818) (not e!170920))))

(assert (=> b!263769 (= res!128818 (validKeyInArray!0 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun d!63391 () Bool)

(declare-fun res!128816 () Bool)

(assert (=> d!63391 (=> res!128816 e!170922)))

(assert (=> d!63391 (= res!128816 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(assert (=> d!63391 (= (arrayNoDuplicates!0 lt!133048 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!44899 (Cons!3869 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870))) e!170922)))

(declare-fun bm!25251 () Bool)

(assert (=> bm!25251 (= call!25254 (arrayNoDuplicates!0 lt!133048 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!45029 (Cons!3869 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!44899 (Cons!3869 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870))) (ite c!44899 (Cons!3869 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870)))))))

(declare-fun b!263772 () Bool)

(assert (=> b!263772 (= e!170923 call!25254)))

(assert (= (and d!63391 (not res!128816)) b!263769))

(assert (= (and b!263769 res!128818) b!263768))

(assert (= (and b!263769 res!128817) b!263771))

(assert (= (and b!263771 c!45029) b!263770))

(assert (= (and b!263771 (not c!45029)) b!263772))

(assert (= (or b!263770 b!263772) bm!25251))

(declare-fun m!280331 () Bool)

(assert (=> b!263768 m!280331))

(assert (=> b!263768 m!280331))

(declare-fun m!280333 () Bool)

(assert (=> b!263768 m!280333))

(assert (=> b!263771 m!280331))

(assert (=> b!263771 m!280331))

(declare-fun m!280335 () Bool)

(assert (=> b!263771 m!280335))

(assert (=> b!263769 m!280331))

(assert (=> b!263769 m!280331))

(assert (=> b!263769 m!280335))

(assert (=> bm!25251 m!280331))

(declare-fun m!280337 () Bool)

(assert (=> bm!25251 m!280337))

(assert (=> bm!25204 d!63391))

(assert (=> b!263593 d!63105))

(declare-fun d!63393 () Bool)

(assert (=> d!63393 (= (validKeyInArray!0 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!263406 d!63393))

(declare-fun d!63395 () Bool)

(declare-fun e!170924 () Bool)

(assert (=> d!63395 e!170924))

(declare-fun res!128819 () Bool)

(assert (=> d!63395 (=> res!128819 e!170924)))

(declare-fun lt!133598 () Bool)

(assert (=> d!63395 (= res!128819 (not lt!133598))))

(declare-fun lt!133597 () Bool)

(assert (=> d!63395 (= lt!133598 lt!133597)))

(declare-fun lt!133599 () Unit!8187)

(declare-fun e!170925 () Unit!8187)

(assert (=> d!63395 (= lt!133599 e!170925)))

(declare-fun c!45030 () Bool)

(assert (=> d!63395 (= c!45030 lt!133597)))

(assert (=> d!63395 (= lt!133597 (containsKey!311 (toList!1966 lt!133534) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!63395 (= (contains!1911 lt!133534 #b1000000000000000000000000000000000000000000000000000000000000000) lt!133598)))

(declare-fun b!263773 () Bool)

(declare-fun lt!133600 () Unit!8187)

(assert (=> b!263773 (= e!170925 lt!133600)))

(assert (=> b!263773 (= lt!133600 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133534) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!263773 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133534) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263774 () Bool)

(declare-fun Unit!8219 () Unit!8187)

(assert (=> b!263774 (= e!170925 Unit!8219)))

(declare-fun b!263775 () Bool)

(assert (=> b!263775 (= e!170924 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133534) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63395 c!45030) b!263773))

(assert (= (and d!63395 (not c!45030)) b!263774))

(assert (= (and d!63395 (not res!128819)) b!263775))

(declare-fun m!280339 () Bool)

(assert (=> d!63395 m!280339))

(declare-fun m!280341 () Bool)

(assert (=> b!263773 m!280341))

(declare-fun m!280343 () Bool)

(assert (=> b!263773 m!280343))

(assert (=> b!263773 m!280343))

(declare-fun m!280345 () Bool)

(assert (=> b!263773 m!280345))

(assert (=> b!263775 m!280343))

(assert (=> b!263775 m!280343))

(assert (=> b!263775 m!280345))

(assert (=> bm!25239 d!63395))

(declare-fun d!63397 () Bool)

(declare-fun res!128820 () Bool)

(declare-fun e!170926 () Bool)

(assert (=> d!63397 (=> res!128820 e!170926)))

(assert (=> d!63397 (= res!128820 (and ((_ is Cons!3868) (toList!1966 lt!133223)) (= (_1!2497 (h!4534 (toList!1966 lt!133223))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63397 (= (containsKey!311 (toList!1966 lt!133223) #b0000000000000000000000000000000000000000000000000000000000000000) e!170926)))

(declare-fun b!263776 () Bool)

(declare-fun e!170927 () Bool)

(assert (=> b!263776 (= e!170926 e!170927)))

(declare-fun res!128821 () Bool)

(assert (=> b!263776 (=> (not res!128821) (not e!170927))))

(assert (=> b!263776 (= res!128821 (and (or (not ((_ is Cons!3868) (toList!1966 lt!133223))) (bvsle (_1!2497 (h!4534 (toList!1966 lt!133223))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!3868) (toList!1966 lt!133223)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133223))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!263777 () Bool)

(assert (=> b!263777 (= e!170927 (containsKey!311 (t!8957 (toList!1966 lt!133223)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!63397 (not res!128820)) b!263776))

(assert (= (and b!263776 res!128821) b!263777))

(declare-fun m!280347 () Bool)

(assert (=> b!263777 m!280347))

(assert (=> d!63141 d!63397))

(declare-fun d!63399 () Bool)

(declare-fun e!170928 () Bool)

(assert (=> d!63399 e!170928))

(declare-fun res!128822 () Bool)

(assert (=> d!63399 (=> res!128822 e!170928)))

(declare-fun lt!133602 () Bool)

(assert (=> d!63399 (= res!128822 (not lt!133602))))

(declare-fun lt!133601 () Bool)

(assert (=> d!63399 (= lt!133602 lt!133601)))

(declare-fun lt!133603 () Unit!8187)

(declare-fun e!170929 () Unit!8187)

(assert (=> d!63399 (= lt!133603 e!170929)))

(declare-fun c!45031 () Bool)

(assert (=> d!63399 (= c!45031 lt!133601)))

(assert (=> d!63399 (= lt!133601 (containsKey!311 (toList!1966 lt!133457) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63399 (= (contains!1911 lt!133457 (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))) lt!133602)))

(declare-fun b!263778 () Bool)

(declare-fun lt!133604 () Unit!8187)

(assert (=> b!263778 (= e!170929 lt!133604)))

(assert (=> b!263778 (= lt!133604 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133457) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))

(assert (=> b!263778 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133457) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!263779 () Bool)

(declare-fun Unit!8220 () Unit!8187)

(assert (=> b!263779 (= e!170929 Unit!8220)))

(declare-fun b!263780 () Bool)

(assert (=> b!263780 (= e!170928 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133457) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))))))

(assert (= (and d!63399 c!45031) b!263778))

(assert (= (and d!63399 (not c!45031)) b!263779))

(assert (= (and d!63399 (not res!128822)) b!263780))

(declare-fun m!280349 () Bool)

(assert (=> d!63399 m!280349))

(declare-fun m!280351 () Bool)

(assert (=> b!263778 m!280351))

(assert (=> b!263778 m!279817))

(assert (=> b!263778 m!279817))

(declare-fun m!280353 () Bool)

(assert (=> b!263778 m!280353))

(assert (=> b!263780 m!279817))

(assert (=> b!263780 m!279817))

(assert (=> b!263780 m!280353))

(assert (=> d!63217 d!63399))

(declare-fun e!170931 () Option!325)

(declare-fun b!263783 () Bool)

(assert (=> b!263783 (= e!170931 (getValueByKey!319 (t!8957 lt!133458) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!263781 () Bool)

(declare-fun e!170930 () Option!325)

(assert (=> b!263781 (= e!170930 (Some!324 (_2!2497 (h!4534 lt!133458))))))

(declare-fun c!45032 () Bool)

(declare-fun d!63401 () Bool)

(assert (=> d!63401 (= c!45032 (and ((_ is Cons!3868) lt!133458) (= (_1!2497 (h!4534 lt!133458)) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))))))

(assert (=> d!63401 (= (getValueByKey!319 lt!133458 (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))) e!170930)))

(declare-fun b!263784 () Bool)

(assert (=> b!263784 (= e!170931 None!323)))

(declare-fun b!263782 () Bool)

(assert (=> b!263782 (= e!170930 e!170931)))

(declare-fun c!45033 () Bool)

(assert (=> b!263782 (= c!45033 (and ((_ is Cons!3868) lt!133458) (not (= (_1!2497 (h!4534 lt!133458)) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))))

(assert (= (and d!63401 c!45032) b!263781))

(assert (= (and d!63401 (not c!45032)) b!263782))

(assert (= (and b!263782 c!45033) b!263783))

(assert (= (and b!263782 (not c!45033)) b!263784))

(declare-fun m!280355 () Bool)

(assert (=> b!263783 m!280355))

(assert (=> d!63217 d!63401))

(declare-fun d!63403 () Bool)

(assert (=> d!63403 (= (getValueByKey!319 lt!133458 (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))

(declare-fun lt!133605 () Unit!8187)

(assert (=> d!63403 (= lt!133605 (choose!1302 lt!133458 (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))

(declare-fun e!170932 () Bool)

(assert (=> d!63403 e!170932))

(declare-fun res!128823 () Bool)

(assert (=> d!63403 (=> (not res!128823) (not e!170932))))

(assert (=> d!63403 (= res!128823 (isStrictlySorted!372 lt!133458))))

(assert (=> d!63403 (= (lemmaContainsTupThenGetReturnValue!177 lt!133458 (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))) lt!133605)))

(declare-fun b!263785 () Bool)

(declare-fun res!128824 () Bool)

(assert (=> b!263785 (=> (not res!128824) (not e!170932))))

(assert (=> b!263785 (= res!128824 (containsKey!311 lt!133458 (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!263786 () Bool)

(assert (=> b!263786 (= e!170932 (contains!1913 lt!133458 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))))))

(assert (= (and d!63403 res!128823) b!263785))

(assert (= (and b!263785 res!128824) b!263786))

(assert (=> d!63403 m!279811))

(declare-fun m!280357 () Bool)

(assert (=> d!63403 m!280357))

(declare-fun m!280359 () Bool)

(assert (=> d!63403 m!280359))

(declare-fun m!280361 () Bool)

(assert (=> b!263785 m!280361))

(declare-fun m!280363 () Bool)

(assert (=> b!263786 m!280363))

(assert (=> d!63217 d!63403))

(declare-fun bm!25252 () Bool)

(declare-fun call!25257 () List!3872)

(declare-fun call!25256 () List!3872)

(assert (=> bm!25252 (= call!25257 call!25256)))

(declare-fun bm!25253 () Bool)

(declare-fun call!25255 () List!3872)

(assert (=> bm!25253 (= call!25255 call!25257)))

(declare-fun b!263787 () Bool)

(declare-fun res!128825 () Bool)

(declare-fun e!170937 () Bool)

(assert (=> b!263787 (=> (not res!128825) (not e!170937))))

(declare-fun lt!133606 () List!3872)

(assert (=> b!263787 (= res!128825 (containsKey!311 lt!133606 (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))

(declare-fun c!45034 () Bool)

(declare-fun b!263788 () Bool)

(assert (=> b!263788 (= c!45034 (and ((_ is Cons!3868) (toList!1966 lt!133215)) (bvsgt (_1!2497 (h!4534 (toList!1966 lt!133215))) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))))))

(declare-fun e!170936 () List!3872)

(declare-fun e!170933 () List!3872)

(assert (=> b!263788 (= e!170936 e!170933)))

(declare-fun b!263789 () Bool)

(declare-fun e!170935 () List!3872)

(assert (=> b!263789 (= e!170935 e!170936)))

(declare-fun c!45037 () Bool)

(assert (=> b!263789 (= c!45037 (and ((_ is Cons!3868) (toList!1966 lt!133215)) (= (_1!2497 (h!4534 (toList!1966 lt!133215))) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))))))

(declare-fun b!263790 () Bool)

(assert (=> b!263790 (= e!170937 (contains!1913 lt!133606 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))))))

(declare-fun b!263791 () Bool)

(assert (=> b!263791 (= e!170935 call!25256)))

(declare-fun b!263792 () Bool)

(assert (=> b!263792 (= e!170936 call!25257)))

(declare-fun e!170934 () List!3872)

(declare-fun b!263793 () Bool)

(assert (=> b!263793 (= e!170934 (insertStrictlySorted!179 (t!8957 (toList!1966 lt!133215)) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!263794 () Bool)

(assert (=> b!263794 (= e!170933 call!25255)))

(declare-fun c!45036 () Bool)

(declare-fun bm!25254 () Bool)

(assert (=> bm!25254 (= call!25256 ($colon$colon!107 e!170934 (ite c!45036 (h!4534 (toList!1966 lt!133215)) (tuple2!4975 (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))))

(declare-fun c!45035 () Bool)

(assert (=> bm!25254 (= c!45035 c!45036)))

(declare-fun d!63405 () Bool)

(assert (=> d!63405 e!170937))

(declare-fun res!128826 () Bool)

(assert (=> d!63405 (=> (not res!128826) (not e!170937))))

(assert (=> d!63405 (= res!128826 (isStrictlySorted!372 lt!133606))))

(assert (=> d!63405 (= lt!133606 e!170935)))

(assert (=> d!63405 (= c!45036 (and ((_ is Cons!3868) (toList!1966 lt!133215)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133215))) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))))))

(assert (=> d!63405 (isStrictlySorted!372 (toList!1966 lt!133215))))

(assert (=> d!63405 (= (insertStrictlySorted!179 (toList!1966 lt!133215) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))) lt!133606)))

(declare-fun b!263795 () Bool)

(assert (=> b!263795 (= e!170933 call!25255)))

(declare-fun b!263796 () Bool)

(assert (=> b!263796 (= e!170934 (ite c!45037 (t!8957 (toList!1966 lt!133215)) (ite c!45034 (Cons!3868 (h!4534 (toList!1966 lt!133215)) (t!8957 (toList!1966 lt!133215))) Nil!3869)))))

(assert (= (and d!63405 c!45036) b!263791))

(assert (= (and d!63405 (not c!45036)) b!263789))

(assert (= (and b!263789 c!45037) b!263792))

(assert (= (and b!263789 (not c!45037)) b!263788))

(assert (= (and b!263788 c!45034) b!263795))

(assert (= (and b!263788 (not c!45034)) b!263794))

(assert (= (or b!263795 b!263794) bm!25253))

(assert (= (or b!263792 bm!25253) bm!25252))

(assert (= (or b!263791 bm!25252) bm!25254))

(assert (= (and bm!25254 c!45035) b!263793))

(assert (= (and bm!25254 (not c!45035)) b!263796))

(assert (= (and d!63405 res!128826) b!263787))

(assert (= (and b!263787 res!128825) b!263790))

(declare-fun m!280365 () Bool)

(assert (=> bm!25254 m!280365))

(declare-fun m!280367 () Bool)

(assert (=> b!263793 m!280367))

(declare-fun m!280369 () Bool)

(assert (=> b!263790 m!280369))

(declare-fun m!280371 () Bool)

(assert (=> b!263787 m!280371))

(declare-fun m!280373 () Bool)

(assert (=> d!63405 m!280373))

(declare-fun m!280375 () Bool)

(assert (=> d!63405 m!280375))

(assert (=> d!63217 d!63405))

(declare-fun lt!133607 () Bool)

(declare-fun d!63407 () Bool)

(assert (=> d!63407 (= lt!133607 (select (content!175 (toList!1966 lt!133490)) (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))))

(declare-fun e!170939 () Bool)

(assert (=> d!63407 (= lt!133607 e!170939)))

(declare-fun res!128828 () Bool)

(assert (=> d!63407 (=> (not res!128828) (not e!170939))))

(assert (=> d!63407 (= res!128828 ((_ is Cons!3868) (toList!1966 lt!133490)))))

(assert (=> d!63407 (= (contains!1913 (toList!1966 lt!133490) (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))) lt!133607)))

(declare-fun b!263797 () Bool)

(declare-fun e!170938 () Bool)

(assert (=> b!263797 (= e!170939 e!170938)))

(declare-fun res!128827 () Bool)

(assert (=> b!263797 (=> res!128827 e!170938)))

(assert (=> b!263797 (= res!128827 (= (h!4534 (toList!1966 lt!133490)) (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))))

(declare-fun b!263798 () Bool)

(assert (=> b!263798 (= e!170938 (contains!1913 (t!8957 (toList!1966 lt!133490)) (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))))

(assert (= (and d!63407 res!128828) b!263797))

(assert (= (and b!263797 (not res!128827)) b!263798))

(declare-fun m!280377 () Bool)

(assert (=> d!63407 m!280377))

(declare-fun m!280379 () Bool)

(assert (=> d!63407 m!280379))

(declare-fun m!280381 () Bool)

(assert (=> b!263798 m!280381))

(assert (=> b!263605 d!63407))

(declare-fun e!170945 () Bool)

(declare-fun lt!133609 () ListLongMap!3901)

(declare-fun b!263799 () Bool)

(assert (=> b!263799 (= e!170945 (= lt!133609 (getCurrentListMapNoExtraKeys!581 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504))) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4843 thiss!1504))))))

(declare-fun e!170943 () Bool)

(declare-fun b!263800 () Bool)

(assert (=> b!263800 (= e!170943 (validKeyInArray!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (=> b!263800 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!263801 () Bool)

(declare-fun res!128829 () Bool)

(declare-fun e!170944 () Bool)

(assert (=> b!263801 (=> (not res!128829) (not e!170944))))

(assert (=> b!263801 (= res!128829 (not (contains!1911 lt!133609 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!263802 () Bool)

(declare-fun e!170946 () Bool)

(assert (=> b!263802 (= e!170944 e!170946)))

(declare-fun c!45039 () Bool)

(assert (=> b!263802 (= c!45039 e!170943)))

(declare-fun res!128830 () Bool)

(assert (=> b!263802 (=> (not res!128830) (not e!170943))))

(assert (=> b!263802 (= res!128830 (bvslt #b00000000000000000000000000000000 (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(declare-fun b!263803 () Bool)

(declare-fun e!170942 () ListLongMap!3901)

(declare-fun e!170940 () ListLongMap!3901)

(assert (=> b!263803 (= e!170942 e!170940)))

(declare-fun c!45041 () Bool)

(assert (=> b!263803 (= c!45041 (validKeyInArray!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!263804 () Bool)

(assert (=> b!263804 (= e!170945 (isEmpty!546 lt!133609))))

(declare-fun call!25258 () ListLongMap!3901)

(declare-fun bm!25255 () Bool)

(assert (=> bm!25255 (= call!25258 (getCurrentListMapNoExtraKeys!581 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504))) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4843 thiss!1504)))))

(declare-fun d!63409 () Bool)

(assert (=> d!63409 e!170944))

(declare-fun res!128832 () Bool)

(assert (=> d!63409 (=> (not res!128832) (not e!170944))))

(assert (=> d!63409 (= res!128832 (not (contains!1911 lt!133609 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63409 (= lt!133609 e!170942)))

(declare-fun c!45038 () Bool)

(assert (=> d!63409 (= c!45038 (bvsge #b00000000000000000000000000000000 (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(assert (=> d!63409 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63409 (= (getCurrentListMapNoExtraKeys!581 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504))) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)) lt!133609)))

(declare-fun b!263805 () Bool)

(assert (=> b!263805 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(assert (=> b!263805 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6348 (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504))))))))

(declare-fun e!170941 () Bool)

(assert (=> b!263805 (= e!170941 (= (apply!262 lt!133609 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)) (get!3094 (select (arr!5997 (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!263806 () Bool)

(assert (=> b!263806 (= e!170946 e!170945)))

(declare-fun c!45040 () Bool)

(assert (=> b!263806 (= c!45040 (bvslt #b00000000000000000000000000000000 (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(declare-fun b!263807 () Bool)

(assert (=> b!263807 (= e!170942 (ListLongMap!3902 Nil!3869))))

(declare-fun b!263808 () Bool)

(declare-fun lt!133608 () Unit!8187)

(declare-fun lt!133611 () Unit!8187)

(assert (=> b!263808 (= lt!133608 lt!133611)))

(declare-fun lt!133613 () (_ BitVec 64))

(declare-fun lt!133610 () V!8523)

(declare-fun lt!133614 () ListLongMap!3901)

(declare-fun lt!133612 () (_ BitVec 64))

(assert (=> b!263808 (not (contains!1911 (+!705 lt!133614 (tuple2!4975 lt!133613 lt!133610)) lt!133612))))

(assert (=> b!263808 (= lt!133611 (addStillNotContains!131 lt!133614 lt!133613 lt!133610 lt!133612))))

(assert (=> b!263808 (= lt!133612 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!263808 (= lt!133610 (get!3094 (select (arr!5997 (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!263808 (= lt!133613 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000))))

(assert (=> b!263808 (= lt!133614 call!25258)))

(assert (=> b!263808 (= e!170940 (+!705 call!25258 (tuple2!4975 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!263809 () Bool)

(assert (=> b!263809 (= e!170940 call!25258)))

(declare-fun b!263810 () Bool)

(assert (=> b!263810 (= e!170946 e!170941)))

(assert (=> b!263810 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(declare-fun res!128831 () Bool)

(assert (=> b!263810 (= res!128831 (contains!1911 lt!133609 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (=> b!263810 (=> (not res!128831) (not e!170941))))

(assert (= (and d!63409 c!45038) b!263807))

(assert (= (and d!63409 (not c!45038)) b!263803))

(assert (= (and b!263803 c!45041) b!263808))

(assert (= (and b!263803 (not c!45041)) b!263809))

(assert (= (or b!263808 b!263809) bm!25255))

(assert (= (and d!63409 res!128832) b!263801))

(assert (= (and b!263801 res!128829) b!263802))

(assert (= (and b!263802 res!128830) b!263800))

(assert (= (and b!263802 c!45039) b!263810))

(assert (= (and b!263802 (not c!45039)) b!263806))

(assert (= (and b!263810 res!128831) b!263805))

(assert (= (and b!263806 c!45040) b!263799))

(assert (= (and b!263806 (not c!45040)) b!263804))

(declare-fun b_lambda!8395 () Bool)

(assert (=> (not b_lambda!8395) (not b!263805)))

(assert (=> b!263805 t!8961))

(declare-fun b_and!13979 () Bool)

(assert (= b_and!13977 (and (=> t!8961 result!5441) b_and!13979)))

(declare-fun b_lambda!8397 () Bool)

(assert (=> (not b_lambda!8397) (not b!263808)))

(assert (=> b!263808 t!8961))

(declare-fun b_and!13981 () Bool)

(assert (= b_and!13979 (and (=> t!8961 result!5441) b_and!13981)))

(declare-fun m!280383 () Bool)

(assert (=> bm!25255 m!280383))

(assert (=> b!263800 m!279625))

(assert (=> b!263800 m!279625))

(assert (=> b!263800 m!279627))

(assert (=> b!263799 m!280383))

(declare-fun m!280385 () Bool)

(assert (=> b!263808 m!280385))

(assert (=> b!263808 m!279229))

(declare-fun m!280387 () Bool)

(assert (=> b!263808 m!280387))

(assert (=> b!263808 m!279625))

(assert (=> b!263808 m!279675))

(declare-fun m!280389 () Bool)

(assert (=> b!263808 m!280389))

(declare-fun m!280391 () Bool)

(assert (=> b!263808 m!280391))

(assert (=> b!263808 m!280389))

(assert (=> b!263808 m!279675))

(assert (=> b!263808 m!279229))

(assert (=> b!263808 m!279677))

(declare-fun m!280393 () Bool)

(assert (=> b!263804 m!280393))

(assert (=> b!263810 m!279625))

(assert (=> b!263810 m!279625))

(declare-fun m!280395 () Bool)

(assert (=> b!263810 m!280395))

(declare-fun m!280397 () Bool)

(assert (=> b!263801 m!280397))

(assert (=> b!263803 m!279625))

(assert (=> b!263803 m!279625))

(assert (=> b!263803 m!279627))

(declare-fun m!280399 () Bool)

(assert (=> d!63409 m!280399))

(assert (=> d!63409 m!279117))

(assert (=> b!263805 m!279229))

(assert (=> b!263805 m!279625))

(assert (=> b!263805 m!279675))

(assert (=> b!263805 m!279625))

(declare-fun m!280401 () Bool)

(assert (=> b!263805 m!280401))

(assert (=> b!263805 m!279675))

(assert (=> b!263805 m!279229))

(assert (=> b!263805 m!279677))

(assert (=> bm!25210 d!63409))

(declare-fun b!263812 () Bool)

(declare-fun e!170947 () Bool)

(declare-fun call!25259 () Bool)

(assert (=> b!263812 (= e!170947 call!25259)))

(declare-fun b!263813 () Bool)

(declare-fun e!170948 () Bool)

(assert (=> b!263813 (= e!170947 e!170948)))

(declare-fun lt!133615 () (_ BitVec 64))

(assert (=> b!263813 (= lt!133615 (select (arr!5998 (_keys!7035 lt!133037)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!133616 () Unit!8187)

(assert (=> b!263813 (= lt!133616 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!7035 lt!133037) lt!133615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!263813 (arrayContainsKey!0 (_keys!7035 lt!133037) lt!133615 #b00000000000000000000000000000000)))

(declare-fun lt!133617 () Unit!8187)

(assert (=> b!263813 (= lt!133617 lt!133616)))

(declare-fun res!128834 () Bool)

(assert (=> b!263813 (= res!128834 (= (seekEntryOrOpen!0 (select (arr!5998 (_keys!7035 lt!133037)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!7035 lt!133037) (mask!11209 lt!133037)) (Found!1210 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!263813 (=> (not res!128834) (not e!170948))))

(declare-fun b!263814 () Bool)

(assert (=> b!263814 (= e!170948 call!25259)))

(declare-fun bm!25256 () Bool)

(assert (=> bm!25256 (= call!25259 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!7035 lt!133037) (mask!11209 lt!133037)))))

(declare-fun b!263811 () Bool)

(declare-fun e!170949 () Bool)

(assert (=> b!263811 (= e!170949 e!170947)))

(declare-fun c!45042 () Bool)

(assert (=> b!263811 (= c!45042 (validKeyInArray!0 (select (arr!5998 (_keys!7035 lt!133037)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!63411 () Bool)

(declare-fun res!128833 () Bool)

(assert (=> d!63411 (=> res!128833 e!170949)))

(assert (=> d!63411 (= res!128833 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 lt!133037))))))

(assert (=> d!63411 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!7035 lt!133037) (mask!11209 lt!133037)) e!170949)))

(assert (= (and d!63411 (not res!128833)) b!263811))

(assert (= (and b!263811 c!45042) b!263813))

(assert (= (and b!263811 (not c!45042)) b!263812))

(assert (= (and b!263813 res!128834) b!263814))

(assert (= (or b!263814 b!263812) bm!25256))

(assert (=> b!263813 m!280159))

(declare-fun m!280403 () Bool)

(assert (=> b!263813 m!280403))

(declare-fun m!280405 () Bool)

(assert (=> b!263813 m!280405))

(assert (=> b!263813 m!280159))

(declare-fun m!280407 () Bool)

(assert (=> b!263813 m!280407))

(declare-fun m!280409 () Bool)

(assert (=> bm!25256 m!280409))

(assert (=> b!263811 m!280159))

(assert (=> b!263811 m!280159))

(assert (=> b!263811 m!280163))

(assert (=> bm!25236 d!63411))

(declare-fun d!63413 () Bool)

(declare-fun res!128835 () Bool)

(declare-fun e!170950 () Bool)

(assert (=> d!63413 (=> res!128835 e!170950)))

(assert (=> d!63413 (= res!128835 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133034))) (= (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133034)))) key!932)))))

(assert (=> d!63413 (= (containsKey!311 (t!8957 (toList!1966 lt!133034)) key!932) e!170950)))

(declare-fun b!263815 () Bool)

(declare-fun e!170951 () Bool)

(assert (=> b!263815 (= e!170950 e!170951)))

(declare-fun res!128836 () Bool)

(assert (=> b!263815 (=> (not res!128836) (not e!170951))))

(assert (=> b!263815 (= res!128836 (and (or (not ((_ is Cons!3868) (t!8957 (toList!1966 lt!133034)))) (bvsle (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133034)))) key!932)) ((_ is Cons!3868) (t!8957 (toList!1966 lt!133034))) (bvslt (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133034)))) key!932)))))

(declare-fun b!263816 () Bool)

(assert (=> b!263816 (= e!170951 (containsKey!311 (t!8957 (t!8957 (toList!1966 lt!133034))) key!932))))

(assert (= (and d!63413 (not res!128835)) b!263815))

(assert (= (and b!263815 res!128836) b!263816))

(declare-fun m!280411 () Bool)

(assert (=> b!263816 m!280411))

(assert (=> b!263402 d!63413))

(declare-fun d!63415 () Bool)

(assert (=> d!63415 (= (isEmpty!545 (getValueByKey!319 (toList!1966 lt!133047) key!932)) (not ((_ is Some!324) (getValueByKey!319 (toList!1966 lt!133047) key!932))))))

(assert (=> d!63137 d!63415))

(declare-fun b!263817 () Bool)

(declare-fun e!170952 () Bool)

(assert (=> b!263817 (= e!170952 (contains!1914 (ite c!44976 (Cons!3869 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) Nil!3870) Nil!3870) (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!263819 () Bool)

(declare-fun e!170955 () Bool)

(declare-fun call!25260 () Bool)

(assert (=> b!263819 (= e!170955 call!25260)))

(declare-fun b!263820 () Bool)

(declare-fun e!170953 () Bool)

(assert (=> b!263820 (= e!170953 e!170955)))

(declare-fun c!45043 () Bool)

(assert (=> b!263820 (= c!45043 (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!263818 () Bool)

(declare-fun e!170954 () Bool)

(assert (=> b!263818 (= e!170954 e!170953)))

(declare-fun res!128838 () Bool)

(assert (=> b!263818 (=> (not res!128838) (not e!170953))))

(assert (=> b!263818 (= res!128838 (not e!170952))))

(declare-fun res!128839 () Bool)

(assert (=> b!263818 (=> (not res!128839) (not e!170952))))

(assert (=> b!263818 (= res!128839 (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!63417 () Bool)

(declare-fun res!128837 () Bool)

(assert (=> d!63417 (=> res!128837 e!170954)))

(assert (=> d!63417 (= res!128837 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63417 (= (arrayNoDuplicates!0 (_keys!7035 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44976 (Cons!3869 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) e!170954)))

(declare-fun bm!25257 () Bool)

(assert (=> bm!25257 (= call!25260 (arrayNoDuplicates!0 (_keys!7035 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!45043 (Cons!3869 (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!44976 (Cons!3869 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) (ite c!44976 (Cons!3869 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) Nil!3870) Nil!3870))))))

(declare-fun b!263821 () Bool)

(assert (=> b!263821 (= e!170955 call!25260)))

(assert (= (and d!63417 (not res!128837)) b!263818))

(assert (= (and b!263818 res!128839) b!263817))

(assert (= (and b!263818 res!128838) b!263820))

(assert (= (and b!263820 c!45043) b!263819))

(assert (= (and b!263820 (not c!45043)) b!263821))

(assert (= (or b!263819 b!263821) bm!25257))

(assert (=> b!263817 m!279575))

(assert (=> b!263817 m!279575))

(declare-fun m!280413 () Bool)

(assert (=> b!263817 m!280413))

(assert (=> b!263820 m!279575))

(assert (=> b!263820 m!279575))

(assert (=> b!263820 m!279761))

(assert (=> b!263818 m!279575))

(assert (=> b!263818 m!279575))

(assert (=> b!263818 m!279761))

(assert (=> bm!25257 m!279575))

(declare-fun m!280415 () Bool)

(assert (=> bm!25257 m!280415))

(assert (=> bm!25230 d!63417))

(assert (=> d!63277 d!63117))

(assert (=> d!63277 d!63045))

(declare-fun d!63419 () Bool)

(assert (=> d!63419 (= (size!6352 lt!133037) (bvadd (_size!1984 lt!133037) (bvsdiv (bvadd (extraKeys!4580 lt!133037) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!263531 d!63419))

(declare-fun d!63421 () Bool)

(declare-fun res!128840 () Bool)

(declare-fun e!170956 () Bool)

(assert (=> d!63421 (=> res!128840 e!170956)))

(assert (=> d!63421 (= res!128840 (= (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!133242))))

(assert (=> d!63421 (= (arrayContainsKey!0 lt!133048 lt!133242 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!170956)))

(declare-fun b!263822 () Bool)

(declare-fun e!170957 () Bool)

(assert (=> b!263822 (= e!170956 e!170957)))

(declare-fun res!128841 () Bool)

(assert (=> b!263822 (=> (not res!128841) (not e!170957))))

(assert (=> b!263822 (= res!128841 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(declare-fun b!263823 () Bool)

(assert (=> b!263823 (= e!170957 (arrayContainsKey!0 lt!133048 lt!133242 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!63421 (not res!128840)) b!263822))

(assert (= (and b!263822 res!128841) b!263823))

(assert (=> d!63421 m!279435))

(declare-fun m!280417 () Bool)

(assert (=> b!263823 m!280417))

(assert (=> b!263229 d!63421))

(declare-fun d!63423 () Bool)

(declare-fun e!170958 () Bool)

(assert (=> d!63423 e!170958))

(declare-fun res!128842 () Bool)

(assert (=> d!63423 (=> res!128842 e!170958)))

(declare-fun lt!133619 () Bool)

(assert (=> d!63423 (= res!128842 (not lt!133619))))

(declare-fun lt!133618 () Bool)

(assert (=> d!63423 (= lt!133619 lt!133618)))

(declare-fun lt!133620 () Unit!8187)

(declare-fun e!170959 () Unit!8187)

(assert (=> d!63423 (= lt!133620 e!170959)))

(declare-fun c!45044 () Bool)

(assert (=> d!63423 (= c!45044 lt!133618)))

(assert (=> d!63423 (= lt!133618 (containsKey!311 (toList!1966 lt!133374) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!63423 (= (contains!1911 lt!133374 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)) lt!133619)))

(declare-fun b!263824 () Bool)

(declare-fun lt!133621 () Unit!8187)

(assert (=> b!263824 (= e!170959 lt!133621)))

(assert (=> b!263824 (= lt!133621 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133374) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!263824 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133374) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!263825 () Bool)

(declare-fun Unit!8221 () Unit!8187)

(assert (=> b!263825 (= e!170959 Unit!8221)))

(declare-fun b!263826 () Bool)

(assert (=> b!263826 (= e!170958 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133374) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!63423 c!45044) b!263824))

(assert (= (and d!63423 (not c!45044)) b!263825))

(assert (= (and d!63423 (not res!128842)) b!263826))

(assert (=> d!63423 m!279177))

(declare-fun m!280419 () Bool)

(assert (=> d!63423 m!280419))

(assert (=> b!263824 m!279177))

(declare-fun m!280421 () Bool)

(assert (=> b!263824 m!280421))

(assert (=> b!263824 m!279177))

(declare-fun m!280423 () Bool)

(assert (=> b!263824 m!280423))

(assert (=> b!263824 m!280423))

(declare-fun m!280425 () Bool)

(assert (=> b!263824 m!280425))

(assert (=> b!263826 m!279177))

(assert (=> b!263826 m!280423))

(assert (=> b!263826 m!280423))

(assert (=> b!263826 m!280425))

(assert (=> b!263394 d!63423))

(declare-fun d!63425 () Bool)

(declare-fun e!170960 () Bool)

(assert (=> d!63425 e!170960))

(declare-fun res!128843 () Bool)

(assert (=> d!63425 (=> res!128843 e!170960)))

(declare-fun lt!133623 () Bool)

(assert (=> d!63425 (= res!128843 (not lt!133623))))

(declare-fun lt!133622 () Bool)

(assert (=> d!63425 (= lt!133623 lt!133622)))

(declare-fun lt!133624 () Unit!8187)

(declare-fun e!170961 () Unit!8187)

(assert (=> d!63425 (= lt!133624 e!170961)))

(declare-fun c!45045 () Bool)

(assert (=> d!63425 (= c!45045 lt!133622)))

(assert (=> d!63425 (= lt!133622 (containsKey!311 (toList!1966 lt!133465) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))

(assert (=> d!63425 (= (contains!1911 lt!133465 (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))) lt!133623)))

(declare-fun b!263827 () Bool)

(declare-fun lt!133625 () Unit!8187)

(assert (=> b!263827 (= e!170961 lt!133625)))

(assert (=> b!263827 (= lt!133625 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133465) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))

(assert (=> b!263827 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133465) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))

(declare-fun b!263828 () Bool)

(declare-fun Unit!8222 () Unit!8187)

(assert (=> b!263828 (= e!170961 Unit!8222)))

(declare-fun b!263829 () Bool)

(assert (=> b!263829 (= e!170960 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133465) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))))))

(assert (= (and d!63425 c!45045) b!263827))

(assert (= (and d!63425 (not c!45045)) b!263828))

(assert (= (and d!63425 (not res!128843)) b!263829))

(declare-fun m!280427 () Bool)

(assert (=> d!63425 m!280427))

(declare-fun m!280429 () Bool)

(assert (=> b!263827 m!280429))

(assert (=> b!263827 m!279853))

(assert (=> b!263827 m!279853))

(declare-fun m!280431 () Bool)

(assert (=> b!263827 m!280431))

(assert (=> b!263829 m!279853))

(assert (=> b!263829 m!279853))

(assert (=> b!263829 m!280431))

(assert (=> d!63227 d!63425))

(declare-fun e!170963 () Option!325)

(declare-fun b!263832 () Bool)

(assert (=> b!263832 (= e!170963 (getValueByKey!319 (t!8957 lt!133466) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))

(declare-fun b!263830 () Bool)

(declare-fun e!170962 () Option!325)

(assert (=> b!263830 (= e!170962 (Some!324 (_2!2497 (h!4534 lt!133466))))))

(declare-fun d!63427 () Bool)

(declare-fun c!45046 () Bool)

(assert (=> d!63427 (= c!45046 (and ((_ is Cons!3868) lt!133466) (= (_1!2497 (h!4534 lt!133466)) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))))))

(assert (=> d!63427 (= (getValueByKey!319 lt!133466 (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))) e!170962)))

(declare-fun b!263833 () Bool)

(assert (=> b!263833 (= e!170963 None!323)))

(declare-fun b!263831 () Bool)

(assert (=> b!263831 (= e!170962 e!170963)))

(declare-fun c!45047 () Bool)

(assert (=> b!263831 (= c!45047 (and ((_ is Cons!3868) lt!133466) (not (= (_1!2497 (h!4534 lt!133466)) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63427 c!45046) b!263830))

(assert (= (and d!63427 (not c!45046)) b!263831))

(assert (= (and b!263831 c!45047) b!263832))

(assert (= (and b!263831 (not c!45047)) b!263833))

(declare-fun m!280433 () Bool)

(assert (=> b!263832 m!280433))

(assert (=> d!63227 d!63427))

(declare-fun d!63429 () Bool)

(assert (=> d!63429 (= (getValueByKey!319 lt!133466 (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))

(declare-fun lt!133626 () Unit!8187)

(assert (=> d!63429 (= lt!133626 (choose!1302 lt!133466 (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))

(declare-fun e!170964 () Bool)

(assert (=> d!63429 e!170964))

(declare-fun res!128844 () Bool)

(assert (=> d!63429 (=> (not res!128844) (not e!170964))))

(assert (=> d!63429 (= res!128844 (isStrictlySorted!372 lt!133466))))

(assert (=> d!63429 (= (lemmaContainsTupThenGetReturnValue!177 lt!133466 (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))) lt!133626)))

(declare-fun b!263834 () Bool)

(declare-fun res!128845 () Bool)

(assert (=> b!263834 (=> (not res!128845) (not e!170964))))

(assert (=> b!263834 (= res!128845 (containsKey!311 lt!133466 (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))

(declare-fun b!263835 () Bool)

(assert (=> b!263835 (= e!170964 (contains!1913 lt!133466 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))))))

(assert (= (and d!63429 res!128844) b!263834))

(assert (= (and b!263834 res!128845) b!263835))

(assert (=> d!63429 m!279847))

(declare-fun m!280435 () Bool)

(assert (=> d!63429 m!280435))

(declare-fun m!280437 () Bool)

(assert (=> d!63429 m!280437))

(declare-fun m!280439 () Bool)

(assert (=> b!263834 m!280439))

(declare-fun m!280441 () Bool)

(assert (=> b!263835 m!280441))

(assert (=> d!63227 d!63429))

(declare-fun bm!25258 () Bool)

(declare-fun call!25263 () List!3872)

(declare-fun call!25262 () List!3872)

(assert (=> bm!25258 (= call!25263 call!25262)))

(declare-fun bm!25259 () Bool)

(declare-fun call!25261 () List!3872)

(assert (=> bm!25259 (= call!25261 call!25263)))

(declare-fun b!263836 () Bool)

(declare-fun res!128846 () Bool)

(declare-fun e!170969 () Bool)

(assert (=> b!263836 (=> (not res!128846) (not e!170969))))

(declare-fun lt!133627 () List!3872)

(assert (=> b!263836 (= res!128846 (containsKey!311 lt!133627 (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))

(declare-fun c!45048 () Bool)

(declare-fun b!263837 () Bool)

(assert (=> b!263837 (= c!45048 (and ((_ is Cons!3868) (toList!1966 lt!133221)) (bvsgt (_1!2497 (h!4534 (toList!1966 lt!133221))) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))))))

(declare-fun e!170968 () List!3872)

(declare-fun e!170965 () List!3872)

(assert (=> b!263837 (= e!170968 e!170965)))

(declare-fun b!263838 () Bool)

(declare-fun e!170967 () List!3872)

(assert (=> b!263838 (= e!170967 e!170968)))

(declare-fun c!45051 () Bool)

(assert (=> b!263838 (= c!45051 (and ((_ is Cons!3868) (toList!1966 lt!133221)) (= (_1!2497 (h!4534 (toList!1966 lt!133221))) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))))))

(declare-fun b!263839 () Bool)

(assert (=> b!263839 (= e!170969 (contains!1913 lt!133627 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))))))

(declare-fun b!263840 () Bool)

(assert (=> b!263840 (= e!170967 call!25262)))

(declare-fun b!263841 () Bool)

(assert (=> b!263841 (= e!170968 call!25263)))

(declare-fun b!263842 () Bool)

(declare-fun e!170966 () List!3872)

(assert (=> b!263842 (= e!170966 (insertStrictlySorted!179 (t!8957 (toList!1966 lt!133221)) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))

(declare-fun b!263843 () Bool)

(assert (=> b!263843 (= e!170965 call!25261)))

(declare-fun bm!25260 () Bool)

(declare-fun c!45050 () Bool)

(assert (=> bm!25260 (= call!25262 ($colon$colon!107 e!170966 (ite c!45050 (h!4534 (toList!1966 lt!133221)) (tuple2!4975 (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))))

(declare-fun c!45049 () Bool)

(assert (=> bm!25260 (= c!45049 c!45050)))

(declare-fun d!63431 () Bool)

(assert (=> d!63431 e!170969))

(declare-fun res!128847 () Bool)

(assert (=> d!63431 (=> (not res!128847) (not e!170969))))

(assert (=> d!63431 (= res!128847 (isStrictlySorted!372 lt!133627))))

(assert (=> d!63431 (= lt!133627 e!170967)))

(assert (=> d!63431 (= c!45050 (and ((_ is Cons!3868) (toList!1966 lt!133221)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133221))) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))))))

(assert (=> d!63431 (isStrictlySorted!372 (toList!1966 lt!133221))))

(assert (=> d!63431 (= (insertStrictlySorted!179 (toList!1966 lt!133221) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))) lt!133627)))

(declare-fun b!263844 () Bool)

(assert (=> b!263844 (= e!170965 call!25261)))

(declare-fun b!263845 () Bool)

(assert (=> b!263845 (= e!170966 (ite c!45051 (t!8957 (toList!1966 lt!133221)) (ite c!45048 (Cons!3868 (h!4534 (toList!1966 lt!133221)) (t!8957 (toList!1966 lt!133221))) Nil!3869)))))

(assert (= (and d!63431 c!45050) b!263840))

(assert (= (and d!63431 (not c!45050)) b!263838))

(assert (= (and b!263838 c!45051) b!263841))

(assert (= (and b!263838 (not c!45051)) b!263837))

(assert (= (and b!263837 c!45048) b!263844))

(assert (= (and b!263837 (not c!45048)) b!263843))

(assert (= (or b!263844 b!263843) bm!25259))

(assert (= (or b!263841 bm!25259) bm!25258))

(assert (= (or b!263840 bm!25258) bm!25260))

(assert (= (and bm!25260 c!45049) b!263842))

(assert (= (and bm!25260 (not c!45049)) b!263845))

(assert (= (and d!63431 res!128847) b!263836))

(assert (= (and b!263836 res!128846) b!263839))

(declare-fun m!280443 () Bool)

(assert (=> bm!25260 m!280443))

(declare-fun m!280445 () Bool)

(assert (=> b!263842 m!280445))

(declare-fun m!280447 () Bool)

(assert (=> b!263839 m!280447))

(declare-fun m!280449 () Bool)

(assert (=> b!263836 m!280449))

(declare-fun m!280451 () Bool)

(assert (=> d!63431 m!280451))

(declare-fun m!280453 () Bool)

(assert (=> d!63431 m!280453))

(assert (=> d!63227 d!63431))

(declare-fun b!263848 () Bool)

(declare-fun e!170971 () Option!325)

(assert (=> b!263848 (= e!170971 (getValueByKey!319 (t!8957 (t!8957 lt!133288)) (_1!2497 lt!133042)))))

(declare-fun b!263846 () Bool)

(declare-fun e!170970 () Option!325)

(assert (=> b!263846 (= e!170970 (Some!324 (_2!2497 (h!4534 (t!8957 lt!133288)))))))

(declare-fun d!63433 () Bool)

(declare-fun c!45052 () Bool)

(assert (=> d!63433 (= c!45052 (and ((_ is Cons!3868) (t!8957 lt!133288)) (= (_1!2497 (h!4534 (t!8957 lt!133288))) (_1!2497 lt!133042))))))

(assert (=> d!63433 (= (getValueByKey!319 (t!8957 lt!133288) (_1!2497 lt!133042)) e!170970)))

(declare-fun b!263849 () Bool)

(assert (=> b!263849 (= e!170971 None!323)))

(declare-fun b!263847 () Bool)

(assert (=> b!263847 (= e!170970 e!170971)))

(declare-fun c!45053 () Bool)

(assert (=> b!263847 (= c!45053 (and ((_ is Cons!3868) (t!8957 lt!133288)) (not (= (_1!2497 (h!4534 (t!8957 lt!133288))) (_1!2497 lt!133042)))))))

(assert (= (and d!63433 c!45052) b!263846))

(assert (= (and d!63433 (not c!45052)) b!263847))

(assert (= (and b!263847 c!45053) b!263848))

(assert (= (and b!263847 (not c!45053)) b!263849))

(declare-fun m!280455 () Bool)

(assert (=> b!263848 m!280455))

(assert (=> b!263481 d!63433))

(declare-fun e!170977 () Bool)

(declare-fun b!263850 () Bool)

(declare-fun lt!133629 () ListLongMap!3901)

(assert (=> b!263850 (= e!170977 (= lt!133629 (getCurrentListMapNoExtraKeys!581 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!4843 thiss!1504))))))

(declare-fun b!263851 () Bool)

(declare-fun e!170975 () Bool)

(assert (=> b!263851 (= e!170975 (validKeyInArray!0 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!263851 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!263852 () Bool)

(declare-fun res!128848 () Bool)

(declare-fun e!170976 () Bool)

(assert (=> b!263852 (=> (not res!128848) (not e!170976))))

(assert (=> b!263852 (= res!128848 (not (contains!1911 lt!133629 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!263853 () Bool)

(declare-fun e!170978 () Bool)

(assert (=> b!263853 (= e!170976 e!170978)))

(declare-fun c!45055 () Bool)

(assert (=> b!263853 (= c!45055 e!170975)))

(declare-fun res!128849 () Bool)

(assert (=> b!263853 (=> (not res!128849) (not e!170975))))

(assert (=> b!263853 (= res!128849 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(declare-fun b!263854 () Bool)

(declare-fun e!170974 () ListLongMap!3901)

(declare-fun e!170972 () ListLongMap!3901)

(assert (=> b!263854 (= e!170974 e!170972)))

(declare-fun c!45057 () Bool)

(assert (=> b!263854 (= c!45057 (validKeyInArray!0 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!263855 () Bool)

(assert (=> b!263855 (= e!170977 (isEmpty!546 lt!133629))))

(declare-fun bm!25261 () Bool)

(declare-fun call!25264 () ListLongMap!3901)

(assert (=> bm!25261 (= call!25264 (getCurrentListMapNoExtraKeys!581 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!4843 thiss!1504)))))

(declare-fun d!63435 () Bool)

(assert (=> d!63435 e!170976))

(declare-fun res!128851 () Bool)

(assert (=> d!63435 (=> (not res!128851) (not e!170976))))

(assert (=> d!63435 (= res!128851 (not (contains!1911 lt!133629 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63435 (= lt!133629 e!170974)))

(declare-fun c!45054 () Bool)

(assert (=> d!63435 (= c!45054 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(assert (=> d!63435 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63435 (= (getCurrentListMapNoExtraKeys!581 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4843 thiss!1504)) lt!133629)))

(declare-fun b!263856 () Bool)

(assert (=> b!263856 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(assert (=> b!263856 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6348 lt!133045)))))

(declare-fun e!170973 () Bool)

(assert (=> b!263856 (= e!170973 (= (apply!262 lt!133629 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!3094 (select (arr!5997 lt!133045) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!263857 () Bool)

(assert (=> b!263857 (= e!170978 e!170977)))

(declare-fun c!45056 () Bool)

(assert (=> b!263857 (= c!45056 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(declare-fun b!263858 () Bool)

(assert (=> b!263858 (= e!170974 (ListLongMap!3902 Nil!3869))))

(declare-fun b!263859 () Bool)

(declare-fun lt!133628 () Unit!8187)

(declare-fun lt!133631 () Unit!8187)

(assert (=> b!263859 (= lt!133628 lt!133631)))

(declare-fun lt!133633 () (_ BitVec 64))

(declare-fun lt!133632 () (_ BitVec 64))

(declare-fun lt!133634 () ListLongMap!3901)

(declare-fun lt!133630 () V!8523)

(assert (=> b!263859 (not (contains!1911 (+!705 lt!133634 (tuple2!4975 lt!133633 lt!133630)) lt!133632))))

(assert (=> b!263859 (= lt!133631 (addStillNotContains!131 lt!133634 lt!133633 lt!133630 lt!133632))))

(assert (=> b!263859 (= lt!133632 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!263859 (= lt!133630 (get!3094 (select (arr!5997 lt!133045) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!263859 (= lt!133633 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!263859 (= lt!133634 call!25264)))

(assert (=> b!263859 (= e!170972 (+!705 call!25264 (tuple2!4975 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!3094 (select (arr!5997 lt!133045) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!263860 () Bool)

(assert (=> b!263860 (= e!170972 call!25264)))

(declare-fun b!263861 () Bool)

(assert (=> b!263861 (= e!170978 e!170973)))

(assert (=> b!263861 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(declare-fun res!128850 () Bool)

(assert (=> b!263861 (= res!128850 (contains!1911 lt!133629 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!263861 (=> (not res!128850) (not e!170973))))

(assert (= (and d!63435 c!45054) b!263858))

(assert (= (and d!63435 (not c!45054)) b!263854))

(assert (= (and b!263854 c!45057) b!263859))

(assert (= (and b!263854 (not c!45057)) b!263860))

(assert (= (or b!263859 b!263860) bm!25261))

(assert (= (and d!63435 res!128851) b!263852))

(assert (= (and b!263852 res!128848) b!263853))

(assert (= (and b!263853 res!128849) b!263851))

(assert (= (and b!263853 c!45055) b!263861))

(assert (= (and b!263853 (not c!45055)) b!263857))

(assert (= (and b!263861 res!128850) b!263856))

(assert (= (and b!263857 c!45056) b!263850))

(assert (= (and b!263857 (not c!45056)) b!263855))

(declare-fun b_lambda!8399 () Bool)

(assert (=> (not b_lambda!8399) (not b!263856)))

(assert (=> b!263856 t!8961))

(declare-fun b_and!13983 () Bool)

(assert (= b_and!13981 (and (=> t!8961 result!5441) b_and!13983)))

(declare-fun b_lambda!8401 () Bool)

(assert (=> (not b_lambda!8401) (not b!263859)))

(assert (=> b!263859 t!8961))

(declare-fun b_and!13985 () Bool)

(assert (= b_and!13983 (and (=> t!8961 result!5441) b_and!13985)))

(declare-fun m!280457 () Bool)

(assert (=> bm!25261 m!280457))

(assert (=> b!263851 m!279435))

(assert (=> b!263851 m!279435))

(assert (=> b!263851 m!279445))

(assert (=> b!263850 m!280457))

(declare-fun m!280459 () Bool)

(assert (=> b!263859 m!280459))

(assert (=> b!263859 m!279229))

(declare-fun m!280461 () Bool)

(assert (=> b!263859 m!280461))

(assert (=> b!263859 m!279435))

(declare-fun m!280463 () Bool)

(assert (=> b!263859 m!280463))

(declare-fun m!280465 () Bool)

(assert (=> b!263859 m!280465))

(declare-fun m!280467 () Bool)

(assert (=> b!263859 m!280467))

(assert (=> b!263859 m!280465))

(assert (=> b!263859 m!280463))

(assert (=> b!263859 m!279229))

(declare-fun m!280469 () Bool)

(assert (=> b!263859 m!280469))

(declare-fun m!280471 () Bool)

(assert (=> b!263855 m!280471))

(assert (=> b!263861 m!279435))

(assert (=> b!263861 m!279435))

(declare-fun m!280473 () Bool)

(assert (=> b!263861 m!280473))

(declare-fun m!280475 () Bool)

(assert (=> b!263852 m!280475))

(assert (=> b!263854 m!279435))

(assert (=> b!263854 m!279435))

(assert (=> b!263854 m!279445))

(declare-fun m!280477 () Bool)

(assert (=> d!63435 m!280477))

(assert (=> d!63435 m!279117))

(assert (=> b!263856 m!279229))

(assert (=> b!263856 m!279435))

(assert (=> b!263856 m!280463))

(assert (=> b!263856 m!279435))

(declare-fun m!280479 () Bool)

(assert (=> b!263856 m!280479))

(assert (=> b!263856 m!280463))

(assert (=> b!263856 m!279229))

(assert (=> b!263856 m!280469))

(assert (=> b!263592 d!63435))

(declare-fun d!63437 () Bool)

(assert (=> d!63437 (= (inRange!0 (index!7011 lt!133388) (mask!11209 thiss!1504)) (and (bvsge (index!7011 lt!133388) #b00000000000000000000000000000000) (bvslt (index!7011 lt!133388) (bvadd (mask!11209 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!263422 d!63437))

(declare-fun d!63439 () Bool)

(declare-fun e!170979 () Bool)

(assert (=> d!63439 e!170979))

(declare-fun res!128852 () Bool)

(assert (=> d!63439 (=> res!128852 e!170979)))

(declare-fun lt!133636 () Bool)

(assert (=> d!63439 (= res!128852 (not lt!133636))))

(declare-fun lt!133635 () Bool)

(assert (=> d!63439 (= lt!133636 lt!133635)))

(declare-fun lt!133637 () Unit!8187)

(declare-fun e!170980 () Unit!8187)

(assert (=> d!63439 (= lt!133637 e!170980)))

(declare-fun c!45058 () Bool)

(assert (=> d!63439 (= c!45058 lt!133635)))

(assert (=> d!63439 (= lt!133635 (containsKey!311 (toList!1966 lt!133490) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63439 (= (contains!1911 lt!133490 (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))) lt!133636)))

(declare-fun b!263862 () Bool)

(declare-fun lt!133638 () Unit!8187)

(assert (=> b!263862 (= e!170980 lt!133638)))

(assert (=> b!263862 (= lt!133638 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133490) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))

(assert (=> b!263862 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133490) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!263863 () Bool)

(declare-fun Unit!8223 () Unit!8187)

(assert (=> b!263863 (= e!170980 Unit!8223)))

(declare-fun b!263864 () Bool)

(assert (=> b!263864 (= e!170979 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133490) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))))))

(assert (= (and d!63439 c!45058) b!263862))

(assert (= (and d!63439 (not c!45058)) b!263863))

(assert (= (and d!63439 (not res!128852)) b!263864))

(declare-fun m!280481 () Bool)

(assert (=> d!63439 m!280481))

(declare-fun m!280483 () Bool)

(assert (=> b!263862 m!280483))

(assert (=> b!263862 m!279935))

(assert (=> b!263862 m!279935))

(declare-fun m!280485 () Bool)

(assert (=> b!263862 m!280485))

(assert (=> b!263864 m!279935))

(assert (=> b!263864 m!279935))

(assert (=> b!263864 m!280485))

(assert (=> d!63255 d!63439))

(declare-fun e!170982 () Option!325)

(declare-fun b!263867 () Bool)

(assert (=> b!263867 (= e!170982 (getValueByKey!319 (t!8957 lt!133491) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!263865 () Bool)

(declare-fun e!170981 () Option!325)

(assert (=> b!263865 (= e!170981 (Some!324 (_2!2497 (h!4534 lt!133491))))))

(declare-fun d!63441 () Bool)

(declare-fun c!45059 () Bool)

(assert (=> d!63441 (= c!45059 (and ((_ is Cons!3868) lt!133491) (= (_1!2497 (h!4534 lt!133491)) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))))))

(assert (=> d!63441 (= (getValueByKey!319 lt!133491 (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))) e!170981)))

(declare-fun b!263868 () Bool)

(assert (=> b!263868 (= e!170982 None!323)))

(declare-fun b!263866 () Bool)

(assert (=> b!263866 (= e!170981 e!170982)))

(declare-fun c!45060 () Bool)

(assert (=> b!263866 (= c!45060 (and ((_ is Cons!3868) lt!133491) (not (= (_1!2497 (h!4534 lt!133491)) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))))

(assert (= (and d!63441 c!45059) b!263865))

(assert (= (and d!63441 (not c!45059)) b!263866))

(assert (= (and b!263866 c!45060) b!263867))

(assert (= (and b!263866 (not c!45060)) b!263868))

(declare-fun m!280487 () Bool)

(assert (=> b!263867 m!280487))

(assert (=> d!63255 d!63441))

(declare-fun d!63443 () Bool)

(assert (=> d!63443 (= (getValueByKey!319 lt!133491 (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))

(declare-fun lt!133639 () Unit!8187)

(assert (=> d!63443 (= lt!133639 (choose!1302 lt!133491 (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))

(declare-fun e!170983 () Bool)

(assert (=> d!63443 e!170983))

(declare-fun res!128853 () Bool)

(assert (=> d!63443 (=> (not res!128853) (not e!170983))))

(assert (=> d!63443 (= res!128853 (isStrictlySorted!372 lt!133491))))

(assert (=> d!63443 (= (lemmaContainsTupThenGetReturnValue!177 lt!133491 (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))) lt!133639)))

(declare-fun b!263869 () Bool)

(declare-fun res!128854 () Bool)

(assert (=> b!263869 (=> (not res!128854) (not e!170983))))

(assert (=> b!263869 (= res!128854 (containsKey!311 lt!133491 (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!263870 () Bool)

(assert (=> b!263870 (= e!170983 (contains!1913 lt!133491 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))))))

(assert (= (and d!63443 res!128853) b!263869))

(assert (= (and b!263869 res!128854) b!263870))

(assert (=> d!63443 m!279929))

(declare-fun m!280489 () Bool)

(assert (=> d!63443 m!280489))

(declare-fun m!280491 () Bool)

(assert (=> d!63443 m!280491))

(declare-fun m!280493 () Bool)

(assert (=> b!263869 m!280493))

(declare-fun m!280495 () Bool)

(assert (=> b!263870 m!280495))

(assert (=> d!63255 d!63443))

(declare-fun bm!25262 () Bool)

(declare-fun call!25267 () List!3872)

(declare-fun call!25266 () List!3872)

(assert (=> bm!25262 (= call!25267 call!25266)))

(declare-fun bm!25263 () Bool)

(declare-fun call!25265 () List!3872)

(assert (=> bm!25263 (= call!25265 call!25267)))

(declare-fun b!263871 () Bool)

(declare-fun res!128855 () Bool)

(declare-fun e!170988 () Bool)

(assert (=> b!263871 (=> (not res!128855) (not e!170988))))

(declare-fun lt!133640 () List!3872)

(assert (=> b!263871 (= res!128855 (containsKey!311 lt!133640 (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))

(declare-fun c!45061 () Bool)

(declare-fun b!263872 () Bool)

(assert (=> b!263872 (= c!45061 (and ((_ is Cons!3868) (toList!1966 lt!133270)) (bvsgt (_1!2497 (h!4534 (toList!1966 lt!133270))) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))))))

(declare-fun e!170987 () List!3872)

(declare-fun e!170984 () List!3872)

(assert (=> b!263872 (= e!170987 e!170984)))

(declare-fun b!263873 () Bool)

(declare-fun e!170986 () List!3872)

(assert (=> b!263873 (= e!170986 e!170987)))

(declare-fun c!45064 () Bool)

(assert (=> b!263873 (= c!45064 (and ((_ is Cons!3868) (toList!1966 lt!133270)) (= (_1!2497 (h!4534 (toList!1966 lt!133270))) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))))))

(declare-fun b!263874 () Bool)

(assert (=> b!263874 (= e!170988 (contains!1913 lt!133640 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))))))

(declare-fun b!263875 () Bool)

(assert (=> b!263875 (= e!170986 call!25266)))

(declare-fun b!263876 () Bool)

(assert (=> b!263876 (= e!170987 call!25267)))

(declare-fun e!170985 () List!3872)

(declare-fun b!263877 () Bool)

(assert (=> b!263877 (= e!170985 (insertStrictlySorted!179 (t!8957 (toList!1966 lt!133270)) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!263878 () Bool)

(assert (=> b!263878 (= e!170984 call!25265)))

(declare-fun c!45063 () Bool)

(declare-fun bm!25264 () Bool)

(assert (=> bm!25264 (= call!25266 ($colon$colon!107 e!170985 (ite c!45063 (h!4534 (toList!1966 lt!133270)) (tuple2!4975 (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))))

(declare-fun c!45062 () Bool)

(assert (=> bm!25264 (= c!45062 c!45063)))

(declare-fun d!63445 () Bool)

(assert (=> d!63445 e!170988))

(declare-fun res!128856 () Bool)

(assert (=> d!63445 (=> (not res!128856) (not e!170988))))

(assert (=> d!63445 (= res!128856 (isStrictlySorted!372 lt!133640))))

(assert (=> d!63445 (= lt!133640 e!170986)))

(assert (=> d!63445 (= c!45063 (and ((_ is Cons!3868) (toList!1966 lt!133270)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133270))) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))))))

(assert (=> d!63445 (isStrictlySorted!372 (toList!1966 lt!133270))))

(assert (=> d!63445 (= (insertStrictlySorted!179 (toList!1966 lt!133270) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))) lt!133640)))

(declare-fun b!263879 () Bool)

(assert (=> b!263879 (= e!170984 call!25265)))

(declare-fun b!263880 () Bool)

(assert (=> b!263880 (= e!170985 (ite c!45064 (t!8957 (toList!1966 lt!133270)) (ite c!45061 (Cons!3868 (h!4534 (toList!1966 lt!133270)) (t!8957 (toList!1966 lt!133270))) Nil!3869)))))

(assert (= (and d!63445 c!45063) b!263875))

(assert (= (and d!63445 (not c!45063)) b!263873))

(assert (= (and b!263873 c!45064) b!263876))

(assert (= (and b!263873 (not c!45064)) b!263872))

(assert (= (and b!263872 c!45061) b!263879))

(assert (= (and b!263872 (not c!45061)) b!263878))

(assert (= (or b!263879 b!263878) bm!25263))

(assert (= (or b!263876 bm!25263) bm!25262))

(assert (= (or b!263875 bm!25262) bm!25264))

(assert (= (and bm!25264 c!45062) b!263877))

(assert (= (and bm!25264 (not c!45062)) b!263880))

(assert (= (and d!63445 res!128856) b!263871))

(assert (= (and b!263871 res!128855) b!263874))

(declare-fun m!280497 () Bool)

(assert (=> bm!25264 m!280497))

(declare-fun m!280499 () Bool)

(assert (=> b!263877 m!280499))

(declare-fun m!280501 () Bool)

(assert (=> b!263874 m!280501))

(declare-fun m!280503 () Bool)

(assert (=> b!263871 m!280503))

(declare-fun m!280505 () Bool)

(assert (=> d!63445 m!280505))

(declare-fun m!280507 () Bool)

(assert (=> d!63445 m!280507))

(assert (=> d!63255 d!63445))

(declare-fun bm!25265 () Bool)

(declare-fun call!25270 () List!3872)

(declare-fun call!25269 () List!3872)

(assert (=> bm!25265 (= call!25270 call!25269)))

(declare-fun bm!25266 () Bool)

(declare-fun call!25268 () List!3872)

(assert (=> bm!25266 (= call!25268 call!25270)))

(declare-fun b!263881 () Bool)

(declare-fun res!128857 () Bool)

(declare-fun e!170993 () Bool)

(assert (=> b!263881 (=> (not res!128857) (not e!170993))))

(declare-fun lt!133641 () List!3872)

(assert (=> b!263881 (= res!128857 (containsKey!311 lt!133641 (_1!2497 lt!133042)))))

(declare-fun b!263882 () Bool)

(declare-fun c!45065 () Bool)

(assert (=> b!263882 (= c!45065 (and ((_ is Cons!3868) (t!8957 (toList!1966 (map!2757 thiss!1504)))) (bvsgt (_1!2497 (h!4534 (t!8957 (toList!1966 (map!2757 thiss!1504))))) (_1!2497 lt!133042))))))

(declare-fun e!170992 () List!3872)

(declare-fun e!170989 () List!3872)

(assert (=> b!263882 (= e!170992 e!170989)))

(declare-fun b!263883 () Bool)

(declare-fun e!170991 () List!3872)

(assert (=> b!263883 (= e!170991 e!170992)))

(declare-fun c!45068 () Bool)

(assert (=> b!263883 (= c!45068 (and ((_ is Cons!3868) (t!8957 (toList!1966 (map!2757 thiss!1504)))) (= (_1!2497 (h!4534 (t!8957 (toList!1966 (map!2757 thiss!1504))))) (_1!2497 lt!133042))))))

(declare-fun b!263884 () Bool)

(assert (=> b!263884 (= e!170993 (contains!1913 lt!133641 (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(declare-fun b!263885 () Bool)

(assert (=> b!263885 (= e!170991 call!25269)))

(declare-fun b!263886 () Bool)

(assert (=> b!263886 (= e!170992 call!25270)))

(declare-fun b!263887 () Bool)

(declare-fun e!170990 () List!3872)

(assert (=> b!263887 (= e!170990 (insertStrictlySorted!179 (t!8957 (t!8957 (toList!1966 (map!2757 thiss!1504)))) (_1!2497 lt!133042) (_2!2497 lt!133042)))))

(declare-fun b!263888 () Bool)

(assert (=> b!263888 (= e!170989 call!25268)))

(declare-fun bm!25267 () Bool)

(declare-fun c!45067 () Bool)

(assert (=> bm!25267 (= call!25269 ($colon$colon!107 e!170990 (ite c!45067 (h!4534 (t!8957 (toList!1966 (map!2757 thiss!1504)))) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042)))))))

(declare-fun c!45066 () Bool)

(assert (=> bm!25267 (= c!45066 c!45067)))

(declare-fun d!63447 () Bool)

(assert (=> d!63447 e!170993))

(declare-fun res!128858 () Bool)

(assert (=> d!63447 (=> (not res!128858) (not e!170993))))

(assert (=> d!63447 (= res!128858 (isStrictlySorted!372 lt!133641))))

(assert (=> d!63447 (= lt!133641 e!170991)))

(assert (=> d!63447 (= c!45067 (and ((_ is Cons!3868) (t!8957 (toList!1966 (map!2757 thiss!1504)))) (bvslt (_1!2497 (h!4534 (t!8957 (toList!1966 (map!2757 thiss!1504))))) (_1!2497 lt!133042))))))

(assert (=> d!63447 (isStrictlySorted!372 (t!8957 (toList!1966 (map!2757 thiss!1504))))))

(assert (=> d!63447 (= (insertStrictlySorted!179 (t!8957 (toList!1966 (map!2757 thiss!1504))) (_1!2497 lt!133042) (_2!2497 lt!133042)) lt!133641)))

(declare-fun b!263889 () Bool)

(assert (=> b!263889 (= e!170989 call!25268)))

(declare-fun b!263890 () Bool)

(assert (=> b!263890 (= e!170990 (ite c!45068 (t!8957 (t!8957 (toList!1966 (map!2757 thiss!1504)))) (ite c!45065 (Cons!3868 (h!4534 (t!8957 (toList!1966 (map!2757 thiss!1504)))) (t!8957 (t!8957 (toList!1966 (map!2757 thiss!1504))))) Nil!3869)))))

(assert (= (and d!63447 c!45067) b!263885))

(assert (= (and d!63447 (not c!45067)) b!263883))

(assert (= (and b!263883 c!45068) b!263886))

(assert (= (and b!263883 (not c!45068)) b!263882))

(assert (= (and b!263882 c!45065) b!263889))

(assert (= (and b!263882 (not c!45065)) b!263888))

(assert (= (or b!263889 b!263888) bm!25266))

(assert (= (or b!263886 bm!25266) bm!25265))

(assert (= (or b!263885 bm!25265) bm!25267))

(assert (= (and bm!25267 c!45066) b!263887))

(assert (= (and bm!25267 (not c!45066)) b!263890))

(assert (= (and d!63447 res!128858) b!263881))

(assert (= (and b!263881 res!128857) b!263884))

(declare-fun m!280509 () Bool)

(assert (=> bm!25267 m!280509))

(declare-fun m!280511 () Bool)

(assert (=> b!263887 m!280511))

(declare-fun m!280513 () Bool)

(assert (=> b!263884 m!280513))

(declare-fun m!280515 () Bool)

(assert (=> b!263881 m!280515))

(declare-fun m!280517 () Bool)

(assert (=> d!63447 m!280517))

(assert (=> d!63447 m!280317))

(assert (=> b!263629 d!63447))

(declare-fun b!263892 () Bool)

(declare-fun e!170994 () Bool)

(declare-fun call!25271 () Bool)

(assert (=> b!263892 (= e!170994 call!25271)))

(declare-fun b!263893 () Bool)

(declare-fun e!170995 () Bool)

(assert (=> b!263893 (= e!170994 e!170995)))

(declare-fun lt!133642 () (_ BitVec 64))

(assert (=> b!263893 (= lt!133642 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!133643 () Unit!8187)

(assert (=> b!263893 (= lt!133643 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) lt!133642 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!263893 (arrayContainsKey!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) lt!133642 #b00000000000000000000000000000000)))

(declare-fun lt!133644 () Unit!8187)

(assert (=> b!263893 (= lt!133644 lt!133643)))

(declare-fun res!128860 () Bool)

(assert (=> b!263893 (= res!128860 (= (seekEntryOrOpen!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (mask!11209 thiss!1504)) (Found!1210 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!263893 (=> (not res!128860) (not e!170995))))

(declare-fun b!263894 () Bool)

(assert (=> b!263894 (= e!170995 call!25271)))

(declare-fun bm!25268 () Bool)

(assert (=> bm!25268 (= call!25271 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (mask!11209 thiss!1504)))))

(declare-fun b!263891 () Bool)

(declare-fun e!170996 () Bool)

(assert (=> b!263891 (= e!170996 e!170994)))

(declare-fun c!45069 () Bool)

(assert (=> b!263891 (= c!45069 (validKeyInArray!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!63449 () Bool)

(declare-fun res!128859 () Bool)

(assert (=> d!63449 (=> res!128859 e!170996)))

(assert (=> d!63449 (= res!128859 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(assert (=> d!63449 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (mask!11209 thiss!1504)) e!170996)))

(assert (= (and d!63449 (not res!128859)) b!263891))

(assert (= (and b!263891 c!45069) b!263893))

(assert (= (and b!263891 (not c!45069)) b!263892))

(assert (= (and b!263893 res!128860) b!263894))

(assert (= (or b!263894 b!263892) bm!25268))

(declare-fun m!280519 () Bool)

(assert (=> b!263893 m!280519))

(declare-fun m!280521 () Bool)

(assert (=> b!263893 m!280521))

(declare-fun m!280523 () Bool)

(assert (=> b!263893 m!280523))

(assert (=> b!263893 m!280519))

(declare-fun m!280525 () Bool)

(assert (=> b!263893 m!280525))

(declare-fun m!280527 () Bool)

(assert (=> bm!25268 m!280527))

(assert (=> b!263891 m!280519))

(assert (=> b!263891 m!280519))

(declare-fun m!280529 () Bool)

(assert (=> b!263891 m!280529))

(assert (=> bm!25237 d!63449))

(declare-fun d!63451 () Bool)

(assert (=> d!63451 (= (isDefined!261 (getValueByKey!319 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) (select (arr!5998 lt!133048) index!297))) (not (isEmpty!545 (getValueByKey!319 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) (select (arr!5998 lt!133048) index!297)))))))

(declare-fun bs!9295 () Bool)

(assert (= bs!9295 d!63451))

(assert (=> bs!9295 m!279537))

(declare-fun m!280531 () Bool)

(assert (=> bs!9295 m!280531))

(assert (=> b!263331 d!63451))

(declare-fun b!263897 () Bool)

(declare-fun e!170998 () Option!325)

(assert (=> b!263897 (= e!170998 (getValueByKey!319 (t!8957 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (select (arr!5998 lt!133048) index!297)))))

(declare-fun b!263895 () Bool)

(declare-fun e!170997 () Option!325)

(assert (=> b!263895 (= e!170997 (Some!324 (_2!2497 (h!4534 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))))))

(declare-fun d!63453 () Bool)

(declare-fun c!45070 () Bool)

(assert (=> d!63453 (= c!45070 (and ((_ is Cons!3868) (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (= (_1!2497 (h!4534 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) (select (arr!5998 lt!133048) index!297))))))

(assert (=> d!63453 (= (getValueByKey!319 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) (select (arr!5998 lt!133048) index!297)) e!170997)))

(declare-fun b!263898 () Bool)

(assert (=> b!263898 (= e!170998 None!323)))

(declare-fun b!263896 () Bool)

(assert (=> b!263896 (= e!170997 e!170998)))

(declare-fun c!45071 () Bool)

(assert (=> b!263896 (= c!45071 (and ((_ is Cons!3868) (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (not (= (_1!2497 (h!4534 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) (select (arr!5998 lt!133048) index!297)))))))

(assert (= (and d!63453 c!45070) b!263895))

(assert (= (and d!63453 (not c!45070)) b!263896))

(assert (= (and b!263896 c!45071) b!263897))

(assert (= (and b!263896 (not c!45071)) b!263898))

(assert (=> b!263897 m!279285))

(declare-fun m!280533 () Bool)

(assert (=> b!263897 m!280533))

(assert (=> b!263331 d!63453))

(declare-fun b!263901 () Bool)

(declare-fun e!171000 () Option!325)

(assert (=> b!263901 (= e!171000 (getValueByKey!319 (t!8957 (toList!1966 lt!133465)) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))

(declare-fun b!263899 () Bool)

(declare-fun e!170999 () Option!325)

(assert (=> b!263899 (= e!170999 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133465)))))))

(declare-fun d!63455 () Bool)

(declare-fun c!45072 () Bool)

(assert (=> d!63455 (= c!45072 (and ((_ is Cons!3868) (toList!1966 lt!133465)) (= (_1!2497 (h!4534 (toList!1966 lt!133465))) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))))))

(assert (=> d!63455 (= (getValueByKey!319 (toList!1966 lt!133465) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))) e!170999)))

(declare-fun b!263902 () Bool)

(assert (=> b!263902 (= e!171000 None!323)))

(declare-fun b!263900 () Bool)

(assert (=> b!263900 (= e!170999 e!171000)))

(declare-fun c!45073 () Bool)

(assert (=> b!263900 (= c!45073 (and ((_ is Cons!3868) (toList!1966 lt!133465)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133465))) (_1!2497 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63455 c!45072) b!263899))

(assert (= (and d!63455 (not c!45072)) b!263900))

(assert (= (and b!263900 c!45073) b!263901))

(assert (= (and b!263900 (not c!45073)) b!263902))

(declare-fun m!280535 () Bool)

(assert (=> b!263901 m!280535))

(assert (=> b!263572 d!63455))

(declare-fun d!63457 () Bool)

(assert (=> d!63457 (= (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133276 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))) lt!133267)) (v!5504 (getValueByKey!319 (toList!1966 (+!705 lt!133276 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))) lt!133267)))))

(assert (=> d!63265 d!63457))

(declare-fun b!263905 () Bool)

(declare-fun e!171002 () Option!325)

(assert (=> b!263905 (= e!171002 (getValueByKey!319 (t!8957 (toList!1966 (+!705 lt!133276 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))) lt!133267))))

(declare-fun b!263903 () Bool)

(declare-fun e!171001 () Option!325)

(assert (=> b!263903 (= e!171001 (Some!324 (_2!2497 (h!4534 (toList!1966 (+!705 lt!133276 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))))))))

(declare-fun d!63459 () Bool)

(declare-fun c!45074 () Bool)

(assert (=> d!63459 (= c!45074 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133276 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))) (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133276 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))) lt!133267)))))

(assert (=> d!63459 (= (getValueByKey!319 (toList!1966 (+!705 lt!133276 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))) lt!133267) e!171001)))

(declare-fun b!263906 () Bool)

(assert (=> b!263906 (= e!171002 None!323)))

(declare-fun b!263904 () Bool)

(assert (=> b!263904 (= e!171001 e!171002)))

(declare-fun c!45075 () Bool)

(assert (=> b!263904 (= c!45075 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133276 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))) (not (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133276 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))) lt!133267))))))

(assert (= (and d!63459 c!45074) b!263903))

(assert (= (and d!63459 (not c!45074)) b!263904))

(assert (= (and b!263904 c!45075) b!263905))

(assert (= (and b!263904 (not c!45075)) b!263906))

(declare-fun m!280537 () Bool)

(assert (=> b!263905 m!280537))

(assert (=> d!63265 d!63459))

(declare-fun d!63461 () Bool)

(assert (=> d!63461 (arrayContainsKey!0 (_keys!7035 thiss!1504) lt!133316 #b00000000000000000000000000000000)))

(declare-fun lt!133645 () Unit!8187)

(assert (=> d!63461 (= lt!133645 (choose!13 (_keys!7035 thiss!1504) lt!133316 #b00000000000000000000000000000000))))

(assert (=> d!63461 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!63461 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!7035 thiss!1504) lt!133316 #b00000000000000000000000000000000) lt!133645)))

(declare-fun bs!9296 () Bool)

(assert (= bs!9296 d!63461))

(assert (=> bs!9296 m!279455))

(declare-fun m!280539 () Bool)

(assert (=> bs!9296 m!280539))

(assert (=> b!263260 d!63461))

(declare-fun d!63463 () Bool)

(declare-fun res!128861 () Bool)

(declare-fun e!171003 () Bool)

(assert (=> d!63463 (=> res!128861 e!171003)))

(assert (=> d!63463 (= res!128861 (= (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) lt!133316))))

(assert (=> d!63463 (= (arrayContainsKey!0 (_keys!7035 thiss!1504) lt!133316 #b00000000000000000000000000000000) e!171003)))

(declare-fun b!263907 () Bool)

(declare-fun e!171004 () Bool)

(assert (=> b!263907 (= e!171003 e!171004)))

(declare-fun res!128862 () Bool)

(assert (=> b!263907 (=> (not res!128862) (not e!171004))))

(assert (=> b!263907 (= res!128862 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun b!263908 () Bool)

(assert (=> b!263908 (= e!171004 (arrayContainsKey!0 (_keys!7035 thiss!1504) lt!133316 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!63463 (not res!128861)) b!263907))

(assert (= (and b!263907 res!128862) b!263908))

(assert (=> d!63463 m!279177))

(declare-fun m!280541 () Bool)

(assert (=> b!263908 m!280541))

(assert (=> b!263260 d!63463))

(declare-fun b!263909 () Bool)

(declare-fun e!171007 () SeekEntryResult!1210)

(declare-fun lt!133647 () SeekEntryResult!1210)

(assert (=> b!263909 (= e!171007 (MissingZero!1210 (index!7012 lt!133647)))))

(declare-fun b!263910 () Bool)

(declare-fun e!171006 () SeekEntryResult!1210)

(declare-fun e!171005 () SeekEntryResult!1210)

(assert (=> b!263910 (= e!171006 e!171005)))

(declare-fun lt!133648 () (_ BitVec 64))

(assert (=> b!263910 (= lt!133648 (select (arr!5998 (_keys!7035 thiss!1504)) (index!7012 lt!133647)))))

(declare-fun c!45078 () Bool)

(assert (=> b!263910 (= c!45078 (= lt!133648 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!263911 () Bool)

(declare-fun c!45076 () Bool)

(assert (=> b!263911 (= c!45076 (= lt!133648 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!263911 (= e!171005 e!171007)))

(declare-fun b!263912 () Bool)

(assert (=> b!263912 (= e!171005 (Found!1210 (index!7012 lt!133647)))))

(declare-fun b!263913 () Bool)

(assert (=> b!263913 (= e!171007 (seekKeyOrZeroReturnVacant!0 (x!25252 lt!133647) (index!7012 lt!133647) (index!7012 lt!133647) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(declare-fun d!63465 () Bool)

(declare-fun lt!133646 () SeekEntryResult!1210)

(assert (=> d!63465 (and (or ((_ is Undefined!1210) lt!133646) (not ((_ is Found!1210) lt!133646)) (and (bvsge (index!7011 lt!133646) #b00000000000000000000000000000000) (bvslt (index!7011 lt!133646) (size!6349 (_keys!7035 thiss!1504))))) (or ((_ is Undefined!1210) lt!133646) ((_ is Found!1210) lt!133646) (not ((_ is MissingZero!1210) lt!133646)) (and (bvsge (index!7010 lt!133646) #b00000000000000000000000000000000) (bvslt (index!7010 lt!133646) (size!6349 (_keys!7035 thiss!1504))))) (or ((_ is Undefined!1210) lt!133646) ((_ is Found!1210) lt!133646) ((_ is MissingZero!1210) lt!133646) (not ((_ is MissingVacant!1210) lt!133646)) (and (bvsge (index!7013 lt!133646) #b00000000000000000000000000000000) (bvslt (index!7013 lt!133646) (size!6349 (_keys!7035 thiss!1504))))) (or ((_ is Undefined!1210) lt!133646) (ite ((_ is Found!1210) lt!133646) (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7011 lt!133646)) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!1210) lt!133646) (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7010 lt!133646)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1210) lt!133646) (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7013 lt!133646)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!63465 (= lt!133646 e!171006)))

(declare-fun c!45077 () Bool)

(assert (=> d!63465 (= c!45077 (and ((_ is Intermediate!1210) lt!133647) (undefined!2022 lt!133647)))))

(assert (=> d!63465 (= lt!133647 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (mask!11209 thiss!1504)) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(assert (=> d!63465 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63465 (= (seekEntryOrOpen!0 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (_keys!7035 thiss!1504) (mask!11209 thiss!1504)) lt!133646)))

(declare-fun b!263914 () Bool)

(assert (=> b!263914 (= e!171006 Undefined!1210)))

(assert (= (and d!63465 c!45077) b!263914))

(assert (= (and d!63465 (not c!45077)) b!263910))

(assert (= (and b!263910 c!45078) b!263912))

(assert (= (and b!263910 (not c!45078)) b!263911))

(assert (= (and b!263911 c!45076) b!263909))

(assert (= (and b!263911 (not c!45076)) b!263913))

(declare-fun m!280543 () Bool)

(assert (=> b!263910 m!280543))

(assert (=> b!263913 m!279177))

(declare-fun m!280545 () Bool)

(assert (=> b!263913 m!280545))

(declare-fun m!280547 () Bool)

(assert (=> d!63465 m!280547))

(assert (=> d!63465 m!279117))

(declare-fun m!280549 () Bool)

(assert (=> d!63465 m!280549))

(assert (=> d!63465 m!279177))

(declare-fun m!280551 () Bool)

(assert (=> d!63465 m!280551))

(declare-fun m!280553 () Bool)

(assert (=> d!63465 m!280553))

(assert (=> d!63465 m!280551))

(assert (=> d!63465 m!279177))

(declare-fun m!280555 () Bool)

(assert (=> d!63465 m!280555))

(assert (=> b!263260 d!63465))

(declare-fun d!63467 () Bool)

(assert (=> d!63467 (= (get!3095 (getValueByKey!319 (toList!1966 lt!133278) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!5504 (getValueByKey!319 (toList!1966 lt!133278) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63133 d!63467))

(declare-fun b!263917 () Bool)

(declare-fun e!171009 () Option!325)

(assert (=> b!263917 (= e!171009 (getValueByKey!319 (t!8957 (toList!1966 lt!133278)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!263915 () Bool)

(declare-fun e!171008 () Option!325)

(assert (=> b!263915 (= e!171008 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133278)))))))

(declare-fun d!63469 () Bool)

(declare-fun c!45079 () Bool)

(assert (=> d!63469 (= c!45079 (and ((_ is Cons!3868) (toList!1966 lt!133278)) (= (_1!2497 (h!4534 (toList!1966 lt!133278))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63469 (= (getValueByKey!319 (toList!1966 lt!133278) #b0000000000000000000000000000000000000000000000000000000000000000) e!171008)))

(declare-fun b!263918 () Bool)

(assert (=> b!263918 (= e!171009 None!323)))

(declare-fun b!263916 () Bool)

(assert (=> b!263916 (= e!171008 e!171009)))

(declare-fun c!45080 () Bool)

(assert (=> b!263916 (= c!45080 (and ((_ is Cons!3868) (toList!1966 lt!133278)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133278))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!63469 c!45079) b!263915))

(assert (= (and d!63469 (not c!45079)) b!263916))

(assert (= (and b!263916 c!45080) b!263917))

(assert (= (and b!263916 (not c!45080)) b!263918))

(declare-fun m!280557 () Bool)

(assert (=> b!263917 m!280557))

(assert (=> d!63133 d!63469))

(declare-fun d!63471 () Bool)

(assert (=> d!63471 (= (get!3095 (getValueByKey!319 (toList!1966 lt!133221) lt!133212)) (v!5504 (getValueByKey!319 (toList!1966 lt!133221) lt!133212)))))

(assert (=> d!63205 d!63471))

(declare-fun b!263921 () Bool)

(declare-fun e!171011 () Option!325)

(assert (=> b!263921 (= e!171011 (getValueByKey!319 (t!8957 (toList!1966 lt!133221)) lt!133212))))

(declare-fun b!263919 () Bool)

(declare-fun e!171010 () Option!325)

(assert (=> b!263919 (= e!171010 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133221)))))))

(declare-fun d!63473 () Bool)

(declare-fun c!45081 () Bool)

(assert (=> d!63473 (= c!45081 (and ((_ is Cons!3868) (toList!1966 lt!133221)) (= (_1!2497 (h!4534 (toList!1966 lt!133221))) lt!133212)))))

(assert (=> d!63473 (= (getValueByKey!319 (toList!1966 lt!133221) lt!133212) e!171010)))

(declare-fun b!263922 () Bool)

(assert (=> b!263922 (= e!171011 None!323)))

(declare-fun b!263920 () Bool)

(assert (=> b!263920 (= e!171010 e!171011)))

(declare-fun c!45082 () Bool)

(assert (=> b!263920 (= c!45082 (and ((_ is Cons!3868) (toList!1966 lt!133221)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133221))) lt!133212))))))

(assert (= (and d!63473 c!45081) b!263919))

(assert (= (and d!63473 (not c!45081)) b!263920))

(assert (= (and b!263920 c!45082) b!263921))

(assert (= (and b!263920 (not c!45082)) b!263922))

(declare-fun m!280559 () Bool)

(assert (=> b!263921 m!280559))

(assert (=> d!63205 d!63473))

(declare-fun d!63475 () Bool)

(assert (=> d!63475 (isDefined!261 (getValueByKey!319 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) key!932))))

(declare-fun lt!133649 () Unit!8187)

(assert (=> d!63475 (= lt!133649 (choose!1301 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) key!932))))

(declare-fun e!171012 () Bool)

(assert (=> d!63475 e!171012))

(declare-fun res!128863 () Bool)

(assert (=> d!63475 (=> (not res!128863) (not e!171012))))

(assert (=> d!63475 (= res!128863 (isStrictlySorted!372 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))))

(assert (=> d!63475 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) key!932) lt!133649)))

(declare-fun b!263923 () Bool)

(assert (=> b!263923 (= e!171012 (containsKey!311 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) key!932))))

(assert (= (and d!63475 res!128863) b!263923))

(assert (=> d!63475 m!279507))

(assert (=> d!63475 m!279507))

(assert (=> d!63475 m!279509))

(declare-fun m!280561 () Bool)

(assert (=> d!63475 m!280561))

(declare-fun m!280563 () Bool)

(assert (=> d!63475 m!280563))

(assert (=> b!263923 m!279503))

(assert (=> b!263315 d!63475))

(declare-fun d!63477 () Bool)

(assert (=> d!63477 (= (isDefined!261 (getValueByKey!319 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) key!932)) (not (isEmpty!545 (getValueByKey!319 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) key!932))))))

(declare-fun bs!9297 () Bool)

(assert (= bs!9297 d!63477))

(assert (=> bs!9297 m!279507))

(declare-fun m!280565 () Bool)

(assert (=> bs!9297 m!280565))

(assert (=> b!263315 d!63477))

(declare-fun b!263926 () Bool)

(declare-fun e!171014 () Option!325)

(assert (=> b!263926 (= e!171014 (getValueByKey!319 (t!8957 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) key!932))))

(declare-fun b!263924 () Bool)

(declare-fun e!171013 () Option!325)

(assert (=> b!263924 (= e!171013 (Some!324 (_2!2497 (h!4534 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))))))

(declare-fun d!63479 () Bool)

(declare-fun c!45083 () Bool)

(assert (=> d!63479 (= c!45083 (and ((_ is Cons!3868) (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (= (_1!2497 (h!4534 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) key!932)))))

(assert (=> d!63479 (= (getValueByKey!319 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) key!932) e!171013)))

(declare-fun b!263927 () Bool)

(assert (=> b!263927 (= e!171014 None!323)))

(declare-fun b!263925 () Bool)

(assert (=> b!263925 (= e!171013 e!171014)))

(declare-fun c!45084 () Bool)

(assert (=> b!263925 (= c!45084 (and ((_ is Cons!3868) (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (not (= (_1!2497 (h!4534 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) key!932))))))

(assert (= (and d!63479 c!45083) b!263924))

(assert (= (and d!63479 (not c!45083)) b!263925))

(assert (= (and b!263925 c!45084) b!263926))

(assert (= (and b!263925 (not c!45084)) b!263927))

(declare-fun m!280567 () Bool)

(assert (=> b!263926 m!280567))

(assert (=> b!263315 d!63479))

(declare-fun e!171016 () Option!325)

(declare-fun b!263930 () Bool)

(assert (=> b!263930 (= e!171016 (getValueByKey!319 (t!8957 (toList!1966 lt!133457)) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!263928 () Bool)

(declare-fun e!171015 () Option!325)

(assert (=> b!263928 (= e!171015 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133457)))))))

(declare-fun d!63481 () Bool)

(declare-fun c!45085 () Bool)

(assert (=> d!63481 (= c!45085 (and ((_ is Cons!3868) (toList!1966 lt!133457)) (= (_1!2497 (h!4534 (toList!1966 lt!133457))) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))))))

(assert (=> d!63481 (= (getValueByKey!319 (toList!1966 lt!133457) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))) e!171015)))

(declare-fun b!263931 () Bool)

(assert (=> b!263931 (= e!171016 None!323)))

(declare-fun b!263929 () Bool)

(assert (=> b!263929 (= e!171015 e!171016)))

(declare-fun c!45086 () Bool)

(assert (=> b!263929 (= c!45086 (and ((_ is Cons!3868) (toList!1966 lt!133457)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133457))) (_1!2497 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))))))

(assert (= (and d!63481 c!45085) b!263928))

(assert (= (and d!63481 (not c!45085)) b!263929))

(assert (= (and b!263929 c!45086) b!263930))

(assert (= (and b!263929 (not c!45086)) b!263931))

(declare-fun m!280569 () Bool)

(assert (=> b!263930 m!280569))

(assert (=> b!263568 d!63481))

(declare-fun d!63483 () Bool)

(assert (=> d!63483 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133287) (_1!2497 lt!133042)))))

(declare-fun lt!133650 () Unit!8187)

(assert (=> d!63483 (= lt!133650 (choose!1301 (toList!1966 lt!133287) (_1!2497 lt!133042)))))

(declare-fun e!171017 () Bool)

(assert (=> d!63483 e!171017))

(declare-fun res!128864 () Bool)

(assert (=> d!63483 (=> (not res!128864) (not e!171017))))

(assert (=> d!63483 (= res!128864 (isStrictlySorted!372 (toList!1966 lt!133287)))))

(assert (=> d!63483 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133287) (_1!2497 lt!133042)) lt!133650)))

(declare-fun b!263932 () Bool)

(assert (=> b!263932 (= e!171017 (containsKey!311 (toList!1966 lt!133287) (_1!2497 lt!133042)))))

(assert (= (and d!63483 res!128864) b!263932))

(assert (=> d!63483 m!279367))

(assert (=> d!63483 m!279367))

(assert (=> d!63483 m!279701))

(declare-fun m!280571 () Bool)

(assert (=> d!63483 m!280571))

(declare-fun m!280573 () Bool)

(assert (=> d!63483 m!280573))

(assert (=> b!263932 m!279697))

(assert (=> b!263476 d!63483))

(declare-fun d!63485 () Bool)

(assert (=> d!63485 (= (isDefined!261 (getValueByKey!319 (toList!1966 lt!133287) (_1!2497 lt!133042))) (not (isEmpty!545 (getValueByKey!319 (toList!1966 lt!133287) (_1!2497 lt!133042)))))))

(declare-fun bs!9298 () Bool)

(assert (= bs!9298 d!63485))

(assert (=> bs!9298 m!279367))

(declare-fun m!280575 () Bool)

(assert (=> bs!9298 m!280575))

(assert (=> b!263476 d!63485))

(assert (=> b!263476 d!63241))

(assert (=> d!63239 d!63097))

(assert (=> b!263536 d!63387))

(declare-fun d!63487 () Bool)

(assert (=> d!63487 (= (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!263544 d!63487))

(declare-fun d!63489 () Bool)

(assert (=> d!63489 (= (get!3095 (getValueByKey!319 (toList!1966 lt!133270) lt!133275)) (v!5504 (getValueByKey!319 (toList!1966 lt!133270) lt!133275)))))

(assert (=> d!63261 d!63489))

(declare-fun b!263935 () Bool)

(declare-fun e!171019 () Option!325)

(assert (=> b!263935 (= e!171019 (getValueByKey!319 (t!8957 (toList!1966 lt!133270)) lt!133275))))

(declare-fun b!263933 () Bool)

(declare-fun e!171018 () Option!325)

(assert (=> b!263933 (= e!171018 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133270)))))))

(declare-fun d!63491 () Bool)

(declare-fun c!45087 () Bool)

(assert (=> d!63491 (= c!45087 (and ((_ is Cons!3868) (toList!1966 lt!133270)) (= (_1!2497 (h!4534 (toList!1966 lt!133270))) lt!133275)))))

(assert (=> d!63491 (= (getValueByKey!319 (toList!1966 lt!133270) lt!133275) e!171018)))

(declare-fun b!263936 () Bool)

(assert (=> b!263936 (= e!171019 None!323)))

(declare-fun b!263934 () Bool)

(assert (=> b!263934 (= e!171018 e!171019)))

(declare-fun c!45088 () Bool)

(assert (=> b!263934 (= c!45088 (and ((_ is Cons!3868) (toList!1966 lt!133270)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133270))) lt!133275))))))

(assert (= (and d!63491 c!45087) b!263933))

(assert (= (and d!63491 (not c!45087)) b!263934))

(assert (= (and b!263934 c!45088) b!263935))

(assert (= (and b!263934 (not c!45088)) b!263936))

(declare-fun m!280577 () Bool)

(assert (=> b!263935 m!280577))

(assert (=> d!63261 d!63491))

(declare-fun d!63493 () Bool)

(declare-fun res!128865 () Bool)

(declare-fun e!171020 () Bool)

(assert (=> d!63493 (=> res!128865 e!171020)))

(assert (=> d!63493 (= res!128865 (and ((_ is Cons!3868) lt!133435) (= (_1!2497 (h!4534 lt!133435)) (_1!2497 lt!133042))))))

(assert (=> d!63493 (= (containsKey!311 lt!133435 (_1!2497 lt!133042)) e!171020)))

(declare-fun b!263937 () Bool)

(declare-fun e!171021 () Bool)

(assert (=> b!263937 (= e!171020 e!171021)))

(declare-fun res!128866 () Bool)

(assert (=> b!263937 (=> (not res!128866) (not e!171021))))

(assert (=> b!263937 (= res!128866 (and (or (not ((_ is Cons!3868) lt!133435)) (bvsle (_1!2497 (h!4534 lt!133435)) (_1!2497 lt!133042))) ((_ is Cons!3868) lt!133435) (bvslt (_1!2497 (h!4534 lt!133435)) (_1!2497 lt!133042))))))

(declare-fun b!263938 () Bool)

(assert (=> b!263938 (= e!171021 (containsKey!311 (t!8957 lt!133435) (_1!2497 lt!133042)))))

(assert (= (and d!63493 (not res!128865)) b!263937))

(assert (= (and b!263937 res!128866) b!263938))

(declare-fun m!280579 () Bool)

(assert (=> b!263938 m!280579))

(assert (=> b!263509 d!63493))

(assert (=> b!263313 d!63305))

(declare-fun b!263939 () Bool)

(declare-fun e!171022 () (_ BitVec 32))

(assert (=> b!263939 (= e!171022 #b00000000000000000000000000000000)))

(declare-fun b!263941 () Bool)

(declare-fun e!171023 () (_ BitVec 32))

(assert (=> b!263941 (= e!171022 e!171023)))

(declare-fun c!45090 () Bool)

(assert (=> b!263941 (= c!45090 (validKeyInArray!0 (select (arr!5998 (_keys!7035 lt!133037)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!263942 () Bool)

(declare-fun call!25272 () (_ BitVec 32))

(assert (=> b!263942 (= e!171023 call!25272)))

(declare-fun bm!25269 () Bool)

(assert (=> bm!25269 (= call!25272 (arrayCountValidKeys!0 (_keys!7035 lt!133037) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 (_keys!7035 lt!133037))))))

(declare-fun d!63495 () Bool)

(declare-fun lt!133651 () (_ BitVec 32))

(assert (=> d!63495 (and (bvsge lt!133651 #b00000000000000000000000000000000) (bvsle lt!133651 (bvsub (size!6349 (_keys!7035 lt!133037)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!63495 (= lt!133651 e!171022)))

(declare-fun c!45089 () Bool)

(assert (=> d!63495 (= c!45089 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 lt!133037))))))

(assert (=> d!63495 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 lt!133037))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6349 (_keys!7035 lt!133037)) (size!6349 (_keys!7035 lt!133037))))))

(assert (=> d!63495 (= (arrayCountValidKeys!0 (_keys!7035 lt!133037) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 lt!133037))) lt!133651)))

(declare-fun b!263940 () Bool)

(assert (=> b!263940 (= e!171023 (bvadd #b00000000000000000000000000000001 call!25272))))

(assert (= (and d!63495 c!45089) b!263939))

(assert (= (and d!63495 (not c!45089)) b!263941))

(assert (= (and b!263941 c!45090) b!263940))

(assert (= (and b!263941 (not c!45090)) b!263942))

(assert (= (or b!263940 b!263942) bm!25269))

(assert (=> b!263941 m!280159))

(assert (=> b!263941 m!280159))

(assert (=> b!263941 m!280163))

(declare-fun m!280581 () Bool)

(assert (=> bm!25269 m!280581))

(assert (=> bm!25208 d!63495))

(assert (=> d!63187 d!63189))

(assert (=> d!63187 d!63191))

(declare-fun d!63497 () Bool)

(assert (=> d!63497 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133031) key!932))))

(assert (=> d!63497 true))

(declare-fun _$12!454 () Unit!8187)

(assert (=> d!63497 (= (choose!1301 (toList!1966 lt!133031) key!932) _$12!454)))

(declare-fun bs!9299 () Bool)

(assert (= bs!9299 d!63497))

(assert (=> bs!9299 m!279137))

(assert (=> bs!9299 m!279137))

(assert (=> bs!9299 m!279139))

(assert (=> d!63187 d!63497))

(declare-fun d!63499 () Bool)

(declare-fun res!128867 () Bool)

(declare-fun e!171024 () Bool)

(assert (=> d!63499 (=> res!128867 e!171024)))

(assert (=> d!63499 (= res!128867 (or ((_ is Nil!3869) (toList!1966 lt!133031)) ((_ is Nil!3869) (t!8957 (toList!1966 lt!133031)))))))

(assert (=> d!63499 (= (isStrictlySorted!372 (toList!1966 lt!133031)) e!171024)))

(declare-fun b!263943 () Bool)

(declare-fun e!171025 () Bool)

(assert (=> b!263943 (= e!171024 e!171025)))

(declare-fun res!128868 () Bool)

(assert (=> b!263943 (=> (not res!128868) (not e!171025))))

(assert (=> b!263943 (= res!128868 (bvslt (_1!2497 (h!4534 (toList!1966 lt!133031))) (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133031))))))))

(declare-fun b!263944 () Bool)

(assert (=> b!263944 (= e!171025 (isStrictlySorted!372 (t!8957 (toList!1966 lt!133031))))))

(assert (= (and d!63499 (not res!128867)) b!263943))

(assert (= (and b!263943 res!128868) b!263944))

(declare-fun m!280583 () Bool)

(assert (=> b!263944 m!280583))

(assert (=> d!63187 d!63499))

(declare-fun d!63501 () Bool)

(assert (=> d!63501 (= ($colon$colon!107 e!170765 (ite c!44966 (h!4534 (toList!1966 lt!133034)) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042)))) (Cons!3868 (ite c!44966 (h!4534 (toList!1966 lt!133034)) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))) e!170765))))

(assert (=> bm!25226 d!63501))

(declare-fun d!63503 () Bool)

(declare-fun res!128869 () Bool)

(declare-fun e!171026 () Bool)

(assert (=> d!63503 (=> res!128869 e!171026)))

(assert (=> d!63503 (= res!128869 (= (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!63503 (= (arrayContainsKey!0 lt!133048 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) e!171026)))

(declare-fun b!263945 () Bool)

(declare-fun e!171027 () Bool)

(assert (=> b!263945 (= e!171026 e!171027)))

(declare-fun res!128870 () Bool)

(assert (=> b!263945 (=> (not res!128870) (not e!171027))))

(assert (=> b!263945 (= res!128870 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(declare-fun b!263946 () Bool)

(assert (=> b!263946 (= e!171027 (arrayContainsKey!0 lt!133048 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!63503 (not res!128869)) b!263945))

(assert (= (and b!263945 res!128870) b!263946))

(assert (=> d!63503 m!280331))

(declare-fun m!280585 () Bool)

(assert (=> b!263946 m!280585))

(assert (=> b!263417 d!63503))

(declare-fun d!63505 () Bool)

(declare-fun res!128871 () Bool)

(declare-fun e!171028 () Bool)

(assert (=> d!63505 (=> res!128871 e!171028)))

(assert (=> d!63505 (= res!128871 (and ((_ is Cons!3868) (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (= (_1!2497 (h!4534 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) key!932)))))

(assert (=> d!63505 (= (containsKey!311 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) key!932) e!171028)))

(declare-fun b!263947 () Bool)

(declare-fun e!171029 () Bool)

(assert (=> b!263947 (= e!171028 e!171029)))

(declare-fun res!128872 () Bool)

(assert (=> b!263947 (=> (not res!128872) (not e!171029))))

(assert (=> b!263947 (= res!128872 (and (or (not ((_ is Cons!3868) (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) (bvsle (_1!2497 (h!4534 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) key!932)) ((_ is Cons!3868) (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (bvslt (_1!2497 (h!4534 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) key!932)))))

(declare-fun b!263948 () Bool)

(assert (=> b!263948 (= e!171029 (containsKey!311 (t!8957 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) key!932))))

(assert (= (and d!63505 (not res!128871)) b!263947))

(assert (= (and b!263947 res!128872) b!263948))

(declare-fun m!280587 () Bool)

(assert (=> b!263948 m!280587))

(assert (=> d!63101 d!63505))

(declare-fun d!63507 () Bool)

(assert (=> d!63507 (= (get!3095 (getValueByKey!319 (toList!1966 lt!133223) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!5504 (getValueByKey!319 (toList!1966 lt!133223) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63279 d!63507))

(assert (=> d!63279 d!63373))

(declare-fun d!63509 () Bool)

(assert (=> d!63509 (= (get!3097 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!263534 d!63509))

(declare-fun d!63511 () Bool)

(declare-fun lt!133652 () Bool)

(assert (=> d!63511 (= lt!133652 (select (content!175 lt!133150) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(declare-fun e!171031 () Bool)

(assert (=> d!63511 (= lt!133652 e!171031)))

(declare-fun res!128874 () Bool)

(assert (=> d!63511 (=> (not res!128874) (not e!171031))))

(assert (=> d!63511 (= res!128874 ((_ is Cons!3868) lt!133150))))

(assert (=> d!63511 (= (contains!1913 lt!133150 (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))) lt!133652)))

(declare-fun b!263949 () Bool)

(declare-fun e!171030 () Bool)

(assert (=> b!263949 (= e!171031 e!171030)))

(declare-fun res!128873 () Bool)

(assert (=> b!263949 (=> res!128873 e!171030)))

(assert (=> b!263949 (= res!128873 (= (h!4534 lt!133150) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(declare-fun b!263950 () Bool)

(assert (=> b!263950 (= e!171030 (contains!1913 (t!8957 lt!133150) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(assert (= (and d!63511 res!128874) b!263949))

(assert (= (and b!263949 (not res!128873)) b!263950))

(declare-fun m!280589 () Bool)

(assert (=> d!63511 m!280589))

(declare-fun m!280591 () Bool)

(assert (=> d!63511 m!280591))

(declare-fun m!280593 () Bool)

(assert (=> b!263950 m!280593))

(assert (=> b!263622 d!63511))

(declare-fun d!63513 () Bool)

(declare-fun res!128875 () Bool)

(declare-fun e!171032 () Bool)

(assert (=> d!63513 (=> res!128875 e!171032)))

(assert (=> d!63513 (= res!128875 (and ((_ is Cons!3868) (toList!1966 lt!133287)) (= (_1!2497 (h!4534 (toList!1966 lt!133287))) (_1!2497 lt!133042))))))

(assert (=> d!63513 (= (containsKey!311 (toList!1966 lt!133287) (_1!2497 lt!133042)) e!171032)))

(declare-fun b!263951 () Bool)

(declare-fun e!171033 () Bool)

(assert (=> b!263951 (= e!171032 e!171033)))

(declare-fun res!128876 () Bool)

(assert (=> b!263951 (=> (not res!128876) (not e!171033))))

(assert (=> b!263951 (= res!128876 (and (or (not ((_ is Cons!3868) (toList!1966 lt!133287))) (bvsle (_1!2497 (h!4534 (toList!1966 lt!133287))) (_1!2497 lt!133042))) ((_ is Cons!3868) (toList!1966 lt!133287)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133287))) (_1!2497 lt!133042))))))

(declare-fun b!263952 () Bool)

(assert (=> b!263952 (= e!171033 (containsKey!311 (t!8957 (toList!1966 lt!133287)) (_1!2497 lt!133042)))))

(assert (= (and d!63513 (not res!128875)) b!263951))

(assert (= (and b!263951 res!128876) b!263952))

(declare-fun m!280595 () Bool)

(assert (=> b!263952 m!280595))

(assert (=> d!63163 d!63513))

(declare-fun b!263955 () Bool)

(declare-fun e!171035 () Option!325)

(assert (=> b!263955 (= e!171035 (getValueByKey!319 (t!8957 (toList!1966 lt!133490)) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!263953 () Bool)

(declare-fun e!171034 () Option!325)

(assert (=> b!263953 (= e!171034 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133490)))))))

(declare-fun c!45091 () Bool)

(declare-fun d!63515 () Bool)

(assert (=> d!63515 (= c!45091 (and ((_ is Cons!3868) (toList!1966 lt!133490)) (= (_1!2497 (h!4534 (toList!1966 lt!133490))) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))))))

(assert (=> d!63515 (= (getValueByKey!319 (toList!1966 lt!133490) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))) e!171034)))

(declare-fun b!263956 () Bool)

(assert (=> b!263956 (= e!171035 None!323)))

(declare-fun b!263954 () Bool)

(assert (=> b!263954 (= e!171034 e!171035)))

(declare-fun c!45092 () Bool)

(assert (=> b!263954 (= c!45092 (and ((_ is Cons!3868) (toList!1966 lt!133490)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133490))) (_1!2497 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))))))

(assert (= (and d!63515 c!45091) b!263953))

(assert (= (and d!63515 (not c!45091)) b!263954))

(assert (= (and b!263954 c!45092) b!263955))

(assert (= (and b!263954 (not c!45092)) b!263956))

(declare-fun m!280597 () Bool)

(assert (=> b!263955 m!280597))

(assert (=> b!263604 d!63515))

(declare-fun d!63517 () Bool)

(assert (=> d!63517 (= (apply!262 lt!133408 #b0000000000000000000000000000000000000000000000000000000000000000) (get!3095 (getValueByKey!319 (toList!1966 lt!133408) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9300 () Bool)

(assert (= bs!9300 d!63517))

(declare-fun m!280599 () Bool)

(assert (=> bs!9300 m!280599))

(assert (=> bs!9300 m!280599))

(declare-fun m!280601 () Bool)

(assert (=> bs!9300 m!280601))

(assert (=> b!263430 d!63517))

(declare-fun d!63519 () Bool)

(declare-fun lt!133653 () Bool)

(assert (=> d!63519 (= lt!133653 (select (content!175 (toList!1966 lt!133473)) (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))))

(declare-fun e!171037 () Bool)

(assert (=> d!63519 (= lt!133653 e!171037)))

(declare-fun res!128878 () Bool)

(assert (=> d!63519 (=> (not res!128878) (not e!171037))))

(assert (=> d!63519 (= res!128878 ((_ is Cons!3868) (toList!1966 lt!133473)))))

(assert (=> d!63519 (= (contains!1913 (toList!1966 lt!133473) (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))) lt!133653)))

(declare-fun b!263957 () Bool)

(declare-fun e!171036 () Bool)

(assert (=> b!263957 (= e!171037 e!171036)))

(declare-fun res!128877 () Bool)

(assert (=> b!263957 (=> res!128877 e!171036)))

(assert (=> b!263957 (= res!128877 (= (h!4534 (toList!1966 lt!133473)) (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))))

(declare-fun b!263958 () Bool)

(assert (=> b!263958 (= e!171036 (contains!1913 (t!8957 (toList!1966 lt!133473)) (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))))

(assert (= (and d!63519 res!128878) b!263957))

(assert (= (and b!263957 (not res!128877)) b!263958))

(declare-fun m!280603 () Bool)

(assert (=> d!63519 m!280603))

(declare-fun m!280605 () Bool)

(assert (=> d!63519 m!280605))

(declare-fun m!280607 () Bool)

(assert (=> b!263958 m!280607))

(assert (=> b!263577 d!63519))

(declare-fun d!63521 () Bool)

(declare-fun res!128879 () Bool)

(declare-fun e!171038 () Bool)

(assert (=> d!63521 (=> res!128879 e!171038)))

(assert (=> d!63521 (= res!128879 (and ((_ is Cons!3868) (toList!1966 lt!133278)) (= (_1!2497 (h!4534 (toList!1966 lt!133278))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63521 (= (containsKey!311 (toList!1966 lt!133278) #b1000000000000000000000000000000000000000000000000000000000000000) e!171038)))

(declare-fun b!263959 () Bool)

(declare-fun e!171039 () Bool)

(assert (=> b!263959 (= e!171038 e!171039)))

(declare-fun res!128880 () Bool)

(assert (=> b!263959 (=> (not res!128880) (not e!171039))))

(assert (=> b!263959 (= res!128880 (and (or (not ((_ is Cons!3868) (toList!1966 lt!133278))) (bvsle (_1!2497 (h!4534 (toList!1966 lt!133278))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!3868) (toList!1966 lt!133278)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133278))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!263960 () Bool)

(assert (=> b!263960 (= e!171039 (containsKey!311 (t!8957 (toList!1966 lt!133278)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!63521 (not res!128879)) b!263959))

(assert (= (and b!263959 res!128880) b!263960))

(declare-fun m!280609 () Bool)

(assert (=> b!263960 m!280609))

(assert (=> d!63113 d!63521))

(assert (=> b!263546 d!63069))

(declare-fun d!63523 () Bool)

(assert (=> d!63523 (= (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133280 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))) lt!133263)) (v!5504 (getValueByKey!319 (toList!1966 (+!705 lt!133280 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))) lt!133263)))))

(assert (=> d!63271 d!63523))

(declare-fun b!263963 () Bool)

(declare-fun e!171041 () Option!325)

(assert (=> b!263963 (= e!171041 (getValueByKey!319 (t!8957 (toList!1966 (+!705 lt!133280 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))) lt!133263))))

(declare-fun e!171040 () Option!325)

(declare-fun b!263961 () Bool)

(assert (=> b!263961 (= e!171040 (Some!324 (_2!2497 (h!4534 (toList!1966 (+!705 lt!133280 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))))))))

(declare-fun c!45093 () Bool)

(declare-fun d!63525 () Bool)

(assert (=> d!63525 (= c!45093 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133280 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))) (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133280 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))) lt!133263)))))

(assert (=> d!63525 (= (getValueByKey!319 (toList!1966 (+!705 lt!133280 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))) lt!133263) e!171040)))

(declare-fun b!263964 () Bool)

(assert (=> b!263964 (= e!171041 None!323)))

(declare-fun b!263962 () Bool)

(assert (=> b!263962 (= e!171040 e!171041)))

(declare-fun c!45094 () Bool)

(assert (=> b!263962 (= c!45094 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133280 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))) (not (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133280 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))) lt!133263))))))

(assert (= (and d!63525 c!45093) b!263961))

(assert (= (and d!63525 (not c!45093)) b!263962))

(assert (= (and b!263962 c!45094) b!263963))

(assert (= (and b!263962 (not c!45094)) b!263964))

(declare-fun m!280611 () Bool)

(assert (=> b!263963 m!280611))

(assert (=> d!63271 d!63525))

(assert (=> b!263227 d!63309))

(assert (=> b!263227 d!63311))

(assert (=> b!263264 d!63129))

(assert (=> d!63149 d!62993))

(declare-fun d!63527 () Bool)

(declare-fun e!171042 () Bool)

(assert (=> d!63527 e!171042))

(declare-fun res!128881 () Bool)

(assert (=> d!63527 (=> res!128881 e!171042)))

(declare-fun lt!133655 () Bool)

(assert (=> d!63527 (= res!128881 (not lt!133655))))

(declare-fun lt!133654 () Bool)

(assert (=> d!63527 (= lt!133655 lt!133654)))

(declare-fun lt!133656 () Unit!8187)

(declare-fun e!171043 () Unit!8187)

(assert (=> d!63527 (= lt!133656 e!171043)))

(declare-fun c!45095 () Bool)

(assert (=> d!63527 (= c!45095 lt!133654)))

(assert (=> d!63527 (= lt!133654 (containsKey!311 (toList!1966 lt!133482) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(assert (=> d!63527 (= (contains!1911 lt!133482 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)) lt!133655)))

(declare-fun b!263965 () Bool)

(declare-fun lt!133657 () Unit!8187)

(assert (=> b!263965 (= e!171043 lt!133657)))

(assert (=> b!263965 (= lt!133657 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133482) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(assert (=> b!263965 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133482) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(declare-fun b!263966 () Bool)

(declare-fun Unit!8224 () Unit!8187)

(assert (=> b!263966 (= e!171043 Unit!8224)))

(declare-fun b!263967 () Bool)

(assert (=> b!263967 (= e!171042 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133482) (select (arr!5998 lt!133048) #b00000000000000000000000000000000))))))

(assert (= (and d!63527 c!45095) b!263965))

(assert (= (and d!63527 (not c!45095)) b!263966))

(assert (= (and d!63527 (not res!128881)) b!263967))

(assert (=> d!63527 m!279233))

(declare-fun m!280613 () Bool)

(assert (=> d!63527 m!280613))

(assert (=> b!263965 m!279233))

(declare-fun m!280615 () Bool)

(assert (=> b!263965 m!280615))

(assert (=> b!263965 m!279233))

(declare-fun m!280617 () Bool)

(assert (=> b!263965 m!280617))

(assert (=> b!263965 m!280617))

(declare-fun m!280619 () Bool)

(assert (=> b!263965 m!280619))

(assert (=> b!263967 m!279233))

(assert (=> b!263967 m!280617))

(assert (=> b!263967 m!280617))

(assert (=> b!263967 m!280619))

(assert (=> b!263603 d!63527))

(declare-fun d!63529 () Bool)

(assert (=> d!63529 (= (apply!262 (+!705 lt!133276 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))) lt!133267) (apply!262 lt!133276 lt!133267))))

(assert (=> d!63529 true))

(declare-fun _$34!1132 () Unit!8187)

(assert (=> d!63529 (= (choose!1303 lt!133276 lt!133265 (minValue!4684 thiss!1504) lt!133267) _$34!1132)))

(declare-fun bs!9301 () Bool)

(assert (= bs!9301 d!63529))

(assert (=> bs!9301 m!279341))

(assert (=> bs!9301 m!279341))

(assert (=> bs!9301 m!279345))

(assert (=> bs!9301 m!279347))

(assert (=> d!63247 d!63529))

(assert (=> d!63247 d!63265))

(assert (=> d!63247 d!63251))

(assert (=> d!63247 d!63257))

(declare-fun d!63531 () Bool)

(declare-fun e!171044 () Bool)

(assert (=> d!63531 e!171044))

(declare-fun res!128882 () Bool)

(assert (=> d!63531 (=> res!128882 e!171044)))

(declare-fun lt!133659 () Bool)

(assert (=> d!63531 (= res!128882 (not lt!133659))))

(declare-fun lt!133658 () Bool)

(assert (=> d!63531 (= lt!133659 lt!133658)))

(declare-fun lt!133660 () Unit!8187)

(declare-fun e!171045 () Unit!8187)

(assert (=> d!63531 (= lt!133660 e!171045)))

(declare-fun c!45096 () Bool)

(assert (=> d!63531 (= c!45096 lt!133658)))

(assert (=> d!63531 (= lt!133658 (containsKey!311 (toList!1966 lt!133276) lt!133267))))

(assert (=> d!63531 (= (contains!1911 lt!133276 lt!133267) lt!133659)))

(declare-fun b!263968 () Bool)

(declare-fun lt!133661 () Unit!8187)

(assert (=> b!263968 (= e!171045 lt!133661)))

(assert (=> b!263968 (= lt!133661 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133276) lt!133267))))

(assert (=> b!263968 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133276) lt!133267))))

(declare-fun b!263969 () Bool)

(declare-fun Unit!8225 () Unit!8187)

(assert (=> b!263969 (= e!171045 Unit!8225)))

(declare-fun b!263970 () Bool)

(assert (=> b!263970 (= e!171044 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133276) lt!133267)))))

(assert (= (and d!63531 c!45096) b!263968))

(assert (= (and d!63531 (not c!45096)) b!263969))

(assert (= (and d!63531 (not res!128882)) b!263970))

(declare-fun m!280621 () Bool)

(assert (=> d!63531 m!280621))

(declare-fun m!280623 () Bool)

(assert (=> b!263968 m!280623))

(assert (=> b!263968 m!279903))

(assert (=> b!263968 m!279903))

(declare-fun m!280625 () Bool)

(assert (=> b!263968 m!280625))

(assert (=> b!263970 m!279903))

(assert (=> b!263970 m!279903))

(assert (=> b!263970 m!280625))

(assert (=> d!63247 d!63531))

(assert (=> b!263415 d!63371))

(assert (=> b!263415 d!63373))

(declare-fun d!63533 () Bool)

(declare-fun res!128883 () Bool)

(declare-fun e!171046 () Bool)

(assert (=> d!63533 (=> res!128883 e!171046)))

(assert (=> d!63533 (= res!128883 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))) (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))) lt!133222)))))

(assert (=> d!63533 (= (containsKey!311 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) lt!133222) e!171046)))

(declare-fun b!263971 () Bool)

(declare-fun e!171047 () Bool)

(assert (=> b!263971 (= e!171046 e!171047)))

(declare-fun res!128884 () Bool)

(assert (=> b!263971 (=> (not res!128884) (not e!171047))))

(assert (=> b!263971 (= res!128884 (and (or (not ((_ is Cons!3868) (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))) (bvsle (_1!2497 (h!4534 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))) lt!133222)) ((_ is Cons!3868) (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))) (bvslt (_1!2497 (h!4534 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))) lt!133222)))))

(declare-fun b!263972 () Bool)

(assert (=> b!263972 (= e!171047 (containsKey!311 (t!8957 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))) lt!133222))))

(assert (= (and d!63533 (not res!128883)) b!263971))

(assert (= (and b!263971 res!128884) b!263972))

(declare-fun m!280627 () Bool)

(assert (=> b!263972 m!280627))

(assert (=> d!63213 d!63533))

(declare-fun d!63535 () Bool)

(declare-fun e!171048 () Bool)

(assert (=> d!63535 e!171048))

(declare-fun res!128885 () Bool)

(assert (=> d!63535 (=> res!128885 e!171048)))

(declare-fun lt!133663 () Bool)

(assert (=> d!63535 (= res!128885 (not lt!133663))))

(declare-fun lt!133662 () Bool)

(assert (=> d!63535 (= lt!133663 lt!133662)))

(declare-fun lt!133664 () Unit!8187)

(declare-fun e!171049 () Unit!8187)

(assert (=> d!63535 (= lt!133664 e!171049)))

(declare-fun c!45097 () Bool)

(assert (=> d!63535 (= c!45097 lt!133662)))

(assert (=> d!63535 (= lt!133662 (containsKey!311 (toList!1966 lt!133534) (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(assert (=> d!63535 (= (contains!1911 lt!133534 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)) lt!133663)))

(declare-fun b!263973 () Bool)

(declare-fun lt!133665 () Unit!8187)

(assert (=> b!263973 (= e!171049 lt!133665)))

(assert (=> b!263973 (= lt!133665 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133534) (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(assert (=> b!263973 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133534) (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(declare-fun b!263974 () Bool)

(declare-fun Unit!8226 () Unit!8187)

(assert (=> b!263974 (= e!171049 Unit!8226)))

(declare-fun b!263975 () Bool)

(assert (=> b!263975 (= e!171048 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133534) (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000))))))

(assert (= (and d!63535 c!45097) b!263973))

(assert (= (and d!63535 (not c!45097)) b!263974))

(assert (= (and d!63535 (not res!128885)) b!263975))

(assert (=> d!63535 m!279569))

(declare-fun m!280629 () Bool)

(assert (=> d!63535 m!280629))

(assert (=> b!263973 m!279569))

(declare-fun m!280631 () Bool)

(assert (=> b!263973 m!280631))

(assert (=> b!263973 m!279569))

(declare-fun m!280633 () Bool)

(assert (=> b!263973 m!280633))

(assert (=> b!263973 m!280633))

(declare-fun m!280635 () Bool)

(assert (=> b!263973 m!280635))

(assert (=> b!263975 m!279569))

(assert (=> b!263975 m!280633))

(assert (=> b!263975 m!280633))

(assert (=> b!263975 m!280635))

(assert (=> b!263659 d!63535))

(assert (=> b!263248 d!63305))

(declare-fun d!63537 () Bool)

(assert (=> d!63537 (= (get!3095 (getValueByKey!319 (toList!1966 lt!133215) lt!133220)) (v!5504 (getValueByKey!319 (toList!1966 lt!133215) lt!133220)))))

(assert (=> d!63223 d!63537))

(declare-fun b!263978 () Bool)

(declare-fun e!171051 () Option!325)

(assert (=> b!263978 (= e!171051 (getValueByKey!319 (t!8957 (toList!1966 lt!133215)) lt!133220))))

(declare-fun b!263976 () Bool)

(declare-fun e!171050 () Option!325)

(assert (=> b!263976 (= e!171050 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133215)))))))

(declare-fun d!63539 () Bool)

(declare-fun c!45098 () Bool)

(assert (=> d!63539 (= c!45098 (and ((_ is Cons!3868) (toList!1966 lt!133215)) (= (_1!2497 (h!4534 (toList!1966 lt!133215))) lt!133220)))))

(assert (=> d!63539 (= (getValueByKey!319 (toList!1966 lt!133215) lt!133220) e!171050)))

(declare-fun b!263979 () Bool)

(assert (=> b!263979 (= e!171051 None!323)))

(declare-fun b!263977 () Bool)

(assert (=> b!263977 (= e!171050 e!171051)))

(declare-fun c!45099 () Bool)

(assert (=> b!263977 (= c!45099 (and ((_ is Cons!3868) (toList!1966 lt!133215)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133215))) lt!133220))))))

(assert (= (and d!63539 c!45098) b!263976))

(assert (= (and d!63539 (not c!45098)) b!263977))

(assert (= (and b!263977 c!45099) b!263978))

(assert (= (and b!263977 (not c!45099)) b!263979))

(declare-fun m!280637 () Bool)

(assert (=> b!263978 m!280637))

(assert (=> d!63223 d!63539))

(declare-fun d!63541 () Bool)

(declare-fun e!171052 () Bool)

(assert (=> d!63541 e!171052))

(declare-fun res!128886 () Bool)

(assert (=> d!63541 (=> res!128886 e!171052)))

(declare-fun lt!133667 () Bool)

(assert (=> d!63541 (= res!128886 (not lt!133667))))

(declare-fun lt!133666 () Bool)

(assert (=> d!63541 (= lt!133667 lt!133666)))

(declare-fun lt!133668 () Unit!8187)

(declare-fun e!171053 () Unit!8187)

(assert (=> d!63541 (= lt!133668 e!171053)))

(declare-fun c!45100 () Bool)

(assert (=> d!63541 (= c!45100 lt!133666)))

(assert (=> d!63541 (= lt!133666 (containsKey!311 (toList!1966 lt!133329) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63541 (= (contains!1911 lt!133329 (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) lt!133667)))

(declare-fun b!263980 () Bool)

(declare-fun lt!133669 () Unit!8187)

(assert (=> b!263980 (= e!171053 lt!133669)))

(assert (=> b!263980 (= lt!133669 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133329) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> b!263980 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133329) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!263981 () Bool)

(declare-fun Unit!8227 () Unit!8187)

(assert (=> b!263981 (= e!171053 Unit!8227)))

(declare-fun b!263982 () Bool)

(assert (=> b!263982 (= e!171052 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133329) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63541 c!45100) b!263980))

(assert (= (and d!63541 (not c!45100)) b!263981))

(assert (= (and d!63541 (not res!128886)) b!263982))

(declare-fun m!280639 () Bool)

(assert (=> d!63541 m!280639))

(declare-fun m!280641 () Bool)

(assert (=> b!263980 m!280641))

(assert (=> b!263980 m!279489))

(assert (=> b!263980 m!279489))

(declare-fun m!280643 () Bool)

(assert (=> b!263980 m!280643))

(assert (=> b!263982 m!279489))

(assert (=> b!263982 m!279489))

(assert (=> b!263982 m!280643))

(assert (=> d!63093 d!63541))

(declare-fun b!263985 () Bool)

(declare-fun e!171055 () Option!325)

(assert (=> b!263985 (= e!171055 (getValueByKey!319 (t!8957 lt!133330) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!263983 () Bool)

(declare-fun e!171054 () Option!325)

(assert (=> b!263983 (= e!171054 (Some!324 (_2!2497 (h!4534 lt!133330))))))

(declare-fun c!45101 () Bool)

(declare-fun d!63543 () Bool)

(assert (=> d!63543 (= c!45101 (and ((_ is Cons!3868) lt!133330) (= (_1!2497 (h!4534 lt!133330)) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(assert (=> d!63543 (= (getValueByKey!319 lt!133330 (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) e!171054)))

(declare-fun b!263986 () Bool)

(assert (=> b!263986 (= e!171055 None!323)))

(declare-fun b!263984 () Bool)

(assert (=> b!263984 (= e!171054 e!171055)))

(declare-fun c!45102 () Bool)

(assert (=> b!263984 (= c!45102 (and ((_ is Cons!3868) lt!133330) (not (= (_1!2497 (h!4534 lt!133330)) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))))

(assert (= (and d!63543 c!45101) b!263983))

(assert (= (and d!63543 (not c!45101)) b!263984))

(assert (= (and b!263984 c!45102) b!263985))

(assert (= (and b!263984 (not c!45102)) b!263986))

(declare-fun m!280645 () Bool)

(assert (=> b!263985 m!280645))

(assert (=> d!63093 d!63543))

(declare-fun d!63545 () Bool)

(assert (=> d!63545 (= (getValueByKey!319 lt!133330 (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) (Some!324 (_2!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun lt!133670 () Unit!8187)

(assert (=> d!63545 (= lt!133670 (choose!1302 lt!133330 (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun e!171056 () Bool)

(assert (=> d!63545 e!171056))

(declare-fun res!128887 () Bool)

(assert (=> d!63545 (=> (not res!128887) (not e!171056))))

(assert (=> d!63545 (= res!128887 (isStrictlySorted!372 lt!133330))))

(assert (=> d!63545 (= (lemmaContainsTupThenGetReturnValue!177 lt!133330 (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) lt!133670)))

(declare-fun b!263987 () Bool)

(declare-fun res!128888 () Bool)

(assert (=> b!263987 (=> (not res!128888) (not e!171056))))

(assert (=> b!263987 (= res!128888 (containsKey!311 lt!133330 (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!263988 () Bool)

(assert (=> b!263988 (= e!171056 (contains!1913 lt!133330 (tuple2!4975 (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63545 res!128887) b!263987))

(assert (= (and b!263987 res!128888) b!263988))

(assert (=> d!63545 m!279483))

(declare-fun m!280647 () Bool)

(assert (=> d!63545 m!280647))

(declare-fun m!280649 () Bool)

(assert (=> d!63545 m!280649))

(declare-fun m!280651 () Bool)

(assert (=> b!263987 m!280651))

(declare-fun m!280653 () Bool)

(assert (=> b!263988 m!280653))

(assert (=> d!63093 d!63545))

(declare-fun bm!25270 () Bool)

(declare-fun call!25275 () List!3872)

(declare-fun call!25274 () List!3872)

(assert (=> bm!25270 (= call!25275 call!25274)))

(declare-fun bm!25271 () Bool)

(declare-fun call!25273 () List!3872)

(assert (=> bm!25271 (= call!25273 call!25275)))

(declare-fun b!263989 () Bool)

(declare-fun res!128889 () Bool)

(declare-fun e!171061 () Bool)

(assert (=> b!263989 (=> (not res!128889) (not e!171061))))

(declare-fun lt!133671 () List!3872)

(assert (=> b!263989 (= res!128889 (containsKey!311 lt!133671 (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!263990 () Bool)

(declare-fun c!45103 () Bool)

(assert (=> b!263990 (= c!45103 (and ((_ is Cons!3868) (toList!1966 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192)))) (bvsgt (_1!2497 (h!4534 (toList!1966 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192))))) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(declare-fun e!171060 () List!3872)

(declare-fun e!171057 () List!3872)

(assert (=> b!263990 (= e!171060 e!171057)))

(declare-fun b!263991 () Bool)

(declare-fun e!171059 () List!3872)

(assert (=> b!263991 (= e!171059 e!171060)))

(declare-fun c!45106 () Bool)

(assert (=> b!263991 (= c!45106 (and ((_ is Cons!3868) (toList!1966 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192)))) (= (_1!2497 (h!4534 (toList!1966 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192))))) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(declare-fun b!263992 () Bool)

(assert (=> b!263992 (= e!171061 (contains!1913 lt!133671 (tuple2!4975 (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(declare-fun b!263993 () Bool)

(assert (=> b!263993 (= e!171059 call!25274)))

(declare-fun b!263994 () Bool)

(assert (=> b!263994 (= e!171060 call!25275)))

(declare-fun b!263995 () Bool)

(declare-fun e!171058 () List!3872)

(assert (=> b!263995 (= e!171058 (insertStrictlySorted!179 (t!8957 (toList!1966 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192)))) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!263996 () Bool)

(assert (=> b!263996 (= e!171057 call!25273)))

(declare-fun c!45105 () Bool)

(declare-fun bm!25272 () Bool)

(assert (=> bm!25272 (= call!25274 ($colon$colon!107 e!171058 (ite c!45105 (h!4534 (toList!1966 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192)))) (tuple2!4975 (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))))

(declare-fun c!45104 () Bool)

(assert (=> bm!25272 (= c!45104 c!45105)))

(declare-fun d!63547 () Bool)

(assert (=> d!63547 e!171061))

(declare-fun res!128890 () Bool)

(assert (=> d!63547 (=> (not res!128890) (not e!171061))))

(assert (=> d!63547 (= res!128890 (isStrictlySorted!372 lt!133671))))

(assert (=> d!63547 (= lt!133671 e!171059)))

(assert (=> d!63547 (= c!45105 (and ((_ is Cons!3868) (toList!1966 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192)))) (bvslt (_1!2497 (h!4534 (toList!1966 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192))))) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(assert (=> d!63547 (isStrictlySorted!372 (toList!1966 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192))))))

(assert (=> d!63547 (= (insertStrictlySorted!179 (toList!1966 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192))) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) lt!133671)))

(declare-fun b!263997 () Bool)

(assert (=> b!263997 (= e!171057 call!25273)))

(declare-fun b!263998 () Bool)

(assert (=> b!263998 (= e!171058 (ite c!45106 (t!8957 (toList!1966 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192)))) (ite c!45103 (Cons!3868 (h!4534 (toList!1966 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192)))) (t!8957 (toList!1966 (ite c!44876 call!25193 (ite c!44873 call!25191 call!25192))))) Nil!3869)))))

(assert (= (and d!63547 c!45105) b!263993))

(assert (= (and d!63547 (not c!45105)) b!263991))

(assert (= (and b!263991 c!45106) b!263994))

(assert (= (and b!263991 (not c!45106)) b!263990))

(assert (= (and b!263990 c!45103) b!263997))

(assert (= (and b!263990 (not c!45103)) b!263996))

(assert (= (or b!263997 b!263996) bm!25271))

(assert (= (or b!263994 bm!25271) bm!25270))

(assert (= (or b!263993 bm!25270) bm!25272))

(assert (= (and bm!25272 c!45104) b!263995))

(assert (= (and bm!25272 (not c!45104)) b!263998))

(assert (= (and d!63547 res!128890) b!263989))

(assert (= (and b!263989 res!128889) b!263992))

(declare-fun m!280655 () Bool)

(assert (=> bm!25272 m!280655))

(declare-fun m!280657 () Bool)

(assert (=> b!263995 m!280657))

(declare-fun m!280659 () Bool)

(assert (=> b!263992 m!280659))

(declare-fun m!280661 () Bool)

(assert (=> b!263989 m!280661))

(declare-fun m!280663 () Bool)

(assert (=> d!63547 m!280663))

(declare-fun m!280665 () Bool)

(assert (=> d!63547 m!280665))

(assert (=> d!63093 d!63547))

(declare-fun d!63549 () Bool)

(declare-fun lt!133672 () Bool)

(assert (=> d!63549 (= lt!133672 (select (content!175 lt!133288) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(declare-fun e!171063 () Bool)

(assert (=> d!63549 (= lt!133672 e!171063)))

(declare-fun res!128892 () Bool)

(assert (=> d!63549 (=> (not res!128892) (not e!171063))))

(assert (=> d!63549 (= res!128892 ((_ is Cons!3868) lt!133288))))

(assert (=> d!63549 (= (contains!1913 lt!133288 (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))) lt!133672)))

(declare-fun b!263999 () Bool)

(declare-fun e!171062 () Bool)

(assert (=> b!263999 (= e!171063 e!171062)))

(declare-fun res!128891 () Bool)

(assert (=> b!263999 (=> res!128891 e!171062)))

(assert (=> b!263999 (= res!128891 (= (h!4534 lt!133288) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(declare-fun b!264000 () Bool)

(assert (=> b!264000 (= e!171062 (contains!1913 (t!8957 lt!133288) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(assert (= (and d!63549 res!128892) b!263999))

(assert (= (and b!263999 (not res!128891)) b!264000))

(declare-fun m!280667 () Bool)

(assert (=> d!63549 m!280667))

(declare-fun m!280669 () Bool)

(assert (=> d!63549 m!280669))

(declare-fun m!280671 () Bool)

(assert (=> b!264000 m!280671))

(assert (=> b!263488 d!63549))

(declare-fun b!264001 () Bool)

(declare-fun e!171064 () (_ BitVec 32))

(assert (=> b!264001 (= e!171064 #b00000000000000000000000000000000)))

(declare-fun b!264003 () Bool)

(declare-fun e!171065 () (_ BitVec 32))

(assert (=> b!264003 (= e!171064 e!171065)))

(declare-fun c!45108 () Bool)

(assert (=> b!264003 (= c!45108 (validKeyInArray!0 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!264004 () Bool)

(declare-fun call!25276 () (_ BitVec 32))

(assert (=> b!264004 (= e!171065 call!25276)))

(declare-fun bm!25273 () Bool)

(assert (=> bm!25273 (= call!25276 (arrayCountValidKeys!0 lt!133048 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun d!63551 () Bool)

(declare-fun lt!133673 () (_ BitVec 32))

(assert (=> d!63551 (and (bvsge lt!133673 #b00000000000000000000000000000000) (bvsle lt!133673 (bvsub (size!6349 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> d!63551 (= lt!133673 e!171064)))

(declare-fun c!45107 () Bool)

(assert (=> d!63551 (= c!45107 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63551 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6349 (_keys!7035 thiss!1504)) (size!6349 lt!133048)))))

(assert (=> d!63551 (= (arrayCountValidKeys!0 lt!133048 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))) lt!133673)))

(declare-fun b!264002 () Bool)

(assert (=> b!264002 (= e!171065 (bvadd #b00000000000000000000000000000001 call!25276))))

(assert (= (and d!63551 c!45107) b!264001))

(assert (= (and d!63551 (not c!45107)) b!264003))

(assert (= (and b!264003 c!45108) b!264002))

(assert (= (and b!264003 (not c!45108)) b!264004))

(assert (= (or b!264002 b!264004) bm!25273))

(assert (=> b!264003 m!280331))

(assert (=> b!264003 m!280331))

(assert (=> b!264003 m!280335))

(declare-fun m!280673 () Bool)

(assert (=> bm!25273 m!280673))

(assert (=> bm!25217 d!63551))

(declare-fun d!63553 () Bool)

(declare-fun lt!133674 () Bool)

(assert (=> d!63553 (= lt!133674 (select (content!175 (toList!1966 lt!133297)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))

(declare-fun e!171067 () Bool)

(assert (=> d!63553 (= lt!133674 e!171067)))

(declare-fun res!128894 () Bool)

(assert (=> d!63553 (=> (not res!128894) (not e!171067))))

(assert (=> d!63553 (= res!128894 ((_ is Cons!3868) (toList!1966 lt!133297)))))

(assert (=> d!63553 (= (contains!1913 (toList!1966 lt!133297) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) lt!133674)))

(declare-fun b!264005 () Bool)

(declare-fun e!171066 () Bool)

(assert (=> b!264005 (= e!171067 e!171066)))

(declare-fun res!128893 () Bool)

(assert (=> b!264005 (=> res!128893 e!171066)))

(assert (=> b!264005 (= res!128893 (= (h!4534 (toList!1966 lt!133297)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))

(declare-fun b!264006 () Bool)

(assert (=> b!264006 (= e!171066 (contains!1913 (t!8957 (toList!1966 lt!133297)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))

(assert (= (and d!63553 res!128894) b!264005))

(assert (= (and b!264005 (not res!128893)) b!264006))

(declare-fun m!280675 () Bool)

(assert (=> d!63553 m!280675))

(declare-fun m!280677 () Bool)

(assert (=> d!63553 m!280677))

(declare-fun m!280679 () Bool)

(assert (=> b!264006 m!280679))

(assert (=> b!263224 d!63553))

(declare-fun e!171069 () Option!325)

(declare-fun b!264009 () Bool)

(assert (=> b!264009 (= e!171069 (getValueByKey!319 (t!8957 (toList!1966 lt!133329)) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!264007 () Bool)

(declare-fun e!171068 () Option!325)

(assert (=> b!264007 (= e!171068 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133329)))))))

(declare-fun c!45109 () Bool)

(declare-fun d!63555 () Bool)

(assert (=> d!63555 (= c!45109 (and ((_ is Cons!3868) (toList!1966 lt!133329)) (= (_1!2497 (h!4534 (toList!1966 lt!133329))) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(assert (=> d!63555 (= (getValueByKey!319 (toList!1966 lt!133329) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) e!171068)))

(declare-fun b!264010 () Bool)

(assert (=> b!264010 (= e!171069 None!323)))

(declare-fun b!264008 () Bool)

(assert (=> b!264008 (= e!171068 e!171069)))

(declare-fun c!45110 () Bool)

(assert (=> b!264008 (= c!45110 (and ((_ is Cons!3868) (toList!1966 lt!133329)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133329))) (_1!2497 (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))))

(assert (= (and d!63555 c!45109) b!264007))

(assert (= (and d!63555 (not c!45109)) b!264008))

(assert (= (and b!264008 c!45110) b!264009))

(assert (= (and b!264008 (not c!45110)) b!264010))

(declare-fun m!280681 () Bool)

(assert (=> b!264009 m!280681))

(assert (=> b!263284 d!63555))

(declare-fun d!63557 () Bool)

(declare-fun e!171070 () Bool)

(assert (=> d!63557 e!171070))

(declare-fun res!128895 () Bool)

(assert (=> d!63557 (=> res!128895 e!171070)))

(declare-fun lt!133676 () Bool)

(assert (=> d!63557 (= res!128895 (not lt!133676))))

(declare-fun lt!133675 () Bool)

(assert (=> d!63557 (= lt!133676 lt!133675)))

(declare-fun lt!133677 () Unit!8187)

(declare-fun e!171071 () Unit!8187)

(assert (=> d!63557 (= lt!133677 e!171071)))

(declare-fun c!45111 () Bool)

(assert (=> d!63557 (= c!45111 lt!133675)))

(assert (=> d!63557 (= lt!133675 (containsKey!311 (toList!1966 lt!133297) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (=> d!63557 (= (contains!1911 lt!133297 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) lt!133676)))

(declare-fun b!264011 () Bool)

(declare-fun lt!133678 () Unit!8187)

(assert (=> b!264011 (= e!171071 lt!133678)))

(assert (=> b!264011 (= lt!133678 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133297) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (=> b!264011 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133297) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!264012 () Bool)

(declare-fun Unit!8228 () Unit!8187)

(assert (=> b!264012 (= e!171071 Unit!8228)))

(declare-fun b!264013 () Bool)

(assert (=> b!264013 (= e!171070 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133297) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (= (and d!63557 c!45111) b!264011))

(assert (= (and d!63557 (not c!45111)) b!264012))

(assert (= (and d!63557 (not res!128895)) b!264013))

(declare-fun m!280683 () Bool)

(assert (=> d!63557 m!280683))

(declare-fun m!280685 () Bool)

(assert (=> b!264011 m!280685))

(assert (=> b!264011 m!279393))

(assert (=> b!264011 m!279393))

(declare-fun m!280687 () Bool)

(assert (=> b!264011 m!280687))

(assert (=> b!264013 m!279393))

(assert (=> b!264013 m!279393))

(assert (=> b!264013 m!280687))

(assert (=> d!63059 d!63557))

(declare-fun b!264016 () Bool)

(declare-fun e!171073 () Option!325)

(assert (=> b!264016 (= e!171073 (getValueByKey!319 (t!8957 lt!133298) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!264014 () Bool)

(declare-fun e!171072 () Option!325)

(assert (=> b!264014 (= e!171072 (Some!324 (_2!2497 (h!4534 lt!133298))))))

(declare-fun d!63559 () Bool)

(declare-fun c!45112 () Bool)

(assert (=> d!63559 (= c!45112 (and ((_ is Cons!3868) lt!133298) (= (_1!2497 (h!4534 lt!133298)) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63559 (= (getValueByKey!319 lt!133298 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) e!171072)))

(declare-fun b!264017 () Bool)

(assert (=> b!264017 (= e!171073 None!323)))

(declare-fun b!264015 () Bool)

(assert (=> b!264015 (= e!171072 e!171073)))

(declare-fun c!45113 () Bool)

(assert (=> b!264015 (= c!45113 (and ((_ is Cons!3868) lt!133298) (not (= (_1!2497 (h!4534 lt!133298)) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63559 c!45112) b!264014))

(assert (= (and d!63559 (not c!45112)) b!264015))

(assert (= (and b!264015 c!45113) b!264016))

(assert (= (and b!264015 (not c!45113)) b!264017))

(declare-fun m!280689 () Bool)

(assert (=> b!264016 m!280689))

(assert (=> d!63059 d!63559))

(declare-fun d!63561 () Bool)

(assert (=> d!63561 (= (getValueByKey!319 lt!133298 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun lt!133679 () Unit!8187)

(assert (=> d!63561 (= lt!133679 (choose!1302 lt!133298 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun e!171074 () Bool)

(assert (=> d!63561 e!171074))

(declare-fun res!128896 () Bool)

(assert (=> d!63561 (=> (not res!128896) (not e!171074))))

(assert (=> d!63561 (= res!128896 (isStrictlySorted!372 lt!133298))))

(assert (=> d!63561 (= (lemmaContainsTupThenGetReturnValue!177 lt!133298 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) lt!133679)))

(declare-fun b!264018 () Bool)

(declare-fun res!128897 () Bool)

(assert (=> b!264018 (=> (not res!128897) (not e!171074))))

(assert (=> b!264018 (= res!128897 (containsKey!311 lt!133298 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!264019 () Bool)

(assert (=> b!264019 (= e!171074 (contains!1913 lt!133298 (tuple2!4975 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (= (and d!63561 res!128896) b!264018))

(assert (= (and b!264018 res!128897) b!264019))

(assert (=> d!63561 m!279387))

(declare-fun m!280691 () Bool)

(assert (=> d!63561 m!280691))

(declare-fun m!280693 () Bool)

(assert (=> d!63561 m!280693))

(declare-fun m!280695 () Bool)

(assert (=> b!264018 m!280695))

(declare-fun m!280697 () Bool)

(assert (=> b!264019 m!280697))

(assert (=> d!63059 d!63561))

(declare-fun bm!25274 () Bool)

(declare-fun call!25279 () List!3872)

(declare-fun call!25278 () List!3872)

(assert (=> bm!25274 (= call!25279 call!25278)))

(declare-fun bm!25275 () Bool)

(declare-fun call!25277 () List!3872)

(assert (=> bm!25275 (= call!25277 call!25279)))

(declare-fun b!264020 () Bool)

(declare-fun res!128898 () Bool)

(declare-fun e!171079 () Bool)

(assert (=> b!264020 (=> (not res!128898) (not e!171079))))

(declare-fun lt!133680 () List!3872)

(assert (=> b!264020 (= res!128898 (containsKey!311 lt!133680 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!264021 () Bool)

(declare-fun c!45114 () Bool)

(assert (=> b!264021 (= c!45114 (and ((_ is Cons!3868) (toList!1966 call!25179)) (bvsgt (_1!2497 (h!4534 (toList!1966 call!25179))) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun e!171078 () List!3872)

(declare-fun e!171075 () List!3872)

(assert (=> b!264021 (= e!171078 e!171075)))

(declare-fun b!264022 () Bool)

(declare-fun e!171077 () List!3872)

(assert (=> b!264022 (= e!171077 e!171078)))

(declare-fun c!45117 () Bool)

(assert (=> b!264022 (= c!45117 (and ((_ is Cons!3868) (toList!1966 call!25179)) (= (_1!2497 (h!4534 (toList!1966 call!25179))) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!264023 () Bool)

(assert (=> b!264023 (= e!171079 (contains!1913 lt!133680 (tuple2!4975 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!264024 () Bool)

(assert (=> b!264024 (= e!171077 call!25278)))

(declare-fun b!264025 () Bool)

(assert (=> b!264025 (= e!171078 call!25279)))

(declare-fun b!264026 () Bool)

(declare-fun e!171076 () List!3872)

(assert (=> b!264026 (= e!171076 (insertStrictlySorted!179 (t!8957 (toList!1966 call!25179)) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!264027 () Bool)

(assert (=> b!264027 (= e!171075 call!25277)))

(declare-fun c!45116 () Bool)

(declare-fun bm!25276 () Bool)

(assert (=> bm!25276 (= call!25278 ($colon$colon!107 e!171076 (ite c!45116 (h!4534 (toList!1966 call!25179)) (tuple2!4975 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(declare-fun c!45115 () Bool)

(assert (=> bm!25276 (= c!45115 c!45116)))

(declare-fun d!63563 () Bool)

(assert (=> d!63563 e!171079))

(declare-fun res!128899 () Bool)

(assert (=> d!63563 (=> (not res!128899) (not e!171079))))

(assert (=> d!63563 (= res!128899 (isStrictlySorted!372 lt!133680))))

(assert (=> d!63563 (= lt!133680 e!171077)))

(assert (=> d!63563 (= c!45116 (and ((_ is Cons!3868) (toList!1966 call!25179)) (bvslt (_1!2497 (h!4534 (toList!1966 call!25179))) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63563 (isStrictlySorted!372 (toList!1966 call!25179))))

(assert (=> d!63563 (= (insertStrictlySorted!179 (toList!1966 call!25179) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) lt!133680)))

(declare-fun b!264028 () Bool)

(assert (=> b!264028 (= e!171075 call!25277)))

(declare-fun b!264029 () Bool)

(assert (=> b!264029 (= e!171076 (ite c!45117 (t!8957 (toList!1966 call!25179)) (ite c!45114 (Cons!3868 (h!4534 (toList!1966 call!25179)) (t!8957 (toList!1966 call!25179))) Nil!3869)))))

(assert (= (and d!63563 c!45116) b!264024))

(assert (= (and d!63563 (not c!45116)) b!264022))

(assert (= (and b!264022 c!45117) b!264025))

(assert (= (and b!264022 (not c!45117)) b!264021))

(assert (= (and b!264021 c!45114) b!264028))

(assert (= (and b!264021 (not c!45114)) b!264027))

(assert (= (or b!264028 b!264027) bm!25275))

(assert (= (or b!264025 bm!25275) bm!25274))

(assert (= (or b!264024 bm!25274) bm!25276))

(assert (= (and bm!25276 c!45115) b!264026))

(assert (= (and bm!25276 (not c!45115)) b!264029))

(assert (= (and d!63563 res!128899) b!264020))

(assert (= (and b!264020 res!128898) b!264023))

(declare-fun m!280699 () Bool)

(assert (=> bm!25276 m!280699))

(declare-fun m!280701 () Bool)

(assert (=> b!264026 m!280701))

(declare-fun m!280703 () Bool)

(assert (=> b!264023 m!280703))

(declare-fun m!280705 () Bool)

(assert (=> b!264020 m!280705))

(declare-fun m!280707 () Bool)

(assert (=> d!63563 m!280707))

(declare-fun m!280709 () Bool)

(assert (=> d!63563 m!280709))

(assert (=> d!63059 d!63563))

(declare-fun b!264032 () Bool)

(declare-fun e!171081 () Option!325)

(assert (=> b!264032 (= e!171081 (getValueByKey!319 (t!8957 (t!8957 (toList!1966 lt!133287))) (_1!2497 lt!133042)))))

(declare-fun b!264030 () Bool)

(declare-fun e!171080 () Option!325)

(assert (=> b!264030 (= e!171080 (Some!324 (_2!2497 (h!4534 (t!8957 (toList!1966 lt!133287))))))))

(declare-fun d!63565 () Bool)

(declare-fun c!45118 () Bool)

(assert (=> d!63565 (= c!45118 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133287))) (= (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133287)))) (_1!2497 lt!133042))))))

(assert (=> d!63565 (= (getValueByKey!319 (t!8957 (toList!1966 lt!133287)) (_1!2497 lt!133042)) e!171080)))

(declare-fun b!264033 () Bool)

(assert (=> b!264033 (= e!171081 None!323)))

(declare-fun b!264031 () Bool)

(assert (=> b!264031 (= e!171080 e!171081)))

(declare-fun c!45119 () Bool)

(assert (=> b!264031 (= c!45119 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133287))) (not (= (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133287)))) (_1!2497 lt!133042)))))))

(assert (= (and d!63565 c!45118) b!264030))

(assert (= (and d!63565 (not c!45118)) b!264031))

(assert (= (and b!264031 c!45119) b!264032))

(assert (= (and b!264031 (not c!45119)) b!264033))

(declare-fun m!280711 () Bool)

(assert (=> b!264032 m!280711))

(assert (=> b!263586 d!63565))

(declare-fun d!63567 () Bool)

(declare-fun lt!133681 () Bool)

(assert (=> d!63567 (= lt!133681 (select (content!175 lt!133435) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(declare-fun e!171083 () Bool)

(assert (=> d!63567 (= lt!133681 e!171083)))

(declare-fun res!128901 () Bool)

(assert (=> d!63567 (=> (not res!128901) (not e!171083))))

(assert (=> d!63567 (= res!128901 ((_ is Cons!3868) lt!133435))))

(assert (=> d!63567 (= (contains!1913 lt!133435 (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))) lt!133681)))

(declare-fun b!264034 () Bool)

(declare-fun e!171082 () Bool)

(assert (=> b!264034 (= e!171083 e!171082)))

(declare-fun res!128900 () Bool)

(assert (=> b!264034 (=> res!128900 e!171082)))

(assert (=> b!264034 (= res!128900 (= (h!4534 lt!133435) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(declare-fun b!264035 () Bool)

(assert (=> b!264035 (= e!171082 (contains!1913 (t!8957 lt!133435) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(assert (= (and d!63567 res!128901) b!264034))

(assert (= (and b!264034 (not res!128900)) b!264035))

(declare-fun m!280713 () Bool)

(assert (=> d!63567 m!280713))

(declare-fun m!280715 () Bool)

(assert (=> d!63567 m!280715))

(declare-fun m!280717 () Bool)

(assert (=> b!264035 m!280717))

(assert (=> b!263512 d!63567))

(declare-fun b!264038 () Bool)

(declare-fun e!171085 () Option!325)

(assert (=> b!264038 (= e!171085 (getValueByKey!319 (t!8957 (t!8957 (toList!1966 lt!133149))) (_1!2497 lt!133042)))))

(declare-fun b!264036 () Bool)

(declare-fun e!171084 () Option!325)

(assert (=> b!264036 (= e!171084 (Some!324 (_2!2497 (h!4534 (t!8957 (toList!1966 lt!133149))))))))

(declare-fun d!63569 () Bool)

(declare-fun c!45120 () Bool)

(assert (=> d!63569 (= c!45120 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133149))) (= (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133149)))) (_1!2497 lt!133042))))))

(assert (=> d!63569 (= (getValueByKey!319 (t!8957 (toList!1966 lt!133149)) (_1!2497 lt!133042)) e!171084)))

(declare-fun b!264039 () Bool)

(assert (=> b!264039 (= e!171085 None!323)))

(declare-fun b!264037 () Bool)

(assert (=> b!264037 (= e!171084 e!171085)))

(declare-fun c!45121 () Bool)

(assert (=> b!264037 (= c!45121 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133149))) (not (= (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133149)))) (_1!2497 lt!133042)))))))

(assert (= (and d!63569 c!45120) b!264036))

(assert (= (and d!63569 (not c!45120)) b!264037))

(assert (= (and b!264037 c!45121) b!264038))

(assert (= (and b!264037 (not c!45121)) b!264039))

(declare-fun m!280719 () Bool)

(assert (=> b!264038 m!280719))

(assert (=> b!263474 d!63569))

(assert (=> b!263408 d!63237))

(declare-fun d!63571 () Bool)

(assert (=> d!63571 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133278) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!133682 () Unit!8187)

(assert (=> d!63571 (= lt!133682 (choose!1301 (toList!1966 lt!133278) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!171086 () Bool)

(assert (=> d!63571 e!171086))

(declare-fun res!128902 () Bool)

(assert (=> d!63571 (=> (not res!128902) (not e!171086))))

(assert (=> d!63571 (= res!128902 (isStrictlySorted!372 (toList!1966 lt!133278)))))

(assert (=> d!63571 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133278) #b0000000000000000000000000000000000000000000000000000000000000000) lt!133682)))

(declare-fun b!264040 () Bool)

(assert (=> b!264040 (= e!171086 (containsKey!311 (toList!1966 lt!133278) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!63571 res!128902) b!264040))

(assert (=> d!63571 m!279585))

(assert (=> d!63571 m!279585))

(assert (=> d!63571 m!279693))

(declare-fun m!280721 () Bool)

(assert (=> d!63571 m!280721))

(assert (=> d!63571 m!280119))

(assert (=> b!264040 m!279689))

(assert (=> b!263469 d!63571))

(declare-fun d!63573 () Bool)

(assert (=> d!63573 (= (isDefined!261 (getValueByKey!319 (toList!1966 lt!133278) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!545 (getValueByKey!319 (toList!1966 lt!133278) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!9302 () Bool)

(assert (= bs!9302 d!63573))

(assert (=> bs!9302 m!279585))

(declare-fun m!280723 () Bool)

(assert (=> bs!9302 m!280723))

(assert (=> b!263469 d!63573))

(assert (=> b!263469 d!63469))

(declare-fun e!171087 () Bool)

(declare-fun b!264041 () Bool)

(assert (=> b!264041 (= e!171087 (contains!1914 (ite c!44969 (Cons!3869 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000) Nil!3870) Nil!3870) (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!264043 () Bool)

(declare-fun e!171090 () Bool)

(declare-fun call!25280 () Bool)

(assert (=> b!264043 (= e!171090 call!25280)))

(declare-fun b!264044 () Bool)

(declare-fun e!171088 () Bool)

(assert (=> b!264044 (= e!171088 e!171090)))

(declare-fun c!45122 () Bool)

(assert (=> b!264044 (= c!45122 (validKeyInArray!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!264042 () Bool)

(declare-fun e!171089 () Bool)

(assert (=> b!264042 (= e!171089 e!171088)))

(declare-fun res!128904 () Bool)

(assert (=> b!264042 (=> (not res!128904) (not e!171088))))

(assert (=> b!264042 (= res!128904 (not e!171087))))

(declare-fun res!128905 () Bool)

(assert (=> b!264042 (=> (not res!128905) (not e!171087))))

(assert (=> b!264042 (= res!128905 (validKeyInArray!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!63575 () Bool)

(declare-fun res!128903 () Bool)

(assert (=> d!63575 (=> res!128903 e!171089)))

(assert (=> d!63575 (= res!128903 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(assert (=> d!63575 (= (arrayNoDuplicates!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44969 (Cons!3869 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) e!171089)))

(declare-fun bm!25277 () Bool)

(assert (=> bm!25277 (= call!25280 (arrayNoDuplicates!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!45122 (Cons!3869 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!44969 (Cons!3869 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) (ite c!44969 (Cons!3869 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000) Nil!3870) Nil!3870))))))

(declare-fun b!264045 () Bool)

(assert (=> b!264045 (= e!171090 call!25280)))

(assert (= (and d!63575 (not res!128903)) b!264042))

(assert (= (and b!264042 res!128905) b!264041))

(assert (= (and b!264042 res!128904) b!264044))

(assert (= (and b!264044 c!45122) b!264043))

(assert (= (and b!264044 (not c!45122)) b!264045))

(assert (= (or b!264043 b!264045) bm!25277))

(assert (=> b!264041 m!280519))

(assert (=> b!264041 m!280519))

(declare-fun m!280725 () Bool)

(assert (=> b!264041 m!280725))

(assert (=> b!264044 m!280519))

(assert (=> b!264044 m!280519))

(assert (=> b!264044 m!280529))

(assert (=> b!264042 m!280519))

(assert (=> b!264042 m!280519))

(assert (=> b!264042 m!280529))

(assert (=> bm!25277 m!280519))

(declare-fun m!280727 () Bool)

(assert (=> bm!25277 m!280727))

(assert (=> bm!25227 d!63575))

(declare-fun d!63577 () Bool)

(assert (=> d!63577 (= (get!3096 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!5500 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!263322 d!63577))

(declare-fun b!264046 () Bool)

(declare-fun e!171096 () Bool)

(declare-fun lt!133684 () ListLongMap!3901)

(assert (=> b!264046 (= e!171096 (= lt!133684 (getCurrentListMapNoExtraKeys!581 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!4843 thiss!1504))))))

(declare-fun b!264047 () Bool)

(declare-fun e!171094 () Bool)

(assert (=> b!264047 (= e!171094 (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!264047 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!264048 () Bool)

(declare-fun res!128906 () Bool)

(declare-fun e!171095 () Bool)

(assert (=> b!264048 (=> (not res!128906) (not e!171095))))

(assert (=> b!264048 (= res!128906 (not (contains!1911 lt!133684 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!264049 () Bool)

(declare-fun e!171097 () Bool)

(assert (=> b!264049 (= e!171095 e!171097)))

(declare-fun c!45124 () Bool)

(assert (=> b!264049 (= c!45124 e!171094)))

(declare-fun res!128907 () Bool)

(assert (=> b!264049 (=> (not res!128907) (not e!171094))))

(assert (=> b!264049 (= res!128907 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun b!264050 () Bool)

(declare-fun e!171093 () ListLongMap!3901)

(declare-fun e!171091 () ListLongMap!3901)

(assert (=> b!264050 (= e!171093 e!171091)))

(declare-fun c!45126 () Bool)

(assert (=> b!264050 (= c!45126 (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!264051 () Bool)

(assert (=> b!264051 (= e!171096 (isEmpty!546 lt!133684))))

(declare-fun bm!25278 () Bool)

(declare-fun call!25281 () ListLongMap!3901)

(assert (=> bm!25278 (= call!25281 (getCurrentListMapNoExtraKeys!581 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!4843 thiss!1504)))))

(declare-fun d!63579 () Bool)

(assert (=> d!63579 e!171095))

(declare-fun res!128909 () Bool)

(assert (=> d!63579 (=> (not res!128909) (not e!171095))))

(assert (=> d!63579 (= res!128909 (not (contains!1911 lt!133684 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63579 (= lt!133684 e!171093)))

(declare-fun c!45123 () Bool)

(assert (=> d!63579 (= c!45123 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63579 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63579 (= (getCurrentListMapNoExtraKeys!581 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4843 thiss!1504)) lt!133684)))

(declare-fun b!264052 () Bool)

(assert (=> b!264052 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> b!264052 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6348 (_values!4826 thiss!1504))))))

(declare-fun e!171092 () Bool)

(assert (=> b!264052 (= e!171092 (= (apply!262 lt!133684 (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!264053 () Bool)

(assert (=> b!264053 (= e!171097 e!171096)))

(declare-fun c!45125 () Bool)

(assert (=> b!264053 (= c!45125 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun b!264054 () Bool)

(assert (=> b!264054 (= e!171093 (ListLongMap!3902 Nil!3869))))

(declare-fun b!264055 () Bool)

(declare-fun lt!133683 () Unit!8187)

(declare-fun lt!133686 () Unit!8187)

(assert (=> b!264055 (= lt!133683 lt!133686)))

(declare-fun lt!133685 () V!8523)

(declare-fun lt!133688 () (_ BitVec 64))

(declare-fun lt!133689 () ListLongMap!3901)

(declare-fun lt!133687 () (_ BitVec 64))

(assert (=> b!264055 (not (contains!1911 (+!705 lt!133689 (tuple2!4975 lt!133688 lt!133685)) lt!133687))))

(assert (=> b!264055 (= lt!133686 (addStillNotContains!131 lt!133689 lt!133688 lt!133685 lt!133687))))

(assert (=> b!264055 (= lt!133687 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!264055 (= lt!133685 (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!264055 (= lt!133688 (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!264055 (= lt!133689 call!25281)))

(assert (=> b!264055 (= e!171091 (+!705 call!25281 (tuple2!4975 (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!264056 () Bool)

(assert (=> b!264056 (= e!171091 call!25281)))

(declare-fun b!264057 () Bool)

(assert (=> b!264057 (= e!171097 e!171092)))

(assert (=> b!264057 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun res!128908 () Bool)

(assert (=> b!264057 (= res!128908 (contains!1911 lt!133684 (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!264057 (=> (not res!128908) (not e!171092))))

(assert (= (and d!63579 c!45123) b!264054))

(assert (= (and d!63579 (not c!45123)) b!264050))

(assert (= (and b!264050 c!45126) b!264055))

(assert (= (and b!264050 (not c!45126)) b!264056))

(assert (= (or b!264055 b!264056) bm!25278))

(assert (= (and d!63579 res!128909) b!264048))

(assert (= (and b!264048 res!128906) b!264049))

(assert (= (and b!264049 res!128907) b!264047))

(assert (= (and b!264049 c!45124) b!264057))

(assert (= (and b!264049 (not c!45124)) b!264053))

(assert (= (and b!264057 res!128908) b!264052))

(assert (= (and b!264053 c!45125) b!264046))

(assert (= (and b!264053 (not c!45125)) b!264051))

(declare-fun b_lambda!8403 () Bool)

(assert (=> (not b_lambda!8403) (not b!264052)))

(assert (=> b!264052 t!8961))

(declare-fun b_and!13987 () Bool)

(assert (= b_and!13985 (and (=> t!8961 result!5441) b_and!13987)))

(declare-fun b_lambda!8405 () Bool)

(assert (=> (not b_lambda!8405) (not b!264055)))

(assert (=> b!264055 t!8961))

(declare-fun b_and!13989 () Bool)

(assert (= b_and!13987 (and (=> t!8961 result!5441) b_and!13989)))

(declare-fun m!280729 () Bool)

(assert (=> bm!25278 m!280729))

(assert (=> b!264047 m!279575))

(assert (=> b!264047 m!279575))

(assert (=> b!264047 m!279761))

(assert (=> b!264046 m!280729))

(declare-fun m!280731 () Bool)

(assert (=> b!264055 m!280731))

(assert (=> b!264055 m!279229))

(declare-fun m!280733 () Bool)

(assert (=> b!264055 m!280733))

(assert (=> b!264055 m!279575))

(declare-fun m!280735 () Bool)

(assert (=> b!264055 m!280735))

(declare-fun m!280737 () Bool)

(assert (=> b!264055 m!280737))

(declare-fun m!280739 () Bool)

(assert (=> b!264055 m!280739))

(assert (=> b!264055 m!280737))

(assert (=> b!264055 m!280735))

(assert (=> b!264055 m!279229))

(declare-fun m!280741 () Bool)

(assert (=> b!264055 m!280741))

(declare-fun m!280743 () Bool)

(assert (=> b!264051 m!280743))

(assert (=> b!264057 m!279575))

(assert (=> b!264057 m!279575))

(declare-fun m!280745 () Bool)

(assert (=> b!264057 m!280745))

(declare-fun m!280747 () Bool)

(assert (=> b!264048 m!280747))

(assert (=> b!264050 m!279575))

(assert (=> b!264050 m!279575))

(assert (=> b!264050 m!279761))

(declare-fun m!280749 () Bool)

(assert (=> d!63579 m!280749))

(assert (=> d!63579 m!279117))

(assert (=> b!264052 m!279229))

(assert (=> b!264052 m!279575))

(assert (=> b!264052 m!280735))

(assert (=> b!264052 m!279575))

(declare-fun m!280751 () Bool)

(assert (=> b!264052 m!280751))

(assert (=> b!264052 m!280735))

(assert (=> b!264052 m!279229))

(assert (=> b!264052 m!280741))

(assert (=> bm!25207 d!63579))

(declare-fun d!63581 () Bool)

(declare-fun res!128910 () Bool)

(declare-fun e!171098 () Bool)

(assert (=> d!63581 (=> res!128910 e!171098)))

(assert (=> d!63581 (= res!128910 (and ((_ is Cons!3868) lt!133511) (= (_1!2497 (h!4534 lt!133511)) (_1!2497 lt!133042))))))

(assert (=> d!63581 (= (containsKey!311 lt!133511 (_1!2497 lt!133042)) e!171098)))

(declare-fun b!264058 () Bool)

(declare-fun e!171099 () Bool)

(assert (=> b!264058 (= e!171098 e!171099)))

(declare-fun res!128911 () Bool)

(assert (=> b!264058 (=> (not res!128911) (not e!171099))))

(assert (=> b!264058 (= res!128911 (and (or (not ((_ is Cons!3868) lt!133511)) (bvsle (_1!2497 (h!4534 lt!133511)) (_1!2497 lt!133042))) ((_ is Cons!3868) lt!133511) (bvslt (_1!2497 (h!4534 lt!133511)) (_1!2497 lt!133042))))))

(declare-fun b!264059 () Bool)

(assert (=> b!264059 (= e!171099 (containsKey!311 (t!8957 lt!133511) (_1!2497 lt!133042)))))

(assert (= (and d!63581 (not res!128910)) b!264058))

(assert (= (and b!264058 res!128911) b!264059))

(declare-fun m!280753 () Bool)

(assert (=> b!264059 m!280753))

(assert (=> b!263623 d!63581))

(assert (=> bm!25202 d!63037))

(declare-fun d!63583 () Bool)

(assert (=> d!63583 (= (get!3095 (getValueByKey!319 (toList!1966 lt!133276) lt!133267)) (v!5504 (getValueByKey!319 (toList!1966 lt!133276) lt!133267)))))

(assert (=> d!63251 d!63583))

(declare-fun b!264062 () Bool)

(declare-fun e!171101 () Option!325)

(assert (=> b!264062 (= e!171101 (getValueByKey!319 (t!8957 (toList!1966 lt!133276)) lt!133267))))

(declare-fun b!264060 () Bool)

(declare-fun e!171100 () Option!325)

(assert (=> b!264060 (= e!171100 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133276)))))))

(declare-fun d!63585 () Bool)

(declare-fun c!45127 () Bool)

(assert (=> d!63585 (= c!45127 (and ((_ is Cons!3868) (toList!1966 lt!133276)) (= (_1!2497 (h!4534 (toList!1966 lt!133276))) lt!133267)))))

(assert (=> d!63585 (= (getValueByKey!319 (toList!1966 lt!133276) lt!133267) e!171100)))

(declare-fun b!264063 () Bool)

(assert (=> b!264063 (= e!171101 None!323)))

(declare-fun b!264061 () Bool)

(assert (=> b!264061 (= e!171100 e!171101)))

(declare-fun c!45128 () Bool)

(assert (=> b!264061 (= c!45128 (and ((_ is Cons!3868) (toList!1966 lt!133276)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133276))) lt!133267))))))

(assert (= (and d!63585 c!45127) b!264060))

(assert (= (and d!63585 (not c!45127)) b!264061))

(assert (= (and b!264061 c!45128) b!264062))

(assert (= (and b!264061 (not c!45128)) b!264063))

(declare-fun m!280755 () Bool)

(assert (=> b!264062 m!280755))

(assert (=> d!63251 d!63585))

(assert (=> d!63273 d!63259))

(assert (=> d!63273 d!63249))

(declare-fun d!63587 () Bool)

(assert (=> d!63587 (contains!1911 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))) lt!133277)))

(assert (=> d!63587 true))

(declare-fun _$35!419 () Unit!8187)

(assert (=> d!63587 (= (choose!1304 lt!133284 lt!133264 (zeroValue!4684 thiss!1504) lt!133277) _$35!419)))

(declare-fun bs!9303 () Bool)

(assert (= bs!9303 d!63587))

(assert (=> bs!9303 m!279325))

(assert (=> bs!9303 m!279325))

(assert (=> bs!9303 m!279327))

(assert (=> d!63273 d!63587))

(declare-fun d!63589 () Bool)

(declare-fun e!171102 () Bool)

(assert (=> d!63589 e!171102))

(declare-fun res!128912 () Bool)

(assert (=> d!63589 (=> res!128912 e!171102)))

(declare-fun lt!133691 () Bool)

(assert (=> d!63589 (= res!128912 (not lt!133691))))

(declare-fun lt!133690 () Bool)

(assert (=> d!63589 (= lt!133691 lt!133690)))

(declare-fun lt!133692 () Unit!8187)

(declare-fun e!171103 () Unit!8187)

(assert (=> d!63589 (= lt!133692 e!171103)))

(declare-fun c!45129 () Bool)

(assert (=> d!63589 (= c!45129 lt!133690)))

(assert (=> d!63589 (= lt!133690 (containsKey!311 (toList!1966 lt!133284) lt!133277))))

(assert (=> d!63589 (= (contains!1911 lt!133284 lt!133277) lt!133691)))

(declare-fun b!264065 () Bool)

(declare-fun lt!133693 () Unit!8187)

(assert (=> b!264065 (= e!171103 lt!133693)))

(assert (=> b!264065 (= lt!133693 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133284) lt!133277))))

(assert (=> b!264065 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133284) lt!133277))))

(declare-fun b!264066 () Bool)

(declare-fun Unit!8229 () Unit!8187)

(assert (=> b!264066 (= e!171103 Unit!8229)))

(declare-fun b!264067 () Bool)

(assert (=> b!264067 (= e!171102 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133284) lt!133277)))))

(assert (= (and d!63589 c!45129) b!264065))

(assert (= (and d!63589 (not c!45129)) b!264066))

(assert (= (and d!63589 (not res!128912)) b!264067))

(declare-fun m!280757 () Bool)

(assert (=> d!63589 m!280757))

(declare-fun m!280759 () Bool)

(assert (=> b!264065 m!280759))

(declare-fun m!280761 () Bool)

(assert (=> b!264065 m!280761))

(assert (=> b!264065 m!280761))

(declare-fun m!280763 () Bool)

(assert (=> b!264065 m!280763))

(assert (=> b!264067 m!280761))

(assert (=> b!264067 m!280761))

(assert (=> b!264067 m!280763))

(assert (=> d!63273 d!63589))

(assert (=> b!263317 d!63477))

(assert (=> b!263317 d!63479))

(declare-fun d!63591 () Bool)

(declare-fun res!128913 () Bool)

(declare-fun e!171104 () Bool)

(assert (=> d!63591 (=> res!128913 e!171104)))

(assert (=> d!63591 (= res!128913 (and ((_ is Cons!3868) (toList!1966 lt!133278)) (= (_1!2497 (h!4534 (toList!1966 lt!133278))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63591 (= (containsKey!311 (toList!1966 lt!133278) #b0000000000000000000000000000000000000000000000000000000000000000) e!171104)))

(declare-fun b!264068 () Bool)

(declare-fun e!171105 () Bool)

(assert (=> b!264068 (= e!171104 e!171105)))

(declare-fun res!128914 () Bool)

(assert (=> b!264068 (=> (not res!128914) (not e!171105))))

(assert (=> b!264068 (= res!128914 (and (or (not ((_ is Cons!3868) (toList!1966 lt!133278))) (bvsle (_1!2497 (h!4534 (toList!1966 lt!133278))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!3868) (toList!1966 lt!133278)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133278))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!264069 () Bool)

(assert (=> b!264069 (= e!171105 (containsKey!311 (t!8957 (toList!1966 lt!133278)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!63591 (not res!128913)) b!264068))

(assert (= (and b!264068 res!128914) b!264069))

(declare-fun m!280765 () Bool)

(assert (=> b!264069 m!280765))

(assert (=> d!63159 d!63591))

(assert (=> b!263478 d!63485))

(assert (=> b!263478 d!63241))

(declare-fun b!264072 () Bool)

(declare-fun e!171107 () Option!325)

(assert (=> b!264072 (= e!171107 (getValueByKey!319 (t!8957 (t!8957 (toList!1966 lt!133034))) key!932))))

(declare-fun b!264070 () Bool)

(declare-fun e!171106 () Option!325)

(assert (=> b!264070 (= e!171106 (Some!324 (_2!2497 (h!4534 (t!8957 (toList!1966 lt!133034))))))))

(declare-fun d!63593 () Bool)

(declare-fun c!45130 () Bool)

(assert (=> d!63593 (= c!45130 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133034))) (= (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133034)))) key!932)))))

(assert (=> d!63593 (= (getValueByKey!319 (t!8957 (toList!1966 lt!133034)) key!932) e!171106)))

(declare-fun b!264073 () Bool)

(assert (=> b!264073 (= e!171107 None!323)))

(declare-fun b!264071 () Bool)

(assert (=> b!264071 (= e!171106 e!171107)))

(declare-fun c!45131 () Bool)

(assert (=> b!264071 (= c!45131 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133034))) (not (= (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133034)))) key!932))))))

(assert (= (and d!63593 c!45130) b!264070))

(assert (= (and d!63593 (not c!45130)) b!264071))

(assert (= (and b!264071 c!45131) b!264072))

(assert (= (and b!264071 (not c!45131)) b!264073))

(declare-fun m!280767 () Bool)

(assert (=> b!264072 m!280767))

(assert (=> b!263275 d!63593))

(declare-fun d!63595 () Bool)

(declare-fun res!128915 () Bool)

(declare-fun e!171108 () Bool)

(assert (=> d!63595 (=> res!128915 e!171108)))

(assert (=> d!63595 (= res!128915 (and ((_ is Cons!3868) lt!133288) (= (_1!2497 (h!4534 lt!133288)) (_1!2497 lt!133042))))))

(assert (=> d!63595 (= (containsKey!311 lt!133288 (_1!2497 lt!133042)) e!171108)))

(declare-fun b!264074 () Bool)

(declare-fun e!171109 () Bool)

(assert (=> b!264074 (= e!171108 e!171109)))

(declare-fun res!128916 () Bool)

(assert (=> b!264074 (=> (not res!128916) (not e!171109))))

(assert (=> b!264074 (= res!128916 (and (or (not ((_ is Cons!3868) lt!133288)) (bvsle (_1!2497 (h!4534 lt!133288)) (_1!2497 lt!133042))) ((_ is Cons!3868) lt!133288) (bvslt (_1!2497 (h!4534 lt!133288)) (_1!2497 lt!133042))))))

(declare-fun b!264075 () Bool)

(assert (=> b!264075 (= e!171109 (containsKey!311 (t!8957 lt!133288) (_1!2497 lt!133042)))))

(assert (= (and d!63595 (not res!128915)) b!264074))

(assert (= (and b!264074 res!128916) b!264075))

(declare-fun m!280769 () Bool)

(assert (=> b!264075 m!280769))

(assert (=> b!263487 d!63595))

(declare-fun d!63597 () Bool)

(assert (=> d!63597 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133223) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun lt!133694 () Unit!8187)

(assert (=> d!63597 (= lt!133694 (choose!1301 (toList!1966 lt!133223) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!171110 () Bool)

(assert (=> d!63597 e!171110))

(declare-fun res!128917 () Bool)

(assert (=> d!63597 (=> (not res!128917) (not e!171110))))

(assert (=> d!63597 (= res!128917 (isStrictlySorted!372 (toList!1966 lt!133223)))))

(assert (=> d!63597 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133223) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)) lt!133694)))

(declare-fun b!264076 () Bool)

(assert (=> b!264076 (= e!171110 (containsKey!311 (toList!1966 lt!133223) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!63597 res!128917) b!264076))

(assert (=> d!63597 m!279177))

(assert (=> d!63597 m!279511))

(assert (=> d!63597 m!279511))

(assert (=> d!63597 m!280105))

(assert (=> d!63597 m!279177))

(declare-fun m!280771 () Bool)

(assert (=> d!63597 m!280771))

(assert (=> d!63597 m!280301))

(assert (=> b!264076 m!279177))

(assert (=> b!264076 m!280101))

(assert (=> b!263666 d!63597))

(declare-fun d!63599 () Bool)

(assert (=> d!63599 (= (isDefined!261 (getValueByKey!319 (toList!1966 lt!133223) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))) (not (isEmpty!545 (getValueByKey!319 (toList!1966 lt!133223) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))))

(declare-fun bs!9304 () Bool)

(assert (= bs!9304 d!63599))

(assert (=> bs!9304 m!279511))

(declare-fun m!280773 () Bool)

(assert (=> bs!9304 m!280773))

(assert (=> b!263666 d!63599))

(declare-fun b!264079 () Bool)

(declare-fun e!171112 () Option!325)

(assert (=> b!264079 (= e!171112 (getValueByKey!319 (t!8957 (toList!1966 lt!133223)) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!264077 () Bool)

(declare-fun e!171111 () Option!325)

(assert (=> b!264077 (= e!171111 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133223)))))))

(declare-fun d!63601 () Bool)

(declare-fun c!45132 () Bool)

(assert (=> d!63601 (= c!45132 (and ((_ is Cons!3868) (toList!1966 lt!133223)) (= (_1!2497 (h!4534 (toList!1966 lt!133223))) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (=> d!63601 (= (getValueByKey!319 (toList!1966 lt!133223) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)) e!171111)))

(declare-fun b!264080 () Bool)

(assert (=> b!264080 (= e!171112 None!323)))

(declare-fun b!264078 () Bool)

(assert (=> b!264078 (= e!171111 e!171112)))

(declare-fun c!45133 () Bool)

(assert (=> b!264078 (= c!45133 (and ((_ is Cons!3868) (toList!1966 lt!133223)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133223))) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))))

(assert (= (and d!63601 c!45132) b!264077))

(assert (= (and d!63601 (not c!45132)) b!264078))

(assert (= (and b!264078 c!45133) b!264079))

(assert (= (and b!264078 (not c!45133)) b!264080))

(assert (=> b!264079 m!279177))

(declare-fun m!280775 () Bool)

(assert (=> b!264079 m!280775))

(assert (=> b!263666 d!63601))

(declare-fun b!264083 () Bool)

(declare-fun e!171114 () Option!325)

(assert (=> b!264083 (= e!171114 (getValueByKey!319 (t!8957 (toList!1966 lt!133297)) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!264081 () Bool)

(declare-fun e!171113 () Option!325)

(assert (=> b!264081 (= e!171113 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133297)))))))

(declare-fun d!63603 () Bool)

(declare-fun c!45134 () Bool)

(assert (=> d!63603 (= c!45134 (and ((_ is Cons!3868) (toList!1966 lt!133297)) (= (_1!2497 (h!4534 (toList!1966 lt!133297))) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63603 (= (getValueByKey!319 (toList!1966 lt!133297) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) e!171113)))

(declare-fun b!264084 () Bool)

(assert (=> b!264084 (= e!171114 None!323)))

(declare-fun b!264082 () Bool)

(assert (=> b!264082 (= e!171113 e!171114)))

(declare-fun c!45135 () Bool)

(assert (=> b!264082 (= c!45135 (and ((_ is Cons!3868) (toList!1966 lt!133297)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133297))) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63603 c!45134) b!264081))

(assert (= (and d!63603 (not c!45134)) b!264082))

(assert (= (and b!264082 c!45135) b!264083))

(assert (= (and b!264082 (not c!45135)) b!264084))

(declare-fun m!280777 () Bool)

(assert (=> b!264083 m!280777))

(assert (=> b!263223 d!63603))

(declare-fun d!63605 () Bool)

(declare-fun e!171115 () Bool)

(assert (=> d!63605 e!171115))

(declare-fun res!128918 () Bool)

(assert (=> d!63605 (=> (not res!128918) (not e!171115))))

(declare-fun lt!133697 () ListLongMap!3901)

(assert (=> d!63605 (= res!128918 (contains!1911 lt!133697 (_1!2497 (ite (or c!44937 c!44934) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun lt!133698 () List!3872)

(assert (=> d!63605 (= lt!133697 (ListLongMap!3902 lt!133698))))

(declare-fun lt!133696 () Unit!8187)

(declare-fun lt!133695 () Unit!8187)

(assert (=> d!63605 (= lt!133696 lt!133695)))

(assert (=> d!63605 (= (getValueByKey!319 lt!133698 (_1!2497 (ite (or c!44937 c!44934) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) (Some!324 (_2!2497 (ite (or c!44937 c!44934) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63605 (= lt!133695 (lemmaContainsTupThenGetReturnValue!177 lt!133698 (_1!2497 (ite (or c!44937 c!44934) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44937 c!44934) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63605 (= lt!133698 (insertStrictlySorted!179 (toList!1966 (ite c!44937 call!25215 (ite c!44934 call!25213 call!25214))) (_1!2497 (ite (or c!44937 c!44934) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44937 c!44934) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63605 (= (+!705 (ite c!44937 call!25215 (ite c!44934 call!25213 call!25214)) (ite (or c!44937 c!44934) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) lt!133697)))

(declare-fun b!264085 () Bool)

(declare-fun res!128919 () Bool)

(assert (=> b!264085 (=> (not res!128919) (not e!171115))))

(assert (=> b!264085 (= res!128919 (= (getValueByKey!319 (toList!1966 lt!133697) (_1!2497 (ite (or c!44937 c!44934) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) (Some!324 (_2!2497 (ite (or c!44937 c!44934) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(declare-fun b!264086 () Bool)

(assert (=> b!264086 (= e!171115 (contains!1913 (toList!1966 lt!133697) (ite (or c!44937 c!44934) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (= (and d!63605 res!128918) b!264085))

(assert (= (and b!264085 res!128919) b!264086))

(declare-fun m!280779 () Bool)

(assert (=> d!63605 m!280779))

(declare-fun m!280781 () Bool)

(assert (=> d!63605 m!280781))

(declare-fun m!280783 () Bool)

(assert (=> d!63605 m!280783))

(declare-fun m!280785 () Bool)

(assert (=> d!63605 m!280785))

(declare-fun m!280787 () Bool)

(assert (=> b!264085 m!280787))

(declare-fun m!280789 () Bool)

(assert (=> b!264086 m!280789))

(assert (=> bm!25214 d!63605))

(declare-fun b!264088 () Bool)

(declare-fun e!171116 () Bool)

(declare-fun call!25282 () Bool)

(assert (=> b!264088 (= e!171116 call!25282)))

(declare-fun b!264089 () Bool)

(declare-fun e!171117 () Bool)

(assert (=> b!264089 (= e!171116 e!171117)))

(declare-fun lt!133699 () (_ BitVec 64))

(assert (=> b!264089 (= lt!133699 (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!133700 () Unit!8187)

(assert (=> b!264089 (= lt!133700 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!7035 thiss!1504) lt!133699 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!264089 (arrayContainsKey!0 (_keys!7035 thiss!1504) lt!133699 #b00000000000000000000000000000000)))

(declare-fun lt!133701 () Unit!8187)

(assert (=> b!264089 (= lt!133701 lt!133700)))

(declare-fun res!128921 () Bool)

(assert (=> b!264089 (= res!128921 (= (seekEntryOrOpen!0 (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!7035 thiss!1504) (mask!11209 thiss!1504)) (Found!1210 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!264089 (=> (not res!128921) (not e!171117))))

(declare-fun b!264090 () Bool)

(assert (=> b!264090 (= e!171117 call!25282)))

(declare-fun bm!25279 () Bool)

(assert (=> bm!25279 (= call!25282 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(declare-fun b!264087 () Bool)

(declare-fun e!171118 () Bool)

(assert (=> b!264087 (= e!171118 e!171116)))

(declare-fun c!45136 () Bool)

(assert (=> b!264087 (= c!45136 (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!63607 () Bool)

(declare-fun res!128920 () Bool)

(assert (=> d!63607 (=> res!128920 e!171118)))

(assert (=> d!63607 (= res!128920 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63607 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!7035 thiss!1504) (mask!11209 thiss!1504)) e!171118)))

(assert (= (and d!63607 (not res!128920)) b!264087))

(assert (= (and b!264087 c!45136) b!264089))

(assert (= (and b!264087 (not c!45136)) b!264088))

(assert (= (and b!264089 res!128921) b!264090))

(assert (= (or b!264090 b!264088) bm!25279))

(assert (=> b!264089 m!279575))

(declare-fun m!280791 () Bool)

(assert (=> b!264089 m!280791))

(declare-fun m!280793 () Bool)

(assert (=> b!264089 m!280793))

(assert (=> b!264089 m!279575))

(declare-fun m!280795 () Bool)

(assert (=> b!264089 m!280795))

(declare-fun m!280797 () Bool)

(assert (=> bm!25279 m!280797))

(assert (=> b!264087 m!279575))

(assert (=> b!264087 m!279575))

(assert (=> b!264087 m!279761))

(assert (=> bm!25196 d!63607))

(declare-fun d!63609 () Bool)

(assert (=> d!63609 (= (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133221 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))) lt!133212)) (v!5504 (getValueByKey!319 (toList!1966 (+!705 lt!133221 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))) lt!133212)))))

(assert (=> d!63225 d!63609))

(declare-fun b!264093 () Bool)

(declare-fun e!171120 () Option!325)

(assert (=> b!264093 (= e!171120 (getValueByKey!319 (t!8957 (toList!1966 (+!705 lt!133221 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))) lt!133212))))

(declare-fun b!264091 () Bool)

(declare-fun e!171119 () Option!325)

(assert (=> b!264091 (= e!171119 (Some!324 (_2!2497 (h!4534 (toList!1966 (+!705 lt!133221 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))))))))

(declare-fun d!63611 () Bool)

(declare-fun c!45137 () Bool)

(assert (=> d!63611 (= c!45137 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133221 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))) (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133221 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))) lt!133212)))))

(assert (=> d!63611 (= (getValueByKey!319 (toList!1966 (+!705 lt!133221 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))) lt!133212) e!171119)))

(declare-fun b!264094 () Bool)

(assert (=> b!264094 (= e!171120 None!323)))

(declare-fun b!264092 () Bool)

(assert (=> b!264092 (= e!171119 e!171120)))

(declare-fun c!45138 () Bool)

(assert (=> b!264092 (= c!45138 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133221 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))))) (not (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133221 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504)))))) lt!133212))))))

(assert (= (and d!63611 c!45137) b!264091))

(assert (= (and d!63611 (not c!45137)) b!264092))

(assert (= (and b!264092 c!45138) b!264093))

(assert (= (and b!264092 (not c!45138)) b!264094))

(declare-fun m!280799 () Bool)

(assert (=> b!264093 m!280799))

(assert (=> d!63225 d!63611))

(declare-fun d!63613 () Bool)

(declare-fun isEmpty!547 (List!3872) Bool)

(assert (=> d!63613 (= (isEmpty!546 lt!133374) (isEmpty!547 (toList!1966 lt!133374)))))

(declare-fun bs!9305 () Bool)

(assert (= bs!9305 d!63613))

(declare-fun m!280801 () Bool)

(assert (=> bs!9305 m!280801))

(assert (=> b!263388 d!63613))

(assert (=> b!263538 d!63387))

(declare-fun b!264095 () Bool)

(declare-fun e!171121 () (_ BitVec 32))

(assert (=> b!264095 (= e!171121 #b00000000000000000000000000000000)))

(declare-fun b!264097 () Bool)

(declare-fun e!171122 () (_ BitVec 32))

(assert (=> b!264097 (= e!171121 e!171122)))

(declare-fun c!45140 () Bool)

(assert (=> b!264097 (= c!45140 (validKeyInArray!0 (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!264098 () Bool)

(declare-fun call!25283 () (_ BitVec 32))

(assert (=> b!264098 (= e!171122 call!25283)))

(declare-fun bm!25280 () Bool)

(assert (=> bm!25280 (= call!25283 (arrayCountValidKeys!0 (_keys!7035 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun d!63615 () Bool)

(declare-fun lt!133702 () (_ BitVec 32))

(assert (=> d!63615 (and (bvsge lt!133702 #b00000000000000000000000000000000) (bvsle lt!133702 (bvsub (size!6349 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> d!63615 (= lt!133702 e!171121)))

(declare-fun c!45139 () Bool)

(assert (=> d!63615 (= c!45139 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63615 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6349 (_keys!7035 thiss!1504)) (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63615 (= (arrayCountValidKeys!0 (_keys!7035 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))) lt!133702)))

(declare-fun b!264096 () Bool)

(assert (=> b!264096 (= e!171122 (bvadd #b00000000000000000000000000000001 call!25283))))

(assert (= (and d!63615 c!45139) b!264095))

(assert (= (and d!63615 (not c!45139)) b!264097))

(assert (= (and b!264097 c!45140) b!264096))

(assert (= (and b!264097 (not c!45140)) b!264098))

(assert (= (or b!264096 b!264098) bm!25280))

(declare-fun m!280803 () Bool)

(assert (=> b!264097 m!280803))

(assert (=> b!264097 m!280803))

(declare-fun m!280805 () Bool)

(assert (=> b!264097 m!280805))

(declare-fun m!280807 () Bool)

(assert (=> bm!25280 m!280807))

(assert (=> bm!25228 d!63615))

(declare-fun d!63617 () Bool)

(assert (=> d!63617 (= (apply!262 lt!133534 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)) (get!3095 (getValueByKey!319 (toList!1966 lt!133534) (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000))))))

(declare-fun bs!9306 () Bool)

(assert (= bs!9306 d!63617))

(assert (=> bs!9306 m!279569))

(assert (=> bs!9306 m!280633))

(assert (=> bs!9306 m!280633))

(declare-fun m!280809 () Bool)

(assert (=> bs!9306 m!280809))

(assert (=> b!263646 d!63617))

(declare-fun d!63619 () Bool)

(declare-fun c!45141 () Bool)

(assert (=> d!63619 (= c!45141 ((_ is ValueCellFull!2985) (select (arr!5997 (_values!4826 lt!133037)) #b00000000000000000000000000000000)))))

(declare-fun e!171123 () V!8523)

(assert (=> d!63619 (= (get!3094 (select (arr!5997 (_values!4826 lt!133037)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 lt!133037) #b0000000000000000000000000000000000000000000000000000000000000000)) e!171123)))

(declare-fun b!264099 () Bool)

(assert (=> b!264099 (= e!171123 (get!3096 (select (arr!5997 (_values!4826 lt!133037)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 lt!133037) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!264100 () Bool)

(assert (=> b!264100 (= e!171123 (get!3097 (select (arr!5997 (_values!4826 lt!133037)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 lt!133037) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63619 c!45141) b!264099))

(assert (= (and d!63619 (not c!45141)) b!264100))

(assert (=> b!264099 m!280095))

(assert (=> b!264099 m!280097))

(declare-fun m!280811 () Bool)

(assert (=> b!264099 m!280811))

(assert (=> b!264100 m!280095))

(assert (=> b!264100 m!280097))

(declare-fun m!280813 () Bool)

(assert (=> b!264100 m!280813))

(assert (=> b!263646 d!63619))

(declare-fun d!63621 () Bool)

(declare-fun e!171124 () Bool)

(assert (=> d!63621 e!171124))

(declare-fun res!128922 () Bool)

(assert (=> d!63621 (=> res!128922 e!171124)))

(declare-fun lt!133704 () Bool)

(assert (=> d!63621 (= res!128922 (not lt!133704))))

(declare-fun lt!133703 () Bool)

(assert (=> d!63621 (= lt!133704 lt!133703)))

(declare-fun lt!133705 () Unit!8187)

(declare-fun e!171125 () Unit!8187)

(assert (=> d!63621 (= lt!133705 e!171125)))

(declare-fun c!45142 () Bool)

(assert (=> d!63621 (= c!45142 lt!133703)))

(assert (=> d!63621 (= lt!133703 (containsKey!311 (toList!1966 lt!133482) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!63621 (= (contains!1911 lt!133482 #b1000000000000000000000000000000000000000000000000000000000000000) lt!133704)))

(declare-fun b!264101 () Bool)

(declare-fun lt!133706 () Unit!8187)

(assert (=> b!264101 (= e!171125 lt!133706)))

(assert (=> b!264101 (= lt!133706 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133482) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!264101 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133482) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!264102 () Bool)

(declare-fun Unit!8230 () Unit!8187)

(assert (=> b!264102 (= e!171125 Unit!8230)))

(declare-fun b!264103 () Bool)

(assert (=> b!264103 (= e!171124 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133482) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63621 c!45142) b!264101))

(assert (= (and d!63621 (not c!45142)) b!264102))

(assert (= (and d!63621 (not res!128922)) b!264103))

(declare-fun m!280815 () Bool)

(assert (=> d!63621 m!280815))

(declare-fun m!280817 () Bool)

(assert (=> b!264101 m!280817))

(declare-fun m!280819 () Bool)

(assert (=> b!264101 m!280819))

(assert (=> b!264101 m!280819))

(declare-fun m!280821 () Bool)

(assert (=> b!264101 m!280821))

(assert (=> b!264103 m!280819))

(assert (=> b!264103 m!280819))

(assert (=> b!264103 m!280821))

(assert (=> b!263594 d!63621))

(assert (=> d!63285 d!63283))

(declare-fun d!63623 () Bool)

(assert (=> d!63623 (= (getValueByKey!319 lt!133150 (_1!2497 lt!133042)) (Some!324 (_2!2497 lt!133042)))))

(assert (=> d!63623 true))

(declare-fun _$22!543 () Unit!8187)

(assert (=> d!63623 (= (choose!1302 lt!133150 (_1!2497 lt!133042) (_2!2497 lt!133042)) _$22!543)))

(declare-fun bs!9307 () Bool)

(assert (= bs!9307 d!63623))

(assert (=> bs!9307 m!279145))

(assert (=> d!63285 d!63623))

(declare-fun d!63625 () Bool)

(declare-fun res!128923 () Bool)

(declare-fun e!171126 () Bool)

(assert (=> d!63625 (=> res!128923 e!171126)))

(assert (=> d!63625 (= res!128923 (or ((_ is Nil!3869) lt!133150) ((_ is Nil!3869) (t!8957 lt!133150))))))

(assert (=> d!63625 (= (isStrictlySorted!372 lt!133150) e!171126)))

(declare-fun b!264104 () Bool)

(declare-fun e!171127 () Bool)

(assert (=> b!264104 (= e!171126 e!171127)))

(declare-fun res!128924 () Bool)

(assert (=> b!264104 (=> (not res!128924) (not e!171127))))

(assert (=> b!264104 (= res!128924 (bvslt (_1!2497 (h!4534 lt!133150)) (_1!2497 (h!4534 (t!8957 lt!133150)))))))

(declare-fun b!264105 () Bool)

(assert (=> b!264105 (= e!171127 (isStrictlySorted!372 (t!8957 lt!133150)))))

(assert (= (and d!63625 (not res!128923)) b!264104))

(assert (= (and b!264104 res!128924) b!264105))

(declare-fun m!280823 () Bool)

(assert (=> b!264105 m!280823))

(assert (=> d!63285 d!63625))

(declare-fun d!63627 () Bool)

(declare-fun lt!133707 () Bool)

(assert (=> d!63627 (= lt!133707 (select (content!175 (toList!1966 lt!133442)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))

(declare-fun e!171129 () Bool)

(assert (=> d!63627 (= lt!133707 e!171129)))

(declare-fun res!128926 () Bool)

(assert (=> d!63627 (=> (not res!128926) (not e!171129))))

(assert (=> d!63627 (= res!128926 ((_ is Cons!3868) (toList!1966 lt!133442)))))

(assert (=> d!63627 (= (contains!1913 (toList!1966 lt!133442) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) lt!133707)))

(declare-fun b!264106 () Bool)

(declare-fun e!171128 () Bool)

(assert (=> b!264106 (= e!171129 e!171128)))

(declare-fun res!128925 () Bool)

(assert (=> b!264106 (=> res!128925 e!171128)))

(assert (=> b!264106 (= res!128925 (= (h!4534 (toList!1966 lt!133442)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))

(declare-fun b!264107 () Bool)

(assert (=> b!264107 (= e!171128 (contains!1913 (t!8957 (toList!1966 lt!133442)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))

(assert (= (and d!63627 res!128926) b!264106))

(assert (= (and b!264106 (not res!128925)) b!264107))

(declare-fun m!280825 () Bool)

(assert (=> d!63627 m!280825))

(declare-fun m!280827 () Bool)

(assert (=> d!63627 m!280827))

(declare-fun m!280829 () Bool)

(assert (=> b!264107 m!280829))

(assert (=> b!263541 d!63627))

(declare-fun d!63629 () Bool)

(assert (=> d!63629 (= ($colon$colon!107 e!170828 (ite c!44990 (h!4534 (toList!1966 (map!2757 thiss!1504))) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042)))) (Cons!3868 (ite c!44990 (h!4534 (toList!1966 (map!2757 thiss!1504))) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))) e!170828))))

(assert (=> bm!25234 d!63629))

(declare-fun d!63631 () Bool)

(declare-fun res!128927 () Bool)

(declare-fun e!171130 () Bool)

(assert (=> d!63631 (=> res!128927 e!171130)))

(assert (=> d!63631 (= res!128927 (and ((_ is Cons!3868) (toList!1966 lt!133223)) (= (_1!2497 (h!4534 (toList!1966 lt!133223))) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (=> d!63631 (= (containsKey!311 (toList!1966 lt!133223) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)) e!171130)))

(declare-fun b!264108 () Bool)

(declare-fun e!171131 () Bool)

(assert (=> b!264108 (= e!171130 e!171131)))

(declare-fun res!128928 () Bool)

(assert (=> b!264108 (=> (not res!128928) (not e!171131))))

(assert (=> b!264108 (= res!128928 (and (or (not ((_ is Cons!3868) (toList!1966 lt!133223))) (bvsle (_1!2497 (h!4534 (toList!1966 lt!133223))) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))) ((_ is Cons!3868) (toList!1966 lt!133223)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133223))) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun b!264109 () Bool)

(assert (=> b!264109 (= e!171131 (containsKey!311 (t!8957 (toList!1966 lt!133223)) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!63631 (not res!128927)) b!264108))

(assert (= (and b!264108 res!128928) b!264109))

(assert (=> b!264109 m!279177))

(declare-fun m!280831 () Bool)

(assert (=> b!264109 m!280831))

(assert (=> d!63299 d!63631))

(assert (=> b!263601 d!63179))

(declare-fun d!63633 () Bool)

(assert (=> d!63633 (not (contains!1911 (+!705 lt!133487 (tuple2!4975 lt!133486 lt!133483)) lt!133485))))

(declare-fun lt!133710 () Unit!8187)

(declare-fun choose!1305 (ListLongMap!3901 (_ BitVec 64) V!8523 (_ BitVec 64)) Unit!8187)

(assert (=> d!63633 (= lt!133710 (choose!1305 lt!133487 lt!133486 lt!133483 lt!133485))))

(declare-fun e!171134 () Bool)

(assert (=> d!63633 e!171134))

(declare-fun res!128931 () Bool)

(assert (=> d!63633 (=> (not res!128931) (not e!171134))))

(assert (=> d!63633 (= res!128931 (not (contains!1911 lt!133487 lt!133485)))))

(assert (=> d!63633 (= (addStillNotContains!131 lt!133487 lt!133486 lt!133483 lt!133485) lt!133710)))

(declare-fun b!264113 () Bool)

(assert (=> b!264113 (= e!171134 (not (= lt!133486 lt!133485)))))

(assert (= (and d!63633 res!128931) b!264113))

(assert (=> d!63633 m!279913))

(assert (=> d!63633 m!279913))

(assert (=> d!63633 m!279915))

(declare-fun m!280833 () Bool)

(assert (=> d!63633 m!280833))

(declare-fun m!280835 () Bool)

(assert (=> d!63633 m!280835))

(assert (=> b!263601 d!63633))

(declare-fun d!63635 () Bool)

(declare-fun e!171135 () Bool)

(assert (=> d!63635 e!171135))

(declare-fun res!128932 () Bool)

(assert (=> d!63635 (=> (not res!128932) (not e!171135))))

(declare-fun lt!133713 () ListLongMap!3901)

(assert (=> d!63635 (= res!128932 (contains!1911 lt!133713 (_1!2497 (tuple2!4975 lt!133486 lt!133483))))))

(declare-fun lt!133714 () List!3872)

(assert (=> d!63635 (= lt!133713 (ListLongMap!3902 lt!133714))))

(declare-fun lt!133712 () Unit!8187)

(declare-fun lt!133711 () Unit!8187)

(assert (=> d!63635 (= lt!133712 lt!133711)))

(assert (=> d!63635 (= (getValueByKey!319 lt!133714 (_1!2497 (tuple2!4975 lt!133486 lt!133483))) (Some!324 (_2!2497 (tuple2!4975 lt!133486 lt!133483))))))

(assert (=> d!63635 (= lt!133711 (lemmaContainsTupThenGetReturnValue!177 lt!133714 (_1!2497 (tuple2!4975 lt!133486 lt!133483)) (_2!2497 (tuple2!4975 lt!133486 lt!133483))))))

(assert (=> d!63635 (= lt!133714 (insertStrictlySorted!179 (toList!1966 lt!133487) (_1!2497 (tuple2!4975 lt!133486 lt!133483)) (_2!2497 (tuple2!4975 lt!133486 lt!133483))))))

(assert (=> d!63635 (= (+!705 lt!133487 (tuple2!4975 lt!133486 lt!133483)) lt!133713)))

(declare-fun b!264114 () Bool)

(declare-fun res!128933 () Bool)

(assert (=> b!264114 (=> (not res!128933) (not e!171135))))

(assert (=> b!264114 (= res!128933 (= (getValueByKey!319 (toList!1966 lt!133713) (_1!2497 (tuple2!4975 lt!133486 lt!133483))) (Some!324 (_2!2497 (tuple2!4975 lt!133486 lt!133483)))))))

(declare-fun b!264115 () Bool)

(assert (=> b!264115 (= e!171135 (contains!1913 (toList!1966 lt!133713) (tuple2!4975 lt!133486 lt!133483)))))

(assert (= (and d!63635 res!128932) b!264114))

(assert (= (and b!264114 res!128933) b!264115))

(declare-fun m!280837 () Bool)

(assert (=> d!63635 m!280837))

(declare-fun m!280839 () Bool)

(assert (=> d!63635 m!280839))

(declare-fun m!280841 () Bool)

(assert (=> d!63635 m!280841))

(declare-fun m!280843 () Bool)

(assert (=> d!63635 m!280843))

(declare-fun m!280845 () Bool)

(assert (=> b!264114 m!280845))

(declare-fun m!280847 () Bool)

(assert (=> b!264115 m!280847))

(assert (=> b!263601 d!63635))

(declare-fun d!63637 () Bool)

(declare-fun e!171136 () Bool)

(assert (=> d!63637 e!171136))

(declare-fun res!128934 () Bool)

(assert (=> d!63637 (=> (not res!128934) (not e!171136))))

(declare-fun lt!133717 () ListLongMap!3901)

(assert (=> d!63637 (= res!128934 (contains!1911 lt!133717 (_1!2497 (tuple2!4975 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!133718 () List!3872)

(assert (=> d!63637 (= lt!133717 (ListLongMap!3902 lt!133718))))

(declare-fun lt!133716 () Unit!8187)

(declare-fun lt!133715 () Unit!8187)

(assert (=> d!63637 (= lt!133716 lt!133715)))

(assert (=> d!63637 (= (getValueByKey!319 lt!133718 (_1!2497 (tuple2!4975 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!324 (_2!2497 (tuple2!4975 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!63637 (= lt!133715 (lemmaContainsTupThenGetReturnValue!177 lt!133718 (_1!2497 (tuple2!4975 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!2497 (tuple2!4975 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!63637 (= lt!133718 (insertStrictlySorted!179 (toList!1966 call!25234) (_1!2497 (tuple2!4975 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!2497 (tuple2!4975 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!63637 (= (+!705 call!25234 (tuple2!4975 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!133717)))

(declare-fun b!264116 () Bool)

(declare-fun res!128935 () Bool)

(assert (=> b!264116 (=> (not res!128935) (not e!171136))))

(assert (=> b!264116 (= res!128935 (= (getValueByKey!319 (toList!1966 lt!133717) (_1!2497 (tuple2!4975 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!324 (_2!2497 (tuple2!4975 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!264117 () Bool)

(assert (=> b!264117 (= e!171136 (contains!1913 (toList!1966 lt!133717) (tuple2!4975 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!63637 res!128934) b!264116))

(assert (= (and b!264116 res!128935) b!264117))

(declare-fun m!280849 () Bool)

(assert (=> d!63637 m!280849))

(declare-fun m!280851 () Bool)

(assert (=> d!63637 m!280851))

(declare-fun m!280853 () Bool)

(assert (=> d!63637 m!280853))

(declare-fun m!280855 () Bool)

(assert (=> d!63637 m!280855))

(declare-fun m!280857 () Bool)

(assert (=> b!264116 m!280857))

(declare-fun m!280859 () Bool)

(assert (=> b!264117 m!280859))

(assert (=> b!263601 d!63637))

(declare-fun d!63639 () Bool)

(declare-fun e!171137 () Bool)

(assert (=> d!63639 e!171137))

(declare-fun res!128936 () Bool)

(assert (=> d!63639 (=> res!128936 e!171137)))

(declare-fun lt!133720 () Bool)

(assert (=> d!63639 (= res!128936 (not lt!133720))))

(declare-fun lt!133719 () Bool)

(assert (=> d!63639 (= lt!133720 lt!133719)))

(declare-fun lt!133721 () Unit!8187)

(declare-fun e!171138 () Unit!8187)

(assert (=> d!63639 (= lt!133721 e!171138)))

(declare-fun c!45143 () Bool)

(assert (=> d!63639 (= c!45143 lt!133719)))

(assert (=> d!63639 (= lt!133719 (containsKey!311 (toList!1966 (+!705 lt!133487 (tuple2!4975 lt!133486 lt!133483))) lt!133485))))

(assert (=> d!63639 (= (contains!1911 (+!705 lt!133487 (tuple2!4975 lt!133486 lt!133483)) lt!133485) lt!133720)))

(declare-fun b!264118 () Bool)

(declare-fun lt!133722 () Unit!8187)

(assert (=> b!264118 (= e!171138 lt!133722)))

(assert (=> b!264118 (= lt!133722 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 (+!705 lt!133487 (tuple2!4975 lt!133486 lt!133483))) lt!133485))))

(assert (=> b!264118 (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133487 (tuple2!4975 lt!133486 lt!133483))) lt!133485))))

(declare-fun b!264119 () Bool)

(declare-fun Unit!8231 () Unit!8187)

(assert (=> b!264119 (= e!171138 Unit!8231)))

(declare-fun b!264120 () Bool)

(assert (=> b!264120 (= e!171137 (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133487 (tuple2!4975 lt!133486 lt!133483))) lt!133485)))))

(assert (= (and d!63639 c!45143) b!264118))

(assert (= (and d!63639 (not c!45143)) b!264119))

(assert (= (and d!63639 (not res!128936)) b!264120))

(declare-fun m!280861 () Bool)

(assert (=> d!63639 m!280861))

(declare-fun m!280863 () Bool)

(assert (=> b!264118 m!280863))

(declare-fun m!280865 () Bool)

(assert (=> b!264118 m!280865))

(assert (=> b!264118 m!280865))

(declare-fun m!280867 () Bool)

(assert (=> b!264118 m!280867))

(assert (=> b!264120 m!280865))

(assert (=> b!264120 m!280865))

(assert (=> b!264120 m!280867))

(assert (=> b!263601 d!63639))

(declare-fun d!63641 () Bool)

(assert (=> d!63641 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133223) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!133723 () Unit!8187)

(assert (=> d!63641 (= lt!133723 (choose!1301 (toList!1966 lt!133223) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!171139 () Bool)

(assert (=> d!63641 e!171139))

(declare-fun res!128937 () Bool)

(assert (=> d!63641 (=> (not res!128937) (not e!171139))))

(assert (=> d!63641 (= res!128937 (isStrictlySorted!372 (toList!1966 lt!133223)))))

(assert (=> d!63641 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133223) #b1000000000000000000000000000000000000000000000000000000000000000) lt!133723)))

(declare-fun b!264121 () Bool)

(assert (=> b!264121 (= e!171139 (containsKey!311 (toList!1966 lt!133223) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!63641 res!128937) b!264121))

(assert (=> d!63641 m!279431))

(assert (=> d!63641 m!279431))

(assert (=> d!63641 m!279479))

(declare-fun m!280869 () Bool)

(assert (=> d!63641 m!280869))

(assert (=> d!63641 m!280301))

(assert (=> b!264121 m!279475))

(assert (=> b!263281 d!63641))

(declare-fun d!63643 () Bool)

(assert (=> d!63643 (= (isDefined!261 (getValueByKey!319 (toList!1966 lt!133223) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!545 (getValueByKey!319 (toList!1966 lt!133223) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!9308 () Bool)

(assert (= bs!9308 d!63643))

(assert (=> bs!9308 m!279431))

(declare-fun m!280871 () Bool)

(assert (=> bs!9308 m!280871))

(assert (=> b!263281 d!63643))

(declare-fun b!264124 () Bool)

(declare-fun e!171141 () Option!325)

(assert (=> b!264124 (= e!171141 (getValueByKey!319 (t!8957 (toList!1966 lt!133223)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!264122 () Bool)

(declare-fun e!171140 () Option!325)

(assert (=> b!264122 (= e!171140 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133223)))))))

(declare-fun d!63645 () Bool)

(declare-fun c!45144 () Bool)

(assert (=> d!63645 (= c!45144 (and ((_ is Cons!3868) (toList!1966 lt!133223)) (= (_1!2497 (h!4534 (toList!1966 lt!133223))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63645 (= (getValueByKey!319 (toList!1966 lt!133223) #b1000000000000000000000000000000000000000000000000000000000000000) e!171140)))

(declare-fun b!264125 () Bool)

(assert (=> b!264125 (= e!171141 None!323)))

(declare-fun b!264123 () Bool)

(assert (=> b!264123 (= e!171140 e!171141)))

(declare-fun c!45145 () Bool)

(assert (=> b!264123 (= c!45145 (and ((_ is Cons!3868) (toList!1966 lt!133223)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133223))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!63645 c!45144) b!264122))

(assert (= (and d!63645 (not c!45144)) b!264123))

(assert (= (and b!264123 c!45145) b!264124))

(assert (= (and b!264123 (not c!45145)) b!264125))

(declare-fun m!280873 () Bool)

(assert (=> b!264124 m!280873))

(assert (=> b!263281 d!63645))

(assert (=> d!63119 d!63097))

(declare-fun d!63647 () Bool)

(assert (=> d!63647 (= (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133270 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))) lt!133275)) (v!5504 (getValueByKey!319 (toList!1966 (+!705 lt!133270 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))) lt!133275)))))

(assert (=> d!63275 d!63647))

(declare-fun e!171143 () Option!325)

(declare-fun b!264128 () Bool)

(assert (=> b!264128 (= e!171143 (getValueByKey!319 (t!8957 (toList!1966 (+!705 lt!133270 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))) lt!133275))))

(declare-fun e!171142 () Option!325)

(declare-fun b!264126 () Bool)

(assert (=> b!264126 (= e!171142 (Some!324 (_2!2497 (h!4534 (toList!1966 (+!705 lt!133270 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))))))))

(declare-fun d!63649 () Bool)

(declare-fun c!45146 () Bool)

(assert (=> d!63649 (= c!45146 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133270 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))) (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133270 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))) lt!133275)))))

(assert (=> d!63649 (= (getValueByKey!319 (toList!1966 (+!705 lt!133270 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))) lt!133275) e!171142)))

(declare-fun b!264129 () Bool)

(assert (=> b!264129 (= e!171143 None!323)))

(declare-fun b!264127 () Bool)

(assert (=> b!264127 (= e!171142 e!171143)))

(declare-fun c!45147 () Bool)

(assert (=> b!264127 (= c!45147 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133270 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))))) (not (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133270 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504)))))) lt!133275))))))

(assert (= (and d!63649 c!45146) b!264126))

(assert (= (and d!63649 (not c!45146)) b!264127))

(assert (= (and b!264127 c!45147) b!264128))

(assert (= (and b!264127 (not c!45147)) b!264129))

(declare-fun m!280875 () Bool)

(assert (=> b!264128 m!280875))

(assert (=> d!63275 d!63649))

(declare-fun d!63651 () Bool)

(assert (=> d!63651 (= (validMask!0 (mask!11209 lt!133037)) (and (or (= (mask!11209 lt!133037) #b00000000000000000000000000000111) (= (mask!11209 lt!133037) #b00000000000000000000000000001111) (= (mask!11209 lt!133037) #b00000000000000000000000000011111) (= (mask!11209 lt!133037) #b00000000000000000000000000111111) (= (mask!11209 lt!133037) #b00000000000000000000000001111111) (= (mask!11209 lt!133037) #b00000000000000000000000011111111) (= (mask!11209 lt!133037) #b00000000000000000000000111111111) (= (mask!11209 lt!133037) #b00000000000000000000001111111111) (= (mask!11209 lt!133037) #b00000000000000000000011111111111) (= (mask!11209 lt!133037) #b00000000000000000000111111111111) (= (mask!11209 lt!133037) #b00000000000000000001111111111111) (= (mask!11209 lt!133037) #b00000000000000000011111111111111) (= (mask!11209 lt!133037) #b00000000000000000111111111111111) (= (mask!11209 lt!133037) #b00000000000000001111111111111111) (= (mask!11209 lt!133037) #b00000000000000011111111111111111) (= (mask!11209 lt!133037) #b00000000000000111111111111111111) (= (mask!11209 lt!133037) #b00000000000001111111111111111111) (= (mask!11209 lt!133037) #b00000000000011111111111111111111) (= (mask!11209 lt!133037) #b00000000000111111111111111111111) (= (mask!11209 lt!133037) #b00000000001111111111111111111111) (= (mask!11209 lt!133037) #b00000000011111111111111111111111) (= (mask!11209 lt!133037) #b00000000111111111111111111111111) (= (mask!11209 lt!133037) #b00000001111111111111111111111111) (= (mask!11209 lt!133037) #b00000011111111111111111111111111) (= (mask!11209 lt!133037) #b00000111111111111111111111111111) (= (mask!11209 lt!133037) #b00001111111111111111111111111111) (= (mask!11209 lt!133037) #b00011111111111111111111111111111) (= (mask!11209 lt!133037) #b00111111111111111111111111111111)) (bvsle (mask!11209 lt!133037) #b00111111111111111111111111111111)))))

(assert (=> d!63297 d!63651))

(assert (=> b!263665 d!63393))

(declare-fun d!63653 () Bool)

(declare-fun e!171144 () Bool)

(assert (=> d!63653 e!171144))

(declare-fun res!128938 () Bool)

(assert (=> d!63653 (=> res!128938 e!171144)))

(declare-fun lt!133725 () Bool)

(assert (=> d!63653 (= res!128938 (not lt!133725))))

(declare-fun lt!133724 () Bool)

(assert (=> d!63653 (= lt!133725 lt!133724)))

(declare-fun lt!133726 () Unit!8187)

(declare-fun e!171145 () Unit!8187)

(assert (=> d!63653 (= lt!133726 e!171145)))

(declare-fun c!45148 () Bool)

(assert (=> d!63653 (= c!45148 lt!133724)))

(assert (=> d!63653 (= lt!133724 (containsKey!311 (toList!1966 lt!133503) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))

(assert (=> d!63653 (= (contains!1911 lt!133503 (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))) lt!133725)))

(declare-fun b!264130 () Bool)

(declare-fun lt!133727 () Unit!8187)

(assert (=> b!264130 (= e!171145 lt!133727)))

(assert (=> b!264130 (= lt!133727 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133503) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))

(assert (=> b!264130 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133503) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))

(declare-fun b!264131 () Bool)

(declare-fun Unit!8232 () Unit!8187)

(assert (=> b!264131 (= e!171145 Unit!8232)))

(declare-fun b!264132 () Bool)

(assert (=> b!264132 (= e!171144 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133503) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))))))

(assert (= (and d!63653 c!45148) b!264130))

(assert (= (and d!63653 (not c!45148)) b!264131))

(assert (= (and d!63653 (not res!128938)) b!264132))

(declare-fun m!280877 () Bool)

(assert (=> d!63653 m!280877))

(declare-fun m!280879 () Bool)

(assert (=> b!264130 m!280879))

(assert (=> b!264130 m!279983))

(assert (=> b!264130 m!279983))

(declare-fun m!280881 () Bool)

(assert (=> b!264130 m!280881))

(assert (=> b!264132 m!279983))

(assert (=> b!264132 m!279983))

(assert (=> b!264132 m!280881))

(assert (=> d!63269 d!63653))

(declare-fun e!171147 () Option!325)

(declare-fun b!264135 () Bool)

(assert (=> b!264135 (= e!171147 (getValueByKey!319 (t!8957 lt!133504) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))

(declare-fun b!264133 () Bool)

(declare-fun e!171146 () Option!325)

(assert (=> b!264133 (= e!171146 (Some!324 (_2!2497 (h!4534 lt!133504))))))

(declare-fun c!45149 () Bool)

(declare-fun d!63655 () Bool)

(assert (=> d!63655 (= c!45149 (and ((_ is Cons!3868) lt!133504) (= (_1!2497 (h!4534 lt!133504)) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))))))

(assert (=> d!63655 (= (getValueByKey!319 lt!133504 (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))) e!171146)))

(declare-fun b!264136 () Bool)

(assert (=> b!264136 (= e!171147 None!323)))

(declare-fun b!264134 () Bool)

(assert (=> b!264134 (= e!171146 e!171147)))

(declare-fun c!45150 () Bool)

(assert (=> b!264134 (= c!45150 (and ((_ is Cons!3868) lt!133504) (not (= (_1!2497 (h!4534 lt!133504)) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63655 c!45149) b!264133))

(assert (= (and d!63655 (not c!45149)) b!264134))

(assert (= (and b!264134 c!45150) b!264135))

(assert (= (and b!264134 (not c!45150)) b!264136))

(declare-fun m!280883 () Bool)

(assert (=> b!264135 m!280883))

(assert (=> d!63269 d!63655))

(declare-fun d!63657 () Bool)

(assert (=> d!63657 (= (getValueByKey!319 lt!133504 (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))

(declare-fun lt!133728 () Unit!8187)

(assert (=> d!63657 (= lt!133728 (choose!1302 lt!133504 (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))

(declare-fun e!171148 () Bool)

(assert (=> d!63657 e!171148))

(declare-fun res!128939 () Bool)

(assert (=> d!63657 (=> (not res!128939) (not e!171148))))

(assert (=> d!63657 (= res!128939 (isStrictlySorted!372 lt!133504))))

(assert (=> d!63657 (= (lemmaContainsTupThenGetReturnValue!177 lt!133504 (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))) lt!133728)))

(declare-fun b!264137 () Bool)

(declare-fun res!128940 () Bool)

(assert (=> b!264137 (=> (not res!128940) (not e!171148))))

(assert (=> b!264137 (= res!128940 (containsKey!311 lt!133504 (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))

(declare-fun b!264138 () Bool)

(assert (=> b!264138 (= e!171148 (contains!1913 lt!133504 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))))))

(assert (= (and d!63657 res!128939) b!264137))

(assert (= (and b!264137 res!128940) b!264138))

(assert (=> d!63657 m!279977))

(declare-fun m!280885 () Bool)

(assert (=> d!63657 m!280885))

(declare-fun m!280887 () Bool)

(assert (=> d!63657 m!280887))

(declare-fun m!280889 () Bool)

(assert (=> b!264137 m!280889))

(declare-fun m!280891 () Bool)

(assert (=> b!264138 m!280891))

(assert (=> d!63269 d!63657))

(declare-fun bm!25281 () Bool)

(declare-fun call!25286 () List!3872)

(declare-fun call!25285 () List!3872)

(assert (=> bm!25281 (= call!25286 call!25285)))

(declare-fun bm!25282 () Bool)

(declare-fun call!25284 () List!3872)

(assert (=> bm!25282 (= call!25284 call!25286)))

(declare-fun b!264139 () Bool)

(declare-fun res!128941 () Bool)

(declare-fun e!171153 () Bool)

(assert (=> b!264139 (=> (not res!128941) (not e!171153))))

(declare-fun lt!133729 () List!3872)

(assert (=> b!264139 (= res!128941 (containsKey!311 lt!133729 (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))

(declare-fun c!45151 () Bool)

(declare-fun b!264140 () Bool)

(assert (=> b!264140 (= c!45151 (and ((_ is Cons!3868) (toList!1966 lt!133280)) (bvsgt (_1!2497 (h!4534 (toList!1966 lt!133280))) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))))))

(declare-fun e!171152 () List!3872)

(declare-fun e!171149 () List!3872)

(assert (=> b!264140 (= e!171152 e!171149)))

(declare-fun b!264141 () Bool)

(declare-fun e!171151 () List!3872)

(assert (=> b!264141 (= e!171151 e!171152)))

(declare-fun c!45154 () Bool)

(assert (=> b!264141 (= c!45154 (and ((_ is Cons!3868) (toList!1966 lt!133280)) (= (_1!2497 (h!4534 (toList!1966 lt!133280))) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))))))

(declare-fun b!264142 () Bool)

(assert (=> b!264142 (= e!171153 (contains!1913 lt!133729 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))))))

(declare-fun b!264143 () Bool)

(assert (=> b!264143 (= e!171151 call!25285)))

(declare-fun b!264144 () Bool)

(assert (=> b!264144 (= e!171152 call!25286)))

(declare-fun e!171150 () List!3872)

(declare-fun b!264145 () Bool)

(assert (=> b!264145 (= e!171150 (insertStrictlySorted!179 (t!8957 (toList!1966 lt!133280)) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))

(declare-fun b!264146 () Bool)

(assert (=> b!264146 (= e!171149 call!25284)))

(declare-fun bm!25283 () Bool)

(declare-fun c!45153 () Bool)

(assert (=> bm!25283 (= call!25285 ($colon$colon!107 e!171150 (ite c!45153 (h!4534 (toList!1966 lt!133280)) (tuple2!4975 (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))))

(declare-fun c!45152 () Bool)

(assert (=> bm!25283 (= c!45152 c!45153)))

(declare-fun d!63659 () Bool)

(assert (=> d!63659 e!171153))

(declare-fun res!128942 () Bool)

(assert (=> d!63659 (=> (not res!128942) (not e!171153))))

(assert (=> d!63659 (= res!128942 (isStrictlySorted!372 lt!133729))))

(assert (=> d!63659 (= lt!133729 e!171151)))

(assert (=> d!63659 (= c!45153 (and ((_ is Cons!3868) (toList!1966 lt!133280)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133280))) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))))))

(assert (=> d!63659 (isStrictlySorted!372 (toList!1966 lt!133280))))

(assert (=> d!63659 (= (insertStrictlySorted!179 (toList!1966 lt!133280) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))) lt!133729)))

(declare-fun b!264147 () Bool)

(assert (=> b!264147 (= e!171149 call!25284)))

(declare-fun b!264148 () Bool)

(assert (=> b!264148 (= e!171150 (ite c!45154 (t!8957 (toList!1966 lt!133280)) (ite c!45151 (Cons!3868 (h!4534 (toList!1966 lt!133280)) (t!8957 (toList!1966 lt!133280))) Nil!3869)))))

(assert (= (and d!63659 c!45153) b!264143))

(assert (= (and d!63659 (not c!45153)) b!264141))

(assert (= (and b!264141 c!45154) b!264144))

(assert (= (and b!264141 (not c!45154)) b!264140))

(assert (= (and b!264140 c!45151) b!264147))

(assert (= (and b!264140 (not c!45151)) b!264146))

(assert (= (or b!264147 b!264146) bm!25282))

(assert (= (or b!264144 bm!25282) bm!25281))

(assert (= (or b!264143 bm!25281) bm!25283))

(assert (= (and bm!25283 c!45152) b!264145))

(assert (= (and bm!25283 (not c!45152)) b!264148))

(assert (= (and d!63659 res!128942) b!264139))

(assert (= (and b!264139 res!128941) b!264142))

(declare-fun m!280893 () Bool)

(assert (=> bm!25283 m!280893))

(declare-fun m!280895 () Bool)

(assert (=> b!264145 m!280895))

(declare-fun m!280897 () Bool)

(assert (=> b!264142 m!280897))

(declare-fun m!280899 () Bool)

(assert (=> b!264139 m!280899))

(declare-fun m!280901 () Bool)

(assert (=> d!63659 m!280901))

(declare-fun m!280903 () Bool)

(assert (=> d!63659 m!280903))

(assert (=> d!63269 d!63659))

(assert (=> b!263556 d!63111))

(assert (=> b!263383 d!63579))

(declare-fun b!264151 () Bool)

(declare-fun e!171155 () Option!325)

(assert (=> b!264151 (= e!171155 (getValueByKey!319 (t!8957 (toList!1966 lt!133503)) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))

(declare-fun b!264149 () Bool)

(declare-fun e!171154 () Option!325)

(assert (=> b!264149 (= e!171154 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133503)))))))

(declare-fun c!45155 () Bool)

(declare-fun d!63661 () Bool)

(assert (=> d!63661 (= c!45155 (and ((_ is Cons!3868) (toList!1966 lt!133503)) (= (_1!2497 (h!4534 (toList!1966 lt!133503))) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))))))

(assert (=> d!63661 (= (getValueByKey!319 (toList!1966 lt!133503) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))) e!171154)))

(declare-fun b!264152 () Bool)

(assert (=> b!264152 (= e!171155 None!323)))

(declare-fun b!264150 () Bool)

(assert (=> b!264150 (= e!171154 e!171155)))

(declare-fun c!45156 () Bool)

(assert (=> b!264150 (= c!45156 (and ((_ is Cons!3868) (toList!1966 lt!133503)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133503))) (_1!2497 (tuple2!4975 lt!133279 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63661 c!45155) b!264149))

(assert (= (and d!63661 (not c!45155)) b!264150))

(assert (= (and b!264150 c!45156) b!264151))

(assert (= (and b!264150 (not c!45156)) b!264152))

(declare-fun m!280905 () Bool)

(assert (=> b!264151 m!280905))

(assert (=> b!263612 d!63661))

(assert (=> d!63235 d!63151))

(assert (=> d!63235 d!63015))

(assert (=> d!63235 d!63153))

(declare-fun d!63663 () Bool)

(declare-fun lt!133730 () Bool)

(assert (=> d!63663 (= lt!133730 (select (content!176 (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!171156 () Bool)

(assert (=> d!63663 (= lt!133730 e!171156)))

(declare-fun res!128944 () Bool)

(assert (=> d!63663 (=> (not res!128944) (not e!171156))))

(assert (=> d!63663 (= res!128944 ((_ is Cons!3869) (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870)))))

(assert (=> d!63663 (= (contains!1914 (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870) (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!133730)))

(declare-fun b!264153 () Bool)

(declare-fun e!171157 () Bool)

(assert (=> b!264153 (= e!171156 e!171157)))

(declare-fun res!128943 () Bool)

(assert (=> b!264153 (=> res!128943 e!171157)))

(assert (=> b!264153 (= res!128943 (= (h!4535 (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!264154 () Bool)

(assert (=> b!264154 (= e!171157 (contains!1914 (t!8958 (ite c!44866 (Cons!3869 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) Nil!3870) Nil!3870)) (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!63663 res!128944) b!264153))

(assert (= (and b!264153 (not res!128943)) b!264154))

(declare-fun m!280907 () Bool)

(assert (=> d!63663 m!280907))

(assert (=> d!63663 m!279435))

(declare-fun m!280909 () Bool)

(assert (=> d!63663 m!280909))

(assert (=> b!264154 m!279435))

(declare-fun m!280911 () Bool)

(assert (=> b!264154 m!280911))

(assert (=> b!263310 d!63663))

(declare-fun b!264157 () Bool)

(declare-fun e!171159 () Option!325)

(assert (=> b!264157 (= e!171159 (getValueByKey!319 (t!8957 (t!8957 lt!133150)) (_1!2497 lt!133042)))))

(declare-fun b!264155 () Bool)

(declare-fun e!171158 () Option!325)

(assert (=> b!264155 (= e!171158 (Some!324 (_2!2497 (h!4534 (t!8957 lt!133150)))))))

(declare-fun d!63665 () Bool)

(declare-fun c!45157 () Bool)

(assert (=> d!63665 (= c!45157 (and ((_ is Cons!3868) (t!8957 lt!133150)) (= (_1!2497 (h!4534 (t!8957 lt!133150))) (_1!2497 lt!133042))))))

(assert (=> d!63665 (= (getValueByKey!319 (t!8957 lt!133150) (_1!2497 lt!133042)) e!171158)))

(declare-fun b!264158 () Bool)

(assert (=> b!264158 (= e!171159 None!323)))

(declare-fun b!264156 () Bool)

(assert (=> b!264156 (= e!171158 e!171159)))

(declare-fun c!45158 () Bool)

(assert (=> b!264156 (= c!45158 (and ((_ is Cons!3868) (t!8957 lt!133150)) (not (= (_1!2497 (h!4534 (t!8957 lt!133150))) (_1!2497 lt!133042)))))))

(assert (= (and d!63665 c!45157) b!264155))

(assert (= (and d!63665 (not c!45157)) b!264156))

(assert (= (and b!264156 c!45158) b!264157))

(assert (= (and b!264156 (not c!45158)) b!264158))

(declare-fun m!280913 () Bool)

(assert (=> b!264157 m!280913))

(assert (=> b!263619 d!63665))

(declare-fun lt!133731 () Bool)

(declare-fun d!63667 () Bool)

(assert (=> d!63667 (= lt!133731 (select (content!175 (toList!1966 lt!133479)) (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))))

(declare-fun e!171161 () Bool)

(assert (=> d!63667 (= lt!133731 e!171161)))

(declare-fun res!128946 () Bool)

(assert (=> d!63667 (=> (not res!128946) (not e!171161))))

(assert (=> d!63667 (= res!128946 ((_ is Cons!3868) (toList!1966 lt!133479)))))

(assert (=> d!63667 (= (contains!1913 (toList!1966 lt!133479) (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))) lt!133731)))

(declare-fun b!264159 () Bool)

(declare-fun e!171160 () Bool)

(assert (=> b!264159 (= e!171161 e!171160)))

(declare-fun res!128945 () Bool)

(assert (=> b!264159 (=> res!128945 e!171160)))

(assert (=> b!264159 (= res!128945 (= (h!4534 (toList!1966 lt!133479)) (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))))

(declare-fun b!264160 () Bool)

(assert (=> b!264160 (= e!171160 (contains!1913 (t!8957 (toList!1966 lt!133479)) (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))))

(assert (= (and d!63667 res!128946) b!264159))

(assert (= (and b!264159 (not res!128945)) b!264160))

(declare-fun m!280915 () Bool)

(assert (=> d!63667 m!280915))

(declare-fun m!280917 () Bool)

(assert (=> d!63667 m!280917))

(declare-fun m!280919 () Bool)

(assert (=> b!264160 m!280919))

(assert (=> b!263591 d!63667))

(declare-fun d!63669 () Bool)

(declare-fun lt!133732 () Bool)

(assert (=> d!63669 (= lt!133732 (select (content!175 lt!133511) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(declare-fun e!171163 () Bool)

(assert (=> d!63669 (= lt!133732 e!171163)))

(declare-fun res!128948 () Bool)

(assert (=> d!63669 (=> (not res!128948) (not e!171163))))

(assert (=> d!63669 (= res!128948 ((_ is Cons!3868) lt!133511))))

(assert (=> d!63669 (= (contains!1913 lt!133511 (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))) lt!133732)))

(declare-fun b!264161 () Bool)

(declare-fun e!171162 () Bool)

(assert (=> b!264161 (= e!171163 e!171162)))

(declare-fun res!128947 () Bool)

(assert (=> b!264161 (=> res!128947 e!171162)))

(assert (=> b!264161 (= res!128947 (= (h!4534 lt!133511) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(declare-fun b!264162 () Bool)

(assert (=> b!264162 (= e!171162 (contains!1913 (t!8957 lt!133511) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(assert (= (and d!63669 res!128948) b!264161))

(assert (= (and b!264161 (not res!128947)) b!264162))

(declare-fun m!280921 () Bool)

(assert (=> d!63669 m!280921))

(declare-fun m!280923 () Bool)

(assert (=> d!63669 m!280923))

(declare-fun m!280925 () Bool)

(assert (=> b!264162 m!280925))

(assert (=> b!263626 d!63669))

(declare-fun d!63671 () Bool)

(declare-fun e!171164 () Bool)

(assert (=> d!63671 e!171164))

(declare-fun res!128949 () Bool)

(assert (=> d!63671 (=> res!128949 e!171164)))

(declare-fun lt!133734 () Bool)

(assert (=> d!63671 (= res!128949 (not lt!133734))))

(declare-fun lt!133733 () Bool)

(assert (=> d!63671 (= lt!133734 lt!133733)))

(declare-fun lt!133735 () Unit!8187)

(declare-fun e!171165 () Unit!8187)

(assert (=> d!63671 (= lt!133735 e!171165)))

(declare-fun c!45159 () Bool)

(assert (=> d!63671 (= c!45159 lt!133733)))

(assert (=> d!63671 (= lt!133733 (containsKey!311 (toList!1966 lt!133461) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))

(assert (=> d!63671 (= (contains!1911 lt!133461 (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))) lt!133734)))

(declare-fun b!264163 () Bool)

(declare-fun lt!133736 () Unit!8187)

(assert (=> b!264163 (= e!171165 lt!133736)))

(assert (=> b!264163 (= lt!133736 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133461) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))

(assert (=> b!264163 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133461) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))

(declare-fun b!264164 () Bool)

(declare-fun Unit!8233 () Unit!8187)

(assert (=> b!264164 (= e!171165 Unit!8233)))

(declare-fun b!264165 () Bool)

(assert (=> b!264165 (= e!171164 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133461) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))))))

(assert (= (and d!63671 c!45159) b!264163))

(assert (= (and d!63671 (not c!45159)) b!264164))

(assert (= (and d!63671 (not res!128949)) b!264165))

(declare-fun m!280927 () Bool)

(assert (=> d!63671 m!280927))

(declare-fun m!280929 () Bool)

(assert (=> b!264163 m!280929))

(assert (=> b!264163 m!279833))

(assert (=> b!264163 m!279833))

(declare-fun m!280931 () Bool)

(assert (=> b!264163 m!280931))

(assert (=> b!264165 m!279833))

(assert (=> b!264165 m!279833))

(assert (=> b!264165 m!280931))

(assert (=> d!63221 d!63671))

(declare-fun b!264168 () Bool)

(declare-fun e!171167 () Option!325)

(assert (=> b!264168 (= e!171167 (getValueByKey!319 (t!8957 lt!133462) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))

(declare-fun b!264166 () Bool)

(declare-fun e!171166 () Option!325)

(assert (=> b!264166 (= e!171166 (Some!324 (_2!2497 (h!4534 lt!133462))))))

(declare-fun d!63673 () Bool)

(declare-fun c!45160 () Bool)

(assert (=> d!63673 (= c!45160 (and ((_ is Cons!3868) lt!133462) (= (_1!2497 (h!4534 lt!133462)) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))))))

(assert (=> d!63673 (= (getValueByKey!319 lt!133462 (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))) e!171166)))

(declare-fun b!264169 () Bool)

(assert (=> b!264169 (= e!171167 None!323)))

(declare-fun b!264167 () Bool)

(assert (=> b!264167 (= e!171166 e!171167)))

(declare-fun c!45161 () Bool)

(assert (=> b!264167 (= c!45161 (and ((_ is Cons!3868) lt!133462) (not (= (_1!2497 (h!4534 lt!133462)) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63673 c!45160) b!264166))

(assert (= (and d!63673 (not c!45160)) b!264167))

(assert (= (and b!264167 c!45161) b!264168))

(assert (= (and b!264167 (not c!45161)) b!264169))

(declare-fun m!280933 () Bool)

(assert (=> b!264168 m!280933))

(assert (=> d!63221 d!63673))

(declare-fun d!63675 () Bool)

(assert (=> d!63675 (= (getValueByKey!319 lt!133462 (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))

(declare-fun lt!133737 () Unit!8187)

(assert (=> d!63675 (= lt!133737 (choose!1302 lt!133462 (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))

(declare-fun e!171168 () Bool)

(assert (=> d!63675 e!171168))

(declare-fun res!128950 () Bool)

(assert (=> d!63675 (=> (not res!128950) (not e!171168))))

(assert (=> d!63675 (= res!128950 (isStrictlySorted!372 lt!133462))))

(assert (=> d!63675 (= (lemmaContainsTupThenGetReturnValue!177 lt!133462 (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))) lt!133737)))

(declare-fun b!264170 () Bool)

(declare-fun res!128951 () Bool)

(assert (=> b!264170 (=> (not res!128951) (not e!171168))))

(assert (=> b!264170 (= res!128951 (containsKey!311 lt!133462 (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))

(declare-fun b!264171 () Bool)

(assert (=> b!264171 (= e!171168 (contains!1913 lt!133462 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))))))

(assert (= (and d!63675 res!128950) b!264170))

(assert (= (and b!264170 res!128951) b!264171))

(assert (=> d!63675 m!279827))

(declare-fun m!280935 () Bool)

(assert (=> d!63675 m!280935))

(declare-fun m!280937 () Bool)

(assert (=> d!63675 m!280937))

(declare-fun m!280939 () Bool)

(assert (=> b!264170 m!280939))

(declare-fun m!280941 () Bool)

(assert (=> b!264171 m!280941))

(assert (=> d!63221 d!63675))

(declare-fun bm!25284 () Bool)

(declare-fun call!25289 () List!3872)

(declare-fun call!25288 () List!3872)

(assert (=> bm!25284 (= call!25289 call!25288)))

(declare-fun bm!25285 () Bool)

(declare-fun call!25287 () List!3872)

(assert (=> bm!25285 (= call!25287 call!25289)))

(declare-fun b!264172 () Bool)

(declare-fun res!128952 () Bool)

(declare-fun e!171173 () Bool)

(assert (=> b!264172 (=> (not res!128952) (not e!171173))))

(declare-fun lt!133738 () List!3872)

(assert (=> b!264172 (= res!128952 (containsKey!311 lt!133738 (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))

(declare-fun c!45162 () Bool)

(declare-fun b!264173 () Bool)

(assert (=> b!264173 (= c!45162 (and ((_ is Cons!3868) (toList!1966 lt!133225)) (bvsgt (_1!2497 (h!4534 (toList!1966 lt!133225))) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))))))

(declare-fun e!171172 () List!3872)

(declare-fun e!171169 () List!3872)

(assert (=> b!264173 (= e!171172 e!171169)))

(declare-fun b!264174 () Bool)

(declare-fun e!171171 () List!3872)

(assert (=> b!264174 (= e!171171 e!171172)))

(declare-fun c!45165 () Bool)

(assert (=> b!264174 (= c!45165 (and ((_ is Cons!3868) (toList!1966 lt!133225)) (= (_1!2497 (h!4534 (toList!1966 lt!133225))) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))))))

(declare-fun b!264175 () Bool)

(assert (=> b!264175 (= e!171173 (contains!1913 lt!133738 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))))))

(declare-fun b!264176 () Bool)

(assert (=> b!264176 (= e!171171 call!25288)))

(declare-fun b!264177 () Bool)

(assert (=> b!264177 (= e!171172 call!25289)))

(declare-fun b!264178 () Bool)

(declare-fun e!171170 () List!3872)

(assert (=> b!264178 (= e!171170 (insertStrictlySorted!179 (t!8957 (toList!1966 lt!133225)) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))

(declare-fun b!264179 () Bool)

(assert (=> b!264179 (= e!171169 call!25287)))

(declare-fun c!45164 () Bool)

(declare-fun bm!25286 () Bool)

(assert (=> bm!25286 (= call!25288 ($colon$colon!107 e!171170 (ite c!45164 (h!4534 (toList!1966 lt!133225)) (tuple2!4975 (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))))

(declare-fun c!45163 () Bool)

(assert (=> bm!25286 (= c!45163 c!45164)))

(declare-fun d!63677 () Bool)

(assert (=> d!63677 e!171173))

(declare-fun res!128953 () Bool)

(assert (=> d!63677 (=> (not res!128953) (not e!171173))))

(assert (=> d!63677 (= res!128953 (isStrictlySorted!372 lt!133738))))

(assert (=> d!63677 (= lt!133738 e!171171)))

(assert (=> d!63677 (= c!45164 (and ((_ is Cons!3868) (toList!1966 lt!133225)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133225))) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))))))

(assert (=> d!63677 (isStrictlySorted!372 (toList!1966 lt!133225))))

(assert (=> d!63677 (= (insertStrictlySorted!179 (toList!1966 lt!133225) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))) lt!133738)))

(declare-fun b!264180 () Bool)

(assert (=> b!264180 (= e!171169 call!25287)))

(declare-fun b!264181 () Bool)

(assert (=> b!264181 (= e!171170 (ite c!45165 (t!8957 (toList!1966 lt!133225)) (ite c!45162 (Cons!3868 (h!4534 (toList!1966 lt!133225)) (t!8957 (toList!1966 lt!133225))) Nil!3869)))))

(assert (= (and d!63677 c!45164) b!264176))

(assert (= (and d!63677 (not c!45164)) b!264174))

(assert (= (and b!264174 c!45165) b!264177))

(assert (= (and b!264174 (not c!45165)) b!264173))

(assert (= (and b!264173 c!45162) b!264180))

(assert (= (and b!264173 (not c!45162)) b!264179))

(assert (= (or b!264180 b!264179) bm!25285))

(assert (= (or b!264177 bm!25285) bm!25284))

(assert (= (or b!264176 bm!25284) bm!25286))

(assert (= (and bm!25286 c!45163) b!264178))

(assert (= (and bm!25286 (not c!45163)) b!264181))

(assert (= (and d!63677 res!128953) b!264172))

(assert (= (and b!264172 res!128952) b!264175))

(declare-fun m!280943 () Bool)

(assert (=> bm!25286 m!280943))

(declare-fun m!280945 () Bool)

(assert (=> b!264178 m!280945))

(declare-fun m!280947 () Bool)

(assert (=> b!264175 m!280947))

(declare-fun m!280949 () Bool)

(assert (=> b!264172 m!280949))

(declare-fun m!280951 () Bool)

(assert (=> d!63677 m!280951))

(declare-fun m!280953 () Bool)

(assert (=> d!63677 m!280953))

(assert (=> d!63221 d!63677))

(assert (=> d!63167 d!63165))

(declare-fun d!63679 () Bool)

(assert (=> d!63679 (= (getValueByKey!319 lt!133288 (_1!2497 lt!133042)) (Some!324 (_2!2497 lt!133042)))))

(assert (=> d!63679 true))

(declare-fun _$22!544 () Unit!8187)

(assert (=> d!63679 (= (choose!1302 lt!133288 (_1!2497 lt!133042) (_2!2497 lt!133042)) _$22!544)))

(declare-fun bs!9309 () Bool)

(assert (= bs!9309 d!63679))

(assert (=> bs!9309 m!279361))

(assert (=> d!63167 d!63679))

(declare-fun d!63681 () Bool)

(declare-fun res!128954 () Bool)

(declare-fun e!171174 () Bool)

(assert (=> d!63681 (=> res!128954 e!171174)))

(assert (=> d!63681 (= res!128954 (or ((_ is Nil!3869) lt!133288) ((_ is Nil!3869) (t!8957 lt!133288))))))

(assert (=> d!63681 (= (isStrictlySorted!372 lt!133288) e!171174)))

(declare-fun b!264182 () Bool)

(declare-fun e!171175 () Bool)

(assert (=> b!264182 (= e!171174 e!171175)))

(declare-fun res!128955 () Bool)

(assert (=> b!264182 (=> (not res!128955) (not e!171175))))

(assert (=> b!264182 (= res!128955 (bvslt (_1!2497 (h!4534 lt!133288)) (_1!2497 (h!4534 (t!8957 lt!133288)))))))

(declare-fun b!264183 () Bool)

(assert (=> b!264183 (= e!171175 (isStrictlySorted!372 (t!8957 lt!133288)))))

(assert (= (and d!63681 (not res!128954)) b!264182))

(assert (= (and b!264182 res!128955) b!264183))

(declare-fun m!280955 () Bool)

(assert (=> b!264183 m!280955))

(assert (=> d!63167 d!63681))

(declare-fun d!63683 () Bool)

(assert (=> d!63683 (arrayContainsKey!0 lt!133048 lt!133310 #b00000000000000000000000000000000)))

(declare-fun lt!133739 () Unit!8187)

(assert (=> d!63683 (= lt!133739 (choose!13 lt!133048 lt!133310 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!63683 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!63683 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!133048 lt!133310 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!133739)))

(declare-fun bs!9310 () Bool)

(assert (= bs!9310 d!63683))

(assert (=> bs!9310 m!279439))

(declare-fun m!280957 () Bool)

(assert (=> bs!9310 m!280957))

(assert (=> b!263250 d!63683))

(declare-fun d!63685 () Bool)

(declare-fun res!128956 () Bool)

(declare-fun e!171176 () Bool)

(assert (=> d!63685 (=> res!128956 e!171176)))

(assert (=> d!63685 (= res!128956 (= (select (arr!5998 lt!133048) #b00000000000000000000000000000000) lt!133310))))

(assert (=> d!63685 (= (arrayContainsKey!0 lt!133048 lt!133310 #b00000000000000000000000000000000) e!171176)))

(declare-fun b!264184 () Bool)

(declare-fun e!171177 () Bool)

(assert (=> b!264184 (= e!171176 e!171177)))

(declare-fun res!128957 () Bool)

(assert (=> b!264184 (=> (not res!128957) (not e!171177))))

(assert (=> b!264184 (= res!128957 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(declare-fun b!264185 () Bool)

(assert (=> b!264185 (= e!171177 (arrayContainsKey!0 lt!133048 lt!133310 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!63685 (not res!128956)) b!264184))

(assert (= (and b!264184 res!128957) b!264185))

(assert (=> d!63685 m!279233))

(declare-fun m!280959 () Bool)

(assert (=> b!264185 m!280959))

(assert (=> b!263250 d!63685))

(declare-fun b!264186 () Bool)

(declare-fun e!171180 () SeekEntryResult!1210)

(declare-fun lt!133741 () SeekEntryResult!1210)

(assert (=> b!264186 (= e!171180 (MissingZero!1210 (index!7012 lt!133741)))))

(declare-fun b!264187 () Bool)

(declare-fun e!171179 () SeekEntryResult!1210)

(declare-fun e!171178 () SeekEntryResult!1210)

(assert (=> b!264187 (= e!171179 e!171178)))

(declare-fun lt!133742 () (_ BitVec 64))

(assert (=> b!264187 (= lt!133742 (select (arr!5998 lt!133048) (index!7012 lt!133741)))))

(declare-fun c!45168 () Bool)

(assert (=> b!264187 (= c!45168 (= lt!133742 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!264188 () Bool)

(declare-fun c!45166 () Bool)

(assert (=> b!264188 (= c!45166 (= lt!133742 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!264188 (= e!171178 e!171180)))

(declare-fun b!264189 () Bool)

(assert (=> b!264189 (= e!171178 (Found!1210 (index!7012 lt!133741)))))

(declare-fun b!264190 () Bool)

(assert (=> b!264190 (= e!171180 (seekKeyOrZeroReturnVacant!0 (x!25252 lt!133741) (index!7012 lt!133741) (index!7012 lt!133741) (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!133048 (mask!11209 thiss!1504)))))

(declare-fun d!63687 () Bool)

(declare-fun lt!133740 () SeekEntryResult!1210)

(assert (=> d!63687 (and (or ((_ is Undefined!1210) lt!133740) (not ((_ is Found!1210) lt!133740)) (and (bvsge (index!7011 lt!133740) #b00000000000000000000000000000000) (bvslt (index!7011 lt!133740) (size!6349 lt!133048)))) (or ((_ is Undefined!1210) lt!133740) ((_ is Found!1210) lt!133740) (not ((_ is MissingZero!1210) lt!133740)) (and (bvsge (index!7010 lt!133740) #b00000000000000000000000000000000) (bvslt (index!7010 lt!133740) (size!6349 lt!133048)))) (or ((_ is Undefined!1210) lt!133740) ((_ is Found!1210) lt!133740) ((_ is MissingZero!1210) lt!133740) (not ((_ is MissingVacant!1210) lt!133740)) (and (bvsge (index!7013 lt!133740) #b00000000000000000000000000000000) (bvslt (index!7013 lt!133740) (size!6349 lt!133048)))) (or ((_ is Undefined!1210) lt!133740) (ite ((_ is Found!1210) lt!133740) (= (select (arr!5998 lt!133048) (index!7011 lt!133740)) (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite ((_ is MissingZero!1210) lt!133740) (= (select (arr!5998 lt!133048) (index!7010 lt!133740)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1210) lt!133740) (= (select (arr!5998 lt!133048) (index!7013 lt!133740)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!63687 (= lt!133740 e!171179)))

(declare-fun c!45167 () Bool)

(assert (=> d!63687 (= c!45167 (and ((_ is Intermediate!1210) lt!133741) (undefined!2022 lt!133741)))))

(assert (=> d!63687 (= lt!133741 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (mask!11209 thiss!1504)) (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!133048 (mask!11209 thiss!1504)))))

(assert (=> d!63687 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63687 (= (seekEntryOrOpen!0 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!133048 (mask!11209 thiss!1504)) lt!133740)))

(declare-fun b!264191 () Bool)

(assert (=> b!264191 (= e!171179 Undefined!1210)))

(assert (= (and d!63687 c!45167) b!264191))

(assert (= (and d!63687 (not c!45167)) b!264187))

(assert (= (and b!264187 c!45168) b!264189))

(assert (= (and b!264187 (not c!45168)) b!264188))

(assert (= (and b!264188 c!45166) b!264186))

(assert (= (and b!264188 (not c!45166)) b!264190))

(declare-fun m!280961 () Bool)

(assert (=> b!264187 m!280961))

(assert (=> b!264190 m!279435))

(declare-fun m!280963 () Bool)

(assert (=> b!264190 m!280963))

(declare-fun m!280965 () Bool)

(assert (=> d!63687 m!280965))

(assert (=> d!63687 m!279117))

(declare-fun m!280967 () Bool)

(assert (=> d!63687 m!280967))

(assert (=> d!63687 m!279435))

(declare-fun m!280969 () Bool)

(assert (=> d!63687 m!280969))

(declare-fun m!280971 () Bool)

(assert (=> d!63687 m!280971))

(assert (=> d!63687 m!280969))

(assert (=> d!63687 m!279435))

(declare-fun m!280973 () Bool)

(assert (=> d!63687 m!280973))

(assert (=> b!263250 d!63687))

(assert (=> d!63175 d!63651))

(declare-fun e!171182 () Option!325)

(declare-fun b!264194 () Bool)

(assert (=> b!264194 (= e!171182 (getValueByKey!319 (t!8957 (toList!1966 lt!133461)) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))

(declare-fun b!264192 () Bool)

(declare-fun e!171181 () Option!325)

(assert (=> b!264192 (= e!171181 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133461)))))))

(declare-fun d!63689 () Bool)

(declare-fun c!45169 () Bool)

(assert (=> d!63689 (= c!45169 (and ((_ is Cons!3868) (toList!1966 lt!133461)) (= (_1!2497 (h!4534 (toList!1966 lt!133461))) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))))))

(assert (=> d!63689 (= (getValueByKey!319 (toList!1966 lt!133461) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))) e!171181)))

(declare-fun b!264195 () Bool)

(assert (=> b!264195 (= e!171182 None!323)))

(declare-fun b!264193 () Bool)

(assert (=> b!264193 (= e!171181 e!171182)))

(declare-fun c!45170 () Bool)

(assert (=> b!264193 (= c!45170 (and ((_ is Cons!3868) (toList!1966 lt!133461)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133461))) (_1!2497 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63689 c!45169) b!264192))

(assert (= (and d!63689 (not c!45169)) b!264193))

(assert (= (and b!264193 c!45170) b!264194))

(assert (= (and b!264193 (not c!45170)) b!264195))

(declare-fun m!280975 () Bool)

(assert (=> b!264194 m!280975))

(assert (=> b!263570 d!63689))

(declare-fun d!63691 () Bool)

(assert (=> d!63691 (= (isEmpty!546 lt!133482) (isEmpty!547 (toList!1966 lt!133482)))))

(declare-fun bs!9311 () Bool)

(assert (= bs!9311 d!63691))

(declare-fun m!280977 () Bool)

(assert (=> bs!9311 m!280977))

(assert (=> b!263597 d!63691))

(declare-fun d!63693 () Bool)

(assert (=> d!63693 (= (apply!262 lt!133408 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)) (get!3095 (getValueByKey!319 (toList!1966 lt!133408) (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000))))))

(declare-fun bs!9312 () Bool)

(assert (= bs!9312 d!63693))

(assert (=> bs!9312 m!279625))

(declare-fun m!280979 () Bool)

(assert (=> bs!9312 m!280979))

(assert (=> bs!9312 m!280979))

(declare-fun m!280981 () Bool)

(assert (=> bs!9312 m!280981))

(assert (=> b!263427 d!63693))

(declare-fun c!45171 () Bool)

(declare-fun d!63695 () Bool)

(assert (=> d!63695 (= c!45171 ((_ is ValueCellFull!2985) (select (arr!5997 (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun e!171183 () V!8523)

(assert (=> d!63695 (= (get!3094 (select (arr!5997 (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!171183)))

(declare-fun b!264196 () Bool)

(assert (=> b!264196 (= e!171183 (get!3096 (select (arr!5997 (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!264197 () Bool)

(assert (=> b!264197 (= e!171183 (get!3097 (select (arr!5997 (array!12675 (store (arr!5997 (_values!4826 thiss!1504)) index!297 (ValueCellFull!2985 v!346)) (size!6348 (_values!4826 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63695 c!45171) b!264196))

(assert (= (and d!63695 (not c!45171)) b!264197))

(assert (=> b!264196 m!279675))

(assert (=> b!264196 m!279229))

(declare-fun m!280983 () Bool)

(assert (=> b!264196 m!280983))

(assert (=> b!264197 m!279675))

(assert (=> b!264197 m!279229))

(declare-fun m!280985 () Bool)

(assert (=> b!264197 m!280985))

(assert (=> b!263427 d!63695))

(declare-fun d!63697 () Bool)

(declare-fun res!128958 () Bool)

(declare-fun e!171184 () Bool)

(assert (=> d!63697 (=> res!128958 e!171184)))

(assert (=> d!63697 (= res!128958 (= (select (arr!5998 (_keys!7035 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!63697 (= (arrayContainsKey!0 (_keys!7035 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) e!171184)))

(declare-fun b!264198 () Bool)

(declare-fun e!171185 () Bool)

(assert (=> b!264198 (= e!171184 e!171185)))

(declare-fun res!128959 () Bool)

(assert (=> b!264198 (=> (not res!128959) (not e!171185))))

(assert (=> b!264198 (= res!128959 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun b!264199 () Bool)

(assert (=> b!264199 (= e!171185 (arrayContainsKey!0 (_keys!7035 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!63697 (not res!128958)) b!264198))

(assert (= (and b!264198 res!128959) b!264199))

(assert (=> d!63697 m!280803))

(declare-fun m!280987 () Bool)

(assert (=> b!264199 m!280987))

(assert (=> b!263400 d!63697))

(assert (=> d!63063 d!63065))

(declare-fun d!63699 () Bool)

(assert (=> d!63699 (arrayContainsKey!0 lt!133048 lt!133242 #b00000000000000000000000000000000)))

(assert (=> d!63699 true))

(declare-fun _$60!391 () Unit!8187)

(assert (=> d!63699 (= (choose!13 lt!133048 lt!133242 #b00000000000000000000000000000000) _$60!391)))

(declare-fun bs!9313 () Bool)

(assert (= bs!9313 d!63699))

(assert (=> bs!9313 m!279251))

(assert (=> d!63063 d!63699))

(declare-fun d!63701 () Bool)

(assert (=> d!63701 (= (content!176 Nil!3870) ((as const (Array (_ BitVec 64) Bool)) false))))

(assert (=> d!63079 d!63701))

(declare-fun d!63703 () Bool)

(assert (=> d!63703 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133149) (_1!2497 lt!133042)))))

(declare-fun lt!133743 () Unit!8187)

(assert (=> d!63703 (= lt!133743 (choose!1301 (toList!1966 lt!133149) (_1!2497 lt!133042)))))

(declare-fun e!171186 () Bool)

(assert (=> d!63703 e!171186))

(declare-fun res!128960 () Bool)

(assert (=> d!63703 (=> (not res!128960) (not e!171186))))

(assert (=> d!63703 (= res!128960 (isStrictlySorted!372 (toList!1966 lt!133149)))))

(assert (=> d!63703 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133149) (_1!2497 lt!133042)) lt!133743)))

(declare-fun b!264200 () Bool)

(assert (=> b!264200 (= e!171186 (containsKey!311 (toList!1966 lt!133149) (_1!2497 lt!133042)))))

(assert (= (and d!63703 res!128960) b!264200))

(assert (=> d!63703 m!279151))

(assert (=> d!63703 m!279151))

(assert (=> d!63703 m!280005))

(declare-fun m!280989 () Bool)

(assert (=> d!63703 m!280989))

(declare-fun m!280991 () Bool)

(assert (=> d!63703 m!280991))

(assert (=> b!264200 m!280001))

(assert (=> b!263614 d!63703))

(declare-fun d!63705 () Bool)

(assert (=> d!63705 (= (isDefined!261 (getValueByKey!319 (toList!1966 lt!133149) (_1!2497 lt!133042))) (not (isEmpty!545 (getValueByKey!319 (toList!1966 lt!133149) (_1!2497 lt!133042)))))))

(declare-fun bs!9314 () Bool)

(assert (= bs!9314 d!63705))

(assert (=> bs!9314 m!279151))

(declare-fun m!280993 () Bool)

(assert (=> bs!9314 m!280993))

(assert (=> b!263614 d!63705))

(assert (=> b!263614 d!63161))

(declare-fun d!63707 () Bool)

(declare-fun lt!133744 () Bool)

(assert (=> d!63707 (= lt!133744 (select (content!176 Nil!3870) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!171187 () Bool)

(assert (=> d!63707 (= lt!133744 e!171187)))

(declare-fun res!128962 () Bool)

(assert (=> d!63707 (=> (not res!128962) (not e!171187))))

(assert (=> d!63707 (= res!128962 ((_ is Cons!3869) Nil!3870))))

(assert (=> d!63707 (= (contains!1914 Nil!3870 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)) lt!133744)))

(declare-fun b!264201 () Bool)

(declare-fun e!171188 () Bool)

(assert (=> b!264201 (= e!171187 e!171188)))

(declare-fun res!128961 () Bool)

(assert (=> b!264201 (=> res!128961 e!171188)))

(assert (=> b!264201 (= res!128961 (= (h!4535 Nil!3870) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!264202 () Bool)

(assert (=> b!264202 (= e!171188 (contains!1914 (t!8958 Nil!3870) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!63707 res!128962) b!264201))

(assert (= (and b!264201 (not res!128961)) b!264202))

(assert (=> d!63707 m!279447))

(assert (=> d!63707 m!279177))

(declare-fun m!280995 () Bool)

(assert (=> d!63707 m!280995))

(assert (=> b!264202 m!279177))

(declare-fun m!280997 () Bool)

(assert (=> b!264202 m!280997))

(assert (=> b!263555 d!63707))

(declare-fun d!63709 () Bool)

(declare-fun e!171189 () Bool)

(assert (=> d!63709 e!171189))

(declare-fun res!128963 () Bool)

(assert (=> d!63709 (=> res!128963 e!171189)))

(declare-fun lt!133746 () Bool)

(assert (=> d!63709 (= res!128963 (not lt!133746))))

(declare-fun lt!133745 () Bool)

(assert (=> d!63709 (= lt!133746 lt!133745)))

(declare-fun lt!133747 () Unit!8187)

(declare-fun e!171190 () Unit!8187)

(assert (=> d!63709 (= lt!133747 e!171190)))

(declare-fun c!45172 () Bool)

(assert (=> d!63709 (= c!45172 lt!133745)))

(assert (=> d!63709 (= lt!133745 (containsKey!311 (toList!1966 lt!133479) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63709 (= (contains!1911 lt!133479 (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) lt!133746)))

(declare-fun b!264203 () Bool)

(declare-fun lt!133748 () Unit!8187)

(assert (=> b!264203 (= e!171190 lt!133748)))

(assert (=> b!264203 (= lt!133748 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133479) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))

(assert (=> b!264203 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133479) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!264204 () Bool)

(declare-fun Unit!8234 () Unit!8187)

(assert (=> b!264204 (= e!171190 Unit!8234)))

(declare-fun b!264205 () Bool)

(assert (=> b!264205 (= e!171189 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133479) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))))))

(assert (= (and d!63709 c!45172) b!264203))

(assert (= (and d!63709 (not c!45172)) b!264204))

(assert (= (and d!63709 (not res!128963)) b!264205))

(declare-fun m!280999 () Bool)

(assert (=> d!63709 m!280999))

(declare-fun m!281001 () Bool)

(assert (=> b!264203 m!281001))

(assert (=> b!264203 m!279899))

(assert (=> b!264203 m!279899))

(declare-fun m!281003 () Bool)

(assert (=> b!264203 m!281003))

(assert (=> b!264205 m!279899))

(assert (=> b!264205 m!279899))

(assert (=> b!264205 m!281003))

(assert (=> d!63249 d!63709))

(declare-fun b!264208 () Bool)

(declare-fun e!171192 () Option!325)

(assert (=> b!264208 (= e!171192 (getValueByKey!319 (t!8957 lt!133480) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!264206 () Bool)

(declare-fun e!171191 () Option!325)

(assert (=> b!264206 (= e!171191 (Some!324 (_2!2497 (h!4534 lt!133480))))))

(declare-fun c!45173 () Bool)

(declare-fun d!63711 () Bool)

(assert (=> d!63711 (= c!45173 (and ((_ is Cons!3868) lt!133480) (= (_1!2497 (h!4534 lt!133480)) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))))))

(assert (=> d!63711 (= (getValueByKey!319 lt!133480 (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) e!171191)))

(declare-fun b!264209 () Bool)

(assert (=> b!264209 (= e!171192 None!323)))

(declare-fun b!264207 () Bool)

(assert (=> b!264207 (= e!171191 e!171192)))

(declare-fun c!45174 () Bool)

(assert (=> b!264207 (= c!45174 (and ((_ is Cons!3868) lt!133480) (not (= (_1!2497 (h!4534 lt!133480)) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))))

(assert (= (and d!63711 c!45173) b!264206))

(assert (= (and d!63711 (not c!45173)) b!264207))

(assert (= (and b!264207 c!45174) b!264208))

(assert (= (and b!264207 (not c!45174)) b!264209))

(declare-fun m!281005 () Bool)

(assert (=> b!264208 m!281005))

(assert (=> d!63249 d!63711))

(declare-fun d!63713 () Bool)

(assert (=> d!63713 (= (getValueByKey!319 lt!133480 (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))

(declare-fun lt!133749 () Unit!8187)

(assert (=> d!63713 (= lt!133749 (choose!1302 lt!133480 (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))

(declare-fun e!171193 () Bool)

(assert (=> d!63713 e!171193))

(declare-fun res!128964 () Bool)

(assert (=> d!63713 (=> (not res!128964) (not e!171193))))

(assert (=> d!63713 (= res!128964 (isStrictlySorted!372 lt!133480))))

(assert (=> d!63713 (= (lemmaContainsTupThenGetReturnValue!177 lt!133480 (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) lt!133749)))

(declare-fun b!264210 () Bool)

(declare-fun res!128965 () Bool)

(assert (=> b!264210 (=> (not res!128965) (not e!171193))))

(assert (=> b!264210 (= res!128965 (containsKey!311 lt!133480 (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!264211 () Bool)

(assert (=> b!264211 (= e!171193 (contains!1913 lt!133480 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))))))

(assert (= (and d!63713 res!128964) b!264210))

(assert (= (and b!264210 res!128965) b!264211))

(assert (=> d!63713 m!279893))

(declare-fun m!281007 () Bool)

(assert (=> d!63713 m!281007))

(declare-fun m!281009 () Bool)

(assert (=> d!63713 m!281009))

(declare-fun m!281011 () Bool)

(assert (=> b!264210 m!281011))

(declare-fun m!281013 () Bool)

(assert (=> b!264211 m!281013))

(assert (=> d!63249 d!63713))

(declare-fun bm!25287 () Bool)

(declare-fun call!25292 () List!3872)

(declare-fun call!25291 () List!3872)

(assert (=> bm!25287 (= call!25292 call!25291)))

(declare-fun bm!25288 () Bool)

(declare-fun call!25290 () List!3872)

(assert (=> bm!25288 (= call!25290 call!25292)))

(declare-fun b!264212 () Bool)

(declare-fun res!128966 () Bool)

(declare-fun e!171198 () Bool)

(assert (=> b!264212 (=> (not res!128966) (not e!171198))))

(declare-fun lt!133750 () List!3872)

(assert (=> b!264212 (= res!128966 (containsKey!311 lt!133750 (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))

(declare-fun c!45175 () Bool)

(declare-fun b!264213 () Bool)

(assert (=> b!264213 (= c!45175 (and ((_ is Cons!3868) (toList!1966 lt!133284)) (bvsgt (_1!2497 (h!4534 (toList!1966 lt!133284))) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))))))

(declare-fun e!171197 () List!3872)

(declare-fun e!171194 () List!3872)

(assert (=> b!264213 (= e!171197 e!171194)))

(declare-fun b!264214 () Bool)

(declare-fun e!171196 () List!3872)

(assert (=> b!264214 (= e!171196 e!171197)))

(declare-fun c!45178 () Bool)

(assert (=> b!264214 (= c!45178 (and ((_ is Cons!3868) (toList!1966 lt!133284)) (= (_1!2497 (h!4534 (toList!1966 lt!133284))) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))))))

(declare-fun b!264215 () Bool)

(assert (=> b!264215 (= e!171198 (contains!1913 lt!133750 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))))))

(declare-fun b!264216 () Bool)

(assert (=> b!264216 (= e!171196 call!25291)))

(declare-fun b!264217 () Bool)

(assert (=> b!264217 (= e!171197 call!25292)))

(declare-fun b!264218 () Bool)

(declare-fun e!171195 () List!3872)

(assert (=> b!264218 (= e!171195 (insertStrictlySorted!179 (t!8957 (toList!1966 lt!133284)) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!264219 () Bool)

(assert (=> b!264219 (= e!171194 call!25290)))

(declare-fun bm!25289 () Bool)

(declare-fun c!45177 () Bool)

(assert (=> bm!25289 (= call!25291 ($colon$colon!107 e!171195 (ite c!45177 (h!4534 (toList!1966 lt!133284)) (tuple2!4975 (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))))

(declare-fun c!45176 () Bool)

(assert (=> bm!25289 (= c!45176 c!45177)))

(declare-fun d!63715 () Bool)

(assert (=> d!63715 e!171198))

(declare-fun res!128967 () Bool)

(assert (=> d!63715 (=> (not res!128967) (not e!171198))))

(assert (=> d!63715 (= res!128967 (isStrictlySorted!372 lt!133750))))

(assert (=> d!63715 (= lt!133750 e!171196)))

(assert (=> d!63715 (= c!45177 (and ((_ is Cons!3868) (toList!1966 lt!133284)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133284))) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))))))

(assert (=> d!63715 (isStrictlySorted!372 (toList!1966 lt!133284))))

(assert (=> d!63715 (= (insertStrictlySorted!179 (toList!1966 lt!133284) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) lt!133750)))

(declare-fun b!264220 () Bool)

(assert (=> b!264220 (= e!171194 call!25290)))

(declare-fun b!264221 () Bool)

(assert (=> b!264221 (= e!171195 (ite c!45178 (t!8957 (toList!1966 lt!133284)) (ite c!45175 (Cons!3868 (h!4534 (toList!1966 lt!133284)) (t!8957 (toList!1966 lt!133284))) Nil!3869)))))

(assert (= (and d!63715 c!45177) b!264216))

(assert (= (and d!63715 (not c!45177)) b!264214))

(assert (= (and b!264214 c!45178) b!264217))

(assert (= (and b!264214 (not c!45178)) b!264213))

(assert (= (and b!264213 c!45175) b!264220))

(assert (= (and b!264213 (not c!45175)) b!264219))

(assert (= (or b!264220 b!264219) bm!25288))

(assert (= (or b!264217 bm!25288) bm!25287))

(assert (= (or b!264216 bm!25287) bm!25289))

(assert (= (and bm!25289 c!45176) b!264218))

(assert (= (and bm!25289 (not c!45176)) b!264221))

(assert (= (and d!63715 res!128967) b!264212))

(assert (= (and b!264212 res!128966) b!264215))

(declare-fun m!281015 () Bool)

(assert (=> bm!25289 m!281015))

(declare-fun m!281017 () Bool)

(assert (=> b!264218 m!281017))

(declare-fun m!281019 () Bool)

(assert (=> b!264215 m!281019))

(declare-fun m!281021 () Bool)

(assert (=> b!264212 m!281021))

(declare-fun m!281023 () Bool)

(assert (=> d!63715 m!281023))

(declare-fun m!281025 () Bool)

(assert (=> d!63715 m!281025))

(assert (=> d!63249 d!63715))

(assert (=> b!263471 d!63573))

(assert (=> b!263471 d!63469))

(assert (=> d!63153 d!63097))

(assert (=> b!263446 d!63387))

(declare-fun d!63717 () Bool)

(declare-fun res!128968 () Bool)

(declare-fun e!171199 () Bool)

(assert (=> d!63717 (=> res!128968 e!171199)))

(assert (=> d!63717 (= res!128968 (or ((_ is Nil!3869) lt!133435) ((_ is Nil!3869) (t!8957 lt!133435))))))

(assert (=> d!63717 (= (isStrictlySorted!372 lt!133435) e!171199)))

(declare-fun b!264222 () Bool)

(declare-fun e!171200 () Bool)

(assert (=> b!264222 (= e!171199 e!171200)))

(declare-fun res!128969 () Bool)

(assert (=> b!264222 (=> (not res!128969) (not e!171200))))

(assert (=> b!264222 (= res!128969 (bvslt (_1!2497 (h!4534 lt!133435)) (_1!2497 (h!4534 (t!8957 lt!133435)))))))

(declare-fun b!264223 () Bool)

(assert (=> b!264223 (= e!171200 (isStrictlySorted!372 (t!8957 lt!133435)))))

(assert (= (and d!63717 (not res!128968)) b!264222))

(assert (= (and b!264222 res!128969) b!264223))

(declare-fun m!281027 () Bool)

(assert (=> b!264223 m!281027))

(assert (=> d!63169 d!63717))

(declare-fun d!63719 () Bool)

(declare-fun res!128970 () Bool)

(declare-fun e!171201 () Bool)

(assert (=> d!63719 (=> res!128970 e!171201)))

(assert (=> d!63719 (= res!128970 (or ((_ is Nil!3869) (toList!1966 lt!133034)) ((_ is Nil!3869) (t!8957 (toList!1966 lt!133034)))))))

(assert (=> d!63719 (= (isStrictlySorted!372 (toList!1966 lt!133034)) e!171201)))

(declare-fun b!264224 () Bool)

(declare-fun e!171202 () Bool)

(assert (=> b!264224 (= e!171201 e!171202)))

(declare-fun res!128971 () Bool)

(assert (=> b!264224 (=> (not res!128971) (not e!171202))))

(assert (=> b!264224 (= res!128971 (bvslt (_1!2497 (h!4534 (toList!1966 lt!133034))) (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133034))))))))

(declare-fun b!264225 () Bool)

(assert (=> b!264225 (= e!171202 (isStrictlySorted!372 (t!8957 (toList!1966 lt!133034))))))

(assert (= (and d!63719 (not res!128970)) b!264224))

(assert (= (and b!264224 res!128971) b!264225))

(declare-fun m!281029 () Bool)

(assert (=> b!264225 m!281029))

(assert (=> d!63169 d!63719))

(declare-fun d!63721 () Bool)

(assert (=> d!63721 (= (apply!262 lt!133534 #b0000000000000000000000000000000000000000000000000000000000000000) (get!3095 (getValueByKey!319 (toList!1966 lt!133534) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9315 () Bool)

(assert (= bs!9315 d!63721))

(declare-fun m!281031 () Bool)

(assert (=> bs!9315 m!281031))

(assert (=> bs!9315 m!281031))

(declare-fun m!281033 () Bool)

(assert (=> bs!9315 m!281033))

(assert (=> b!263649 d!63721))

(assert (=> b!263635 d!63387))

(assert (=> b!263641 d!63387))

(declare-fun d!63723 () Bool)

(declare-fun e!171203 () Bool)

(assert (=> d!63723 e!171203))

(declare-fun res!128972 () Bool)

(assert (=> d!63723 (=> (not res!128972) (not e!171203))))

(declare-fun lt!133753 () ListLongMap!3901)

(assert (=> d!63723 (= res!128972 (contains!1911 lt!133753 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037)))))))

(declare-fun lt!133754 () List!3872)

(assert (=> d!63723 (= lt!133753 (ListLongMap!3902 lt!133754))))

(declare-fun lt!133752 () Unit!8187)

(declare-fun lt!133751 () Unit!8187)

(assert (=> d!63723 (= lt!133752 lt!133751)))

(assert (=> d!63723 (= (getValueByKey!319 lt!133754 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037)))) (Some!324 (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037)))))))

(assert (=> d!63723 (= lt!133751 (lemmaContainsTupThenGetReturnValue!177 lt!133754 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037)))))))

(assert (=> d!63723 (= lt!133754 (insertStrictlySorted!179 (toList!1966 call!25247) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037)))))))

(assert (=> d!63723 (= (+!705 call!25247 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037))) lt!133753)))

(declare-fun b!264226 () Bool)

(declare-fun res!128973 () Bool)

(assert (=> b!264226 (=> (not res!128973) (not e!171203))))

(assert (=> b!264226 (= res!128973 (= (getValueByKey!319 (toList!1966 lt!133753) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037)))) (Some!324 (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037))))))))

(declare-fun b!264227 () Bool)

(assert (=> b!264227 (= e!171203 (contains!1913 (toList!1966 lt!133753) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037))))))

(assert (= (and d!63723 res!128972) b!264226))

(assert (= (and b!264226 res!128973) b!264227))

(declare-fun m!281035 () Bool)

(assert (=> d!63723 m!281035))

(declare-fun m!281037 () Bool)

(assert (=> d!63723 m!281037))

(declare-fun m!281039 () Bool)

(assert (=> d!63723 m!281039))

(declare-fun m!281041 () Bool)

(assert (=> d!63723 m!281041))

(declare-fun m!281043 () Bool)

(assert (=> b!264226 m!281043))

(declare-fun m!281045 () Bool)

(assert (=> b!264227 m!281045))

(assert (=> b!263654 d!63723))

(declare-fun b!264228 () Bool)

(declare-fun e!171207 () Bool)

(declare-fun e!171204 () Bool)

(assert (=> b!264228 (= e!171207 e!171204)))

(declare-fun res!128975 () Bool)

(declare-fun lt!133756 () SeekEntryResult!1210)

(assert (=> b!264228 (= res!128975 (and ((_ is Intermediate!1210) lt!133756) (not (undefined!2022 lt!133756)) (bvslt (x!25252 lt!133756) #b01111111111111111111111111111110) (bvsge (x!25252 lt!133756) #b00000000000000000000000000000000) (bvsge (x!25252 lt!133756) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!264228 (=> (not res!128975) (not e!171204))))

(declare-fun b!264229 () Bool)

(declare-fun e!171208 () SeekEntryResult!1210)

(declare-fun e!171206 () SeekEntryResult!1210)

(assert (=> b!264229 (= e!171208 e!171206)))

(declare-fun c!45179 () Bool)

(declare-fun lt!133755 () (_ BitVec 64))

(assert (=> b!264229 (= c!45179 (or (= lt!133755 key!932) (= (bvadd lt!133755 lt!133755) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!264230 () Bool)

(assert (=> b!264230 (and (bvsge (index!7012 lt!133756) #b00000000000000000000000000000000) (bvslt (index!7012 lt!133756) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun e!171205 () Bool)

(assert (=> b!264230 (= e!171205 (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7012 lt!133756)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!264231 () Bool)

(assert (=> b!264231 (and (bvsge (index!7012 lt!133756) #b00000000000000000000000000000000) (bvslt (index!7012 lt!133756) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun res!128974 () Bool)

(assert (=> b!264231 (= res!128974 (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7012 lt!133756)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!264231 (=> res!128974 e!171205)))

(declare-fun b!264232 () Bool)

(assert (=> b!264232 (= e!171208 (Intermediate!1210 true (nextIndex!0 (toIndex!0 key!932 (mask!11209 thiss!1504)) #b00000000000000000000000000000000 (mask!11209 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!264233 () Bool)

(assert (=> b!264233 (= e!171206 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 key!932 (mask!11209 thiss!1504)) #b00000000000000000000000000000000 (mask!11209 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (mask!11209 thiss!1504)) key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(declare-fun b!264234 () Bool)

(assert (=> b!264234 (= e!171207 (bvsge (x!25252 lt!133756) #b01111111111111111111111111111110))))

(declare-fun d!63725 () Bool)

(assert (=> d!63725 e!171207))

(declare-fun c!45180 () Bool)

(assert (=> d!63725 (= c!45180 (and ((_ is Intermediate!1210) lt!133756) (undefined!2022 lt!133756)))))

(assert (=> d!63725 (= lt!133756 e!171208)))

(declare-fun c!45181 () Bool)

(assert (=> d!63725 (= c!45181 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!63725 (= lt!133755 (select (arr!5998 (_keys!7035 thiss!1504)) (nextIndex!0 (toIndex!0 key!932 (mask!11209 thiss!1504)) #b00000000000000000000000000000000 (mask!11209 thiss!1504))))))

(assert (=> d!63725 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63725 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!11209 thiss!1504)) #b00000000000000000000000000000000 (mask!11209 thiss!1504)) key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)) lt!133756)))

(declare-fun b!264235 () Bool)

(assert (=> b!264235 (and (bvsge (index!7012 lt!133756) #b00000000000000000000000000000000) (bvslt (index!7012 lt!133756) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun res!128976 () Bool)

(assert (=> b!264235 (= res!128976 (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7012 lt!133756)) key!932))))

(assert (=> b!264235 (=> res!128976 e!171205)))

(assert (=> b!264235 (= e!171204 e!171205)))

(declare-fun b!264236 () Bool)

(assert (=> b!264236 (= e!171206 (Intermediate!1210 false (nextIndex!0 (toIndex!0 key!932 (mask!11209 thiss!1504)) #b00000000000000000000000000000000 (mask!11209 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!63725 c!45181) b!264232))

(assert (= (and d!63725 (not c!45181)) b!264229))

(assert (= (and b!264229 c!45179) b!264236))

(assert (= (and b!264229 (not c!45179)) b!264233))

(assert (= (and d!63725 c!45180) b!264234))

(assert (= (and d!63725 (not c!45180)) b!264228))

(assert (= (and b!264228 res!128975) b!264235))

(assert (= (and b!264235 (not res!128976)) b!264231))

(assert (= (and b!264231 (not res!128974)) b!264230))

(assert (=> b!264233 m!279541))

(declare-fun m!281047 () Bool)

(assert (=> b!264233 m!281047))

(assert (=> b!264233 m!281047))

(declare-fun m!281049 () Bool)

(assert (=> b!264233 m!281049))

(declare-fun m!281051 () Bool)

(assert (=> b!264230 m!281051))

(assert (=> b!264231 m!281051))

(assert (=> b!264235 m!281051))

(assert (=> d!63725 m!279541))

(declare-fun m!281053 () Bool)

(assert (=> d!63725 m!281053))

(assert (=> d!63725 m!279117))

(assert (=> b!263355 d!63725))

(declare-fun d!63727 () Bool)

(declare-fun lt!133759 () (_ BitVec 32))

(assert (=> d!63727 (and (bvsge lt!133759 #b00000000000000000000000000000000) (bvslt lt!133759 (bvadd (mask!11209 thiss!1504) #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!63727 (= lt!133759 (choose!52 (toIndex!0 key!932 (mask!11209 thiss!1504)) #b00000000000000000000000000000000 (mask!11209 thiss!1504)))))

(assert (=> d!63727 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63727 (= (nextIndex!0 (toIndex!0 key!932 (mask!11209 thiss!1504)) #b00000000000000000000000000000000 (mask!11209 thiss!1504)) lt!133759)))

(declare-fun bs!9316 () Bool)

(assert (= bs!9316 d!63727))

(assert (=> bs!9316 m!279121))

(declare-fun m!281055 () Bool)

(assert (=> bs!9316 m!281055))

(assert (=> bs!9316 m!279117))

(assert (=> b!263355 d!63727))

(declare-fun d!63729 () Bool)

(assert (=> d!63729 (= (inRange!0 (ite c!44898 (index!7010 lt!133333) (index!7013 lt!133333)) (mask!11209 thiss!1504)) (and (bvsge (ite c!44898 (index!7010 lt!133333) (index!7013 lt!133333)) #b00000000000000000000000000000000) (bvslt (ite c!44898 (index!7010 lt!133333) (index!7013 lt!133333)) (bvadd (mask!11209 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!25203 d!63729))

(declare-fun d!63731 () Bool)

(declare-fun res!128977 () Bool)

(declare-fun e!171209 () Bool)

(assert (=> d!63731 (=> res!128977 e!171209)))

(assert (=> d!63731 (= res!128977 (and ((_ is Cons!3868) (toList!1966 lt!133149)) (= (_1!2497 (h!4534 (toList!1966 lt!133149))) (_1!2497 lt!133042))))))

(assert (=> d!63731 (= (containsKey!311 (toList!1966 lt!133149) (_1!2497 lt!133042)) e!171209)))

(declare-fun b!264237 () Bool)

(declare-fun e!171210 () Bool)

(assert (=> b!264237 (= e!171209 e!171210)))

(declare-fun res!128978 () Bool)

(assert (=> b!264237 (=> (not res!128978) (not e!171210))))

(assert (=> b!264237 (= res!128978 (and (or (not ((_ is Cons!3868) (toList!1966 lt!133149))) (bvsle (_1!2497 (h!4534 (toList!1966 lt!133149))) (_1!2497 lt!133042))) ((_ is Cons!3868) (toList!1966 lt!133149)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133149))) (_1!2497 lt!133042))))))

(declare-fun b!264238 () Bool)

(assert (=> b!264238 (= e!171210 (containsKey!311 (t!8957 (toList!1966 lt!133149)) (_1!2497 lt!133042)))))

(assert (= (and d!63731 (not res!128977)) b!264237))

(assert (= (and b!264237 res!128978) b!264238))

(declare-fun m!281057 () Bool)

(assert (=> b!264238 m!281057))

(assert (=> d!63281 d!63731))

(declare-fun d!63733 () Bool)

(assert (=> d!63733 (= (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133225 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))) lt!133208)) (v!5504 (getValueByKey!319 (toList!1966 (+!705 lt!133225 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))) lt!133208)))))

(assert (=> d!63211 d!63733))

(declare-fun e!171212 () Option!325)

(declare-fun b!264241 () Bool)

(assert (=> b!264241 (= e!171212 (getValueByKey!319 (t!8957 (toList!1966 (+!705 lt!133225 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))) lt!133208))))

(declare-fun b!264239 () Bool)

(declare-fun e!171211 () Option!325)

(assert (=> b!264239 (= e!171211 (Some!324 (_2!2497 (h!4534 (toList!1966 (+!705 lt!133225 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))))))))

(declare-fun d!63735 () Bool)

(declare-fun c!45182 () Bool)

(assert (=> d!63735 (= c!45182 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133225 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))) (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133225 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))) lt!133208)))))

(assert (=> d!63735 (= (getValueByKey!319 (toList!1966 (+!705 lt!133225 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))) lt!133208) e!171211)))

(declare-fun b!264242 () Bool)

(assert (=> b!264242 (= e!171212 None!323)))

(declare-fun b!264240 () Bool)

(assert (=> b!264240 (= e!171211 e!171212)))

(declare-fun c!45183 () Bool)

(assert (=> b!264240 (= c!45183 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133225 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))) (not (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133225 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504)))))) lt!133208))))))

(assert (= (and d!63735 c!45182) b!264239))

(assert (= (and d!63735 (not c!45182)) b!264240))

(assert (= (and b!264240 c!45183) b!264241))

(assert (= (and b!264240 (not c!45183)) b!264242))

(declare-fun m!281059 () Bool)

(assert (=> b!264241 m!281059))

(assert (=> d!63211 d!63735))

(assert (=> b!263637 d!63393))

(declare-fun d!63737 () Bool)

(assert (=> d!63737 (= (apply!262 (+!705 lt!133400 (tuple2!4975 lt!133401 (zeroValue!4684 thiss!1504))) lt!133405) (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133400 (tuple2!4975 lt!133401 (zeroValue!4684 thiss!1504)))) lt!133405)))))

(declare-fun bs!9317 () Bool)

(assert (= bs!9317 d!63737))

(declare-fun m!281061 () Bool)

(assert (=> bs!9317 m!281061))

(assert (=> bs!9317 m!281061))

(declare-fun m!281063 () Bool)

(assert (=> bs!9317 m!281063))

(assert (=> b!263433 d!63737))

(declare-fun d!63739 () Bool)

(assert (=> d!63739 (= (apply!262 lt!133410 lt!133393) (get!3095 (getValueByKey!319 (toList!1966 lt!133410) lt!133393)))))

(declare-fun bs!9318 () Bool)

(assert (= bs!9318 d!63739))

(declare-fun m!281065 () Bool)

(assert (=> bs!9318 m!281065))

(assert (=> bs!9318 m!281065))

(declare-fun m!281067 () Bool)

(assert (=> bs!9318 m!281067))

(assert (=> b!263433 d!63739))

(declare-fun d!63741 () Bool)

(assert (=> d!63741 (= (apply!262 lt!133400 lt!133405) (get!3095 (getValueByKey!319 (toList!1966 lt!133400) lt!133405)))))

(declare-fun bs!9319 () Bool)

(assert (= bs!9319 d!63741))

(declare-fun m!281069 () Bool)

(assert (=> bs!9319 m!281069))

(assert (=> bs!9319 m!281069))

(declare-fun m!281071 () Bool)

(assert (=> bs!9319 m!281071))

(assert (=> b!263433 d!63741))

(assert (=> b!263433 d!63409))

(declare-fun d!63743 () Bool)

(assert (=> d!63743 (= (apply!262 (+!705 lt!133400 (tuple2!4975 lt!133401 (zeroValue!4684 thiss!1504))) lt!133405) (apply!262 lt!133400 lt!133405))))

(declare-fun lt!133760 () Unit!8187)

(assert (=> d!63743 (= lt!133760 (choose!1303 lt!133400 lt!133401 (zeroValue!4684 thiss!1504) lt!133405))))

(declare-fun e!171213 () Bool)

(assert (=> d!63743 e!171213))

(declare-fun res!128979 () Bool)

(assert (=> d!63743 (=> (not res!128979) (not e!171213))))

(assert (=> d!63743 (= res!128979 (contains!1911 lt!133400 lt!133405))))

(assert (=> d!63743 (= (addApplyDifferent!238 lt!133400 lt!133401 (zeroValue!4684 thiss!1504) lt!133405) lt!133760)))

(declare-fun b!264243 () Bool)

(assert (=> b!264243 (= e!171213 (not (= lt!133405 lt!133401)))))

(assert (= (and d!63743 res!128979) b!264243))

(assert (=> d!63743 m!279669))

(assert (=> d!63743 m!279649))

(assert (=> d!63743 m!279649))

(assert (=> d!63743 m!279653))

(declare-fun m!281073 () Bool)

(assert (=> d!63743 m!281073))

(declare-fun m!281075 () Bool)

(assert (=> d!63743 m!281075))

(assert (=> b!263433 d!63743))

(declare-fun d!63745 () Bool)

(declare-fun e!171214 () Bool)

(assert (=> d!63745 e!171214))

(declare-fun res!128980 () Bool)

(assert (=> d!63745 (=> (not res!128980) (not e!171214))))

(declare-fun lt!133763 () ListLongMap!3901)

(assert (=> d!63745 (= res!128980 (contains!1911 lt!133763 (_1!2497 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504)))))))

(declare-fun lt!133764 () List!3872)

(assert (=> d!63745 (= lt!133763 (ListLongMap!3902 lt!133764))))

(declare-fun lt!133762 () Unit!8187)

(declare-fun lt!133761 () Unit!8187)

(assert (=> d!63745 (= lt!133762 lt!133761)))

(assert (=> d!63745 (= (getValueByKey!319 lt!133764 (_1!2497 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63745 (= lt!133761 (lemmaContainsTupThenGetReturnValue!177 lt!133764 (_1!2497 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63745 (= lt!133764 (insertStrictlySorted!179 (toList!1966 lt!133414) (_1!2497 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63745 (= (+!705 lt!133414 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504))) lt!133763)))

(declare-fun b!264244 () Bool)

(declare-fun res!128981 () Bool)

(assert (=> b!264244 (=> (not res!128981) (not e!171214))))

(assert (=> b!264244 (= res!128981 (= (getValueByKey!319 (toList!1966 lt!133763) (_1!2497 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504))))))))

(declare-fun b!264245 () Bool)

(assert (=> b!264245 (= e!171214 (contains!1913 (toList!1966 lt!133763) (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504))))))

(assert (= (and d!63745 res!128980) b!264244))

(assert (= (and b!264244 res!128981) b!264245))

(declare-fun m!281077 () Bool)

(assert (=> d!63745 m!281077))

(declare-fun m!281079 () Bool)

(assert (=> d!63745 m!281079))

(declare-fun m!281081 () Bool)

(assert (=> d!63745 m!281081))

(declare-fun m!281083 () Bool)

(assert (=> d!63745 m!281083))

(declare-fun m!281085 () Bool)

(assert (=> b!264244 m!281085))

(declare-fun m!281087 () Bool)

(assert (=> b!264245 m!281087))

(assert (=> b!263433 d!63745))

(declare-fun d!63747 () Bool)

(assert (=> d!63747 (= (apply!262 lt!133406 lt!133397) (get!3095 (getValueByKey!319 (toList!1966 lt!133406) lt!133397)))))

(declare-fun bs!9320 () Bool)

(assert (= bs!9320 d!63747))

(declare-fun m!281089 () Bool)

(assert (=> bs!9320 m!281089))

(assert (=> bs!9320 m!281089))

(declare-fun m!281091 () Bool)

(assert (=> bs!9320 m!281091))

(assert (=> b!263433 d!63747))

(declare-fun d!63749 () Bool)

(assert (=> d!63749 (= (apply!262 (+!705 lt!133410 (tuple2!4975 lt!133409 (minValue!4684 thiss!1504))) lt!133393) (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133410 (tuple2!4975 lt!133409 (minValue!4684 thiss!1504)))) lt!133393)))))

(declare-fun bs!9321 () Bool)

(assert (= bs!9321 d!63749))

(declare-fun m!281093 () Bool)

(assert (=> bs!9321 m!281093))

(assert (=> bs!9321 m!281093))

(declare-fun m!281095 () Bool)

(assert (=> bs!9321 m!281095))

(assert (=> b!263433 d!63749))

(declare-fun d!63751 () Bool)

(assert (=> d!63751 (= (apply!262 (+!705 lt!133406 (tuple2!4975 lt!133395 (minValue!4684 thiss!1504))) lt!133397) (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133406 (tuple2!4975 lt!133395 (minValue!4684 thiss!1504)))) lt!133397)))))

(declare-fun bs!9322 () Bool)

(assert (= bs!9322 d!63751))

(declare-fun m!281097 () Bool)

(assert (=> bs!9322 m!281097))

(assert (=> bs!9322 m!281097))

(declare-fun m!281099 () Bool)

(assert (=> bs!9322 m!281099))

(assert (=> b!263433 d!63751))

(declare-fun d!63753 () Bool)

(assert (=> d!63753 (= (apply!262 (+!705 lt!133406 (tuple2!4975 lt!133395 (minValue!4684 thiss!1504))) lt!133397) (apply!262 lt!133406 lt!133397))))

(declare-fun lt!133765 () Unit!8187)

(assert (=> d!63753 (= lt!133765 (choose!1303 lt!133406 lt!133395 (minValue!4684 thiss!1504) lt!133397))))

(declare-fun e!171215 () Bool)

(assert (=> d!63753 e!171215))

(declare-fun res!128982 () Bool)

(assert (=> d!63753 (=> (not res!128982) (not e!171215))))

(assert (=> d!63753 (= res!128982 (contains!1911 lt!133406 lt!133397))))

(assert (=> d!63753 (= (addApplyDifferent!238 lt!133406 lt!133395 (minValue!4684 thiss!1504) lt!133397) lt!133765)))

(declare-fun b!264246 () Bool)

(assert (=> b!264246 (= e!171215 (not (= lt!133397 lt!133395)))))

(assert (= (and d!63753 res!128982) b!264246))

(assert (=> d!63753 m!279667))

(assert (=> d!63753 m!279661))

(assert (=> d!63753 m!279661))

(assert (=> d!63753 m!279665))

(declare-fun m!281101 () Bool)

(assert (=> d!63753 m!281101))

(declare-fun m!281103 () Bool)

(assert (=> d!63753 m!281103))

(assert (=> b!263433 d!63753))

(declare-fun d!63755 () Bool)

(declare-fun e!171216 () Bool)

(assert (=> d!63755 e!171216))

(declare-fun res!128983 () Bool)

(assert (=> d!63755 (=> (not res!128983) (not e!171216))))

(declare-fun lt!133768 () ListLongMap!3901)

(assert (=> d!63755 (= res!128983 (contains!1911 lt!133768 (_1!2497 (tuple2!4975 lt!133409 (minValue!4684 thiss!1504)))))))

(declare-fun lt!133769 () List!3872)

(assert (=> d!63755 (= lt!133768 (ListLongMap!3902 lt!133769))))

(declare-fun lt!133767 () Unit!8187)

(declare-fun lt!133766 () Unit!8187)

(assert (=> d!63755 (= lt!133767 lt!133766)))

(assert (=> d!63755 (= (getValueByKey!319 lt!133769 (_1!2497 (tuple2!4975 lt!133409 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133409 (minValue!4684 thiss!1504)))))))

(assert (=> d!63755 (= lt!133766 (lemmaContainsTupThenGetReturnValue!177 lt!133769 (_1!2497 (tuple2!4975 lt!133409 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133409 (minValue!4684 thiss!1504)))))))

(assert (=> d!63755 (= lt!133769 (insertStrictlySorted!179 (toList!1966 lt!133410) (_1!2497 (tuple2!4975 lt!133409 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133409 (minValue!4684 thiss!1504)))))))

(assert (=> d!63755 (= (+!705 lt!133410 (tuple2!4975 lt!133409 (minValue!4684 thiss!1504))) lt!133768)))

(declare-fun b!264247 () Bool)

(declare-fun res!128984 () Bool)

(assert (=> b!264247 (=> (not res!128984) (not e!171216))))

(assert (=> b!264247 (= res!128984 (= (getValueByKey!319 (toList!1966 lt!133768) (_1!2497 (tuple2!4975 lt!133409 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133409 (minValue!4684 thiss!1504))))))))

(declare-fun b!264248 () Bool)

(assert (=> b!264248 (= e!171216 (contains!1913 (toList!1966 lt!133768) (tuple2!4975 lt!133409 (minValue!4684 thiss!1504))))))

(assert (= (and d!63755 res!128983) b!264247))

(assert (= (and b!264247 res!128984) b!264248))

(declare-fun m!281105 () Bool)

(assert (=> d!63755 m!281105))

(declare-fun m!281107 () Bool)

(assert (=> d!63755 m!281107))

(declare-fun m!281109 () Bool)

(assert (=> d!63755 m!281109))

(declare-fun m!281111 () Bool)

(assert (=> d!63755 m!281111))

(declare-fun m!281113 () Bool)

(assert (=> b!264247 m!281113))

(declare-fun m!281115 () Bool)

(assert (=> b!264248 m!281115))

(assert (=> b!263433 d!63755))

(declare-fun d!63757 () Bool)

(assert (=> d!63757 (contains!1911 (+!705 lt!133414 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504))) lt!133407)))

(declare-fun lt!133770 () Unit!8187)

(assert (=> d!63757 (= lt!133770 (choose!1304 lt!133414 lt!133394 (zeroValue!4684 thiss!1504) lt!133407))))

(assert (=> d!63757 (contains!1911 lt!133414 lt!133407)))

(assert (=> d!63757 (= (addStillContains!238 lt!133414 lt!133394 (zeroValue!4684 thiss!1504) lt!133407) lt!133770)))

(declare-fun bs!9323 () Bool)

(assert (= bs!9323 d!63757))

(assert (=> bs!9323 m!279645))

(assert (=> bs!9323 m!279645))

(assert (=> bs!9323 m!279647))

(declare-fun m!281117 () Bool)

(assert (=> bs!9323 m!281117))

(declare-fun m!281119 () Bool)

(assert (=> bs!9323 m!281119))

(assert (=> b!263433 d!63757))

(declare-fun d!63759 () Bool)

(assert (=> d!63759 (= (apply!262 (+!705 lt!133410 (tuple2!4975 lt!133409 (minValue!4684 thiss!1504))) lt!133393) (apply!262 lt!133410 lt!133393))))

(declare-fun lt!133771 () Unit!8187)

(assert (=> d!63759 (= lt!133771 (choose!1303 lt!133410 lt!133409 (minValue!4684 thiss!1504) lt!133393))))

(declare-fun e!171217 () Bool)

(assert (=> d!63759 e!171217))

(declare-fun res!128985 () Bool)

(assert (=> d!63759 (=> (not res!128985) (not e!171217))))

(assert (=> d!63759 (= res!128985 (contains!1911 lt!133410 lt!133393))))

(assert (=> d!63759 (= (addApplyDifferent!238 lt!133410 lt!133409 (minValue!4684 thiss!1504) lt!133393) lt!133771)))

(declare-fun b!264249 () Bool)

(assert (=> b!264249 (= e!171217 (not (= lt!133393 lt!133409)))))

(assert (= (and d!63759 res!128985) b!264249))

(assert (=> d!63759 m!279651))

(assert (=> d!63759 m!279641))

(assert (=> d!63759 m!279641))

(assert (=> d!63759 m!279643))

(declare-fun m!281121 () Bool)

(assert (=> d!63759 m!281121))

(declare-fun m!281123 () Bool)

(assert (=> d!63759 m!281123))

(assert (=> b!263433 d!63759))

(declare-fun d!63761 () Bool)

(declare-fun e!171218 () Bool)

(assert (=> d!63761 e!171218))

(declare-fun res!128986 () Bool)

(assert (=> d!63761 (=> (not res!128986) (not e!171218))))

(declare-fun lt!133774 () ListLongMap!3901)

(assert (=> d!63761 (= res!128986 (contains!1911 lt!133774 (_1!2497 (tuple2!4975 lt!133401 (zeroValue!4684 thiss!1504)))))))

(declare-fun lt!133775 () List!3872)

(assert (=> d!63761 (= lt!133774 (ListLongMap!3902 lt!133775))))

(declare-fun lt!133773 () Unit!8187)

(declare-fun lt!133772 () Unit!8187)

(assert (=> d!63761 (= lt!133773 lt!133772)))

(assert (=> d!63761 (= (getValueByKey!319 lt!133775 (_1!2497 (tuple2!4975 lt!133401 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133401 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63761 (= lt!133772 (lemmaContainsTupThenGetReturnValue!177 lt!133775 (_1!2497 (tuple2!4975 lt!133401 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133401 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63761 (= lt!133775 (insertStrictlySorted!179 (toList!1966 lt!133400) (_1!2497 (tuple2!4975 lt!133401 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133401 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63761 (= (+!705 lt!133400 (tuple2!4975 lt!133401 (zeroValue!4684 thiss!1504))) lt!133774)))

(declare-fun b!264250 () Bool)

(declare-fun res!128987 () Bool)

(assert (=> b!264250 (=> (not res!128987) (not e!171218))))

(assert (=> b!264250 (= res!128987 (= (getValueByKey!319 (toList!1966 lt!133774) (_1!2497 (tuple2!4975 lt!133401 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133401 (zeroValue!4684 thiss!1504))))))))

(declare-fun b!264251 () Bool)

(assert (=> b!264251 (= e!171218 (contains!1913 (toList!1966 lt!133774) (tuple2!4975 lt!133401 (zeroValue!4684 thiss!1504))))))

(assert (= (and d!63761 res!128986) b!264250))

(assert (= (and b!264250 res!128987) b!264251))

(declare-fun m!281125 () Bool)

(assert (=> d!63761 m!281125))

(declare-fun m!281127 () Bool)

(assert (=> d!63761 m!281127))

(declare-fun m!281129 () Bool)

(assert (=> d!63761 m!281129))

(declare-fun m!281131 () Bool)

(assert (=> d!63761 m!281131))

(declare-fun m!281133 () Bool)

(assert (=> b!264250 m!281133))

(declare-fun m!281135 () Bool)

(assert (=> b!264251 m!281135))

(assert (=> b!263433 d!63761))

(declare-fun d!63763 () Bool)

(declare-fun e!171219 () Bool)

(assert (=> d!63763 e!171219))

(declare-fun res!128988 () Bool)

(assert (=> d!63763 (=> (not res!128988) (not e!171219))))

(declare-fun lt!133778 () ListLongMap!3901)

(assert (=> d!63763 (= res!128988 (contains!1911 lt!133778 (_1!2497 (tuple2!4975 lt!133395 (minValue!4684 thiss!1504)))))))

(declare-fun lt!133779 () List!3872)

(assert (=> d!63763 (= lt!133778 (ListLongMap!3902 lt!133779))))

(declare-fun lt!133777 () Unit!8187)

(declare-fun lt!133776 () Unit!8187)

(assert (=> d!63763 (= lt!133777 lt!133776)))

(assert (=> d!63763 (= (getValueByKey!319 lt!133779 (_1!2497 (tuple2!4975 lt!133395 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133395 (minValue!4684 thiss!1504)))))))

(assert (=> d!63763 (= lt!133776 (lemmaContainsTupThenGetReturnValue!177 lt!133779 (_1!2497 (tuple2!4975 lt!133395 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133395 (minValue!4684 thiss!1504)))))))

(assert (=> d!63763 (= lt!133779 (insertStrictlySorted!179 (toList!1966 lt!133406) (_1!2497 (tuple2!4975 lt!133395 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133395 (minValue!4684 thiss!1504)))))))

(assert (=> d!63763 (= (+!705 lt!133406 (tuple2!4975 lt!133395 (minValue!4684 thiss!1504))) lt!133778)))

(declare-fun b!264252 () Bool)

(declare-fun res!128989 () Bool)

(assert (=> b!264252 (=> (not res!128989) (not e!171219))))

(assert (=> b!264252 (= res!128989 (= (getValueByKey!319 (toList!1966 lt!133778) (_1!2497 (tuple2!4975 lt!133395 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133395 (minValue!4684 thiss!1504))))))))

(declare-fun b!264253 () Bool)

(assert (=> b!264253 (= e!171219 (contains!1913 (toList!1966 lt!133778) (tuple2!4975 lt!133395 (minValue!4684 thiss!1504))))))

(assert (= (and d!63763 res!128988) b!264252))

(assert (= (and b!264252 res!128989) b!264253))

(declare-fun m!281137 () Bool)

(assert (=> d!63763 m!281137))

(declare-fun m!281139 () Bool)

(assert (=> d!63763 m!281139))

(declare-fun m!281141 () Bool)

(assert (=> d!63763 m!281141))

(declare-fun m!281143 () Bool)

(assert (=> d!63763 m!281143))

(declare-fun m!281145 () Bool)

(assert (=> b!264252 m!281145))

(declare-fun m!281147 () Bool)

(assert (=> b!264253 m!281147))

(assert (=> b!263433 d!63763))

(declare-fun d!63765 () Bool)

(declare-fun e!171220 () Bool)

(assert (=> d!63765 e!171220))

(declare-fun res!128990 () Bool)

(assert (=> d!63765 (=> res!128990 e!171220)))

(declare-fun lt!133781 () Bool)

(assert (=> d!63765 (= res!128990 (not lt!133781))))

(declare-fun lt!133780 () Bool)

(assert (=> d!63765 (= lt!133781 lt!133780)))

(declare-fun lt!133782 () Unit!8187)

(declare-fun e!171221 () Unit!8187)

(assert (=> d!63765 (= lt!133782 e!171221)))

(declare-fun c!45184 () Bool)

(assert (=> d!63765 (= c!45184 lt!133780)))

(assert (=> d!63765 (= lt!133780 (containsKey!311 (toList!1966 (+!705 lt!133414 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504)))) lt!133407))))

(assert (=> d!63765 (= (contains!1911 (+!705 lt!133414 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504))) lt!133407) lt!133781)))

(declare-fun b!264254 () Bool)

(declare-fun lt!133783 () Unit!8187)

(assert (=> b!264254 (= e!171221 lt!133783)))

(assert (=> b!264254 (= lt!133783 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 (+!705 lt!133414 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504)))) lt!133407))))

(assert (=> b!264254 (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133414 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504)))) lt!133407))))

(declare-fun b!264255 () Bool)

(declare-fun Unit!8235 () Unit!8187)

(assert (=> b!264255 (= e!171221 Unit!8235)))

(declare-fun b!264256 () Bool)

(assert (=> b!264256 (= e!171220 (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133414 (tuple2!4975 lt!133394 (zeroValue!4684 thiss!1504)))) lt!133407)))))

(assert (= (and d!63765 c!45184) b!264254))

(assert (= (and d!63765 (not c!45184)) b!264255))

(assert (= (and d!63765 (not res!128990)) b!264256))

(declare-fun m!281149 () Bool)

(assert (=> d!63765 m!281149))

(declare-fun m!281151 () Bool)

(assert (=> b!264254 m!281151))

(declare-fun m!281153 () Bool)

(assert (=> b!264254 m!281153))

(assert (=> b!264254 m!281153))

(declare-fun m!281155 () Bool)

(assert (=> b!264254 m!281155))

(assert (=> b!264256 m!281153))

(assert (=> b!264256 m!281153))

(assert (=> b!264256 m!281155))

(assert (=> b!263433 d!63765))

(declare-fun d!63767 () Bool)

(assert (=> d!63767 (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) lt!133277))))

(declare-fun lt!133784 () Unit!8187)

(assert (=> d!63767 (= lt!133784 (choose!1301 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) lt!133277))))

(declare-fun e!171222 () Bool)

(assert (=> d!63767 e!171222))

(declare-fun res!128991 () Bool)

(assert (=> d!63767 (=> (not res!128991) (not e!171222))))

(assert (=> d!63767 (= res!128991 (isStrictlySorted!372 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))))))

(assert (=> d!63767 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) lt!133277) lt!133784)))

(declare-fun b!264257 () Bool)

(assert (=> b!264257 (= e!171222 (containsKey!311 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) lt!133277))))

(assert (= (and d!63767 res!128991) b!264257))

(assert (=> d!63767 m!279955))

(assert (=> d!63767 m!279955))

(assert (=> d!63767 m!279957))

(declare-fun m!281157 () Bool)

(assert (=> d!63767 m!281157))

(declare-fun m!281159 () Bool)

(assert (=> d!63767 m!281159))

(assert (=> b!264257 m!279951))

(assert (=> b!263608 d!63767))

(declare-fun d!63769 () Bool)

(assert (=> d!63769 (= (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) lt!133277)) (not (isEmpty!545 (getValueByKey!319 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) lt!133277))))))

(declare-fun bs!9324 () Bool)

(assert (= bs!9324 d!63769))

(assert (=> bs!9324 m!279955))

(declare-fun m!281161 () Bool)

(assert (=> bs!9324 m!281161))

(assert (=> b!263608 d!63769))

(declare-fun b!264260 () Bool)

(declare-fun e!171224 () Option!325)

(assert (=> b!264260 (= e!171224 (getValueByKey!319 (t!8957 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))) lt!133277))))

(declare-fun b!264258 () Bool)

(declare-fun e!171223 () Option!325)

(assert (=> b!264258 (= e!171223 (Some!324 (_2!2497 (h!4534 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))))))))

(declare-fun d!63771 () Bool)

(declare-fun c!45185 () Bool)

(assert (=> d!63771 (= c!45185 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))) (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))) lt!133277)))))

(assert (=> d!63771 (= (getValueByKey!319 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) lt!133277) e!171223)))

(declare-fun b!264261 () Bool)

(assert (=> b!264261 (= e!171224 None!323)))

(declare-fun b!264259 () Bool)

(assert (=> b!264259 (= e!171223 e!171224)))

(declare-fun c!45186 () Bool)

(assert (=> b!264259 (= c!45186 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))) (not (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))) lt!133277))))))

(assert (= (and d!63771 c!45185) b!264258))

(assert (= (and d!63771 (not c!45185)) b!264259))

(assert (= (and b!264259 c!45186) b!264260))

(assert (= (and b!264259 (not c!45186)) b!264261))

(declare-fun m!281163 () Bool)

(assert (=> b!264260 m!281163))

(assert (=> b!263608 d!63771))

(declare-fun b!264264 () Bool)

(declare-fun e!171226 () Option!325)

(assert (=> b!264264 (= e!171226 (getValueByKey!319 (t!8957 (t!8957 (toList!1966 lt!133031))) key!932))))

(declare-fun b!264262 () Bool)

(declare-fun e!171225 () Option!325)

(assert (=> b!264262 (= e!171225 (Some!324 (_2!2497 (h!4534 (t!8957 (toList!1966 lt!133031))))))))

(declare-fun d!63773 () Bool)

(declare-fun c!45187 () Bool)

(assert (=> d!63773 (= c!45187 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133031))) (= (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133031)))) key!932)))))

(assert (=> d!63773 (= (getValueByKey!319 (t!8957 (toList!1966 lt!133031)) key!932) e!171225)))

(declare-fun b!264265 () Bool)

(assert (=> b!264265 (= e!171226 None!323)))

(declare-fun b!264263 () Bool)

(assert (=> b!264263 (= e!171225 e!171226)))

(declare-fun c!45188 () Bool)

(assert (=> b!264263 (= c!45188 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133031))) (not (= (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133031)))) key!932))))))

(assert (= (and d!63773 c!45187) b!264262))

(assert (= (and d!63773 (not c!45187)) b!264263))

(assert (= (and b!264263 c!45188) b!264264))

(assert (= (and b!264263 (not c!45188)) b!264265))

(declare-fun m!281165 () Bool)

(assert (=> b!264264 m!281165))

(assert (=> b!263549 d!63773))

(assert (=> b!263668 d!63599))

(assert (=> b!263668 d!63601))

(declare-fun d!63775 () Bool)

(assert (not d!63775))

(assert (=> b!263257 d!63775))

(declare-fun b!264268 () Bool)

(declare-fun e!171228 () Option!325)

(assert (=> b!264268 (= e!171228 (getValueByKey!319 (t!8957 (toList!1966 lt!133479)) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!264266 () Bool)

(declare-fun e!171227 () Option!325)

(assert (=> b!264266 (= e!171227 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133479)))))))

(declare-fun c!45189 () Bool)

(declare-fun d!63777 () Bool)

(assert (=> d!63777 (= c!45189 (and ((_ is Cons!3868) (toList!1966 lt!133479)) (= (_1!2497 (h!4534 (toList!1966 lt!133479))) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))))))

(assert (=> d!63777 (= (getValueByKey!319 (toList!1966 lt!133479) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) e!171227)))

(declare-fun b!264269 () Bool)

(assert (=> b!264269 (= e!171228 None!323)))

(declare-fun b!264267 () Bool)

(assert (=> b!264267 (= e!171227 e!171228)))

(declare-fun c!45190 () Bool)

(assert (=> b!264267 (= c!45190 (and ((_ is Cons!3868) (toList!1966 lt!133479)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133479))) (_1!2497 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))))))

(assert (= (and d!63777 c!45189) b!264266))

(assert (= (and d!63777 (not c!45189)) b!264267))

(assert (= (and b!264267 c!45190) b!264268))

(assert (= (and b!264267 (not c!45190)) b!264269))

(declare-fun m!281167 () Bool)

(assert (=> b!264268 m!281167))

(assert (=> b!263590 d!63777))

(declare-fun b!264272 () Bool)

(declare-fun e!171230 () Option!325)

(assert (=> b!264272 (= e!171230 (getValueByKey!319 (t!8957 (t!8957 (toList!1966 lt!133047))) key!932))))

(declare-fun b!264270 () Bool)

(declare-fun e!171229 () Option!325)

(assert (=> b!264270 (= e!171229 (Some!324 (_2!2497 (h!4534 (t!8957 (toList!1966 lt!133047))))))))

(declare-fun d!63779 () Bool)

(declare-fun c!45191 () Bool)

(assert (=> d!63779 (= c!45191 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133047))) (= (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133047)))) key!932)))))

(assert (=> d!63779 (= (getValueByKey!319 (t!8957 (toList!1966 lt!133047)) key!932) e!171229)))

(declare-fun b!264273 () Bool)

(assert (=> b!264273 (= e!171230 None!323)))

(declare-fun b!264271 () Bool)

(assert (=> b!264271 (= e!171229 e!171230)))

(declare-fun c!45192 () Bool)

(assert (=> b!264271 (= c!45192 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133047))) (not (= (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133047)))) key!932))))))

(assert (= (and d!63779 c!45191) b!264270))

(assert (= (and d!63779 (not c!45191)) b!264271))

(assert (= (and b!264271 c!45192) b!264272))

(assert (= (and b!264271 (not c!45192)) b!264273))

(declare-fun m!281169 () Bool)

(assert (=> b!264272 m!281169))

(assert (=> b!263411 d!63779))

(assert (=> d!63203 d!63181))

(declare-fun lt!133785 () SeekEntryResult!1210)

(declare-fun d!63781 () Bool)

(assert (=> d!63781 (and (or ((_ is Undefined!1210) lt!133785) (not ((_ is Found!1210) lt!133785)) (and (bvsge (index!7011 lt!133785) #b00000000000000000000000000000000) (bvslt (index!7011 lt!133785) (size!6349 (_keys!7035 thiss!1504))))) (or ((_ is Undefined!1210) lt!133785) ((_ is Found!1210) lt!133785) (not ((_ is MissingVacant!1210) lt!133785)) (not (= (index!7013 lt!133785) (index!7012 lt!133119))) (and (bvsge (index!7013 lt!133785) #b00000000000000000000000000000000) (bvslt (index!7013 lt!133785) (size!6349 (_keys!7035 thiss!1504))))) (or ((_ is Undefined!1210) lt!133785) (ite ((_ is Found!1210) lt!133785) (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7011 lt!133785)) key!932) (and ((_ is MissingVacant!1210) lt!133785) (= (index!7013 lt!133785) (index!7012 lt!133119)) (= (select (arr!5998 (_keys!7035 thiss!1504)) (index!7013 lt!133785)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!171233 () SeekEntryResult!1210)

(assert (=> d!63781 (= lt!133785 e!171233)))

(declare-fun c!45193 () Bool)

(assert (=> d!63781 (= c!45193 (bvsge (bvadd (x!25252 lt!133119) #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!133786 () (_ BitVec 64))

(assert (=> d!63781 (= lt!133786 (select (arr!5998 (_keys!7035 thiss!1504)) (nextIndex!0 (index!7012 lt!133119) (x!25252 lt!133119) (mask!11209 thiss!1504))))))

(assert (=> d!63781 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63781 (= (seekKeyOrZeroReturnVacant!0 (bvadd (x!25252 lt!133119) #b00000000000000000000000000000001) (nextIndex!0 (index!7012 lt!133119) (x!25252 lt!133119) (mask!11209 thiss!1504)) (index!7012 lt!133119) key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)) lt!133785)))

(declare-fun b!264274 () Bool)

(declare-fun e!171232 () SeekEntryResult!1210)

(assert (=> b!264274 (= e!171232 (seekKeyOrZeroReturnVacant!0 (bvadd (x!25252 lt!133119) #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (index!7012 lt!133119) (x!25252 lt!133119) (mask!11209 thiss!1504)) (bvadd (x!25252 lt!133119) #b00000000000000000000000000000001) (mask!11209 thiss!1504)) (index!7012 lt!133119) key!932 (_keys!7035 thiss!1504) (mask!11209 thiss!1504)))))

(declare-fun b!264275 () Bool)

(assert (=> b!264275 (= e!171232 (MissingVacant!1210 (index!7012 lt!133119)))))

(declare-fun b!264276 () Bool)

(declare-fun c!45195 () Bool)

(assert (=> b!264276 (= c!45195 (= lt!133786 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!171231 () SeekEntryResult!1210)

(assert (=> b!264276 (= e!171231 e!171232)))

(declare-fun b!264277 () Bool)

(assert (=> b!264277 (= e!171233 e!171231)))

(declare-fun c!45194 () Bool)

(assert (=> b!264277 (= c!45194 (= lt!133786 key!932))))

(declare-fun b!264278 () Bool)

(assert (=> b!264278 (= e!171231 (Found!1210 (nextIndex!0 (index!7012 lt!133119) (x!25252 lt!133119) (mask!11209 thiss!1504))))))

(declare-fun b!264279 () Bool)

(assert (=> b!264279 (= e!171233 Undefined!1210)))

(assert (= (and d!63781 c!45193) b!264279))

(assert (= (and d!63781 (not c!45193)) b!264277))

(assert (= (and b!264277 c!45194) b!264278))

(assert (= (and b!264277 (not c!45194)) b!264276))

(assert (= (and b!264276 c!45195) b!264275))

(assert (= (and b!264276 (not c!45195)) b!264274))

(declare-fun m!281171 () Bool)

(assert (=> d!63781 m!281171))

(declare-fun m!281173 () Bool)

(assert (=> d!63781 m!281173))

(assert (=> d!63781 m!279685))

(declare-fun m!281175 () Bool)

(assert (=> d!63781 m!281175))

(assert (=> d!63781 m!279117))

(assert (=> b!264274 m!279685))

(declare-fun m!281177 () Bool)

(assert (=> b!264274 m!281177))

(assert (=> b!264274 m!281177))

(declare-fun m!281179 () Bool)

(assert (=> b!264274 m!281179))

(assert (=> b!263463 d!63781))

(declare-fun d!63783 () Bool)

(declare-fun lt!133787 () (_ BitVec 32))

(assert (=> d!63783 (and (bvsge lt!133787 #b00000000000000000000000000000000) (bvslt lt!133787 (bvadd (mask!11209 thiss!1504) #b00000000000000000000000000000001)))))

(assert (=> d!63783 (= lt!133787 (choose!52 (index!7012 lt!133119) (x!25252 lt!133119) (mask!11209 thiss!1504)))))

(assert (=> d!63783 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63783 (= (nextIndex!0 (index!7012 lt!133119) (x!25252 lt!133119) (mask!11209 thiss!1504)) lt!133787)))

(declare-fun bs!9325 () Bool)

(assert (= bs!9325 d!63783))

(declare-fun m!281181 () Bool)

(assert (=> bs!9325 m!281181))

(assert (=> bs!9325 m!279117))

(assert (=> b!263463 d!63783))

(assert (=> b!263596 d!63105))

(declare-fun d!63785 () Bool)

(assert (=> d!63785 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133278) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!133788 () Unit!8187)

(assert (=> d!63785 (= lt!133788 (choose!1301 (toList!1966 lt!133278) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!171234 () Bool)

(assert (=> d!63785 e!171234))

(declare-fun res!128992 () Bool)

(assert (=> d!63785 (=> (not res!128992) (not e!171234))))

(assert (=> d!63785 (= res!128992 (isStrictlySorted!372 (toList!1966 lt!133278)))))

(assert (=> d!63785 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133278) #b1000000000000000000000000000000000000000000000000000000000000000) lt!133788)))

(declare-fun b!264280 () Bool)

(assert (=> b!264280 (= e!171234 (containsKey!311 (toList!1966 lt!133278) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!63785 res!128992) b!264280))

(assert (=> d!63785 m!279523))

(assert (=> d!63785 m!279523))

(assert (=> d!63785 m!279525))

(declare-fun m!281183 () Bool)

(assert (=> d!63785 m!281183))

(assert (=> d!63785 m!280119))

(assert (=> b!264280 m!279519))

(assert (=> b!263324 d!63785))

(declare-fun d!63787 () Bool)

(assert (=> d!63787 (= (isDefined!261 (getValueByKey!319 (toList!1966 lt!133278) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!545 (getValueByKey!319 (toList!1966 lt!133278) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!9326 () Bool)

(assert (= bs!9326 d!63787))

(assert (=> bs!9326 m!279523))

(declare-fun m!281185 () Bool)

(assert (=> bs!9326 m!281185))

(assert (=> b!263324 d!63787))

(declare-fun b!264283 () Bool)

(declare-fun e!171236 () Option!325)

(assert (=> b!264283 (= e!171236 (getValueByKey!319 (t!8957 (toList!1966 lt!133278)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!264281 () Bool)

(declare-fun e!171235 () Option!325)

(assert (=> b!264281 (= e!171235 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133278)))))))

(declare-fun d!63789 () Bool)

(declare-fun c!45196 () Bool)

(assert (=> d!63789 (= c!45196 (and ((_ is Cons!3868) (toList!1966 lt!133278)) (= (_1!2497 (h!4534 (toList!1966 lt!133278))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63789 (= (getValueByKey!319 (toList!1966 lt!133278) #b1000000000000000000000000000000000000000000000000000000000000000) e!171235)))

(declare-fun b!264284 () Bool)

(assert (=> b!264284 (= e!171236 None!323)))

(declare-fun b!264282 () Bool)

(assert (=> b!264282 (= e!171235 e!171236)))

(declare-fun c!45197 () Bool)

(assert (=> b!264282 (= c!45197 (and ((_ is Cons!3868) (toList!1966 lt!133278)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133278))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!63789 c!45196) b!264281))

(assert (= (and d!63789 (not c!45196)) b!264282))

(assert (= (and b!264282 c!45197) b!264283))

(assert (= (and b!264282 (not c!45197)) b!264284))

(declare-fun m!281187 () Bool)

(assert (=> b!264283 m!281187))

(assert (=> b!263324 d!63789))

(declare-fun d!63791 () Bool)

(declare-fun res!128993 () Bool)

(declare-fun e!171237 () Bool)

(assert (=> d!63791 (=> res!128993 e!171237)))

(assert (=> d!63791 (= res!128993 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))) (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))) lt!133277)))))

(assert (=> d!63791 (= (containsKey!311 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))) lt!133277) e!171237)))

(declare-fun b!264285 () Bool)

(declare-fun e!171238 () Bool)

(assert (=> b!264285 (= e!171237 e!171238)))

(declare-fun res!128994 () Bool)

(assert (=> b!264285 (=> (not res!128994) (not e!171238))))

(assert (=> b!264285 (= res!128994 (and (or (not ((_ is Cons!3868) (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))) (bvsle (_1!2497 (h!4534 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))) lt!133277)) ((_ is Cons!3868) (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))) (bvslt (_1!2497 (h!4534 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504)))))) lt!133277)))))

(declare-fun b!264286 () Bool)

(assert (=> b!264286 (= e!171238 (containsKey!311 (t!8957 (toList!1966 (+!705 lt!133284 (tuple2!4975 lt!133264 (zeroValue!4684 thiss!1504))))) lt!133277))))

(assert (= (and d!63791 (not res!128993)) b!264285))

(assert (= (and b!264285 res!128994) b!264286))

(declare-fun m!281189 () Bool)

(assert (=> b!264286 m!281189))

(assert (=> d!63259 d!63791))

(declare-fun d!63793 () Bool)

(declare-fun e!171239 () Bool)

(assert (=> d!63793 e!171239))

(declare-fun res!128995 () Bool)

(assert (=> d!63793 (=> res!128995 e!171239)))

(declare-fun lt!133790 () Bool)

(assert (=> d!63793 (= res!128995 (not lt!133790))))

(declare-fun lt!133789 () Bool)

(assert (=> d!63793 (= lt!133790 lt!133789)))

(declare-fun lt!133791 () Unit!8187)

(declare-fun e!171240 () Unit!8187)

(assert (=> d!63793 (= lt!133791 e!171240)))

(declare-fun c!45198 () Bool)

(assert (=> d!63793 (= c!45198 lt!133789)))

(assert (=> d!63793 (= lt!133789 (containsKey!311 (toList!1966 lt!133534) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!63793 (= (contains!1911 lt!133534 #b0000000000000000000000000000000000000000000000000000000000000000) lt!133790)))

(declare-fun b!264287 () Bool)

(declare-fun lt!133792 () Unit!8187)

(assert (=> b!264287 (= e!171240 lt!133792)))

(assert (=> b!264287 (= lt!133792 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133534) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!264287 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133534) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!264288 () Bool)

(declare-fun Unit!8236 () Unit!8187)

(assert (=> b!264288 (= e!171240 Unit!8236)))

(declare-fun b!264289 () Bool)

(assert (=> b!264289 (= e!171239 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133534) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63793 c!45198) b!264287))

(assert (= (and d!63793 (not c!45198)) b!264288))

(assert (= (and d!63793 (not res!128995)) b!264289))

(declare-fun m!281191 () Bool)

(assert (=> d!63793 m!281191))

(declare-fun m!281193 () Bool)

(assert (=> b!264287 m!281193))

(assert (=> b!264287 m!281031))

(assert (=> b!264287 m!281031))

(declare-fun m!281195 () Bool)

(assert (=> b!264287 m!281195))

(assert (=> b!264289 m!281031))

(assert (=> b!264289 m!281031))

(assert (=> b!264289 m!281195))

(assert (=> bm!25243 d!63793))

(declare-fun d!63795 () Bool)

(declare-fun res!128996 () Bool)

(declare-fun e!171241 () Bool)

(assert (=> d!63795 (=> res!128996 e!171241)))

(assert (=> d!63795 (= res!128996 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133047))) (= (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133047)))) key!932)))))

(assert (=> d!63795 (= (containsKey!311 (t!8957 (toList!1966 lt!133047)) key!932) e!171241)))

(declare-fun b!264290 () Bool)

(declare-fun e!171242 () Bool)

(assert (=> b!264290 (= e!171241 e!171242)))

(declare-fun res!128997 () Bool)

(assert (=> b!264290 (=> (not res!128997) (not e!171242))))

(assert (=> b!264290 (= res!128997 (and (or (not ((_ is Cons!3868) (t!8957 (toList!1966 lt!133047)))) (bvsle (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133047)))) key!932)) ((_ is Cons!3868) (t!8957 (toList!1966 lt!133047))) (bvslt (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133047)))) key!932)))))

(declare-fun b!264291 () Bool)

(assert (=> b!264291 (= e!171242 (containsKey!311 (t!8957 (t!8957 (toList!1966 lt!133047))) key!932))))

(assert (= (and d!63795 (not res!128996)) b!264290))

(assert (= (and b!264290 res!128997) b!264291))

(declare-fun m!281197 () Bool)

(assert (=> b!264291 m!281197))

(assert (=> b!263579 d!63795))

(assert (=> b!263283 d!63643))

(assert (=> b!263283 d!63645))

(declare-fun d!63797 () Bool)

(declare-fun e!171243 () Bool)

(assert (=> d!63797 e!171243))

(declare-fun res!128998 () Bool)

(assert (=> d!63797 (=> res!128998 e!171243)))

(declare-fun lt!133794 () Bool)

(assert (=> d!63797 (= res!128998 (not lt!133794))))

(declare-fun lt!133793 () Bool)

(assert (=> d!63797 (= lt!133794 lt!133793)))

(declare-fun lt!133795 () Unit!8187)

(declare-fun e!171244 () Unit!8187)

(assert (=> d!63797 (= lt!133795 e!171244)))

(declare-fun c!45199 () Bool)

(assert (=> d!63797 (= c!45199 lt!133793)))

(assert (=> d!63797 (= lt!133793 (containsKey!311 (toList!1966 lt!133408) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!63797 (= (contains!1911 lt!133408 #b1000000000000000000000000000000000000000000000000000000000000000) lt!133794)))

(declare-fun b!264292 () Bool)

(declare-fun lt!133796 () Unit!8187)

(assert (=> b!264292 (= e!171244 lt!133796)))

(assert (=> b!264292 (= lt!133796 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133408) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!264292 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133408) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!264293 () Bool)

(declare-fun Unit!8237 () Unit!8187)

(assert (=> b!264293 (= e!171244 Unit!8237)))

(declare-fun b!264294 () Bool)

(assert (=> b!264294 (= e!171243 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133408) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63797 c!45199) b!264292))

(assert (= (and d!63797 (not c!45199)) b!264293))

(assert (= (and d!63797 (not res!128998)) b!264294))

(declare-fun m!281199 () Bool)

(assert (=> d!63797 m!281199))

(declare-fun m!281201 () Bool)

(assert (=> b!264292 m!281201))

(assert (=> b!264292 m!280325))

(assert (=> b!264292 m!280325))

(declare-fun m!281203 () Bool)

(assert (=> b!264292 m!281203))

(assert (=> b!264294 m!280325))

(assert (=> b!264294 m!280325))

(assert (=> b!264294 m!281203))

(assert (=> bm!25211 d!63797))

(declare-fun d!63799 () Bool)

(assert (=> d!63799 (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) lt!133222))))

(declare-fun lt!133797 () Unit!8187)

(assert (=> d!63799 (= lt!133797 (choose!1301 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) lt!133222))))

(declare-fun e!171245 () Bool)

(assert (=> d!63799 e!171245))

(declare-fun res!128999 () Bool)

(assert (=> d!63799 (=> (not res!128999) (not e!171245))))

(assert (=> d!63799 (= res!128999 (isStrictlySorted!372 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))))))

(assert (=> d!63799 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) lt!133222) lt!133797)))

(declare-fun b!264295 () Bool)

(assert (=> b!264295 (= e!171245 (containsKey!311 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) lt!133222))))

(assert (= (and d!63799 res!128999) b!264295))

(assert (=> d!63799 m!279801))

(assert (=> d!63799 m!279801))

(assert (=> d!63799 m!279803))

(declare-fun m!281205 () Bool)

(assert (=> d!63799 m!281205))

(declare-fun m!281207 () Bool)

(assert (=> d!63799 m!281207))

(assert (=> b!264295 m!279797))

(assert (=> b!263564 d!63799))

(declare-fun d!63801 () Bool)

(assert (=> d!63801 (= (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) lt!133222)) (not (isEmpty!545 (getValueByKey!319 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) lt!133222))))))

(declare-fun bs!9327 () Bool)

(assert (= bs!9327 d!63801))

(assert (=> bs!9327 m!279801))

(declare-fun m!281209 () Bool)

(assert (=> bs!9327 m!281209))

(assert (=> b!263564 d!63801))

(declare-fun b!264298 () Bool)

(declare-fun e!171247 () Option!325)

(assert (=> b!264298 (= e!171247 (getValueByKey!319 (t!8957 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))) lt!133222))))

(declare-fun b!264296 () Bool)

(declare-fun e!171246 () Option!325)

(assert (=> b!264296 (= e!171246 (Some!324 (_2!2497 (h!4534 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))))))))

(declare-fun c!45200 () Bool)

(declare-fun d!63803 () Bool)

(assert (=> d!63803 (= c!45200 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))) (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))) lt!133222)))))

(assert (=> d!63803 (= (getValueByKey!319 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) lt!133222) e!171246)))

(declare-fun b!264299 () Bool)

(assert (=> b!264299 (= e!171247 None!323)))

(declare-fun b!264297 () Bool)

(assert (=> b!264297 (= e!171246 e!171247)))

(declare-fun c!45201 () Bool)

(assert (=> b!264297 (= c!45201 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))) (not (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))) lt!133222))))))

(assert (= (and d!63803 c!45200) b!264296))

(assert (= (and d!63803 (not c!45200)) b!264297))

(assert (= (and b!264297 c!45201) b!264298))

(assert (= (and b!264297 (not c!45201)) b!264299))

(declare-fun m!281211 () Bool)

(assert (=> b!264298 m!281211))

(assert (=> b!263564 d!63803))

(declare-fun b!264300 () Bool)

(declare-fun e!171251 () Bool)

(declare-fun e!171248 () Bool)

(assert (=> b!264300 (= e!171251 e!171248)))

(declare-fun res!129001 () Bool)

(declare-fun lt!133799 () SeekEntryResult!1210)

(assert (=> b!264300 (= res!129001 (and ((_ is Intermediate!1210) lt!133799) (not (undefined!2022 lt!133799)) (bvslt (x!25252 lt!133799) #b01111111111111111111111111111110) (bvsge (x!25252 lt!133799) #b00000000000000000000000000000000) (bvsge (x!25252 lt!133799) #b00000000000000000000000000000000)))))

(assert (=> b!264300 (=> (not res!129001) (not e!171248))))

(declare-fun b!264301 () Bool)

(declare-fun e!171252 () SeekEntryResult!1210)

(declare-fun e!171250 () SeekEntryResult!1210)

(assert (=> b!264301 (= e!171252 e!171250)))

(declare-fun c!45202 () Bool)

(declare-fun lt!133798 () (_ BitVec 64))

(assert (=> b!264301 (= c!45202 (or (= lt!133798 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)) (= (bvadd lt!133798 lt!133798) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!264302 () Bool)

(assert (=> b!264302 (and (bvsge (index!7012 lt!133799) #b00000000000000000000000000000000) (bvslt (index!7012 lt!133799) (size!6349 lt!133048)))))

(declare-fun e!171249 () Bool)

(assert (=> b!264302 (= e!171249 (= (select (arr!5998 lt!133048) (index!7012 lt!133799)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!264303 () Bool)

(assert (=> b!264303 (and (bvsge (index!7012 lt!133799) #b00000000000000000000000000000000) (bvslt (index!7012 lt!133799) (size!6349 lt!133048)))))

(declare-fun res!129000 () Bool)

(assert (=> b!264303 (= res!129000 (= (select (arr!5998 lt!133048) (index!7012 lt!133799)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!264303 (=> res!129000 e!171249)))

(declare-fun b!264304 () Bool)

(assert (=> b!264304 (= e!171252 (Intermediate!1210 true (toIndex!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (mask!11209 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!264305 () Bool)

(assert (=> b!264305 (= e!171250 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (mask!11209 thiss!1504)) #b00000000000000000000000000000000 (mask!11209 thiss!1504)) (select (arr!5998 lt!133048) #b00000000000000000000000000000000) lt!133048 (mask!11209 thiss!1504)))))

(declare-fun b!264306 () Bool)

(assert (=> b!264306 (= e!171251 (bvsge (x!25252 lt!133799) #b01111111111111111111111111111110))))

(declare-fun d!63805 () Bool)

(assert (=> d!63805 e!171251))

(declare-fun c!45203 () Bool)

(assert (=> d!63805 (= c!45203 (and ((_ is Intermediate!1210) lt!133799) (undefined!2022 lt!133799)))))

(assert (=> d!63805 (= lt!133799 e!171252)))

(declare-fun c!45204 () Bool)

(assert (=> d!63805 (= c!45204 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!63805 (= lt!133798 (select (arr!5998 lt!133048) (toIndex!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (mask!11209 thiss!1504))))))

(assert (=> d!63805 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63805 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (mask!11209 thiss!1504)) (select (arr!5998 lt!133048) #b00000000000000000000000000000000) lt!133048 (mask!11209 thiss!1504)) lt!133799)))

(declare-fun b!264307 () Bool)

(assert (=> b!264307 (and (bvsge (index!7012 lt!133799) #b00000000000000000000000000000000) (bvslt (index!7012 lt!133799) (size!6349 lt!133048)))))

(declare-fun res!129002 () Bool)

(assert (=> b!264307 (= res!129002 (= (select (arr!5998 lt!133048) (index!7012 lt!133799)) (select (arr!5998 lt!133048) #b00000000000000000000000000000000)))))

(assert (=> b!264307 (=> res!129002 e!171249)))

(assert (=> b!264307 (= e!171248 e!171249)))

(declare-fun b!264308 () Bool)

(assert (=> b!264308 (= e!171250 (Intermediate!1210 false (toIndex!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (mask!11209 thiss!1504)) #b00000000000000000000000000000000))))

(assert (= (and d!63805 c!45204) b!264304))

(assert (= (and d!63805 (not c!45204)) b!264301))

(assert (= (and b!264301 c!45202) b!264308))

(assert (= (and b!264301 (not c!45202)) b!264305))

(assert (= (and d!63805 c!45203) b!264306))

(assert (= (and d!63805 (not c!45203)) b!264300))

(assert (= (and b!264300 res!129001) b!264307))

(assert (= (and b!264307 (not res!129002)) b!264303))

(assert (= (and b!264303 (not res!129000)) b!264302))

(assert (=> b!264305 m!279417))

(declare-fun m!281213 () Bool)

(assert (=> b!264305 m!281213))

(assert (=> b!264305 m!281213))

(assert (=> b!264305 m!279233))

(declare-fun m!281215 () Bool)

(assert (=> b!264305 m!281215))

(declare-fun m!281217 () Bool)

(assert (=> b!264302 m!281217))

(assert (=> b!264303 m!281217))

(assert (=> b!264307 m!281217))

(assert (=> d!63805 m!279417))

(declare-fun m!281219 () Bool)

(assert (=> d!63805 m!281219))

(assert (=> d!63805 m!279117))

(assert (=> d!63067 d!63805))

(declare-fun d!63807 () Bool)

(declare-fun lt!133801 () (_ BitVec 32))

(declare-fun lt!133800 () (_ BitVec 32))

(assert (=> d!63807 (= lt!133801 (bvmul (bvxor lt!133800 (bvlshr lt!133800 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!63807 (= lt!133800 ((_ extract 31 0) (bvand (bvxor (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (bvlshr (select (arr!5998 lt!133048) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!63807 (and (bvsge (mask!11209 thiss!1504) #b00000000000000000000000000000000) (let ((res!128639 (let ((h!4537 ((_ extract 31 0) (bvand (bvxor (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (bvlshr (select (arr!5998 lt!133048) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!25277 (bvmul (bvxor h!4537 (bvlshr h!4537 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!25277 (bvlshr x!25277 #b00000000000000000000000000001101)) (mask!11209 thiss!1504)))))) (and (bvslt res!128639 (bvadd (mask!11209 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!128639 #b00000000000000000000000000000000))))))

(assert (=> d!63807 (= (toIndex!0 (select (arr!5998 lt!133048) #b00000000000000000000000000000000) (mask!11209 thiss!1504)) (bvand (bvxor lt!133801 (bvlshr lt!133801 #b00000000000000000000000000001101)) (mask!11209 thiss!1504)))))

(assert (=> d!63067 d!63807))

(assert (=> d!63067 d!63097))

(assert (=> d!63103 d!63101))

(assert (=> d!63103 d!63015))

(assert (=> d!63301 d!63291))

(assert (=> d!63301 d!63025))

(declare-fun d!63809 () Bool)

(assert (=> d!63809 (= (get!3097 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!263323 d!63809))

(assert (=> d!63083 d!63085))

(assert (=> d!63083 d!63087))

(declare-fun d!63811 () Bool)

(assert (=> d!63811 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133034) key!932))))

(assert (=> d!63811 true))

(declare-fun _$12!455 () Unit!8187)

(assert (=> d!63811 (= (choose!1301 (toList!1966 lt!133034) key!932) _$12!455)))

(declare-fun bs!9328 () Bool)

(assert (= bs!9328 d!63811))

(assert (=> bs!9328 m!279171))

(assert (=> bs!9328 m!279171))

(assert (=> bs!9328 m!279173))

(assert (=> d!63083 d!63811))

(assert (=> d!63083 d!63719))

(declare-fun d!63813 () Bool)

(assert (=> d!63813 (= (apply!262 lt!133374 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000)) (get!3095 (getValueByKey!319 (toList!1966 lt!133374) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!9329 () Bool)

(assert (= bs!9329 d!63813))

(assert (=> bs!9329 m!279177))

(assert (=> bs!9329 m!280423))

(assert (=> bs!9329 m!280423))

(declare-fun m!281221 () Bool)

(assert (=> bs!9329 m!281221))

(assert (=> b!263389 d!63813))

(assert (=> b!263389 d!63109))

(declare-fun lt!133802 () Bool)

(declare-fun d!63815 () Bool)

(assert (=> d!63815 (= lt!133802 (select (content!175 (toList!1966 lt!133329)) (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun e!171254 () Bool)

(assert (=> d!63815 (= lt!133802 e!171254)))

(declare-fun res!129004 () Bool)

(assert (=> d!63815 (=> (not res!129004) (not e!171254))))

(assert (=> d!63815 (= res!129004 ((_ is Cons!3868) (toList!1966 lt!133329)))))

(assert (=> d!63815 (= (contains!1913 (toList!1966 lt!133329) (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) lt!133802)))

(declare-fun b!264309 () Bool)

(declare-fun e!171253 () Bool)

(assert (=> b!264309 (= e!171254 e!171253)))

(declare-fun res!129003 () Bool)

(assert (=> b!264309 (=> res!129003 e!171253)))

(assert (=> b!264309 (= res!129003 (= (h!4534 (toList!1966 lt!133329)) (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!264310 () Bool)

(assert (=> b!264310 (= e!171253 (contains!1913 (t!8957 (toList!1966 lt!133329)) (ite (or c!44876 c!44873) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (= (and d!63815 res!129004) b!264309))

(assert (= (and b!264309 (not res!129003)) b!264310))

(declare-fun m!281223 () Bool)

(assert (=> d!63815 m!281223))

(declare-fun m!281225 () Bool)

(assert (=> d!63815 m!281225))

(declare-fun m!281227 () Bool)

(assert (=> b!264310 m!281227))

(assert (=> b!263285 d!63815))

(assert (=> b!263553 d!63193))

(declare-fun d!63817 () Bool)

(declare-fun lt!133803 () Bool)

(assert (=> d!63817 (= lt!133803 (select (content!175 (toList!1966 lt!133391)) (tuple2!4975 key!932 v!346)))))

(declare-fun e!171256 () Bool)

(assert (=> d!63817 (= lt!133803 e!171256)))

(declare-fun res!129006 () Bool)

(assert (=> d!63817 (=> (not res!129006) (not e!171256))))

(assert (=> d!63817 (= res!129006 ((_ is Cons!3868) (toList!1966 lt!133391)))))

(assert (=> d!63817 (= (contains!1913 (toList!1966 lt!133391) (tuple2!4975 key!932 v!346)) lt!133803)))

(declare-fun b!264311 () Bool)

(declare-fun e!171255 () Bool)

(assert (=> b!264311 (= e!171256 e!171255)))

(declare-fun res!129005 () Bool)

(assert (=> b!264311 (=> res!129005 e!171255)))

(assert (=> b!264311 (= res!129005 (= (h!4534 (toList!1966 lt!133391)) (tuple2!4975 key!932 v!346)))))

(declare-fun b!264312 () Bool)

(assert (=> b!264312 (= e!171255 (contains!1913 (t!8957 (toList!1966 lt!133391)) (tuple2!4975 key!932 v!346)))))

(assert (= (and d!63817 res!129006) b!264311))

(assert (= (and b!264311 (not res!129005)) b!264312))

(declare-fun m!281229 () Bool)

(assert (=> d!63817 m!281229))

(declare-fun m!281231 () Bool)

(assert (=> d!63817 m!281231))

(declare-fun m!281233 () Bool)

(assert (=> b!264312 m!281233))

(assert (=> b!263425 d!63817))

(declare-fun b!264314 () Bool)

(declare-fun e!171257 () Bool)

(declare-fun call!25293 () Bool)

(assert (=> b!264314 (= e!171257 call!25293)))

(declare-fun b!264315 () Bool)

(declare-fun e!171258 () Bool)

(assert (=> b!264315 (= e!171257 e!171258)))

(declare-fun lt!133804 () (_ BitVec 64))

(assert (=> b!264315 (= lt!133804 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!133805 () Unit!8187)

(assert (=> b!264315 (= lt!133805 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!133048 lt!133804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!264315 (arrayContainsKey!0 lt!133048 lt!133804 #b00000000000000000000000000000000)))

(declare-fun lt!133806 () Unit!8187)

(assert (=> b!264315 (= lt!133806 lt!133805)))

(declare-fun res!129008 () Bool)

(assert (=> b!264315 (= res!129008 (= (seekEntryOrOpen!0 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) lt!133048 (mask!11209 thiss!1504)) (Found!1210 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!264315 (=> (not res!129008) (not e!171258))))

(declare-fun b!264316 () Bool)

(assert (=> b!264316 (= e!171258 call!25293)))

(declare-fun bm!25290 () Bool)

(assert (=> bm!25290 (= call!25293 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!133048 (mask!11209 thiss!1504)))))

(declare-fun b!264313 () Bool)

(declare-fun e!171259 () Bool)

(assert (=> b!264313 (= e!171259 e!171257)))

(declare-fun c!45205 () Bool)

(assert (=> b!264313 (= c!45205 (validKeyInArray!0 (select (arr!5998 lt!133048) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun d!63819 () Bool)

(declare-fun res!129007 () Bool)

(assert (=> d!63819 (=> res!129007 e!171259)))

(assert (=> d!63819 (= res!129007 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(assert (=> d!63819 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!133048 (mask!11209 thiss!1504)) e!171259)))

(assert (= (and d!63819 (not res!129007)) b!264313))

(assert (= (and b!264313 c!45205) b!264315))

(assert (= (and b!264313 (not c!45205)) b!264314))

(assert (= (and b!264315 res!129008) b!264316))

(assert (= (or b!264316 b!264314) bm!25290))

(assert (=> b!264315 m!280331))

(declare-fun m!281235 () Bool)

(assert (=> b!264315 m!281235))

(declare-fun m!281237 () Bool)

(assert (=> b!264315 m!281237))

(assert (=> b!264315 m!280331))

(declare-fun m!281239 () Bool)

(assert (=> b!264315 m!281239))

(declare-fun m!281241 () Bool)

(assert (=> bm!25290 m!281241))

(assert (=> b!264313 m!280331))

(assert (=> b!264313 m!280331))

(assert (=> b!264313 m!280335))

(assert (=> bm!25195 d!63819))

(declare-fun d!63821 () Bool)

(declare-fun c!45208 () Bool)

(assert (=> d!63821 (= c!45208 ((_ is Nil!3869) (toList!1966 lt!133287)))))

(declare-fun e!171262 () (InoxSet tuple2!4974))

(assert (=> d!63821 (= (content!175 (toList!1966 lt!133287)) e!171262)))

(declare-fun b!264321 () Bool)

(assert (=> b!264321 (= e!171262 ((as const (Array tuple2!4974 Bool)) false))))

(declare-fun b!264322 () Bool)

(assert (=> b!264322 (= e!171262 ((_ map or) (store ((as const (Array tuple2!4974 Bool)) false) (h!4534 (toList!1966 lt!133287)) true) (content!175 (t!8957 (toList!1966 lt!133287)))))))

(assert (= (and d!63821 c!45208) b!264321))

(assert (= (and d!63821 (not c!45208)) b!264322))

(declare-fun m!281243 () Bool)

(assert (=> b!264322 m!281243))

(declare-fun m!281245 () Bool)

(assert (=> b!264322 m!281245))

(assert (=> d!63115 d!63821))

(declare-fun d!63823 () Bool)

(declare-fun e!171263 () Bool)

(assert (=> d!63823 e!171263))

(declare-fun res!129009 () Bool)

(assert (=> d!63823 (=> (not res!129009) (not e!171263))))

(declare-fun lt!133809 () ListLongMap!3901)

(assert (=> d!63823 (= res!129009 (contains!1911 lt!133809 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun lt!133810 () List!3872)

(assert (=> d!63823 (= lt!133809 (ListLongMap!3902 lt!133810))))

(declare-fun lt!133808 () Unit!8187)

(declare-fun lt!133807 () Unit!8187)

(assert (=> d!63823 (= lt!133808 lt!133807)))

(assert (=> d!63823 (= (getValueByKey!319 lt!133810 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (=> d!63823 (= lt!133807 (lemmaContainsTupThenGetReturnValue!177 lt!133810 (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (=> d!63823 (= lt!133810 (insertStrictlySorted!179 (toList!1966 call!25219) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (=> d!63823 (= (+!705 call!25219 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))) lt!133809)))

(declare-fun b!264323 () Bool)

(declare-fun res!129010 () Bool)

(assert (=> b!264323 (=> (not res!129010) (not e!171263))))

(assert (=> b!264323 (= res!129010 (= (getValueByKey!319 (toList!1966 lt!133809) (_1!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!264324 () Bool)

(assert (=> b!264324 (= e!171263 (contains!1913 (toList!1966 lt!133809) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))

(assert (= (and d!63823 res!129009) b!264323))

(assert (= (and b!264323 res!129010) b!264324))

(declare-fun m!281247 () Bool)

(assert (=> d!63823 m!281247))

(declare-fun m!281249 () Bool)

(assert (=> d!63823 m!281249))

(declare-fun m!281251 () Bool)

(assert (=> d!63823 m!281251))

(declare-fun m!281253 () Bool)

(assert (=> d!63823 m!281253))

(declare-fun m!281255 () Bool)

(assert (=> b!264323 m!281255))

(declare-fun m!281257 () Bool)

(assert (=> b!264324 m!281257))

(assert (=> b!263435 d!63823))

(assert (=> b!263558 d!63111))

(declare-fun d!63825 () Bool)

(assert (=> d!63825 (= (size!6352 thiss!1504) (bvadd (_size!1984 thiss!1504) (bvsdiv (bvadd (extraKeys!4580 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!263582 d!63825))

(declare-fun lt!133811 () Bool)

(declare-fun d!63827 () Bool)

(assert (=> d!63827 (= lt!133811 (select (content!175 (toList!1966 lt!133438)) (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun e!171265 () Bool)

(assert (=> d!63827 (= lt!133811 e!171265)))

(declare-fun res!129012 () Bool)

(assert (=> d!63827 (=> (not res!129012) (not e!171265))))

(assert (=> d!63827 (= res!129012 ((_ is Cons!3868) (toList!1966 lt!133438)))))

(assert (=> d!63827 (= (contains!1913 (toList!1966 lt!133438) (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) lt!133811)))

(declare-fun b!264325 () Bool)

(declare-fun e!171264 () Bool)

(assert (=> b!264325 (= e!171265 e!171264)))

(declare-fun res!129011 () Bool)

(assert (=> b!264325 (=> res!129011 e!171264)))

(assert (=> b!264325 (= res!129011 (= (h!4534 (toList!1966 lt!133438)) (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(declare-fun b!264326 () Bool)

(assert (=> b!264326 (= e!171264 (contains!1913 (t!8957 (toList!1966 lt!133438)) (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))

(assert (= (and d!63827 res!129012) b!264325))

(assert (= (and b!264325 (not res!129011)) b!264326))

(declare-fun m!281259 () Bool)

(assert (=> d!63827 m!281259))

(declare-fun m!281261 () Bool)

(assert (=> d!63827 m!281261))

(declare-fun m!281263 () Bool)

(assert (=> b!264326 m!281263))

(assert (=> b!263520 d!63827))

(assert (=> b!263530 d!63419))

(declare-fun d!63829 () Bool)

(assert (=> d!63829 (= (validKeyInArray!0 (select (arr!5998 lt!133048) (bvadd index!297 #b00000000000000000000000000000001))) (and (not (= (select (arr!5998 lt!133048) (bvadd index!297 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5998 lt!133048) (bvadd index!297 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!263279 d!63829))

(assert (=> d!63157 d!63097))

(declare-fun d!63831 () Bool)

(declare-fun e!171266 () Bool)

(assert (=> d!63831 e!171266))

(declare-fun res!129013 () Bool)

(assert (=> d!63831 (=> res!129013 e!171266)))

(declare-fun lt!133813 () Bool)

(assert (=> d!63831 (= res!129013 (not lt!133813))))

(declare-fun lt!133812 () Bool)

(assert (=> d!63831 (= lt!133813 lt!133812)))

(declare-fun lt!133814 () Unit!8187)

(declare-fun e!171267 () Unit!8187)

(assert (=> d!63831 (= lt!133814 e!171267)))

(declare-fun c!45209 () Bool)

(assert (=> d!63831 (= c!45209 lt!133812)))

(assert (=> d!63831 (= lt!133812 (containsKey!311 (toList!1966 lt!133374) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!63831 (= (contains!1911 lt!133374 #b0000000000000000000000000000000000000000000000000000000000000000) lt!133813)))

(declare-fun b!264327 () Bool)

(declare-fun lt!133815 () Unit!8187)

(assert (=> b!264327 (= e!171267 lt!133815)))

(assert (=> b!264327 (= lt!133815 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133374) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!264327 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133374) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!264328 () Bool)

(declare-fun Unit!8238 () Unit!8187)

(assert (=> b!264328 (= e!171267 Unit!8238)))

(declare-fun b!264329 () Bool)

(assert (=> b!264329 (= e!171266 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133374) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63831 c!45209) b!264327))

(assert (= (and d!63831 (not c!45209)) b!264328))

(assert (= (and d!63831 (not res!129013)) b!264329))

(declare-fun m!281265 () Bool)

(assert (=> d!63831 m!281265))

(declare-fun m!281267 () Bool)

(assert (=> b!264327 m!281267))

(declare-fun m!281269 () Bool)

(assert (=> b!264327 m!281269))

(assert (=> b!264327 m!281269))

(declare-fun m!281271 () Bool)

(assert (=> b!264327 m!281271))

(assert (=> b!264329 m!281269))

(assert (=> b!264329 m!281269))

(assert (=> b!264329 m!281271))

(assert (=> d!63123 d!63831))

(assert (=> d!63123 d!63097))

(assert (=> d!63215 d!63205))

(assert (=> d!63215 d!63227))

(declare-fun d!63833 () Bool)

(assert (=> d!63833 (= (apply!262 (+!705 lt!133221 (tuple2!4975 lt!133210 (minValue!4684 thiss!1504))) lt!133212) (apply!262 lt!133221 lt!133212))))

(assert (=> d!63833 true))

(declare-fun _$34!1133 () Unit!8187)

(assert (=> d!63833 (= (choose!1303 lt!133221 lt!133210 (minValue!4684 thiss!1504) lt!133212) _$34!1133)))

(declare-fun bs!9330 () Bool)

(assert (= bs!9330 d!63833))

(assert (=> bs!9330 m!279213))

(assert (=> bs!9330 m!279213))

(assert (=> bs!9330 m!279217))

(assert (=> bs!9330 m!279219))

(assert (=> d!63215 d!63833))

(declare-fun d!63835 () Bool)

(declare-fun e!171268 () Bool)

(assert (=> d!63835 e!171268))

(declare-fun res!129014 () Bool)

(assert (=> d!63835 (=> res!129014 e!171268)))

(declare-fun lt!133817 () Bool)

(assert (=> d!63835 (= res!129014 (not lt!133817))))

(declare-fun lt!133816 () Bool)

(assert (=> d!63835 (= lt!133817 lt!133816)))

(declare-fun lt!133818 () Unit!8187)

(declare-fun e!171269 () Unit!8187)

(assert (=> d!63835 (= lt!133818 e!171269)))

(declare-fun c!45210 () Bool)

(assert (=> d!63835 (= c!45210 lt!133816)))

(assert (=> d!63835 (= lt!133816 (containsKey!311 (toList!1966 lt!133221) lt!133212))))

(assert (=> d!63835 (= (contains!1911 lt!133221 lt!133212) lt!133817)))

(declare-fun b!264330 () Bool)

(declare-fun lt!133819 () Unit!8187)

(assert (=> b!264330 (= e!171269 lt!133819)))

(assert (=> b!264330 (= lt!133819 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133221) lt!133212))))

(assert (=> b!264330 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133221) lt!133212))))

(declare-fun b!264331 () Bool)

(declare-fun Unit!8239 () Unit!8187)

(assert (=> b!264331 (= e!171269 Unit!8239)))

(declare-fun b!264332 () Bool)

(assert (=> b!264332 (= e!171268 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133221) lt!133212)))))

(assert (= (and d!63835 c!45210) b!264330))

(assert (= (and d!63835 (not c!45210)) b!264331))

(assert (= (and d!63835 (not res!129014)) b!264332))

(declare-fun m!281273 () Bool)

(assert (=> d!63835 m!281273))

(declare-fun m!281275 () Bool)

(assert (=> b!264330 m!281275))

(assert (=> b!264330 m!279781))

(assert (=> b!264330 m!279781))

(declare-fun m!281277 () Bool)

(assert (=> b!264330 m!281277))

(assert (=> b!264332 m!279781))

(assert (=> b!264332 m!279781))

(assert (=> b!264332 m!281277))

(assert (=> d!63215 d!63835))

(assert (=> d!63215 d!63225))

(declare-fun d!63837 () Bool)

(assert (=> d!63837 (= (get!3095 (getValueByKey!319 (toList!1966 lt!133278) (select (arr!5998 lt!133048) #b00000000000000000000000000000000))) (v!5504 (getValueByKey!319 (toList!1966 lt!133278) (select (arr!5998 lt!133048) #b00000000000000000000000000000000))))))

(assert (=> d!63177 d!63837))

(assert (=> d!63177 d!63311))

(declare-fun d!63839 () Bool)

(declare-fun e!171270 () Bool)

(assert (=> d!63839 e!171270))

(declare-fun res!129015 () Bool)

(assert (=> d!63839 (=> res!129015 e!171270)))

(declare-fun lt!133821 () Bool)

(assert (=> d!63839 (= res!129015 (not lt!133821))))

(declare-fun lt!133820 () Bool)

(assert (=> d!63839 (= lt!133821 lt!133820)))

(declare-fun lt!133822 () Unit!8187)

(declare-fun e!171271 () Unit!8187)

(assert (=> d!63839 (= lt!133822 e!171271)))

(declare-fun c!45211 () Bool)

(assert (=> d!63839 (= c!45211 lt!133820)))

(assert (=> d!63839 (= lt!133820 (containsKey!311 (toList!1966 lt!133473) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))

(assert (=> d!63839 (= (contains!1911 lt!133473 (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) lt!133821)))

(declare-fun b!264333 () Bool)

(declare-fun lt!133823 () Unit!8187)

(assert (=> b!264333 (= e!171271 lt!133823)))

(assert (=> b!264333 (= lt!133823 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133473) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))

(assert (=> b!264333 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133473) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!264334 () Bool)

(declare-fun Unit!8240 () Unit!8187)

(assert (=> b!264334 (= e!171271 Unit!8240)))

(declare-fun b!264335 () Bool)

(assert (=> b!264335 (= e!171270 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133473) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))))))

(assert (= (and d!63839 c!45211) b!264333))

(assert (= (and d!63839 (not c!45211)) b!264334))

(assert (= (and d!63839 (not res!129015)) b!264335))

(declare-fun m!281279 () Bool)

(assert (=> d!63839 m!281279))

(declare-fun m!281281 () Bool)

(assert (=> b!264333 m!281281))

(assert (=> b!264333 m!279873))

(assert (=> b!264333 m!279873))

(declare-fun m!281283 () Bool)

(assert (=> b!264333 m!281283))

(assert (=> b!264335 m!279873))

(assert (=> b!264335 m!279873))

(assert (=> b!264335 m!281283))

(assert (=> d!63233 d!63839))

(declare-fun b!264338 () Bool)

(declare-fun e!171273 () Option!325)

(assert (=> b!264338 (= e!171273 (getValueByKey!319 (t!8957 lt!133474) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!264336 () Bool)

(declare-fun e!171272 () Option!325)

(assert (=> b!264336 (= e!171272 (Some!324 (_2!2497 (h!4534 lt!133474))))))

(declare-fun d!63841 () Bool)

(declare-fun c!45212 () Bool)

(assert (=> d!63841 (= c!45212 (and ((_ is Cons!3868) lt!133474) (= (_1!2497 (h!4534 lt!133474)) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))))))

(assert (=> d!63841 (= (getValueByKey!319 lt!133474 (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) e!171272)))

(declare-fun b!264339 () Bool)

(assert (=> b!264339 (= e!171273 None!323)))

(declare-fun b!264337 () Bool)

(assert (=> b!264337 (= e!171272 e!171273)))

(declare-fun c!45213 () Bool)

(assert (=> b!264337 (= c!45213 (and ((_ is Cons!3868) lt!133474) (not (= (_1!2497 (h!4534 lt!133474)) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))))

(assert (= (and d!63841 c!45212) b!264336))

(assert (= (and d!63841 (not c!45212)) b!264337))

(assert (= (and b!264337 c!45213) b!264338))

(assert (= (and b!264337 (not c!45213)) b!264339))

(declare-fun m!281285 () Bool)

(assert (=> b!264338 m!281285))

(assert (=> d!63233 d!63841))

(declare-fun d!63843 () Bool)

(assert (=> d!63843 (= (getValueByKey!319 lt!133474 (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))

(declare-fun lt!133824 () Unit!8187)

(assert (=> d!63843 (= lt!133824 (choose!1302 lt!133474 (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))

(declare-fun e!171274 () Bool)

(assert (=> d!63843 e!171274))

(declare-fun res!129016 () Bool)

(assert (=> d!63843 (=> (not res!129016) (not e!171274))))

(assert (=> d!63843 (= res!129016 (isStrictlySorted!372 lt!133474))))

(assert (=> d!63843 (= (lemmaContainsTupThenGetReturnValue!177 lt!133474 (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) lt!133824)))

(declare-fun b!264340 () Bool)

(declare-fun res!129017 () Bool)

(assert (=> b!264340 (=> (not res!129017) (not e!171274))))

(assert (=> b!264340 (= res!129017 (containsKey!311 lt!133474 (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!264341 () Bool)

(assert (=> b!264341 (= e!171274 (contains!1913 lt!133474 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))))))

(assert (= (and d!63843 res!129016) b!264340))

(assert (= (and b!264340 res!129017) b!264341))

(assert (=> d!63843 m!279867))

(declare-fun m!281287 () Bool)

(assert (=> d!63843 m!281287))

(declare-fun m!281289 () Bool)

(assert (=> d!63843 m!281289))

(declare-fun m!281291 () Bool)

(assert (=> b!264340 m!281291))

(declare-fun m!281293 () Bool)

(assert (=> b!264341 m!281293))

(assert (=> d!63233 d!63843))

(declare-fun bm!25291 () Bool)

(declare-fun call!25296 () List!3872)

(declare-fun call!25295 () List!3872)

(assert (=> bm!25291 (= call!25296 call!25295)))

(declare-fun bm!25292 () Bool)

(declare-fun call!25294 () List!3872)

(assert (=> bm!25292 (= call!25294 call!25296)))

(declare-fun b!264342 () Bool)

(declare-fun res!129018 () Bool)

(declare-fun e!171279 () Bool)

(assert (=> b!264342 (=> (not res!129018) (not e!171279))))

(declare-fun lt!133825 () List!3872)

(assert (=> b!264342 (= res!129018 (containsKey!311 lt!133825 (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!264343 () Bool)

(declare-fun c!45214 () Bool)

(assert (=> b!264343 (= c!45214 (and ((_ is Cons!3868) (toList!1966 lt!133229)) (bvsgt (_1!2497 (h!4534 (toList!1966 lt!133229))) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))))))

(declare-fun e!171278 () List!3872)

(declare-fun e!171275 () List!3872)

(assert (=> b!264343 (= e!171278 e!171275)))

(declare-fun b!264344 () Bool)

(declare-fun e!171277 () List!3872)

(assert (=> b!264344 (= e!171277 e!171278)))

(declare-fun c!45217 () Bool)

(assert (=> b!264344 (= c!45217 (and ((_ is Cons!3868) (toList!1966 lt!133229)) (= (_1!2497 (h!4534 (toList!1966 lt!133229))) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))))))

(declare-fun b!264345 () Bool)

(assert (=> b!264345 (= e!171279 (contains!1913 lt!133825 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))))))

(declare-fun b!264346 () Bool)

(assert (=> b!264346 (= e!171277 call!25295)))

(declare-fun b!264347 () Bool)

(assert (=> b!264347 (= e!171278 call!25296)))

(declare-fun b!264348 () Bool)

(declare-fun e!171276 () List!3872)

(assert (=> b!264348 (= e!171276 (insertStrictlySorted!179 (t!8957 (toList!1966 lt!133229)) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!264349 () Bool)

(assert (=> b!264349 (= e!171275 call!25294)))

(declare-fun bm!25293 () Bool)

(declare-fun c!45216 () Bool)

(assert (=> bm!25293 (= call!25295 ($colon$colon!107 e!171276 (ite c!45216 (h!4534 (toList!1966 lt!133229)) (tuple2!4975 (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))))

(declare-fun c!45215 () Bool)

(assert (=> bm!25293 (= c!45215 c!45216)))

(declare-fun d!63845 () Bool)

(assert (=> d!63845 e!171279))

(declare-fun res!129019 () Bool)

(assert (=> d!63845 (=> (not res!129019) (not e!171279))))

(assert (=> d!63845 (= res!129019 (isStrictlySorted!372 lt!133825))))

(assert (=> d!63845 (= lt!133825 e!171277)))

(assert (=> d!63845 (= c!45216 (and ((_ is Cons!3868) (toList!1966 lt!133229)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133229))) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))))))

(assert (=> d!63845 (isStrictlySorted!372 (toList!1966 lt!133229))))

(assert (=> d!63845 (= (insertStrictlySorted!179 (toList!1966 lt!133229) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) lt!133825)))

(declare-fun b!264350 () Bool)

(assert (=> b!264350 (= e!171275 call!25294)))

(declare-fun b!264351 () Bool)

(assert (=> b!264351 (= e!171276 (ite c!45217 (t!8957 (toList!1966 lt!133229)) (ite c!45214 (Cons!3868 (h!4534 (toList!1966 lt!133229)) (t!8957 (toList!1966 lt!133229))) Nil!3869)))))

(assert (= (and d!63845 c!45216) b!264346))

(assert (= (and d!63845 (not c!45216)) b!264344))

(assert (= (and b!264344 c!45217) b!264347))

(assert (= (and b!264344 (not c!45217)) b!264343))

(assert (= (and b!264343 c!45214) b!264350))

(assert (= (and b!264343 (not c!45214)) b!264349))

(assert (= (or b!264350 b!264349) bm!25292))

(assert (= (or b!264347 bm!25292) bm!25291))

(assert (= (or b!264346 bm!25291) bm!25293))

(assert (= (and bm!25293 c!45215) b!264348))

(assert (= (and bm!25293 (not c!45215)) b!264351))

(assert (= (and d!63845 res!129019) b!264342))

(assert (= (and b!264342 res!129018) b!264345))

(declare-fun m!281295 () Bool)

(assert (=> bm!25293 m!281295))

(declare-fun m!281297 () Bool)

(assert (=> b!264348 m!281297))

(declare-fun m!281299 () Bool)

(assert (=> b!264345 m!281299))

(declare-fun m!281301 () Bool)

(assert (=> b!264342 m!281301))

(declare-fun m!281303 () Bool)

(assert (=> d!63845 m!281303))

(declare-fun m!281305 () Bool)

(assert (=> d!63845 m!281305))

(assert (=> d!63233 d!63845))

(declare-fun d!63847 () Bool)

(declare-fun e!171280 () Bool)

(assert (=> d!63847 e!171280))

(declare-fun res!129020 () Bool)

(assert (=> d!63847 (=> (not res!129020) (not e!171280))))

(declare-fun lt!133828 () ListLongMap!3901)

(assert (=> d!63847 (= res!129020 (contains!1911 lt!133828 (_1!2497 (ite (or c!45000 c!44997) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 lt!133037)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037))))))))

(declare-fun lt!133829 () List!3872)

(assert (=> d!63847 (= lt!133828 (ListLongMap!3902 lt!133829))))

(declare-fun lt!133827 () Unit!8187)

(declare-fun lt!133826 () Unit!8187)

(assert (=> d!63847 (= lt!133827 lt!133826)))

(assert (=> d!63847 (= (getValueByKey!319 lt!133829 (_1!2497 (ite (or c!45000 c!44997) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 lt!133037)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037))))) (Some!324 (_2!2497 (ite (or c!45000 c!44997) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 lt!133037)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037))))))))

(assert (=> d!63847 (= lt!133826 (lemmaContainsTupThenGetReturnValue!177 lt!133829 (_1!2497 (ite (or c!45000 c!44997) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 lt!133037)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037)))) (_2!2497 (ite (or c!45000 c!44997) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 lt!133037)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037))))))))

(assert (=> d!63847 (= lt!133829 (insertStrictlySorted!179 (toList!1966 (ite c!45000 call!25243 (ite c!44997 call!25241 call!25242))) (_1!2497 (ite (or c!45000 c!44997) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 lt!133037)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037)))) (_2!2497 (ite (or c!45000 c!44997) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 lt!133037)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037))))))))

(assert (=> d!63847 (= (+!705 (ite c!45000 call!25243 (ite c!44997 call!25241 call!25242)) (ite (or c!45000 c!44997) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 lt!133037)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037)))) lt!133828)))

(declare-fun b!264352 () Bool)

(declare-fun res!129021 () Bool)

(assert (=> b!264352 (=> (not res!129021) (not e!171280))))

(assert (=> b!264352 (= res!129021 (= (getValueByKey!319 (toList!1966 lt!133828) (_1!2497 (ite (or c!45000 c!44997) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 lt!133037)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037))))) (Some!324 (_2!2497 (ite (or c!45000 c!44997) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 lt!133037)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037)))))))))

(declare-fun b!264353 () Bool)

(assert (=> b!264353 (= e!171280 (contains!1913 (toList!1966 lt!133828) (ite (or c!45000 c!44997) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 lt!133037)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 lt!133037)))))))

(assert (= (and d!63847 res!129020) b!264352))

(assert (= (and b!264352 res!129021) b!264353))

(declare-fun m!281307 () Bool)

(assert (=> d!63847 m!281307))

(declare-fun m!281309 () Bool)

(assert (=> d!63847 m!281309))

(declare-fun m!281311 () Bool)

(assert (=> d!63847 m!281311))

(declare-fun m!281313 () Bool)

(assert (=> d!63847 m!281313))

(declare-fun m!281315 () Bool)

(assert (=> b!264352 m!281315))

(declare-fun m!281317 () Bool)

(assert (=> b!264353 m!281317))

(assert (=> bm!25242 d!63847))

(declare-fun b!264356 () Bool)

(declare-fun e!171282 () Option!325)

(assert (=> b!264356 (= e!171282 (getValueByKey!319 (t!8957 (toList!1966 lt!133473)) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))

(declare-fun b!264354 () Bool)

(declare-fun e!171281 () Option!325)

(assert (=> b!264354 (= e!171281 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133473)))))))

(declare-fun d!63849 () Bool)

(declare-fun c!45218 () Bool)

(assert (=> d!63849 (= c!45218 (and ((_ is Cons!3868) (toList!1966 lt!133473)) (= (_1!2497 (h!4534 (toList!1966 lt!133473))) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))))))))

(assert (=> d!63849 (= (getValueByKey!319 (toList!1966 lt!133473) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))) e!171281)))

(declare-fun b!264357 () Bool)

(assert (=> b!264357 (= e!171282 None!323)))

(declare-fun b!264355 () Bool)

(assert (=> b!264355 (= e!171281 e!171282)))

(declare-fun c!45219 () Bool)

(assert (=> b!264355 (= c!45219 (and ((_ is Cons!3868) (toList!1966 lt!133473)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133473))) (_1!2497 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504)))))))))

(assert (= (and d!63849 c!45218) b!264354))

(assert (= (and d!63849 (not c!45218)) b!264355))

(assert (= (and b!264355 c!45219) b!264356))

(assert (= (and b!264355 (not c!45219)) b!264357))

(declare-fun m!281319 () Bool)

(assert (=> b!264356 m!281319))

(assert (=> b!263576 d!63849))

(assert (=> d!63135 d!63137))

(assert (=> d!63135 d!63139))

(declare-fun d!63851 () Bool)

(assert (=> d!63851 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133047) key!932))))

(assert (=> d!63851 true))

(declare-fun _$12!456 () Unit!8187)

(assert (=> d!63851 (= (choose!1301 (toList!1966 lt!133047) key!932) _$12!456)))

(declare-fun bs!9331 () Bool)

(assert (= bs!9331 d!63851))

(assert (=> bs!9331 m!279267))

(assert (=> bs!9331 m!279267))

(assert (=> bs!9331 m!279269))

(assert (=> d!63135 d!63851))

(declare-fun d!63853 () Bool)

(declare-fun res!129022 () Bool)

(declare-fun e!171283 () Bool)

(assert (=> d!63853 (=> res!129022 e!171283)))

(assert (=> d!63853 (= res!129022 (or ((_ is Nil!3869) (toList!1966 lt!133047)) ((_ is Nil!3869) (t!8957 (toList!1966 lt!133047)))))))

(assert (=> d!63853 (= (isStrictlySorted!372 (toList!1966 lt!133047)) e!171283)))

(declare-fun b!264358 () Bool)

(declare-fun e!171284 () Bool)

(assert (=> b!264358 (= e!171283 e!171284)))

(declare-fun res!129023 () Bool)

(assert (=> b!264358 (=> (not res!129023) (not e!171284))))

(assert (=> b!264358 (= res!129023 (bvslt (_1!2497 (h!4534 (toList!1966 lt!133047))) (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133047))))))))

(declare-fun b!264359 () Bool)

(assert (=> b!264359 (= e!171284 (isStrictlySorted!372 (t!8957 (toList!1966 lt!133047))))))

(assert (= (and d!63853 (not res!129022)) b!264358))

(assert (= (and b!264358 res!129023) b!264359))

(declare-fun m!281321 () Bool)

(assert (=> b!264359 m!281321))

(assert (=> d!63135 d!63853))

(declare-fun d!63855 () Bool)

(assert (=> d!63855 (= (get!3095 (getValueByKey!319 (toList!1966 lt!133280) lt!133263)) (v!5504 (getValueByKey!319 (toList!1966 lt!133280) lt!133263)))))

(assert (=> d!63267 d!63855))

(declare-fun b!264362 () Bool)

(declare-fun e!171286 () Option!325)

(assert (=> b!264362 (= e!171286 (getValueByKey!319 (t!8957 (toList!1966 lt!133280)) lt!133263))))

(declare-fun b!264360 () Bool)

(declare-fun e!171285 () Option!325)

(assert (=> b!264360 (= e!171285 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133280)))))))

(declare-fun d!63857 () Bool)

(declare-fun c!45220 () Bool)

(assert (=> d!63857 (= c!45220 (and ((_ is Cons!3868) (toList!1966 lt!133280)) (= (_1!2497 (h!4534 (toList!1966 lt!133280))) lt!133263)))))

(assert (=> d!63857 (= (getValueByKey!319 (toList!1966 lt!133280) lt!133263) e!171285)))

(declare-fun b!264363 () Bool)

(assert (=> b!264363 (= e!171286 None!323)))

(declare-fun b!264361 () Bool)

(assert (=> b!264361 (= e!171285 e!171286)))

(declare-fun c!45221 () Bool)

(assert (=> b!264361 (= c!45221 (and ((_ is Cons!3868) (toList!1966 lt!133280)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133280))) lt!133263))))))

(assert (= (and d!63857 c!45220) b!264360))

(assert (= (and d!63857 (not c!45220)) b!264361))

(assert (= (and b!264361 c!45221) b!264362))

(assert (= (and b!264361 (not c!45221)) b!264363))

(declare-fun m!281323 () Bool)

(assert (=> b!264362 m!281323))

(assert (=> d!63267 d!63857))

(declare-fun d!63859 () Bool)

(declare-fun e!171287 () Bool)

(assert (=> d!63859 e!171287))

(declare-fun res!129024 () Bool)

(assert (=> d!63859 (=> res!129024 e!171287)))

(declare-fun lt!133831 () Bool)

(assert (=> d!63859 (= res!129024 (not lt!133831))))

(declare-fun lt!133830 () Bool)

(assert (=> d!63859 (= lt!133831 lt!133830)))

(declare-fun lt!133832 () Unit!8187)

(declare-fun e!171288 () Unit!8187)

(assert (=> d!63859 (= lt!133832 e!171288)))

(declare-fun c!45222 () Bool)

(assert (=> d!63859 (= c!45222 lt!133830)))

(assert (=> d!63859 (= lt!133830 (containsKey!311 (toList!1966 lt!133438) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> d!63859 (= (contains!1911 lt!133438 (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) lt!133831)))

(declare-fun b!264364 () Bool)

(declare-fun lt!133833 () Unit!8187)

(assert (=> b!264364 (= e!171288 lt!133833)))

(assert (=> b!264364 (= lt!133833 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133438) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(assert (=> b!264364 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133438) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!264365 () Bool)

(declare-fun Unit!8241 () Unit!8187)

(assert (=> b!264365 (= e!171288 Unit!8241)))

(declare-fun b!264366 () Bool)

(assert (=> b!264366 (= e!171287 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133438) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63859 c!45222) b!264364))

(assert (= (and d!63859 (not c!45222)) b!264365))

(assert (= (and d!63859 (not res!129024)) b!264366))

(declare-fun m!281325 () Bool)

(assert (=> d!63859 m!281325))

(declare-fun m!281327 () Bool)

(assert (=> b!264364 m!281327))

(assert (=> b!264364 m!279731))

(assert (=> b!264364 m!279731))

(declare-fun m!281329 () Bool)

(assert (=> b!264364 m!281329))

(assert (=> b!264366 m!279731))

(assert (=> b!264366 m!279731))

(assert (=> b!264366 m!281329))

(assert (=> d!63173 d!63859))

(declare-fun e!171290 () Option!325)

(declare-fun b!264369 () Bool)

(assert (=> b!264369 (= e!171290 (getValueByKey!319 (t!8957 lt!133439) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!264367 () Bool)

(declare-fun e!171289 () Option!325)

(assert (=> b!264367 (= e!171289 (Some!324 (_2!2497 (h!4534 lt!133439))))))

(declare-fun c!45223 () Bool)

(declare-fun d!63861 () Bool)

(assert (=> d!63861 (= c!45223 (and ((_ is Cons!3868) lt!133439) (= (_1!2497 (h!4534 lt!133439)) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(assert (=> d!63861 (= (getValueByKey!319 lt!133439 (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) e!171289)))

(declare-fun b!264370 () Bool)

(assert (=> b!264370 (= e!171290 None!323)))

(declare-fun b!264368 () Bool)

(assert (=> b!264368 (= e!171289 e!171290)))

(declare-fun c!45224 () Bool)

(assert (=> b!264368 (= c!45224 (and ((_ is Cons!3868) lt!133439) (not (= (_1!2497 (h!4534 lt!133439)) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))))

(assert (= (and d!63861 c!45223) b!264367))

(assert (= (and d!63861 (not c!45223)) b!264368))

(assert (= (and b!264368 c!45224) b!264369))

(assert (= (and b!264368 (not c!45224)) b!264370))

(declare-fun m!281331 () Bool)

(assert (=> b!264369 m!281331))

(assert (=> d!63173 d!63861))

(declare-fun d!63863 () Bool)

(assert (=> d!63863 (= (getValueByKey!319 lt!133439 (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) (Some!324 (_2!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun lt!133834 () Unit!8187)

(assert (=> d!63863 (= lt!133834 (choose!1302 lt!133439 (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun e!171291 () Bool)

(assert (=> d!63863 e!171291))

(declare-fun res!129025 () Bool)

(assert (=> d!63863 (=> (not res!129025) (not e!171291))))

(assert (=> d!63863 (= res!129025 (isStrictlySorted!372 lt!133439))))

(assert (=> d!63863 (= (lemmaContainsTupThenGetReturnValue!177 lt!133439 (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) lt!133834)))

(declare-fun b!264371 () Bool)

(declare-fun res!129026 () Bool)

(assert (=> b!264371 (=> (not res!129026) (not e!171291))))

(assert (=> b!264371 (= res!129026 (containsKey!311 lt!133439 (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!264372 () Bool)

(assert (=> b!264372 (= e!171291 (contains!1913 lt!133439 (tuple2!4975 (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63863 res!129025) b!264371))

(assert (= (and b!264371 res!129026) b!264372))

(assert (=> d!63863 m!279725))

(declare-fun m!281333 () Bool)

(assert (=> d!63863 m!281333))

(declare-fun m!281335 () Bool)

(assert (=> d!63863 m!281335))

(declare-fun m!281337 () Bool)

(assert (=> b!264371 m!281337))

(declare-fun m!281339 () Bool)

(assert (=> b!264372 m!281339))

(assert (=> d!63173 d!63863))

(declare-fun bm!25294 () Bool)

(declare-fun call!25299 () List!3872)

(declare-fun call!25298 () List!3872)

(assert (=> bm!25294 (= call!25299 call!25298)))

(declare-fun bm!25295 () Bool)

(declare-fun call!25297 () List!3872)

(assert (=> bm!25295 (= call!25297 call!25299)))

(declare-fun b!264373 () Bool)

(declare-fun res!129027 () Bool)

(declare-fun e!171296 () Bool)

(assert (=> b!264373 (=> (not res!129027) (not e!171296))))

(declare-fun lt!133835 () List!3872)

(assert (=> b!264373 (= res!129027 (containsKey!311 lt!133835 (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun c!45225 () Bool)

(declare-fun b!264374 () Bool)

(assert (=> b!264374 (= c!45225 (and ((_ is Cons!3868) (toList!1966 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174)))) (bvsgt (_1!2497 (h!4534 (toList!1966 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174))))) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(declare-fun e!171295 () List!3872)

(declare-fun e!171292 () List!3872)

(assert (=> b!264374 (= e!171295 e!171292)))

(declare-fun b!264375 () Bool)

(declare-fun e!171294 () List!3872)

(assert (=> b!264375 (= e!171294 e!171295)))

(declare-fun c!45228 () Bool)

(assert (=> b!264375 (= c!45228 (and ((_ is Cons!3868) (toList!1966 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174)))) (= (_1!2497 (h!4534 (toList!1966 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174))))) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(declare-fun b!264376 () Bool)

(assert (=> b!264376 (= e!171296 (contains!1913 lt!133835 (tuple2!4975 (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(declare-fun b!264377 () Bool)

(assert (=> b!264377 (= e!171294 call!25298)))

(declare-fun b!264378 () Bool)

(assert (=> b!264378 (= e!171295 call!25299)))

(declare-fun b!264379 () Bool)

(declare-fun e!171293 () List!3872)

(assert (=> b!264379 (= e!171293 (insertStrictlySorted!179 (t!8957 (toList!1966 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174)))) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!264380 () Bool)

(assert (=> b!264380 (= e!171292 call!25297)))

(declare-fun bm!25296 () Bool)

(declare-fun c!45227 () Bool)

(assert (=> bm!25296 (= call!25298 ($colon$colon!107 e!171293 (ite c!45227 (h!4534 (toList!1966 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174)))) (tuple2!4975 (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))))

(declare-fun c!45226 () Bool)

(assert (=> bm!25296 (= c!45226 c!45227)))

(declare-fun d!63865 () Bool)

(assert (=> d!63865 e!171296))

(declare-fun res!129028 () Bool)

(assert (=> d!63865 (=> (not res!129028) (not e!171296))))

(assert (=> d!63865 (= res!129028 (isStrictlySorted!372 lt!133835))))

(assert (=> d!63865 (= lt!133835 e!171294)))

(assert (=> d!63865 (= c!45227 (and ((_ is Cons!3868) (toList!1966 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174)))) (bvslt (_1!2497 (h!4534 (toList!1966 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174))))) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(assert (=> d!63865 (isStrictlySorted!372 (toList!1966 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174))))))

(assert (=> d!63865 (= (insertStrictlySorted!179 (toList!1966 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174))) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))) (_2!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) lt!133835)))

(declare-fun b!264381 () Bool)

(assert (=> b!264381 (= e!171292 call!25297)))

(declare-fun b!264382 () Bool)

(assert (=> b!264382 (= e!171293 (ite c!45228 (t!8957 (toList!1966 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174)))) (ite c!45225 (Cons!3868 (h!4534 (toList!1966 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174)))) (t!8957 (toList!1966 (ite c!44853 call!25175 (ite c!44850 call!25173 call!25174))))) Nil!3869)))))

(assert (= (and d!63865 c!45227) b!264377))

(assert (= (and d!63865 (not c!45227)) b!264375))

(assert (= (and b!264375 c!45228) b!264378))

(assert (= (and b!264375 (not c!45228)) b!264374))

(assert (= (and b!264374 c!45225) b!264381))

(assert (= (and b!264374 (not c!45225)) b!264380))

(assert (= (or b!264381 b!264380) bm!25295))

(assert (= (or b!264378 bm!25295) bm!25294))

(assert (= (or b!264377 bm!25294) bm!25296))

(assert (= (and bm!25296 c!45226) b!264379))

(assert (= (and bm!25296 (not c!45226)) b!264382))

(assert (= (and d!63865 res!129028) b!264373))

(assert (= (and b!264373 res!129027) b!264376))

(declare-fun m!281341 () Bool)

(assert (=> bm!25296 m!281341))

(declare-fun m!281343 () Bool)

(assert (=> b!264379 m!281343))

(declare-fun m!281345 () Bool)

(assert (=> b!264376 m!281345))

(declare-fun m!281347 () Bool)

(assert (=> b!264373 m!281347))

(declare-fun m!281349 () Bool)

(assert (=> d!63865 m!281349))

(declare-fun m!281351 () Bool)

(assert (=> d!63865 m!281351))

(assert (=> d!63173 d!63865))

(declare-fun d!63867 () Bool)

(assert (=> d!63867 (= (apply!262 (+!705 lt!133215 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))) lt!133220) (apply!262 lt!133215 lt!133220))))

(assert (=> d!63867 true))

(declare-fun _$34!1134 () Unit!8187)

(assert (=> d!63867 (= (choose!1303 lt!133215 lt!133216 (zeroValue!4684 thiss!1504) lt!133220) _$34!1134)))

(declare-fun bs!9332 () Bool)

(assert (= bs!9332 d!63867))

(assert (=> bs!9332 m!279201))

(assert (=> bs!9332 m!279201))

(assert (=> bs!9332 m!279205))

(assert (=> bs!9332 m!279221))

(assert (=> d!63207 d!63867))

(declare-fun d!63869 () Bool)

(declare-fun e!171297 () Bool)

(assert (=> d!63869 e!171297))

(declare-fun res!129029 () Bool)

(assert (=> d!63869 (=> res!129029 e!171297)))

(declare-fun lt!133837 () Bool)

(assert (=> d!63869 (= res!129029 (not lt!133837))))

(declare-fun lt!133836 () Bool)

(assert (=> d!63869 (= lt!133837 lt!133836)))

(declare-fun lt!133838 () Unit!8187)

(declare-fun e!171298 () Unit!8187)

(assert (=> d!63869 (= lt!133838 e!171298)))

(declare-fun c!45229 () Bool)

(assert (=> d!63869 (= c!45229 lt!133836)))

(assert (=> d!63869 (= lt!133836 (containsKey!311 (toList!1966 lt!133215) lt!133220))))

(assert (=> d!63869 (= (contains!1911 lt!133215 lt!133220) lt!133837)))

(declare-fun b!264383 () Bool)

(declare-fun lt!133839 () Unit!8187)

(assert (=> b!264383 (= e!171298 lt!133839)))

(assert (=> b!264383 (= lt!133839 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133215) lt!133220))))

(assert (=> b!264383 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133215) lt!133220))))

(declare-fun b!264384 () Bool)

(declare-fun Unit!8242 () Unit!8187)

(assert (=> b!264384 (= e!171298 Unit!8242)))

(declare-fun b!264385 () Bool)

(assert (=> b!264385 (= e!171297 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133215) lt!133220)))))

(assert (= (and d!63869 c!45229) b!264383))

(assert (= (and d!63869 (not c!45229)) b!264384))

(assert (= (and d!63869 (not res!129029)) b!264385))

(declare-fun m!281353 () Bool)

(assert (=> d!63869 m!281353))

(declare-fun m!281355 () Bool)

(assert (=> b!264383 m!281355))

(assert (=> b!264383 m!279837))

(assert (=> b!264383 m!279837))

(declare-fun m!281357 () Bool)

(assert (=> b!264383 m!281357))

(assert (=> b!264385 m!279837))

(assert (=> b!264385 m!279837))

(assert (=> b!264385 m!281357))

(assert (=> d!63207 d!63869))

(assert (=> d!63207 d!63217))

(assert (=> d!63207 d!63219))

(assert (=> d!63207 d!63223))

(assert (=> b!263616 d!63705))

(assert (=> b!263616 d!63161))

(declare-fun d!63871 () Bool)

(declare-fun lt!133840 () Bool)

(assert (=> d!63871 (= lt!133840 (select (content!176 Nil!3870) (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun e!171299 () Bool)

(assert (=> d!63871 (= lt!133840 e!171299)))

(declare-fun res!129031 () Bool)

(assert (=> d!63871 (=> (not res!129031) (not e!171299))))

(assert (=> d!63871 (= res!129031 ((_ is Cons!3869) Nil!3870))))

(assert (=> d!63871 (= (contains!1914 Nil!3870 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)) lt!133840)))

(declare-fun b!264386 () Bool)

(declare-fun e!171300 () Bool)

(assert (=> b!264386 (= e!171299 e!171300)))

(declare-fun res!129030 () Bool)

(assert (=> b!264386 (=> res!129030 e!171300)))

(assert (=> b!264386 (= res!129030 (= (h!4535 Nil!3870) (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!264387 () Bool)

(assert (=> b!264387 (= e!171300 (contains!1914 (t!8958 Nil!3870) (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (= (and d!63871 res!129031) b!264386))

(assert (= (and b!264386 (not res!129030)) b!264387))

(assert (=> d!63871 m!279447))

(assert (=> d!63871 m!279625))

(declare-fun m!281359 () Bool)

(assert (=> d!63871 m!281359))

(assert (=> b!264387 m!279625))

(declare-fun m!281361 () Bool)

(assert (=> b!264387 m!281361))

(assert (=> b!263535 d!63871))

(declare-fun d!63873 () Bool)

(declare-fun e!171301 () Bool)

(assert (=> d!63873 e!171301))

(declare-fun res!129032 () Bool)

(assert (=> d!63873 (=> res!129032 e!171301)))

(declare-fun lt!133842 () Bool)

(assert (=> d!63873 (= res!129032 (not lt!133842))))

(declare-fun lt!133841 () Bool)

(assert (=> d!63873 (= lt!133842 lt!133841)))

(declare-fun lt!133843 () Unit!8187)

(declare-fun e!171302 () Unit!8187)

(assert (=> d!63873 (= lt!133843 e!171302)))

(declare-fun c!45230 () Bool)

(assert (=> d!63873 (= c!45230 lt!133841)))

(assert (=> d!63873 (= lt!133841 (containsKey!311 (toList!1966 lt!133374) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!63873 (= (contains!1911 lt!133374 #b1000000000000000000000000000000000000000000000000000000000000000) lt!133842)))

(declare-fun b!264388 () Bool)

(declare-fun lt!133844 () Unit!8187)

(assert (=> b!264388 (= e!171302 lt!133844)))

(assert (=> b!264388 (= lt!133844 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133374) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!264388 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133374) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!264389 () Bool)

(declare-fun Unit!8243 () Unit!8187)

(assert (=> b!264389 (= e!171302 Unit!8243)))

(declare-fun b!264390 () Bool)

(assert (=> b!264390 (= e!171301 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133374) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63873 c!45230) b!264388))

(assert (= (and d!63873 (not c!45230)) b!264389))

(assert (= (and d!63873 (not res!129032)) b!264390))

(declare-fun m!281363 () Bool)

(assert (=> d!63873 m!281363))

(declare-fun m!281365 () Bool)

(assert (=> b!264388 m!281365))

(declare-fun m!281367 () Bool)

(assert (=> b!264388 m!281367))

(assert (=> b!264388 m!281367))

(declare-fun m!281369 () Bool)

(assert (=> b!264388 m!281369))

(assert (=> b!264390 m!281367))

(assert (=> b!264390 m!281367))

(assert (=> b!264390 m!281369))

(assert (=> b!263385 d!63873))

(declare-fun d!63875 () Bool)

(declare-fun e!171303 () Bool)

(assert (=> d!63875 e!171303))

(declare-fun res!129033 () Bool)

(assert (=> d!63875 (=> res!129033 e!171303)))

(declare-fun lt!133846 () Bool)

(assert (=> d!63875 (= res!129033 (not lt!133846))))

(declare-fun lt!133845 () Bool)

(assert (=> d!63875 (= lt!133846 lt!133845)))

(declare-fun lt!133847 () Unit!8187)

(declare-fun e!171304 () Unit!8187)

(assert (=> d!63875 (= lt!133847 e!171304)))

(declare-fun c!45231 () Bool)

(assert (=> d!63875 (= c!45231 lt!133845)))

(assert (=> d!63875 (= lt!133845 (containsKey!311 (toList!1966 lt!133408) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!63875 (= (contains!1911 lt!133408 #b0000000000000000000000000000000000000000000000000000000000000000) lt!133846)))

(declare-fun b!264391 () Bool)

(declare-fun lt!133848 () Unit!8187)

(assert (=> b!264391 (= e!171304 lt!133848)))

(assert (=> b!264391 (= lt!133848 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133408) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!264391 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133408) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!264392 () Bool)

(declare-fun Unit!8244 () Unit!8187)

(assert (=> b!264392 (= e!171304 Unit!8244)))

(declare-fun b!264393 () Bool)

(assert (=> b!264393 (= e!171303 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133408) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!63875 c!45231) b!264391))

(assert (= (and d!63875 (not c!45231)) b!264392))

(assert (= (and d!63875 (not res!129033)) b!264393))

(declare-fun m!281371 () Bool)

(assert (=> d!63875 m!281371))

(declare-fun m!281373 () Bool)

(assert (=> b!264391 m!281373))

(assert (=> b!264391 m!280599))

(assert (=> b!264391 m!280599))

(declare-fun m!281375 () Bool)

(assert (=> b!264391 m!281375))

(assert (=> b!264393 m!280599))

(assert (=> b!264393 m!280599))

(assert (=> b!264393 m!281375))

(assert (=> bm!25215 d!63875))

(declare-fun d!63877 () Bool)

(assert (=> d!63877 (= (get!3095 (getValueByKey!319 (toList!1966 lt!133278) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!5504 (getValueByKey!319 (toList!1966 lt!133278) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63201 d!63877))

(assert (=> d!63201 d!63789))

(declare-fun d!63879 () Bool)

(assert (=> d!63879 (= (get!3095 (getValueByKey!319 (toList!1966 (+!705 lt!133215 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))) lt!133220)) (v!5504 (getValueByKey!319 (toList!1966 (+!705 lt!133215 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))) lt!133220)))))

(assert (=> d!63219 d!63879))

(declare-fun e!171306 () Option!325)

(declare-fun b!264396 () Bool)

(assert (=> b!264396 (= e!171306 (getValueByKey!319 (t!8957 (toList!1966 (+!705 lt!133215 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))) lt!133220))))

(declare-fun e!171305 () Option!325)

(declare-fun b!264394 () Bool)

(assert (=> b!264394 (= e!171305 (Some!324 (_2!2497 (h!4534 (toList!1966 (+!705 lt!133215 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))))))))

(declare-fun c!45232 () Bool)

(declare-fun d!63881 () Bool)

(assert (=> d!63881 (= c!45232 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133215 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))) (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133215 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))) lt!133220)))))

(assert (=> d!63881 (= (getValueByKey!319 (toList!1966 (+!705 lt!133215 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))) lt!133220) e!171305)))

(declare-fun b!264397 () Bool)

(assert (=> b!264397 (= e!171306 None!323)))

(declare-fun b!264395 () Bool)

(assert (=> b!264395 (= e!171305 e!171306)))

(declare-fun c!45233 () Bool)

(assert (=> b!264395 (= c!45233 (and ((_ is Cons!3868) (toList!1966 (+!705 lt!133215 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504))))) (not (= (_1!2497 (h!4534 (toList!1966 (+!705 lt!133215 (tuple2!4975 lt!133216 (zeroValue!4684 thiss!1504)))))) lt!133220))))))

(assert (= (and d!63881 c!45232) b!264394))

(assert (= (and d!63881 (not c!45232)) b!264395))

(assert (= (and b!264395 c!45233) b!264396))

(assert (= (and b!264395 (not c!45233)) b!264397))

(declare-fun m!281377 () Bool)

(assert (=> b!264396 m!281377))

(assert (=> d!63219 d!63881))

(declare-fun d!63883 () Bool)

(declare-fun c!45234 () Bool)

(assert (=> d!63883 (= c!45234 ((_ is Nil!3869) (toList!1966 lt!133149)))))

(declare-fun e!171307 () (InoxSet tuple2!4974))

(assert (=> d!63883 (= (content!175 (toList!1966 lt!133149)) e!171307)))

(declare-fun b!264398 () Bool)

(assert (=> b!264398 (= e!171307 ((as const (Array tuple2!4974 Bool)) false))))

(declare-fun b!264399 () Bool)

(assert (=> b!264399 (= e!171307 ((_ map or) (store ((as const (Array tuple2!4974 Bool)) false) (h!4534 (toList!1966 lt!133149)) true) (content!175 (t!8957 (toList!1966 lt!133149)))))))

(assert (= (and d!63883 c!45234) b!264398))

(assert (= (and d!63883 (not c!45234)) b!264399))

(declare-fun m!281379 () Bool)

(assert (=> b!264399 m!281379))

(declare-fun m!281381 () Bool)

(assert (=> b!264399 m!281381))

(assert (=> d!63073 d!63883))

(declare-fun d!63885 () Bool)

(declare-fun e!171308 () Bool)

(assert (=> d!63885 e!171308))

(declare-fun res!129034 () Bool)

(assert (=> d!63885 (=> res!129034 e!171308)))

(declare-fun lt!133850 () Bool)

(assert (=> d!63885 (= res!129034 (not lt!133850))))

(declare-fun lt!133849 () Bool)

(assert (=> d!63885 (= lt!133850 lt!133849)))

(declare-fun lt!133851 () Unit!8187)

(declare-fun e!171309 () Unit!8187)

(assert (=> d!63885 (= lt!133851 e!171309)))

(declare-fun c!45235 () Bool)

(assert (=> d!63885 (= c!45235 lt!133849)))

(assert (=> d!63885 (= lt!133849 (containsKey!311 (toList!1966 (+!705 lt!133379 (tuple2!4975 lt!133378 lt!133375))) lt!133377))))

(assert (=> d!63885 (= (contains!1911 (+!705 lt!133379 (tuple2!4975 lt!133378 lt!133375)) lt!133377) lt!133850)))

(declare-fun b!264400 () Bool)

(declare-fun lt!133852 () Unit!8187)

(assert (=> b!264400 (= e!171309 lt!133852)))

(assert (=> b!264400 (= lt!133852 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 (+!705 lt!133379 (tuple2!4975 lt!133378 lt!133375))) lt!133377))))

(assert (=> b!264400 (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133379 (tuple2!4975 lt!133378 lt!133375))) lt!133377))))

(declare-fun b!264401 () Bool)

(declare-fun Unit!8245 () Unit!8187)

(assert (=> b!264401 (= e!171309 Unit!8245)))

(declare-fun b!264402 () Bool)

(assert (=> b!264402 (= e!171308 (isDefined!261 (getValueByKey!319 (toList!1966 (+!705 lt!133379 (tuple2!4975 lt!133378 lt!133375))) lt!133377)))))

(assert (= (and d!63885 c!45235) b!264400))

(assert (= (and d!63885 (not c!45235)) b!264401))

(assert (= (and d!63885 (not res!129034)) b!264402))

(declare-fun m!281383 () Bool)

(assert (=> d!63885 m!281383))

(declare-fun m!281385 () Bool)

(assert (=> b!264400 m!281385))

(declare-fun m!281387 () Bool)

(assert (=> b!264400 m!281387))

(assert (=> b!264400 m!281387))

(declare-fun m!281389 () Bool)

(assert (=> b!264400 m!281389))

(assert (=> b!264402 m!281387))

(assert (=> b!264402 m!281387))

(assert (=> b!264402 m!281389))

(assert (=> b!263392 d!63885))

(declare-fun d!63887 () Bool)

(assert (=> d!63887 (not (contains!1911 (+!705 lt!133379 (tuple2!4975 lt!133378 lt!133375)) lt!133377))))

(declare-fun lt!133853 () Unit!8187)

(assert (=> d!63887 (= lt!133853 (choose!1305 lt!133379 lt!133378 lt!133375 lt!133377))))

(declare-fun e!171310 () Bool)

(assert (=> d!63887 e!171310))

(declare-fun res!129035 () Bool)

(assert (=> d!63887 (=> (not res!129035) (not e!171310))))

(assert (=> d!63887 (= res!129035 (not (contains!1911 lt!133379 lt!133377)))))

(assert (=> d!63887 (= (addStillNotContains!131 lt!133379 lt!133378 lt!133375 lt!133377) lt!133853)))

(declare-fun b!264403 () Bool)

(assert (=> b!264403 (= e!171310 (not (= lt!133378 lt!133377)))))

(assert (= (and d!63887 res!129035) b!264403))

(assert (=> d!63887 m!279555))

(assert (=> d!63887 m!279555))

(assert (=> d!63887 m!279557))

(declare-fun m!281391 () Bool)

(assert (=> d!63887 m!281391))

(declare-fun m!281393 () Bool)

(assert (=> d!63887 m!281393))

(assert (=> b!263392 d!63887))

(assert (=> b!263392 d!63109))

(declare-fun d!63889 () Bool)

(declare-fun e!171311 () Bool)

(assert (=> d!63889 e!171311))

(declare-fun res!129036 () Bool)

(assert (=> d!63889 (=> (not res!129036) (not e!171311))))

(declare-fun lt!133856 () ListLongMap!3901)

(assert (=> d!63889 (= res!129036 (contains!1911 lt!133856 (_1!2497 (tuple2!4975 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!133857 () List!3872)

(assert (=> d!63889 (= lt!133856 (ListLongMap!3902 lt!133857))))

(declare-fun lt!133855 () Unit!8187)

(declare-fun lt!133854 () Unit!8187)

(assert (=> d!63889 (= lt!133855 lt!133854)))

(assert (=> d!63889 (= (getValueByKey!319 lt!133857 (_1!2497 (tuple2!4975 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!324 (_2!2497 (tuple2!4975 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!63889 (= lt!133854 (lemmaContainsTupThenGetReturnValue!177 lt!133857 (_1!2497 (tuple2!4975 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!2497 (tuple2!4975 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!63889 (= lt!133857 (insertStrictlySorted!179 (toList!1966 call!25210) (_1!2497 (tuple2!4975 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!2497 (tuple2!4975 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!63889 (= (+!705 call!25210 (tuple2!4975 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!133856)))

(declare-fun b!264404 () Bool)

(declare-fun res!129037 () Bool)

(assert (=> b!264404 (=> (not res!129037) (not e!171311))))

(assert (=> b!264404 (= res!129037 (= (getValueByKey!319 (toList!1966 lt!133856) (_1!2497 (tuple2!4975 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!324 (_2!2497 (tuple2!4975 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!264405 () Bool)

(assert (=> b!264405 (= e!171311 (contains!1913 (toList!1966 lt!133856) (tuple2!4975 (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000) (get!3094 (select (arr!5997 (_values!4826 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!63889 res!129036) b!264404))

(assert (= (and b!264404 res!129037) b!264405))

(declare-fun m!281395 () Bool)

(assert (=> d!63889 m!281395))

(declare-fun m!281397 () Bool)

(assert (=> d!63889 m!281397))

(declare-fun m!281399 () Bool)

(assert (=> d!63889 m!281399))

(declare-fun m!281401 () Bool)

(assert (=> d!63889 m!281401))

(declare-fun m!281403 () Bool)

(assert (=> b!264404 m!281403))

(declare-fun m!281405 () Bool)

(assert (=> b!264405 m!281405))

(assert (=> b!263392 d!63889))

(declare-fun d!63891 () Bool)

(declare-fun e!171312 () Bool)

(assert (=> d!63891 e!171312))

(declare-fun res!129038 () Bool)

(assert (=> d!63891 (=> (not res!129038) (not e!171312))))

(declare-fun lt!133860 () ListLongMap!3901)

(assert (=> d!63891 (= res!129038 (contains!1911 lt!133860 (_1!2497 (tuple2!4975 lt!133378 lt!133375))))))

(declare-fun lt!133861 () List!3872)

(assert (=> d!63891 (= lt!133860 (ListLongMap!3902 lt!133861))))

(declare-fun lt!133859 () Unit!8187)

(declare-fun lt!133858 () Unit!8187)

(assert (=> d!63891 (= lt!133859 lt!133858)))

(assert (=> d!63891 (= (getValueByKey!319 lt!133861 (_1!2497 (tuple2!4975 lt!133378 lt!133375))) (Some!324 (_2!2497 (tuple2!4975 lt!133378 lt!133375))))))

(assert (=> d!63891 (= lt!133858 (lemmaContainsTupThenGetReturnValue!177 lt!133861 (_1!2497 (tuple2!4975 lt!133378 lt!133375)) (_2!2497 (tuple2!4975 lt!133378 lt!133375))))))

(assert (=> d!63891 (= lt!133861 (insertStrictlySorted!179 (toList!1966 lt!133379) (_1!2497 (tuple2!4975 lt!133378 lt!133375)) (_2!2497 (tuple2!4975 lt!133378 lt!133375))))))

(assert (=> d!63891 (= (+!705 lt!133379 (tuple2!4975 lt!133378 lt!133375)) lt!133860)))

(declare-fun b!264406 () Bool)

(declare-fun res!129039 () Bool)

(assert (=> b!264406 (=> (not res!129039) (not e!171312))))

(assert (=> b!264406 (= res!129039 (= (getValueByKey!319 (toList!1966 lt!133860) (_1!2497 (tuple2!4975 lt!133378 lt!133375))) (Some!324 (_2!2497 (tuple2!4975 lt!133378 lt!133375)))))))

(declare-fun b!264407 () Bool)

(assert (=> b!264407 (= e!171312 (contains!1913 (toList!1966 lt!133860) (tuple2!4975 lt!133378 lt!133375)))))

(assert (= (and d!63891 res!129038) b!264406))

(assert (= (and b!264406 res!129039) b!264407))

(declare-fun m!281407 () Bool)

(assert (=> d!63891 m!281407))

(declare-fun m!281409 () Bool)

(assert (=> d!63891 m!281409))

(declare-fun m!281411 () Bool)

(assert (=> d!63891 m!281411))

(declare-fun m!281413 () Bool)

(assert (=> d!63891 m!281413))

(declare-fun m!281415 () Bool)

(assert (=> b!264406 m!281415))

(declare-fun m!281417 () Bool)

(assert (=> b!264407 m!281417))

(assert (=> b!263392 d!63891))

(declare-fun d!63893 () Bool)

(declare-fun lt!133862 () Bool)

(assert (=> d!63893 (= lt!133862 (select (content!175 (toList!1966 lt!133494)) (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))))

(declare-fun e!171314 () Bool)

(assert (=> d!63893 (= lt!133862 e!171314)))

(declare-fun res!129041 () Bool)

(assert (=> d!63893 (=> (not res!129041) (not e!171314))))

(assert (=> d!63893 (= res!129041 ((_ is Cons!3868) (toList!1966 lt!133494)))))

(assert (=> d!63893 (= (contains!1913 (toList!1966 lt!133494) (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))) lt!133862)))

(declare-fun b!264408 () Bool)

(declare-fun e!171313 () Bool)

(assert (=> b!264408 (= e!171314 e!171313)))

(declare-fun res!129040 () Bool)

(assert (=> b!264408 (=> res!129040 e!171313)))

(assert (=> b!264408 (= res!129040 (= (h!4534 (toList!1966 lt!133494)) (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))))

(declare-fun b!264409 () Bool)

(assert (=> b!264409 (= e!171313 (contains!1913 (t!8957 (toList!1966 lt!133494)) (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))))

(assert (= (and d!63893 res!129041) b!264408))

(assert (= (and b!264408 (not res!129040)) b!264409))

(declare-fun m!281419 () Bool)

(assert (=> d!63893 m!281419))

(declare-fun m!281421 () Bool)

(assert (=> d!63893 m!281421))

(declare-fun m!281423 () Bool)

(assert (=> b!264409 m!281423))

(assert (=> b!263607 d!63893))

(assert (=> d!63263 d!63261))

(declare-fun d!63895 () Bool)

(declare-fun e!171315 () Bool)

(assert (=> d!63895 e!171315))

(declare-fun res!129042 () Bool)

(assert (=> d!63895 (=> res!129042 e!171315)))

(declare-fun lt!133864 () Bool)

(assert (=> d!63895 (= res!129042 (not lt!133864))))

(declare-fun lt!133863 () Bool)

(assert (=> d!63895 (= lt!133864 lt!133863)))

(declare-fun lt!133865 () Unit!8187)

(declare-fun e!171316 () Unit!8187)

(assert (=> d!63895 (= lt!133865 e!171316)))

(declare-fun c!45236 () Bool)

(assert (=> d!63895 (= c!45236 lt!133863)))

(assert (=> d!63895 (= lt!133863 (containsKey!311 (toList!1966 lt!133270) lt!133275))))

(assert (=> d!63895 (= (contains!1911 lt!133270 lt!133275) lt!133864)))

(declare-fun b!264410 () Bool)

(declare-fun lt!133866 () Unit!8187)

(assert (=> b!264410 (= e!171316 lt!133866)))

(assert (=> b!264410 (= lt!133866 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133270) lt!133275))))

(assert (=> b!264410 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133270) lt!133275))))

(declare-fun b!264411 () Bool)

(declare-fun Unit!8246 () Unit!8187)

(assert (=> b!264411 (= e!171316 Unit!8246)))

(declare-fun b!264412 () Bool)

(assert (=> b!264412 (= e!171315 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133270) lt!133275)))))

(assert (= (and d!63895 c!45236) b!264410))

(assert (= (and d!63895 (not c!45236)) b!264411))

(assert (= (and d!63895 (not res!129042)) b!264412))

(declare-fun m!281425 () Bool)

(assert (=> d!63895 m!281425))

(declare-fun m!281427 () Bool)

(assert (=> b!264410 m!281427))

(assert (=> b!264410 m!279959))

(assert (=> b!264410 m!279959))

(declare-fun m!281429 () Bool)

(assert (=> b!264410 m!281429))

(assert (=> b!264412 m!279959))

(assert (=> b!264412 m!279959))

(assert (=> b!264412 m!281429))

(assert (=> d!63263 d!63895))

(assert (=> d!63263 d!63255))

(declare-fun d!63897 () Bool)

(assert (=> d!63897 (= (apply!262 (+!705 lt!133270 (tuple2!4975 lt!133271 (zeroValue!4684 thiss!1504))) lt!133275) (apply!262 lt!133270 lt!133275))))

(assert (=> d!63897 true))

(declare-fun _$34!1135 () Unit!8187)

(assert (=> d!63897 (= (choose!1303 lt!133270 lt!133271 (zeroValue!4684 thiss!1504) lt!133275) _$34!1135)))

(declare-fun bs!9333 () Bool)

(assert (= bs!9333 d!63897))

(assert (=> bs!9333 m!279329))

(assert (=> bs!9333 m!279329))

(assert (=> bs!9333 m!279333))

(assert (=> bs!9333 m!279349))

(assert (=> d!63263 d!63897))

(assert (=> d!63263 d!63275))

(assert (=> b!263404 d!63393))

(declare-fun d!63899 () Bool)

(declare-fun res!129043 () Bool)

(declare-fun e!171317 () Bool)

(assert (=> d!63899 (=> res!129043 e!171317)))

(assert (=> d!63899 (= res!129043 (and ((_ is Cons!3868) lt!133150) (= (_1!2497 (h!4534 lt!133150)) (_1!2497 lt!133042))))))

(assert (=> d!63899 (= (containsKey!311 lt!133150 (_1!2497 lt!133042)) e!171317)))

(declare-fun b!264413 () Bool)

(declare-fun e!171318 () Bool)

(assert (=> b!264413 (= e!171317 e!171318)))

(declare-fun res!129044 () Bool)

(assert (=> b!264413 (=> (not res!129044) (not e!171318))))

(assert (=> b!264413 (= res!129044 (and (or (not ((_ is Cons!3868) lt!133150)) (bvsle (_1!2497 (h!4534 lt!133150)) (_1!2497 lt!133042))) ((_ is Cons!3868) lt!133150) (bvslt (_1!2497 (h!4534 lt!133150)) (_1!2497 lt!133042))))))

(declare-fun b!264414 () Bool)

(assert (=> b!264414 (= e!171318 (containsKey!311 (t!8957 lt!133150) (_1!2497 lt!133042)))))

(assert (= (and d!63899 (not res!129043)) b!264413))

(assert (= (and b!264413 res!129044) b!264414))

(declare-fun m!281431 () Bool)

(assert (=> b!264414 m!281431))

(assert (=> b!263621 d!63899))

(declare-fun d!63901 () Bool)

(declare-fun e!171319 () Bool)

(assert (=> d!63901 e!171319))

(declare-fun res!129045 () Bool)

(assert (=> d!63901 (=> res!129045 e!171319)))

(declare-fun lt!133868 () Bool)

(assert (=> d!63901 (= res!129045 (not lt!133868))))

(declare-fun lt!133867 () Bool)

(assert (=> d!63901 (= lt!133868 lt!133867)))

(declare-fun lt!133869 () Unit!8187)

(declare-fun e!171320 () Unit!8187)

(assert (=> d!63901 (= lt!133869 e!171320)))

(declare-fun c!45237 () Bool)

(assert (=> d!63901 (= c!45237 lt!133867)))

(assert (=> d!63901 (= lt!133867 (containsKey!311 (toList!1966 lt!133391) (_1!2497 (tuple2!4975 key!932 v!346))))))

(assert (=> d!63901 (= (contains!1911 lt!133391 (_1!2497 (tuple2!4975 key!932 v!346))) lt!133868)))

(declare-fun b!264415 () Bool)

(declare-fun lt!133870 () Unit!8187)

(assert (=> b!264415 (= e!171320 lt!133870)))

(assert (=> b!264415 (= lt!133870 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133391) (_1!2497 (tuple2!4975 key!932 v!346))))))

(assert (=> b!264415 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133391) (_1!2497 (tuple2!4975 key!932 v!346))))))

(declare-fun b!264416 () Bool)

(declare-fun Unit!8247 () Unit!8187)

(assert (=> b!264416 (= e!171320 Unit!8247)))

(declare-fun b!264417 () Bool)

(assert (=> b!264417 (= e!171319 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133391) (_1!2497 (tuple2!4975 key!932 v!346)))))))

(assert (= (and d!63901 c!45237) b!264415))

(assert (= (and d!63901 (not c!45237)) b!264416))

(assert (= (and d!63901 (not res!129045)) b!264417))

(declare-fun m!281433 () Bool)

(assert (=> d!63901 m!281433))

(declare-fun m!281435 () Bool)

(assert (=> b!264415 m!281435))

(assert (=> b!264415 m!279619))

(assert (=> b!264415 m!279619))

(declare-fun m!281437 () Bool)

(assert (=> b!264415 m!281437))

(assert (=> b!264417 m!279619))

(assert (=> b!264417 m!279619))

(assert (=> b!264417 m!281437))

(assert (=> d!63151 d!63901))

(declare-fun e!171322 () Option!325)

(declare-fun b!264420 () Bool)

(assert (=> b!264420 (= e!171322 (getValueByKey!319 (t!8957 lt!133392) (_1!2497 (tuple2!4975 key!932 v!346))))))

(declare-fun b!264418 () Bool)

(declare-fun e!171321 () Option!325)

(assert (=> b!264418 (= e!171321 (Some!324 (_2!2497 (h!4534 lt!133392))))))

(declare-fun c!45238 () Bool)

(declare-fun d!63903 () Bool)

(assert (=> d!63903 (= c!45238 (and ((_ is Cons!3868) lt!133392) (= (_1!2497 (h!4534 lt!133392)) (_1!2497 (tuple2!4975 key!932 v!346)))))))

(assert (=> d!63903 (= (getValueByKey!319 lt!133392 (_1!2497 (tuple2!4975 key!932 v!346))) e!171321)))

(declare-fun b!264421 () Bool)

(assert (=> b!264421 (= e!171322 None!323)))

(declare-fun b!264419 () Bool)

(assert (=> b!264419 (= e!171321 e!171322)))

(declare-fun c!45239 () Bool)

(assert (=> b!264419 (= c!45239 (and ((_ is Cons!3868) lt!133392) (not (= (_1!2497 (h!4534 lt!133392)) (_1!2497 (tuple2!4975 key!932 v!346))))))))

(assert (= (and d!63903 c!45238) b!264418))

(assert (= (and d!63903 (not c!45238)) b!264419))

(assert (= (and b!264419 c!45239) b!264420))

(assert (= (and b!264419 (not c!45239)) b!264421))

(declare-fun m!281439 () Bool)

(assert (=> b!264420 m!281439))

(assert (=> d!63151 d!63903))

(declare-fun d!63905 () Bool)

(assert (=> d!63905 (= (getValueByKey!319 lt!133392 (_1!2497 (tuple2!4975 key!932 v!346))) (Some!324 (_2!2497 (tuple2!4975 key!932 v!346))))))

(declare-fun lt!133871 () Unit!8187)

(assert (=> d!63905 (= lt!133871 (choose!1302 lt!133392 (_1!2497 (tuple2!4975 key!932 v!346)) (_2!2497 (tuple2!4975 key!932 v!346))))))

(declare-fun e!171323 () Bool)

(assert (=> d!63905 e!171323))

(declare-fun res!129046 () Bool)

(assert (=> d!63905 (=> (not res!129046) (not e!171323))))

(assert (=> d!63905 (= res!129046 (isStrictlySorted!372 lt!133392))))

(assert (=> d!63905 (= (lemmaContainsTupThenGetReturnValue!177 lt!133392 (_1!2497 (tuple2!4975 key!932 v!346)) (_2!2497 (tuple2!4975 key!932 v!346))) lt!133871)))

(declare-fun b!264422 () Bool)

(declare-fun res!129047 () Bool)

(assert (=> b!264422 (=> (not res!129047) (not e!171323))))

(assert (=> b!264422 (= res!129047 (containsKey!311 lt!133392 (_1!2497 (tuple2!4975 key!932 v!346))))))

(declare-fun b!264423 () Bool)

(assert (=> b!264423 (= e!171323 (contains!1913 lt!133392 (tuple2!4975 (_1!2497 (tuple2!4975 key!932 v!346)) (_2!2497 (tuple2!4975 key!932 v!346)))))))

(assert (= (and d!63905 res!129046) b!264422))

(assert (= (and b!264422 res!129047) b!264423))

(assert (=> d!63905 m!279613))

(declare-fun m!281441 () Bool)

(assert (=> d!63905 m!281441))

(declare-fun m!281443 () Bool)

(assert (=> d!63905 m!281443))

(declare-fun m!281445 () Bool)

(assert (=> b!264422 m!281445))

(declare-fun m!281447 () Bool)

(assert (=> b!264423 m!281447))

(assert (=> d!63151 d!63905))

(declare-fun bm!25297 () Bool)

(declare-fun call!25302 () List!3872)

(declare-fun call!25301 () List!3872)

(assert (=> bm!25297 (= call!25302 call!25301)))

(declare-fun bm!25298 () Bool)

(declare-fun call!25300 () List!3872)

(assert (=> bm!25298 (= call!25300 call!25302)))

(declare-fun b!264424 () Bool)

(declare-fun res!129048 () Bool)

(declare-fun e!171328 () Bool)

(assert (=> b!264424 (=> (not res!129048) (not e!171328))))

(declare-fun lt!133872 () List!3872)

(assert (=> b!264424 (= res!129048 (containsKey!311 lt!133872 (_1!2497 (tuple2!4975 key!932 v!346))))))

(declare-fun c!45240 () Bool)

(declare-fun b!264425 () Bool)

(assert (=> b!264425 (= c!45240 (and ((_ is Cons!3868) (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (bvsgt (_1!2497 (h!4534 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) (_1!2497 (tuple2!4975 key!932 v!346)))))))

(declare-fun e!171327 () List!3872)

(declare-fun e!171324 () List!3872)

(assert (=> b!264425 (= e!171327 e!171324)))

(declare-fun b!264426 () Bool)

(declare-fun e!171326 () List!3872)

(assert (=> b!264426 (= e!171326 e!171327)))

(declare-fun c!45243 () Bool)

(assert (=> b!264426 (= c!45243 (and ((_ is Cons!3868) (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (= (_1!2497 (h!4534 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) (_1!2497 (tuple2!4975 key!932 v!346)))))))

(declare-fun b!264427 () Bool)

(assert (=> b!264427 (= e!171328 (contains!1913 lt!133872 (tuple2!4975 (_1!2497 (tuple2!4975 key!932 v!346)) (_2!2497 (tuple2!4975 key!932 v!346)))))))

(declare-fun b!264428 () Bool)

(assert (=> b!264428 (= e!171326 call!25301)))

(declare-fun b!264429 () Bool)

(assert (=> b!264429 (= e!171327 call!25302)))

(declare-fun e!171325 () List!3872)

(declare-fun b!264430 () Bool)

(assert (=> b!264430 (= e!171325 (insertStrictlySorted!179 (t!8957 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (_1!2497 (tuple2!4975 key!932 v!346)) (_2!2497 (tuple2!4975 key!932 v!346))))))

(declare-fun b!264431 () Bool)

(assert (=> b!264431 (= e!171324 call!25300)))

(declare-fun c!45242 () Bool)

(declare-fun bm!25299 () Bool)

(assert (=> bm!25299 (= call!25301 ($colon$colon!107 e!171325 (ite c!45242 (h!4534 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (tuple2!4975 (_1!2497 (tuple2!4975 key!932 v!346)) (_2!2497 (tuple2!4975 key!932 v!346))))))))

(declare-fun c!45241 () Bool)

(assert (=> bm!25299 (= c!45241 c!45242)))

(declare-fun d!63907 () Bool)

(assert (=> d!63907 e!171328))

(declare-fun res!129049 () Bool)

(assert (=> d!63907 (=> (not res!129049) (not e!171328))))

(assert (=> d!63907 (= res!129049 (isStrictlySorted!372 lt!133872))))

(assert (=> d!63907 (= lt!133872 e!171326)))

(assert (=> d!63907 (= c!45242 (and ((_ is Cons!3868) (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (bvslt (_1!2497 (h!4534 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) (_1!2497 (tuple2!4975 key!932 v!346)))))))

(assert (=> d!63907 (isStrictlySorted!372 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))))

(assert (=> d!63907 (= (insertStrictlySorted!179 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) (_1!2497 (tuple2!4975 key!932 v!346)) (_2!2497 (tuple2!4975 key!932 v!346))) lt!133872)))

(declare-fun b!264432 () Bool)

(assert (=> b!264432 (= e!171324 call!25300)))

(declare-fun b!264433 () Bool)

(assert (=> b!264433 (= e!171325 (ite c!45243 (t!8957 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (ite c!45240 (Cons!3868 (h!4534 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (t!8957 (toList!1966 (getCurrentListMap!1489 (_keys!7035 thiss!1504) (_values!4826 thiss!1504) (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) Nil!3869)))))

(assert (= (and d!63907 c!45242) b!264428))

(assert (= (and d!63907 (not c!45242)) b!264426))

(assert (= (and b!264426 c!45243) b!264429))

(assert (= (and b!264426 (not c!45243)) b!264425))

(assert (= (and b!264425 c!45240) b!264432))

(assert (= (and b!264425 (not c!45240)) b!264431))

(assert (= (or b!264432 b!264431) bm!25298))

(assert (= (or b!264429 bm!25298) bm!25297))

(assert (= (or b!264428 bm!25297) bm!25299))

(assert (= (and bm!25299 c!45241) b!264430))

(assert (= (and bm!25299 (not c!45241)) b!264433))

(assert (= (and d!63907 res!129049) b!264424))

(assert (= (and b!264424 res!129048) b!264427))

(declare-fun m!281449 () Bool)

(assert (=> bm!25299 m!281449))

(declare-fun m!281451 () Bool)

(assert (=> b!264430 m!281451))

(declare-fun m!281453 () Bool)

(assert (=> b!264427 m!281453))

(declare-fun m!281455 () Bool)

(assert (=> b!264424 m!281455))

(declare-fun m!281457 () Bool)

(assert (=> d!63907 m!281457))

(assert (=> d!63907 m!280563))

(assert (=> d!63151 d!63907))

(declare-fun d!63909 () Bool)

(declare-fun lt!133873 () Bool)

(assert (=> d!63909 (= lt!133873 (select (content!175 (t!8957 (toList!1966 lt!133149))) lt!133042))))

(declare-fun e!171330 () Bool)

(assert (=> d!63909 (= lt!133873 e!171330)))

(declare-fun res!129051 () Bool)

(assert (=> d!63909 (=> (not res!129051) (not e!171330))))

(assert (=> d!63909 (= res!129051 ((_ is Cons!3868) (t!8957 (toList!1966 lt!133149))))))

(assert (=> d!63909 (= (contains!1913 (t!8957 (toList!1966 lt!133149)) lt!133042) lt!133873)))

(declare-fun b!264434 () Bool)

(declare-fun e!171329 () Bool)

(assert (=> b!264434 (= e!171330 e!171329)))

(declare-fun res!129050 () Bool)

(assert (=> b!264434 (=> res!129050 e!171329)))

(assert (=> b!264434 (= res!129050 (= (h!4534 (t!8957 (toList!1966 lt!133149))) lt!133042))))

(declare-fun b!264435 () Bool)

(assert (=> b!264435 (= e!171329 (contains!1913 (t!8957 (t!8957 (toList!1966 lt!133149))) lt!133042))))

(assert (= (and d!63909 res!129051) b!264434))

(assert (= (and b!264434 (not res!129050)) b!264435))

(assert (=> d!63909 m!281381))

(declare-fun m!281459 () Bool)

(assert (=> d!63909 m!281459))

(declare-fun m!281461 () Bool)

(assert (=> b!264435 m!281461))

(assert (=> b!263247 d!63909))

(declare-fun d!63911 () Bool)

(assert (=> d!63911 (= (apply!262 lt!133482 (select (arr!5998 lt!133048) #b00000000000000000000000000000000)) (get!3095 (getValueByKey!319 (toList!1966 lt!133482) (select (arr!5998 lt!133048) #b00000000000000000000000000000000))))))

(declare-fun bs!9334 () Bool)

(assert (= bs!9334 d!63911))

(assert (=> bs!9334 m!279233))

(assert (=> bs!9334 m!280617))

(assert (=> bs!9334 m!280617))

(declare-fun m!281463 () Bool)

(assert (=> bs!9334 m!281463))

(assert (=> b!263598 d!63911))

(assert (=> b!263598 d!63179))

(declare-fun d!63913 () Bool)

(assert (=> d!63913 (= (get!3096 (select (arr!5997 lt!133045) #b00000000000000000000000000000000) (dynLambda!600 (defaultEntry!4843 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!5500 (select (arr!5997 lt!133045) #b00000000000000000000000000000000)))))

(assert (=> b!263533 d!63913))

(declare-fun d!63915 () Bool)

(assert (=> d!63915 (= (apply!262 lt!133534 #b1000000000000000000000000000000000000000000000000000000000000000) (get!3095 (getValueByKey!319 (toList!1966 lt!133534) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9335 () Bool)

(assert (= bs!9335 d!63915))

(assert (=> bs!9335 m!280343))

(assert (=> bs!9335 m!280343))

(declare-fun m!281465 () Bool)

(assert (=> bs!9335 m!281465))

(assert (=> b!263655 d!63915))

(declare-fun e!171332 () Option!325)

(declare-fun b!264438 () Bool)

(assert (=> b!264438 (= e!171332 (getValueByKey!319 (t!8957 (toList!1966 lt!133391)) (_1!2497 (tuple2!4975 key!932 v!346))))))

(declare-fun b!264436 () Bool)

(declare-fun e!171331 () Option!325)

(assert (=> b!264436 (= e!171331 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133391)))))))

(declare-fun d!63917 () Bool)

(declare-fun c!45244 () Bool)

(assert (=> d!63917 (= c!45244 (and ((_ is Cons!3868) (toList!1966 lt!133391)) (= (_1!2497 (h!4534 (toList!1966 lt!133391))) (_1!2497 (tuple2!4975 key!932 v!346)))))))

(assert (=> d!63917 (= (getValueByKey!319 (toList!1966 lt!133391) (_1!2497 (tuple2!4975 key!932 v!346))) e!171331)))

(declare-fun b!264439 () Bool)

(assert (=> b!264439 (= e!171332 None!323)))

(declare-fun b!264437 () Bool)

(assert (=> b!264437 (= e!171331 e!171332)))

(declare-fun c!45245 () Bool)

(assert (=> b!264437 (= c!45245 (and ((_ is Cons!3868) (toList!1966 lt!133391)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133391))) (_1!2497 (tuple2!4975 key!932 v!346))))))))

(assert (= (and d!63917 c!45244) b!264436))

(assert (= (and d!63917 (not c!45244)) b!264437))

(assert (= (and b!264437 c!45245) b!264438))

(assert (= (and b!264437 (not c!45245)) b!264439))

(declare-fun m!281467 () Bool)

(assert (=> b!264438 m!281467))

(assert (=> b!263424 d!63917))

(declare-fun d!63919 () Bool)

(assert (=> d!63919 (arrayContainsKey!0 (_keys!7035 lt!133037) lt!133513 #b00000000000000000000000000000000)))

(declare-fun lt!133874 () Unit!8187)

(assert (=> d!63919 (= lt!133874 (choose!13 (_keys!7035 lt!133037) lt!133513 #b00000000000000000000000000000000))))

(assert (=> d!63919 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!63919 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!7035 lt!133037) lt!133513 #b00000000000000000000000000000000) lt!133874)))

(declare-fun bs!9336 () Bool)

(assert (= bs!9336 d!63919))

(assert (=> bs!9336 m!280033))

(declare-fun m!281469 () Bool)

(assert (=> bs!9336 m!281469))

(assert (=> b!263639 d!63919))

(declare-fun d!63921 () Bool)

(declare-fun res!129052 () Bool)

(declare-fun e!171333 () Bool)

(assert (=> d!63921 (=> res!129052 e!171333)))

(assert (=> d!63921 (= res!129052 (= (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000) lt!133513))))

(assert (=> d!63921 (= (arrayContainsKey!0 (_keys!7035 lt!133037) lt!133513 #b00000000000000000000000000000000) e!171333)))

(declare-fun b!264440 () Bool)

(declare-fun e!171334 () Bool)

(assert (=> b!264440 (= e!171333 e!171334)))

(declare-fun res!129053 () Bool)

(assert (=> b!264440 (=> (not res!129053) (not e!171334))))

(assert (=> b!264440 (= res!129053 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 lt!133037))))))

(declare-fun b!264441 () Bool)

(assert (=> b!264441 (= e!171334 (arrayContainsKey!0 (_keys!7035 lt!133037) lt!133513 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!63921 (not res!129052)) b!264440))

(assert (= (and b!264440 res!129053) b!264441))

(assert (=> d!63921 m!279569))

(declare-fun m!281471 () Bool)

(assert (=> b!264441 m!281471))

(assert (=> b!263639 d!63921))

(declare-fun b!264442 () Bool)

(declare-fun e!171337 () SeekEntryResult!1210)

(declare-fun lt!133876 () SeekEntryResult!1210)

(assert (=> b!264442 (= e!171337 (MissingZero!1210 (index!7012 lt!133876)))))

(declare-fun b!264443 () Bool)

(declare-fun e!171336 () SeekEntryResult!1210)

(declare-fun e!171335 () SeekEntryResult!1210)

(assert (=> b!264443 (= e!171336 e!171335)))

(declare-fun lt!133877 () (_ BitVec 64))

(assert (=> b!264443 (= lt!133877 (select (arr!5998 (_keys!7035 lt!133037)) (index!7012 lt!133876)))))

(declare-fun c!45248 () Bool)

(assert (=> b!264443 (= c!45248 (= lt!133877 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(declare-fun b!264444 () Bool)

(declare-fun c!45246 () Bool)

(assert (=> b!264444 (= c!45246 (= lt!133877 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!264444 (= e!171335 e!171337)))

(declare-fun b!264445 () Bool)

(assert (=> b!264445 (= e!171335 (Found!1210 (index!7012 lt!133876)))))

(declare-fun b!264446 () Bool)

(assert (=> b!264446 (= e!171337 (seekKeyOrZeroReturnVacant!0 (x!25252 lt!133876) (index!7012 lt!133876) (index!7012 lt!133876) (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000) (_keys!7035 lt!133037) (mask!11209 lt!133037)))))

(declare-fun d!63923 () Bool)

(declare-fun lt!133875 () SeekEntryResult!1210)

(assert (=> d!63923 (and (or ((_ is Undefined!1210) lt!133875) (not ((_ is Found!1210) lt!133875)) (and (bvsge (index!7011 lt!133875) #b00000000000000000000000000000000) (bvslt (index!7011 lt!133875) (size!6349 (_keys!7035 lt!133037))))) (or ((_ is Undefined!1210) lt!133875) ((_ is Found!1210) lt!133875) (not ((_ is MissingZero!1210) lt!133875)) (and (bvsge (index!7010 lt!133875) #b00000000000000000000000000000000) (bvslt (index!7010 lt!133875) (size!6349 (_keys!7035 lt!133037))))) (or ((_ is Undefined!1210) lt!133875) ((_ is Found!1210) lt!133875) ((_ is MissingZero!1210) lt!133875) (not ((_ is MissingVacant!1210) lt!133875)) (and (bvsge (index!7013 lt!133875) #b00000000000000000000000000000000) (bvslt (index!7013 lt!133875) (size!6349 (_keys!7035 lt!133037))))) (or ((_ is Undefined!1210) lt!133875) (ite ((_ is Found!1210) lt!133875) (= (select (arr!5998 (_keys!7035 lt!133037)) (index!7011 lt!133875)) (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!1210) lt!133875) (= (select (arr!5998 (_keys!7035 lt!133037)) (index!7010 lt!133875)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1210) lt!133875) (= (select (arr!5998 (_keys!7035 lt!133037)) (index!7013 lt!133875)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!63923 (= lt!133875 e!171336)))

(declare-fun c!45247 () Bool)

(assert (=> d!63923 (= c!45247 (and ((_ is Intermediate!1210) lt!133876) (undefined!2022 lt!133876)))))

(assert (=> d!63923 (= lt!133876 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000) (mask!11209 lt!133037)) (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000) (_keys!7035 lt!133037) (mask!11209 lt!133037)))))

(assert (=> d!63923 (validMask!0 (mask!11209 lt!133037))))

(assert (=> d!63923 (= (seekEntryOrOpen!0 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000) (_keys!7035 lt!133037) (mask!11209 lt!133037)) lt!133875)))

(declare-fun b!264447 () Bool)

(assert (=> b!264447 (= e!171336 Undefined!1210)))

(assert (= (and d!63923 c!45247) b!264447))

(assert (= (and d!63923 (not c!45247)) b!264443))

(assert (= (and b!264443 c!45248) b!264445))

(assert (= (and b!264443 (not c!45248)) b!264444))

(assert (= (and b!264444 c!45246) b!264442))

(assert (= (and b!264444 (not c!45246)) b!264446))

(declare-fun m!281473 () Bool)

(assert (=> b!264443 m!281473))

(assert (=> b!264446 m!279569))

(declare-fun m!281475 () Bool)

(assert (=> b!264446 m!281475))

(declare-fun m!281477 () Bool)

(assert (=> d!63923 m!281477))

(assert (=> d!63923 m!279735))

(declare-fun m!281479 () Bool)

(assert (=> d!63923 m!281479))

(assert (=> d!63923 m!279569))

(declare-fun m!281481 () Bool)

(assert (=> d!63923 m!281481))

(declare-fun m!281483 () Bool)

(assert (=> d!63923 m!281483))

(assert (=> d!63923 m!281481))

(assert (=> d!63923 m!279569))

(declare-fun m!281485 () Bool)

(assert (=> d!63923 m!281485))

(assert (=> b!263639 d!63923))

(assert (=> d!63229 d!63213))

(assert (=> d!63229 d!63233))

(declare-fun d!63925 () Bool)

(assert (=> d!63925 (contains!1911 (+!705 lt!133229 (tuple2!4975 lt!133209 (zeroValue!4684 thiss!1504))) lt!133222)))

(assert (=> d!63925 true))

(declare-fun _$35!420 () Unit!8187)

(assert (=> d!63925 (= (choose!1304 lt!133229 lt!133209 (zeroValue!4684 thiss!1504) lt!133222) _$35!420)))

(declare-fun bs!9337 () Bool)

(assert (= bs!9337 d!63925))

(assert (=> bs!9337 m!279197))

(assert (=> bs!9337 m!279197))

(assert (=> bs!9337 m!279199))

(assert (=> d!63229 d!63925))

(declare-fun d!63927 () Bool)

(declare-fun e!171338 () Bool)

(assert (=> d!63927 e!171338))

(declare-fun res!129054 () Bool)

(assert (=> d!63927 (=> res!129054 e!171338)))

(declare-fun lt!133879 () Bool)

(assert (=> d!63927 (= res!129054 (not lt!133879))))

(declare-fun lt!133878 () Bool)

(assert (=> d!63927 (= lt!133879 lt!133878)))

(declare-fun lt!133880 () Unit!8187)

(declare-fun e!171339 () Unit!8187)

(assert (=> d!63927 (= lt!133880 e!171339)))

(declare-fun c!45249 () Bool)

(assert (=> d!63927 (= c!45249 lt!133878)))

(assert (=> d!63927 (= lt!133878 (containsKey!311 (toList!1966 lt!133229) lt!133222))))

(assert (=> d!63927 (= (contains!1911 lt!133229 lt!133222) lt!133879)))

(declare-fun b!264448 () Bool)

(declare-fun lt!133881 () Unit!8187)

(assert (=> b!264448 (= e!171339 lt!133881)))

(assert (=> b!264448 (= lt!133881 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133229) lt!133222))))

(assert (=> b!264448 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133229) lt!133222))))

(declare-fun b!264449 () Bool)

(declare-fun Unit!8248 () Unit!8187)

(assert (=> b!264449 (= e!171339 Unit!8248)))

(declare-fun b!264450 () Bool)

(assert (=> b!264450 (= e!171338 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133229) lt!133222)))))

(assert (= (and d!63927 c!45249) b!264448))

(assert (= (and d!63927 (not c!45249)) b!264449))

(assert (= (and d!63927 (not res!129054)) b!264450))

(declare-fun m!281487 () Bool)

(assert (=> d!63927 m!281487))

(declare-fun m!281489 () Bool)

(assert (=> b!264448 m!281489))

(declare-fun m!281491 () Bool)

(assert (=> b!264448 m!281491))

(assert (=> b!264448 m!281491))

(declare-fun m!281493 () Bool)

(assert (=> b!264448 m!281493))

(assert (=> b!264450 m!281491))

(assert (=> b!264450 m!281491))

(assert (=> b!264450 m!281493))

(assert (=> d!63229 d!63927))

(assert (=> b!263610 d!63769))

(assert (=> b!263610 d!63771))

(assert (=> b!263581 d!63825))

(declare-fun b!264453 () Bool)

(declare-fun e!171341 () Option!325)

(assert (=> b!264453 (= e!171341 (getValueByKey!319 (t!8957 (toList!1966 lt!133438)) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))

(declare-fun b!264451 () Bool)

(declare-fun e!171340 () Option!325)

(assert (=> b!264451 (= e!171340 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133438)))))))

(declare-fun d!63929 () Bool)

(declare-fun c!45250 () Bool)

(assert (=> d!63929 (= c!45250 (and ((_ is Cons!3868) (toList!1966 lt!133438)) (= (_1!2497 (h!4534 (toList!1966 lt!133438))) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504)))))))))

(assert (=> d!63929 (= (getValueByKey!319 (toList!1966 lt!133438) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))) e!171340)))

(declare-fun b!264454 () Bool)

(assert (=> b!264454 (= e!171341 None!323)))

(declare-fun b!264452 () Bool)

(assert (=> b!264452 (= e!171340 e!171341)))

(declare-fun c!45251 () Bool)

(assert (=> b!264452 (= c!45251 (and ((_ is Cons!3868) (toList!1966 lt!133438)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133438))) (_1!2497 (ite (or c!44853 c!44850) (tuple2!4975 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4684 thiss!1504)) (tuple2!4975 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4684 thiss!1504))))))))))

(assert (= (and d!63929 c!45250) b!264451))

(assert (= (and d!63929 (not c!45250)) b!264452))

(assert (= (and b!264452 c!45251) b!264453))

(assert (= (and b!264452 (not c!45251)) b!264454))

(declare-fun m!281495 () Bool)

(assert (=> b!264453 m!281495))

(assert (=> b!263519 d!63929))

(assert (=> d!63145 d!63295))

(declare-fun d!63931 () Bool)

(declare-fun e!171342 () Bool)

(assert (=> d!63931 e!171342))

(declare-fun res!129055 () Bool)

(assert (=> d!63931 (=> res!129055 e!171342)))

(declare-fun lt!133883 () Bool)

(assert (=> d!63931 (= res!129055 (not lt!133883))))

(declare-fun lt!133882 () Bool)

(assert (=> d!63931 (= lt!133883 lt!133882)))

(declare-fun lt!133884 () Unit!8187)

(declare-fun e!171343 () Unit!8187)

(assert (=> d!63931 (= lt!133884 e!171343)))

(declare-fun c!45252 () Bool)

(assert (=> d!63931 (= c!45252 lt!133882)))

(assert (=> d!63931 (= lt!133882 (containsKey!311 (toList!1966 lt!133408) (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (=> d!63931 (= (contains!1911 lt!133408 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)) lt!133883)))

(declare-fun b!264455 () Bool)

(declare-fun lt!133885 () Unit!8187)

(assert (=> b!264455 (= e!171343 lt!133885)))

(assert (=> b!264455 (= lt!133885 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133408) (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (=> b!264455 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133408) (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!264456 () Bool)

(declare-fun Unit!8249 () Unit!8187)

(assert (=> b!264456 (= e!171343 Unit!8249)))

(declare-fun b!264457 () Bool)

(assert (=> b!264457 (= e!171342 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133408) (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000))))))

(assert (= (and d!63931 c!45252) b!264455))

(assert (= (and d!63931 (not c!45252)) b!264456))

(assert (= (and d!63931 (not res!129055)) b!264457))

(assert (=> d!63931 m!279625))

(declare-fun m!281497 () Bool)

(assert (=> d!63931 m!281497))

(assert (=> b!264455 m!279625))

(declare-fun m!281499 () Bool)

(assert (=> b!264455 m!281499))

(assert (=> b!264455 m!279625))

(assert (=> b!264455 m!280979))

(assert (=> b!264455 m!280979))

(declare-fun m!281501 () Bool)

(assert (=> b!264455 m!281501))

(assert (=> b!264457 m!279625))

(assert (=> b!264457 m!280979))

(assert (=> b!264457 m!280979))

(assert (=> b!264457 m!281501))

(assert (=> b!263440 d!63931))

(assert (=> b!263258 d!63111))

(declare-fun d!63933 () Bool)

(declare-fun lt!133886 () Bool)

(assert (=> d!63933 (= lt!133886 (select (content!175 (toList!1966 lt!133503)) (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))))

(declare-fun e!171345 () Bool)

(assert (=> d!63933 (= lt!133886 e!171345)))

(declare-fun res!129057 () Bool)

(assert (=> d!63933 (=> (not res!129057) (not e!171345))))

(assert (=> d!63933 (= res!129057 ((_ is Cons!3868) (toList!1966 lt!133503)))))

(assert (=> d!63933 (= (contains!1913 (toList!1966 lt!133503) (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))) lt!133886)))

(declare-fun b!264458 () Bool)

(declare-fun e!171344 () Bool)

(assert (=> b!264458 (= e!171345 e!171344)))

(declare-fun res!129056 () Bool)

(assert (=> b!264458 (=> res!129056 e!171344)))

(assert (=> b!264458 (= res!129056 (= (h!4534 (toList!1966 lt!133503)) (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))))

(declare-fun b!264459 () Bool)

(assert (=> b!264459 (= e!171344 (contains!1913 (t!8957 (toList!1966 lt!133503)) (tuple2!4975 lt!133279 (minValue!4684 thiss!1504))))))

(assert (= (and d!63933 res!129057) b!264458))

(assert (= (and b!264458 (not res!129056)) b!264459))

(declare-fun m!281503 () Bool)

(assert (=> d!63933 m!281503))

(declare-fun m!281505 () Bool)

(assert (=> d!63933 m!281505))

(declare-fun m!281507 () Bool)

(assert (=> b!264459 m!281507))

(assert (=> b!263613 d!63933))

(declare-fun d!63935 () Bool)

(assert (=> d!63935 (= (get!3095 (getValueByKey!319 (toList!1966 lt!133223) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!5504 (getValueByKey!319 (toList!1966 lt!133223) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!63075 d!63935))

(assert (=> d!63075 d!63645))

(assert (=> b!263311 d!63305))

(declare-fun d!63937 () Bool)

(declare-fun res!129058 () Bool)

(declare-fun e!171346 () Bool)

(assert (=> d!63937 (=> res!129058 e!171346)))

(assert (=> d!63937 (= res!129058 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133031))) (= (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133031)))) key!932)))))

(assert (=> d!63937 (= (containsKey!311 (t!8957 (toList!1966 lt!133031)) key!932) e!171346)))

(declare-fun b!264460 () Bool)

(declare-fun e!171347 () Bool)

(assert (=> b!264460 (= e!171346 e!171347)))

(declare-fun res!129059 () Bool)

(assert (=> b!264460 (=> (not res!129059) (not e!171347))))

(assert (=> b!264460 (= res!129059 (and (or (not ((_ is Cons!3868) (t!8957 (toList!1966 lt!133031)))) (bvsle (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133031)))) key!932)) ((_ is Cons!3868) (t!8957 (toList!1966 lt!133031))) (bvslt (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133031)))) key!932)))))

(declare-fun b!264461 () Bool)

(assert (=> b!264461 (= e!171347 (containsKey!311 (t!8957 (t!8957 (toList!1966 lt!133031))) key!932))))

(assert (= (and d!63937 (not res!129058)) b!264460))

(assert (= (and b!264460 res!129059) b!264461))

(declare-fun m!281509 () Bool)

(assert (=> b!264461 m!281509))

(assert (=> b!263241 d!63937))

(declare-fun d!63939 () Bool)

(assert (=> d!63939 (isDefined!261 (getValueByKey!319 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) (select (arr!5998 lt!133048) index!297)))))

(declare-fun lt!133887 () Unit!8187)

(assert (=> d!63939 (= lt!133887 (choose!1301 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) (select (arr!5998 lt!133048) index!297)))))

(declare-fun e!171348 () Bool)

(assert (=> d!63939 e!171348))

(declare-fun res!129060 () Bool)

(assert (=> d!63939 (=> (not res!129060) (not e!171348))))

(assert (=> d!63939 (= res!129060 (isStrictlySorted!372 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))))))

(assert (=> d!63939 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) (select (arr!5998 lt!133048) index!297)) lt!133887)))

(declare-fun b!264462 () Bool)

(assert (=> b!264462 (= e!171348 (containsKey!311 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) (select (arr!5998 lt!133048) index!297)))))

(assert (= (and d!63939 res!129060) b!264462))

(assert (=> d!63939 m!279285))

(assert (=> d!63939 m!279537))

(assert (=> d!63939 m!279537))

(assert (=> d!63939 m!279539))

(assert (=> d!63939 m!279285))

(declare-fun m!281511 () Bool)

(assert (=> d!63939 m!281511))

(declare-fun m!281513 () Bool)

(assert (=> d!63939 m!281513))

(assert (=> b!264462 m!279285))

(assert (=> b!264462 m!279533))

(assert (=> b!263329 d!63939))

(assert (=> b!263329 d!63451))

(assert (=> b!263329 d!63453))

(declare-fun b!264463 () Bool)

(declare-fun e!171349 () (_ BitVec 32))

(assert (=> b!264463 (= e!171349 #b00000000000000000000000000000000)))

(declare-fun b!264465 () Bool)

(declare-fun e!171350 () (_ BitVec 32))

(assert (=> b!264465 (= e!171349 e!171350)))

(declare-fun c!45254 () Bool)

(assert (=> b!264465 (= c!45254 (validKeyInArray!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!264466 () Bool)

(declare-fun call!25303 () (_ BitVec 32))

(assert (=> b!264466 (= e!171350 call!25303)))

(declare-fun bm!25300 () Bool)

(assert (=> bm!25300 (= call!25303 (arrayCountValidKeys!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(declare-fun d!63941 () Bool)

(declare-fun lt!133888 () (_ BitVec 32))

(assert (=> d!63941 (and (bvsge lt!133888 #b00000000000000000000000000000000) (bvsle lt!133888 (bvsub (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!63941 (= lt!133888 e!171349)))

(declare-fun c!45253 () Bool)

(assert (=> d!63941 (= c!45253 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))))))

(assert (=> d!63941 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6349 (_keys!7035 thiss!1504)) (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(assert (=> d!63941 (= (arrayCountValidKeys!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (_keys!7035 thiss!1504))) lt!133888)))

(declare-fun b!264464 () Bool)

(assert (=> b!264464 (= e!171350 (bvadd #b00000000000000000000000000000001 call!25303))))

(assert (= (and d!63941 c!45253) b!264463))

(assert (= (and d!63941 (not c!45253)) b!264465))

(assert (= (and b!264465 c!45254) b!264464))

(assert (= (and b!264465 (not c!45254)) b!264466))

(assert (= (or b!264464 b!264466) bm!25300))

(assert (=> b!264465 m!280519))

(assert (=> b!264465 m!280519))

(assert (=> b!264465 m!280529))

(declare-fun m!281515 () Bool)

(assert (=> bm!25300 m!281515))

(assert (=> bm!25235 d!63941))

(declare-fun d!63943 () Bool)

(assert (=> d!63943 (arrayContainsKey!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) lt!133516 #b00000000000000000000000000000000)))

(declare-fun lt!133889 () Unit!8187)

(assert (=> d!63943 (= lt!133889 (choose!13 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) lt!133516 #b00000000000000000000000000000000))))

(assert (=> d!63943 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!63943 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) lt!133516 #b00000000000000000000000000000000) lt!133889)))

(declare-fun bs!9338 () Bool)

(assert (= bs!9338 d!63943))

(assert (=> bs!9338 m!280041))

(declare-fun m!281517 () Bool)

(assert (=> bs!9338 m!281517))

(assert (=> b!263643 d!63943))

(declare-fun d!63945 () Bool)

(declare-fun res!129061 () Bool)

(declare-fun e!171351 () Bool)

(assert (=> d!63945 (=> res!129061 e!171351)))

(assert (=> d!63945 (= res!129061 (= (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000) lt!133516))))

(assert (=> d!63945 (= (arrayContainsKey!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) lt!133516 #b00000000000000000000000000000000) e!171351)))

(declare-fun b!264467 () Bool)

(declare-fun e!171352 () Bool)

(assert (=> b!264467 (= e!171351 e!171352)))

(declare-fun res!129062 () Bool)

(assert (=> b!264467 (=> (not res!129062) (not e!171352))))

(assert (=> b!264467 (= res!129062 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))))

(declare-fun b!264468 () Bool)

(assert (=> b!264468 (= e!171352 (arrayContainsKey!0 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) lt!133516 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!63945 (not res!129061)) b!264467))

(assert (= (and b!264467 res!129062) b!264468))

(assert (=> d!63945 m!279625))

(declare-fun m!281519 () Bool)

(assert (=> b!264468 m!281519))

(assert (=> b!263643 d!63945))

(declare-fun b!264469 () Bool)

(declare-fun e!171355 () SeekEntryResult!1210)

(declare-fun lt!133891 () SeekEntryResult!1210)

(assert (=> b!264469 (= e!171355 (MissingZero!1210 (index!7012 lt!133891)))))

(declare-fun b!264470 () Bool)

(declare-fun e!171354 () SeekEntryResult!1210)

(declare-fun e!171353 () SeekEntryResult!1210)

(assert (=> b!264470 (= e!171354 e!171353)))

(declare-fun lt!133892 () (_ BitVec 64))

(assert (=> b!264470 (= lt!133892 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) (index!7012 lt!133891)))))

(declare-fun c!45257 () Bool)

(assert (=> b!264470 (= c!45257 (= lt!133892 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!264471 () Bool)

(declare-fun c!45255 () Bool)

(assert (=> b!264471 (= c!45255 (= lt!133892 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!264471 (= e!171353 e!171355)))

(declare-fun b!264472 () Bool)

(assert (=> b!264472 (= e!171353 (Found!1210 (index!7012 lt!133891)))))

(declare-fun b!264473 () Bool)

(assert (=> b!264473 (= e!171355 (seekKeyOrZeroReturnVacant!0 (x!25252 lt!133891) (index!7012 lt!133891) (index!7012 lt!133891) (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000) (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (mask!11209 thiss!1504)))))

(declare-fun d!63947 () Bool)

(declare-fun lt!133890 () SeekEntryResult!1210)

(assert (=> d!63947 (and (or ((_ is Undefined!1210) lt!133890) (not ((_ is Found!1210) lt!133890)) (and (bvsge (index!7011 lt!133890) #b00000000000000000000000000000000) (bvslt (index!7011 lt!133890) (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))) (or ((_ is Undefined!1210) lt!133890) ((_ is Found!1210) lt!133890) (not ((_ is MissingZero!1210) lt!133890)) (and (bvsge (index!7010 lt!133890) #b00000000000000000000000000000000) (bvslt (index!7010 lt!133890) (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))) (or ((_ is Undefined!1210) lt!133890) ((_ is Found!1210) lt!133890) ((_ is MissingZero!1210) lt!133890) (not ((_ is MissingVacant!1210) lt!133890)) (and (bvsge (index!7013 lt!133890) #b00000000000000000000000000000000) (bvslt (index!7013 lt!133890) (size!6349 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))))))) (or ((_ is Undefined!1210) lt!133890) (ite ((_ is Found!1210) lt!133890) (= (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) (index!7011 lt!133890)) (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!1210) lt!133890) (= (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) (index!7010 lt!133890)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1210) lt!133890) (= (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) (index!7013 lt!133890)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!63947 (= lt!133890 e!171354)))

(declare-fun c!45256 () Bool)

(assert (=> d!63947 (= c!45256 (and ((_ is Intermediate!1210) lt!133891) (undefined!2022 lt!133891)))))

(assert (=> d!63947 (= lt!133891 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000) (mask!11209 thiss!1504)) (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000) (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (mask!11209 thiss!1504)))))

(assert (=> d!63947 (validMask!0 (mask!11209 thiss!1504))))

(assert (=> d!63947 (= (seekEntryOrOpen!0 (select (arr!5998 (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504)))) #b00000000000000000000000000000000) (array!12677 (store (arr!5998 (_keys!7035 thiss!1504)) index!297 key!932) (size!6349 (_keys!7035 thiss!1504))) (mask!11209 thiss!1504)) lt!133890)))

(declare-fun b!264474 () Bool)

(assert (=> b!264474 (= e!171354 Undefined!1210)))

(assert (= (and d!63947 c!45256) b!264474))

(assert (= (and d!63947 (not c!45256)) b!264470))

(assert (= (and b!264470 c!45257) b!264472))

(assert (= (and b!264470 (not c!45257)) b!264471))

(assert (= (and b!264471 c!45255) b!264469))

(assert (= (and b!264471 (not c!45255)) b!264473))

(declare-fun m!281521 () Bool)

(assert (=> b!264470 m!281521))

(assert (=> b!264473 m!279625))

(declare-fun m!281523 () Bool)

(assert (=> b!264473 m!281523))

(declare-fun m!281525 () Bool)

(assert (=> d!63947 m!281525))

(assert (=> d!63947 m!279117))

(declare-fun m!281527 () Bool)

(assert (=> d!63947 m!281527))

(assert (=> d!63947 m!279625))

(declare-fun m!281529 () Bool)

(assert (=> d!63947 m!281529))

(declare-fun m!281531 () Bool)

(assert (=> d!63947 m!281531))

(assert (=> d!63947 m!281529))

(assert (=> d!63947 m!279625))

(declare-fun m!281533 () Bool)

(assert (=> d!63947 m!281533))

(assert (=> b!263643 d!63947))

(assert (=> b!263326 d!63787))

(assert (=> b!263326 d!63789))

(declare-fun lt!133893 () Bool)

(declare-fun d!63949 () Bool)

(assert (=> d!63949 (= lt!133893 (select (content!175 (toList!1966 lt!133461)) (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))))

(declare-fun e!171357 () Bool)

(assert (=> d!63949 (= lt!133893 e!171357)))

(declare-fun res!129064 () Bool)

(assert (=> d!63949 (=> (not res!129064) (not e!171357))))

(assert (=> d!63949 (= res!129064 ((_ is Cons!3868) (toList!1966 lt!133461)))))

(assert (=> d!63949 (= (contains!1913 (toList!1966 lt!133461) (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))) lt!133893)))

(declare-fun b!264475 () Bool)

(declare-fun e!171356 () Bool)

(assert (=> b!264475 (= e!171357 e!171356)))

(declare-fun res!129063 () Bool)

(assert (=> b!264475 (=> res!129063 e!171356)))

(assert (=> b!264475 (= res!129063 (= (h!4534 (toList!1966 lt!133461)) (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))))

(declare-fun b!264476 () Bool)

(assert (=> b!264476 (= e!171356 (contains!1913 (t!8957 (toList!1966 lt!133461)) (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))))))

(assert (= (and d!63949 res!129064) b!264475))

(assert (= (and b!264475 (not res!129063)) b!264476))

(declare-fun m!281535 () Bool)

(assert (=> d!63949 m!281535))

(declare-fun m!281537 () Bool)

(assert (=> d!63949 m!281537))

(declare-fun m!281539 () Bool)

(assert (=> b!264476 m!281539))

(assert (=> b!263571 d!63949))

(assert (=> b!263661 d!63393))

(assert (=> b!263384 d!63111))

(declare-fun d!63951 () Bool)

(declare-fun lt!133894 () Bool)

(assert (=> d!63951 (= lt!133894 (select (content!175 (t!8957 (toList!1966 lt!133287))) lt!133042))))

(declare-fun e!171359 () Bool)

(assert (=> d!63951 (= lt!133894 e!171359)))

(declare-fun res!129066 () Bool)

(assert (=> d!63951 (=> (not res!129066) (not e!171359))))

(assert (=> d!63951 (= res!129066 ((_ is Cons!3868) (t!8957 (toList!1966 lt!133287))))))

(assert (=> d!63951 (= (contains!1913 (t!8957 (toList!1966 lt!133287)) lt!133042) lt!133894)))

(declare-fun b!264477 () Bool)

(declare-fun e!171358 () Bool)

(assert (=> b!264477 (= e!171359 e!171358)))

(declare-fun res!129065 () Bool)

(assert (=> b!264477 (=> res!129065 e!171358)))

(assert (=> b!264477 (= res!129065 (= (h!4534 (t!8957 (toList!1966 lt!133287))) lt!133042))))

(declare-fun b!264478 () Bool)

(assert (=> b!264478 (= e!171358 (contains!1913 (t!8957 (t!8957 (toList!1966 lt!133287))) lt!133042))))

(assert (= (and d!63951 res!129066) b!264477))

(assert (= (and b!264477 (not res!129065)) b!264478))

(assert (=> d!63951 m!281245))

(declare-fun m!281541 () Bool)

(assert (=> d!63951 m!281541))

(declare-fun m!281543 () Bool)

(assert (=> b!264478 m!281543))

(assert (=> b!263328 d!63951))

(declare-fun d!63953 () Bool)

(declare-fun e!171360 () Bool)

(assert (=> d!63953 e!171360))

(declare-fun res!129067 () Bool)

(assert (=> d!63953 (=> res!129067 e!171360)))

(declare-fun lt!133896 () Bool)

(assert (=> d!63953 (= res!129067 (not lt!133896))))

(declare-fun lt!133895 () Bool)

(assert (=> d!63953 (= lt!133896 lt!133895)))

(declare-fun lt!133897 () Unit!8187)

(declare-fun e!171361 () Unit!8187)

(assert (=> d!63953 (= lt!133897 e!171361)))

(declare-fun c!45258 () Bool)

(assert (=> d!63953 (= c!45258 lt!133895)))

(assert (=> d!63953 (= lt!133895 (containsKey!311 (toList!1966 lt!133494) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))

(assert (=> d!63953 (= (contains!1911 lt!133494 (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))) lt!133896)))

(declare-fun b!264479 () Bool)

(declare-fun lt!133898 () Unit!8187)

(assert (=> b!264479 (= e!171361 lt!133898)))

(assert (=> b!264479 (= lt!133898 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133494) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))

(assert (=> b!264479 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133494) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))

(declare-fun b!264480 () Bool)

(declare-fun Unit!8250 () Unit!8187)

(assert (=> b!264480 (= e!171361 Unit!8250)))

(declare-fun b!264481 () Bool)

(assert (=> b!264481 (= e!171360 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133494) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))))))

(assert (= (and d!63953 c!45258) b!264479))

(assert (= (and d!63953 (not c!45258)) b!264480))

(assert (= (and d!63953 (not res!129067)) b!264481))

(declare-fun m!281545 () Bool)

(assert (=> d!63953 m!281545))

(declare-fun m!281547 () Bool)

(assert (=> b!264479 m!281547))

(assert (=> b!264479 m!279947))

(assert (=> b!264479 m!279947))

(declare-fun m!281549 () Bool)

(assert (=> b!264479 m!281549))

(assert (=> b!264481 m!279947))

(assert (=> b!264481 m!279947))

(assert (=> b!264481 m!281549))

(assert (=> d!63257 d!63953))

(declare-fun e!171363 () Option!325)

(declare-fun b!264484 () Bool)

(assert (=> b!264484 (= e!171363 (getValueByKey!319 (t!8957 lt!133495) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))

(declare-fun b!264482 () Bool)

(declare-fun e!171362 () Option!325)

(assert (=> b!264482 (= e!171362 (Some!324 (_2!2497 (h!4534 lt!133495))))))

(declare-fun c!45259 () Bool)

(declare-fun d!63955 () Bool)

(assert (=> d!63955 (= c!45259 (and ((_ is Cons!3868) lt!133495) (= (_1!2497 (h!4534 lt!133495)) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))))))

(assert (=> d!63955 (= (getValueByKey!319 lt!133495 (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))) e!171362)))

(declare-fun b!264485 () Bool)

(assert (=> b!264485 (= e!171363 None!323)))

(declare-fun b!264483 () Bool)

(assert (=> b!264483 (= e!171362 e!171363)))

(declare-fun c!45260 () Bool)

(assert (=> b!264483 (= c!45260 (and ((_ is Cons!3868) lt!133495) (not (= (_1!2497 (h!4534 lt!133495)) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63955 c!45259) b!264482))

(assert (= (and d!63955 (not c!45259)) b!264483))

(assert (= (and b!264483 c!45260) b!264484))

(assert (= (and b!264483 (not c!45260)) b!264485))

(declare-fun m!281551 () Bool)

(assert (=> b!264484 m!281551))

(assert (=> d!63257 d!63955))

(declare-fun d!63957 () Bool)

(assert (=> d!63957 (= (getValueByKey!319 lt!133495 (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))) (Some!324 (_2!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))

(declare-fun lt!133899 () Unit!8187)

(assert (=> d!63957 (= lt!133899 (choose!1302 lt!133495 (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))

(declare-fun e!171364 () Bool)

(assert (=> d!63957 e!171364))

(declare-fun res!129068 () Bool)

(assert (=> d!63957 (=> (not res!129068) (not e!171364))))

(assert (=> d!63957 (= res!129068 (isStrictlySorted!372 lt!133495))))

(assert (=> d!63957 (= (lemmaContainsTupThenGetReturnValue!177 lt!133495 (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))) lt!133899)))

(declare-fun b!264486 () Bool)

(declare-fun res!129069 () Bool)

(assert (=> b!264486 (=> (not res!129069) (not e!171364))))

(assert (=> b!264486 (= res!129069 (containsKey!311 lt!133495 (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))

(declare-fun b!264487 () Bool)

(assert (=> b!264487 (= e!171364 (contains!1913 lt!133495 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))))))

(assert (= (and d!63957 res!129068) b!264486))

(assert (= (and b!264486 res!129069) b!264487))

(assert (=> d!63957 m!279941))

(declare-fun m!281553 () Bool)

(assert (=> d!63957 m!281553))

(declare-fun m!281555 () Bool)

(assert (=> d!63957 m!281555))

(declare-fun m!281557 () Bool)

(assert (=> b!264486 m!281557))

(declare-fun m!281559 () Bool)

(assert (=> b!264487 m!281559))

(assert (=> d!63257 d!63957))

(declare-fun bm!25301 () Bool)

(declare-fun call!25306 () List!3872)

(declare-fun call!25305 () List!3872)

(assert (=> bm!25301 (= call!25306 call!25305)))

(declare-fun bm!25302 () Bool)

(declare-fun call!25304 () List!3872)

(assert (=> bm!25302 (= call!25304 call!25306)))

(declare-fun b!264488 () Bool)

(declare-fun res!129070 () Bool)

(declare-fun e!171369 () Bool)

(assert (=> b!264488 (=> (not res!129070) (not e!171369))))

(declare-fun lt!133900 () List!3872)

(assert (=> b!264488 (= res!129070 (containsKey!311 lt!133900 (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))

(declare-fun c!45261 () Bool)

(declare-fun b!264489 () Bool)

(assert (=> b!264489 (= c!45261 (and ((_ is Cons!3868) (toList!1966 lt!133276)) (bvsgt (_1!2497 (h!4534 (toList!1966 lt!133276))) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))))))

(declare-fun e!171368 () List!3872)

(declare-fun e!171365 () List!3872)

(assert (=> b!264489 (= e!171368 e!171365)))

(declare-fun b!264490 () Bool)

(declare-fun e!171367 () List!3872)

(assert (=> b!264490 (= e!171367 e!171368)))

(declare-fun c!45264 () Bool)

(assert (=> b!264490 (= c!45264 (and ((_ is Cons!3868) (toList!1966 lt!133276)) (= (_1!2497 (h!4534 (toList!1966 lt!133276))) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))))))

(declare-fun b!264491 () Bool)

(assert (=> b!264491 (= e!171369 (contains!1913 lt!133900 (tuple2!4975 (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))))))

(declare-fun b!264492 () Bool)

(assert (=> b!264492 (= e!171367 call!25305)))

(declare-fun b!264493 () Bool)

(assert (=> b!264493 (= e!171368 call!25306)))

(declare-fun e!171366 () List!3872)

(declare-fun b!264494 () Bool)

(assert (=> b!264494 (= e!171366 (insertStrictlySorted!179 (t!8957 (toList!1966 lt!133276)) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))

(declare-fun b!264495 () Bool)

(assert (=> b!264495 (= e!171365 call!25304)))

(declare-fun c!45263 () Bool)

(declare-fun bm!25303 () Bool)

(assert (=> bm!25303 (= call!25305 ($colon$colon!107 e!171366 (ite c!45263 (h!4534 (toList!1966 lt!133276)) (tuple2!4975 (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))))

(declare-fun c!45262 () Bool)

(assert (=> bm!25303 (= c!45262 c!45263)))

(declare-fun d!63959 () Bool)

(assert (=> d!63959 e!171369))

(declare-fun res!129071 () Bool)

(assert (=> d!63959 (=> (not res!129071) (not e!171369))))

(assert (=> d!63959 (= res!129071 (isStrictlySorted!372 lt!133900))))

(assert (=> d!63959 (= lt!133900 e!171367)))

(assert (=> d!63959 (= c!45263 (and ((_ is Cons!3868) (toList!1966 lt!133276)) (bvslt (_1!2497 (h!4534 (toList!1966 lt!133276))) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))))))

(assert (=> d!63959 (isStrictlySorted!372 (toList!1966 lt!133276))))

(assert (=> d!63959 (= (insertStrictlySorted!179 (toList!1966 lt!133276) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))) (_2!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))) lt!133900)))

(declare-fun b!264496 () Bool)

(assert (=> b!264496 (= e!171365 call!25304)))

(declare-fun b!264497 () Bool)

(assert (=> b!264497 (= e!171366 (ite c!45264 (t!8957 (toList!1966 lt!133276)) (ite c!45261 (Cons!3868 (h!4534 (toList!1966 lt!133276)) (t!8957 (toList!1966 lt!133276))) Nil!3869)))))

(assert (= (and d!63959 c!45263) b!264492))

(assert (= (and d!63959 (not c!45263)) b!264490))

(assert (= (and b!264490 c!45264) b!264493))

(assert (= (and b!264490 (not c!45264)) b!264489))

(assert (= (and b!264489 c!45261) b!264496))

(assert (= (and b!264489 (not c!45261)) b!264495))

(assert (= (or b!264496 b!264495) bm!25302))

(assert (= (or b!264493 bm!25302) bm!25301))

(assert (= (or b!264492 bm!25301) bm!25303))

(assert (= (and bm!25303 c!45262) b!264494))

(assert (= (and bm!25303 (not c!45262)) b!264497))

(assert (= (and d!63959 res!129071) b!264488))

(assert (= (and b!264488 res!129070) b!264491))

(declare-fun m!281561 () Bool)

(assert (=> bm!25303 m!281561))

(declare-fun m!281563 () Bool)

(assert (=> b!264494 m!281563))

(declare-fun m!281565 () Bool)

(assert (=> b!264491 m!281565))

(declare-fun m!281567 () Bool)

(assert (=> b!264488 m!281567))

(declare-fun m!281569 () Bool)

(assert (=> d!63959 m!281569))

(declare-fun m!281571 () Bool)

(assert (=> d!63959 m!281571))

(assert (=> d!63257 d!63959))

(assert (=> b!263566 d!63801))

(assert (=> b!263566 d!63803))

(declare-fun d!63961 () Bool)

(declare-fun res!129072 () Bool)

(declare-fun e!171370 () Bool)

(assert (=> d!63961 (=> res!129072 e!171370)))

(assert (=> d!63961 (= res!129072 (and ((_ is Cons!3868) (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (= (_1!2497 (h!4534 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) (select (arr!5998 lt!133048) index!297))))))

(assert (=> d!63961 (= (containsKey!311 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))) (select (arr!5998 lt!133048) index!297)) e!171370)))

(declare-fun b!264498 () Bool)

(declare-fun e!171371 () Bool)

(assert (=> b!264498 (= e!171370 e!171371)))

(declare-fun res!129073 () Bool)

(assert (=> b!264498 (=> (not res!129073) (not e!171371))))

(assert (=> b!264498 (= res!129073 (and (or (not ((_ is Cons!3868) (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) (bvsle (_1!2497 (h!4534 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) (select (arr!5998 lt!133048) index!297))) ((_ is Cons!3868) (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (bvslt (_1!2497 (h!4534 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504))))) (select (arr!5998 lt!133048) index!297))))))

(declare-fun b!264499 () Bool)

(assert (=> b!264499 (= e!171371 (containsKey!311 (t!8957 (toList!1966 (getCurrentListMap!1489 lt!133048 lt!133045 (mask!11209 thiss!1504) (extraKeys!4580 thiss!1504) (zeroValue!4684 thiss!1504) (minValue!4684 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4843 thiss!1504)))) (select (arr!5998 lt!133048) index!297)))))

(assert (= (and d!63961 (not res!129072)) b!264498))

(assert (= (and b!264498 res!129073) b!264499))

(assert (=> b!264499 m!279285))

(declare-fun m!281573 () Bool)

(assert (=> b!264499 m!281573))

(assert (=> d!63117 d!63961))

(assert (=> d!63231 d!63209))

(declare-fun d!63963 () Bool)

(assert (=> d!63963 (= (apply!262 (+!705 lt!133225 (tuple2!4975 lt!133224 (minValue!4684 thiss!1504))) lt!133208) (apply!262 lt!133225 lt!133208))))

(assert (=> d!63963 true))

(declare-fun _$34!1136 () Unit!8187)

(assert (=> d!63963 (= (choose!1303 lt!133225 lt!133224 (minValue!4684 thiss!1504) lt!133208) _$34!1136)))

(declare-fun bs!9339 () Bool)

(assert (= bs!9339 d!63963))

(assert (=> bs!9339 m!279193))

(assert (=> bs!9339 m!279193))

(assert (=> bs!9339 m!279195))

(assert (=> bs!9339 m!279203))

(assert (=> d!63231 d!63963))

(assert (=> d!63231 d!63221))

(assert (=> d!63231 d!63211))

(declare-fun d!63965 () Bool)

(declare-fun e!171372 () Bool)

(assert (=> d!63965 e!171372))

(declare-fun res!129074 () Bool)

(assert (=> d!63965 (=> res!129074 e!171372)))

(declare-fun lt!133902 () Bool)

(assert (=> d!63965 (= res!129074 (not lt!133902))))

(declare-fun lt!133901 () Bool)

(assert (=> d!63965 (= lt!133902 lt!133901)))

(declare-fun lt!133903 () Unit!8187)

(declare-fun e!171373 () Unit!8187)

(assert (=> d!63965 (= lt!133903 e!171373)))

(declare-fun c!45265 () Bool)

(assert (=> d!63965 (= c!45265 lt!133901)))

(assert (=> d!63965 (= lt!133901 (containsKey!311 (toList!1966 lt!133225) lt!133208))))

(assert (=> d!63965 (= (contains!1911 lt!133225 lt!133208) lt!133902)))

(declare-fun b!264500 () Bool)

(declare-fun lt!133904 () Unit!8187)

(assert (=> b!264500 (= e!171373 lt!133904)))

(assert (=> b!264500 (= lt!133904 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!1966 lt!133225) lt!133208))))

(assert (=> b!264500 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133225) lt!133208))))

(declare-fun b!264501 () Bool)

(declare-fun Unit!8251 () Unit!8187)

(assert (=> b!264501 (= e!171373 Unit!8251)))

(declare-fun b!264502 () Bool)

(assert (=> b!264502 (= e!171372 (isDefined!261 (getValueByKey!319 (toList!1966 lt!133225) lt!133208)))))

(assert (= (and d!63965 c!45265) b!264500))

(assert (= (and d!63965 (not c!45265)) b!264501))

(assert (= (and d!63965 (not res!129074)) b!264502))

(declare-fun m!281575 () Bool)

(assert (=> d!63965 m!281575))

(declare-fun m!281577 () Bool)

(assert (=> b!264500 m!281577))

(assert (=> b!264500 m!279789))

(assert (=> b!264500 m!279789))

(declare-fun m!281579 () Bool)

(assert (=> b!264500 m!281579))

(assert (=> b!264502 m!279789))

(assert (=> b!264502 m!279789))

(assert (=> b!264502 m!281579))

(assert (=> d!63231 d!63965))

(assert (=> b!263397 d!63393))

(declare-fun e!171375 () Option!325)

(declare-fun b!264505 () Bool)

(assert (=> b!264505 (= e!171375 (getValueByKey!319 (t!8957 (toList!1966 lt!133494)) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))

(declare-fun b!264503 () Bool)

(declare-fun e!171374 () Option!325)

(assert (=> b!264503 (= e!171374 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133494)))))))

(declare-fun c!45266 () Bool)

(declare-fun d!63967 () Bool)

(assert (=> d!63967 (= c!45266 (and ((_ is Cons!3868) (toList!1966 lt!133494)) (= (_1!2497 (h!4534 (toList!1966 lt!133494))) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504))))))))

(assert (=> d!63967 (= (getValueByKey!319 (toList!1966 lt!133494) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))) e!171374)))

(declare-fun b!264506 () Bool)

(assert (=> b!264506 (= e!171375 None!323)))

(declare-fun b!264504 () Bool)

(assert (=> b!264504 (= e!171374 e!171375)))

(declare-fun c!45267 () Bool)

(assert (=> b!264504 (= c!45267 (and ((_ is Cons!3868) (toList!1966 lt!133494)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133494))) (_1!2497 (tuple2!4975 lt!133265 (minValue!4684 thiss!1504)))))))))

(assert (= (and d!63967 c!45266) b!264503))

(assert (= (and d!63967 (not c!45266)) b!264504))

(assert (= (and b!264504 c!45267) b!264505))

(assert (= (and b!264504 (not c!45267)) b!264506))

(declare-fun m!281581 () Bool)

(assert (=> b!264505 m!281581))

(assert (=> b!263606 d!63967))

(declare-fun d!63969 () Bool)

(declare-fun lt!133905 () Bool)

(assert (=> d!63969 (= lt!133905 (select (content!176 Nil!3870) (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(declare-fun e!171376 () Bool)

(assert (=> d!63969 (= lt!133905 e!171376)))

(declare-fun res!129076 () Bool)

(assert (=> d!63969 (=> (not res!129076) (not e!171376))))

(assert (=> d!63969 (= res!129076 ((_ is Cons!3869) Nil!3870))))

(assert (=> d!63969 (= (contains!1914 Nil!3870 (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)) lt!133905)))

(declare-fun b!264507 () Bool)

(declare-fun e!171377 () Bool)

(assert (=> b!264507 (= e!171376 e!171377)))

(declare-fun res!129075 () Bool)

(assert (=> b!264507 (=> res!129075 e!171377)))

(assert (=> b!264507 (= res!129075 (= (h!4535 Nil!3870) (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(declare-fun b!264508 () Bool)

(assert (=> b!264508 (= e!171377 (contains!1914 (t!8958 Nil!3870) (select (arr!5998 (_keys!7035 lt!133037)) #b00000000000000000000000000000000)))))

(assert (= (and d!63969 res!129076) b!264507))

(assert (= (and b!264507 (not res!129075)) b!264508))

(assert (=> d!63969 m!279447))

(assert (=> d!63969 m!279569))

(declare-fun m!281583 () Bool)

(assert (=> d!63969 m!281583))

(assert (=> b!264508 m!279569))

(declare-fun m!281585 () Bool)

(assert (=> b!264508 m!281585))

(assert (=> b!263403 d!63969))

(declare-fun b!264509 () Bool)

(declare-fun e!171378 () (_ BitVec 32))

(assert (=> b!264509 (= e!171378 #b00000000000000000000000000000000)))

(declare-fun b!264511 () Bool)

(declare-fun e!171379 () (_ BitVec 32))

(assert (=> b!264511 (= e!171378 e!171379)))

(declare-fun c!45269 () Bool)

(assert (=> b!264511 (= c!45269 (validKeyInArray!0 (select (arr!5998 lt!133048) (bvadd index!297 #b00000000000000000000000000000001))))))

(declare-fun b!264512 () Bool)

(declare-fun call!25307 () (_ BitVec 32))

(assert (=> b!264512 (= e!171379 call!25307)))

(declare-fun bm!25304 () Bool)

(assert (=> bm!25304 (= call!25307 (arrayCountValidKeys!0 lt!133048 (bvadd index!297 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd index!297 #b00000000000000000000000000000001)))))

(declare-fun d!63971 () Bool)

(declare-fun lt!133906 () (_ BitVec 32))

(assert (=> d!63971 (and (bvsge lt!133906 #b00000000000000000000000000000000) (bvsle lt!133906 (bvsub (size!6349 lt!133048) (bvadd index!297 #b00000000000000000000000000000001))))))

(assert (=> d!63971 (= lt!133906 e!171378)))

(declare-fun c!45268 () Bool)

(assert (=> d!63971 (= c!45268 (bvsge (bvadd index!297 #b00000000000000000000000000000001) (bvadd index!297 #b00000000000000000000000000000001)))))

(assert (=> d!63971 (and (bvsle (bvadd index!297 #b00000000000000000000000000000001) (bvadd index!297 #b00000000000000000000000000000001)) (bvsge (bvadd index!297 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd index!297 #b00000000000000000000000000000001) (size!6349 lt!133048)))))

(assert (=> d!63971 (= (arrayCountValidKeys!0 lt!133048 (bvadd index!297 #b00000000000000000000000000000001) (bvadd index!297 #b00000000000000000000000000000001)) lt!133906)))

(declare-fun b!264510 () Bool)

(assert (=> b!264510 (= e!171379 (bvadd #b00000000000000000000000000000001 call!25307))))

(assert (= (and d!63971 c!45268) b!264509))

(assert (= (and d!63971 (not c!45268)) b!264511))

(assert (= (and b!264511 c!45269) b!264510))

(assert (= (and b!264511 (not c!45269)) b!264512))

(assert (= (or b!264510 b!264512) bm!25304))

(assert (=> b!264511 m!279469))

(assert (=> b!264511 m!279469))

(assert (=> b!264511 m!279471))

(declare-fun m!281587 () Bool)

(assert (=> bm!25304 m!281587))

(assert (=> bm!25229 d!63971))

(assert (=> bm!25238 d!63341))

(declare-fun bm!25305 () Bool)

(declare-fun call!25310 () List!3872)

(declare-fun call!25309 () List!3872)

(assert (=> bm!25305 (= call!25310 call!25309)))

(declare-fun bm!25306 () Bool)

(declare-fun call!25308 () List!3872)

(assert (=> bm!25306 (= call!25308 call!25310)))

(declare-fun b!264513 () Bool)

(declare-fun res!129077 () Bool)

(declare-fun e!171384 () Bool)

(assert (=> b!264513 (=> (not res!129077) (not e!171384))))

(declare-fun lt!133907 () List!3872)

(assert (=> b!264513 (= res!129077 (containsKey!311 lt!133907 (_1!2497 lt!133042)))))

(declare-fun b!264514 () Bool)

(declare-fun c!45270 () Bool)

(assert (=> b!264514 (= c!45270 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133034))) (bvsgt (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133034)))) (_1!2497 lt!133042))))))

(declare-fun e!171383 () List!3872)

(declare-fun e!171380 () List!3872)

(assert (=> b!264514 (= e!171383 e!171380)))

(declare-fun b!264515 () Bool)

(declare-fun e!171382 () List!3872)

(assert (=> b!264515 (= e!171382 e!171383)))

(declare-fun c!45273 () Bool)

(assert (=> b!264515 (= c!45273 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133034))) (= (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133034)))) (_1!2497 lt!133042))))))

(declare-fun b!264516 () Bool)

(assert (=> b!264516 (= e!171384 (contains!1913 lt!133907 (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042))))))

(declare-fun b!264517 () Bool)

(assert (=> b!264517 (= e!171382 call!25309)))

(declare-fun b!264518 () Bool)

(assert (=> b!264518 (= e!171383 call!25310)))

(declare-fun b!264519 () Bool)

(declare-fun e!171381 () List!3872)

(assert (=> b!264519 (= e!171381 (insertStrictlySorted!179 (t!8957 (t!8957 (toList!1966 lt!133034))) (_1!2497 lt!133042) (_2!2497 lt!133042)))))

(declare-fun b!264520 () Bool)

(assert (=> b!264520 (= e!171380 call!25308)))

(declare-fun c!45272 () Bool)

(declare-fun bm!25307 () Bool)

(assert (=> bm!25307 (= call!25309 ($colon$colon!107 e!171381 (ite c!45272 (h!4534 (t!8957 (toList!1966 lt!133034))) (tuple2!4975 (_1!2497 lt!133042) (_2!2497 lt!133042)))))))

(declare-fun c!45271 () Bool)

(assert (=> bm!25307 (= c!45271 c!45272)))

(declare-fun d!63973 () Bool)

(assert (=> d!63973 e!171384))

(declare-fun res!129078 () Bool)

(assert (=> d!63973 (=> (not res!129078) (not e!171384))))

(assert (=> d!63973 (= res!129078 (isStrictlySorted!372 lt!133907))))

(assert (=> d!63973 (= lt!133907 e!171382)))

(assert (=> d!63973 (= c!45272 (and ((_ is Cons!3868) (t!8957 (toList!1966 lt!133034))) (bvslt (_1!2497 (h!4534 (t!8957 (toList!1966 lt!133034)))) (_1!2497 lt!133042))))))

(assert (=> d!63973 (isStrictlySorted!372 (t!8957 (toList!1966 lt!133034)))))

(assert (=> d!63973 (= (insertStrictlySorted!179 (t!8957 (toList!1966 lt!133034)) (_1!2497 lt!133042) (_2!2497 lt!133042)) lt!133907)))

(declare-fun b!264521 () Bool)

(assert (=> b!264521 (= e!171380 call!25308)))

(declare-fun b!264522 () Bool)

(assert (=> b!264522 (= e!171381 (ite c!45273 (t!8957 (t!8957 (toList!1966 lt!133034))) (ite c!45270 (Cons!3868 (h!4534 (t!8957 (toList!1966 lt!133034))) (t!8957 (t!8957 (toList!1966 lt!133034)))) Nil!3869)))))

(assert (= (and d!63973 c!45272) b!264517))

(assert (= (and d!63973 (not c!45272)) b!264515))

(assert (= (and b!264515 c!45273) b!264518))

(assert (= (and b!264515 (not c!45273)) b!264514))

(assert (= (and b!264514 c!45270) b!264521))

(assert (= (and b!264514 (not c!45270)) b!264520))

(assert (= (or b!264521 b!264520) bm!25306))

(assert (= (or b!264518 bm!25306) bm!25305))

(assert (= (or b!264517 bm!25305) bm!25307))

(assert (= (and bm!25307 c!45271) b!264519))

(assert (= (and bm!25307 (not c!45271)) b!264522))

(assert (= (and d!63973 res!129078) b!264513))

(assert (= (and b!264513 res!129077) b!264516))

(declare-fun m!281589 () Bool)

(assert (=> bm!25307 m!281589))

(declare-fun m!281591 () Bool)

(assert (=> b!264519 m!281591))

(declare-fun m!281593 () Bool)

(assert (=> b!264516 m!281593))

(declare-fun m!281595 () Bool)

(assert (=> b!264513 m!281595))

(declare-fun m!281597 () Bool)

(assert (=> d!63973 m!281597))

(assert (=> d!63973 m!281029))

(assert (=> b!263515 d!63973))

(declare-fun d!63975 () Bool)

(assert (=> d!63975 (= (get!3095 (getValueByKey!319 (toList!1966 lt!133225) lt!133208)) (v!5504 (getValueByKey!319 (toList!1966 lt!133225) lt!133208)))))

(assert (=> d!63209 d!63975))

(declare-fun b!264525 () Bool)

(declare-fun e!171386 () Option!325)

(assert (=> b!264525 (= e!171386 (getValueByKey!319 (t!8957 (toList!1966 lt!133225)) lt!133208))))

(declare-fun b!264523 () Bool)

(declare-fun e!171385 () Option!325)

(assert (=> b!264523 (= e!171385 (Some!324 (_2!2497 (h!4534 (toList!1966 lt!133225)))))))

(declare-fun d!63977 () Bool)

(declare-fun c!45274 () Bool)

(assert (=> d!63977 (= c!45274 (and ((_ is Cons!3868) (toList!1966 lt!133225)) (= (_1!2497 (h!4534 (toList!1966 lt!133225))) lt!133208)))))

(assert (=> d!63977 (= (getValueByKey!319 (toList!1966 lt!133225) lt!133208) e!171385)))

(declare-fun b!264526 () Bool)

(assert (=> b!264526 (= e!171386 None!323)))

(declare-fun b!264524 () Bool)

(assert (=> b!264524 (= e!171385 e!171386)))

(declare-fun c!45275 () Bool)

(assert (=> b!264524 (= c!45275 (and ((_ is Cons!3868) (toList!1966 lt!133225)) (not (= (_1!2497 (h!4534 (toList!1966 lt!133225))) lt!133208))))))

(assert (= (and d!63977 c!45274) b!264523))

(assert (= (and d!63977 (not c!45274)) b!264524))

(assert (= (and b!264524 c!45275) b!264525))

(assert (= (and b!264524 (not c!45275)) b!264526))

(declare-fun m!281599 () Bool)

(assert (=> b!264525 m!281599))

(assert (=> d!63209 d!63977))

(assert (=> bm!25231 d!63435))

(declare-fun d!63979 () Bool)

(assert (=> d!63979 (= (get!3095 (getValueByKey!319 (toList!1966 lt!133223) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))) (v!5504 (getValueByKey!319 (toList!1966 lt!133223) (select (arr!5998 (_keys!7035 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (=> d!63107 d!63979))

(assert (=> d!63107 d!63601))

(declare-fun condMapEmpty!11358 () Bool)

(declare-fun mapDefault!11358 () ValueCell!2985)

(assert (=> mapNonEmpty!11357 (= condMapEmpty!11358 (= mapRest!11357 ((as const (Array (_ BitVec 32) ValueCell!2985)) mapDefault!11358)))))

(declare-fun e!171387 () Bool)

(declare-fun mapRes!11358 () Bool)

(assert (=> mapNonEmpty!11357 (= tp!23732 (and e!171387 mapRes!11358))))

(declare-fun b!264528 () Bool)

(assert (=> b!264528 (= e!171387 tp_is_empty!6657)))

(declare-fun mapIsEmpty!11358 () Bool)

(assert (=> mapIsEmpty!11358 mapRes!11358))

(declare-fun mapNonEmpty!11358 () Bool)

(declare-fun tp!23733 () Bool)

(declare-fun e!171388 () Bool)

(assert (=> mapNonEmpty!11358 (= mapRes!11358 (and tp!23733 e!171388))))

(declare-fun mapRest!11358 () (Array (_ BitVec 32) ValueCell!2985))

(declare-fun mapKey!11358 () (_ BitVec 32))

(declare-fun mapValue!11358 () ValueCell!2985)

(assert (=> mapNonEmpty!11358 (= mapRest!11357 (store mapRest!11358 mapKey!11358 mapValue!11358))))

(declare-fun b!264527 () Bool)

(assert (=> b!264527 (= e!171388 tp_is_empty!6657)))

(assert (= (and mapNonEmpty!11357 condMapEmpty!11358) mapIsEmpty!11358))

(assert (= (and mapNonEmpty!11357 (not condMapEmpty!11358)) mapNonEmpty!11358))

(assert (= (and mapNonEmpty!11358 ((_ is ValueCellFull!2985) mapValue!11358)) b!264527))

(assert (= (and mapNonEmpty!11357 ((_ is ValueCellFull!2985) mapDefault!11358)) b!264528))

(declare-fun m!281601 () Bool)

(assert (=> mapNonEmpty!11358 m!281601))

(declare-fun b_lambda!8407 () Bool)

(assert (= b_lambda!8405 (or (and b!262890 b_free!6795) b_lambda!8407)))

(declare-fun b_lambda!8409 () Bool)

(assert (= b_lambda!8395 (or (and b!262890 b_free!6795) b_lambda!8409)))

(declare-fun b_lambda!8411 () Bool)

(assert (= b_lambda!8397 (or (and b!262890 b_free!6795) b_lambda!8411)))

(declare-fun b_lambda!8413 () Bool)

(assert (= b_lambda!8399 (or (and b!262890 b_free!6795) b_lambda!8413)))

(declare-fun b_lambda!8415 () Bool)

(assert (= b_lambda!8401 (or (and b!262890 b_free!6795) b_lambda!8415)))

(declare-fun b_lambda!8417 () Bool)

(assert (= b_lambda!8379 (or (and b!262890 b_free!6795 (= (defaultEntry!4843 thiss!1504) (defaultEntry!4843 lt!133037))) b_lambda!8417)))

(declare-fun b_lambda!8419 () Bool)

(assert (= b_lambda!8403 (or (and b!262890 b_free!6795) b_lambda!8419)))

(check-sat (not b!264208) (not d!63767) (not b!264453) (not d!63739) (not b!264513) (not d!63741) (not b!264183) (not b!263711) (not b!263859) (not b!263785) (not d!63549) (not b!263932) (not d!63637) (not b!264244) (not b!263712) (not b!263803) (not d!63669) (not b!263775) (not b!263923) (not b!263693) (not b!264400) (not b!263677) (not b!264211) (not d!63563) (not d!63369) (not b!264410) (not d!63843) (not d!63769) (not d!63707) (not d!63909) (not d!63605) (not d!63677) (not b!263763) (not b!264333) (not b!263978) (not b!264399) (not b!264505) (not b!264035) (not b!264089) (not b!264009) (not b!264364) (not b!263823) (not b!264154) (not bm!25272) (not d!63531) (not b!264085) (not d!63873) (not bm!25299) (not bm!25303) (not b!263730) (not b!263854) (not d!63325) (not b!263735) (not b!263731) (not d!63635) (not b!263829) (not b!264202) (not d!63511) (not d!63309) (not b!264018) (not b!264032) (not b!264175) (not d!63761) (not d!63657) (not b!264323) (not bm!25289) (not b_lambda!8385) (not b_lambda!8407) (not d!63653) (not d!63811) (not b!264450) (not b!264362) (not b!264097) (not b!263790) (not bm!25293) (not d!63561) (not b!264260) (not b_lambda!8415) (not d!63835) (not b!264417) (not b!264196) (not d!63759) (not d!63973) (not d!63753) (not b!263855) (not b!264422) (not b!264072) (not d!63799) (not b!264462) (not b!264101) (not b!264305) (not b!264322) (not b!263805) (not b!264479) (not b!264412) (not d!63891) (not b!264105) (not d!63423) (not b!264481) (not d!63847) (not d!63783) (not b!264116) (not b!263887) (not b!264342) (not b!263897) (not b!263944) (not b!264330) (not d!63763) (not b!264099) (not b!263989) (not b!264387) (not d!63675) (not b!264168) (not b!264459) (not b!263727) (not b!264069) (not d!63927) (not d!63381) (not d!63725) (not b!264359) (not d!63949) (not b!264292) (not b!264407) (not d!63827) (not d!63349) (not d!63875) (not d!63329) (not d!63341) (not b!264016) (not d!63947) (not b_next!6795) (not b!263767) (not d!63871) (not b!264478) (not b!264383) (not bm!25267) (not b!263852) (not d!63597) (not b!263801) (not d!63939) (not b!264329) (not b!263908) (not b!264424) (not b!264212) (not d!63679) (not b!264151) (not d!63527) (not d!63475) (not b!263720) (not bm!25290) (not b!264139) (not b!263948) (not d!63923) (not b!263724) (not d!63751) (not d!63721) (not b!263787) (not b!263765) (not b_lambda!8393) (not b!264508) (not b!263698) (not b!264427) (not d!63541) (not bm!25304) (not d!63925) (not b!263930) (not d!63587) (not b!263921) (not b!264190) (not b!264107) (not b_lambda!8387) (not b!263968) (not b!264109) (not d!63943) (not d!63535) (not b!263992) (not b!264160) (not b!264291) (not d!63869) (not b!263938) (not b!263778) (not b!264178) (not b!263818) (not b!264287) (not b!263688) (not b!263771) (not b!264046) (not b!264391) (not bm!25273) (not b!263836) (not d!63801) (not b!263684) (not b!264059) (not b!263891) (not b!264315) (not b!264003) (not d!63371) (not d!63915) (not d!63627) (not d!63683) (not b_lambda!8413) (not d!63485) (not b!264405) (not bm!25307) (not d!63663) (not b!263973) (not b!264172) (not b!264000) (not b!264225) (not b!263869) (not b!264040) (not d!63687) (not d!63547) (not d!63465) (not bm!25277) (not d!63361) (not b!263862) (not b!263734) (not bm!25296) (not b!263769) (not b!264441) (not b!264055) (not d!63447) (not mapNonEmpty!11358) (not b!263799) (not b!264396) (not d!63545) (not b!264233) (not b!263856) (not b!263842) (not b!264197) (not d!63727) (not d!63901) (not d!63953) (not b!264019) (not b!264226) (not bm!25279) (not b!264525) (not b!263850) (not bm!25286) (not b_lambda!8383) (not b!264062) tp_is_empty!6657 (not d!63887) (not b!264294) (not b!264210) (not d!63885) (not b!264120) (not b!263941) (not b!264486) (not bm!25268) (not b_lambda!8367) (not d!63709) (not b!264023) (not b!263982) (not b!264438) (not b!263958) (not b!264516) (not b!263980) (not d!63743) (not b_lambda!8409) (not b!264086) (not b!263751) (not b!263723) (not d!63443) (not d!63643) (not b!263718) (not b!263955) (not b!264379) (not b!263715) (not b!264415) (not d!63571) (not b!264310) (not b!264093) (not b!264223) (not b!264473) (not b!264065) (not d!63383) (not b!263817) (not b!264038) (not b!263773) (not d!63355) (not d!63723) (not b!264215) (not b!264114) (not d!63863) (not d!63813) (not b!264245) (not b!264484) (not b!264157) (not b!263877) (not b!264203) (not b!264103) (not b!264372) (not b!264511) (not d!63713) (not b!264100) (not b!263913) (not bm!25278) (not b!263753) (not d!63957) (not b!263729) (not d!63659) (not d!63319) (not b!263995) (not b!264132) (not b!264406) (not b!263816) (not b!264352) (not b!264050) (not d!63579) (not b!264313) (not b!264079) (not d!63793) (not b!263935) (not d!63623) (not d!63431) (not b!264051) (not b!263824) (not b!264248) (not d!63907) (not b!263820) (not b!264402) (not d!63613) (not d!63787) (not b!264414) (not b!264052) (not b!264390) (not b!263804) (not d!63951) (not d!63567) (not b!264268) (not b!264205) (not d!63307) (not b!264388) (not d!63451) (not b!264185) (not b!264373) (not b!264042) (not b!264241) (not d!63337) (not b!264326) (not b!264227) (not d!63335) (not b!264283) (not b!264366) (not d!63693) (not b_lambda!8391) (not d!63905) (not b!263786) (not b!263965) (not b!264272) (not b!264435) (not b!264519) (not d!63519) (not d!63889) (not b!264356) (not b!263746) (not b_lambda!8381) (not b!264170) (not b!263826) (not d!63839) (not d!63589) (not d!63833) (not b!264083) (not d!63573) (not d!63911) (not d!63599) (not d!63339) (not b!263741) (not b!264087) (not b!263708) (not d!63517) (not d!63445) (not d!63757) (not b!264393) (not b!263705) (not b!263835) (not b!264067) (not b!264128) (not b!263960) (not b!263848) (not b!264448) (not d!63327) (not d!63805) (not b!264494) (not b!264409) (not b!264455) (not b!264020) (not bm!25260) (not b!264491) (not b!264502) (not b!264257) (not b!263743) (not b!264369) (not d!63375) (not b!264247) (not b_lambda!8411) (not b!263810) (not b!264487) (not bm!25264) (not b!263901) (not d!63331) (not d!63747) (not b!264500) (not d!63483) (not b!264274) (not b!264280) (not bm!25280) (not b!263783) (not bm!25250) (not bm!25249) (not b!263985) (not b!264312) (not b!264252) (not b!264117) (not bm!25283) (not b!263970) (not d!63745) (not b!264332) (not bm!25245) (not b!264461) (not b!263851) (not b!264327) (not b!264468) (not b!264348) (not b!263834) (not b!263893) (not b!263975) (not d!63699) (not b!263713) (not d!63859) (not d!63315) (not b!264295) (not d!63345) (not b!264115) (not b!263972) (not b_lambda!8389) (not b!264254) (not d!63641) (not b!263780) (not b!264026) (not d!63895) (not d!63781) (not b!263738) (not d!63893) (not d!63403) (not bm!25261) (not d!63851) (not b!263950) (not d!63399) (not b!263926) (not b!263952) (not b!263736) (not b!264423) (not d!63425) (not b!264199) (not b!263967) (not d!63933) (not d!63435) (not b!264194) (not bm!25276) (not d!63409) (not b!263832) (not d!63703) (not d!63357) (not b!263861) (not b_lambda!8365) (not bm!25256) (not bm!25257) (not d!63749) (not b!264324) (not d!63865) (not b!264488) (not b!263811) (not b!264457) (not d!63919) (not b!263905) (not b!263988) (not d!63621) (not b!263748) (not d!63969) (not d!63353) (not b_lambda!8417) (not b!263695) (not b!264142) (not b!264165) (not d!63395) (not b!263680) (not b!263719) (not b!263755) (not d!63477) (not d!63303) (not b!263813) (not b!264250) (not bm!25255) (not b!263694) (not b!264118) (not b!264404) (not d!63755) (not b!263884) (not b!263946) (not d!63529) (not d!63557) (not d!63439) (not d!63823) (not b!264345) (not d!63343) (not b!264006) (not b!264135) (not d!63553) (not d!63429) (not d!63931) (not b!264013) (not b!264145) (not b!263839) (not b!264371) (not d!63639) (not d!63407) (not b!263777) (not b!263701) (not d!63633) (not b!264163) (not b!263963) (not b!264047) (not d!63815) (not b!263671) (not b!263714) (not bm!25269) (not b!264385) (not b!263691) (not b!264171) (not d!63497) (not d!63691) (not b!264264) (not d!63705) (not b!264238) (not b!264335) (not b!263871) (not bm!25248) (not d!63461) (not b!264499) (not b!264162) (not b!264298) (not b!264075) (not b!263874) (not d!63797) (not b!264253) (not b_lambda!8419) (not d!63959) (not b!263808) (not b!263793) (not b!263800) (not b!263827) (not b!263722) (not bm!25254) (not b!263881) (not d!63737) (not b!264121) (not b!264057) (not bm!25251) (not b!263987) (not b!264041) (not b!264130) (not d!63671) (not b!264137) (not b!264011) (not d!63351) (not bm!25300) (not b!264048) (not b!263864) (not b!263686) (not b!264338) (not d!63333) (not d!63347) (not d!63867) (not d!63359) (not b!264341) (not d!63785) (not b!264376) (not b!264200) (not d!63405) b_and!13989 (not b!263798) (not b!264124) (not d!63667) (not b!264353) (not b!264218) (not b!263917) (not d!63617) (not d!63831) (not b!264256) (not b!264446) (not d!63715) (not b!263717) (not b!264251) (not d!63845) (not b!263761) (not b!264340) (not d!63897) (not b!264430) (not d!63963) (not b!264076) (not b!263870) (not d!63765) (not b!263867) (not b!263706) (not b!264138) (not d!63965) (not b!264420) (not b!264476) (not b!263768) (not d!63321) (not d!63817) (not b!264465) (not b!264044) (not b!264286) (not b!264289))
(check-sat b_and!13989 (not b_next!6795))
