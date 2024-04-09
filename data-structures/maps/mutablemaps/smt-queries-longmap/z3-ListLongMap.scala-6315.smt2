; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81072 () Bool)

(assert start!81072)

(declare-fun b!948850 () Bool)

(declare-fun b_free!18213 () Bool)

(declare-fun b_next!18213 () Bool)

(assert (=> b!948850 (= b_free!18213 (not b_next!18213))))

(declare-fun tp!63222 () Bool)

(declare-fun b_and!29671 () Bool)

(assert (=> b!948850 (= tp!63222 b_and!29671)))

(declare-fun b!948849 () Bool)

(declare-fun e!534198 () Bool)

(declare-fun tp_is_empty!20721 () Bool)

(assert (=> b!948849 (= e!534198 tp_is_empty!20721)))

(declare-fun mapIsEmpty!32979 () Bool)

(declare-fun mapRes!32979 () Bool)

(assert (=> mapIsEmpty!32979 mapRes!32979))

(declare-fun e!534194 () Bool)

(declare-datatypes ((V!32593 0))(
  ( (V!32594 (val!10411 Int)) )
))
(declare-datatypes ((ValueCell!9879 0))(
  ( (ValueCellFull!9879 (v!12950 V!32593)) (EmptyCell!9879) )
))
(declare-datatypes ((array!57474 0))(
  ( (array!57475 (arr!27637 (Array (_ BitVec 32) ValueCell!9879)) (size!28113 (_ BitVec 32))) )
))
(declare-datatypes ((array!57476 0))(
  ( (array!57477 (arr!27638 (Array (_ BitVec 32) (_ BitVec 64))) (size!28114 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4908 0))(
  ( (LongMapFixedSize!4909 (defaultEntry!5759 Int) (mask!27524 (_ BitVec 32)) (extraKeys!5491 (_ BitVec 32)) (zeroValue!5595 V!32593) (minValue!5595 V!32593) (_size!2509 (_ BitVec 32)) (_keys!10679 array!57476) (_values!5782 array!57474) (_vacant!2509 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4908)

(declare-fun e!534197 () Bool)

(declare-fun array_inv!21398 (array!57476) Bool)

(declare-fun array_inv!21399 (array!57474) Bool)

(assert (=> b!948850 (= e!534194 (and tp!63222 tp_is_empty!20721 (array_inv!21398 (_keys!10679 thiss!1141)) (array_inv!21399 (_values!5782 thiss!1141)) e!534197))))

(declare-fun b!948852 () Bool)

(declare-fun res!636560 () Bool)

(declare-fun e!534199 () Bool)

(assert (=> b!948852 (=> (not res!636560) (not e!534199))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13628 0))(
  ( (tuple2!13629 (_1!6824 (_ BitVec 64)) (_2!6824 V!32593)) )
))
(declare-datatypes ((List!19454 0))(
  ( (Nil!19451) (Cons!19450 (h!20608 tuple2!13628) (t!27793 List!19454)) )
))
(declare-datatypes ((ListLongMap!12339 0))(
  ( (ListLongMap!12340 (toList!6185 List!19454)) )
))
(declare-fun contains!5222 (ListLongMap!12339 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3370 (array!57476 array!57474 (_ BitVec 32) (_ BitVec 32) V!32593 V!32593 (_ BitVec 32) Int) ListLongMap!12339)

(assert (=> b!948852 (= res!636560 (contains!5222 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)) key!756))))

(declare-fun b!948853 () Bool)

(declare-fun res!636562 () Bool)

(assert (=> b!948853 (=> (not res!636562) (not e!534199))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9121 0))(
  ( (MissingZero!9121 (index!38854 (_ BitVec 32))) (Found!9121 (index!38855 (_ BitVec 32))) (Intermediate!9121 (undefined!9933 Bool) (index!38856 (_ BitVec 32)) (x!81636 (_ BitVec 32))) (Undefined!9121) (MissingVacant!9121 (index!38857 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57476 (_ BitVec 32)) SeekEntryResult!9121)

(assert (=> b!948853 (= res!636562 (not ((_ is Found!9121) (seekEntry!0 key!756 (_keys!10679 thiss!1141) (mask!27524 thiss!1141)))))))

(declare-fun b!948854 () Bool)

(declare-fun res!636561 () Bool)

(assert (=> b!948854 (=> (not res!636561) (not e!534199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!948854 (= res!636561 (validMask!0 (mask!27524 thiss!1141)))))

(declare-fun res!636559 () Bool)

(assert (=> start!81072 (=> (not res!636559) (not e!534199))))

(declare-fun valid!1844 (LongMapFixedSize!4908) Bool)

(assert (=> start!81072 (= res!636559 (valid!1844 thiss!1141))))

(assert (=> start!81072 e!534199))

(assert (=> start!81072 e!534194))

(assert (=> start!81072 true))

(declare-fun b!948851 () Bool)

(declare-fun e!534195 () Bool)

(assert (=> b!948851 (= e!534197 (and e!534195 mapRes!32979))))

(declare-fun condMapEmpty!32979 () Bool)

(declare-fun mapDefault!32979 () ValueCell!9879)

(assert (=> b!948851 (= condMapEmpty!32979 (= (arr!27637 (_values!5782 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9879)) mapDefault!32979)))))

(declare-fun b!948855 () Bool)

(assert (=> b!948855 (= e!534199 (and (= (size!28113 (_values!5782 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27524 thiss!1141))) (= (size!28114 (_keys!10679 thiss!1141)) (size!28113 (_values!5782 thiss!1141))) (bvsge (mask!27524 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5491 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!948856 () Bool)

(declare-fun res!636558 () Bool)

(assert (=> b!948856 (=> (not res!636558) (not e!534199))))

(assert (=> b!948856 (= res!636558 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!948857 () Bool)

(assert (=> b!948857 (= e!534195 tp_is_empty!20721)))

(declare-fun mapNonEmpty!32979 () Bool)

(declare-fun tp!63221 () Bool)

(assert (=> mapNonEmpty!32979 (= mapRes!32979 (and tp!63221 e!534198))))

(declare-fun mapValue!32979 () ValueCell!9879)

(declare-fun mapKey!32979 () (_ BitVec 32))

(declare-fun mapRest!32979 () (Array (_ BitVec 32) ValueCell!9879))

(assert (=> mapNonEmpty!32979 (= (arr!27637 (_values!5782 thiss!1141)) (store mapRest!32979 mapKey!32979 mapValue!32979))))

(assert (= (and start!81072 res!636559) b!948856))

(assert (= (and b!948856 res!636558) b!948853))

(assert (= (and b!948853 res!636562) b!948852))

(assert (= (and b!948852 res!636560) b!948854))

(assert (= (and b!948854 res!636561) b!948855))

(assert (= (and b!948851 condMapEmpty!32979) mapIsEmpty!32979))

(assert (= (and b!948851 (not condMapEmpty!32979)) mapNonEmpty!32979))

(assert (= (and mapNonEmpty!32979 ((_ is ValueCellFull!9879) mapValue!32979)) b!948849))

(assert (= (and b!948851 ((_ is ValueCellFull!9879) mapDefault!32979)) b!948857))

(assert (= b!948850 b!948851))

(assert (= start!81072 b!948850))

(declare-fun m!881639 () Bool)

(assert (=> b!948854 m!881639))

(declare-fun m!881641 () Bool)

(assert (=> b!948850 m!881641))

(declare-fun m!881643 () Bool)

(assert (=> b!948850 m!881643))

(declare-fun m!881645 () Bool)

(assert (=> start!81072 m!881645))

(declare-fun m!881647 () Bool)

(assert (=> mapNonEmpty!32979 m!881647))

(declare-fun m!881649 () Bool)

(assert (=> b!948852 m!881649))

(assert (=> b!948852 m!881649))

(declare-fun m!881651 () Bool)

(assert (=> b!948852 m!881651))

(declare-fun m!881653 () Bool)

(assert (=> b!948853 m!881653))

(check-sat (not b!948853) (not start!81072) (not b!948850) (not b_next!18213) (not mapNonEmpty!32979) tp_is_empty!20721 (not b!948852) (not b!948854) b_and!29671)
(check-sat b_and!29671 (not b_next!18213))
(get-model)

(declare-fun d!114869 () Bool)

(assert (=> d!114869 (= (array_inv!21398 (_keys!10679 thiss!1141)) (bvsge (size!28114 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!948850 d!114869))

(declare-fun d!114871 () Bool)

(assert (=> d!114871 (= (array_inv!21399 (_values!5782 thiss!1141)) (bvsge (size!28113 (_values!5782 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!948850 d!114871))

(declare-fun d!114873 () Bool)

(declare-fun e!534222 () Bool)

(assert (=> d!114873 e!534222))

(declare-fun res!636580 () Bool)

(assert (=> d!114873 (=> res!636580 e!534222)))

(declare-fun lt!427288 () Bool)

(assert (=> d!114873 (= res!636580 (not lt!427288))))

(declare-fun lt!427285 () Bool)

(assert (=> d!114873 (= lt!427288 lt!427285)))

(declare-datatypes ((Unit!31956 0))(
  ( (Unit!31957) )
))
(declare-fun lt!427286 () Unit!31956)

(declare-fun e!534223 () Unit!31956)

(assert (=> d!114873 (= lt!427286 e!534223)))

(declare-fun c!98899 () Bool)

(assert (=> d!114873 (= c!98899 lt!427285)))

(declare-fun containsKey!461 (List!19454 (_ BitVec 64)) Bool)

(assert (=> d!114873 (= lt!427285 (containsKey!461 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))) key!756))))

(assert (=> d!114873 (= (contains!5222 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)) key!756) lt!427288)))

(declare-fun b!948891 () Bool)

(declare-fun lt!427287 () Unit!31956)

(assert (=> b!948891 (= e!534223 lt!427287)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!356 (List!19454 (_ BitVec 64)) Unit!31956)

(assert (=> b!948891 (= lt!427287 (lemmaContainsKeyImpliesGetValueByKeyDefined!356 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))) key!756))))

(declare-datatypes ((Option!502 0))(
  ( (Some!501 (v!12952 V!32593)) (None!500) )
))
(declare-fun isDefined!366 (Option!502) Bool)

(declare-fun getValueByKey!496 (List!19454 (_ BitVec 64)) Option!502)

(assert (=> b!948891 (isDefined!366 (getValueByKey!496 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))) key!756))))

(declare-fun b!948892 () Bool)

(declare-fun Unit!31958 () Unit!31956)

(assert (=> b!948892 (= e!534223 Unit!31958)))

(declare-fun b!948893 () Bool)

(assert (=> b!948893 (= e!534222 (isDefined!366 (getValueByKey!496 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))) key!756)))))

(assert (= (and d!114873 c!98899) b!948891))

(assert (= (and d!114873 (not c!98899)) b!948892))

(assert (= (and d!114873 (not res!636580)) b!948893))

(declare-fun m!881671 () Bool)

(assert (=> d!114873 m!881671))

(declare-fun m!881673 () Bool)

(assert (=> b!948891 m!881673))

(declare-fun m!881675 () Bool)

(assert (=> b!948891 m!881675))

(assert (=> b!948891 m!881675))

(declare-fun m!881677 () Bool)

(assert (=> b!948891 m!881677))

(assert (=> b!948893 m!881675))

(assert (=> b!948893 m!881675))

(assert (=> b!948893 m!881677))

(assert (=> b!948852 d!114873))

(declare-fun d!114875 () Bool)

(declare-fun e!534257 () Bool)

(assert (=> d!114875 e!534257))

(declare-fun res!636602 () Bool)

(assert (=> d!114875 (=> (not res!636602) (not e!534257))))

(assert (=> d!114875 (= res!636602 (or (bvsge #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))))))))

(declare-fun lt!427338 () ListLongMap!12339)

(declare-fun lt!427350 () ListLongMap!12339)

(assert (=> d!114875 (= lt!427338 lt!427350)))

(declare-fun lt!427351 () Unit!31956)

(declare-fun e!534261 () Unit!31956)

(assert (=> d!114875 (= lt!427351 e!534261)))

(declare-fun c!98917 () Bool)

(declare-fun e!534252 () Bool)

(assert (=> d!114875 (= c!98917 e!534252)))

(declare-fun res!636607 () Bool)

(assert (=> d!114875 (=> (not res!636607) (not e!534252))))

(assert (=> d!114875 (= res!636607 (bvslt #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))))))

(declare-fun e!534260 () ListLongMap!12339)

(assert (=> d!114875 (= lt!427350 e!534260)))

(declare-fun c!98915 () Bool)

(assert (=> d!114875 (= c!98915 (and (not (= (bvand (extraKeys!5491 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5491 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!114875 (validMask!0 (mask!27524 thiss!1141))))

(assert (=> d!114875 (= (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)) lt!427338)))

(declare-fun b!948936 () Bool)

(declare-fun e!534250 () Bool)

(declare-fun e!534259 () Bool)

(assert (=> b!948936 (= e!534250 e!534259)))

(declare-fun res!636600 () Bool)

(assert (=> b!948936 (=> (not res!636600) (not e!534259))))

(assert (=> b!948936 (= res!636600 (contains!5222 lt!427338 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!948936 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))))))

(declare-fun bm!41265 () Bool)

(declare-fun call!41270 () ListLongMap!12339)

(declare-fun call!41271 () ListLongMap!12339)

(assert (=> bm!41265 (= call!41270 call!41271)))

(declare-fun b!948937 () Bool)

(declare-fun e!534253 () Bool)

(declare-fun e!534254 () Bool)

(assert (=> b!948937 (= e!534253 e!534254)))

(declare-fun res!636604 () Bool)

(declare-fun call!41273 () Bool)

(assert (=> b!948937 (= res!636604 call!41273)))

(assert (=> b!948937 (=> (not res!636604) (not e!534254))))

(declare-fun bm!41266 () Bool)

(declare-fun call!41274 () ListLongMap!12339)

(declare-fun c!98916 () Bool)

(declare-fun call!41272 () ListLongMap!12339)

(declare-fun +!2823 (ListLongMap!12339 tuple2!13628) ListLongMap!12339)

(assert (=> bm!41266 (= call!41272 (+!2823 (ite c!98915 call!41274 (ite c!98916 call!41271 call!41270)) (ite (or c!98915 c!98916) (tuple2!13629 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5595 thiss!1141)) (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141)))))))

(declare-fun b!948938 () Bool)

(declare-fun c!98914 () Bool)

(assert (=> b!948938 (= c!98914 (and (not (= (bvand (extraKeys!5491 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5491 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!534258 () ListLongMap!12339)

(declare-fun e!534262 () ListLongMap!12339)

(assert (=> b!948938 (= e!534258 e!534262)))

(declare-fun b!948939 () Bool)

(declare-fun e!534251 () Bool)

(declare-fun e!534256 () Bool)

(assert (=> b!948939 (= e!534251 e!534256)))

(declare-fun res!636603 () Bool)

(declare-fun call!41269 () Bool)

(assert (=> b!948939 (= res!636603 call!41269)))

(assert (=> b!948939 (=> (not res!636603) (not e!534256))))

(declare-fun b!948940 () Bool)

(assert (=> b!948940 (= e!534260 e!534258)))

(assert (=> b!948940 (= c!98916 (and (not (= (bvand (extraKeys!5491 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5491 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!948941 () Bool)

(assert (=> b!948941 (= e!534262 call!41270)))

(declare-fun b!948942 () Bool)

(declare-fun res!636601 () Bool)

(assert (=> b!948942 (=> (not res!636601) (not e!534257))))

(assert (=> b!948942 (= res!636601 e!534250)))

(declare-fun res!636599 () Bool)

(assert (=> b!948942 (=> res!636599 e!534250)))

(declare-fun e!534255 () Bool)

(assert (=> b!948942 (= res!636599 (not e!534255))))

(declare-fun res!636606 () Bool)

(assert (=> b!948942 (=> (not res!636606) (not e!534255))))

(assert (=> b!948942 (= res!636606 (bvslt #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))))))

(declare-fun bm!41267 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3329 (array!57476 array!57474 (_ BitVec 32) (_ BitVec 32) V!32593 V!32593 (_ BitVec 32) Int) ListLongMap!12339)

(assert (=> bm!41267 (= call!41274 (getCurrentListMapNoExtraKeys!3329 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)))))

(declare-fun bm!41268 () Bool)

(assert (=> bm!41268 (= call!41273 (contains!5222 lt!427338 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!948943 () Bool)

(declare-fun Unit!31959 () Unit!31956)

(assert (=> b!948943 (= e!534261 Unit!31959)))

(declare-fun bm!41269 () Bool)

(assert (=> bm!41269 (= call!41271 call!41274)))

(declare-fun b!948944 () Bool)

(assert (=> b!948944 (= e!534253 (not call!41273))))

(declare-fun b!948945 () Bool)

(declare-fun apply!909 (ListLongMap!12339 (_ BitVec 64)) V!32593)

(assert (=> b!948945 (= e!534256 (= (apply!909 lt!427338 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5595 thiss!1141)))))

(declare-fun b!948946 () Bool)

(assert (=> b!948946 (= e!534257 e!534251)))

(declare-fun c!98913 () Bool)

(assert (=> b!948946 (= c!98913 (not (= (bvand (extraKeys!5491 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!948947 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!948947 (= e!534252 (validKeyInArray!0 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!948948 () Bool)

(declare-fun lt!427344 () Unit!31956)

(assert (=> b!948948 (= e!534261 lt!427344)))

(declare-fun lt!427333 () ListLongMap!12339)

(assert (=> b!948948 (= lt!427333 (getCurrentListMapNoExtraKeys!3329 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)))))

(declare-fun lt!427337 () (_ BitVec 64))

(assert (=> b!948948 (= lt!427337 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427341 () (_ BitVec 64))

(assert (=> b!948948 (= lt!427341 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427340 () Unit!31956)

(declare-fun addStillContains!579 (ListLongMap!12339 (_ BitVec 64) V!32593 (_ BitVec 64)) Unit!31956)

(assert (=> b!948948 (= lt!427340 (addStillContains!579 lt!427333 lt!427337 (zeroValue!5595 thiss!1141) lt!427341))))

(assert (=> b!948948 (contains!5222 (+!2823 lt!427333 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141))) lt!427341)))

(declare-fun lt!427336 () Unit!31956)

(assert (=> b!948948 (= lt!427336 lt!427340)))

(declare-fun lt!427342 () ListLongMap!12339)

(assert (=> b!948948 (= lt!427342 (getCurrentListMapNoExtraKeys!3329 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)))))

(declare-fun lt!427343 () (_ BitVec 64))

(assert (=> b!948948 (= lt!427343 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427352 () (_ BitVec 64))

(assert (=> b!948948 (= lt!427352 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427335 () Unit!31956)

(declare-fun addApplyDifferent!453 (ListLongMap!12339 (_ BitVec 64) V!32593 (_ BitVec 64)) Unit!31956)

(assert (=> b!948948 (= lt!427335 (addApplyDifferent!453 lt!427342 lt!427343 (minValue!5595 thiss!1141) lt!427352))))

(assert (=> b!948948 (= (apply!909 (+!2823 lt!427342 (tuple2!13629 lt!427343 (minValue!5595 thiss!1141))) lt!427352) (apply!909 lt!427342 lt!427352))))

(declare-fun lt!427348 () Unit!31956)

(assert (=> b!948948 (= lt!427348 lt!427335)))

(declare-fun lt!427349 () ListLongMap!12339)

(assert (=> b!948948 (= lt!427349 (getCurrentListMapNoExtraKeys!3329 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)))))

(declare-fun lt!427345 () (_ BitVec 64))

(assert (=> b!948948 (= lt!427345 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427347 () (_ BitVec 64))

(assert (=> b!948948 (= lt!427347 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427353 () Unit!31956)

(assert (=> b!948948 (= lt!427353 (addApplyDifferent!453 lt!427349 lt!427345 (zeroValue!5595 thiss!1141) lt!427347))))

(assert (=> b!948948 (= (apply!909 (+!2823 lt!427349 (tuple2!13629 lt!427345 (zeroValue!5595 thiss!1141))) lt!427347) (apply!909 lt!427349 lt!427347))))

(declare-fun lt!427334 () Unit!31956)

(assert (=> b!948948 (= lt!427334 lt!427353)))

(declare-fun lt!427354 () ListLongMap!12339)

(assert (=> b!948948 (= lt!427354 (getCurrentListMapNoExtraKeys!3329 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)))))

(declare-fun lt!427346 () (_ BitVec 64))

(assert (=> b!948948 (= lt!427346 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427339 () (_ BitVec 64))

(assert (=> b!948948 (= lt!427339 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!948948 (= lt!427344 (addApplyDifferent!453 lt!427354 lt!427346 (minValue!5595 thiss!1141) lt!427339))))

(assert (=> b!948948 (= (apply!909 (+!2823 lt!427354 (tuple2!13629 lt!427346 (minValue!5595 thiss!1141))) lt!427339) (apply!909 lt!427354 lt!427339))))

(declare-fun b!948949 () Bool)

(assert (=> b!948949 (= e!534254 (= (apply!909 lt!427338 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5595 thiss!1141)))))

(declare-fun b!948950 () Bool)

(assert (=> b!948950 (= e!534251 (not call!41269))))

(declare-fun bm!41270 () Bool)

(assert (=> bm!41270 (= call!41269 (contains!5222 lt!427338 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!948951 () Bool)

(declare-fun res!636605 () Bool)

(assert (=> b!948951 (=> (not res!636605) (not e!534257))))

(assert (=> b!948951 (= res!636605 e!534253)))

(declare-fun c!98912 () Bool)

(assert (=> b!948951 (= c!98912 (not (= (bvand (extraKeys!5491 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!948952 () Bool)

(declare-fun call!41268 () ListLongMap!12339)

(assert (=> b!948952 (= e!534258 call!41268)))

(declare-fun b!948953 () Bool)

(assert (=> b!948953 (= e!534260 (+!2823 call!41272 (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141))))))

(declare-fun b!948954 () Bool)

(assert (=> b!948954 (= e!534262 call!41268)))

(declare-fun b!948955 () Bool)

(declare-fun get!14536 (ValueCell!9879 V!32593) V!32593)

(declare-fun dynLambda!1662 (Int (_ BitVec 64)) V!32593)

(assert (=> b!948955 (= e!534259 (= (apply!909 lt!427338 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)) (get!14536 (select (arr!27637 (_values!5782 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1662 (defaultEntry!5759 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!948955 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28113 (_values!5782 thiss!1141))))))

(assert (=> b!948955 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))))))

(declare-fun b!948956 () Bool)

(assert (=> b!948956 (= e!534255 (validKeyInArray!0 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41271 () Bool)

(assert (=> bm!41271 (= call!41268 call!41272)))

(assert (= (and d!114875 c!98915) b!948953))

(assert (= (and d!114875 (not c!98915)) b!948940))

(assert (= (and b!948940 c!98916) b!948952))

(assert (= (and b!948940 (not c!98916)) b!948938))

(assert (= (and b!948938 c!98914) b!948954))

(assert (= (and b!948938 (not c!98914)) b!948941))

(assert (= (or b!948954 b!948941) bm!41265))

(assert (= (or b!948952 bm!41265) bm!41269))

(assert (= (or b!948952 b!948954) bm!41271))

(assert (= (or b!948953 bm!41269) bm!41267))

(assert (= (or b!948953 bm!41271) bm!41266))

(assert (= (and d!114875 res!636607) b!948947))

(assert (= (and d!114875 c!98917) b!948948))

(assert (= (and d!114875 (not c!98917)) b!948943))

(assert (= (and d!114875 res!636602) b!948942))

(assert (= (and b!948942 res!636606) b!948956))

(assert (= (and b!948942 (not res!636599)) b!948936))

(assert (= (and b!948936 res!636600) b!948955))

(assert (= (and b!948942 res!636601) b!948951))

(assert (= (and b!948951 c!98912) b!948937))

(assert (= (and b!948951 (not c!98912)) b!948944))

(assert (= (and b!948937 res!636604) b!948949))

(assert (= (or b!948937 b!948944) bm!41268))

(assert (= (and b!948951 res!636605) b!948946))

(assert (= (and b!948946 c!98913) b!948939))

(assert (= (and b!948946 (not c!98913)) b!948950))

(assert (= (and b!948939 res!636603) b!948945))

(assert (= (or b!948939 b!948950) bm!41270))

(declare-fun b_lambda!14365 () Bool)

(assert (=> (not b_lambda!14365) (not b!948955)))

(declare-fun t!27796 () Bool)

(declare-fun tb!6191 () Bool)

(assert (=> (and b!948850 (= (defaultEntry!5759 thiss!1141) (defaultEntry!5759 thiss!1141)) t!27796) tb!6191))

(declare-fun result!12279 () Bool)

(assert (=> tb!6191 (= result!12279 tp_is_empty!20721)))

(assert (=> b!948955 t!27796))

(declare-fun b_and!29675 () Bool)

(assert (= b_and!29671 (and (=> t!27796 result!12279) b_and!29675)))

(declare-fun m!881679 () Bool)

(assert (=> b!948949 m!881679))

(declare-fun m!881681 () Bool)

(assert (=> b!948948 m!881681))

(declare-fun m!881683 () Bool)

(assert (=> b!948948 m!881683))

(declare-fun m!881685 () Bool)

(assert (=> b!948948 m!881685))

(declare-fun m!881687 () Bool)

(assert (=> b!948948 m!881687))

(declare-fun m!881689 () Bool)

(assert (=> b!948948 m!881689))

(declare-fun m!881691 () Bool)

(assert (=> b!948948 m!881691))

(declare-fun m!881693 () Bool)

(assert (=> b!948948 m!881693))

(declare-fun m!881695 () Bool)

(assert (=> b!948948 m!881695))

(declare-fun m!881697 () Bool)

(assert (=> b!948948 m!881697))

(declare-fun m!881699 () Bool)

(assert (=> b!948948 m!881699))

(declare-fun m!881701 () Bool)

(assert (=> b!948948 m!881701))

(declare-fun m!881703 () Bool)

(assert (=> b!948948 m!881703))

(assert (=> b!948948 m!881701))

(assert (=> b!948948 m!881697))

(declare-fun m!881705 () Bool)

(assert (=> b!948948 m!881705))

(declare-fun m!881707 () Bool)

(assert (=> b!948948 m!881707))

(declare-fun m!881709 () Bool)

(assert (=> b!948948 m!881709))

(declare-fun m!881711 () Bool)

(assert (=> b!948948 m!881711))

(assert (=> b!948948 m!881681))

(assert (=> b!948948 m!881691))

(declare-fun m!881713 () Bool)

(assert (=> b!948948 m!881713))

(declare-fun m!881715 () Bool)

(assert (=> b!948955 m!881715))

(declare-fun m!881717 () Bool)

(assert (=> b!948955 m!881717))

(assert (=> b!948955 m!881715))

(declare-fun m!881719 () Bool)

(assert (=> b!948955 m!881719))

(assert (=> b!948955 m!881707))

(declare-fun m!881721 () Bool)

(assert (=> b!948955 m!881721))

(assert (=> b!948955 m!881717))

(assert (=> b!948955 m!881707))

(assert (=> b!948956 m!881707))

(assert (=> b!948956 m!881707))

(declare-fun m!881723 () Bool)

(assert (=> b!948956 m!881723))

(declare-fun m!881725 () Bool)

(assert (=> b!948953 m!881725))

(assert (=> b!948936 m!881707))

(assert (=> b!948936 m!881707))

(declare-fun m!881727 () Bool)

(assert (=> b!948936 m!881727))

(declare-fun m!881729 () Bool)

(assert (=> b!948945 m!881729))

(declare-fun m!881731 () Bool)

(assert (=> bm!41268 m!881731))

(declare-fun m!881733 () Bool)

(assert (=> bm!41270 m!881733))

(declare-fun m!881735 () Bool)

(assert (=> bm!41266 m!881735))

(assert (=> bm!41267 m!881705))

(assert (=> d!114875 m!881639))

(assert (=> b!948947 m!881707))

(assert (=> b!948947 m!881707))

(assert (=> b!948947 m!881723))

(assert (=> b!948852 d!114875))

(declare-fun d!114877 () Bool)

(declare-fun res!636614 () Bool)

(declare-fun e!534265 () Bool)

(assert (=> d!114877 (=> (not res!636614) (not e!534265))))

(declare-fun simpleValid!369 (LongMapFixedSize!4908) Bool)

(assert (=> d!114877 (= res!636614 (simpleValid!369 thiss!1141))))

(assert (=> d!114877 (= (valid!1844 thiss!1141) e!534265)))

(declare-fun b!948965 () Bool)

(declare-fun res!636615 () Bool)

(assert (=> b!948965 (=> (not res!636615) (not e!534265))))

(declare-fun arrayCountValidKeys!0 (array!57476 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!948965 (= res!636615 (= (arrayCountValidKeys!0 (_keys!10679 thiss!1141) #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))) (_size!2509 thiss!1141)))))

(declare-fun b!948966 () Bool)

(declare-fun res!636616 () Bool)

(assert (=> b!948966 (=> (not res!636616) (not e!534265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57476 (_ BitVec 32)) Bool)

(assert (=> b!948966 (= res!636616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10679 thiss!1141) (mask!27524 thiss!1141)))))

(declare-fun b!948967 () Bool)

(declare-datatypes ((List!19456 0))(
  ( (Nil!19453) (Cons!19452 (h!20610 (_ BitVec 64)) (t!27797 List!19456)) )
))
(declare-fun arrayNoDuplicates!0 (array!57476 (_ BitVec 32) List!19456) Bool)

(assert (=> b!948967 (= e!534265 (arrayNoDuplicates!0 (_keys!10679 thiss!1141) #b00000000000000000000000000000000 Nil!19453))))

(assert (= (and d!114877 res!636614) b!948965))

(assert (= (and b!948965 res!636615) b!948966))

(assert (= (and b!948966 res!636616) b!948967))

(declare-fun m!881737 () Bool)

(assert (=> d!114877 m!881737))

(declare-fun m!881739 () Bool)

(assert (=> b!948965 m!881739))

(declare-fun m!881741 () Bool)

(assert (=> b!948966 m!881741))

(declare-fun m!881743 () Bool)

(assert (=> b!948967 m!881743))

(assert (=> start!81072 d!114877))

(declare-fun b!948980 () Bool)

(declare-fun c!98926 () Bool)

(declare-fun lt!427363 () (_ BitVec 64))

(assert (=> b!948980 (= c!98926 (= lt!427363 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!534273 () SeekEntryResult!9121)

(declare-fun e!534274 () SeekEntryResult!9121)

(assert (=> b!948980 (= e!534273 e!534274)))

(declare-fun b!948981 () Bool)

(declare-fun e!534272 () SeekEntryResult!9121)

(assert (=> b!948981 (= e!534272 Undefined!9121)))

(declare-fun b!948982 () Bool)

(assert (=> b!948982 (= e!534272 e!534273)))

(declare-fun lt!427366 () SeekEntryResult!9121)

(assert (=> b!948982 (= lt!427363 (select (arr!27638 (_keys!10679 thiss!1141)) (index!38856 lt!427366)))))

(declare-fun c!98925 () Bool)

(assert (=> b!948982 (= c!98925 (= lt!427363 key!756))))

(declare-fun d!114879 () Bool)

(declare-fun lt!427364 () SeekEntryResult!9121)

(assert (=> d!114879 (and (or ((_ is MissingVacant!9121) lt!427364) (not ((_ is Found!9121) lt!427364)) (and (bvsge (index!38855 lt!427364) #b00000000000000000000000000000000) (bvslt (index!38855 lt!427364) (size!28114 (_keys!10679 thiss!1141))))) (not ((_ is MissingVacant!9121) lt!427364)) (or (not ((_ is Found!9121) lt!427364)) (= (select (arr!27638 (_keys!10679 thiss!1141)) (index!38855 lt!427364)) key!756)))))

(assert (=> d!114879 (= lt!427364 e!534272)))

(declare-fun c!98924 () Bool)

(assert (=> d!114879 (= c!98924 (and ((_ is Intermediate!9121) lt!427366) (undefined!9933 lt!427366)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57476 (_ BitVec 32)) SeekEntryResult!9121)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114879 (= lt!427366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27524 thiss!1141)) key!756 (_keys!10679 thiss!1141) (mask!27524 thiss!1141)))))

(assert (=> d!114879 (validMask!0 (mask!27524 thiss!1141))))

(assert (=> d!114879 (= (seekEntry!0 key!756 (_keys!10679 thiss!1141) (mask!27524 thiss!1141)) lt!427364)))

(declare-fun b!948983 () Bool)

(declare-fun lt!427365 () SeekEntryResult!9121)

(assert (=> b!948983 (= e!534274 (ite ((_ is MissingVacant!9121) lt!427365) (MissingZero!9121 (index!38857 lt!427365)) lt!427365))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57476 (_ BitVec 32)) SeekEntryResult!9121)

(assert (=> b!948983 (= lt!427365 (seekKeyOrZeroReturnVacant!0 (x!81636 lt!427366) (index!38856 lt!427366) (index!38856 lt!427366) key!756 (_keys!10679 thiss!1141) (mask!27524 thiss!1141)))))

(declare-fun b!948984 () Bool)

(assert (=> b!948984 (= e!534274 (MissingZero!9121 (index!38856 lt!427366)))))

(declare-fun b!948985 () Bool)

(assert (=> b!948985 (= e!534273 (Found!9121 (index!38856 lt!427366)))))

(assert (= (and d!114879 c!98924) b!948981))

(assert (= (and d!114879 (not c!98924)) b!948982))

(assert (= (and b!948982 c!98925) b!948985))

(assert (= (and b!948982 (not c!98925)) b!948980))

(assert (= (and b!948980 c!98926) b!948984))

(assert (= (and b!948980 (not c!98926)) b!948983))

(declare-fun m!881745 () Bool)

(assert (=> b!948982 m!881745))

(declare-fun m!881747 () Bool)

(assert (=> d!114879 m!881747))

(declare-fun m!881749 () Bool)

(assert (=> d!114879 m!881749))

(assert (=> d!114879 m!881749))

(declare-fun m!881751 () Bool)

(assert (=> d!114879 m!881751))

(assert (=> d!114879 m!881639))

(declare-fun m!881753 () Bool)

(assert (=> b!948983 m!881753))

(assert (=> b!948853 d!114879))

(declare-fun d!114881 () Bool)

(assert (=> d!114881 (= (validMask!0 (mask!27524 thiss!1141)) (and (or (= (mask!27524 thiss!1141) #b00000000000000000000000000000111) (= (mask!27524 thiss!1141) #b00000000000000000000000000001111) (= (mask!27524 thiss!1141) #b00000000000000000000000000011111) (= (mask!27524 thiss!1141) #b00000000000000000000000000111111) (= (mask!27524 thiss!1141) #b00000000000000000000000001111111) (= (mask!27524 thiss!1141) #b00000000000000000000000011111111) (= (mask!27524 thiss!1141) #b00000000000000000000000111111111) (= (mask!27524 thiss!1141) #b00000000000000000000001111111111) (= (mask!27524 thiss!1141) #b00000000000000000000011111111111) (= (mask!27524 thiss!1141) #b00000000000000000000111111111111) (= (mask!27524 thiss!1141) #b00000000000000000001111111111111) (= (mask!27524 thiss!1141) #b00000000000000000011111111111111) (= (mask!27524 thiss!1141) #b00000000000000000111111111111111) (= (mask!27524 thiss!1141) #b00000000000000001111111111111111) (= (mask!27524 thiss!1141) #b00000000000000011111111111111111) (= (mask!27524 thiss!1141) #b00000000000000111111111111111111) (= (mask!27524 thiss!1141) #b00000000000001111111111111111111) (= (mask!27524 thiss!1141) #b00000000000011111111111111111111) (= (mask!27524 thiss!1141) #b00000000000111111111111111111111) (= (mask!27524 thiss!1141) #b00000000001111111111111111111111) (= (mask!27524 thiss!1141) #b00000000011111111111111111111111) (= (mask!27524 thiss!1141) #b00000000111111111111111111111111) (= (mask!27524 thiss!1141) #b00000001111111111111111111111111) (= (mask!27524 thiss!1141) #b00000011111111111111111111111111) (= (mask!27524 thiss!1141) #b00000111111111111111111111111111) (= (mask!27524 thiss!1141) #b00001111111111111111111111111111) (= (mask!27524 thiss!1141) #b00011111111111111111111111111111) (= (mask!27524 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27524 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!948854 d!114881))

(declare-fun mapIsEmpty!32985 () Bool)

(declare-fun mapRes!32985 () Bool)

(assert (=> mapIsEmpty!32985 mapRes!32985))

(declare-fun condMapEmpty!32985 () Bool)

(declare-fun mapDefault!32985 () ValueCell!9879)

(assert (=> mapNonEmpty!32979 (= condMapEmpty!32985 (= mapRest!32979 ((as const (Array (_ BitVec 32) ValueCell!9879)) mapDefault!32985)))))

(declare-fun e!534279 () Bool)

(assert (=> mapNonEmpty!32979 (= tp!63221 (and e!534279 mapRes!32985))))

(declare-fun b!948992 () Bool)

(declare-fun e!534280 () Bool)

(assert (=> b!948992 (= e!534280 tp_is_empty!20721)))

(declare-fun mapNonEmpty!32985 () Bool)

(declare-fun tp!63231 () Bool)

(assert (=> mapNonEmpty!32985 (= mapRes!32985 (and tp!63231 e!534280))))

(declare-fun mapKey!32985 () (_ BitVec 32))

(declare-fun mapValue!32985 () ValueCell!9879)

(declare-fun mapRest!32985 () (Array (_ BitVec 32) ValueCell!9879))

(assert (=> mapNonEmpty!32985 (= mapRest!32979 (store mapRest!32985 mapKey!32985 mapValue!32985))))

(declare-fun b!948993 () Bool)

(assert (=> b!948993 (= e!534279 tp_is_empty!20721)))

(assert (= (and mapNonEmpty!32979 condMapEmpty!32985) mapIsEmpty!32985))

(assert (= (and mapNonEmpty!32979 (not condMapEmpty!32985)) mapNonEmpty!32985))

(assert (= (and mapNonEmpty!32985 ((_ is ValueCellFull!9879) mapValue!32985)) b!948992))

(assert (= (and mapNonEmpty!32979 ((_ is ValueCellFull!9879) mapDefault!32985)) b!948993))

(declare-fun m!881755 () Bool)

(assert (=> mapNonEmpty!32985 m!881755))

(declare-fun b_lambda!14367 () Bool)

(assert (= b_lambda!14365 (or (and b!948850 b_free!18213) b_lambda!14367)))

(check-sat (not mapNonEmpty!32985) (not b!948965) (not bm!41268) (not b!948967) b_and!29675 (not b!948966) (not d!114879) (not b!948949) (not bm!41270) (not b!948891) (not bm!41267) (not d!114877) (not b!948948) (not b_lambda!14367) (not b!948953) (not b!948955) (not b!948956) (not b!948893) (not bm!41266) (not b!948983) (not b_next!18213) (not b!948936) (not d!114875) tp_is_empty!20721 (not d!114873) (not b!948947) (not b!948945))
(check-sat b_and!29675 (not b_next!18213))
(get-model)

(declare-fun d!114883 () Bool)

(assert (=> d!114883 (= (validKeyInArray!0 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)) (and (not (= (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!948956 d!114883))

(assert (=> b!948947 d!114883))

(declare-fun d!114885 () Bool)

(declare-fun get!14537 (Option!502) V!32593)

(assert (=> d!114885 (= (apply!909 lt!427342 lt!427352) (get!14537 (getValueByKey!496 (toList!6185 lt!427342) lt!427352)))))

(declare-fun bs!26667 () Bool)

(assert (= bs!26667 d!114885))

(declare-fun m!881757 () Bool)

(assert (=> bs!26667 m!881757))

(assert (=> bs!26667 m!881757))

(declare-fun m!881759 () Bool)

(assert (=> bs!26667 m!881759))

(assert (=> b!948948 d!114885))

(declare-fun d!114887 () Bool)

(declare-fun e!534283 () Bool)

(assert (=> d!114887 e!534283))

(declare-fun res!636622 () Bool)

(assert (=> d!114887 (=> (not res!636622) (not e!534283))))

(declare-fun lt!427376 () ListLongMap!12339)

(assert (=> d!114887 (= res!636622 (contains!5222 lt!427376 (_1!6824 (tuple2!13629 lt!427343 (minValue!5595 thiss!1141)))))))

(declare-fun lt!427377 () List!19454)

(assert (=> d!114887 (= lt!427376 (ListLongMap!12340 lt!427377))))

(declare-fun lt!427375 () Unit!31956)

(declare-fun lt!427378 () Unit!31956)

(assert (=> d!114887 (= lt!427375 lt!427378)))

(assert (=> d!114887 (= (getValueByKey!496 lt!427377 (_1!6824 (tuple2!13629 lt!427343 (minValue!5595 thiss!1141)))) (Some!501 (_2!6824 (tuple2!13629 lt!427343 (minValue!5595 thiss!1141)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!265 (List!19454 (_ BitVec 64) V!32593) Unit!31956)

(assert (=> d!114887 (= lt!427378 (lemmaContainsTupThenGetReturnValue!265 lt!427377 (_1!6824 (tuple2!13629 lt!427343 (minValue!5595 thiss!1141))) (_2!6824 (tuple2!13629 lt!427343 (minValue!5595 thiss!1141)))))))

(declare-fun insertStrictlySorted!321 (List!19454 (_ BitVec 64) V!32593) List!19454)

(assert (=> d!114887 (= lt!427377 (insertStrictlySorted!321 (toList!6185 lt!427342) (_1!6824 (tuple2!13629 lt!427343 (minValue!5595 thiss!1141))) (_2!6824 (tuple2!13629 lt!427343 (minValue!5595 thiss!1141)))))))

(assert (=> d!114887 (= (+!2823 lt!427342 (tuple2!13629 lt!427343 (minValue!5595 thiss!1141))) lt!427376)))

(declare-fun b!948998 () Bool)

(declare-fun res!636621 () Bool)

(assert (=> b!948998 (=> (not res!636621) (not e!534283))))

(assert (=> b!948998 (= res!636621 (= (getValueByKey!496 (toList!6185 lt!427376) (_1!6824 (tuple2!13629 lt!427343 (minValue!5595 thiss!1141)))) (Some!501 (_2!6824 (tuple2!13629 lt!427343 (minValue!5595 thiss!1141))))))))

(declare-fun b!948999 () Bool)

(declare-fun contains!5224 (List!19454 tuple2!13628) Bool)

(assert (=> b!948999 (= e!534283 (contains!5224 (toList!6185 lt!427376) (tuple2!13629 lt!427343 (minValue!5595 thiss!1141))))))

(assert (= (and d!114887 res!636622) b!948998))

(assert (= (and b!948998 res!636621) b!948999))

(declare-fun m!881761 () Bool)

(assert (=> d!114887 m!881761))

(declare-fun m!881763 () Bool)

(assert (=> d!114887 m!881763))

(declare-fun m!881765 () Bool)

(assert (=> d!114887 m!881765))

(declare-fun m!881767 () Bool)

(assert (=> d!114887 m!881767))

(declare-fun m!881769 () Bool)

(assert (=> b!948998 m!881769))

(declare-fun m!881771 () Bool)

(assert (=> b!948999 m!881771))

(assert (=> b!948948 d!114887))

(declare-fun d!114889 () Bool)

(assert (=> d!114889 (= (apply!909 (+!2823 lt!427354 (tuple2!13629 lt!427346 (minValue!5595 thiss!1141))) lt!427339) (apply!909 lt!427354 lt!427339))))

(declare-fun lt!427381 () Unit!31956)

(declare-fun choose!1586 (ListLongMap!12339 (_ BitVec 64) V!32593 (_ BitVec 64)) Unit!31956)

(assert (=> d!114889 (= lt!427381 (choose!1586 lt!427354 lt!427346 (minValue!5595 thiss!1141) lt!427339))))

(declare-fun e!534286 () Bool)

(assert (=> d!114889 e!534286))

(declare-fun res!636625 () Bool)

(assert (=> d!114889 (=> (not res!636625) (not e!534286))))

(assert (=> d!114889 (= res!636625 (contains!5222 lt!427354 lt!427339))))

(assert (=> d!114889 (= (addApplyDifferent!453 lt!427354 lt!427346 (minValue!5595 thiss!1141) lt!427339) lt!427381)))

(declare-fun b!949003 () Bool)

(assert (=> b!949003 (= e!534286 (not (= lt!427339 lt!427346)))))

(assert (= (and d!114889 res!636625) b!949003))

(assert (=> d!114889 m!881687))

(assert (=> d!114889 m!881701))

(assert (=> d!114889 m!881701))

(assert (=> d!114889 m!881703))

(declare-fun m!881773 () Bool)

(assert (=> d!114889 m!881773))

(declare-fun m!881775 () Bool)

(assert (=> d!114889 m!881775))

(assert (=> b!948948 d!114889))

(declare-fun d!114891 () Bool)

(assert (=> d!114891 (= (apply!909 lt!427354 lt!427339) (get!14537 (getValueByKey!496 (toList!6185 lt!427354) lt!427339)))))

(declare-fun bs!26668 () Bool)

(assert (= bs!26668 d!114891))

(declare-fun m!881777 () Bool)

(assert (=> bs!26668 m!881777))

(assert (=> bs!26668 m!881777))

(declare-fun m!881779 () Bool)

(assert (=> bs!26668 m!881779))

(assert (=> b!948948 d!114891))

(declare-fun d!114893 () Bool)

(assert (=> d!114893 (= (apply!909 lt!427349 lt!427347) (get!14537 (getValueByKey!496 (toList!6185 lt!427349) lt!427347)))))

(declare-fun bs!26669 () Bool)

(assert (= bs!26669 d!114893))

(declare-fun m!881781 () Bool)

(assert (=> bs!26669 m!881781))

(assert (=> bs!26669 m!881781))

(declare-fun m!881783 () Bool)

(assert (=> bs!26669 m!881783))

(assert (=> b!948948 d!114893))

(declare-fun d!114895 () Bool)

(declare-fun e!534287 () Bool)

(assert (=> d!114895 e!534287))

(declare-fun res!636627 () Bool)

(assert (=> d!114895 (=> (not res!636627) (not e!534287))))

(declare-fun lt!427383 () ListLongMap!12339)

(assert (=> d!114895 (= res!636627 (contains!5222 lt!427383 (_1!6824 (tuple2!13629 lt!427345 (zeroValue!5595 thiss!1141)))))))

(declare-fun lt!427384 () List!19454)

(assert (=> d!114895 (= lt!427383 (ListLongMap!12340 lt!427384))))

(declare-fun lt!427382 () Unit!31956)

(declare-fun lt!427385 () Unit!31956)

(assert (=> d!114895 (= lt!427382 lt!427385)))

(assert (=> d!114895 (= (getValueByKey!496 lt!427384 (_1!6824 (tuple2!13629 lt!427345 (zeroValue!5595 thiss!1141)))) (Some!501 (_2!6824 (tuple2!13629 lt!427345 (zeroValue!5595 thiss!1141)))))))

(assert (=> d!114895 (= lt!427385 (lemmaContainsTupThenGetReturnValue!265 lt!427384 (_1!6824 (tuple2!13629 lt!427345 (zeroValue!5595 thiss!1141))) (_2!6824 (tuple2!13629 lt!427345 (zeroValue!5595 thiss!1141)))))))

(assert (=> d!114895 (= lt!427384 (insertStrictlySorted!321 (toList!6185 lt!427349) (_1!6824 (tuple2!13629 lt!427345 (zeroValue!5595 thiss!1141))) (_2!6824 (tuple2!13629 lt!427345 (zeroValue!5595 thiss!1141)))))))

(assert (=> d!114895 (= (+!2823 lt!427349 (tuple2!13629 lt!427345 (zeroValue!5595 thiss!1141))) lt!427383)))

(declare-fun b!949004 () Bool)

(declare-fun res!636626 () Bool)

(assert (=> b!949004 (=> (not res!636626) (not e!534287))))

(assert (=> b!949004 (= res!636626 (= (getValueByKey!496 (toList!6185 lt!427383) (_1!6824 (tuple2!13629 lt!427345 (zeroValue!5595 thiss!1141)))) (Some!501 (_2!6824 (tuple2!13629 lt!427345 (zeroValue!5595 thiss!1141))))))))

(declare-fun b!949005 () Bool)

(assert (=> b!949005 (= e!534287 (contains!5224 (toList!6185 lt!427383) (tuple2!13629 lt!427345 (zeroValue!5595 thiss!1141))))))

(assert (= (and d!114895 res!636627) b!949004))

(assert (= (and b!949004 res!636626) b!949005))

(declare-fun m!881785 () Bool)

(assert (=> d!114895 m!881785))

(declare-fun m!881787 () Bool)

(assert (=> d!114895 m!881787))

(declare-fun m!881789 () Bool)

(assert (=> d!114895 m!881789))

(declare-fun m!881791 () Bool)

(assert (=> d!114895 m!881791))

(declare-fun m!881793 () Bool)

(assert (=> b!949004 m!881793))

(declare-fun m!881795 () Bool)

(assert (=> b!949005 m!881795))

(assert (=> b!948948 d!114895))

(declare-fun d!114897 () Bool)

(assert (=> d!114897 (= (apply!909 (+!2823 lt!427354 (tuple2!13629 lt!427346 (minValue!5595 thiss!1141))) lt!427339) (get!14537 (getValueByKey!496 (toList!6185 (+!2823 lt!427354 (tuple2!13629 lt!427346 (minValue!5595 thiss!1141)))) lt!427339)))))

(declare-fun bs!26670 () Bool)

(assert (= bs!26670 d!114897))

(declare-fun m!881797 () Bool)

(assert (=> bs!26670 m!881797))

(assert (=> bs!26670 m!881797))

(declare-fun m!881799 () Bool)

(assert (=> bs!26670 m!881799))

(assert (=> b!948948 d!114897))

(declare-fun d!114899 () Bool)

(assert (=> d!114899 (= (apply!909 (+!2823 lt!427342 (tuple2!13629 lt!427343 (minValue!5595 thiss!1141))) lt!427352) (get!14537 (getValueByKey!496 (toList!6185 (+!2823 lt!427342 (tuple2!13629 lt!427343 (minValue!5595 thiss!1141)))) lt!427352)))))

(declare-fun bs!26671 () Bool)

(assert (= bs!26671 d!114899))

(declare-fun m!881801 () Bool)

(assert (=> bs!26671 m!881801))

(assert (=> bs!26671 m!881801))

(declare-fun m!881803 () Bool)

(assert (=> bs!26671 m!881803))

(assert (=> b!948948 d!114899))

(declare-fun d!114901 () Bool)

(declare-fun e!534288 () Bool)

(assert (=> d!114901 e!534288))

(declare-fun res!636629 () Bool)

(assert (=> d!114901 (=> (not res!636629) (not e!534288))))

(declare-fun lt!427387 () ListLongMap!12339)

(assert (=> d!114901 (= res!636629 (contains!5222 lt!427387 (_1!6824 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141)))))))

(declare-fun lt!427388 () List!19454)

(assert (=> d!114901 (= lt!427387 (ListLongMap!12340 lt!427388))))

(declare-fun lt!427386 () Unit!31956)

(declare-fun lt!427389 () Unit!31956)

(assert (=> d!114901 (= lt!427386 lt!427389)))

(assert (=> d!114901 (= (getValueByKey!496 lt!427388 (_1!6824 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141)))) (Some!501 (_2!6824 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141)))))))

(assert (=> d!114901 (= lt!427389 (lemmaContainsTupThenGetReturnValue!265 lt!427388 (_1!6824 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141))) (_2!6824 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141)))))))

(assert (=> d!114901 (= lt!427388 (insertStrictlySorted!321 (toList!6185 lt!427333) (_1!6824 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141))) (_2!6824 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141)))))))

(assert (=> d!114901 (= (+!2823 lt!427333 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141))) lt!427387)))

(declare-fun b!949006 () Bool)

(declare-fun res!636628 () Bool)

(assert (=> b!949006 (=> (not res!636628) (not e!534288))))

(assert (=> b!949006 (= res!636628 (= (getValueByKey!496 (toList!6185 lt!427387) (_1!6824 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141)))) (Some!501 (_2!6824 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141))))))))

(declare-fun b!949007 () Bool)

(assert (=> b!949007 (= e!534288 (contains!5224 (toList!6185 lt!427387) (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141))))))

(assert (= (and d!114901 res!636629) b!949006))

(assert (= (and b!949006 res!636628) b!949007))

(declare-fun m!881805 () Bool)

(assert (=> d!114901 m!881805))

(declare-fun m!881807 () Bool)

(assert (=> d!114901 m!881807))

(declare-fun m!881809 () Bool)

(assert (=> d!114901 m!881809))

(declare-fun m!881811 () Bool)

(assert (=> d!114901 m!881811))

(declare-fun m!881813 () Bool)

(assert (=> b!949006 m!881813))

(declare-fun m!881815 () Bool)

(assert (=> b!949007 m!881815))

(assert (=> b!948948 d!114901))

(declare-fun d!114903 () Bool)

(assert (=> d!114903 (contains!5222 (+!2823 lt!427333 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141))) lt!427341)))

(declare-fun lt!427392 () Unit!31956)

(declare-fun choose!1587 (ListLongMap!12339 (_ BitVec 64) V!32593 (_ BitVec 64)) Unit!31956)

(assert (=> d!114903 (= lt!427392 (choose!1587 lt!427333 lt!427337 (zeroValue!5595 thiss!1141) lt!427341))))

(assert (=> d!114903 (contains!5222 lt!427333 lt!427341)))

(assert (=> d!114903 (= (addStillContains!579 lt!427333 lt!427337 (zeroValue!5595 thiss!1141) lt!427341) lt!427392)))

(declare-fun bs!26672 () Bool)

(assert (= bs!26672 d!114903))

(assert (=> bs!26672 m!881691))

(assert (=> bs!26672 m!881691))

(assert (=> bs!26672 m!881693))

(declare-fun m!881817 () Bool)

(assert (=> bs!26672 m!881817))

(declare-fun m!881819 () Bool)

(assert (=> bs!26672 m!881819))

(assert (=> b!948948 d!114903))

(declare-fun b!949033 () Bool)

(declare-fun e!534308 () Bool)

(declare-fun e!534306 () Bool)

(assert (=> b!949033 (= e!534308 e!534306)))

(assert (=> b!949033 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))))))

(declare-fun res!636639 () Bool)

(declare-fun lt!427408 () ListLongMap!12339)

(assert (=> b!949033 (= res!636639 (contains!5222 lt!427408 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!949033 (=> (not res!636639) (not e!534306))))

(declare-fun b!949034 () Bool)

(declare-fun e!534307 () ListLongMap!12339)

(assert (=> b!949034 (= e!534307 (ListLongMap!12340 Nil!19451))))

(declare-fun b!949035 () Bool)

(declare-fun e!534309 () Bool)

(assert (=> b!949035 (= e!534309 (= lt!427408 (getCurrentListMapNoExtraKeys!3329 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5759 thiss!1141))))))

(declare-fun b!949036 () Bool)

(declare-fun isEmpty!713 (ListLongMap!12339) Bool)

(assert (=> b!949036 (= e!534309 (isEmpty!713 lt!427408))))

(declare-fun b!949037 () Bool)

(declare-fun e!534303 () ListLongMap!12339)

(assert (=> b!949037 (= e!534307 e!534303)))

(declare-fun c!98937 () Bool)

(assert (=> b!949037 (= c!98937 (validKeyInArray!0 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!949038 () Bool)

(declare-fun res!636638 () Bool)

(declare-fun e!534304 () Bool)

(assert (=> b!949038 (=> (not res!636638) (not e!534304))))

(assert (=> b!949038 (= res!636638 (not (contains!5222 lt!427408 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!949039 () Bool)

(declare-fun e!534305 () Bool)

(assert (=> b!949039 (= e!534305 (validKeyInArray!0 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!949039 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!949040 () Bool)

(declare-fun call!41277 () ListLongMap!12339)

(assert (=> b!949040 (= e!534303 call!41277)))

(declare-fun bm!41274 () Bool)

(assert (=> bm!41274 (= call!41277 (getCurrentListMapNoExtraKeys!3329 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5759 thiss!1141)))))

(declare-fun b!949042 () Bool)

(assert (=> b!949042 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))))))

(assert (=> b!949042 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28113 (_values!5782 thiss!1141))))))

(assert (=> b!949042 (= e!534306 (= (apply!909 lt!427408 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)) (get!14536 (select (arr!27637 (_values!5782 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1662 (defaultEntry!5759 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!949043 () Bool)

(assert (=> b!949043 (= e!534304 e!534308)))

(declare-fun c!98938 () Bool)

(assert (=> b!949043 (= c!98938 e!534305)))

(declare-fun res!636641 () Bool)

(assert (=> b!949043 (=> (not res!636641) (not e!534305))))

(assert (=> b!949043 (= res!636641 (bvslt #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))))))

(declare-fun b!949044 () Bool)

(declare-fun lt!427407 () Unit!31956)

(declare-fun lt!427412 () Unit!31956)

(assert (=> b!949044 (= lt!427407 lt!427412)))

(declare-fun lt!427409 () (_ BitVec 64))

(declare-fun lt!427411 () V!32593)

(declare-fun lt!427410 () ListLongMap!12339)

(declare-fun lt!427413 () (_ BitVec 64))

(assert (=> b!949044 (not (contains!5222 (+!2823 lt!427410 (tuple2!13629 lt!427409 lt!427411)) lt!427413))))

(declare-fun addStillNotContains!227 (ListLongMap!12339 (_ BitVec 64) V!32593 (_ BitVec 64)) Unit!31956)

(assert (=> b!949044 (= lt!427412 (addStillNotContains!227 lt!427410 lt!427409 lt!427411 lt!427413))))

(assert (=> b!949044 (= lt!427413 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!949044 (= lt!427411 (get!14536 (select (arr!27637 (_values!5782 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1662 (defaultEntry!5759 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!949044 (= lt!427409 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!949044 (= lt!427410 call!41277)))

(assert (=> b!949044 (= e!534303 (+!2823 call!41277 (tuple2!13629 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000) (get!14536 (select (arr!27637 (_values!5782 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1662 (defaultEntry!5759 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!114905 () Bool)

(assert (=> d!114905 e!534304))

(declare-fun res!636640 () Bool)

(assert (=> d!114905 (=> (not res!636640) (not e!534304))))

(assert (=> d!114905 (= res!636640 (not (contains!5222 lt!427408 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!114905 (= lt!427408 e!534307)))

(declare-fun c!98936 () Bool)

(assert (=> d!114905 (= c!98936 (bvsge #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))))))

(assert (=> d!114905 (validMask!0 (mask!27524 thiss!1141))))

(assert (=> d!114905 (= (getCurrentListMapNoExtraKeys!3329 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)) lt!427408)))

(declare-fun b!949041 () Bool)

(assert (=> b!949041 (= e!534308 e!534309)))

(declare-fun c!98935 () Bool)

(assert (=> b!949041 (= c!98935 (bvslt #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))))))

(assert (= (and d!114905 c!98936) b!949034))

(assert (= (and d!114905 (not c!98936)) b!949037))

(assert (= (and b!949037 c!98937) b!949044))

(assert (= (and b!949037 (not c!98937)) b!949040))

(assert (= (or b!949044 b!949040) bm!41274))

(assert (= (and d!114905 res!636640) b!949038))

(assert (= (and b!949038 res!636638) b!949043))

(assert (= (and b!949043 res!636641) b!949039))

(assert (= (and b!949043 c!98938) b!949033))

(assert (= (and b!949043 (not c!98938)) b!949041))

(assert (= (and b!949033 res!636639) b!949042))

(assert (= (and b!949041 c!98935) b!949035))

(assert (= (and b!949041 (not c!98935)) b!949036))

(declare-fun b_lambda!14369 () Bool)

(assert (=> (not b_lambda!14369) (not b!949042)))

(assert (=> b!949042 t!27796))

(declare-fun b_and!29677 () Bool)

(assert (= b_and!29675 (and (=> t!27796 result!12279) b_and!29677)))

(declare-fun b_lambda!14371 () Bool)

(assert (=> (not b_lambda!14371) (not b!949044)))

(assert (=> b!949044 t!27796))

(declare-fun b_and!29679 () Bool)

(assert (= b_and!29677 (and (=> t!27796 result!12279) b_and!29679)))

(declare-fun m!881821 () Bool)

(assert (=> bm!41274 m!881821))

(declare-fun m!881823 () Bool)

(assert (=> d!114905 m!881823))

(assert (=> d!114905 m!881639))

(declare-fun m!881825 () Bool)

(assert (=> b!949036 m!881825))

(assert (=> b!949037 m!881707))

(assert (=> b!949037 m!881707))

(assert (=> b!949037 m!881723))

(declare-fun m!881827 () Bool)

(assert (=> b!949038 m!881827))

(declare-fun m!881829 () Bool)

(assert (=> b!949044 m!881829))

(declare-fun m!881831 () Bool)

(assert (=> b!949044 m!881831))

(assert (=> b!949044 m!881717))

(declare-fun m!881833 () Bool)

(assert (=> b!949044 m!881833))

(assert (=> b!949044 m!881831))

(declare-fun m!881835 () Bool)

(assert (=> b!949044 m!881835))

(assert (=> b!949044 m!881717))

(assert (=> b!949044 m!881715))

(assert (=> b!949044 m!881719))

(assert (=> b!949044 m!881715))

(assert (=> b!949044 m!881707))

(assert (=> b!949042 m!881707))

(declare-fun m!881837 () Bool)

(assert (=> b!949042 m!881837))

(assert (=> b!949042 m!881717))

(assert (=> b!949042 m!881717))

(assert (=> b!949042 m!881715))

(assert (=> b!949042 m!881719))

(assert (=> b!949042 m!881715))

(assert (=> b!949042 m!881707))

(assert (=> b!949039 m!881707))

(assert (=> b!949039 m!881707))

(assert (=> b!949039 m!881723))

(assert (=> b!949035 m!881821))

(assert (=> b!949033 m!881707))

(assert (=> b!949033 m!881707))

(declare-fun m!881839 () Bool)

(assert (=> b!949033 m!881839))

(assert (=> b!948948 d!114905))

(declare-fun d!114907 () Bool)

(assert (=> d!114907 (= (apply!909 (+!2823 lt!427349 (tuple2!13629 lt!427345 (zeroValue!5595 thiss!1141))) lt!427347) (apply!909 lt!427349 lt!427347))))

(declare-fun lt!427414 () Unit!31956)

(assert (=> d!114907 (= lt!427414 (choose!1586 lt!427349 lt!427345 (zeroValue!5595 thiss!1141) lt!427347))))

(declare-fun e!534310 () Bool)

(assert (=> d!114907 e!534310))

(declare-fun res!636642 () Bool)

(assert (=> d!114907 (=> (not res!636642) (not e!534310))))

(assert (=> d!114907 (= res!636642 (contains!5222 lt!427349 lt!427347))))

(assert (=> d!114907 (= (addApplyDifferent!453 lt!427349 lt!427345 (zeroValue!5595 thiss!1141) lt!427347) lt!427414)))

(declare-fun b!949045 () Bool)

(assert (=> b!949045 (= e!534310 (not (= lt!427347 lt!427345)))))

(assert (= (and d!114907 res!636642) b!949045))

(assert (=> d!114907 m!881713))

(assert (=> d!114907 m!881681))

(assert (=> d!114907 m!881681))

(assert (=> d!114907 m!881683))

(declare-fun m!881841 () Bool)

(assert (=> d!114907 m!881841))

(declare-fun m!881843 () Bool)

(assert (=> d!114907 m!881843))

(assert (=> b!948948 d!114907))

(declare-fun d!114909 () Bool)

(declare-fun e!534311 () Bool)

(assert (=> d!114909 e!534311))

(declare-fun res!636643 () Bool)

(assert (=> d!114909 (=> res!636643 e!534311)))

(declare-fun lt!427418 () Bool)

(assert (=> d!114909 (= res!636643 (not lt!427418))))

(declare-fun lt!427415 () Bool)

(assert (=> d!114909 (= lt!427418 lt!427415)))

(declare-fun lt!427416 () Unit!31956)

(declare-fun e!534312 () Unit!31956)

(assert (=> d!114909 (= lt!427416 e!534312)))

(declare-fun c!98939 () Bool)

(assert (=> d!114909 (= c!98939 lt!427415)))

(assert (=> d!114909 (= lt!427415 (containsKey!461 (toList!6185 (+!2823 lt!427333 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141)))) lt!427341))))

(assert (=> d!114909 (= (contains!5222 (+!2823 lt!427333 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141))) lt!427341) lt!427418)))

(declare-fun b!949046 () Bool)

(declare-fun lt!427417 () Unit!31956)

(assert (=> b!949046 (= e!534312 lt!427417)))

(assert (=> b!949046 (= lt!427417 (lemmaContainsKeyImpliesGetValueByKeyDefined!356 (toList!6185 (+!2823 lt!427333 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141)))) lt!427341))))

(assert (=> b!949046 (isDefined!366 (getValueByKey!496 (toList!6185 (+!2823 lt!427333 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141)))) lt!427341))))

(declare-fun b!949047 () Bool)

(declare-fun Unit!31960 () Unit!31956)

(assert (=> b!949047 (= e!534312 Unit!31960)))

(declare-fun b!949048 () Bool)

(assert (=> b!949048 (= e!534311 (isDefined!366 (getValueByKey!496 (toList!6185 (+!2823 lt!427333 (tuple2!13629 lt!427337 (zeroValue!5595 thiss!1141)))) lt!427341)))))

(assert (= (and d!114909 c!98939) b!949046))

(assert (= (and d!114909 (not c!98939)) b!949047))

(assert (= (and d!114909 (not res!636643)) b!949048))

(declare-fun m!881845 () Bool)

(assert (=> d!114909 m!881845))

(declare-fun m!881847 () Bool)

(assert (=> b!949046 m!881847))

(declare-fun m!881849 () Bool)

(assert (=> b!949046 m!881849))

(assert (=> b!949046 m!881849))

(declare-fun m!881851 () Bool)

(assert (=> b!949046 m!881851))

(assert (=> b!949048 m!881849))

(assert (=> b!949048 m!881849))

(assert (=> b!949048 m!881851))

(assert (=> b!948948 d!114909))

(declare-fun d!114911 () Bool)

(assert (=> d!114911 (= (apply!909 (+!2823 lt!427342 (tuple2!13629 lt!427343 (minValue!5595 thiss!1141))) lt!427352) (apply!909 lt!427342 lt!427352))))

(declare-fun lt!427419 () Unit!31956)

(assert (=> d!114911 (= lt!427419 (choose!1586 lt!427342 lt!427343 (minValue!5595 thiss!1141) lt!427352))))

(declare-fun e!534313 () Bool)

(assert (=> d!114911 e!534313))

(declare-fun res!636644 () Bool)

(assert (=> d!114911 (=> (not res!636644) (not e!534313))))

(assert (=> d!114911 (= res!636644 (contains!5222 lt!427342 lt!427352))))

(assert (=> d!114911 (= (addApplyDifferent!453 lt!427342 lt!427343 (minValue!5595 thiss!1141) lt!427352) lt!427419)))

(declare-fun b!949049 () Bool)

(assert (=> b!949049 (= e!534313 (not (= lt!427352 lt!427343)))))

(assert (= (and d!114911 res!636644) b!949049))

(assert (=> d!114911 m!881685))

(assert (=> d!114911 m!881697))

(assert (=> d!114911 m!881697))

(assert (=> d!114911 m!881699))

(declare-fun m!881853 () Bool)

(assert (=> d!114911 m!881853))

(declare-fun m!881855 () Bool)

(assert (=> d!114911 m!881855))

(assert (=> b!948948 d!114911))

(declare-fun d!114913 () Bool)

(assert (=> d!114913 (= (apply!909 (+!2823 lt!427349 (tuple2!13629 lt!427345 (zeroValue!5595 thiss!1141))) lt!427347) (get!14537 (getValueByKey!496 (toList!6185 (+!2823 lt!427349 (tuple2!13629 lt!427345 (zeroValue!5595 thiss!1141)))) lt!427347)))))

(declare-fun bs!26673 () Bool)

(assert (= bs!26673 d!114913))

(declare-fun m!881857 () Bool)

(assert (=> bs!26673 m!881857))

(assert (=> bs!26673 m!881857))

(declare-fun m!881859 () Bool)

(assert (=> bs!26673 m!881859))

(assert (=> b!948948 d!114913))

(declare-fun d!114915 () Bool)

(declare-fun e!534314 () Bool)

(assert (=> d!114915 e!534314))

(declare-fun res!636646 () Bool)

(assert (=> d!114915 (=> (not res!636646) (not e!534314))))

(declare-fun lt!427421 () ListLongMap!12339)

(assert (=> d!114915 (= res!636646 (contains!5222 lt!427421 (_1!6824 (tuple2!13629 lt!427346 (minValue!5595 thiss!1141)))))))

(declare-fun lt!427422 () List!19454)

(assert (=> d!114915 (= lt!427421 (ListLongMap!12340 lt!427422))))

(declare-fun lt!427420 () Unit!31956)

(declare-fun lt!427423 () Unit!31956)

(assert (=> d!114915 (= lt!427420 lt!427423)))

(assert (=> d!114915 (= (getValueByKey!496 lt!427422 (_1!6824 (tuple2!13629 lt!427346 (minValue!5595 thiss!1141)))) (Some!501 (_2!6824 (tuple2!13629 lt!427346 (minValue!5595 thiss!1141)))))))

(assert (=> d!114915 (= lt!427423 (lemmaContainsTupThenGetReturnValue!265 lt!427422 (_1!6824 (tuple2!13629 lt!427346 (minValue!5595 thiss!1141))) (_2!6824 (tuple2!13629 lt!427346 (minValue!5595 thiss!1141)))))))

(assert (=> d!114915 (= lt!427422 (insertStrictlySorted!321 (toList!6185 lt!427354) (_1!6824 (tuple2!13629 lt!427346 (minValue!5595 thiss!1141))) (_2!6824 (tuple2!13629 lt!427346 (minValue!5595 thiss!1141)))))))

(assert (=> d!114915 (= (+!2823 lt!427354 (tuple2!13629 lt!427346 (minValue!5595 thiss!1141))) lt!427421)))

(declare-fun b!949050 () Bool)

(declare-fun res!636645 () Bool)

(assert (=> b!949050 (=> (not res!636645) (not e!534314))))

(assert (=> b!949050 (= res!636645 (= (getValueByKey!496 (toList!6185 lt!427421) (_1!6824 (tuple2!13629 lt!427346 (minValue!5595 thiss!1141)))) (Some!501 (_2!6824 (tuple2!13629 lt!427346 (minValue!5595 thiss!1141))))))))

(declare-fun b!949051 () Bool)

(assert (=> b!949051 (= e!534314 (contains!5224 (toList!6185 lt!427421) (tuple2!13629 lt!427346 (minValue!5595 thiss!1141))))))

(assert (= (and d!114915 res!636646) b!949050))

(assert (= (and b!949050 res!636645) b!949051))

(declare-fun m!881861 () Bool)

(assert (=> d!114915 m!881861))

(declare-fun m!881863 () Bool)

(assert (=> d!114915 m!881863))

(declare-fun m!881865 () Bool)

(assert (=> d!114915 m!881865))

(declare-fun m!881867 () Bool)

(assert (=> d!114915 m!881867))

(declare-fun m!881869 () Bool)

(assert (=> b!949050 m!881869))

(declare-fun m!881871 () Bool)

(assert (=> b!949051 m!881871))

(assert (=> b!948948 d!114915))

(declare-fun d!114917 () Bool)

(assert (=> d!114917 (isDefined!366 (getValueByKey!496 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))) key!756))))

(declare-fun lt!427426 () Unit!31956)

(declare-fun choose!1588 (List!19454 (_ BitVec 64)) Unit!31956)

(assert (=> d!114917 (= lt!427426 (choose!1588 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))) key!756))))

(declare-fun e!534317 () Bool)

(assert (=> d!114917 e!534317))

(declare-fun res!636649 () Bool)

(assert (=> d!114917 (=> (not res!636649) (not e!534317))))

(declare-fun isStrictlySorted!506 (List!19454) Bool)

(assert (=> d!114917 (= res!636649 (isStrictlySorted!506 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)))))))

(assert (=> d!114917 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!356 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))) key!756) lt!427426)))

(declare-fun b!949054 () Bool)

(assert (=> b!949054 (= e!534317 (containsKey!461 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))) key!756))))

(assert (= (and d!114917 res!636649) b!949054))

(assert (=> d!114917 m!881675))

(assert (=> d!114917 m!881675))

(assert (=> d!114917 m!881677))

(declare-fun m!881873 () Bool)

(assert (=> d!114917 m!881873))

(declare-fun m!881875 () Bool)

(assert (=> d!114917 m!881875))

(assert (=> b!949054 m!881671))

(assert (=> b!948891 d!114917))

(declare-fun d!114919 () Bool)

(declare-fun isEmpty!714 (Option!502) Bool)

(assert (=> d!114919 (= (isDefined!366 (getValueByKey!496 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))) key!756)) (not (isEmpty!714 (getValueByKey!496 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))) key!756))))))

(declare-fun bs!26674 () Bool)

(assert (= bs!26674 d!114919))

(assert (=> bs!26674 m!881675))

(declare-fun m!881877 () Bool)

(assert (=> bs!26674 m!881877))

(assert (=> b!948891 d!114919))

(declare-fun b!949064 () Bool)

(declare-fun e!534322 () Option!502)

(declare-fun e!534323 () Option!502)

(assert (=> b!949064 (= e!534322 e!534323)))

(declare-fun c!98945 () Bool)

(assert (=> b!949064 (= c!98945 (and ((_ is Cons!19450) (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)))) (not (= (_1!6824 (h!20608 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))))) key!756))))))

(declare-fun b!949065 () Bool)

(assert (=> b!949065 (= e!534323 (getValueByKey!496 (t!27793 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)))) key!756))))

(declare-fun b!949063 () Bool)

(assert (=> b!949063 (= e!534322 (Some!501 (_2!6824 (h!20608 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)))))))))

(declare-fun b!949066 () Bool)

(assert (=> b!949066 (= e!534323 None!500)))

(declare-fun d!114921 () Bool)

(declare-fun c!98944 () Bool)

(assert (=> d!114921 (= c!98944 (and ((_ is Cons!19450) (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)))) (= (_1!6824 (h!20608 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))))) key!756)))))

(assert (=> d!114921 (= (getValueByKey!496 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))) key!756) e!534322)))

(assert (= (and d!114921 c!98944) b!949063))

(assert (= (and d!114921 (not c!98944)) b!949064))

(assert (= (and b!949064 c!98945) b!949065))

(assert (= (and b!949064 (not c!98945)) b!949066))

(declare-fun m!881879 () Bool)

(assert (=> b!949065 m!881879))

(assert (=> b!948891 d!114921))

(declare-fun d!114923 () Bool)

(declare-fun e!534324 () Bool)

(assert (=> d!114923 e!534324))

(declare-fun res!636651 () Bool)

(assert (=> d!114923 (=> (not res!636651) (not e!534324))))

(declare-fun lt!427428 () ListLongMap!12339)

(assert (=> d!114923 (= res!636651 (contains!5222 lt!427428 (_1!6824 (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141)))))))

(declare-fun lt!427429 () List!19454)

(assert (=> d!114923 (= lt!427428 (ListLongMap!12340 lt!427429))))

(declare-fun lt!427427 () Unit!31956)

(declare-fun lt!427430 () Unit!31956)

(assert (=> d!114923 (= lt!427427 lt!427430)))

(assert (=> d!114923 (= (getValueByKey!496 lt!427429 (_1!6824 (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141)))) (Some!501 (_2!6824 (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141)))))))

(assert (=> d!114923 (= lt!427430 (lemmaContainsTupThenGetReturnValue!265 lt!427429 (_1!6824 (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141))) (_2!6824 (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141)))))))

(assert (=> d!114923 (= lt!427429 (insertStrictlySorted!321 (toList!6185 call!41272) (_1!6824 (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141))) (_2!6824 (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141)))))))

(assert (=> d!114923 (= (+!2823 call!41272 (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141))) lt!427428)))

(declare-fun b!949067 () Bool)

(declare-fun res!636650 () Bool)

(assert (=> b!949067 (=> (not res!636650) (not e!534324))))

(assert (=> b!949067 (= res!636650 (= (getValueByKey!496 (toList!6185 lt!427428) (_1!6824 (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141)))) (Some!501 (_2!6824 (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141))))))))

(declare-fun b!949068 () Bool)

(assert (=> b!949068 (= e!534324 (contains!5224 (toList!6185 lt!427428) (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141))))))

(assert (= (and d!114923 res!636651) b!949067))

(assert (= (and b!949067 res!636650) b!949068))

(declare-fun m!881881 () Bool)

(assert (=> d!114923 m!881881))

(declare-fun m!881883 () Bool)

(assert (=> d!114923 m!881883))

(declare-fun m!881885 () Bool)

(assert (=> d!114923 m!881885))

(declare-fun m!881887 () Bool)

(assert (=> d!114923 m!881887))

(declare-fun m!881889 () Bool)

(assert (=> b!949067 m!881889))

(declare-fun m!881891 () Bool)

(assert (=> b!949068 m!881891))

(assert (=> b!948953 d!114923))

(declare-fun d!114925 () Bool)

(declare-fun e!534325 () Bool)

(assert (=> d!114925 e!534325))

(declare-fun res!636653 () Bool)

(assert (=> d!114925 (=> (not res!636653) (not e!534325))))

(declare-fun lt!427432 () ListLongMap!12339)

(assert (=> d!114925 (= res!636653 (contains!5222 lt!427432 (_1!6824 (ite (or c!98915 c!98916) (tuple2!13629 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5595 thiss!1141)) (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141))))))))

(declare-fun lt!427433 () List!19454)

(assert (=> d!114925 (= lt!427432 (ListLongMap!12340 lt!427433))))

(declare-fun lt!427431 () Unit!31956)

(declare-fun lt!427434 () Unit!31956)

(assert (=> d!114925 (= lt!427431 lt!427434)))

(assert (=> d!114925 (= (getValueByKey!496 lt!427433 (_1!6824 (ite (or c!98915 c!98916) (tuple2!13629 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5595 thiss!1141)) (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141))))) (Some!501 (_2!6824 (ite (or c!98915 c!98916) (tuple2!13629 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5595 thiss!1141)) (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141))))))))

(assert (=> d!114925 (= lt!427434 (lemmaContainsTupThenGetReturnValue!265 lt!427433 (_1!6824 (ite (or c!98915 c!98916) (tuple2!13629 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5595 thiss!1141)) (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141)))) (_2!6824 (ite (or c!98915 c!98916) (tuple2!13629 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5595 thiss!1141)) (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141))))))))

(assert (=> d!114925 (= lt!427433 (insertStrictlySorted!321 (toList!6185 (ite c!98915 call!41274 (ite c!98916 call!41271 call!41270))) (_1!6824 (ite (or c!98915 c!98916) (tuple2!13629 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5595 thiss!1141)) (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141)))) (_2!6824 (ite (or c!98915 c!98916) (tuple2!13629 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5595 thiss!1141)) (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141))))))))

(assert (=> d!114925 (= (+!2823 (ite c!98915 call!41274 (ite c!98916 call!41271 call!41270)) (ite (or c!98915 c!98916) (tuple2!13629 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5595 thiss!1141)) (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141)))) lt!427432)))

(declare-fun b!949069 () Bool)

(declare-fun res!636652 () Bool)

(assert (=> b!949069 (=> (not res!636652) (not e!534325))))

(assert (=> b!949069 (= res!636652 (= (getValueByKey!496 (toList!6185 lt!427432) (_1!6824 (ite (or c!98915 c!98916) (tuple2!13629 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5595 thiss!1141)) (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141))))) (Some!501 (_2!6824 (ite (or c!98915 c!98916) (tuple2!13629 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5595 thiss!1141)) (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141)))))))))

(declare-fun b!949070 () Bool)

(assert (=> b!949070 (= e!534325 (contains!5224 (toList!6185 lt!427432) (ite (or c!98915 c!98916) (tuple2!13629 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5595 thiss!1141)) (tuple2!13629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5595 thiss!1141)))))))

(assert (= (and d!114925 res!636653) b!949069))

(assert (= (and b!949069 res!636652) b!949070))

(declare-fun m!881893 () Bool)

(assert (=> d!114925 m!881893))

(declare-fun m!881895 () Bool)

(assert (=> d!114925 m!881895))

(declare-fun m!881897 () Bool)

(assert (=> d!114925 m!881897))

(declare-fun m!881899 () Bool)

(assert (=> d!114925 m!881899))

(declare-fun m!881901 () Bool)

(assert (=> b!949069 m!881901))

(declare-fun m!881903 () Bool)

(assert (=> b!949070 m!881903))

(assert (=> bm!41266 d!114925))

(declare-fun d!114927 () Bool)

(declare-fun res!636658 () Bool)

(declare-fun e!534330 () Bool)

(assert (=> d!114927 (=> res!636658 e!534330)))

(assert (=> d!114927 (= res!636658 (and ((_ is Cons!19450) (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)))) (= (_1!6824 (h!20608 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))))) key!756)))))

(assert (=> d!114927 (= (containsKey!461 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))) key!756) e!534330)))

(declare-fun b!949075 () Bool)

(declare-fun e!534331 () Bool)

(assert (=> b!949075 (= e!534330 e!534331)))

(declare-fun res!636659 () Bool)

(assert (=> b!949075 (=> (not res!636659) (not e!534331))))

(assert (=> b!949075 (= res!636659 (and (or (not ((_ is Cons!19450) (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))))) (bvsle (_1!6824 (h!20608 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))))) key!756)) ((_ is Cons!19450) (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)))) (bvslt (_1!6824 (h!20608 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141))))) key!756)))))

(declare-fun b!949076 () Bool)

(assert (=> b!949076 (= e!534331 (containsKey!461 (t!27793 (toList!6185 (getCurrentListMap!3370 (_keys!10679 thiss!1141) (_values!5782 thiss!1141) (mask!27524 thiss!1141) (extraKeys!5491 thiss!1141) (zeroValue!5595 thiss!1141) (minValue!5595 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5759 thiss!1141)))) key!756))))

(assert (= (and d!114927 (not res!636658)) b!949075))

(assert (= (and b!949075 res!636659) b!949076))

(declare-fun m!881905 () Bool)

(assert (=> b!949076 m!881905))

(assert (=> d!114873 d!114927))

(declare-fun d!114929 () Bool)

(assert (=> d!114929 (= (apply!909 lt!427338 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)) (get!14537 (getValueByKey!496 (toList!6185 lt!427338) (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000))))))

(declare-fun bs!26675 () Bool)

(assert (= bs!26675 d!114929))

(assert (=> bs!26675 m!881707))

(declare-fun m!881907 () Bool)

(assert (=> bs!26675 m!881907))

(assert (=> bs!26675 m!881907))

(declare-fun m!881909 () Bool)

(assert (=> bs!26675 m!881909))

(assert (=> b!948955 d!114929))

(declare-fun d!114931 () Bool)

(declare-fun c!98948 () Bool)

(assert (=> d!114931 (= c!98948 ((_ is ValueCellFull!9879) (select (arr!27637 (_values!5782 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!534334 () V!32593)

(assert (=> d!114931 (= (get!14536 (select (arr!27637 (_values!5782 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1662 (defaultEntry!5759 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)) e!534334)))

(declare-fun b!949081 () Bool)

(declare-fun get!14538 (ValueCell!9879 V!32593) V!32593)

(assert (=> b!949081 (= e!534334 (get!14538 (select (arr!27637 (_values!5782 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1662 (defaultEntry!5759 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!949082 () Bool)

(declare-fun get!14539 (ValueCell!9879 V!32593) V!32593)

(assert (=> b!949082 (= e!534334 (get!14539 (select (arr!27637 (_values!5782 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1662 (defaultEntry!5759 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114931 c!98948) b!949081))

(assert (= (and d!114931 (not c!98948)) b!949082))

(assert (=> b!949081 m!881717))

(assert (=> b!949081 m!881715))

(declare-fun m!881911 () Bool)

(assert (=> b!949081 m!881911))

(assert (=> b!949082 m!881717))

(assert (=> b!949082 m!881715))

(declare-fun m!881913 () Bool)

(assert (=> b!949082 m!881913))

(assert (=> b!948955 d!114931))

(declare-fun d!114933 () Bool)

(assert (=> d!114933 (= (apply!909 lt!427338 #b1000000000000000000000000000000000000000000000000000000000000000) (get!14537 (getValueByKey!496 (toList!6185 lt!427338) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26676 () Bool)

(assert (= bs!26676 d!114933))

(declare-fun m!881915 () Bool)

(assert (=> bs!26676 m!881915))

(assert (=> bs!26676 m!881915))

(declare-fun m!881917 () Bool)

(assert (=> bs!26676 m!881917))

(assert (=> b!948945 d!114933))

(declare-fun b!949093 () Bool)

(declare-fun e!534343 () Bool)

(declare-fun e!534345 () Bool)

(assert (=> b!949093 (= e!534343 e!534345)))

(declare-fun res!636668 () Bool)

(assert (=> b!949093 (=> (not res!636668) (not e!534345))))

(declare-fun e!534346 () Bool)

(assert (=> b!949093 (= res!636668 (not e!534346))))

(declare-fun res!636667 () Bool)

(assert (=> b!949093 (=> (not res!636667) (not e!534346))))

(assert (=> b!949093 (= res!636667 (validKeyInArray!0 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!114935 () Bool)

(declare-fun res!636666 () Bool)

(assert (=> d!114935 (=> res!636666 e!534343)))

(assert (=> d!114935 (= res!636666 (bvsge #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))))))

(assert (=> d!114935 (= (arrayNoDuplicates!0 (_keys!10679 thiss!1141) #b00000000000000000000000000000000 Nil!19453) e!534343)))

(declare-fun bm!41277 () Bool)

(declare-fun call!41280 () Bool)

(declare-fun c!98951 () Bool)

(assert (=> bm!41277 (= call!41280 (arrayNoDuplicates!0 (_keys!10679 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98951 (Cons!19452 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000) Nil!19453) Nil!19453)))))

(declare-fun b!949094 () Bool)

(declare-fun e!534344 () Bool)

(assert (=> b!949094 (= e!534345 e!534344)))

(assert (=> b!949094 (= c!98951 (validKeyInArray!0 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!949095 () Bool)

(assert (=> b!949095 (= e!534344 call!41280)))

(declare-fun b!949096 () Bool)

(declare-fun contains!5225 (List!19456 (_ BitVec 64)) Bool)

(assert (=> b!949096 (= e!534346 (contains!5225 Nil!19453 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!949097 () Bool)

(assert (=> b!949097 (= e!534344 call!41280)))

(assert (= (and d!114935 (not res!636666)) b!949093))

(assert (= (and b!949093 res!636667) b!949096))

(assert (= (and b!949093 res!636668) b!949094))

(assert (= (and b!949094 c!98951) b!949097))

(assert (= (and b!949094 (not c!98951)) b!949095))

(assert (= (or b!949097 b!949095) bm!41277))

(assert (=> b!949093 m!881707))

(assert (=> b!949093 m!881707))

(assert (=> b!949093 m!881723))

(assert (=> bm!41277 m!881707))

(declare-fun m!881919 () Bool)

(assert (=> bm!41277 m!881919))

(assert (=> b!949094 m!881707))

(assert (=> b!949094 m!881707))

(assert (=> b!949094 m!881723))

(assert (=> b!949096 m!881707))

(assert (=> b!949096 m!881707))

(declare-fun m!881921 () Bool)

(assert (=> b!949096 m!881921))

(assert (=> b!948967 d!114935))

(declare-fun d!114937 () Bool)

(declare-fun e!534347 () Bool)

(assert (=> d!114937 e!534347))

(declare-fun res!636669 () Bool)

(assert (=> d!114937 (=> res!636669 e!534347)))

(declare-fun lt!427438 () Bool)

(assert (=> d!114937 (= res!636669 (not lt!427438))))

(declare-fun lt!427435 () Bool)

(assert (=> d!114937 (= lt!427438 lt!427435)))

(declare-fun lt!427436 () Unit!31956)

(declare-fun e!534348 () Unit!31956)

(assert (=> d!114937 (= lt!427436 e!534348)))

(declare-fun c!98952 () Bool)

(assert (=> d!114937 (= c!98952 lt!427435)))

(assert (=> d!114937 (= lt!427435 (containsKey!461 (toList!6185 lt!427338) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!114937 (= (contains!5222 lt!427338 #b1000000000000000000000000000000000000000000000000000000000000000) lt!427438)))

(declare-fun b!949098 () Bool)

(declare-fun lt!427437 () Unit!31956)

(assert (=> b!949098 (= e!534348 lt!427437)))

(assert (=> b!949098 (= lt!427437 (lemmaContainsKeyImpliesGetValueByKeyDefined!356 (toList!6185 lt!427338) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!949098 (isDefined!366 (getValueByKey!496 (toList!6185 lt!427338) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!949099 () Bool)

(declare-fun Unit!31961 () Unit!31956)

(assert (=> b!949099 (= e!534348 Unit!31961)))

(declare-fun b!949100 () Bool)

(assert (=> b!949100 (= e!534347 (isDefined!366 (getValueByKey!496 (toList!6185 lt!427338) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114937 c!98952) b!949098))

(assert (= (and d!114937 (not c!98952)) b!949099))

(assert (= (and d!114937 (not res!636669)) b!949100))

(declare-fun m!881923 () Bool)

(assert (=> d!114937 m!881923))

(declare-fun m!881925 () Bool)

(assert (=> b!949098 m!881925))

(assert (=> b!949098 m!881915))

(assert (=> b!949098 m!881915))

(declare-fun m!881927 () Bool)

(assert (=> b!949098 m!881927))

(assert (=> b!949100 m!881915))

(assert (=> b!949100 m!881915))

(assert (=> b!949100 m!881927))

(assert (=> bm!41270 d!114937))

(declare-fun d!114939 () Bool)

(declare-fun e!534349 () Bool)

(assert (=> d!114939 e!534349))

(declare-fun res!636670 () Bool)

(assert (=> d!114939 (=> res!636670 e!534349)))

(declare-fun lt!427442 () Bool)

(assert (=> d!114939 (= res!636670 (not lt!427442))))

(declare-fun lt!427439 () Bool)

(assert (=> d!114939 (= lt!427442 lt!427439)))

(declare-fun lt!427440 () Unit!31956)

(declare-fun e!534350 () Unit!31956)

(assert (=> d!114939 (= lt!427440 e!534350)))

(declare-fun c!98953 () Bool)

(assert (=> d!114939 (= c!98953 lt!427439)))

(assert (=> d!114939 (= lt!427439 (containsKey!461 (toList!6185 lt!427338) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!114939 (= (contains!5222 lt!427338 #b0000000000000000000000000000000000000000000000000000000000000000) lt!427442)))

(declare-fun b!949101 () Bool)

(declare-fun lt!427441 () Unit!31956)

(assert (=> b!949101 (= e!534350 lt!427441)))

(assert (=> b!949101 (= lt!427441 (lemmaContainsKeyImpliesGetValueByKeyDefined!356 (toList!6185 lt!427338) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!949101 (isDefined!366 (getValueByKey!496 (toList!6185 lt!427338) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!949102 () Bool)

(declare-fun Unit!31962 () Unit!31956)

(assert (=> b!949102 (= e!534350 Unit!31962)))

(declare-fun b!949103 () Bool)

(assert (=> b!949103 (= e!534349 (isDefined!366 (getValueByKey!496 (toList!6185 lt!427338) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114939 c!98953) b!949101))

(assert (= (and d!114939 (not c!98953)) b!949102))

(assert (= (and d!114939 (not res!636670)) b!949103))

(declare-fun m!881929 () Bool)

(assert (=> d!114939 m!881929))

(declare-fun m!881931 () Bool)

(assert (=> b!949101 m!881931))

(declare-fun m!881933 () Bool)

(assert (=> b!949101 m!881933))

(assert (=> b!949101 m!881933))

(declare-fun m!881935 () Bool)

(assert (=> b!949101 m!881935))

(assert (=> b!949103 m!881933))

(assert (=> b!949103 m!881933))

(assert (=> b!949103 m!881935))

(assert (=> bm!41268 d!114939))

(declare-fun d!114941 () Bool)

(declare-fun e!534351 () Bool)

(assert (=> d!114941 e!534351))

(declare-fun res!636671 () Bool)

(assert (=> d!114941 (=> res!636671 e!534351)))

(declare-fun lt!427446 () Bool)

(assert (=> d!114941 (= res!636671 (not lt!427446))))

(declare-fun lt!427443 () Bool)

(assert (=> d!114941 (= lt!427446 lt!427443)))

(declare-fun lt!427444 () Unit!31956)

(declare-fun e!534352 () Unit!31956)

(assert (=> d!114941 (= lt!427444 e!534352)))

(declare-fun c!98954 () Bool)

(assert (=> d!114941 (= c!98954 lt!427443)))

(assert (=> d!114941 (= lt!427443 (containsKey!461 (toList!6185 lt!427338) (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!114941 (= (contains!5222 lt!427338 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)) lt!427446)))

(declare-fun b!949104 () Bool)

(declare-fun lt!427445 () Unit!31956)

(assert (=> b!949104 (= e!534352 lt!427445)))

(assert (=> b!949104 (= lt!427445 (lemmaContainsKeyImpliesGetValueByKeyDefined!356 (toList!6185 lt!427338) (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!949104 (isDefined!366 (getValueByKey!496 (toList!6185 lt!427338) (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!949105 () Bool)

(declare-fun Unit!31963 () Unit!31956)

(assert (=> b!949105 (= e!534352 Unit!31963)))

(declare-fun b!949106 () Bool)

(assert (=> b!949106 (= e!534351 (isDefined!366 (getValueByKey!496 (toList!6185 lt!427338) (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000))))))

(assert (= (and d!114941 c!98954) b!949104))

(assert (= (and d!114941 (not c!98954)) b!949105))

(assert (= (and d!114941 (not res!636671)) b!949106))

(assert (=> d!114941 m!881707))

(declare-fun m!881937 () Bool)

(assert (=> d!114941 m!881937))

(assert (=> b!949104 m!881707))

(declare-fun m!881939 () Bool)

(assert (=> b!949104 m!881939))

(assert (=> b!949104 m!881707))

(assert (=> b!949104 m!881907))

(assert (=> b!949104 m!881907))

(declare-fun m!881941 () Bool)

(assert (=> b!949104 m!881941))

(assert (=> b!949106 m!881707))

(assert (=> b!949106 m!881907))

(assert (=> b!949106 m!881907))

(assert (=> b!949106 m!881941))

(assert (=> b!948936 d!114941))

(declare-fun d!114943 () Bool)

(declare-fun res!636683 () Bool)

(declare-fun e!534355 () Bool)

(assert (=> d!114943 (=> (not res!636683) (not e!534355))))

(assert (=> d!114943 (= res!636683 (validMask!0 (mask!27524 thiss!1141)))))

(assert (=> d!114943 (= (simpleValid!369 thiss!1141) e!534355)))

(declare-fun b!949118 () Bool)

(assert (=> b!949118 (= e!534355 (and (bvsge (extraKeys!5491 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5491 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2509 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!949116 () Bool)

(declare-fun res!636681 () Bool)

(assert (=> b!949116 (=> (not res!636681) (not e!534355))))

(declare-fun size!28117 (LongMapFixedSize!4908) (_ BitVec 32))

(assert (=> b!949116 (= res!636681 (bvsge (size!28117 thiss!1141) (_size!2509 thiss!1141)))))

(declare-fun b!949115 () Bool)

(declare-fun res!636680 () Bool)

(assert (=> b!949115 (=> (not res!636680) (not e!534355))))

(assert (=> b!949115 (= res!636680 (and (= (size!28113 (_values!5782 thiss!1141)) (bvadd (mask!27524 thiss!1141) #b00000000000000000000000000000001)) (= (size!28114 (_keys!10679 thiss!1141)) (size!28113 (_values!5782 thiss!1141))) (bvsge (_size!2509 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2509 thiss!1141) (bvadd (mask!27524 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun b!949117 () Bool)

(declare-fun res!636682 () Bool)

(assert (=> b!949117 (=> (not res!636682) (not e!534355))))

(assert (=> b!949117 (= res!636682 (= (size!28117 thiss!1141) (bvadd (_size!2509 thiss!1141) (bvsdiv (bvadd (extraKeys!5491 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!114943 res!636683) b!949115))

(assert (= (and b!949115 res!636680) b!949116))

(assert (= (and b!949116 res!636681) b!949117))

(assert (= (and b!949117 res!636682) b!949118))

(assert (=> d!114943 m!881639))

(declare-fun m!881943 () Bool)

(assert (=> b!949116 m!881943))

(assert (=> b!949117 m!881943))

(assert (=> d!114877 d!114943))

(declare-fun b!949131 () Bool)

(declare-fun e!534363 () SeekEntryResult!9121)

(assert (=> b!949131 (= e!534363 (MissingVacant!9121 (index!38856 lt!427366)))))

(declare-fun lt!427451 () SeekEntryResult!9121)

(declare-fun d!114945 () Bool)

(assert (=> d!114945 (and (or ((_ is Undefined!9121) lt!427451) (not ((_ is Found!9121) lt!427451)) (and (bvsge (index!38855 lt!427451) #b00000000000000000000000000000000) (bvslt (index!38855 lt!427451) (size!28114 (_keys!10679 thiss!1141))))) (or ((_ is Undefined!9121) lt!427451) ((_ is Found!9121) lt!427451) (not ((_ is MissingVacant!9121) lt!427451)) (not (= (index!38857 lt!427451) (index!38856 lt!427366))) (and (bvsge (index!38857 lt!427451) #b00000000000000000000000000000000) (bvslt (index!38857 lt!427451) (size!28114 (_keys!10679 thiss!1141))))) (or ((_ is Undefined!9121) lt!427451) (ite ((_ is Found!9121) lt!427451) (= (select (arr!27638 (_keys!10679 thiss!1141)) (index!38855 lt!427451)) key!756) (and ((_ is MissingVacant!9121) lt!427451) (= (index!38857 lt!427451) (index!38856 lt!427366)) (= (select (arr!27638 (_keys!10679 thiss!1141)) (index!38857 lt!427451)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!534362 () SeekEntryResult!9121)

(assert (=> d!114945 (= lt!427451 e!534362)))

(declare-fun c!98963 () Bool)

(assert (=> d!114945 (= c!98963 (bvsge (x!81636 lt!427366) #b01111111111111111111111111111110))))

(declare-fun lt!427452 () (_ BitVec 64))

(assert (=> d!114945 (= lt!427452 (select (arr!27638 (_keys!10679 thiss!1141)) (index!38856 lt!427366)))))

(assert (=> d!114945 (validMask!0 (mask!27524 thiss!1141))))

(assert (=> d!114945 (= (seekKeyOrZeroReturnVacant!0 (x!81636 lt!427366) (index!38856 lt!427366) (index!38856 lt!427366) key!756 (_keys!10679 thiss!1141) (mask!27524 thiss!1141)) lt!427451)))

(declare-fun b!949132 () Bool)

(declare-fun c!98962 () Bool)

(assert (=> b!949132 (= c!98962 (= lt!427452 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!534364 () SeekEntryResult!9121)

(assert (=> b!949132 (= e!534364 e!534363)))

(declare-fun b!949133 () Bool)

(assert (=> b!949133 (= e!534362 e!534364)))

(declare-fun c!98961 () Bool)

(assert (=> b!949133 (= c!98961 (= lt!427452 key!756))))

(declare-fun b!949134 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!949134 (= e!534363 (seekKeyOrZeroReturnVacant!0 (bvadd (x!81636 lt!427366) #b00000000000000000000000000000001) (nextIndex!0 (index!38856 lt!427366) (x!81636 lt!427366) (mask!27524 thiss!1141)) (index!38856 lt!427366) key!756 (_keys!10679 thiss!1141) (mask!27524 thiss!1141)))))

(declare-fun b!949135 () Bool)

(assert (=> b!949135 (= e!534364 (Found!9121 (index!38856 lt!427366)))))

(declare-fun b!949136 () Bool)

(assert (=> b!949136 (= e!534362 Undefined!9121)))

(assert (= (and d!114945 c!98963) b!949136))

(assert (= (and d!114945 (not c!98963)) b!949133))

(assert (= (and b!949133 c!98961) b!949135))

(assert (= (and b!949133 (not c!98961)) b!949132))

(assert (= (and b!949132 c!98962) b!949131))

(assert (= (and b!949132 (not c!98962)) b!949134))

(declare-fun m!881945 () Bool)

(assert (=> d!114945 m!881945))

(declare-fun m!881947 () Bool)

(assert (=> d!114945 m!881947))

(assert (=> d!114945 m!881745))

(assert (=> d!114945 m!881639))

(declare-fun m!881949 () Bool)

(assert (=> b!949134 m!881949))

(assert (=> b!949134 m!881949))

(declare-fun m!881951 () Bool)

(assert (=> b!949134 m!881951))

(assert (=> b!948983 d!114945))

(declare-fun b!949145 () Bool)

(declare-fun e!534369 () (_ BitVec 32))

(assert (=> b!949145 (= e!534369 #b00000000000000000000000000000000)))

(declare-fun b!949146 () Bool)

(declare-fun e!534370 () (_ BitVec 32))

(declare-fun call!41283 () (_ BitVec 32))

(assert (=> b!949146 (= e!534370 (bvadd #b00000000000000000000000000000001 call!41283))))

(declare-fun bm!41280 () Bool)

(assert (=> bm!41280 (= call!41283 (arrayCountValidKeys!0 (_keys!10679 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28114 (_keys!10679 thiss!1141))))))

(declare-fun b!949147 () Bool)

(assert (=> b!949147 (= e!534369 e!534370)))

(declare-fun c!98968 () Bool)

(assert (=> b!949147 (= c!98968 (validKeyInArray!0 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!114947 () Bool)

(declare-fun lt!427455 () (_ BitVec 32))

(assert (=> d!114947 (and (bvsge lt!427455 #b00000000000000000000000000000000) (bvsle lt!427455 (bvsub (size!28114 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!114947 (= lt!427455 e!534369)))

(declare-fun c!98969 () Bool)

(assert (=> d!114947 (= c!98969 (bvsge #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))))))

(assert (=> d!114947 (and (bvsle #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!28114 (_keys!10679 thiss!1141)) (size!28114 (_keys!10679 thiss!1141))))))

(assert (=> d!114947 (= (arrayCountValidKeys!0 (_keys!10679 thiss!1141) #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))) lt!427455)))

(declare-fun b!949148 () Bool)

(assert (=> b!949148 (= e!534370 call!41283)))

(assert (= (and d!114947 c!98969) b!949145))

(assert (= (and d!114947 (not c!98969)) b!949147))

(assert (= (and b!949147 c!98968) b!949146))

(assert (= (and b!949147 (not c!98968)) b!949148))

(assert (= (or b!949146 b!949148) bm!41280))

(declare-fun m!881953 () Bool)

(assert (=> bm!41280 m!881953))

(assert (=> b!949147 m!881707))

(assert (=> b!949147 m!881707))

(assert (=> b!949147 m!881723))

(assert (=> b!948965 d!114947))

(declare-fun d!114949 () Bool)

(assert (=> d!114949 (= (apply!909 lt!427338 #b0000000000000000000000000000000000000000000000000000000000000000) (get!14537 (getValueByKey!496 (toList!6185 lt!427338) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26677 () Bool)

(assert (= bs!26677 d!114949))

(assert (=> bs!26677 m!881933))

(assert (=> bs!26677 m!881933))

(declare-fun m!881955 () Bool)

(assert (=> bs!26677 m!881955))

(assert (=> b!948949 d!114949))

(assert (=> d!114875 d!114881))

(assert (=> b!948893 d!114919))

(assert (=> b!948893 d!114921))

(declare-fun b!949167 () Bool)

(declare-fun e!534383 () SeekEntryResult!9121)

(assert (=> b!949167 (= e!534383 (Intermediate!9121 true (toIndex!0 key!756 (mask!27524 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun d!114951 () Bool)

(declare-fun e!534384 () Bool)

(assert (=> d!114951 e!534384))

(declare-fun c!98978 () Bool)

(declare-fun lt!427460 () SeekEntryResult!9121)

(assert (=> d!114951 (= c!98978 (and ((_ is Intermediate!9121) lt!427460) (undefined!9933 lt!427460)))))

(assert (=> d!114951 (= lt!427460 e!534383)))

(declare-fun c!98976 () Bool)

(assert (=> d!114951 (= c!98976 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!427461 () (_ BitVec 64))

(assert (=> d!114951 (= lt!427461 (select (arr!27638 (_keys!10679 thiss!1141)) (toIndex!0 key!756 (mask!27524 thiss!1141))))))

(assert (=> d!114951 (validMask!0 (mask!27524 thiss!1141))))

(assert (=> d!114951 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27524 thiss!1141)) key!756 (_keys!10679 thiss!1141) (mask!27524 thiss!1141)) lt!427460)))

(declare-fun b!949168 () Bool)

(declare-fun e!534381 () SeekEntryResult!9121)

(assert (=> b!949168 (= e!534383 e!534381)))

(declare-fun c!98977 () Bool)

(assert (=> b!949168 (= c!98977 (or (= lt!427461 key!756) (= (bvadd lt!427461 lt!427461) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!949169 () Bool)

(declare-fun e!534385 () Bool)

(assert (=> b!949169 (= e!534384 e!534385)))

(declare-fun res!636690 () Bool)

(assert (=> b!949169 (= res!636690 (and ((_ is Intermediate!9121) lt!427460) (not (undefined!9933 lt!427460)) (bvslt (x!81636 lt!427460) #b01111111111111111111111111111110) (bvsge (x!81636 lt!427460) #b00000000000000000000000000000000) (bvsge (x!81636 lt!427460) #b00000000000000000000000000000000)))))

(assert (=> b!949169 (=> (not res!636690) (not e!534385))))

(declare-fun b!949170 () Bool)

(assert (=> b!949170 (= e!534381 (Intermediate!9121 false (toIndex!0 key!756 (mask!27524 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!949171 () Bool)

(assert (=> b!949171 (and (bvsge (index!38856 lt!427460) #b00000000000000000000000000000000) (bvslt (index!38856 lt!427460) (size!28114 (_keys!10679 thiss!1141))))))

(declare-fun e!534382 () Bool)

(assert (=> b!949171 (= e!534382 (= (select (arr!27638 (_keys!10679 thiss!1141)) (index!38856 lt!427460)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!949172 () Bool)

(assert (=> b!949172 (and (bvsge (index!38856 lt!427460) #b00000000000000000000000000000000) (bvslt (index!38856 lt!427460) (size!28114 (_keys!10679 thiss!1141))))))

(declare-fun res!636691 () Bool)

(assert (=> b!949172 (= res!636691 (= (select (arr!27638 (_keys!10679 thiss!1141)) (index!38856 lt!427460)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!949172 (=> res!636691 e!534382)))

(declare-fun b!949173 () Bool)

(assert (=> b!949173 (= e!534381 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27524 thiss!1141)) #b00000000000000000000000000000000 (mask!27524 thiss!1141)) key!756 (_keys!10679 thiss!1141) (mask!27524 thiss!1141)))))

(declare-fun b!949174 () Bool)

(assert (=> b!949174 (= e!534384 (bvsge (x!81636 lt!427460) #b01111111111111111111111111111110))))

(declare-fun b!949175 () Bool)

(assert (=> b!949175 (and (bvsge (index!38856 lt!427460) #b00000000000000000000000000000000) (bvslt (index!38856 lt!427460) (size!28114 (_keys!10679 thiss!1141))))))

(declare-fun res!636692 () Bool)

(assert (=> b!949175 (= res!636692 (= (select (arr!27638 (_keys!10679 thiss!1141)) (index!38856 lt!427460)) key!756))))

(assert (=> b!949175 (=> res!636692 e!534382)))

(assert (=> b!949175 (= e!534385 e!534382)))

(assert (= (and d!114951 c!98976) b!949167))

(assert (= (and d!114951 (not c!98976)) b!949168))

(assert (= (and b!949168 c!98977) b!949170))

(assert (= (and b!949168 (not c!98977)) b!949173))

(assert (= (and d!114951 c!98978) b!949174))

(assert (= (and d!114951 (not c!98978)) b!949169))

(assert (= (and b!949169 res!636690) b!949175))

(assert (= (and b!949175 (not res!636692)) b!949172))

(assert (= (and b!949172 (not res!636691)) b!949171))

(assert (=> d!114951 m!881749))

(declare-fun m!881957 () Bool)

(assert (=> d!114951 m!881957))

(assert (=> d!114951 m!881639))

(declare-fun m!881959 () Bool)

(assert (=> b!949172 m!881959))

(assert (=> b!949175 m!881959))

(assert (=> b!949171 m!881959))

(assert (=> b!949173 m!881749))

(declare-fun m!881961 () Bool)

(assert (=> b!949173 m!881961))

(assert (=> b!949173 m!881961))

(declare-fun m!881963 () Bool)

(assert (=> b!949173 m!881963))

(assert (=> d!114879 d!114951))

(declare-fun d!114953 () Bool)

(declare-fun lt!427467 () (_ BitVec 32))

(declare-fun lt!427466 () (_ BitVec 32))

(assert (=> d!114953 (= lt!427467 (bvmul (bvxor lt!427466 (bvlshr lt!427466 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!114953 (= lt!427466 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!114953 (and (bvsge (mask!27524 thiss!1141) #b00000000000000000000000000000000) (let ((res!636693 (let ((h!20611 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!81655 (bvmul (bvxor h!20611 (bvlshr h!20611 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!81655 (bvlshr x!81655 #b00000000000000000000000000001101)) (mask!27524 thiss!1141)))))) (and (bvslt res!636693 (bvadd (mask!27524 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!636693 #b00000000000000000000000000000000))))))

(assert (=> d!114953 (= (toIndex!0 key!756 (mask!27524 thiss!1141)) (bvand (bvxor lt!427467 (bvlshr lt!427467 #b00000000000000000000000000001101)) (mask!27524 thiss!1141)))))

(assert (=> d!114879 d!114953))

(assert (=> d!114879 d!114881))

(assert (=> bm!41267 d!114905))

(declare-fun b!949184 () Bool)

(declare-fun e!534394 () Bool)

(declare-fun call!41286 () Bool)

(assert (=> b!949184 (= e!534394 call!41286)))

(declare-fun bm!41283 () Bool)

(assert (=> bm!41283 (= call!41286 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10679 thiss!1141) (mask!27524 thiss!1141)))))

(declare-fun d!114955 () Bool)

(declare-fun res!636698 () Bool)

(declare-fun e!534392 () Bool)

(assert (=> d!114955 (=> res!636698 e!534392)))

(assert (=> d!114955 (= res!636698 (bvsge #b00000000000000000000000000000000 (size!28114 (_keys!10679 thiss!1141))))))

(assert (=> d!114955 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10679 thiss!1141) (mask!27524 thiss!1141)) e!534392)))

(declare-fun b!949185 () Bool)

(declare-fun e!534393 () Bool)

(assert (=> b!949185 (= e!534393 call!41286)))

(declare-fun b!949186 () Bool)

(assert (=> b!949186 (= e!534392 e!534394)))

(declare-fun c!98981 () Bool)

(assert (=> b!949186 (= c!98981 (validKeyInArray!0 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!949187 () Bool)

(assert (=> b!949187 (= e!534394 e!534393)))

(declare-fun lt!427476 () (_ BitVec 64))

(assert (=> b!949187 (= lt!427476 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427474 () Unit!31956)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57476 (_ BitVec 64) (_ BitVec 32)) Unit!31956)

(assert (=> b!949187 (= lt!427474 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10679 thiss!1141) lt!427476 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57476 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!949187 (arrayContainsKey!0 (_keys!10679 thiss!1141) lt!427476 #b00000000000000000000000000000000)))

(declare-fun lt!427475 () Unit!31956)

(assert (=> b!949187 (= lt!427475 lt!427474)))

(declare-fun res!636699 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57476 (_ BitVec 32)) SeekEntryResult!9121)

(assert (=> b!949187 (= res!636699 (= (seekEntryOrOpen!0 (select (arr!27638 (_keys!10679 thiss!1141)) #b00000000000000000000000000000000) (_keys!10679 thiss!1141) (mask!27524 thiss!1141)) (Found!9121 #b00000000000000000000000000000000)))))

(assert (=> b!949187 (=> (not res!636699) (not e!534393))))

(assert (= (and d!114955 (not res!636698)) b!949186))

(assert (= (and b!949186 c!98981) b!949187))

(assert (= (and b!949186 (not c!98981)) b!949184))

(assert (= (and b!949187 res!636699) b!949185))

(assert (= (or b!949185 b!949184) bm!41283))

(declare-fun m!881965 () Bool)

(assert (=> bm!41283 m!881965))

(assert (=> b!949186 m!881707))

(assert (=> b!949186 m!881707))

(assert (=> b!949186 m!881723))

(assert (=> b!949187 m!881707))

(declare-fun m!881967 () Bool)

(assert (=> b!949187 m!881967))

(declare-fun m!881969 () Bool)

(assert (=> b!949187 m!881969))

(assert (=> b!949187 m!881707))

(declare-fun m!881971 () Bool)

(assert (=> b!949187 m!881971))

(assert (=> b!948966 d!114955))

(declare-fun mapIsEmpty!32986 () Bool)

(declare-fun mapRes!32986 () Bool)

(assert (=> mapIsEmpty!32986 mapRes!32986))

(declare-fun condMapEmpty!32986 () Bool)

(declare-fun mapDefault!32986 () ValueCell!9879)

(assert (=> mapNonEmpty!32985 (= condMapEmpty!32986 (= mapRest!32985 ((as const (Array (_ BitVec 32) ValueCell!9879)) mapDefault!32986)))))

(declare-fun e!534395 () Bool)

(assert (=> mapNonEmpty!32985 (= tp!63231 (and e!534395 mapRes!32986))))

(declare-fun b!949188 () Bool)

(declare-fun e!534396 () Bool)

(assert (=> b!949188 (= e!534396 tp_is_empty!20721)))

(declare-fun mapNonEmpty!32986 () Bool)

(declare-fun tp!63232 () Bool)

(assert (=> mapNonEmpty!32986 (= mapRes!32986 (and tp!63232 e!534396))))

(declare-fun mapKey!32986 () (_ BitVec 32))

(declare-fun mapValue!32986 () ValueCell!9879)

(declare-fun mapRest!32986 () (Array (_ BitVec 32) ValueCell!9879))

(assert (=> mapNonEmpty!32986 (= mapRest!32985 (store mapRest!32986 mapKey!32986 mapValue!32986))))

(declare-fun b!949189 () Bool)

(assert (=> b!949189 (= e!534395 tp_is_empty!20721)))

(assert (= (and mapNonEmpty!32985 condMapEmpty!32986) mapIsEmpty!32986))

(assert (= (and mapNonEmpty!32985 (not condMapEmpty!32986)) mapNonEmpty!32986))

(assert (= (and mapNonEmpty!32986 ((_ is ValueCellFull!9879) mapValue!32986)) b!949188))

(assert (= (and mapNonEmpty!32985 ((_ is ValueCellFull!9879) mapDefault!32986)) b!949189))

(declare-fun m!881973 () Bool)

(assert (=> mapNonEmpty!32986 m!881973))

(declare-fun b_lambda!14373 () Bool)

(assert (= b_lambda!14369 (or (and b!948850 b_free!18213) b_lambda!14373)))

(declare-fun b_lambda!14375 () Bool)

(assert (= b_lambda!14371 (or (and b!948850 b_free!18213) b_lambda!14375)))

(check-sat (not d!114909) (not b!949134) (not b!949004) (not b!948998) (not d!114891) (not d!114911) (not d!114903) (not b_lambda!14375) (not d!114901) (not b!949067) (not b!949098) (not b!949173) (not b!949051) (not b!949116) (not b!949082) (not d!114899) (not b!948999) (not d!114913) (not b!949100) (not d!114925) (not b!949106) (not b!949048) (not bm!41274) (not d!114897) (not d!114887) (not d!114915) (not b!949006) (not b_lambda!14367) (not b!949065) (not d!114893) (not b!949070) (not d!114951) (not d!114885) (not bm!41280) (not d!114923) (not b!949005) (not b!949069) (not b!949035) (not b!949042) (not d!114941) (not b!949050) (not b!949147) (not d!114937) (not b!949046) (not b!949096) (not b_next!18213) (not d!114889) (not mapNonEmpty!32986) (not d!114895) (not b!949117) (not d!114943) (not d!114905) (not b!949054) (not b!949037) (not b!949033) (not b!949036) (not b!949093) (not b!949076) (not b!949094) tp_is_empty!20721 b_and!29679 (not b!949068) (not d!114917) (not d!114907) (not b!949104) (not b!949081) (not d!114919) (not d!114945) (not d!114933) (not b_lambda!14373) (not b!949038) (not b!949039) (not b!949101) (not b!949187) (not b!949186) (not d!114939) (not b!949044) (not bm!41277) (not b!949007) (not d!114949) (not bm!41283) (not b!949103) (not d!114929))
(check-sat b_and!29679 (not b_next!18213))
