; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!468336 () Bool)

(assert start!468336)

(declare-fun b!4654325 () Bool)

(declare-fun e!2903900 () Bool)

(declare-fun e!2903903 () Bool)

(assert (=> b!4654325 (= e!2903900 e!2903903)))

(declare-fun res!1956786 () Bool)

(assert (=> b!4654325 (=> res!1956786 e!2903903)))

(declare-datatypes ((K!13235 0))(
  ( (K!13236 (val!18859 Int)) )
))
(declare-datatypes ((V!13481 0))(
  ( (V!13482 (val!18860 Int)) )
))
(declare-datatypes ((tuple2!52982 0))(
  ( (tuple2!52983 (_1!29785 K!13235) (_2!29785 V!13481)) )
))
(declare-datatypes ((List!52004 0))(
  ( (Nil!51880) (Cons!51880 (h!58020 tuple2!52982) (t!359120 List!52004)) )
))
(declare-datatypes ((ListMap!4537 0))(
  ( (ListMap!4538 (toList!5199 List!52004)) )
))
(declare-fun lt!1817568 () ListMap!4537)

(declare-fun lt!1817566 () ListMap!4537)

(declare-fun lt!1817561 () ListMap!4537)

(declare-fun lt!1817571 () ListMap!4537)

(assert (=> b!4654325 (= res!1956786 (or (not (= lt!1817571 lt!1817566)) (not (= lt!1817568 lt!1817561))))))

(declare-fun lt!1817556 () ListMap!4537)

(declare-fun key!4968 () K!13235)

(declare-fun -!616 (ListMap!4537 K!13235) ListMap!4537)

(assert (=> b!4654325 (= lt!1817571 (-!616 lt!1817556 key!4968))))

(declare-fun oldBucket!40 () List!52004)

(declare-fun +!1978 (ListMap!4537 tuple2!52982) ListMap!4537)

(assert (=> b!4654325 (= (-!616 (+!1978 lt!1817566 (tuple2!52983 key!4968 (_2!29785 (h!58020 oldBucket!40)))) key!4968) lt!1817566)))

(declare-datatypes ((Unit!118396 0))(
  ( (Unit!118397) )
))
(declare-fun lt!1817569 () Unit!118396)

(declare-fun addThenRemoveForNewKeyIsSame!33 (ListMap!4537 K!13235 V!13481) Unit!118396)

(assert (=> b!4654325 (= lt!1817569 (addThenRemoveForNewKeyIsSame!33 lt!1817566 key!4968 (_2!29785 (h!58020 oldBucket!40))))))

(declare-fun b!4654326 () Bool)

(declare-fun e!2903902 () Bool)

(assert (=> b!4654326 (= e!2903903 e!2903902)))

(declare-fun res!1956791 () Bool)

(assert (=> b!4654326 (=> res!1956791 e!2903902)))

(declare-fun lt!1817570 () ListMap!4537)

(assert (=> b!4654326 (= res!1956791 (not (= lt!1817570 lt!1817566)))))

(declare-fun lt!1817563 () ListMap!4537)

(declare-fun eq!913 (ListMap!4537 ListMap!4537) Bool)

(assert (=> b!4654326 (eq!913 lt!1817571 lt!1817563)))

(assert (=> b!4654326 (= lt!1817563 (-!616 lt!1817568 key!4968))))

(declare-fun lt!1817557 () Unit!118396)

(declare-fun lemmaRemovePreservesEq!64 (ListMap!4537 ListMap!4537 K!13235) Unit!118396)

(assert (=> b!4654326 (= lt!1817557 (lemmaRemovePreservesEq!64 lt!1817556 lt!1817568 key!4968))))

(declare-fun b!4654327 () Bool)

(assert (=> b!4654327 (= e!2903902 (eq!913 lt!1817570 lt!1817563))))

(declare-fun b!4654328 () Bool)

(declare-fun res!1956777 () Bool)

(declare-fun e!2903905 () Bool)

(assert (=> b!4654328 (=> res!1956777 e!2903905)))

(declare-fun lt!1817559 () List!52004)

(declare-fun containsKey!2714 (List!52004 K!13235) Bool)

(assert (=> b!4654328 (= res!1956777 (containsKey!2714 lt!1817559 key!4968))))

(declare-fun b!4654329 () Bool)

(declare-fun e!2903906 () Bool)

(declare-fun e!2903908 () Bool)

(assert (=> b!4654329 (= e!2903906 e!2903908)))

(declare-fun res!1956784 () Bool)

(assert (=> b!4654329 (=> res!1956784 e!2903908)))

(declare-fun newBucket!224 () List!52004)

(declare-fun addToMapMapFromBucket!1091 (List!52004 ListMap!4537) ListMap!4537)

(assert (=> b!4654329 (= res!1956784 (not (= lt!1817566 (addToMapMapFromBucket!1091 newBucket!224 (ListMap!4538 Nil!51880)))))))

(assert (=> b!4654329 (= lt!1817566 (addToMapMapFromBucket!1091 lt!1817559 (ListMap!4538 Nil!51880)))))

(declare-fun b!4654330 () Bool)

(declare-fun e!2903909 () Bool)

(declare-fun lt!1817562 () ListMap!4537)

(assert (=> b!4654330 (= e!2903909 (= lt!1817562 (ListMap!4538 Nil!51880)))))

(declare-fun b!4654331 () Bool)

(declare-fun res!1956783 () Bool)

(declare-fun e!2903901 () Bool)

(assert (=> b!4654331 (=> (not res!1956783) (not e!2903901))))

(declare-datatypes ((Hashable!6031 0))(
  ( (HashableExt!6030 (__x!31734 Int)) )
))
(declare-fun hashF!1389 () Hashable!6031)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun hash!3767 (Hashable!6031 K!13235) (_ BitVec 64))

(assert (=> b!4654331 (= res!1956783 (= (hash!3767 hashF!1389 key!4968) hash!414))))

(declare-fun b!4654333 () Bool)

(declare-fun res!1956789 () Bool)

(assert (=> b!4654333 (=> res!1956789 e!2903903)))

(assert (=> b!4654333 (= res!1956789 (not (eq!913 lt!1817556 lt!1817568)))))

(declare-fun tp!1343254 () Bool)

(declare-fun e!2903907 () Bool)

(declare-fun b!4654334 () Bool)

(declare-fun tp_is_empty!29829 () Bool)

(declare-fun tp_is_empty!29831 () Bool)

(assert (=> b!4654334 (= e!2903907 (and tp_is_empty!29829 tp_is_empty!29831 tp!1343254))))

(declare-fun b!4654335 () Bool)

(declare-fun e!2903904 () Bool)

(assert (=> b!4654335 (= e!2903901 (not e!2903904))))

(declare-fun res!1956778 () Bool)

(assert (=> b!4654335 (=> res!1956778 e!2903904)))

(get-info :version)

(assert (=> b!4654335 (= res!1956778 (or (not ((_ is Cons!51880) oldBucket!40)) (not (= (_1!29785 (h!58020 oldBucket!40)) key!4968))))))

(assert (=> b!4654335 e!2903909))

(declare-fun res!1956792 () Bool)

(assert (=> b!4654335 (=> (not res!1956792) (not e!2903909))))

(assert (=> b!4654335 (= res!1956792 (= lt!1817568 (addToMapMapFromBucket!1091 oldBucket!40 lt!1817562)))))

(declare-datatypes ((tuple2!52984 0))(
  ( (tuple2!52985 (_1!29786 (_ BitVec 64)) (_2!29786 List!52004)) )
))
(declare-datatypes ((List!52005 0))(
  ( (Nil!51881) (Cons!51881 (h!58021 tuple2!52984) (t!359121 List!52005)) )
))
(declare-fun extractMap!1690 (List!52005) ListMap!4537)

(assert (=> b!4654335 (= lt!1817562 (extractMap!1690 Nil!51881))))

(assert (=> b!4654335 true))

(declare-fun b!4654336 () Bool)

(assert (=> b!4654336 (= e!2903905 e!2903900)))

(declare-fun res!1956782 () Bool)

(assert (=> b!4654336 (=> res!1956782 e!2903900)))

(declare-fun contains!15025 (ListMap!4537 K!13235) Bool)

(assert (=> b!4654336 (= res!1956782 (contains!15025 lt!1817566 key!4968))))

(declare-fun lt!1817565 () ListMap!4537)

(assert (=> b!4654336 (not (contains!15025 lt!1817565 key!4968))))

(declare-fun lt!1817558 () Unit!118396)

(declare-fun lt!1817560 () List!52005)

(declare-datatypes ((ListLongMap!3755 0))(
  ( (ListLongMap!3756 (toList!5200 List!52005)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!376 (ListLongMap!3755 K!13235 Hashable!6031) Unit!118396)

(assert (=> b!4654336 (= lt!1817558 (lemmaNotInItsHashBucketThenNotInMap!376 (ListLongMap!3756 lt!1817560) key!4968 hashF!1389))))

(declare-fun b!4654337 () Bool)

(declare-fun res!1956788 () Bool)

(assert (=> b!4654337 (=> (not res!1956788) (not e!2903901))))

(declare-fun allKeysSameHash!1488 (List!52004 (_ BitVec 64) Hashable!6031) Bool)

(assert (=> b!4654337 (= res!1956788 (allKeysSameHash!1488 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4654338 () Bool)

(declare-fun e!2903911 () Bool)

(assert (=> b!4654338 (= e!2903911 e!2903901)))

(declare-fun res!1956796 () Bool)

(assert (=> b!4654338 (=> (not res!1956796) (not e!2903901))))

(assert (=> b!4654338 (= res!1956796 (contains!15025 lt!1817568 key!4968))))

(assert (=> b!4654338 (= lt!1817568 (extractMap!1690 (Cons!51881 (tuple2!52985 hash!414 oldBucket!40) Nil!51881)))))

(declare-fun b!4654339 () Bool)

(declare-fun res!1956793 () Bool)

(assert (=> b!4654339 (=> (not res!1956793) (not e!2903911))))

(declare-fun removePairForKey!1257 (List!52004 K!13235) List!52004)

(assert (=> b!4654339 (= res!1956793 (= (removePairForKey!1257 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4654340 () Bool)

(declare-fun res!1956780 () Bool)

(assert (=> b!4654340 (=> (not res!1956780) (not e!2903911))))

(assert (=> b!4654340 (= res!1956780 (allKeysSameHash!1488 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4654341 () Bool)

(declare-fun res!1956795 () Bool)

(assert (=> b!4654341 (=> res!1956795 e!2903905)))

(assert (=> b!4654341 (= res!1956795 (not (= lt!1817566 lt!1817565)))))

(declare-fun b!4654342 () Bool)

(declare-fun e!2903910 () Bool)

(assert (=> b!4654342 (= e!2903904 e!2903910)))

(declare-fun res!1956781 () Bool)

(assert (=> b!4654342 (=> res!1956781 e!2903910)))

(assert (=> b!4654342 (= res!1956781 (not (= lt!1817559 newBucket!224)))))

(declare-fun tail!8249 (List!52004) List!52004)

(assert (=> b!4654342 (= lt!1817559 (tail!8249 oldBucket!40))))

(declare-fun b!4654343 () Bool)

(declare-fun res!1956787 () Bool)

(assert (=> b!4654343 (=> (not res!1956787) (not e!2903911))))

(declare-fun noDuplicateKeys!1634 (List!52004) Bool)

(assert (=> b!4654343 (= res!1956787 (noDuplicateKeys!1634 newBucket!224))))

(declare-fun b!4654344 () Bool)

(declare-fun e!2903912 () Bool)

(declare-fun tp!1343255 () Bool)

(assert (=> b!4654344 (= e!2903912 (and tp_is_empty!29829 tp_is_empty!29831 tp!1343255))))

(declare-fun res!1956779 () Bool)

(assert (=> start!468336 (=> (not res!1956779) (not e!2903911))))

(assert (=> start!468336 (= res!1956779 (noDuplicateKeys!1634 oldBucket!40))))

(assert (=> start!468336 e!2903911))

(assert (=> start!468336 true))

(assert (=> start!468336 e!2903907))

(assert (=> start!468336 tp_is_empty!29829))

(assert (=> start!468336 e!2903912))

(declare-fun b!4654332 () Bool)

(declare-fun res!1956785 () Bool)

(assert (=> b!4654332 (=> res!1956785 e!2903902)))

(assert (=> b!4654332 (= res!1956785 (not (eq!913 lt!1817563 lt!1817570)))))

(declare-fun b!4654345 () Bool)

(assert (=> b!4654345 (= e!2903910 e!2903906)))

(declare-fun res!1956794 () Bool)

(assert (=> b!4654345 (=> res!1956794 e!2903906)))

(assert (=> b!4654345 (= res!1956794 (not (= lt!1817565 lt!1817570)))))

(assert (=> b!4654345 (= lt!1817570 (extractMap!1690 (Cons!51881 (tuple2!52985 hash!414 newBucket!224) Nil!51881)))))

(assert (=> b!4654345 (= lt!1817565 (extractMap!1690 lt!1817560))))

(assert (=> b!4654345 (= lt!1817560 (Cons!51881 (tuple2!52985 hash!414 lt!1817559) Nil!51881))))

(declare-fun b!4654346 () Bool)

(assert (=> b!4654346 (= e!2903908 e!2903905)))

(declare-fun res!1956790 () Bool)

(assert (=> b!4654346 (=> res!1956790 e!2903905)))

(assert (=> b!4654346 (= res!1956790 (not (eq!913 lt!1817556 lt!1817561)))))

(assert (=> b!4654346 (= lt!1817561 (addToMapMapFromBucket!1091 oldBucket!40 (ListMap!4538 Nil!51880)))))

(assert (=> b!4654346 (= lt!1817556 (+!1978 lt!1817566 (h!58020 oldBucket!40)))))

(declare-fun lt!1817564 () tuple2!52982)

(assert (=> b!4654346 (eq!913 (addToMapMapFromBucket!1091 (Cons!51880 lt!1817564 lt!1817559) (ListMap!4538 Nil!51880)) (+!1978 lt!1817566 lt!1817564))))

(declare-fun lt!1817567 () Unit!118396)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!164 (tuple2!52982 List!52004 ListMap!4537) Unit!118396)

(assert (=> b!4654346 (= lt!1817567 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!164 lt!1817564 lt!1817559 (ListMap!4538 Nil!51880)))))

(declare-fun head!9734 (List!52004) tuple2!52982)

(assert (=> b!4654346 (= lt!1817564 (head!9734 oldBucket!40))))

(assert (= (and start!468336 res!1956779) b!4654343))

(assert (= (and b!4654343 res!1956787) b!4654339))

(assert (= (and b!4654339 res!1956793) b!4654340))

(assert (= (and b!4654340 res!1956780) b!4654338))

(assert (= (and b!4654338 res!1956796) b!4654331))

(assert (= (and b!4654331 res!1956783) b!4654337))

(assert (= (and b!4654337 res!1956788) b!4654335))

(assert (= (and b!4654335 res!1956792) b!4654330))

(assert (= (and b!4654335 (not res!1956778)) b!4654342))

(assert (= (and b!4654342 (not res!1956781)) b!4654345))

(assert (= (and b!4654345 (not res!1956794)) b!4654329))

(assert (= (and b!4654329 (not res!1956784)) b!4654346))

(assert (= (and b!4654346 (not res!1956790)) b!4654328))

(assert (= (and b!4654328 (not res!1956777)) b!4654341))

(assert (= (and b!4654341 (not res!1956795)) b!4654336))

(assert (= (and b!4654336 (not res!1956782)) b!4654325))

(assert (= (and b!4654325 (not res!1956786)) b!4654333))

(assert (= (and b!4654333 (not res!1956789)) b!4654326))

(assert (= (and b!4654326 (not res!1956791)) b!4654332))

(assert (= (and b!4654332 (not res!1956785)) b!4654327))

(assert (= (and start!468336 ((_ is Cons!51880) oldBucket!40)) b!4654334))

(assert (= (and start!468336 ((_ is Cons!51880) newBucket!224)) b!4654344))

(declare-fun m!5532981 () Bool)

(assert (=> b!4654328 m!5532981))

(declare-fun m!5532983 () Bool)

(assert (=> b!4654325 m!5532983))

(declare-fun m!5532985 () Bool)

(assert (=> b!4654325 m!5532985))

(assert (=> b!4654325 m!5532985))

(declare-fun m!5532987 () Bool)

(assert (=> b!4654325 m!5532987))

(declare-fun m!5532989 () Bool)

(assert (=> b!4654325 m!5532989))

(declare-fun m!5532991 () Bool)

(assert (=> start!468336 m!5532991))

(declare-fun m!5532993 () Bool)

(assert (=> b!4654326 m!5532993))

(declare-fun m!5532995 () Bool)

(assert (=> b!4654326 m!5532995))

(declare-fun m!5532997 () Bool)

(assert (=> b!4654326 m!5532997))

(declare-fun m!5532999 () Bool)

(assert (=> b!4654342 m!5532999))

(declare-fun m!5533001 () Bool)

(assert (=> b!4654346 m!5533001))

(declare-fun m!5533003 () Bool)

(assert (=> b!4654346 m!5533003))

(declare-fun m!5533005 () Bool)

(assert (=> b!4654346 m!5533005))

(declare-fun m!5533007 () Bool)

(assert (=> b!4654346 m!5533007))

(declare-fun m!5533009 () Bool)

(assert (=> b!4654346 m!5533009))

(declare-fun m!5533011 () Bool)

(assert (=> b!4654346 m!5533011))

(declare-fun m!5533013 () Bool)

(assert (=> b!4654346 m!5533013))

(assert (=> b!4654346 m!5533003))

(assert (=> b!4654346 m!5533001))

(declare-fun m!5533015 () Bool)

(assert (=> b!4654346 m!5533015))

(declare-fun m!5533017 () Bool)

(assert (=> b!4654338 m!5533017))

(declare-fun m!5533019 () Bool)

(assert (=> b!4654338 m!5533019))

(declare-fun m!5533021 () Bool)

(assert (=> b!4654340 m!5533021))

(declare-fun m!5533023 () Bool)

(assert (=> b!4654332 m!5533023))

(declare-fun m!5533025 () Bool)

(assert (=> b!4654343 m!5533025))

(declare-fun m!5533027 () Bool)

(assert (=> b!4654335 m!5533027))

(declare-fun m!5533029 () Bool)

(assert (=> b!4654335 m!5533029))

(declare-fun m!5533031 () Bool)

(assert (=> b!4654339 m!5533031))

(declare-fun m!5533033 () Bool)

(assert (=> b!4654329 m!5533033))

(declare-fun m!5533035 () Bool)

(assert (=> b!4654329 m!5533035))

(declare-fun m!5533037 () Bool)

(assert (=> b!4654337 m!5533037))

(declare-fun m!5533039 () Bool)

(assert (=> b!4654331 m!5533039))

(declare-fun m!5533041 () Bool)

(assert (=> b!4654345 m!5533041))

(declare-fun m!5533043 () Bool)

(assert (=> b!4654345 m!5533043))

(declare-fun m!5533045 () Bool)

(assert (=> b!4654333 m!5533045))

(declare-fun m!5533047 () Bool)

(assert (=> b!4654327 m!5533047))

(declare-fun m!5533049 () Bool)

(assert (=> b!4654336 m!5533049))

(declare-fun m!5533051 () Bool)

(assert (=> b!4654336 m!5533051))

(declare-fun m!5533053 () Bool)

(assert (=> b!4654336 m!5533053))

(check-sat (not b!4654337) (not b!4654338) (not b!4654343) (not b!4654326) (not b!4654336) (not b!4654328) (not b!4654340) (not b!4654334) (not b!4654344) tp_is_empty!29831 (not start!468336) (not b!4654329) (not b!4654345) (not b!4654346) (not b!4654331) (not b!4654342) (not b!4654335) (not b!4654339) tp_is_empty!29829 (not b!4654333) (not b!4654327) (not b!4654332) (not b!4654325))
(check-sat)
