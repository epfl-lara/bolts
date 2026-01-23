; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461812 () Bool)

(assert start!461812)

(declare-fun b!4616012 () Bool)

(declare-fun e!2879305 () Bool)

(declare-fun e!2879310 () Bool)

(assert (=> b!4616012 (= e!2879305 (not e!2879310))))

(declare-fun res!1934036 () Bool)

(assert (=> b!4616012 (=> res!1934036 e!2879310)))

(declare-datatypes ((K!12760 0))(
  ( (K!12761 (val!18479 Int)) )
))
(declare-datatypes ((V!13006 0))(
  ( (V!13007 (val!18480 Int)) )
))
(declare-datatypes ((tuple2!52222 0))(
  ( (tuple2!52223 (_1!29405 K!12760) (_2!29405 V!13006)) )
))
(declare-datatypes ((List!51499 0))(
  ( (Nil!51375) (Cons!51375 (h!57389 tuple2!52222) (t!358505 List!51499)) )
))
(declare-fun oldBucket!40 () List!51499)

(declare-fun key!4968 () K!12760)

(get-info :version)

(assert (=> b!4616012 (= res!1934036 (or (not ((_ is Cons!51375) oldBucket!40)) (not (= (_1!29405 (h!57389 oldBucket!40)) key!4968))))))

(declare-fun e!2879308 () Bool)

(assert (=> b!4616012 e!2879308))

(declare-fun res!1934024 () Bool)

(assert (=> b!4616012 (=> (not res!1934024) (not e!2879308))))

(declare-datatypes ((ListMap!4157 0))(
  ( (ListMap!4158 (toList!4853 List!51499)) )
))
(declare-fun lt!1771570 () ListMap!4157)

(declare-fun lt!1771576 () ListMap!4157)

(declare-fun addToMapMapFromBucket!905 (List!51499 ListMap!4157) ListMap!4157)

(assert (=> b!4616012 (= res!1934024 (= lt!1771576 (addToMapMapFromBucket!905 oldBucket!40 lt!1771570)))))

(declare-datatypes ((tuple2!52224 0))(
  ( (tuple2!52225 (_1!29406 (_ BitVec 64)) (_2!29406 List!51499)) )
))
(declare-datatypes ((List!51500 0))(
  ( (Nil!51376) (Cons!51376 (h!57390 tuple2!52224) (t!358506 List!51500)) )
))
(declare-fun extractMap!1500 (List!51500) ListMap!4157)

(assert (=> b!4616012 (= lt!1771570 (extractMap!1500 Nil!51376))))

(assert (=> b!4616012 true))

(declare-fun b!4616013 () Bool)

(declare-fun res!1934034 () Bool)

(assert (=> b!4616013 (=> (not res!1934034) (not e!2879305))))

(declare-datatypes ((Hashable!5841 0))(
  ( (HashableExt!5840 (__x!31544 Int)) )
))
(declare-fun hashF!1389 () Hashable!5841)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun hash!3399 (Hashable!5841 K!12760) (_ BitVec 64))

(assert (=> b!4616013 (= res!1934034 (= (hash!3399 hashF!1389 key!4968) hash!414))))

(declare-fun b!4616014 () Bool)

(declare-fun e!2879302 () Bool)

(assert (=> b!4616014 (= e!2879310 e!2879302)))

(declare-fun res!1934023 () Bool)

(assert (=> b!4616014 (=> res!1934023 e!2879302)))

(declare-fun lt!1771579 () List!51499)

(declare-fun newBucket!224 () List!51499)

(assert (=> b!4616014 (= res!1934023 (not (= lt!1771579 newBucket!224)))))

(declare-fun tail!8091 (List!51499) List!51499)

(assert (=> b!4616014 (= lt!1771579 (tail!8091 oldBucket!40))))

(declare-fun b!4616015 () Bool)

(declare-fun e!2879300 () Bool)

(declare-fun e!2879301 () Bool)

(assert (=> b!4616015 (= e!2879300 e!2879301)))

(declare-fun res!1934035 () Bool)

(assert (=> b!4616015 (=> res!1934035 e!2879301)))

(declare-fun lt!1771569 () ListMap!4157)

(assert (=> b!4616015 (= res!1934035 (not (= lt!1771569 (addToMapMapFromBucket!905 newBucket!224 (ListMap!4158 Nil!51375)))))))

(assert (=> b!4616015 (= lt!1771569 (addToMapMapFromBucket!905 lt!1771579 (ListMap!4158 Nil!51375)))))

(declare-fun res!1934022 () Bool)

(declare-fun e!2879312 () Bool)

(assert (=> start!461812 (=> (not res!1934022) (not e!2879312))))

(declare-fun noDuplicateKeys!1444 (List!51499) Bool)

(assert (=> start!461812 (= res!1934022 (noDuplicateKeys!1444 oldBucket!40))))

(assert (=> start!461812 e!2879312))

(assert (=> start!461812 true))

(declare-fun e!2879311 () Bool)

(assert (=> start!461812 e!2879311))

(declare-fun tp_is_empty!29069 () Bool)

(assert (=> start!461812 tp_is_empty!29069))

(declare-fun e!2879304 () Bool)

(assert (=> start!461812 e!2879304))

(declare-fun b!4616016 () Bool)

(declare-fun res!1934029 () Bool)

(declare-fun e!2879307 () Bool)

(assert (=> b!4616016 (=> res!1934029 e!2879307)))

(declare-fun lt!1771567 () ListMap!4157)

(assert (=> b!4616016 (= res!1934029 (not (= lt!1771569 lt!1771567)))))

(declare-fun b!4616017 () Bool)

(assert (=> b!4616017 (= e!2879302 e!2879300)))

(declare-fun res!1934033 () Bool)

(assert (=> b!4616017 (=> res!1934033 e!2879300)))

(declare-fun lt!1771581 () ListMap!4157)

(assert (=> b!4616017 (= res!1934033 (not (= lt!1771567 lt!1771581)))))

(declare-fun lt!1771573 () List!51500)

(assert (=> b!4616017 (= lt!1771581 (extractMap!1500 lt!1771573))))

(declare-fun lt!1771572 () List!51500)

(assert (=> b!4616017 (= lt!1771567 (extractMap!1500 lt!1771572))))

(assert (=> b!4616017 (= lt!1771573 (Cons!51376 (tuple2!52225 hash!414 newBucket!224) Nil!51376))))

(assert (=> b!4616017 (= lt!1771572 (Cons!51376 (tuple2!52225 hash!414 lt!1771579) Nil!51376))))

(declare-fun b!4616018 () Bool)

(declare-fun res!1934020 () Bool)

(assert (=> b!4616018 (=> res!1934020 e!2879307)))

(declare-fun containsKey!2326 (List!51499 K!12760) Bool)

(assert (=> b!4616018 (= res!1934020 (containsKey!2326 lt!1771579 key!4968))))

(declare-fun b!4616019 () Bool)

(declare-fun e!2879306 () Bool)

(declare-fun lambda!189460 () Int)

(declare-fun forall!10744 (List!51500 Int) Bool)

(assert (=> b!4616019 (= e!2879306 (forall!10744 lt!1771573 lambda!189460))))

(declare-fun b!4616020 () Bool)

(declare-fun e!2879303 () Bool)

(assert (=> b!4616020 (= e!2879307 e!2879303)))

(declare-fun res!1934031 () Bool)

(assert (=> b!4616020 (=> res!1934031 e!2879303)))

(declare-fun contains!14338 (ListMap!4157 K!12760) Bool)

(assert (=> b!4616020 (= res!1934031 (contains!14338 lt!1771569 key!4968))))

(assert (=> b!4616020 (not (contains!14338 lt!1771567 key!4968))))

(declare-datatypes ((Unit!110264 0))(
  ( (Unit!110265) )
))
(declare-fun lt!1771578 () Unit!110264)

(declare-datatypes ((ListLongMap!3443 0))(
  ( (ListLongMap!3444 (toList!4854 List!51500)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!358 (ListLongMap!3443 K!12760 Hashable!5841) Unit!110264)

(assert (=> b!4616020 (= lt!1771578 (lemmaNotInItsHashBucketThenNotInMap!358 (ListLongMap!3444 lt!1771572) key!4968 hashF!1389))))

(declare-fun tp!1341590 () Bool)

(declare-fun tp_is_empty!29071 () Bool)

(declare-fun b!4616021 () Bool)

(assert (=> b!4616021 (= e!2879304 (and tp_is_empty!29069 tp_is_empty!29071 tp!1341590))))

(declare-fun b!4616022 () Bool)

(assert (=> b!4616022 (= e!2879301 e!2879307)))

(declare-fun res!1934025 () Bool)

(assert (=> b!4616022 (=> res!1934025 e!2879307)))

(declare-fun lt!1771568 () ListMap!4157)

(declare-fun lt!1771575 () ListMap!4157)

(declare-fun eq!787 (ListMap!4157 ListMap!4157) Bool)

(assert (=> b!4616022 (= res!1934025 (not (eq!787 lt!1771568 lt!1771575)))))

(assert (=> b!4616022 (= lt!1771575 (addToMapMapFromBucket!905 oldBucket!40 (ListMap!4158 Nil!51375)))))

(declare-fun +!1829 (ListMap!4157 tuple2!52222) ListMap!4157)

(assert (=> b!4616022 (= lt!1771568 (+!1829 lt!1771569 (h!57389 oldBucket!40)))))

(declare-fun lt!1771571 () tuple2!52222)

(assert (=> b!4616022 (eq!787 (addToMapMapFromBucket!905 (Cons!51375 lt!1771571 lt!1771579) (ListMap!4158 Nil!51375)) (+!1829 lt!1771569 lt!1771571))))

(declare-fun lt!1771577 () Unit!110264)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!38 (tuple2!52222 List!51499 ListMap!4157) Unit!110264)

(assert (=> b!4616022 (= lt!1771577 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!38 lt!1771571 lt!1771579 (ListMap!4158 Nil!51375)))))

(declare-fun head!9604 (List!51499) tuple2!52222)

(assert (=> b!4616022 (= lt!1771571 (head!9604 oldBucket!40))))

(declare-fun b!4616023 () Bool)

(declare-fun res!1934027 () Bool)

(assert (=> b!4616023 (=> (not res!1934027) (not e!2879312))))

(declare-fun allKeysSameHash!1298 (List!51499 (_ BitVec 64) Hashable!5841) Bool)

(assert (=> b!4616023 (= res!1934027 (allKeysSameHash!1298 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4616024 () Bool)

(declare-fun res!1934030 () Bool)

(assert (=> b!4616024 (=> (not res!1934030) (not e!2879312))))

(declare-fun removePairForKey!1067 (List!51499 K!12760) List!51499)

(assert (=> b!4616024 (= res!1934030 (= (removePairForKey!1067 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4616025 () Bool)

(declare-fun res!1934032 () Bool)

(assert (=> b!4616025 (=> (not res!1934032) (not e!2879312))))

(assert (=> b!4616025 (= res!1934032 (noDuplicateKeys!1444 newBucket!224))))

(declare-fun b!4616026 () Bool)

(declare-fun tp!1341591 () Bool)

(assert (=> b!4616026 (= e!2879311 (and tp_is_empty!29069 tp_is_empty!29071 tp!1341591))))

(declare-fun b!4616027 () Bool)

(assert (=> b!4616027 (= e!2879312 e!2879305)))

(declare-fun res!1934028 () Bool)

(assert (=> b!4616027 (=> (not res!1934028) (not e!2879305))))

(assert (=> b!4616027 (= res!1934028 (contains!14338 lt!1771576 key!4968))))

(assert (=> b!4616027 (= lt!1771576 (extractMap!1500 (Cons!51376 (tuple2!52225 hash!414 oldBucket!40) Nil!51376)))))

(declare-fun b!4616028 () Bool)

(declare-fun res!1934038 () Bool)

(declare-fun e!2879309 () Bool)

(assert (=> b!4616028 (=> res!1934038 e!2879309)))

(assert (=> b!4616028 (= res!1934038 (not (eq!787 lt!1771568 lt!1771576)))))

(declare-fun b!4616029 () Bool)

(declare-fun res!1934037 () Bool)

(assert (=> b!4616029 (=> (not res!1934037) (not e!2879305))))

(assert (=> b!4616029 (= res!1934037 (allKeysSameHash!1298 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4616030 () Bool)

(assert (=> b!4616030 (= e!2879309 e!2879306)))

(declare-fun res!1934026 () Bool)

(assert (=> b!4616030 (=> res!1934026 e!2879306)))

(assert (=> b!4616030 (= res!1934026 (not (= lt!1771581 lt!1771569)))))

(declare-fun lt!1771566 () ListMap!4157)

(declare-fun -!534 (ListMap!4157 K!12760) ListMap!4157)

(assert (=> b!4616030 (eq!787 lt!1771566 (-!534 lt!1771576 key!4968))))

(declare-fun lt!1771574 () Unit!110264)

(declare-fun lemmaRemovePreservesEq!6 (ListMap!4157 ListMap!4157 K!12760) Unit!110264)

(assert (=> b!4616030 (= lt!1771574 (lemmaRemovePreservesEq!6 lt!1771568 lt!1771576 key!4968))))

(declare-fun b!4616031 () Bool)

(assert (=> b!4616031 (= e!2879303 e!2879309)))

(declare-fun res!1934021 () Bool)

(assert (=> b!4616031 (=> res!1934021 e!2879309)))

(assert (=> b!4616031 (= res!1934021 (or (not (= lt!1771566 lt!1771569)) (not (= lt!1771576 lt!1771575))))))

(assert (=> b!4616031 (= lt!1771566 (-!534 lt!1771568 key!4968))))

(assert (=> b!4616031 (= (-!534 (+!1829 lt!1771569 (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40)))) key!4968) lt!1771569)))

(declare-fun lt!1771580 () Unit!110264)

(declare-fun addThenRemoveForNewKeyIsSame!17 (ListMap!4157 K!12760 V!13006) Unit!110264)

(assert (=> b!4616031 (= lt!1771580 (addThenRemoveForNewKeyIsSame!17 lt!1771569 key!4968 (_2!29405 (h!57389 oldBucket!40))))))

(declare-fun b!4616032 () Bool)

(assert (=> b!4616032 (= e!2879308 (= lt!1771570 (ListMap!4158 Nil!51375)))))

(assert (= (and start!461812 res!1934022) b!4616025))

(assert (= (and b!4616025 res!1934032) b!4616024))

(assert (= (and b!4616024 res!1934030) b!4616023))

(assert (= (and b!4616023 res!1934027) b!4616027))

(assert (= (and b!4616027 res!1934028) b!4616013))

(assert (= (and b!4616013 res!1934034) b!4616029))

(assert (= (and b!4616029 res!1934037) b!4616012))

(assert (= (and b!4616012 res!1934024) b!4616032))

(assert (= (and b!4616012 (not res!1934036)) b!4616014))

(assert (= (and b!4616014 (not res!1934023)) b!4616017))

(assert (= (and b!4616017 (not res!1934033)) b!4616015))

(assert (= (and b!4616015 (not res!1934035)) b!4616022))

(assert (= (and b!4616022 (not res!1934025)) b!4616018))

(assert (= (and b!4616018 (not res!1934020)) b!4616016))

(assert (= (and b!4616016 (not res!1934029)) b!4616020))

(assert (= (and b!4616020 (not res!1934031)) b!4616031))

(assert (= (and b!4616031 (not res!1934021)) b!4616028))

(assert (= (and b!4616028 (not res!1934038)) b!4616030))

(assert (= (and b!4616030 (not res!1934026)) b!4616019))

(assert (= (and start!461812 ((_ is Cons!51375) oldBucket!40)) b!4616026))

(assert (= (and start!461812 ((_ is Cons!51375) newBucket!224)) b!4616021))

(declare-fun m!5449871 () Bool)

(assert (=> b!4616030 m!5449871))

(assert (=> b!4616030 m!5449871))

(declare-fun m!5449873 () Bool)

(assert (=> b!4616030 m!5449873))

(declare-fun m!5449875 () Bool)

(assert (=> b!4616030 m!5449875))

(declare-fun m!5449877 () Bool)

(assert (=> b!4616027 m!5449877))

(declare-fun m!5449879 () Bool)

(assert (=> b!4616027 m!5449879))

(declare-fun m!5449881 () Bool)

(assert (=> b!4616031 m!5449881))

(declare-fun m!5449883 () Bool)

(assert (=> b!4616031 m!5449883))

(assert (=> b!4616031 m!5449883))

(declare-fun m!5449885 () Bool)

(assert (=> b!4616031 m!5449885))

(declare-fun m!5449887 () Bool)

(assert (=> b!4616031 m!5449887))

(declare-fun m!5449889 () Bool)

(assert (=> b!4616014 m!5449889))

(declare-fun m!5449891 () Bool)

(assert (=> b!4616023 m!5449891))

(declare-fun m!5449893 () Bool)

(assert (=> b!4616019 m!5449893))

(declare-fun m!5449895 () Bool)

(assert (=> start!461812 m!5449895))

(declare-fun m!5449897 () Bool)

(assert (=> b!4616022 m!5449897))

(declare-fun m!5449899 () Bool)

(assert (=> b!4616022 m!5449899))

(declare-fun m!5449901 () Bool)

(assert (=> b!4616022 m!5449901))

(declare-fun m!5449903 () Bool)

(assert (=> b!4616022 m!5449903))

(declare-fun m!5449905 () Bool)

(assert (=> b!4616022 m!5449905))

(declare-fun m!5449907 () Bool)

(assert (=> b!4616022 m!5449907))

(assert (=> b!4616022 m!5449899))

(assert (=> b!4616022 m!5449907))

(declare-fun m!5449909 () Bool)

(assert (=> b!4616022 m!5449909))

(declare-fun m!5449911 () Bool)

(assert (=> b!4616022 m!5449911))

(declare-fun m!5449913 () Bool)

(assert (=> b!4616024 m!5449913))

(declare-fun m!5449915 () Bool)

(assert (=> b!4616020 m!5449915))

(declare-fun m!5449917 () Bool)

(assert (=> b!4616020 m!5449917))

(declare-fun m!5449919 () Bool)

(assert (=> b!4616020 m!5449919))

(declare-fun m!5449921 () Bool)

(assert (=> b!4616015 m!5449921))

(declare-fun m!5449923 () Bool)

(assert (=> b!4616015 m!5449923))

(declare-fun m!5449925 () Bool)

(assert (=> b!4616012 m!5449925))

(declare-fun m!5449927 () Bool)

(assert (=> b!4616012 m!5449927))

(declare-fun m!5449929 () Bool)

(assert (=> b!4616018 m!5449929))

(declare-fun m!5449931 () Bool)

(assert (=> b!4616017 m!5449931))

(declare-fun m!5449933 () Bool)

(assert (=> b!4616017 m!5449933))

(declare-fun m!5449935 () Bool)

(assert (=> b!4616025 m!5449935))

(declare-fun m!5449937 () Bool)

(assert (=> b!4616029 m!5449937))

(declare-fun m!5449939 () Bool)

(assert (=> b!4616013 m!5449939))

(declare-fun m!5449941 () Bool)

(assert (=> b!4616028 m!5449941))

(check-sat (not b!4616013) tp_is_empty!29069 (not b!4616014) (not b!4616031) (not b!4616027) (not b!4616022) (not b!4616019) (not b!4616017) (not b!4616028) (not start!461812) (not b!4616029) (not b!4616012) (not b!4616023) (not b!4616024) (not b!4616030) (not b!4616021) (not b!4616025) tp_is_empty!29071 (not b!4616020) (not b!4616015) (not b!4616018) (not b!4616026))
(check-sat)
(get-model)

(declare-fun b!4616124 () Bool)

(declare-datatypes ((List!51502 0))(
  ( (Nil!51378) (Cons!51378 (h!57394 K!12760) (t!358510 List!51502)) )
))
(declare-fun e!2879374 () List!51502)

(declare-fun keys!18057 (ListMap!4157) List!51502)

(assert (=> b!4616124 (= e!2879374 (keys!18057 lt!1771569))))

(declare-fun b!4616125 () Bool)

(declare-fun e!2879372 () Unit!110264)

(declare-fun Unit!110283 () Unit!110264)

(assert (=> b!4616125 (= e!2879372 Unit!110283)))

(declare-fun d!1453990 () Bool)

(declare-fun e!2879371 () Bool)

(assert (=> d!1453990 e!2879371))

(declare-fun res!1934066 () Bool)

(assert (=> d!1453990 (=> res!1934066 e!2879371)))

(declare-fun e!2879370 () Bool)

(assert (=> d!1453990 (= res!1934066 e!2879370)))

(declare-fun res!1934067 () Bool)

(assert (=> d!1453990 (=> (not res!1934067) (not e!2879370))))

(declare-fun lt!1771649 () Bool)

(assert (=> d!1453990 (= res!1934067 (not lt!1771649))))

(declare-fun lt!1771652 () Bool)

(assert (=> d!1453990 (= lt!1771649 lt!1771652)))

(declare-fun lt!1771648 () Unit!110264)

(declare-fun e!2879375 () Unit!110264)

(assert (=> d!1453990 (= lt!1771648 e!2879375)))

(declare-fun c!790306 () Bool)

(assert (=> d!1453990 (= c!790306 lt!1771652)))

(declare-fun containsKey!2328 (List!51499 K!12760) Bool)

(assert (=> d!1453990 (= lt!1771652 (containsKey!2328 (toList!4853 lt!1771569) key!4968))))

(assert (=> d!1453990 (= (contains!14338 lt!1771569 key!4968) lt!1771649)))

(declare-fun b!4616126 () Bool)

(declare-fun e!2879373 () Bool)

(declare-fun contains!14340 (List!51502 K!12760) Bool)

(assert (=> b!4616126 (= e!2879373 (contains!14340 (keys!18057 lt!1771569) key!4968))))

(declare-fun b!4616127 () Bool)

(assert (=> b!4616127 (= e!2879375 e!2879372)))

(declare-fun c!790305 () Bool)

(declare-fun call!321843 () Bool)

(assert (=> b!4616127 (= c!790305 call!321843)))

(declare-fun b!4616128 () Bool)

(assert (=> b!4616128 (= e!2879371 e!2879373)))

(declare-fun res!1934068 () Bool)

(assert (=> b!4616128 (=> (not res!1934068) (not e!2879373))))

(declare-datatypes ((Option!11472 0))(
  ( (None!11471) (Some!11471 (v!45537 V!13006)) )
))
(declare-fun isDefined!8737 (Option!11472) Bool)

(declare-fun getValueByKey!1386 (List!51499 K!12760) Option!11472)

(assert (=> b!4616128 (= res!1934068 (isDefined!8737 (getValueByKey!1386 (toList!4853 lt!1771569) key!4968)))))

(declare-fun b!4616129 () Bool)

(assert (=> b!4616129 (= e!2879370 (not (contains!14340 (keys!18057 lt!1771569) key!4968)))))

(declare-fun b!4616130 () Bool)

(declare-fun lt!1771647 () Unit!110264)

(assert (=> b!4616130 (= e!2879375 lt!1771647)))

(declare-fun lt!1771654 () Unit!110264)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1288 (List!51499 K!12760) Unit!110264)

(assert (=> b!4616130 (= lt!1771654 (lemmaContainsKeyImpliesGetValueByKeyDefined!1288 (toList!4853 lt!1771569) key!4968))))

(assert (=> b!4616130 (isDefined!8737 (getValueByKey!1386 (toList!4853 lt!1771569) key!4968))))

(declare-fun lt!1771651 () Unit!110264)

(assert (=> b!4616130 (= lt!1771651 lt!1771654)))

(declare-fun lemmaInListThenGetKeysListContains!615 (List!51499 K!12760) Unit!110264)

(assert (=> b!4616130 (= lt!1771647 (lemmaInListThenGetKeysListContains!615 (toList!4853 lt!1771569) key!4968))))

(assert (=> b!4616130 call!321843))

(declare-fun b!4616131 () Bool)

(assert (=> b!4616131 false))

(declare-fun lt!1771653 () Unit!110264)

(declare-fun lt!1771650 () Unit!110264)

(assert (=> b!4616131 (= lt!1771653 lt!1771650)))

(assert (=> b!4616131 (containsKey!2328 (toList!4853 lt!1771569) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!619 (List!51499 K!12760) Unit!110264)

(assert (=> b!4616131 (= lt!1771650 (lemmaInGetKeysListThenContainsKey!619 (toList!4853 lt!1771569) key!4968))))

(declare-fun Unit!110284 () Unit!110264)

(assert (=> b!4616131 (= e!2879372 Unit!110284)))

(declare-fun b!4616132 () Bool)

(declare-fun getKeysList!620 (List!51499) List!51502)

(assert (=> b!4616132 (= e!2879374 (getKeysList!620 (toList!4853 lt!1771569)))))

(declare-fun bm!321838 () Bool)

(assert (=> bm!321838 (= call!321843 (contains!14340 e!2879374 key!4968))))

(declare-fun c!790307 () Bool)

(assert (=> bm!321838 (= c!790307 c!790306)))

(assert (= (and d!1453990 c!790306) b!4616130))

(assert (= (and d!1453990 (not c!790306)) b!4616127))

(assert (= (and b!4616127 c!790305) b!4616131))

(assert (= (and b!4616127 (not c!790305)) b!4616125))

(assert (= (or b!4616130 b!4616127) bm!321838))

(assert (= (and bm!321838 c!790307) b!4616132))

(assert (= (and bm!321838 (not c!790307)) b!4616124))

(assert (= (and d!1453990 res!1934067) b!4616129))

(assert (= (and d!1453990 (not res!1934066)) b!4616128))

(assert (= (and b!4616128 res!1934068) b!4616126))

(declare-fun m!5450027 () Bool)

(assert (=> b!4616131 m!5450027))

(declare-fun m!5450029 () Bool)

(assert (=> b!4616131 m!5450029))

(assert (=> d!1453990 m!5450027))

(declare-fun m!5450031 () Bool)

(assert (=> b!4616124 m!5450031))

(assert (=> b!4616129 m!5450031))

(assert (=> b!4616129 m!5450031))

(declare-fun m!5450033 () Bool)

(assert (=> b!4616129 m!5450033))

(declare-fun m!5450035 () Bool)

(assert (=> bm!321838 m!5450035))

(assert (=> b!4616126 m!5450031))

(assert (=> b!4616126 m!5450031))

(assert (=> b!4616126 m!5450033))

(declare-fun m!5450037 () Bool)

(assert (=> b!4616130 m!5450037))

(declare-fun m!5450039 () Bool)

(assert (=> b!4616130 m!5450039))

(assert (=> b!4616130 m!5450039))

(declare-fun m!5450041 () Bool)

(assert (=> b!4616130 m!5450041))

(declare-fun m!5450043 () Bool)

(assert (=> b!4616130 m!5450043))

(assert (=> b!4616128 m!5450039))

(assert (=> b!4616128 m!5450039))

(assert (=> b!4616128 m!5450041))

(declare-fun m!5450049 () Bool)

(assert (=> b!4616132 m!5450049))

(assert (=> b!4616020 d!1453990))

(declare-fun b!4616139 () Bool)

(declare-fun e!2879386 () List!51502)

(assert (=> b!4616139 (= e!2879386 (keys!18057 lt!1771567))))

(declare-fun b!4616140 () Bool)

(declare-fun e!2879384 () Unit!110264)

(declare-fun Unit!110289 () Unit!110264)

(assert (=> b!4616140 (= e!2879384 Unit!110289)))

(declare-fun d!1454008 () Bool)

(declare-fun e!2879383 () Bool)

(assert (=> d!1454008 e!2879383))

(declare-fun res!1934075 () Bool)

(assert (=> d!1454008 (=> res!1934075 e!2879383)))

(declare-fun e!2879382 () Bool)

(assert (=> d!1454008 (= res!1934075 e!2879382)))

(declare-fun res!1934076 () Bool)

(assert (=> d!1454008 (=> (not res!1934076) (not e!2879382))))

(declare-fun lt!1771657 () Bool)

(assert (=> d!1454008 (= res!1934076 (not lt!1771657))))

(declare-fun lt!1771660 () Bool)

(assert (=> d!1454008 (= lt!1771657 lt!1771660)))

(declare-fun lt!1771656 () Unit!110264)

(declare-fun e!2879387 () Unit!110264)

(assert (=> d!1454008 (= lt!1771656 e!2879387)))

(declare-fun c!790309 () Bool)

(assert (=> d!1454008 (= c!790309 lt!1771660)))

(assert (=> d!1454008 (= lt!1771660 (containsKey!2328 (toList!4853 lt!1771567) key!4968))))

(assert (=> d!1454008 (= (contains!14338 lt!1771567 key!4968) lt!1771657)))

(declare-fun b!4616141 () Bool)

(declare-fun e!2879385 () Bool)

(assert (=> b!4616141 (= e!2879385 (contains!14340 (keys!18057 lt!1771567) key!4968))))

(declare-fun b!4616142 () Bool)

(assert (=> b!4616142 (= e!2879387 e!2879384)))

(declare-fun c!790308 () Bool)

(declare-fun call!321844 () Bool)

(assert (=> b!4616142 (= c!790308 call!321844)))

(declare-fun b!4616143 () Bool)

(assert (=> b!4616143 (= e!2879383 e!2879385)))

(declare-fun res!1934077 () Bool)

(assert (=> b!4616143 (=> (not res!1934077) (not e!2879385))))

(assert (=> b!4616143 (= res!1934077 (isDefined!8737 (getValueByKey!1386 (toList!4853 lt!1771567) key!4968)))))

(declare-fun b!4616144 () Bool)

(assert (=> b!4616144 (= e!2879382 (not (contains!14340 (keys!18057 lt!1771567) key!4968)))))

(declare-fun b!4616145 () Bool)

(declare-fun lt!1771655 () Unit!110264)

(assert (=> b!4616145 (= e!2879387 lt!1771655)))

(declare-fun lt!1771662 () Unit!110264)

(assert (=> b!4616145 (= lt!1771662 (lemmaContainsKeyImpliesGetValueByKeyDefined!1288 (toList!4853 lt!1771567) key!4968))))

(assert (=> b!4616145 (isDefined!8737 (getValueByKey!1386 (toList!4853 lt!1771567) key!4968))))

(declare-fun lt!1771659 () Unit!110264)

(assert (=> b!4616145 (= lt!1771659 lt!1771662)))

(assert (=> b!4616145 (= lt!1771655 (lemmaInListThenGetKeysListContains!615 (toList!4853 lt!1771567) key!4968))))

(assert (=> b!4616145 call!321844))

(declare-fun b!4616146 () Bool)

(assert (=> b!4616146 false))

(declare-fun lt!1771661 () Unit!110264)

(declare-fun lt!1771658 () Unit!110264)

(assert (=> b!4616146 (= lt!1771661 lt!1771658)))

(assert (=> b!4616146 (containsKey!2328 (toList!4853 lt!1771567) key!4968)))

(assert (=> b!4616146 (= lt!1771658 (lemmaInGetKeysListThenContainsKey!619 (toList!4853 lt!1771567) key!4968))))

(declare-fun Unit!110296 () Unit!110264)

(assert (=> b!4616146 (= e!2879384 Unit!110296)))

(declare-fun b!4616147 () Bool)

(assert (=> b!4616147 (= e!2879386 (getKeysList!620 (toList!4853 lt!1771567)))))

(declare-fun bm!321839 () Bool)

(assert (=> bm!321839 (= call!321844 (contains!14340 e!2879386 key!4968))))

(declare-fun c!790310 () Bool)

(assert (=> bm!321839 (= c!790310 c!790309)))

(assert (= (and d!1454008 c!790309) b!4616145))

(assert (= (and d!1454008 (not c!790309)) b!4616142))

(assert (= (and b!4616142 c!790308) b!4616146))

(assert (= (and b!4616142 (not c!790308)) b!4616140))

(assert (= (or b!4616145 b!4616142) bm!321839))

(assert (= (and bm!321839 c!790310) b!4616147))

(assert (= (and bm!321839 (not c!790310)) b!4616139))

(assert (= (and d!1454008 res!1934076) b!4616144))

(assert (= (and d!1454008 (not res!1934075)) b!4616143))

(assert (= (and b!4616143 res!1934077) b!4616141))

(declare-fun m!5450051 () Bool)

(assert (=> b!4616146 m!5450051))

(declare-fun m!5450053 () Bool)

(assert (=> b!4616146 m!5450053))

(assert (=> d!1454008 m!5450051))

(declare-fun m!5450055 () Bool)

(assert (=> b!4616139 m!5450055))

(assert (=> b!4616144 m!5450055))

(assert (=> b!4616144 m!5450055))

(declare-fun m!5450057 () Bool)

(assert (=> b!4616144 m!5450057))

(declare-fun m!5450059 () Bool)

(assert (=> bm!321839 m!5450059))

(assert (=> b!4616141 m!5450055))

(assert (=> b!4616141 m!5450055))

(assert (=> b!4616141 m!5450057))

(declare-fun m!5450061 () Bool)

(assert (=> b!4616145 m!5450061))

(declare-fun m!5450063 () Bool)

(assert (=> b!4616145 m!5450063))

(assert (=> b!4616145 m!5450063))

(declare-fun m!5450065 () Bool)

(assert (=> b!4616145 m!5450065))

(declare-fun m!5450067 () Bool)

(assert (=> b!4616145 m!5450067))

(assert (=> b!4616143 m!5450063))

(assert (=> b!4616143 m!5450063))

(assert (=> b!4616143 m!5450065))

(declare-fun m!5450069 () Bool)

(assert (=> b!4616147 m!5450069))

(assert (=> b!4616020 d!1454008))

(declare-fun bs!1018207 () Bool)

(declare-fun d!1454010 () Bool)

(assert (= bs!1018207 (and d!1454010 b!4616019)))

(declare-fun lambda!189472 () Int)

(assert (=> bs!1018207 (= lambda!189472 lambda!189460)))

(assert (=> d!1454010 (not (contains!14338 (extractMap!1500 (toList!4854 (ListLongMap!3444 lt!1771572))) key!4968))))

(declare-fun lt!1771665 () Unit!110264)

(declare-fun choose!31087 (ListLongMap!3443 K!12760 Hashable!5841) Unit!110264)

(assert (=> d!1454010 (= lt!1771665 (choose!31087 (ListLongMap!3444 lt!1771572) key!4968 hashF!1389))))

(assert (=> d!1454010 (forall!10744 (toList!4854 (ListLongMap!3444 lt!1771572)) lambda!189472)))

(assert (=> d!1454010 (= (lemmaNotInItsHashBucketThenNotInMap!358 (ListLongMap!3444 lt!1771572) key!4968 hashF!1389) lt!1771665)))

(declare-fun bs!1018208 () Bool)

(assert (= bs!1018208 d!1454010))

(declare-fun m!5450071 () Bool)

(assert (=> bs!1018208 m!5450071))

(assert (=> bs!1018208 m!5450071))

(declare-fun m!5450073 () Bool)

(assert (=> bs!1018208 m!5450073))

(declare-fun m!5450075 () Bool)

(assert (=> bs!1018208 m!5450075))

(declare-fun m!5450077 () Bool)

(assert (=> bs!1018208 m!5450077))

(assert (=> b!4616020 d!1454010))

(declare-fun d!1454012 () Bool)

(declare-fun e!2879390 () Bool)

(assert (=> d!1454012 e!2879390))

(declare-fun res!1934080 () Bool)

(assert (=> d!1454012 (=> (not res!1934080) (not e!2879390))))

(declare-fun lt!1771668 () ListMap!4157)

(assert (=> d!1454012 (= res!1934080 (not (contains!14338 lt!1771668 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!243 (List!51499 K!12760) List!51499)

(assert (=> d!1454012 (= lt!1771668 (ListMap!4158 (removePresrvNoDuplicatedKeys!243 (toList!4853 lt!1771568) key!4968)))))

(assert (=> d!1454012 (= (-!534 lt!1771568 key!4968) lt!1771668)))

(declare-fun b!4616150 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8730 (List!51502) (InoxSet K!12760))

(assert (=> b!4616150 (= e!2879390 (= ((_ map and) (content!8730 (keys!18057 lt!1771568)) ((_ map not) (store ((as const (Array K!12760 Bool)) false) key!4968 true))) (content!8730 (keys!18057 lt!1771668))))))

(assert (= (and d!1454012 res!1934080) b!4616150))

(declare-fun m!5450079 () Bool)

(assert (=> d!1454012 m!5450079))

(declare-fun m!5450081 () Bool)

(assert (=> d!1454012 m!5450081))

(declare-fun m!5450083 () Bool)

(assert (=> b!4616150 m!5450083))

(declare-fun m!5450085 () Bool)

(assert (=> b!4616150 m!5450085))

(assert (=> b!4616150 m!5450085))

(declare-fun m!5450087 () Bool)

(assert (=> b!4616150 m!5450087))

(declare-fun m!5450089 () Bool)

(assert (=> b!4616150 m!5450089))

(assert (=> b!4616150 m!5450083))

(declare-fun m!5450091 () Bool)

(assert (=> b!4616150 m!5450091))

(assert (=> b!4616031 d!1454012))

(declare-fun d!1454014 () Bool)

(declare-fun e!2879391 () Bool)

(assert (=> d!1454014 e!2879391))

(declare-fun res!1934081 () Bool)

(assert (=> d!1454014 (=> (not res!1934081) (not e!2879391))))

(declare-fun lt!1771669 () ListMap!4157)

(assert (=> d!1454014 (= res!1934081 (not (contains!14338 lt!1771669 key!4968)))))

(assert (=> d!1454014 (= lt!1771669 (ListMap!4158 (removePresrvNoDuplicatedKeys!243 (toList!4853 (+!1829 lt!1771569 (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40))))) key!4968)))))

(assert (=> d!1454014 (= (-!534 (+!1829 lt!1771569 (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40)))) key!4968) lt!1771669)))

(declare-fun b!4616151 () Bool)

(assert (=> b!4616151 (= e!2879391 (= ((_ map and) (content!8730 (keys!18057 (+!1829 lt!1771569 (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40)))))) ((_ map not) (store ((as const (Array K!12760 Bool)) false) key!4968 true))) (content!8730 (keys!18057 lt!1771669))))))

(assert (= (and d!1454014 res!1934081) b!4616151))

(declare-fun m!5450093 () Bool)

(assert (=> d!1454014 m!5450093))

(declare-fun m!5450095 () Bool)

(assert (=> d!1454014 m!5450095))

(assert (=> b!4616151 m!5449883))

(declare-fun m!5450097 () Bool)

(assert (=> b!4616151 m!5450097))

(declare-fun m!5450099 () Bool)

(assert (=> b!4616151 m!5450099))

(assert (=> b!4616151 m!5450099))

(declare-fun m!5450101 () Bool)

(assert (=> b!4616151 m!5450101))

(assert (=> b!4616151 m!5450089))

(assert (=> b!4616151 m!5450097))

(declare-fun m!5450103 () Bool)

(assert (=> b!4616151 m!5450103))

(assert (=> b!4616031 d!1454014))

(declare-fun d!1454016 () Bool)

(declare-fun e!2879394 () Bool)

(assert (=> d!1454016 e!2879394))

(declare-fun res!1934087 () Bool)

(assert (=> d!1454016 (=> (not res!1934087) (not e!2879394))))

(declare-fun lt!1771679 () ListMap!4157)

(assert (=> d!1454016 (= res!1934087 (contains!14338 lt!1771679 (_1!29405 (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40))))))))

(declare-fun lt!1771678 () List!51499)

(assert (=> d!1454016 (= lt!1771679 (ListMap!4158 lt!1771678))))

(declare-fun lt!1771681 () Unit!110264)

(declare-fun lt!1771680 () Unit!110264)

(assert (=> d!1454016 (= lt!1771681 lt!1771680)))

(assert (=> d!1454016 (= (getValueByKey!1386 lt!1771678 (_1!29405 (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40))))) (Some!11471 (_2!29405 (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!822 (List!51499 K!12760 V!13006) Unit!110264)

(assert (=> d!1454016 (= lt!1771680 (lemmaContainsTupThenGetReturnValue!822 lt!1771678 (_1!29405 (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40)))) (_2!29405 (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40))))))))

(declare-fun insertNoDuplicatedKeys!330 (List!51499 K!12760 V!13006) List!51499)

(assert (=> d!1454016 (= lt!1771678 (insertNoDuplicatedKeys!330 (toList!4853 lt!1771569) (_1!29405 (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40)))) (_2!29405 (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40))))))))

(assert (=> d!1454016 (= (+!1829 lt!1771569 (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40)))) lt!1771679)))

(declare-fun b!4616156 () Bool)

(declare-fun res!1934086 () Bool)

(assert (=> b!4616156 (=> (not res!1934086) (not e!2879394))))

(assert (=> b!4616156 (= res!1934086 (= (getValueByKey!1386 (toList!4853 lt!1771679) (_1!29405 (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40))))) (Some!11471 (_2!29405 (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40)))))))))

(declare-fun b!4616157 () Bool)

(declare-fun contains!14342 (List!51499 tuple2!52222) Bool)

(assert (=> b!4616157 (= e!2879394 (contains!14342 (toList!4853 lt!1771679) (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40)))))))

(assert (= (and d!1454016 res!1934087) b!4616156))

(assert (= (and b!4616156 res!1934086) b!4616157))

(declare-fun m!5450105 () Bool)

(assert (=> d!1454016 m!5450105))

(declare-fun m!5450107 () Bool)

(assert (=> d!1454016 m!5450107))

(declare-fun m!5450109 () Bool)

(assert (=> d!1454016 m!5450109))

(declare-fun m!5450111 () Bool)

(assert (=> d!1454016 m!5450111))

(declare-fun m!5450113 () Bool)

(assert (=> b!4616156 m!5450113))

(declare-fun m!5450115 () Bool)

(assert (=> b!4616157 m!5450115))

(assert (=> b!4616031 d!1454016))

(declare-fun d!1454018 () Bool)

(assert (=> d!1454018 (= (-!534 (+!1829 lt!1771569 (tuple2!52223 key!4968 (_2!29405 (h!57389 oldBucket!40)))) key!4968) lt!1771569)))

(declare-fun lt!1771700 () Unit!110264)

(declare-fun choose!31088 (ListMap!4157 K!12760 V!13006) Unit!110264)

(assert (=> d!1454018 (= lt!1771700 (choose!31088 lt!1771569 key!4968 (_2!29405 (h!57389 oldBucket!40))))))

(assert (=> d!1454018 (not (contains!14338 lt!1771569 key!4968))))

(assert (=> d!1454018 (= (addThenRemoveForNewKeyIsSame!17 lt!1771569 key!4968 (_2!29405 (h!57389 oldBucket!40))) lt!1771700)))

(declare-fun bs!1018209 () Bool)

(assert (= bs!1018209 d!1454018))

(assert (=> bs!1018209 m!5449883))

(assert (=> bs!1018209 m!5449883))

(assert (=> bs!1018209 m!5449885))

(declare-fun m!5450117 () Bool)

(assert (=> bs!1018209 m!5450117))

(assert (=> bs!1018209 m!5449915))

(assert (=> b!4616031 d!1454018))

(declare-fun d!1454020 () Bool)

(declare-fun content!8733 (List!51499) (InoxSet tuple2!52222))

(assert (=> d!1454020 (= (eq!787 lt!1771568 lt!1771575) (= (content!8733 (toList!4853 lt!1771568)) (content!8733 (toList!4853 lt!1771575))))))

(declare-fun bs!1018210 () Bool)

(assert (= bs!1018210 d!1454020))

(declare-fun m!5450119 () Bool)

(assert (=> bs!1018210 m!5450119))

(declare-fun m!5450121 () Bool)

(assert (=> bs!1018210 m!5450121))

(assert (=> b!4616022 d!1454020))

(declare-fun b!4616243 () Bool)

(assert (=> b!4616243 true))

(declare-fun bs!1018369 () Bool)

(declare-fun b!4616244 () Bool)

(assert (= bs!1018369 (and b!4616244 b!4616243)))

(declare-fun lambda!189554 () Int)

(declare-fun lambda!189553 () Int)

(assert (=> bs!1018369 (= lambda!189554 lambda!189553)))

(assert (=> b!4616244 true))

(declare-fun lt!1771929 () ListMap!4157)

(declare-fun lambda!189555 () Int)

(assert (=> bs!1018369 (= (= lt!1771929 (ListMap!4158 Nil!51375)) (= lambda!189555 lambda!189553))))

(assert (=> b!4616244 (= (= lt!1771929 (ListMap!4158 Nil!51375)) (= lambda!189555 lambda!189554))))

(assert (=> b!4616244 true))

(declare-fun bs!1018370 () Bool)

(declare-fun d!1454022 () Bool)

(assert (= bs!1018370 (and d!1454022 b!4616243)))

(declare-fun lt!1771922 () ListMap!4157)

(declare-fun lambda!189556 () Int)

(assert (=> bs!1018370 (= (= lt!1771922 (ListMap!4158 Nil!51375)) (= lambda!189556 lambda!189553))))

(declare-fun bs!1018371 () Bool)

(assert (= bs!1018371 (and d!1454022 b!4616244)))

(assert (=> bs!1018371 (= (= lt!1771922 (ListMap!4158 Nil!51375)) (= lambda!189556 lambda!189554))))

(assert (=> bs!1018371 (= (= lt!1771922 lt!1771929) (= lambda!189556 lambda!189555))))

(assert (=> d!1454022 true))

(declare-fun b!4616240 () Bool)

(declare-fun e!2879448 () Bool)

(declare-fun forall!10746 (List!51499 Int) Bool)

(assert (=> b!4616240 (= e!2879448 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189555))))

(declare-fun bm!321867 () Bool)

(declare-fun call!321872 () Bool)

(declare-fun c!790323 () Bool)

(assert (=> bm!321867 (= call!321872 (forall!10746 (ite c!790323 (toList!4853 (ListMap!4158 Nil!51375)) (Cons!51375 lt!1771571 lt!1771579)) (ite c!790323 lambda!189553 lambda!189555)))))

(declare-fun e!2879449 () Bool)

(assert (=> d!1454022 e!2879449))

(declare-fun res!1934140 () Bool)

(assert (=> d!1454022 (=> (not res!1934140) (not e!2879449))))

(assert (=> d!1454022 (= res!1934140 (forall!10746 (Cons!51375 lt!1771571 lt!1771579) lambda!189556))))

(declare-fun e!2879447 () ListMap!4157)

(assert (=> d!1454022 (= lt!1771922 e!2879447)))

(assert (=> d!1454022 (= c!790323 ((_ is Nil!51375) (Cons!51375 lt!1771571 lt!1771579)))))

(assert (=> d!1454022 (noDuplicateKeys!1444 (Cons!51375 lt!1771571 lt!1771579))))

(assert (=> d!1454022 (= (addToMapMapFromBucket!905 (Cons!51375 lt!1771571 lt!1771579) (ListMap!4158 Nil!51375)) lt!1771922)))

(declare-fun b!4616241 () Bool)

(declare-fun invariantList!1169 (List!51499) Bool)

(assert (=> b!4616241 (= e!2879449 (invariantList!1169 (toList!4853 lt!1771922)))))

(declare-fun b!4616242 () Bool)

(declare-fun res!1934139 () Bool)

(assert (=> b!4616242 (=> (not res!1934139) (not e!2879449))))

(assert (=> b!4616242 (= res!1934139 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189556))))

(assert (=> b!4616243 (= e!2879447 (ListMap!4158 Nil!51375))))

(declare-fun lt!1771931 () Unit!110264)

(declare-fun call!321874 () Unit!110264)

(assert (=> b!4616243 (= lt!1771931 call!321874)))

(declare-fun call!321873 () Bool)

(assert (=> b!4616243 call!321873))

(declare-fun lt!1771928 () Unit!110264)

(assert (=> b!4616243 (= lt!1771928 lt!1771931)))

(assert (=> b!4616243 call!321872))

(declare-fun lt!1771912 () Unit!110264)

(declare-fun Unit!110298 () Unit!110264)

(assert (=> b!4616243 (= lt!1771912 Unit!110298)))

(declare-fun bm!321868 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!471 (ListMap!4157) Unit!110264)

(assert (=> bm!321868 (= call!321874 (lemmaContainsAllItsOwnKeys!471 (ListMap!4158 Nil!51375)))))

(declare-fun lt!1771923 () ListMap!4157)

(declare-fun bm!321869 () Bool)

(assert (=> bm!321869 (= call!321873 (forall!10746 (ite c!790323 (toList!4853 (ListMap!4158 Nil!51375)) (toList!4853 lt!1771923)) (ite c!790323 lambda!189553 lambda!189555)))))

(assert (=> b!4616244 (= e!2879447 lt!1771929)))

(assert (=> b!4616244 (= lt!1771923 (+!1829 (ListMap!4158 Nil!51375) (h!57389 (Cons!51375 lt!1771571 lt!1771579))))))

(assert (=> b!4616244 (= lt!1771929 (addToMapMapFromBucket!905 (t!358505 (Cons!51375 lt!1771571 lt!1771579)) (+!1829 (ListMap!4158 Nil!51375) (h!57389 (Cons!51375 lt!1771571 lt!1771579)))))))

(declare-fun lt!1771917 () Unit!110264)

(assert (=> b!4616244 (= lt!1771917 call!321874)))

(assert (=> b!4616244 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189554)))

(declare-fun lt!1771915 () Unit!110264)

(assert (=> b!4616244 (= lt!1771915 lt!1771917)))

(assert (=> b!4616244 (forall!10746 (toList!4853 lt!1771923) lambda!189555)))

(declare-fun lt!1771920 () Unit!110264)

(declare-fun Unit!110299 () Unit!110264)

(assert (=> b!4616244 (= lt!1771920 Unit!110299)))

(assert (=> b!4616244 (forall!10746 (t!358505 (Cons!51375 lt!1771571 lt!1771579)) lambda!189555)))

(declare-fun lt!1771918 () Unit!110264)

(declare-fun Unit!110300 () Unit!110264)

(assert (=> b!4616244 (= lt!1771918 Unit!110300)))

(declare-fun lt!1771925 () Unit!110264)

(declare-fun Unit!110301 () Unit!110264)

(assert (=> b!4616244 (= lt!1771925 Unit!110301)))

(declare-fun lt!1771913 () Unit!110264)

(declare-fun forallContained!2963 (List!51499 Int tuple2!52222) Unit!110264)

(assert (=> b!4616244 (= lt!1771913 (forallContained!2963 (toList!4853 lt!1771923) lambda!189555 (h!57389 (Cons!51375 lt!1771571 lt!1771579))))))

(assert (=> b!4616244 (contains!14338 lt!1771923 (_1!29405 (h!57389 (Cons!51375 lt!1771571 lt!1771579))))))

(declare-fun lt!1771914 () Unit!110264)

(declare-fun Unit!110302 () Unit!110264)

(assert (=> b!4616244 (= lt!1771914 Unit!110302)))

(assert (=> b!4616244 (contains!14338 lt!1771929 (_1!29405 (h!57389 (Cons!51375 lt!1771571 lt!1771579))))))

(declare-fun lt!1771921 () Unit!110264)

(declare-fun Unit!110303 () Unit!110264)

(assert (=> b!4616244 (= lt!1771921 Unit!110303)))

(assert (=> b!4616244 (forall!10746 (Cons!51375 lt!1771571 lt!1771579) lambda!189555)))

(declare-fun lt!1771927 () Unit!110264)

(declare-fun Unit!110304 () Unit!110264)

(assert (=> b!4616244 (= lt!1771927 Unit!110304)))

(assert (=> b!4616244 call!321873))

(declare-fun lt!1771916 () Unit!110264)

(declare-fun Unit!110305 () Unit!110264)

(assert (=> b!4616244 (= lt!1771916 Unit!110305)))

(declare-fun lt!1771924 () Unit!110264)

(declare-fun Unit!110306 () Unit!110264)

(assert (=> b!4616244 (= lt!1771924 Unit!110306)))

(declare-fun lt!1771926 () Unit!110264)

(declare-fun addForallContainsKeyThenBeforeAdding!470 (ListMap!4157 ListMap!4157 K!12760 V!13006) Unit!110264)

(assert (=> b!4616244 (= lt!1771926 (addForallContainsKeyThenBeforeAdding!470 (ListMap!4158 Nil!51375) lt!1771929 (_1!29405 (h!57389 (Cons!51375 lt!1771571 lt!1771579))) (_2!29405 (h!57389 (Cons!51375 lt!1771571 lt!1771579)))))))

(assert (=> b!4616244 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189555)))

(declare-fun lt!1771919 () Unit!110264)

(assert (=> b!4616244 (= lt!1771919 lt!1771926)))

(assert (=> b!4616244 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189555)))

(declare-fun lt!1771911 () Unit!110264)

(declare-fun Unit!110307 () Unit!110264)

(assert (=> b!4616244 (= lt!1771911 Unit!110307)))

(declare-fun res!1934138 () Bool)

(assert (=> b!4616244 (= res!1934138 call!321872)))

(assert (=> b!4616244 (=> (not res!1934138) (not e!2879448))))

(assert (=> b!4616244 e!2879448))

(declare-fun lt!1771930 () Unit!110264)

(declare-fun Unit!110308 () Unit!110264)

(assert (=> b!4616244 (= lt!1771930 Unit!110308)))

(assert (= (and d!1454022 c!790323) b!4616243))

(assert (= (and d!1454022 (not c!790323)) b!4616244))

(assert (= (and b!4616244 res!1934138) b!4616240))

(assert (= (or b!4616243 b!4616244) bm!321868))

(assert (= (or b!4616243 b!4616244) bm!321867))

(assert (= (or b!4616243 b!4616244) bm!321869))

(assert (= (and d!1454022 res!1934140) b!4616242))

(assert (= (and b!4616242 res!1934139) b!4616241))

(declare-fun m!5450417 () Bool)

(assert (=> bm!321868 m!5450417))

(declare-fun m!5450419 () Bool)

(assert (=> bm!321869 m!5450419))

(declare-fun m!5450421 () Bool)

(assert (=> b!4616244 m!5450421))

(declare-fun m!5450423 () Bool)

(assert (=> b!4616244 m!5450423))

(declare-fun m!5450425 () Bool)

(assert (=> b!4616244 m!5450425))

(declare-fun m!5450427 () Bool)

(assert (=> b!4616244 m!5450427))

(declare-fun m!5450429 () Bool)

(assert (=> b!4616244 m!5450429))

(declare-fun m!5450431 () Bool)

(assert (=> b!4616244 m!5450431))

(declare-fun m!5450433 () Bool)

(assert (=> b!4616244 m!5450433))

(declare-fun m!5450435 () Bool)

(assert (=> b!4616244 m!5450435))

(declare-fun m!5450437 () Bool)

(assert (=> b!4616244 m!5450437))

(assert (=> b!4616244 m!5450433))

(assert (=> b!4616244 m!5450425))

(declare-fun m!5450439 () Bool)

(assert (=> b!4616244 m!5450439))

(declare-fun m!5450441 () Bool)

(assert (=> b!4616244 m!5450441))

(declare-fun m!5450443 () Bool)

(assert (=> bm!321867 m!5450443))

(declare-fun m!5450445 () Bool)

(assert (=> d!1454022 m!5450445))

(declare-fun m!5450447 () Bool)

(assert (=> d!1454022 m!5450447))

(declare-fun m!5450449 () Bool)

(assert (=> b!4616241 m!5450449))

(assert (=> b!4616240 m!5450425))

(declare-fun m!5450451 () Bool)

(assert (=> b!4616242 m!5450451))

(assert (=> b!4616022 d!1454022))

(declare-fun d!1454076 () Bool)

(declare-fun e!2879450 () Bool)

(assert (=> d!1454076 e!2879450))

(declare-fun res!1934142 () Bool)

(assert (=> d!1454076 (=> (not res!1934142) (not e!2879450))))

(declare-fun lt!1771933 () ListMap!4157)

(assert (=> d!1454076 (= res!1934142 (contains!14338 lt!1771933 (_1!29405 (h!57389 oldBucket!40))))))

(declare-fun lt!1771932 () List!51499)

(assert (=> d!1454076 (= lt!1771933 (ListMap!4158 lt!1771932))))

(declare-fun lt!1771935 () Unit!110264)

(declare-fun lt!1771934 () Unit!110264)

(assert (=> d!1454076 (= lt!1771935 lt!1771934)))

(assert (=> d!1454076 (= (getValueByKey!1386 lt!1771932 (_1!29405 (h!57389 oldBucket!40))) (Some!11471 (_2!29405 (h!57389 oldBucket!40))))))

(assert (=> d!1454076 (= lt!1771934 (lemmaContainsTupThenGetReturnValue!822 lt!1771932 (_1!29405 (h!57389 oldBucket!40)) (_2!29405 (h!57389 oldBucket!40))))))

(assert (=> d!1454076 (= lt!1771932 (insertNoDuplicatedKeys!330 (toList!4853 lt!1771569) (_1!29405 (h!57389 oldBucket!40)) (_2!29405 (h!57389 oldBucket!40))))))

(assert (=> d!1454076 (= (+!1829 lt!1771569 (h!57389 oldBucket!40)) lt!1771933)))

(declare-fun b!4616247 () Bool)

(declare-fun res!1934141 () Bool)

(assert (=> b!4616247 (=> (not res!1934141) (not e!2879450))))

(assert (=> b!4616247 (= res!1934141 (= (getValueByKey!1386 (toList!4853 lt!1771933) (_1!29405 (h!57389 oldBucket!40))) (Some!11471 (_2!29405 (h!57389 oldBucket!40)))))))

(declare-fun b!4616248 () Bool)

(assert (=> b!4616248 (= e!2879450 (contains!14342 (toList!4853 lt!1771933) (h!57389 oldBucket!40)))))

(assert (= (and d!1454076 res!1934142) b!4616247))

(assert (= (and b!4616247 res!1934141) b!4616248))

(declare-fun m!5450453 () Bool)

(assert (=> d!1454076 m!5450453))

(declare-fun m!5450455 () Bool)

(assert (=> d!1454076 m!5450455))

(declare-fun m!5450457 () Bool)

(assert (=> d!1454076 m!5450457))

(declare-fun m!5450459 () Bool)

(assert (=> d!1454076 m!5450459))

(declare-fun m!5450461 () Bool)

(assert (=> b!4616247 m!5450461))

(declare-fun m!5450463 () Bool)

(assert (=> b!4616248 m!5450463))

(assert (=> b!4616022 d!1454076))

(declare-fun d!1454078 () Bool)

(assert (=> d!1454078 (= (head!9604 oldBucket!40) (h!57389 oldBucket!40))))

(assert (=> b!4616022 d!1454078))

(declare-fun bs!1018372 () Bool)

(declare-fun b!4616252 () Bool)

(assert (= bs!1018372 (and b!4616252 b!4616243)))

(declare-fun lambda!189557 () Int)

(assert (=> bs!1018372 (= lambda!189557 lambda!189553)))

(declare-fun bs!1018373 () Bool)

(assert (= bs!1018373 (and b!4616252 b!4616244)))

(assert (=> bs!1018373 (= lambda!189557 lambda!189554)))

(assert (=> bs!1018373 (= (= (ListMap!4158 Nil!51375) lt!1771929) (= lambda!189557 lambda!189555))))

(declare-fun bs!1018374 () Bool)

(assert (= bs!1018374 (and b!4616252 d!1454022)))

(assert (=> bs!1018374 (= (= (ListMap!4158 Nil!51375) lt!1771922) (= lambda!189557 lambda!189556))))

(assert (=> b!4616252 true))

(declare-fun bs!1018375 () Bool)

(declare-fun b!4616253 () Bool)

(assert (= bs!1018375 (and b!4616253 b!4616252)))

(declare-fun lambda!189558 () Int)

(assert (=> bs!1018375 (= lambda!189558 lambda!189557)))

(declare-fun bs!1018376 () Bool)

(assert (= bs!1018376 (and b!4616253 b!4616244)))

(assert (=> bs!1018376 (= (= (ListMap!4158 Nil!51375) lt!1771929) (= lambda!189558 lambda!189555))))

(declare-fun bs!1018377 () Bool)

(assert (= bs!1018377 (and b!4616253 b!4616243)))

(assert (=> bs!1018377 (= lambda!189558 lambda!189553)))

(declare-fun bs!1018378 () Bool)

(assert (= bs!1018378 (and b!4616253 d!1454022)))

(assert (=> bs!1018378 (= (= (ListMap!4158 Nil!51375) lt!1771922) (= lambda!189558 lambda!189556))))

(assert (=> bs!1018376 (= lambda!189558 lambda!189554)))

(assert (=> b!4616253 true))

(declare-fun lt!1771954 () ListMap!4157)

(declare-fun lambda!189559 () Int)

(assert (=> bs!1018376 (= (= lt!1771954 lt!1771929) (= lambda!189559 lambda!189555))))

(assert (=> bs!1018377 (= (= lt!1771954 (ListMap!4158 Nil!51375)) (= lambda!189559 lambda!189553))))

(assert (=> bs!1018375 (= (= lt!1771954 (ListMap!4158 Nil!51375)) (= lambda!189559 lambda!189557))))

(assert (=> b!4616253 (= (= lt!1771954 (ListMap!4158 Nil!51375)) (= lambda!189559 lambda!189558))))

(assert (=> bs!1018378 (= (= lt!1771954 lt!1771922) (= lambda!189559 lambda!189556))))

(assert (=> bs!1018376 (= (= lt!1771954 (ListMap!4158 Nil!51375)) (= lambda!189559 lambda!189554))))

(assert (=> b!4616253 true))

(declare-fun bs!1018379 () Bool)

(declare-fun d!1454080 () Bool)

(assert (= bs!1018379 (and d!1454080 b!4616244)))

(declare-fun lt!1771947 () ListMap!4157)

(declare-fun lambda!189560 () Int)

(assert (=> bs!1018379 (= (= lt!1771947 lt!1771929) (= lambda!189560 lambda!189555))))

(declare-fun bs!1018380 () Bool)

(assert (= bs!1018380 (and d!1454080 b!4616243)))

(assert (=> bs!1018380 (= (= lt!1771947 (ListMap!4158 Nil!51375)) (= lambda!189560 lambda!189553))))

(declare-fun bs!1018381 () Bool)

(assert (= bs!1018381 (and d!1454080 b!4616253)))

(assert (=> bs!1018381 (= (= lt!1771947 lt!1771954) (= lambda!189560 lambda!189559))))

(declare-fun bs!1018382 () Bool)

(assert (= bs!1018382 (and d!1454080 b!4616252)))

(assert (=> bs!1018382 (= (= lt!1771947 (ListMap!4158 Nil!51375)) (= lambda!189560 lambda!189557))))

(assert (=> bs!1018381 (= (= lt!1771947 (ListMap!4158 Nil!51375)) (= lambda!189560 lambda!189558))))

(declare-fun bs!1018383 () Bool)

(assert (= bs!1018383 (and d!1454080 d!1454022)))

(assert (=> bs!1018383 (= (= lt!1771947 lt!1771922) (= lambda!189560 lambda!189556))))

(assert (=> bs!1018379 (= (= lt!1771947 (ListMap!4158 Nil!51375)) (= lambda!189560 lambda!189554))))

(assert (=> d!1454080 true))

(declare-fun b!4616249 () Bool)

(declare-fun e!2879452 () Bool)

(assert (=> b!4616249 (= e!2879452 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189559))))

(declare-fun c!790324 () Bool)

(declare-fun bm!321870 () Bool)

(declare-fun call!321875 () Bool)

(assert (=> bm!321870 (= call!321875 (forall!10746 (ite c!790324 (toList!4853 (ListMap!4158 Nil!51375)) oldBucket!40) (ite c!790324 lambda!189557 lambda!189559)))))

(declare-fun e!2879453 () Bool)

(assert (=> d!1454080 e!2879453))

(declare-fun res!1934145 () Bool)

(assert (=> d!1454080 (=> (not res!1934145) (not e!2879453))))

(assert (=> d!1454080 (= res!1934145 (forall!10746 oldBucket!40 lambda!189560))))

(declare-fun e!2879451 () ListMap!4157)

(assert (=> d!1454080 (= lt!1771947 e!2879451)))

(assert (=> d!1454080 (= c!790324 ((_ is Nil!51375) oldBucket!40))))

(assert (=> d!1454080 (noDuplicateKeys!1444 oldBucket!40)))

(assert (=> d!1454080 (= (addToMapMapFromBucket!905 oldBucket!40 (ListMap!4158 Nil!51375)) lt!1771947)))

(declare-fun b!4616250 () Bool)

(assert (=> b!4616250 (= e!2879453 (invariantList!1169 (toList!4853 lt!1771947)))))

(declare-fun b!4616251 () Bool)

(declare-fun res!1934144 () Bool)

(assert (=> b!4616251 (=> (not res!1934144) (not e!2879453))))

(assert (=> b!4616251 (= res!1934144 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189560))))

(assert (=> b!4616252 (= e!2879451 (ListMap!4158 Nil!51375))))

(declare-fun lt!1771956 () Unit!110264)

(declare-fun call!321877 () Unit!110264)

(assert (=> b!4616252 (= lt!1771956 call!321877)))

(declare-fun call!321876 () Bool)

(assert (=> b!4616252 call!321876))

(declare-fun lt!1771953 () Unit!110264)

(assert (=> b!4616252 (= lt!1771953 lt!1771956)))

(assert (=> b!4616252 call!321875))

(declare-fun lt!1771937 () Unit!110264)

(declare-fun Unit!110315 () Unit!110264)

(assert (=> b!4616252 (= lt!1771937 Unit!110315)))

(declare-fun bm!321871 () Bool)

(assert (=> bm!321871 (= call!321877 (lemmaContainsAllItsOwnKeys!471 (ListMap!4158 Nil!51375)))))

(declare-fun lt!1771948 () ListMap!4157)

(declare-fun bm!321872 () Bool)

(assert (=> bm!321872 (= call!321876 (forall!10746 (ite c!790324 (toList!4853 (ListMap!4158 Nil!51375)) (toList!4853 lt!1771948)) (ite c!790324 lambda!189557 lambda!189559)))))

(assert (=> b!4616253 (= e!2879451 lt!1771954)))

(assert (=> b!4616253 (= lt!1771948 (+!1829 (ListMap!4158 Nil!51375) (h!57389 oldBucket!40)))))

(assert (=> b!4616253 (= lt!1771954 (addToMapMapFromBucket!905 (t!358505 oldBucket!40) (+!1829 (ListMap!4158 Nil!51375) (h!57389 oldBucket!40))))))

(declare-fun lt!1771942 () Unit!110264)

(assert (=> b!4616253 (= lt!1771942 call!321877)))

(assert (=> b!4616253 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189558)))

(declare-fun lt!1771940 () Unit!110264)

(assert (=> b!4616253 (= lt!1771940 lt!1771942)))

(assert (=> b!4616253 (forall!10746 (toList!4853 lt!1771948) lambda!189559)))

(declare-fun lt!1771945 () Unit!110264)

(declare-fun Unit!110319 () Unit!110264)

(assert (=> b!4616253 (= lt!1771945 Unit!110319)))

(assert (=> b!4616253 (forall!10746 (t!358505 oldBucket!40) lambda!189559)))

(declare-fun lt!1771943 () Unit!110264)

(declare-fun Unit!110320 () Unit!110264)

(assert (=> b!4616253 (= lt!1771943 Unit!110320)))

(declare-fun lt!1771950 () Unit!110264)

(declare-fun Unit!110322 () Unit!110264)

(assert (=> b!4616253 (= lt!1771950 Unit!110322)))

(declare-fun lt!1771938 () Unit!110264)

(assert (=> b!4616253 (= lt!1771938 (forallContained!2963 (toList!4853 lt!1771948) lambda!189559 (h!57389 oldBucket!40)))))

(assert (=> b!4616253 (contains!14338 lt!1771948 (_1!29405 (h!57389 oldBucket!40)))))

(declare-fun lt!1771939 () Unit!110264)

(declare-fun Unit!110323 () Unit!110264)

(assert (=> b!4616253 (= lt!1771939 Unit!110323)))

(assert (=> b!4616253 (contains!14338 lt!1771954 (_1!29405 (h!57389 oldBucket!40)))))

(declare-fun lt!1771946 () Unit!110264)

(declare-fun Unit!110324 () Unit!110264)

(assert (=> b!4616253 (= lt!1771946 Unit!110324)))

(assert (=> b!4616253 (forall!10746 oldBucket!40 lambda!189559)))

(declare-fun lt!1771952 () Unit!110264)

(declare-fun Unit!110325 () Unit!110264)

(assert (=> b!4616253 (= lt!1771952 Unit!110325)))

(assert (=> b!4616253 call!321876))

(declare-fun lt!1771941 () Unit!110264)

(declare-fun Unit!110326 () Unit!110264)

(assert (=> b!4616253 (= lt!1771941 Unit!110326)))

(declare-fun lt!1771949 () Unit!110264)

(declare-fun Unit!110327 () Unit!110264)

(assert (=> b!4616253 (= lt!1771949 Unit!110327)))

(declare-fun lt!1771951 () Unit!110264)

(assert (=> b!4616253 (= lt!1771951 (addForallContainsKeyThenBeforeAdding!470 (ListMap!4158 Nil!51375) lt!1771954 (_1!29405 (h!57389 oldBucket!40)) (_2!29405 (h!57389 oldBucket!40))))))

(assert (=> b!4616253 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189559)))

(declare-fun lt!1771944 () Unit!110264)

(assert (=> b!4616253 (= lt!1771944 lt!1771951)))

(assert (=> b!4616253 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189559)))

(declare-fun lt!1771936 () Unit!110264)

(declare-fun Unit!110329 () Unit!110264)

(assert (=> b!4616253 (= lt!1771936 Unit!110329)))

(declare-fun res!1934143 () Bool)

(assert (=> b!4616253 (= res!1934143 call!321875)))

(assert (=> b!4616253 (=> (not res!1934143) (not e!2879452))))

(assert (=> b!4616253 e!2879452))

(declare-fun lt!1771955 () Unit!110264)

(declare-fun Unit!110330 () Unit!110264)

(assert (=> b!4616253 (= lt!1771955 Unit!110330)))

(assert (= (and d!1454080 c!790324) b!4616252))

(assert (= (and d!1454080 (not c!790324)) b!4616253))

(assert (= (and b!4616253 res!1934143) b!4616249))

(assert (= (or b!4616252 b!4616253) bm!321871))

(assert (= (or b!4616252 b!4616253) bm!321870))

(assert (= (or b!4616252 b!4616253) bm!321872))

(assert (= (and d!1454080 res!1934145) b!4616251))

(assert (= (and b!4616251 res!1934144) b!4616250))

(assert (=> bm!321871 m!5450417))

(declare-fun m!5450465 () Bool)

(assert (=> bm!321872 m!5450465))

(declare-fun m!5450467 () Bool)

(assert (=> b!4616253 m!5450467))

(declare-fun m!5450469 () Bool)

(assert (=> b!4616253 m!5450469))

(declare-fun m!5450471 () Bool)

(assert (=> b!4616253 m!5450471))

(declare-fun m!5450473 () Bool)

(assert (=> b!4616253 m!5450473))

(declare-fun m!5450475 () Bool)

(assert (=> b!4616253 m!5450475))

(declare-fun m!5450477 () Bool)

(assert (=> b!4616253 m!5450477))

(declare-fun m!5450479 () Bool)

(assert (=> b!4616253 m!5450479))

(declare-fun m!5450481 () Bool)

(assert (=> b!4616253 m!5450481))

(declare-fun m!5450483 () Bool)

(assert (=> b!4616253 m!5450483))

(assert (=> b!4616253 m!5450479))

(assert (=> b!4616253 m!5450471))

(declare-fun m!5450485 () Bool)

(assert (=> b!4616253 m!5450485))

(declare-fun m!5450487 () Bool)

(assert (=> b!4616253 m!5450487))

(declare-fun m!5450489 () Bool)

(assert (=> bm!321870 m!5450489))

(declare-fun m!5450491 () Bool)

(assert (=> d!1454080 m!5450491))

(assert (=> d!1454080 m!5449895))

(declare-fun m!5450493 () Bool)

(assert (=> b!4616250 m!5450493))

(assert (=> b!4616249 m!5450471))

(declare-fun m!5450495 () Bool)

(assert (=> b!4616251 m!5450495))

(assert (=> b!4616022 d!1454080))

(declare-fun d!1454082 () Bool)

(assert (=> d!1454082 (= (eq!787 (addToMapMapFromBucket!905 (Cons!51375 lt!1771571 lt!1771579) (ListMap!4158 Nil!51375)) (+!1829 lt!1771569 lt!1771571)) (= (content!8733 (toList!4853 (addToMapMapFromBucket!905 (Cons!51375 lt!1771571 lt!1771579) (ListMap!4158 Nil!51375)))) (content!8733 (toList!4853 (+!1829 lt!1771569 lt!1771571)))))))

(declare-fun bs!1018384 () Bool)

(assert (= bs!1018384 d!1454082))

(declare-fun m!5450497 () Bool)

(assert (=> bs!1018384 m!5450497))

(declare-fun m!5450499 () Bool)

(assert (=> bs!1018384 m!5450499))

(assert (=> b!4616022 d!1454082))

(declare-fun d!1454084 () Bool)

(declare-fun e!2879454 () Bool)

(assert (=> d!1454084 e!2879454))

(declare-fun res!1934147 () Bool)

(assert (=> d!1454084 (=> (not res!1934147) (not e!2879454))))

(declare-fun lt!1771958 () ListMap!4157)

(assert (=> d!1454084 (= res!1934147 (contains!14338 lt!1771958 (_1!29405 lt!1771571)))))

(declare-fun lt!1771957 () List!51499)

(assert (=> d!1454084 (= lt!1771958 (ListMap!4158 lt!1771957))))

(declare-fun lt!1771960 () Unit!110264)

(declare-fun lt!1771959 () Unit!110264)

(assert (=> d!1454084 (= lt!1771960 lt!1771959)))

(assert (=> d!1454084 (= (getValueByKey!1386 lt!1771957 (_1!29405 lt!1771571)) (Some!11471 (_2!29405 lt!1771571)))))

(assert (=> d!1454084 (= lt!1771959 (lemmaContainsTupThenGetReturnValue!822 lt!1771957 (_1!29405 lt!1771571) (_2!29405 lt!1771571)))))

(assert (=> d!1454084 (= lt!1771957 (insertNoDuplicatedKeys!330 (toList!4853 lt!1771569) (_1!29405 lt!1771571) (_2!29405 lt!1771571)))))

(assert (=> d!1454084 (= (+!1829 lt!1771569 lt!1771571) lt!1771958)))

(declare-fun b!4616254 () Bool)

(declare-fun res!1934146 () Bool)

(assert (=> b!4616254 (=> (not res!1934146) (not e!2879454))))

(assert (=> b!4616254 (= res!1934146 (= (getValueByKey!1386 (toList!4853 lt!1771958) (_1!29405 lt!1771571)) (Some!11471 (_2!29405 lt!1771571))))))

(declare-fun b!4616255 () Bool)

(assert (=> b!4616255 (= e!2879454 (contains!14342 (toList!4853 lt!1771958) lt!1771571))))

(assert (= (and d!1454084 res!1934147) b!4616254))

(assert (= (and b!4616254 res!1934146) b!4616255))

(declare-fun m!5450501 () Bool)

(assert (=> d!1454084 m!5450501))

(declare-fun m!5450503 () Bool)

(assert (=> d!1454084 m!5450503))

(declare-fun m!5450505 () Bool)

(assert (=> d!1454084 m!5450505))

(declare-fun m!5450507 () Bool)

(assert (=> d!1454084 m!5450507))

(declare-fun m!5450509 () Bool)

(assert (=> b!4616254 m!5450509))

(declare-fun m!5450511 () Bool)

(assert (=> b!4616255 m!5450511))

(assert (=> b!4616022 d!1454084))

(declare-fun d!1454086 () Bool)

(assert (=> d!1454086 (eq!787 (addToMapMapFromBucket!905 (Cons!51375 lt!1771571 lt!1771579) (ListMap!4158 Nil!51375)) (+!1829 (addToMapMapFromBucket!905 lt!1771579 (ListMap!4158 Nil!51375)) lt!1771571))))

(declare-fun lt!1771963 () Unit!110264)

(declare-fun choose!31090 (tuple2!52222 List!51499 ListMap!4157) Unit!110264)

(assert (=> d!1454086 (= lt!1771963 (choose!31090 lt!1771571 lt!1771579 (ListMap!4158 Nil!51375)))))

(assert (=> d!1454086 (noDuplicateKeys!1444 lt!1771579)))

(assert (=> d!1454086 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!38 lt!1771571 lt!1771579 (ListMap!4158 Nil!51375)) lt!1771963)))

(declare-fun bs!1018385 () Bool)

(assert (= bs!1018385 d!1454086))

(declare-fun m!5450513 () Bool)

(assert (=> bs!1018385 m!5450513))

(assert (=> bs!1018385 m!5449923))

(assert (=> bs!1018385 m!5449899))

(assert (=> bs!1018385 m!5449899))

(declare-fun m!5450515 () Bool)

(assert (=> bs!1018385 m!5450515))

(declare-fun m!5450517 () Bool)

(assert (=> bs!1018385 m!5450517))

(assert (=> bs!1018385 m!5449923))

(assert (=> bs!1018385 m!5450515))

(declare-fun m!5450519 () Bool)

(assert (=> bs!1018385 m!5450519))

(assert (=> b!4616022 d!1454086))

(declare-fun d!1454088 () Bool)

(assert (=> d!1454088 (= (eq!787 lt!1771568 lt!1771576) (= (content!8733 (toList!4853 lt!1771568)) (content!8733 (toList!4853 lt!1771576))))))

(declare-fun bs!1018386 () Bool)

(assert (= bs!1018386 d!1454088))

(assert (=> bs!1018386 m!5450119))

(declare-fun m!5450521 () Bool)

(assert (=> bs!1018386 m!5450521))

(assert (=> b!4616028 d!1454088))

(declare-fun d!1454090 () Bool)

(declare-fun res!1934152 () Bool)

(declare-fun e!2879459 () Bool)

(assert (=> d!1454090 (=> res!1934152 e!2879459)))

(assert (=> d!1454090 (= res!1934152 (and ((_ is Cons!51375) lt!1771579) (= (_1!29405 (h!57389 lt!1771579)) key!4968)))))

(assert (=> d!1454090 (= (containsKey!2326 lt!1771579 key!4968) e!2879459)))

(declare-fun b!4616260 () Bool)

(declare-fun e!2879460 () Bool)

(assert (=> b!4616260 (= e!2879459 e!2879460)))

(declare-fun res!1934153 () Bool)

(assert (=> b!4616260 (=> (not res!1934153) (not e!2879460))))

(assert (=> b!4616260 (= res!1934153 ((_ is Cons!51375) lt!1771579))))

(declare-fun b!4616261 () Bool)

(assert (=> b!4616261 (= e!2879460 (containsKey!2326 (t!358505 lt!1771579) key!4968))))

(assert (= (and d!1454090 (not res!1934152)) b!4616260))

(assert (= (and b!4616260 res!1934153) b!4616261))

(declare-fun m!5450523 () Bool)

(assert (=> b!4616261 m!5450523))

(assert (=> b!4616018 d!1454090))

(declare-fun bs!1018387 () Bool)

(declare-fun d!1454092 () Bool)

(assert (= bs!1018387 (and d!1454092 b!4616244)))

(declare-fun lambda!189563 () Int)

(assert (=> bs!1018387 (not (= lambda!189563 lambda!189555))))

(declare-fun bs!1018388 () Bool)

(assert (= bs!1018388 (and d!1454092 b!4616243)))

(assert (=> bs!1018388 (not (= lambda!189563 lambda!189553))))

(declare-fun bs!1018389 () Bool)

(assert (= bs!1018389 (and d!1454092 d!1454080)))

(assert (=> bs!1018389 (not (= lambda!189563 lambda!189560))))

(declare-fun bs!1018390 () Bool)

(assert (= bs!1018390 (and d!1454092 b!4616253)))

(assert (=> bs!1018390 (not (= lambda!189563 lambda!189559))))

(declare-fun bs!1018391 () Bool)

(assert (= bs!1018391 (and d!1454092 b!4616252)))

(assert (=> bs!1018391 (not (= lambda!189563 lambda!189557))))

(assert (=> bs!1018390 (not (= lambda!189563 lambda!189558))))

(declare-fun bs!1018392 () Bool)

(assert (= bs!1018392 (and d!1454092 d!1454022)))

(assert (=> bs!1018392 (not (= lambda!189563 lambda!189556))))

(assert (=> bs!1018387 (not (= lambda!189563 lambda!189554))))

(assert (=> d!1454092 true))

(assert (=> d!1454092 true))

(assert (=> d!1454092 (= (allKeysSameHash!1298 newBucket!224 hash!414 hashF!1389) (forall!10746 newBucket!224 lambda!189563))))

(declare-fun bs!1018393 () Bool)

(assert (= bs!1018393 d!1454092))

(declare-fun m!5450525 () Bool)

(assert (=> bs!1018393 m!5450525))

(assert (=> b!4616029 d!1454092))

(declare-fun d!1454094 () Bool)

(declare-fun res!1934158 () Bool)

(declare-fun e!2879465 () Bool)

(assert (=> d!1454094 (=> res!1934158 e!2879465)))

(assert (=> d!1454094 (= res!1934158 ((_ is Nil!51376) lt!1771573))))

(assert (=> d!1454094 (= (forall!10744 lt!1771573 lambda!189460) e!2879465)))

(declare-fun b!4616270 () Bool)

(declare-fun e!2879466 () Bool)

(assert (=> b!4616270 (= e!2879465 e!2879466)))

(declare-fun res!1934159 () Bool)

(assert (=> b!4616270 (=> (not res!1934159) (not e!2879466))))

(declare-fun dynLambda!21463 (Int tuple2!52224) Bool)

(assert (=> b!4616270 (= res!1934159 (dynLambda!21463 lambda!189460 (h!57390 lt!1771573)))))

(declare-fun b!4616271 () Bool)

(assert (=> b!4616271 (= e!2879466 (forall!10744 (t!358506 lt!1771573) lambda!189460))))

(assert (= (and d!1454094 (not res!1934158)) b!4616270))

(assert (= (and b!4616270 res!1934159) b!4616271))

(declare-fun b_lambda!170537 () Bool)

(assert (=> (not b_lambda!170537) (not b!4616270)))

(declare-fun m!5450527 () Bool)

(assert (=> b!4616270 m!5450527))

(declare-fun m!5450529 () Bool)

(assert (=> b!4616271 m!5450529))

(assert (=> b!4616019 d!1454094))

(declare-fun d!1454096 () Bool)

(assert (=> d!1454096 (= (eq!787 lt!1771566 (-!534 lt!1771576 key!4968)) (= (content!8733 (toList!4853 lt!1771566)) (content!8733 (toList!4853 (-!534 lt!1771576 key!4968)))))))

(declare-fun bs!1018394 () Bool)

(assert (= bs!1018394 d!1454096))

(declare-fun m!5450531 () Bool)

(assert (=> bs!1018394 m!5450531))

(declare-fun m!5450533 () Bool)

(assert (=> bs!1018394 m!5450533))

(assert (=> b!4616030 d!1454096))

(declare-fun d!1454098 () Bool)

(declare-fun e!2879467 () Bool)

(assert (=> d!1454098 e!2879467))

(declare-fun res!1934160 () Bool)

(assert (=> d!1454098 (=> (not res!1934160) (not e!2879467))))

(declare-fun lt!1771964 () ListMap!4157)

(assert (=> d!1454098 (= res!1934160 (not (contains!14338 lt!1771964 key!4968)))))

(assert (=> d!1454098 (= lt!1771964 (ListMap!4158 (removePresrvNoDuplicatedKeys!243 (toList!4853 lt!1771576) key!4968)))))

(assert (=> d!1454098 (= (-!534 lt!1771576 key!4968) lt!1771964)))

(declare-fun b!4616272 () Bool)

(assert (=> b!4616272 (= e!2879467 (= ((_ map and) (content!8730 (keys!18057 lt!1771576)) ((_ map not) (store ((as const (Array K!12760 Bool)) false) key!4968 true))) (content!8730 (keys!18057 lt!1771964))))))

(assert (= (and d!1454098 res!1934160) b!4616272))

(declare-fun m!5450535 () Bool)

(assert (=> d!1454098 m!5450535))

(declare-fun m!5450537 () Bool)

(assert (=> d!1454098 m!5450537))

(declare-fun m!5450539 () Bool)

(assert (=> b!4616272 m!5450539))

(declare-fun m!5450541 () Bool)

(assert (=> b!4616272 m!5450541))

(assert (=> b!4616272 m!5450541))

(declare-fun m!5450543 () Bool)

(assert (=> b!4616272 m!5450543))

(assert (=> b!4616272 m!5450089))

(assert (=> b!4616272 m!5450539))

(declare-fun m!5450545 () Bool)

(assert (=> b!4616272 m!5450545))

(assert (=> b!4616030 d!1454098))

(declare-fun d!1454100 () Bool)

(assert (=> d!1454100 (eq!787 (-!534 lt!1771568 key!4968) (-!534 lt!1771576 key!4968))))

(declare-fun lt!1771967 () Unit!110264)

(declare-fun choose!31091 (ListMap!4157 ListMap!4157 K!12760) Unit!110264)

(assert (=> d!1454100 (= lt!1771967 (choose!31091 lt!1771568 lt!1771576 key!4968))))

(assert (=> d!1454100 (eq!787 lt!1771568 lt!1771576)))

(assert (=> d!1454100 (= (lemmaRemovePreservesEq!6 lt!1771568 lt!1771576 key!4968) lt!1771967)))

(declare-fun bs!1018395 () Bool)

(assert (= bs!1018395 d!1454100))

(assert (=> bs!1018395 m!5449881))

(assert (=> bs!1018395 m!5449941))

(assert (=> bs!1018395 m!5449871))

(declare-fun m!5450547 () Bool)

(assert (=> bs!1018395 m!5450547))

(assert (=> bs!1018395 m!5449881))

(assert (=> bs!1018395 m!5449871))

(declare-fun m!5450549 () Bool)

(assert (=> bs!1018395 m!5450549))

(assert (=> b!4616030 d!1454100))

(declare-fun bs!1018396 () Bool)

(declare-fun b!4616276 () Bool)

(assert (= bs!1018396 (and b!4616276 b!4616244)))

(declare-fun lambda!189564 () Int)

(assert (=> bs!1018396 (= (= (ListMap!4158 Nil!51375) lt!1771929) (= lambda!189564 lambda!189555))))

(declare-fun bs!1018397 () Bool)

(assert (= bs!1018397 (and b!4616276 b!4616243)))

(assert (=> bs!1018397 (= lambda!189564 lambda!189553)))

(declare-fun bs!1018398 () Bool)

(assert (= bs!1018398 (and b!4616276 b!4616253)))

(assert (=> bs!1018398 (= (= (ListMap!4158 Nil!51375) lt!1771954) (= lambda!189564 lambda!189559))))

(declare-fun bs!1018399 () Bool)

(assert (= bs!1018399 (and b!4616276 b!4616252)))

(assert (=> bs!1018399 (= lambda!189564 lambda!189557)))

(assert (=> bs!1018398 (= lambda!189564 lambda!189558)))

(declare-fun bs!1018400 () Bool)

(assert (= bs!1018400 (and b!4616276 d!1454022)))

(assert (=> bs!1018400 (= (= (ListMap!4158 Nil!51375) lt!1771922) (= lambda!189564 lambda!189556))))

(assert (=> bs!1018396 (= lambda!189564 lambda!189554)))

(declare-fun bs!1018401 () Bool)

(assert (= bs!1018401 (and b!4616276 d!1454092)))

(assert (=> bs!1018401 (not (= lambda!189564 lambda!189563))))

(declare-fun bs!1018402 () Bool)

(assert (= bs!1018402 (and b!4616276 d!1454080)))

(assert (=> bs!1018402 (= (= (ListMap!4158 Nil!51375) lt!1771947) (= lambda!189564 lambda!189560))))

(assert (=> b!4616276 true))

(declare-fun bs!1018403 () Bool)

(declare-fun b!4616277 () Bool)

(assert (= bs!1018403 (and b!4616277 b!4616244)))

(declare-fun lambda!189565 () Int)

(assert (=> bs!1018403 (= (= (ListMap!4158 Nil!51375) lt!1771929) (= lambda!189565 lambda!189555))))

(declare-fun bs!1018404 () Bool)

(assert (= bs!1018404 (and b!4616277 b!4616243)))

(assert (=> bs!1018404 (= lambda!189565 lambda!189553)))

(declare-fun bs!1018405 () Bool)

(assert (= bs!1018405 (and b!4616277 b!4616276)))

(assert (=> bs!1018405 (= lambda!189565 lambda!189564)))

(declare-fun bs!1018406 () Bool)

(assert (= bs!1018406 (and b!4616277 b!4616253)))

(assert (=> bs!1018406 (= (= (ListMap!4158 Nil!51375) lt!1771954) (= lambda!189565 lambda!189559))))

(declare-fun bs!1018407 () Bool)

(assert (= bs!1018407 (and b!4616277 b!4616252)))

(assert (=> bs!1018407 (= lambda!189565 lambda!189557)))

(assert (=> bs!1018406 (= lambda!189565 lambda!189558)))

(declare-fun bs!1018408 () Bool)

(assert (= bs!1018408 (and b!4616277 d!1454022)))

(assert (=> bs!1018408 (= (= (ListMap!4158 Nil!51375) lt!1771922) (= lambda!189565 lambda!189556))))

(assert (=> bs!1018403 (= lambda!189565 lambda!189554)))

(declare-fun bs!1018409 () Bool)

(assert (= bs!1018409 (and b!4616277 d!1454092)))

(assert (=> bs!1018409 (not (= lambda!189565 lambda!189563))))

(declare-fun bs!1018410 () Bool)

(assert (= bs!1018410 (and b!4616277 d!1454080)))

(assert (=> bs!1018410 (= (= (ListMap!4158 Nil!51375) lt!1771947) (= lambda!189565 lambda!189560))))

(assert (=> b!4616277 true))

(declare-fun lt!1771986 () ListMap!4157)

(declare-fun lambda!189566 () Int)

(assert (=> bs!1018403 (= (= lt!1771986 lt!1771929) (= lambda!189566 lambda!189555))))

(assert (=> b!4616277 (= (= lt!1771986 (ListMap!4158 Nil!51375)) (= lambda!189566 lambda!189565))))

(assert (=> bs!1018404 (= (= lt!1771986 (ListMap!4158 Nil!51375)) (= lambda!189566 lambda!189553))))

(assert (=> bs!1018405 (= (= lt!1771986 (ListMap!4158 Nil!51375)) (= lambda!189566 lambda!189564))))

(assert (=> bs!1018406 (= (= lt!1771986 lt!1771954) (= lambda!189566 lambda!189559))))

(assert (=> bs!1018407 (= (= lt!1771986 (ListMap!4158 Nil!51375)) (= lambda!189566 lambda!189557))))

(assert (=> bs!1018406 (= (= lt!1771986 (ListMap!4158 Nil!51375)) (= lambda!189566 lambda!189558))))

(assert (=> bs!1018408 (= (= lt!1771986 lt!1771922) (= lambda!189566 lambda!189556))))

(assert (=> bs!1018403 (= (= lt!1771986 (ListMap!4158 Nil!51375)) (= lambda!189566 lambda!189554))))

(assert (=> bs!1018409 (not (= lambda!189566 lambda!189563))))

(assert (=> bs!1018410 (= (= lt!1771986 lt!1771947) (= lambda!189566 lambda!189560))))

(assert (=> b!4616277 true))

(declare-fun bs!1018411 () Bool)

(declare-fun d!1454102 () Bool)

(assert (= bs!1018411 (and d!1454102 b!4616244)))

(declare-fun lambda!189567 () Int)

(declare-fun lt!1771979 () ListMap!4157)

(assert (=> bs!1018411 (= (= lt!1771979 lt!1771929) (= lambda!189567 lambda!189555))))

(declare-fun bs!1018412 () Bool)

(assert (= bs!1018412 (and d!1454102 b!4616277)))

(assert (=> bs!1018412 (= (= lt!1771979 (ListMap!4158 Nil!51375)) (= lambda!189567 lambda!189565))))

(declare-fun bs!1018413 () Bool)

(assert (= bs!1018413 (and d!1454102 b!4616243)))

(assert (=> bs!1018413 (= (= lt!1771979 (ListMap!4158 Nil!51375)) (= lambda!189567 lambda!189553))))

(assert (=> bs!1018412 (= (= lt!1771979 lt!1771986) (= lambda!189567 lambda!189566))))

(declare-fun bs!1018414 () Bool)

(assert (= bs!1018414 (and d!1454102 b!4616276)))

(assert (=> bs!1018414 (= (= lt!1771979 (ListMap!4158 Nil!51375)) (= lambda!189567 lambda!189564))))

(declare-fun bs!1018415 () Bool)

(assert (= bs!1018415 (and d!1454102 b!4616253)))

(assert (=> bs!1018415 (= (= lt!1771979 lt!1771954) (= lambda!189567 lambda!189559))))

(declare-fun bs!1018416 () Bool)

(assert (= bs!1018416 (and d!1454102 b!4616252)))

(assert (=> bs!1018416 (= (= lt!1771979 (ListMap!4158 Nil!51375)) (= lambda!189567 lambda!189557))))

(assert (=> bs!1018415 (= (= lt!1771979 (ListMap!4158 Nil!51375)) (= lambda!189567 lambda!189558))))

(declare-fun bs!1018417 () Bool)

(assert (= bs!1018417 (and d!1454102 d!1454022)))

(assert (=> bs!1018417 (= (= lt!1771979 lt!1771922) (= lambda!189567 lambda!189556))))

(assert (=> bs!1018411 (= (= lt!1771979 (ListMap!4158 Nil!51375)) (= lambda!189567 lambda!189554))))

(declare-fun bs!1018418 () Bool)

(assert (= bs!1018418 (and d!1454102 d!1454092)))

(assert (=> bs!1018418 (not (= lambda!189567 lambda!189563))))

(declare-fun bs!1018419 () Bool)

(assert (= bs!1018419 (and d!1454102 d!1454080)))

(assert (=> bs!1018419 (= (= lt!1771979 lt!1771947) (= lambda!189567 lambda!189560))))

(assert (=> d!1454102 true))

(declare-fun b!4616273 () Bool)

(declare-fun e!2879469 () Bool)

(assert (=> b!4616273 (= e!2879469 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189566))))

(declare-fun c!790325 () Bool)

(declare-fun bm!321873 () Bool)

(declare-fun call!321878 () Bool)

(assert (=> bm!321873 (= call!321878 (forall!10746 (ite c!790325 (toList!4853 (ListMap!4158 Nil!51375)) newBucket!224) (ite c!790325 lambda!189564 lambda!189566)))))

(declare-fun e!2879470 () Bool)

(assert (=> d!1454102 e!2879470))

(declare-fun res!1934163 () Bool)

(assert (=> d!1454102 (=> (not res!1934163) (not e!2879470))))

(assert (=> d!1454102 (= res!1934163 (forall!10746 newBucket!224 lambda!189567))))

(declare-fun e!2879468 () ListMap!4157)

(assert (=> d!1454102 (= lt!1771979 e!2879468)))

(assert (=> d!1454102 (= c!790325 ((_ is Nil!51375) newBucket!224))))

(assert (=> d!1454102 (noDuplicateKeys!1444 newBucket!224)))

(assert (=> d!1454102 (= (addToMapMapFromBucket!905 newBucket!224 (ListMap!4158 Nil!51375)) lt!1771979)))

(declare-fun b!4616274 () Bool)

(assert (=> b!4616274 (= e!2879470 (invariantList!1169 (toList!4853 lt!1771979)))))

(declare-fun b!4616275 () Bool)

(declare-fun res!1934162 () Bool)

(assert (=> b!4616275 (=> (not res!1934162) (not e!2879470))))

(assert (=> b!4616275 (= res!1934162 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189567))))

(assert (=> b!4616276 (= e!2879468 (ListMap!4158 Nil!51375))))

(declare-fun lt!1771988 () Unit!110264)

(declare-fun call!321880 () Unit!110264)

(assert (=> b!4616276 (= lt!1771988 call!321880)))

(declare-fun call!321879 () Bool)

(assert (=> b!4616276 call!321879))

(declare-fun lt!1771985 () Unit!110264)

(assert (=> b!4616276 (= lt!1771985 lt!1771988)))

(assert (=> b!4616276 call!321878))

(declare-fun lt!1771969 () Unit!110264)

(declare-fun Unit!110342 () Unit!110264)

(assert (=> b!4616276 (= lt!1771969 Unit!110342)))

(declare-fun bm!321874 () Bool)

(assert (=> bm!321874 (= call!321880 (lemmaContainsAllItsOwnKeys!471 (ListMap!4158 Nil!51375)))))

(declare-fun bm!321875 () Bool)

(declare-fun lt!1771980 () ListMap!4157)

(assert (=> bm!321875 (= call!321879 (forall!10746 (ite c!790325 (toList!4853 (ListMap!4158 Nil!51375)) (toList!4853 lt!1771980)) (ite c!790325 lambda!189564 lambda!189566)))))

(assert (=> b!4616277 (= e!2879468 lt!1771986)))

(assert (=> b!4616277 (= lt!1771980 (+!1829 (ListMap!4158 Nil!51375) (h!57389 newBucket!224)))))

(assert (=> b!4616277 (= lt!1771986 (addToMapMapFromBucket!905 (t!358505 newBucket!224) (+!1829 (ListMap!4158 Nil!51375) (h!57389 newBucket!224))))))

(declare-fun lt!1771974 () Unit!110264)

(assert (=> b!4616277 (= lt!1771974 call!321880)))

(assert (=> b!4616277 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189565)))

(declare-fun lt!1771972 () Unit!110264)

(assert (=> b!4616277 (= lt!1771972 lt!1771974)))

(assert (=> b!4616277 (forall!10746 (toList!4853 lt!1771980) lambda!189566)))

(declare-fun lt!1771977 () Unit!110264)

(declare-fun Unit!110343 () Unit!110264)

(assert (=> b!4616277 (= lt!1771977 Unit!110343)))

(assert (=> b!4616277 (forall!10746 (t!358505 newBucket!224) lambda!189566)))

(declare-fun lt!1771975 () Unit!110264)

(declare-fun Unit!110344 () Unit!110264)

(assert (=> b!4616277 (= lt!1771975 Unit!110344)))

(declare-fun lt!1771982 () Unit!110264)

(declare-fun Unit!110345 () Unit!110264)

(assert (=> b!4616277 (= lt!1771982 Unit!110345)))

(declare-fun lt!1771970 () Unit!110264)

(assert (=> b!4616277 (= lt!1771970 (forallContained!2963 (toList!4853 lt!1771980) lambda!189566 (h!57389 newBucket!224)))))

(assert (=> b!4616277 (contains!14338 lt!1771980 (_1!29405 (h!57389 newBucket!224)))))

(declare-fun lt!1771971 () Unit!110264)

(declare-fun Unit!110346 () Unit!110264)

(assert (=> b!4616277 (= lt!1771971 Unit!110346)))

(assert (=> b!4616277 (contains!14338 lt!1771986 (_1!29405 (h!57389 newBucket!224)))))

(declare-fun lt!1771978 () Unit!110264)

(declare-fun Unit!110347 () Unit!110264)

(assert (=> b!4616277 (= lt!1771978 Unit!110347)))

(assert (=> b!4616277 (forall!10746 newBucket!224 lambda!189566)))

(declare-fun lt!1771984 () Unit!110264)

(declare-fun Unit!110348 () Unit!110264)

(assert (=> b!4616277 (= lt!1771984 Unit!110348)))

(assert (=> b!4616277 call!321879))

(declare-fun lt!1771973 () Unit!110264)

(declare-fun Unit!110349 () Unit!110264)

(assert (=> b!4616277 (= lt!1771973 Unit!110349)))

(declare-fun lt!1771981 () Unit!110264)

(declare-fun Unit!110350 () Unit!110264)

(assert (=> b!4616277 (= lt!1771981 Unit!110350)))

(declare-fun lt!1771983 () Unit!110264)

(assert (=> b!4616277 (= lt!1771983 (addForallContainsKeyThenBeforeAdding!470 (ListMap!4158 Nil!51375) lt!1771986 (_1!29405 (h!57389 newBucket!224)) (_2!29405 (h!57389 newBucket!224))))))

(assert (=> b!4616277 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189566)))

(declare-fun lt!1771976 () Unit!110264)

(assert (=> b!4616277 (= lt!1771976 lt!1771983)))

(assert (=> b!4616277 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189566)))

(declare-fun lt!1771968 () Unit!110264)

(declare-fun Unit!110351 () Unit!110264)

(assert (=> b!4616277 (= lt!1771968 Unit!110351)))

(declare-fun res!1934161 () Bool)

(assert (=> b!4616277 (= res!1934161 call!321878)))

(assert (=> b!4616277 (=> (not res!1934161) (not e!2879469))))

(assert (=> b!4616277 e!2879469))

(declare-fun lt!1771987 () Unit!110264)

(declare-fun Unit!110352 () Unit!110264)

(assert (=> b!4616277 (= lt!1771987 Unit!110352)))

(assert (= (and d!1454102 c!790325) b!4616276))

(assert (= (and d!1454102 (not c!790325)) b!4616277))

(assert (= (and b!4616277 res!1934161) b!4616273))

(assert (= (or b!4616276 b!4616277) bm!321874))

(assert (= (or b!4616276 b!4616277) bm!321873))

(assert (= (or b!4616276 b!4616277) bm!321875))

(assert (= (and d!1454102 res!1934163) b!4616275))

(assert (= (and b!4616275 res!1934162) b!4616274))

(assert (=> bm!321874 m!5450417))

(declare-fun m!5450551 () Bool)

(assert (=> bm!321875 m!5450551))

(declare-fun m!5450553 () Bool)

(assert (=> b!4616277 m!5450553))

(declare-fun m!5450555 () Bool)

(assert (=> b!4616277 m!5450555))

(declare-fun m!5450557 () Bool)

(assert (=> b!4616277 m!5450557))

(declare-fun m!5450559 () Bool)

(assert (=> b!4616277 m!5450559))

(declare-fun m!5450561 () Bool)

(assert (=> b!4616277 m!5450561))

(declare-fun m!5450563 () Bool)

(assert (=> b!4616277 m!5450563))

(declare-fun m!5450565 () Bool)

(assert (=> b!4616277 m!5450565))

(declare-fun m!5450567 () Bool)

(assert (=> b!4616277 m!5450567))

(declare-fun m!5450569 () Bool)

(assert (=> b!4616277 m!5450569))

(assert (=> b!4616277 m!5450565))

(assert (=> b!4616277 m!5450557))

(declare-fun m!5450571 () Bool)

(assert (=> b!4616277 m!5450571))

(declare-fun m!5450573 () Bool)

(assert (=> b!4616277 m!5450573))

(declare-fun m!5450575 () Bool)

(assert (=> bm!321873 m!5450575))

(declare-fun m!5450577 () Bool)

(assert (=> d!1454102 m!5450577))

(assert (=> d!1454102 m!5449935))

(declare-fun m!5450579 () Bool)

(assert (=> b!4616274 m!5450579))

(assert (=> b!4616273 m!5450557))

(declare-fun m!5450581 () Bool)

(assert (=> b!4616275 m!5450581))

(assert (=> b!4616015 d!1454102))

(declare-fun bs!1018420 () Bool)

(declare-fun b!4616281 () Bool)

(assert (= bs!1018420 (and b!4616281 b!4616244)))

(declare-fun lambda!189568 () Int)

(assert (=> bs!1018420 (= (= (ListMap!4158 Nil!51375) lt!1771929) (= lambda!189568 lambda!189555))))

(declare-fun bs!1018421 () Bool)

(assert (= bs!1018421 (and b!4616281 b!4616277)))

(assert (=> bs!1018421 (= lambda!189568 lambda!189565)))

(declare-fun bs!1018422 () Bool)

(assert (= bs!1018422 (and b!4616281 b!4616243)))

(assert (=> bs!1018422 (= lambda!189568 lambda!189553)))

(declare-fun bs!1018423 () Bool)

(assert (= bs!1018423 (and b!4616281 d!1454102)))

(assert (=> bs!1018423 (= (= (ListMap!4158 Nil!51375) lt!1771979) (= lambda!189568 lambda!189567))))

(assert (=> bs!1018421 (= (= (ListMap!4158 Nil!51375) lt!1771986) (= lambda!189568 lambda!189566))))

(declare-fun bs!1018424 () Bool)

(assert (= bs!1018424 (and b!4616281 b!4616276)))

(assert (=> bs!1018424 (= lambda!189568 lambda!189564)))

(declare-fun bs!1018425 () Bool)

(assert (= bs!1018425 (and b!4616281 b!4616253)))

(assert (=> bs!1018425 (= (= (ListMap!4158 Nil!51375) lt!1771954) (= lambda!189568 lambda!189559))))

(declare-fun bs!1018426 () Bool)

(assert (= bs!1018426 (and b!4616281 b!4616252)))

(assert (=> bs!1018426 (= lambda!189568 lambda!189557)))

(assert (=> bs!1018425 (= lambda!189568 lambda!189558)))

(declare-fun bs!1018427 () Bool)

(assert (= bs!1018427 (and b!4616281 d!1454022)))

(assert (=> bs!1018427 (= (= (ListMap!4158 Nil!51375) lt!1771922) (= lambda!189568 lambda!189556))))

(assert (=> bs!1018420 (= lambda!189568 lambda!189554)))

(declare-fun bs!1018428 () Bool)

(assert (= bs!1018428 (and b!4616281 d!1454092)))

(assert (=> bs!1018428 (not (= lambda!189568 lambda!189563))))

(declare-fun bs!1018429 () Bool)

(assert (= bs!1018429 (and b!4616281 d!1454080)))

(assert (=> bs!1018429 (= (= (ListMap!4158 Nil!51375) lt!1771947) (= lambda!189568 lambda!189560))))

(assert (=> b!4616281 true))

(declare-fun bs!1018430 () Bool)

(declare-fun b!4616282 () Bool)

(assert (= bs!1018430 (and b!4616282 b!4616244)))

(declare-fun lambda!189569 () Int)

(assert (=> bs!1018430 (= (= (ListMap!4158 Nil!51375) lt!1771929) (= lambda!189569 lambda!189555))))

(declare-fun bs!1018431 () Bool)

(assert (= bs!1018431 (and b!4616282 b!4616277)))

(assert (=> bs!1018431 (= lambda!189569 lambda!189565)))

(declare-fun bs!1018432 () Bool)

(assert (= bs!1018432 (and b!4616282 b!4616243)))

(assert (=> bs!1018432 (= lambda!189569 lambda!189553)))

(declare-fun bs!1018433 () Bool)

(assert (= bs!1018433 (and b!4616282 b!4616281)))

(assert (=> bs!1018433 (= lambda!189569 lambda!189568)))

(declare-fun bs!1018434 () Bool)

(assert (= bs!1018434 (and b!4616282 d!1454102)))

(assert (=> bs!1018434 (= (= (ListMap!4158 Nil!51375) lt!1771979) (= lambda!189569 lambda!189567))))

(assert (=> bs!1018431 (= (= (ListMap!4158 Nil!51375) lt!1771986) (= lambda!189569 lambda!189566))))

(declare-fun bs!1018435 () Bool)

(assert (= bs!1018435 (and b!4616282 b!4616276)))

(assert (=> bs!1018435 (= lambda!189569 lambda!189564)))

(declare-fun bs!1018436 () Bool)

(assert (= bs!1018436 (and b!4616282 b!4616253)))

(assert (=> bs!1018436 (= (= (ListMap!4158 Nil!51375) lt!1771954) (= lambda!189569 lambda!189559))))

(declare-fun bs!1018437 () Bool)

(assert (= bs!1018437 (and b!4616282 b!4616252)))

(assert (=> bs!1018437 (= lambda!189569 lambda!189557)))

(assert (=> bs!1018436 (= lambda!189569 lambda!189558)))

(declare-fun bs!1018438 () Bool)

(assert (= bs!1018438 (and b!4616282 d!1454022)))

(assert (=> bs!1018438 (= (= (ListMap!4158 Nil!51375) lt!1771922) (= lambda!189569 lambda!189556))))

(assert (=> bs!1018430 (= lambda!189569 lambda!189554)))

(declare-fun bs!1018439 () Bool)

(assert (= bs!1018439 (and b!4616282 d!1454092)))

(assert (=> bs!1018439 (not (= lambda!189569 lambda!189563))))

(declare-fun bs!1018440 () Bool)

(assert (= bs!1018440 (and b!4616282 d!1454080)))

(assert (=> bs!1018440 (= (= (ListMap!4158 Nil!51375) lt!1771947) (= lambda!189569 lambda!189560))))

(assert (=> b!4616282 true))

(declare-fun lt!1772007 () ListMap!4157)

(declare-fun lambda!189570 () Int)

(assert (=> bs!1018430 (= (= lt!1772007 lt!1771929) (= lambda!189570 lambda!189555))))

(assert (=> bs!1018431 (= (= lt!1772007 (ListMap!4158 Nil!51375)) (= lambda!189570 lambda!189565))))

(assert (=> bs!1018432 (= (= lt!1772007 (ListMap!4158 Nil!51375)) (= lambda!189570 lambda!189553))))

(assert (=> bs!1018433 (= (= lt!1772007 (ListMap!4158 Nil!51375)) (= lambda!189570 lambda!189568))))

(assert (=> b!4616282 (= (= lt!1772007 (ListMap!4158 Nil!51375)) (= lambda!189570 lambda!189569))))

(assert (=> bs!1018434 (= (= lt!1772007 lt!1771979) (= lambda!189570 lambda!189567))))

(assert (=> bs!1018431 (= (= lt!1772007 lt!1771986) (= lambda!189570 lambda!189566))))

(assert (=> bs!1018435 (= (= lt!1772007 (ListMap!4158 Nil!51375)) (= lambda!189570 lambda!189564))))

(assert (=> bs!1018436 (= (= lt!1772007 lt!1771954) (= lambda!189570 lambda!189559))))

(assert (=> bs!1018437 (= (= lt!1772007 (ListMap!4158 Nil!51375)) (= lambda!189570 lambda!189557))))

(assert (=> bs!1018436 (= (= lt!1772007 (ListMap!4158 Nil!51375)) (= lambda!189570 lambda!189558))))

(assert (=> bs!1018438 (= (= lt!1772007 lt!1771922) (= lambda!189570 lambda!189556))))

(assert (=> bs!1018430 (= (= lt!1772007 (ListMap!4158 Nil!51375)) (= lambda!189570 lambda!189554))))

(assert (=> bs!1018439 (not (= lambda!189570 lambda!189563))))

(assert (=> bs!1018440 (= (= lt!1772007 lt!1771947) (= lambda!189570 lambda!189560))))

(assert (=> b!4616282 true))

(declare-fun bs!1018441 () Bool)

(declare-fun d!1454104 () Bool)

(assert (= bs!1018441 (and d!1454104 b!4616244)))

(declare-fun lambda!189571 () Int)

(declare-fun lt!1772000 () ListMap!4157)

(assert (=> bs!1018441 (= (= lt!1772000 lt!1771929) (= lambda!189571 lambda!189555))))

(declare-fun bs!1018442 () Bool)

(assert (= bs!1018442 (and d!1454104 b!4616277)))

(assert (=> bs!1018442 (= (= lt!1772000 (ListMap!4158 Nil!51375)) (= lambda!189571 lambda!189565))))

(declare-fun bs!1018443 () Bool)

(assert (= bs!1018443 (and d!1454104 b!4616243)))

(assert (=> bs!1018443 (= (= lt!1772000 (ListMap!4158 Nil!51375)) (= lambda!189571 lambda!189553))))

(declare-fun bs!1018444 () Bool)

(assert (= bs!1018444 (and d!1454104 b!4616281)))

(assert (=> bs!1018444 (= (= lt!1772000 (ListMap!4158 Nil!51375)) (= lambda!189571 lambda!189568))))

(declare-fun bs!1018445 () Bool)

(assert (= bs!1018445 (and d!1454104 b!4616282)))

(assert (=> bs!1018445 (= (= lt!1772000 (ListMap!4158 Nil!51375)) (= lambda!189571 lambda!189569))))

(declare-fun bs!1018446 () Bool)

(assert (= bs!1018446 (and d!1454104 d!1454102)))

(assert (=> bs!1018446 (= (= lt!1772000 lt!1771979) (= lambda!189571 lambda!189567))))

(assert (=> bs!1018442 (= (= lt!1772000 lt!1771986) (= lambda!189571 lambda!189566))))

(declare-fun bs!1018447 () Bool)

(assert (= bs!1018447 (and d!1454104 b!4616276)))

(assert (=> bs!1018447 (= (= lt!1772000 (ListMap!4158 Nil!51375)) (= lambda!189571 lambda!189564))))

(declare-fun bs!1018448 () Bool)

(assert (= bs!1018448 (and d!1454104 b!4616253)))

(assert (=> bs!1018448 (= (= lt!1772000 lt!1771954) (= lambda!189571 lambda!189559))))

(declare-fun bs!1018449 () Bool)

(assert (= bs!1018449 (and d!1454104 b!4616252)))

(assert (=> bs!1018449 (= (= lt!1772000 (ListMap!4158 Nil!51375)) (= lambda!189571 lambda!189557))))

(assert (=> bs!1018445 (= (= lt!1772000 lt!1772007) (= lambda!189571 lambda!189570))))

(assert (=> bs!1018448 (= (= lt!1772000 (ListMap!4158 Nil!51375)) (= lambda!189571 lambda!189558))))

(declare-fun bs!1018450 () Bool)

(assert (= bs!1018450 (and d!1454104 d!1454022)))

(assert (=> bs!1018450 (= (= lt!1772000 lt!1771922) (= lambda!189571 lambda!189556))))

(assert (=> bs!1018441 (= (= lt!1772000 (ListMap!4158 Nil!51375)) (= lambda!189571 lambda!189554))))

(declare-fun bs!1018451 () Bool)

(assert (= bs!1018451 (and d!1454104 d!1454092)))

(assert (=> bs!1018451 (not (= lambda!189571 lambda!189563))))

(declare-fun bs!1018452 () Bool)

(assert (= bs!1018452 (and d!1454104 d!1454080)))

(assert (=> bs!1018452 (= (= lt!1772000 lt!1771947) (= lambda!189571 lambda!189560))))

(assert (=> d!1454104 true))

(declare-fun b!4616278 () Bool)

(declare-fun e!2879472 () Bool)

(assert (=> b!4616278 (= e!2879472 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189570))))

(declare-fun call!321881 () Bool)

(declare-fun c!790326 () Bool)

(declare-fun bm!321876 () Bool)

(assert (=> bm!321876 (= call!321881 (forall!10746 (ite c!790326 (toList!4853 (ListMap!4158 Nil!51375)) lt!1771579) (ite c!790326 lambda!189568 lambda!189570)))))

(declare-fun e!2879473 () Bool)

(assert (=> d!1454104 e!2879473))

(declare-fun res!1934166 () Bool)

(assert (=> d!1454104 (=> (not res!1934166) (not e!2879473))))

(assert (=> d!1454104 (= res!1934166 (forall!10746 lt!1771579 lambda!189571))))

(declare-fun e!2879471 () ListMap!4157)

(assert (=> d!1454104 (= lt!1772000 e!2879471)))

(assert (=> d!1454104 (= c!790326 ((_ is Nil!51375) lt!1771579))))

(assert (=> d!1454104 (noDuplicateKeys!1444 lt!1771579)))

(assert (=> d!1454104 (= (addToMapMapFromBucket!905 lt!1771579 (ListMap!4158 Nil!51375)) lt!1772000)))

(declare-fun b!4616279 () Bool)

(assert (=> b!4616279 (= e!2879473 (invariantList!1169 (toList!4853 lt!1772000)))))

(declare-fun b!4616280 () Bool)

(declare-fun res!1934165 () Bool)

(assert (=> b!4616280 (=> (not res!1934165) (not e!2879473))))

(assert (=> b!4616280 (= res!1934165 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189571))))

(assert (=> b!4616281 (= e!2879471 (ListMap!4158 Nil!51375))))

(declare-fun lt!1772009 () Unit!110264)

(declare-fun call!321883 () Unit!110264)

(assert (=> b!4616281 (= lt!1772009 call!321883)))

(declare-fun call!321882 () Bool)

(assert (=> b!4616281 call!321882))

(declare-fun lt!1772006 () Unit!110264)

(assert (=> b!4616281 (= lt!1772006 lt!1772009)))

(assert (=> b!4616281 call!321881))

(declare-fun lt!1771990 () Unit!110264)

(declare-fun Unit!110363 () Unit!110264)

(assert (=> b!4616281 (= lt!1771990 Unit!110363)))

(declare-fun bm!321877 () Bool)

(assert (=> bm!321877 (= call!321883 (lemmaContainsAllItsOwnKeys!471 (ListMap!4158 Nil!51375)))))

(declare-fun bm!321878 () Bool)

(declare-fun lt!1772001 () ListMap!4157)

(assert (=> bm!321878 (= call!321882 (forall!10746 (ite c!790326 (toList!4853 (ListMap!4158 Nil!51375)) (toList!4853 lt!1772001)) (ite c!790326 lambda!189568 lambda!189570)))))

(assert (=> b!4616282 (= e!2879471 lt!1772007)))

(assert (=> b!4616282 (= lt!1772001 (+!1829 (ListMap!4158 Nil!51375) (h!57389 lt!1771579)))))

(assert (=> b!4616282 (= lt!1772007 (addToMapMapFromBucket!905 (t!358505 lt!1771579) (+!1829 (ListMap!4158 Nil!51375) (h!57389 lt!1771579))))))

(declare-fun lt!1771995 () Unit!110264)

(assert (=> b!4616282 (= lt!1771995 call!321883)))

(assert (=> b!4616282 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189569)))

(declare-fun lt!1771993 () Unit!110264)

(assert (=> b!4616282 (= lt!1771993 lt!1771995)))

(assert (=> b!4616282 (forall!10746 (toList!4853 lt!1772001) lambda!189570)))

(declare-fun lt!1771998 () Unit!110264)

(declare-fun Unit!110365 () Unit!110264)

(assert (=> b!4616282 (= lt!1771998 Unit!110365)))

(assert (=> b!4616282 (forall!10746 (t!358505 lt!1771579) lambda!189570)))

(declare-fun lt!1771996 () Unit!110264)

(declare-fun Unit!110366 () Unit!110264)

(assert (=> b!4616282 (= lt!1771996 Unit!110366)))

(declare-fun lt!1772003 () Unit!110264)

(declare-fun Unit!110367 () Unit!110264)

(assert (=> b!4616282 (= lt!1772003 Unit!110367)))

(declare-fun lt!1771991 () Unit!110264)

(assert (=> b!4616282 (= lt!1771991 (forallContained!2963 (toList!4853 lt!1772001) lambda!189570 (h!57389 lt!1771579)))))

(assert (=> b!4616282 (contains!14338 lt!1772001 (_1!29405 (h!57389 lt!1771579)))))

(declare-fun lt!1771992 () Unit!110264)

(declare-fun Unit!110368 () Unit!110264)

(assert (=> b!4616282 (= lt!1771992 Unit!110368)))

(assert (=> b!4616282 (contains!14338 lt!1772007 (_1!29405 (h!57389 lt!1771579)))))

(declare-fun lt!1771999 () Unit!110264)

(declare-fun Unit!110369 () Unit!110264)

(assert (=> b!4616282 (= lt!1771999 Unit!110369)))

(assert (=> b!4616282 (forall!10746 lt!1771579 lambda!189570)))

(declare-fun lt!1772005 () Unit!110264)

(declare-fun Unit!110370 () Unit!110264)

(assert (=> b!4616282 (= lt!1772005 Unit!110370)))

(assert (=> b!4616282 call!321882))

(declare-fun lt!1771994 () Unit!110264)

(declare-fun Unit!110371 () Unit!110264)

(assert (=> b!4616282 (= lt!1771994 Unit!110371)))

(declare-fun lt!1772002 () Unit!110264)

(declare-fun Unit!110372 () Unit!110264)

(assert (=> b!4616282 (= lt!1772002 Unit!110372)))

(declare-fun lt!1772004 () Unit!110264)

(assert (=> b!4616282 (= lt!1772004 (addForallContainsKeyThenBeforeAdding!470 (ListMap!4158 Nil!51375) lt!1772007 (_1!29405 (h!57389 lt!1771579)) (_2!29405 (h!57389 lt!1771579))))))

(assert (=> b!4616282 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189570)))

(declare-fun lt!1771997 () Unit!110264)

(assert (=> b!4616282 (= lt!1771997 lt!1772004)))

(assert (=> b!4616282 (forall!10746 (toList!4853 (ListMap!4158 Nil!51375)) lambda!189570)))

(declare-fun lt!1771989 () Unit!110264)

(declare-fun Unit!110373 () Unit!110264)

(assert (=> b!4616282 (= lt!1771989 Unit!110373)))

(declare-fun res!1934164 () Bool)

(assert (=> b!4616282 (= res!1934164 call!321881)))

(assert (=> b!4616282 (=> (not res!1934164) (not e!2879472))))

(assert (=> b!4616282 e!2879472))

(declare-fun lt!1772008 () Unit!110264)

(declare-fun Unit!110374 () Unit!110264)

(assert (=> b!4616282 (= lt!1772008 Unit!110374)))

(assert (= (and d!1454104 c!790326) b!4616281))

(assert (= (and d!1454104 (not c!790326)) b!4616282))

(assert (= (and b!4616282 res!1934164) b!4616278))

(assert (= (or b!4616281 b!4616282) bm!321877))

(assert (= (or b!4616281 b!4616282) bm!321876))

(assert (= (or b!4616281 b!4616282) bm!321878))

(assert (= (and d!1454104 res!1934166) b!4616280))

(assert (= (and b!4616280 res!1934165) b!4616279))

(assert (=> bm!321877 m!5450417))

(declare-fun m!5450583 () Bool)

(assert (=> bm!321878 m!5450583))

(declare-fun m!5450585 () Bool)

(assert (=> b!4616282 m!5450585))

(declare-fun m!5450587 () Bool)

(assert (=> b!4616282 m!5450587))

(declare-fun m!5450589 () Bool)

(assert (=> b!4616282 m!5450589))

(declare-fun m!5450591 () Bool)

(assert (=> b!4616282 m!5450591))

(declare-fun m!5450593 () Bool)

(assert (=> b!4616282 m!5450593))

(declare-fun m!5450595 () Bool)

(assert (=> b!4616282 m!5450595))

(declare-fun m!5450597 () Bool)

(assert (=> b!4616282 m!5450597))

(declare-fun m!5450599 () Bool)

(assert (=> b!4616282 m!5450599))

(declare-fun m!5450601 () Bool)

(assert (=> b!4616282 m!5450601))

(assert (=> b!4616282 m!5450597))

(assert (=> b!4616282 m!5450589))

(declare-fun m!5450603 () Bool)

(assert (=> b!4616282 m!5450603))

(declare-fun m!5450605 () Bool)

(assert (=> b!4616282 m!5450605))

(declare-fun m!5450607 () Bool)

(assert (=> bm!321876 m!5450607))

(declare-fun m!5450609 () Bool)

(assert (=> d!1454104 m!5450609))

(assert (=> d!1454104 m!5450513))

(declare-fun m!5450611 () Bool)

(assert (=> b!4616279 m!5450611))

(assert (=> b!4616278 m!5450589))

(declare-fun m!5450613 () Bool)

(assert (=> b!4616280 m!5450613))

(assert (=> b!4616015 d!1454104))

(declare-fun b!4616283 () Bool)

(declare-fun e!2879478 () List!51502)

(assert (=> b!4616283 (= e!2879478 (keys!18057 lt!1771576))))

(declare-fun b!4616284 () Bool)

(declare-fun e!2879476 () Unit!110264)

(declare-fun Unit!110375 () Unit!110264)

(assert (=> b!4616284 (= e!2879476 Unit!110375)))

(declare-fun d!1454106 () Bool)

(declare-fun e!2879475 () Bool)

(assert (=> d!1454106 e!2879475))

(declare-fun res!1934167 () Bool)

(assert (=> d!1454106 (=> res!1934167 e!2879475)))

(declare-fun e!2879474 () Bool)

(assert (=> d!1454106 (= res!1934167 e!2879474)))

(declare-fun res!1934168 () Bool)

(assert (=> d!1454106 (=> (not res!1934168) (not e!2879474))))

(declare-fun lt!1772012 () Bool)

(assert (=> d!1454106 (= res!1934168 (not lt!1772012))))

(declare-fun lt!1772015 () Bool)

(assert (=> d!1454106 (= lt!1772012 lt!1772015)))

(declare-fun lt!1772011 () Unit!110264)

(declare-fun e!2879479 () Unit!110264)

(assert (=> d!1454106 (= lt!1772011 e!2879479)))

(declare-fun c!790328 () Bool)

(assert (=> d!1454106 (= c!790328 lt!1772015)))

(assert (=> d!1454106 (= lt!1772015 (containsKey!2328 (toList!4853 lt!1771576) key!4968))))

(assert (=> d!1454106 (= (contains!14338 lt!1771576 key!4968) lt!1772012)))

(declare-fun b!4616285 () Bool)

(declare-fun e!2879477 () Bool)

(assert (=> b!4616285 (= e!2879477 (contains!14340 (keys!18057 lt!1771576) key!4968))))

(declare-fun b!4616286 () Bool)

(assert (=> b!4616286 (= e!2879479 e!2879476)))

(declare-fun c!790327 () Bool)

(declare-fun call!321884 () Bool)

(assert (=> b!4616286 (= c!790327 call!321884)))

(declare-fun b!4616287 () Bool)

(assert (=> b!4616287 (= e!2879475 e!2879477)))

(declare-fun res!1934169 () Bool)

(assert (=> b!4616287 (=> (not res!1934169) (not e!2879477))))

(assert (=> b!4616287 (= res!1934169 (isDefined!8737 (getValueByKey!1386 (toList!4853 lt!1771576) key!4968)))))

(declare-fun b!4616288 () Bool)

(assert (=> b!4616288 (= e!2879474 (not (contains!14340 (keys!18057 lt!1771576) key!4968)))))

(declare-fun b!4616289 () Bool)

(declare-fun lt!1772010 () Unit!110264)

(assert (=> b!4616289 (= e!2879479 lt!1772010)))

(declare-fun lt!1772017 () Unit!110264)

(assert (=> b!4616289 (= lt!1772017 (lemmaContainsKeyImpliesGetValueByKeyDefined!1288 (toList!4853 lt!1771576) key!4968))))

(assert (=> b!4616289 (isDefined!8737 (getValueByKey!1386 (toList!4853 lt!1771576) key!4968))))

(declare-fun lt!1772014 () Unit!110264)

(assert (=> b!4616289 (= lt!1772014 lt!1772017)))

(assert (=> b!4616289 (= lt!1772010 (lemmaInListThenGetKeysListContains!615 (toList!4853 lt!1771576) key!4968))))

(assert (=> b!4616289 call!321884))

(declare-fun b!4616290 () Bool)

(assert (=> b!4616290 false))

(declare-fun lt!1772016 () Unit!110264)

(declare-fun lt!1772013 () Unit!110264)

(assert (=> b!4616290 (= lt!1772016 lt!1772013)))

(assert (=> b!4616290 (containsKey!2328 (toList!4853 lt!1771576) key!4968)))

(assert (=> b!4616290 (= lt!1772013 (lemmaInGetKeysListThenContainsKey!619 (toList!4853 lt!1771576) key!4968))))

(declare-fun Unit!110376 () Unit!110264)

(assert (=> b!4616290 (= e!2879476 Unit!110376)))

(declare-fun b!4616291 () Bool)

(assert (=> b!4616291 (= e!2879478 (getKeysList!620 (toList!4853 lt!1771576)))))

(declare-fun bm!321879 () Bool)

(assert (=> bm!321879 (= call!321884 (contains!14340 e!2879478 key!4968))))

(declare-fun c!790329 () Bool)

(assert (=> bm!321879 (= c!790329 c!790328)))

(assert (= (and d!1454106 c!790328) b!4616289))

(assert (= (and d!1454106 (not c!790328)) b!4616286))

(assert (= (and b!4616286 c!790327) b!4616290))

(assert (= (and b!4616286 (not c!790327)) b!4616284))

(assert (= (or b!4616289 b!4616286) bm!321879))

(assert (= (and bm!321879 c!790329) b!4616291))

(assert (= (and bm!321879 (not c!790329)) b!4616283))

(assert (= (and d!1454106 res!1934168) b!4616288))

(assert (= (and d!1454106 (not res!1934167)) b!4616287))

(assert (= (and b!4616287 res!1934169) b!4616285))

(declare-fun m!5450615 () Bool)

(assert (=> b!4616290 m!5450615))

(declare-fun m!5450617 () Bool)

(assert (=> b!4616290 m!5450617))

(assert (=> d!1454106 m!5450615))

(assert (=> b!4616283 m!5450539))

(assert (=> b!4616288 m!5450539))

(assert (=> b!4616288 m!5450539))

(declare-fun m!5450619 () Bool)

(assert (=> b!4616288 m!5450619))

(declare-fun m!5450621 () Bool)

(assert (=> bm!321879 m!5450621))

(assert (=> b!4616285 m!5450539))

(assert (=> b!4616285 m!5450539))

(assert (=> b!4616285 m!5450619))

(declare-fun m!5450623 () Bool)

(assert (=> b!4616289 m!5450623))

(declare-fun m!5450625 () Bool)

(assert (=> b!4616289 m!5450625))

(assert (=> b!4616289 m!5450625))

(declare-fun m!5450627 () Bool)

(assert (=> b!4616289 m!5450627))

(declare-fun m!5450629 () Bool)

(assert (=> b!4616289 m!5450629))

(assert (=> b!4616287 m!5450625))

(assert (=> b!4616287 m!5450625))

(assert (=> b!4616287 m!5450627))

(declare-fun m!5450631 () Bool)

(assert (=> b!4616291 m!5450631))

(assert (=> b!4616027 d!1454106))

(declare-fun bs!1018453 () Bool)

(declare-fun d!1454108 () Bool)

(assert (= bs!1018453 (and d!1454108 b!4616019)))

(declare-fun lambda!189574 () Int)

(assert (=> bs!1018453 (= lambda!189574 lambda!189460)))

(declare-fun bs!1018454 () Bool)

(assert (= bs!1018454 (and d!1454108 d!1454010)))

(assert (=> bs!1018454 (= lambda!189574 lambda!189472)))

(declare-fun lt!1772020 () ListMap!4157)

(assert (=> d!1454108 (invariantList!1169 (toList!4853 lt!1772020))))

(declare-fun e!2879482 () ListMap!4157)

(assert (=> d!1454108 (= lt!1772020 e!2879482)))

(declare-fun c!790332 () Bool)

(assert (=> d!1454108 (= c!790332 ((_ is Cons!51376) (Cons!51376 (tuple2!52225 hash!414 oldBucket!40) Nil!51376)))))

(assert (=> d!1454108 (forall!10744 (Cons!51376 (tuple2!52225 hash!414 oldBucket!40) Nil!51376) lambda!189574)))

(assert (=> d!1454108 (= (extractMap!1500 (Cons!51376 (tuple2!52225 hash!414 oldBucket!40) Nil!51376)) lt!1772020)))

(declare-fun b!4616296 () Bool)

(assert (=> b!4616296 (= e!2879482 (addToMapMapFromBucket!905 (_2!29406 (h!57390 (Cons!51376 (tuple2!52225 hash!414 oldBucket!40) Nil!51376))) (extractMap!1500 (t!358506 (Cons!51376 (tuple2!52225 hash!414 oldBucket!40) Nil!51376)))))))

(declare-fun b!4616297 () Bool)

(assert (=> b!4616297 (= e!2879482 (ListMap!4158 Nil!51375))))

(assert (= (and d!1454108 c!790332) b!4616296))

(assert (= (and d!1454108 (not c!790332)) b!4616297))

(declare-fun m!5450633 () Bool)

(assert (=> d!1454108 m!5450633))

(declare-fun m!5450635 () Bool)

(assert (=> d!1454108 m!5450635))

(declare-fun m!5450637 () Bool)

(assert (=> b!4616296 m!5450637))

(assert (=> b!4616296 m!5450637))

(declare-fun m!5450639 () Bool)

(assert (=> b!4616296 m!5450639))

(assert (=> b!4616027 d!1454108))

(declare-fun bs!1018455 () Bool)

(declare-fun d!1454110 () Bool)

(assert (= bs!1018455 (and d!1454110 b!4616019)))

(declare-fun lambda!189575 () Int)

(assert (=> bs!1018455 (= lambda!189575 lambda!189460)))

(declare-fun bs!1018456 () Bool)

(assert (= bs!1018456 (and d!1454110 d!1454010)))

(assert (=> bs!1018456 (= lambda!189575 lambda!189472)))

(declare-fun bs!1018457 () Bool)

(assert (= bs!1018457 (and d!1454110 d!1454108)))

(assert (=> bs!1018457 (= lambda!189575 lambda!189574)))

(declare-fun lt!1772021 () ListMap!4157)

(assert (=> d!1454110 (invariantList!1169 (toList!4853 lt!1772021))))

(declare-fun e!2879483 () ListMap!4157)

(assert (=> d!1454110 (= lt!1772021 e!2879483)))

(declare-fun c!790333 () Bool)

(assert (=> d!1454110 (= c!790333 ((_ is Cons!51376) lt!1771573))))

(assert (=> d!1454110 (forall!10744 lt!1771573 lambda!189575)))

(assert (=> d!1454110 (= (extractMap!1500 lt!1771573) lt!1772021)))

(declare-fun b!4616298 () Bool)

(assert (=> b!4616298 (= e!2879483 (addToMapMapFromBucket!905 (_2!29406 (h!57390 lt!1771573)) (extractMap!1500 (t!358506 lt!1771573))))))

(declare-fun b!4616299 () Bool)

(assert (=> b!4616299 (= e!2879483 (ListMap!4158 Nil!51375))))

(assert (= (and d!1454110 c!790333) b!4616298))

(assert (= (and d!1454110 (not c!790333)) b!4616299))

(declare-fun m!5450641 () Bool)

(assert (=> d!1454110 m!5450641))

(declare-fun m!5450643 () Bool)

(assert (=> d!1454110 m!5450643))

(declare-fun m!5450645 () Bool)

(assert (=> b!4616298 m!5450645))

(assert (=> b!4616298 m!5450645))

(declare-fun m!5450647 () Bool)

(assert (=> b!4616298 m!5450647))

(assert (=> b!4616017 d!1454110))

(declare-fun bs!1018458 () Bool)

(declare-fun d!1454112 () Bool)

(assert (= bs!1018458 (and d!1454112 b!4616019)))

(declare-fun lambda!189576 () Int)

(assert (=> bs!1018458 (= lambda!189576 lambda!189460)))

(declare-fun bs!1018459 () Bool)

(assert (= bs!1018459 (and d!1454112 d!1454010)))

(assert (=> bs!1018459 (= lambda!189576 lambda!189472)))

(declare-fun bs!1018460 () Bool)

(assert (= bs!1018460 (and d!1454112 d!1454108)))

(assert (=> bs!1018460 (= lambda!189576 lambda!189574)))

(declare-fun bs!1018461 () Bool)

(assert (= bs!1018461 (and d!1454112 d!1454110)))

(assert (=> bs!1018461 (= lambda!189576 lambda!189575)))

(declare-fun lt!1772022 () ListMap!4157)

(assert (=> d!1454112 (invariantList!1169 (toList!4853 lt!1772022))))

(declare-fun e!2879484 () ListMap!4157)

(assert (=> d!1454112 (= lt!1772022 e!2879484)))

(declare-fun c!790334 () Bool)

(assert (=> d!1454112 (= c!790334 ((_ is Cons!51376) lt!1771572))))

(assert (=> d!1454112 (forall!10744 lt!1771572 lambda!189576)))

(assert (=> d!1454112 (= (extractMap!1500 lt!1771572) lt!1772022)))

(declare-fun b!4616300 () Bool)

(assert (=> b!4616300 (= e!2879484 (addToMapMapFromBucket!905 (_2!29406 (h!57390 lt!1771572)) (extractMap!1500 (t!358506 lt!1771572))))))

(declare-fun b!4616301 () Bool)

(assert (=> b!4616301 (= e!2879484 (ListMap!4158 Nil!51375))))

(assert (= (and d!1454112 c!790334) b!4616300))

(assert (= (and d!1454112 (not c!790334)) b!4616301))

(declare-fun m!5450649 () Bool)

(assert (=> d!1454112 m!5450649))

(declare-fun m!5450651 () Bool)

(assert (=> d!1454112 m!5450651))

(declare-fun m!5450653 () Bool)

(assert (=> b!4616300 m!5450653))

(assert (=> b!4616300 m!5450653))

(declare-fun m!5450655 () Bool)

(assert (=> b!4616300 m!5450655))

(assert (=> b!4616017 d!1454112))

(declare-fun bs!1018462 () Bool)

(declare-fun b!4616305 () Bool)

(assert (= bs!1018462 (and b!4616305 b!4616244)))

(declare-fun lambda!189577 () Int)

(assert (=> bs!1018462 (= (= lt!1771570 lt!1771929) (= lambda!189577 lambda!189555))))

(declare-fun bs!1018463 () Bool)

(assert (= bs!1018463 (and b!4616305 b!4616277)))

(assert (=> bs!1018463 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189577 lambda!189565))))

(declare-fun bs!1018464 () Bool)

(assert (= bs!1018464 (and b!4616305 b!4616243)))

(assert (=> bs!1018464 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189577 lambda!189553))))

(declare-fun bs!1018465 () Bool)

(assert (= bs!1018465 (and b!4616305 b!4616281)))

(assert (=> bs!1018465 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189577 lambda!189568))))

(declare-fun bs!1018466 () Bool)

(assert (= bs!1018466 (and b!4616305 b!4616282)))

(assert (=> bs!1018466 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189577 lambda!189569))))

(declare-fun bs!1018467 () Bool)

(assert (= bs!1018467 (and b!4616305 d!1454102)))

(assert (=> bs!1018467 (= (= lt!1771570 lt!1771979) (= lambda!189577 lambda!189567))))

(assert (=> bs!1018463 (= (= lt!1771570 lt!1771986) (= lambda!189577 lambda!189566))))

(declare-fun bs!1018468 () Bool)

(assert (= bs!1018468 (and b!4616305 b!4616276)))

(assert (=> bs!1018468 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189577 lambda!189564))))

(declare-fun bs!1018469 () Bool)

(assert (= bs!1018469 (and b!4616305 d!1454104)))

(assert (=> bs!1018469 (= (= lt!1771570 lt!1772000) (= lambda!189577 lambda!189571))))

(declare-fun bs!1018470 () Bool)

(assert (= bs!1018470 (and b!4616305 b!4616253)))

(assert (=> bs!1018470 (= (= lt!1771570 lt!1771954) (= lambda!189577 lambda!189559))))

(declare-fun bs!1018471 () Bool)

(assert (= bs!1018471 (and b!4616305 b!4616252)))

(assert (=> bs!1018471 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189577 lambda!189557))))

(assert (=> bs!1018466 (= (= lt!1771570 lt!1772007) (= lambda!189577 lambda!189570))))

(assert (=> bs!1018470 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189577 lambda!189558))))

(declare-fun bs!1018472 () Bool)

(assert (= bs!1018472 (and b!4616305 d!1454022)))

(assert (=> bs!1018472 (= (= lt!1771570 lt!1771922) (= lambda!189577 lambda!189556))))

(assert (=> bs!1018462 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189577 lambda!189554))))

(declare-fun bs!1018473 () Bool)

(assert (= bs!1018473 (and b!4616305 d!1454092)))

(assert (=> bs!1018473 (not (= lambda!189577 lambda!189563))))

(declare-fun bs!1018474 () Bool)

(assert (= bs!1018474 (and b!4616305 d!1454080)))

(assert (=> bs!1018474 (= (= lt!1771570 lt!1771947) (= lambda!189577 lambda!189560))))

(assert (=> b!4616305 true))

(declare-fun bs!1018475 () Bool)

(declare-fun b!4616306 () Bool)

(assert (= bs!1018475 (and b!4616306 b!4616244)))

(declare-fun lambda!189578 () Int)

(assert (=> bs!1018475 (= (= lt!1771570 lt!1771929) (= lambda!189578 lambda!189555))))

(declare-fun bs!1018476 () Bool)

(assert (= bs!1018476 (and b!4616306 b!4616277)))

(assert (=> bs!1018476 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189578 lambda!189565))))

(declare-fun bs!1018477 () Bool)

(assert (= bs!1018477 (and b!4616306 b!4616243)))

(assert (=> bs!1018477 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189578 lambda!189553))))

(declare-fun bs!1018478 () Bool)

(assert (= bs!1018478 (and b!4616306 b!4616305)))

(assert (=> bs!1018478 (= lambda!189578 lambda!189577)))

(declare-fun bs!1018479 () Bool)

(assert (= bs!1018479 (and b!4616306 b!4616281)))

(assert (=> bs!1018479 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189578 lambda!189568))))

(declare-fun bs!1018480 () Bool)

(assert (= bs!1018480 (and b!4616306 b!4616282)))

(assert (=> bs!1018480 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189578 lambda!189569))))

(declare-fun bs!1018481 () Bool)

(assert (= bs!1018481 (and b!4616306 d!1454102)))

(assert (=> bs!1018481 (= (= lt!1771570 lt!1771979) (= lambda!189578 lambda!189567))))

(assert (=> bs!1018476 (= (= lt!1771570 lt!1771986) (= lambda!189578 lambda!189566))))

(declare-fun bs!1018482 () Bool)

(assert (= bs!1018482 (and b!4616306 b!4616276)))

(assert (=> bs!1018482 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189578 lambda!189564))))

(declare-fun bs!1018483 () Bool)

(assert (= bs!1018483 (and b!4616306 d!1454104)))

(assert (=> bs!1018483 (= (= lt!1771570 lt!1772000) (= lambda!189578 lambda!189571))))

(declare-fun bs!1018484 () Bool)

(assert (= bs!1018484 (and b!4616306 b!4616253)))

(assert (=> bs!1018484 (= (= lt!1771570 lt!1771954) (= lambda!189578 lambda!189559))))

(declare-fun bs!1018485 () Bool)

(assert (= bs!1018485 (and b!4616306 b!4616252)))

(assert (=> bs!1018485 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189578 lambda!189557))))

(assert (=> bs!1018480 (= (= lt!1771570 lt!1772007) (= lambda!189578 lambda!189570))))

(assert (=> bs!1018484 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189578 lambda!189558))))

(declare-fun bs!1018486 () Bool)

(assert (= bs!1018486 (and b!4616306 d!1454022)))

(assert (=> bs!1018486 (= (= lt!1771570 lt!1771922) (= lambda!189578 lambda!189556))))

(assert (=> bs!1018475 (= (= lt!1771570 (ListMap!4158 Nil!51375)) (= lambda!189578 lambda!189554))))

(declare-fun bs!1018487 () Bool)

(assert (= bs!1018487 (and b!4616306 d!1454092)))

(assert (=> bs!1018487 (not (= lambda!189578 lambda!189563))))

(declare-fun bs!1018488 () Bool)

(assert (= bs!1018488 (and b!4616306 d!1454080)))

(assert (=> bs!1018488 (= (= lt!1771570 lt!1771947) (= lambda!189578 lambda!189560))))

(assert (=> b!4616306 true))

(declare-fun lt!1772041 () ListMap!4157)

(declare-fun lambda!189579 () Int)

(assert (=> b!4616306 (= (= lt!1772041 lt!1771570) (= lambda!189579 lambda!189578))))

(assert (=> bs!1018475 (= (= lt!1772041 lt!1771929) (= lambda!189579 lambda!189555))))

(assert (=> bs!1018476 (= (= lt!1772041 (ListMap!4158 Nil!51375)) (= lambda!189579 lambda!189565))))

(assert (=> bs!1018477 (= (= lt!1772041 (ListMap!4158 Nil!51375)) (= lambda!189579 lambda!189553))))

(assert (=> bs!1018478 (= (= lt!1772041 lt!1771570) (= lambda!189579 lambda!189577))))

(assert (=> bs!1018479 (= (= lt!1772041 (ListMap!4158 Nil!51375)) (= lambda!189579 lambda!189568))))

(assert (=> bs!1018480 (= (= lt!1772041 (ListMap!4158 Nil!51375)) (= lambda!189579 lambda!189569))))

(assert (=> bs!1018481 (= (= lt!1772041 lt!1771979) (= lambda!189579 lambda!189567))))

(assert (=> bs!1018476 (= (= lt!1772041 lt!1771986) (= lambda!189579 lambda!189566))))

(assert (=> bs!1018482 (= (= lt!1772041 (ListMap!4158 Nil!51375)) (= lambda!189579 lambda!189564))))

(assert (=> bs!1018483 (= (= lt!1772041 lt!1772000) (= lambda!189579 lambda!189571))))

(assert (=> bs!1018484 (= (= lt!1772041 lt!1771954) (= lambda!189579 lambda!189559))))

(assert (=> bs!1018485 (= (= lt!1772041 (ListMap!4158 Nil!51375)) (= lambda!189579 lambda!189557))))

(assert (=> bs!1018480 (= (= lt!1772041 lt!1772007) (= lambda!189579 lambda!189570))))

(assert (=> bs!1018484 (= (= lt!1772041 (ListMap!4158 Nil!51375)) (= lambda!189579 lambda!189558))))

(assert (=> bs!1018486 (= (= lt!1772041 lt!1771922) (= lambda!189579 lambda!189556))))

(assert (=> bs!1018475 (= (= lt!1772041 (ListMap!4158 Nil!51375)) (= lambda!189579 lambda!189554))))

(assert (=> bs!1018487 (not (= lambda!189579 lambda!189563))))

(assert (=> bs!1018488 (= (= lt!1772041 lt!1771947) (= lambda!189579 lambda!189560))))

(assert (=> b!4616306 true))

(declare-fun bs!1018489 () Bool)

(declare-fun d!1454114 () Bool)

(assert (= bs!1018489 (and d!1454114 b!4616306)))

(declare-fun lambda!189580 () Int)

(declare-fun lt!1772034 () ListMap!4157)

(assert (=> bs!1018489 (= (= lt!1772034 lt!1772041) (= lambda!189580 lambda!189579))))

(assert (=> bs!1018489 (= (= lt!1772034 lt!1771570) (= lambda!189580 lambda!189578))))

(declare-fun bs!1018490 () Bool)

(assert (= bs!1018490 (and d!1454114 b!4616244)))

(assert (=> bs!1018490 (= (= lt!1772034 lt!1771929) (= lambda!189580 lambda!189555))))

(declare-fun bs!1018491 () Bool)

(assert (= bs!1018491 (and d!1454114 b!4616277)))

(assert (=> bs!1018491 (= (= lt!1772034 (ListMap!4158 Nil!51375)) (= lambda!189580 lambda!189565))))

(declare-fun bs!1018492 () Bool)

(assert (= bs!1018492 (and d!1454114 b!4616243)))

(assert (=> bs!1018492 (= (= lt!1772034 (ListMap!4158 Nil!51375)) (= lambda!189580 lambda!189553))))

(declare-fun bs!1018493 () Bool)

(assert (= bs!1018493 (and d!1454114 b!4616305)))

(assert (=> bs!1018493 (= (= lt!1772034 lt!1771570) (= lambda!189580 lambda!189577))))

(declare-fun bs!1018494 () Bool)

(assert (= bs!1018494 (and d!1454114 b!4616281)))

(assert (=> bs!1018494 (= (= lt!1772034 (ListMap!4158 Nil!51375)) (= lambda!189580 lambda!189568))))

(declare-fun bs!1018495 () Bool)

(assert (= bs!1018495 (and d!1454114 b!4616282)))

(assert (=> bs!1018495 (= (= lt!1772034 (ListMap!4158 Nil!51375)) (= lambda!189580 lambda!189569))))

(declare-fun bs!1018496 () Bool)

(assert (= bs!1018496 (and d!1454114 d!1454102)))

(assert (=> bs!1018496 (= (= lt!1772034 lt!1771979) (= lambda!189580 lambda!189567))))

(assert (=> bs!1018491 (= (= lt!1772034 lt!1771986) (= lambda!189580 lambda!189566))))

(declare-fun bs!1018497 () Bool)

(assert (= bs!1018497 (and d!1454114 b!4616276)))

(assert (=> bs!1018497 (= (= lt!1772034 (ListMap!4158 Nil!51375)) (= lambda!189580 lambda!189564))))

(declare-fun bs!1018498 () Bool)

(assert (= bs!1018498 (and d!1454114 d!1454104)))

(assert (=> bs!1018498 (= (= lt!1772034 lt!1772000) (= lambda!189580 lambda!189571))))

(declare-fun bs!1018499 () Bool)

(assert (= bs!1018499 (and d!1454114 b!4616253)))

(assert (=> bs!1018499 (= (= lt!1772034 lt!1771954) (= lambda!189580 lambda!189559))))

(declare-fun bs!1018500 () Bool)

(assert (= bs!1018500 (and d!1454114 b!4616252)))

(assert (=> bs!1018500 (= (= lt!1772034 (ListMap!4158 Nil!51375)) (= lambda!189580 lambda!189557))))

(assert (=> bs!1018495 (= (= lt!1772034 lt!1772007) (= lambda!189580 lambda!189570))))

(assert (=> bs!1018499 (= (= lt!1772034 (ListMap!4158 Nil!51375)) (= lambda!189580 lambda!189558))))

(declare-fun bs!1018501 () Bool)

(assert (= bs!1018501 (and d!1454114 d!1454022)))

(assert (=> bs!1018501 (= (= lt!1772034 lt!1771922) (= lambda!189580 lambda!189556))))

(assert (=> bs!1018490 (= (= lt!1772034 (ListMap!4158 Nil!51375)) (= lambda!189580 lambda!189554))))

(declare-fun bs!1018502 () Bool)

(assert (= bs!1018502 (and d!1454114 d!1454092)))

(assert (=> bs!1018502 (not (= lambda!189580 lambda!189563))))

(declare-fun bs!1018503 () Bool)

(assert (= bs!1018503 (and d!1454114 d!1454080)))

(assert (=> bs!1018503 (= (= lt!1772034 lt!1771947) (= lambda!189580 lambda!189560))))

(assert (=> d!1454114 true))

(declare-fun b!4616302 () Bool)

(declare-fun e!2879486 () Bool)

(assert (=> b!4616302 (= e!2879486 (forall!10746 (toList!4853 lt!1771570) lambda!189579))))

(declare-fun c!790335 () Bool)

(declare-fun bm!321880 () Bool)

(declare-fun call!321885 () Bool)

(assert (=> bm!321880 (= call!321885 (forall!10746 (ite c!790335 (toList!4853 lt!1771570) oldBucket!40) (ite c!790335 lambda!189577 lambda!189579)))))

(declare-fun e!2879487 () Bool)

(assert (=> d!1454114 e!2879487))

(declare-fun res!1934172 () Bool)

(assert (=> d!1454114 (=> (not res!1934172) (not e!2879487))))

(assert (=> d!1454114 (= res!1934172 (forall!10746 oldBucket!40 lambda!189580))))

(declare-fun e!2879485 () ListMap!4157)

(assert (=> d!1454114 (= lt!1772034 e!2879485)))

(assert (=> d!1454114 (= c!790335 ((_ is Nil!51375) oldBucket!40))))

(assert (=> d!1454114 (noDuplicateKeys!1444 oldBucket!40)))

(assert (=> d!1454114 (= (addToMapMapFromBucket!905 oldBucket!40 lt!1771570) lt!1772034)))

(declare-fun b!4616303 () Bool)

(assert (=> b!4616303 (= e!2879487 (invariantList!1169 (toList!4853 lt!1772034)))))

(declare-fun b!4616304 () Bool)

(declare-fun res!1934171 () Bool)

(assert (=> b!4616304 (=> (not res!1934171) (not e!2879487))))

(assert (=> b!4616304 (= res!1934171 (forall!10746 (toList!4853 lt!1771570) lambda!189580))))

(assert (=> b!4616305 (= e!2879485 lt!1771570)))

(declare-fun lt!1772043 () Unit!110264)

(declare-fun call!321887 () Unit!110264)

(assert (=> b!4616305 (= lt!1772043 call!321887)))

(declare-fun call!321886 () Bool)

(assert (=> b!4616305 call!321886))

(declare-fun lt!1772040 () Unit!110264)

(assert (=> b!4616305 (= lt!1772040 lt!1772043)))

(assert (=> b!4616305 call!321885))

(declare-fun lt!1772024 () Unit!110264)

(declare-fun Unit!110377 () Unit!110264)

(assert (=> b!4616305 (= lt!1772024 Unit!110377)))

(declare-fun bm!321881 () Bool)

(assert (=> bm!321881 (= call!321887 (lemmaContainsAllItsOwnKeys!471 lt!1771570))))

(declare-fun bm!321882 () Bool)

(declare-fun lt!1772035 () ListMap!4157)

(assert (=> bm!321882 (= call!321886 (forall!10746 (ite c!790335 (toList!4853 lt!1771570) (toList!4853 lt!1772035)) (ite c!790335 lambda!189577 lambda!189579)))))

(assert (=> b!4616306 (= e!2879485 lt!1772041)))

(assert (=> b!4616306 (= lt!1772035 (+!1829 lt!1771570 (h!57389 oldBucket!40)))))

(assert (=> b!4616306 (= lt!1772041 (addToMapMapFromBucket!905 (t!358505 oldBucket!40) (+!1829 lt!1771570 (h!57389 oldBucket!40))))))

(declare-fun lt!1772029 () Unit!110264)

(assert (=> b!4616306 (= lt!1772029 call!321887)))

(assert (=> b!4616306 (forall!10746 (toList!4853 lt!1771570) lambda!189578)))

(declare-fun lt!1772027 () Unit!110264)

(assert (=> b!4616306 (= lt!1772027 lt!1772029)))

(assert (=> b!4616306 (forall!10746 (toList!4853 lt!1772035) lambda!189579)))

(declare-fun lt!1772032 () Unit!110264)

(declare-fun Unit!110378 () Unit!110264)

(assert (=> b!4616306 (= lt!1772032 Unit!110378)))

(assert (=> b!4616306 (forall!10746 (t!358505 oldBucket!40) lambda!189579)))

(declare-fun lt!1772030 () Unit!110264)

(declare-fun Unit!110379 () Unit!110264)

(assert (=> b!4616306 (= lt!1772030 Unit!110379)))

(declare-fun lt!1772037 () Unit!110264)

(declare-fun Unit!110380 () Unit!110264)

(assert (=> b!4616306 (= lt!1772037 Unit!110380)))

(declare-fun lt!1772025 () Unit!110264)

(assert (=> b!4616306 (= lt!1772025 (forallContained!2963 (toList!4853 lt!1772035) lambda!189579 (h!57389 oldBucket!40)))))

(assert (=> b!4616306 (contains!14338 lt!1772035 (_1!29405 (h!57389 oldBucket!40)))))

(declare-fun lt!1772026 () Unit!110264)

(declare-fun Unit!110381 () Unit!110264)

(assert (=> b!4616306 (= lt!1772026 Unit!110381)))

(assert (=> b!4616306 (contains!14338 lt!1772041 (_1!29405 (h!57389 oldBucket!40)))))

(declare-fun lt!1772033 () Unit!110264)

(declare-fun Unit!110382 () Unit!110264)

(assert (=> b!4616306 (= lt!1772033 Unit!110382)))

(assert (=> b!4616306 (forall!10746 oldBucket!40 lambda!189579)))

(declare-fun lt!1772039 () Unit!110264)

(declare-fun Unit!110383 () Unit!110264)

(assert (=> b!4616306 (= lt!1772039 Unit!110383)))

(assert (=> b!4616306 call!321886))

(declare-fun lt!1772028 () Unit!110264)

(declare-fun Unit!110384 () Unit!110264)

(assert (=> b!4616306 (= lt!1772028 Unit!110384)))

(declare-fun lt!1772036 () Unit!110264)

(declare-fun Unit!110385 () Unit!110264)

(assert (=> b!4616306 (= lt!1772036 Unit!110385)))

(declare-fun lt!1772038 () Unit!110264)

(assert (=> b!4616306 (= lt!1772038 (addForallContainsKeyThenBeforeAdding!470 lt!1771570 lt!1772041 (_1!29405 (h!57389 oldBucket!40)) (_2!29405 (h!57389 oldBucket!40))))))

(assert (=> b!4616306 (forall!10746 (toList!4853 lt!1771570) lambda!189579)))

(declare-fun lt!1772031 () Unit!110264)

(assert (=> b!4616306 (= lt!1772031 lt!1772038)))

(assert (=> b!4616306 (forall!10746 (toList!4853 lt!1771570) lambda!189579)))

(declare-fun lt!1772023 () Unit!110264)

(declare-fun Unit!110386 () Unit!110264)

(assert (=> b!4616306 (= lt!1772023 Unit!110386)))

(declare-fun res!1934170 () Bool)

(assert (=> b!4616306 (= res!1934170 call!321885)))

(assert (=> b!4616306 (=> (not res!1934170) (not e!2879486))))

(assert (=> b!4616306 e!2879486))

(declare-fun lt!1772042 () Unit!110264)

(declare-fun Unit!110387 () Unit!110264)

(assert (=> b!4616306 (= lt!1772042 Unit!110387)))

(assert (= (and d!1454114 c!790335) b!4616305))

(assert (= (and d!1454114 (not c!790335)) b!4616306))

(assert (= (and b!4616306 res!1934170) b!4616302))

(assert (= (or b!4616305 b!4616306) bm!321881))

(assert (= (or b!4616305 b!4616306) bm!321880))

(assert (= (or b!4616305 b!4616306) bm!321882))

(assert (= (and d!1454114 res!1934172) b!4616304))

(assert (= (and b!4616304 res!1934171) b!4616303))

(declare-fun m!5450657 () Bool)

(assert (=> bm!321881 m!5450657))

(declare-fun m!5450659 () Bool)

(assert (=> bm!321882 m!5450659))

(declare-fun m!5450661 () Bool)

(assert (=> b!4616306 m!5450661))

(declare-fun m!5450663 () Bool)

(assert (=> b!4616306 m!5450663))

(declare-fun m!5450665 () Bool)

(assert (=> b!4616306 m!5450665))

(declare-fun m!5450667 () Bool)

(assert (=> b!4616306 m!5450667))

(declare-fun m!5450669 () Bool)

(assert (=> b!4616306 m!5450669))

(declare-fun m!5450671 () Bool)

(assert (=> b!4616306 m!5450671))

(declare-fun m!5450673 () Bool)

(assert (=> b!4616306 m!5450673))

(declare-fun m!5450675 () Bool)

(assert (=> b!4616306 m!5450675))

(declare-fun m!5450677 () Bool)

(assert (=> b!4616306 m!5450677))

(assert (=> b!4616306 m!5450673))

(assert (=> b!4616306 m!5450665))

(declare-fun m!5450679 () Bool)

(assert (=> b!4616306 m!5450679))

(declare-fun m!5450681 () Bool)

(assert (=> b!4616306 m!5450681))

(declare-fun m!5450683 () Bool)

(assert (=> bm!321880 m!5450683))

(declare-fun m!5450685 () Bool)

(assert (=> d!1454114 m!5450685))

(assert (=> d!1454114 m!5449895))

(declare-fun m!5450687 () Bool)

(assert (=> b!4616303 m!5450687))

(assert (=> b!4616302 m!5450665))

(declare-fun m!5450689 () Bool)

(assert (=> b!4616304 m!5450689))

(assert (=> b!4616012 d!1454114))

(declare-fun bs!1018504 () Bool)

(declare-fun d!1454116 () Bool)

(assert (= bs!1018504 (and d!1454116 d!1454110)))

(declare-fun lambda!189581 () Int)

(assert (=> bs!1018504 (= lambda!189581 lambda!189575)))

(declare-fun bs!1018505 () Bool)

(assert (= bs!1018505 (and d!1454116 d!1454112)))

(assert (=> bs!1018505 (= lambda!189581 lambda!189576)))

(declare-fun bs!1018506 () Bool)

(assert (= bs!1018506 (and d!1454116 b!4616019)))

(assert (=> bs!1018506 (= lambda!189581 lambda!189460)))

(declare-fun bs!1018507 () Bool)

(assert (= bs!1018507 (and d!1454116 d!1454010)))

(assert (=> bs!1018507 (= lambda!189581 lambda!189472)))

(declare-fun bs!1018508 () Bool)

(assert (= bs!1018508 (and d!1454116 d!1454108)))

(assert (=> bs!1018508 (= lambda!189581 lambda!189574)))

(declare-fun lt!1772044 () ListMap!4157)

(assert (=> d!1454116 (invariantList!1169 (toList!4853 lt!1772044))))

(declare-fun e!2879488 () ListMap!4157)

(assert (=> d!1454116 (= lt!1772044 e!2879488)))

(declare-fun c!790336 () Bool)

(assert (=> d!1454116 (= c!790336 ((_ is Cons!51376) Nil!51376))))

(assert (=> d!1454116 (forall!10744 Nil!51376 lambda!189581)))

(assert (=> d!1454116 (= (extractMap!1500 Nil!51376) lt!1772044)))

(declare-fun b!4616307 () Bool)

(assert (=> b!4616307 (= e!2879488 (addToMapMapFromBucket!905 (_2!29406 (h!57390 Nil!51376)) (extractMap!1500 (t!358506 Nil!51376))))))

(declare-fun b!4616308 () Bool)

(assert (=> b!4616308 (= e!2879488 (ListMap!4158 Nil!51375))))

(assert (= (and d!1454116 c!790336) b!4616307))

(assert (= (and d!1454116 (not c!790336)) b!4616308))

(declare-fun m!5450691 () Bool)

(assert (=> d!1454116 m!5450691))

(declare-fun m!5450693 () Bool)

(assert (=> d!1454116 m!5450693))

(declare-fun m!5450695 () Bool)

(assert (=> b!4616307 m!5450695))

(assert (=> b!4616307 m!5450695))

(declare-fun m!5450697 () Bool)

(assert (=> b!4616307 m!5450697))

(assert (=> b!4616012 d!1454116))

(declare-fun bs!1018509 () Bool)

(declare-fun d!1454118 () Bool)

(assert (= bs!1018509 (and d!1454118 b!4616306)))

(declare-fun lambda!189582 () Int)

(assert (=> bs!1018509 (not (= lambda!189582 lambda!189579))))

(assert (=> bs!1018509 (not (= lambda!189582 lambda!189578))))

(declare-fun bs!1018510 () Bool)

(assert (= bs!1018510 (and d!1454118 b!4616244)))

(assert (=> bs!1018510 (not (= lambda!189582 lambda!189555))))

(declare-fun bs!1018511 () Bool)

(assert (= bs!1018511 (and d!1454118 b!4616277)))

(assert (=> bs!1018511 (not (= lambda!189582 lambda!189565))))

(declare-fun bs!1018512 () Bool)

(assert (= bs!1018512 (and d!1454118 b!4616243)))

(assert (=> bs!1018512 (not (= lambda!189582 lambda!189553))))

(declare-fun bs!1018513 () Bool)

(assert (= bs!1018513 (and d!1454118 b!4616305)))

(assert (=> bs!1018513 (not (= lambda!189582 lambda!189577))))

(declare-fun bs!1018514 () Bool)

(assert (= bs!1018514 (and d!1454118 b!4616281)))

(assert (=> bs!1018514 (not (= lambda!189582 lambda!189568))))

(declare-fun bs!1018515 () Bool)

(assert (= bs!1018515 (and d!1454118 b!4616282)))

(assert (=> bs!1018515 (not (= lambda!189582 lambda!189569))))

(declare-fun bs!1018516 () Bool)

(assert (= bs!1018516 (and d!1454118 d!1454102)))

(assert (=> bs!1018516 (not (= lambda!189582 lambda!189567))))

(assert (=> bs!1018511 (not (= lambda!189582 lambda!189566))))

(declare-fun bs!1018517 () Bool)

(assert (= bs!1018517 (and d!1454118 b!4616276)))

(assert (=> bs!1018517 (not (= lambda!189582 lambda!189564))))

(declare-fun bs!1018518 () Bool)

(assert (= bs!1018518 (and d!1454118 d!1454104)))

(assert (=> bs!1018518 (not (= lambda!189582 lambda!189571))))

(declare-fun bs!1018519 () Bool)

(assert (= bs!1018519 (and d!1454118 d!1454114)))

(assert (=> bs!1018519 (not (= lambda!189582 lambda!189580))))

(declare-fun bs!1018520 () Bool)

(assert (= bs!1018520 (and d!1454118 b!4616253)))

(assert (=> bs!1018520 (not (= lambda!189582 lambda!189559))))

(declare-fun bs!1018521 () Bool)

(assert (= bs!1018521 (and d!1454118 b!4616252)))

(assert (=> bs!1018521 (not (= lambda!189582 lambda!189557))))

(assert (=> bs!1018515 (not (= lambda!189582 lambda!189570))))

(assert (=> bs!1018520 (not (= lambda!189582 lambda!189558))))

(declare-fun bs!1018522 () Bool)

(assert (= bs!1018522 (and d!1454118 d!1454022)))

(assert (=> bs!1018522 (not (= lambda!189582 lambda!189556))))

(assert (=> bs!1018510 (not (= lambda!189582 lambda!189554))))

(declare-fun bs!1018523 () Bool)

(assert (= bs!1018523 (and d!1454118 d!1454092)))

(assert (=> bs!1018523 (= lambda!189582 lambda!189563)))

(declare-fun bs!1018524 () Bool)

(assert (= bs!1018524 (and d!1454118 d!1454080)))

(assert (=> bs!1018524 (not (= lambda!189582 lambda!189560))))

(assert (=> d!1454118 true))

(assert (=> d!1454118 true))

(assert (=> d!1454118 (= (allKeysSameHash!1298 oldBucket!40 hash!414 hashF!1389) (forall!10746 oldBucket!40 lambda!189582))))

(declare-fun bs!1018525 () Bool)

(assert (= bs!1018525 d!1454118))

(declare-fun m!5450699 () Bool)

(assert (=> bs!1018525 m!5450699))

(assert (=> b!4616023 d!1454118))

(declare-fun d!1454120 () Bool)

(declare-fun hash!3401 (Hashable!5841 K!12760) (_ BitVec 64))

(assert (=> d!1454120 (= (hash!3399 hashF!1389 key!4968) (hash!3401 hashF!1389 key!4968))))

(declare-fun bs!1018526 () Bool)

(assert (= bs!1018526 d!1454120))

(declare-fun m!5450701 () Bool)

(assert (=> bs!1018526 m!5450701))

(assert (=> b!4616013 d!1454120))

(declare-fun b!4616319 () Bool)

(declare-fun e!2879493 () List!51499)

(assert (=> b!4616319 (= e!2879493 (Cons!51375 (h!57389 oldBucket!40) (removePairForKey!1067 (t!358505 oldBucket!40) key!4968)))))

(declare-fun d!1454122 () Bool)

(declare-fun lt!1772047 () List!51499)

(assert (=> d!1454122 (not (containsKey!2326 lt!1772047 key!4968))))

(declare-fun e!2879494 () List!51499)

(assert (=> d!1454122 (= lt!1772047 e!2879494)))

(declare-fun c!790341 () Bool)

(assert (=> d!1454122 (= c!790341 (and ((_ is Cons!51375) oldBucket!40) (= (_1!29405 (h!57389 oldBucket!40)) key!4968)))))

(assert (=> d!1454122 (noDuplicateKeys!1444 oldBucket!40)))

(assert (=> d!1454122 (= (removePairForKey!1067 oldBucket!40 key!4968) lt!1772047)))

(declare-fun b!4616318 () Bool)

(assert (=> b!4616318 (= e!2879494 e!2879493)))

(declare-fun c!790342 () Bool)

(assert (=> b!4616318 (= c!790342 ((_ is Cons!51375) oldBucket!40))))

(declare-fun b!4616317 () Bool)

(assert (=> b!4616317 (= e!2879494 (t!358505 oldBucket!40))))

(declare-fun b!4616320 () Bool)

(assert (=> b!4616320 (= e!2879493 Nil!51375)))

(assert (= (and d!1454122 c!790341) b!4616317))

(assert (= (and d!1454122 (not c!790341)) b!4616318))

(assert (= (and b!4616318 c!790342) b!4616319))

(assert (= (and b!4616318 (not c!790342)) b!4616320))

(declare-fun m!5450703 () Bool)

(assert (=> b!4616319 m!5450703))

(declare-fun m!5450705 () Bool)

(assert (=> d!1454122 m!5450705))

(assert (=> d!1454122 m!5449895))

(assert (=> b!4616024 d!1454122))

(declare-fun d!1454124 () Bool)

(assert (=> d!1454124 (= (tail!8091 oldBucket!40) (t!358505 oldBucket!40))))

(assert (=> b!4616014 d!1454124))

(declare-fun d!1454126 () Bool)

(declare-fun res!1934177 () Bool)

(declare-fun e!2879499 () Bool)

(assert (=> d!1454126 (=> res!1934177 e!2879499)))

(assert (=> d!1454126 (= res!1934177 (not ((_ is Cons!51375) newBucket!224)))))

(assert (=> d!1454126 (= (noDuplicateKeys!1444 newBucket!224) e!2879499)))

(declare-fun b!4616325 () Bool)

(declare-fun e!2879500 () Bool)

(assert (=> b!4616325 (= e!2879499 e!2879500)))

(declare-fun res!1934178 () Bool)

(assert (=> b!4616325 (=> (not res!1934178) (not e!2879500))))

(assert (=> b!4616325 (= res!1934178 (not (containsKey!2326 (t!358505 newBucket!224) (_1!29405 (h!57389 newBucket!224)))))))

(declare-fun b!4616326 () Bool)

(assert (=> b!4616326 (= e!2879500 (noDuplicateKeys!1444 (t!358505 newBucket!224)))))

(assert (= (and d!1454126 (not res!1934177)) b!4616325))

(assert (= (and b!4616325 res!1934178) b!4616326))

(declare-fun m!5450707 () Bool)

(assert (=> b!4616325 m!5450707))

(declare-fun m!5450709 () Bool)

(assert (=> b!4616326 m!5450709))

(assert (=> b!4616025 d!1454126))

(declare-fun d!1454128 () Bool)

(declare-fun res!1934179 () Bool)

(declare-fun e!2879501 () Bool)

(assert (=> d!1454128 (=> res!1934179 e!2879501)))

(assert (=> d!1454128 (= res!1934179 (not ((_ is Cons!51375) oldBucket!40)))))

(assert (=> d!1454128 (= (noDuplicateKeys!1444 oldBucket!40) e!2879501)))

(declare-fun b!4616327 () Bool)

(declare-fun e!2879502 () Bool)

(assert (=> b!4616327 (= e!2879501 e!2879502)))

(declare-fun res!1934180 () Bool)

(assert (=> b!4616327 (=> (not res!1934180) (not e!2879502))))

(assert (=> b!4616327 (= res!1934180 (not (containsKey!2326 (t!358505 oldBucket!40) (_1!29405 (h!57389 oldBucket!40)))))))

(declare-fun b!4616328 () Bool)

(assert (=> b!4616328 (= e!2879502 (noDuplicateKeys!1444 (t!358505 oldBucket!40)))))

(assert (= (and d!1454128 (not res!1934179)) b!4616327))

(assert (= (and b!4616327 res!1934180) b!4616328))

(declare-fun m!5450711 () Bool)

(assert (=> b!4616327 m!5450711))

(declare-fun m!5450713 () Bool)

(assert (=> b!4616328 m!5450713))

(assert (=> start!461812 d!1454128))

(declare-fun e!2879505 () Bool)

(declare-fun b!4616333 () Bool)

(declare-fun tp!1341598 () Bool)

(assert (=> b!4616333 (= e!2879505 (and tp_is_empty!29069 tp_is_empty!29071 tp!1341598))))

(assert (=> b!4616026 (= tp!1341591 e!2879505)))

(assert (= (and b!4616026 ((_ is Cons!51375) (t!358505 oldBucket!40))) b!4616333))

(declare-fun b!4616334 () Bool)

(declare-fun e!2879506 () Bool)

(declare-fun tp!1341599 () Bool)

(assert (=> b!4616334 (= e!2879506 (and tp_is_empty!29069 tp_is_empty!29071 tp!1341599))))

(assert (=> b!4616021 (= tp!1341590 e!2879506)))

(assert (= (and b!4616021 ((_ is Cons!51375) (t!358505 newBucket!224))) b!4616334))

(declare-fun b_lambda!170539 () Bool)

(assert (= b_lambda!170537 (or b!4616019 b_lambda!170539)))

(declare-fun bs!1018527 () Bool)

(declare-fun d!1454130 () Bool)

(assert (= bs!1018527 (and d!1454130 b!4616019)))

(assert (=> bs!1018527 (= (dynLambda!21463 lambda!189460 (h!57390 lt!1771573)) (noDuplicateKeys!1444 (_2!29406 (h!57390 lt!1771573))))))

(declare-fun m!5450715 () Bool)

(assert (=> bs!1018527 m!5450715))

(assert (=> b!4616270 d!1454130))

(check-sat (not b!4616288) tp_is_empty!29069 (not bm!321868) (not bm!321871) (not d!1454108) (not b!4616253) (not b!4616145) (not b!4616296) (not b!4616328) (not d!1454096) (not d!1454014) (not d!1454114) (not b!4616146) (not b!4616254) (not d!1454088) (not b!4616327) (not d!1454120) (not b!4616304) (not b!4616144) (not bm!321875) (not b!4616278) (not bm!321838) (not bm!321877) (not b!4616306) (not bm!321878) (not d!1454020) (not d!1454110) (not bm!321874) (not b!4616141) (not bm!321876) (not d!1454102) (not b!4616273) (not b_lambda!170539) (not d!1454016) (not b!4616302) (not b!4616126) (not d!1454084) (not d!1454018) (not bm!321873) (not b!4616277) (not b!4616303) (not b!4616241) (not b!4616242) (not d!1454106) (not b!4616124) (not b!4616247) (not b!4616280) tp_is_empty!29071 (not b!4616272) (not b!4616255) (not d!1454098) (not b!4616271) (not bm!321879) (not b!4616250) (not d!1454116) (not b!4616129) (not bm!321870) (not bm!321881) (not d!1453990) (not b!4616279) (not b!4616307) (not d!1454122) (not b!4616291) (not b!4616275) (not bm!321839) (not bm!321869) (not b!4616131) (not d!1454112) (not b!4616334) (not bm!321872) (not d!1454022) (not b!4616325) (not d!1454076) (not b!4616290) (not b!4616283) (not b!4616249) (not bs!1018527) (not b!4616319) (not b!4616333) (not d!1454008) (not b!4616156) (not bm!321867) (not b!4616261) (not b!4616128) (not b!4616240) (not b!4616143) (not b!4616150) (not b!4616274) (not b!4616300) (not bm!321882) (not b!4616157) (not d!1454082) (not d!1454118) (not b!4616132) (not b!4616251) (not b!4616326) (not b!4616282) (not d!1454100) (not b!4616151) (not b!4616130) (not d!1454010) (not bm!321880) (not d!1454086) (not d!1454104) (not b!4616248) (not b!4616287) (not d!1454012) (not d!1454092) (not b!4616298) (not b!4616139) (not d!1454080) (not b!4616289) (not b!4616285) (not b!4616147) (not b!4616244))
(check-sat)
