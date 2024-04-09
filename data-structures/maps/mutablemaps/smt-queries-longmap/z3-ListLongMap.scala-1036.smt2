; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21912 () Bool)

(assert start!21912)

(declare-fun b!221963 () Bool)

(declare-fun b_free!5967 () Bool)

(declare-fun b_next!5967 () Bool)

(assert (=> b!221963 (= b_free!5967 (not b_next!5967))))

(declare-fun tp!21043 () Bool)

(declare-fun b_and!12883 () Bool)

(assert (=> b!221963 (= tp!21043 b_and!12883)))

(declare-fun b!221948 () Bool)

(declare-fun e!144245 () Bool)

(declare-fun e!144250 () Bool)

(assert (=> b!221948 (= e!144245 e!144250)))

(declare-fun res!108943 () Bool)

(declare-fun call!20734 () Bool)

(assert (=> b!221948 (= res!108943 call!20734)))

(assert (=> b!221948 (=> (not res!108943) (not e!144250))))

(declare-datatypes ((V!7419 0))(
  ( (V!7420 (val!2959 Int)) )
))
(declare-datatypes ((ValueCell!2571 0))(
  ( (ValueCellFull!2571 (v!4975 V!7419)) (EmptyCell!2571) )
))
(declare-datatypes ((array!10900 0))(
  ( (array!10901 (arr!5169 (Array (_ BitVec 32) ValueCell!2571)) (size!5502 (_ BitVec 32))) )
))
(declare-datatypes ((array!10902 0))(
  ( (array!10903 (arr!5170 (Array (_ BitVec 32) (_ BitVec 64))) (size!5503 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3042 0))(
  ( (LongMapFixedSize!3043 (defaultEntry!4180 Int) (mask!9996 (_ BitVec 32)) (extraKeys!3917 (_ BitVec 32)) (zeroValue!4021 V!7419) (minValue!4021 V!7419) (_size!1570 (_ BitVec 32)) (_keys!6234 array!10902) (_values!4163 array!10900) (_vacant!1570 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3042)

(declare-fun bm!20730 () Bool)

(declare-fun c!36879 () Bool)

(declare-datatypes ((SeekEntryResult!842 0))(
  ( (MissingZero!842 (index!5538 (_ BitVec 32))) (Found!842 (index!5539 (_ BitVec 32))) (Intermediate!842 (undefined!1654 Bool) (index!5540 (_ BitVec 32)) (x!23046 (_ BitVec 32))) (Undefined!842) (MissingVacant!842 (index!5541 (_ BitVec 32))) )
))
(declare-fun lt!112565 () SeekEntryResult!842)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20730 (= call!20734 (inRange!0 (ite c!36879 (index!5538 lt!112565) (index!5541 lt!112565)) (mask!9996 thiss!1504)))))

(declare-fun b!221950 () Bool)

(declare-datatypes ((Unit!6640 0))(
  ( (Unit!6641) )
))
(declare-fun e!144255 () Unit!6640)

(declare-fun Unit!6642 () Unit!6640)

(assert (=> b!221950 (= e!144255 Unit!6642)))

(declare-fun lt!112567 () Unit!6640)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!56 (array!10902 array!10900 (_ BitVec 32) (_ BitVec 32) V!7419 V!7419 (_ BitVec 64) (_ BitVec 32) Int) Unit!6640)

(assert (=> b!221950 (= lt!112567 (lemmaArrayContainsKeyThenInListMap!56 (_keys!6234 thiss!1504) (_values!4163 thiss!1504) (mask!9996 thiss!1504) (extraKeys!3917 thiss!1504) (zeroValue!4021 thiss!1504) (minValue!4021 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4180 thiss!1504)))))

(assert (=> b!221950 false))

(declare-fun b!221951 () Bool)

(declare-fun e!144261 () Bool)

(declare-datatypes ((List!3316 0))(
  ( (Nil!3313) (Cons!3312 (h!3960 (_ BitVec 64)) (t!8283 List!3316)) )
))
(declare-fun contains!1515 (List!3316 (_ BitVec 64)) Bool)

(assert (=> b!221951 (= e!144261 (contains!1515 Nil!3313 key!932))))

(declare-fun b!221952 () Bool)

(declare-fun res!108948 () Bool)

(declare-fun e!144246 () Bool)

(assert (=> b!221952 (=> (not res!108948) (not e!144246))))

(assert (=> b!221952 (= res!108948 (= (select (arr!5170 (_keys!6234 thiss!1504)) (index!5538 lt!112565)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!221953 () Bool)

(declare-fun e!144249 () Bool)

(assert (=> b!221953 (= e!144249 false)))

(declare-fun lt!112569 () Bool)

(declare-fun arrayNoDuplicates!0 (array!10902 (_ BitVec 32) List!3316) Bool)

(assert (=> b!221953 (= lt!112569 (arrayNoDuplicates!0 (_keys!6234 thiss!1504) #b00000000000000000000000000000000 Nil!3313))))

(declare-fun b!221954 () Bool)

(declare-fun e!144257 () Bool)

(assert (=> b!221954 (= e!144257 (not (contains!1515 Nil!3313 key!932)))))

(declare-fun b!221955 () Bool)

(declare-fun e!144248 () Unit!6640)

(declare-fun lt!112568 () Unit!6640)

(assert (=> b!221955 (= e!144248 lt!112568)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!230 (array!10902 array!10900 (_ BitVec 32) (_ BitVec 32) V!7419 V!7419 (_ BitVec 64) Int) Unit!6640)

(assert (=> b!221955 (= lt!112568 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!230 (_keys!6234 thiss!1504) (_values!4163 thiss!1504) (mask!9996 thiss!1504) (extraKeys!3917 thiss!1504) (zeroValue!4021 thiss!1504) (minValue!4021 thiss!1504) key!932 (defaultEntry!4180 thiss!1504)))))

(get-info :version)

(assert (=> b!221955 (= c!36879 ((_ is MissingZero!842) lt!112565))))

(declare-fun e!144256 () Bool)

(assert (=> b!221955 e!144256))

(declare-fun b!221956 () Bool)

(declare-fun res!108953 () Bool)

(assert (=> b!221956 (=> (not res!108953) (not e!144249))))

(declare-fun noDuplicate!67 (List!3316) Bool)

(assert (=> b!221956 (= res!108953 (noDuplicate!67 Nil!3313))))

(declare-fun mapNonEmpty!9913 () Bool)

(declare-fun mapRes!9913 () Bool)

(declare-fun tp!21042 () Bool)

(declare-fun e!144260 () Bool)

(assert (=> mapNonEmpty!9913 (= mapRes!9913 (and tp!21042 e!144260))))

(declare-fun mapRest!9913 () (Array (_ BitVec 32) ValueCell!2571))

(declare-fun mapKey!9913 () (_ BitVec 32))

(declare-fun mapValue!9913 () ValueCell!2571)

(assert (=> mapNonEmpty!9913 (= (arr!5169 (_values!4163 thiss!1504)) (store mapRest!9913 mapKey!9913 mapValue!9913))))

(declare-fun b!221957 () Bool)

(declare-fun e!144253 () Bool)

(declare-fun e!144262 () Bool)

(assert (=> b!221957 (= e!144253 (and e!144262 mapRes!9913))))

(declare-fun condMapEmpty!9913 () Bool)

(declare-fun mapDefault!9913 () ValueCell!2571)

(assert (=> b!221957 (= condMapEmpty!9913 (= (arr!5169 (_values!4163 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2571)) mapDefault!9913)))))

(declare-fun b!221958 () Bool)

(declare-fun res!108944 () Bool)

(assert (=> b!221958 (=> (not res!108944) (not e!144249))))

(declare-fun e!144247 () Bool)

(assert (=> b!221958 (= res!108944 e!144247)))

(declare-fun res!108946 () Bool)

(assert (=> b!221958 (=> res!108946 e!144247)))

(assert (=> b!221958 (= res!108946 e!144261)))

(declare-fun res!108940 () Bool)

(assert (=> b!221958 (=> (not res!108940) (not e!144261))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!221958 (= res!108940 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun bm!20731 () Bool)

(declare-fun call!20733 () Bool)

(declare-fun arrayContainsKey!0 (array!10902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20731 (= call!20733 (arrayContainsKey!0 (_keys!6234 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221959 () Bool)

(assert (=> b!221959 (= e!144246 (not call!20733))))

(declare-fun mapIsEmpty!9913 () Bool)

(assert (=> mapIsEmpty!9913 mapRes!9913))

(declare-fun b!221960 () Bool)

(declare-fun res!108945 () Bool)

(assert (=> b!221960 (=> (not res!108945) (not e!144246))))

(assert (=> b!221960 (= res!108945 call!20734)))

(assert (=> b!221960 (= e!144256 e!144246)))

(declare-fun b!221961 () Bool)

(declare-fun res!108955 () Bool)

(assert (=> b!221961 (=> (not res!108955) (not e!144249))))

(assert (=> b!221961 (= res!108955 (not (contains!1515 Nil!3313 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!221962 () Bool)

(assert (=> b!221962 (= e!144245 ((_ is Undefined!842) lt!112565))))

(declare-fun e!144258 () Bool)

(declare-fun tp_is_empty!5829 () Bool)

(declare-fun array_inv!3413 (array!10902) Bool)

(declare-fun array_inv!3414 (array!10900) Bool)

(assert (=> b!221963 (= e!144258 (and tp!21043 tp_is_empty!5829 (array_inv!3413 (_keys!6234 thiss!1504)) (array_inv!3414 (_values!4163 thiss!1504)) e!144253))))

(declare-fun res!108947 () Bool)

(declare-fun e!144254 () Bool)

(assert (=> start!21912 (=> (not res!108947) (not e!144254))))

(declare-fun valid!1220 (LongMapFixedSize!3042) Bool)

(assert (=> start!21912 (= res!108947 (valid!1220 thiss!1504))))

(assert (=> start!21912 e!144254))

(assert (=> start!21912 e!144258))

(assert (=> start!21912 true))

(declare-fun b!221949 () Bool)

(declare-fun e!144252 () Bool)

(assert (=> b!221949 (= e!144252 e!144249)))

(declare-fun res!108952 () Bool)

(assert (=> b!221949 (=> (not res!108952) (not e!144249))))

(assert (=> b!221949 (= res!108952 (and (bvslt (size!5503 (_keys!6234 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5503 (_keys!6234 thiss!1504)))))))

(declare-fun lt!112566 () Unit!6640)

(assert (=> b!221949 (= lt!112566 e!144255)))

(declare-fun c!36881 () Bool)

(assert (=> b!221949 (= c!36881 (arrayContainsKey!0 (_keys!6234 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221964 () Bool)

(declare-fun e!144259 () Bool)

(assert (=> b!221964 (= e!144259 e!144252)))

(declare-fun res!108949 () Bool)

(assert (=> b!221964 (=> (not res!108949) (not e!144252))))

(assert (=> b!221964 (= res!108949 (inRange!0 index!297 (mask!9996 thiss!1504)))))

(declare-fun lt!112564 () Unit!6640)

(assert (=> b!221964 (= lt!112564 e!144248)))

(declare-fun c!36880 () Bool)

(declare-datatypes ((tuple2!4390 0))(
  ( (tuple2!4391 (_1!2205 (_ BitVec 64)) (_2!2205 V!7419)) )
))
(declare-datatypes ((List!3317 0))(
  ( (Nil!3314) (Cons!3313 (h!3961 tuple2!4390) (t!8284 List!3317)) )
))
(declare-datatypes ((ListLongMap!3317 0))(
  ( (ListLongMap!3318 (toList!1674 List!3317)) )
))
(declare-fun contains!1516 (ListLongMap!3317 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1197 (array!10902 array!10900 (_ BitVec 32) (_ BitVec 32) V!7419 V!7419 (_ BitVec 32) Int) ListLongMap!3317)

(assert (=> b!221964 (= c!36880 (contains!1516 (getCurrentListMap!1197 (_keys!6234 thiss!1504) (_values!4163 thiss!1504) (mask!9996 thiss!1504) (extraKeys!3917 thiss!1504) (zeroValue!4021 thiss!1504) (minValue!4021 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4180 thiss!1504)) key!932))))

(declare-fun b!221965 () Bool)

(assert (=> b!221965 (= e!144260 tp_is_empty!5829)))

(declare-fun b!221966 () Bool)

(assert (=> b!221966 (= e!144250 (not call!20733))))

(declare-fun b!221967 () Bool)

(assert (=> b!221967 (= e!144254 e!144259)))

(declare-fun res!108954 () Bool)

(assert (=> b!221967 (=> (not res!108954) (not e!144259))))

(assert (=> b!221967 (= res!108954 (or (= lt!112565 (MissingZero!842 index!297)) (= lt!112565 (MissingVacant!842 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10902 (_ BitVec 32)) SeekEntryResult!842)

(assert (=> b!221967 (= lt!112565 (seekEntryOrOpen!0 key!932 (_keys!6234 thiss!1504) (mask!9996 thiss!1504)))))

(declare-fun b!221968 () Bool)

(declare-fun res!108950 () Bool)

(assert (=> b!221968 (=> (not res!108950) (not e!144254))))

(assert (=> b!221968 (= res!108950 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!221969 () Bool)

(declare-fun c!36878 () Bool)

(assert (=> b!221969 (= c!36878 ((_ is MissingVacant!842) lt!112565))))

(assert (=> b!221969 (= e!144256 e!144245)))

(declare-fun b!221970 () Bool)

(assert (=> b!221970 (= e!144247 e!144257)))

(declare-fun res!108941 () Bool)

(assert (=> b!221970 (=> (not res!108941) (not e!144257))))

(assert (=> b!221970 (= res!108941 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!221971 () Bool)

(declare-fun res!108942 () Bool)

(assert (=> b!221971 (= res!108942 (= (select (arr!5170 (_keys!6234 thiss!1504)) (index!5541 lt!112565)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!221971 (=> (not res!108942) (not e!144250))))

(declare-fun b!221972 () Bool)

(assert (=> b!221972 (= e!144262 tp_is_empty!5829)))

(declare-fun b!221973 () Bool)

(declare-fun Unit!6643 () Unit!6640)

(assert (=> b!221973 (= e!144255 Unit!6643)))

(declare-fun b!221974 () Bool)

(declare-fun res!108951 () Bool)

(assert (=> b!221974 (=> (not res!108951) (not e!144249))))

(assert (=> b!221974 (= res!108951 (not (contains!1515 Nil!3313 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!221975 () Bool)

(declare-fun Unit!6644 () Unit!6640)

(assert (=> b!221975 (= e!144248 Unit!6644)))

(declare-fun lt!112563 () Unit!6640)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!222 (array!10902 array!10900 (_ BitVec 32) (_ BitVec 32) V!7419 V!7419 (_ BitVec 64) Int) Unit!6640)

(assert (=> b!221975 (= lt!112563 (lemmaInListMapThenSeekEntryOrOpenFindsIt!222 (_keys!6234 thiss!1504) (_values!4163 thiss!1504) (mask!9996 thiss!1504) (extraKeys!3917 thiss!1504) (zeroValue!4021 thiss!1504) (minValue!4021 thiss!1504) key!932 (defaultEntry!4180 thiss!1504)))))

(assert (=> b!221975 false))

(assert (= (and start!21912 res!108947) b!221968))

(assert (= (and b!221968 res!108950) b!221967))

(assert (= (and b!221967 res!108954) b!221964))

(assert (= (and b!221964 c!36880) b!221975))

(assert (= (and b!221964 (not c!36880)) b!221955))

(assert (= (and b!221955 c!36879) b!221960))

(assert (= (and b!221955 (not c!36879)) b!221969))

(assert (= (and b!221960 res!108945) b!221952))

(assert (= (and b!221952 res!108948) b!221959))

(assert (= (and b!221969 c!36878) b!221948))

(assert (= (and b!221969 (not c!36878)) b!221962))

(assert (= (and b!221948 res!108943) b!221971))

(assert (= (and b!221971 res!108942) b!221966))

(assert (= (or b!221960 b!221948) bm!20730))

(assert (= (or b!221959 b!221966) bm!20731))

(assert (= (and b!221964 res!108949) b!221949))

(assert (= (and b!221949 c!36881) b!221950))

(assert (= (and b!221949 (not c!36881)) b!221973))

(assert (= (and b!221949 res!108952) b!221956))

(assert (= (and b!221956 res!108953) b!221961))

(assert (= (and b!221961 res!108955) b!221974))

(assert (= (and b!221974 res!108951) b!221958))

(assert (= (and b!221958 res!108940) b!221951))

(assert (= (and b!221958 (not res!108946)) b!221970))

(assert (= (and b!221970 res!108941) b!221954))

(assert (= (and b!221958 res!108944) b!221953))

(assert (= (and b!221957 condMapEmpty!9913) mapIsEmpty!9913))

(assert (= (and b!221957 (not condMapEmpty!9913)) mapNonEmpty!9913))

(assert (= (and mapNonEmpty!9913 ((_ is ValueCellFull!2571) mapValue!9913)) b!221965))

(assert (= (and b!221957 ((_ is ValueCellFull!2571) mapDefault!9913)) b!221972))

(assert (= b!221963 b!221957))

(assert (= start!21912 b!221963))

(declare-fun m!246323 () Bool)

(assert (=> bm!20730 m!246323))

(declare-fun m!246325 () Bool)

(assert (=> b!221952 m!246325))

(declare-fun m!246327 () Bool)

(assert (=> b!221975 m!246327))

(declare-fun m!246329 () Bool)

(assert (=> b!221950 m!246329))

(declare-fun m!246331 () Bool)

(assert (=> b!221953 m!246331))

(declare-fun m!246333 () Bool)

(assert (=> b!221955 m!246333))

(declare-fun m!246335 () Bool)

(assert (=> b!221964 m!246335))

(declare-fun m!246337 () Bool)

(assert (=> b!221964 m!246337))

(assert (=> b!221964 m!246337))

(declare-fun m!246339 () Bool)

(assert (=> b!221964 m!246339))

(declare-fun m!246341 () Bool)

(assert (=> b!221967 m!246341))

(declare-fun m!246343 () Bool)

(assert (=> b!221963 m!246343))

(declare-fun m!246345 () Bool)

(assert (=> b!221963 m!246345))

(declare-fun m!246347 () Bool)

(assert (=> b!221971 m!246347))

(declare-fun m!246349 () Bool)

(assert (=> bm!20731 m!246349))

(declare-fun m!246351 () Bool)

(assert (=> start!21912 m!246351))

(declare-fun m!246353 () Bool)

(assert (=> b!221956 m!246353))

(declare-fun m!246355 () Bool)

(assert (=> b!221961 m!246355))

(declare-fun m!246357 () Bool)

(assert (=> b!221954 m!246357))

(assert (=> b!221951 m!246357))

(declare-fun m!246359 () Bool)

(assert (=> mapNonEmpty!9913 m!246359))

(assert (=> b!221949 m!246349))

(declare-fun m!246361 () Bool)

(assert (=> b!221974 m!246361))

(check-sat (not b!221975) (not start!21912) b_and!12883 tp_is_empty!5829 (not b!221967) (not b!221949) (not b!221956) (not bm!20730) (not b!221954) (not b!221963) (not bm!20731) (not mapNonEmpty!9913) (not b!221964) (not b!221961) (not b!221974) (not b!221951) (not b!221955) (not b!221950) (not b_next!5967) (not b!221953))
(check-sat b_and!12883 (not b_next!5967))
