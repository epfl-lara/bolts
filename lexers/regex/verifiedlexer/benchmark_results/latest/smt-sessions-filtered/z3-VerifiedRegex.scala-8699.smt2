; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!463308 () Bool)

(assert start!463308)

(declare-fun b!4624083 () Bool)

(declare-fun res!1938859 () Bool)

(declare-fun e!2884395 () Bool)

(assert (=> b!4624083 (=> res!1938859 e!2884395)))

(declare-datatypes ((K!12900 0))(
  ( (K!12901 (val!18591 Int)) )
))
(declare-datatypes ((V!13146 0))(
  ( (V!13147 (val!18592 Int)) )
))
(declare-datatypes ((tuple2!52446 0))(
  ( (tuple2!52447 (_1!29517 K!12900) (_2!29517 V!13146)) )
))
(declare-datatypes ((List!51642 0))(
  ( (Nil!51518) (Cons!51518 (h!57564 tuple2!52446) (t!358670 List!51642)) )
))
(declare-fun lt!1781372 () List!51642)

(declare-fun oldBucket!40 () List!51642)

(declare-fun key!4968 () K!12900)

(declare-fun removePairForKey!1123 (List!51642 K!12900) List!51642)

(assert (=> b!4624083 (= res!1938859 (not (= (removePairForKey!1123 (t!358670 oldBucket!40) key!4968) lt!1781372)))))

(declare-fun res!1938862 () Bool)

(declare-fun e!2884394 () Bool)

(assert (=> start!463308 (=> (not res!1938862) (not e!2884394))))

(declare-fun noDuplicateKeys!1500 (List!51642) Bool)

(assert (=> start!463308 (= res!1938862 (noDuplicateKeys!1500 oldBucket!40))))

(assert (=> start!463308 e!2884394))

(assert (=> start!463308 true))

(declare-fun e!2884398 () Bool)

(assert (=> start!463308 e!2884398))

(declare-fun tp_is_empty!29293 () Bool)

(assert (=> start!463308 tp_is_empty!29293))

(declare-fun e!2884404 () Bool)

(assert (=> start!463308 e!2884404))

(declare-fun b!4624084 () Bool)

(declare-fun res!1938860 () Bool)

(declare-fun e!2884397 () Bool)

(assert (=> b!4624084 (=> (not res!1938860) (not e!2884397))))

(declare-datatypes ((Hashable!5897 0))(
  ( (HashableExt!5896 (__x!31600 Int)) )
))
(declare-fun hashF!1389 () Hashable!5897)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun newBucket!224 () List!51642)

(declare-fun allKeysSameHash!1354 (List!51642 (_ BitVec 64) Hashable!5897) Bool)

(assert (=> b!4624084 (= res!1938860 (allKeysSameHash!1354 newBucket!224 hash!414 hashF!1389))))

(declare-fun tp!1342055 () Bool)

(declare-fun tp_is_empty!29295 () Bool)

(declare-fun b!4624085 () Bool)

(assert (=> b!4624085 (= e!2884398 (and tp_is_empty!29293 tp_is_empty!29295 tp!1342055))))

(declare-fun b!4624086 () Bool)

(declare-fun e!2884396 () Bool)

(declare-datatypes ((ListMap!4269 0))(
  ( (ListMap!4270 (toList!4965 List!51642)) )
))
(declare-fun lt!1781370 () ListMap!4269)

(assert (=> b!4624086 (= e!2884396 (= lt!1781370 (ListMap!4270 Nil!51518)))))

(declare-fun b!4624087 () Bool)

(declare-fun res!1938870 () Bool)

(assert (=> b!4624087 (=> (not res!1938870) (not e!2884394))))

(assert (=> b!4624087 (= res!1938870 (allKeysSameHash!1354 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4624088 () Bool)

(declare-fun e!2884399 () Bool)

(declare-fun e!2884401 () Bool)

(assert (=> b!4624088 (= e!2884399 e!2884401)))

(declare-fun res!1938861 () Bool)

(assert (=> b!4624088 (=> res!1938861 e!2884401)))

(declare-fun containsKey!2432 (List!51642 K!12900) Bool)

(assert (=> b!4624088 (= res!1938861 (not (containsKey!2432 (t!358670 oldBucket!40) key!4968)))))

(assert (=> b!4624088 (containsKey!2432 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!111769 0))(
  ( (Unit!111770) )
))
(declare-fun lt!1781385 () Unit!111769)

(declare-fun lemmaGetPairDefinedThenContainsKey!46 (List!51642 K!12900 Hashable!5897) Unit!111769)

(assert (=> b!4624088 (= lt!1781385 (lemmaGetPairDefinedThenContainsKey!46 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1781383 () List!51642)

(declare-datatypes ((Option!11574 0))(
  ( (None!11573) (Some!11573 (v!45691 tuple2!52446)) )
))
(declare-fun isDefined!8839 (Option!11574) Bool)

(declare-fun getPair!292 (List!51642 K!12900) Option!11574)

(assert (=> b!4624088 (isDefined!8839 (getPair!292 lt!1781383 key!4968))))

(declare-datatypes ((tuple2!52448 0))(
  ( (tuple2!52449 (_1!29518 (_ BitVec 64)) (_2!29518 List!51642)) )
))
(declare-datatypes ((List!51643 0))(
  ( (Nil!51519) (Cons!51519 (h!57565 tuple2!52448) (t!358671 List!51643)) )
))
(declare-fun lt!1781378 () List!51643)

(declare-fun lt!1781380 () Unit!111769)

(declare-fun lt!1781374 () tuple2!52448)

(declare-fun lambda!191664 () Int)

(declare-fun forallContained!3040 (List!51643 Int tuple2!52448) Unit!111769)

(assert (=> b!4624088 (= lt!1781380 (forallContained!3040 lt!1781378 lambda!191664 lt!1781374))))

(declare-fun contains!14551 (List!51643 tuple2!52448) Bool)

(assert (=> b!4624088 (contains!14551 lt!1781378 lt!1781374)))

(declare-fun lt!1781379 () (_ BitVec 64))

(assert (=> b!4624088 (= lt!1781374 (tuple2!52449 lt!1781379 lt!1781383))))

(declare-datatypes ((ListLongMap!3555 0))(
  ( (ListLongMap!3556 (toList!4966 List!51643)) )
))
(declare-fun lt!1781393 () ListLongMap!3555)

(declare-fun lt!1781390 () Unit!111769)

(declare-fun lemmaGetValueImpliesTupleContained!97 (ListLongMap!3555 (_ BitVec 64) List!51642) Unit!111769)

(assert (=> b!4624088 (= lt!1781390 (lemmaGetValueImpliesTupleContained!97 lt!1781393 lt!1781379 lt!1781383))))

(declare-fun apply!12165 (ListLongMap!3555 (_ BitVec 64)) List!51642)

(assert (=> b!4624088 (= lt!1781383 (apply!12165 lt!1781393 lt!1781379))))

(declare-fun contains!14552 (ListLongMap!3555 (_ BitVec 64)) Bool)

(assert (=> b!4624088 (contains!14552 lt!1781393 lt!1781379)))

(declare-fun lt!1781386 () Unit!111769)

(declare-fun lemmaInGenMapThenLongMapContainsHash!498 (ListLongMap!3555 K!12900 Hashable!5897) Unit!111769)

(assert (=> b!4624088 (= lt!1781386 (lemmaInGenMapThenLongMapContainsHash!498 lt!1781393 key!4968 hashF!1389))))

(declare-fun lt!1781388 () Unit!111769)

(declare-fun lemmaInGenMapThenGetPairDefined!88 (ListLongMap!3555 K!12900 Hashable!5897) Unit!111769)

(assert (=> b!4624088 (= lt!1781388 (lemmaInGenMapThenGetPairDefined!88 lt!1781393 key!4968 hashF!1389))))

(assert (=> b!4624088 (= lt!1781393 (ListLongMap!3556 lt!1781378))))

(declare-fun b!4624089 () Bool)

(declare-fun res!1938864 () Bool)

(assert (=> b!4624089 (=> (not res!1938864) (not e!2884394))))

(assert (=> b!4624089 (= res!1938864 (noDuplicateKeys!1500 newBucket!224))))

(declare-fun b!4624090 () Bool)

(declare-fun e!2884403 () Bool)

(assert (=> b!4624090 (= e!2884395 e!2884403)))

(declare-fun res!1938858 () Bool)

(assert (=> b!4624090 (=> res!1938858 e!2884403)))

(declare-fun lt!1781387 () List!51642)

(declare-fun lt!1781375 () ListMap!4269)

(declare-fun eq!815 (ListMap!4269 ListMap!4269) Bool)

(declare-fun +!1866 (ListMap!4269 tuple2!52446) ListMap!4269)

(declare-fun extractMap!1556 (List!51643) ListMap!4269)

(assert (=> b!4624090 (= res!1938858 (not (eq!815 lt!1781375 (+!1866 (extractMap!1556 (Cons!51519 (tuple2!52449 hash!414 lt!1781387) Nil!51519)) (h!57564 oldBucket!40)))))))

(declare-fun lt!1781392 () tuple2!52446)

(declare-fun addToMapMapFromBucket!961 (List!51642 ListMap!4269) ListMap!4269)

(assert (=> b!4624090 (eq!815 (addToMapMapFromBucket!961 (Cons!51518 lt!1781392 lt!1781372) (ListMap!4270 Nil!51518)) (+!1866 (addToMapMapFromBucket!961 lt!1781372 (ListMap!4270 Nil!51518)) lt!1781392))))

(declare-fun lt!1781384 () Unit!111769)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!66 (tuple2!52446 List!51642 ListMap!4269) Unit!111769)

(assert (=> b!4624090 (= lt!1781384 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!66 lt!1781392 lt!1781372 (ListMap!4270 Nil!51518)))))

(declare-fun head!9634 (List!51642) tuple2!52446)

(assert (=> b!4624090 (= lt!1781392 (head!9634 newBucket!224))))

(declare-fun lt!1781389 () tuple2!52446)

(assert (=> b!4624090 (eq!815 (addToMapMapFromBucket!961 (Cons!51518 lt!1781389 lt!1781387) (ListMap!4270 Nil!51518)) (+!1866 (addToMapMapFromBucket!961 lt!1781387 (ListMap!4270 Nil!51518)) lt!1781389))))

(declare-fun lt!1781391 () Unit!111769)

(assert (=> b!4624090 (= lt!1781391 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!66 lt!1781389 lt!1781387 (ListMap!4270 Nil!51518)))))

(assert (=> b!4624090 (= lt!1781389 (head!9634 oldBucket!40))))

(declare-fun lt!1781382 () ListMap!4269)

(declare-fun contains!14553 (ListMap!4269 K!12900) Bool)

(assert (=> b!4624090 (contains!14553 lt!1781382 key!4968)))

(declare-fun lt!1781377 () List!51643)

(assert (=> b!4624090 (= lt!1781382 (extractMap!1556 lt!1781377))))

(declare-fun lt!1781373 () Unit!111769)

(declare-fun lemmaListContainsThenExtractedMapContains!318 (ListLongMap!3555 K!12900 Hashable!5897) Unit!111769)

(assert (=> b!4624090 (= lt!1781373 (lemmaListContainsThenExtractedMapContains!318 (ListLongMap!3556 lt!1781377) key!4968 hashF!1389))))

(assert (=> b!4624090 (= lt!1781377 (Cons!51519 (tuple2!52449 hash!414 (t!358670 oldBucket!40)) Nil!51519))))

(declare-fun b!4624091 () Bool)

(assert (=> b!4624091 (= e!2884397 (not e!2884399))))

(declare-fun res!1938857 () Bool)

(assert (=> b!4624091 (=> res!1938857 e!2884399)))

(get-info :version)

(assert (=> b!4624091 (= res!1938857 (or (and ((_ is Cons!51518) oldBucket!40) (= (_1!29517 (h!57564 oldBucket!40)) key!4968)) (not ((_ is Cons!51518) oldBucket!40)) (= (_1!29517 (h!57564 oldBucket!40)) key!4968)))))

(assert (=> b!4624091 e!2884396))

(declare-fun res!1938866 () Bool)

(assert (=> b!4624091 (=> (not res!1938866) (not e!2884396))))

(assert (=> b!4624091 (= res!1938866 (= lt!1781375 (addToMapMapFromBucket!961 oldBucket!40 lt!1781370)))))

(assert (=> b!4624091 (= lt!1781370 (extractMap!1556 Nil!51519))))

(assert (=> b!4624091 true))

(declare-fun b!4624092 () Bool)

(assert (=> b!4624092 (= e!2884401 e!2884395)))

(declare-fun res!1938868 () Bool)

(assert (=> b!4624092 (=> res!1938868 e!2884395)))

(assert (=> b!4624092 (= res!1938868 (not (= (removePairForKey!1123 lt!1781387 key!4968) lt!1781372)))))

(declare-fun tail!8135 (List!51642) List!51642)

(assert (=> b!4624092 (= lt!1781372 (tail!8135 newBucket!224))))

(assert (=> b!4624092 (= lt!1781387 (tail!8135 oldBucket!40))))

(declare-fun b!4624093 () Bool)

(declare-fun e!2884400 () Bool)

(assert (=> b!4624093 (= e!2884400 (not (= newBucket!224 Nil!51518)))))

(declare-fun lt!1781371 () ListMap!4269)

(declare-fun -!540 (ListMap!4269 K!12900) ListMap!4269)

(assert (=> b!4624093 (eq!815 lt!1781371 (-!540 lt!1781382 key!4968))))

(declare-fun lt!1781381 () Unit!111769)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!102 ((_ BitVec 64) List!51642 List!51642 K!12900 Hashable!5897) Unit!111769)

(assert (=> b!4624093 (= lt!1781381 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!102 hash!414 (t!358670 oldBucket!40) lt!1781372 key!4968 hashF!1389))))

(declare-fun b!4624094 () Bool)

(declare-fun res!1938869 () Bool)

(assert (=> b!4624094 (=> (not res!1938869) (not e!2884394))))

(assert (=> b!4624094 (= res!1938869 (= (removePairForKey!1123 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4624095 () Bool)

(declare-fun e!2884402 () Bool)

(assert (=> b!4624095 (= e!2884402 e!2884397)))

(declare-fun res!1938865 () Bool)

(assert (=> b!4624095 (=> (not res!1938865) (not e!2884397))))

(assert (=> b!4624095 (= res!1938865 (= lt!1781379 hash!414))))

(declare-fun hash!3485 (Hashable!5897 K!12900) (_ BitVec 64))

(assert (=> b!4624095 (= lt!1781379 (hash!3485 hashF!1389 key!4968))))

(declare-fun b!4624096 () Bool)

(assert (=> b!4624096 (= e!2884394 e!2884402)))

(declare-fun res!1938867 () Bool)

(assert (=> b!4624096 (=> (not res!1938867) (not e!2884402))))

(assert (=> b!4624096 (= res!1938867 (contains!14553 lt!1781375 key!4968))))

(assert (=> b!4624096 (= lt!1781375 (extractMap!1556 lt!1781378))))

(assert (=> b!4624096 (= lt!1781378 (Cons!51519 (tuple2!52449 hash!414 oldBucket!40) Nil!51519))))

(declare-fun b!4624097 () Bool)

(assert (=> b!4624097 (= e!2884403 e!2884400)))

(declare-fun res!1938863 () Bool)

(assert (=> b!4624097 (=> res!1938863 e!2884400)))

(declare-fun lt!1781376 () ListMap!4269)

(assert (=> b!4624097 (= res!1938863 (not (eq!815 lt!1781376 (+!1866 lt!1781371 lt!1781392))))))

(assert (=> b!4624097 (= lt!1781371 (extractMap!1556 (Cons!51519 (tuple2!52449 hash!414 lt!1781372) Nil!51519)))))

(assert (=> b!4624097 (= lt!1781376 (extractMap!1556 (Cons!51519 (tuple2!52449 hash!414 newBucket!224) Nil!51519)))))

(declare-fun tp!1342054 () Bool)

(declare-fun b!4624098 () Bool)

(assert (=> b!4624098 (= e!2884404 (and tp_is_empty!29293 tp_is_empty!29295 tp!1342054))))

(assert (= (and start!463308 res!1938862) b!4624089))

(assert (= (and b!4624089 res!1938864) b!4624094))

(assert (= (and b!4624094 res!1938869) b!4624087))

(assert (= (and b!4624087 res!1938870) b!4624096))

(assert (= (and b!4624096 res!1938867) b!4624095))

(assert (= (and b!4624095 res!1938865) b!4624084))

(assert (= (and b!4624084 res!1938860) b!4624091))

(assert (= (and b!4624091 res!1938866) b!4624086))

(assert (= (and b!4624091 (not res!1938857)) b!4624088))

(assert (= (and b!4624088 (not res!1938861)) b!4624092))

(assert (= (and b!4624092 (not res!1938868)) b!4624083))

(assert (= (and b!4624083 (not res!1938859)) b!4624090))

(assert (= (and b!4624090 (not res!1938858)) b!4624097))

(assert (= (and b!4624097 (not res!1938863)) b!4624093))

(assert (= (and start!463308 ((_ is Cons!51518) oldBucket!40)) b!4624085))

(assert (= (and start!463308 ((_ is Cons!51518) newBucket!224)) b!4624098))

(declare-fun m!5463993 () Bool)

(assert (=> b!4624096 m!5463993))

(declare-fun m!5463995 () Bool)

(assert (=> b!4624096 m!5463995))

(declare-fun m!5463997 () Bool)

(assert (=> start!463308 m!5463997))

(declare-fun m!5463999 () Bool)

(assert (=> b!4624094 m!5463999))

(declare-fun m!5464001 () Bool)

(assert (=> b!4624091 m!5464001))

(declare-fun m!5464003 () Bool)

(assert (=> b!4624091 m!5464003))

(declare-fun m!5464005 () Bool)

(assert (=> b!4624088 m!5464005))

(declare-fun m!5464007 () Bool)

(assert (=> b!4624088 m!5464007))

(declare-fun m!5464009 () Bool)

(assert (=> b!4624088 m!5464009))

(assert (=> b!4624088 m!5464009))

(declare-fun m!5464011 () Bool)

(assert (=> b!4624088 m!5464011))

(declare-fun m!5464013 () Bool)

(assert (=> b!4624088 m!5464013))

(declare-fun m!5464015 () Bool)

(assert (=> b!4624088 m!5464015))

(declare-fun m!5464017 () Bool)

(assert (=> b!4624088 m!5464017))

(declare-fun m!5464019 () Bool)

(assert (=> b!4624088 m!5464019))

(declare-fun m!5464021 () Bool)

(assert (=> b!4624088 m!5464021))

(declare-fun m!5464023 () Bool)

(assert (=> b!4624088 m!5464023))

(declare-fun m!5464025 () Bool)

(assert (=> b!4624088 m!5464025))

(declare-fun m!5464027 () Bool)

(assert (=> b!4624088 m!5464027))

(declare-fun m!5464029 () Bool)

(assert (=> b!4624090 m!5464029))

(declare-fun m!5464031 () Bool)

(assert (=> b!4624090 m!5464031))

(declare-fun m!5464033 () Bool)

(assert (=> b!4624090 m!5464033))

(assert (=> b!4624090 m!5464029))

(declare-fun m!5464035 () Bool)

(assert (=> b!4624090 m!5464035))

(declare-fun m!5464037 () Bool)

(assert (=> b!4624090 m!5464037))

(declare-fun m!5464039 () Bool)

(assert (=> b!4624090 m!5464039))

(declare-fun m!5464041 () Bool)

(assert (=> b!4624090 m!5464041))

(declare-fun m!5464043 () Bool)

(assert (=> b!4624090 m!5464043))

(declare-fun m!5464045 () Bool)

(assert (=> b!4624090 m!5464045))

(assert (=> b!4624090 m!5464035))

(declare-fun m!5464047 () Bool)

(assert (=> b!4624090 m!5464047))

(assert (=> b!4624090 m!5464045))

(declare-fun m!5464049 () Bool)

(assert (=> b!4624090 m!5464049))

(declare-fun m!5464051 () Bool)

(assert (=> b!4624090 m!5464051))

(declare-fun m!5464053 () Bool)

(assert (=> b!4624090 m!5464053))

(assert (=> b!4624090 m!5464039))

(declare-fun m!5464055 () Bool)

(assert (=> b!4624090 m!5464055))

(declare-fun m!5464057 () Bool)

(assert (=> b!4624090 m!5464057))

(assert (=> b!4624090 m!5464055))

(assert (=> b!4624090 m!5464033))

(declare-fun m!5464059 () Bool)

(assert (=> b!4624090 m!5464059))

(assert (=> b!4624090 m!5464053))

(assert (=> b!4624090 m!5464031))

(declare-fun m!5464061 () Bool)

(assert (=> b!4624090 m!5464061))

(declare-fun m!5464063 () Bool)

(assert (=> b!4624090 m!5464063))

(declare-fun m!5464065 () Bool)

(assert (=> b!4624089 m!5464065))

(declare-fun m!5464067 () Bool)

(assert (=> b!4624087 m!5464067))

(declare-fun m!5464069 () Bool)

(assert (=> b!4624093 m!5464069))

(assert (=> b!4624093 m!5464069))

(declare-fun m!5464071 () Bool)

(assert (=> b!4624093 m!5464071))

(declare-fun m!5464073 () Bool)

(assert (=> b!4624093 m!5464073))

(declare-fun m!5464075 () Bool)

(assert (=> b!4624092 m!5464075))

(declare-fun m!5464077 () Bool)

(assert (=> b!4624092 m!5464077))

(declare-fun m!5464079 () Bool)

(assert (=> b!4624092 m!5464079))

(declare-fun m!5464081 () Bool)

(assert (=> b!4624083 m!5464081))

(declare-fun m!5464083 () Bool)

(assert (=> b!4624097 m!5464083))

(assert (=> b!4624097 m!5464083))

(declare-fun m!5464085 () Bool)

(assert (=> b!4624097 m!5464085))

(declare-fun m!5464087 () Bool)

(assert (=> b!4624097 m!5464087))

(declare-fun m!5464089 () Bool)

(assert (=> b!4624097 m!5464089))

(declare-fun m!5464091 () Bool)

(assert (=> b!4624084 m!5464091))

(declare-fun m!5464093 () Bool)

(assert (=> b!4624095 m!5464093))

(check-sat (not b!4624090) (not b!4624094) tp_is_empty!29295 (not b!4624088) (not b!4624097) (not b!4624098) (not b!4624091) (not b!4624085) tp_is_empty!29293 (not b!4624096) (not b!4624083) (not b!4624087) (not b!4624093) (not b!4624089) (not b!4624084) (not b!4624095) (not start!463308) (not b!4624092))
(check-sat)
(get-model)

(declare-fun bm!322499 () Bool)

(declare-fun call!322504 () Bool)

(declare-datatypes ((List!51645 0))(
  ( (Nil!51521) (Cons!51521 (h!57569 K!12900) (t!358675 List!51645)) )
))
(declare-fun e!2884437 () List!51645)

(declare-fun contains!14555 (List!51645 K!12900) Bool)

(assert (=> bm!322499 (= call!322504 (contains!14555 e!2884437 key!4968))))

(declare-fun c!791533 () Bool)

(declare-fun c!791534 () Bool)

(assert (=> bm!322499 (= c!791533 c!791534)))

(declare-fun b!4624148 () Bool)

(declare-fun e!2884440 () Bool)

(declare-fun e!2884441 () Bool)

(assert (=> b!4624148 (= e!2884440 e!2884441)))

(declare-fun res!1938889 () Bool)

(assert (=> b!4624148 (=> (not res!1938889) (not e!2884441))))

(declare-datatypes ((Option!11576 0))(
  ( (None!11575) (Some!11575 (v!45697 V!13146)) )
))
(declare-fun isDefined!8840 (Option!11576) Bool)

(declare-fun getValueByKey!1442 (List!51642 K!12900) Option!11576)

(assert (=> b!4624148 (= res!1938889 (isDefined!8840 (getValueByKey!1442 (toList!4965 lt!1781375) key!4968)))))

(declare-fun b!4624149 () Bool)

(declare-fun e!2884438 () Unit!111769)

(declare-fun lt!1781429 () Unit!111769)

(assert (=> b!4624149 (= e!2884438 lt!1781429)))

(declare-fun lt!1781423 () Unit!111769)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1343 (List!51642 K!12900) Unit!111769)

(assert (=> b!4624149 (= lt!1781423 (lemmaContainsKeyImpliesGetValueByKeyDefined!1343 (toList!4965 lt!1781375) key!4968))))

(assert (=> b!4624149 (isDefined!8840 (getValueByKey!1442 (toList!4965 lt!1781375) key!4968))))

(declare-fun lt!1781425 () Unit!111769)

(assert (=> b!4624149 (= lt!1781425 lt!1781423)))

(declare-fun lemmaInListThenGetKeysListContains!645 (List!51642 K!12900) Unit!111769)

(assert (=> b!4624149 (= lt!1781429 (lemmaInListThenGetKeysListContains!645 (toList!4965 lt!1781375) key!4968))))

(assert (=> b!4624149 call!322504))

(declare-fun b!4624150 () Bool)

(declare-fun e!2884439 () Unit!111769)

(assert (=> b!4624150 (= e!2884438 e!2884439)))

(declare-fun c!791535 () Bool)

(assert (=> b!4624150 (= c!791535 call!322504)))

(declare-fun b!4624151 () Bool)

(assert (=> b!4624151 false))

(declare-fun lt!1781424 () Unit!111769)

(declare-fun lt!1781430 () Unit!111769)

(assert (=> b!4624151 (= lt!1781424 lt!1781430)))

(declare-fun containsKey!2433 (List!51642 K!12900) Bool)

(assert (=> b!4624151 (containsKey!2433 (toList!4965 lt!1781375) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!649 (List!51642 K!12900) Unit!111769)

(assert (=> b!4624151 (= lt!1781430 (lemmaInGetKeysListThenContainsKey!649 (toList!4965 lt!1781375) key!4968))))

(declare-fun Unit!111804 () Unit!111769)

(assert (=> b!4624151 (= e!2884439 Unit!111804)))

(declare-fun b!4624152 () Bool)

(declare-fun getKeysList!650 (List!51642) List!51645)

(assert (=> b!4624152 (= e!2884437 (getKeysList!650 (toList!4965 lt!1781375)))))

(declare-fun b!4624153 () Bool)

(declare-fun keys!18144 (ListMap!4269) List!51645)

(assert (=> b!4624153 (= e!2884437 (keys!18144 lt!1781375))))

(declare-fun d!1456470 () Bool)

(assert (=> d!1456470 e!2884440))

(declare-fun res!1938888 () Bool)

(assert (=> d!1456470 (=> res!1938888 e!2884440)))

(declare-fun e!2884436 () Bool)

(assert (=> d!1456470 (= res!1938888 e!2884436)))

(declare-fun res!1938890 () Bool)

(assert (=> d!1456470 (=> (not res!1938890) (not e!2884436))))

(declare-fun lt!1781426 () Bool)

(assert (=> d!1456470 (= res!1938890 (not lt!1781426))))

(declare-fun lt!1781428 () Bool)

(assert (=> d!1456470 (= lt!1781426 lt!1781428)))

(declare-fun lt!1781427 () Unit!111769)

(assert (=> d!1456470 (= lt!1781427 e!2884438)))

(assert (=> d!1456470 (= c!791534 lt!1781428)))

(assert (=> d!1456470 (= lt!1781428 (containsKey!2433 (toList!4965 lt!1781375) key!4968))))

(assert (=> d!1456470 (= (contains!14553 lt!1781375 key!4968) lt!1781426)))

(declare-fun b!4624154 () Bool)

(assert (=> b!4624154 (= e!2884436 (not (contains!14555 (keys!18144 lt!1781375) key!4968)))))

(declare-fun b!4624155 () Bool)

(assert (=> b!4624155 (= e!2884441 (contains!14555 (keys!18144 lt!1781375) key!4968))))

(declare-fun b!4624156 () Bool)

(declare-fun Unit!111805 () Unit!111769)

(assert (=> b!4624156 (= e!2884439 Unit!111805)))

(assert (= (and d!1456470 c!791534) b!4624149))

(assert (= (and d!1456470 (not c!791534)) b!4624150))

(assert (= (and b!4624150 c!791535) b!4624151))

(assert (= (and b!4624150 (not c!791535)) b!4624156))

(assert (= (or b!4624149 b!4624150) bm!322499))

(assert (= (and bm!322499 c!791533) b!4624152))

(assert (= (and bm!322499 (not c!791533)) b!4624153))

(assert (= (and d!1456470 res!1938890) b!4624154))

(assert (= (and d!1456470 (not res!1938888)) b!4624148))

(assert (= (and b!4624148 res!1938889) b!4624155))

(declare-fun m!5464157 () Bool)

(assert (=> b!4624148 m!5464157))

(assert (=> b!4624148 m!5464157))

(declare-fun m!5464159 () Bool)

(assert (=> b!4624148 m!5464159))

(declare-fun m!5464161 () Bool)

(assert (=> b!4624149 m!5464161))

(assert (=> b!4624149 m!5464157))

(assert (=> b!4624149 m!5464157))

(assert (=> b!4624149 m!5464159))

(declare-fun m!5464163 () Bool)

(assert (=> b!4624149 m!5464163))

(declare-fun m!5464165 () Bool)

(assert (=> d!1456470 m!5464165))

(declare-fun m!5464167 () Bool)

(assert (=> b!4624152 m!5464167))

(assert (=> b!4624151 m!5464165))

(declare-fun m!5464169 () Bool)

(assert (=> b!4624151 m!5464169))

(declare-fun m!5464171 () Bool)

(assert (=> bm!322499 m!5464171))

(declare-fun m!5464173 () Bool)

(assert (=> b!4624153 m!5464173))

(assert (=> b!4624154 m!5464173))

(assert (=> b!4624154 m!5464173))

(declare-fun m!5464175 () Bool)

(assert (=> b!4624154 m!5464175))

(assert (=> b!4624155 m!5464173))

(assert (=> b!4624155 m!5464173))

(assert (=> b!4624155 m!5464175))

(assert (=> b!4624096 d!1456470))

(declare-fun bs!1022325 () Bool)

(declare-fun d!1456472 () Bool)

(assert (= bs!1022325 (and d!1456472 b!4624088)))

(declare-fun lambda!191702 () Int)

(assert (=> bs!1022325 (= lambda!191702 lambda!191664)))

(declare-fun lt!1781475 () ListMap!4269)

(declare-fun invariantList!1200 (List!51642) Bool)

(assert (=> d!1456472 (invariantList!1200 (toList!4965 lt!1781475))))

(declare-fun e!2884450 () ListMap!4269)

(assert (=> d!1456472 (= lt!1781475 e!2884450)))

(declare-fun c!791540 () Bool)

(assert (=> d!1456472 (= c!791540 ((_ is Cons!51519) lt!1781378))))

(declare-fun forall!10815 (List!51643 Int) Bool)

(assert (=> d!1456472 (forall!10815 lt!1781378 lambda!191702)))

(assert (=> d!1456472 (= (extractMap!1556 lt!1781378) lt!1781475)))

(declare-fun b!4624169 () Bool)

(assert (=> b!4624169 (= e!2884450 (addToMapMapFromBucket!961 (_2!29518 (h!57565 lt!1781378)) (extractMap!1556 (t!358671 lt!1781378))))))

(declare-fun b!4624170 () Bool)

(assert (=> b!4624170 (= e!2884450 (ListMap!4270 Nil!51518))))

(assert (= (and d!1456472 c!791540) b!4624169))

(assert (= (and d!1456472 (not c!791540)) b!4624170))

(declare-fun m!5464177 () Bool)

(assert (=> d!1456472 m!5464177))

(declare-fun m!5464179 () Bool)

(assert (=> d!1456472 m!5464179))

(declare-fun m!5464181 () Bool)

(assert (=> b!4624169 m!5464181))

(assert (=> b!4624169 m!5464181))

(declare-fun m!5464183 () Bool)

(assert (=> b!4624169 m!5464183))

(assert (=> b!4624096 d!1456472))

(declare-fun d!1456474 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8785 (List!51642) (InoxSet tuple2!52446))

(assert (=> d!1456474 (= (eq!815 lt!1781376 (+!1866 lt!1781371 lt!1781392)) (= (content!8785 (toList!4965 lt!1781376)) (content!8785 (toList!4965 (+!1866 lt!1781371 lt!1781392)))))))

(declare-fun bs!1022326 () Bool)

(assert (= bs!1022326 d!1456474))

(declare-fun m!5464185 () Bool)

(assert (=> bs!1022326 m!5464185))

(declare-fun m!5464187 () Bool)

(assert (=> bs!1022326 m!5464187))

(assert (=> b!4624097 d!1456474))

(declare-fun d!1456476 () Bool)

(declare-fun e!2884459 () Bool)

(assert (=> d!1456476 e!2884459))

(declare-fun res!1938910 () Bool)

(assert (=> d!1456476 (=> (not res!1938910) (not e!2884459))))

(declare-fun lt!1781520 () ListMap!4269)

(assert (=> d!1456476 (= res!1938910 (contains!14553 lt!1781520 (_1!29517 lt!1781392)))))

(declare-fun lt!1781518 () List!51642)

(assert (=> d!1456476 (= lt!1781520 (ListMap!4270 lt!1781518))))

(declare-fun lt!1781519 () Unit!111769)

(declare-fun lt!1781517 () Unit!111769)

(assert (=> d!1456476 (= lt!1781519 lt!1781517)))

(assert (=> d!1456476 (= (getValueByKey!1442 lt!1781518 (_1!29517 lt!1781392)) (Some!11575 (_2!29517 lt!1781392)))))

(declare-fun lemmaContainsTupThenGetReturnValue!844 (List!51642 K!12900 V!13146) Unit!111769)

(assert (=> d!1456476 (= lt!1781517 (lemmaContainsTupThenGetReturnValue!844 lt!1781518 (_1!29517 lt!1781392) (_2!29517 lt!1781392)))))

(declare-fun insertNoDuplicatedKeys!352 (List!51642 K!12900 V!13146) List!51642)

(assert (=> d!1456476 (= lt!1781518 (insertNoDuplicatedKeys!352 (toList!4965 lt!1781371) (_1!29517 lt!1781392) (_2!29517 lt!1781392)))))

(assert (=> d!1456476 (= (+!1866 lt!1781371 lt!1781392) lt!1781520)))

(declare-fun b!4624190 () Bool)

(declare-fun res!1938911 () Bool)

(assert (=> b!4624190 (=> (not res!1938911) (not e!2884459))))

(assert (=> b!4624190 (= res!1938911 (= (getValueByKey!1442 (toList!4965 lt!1781520) (_1!29517 lt!1781392)) (Some!11575 (_2!29517 lt!1781392))))))

(declare-fun b!4624191 () Bool)

(declare-fun contains!14556 (List!51642 tuple2!52446) Bool)

(assert (=> b!4624191 (= e!2884459 (contains!14556 (toList!4965 lt!1781520) lt!1781392))))

(assert (= (and d!1456476 res!1938910) b!4624190))

(assert (= (and b!4624190 res!1938911) b!4624191))

(declare-fun m!5464235 () Bool)

(assert (=> d!1456476 m!5464235))

(declare-fun m!5464237 () Bool)

(assert (=> d!1456476 m!5464237))

(declare-fun m!5464239 () Bool)

(assert (=> d!1456476 m!5464239))

(declare-fun m!5464241 () Bool)

(assert (=> d!1456476 m!5464241))

(declare-fun m!5464243 () Bool)

(assert (=> b!4624190 m!5464243))

(declare-fun m!5464245 () Bool)

(assert (=> b!4624191 m!5464245))

(assert (=> b!4624097 d!1456476))

(declare-fun bs!1022336 () Bool)

(declare-fun d!1456484 () Bool)

(assert (= bs!1022336 (and d!1456484 b!4624088)))

(declare-fun lambda!191707 () Int)

(assert (=> bs!1022336 (= lambda!191707 lambda!191664)))

(declare-fun bs!1022337 () Bool)

(assert (= bs!1022337 (and d!1456484 d!1456472)))

(assert (=> bs!1022337 (= lambda!191707 lambda!191702)))

(declare-fun lt!1781521 () ListMap!4269)

(assert (=> d!1456484 (invariantList!1200 (toList!4965 lt!1781521))))

(declare-fun e!2884460 () ListMap!4269)

(assert (=> d!1456484 (= lt!1781521 e!2884460)))

(declare-fun c!791542 () Bool)

(assert (=> d!1456484 (= c!791542 ((_ is Cons!51519) (Cons!51519 (tuple2!52449 hash!414 lt!1781372) Nil!51519)))))

(assert (=> d!1456484 (forall!10815 (Cons!51519 (tuple2!52449 hash!414 lt!1781372) Nil!51519) lambda!191707)))

(assert (=> d!1456484 (= (extractMap!1556 (Cons!51519 (tuple2!52449 hash!414 lt!1781372) Nil!51519)) lt!1781521)))

(declare-fun b!4624192 () Bool)

(assert (=> b!4624192 (= e!2884460 (addToMapMapFromBucket!961 (_2!29518 (h!57565 (Cons!51519 (tuple2!52449 hash!414 lt!1781372) Nil!51519))) (extractMap!1556 (t!358671 (Cons!51519 (tuple2!52449 hash!414 lt!1781372) Nil!51519)))))))

(declare-fun b!4624193 () Bool)

(assert (=> b!4624193 (= e!2884460 (ListMap!4270 Nil!51518))))

(assert (= (and d!1456484 c!791542) b!4624192))

(assert (= (and d!1456484 (not c!791542)) b!4624193))

(declare-fun m!5464247 () Bool)

(assert (=> d!1456484 m!5464247))

(declare-fun m!5464249 () Bool)

(assert (=> d!1456484 m!5464249))

(declare-fun m!5464251 () Bool)

(assert (=> b!4624192 m!5464251))

(assert (=> b!4624192 m!5464251))

(declare-fun m!5464253 () Bool)

(assert (=> b!4624192 m!5464253))

(assert (=> b!4624097 d!1456484))

(declare-fun bs!1022338 () Bool)

(declare-fun d!1456486 () Bool)

(assert (= bs!1022338 (and d!1456486 b!4624088)))

(declare-fun lambda!191708 () Int)

(assert (=> bs!1022338 (= lambda!191708 lambda!191664)))

(declare-fun bs!1022339 () Bool)

(assert (= bs!1022339 (and d!1456486 d!1456472)))

(assert (=> bs!1022339 (= lambda!191708 lambda!191702)))

(declare-fun bs!1022340 () Bool)

(assert (= bs!1022340 (and d!1456486 d!1456484)))

(assert (=> bs!1022340 (= lambda!191708 lambda!191707)))

(declare-fun lt!1781522 () ListMap!4269)

(assert (=> d!1456486 (invariantList!1200 (toList!4965 lt!1781522))))

(declare-fun e!2884461 () ListMap!4269)

(assert (=> d!1456486 (= lt!1781522 e!2884461)))

(declare-fun c!791543 () Bool)

(assert (=> d!1456486 (= c!791543 ((_ is Cons!51519) (Cons!51519 (tuple2!52449 hash!414 newBucket!224) Nil!51519)))))

(assert (=> d!1456486 (forall!10815 (Cons!51519 (tuple2!52449 hash!414 newBucket!224) Nil!51519) lambda!191708)))

(assert (=> d!1456486 (= (extractMap!1556 (Cons!51519 (tuple2!52449 hash!414 newBucket!224) Nil!51519)) lt!1781522)))

(declare-fun b!4624194 () Bool)

(assert (=> b!4624194 (= e!2884461 (addToMapMapFromBucket!961 (_2!29518 (h!57565 (Cons!51519 (tuple2!52449 hash!414 newBucket!224) Nil!51519))) (extractMap!1556 (t!358671 (Cons!51519 (tuple2!52449 hash!414 newBucket!224) Nil!51519)))))))

(declare-fun b!4624195 () Bool)

(assert (=> b!4624195 (= e!2884461 (ListMap!4270 Nil!51518))))

(assert (= (and d!1456486 c!791543) b!4624194))

(assert (= (and d!1456486 (not c!791543)) b!4624195))

(declare-fun m!5464255 () Bool)

(assert (=> d!1456486 m!5464255))

(declare-fun m!5464257 () Bool)

(assert (=> d!1456486 m!5464257))

(declare-fun m!5464259 () Bool)

(assert (=> b!4624194 m!5464259))

(assert (=> b!4624194 m!5464259))

(declare-fun m!5464261 () Bool)

(assert (=> b!4624194 m!5464261))

(assert (=> b!4624097 d!1456486))

(declare-fun d!1456488 () Bool)

(assert (=> d!1456488 true))

(assert (=> d!1456488 true))

(declare-fun lambda!191714 () Int)

(declare-fun forall!10816 (List!51642 Int) Bool)

(assert (=> d!1456488 (= (allKeysSameHash!1354 oldBucket!40 hash!414 hashF!1389) (forall!10816 oldBucket!40 lambda!191714))))

(declare-fun bs!1022343 () Bool)

(assert (= bs!1022343 d!1456488))

(declare-fun m!5464283 () Bool)

(assert (=> bs!1022343 m!5464283))

(assert (=> b!4624087 d!1456488))

(declare-fun b!4624217 () Bool)

(declare-fun e!2884471 () List!51642)

(declare-fun e!2884470 () List!51642)

(assert (=> b!4624217 (= e!2884471 e!2884470)))

(declare-fun c!791552 () Bool)

(assert (=> b!4624217 (= c!791552 ((_ is Cons!51518) (t!358670 oldBucket!40)))))

(declare-fun b!4624216 () Bool)

(assert (=> b!4624216 (= e!2884471 (t!358670 (t!358670 oldBucket!40)))))

(declare-fun b!4624219 () Bool)

(assert (=> b!4624219 (= e!2884470 Nil!51518)))

(declare-fun d!1456494 () Bool)

(declare-fun lt!1781532 () List!51642)

(assert (=> d!1456494 (not (containsKey!2432 lt!1781532 key!4968))))

(assert (=> d!1456494 (= lt!1781532 e!2884471)))

(declare-fun c!791551 () Bool)

(assert (=> d!1456494 (= c!791551 (and ((_ is Cons!51518) (t!358670 oldBucket!40)) (= (_1!29517 (h!57564 (t!358670 oldBucket!40))) key!4968)))))

(assert (=> d!1456494 (noDuplicateKeys!1500 (t!358670 oldBucket!40))))

(assert (=> d!1456494 (= (removePairForKey!1123 (t!358670 oldBucket!40) key!4968) lt!1781532)))

(declare-fun b!4624218 () Bool)

(assert (=> b!4624218 (= e!2884470 (Cons!51518 (h!57564 (t!358670 oldBucket!40)) (removePairForKey!1123 (t!358670 (t!358670 oldBucket!40)) key!4968)))))

(assert (= (and d!1456494 c!791551) b!4624216))

(assert (= (and d!1456494 (not c!791551)) b!4624217))

(assert (= (and b!4624217 c!791552) b!4624218))

(assert (= (and b!4624217 (not c!791552)) b!4624219))

(declare-fun m!5464285 () Bool)

(assert (=> d!1456494 m!5464285))

(declare-fun m!5464287 () Bool)

(assert (=> d!1456494 m!5464287))

(declare-fun m!5464289 () Bool)

(assert (=> b!4624218 m!5464289))

(assert (=> b!4624083 d!1456494))

(declare-fun b!4624221 () Bool)

(declare-fun e!2884473 () List!51642)

(declare-fun e!2884472 () List!51642)

(assert (=> b!4624221 (= e!2884473 e!2884472)))

(declare-fun c!791554 () Bool)

(assert (=> b!4624221 (= c!791554 ((_ is Cons!51518) oldBucket!40))))

(declare-fun b!4624220 () Bool)

(assert (=> b!4624220 (= e!2884473 (t!358670 oldBucket!40))))

(declare-fun b!4624223 () Bool)

(assert (=> b!4624223 (= e!2884472 Nil!51518)))

(declare-fun d!1456496 () Bool)

(declare-fun lt!1781533 () List!51642)

(assert (=> d!1456496 (not (containsKey!2432 lt!1781533 key!4968))))

(assert (=> d!1456496 (= lt!1781533 e!2884473)))

(declare-fun c!791553 () Bool)

(assert (=> d!1456496 (= c!791553 (and ((_ is Cons!51518) oldBucket!40) (= (_1!29517 (h!57564 oldBucket!40)) key!4968)))))

(assert (=> d!1456496 (noDuplicateKeys!1500 oldBucket!40)))

(assert (=> d!1456496 (= (removePairForKey!1123 oldBucket!40 key!4968) lt!1781533)))

(declare-fun b!4624222 () Bool)

(assert (=> b!4624222 (= e!2884472 (Cons!51518 (h!57564 oldBucket!40) (removePairForKey!1123 (t!358670 oldBucket!40) key!4968)))))

(assert (= (and d!1456496 c!791553) b!4624220))

(assert (= (and d!1456496 (not c!791553)) b!4624221))

(assert (= (and b!4624221 c!791554) b!4624222))

(assert (= (and b!4624221 (not c!791554)) b!4624223))

(declare-fun m!5464291 () Bool)

(assert (=> d!1456496 m!5464291))

(assert (=> d!1456496 m!5463997))

(assert (=> b!4624222 m!5464081))

(assert (=> b!4624094 d!1456496))

(declare-fun bs!1022344 () Bool)

(declare-fun d!1456498 () Bool)

(assert (= bs!1022344 (and d!1456498 d!1456488)))

(declare-fun lambda!191715 () Int)

(assert (=> bs!1022344 (= lambda!191715 lambda!191714)))

(assert (=> d!1456498 true))

(assert (=> d!1456498 true))

(assert (=> d!1456498 (= (allKeysSameHash!1354 newBucket!224 hash!414 hashF!1389) (forall!10816 newBucket!224 lambda!191715))))

(declare-fun bs!1022345 () Bool)

(assert (= bs!1022345 d!1456498))

(declare-fun m!5464293 () Bool)

(assert (=> bs!1022345 m!5464293))

(assert (=> b!4624084 d!1456498))

(declare-fun d!1456500 () Bool)

(declare-fun hash!3489 (Hashable!5897 K!12900) (_ BitVec 64))

(assert (=> d!1456500 (= (hash!3485 hashF!1389 key!4968) (hash!3489 hashF!1389 key!4968))))

(declare-fun bs!1022347 () Bool)

(assert (= bs!1022347 d!1456500))

(declare-fun m!5464297 () Bool)

(assert (=> bs!1022347 m!5464297))

(assert (=> b!4624095 d!1456500))

(declare-fun bs!1022454 () Bool)

(declare-fun b!4624361 () Bool)

(assert (= bs!1022454 (and b!4624361 d!1456488)))

(declare-fun lambda!191766 () Int)

(assert (=> bs!1022454 (not (= lambda!191766 lambda!191714))))

(declare-fun bs!1022455 () Bool)

(assert (= bs!1022455 (and b!4624361 d!1456498)))

(assert (=> bs!1022455 (not (= lambda!191766 lambda!191715))))

(assert (=> b!4624361 true))

(declare-fun bs!1022456 () Bool)

(declare-fun b!4624364 () Bool)

(assert (= bs!1022456 (and b!4624364 d!1456488)))

(declare-fun lambda!191767 () Int)

(assert (=> bs!1022456 (not (= lambda!191767 lambda!191714))))

(declare-fun bs!1022457 () Bool)

(assert (= bs!1022457 (and b!4624364 d!1456498)))

(assert (=> bs!1022457 (not (= lambda!191767 lambda!191715))))

(declare-fun bs!1022458 () Bool)

(assert (= bs!1022458 (and b!4624364 b!4624361)))

(assert (=> bs!1022458 (= lambda!191767 lambda!191766)))

(assert (=> b!4624364 true))

(declare-fun lambda!191768 () Int)

(assert (=> bs!1022456 (not (= lambda!191768 lambda!191714))))

(assert (=> bs!1022457 (not (= lambda!191768 lambda!191715))))

(declare-fun lt!1781738 () ListMap!4269)

(assert (=> bs!1022458 (= (= lt!1781738 lt!1781370) (= lambda!191768 lambda!191766))))

(assert (=> b!4624364 (= (= lt!1781738 lt!1781370) (= lambda!191768 lambda!191767))))

(assert (=> b!4624364 true))

(declare-fun bs!1022466 () Bool)

(declare-fun d!1456504 () Bool)

(assert (= bs!1022466 (and d!1456504 b!4624364)))

(declare-fun lt!1781748 () ListMap!4269)

(declare-fun lambda!191770 () Int)

(assert (=> bs!1022466 (= (= lt!1781748 lt!1781370) (= lambda!191770 lambda!191767))))

(declare-fun bs!1022467 () Bool)

(assert (= bs!1022467 (and d!1456504 d!1456498)))

(assert (=> bs!1022467 (not (= lambda!191770 lambda!191715))))

(declare-fun bs!1022468 () Bool)

(assert (= bs!1022468 (and d!1456504 b!4624361)))

(assert (=> bs!1022468 (= (= lt!1781748 lt!1781370) (= lambda!191770 lambda!191766))))

(declare-fun bs!1022469 () Bool)

(assert (= bs!1022469 (and d!1456504 d!1456488)))

(assert (=> bs!1022469 (not (= lambda!191770 lambda!191714))))

(assert (=> bs!1022466 (= (= lt!1781748 lt!1781738) (= lambda!191770 lambda!191768))))

(assert (=> d!1456504 true))

(declare-fun b!4624360 () Bool)

(declare-fun e!2884564 () Bool)

(assert (=> b!4624360 (= e!2884564 (forall!10816 (toList!4965 lt!1781370) lambda!191768))))

(declare-fun e!2884563 () ListMap!4269)

(assert (=> b!4624361 (= e!2884563 lt!1781370)))

(declare-fun lt!1781745 () Unit!111769)

(declare-fun call!322533 () Unit!111769)

(assert (=> b!4624361 (= lt!1781745 call!322533)))

(declare-fun call!322535 () Bool)

(assert (=> b!4624361 call!322535))

(declare-fun lt!1781740 () Unit!111769)

(assert (=> b!4624361 (= lt!1781740 lt!1781745)))

(declare-fun call!322534 () Bool)

(assert (=> b!4624361 call!322534))

(declare-fun lt!1781737 () Unit!111769)

(declare-fun Unit!111817 () Unit!111769)

(assert (=> b!4624361 (= lt!1781737 Unit!111817)))

(declare-fun lt!1781746 () ListMap!4269)

(declare-fun bm!322528 () Bool)

(declare-fun c!791587 () Bool)

(assert (=> bm!322528 (= call!322534 (forall!10816 (ite c!791587 (toList!4965 lt!1781370) (toList!4965 lt!1781746)) (ite c!791587 lambda!191766 lambda!191768)))))

(declare-fun b!4624362 () Bool)

(declare-fun res!1938985 () Bool)

(declare-fun e!2884565 () Bool)

(assert (=> b!4624362 (=> (not res!1938985) (not e!2884565))))

(assert (=> b!4624362 (= res!1938985 (forall!10816 (toList!4965 lt!1781370) lambda!191770))))

(declare-fun bm!322529 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!502 (ListMap!4269) Unit!111769)

(assert (=> bm!322529 (= call!322533 (lemmaContainsAllItsOwnKeys!502 lt!1781370))))

(declare-fun b!4624363 () Bool)

(assert (=> b!4624363 (= e!2884565 (invariantList!1200 (toList!4965 lt!1781748)))))

(declare-fun bm!322530 () Bool)

(assert (=> bm!322530 (= call!322535 (forall!10816 (toList!4965 lt!1781370) (ite c!791587 lambda!191766 lambda!191767)))))

(assert (=> d!1456504 e!2884565))

(declare-fun res!1938987 () Bool)

(assert (=> d!1456504 (=> (not res!1938987) (not e!2884565))))

(assert (=> d!1456504 (= res!1938987 (forall!10816 oldBucket!40 lambda!191770))))

(assert (=> d!1456504 (= lt!1781748 e!2884563)))

(assert (=> d!1456504 (= c!791587 ((_ is Nil!51518) oldBucket!40))))

(assert (=> d!1456504 (noDuplicateKeys!1500 oldBucket!40)))

(assert (=> d!1456504 (= (addToMapMapFromBucket!961 oldBucket!40 lt!1781370) lt!1781748)))

(assert (=> b!4624364 (= e!2884563 lt!1781738)))

(assert (=> b!4624364 (= lt!1781746 (+!1866 lt!1781370 (h!57564 oldBucket!40)))))

(assert (=> b!4624364 (= lt!1781738 (addToMapMapFromBucket!961 (t!358670 oldBucket!40) (+!1866 lt!1781370 (h!57564 oldBucket!40))))))

(declare-fun lt!1781749 () Unit!111769)

(assert (=> b!4624364 (= lt!1781749 call!322533)))

(assert (=> b!4624364 call!322535))

(declare-fun lt!1781731 () Unit!111769)

(assert (=> b!4624364 (= lt!1781731 lt!1781749)))

(assert (=> b!4624364 (forall!10816 (toList!4965 lt!1781746) lambda!191768)))

(declare-fun lt!1781733 () Unit!111769)

(declare-fun Unit!111818 () Unit!111769)

(assert (=> b!4624364 (= lt!1781733 Unit!111818)))

(assert (=> b!4624364 (forall!10816 (t!358670 oldBucket!40) lambda!191768)))

(declare-fun lt!1781735 () Unit!111769)

(declare-fun Unit!111819 () Unit!111769)

(assert (=> b!4624364 (= lt!1781735 Unit!111819)))

(declare-fun lt!1781750 () Unit!111769)

(declare-fun Unit!111820 () Unit!111769)

(assert (=> b!4624364 (= lt!1781750 Unit!111820)))

(declare-fun lt!1781747 () Unit!111769)

(declare-fun forallContained!3042 (List!51642 Int tuple2!52446) Unit!111769)

(assert (=> b!4624364 (= lt!1781747 (forallContained!3042 (toList!4965 lt!1781746) lambda!191768 (h!57564 oldBucket!40)))))

(assert (=> b!4624364 (contains!14553 lt!1781746 (_1!29517 (h!57564 oldBucket!40)))))

(declare-fun lt!1781751 () Unit!111769)

(declare-fun Unit!111821 () Unit!111769)

(assert (=> b!4624364 (= lt!1781751 Unit!111821)))

(assert (=> b!4624364 (contains!14553 lt!1781738 (_1!29517 (h!57564 oldBucket!40)))))

(declare-fun lt!1781742 () Unit!111769)

(declare-fun Unit!111822 () Unit!111769)

(assert (=> b!4624364 (= lt!1781742 Unit!111822)))

(assert (=> b!4624364 (forall!10816 oldBucket!40 lambda!191768)))

(declare-fun lt!1781741 () Unit!111769)

(declare-fun Unit!111823 () Unit!111769)

(assert (=> b!4624364 (= lt!1781741 Unit!111823)))

(assert (=> b!4624364 call!322534))

(declare-fun lt!1781734 () Unit!111769)

(declare-fun Unit!111824 () Unit!111769)

(assert (=> b!4624364 (= lt!1781734 Unit!111824)))

(declare-fun lt!1781739 () Unit!111769)

(declare-fun Unit!111825 () Unit!111769)

(assert (=> b!4624364 (= lt!1781739 Unit!111825)))

(declare-fun lt!1781743 () Unit!111769)

(declare-fun addForallContainsKeyThenBeforeAdding!501 (ListMap!4269 ListMap!4269 K!12900 V!13146) Unit!111769)

(assert (=> b!4624364 (= lt!1781743 (addForallContainsKeyThenBeforeAdding!501 lt!1781370 lt!1781738 (_1!29517 (h!57564 oldBucket!40)) (_2!29517 (h!57564 oldBucket!40))))))

(assert (=> b!4624364 (forall!10816 (toList!4965 lt!1781370) lambda!191768)))

(declare-fun lt!1781744 () Unit!111769)

(assert (=> b!4624364 (= lt!1781744 lt!1781743)))

(assert (=> b!4624364 (forall!10816 (toList!4965 lt!1781370) lambda!191768)))

(declare-fun lt!1781736 () Unit!111769)

(declare-fun Unit!111826 () Unit!111769)

(assert (=> b!4624364 (= lt!1781736 Unit!111826)))

(declare-fun res!1938986 () Bool)

(assert (=> b!4624364 (= res!1938986 (forall!10816 oldBucket!40 lambda!191768))))

(assert (=> b!4624364 (=> (not res!1938986) (not e!2884564))))

(assert (=> b!4624364 e!2884564))

(declare-fun lt!1781732 () Unit!111769)

(declare-fun Unit!111827 () Unit!111769)

(assert (=> b!4624364 (= lt!1781732 Unit!111827)))

(assert (= (and d!1456504 c!791587) b!4624361))

(assert (= (and d!1456504 (not c!791587)) b!4624364))

(assert (= (and b!4624364 res!1938986) b!4624360))

(assert (= (or b!4624361 b!4624364) bm!322529))

(assert (= (or b!4624361 b!4624364) bm!322530))

(assert (= (or b!4624361 b!4624364) bm!322528))

(assert (= (and d!1456504 res!1938987) b!4624362))

(assert (= (and b!4624362 res!1938985) b!4624363))

(declare-fun m!5464575 () Bool)

(assert (=> bm!322529 m!5464575))

(declare-fun m!5464577 () Bool)

(assert (=> b!4624362 m!5464577))

(declare-fun m!5464579 () Bool)

(assert (=> d!1456504 m!5464579))

(assert (=> d!1456504 m!5463997))

(declare-fun m!5464581 () Bool)

(assert (=> bm!322530 m!5464581))

(declare-fun m!5464583 () Bool)

(assert (=> b!4624363 m!5464583))

(declare-fun m!5464585 () Bool)

(assert (=> bm!322528 m!5464585))

(declare-fun m!5464587 () Bool)

(assert (=> b!4624360 m!5464587))

(assert (=> b!4624364 m!5464587))

(declare-fun m!5464589 () Bool)

(assert (=> b!4624364 m!5464589))

(declare-fun m!5464591 () Bool)

(assert (=> b!4624364 m!5464591))

(declare-fun m!5464593 () Bool)

(assert (=> b!4624364 m!5464593))

(declare-fun m!5464595 () Bool)

(assert (=> b!4624364 m!5464595))

(declare-fun m!5464597 () Bool)

(assert (=> b!4624364 m!5464597))

(assert (=> b!4624364 m!5464589))

(assert (=> b!4624364 m!5464597))

(declare-fun m!5464599 () Bool)

(assert (=> b!4624364 m!5464599))

(declare-fun m!5464601 () Bool)

(assert (=> b!4624364 m!5464601))

(declare-fun m!5464603 () Bool)

(assert (=> b!4624364 m!5464603))

(declare-fun m!5464605 () Bool)

(assert (=> b!4624364 m!5464605))

(assert (=> b!4624364 m!5464587))

(assert (=> b!4624091 d!1456504))

(declare-fun bs!1022471 () Bool)

(declare-fun d!1456560 () Bool)

(assert (= bs!1022471 (and d!1456560 b!4624088)))

(declare-fun lambda!191771 () Int)

(assert (=> bs!1022471 (= lambda!191771 lambda!191664)))

(declare-fun bs!1022472 () Bool)

(assert (= bs!1022472 (and d!1456560 d!1456472)))

(assert (=> bs!1022472 (= lambda!191771 lambda!191702)))

(declare-fun bs!1022473 () Bool)

(assert (= bs!1022473 (and d!1456560 d!1456484)))

(assert (=> bs!1022473 (= lambda!191771 lambda!191707)))

(declare-fun bs!1022474 () Bool)

(assert (= bs!1022474 (and d!1456560 d!1456486)))

(assert (=> bs!1022474 (= lambda!191771 lambda!191708)))

(declare-fun lt!1781760 () ListMap!4269)

(assert (=> d!1456560 (invariantList!1200 (toList!4965 lt!1781760))))

(declare-fun e!2884568 () ListMap!4269)

(assert (=> d!1456560 (= lt!1781760 e!2884568)))

(declare-fun c!791588 () Bool)

(assert (=> d!1456560 (= c!791588 ((_ is Cons!51519) Nil!51519))))

(assert (=> d!1456560 (forall!10815 Nil!51519 lambda!191771)))

(assert (=> d!1456560 (= (extractMap!1556 Nil!51519) lt!1781760)))

(declare-fun b!4624371 () Bool)

(assert (=> b!4624371 (= e!2884568 (addToMapMapFromBucket!961 (_2!29518 (h!57565 Nil!51519)) (extractMap!1556 (t!358671 Nil!51519))))))

(declare-fun b!4624372 () Bool)

(assert (=> b!4624372 (= e!2884568 (ListMap!4270 Nil!51518))))

(assert (= (and d!1456560 c!791588) b!4624371))

(assert (= (and d!1456560 (not c!791588)) b!4624372))

(declare-fun m!5464609 () Bool)

(assert (=> d!1456560 m!5464609))

(declare-fun m!5464611 () Bool)

(assert (=> d!1456560 m!5464611))

(declare-fun m!5464613 () Bool)

(assert (=> b!4624371 m!5464613))

(assert (=> b!4624371 m!5464613))

(declare-fun m!5464615 () Bool)

(assert (=> b!4624371 m!5464615))

(assert (=> b!4624091 d!1456560))

(declare-fun d!1456564 () Bool)

(declare-fun res!1938996 () Bool)

(declare-fun e!2884573 () Bool)

(assert (=> d!1456564 (=> res!1938996 e!2884573)))

(assert (=> d!1456564 (= res!1938996 (not ((_ is Cons!51518) oldBucket!40)))))

(assert (=> d!1456564 (= (noDuplicateKeys!1500 oldBucket!40) e!2884573)))

(declare-fun b!4624377 () Bool)

(declare-fun e!2884574 () Bool)

(assert (=> b!4624377 (= e!2884573 e!2884574)))

(declare-fun res!1938997 () Bool)

(assert (=> b!4624377 (=> (not res!1938997) (not e!2884574))))

(assert (=> b!4624377 (= res!1938997 (not (containsKey!2432 (t!358670 oldBucket!40) (_1!29517 (h!57564 oldBucket!40)))))))

(declare-fun b!4624378 () Bool)

(assert (=> b!4624378 (= e!2884574 (noDuplicateKeys!1500 (t!358670 oldBucket!40)))))

(assert (= (and d!1456564 (not res!1938996)) b!4624377))

(assert (= (and b!4624377 res!1938997) b!4624378))

(declare-fun m!5464617 () Bool)

(assert (=> b!4624377 m!5464617))

(assert (=> b!4624378 m!5464287))

(assert (=> start!463308 d!1456564))

(declare-fun b!4624380 () Bool)

(declare-fun e!2884576 () List!51642)

(declare-fun e!2884575 () List!51642)

(assert (=> b!4624380 (= e!2884576 e!2884575)))

(declare-fun c!791590 () Bool)

(assert (=> b!4624380 (= c!791590 ((_ is Cons!51518) lt!1781387))))

(declare-fun b!4624379 () Bool)

(assert (=> b!4624379 (= e!2884576 (t!358670 lt!1781387))))

(declare-fun b!4624382 () Bool)

(assert (=> b!4624382 (= e!2884575 Nil!51518)))

(declare-fun d!1456566 () Bool)

(declare-fun lt!1781763 () List!51642)

(assert (=> d!1456566 (not (containsKey!2432 lt!1781763 key!4968))))

(assert (=> d!1456566 (= lt!1781763 e!2884576)))

(declare-fun c!791589 () Bool)

(assert (=> d!1456566 (= c!791589 (and ((_ is Cons!51518) lt!1781387) (= (_1!29517 (h!57564 lt!1781387)) key!4968)))))

(assert (=> d!1456566 (noDuplicateKeys!1500 lt!1781387)))

(assert (=> d!1456566 (= (removePairForKey!1123 lt!1781387 key!4968) lt!1781763)))

(declare-fun b!4624381 () Bool)

(assert (=> b!4624381 (= e!2884575 (Cons!51518 (h!57564 lt!1781387) (removePairForKey!1123 (t!358670 lt!1781387) key!4968)))))

(assert (= (and d!1456566 c!791589) b!4624379))

(assert (= (and d!1456566 (not c!791589)) b!4624380))

(assert (= (and b!4624380 c!791590) b!4624381))

(assert (= (and b!4624380 (not c!791590)) b!4624382))

(declare-fun m!5464619 () Bool)

(assert (=> d!1456566 m!5464619))

(declare-fun m!5464621 () Bool)

(assert (=> d!1456566 m!5464621))

(declare-fun m!5464623 () Bool)

(assert (=> b!4624381 m!5464623))

(assert (=> b!4624092 d!1456566))

(declare-fun d!1456568 () Bool)

(assert (=> d!1456568 (= (tail!8135 newBucket!224) (t!358670 newBucket!224))))

(assert (=> b!4624092 d!1456568))

(declare-fun d!1456570 () Bool)

(assert (=> d!1456570 (= (tail!8135 oldBucket!40) (t!358670 oldBucket!40))))

(assert (=> b!4624092 d!1456570))

(declare-fun d!1456572 () Bool)

(assert (=> d!1456572 (= (eq!815 lt!1781371 (-!540 lt!1781382 key!4968)) (= (content!8785 (toList!4965 lt!1781371)) (content!8785 (toList!4965 (-!540 lt!1781382 key!4968)))))))

(declare-fun bs!1022483 () Bool)

(assert (= bs!1022483 d!1456572))

(declare-fun m!5464625 () Bool)

(assert (=> bs!1022483 m!5464625))

(declare-fun m!5464627 () Bool)

(assert (=> bs!1022483 m!5464627))

(assert (=> b!4624093 d!1456572))

(declare-fun d!1456574 () Bool)

(declare-fun e!2884582 () Bool)

(assert (=> d!1456574 e!2884582))

(declare-fun res!1939003 () Bool)

(assert (=> d!1456574 (=> (not res!1939003) (not e!2884582))))

(declare-fun lt!1781788 () ListMap!4269)

(assert (=> d!1456574 (= res!1939003 (not (contains!14553 lt!1781788 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!250 (List!51642 K!12900) List!51642)

(assert (=> d!1456574 (= lt!1781788 (ListMap!4270 (removePresrvNoDuplicatedKeys!250 (toList!4965 lt!1781382) key!4968)))))

(assert (=> d!1456574 (= (-!540 lt!1781382 key!4968) lt!1781788)))

(declare-fun b!4624390 () Bool)

(declare-fun content!8786 (List!51645) (InoxSet K!12900))

(assert (=> b!4624390 (= e!2884582 (= ((_ map and) (content!8786 (keys!18144 lt!1781382)) ((_ map not) (store ((as const (Array K!12900 Bool)) false) key!4968 true))) (content!8786 (keys!18144 lt!1781788))))))

(assert (= (and d!1456574 res!1939003) b!4624390))

(declare-fun m!5464633 () Bool)

(assert (=> d!1456574 m!5464633))

(declare-fun m!5464635 () Bool)

(assert (=> d!1456574 m!5464635))

(declare-fun m!5464637 () Bool)

(assert (=> b!4624390 m!5464637))

(declare-fun m!5464639 () Bool)

(assert (=> b!4624390 m!5464639))

(declare-fun m!5464641 () Bool)

(assert (=> b!4624390 m!5464641))

(declare-fun m!5464643 () Bool)

(assert (=> b!4624390 m!5464643))

(assert (=> b!4624390 m!5464643))

(declare-fun m!5464645 () Bool)

(assert (=> b!4624390 m!5464645))

(assert (=> b!4624390 m!5464637))

(assert (=> b!4624093 d!1456574))

(declare-fun d!1456578 () Bool)

(assert (=> d!1456578 (eq!815 (extractMap!1556 (Cons!51519 (tuple2!52449 hash!414 lt!1781372) Nil!51519)) (-!540 (extractMap!1556 (Cons!51519 (tuple2!52449 hash!414 (t!358670 oldBucket!40)) Nil!51519)) key!4968))))

(declare-fun lt!1781792 () Unit!111769)

(declare-fun choose!31271 ((_ BitVec 64) List!51642 List!51642 K!12900 Hashable!5897) Unit!111769)

(assert (=> d!1456578 (= lt!1781792 (choose!31271 hash!414 (t!358670 oldBucket!40) lt!1781372 key!4968 hashF!1389))))

(assert (=> d!1456578 (noDuplicateKeys!1500 (t!358670 oldBucket!40))))

(assert (=> d!1456578 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!102 hash!414 (t!358670 oldBucket!40) lt!1781372 key!4968 hashF!1389) lt!1781792)))

(declare-fun bs!1022540 () Bool)

(assert (= bs!1022540 d!1456578))

(assert (=> bs!1022540 m!5464087))

(declare-fun m!5464689 () Bool)

(assert (=> bs!1022540 m!5464689))

(declare-fun m!5464691 () Bool)

(assert (=> bs!1022540 m!5464691))

(assert (=> bs!1022540 m!5464087))

(assert (=> bs!1022540 m!5464691))

(declare-fun m!5464693 () Bool)

(assert (=> bs!1022540 m!5464693))

(declare-fun m!5464695 () Bool)

(assert (=> bs!1022540 m!5464695))

(assert (=> bs!1022540 m!5464287))

(assert (=> bs!1022540 m!5464689))

(assert (=> b!4624093 d!1456578))

(declare-fun d!1456584 () Bool)

(assert (=> d!1456584 (contains!14551 (toList!4966 lt!1781393) (tuple2!52449 lt!1781379 lt!1781383))))

(declare-fun lt!1781795 () Unit!111769)

(declare-fun choose!31272 (ListLongMap!3555 (_ BitVec 64) List!51642) Unit!111769)

(assert (=> d!1456584 (= lt!1781795 (choose!31272 lt!1781393 lt!1781379 lt!1781383))))

(assert (=> d!1456584 (contains!14552 lt!1781393 lt!1781379)))

(assert (=> d!1456584 (= (lemmaGetValueImpliesTupleContained!97 lt!1781393 lt!1781379 lt!1781383) lt!1781795)))

(declare-fun bs!1022541 () Bool)

(assert (= bs!1022541 d!1456584))

(declare-fun m!5464697 () Bool)

(assert (=> bs!1022541 m!5464697))

(declare-fun m!5464699 () Bool)

(assert (=> bs!1022541 m!5464699))

(assert (=> bs!1022541 m!5464023))

(assert (=> b!4624088 d!1456584))

(declare-fun d!1456586 () Bool)

(assert (=> d!1456586 (containsKey!2432 oldBucket!40 key!4968)))

(declare-fun lt!1781798 () Unit!111769)

(declare-fun choose!31273 (List!51642 K!12900 Hashable!5897) Unit!111769)

(assert (=> d!1456586 (= lt!1781798 (choose!31273 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1456586 (noDuplicateKeys!1500 oldBucket!40)))

(assert (=> d!1456586 (= (lemmaGetPairDefinedThenContainsKey!46 oldBucket!40 key!4968 hashF!1389) lt!1781798)))

(declare-fun bs!1022542 () Bool)

(assert (= bs!1022542 d!1456586))

(assert (=> bs!1022542 m!5464013))

(declare-fun m!5464701 () Bool)

(assert (=> bs!1022542 m!5464701))

(assert (=> bs!1022542 m!5463997))

(assert (=> b!4624088 d!1456586))

(declare-fun d!1456588 () Bool)

(declare-fun res!1939008 () Bool)

(declare-fun e!2884592 () Bool)

(assert (=> d!1456588 (=> res!1939008 e!2884592)))

(assert (=> d!1456588 (= res!1939008 (and ((_ is Cons!51518) (t!358670 oldBucket!40)) (= (_1!29517 (h!57564 (t!358670 oldBucket!40))) key!4968)))))

(assert (=> d!1456588 (= (containsKey!2432 (t!358670 oldBucket!40) key!4968) e!2884592)))

(declare-fun b!4624404 () Bool)

(declare-fun e!2884593 () Bool)

(assert (=> b!4624404 (= e!2884592 e!2884593)))

(declare-fun res!1939009 () Bool)

(assert (=> b!4624404 (=> (not res!1939009) (not e!2884593))))

(assert (=> b!4624404 (= res!1939009 ((_ is Cons!51518) (t!358670 oldBucket!40)))))

(declare-fun b!4624405 () Bool)

(assert (=> b!4624405 (= e!2884593 (containsKey!2432 (t!358670 (t!358670 oldBucket!40)) key!4968))))

(assert (= (and d!1456588 (not res!1939008)) b!4624404))

(assert (= (and b!4624404 res!1939009) b!4624405))

(declare-fun m!5464703 () Bool)

(assert (=> b!4624405 m!5464703))

(assert (=> b!4624088 d!1456588))

(declare-fun bs!1022543 () Bool)

(declare-fun d!1456590 () Bool)

(assert (= bs!1022543 (and d!1456590 d!1456472)))

(declare-fun lambda!191782 () Int)

(assert (=> bs!1022543 (= lambda!191782 lambda!191702)))

(declare-fun bs!1022544 () Bool)

(assert (= bs!1022544 (and d!1456590 d!1456560)))

(assert (=> bs!1022544 (= lambda!191782 lambda!191771)))

(declare-fun bs!1022545 () Bool)

(assert (= bs!1022545 (and d!1456590 d!1456484)))

(assert (=> bs!1022545 (= lambda!191782 lambda!191707)))

(declare-fun bs!1022546 () Bool)

(assert (= bs!1022546 (and d!1456590 d!1456486)))

(assert (=> bs!1022546 (= lambda!191782 lambda!191708)))

(declare-fun bs!1022547 () Bool)

(assert (= bs!1022547 (and d!1456590 b!4624088)))

(assert (=> bs!1022547 (= lambda!191782 lambda!191664)))

(assert (=> d!1456590 (contains!14552 lt!1781393 (hash!3485 hashF!1389 key!4968))))

(declare-fun lt!1781801 () Unit!111769)

(declare-fun choose!31274 (ListLongMap!3555 K!12900 Hashable!5897) Unit!111769)

(assert (=> d!1456590 (= lt!1781801 (choose!31274 lt!1781393 key!4968 hashF!1389))))

(assert (=> d!1456590 (forall!10815 (toList!4966 lt!1781393) lambda!191782)))

(assert (=> d!1456590 (= (lemmaInGenMapThenLongMapContainsHash!498 lt!1781393 key!4968 hashF!1389) lt!1781801)))

(declare-fun bs!1022548 () Bool)

(assert (= bs!1022548 d!1456590))

(assert (=> bs!1022548 m!5464093))

(assert (=> bs!1022548 m!5464093))

(declare-fun m!5464705 () Bool)

(assert (=> bs!1022548 m!5464705))

(declare-fun m!5464707 () Bool)

(assert (=> bs!1022548 m!5464707))

(declare-fun m!5464709 () Bool)

(assert (=> bs!1022548 m!5464709))

(assert (=> b!4624088 d!1456590))

(declare-fun d!1456592 () Bool)

(declare-fun dynLambda!21493 (Int tuple2!52448) Bool)

(assert (=> d!1456592 (dynLambda!21493 lambda!191664 lt!1781374)))

(declare-fun lt!1781804 () Unit!111769)

(declare-fun choose!31275 (List!51643 Int tuple2!52448) Unit!111769)

(assert (=> d!1456592 (= lt!1781804 (choose!31275 lt!1781378 lambda!191664 lt!1781374))))

(declare-fun e!2884596 () Bool)

(assert (=> d!1456592 e!2884596))

(declare-fun res!1939012 () Bool)

(assert (=> d!1456592 (=> (not res!1939012) (not e!2884596))))

(assert (=> d!1456592 (= res!1939012 (forall!10815 lt!1781378 lambda!191664))))

(assert (=> d!1456592 (= (forallContained!3040 lt!1781378 lambda!191664 lt!1781374) lt!1781804)))

(declare-fun b!4624408 () Bool)

(assert (=> b!4624408 (= e!2884596 (contains!14551 lt!1781378 lt!1781374))))

(assert (= (and d!1456592 res!1939012) b!4624408))

(declare-fun b_lambda!170705 () Bool)

(assert (=> (not b_lambda!170705) (not d!1456592)))

(declare-fun m!5464711 () Bool)

(assert (=> d!1456592 m!5464711))

(declare-fun m!5464713 () Bool)

(assert (=> d!1456592 m!5464713))

(declare-fun m!5464715 () Bool)

(assert (=> d!1456592 m!5464715))

(assert (=> b!4624408 m!5464017))

(assert (=> b!4624088 d!1456592))

(declare-fun d!1456594 () Bool)

(declare-fun res!1939013 () Bool)

(declare-fun e!2884597 () Bool)

(assert (=> d!1456594 (=> res!1939013 e!2884597)))

(assert (=> d!1456594 (= res!1939013 (and ((_ is Cons!51518) oldBucket!40) (= (_1!29517 (h!57564 oldBucket!40)) key!4968)))))

(assert (=> d!1456594 (= (containsKey!2432 oldBucket!40 key!4968) e!2884597)))

(declare-fun b!4624409 () Bool)

(declare-fun e!2884598 () Bool)

(assert (=> b!4624409 (= e!2884597 e!2884598)))

(declare-fun res!1939014 () Bool)

(assert (=> b!4624409 (=> (not res!1939014) (not e!2884598))))

(assert (=> b!4624409 (= res!1939014 ((_ is Cons!51518) oldBucket!40))))

(declare-fun b!4624410 () Bool)

(assert (=> b!4624410 (= e!2884598 (containsKey!2432 (t!358670 oldBucket!40) key!4968))))

(assert (= (and d!1456594 (not res!1939013)) b!4624409))

(assert (= (and b!4624409 res!1939014) b!4624410))

(assert (=> b!4624410 m!5464021))

(assert (=> b!4624088 d!1456594))

(declare-fun d!1456596 () Bool)

(declare-datatypes ((Option!11577 0))(
  ( (None!11576) (Some!11576 (v!45698 List!51642)) )
))
(declare-fun get!17064 (Option!11577) List!51642)

(declare-fun getValueByKey!1443 (List!51643 (_ BitVec 64)) Option!11577)

(assert (=> d!1456596 (= (apply!12165 lt!1781393 lt!1781379) (get!17064 (getValueByKey!1443 (toList!4966 lt!1781393) lt!1781379)))))

(declare-fun bs!1022549 () Bool)

(assert (= bs!1022549 d!1456596))

(declare-fun m!5464717 () Bool)

(assert (=> bs!1022549 m!5464717))

(assert (=> bs!1022549 m!5464717))

(declare-fun m!5464719 () Bool)

(assert (=> bs!1022549 m!5464719))

(assert (=> b!4624088 d!1456596))

(declare-fun d!1456598 () Bool)

(declare-fun lt!1781807 () Bool)

(declare-fun content!8787 (List!51643) (InoxSet tuple2!52448))

(assert (=> d!1456598 (= lt!1781807 (select (content!8787 lt!1781378) lt!1781374))))

(declare-fun e!2884604 () Bool)

(assert (=> d!1456598 (= lt!1781807 e!2884604)))

(declare-fun res!1939020 () Bool)

(assert (=> d!1456598 (=> (not res!1939020) (not e!2884604))))

(assert (=> d!1456598 (= res!1939020 ((_ is Cons!51519) lt!1781378))))

(assert (=> d!1456598 (= (contains!14551 lt!1781378 lt!1781374) lt!1781807)))

(declare-fun b!4624415 () Bool)

(declare-fun e!2884603 () Bool)

(assert (=> b!4624415 (= e!2884604 e!2884603)))

(declare-fun res!1939019 () Bool)

(assert (=> b!4624415 (=> res!1939019 e!2884603)))

(assert (=> b!4624415 (= res!1939019 (= (h!57565 lt!1781378) lt!1781374))))

(declare-fun b!4624416 () Bool)

(assert (=> b!4624416 (= e!2884603 (contains!14551 (t!358671 lt!1781378) lt!1781374))))

(assert (= (and d!1456598 res!1939020) b!4624415))

(assert (= (and b!4624415 (not res!1939019)) b!4624416))

(declare-fun m!5464721 () Bool)

(assert (=> d!1456598 m!5464721))

(declare-fun m!5464723 () Bool)

(assert (=> d!1456598 m!5464723))

(declare-fun m!5464725 () Bool)

(assert (=> b!4624416 m!5464725))

(assert (=> b!4624088 d!1456598))

(declare-fun bs!1022550 () Bool)

(declare-fun d!1456600 () Bool)

(assert (= bs!1022550 (and d!1456600 d!1456472)))

(declare-fun lambda!191789 () Int)

(assert (=> bs!1022550 (= lambda!191789 lambda!191702)))

(declare-fun bs!1022551 () Bool)

(assert (= bs!1022551 (and d!1456600 d!1456560)))

(assert (=> bs!1022551 (= lambda!191789 lambda!191771)))

(declare-fun bs!1022552 () Bool)

(assert (= bs!1022552 (and d!1456600 d!1456590)))

(assert (=> bs!1022552 (= lambda!191789 lambda!191782)))

(declare-fun bs!1022553 () Bool)

(assert (= bs!1022553 (and d!1456600 d!1456484)))

(assert (=> bs!1022553 (= lambda!191789 lambda!191707)))

(declare-fun bs!1022554 () Bool)

(assert (= bs!1022554 (and d!1456600 d!1456486)))

(assert (=> bs!1022554 (= lambda!191789 lambda!191708)))

(declare-fun bs!1022555 () Bool)

(assert (= bs!1022555 (and d!1456600 b!4624088)))

(assert (=> bs!1022555 (= lambda!191789 lambda!191664)))

(declare-fun b!4624427 () Bool)

(declare-fun e!2884609 () Bool)

(assert (=> b!4624427 (= e!2884609 (isDefined!8839 (getPair!292 (apply!12165 lt!1781393 (hash!3485 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1781831 () Unit!111769)

(assert (=> b!4624427 (= lt!1781831 (forallContained!3040 (toList!4966 lt!1781393) lambda!191789 (tuple2!52449 (hash!3485 hashF!1389 key!4968) (apply!12165 lt!1781393 (hash!3485 hashF!1389 key!4968)))))))

(declare-fun lt!1781827 () Unit!111769)

(declare-fun lt!1781826 () Unit!111769)

(assert (=> b!4624427 (= lt!1781827 lt!1781826)))

(declare-fun lt!1781829 () (_ BitVec 64))

(declare-fun lt!1781825 () List!51642)

(assert (=> b!4624427 (contains!14551 (toList!4966 lt!1781393) (tuple2!52449 lt!1781829 lt!1781825))))

(assert (=> b!4624427 (= lt!1781826 (lemmaGetValueImpliesTupleContained!97 lt!1781393 lt!1781829 lt!1781825))))

(declare-fun e!2884610 () Bool)

(assert (=> b!4624427 e!2884610))

(declare-fun res!1939032 () Bool)

(assert (=> b!4624427 (=> (not res!1939032) (not e!2884610))))

(assert (=> b!4624427 (= res!1939032 (contains!14552 lt!1781393 lt!1781829))))

(assert (=> b!4624427 (= lt!1781825 (apply!12165 lt!1781393 (hash!3485 hashF!1389 key!4968)))))

(assert (=> b!4624427 (= lt!1781829 (hash!3485 hashF!1389 key!4968))))

(declare-fun lt!1781828 () Unit!111769)

(declare-fun lt!1781824 () Unit!111769)

(assert (=> b!4624427 (= lt!1781828 lt!1781824)))

(assert (=> b!4624427 (contains!14552 lt!1781393 (hash!3485 hashF!1389 key!4968))))

(assert (=> b!4624427 (= lt!1781824 (lemmaInGenMapThenLongMapContainsHash!498 lt!1781393 key!4968 hashF!1389))))

(declare-fun b!4624426 () Bool)

(declare-fun res!1939030 () Bool)

(assert (=> b!4624426 (=> (not res!1939030) (not e!2884609))))

(assert (=> b!4624426 (= res!1939030 (contains!14553 (extractMap!1556 (toList!4966 lt!1781393)) key!4968))))

(declare-fun b!4624425 () Bool)

(declare-fun res!1939031 () Bool)

(assert (=> b!4624425 (=> (not res!1939031) (not e!2884609))))

(declare-fun allKeysSameHashInMap!1525 (ListLongMap!3555 Hashable!5897) Bool)

(assert (=> b!4624425 (= res!1939031 (allKeysSameHashInMap!1525 lt!1781393 hashF!1389))))

(assert (=> d!1456600 e!2884609))

(declare-fun res!1939029 () Bool)

(assert (=> d!1456600 (=> (not res!1939029) (not e!2884609))))

(assert (=> d!1456600 (= res!1939029 (forall!10815 (toList!4966 lt!1781393) lambda!191789))))

(declare-fun lt!1781830 () Unit!111769)

(declare-fun choose!31276 (ListLongMap!3555 K!12900 Hashable!5897) Unit!111769)

(assert (=> d!1456600 (= lt!1781830 (choose!31276 lt!1781393 key!4968 hashF!1389))))

(assert (=> d!1456600 (forall!10815 (toList!4966 lt!1781393) lambda!191789)))

(assert (=> d!1456600 (= (lemmaInGenMapThenGetPairDefined!88 lt!1781393 key!4968 hashF!1389) lt!1781830)))

(declare-fun b!4624428 () Bool)

(assert (=> b!4624428 (= e!2884610 (= (getValueByKey!1443 (toList!4966 lt!1781393) lt!1781829) (Some!11576 lt!1781825)))))

(assert (= (and d!1456600 res!1939029) b!4624425))

(assert (= (and b!4624425 res!1939031) b!4624426))

(assert (= (and b!4624426 res!1939030) b!4624427))

(assert (= (and b!4624427 res!1939032) b!4624428))

(assert (=> b!4624427 m!5464093))

(assert (=> b!4624427 m!5464705))

(declare-fun m!5464727 () Bool)

(assert (=> b!4624427 m!5464727))

(declare-fun m!5464729 () Bool)

(assert (=> b!4624427 m!5464729))

(assert (=> b!4624427 m!5464093))

(declare-fun m!5464731 () Bool)

(assert (=> b!4624427 m!5464731))

(declare-fun m!5464733 () Bool)

(assert (=> b!4624427 m!5464733))

(declare-fun m!5464735 () Bool)

(assert (=> b!4624427 m!5464735))

(declare-fun m!5464737 () Bool)

(assert (=> b!4624427 m!5464737))

(assert (=> b!4624427 m!5464731))

(assert (=> b!4624427 m!5464015))

(declare-fun m!5464739 () Bool)

(assert (=> b!4624427 m!5464739))

(assert (=> b!4624427 m!5464093))

(assert (=> b!4624427 m!5464737))

(declare-fun m!5464741 () Bool)

(assert (=> b!4624426 m!5464741))

(assert (=> b!4624426 m!5464741))

(declare-fun m!5464743 () Bool)

(assert (=> b!4624426 m!5464743))

(declare-fun m!5464745 () Bool)

(assert (=> d!1456600 m!5464745))

(declare-fun m!5464747 () Bool)

(assert (=> d!1456600 m!5464747))

(assert (=> d!1456600 m!5464745))

(declare-fun m!5464749 () Bool)

(assert (=> b!4624425 m!5464749))

(declare-fun m!5464751 () Bool)

(assert (=> b!4624428 m!5464751))

(assert (=> b!4624088 d!1456600))

(declare-fun b!4624445 () Bool)

(declare-fun e!2884622 () Option!11574)

(assert (=> b!4624445 (= e!2884622 None!11573)))

(declare-fun b!4624446 () Bool)

(assert (=> b!4624446 (= e!2884622 (getPair!292 (t!358670 lt!1781383) key!4968))))

(declare-fun b!4624447 () Bool)

(declare-fun e!2884624 () Bool)

(assert (=> b!4624447 (= e!2884624 (not (containsKey!2432 lt!1781383 key!4968)))))

(declare-fun b!4624448 () Bool)

(declare-fun e!2884623 () Option!11574)

(assert (=> b!4624448 (= e!2884623 e!2884622)))

(declare-fun c!791597 () Bool)

(assert (=> b!4624448 (= c!791597 ((_ is Cons!51518) lt!1781383))))

(declare-fun b!4624449 () Bool)

(declare-fun e!2884625 () Bool)

(declare-fun e!2884621 () Bool)

(assert (=> b!4624449 (= e!2884625 e!2884621)))

(declare-fun res!1939042 () Bool)

(assert (=> b!4624449 (=> (not res!1939042) (not e!2884621))))

(declare-fun lt!1781834 () Option!11574)

(assert (=> b!4624449 (= res!1939042 (isDefined!8839 lt!1781834))))

(declare-fun b!4624450 () Bool)

(declare-fun get!17065 (Option!11574) tuple2!52446)

(assert (=> b!4624450 (= e!2884621 (contains!14556 lt!1781383 (get!17065 lt!1781834)))))

(declare-fun d!1456602 () Bool)

(assert (=> d!1456602 e!2884625))

(declare-fun res!1939043 () Bool)

(assert (=> d!1456602 (=> res!1939043 e!2884625)))

(assert (=> d!1456602 (= res!1939043 e!2884624)))

(declare-fun res!1939044 () Bool)

(assert (=> d!1456602 (=> (not res!1939044) (not e!2884624))))

(declare-fun isEmpty!28926 (Option!11574) Bool)

(assert (=> d!1456602 (= res!1939044 (isEmpty!28926 lt!1781834))))

(assert (=> d!1456602 (= lt!1781834 e!2884623)))

(declare-fun c!791598 () Bool)

(assert (=> d!1456602 (= c!791598 (and ((_ is Cons!51518) lt!1781383) (= (_1!29517 (h!57564 lt!1781383)) key!4968)))))

(assert (=> d!1456602 (noDuplicateKeys!1500 lt!1781383)))

(assert (=> d!1456602 (= (getPair!292 lt!1781383 key!4968) lt!1781834)))

(declare-fun b!4624451 () Bool)

(assert (=> b!4624451 (= e!2884623 (Some!11573 (h!57564 lt!1781383)))))

(declare-fun b!4624452 () Bool)

(declare-fun res!1939041 () Bool)

(assert (=> b!4624452 (=> (not res!1939041) (not e!2884621))))

(assert (=> b!4624452 (= res!1939041 (= (_1!29517 (get!17065 lt!1781834)) key!4968))))

(assert (= (and d!1456602 c!791598) b!4624451))

(assert (= (and d!1456602 (not c!791598)) b!4624448))

(assert (= (and b!4624448 c!791597) b!4624446))

(assert (= (and b!4624448 (not c!791597)) b!4624445))

(assert (= (and d!1456602 res!1939044) b!4624447))

(assert (= (and d!1456602 (not res!1939043)) b!4624449))

(assert (= (and b!4624449 res!1939042) b!4624452))

(assert (= (and b!4624452 res!1939041) b!4624450))

(declare-fun m!5464753 () Bool)

(assert (=> b!4624446 m!5464753))

(declare-fun m!5464755 () Bool)

(assert (=> b!4624447 m!5464755))

(declare-fun m!5464757 () Bool)

(assert (=> b!4624449 m!5464757))

(declare-fun m!5464759 () Bool)

(assert (=> b!4624450 m!5464759))

(assert (=> b!4624450 m!5464759))

(declare-fun m!5464761 () Bool)

(assert (=> b!4624450 m!5464761))

(assert (=> b!4624452 m!5464759))

(declare-fun m!5464763 () Bool)

(assert (=> d!1456602 m!5464763))

(declare-fun m!5464765 () Bool)

(assert (=> d!1456602 m!5464765))

(assert (=> b!4624088 d!1456602))

(declare-fun d!1456604 () Bool)

(declare-fun e!2884630 () Bool)

(assert (=> d!1456604 e!2884630))

(declare-fun res!1939047 () Bool)

(assert (=> d!1456604 (=> res!1939047 e!2884630)))

(declare-fun lt!1781844 () Bool)

(assert (=> d!1456604 (= res!1939047 (not lt!1781844))))

(declare-fun lt!1781845 () Bool)

(assert (=> d!1456604 (= lt!1781844 lt!1781845)))

(declare-fun lt!1781843 () Unit!111769)

(declare-fun e!2884631 () Unit!111769)

(assert (=> d!1456604 (= lt!1781843 e!2884631)))

(declare-fun c!791601 () Bool)

(assert (=> d!1456604 (= c!791601 lt!1781845)))

(declare-fun containsKey!2436 (List!51643 (_ BitVec 64)) Bool)

(assert (=> d!1456604 (= lt!1781845 (containsKey!2436 (toList!4966 lt!1781393) lt!1781379))))

(assert (=> d!1456604 (= (contains!14552 lt!1781393 lt!1781379) lt!1781844)))

(declare-fun b!4624459 () Bool)

(declare-fun lt!1781846 () Unit!111769)

(assert (=> b!4624459 (= e!2884631 lt!1781846)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1346 (List!51643 (_ BitVec 64)) Unit!111769)

(assert (=> b!4624459 (= lt!1781846 (lemmaContainsKeyImpliesGetValueByKeyDefined!1346 (toList!4966 lt!1781393) lt!1781379))))

(declare-fun isDefined!8843 (Option!11577) Bool)

(assert (=> b!4624459 (isDefined!8843 (getValueByKey!1443 (toList!4966 lt!1781393) lt!1781379))))

(declare-fun b!4624460 () Bool)

(declare-fun Unit!111833 () Unit!111769)

(assert (=> b!4624460 (= e!2884631 Unit!111833)))

(declare-fun b!4624461 () Bool)

(assert (=> b!4624461 (= e!2884630 (isDefined!8843 (getValueByKey!1443 (toList!4966 lt!1781393) lt!1781379)))))

(assert (= (and d!1456604 c!791601) b!4624459))

(assert (= (and d!1456604 (not c!791601)) b!4624460))

(assert (= (and d!1456604 (not res!1939047)) b!4624461))

(declare-fun m!5464767 () Bool)

(assert (=> d!1456604 m!5464767))

(declare-fun m!5464769 () Bool)

(assert (=> b!4624459 m!5464769))

(assert (=> b!4624459 m!5464717))

(assert (=> b!4624459 m!5464717))

(declare-fun m!5464771 () Bool)

(assert (=> b!4624459 m!5464771))

(assert (=> b!4624461 m!5464717))

(assert (=> b!4624461 m!5464717))

(assert (=> b!4624461 m!5464771))

(assert (=> b!4624088 d!1456604))

(declare-fun d!1456606 () Bool)

(assert (=> d!1456606 (= (isDefined!8839 (getPair!292 lt!1781383 key!4968)) (not (isEmpty!28926 (getPair!292 lt!1781383 key!4968))))))

(declare-fun bs!1022556 () Bool)

(assert (= bs!1022556 d!1456606))

(assert (=> bs!1022556 m!5464009))

(declare-fun m!5464773 () Bool)

(assert (=> bs!1022556 m!5464773))

(assert (=> b!4624088 d!1456606))

(declare-fun d!1456608 () Bool)

(declare-fun res!1939048 () Bool)

(declare-fun e!2884632 () Bool)

(assert (=> d!1456608 (=> res!1939048 e!2884632)))

(assert (=> d!1456608 (= res!1939048 (not ((_ is Cons!51518) newBucket!224)))))

(assert (=> d!1456608 (= (noDuplicateKeys!1500 newBucket!224) e!2884632)))

(declare-fun b!4624462 () Bool)

(declare-fun e!2884633 () Bool)

(assert (=> b!4624462 (= e!2884632 e!2884633)))

(declare-fun res!1939049 () Bool)

(assert (=> b!4624462 (=> (not res!1939049) (not e!2884633))))

(assert (=> b!4624462 (= res!1939049 (not (containsKey!2432 (t!358670 newBucket!224) (_1!29517 (h!57564 newBucket!224)))))))

(declare-fun b!4624463 () Bool)

(assert (=> b!4624463 (= e!2884633 (noDuplicateKeys!1500 (t!358670 newBucket!224)))))

(assert (= (and d!1456608 (not res!1939048)) b!4624462))

(assert (= (and b!4624462 res!1939049) b!4624463))

(declare-fun m!5464775 () Bool)

(assert (=> b!4624462 m!5464775))

(declare-fun m!5464777 () Bool)

(assert (=> b!4624463 m!5464777))

(assert (=> b!4624089 d!1456608))

(declare-fun bs!1022557 () Bool)

(declare-fun d!1456610 () Bool)

(assert (= bs!1022557 (and d!1456610 d!1456472)))

(declare-fun lambda!191792 () Int)

(assert (=> bs!1022557 (= lambda!191792 lambda!191702)))

(declare-fun bs!1022558 () Bool)

(assert (= bs!1022558 (and d!1456610 d!1456600)))

(assert (=> bs!1022558 (= lambda!191792 lambda!191789)))

(declare-fun bs!1022559 () Bool)

(assert (= bs!1022559 (and d!1456610 d!1456560)))

(assert (=> bs!1022559 (= lambda!191792 lambda!191771)))

(declare-fun bs!1022560 () Bool)

(assert (= bs!1022560 (and d!1456610 d!1456590)))

(assert (=> bs!1022560 (= lambda!191792 lambda!191782)))

(declare-fun bs!1022561 () Bool)

(assert (= bs!1022561 (and d!1456610 d!1456484)))

(assert (=> bs!1022561 (= lambda!191792 lambda!191707)))

(declare-fun bs!1022562 () Bool)

(assert (= bs!1022562 (and d!1456610 d!1456486)))

(assert (=> bs!1022562 (= lambda!191792 lambda!191708)))

(declare-fun bs!1022563 () Bool)

(assert (= bs!1022563 (and d!1456610 b!4624088)))

(assert (=> bs!1022563 (= lambda!191792 lambda!191664)))

(assert (=> d!1456610 (contains!14553 (extractMap!1556 (toList!4966 (ListLongMap!3556 lt!1781377))) key!4968)))

(declare-fun lt!1781849 () Unit!111769)

(declare-fun choose!31278 (ListLongMap!3555 K!12900 Hashable!5897) Unit!111769)

(assert (=> d!1456610 (= lt!1781849 (choose!31278 (ListLongMap!3556 lt!1781377) key!4968 hashF!1389))))

(assert (=> d!1456610 (forall!10815 (toList!4966 (ListLongMap!3556 lt!1781377)) lambda!191792)))

(assert (=> d!1456610 (= (lemmaListContainsThenExtractedMapContains!318 (ListLongMap!3556 lt!1781377) key!4968 hashF!1389) lt!1781849)))

(declare-fun bs!1022564 () Bool)

(assert (= bs!1022564 d!1456610))

(declare-fun m!5464779 () Bool)

(assert (=> bs!1022564 m!5464779))

(assert (=> bs!1022564 m!5464779))

(declare-fun m!5464781 () Bool)

(assert (=> bs!1022564 m!5464781))

(declare-fun m!5464783 () Bool)

(assert (=> bs!1022564 m!5464783))

(declare-fun m!5464785 () Bool)

(assert (=> bs!1022564 m!5464785))

(assert (=> b!4624090 d!1456610))

(declare-fun bs!1022565 () Bool)

(declare-fun d!1456612 () Bool)

(assert (= bs!1022565 (and d!1456612 d!1456472)))

(declare-fun lambda!191793 () Int)

(assert (=> bs!1022565 (= lambda!191793 lambda!191702)))

(declare-fun bs!1022566 () Bool)

(assert (= bs!1022566 (and d!1456612 d!1456600)))

(assert (=> bs!1022566 (= lambda!191793 lambda!191789)))

(declare-fun bs!1022567 () Bool)

(assert (= bs!1022567 (and d!1456612 d!1456560)))

(assert (=> bs!1022567 (= lambda!191793 lambda!191771)))

(declare-fun bs!1022568 () Bool)

(assert (= bs!1022568 (and d!1456612 d!1456610)))

(assert (=> bs!1022568 (= lambda!191793 lambda!191792)))

(declare-fun bs!1022569 () Bool)

(assert (= bs!1022569 (and d!1456612 d!1456590)))

(assert (=> bs!1022569 (= lambda!191793 lambda!191782)))

(declare-fun bs!1022570 () Bool)

(assert (= bs!1022570 (and d!1456612 d!1456484)))

(assert (=> bs!1022570 (= lambda!191793 lambda!191707)))

(declare-fun bs!1022571 () Bool)

(assert (= bs!1022571 (and d!1456612 d!1456486)))

(assert (=> bs!1022571 (= lambda!191793 lambda!191708)))

(declare-fun bs!1022572 () Bool)

(assert (= bs!1022572 (and d!1456612 b!4624088)))

(assert (=> bs!1022572 (= lambda!191793 lambda!191664)))

(declare-fun lt!1781850 () ListMap!4269)

(assert (=> d!1456612 (invariantList!1200 (toList!4965 lt!1781850))))

(declare-fun e!2884634 () ListMap!4269)

(assert (=> d!1456612 (= lt!1781850 e!2884634)))

(declare-fun c!791602 () Bool)

(assert (=> d!1456612 (= c!791602 ((_ is Cons!51519) (Cons!51519 (tuple2!52449 hash!414 lt!1781387) Nil!51519)))))

(assert (=> d!1456612 (forall!10815 (Cons!51519 (tuple2!52449 hash!414 lt!1781387) Nil!51519) lambda!191793)))

(assert (=> d!1456612 (= (extractMap!1556 (Cons!51519 (tuple2!52449 hash!414 lt!1781387) Nil!51519)) lt!1781850)))

(declare-fun b!4624464 () Bool)

(assert (=> b!4624464 (= e!2884634 (addToMapMapFromBucket!961 (_2!29518 (h!57565 (Cons!51519 (tuple2!52449 hash!414 lt!1781387) Nil!51519))) (extractMap!1556 (t!358671 (Cons!51519 (tuple2!52449 hash!414 lt!1781387) Nil!51519)))))))

(declare-fun b!4624465 () Bool)

(assert (=> b!4624465 (= e!2884634 (ListMap!4270 Nil!51518))))

(assert (= (and d!1456612 c!791602) b!4624464))

(assert (= (and d!1456612 (not c!791602)) b!4624465))

(declare-fun m!5464787 () Bool)

(assert (=> d!1456612 m!5464787))

(declare-fun m!5464789 () Bool)

(assert (=> d!1456612 m!5464789))

(declare-fun m!5464791 () Bool)

(assert (=> b!4624464 m!5464791))

(assert (=> b!4624464 m!5464791))

(declare-fun m!5464793 () Bool)

(assert (=> b!4624464 m!5464793))

(assert (=> b!4624090 d!1456612))

(declare-fun d!1456614 () Bool)

(assert (=> d!1456614 (= (eq!815 (addToMapMapFromBucket!961 (Cons!51518 lt!1781389 lt!1781387) (ListMap!4270 Nil!51518)) (+!1866 (addToMapMapFromBucket!961 lt!1781387 (ListMap!4270 Nil!51518)) lt!1781389)) (= (content!8785 (toList!4965 (addToMapMapFromBucket!961 (Cons!51518 lt!1781389 lt!1781387) (ListMap!4270 Nil!51518)))) (content!8785 (toList!4965 (+!1866 (addToMapMapFromBucket!961 lt!1781387 (ListMap!4270 Nil!51518)) lt!1781389)))))))

(declare-fun bs!1022573 () Bool)

(assert (= bs!1022573 d!1456614))

(declare-fun m!5464795 () Bool)

(assert (=> bs!1022573 m!5464795))

(declare-fun m!5464797 () Bool)

(assert (=> bs!1022573 m!5464797))

(assert (=> b!4624090 d!1456614))

(declare-fun bs!1022574 () Bool)

(declare-fun b!4624467 () Bool)

(assert (= bs!1022574 (and b!4624467 b!4624364)))

(declare-fun lambda!191794 () Int)

(assert (=> bs!1022574 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191794 lambda!191767))))

(declare-fun bs!1022575 () Bool)

(assert (= bs!1022575 (and b!4624467 d!1456498)))

(assert (=> bs!1022575 (not (= lambda!191794 lambda!191715))))

(declare-fun bs!1022576 () Bool)

(assert (= bs!1022576 (and b!4624467 b!4624361)))

(assert (=> bs!1022576 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191794 lambda!191766))))

(declare-fun bs!1022577 () Bool)

(assert (= bs!1022577 (and b!4624467 d!1456488)))

(assert (=> bs!1022577 (not (= lambda!191794 lambda!191714))))

(assert (=> bs!1022574 (= (= (ListMap!4270 Nil!51518) lt!1781738) (= lambda!191794 lambda!191768))))

(declare-fun bs!1022578 () Bool)

(assert (= bs!1022578 (and b!4624467 d!1456504)))

(assert (=> bs!1022578 (= (= (ListMap!4270 Nil!51518) lt!1781748) (= lambda!191794 lambda!191770))))

(assert (=> b!4624467 true))

(declare-fun bs!1022579 () Bool)

(declare-fun b!4624470 () Bool)

(assert (= bs!1022579 (and b!4624470 b!4624364)))

(declare-fun lambda!191795 () Int)

(assert (=> bs!1022579 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191795 lambda!191767))))

(declare-fun bs!1022580 () Bool)

(assert (= bs!1022580 (and b!4624470 d!1456498)))

(assert (=> bs!1022580 (not (= lambda!191795 lambda!191715))))

(declare-fun bs!1022581 () Bool)

(assert (= bs!1022581 (and b!4624470 b!4624361)))

(assert (=> bs!1022581 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191795 lambda!191766))))

(declare-fun bs!1022582 () Bool)

(assert (= bs!1022582 (and b!4624470 d!1456488)))

(assert (=> bs!1022582 (not (= lambda!191795 lambda!191714))))

(assert (=> bs!1022579 (= (= (ListMap!4270 Nil!51518) lt!1781738) (= lambda!191795 lambda!191768))))

(declare-fun bs!1022583 () Bool)

(assert (= bs!1022583 (and b!4624470 b!4624467)))

(assert (=> bs!1022583 (= lambda!191795 lambda!191794)))

(declare-fun bs!1022584 () Bool)

(assert (= bs!1022584 (and b!4624470 d!1456504)))

(assert (=> bs!1022584 (= (= (ListMap!4270 Nil!51518) lt!1781748) (= lambda!191795 lambda!191770))))

(assert (=> b!4624470 true))

(declare-fun lt!1781858 () ListMap!4269)

(declare-fun lambda!191796 () Int)

(assert (=> bs!1022579 (= (= lt!1781858 lt!1781370) (= lambda!191796 lambda!191767))))

(assert (=> bs!1022581 (= (= lt!1781858 lt!1781370) (= lambda!191796 lambda!191766))))

(assert (=> bs!1022582 (not (= lambda!191796 lambda!191714))))

(assert (=> bs!1022579 (= (= lt!1781858 lt!1781738) (= lambda!191796 lambda!191768))))

(assert (=> bs!1022583 (= (= lt!1781858 (ListMap!4270 Nil!51518)) (= lambda!191796 lambda!191794))))

(assert (=> bs!1022584 (= (= lt!1781858 lt!1781748) (= lambda!191796 lambda!191770))))

(assert (=> b!4624470 (= (= lt!1781858 (ListMap!4270 Nil!51518)) (= lambda!191796 lambda!191795))))

(assert (=> bs!1022580 (not (= lambda!191796 lambda!191715))))

(assert (=> b!4624470 true))

(declare-fun bs!1022585 () Bool)

(declare-fun d!1456616 () Bool)

(assert (= bs!1022585 (and d!1456616 b!4624364)))

(declare-fun lt!1781868 () ListMap!4269)

(declare-fun lambda!191797 () Int)

(assert (=> bs!1022585 (= (= lt!1781868 lt!1781370) (= lambda!191797 lambda!191767))))

(declare-fun bs!1022586 () Bool)

(assert (= bs!1022586 (and d!1456616 b!4624361)))

(assert (=> bs!1022586 (= (= lt!1781868 lt!1781370) (= lambda!191797 lambda!191766))))

(declare-fun bs!1022587 () Bool)

(assert (= bs!1022587 (and d!1456616 d!1456488)))

(assert (=> bs!1022587 (not (= lambda!191797 lambda!191714))))

(assert (=> bs!1022585 (= (= lt!1781868 lt!1781738) (= lambda!191797 lambda!191768))))

(declare-fun bs!1022588 () Bool)

(assert (= bs!1022588 (and d!1456616 b!4624467)))

(assert (=> bs!1022588 (= (= lt!1781868 (ListMap!4270 Nil!51518)) (= lambda!191797 lambda!191794))))

(declare-fun bs!1022589 () Bool)

(assert (= bs!1022589 (and d!1456616 d!1456504)))

(assert (=> bs!1022589 (= (= lt!1781868 lt!1781748) (= lambda!191797 lambda!191770))))

(declare-fun bs!1022590 () Bool)

(assert (= bs!1022590 (and d!1456616 b!4624470)))

(assert (=> bs!1022590 (= (= lt!1781868 lt!1781858) (= lambda!191797 lambda!191796))))

(assert (=> bs!1022590 (= (= lt!1781868 (ListMap!4270 Nil!51518)) (= lambda!191797 lambda!191795))))

(declare-fun bs!1022591 () Bool)

(assert (= bs!1022591 (and d!1456616 d!1456498)))

(assert (=> bs!1022591 (not (= lambda!191797 lambda!191715))))

(assert (=> d!1456616 true))

(declare-fun b!4624466 () Bool)

(declare-fun e!2884636 () Bool)

(assert (=> b!4624466 (= e!2884636 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191796))))

(declare-fun e!2884635 () ListMap!4269)

(assert (=> b!4624467 (= e!2884635 (ListMap!4270 Nil!51518))))

(declare-fun lt!1781865 () Unit!111769)

(declare-fun call!322539 () Unit!111769)

(assert (=> b!4624467 (= lt!1781865 call!322539)))

(declare-fun call!322541 () Bool)

(assert (=> b!4624467 call!322541))

(declare-fun lt!1781860 () Unit!111769)

(assert (=> b!4624467 (= lt!1781860 lt!1781865)))

(declare-fun call!322540 () Bool)

(assert (=> b!4624467 call!322540))

(declare-fun lt!1781857 () Unit!111769)

(declare-fun Unit!111834 () Unit!111769)

(assert (=> b!4624467 (= lt!1781857 Unit!111834)))

(declare-fun c!791603 () Bool)

(declare-fun lt!1781866 () ListMap!4269)

(declare-fun bm!322534 () Bool)

(assert (=> bm!322534 (= call!322540 (forall!10816 (ite c!791603 (toList!4965 (ListMap!4270 Nil!51518)) (toList!4965 lt!1781866)) (ite c!791603 lambda!191794 lambda!191796)))))

(declare-fun b!4624468 () Bool)

(declare-fun res!1939050 () Bool)

(declare-fun e!2884637 () Bool)

(assert (=> b!4624468 (=> (not res!1939050) (not e!2884637))))

(assert (=> b!4624468 (= res!1939050 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191797))))

(declare-fun bm!322535 () Bool)

(assert (=> bm!322535 (= call!322539 (lemmaContainsAllItsOwnKeys!502 (ListMap!4270 Nil!51518)))))

(declare-fun b!4624469 () Bool)

(assert (=> b!4624469 (= e!2884637 (invariantList!1200 (toList!4965 lt!1781868)))))

(declare-fun bm!322536 () Bool)

(assert (=> bm!322536 (= call!322541 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) (ite c!791603 lambda!191794 lambda!191795)))))

(assert (=> d!1456616 e!2884637))

(declare-fun res!1939052 () Bool)

(assert (=> d!1456616 (=> (not res!1939052) (not e!2884637))))

(assert (=> d!1456616 (= res!1939052 (forall!10816 lt!1781387 lambda!191797))))

(assert (=> d!1456616 (= lt!1781868 e!2884635)))

(assert (=> d!1456616 (= c!791603 ((_ is Nil!51518) lt!1781387))))

(assert (=> d!1456616 (noDuplicateKeys!1500 lt!1781387)))

(assert (=> d!1456616 (= (addToMapMapFromBucket!961 lt!1781387 (ListMap!4270 Nil!51518)) lt!1781868)))

(assert (=> b!4624470 (= e!2884635 lt!1781858)))

(assert (=> b!4624470 (= lt!1781866 (+!1866 (ListMap!4270 Nil!51518) (h!57564 lt!1781387)))))

(assert (=> b!4624470 (= lt!1781858 (addToMapMapFromBucket!961 (t!358670 lt!1781387) (+!1866 (ListMap!4270 Nil!51518) (h!57564 lt!1781387))))))

(declare-fun lt!1781869 () Unit!111769)

(assert (=> b!4624470 (= lt!1781869 call!322539)))

(assert (=> b!4624470 call!322541))

(declare-fun lt!1781851 () Unit!111769)

(assert (=> b!4624470 (= lt!1781851 lt!1781869)))

(assert (=> b!4624470 (forall!10816 (toList!4965 lt!1781866) lambda!191796)))

(declare-fun lt!1781853 () Unit!111769)

(declare-fun Unit!111835 () Unit!111769)

(assert (=> b!4624470 (= lt!1781853 Unit!111835)))

(assert (=> b!4624470 (forall!10816 (t!358670 lt!1781387) lambda!191796)))

(declare-fun lt!1781855 () Unit!111769)

(declare-fun Unit!111836 () Unit!111769)

(assert (=> b!4624470 (= lt!1781855 Unit!111836)))

(declare-fun lt!1781870 () Unit!111769)

(declare-fun Unit!111837 () Unit!111769)

(assert (=> b!4624470 (= lt!1781870 Unit!111837)))

(declare-fun lt!1781867 () Unit!111769)

(assert (=> b!4624470 (= lt!1781867 (forallContained!3042 (toList!4965 lt!1781866) lambda!191796 (h!57564 lt!1781387)))))

(assert (=> b!4624470 (contains!14553 lt!1781866 (_1!29517 (h!57564 lt!1781387)))))

(declare-fun lt!1781871 () Unit!111769)

(declare-fun Unit!111838 () Unit!111769)

(assert (=> b!4624470 (= lt!1781871 Unit!111838)))

(assert (=> b!4624470 (contains!14553 lt!1781858 (_1!29517 (h!57564 lt!1781387)))))

(declare-fun lt!1781862 () Unit!111769)

(declare-fun Unit!111839 () Unit!111769)

(assert (=> b!4624470 (= lt!1781862 Unit!111839)))

(assert (=> b!4624470 (forall!10816 lt!1781387 lambda!191796)))

(declare-fun lt!1781861 () Unit!111769)

(declare-fun Unit!111840 () Unit!111769)

(assert (=> b!4624470 (= lt!1781861 Unit!111840)))

(assert (=> b!4624470 call!322540))

(declare-fun lt!1781854 () Unit!111769)

(declare-fun Unit!111841 () Unit!111769)

(assert (=> b!4624470 (= lt!1781854 Unit!111841)))

(declare-fun lt!1781859 () Unit!111769)

(declare-fun Unit!111842 () Unit!111769)

(assert (=> b!4624470 (= lt!1781859 Unit!111842)))

(declare-fun lt!1781863 () Unit!111769)

(assert (=> b!4624470 (= lt!1781863 (addForallContainsKeyThenBeforeAdding!501 (ListMap!4270 Nil!51518) lt!1781858 (_1!29517 (h!57564 lt!1781387)) (_2!29517 (h!57564 lt!1781387))))))

(assert (=> b!4624470 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191796)))

(declare-fun lt!1781864 () Unit!111769)

(assert (=> b!4624470 (= lt!1781864 lt!1781863)))

(assert (=> b!4624470 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191796)))

(declare-fun lt!1781856 () Unit!111769)

(declare-fun Unit!111843 () Unit!111769)

(assert (=> b!4624470 (= lt!1781856 Unit!111843)))

(declare-fun res!1939051 () Bool)

(assert (=> b!4624470 (= res!1939051 (forall!10816 lt!1781387 lambda!191796))))

(assert (=> b!4624470 (=> (not res!1939051) (not e!2884636))))

(assert (=> b!4624470 e!2884636))

(declare-fun lt!1781852 () Unit!111769)

(declare-fun Unit!111844 () Unit!111769)

(assert (=> b!4624470 (= lt!1781852 Unit!111844)))

(assert (= (and d!1456616 c!791603) b!4624467))

(assert (= (and d!1456616 (not c!791603)) b!4624470))

(assert (= (and b!4624470 res!1939051) b!4624466))

(assert (= (or b!4624467 b!4624470) bm!322535))

(assert (= (or b!4624467 b!4624470) bm!322536))

(assert (= (or b!4624467 b!4624470) bm!322534))

(assert (= (and d!1456616 res!1939052) b!4624468))

(assert (= (and b!4624468 res!1939050) b!4624469))

(declare-fun m!5464799 () Bool)

(assert (=> bm!322535 m!5464799))

(declare-fun m!5464801 () Bool)

(assert (=> b!4624468 m!5464801))

(declare-fun m!5464803 () Bool)

(assert (=> d!1456616 m!5464803))

(assert (=> d!1456616 m!5464621))

(declare-fun m!5464805 () Bool)

(assert (=> bm!322536 m!5464805))

(declare-fun m!5464807 () Bool)

(assert (=> b!4624469 m!5464807))

(declare-fun m!5464809 () Bool)

(assert (=> bm!322534 m!5464809))

(declare-fun m!5464811 () Bool)

(assert (=> b!4624466 m!5464811))

(assert (=> b!4624470 m!5464811))

(declare-fun m!5464813 () Bool)

(assert (=> b!4624470 m!5464813))

(declare-fun m!5464815 () Bool)

(assert (=> b!4624470 m!5464815))

(declare-fun m!5464817 () Bool)

(assert (=> b!4624470 m!5464817))

(declare-fun m!5464819 () Bool)

(assert (=> b!4624470 m!5464819))

(declare-fun m!5464821 () Bool)

(assert (=> b!4624470 m!5464821))

(assert (=> b!4624470 m!5464813))

(assert (=> b!4624470 m!5464821))

(declare-fun m!5464823 () Bool)

(assert (=> b!4624470 m!5464823))

(declare-fun m!5464825 () Bool)

(assert (=> b!4624470 m!5464825))

(declare-fun m!5464827 () Bool)

(assert (=> b!4624470 m!5464827))

(declare-fun m!5464829 () Bool)

(assert (=> b!4624470 m!5464829))

(assert (=> b!4624470 m!5464811))

(assert (=> b!4624090 d!1456616))

(declare-fun d!1456618 () Bool)

(assert (=> d!1456618 (= (head!9634 oldBucket!40) (h!57564 oldBucket!40))))

(assert (=> b!4624090 d!1456618))

(declare-fun d!1456620 () Bool)

(assert (=> d!1456620 (= (eq!815 (addToMapMapFromBucket!961 (Cons!51518 lt!1781392 lt!1781372) (ListMap!4270 Nil!51518)) (+!1866 (addToMapMapFromBucket!961 lt!1781372 (ListMap!4270 Nil!51518)) lt!1781392)) (= (content!8785 (toList!4965 (addToMapMapFromBucket!961 (Cons!51518 lt!1781392 lt!1781372) (ListMap!4270 Nil!51518)))) (content!8785 (toList!4965 (+!1866 (addToMapMapFromBucket!961 lt!1781372 (ListMap!4270 Nil!51518)) lt!1781392)))))))

(declare-fun bs!1022592 () Bool)

(assert (= bs!1022592 d!1456620))

(declare-fun m!5464831 () Bool)

(assert (=> bs!1022592 m!5464831))

(declare-fun m!5464833 () Bool)

(assert (=> bs!1022592 m!5464833))

(assert (=> b!4624090 d!1456620))

(declare-fun d!1456622 () Bool)

(assert (=> d!1456622 (eq!815 (addToMapMapFromBucket!961 (Cons!51518 lt!1781389 lt!1781387) (ListMap!4270 Nil!51518)) (+!1866 (addToMapMapFromBucket!961 lt!1781387 (ListMap!4270 Nil!51518)) lt!1781389))))

(declare-fun lt!1781874 () Unit!111769)

(declare-fun choose!31283 (tuple2!52446 List!51642 ListMap!4269) Unit!111769)

(assert (=> d!1456622 (= lt!1781874 (choose!31283 lt!1781389 lt!1781387 (ListMap!4270 Nil!51518)))))

(assert (=> d!1456622 (noDuplicateKeys!1500 lt!1781387)))

(assert (=> d!1456622 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!66 lt!1781389 lt!1781387 (ListMap!4270 Nil!51518)) lt!1781874)))

(declare-fun bs!1022593 () Bool)

(assert (= bs!1022593 d!1456622))

(declare-fun m!5464835 () Bool)

(assert (=> bs!1022593 m!5464835))

(assert (=> bs!1022593 m!5464621))

(assert (=> bs!1022593 m!5464029))

(assert (=> bs!1022593 m!5464045))

(assert (=> bs!1022593 m!5464045))

(assert (=> bs!1022593 m!5464035))

(assert (=> bs!1022593 m!5464029))

(assert (=> bs!1022593 m!5464035))

(assert (=> bs!1022593 m!5464037))

(assert (=> b!4624090 d!1456622))

(declare-fun d!1456624 () Bool)

(declare-fun e!2884638 () Bool)

(assert (=> d!1456624 e!2884638))

(declare-fun res!1939053 () Bool)

(assert (=> d!1456624 (=> (not res!1939053) (not e!2884638))))

(declare-fun lt!1781878 () ListMap!4269)

(assert (=> d!1456624 (= res!1939053 (contains!14553 lt!1781878 (_1!29517 (h!57564 oldBucket!40))))))

(declare-fun lt!1781876 () List!51642)

(assert (=> d!1456624 (= lt!1781878 (ListMap!4270 lt!1781876))))

(declare-fun lt!1781877 () Unit!111769)

(declare-fun lt!1781875 () Unit!111769)

(assert (=> d!1456624 (= lt!1781877 lt!1781875)))

(assert (=> d!1456624 (= (getValueByKey!1442 lt!1781876 (_1!29517 (h!57564 oldBucket!40))) (Some!11575 (_2!29517 (h!57564 oldBucket!40))))))

(assert (=> d!1456624 (= lt!1781875 (lemmaContainsTupThenGetReturnValue!844 lt!1781876 (_1!29517 (h!57564 oldBucket!40)) (_2!29517 (h!57564 oldBucket!40))))))

(assert (=> d!1456624 (= lt!1781876 (insertNoDuplicatedKeys!352 (toList!4965 (extractMap!1556 (Cons!51519 (tuple2!52449 hash!414 lt!1781387) Nil!51519))) (_1!29517 (h!57564 oldBucket!40)) (_2!29517 (h!57564 oldBucket!40))))))

(assert (=> d!1456624 (= (+!1866 (extractMap!1556 (Cons!51519 (tuple2!52449 hash!414 lt!1781387) Nil!51519)) (h!57564 oldBucket!40)) lt!1781878)))

(declare-fun b!4624471 () Bool)

(declare-fun res!1939054 () Bool)

(assert (=> b!4624471 (=> (not res!1939054) (not e!2884638))))

(assert (=> b!4624471 (= res!1939054 (= (getValueByKey!1442 (toList!4965 lt!1781878) (_1!29517 (h!57564 oldBucket!40))) (Some!11575 (_2!29517 (h!57564 oldBucket!40)))))))

(declare-fun b!4624472 () Bool)

(assert (=> b!4624472 (= e!2884638 (contains!14556 (toList!4965 lt!1781878) (h!57564 oldBucket!40)))))

(assert (= (and d!1456624 res!1939053) b!4624471))

(assert (= (and b!4624471 res!1939054) b!4624472))

(declare-fun m!5464837 () Bool)

(assert (=> d!1456624 m!5464837))

(declare-fun m!5464839 () Bool)

(assert (=> d!1456624 m!5464839))

(declare-fun m!5464841 () Bool)

(assert (=> d!1456624 m!5464841))

(declare-fun m!5464843 () Bool)

(assert (=> d!1456624 m!5464843))

(declare-fun m!5464845 () Bool)

(assert (=> b!4624471 m!5464845))

(declare-fun m!5464847 () Bool)

(assert (=> b!4624472 m!5464847))

(assert (=> b!4624090 d!1456624))

(declare-fun bs!1022594 () Bool)

(declare-fun b!4624474 () Bool)

(assert (= bs!1022594 (and b!4624474 b!4624364)))

(declare-fun lambda!191798 () Int)

(assert (=> bs!1022594 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191798 lambda!191767))))

(declare-fun bs!1022595 () Bool)

(assert (= bs!1022595 (and b!4624474 b!4624361)))

(assert (=> bs!1022595 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191798 lambda!191766))))

(declare-fun bs!1022596 () Bool)

(assert (= bs!1022596 (and b!4624474 d!1456488)))

(assert (=> bs!1022596 (not (= lambda!191798 lambda!191714))))

(declare-fun bs!1022597 () Bool)

(assert (= bs!1022597 (and b!4624474 d!1456616)))

(assert (=> bs!1022597 (= (= (ListMap!4270 Nil!51518) lt!1781868) (= lambda!191798 lambda!191797))))

(assert (=> bs!1022594 (= (= (ListMap!4270 Nil!51518) lt!1781738) (= lambda!191798 lambda!191768))))

(declare-fun bs!1022598 () Bool)

(assert (= bs!1022598 (and b!4624474 b!4624467)))

(assert (=> bs!1022598 (= lambda!191798 lambda!191794)))

(declare-fun bs!1022599 () Bool)

(assert (= bs!1022599 (and b!4624474 d!1456504)))

(assert (=> bs!1022599 (= (= (ListMap!4270 Nil!51518) lt!1781748) (= lambda!191798 lambda!191770))))

(declare-fun bs!1022600 () Bool)

(assert (= bs!1022600 (and b!4624474 b!4624470)))

(assert (=> bs!1022600 (= (= (ListMap!4270 Nil!51518) lt!1781858) (= lambda!191798 lambda!191796))))

(assert (=> bs!1022600 (= lambda!191798 lambda!191795)))

(declare-fun bs!1022601 () Bool)

(assert (= bs!1022601 (and b!4624474 d!1456498)))

(assert (=> bs!1022601 (not (= lambda!191798 lambda!191715))))

(assert (=> b!4624474 true))

(declare-fun bs!1022602 () Bool)

(declare-fun b!4624477 () Bool)

(assert (= bs!1022602 (and b!4624477 b!4624364)))

(declare-fun lambda!191799 () Int)

(assert (=> bs!1022602 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191799 lambda!191767))))

(declare-fun bs!1022603 () Bool)

(assert (= bs!1022603 (and b!4624477 b!4624361)))

(assert (=> bs!1022603 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191799 lambda!191766))))

(declare-fun bs!1022604 () Bool)

(assert (= bs!1022604 (and b!4624477 d!1456488)))

(assert (=> bs!1022604 (not (= lambda!191799 lambda!191714))))

(declare-fun bs!1022605 () Bool)

(assert (= bs!1022605 (and b!4624477 d!1456616)))

(assert (=> bs!1022605 (= (= (ListMap!4270 Nil!51518) lt!1781868) (= lambda!191799 lambda!191797))))

(assert (=> bs!1022602 (= (= (ListMap!4270 Nil!51518) lt!1781738) (= lambda!191799 lambda!191768))))

(declare-fun bs!1022606 () Bool)

(assert (= bs!1022606 (and b!4624477 b!4624467)))

(assert (=> bs!1022606 (= lambda!191799 lambda!191794)))

(declare-fun bs!1022607 () Bool)

(assert (= bs!1022607 (and b!4624477 d!1456504)))

(assert (=> bs!1022607 (= (= (ListMap!4270 Nil!51518) lt!1781748) (= lambda!191799 lambda!191770))))

(declare-fun bs!1022608 () Bool)

(assert (= bs!1022608 (and b!4624477 b!4624470)))

(assert (=> bs!1022608 (= lambda!191799 lambda!191795)))

(declare-fun bs!1022609 () Bool)

(assert (= bs!1022609 (and b!4624477 d!1456498)))

(assert (=> bs!1022609 (not (= lambda!191799 lambda!191715))))

(assert (=> bs!1022608 (= (= (ListMap!4270 Nil!51518) lt!1781858) (= lambda!191799 lambda!191796))))

(declare-fun bs!1022610 () Bool)

(assert (= bs!1022610 (and b!4624477 b!4624474)))

(assert (=> bs!1022610 (= lambda!191799 lambda!191798)))

(assert (=> b!4624477 true))

(declare-fun lt!1781886 () ListMap!4269)

(declare-fun lambda!191800 () Int)

(assert (=> bs!1022602 (= (= lt!1781886 lt!1781370) (= lambda!191800 lambda!191767))))

(assert (=> bs!1022603 (= (= lt!1781886 lt!1781370) (= lambda!191800 lambda!191766))))

(assert (=> bs!1022604 (not (= lambda!191800 lambda!191714))))

(assert (=> bs!1022605 (= (= lt!1781886 lt!1781868) (= lambda!191800 lambda!191797))))

(assert (=> bs!1022602 (= (= lt!1781886 lt!1781738) (= lambda!191800 lambda!191768))))

(assert (=> bs!1022606 (= (= lt!1781886 (ListMap!4270 Nil!51518)) (= lambda!191800 lambda!191794))))

(assert (=> bs!1022607 (= (= lt!1781886 lt!1781748) (= lambda!191800 lambda!191770))))

(assert (=> b!4624477 (= (= lt!1781886 (ListMap!4270 Nil!51518)) (= lambda!191800 lambda!191799))))

(assert (=> bs!1022608 (= (= lt!1781886 (ListMap!4270 Nil!51518)) (= lambda!191800 lambda!191795))))

(assert (=> bs!1022609 (not (= lambda!191800 lambda!191715))))

(assert (=> bs!1022608 (= (= lt!1781886 lt!1781858) (= lambda!191800 lambda!191796))))

(assert (=> bs!1022610 (= (= lt!1781886 (ListMap!4270 Nil!51518)) (= lambda!191800 lambda!191798))))

(assert (=> b!4624477 true))

(declare-fun bs!1022611 () Bool)

(declare-fun d!1456626 () Bool)

(assert (= bs!1022611 (and d!1456626 b!4624364)))

(declare-fun lambda!191801 () Int)

(declare-fun lt!1781896 () ListMap!4269)

(assert (=> bs!1022611 (= (= lt!1781896 lt!1781370) (= lambda!191801 lambda!191767))))

(declare-fun bs!1022612 () Bool)

(assert (= bs!1022612 (and d!1456626 b!4624361)))

(assert (=> bs!1022612 (= (= lt!1781896 lt!1781370) (= lambda!191801 lambda!191766))))

(declare-fun bs!1022613 () Bool)

(assert (= bs!1022613 (and d!1456626 d!1456488)))

(assert (=> bs!1022613 (not (= lambda!191801 lambda!191714))))

(declare-fun bs!1022614 () Bool)

(assert (= bs!1022614 (and d!1456626 d!1456616)))

(assert (=> bs!1022614 (= (= lt!1781896 lt!1781868) (= lambda!191801 lambda!191797))))

(assert (=> bs!1022611 (= (= lt!1781896 lt!1781738) (= lambda!191801 lambda!191768))))

(declare-fun bs!1022615 () Bool)

(assert (= bs!1022615 (and d!1456626 b!4624467)))

(assert (=> bs!1022615 (= (= lt!1781896 (ListMap!4270 Nil!51518)) (= lambda!191801 lambda!191794))))

(declare-fun bs!1022616 () Bool)

(assert (= bs!1022616 (and d!1456626 d!1456504)))

(assert (=> bs!1022616 (= (= lt!1781896 lt!1781748) (= lambda!191801 lambda!191770))))

(declare-fun bs!1022617 () Bool)

(assert (= bs!1022617 (and d!1456626 b!4624477)))

(assert (=> bs!1022617 (= (= lt!1781896 lt!1781886) (= lambda!191801 lambda!191800))))

(assert (=> bs!1022617 (= (= lt!1781896 (ListMap!4270 Nil!51518)) (= lambda!191801 lambda!191799))))

(declare-fun bs!1022618 () Bool)

(assert (= bs!1022618 (and d!1456626 b!4624470)))

(assert (=> bs!1022618 (= (= lt!1781896 (ListMap!4270 Nil!51518)) (= lambda!191801 lambda!191795))))

(declare-fun bs!1022619 () Bool)

(assert (= bs!1022619 (and d!1456626 d!1456498)))

(assert (=> bs!1022619 (not (= lambda!191801 lambda!191715))))

(assert (=> bs!1022618 (= (= lt!1781896 lt!1781858) (= lambda!191801 lambda!191796))))

(declare-fun bs!1022620 () Bool)

(assert (= bs!1022620 (and d!1456626 b!4624474)))

(assert (=> bs!1022620 (= (= lt!1781896 (ListMap!4270 Nil!51518)) (= lambda!191801 lambda!191798))))

(assert (=> d!1456626 true))

(declare-fun b!4624473 () Bool)

(declare-fun e!2884640 () Bool)

(assert (=> b!4624473 (= e!2884640 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191800))))

(declare-fun e!2884639 () ListMap!4269)

(assert (=> b!4624474 (= e!2884639 (ListMap!4270 Nil!51518))))

(declare-fun lt!1781893 () Unit!111769)

(declare-fun call!322542 () Unit!111769)

(assert (=> b!4624474 (= lt!1781893 call!322542)))

(declare-fun call!322544 () Bool)

(assert (=> b!4624474 call!322544))

(declare-fun lt!1781888 () Unit!111769)

(assert (=> b!4624474 (= lt!1781888 lt!1781893)))

(declare-fun call!322543 () Bool)

(assert (=> b!4624474 call!322543))

(declare-fun lt!1781885 () Unit!111769)

(declare-fun Unit!111853 () Unit!111769)

(assert (=> b!4624474 (= lt!1781885 Unit!111853)))

(declare-fun c!791604 () Bool)

(declare-fun lt!1781894 () ListMap!4269)

(declare-fun bm!322537 () Bool)

(assert (=> bm!322537 (= call!322543 (forall!10816 (ite c!791604 (toList!4965 (ListMap!4270 Nil!51518)) (toList!4965 lt!1781894)) (ite c!791604 lambda!191798 lambda!191800)))))

(declare-fun b!4624475 () Bool)

(declare-fun res!1939055 () Bool)

(declare-fun e!2884641 () Bool)

(assert (=> b!4624475 (=> (not res!1939055) (not e!2884641))))

(assert (=> b!4624475 (= res!1939055 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191801))))

(declare-fun bm!322538 () Bool)

(assert (=> bm!322538 (= call!322542 (lemmaContainsAllItsOwnKeys!502 (ListMap!4270 Nil!51518)))))

(declare-fun b!4624476 () Bool)

(assert (=> b!4624476 (= e!2884641 (invariantList!1200 (toList!4965 lt!1781896)))))

(declare-fun bm!322539 () Bool)

(assert (=> bm!322539 (= call!322544 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) (ite c!791604 lambda!191798 lambda!191799)))))

(assert (=> d!1456626 e!2884641))

(declare-fun res!1939057 () Bool)

(assert (=> d!1456626 (=> (not res!1939057) (not e!2884641))))

(assert (=> d!1456626 (= res!1939057 (forall!10816 (Cons!51518 lt!1781392 lt!1781372) lambda!191801))))

(assert (=> d!1456626 (= lt!1781896 e!2884639)))

(assert (=> d!1456626 (= c!791604 ((_ is Nil!51518) (Cons!51518 lt!1781392 lt!1781372)))))

(assert (=> d!1456626 (noDuplicateKeys!1500 (Cons!51518 lt!1781392 lt!1781372))))

(assert (=> d!1456626 (= (addToMapMapFromBucket!961 (Cons!51518 lt!1781392 lt!1781372) (ListMap!4270 Nil!51518)) lt!1781896)))

(assert (=> b!4624477 (= e!2884639 lt!1781886)))

(assert (=> b!4624477 (= lt!1781894 (+!1866 (ListMap!4270 Nil!51518) (h!57564 (Cons!51518 lt!1781392 lt!1781372))))))

(assert (=> b!4624477 (= lt!1781886 (addToMapMapFromBucket!961 (t!358670 (Cons!51518 lt!1781392 lt!1781372)) (+!1866 (ListMap!4270 Nil!51518) (h!57564 (Cons!51518 lt!1781392 lt!1781372)))))))

(declare-fun lt!1781897 () Unit!111769)

(assert (=> b!4624477 (= lt!1781897 call!322542)))

(assert (=> b!4624477 call!322544))

(declare-fun lt!1781879 () Unit!111769)

(assert (=> b!4624477 (= lt!1781879 lt!1781897)))

(assert (=> b!4624477 (forall!10816 (toList!4965 lt!1781894) lambda!191800)))

(declare-fun lt!1781881 () Unit!111769)

(declare-fun Unit!111857 () Unit!111769)

(assert (=> b!4624477 (= lt!1781881 Unit!111857)))

(assert (=> b!4624477 (forall!10816 (t!358670 (Cons!51518 lt!1781392 lt!1781372)) lambda!191800)))

(declare-fun lt!1781883 () Unit!111769)

(declare-fun Unit!111858 () Unit!111769)

(assert (=> b!4624477 (= lt!1781883 Unit!111858)))

(declare-fun lt!1781898 () Unit!111769)

(declare-fun Unit!111859 () Unit!111769)

(assert (=> b!4624477 (= lt!1781898 Unit!111859)))

(declare-fun lt!1781895 () Unit!111769)

(assert (=> b!4624477 (= lt!1781895 (forallContained!3042 (toList!4965 lt!1781894) lambda!191800 (h!57564 (Cons!51518 lt!1781392 lt!1781372))))))

(assert (=> b!4624477 (contains!14553 lt!1781894 (_1!29517 (h!57564 (Cons!51518 lt!1781392 lt!1781372))))))

(declare-fun lt!1781899 () Unit!111769)

(declare-fun Unit!111860 () Unit!111769)

(assert (=> b!4624477 (= lt!1781899 Unit!111860)))

(assert (=> b!4624477 (contains!14553 lt!1781886 (_1!29517 (h!57564 (Cons!51518 lt!1781392 lt!1781372))))))

(declare-fun lt!1781890 () Unit!111769)

(declare-fun Unit!111861 () Unit!111769)

(assert (=> b!4624477 (= lt!1781890 Unit!111861)))

(assert (=> b!4624477 (forall!10816 (Cons!51518 lt!1781392 lt!1781372) lambda!191800)))

(declare-fun lt!1781889 () Unit!111769)

(declare-fun Unit!111862 () Unit!111769)

(assert (=> b!4624477 (= lt!1781889 Unit!111862)))

(assert (=> b!4624477 call!322543))

(declare-fun lt!1781882 () Unit!111769)

(declare-fun Unit!111863 () Unit!111769)

(assert (=> b!4624477 (= lt!1781882 Unit!111863)))

(declare-fun lt!1781887 () Unit!111769)

(declare-fun Unit!111864 () Unit!111769)

(assert (=> b!4624477 (= lt!1781887 Unit!111864)))

(declare-fun lt!1781891 () Unit!111769)

(assert (=> b!4624477 (= lt!1781891 (addForallContainsKeyThenBeforeAdding!501 (ListMap!4270 Nil!51518) lt!1781886 (_1!29517 (h!57564 (Cons!51518 lt!1781392 lt!1781372))) (_2!29517 (h!57564 (Cons!51518 lt!1781392 lt!1781372)))))))

(assert (=> b!4624477 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191800)))

(declare-fun lt!1781892 () Unit!111769)

(assert (=> b!4624477 (= lt!1781892 lt!1781891)))

(assert (=> b!4624477 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191800)))

(declare-fun lt!1781884 () Unit!111769)

(declare-fun Unit!111865 () Unit!111769)

(assert (=> b!4624477 (= lt!1781884 Unit!111865)))

(declare-fun res!1939056 () Bool)

(assert (=> b!4624477 (= res!1939056 (forall!10816 (Cons!51518 lt!1781392 lt!1781372) lambda!191800))))

(assert (=> b!4624477 (=> (not res!1939056) (not e!2884640))))

(assert (=> b!4624477 e!2884640))

(declare-fun lt!1781880 () Unit!111769)

(declare-fun Unit!111866 () Unit!111769)

(assert (=> b!4624477 (= lt!1781880 Unit!111866)))

(assert (= (and d!1456626 c!791604) b!4624474))

(assert (= (and d!1456626 (not c!791604)) b!4624477))

(assert (= (and b!4624477 res!1939056) b!4624473))

(assert (= (or b!4624474 b!4624477) bm!322538))

(assert (= (or b!4624474 b!4624477) bm!322539))

(assert (= (or b!4624474 b!4624477) bm!322537))

(assert (= (and d!1456626 res!1939057) b!4624475))

(assert (= (and b!4624475 res!1939055) b!4624476))

(assert (=> bm!322538 m!5464799))

(declare-fun m!5464849 () Bool)

(assert (=> b!4624475 m!5464849))

(declare-fun m!5464851 () Bool)

(assert (=> d!1456626 m!5464851))

(declare-fun m!5464853 () Bool)

(assert (=> d!1456626 m!5464853))

(declare-fun m!5464855 () Bool)

(assert (=> bm!322539 m!5464855))

(declare-fun m!5464857 () Bool)

(assert (=> b!4624476 m!5464857))

(declare-fun m!5464859 () Bool)

(assert (=> bm!322537 m!5464859))

(declare-fun m!5464861 () Bool)

(assert (=> b!4624473 m!5464861))

(assert (=> b!4624477 m!5464861))

(declare-fun m!5464863 () Bool)

(assert (=> b!4624477 m!5464863))

(declare-fun m!5464865 () Bool)

(assert (=> b!4624477 m!5464865))

(declare-fun m!5464867 () Bool)

(assert (=> b!4624477 m!5464867))

(declare-fun m!5464869 () Bool)

(assert (=> b!4624477 m!5464869))

(declare-fun m!5464871 () Bool)

(assert (=> b!4624477 m!5464871))

(assert (=> b!4624477 m!5464863))

(assert (=> b!4624477 m!5464871))

(declare-fun m!5464873 () Bool)

(assert (=> b!4624477 m!5464873))

(declare-fun m!5464875 () Bool)

(assert (=> b!4624477 m!5464875))

(declare-fun m!5464877 () Bool)

(assert (=> b!4624477 m!5464877))

(declare-fun m!5464879 () Bool)

(assert (=> b!4624477 m!5464879))

(assert (=> b!4624477 m!5464861))

(assert (=> b!4624090 d!1456626))

(declare-fun d!1456628 () Bool)

(declare-fun e!2884642 () Bool)

(assert (=> d!1456628 e!2884642))

(declare-fun res!1939058 () Bool)

(assert (=> d!1456628 (=> (not res!1939058) (not e!2884642))))

(declare-fun lt!1781903 () ListMap!4269)

(assert (=> d!1456628 (= res!1939058 (contains!14553 lt!1781903 (_1!29517 lt!1781389)))))

(declare-fun lt!1781901 () List!51642)

(assert (=> d!1456628 (= lt!1781903 (ListMap!4270 lt!1781901))))

(declare-fun lt!1781902 () Unit!111769)

(declare-fun lt!1781900 () Unit!111769)

(assert (=> d!1456628 (= lt!1781902 lt!1781900)))

(assert (=> d!1456628 (= (getValueByKey!1442 lt!1781901 (_1!29517 lt!1781389)) (Some!11575 (_2!29517 lt!1781389)))))

(assert (=> d!1456628 (= lt!1781900 (lemmaContainsTupThenGetReturnValue!844 lt!1781901 (_1!29517 lt!1781389) (_2!29517 lt!1781389)))))

(assert (=> d!1456628 (= lt!1781901 (insertNoDuplicatedKeys!352 (toList!4965 (addToMapMapFromBucket!961 lt!1781387 (ListMap!4270 Nil!51518))) (_1!29517 lt!1781389) (_2!29517 lt!1781389)))))

(assert (=> d!1456628 (= (+!1866 (addToMapMapFromBucket!961 lt!1781387 (ListMap!4270 Nil!51518)) lt!1781389) lt!1781903)))

(declare-fun b!4624478 () Bool)

(declare-fun res!1939059 () Bool)

(assert (=> b!4624478 (=> (not res!1939059) (not e!2884642))))

(assert (=> b!4624478 (= res!1939059 (= (getValueByKey!1442 (toList!4965 lt!1781903) (_1!29517 lt!1781389)) (Some!11575 (_2!29517 lt!1781389))))))

(declare-fun b!4624479 () Bool)

(assert (=> b!4624479 (= e!2884642 (contains!14556 (toList!4965 lt!1781903) lt!1781389))))

(assert (= (and d!1456628 res!1939058) b!4624478))

(assert (= (and b!4624478 res!1939059) b!4624479))

(declare-fun m!5464881 () Bool)

(assert (=> d!1456628 m!5464881))

(declare-fun m!5464883 () Bool)

(assert (=> d!1456628 m!5464883))

(declare-fun m!5464885 () Bool)

(assert (=> d!1456628 m!5464885))

(declare-fun m!5464887 () Bool)

(assert (=> d!1456628 m!5464887))

(declare-fun m!5464889 () Bool)

(assert (=> b!4624478 m!5464889))

(declare-fun m!5464891 () Bool)

(assert (=> b!4624479 m!5464891))

(assert (=> b!4624090 d!1456628))

(declare-fun d!1456630 () Bool)

(assert (=> d!1456630 (= (eq!815 lt!1781375 (+!1866 (extractMap!1556 (Cons!51519 (tuple2!52449 hash!414 lt!1781387) Nil!51519)) (h!57564 oldBucket!40))) (= (content!8785 (toList!4965 lt!1781375)) (content!8785 (toList!4965 (+!1866 (extractMap!1556 (Cons!51519 (tuple2!52449 hash!414 lt!1781387) Nil!51519)) (h!57564 oldBucket!40))))))))

(declare-fun bs!1022621 () Bool)

(assert (= bs!1022621 d!1456630))

(declare-fun m!5464893 () Bool)

(assert (=> bs!1022621 m!5464893))

(declare-fun m!5464895 () Bool)

(assert (=> bs!1022621 m!5464895))

(assert (=> b!4624090 d!1456630))

(declare-fun bm!322540 () Bool)

(declare-fun call!322545 () Bool)

(declare-fun e!2884644 () List!51645)

(assert (=> bm!322540 (= call!322545 (contains!14555 e!2884644 key!4968))))

(declare-fun c!791605 () Bool)

(declare-fun c!791606 () Bool)

(assert (=> bm!322540 (= c!791605 c!791606)))

(declare-fun b!4624480 () Bool)

(declare-fun e!2884647 () Bool)

(declare-fun e!2884648 () Bool)

(assert (=> b!4624480 (= e!2884647 e!2884648)))

(declare-fun res!1939061 () Bool)

(assert (=> b!4624480 (=> (not res!1939061) (not e!2884648))))

(assert (=> b!4624480 (= res!1939061 (isDefined!8840 (getValueByKey!1442 (toList!4965 lt!1781382) key!4968)))))

(declare-fun b!4624481 () Bool)

(declare-fun e!2884645 () Unit!111769)

(declare-fun lt!1781910 () Unit!111769)

(assert (=> b!4624481 (= e!2884645 lt!1781910)))

(declare-fun lt!1781904 () Unit!111769)

(assert (=> b!4624481 (= lt!1781904 (lemmaContainsKeyImpliesGetValueByKeyDefined!1343 (toList!4965 lt!1781382) key!4968))))

(assert (=> b!4624481 (isDefined!8840 (getValueByKey!1442 (toList!4965 lt!1781382) key!4968))))

(declare-fun lt!1781906 () Unit!111769)

(assert (=> b!4624481 (= lt!1781906 lt!1781904)))

(assert (=> b!4624481 (= lt!1781910 (lemmaInListThenGetKeysListContains!645 (toList!4965 lt!1781382) key!4968))))

(assert (=> b!4624481 call!322545))

(declare-fun b!4624482 () Bool)

(declare-fun e!2884646 () Unit!111769)

(assert (=> b!4624482 (= e!2884645 e!2884646)))

(declare-fun c!791607 () Bool)

(assert (=> b!4624482 (= c!791607 call!322545)))

(declare-fun b!4624483 () Bool)

(assert (=> b!4624483 false))

(declare-fun lt!1781905 () Unit!111769)

(declare-fun lt!1781911 () Unit!111769)

(assert (=> b!4624483 (= lt!1781905 lt!1781911)))

(assert (=> b!4624483 (containsKey!2433 (toList!4965 lt!1781382) key!4968)))

(assert (=> b!4624483 (= lt!1781911 (lemmaInGetKeysListThenContainsKey!649 (toList!4965 lt!1781382) key!4968))))

(declare-fun Unit!111867 () Unit!111769)

(assert (=> b!4624483 (= e!2884646 Unit!111867)))

(declare-fun b!4624484 () Bool)

(assert (=> b!4624484 (= e!2884644 (getKeysList!650 (toList!4965 lt!1781382)))))

(declare-fun b!4624485 () Bool)

(assert (=> b!4624485 (= e!2884644 (keys!18144 lt!1781382))))

(declare-fun d!1456632 () Bool)

(assert (=> d!1456632 e!2884647))

(declare-fun res!1939060 () Bool)

(assert (=> d!1456632 (=> res!1939060 e!2884647)))

(declare-fun e!2884643 () Bool)

(assert (=> d!1456632 (= res!1939060 e!2884643)))

(declare-fun res!1939062 () Bool)

(assert (=> d!1456632 (=> (not res!1939062) (not e!2884643))))

(declare-fun lt!1781907 () Bool)

(assert (=> d!1456632 (= res!1939062 (not lt!1781907))))

(declare-fun lt!1781909 () Bool)

(assert (=> d!1456632 (= lt!1781907 lt!1781909)))

(declare-fun lt!1781908 () Unit!111769)

(assert (=> d!1456632 (= lt!1781908 e!2884645)))

(assert (=> d!1456632 (= c!791606 lt!1781909)))

(assert (=> d!1456632 (= lt!1781909 (containsKey!2433 (toList!4965 lt!1781382) key!4968))))

(assert (=> d!1456632 (= (contains!14553 lt!1781382 key!4968) lt!1781907)))

(declare-fun b!4624486 () Bool)

(assert (=> b!4624486 (= e!2884643 (not (contains!14555 (keys!18144 lt!1781382) key!4968)))))

(declare-fun b!4624487 () Bool)

(assert (=> b!4624487 (= e!2884648 (contains!14555 (keys!18144 lt!1781382) key!4968))))

(declare-fun b!4624488 () Bool)

(declare-fun Unit!111868 () Unit!111769)

(assert (=> b!4624488 (= e!2884646 Unit!111868)))

(assert (= (and d!1456632 c!791606) b!4624481))

(assert (= (and d!1456632 (not c!791606)) b!4624482))

(assert (= (and b!4624482 c!791607) b!4624483))

(assert (= (and b!4624482 (not c!791607)) b!4624488))

(assert (= (or b!4624481 b!4624482) bm!322540))

(assert (= (and bm!322540 c!791605) b!4624484))

(assert (= (and bm!322540 (not c!791605)) b!4624485))

(assert (= (and d!1456632 res!1939062) b!4624486))

(assert (= (and d!1456632 (not res!1939060)) b!4624480))

(assert (= (and b!4624480 res!1939061) b!4624487))

(declare-fun m!5464897 () Bool)

(assert (=> b!4624480 m!5464897))

(assert (=> b!4624480 m!5464897))

(declare-fun m!5464899 () Bool)

(assert (=> b!4624480 m!5464899))

(declare-fun m!5464901 () Bool)

(assert (=> b!4624481 m!5464901))

(assert (=> b!4624481 m!5464897))

(assert (=> b!4624481 m!5464897))

(assert (=> b!4624481 m!5464899))

(declare-fun m!5464903 () Bool)

(assert (=> b!4624481 m!5464903))

(declare-fun m!5464905 () Bool)

(assert (=> d!1456632 m!5464905))

(declare-fun m!5464907 () Bool)

(assert (=> b!4624484 m!5464907))

(assert (=> b!4624483 m!5464905))

(declare-fun m!5464909 () Bool)

(assert (=> b!4624483 m!5464909))

(declare-fun m!5464911 () Bool)

(assert (=> bm!322540 m!5464911))

(assert (=> b!4624485 m!5464637))

(assert (=> b!4624486 m!5464637))

(assert (=> b!4624486 m!5464637))

(declare-fun m!5464913 () Bool)

(assert (=> b!4624486 m!5464913))

(assert (=> b!4624487 m!5464637))

(assert (=> b!4624487 m!5464637))

(assert (=> b!4624487 m!5464913))

(assert (=> b!4624090 d!1456632))

(declare-fun bs!1022622 () Bool)

(declare-fun b!4624490 () Bool)

(assert (= bs!1022622 (and b!4624490 d!1456626)))

(declare-fun lambda!191802 () Int)

(assert (=> bs!1022622 (= (= (ListMap!4270 Nil!51518) lt!1781896) (= lambda!191802 lambda!191801))))

(declare-fun bs!1022623 () Bool)

(assert (= bs!1022623 (and b!4624490 b!4624364)))

(assert (=> bs!1022623 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191802 lambda!191767))))

(declare-fun bs!1022624 () Bool)

(assert (= bs!1022624 (and b!4624490 b!4624361)))

(assert (=> bs!1022624 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191802 lambda!191766))))

(declare-fun bs!1022625 () Bool)

(assert (= bs!1022625 (and b!4624490 d!1456488)))

(assert (=> bs!1022625 (not (= lambda!191802 lambda!191714))))

(declare-fun bs!1022626 () Bool)

(assert (= bs!1022626 (and b!4624490 d!1456616)))

(assert (=> bs!1022626 (= (= (ListMap!4270 Nil!51518) lt!1781868) (= lambda!191802 lambda!191797))))

(assert (=> bs!1022623 (= (= (ListMap!4270 Nil!51518) lt!1781738) (= lambda!191802 lambda!191768))))

(declare-fun bs!1022627 () Bool)

(assert (= bs!1022627 (and b!4624490 b!4624467)))

(assert (=> bs!1022627 (= lambda!191802 lambda!191794)))

(declare-fun bs!1022628 () Bool)

(assert (= bs!1022628 (and b!4624490 d!1456504)))

(assert (=> bs!1022628 (= (= (ListMap!4270 Nil!51518) lt!1781748) (= lambda!191802 lambda!191770))))

(declare-fun bs!1022629 () Bool)

(assert (= bs!1022629 (and b!4624490 b!4624477)))

(assert (=> bs!1022629 (= (= (ListMap!4270 Nil!51518) lt!1781886) (= lambda!191802 lambda!191800))))

(assert (=> bs!1022629 (= lambda!191802 lambda!191799)))

(declare-fun bs!1022630 () Bool)

(assert (= bs!1022630 (and b!4624490 b!4624470)))

(assert (=> bs!1022630 (= lambda!191802 lambda!191795)))

(declare-fun bs!1022631 () Bool)

(assert (= bs!1022631 (and b!4624490 d!1456498)))

(assert (=> bs!1022631 (not (= lambda!191802 lambda!191715))))

(assert (=> bs!1022630 (= (= (ListMap!4270 Nil!51518) lt!1781858) (= lambda!191802 lambda!191796))))

(declare-fun bs!1022632 () Bool)

(assert (= bs!1022632 (and b!4624490 b!4624474)))

(assert (=> bs!1022632 (= lambda!191802 lambda!191798)))

(assert (=> b!4624490 true))

(declare-fun bs!1022633 () Bool)

(declare-fun b!4624493 () Bool)

(assert (= bs!1022633 (and b!4624493 d!1456626)))

(declare-fun lambda!191803 () Int)

(assert (=> bs!1022633 (= (= (ListMap!4270 Nil!51518) lt!1781896) (= lambda!191803 lambda!191801))))

(declare-fun bs!1022634 () Bool)

(assert (= bs!1022634 (and b!4624493 b!4624364)))

(assert (=> bs!1022634 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191803 lambda!191767))))

(declare-fun bs!1022635 () Bool)

(assert (= bs!1022635 (and b!4624493 d!1456488)))

(assert (=> bs!1022635 (not (= lambda!191803 lambda!191714))))

(declare-fun bs!1022636 () Bool)

(assert (= bs!1022636 (and b!4624493 d!1456616)))

(assert (=> bs!1022636 (= (= (ListMap!4270 Nil!51518) lt!1781868) (= lambda!191803 lambda!191797))))

(assert (=> bs!1022634 (= (= (ListMap!4270 Nil!51518) lt!1781738) (= lambda!191803 lambda!191768))))

(declare-fun bs!1022637 () Bool)

(assert (= bs!1022637 (and b!4624493 b!4624467)))

(assert (=> bs!1022637 (= lambda!191803 lambda!191794)))

(declare-fun bs!1022638 () Bool)

(assert (= bs!1022638 (and b!4624493 d!1456504)))

(assert (=> bs!1022638 (= (= (ListMap!4270 Nil!51518) lt!1781748) (= lambda!191803 lambda!191770))))

(declare-fun bs!1022639 () Bool)

(assert (= bs!1022639 (and b!4624493 b!4624477)))

(assert (=> bs!1022639 (= (= (ListMap!4270 Nil!51518) lt!1781886) (= lambda!191803 lambda!191800))))

(assert (=> bs!1022639 (= lambda!191803 lambda!191799)))

(declare-fun bs!1022640 () Bool)

(assert (= bs!1022640 (and b!4624493 b!4624470)))

(assert (=> bs!1022640 (= lambda!191803 lambda!191795)))

(declare-fun bs!1022641 () Bool)

(assert (= bs!1022641 (and b!4624493 d!1456498)))

(assert (=> bs!1022641 (not (= lambda!191803 lambda!191715))))

(declare-fun bs!1022642 () Bool)

(assert (= bs!1022642 (and b!4624493 b!4624490)))

(assert (=> bs!1022642 (= lambda!191803 lambda!191802)))

(declare-fun bs!1022643 () Bool)

(assert (= bs!1022643 (and b!4624493 b!4624361)))

(assert (=> bs!1022643 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191803 lambda!191766))))

(assert (=> bs!1022640 (= (= (ListMap!4270 Nil!51518) lt!1781858) (= lambda!191803 lambda!191796))))

(declare-fun bs!1022644 () Bool)

(assert (= bs!1022644 (and b!4624493 b!4624474)))

(assert (=> bs!1022644 (= lambda!191803 lambda!191798)))

(assert (=> b!4624493 true))

(declare-fun lambda!191804 () Int)

(declare-fun lt!1781919 () ListMap!4269)

(assert (=> bs!1022633 (= (= lt!1781919 lt!1781896) (= lambda!191804 lambda!191801))))

(assert (=> bs!1022634 (= (= lt!1781919 lt!1781370) (= lambda!191804 lambda!191767))))

(assert (=> bs!1022635 (not (= lambda!191804 lambda!191714))))

(assert (=> b!4624493 (= (= lt!1781919 (ListMap!4270 Nil!51518)) (= lambda!191804 lambda!191803))))

(assert (=> bs!1022636 (= (= lt!1781919 lt!1781868) (= lambda!191804 lambda!191797))))

(assert (=> bs!1022634 (= (= lt!1781919 lt!1781738) (= lambda!191804 lambda!191768))))

(assert (=> bs!1022637 (= (= lt!1781919 (ListMap!4270 Nil!51518)) (= lambda!191804 lambda!191794))))

(assert (=> bs!1022638 (= (= lt!1781919 lt!1781748) (= lambda!191804 lambda!191770))))

(assert (=> bs!1022639 (= (= lt!1781919 lt!1781886) (= lambda!191804 lambda!191800))))

(assert (=> bs!1022639 (= (= lt!1781919 (ListMap!4270 Nil!51518)) (= lambda!191804 lambda!191799))))

(assert (=> bs!1022640 (= (= lt!1781919 (ListMap!4270 Nil!51518)) (= lambda!191804 lambda!191795))))

(assert (=> bs!1022641 (not (= lambda!191804 lambda!191715))))

(assert (=> bs!1022642 (= (= lt!1781919 (ListMap!4270 Nil!51518)) (= lambda!191804 lambda!191802))))

(assert (=> bs!1022643 (= (= lt!1781919 lt!1781370) (= lambda!191804 lambda!191766))))

(assert (=> bs!1022640 (= (= lt!1781919 lt!1781858) (= lambda!191804 lambda!191796))))

(assert (=> bs!1022644 (= (= lt!1781919 (ListMap!4270 Nil!51518)) (= lambda!191804 lambda!191798))))

(assert (=> b!4624493 true))

(declare-fun bs!1022645 () Bool)

(declare-fun d!1456634 () Bool)

(assert (= bs!1022645 (and d!1456634 d!1456626)))

(declare-fun lambda!191805 () Int)

(declare-fun lt!1781929 () ListMap!4269)

(assert (=> bs!1022645 (= (= lt!1781929 lt!1781896) (= lambda!191805 lambda!191801))))

(declare-fun bs!1022646 () Bool)

(assert (= bs!1022646 (and d!1456634 b!4624364)))

(assert (=> bs!1022646 (= (= lt!1781929 lt!1781370) (= lambda!191805 lambda!191767))))

(declare-fun bs!1022647 () Bool)

(assert (= bs!1022647 (and d!1456634 d!1456488)))

(assert (=> bs!1022647 (not (= lambda!191805 lambda!191714))))

(declare-fun bs!1022648 () Bool)

(assert (= bs!1022648 (and d!1456634 b!4624493)))

(assert (=> bs!1022648 (= (= lt!1781929 (ListMap!4270 Nil!51518)) (= lambda!191805 lambda!191803))))

(declare-fun bs!1022649 () Bool)

(assert (= bs!1022649 (and d!1456634 d!1456616)))

(assert (=> bs!1022649 (= (= lt!1781929 lt!1781868) (= lambda!191805 lambda!191797))))

(assert (=> bs!1022648 (= (= lt!1781929 lt!1781919) (= lambda!191805 lambda!191804))))

(assert (=> bs!1022646 (= (= lt!1781929 lt!1781738) (= lambda!191805 lambda!191768))))

(declare-fun bs!1022650 () Bool)

(assert (= bs!1022650 (and d!1456634 b!4624467)))

(assert (=> bs!1022650 (= (= lt!1781929 (ListMap!4270 Nil!51518)) (= lambda!191805 lambda!191794))))

(declare-fun bs!1022651 () Bool)

(assert (= bs!1022651 (and d!1456634 d!1456504)))

(assert (=> bs!1022651 (= (= lt!1781929 lt!1781748) (= lambda!191805 lambda!191770))))

(declare-fun bs!1022652 () Bool)

(assert (= bs!1022652 (and d!1456634 b!4624477)))

(assert (=> bs!1022652 (= (= lt!1781929 lt!1781886) (= lambda!191805 lambda!191800))))

(assert (=> bs!1022652 (= (= lt!1781929 (ListMap!4270 Nil!51518)) (= lambda!191805 lambda!191799))))

(declare-fun bs!1022653 () Bool)

(assert (= bs!1022653 (and d!1456634 b!4624470)))

(assert (=> bs!1022653 (= (= lt!1781929 (ListMap!4270 Nil!51518)) (= lambda!191805 lambda!191795))))

(declare-fun bs!1022654 () Bool)

(assert (= bs!1022654 (and d!1456634 d!1456498)))

(assert (=> bs!1022654 (not (= lambda!191805 lambda!191715))))

(declare-fun bs!1022655 () Bool)

(assert (= bs!1022655 (and d!1456634 b!4624490)))

(assert (=> bs!1022655 (= (= lt!1781929 (ListMap!4270 Nil!51518)) (= lambda!191805 lambda!191802))))

(declare-fun bs!1022656 () Bool)

(assert (= bs!1022656 (and d!1456634 b!4624361)))

(assert (=> bs!1022656 (= (= lt!1781929 lt!1781370) (= lambda!191805 lambda!191766))))

(assert (=> bs!1022653 (= (= lt!1781929 lt!1781858) (= lambda!191805 lambda!191796))))

(declare-fun bs!1022657 () Bool)

(assert (= bs!1022657 (and d!1456634 b!4624474)))

(assert (=> bs!1022657 (= (= lt!1781929 (ListMap!4270 Nil!51518)) (= lambda!191805 lambda!191798))))

(assert (=> d!1456634 true))

(declare-fun b!4624489 () Bool)

(declare-fun e!2884650 () Bool)

(assert (=> b!4624489 (= e!2884650 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191804))))

(declare-fun e!2884649 () ListMap!4269)

(assert (=> b!4624490 (= e!2884649 (ListMap!4270 Nil!51518))))

(declare-fun lt!1781926 () Unit!111769)

(declare-fun call!322546 () Unit!111769)

(assert (=> b!4624490 (= lt!1781926 call!322546)))

(declare-fun call!322548 () Bool)

(assert (=> b!4624490 call!322548))

(declare-fun lt!1781921 () Unit!111769)

(assert (=> b!4624490 (= lt!1781921 lt!1781926)))

(declare-fun call!322547 () Bool)

(assert (=> b!4624490 call!322547))

(declare-fun lt!1781918 () Unit!111769)

(declare-fun Unit!111869 () Unit!111769)

(assert (=> b!4624490 (= lt!1781918 Unit!111869)))

(declare-fun c!791608 () Bool)

(declare-fun lt!1781927 () ListMap!4269)

(declare-fun bm!322541 () Bool)

(assert (=> bm!322541 (= call!322547 (forall!10816 (ite c!791608 (toList!4965 (ListMap!4270 Nil!51518)) (toList!4965 lt!1781927)) (ite c!791608 lambda!191802 lambda!191804)))))

(declare-fun b!4624491 () Bool)

(declare-fun res!1939063 () Bool)

(declare-fun e!2884651 () Bool)

(assert (=> b!4624491 (=> (not res!1939063) (not e!2884651))))

(assert (=> b!4624491 (= res!1939063 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191805))))

(declare-fun bm!322542 () Bool)

(assert (=> bm!322542 (= call!322546 (lemmaContainsAllItsOwnKeys!502 (ListMap!4270 Nil!51518)))))

(declare-fun b!4624492 () Bool)

(assert (=> b!4624492 (= e!2884651 (invariantList!1200 (toList!4965 lt!1781929)))))

(declare-fun bm!322543 () Bool)

(assert (=> bm!322543 (= call!322548 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) (ite c!791608 lambda!191802 lambda!191803)))))

(assert (=> d!1456634 e!2884651))

(declare-fun res!1939065 () Bool)

(assert (=> d!1456634 (=> (not res!1939065) (not e!2884651))))

(assert (=> d!1456634 (= res!1939065 (forall!10816 lt!1781372 lambda!191805))))

(assert (=> d!1456634 (= lt!1781929 e!2884649)))

(assert (=> d!1456634 (= c!791608 ((_ is Nil!51518) lt!1781372))))

(assert (=> d!1456634 (noDuplicateKeys!1500 lt!1781372)))

(assert (=> d!1456634 (= (addToMapMapFromBucket!961 lt!1781372 (ListMap!4270 Nil!51518)) lt!1781929)))

(assert (=> b!4624493 (= e!2884649 lt!1781919)))

(assert (=> b!4624493 (= lt!1781927 (+!1866 (ListMap!4270 Nil!51518) (h!57564 lt!1781372)))))

(assert (=> b!4624493 (= lt!1781919 (addToMapMapFromBucket!961 (t!358670 lt!1781372) (+!1866 (ListMap!4270 Nil!51518) (h!57564 lt!1781372))))))

(declare-fun lt!1781930 () Unit!111769)

(assert (=> b!4624493 (= lt!1781930 call!322546)))

(assert (=> b!4624493 call!322548))

(declare-fun lt!1781912 () Unit!111769)

(assert (=> b!4624493 (= lt!1781912 lt!1781930)))

(assert (=> b!4624493 (forall!10816 (toList!4965 lt!1781927) lambda!191804)))

(declare-fun lt!1781914 () Unit!111769)

(declare-fun Unit!111870 () Unit!111769)

(assert (=> b!4624493 (= lt!1781914 Unit!111870)))

(assert (=> b!4624493 (forall!10816 (t!358670 lt!1781372) lambda!191804)))

(declare-fun lt!1781916 () Unit!111769)

(declare-fun Unit!111871 () Unit!111769)

(assert (=> b!4624493 (= lt!1781916 Unit!111871)))

(declare-fun lt!1781931 () Unit!111769)

(declare-fun Unit!111872 () Unit!111769)

(assert (=> b!4624493 (= lt!1781931 Unit!111872)))

(declare-fun lt!1781928 () Unit!111769)

(assert (=> b!4624493 (= lt!1781928 (forallContained!3042 (toList!4965 lt!1781927) lambda!191804 (h!57564 lt!1781372)))))

(assert (=> b!4624493 (contains!14553 lt!1781927 (_1!29517 (h!57564 lt!1781372)))))

(declare-fun lt!1781932 () Unit!111769)

(declare-fun Unit!111873 () Unit!111769)

(assert (=> b!4624493 (= lt!1781932 Unit!111873)))

(assert (=> b!4624493 (contains!14553 lt!1781919 (_1!29517 (h!57564 lt!1781372)))))

(declare-fun lt!1781923 () Unit!111769)

(declare-fun Unit!111874 () Unit!111769)

(assert (=> b!4624493 (= lt!1781923 Unit!111874)))

(assert (=> b!4624493 (forall!10816 lt!1781372 lambda!191804)))

(declare-fun lt!1781922 () Unit!111769)

(declare-fun Unit!111875 () Unit!111769)

(assert (=> b!4624493 (= lt!1781922 Unit!111875)))

(assert (=> b!4624493 call!322547))

(declare-fun lt!1781915 () Unit!111769)

(declare-fun Unit!111876 () Unit!111769)

(assert (=> b!4624493 (= lt!1781915 Unit!111876)))

(declare-fun lt!1781920 () Unit!111769)

(declare-fun Unit!111877 () Unit!111769)

(assert (=> b!4624493 (= lt!1781920 Unit!111877)))

(declare-fun lt!1781924 () Unit!111769)

(assert (=> b!4624493 (= lt!1781924 (addForallContainsKeyThenBeforeAdding!501 (ListMap!4270 Nil!51518) lt!1781919 (_1!29517 (h!57564 lt!1781372)) (_2!29517 (h!57564 lt!1781372))))))

(assert (=> b!4624493 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191804)))

(declare-fun lt!1781925 () Unit!111769)

(assert (=> b!4624493 (= lt!1781925 lt!1781924)))

(assert (=> b!4624493 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191804)))

(declare-fun lt!1781917 () Unit!111769)

(declare-fun Unit!111878 () Unit!111769)

(assert (=> b!4624493 (= lt!1781917 Unit!111878)))

(declare-fun res!1939064 () Bool)

(assert (=> b!4624493 (= res!1939064 (forall!10816 lt!1781372 lambda!191804))))

(assert (=> b!4624493 (=> (not res!1939064) (not e!2884650))))

(assert (=> b!4624493 e!2884650))

(declare-fun lt!1781913 () Unit!111769)

(declare-fun Unit!111879 () Unit!111769)

(assert (=> b!4624493 (= lt!1781913 Unit!111879)))

(assert (= (and d!1456634 c!791608) b!4624490))

(assert (= (and d!1456634 (not c!791608)) b!4624493))

(assert (= (and b!4624493 res!1939064) b!4624489))

(assert (= (or b!4624490 b!4624493) bm!322542))

(assert (= (or b!4624490 b!4624493) bm!322543))

(assert (= (or b!4624490 b!4624493) bm!322541))

(assert (= (and d!1456634 res!1939065) b!4624491))

(assert (= (and b!4624491 res!1939063) b!4624492))

(assert (=> bm!322542 m!5464799))

(declare-fun m!5464915 () Bool)

(assert (=> b!4624491 m!5464915))

(declare-fun m!5464917 () Bool)

(assert (=> d!1456634 m!5464917))

(declare-fun m!5464919 () Bool)

(assert (=> d!1456634 m!5464919))

(declare-fun m!5464921 () Bool)

(assert (=> bm!322543 m!5464921))

(declare-fun m!5464923 () Bool)

(assert (=> b!4624492 m!5464923))

(declare-fun m!5464925 () Bool)

(assert (=> bm!322541 m!5464925))

(declare-fun m!5464927 () Bool)

(assert (=> b!4624489 m!5464927))

(assert (=> b!4624493 m!5464927))

(declare-fun m!5464929 () Bool)

(assert (=> b!4624493 m!5464929))

(declare-fun m!5464931 () Bool)

(assert (=> b!4624493 m!5464931))

(declare-fun m!5464933 () Bool)

(assert (=> b!4624493 m!5464933))

(declare-fun m!5464935 () Bool)

(assert (=> b!4624493 m!5464935))

(declare-fun m!5464937 () Bool)

(assert (=> b!4624493 m!5464937))

(assert (=> b!4624493 m!5464929))

(assert (=> b!4624493 m!5464937))

(declare-fun m!5464939 () Bool)

(assert (=> b!4624493 m!5464939))

(declare-fun m!5464941 () Bool)

(assert (=> b!4624493 m!5464941))

(declare-fun m!5464943 () Bool)

(assert (=> b!4624493 m!5464943))

(declare-fun m!5464945 () Bool)

(assert (=> b!4624493 m!5464945))

(assert (=> b!4624493 m!5464927))

(assert (=> b!4624090 d!1456634))

(declare-fun d!1456636 () Bool)

(declare-fun e!2884652 () Bool)

(assert (=> d!1456636 e!2884652))

(declare-fun res!1939066 () Bool)

(assert (=> d!1456636 (=> (not res!1939066) (not e!2884652))))

(declare-fun lt!1781936 () ListMap!4269)

(assert (=> d!1456636 (= res!1939066 (contains!14553 lt!1781936 (_1!29517 lt!1781392)))))

(declare-fun lt!1781934 () List!51642)

(assert (=> d!1456636 (= lt!1781936 (ListMap!4270 lt!1781934))))

(declare-fun lt!1781935 () Unit!111769)

(declare-fun lt!1781933 () Unit!111769)

(assert (=> d!1456636 (= lt!1781935 lt!1781933)))

(assert (=> d!1456636 (= (getValueByKey!1442 lt!1781934 (_1!29517 lt!1781392)) (Some!11575 (_2!29517 lt!1781392)))))

(assert (=> d!1456636 (= lt!1781933 (lemmaContainsTupThenGetReturnValue!844 lt!1781934 (_1!29517 lt!1781392) (_2!29517 lt!1781392)))))

(assert (=> d!1456636 (= lt!1781934 (insertNoDuplicatedKeys!352 (toList!4965 (addToMapMapFromBucket!961 lt!1781372 (ListMap!4270 Nil!51518))) (_1!29517 lt!1781392) (_2!29517 lt!1781392)))))

(assert (=> d!1456636 (= (+!1866 (addToMapMapFromBucket!961 lt!1781372 (ListMap!4270 Nil!51518)) lt!1781392) lt!1781936)))

(declare-fun b!4624494 () Bool)

(declare-fun res!1939067 () Bool)

(assert (=> b!4624494 (=> (not res!1939067) (not e!2884652))))

(assert (=> b!4624494 (= res!1939067 (= (getValueByKey!1442 (toList!4965 lt!1781936) (_1!29517 lt!1781392)) (Some!11575 (_2!29517 lt!1781392))))))

(declare-fun b!4624495 () Bool)

(assert (=> b!4624495 (= e!2884652 (contains!14556 (toList!4965 lt!1781936) lt!1781392))))

(assert (= (and d!1456636 res!1939066) b!4624494))

(assert (= (and b!4624494 res!1939067) b!4624495))

(declare-fun m!5464947 () Bool)

(assert (=> d!1456636 m!5464947))

(declare-fun m!5464949 () Bool)

(assert (=> d!1456636 m!5464949))

(declare-fun m!5464951 () Bool)

(assert (=> d!1456636 m!5464951))

(declare-fun m!5464953 () Bool)

(assert (=> d!1456636 m!5464953))

(declare-fun m!5464955 () Bool)

(assert (=> b!4624494 m!5464955))

(declare-fun m!5464957 () Bool)

(assert (=> b!4624495 m!5464957))

(assert (=> b!4624090 d!1456636))

(declare-fun d!1456638 () Bool)

(assert (=> d!1456638 (= (head!9634 newBucket!224) (h!57564 newBucket!224))))

(assert (=> b!4624090 d!1456638))

(declare-fun bs!1022658 () Bool)

(declare-fun b!4624497 () Bool)

(assert (= bs!1022658 (and b!4624497 d!1456626)))

(declare-fun lambda!191806 () Int)

(assert (=> bs!1022658 (= (= (ListMap!4270 Nil!51518) lt!1781896) (= lambda!191806 lambda!191801))))

(declare-fun bs!1022659 () Bool)

(assert (= bs!1022659 (and b!4624497 b!4624364)))

(assert (=> bs!1022659 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191806 lambda!191767))))

(declare-fun bs!1022660 () Bool)

(assert (= bs!1022660 (and b!4624497 d!1456488)))

(assert (=> bs!1022660 (not (= lambda!191806 lambda!191714))))

(declare-fun bs!1022661 () Bool)

(assert (= bs!1022661 (and b!4624497 b!4624493)))

(assert (=> bs!1022661 (= lambda!191806 lambda!191803)))

(declare-fun bs!1022662 () Bool)

(assert (= bs!1022662 (and b!4624497 d!1456616)))

(assert (=> bs!1022662 (= (= (ListMap!4270 Nil!51518) lt!1781868) (= lambda!191806 lambda!191797))))

(assert (=> bs!1022661 (= (= (ListMap!4270 Nil!51518) lt!1781919) (= lambda!191806 lambda!191804))))

(assert (=> bs!1022659 (= (= (ListMap!4270 Nil!51518) lt!1781738) (= lambda!191806 lambda!191768))))

(declare-fun bs!1022663 () Bool)

(assert (= bs!1022663 (and b!4624497 d!1456634)))

(assert (=> bs!1022663 (= (= (ListMap!4270 Nil!51518) lt!1781929) (= lambda!191806 lambda!191805))))

(declare-fun bs!1022664 () Bool)

(assert (= bs!1022664 (and b!4624497 b!4624467)))

(assert (=> bs!1022664 (= lambda!191806 lambda!191794)))

(declare-fun bs!1022665 () Bool)

(assert (= bs!1022665 (and b!4624497 d!1456504)))

(assert (=> bs!1022665 (= (= (ListMap!4270 Nil!51518) lt!1781748) (= lambda!191806 lambda!191770))))

(declare-fun bs!1022666 () Bool)

(assert (= bs!1022666 (and b!4624497 b!4624477)))

(assert (=> bs!1022666 (= (= (ListMap!4270 Nil!51518) lt!1781886) (= lambda!191806 lambda!191800))))

(assert (=> bs!1022666 (= lambda!191806 lambda!191799)))

(declare-fun bs!1022667 () Bool)

(assert (= bs!1022667 (and b!4624497 b!4624470)))

(assert (=> bs!1022667 (= lambda!191806 lambda!191795)))

(declare-fun bs!1022668 () Bool)

(assert (= bs!1022668 (and b!4624497 d!1456498)))

(assert (=> bs!1022668 (not (= lambda!191806 lambda!191715))))

(declare-fun bs!1022669 () Bool)

(assert (= bs!1022669 (and b!4624497 b!4624490)))

(assert (=> bs!1022669 (= lambda!191806 lambda!191802)))

(declare-fun bs!1022670 () Bool)

(assert (= bs!1022670 (and b!4624497 b!4624361)))

(assert (=> bs!1022670 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191806 lambda!191766))))

(assert (=> bs!1022667 (= (= (ListMap!4270 Nil!51518) lt!1781858) (= lambda!191806 lambda!191796))))

(declare-fun bs!1022671 () Bool)

(assert (= bs!1022671 (and b!4624497 b!4624474)))

(assert (=> bs!1022671 (= lambda!191806 lambda!191798)))

(assert (=> b!4624497 true))

(declare-fun bs!1022672 () Bool)

(declare-fun b!4624500 () Bool)

(assert (= bs!1022672 (and b!4624500 b!4624497)))

(declare-fun lambda!191807 () Int)

(assert (=> bs!1022672 (= lambda!191807 lambda!191806)))

(declare-fun bs!1022673 () Bool)

(assert (= bs!1022673 (and b!4624500 d!1456626)))

(assert (=> bs!1022673 (= (= (ListMap!4270 Nil!51518) lt!1781896) (= lambda!191807 lambda!191801))))

(declare-fun bs!1022674 () Bool)

(assert (= bs!1022674 (and b!4624500 b!4624364)))

(assert (=> bs!1022674 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191807 lambda!191767))))

(declare-fun bs!1022675 () Bool)

(assert (= bs!1022675 (and b!4624500 d!1456488)))

(assert (=> bs!1022675 (not (= lambda!191807 lambda!191714))))

(declare-fun bs!1022676 () Bool)

(assert (= bs!1022676 (and b!4624500 b!4624493)))

(assert (=> bs!1022676 (= lambda!191807 lambda!191803)))

(declare-fun bs!1022677 () Bool)

(assert (= bs!1022677 (and b!4624500 d!1456616)))

(assert (=> bs!1022677 (= (= (ListMap!4270 Nil!51518) lt!1781868) (= lambda!191807 lambda!191797))))

(assert (=> bs!1022676 (= (= (ListMap!4270 Nil!51518) lt!1781919) (= lambda!191807 lambda!191804))))

(assert (=> bs!1022674 (= (= (ListMap!4270 Nil!51518) lt!1781738) (= lambda!191807 lambda!191768))))

(declare-fun bs!1022678 () Bool)

(assert (= bs!1022678 (and b!4624500 d!1456634)))

(assert (=> bs!1022678 (= (= (ListMap!4270 Nil!51518) lt!1781929) (= lambda!191807 lambda!191805))))

(declare-fun bs!1022679 () Bool)

(assert (= bs!1022679 (and b!4624500 b!4624467)))

(assert (=> bs!1022679 (= lambda!191807 lambda!191794)))

(declare-fun bs!1022680 () Bool)

(assert (= bs!1022680 (and b!4624500 d!1456504)))

(assert (=> bs!1022680 (= (= (ListMap!4270 Nil!51518) lt!1781748) (= lambda!191807 lambda!191770))))

(declare-fun bs!1022681 () Bool)

(assert (= bs!1022681 (and b!4624500 b!4624477)))

(assert (=> bs!1022681 (= (= (ListMap!4270 Nil!51518) lt!1781886) (= lambda!191807 lambda!191800))))

(assert (=> bs!1022681 (= lambda!191807 lambda!191799)))

(declare-fun bs!1022682 () Bool)

(assert (= bs!1022682 (and b!4624500 b!4624470)))

(assert (=> bs!1022682 (= lambda!191807 lambda!191795)))

(declare-fun bs!1022683 () Bool)

(assert (= bs!1022683 (and b!4624500 d!1456498)))

(assert (=> bs!1022683 (not (= lambda!191807 lambda!191715))))

(declare-fun bs!1022684 () Bool)

(assert (= bs!1022684 (and b!4624500 b!4624490)))

(assert (=> bs!1022684 (= lambda!191807 lambda!191802)))

(declare-fun bs!1022685 () Bool)

(assert (= bs!1022685 (and b!4624500 b!4624361)))

(assert (=> bs!1022685 (= (= (ListMap!4270 Nil!51518) lt!1781370) (= lambda!191807 lambda!191766))))

(assert (=> bs!1022682 (= (= (ListMap!4270 Nil!51518) lt!1781858) (= lambda!191807 lambda!191796))))

(declare-fun bs!1022686 () Bool)

(assert (= bs!1022686 (and b!4624500 b!4624474)))

(assert (=> bs!1022686 (= lambda!191807 lambda!191798)))

(assert (=> b!4624500 true))

(declare-fun lt!1781944 () ListMap!4269)

(declare-fun lambda!191808 () Int)

(assert (=> bs!1022672 (= (= lt!1781944 (ListMap!4270 Nil!51518)) (= lambda!191808 lambda!191806))))

(assert (=> bs!1022673 (= (= lt!1781944 lt!1781896) (= lambda!191808 lambda!191801))))

(assert (=> bs!1022674 (= (= lt!1781944 lt!1781370) (= lambda!191808 lambda!191767))))

(assert (=> bs!1022675 (not (= lambda!191808 lambda!191714))))

(assert (=> b!4624500 (= (= lt!1781944 (ListMap!4270 Nil!51518)) (= lambda!191808 lambda!191807))))

(assert (=> bs!1022676 (= (= lt!1781944 (ListMap!4270 Nil!51518)) (= lambda!191808 lambda!191803))))

(assert (=> bs!1022677 (= (= lt!1781944 lt!1781868) (= lambda!191808 lambda!191797))))

(assert (=> bs!1022676 (= (= lt!1781944 lt!1781919) (= lambda!191808 lambda!191804))))

(assert (=> bs!1022674 (= (= lt!1781944 lt!1781738) (= lambda!191808 lambda!191768))))

(assert (=> bs!1022678 (= (= lt!1781944 lt!1781929) (= lambda!191808 lambda!191805))))

(assert (=> bs!1022679 (= (= lt!1781944 (ListMap!4270 Nil!51518)) (= lambda!191808 lambda!191794))))

(assert (=> bs!1022680 (= (= lt!1781944 lt!1781748) (= lambda!191808 lambda!191770))))

(assert (=> bs!1022681 (= (= lt!1781944 lt!1781886) (= lambda!191808 lambda!191800))))

(assert (=> bs!1022681 (= (= lt!1781944 (ListMap!4270 Nil!51518)) (= lambda!191808 lambda!191799))))

(assert (=> bs!1022682 (= (= lt!1781944 (ListMap!4270 Nil!51518)) (= lambda!191808 lambda!191795))))

(assert (=> bs!1022683 (not (= lambda!191808 lambda!191715))))

(assert (=> bs!1022684 (= (= lt!1781944 (ListMap!4270 Nil!51518)) (= lambda!191808 lambda!191802))))

(assert (=> bs!1022685 (= (= lt!1781944 lt!1781370) (= lambda!191808 lambda!191766))))

(assert (=> bs!1022682 (= (= lt!1781944 lt!1781858) (= lambda!191808 lambda!191796))))

(assert (=> bs!1022686 (= (= lt!1781944 (ListMap!4270 Nil!51518)) (= lambda!191808 lambda!191798))))

(assert (=> b!4624500 true))

(declare-fun bs!1022687 () Bool)

(declare-fun d!1456640 () Bool)

(assert (= bs!1022687 (and d!1456640 b!4624497)))

(declare-fun lt!1781954 () ListMap!4269)

(declare-fun lambda!191809 () Int)

(assert (=> bs!1022687 (= (= lt!1781954 (ListMap!4270 Nil!51518)) (= lambda!191809 lambda!191806))))

(declare-fun bs!1022688 () Bool)

(assert (= bs!1022688 (and d!1456640 d!1456626)))

(assert (=> bs!1022688 (= (= lt!1781954 lt!1781896) (= lambda!191809 lambda!191801))))

(declare-fun bs!1022689 () Bool)

(assert (= bs!1022689 (and d!1456640 b!4624364)))

(assert (=> bs!1022689 (= (= lt!1781954 lt!1781370) (= lambda!191809 lambda!191767))))

(declare-fun bs!1022690 () Bool)

(assert (= bs!1022690 (and d!1456640 d!1456488)))

(assert (=> bs!1022690 (not (= lambda!191809 lambda!191714))))

(declare-fun bs!1022691 () Bool)

(assert (= bs!1022691 (and d!1456640 b!4624500)))

(assert (=> bs!1022691 (= (= lt!1781954 (ListMap!4270 Nil!51518)) (= lambda!191809 lambda!191807))))

(declare-fun bs!1022692 () Bool)

(assert (= bs!1022692 (and d!1456640 b!4624493)))

(assert (=> bs!1022692 (= (= lt!1781954 (ListMap!4270 Nil!51518)) (= lambda!191809 lambda!191803))))

(declare-fun bs!1022693 () Bool)

(assert (= bs!1022693 (and d!1456640 d!1456616)))

(assert (=> bs!1022693 (= (= lt!1781954 lt!1781868) (= lambda!191809 lambda!191797))))

(assert (=> bs!1022692 (= (= lt!1781954 lt!1781919) (= lambda!191809 lambda!191804))))

(assert (=> bs!1022689 (= (= lt!1781954 lt!1781738) (= lambda!191809 lambda!191768))))

(declare-fun bs!1022694 () Bool)

(assert (= bs!1022694 (and d!1456640 d!1456634)))

(assert (=> bs!1022694 (= (= lt!1781954 lt!1781929) (= lambda!191809 lambda!191805))))

(declare-fun bs!1022695 () Bool)

(assert (= bs!1022695 (and d!1456640 d!1456504)))

(assert (=> bs!1022695 (= (= lt!1781954 lt!1781748) (= lambda!191809 lambda!191770))))

(declare-fun bs!1022696 () Bool)

(assert (= bs!1022696 (and d!1456640 b!4624477)))

(assert (=> bs!1022696 (= (= lt!1781954 lt!1781886) (= lambda!191809 lambda!191800))))

(assert (=> bs!1022696 (= (= lt!1781954 (ListMap!4270 Nil!51518)) (= lambda!191809 lambda!191799))))

(declare-fun bs!1022697 () Bool)

(assert (= bs!1022697 (and d!1456640 b!4624470)))

(assert (=> bs!1022697 (= (= lt!1781954 (ListMap!4270 Nil!51518)) (= lambda!191809 lambda!191795))))

(declare-fun bs!1022698 () Bool)

(assert (= bs!1022698 (and d!1456640 d!1456498)))

(assert (=> bs!1022698 (not (= lambda!191809 lambda!191715))))

(declare-fun bs!1022699 () Bool)

(assert (= bs!1022699 (and d!1456640 b!4624490)))

(assert (=> bs!1022699 (= (= lt!1781954 (ListMap!4270 Nil!51518)) (= lambda!191809 lambda!191802))))

(declare-fun bs!1022700 () Bool)

(assert (= bs!1022700 (and d!1456640 b!4624361)))

(assert (=> bs!1022700 (= (= lt!1781954 lt!1781370) (= lambda!191809 lambda!191766))))

(declare-fun bs!1022701 () Bool)

(assert (= bs!1022701 (and d!1456640 b!4624467)))

(assert (=> bs!1022701 (= (= lt!1781954 (ListMap!4270 Nil!51518)) (= lambda!191809 lambda!191794))))

(assert (=> bs!1022691 (= (= lt!1781954 lt!1781944) (= lambda!191809 lambda!191808))))

(assert (=> bs!1022697 (= (= lt!1781954 lt!1781858) (= lambda!191809 lambda!191796))))

(declare-fun bs!1022702 () Bool)

(assert (= bs!1022702 (and d!1456640 b!4624474)))

(assert (=> bs!1022702 (= (= lt!1781954 (ListMap!4270 Nil!51518)) (= lambda!191809 lambda!191798))))

(assert (=> d!1456640 true))

(declare-fun b!4624496 () Bool)

(declare-fun e!2884654 () Bool)

(assert (=> b!4624496 (= e!2884654 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191808))))

(declare-fun e!2884653 () ListMap!4269)

(assert (=> b!4624497 (= e!2884653 (ListMap!4270 Nil!51518))))

(declare-fun lt!1781951 () Unit!111769)

(declare-fun call!322549 () Unit!111769)

(assert (=> b!4624497 (= lt!1781951 call!322549)))

(declare-fun call!322551 () Bool)

(assert (=> b!4624497 call!322551))

(declare-fun lt!1781946 () Unit!111769)

(assert (=> b!4624497 (= lt!1781946 lt!1781951)))

(declare-fun call!322550 () Bool)

(assert (=> b!4624497 call!322550))

(declare-fun lt!1781943 () Unit!111769)

(declare-fun Unit!111880 () Unit!111769)

(assert (=> b!4624497 (= lt!1781943 Unit!111880)))

(declare-fun bm!322544 () Bool)

(declare-fun lt!1781952 () ListMap!4269)

(declare-fun c!791609 () Bool)

(assert (=> bm!322544 (= call!322550 (forall!10816 (ite c!791609 (toList!4965 (ListMap!4270 Nil!51518)) (toList!4965 lt!1781952)) (ite c!791609 lambda!191806 lambda!191808)))))

(declare-fun b!4624498 () Bool)

(declare-fun res!1939068 () Bool)

(declare-fun e!2884655 () Bool)

(assert (=> b!4624498 (=> (not res!1939068) (not e!2884655))))

(assert (=> b!4624498 (= res!1939068 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191809))))

(declare-fun bm!322545 () Bool)

(assert (=> bm!322545 (= call!322549 (lemmaContainsAllItsOwnKeys!502 (ListMap!4270 Nil!51518)))))

(declare-fun b!4624499 () Bool)

(assert (=> b!4624499 (= e!2884655 (invariantList!1200 (toList!4965 lt!1781954)))))

(declare-fun bm!322546 () Bool)

(assert (=> bm!322546 (= call!322551 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) (ite c!791609 lambda!191806 lambda!191807)))))

(assert (=> d!1456640 e!2884655))

(declare-fun res!1939070 () Bool)

(assert (=> d!1456640 (=> (not res!1939070) (not e!2884655))))

(assert (=> d!1456640 (= res!1939070 (forall!10816 (Cons!51518 lt!1781389 lt!1781387) lambda!191809))))

(assert (=> d!1456640 (= lt!1781954 e!2884653)))

(assert (=> d!1456640 (= c!791609 ((_ is Nil!51518) (Cons!51518 lt!1781389 lt!1781387)))))

(assert (=> d!1456640 (noDuplicateKeys!1500 (Cons!51518 lt!1781389 lt!1781387))))

(assert (=> d!1456640 (= (addToMapMapFromBucket!961 (Cons!51518 lt!1781389 lt!1781387) (ListMap!4270 Nil!51518)) lt!1781954)))

(assert (=> b!4624500 (= e!2884653 lt!1781944)))

(assert (=> b!4624500 (= lt!1781952 (+!1866 (ListMap!4270 Nil!51518) (h!57564 (Cons!51518 lt!1781389 lt!1781387))))))

(assert (=> b!4624500 (= lt!1781944 (addToMapMapFromBucket!961 (t!358670 (Cons!51518 lt!1781389 lt!1781387)) (+!1866 (ListMap!4270 Nil!51518) (h!57564 (Cons!51518 lt!1781389 lt!1781387)))))))

(declare-fun lt!1781955 () Unit!111769)

(assert (=> b!4624500 (= lt!1781955 call!322549)))

(assert (=> b!4624500 call!322551))

(declare-fun lt!1781937 () Unit!111769)

(assert (=> b!4624500 (= lt!1781937 lt!1781955)))

(assert (=> b!4624500 (forall!10816 (toList!4965 lt!1781952) lambda!191808)))

(declare-fun lt!1781939 () Unit!111769)

(declare-fun Unit!111881 () Unit!111769)

(assert (=> b!4624500 (= lt!1781939 Unit!111881)))

(assert (=> b!4624500 (forall!10816 (t!358670 (Cons!51518 lt!1781389 lt!1781387)) lambda!191808)))

(declare-fun lt!1781941 () Unit!111769)

(declare-fun Unit!111882 () Unit!111769)

(assert (=> b!4624500 (= lt!1781941 Unit!111882)))

(declare-fun lt!1781956 () Unit!111769)

(declare-fun Unit!111883 () Unit!111769)

(assert (=> b!4624500 (= lt!1781956 Unit!111883)))

(declare-fun lt!1781953 () Unit!111769)

(assert (=> b!4624500 (= lt!1781953 (forallContained!3042 (toList!4965 lt!1781952) lambda!191808 (h!57564 (Cons!51518 lt!1781389 lt!1781387))))))

(assert (=> b!4624500 (contains!14553 lt!1781952 (_1!29517 (h!57564 (Cons!51518 lt!1781389 lt!1781387))))))

(declare-fun lt!1781957 () Unit!111769)

(declare-fun Unit!111884 () Unit!111769)

(assert (=> b!4624500 (= lt!1781957 Unit!111884)))

(assert (=> b!4624500 (contains!14553 lt!1781944 (_1!29517 (h!57564 (Cons!51518 lt!1781389 lt!1781387))))))

(declare-fun lt!1781948 () Unit!111769)

(declare-fun Unit!111885 () Unit!111769)

(assert (=> b!4624500 (= lt!1781948 Unit!111885)))

(assert (=> b!4624500 (forall!10816 (Cons!51518 lt!1781389 lt!1781387) lambda!191808)))

(declare-fun lt!1781947 () Unit!111769)

(declare-fun Unit!111886 () Unit!111769)

(assert (=> b!4624500 (= lt!1781947 Unit!111886)))

(assert (=> b!4624500 call!322550))

(declare-fun lt!1781940 () Unit!111769)

(declare-fun Unit!111887 () Unit!111769)

(assert (=> b!4624500 (= lt!1781940 Unit!111887)))

(declare-fun lt!1781945 () Unit!111769)

(declare-fun Unit!111888 () Unit!111769)

(assert (=> b!4624500 (= lt!1781945 Unit!111888)))

(declare-fun lt!1781949 () Unit!111769)

(assert (=> b!4624500 (= lt!1781949 (addForallContainsKeyThenBeforeAdding!501 (ListMap!4270 Nil!51518) lt!1781944 (_1!29517 (h!57564 (Cons!51518 lt!1781389 lt!1781387))) (_2!29517 (h!57564 (Cons!51518 lt!1781389 lt!1781387)))))))

(assert (=> b!4624500 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191808)))

(declare-fun lt!1781950 () Unit!111769)

(assert (=> b!4624500 (= lt!1781950 lt!1781949)))

(assert (=> b!4624500 (forall!10816 (toList!4965 (ListMap!4270 Nil!51518)) lambda!191808)))

(declare-fun lt!1781942 () Unit!111769)

(declare-fun Unit!111889 () Unit!111769)

(assert (=> b!4624500 (= lt!1781942 Unit!111889)))

(declare-fun res!1939069 () Bool)

(assert (=> b!4624500 (= res!1939069 (forall!10816 (Cons!51518 lt!1781389 lt!1781387) lambda!191808))))

(assert (=> b!4624500 (=> (not res!1939069) (not e!2884654))))

(assert (=> b!4624500 e!2884654))

(declare-fun lt!1781938 () Unit!111769)

(declare-fun Unit!111890 () Unit!111769)

(assert (=> b!4624500 (= lt!1781938 Unit!111890)))

(assert (= (and d!1456640 c!791609) b!4624497))

(assert (= (and d!1456640 (not c!791609)) b!4624500))

(assert (= (and b!4624500 res!1939069) b!4624496))

(assert (= (or b!4624497 b!4624500) bm!322545))

(assert (= (or b!4624497 b!4624500) bm!322546))

(assert (= (or b!4624497 b!4624500) bm!322544))

(assert (= (and d!1456640 res!1939070) b!4624498))

(assert (= (and b!4624498 res!1939068) b!4624499))

(assert (=> bm!322545 m!5464799))

(declare-fun m!5464959 () Bool)

(assert (=> b!4624498 m!5464959))

(declare-fun m!5464961 () Bool)

(assert (=> d!1456640 m!5464961))

(declare-fun m!5464963 () Bool)

(assert (=> d!1456640 m!5464963))

(declare-fun m!5464965 () Bool)

(assert (=> bm!322546 m!5464965))

(declare-fun m!5464967 () Bool)

(assert (=> b!4624499 m!5464967))

(declare-fun m!5464969 () Bool)

(assert (=> bm!322544 m!5464969))

(declare-fun m!5464971 () Bool)

(assert (=> b!4624496 m!5464971))

(assert (=> b!4624500 m!5464971))

(declare-fun m!5464973 () Bool)

(assert (=> b!4624500 m!5464973))

(declare-fun m!5464975 () Bool)

(assert (=> b!4624500 m!5464975))

(declare-fun m!5464977 () Bool)

(assert (=> b!4624500 m!5464977))

(declare-fun m!5464979 () Bool)

(assert (=> b!4624500 m!5464979))

(declare-fun m!5464981 () Bool)

(assert (=> b!4624500 m!5464981))

(assert (=> b!4624500 m!5464973))

(assert (=> b!4624500 m!5464981))

(declare-fun m!5464983 () Bool)

(assert (=> b!4624500 m!5464983))

(declare-fun m!5464985 () Bool)

(assert (=> b!4624500 m!5464985))

(declare-fun m!5464987 () Bool)

(assert (=> b!4624500 m!5464987))

(declare-fun m!5464989 () Bool)

(assert (=> b!4624500 m!5464989))

(assert (=> b!4624500 m!5464971))

(assert (=> b!4624090 d!1456640))

(declare-fun bs!1022703 () Bool)

(declare-fun d!1456642 () Bool)

(assert (= bs!1022703 (and d!1456642 d!1456472)))

(declare-fun lambda!191810 () Int)

(assert (=> bs!1022703 (= lambda!191810 lambda!191702)))

(declare-fun bs!1022704 () Bool)

(assert (= bs!1022704 (and d!1456642 d!1456600)))

(assert (=> bs!1022704 (= lambda!191810 lambda!191789)))

(declare-fun bs!1022705 () Bool)

(assert (= bs!1022705 (and d!1456642 d!1456560)))

(assert (=> bs!1022705 (= lambda!191810 lambda!191771)))

(declare-fun bs!1022706 () Bool)

(assert (= bs!1022706 (and d!1456642 d!1456610)))

(assert (=> bs!1022706 (= lambda!191810 lambda!191792)))

(declare-fun bs!1022707 () Bool)

(assert (= bs!1022707 (and d!1456642 d!1456590)))

(assert (=> bs!1022707 (= lambda!191810 lambda!191782)))

(declare-fun bs!1022708 () Bool)

(assert (= bs!1022708 (and d!1456642 d!1456484)))

(assert (=> bs!1022708 (= lambda!191810 lambda!191707)))

(declare-fun bs!1022709 () Bool)

(assert (= bs!1022709 (and d!1456642 b!4624088)))

(assert (=> bs!1022709 (= lambda!191810 lambda!191664)))

(declare-fun bs!1022710 () Bool)

(assert (= bs!1022710 (and d!1456642 d!1456612)))

(assert (=> bs!1022710 (= lambda!191810 lambda!191793)))

(declare-fun bs!1022711 () Bool)

(assert (= bs!1022711 (and d!1456642 d!1456486)))

(assert (=> bs!1022711 (= lambda!191810 lambda!191708)))

(declare-fun lt!1781958 () ListMap!4269)

(assert (=> d!1456642 (invariantList!1200 (toList!4965 lt!1781958))))

(declare-fun e!2884656 () ListMap!4269)

(assert (=> d!1456642 (= lt!1781958 e!2884656)))

(declare-fun c!791610 () Bool)

(assert (=> d!1456642 (= c!791610 ((_ is Cons!51519) lt!1781377))))

(assert (=> d!1456642 (forall!10815 lt!1781377 lambda!191810)))

(assert (=> d!1456642 (= (extractMap!1556 lt!1781377) lt!1781958)))

(declare-fun b!4624501 () Bool)

(assert (=> b!4624501 (= e!2884656 (addToMapMapFromBucket!961 (_2!29518 (h!57565 lt!1781377)) (extractMap!1556 (t!358671 lt!1781377))))))

(declare-fun b!4624502 () Bool)

(assert (=> b!4624502 (= e!2884656 (ListMap!4270 Nil!51518))))

(assert (= (and d!1456642 c!791610) b!4624501))

(assert (= (and d!1456642 (not c!791610)) b!4624502))

(declare-fun m!5464991 () Bool)

(assert (=> d!1456642 m!5464991))

(declare-fun m!5464993 () Bool)

(assert (=> d!1456642 m!5464993))

(declare-fun m!5464995 () Bool)

(assert (=> b!4624501 m!5464995))

(assert (=> b!4624501 m!5464995))

(declare-fun m!5464997 () Bool)

(assert (=> b!4624501 m!5464997))

(assert (=> b!4624090 d!1456642))

(declare-fun d!1456644 () Bool)

(assert (=> d!1456644 (eq!815 (addToMapMapFromBucket!961 (Cons!51518 lt!1781392 lt!1781372) (ListMap!4270 Nil!51518)) (+!1866 (addToMapMapFromBucket!961 lt!1781372 (ListMap!4270 Nil!51518)) lt!1781392))))

(declare-fun lt!1781959 () Unit!111769)

(assert (=> d!1456644 (= lt!1781959 (choose!31283 lt!1781392 lt!1781372 (ListMap!4270 Nil!51518)))))

(assert (=> d!1456644 (noDuplicateKeys!1500 lt!1781372)))

(assert (=> d!1456644 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!66 lt!1781392 lt!1781372 (ListMap!4270 Nil!51518)) lt!1781959)))

(declare-fun bs!1022712 () Bool)

(assert (= bs!1022712 d!1456644))

(declare-fun m!5464999 () Bool)

(assert (=> bs!1022712 m!5464999))

(assert (=> bs!1022712 m!5464919))

(assert (=> bs!1022712 m!5464055))

(assert (=> bs!1022712 m!5464031))

(assert (=> bs!1022712 m!5464031))

(assert (=> bs!1022712 m!5464033))

(assert (=> bs!1022712 m!5464055))

(assert (=> bs!1022712 m!5464033))

(assert (=> bs!1022712 m!5464059))

(assert (=> b!4624090 d!1456644))

(declare-fun tp!1342062 () Bool)

(declare-fun b!4624507 () Bool)

(declare-fun e!2884659 () Bool)

(assert (=> b!4624507 (= e!2884659 (and tp_is_empty!29293 tp_is_empty!29295 tp!1342062))))

(assert (=> b!4624098 (= tp!1342054 e!2884659)))

(assert (= (and b!4624098 ((_ is Cons!51518) (t!358670 newBucket!224))) b!4624507))

(declare-fun b!4624508 () Bool)

(declare-fun tp!1342063 () Bool)

(declare-fun e!2884660 () Bool)

(assert (=> b!4624508 (= e!2884660 (and tp_is_empty!29293 tp_is_empty!29295 tp!1342063))))

(assert (=> b!4624085 (= tp!1342055 e!2884660)))

(assert (= (and b!4624085 ((_ is Cons!51518) (t!358670 oldBucket!40))) b!4624508))

(declare-fun b_lambda!170707 () Bool)

(assert (= b_lambda!170705 (or b!4624088 b_lambda!170707)))

(declare-fun bs!1022713 () Bool)

(declare-fun d!1456646 () Bool)

(assert (= bs!1022713 (and d!1456646 b!4624088)))

(assert (=> bs!1022713 (= (dynLambda!21493 lambda!191664 lt!1781374) (noDuplicateKeys!1500 (_2!29518 lt!1781374)))))

(declare-fun m!5465001 () Bool)

(assert (=> bs!1022713 m!5465001))

(assert (=> d!1456592 d!1456646))

(check-sat (not b!4624471) (not b!4624154) (not b!4624469) (not b!4624499) (not b!4624360) (not d!1456616) (not b!4624155) (not d!1456592) (not b!4624410) (not b!4624463) (not d!1456584) (not bm!322541) (not d!1456630) (not d!1456486) (not b!4624473) (not b!4624363) (not d!1456504) (not b!4624493) (not b!4624405) (not d!1456624) (not b!4624492) (not d!1456620) (not d!1456472) (not bm!322538) (not b!4624364) (not b!4624428) (not b!4624449) (not d!1456566) (not bm!322529) (not d!1456598) (not b!4624483) (not b!4624459) (not d!1456610) (not d!1456634) tp_is_empty!29295 (not b!4624491) (not b!4624416) (not b!4624476) (not b!4624501) (not d!1456632) (not d!1456586) (not b!4624390) (not b!4624192) (not bm!322530) (not d!1456470) (not d!1456626) (not d!1456498) (not b!4624408) (not b!4624426) (not b!4624468) (not b!4624507) (not b!4624151) (not b!4624484) (not d!1456476) (not d!1456500) (not b!4624148) (not b!4624427) (not b!4624472) (not d!1456574) (not bm!322535) (not b!4624508) (not d!1456560) (not b!4624486) (not bm!322544) (not d!1456612) (not b!4624466) (not b_lambda!170707) (not bm!322546) (not b!4624447) (not d!1456622) (not d!1456474) (not b!4624149) (not b!4624470) (not b!4624475) (not b!4624362) (not d!1456636) (not b!4624479) (not b!4624377) (not d!1456628) (not d!1456606) (not b!4624169) (not d!1456496) (not b!4624425) (not b!4624481) (not b!4624485) (not b!4624190) (not b!4624194) (not b!4624498) (not bm!322542) (not bm!322539) (not bm!322540) (not b!4624191) (not b!4624464) (not d!1456590) (not d!1456484) (not b!4624480) (not b!4624446) (not bm!322545) (not b!4624222) (not d!1456640) (not b!4624489) (not d!1456578) (not d!1456604) (not b!4624450) (not bm!322534) (not d!1456494) (not bs!1022713) (not b!4624477) tp_is_empty!29293 (not bm!322537) (not b!4624494) (not d!1456596) (not bm!322499) (not b!4624478) (not bm!322536) (not b!4624218) (not bm!322543) (not b!4624487) (not b!4624152) (not d!1456488) (not bm!322528) (not d!1456602) (not b!4624452) (not b!4624378) (not b!4624495) (not d!1456642) (not d!1456600) (not b!4624381) (not b!4624461) (not b!4624462) (not b!4624153) (not b!4624500) (not d!1456614) (not b!4624496) (not d!1456572) (not b!4624371) (not d!1456644))
(check-sat)
