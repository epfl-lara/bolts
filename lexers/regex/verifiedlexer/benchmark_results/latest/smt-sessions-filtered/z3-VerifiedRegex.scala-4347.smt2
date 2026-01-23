; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231266 () Bool)

(assert start!231266)

(declare-fun b!2358929 () Bool)

(declare-fun b_free!70413 () Bool)

(declare-fun b_next!71117 () Bool)

(assert (=> b!2358929 (= b_free!70413 (not b_next!71117))))

(declare-fun tp!754337 () Bool)

(declare-fun b_and!185347 () Bool)

(assert (=> b!2358929 (= tp!754337 b_and!185347)))

(declare-fun b!2358935 () Bool)

(declare-fun b_free!70415 () Bool)

(declare-fun b_next!71119 () Bool)

(assert (=> b!2358935 (= b_free!70415 (not b_next!71119))))

(declare-fun tp!754334 () Bool)

(declare-fun b_and!185349 () Bool)

(assert (=> b!2358935 (= tp!754334 b_and!185349)))

(declare-fun mapNonEmpty!15118 () Bool)

(declare-fun mapRes!15118 () Bool)

(declare-fun tp!754335 () Bool)

(declare-fun tp!754338 () Bool)

(assert (=> mapNonEmpty!15118 (= mapRes!15118 (and tp!754335 tp!754338))))

(declare-datatypes ((K!4972 0))(
  ( (K!4973 (val!8201 Int)) )
))
(declare-datatypes ((V!5174 0))(
  ( (V!5175 (val!8202 Int)) )
))
(declare-datatypes ((tuple2!27634 0))(
  ( (tuple2!27635 (_1!16358 K!4972) (_2!16358 V!5174)) )
))
(declare-datatypes ((List!27988 0))(
  ( (Nil!27890) (Cons!27890 (h!33291 tuple2!27634) (t!207863 List!27988)) )
))
(declare-fun mapRest!15118 () (Array (_ BitVec 32) List!27988))

(declare-fun mapValue!15118 () List!27988)

(declare-fun mapKey!15118 () (_ BitVec 32))

(declare-datatypes ((array!11379 0))(
  ( (array!11380 (arr!5070 (Array (_ BitVec 32) List!27988)) (size!22094 (_ BitVec 32))) )
))
(declare-datatypes ((array!11381 0))(
  ( (array!11382 (arr!5071 (Array (_ BitVec 32) (_ BitVec 64))) (size!22095 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6480 0))(
  ( (LongMapFixedSize!6481 (defaultEntry!3614 Int) (mask!8136 (_ BitVec 32)) (extraKeys!3488 (_ BitVec 32)) (zeroValue!3498 List!27988) (minValue!3498 List!27988) (_size!6527 (_ BitVec 32)) (_keys!3537 array!11381) (_values!3520 array!11379) (_vacant!3301 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12777 0))(
  ( (Cell!12778 (v!30825 LongMapFixedSize!6480)) )
))
(declare-datatypes ((Hashable!3150 0))(
  ( (HashableExt!3149 (__x!18478 Int)) )
))
(declare-datatypes ((MutLongMap!3240 0))(
  ( (LongMap!3240 (underlying!6685 Cell!12777)) (MutLongMapExt!3239 (__x!18479 Int)) )
))
(declare-datatypes ((Cell!12779 0))(
  ( (Cell!12780 (v!30826 MutLongMap!3240)) )
))
(declare-datatypes ((MutableMap!3150 0))(
  ( (MutableMapExt!3149 (__x!18480 Int)) (HashMap!3150 (underlying!6686 Cell!12779) (hashF!5079 Hashable!3150) (_size!6528 (_ BitVec 32)) (defaultValue!3312 Int)) )
))
(declare-fun thiss!47689 () MutableMap!3150)

(assert (=> mapNonEmpty!15118 (= (arr!5070 (_values!3520 (v!30825 (underlying!6685 (v!30826 (underlying!6686 thiss!47689)))))) (store mapRest!15118 mapKey!15118 mapValue!15118))))

(declare-fun e!1506715 () Bool)

(declare-fun tp!754333 () Bool)

(declare-fun e!1506719 () Bool)

(declare-fun tp!754336 () Bool)

(declare-fun array_inv!3635 (array!11381) Bool)

(declare-fun array_inv!3636 (array!11379) Bool)

(assert (=> b!2358929 (= e!1506719 (and tp!754337 tp!754333 tp!754336 (array_inv!3635 (_keys!3537 (v!30825 (underlying!6685 (v!30826 (underlying!6686 thiss!47689)))))) (array_inv!3636 (_values!3520 (v!30825 (underlying!6685 (v!30826 (underlying!6686 thiss!47689)))))) e!1506715))))

(declare-fun b!2358930 () Bool)

(declare-fun e!1506714 () Bool)

(declare-fun e!1506721 () Bool)

(assert (=> b!2358930 (= e!1506714 e!1506721)))

(declare-fun b!2358931 () Bool)

(declare-fun tp!754332 () Bool)

(assert (=> b!2358931 (= e!1506715 (and tp!754332 mapRes!15118))))

(declare-fun condMapEmpty!15118 () Bool)

(declare-fun mapDefault!15118 () List!27988)

(assert (=> b!2358931 (= condMapEmpty!15118 (= (arr!5070 (_values!3520 (v!30825 (underlying!6685 (v!30826 (underlying!6686 thiss!47689)))))) ((as const (Array (_ BitVec 32) List!27988)) mapDefault!15118)))))

(declare-fun mapIsEmpty!15118 () Bool)

(assert (=> mapIsEmpty!15118 mapRes!15118))

(declare-fun b!2358932 () Bool)

(declare-fun res!1001153 () Bool)

(declare-fun e!1506717 () Bool)

(assert (=> b!2358932 (=> (not res!1001153) (not e!1506717))))

(get-info :version)

(assert (=> b!2358932 (= res!1001153 ((_ is MutableMapExt!3149) thiss!47689))))

(declare-fun b!2358933 () Bool)

(declare-fun key!7131 () K!4972)

(declare-fun contains!4859 (MutableMap!3150 K!4972) Bool)

(declare-datatypes ((ListMap!911 0))(
  ( (ListMap!912 (toList!1425 List!27988)) )
))
(declare-fun contains!4860 (ListMap!911 K!4972) Bool)

(declare-fun abstractMap!99 (MutableMap!3150) ListMap!911)

(assert (=> b!2358933 (= e!1506717 (not (= (contains!4859 thiss!47689 key!7131) (contains!4860 (abstractMap!99 thiss!47689) key!7131))))))

(declare-fun b!2358928 () Bool)

(assert (=> b!2358928 (= e!1506721 e!1506719)))

(declare-fun res!1001154 () Bool)

(assert (=> start!231266 (=> (not res!1001154) (not e!1506717))))

(declare-fun valid!2432 (MutableMap!3150) Bool)

(assert (=> start!231266 (= res!1001154 (valid!2432 thiss!47689))))

(assert (=> start!231266 e!1506717))

(declare-fun e!1506716 () Bool)

(assert (=> start!231266 e!1506716))

(declare-fun tp_is_empty!11189 () Bool)

(assert (=> start!231266 tp_is_empty!11189))

(declare-fun b!2358934 () Bool)

(declare-fun e!1506720 () Bool)

(declare-fun lt!863752 () MutLongMap!3240)

(assert (=> b!2358934 (= e!1506720 (and e!1506714 ((_ is LongMap!3240) lt!863752)))))

(assert (=> b!2358934 (= lt!863752 (v!30826 (underlying!6686 thiss!47689)))))

(assert (=> b!2358935 (= e!1506716 (and e!1506720 tp!754334))))

(assert (= (and start!231266 res!1001154) b!2358932))

(assert (= (and b!2358932 res!1001153) b!2358933))

(assert (= (and b!2358931 condMapEmpty!15118) mapIsEmpty!15118))

(assert (= (and b!2358931 (not condMapEmpty!15118)) mapNonEmpty!15118))

(assert (= b!2358929 b!2358931))

(assert (= b!2358928 b!2358929))

(assert (= b!2358930 b!2358928))

(assert (= (and b!2358934 ((_ is LongMap!3240) (v!30826 (underlying!6686 thiss!47689)))) b!2358930))

(assert (= b!2358935 b!2358934))

(assert (= (and start!231266 ((_ is HashMap!3150) thiss!47689)) b!2358935))

(declare-fun m!2771537 () Bool)

(assert (=> mapNonEmpty!15118 m!2771537))

(declare-fun m!2771539 () Bool)

(assert (=> b!2358929 m!2771539))

(declare-fun m!2771541 () Bool)

(assert (=> b!2358929 m!2771541))

(declare-fun m!2771543 () Bool)

(assert (=> b!2358933 m!2771543))

(declare-fun m!2771545 () Bool)

(assert (=> b!2358933 m!2771545))

(assert (=> b!2358933 m!2771545))

(declare-fun m!2771547 () Bool)

(assert (=> b!2358933 m!2771547))

(declare-fun m!2771549 () Bool)

(assert (=> start!231266 m!2771549))

(check-sat (not b!2358929) (not b_next!71117) (not b!2358931) b_and!185347 b_and!185349 (not b!2358933) (not b_next!71119) (not start!231266) (not mapNonEmpty!15118) tp_is_empty!11189)
(check-sat b_and!185349 b_and!185347 (not b_next!71117) (not b_next!71119))
(get-model)

(declare-fun d!693446 () Bool)

(declare-fun c!374968 () Bool)

(assert (=> d!693446 (= c!374968 ((_ is MutableMapExt!3149) thiss!47689))))

(declare-fun e!1506724 () Bool)

(assert (=> d!693446 (= (valid!2432 thiss!47689) e!1506724)))

(declare-fun b!2358940 () Bool)

(declare-fun valid!2433 (MutableMap!3150) Bool)

(assert (=> b!2358940 (= e!1506724 (valid!2433 thiss!47689))))

(declare-fun b!2358941 () Bool)

(declare-fun valid!2434 (MutableMap!3150) Bool)

(assert (=> b!2358941 (= e!1506724 (valid!2434 thiss!47689))))

(assert (= (and d!693446 c!374968) b!2358940))

(assert (= (and d!693446 (not c!374968)) b!2358941))

(declare-fun m!2771551 () Bool)

(assert (=> b!2358940 m!2771551))

(declare-fun m!2771553 () Bool)

(assert (=> b!2358941 m!2771553))

(assert (=> start!231266 d!693446))

(declare-fun d!693448 () Bool)

(assert (=> d!693448 (= (array_inv!3635 (_keys!3537 (v!30825 (underlying!6685 (v!30826 (underlying!6686 thiss!47689)))))) (bvsge (size!22095 (_keys!3537 (v!30825 (underlying!6685 (v!30826 (underlying!6686 thiss!47689)))))) #b00000000000000000000000000000000))))

(assert (=> b!2358929 d!693448))

(declare-fun d!693450 () Bool)

(assert (=> d!693450 (= (array_inv!3636 (_values!3520 (v!30825 (underlying!6685 (v!30826 (underlying!6686 thiss!47689)))))) (bvsge (size!22094 (_values!3520 (v!30825 (underlying!6685 (v!30826 (underlying!6686 thiss!47689)))))) #b00000000000000000000000000000000))))

(assert (=> b!2358929 d!693450))

(declare-fun d!693452 () Bool)

(declare-fun lt!863755 () Bool)

(assert (=> d!693452 (= lt!863755 (contains!4860 (abstractMap!99 thiss!47689) key!7131))))

(declare-fun choose!13668 (MutableMap!3150 K!4972) Bool)

(assert (=> d!693452 (= lt!863755 (choose!13668 thiss!47689 key!7131))))

(assert (=> d!693452 (valid!2432 thiss!47689)))

(assert (=> d!693452 (= (contains!4859 thiss!47689 key!7131) lt!863755)))

(declare-fun bs!460424 () Bool)

(assert (= bs!460424 d!693452))

(assert (=> bs!460424 m!2771545))

(assert (=> bs!460424 m!2771545))

(assert (=> bs!460424 m!2771547))

(declare-fun m!2771555 () Bool)

(assert (=> bs!460424 m!2771555))

(assert (=> bs!460424 m!2771549))

(assert (=> b!2358933 d!693452))

(declare-fun b!2358960 () Bool)

(declare-fun e!1506741 () Bool)

(declare-fun e!1506739 () Bool)

(assert (=> b!2358960 (= e!1506741 e!1506739)))

(declare-fun res!1001163 () Bool)

(assert (=> b!2358960 (=> (not res!1001163) (not e!1506739))))

(declare-datatypes ((Option!5442 0))(
  ( (None!5441) (Some!5441 (v!30827 V!5174)) )
))
(declare-fun isDefined!4272 (Option!5442) Bool)

(declare-fun getValueByKey!116 (List!27988 K!4972) Option!5442)

(assert (=> b!2358960 (= res!1001163 (isDefined!4272 (getValueByKey!116 (toList!1425 (abstractMap!99 thiss!47689)) key!7131)))))

(declare-fun bm!143598 () Bool)

(declare-fun call!143603 () Bool)

(declare-datatypes ((List!27989 0))(
  ( (Nil!27891) (Cons!27891 (h!33292 K!4972) (t!207864 List!27989)) )
))
(declare-fun e!1506738 () List!27989)

(declare-fun contains!4861 (List!27989 K!4972) Bool)

(assert (=> bm!143598 (= call!143603 (contains!4861 e!1506738 key!7131))))

(declare-fun c!374975 () Bool)

(declare-fun c!374977 () Bool)

(assert (=> bm!143598 (= c!374975 c!374977)))

(declare-fun b!2358961 () Bool)

(declare-datatypes ((Unit!40797 0))(
  ( (Unit!40798) )
))
(declare-fun e!1506742 () Unit!40797)

(declare-fun Unit!40799 () Unit!40797)

(assert (=> b!2358961 (= e!1506742 Unit!40799)))

(declare-fun b!2358962 () Bool)

(declare-fun e!1506740 () Bool)

(declare-fun keys!8759 (ListMap!911) List!27989)

(assert (=> b!2358962 (= e!1506740 (not (contains!4861 (keys!8759 (abstractMap!99 thiss!47689)) key!7131)))))

(declare-fun b!2358963 () Bool)

(assert (=> b!2358963 (= e!1506738 (keys!8759 (abstractMap!99 thiss!47689)))))

(declare-fun b!2358964 () Bool)

(assert (=> b!2358964 false))

(declare-fun lt!863773 () Unit!40797)

(declare-fun lt!863775 () Unit!40797)

(assert (=> b!2358964 (= lt!863773 lt!863775)))

(declare-fun containsKey!105 (List!27988 K!4972) Bool)

(assert (=> b!2358964 (containsKey!105 (toList!1425 (abstractMap!99 thiss!47689)) key!7131)))

(declare-fun lemmaInGetKeysListThenContainsKey!10 (List!27988 K!4972) Unit!40797)

(assert (=> b!2358964 (= lt!863775 (lemmaInGetKeysListThenContainsKey!10 (toList!1425 (abstractMap!99 thiss!47689)) key!7131))))

(declare-fun Unit!40800 () Unit!40797)

(assert (=> b!2358964 (= e!1506742 Unit!40800)))

(declare-fun b!2358965 () Bool)

(declare-fun getKeysList!13 (List!27988) List!27989)

(assert (=> b!2358965 (= e!1506738 (getKeysList!13 (toList!1425 (abstractMap!99 thiss!47689))))))

(declare-fun b!2358966 () Bool)

(declare-fun e!1506737 () Unit!40797)

(assert (=> b!2358966 (= e!1506737 e!1506742)))

(declare-fun c!374976 () Bool)

(assert (=> b!2358966 (= c!374976 call!143603)))

(declare-fun d!693454 () Bool)

(assert (=> d!693454 e!1506741))

(declare-fun res!1001161 () Bool)

(assert (=> d!693454 (=> res!1001161 e!1506741)))

(assert (=> d!693454 (= res!1001161 e!1506740)))

(declare-fun res!1001162 () Bool)

(assert (=> d!693454 (=> (not res!1001162) (not e!1506740))))

(declare-fun lt!863779 () Bool)

(assert (=> d!693454 (= res!1001162 (not lt!863779))))

(declare-fun lt!863776 () Bool)

(assert (=> d!693454 (= lt!863779 lt!863776)))

(declare-fun lt!863777 () Unit!40797)

(assert (=> d!693454 (= lt!863777 e!1506737)))

(assert (=> d!693454 (= c!374977 lt!863776)))

(assert (=> d!693454 (= lt!863776 (containsKey!105 (toList!1425 (abstractMap!99 thiss!47689)) key!7131))))

(assert (=> d!693454 (= (contains!4860 (abstractMap!99 thiss!47689) key!7131) lt!863779)))

(declare-fun b!2358967 () Bool)

(assert (=> b!2358967 (= e!1506739 (contains!4861 (keys!8759 (abstractMap!99 thiss!47689)) key!7131))))

(declare-fun b!2358968 () Bool)

(declare-fun lt!863774 () Unit!40797)

(assert (=> b!2358968 (= e!1506737 lt!863774)))

(declare-fun lt!863778 () Unit!40797)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!73 (List!27988 K!4972) Unit!40797)

(assert (=> b!2358968 (= lt!863778 (lemmaContainsKeyImpliesGetValueByKeyDefined!73 (toList!1425 (abstractMap!99 thiss!47689)) key!7131))))

(assert (=> b!2358968 (isDefined!4272 (getValueByKey!116 (toList!1425 (abstractMap!99 thiss!47689)) key!7131))))

(declare-fun lt!863772 () Unit!40797)

(assert (=> b!2358968 (= lt!863772 lt!863778)))

(declare-fun lemmaInListThenGetKeysListContains!10 (List!27988 K!4972) Unit!40797)

(assert (=> b!2358968 (= lt!863774 (lemmaInListThenGetKeysListContains!10 (toList!1425 (abstractMap!99 thiss!47689)) key!7131))))

(assert (=> b!2358968 call!143603))

(assert (= (and d!693454 c!374977) b!2358968))

(assert (= (and d!693454 (not c!374977)) b!2358966))

(assert (= (and b!2358966 c!374976) b!2358964))

(assert (= (and b!2358966 (not c!374976)) b!2358961))

(assert (= (or b!2358968 b!2358966) bm!143598))

(assert (= (and bm!143598 c!374975) b!2358965))

(assert (= (and bm!143598 (not c!374975)) b!2358963))

(assert (= (and d!693454 res!1001162) b!2358962))

(assert (= (and d!693454 (not res!1001161)) b!2358960))

(assert (= (and b!2358960 res!1001163) b!2358967))

(assert (=> b!2358967 m!2771545))

(declare-fun m!2771557 () Bool)

(assert (=> b!2358967 m!2771557))

(assert (=> b!2358967 m!2771557))

(declare-fun m!2771559 () Bool)

(assert (=> b!2358967 m!2771559))

(declare-fun m!2771561 () Bool)

(assert (=> b!2358965 m!2771561))

(declare-fun m!2771563 () Bool)

(assert (=> bm!143598 m!2771563))

(declare-fun m!2771565 () Bool)

(assert (=> d!693454 m!2771565))

(assert (=> b!2358962 m!2771545))

(assert (=> b!2358962 m!2771557))

(assert (=> b!2358962 m!2771557))

(assert (=> b!2358962 m!2771559))

(assert (=> b!2358964 m!2771565))

(declare-fun m!2771567 () Bool)

(assert (=> b!2358964 m!2771567))

(declare-fun m!2771569 () Bool)

(assert (=> b!2358960 m!2771569))

(assert (=> b!2358960 m!2771569))

(declare-fun m!2771571 () Bool)

(assert (=> b!2358960 m!2771571))

(assert (=> b!2358963 m!2771545))

(assert (=> b!2358963 m!2771557))

(declare-fun m!2771573 () Bool)

(assert (=> b!2358968 m!2771573))

(assert (=> b!2358968 m!2771569))

(assert (=> b!2358968 m!2771569))

(assert (=> b!2358968 m!2771571))

(declare-fun m!2771575 () Bool)

(assert (=> b!2358968 m!2771575))

(assert (=> b!2358933 d!693454))

(declare-fun d!693456 () Bool)

(declare-fun c!374980 () Bool)

(assert (=> d!693456 (= c!374980 ((_ is MutableMapExt!3149) thiss!47689))))

(declare-fun e!1506745 () ListMap!911)

(assert (=> d!693456 (= (abstractMap!99 thiss!47689) e!1506745)))

(declare-fun b!2358973 () Bool)

(declare-fun abstractMap!100 (MutableMap!3150) ListMap!911)

(assert (=> b!2358973 (= e!1506745 (abstractMap!100 thiss!47689))))

(declare-fun b!2358974 () Bool)

(declare-fun abstractMap!101 (MutableMap!3150) ListMap!911)

(assert (=> b!2358974 (= e!1506745 (abstractMap!101 thiss!47689))))

(assert (= (and d!693456 c!374980) b!2358973))

(assert (= (and d!693456 (not c!374980)) b!2358974))

(declare-fun m!2771577 () Bool)

(assert (=> b!2358973 m!2771577))

(declare-fun m!2771579 () Bool)

(assert (=> b!2358974 m!2771579))

(assert (=> b!2358933 d!693456))

(declare-fun tp!754341 () Bool)

(declare-fun e!1506748 () Bool)

(declare-fun tp_is_empty!11191 () Bool)

(declare-fun b!2358979 () Bool)

(assert (=> b!2358979 (= e!1506748 (and tp_is_empty!11189 tp_is_empty!11191 tp!754341))))

(assert (=> b!2358929 (= tp!754333 e!1506748)))

(assert (= (and b!2358929 ((_ is Cons!27890) (zeroValue!3498 (v!30825 (underlying!6685 (v!30826 (underlying!6686 thiss!47689))))))) b!2358979))

(declare-fun e!1506749 () Bool)

(declare-fun b!2358980 () Bool)

(declare-fun tp!754342 () Bool)

(assert (=> b!2358980 (= e!1506749 (and tp_is_empty!11189 tp_is_empty!11191 tp!754342))))

(assert (=> b!2358929 (= tp!754336 e!1506749)))

(assert (= (and b!2358929 ((_ is Cons!27890) (minValue!3498 (v!30825 (underlying!6685 (v!30826 (underlying!6686 thiss!47689))))))) b!2358980))

(declare-fun mapIsEmpty!15121 () Bool)

(declare-fun mapRes!15121 () Bool)

(assert (=> mapIsEmpty!15121 mapRes!15121))

(declare-fun mapNonEmpty!15121 () Bool)

(declare-fun tp!754351 () Bool)

(declare-fun e!1506754 () Bool)

(assert (=> mapNonEmpty!15121 (= mapRes!15121 (and tp!754351 e!1506754))))

(declare-fun mapValue!15121 () List!27988)

(declare-fun mapRest!15121 () (Array (_ BitVec 32) List!27988))

(declare-fun mapKey!15121 () (_ BitVec 32))

(assert (=> mapNonEmpty!15121 (= mapRest!15118 (store mapRest!15121 mapKey!15121 mapValue!15121))))

(declare-fun condMapEmpty!15121 () Bool)

(declare-fun mapDefault!15121 () List!27988)

(assert (=> mapNonEmpty!15118 (= condMapEmpty!15121 (= mapRest!15118 ((as const (Array (_ BitVec 32) List!27988)) mapDefault!15121)))))

(declare-fun e!1506755 () Bool)

(assert (=> mapNonEmpty!15118 (= tp!754335 (and e!1506755 mapRes!15121))))

(declare-fun b!2358988 () Bool)

(declare-fun tp!754349 () Bool)

(assert (=> b!2358988 (= e!1506755 (and tp_is_empty!11189 tp_is_empty!11191 tp!754349))))

(declare-fun tp!754350 () Bool)

(declare-fun b!2358987 () Bool)

(assert (=> b!2358987 (= e!1506754 (and tp_is_empty!11189 tp_is_empty!11191 tp!754350))))

(assert (= (and mapNonEmpty!15118 condMapEmpty!15121) mapIsEmpty!15121))

(assert (= (and mapNonEmpty!15118 (not condMapEmpty!15121)) mapNonEmpty!15121))

(assert (= (and mapNonEmpty!15121 ((_ is Cons!27890) mapValue!15121)) b!2358987))

(assert (= (and mapNonEmpty!15118 ((_ is Cons!27890) mapDefault!15121)) b!2358988))

(declare-fun m!2771581 () Bool)

(assert (=> mapNonEmpty!15121 m!2771581))

(declare-fun e!1506756 () Bool)

(declare-fun tp!754352 () Bool)

(declare-fun b!2358989 () Bool)

(assert (=> b!2358989 (= e!1506756 (and tp_is_empty!11189 tp_is_empty!11191 tp!754352))))

(assert (=> mapNonEmpty!15118 (= tp!754338 e!1506756)))

(assert (= (and mapNonEmpty!15118 ((_ is Cons!27890) mapValue!15118)) b!2358989))

(declare-fun tp!754353 () Bool)

(declare-fun e!1506757 () Bool)

(declare-fun b!2358990 () Bool)

(assert (=> b!2358990 (= e!1506757 (and tp_is_empty!11189 tp_is_empty!11191 tp!754353))))

(assert (=> b!2358931 (= tp!754332 e!1506757)))

(assert (= (and b!2358931 ((_ is Cons!27890) mapDefault!15118)) b!2358990))

(check-sat (not b!2358974) (not b!2358962) (not b!2358967) (not b!2358941) (not b!2358968) (not d!693452) (not d!693454) (not b_next!71119) (not b!2358989) (not b!2358973) (not b!2358940) (not b!2358988) tp_is_empty!11191 (not b!2358960) (not mapNonEmpty!15121) (not b!2358990) (not b_next!71117) b_and!185347 (not b!2358963) (not bm!143598) (not b!2358980) b_and!185349 (not b!2358987) (not b!2358979) (not b!2358965) tp_is_empty!11189 (not b!2358964))
(check-sat b_and!185349 b_and!185347 (not b_next!71117) (not b_next!71119))
