; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413560 () Bool)

(assert start!413560)

(declare-fun b!4304819 () Bool)

(declare-fun b_free!128323 () Bool)

(declare-fun b_next!129027 () Bool)

(assert (=> b!4304819 (= b_free!128323 (not b_next!129027))))

(declare-fun tp!1322820 () Bool)

(declare-fun b_and!339721 () Bool)

(assert (=> b!4304819 (= tp!1322820 b_and!339721)))

(declare-fun b!4304823 () Bool)

(declare-fun b_free!128325 () Bool)

(declare-fun b_next!129029 () Bool)

(assert (=> b!4304823 (= b_free!128325 (not b_next!129029))))

(declare-fun tp!1322823 () Bool)

(declare-fun b_and!339723 () Bool)

(assert (=> b!4304823 (= tp!1322823 b_and!339723)))

(declare-fun b!4304818 () Bool)

(declare-fun e!2676537 () Bool)

(declare-fun tp!1322819 () Bool)

(declare-fun mapRes!20566 () Bool)

(assert (=> b!4304818 (= e!2676537 (and tp!1322819 mapRes!20566))))

(declare-fun condMapEmpty!20566 () Bool)

(declare-datatypes ((V!9426 0))(
  ( (V!9427 (val!15637 Int)) )
))
(declare-datatypes ((K!9224 0))(
  ( (K!9225 (val!15638 Int)) )
))
(declare-datatypes ((tuple2!46246 0))(
  ( (tuple2!46247 (_1!26402 K!9224) (_2!26402 V!9426)) )
))
(declare-datatypes ((List!48190 0))(
  ( (Nil!48066) (Cons!48066 (h!53493 tuple2!46246) (t!354973 List!48190)) )
))
(declare-datatypes ((array!16500 0))(
  ( (array!16501 (arr!7367 (Array (_ BitVec 32) (_ BitVec 64))) (size!35406 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4507 0))(
  ( (HashableExt!4506 (__x!29798 Int)) )
))
(declare-datatypes ((array!16502 0))(
  ( (array!16503 (arr!7368 (Array (_ BitVec 32) List!48190)) (size!35407 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9182 0))(
  ( (LongMapFixedSize!9183 (defaultEntry!4976 Int) (mask!13115 (_ BitVec 32)) (extraKeys!4840 (_ BitVec 32)) (zeroValue!4850 List!48190) (minValue!4850 List!48190) (_size!9225 (_ BitVec 32)) (_keys!4891 array!16500) (_values!4872 array!16502) (_vacant!4652 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18173 0))(
  ( (Cell!18174 (v!42112 LongMapFixedSize!9182)) )
))
(declare-datatypes ((MutLongMap!4591 0))(
  ( (LongMap!4591 (underlying!9411 Cell!18173)) (MutLongMapExt!4590 (__x!29799 Int)) )
))
(declare-datatypes ((Cell!18175 0))(
  ( (Cell!18176 (v!42113 MutLongMap!4591)) )
))
(declare-datatypes ((MutableMap!4497 0))(
  ( (MutableMapExt!4496 (__x!29800 Int)) (HashMap!4497 (underlying!9412 Cell!18175) (hashF!6581 Hashable!4507) (_size!9226 (_ BitVec 32)) (defaultValue!4668 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4497)

(declare-fun mapDefault!20566 () List!48190)

(assert (=> b!4304818 (= condMapEmpty!20566 (= (arr!7368 (_values!4872 (v!42112 (underlying!9411 (v!42113 (underlying!9412 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48190)) mapDefault!20566)))))

(declare-fun mapNonEmpty!20566 () Bool)

(declare-fun tp!1322825 () Bool)

(declare-fun tp!1322822 () Bool)

(assert (=> mapNonEmpty!20566 (= mapRes!20566 (and tp!1322825 tp!1322822))))

(declare-fun mapKey!20566 () (_ BitVec 32))

(declare-fun mapRest!20566 () (Array (_ BitVec 32) List!48190))

(declare-fun mapValue!20566 () List!48190)

(assert (=> mapNonEmpty!20566 (= (arr!7368 (_values!4872 (v!42112 (underlying!9411 (v!42113 (underlying!9412 thiss!42308)))))) (store mapRest!20566 mapKey!20566 mapValue!20566))))

(declare-fun tp!1322821 () Bool)

(declare-fun e!2676540 () Bool)

(declare-fun tp!1322824 () Bool)

(declare-fun array_inv!5287 (array!16500) Bool)

(declare-fun array_inv!5288 (array!16502) Bool)

(assert (=> b!4304819 (= e!2676540 (and tp!1322820 tp!1322821 tp!1322824 (array_inv!5287 (_keys!4891 (v!42112 (underlying!9411 (v!42113 (underlying!9412 thiss!42308)))))) (array_inv!5288 (_values!4872 (v!42112 (underlying!9411 (v!42113 (underlying!9412 thiss!42308)))))) e!2676537))))

(declare-fun b!4304820 () Bool)

(declare-fun e!2676541 () Bool)

(declare-fun e!2676538 () Bool)

(declare-fun lt!1526303 () MutLongMap!4591)

(get-info :version)

(assert (=> b!4304820 (= e!2676541 (and e!2676538 ((_ is LongMap!4591) lt!1526303)))))

(assert (=> b!4304820 (= lt!1526303 (v!42113 (underlying!9412 thiss!42308)))))

(declare-fun res!1764462 () Bool)

(declare-fun e!2676543 () Bool)

(assert (=> start!413560 (=> (not res!1764462) (not e!2676543))))

(assert (=> start!413560 (= res!1764462 ((_ is HashMap!4497) thiss!42308))))

(assert (=> start!413560 e!2676543))

(declare-fun e!2676535 () Bool)

(assert (=> start!413560 e!2676535))

(declare-fun tp_is_empty!23497 () Bool)

(assert (=> start!413560 tp_is_empty!23497))

(declare-fun b!4304821 () Bool)

(declare-fun e!2676539 () Bool)

(assert (=> b!4304821 (= e!2676543 e!2676539)))

(declare-fun res!1764463 () Bool)

(assert (=> b!4304821 (=> (not res!1764463) (not e!2676539))))

(declare-fun key!2048 () K!9224)

(declare-fun contains!9996 (MutableMap!4497 K!9224) Bool)

(assert (=> b!4304821 (= res!1764463 (not (contains!9996 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!46248 0))(
  ( (tuple2!46249 (_1!26403 (_ BitVec 64)) (_2!26403 List!48190)) )
))
(declare-datatypes ((List!48191 0))(
  ( (Nil!48067) (Cons!48067 (h!53494 tuple2!46248) (t!354974 List!48191)) )
))
(declare-datatypes ((ListLongMap!901 0))(
  ( (ListLongMap!902 (toList!2292 List!48191)) )
))
(declare-fun lt!1526302 () ListLongMap!901)

(declare-fun map!10035 (MutLongMap!4591) ListLongMap!901)

(assert (=> b!4304821 (= lt!1526302 (map!10035 (v!42113 (underlying!9412 thiss!42308))))))

(declare-datatypes ((ListMap!1577 0))(
  ( (ListMap!1578 (toList!2293 List!48190)) )
))
(declare-fun lt!1526301 () ListMap!1577)

(declare-fun map!10036 (MutableMap!4497) ListMap!1577)

(assert (=> b!4304821 (= lt!1526301 (map!10036 thiss!42308))))

(declare-fun b!4304822 () Bool)

(declare-fun res!1764460 () Bool)

(assert (=> b!4304822 (=> (not res!1764460) (not e!2676539))))

(assert (=> b!4304822 (= res!1764460 ((_ is LongMap!4591) (v!42113 (underlying!9412 thiss!42308))))))

(assert (=> b!4304823 (= e!2676535 (and e!2676541 tp!1322823))))

(declare-fun mapIsEmpty!20566 () Bool)

(assert (=> mapIsEmpty!20566 mapRes!20566))

(declare-fun b!4304824 () Bool)

(declare-fun res!1764461 () Bool)

(assert (=> b!4304824 (=> (not res!1764461) (not e!2676543))))

(declare-fun valid!3575 (MutableMap!4497) Bool)

(assert (=> b!4304824 (= res!1764461 (valid!3575 thiss!42308))))

(declare-fun b!4304825 () Bool)

(declare-fun e!2676542 () Bool)

(assert (=> b!4304825 (= e!2676542 e!2676540)))

(declare-fun b!4304826 () Bool)

(declare-fun valid!3576 (MutLongMap!4591) Bool)

(assert (=> b!4304826 (= e!2676539 (not (valid!3576 (v!42113 (underlying!9412 thiss!42308)))))))

(declare-fun b!4304827 () Bool)

(assert (=> b!4304827 (= e!2676538 e!2676542)))

(assert (= (and start!413560 res!1764462) b!4304824))

(assert (= (and b!4304824 res!1764461) b!4304821))

(assert (= (and b!4304821 res!1764463) b!4304822))

(assert (= (and b!4304822 res!1764460) b!4304826))

(assert (= (and b!4304818 condMapEmpty!20566) mapIsEmpty!20566))

(assert (= (and b!4304818 (not condMapEmpty!20566)) mapNonEmpty!20566))

(assert (= b!4304819 b!4304818))

(assert (= b!4304825 b!4304819))

(assert (= b!4304827 b!4304825))

(assert (= (and b!4304820 ((_ is LongMap!4591) (v!42113 (underlying!9412 thiss!42308)))) b!4304827))

(assert (= b!4304823 b!4304820))

(assert (= (and start!413560 ((_ is HashMap!4497) thiss!42308)) b!4304823))

(declare-fun m!4897765 () Bool)

(assert (=> mapNonEmpty!20566 m!4897765))

(declare-fun m!4897767 () Bool)

(assert (=> b!4304826 m!4897767))

(declare-fun m!4897769 () Bool)

(assert (=> b!4304821 m!4897769))

(declare-fun m!4897771 () Bool)

(assert (=> b!4304821 m!4897771))

(declare-fun m!4897773 () Bool)

(assert (=> b!4304821 m!4897773))

(declare-fun m!4897775 () Bool)

(assert (=> b!4304824 m!4897775))

(declare-fun m!4897777 () Bool)

(assert (=> b!4304819 m!4897777))

(declare-fun m!4897779 () Bool)

(assert (=> b!4304819 m!4897779))

(check-sat (not mapNonEmpty!20566) (not b!4304824) (not b!4304819) b_and!339723 (not b!4304818) (not b!4304821) (not b!4304826) b_and!339721 tp_is_empty!23497 (not b_next!129029) (not b_next!129027))
(check-sat b_and!339721 b_and!339723 (not b_next!129029) (not b_next!129027))
(get-model)

(declare-fun b!4304850 () Bool)

(declare-datatypes ((Unit!67077 0))(
  ( (Unit!67078) )
))
(declare-fun e!2676560 () Unit!67077)

(declare-fun Unit!67079 () Unit!67077)

(assert (=> b!4304850 (= e!2676560 Unit!67079)))

(declare-fun b!4304851 () Bool)

(declare-fun e!2676561 () Unit!67077)

(declare-fun Unit!67080 () Unit!67077)

(assert (=> b!4304851 (= e!2676561 Unit!67080)))

(declare-fun bm!296859 () Bool)

(declare-fun call!296869 () ListLongMap!901)

(assert (=> bm!296859 (= call!296869 (map!10035 (v!42113 (underlying!9412 thiss!42308))))))

(declare-fun bm!296860 () Bool)

(declare-fun call!296865 () (_ BitVec 64))

(declare-fun hash!916 (Hashable!4507 K!9224) (_ BitVec 64))

(assert (=> bm!296860 (= call!296865 (hash!916 (hashF!6581 thiss!42308) key!2048))))

(declare-fun b!4304852 () Bool)

(declare-fun e!2676563 () Bool)

(declare-fun call!296866 () Bool)

(assert (=> b!4304852 (= e!2676563 call!296866)))

(declare-fun b!4304853 () Bool)

(declare-fun e!2676564 () Bool)

(assert (=> b!4304853 (= e!2676564 call!296866)))

(declare-fun b!4304855 () Bool)

(assert (=> b!4304855 false))

(declare-fun lt!1526347 () Unit!67077)

(declare-fun lt!1526344 () Unit!67077)

(assert (=> b!4304855 (= lt!1526347 lt!1526344)))

(declare-fun lt!1526349 () List!48191)

(declare-fun lt!1526360 () (_ BitVec 64))

(declare-fun lt!1526356 () List!48190)

(declare-fun contains!9997 (List!48191 tuple2!46248) Bool)

(assert (=> b!4304855 (contains!9997 lt!1526349 (tuple2!46249 lt!1526360 lt!1526356))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!131 (List!48191 (_ BitVec 64) List!48190) Unit!67077)

(assert (=> b!4304855 (= lt!1526344 (lemmaGetValueByKeyImpliesContainsTuple!131 lt!1526349 lt!1526360 lt!1526356))))

(declare-fun apply!10942 (MutLongMap!4591 (_ BitVec 64)) List!48190)

(assert (=> b!4304855 (= lt!1526356 (apply!10942 (v!42113 (underlying!9412 thiss!42308)) lt!1526360))))

(assert (=> b!4304855 (= lt!1526349 (toList!2292 (map!10035 (v!42113 (underlying!9412 thiss!42308)))))))

(declare-fun lt!1526357 () Unit!67077)

(declare-fun lt!1526350 () Unit!67077)

(assert (=> b!4304855 (= lt!1526357 lt!1526350)))

(declare-fun lt!1526351 () List!48191)

(declare-datatypes ((Option!10195 0))(
  ( (None!10194) (Some!10194 (v!42114 List!48190)) )
))
(declare-fun isDefined!7503 (Option!10195) Bool)

(declare-fun getValueByKey!234 (List!48191 (_ BitVec 64)) Option!10195)

(assert (=> b!4304855 (isDefined!7503 (getValueByKey!234 lt!1526351 lt!1526360))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!160 (List!48191 (_ BitVec 64)) Unit!67077)

(assert (=> b!4304855 (= lt!1526350 (lemmaContainsKeyImpliesGetValueByKeyDefined!160 lt!1526351 lt!1526360))))

(assert (=> b!4304855 (= lt!1526351 (toList!2292 (map!10035 (v!42113 (underlying!9412 thiss!42308)))))))

(declare-fun lt!1526352 () Unit!67077)

(declare-fun lt!1526359 () Unit!67077)

(assert (=> b!4304855 (= lt!1526352 lt!1526359)))

(declare-fun lt!1526361 () List!48191)

(declare-fun containsKey!281 (List!48191 (_ BitVec 64)) Bool)

(assert (=> b!4304855 (containsKey!281 lt!1526361 lt!1526360)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!121 (List!48191 (_ BitVec 64)) Unit!67077)

(assert (=> b!4304855 (= lt!1526359 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!121 lt!1526361 lt!1526360))))

(assert (=> b!4304855 (= lt!1526361 (toList!2292 (map!10035 (v!42113 (underlying!9412 thiss!42308)))))))

(declare-fun Unit!67081 () Unit!67077)

(assert (=> b!4304855 (= e!2676560 Unit!67081)))

(declare-fun c!731998 () Bool)

(declare-fun call!296867 () Bool)

(declare-fun lt!1526355 () ListLongMap!901)

(declare-fun bm!296861 () Bool)

(declare-fun contains!9998 (ListLongMap!901 (_ BitVec 64)) Bool)

(assert (=> bm!296861 (= call!296867 (contains!9998 (ite c!731998 lt!1526355 call!296869) call!296865))))

(declare-fun b!4304856 () Bool)

(declare-fun e!2676558 () Unit!67077)

(declare-fun Unit!67082 () Unit!67077)

(assert (=> b!4304856 (= e!2676558 Unit!67082)))

(declare-fun call!296868 () List!48190)

(declare-fun bm!296862 () Bool)

(declare-fun apply!10943 (ListLongMap!901 (_ BitVec 64)) List!48190)

(assert (=> bm!296862 (= call!296868 (apply!10943 (ite c!731998 lt!1526355 call!296869) call!296865))))

(declare-fun b!4304857 () Bool)

(declare-fun e!2676559 () Unit!67077)

(assert (=> b!4304857 (= e!2676559 e!2676558)))

(declare-fun res!1764472 () Bool)

(assert (=> b!4304857 (= res!1764472 call!296867)))

(assert (=> b!4304857 (=> (not res!1764472) (not e!2676563))))

(declare-fun c!731999 () Bool)

(assert (=> b!4304857 (= c!731999 e!2676563)))

(declare-fun e!2676562 () Bool)

(declare-fun b!4304858 () Bool)

(declare-datatypes ((Option!10196 0))(
  ( (None!10195) (Some!10195 (v!42115 tuple2!46246)) )
))
(declare-fun isDefined!7504 (Option!10196) Bool)

(declare-fun getPair!120 (List!48190 K!9224) Option!10196)

(assert (=> b!4304858 (= e!2676562 (isDefined!7504 (getPair!120 (apply!10942 (v!42113 (underlying!9412 thiss!42308)) lt!1526360) key!2048)))))

(declare-fun bm!296863 () Bool)

(declare-fun call!296864 () Option!10196)

(assert (=> bm!296863 (= call!296866 (isDefined!7504 call!296864))))

(declare-fun lambda!132405 () Int)

(declare-fun b!4304859 () Bool)

(declare-fun forallContained!1487 (List!48191 Int tuple2!46248) Unit!67077)

(assert (=> b!4304859 (= e!2676561 (forallContained!1487 (toList!2292 (map!10035 (v!42113 (underlying!9412 thiss!42308)))) lambda!132405 (tuple2!46249 lt!1526360 (apply!10942 (v!42113 (underlying!9412 thiss!42308)) lt!1526360))))))

(declare-fun c!731996 () Bool)

(assert (=> b!4304859 (= c!731996 (not (contains!9997 (toList!2292 (map!10035 (v!42113 (underlying!9412 thiss!42308)))) (tuple2!46249 lt!1526360 (apply!10942 (v!42113 (underlying!9412 thiss!42308)) lt!1526360)))))))

(declare-fun lt!1526358 () Unit!67077)

(assert (=> b!4304859 (= lt!1526358 e!2676560)))

(declare-fun d!1267342 () Bool)

(declare-fun lt!1526346 () Bool)

(declare-fun contains!9999 (ListMap!1577 K!9224) Bool)

(assert (=> d!1267342 (= lt!1526346 (contains!9999 (map!10036 thiss!42308) key!2048))))

(assert (=> d!1267342 (= lt!1526346 e!2676562)))

(declare-fun res!1764470 () Bool)

(assert (=> d!1267342 (=> (not res!1764470) (not e!2676562))))

(declare-fun contains!10000 (MutLongMap!4591 (_ BitVec 64)) Bool)

(assert (=> d!1267342 (= res!1764470 (contains!10000 (v!42113 (underlying!9412 thiss!42308)) lt!1526360))))

(declare-fun lt!1526348 () Unit!67077)

(assert (=> d!1267342 (= lt!1526348 e!2676559)))

(declare-fun extractMap!298 (List!48191) ListMap!1577)

(assert (=> d!1267342 (= c!731998 (contains!9999 (extractMap!298 (toList!2292 (map!10035 (v!42113 (underlying!9412 thiss!42308))))) key!2048))))

(declare-fun lt!1526354 () Unit!67077)

(assert (=> d!1267342 (= lt!1526354 e!2676561)))

(declare-fun c!731997 () Bool)

(assert (=> d!1267342 (= c!731997 (contains!10000 (v!42113 (underlying!9412 thiss!42308)) lt!1526360))))

(assert (=> d!1267342 (= lt!1526360 (hash!916 (hashF!6581 thiss!42308) key!2048))))

(assert (=> d!1267342 (valid!3575 thiss!42308)))

(assert (=> d!1267342 (= (contains!9996 thiss!42308 key!2048) lt!1526346)))

(declare-fun b!4304854 () Bool)

(assert (=> b!4304854 false))

(declare-fun lt!1526345 () Unit!67077)

(declare-fun lt!1526362 () Unit!67077)

(assert (=> b!4304854 (= lt!1526345 lt!1526362)))

(declare-fun lt!1526353 () ListLongMap!901)

(assert (=> b!4304854 (contains!9999 (extractMap!298 (toList!2292 lt!1526353)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!120 (ListLongMap!901 K!9224 Hashable!4507) Unit!67077)

(assert (=> b!4304854 (= lt!1526362 (lemmaInLongMapThenInGenericMap!120 lt!1526353 key!2048 (hashF!6581 thiss!42308)))))

(assert (=> b!4304854 (= lt!1526353 call!296869)))

(declare-fun Unit!67083 () Unit!67077)

(assert (=> b!4304854 (= e!2676558 Unit!67083)))

(declare-fun bm!296864 () Bool)

(assert (=> bm!296864 (= call!296864 (getPair!120 call!296868 key!2048))))

(declare-fun b!4304860 () Bool)

(declare-fun lt!1526363 () Unit!67077)

(assert (=> b!4304860 (= e!2676559 lt!1526363)))

(assert (=> b!4304860 (= lt!1526355 call!296869)))

(declare-fun lemmaInGenericMapThenInLongMap!120 (ListLongMap!901 K!9224 Hashable!4507) Unit!67077)

(assert (=> b!4304860 (= lt!1526363 (lemmaInGenericMapThenInLongMap!120 lt!1526355 key!2048 (hashF!6581 thiss!42308)))))

(declare-fun res!1764471 () Bool)

(assert (=> b!4304860 (= res!1764471 call!296867)))

(assert (=> b!4304860 (=> (not res!1764471) (not e!2676564))))

(assert (=> b!4304860 e!2676564))

(assert (= (and d!1267342 c!731997) b!4304859))

(assert (= (and d!1267342 (not c!731997)) b!4304851))

(assert (= (and b!4304859 c!731996) b!4304855))

(assert (= (and b!4304859 (not c!731996)) b!4304850))

(assert (= (and d!1267342 c!731998) b!4304860))

(assert (= (and d!1267342 (not c!731998)) b!4304857))

(assert (= (and b!4304860 res!1764471) b!4304853))

(assert (= (and b!4304857 res!1764472) b!4304852))

(assert (= (and b!4304857 c!731999) b!4304854))

(assert (= (and b!4304857 (not c!731999)) b!4304856))

(assert (= (or b!4304860 b!4304857 b!4304852 b!4304854) bm!296859))

(assert (= (or b!4304860 b!4304853 b!4304857 b!4304852) bm!296860))

(assert (= (or b!4304860 b!4304857) bm!296861))

(assert (= (or b!4304853 b!4304852) bm!296862))

(assert (= (or b!4304853 b!4304852) bm!296864))

(assert (= (or b!4304853 b!4304852) bm!296863))

(assert (= (and d!1267342 res!1764470) b!4304858))

(declare-fun m!4897781 () Bool)

(assert (=> b!4304860 m!4897781))

(assert (=> b!4304859 m!4897771))

(declare-fun m!4897783 () Bool)

(assert (=> b!4304859 m!4897783))

(declare-fun m!4897785 () Bool)

(assert (=> b!4304859 m!4897785))

(declare-fun m!4897787 () Bool)

(assert (=> b!4304859 m!4897787))

(declare-fun m!4897789 () Bool)

(assert (=> b!4304855 m!4897789))

(declare-fun m!4897791 () Bool)

(assert (=> b!4304855 m!4897791))

(declare-fun m!4897793 () Bool)

(assert (=> b!4304855 m!4897793))

(declare-fun m!4897795 () Bool)

(assert (=> b!4304855 m!4897795))

(declare-fun m!4897797 () Bool)

(assert (=> b!4304855 m!4897797))

(assert (=> b!4304855 m!4897783))

(declare-fun m!4897799 () Bool)

(assert (=> b!4304855 m!4897799))

(assert (=> b!4304855 m!4897795))

(declare-fun m!4897801 () Bool)

(assert (=> b!4304855 m!4897801))

(assert (=> b!4304855 m!4897771))

(declare-fun m!4897803 () Bool)

(assert (=> bm!296861 m!4897803))

(declare-fun m!4897805 () Bool)

(assert (=> bm!296863 m!4897805))

(declare-fun m!4897807 () Bool)

(assert (=> b!4304854 m!4897807))

(assert (=> b!4304854 m!4897807))

(declare-fun m!4897809 () Bool)

(assert (=> b!4304854 m!4897809))

(declare-fun m!4897811 () Bool)

(assert (=> b!4304854 m!4897811))

(assert (=> bm!296859 m!4897771))

(declare-fun m!4897813 () Bool)

(assert (=> bm!296860 m!4897813))

(assert (=> d!1267342 m!4897775))

(declare-fun m!4897815 () Bool)

(assert (=> d!1267342 m!4897815))

(assert (=> d!1267342 m!4897773))

(assert (=> d!1267342 m!4897813))

(assert (=> d!1267342 m!4897771))

(declare-fun m!4897817 () Bool)

(assert (=> d!1267342 m!4897817))

(declare-fun m!4897819 () Bool)

(assert (=> d!1267342 m!4897819))

(assert (=> d!1267342 m!4897817))

(assert (=> d!1267342 m!4897773))

(declare-fun m!4897821 () Bool)

(assert (=> d!1267342 m!4897821))

(assert (=> b!4304858 m!4897783))

(assert (=> b!4304858 m!4897783))

(declare-fun m!4897823 () Bool)

(assert (=> b!4304858 m!4897823))

(assert (=> b!4304858 m!4897823))

(declare-fun m!4897825 () Bool)

(assert (=> b!4304858 m!4897825))

(declare-fun m!4897827 () Bool)

(assert (=> bm!296862 m!4897827))

(declare-fun m!4897829 () Bool)

(assert (=> bm!296864 m!4897829))

(assert (=> b!4304821 d!1267342))

(declare-fun d!1267344 () Bool)

(declare-fun map!10037 (LongMapFixedSize!9182) ListLongMap!901)

(assert (=> d!1267344 (= (map!10035 (v!42113 (underlying!9412 thiss!42308))) (map!10037 (v!42112 (underlying!9411 (v!42113 (underlying!9412 thiss!42308))))))))

(declare-fun bs!604474 () Bool)

(assert (= bs!604474 d!1267344))

(declare-fun m!4897831 () Bool)

(assert (=> bs!604474 m!4897831))

(assert (=> b!4304821 d!1267344))

(declare-fun d!1267346 () Bool)

(declare-fun lt!1526366 () ListMap!1577)

(declare-fun invariantList!559 (List!48190) Bool)

(assert (=> d!1267346 (invariantList!559 (toList!2293 lt!1526366))))

(assert (=> d!1267346 (= lt!1526366 (extractMap!298 (toList!2292 (map!10035 (v!42113 (underlying!9412 thiss!42308))))))))

(assert (=> d!1267346 (valid!3575 thiss!42308)))

(assert (=> d!1267346 (= (map!10036 thiss!42308) lt!1526366)))

(declare-fun bs!604475 () Bool)

(assert (= bs!604475 d!1267346))

(declare-fun m!4897833 () Bool)

(assert (=> bs!604475 m!4897833))

(assert (=> bs!604475 m!4897771))

(assert (=> bs!604475 m!4897817))

(assert (=> bs!604475 m!4897775))

(assert (=> b!4304821 d!1267346))

(declare-fun d!1267348 () Bool)

(declare-fun valid!3577 (LongMapFixedSize!9182) Bool)

(assert (=> d!1267348 (= (valid!3576 (v!42113 (underlying!9412 thiss!42308))) (valid!3577 (v!42112 (underlying!9411 (v!42113 (underlying!9412 thiss!42308))))))))

(declare-fun bs!604476 () Bool)

(assert (= bs!604476 d!1267348))

(declare-fun m!4897835 () Bool)

(assert (=> bs!604476 m!4897835))

(assert (=> b!4304826 d!1267348))

(declare-fun bs!604477 () Bool)

(declare-fun b!4304865 () Bool)

(assert (= bs!604477 (and b!4304865 b!4304859)))

(declare-fun lambda!132408 () Int)

(assert (=> bs!604477 (= lambda!132408 lambda!132405)))

(declare-fun d!1267350 () Bool)

(declare-fun res!1764477 () Bool)

(declare-fun e!2676567 () Bool)

(assert (=> d!1267350 (=> (not res!1764477) (not e!2676567))))

(assert (=> d!1267350 (= res!1764477 (valid!3576 (v!42113 (underlying!9412 thiss!42308))))))

(assert (=> d!1267350 (= (valid!3575 thiss!42308) e!2676567)))

(declare-fun res!1764478 () Bool)

(assert (=> b!4304865 (=> (not res!1764478) (not e!2676567))))

(declare-fun forall!8683 (List!48191 Int) Bool)

(assert (=> b!4304865 (= res!1764478 (forall!8683 (toList!2292 (map!10035 (v!42113 (underlying!9412 thiss!42308)))) lambda!132408))))

(declare-fun b!4304866 () Bool)

(declare-fun allKeysSameHashInMap!302 (ListLongMap!901 Hashable!4507) Bool)

(assert (=> b!4304866 (= e!2676567 (allKeysSameHashInMap!302 (map!10035 (v!42113 (underlying!9412 thiss!42308))) (hashF!6581 thiss!42308)))))

(assert (= (and d!1267350 res!1764477) b!4304865))

(assert (= (and b!4304865 res!1764478) b!4304866))

(assert (=> d!1267350 m!4897767))

(assert (=> b!4304865 m!4897771))

(declare-fun m!4897837 () Bool)

(assert (=> b!4304865 m!4897837))

(assert (=> b!4304866 m!4897771))

(assert (=> b!4304866 m!4897771))

(declare-fun m!4897839 () Bool)

(assert (=> b!4304866 m!4897839))

(assert (=> b!4304824 d!1267350))

(declare-fun d!1267352 () Bool)

(assert (=> d!1267352 (= (array_inv!5287 (_keys!4891 (v!42112 (underlying!9411 (v!42113 (underlying!9412 thiss!42308)))))) (bvsge (size!35406 (_keys!4891 (v!42112 (underlying!9411 (v!42113 (underlying!9412 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4304819 d!1267352))

(declare-fun d!1267354 () Bool)

(assert (=> d!1267354 (= (array_inv!5288 (_values!4872 (v!42112 (underlying!9411 (v!42113 (underlying!9412 thiss!42308)))))) (bvsge (size!35407 (_values!4872 (v!42112 (underlying!9411 (v!42113 (underlying!9412 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4304819 d!1267354))

(declare-fun tp!1322828 () Bool)

(declare-fun b!4304871 () Bool)

(declare-fun tp_is_empty!23499 () Bool)

(declare-fun e!2676570 () Bool)

(assert (=> b!4304871 (= e!2676570 (and tp_is_empty!23497 tp_is_empty!23499 tp!1322828))))

(assert (=> b!4304818 (= tp!1322819 e!2676570)))

(assert (= (and b!4304818 ((_ is Cons!48066) mapDefault!20566)) b!4304871))

(declare-fun tp!1322835 () Bool)

(declare-fun b!4304879 () Bool)

(declare-fun e!2676575 () Bool)

(assert (=> b!4304879 (= e!2676575 (and tp_is_empty!23497 tp_is_empty!23499 tp!1322835))))

(declare-fun condMapEmpty!20569 () Bool)

(declare-fun mapDefault!20569 () List!48190)

(assert (=> mapNonEmpty!20566 (= condMapEmpty!20569 (= mapRest!20566 ((as const (Array (_ BitVec 32) List!48190)) mapDefault!20569)))))

(declare-fun mapRes!20569 () Bool)

(assert (=> mapNonEmpty!20566 (= tp!1322825 (and e!2676575 mapRes!20569))))

(declare-fun mapNonEmpty!20569 () Bool)

(declare-fun tp!1322836 () Bool)

(declare-fun e!2676576 () Bool)

(assert (=> mapNonEmpty!20569 (= mapRes!20569 (and tp!1322836 e!2676576))))

(declare-fun mapValue!20569 () List!48190)

(declare-fun mapRest!20569 () (Array (_ BitVec 32) List!48190))

(declare-fun mapKey!20569 () (_ BitVec 32))

(assert (=> mapNonEmpty!20569 (= mapRest!20566 (store mapRest!20569 mapKey!20569 mapValue!20569))))

(declare-fun tp!1322837 () Bool)

(declare-fun b!4304878 () Bool)

(assert (=> b!4304878 (= e!2676576 (and tp_is_empty!23497 tp_is_empty!23499 tp!1322837))))

(declare-fun mapIsEmpty!20569 () Bool)

(assert (=> mapIsEmpty!20569 mapRes!20569))

(assert (= (and mapNonEmpty!20566 condMapEmpty!20569) mapIsEmpty!20569))

(assert (= (and mapNonEmpty!20566 (not condMapEmpty!20569)) mapNonEmpty!20569))

(assert (= (and mapNonEmpty!20569 ((_ is Cons!48066) mapValue!20569)) b!4304878))

(assert (= (and mapNonEmpty!20566 ((_ is Cons!48066) mapDefault!20569)) b!4304879))

(declare-fun m!4897841 () Bool)

(assert (=> mapNonEmpty!20569 m!4897841))

(declare-fun e!2676577 () Bool)

(declare-fun b!4304880 () Bool)

(declare-fun tp!1322838 () Bool)

(assert (=> b!4304880 (= e!2676577 (and tp_is_empty!23497 tp_is_empty!23499 tp!1322838))))

(assert (=> mapNonEmpty!20566 (= tp!1322822 e!2676577)))

(assert (= (and mapNonEmpty!20566 ((_ is Cons!48066) mapValue!20566)) b!4304880))

(declare-fun tp!1322839 () Bool)

(declare-fun b!4304881 () Bool)

(declare-fun e!2676578 () Bool)

(assert (=> b!4304881 (= e!2676578 (and tp_is_empty!23497 tp_is_empty!23499 tp!1322839))))

(assert (=> b!4304819 (= tp!1322821 e!2676578)))

(assert (= (and b!4304819 ((_ is Cons!48066) (zeroValue!4850 (v!42112 (underlying!9411 (v!42113 (underlying!9412 thiss!42308))))))) b!4304881))

(declare-fun tp!1322840 () Bool)

(declare-fun e!2676579 () Bool)

(declare-fun b!4304882 () Bool)

(assert (=> b!4304882 (= e!2676579 (and tp_is_empty!23497 tp_is_empty!23499 tp!1322840))))

(assert (=> b!4304819 (= tp!1322824 e!2676579)))

(assert (= (and b!4304819 ((_ is Cons!48066) (minValue!4850 (v!42112 (underlying!9411 (v!42113 (underlying!9412 thiss!42308))))))) b!4304882))

(check-sat (not d!1267342) (not b!4304859) (not b!4304871) (not bm!296862) (not b!4304854) (not b!4304866) (not d!1267350) (not d!1267344) (not bm!296859) (not bm!296863) tp_is_empty!23497 (not b_next!129029) tp_is_empty!23499 (not bm!296860) (not b!4304878) (not b!4304882) (not b!4304881) b_and!339723 (not b!4304860) (not b!4304865) (not bm!296861) (not d!1267346) b_and!339721 (not b!4304880) (not b!4304855) (not b!4304879) (not mapNonEmpty!20569) (not b!4304858) (not b_next!129027) (not d!1267348) (not bm!296864))
(check-sat b_and!339721 b_and!339723 (not b_next!129029) (not b_next!129027))
