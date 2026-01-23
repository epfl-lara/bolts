; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462052 () Bool)

(assert start!462052)

(declare-fun b!4617480 () Bool)

(declare-fun e!2880200 () Bool)

(assert (=> b!4617480 (= e!2880200 true)))

(declare-fun lt!1773369 () Bool)

(declare-datatypes ((K!12790 0))(
  ( (K!12791 (val!18503 Int)) )
))
(declare-datatypes ((V!13036 0))(
  ( (V!13037 (val!18504 Int)) )
))
(declare-datatypes ((tuple2!52270 0))(
  ( (tuple2!52271 (_1!29429 K!12790) (_2!29429 V!13036)) )
))
(declare-datatypes ((List!51529 0))(
  ( (Nil!51405) (Cons!51405 (h!57425 tuple2!52270) (t!358541 List!51529)) )
))
(declare-fun oldBucket!40 () List!51529)

(declare-fun key!4968 () K!12790)

(declare-fun containsKey!2338 (List!51529 K!12790) Bool)

(assert (=> b!4617480 (= lt!1773369 (containsKey!2338 (t!358541 oldBucket!40) key!4968))))

(assert (=> b!4617480 (containsKey!2338 oldBucket!40 key!4968)))

(declare-datatypes ((Hashable!5853 0))(
  ( (HashableExt!5852 (__x!31556 Int)) )
))
(declare-fun hashF!1389 () Hashable!5853)

(declare-datatypes ((Unit!110646 0))(
  ( (Unit!110647) )
))
(declare-fun lt!1773361 () Unit!110646)

(declare-fun lemmaGetPairDefinedThenContainsKey!2 (List!51529 K!12790 Hashable!5853) Unit!110646)

(assert (=> b!4617480 (= lt!1773361 (lemmaGetPairDefinedThenContainsKey!2 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1773360 () List!51529)

(declare-datatypes ((Option!11480 0))(
  ( (None!11479) (Some!11479 (v!45545 tuple2!52270)) )
))
(declare-fun isDefined!8745 (Option!11480) Bool)

(declare-fun getPair!248 (List!51529 K!12790) Option!11480)

(assert (=> b!4617480 (isDefined!8745 (getPair!248 lt!1773360 key!4968))))

(declare-datatypes ((tuple2!52272 0))(
  ( (tuple2!52273 (_1!29430 (_ BitVec 64)) (_2!29430 List!51529)) )
))
(declare-fun lt!1773363 () tuple2!52272)

(declare-fun lt!1773367 () Unit!110646)

(declare-datatypes ((List!51530 0))(
  ( (Nil!51406) (Cons!51406 (h!57426 tuple2!52272) (t!358542 List!51530)) )
))
(declare-fun lt!1773368 () List!51530)

(declare-fun lambda!189866 () Int)

(declare-fun forallContained!2971 (List!51530 Int tuple2!52272) Unit!110646)

(assert (=> b!4617480 (= lt!1773367 (forallContained!2971 lt!1773368 lambda!189866 lt!1773363))))

(declare-fun contains!14368 (List!51530 tuple2!52272) Bool)

(assert (=> b!4617480 (contains!14368 lt!1773368 lt!1773363)))

(declare-fun lt!1773357 () (_ BitVec 64))

(assert (=> b!4617480 (= lt!1773363 (tuple2!52273 lt!1773357 lt!1773360))))

(declare-datatypes ((ListLongMap!3467 0))(
  ( (ListLongMap!3468 (toList!4877 List!51530)) )
))
(declare-fun lt!1773365 () ListLongMap!3467)

(declare-fun lt!1773359 () Unit!110646)

(declare-fun lemmaGetValueImpliesTupleContained!53 (ListLongMap!3467 (_ BitVec 64) List!51529) Unit!110646)

(assert (=> b!4617480 (= lt!1773359 (lemmaGetValueImpliesTupleContained!53 lt!1773365 lt!1773357 lt!1773360))))

(declare-fun apply!12121 (ListLongMap!3467 (_ BitVec 64)) List!51529)

(assert (=> b!4617480 (= lt!1773360 (apply!12121 lt!1773365 lt!1773357))))

(declare-fun contains!14369 (ListLongMap!3467 (_ BitVec 64)) Bool)

(assert (=> b!4617480 (contains!14369 lt!1773365 lt!1773357)))

(declare-fun lt!1773362 () Unit!110646)

(declare-fun lemmaInGenMapThenLongMapContainsHash!454 (ListLongMap!3467 K!12790 Hashable!5853) Unit!110646)

(assert (=> b!4617480 (= lt!1773362 (lemmaInGenMapThenLongMapContainsHash!454 lt!1773365 key!4968 hashF!1389))))

(declare-fun lt!1773364 () Unit!110646)

(declare-fun lemmaInGenMapThenGetPairDefined!44 (ListLongMap!3467 K!12790 Hashable!5853) Unit!110646)

(assert (=> b!4617480 (= lt!1773364 (lemmaInGenMapThenGetPairDefined!44 lt!1773365 key!4968 hashF!1389))))

(assert (=> b!4617480 (= lt!1773365 (ListLongMap!3468 lt!1773368))))

(declare-fun res!1934943 () Bool)

(declare-fun e!2880205 () Bool)

(assert (=> start!462052 (=> (not res!1934943) (not e!2880205))))

(declare-fun noDuplicateKeys!1456 (List!51529) Bool)

(assert (=> start!462052 (= res!1934943 (noDuplicateKeys!1456 oldBucket!40))))

(assert (=> start!462052 e!2880205))

(assert (=> start!462052 true))

(declare-fun e!2880202 () Bool)

(assert (=> start!462052 e!2880202))

(declare-fun tp_is_empty!29117 () Bool)

(assert (=> start!462052 tp_is_empty!29117))

(declare-fun e!2880201 () Bool)

(assert (=> start!462052 e!2880201))

(declare-fun b!4617481 () Bool)

(declare-fun res!1934941 () Bool)

(assert (=> b!4617481 (=> (not res!1934941) (not e!2880205))))

(declare-fun newBucket!224 () List!51529)

(assert (=> b!4617481 (= res!1934941 (noDuplicateKeys!1456 newBucket!224))))

(declare-fun b!4617482 () Bool)

(declare-fun e!2880203 () Bool)

(assert (=> b!4617482 (= e!2880203 (not e!2880200))))

(declare-fun res!1934942 () Bool)

(assert (=> b!4617482 (=> res!1934942 e!2880200)))

(get-info :version)

(assert (=> b!4617482 (= res!1934942 (or (and ((_ is Cons!51405) oldBucket!40) (= (_1!29429 (h!57425 oldBucket!40)) key!4968)) (not ((_ is Cons!51405) oldBucket!40)) (= (_1!29429 (h!57425 oldBucket!40)) key!4968)))))

(declare-fun e!2880204 () Bool)

(assert (=> b!4617482 e!2880204))

(declare-fun res!1934944 () Bool)

(assert (=> b!4617482 (=> (not res!1934944) (not e!2880204))))

(declare-datatypes ((ListMap!4181 0))(
  ( (ListMap!4182 (toList!4878 List!51529)) )
))
(declare-fun lt!1773366 () ListMap!4181)

(declare-fun lt!1773358 () ListMap!4181)

(declare-fun addToMapMapFromBucket!917 (List!51529 ListMap!4181) ListMap!4181)

(assert (=> b!4617482 (= res!1934944 (= lt!1773366 (addToMapMapFromBucket!917 oldBucket!40 lt!1773358)))))

(declare-fun extractMap!1512 (List!51530) ListMap!4181)

(assert (=> b!4617482 (= lt!1773358 (extractMap!1512 Nil!51406))))

(assert (=> b!4617482 true))

(declare-fun b!4617483 () Bool)

(declare-fun tp!1341686 () Bool)

(declare-fun tp_is_empty!29119 () Bool)

(assert (=> b!4617483 (= e!2880202 (and tp_is_empty!29117 tp_is_empty!29119 tp!1341686))))

(declare-fun b!4617484 () Bool)

(declare-fun res!1934940 () Bool)

(assert (=> b!4617484 (=> (not res!1934940) (not e!2880203))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1310 (List!51529 (_ BitVec 64) Hashable!5853) Bool)

(assert (=> b!4617484 (= res!1934940 (allKeysSameHash!1310 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4617485 () Bool)

(declare-fun e!2880206 () Bool)

(assert (=> b!4617485 (= e!2880206 e!2880203)))

(declare-fun res!1934939 () Bool)

(assert (=> b!4617485 (=> (not res!1934939) (not e!2880203))))

(assert (=> b!4617485 (= res!1934939 (= lt!1773357 hash!414))))

(declare-fun hash!3417 (Hashable!5853 K!12790) (_ BitVec 64))

(assert (=> b!4617485 (= lt!1773357 (hash!3417 hashF!1389 key!4968))))

(declare-fun b!4617486 () Bool)

(declare-fun res!1934936 () Bool)

(assert (=> b!4617486 (=> (not res!1934936) (not e!2880205))))

(declare-fun removePairForKey!1079 (List!51529 K!12790) List!51529)

(assert (=> b!4617486 (= res!1934936 (= (removePairForKey!1079 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4617487 () Bool)

(declare-fun res!1934938 () Bool)

(assert (=> b!4617487 (=> (not res!1934938) (not e!2880205))))

(assert (=> b!4617487 (= res!1934938 (allKeysSameHash!1310 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4617488 () Bool)

(assert (=> b!4617488 (= e!2880205 e!2880206)))

(declare-fun res!1934937 () Bool)

(assert (=> b!4617488 (=> (not res!1934937) (not e!2880206))))

(declare-fun contains!14370 (ListMap!4181 K!12790) Bool)

(assert (=> b!4617488 (= res!1934937 (contains!14370 lt!1773366 key!4968))))

(assert (=> b!4617488 (= lt!1773366 (extractMap!1512 lt!1773368))))

(assert (=> b!4617488 (= lt!1773368 (Cons!51406 (tuple2!52273 hash!414 oldBucket!40) Nil!51406))))

(declare-fun tp!1341687 () Bool)

(declare-fun b!4617489 () Bool)

(assert (=> b!4617489 (= e!2880201 (and tp_is_empty!29117 tp_is_empty!29119 tp!1341687))))

(declare-fun b!4617490 () Bool)

(assert (=> b!4617490 (= e!2880204 (= lt!1773358 (ListMap!4182 Nil!51405)))))

(assert (= (and start!462052 res!1934943) b!4617481))

(assert (= (and b!4617481 res!1934941) b!4617486))

(assert (= (and b!4617486 res!1934936) b!4617487))

(assert (= (and b!4617487 res!1934938) b!4617488))

(assert (= (and b!4617488 res!1934937) b!4617485))

(assert (= (and b!4617485 res!1934939) b!4617484))

(assert (= (and b!4617484 res!1934940) b!4617482))

(assert (= (and b!4617482 res!1934944) b!4617490))

(assert (= (and b!4617482 (not res!1934942)) b!4617480))

(assert (= (and start!462052 ((_ is Cons!51405) oldBucket!40)) b!4617483))

(assert (= (and start!462052 ((_ is Cons!51405) newBucket!224)) b!4617489))

(declare-fun m!5452799 () Bool)

(assert (=> b!4617487 m!5452799))

(declare-fun m!5452801 () Bool)

(assert (=> start!462052 m!5452801))

(declare-fun m!5452803 () Bool)

(assert (=> b!4617484 m!5452803))

(declare-fun m!5452805 () Bool)

(assert (=> b!4617485 m!5452805))

(declare-fun m!5452807 () Bool)

(assert (=> b!4617480 m!5452807))

(declare-fun m!5452809 () Bool)

(assert (=> b!4617480 m!5452809))

(declare-fun m!5452811 () Bool)

(assert (=> b!4617480 m!5452811))

(declare-fun m!5452813 () Bool)

(assert (=> b!4617480 m!5452813))

(declare-fun m!5452815 () Bool)

(assert (=> b!4617480 m!5452815))

(declare-fun m!5452817 () Bool)

(assert (=> b!4617480 m!5452817))

(assert (=> b!4617480 m!5452807))

(declare-fun m!5452819 () Bool)

(assert (=> b!4617480 m!5452819))

(declare-fun m!5452821 () Bool)

(assert (=> b!4617480 m!5452821))

(declare-fun m!5452823 () Bool)

(assert (=> b!4617480 m!5452823))

(declare-fun m!5452825 () Bool)

(assert (=> b!4617480 m!5452825))

(declare-fun m!5452827 () Bool)

(assert (=> b!4617480 m!5452827))

(declare-fun m!5452829 () Bool)

(assert (=> b!4617480 m!5452829))

(declare-fun m!5452831 () Bool)

(assert (=> b!4617486 m!5452831))

(declare-fun m!5452833 () Bool)

(assert (=> b!4617488 m!5452833))

(declare-fun m!5452835 () Bool)

(assert (=> b!4617488 m!5452835))

(declare-fun m!5452837 () Bool)

(assert (=> b!4617481 m!5452837))

(declare-fun m!5452839 () Bool)

(assert (=> b!4617482 m!5452839))

(declare-fun m!5452841 () Bool)

(assert (=> b!4617482 m!5452841))

(check-sat (not b!4617485) (not b!4617483) (not b!4617487) (not start!462052) tp_is_empty!29119 (not b!4617481) (not b!4617486) (not b!4617482) (not b!4617480) (not b!4617489) tp_is_empty!29117 (not b!4617488) (not b!4617484))
(check-sat)
