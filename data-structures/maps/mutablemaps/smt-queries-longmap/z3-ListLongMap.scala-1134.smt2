; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23342 () Bool)

(assert start!23342)

(declare-fun b!245296 () Bool)

(declare-fun b_free!6555 () Bool)

(declare-fun b_next!6555 () Bool)

(assert (=> b!245296 (= b_free!6555 (not b_next!6555))))

(declare-fun tp!22897 () Bool)

(declare-fun b_and!13561 () Bool)

(assert (=> b!245296 (= tp!22897 b_and!13561)))

(declare-fun b!245295 () Bool)

(declare-fun res!120340 () Bool)

(declare-fun e!159160 () Bool)

(assert (=> b!245295 (=> (not res!120340) (not e!159160))))

(declare-fun call!22897 () Bool)

(assert (=> b!245295 (= res!120340 call!22897)))

(declare-fun e!159151 () Bool)

(assert (=> b!245295 (= e!159151 e!159160)))

(declare-fun e!159158 () Bool)

(declare-fun tp_is_empty!6417 () Bool)

(declare-datatypes ((V!8203 0))(
  ( (V!8204 (val!3253 Int)) )
))
(declare-datatypes ((ValueCell!2865 0))(
  ( (ValueCellFull!2865 (v!5301 V!8203)) (EmptyCell!2865) )
))
(declare-datatypes ((array!12130 0))(
  ( (array!12131 (arr!5757 (Array (_ BitVec 32) ValueCell!2865)) (size!6099 (_ BitVec 32))) )
))
(declare-datatypes ((array!12132 0))(
  ( (array!12133 (arr!5758 (Array (_ BitVec 32) (_ BitVec 64))) (size!6100 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3630 0))(
  ( (LongMapFixedSize!3631 (defaultEntry!4540 Int) (mask!10649 (_ BitVec 32)) (extraKeys!4277 (_ BitVec 32)) (zeroValue!4381 V!8203) (minValue!4381 V!8203) (_size!1864 (_ BitVec 32)) (_keys!6654 array!12132) (_values!4523 array!12130) (_vacant!1864 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3630)

(declare-fun e!159161 () Bool)

(declare-fun array_inv!3795 (array!12132) Bool)

(declare-fun array_inv!3796 (array!12130) Bool)

(assert (=> b!245296 (= e!159161 (and tp!22897 tp_is_empty!6417 (array_inv!3795 (_keys!6654 thiss!1504)) (array_inv!3796 (_values!4523 thiss!1504)) e!159158))))

(declare-fun b!245297 () Bool)

(declare-fun e!159150 () Bool)

(declare-fun mapRes!10885 () Bool)

(assert (=> b!245297 (= e!159158 (and e!159150 mapRes!10885))))

(declare-fun condMapEmpty!10885 () Bool)

(declare-fun mapDefault!10885 () ValueCell!2865)

(assert (=> b!245297 (= condMapEmpty!10885 (= (arr!5757 (_values!4523 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2865)) mapDefault!10885)))))

(declare-fun b!245298 () Bool)

(declare-fun call!22896 () Bool)

(assert (=> b!245298 (= e!159160 (not call!22896))))

(declare-fun bm!22893 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12132 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22893 (= call!22896 (arrayContainsKey!0 (_keys!6654 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!245299 () Bool)

(declare-fun res!120338 () Bool)

(declare-datatypes ((SeekEntryResult!1098 0))(
  ( (MissingZero!1098 (index!6562 (_ BitVec 32))) (Found!1098 (index!6563 (_ BitVec 32))) (Intermediate!1098 (undefined!1910 Bool) (index!6564 (_ BitVec 32)) (x!24428 (_ BitVec 32))) (Undefined!1098) (MissingVacant!1098 (index!6565 (_ BitVec 32))) )
))
(declare-fun lt!122889 () SeekEntryResult!1098)

(assert (=> b!245299 (= res!120338 (= (select (arr!5758 (_keys!6654 thiss!1504)) (index!6565 lt!122889)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!159152 () Bool)

(assert (=> b!245299 (=> (not res!120338) (not e!159152))))

(declare-fun res!120342 () Bool)

(declare-fun e!159154 () Bool)

(assert (=> start!23342 (=> (not res!120342) (not e!159154))))

(declare-fun valid!1412 (LongMapFixedSize!3630) Bool)

(assert (=> start!23342 (= res!120342 (valid!1412 thiss!1504))))

(assert (=> start!23342 e!159154))

(assert (=> start!23342 e!159161))

(assert (=> start!23342 true))

(declare-fun b!245300 () Bool)

(declare-fun e!159153 () Bool)

(assert (=> b!245300 (= e!159154 e!159153)))

(declare-fun res!120343 () Bool)

(assert (=> b!245300 (=> (not res!120343) (not e!159153))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!245300 (= res!120343 (or (= lt!122889 (MissingZero!1098 index!297)) (= lt!122889 (MissingVacant!1098 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12132 (_ BitVec 32)) SeekEntryResult!1098)

(assert (=> b!245300 (= lt!122889 (seekEntryOrOpen!0 key!932 (_keys!6654 thiss!1504) (mask!10649 thiss!1504)))))

(declare-fun b!245301 () Bool)

(declare-datatypes ((Unit!7572 0))(
  ( (Unit!7573) )
))
(declare-fun e!159162 () Unit!7572)

(declare-fun Unit!7574 () Unit!7572)

(assert (=> b!245301 (= e!159162 Unit!7574)))

(declare-fun b!245302 () Bool)

(declare-fun e!159149 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!245302 (= e!159149 (not (validMask!0 (mask!10649 thiss!1504))))))

(declare-fun lt!122885 () array!12132)

(declare-fun arrayCountValidKeys!0 (array!12132 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!245302 (= (arrayCountValidKeys!0 lt!122885 #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6654 thiss!1504) #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504)))))))

(declare-fun lt!122887 () Unit!7572)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12132 (_ BitVec 32) (_ BitVec 64)) Unit!7572)

(assert (=> b!245302 (= lt!122887 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6654 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3688 0))(
  ( (Nil!3685) (Cons!3684 (h!4341 (_ BitVec 64)) (t!8709 List!3688)) )
))
(declare-fun arrayNoDuplicates!0 (array!12132 (_ BitVec 32) List!3688) Bool)

(assert (=> b!245302 (arrayNoDuplicates!0 lt!122885 #b00000000000000000000000000000000 Nil!3685)))

(assert (=> b!245302 (= lt!122885 (array!12133 (store (arr!5758 (_keys!6654 thiss!1504)) index!297 key!932) (size!6100 (_keys!6654 thiss!1504))))))

(declare-fun lt!122886 () Unit!7572)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12132 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3688) Unit!7572)

(assert (=> b!245302 (= lt!122886 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6654 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3685))))

(declare-fun lt!122891 () Unit!7572)

(assert (=> b!245302 (= lt!122891 e!159162)))

(declare-fun c!40940 () Bool)

(assert (=> b!245302 (= c!40940 (arrayContainsKey!0 (_keys!6654 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!10885 () Bool)

(assert (=> mapIsEmpty!10885 mapRes!10885))

(declare-fun b!245303 () Bool)

(declare-fun c!40941 () Bool)

(get-info :version)

(assert (=> b!245303 (= c!40941 ((_ is MissingVacant!1098) lt!122889))))

(declare-fun e!159157 () Bool)

(assert (=> b!245303 (= e!159151 e!159157)))

(declare-fun b!245304 () Bool)

(declare-fun e!159159 () Bool)

(assert (=> b!245304 (= e!159159 tp_is_empty!6417)))

(declare-fun b!245305 () Bool)

(declare-fun e!159155 () Unit!7572)

(declare-fun Unit!7575 () Unit!7572)

(assert (=> b!245305 (= e!159155 Unit!7575)))

(declare-fun lt!122892 () Unit!7572)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!372 (array!12132 array!12130 (_ BitVec 32) (_ BitVec 32) V!8203 V!8203 (_ BitVec 64) Int) Unit!7572)

(assert (=> b!245305 (= lt!122892 (lemmaInListMapThenSeekEntryOrOpenFindsIt!372 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) key!932 (defaultEntry!4540 thiss!1504)))))

(assert (=> b!245305 false))

(declare-fun b!245306 () Bool)

(declare-fun res!120345 () Bool)

(assert (=> b!245306 (=> (not res!120345) (not e!159154))))

(assert (=> b!245306 (= res!120345 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!245307 () Bool)

(assert (=> b!245307 (= e!159157 e!159152)))

(declare-fun res!120344 () Bool)

(assert (=> b!245307 (= res!120344 call!22897)))

(assert (=> b!245307 (=> (not res!120344) (not e!159152))))

(declare-fun mapNonEmpty!10885 () Bool)

(declare-fun tp!22896 () Bool)

(assert (=> mapNonEmpty!10885 (= mapRes!10885 (and tp!22896 e!159159))))

(declare-fun mapValue!10885 () ValueCell!2865)

(declare-fun mapRest!10885 () (Array (_ BitVec 32) ValueCell!2865))

(declare-fun mapKey!10885 () (_ BitVec 32))

(assert (=> mapNonEmpty!10885 (= (arr!5757 (_values!4523 thiss!1504)) (store mapRest!10885 mapKey!10885 mapValue!10885))))

(declare-fun b!245308 () Bool)

(assert (=> b!245308 (= e!159152 (not call!22896))))

(declare-fun b!245309 () Bool)

(assert (=> b!245309 (= e!159150 tp_is_empty!6417)))

(declare-fun b!245310 () Bool)

(declare-fun Unit!7576 () Unit!7572)

(assert (=> b!245310 (= e!159162 Unit!7576)))

(declare-fun lt!122888 () Unit!7572)

(declare-fun lemmaArrayContainsKeyThenInListMap!174 (array!12132 array!12130 (_ BitVec 32) (_ BitVec 32) V!8203 V!8203 (_ BitVec 64) (_ BitVec 32) Int) Unit!7572)

(assert (=> b!245310 (= lt!122888 (lemmaArrayContainsKeyThenInListMap!174 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504)))))

(assert (=> b!245310 false))

(declare-fun bm!22894 () Bool)

(declare-fun c!40942 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22894 (= call!22897 (inRange!0 (ite c!40942 (index!6562 lt!122889) (index!6565 lt!122889)) (mask!10649 thiss!1504)))))

(declare-fun b!245311 () Bool)

(assert (=> b!245311 (= e!159153 e!159149)))

(declare-fun res!120339 () Bool)

(assert (=> b!245311 (=> (not res!120339) (not e!159149))))

(assert (=> b!245311 (= res!120339 (inRange!0 index!297 (mask!10649 thiss!1504)))))

(declare-fun lt!122884 () Unit!7572)

(assert (=> b!245311 (= lt!122884 e!159155)))

(declare-fun c!40943 () Bool)

(declare-datatypes ((tuple2!4782 0))(
  ( (tuple2!4783 (_1!2401 (_ BitVec 64)) (_2!2401 V!8203)) )
))
(declare-datatypes ((List!3689 0))(
  ( (Nil!3686) (Cons!3685 (h!4342 tuple2!4782) (t!8710 List!3689)) )
))
(declare-datatypes ((ListLongMap!3709 0))(
  ( (ListLongMap!3710 (toList!1870 List!3689)) )
))
(declare-fun contains!1772 (ListLongMap!3709 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1393 (array!12132 array!12130 (_ BitVec 32) (_ BitVec 32) V!8203 V!8203 (_ BitVec 32) Int) ListLongMap!3709)

(assert (=> b!245311 (= c!40943 (contains!1772 (getCurrentListMap!1393 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504)) key!932))))

(declare-fun b!245312 () Bool)

(declare-fun lt!122890 () Unit!7572)

(assert (=> b!245312 (= e!159155 lt!122890)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!375 (array!12132 array!12130 (_ BitVec 32) (_ BitVec 32) V!8203 V!8203 (_ BitVec 64) Int) Unit!7572)

(assert (=> b!245312 (= lt!122890 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!375 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) key!932 (defaultEntry!4540 thiss!1504)))))

(assert (=> b!245312 (= c!40942 ((_ is MissingZero!1098) lt!122889))))

(assert (=> b!245312 e!159151))

(declare-fun b!245313 () Bool)

(declare-fun res!120341 () Bool)

(assert (=> b!245313 (=> (not res!120341) (not e!159160))))

(assert (=> b!245313 (= res!120341 (= (select (arr!5758 (_keys!6654 thiss!1504)) (index!6562 lt!122889)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!245314 () Bool)

(assert (=> b!245314 (= e!159157 ((_ is Undefined!1098) lt!122889))))

(assert (= (and start!23342 res!120342) b!245306))

(assert (= (and b!245306 res!120345) b!245300))

(assert (= (and b!245300 res!120343) b!245311))

(assert (= (and b!245311 c!40943) b!245305))

(assert (= (and b!245311 (not c!40943)) b!245312))

(assert (= (and b!245312 c!40942) b!245295))

(assert (= (and b!245312 (not c!40942)) b!245303))

(assert (= (and b!245295 res!120340) b!245313))

(assert (= (and b!245313 res!120341) b!245298))

(assert (= (and b!245303 c!40941) b!245307))

(assert (= (and b!245303 (not c!40941)) b!245314))

(assert (= (and b!245307 res!120344) b!245299))

(assert (= (and b!245299 res!120338) b!245308))

(assert (= (or b!245295 b!245307) bm!22894))

(assert (= (or b!245298 b!245308) bm!22893))

(assert (= (and b!245311 res!120339) b!245302))

(assert (= (and b!245302 c!40940) b!245310))

(assert (= (and b!245302 (not c!40940)) b!245301))

(assert (= (and b!245297 condMapEmpty!10885) mapIsEmpty!10885))

(assert (= (and b!245297 (not condMapEmpty!10885)) mapNonEmpty!10885))

(assert (= (and mapNonEmpty!10885 ((_ is ValueCellFull!2865) mapValue!10885)) b!245304))

(assert (= (and b!245297 ((_ is ValueCellFull!2865) mapDefault!10885)) b!245309))

(assert (= b!245296 b!245297))

(assert (= start!23342 b!245296))

(declare-fun m!262931 () Bool)

(assert (=> mapNonEmpty!10885 m!262931))

(declare-fun m!262933 () Bool)

(assert (=> start!23342 m!262933))

(declare-fun m!262935 () Bool)

(assert (=> b!245300 m!262935))

(declare-fun m!262937 () Bool)

(assert (=> b!245305 m!262937))

(declare-fun m!262939 () Bool)

(assert (=> b!245299 m!262939))

(declare-fun m!262941 () Bool)

(assert (=> bm!22894 m!262941))

(declare-fun m!262943 () Bool)

(assert (=> b!245310 m!262943))

(declare-fun m!262945 () Bool)

(assert (=> b!245311 m!262945))

(declare-fun m!262947 () Bool)

(assert (=> b!245311 m!262947))

(assert (=> b!245311 m!262947))

(declare-fun m!262949 () Bool)

(assert (=> b!245311 m!262949))

(declare-fun m!262951 () Bool)

(assert (=> b!245312 m!262951))

(declare-fun m!262953 () Bool)

(assert (=> b!245302 m!262953))

(declare-fun m!262955 () Bool)

(assert (=> b!245302 m!262955))

(declare-fun m!262957 () Bool)

(assert (=> b!245302 m!262957))

(declare-fun m!262959 () Bool)

(assert (=> b!245302 m!262959))

(declare-fun m!262961 () Bool)

(assert (=> b!245302 m!262961))

(declare-fun m!262963 () Bool)

(assert (=> b!245302 m!262963))

(declare-fun m!262965 () Bool)

(assert (=> b!245302 m!262965))

(declare-fun m!262967 () Bool)

(assert (=> b!245302 m!262967))

(declare-fun m!262969 () Bool)

(assert (=> b!245313 m!262969))

(assert (=> bm!22893 m!262955))

(declare-fun m!262971 () Bool)

(assert (=> b!245296 m!262971))

(declare-fun m!262973 () Bool)

(assert (=> b!245296 m!262973))

(check-sat (not b!245310) (not b_next!6555) (not b!245312) (not b!245296) (not b!245302) (not bm!22893) (not b!245300) (not bm!22894) b_and!13561 (not mapNonEmpty!10885) tp_is_empty!6417 (not b!245311) (not start!23342) (not b!245305))
(check-sat b_and!13561 (not b_next!6555))
(get-model)

(declare-fun d!60097 () Bool)

(declare-fun res!120374 () Bool)

(declare-fun e!159209 () Bool)

(assert (=> d!60097 (=> res!120374 e!159209)))

(assert (=> d!60097 (= res!120374 (= (select (arr!5758 (_keys!6654 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!60097 (= (arrayContainsKey!0 (_keys!6654 thiss!1504) key!932 #b00000000000000000000000000000000) e!159209)))

(declare-fun b!245379 () Bool)

(declare-fun e!159210 () Bool)

(assert (=> b!245379 (= e!159209 e!159210)))

(declare-fun res!120375 () Bool)

(assert (=> b!245379 (=> (not res!120375) (not e!159210))))

(assert (=> b!245379 (= res!120375 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6100 (_keys!6654 thiss!1504))))))

(declare-fun b!245380 () Bool)

(assert (=> b!245380 (= e!159210 (arrayContainsKey!0 (_keys!6654 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60097 (not res!120374)) b!245379))

(assert (= (and b!245379 res!120375) b!245380))

(declare-fun m!263019 () Bool)

(assert (=> d!60097 m!263019))

(declare-fun m!263021 () Bool)

(assert (=> b!245380 m!263021))

(assert (=> bm!22893 d!60097))

(declare-fun d!60099 () Bool)

(assert (=> d!60099 (= (inRange!0 index!297 (mask!10649 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10649 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!245311 d!60099))

(declare-fun d!60101 () Bool)

(declare-fun e!159216 () Bool)

(assert (=> d!60101 e!159216))

(declare-fun res!120378 () Bool)

(assert (=> d!60101 (=> res!120378 e!159216)))

(declare-fun lt!122931 () Bool)

(assert (=> d!60101 (= res!120378 (not lt!122931))))

(declare-fun lt!122929 () Bool)

(assert (=> d!60101 (= lt!122931 lt!122929)))

(declare-fun lt!122928 () Unit!7572)

(declare-fun e!159215 () Unit!7572)

(assert (=> d!60101 (= lt!122928 e!159215)))

(declare-fun c!40958 () Bool)

(assert (=> d!60101 (= c!40958 lt!122929)))

(declare-fun containsKey!279 (List!3689 (_ BitVec 64)) Bool)

(assert (=> d!60101 (= lt!122929 (containsKey!279 (toList!1870 (getCurrentListMap!1393 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504))) key!932))))

(assert (=> d!60101 (= (contains!1772 (getCurrentListMap!1393 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504)) key!932) lt!122931)))

(declare-fun b!245387 () Bool)

(declare-fun lt!122930 () Unit!7572)

(assert (=> b!245387 (= e!159215 lt!122930)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!228 (List!3689 (_ BitVec 64)) Unit!7572)

(assert (=> b!245387 (= lt!122930 (lemmaContainsKeyImpliesGetValueByKeyDefined!228 (toList!1870 (getCurrentListMap!1393 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504))) key!932))))

(declare-datatypes ((Option!293 0))(
  ( (Some!292 (v!5303 V!8203)) (None!291) )
))
(declare-fun isDefined!229 (Option!293) Bool)

(declare-fun getValueByKey!287 (List!3689 (_ BitVec 64)) Option!293)

(assert (=> b!245387 (isDefined!229 (getValueByKey!287 (toList!1870 (getCurrentListMap!1393 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504))) key!932))))

(declare-fun b!245388 () Bool)

(declare-fun Unit!7580 () Unit!7572)

(assert (=> b!245388 (= e!159215 Unit!7580)))

(declare-fun b!245389 () Bool)

(assert (=> b!245389 (= e!159216 (isDefined!229 (getValueByKey!287 (toList!1870 (getCurrentListMap!1393 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504))) key!932)))))

(assert (= (and d!60101 c!40958) b!245387))

(assert (= (and d!60101 (not c!40958)) b!245388))

(assert (= (and d!60101 (not res!120378)) b!245389))

(declare-fun m!263023 () Bool)

(assert (=> d!60101 m!263023))

(declare-fun m!263025 () Bool)

(assert (=> b!245387 m!263025))

(declare-fun m!263027 () Bool)

(assert (=> b!245387 m!263027))

(assert (=> b!245387 m!263027))

(declare-fun m!263029 () Bool)

(assert (=> b!245387 m!263029))

(assert (=> b!245389 m!263027))

(assert (=> b!245389 m!263027))

(assert (=> b!245389 m!263029))

(assert (=> b!245311 d!60101))

(declare-fun d!60103 () Bool)

(declare-fun e!159252 () Bool)

(assert (=> d!60103 e!159252))

(declare-fun res!120402 () Bool)

(assert (=> d!60103 (=> (not res!120402) (not e!159252))))

(assert (=> d!60103 (= res!120402 (or (bvsge #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))))))))

(declare-fun lt!122995 () ListLongMap!3709)

(declare-fun lt!122993 () ListLongMap!3709)

(assert (=> d!60103 (= lt!122995 lt!122993)))

(declare-fun lt!122992 () Unit!7572)

(declare-fun e!159247 () Unit!7572)

(assert (=> d!60103 (= lt!122992 e!159247)))

(declare-fun c!40972 () Bool)

(declare-fun e!159250 () Bool)

(assert (=> d!60103 (= c!40972 e!159250)))

(declare-fun res!120404 () Bool)

(assert (=> d!60103 (=> (not res!120404) (not e!159250))))

(assert (=> d!60103 (= res!120404 (bvslt #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))))))

(declare-fun e!159255 () ListLongMap!3709)

(assert (=> d!60103 (= lt!122993 e!159255)))

(declare-fun c!40975 () Bool)

(assert (=> d!60103 (= c!40975 (and (not (= (bvand (extraKeys!4277 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4277 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!60103 (validMask!0 (mask!10649 thiss!1504))))

(assert (=> d!60103 (= (getCurrentListMap!1393 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504)) lt!122995)))

(declare-fun b!245432 () Bool)

(declare-fun lt!122994 () Unit!7572)

(assert (=> b!245432 (= e!159247 lt!122994)))

(declare-fun lt!122990 () ListLongMap!3709)

(declare-fun getCurrentListMapNoExtraKeys!549 (array!12132 array!12130 (_ BitVec 32) (_ BitVec 32) V!8203 V!8203 (_ BitVec 32) Int) ListLongMap!3709)

(assert (=> b!245432 (= lt!122990 (getCurrentListMapNoExtraKeys!549 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504)))))

(declare-fun lt!122983 () (_ BitVec 64))

(assert (=> b!245432 (= lt!122983 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122985 () (_ BitVec 64))

(assert (=> b!245432 (= lt!122985 (select (arr!5758 (_keys!6654 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122987 () Unit!7572)

(declare-fun addStillContains!206 (ListLongMap!3709 (_ BitVec 64) V!8203 (_ BitVec 64)) Unit!7572)

(assert (=> b!245432 (= lt!122987 (addStillContains!206 lt!122990 lt!122983 (zeroValue!4381 thiss!1504) lt!122985))))

(declare-fun +!652 (ListLongMap!3709 tuple2!4782) ListLongMap!3709)

(assert (=> b!245432 (contains!1772 (+!652 lt!122990 (tuple2!4783 lt!122983 (zeroValue!4381 thiss!1504))) lt!122985)))

(declare-fun lt!122982 () Unit!7572)

(assert (=> b!245432 (= lt!122982 lt!122987)))

(declare-fun lt!122991 () ListLongMap!3709)

(assert (=> b!245432 (= lt!122991 (getCurrentListMapNoExtraKeys!549 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504)))))

(declare-fun lt!122979 () (_ BitVec 64))

(assert (=> b!245432 (= lt!122979 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122986 () (_ BitVec 64))

(assert (=> b!245432 (= lt!122986 (select (arr!5758 (_keys!6654 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122996 () Unit!7572)

(declare-fun addApplyDifferent!206 (ListLongMap!3709 (_ BitVec 64) V!8203 (_ BitVec 64)) Unit!7572)

(assert (=> b!245432 (= lt!122996 (addApplyDifferent!206 lt!122991 lt!122979 (minValue!4381 thiss!1504) lt!122986))))

(declare-fun apply!230 (ListLongMap!3709 (_ BitVec 64)) V!8203)

(assert (=> b!245432 (= (apply!230 (+!652 lt!122991 (tuple2!4783 lt!122979 (minValue!4381 thiss!1504))) lt!122986) (apply!230 lt!122991 lt!122986))))

(declare-fun lt!122997 () Unit!7572)

(assert (=> b!245432 (= lt!122997 lt!122996)))

(declare-fun lt!122976 () ListLongMap!3709)

(assert (=> b!245432 (= lt!122976 (getCurrentListMapNoExtraKeys!549 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504)))))

(declare-fun lt!122980 () (_ BitVec 64))

(assert (=> b!245432 (= lt!122980 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122981 () (_ BitVec 64))

(assert (=> b!245432 (= lt!122981 (select (arr!5758 (_keys!6654 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122988 () Unit!7572)

(assert (=> b!245432 (= lt!122988 (addApplyDifferent!206 lt!122976 lt!122980 (zeroValue!4381 thiss!1504) lt!122981))))

(assert (=> b!245432 (= (apply!230 (+!652 lt!122976 (tuple2!4783 lt!122980 (zeroValue!4381 thiss!1504))) lt!122981) (apply!230 lt!122976 lt!122981))))

(declare-fun lt!122978 () Unit!7572)

(assert (=> b!245432 (= lt!122978 lt!122988)))

(declare-fun lt!122989 () ListLongMap!3709)

(assert (=> b!245432 (= lt!122989 (getCurrentListMapNoExtraKeys!549 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504)))))

(declare-fun lt!122984 () (_ BitVec 64))

(assert (=> b!245432 (= lt!122984 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122977 () (_ BitVec 64))

(assert (=> b!245432 (= lt!122977 (select (arr!5758 (_keys!6654 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!245432 (= lt!122994 (addApplyDifferent!206 lt!122989 lt!122984 (minValue!4381 thiss!1504) lt!122977))))

(assert (=> b!245432 (= (apply!230 (+!652 lt!122989 (tuple2!4783 lt!122984 (minValue!4381 thiss!1504))) lt!122977) (apply!230 lt!122989 lt!122977))))

(declare-fun bm!22915 () Bool)

(declare-fun call!22922 () ListLongMap!3709)

(assert (=> bm!22915 (= call!22922 (getCurrentListMapNoExtraKeys!549 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504)))))

(declare-fun bm!22916 () Bool)

(declare-fun call!22920 () ListLongMap!3709)

(declare-fun call!22919 () ListLongMap!3709)

(assert (=> bm!22916 (= call!22920 call!22919)))

(declare-fun b!245433 () Bool)

(declare-fun c!40971 () Bool)

(assert (=> b!245433 (= c!40971 (and (not (= (bvand (extraKeys!4277 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4277 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!159245 () ListLongMap!3709)

(declare-fun e!159251 () ListLongMap!3709)

(assert (=> b!245433 (= e!159245 e!159251)))

(declare-fun b!245434 () Bool)

(declare-fun call!22921 () ListLongMap!3709)

(assert (=> b!245434 (= e!159251 call!22921)))

(declare-fun b!245435 () Bool)

(assert (=> b!245435 (= e!159245 call!22920)))

(declare-fun bm!22917 () Bool)

(declare-fun call!22924 () ListLongMap!3709)

(assert (=> bm!22917 (= call!22924 call!22922)))

(declare-fun b!245436 () Bool)

(assert (=> b!245436 (= e!159251 call!22920)))

(declare-fun bm!22918 () Bool)

(declare-fun call!22923 () Bool)

(assert (=> bm!22918 (= call!22923 (contains!1772 lt!122995 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!245437 () Bool)

(declare-fun e!159248 () Bool)

(declare-fun get!2955 (ValueCell!2865 V!8203) V!8203)

(declare-fun dynLambda!568 (Int (_ BitVec 64)) V!8203)

(assert (=> b!245437 (= e!159248 (= (apply!230 lt!122995 (select (arr!5758 (_keys!6654 thiss!1504)) #b00000000000000000000000000000000)) (get!2955 (select (arr!5757 (_values!4523 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!568 (defaultEntry!4540 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!245437 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6099 (_values!4523 thiss!1504))))))

(assert (=> b!245437 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))))))

(declare-fun b!245438 () Bool)

(declare-fun Unit!7581 () Unit!7572)

(assert (=> b!245438 (= e!159247 Unit!7581)))

(declare-fun b!245439 () Bool)

(declare-fun e!159243 () Bool)

(assert (=> b!245439 (= e!159252 e!159243)))

(declare-fun c!40973 () Bool)

(assert (=> b!245439 (= c!40973 (not (= (bvand (extraKeys!4277 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!245440 () Bool)

(declare-fun e!159249 () Bool)

(assert (=> b!245440 (= e!159249 (= (apply!230 lt!122995 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4381 thiss!1504)))))

(declare-fun b!245441 () Bool)

(declare-fun e!159244 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!245441 (= e!159244 (validKeyInArray!0 (select (arr!5758 (_keys!6654 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!245442 () Bool)

(declare-fun e!159253 () Bool)

(assert (=> b!245442 (= e!159253 e!159248)))

(declare-fun res!120397 () Bool)

(assert (=> b!245442 (=> (not res!120397) (not e!159248))))

(assert (=> b!245442 (= res!120397 (contains!1772 lt!122995 (select (arr!5758 (_keys!6654 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!245442 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))))))

(declare-fun b!245443 () Bool)

(assert (=> b!245443 (= e!159250 (validKeyInArray!0 (select (arr!5758 (_keys!6654 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!245444 () Bool)

(assert (=> b!245444 (= e!159243 e!159249)))

(declare-fun res!120401 () Bool)

(declare-fun call!22918 () Bool)

(assert (=> b!245444 (= res!120401 call!22918)))

(assert (=> b!245444 (=> (not res!120401) (not e!159249))))

(declare-fun b!245445 () Bool)

(assert (=> b!245445 (= e!159255 e!159245)))

(declare-fun c!40976 () Bool)

(assert (=> b!245445 (= c!40976 (and (not (= (bvand (extraKeys!4277 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4277 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!22919 () Bool)

(assert (=> bm!22919 (= call!22919 (+!652 (ite c!40975 call!22922 (ite c!40976 call!22924 call!22921)) (ite (or c!40975 c!40976) (tuple2!4783 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4381 thiss!1504)) (tuple2!4783 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4381 thiss!1504)))))))

(declare-fun bm!22920 () Bool)

(assert (=> bm!22920 (= call!22918 (contains!1772 lt!122995 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!245446 () Bool)

(assert (=> b!245446 (= e!159255 (+!652 call!22919 (tuple2!4783 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4381 thiss!1504))))))

(declare-fun b!245447 () Bool)

(declare-fun res!120400 () Bool)

(assert (=> b!245447 (=> (not res!120400) (not e!159252))))

(assert (=> b!245447 (= res!120400 e!159253)))

(declare-fun res!120399 () Bool)

(assert (=> b!245447 (=> res!120399 e!159253)))

(assert (=> b!245447 (= res!120399 (not e!159244))))

(declare-fun res!120403 () Bool)

(assert (=> b!245447 (=> (not res!120403) (not e!159244))))

(assert (=> b!245447 (= res!120403 (bvslt #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))))))

(declare-fun b!245448 () Bool)

(declare-fun e!159254 () Bool)

(declare-fun e!159246 () Bool)

(assert (=> b!245448 (= e!159254 e!159246)))

(declare-fun res!120398 () Bool)

(assert (=> b!245448 (= res!120398 call!22923)))

(assert (=> b!245448 (=> (not res!120398) (not e!159246))))

(declare-fun b!245449 () Bool)

(assert (=> b!245449 (= e!159246 (= (apply!230 lt!122995 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4381 thiss!1504)))))

(declare-fun bm!22921 () Bool)

(assert (=> bm!22921 (= call!22921 call!22924)))

(declare-fun b!245450 () Bool)

(assert (=> b!245450 (= e!159243 (not call!22918))))

(declare-fun b!245451 () Bool)

(declare-fun res!120405 () Bool)

(assert (=> b!245451 (=> (not res!120405) (not e!159252))))

(assert (=> b!245451 (= res!120405 e!159254)))

(declare-fun c!40974 () Bool)

(assert (=> b!245451 (= c!40974 (not (= (bvand (extraKeys!4277 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!245452 () Bool)

(assert (=> b!245452 (= e!159254 (not call!22923))))

(assert (= (and d!60103 c!40975) b!245446))

(assert (= (and d!60103 (not c!40975)) b!245445))

(assert (= (and b!245445 c!40976) b!245435))

(assert (= (and b!245445 (not c!40976)) b!245433))

(assert (= (and b!245433 c!40971) b!245436))

(assert (= (and b!245433 (not c!40971)) b!245434))

(assert (= (or b!245436 b!245434) bm!22921))

(assert (= (or b!245435 bm!22921) bm!22917))

(assert (= (or b!245435 b!245436) bm!22916))

(assert (= (or b!245446 bm!22917) bm!22915))

(assert (= (or b!245446 bm!22916) bm!22919))

(assert (= (and d!60103 res!120404) b!245443))

(assert (= (and d!60103 c!40972) b!245432))

(assert (= (and d!60103 (not c!40972)) b!245438))

(assert (= (and d!60103 res!120402) b!245447))

(assert (= (and b!245447 res!120403) b!245441))

(assert (= (and b!245447 (not res!120399)) b!245442))

(assert (= (and b!245442 res!120397) b!245437))

(assert (= (and b!245447 res!120400) b!245451))

(assert (= (and b!245451 c!40974) b!245448))

(assert (= (and b!245451 (not c!40974)) b!245452))

(assert (= (and b!245448 res!120398) b!245449))

(assert (= (or b!245448 b!245452) bm!22918))

(assert (= (and b!245451 res!120405) b!245439))

(assert (= (and b!245439 c!40973) b!245444))

(assert (= (and b!245439 (not c!40973)) b!245450))

(assert (= (and b!245444 res!120401) b!245440))

(assert (= (or b!245444 b!245450) bm!22920))

(declare-fun b_lambda!8053 () Bool)

(assert (=> (not b_lambda!8053) (not b!245437)))

(declare-fun t!8714 () Bool)

(declare-fun tb!2981 () Bool)

(assert (=> (and b!245296 (= (defaultEntry!4540 thiss!1504) (defaultEntry!4540 thiss!1504)) t!8714) tb!2981))

(declare-fun result!5249 () Bool)

(assert (=> tb!2981 (= result!5249 tp_is_empty!6417)))

(assert (=> b!245437 t!8714))

(declare-fun b_and!13565 () Bool)

(assert (= b_and!13561 (and (=> t!8714 result!5249) b_and!13565)))

(declare-fun m!263031 () Bool)

(assert (=> bm!22915 m!263031))

(declare-fun m!263033 () Bool)

(assert (=> b!245432 m!263033))

(declare-fun m!263035 () Bool)

(assert (=> b!245432 m!263035))

(declare-fun m!263037 () Bool)

(assert (=> b!245432 m!263037))

(declare-fun m!263039 () Bool)

(assert (=> b!245432 m!263039))

(assert (=> b!245432 m!263033))

(declare-fun m!263041 () Bool)

(assert (=> b!245432 m!263041))

(assert (=> b!245432 m!263019))

(declare-fun m!263043 () Bool)

(assert (=> b!245432 m!263043))

(declare-fun m!263045 () Bool)

(assert (=> b!245432 m!263045))

(declare-fun m!263047 () Bool)

(assert (=> b!245432 m!263047))

(assert (=> b!245432 m!263043))

(assert (=> b!245432 m!263047))

(declare-fun m!263049 () Bool)

(assert (=> b!245432 m!263049))

(declare-fun m!263051 () Bool)

(assert (=> b!245432 m!263051))

(declare-fun m!263053 () Bool)

(assert (=> b!245432 m!263053))

(declare-fun m!263055 () Bool)

(assert (=> b!245432 m!263055))

(assert (=> b!245432 m!263031))

(declare-fun m!263057 () Bool)

(assert (=> b!245432 m!263057))

(declare-fun m!263059 () Bool)

(assert (=> b!245432 m!263059))

(assert (=> b!245432 m!263037))

(declare-fun m!263061 () Bool)

(assert (=> b!245432 m!263061))

(assert (=> b!245443 m!263019))

(assert (=> b!245443 m!263019))

(declare-fun m!263063 () Bool)

(assert (=> b!245443 m!263063))

(assert (=> b!245441 m!263019))

(assert (=> b!245441 m!263019))

(assert (=> b!245441 m!263063))

(declare-fun m!263065 () Bool)

(assert (=> bm!22920 m!263065))

(declare-fun m!263067 () Bool)

(assert (=> bm!22918 m!263067))

(declare-fun m!263069 () Bool)

(assert (=> b!245446 m!263069))

(declare-fun m!263071 () Bool)

(assert (=> b!245449 m!263071))

(declare-fun m!263073 () Bool)

(assert (=> bm!22919 m!263073))

(declare-fun m!263075 () Bool)

(assert (=> b!245440 m!263075))

(declare-fun m!263077 () Bool)

(assert (=> b!245437 m!263077))

(assert (=> b!245437 m!263077))

(declare-fun m!263079 () Bool)

(assert (=> b!245437 m!263079))

(declare-fun m!263081 () Bool)

(assert (=> b!245437 m!263081))

(assert (=> b!245437 m!263019))

(assert (=> b!245437 m!263079))

(assert (=> b!245437 m!263019))

(declare-fun m!263083 () Bool)

(assert (=> b!245437 m!263083))

(assert (=> b!245442 m!263019))

(assert (=> b!245442 m!263019))

(declare-fun m!263085 () Bool)

(assert (=> b!245442 m!263085))

(assert (=> d!60103 m!262953))

(assert (=> b!245311 d!60103))

(declare-fun b!245471 () Bool)

(declare-fun res!120415 () Bool)

(declare-fun e!159266 () Bool)

(assert (=> b!245471 (=> (not res!120415) (not e!159266))))

(declare-fun call!22929 () Bool)

(assert (=> b!245471 (= res!120415 call!22929)))

(declare-fun e!159264 () Bool)

(assert (=> b!245471 (= e!159264 e!159266)))

(declare-fun lt!123002 () SeekEntryResult!1098)

(declare-fun c!40982 () Bool)

(declare-fun bm!22926 () Bool)

(assert (=> bm!22926 (= call!22929 (inRange!0 (ite c!40982 (index!6562 lt!123002) (index!6565 lt!123002)) (mask!10649 thiss!1504)))))

(declare-fun b!245472 () Bool)

(assert (=> b!245472 (and (bvsge (index!6562 lt!123002) #b00000000000000000000000000000000) (bvslt (index!6562 lt!123002) (size!6100 (_keys!6654 thiss!1504))))))

(declare-fun res!120416 () Bool)

(assert (=> b!245472 (= res!120416 (= (select (arr!5758 (_keys!6654 thiss!1504)) (index!6562 lt!123002)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!159267 () Bool)

(assert (=> b!245472 (=> (not res!120416) (not e!159267))))

(declare-fun b!245473 () Bool)

(declare-fun call!22930 () Bool)

(assert (=> b!245473 (= e!159266 (not call!22930))))

(declare-fun b!245474 () Bool)

(declare-fun e!159265 () Bool)

(assert (=> b!245474 (= e!159265 e!159264)))

(declare-fun c!40981 () Bool)

(assert (=> b!245474 (= c!40981 ((_ is MissingVacant!1098) lt!123002))))

(declare-fun d!60105 () Bool)

(assert (=> d!60105 e!159265))

(assert (=> d!60105 (= c!40982 ((_ is MissingZero!1098) lt!123002))))

(assert (=> d!60105 (= lt!123002 (seekEntryOrOpen!0 key!932 (_keys!6654 thiss!1504) (mask!10649 thiss!1504)))))

(declare-fun lt!123003 () Unit!7572)

(declare-fun choose!1154 (array!12132 array!12130 (_ BitVec 32) (_ BitVec 32) V!8203 V!8203 (_ BitVec 64) Int) Unit!7572)

(assert (=> d!60105 (= lt!123003 (choose!1154 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) key!932 (defaultEntry!4540 thiss!1504)))))

(assert (=> d!60105 (validMask!0 (mask!10649 thiss!1504))))

(assert (=> d!60105 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!375 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) key!932 (defaultEntry!4540 thiss!1504)) lt!123003)))

(declare-fun b!245475 () Bool)

(declare-fun res!120414 () Bool)

(assert (=> b!245475 (=> (not res!120414) (not e!159266))))

(assert (=> b!245475 (= res!120414 (= (select (arr!5758 (_keys!6654 thiss!1504)) (index!6565 lt!123002)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!245475 (and (bvsge (index!6565 lt!123002) #b00000000000000000000000000000000) (bvslt (index!6565 lt!123002) (size!6100 (_keys!6654 thiss!1504))))))

(declare-fun b!245476 () Bool)

(assert (=> b!245476 (= e!159264 ((_ is Undefined!1098) lt!123002))))

(declare-fun b!245477 () Bool)

(assert (=> b!245477 (= e!159267 (not call!22930))))

(declare-fun b!245478 () Bool)

(assert (=> b!245478 (= e!159265 e!159267)))

(declare-fun res!120417 () Bool)

(assert (=> b!245478 (= res!120417 call!22929)))

(assert (=> b!245478 (=> (not res!120417) (not e!159267))))

(declare-fun bm!22927 () Bool)

(assert (=> bm!22927 (= call!22930 (arrayContainsKey!0 (_keys!6654 thiss!1504) key!932 #b00000000000000000000000000000000))))

(assert (= (and d!60105 c!40982) b!245478))

(assert (= (and d!60105 (not c!40982)) b!245474))

(assert (= (and b!245478 res!120417) b!245472))

(assert (= (and b!245472 res!120416) b!245477))

(assert (= (and b!245474 c!40981) b!245471))

(assert (= (and b!245474 (not c!40981)) b!245476))

(assert (= (and b!245471 res!120415) b!245475))

(assert (= (and b!245475 res!120414) b!245473))

(assert (= (or b!245478 b!245471) bm!22926))

(assert (= (or b!245477 b!245473) bm!22927))

(assert (=> d!60105 m!262935))

(declare-fun m!263087 () Bool)

(assert (=> d!60105 m!263087))

(assert (=> d!60105 m!262953))

(declare-fun m!263089 () Bool)

(assert (=> bm!22926 m!263089))

(declare-fun m!263091 () Bool)

(assert (=> b!245472 m!263091))

(assert (=> bm!22927 m!262955))

(declare-fun m!263093 () Bool)

(assert (=> b!245475 m!263093))

(assert (=> b!245312 d!60105))

(declare-fun b!245491 () Bool)

(declare-fun e!159275 () SeekEntryResult!1098)

(declare-fun lt!123012 () SeekEntryResult!1098)

(assert (=> b!245491 (= e!159275 (Found!1098 (index!6564 lt!123012)))))

(declare-fun b!245492 () Bool)

(declare-fun e!159276 () SeekEntryResult!1098)

(assert (=> b!245492 (= e!159276 (MissingZero!1098 (index!6564 lt!123012)))))

(declare-fun b!245493 () Bool)

(declare-fun e!159274 () SeekEntryResult!1098)

(assert (=> b!245493 (= e!159274 e!159275)))

(declare-fun lt!123010 () (_ BitVec 64))

(assert (=> b!245493 (= lt!123010 (select (arr!5758 (_keys!6654 thiss!1504)) (index!6564 lt!123012)))))

(declare-fun c!40989 () Bool)

(assert (=> b!245493 (= c!40989 (= lt!123010 key!932))))

(declare-fun b!245494 () Bool)

(declare-fun c!40991 () Bool)

(assert (=> b!245494 (= c!40991 (= lt!123010 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!245494 (= e!159275 e!159276)))

(declare-fun d!60107 () Bool)

(declare-fun lt!123011 () SeekEntryResult!1098)

(assert (=> d!60107 (and (or ((_ is Undefined!1098) lt!123011) (not ((_ is Found!1098) lt!123011)) (and (bvsge (index!6563 lt!123011) #b00000000000000000000000000000000) (bvslt (index!6563 lt!123011) (size!6100 (_keys!6654 thiss!1504))))) (or ((_ is Undefined!1098) lt!123011) ((_ is Found!1098) lt!123011) (not ((_ is MissingZero!1098) lt!123011)) (and (bvsge (index!6562 lt!123011) #b00000000000000000000000000000000) (bvslt (index!6562 lt!123011) (size!6100 (_keys!6654 thiss!1504))))) (or ((_ is Undefined!1098) lt!123011) ((_ is Found!1098) lt!123011) ((_ is MissingZero!1098) lt!123011) (not ((_ is MissingVacant!1098) lt!123011)) (and (bvsge (index!6565 lt!123011) #b00000000000000000000000000000000) (bvslt (index!6565 lt!123011) (size!6100 (_keys!6654 thiss!1504))))) (or ((_ is Undefined!1098) lt!123011) (ite ((_ is Found!1098) lt!123011) (= (select (arr!5758 (_keys!6654 thiss!1504)) (index!6563 lt!123011)) key!932) (ite ((_ is MissingZero!1098) lt!123011) (= (select (arr!5758 (_keys!6654 thiss!1504)) (index!6562 lt!123011)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1098) lt!123011) (= (select (arr!5758 (_keys!6654 thiss!1504)) (index!6565 lt!123011)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!60107 (= lt!123011 e!159274)))

(declare-fun c!40990 () Bool)

(assert (=> d!60107 (= c!40990 (and ((_ is Intermediate!1098) lt!123012) (undefined!1910 lt!123012)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12132 (_ BitVec 32)) SeekEntryResult!1098)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!60107 (= lt!123012 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10649 thiss!1504)) key!932 (_keys!6654 thiss!1504) (mask!10649 thiss!1504)))))

(assert (=> d!60107 (validMask!0 (mask!10649 thiss!1504))))

(assert (=> d!60107 (= (seekEntryOrOpen!0 key!932 (_keys!6654 thiss!1504) (mask!10649 thiss!1504)) lt!123011)))

(declare-fun b!245495 () Bool)

(assert (=> b!245495 (= e!159274 Undefined!1098)))

(declare-fun b!245496 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12132 (_ BitVec 32)) SeekEntryResult!1098)

(assert (=> b!245496 (= e!159276 (seekKeyOrZeroReturnVacant!0 (x!24428 lt!123012) (index!6564 lt!123012) (index!6564 lt!123012) key!932 (_keys!6654 thiss!1504) (mask!10649 thiss!1504)))))

(assert (= (and d!60107 c!40990) b!245495))

(assert (= (and d!60107 (not c!40990)) b!245493))

(assert (= (and b!245493 c!40989) b!245491))

(assert (= (and b!245493 (not c!40989)) b!245494))

(assert (= (and b!245494 c!40991) b!245492))

(assert (= (and b!245494 (not c!40991)) b!245496))

(declare-fun m!263095 () Bool)

(assert (=> b!245493 m!263095))

(declare-fun m!263097 () Bool)

(assert (=> d!60107 m!263097))

(declare-fun m!263099 () Bool)

(assert (=> d!60107 m!263099))

(assert (=> d!60107 m!263097))

(declare-fun m!263101 () Bool)

(assert (=> d!60107 m!263101))

(assert (=> d!60107 m!262953))

(declare-fun m!263103 () Bool)

(assert (=> d!60107 m!263103))

(declare-fun m!263105 () Bool)

(assert (=> d!60107 m!263105))

(declare-fun m!263107 () Bool)

(assert (=> b!245496 m!263107))

(assert (=> b!245300 d!60107))

(declare-fun d!60109 () Bool)

(declare-fun res!120424 () Bool)

(declare-fun e!159279 () Bool)

(assert (=> d!60109 (=> (not res!120424) (not e!159279))))

(declare-fun simpleValid!252 (LongMapFixedSize!3630) Bool)

(assert (=> d!60109 (= res!120424 (simpleValid!252 thiss!1504))))

(assert (=> d!60109 (= (valid!1412 thiss!1504) e!159279)))

(declare-fun b!245503 () Bool)

(declare-fun res!120425 () Bool)

(assert (=> b!245503 (=> (not res!120425) (not e!159279))))

(assert (=> b!245503 (= res!120425 (= (arrayCountValidKeys!0 (_keys!6654 thiss!1504) #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))) (_size!1864 thiss!1504)))))

(declare-fun b!245504 () Bool)

(declare-fun res!120426 () Bool)

(assert (=> b!245504 (=> (not res!120426) (not e!159279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12132 (_ BitVec 32)) Bool)

(assert (=> b!245504 (= res!120426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6654 thiss!1504) (mask!10649 thiss!1504)))))

(declare-fun b!245505 () Bool)

(assert (=> b!245505 (= e!159279 (arrayNoDuplicates!0 (_keys!6654 thiss!1504) #b00000000000000000000000000000000 Nil!3685))))

(assert (= (and d!60109 res!120424) b!245503))

(assert (= (and b!245503 res!120425) b!245504))

(assert (= (and b!245504 res!120426) b!245505))

(declare-fun m!263109 () Bool)

(assert (=> d!60109 m!263109))

(assert (=> b!245503 m!262961))

(declare-fun m!263111 () Bool)

(assert (=> b!245504 m!263111))

(declare-fun m!263113 () Bool)

(assert (=> b!245505 m!263113))

(assert (=> start!23342 d!60109))

(declare-fun d!60111 () Bool)

(assert (=> d!60111 (= (array_inv!3795 (_keys!6654 thiss!1504)) (bvsge (size!6100 (_keys!6654 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!245296 d!60111))

(declare-fun d!60113 () Bool)

(assert (=> d!60113 (= (array_inv!3796 (_values!4523 thiss!1504)) (bvsge (size!6099 (_values!4523 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!245296 d!60113))

(declare-fun d!60115 () Bool)

(declare-fun e!159282 () Bool)

(assert (=> d!60115 e!159282))

(declare-fun res!120432 () Bool)

(assert (=> d!60115 (=> (not res!120432) (not e!159282))))

(declare-fun lt!123017 () SeekEntryResult!1098)

(assert (=> d!60115 (= res!120432 ((_ is Found!1098) lt!123017))))

(assert (=> d!60115 (= lt!123017 (seekEntryOrOpen!0 key!932 (_keys!6654 thiss!1504) (mask!10649 thiss!1504)))))

(declare-fun lt!123018 () Unit!7572)

(declare-fun choose!1155 (array!12132 array!12130 (_ BitVec 32) (_ BitVec 32) V!8203 V!8203 (_ BitVec 64) Int) Unit!7572)

(assert (=> d!60115 (= lt!123018 (choose!1155 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) key!932 (defaultEntry!4540 thiss!1504)))))

(assert (=> d!60115 (validMask!0 (mask!10649 thiss!1504))))

(assert (=> d!60115 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!372 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) key!932 (defaultEntry!4540 thiss!1504)) lt!123018)))

(declare-fun b!245510 () Bool)

(declare-fun res!120431 () Bool)

(assert (=> b!245510 (=> (not res!120431) (not e!159282))))

(assert (=> b!245510 (= res!120431 (inRange!0 (index!6563 lt!123017) (mask!10649 thiss!1504)))))

(declare-fun b!245511 () Bool)

(assert (=> b!245511 (= e!159282 (= (select (arr!5758 (_keys!6654 thiss!1504)) (index!6563 lt!123017)) key!932))))

(assert (=> b!245511 (and (bvsge (index!6563 lt!123017) #b00000000000000000000000000000000) (bvslt (index!6563 lt!123017) (size!6100 (_keys!6654 thiss!1504))))))

(assert (= (and d!60115 res!120432) b!245510))

(assert (= (and b!245510 res!120431) b!245511))

(assert (=> d!60115 m!262935))

(declare-fun m!263115 () Bool)

(assert (=> d!60115 m!263115))

(assert (=> d!60115 m!262953))

(declare-fun m!263117 () Bool)

(assert (=> b!245510 m!263117))

(declare-fun m!263119 () Bool)

(assert (=> b!245511 m!263119))

(assert (=> b!245305 d!60115))

(declare-fun d!60117 () Bool)

(assert (=> d!60117 (contains!1772 (getCurrentListMap!1393 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504)) key!932)))

(declare-fun lt!123021 () Unit!7572)

(declare-fun choose!1156 (array!12132 array!12130 (_ BitVec 32) (_ BitVec 32) V!8203 V!8203 (_ BitVec 64) (_ BitVec 32) Int) Unit!7572)

(assert (=> d!60117 (= lt!123021 (choose!1156 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504)))))

(assert (=> d!60117 (validMask!0 (mask!10649 thiss!1504))))

(assert (=> d!60117 (= (lemmaArrayContainsKeyThenInListMap!174 (_keys!6654 thiss!1504) (_values!4523 thiss!1504) (mask!10649 thiss!1504) (extraKeys!4277 thiss!1504) (zeroValue!4381 thiss!1504) (minValue!4381 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4540 thiss!1504)) lt!123021)))

(declare-fun bs!8892 () Bool)

(assert (= bs!8892 d!60117))

(assert (=> bs!8892 m!262947))

(assert (=> bs!8892 m!262947))

(assert (=> bs!8892 m!262949))

(declare-fun m!263121 () Bool)

(assert (=> bs!8892 m!263121))

(assert (=> bs!8892 m!262953))

(assert (=> b!245310 d!60117))

(declare-fun b!245522 () Bool)

(declare-fun e!159288 () Bool)

(assert (=> b!245522 (= e!159288 (bvslt (size!6100 (_keys!6654 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!245521 () Bool)

(declare-fun res!120441 () Bool)

(assert (=> b!245521 (=> (not res!120441) (not e!159288))))

(assert (=> b!245521 (= res!120441 (validKeyInArray!0 key!932))))

(declare-fun d!60119 () Bool)

(declare-fun e!159287 () Bool)

(assert (=> d!60119 e!159287))

(declare-fun res!120442 () Bool)

(assert (=> d!60119 (=> (not res!120442) (not e!159287))))

(assert (=> d!60119 (= res!120442 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6100 (_keys!6654 thiss!1504)))))))

(declare-fun lt!123024 () Unit!7572)

(declare-fun choose!1 (array!12132 (_ BitVec 32) (_ BitVec 64)) Unit!7572)

(assert (=> d!60119 (= lt!123024 (choose!1 (_keys!6654 thiss!1504) index!297 key!932))))

(assert (=> d!60119 e!159288))

(declare-fun res!120444 () Bool)

(assert (=> d!60119 (=> (not res!120444) (not e!159288))))

(assert (=> d!60119 (= res!120444 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6100 (_keys!6654 thiss!1504)))))))

(assert (=> d!60119 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6654 thiss!1504) index!297 key!932) lt!123024)))

(declare-fun b!245523 () Bool)

(assert (=> b!245523 (= e!159287 (= (arrayCountValidKeys!0 (array!12133 (store (arr!5758 (_keys!6654 thiss!1504)) index!297 key!932) (size!6100 (_keys!6654 thiss!1504))) #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6654 thiss!1504) #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!245520 () Bool)

(declare-fun res!120443 () Bool)

(assert (=> b!245520 (=> (not res!120443) (not e!159288))))

(assert (=> b!245520 (= res!120443 (not (validKeyInArray!0 (select (arr!5758 (_keys!6654 thiss!1504)) index!297))))))

(assert (= (and d!60119 res!120444) b!245520))

(assert (= (and b!245520 res!120443) b!245521))

(assert (= (and b!245521 res!120441) b!245522))

(assert (= (and d!60119 res!120442) b!245523))

(declare-fun m!263123 () Bool)

(assert (=> b!245521 m!263123))

(declare-fun m!263125 () Bool)

(assert (=> d!60119 m!263125))

(assert (=> b!245523 m!262965))

(declare-fun m!263127 () Bool)

(assert (=> b!245523 m!263127))

(assert (=> b!245523 m!262961))

(declare-fun m!263129 () Bool)

(assert (=> b!245520 m!263129))

(assert (=> b!245520 m!263129))

(declare-fun m!263131 () Bool)

(assert (=> b!245520 m!263131))

(assert (=> b!245302 d!60119))

(declare-fun b!245532 () Bool)

(declare-fun e!159294 () (_ BitVec 32))

(declare-fun call!22933 () (_ BitVec 32))

(assert (=> b!245532 (= e!159294 call!22933)))

(declare-fun b!245533 () Bool)

(assert (=> b!245533 (= e!159294 (bvadd #b00000000000000000000000000000001 call!22933))))

(declare-fun d!60121 () Bool)

(declare-fun lt!123027 () (_ BitVec 32))

(assert (=> d!60121 (and (bvsge lt!123027 #b00000000000000000000000000000000) (bvsle lt!123027 (bvsub (size!6100 (_keys!6654 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!159293 () (_ BitVec 32))

(assert (=> d!60121 (= lt!123027 e!159293)))

(declare-fun c!40996 () Bool)

(assert (=> d!60121 (= c!40996 (bvsge #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))))))

(assert (=> d!60121 (and (bvsle #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6100 (_keys!6654 thiss!1504)) (size!6100 (_keys!6654 thiss!1504))))))

(assert (=> d!60121 (= (arrayCountValidKeys!0 (_keys!6654 thiss!1504) #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))) lt!123027)))

(declare-fun bm!22930 () Bool)

(assert (=> bm!22930 (= call!22933 (arrayCountValidKeys!0 (_keys!6654 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6100 (_keys!6654 thiss!1504))))))

(declare-fun b!245534 () Bool)

(assert (=> b!245534 (= e!159293 e!159294)))

(declare-fun c!40997 () Bool)

(assert (=> b!245534 (= c!40997 (validKeyInArray!0 (select (arr!5758 (_keys!6654 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!245535 () Bool)

(assert (=> b!245535 (= e!159293 #b00000000000000000000000000000000)))

(assert (= (and d!60121 c!40996) b!245535))

(assert (= (and d!60121 (not c!40996)) b!245534))

(assert (= (and b!245534 c!40997) b!245533))

(assert (= (and b!245534 (not c!40997)) b!245532))

(assert (= (or b!245533 b!245532) bm!22930))

(declare-fun m!263133 () Bool)

(assert (=> bm!22930 m!263133))

(assert (=> b!245534 m!263019))

(assert (=> b!245534 m!263019))

(assert (=> b!245534 m!263063))

(assert (=> b!245302 d!60121))

(declare-fun d!60123 () Bool)

(assert (=> d!60123 (= (validMask!0 (mask!10649 thiss!1504)) (and (or (= (mask!10649 thiss!1504) #b00000000000000000000000000000111) (= (mask!10649 thiss!1504) #b00000000000000000000000000001111) (= (mask!10649 thiss!1504) #b00000000000000000000000000011111) (= (mask!10649 thiss!1504) #b00000000000000000000000000111111) (= (mask!10649 thiss!1504) #b00000000000000000000000001111111) (= (mask!10649 thiss!1504) #b00000000000000000000000011111111) (= (mask!10649 thiss!1504) #b00000000000000000000000111111111) (= (mask!10649 thiss!1504) #b00000000000000000000001111111111) (= (mask!10649 thiss!1504) #b00000000000000000000011111111111) (= (mask!10649 thiss!1504) #b00000000000000000000111111111111) (= (mask!10649 thiss!1504) #b00000000000000000001111111111111) (= (mask!10649 thiss!1504) #b00000000000000000011111111111111) (= (mask!10649 thiss!1504) #b00000000000000000111111111111111) (= (mask!10649 thiss!1504) #b00000000000000001111111111111111) (= (mask!10649 thiss!1504) #b00000000000000011111111111111111) (= (mask!10649 thiss!1504) #b00000000000000111111111111111111) (= (mask!10649 thiss!1504) #b00000000000001111111111111111111) (= (mask!10649 thiss!1504) #b00000000000011111111111111111111) (= (mask!10649 thiss!1504) #b00000000000111111111111111111111) (= (mask!10649 thiss!1504) #b00000000001111111111111111111111) (= (mask!10649 thiss!1504) #b00000000011111111111111111111111) (= (mask!10649 thiss!1504) #b00000000111111111111111111111111) (= (mask!10649 thiss!1504) #b00000001111111111111111111111111) (= (mask!10649 thiss!1504) #b00000011111111111111111111111111) (= (mask!10649 thiss!1504) #b00000111111111111111111111111111) (= (mask!10649 thiss!1504) #b00001111111111111111111111111111) (= (mask!10649 thiss!1504) #b00011111111111111111111111111111) (= (mask!10649 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10649 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!245302 d!60123))

(declare-fun b!245546 () Bool)

(declare-fun e!159303 () Bool)

(declare-fun e!159306 () Bool)

(assert (=> b!245546 (= e!159303 e!159306)))

(declare-fun c!41000 () Bool)

(assert (=> b!245546 (= c!41000 (validKeyInArray!0 (select (arr!5758 lt!122885) #b00000000000000000000000000000000)))))

(declare-fun b!245547 () Bool)

(declare-fun call!22936 () Bool)

(assert (=> b!245547 (= e!159306 call!22936)))

(declare-fun b!245548 () Bool)

(declare-fun e!159304 () Bool)

(declare-fun contains!1774 (List!3688 (_ BitVec 64)) Bool)

(assert (=> b!245548 (= e!159304 (contains!1774 Nil!3685 (select (arr!5758 lt!122885) #b00000000000000000000000000000000)))))

(declare-fun d!60125 () Bool)

(declare-fun res!120451 () Bool)

(declare-fun e!159305 () Bool)

(assert (=> d!60125 (=> res!120451 e!159305)))

(assert (=> d!60125 (= res!120451 (bvsge #b00000000000000000000000000000000 (size!6100 lt!122885)))))

(assert (=> d!60125 (= (arrayNoDuplicates!0 lt!122885 #b00000000000000000000000000000000 Nil!3685) e!159305)))

(declare-fun bm!22933 () Bool)

(assert (=> bm!22933 (= call!22936 (arrayNoDuplicates!0 lt!122885 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41000 (Cons!3684 (select (arr!5758 lt!122885) #b00000000000000000000000000000000) Nil!3685) Nil!3685)))))

(declare-fun b!245549 () Bool)

(assert (=> b!245549 (= e!159305 e!159303)))

(declare-fun res!120452 () Bool)

(assert (=> b!245549 (=> (not res!120452) (not e!159303))))

(assert (=> b!245549 (= res!120452 (not e!159304))))

(declare-fun res!120453 () Bool)

(assert (=> b!245549 (=> (not res!120453) (not e!159304))))

(assert (=> b!245549 (= res!120453 (validKeyInArray!0 (select (arr!5758 lt!122885) #b00000000000000000000000000000000)))))

(declare-fun b!245550 () Bool)

(assert (=> b!245550 (= e!159306 call!22936)))

(assert (= (and d!60125 (not res!120451)) b!245549))

(assert (= (and b!245549 res!120453) b!245548))

(assert (= (and b!245549 res!120452) b!245546))

(assert (= (and b!245546 c!41000) b!245550))

(assert (= (and b!245546 (not c!41000)) b!245547))

(assert (= (or b!245550 b!245547) bm!22933))

(declare-fun m!263135 () Bool)

(assert (=> b!245546 m!263135))

(assert (=> b!245546 m!263135))

(declare-fun m!263137 () Bool)

(assert (=> b!245546 m!263137))

(assert (=> b!245548 m!263135))

(assert (=> b!245548 m!263135))

(declare-fun m!263139 () Bool)

(assert (=> b!245548 m!263139))

(assert (=> bm!22933 m!263135))

(declare-fun m!263141 () Bool)

(assert (=> bm!22933 m!263141))

(assert (=> b!245549 m!263135))

(assert (=> b!245549 m!263135))

(assert (=> b!245549 m!263137))

(assert (=> b!245302 d!60125))

(declare-fun d!60127 () Bool)

(declare-fun e!159309 () Bool)

(assert (=> d!60127 e!159309))

(declare-fun res!120456 () Bool)

(assert (=> d!60127 (=> (not res!120456) (not e!159309))))

(assert (=> d!60127 (= res!120456 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6100 (_keys!6654 thiss!1504)))))))

(declare-fun lt!123030 () Unit!7572)

(declare-fun choose!41 (array!12132 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3688) Unit!7572)

(assert (=> d!60127 (= lt!123030 (choose!41 (_keys!6654 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3685))))

(assert (=> d!60127 (bvslt (size!6100 (_keys!6654 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!60127 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6654 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3685) lt!123030)))

(declare-fun b!245553 () Bool)

(assert (=> b!245553 (= e!159309 (arrayNoDuplicates!0 (array!12133 (store (arr!5758 (_keys!6654 thiss!1504)) index!297 key!932) (size!6100 (_keys!6654 thiss!1504))) #b00000000000000000000000000000000 Nil!3685))))

(assert (= (and d!60127 res!120456) b!245553))

(declare-fun m!263143 () Bool)

(assert (=> d!60127 m!263143))

(assert (=> b!245553 m!262965))

(declare-fun m!263145 () Bool)

(assert (=> b!245553 m!263145))

(assert (=> b!245302 d!60127))

(declare-fun b!245554 () Bool)

(declare-fun e!159311 () (_ BitVec 32))

(declare-fun call!22937 () (_ BitVec 32))

(assert (=> b!245554 (= e!159311 call!22937)))

(declare-fun b!245555 () Bool)

(assert (=> b!245555 (= e!159311 (bvadd #b00000000000000000000000000000001 call!22937))))

(declare-fun d!60129 () Bool)

(declare-fun lt!123031 () (_ BitVec 32))

(assert (=> d!60129 (and (bvsge lt!123031 #b00000000000000000000000000000000) (bvsle lt!123031 (bvsub (size!6100 lt!122885) #b00000000000000000000000000000000)))))

(declare-fun e!159310 () (_ BitVec 32))

(assert (=> d!60129 (= lt!123031 e!159310)))

(declare-fun c!41001 () Bool)

(assert (=> d!60129 (= c!41001 (bvsge #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))))))

(assert (=> d!60129 (and (bvsle #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6100 (_keys!6654 thiss!1504)) (size!6100 lt!122885)))))

(assert (=> d!60129 (= (arrayCountValidKeys!0 lt!122885 #b00000000000000000000000000000000 (size!6100 (_keys!6654 thiss!1504))) lt!123031)))

(declare-fun bm!22934 () Bool)

(assert (=> bm!22934 (= call!22937 (arrayCountValidKeys!0 lt!122885 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6100 (_keys!6654 thiss!1504))))))

(declare-fun b!245556 () Bool)

(assert (=> b!245556 (= e!159310 e!159311)))

(declare-fun c!41002 () Bool)

(assert (=> b!245556 (= c!41002 (validKeyInArray!0 (select (arr!5758 lt!122885) #b00000000000000000000000000000000)))))

(declare-fun b!245557 () Bool)

(assert (=> b!245557 (= e!159310 #b00000000000000000000000000000000)))

(assert (= (and d!60129 c!41001) b!245557))

(assert (= (and d!60129 (not c!41001)) b!245556))

(assert (= (and b!245556 c!41002) b!245555))

(assert (= (and b!245556 (not c!41002)) b!245554))

(assert (= (or b!245555 b!245554) bm!22934))

(declare-fun m!263147 () Bool)

(assert (=> bm!22934 m!263147))

(assert (=> b!245556 m!263135))

(assert (=> b!245556 m!263135))

(assert (=> b!245556 m!263137))

(assert (=> b!245302 d!60129))

(assert (=> b!245302 d!60097))

(declare-fun d!60131 () Bool)

(assert (=> d!60131 (= (inRange!0 (ite c!40942 (index!6562 lt!122889) (index!6565 lt!122889)) (mask!10649 thiss!1504)) (and (bvsge (ite c!40942 (index!6562 lt!122889) (index!6565 lt!122889)) #b00000000000000000000000000000000) (bvslt (ite c!40942 (index!6562 lt!122889) (index!6565 lt!122889)) (bvadd (mask!10649 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!22894 d!60131))

(declare-fun b!245565 () Bool)

(declare-fun e!159316 () Bool)

(assert (=> b!245565 (= e!159316 tp_is_empty!6417)))

(declare-fun b!245564 () Bool)

(declare-fun e!159317 () Bool)

(assert (=> b!245564 (= e!159317 tp_is_empty!6417)))

(declare-fun mapIsEmpty!10891 () Bool)

(declare-fun mapRes!10891 () Bool)

(assert (=> mapIsEmpty!10891 mapRes!10891))

(declare-fun condMapEmpty!10891 () Bool)

(declare-fun mapDefault!10891 () ValueCell!2865)

(assert (=> mapNonEmpty!10885 (= condMapEmpty!10891 (= mapRest!10885 ((as const (Array (_ BitVec 32) ValueCell!2865)) mapDefault!10891)))))

(assert (=> mapNonEmpty!10885 (= tp!22896 (and e!159316 mapRes!10891))))

(declare-fun mapNonEmpty!10891 () Bool)

(declare-fun tp!22906 () Bool)

(assert (=> mapNonEmpty!10891 (= mapRes!10891 (and tp!22906 e!159317))))

(declare-fun mapKey!10891 () (_ BitVec 32))

(declare-fun mapValue!10891 () ValueCell!2865)

(declare-fun mapRest!10891 () (Array (_ BitVec 32) ValueCell!2865))

(assert (=> mapNonEmpty!10891 (= mapRest!10885 (store mapRest!10891 mapKey!10891 mapValue!10891))))

(assert (= (and mapNonEmpty!10885 condMapEmpty!10891) mapIsEmpty!10891))

(assert (= (and mapNonEmpty!10885 (not condMapEmpty!10891)) mapNonEmpty!10891))

(assert (= (and mapNonEmpty!10891 ((_ is ValueCellFull!2865) mapValue!10891)) b!245564))

(assert (= (and mapNonEmpty!10885 ((_ is ValueCellFull!2865) mapDefault!10891)) b!245565))

(declare-fun m!263149 () Bool)

(assert (=> mapNonEmpty!10891 m!263149))

(declare-fun b_lambda!8055 () Bool)

(assert (= b_lambda!8053 (or (and b!245296 b_free!6555) b_lambda!8055)))

(check-sat (not bm!22919) (not b!245534) (not b!245553) (not d!60105) (not b!245549) (not b!245521) (not bm!22926) (not bm!22920) (not b!245437) (not b!245523) (not mapNonEmpty!10891) (not b!245520) (not b!245389) (not bm!22927) (not b!245510) (not b!245443) (not bm!22918) (not b!245449) (not b_next!6555) (not b!245387) (not b!245504) (not b!245446) (not b!245432) (not b!245496) (not b!245503) (not b!245380) (not bm!22933) (not d!60101) (not bm!22915) tp_is_empty!6417 (not d!60117) (not d!60103) (not b!245440) (not b!245556) (not b!245548) (not bm!22930) (not b_lambda!8055) (not bm!22934) (not b!245442) (not d!60119) (not b!245441) (not b!245505) (not d!60127) (not d!60115) (not d!60107) (not b!245546) b_and!13565 (not d!60109))
(check-sat b_and!13565 (not b_next!6555))
