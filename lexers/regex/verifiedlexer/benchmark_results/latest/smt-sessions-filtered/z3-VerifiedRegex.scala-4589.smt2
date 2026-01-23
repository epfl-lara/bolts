; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241744 () Bool)

(assert start!241744)

(declare-fun b!2478106 () Bool)

(declare-fun b_free!72049 () Bool)

(declare-fun b_next!72753 () Bool)

(assert (=> b!2478106 (= b_free!72049 (not b_next!72753))))

(declare-fun tp!792949 () Bool)

(declare-fun b_and!188281 () Bool)

(assert (=> b!2478106 (= tp!792949 b_and!188281)))

(declare-fun b!2478103 () Bool)

(declare-fun b_free!72051 () Bool)

(declare-fun b_next!72755 () Bool)

(assert (=> b!2478103 (= b_free!72051 (not b_next!72755))))

(declare-fun tp!792951 () Bool)

(declare-fun b_and!188283 () Bool)

(assert (=> b!2478103 (= tp!792951 b_and!188283)))

(declare-fun res!1048993 () Bool)

(declare-fun e!1572525 () Bool)

(assert (=> start!241744 (=> (not res!1048993) (not e!1572525))))

(declare-datatypes ((Hashable!3208 0))(
  ( (HashableExt!3207 (__x!18800 Int)) )
))
(declare-datatypes ((K!5330 0))(
  ( (K!5331 (val!8739 Int)) )
))
(declare-datatypes ((V!5532 0))(
  ( (V!5533 (val!8740 Int)) )
))
(declare-datatypes ((tuple2!28448 0))(
  ( (tuple2!28449 (_1!16765 K!5330) (_2!16765 V!5532)) )
))
(declare-datatypes ((List!29089 0))(
  ( (Nil!28989) (Cons!28989 (h!34391 tuple2!28448) (t!210732 List!29089)) )
))
(declare-datatypes ((array!11635 0))(
  ( (array!11636 (arr!5186 (Array (_ BitVec 32) List!29089)) (size!22605 (_ BitVec 32))) )
))
(declare-datatypes ((array!11637 0))(
  ( (array!11638 (arr!5187 (Array (_ BitVec 32) (_ BitVec 64))) (size!22606 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6596 0))(
  ( (LongMapFixedSize!6597 (defaultEntry!3672 Int) (mask!8436 (_ BitVec 32)) (extraKeys!3546 (_ BitVec 32)) (zeroValue!3556 List!29089) (minValue!3556 List!29089) (_size!6643 (_ BitVec 32)) (_keys!3595 array!11637) (_values!3578 array!11635) (_vacant!3359 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13009 0))(
  ( (Cell!13010 (v!31278 LongMapFixedSize!6596)) )
))
(declare-datatypes ((MutLongMap!3298 0))(
  ( (LongMap!3298 (underlying!6803 Cell!13009)) (MutLongMapExt!3297 (__x!18801 Int)) )
))
(declare-datatypes ((Cell!13011 0))(
  ( (Cell!13012 (v!31279 MutLongMap!3298)) )
))
(declare-datatypes ((MutableMap!3208 0))(
  ( (MutableMapExt!3207 (__x!18802 Int)) (HashMap!3208 (underlying!6804 Cell!13011) (hashF!5146 Hashable!3208) (_size!6644 (_ BitVec 32)) (defaultValue!3370 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3208)

(get-info :version)

(assert (=> start!241744 (= res!1048993 ((_ is HashMap!3208) thiss!42540))))

(assert (=> start!241744 e!1572525))

(declare-fun e!1572531 () Bool)

(assert (=> start!241744 e!1572531))

(declare-fun tp_is_empty!12105 () Bool)

(assert (=> start!241744 tp_is_empty!12105))

(declare-fun b!2478098 () Bool)

(declare-fun e!1572527 () Bool)

(declare-fun e!1572528 () Bool)

(declare-fun lt!885251 () MutLongMap!3298)

(assert (=> b!2478098 (= e!1572527 (and e!1572528 ((_ is LongMap!3298) lt!885251)))))

(assert (=> b!2478098 (= lt!885251 (v!31279 (underlying!6804 thiss!42540)))))

(declare-fun b!2478099 () Bool)

(declare-fun e!1572526 () Bool)

(declare-fun valid!2509 (MutLongMap!3298) Bool)

(assert (=> b!2478099 (= e!1572526 (not (valid!2509 (v!31279 (underlying!6804 thiss!42540)))))))

(declare-fun b!2478100 () Bool)

(assert (=> b!2478100 (= e!1572525 e!1572526)))

(declare-fun res!1048994 () Bool)

(assert (=> b!2478100 (=> (not res!1048994) (not e!1572526))))

(assert (=> b!2478100 (= res!1048994 ((_ is LongMap!3298) (v!31279 (underlying!6804 thiss!42540))))))

(declare-datatypes ((ListMap!967 0))(
  ( (ListMap!968 (toList!1481 List!29089)) )
))
(declare-fun lt!885250 () ListMap!967)

(declare-fun map!6065 (MutableMap!3208) ListMap!967)

(assert (=> b!2478100 (= lt!885250 (map!6065 thiss!42540))))

(declare-fun lt!885252 () (_ BitVec 64))

(declare-fun lambda!93514 () Int)

(declare-datatypes ((Unit!42380 0))(
  ( (Unit!42381) )
))
(declare-fun lt!885249 () Unit!42380)

(declare-datatypes ((tuple2!28450 0))(
  ( (tuple2!28451 (_1!16766 (_ BitVec 64)) (_2!16766 List!29089)) )
))
(declare-datatypes ((List!29090 0))(
  ( (Nil!28990) (Cons!28990 (h!34392 tuple2!28450) (t!210733 List!29090)) )
))
(declare-fun forallContained!814 (List!29090 Int tuple2!28450) Unit!42380)

(declare-datatypes ((ListLongMap!425 0))(
  ( (ListLongMap!426 (toList!1482 List!29090)) )
))
(declare-fun map!6066 (MutLongMap!3298) ListLongMap!425)

(declare-fun apply!6853 (MutLongMap!3298 (_ BitVec 64)) List!29089)

(assert (=> b!2478100 (= lt!885249 (forallContained!814 (toList!1482 (map!6066 (v!31279 (underlying!6804 thiss!42540)))) lambda!93514 (tuple2!28451 lt!885252 (apply!6853 (v!31279 (underlying!6804 thiss!42540)) lt!885252))))))

(declare-fun key!2246 () K!5330)

(declare-fun hash!627 (Hashable!3208 K!5330) (_ BitVec 64))

(assert (=> b!2478100 (= lt!885252 (hash!627 (hashF!5146 thiss!42540) key!2246))))

(declare-fun b!2478101 () Bool)

(declare-fun e!1572533 () Bool)

(declare-fun e!1572529 () Bool)

(assert (=> b!2478101 (= e!1572533 e!1572529)))

(declare-fun mapNonEmpty!15331 () Bool)

(declare-fun mapRes!15331 () Bool)

(declare-fun tp!792952 () Bool)

(declare-fun tp!792950 () Bool)

(assert (=> mapNonEmpty!15331 (= mapRes!15331 (and tp!792952 tp!792950))))

(declare-fun mapValue!15331 () List!29089)

(declare-fun mapKey!15331 () (_ BitVec 32))

(declare-fun mapRest!15331 () (Array (_ BitVec 32) List!29089))

(assert (=> mapNonEmpty!15331 (= (arr!5186 (_values!3578 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540)))))) (store mapRest!15331 mapKey!15331 mapValue!15331))))

(declare-fun b!2478102 () Bool)

(declare-fun e!1572530 () Bool)

(declare-fun tp!792947 () Bool)

(assert (=> b!2478102 (= e!1572530 (and tp!792947 mapRes!15331))))

(declare-fun condMapEmpty!15331 () Bool)

(declare-fun mapDefault!15331 () List!29089)

(assert (=> b!2478102 (= condMapEmpty!15331 (= (arr!5186 (_values!3578 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29089)) mapDefault!15331)))))

(assert (=> b!2478103 (= e!1572531 (and e!1572527 tp!792951))))

(declare-fun b!2478104 () Bool)

(declare-fun res!1048995 () Bool)

(assert (=> b!2478104 (=> (not res!1048995) (not e!1572525))))

(declare-fun valid!2510 (MutableMap!3208) Bool)

(assert (=> b!2478104 (= res!1048995 (valid!2510 thiss!42540))))

(declare-fun b!2478105 () Bool)

(declare-fun res!1048996 () Bool)

(assert (=> b!2478105 (=> (not res!1048996) (not e!1572525))))

(declare-fun contains!4989 (MutableMap!3208 K!5330) Bool)

(assert (=> b!2478105 (= res!1048996 (contains!4989 thiss!42540 key!2246))))

(declare-fun mapIsEmpty!15331 () Bool)

(assert (=> mapIsEmpty!15331 mapRes!15331))

(declare-fun tp!792953 () Bool)

(declare-fun tp!792948 () Bool)

(declare-fun array_inv!3721 (array!11637) Bool)

(declare-fun array_inv!3722 (array!11635) Bool)

(assert (=> b!2478106 (= e!1572529 (and tp!792949 tp!792948 tp!792953 (array_inv!3721 (_keys!3595 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540)))))) (array_inv!3722 (_values!3578 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540)))))) e!1572530))))

(declare-fun b!2478107 () Bool)

(assert (=> b!2478107 (= e!1572528 e!1572533)))

(assert (= (and start!241744 res!1048993) b!2478104))

(assert (= (and b!2478104 res!1048995) b!2478105))

(assert (= (and b!2478105 res!1048996) b!2478100))

(assert (= (and b!2478100 res!1048994) b!2478099))

(assert (= (and b!2478102 condMapEmpty!15331) mapIsEmpty!15331))

(assert (= (and b!2478102 (not condMapEmpty!15331)) mapNonEmpty!15331))

(assert (= b!2478106 b!2478102))

(assert (= b!2478101 b!2478106))

(assert (= b!2478107 b!2478101))

(assert (= (and b!2478098 ((_ is LongMap!3298) (v!31279 (underlying!6804 thiss!42540)))) b!2478107))

(assert (= b!2478103 b!2478098))

(assert (= (and start!241744 ((_ is HashMap!3208) thiss!42540)) b!2478103))

(declare-fun m!2845835 () Bool)

(assert (=> b!2478099 m!2845835))

(declare-fun m!2845837 () Bool)

(assert (=> b!2478104 m!2845837))

(declare-fun m!2845839 () Bool)

(assert (=> b!2478100 m!2845839))

(declare-fun m!2845841 () Bool)

(assert (=> b!2478100 m!2845841))

(declare-fun m!2845843 () Bool)

(assert (=> b!2478100 m!2845843))

(declare-fun m!2845845 () Bool)

(assert (=> b!2478100 m!2845845))

(declare-fun m!2845847 () Bool)

(assert (=> b!2478100 m!2845847))

(declare-fun m!2845849 () Bool)

(assert (=> b!2478105 m!2845849))

(declare-fun m!2845851 () Bool)

(assert (=> mapNonEmpty!15331 m!2845851))

(declare-fun m!2845853 () Bool)

(assert (=> b!2478106 m!2845853))

(declare-fun m!2845855 () Bool)

(assert (=> b!2478106 m!2845855))

(check-sat (not b_next!72755) b_and!188281 (not b!2478102) (not b!2478099) (not b!2478104) (not mapNonEmpty!15331) b_and!188283 (not b!2478105) (not b!2478106) (not b!2478100) (not b_next!72753) tp_is_empty!12105)
(check-sat b_and!188283 b_and!188281 (not b_next!72753) (not b_next!72755))
(get-model)

(declare-fun d!712482 () Bool)

(declare-fun e!1572536 () Bool)

(assert (=> d!712482 e!1572536))

(declare-fun c!394281 () Bool)

(declare-fun contains!4990 (MutLongMap!3298 (_ BitVec 64)) Bool)

(assert (=> d!712482 (= c!394281 (contains!4990 (v!31279 (underlying!6804 thiss!42540)) lt!885252))))

(declare-fun lt!885255 () List!29089)

(declare-fun apply!6854 (LongMapFixedSize!6596 (_ BitVec 64)) List!29089)

(assert (=> d!712482 (= lt!885255 (apply!6854 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540)))) lt!885252))))

(assert (=> d!712482 (valid!2509 (v!31279 (underlying!6804 thiss!42540)))))

(assert (=> d!712482 (= (apply!6853 (v!31279 (underlying!6804 thiss!42540)) lt!885252) lt!885255)))

(declare-fun b!2478112 () Bool)

(declare-datatypes ((Option!5730 0))(
  ( (None!5729) (Some!5729 (v!31280 List!29089)) )
))
(declare-fun get!8935 (Option!5730) List!29089)

(declare-fun getValueByKey!127 (List!29090 (_ BitVec 64)) Option!5730)

(assert (=> b!2478112 (= e!1572536 (= lt!885255 (get!8935 (getValueByKey!127 (toList!1482 (map!6066 (v!31279 (underlying!6804 thiss!42540)))) lt!885252))))))

(declare-fun b!2478113 () Bool)

(declare-fun dynLambda!12436 (Int (_ BitVec 64)) List!29089)

(assert (=> b!2478113 (= e!1572536 (= lt!885255 (dynLambda!12436 (defaultEntry!3672 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540))))) lt!885252)))))

(assert (=> b!2478113 ((_ is LongMap!3298) (v!31279 (underlying!6804 thiss!42540)))))

(assert (= (and d!712482 c!394281) b!2478112))

(assert (= (and d!712482 (not c!394281)) b!2478113))

(declare-fun b_lambda!76015 () Bool)

(assert (=> (not b_lambda!76015) (not b!2478113)))

(declare-fun t!210735 () Bool)

(declare-fun tb!140361 () Bool)

(assert (=> (and b!2478106 (= (defaultEntry!3672 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540))))) (defaultEntry!3672 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540)))))) t!210735) tb!140361))

(assert (=> b!2478113 t!210735))

(declare-fun result!173270 () Bool)

(declare-fun b_and!188285 () Bool)

(assert (= b_and!188281 (and (=> t!210735 result!173270) b_and!188285)))

(declare-fun m!2845857 () Bool)

(assert (=> d!712482 m!2845857))

(declare-fun m!2845859 () Bool)

(assert (=> d!712482 m!2845859))

(assert (=> d!712482 m!2845835))

(assert (=> b!2478112 m!2845839))

(declare-fun m!2845861 () Bool)

(assert (=> b!2478112 m!2845861))

(assert (=> b!2478112 m!2845861))

(declare-fun m!2845863 () Bool)

(assert (=> b!2478112 m!2845863))

(declare-fun m!2845865 () Bool)

(assert (=> b!2478113 m!2845865))

(assert (=> b!2478100 d!712482))

(declare-fun d!712484 () Bool)

(declare-fun hash!628 (Hashable!3208 K!5330) (_ BitVec 64))

(assert (=> d!712484 (= (hash!627 (hashF!5146 thiss!42540) key!2246) (hash!628 (hashF!5146 thiss!42540) key!2246))))

(declare-fun bs!467207 () Bool)

(assert (= bs!467207 d!712484))

(declare-fun m!2845867 () Bool)

(assert (=> bs!467207 m!2845867))

(assert (=> b!2478100 d!712484))

(declare-fun d!712486 () Bool)

(declare-fun dynLambda!12437 (Int tuple2!28450) Bool)

(assert (=> d!712486 (dynLambda!12437 lambda!93514 (tuple2!28451 lt!885252 (apply!6853 (v!31279 (underlying!6804 thiss!42540)) lt!885252)))))

(declare-fun lt!885258 () Unit!42380)

(declare-fun choose!14615 (List!29090 Int tuple2!28450) Unit!42380)

(assert (=> d!712486 (= lt!885258 (choose!14615 (toList!1482 (map!6066 (v!31279 (underlying!6804 thiss!42540)))) lambda!93514 (tuple2!28451 lt!885252 (apply!6853 (v!31279 (underlying!6804 thiss!42540)) lt!885252))))))

(declare-fun e!1572539 () Bool)

(assert (=> d!712486 e!1572539))

(declare-fun res!1048999 () Bool)

(assert (=> d!712486 (=> (not res!1048999) (not e!1572539))))

(declare-fun forall!5934 (List!29090 Int) Bool)

(assert (=> d!712486 (= res!1048999 (forall!5934 (toList!1482 (map!6066 (v!31279 (underlying!6804 thiss!42540)))) lambda!93514))))

(assert (=> d!712486 (= (forallContained!814 (toList!1482 (map!6066 (v!31279 (underlying!6804 thiss!42540)))) lambda!93514 (tuple2!28451 lt!885252 (apply!6853 (v!31279 (underlying!6804 thiss!42540)) lt!885252))) lt!885258)))

(declare-fun b!2478116 () Bool)

(declare-fun contains!4991 (List!29090 tuple2!28450) Bool)

(assert (=> b!2478116 (= e!1572539 (contains!4991 (toList!1482 (map!6066 (v!31279 (underlying!6804 thiss!42540)))) (tuple2!28451 lt!885252 (apply!6853 (v!31279 (underlying!6804 thiss!42540)) lt!885252))))))

(assert (= (and d!712486 res!1048999) b!2478116))

(declare-fun b_lambda!76017 () Bool)

(assert (=> (not b_lambda!76017) (not d!712486)))

(declare-fun m!2845869 () Bool)

(assert (=> d!712486 m!2845869))

(declare-fun m!2845871 () Bool)

(assert (=> d!712486 m!2845871))

(declare-fun m!2845873 () Bool)

(assert (=> d!712486 m!2845873))

(declare-fun m!2845875 () Bool)

(assert (=> b!2478116 m!2845875))

(assert (=> b!2478100 d!712486))

(declare-fun d!712488 () Bool)

(declare-fun map!6067 (LongMapFixedSize!6596) ListLongMap!425)

(assert (=> d!712488 (= (map!6066 (v!31279 (underlying!6804 thiss!42540))) (map!6067 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540))))))))

(declare-fun bs!467208 () Bool)

(assert (= bs!467208 d!712488))

(declare-fun m!2845877 () Bool)

(assert (=> bs!467208 m!2845877))

(assert (=> b!2478100 d!712488))

(declare-fun d!712490 () Bool)

(declare-fun lt!885261 () ListMap!967)

(declare-fun invariantList!401 (List!29089) Bool)

(assert (=> d!712490 (invariantList!401 (toList!1481 lt!885261))))

(declare-fun extractMap!148 (List!29090) ListMap!967)

(assert (=> d!712490 (= lt!885261 (extractMap!148 (toList!1482 (map!6066 (v!31279 (underlying!6804 thiss!42540))))))))

(assert (=> d!712490 (valid!2510 thiss!42540)))

(assert (=> d!712490 (= (map!6065 thiss!42540) lt!885261)))

(declare-fun bs!467209 () Bool)

(assert (= bs!467209 d!712490))

(declare-fun m!2845879 () Bool)

(assert (=> bs!467209 m!2845879))

(assert (=> bs!467209 m!2845839))

(declare-fun m!2845881 () Bool)

(assert (=> bs!467209 m!2845881))

(assert (=> bs!467209 m!2845837))

(assert (=> b!2478100 d!712490))

(declare-fun bs!467210 () Bool)

(declare-fun b!2478147 () Bool)

(assert (= bs!467210 (and b!2478147 b!2478100)))

(declare-fun lambda!93517 () Int)

(assert (=> bs!467210 (= lambda!93517 lambda!93514)))

(declare-fun b!2478139 () Bool)

(assert (=> b!2478139 false))

(declare-fun lt!885311 () Unit!42380)

(declare-fun lt!885316 () Unit!42380)

(assert (=> b!2478139 (= lt!885311 lt!885316)))

(declare-fun lt!885321 () List!29090)

(declare-fun lt!885319 () (_ BitVec 64))

(declare-fun lt!885312 () List!29089)

(assert (=> b!2478139 (contains!4991 lt!885321 (tuple2!28451 lt!885319 lt!885312))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!61 (List!29090 (_ BitVec 64) List!29089) Unit!42380)

(assert (=> b!2478139 (= lt!885316 (lemmaGetValueByKeyImpliesContainsTuple!61 lt!885321 lt!885319 lt!885312))))

(assert (=> b!2478139 (= lt!885312 (apply!6853 (v!31279 (underlying!6804 thiss!42540)) lt!885319))))

(assert (=> b!2478139 (= lt!885321 (toList!1482 (map!6066 (v!31279 (underlying!6804 thiss!42540)))))))

(declare-fun lt!885318 () Unit!42380)

(declare-fun lt!885314 () Unit!42380)

(assert (=> b!2478139 (= lt!885318 lt!885314)))

(declare-fun lt!885308 () List!29090)

(declare-fun isDefined!4552 (Option!5730) Bool)

(assert (=> b!2478139 (isDefined!4552 (getValueByKey!127 lt!885308 lt!885319))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!84 (List!29090 (_ BitVec 64)) Unit!42380)

(assert (=> b!2478139 (= lt!885314 (lemmaContainsKeyImpliesGetValueByKeyDefined!84 lt!885308 lt!885319))))

(assert (=> b!2478139 (= lt!885308 (toList!1482 (map!6066 (v!31279 (underlying!6804 thiss!42540)))))))

(declare-fun lt!885307 () Unit!42380)

(declare-fun lt!885302 () Unit!42380)

(assert (=> b!2478139 (= lt!885307 lt!885302)))

(declare-fun lt!885304 () List!29090)

(declare-fun containsKey!118 (List!29090 (_ BitVec 64)) Bool)

(assert (=> b!2478139 (containsKey!118 lt!885304 lt!885319)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!61 (List!29090 (_ BitVec 64)) Unit!42380)

(assert (=> b!2478139 (= lt!885302 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!61 lt!885304 lt!885319))))

(assert (=> b!2478139 (= lt!885304 (toList!1482 (map!6066 (v!31279 (underlying!6804 thiss!42540)))))))

(declare-fun e!1572557 () Unit!42380)

(declare-fun Unit!42382 () Unit!42380)

(assert (=> b!2478139 (= e!1572557 Unit!42382)))

(declare-fun b!2478141 () Bool)

(assert (=> b!2478141 false))

(declare-fun lt!885317 () Unit!42380)

(declare-fun lt!885315 () Unit!42380)

(assert (=> b!2478141 (= lt!885317 lt!885315)))

(declare-fun lt!885303 () ListLongMap!425)

(declare-fun contains!4992 (ListMap!967 K!5330) Bool)

(assert (=> b!2478141 (contains!4992 (extractMap!148 (toList!1482 lt!885303)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!60 (ListLongMap!425 K!5330 Hashable!3208) Unit!42380)

(assert (=> b!2478141 (= lt!885315 (lemmaInLongMapThenInGenericMap!60 lt!885303 key!2246 (hashF!5146 thiss!42540)))))

(declare-fun call!151793 () ListLongMap!425)

(assert (=> b!2478141 (= lt!885303 call!151793)))

(declare-fun e!1572554 () Unit!42380)

(declare-fun Unit!42383 () Unit!42380)

(assert (=> b!2478141 (= e!1572554 Unit!42383)))

(declare-fun call!151795 () List!29089)

(declare-fun bm!151788 () Bool)

(declare-fun call!151798 () (_ BitVec 64))

(declare-fun lt!885309 () ListLongMap!425)

(declare-fun c!394290 () Bool)

(declare-fun apply!6855 (ListLongMap!425 (_ BitVec 64)) List!29089)

(assert (=> bm!151788 (= call!151795 (apply!6855 (ite c!394290 lt!885309 call!151793) call!151798))))

(declare-fun b!2478142 () Bool)

(declare-fun e!1572558 () Bool)

(declare-fun call!151797 () Bool)

(assert (=> b!2478142 (= e!1572558 call!151797)))

(declare-fun bm!151789 () Bool)

(assert (=> bm!151789 (= call!151798 (hash!627 (hashF!5146 thiss!42540) key!2246))))

(declare-fun b!2478143 () Bool)

(declare-fun e!1572555 () Unit!42380)

(assert (=> b!2478143 (= e!1572555 e!1572554)))

(declare-fun res!1049006 () Bool)

(declare-fun call!151796 () Bool)

(assert (=> b!2478143 (= res!1049006 call!151796)))

(assert (=> b!2478143 (=> (not res!1049006) (not e!1572558))))

(declare-fun c!394292 () Bool)

(assert (=> b!2478143 (= c!394292 e!1572558)))

(declare-fun bm!151790 () Bool)

(declare-fun contains!4993 (ListLongMap!425 (_ BitVec 64)) Bool)

(assert (=> bm!151790 (= call!151796 (contains!4993 (ite c!394290 lt!885309 call!151793) call!151798))))

(declare-fun b!2478144 () Bool)

(declare-fun e!1572556 () Bool)

(assert (=> b!2478144 (= e!1572556 call!151797)))

(declare-fun b!2478145 () Bool)

(declare-fun Unit!42384 () Unit!42380)

(assert (=> b!2478145 (= e!1572557 Unit!42384)))

(declare-fun bm!151791 () Bool)

(declare-datatypes ((Option!5731 0))(
  ( (None!5730) (Some!5730 (v!31281 tuple2!28448)) )
))
(declare-fun call!151794 () Option!5731)

(declare-fun isDefined!4553 (Option!5731) Bool)

(assert (=> bm!151791 (= call!151797 (isDefined!4553 call!151794))))

(declare-fun d!712492 () Bool)

(declare-fun lt!885310 () Bool)

(assert (=> d!712492 (= lt!885310 (contains!4992 (map!6065 thiss!42540) key!2246))))

(declare-fun e!1572560 () Bool)

(assert (=> d!712492 (= lt!885310 e!1572560)))

(declare-fun res!1049007 () Bool)

(assert (=> d!712492 (=> (not res!1049007) (not e!1572560))))

(assert (=> d!712492 (= res!1049007 (contains!4990 (v!31279 (underlying!6804 thiss!42540)) lt!885319))))

(declare-fun lt!885320 () Unit!42380)

(assert (=> d!712492 (= lt!885320 e!1572555)))

(assert (=> d!712492 (= c!394290 (contains!4992 (extractMap!148 (toList!1482 (map!6066 (v!31279 (underlying!6804 thiss!42540))))) key!2246))))

(declare-fun lt!885305 () Unit!42380)

(declare-fun e!1572559 () Unit!42380)

(assert (=> d!712492 (= lt!885305 e!1572559)))

(declare-fun c!394291 () Bool)

(assert (=> d!712492 (= c!394291 (contains!4990 (v!31279 (underlying!6804 thiss!42540)) lt!885319))))

(assert (=> d!712492 (= lt!885319 (hash!627 (hashF!5146 thiss!42540) key!2246))))

(assert (=> d!712492 (valid!2510 thiss!42540)))

(assert (=> d!712492 (= (contains!4989 thiss!42540 key!2246) lt!885310)))

(declare-fun b!2478140 () Bool)

(declare-fun Unit!42385 () Unit!42380)

(assert (=> b!2478140 (= e!1572554 Unit!42385)))

(declare-fun b!2478146 () Bool)

(declare-fun lt!885306 () Unit!42380)

(assert (=> b!2478146 (= e!1572555 lt!885306)))

(assert (=> b!2478146 (= lt!885309 call!151793)))

(declare-fun lemmaInGenericMapThenInLongMap!60 (ListLongMap!425 K!5330 Hashable!3208) Unit!42380)

(assert (=> b!2478146 (= lt!885306 (lemmaInGenericMapThenInLongMap!60 lt!885309 key!2246 (hashF!5146 thiss!42540)))))

(declare-fun res!1049008 () Bool)

(assert (=> b!2478146 (= res!1049008 call!151796)))

(assert (=> b!2478146 (=> (not res!1049008) (not e!1572556))))

(assert (=> b!2478146 e!1572556))

(assert (=> b!2478147 (= e!1572559 (forallContained!814 (toList!1482 (map!6066 (v!31279 (underlying!6804 thiss!42540)))) lambda!93517 (tuple2!28451 lt!885319 (apply!6853 (v!31279 (underlying!6804 thiss!42540)) lt!885319))))))

(declare-fun c!394293 () Bool)

(assert (=> b!2478147 (= c!394293 (not (contains!4991 (toList!1482 (map!6066 (v!31279 (underlying!6804 thiss!42540)))) (tuple2!28451 lt!885319 (apply!6853 (v!31279 (underlying!6804 thiss!42540)) lt!885319)))))))

(declare-fun lt!885313 () Unit!42380)

(assert (=> b!2478147 (= lt!885313 e!1572557)))

(declare-fun b!2478148 () Bool)

(declare-fun getPair!60 (List!29089 K!5330) Option!5731)

(assert (=> b!2478148 (= e!1572560 (isDefined!4553 (getPair!60 (apply!6853 (v!31279 (underlying!6804 thiss!42540)) lt!885319) key!2246)))))

(declare-fun bm!151792 () Bool)

(assert (=> bm!151792 (= call!151794 (getPair!60 call!151795 key!2246))))

(declare-fun b!2478149 () Bool)

(declare-fun Unit!42386 () Unit!42380)

(assert (=> b!2478149 (= e!1572559 Unit!42386)))

(declare-fun bm!151793 () Bool)

(assert (=> bm!151793 (= call!151793 (map!6066 (v!31279 (underlying!6804 thiss!42540))))))

(assert (= (and d!712492 c!394291) b!2478147))

(assert (= (and d!712492 (not c!394291)) b!2478149))

(assert (= (and b!2478147 c!394293) b!2478139))

(assert (= (and b!2478147 (not c!394293)) b!2478145))

(assert (= (and d!712492 c!394290) b!2478146))

(assert (= (and d!712492 (not c!394290)) b!2478143))

(assert (= (and b!2478146 res!1049008) b!2478144))

(assert (= (and b!2478143 res!1049006) b!2478142))

(assert (= (and b!2478143 c!394292) b!2478141))

(assert (= (and b!2478143 (not c!394292)) b!2478140))

(assert (= (or b!2478146 b!2478144 b!2478143 b!2478142) bm!151789))

(assert (= (or b!2478146 b!2478143 b!2478142 b!2478141) bm!151793))

(assert (= (or b!2478146 b!2478143) bm!151790))

(assert (= (or b!2478144 b!2478142) bm!151788))

(assert (= (or b!2478144 b!2478142) bm!151792))

(assert (= (or b!2478144 b!2478142) bm!151791))

(assert (= (and d!712492 res!1049007) b!2478148))

(declare-fun m!2845883 () Bool)

(assert (=> bm!151791 m!2845883))

(declare-fun m!2845885 () Bool)

(assert (=> bm!151792 m!2845885))

(declare-fun m!2845887 () Bool)

(assert (=> b!2478148 m!2845887))

(assert (=> b!2478148 m!2845887))

(declare-fun m!2845889 () Bool)

(assert (=> b!2478148 m!2845889))

(assert (=> b!2478148 m!2845889))

(declare-fun m!2845891 () Bool)

(assert (=> b!2478148 m!2845891))

(assert (=> bm!151789 m!2845847))

(declare-fun m!2845893 () Bool)

(assert (=> b!2478141 m!2845893))

(assert (=> b!2478141 m!2845893))

(declare-fun m!2845895 () Bool)

(assert (=> b!2478141 m!2845895))

(declare-fun m!2845897 () Bool)

(assert (=> b!2478141 m!2845897))

(declare-fun m!2845899 () Bool)

(assert (=> b!2478146 m!2845899))

(assert (=> b!2478147 m!2845839))

(assert (=> b!2478147 m!2845887))

(declare-fun m!2845901 () Bool)

(assert (=> b!2478147 m!2845901))

(declare-fun m!2845903 () Bool)

(assert (=> b!2478147 m!2845903))

(declare-fun m!2845905 () Bool)

(assert (=> bm!151788 m!2845905))

(assert (=> d!712492 m!2845845))

(declare-fun m!2845907 () Bool)

(assert (=> d!712492 m!2845907))

(assert (=> d!712492 m!2845881))

(declare-fun m!2845909 () Bool)

(assert (=> d!712492 m!2845909))

(assert (=> d!712492 m!2845839))

(assert (=> d!712492 m!2845881))

(assert (=> d!712492 m!2845837))

(assert (=> d!712492 m!2845845))

(declare-fun m!2845911 () Bool)

(assert (=> d!712492 m!2845911))

(assert (=> d!712492 m!2845847))

(declare-fun m!2845913 () Bool)

(assert (=> b!2478139 m!2845913))

(declare-fun m!2845915 () Bool)

(assert (=> b!2478139 m!2845915))

(declare-fun m!2845917 () Bool)

(assert (=> b!2478139 m!2845917))

(assert (=> b!2478139 m!2845839))

(assert (=> b!2478139 m!2845887))

(declare-fun m!2845919 () Bool)

(assert (=> b!2478139 m!2845919))

(declare-fun m!2845921 () Bool)

(assert (=> b!2478139 m!2845921))

(assert (=> b!2478139 m!2845915))

(declare-fun m!2845923 () Bool)

(assert (=> b!2478139 m!2845923))

(declare-fun m!2845925 () Bool)

(assert (=> b!2478139 m!2845925))

(assert (=> bm!151793 m!2845839))

(declare-fun m!2845927 () Bool)

(assert (=> bm!151790 m!2845927))

(assert (=> b!2478105 d!712492))

(declare-fun d!712494 () Bool)

(declare-fun valid!2511 (LongMapFixedSize!6596) Bool)

(assert (=> d!712494 (= (valid!2509 (v!31279 (underlying!6804 thiss!42540))) (valid!2511 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540))))))))

(declare-fun bs!467211 () Bool)

(assert (= bs!467211 d!712494))

(declare-fun m!2845929 () Bool)

(assert (=> bs!467211 m!2845929))

(assert (=> b!2478099 d!712494))

(declare-fun bs!467212 () Bool)

(declare-fun b!2478154 () Bool)

(assert (= bs!467212 (and b!2478154 b!2478100)))

(declare-fun lambda!93520 () Int)

(assert (=> bs!467212 (= lambda!93520 lambda!93514)))

(declare-fun bs!467213 () Bool)

(assert (= bs!467213 (and b!2478154 b!2478147)))

(assert (=> bs!467213 (= lambda!93520 lambda!93517)))

(declare-fun d!712496 () Bool)

(declare-fun res!1049013 () Bool)

(declare-fun e!1572563 () Bool)

(assert (=> d!712496 (=> (not res!1049013) (not e!1572563))))

(assert (=> d!712496 (= res!1049013 (valid!2509 (v!31279 (underlying!6804 thiss!42540))))))

(assert (=> d!712496 (= (valid!2510 thiss!42540) e!1572563)))

(declare-fun res!1049014 () Bool)

(assert (=> b!2478154 (=> (not res!1049014) (not e!1572563))))

(assert (=> b!2478154 (= res!1049014 (forall!5934 (toList!1482 (map!6066 (v!31279 (underlying!6804 thiss!42540)))) lambda!93520))))

(declare-fun b!2478155 () Bool)

(declare-fun allKeysSameHashInMap!134 (ListLongMap!425 Hashable!3208) Bool)

(assert (=> b!2478155 (= e!1572563 (allKeysSameHashInMap!134 (map!6066 (v!31279 (underlying!6804 thiss!42540))) (hashF!5146 thiss!42540)))))

(assert (= (and d!712496 res!1049013) b!2478154))

(assert (= (and b!2478154 res!1049014) b!2478155))

(assert (=> d!712496 m!2845835))

(assert (=> b!2478154 m!2845839))

(declare-fun m!2845931 () Bool)

(assert (=> b!2478154 m!2845931))

(assert (=> b!2478155 m!2845839))

(assert (=> b!2478155 m!2845839))

(declare-fun m!2845933 () Bool)

(assert (=> b!2478155 m!2845933))

(assert (=> b!2478104 d!712496))

(declare-fun d!712498 () Bool)

(assert (=> d!712498 (= (array_inv!3721 (_keys!3595 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540)))))) (bvsge (size!22606 (_keys!3595 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2478106 d!712498))

(declare-fun d!712500 () Bool)

(assert (=> d!712500 (= (array_inv!3722 (_values!3578 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540)))))) (bvsge (size!22605 (_values!3578 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2478106 d!712500))

(declare-fun tp_is_empty!12107 () Bool)

(declare-fun tp!792956 () Bool)

(declare-fun b!2478160 () Bool)

(declare-fun e!1572566 () Bool)

(assert (=> b!2478160 (= e!1572566 (and tp_is_empty!12105 tp_is_empty!12107 tp!792956))))

(assert (=> b!2478102 (= tp!792947 e!1572566)))

(assert (= (and b!2478102 ((_ is Cons!28989) mapDefault!15331)) b!2478160))

(declare-fun b!2478161 () Bool)

(declare-fun tp!792957 () Bool)

(declare-fun e!1572567 () Bool)

(assert (=> b!2478161 (= e!1572567 (and tp_is_empty!12105 tp_is_empty!12107 tp!792957))))

(assert (=> b!2478106 (= tp!792948 e!1572567)))

(assert (= (and b!2478106 ((_ is Cons!28989) (zeroValue!3556 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540))))))) b!2478161))

(declare-fun tp!792958 () Bool)

(declare-fun b!2478162 () Bool)

(declare-fun e!1572568 () Bool)

(assert (=> b!2478162 (= e!1572568 (and tp_is_empty!12105 tp_is_empty!12107 tp!792958))))

(assert (=> b!2478106 (= tp!792953 e!1572568)))

(assert (= (and b!2478106 ((_ is Cons!28989) (minValue!3556 (v!31278 (underlying!6803 (v!31279 (underlying!6804 thiss!42540))))))) b!2478162))

(declare-fun mapNonEmpty!15334 () Bool)

(declare-fun mapRes!15334 () Bool)

(declare-fun tp!792965 () Bool)

(declare-fun e!1572574 () Bool)

(assert (=> mapNonEmpty!15334 (= mapRes!15334 (and tp!792965 e!1572574))))

(declare-fun mapValue!15334 () List!29089)

(declare-fun mapKey!15334 () (_ BitVec 32))

(declare-fun mapRest!15334 () (Array (_ BitVec 32) List!29089))

(assert (=> mapNonEmpty!15334 (= mapRest!15331 (store mapRest!15334 mapKey!15334 mapValue!15334))))

(declare-fun condMapEmpty!15334 () Bool)

(declare-fun mapDefault!15334 () List!29089)

(assert (=> mapNonEmpty!15331 (= condMapEmpty!15334 (= mapRest!15331 ((as const (Array (_ BitVec 32) List!29089)) mapDefault!15334)))))

(declare-fun e!1572573 () Bool)

(assert (=> mapNonEmpty!15331 (= tp!792952 (and e!1572573 mapRes!15334))))

(declare-fun b!2478170 () Bool)

(declare-fun tp!792967 () Bool)

(assert (=> b!2478170 (= e!1572573 (and tp_is_empty!12105 tp_is_empty!12107 tp!792967))))

(declare-fun mapIsEmpty!15334 () Bool)

(assert (=> mapIsEmpty!15334 mapRes!15334))

(declare-fun tp!792966 () Bool)

(declare-fun b!2478169 () Bool)

(assert (=> b!2478169 (= e!1572574 (and tp_is_empty!12105 tp_is_empty!12107 tp!792966))))

(assert (= (and mapNonEmpty!15331 condMapEmpty!15334) mapIsEmpty!15334))

(assert (= (and mapNonEmpty!15331 (not condMapEmpty!15334)) mapNonEmpty!15334))

(assert (= (and mapNonEmpty!15334 ((_ is Cons!28989) mapValue!15334)) b!2478169))

(assert (= (and mapNonEmpty!15331 ((_ is Cons!28989) mapDefault!15334)) b!2478170))

(declare-fun m!2845935 () Bool)

(assert (=> mapNonEmpty!15334 m!2845935))

(declare-fun tp!792968 () Bool)

(declare-fun e!1572575 () Bool)

(declare-fun b!2478171 () Bool)

(assert (=> b!2478171 (= e!1572575 (and tp_is_empty!12105 tp_is_empty!12107 tp!792968))))

(assert (=> mapNonEmpty!15331 (= tp!792950 e!1572575)))

(assert (= (and mapNonEmpty!15331 ((_ is Cons!28989) mapValue!15331)) b!2478171))

(declare-fun b_lambda!76019 () Bool)

(assert (= b_lambda!76017 (or b!2478100 b_lambda!76019)))

(declare-fun bs!467214 () Bool)

(declare-fun d!712502 () Bool)

(assert (= bs!467214 (and d!712502 b!2478100)))

(declare-fun noDuplicateKeys!45 (List!29089) Bool)

(assert (=> bs!467214 (= (dynLambda!12437 lambda!93514 (tuple2!28451 lt!885252 (apply!6853 (v!31279 (underlying!6804 thiss!42540)) lt!885252))) (noDuplicateKeys!45 (_2!16766 (tuple2!28451 lt!885252 (apply!6853 (v!31279 (underlying!6804 thiss!42540)) lt!885252)))))))

(declare-fun m!2845937 () Bool)

(assert (=> bs!467214 m!2845937))

(assert (=> d!712486 d!712502))

(declare-fun b_lambda!76021 () Bool)

(assert (= b_lambda!76015 (or (and b!2478106 b_free!72049) b_lambda!76021)))

(check-sat (not b!2478141) (not b!2478170) (not b!2478147) (not b!2478146) (not b!2478148) (not bm!151791) (not b!2478171) (not d!712484) (not b!2478162) (not b!2478155) (not bm!151793) (not bm!151792) (not b!2478160) (not d!712492) (not b!2478161) (not d!712496) (not b!2478169) (not tb!140361) (not bm!151790) (not d!712490) (not bs!467214) (not b_lambda!76021) b_and!188285 (not bm!151789) (not b_next!72755) tp_is_empty!12107 (not d!712494) (not d!712486) (not b_next!72753) tp_is_empty!12105 (not d!712482) (not b!2478154) (not b!2478139) (not b!2478112) b_and!188283 (not d!712488) (not b!2478116) (not b_lambda!76019) (not mapNonEmpty!15334) (not bm!151788))
(check-sat b_and!188283 b_and!188285 (not b_next!72753) (not b_next!72755))
