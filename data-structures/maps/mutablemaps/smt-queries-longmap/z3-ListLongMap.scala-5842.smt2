; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75468 () Bool)

(assert start!75468)

(declare-fun b!887908 () Bool)

(declare-fun b_free!15555 () Bool)

(declare-fun b_next!15555 () Bool)

(assert (=> b!887908 (= b_free!15555 (not b_next!15555))))

(declare-fun tp!54612 () Bool)

(declare-fun b_and!25809 () Bool)

(assert (=> b!887908 (= tp!54612 b_and!25809)))

(declare-fun b!887903 () Bool)

(declare-fun res!602271 () Bool)

(declare-fun e!494711 () Bool)

(assert (=> b!887903 (=> (not res!602271) (not e!494711))))

(declare-fun key!785 () (_ BitVec 64))

(declare-datatypes ((array!51720 0))(
  ( (array!51721 (arr!24868 (Array (_ BitVec 32) (_ BitVec 64))) (size!25309 (_ BitVec 32))) )
))
(declare-datatypes ((V!28809 0))(
  ( (V!28810 (val!8992 Int)) )
))
(declare-datatypes ((ValueCell!8460 0))(
  ( (ValueCellFull!8460 (v!11459 V!28809)) (EmptyCell!8460) )
))
(declare-datatypes ((array!51722 0))(
  ( (array!51723 (arr!24869 (Array (_ BitVec 32) ValueCell!8460)) (size!25310 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3936 0))(
  ( (LongMapFixedSize!3937 (defaultEntry!5159 Int) (mask!25564 (_ BitVec 32)) (extraKeys!4853 (_ BitVec 32)) (zeroValue!4957 V!28809) (minValue!4957 V!28809) (_size!2023 (_ BitVec 32)) (_keys!9832 array!51720) (_values!5144 array!51722) (_vacant!2023 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3936)

(assert (=> b!887903 (= res!602271 (and (= key!785 (bvneg key!785)) (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4853 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!887904 () Bool)

(declare-fun e!494709 () Bool)

(declare-fun e!494713 () Bool)

(declare-fun mapRes!28357 () Bool)

(assert (=> b!887904 (= e!494709 (and e!494713 mapRes!28357))))

(declare-fun condMapEmpty!28357 () Bool)

(declare-fun mapDefault!28357 () ValueCell!8460)

(assert (=> b!887904 (= condMapEmpty!28357 (= (arr!24869 (_values!5144 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8460)) mapDefault!28357)))))

(declare-fun b!887905 () Bool)

(declare-fun tp_is_empty!17883 () Bool)

(assert (=> b!887905 (= e!494713 tp_is_empty!17883)))

(declare-fun res!602269 () Bool)

(assert (=> start!75468 (=> (not res!602269) (not e!494711))))

(declare-fun valid!1524 (LongMapFixedSize!3936) Bool)

(assert (=> start!75468 (= res!602269 (valid!1524 thiss!1181))))

(assert (=> start!75468 e!494711))

(declare-fun e!494712 () Bool)

(assert (=> start!75468 e!494712))

(assert (=> start!75468 true))

(declare-fun b!887906 () Bool)

(declare-fun e!494710 () Bool)

(assert (=> b!887906 (= e!494710 tp_is_empty!17883)))

(declare-fun b!887907 () Bool)

(declare-fun res!602270 () Bool)

(assert (=> b!887907 (=> (not res!602270) (not e!494711))))

(declare-fun contains!4314 (LongMapFixedSize!3936 (_ BitVec 64)) Bool)

(assert (=> b!887907 (= res!602270 (contains!4314 thiss!1181 key!785))))

(declare-fun array_inv!19544 (array!51720) Bool)

(declare-fun array_inv!19545 (array!51722) Bool)

(assert (=> b!887908 (= e!494712 (and tp!54612 tp_is_empty!17883 (array_inv!19544 (_keys!9832 thiss!1181)) (array_inv!19545 (_values!5144 thiss!1181)) e!494709))))

(declare-fun mapIsEmpty!28357 () Bool)

(assert (=> mapIsEmpty!28357 mapRes!28357))

(declare-fun b!887909 () Bool)

(declare-datatypes ((Option!443 0))(
  ( (Some!442 (v!11460 V!28809)) (None!441) )
))
(declare-fun isDefined!318 (Option!443) Bool)

(declare-datatypes ((tuple2!11954 0))(
  ( (tuple2!11955 (_1!5987 (_ BitVec 64)) (_2!5987 V!28809)) )
))
(declare-datatypes ((List!17770 0))(
  ( (Nil!17767) (Cons!17766 (h!18897 tuple2!11954) (t!25073 List!17770)) )
))
(declare-fun getValueByKey!437 (List!17770 (_ BitVec 64)) Option!443)

(declare-datatypes ((ListLongMap!10665 0))(
  ( (ListLongMap!10666 (toList!5348 List!17770)) )
))
(declare-fun map!12104 (LongMapFixedSize!3936) ListLongMap!10665)

(assert (=> b!887909 (= e!494711 (not (isDefined!318 (getValueByKey!437 (toList!5348 (map!12104 thiss!1181)) key!785))))))

(declare-fun mapNonEmpty!28357 () Bool)

(declare-fun tp!54613 () Bool)

(assert (=> mapNonEmpty!28357 (= mapRes!28357 (and tp!54613 e!494710))))

(declare-fun mapRest!28357 () (Array (_ BitVec 32) ValueCell!8460))

(declare-fun mapKey!28357 () (_ BitVec 32))

(declare-fun mapValue!28357 () ValueCell!8460)

(assert (=> mapNonEmpty!28357 (= (arr!24869 (_values!5144 thiss!1181)) (store mapRest!28357 mapKey!28357 mapValue!28357))))

(assert (= (and start!75468 res!602269) b!887903))

(assert (= (and b!887903 res!602271) b!887907))

(assert (= (and b!887907 res!602270) b!887909))

(assert (= (and b!887904 condMapEmpty!28357) mapIsEmpty!28357))

(assert (= (and b!887904 (not condMapEmpty!28357)) mapNonEmpty!28357))

(get-info :version)

(assert (= (and mapNonEmpty!28357 ((_ is ValueCellFull!8460) mapValue!28357)) b!887906))

(assert (= (and b!887904 ((_ is ValueCellFull!8460) mapDefault!28357)) b!887905))

(assert (= b!887908 b!887904))

(assert (= start!75468 b!887908))

(declare-fun m!827427 () Bool)

(assert (=> start!75468 m!827427))

(declare-fun m!827429 () Bool)

(assert (=> b!887908 m!827429))

(declare-fun m!827431 () Bool)

(assert (=> b!887908 m!827431))

(declare-fun m!827433 () Bool)

(assert (=> b!887909 m!827433))

(declare-fun m!827435 () Bool)

(assert (=> b!887909 m!827435))

(assert (=> b!887909 m!827435))

(declare-fun m!827437 () Bool)

(assert (=> b!887909 m!827437))

(declare-fun m!827439 () Bool)

(assert (=> mapNonEmpty!28357 m!827439))

(declare-fun m!827441 () Bool)

(assert (=> b!887907 m!827441))

(check-sat (not start!75468) (not mapNonEmpty!28357) (not b!887907) tp_is_empty!17883 (not b_next!15555) (not b!887909) (not b!887908) b_and!25809)
(check-sat b_and!25809 (not b_next!15555))
(get-model)

(declare-fun d!109913 () Bool)

(declare-fun res!602287 () Bool)

(declare-fun e!494734 () Bool)

(assert (=> d!109913 (=> (not res!602287) (not e!494734))))

(declare-fun simpleValid!288 (LongMapFixedSize!3936) Bool)

(assert (=> d!109913 (= res!602287 (simpleValid!288 thiss!1181))))

(assert (=> d!109913 (= (valid!1524 thiss!1181) e!494734)))

(declare-fun b!887937 () Bool)

(declare-fun res!602288 () Bool)

(assert (=> b!887937 (=> (not res!602288) (not e!494734))))

(declare-fun arrayCountValidKeys!0 (array!51720 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!887937 (= res!602288 (= (arrayCountValidKeys!0 (_keys!9832 thiss!1181) #b00000000000000000000000000000000 (size!25309 (_keys!9832 thiss!1181))) (_size!2023 thiss!1181)))))

(declare-fun b!887938 () Bool)

(declare-fun res!602289 () Bool)

(assert (=> b!887938 (=> (not res!602289) (not e!494734))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51720 (_ BitVec 32)) Bool)

(assert (=> b!887938 (= res!602289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9832 thiss!1181) (mask!25564 thiss!1181)))))

(declare-fun b!887939 () Bool)

(declare-datatypes ((List!17772 0))(
  ( (Nil!17769) (Cons!17768 (h!18899 (_ BitVec 64)) (t!25075 List!17772)) )
))
(declare-fun arrayNoDuplicates!0 (array!51720 (_ BitVec 32) List!17772) Bool)

(assert (=> b!887939 (= e!494734 (arrayNoDuplicates!0 (_keys!9832 thiss!1181) #b00000000000000000000000000000000 Nil!17769))))

(assert (= (and d!109913 res!602287) b!887937))

(assert (= (and b!887937 res!602288) b!887938))

(assert (= (and b!887938 res!602289) b!887939))

(declare-fun m!827459 () Bool)

(assert (=> d!109913 m!827459))

(declare-fun m!827461 () Bool)

(assert (=> b!887937 m!827461))

(declare-fun m!827463 () Bool)

(assert (=> b!887938 m!827463))

(declare-fun m!827465 () Bool)

(assert (=> b!887939 m!827465))

(assert (=> start!75468 d!109913))

(declare-fun d!109915 () Bool)

(declare-fun isEmpty!680 (Option!443) Bool)

(assert (=> d!109915 (= (isDefined!318 (getValueByKey!437 (toList!5348 (map!12104 thiss!1181)) key!785)) (not (isEmpty!680 (getValueByKey!437 (toList!5348 (map!12104 thiss!1181)) key!785))))))

(declare-fun bs!24897 () Bool)

(assert (= bs!24897 d!109915))

(assert (=> bs!24897 m!827435))

(declare-fun m!827467 () Bool)

(assert (=> bs!24897 m!827467))

(assert (=> b!887909 d!109915))

(declare-fun b!887948 () Bool)

(declare-fun e!494739 () Option!443)

(assert (=> b!887948 (= e!494739 (Some!442 (_2!5987 (h!18897 (toList!5348 (map!12104 thiss!1181))))))))

(declare-fun d!109917 () Bool)

(declare-fun c!93677 () Bool)

(assert (=> d!109917 (= c!93677 (and ((_ is Cons!17766) (toList!5348 (map!12104 thiss!1181))) (= (_1!5987 (h!18897 (toList!5348 (map!12104 thiss!1181)))) key!785)))))

(assert (=> d!109917 (= (getValueByKey!437 (toList!5348 (map!12104 thiss!1181)) key!785) e!494739)))

(declare-fun b!887949 () Bool)

(declare-fun e!494740 () Option!443)

(assert (=> b!887949 (= e!494739 e!494740)))

(declare-fun c!93678 () Bool)

(assert (=> b!887949 (= c!93678 (and ((_ is Cons!17766) (toList!5348 (map!12104 thiss!1181))) (not (= (_1!5987 (h!18897 (toList!5348 (map!12104 thiss!1181)))) key!785))))))

(declare-fun b!887950 () Bool)

(assert (=> b!887950 (= e!494740 (getValueByKey!437 (t!25073 (toList!5348 (map!12104 thiss!1181))) key!785))))

(declare-fun b!887951 () Bool)

(assert (=> b!887951 (= e!494740 None!441)))

(assert (= (and d!109917 c!93677) b!887948))

(assert (= (and d!109917 (not c!93677)) b!887949))

(assert (= (and b!887949 c!93678) b!887950))

(assert (= (and b!887949 (not c!93678)) b!887951))

(declare-fun m!827469 () Bool)

(assert (=> b!887950 m!827469))

(assert (=> b!887909 d!109917))

(declare-fun d!109919 () Bool)

(declare-fun getCurrentListMap!2604 (array!51720 array!51722 (_ BitVec 32) (_ BitVec 32) V!28809 V!28809 (_ BitVec 32) Int) ListLongMap!10665)

(assert (=> d!109919 (= (map!12104 thiss!1181) (getCurrentListMap!2604 (_keys!9832 thiss!1181) (_values!5144 thiss!1181) (mask!25564 thiss!1181) (extraKeys!4853 thiss!1181) (zeroValue!4957 thiss!1181) (minValue!4957 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5159 thiss!1181)))))

(declare-fun bs!24898 () Bool)

(assert (= bs!24898 d!109919))

(declare-fun m!827471 () Bool)

(assert (=> bs!24898 m!827471))

(assert (=> b!887909 d!109919))

(declare-fun d!109921 () Bool)

(assert (=> d!109921 (= (array_inv!19544 (_keys!9832 thiss!1181)) (bvsge (size!25309 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!887908 d!109921))

(declare-fun d!109923 () Bool)

(assert (=> d!109923 (= (array_inv!19545 (_values!5144 thiss!1181)) (bvsge (size!25310 (_values!5144 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!887908 d!109923))

(declare-fun b!887972 () Bool)

(assert (=> b!887972 false))

(declare-datatypes ((Unit!30225 0))(
  ( (Unit!30226) )
))
(declare-fun lt!401522 () Unit!30225)

(declare-fun lt!401526 () Unit!30225)

(assert (=> b!887972 (= lt!401522 lt!401526)))

(declare-datatypes ((SeekEntryResult!8755 0))(
  ( (MissingZero!8755 (index!37390 (_ BitVec 32))) (Found!8755 (index!37391 (_ BitVec 32))) (Intermediate!8755 (undefined!9567 Bool) (index!37392 (_ BitVec 32)) (x!75328 (_ BitVec 32))) (Undefined!8755) (MissingVacant!8755 (index!37393 (_ BitVec 32))) )
))
(declare-fun lt!401525 () SeekEntryResult!8755)

(declare-fun lt!401519 () (_ BitVec 32))

(assert (=> b!887972 (and ((_ is Found!8755) lt!401525) (= (index!37391 lt!401525) lt!401519))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51720 (_ BitVec 32)) SeekEntryResult!8755)

(assert (=> b!887972 (= lt!401525 (seekEntry!0 key!785 (_keys!9832 thiss!1181) (mask!25564 thiss!1181)))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!51720 (_ BitVec 32)) Unit!30225)

(assert (=> b!887972 (= lt!401526 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!785 lt!401519 (_keys!9832 thiss!1181) (mask!25564 thiss!1181)))))

(declare-fun lt!401523 () Unit!30225)

(declare-fun lt!401524 () Unit!30225)

(assert (=> b!887972 (= lt!401523 lt!401524)))

(assert (=> b!887972 (arrayForallSeekEntryOrOpenFound!0 lt!401519 (_keys!9832 thiss!1181) (mask!25564 thiss!1181))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!51720 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30225)

(assert (=> b!887972 (= lt!401524 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!9832 thiss!1181) (mask!25564 thiss!1181) #b00000000000000000000000000000000 lt!401519))))

(declare-fun arrayScanForKey!0 (array!51720 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!887972 (= lt!401519 (arrayScanForKey!0 (_keys!9832 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun lt!401514 () Unit!30225)

(declare-fun lt!401521 () Unit!30225)

(assert (=> b!887972 (= lt!401514 lt!401521)))

(declare-fun e!494753 () Bool)

(assert (=> b!887972 e!494753))

(declare-fun c!93692 () Bool)

(assert (=> b!887972 (= c!93692 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!159 (array!51720 array!51722 (_ BitVec 32) (_ BitVec 32) V!28809 V!28809 (_ BitVec 64) Int) Unit!30225)

(assert (=> b!887972 (= lt!401521 (lemmaKeyInListMapIsInArray!159 (_keys!9832 thiss!1181) (_values!5144 thiss!1181) (mask!25564 thiss!1181) (extraKeys!4853 thiss!1181) (zeroValue!4957 thiss!1181) (minValue!4957 thiss!1181) key!785 (defaultEntry!5159 thiss!1181)))))

(declare-fun e!494755 () Unit!30225)

(declare-fun Unit!30227 () Unit!30225)

(assert (=> b!887972 (= e!494755 Unit!30227)))

(declare-fun b!887973 () Bool)

(declare-fun e!494751 () Bool)

(declare-fun e!494752 () Bool)

(assert (=> b!887973 (= e!494751 e!494752)))

(declare-fun c!93689 () Bool)

(assert (=> b!887973 (= c!93689 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!887974 () Bool)

(declare-fun Unit!30228 () Unit!30225)

(assert (=> b!887974 (= e!494755 Unit!30228)))

(declare-fun b!887975 () Bool)

(declare-fun e!494754 () Bool)

(assert (=> b!887975 (= e!494754 false)))

(declare-fun c!93690 () Bool)

(declare-fun call!39412 () Bool)

(assert (=> b!887975 (= c!93690 call!39412)))

(declare-fun lt!401516 () Unit!30225)

(assert (=> b!887975 (= lt!401516 e!494755)))

(declare-fun b!887976 () Bool)

(assert (=> b!887976 (= e!494752 (not (= (bvand (extraKeys!4853 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!887977 () Bool)

(assert (=> b!887977 (= e!494753 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4853 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4853 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun call!39410 () ListLongMap!10665)

(declare-fun c!93691 () Bool)

(declare-fun lt!401515 () SeekEntryResult!8755)

(declare-fun bm!39407 () Bool)

(declare-fun contains!4316 (ListLongMap!10665 (_ BitVec 64)) Bool)

(assert (=> bm!39407 (= call!39412 (contains!4316 call!39410 (ite c!93691 (select (arr!24868 (_keys!9832 thiss!1181)) (index!37391 lt!401515)) key!785)))))

(declare-fun b!887978 () Bool)

(assert (=> b!887978 (= e!494754 true)))

(declare-fun lt!401517 () Unit!30225)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51720 (_ BitVec 64) (_ BitVec 32)) Unit!30225)

(assert (=> b!887978 (= lt!401517 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9832 thiss!1181) key!785 (index!37391 lt!401515)))))

(declare-fun call!39411 () Bool)

(assert (=> b!887978 call!39411))

(declare-fun lt!401518 () Unit!30225)

(assert (=> b!887978 (= lt!401518 lt!401517)))

(declare-fun lt!401513 () Unit!30225)

(declare-fun lemmaValidKeyInArrayIsInListMap!197 (array!51720 array!51722 (_ BitVec 32) (_ BitVec 32) V!28809 V!28809 (_ BitVec 32) Int) Unit!30225)

(assert (=> b!887978 (= lt!401513 (lemmaValidKeyInArrayIsInListMap!197 (_keys!9832 thiss!1181) (_values!5144 thiss!1181) (mask!25564 thiss!1181) (extraKeys!4853 thiss!1181) (zeroValue!4957 thiss!1181) (minValue!4957 thiss!1181) (index!37391 lt!401515) (defaultEntry!5159 thiss!1181)))))

(assert (=> b!887978 call!39412))

(declare-fun lt!401527 () Unit!30225)

(assert (=> b!887978 (= lt!401527 lt!401513)))

(declare-fun b!887979 () Bool)

(assert (=> b!887979 (= e!494751 (not (= (bvand (extraKeys!4853 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!109925 () Bool)

(declare-fun lt!401520 () Bool)

(assert (=> d!109925 (= lt!401520 (contains!4316 (map!12104 thiss!1181) key!785))))

(assert (=> d!109925 (= lt!401520 e!494751)))

(declare-fun c!93693 () Bool)

(assert (=> d!109925 (= c!93693 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!109925 (valid!1524 thiss!1181)))

(assert (=> d!109925 (= (contains!4314 thiss!1181 key!785) lt!401520)))

(declare-fun b!887980 () Bool)

(assert (=> b!887980 (= c!93691 ((_ is Found!8755) lt!401515))))

(assert (=> b!887980 (= lt!401515 (seekEntry!0 key!785 (_keys!9832 thiss!1181) (mask!25564 thiss!1181)))))

(assert (=> b!887980 (= e!494752 e!494754)))

(declare-fun bm!39408 () Bool)

(assert (=> bm!39408 (= call!39410 (getCurrentListMap!2604 (_keys!9832 thiss!1181) (_values!5144 thiss!1181) (mask!25564 thiss!1181) (extraKeys!4853 thiss!1181) (zeroValue!4957 thiss!1181) (minValue!4957 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5159 thiss!1181)))))

(declare-fun bm!39409 () Bool)

(declare-fun arrayContainsKey!0 (array!51720 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!39409 (= call!39411 (arrayContainsKey!0 (_keys!9832 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun b!887981 () Bool)

(assert (=> b!887981 (= e!494753 call!39411)))

(assert (= (and d!109925 c!93693) b!887979))

(assert (= (and d!109925 (not c!93693)) b!887973))

(assert (= (and b!887973 c!93689) b!887976))

(assert (= (and b!887973 (not c!93689)) b!887980))

(assert (= (and b!887980 c!93691) b!887978))

(assert (= (and b!887980 (not c!93691)) b!887975))

(assert (= (and b!887975 c!93690) b!887972))

(assert (= (and b!887975 (not c!93690)) b!887974))

(assert (= (and b!887972 c!93692) b!887981))

(assert (= (and b!887972 (not c!93692)) b!887977))

(assert (= (or b!887978 b!887981) bm!39409))

(assert (= (or b!887978 b!887975) bm!39408))

(assert (= (or b!887978 b!887975) bm!39407))

(declare-fun m!827473 () Bool)

(assert (=> b!887980 m!827473))

(declare-fun m!827475 () Bool)

(assert (=> b!887978 m!827475))

(declare-fun m!827477 () Bool)

(assert (=> b!887978 m!827477))

(assert (=> d!109925 m!827433))

(assert (=> d!109925 m!827433))

(declare-fun m!827479 () Bool)

(assert (=> d!109925 m!827479))

(assert (=> d!109925 m!827427))

(assert (=> bm!39408 m!827471))

(declare-fun m!827481 () Bool)

(assert (=> bm!39407 m!827481))

(declare-fun m!827483 () Bool)

(assert (=> bm!39407 m!827483))

(declare-fun m!827485 () Bool)

(assert (=> b!887972 m!827485))

(declare-fun m!827487 () Bool)

(assert (=> b!887972 m!827487))

(declare-fun m!827489 () Bool)

(assert (=> b!887972 m!827489))

(declare-fun m!827491 () Bool)

(assert (=> b!887972 m!827491))

(assert (=> b!887972 m!827473))

(declare-fun m!827493 () Bool)

(assert (=> b!887972 m!827493))

(declare-fun m!827495 () Bool)

(assert (=> bm!39409 m!827495))

(assert (=> b!887907 d!109925))

(declare-fun b!887989 () Bool)

(declare-fun e!494760 () Bool)

(assert (=> b!887989 (= e!494760 tp_is_empty!17883)))

(declare-fun mapIsEmpty!28363 () Bool)

(declare-fun mapRes!28363 () Bool)

(assert (=> mapIsEmpty!28363 mapRes!28363))

(declare-fun b!887988 () Bool)

(declare-fun e!494761 () Bool)

(assert (=> b!887988 (= e!494761 tp_is_empty!17883)))

(declare-fun condMapEmpty!28363 () Bool)

(declare-fun mapDefault!28363 () ValueCell!8460)

(assert (=> mapNonEmpty!28357 (= condMapEmpty!28363 (= mapRest!28357 ((as const (Array (_ BitVec 32) ValueCell!8460)) mapDefault!28363)))))

(assert (=> mapNonEmpty!28357 (= tp!54613 (and e!494760 mapRes!28363))))

(declare-fun mapNonEmpty!28363 () Bool)

(declare-fun tp!54622 () Bool)

(assert (=> mapNonEmpty!28363 (= mapRes!28363 (and tp!54622 e!494761))))

(declare-fun mapKey!28363 () (_ BitVec 32))

(declare-fun mapValue!28363 () ValueCell!8460)

(declare-fun mapRest!28363 () (Array (_ BitVec 32) ValueCell!8460))

(assert (=> mapNonEmpty!28363 (= mapRest!28357 (store mapRest!28363 mapKey!28363 mapValue!28363))))

(assert (= (and mapNonEmpty!28357 condMapEmpty!28363) mapIsEmpty!28363))

(assert (= (and mapNonEmpty!28357 (not condMapEmpty!28363)) mapNonEmpty!28363))

(assert (= (and mapNonEmpty!28363 ((_ is ValueCellFull!8460) mapValue!28363)) b!887988))

(assert (= (and mapNonEmpty!28357 ((_ is ValueCellFull!8460) mapDefault!28363)) b!887989))

(declare-fun m!827497 () Bool)

(assert (=> mapNonEmpty!28363 m!827497))

(check-sat (not b!887939) (not bm!39409) (not d!109913) (not d!109915) (not b!887937) (not b!887978) tp_is_empty!17883 (not bm!39407) (not b!887972) (not d!109925) (not b_next!15555) (not b!887938) (not b!887980) (not mapNonEmpty!28363) (not b!887950) b_and!25809 (not d!109919) (not bm!39408))
(check-sat b_and!25809 (not b_next!15555))
(get-model)

(declare-fun d!109927 () Bool)

(declare-fun e!494767 () Bool)

(assert (=> d!109927 e!494767))

(declare-fun res!602292 () Bool)

(assert (=> d!109927 (=> res!602292 e!494767)))

(declare-fun lt!401537 () Bool)

(assert (=> d!109927 (= res!602292 (not lt!401537))))

(declare-fun lt!401538 () Bool)

(assert (=> d!109927 (= lt!401537 lt!401538)))

(declare-fun lt!401536 () Unit!30225)

(declare-fun e!494766 () Unit!30225)

(assert (=> d!109927 (= lt!401536 e!494766)))

(declare-fun c!93696 () Bool)

(assert (=> d!109927 (= c!93696 lt!401538)))

(declare-fun containsKey!420 (List!17770 (_ BitVec 64)) Bool)

(assert (=> d!109927 (= lt!401538 (containsKey!420 (toList!5348 (map!12104 thiss!1181)) key!785))))

(assert (=> d!109927 (= (contains!4316 (map!12104 thiss!1181) key!785) lt!401537)))

(declare-fun b!887996 () Bool)

(declare-fun lt!401539 () Unit!30225)

(assert (=> b!887996 (= e!494766 lt!401539)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!315 (List!17770 (_ BitVec 64)) Unit!30225)

(assert (=> b!887996 (= lt!401539 (lemmaContainsKeyImpliesGetValueByKeyDefined!315 (toList!5348 (map!12104 thiss!1181)) key!785))))

(assert (=> b!887996 (isDefined!318 (getValueByKey!437 (toList!5348 (map!12104 thiss!1181)) key!785))))

(declare-fun b!887997 () Bool)

(declare-fun Unit!30229 () Unit!30225)

(assert (=> b!887997 (= e!494766 Unit!30229)))

(declare-fun b!887998 () Bool)

(assert (=> b!887998 (= e!494767 (isDefined!318 (getValueByKey!437 (toList!5348 (map!12104 thiss!1181)) key!785)))))

(assert (= (and d!109927 c!93696) b!887996))

(assert (= (and d!109927 (not c!93696)) b!887997))

(assert (= (and d!109927 (not res!602292)) b!887998))

(declare-fun m!827499 () Bool)

(assert (=> d!109927 m!827499))

(declare-fun m!827501 () Bool)

(assert (=> b!887996 m!827501))

(assert (=> b!887996 m!827435))

(assert (=> b!887996 m!827435))

(assert (=> b!887996 m!827437))

(assert (=> b!887998 m!827435))

(assert (=> b!887998 m!827435))

(assert (=> b!887998 m!827437))

(assert (=> d!109925 d!109927))

(assert (=> d!109925 d!109919))

(assert (=> d!109925 d!109913))

(declare-fun d!109929 () Bool)

(declare-fun res!602297 () Bool)

(declare-fun e!494772 () Bool)

(assert (=> d!109929 (=> res!602297 e!494772)))

(assert (=> d!109929 (= res!602297 (= (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!109929 (= (arrayContainsKey!0 (_keys!9832 thiss!1181) key!785 #b00000000000000000000000000000000) e!494772)))

(declare-fun b!888003 () Bool)

(declare-fun e!494773 () Bool)

(assert (=> b!888003 (= e!494772 e!494773)))

(declare-fun res!602298 () Bool)

(assert (=> b!888003 (=> (not res!602298) (not e!494773))))

(assert (=> b!888003 (= res!602298 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25309 (_keys!9832 thiss!1181))))))

(declare-fun b!888004 () Bool)

(assert (=> b!888004 (= e!494773 (arrayContainsKey!0 (_keys!9832 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!109929 (not res!602297)) b!888003))

(assert (= (and b!888003 res!602298) b!888004))

(declare-fun m!827503 () Bool)

(assert (=> d!109929 m!827503))

(declare-fun m!827505 () Bool)

(assert (=> b!888004 m!827505))

(assert (=> bm!39409 d!109929))

(declare-fun d!109931 () Bool)

(declare-fun e!494776 () Bool)

(assert (=> d!109931 e!494776))

(declare-fun c!93699 () Bool)

(assert (=> d!109931 (= c!93699 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!401542 () Unit!30225)

(declare-fun choose!1464 (array!51720 array!51722 (_ BitVec 32) (_ BitVec 32) V!28809 V!28809 (_ BitVec 64) Int) Unit!30225)

(assert (=> d!109931 (= lt!401542 (choose!1464 (_keys!9832 thiss!1181) (_values!5144 thiss!1181) (mask!25564 thiss!1181) (extraKeys!4853 thiss!1181) (zeroValue!4957 thiss!1181) (minValue!4957 thiss!1181) key!785 (defaultEntry!5159 thiss!1181)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!109931 (validMask!0 (mask!25564 thiss!1181))))

(assert (=> d!109931 (= (lemmaKeyInListMapIsInArray!159 (_keys!9832 thiss!1181) (_values!5144 thiss!1181) (mask!25564 thiss!1181) (extraKeys!4853 thiss!1181) (zeroValue!4957 thiss!1181) (minValue!4957 thiss!1181) key!785 (defaultEntry!5159 thiss!1181)) lt!401542)))

(declare-fun b!888009 () Bool)

(assert (=> b!888009 (= e!494776 (arrayContainsKey!0 (_keys!9832 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun b!888010 () Bool)

(assert (=> b!888010 (= e!494776 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4853 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4853 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!109931 c!93699) b!888009))

(assert (= (and d!109931 (not c!93699)) b!888010))

(declare-fun m!827507 () Bool)

(assert (=> d!109931 m!827507))

(declare-fun m!827509 () Bool)

(assert (=> d!109931 m!827509))

(assert (=> b!888009 m!827495))

(assert (=> b!887972 d!109931))

(declare-fun d!109933 () Bool)

(assert (=> d!109933 (arrayForallSeekEntryOrOpenFound!0 lt!401519 (_keys!9832 thiss!1181) (mask!25564 thiss!1181))))

(declare-fun lt!401545 () Unit!30225)

(declare-fun choose!38 (array!51720 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30225)

(assert (=> d!109933 (= lt!401545 (choose!38 (_keys!9832 thiss!1181) (mask!25564 thiss!1181) #b00000000000000000000000000000000 lt!401519))))

(assert (=> d!109933 (validMask!0 (mask!25564 thiss!1181))))

(assert (=> d!109933 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!9832 thiss!1181) (mask!25564 thiss!1181) #b00000000000000000000000000000000 lt!401519) lt!401545)))

(declare-fun bs!24899 () Bool)

(assert (= bs!24899 d!109933))

(assert (=> bs!24899 m!827491))

(declare-fun m!827511 () Bool)

(assert (=> bs!24899 m!827511))

(assert (=> bs!24899 m!827509))

(assert (=> b!887972 d!109933))

(declare-fun d!109935 () Bool)

(declare-fun lt!401551 () SeekEntryResult!8755)

(assert (=> d!109935 (and ((_ is Found!8755) lt!401551) (= (index!37391 lt!401551) lt!401519))))

(assert (=> d!109935 (= lt!401551 (seekEntry!0 key!785 (_keys!9832 thiss!1181) (mask!25564 thiss!1181)))))

(declare-fun lt!401550 () Unit!30225)

(declare-fun choose!0 ((_ BitVec 64) (_ BitVec 32) array!51720 (_ BitVec 32)) Unit!30225)

(assert (=> d!109935 (= lt!401550 (choose!0 key!785 lt!401519 (_keys!9832 thiss!1181) (mask!25564 thiss!1181)))))

(assert (=> d!109935 (validMask!0 (mask!25564 thiss!1181))))

(assert (=> d!109935 (= (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!785 lt!401519 (_keys!9832 thiss!1181) (mask!25564 thiss!1181)) lt!401550)))

(declare-fun bs!24900 () Bool)

(assert (= bs!24900 d!109935))

(assert (=> bs!24900 m!827473))

(declare-fun m!827513 () Bool)

(assert (=> bs!24900 m!827513))

(assert (=> bs!24900 m!827509))

(assert (=> b!887972 d!109935))

(declare-fun b!888023 () Bool)

(declare-fun c!93708 () Bool)

(declare-fun lt!401562 () (_ BitVec 64))

(assert (=> b!888023 (= c!93708 (= lt!401562 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!494783 () SeekEntryResult!8755)

(declare-fun e!494785 () SeekEntryResult!8755)

(assert (=> b!888023 (= e!494783 e!494785)))

(declare-fun b!888024 () Bool)

(declare-fun e!494784 () SeekEntryResult!8755)

(assert (=> b!888024 (= e!494784 e!494783)))

(declare-fun lt!401560 () SeekEntryResult!8755)

(assert (=> b!888024 (= lt!401562 (select (arr!24868 (_keys!9832 thiss!1181)) (index!37392 lt!401560)))))

(declare-fun c!93706 () Bool)

(assert (=> b!888024 (= c!93706 (= lt!401562 key!785))))

(declare-fun b!888025 () Bool)

(assert (=> b!888025 (= e!494783 (Found!8755 (index!37392 lt!401560)))))

(declare-fun b!888026 () Bool)

(assert (=> b!888026 (= e!494784 Undefined!8755)))

(declare-fun b!888027 () Bool)

(assert (=> b!888027 (= e!494785 (MissingZero!8755 (index!37392 lt!401560)))))

(declare-fun d!109937 () Bool)

(declare-fun lt!401561 () SeekEntryResult!8755)

(assert (=> d!109937 (and (or ((_ is MissingVacant!8755) lt!401561) (not ((_ is Found!8755) lt!401561)) (and (bvsge (index!37391 lt!401561) #b00000000000000000000000000000000) (bvslt (index!37391 lt!401561) (size!25309 (_keys!9832 thiss!1181))))) (not ((_ is MissingVacant!8755) lt!401561)) (or (not ((_ is Found!8755) lt!401561)) (= (select (arr!24868 (_keys!9832 thiss!1181)) (index!37391 lt!401561)) key!785)))))

(assert (=> d!109937 (= lt!401561 e!494784)))

(declare-fun c!93707 () Bool)

(assert (=> d!109937 (= c!93707 (and ((_ is Intermediate!8755) lt!401560) (undefined!9567 lt!401560)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!51720 (_ BitVec 32)) SeekEntryResult!8755)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!109937 (= lt!401560 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25564 thiss!1181)) key!785 (_keys!9832 thiss!1181) (mask!25564 thiss!1181)))))

(assert (=> d!109937 (validMask!0 (mask!25564 thiss!1181))))

(assert (=> d!109937 (= (seekEntry!0 key!785 (_keys!9832 thiss!1181) (mask!25564 thiss!1181)) lt!401561)))

(declare-fun b!888028 () Bool)

(declare-fun lt!401563 () SeekEntryResult!8755)

(assert (=> b!888028 (= e!494785 (ite ((_ is MissingVacant!8755) lt!401563) (MissingZero!8755 (index!37393 lt!401563)) lt!401563))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!51720 (_ BitVec 32)) SeekEntryResult!8755)

(assert (=> b!888028 (= lt!401563 (seekKeyOrZeroReturnVacant!0 (x!75328 lt!401560) (index!37392 lt!401560) (index!37392 lt!401560) key!785 (_keys!9832 thiss!1181) (mask!25564 thiss!1181)))))

(assert (= (and d!109937 c!93707) b!888026))

(assert (= (and d!109937 (not c!93707)) b!888024))

(assert (= (and b!888024 c!93706) b!888025))

(assert (= (and b!888024 (not c!93706)) b!888023))

(assert (= (and b!888023 c!93708) b!888027))

(assert (= (and b!888023 (not c!93708)) b!888028))

(declare-fun m!827515 () Bool)

(assert (=> b!888024 m!827515))

(declare-fun m!827517 () Bool)

(assert (=> d!109937 m!827517))

(declare-fun m!827519 () Bool)

(assert (=> d!109937 m!827519))

(assert (=> d!109937 m!827519))

(declare-fun m!827521 () Bool)

(assert (=> d!109937 m!827521))

(assert (=> d!109937 m!827509))

(declare-fun m!827523 () Bool)

(assert (=> b!888028 m!827523))

(assert (=> b!887972 d!109937))

(declare-fun b!888037 () Bool)

(declare-fun e!494792 () Bool)

(declare-fun e!494793 () Bool)

(assert (=> b!888037 (= e!494792 e!494793)))

(declare-fun lt!401571 () (_ BitVec 64))

(assert (=> b!888037 (= lt!401571 (select (arr!24868 (_keys!9832 thiss!1181)) lt!401519))))

(declare-fun lt!401570 () Unit!30225)

(assert (=> b!888037 (= lt!401570 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9832 thiss!1181) lt!401571 lt!401519))))

(assert (=> b!888037 (arrayContainsKey!0 (_keys!9832 thiss!1181) lt!401571 #b00000000000000000000000000000000)))

(declare-fun lt!401572 () Unit!30225)

(assert (=> b!888037 (= lt!401572 lt!401570)))

(declare-fun res!602303 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!51720 (_ BitVec 32)) SeekEntryResult!8755)

(assert (=> b!888037 (= res!602303 (= (seekEntryOrOpen!0 (select (arr!24868 (_keys!9832 thiss!1181)) lt!401519) (_keys!9832 thiss!1181) (mask!25564 thiss!1181)) (Found!8755 lt!401519)))))

(assert (=> b!888037 (=> (not res!602303) (not e!494793))))

(declare-fun b!888038 () Bool)

(declare-fun e!494794 () Bool)

(assert (=> b!888038 (= e!494794 e!494792)))

(declare-fun c!93711 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!888038 (= c!93711 (validKeyInArray!0 (select (arr!24868 (_keys!9832 thiss!1181)) lt!401519)))))

(declare-fun b!888039 () Bool)

(declare-fun call!39415 () Bool)

(assert (=> b!888039 (= e!494792 call!39415)))

(declare-fun b!888040 () Bool)

(assert (=> b!888040 (= e!494793 call!39415)))

(declare-fun bm!39412 () Bool)

(assert (=> bm!39412 (= call!39415 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!401519 #b00000000000000000000000000000001) (_keys!9832 thiss!1181) (mask!25564 thiss!1181)))))

(declare-fun d!109939 () Bool)

(declare-fun res!602304 () Bool)

(assert (=> d!109939 (=> res!602304 e!494794)))

(assert (=> d!109939 (= res!602304 (bvsge lt!401519 (size!25309 (_keys!9832 thiss!1181))))))

(assert (=> d!109939 (= (arrayForallSeekEntryOrOpenFound!0 lt!401519 (_keys!9832 thiss!1181) (mask!25564 thiss!1181)) e!494794)))

(assert (= (and d!109939 (not res!602304)) b!888038))

(assert (= (and b!888038 c!93711) b!888037))

(assert (= (and b!888038 (not c!93711)) b!888039))

(assert (= (and b!888037 res!602303) b!888040))

(assert (= (or b!888040 b!888039) bm!39412))

(declare-fun m!827525 () Bool)

(assert (=> b!888037 m!827525))

(declare-fun m!827527 () Bool)

(assert (=> b!888037 m!827527))

(declare-fun m!827529 () Bool)

(assert (=> b!888037 m!827529))

(assert (=> b!888037 m!827525))

(declare-fun m!827531 () Bool)

(assert (=> b!888037 m!827531))

(assert (=> b!888038 m!827525))

(assert (=> b!888038 m!827525))

(declare-fun m!827533 () Bool)

(assert (=> b!888038 m!827533))

(declare-fun m!827535 () Bool)

(assert (=> bm!39412 m!827535))

(assert (=> b!887972 d!109939))

(declare-fun d!109941 () Bool)

(declare-fun lt!401575 () (_ BitVec 32))

(assert (=> d!109941 (and (or (bvslt lt!401575 #b00000000000000000000000000000000) (bvsge lt!401575 (size!25309 (_keys!9832 thiss!1181))) (and (bvsge lt!401575 #b00000000000000000000000000000000) (bvslt lt!401575 (size!25309 (_keys!9832 thiss!1181))))) (bvsge lt!401575 #b00000000000000000000000000000000) (bvslt lt!401575 (size!25309 (_keys!9832 thiss!1181))) (= (select (arr!24868 (_keys!9832 thiss!1181)) lt!401575) key!785))))

(declare-fun e!494797 () (_ BitVec 32))

(assert (=> d!109941 (= lt!401575 e!494797)))

(declare-fun c!93714 () Bool)

(assert (=> d!109941 (= c!93714 (= (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!109941 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25309 (_keys!9832 thiss!1181))) (bvslt (size!25309 (_keys!9832 thiss!1181)) #b01111111111111111111111111111111))))

(assert (=> d!109941 (= (arrayScanForKey!0 (_keys!9832 thiss!1181) key!785 #b00000000000000000000000000000000) lt!401575)))

(declare-fun b!888045 () Bool)

(assert (=> b!888045 (= e!494797 #b00000000000000000000000000000000)))

(declare-fun b!888046 () Bool)

(assert (=> b!888046 (= e!494797 (arrayScanForKey!0 (_keys!9832 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!109941 c!93714) b!888045))

(assert (= (and d!109941 (not c!93714)) b!888046))

(declare-fun m!827537 () Bool)

(assert (=> d!109941 m!827537))

(assert (=> d!109941 m!827503))

(declare-fun m!827539 () Bool)

(assert (=> b!888046 m!827539))

(assert (=> b!887972 d!109941))

(declare-fun b!888047 () Bool)

(declare-fun e!494798 () Option!443)

(assert (=> b!888047 (= e!494798 (Some!442 (_2!5987 (h!18897 (t!25073 (toList!5348 (map!12104 thiss!1181)))))))))

(declare-fun d!109943 () Bool)

(declare-fun c!93715 () Bool)

(assert (=> d!109943 (= c!93715 (and ((_ is Cons!17766) (t!25073 (toList!5348 (map!12104 thiss!1181)))) (= (_1!5987 (h!18897 (t!25073 (toList!5348 (map!12104 thiss!1181))))) key!785)))))

(assert (=> d!109943 (= (getValueByKey!437 (t!25073 (toList!5348 (map!12104 thiss!1181))) key!785) e!494798)))

(declare-fun b!888048 () Bool)

(declare-fun e!494799 () Option!443)

(assert (=> b!888048 (= e!494798 e!494799)))

(declare-fun c!93716 () Bool)

(assert (=> b!888048 (= c!93716 (and ((_ is Cons!17766) (t!25073 (toList!5348 (map!12104 thiss!1181)))) (not (= (_1!5987 (h!18897 (t!25073 (toList!5348 (map!12104 thiss!1181))))) key!785))))))

(declare-fun b!888049 () Bool)

(assert (=> b!888049 (= e!494799 (getValueByKey!437 (t!25073 (t!25073 (toList!5348 (map!12104 thiss!1181)))) key!785))))

(declare-fun b!888050 () Bool)

(assert (=> b!888050 (= e!494799 None!441)))

(assert (= (and d!109943 c!93715) b!888047))

(assert (= (and d!109943 (not c!93715)) b!888048))

(assert (= (and b!888048 c!93716) b!888049))

(assert (= (and b!888048 (not c!93716)) b!888050))

(declare-fun m!827541 () Bool)

(assert (=> b!888049 m!827541))

(assert (=> b!887950 d!109943))

(declare-fun d!109945 () Bool)

(assert (=> d!109945 (arrayContainsKey!0 (_keys!9832 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!401578 () Unit!30225)

(declare-fun choose!13 (array!51720 (_ BitVec 64) (_ BitVec 32)) Unit!30225)

(assert (=> d!109945 (= lt!401578 (choose!13 (_keys!9832 thiss!1181) key!785 (index!37391 lt!401515)))))

(assert (=> d!109945 (bvsge (index!37391 lt!401515) #b00000000000000000000000000000000)))

(assert (=> d!109945 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9832 thiss!1181) key!785 (index!37391 lt!401515)) lt!401578)))

(declare-fun bs!24901 () Bool)

(assert (= bs!24901 d!109945))

(assert (=> bs!24901 m!827495))

(declare-fun m!827543 () Bool)

(assert (=> bs!24901 m!827543))

(assert (=> b!887978 d!109945))

(declare-fun d!109947 () Bool)

(declare-fun e!494802 () Bool)

(assert (=> d!109947 e!494802))

(declare-fun res!602307 () Bool)

(assert (=> d!109947 (=> (not res!602307) (not e!494802))))

(assert (=> d!109947 (= res!602307 (and (bvsge (index!37391 lt!401515) #b00000000000000000000000000000000) (bvslt (index!37391 lt!401515) (size!25309 (_keys!9832 thiss!1181)))))))

(declare-fun lt!401581 () Unit!30225)

(declare-fun choose!1465 (array!51720 array!51722 (_ BitVec 32) (_ BitVec 32) V!28809 V!28809 (_ BitVec 32) Int) Unit!30225)

(assert (=> d!109947 (= lt!401581 (choose!1465 (_keys!9832 thiss!1181) (_values!5144 thiss!1181) (mask!25564 thiss!1181) (extraKeys!4853 thiss!1181) (zeroValue!4957 thiss!1181) (minValue!4957 thiss!1181) (index!37391 lt!401515) (defaultEntry!5159 thiss!1181)))))

(assert (=> d!109947 (validMask!0 (mask!25564 thiss!1181))))

(assert (=> d!109947 (= (lemmaValidKeyInArrayIsInListMap!197 (_keys!9832 thiss!1181) (_values!5144 thiss!1181) (mask!25564 thiss!1181) (extraKeys!4853 thiss!1181) (zeroValue!4957 thiss!1181) (minValue!4957 thiss!1181) (index!37391 lt!401515) (defaultEntry!5159 thiss!1181)) lt!401581)))

(declare-fun b!888053 () Bool)

(assert (=> b!888053 (= e!494802 (contains!4316 (getCurrentListMap!2604 (_keys!9832 thiss!1181) (_values!5144 thiss!1181) (mask!25564 thiss!1181) (extraKeys!4853 thiss!1181) (zeroValue!4957 thiss!1181) (minValue!4957 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5159 thiss!1181)) (select (arr!24868 (_keys!9832 thiss!1181)) (index!37391 lt!401515))))))

(assert (= (and d!109947 res!602307) b!888053))

(declare-fun m!827545 () Bool)

(assert (=> d!109947 m!827545))

(assert (=> d!109947 m!827509))

(assert (=> b!888053 m!827471))

(assert (=> b!888053 m!827481))

(assert (=> b!888053 m!827471))

(assert (=> b!888053 m!827481))

(declare-fun m!827547 () Bool)

(assert (=> b!888053 m!827547))

(assert (=> b!887978 d!109947))

(declare-fun b!888062 () Bool)

(declare-fun e!494807 () (_ BitVec 32))

(declare-fun call!39418 () (_ BitVec 32))

(assert (=> b!888062 (= e!494807 call!39418)))

(declare-fun b!888063 () Bool)

(declare-fun e!494808 () (_ BitVec 32))

(assert (=> b!888063 (= e!494808 e!494807)))

(declare-fun c!93722 () Bool)

(assert (=> b!888063 (= c!93722 (validKeyInArray!0 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!888064 () Bool)

(assert (=> b!888064 (= e!494807 (bvadd #b00000000000000000000000000000001 call!39418))))

(declare-fun d!109949 () Bool)

(declare-fun lt!401584 () (_ BitVec 32))

(assert (=> d!109949 (and (bvsge lt!401584 #b00000000000000000000000000000000) (bvsle lt!401584 (bvsub (size!25309 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!109949 (= lt!401584 e!494808)))

(declare-fun c!93721 () Bool)

(assert (=> d!109949 (= c!93721 (bvsge #b00000000000000000000000000000000 (size!25309 (_keys!9832 thiss!1181))))))

(assert (=> d!109949 (and (bvsle #b00000000000000000000000000000000 (size!25309 (_keys!9832 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25309 (_keys!9832 thiss!1181)) (size!25309 (_keys!9832 thiss!1181))))))

(assert (=> d!109949 (= (arrayCountValidKeys!0 (_keys!9832 thiss!1181) #b00000000000000000000000000000000 (size!25309 (_keys!9832 thiss!1181))) lt!401584)))

(declare-fun b!888065 () Bool)

(assert (=> b!888065 (= e!494808 #b00000000000000000000000000000000)))

(declare-fun bm!39415 () Bool)

(assert (=> bm!39415 (= call!39418 (arrayCountValidKeys!0 (_keys!9832 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25309 (_keys!9832 thiss!1181))))))

(assert (= (and d!109949 c!93721) b!888065))

(assert (= (and d!109949 (not c!93721)) b!888063))

(assert (= (and b!888063 c!93722) b!888064))

(assert (= (and b!888063 (not c!93722)) b!888062))

(assert (= (or b!888064 b!888062) bm!39415))

(assert (=> b!888063 m!827503))

(assert (=> b!888063 m!827503))

(declare-fun m!827549 () Bool)

(assert (=> b!888063 m!827549))

(declare-fun m!827551 () Bool)

(assert (=> bm!39415 m!827551))

(assert (=> b!887937 d!109949))

(declare-fun b!888108 () Bool)

(declare-fun e!494835 () Unit!30225)

(declare-fun Unit!30230 () Unit!30225)

(assert (=> b!888108 (= e!494835 Unit!30230)))

(declare-fun b!888109 () Bool)

(declare-fun e!494844 () Bool)

(declare-fun e!494836 () Bool)

(assert (=> b!888109 (= e!494844 e!494836)))

(declare-fun res!602333 () Bool)

(assert (=> b!888109 (=> (not res!602333) (not e!494836))))

(declare-fun lt!401650 () ListLongMap!10665)

(assert (=> b!888109 (= res!602333 (contains!4316 lt!401650 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!888109 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25309 (_keys!9832 thiss!1181))))))

(declare-fun b!888110 () Bool)

(declare-fun e!494841 () Bool)

(declare-fun e!494843 () Bool)

(assert (=> b!888110 (= e!494841 e!494843)))

(declare-fun res!602328 () Bool)

(declare-fun call!39436 () Bool)

(assert (=> b!888110 (= res!602328 call!39436)))

(assert (=> b!888110 (=> (not res!602328) (not e!494843))))

(declare-fun b!888111 () Bool)

(declare-fun e!494839 () ListLongMap!10665)

(declare-fun e!494842 () ListLongMap!10665)

(assert (=> b!888111 (= e!494839 e!494842)))

(declare-fun c!93740 () Bool)

(assert (=> b!888111 (= c!93740 (and (not (= (bvand (extraKeys!4853 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4853 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!888112 () Bool)

(declare-fun e!494845 () Bool)

(assert (=> b!888112 (= e!494845 e!494841)))

(declare-fun c!93736 () Bool)

(assert (=> b!888112 (= c!93736 (not (= (bvand (extraKeys!4853 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!39430 () Bool)

(declare-fun call!39439 () ListLongMap!10665)

(declare-fun call!39437 () ListLongMap!10665)

(assert (=> bm!39430 (= call!39439 call!39437)))

(declare-fun b!888113 () Bool)

(assert (=> b!888113 (= e!494841 (not call!39436))))

(declare-fun b!888114 () Bool)

(declare-fun call!39433 () ListLongMap!10665)

(assert (=> b!888114 (= e!494842 call!39433)))

(declare-fun bm!39431 () Bool)

(declare-fun call!39435 () ListLongMap!10665)

(assert (=> bm!39431 (= call!39437 call!39435)))

(declare-fun b!888116 () Bool)

(declare-fun lt!401638 () Unit!30225)

(assert (=> b!888116 (= e!494835 lt!401638)))

(declare-fun lt!401635 () ListLongMap!10665)

(declare-fun getCurrentListMapNoExtraKeys!3288 (array!51720 array!51722 (_ BitVec 32) (_ BitVec 32) V!28809 V!28809 (_ BitVec 32) Int) ListLongMap!10665)

(assert (=> b!888116 (= lt!401635 (getCurrentListMapNoExtraKeys!3288 (_keys!9832 thiss!1181) (_values!5144 thiss!1181) (mask!25564 thiss!1181) (extraKeys!4853 thiss!1181) (zeroValue!4957 thiss!1181) (minValue!4957 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5159 thiss!1181)))))

(declare-fun lt!401636 () (_ BitVec 64))

(assert (=> b!888116 (= lt!401636 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!401646 () (_ BitVec 64))

(assert (=> b!888116 (= lt!401646 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!401634 () Unit!30225)

(declare-fun addStillContains!326 (ListLongMap!10665 (_ BitVec 64) V!28809 (_ BitVec 64)) Unit!30225)

(assert (=> b!888116 (= lt!401634 (addStillContains!326 lt!401635 lt!401636 (zeroValue!4957 thiss!1181) lt!401646))))

(declare-fun +!2540 (ListLongMap!10665 tuple2!11954) ListLongMap!10665)

(assert (=> b!888116 (contains!4316 (+!2540 lt!401635 (tuple2!11955 lt!401636 (zeroValue!4957 thiss!1181))) lt!401646)))

(declare-fun lt!401641 () Unit!30225)

(assert (=> b!888116 (= lt!401641 lt!401634)))

(declare-fun lt!401642 () ListLongMap!10665)

(assert (=> b!888116 (= lt!401642 (getCurrentListMapNoExtraKeys!3288 (_keys!9832 thiss!1181) (_values!5144 thiss!1181) (mask!25564 thiss!1181) (extraKeys!4853 thiss!1181) (zeroValue!4957 thiss!1181) (minValue!4957 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5159 thiss!1181)))))

(declare-fun lt!401644 () (_ BitVec 64))

(assert (=> b!888116 (= lt!401644 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!401639 () (_ BitVec 64))

(assert (=> b!888116 (= lt!401639 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!401637 () Unit!30225)

(declare-fun addApplyDifferent!326 (ListLongMap!10665 (_ BitVec 64) V!28809 (_ BitVec 64)) Unit!30225)

(assert (=> b!888116 (= lt!401637 (addApplyDifferent!326 lt!401642 lt!401644 (minValue!4957 thiss!1181) lt!401639))))

(declare-fun apply!397 (ListLongMap!10665 (_ BitVec 64)) V!28809)

(assert (=> b!888116 (= (apply!397 (+!2540 lt!401642 (tuple2!11955 lt!401644 (minValue!4957 thiss!1181))) lt!401639) (apply!397 lt!401642 lt!401639))))

(declare-fun lt!401647 () Unit!30225)

(assert (=> b!888116 (= lt!401647 lt!401637)))

(declare-fun lt!401649 () ListLongMap!10665)

(assert (=> b!888116 (= lt!401649 (getCurrentListMapNoExtraKeys!3288 (_keys!9832 thiss!1181) (_values!5144 thiss!1181) (mask!25564 thiss!1181) (extraKeys!4853 thiss!1181) (zeroValue!4957 thiss!1181) (minValue!4957 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5159 thiss!1181)))))

(declare-fun lt!401631 () (_ BitVec 64))

(assert (=> b!888116 (= lt!401631 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!401632 () (_ BitVec 64))

(assert (=> b!888116 (= lt!401632 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!401648 () Unit!30225)

(assert (=> b!888116 (= lt!401648 (addApplyDifferent!326 lt!401649 lt!401631 (zeroValue!4957 thiss!1181) lt!401632))))

(assert (=> b!888116 (= (apply!397 (+!2540 lt!401649 (tuple2!11955 lt!401631 (zeroValue!4957 thiss!1181))) lt!401632) (apply!397 lt!401649 lt!401632))))

(declare-fun lt!401633 () Unit!30225)

(assert (=> b!888116 (= lt!401633 lt!401648)))

(declare-fun lt!401643 () ListLongMap!10665)

(assert (=> b!888116 (= lt!401643 (getCurrentListMapNoExtraKeys!3288 (_keys!9832 thiss!1181) (_values!5144 thiss!1181) (mask!25564 thiss!1181) (extraKeys!4853 thiss!1181) (zeroValue!4957 thiss!1181) (minValue!4957 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5159 thiss!1181)))))

(declare-fun lt!401645 () (_ BitVec 64))

(assert (=> b!888116 (= lt!401645 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!401640 () (_ BitVec 64))

(assert (=> b!888116 (= lt!401640 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!888116 (= lt!401638 (addApplyDifferent!326 lt!401643 lt!401645 (minValue!4957 thiss!1181) lt!401640))))

(assert (=> b!888116 (= (apply!397 (+!2540 lt!401643 (tuple2!11955 lt!401645 (minValue!4957 thiss!1181))) lt!401640) (apply!397 lt!401643 lt!401640))))

(declare-fun b!888117 () Bool)

(assert (=> b!888117 (= e!494843 (= (apply!397 lt!401650 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4957 thiss!1181)))))

(declare-fun b!888118 () Bool)

(declare-fun c!93739 () Bool)

(assert (=> b!888118 (= c!93739 (and (not (= (bvand (extraKeys!4853 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4853 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!494837 () ListLongMap!10665)

(assert (=> b!888118 (= e!494842 e!494837)))

(declare-fun bm!39432 () Bool)

(assert (=> bm!39432 (= call!39436 (contains!4316 lt!401650 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!39433 () Bool)

(assert (=> bm!39433 (= call!39435 (getCurrentListMapNoExtraKeys!3288 (_keys!9832 thiss!1181) (_values!5144 thiss!1181) (mask!25564 thiss!1181) (extraKeys!4853 thiss!1181) (zeroValue!4957 thiss!1181) (minValue!4957 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5159 thiss!1181)))))

(declare-fun b!888119 () Bool)

(declare-fun res!602326 () Bool)

(assert (=> b!888119 (=> (not res!602326) (not e!494845))))

(assert (=> b!888119 (= res!602326 e!494844)))

(declare-fun res!602327 () Bool)

(assert (=> b!888119 (=> res!602327 e!494844)))

(declare-fun e!494846 () Bool)

(assert (=> b!888119 (= res!602327 (not e!494846))))

(declare-fun res!602329 () Bool)

(assert (=> b!888119 (=> (not res!602329) (not e!494846))))

(assert (=> b!888119 (= res!602329 (bvslt #b00000000000000000000000000000000 (size!25309 (_keys!9832 thiss!1181))))))

(declare-fun bm!39434 () Bool)

(declare-fun call!39438 () Bool)

(assert (=> bm!39434 (= call!39438 (contains!4316 lt!401650 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!39435 () Bool)

(declare-fun call!39434 () ListLongMap!10665)

(assert (=> bm!39435 (= call!39433 call!39434)))

(declare-fun b!888120 () Bool)

(declare-fun get!13144 (ValueCell!8460 V!28809) V!28809)

(declare-fun dynLambda!1285 (Int (_ BitVec 64)) V!28809)

(assert (=> b!888120 (= e!494836 (= (apply!397 lt!401650 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000)) (get!13144 (select (arr!24869 (_values!5144 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1285 (defaultEntry!5159 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!888120 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25310 (_values!5144 thiss!1181))))))

(assert (=> b!888120 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25309 (_keys!9832 thiss!1181))))))

(declare-fun b!888121 () Bool)

(assert (=> b!888121 (= e!494846 (validKeyInArray!0 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!888122 () Bool)

(declare-fun res!602332 () Bool)

(assert (=> b!888122 (=> (not res!602332) (not e!494845))))

(declare-fun e!494840 () Bool)

(assert (=> b!888122 (= res!602332 e!494840)))

(declare-fun c!93738 () Bool)

(assert (=> b!888122 (= c!93738 (not (= (bvand (extraKeys!4853 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!888123 () Bool)

(declare-fun e!494838 () Bool)

(assert (=> b!888123 (= e!494840 e!494838)))

(declare-fun res!602331 () Bool)

(assert (=> b!888123 (= res!602331 call!39438)))

(assert (=> b!888123 (=> (not res!602331) (not e!494838))))

(declare-fun b!888124 () Bool)

(assert (=> b!888124 (= e!494838 (= (apply!397 lt!401650 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4957 thiss!1181)))))

(declare-fun c!93737 () Bool)

(declare-fun bm!39436 () Bool)

(assert (=> bm!39436 (= call!39434 (+!2540 (ite c!93737 call!39435 (ite c!93740 call!39437 call!39439)) (ite (or c!93737 c!93740) (tuple2!11955 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4957 thiss!1181)) (tuple2!11955 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4957 thiss!1181)))))))

(declare-fun b!888125 () Bool)

(assert (=> b!888125 (= e!494837 call!39439)))

(declare-fun b!888115 () Bool)

(declare-fun e!494847 () Bool)

(assert (=> b!888115 (= e!494847 (validKeyInArray!0 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!109951 () Bool)

(assert (=> d!109951 e!494845))

(declare-fun res!602330 () Bool)

(assert (=> d!109951 (=> (not res!602330) (not e!494845))))

(assert (=> d!109951 (= res!602330 (or (bvsge #b00000000000000000000000000000000 (size!25309 (_keys!9832 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25309 (_keys!9832 thiss!1181))))))))

(declare-fun lt!401629 () ListLongMap!10665)

(assert (=> d!109951 (= lt!401650 lt!401629)))

(declare-fun lt!401630 () Unit!30225)

(assert (=> d!109951 (= lt!401630 e!494835)))

(declare-fun c!93735 () Bool)

(assert (=> d!109951 (= c!93735 e!494847)))

(declare-fun res!602334 () Bool)

(assert (=> d!109951 (=> (not res!602334) (not e!494847))))

(assert (=> d!109951 (= res!602334 (bvslt #b00000000000000000000000000000000 (size!25309 (_keys!9832 thiss!1181))))))

(assert (=> d!109951 (= lt!401629 e!494839)))

(assert (=> d!109951 (= c!93737 (and (not (= (bvand (extraKeys!4853 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4853 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!109951 (validMask!0 (mask!25564 thiss!1181))))

(assert (=> d!109951 (= (getCurrentListMap!2604 (_keys!9832 thiss!1181) (_values!5144 thiss!1181) (mask!25564 thiss!1181) (extraKeys!4853 thiss!1181) (zeroValue!4957 thiss!1181) (minValue!4957 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5159 thiss!1181)) lt!401650)))

(declare-fun b!888126 () Bool)

(assert (=> b!888126 (= e!494839 (+!2540 call!39434 (tuple2!11955 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4957 thiss!1181))))))

(declare-fun b!888127 () Bool)

(assert (=> b!888127 (= e!494840 (not call!39438))))

(declare-fun b!888128 () Bool)

(assert (=> b!888128 (= e!494837 call!39433)))

(assert (= (and d!109951 c!93737) b!888126))

(assert (= (and d!109951 (not c!93737)) b!888111))

(assert (= (and b!888111 c!93740) b!888114))

(assert (= (and b!888111 (not c!93740)) b!888118))

(assert (= (and b!888118 c!93739) b!888128))

(assert (= (and b!888118 (not c!93739)) b!888125))

(assert (= (or b!888128 b!888125) bm!39430))

(assert (= (or b!888114 bm!39430) bm!39431))

(assert (= (or b!888114 b!888128) bm!39435))

(assert (= (or b!888126 bm!39431) bm!39433))

(assert (= (or b!888126 bm!39435) bm!39436))

(assert (= (and d!109951 res!602334) b!888115))

(assert (= (and d!109951 c!93735) b!888116))

(assert (= (and d!109951 (not c!93735)) b!888108))

(assert (= (and d!109951 res!602330) b!888119))

(assert (= (and b!888119 res!602329) b!888121))

(assert (= (and b!888119 (not res!602327)) b!888109))

(assert (= (and b!888109 res!602333) b!888120))

(assert (= (and b!888119 res!602326) b!888122))

(assert (= (and b!888122 c!93738) b!888123))

(assert (= (and b!888122 (not c!93738)) b!888127))

(assert (= (and b!888123 res!602331) b!888124))

(assert (= (or b!888123 b!888127) bm!39434))

(assert (= (and b!888122 res!602332) b!888112))

(assert (= (and b!888112 c!93736) b!888110))

(assert (= (and b!888112 (not c!93736)) b!888113))

(assert (= (and b!888110 res!602328) b!888117))

(assert (= (or b!888110 b!888113) bm!39432))

(declare-fun b_lambda!12905 () Bool)

(assert (=> (not b_lambda!12905) (not b!888120)))

(declare-fun t!25077 () Bool)

(declare-fun tb!5155 () Bool)

(assert (=> (and b!887908 (= (defaultEntry!5159 thiss!1181) (defaultEntry!5159 thiss!1181)) t!25077) tb!5155))

(declare-fun result!10003 () Bool)

(assert (=> tb!5155 (= result!10003 tp_is_empty!17883)))

(assert (=> b!888120 t!25077))

(declare-fun b_and!25813 () Bool)

(assert (= b_and!25809 (and (=> t!25077 result!10003) b_and!25813)))

(assert (=> b!888121 m!827503))

(assert (=> b!888121 m!827503))

(assert (=> b!888121 m!827549))

(declare-fun m!827553 () Bool)

(assert (=> bm!39436 m!827553))

(declare-fun m!827555 () Bool)

(assert (=> b!888120 m!827555))

(assert (=> b!888120 m!827503))

(declare-fun m!827557 () Bool)

(assert (=> b!888120 m!827557))

(declare-fun m!827559 () Bool)

(assert (=> b!888120 m!827559))

(assert (=> b!888120 m!827555))

(assert (=> b!888120 m!827559))

(declare-fun m!827561 () Bool)

(assert (=> b!888120 m!827561))

(assert (=> b!888120 m!827503))

(declare-fun m!827563 () Bool)

(assert (=> b!888124 m!827563))

(declare-fun m!827565 () Bool)

(assert (=> b!888126 m!827565))

(assert (=> b!888109 m!827503))

(assert (=> b!888109 m!827503))

(declare-fun m!827567 () Bool)

(assert (=> b!888109 m!827567))

(declare-fun m!827569 () Bool)

(assert (=> bm!39434 m!827569))

(declare-fun m!827571 () Bool)

(assert (=> b!888116 m!827571))

(declare-fun m!827573 () Bool)

(assert (=> b!888116 m!827573))

(declare-fun m!827575 () Bool)

(assert (=> b!888116 m!827575))

(assert (=> b!888116 m!827571))

(declare-fun m!827577 () Bool)

(assert (=> b!888116 m!827577))

(declare-fun m!827579 () Bool)

(assert (=> b!888116 m!827579))

(declare-fun m!827581 () Bool)

(assert (=> b!888116 m!827581))

(declare-fun m!827583 () Bool)

(assert (=> b!888116 m!827583))

(assert (=> b!888116 m!827503))

(declare-fun m!827585 () Bool)

(assert (=> b!888116 m!827585))

(declare-fun m!827587 () Bool)

(assert (=> b!888116 m!827587))

(declare-fun m!827589 () Bool)

(assert (=> b!888116 m!827589))

(declare-fun m!827591 () Bool)

(assert (=> b!888116 m!827591))

(assert (=> b!888116 m!827581))

(declare-fun m!827593 () Bool)

(assert (=> b!888116 m!827593))

(declare-fun m!827595 () Bool)

(assert (=> b!888116 m!827595))

(declare-fun m!827597 () Bool)

(assert (=> b!888116 m!827597))

(declare-fun m!827599 () Bool)

(assert (=> b!888116 m!827599))

(assert (=> b!888116 m!827577))

(declare-fun m!827601 () Bool)

(assert (=> b!888116 m!827601))

(assert (=> b!888116 m!827595))

(assert (=> b!888115 m!827503))

(assert (=> b!888115 m!827503))

(assert (=> b!888115 m!827549))

(declare-fun m!827603 () Bool)

(assert (=> b!888117 m!827603))

(assert (=> d!109951 m!827509))

(declare-fun m!827605 () Bool)

(assert (=> bm!39432 m!827605))

(assert (=> bm!39433 m!827601))

(assert (=> d!109919 d!109951))

(declare-fun d!109953 () Bool)

(declare-fun res!602346 () Bool)

(declare-fun e!494850 () Bool)

(assert (=> d!109953 (=> (not res!602346) (not e!494850))))

(assert (=> d!109953 (= res!602346 (validMask!0 (mask!25564 thiss!1181)))))

(assert (=> d!109953 (= (simpleValid!288 thiss!1181) e!494850)))

(declare-fun b!888140 () Bool)

(declare-fun res!602344 () Bool)

(assert (=> b!888140 (=> (not res!602344) (not e!494850))))

(declare-fun size!25313 (LongMapFixedSize!3936) (_ BitVec 32))

(assert (=> b!888140 (= res!602344 (bvsge (size!25313 thiss!1181) (_size!2023 thiss!1181)))))

(declare-fun b!888142 () Bool)

(assert (=> b!888142 (= e!494850 (and (bvsge (extraKeys!4853 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4853 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2023 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!888141 () Bool)

(declare-fun res!602345 () Bool)

(assert (=> b!888141 (=> (not res!602345) (not e!494850))))

(assert (=> b!888141 (= res!602345 (= (size!25313 thiss!1181) (bvadd (_size!2023 thiss!1181) (bvsdiv (bvadd (extraKeys!4853 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!888139 () Bool)

(declare-fun res!602343 () Bool)

(assert (=> b!888139 (=> (not res!602343) (not e!494850))))

(assert (=> b!888139 (= res!602343 (and (= (size!25310 (_values!5144 thiss!1181)) (bvadd (mask!25564 thiss!1181) #b00000000000000000000000000000001)) (= (size!25309 (_keys!9832 thiss!1181)) (size!25310 (_values!5144 thiss!1181))) (bvsge (_size!2023 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2023 thiss!1181) (bvadd (mask!25564 thiss!1181) #b00000000000000000000000000000001))))))

(assert (= (and d!109953 res!602346) b!888139))

(assert (= (and b!888139 res!602343) b!888140))

(assert (= (and b!888140 res!602344) b!888141))

(assert (= (and b!888141 res!602345) b!888142))

(assert (=> d!109953 m!827509))

(declare-fun m!827607 () Bool)

(assert (=> b!888140 m!827607))

(assert (=> b!888141 m!827607))

(assert (=> d!109913 d!109953))

(declare-fun d!109955 () Bool)

(declare-fun e!494852 () Bool)

(assert (=> d!109955 e!494852))

(declare-fun res!602347 () Bool)

(assert (=> d!109955 (=> res!602347 e!494852)))

(declare-fun lt!401652 () Bool)

(assert (=> d!109955 (= res!602347 (not lt!401652))))

(declare-fun lt!401653 () Bool)

(assert (=> d!109955 (= lt!401652 lt!401653)))

(declare-fun lt!401651 () Unit!30225)

(declare-fun e!494851 () Unit!30225)

(assert (=> d!109955 (= lt!401651 e!494851)))

(declare-fun c!93741 () Bool)

(assert (=> d!109955 (= c!93741 lt!401653)))

(assert (=> d!109955 (= lt!401653 (containsKey!420 (toList!5348 call!39410) (ite c!93691 (select (arr!24868 (_keys!9832 thiss!1181)) (index!37391 lt!401515)) key!785)))))

(assert (=> d!109955 (= (contains!4316 call!39410 (ite c!93691 (select (arr!24868 (_keys!9832 thiss!1181)) (index!37391 lt!401515)) key!785)) lt!401652)))

(declare-fun b!888143 () Bool)

(declare-fun lt!401654 () Unit!30225)

(assert (=> b!888143 (= e!494851 lt!401654)))

(assert (=> b!888143 (= lt!401654 (lemmaContainsKeyImpliesGetValueByKeyDefined!315 (toList!5348 call!39410) (ite c!93691 (select (arr!24868 (_keys!9832 thiss!1181)) (index!37391 lt!401515)) key!785)))))

(assert (=> b!888143 (isDefined!318 (getValueByKey!437 (toList!5348 call!39410) (ite c!93691 (select (arr!24868 (_keys!9832 thiss!1181)) (index!37391 lt!401515)) key!785)))))

(declare-fun b!888144 () Bool)

(declare-fun Unit!30231 () Unit!30225)

(assert (=> b!888144 (= e!494851 Unit!30231)))

(declare-fun b!888145 () Bool)

(assert (=> b!888145 (= e!494852 (isDefined!318 (getValueByKey!437 (toList!5348 call!39410) (ite c!93691 (select (arr!24868 (_keys!9832 thiss!1181)) (index!37391 lt!401515)) key!785))))))

(assert (= (and d!109955 c!93741) b!888143))

(assert (= (and d!109955 (not c!93741)) b!888144))

(assert (= (and d!109955 (not res!602347)) b!888145))

(declare-fun m!827609 () Bool)

(assert (=> d!109955 m!827609))

(declare-fun m!827611 () Bool)

(assert (=> b!888143 m!827611))

(declare-fun m!827613 () Bool)

(assert (=> b!888143 m!827613))

(assert (=> b!888143 m!827613))

(declare-fun m!827615 () Bool)

(assert (=> b!888143 m!827615))

(assert (=> b!888145 m!827613))

(assert (=> b!888145 m!827613))

(assert (=> b!888145 m!827615))

(assert (=> bm!39407 d!109955))

(assert (=> bm!39408 d!109951))

(declare-fun d!109957 () Bool)

(assert (=> d!109957 (= (isEmpty!680 (getValueByKey!437 (toList!5348 (map!12104 thiss!1181)) key!785)) (not ((_ is Some!442) (getValueByKey!437 (toList!5348 (map!12104 thiss!1181)) key!785))))))

(assert (=> d!109915 d!109957))

(declare-fun b!888146 () Bool)

(declare-fun e!494853 () Bool)

(declare-fun e!494854 () Bool)

(assert (=> b!888146 (= e!494853 e!494854)))

(declare-fun lt!401656 () (_ BitVec 64))

(assert (=> b!888146 (= lt!401656 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!401655 () Unit!30225)

(assert (=> b!888146 (= lt!401655 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9832 thiss!1181) lt!401656 #b00000000000000000000000000000000))))

(assert (=> b!888146 (arrayContainsKey!0 (_keys!9832 thiss!1181) lt!401656 #b00000000000000000000000000000000)))

(declare-fun lt!401657 () Unit!30225)

(assert (=> b!888146 (= lt!401657 lt!401655)))

(declare-fun res!602348 () Bool)

(assert (=> b!888146 (= res!602348 (= (seekEntryOrOpen!0 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000) (_keys!9832 thiss!1181) (mask!25564 thiss!1181)) (Found!8755 #b00000000000000000000000000000000)))))

(assert (=> b!888146 (=> (not res!602348) (not e!494854))))

(declare-fun b!888147 () Bool)

(declare-fun e!494855 () Bool)

(assert (=> b!888147 (= e!494855 e!494853)))

(declare-fun c!93742 () Bool)

(assert (=> b!888147 (= c!93742 (validKeyInArray!0 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!888148 () Bool)

(declare-fun call!39440 () Bool)

(assert (=> b!888148 (= e!494853 call!39440)))

(declare-fun b!888149 () Bool)

(assert (=> b!888149 (= e!494854 call!39440)))

(declare-fun bm!39437 () Bool)

(assert (=> bm!39437 (= call!39440 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!9832 thiss!1181) (mask!25564 thiss!1181)))))

(declare-fun d!109959 () Bool)

(declare-fun res!602349 () Bool)

(assert (=> d!109959 (=> res!602349 e!494855)))

(assert (=> d!109959 (= res!602349 (bvsge #b00000000000000000000000000000000 (size!25309 (_keys!9832 thiss!1181))))))

(assert (=> d!109959 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9832 thiss!1181) (mask!25564 thiss!1181)) e!494855)))

(assert (= (and d!109959 (not res!602349)) b!888147))

(assert (= (and b!888147 c!93742) b!888146))

(assert (= (and b!888147 (not c!93742)) b!888148))

(assert (= (and b!888146 res!602348) b!888149))

(assert (= (or b!888149 b!888148) bm!39437))

(assert (=> b!888146 m!827503))

(declare-fun m!827617 () Bool)

(assert (=> b!888146 m!827617))

(declare-fun m!827619 () Bool)

(assert (=> b!888146 m!827619))

(assert (=> b!888146 m!827503))

(declare-fun m!827621 () Bool)

(assert (=> b!888146 m!827621))

(assert (=> b!888147 m!827503))

(assert (=> b!888147 m!827503))

(assert (=> b!888147 m!827549))

(declare-fun m!827623 () Bool)

(assert (=> bm!39437 m!827623))

(assert (=> b!887938 d!109959))

(assert (=> b!887980 d!109937))

(declare-fun bm!39440 () Bool)

(declare-fun call!39443 () Bool)

(declare-fun c!93745 () Bool)

(assert (=> bm!39440 (= call!39443 (arrayNoDuplicates!0 (_keys!9832 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!93745 (Cons!17768 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000) Nil!17769) Nil!17769)))))

(declare-fun b!888160 () Bool)

(declare-fun e!494866 () Bool)

(declare-fun e!494865 () Bool)

(assert (=> b!888160 (= e!494866 e!494865)))

(assert (=> b!888160 (= c!93745 (validKeyInArray!0 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!888161 () Bool)

(declare-fun e!494867 () Bool)

(declare-fun contains!4317 (List!17772 (_ BitVec 64)) Bool)

(assert (=> b!888161 (= e!494867 (contains!4317 Nil!17769 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!888162 () Bool)

(assert (=> b!888162 (= e!494865 call!39443)))

(declare-fun b!888163 () Bool)

(declare-fun e!494864 () Bool)

(assert (=> b!888163 (= e!494864 e!494866)))

(declare-fun res!602358 () Bool)

(assert (=> b!888163 (=> (not res!602358) (not e!494866))))

(assert (=> b!888163 (= res!602358 (not e!494867))))

(declare-fun res!602357 () Bool)

(assert (=> b!888163 (=> (not res!602357) (not e!494867))))

(assert (=> b!888163 (= res!602357 (validKeyInArray!0 (select (arr!24868 (_keys!9832 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!109961 () Bool)

(declare-fun res!602356 () Bool)

(assert (=> d!109961 (=> res!602356 e!494864)))

(assert (=> d!109961 (= res!602356 (bvsge #b00000000000000000000000000000000 (size!25309 (_keys!9832 thiss!1181))))))

(assert (=> d!109961 (= (arrayNoDuplicates!0 (_keys!9832 thiss!1181) #b00000000000000000000000000000000 Nil!17769) e!494864)))

(declare-fun b!888164 () Bool)

(assert (=> b!888164 (= e!494865 call!39443)))

(assert (= (and d!109961 (not res!602356)) b!888163))

(assert (= (and b!888163 res!602357) b!888161))

(assert (= (and b!888163 res!602358) b!888160))

(assert (= (and b!888160 c!93745) b!888162))

(assert (= (and b!888160 (not c!93745)) b!888164))

(assert (= (or b!888162 b!888164) bm!39440))

(assert (=> bm!39440 m!827503))

(declare-fun m!827625 () Bool)

(assert (=> bm!39440 m!827625))

(assert (=> b!888160 m!827503))

(assert (=> b!888160 m!827503))

(assert (=> b!888160 m!827549))

(assert (=> b!888161 m!827503))

(assert (=> b!888161 m!827503))

(declare-fun m!827627 () Bool)

(assert (=> b!888161 m!827627))

(assert (=> b!888163 m!827503))

(assert (=> b!888163 m!827503))

(assert (=> b!888163 m!827549))

(assert (=> b!887939 d!109961))

(declare-fun b!888166 () Bool)

(declare-fun e!494868 () Bool)

(assert (=> b!888166 (= e!494868 tp_is_empty!17883)))

(declare-fun mapIsEmpty!28364 () Bool)

(declare-fun mapRes!28364 () Bool)

(assert (=> mapIsEmpty!28364 mapRes!28364))

(declare-fun b!888165 () Bool)

(declare-fun e!494869 () Bool)

(assert (=> b!888165 (= e!494869 tp_is_empty!17883)))

(declare-fun condMapEmpty!28364 () Bool)

(declare-fun mapDefault!28364 () ValueCell!8460)

(assert (=> mapNonEmpty!28363 (= condMapEmpty!28364 (= mapRest!28363 ((as const (Array (_ BitVec 32) ValueCell!8460)) mapDefault!28364)))))

(assert (=> mapNonEmpty!28363 (= tp!54622 (and e!494868 mapRes!28364))))

(declare-fun mapNonEmpty!28364 () Bool)

(declare-fun tp!54623 () Bool)

(assert (=> mapNonEmpty!28364 (= mapRes!28364 (and tp!54623 e!494869))))

(declare-fun mapValue!28364 () ValueCell!8460)

(declare-fun mapKey!28364 () (_ BitVec 32))

(declare-fun mapRest!28364 () (Array (_ BitVec 32) ValueCell!8460))

(assert (=> mapNonEmpty!28364 (= mapRest!28363 (store mapRest!28364 mapKey!28364 mapValue!28364))))

(assert (= (and mapNonEmpty!28363 condMapEmpty!28364) mapIsEmpty!28364))

(assert (= (and mapNonEmpty!28363 (not condMapEmpty!28364)) mapNonEmpty!28364))

(assert (= (and mapNonEmpty!28364 ((_ is ValueCellFull!8460) mapValue!28364)) b!888165))

(assert (= (and mapNonEmpty!28363 ((_ is ValueCellFull!8460) mapDefault!28364)) b!888166))

(declare-fun m!827629 () Bool)

(assert (=> mapNonEmpty!28364 m!827629))

(declare-fun b_lambda!12907 () Bool)

(assert (= b_lambda!12905 (or (and b!887908 b_free!15555) b_lambda!12907)))

(check-sat (not d!109931) (not b!888161) (not bm!39412) (not b!888147) (not b!888143) (not bm!39437) (not b!888117) (not b!888053) (not b!888140) (not d!109955) (not b!887996) (not b!888160) (not d!109933) (not b!888063) (not b!888141) (not b!888145) (not b!888046) (not b!888120) (not b!888146) (not bm!39436) tp_is_empty!17883 (not b!888009) (not b!888049) (not bm!39432) (not d!109935) (not b!887998) (not bm!39415) (not b!888116) (not b!888126) (not bm!39433) (not b_next!15555) (not b!888124) (not b!888115) (not d!109953) (not b!888038) (not b!888121) (not d!109927) (not b!888037) (not b!888028) (not d!109951) (not bm!39440) (not bm!39434) (not b!888109) (not b!888004) (not b_lambda!12907) (not d!109947) (not d!109937) (not d!109945) (not b!888163) b_and!25813 (not mapNonEmpty!28364))
(check-sat b_and!25813 (not b_next!15555))
