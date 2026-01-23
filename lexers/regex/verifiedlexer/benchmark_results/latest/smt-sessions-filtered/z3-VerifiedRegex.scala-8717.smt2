; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!465068 () Bool)

(assert start!465068)

(declare-fun res!1943888 () Bool)

(declare-fun e!2889808 () Bool)

(assert (=> start!465068 (=> (not res!1943888) (not e!2889808))))

(declare-datatypes ((K!12990 0))(
  ( (K!12991 (val!18663 Int)) )
))
(declare-datatypes ((V!13236 0))(
  ( (V!13237 (val!18664 Int)) )
))
(declare-datatypes ((tuple2!52590 0))(
  ( (tuple2!52591 (_1!29589 K!12990) (_2!29589 V!13236)) )
))
(declare-datatypes ((List!51744 0))(
  ( (Nil!51620) (Cons!51620 (h!57696 tuple2!52590) (t!358802 List!51744)) )
))
(declare-fun oldBucket!40 () List!51744)

(declare-fun noDuplicateKeys!1536 (List!51744) Bool)

(assert (=> start!465068 (= res!1943888 (noDuplicateKeys!1536 oldBucket!40))))

(assert (=> start!465068 e!2889808))

(assert (=> start!465068 true))

(declare-fun e!2889804 () Bool)

(assert (=> start!465068 e!2889804))

(declare-fun tp_is_empty!29437 () Bool)

(assert (=> start!465068 tp_is_empty!29437))

(declare-fun e!2889810 () Bool)

(assert (=> start!465068 e!2889810))

(declare-fun b!4632467 () Bool)

(declare-fun e!2889815 () Bool)

(declare-fun e!2889807 () Bool)

(assert (=> b!4632467 (= e!2889815 e!2889807)))

(declare-fun res!1943878 () Bool)

(assert (=> b!4632467 (=> res!1943878 e!2889807)))

(declare-datatypes ((ListMap!4341 0))(
  ( (ListMap!4342 (toList!5037 List!51744)) )
))
(declare-fun lt!1793395 () ListMap!4341)

(declare-fun lt!1793409 () tuple2!52590)

(declare-fun lt!1793398 () ListMap!4341)

(declare-fun eq!851 (ListMap!4341 ListMap!4341) Bool)

(declare-fun +!1902 (ListMap!4341 tuple2!52590) ListMap!4341)

(assert (=> b!4632467 (= res!1943878 (not (eq!851 lt!1793398 (+!1902 lt!1793395 lt!1793409))))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1793413 () List!51744)

(declare-datatypes ((tuple2!52592 0))(
  ( (tuple2!52593 (_1!29590 (_ BitVec 64)) (_2!29590 List!51744)) )
))
(declare-datatypes ((List!51745 0))(
  ( (Nil!51621) (Cons!51621 (h!57697 tuple2!52592) (t!358803 List!51745)) )
))
(declare-fun extractMap!1592 (List!51745) ListMap!4341)

(assert (=> b!4632467 (= lt!1793395 (extractMap!1592 (Cons!51621 (tuple2!52593 hash!414 lt!1793413) Nil!51621)))))

(declare-fun lt!1793402 () List!51745)

(assert (=> b!4632467 (= lt!1793398 (extractMap!1592 lt!1793402))))

(declare-fun newBucket!224 () List!51744)

(assert (=> b!4632467 (= lt!1793402 (Cons!51621 (tuple2!52593 hash!414 newBucket!224) Nil!51621))))

(declare-fun b!4632468 () Bool)

(declare-fun e!2889805 () Bool)

(declare-fun e!2889809 () Bool)

(assert (=> b!4632468 (= e!2889805 e!2889809)))

(declare-fun res!1943886 () Bool)

(assert (=> b!4632468 (=> res!1943886 e!2889809)))

(declare-fun key!4968 () K!12990)

(declare-fun containsKey!2528 (List!51744 K!12990) Bool)

(assert (=> b!4632468 (= res!1943886 (not (containsKey!2528 (t!358802 oldBucket!40) key!4968)))))

(assert (=> b!4632468 (containsKey!2528 oldBucket!40 key!4968)))

(declare-datatypes ((Hashable!5933 0))(
  ( (HashableExt!5932 (__x!31636 Int)) )
))
(declare-fun hashF!1389 () Hashable!5933)

(declare-datatypes ((Unit!113631 0))(
  ( (Unit!113632) )
))
(declare-fun lt!1793419 () Unit!113631)

(declare-fun lemmaGetPairDefinedThenContainsKey!82 (List!51744 K!12990 Hashable!5933) Unit!113631)

(assert (=> b!4632468 (= lt!1793419 (lemmaGetPairDefinedThenContainsKey!82 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1793415 () List!51744)

(declare-datatypes ((Option!11670 0))(
  ( (None!11669) (Some!11669 (v!45847 tuple2!52590)) )
))
(declare-fun isDefined!8935 (Option!11670) Bool)

(declare-fun getPair!328 (List!51744 K!12990) Option!11670)

(assert (=> b!4632468 (isDefined!8935 (getPair!328 lt!1793415 key!4968))))

(declare-fun lt!1793416 () tuple2!52592)

(declare-fun lt!1793422 () List!51745)

(declare-fun lt!1793408 () Unit!113631)

(declare-fun lambda!194010 () Int)

(declare-fun forallContained!3106 (List!51745 Int tuple2!52592) Unit!113631)

(assert (=> b!4632468 (= lt!1793408 (forallContained!3106 lt!1793422 lambda!194010 lt!1793416))))

(declare-fun contains!14719 (List!51745 tuple2!52592) Bool)

(assert (=> b!4632468 (contains!14719 lt!1793422 lt!1793416)))

(declare-fun lt!1793425 () (_ BitVec 64))

(assert (=> b!4632468 (= lt!1793416 (tuple2!52593 lt!1793425 lt!1793415))))

(declare-datatypes ((ListLongMap!3627 0))(
  ( (ListLongMap!3628 (toList!5038 List!51745)) )
))
(declare-fun lt!1793424 () ListLongMap!3627)

(declare-fun lt!1793405 () Unit!113631)

(declare-fun lemmaGetValueImpliesTupleContained!133 (ListLongMap!3627 (_ BitVec 64) List!51744) Unit!113631)

(assert (=> b!4632468 (= lt!1793405 (lemmaGetValueImpliesTupleContained!133 lt!1793424 lt!1793425 lt!1793415))))

(declare-fun apply!12201 (ListLongMap!3627 (_ BitVec 64)) List!51744)

(assert (=> b!4632468 (= lt!1793415 (apply!12201 lt!1793424 lt!1793425))))

(declare-fun contains!14720 (ListLongMap!3627 (_ BitVec 64)) Bool)

(assert (=> b!4632468 (contains!14720 lt!1793424 lt!1793425)))

(declare-fun lt!1793404 () Unit!113631)

(declare-fun lemmaInGenMapThenLongMapContainsHash!534 (ListLongMap!3627 K!12990 Hashable!5933) Unit!113631)

(assert (=> b!4632468 (= lt!1793404 (lemmaInGenMapThenLongMapContainsHash!534 lt!1793424 key!4968 hashF!1389))))

(declare-fun lt!1793403 () Unit!113631)

(declare-fun lemmaInGenMapThenGetPairDefined!124 (ListLongMap!3627 K!12990 Hashable!5933) Unit!113631)

(assert (=> b!4632468 (= lt!1793403 (lemmaInGenMapThenGetPairDefined!124 lt!1793424 key!4968 hashF!1389))))

(assert (=> b!4632468 (= lt!1793424 (ListLongMap!3628 lt!1793422))))

(declare-fun b!4632469 () Bool)

(declare-fun e!2889816 () Bool)

(assert (=> b!4632469 (= e!2889809 e!2889816)))

(declare-fun res!1943882 () Bool)

(assert (=> b!4632469 (=> res!1943882 e!2889816)))

(declare-fun lt!1793406 () List!51744)

(declare-fun removePairForKey!1159 (List!51744 K!12990) List!51744)

(assert (=> b!4632469 (= res!1943882 (not (= (removePairForKey!1159 lt!1793406 key!4968) lt!1793413)))))

(declare-fun tail!8171 (List!51744) List!51744)

(assert (=> b!4632469 (= lt!1793413 (tail!8171 newBucket!224))))

(assert (=> b!4632469 (= lt!1793406 (tail!8171 oldBucket!40))))

(declare-fun tp_is_empty!29439 () Bool)

(declare-fun tp!1342391 () Bool)

(declare-fun b!4632470 () Bool)

(assert (=> b!4632470 (= e!2889804 (and tp_is_empty!29437 tp_is_empty!29439 tp!1342391))))

(declare-fun b!4632471 () Bool)

(declare-fun res!1943892 () Bool)

(declare-fun e!2889806 () Bool)

(assert (=> b!4632471 (=> (not res!1943892) (not e!2889806))))

(declare-fun allKeysSameHash!1390 (List!51744 (_ BitVec 64) Hashable!5933) Bool)

(assert (=> b!4632471 (= res!1943892 (allKeysSameHash!1390 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4632472 () Bool)

(assert (=> b!4632472 (= e!2889806 (not e!2889805))))

(declare-fun res!1943875 () Bool)

(assert (=> b!4632472 (=> res!1943875 e!2889805)))

(get-info :version)

(assert (=> b!4632472 (= res!1943875 (or (and ((_ is Cons!51620) oldBucket!40) (= (_1!29589 (h!57696 oldBucket!40)) key!4968)) (not ((_ is Cons!51620) oldBucket!40)) (= (_1!29589 (h!57696 oldBucket!40)) key!4968)))))

(declare-fun e!2889813 () Bool)

(assert (=> b!4632472 e!2889813))

(declare-fun res!1943885 () Bool)

(assert (=> b!4632472 (=> (not res!1943885) (not e!2889813))))

(declare-fun lt!1793401 () ListMap!4341)

(declare-fun lt!1793417 () ListMap!4341)

(declare-fun addToMapMapFromBucket!997 (List!51744 ListMap!4341) ListMap!4341)

(assert (=> b!4632472 (= res!1943885 (= lt!1793401 (addToMapMapFromBucket!997 oldBucket!40 lt!1793417)))))

(assert (=> b!4632472 (= lt!1793417 (extractMap!1592 Nil!51621))))

(assert (=> b!4632472 true))

(declare-fun b!4632473 () Bool)

(declare-fun e!2889812 () Bool)

(assert (=> b!4632473 (= e!2889812 e!2889806)))

(declare-fun res!1943891 () Bool)

(assert (=> b!4632473 (=> (not res!1943891) (not e!2889806))))

(assert (=> b!4632473 (= res!1943891 (= lt!1793425 hash!414))))

(declare-fun hash!3580 (Hashable!5933 K!12990) (_ BitVec 64))

(assert (=> b!4632473 (= lt!1793425 (hash!3580 hashF!1389 key!4968))))

(declare-fun b!4632474 () Bool)

(assert (=> b!4632474 (= e!2889816 e!2889815)))

(declare-fun res!1943877 () Bool)

(assert (=> b!4632474 (=> res!1943877 e!2889815)))

(assert (=> b!4632474 (= res!1943877 (not (eq!851 lt!1793401 (+!1902 (extractMap!1592 (Cons!51621 (tuple2!52593 hash!414 lt!1793406) Nil!51621)) (h!57696 oldBucket!40)))))))

(assert (=> b!4632474 (eq!851 (addToMapMapFromBucket!997 (Cons!51620 lt!1793409 lt!1793413) (ListMap!4342 Nil!51620)) (+!1902 (addToMapMapFromBucket!997 lt!1793413 (ListMap!4342 Nil!51620)) lt!1793409))))

(declare-fun lt!1793412 () Unit!113631)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!102 (tuple2!52590 List!51744 ListMap!4341) Unit!113631)

(assert (=> b!4632474 (= lt!1793412 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!102 lt!1793409 lt!1793413 (ListMap!4342 Nil!51620)))))

(declare-fun head!9670 (List!51744) tuple2!52590)

(assert (=> b!4632474 (= lt!1793409 (head!9670 newBucket!224))))

(declare-fun lt!1793420 () tuple2!52590)

(assert (=> b!4632474 (eq!851 (addToMapMapFromBucket!997 (Cons!51620 lt!1793420 lt!1793406) (ListMap!4342 Nil!51620)) (+!1902 (addToMapMapFromBucket!997 lt!1793406 (ListMap!4342 Nil!51620)) lt!1793420))))

(declare-fun lt!1793426 () Unit!113631)

(assert (=> b!4632474 (= lt!1793426 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!102 lt!1793420 lt!1793406 (ListMap!4342 Nil!51620)))))

(assert (=> b!4632474 (= lt!1793420 (head!9670 oldBucket!40))))

(declare-fun lt!1793407 () ListMap!4341)

(declare-fun contains!14721 (ListMap!4341 K!12990) Bool)

(assert (=> b!4632474 (contains!14721 lt!1793407 key!4968)))

(declare-fun lt!1793428 () List!51745)

(assert (=> b!4632474 (= lt!1793407 (extractMap!1592 lt!1793428))))

(declare-fun lt!1793397 () Unit!113631)

(declare-fun lemmaListContainsThenExtractedMapContains!354 (ListLongMap!3627 K!12990 Hashable!5933) Unit!113631)

(assert (=> b!4632474 (= lt!1793397 (lemmaListContainsThenExtractedMapContains!354 (ListLongMap!3628 lt!1793428) key!4968 hashF!1389))))

(assert (=> b!4632474 (= lt!1793428 (Cons!51621 (tuple2!52593 hash!414 (t!358802 oldBucket!40)) Nil!51621))))

(declare-fun b!4632475 () Bool)

(declare-fun res!1943884 () Bool)

(assert (=> b!4632475 (=> (not res!1943884) (not e!2889808))))

(assert (=> b!4632475 (= res!1943884 (= (removePairForKey!1159 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4632476 () Bool)

(declare-fun e!2889811 () Bool)

(declare-fun forall!10874 (List!51745 Int) Bool)

(assert (=> b!4632476 (= e!2889811 (forall!10874 lt!1793402 lambda!194010))))

(declare-fun lt!1793427 () ListMap!4341)

(assert (=> b!4632476 (eq!851 lt!1793427 (+!1902 lt!1793395 (h!57696 oldBucket!40)))))

(declare-fun lt!1793399 () ListMap!4341)

(declare-fun lt!1793396 () Unit!113631)

(declare-fun lemmaAddToEqMapsPreservesEq!48 (ListMap!4341 ListMap!4341 K!12990 V!13236) Unit!113631)

(assert (=> b!4632476 (= lt!1793396 (lemmaAddToEqMapsPreservesEq!48 lt!1793399 lt!1793395 (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40))))))

(declare-fun b!4632477 () Bool)

(declare-fun res!1943881 () Bool)

(assert (=> b!4632477 (=> res!1943881 e!2889816)))

(assert (=> b!4632477 (= res!1943881 (not (= (removePairForKey!1159 (t!358802 oldBucket!40) key!4968) lt!1793413)))))

(declare-fun b!4632478 () Bool)

(declare-fun e!2889814 () Bool)

(assert (=> b!4632478 (= e!2889814 e!2889811)))

(declare-fun res!1943876 () Bool)

(assert (=> b!4632478 (=> res!1943876 e!2889811)))

(declare-fun lt!1793411 () ListMap!4341)

(declare-fun lt!1793414 () ListMap!4341)

(assert (=> b!4632478 (= res!1943876 (not (eq!851 lt!1793411 lt!1793414)))))

(declare-fun lt!1793400 () ListMap!4341)

(assert (=> b!4632478 (eq!851 lt!1793400 lt!1793411)))

(declare-fun -!576 (ListMap!4341 K!12990) ListMap!4341)

(assert (=> b!4632478 (= lt!1793411 (-!576 lt!1793401 key!4968))))

(declare-fun lt!1793423 () Unit!113631)

(declare-fun lt!1793410 () ListMap!4341)

(declare-fun lemmaRemovePreservesEq!32 (ListMap!4341 ListMap!4341 K!12990) Unit!113631)

(assert (=> b!4632478 (= lt!1793423 (lemmaRemovePreservesEq!32 lt!1793410 lt!1793401 key!4968))))

(declare-fun b!4632479 () Bool)

(assert (=> b!4632479 (= e!2889808 e!2889812)))

(declare-fun res!1943887 () Bool)

(assert (=> b!4632479 (=> (not res!1943887) (not e!2889812))))

(assert (=> b!4632479 (= res!1943887 (contains!14721 lt!1793401 key!4968))))

(assert (=> b!4632479 (= lt!1793401 (extractMap!1592 lt!1793422))))

(assert (=> b!4632479 (= lt!1793422 (Cons!51621 (tuple2!52593 hash!414 oldBucket!40) Nil!51621))))

(declare-fun b!4632480 () Bool)

(declare-fun res!1943889 () Bool)

(assert (=> b!4632480 (=> res!1943889 e!2889811)))

(assert (=> b!4632480 (= res!1943889 (not (eq!851 lt!1793398 (+!1902 lt!1793395 (h!57696 oldBucket!40)))))))

(declare-fun b!4632481 () Bool)

(declare-fun res!1943890 () Bool)

(assert (=> b!4632481 (=> (not res!1943890) (not e!2889808))))

(assert (=> b!4632481 (= res!1943890 (allKeysSameHash!1390 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4632482 () Bool)

(declare-fun tp!1342390 () Bool)

(assert (=> b!4632482 (= e!2889810 (and tp_is_empty!29437 tp_is_empty!29439 tp!1342390))))

(declare-fun b!4632483 () Bool)

(declare-fun res!1943879 () Bool)

(assert (=> b!4632483 (=> res!1943879 e!2889811)))

(assert (=> b!4632483 (= res!1943879 (not (= lt!1793409 (h!57696 oldBucket!40))))))

(declare-fun b!4632484 () Bool)

(assert (=> b!4632484 (= e!2889807 e!2889814)))

(declare-fun res!1943883 () Bool)

(assert (=> b!4632484 (=> res!1943883 e!2889814)))

(assert (=> b!4632484 (= res!1943883 (not (= lt!1793400 lt!1793414)))))

(assert (=> b!4632484 (= lt!1793414 (+!1902 lt!1793399 (h!57696 oldBucket!40)))))

(assert (=> b!4632484 (= lt!1793400 (-!576 lt!1793410 key!4968))))

(assert (=> b!4632484 (= lt!1793410 (+!1902 lt!1793407 (h!57696 oldBucket!40)))))

(declare-fun lt!1793421 () ListMap!4341)

(assert (=> b!4632484 (= lt!1793421 lt!1793427)))

(assert (=> b!4632484 (= lt!1793427 (+!1902 lt!1793399 (h!57696 oldBucket!40)))))

(assert (=> b!4632484 (= lt!1793421 (-!576 (+!1902 lt!1793407 (h!57696 oldBucket!40)) key!4968))))

(declare-fun lt!1793418 () Unit!113631)

(declare-fun addRemoveCommutativeForDiffKeys!31 (ListMap!4341 K!12990 V!13236 K!12990) Unit!113631)

(assert (=> b!4632484 (= lt!1793418 (addRemoveCommutativeForDiffKeys!31 lt!1793407 (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40)) key!4968))))

(assert (=> b!4632484 (eq!851 lt!1793395 lt!1793399)))

(assert (=> b!4632484 (= lt!1793399 (-!576 lt!1793407 key!4968))))

(declare-fun lt!1793429 () Unit!113631)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!138 ((_ BitVec 64) List!51744 List!51744 K!12990 Hashable!5933) Unit!113631)

(assert (=> b!4632484 (= lt!1793429 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!138 hash!414 (t!358802 oldBucket!40) lt!1793413 key!4968 hashF!1389))))

(declare-fun b!4632485 () Bool)

(declare-fun res!1943880 () Bool)

(assert (=> b!4632485 (=> (not res!1943880) (not e!2889808))))

(assert (=> b!4632485 (= res!1943880 (noDuplicateKeys!1536 newBucket!224))))

(declare-fun b!4632486 () Bool)

(assert (=> b!4632486 (= e!2889813 (= lt!1793417 (ListMap!4342 Nil!51620)))))

(assert (= (and start!465068 res!1943888) b!4632485))

(assert (= (and b!4632485 res!1943880) b!4632475))

(assert (= (and b!4632475 res!1943884) b!4632481))

(assert (= (and b!4632481 res!1943890) b!4632479))

(assert (= (and b!4632479 res!1943887) b!4632473))

(assert (= (and b!4632473 res!1943891) b!4632471))

(assert (= (and b!4632471 res!1943892) b!4632472))

(assert (= (and b!4632472 res!1943885) b!4632486))

(assert (= (and b!4632472 (not res!1943875)) b!4632468))

(assert (= (and b!4632468 (not res!1943886)) b!4632469))

(assert (= (and b!4632469 (not res!1943882)) b!4632477))

(assert (= (and b!4632477 (not res!1943881)) b!4632474))

(assert (= (and b!4632474 (not res!1943877)) b!4632467))

(assert (= (and b!4632467 (not res!1943878)) b!4632484))

(assert (= (and b!4632484 (not res!1943883)) b!4632478))

(assert (= (and b!4632478 (not res!1943876)) b!4632483))

(assert (= (and b!4632483 (not res!1943879)) b!4632480))

(assert (= (and b!4632480 (not res!1943889)) b!4632476))

(assert (= (and start!465068 ((_ is Cons!51620) oldBucket!40)) b!4632470))

(assert (= (and start!465068 ((_ is Cons!51620) newBucket!224)) b!4632482))

(declare-fun m!5483847 () Bool)

(assert (=> b!4632473 m!5483847))

(declare-fun m!5483849 () Bool)

(assert (=> b!4632481 m!5483849))

(declare-fun m!5483851 () Bool)

(assert (=> b!4632480 m!5483851))

(assert (=> b!4632480 m!5483851))

(declare-fun m!5483853 () Bool)

(assert (=> b!4632480 m!5483853))

(declare-fun m!5483855 () Bool)

(assert (=> b!4632485 m!5483855))

(declare-fun m!5483857 () Bool)

(assert (=> b!4632474 m!5483857))

(declare-fun m!5483859 () Bool)

(assert (=> b!4632474 m!5483859))

(declare-fun m!5483861 () Bool)

(assert (=> b!4632474 m!5483861))

(declare-fun m!5483863 () Bool)

(assert (=> b!4632474 m!5483863))

(declare-fun m!5483865 () Bool)

(assert (=> b!4632474 m!5483865))

(declare-fun m!5483867 () Bool)

(assert (=> b!4632474 m!5483867))

(declare-fun m!5483869 () Bool)

(assert (=> b!4632474 m!5483869))

(declare-fun m!5483871 () Bool)

(assert (=> b!4632474 m!5483871))

(declare-fun m!5483873 () Bool)

(assert (=> b!4632474 m!5483873))

(assert (=> b!4632474 m!5483871))

(declare-fun m!5483875 () Bool)

(assert (=> b!4632474 m!5483875))

(declare-fun m!5483877 () Bool)

(assert (=> b!4632474 m!5483877))

(declare-fun m!5483879 () Bool)

(assert (=> b!4632474 m!5483879))

(assert (=> b!4632474 m!5483875))

(assert (=> b!4632474 m!5483865))

(assert (=> b!4632474 m!5483869))

(declare-fun m!5483881 () Bool)

(assert (=> b!4632474 m!5483881))

(assert (=> b!4632474 m!5483861))

(assert (=> b!4632474 m!5483873))

(declare-fun m!5483883 () Bool)

(assert (=> b!4632474 m!5483883))

(assert (=> b!4632474 m!5483867))

(declare-fun m!5483885 () Bool)

(assert (=> b!4632474 m!5483885))

(declare-fun m!5483887 () Bool)

(assert (=> b!4632474 m!5483887))

(assert (=> b!4632474 m!5483879))

(declare-fun m!5483889 () Bool)

(assert (=> b!4632474 m!5483889))

(declare-fun m!5483891 () Bool)

(assert (=> b!4632474 m!5483891))

(declare-fun m!5483893 () Bool)

(assert (=> b!4632477 m!5483893))

(declare-fun m!5483895 () Bool)

(assert (=> b!4632468 m!5483895))

(declare-fun m!5483897 () Bool)

(assert (=> b!4632468 m!5483897))

(assert (=> b!4632468 m!5483895))

(declare-fun m!5483899 () Bool)

(assert (=> b!4632468 m!5483899))

(declare-fun m!5483901 () Bool)

(assert (=> b!4632468 m!5483901))

(declare-fun m!5483903 () Bool)

(assert (=> b!4632468 m!5483903))

(declare-fun m!5483905 () Bool)

(assert (=> b!4632468 m!5483905))

(declare-fun m!5483907 () Bool)

(assert (=> b!4632468 m!5483907))

(declare-fun m!5483909 () Bool)

(assert (=> b!4632468 m!5483909))

(declare-fun m!5483911 () Bool)

(assert (=> b!4632468 m!5483911))

(declare-fun m!5483913 () Bool)

(assert (=> b!4632468 m!5483913))

(declare-fun m!5483915 () Bool)

(assert (=> b!4632468 m!5483915))

(declare-fun m!5483917 () Bool)

(assert (=> b!4632468 m!5483917))

(declare-fun m!5483919 () Bool)

(assert (=> b!4632467 m!5483919))

(assert (=> b!4632467 m!5483919))

(declare-fun m!5483921 () Bool)

(assert (=> b!4632467 m!5483921))

(declare-fun m!5483923 () Bool)

(assert (=> b!4632467 m!5483923))

(declare-fun m!5483925 () Bool)

(assert (=> b!4632467 m!5483925))

(declare-fun m!5483927 () Bool)

(assert (=> b!4632484 m!5483927))

(declare-fun m!5483929 () Bool)

(assert (=> b!4632484 m!5483929))

(declare-fun m!5483931 () Bool)

(assert (=> b!4632484 m!5483931))

(declare-fun m!5483933 () Bool)

(assert (=> b!4632484 m!5483933))

(declare-fun m!5483935 () Bool)

(assert (=> b!4632484 m!5483935))

(declare-fun m!5483937 () Bool)

(assert (=> b!4632484 m!5483937))

(assert (=> b!4632484 m!5483933))

(declare-fun m!5483939 () Bool)

(assert (=> b!4632484 m!5483939))

(declare-fun m!5483941 () Bool)

(assert (=> b!4632484 m!5483941))

(declare-fun m!5483943 () Bool)

(assert (=> b!4632475 m!5483943))

(declare-fun m!5483945 () Bool)

(assert (=> b!4632469 m!5483945))

(declare-fun m!5483947 () Bool)

(assert (=> b!4632469 m!5483947))

(declare-fun m!5483949 () Bool)

(assert (=> b!4632469 m!5483949))

(declare-fun m!5483951 () Bool)

(assert (=> b!4632479 m!5483951))

(declare-fun m!5483953 () Bool)

(assert (=> b!4632479 m!5483953))

(declare-fun m!5483955 () Bool)

(assert (=> start!465068 m!5483955))

(declare-fun m!5483957 () Bool)

(assert (=> b!4632476 m!5483957))

(assert (=> b!4632476 m!5483851))

(assert (=> b!4632476 m!5483851))

(declare-fun m!5483959 () Bool)

(assert (=> b!4632476 m!5483959))

(declare-fun m!5483961 () Bool)

(assert (=> b!4632476 m!5483961))

(declare-fun m!5483963 () Bool)

(assert (=> b!4632472 m!5483963))

(declare-fun m!5483965 () Bool)

(assert (=> b!4632472 m!5483965))

(declare-fun m!5483967 () Bool)

(assert (=> b!4632478 m!5483967))

(declare-fun m!5483969 () Bool)

(assert (=> b!4632478 m!5483969))

(declare-fun m!5483971 () Bool)

(assert (=> b!4632478 m!5483971))

(declare-fun m!5483973 () Bool)

(assert (=> b!4632478 m!5483973))

(declare-fun m!5483975 () Bool)

(assert (=> b!4632471 m!5483975))

(check-sat (not b!4632469) (not b!4632476) (not b!4632475) (not b!4632481) (not b!4632468) (not start!465068) (not b!4632484) (not b!4632470) (not b!4632473) (not b!4632479) (not b!4632485) (not b!4632471) (not b!4632472) tp_is_empty!29439 (not b!4632482) (not b!4632480) (not b!4632474) (not b!4632478) tp_is_empty!29437 (not b!4632477) (not b!4632467))
(check-sat)
(get-model)

(declare-fun d!1460070 () Bool)

(assert (=> d!1460070 true))

(assert (=> d!1460070 true))

(declare-fun lambda!194017 () Int)

(declare-fun forall!10876 (List!51744 Int) Bool)

(assert (=> d!1460070 (= (allKeysSameHash!1390 oldBucket!40 hash!414 hashF!1389) (forall!10876 oldBucket!40 lambda!194017))))

(declare-fun bs!1028428 () Bool)

(assert (= bs!1028428 d!1460070))

(declare-fun m!5484047 () Bool)

(assert (=> bs!1028428 m!5484047))

(assert (=> b!4632481 d!1460070))

(declare-fun bs!1028429 () Bool)

(declare-fun d!1460072 () Bool)

(assert (= bs!1028429 (and d!1460072 d!1460070)))

(declare-fun lambda!194018 () Int)

(assert (=> bs!1028429 (= lambda!194018 lambda!194017)))

(assert (=> d!1460072 true))

(assert (=> d!1460072 true))

(assert (=> d!1460072 (= (allKeysSameHash!1390 newBucket!224 hash!414 hashF!1389) (forall!10876 newBucket!224 lambda!194018))))

(declare-fun bs!1028430 () Bool)

(assert (= bs!1028430 d!1460072))

(declare-fun m!5484049 () Bool)

(assert (=> bs!1028430 m!5484049))

(assert (=> b!4632471 d!1460072))

(declare-fun d!1460074 () Bool)

(declare-fun lt!1793464 () List!51744)

(assert (=> d!1460074 (not (containsKey!2528 lt!1793464 key!4968))))

(declare-fun e!2889835 () List!51744)

(assert (=> d!1460074 (= lt!1793464 e!2889835)))

(declare-fun c!792908 () Bool)

(assert (=> d!1460074 (= c!792908 (and ((_ is Cons!51620) lt!1793406) (= (_1!29589 (h!57696 lt!1793406)) key!4968)))))

(assert (=> d!1460074 (noDuplicateKeys!1536 lt!1793406)))

(assert (=> d!1460074 (= (removePairForKey!1159 lt!1793406 key!4968) lt!1793464)))

(declare-fun b!4632524 () Bool)

(declare-fun e!2889836 () List!51744)

(assert (=> b!4632524 (= e!2889836 (Cons!51620 (h!57696 lt!1793406) (removePairForKey!1159 (t!358802 lt!1793406) key!4968)))))

(declare-fun b!4632523 () Bool)

(assert (=> b!4632523 (= e!2889835 e!2889836)))

(declare-fun c!792907 () Bool)

(assert (=> b!4632523 (= c!792907 ((_ is Cons!51620) lt!1793406))))

(declare-fun b!4632525 () Bool)

(assert (=> b!4632525 (= e!2889836 Nil!51620)))

(declare-fun b!4632522 () Bool)

(assert (=> b!4632522 (= e!2889835 (t!358802 lt!1793406))))

(assert (= (and d!1460074 c!792908) b!4632522))

(assert (= (and d!1460074 (not c!792908)) b!4632523))

(assert (= (and b!4632523 c!792907) b!4632524))

(assert (= (and b!4632523 (not c!792907)) b!4632525))

(declare-fun m!5484089 () Bool)

(assert (=> d!1460074 m!5484089))

(declare-fun m!5484091 () Bool)

(assert (=> d!1460074 m!5484091))

(declare-fun m!5484093 () Bool)

(assert (=> b!4632524 m!5484093))

(assert (=> b!4632469 d!1460074))

(declare-fun d!1460084 () Bool)

(assert (=> d!1460084 (= (tail!8171 newBucket!224) (t!358802 newBucket!224))))

(assert (=> b!4632469 d!1460084))

(declare-fun d!1460088 () Bool)

(assert (=> d!1460088 (= (tail!8171 oldBucket!40) (t!358802 oldBucket!40))))

(assert (=> b!4632469 d!1460088))

(declare-fun d!1460090 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8874 (List!51744) (InoxSet tuple2!52590))

(assert (=> d!1460090 (= (eq!851 lt!1793398 (+!1902 lt!1793395 (h!57696 oldBucket!40))) (= (content!8874 (toList!5037 lt!1793398)) (content!8874 (toList!5037 (+!1902 lt!1793395 (h!57696 oldBucket!40))))))))

(declare-fun bs!1028438 () Bool)

(assert (= bs!1028438 d!1460090))

(declare-fun m!5484113 () Bool)

(assert (=> bs!1028438 m!5484113))

(declare-fun m!5484115 () Bool)

(assert (=> bs!1028438 m!5484115))

(assert (=> b!4632480 d!1460090))

(declare-fun d!1460096 () Bool)

(declare-fun e!2889840 () Bool)

(assert (=> d!1460096 e!2889840))

(declare-fun res!1943912 () Bool)

(assert (=> d!1460096 (=> (not res!1943912) (not e!2889840))))

(declare-fun lt!1793479 () ListMap!4341)

(assert (=> d!1460096 (= res!1943912 (contains!14721 lt!1793479 (_1!29589 (h!57696 oldBucket!40))))))

(declare-fun lt!1793480 () List!51744)

(assert (=> d!1460096 (= lt!1793479 (ListMap!4342 lt!1793480))))

(declare-fun lt!1793478 () Unit!113631)

(declare-fun lt!1793477 () Unit!113631)

(assert (=> d!1460096 (= lt!1793478 lt!1793477)))

(declare-datatypes ((Option!11672 0))(
  ( (None!11671) (Some!11671 (v!45853 V!13236)) )
))
(declare-fun getValueByKey!1502 (List!51744 K!12990) Option!11672)

(assert (=> d!1460096 (= (getValueByKey!1502 lt!1793480 (_1!29589 (h!57696 oldBucket!40))) (Some!11671 (_2!29589 (h!57696 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!874 (List!51744 K!12990 V!13236) Unit!113631)

(assert (=> d!1460096 (= lt!1793477 (lemmaContainsTupThenGetReturnValue!874 lt!1793480 (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!382 (List!51744 K!12990 V!13236) List!51744)

(assert (=> d!1460096 (= lt!1793480 (insertNoDuplicatedKeys!382 (toList!5037 lt!1793395) (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40))))))

(assert (=> d!1460096 (= (+!1902 lt!1793395 (h!57696 oldBucket!40)) lt!1793479)))

(declare-fun b!4632532 () Bool)

(declare-fun res!1943913 () Bool)

(assert (=> b!4632532 (=> (not res!1943913) (not e!2889840))))

(assert (=> b!4632532 (= res!1943913 (= (getValueByKey!1502 (toList!5037 lt!1793479) (_1!29589 (h!57696 oldBucket!40))) (Some!11671 (_2!29589 (h!57696 oldBucket!40)))))))

(declare-fun b!4632533 () Bool)

(declare-fun contains!14724 (List!51744 tuple2!52590) Bool)

(assert (=> b!4632533 (= e!2889840 (contains!14724 (toList!5037 lt!1793479) (h!57696 oldBucket!40)))))

(assert (= (and d!1460096 res!1943912) b!4632532))

(assert (= (and b!4632532 res!1943913) b!4632533))

(declare-fun m!5484117 () Bool)

(assert (=> d!1460096 m!5484117))

(declare-fun m!5484119 () Bool)

(assert (=> d!1460096 m!5484119))

(declare-fun m!5484121 () Bool)

(assert (=> d!1460096 m!5484121))

(declare-fun m!5484123 () Bool)

(assert (=> d!1460096 m!5484123))

(declare-fun m!5484125 () Bool)

(assert (=> b!4632532 m!5484125))

(declare-fun m!5484127 () Bool)

(assert (=> b!4632533 m!5484127))

(assert (=> b!4632480 d!1460096))

(declare-fun d!1460098 () Bool)

(assert (=> d!1460098 (= (eq!851 lt!1793411 lt!1793414) (= (content!8874 (toList!5037 lt!1793411)) (content!8874 (toList!5037 lt!1793414))))))

(declare-fun bs!1028439 () Bool)

(assert (= bs!1028439 d!1460098))

(declare-fun m!5484129 () Bool)

(assert (=> bs!1028439 m!5484129))

(declare-fun m!5484131 () Bool)

(assert (=> bs!1028439 m!5484131))

(assert (=> b!4632478 d!1460098))

(declare-fun d!1460100 () Bool)

(assert (=> d!1460100 (= (eq!851 lt!1793400 lt!1793411) (= (content!8874 (toList!5037 lt!1793400)) (content!8874 (toList!5037 lt!1793411))))))

(declare-fun bs!1028440 () Bool)

(assert (= bs!1028440 d!1460100))

(declare-fun m!5484133 () Bool)

(assert (=> bs!1028440 m!5484133))

(assert (=> bs!1028440 m!5484129))

(assert (=> b!4632478 d!1460100))

(declare-fun d!1460102 () Bool)

(declare-fun e!2889843 () Bool)

(assert (=> d!1460102 e!2889843))

(declare-fun res!1943916 () Bool)

(assert (=> d!1460102 (=> (not res!1943916) (not e!2889843))))

(declare-fun lt!1793483 () ListMap!4341)

(assert (=> d!1460102 (= res!1943916 (not (contains!14721 lt!1793483 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!279 (List!51744 K!12990) List!51744)

(assert (=> d!1460102 (= lt!1793483 (ListMap!4342 (removePresrvNoDuplicatedKeys!279 (toList!5037 lt!1793401) key!4968)))))

(assert (=> d!1460102 (= (-!576 lt!1793401 key!4968) lt!1793483)))

(declare-fun b!4632536 () Bool)

(declare-datatypes ((List!51747 0))(
  ( (Nil!51623) (Cons!51623 (h!57701 K!12990) (t!358807 List!51747)) )
))
(declare-fun content!8875 (List!51747) (InoxSet K!12990))

(declare-fun keys!18210 (ListMap!4341) List!51747)

(assert (=> b!4632536 (= e!2889843 (= ((_ map and) (content!8875 (keys!18210 lt!1793401)) ((_ map not) (store ((as const (Array K!12990 Bool)) false) key!4968 true))) (content!8875 (keys!18210 lt!1793483))))))

(assert (= (and d!1460102 res!1943916) b!4632536))

(declare-fun m!5484135 () Bool)

(assert (=> d!1460102 m!5484135))

(declare-fun m!5484137 () Bool)

(assert (=> d!1460102 m!5484137))

(declare-fun m!5484139 () Bool)

(assert (=> b!4632536 m!5484139))

(declare-fun m!5484141 () Bool)

(assert (=> b!4632536 m!5484141))

(declare-fun m!5484143 () Bool)

(assert (=> b!4632536 m!5484143))

(declare-fun m!5484145 () Bool)

(assert (=> b!4632536 m!5484145))

(assert (=> b!4632536 m!5484143))

(declare-fun m!5484147 () Bool)

(assert (=> b!4632536 m!5484147))

(assert (=> b!4632536 m!5484139))

(assert (=> b!4632478 d!1460102))

(declare-fun d!1460104 () Bool)

(assert (=> d!1460104 (eq!851 (-!576 lt!1793410 key!4968) (-!576 lt!1793401 key!4968))))

(declare-fun lt!1793486 () Unit!113631)

(declare-fun choose!31550 (ListMap!4341 ListMap!4341 K!12990) Unit!113631)

(assert (=> d!1460104 (= lt!1793486 (choose!31550 lt!1793410 lt!1793401 key!4968))))

(assert (=> d!1460104 (eq!851 lt!1793410 lt!1793401)))

(assert (=> d!1460104 (= (lemmaRemovePreservesEq!32 lt!1793410 lt!1793401 key!4968) lt!1793486)))

(declare-fun bs!1028441 () Bool)

(assert (= bs!1028441 d!1460104))

(declare-fun m!5484149 () Bool)

(assert (=> bs!1028441 m!5484149))

(assert (=> bs!1028441 m!5483971))

(declare-fun m!5484151 () Bool)

(assert (=> bs!1028441 m!5484151))

(assert (=> bs!1028441 m!5483937))

(assert (=> bs!1028441 m!5483937))

(assert (=> bs!1028441 m!5483971))

(declare-fun m!5484153 () Bool)

(assert (=> bs!1028441 m!5484153))

(assert (=> b!4632478 d!1460104))

(declare-fun d!1460106 () Bool)

(declare-fun e!2889848 () Bool)

(assert (=> d!1460106 e!2889848))

(declare-fun res!1943919 () Bool)

(assert (=> d!1460106 (=> res!1943919 e!2889848)))

(declare-fun lt!1793498 () Bool)

(assert (=> d!1460106 (= res!1943919 (not lt!1793498))))

(declare-fun lt!1793497 () Bool)

(assert (=> d!1460106 (= lt!1793498 lt!1793497)))

(declare-fun lt!1793495 () Unit!113631)

(declare-fun e!2889849 () Unit!113631)

(assert (=> d!1460106 (= lt!1793495 e!2889849)))

(declare-fun c!792912 () Bool)

(assert (=> d!1460106 (= c!792912 lt!1793497)))

(declare-fun containsKey!2530 (List!51745 (_ BitVec 64)) Bool)

(assert (=> d!1460106 (= lt!1793497 (containsKey!2530 (toList!5038 lt!1793424) lt!1793425))))

(assert (=> d!1460106 (= (contains!14720 lt!1793424 lt!1793425) lt!1793498)))

(declare-fun b!4632543 () Bool)

(declare-fun lt!1793496 () Unit!113631)

(assert (=> b!4632543 (= e!2889849 lt!1793496)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1404 (List!51745 (_ BitVec 64)) Unit!113631)

(assert (=> b!4632543 (= lt!1793496 (lemmaContainsKeyImpliesGetValueByKeyDefined!1404 (toList!5038 lt!1793424) lt!1793425))))

(declare-datatypes ((Option!11673 0))(
  ( (None!11672) (Some!11672 (v!45854 List!51744)) )
))
(declare-fun isDefined!8937 (Option!11673) Bool)

(declare-fun getValueByKey!1503 (List!51745 (_ BitVec 64)) Option!11673)

(assert (=> b!4632543 (isDefined!8937 (getValueByKey!1503 (toList!5038 lt!1793424) lt!1793425))))

(declare-fun b!4632544 () Bool)

(declare-fun Unit!113660 () Unit!113631)

(assert (=> b!4632544 (= e!2889849 Unit!113660)))

(declare-fun b!4632545 () Bool)

(assert (=> b!4632545 (= e!2889848 (isDefined!8937 (getValueByKey!1503 (toList!5038 lt!1793424) lt!1793425)))))

(assert (= (and d!1460106 c!792912) b!4632543))

(assert (= (and d!1460106 (not c!792912)) b!4632544))

(assert (= (and d!1460106 (not res!1943919)) b!4632545))

(declare-fun m!5484155 () Bool)

(assert (=> d!1460106 m!5484155))

(declare-fun m!5484157 () Bool)

(assert (=> b!4632543 m!5484157))

(declare-fun m!5484159 () Bool)

(assert (=> b!4632543 m!5484159))

(assert (=> b!4632543 m!5484159))

(declare-fun m!5484161 () Bool)

(assert (=> b!4632543 m!5484161))

(assert (=> b!4632545 m!5484159))

(assert (=> b!4632545 m!5484159))

(assert (=> b!4632545 m!5484161))

(assert (=> b!4632468 d!1460106))

(declare-fun d!1460108 () Bool)

(assert (=> d!1460108 (containsKey!2528 oldBucket!40 key!4968)))

(declare-fun lt!1793501 () Unit!113631)

(declare-fun choose!31551 (List!51744 K!12990 Hashable!5933) Unit!113631)

(assert (=> d!1460108 (= lt!1793501 (choose!31551 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1460108 (noDuplicateKeys!1536 oldBucket!40)))

(assert (=> d!1460108 (= (lemmaGetPairDefinedThenContainsKey!82 oldBucket!40 key!4968 hashF!1389) lt!1793501)))

(declare-fun bs!1028442 () Bool)

(assert (= bs!1028442 d!1460108))

(assert (=> bs!1028442 m!5483903))

(declare-fun m!5484163 () Bool)

(assert (=> bs!1028442 m!5484163))

(assert (=> bs!1028442 m!5483955))

(assert (=> b!4632468 d!1460108))

(declare-fun d!1460110 () Bool)

(assert (=> d!1460110 (contains!14719 (toList!5038 lt!1793424) (tuple2!52593 lt!1793425 lt!1793415))))

(declare-fun lt!1793512 () Unit!113631)

(declare-fun choose!31552 (ListLongMap!3627 (_ BitVec 64) List!51744) Unit!113631)

(assert (=> d!1460110 (= lt!1793512 (choose!31552 lt!1793424 lt!1793425 lt!1793415))))

(assert (=> d!1460110 (contains!14720 lt!1793424 lt!1793425)))

(assert (=> d!1460110 (= (lemmaGetValueImpliesTupleContained!133 lt!1793424 lt!1793425 lt!1793415) lt!1793512)))

(declare-fun bs!1028443 () Bool)

(assert (= bs!1028443 d!1460110))

(declare-fun m!5484165 () Bool)

(assert (=> bs!1028443 m!5484165))

(declare-fun m!5484167 () Bool)

(assert (=> bs!1028443 m!5484167))

(assert (=> bs!1028443 m!5483911))

(assert (=> b!4632468 d!1460110))

(declare-fun d!1460112 () Bool)

(declare-fun res!1943924 () Bool)

(declare-fun e!2889856 () Bool)

(assert (=> d!1460112 (=> res!1943924 e!2889856)))

(assert (=> d!1460112 (= res!1943924 (and ((_ is Cons!51620) (t!358802 oldBucket!40)) (= (_1!29589 (h!57696 (t!358802 oldBucket!40))) key!4968)))))

(assert (=> d!1460112 (= (containsKey!2528 (t!358802 oldBucket!40) key!4968) e!2889856)))

(declare-fun b!4632555 () Bool)

(declare-fun e!2889857 () Bool)

(assert (=> b!4632555 (= e!2889856 e!2889857)))

(declare-fun res!1943925 () Bool)

(assert (=> b!4632555 (=> (not res!1943925) (not e!2889857))))

(assert (=> b!4632555 (= res!1943925 ((_ is Cons!51620) (t!358802 oldBucket!40)))))

(declare-fun b!4632556 () Bool)

(assert (=> b!4632556 (= e!2889857 (containsKey!2528 (t!358802 (t!358802 oldBucket!40)) key!4968))))

(assert (= (and d!1460112 (not res!1943924)) b!4632555))

(assert (= (and b!4632555 res!1943925) b!4632556))

(declare-fun m!5484169 () Bool)

(assert (=> b!4632556 m!5484169))

(assert (=> b!4632468 d!1460112))

(declare-fun b!4632579 () Bool)

(declare-fun e!2889875 () Bool)

(assert (=> b!4632579 (= e!2889875 (not (containsKey!2528 lt!1793415 key!4968)))))

(declare-fun b!4632580 () Bool)

(declare-fun e!2889874 () Option!11670)

(assert (=> b!4632580 (= e!2889874 (Some!11669 (h!57696 lt!1793415)))))

(declare-fun d!1460114 () Bool)

(declare-fun e!2889872 () Bool)

(assert (=> d!1460114 e!2889872))

(declare-fun res!1943941 () Bool)

(assert (=> d!1460114 (=> res!1943941 e!2889872)))

(assert (=> d!1460114 (= res!1943941 e!2889875)))

(declare-fun res!1943942 () Bool)

(assert (=> d!1460114 (=> (not res!1943942) (not e!2889875))))

(declare-fun lt!1793549 () Option!11670)

(declare-fun isEmpty!28955 (Option!11670) Bool)

(assert (=> d!1460114 (= res!1943942 (isEmpty!28955 lt!1793549))))

(assert (=> d!1460114 (= lt!1793549 e!2889874)))

(declare-fun c!792920 () Bool)

(assert (=> d!1460114 (= c!792920 (and ((_ is Cons!51620) lt!1793415) (= (_1!29589 (h!57696 lt!1793415)) key!4968)))))

(assert (=> d!1460114 (noDuplicateKeys!1536 lt!1793415)))

(assert (=> d!1460114 (= (getPair!328 lt!1793415 key!4968) lt!1793549)))

(declare-fun b!4632581 () Bool)

(declare-fun e!2889873 () Option!11670)

(assert (=> b!4632581 (= e!2889874 e!2889873)))

(declare-fun c!792919 () Bool)

(assert (=> b!4632581 (= c!792919 ((_ is Cons!51620) lt!1793415))))

(declare-fun b!4632582 () Bool)

(assert (=> b!4632582 (= e!2889873 None!11669)))

(declare-fun b!4632583 () Bool)

(declare-fun res!1943943 () Bool)

(declare-fun e!2889876 () Bool)

(assert (=> b!4632583 (=> (not res!1943943) (not e!2889876))))

(declare-fun get!17142 (Option!11670) tuple2!52590)

(assert (=> b!4632583 (= res!1943943 (= (_1!29589 (get!17142 lt!1793549)) key!4968))))

(declare-fun b!4632584 () Bool)

(assert (=> b!4632584 (= e!2889872 e!2889876)))

(declare-fun res!1943940 () Bool)

(assert (=> b!4632584 (=> (not res!1943940) (not e!2889876))))

(assert (=> b!4632584 (= res!1943940 (isDefined!8935 lt!1793549))))

(declare-fun b!4632585 () Bool)

(assert (=> b!4632585 (= e!2889873 (getPair!328 (t!358802 lt!1793415) key!4968))))

(declare-fun b!4632586 () Bool)

(assert (=> b!4632586 (= e!2889876 (contains!14724 lt!1793415 (get!17142 lt!1793549)))))

(assert (= (and d!1460114 c!792920) b!4632580))

(assert (= (and d!1460114 (not c!792920)) b!4632581))

(assert (= (and b!4632581 c!792919) b!4632585))

(assert (= (and b!4632581 (not c!792919)) b!4632582))

(assert (= (and d!1460114 res!1943942) b!4632579))

(assert (= (and d!1460114 (not res!1943941)) b!4632584))

(assert (= (and b!4632584 res!1943940) b!4632583))

(assert (= (and b!4632583 res!1943943) b!4632586))

(declare-fun m!5484171 () Bool)

(assert (=> b!4632579 m!5484171))

(declare-fun m!5484173 () Bool)

(assert (=> b!4632583 m!5484173))

(assert (=> b!4632586 m!5484173))

(assert (=> b!4632586 m!5484173))

(declare-fun m!5484175 () Bool)

(assert (=> b!4632586 m!5484175))

(declare-fun m!5484177 () Bool)

(assert (=> d!1460114 m!5484177))

(declare-fun m!5484179 () Bool)

(assert (=> d!1460114 m!5484179))

(declare-fun m!5484181 () Bool)

(assert (=> b!4632584 m!5484181))

(declare-fun m!5484183 () Bool)

(assert (=> b!4632585 m!5484183))

(assert (=> b!4632468 d!1460114))

(declare-fun bs!1028447 () Bool)

(declare-fun d!1460116 () Bool)

(assert (= bs!1028447 (and d!1460116 b!4632468)))

(declare-fun lambda!194054 () Int)

(assert (=> bs!1028447 (= lambda!194054 lambda!194010)))

(assert (=> d!1460116 (contains!14720 lt!1793424 (hash!3580 hashF!1389 key!4968))))

(declare-fun lt!1793573 () Unit!113631)

(declare-fun choose!31553 (ListLongMap!3627 K!12990 Hashable!5933) Unit!113631)

(assert (=> d!1460116 (= lt!1793573 (choose!31553 lt!1793424 key!4968 hashF!1389))))

(assert (=> d!1460116 (forall!10874 (toList!5038 lt!1793424) lambda!194054)))

(assert (=> d!1460116 (= (lemmaInGenMapThenLongMapContainsHash!534 lt!1793424 key!4968 hashF!1389) lt!1793573)))

(declare-fun bs!1028448 () Bool)

(assert (= bs!1028448 d!1460116))

(assert (=> bs!1028448 m!5483847))

(assert (=> bs!1028448 m!5483847))

(declare-fun m!5484219 () Bool)

(assert (=> bs!1028448 m!5484219))

(declare-fun m!5484221 () Bool)

(assert (=> bs!1028448 m!5484221))

(declare-fun m!5484223 () Bool)

(assert (=> bs!1028448 m!5484223))

(assert (=> b!4632468 d!1460116))

(declare-fun bs!1028489 () Bool)

(declare-fun d!1460124 () Bool)

(assert (= bs!1028489 (and d!1460124 b!4632468)))

(declare-fun lambda!194070 () Int)

(assert (=> bs!1028489 (= lambda!194070 lambda!194010)))

(declare-fun bs!1028490 () Bool)

(assert (= bs!1028490 (and d!1460124 d!1460116)))

(assert (=> bs!1028490 (= lambda!194070 lambda!194054)))

(declare-fun e!2889911 () Bool)

(assert (=> d!1460124 e!2889911))

(declare-fun res!1943972 () Bool)

(assert (=> d!1460124 (=> (not res!1943972) (not e!2889911))))

(assert (=> d!1460124 (= res!1943972 (forall!10874 (toList!5038 lt!1793424) lambda!194070))))

(declare-fun lt!1793669 () Unit!113631)

(declare-fun choose!31554 (ListLongMap!3627 K!12990 Hashable!5933) Unit!113631)

(assert (=> d!1460124 (= lt!1793669 (choose!31554 lt!1793424 key!4968 hashF!1389))))

(assert (=> d!1460124 (forall!10874 (toList!5038 lt!1793424) lambda!194070)))

(assert (=> d!1460124 (= (lemmaInGenMapThenGetPairDefined!124 lt!1793424 key!4968 hashF!1389) lt!1793669)))

(declare-fun b!4632646 () Bool)

(declare-fun lt!1793665 () (_ BitVec 64))

(declare-fun lt!1793668 () List!51744)

(declare-fun e!2889910 () Bool)

(assert (=> b!4632646 (= e!2889910 (= (getValueByKey!1503 (toList!5038 lt!1793424) lt!1793665) (Some!11672 lt!1793668)))))

(declare-fun b!4632645 () Bool)

(assert (=> b!4632645 (= e!2889911 (isDefined!8935 (getPair!328 (apply!12201 lt!1793424 (hash!3580 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1793667 () Unit!113631)

(assert (=> b!4632645 (= lt!1793667 (forallContained!3106 (toList!5038 lt!1793424) lambda!194070 (tuple2!52593 (hash!3580 hashF!1389 key!4968) (apply!12201 lt!1793424 (hash!3580 hashF!1389 key!4968)))))))

(declare-fun lt!1793670 () Unit!113631)

(declare-fun lt!1793671 () Unit!113631)

(assert (=> b!4632645 (= lt!1793670 lt!1793671)))

(assert (=> b!4632645 (contains!14719 (toList!5038 lt!1793424) (tuple2!52593 lt!1793665 lt!1793668))))

(assert (=> b!4632645 (= lt!1793671 (lemmaGetValueImpliesTupleContained!133 lt!1793424 lt!1793665 lt!1793668))))

(assert (=> b!4632645 e!2889910))

(declare-fun res!1943975 () Bool)

(assert (=> b!4632645 (=> (not res!1943975) (not e!2889910))))

(assert (=> b!4632645 (= res!1943975 (contains!14720 lt!1793424 lt!1793665))))

(assert (=> b!4632645 (= lt!1793668 (apply!12201 lt!1793424 (hash!3580 hashF!1389 key!4968)))))

(assert (=> b!4632645 (= lt!1793665 (hash!3580 hashF!1389 key!4968))))

(declare-fun lt!1793664 () Unit!113631)

(declare-fun lt!1793666 () Unit!113631)

(assert (=> b!4632645 (= lt!1793664 lt!1793666)))

(assert (=> b!4632645 (contains!14720 lt!1793424 (hash!3580 hashF!1389 key!4968))))

(assert (=> b!4632645 (= lt!1793666 (lemmaInGenMapThenLongMapContainsHash!534 lt!1793424 key!4968 hashF!1389))))

(declare-fun b!4632643 () Bool)

(declare-fun res!1943974 () Bool)

(assert (=> b!4632643 (=> (not res!1943974) (not e!2889911))))

(declare-fun allKeysSameHashInMap!1555 (ListLongMap!3627 Hashable!5933) Bool)

(assert (=> b!4632643 (= res!1943974 (allKeysSameHashInMap!1555 lt!1793424 hashF!1389))))

(declare-fun b!4632644 () Bool)

(declare-fun res!1943973 () Bool)

(assert (=> b!4632644 (=> (not res!1943973) (not e!2889911))))

(assert (=> b!4632644 (= res!1943973 (contains!14721 (extractMap!1592 (toList!5038 lt!1793424)) key!4968))))

(assert (= (and d!1460124 res!1943972) b!4632643))

(assert (= (and b!4632643 res!1943974) b!4632644))

(assert (= (and b!4632644 res!1943973) b!4632645))

(assert (= (and b!4632645 res!1943975) b!4632646))

(declare-fun m!5484337 () Bool)

(assert (=> b!4632643 m!5484337))

(declare-fun m!5484339 () Bool)

(assert (=> b!4632644 m!5484339))

(assert (=> b!4632644 m!5484339))

(declare-fun m!5484341 () Bool)

(assert (=> b!4632644 m!5484341))

(declare-fun m!5484343 () Bool)

(assert (=> b!4632646 m!5484343))

(declare-fun m!5484345 () Bool)

(assert (=> d!1460124 m!5484345))

(declare-fun m!5484347 () Bool)

(assert (=> d!1460124 m!5484347))

(assert (=> d!1460124 m!5484345))

(declare-fun m!5484349 () Bool)

(assert (=> b!4632645 m!5484349))

(declare-fun m!5484351 () Bool)

(assert (=> b!4632645 m!5484351))

(assert (=> b!4632645 m!5483901))

(declare-fun m!5484353 () Bool)

(assert (=> b!4632645 m!5484353))

(declare-fun m!5484355 () Bool)

(assert (=> b!4632645 m!5484355))

(declare-fun m!5484357 () Bool)

(assert (=> b!4632645 m!5484357))

(declare-fun m!5484359 () Bool)

(assert (=> b!4632645 m!5484359))

(assert (=> b!4632645 m!5483847))

(declare-fun m!5484361 () Bool)

(assert (=> b!4632645 m!5484361))

(assert (=> b!4632645 m!5484353))

(assert (=> b!4632645 m!5483847))

(assert (=> b!4632645 m!5484219))

(assert (=> b!4632645 m!5483847))

(assert (=> b!4632645 m!5484361))

(assert (=> b!4632468 d!1460124))

(declare-fun d!1460142 () Bool)

(declare-fun lt!1793677 () Bool)

(declare-fun content!8876 (List!51745) (InoxSet tuple2!52592))

(assert (=> d!1460142 (= lt!1793677 (select (content!8876 lt!1793422) lt!1793416))))

(declare-fun e!2889916 () Bool)

(assert (=> d!1460142 (= lt!1793677 e!2889916)))

(declare-fun res!1943981 () Bool)

(assert (=> d!1460142 (=> (not res!1943981) (not e!2889916))))

(assert (=> d!1460142 (= res!1943981 ((_ is Cons!51621) lt!1793422))))

(assert (=> d!1460142 (= (contains!14719 lt!1793422 lt!1793416) lt!1793677)))

(declare-fun b!4632651 () Bool)

(declare-fun e!2889917 () Bool)

(assert (=> b!4632651 (= e!2889916 e!2889917)))

(declare-fun res!1943980 () Bool)

(assert (=> b!4632651 (=> res!1943980 e!2889917)))

(assert (=> b!4632651 (= res!1943980 (= (h!57697 lt!1793422) lt!1793416))))

(declare-fun b!4632652 () Bool)

(assert (=> b!4632652 (= e!2889917 (contains!14719 (t!358803 lt!1793422) lt!1793416))))

(assert (= (and d!1460142 res!1943981) b!4632651))

(assert (= (and b!4632651 (not res!1943980)) b!4632652))

(declare-fun m!5484363 () Bool)

(assert (=> d!1460142 m!5484363))

(declare-fun m!5484365 () Bool)

(assert (=> d!1460142 m!5484365))

(declare-fun m!5484367 () Bool)

(assert (=> b!4632652 m!5484367))

(assert (=> b!4632468 d!1460142))

(declare-fun d!1460144 () Bool)

(declare-fun res!1943982 () Bool)

(declare-fun e!2889918 () Bool)

(assert (=> d!1460144 (=> res!1943982 e!2889918)))

(assert (=> d!1460144 (= res!1943982 (and ((_ is Cons!51620) oldBucket!40) (= (_1!29589 (h!57696 oldBucket!40)) key!4968)))))

(assert (=> d!1460144 (= (containsKey!2528 oldBucket!40 key!4968) e!2889918)))

(declare-fun b!4632653 () Bool)

(declare-fun e!2889919 () Bool)

(assert (=> b!4632653 (= e!2889918 e!2889919)))

(declare-fun res!1943983 () Bool)

(assert (=> b!4632653 (=> (not res!1943983) (not e!2889919))))

(assert (=> b!4632653 (= res!1943983 ((_ is Cons!51620) oldBucket!40))))

(declare-fun b!4632654 () Bool)

(assert (=> b!4632654 (= e!2889919 (containsKey!2528 (t!358802 oldBucket!40) key!4968))))

(assert (= (and d!1460144 (not res!1943982)) b!4632653))

(assert (= (and b!4632653 res!1943983) b!4632654))

(assert (=> b!4632654 m!5483907))

(assert (=> b!4632468 d!1460144))

(declare-fun d!1460146 () Bool)

(declare-fun dynLambda!21523 (Int tuple2!52592) Bool)

(assert (=> d!1460146 (dynLambda!21523 lambda!194010 lt!1793416)))

(declare-fun lt!1793689 () Unit!113631)

(declare-fun choose!31556 (List!51745 Int tuple2!52592) Unit!113631)

(assert (=> d!1460146 (= lt!1793689 (choose!31556 lt!1793422 lambda!194010 lt!1793416))))

(declare-fun e!2889924 () Bool)

(assert (=> d!1460146 e!2889924))

(declare-fun res!1943990 () Bool)

(assert (=> d!1460146 (=> (not res!1943990) (not e!2889924))))

(assert (=> d!1460146 (= res!1943990 (forall!10874 lt!1793422 lambda!194010))))

(assert (=> d!1460146 (= (forallContained!3106 lt!1793422 lambda!194010 lt!1793416) lt!1793689)))

(declare-fun b!4632661 () Bool)

(assert (=> b!4632661 (= e!2889924 (contains!14719 lt!1793422 lt!1793416))))

(assert (= (and d!1460146 res!1943990) b!4632661))

(declare-fun b_lambda!170909 () Bool)

(assert (=> (not b_lambda!170909) (not d!1460146)))

(declare-fun m!5484407 () Bool)

(assert (=> d!1460146 m!5484407))

(declare-fun m!5484409 () Bool)

(assert (=> d!1460146 m!5484409))

(declare-fun m!5484411 () Bool)

(assert (=> d!1460146 m!5484411))

(assert (=> b!4632661 m!5483913))

(assert (=> b!4632468 d!1460146))

(declare-fun d!1460158 () Bool)

(declare-fun get!17143 (Option!11673) List!51744)

(assert (=> d!1460158 (= (apply!12201 lt!1793424 lt!1793425) (get!17143 (getValueByKey!1503 (toList!5038 lt!1793424) lt!1793425)))))

(declare-fun bs!1028505 () Bool)

(assert (= bs!1028505 d!1460158))

(assert (=> bs!1028505 m!5484159))

(assert (=> bs!1028505 m!5484159))

(declare-fun m!5484413 () Bool)

(assert (=> bs!1028505 m!5484413))

(assert (=> b!4632468 d!1460158))

(declare-fun d!1460160 () Bool)

(assert (=> d!1460160 (= (isDefined!8935 (getPair!328 lt!1793415 key!4968)) (not (isEmpty!28955 (getPair!328 lt!1793415 key!4968))))))

(declare-fun bs!1028509 () Bool)

(assert (= bs!1028509 d!1460160))

(assert (=> bs!1028509 m!5483895))

(declare-fun m!5484415 () Bool)

(assert (=> bs!1028509 m!5484415))

(assert (=> b!4632468 d!1460160))

(declare-fun b!4632714 () Bool)

(declare-fun e!2889959 () List!51747)

(declare-fun getKeysList!681 (List!51744) List!51747)

(assert (=> b!4632714 (= e!2889959 (getKeysList!681 (toList!5037 lt!1793401)))))

(declare-fun b!4632715 () Bool)

(declare-fun e!2889960 () Bool)

(declare-fun contains!14725 (List!51747 K!12990) Bool)

(assert (=> b!4632715 (= e!2889960 (contains!14725 (keys!18210 lt!1793401) key!4968))))

(declare-fun b!4632717 () Bool)

(declare-fun e!2889961 () Bool)

(assert (=> b!4632717 (= e!2889961 (not (contains!14725 (keys!18210 lt!1793401) key!4968)))))

(declare-fun b!4632718 () Bool)

(declare-fun e!2889964 () Unit!113631)

(declare-fun e!2889962 () Unit!113631)

(assert (=> b!4632718 (= e!2889964 e!2889962)))

(declare-fun c!792952 () Bool)

(declare-fun call!323276 () Bool)

(assert (=> b!4632718 (= c!792952 call!323276)))

(declare-fun b!4632719 () Bool)

(declare-fun e!2889963 () Bool)

(assert (=> b!4632719 (= e!2889963 e!2889960)))

(declare-fun res!1944009 () Bool)

(assert (=> b!4632719 (=> (not res!1944009) (not e!2889960))))

(declare-fun isDefined!8938 (Option!11672) Bool)

(assert (=> b!4632719 (= res!1944009 (isDefined!8938 (getValueByKey!1502 (toList!5037 lt!1793401) key!4968)))))

(declare-fun b!4632720 () Bool)

(assert (=> b!4632720 false))

(declare-fun lt!1793743 () Unit!113631)

(declare-fun lt!1793746 () Unit!113631)

(assert (=> b!4632720 (= lt!1793743 lt!1793746)))

(declare-fun containsKey!2531 (List!51744 K!12990) Bool)

(assert (=> b!4632720 (containsKey!2531 (toList!5037 lt!1793401) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!680 (List!51744 K!12990) Unit!113631)

(assert (=> b!4632720 (= lt!1793746 (lemmaInGetKeysListThenContainsKey!680 (toList!5037 lt!1793401) key!4968))))

(declare-fun Unit!113669 () Unit!113631)

(assert (=> b!4632720 (= e!2889962 Unit!113669)))

(declare-fun b!4632721 () Bool)

(assert (=> b!4632721 (= e!2889959 (keys!18210 lt!1793401))))

(declare-fun b!4632722 () Bool)

(declare-fun Unit!113670 () Unit!113631)

(assert (=> b!4632722 (= e!2889962 Unit!113670)))

(declare-fun bm!323271 () Bool)

(assert (=> bm!323271 (= call!323276 (contains!14725 e!2889959 key!4968))))

(declare-fun c!792951 () Bool)

(declare-fun c!792953 () Bool)

(assert (=> bm!323271 (= c!792951 c!792953)))

(declare-fun d!1460162 () Bool)

(assert (=> d!1460162 e!2889963))

(declare-fun res!1944011 () Bool)

(assert (=> d!1460162 (=> res!1944011 e!2889963)))

(assert (=> d!1460162 (= res!1944011 e!2889961)))

(declare-fun res!1944010 () Bool)

(assert (=> d!1460162 (=> (not res!1944010) (not e!2889961))))

(declare-fun lt!1793742 () Bool)

(assert (=> d!1460162 (= res!1944010 (not lt!1793742))))

(declare-fun lt!1793741 () Bool)

(assert (=> d!1460162 (= lt!1793742 lt!1793741)))

(declare-fun lt!1793740 () Unit!113631)

(assert (=> d!1460162 (= lt!1793740 e!2889964)))

(assert (=> d!1460162 (= c!792953 lt!1793741)))

(assert (=> d!1460162 (= lt!1793741 (containsKey!2531 (toList!5037 lt!1793401) key!4968))))

(assert (=> d!1460162 (= (contains!14721 lt!1793401 key!4968) lt!1793742)))

(declare-fun b!4632716 () Bool)

(declare-fun lt!1793745 () Unit!113631)

(assert (=> b!4632716 (= e!2889964 lt!1793745)))

(declare-fun lt!1793739 () Unit!113631)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1405 (List!51744 K!12990) Unit!113631)

(assert (=> b!4632716 (= lt!1793739 (lemmaContainsKeyImpliesGetValueByKeyDefined!1405 (toList!5037 lt!1793401) key!4968))))

(assert (=> b!4632716 (isDefined!8938 (getValueByKey!1502 (toList!5037 lt!1793401) key!4968))))

(declare-fun lt!1793744 () Unit!113631)

(assert (=> b!4632716 (= lt!1793744 lt!1793739)))

(declare-fun lemmaInListThenGetKeysListContains!676 (List!51744 K!12990) Unit!113631)

(assert (=> b!4632716 (= lt!1793745 (lemmaInListThenGetKeysListContains!676 (toList!5037 lt!1793401) key!4968))))

(assert (=> b!4632716 call!323276))

(assert (= (and d!1460162 c!792953) b!4632716))

(assert (= (and d!1460162 (not c!792953)) b!4632718))

(assert (= (and b!4632718 c!792952) b!4632720))

(assert (= (and b!4632718 (not c!792952)) b!4632722))

(assert (= (or b!4632716 b!4632718) bm!323271))

(assert (= (and bm!323271 c!792951) b!4632714))

(assert (= (and bm!323271 (not c!792951)) b!4632721))

(assert (= (and d!1460162 res!1944010) b!4632717))

(assert (= (and d!1460162 (not res!1944011)) b!4632719))

(assert (= (and b!4632719 res!1944009) b!4632715))

(assert (=> b!4632715 m!5484143))

(assert (=> b!4632715 m!5484143))

(declare-fun m!5484481 () Bool)

(assert (=> b!4632715 m!5484481))

(assert (=> b!4632721 m!5484143))

(declare-fun m!5484483 () Bool)

(assert (=> bm!323271 m!5484483))

(assert (=> b!4632717 m!5484143))

(assert (=> b!4632717 m!5484143))

(assert (=> b!4632717 m!5484481))

(declare-fun m!5484485 () Bool)

(assert (=> b!4632716 m!5484485))

(declare-fun m!5484487 () Bool)

(assert (=> b!4632716 m!5484487))

(assert (=> b!4632716 m!5484487))

(declare-fun m!5484489 () Bool)

(assert (=> b!4632716 m!5484489))

(declare-fun m!5484491 () Bool)

(assert (=> b!4632716 m!5484491))

(assert (=> b!4632719 m!5484487))

(assert (=> b!4632719 m!5484487))

(assert (=> b!4632719 m!5484489))

(declare-fun m!5484493 () Bool)

(assert (=> b!4632714 m!5484493))

(declare-fun m!5484495 () Bool)

(assert (=> b!4632720 m!5484495))

(declare-fun m!5484497 () Bool)

(assert (=> b!4632720 m!5484497))

(assert (=> d!1460162 m!5484495))

(assert (=> b!4632479 d!1460162))

(declare-fun bs!1028552 () Bool)

(declare-fun d!1460174 () Bool)

(assert (= bs!1028552 (and d!1460174 b!4632468)))

(declare-fun lambda!194084 () Int)

(assert (=> bs!1028552 (= lambda!194084 lambda!194010)))

(declare-fun bs!1028553 () Bool)

(assert (= bs!1028553 (and d!1460174 d!1460116)))

(assert (=> bs!1028553 (= lambda!194084 lambda!194054)))

(declare-fun bs!1028554 () Bool)

(assert (= bs!1028554 (and d!1460174 d!1460124)))

(assert (=> bs!1028554 (= lambda!194084 lambda!194070)))

(declare-fun lt!1793756 () ListMap!4341)

(declare-fun invariantList!1230 (List!51744) Bool)

(assert (=> d!1460174 (invariantList!1230 (toList!5037 lt!1793756))))

(declare-fun e!2889974 () ListMap!4341)

(assert (=> d!1460174 (= lt!1793756 e!2889974)))

(declare-fun c!792956 () Bool)

(assert (=> d!1460174 (= c!792956 ((_ is Cons!51621) lt!1793422))))

(assert (=> d!1460174 (forall!10874 lt!1793422 lambda!194084)))

(assert (=> d!1460174 (= (extractMap!1592 lt!1793422) lt!1793756)))

(declare-fun b!4632739 () Bool)

(assert (=> b!4632739 (= e!2889974 (addToMapMapFromBucket!997 (_2!29590 (h!57697 lt!1793422)) (extractMap!1592 (t!358803 lt!1793422))))))

(declare-fun b!4632740 () Bool)

(assert (=> b!4632740 (= e!2889974 (ListMap!4342 Nil!51620))))

(assert (= (and d!1460174 c!792956) b!4632739))

(assert (= (and d!1460174 (not c!792956)) b!4632740))

(declare-fun m!5484531 () Bool)

(assert (=> d!1460174 m!5484531))

(declare-fun m!5484533 () Bool)

(assert (=> d!1460174 m!5484533))

(declare-fun m!5484535 () Bool)

(assert (=> b!4632739 m!5484535))

(assert (=> b!4632739 m!5484535))

(declare-fun m!5484537 () Bool)

(assert (=> b!4632739 m!5484537))

(assert (=> b!4632479 d!1460174))

(declare-fun d!1460186 () Bool)

(declare-fun lt!1793757 () List!51744)

(assert (=> d!1460186 (not (containsKey!2528 lt!1793757 key!4968))))

(declare-fun e!2889975 () List!51744)

(assert (=> d!1460186 (= lt!1793757 e!2889975)))

(declare-fun c!792958 () Bool)

(assert (=> d!1460186 (= c!792958 (and ((_ is Cons!51620) (t!358802 oldBucket!40)) (= (_1!29589 (h!57696 (t!358802 oldBucket!40))) key!4968)))))

(assert (=> d!1460186 (noDuplicateKeys!1536 (t!358802 oldBucket!40))))

(assert (=> d!1460186 (= (removePairForKey!1159 (t!358802 oldBucket!40) key!4968) lt!1793757)))

(declare-fun b!4632743 () Bool)

(declare-fun e!2889976 () List!51744)

(assert (=> b!4632743 (= e!2889976 (Cons!51620 (h!57696 (t!358802 oldBucket!40)) (removePairForKey!1159 (t!358802 (t!358802 oldBucket!40)) key!4968)))))

(declare-fun b!4632742 () Bool)

(assert (=> b!4632742 (= e!2889975 e!2889976)))

(declare-fun c!792957 () Bool)

(assert (=> b!4632742 (= c!792957 ((_ is Cons!51620) (t!358802 oldBucket!40)))))

(declare-fun b!4632744 () Bool)

(assert (=> b!4632744 (= e!2889976 Nil!51620)))

(declare-fun b!4632741 () Bool)

(assert (=> b!4632741 (= e!2889975 (t!358802 (t!358802 oldBucket!40)))))

(assert (= (and d!1460186 c!792958) b!4632741))

(assert (= (and d!1460186 (not c!792958)) b!4632742))

(assert (= (and b!4632742 c!792957) b!4632743))

(assert (= (and b!4632742 (not c!792957)) b!4632744))

(declare-fun m!5484539 () Bool)

(assert (=> d!1460186 m!5484539))

(declare-fun m!5484541 () Bool)

(assert (=> d!1460186 m!5484541))

(declare-fun m!5484543 () Bool)

(assert (=> b!4632743 m!5484543))

(assert (=> b!4632477 d!1460186))

(declare-fun d!1460188 () Bool)

(assert (=> d!1460188 (= (eq!851 lt!1793398 (+!1902 lt!1793395 lt!1793409)) (= (content!8874 (toList!5037 lt!1793398)) (content!8874 (toList!5037 (+!1902 lt!1793395 lt!1793409)))))))

(declare-fun bs!1028555 () Bool)

(assert (= bs!1028555 d!1460188))

(assert (=> bs!1028555 m!5484113))

(declare-fun m!5484545 () Bool)

(assert (=> bs!1028555 m!5484545))

(assert (=> b!4632467 d!1460188))

(declare-fun d!1460190 () Bool)

(declare-fun e!2889977 () Bool)

(assert (=> d!1460190 e!2889977))

(declare-fun res!1944020 () Bool)

(assert (=> d!1460190 (=> (not res!1944020) (not e!2889977))))

(declare-fun lt!1793760 () ListMap!4341)

(assert (=> d!1460190 (= res!1944020 (contains!14721 lt!1793760 (_1!29589 lt!1793409)))))

(declare-fun lt!1793761 () List!51744)

(assert (=> d!1460190 (= lt!1793760 (ListMap!4342 lt!1793761))))

(declare-fun lt!1793759 () Unit!113631)

(declare-fun lt!1793758 () Unit!113631)

(assert (=> d!1460190 (= lt!1793759 lt!1793758)))

(assert (=> d!1460190 (= (getValueByKey!1502 lt!1793761 (_1!29589 lt!1793409)) (Some!11671 (_2!29589 lt!1793409)))))

(assert (=> d!1460190 (= lt!1793758 (lemmaContainsTupThenGetReturnValue!874 lt!1793761 (_1!29589 lt!1793409) (_2!29589 lt!1793409)))))

(assert (=> d!1460190 (= lt!1793761 (insertNoDuplicatedKeys!382 (toList!5037 lt!1793395) (_1!29589 lt!1793409) (_2!29589 lt!1793409)))))

(assert (=> d!1460190 (= (+!1902 lt!1793395 lt!1793409) lt!1793760)))

(declare-fun b!4632745 () Bool)

(declare-fun res!1944021 () Bool)

(assert (=> b!4632745 (=> (not res!1944021) (not e!2889977))))

(assert (=> b!4632745 (= res!1944021 (= (getValueByKey!1502 (toList!5037 lt!1793760) (_1!29589 lt!1793409)) (Some!11671 (_2!29589 lt!1793409))))))

(declare-fun b!4632746 () Bool)

(assert (=> b!4632746 (= e!2889977 (contains!14724 (toList!5037 lt!1793760) lt!1793409))))

(assert (= (and d!1460190 res!1944020) b!4632745))

(assert (= (and b!4632745 res!1944021) b!4632746))

(declare-fun m!5484547 () Bool)

(assert (=> d!1460190 m!5484547))

(declare-fun m!5484549 () Bool)

(assert (=> d!1460190 m!5484549))

(declare-fun m!5484551 () Bool)

(assert (=> d!1460190 m!5484551))

(declare-fun m!5484553 () Bool)

(assert (=> d!1460190 m!5484553))

(declare-fun m!5484555 () Bool)

(assert (=> b!4632745 m!5484555))

(declare-fun m!5484557 () Bool)

(assert (=> b!4632746 m!5484557))

(assert (=> b!4632467 d!1460190))

(declare-fun bs!1028556 () Bool)

(declare-fun d!1460192 () Bool)

(assert (= bs!1028556 (and d!1460192 b!4632468)))

(declare-fun lambda!194085 () Int)

(assert (=> bs!1028556 (= lambda!194085 lambda!194010)))

(declare-fun bs!1028557 () Bool)

(assert (= bs!1028557 (and d!1460192 d!1460116)))

(assert (=> bs!1028557 (= lambda!194085 lambda!194054)))

(declare-fun bs!1028558 () Bool)

(assert (= bs!1028558 (and d!1460192 d!1460124)))

(assert (=> bs!1028558 (= lambda!194085 lambda!194070)))

(declare-fun bs!1028559 () Bool)

(assert (= bs!1028559 (and d!1460192 d!1460174)))

(assert (=> bs!1028559 (= lambda!194085 lambda!194084)))

(declare-fun lt!1793764 () ListMap!4341)

(assert (=> d!1460192 (invariantList!1230 (toList!5037 lt!1793764))))

(declare-fun e!2889980 () ListMap!4341)

(assert (=> d!1460192 (= lt!1793764 e!2889980)))

(declare-fun c!792959 () Bool)

(assert (=> d!1460192 (= c!792959 ((_ is Cons!51621) (Cons!51621 (tuple2!52593 hash!414 lt!1793413) Nil!51621)))))

(assert (=> d!1460192 (forall!10874 (Cons!51621 (tuple2!52593 hash!414 lt!1793413) Nil!51621) lambda!194085)))

(assert (=> d!1460192 (= (extractMap!1592 (Cons!51621 (tuple2!52593 hash!414 lt!1793413) Nil!51621)) lt!1793764)))

(declare-fun b!4632749 () Bool)

(assert (=> b!4632749 (= e!2889980 (addToMapMapFromBucket!997 (_2!29590 (h!57697 (Cons!51621 (tuple2!52593 hash!414 lt!1793413) Nil!51621))) (extractMap!1592 (t!358803 (Cons!51621 (tuple2!52593 hash!414 lt!1793413) Nil!51621)))))))

(declare-fun b!4632750 () Bool)

(assert (=> b!4632750 (= e!2889980 (ListMap!4342 Nil!51620))))

(assert (= (and d!1460192 c!792959) b!4632749))

(assert (= (and d!1460192 (not c!792959)) b!4632750))

(declare-fun m!5484565 () Bool)

(assert (=> d!1460192 m!5484565))

(declare-fun m!5484567 () Bool)

(assert (=> d!1460192 m!5484567))

(declare-fun m!5484569 () Bool)

(assert (=> b!4632749 m!5484569))

(assert (=> b!4632749 m!5484569))

(declare-fun m!5484571 () Bool)

(assert (=> b!4632749 m!5484571))

(assert (=> b!4632467 d!1460192))

(declare-fun bs!1028560 () Bool)

(declare-fun d!1460196 () Bool)

(assert (= bs!1028560 (and d!1460196 d!1460124)))

(declare-fun lambda!194086 () Int)

(assert (=> bs!1028560 (= lambda!194086 lambda!194070)))

(declare-fun bs!1028561 () Bool)

(assert (= bs!1028561 (and d!1460196 d!1460192)))

(assert (=> bs!1028561 (= lambda!194086 lambda!194085)))

(declare-fun bs!1028562 () Bool)

(assert (= bs!1028562 (and d!1460196 b!4632468)))

(assert (=> bs!1028562 (= lambda!194086 lambda!194010)))

(declare-fun bs!1028564 () Bool)

(assert (= bs!1028564 (and d!1460196 d!1460174)))

(assert (=> bs!1028564 (= lambda!194086 lambda!194084)))

(declare-fun bs!1028565 () Bool)

(assert (= bs!1028565 (and d!1460196 d!1460116)))

(assert (=> bs!1028565 (= lambda!194086 lambda!194054)))

(declare-fun lt!1793766 () ListMap!4341)

(assert (=> d!1460196 (invariantList!1230 (toList!5037 lt!1793766))))

(declare-fun e!2889982 () ListMap!4341)

(assert (=> d!1460196 (= lt!1793766 e!2889982)))

(declare-fun c!792960 () Bool)

(assert (=> d!1460196 (= c!792960 ((_ is Cons!51621) lt!1793402))))

(assert (=> d!1460196 (forall!10874 lt!1793402 lambda!194086)))

(assert (=> d!1460196 (= (extractMap!1592 lt!1793402) lt!1793766)))

(declare-fun b!4632752 () Bool)

(assert (=> b!4632752 (= e!2889982 (addToMapMapFromBucket!997 (_2!29590 (h!57697 lt!1793402)) (extractMap!1592 (t!358803 lt!1793402))))))

(declare-fun b!4632753 () Bool)

(assert (=> b!4632753 (= e!2889982 (ListMap!4342 Nil!51620))))

(assert (= (and d!1460196 c!792960) b!4632752))

(assert (= (and d!1460196 (not c!792960)) b!4632753))

(declare-fun m!5484575 () Bool)

(assert (=> d!1460196 m!5484575))

(declare-fun m!5484577 () Bool)

(assert (=> d!1460196 m!5484577))

(declare-fun m!5484579 () Bool)

(assert (=> b!4632752 m!5484579))

(assert (=> b!4632752 m!5484579))

(declare-fun m!5484581 () Bool)

(assert (=> b!4632752 m!5484581))

(assert (=> b!4632467 d!1460196))

(declare-fun d!1460200 () Bool)

(declare-fun res!1944035 () Bool)

(declare-fun e!2889993 () Bool)

(assert (=> d!1460200 (=> res!1944035 e!2889993)))

(assert (=> d!1460200 (= res!1944035 ((_ is Nil!51621) lt!1793402))))

(assert (=> d!1460200 (= (forall!10874 lt!1793402 lambda!194010) e!2889993)))

(declare-fun b!4632764 () Bool)

(declare-fun e!2889994 () Bool)

(assert (=> b!4632764 (= e!2889993 e!2889994)))

(declare-fun res!1944036 () Bool)

(assert (=> b!4632764 (=> (not res!1944036) (not e!2889994))))

(assert (=> b!4632764 (= res!1944036 (dynLambda!21523 lambda!194010 (h!57697 lt!1793402)))))

(declare-fun b!4632765 () Bool)

(assert (=> b!4632765 (= e!2889994 (forall!10874 (t!358803 lt!1793402) lambda!194010))))

(assert (= (and d!1460200 (not res!1944035)) b!4632764))

(assert (= (and b!4632764 res!1944036) b!4632765))

(declare-fun b_lambda!170915 () Bool)

(assert (=> (not b_lambda!170915) (not b!4632764)))

(declare-fun m!5484585 () Bool)

(assert (=> b!4632764 m!5484585))

(declare-fun m!5484587 () Bool)

(assert (=> b!4632765 m!5484587))

(assert (=> b!4632476 d!1460200))

(declare-fun d!1460204 () Bool)

(assert (=> d!1460204 (= (eq!851 lt!1793427 (+!1902 lt!1793395 (h!57696 oldBucket!40))) (= (content!8874 (toList!5037 lt!1793427)) (content!8874 (toList!5037 (+!1902 lt!1793395 (h!57696 oldBucket!40))))))))

(declare-fun bs!1028566 () Bool)

(assert (= bs!1028566 d!1460204))

(declare-fun m!5484589 () Bool)

(assert (=> bs!1028566 m!5484589))

(assert (=> bs!1028566 m!5484115))

(assert (=> b!4632476 d!1460204))

(assert (=> b!4632476 d!1460096))

(declare-fun d!1460206 () Bool)

(assert (=> d!1460206 (eq!851 (+!1902 lt!1793399 (tuple2!52591 (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40)))) (+!1902 lt!1793395 (tuple2!52591 (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40)))))))

(declare-fun lt!1793775 () Unit!113631)

(declare-fun choose!31557 (ListMap!4341 ListMap!4341 K!12990 V!13236) Unit!113631)

(assert (=> d!1460206 (= lt!1793775 (choose!31557 lt!1793399 lt!1793395 (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40))))))

(assert (=> d!1460206 (eq!851 lt!1793399 lt!1793395)))

(assert (=> d!1460206 (= (lemmaAddToEqMapsPreservesEq!48 lt!1793399 lt!1793395 (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40))) lt!1793775)))

(declare-fun bs!1028568 () Bool)

(assert (= bs!1028568 d!1460206))

(declare-fun m!5484601 () Bool)

(assert (=> bs!1028568 m!5484601))

(declare-fun m!5484603 () Bool)

(assert (=> bs!1028568 m!5484603))

(declare-fun m!5484605 () Bool)

(assert (=> bs!1028568 m!5484605))

(declare-fun m!5484607 () Bool)

(assert (=> bs!1028568 m!5484607))

(assert (=> bs!1028568 m!5484603))

(declare-fun m!5484609 () Bool)

(assert (=> bs!1028568 m!5484609))

(assert (=> bs!1028568 m!5484601))

(assert (=> b!4632476 d!1460206))

(declare-fun d!1460212 () Bool)

(declare-fun res!1944047 () Bool)

(declare-fun e!2890005 () Bool)

(assert (=> d!1460212 (=> res!1944047 e!2890005)))

(assert (=> d!1460212 (= res!1944047 (not ((_ is Cons!51620) oldBucket!40)))))

(assert (=> d!1460212 (= (noDuplicateKeys!1536 oldBucket!40) e!2890005)))

(declare-fun b!4632777 () Bool)

(declare-fun e!2890006 () Bool)

(assert (=> b!4632777 (= e!2890005 e!2890006)))

(declare-fun res!1944048 () Bool)

(assert (=> b!4632777 (=> (not res!1944048) (not e!2890006))))

(assert (=> b!4632777 (= res!1944048 (not (containsKey!2528 (t!358802 oldBucket!40) (_1!29589 (h!57696 oldBucket!40)))))))

(declare-fun b!4632778 () Bool)

(assert (=> b!4632778 (= e!2890006 (noDuplicateKeys!1536 (t!358802 oldBucket!40)))))

(assert (= (and d!1460212 (not res!1944047)) b!4632777))

(assert (= (and b!4632777 res!1944048) b!4632778))

(declare-fun m!5484611 () Bool)

(assert (=> b!4632777 m!5484611))

(assert (=> b!4632778 m!5484541))

(assert (=> start!465068 d!1460212))

(declare-fun d!1460214 () Bool)

(assert (=> d!1460214 (eq!851 (addToMapMapFromBucket!997 (Cons!51620 lt!1793409 lt!1793413) (ListMap!4342 Nil!51620)) (+!1902 (addToMapMapFromBucket!997 lt!1793413 (ListMap!4342 Nil!51620)) lt!1793409))))

(declare-fun lt!1793796 () Unit!113631)

(declare-fun choose!31558 (tuple2!52590 List!51744 ListMap!4341) Unit!113631)

(assert (=> d!1460214 (= lt!1793796 (choose!31558 lt!1793409 lt!1793413 (ListMap!4342 Nil!51620)))))

(assert (=> d!1460214 (noDuplicateKeys!1536 lt!1793413)))

(assert (=> d!1460214 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!102 lt!1793409 lt!1793413 (ListMap!4342 Nil!51620)) lt!1793796)))

(declare-fun bs!1028578 () Bool)

(assert (= bs!1028578 d!1460214))

(assert (=> bs!1028578 m!5483861))

(assert (=> bs!1028578 m!5483873))

(assert (=> bs!1028578 m!5483883))

(declare-fun m!5484629 () Bool)

(assert (=> bs!1028578 m!5484629))

(declare-fun m!5484631 () Bool)

(assert (=> bs!1028578 m!5484631))

(assert (=> bs!1028578 m!5483861))

(assert (=> bs!1028578 m!5483871))

(assert (=> bs!1028578 m!5483871))

(assert (=> bs!1028578 m!5483873))

(assert (=> b!4632474 d!1460214))

(declare-fun bs!1028579 () Bool)

(declare-fun d!1460224 () Bool)

(assert (= bs!1028579 (and d!1460224 d!1460196)))

(declare-fun lambda!194090 () Int)

(assert (=> bs!1028579 (= lambda!194090 lambda!194086)))

(declare-fun bs!1028580 () Bool)

(assert (= bs!1028580 (and d!1460224 d!1460124)))

(assert (=> bs!1028580 (= lambda!194090 lambda!194070)))

(declare-fun bs!1028581 () Bool)

(assert (= bs!1028581 (and d!1460224 d!1460192)))

(assert (=> bs!1028581 (= lambda!194090 lambda!194085)))

(declare-fun bs!1028582 () Bool)

(assert (= bs!1028582 (and d!1460224 b!4632468)))

(assert (=> bs!1028582 (= lambda!194090 lambda!194010)))

(declare-fun bs!1028583 () Bool)

(assert (= bs!1028583 (and d!1460224 d!1460174)))

(assert (=> bs!1028583 (= lambda!194090 lambda!194084)))

(declare-fun bs!1028584 () Bool)

(assert (= bs!1028584 (and d!1460224 d!1460116)))

(assert (=> bs!1028584 (= lambda!194090 lambda!194054)))

(declare-fun lt!1793797 () ListMap!4341)

(assert (=> d!1460224 (invariantList!1230 (toList!5037 lt!1793797))))

(declare-fun e!2890015 () ListMap!4341)

(assert (=> d!1460224 (= lt!1793797 e!2890015)))

(declare-fun c!792964 () Bool)

(assert (=> d!1460224 (= c!792964 ((_ is Cons!51621) lt!1793428))))

(assert (=> d!1460224 (forall!10874 lt!1793428 lambda!194090)))

(assert (=> d!1460224 (= (extractMap!1592 lt!1793428) lt!1793797)))

(declare-fun b!4632790 () Bool)

(assert (=> b!4632790 (= e!2890015 (addToMapMapFromBucket!997 (_2!29590 (h!57697 lt!1793428)) (extractMap!1592 (t!358803 lt!1793428))))))

(declare-fun b!4632791 () Bool)

(assert (=> b!4632791 (= e!2890015 (ListMap!4342 Nil!51620))))

(assert (= (and d!1460224 c!792964) b!4632790))

(assert (= (and d!1460224 (not c!792964)) b!4632791))

(declare-fun m!5484633 () Bool)

(assert (=> d!1460224 m!5484633))

(declare-fun m!5484635 () Bool)

(assert (=> d!1460224 m!5484635))

(declare-fun m!5484637 () Bool)

(assert (=> b!4632790 m!5484637))

(assert (=> b!4632790 m!5484637))

(declare-fun m!5484639 () Bool)

(assert (=> b!4632790 m!5484639))

(assert (=> b!4632474 d!1460224))

(declare-fun d!1460226 () Bool)

(declare-fun e!2890016 () Bool)

(assert (=> d!1460226 e!2890016))

(declare-fun res!1944054 () Bool)

(assert (=> d!1460226 (=> (not res!1944054) (not e!2890016))))

(declare-fun lt!1793800 () ListMap!4341)

(assert (=> d!1460226 (= res!1944054 (contains!14721 lt!1793800 (_1!29589 lt!1793409)))))

(declare-fun lt!1793801 () List!51744)

(assert (=> d!1460226 (= lt!1793800 (ListMap!4342 lt!1793801))))

(declare-fun lt!1793799 () Unit!113631)

(declare-fun lt!1793798 () Unit!113631)

(assert (=> d!1460226 (= lt!1793799 lt!1793798)))

(assert (=> d!1460226 (= (getValueByKey!1502 lt!1793801 (_1!29589 lt!1793409)) (Some!11671 (_2!29589 lt!1793409)))))

(assert (=> d!1460226 (= lt!1793798 (lemmaContainsTupThenGetReturnValue!874 lt!1793801 (_1!29589 lt!1793409) (_2!29589 lt!1793409)))))

(assert (=> d!1460226 (= lt!1793801 (insertNoDuplicatedKeys!382 (toList!5037 (addToMapMapFromBucket!997 lt!1793413 (ListMap!4342 Nil!51620))) (_1!29589 lt!1793409) (_2!29589 lt!1793409)))))

(assert (=> d!1460226 (= (+!1902 (addToMapMapFromBucket!997 lt!1793413 (ListMap!4342 Nil!51620)) lt!1793409) lt!1793800)))

(declare-fun b!4632792 () Bool)

(declare-fun res!1944055 () Bool)

(assert (=> b!4632792 (=> (not res!1944055) (not e!2890016))))

(assert (=> b!4632792 (= res!1944055 (= (getValueByKey!1502 (toList!5037 lt!1793800) (_1!29589 lt!1793409)) (Some!11671 (_2!29589 lt!1793409))))))

(declare-fun b!4632793 () Bool)

(assert (=> b!4632793 (= e!2890016 (contains!14724 (toList!5037 lt!1793800) lt!1793409))))

(assert (= (and d!1460226 res!1944054) b!4632792))

(assert (= (and b!4632792 res!1944055) b!4632793))

(declare-fun m!5484641 () Bool)

(assert (=> d!1460226 m!5484641))

(declare-fun m!5484643 () Bool)

(assert (=> d!1460226 m!5484643))

(declare-fun m!5484645 () Bool)

(assert (=> d!1460226 m!5484645))

(declare-fun m!5484647 () Bool)

(assert (=> d!1460226 m!5484647))

(declare-fun m!5484649 () Bool)

(assert (=> b!4632792 m!5484649))

(declare-fun m!5484651 () Bool)

(assert (=> b!4632793 m!5484651))

(assert (=> b!4632474 d!1460226))

(declare-fun bs!1028668 () Bool)

(declare-fun b!4632864 () Bool)

(assert (= bs!1028668 (and b!4632864 d!1460070)))

(declare-fun lambda!194132 () Int)

(assert (=> bs!1028668 (not (= lambda!194132 lambda!194017))))

(declare-fun bs!1028669 () Bool)

(assert (= bs!1028669 (and b!4632864 d!1460072)))

(assert (=> bs!1028669 (not (= lambda!194132 lambda!194018))))

(assert (=> b!4632864 true))

(declare-fun bs!1028670 () Bool)

(declare-fun b!4632867 () Bool)

(assert (= bs!1028670 (and b!4632867 d!1460070)))

(declare-fun lambda!194133 () Int)

(assert (=> bs!1028670 (not (= lambda!194133 lambda!194017))))

(declare-fun bs!1028671 () Bool)

(assert (= bs!1028671 (and b!4632867 d!1460072)))

(assert (=> bs!1028671 (not (= lambda!194133 lambda!194018))))

(declare-fun bs!1028672 () Bool)

(assert (= bs!1028672 (and b!4632867 b!4632864)))

(assert (=> bs!1028672 (= lambda!194133 lambda!194132)))

(assert (=> b!4632867 true))

(declare-fun lambda!194134 () Int)

(assert (=> bs!1028670 (not (= lambda!194134 lambda!194017))))

(assert (=> bs!1028671 (not (= lambda!194134 lambda!194018))))

(declare-fun lt!1793908 () ListMap!4341)

(assert (=> bs!1028672 (= (= lt!1793908 (ListMap!4342 Nil!51620)) (= lambda!194134 lambda!194132))))

(assert (=> b!4632867 (= (= lt!1793908 (ListMap!4342 Nil!51620)) (= lambda!194134 lambda!194133))))

(assert (=> b!4632867 true))

(declare-fun bs!1028673 () Bool)

(declare-fun d!1460228 () Bool)

(assert (= bs!1028673 (and d!1460228 b!4632867)))

(declare-fun lt!1793913 () ListMap!4341)

(declare-fun lambda!194135 () Int)

(assert (=> bs!1028673 (= (= lt!1793913 (ListMap!4342 Nil!51620)) (= lambda!194135 lambda!194133))))

(declare-fun bs!1028674 () Bool)

(assert (= bs!1028674 (and d!1460228 b!4632864)))

(assert (=> bs!1028674 (= (= lt!1793913 (ListMap!4342 Nil!51620)) (= lambda!194135 lambda!194132))))

(declare-fun bs!1028675 () Bool)

(assert (= bs!1028675 (and d!1460228 d!1460070)))

(assert (=> bs!1028675 (not (= lambda!194135 lambda!194017))))

(assert (=> bs!1028673 (= (= lt!1793913 lt!1793908) (= lambda!194135 lambda!194134))))

(declare-fun bs!1028676 () Bool)

(assert (= bs!1028676 (and d!1460228 d!1460072)))

(assert (=> bs!1028676 (not (= lambda!194135 lambda!194018))))

(assert (=> d!1460228 true))

(declare-fun c!792979 () Bool)

(declare-fun bm!323281 () Bool)

(declare-fun call!323288 () Bool)

(assert (=> bm!323281 (= call!323288 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) (ite c!792979 lambda!194132 lambda!194134)))))

(declare-fun call!323287 () Bool)

(declare-fun bm!323282 () Bool)

(assert (=> bm!323282 (= call!323287 (forall!10876 (ite c!792979 (toList!5037 (ListMap!4342 Nil!51620)) lt!1793413) (ite c!792979 lambda!194132 lambda!194134)))))

(declare-fun e!2890061 () ListMap!4341)

(assert (=> b!4632864 (= e!2890061 (ListMap!4342 Nil!51620))))

(declare-fun lt!1793916 () Unit!113631)

(declare-fun call!323286 () Unit!113631)

(assert (=> b!4632864 (= lt!1793916 call!323286)))

(assert (=> b!4632864 call!323287))

(declare-fun lt!1793905 () Unit!113631)

(assert (=> b!4632864 (= lt!1793905 lt!1793916)))

(assert (=> b!4632864 call!323288))

(declare-fun lt!1793918 () Unit!113631)

(declare-fun Unit!113684 () Unit!113631)

(assert (=> b!4632864 (= lt!1793918 Unit!113684)))

(declare-fun b!4632865 () Bool)

(declare-fun e!2890059 () Bool)

(assert (=> b!4632865 (= e!2890059 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194134))))

(declare-fun b!4632866 () Bool)

(declare-fun res!1944092 () Bool)

(declare-fun e!2890060 () Bool)

(assert (=> b!4632866 (=> (not res!1944092) (not e!2890060))))

(assert (=> b!4632866 (= res!1944092 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194135))))

(declare-fun b!4632868 () Bool)

(assert (=> b!4632868 (= e!2890060 (invariantList!1230 (toList!5037 lt!1793913)))))

(declare-fun bm!323283 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!532 (ListMap!4341) Unit!113631)

(assert (=> bm!323283 (= call!323286 (lemmaContainsAllItsOwnKeys!532 (ListMap!4342 Nil!51620)))))

(assert (=> d!1460228 e!2890060))

(declare-fun res!1944093 () Bool)

(assert (=> d!1460228 (=> (not res!1944093) (not e!2890060))))

(assert (=> d!1460228 (= res!1944093 (forall!10876 lt!1793413 lambda!194135))))

(assert (=> d!1460228 (= lt!1793913 e!2890061)))

(assert (=> d!1460228 (= c!792979 ((_ is Nil!51620) lt!1793413))))

(assert (=> d!1460228 (noDuplicateKeys!1536 lt!1793413)))

(assert (=> d!1460228 (= (addToMapMapFromBucket!997 lt!1793413 (ListMap!4342 Nil!51620)) lt!1793913)))

(assert (=> b!4632867 (= e!2890061 lt!1793908)))

(declare-fun lt!1793907 () ListMap!4341)

(assert (=> b!4632867 (= lt!1793907 (+!1902 (ListMap!4342 Nil!51620) (h!57696 lt!1793413)))))

(assert (=> b!4632867 (= lt!1793908 (addToMapMapFromBucket!997 (t!358802 lt!1793413) (+!1902 (ListMap!4342 Nil!51620) (h!57696 lt!1793413))))))

(declare-fun lt!1793914 () Unit!113631)

(assert (=> b!4632867 (= lt!1793914 call!323286)))

(assert (=> b!4632867 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194133)))

(declare-fun lt!1793899 () Unit!113631)

(assert (=> b!4632867 (= lt!1793899 lt!1793914)))

(assert (=> b!4632867 (forall!10876 (toList!5037 lt!1793907) lambda!194134)))

(declare-fun lt!1793902 () Unit!113631)

(declare-fun Unit!113685 () Unit!113631)

(assert (=> b!4632867 (= lt!1793902 Unit!113685)))

(assert (=> b!4632867 (forall!10876 (t!358802 lt!1793413) lambda!194134)))

(declare-fun lt!1793901 () Unit!113631)

(declare-fun Unit!113686 () Unit!113631)

(assert (=> b!4632867 (= lt!1793901 Unit!113686)))

(declare-fun lt!1793906 () Unit!113631)

(declare-fun Unit!113687 () Unit!113631)

(assert (=> b!4632867 (= lt!1793906 Unit!113687)))

(declare-fun lt!1793917 () Unit!113631)

(declare-fun forallContained!3108 (List!51744 Int tuple2!52590) Unit!113631)

(assert (=> b!4632867 (= lt!1793917 (forallContained!3108 (toList!5037 lt!1793907) lambda!194134 (h!57696 lt!1793413)))))

(assert (=> b!4632867 (contains!14721 lt!1793907 (_1!29589 (h!57696 lt!1793413)))))

(declare-fun lt!1793904 () Unit!113631)

(declare-fun Unit!113688 () Unit!113631)

(assert (=> b!4632867 (= lt!1793904 Unit!113688)))

(assert (=> b!4632867 (contains!14721 lt!1793908 (_1!29589 (h!57696 lt!1793413)))))

(declare-fun lt!1793912 () Unit!113631)

(declare-fun Unit!113689 () Unit!113631)

(assert (=> b!4632867 (= lt!1793912 Unit!113689)))

(assert (=> b!4632867 call!323287))

(declare-fun lt!1793919 () Unit!113631)

(declare-fun Unit!113690 () Unit!113631)

(assert (=> b!4632867 (= lt!1793919 Unit!113690)))

(assert (=> b!4632867 (forall!10876 (toList!5037 lt!1793907) lambda!194134)))

(declare-fun lt!1793911 () Unit!113631)

(declare-fun Unit!113691 () Unit!113631)

(assert (=> b!4632867 (= lt!1793911 Unit!113691)))

(declare-fun lt!1793900 () Unit!113631)

(declare-fun Unit!113692 () Unit!113631)

(assert (=> b!4632867 (= lt!1793900 Unit!113692)))

(declare-fun lt!1793915 () Unit!113631)

(declare-fun addForallContainsKeyThenBeforeAdding!531 (ListMap!4341 ListMap!4341 K!12990 V!13236) Unit!113631)

(assert (=> b!4632867 (= lt!1793915 (addForallContainsKeyThenBeforeAdding!531 (ListMap!4342 Nil!51620) lt!1793908 (_1!29589 (h!57696 lt!1793413)) (_2!29589 (h!57696 lt!1793413))))))

(assert (=> b!4632867 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194134)))

(declare-fun lt!1793909 () Unit!113631)

(assert (=> b!4632867 (= lt!1793909 lt!1793915)))

(assert (=> b!4632867 call!323288))

(declare-fun lt!1793903 () Unit!113631)

(declare-fun Unit!113693 () Unit!113631)

(assert (=> b!4632867 (= lt!1793903 Unit!113693)))

(declare-fun res!1944094 () Bool)

(assert (=> b!4632867 (= res!1944094 (forall!10876 lt!1793413 lambda!194134))))

(assert (=> b!4632867 (=> (not res!1944094) (not e!2890059))))

(assert (=> b!4632867 e!2890059))

(declare-fun lt!1793910 () Unit!113631)

(declare-fun Unit!113694 () Unit!113631)

(assert (=> b!4632867 (= lt!1793910 Unit!113694)))

(assert (= (and d!1460228 c!792979) b!4632864))

(assert (= (and d!1460228 (not c!792979)) b!4632867))

(assert (= (and b!4632867 res!1944094) b!4632865))

(assert (= (or b!4632864 b!4632867) bm!323283))

(assert (= (or b!4632864 b!4632867) bm!323282))

(assert (= (or b!4632864 b!4632867) bm!323281))

(assert (= (and d!1460228 res!1944093) b!4632866))

(assert (= (and b!4632866 res!1944092) b!4632868))

(declare-fun m!5484775 () Bool)

(assert (=> d!1460228 m!5484775))

(assert (=> d!1460228 m!5484629))

(declare-fun m!5484777 () Bool)

(assert (=> bm!323281 m!5484777))

(declare-fun m!5484779 () Bool)

(assert (=> b!4632867 m!5484779))

(declare-fun m!5484781 () Bool)

(assert (=> b!4632867 m!5484781))

(declare-fun m!5484783 () Bool)

(assert (=> b!4632867 m!5484783))

(declare-fun m!5484785 () Bool)

(assert (=> b!4632867 m!5484785))

(assert (=> b!4632867 m!5484783))

(declare-fun m!5484787 () Bool)

(assert (=> b!4632867 m!5484787))

(declare-fun m!5484789 () Bool)

(assert (=> b!4632867 m!5484789))

(declare-fun m!5484791 () Bool)

(assert (=> b!4632867 m!5484791))

(declare-fun m!5484793 () Bool)

(assert (=> b!4632867 m!5484793))

(assert (=> b!4632867 m!5484793))

(declare-fun m!5484795 () Bool)

(assert (=> b!4632867 m!5484795))

(declare-fun m!5484797 () Bool)

(assert (=> b!4632867 m!5484797))

(declare-fun m!5484799 () Bool)

(assert (=> b!4632867 m!5484799))

(declare-fun m!5484801 () Bool)

(assert (=> b!4632868 m!5484801))

(declare-fun m!5484803 () Bool)

(assert (=> b!4632866 m!5484803))

(declare-fun m!5484805 () Bool)

(assert (=> bm!323283 m!5484805))

(declare-fun m!5484807 () Bool)

(assert (=> bm!323282 m!5484807))

(assert (=> b!4632865 m!5484779))

(assert (=> b!4632474 d!1460228))

(declare-fun d!1460264 () Bool)

(assert (=> d!1460264 (= (head!9670 oldBucket!40) (h!57696 oldBucket!40))))

(assert (=> b!4632474 d!1460264))

(declare-fun bs!1028677 () Bool)

(declare-fun d!1460266 () Bool)

(assert (= bs!1028677 (and d!1460266 d!1460196)))

(declare-fun lambda!194136 () Int)

(assert (=> bs!1028677 (= lambda!194136 lambda!194086)))

(declare-fun bs!1028678 () Bool)

(assert (= bs!1028678 (and d!1460266 d!1460124)))

(assert (=> bs!1028678 (= lambda!194136 lambda!194070)))

(declare-fun bs!1028679 () Bool)

(assert (= bs!1028679 (and d!1460266 d!1460192)))

(assert (=> bs!1028679 (= lambda!194136 lambda!194085)))

(declare-fun bs!1028680 () Bool)

(assert (= bs!1028680 (and d!1460266 d!1460224)))

(assert (=> bs!1028680 (= lambda!194136 lambda!194090)))

(declare-fun bs!1028681 () Bool)

(assert (= bs!1028681 (and d!1460266 b!4632468)))

(assert (=> bs!1028681 (= lambda!194136 lambda!194010)))

(declare-fun bs!1028682 () Bool)

(assert (= bs!1028682 (and d!1460266 d!1460174)))

(assert (=> bs!1028682 (= lambda!194136 lambda!194084)))

(declare-fun bs!1028683 () Bool)

(assert (= bs!1028683 (and d!1460266 d!1460116)))

(assert (=> bs!1028683 (= lambda!194136 lambda!194054)))

(declare-fun lt!1793920 () ListMap!4341)

(assert (=> d!1460266 (invariantList!1230 (toList!5037 lt!1793920))))

(declare-fun e!2890062 () ListMap!4341)

(assert (=> d!1460266 (= lt!1793920 e!2890062)))

(declare-fun c!792980 () Bool)

(assert (=> d!1460266 (= c!792980 ((_ is Cons!51621) (Cons!51621 (tuple2!52593 hash!414 lt!1793406) Nil!51621)))))

(assert (=> d!1460266 (forall!10874 (Cons!51621 (tuple2!52593 hash!414 lt!1793406) Nil!51621) lambda!194136)))

(assert (=> d!1460266 (= (extractMap!1592 (Cons!51621 (tuple2!52593 hash!414 lt!1793406) Nil!51621)) lt!1793920)))

(declare-fun b!4632871 () Bool)

(assert (=> b!4632871 (= e!2890062 (addToMapMapFromBucket!997 (_2!29590 (h!57697 (Cons!51621 (tuple2!52593 hash!414 lt!1793406) Nil!51621))) (extractMap!1592 (t!358803 (Cons!51621 (tuple2!52593 hash!414 lt!1793406) Nil!51621)))))))

(declare-fun b!4632872 () Bool)

(assert (=> b!4632872 (= e!2890062 (ListMap!4342 Nil!51620))))

(assert (= (and d!1460266 c!792980) b!4632871))

(assert (= (and d!1460266 (not c!792980)) b!4632872))

(declare-fun m!5484809 () Bool)

(assert (=> d!1460266 m!5484809))

(declare-fun m!5484811 () Bool)

(assert (=> d!1460266 m!5484811))

(declare-fun m!5484813 () Bool)

(assert (=> b!4632871 m!5484813))

(assert (=> b!4632871 m!5484813))

(declare-fun m!5484815 () Bool)

(assert (=> b!4632871 m!5484815))

(assert (=> b!4632474 d!1460266))

(declare-fun d!1460268 () Bool)

(assert (=> d!1460268 (= (head!9670 newBucket!224) (h!57696 newBucket!224))))

(assert (=> b!4632474 d!1460268))

(declare-fun bs!1028684 () Bool)

(declare-fun d!1460270 () Bool)

(assert (= bs!1028684 (and d!1460270 d!1460196)))

(declare-fun lambda!194139 () Int)

(assert (=> bs!1028684 (= lambda!194139 lambda!194086)))

(declare-fun bs!1028685 () Bool)

(assert (= bs!1028685 (and d!1460270 d!1460266)))

(assert (=> bs!1028685 (= lambda!194139 lambda!194136)))

(declare-fun bs!1028686 () Bool)

(assert (= bs!1028686 (and d!1460270 d!1460124)))

(assert (=> bs!1028686 (= lambda!194139 lambda!194070)))

(declare-fun bs!1028687 () Bool)

(assert (= bs!1028687 (and d!1460270 d!1460192)))

(assert (=> bs!1028687 (= lambda!194139 lambda!194085)))

(declare-fun bs!1028688 () Bool)

(assert (= bs!1028688 (and d!1460270 d!1460224)))

(assert (=> bs!1028688 (= lambda!194139 lambda!194090)))

(declare-fun bs!1028689 () Bool)

(assert (= bs!1028689 (and d!1460270 b!4632468)))

(assert (=> bs!1028689 (= lambda!194139 lambda!194010)))

(declare-fun bs!1028690 () Bool)

(assert (= bs!1028690 (and d!1460270 d!1460174)))

(assert (=> bs!1028690 (= lambda!194139 lambda!194084)))

(declare-fun bs!1028691 () Bool)

(assert (= bs!1028691 (and d!1460270 d!1460116)))

(assert (=> bs!1028691 (= lambda!194139 lambda!194054)))

(assert (=> d!1460270 (contains!14721 (extractMap!1592 (toList!5038 (ListLongMap!3628 lt!1793428))) key!4968)))

(declare-fun lt!1793923 () Unit!113631)

(declare-fun choose!31561 (ListLongMap!3627 K!12990 Hashable!5933) Unit!113631)

(assert (=> d!1460270 (= lt!1793923 (choose!31561 (ListLongMap!3628 lt!1793428) key!4968 hashF!1389))))

(assert (=> d!1460270 (forall!10874 (toList!5038 (ListLongMap!3628 lt!1793428)) lambda!194139)))

(assert (=> d!1460270 (= (lemmaListContainsThenExtractedMapContains!354 (ListLongMap!3628 lt!1793428) key!4968 hashF!1389) lt!1793923)))

(declare-fun bs!1028692 () Bool)

(assert (= bs!1028692 d!1460270))

(declare-fun m!5484817 () Bool)

(assert (=> bs!1028692 m!5484817))

(assert (=> bs!1028692 m!5484817))

(declare-fun m!5484819 () Bool)

(assert (=> bs!1028692 m!5484819))

(declare-fun m!5484821 () Bool)

(assert (=> bs!1028692 m!5484821))

(declare-fun m!5484823 () Bool)

(assert (=> bs!1028692 m!5484823))

(assert (=> b!4632474 d!1460270))

(declare-fun d!1460272 () Bool)

(declare-fun e!2890063 () Bool)

(assert (=> d!1460272 e!2890063))

(declare-fun res!1944095 () Bool)

(assert (=> d!1460272 (=> (not res!1944095) (not e!2890063))))

(declare-fun lt!1793926 () ListMap!4341)

(assert (=> d!1460272 (= res!1944095 (contains!14721 lt!1793926 (_1!29589 lt!1793420)))))

(declare-fun lt!1793927 () List!51744)

(assert (=> d!1460272 (= lt!1793926 (ListMap!4342 lt!1793927))))

(declare-fun lt!1793925 () Unit!113631)

(declare-fun lt!1793924 () Unit!113631)

(assert (=> d!1460272 (= lt!1793925 lt!1793924)))

(assert (=> d!1460272 (= (getValueByKey!1502 lt!1793927 (_1!29589 lt!1793420)) (Some!11671 (_2!29589 lt!1793420)))))

(assert (=> d!1460272 (= lt!1793924 (lemmaContainsTupThenGetReturnValue!874 lt!1793927 (_1!29589 lt!1793420) (_2!29589 lt!1793420)))))

(assert (=> d!1460272 (= lt!1793927 (insertNoDuplicatedKeys!382 (toList!5037 (addToMapMapFromBucket!997 lt!1793406 (ListMap!4342 Nil!51620))) (_1!29589 lt!1793420) (_2!29589 lt!1793420)))))

(assert (=> d!1460272 (= (+!1902 (addToMapMapFromBucket!997 lt!1793406 (ListMap!4342 Nil!51620)) lt!1793420) lt!1793926)))

(declare-fun b!4632873 () Bool)

(declare-fun res!1944096 () Bool)

(assert (=> b!4632873 (=> (not res!1944096) (not e!2890063))))

(assert (=> b!4632873 (= res!1944096 (= (getValueByKey!1502 (toList!5037 lt!1793926) (_1!29589 lt!1793420)) (Some!11671 (_2!29589 lt!1793420))))))

(declare-fun b!4632874 () Bool)

(assert (=> b!4632874 (= e!2890063 (contains!14724 (toList!5037 lt!1793926) lt!1793420))))

(assert (= (and d!1460272 res!1944095) b!4632873))

(assert (= (and b!4632873 res!1944096) b!4632874))

(declare-fun m!5484825 () Bool)

(assert (=> d!1460272 m!5484825))

(declare-fun m!5484827 () Bool)

(assert (=> d!1460272 m!5484827))

(declare-fun m!5484829 () Bool)

(assert (=> d!1460272 m!5484829))

(declare-fun m!5484831 () Bool)

(assert (=> d!1460272 m!5484831))

(declare-fun m!5484833 () Bool)

(assert (=> b!4632873 m!5484833))

(declare-fun m!5484835 () Bool)

(assert (=> b!4632874 m!5484835))

(assert (=> b!4632474 d!1460272))

(declare-fun d!1460274 () Bool)

(declare-fun e!2890064 () Bool)

(assert (=> d!1460274 e!2890064))

(declare-fun res!1944097 () Bool)

(assert (=> d!1460274 (=> (not res!1944097) (not e!2890064))))

(declare-fun lt!1793930 () ListMap!4341)

(assert (=> d!1460274 (= res!1944097 (contains!14721 lt!1793930 (_1!29589 (h!57696 oldBucket!40))))))

(declare-fun lt!1793931 () List!51744)

(assert (=> d!1460274 (= lt!1793930 (ListMap!4342 lt!1793931))))

(declare-fun lt!1793929 () Unit!113631)

(declare-fun lt!1793928 () Unit!113631)

(assert (=> d!1460274 (= lt!1793929 lt!1793928)))

(assert (=> d!1460274 (= (getValueByKey!1502 lt!1793931 (_1!29589 (h!57696 oldBucket!40))) (Some!11671 (_2!29589 (h!57696 oldBucket!40))))))

(assert (=> d!1460274 (= lt!1793928 (lemmaContainsTupThenGetReturnValue!874 lt!1793931 (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40))))))

(assert (=> d!1460274 (= lt!1793931 (insertNoDuplicatedKeys!382 (toList!5037 (extractMap!1592 (Cons!51621 (tuple2!52593 hash!414 lt!1793406) Nil!51621))) (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40))))))

(assert (=> d!1460274 (= (+!1902 (extractMap!1592 (Cons!51621 (tuple2!52593 hash!414 lt!1793406) Nil!51621)) (h!57696 oldBucket!40)) lt!1793930)))

(declare-fun b!4632875 () Bool)

(declare-fun res!1944098 () Bool)

(assert (=> b!4632875 (=> (not res!1944098) (not e!2890064))))

(assert (=> b!4632875 (= res!1944098 (= (getValueByKey!1502 (toList!5037 lt!1793930) (_1!29589 (h!57696 oldBucket!40))) (Some!11671 (_2!29589 (h!57696 oldBucket!40)))))))

(declare-fun b!4632876 () Bool)

(assert (=> b!4632876 (= e!2890064 (contains!14724 (toList!5037 lt!1793930) (h!57696 oldBucket!40)))))

(assert (= (and d!1460274 res!1944097) b!4632875))

(assert (= (and b!4632875 res!1944098) b!4632876))

(declare-fun m!5484837 () Bool)

(assert (=> d!1460274 m!5484837))

(declare-fun m!5484839 () Bool)

(assert (=> d!1460274 m!5484839))

(declare-fun m!5484841 () Bool)

(assert (=> d!1460274 m!5484841))

(declare-fun m!5484843 () Bool)

(assert (=> d!1460274 m!5484843))

(declare-fun m!5484845 () Bool)

(assert (=> b!4632875 m!5484845))

(declare-fun m!5484847 () Bool)

(assert (=> b!4632876 m!5484847))

(assert (=> b!4632474 d!1460274))

(declare-fun d!1460276 () Bool)

(assert (=> d!1460276 (eq!851 (addToMapMapFromBucket!997 (Cons!51620 lt!1793420 lt!1793406) (ListMap!4342 Nil!51620)) (+!1902 (addToMapMapFromBucket!997 lt!1793406 (ListMap!4342 Nil!51620)) lt!1793420))))

(declare-fun lt!1793932 () Unit!113631)

(assert (=> d!1460276 (= lt!1793932 (choose!31558 lt!1793420 lt!1793406 (ListMap!4342 Nil!51620)))))

(assert (=> d!1460276 (noDuplicateKeys!1536 lt!1793406)))

(assert (=> d!1460276 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!102 lt!1793420 lt!1793406 (ListMap!4342 Nil!51620)) lt!1793932)))

(declare-fun bs!1028693 () Bool)

(assert (= bs!1028693 d!1460276))

(assert (=> bs!1028693 m!5483865))

(assert (=> bs!1028693 m!5483869))

(assert (=> bs!1028693 m!5483881))

(assert (=> bs!1028693 m!5484091))

(declare-fun m!5484849 () Bool)

(assert (=> bs!1028693 m!5484849))

(assert (=> bs!1028693 m!5483865))

(assert (=> bs!1028693 m!5483867))

(assert (=> bs!1028693 m!5483867))

(assert (=> bs!1028693 m!5483869))

(assert (=> b!4632474 d!1460276))

(declare-fun bs!1028694 () Bool)

(declare-fun b!4632877 () Bool)

(assert (= bs!1028694 (and b!4632877 b!4632867)))

(declare-fun lambda!194140 () Int)

(assert (=> bs!1028694 (= lambda!194140 lambda!194133)))

(declare-fun bs!1028695 () Bool)

(assert (= bs!1028695 (and b!4632877 b!4632864)))

(assert (=> bs!1028695 (= lambda!194140 lambda!194132)))

(declare-fun bs!1028696 () Bool)

(assert (= bs!1028696 (and b!4632877 d!1460228)))

(assert (=> bs!1028696 (= (= (ListMap!4342 Nil!51620) lt!1793913) (= lambda!194140 lambda!194135))))

(declare-fun bs!1028697 () Bool)

(assert (= bs!1028697 (and b!4632877 d!1460070)))

(assert (=> bs!1028697 (not (= lambda!194140 lambda!194017))))

(assert (=> bs!1028694 (= (= (ListMap!4342 Nil!51620) lt!1793908) (= lambda!194140 lambda!194134))))

(declare-fun bs!1028698 () Bool)

(assert (= bs!1028698 (and b!4632877 d!1460072)))

(assert (=> bs!1028698 (not (= lambda!194140 lambda!194018))))

(assert (=> b!4632877 true))

(declare-fun bs!1028699 () Bool)

(declare-fun b!4632880 () Bool)

(assert (= bs!1028699 (and b!4632880 b!4632867)))

(declare-fun lambda!194141 () Int)

(assert (=> bs!1028699 (= lambda!194141 lambda!194133)))

(declare-fun bs!1028700 () Bool)

(assert (= bs!1028700 (and b!4632880 b!4632864)))

(assert (=> bs!1028700 (= lambda!194141 lambda!194132)))

(declare-fun bs!1028701 () Bool)

(assert (= bs!1028701 (and b!4632880 b!4632877)))

(assert (=> bs!1028701 (= lambda!194141 lambda!194140)))

(declare-fun bs!1028702 () Bool)

(assert (= bs!1028702 (and b!4632880 d!1460228)))

(assert (=> bs!1028702 (= (= (ListMap!4342 Nil!51620) lt!1793913) (= lambda!194141 lambda!194135))))

(declare-fun bs!1028703 () Bool)

(assert (= bs!1028703 (and b!4632880 d!1460070)))

(assert (=> bs!1028703 (not (= lambda!194141 lambda!194017))))

(assert (=> bs!1028699 (= (= (ListMap!4342 Nil!51620) lt!1793908) (= lambda!194141 lambda!194134))))

(declare-fun bs!1028704 () Bool)

(assert (= bs!1028704 (and b!4632880 d!1460072)))

(assert (=> bs!1028704 (not (= lambda!194141 lambda!194018))))

(assert (=> b!4632880 true))

(declare-fun lt!1793942 () ListMap!4341)

(declare-fun lambda!194142 () Int)

(assert (=> bs!1028699 (= (= lt!1793942 (ListMap!4342 Nil!51620)) (= lambda!194142 lambda!194133))))

(assert (=> bs!1028701 (= (= lt!1793942 (ListMap!4342 Nil!51620)) (= lambda!194142 lambda!194140))))

(assert (=> bs!1028702 (= (= lt!1793942 lt!1793913) (= lambda!194142 lambda!194135))))

(assert (=> bs!1028703 (not (= lambda!194142 lambda!194017))))

(assert (=> bs!1028699 (= (= lt!1793942 lt!1793908) (= lambda!194142 lambda!194134))))

(assert (=> bs!1028704 (not (= lambda!194142 lambda!194018))))

(assert (=> b!4632880 (= (= lt!1793942 (ListMap!4342 Nil!51620)) (= lambda!194142 lambda!194141))))

(assert (=> bs!1028700 (= (= lt!1793942 (ListMap!4342 Nil!51620)) (= lambda!194142 lambda!194132))))

(assert (=> b!4632880 true))

(declare-fun bs!1028705 () Bool)

(declare-fun d!1460278 () Bool)

(assert (= bs!1028705 (and d!1460278 b!4632867)))

(declare-fun lt!1793947 () ListMap!4341)

(declare-fun lambda!194143 () Int)

(assert (=> bs!1028705 (= (= lt!1793947 (ListMap!4342 Nil!51620)) (= lambda!194143 lambda!194133))))

(declare-fun bs!1028706 () Bool)

(assert (= bs!1028706 (and d!1460278 b!4632880)))

(assert (=> bs!1028706 (= (= lt!1793947 lt!1793942) (= lambda!194143 lambda!194142))))

(declare-fun bs!1028707 () Bool)

(assert (= bs!1028707 (and d!1460278 b!4632877)))

(assert (=> bs!1028707 (= (= lt!1793947 (ListMap!4342 Nil!51620)) (= lambda!194143 lambda!194140))))

(declare-fun bs!1028708 () Bool)

(assert (= bs!1028708 (and d!1460278 d!1460228)))

(assert (=> bs!1028708 (= (= lt!1793947 lt!1793913) (= lambda!194143 lambda!194135))))

(declare-fun bs!1028709 () Bool)

(assert (= bs!1028709 (and d!1460278 d!1460070)))

(assert (=> bs!1028709 (not (= lambda!194143 lambda!194017))))

(assert (=> bs!1028705 (= (= lt!1793947 lt!1793908) (= lambda!194143 lambda!194134))))

(declare-fun bs!1028710 () Bool)

(assert (= bs!1028710 (and d!1460278 d!1460072)))

(assert (=> bs!1028710 (not (= lambda!194143 lambda!194018))))

(assert (=> bs!1028706 (= (= lt!1793947 (ListMap!4342 Nil!51620)) (= lambda!194143 lambda!194141))))

(declare-fun bs!1028711 () Bool)

(assert (= bs!1028711 (and d!1460278 b!4632864)))

(assert (=> bs!1028711 (= (= lt!1793947 (ListMap!4342 Nil!51620)) (= lambda!194143 lambda!194132))))

(assert (=> d!1460278 true))

(declare-fun c!792981 () Bool)

(declare-fun bm!323284 () Bool)

(declare-fun call!323291 () Bool)

(assert (=> bm!323284 (= call!323291 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) (ite c!792981 lambda!194140 lambda!194142)))))

(declare-fun call!323290 () Bool)

(declare-fun bm!323285 () Bool)

(assert (=> bm!323285 (= call!323290 (forall!10876 (ite c!792981 (toList!5037 (ListMap!4342 Nil!51620)) (Cons!51620 lt!1793420 lt!1793406)) (ite c!792981 lambda!194140 lambda!194142)))))

(declare-fun e!2890067 () ListMap!4341)

(assert (=> b!4632877 (= e!2890067 (ListMap!4342 Nil!51620))))

(declare-fun lt!1793950 () Unit!113631)

(declare-fun call!323289 () Unit!113631)

(assert (=> b!4632877 (= lt!1793950 call!323289)))

(assert (=> b!4632877 call!323290))

(declare-fun lt!1793939 () Unit!113631)

(assert (=> b!4632877 (= lt!1793939 lt!1793950)))

(assert (=> b!4632877 call!323291))

(declare-fun lt!1793952 () Unit!113631)

(declare-fun Unit!113696 () Unit!113631)

(assert (=> b!4632877 (= lt!1793952 Unit!113696)))

(declare-fun b!4632878 () Bool)

(declare-fun e!2890065 () Bool)

(assert (=> b!4632878 (= e!2890065 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194142))))

(declare-fun b!4632879 () Bool)

(declare-fun res!1944099 () Bool)

(declare-fun e!2890066 () Bool)

(assert (=> b!4632879 (=> (not res!1944099) (not e!2890066))))

(assert (=> b!4632879 (= res!1944099 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194143))))

(declare-fun b!4632881 () Bool)

(assert (=> b!4632881 (= e!2890066 (invariantList!1230 (toList!5037 lt!1793947)))))

(declare-fun bm!323286 () Bool)

(assert (=> bm!323286 (= call!323289 (lemmaContainsAllItsOwnKeys!532 (ListMap!4342 Nil!51620)))))

(assert (=> d!1460278 e!2890066))

(declare-fun res!1944100 () Bool)

(assert (=> d!1460278 (=> (not res!1944100) (not e!2890066))))

(assert (=> d!1460278 (= res!1944100 (forall!10876 (Cons!51620 lt!1793420 lt!1793406) lambda!194143))))

(assert (=> d!1460278 (= lt!1793947 e!2890067)))

(assert (=> d!1460278 (= c!792981 ((_ is Nil!51620) (Cons!51620 lt!1793420 lt!1793406)))))

(assert (=> d!1460278 (noDuplicateKeys!1536 (Cons!51620 lt!1793420 lt!1793406))))

(assert (=> d!1460278 (= (addToMapMapFromBucket!997 (Cons!51620 lt!1793420 lt!1793406) (ListMap!4342 Nil!51620)) lt!1793947)))

(assert (=> b!4632880 (= e!2890067 lt!1793942)))

(declare-fun lt!1793941 () ListMap!4341)

(assert (=> b!4632880 (= lt!1793941 (+!1902 (ListMap!4342 Nil!51620) (h!57696 (Cons!51620 lt!1793420 lt!1793406))))))

(assert (=> b!4632880 (= lt!1793942 (addToMapMapFromBucket!997 (t!358802 (Cons!51620 lt!1793420 lt!1793406)) (+!1902 (ListMap!4342 Nil!51620) (h!57696 (Cons!51620 lt!1793420 lt!1793406)))))))

(declare-fun lt!1793948 () Unit!113631)

(assert (=> b!4632880 (= lt!1793948 call!323289)))

(assert (=> b!4632880 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194141)))

(declare-fun lt!1793933 () Unit!113631)

(assert (=> b!4632880 (= lt!1793933 lt!1793948)))

(assert (=> b!4632880 (forall!10876 (toList!5037 lt!1793941) lambda!194142)))

(declare-fun lt!1793936 () Unit!113631)

(declare-fun Unit!113697 () Unit!113631)

(assert (=> b!4632880 (= lt!1793936 Unit!113697)))

(assert (=> b!4632880 (forall!10876 (t!358802 (Cons!51620 lt!1793420 lt!1793406)) lambda!194142)))

(declare-fun lt!1793935 () Unit!113631)

(declare-fun Unit!113698 () Unit!113631)

(assert (=> b!4632880 (= lt!1793935 Unit!113698)))

(declare-fun lt!1793940 () Unit!113631)

(declare-fun Unit!113699 () Unit!113631)

(assert (=> b!4632880 (= lt!1793940 Unit!113699)))

(declare-fun lt!1793951 () Unit!113631)

(assert (=> b!4632880 (= lt!1793951 (forallContained!3108 (toList!5037 lt!1793941) lambda!194142 (h!57696 (Cons!51620 lt!1793420 lt!1793406))))))

(assert (=> b!4632880 (contains!14721 lt!1793941 (_1!29589 (h!57696 (Cons!51620 lt!1793420 lt!1793406))))))

(declare-fun lt!1793938 () Unit!113631)

(declare-fun Unit!113700 () Unit!113631)

(assert (=> b!4632880 (= lt!1793938 Unit!113700)))

(assert (=> b!4632880 (contains!14721 lt!1793942 (_1!29589 (h!57696 (Cons!51620 lt!1793420 lt!1793406))))))

(declare-fun lt!1793946 () Unit!113631)

(declare-fun Unit!113701 () Unit!113631)

(assert (=> b!4632880 (= lt!1793946 Unit!113701)))

(assert (=> b!4632880 call!323290))

(declare-fun lt!1793953 () Unit!113631)

(declare-fun Unit!113702 () Unit!113631)

(assert (=> b!4632880 (= lt!1793953 Unit!113702)))

(assert (=> b!4632880 (forall!10876 (toList!5037 lt!1793941) lambda!194142)))

(declare-fun lt!1793945 () Unit!113631)

(declare-fun Unit!113703 () Unit!113631)

(assert (=> b!4632880 (= lt!1793945 Unit!113703)))

(declare-fun lt!1793934 () Unit!113631)

(declare-fun Unit!113704 () Unit!113631)

(assert (=> b!4632880 (= lt!1793934 Unit!113704)))

(declare-fun lt!1793949 () Unit!113631)

(assert (=> b!4632880 (= lt!1793949 (addForallContainsKeyThenBeforeAdding!531 (ListMap!4342 Nil!51620) lt!1793942 (_1!29589 (h!57696 (Cons!51620 lt!1793420 lt!1793406))) (_2!29589 (h!57696 (Cons!51620 lt!1793420 lt!1793406)))))))

(assert (=> b!4632880 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194142)))

(declare-fun lt!1793943 () Unit!113631)

(assert (=> b!4632880 (= lt!1793943 lt!1793949)))

(assert (=> b!4632880 call!323291))

(declare-fun lt!1793937 () Unit!113631)

(declare-fun Unit!113705 () Unit!113631)

(assert (=> b!4632880 (= lt!1793937 Unit!113705)))

(declare-fun res!1944101 () Bool)

(assert (=> b!4632880 (= res!1944101 (forall!10876 (Cons!51620 lt!1793420 lt!1793406) lambda!194142))))

(assert (=> b!4632880 (=> (not res!1944101) (not e!2890065))))

(assert (=> b!4632880 e!2890065))

(declare-fun lt!1793944 () Unit!113631)

(declare-fun Unit!113706 () Unit!113631)

(assert (=> b!4632880 (= lt!1793944 Unit!113706)))

(assert (= (and d!1460278 c!792981) b!4632877))

(assert (= (and d!1460278 (not c!792981)) b!4632880))

(assert (= (and b!4632880 res!1944101) b!4632878))

(assert (= (or b!4632877 b!4632880) bm!323286))

(assert (= (or b!4632877 b!4632880) bm!323285))

(assert (= (or b!4632877 b!4632880) bm!323284))

(assert (= (and d!1460278 res!1944100) b!4632879))

(assert (= (and b!4632879 res!1944099) b!4632881))

(declare-fun m!5484851 () Bool)

(assert (=> d!1460278 m!5484851))

(declare-fun m!5484853 () Bool)

(assert (=> d!1460278 m!5484853))

(declare-fun m!5484855 () Bool)

(assert (=> bm!323284 m!5484855))

(declare-fun m!5484857 () Bool)

(assert (=> b!4632880 m!5484857))

(declare-fun m!5484859 () Bool)

(assert (=> b!4632880 m!5484859))

(declare-fun m!5484861 () Bool)

(assert (=> b!4632880 m!5484861))

(declare-fun m!5484863 () Bool)

(assert (=> b!4632880 m!5484863))

(assert (=> b!4632880 m!5484861))

(declare-fun m!5484865 () Bool)

(assert (=> b!4632880 m!5484865))

(declare-fun m!5484867 () Bool)

(assert (=> b!4632880 m!5484867))

(declare-fun m!5484869 () Bool)

(assert (=> b!4632880 m!5484869))

(declare-fun m!5484871 () Bool)

(assert (=> b!4632880 m!5484871))

(assert (=> b!4632880 m!5484871))

(declare-fun m!5484873 () Bool)

(assert (=> b!4632880 m!5484873))

(declare-fun m!5484875 () Bool)

(assert (=> b!4632880 m!5484875))

(declare-fun m!5484877 () Bool)

(assert (=> b!4632880 m!5484877))

(declare-fun m!5484879 () Bool)

(assert (=> b!4632881 m!5484879))

(declare-fun m!5484881 () Bool)

(assert (=> b!4632879 m!5484881))

(assert (=> bm!323286 m!5484805))

(declare-fun m!5484883 () Bool)

(assert (=> bm!323285 m!5484883))

(assert (=> b!4632878 m!5484857))

(assert (=> b!4632474 d!1460278))

(declare-fun bs!1028712 () Bool)

(declare-fun b!4632882 () Bool)

(assert (= bs!1028712 (and b!4632882 b!4632867)))

(declare-fun lambda!194144 () Int)

(assert (=> bs!1028712 (= lambda!194144 lambda!194133)))

(declare-fun bs!1028713 () Bool)

(assert (= bs!1028713 (and b!4632882 b!4632880)))

(assert (=> bs!1028713 (= (= (ListMap!4342 Nil!51620) lt!1793942) (= lambda!194144 lambda!194142))))

(declare-fun bs!1028714 () Bool)

(assert (= bs!1028714 (and b!4632882 d!1460278)))

(assert (=> bs!1028714 (= (= (ListMap!4342 Nil!51620) lt!1793947) (= lambda!194144 lambda!194143))))

(declare-fun bs!1028715 () Bool)

(assert (= bs!1028715 (and b!4632882 b!4632877)))

(assert (=> bs!1028715 (= lambda!194144 lambda!194140)))

(declare-fun bs!1028716 () Bool)

(assert (= bs!1028716 (and b!4632882 d!1460228)))

(assert (=> bs!1028716 (= (= (ListMap!4342 Nil!51620) lt!1793913) (= lambda!194144 lambda!194135))))

(declare-fun bs!1028717 () Bool)

(assert (= bs!1028717 (and b!4632882 d!1460070)))

(assert (=> bs!1028717 (not (= lambda!194144 lambda!194017))))

(assert (=> bs!1028712 (= (= (ListMap!4342 Nil!51620) lt!1793908) (= lambda!194144 lambda!194134))))

(declare-fun bs!1028718 () Bool)

(assert (= bs!1028718 (and b!4632882 d!1460072)))

(assert (=> bs!1028718 (not (= lambda!194144 lambda!194018))))

(assert (=> bs!1028713 (= lambda!194144 lambda!194141)))

(declare-fun bs!1028719 () Bool)

(assert (= bs!1028719 (and b!4632882 b!4632864)))

(assert (=> bs!1028719 (= lambda!194144 lambda!194132)))

(assert (=> b!4632882 true))

(declare-fun bs!1028720 () Bool)

(declare-fun b!4632885 () Bool)

(assert (= bs!1028720 (and b!4632885 b!4632867)))

(declare-fun lambda!194145 () Int)

(assert (=> bs!1028720 (= lambda!194145 lambda!194133)))

(declare-fun bs!1028721 () Bool)

(assert (= bs!1028721 (and b!4632885 b!4632880)))

(assert (=> bs!1028721 (= (= (ListMap!4342 Nil!51620) lt!1793942) (= lambda!194145 lambda!194142))))

(declare-fun bs!1028722 () Bool)

(assert (= bs!1028722 (and b!4632885 d!1460278)))

(assert (=> bs!1028722 (= (= (ListMap!4342 Nil!51620) lt!1793947) (= lambda!194145 lambda!194143))))

(declare-fun bs!1028723 () Bool)

(assert (= bs!1028723 (and b!4632885 b!4632877)))

(assert (=> bs!1028723 (= lambda!194145 lambda!194140)))

(declare-fun bs!1028724 () Bool)

(assert (= bs!1028724 (and b!4632885 b!4632882)))

(assert (=> bs!1028724 (= lambda!194145 lambda!194144)))

(declare-fun bs!1028725 () Bool)

(assert (= bs!1028725 (and b!4632885 d!1460228)))

(assert (=> bs!1028725 (= (= (ListMap!4342 Nil!51620) lt!1793913) (= lambda!194145 lambda!194135))))

(declare-fun bs!1028726 () Bool)

(assert (= bs!1028726 (and b!4632885 d!1460070)))

(assert (=> bs!1028726 (not (= lambda!194145 lambda!194017))))

(assert (=> bs!1028720 (= (= (ListMap!4342 Nil!51620) lt!1793908) (= lambda!194145 lambda!194134))))

(declare-fun bs!1028727 () Bool)

(assert (= bs!1028727 (and b!4632885 d!1460072)))

(assert (=> bs!1028727 (not (= lambda!194145 lambda!194018))))

(assert (=> bs!1028721 (= lambda!194145 lambda!194141)))

(declare-fun bs!1028728 () Bool)

(assert (= bs!1028728 (and b!4632885 b!4632864)))

(assert (=> bs!1028728 (= lambda!194145 lambda!194132)))

(assert (=> b!4632885 true))

(declare-fun lt!1793963 () ListMap!4341)

(declare-fun lambda!194146 () Int)

(assert (=> bs!1028720 (= (= lt!1793963 (ListMap!4342 Nil!51620)) (= lambda!194146 lambda!194133))))

(assert (=> bs!1028721 (= (= lt!1793963 lt!1793942) (= lambda!194146 lambda!194142))))

(assert (=> b!4632885 (= (= lt!1793963 (ListMap!4342 Nil!51620)) (= lambda!194146 lambda!194145))))

(assert (=> bs!1028722 (= (= lt!1793963 lt!1793947) (= lambda!194146 lambda!194143))))

(assert (=> bs!1028723 (= (= lt!1793963 (ListMap!4342 Nil!51620)) (= lambda!194146 lambda!194140))))

(assert (=> bs!1028724 (= (= lt!1793963 (ListMap!4342 Nil!51620)) (= lambda!194146 lambda!194144))))

(assert (=> bs!1028725 (= (= lt!1793963 lt!1793913) (= lambda!194146 lambda!194135))))

(assert (=> bs!1028726 (not (= lambda!194146 lambda!194017))))

(assert (=> bs!1028720 (= (= lt!1793963 lt!1793908) (= lambda!194146 lambda!194134))))

(assert (=> bs!1028727 (not (= lambda!194146 lambda!194018))))

(assert (=> bs!1028721 (= (= lt!1793963 (ListMap!4342 Nil!51620)) (= lambda!194146 lambda!194141))))

(assert (=> bs!1028728 (= (= lt!1793963 (ListMap!4342 Nil!51620)) (= lambda!194146 lambda!194132))))

(assert (=> b!4632885 true))

(declare-fun bs!1028729 () Bool)

(declare-fun d!1460280 () Bool)

(assert (= bs!1028729 (and d!1460280 b!4632867)))

(declare-fun lt!1793968 () ListMap!4341)

(declare-fun lambda!194147 () Int)

(assert (=> bs!1028729 (= (= lt!1793968 (ListMap!4342 Nil!51620)) (= lambda!194147 lambda!194133))))

(declare-fun bs!1028730 () Bool)

(assert (= bs!1028730 (and d!1460280 b!4632880)))

(assert (=> bs!1028730 (= (= lt!1793968 lt!1793942) (= lambda!194147 lambda!194142))))

(declare-fun bs!1028731 () Bool)

(assert (= bs!1028731 (and d!1460280 b!4632885)))

(assert (=> bs!1028731 (= (= lt!1793968 (ListMap!4342 Nil!51620)) (= lambda!194147 lambda!194145))))

(assert (=> bs!1028731 (= (= lt!1793968 lt!1793963) (= lambda!194147 lambda!194146))))

(declare-fun bs!1028732 () Bool)

(assert (= bs!1028732 (and d!1460280 d!1460278)))

(assert (=> bs!1028732 (= (= lt!1793968 lt!1793947) (= lambda!194147 lambda!194143))))

(declare-fun bs!1028733 () Bool)

(assert (= bs!1028733 (and d!1460280 b!4632877)))

(assert (=> bs!1028733 (= (= lt!1793968 (ListMap!4342 Nil!51620)) (= lambda!194147 lambda!194140))))

(declare-fun bs!1028734 () Bool)

(assert (= bs!1028734 (and d!1460280 b!4632882)))

(assert (=> bs!1028734 (= (= lt!1793968 (ListMap!4342 Nil!51620)) (= lambda!194147 lambda!194144))))

(declare-fun bs!1028735 () Bool)

(assert (= bs!1028735 (and d!1460280 d!1460228)))

(assert (=> bs!1028735 (= (= lt!1793968 lt!1793913) (= lambda!194147 lambda!194135))))

(declare-fun bs!1028736 () Bool)

(assert (= bs!1028736 (and d!1460280 d!1460070)))

(assert (=> bs!1028736 (not (= lambda!194147 lambda!194017))))

(assert (=> bs!1028729 (= (= lt!1793968 lt!1793908) (= lambda!194147 lambda!194134))))

(declare-fun bs!1028737 () Bool)

(assert (= bs!1028737 (and d!1460280 d!1460072)))

(assert (=> bs!1028737 (not (= lambda!194147 lambda!194018))))

(assert (=> bs!1028730 (= (= lt!1793968 (ListMap!4342 Nil!51620)) (= lambda!194147 lambda!194141))))

(declare-fun bs!1028738 () Bool)

(assert (= bs!1028738 (and d!1460280 b!4632864)))

(assert (=> bs!1028738 (= (= lt!1793968 (ListMap!4342 Nil!51620)) (= lambda!194147 lambda!194132))))

(assert (=> d!1460280 true))

(declare-fun c!792982 () Bool)

(declare-fun bm!323287 () Bool)

(declare-fun call!323294 () Bool)

(assert (=> bm!323287 (= call!323294 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) (ite c!792982 lambda!194144 lambda!194146)))))

(declare-fun call!323293 () Bool)

(declare-fun bm!323288 () Bool)

(assert (=> bm!323288 (= call!323293 (forall!10876 (ite c!792982 (toList!5037 (ListMap!4342 Nil!51620)) lt!1793406) (ite c!792982 lambda!194144 lambda!194146)))))

(declare-fun e!2890070 () ListMap!4341)

(assert (=> b!4632882 (= e!2890070 (ListMap!4342 Nil!51620))))

(declare-fun lt!1793971 () Unit!113631)

(declare-fun call!323292 () Unit!113631)

(assert (=> b!4632882 (= lt!1793971 call!323292)))

(assert (=> b!4632882 call!323293))

(declare-fun lt!1793960 () Unit!113631)

(assert (=> b!4632882 (= lt!1793960 lt!1793971)))

(assert (=> b!4632882 call!323294))

(declare-fun lt!1793973 () Unit!113631)

(declare-fun Unit!113707 () Unit!113631)

(assert (=> b!4632882 (= lt!1793973 Unit!113707)))

(declare-fun b!4632883 () Bool)

(declare-fun e!2890068 () Bool)

(assert (=> b!4632883 (= e!2890068 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194146))))

(declare-fun b!4632884 () Bool)

(declare-fun res!1944102 () Bool)

(declare-fun e!2890069 () Bool)

(assert (=> b!4632884 (=> (not res!1944102) (not e!2890069))))

(assert (=> b!4632884 (= res!1944102 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194147))))

(declare-fun b!4632886 () Bool)

(assert (=> b!4632886 (= e!2890069 (invariantList!1230 (toList!5037 lt!1793968)))))

(declare-fun bm!323289 () Bool)

(assert (=> bm!323289 (= call!323292 (lemmaContainsAllItsOwnKeys!532 (ListMap!4342 Nil!51620)))))

(assert (=> d!1460280 e!2890069))

(declare-fun res!1944103 () Bool)

(assert (=> d!1460280 (=> (not res!1944103) (not e!2890069))))

(assert (=> d!1460280 (= res!1944103 (forall!10876 lt!1793406 lambda!194147))))

(assert (=> d!1460280 (= lt!1793968 e!2890070)))

(assert (=> d!1460280 (= c!792982 ((_ is Nil!51620) lt!1793406))))

(assert (=> d!1460280 (noDuplicateKeys!1536 lt!1793406)))

(assert (=> d!1460280 (= (addToMapMapFromBucket!997 lt!1793406 (ListMap!4342 Nil!51620)) lt!1793968)))

(assert (=> b!4632885 (= e!2890070 lt!1793963)))

(declare-fun lt!1793962 () ListMap!4341)

(assert (=> b!4632885 (= lt!1793962 (+!1902 (ListMap!4342 Nil!51620) (h!57696 lt!1793406)))))

(assert (=> b!4632885 (= lt!1793963 (addToMapMapFromBucket!997 (t!358802 lt!1793406) (+!1902 (ListMap!4342 Nil!51620) (h!57696 lt!1793406))))))

(declare-fun lt!1793969 () Unit!113631)

(assert (=> b!4632885 (= lt!1793969 call!323292)))

(assert (=> b!4632885 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194145)))

(declare-fun lt!1793954 () Unit!113631)

(assert (=> b!4632885 (= lt!1793954 lt!1793969)))

(assert (=> b!4632885 (forall!10876 (toList!5037 lt!1793962) lambda!194146)))

(declare-fun lt!1793957 () Unit!113631)

(declare-fun Unit!113708 () Unit!113631)

(assert (=> b!4632885 (= lt!1793957 Unit!113708)))

(assert (=> b!4632885 (forall!10876 (t!358802 lt!1793406) lambda!194146)))

(declare-fun lt!1793956 () Unit!113631)

(declare-fun Unit!113709 () Unit!113631)

(assert (=> b!4632885 (= lt!1793956 Unit!113709)))

(declare-fun lt!1793961 () Unit!113631)

(declare-fun Unit!113710 () Unit!113631)

(assert (=> b!4632885 (= lt!1793961 Unit!113710)))

(declare-fun lt!1793972 () Unit!113631)

(assert (=> b!4632885 (= lt!1793972 (forallContained!3108 (toList!5037 lt!1793962) lambda!194146 (h!57696 lt!1793406)))))

(assert (=> b!4632885 (contains!14721 lt!1793962 (_1!29589 (h!57696 lt!1793406)))))

(declare-fun lt!1793959 () Unit!113631)

(declare-fun Unit!113711 () Unit!113631)

(assert (=> b!4632885 (= lt!1793959 Unit!113711)))

(assert (=> b!4632885 (contains!14721 lt!1793963 (_1!29589 (h!57696 lt!1793406)))))

(declare-fun lt!1793967 () Unit!113631)

(declare-fun Unit!113712 () Unit!113631)

(assert (=> b!4632885 (= lt!1793967 Unit!113712)))

(assert (=> b!4632885 call!323293))

(declare-fun lt!1793974 () Unit!113631)

(declare-fun Unit!113713 () Unit!113631)

(assert (=> b!4632885 (= lt!1793974 Unit!113713)))

(assert (=> b!4632885 (forall!10876 (toList!5037 lt!1793962) lambda!194146)))

(declare-fun lt!1793966 () Unit!113631)

(declare-fun Unit!113714 () Unit!113631)

(assert (=> b!4632885 (= lt!1793966 Unit!113714)))

(declare-fun lt!1793955 () Unit!113631)

(declare-fun Unit!113715 () Unit!113631)

(assert (=> b!4632885 (= lt!1793955 Unit!113715)))

(declare-fun lt!1793970 () Unit!113631)

(assert (=> b!4632885 (= lt!1793970 (addForallContainsKeyThenBeforeAdding!531 (ListMap!4342 Nil!51620) lt!1793963 (_1!29589 (h!57696 lt!1793406)) (_2!29589 (h!57696 lt!1793406))))))

(assert (=> b!4632885 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194146)))

(declare-fun lt!1793964 () Unit!113631)

(assert (=> b!4632885 (= lt!1793964 lt!1793970)))

(assert (=> b!4632885 call!323294))

(declare-fun lt!1793958 () Unit!113631)

(declare-fun Unit!113716 () Unit!113631)

(assert (=> b!4632885 (= lt!1793958 Unit!113716)))

(declare-fun res!1944104 () Bool)

(assert (=> b!4632885 (= res!1944104 (forall!10876 lt!1793406 lambda!194146))))

(assert (=> b!4632885 (=> (not res!1944104) (not e!2890068))))

(assert (=> b!4632885 e!2890068))

(declare-fun lt!1793965 () Unit!113631)

(declare-fun Unit!113717 () Unit!113631)

(assert (=> b!4632885 (= lt!1793965 Unit!113717)))

(assert (= (and d!1460280 c!792982) b!4632882))

(assert (= (and d!1460280 (not c!792982)) b!4632885))

(assert (= (and b!4632885 res!1944104) b!4632883))

(assert (= (or b!4632882 b!4632885) bm!323289))

(assert (= (or b!4632882 b!4632885) bm!323288))

(assert (= (or b!4632882 b!4632885) bm!323287))

(assert (= (and d!1460280 res!1944103) b!4632884))

(assert (= (and b!4632884 res!1944102) b!4632886))

(declare-fun m!5484885 () Bool)

(assert (=> d!1460280 m!5484885))

(assert (=> d!1460280 m!5484091))

(declare-fun m!5484887 () Bool)

(assert (=> bm!323287 m!5484887))

(declare-fun m!5484889 () Bool)

(assert (=> b!4632885 m!5484889))

(declare-fun m!5484891 () Bool)

(assert (=> b!4632885 m!5484891))

(declare-fun m!5484893 () Bool)

(assert (=> b!4632885 m!5484893))

(declare-fun m!5484895 () Bool)

(assert (=> b!4632885 m!5484895))

(assert (=> b!4632885 m!5484893))

(declare-fun m!5484897 () Bool)

(assert (=> b!4632885 m!5484897))

(declare-fun m!5484899 () Bool)

(assert (=> b!4632885 m!5484899))

(declare-fun m!5484901 () Bool)

(assert (=> b!4632885 m!5484901))

(declare-fun m!5484903 () Bool)

(assert (=> b!4632885 m!5484903))

(assert (=> b!4632885 m!5484903))

(declare-fun m!5484905 () Bool)

(assert (=> b!4632885 m!5484905))

(declare-fun m!5484907 () Bool)

(assert (=> b!4632885 m!5484907))

(declare-fun m!5484909 () Bool)

(assert (=> b!4632885 m!5484909))

(declare-fun m!5484911 () Bool)

(assert (=> b!4632886 m!5484911))

(declare-fun m!5484913 () Bool)

(assert (=> b!4632884 m!5484913))

(assert (=> bm!323289 m!5484805))

(declare-fun m!5484915 () Bool)

(assert (=> bm!323288 m!5484915))

(assert (=> b!4632883 m!5484889))

(assert (=> b!4632474 d!1460280))

(declare-fun d!1460282 () Bool)

(assert (=> d!1460282 (= (eq!851 (addToMapMapFromBucket!997 (Cons!51620 lt!1793420 lt!1793406) (ListMap!4342 Nil!51620)) (+!1902 (addToMapMapFromBucket!997 lt!1793406 (ListMap!4342 Nil!51620)) lt!1793420)) (= (content!8874 (toList!5037 (addToMapMapFromBucket!997 (Cons!51620 lt!1793420 lt!1793406) (ListMap!4342 Nil!51620)))) (content!8874 (toList!5037 (+!1902 (addToMapMapFromBucket!997 lt!1793406 (ListMap!4342 Nil!51620)) lt!1793420)))))))

(declare-fun bs!1028739 () Bool)

(assert (= bs!1028739 d!1460282))

(declare-fun m!5484917 () Bool)

(assert (=> bs!1028739 m!5484917))

(declare-fun m!5484919 () Bool)

(assert (=> bs!1028739 m!5484919))

(assert (=> b!4632474 d!1460282))

(declare-fun bs!1028740 () Bool)

(declare-fun b!4632887 () Bool)

(assert (= bs!1028740 (and b!4632887 d!1460280)))

(declare-fun lambda!194148 () Int)

(assert (=> bs!1028740 (= (= (ListMap!4342 Nil!51620) lt!1793968) (= lambda!194148 lambda!194147))))

(declare-fun bs!1028741 () Bool)

(assert (= bs!1028741 (and b!4632887 b!4632867)))

(assert (=> bs!1028741 (= lambda!194148 lambda!194133)))

(declare-fun bs!1028742 () Bool)

(assert (= bs!1028742 (and b!4632887 b!4632880)))

(assert (=> bs!1028742 (= (= (ListMap!4342 Nil!51620) lt!1793942) (= lambda!194148 lambda!194142))))

(declare-fun bs!1028743 () Bool)

(assert (= bs!1028743 (and b!4632887 b!4632885)))

(assert (=> bs!1028743 (= lambda!194148 lambda!194145)))

(assert (=> bs!1028743 (= (= (ListMap!4342 Nil!51620) lt!1793963) (= lambda!194148 lambda!194146))))

(declare-fun bs!1028744 () Bool)

(assert (= bs!1028744 (and b!4632887 d!1460278)))

(assert (=> bs!1028744 (= (= (ListMap!4342 Nil!51620) lt!1793947) (= lambda!194148 lambda!194143))))

(declare-fun bs!1028745 () Bool)

(assert (= bs!1028745 (and b!4632887 b!4632877)))

(assert (=> bs!1028745 (= lambda!194148 lambda!194140)))

(declare-fun bs!1028746 () Bool)

(assert (= bs!1028746 (and b!4632887 b!4632882)))

(assert (=> bs!1028746 (= lambda!194148 lambda!194144)))

(declare-fun bs!1028747 () Bool)

(assert (= bs!1028747 (and b!4632887 d!1460228)))

(assert (=> bs!1028747 (= (= (ListMap!4342 Nil!51620) lt!1793913) (= lambda!194148 lambda!194135))))

(declare-fun bs!1028748 () Bool)

(assert (= bs!1028748 (and b!4632887 d!1460070)))

(assert (=> bs!1028748 (not (= lambda!194148 lambda!194017))))

(assert (=> bs!1028741 (= (= (ListMap!4342 Nil!51620) lt!1793908) (= lambda!194148 lambda!194134))))

(declare-fun bs!1028749 () Bool)

(assert (= bs!1028749 (and b!4632887 d!1460072)))

(assert (=> bs!1028749 (not (= lambda!194148 lambda!194018))))

(assert (=> bs!1028742 (= lambda!194148 lambda!194141)))

(declare-fun bs!1028750 () Bool)

(assert (= bs!1028750 (and b!4632887 b!4632864)))

(assert (=> bs!1028750 (= lambda!194148 lambda!194132)))

(assert (=> b!4632887 true))

(declare-fun bs!1028751 () Bool)

(declare-fun b!4632890 () Bool)

(assert (= bs!1028751 (and b!4632890 d!1460280)))

(declare-fun lambda!194149 () Int)

(assert (=> bs!1028751 (= (= (ListMap!4342 Nil!51620) lt!1793968) (= lambda!194149 lambda!194147))))

(declare-fun bs!1028752 () Bool)

(assert (= bs!1028752 (and b!4632890 b!4632867)))

(assert (=> bs!1028752 (= lambda!194149 lambda!194133)))

(declare-fun bs!1028753 () Bool)

(assert (= bs!1028753 (and b!4632890 b!4632880)))

(assert (=> bs!1028753 (= (= (ListMap!4342 Nil!51620) lt!1793942) (= lambda!194149 lambda!194142))))

(declare-fun bs!1028754 () Bool)

(assert (= bs!1028754 (and b!4632890 b!4632885)))

(assert (=> bs!1028754 (= lambda!194149 lambda!194145)))

(assert (=> bs!1028754 (= (= (ListMap!4342 Nil!51620) lt!1793963) (= lambda!194149 lambda!194146))))

(declare-fun bs!1028755 () Bool)

(assert (= bs!1028755 (and b!4632890 d!1460278)))

(assert (=> bs!1028755 (= (= (ListMap!4342 Nil!51620) lt!1793947) (= lambda!194149 lambda!194143))))

(declare-fun bs!1028756 () Bool)

(assert (= bs!1028756 (and b!4632890 b!4632877)))

(assert (=> bs!1028756 (= lambda!194149 lambda!194140)))

(declare-fun bs!1028757 () Bool)

(assert (= bs!1028757 (and b!4632890 b!4632882)))

(assert (=> bs!1028757 (= lambda!194149 lambda!194144)))

(declare-fun bs!1028758 () Bool)

(assert (= bs!1028758 (and b!4632890 d!1460070)))

(assert (=> bs!1028758 (not (= lambda!194149 lambda!194017))))

(assert (=> bs!1028752 (= (= (ListMap!4342 Nil!51620) lt!1793908) (= lambda!194149 lambda!194134))))

(declare-fun bs!1028759 () Bool)

(assert (= bs!1028759 (and b!4632890 d!1460072)))

(assert (=> bs!1028759 (not (= lambda!194149 lambda!194018))))

(assert (=> bs!1028753 (= lambda!194149 lambda!194141)))

(declare-fun bs!1028760 () Bool)

(assert (= bs!1028760 (and b!4632890 b!4632864)))

(assert (=> bs!1028760 (= lambda!194149 lambda!194132)))

(declare-fun bs!1028761 () Bool)

(assert (= bs!1028761 (and b!4632890 d!1460228)))

(assert (=> bs!1028761 (= (= (ListMap!4342 Nil!51620) lt!1793913) (= lambda!194149 lambda!194135))))

(declare-fun bs!1028762 () Bool)

(assert (= bs!1028762 (and b!4632890 b!4632887)))

(assert (=> bs!1028762 (= lambda!194149 lambda!194148)))

(assert (=> b!4632890 true))

(declare-fun lt!1793984 () ListMap!4341)

(declare-fun lambda!194150 () Int)

(assert (=> b!4632890 (= (= lt!1793984 (ListMap!4342 Nil!51620)) (= lambda!194150 lambda!194149))))

(assert (=> bs!1028751 (= (= lt!1793984 lt!1793968) (= lambda!194150 lambda!194147))))

(assert (=> bs!1028752 (= (= lt!1793984 (ListMap!4342 Nil!51620)) (= lambda!194150 lambda!194133))))

(assert (=> bs!1028753 (= (= lt!1793984 lt!1793942) (= lambda!194150 lambda!194142))))

(assert (=> bs!1028754 (= (= lt!1793984 (ListMap!4342 Nil!51620)) (= lambda!194150 lambda!194145))))

(assert (=> bs!1028754 (= (= lt!1793984 lt!1793963) (= lambda!194150 lambda!194146))))

(assert (=> bs!1028755 (= (= lt!1793984 lt!1793947) (= lambda!194150 lambda!194143))))

(assert (=> bs!1028756 (= (= lt!1793984 (ListMap!4342 Nil!51620)) (= lambda!194150 lambda!194140))))

(assert (=> bs!1028757 (= (= lt!1793984 (ListMap!4342 Nil!51620)) (= lambda!194150 lambda!194144))))

(assert (=> bs!1028758 (not (= lambda!194150 lambda!194017))))

(assert (=> bs!1028752 (= (= lt!1793984 lt!1793908) (= lambda!194150 lambda!194134))))

(assert (=> bs!1028759 (not (= lambda!194150 lambda!194018))))

(assert (=> bs!1028753 (= (= lt!1793984 (ListMap!4342 Nil!51620)) (= lambda!194150 lambda!194141))))

(assert (=> bs!1028760 (= (= lt!1793984 (ListMap!4342 Nil!51620)) (= lambda!194150 lambda!194132))))

(assert (=> bs!1028761 (= (= lt!1793984 lt!1793913) (= lambda!194150 lambda!194135))))

(assert (=> bs!1028762 (= (= lt!1793984 (ListMap!4342 Nil!51620)) (= lambda!194150 lambda!194148))))

(assert (=> b!4632890 true))

(declare-fun bs!1028763 () Bool)

(declare-fun d!1460284 () Bool)

(assert (= bs!1028763 (and d!1460284 b!4632890)))

(declare-fun lt!1793989 () ListMap!4341)

(declare-fun lambda!194151 () Int)

(assert (=> bs!1028763 (= (= lt!1793989 (ListMap!4342 Nil!51620)) (= lambda!194151 lambda!194149))))

(declare-fun bs!1028764 () Bool)

(assert (= bs!1028764 (and d!1460284 d!1460280)))

(assert (=> bs!1028764 (= (= lt!1793989 lt!1793968) (= lambda!194151 lambda!194147))))

(declare-fun bs!1028765 () Bool)

(assert (= bs!1028765 (and d!1460284 b!4632880)))

(assert (=> bs!1028765 (= (= lt!1793989 lt!1793942) (= lambda!194151 lambda!194142))))

(declare-fun bs!1028766 () Bool)

(assert (= bs!1028766 (and d!1460284 b!4632885)))

(assert (=> bs!1028766 (= (= lt!1793989 (ListMap!4342 Nil!51620)) (= lambda!194151 lambda!194145))))

(assert (=> bs!1028766 (= (= lt!1793989 lt!1793963) (= lambda!194151 lambda!194146))))

(declare-fun bs!1028767 () Bool)

(assert (= bs!1028767 (and d!1460284 d!1460278)))

(assert (=> bs!1028767 (= (= lt!1793989 lt!1793947) (= lambda!194151 lambda!194143))))

(declare-fun bs!1028768 () Bool)

(assert (= bs!1028768 (and d!1460284 b!4632877)))

(assert (=> bs!1028768 (= (= lt!1793989 (ListMap!4342 Nil!51620)) (= lambda!194151 lambda!194140))))

(declare-fun bs!1028769 () Bool)

(assert (= bs!1028769 (and d!1460284 b!4632882)))

(assert (=> bs!1028769 (= (= lt!1793989 (ListMap!4342 Nil!51620)) (= lambda!194151 lambda!194144))))

(declare-fun bs!1028770 () Bool)

(assert (= bs!1028770 (and d!1460284 d!1460070)))

(assert (=> bs!1028770 (not (= lambda!194151 lambda!194017))))

(declare-fun bs!1028771 () Bool)

(assert (= bs!1028771 (and d!1460284 b!4632867)))

(assert (=> bs!1028771 (= (= lt!1793989 lt!1793908) (= lambda!194151 lambda!194134))))

(declare-fun bs!1028772 () Bool)

(assert (= bs!1028772 (and d!1460284 d!1460072)))

(assert (=> bs!1028772 (not (= lambda!194151 lambda!194018))))

(assert (=> bs!1028771 (= (= lt!1793989 (ListMap!4342 Nil!51620)) (= lambda!194151 lambda!194133))))

(assert (=> bs!1028763 (= (= lt!1793989 lt!1793984) (= lambda!194151 lambda!194150))))

(assert (=> bs!1028765 (= (= lt!1793989 (ListMap!4342 Nil!51620)) (= lambda!194151 lambda!194141))))

(declare-fun bs!1028773 () Bool)

(assert (= bs!1028773 (and d!1460284 b!4632864)))

(assert (=> bs!1028773 (= (= lt!1793989 (ListMap!4342 Nil!51620)) (= lambda!194151 lambda!194132))))

(declare-fun bs!1028774 () Bool)

(assert (= bs!1028774 (and d!1460284 d!1460228)))

(assert (=> bs!1028774 (= (= lt!1793989 lt!1793913) (= lambda!194151 lambda!194135))))

(declare-fun bs!1028775 () Bool)

(assert (= bs!1028775 (and d!1460284 b!4632887)))

(assert (=> bs!1028775 (= (= lt!1793989 (ListMap!4342 Nil!51620)) (= lambda!194151 lambda!194148))))

(assert (=> d!1460284 true))

(declare-fun bm!323290 () Bool)

(declare-fun call!323297 () Bool)

(declare-fun c!792983 () Bool)

(assert (=> bm!323290 (= call!323297 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) (ite c!792983 lambda!194148 lambda!194150)))))

(declare-fun call!323296 () Bool)

(declare-fun bm!323291 () Bool)

(assert (=> bm!323291 (= call!323296 (forall!10876 (ite c!792983 (toList!5037 (ListMap!4342 Nil!51620)) (Cons!51620 lt!1793409 lt!1793413)) (ite c!792983 lambda!194148 lambda!194150)))))

(declare-fun e!2890073 () ListMap!4341)

(assert (=> b!4632887 (= e!2890073 (ListMap!4342 Nil!51620))))

(declare-fun lt!1793992 () Unit!113631)

(declare-fun call!323295 () Unit!113631)

(assert (=> b!4632887 (= lt!1793992 call!323295)))

(assert (=> b!4632887 call!323296))

(declare-fun lt!1793981 () Unit!113631)

(assert (=> b!4632887 (= lt!1793981 lt!1793992)))

(assert (=> b!4632887 call!323297))

(declare-fun lt!1793994 () Unit!113631)

(declare-fun Unit!113729 () Unit!113631)

(assert (=> b!4632887 (= lt!1793994 Unit!113729)))

(declare-fun b!4632888 () Bool)

(declare-fun e!2890071 () Bool)

(assert (=> b!4632888 (= e!2890071 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194150))))

(declare-fun b!4632889 () Bool)

(declare-fun res!1944105 () Bool)

(declare-fun e!2890072 () Bool)

(assert (=> b!4632889 (=> (not res!1944105) (not e!2890072))))

(assert (=> b!4632889 (= res!1944105 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194151))))

(declare-fun b!4632891 () Bool)

(assert (=> b!4632891 (= e!2890072 (invariantList!1230 (toList!5037 lt!1793989)))))

(declare-fun bm!323292 () Bool)

(assert (=> bm!323292 (= call!323295 (lemmaContainsAllItsOwnKeys!532 (ListMap!4342 Nil!51620)))))

(assert (=> d!1460284 e!2890072))

(declare-fun res!1944106 () Bool)

(assert (=> d!1460284 (=> (not res!1944106) (not e!2890072))))

(assert (=> d!1460284 (= res!1944106 (forall!10876 (Cons!51620 lt!1793409 lt!1793413) lambda!194151))))

(assert (=> d!1460284 (= lt!1793989 e!2890073)))

(assert (=> d!1460284 (= c!792983 ((_ is Nil!51620) (Cons!51620 lt!1793409 lt!1793413)))))

(assert (=> d!1460284 (noDuplicateKeys!1536 (Cons!51620 lt!1793409 lt!1793413))))

(assert (=> d!1460284 (= (addToMapMapFromBucket!997 (Cons!51620 lt!1793409 lt!1793413) (ListMap!4342 Nil!51620)) lt!1793989)))

(assert (=> b!4632890 (= e!2890073 lt!1793984)))

(declare-fun lt!1793983 () ListMap!4341)

(assert (=> b!4632890 (= lt!1793983 (+!1902 (ListMap!4342 Nil!51620) (h!57696 (Cons!51620 lt!1793409 lt!1793413))))))

(assert (=> b!4632890 (= lt!1793984 (addToMapMapFromBucket!997 (t!358802 (Cons!51620 lt!1793409 lt!1793413)) (+!1902 (ListMap!4342 Nil!51620) (h!57696 (Cons!51620 lt!1793409 lt!1793413)))))))

(declare-fun lt!1793990 () Unit!113631)

(assert (=> b!4632890 (= lt!1793990 call!323295)))

(assert (=> b!4632890 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194149)))

(declare-fun lt!1793975 () Unit!113631)

(assert (=> b!4632890 (= lt!1793975 lt!1793990)))

(assert (=> b!4632890 (forall!10876 (toList!5037 lt!1793983) lambda!194150)))

(declare-fun lt!1793978 () Unit!113631)

(declare-fun Unit!113730 () Unit!113631)

(assert (=> b!4632890 (= lt!1793978 Unit!113730)))

(assert (=> b!4632890 (forall!10876 (t!358802 (Cons!51620 lt!1793409 lt!1793413)) lambda!194150)))

(declare-fun lt!1793977 () Unit!113631)

(declare-fun Unit!113731 () Unit!113631)

(assert (=> b!4632890 (= lt!1793977 Unit!113731)))

(declare-fun lt!1793982 () Unit!113631)

(declare-fun Unit!113732 () Unit!113631)

(assert (=> b!4632890 (= lt!1793982 Unit!113732)))

(declare-fun lt!1793993 () Unit!113631)

(assert (=> b!4632890 (= lt!1793993 (forallContained!3108 (toList!5037 lt!1793983) lambda!194150 (h!57696 (Cons!51620 lt!1793409 lt!1793413))))))

(assert (=> b!4632890 (contains!14721 lt!1793983 (_1!29589 (h!57696 (Cons!51620 lt!1793409 lt!1793413))))))

(declare-fun lt!1793980 () Unit!113631)

(declare-fun Unit!113733 () Unit!113631)

(assert (=> b!4632890 (= lt!1793980 Unit!113733)))

(assert (=> b!4632890 (contains!14721 lt!1793984 (_1!29589 (h!57696 (Cons!51620 lt!1793409 lt!1793413))))))

(declare-fun lt!1793988 () Unit!113631)

(declare-fun Unit!113734 () Unit!113631)

(assert (=> b!4632890 (= lt!1793988 Unit!113734)))

(assert (=> b!4632890 call!323296))

(declare-fun lt!1793995 () Unit!113631)

(declare-fun Unit!113735 () Unit!113631)

(assert (=> b!4632890 (= lt!1793995 Unit!113735)))

(assert (=> b!4632890 (forall!10876 (toList!5037 lt!1793983) lambda!194150)))

(declare-fun lt!1793987 () Unit!113631)

(declare-fun Unit!113736 () Unit!113631)

(assert (=> b!4632890 (= lt!1793987 Unit!113736)))

(declare-fun lt!1793976 () Unit!113631)

(declare-fun Unit!113737 () Unit!113631)

(assert (=> b!4632890 (= lt!1793976 Unit!113737)))

(declare-fun lt!1793991 () Unit!113631)

(assert (=> b!4632890 (= lt!1793991 (addForallContainsKeyThenBeforeAdding!531 (ListMap!4342 Nil!51620) lt!1793984 (_1!29589 (h!57696 (Cons!51620 lt!1793409 lt!1793413))) (_2!29589 (h!57696 (Cons!51620 lt!1793409 lt!1793413)))))))

(assert (=> b!4632890 (forall!10876 (toList!5037 (ListMap!4342 Nil!51620)) lambda!194150)))

(declare-fun lt!1793985 () Unit!113631)

(assert (=> b!4632890 (= lt!1793985 lt!1793991)))

(assert (=> b!4632890 call!323297))

(declare-fun lt!1793979 () Unit!113631)

(declare-fun Unit!113738 () Unit!113631)

(assert (=> b!4632890 (= lt!1793979 Unit!113738)))

(declare-fun res!1944107 () Bool)

(assert (=> b!4632890 (= res!1944107 (forall!10876 (Cons!51620 lt!1793409 lt!1793413) lambda!194150))))

(assert (=> b!4632890 (=> (not res!1944107) (not e!2890071))))

(assert (=> b!4632890 e!2890071))

(declare-fun lt!1793986 () Unit!113631)

(declare-fun Unit!113739 () Unit!113631)

(assert (=> b!4632890 (= lt!1793986 Unit!113739)))

(assert (= (and d!1460284 c!792983) b!4632887))

(assert (= (and d!1460284 (not c!792983)) b!4632890))

(assert (= (and b!4632890 res!1944107) b!4632888))

(assert (= (or b!4632887 b!4632890) bm!323292))

(assert (= (or b!4632887 b!4632890) bm!323291))

(assert (= (or b!4632887 b!4632890) bm!323290))

(assert (= (and d!1460284 res!1944106) b!4632889))

(assert (= (and b!4632889 res!1944105) b!4632891))

(declare-fun m!5484921 () Bool)

(assert (=> d!1460284 m!5484921))

(declare-fun m!5484923 () Bool)

(assert (=> d!1460284 m!5484923))

(declare-fun m!5484925 () Bool)

(assert (=> bm!323290 m!5484925))

(declare-fun m!5484927 () Bool)

(assert (=> b!4632890 m!5484927))

(declare-fun m!5484929 () Bool)

(assert (=> b!4632890 m!5484929))

(declare-fun m!5484931 () Bool)

(assert (=> b!4632890 m!5484931))

(declare-fun m!5484933 () Bool)

(assert (=> b!4632890 m!5484933))

(assert (=> b!4632890 m!5484931))

(declare-fun m!5484935 () Bool)

(assert (=> b!4632890 m!5484935))

(declare-fun m!5484937 () Bool)

(assert (=> b!4632890 m!5484937))

(declare-fun m!5484939 () Bool)

(assert (=> b!4632890 m!5484939))

(declare-fun m!5484941 () Bool)

(assert (=> b!4632890 m!5484941))

(assert (=> b!4632890 m!5484941))

(declare-fun m!5484943 () Bool)

(assert (=> b!4632890 m!5484943))

(declare-fun m!5484945 () Bool)

(assert (=> b!4632890 m!5484945))

(declare-fun m!5484947 () Bool)

(assert (=> b!4632890 m!5484947))

(declare-fun m!5484949 () Bool)

(assert (=> b!4632891 m!5484949))

(declare-fun m!5484951 () Bool)

(assert (=> b!4632889 m!5484951))

(assert (=> bm!323292 m!5484805))

(declare-fun m!5484953 () Bool)

(assert (=> bm!323291 m!5484953))

(assert (=> b!4632888 m!5484927))

(assert (=> b!4632474 d!1460284))

(declare-fun b!4632892 () Bool)

(declare-fun e!2890074 () List!51747)

(assert (=> b!4632892 (= e!2890074 (getKeysList!681 (toList!5037 lt!1793407)))))

(declare-fun b!4632893 () Bool)

(declare-fun e!2890075 () Bool)

(assert (=> b!4632893 (= e!2890075 (contains!14725 (keys!18210 lt!1793407) key!4968))))

(declare-fun b!4632895 () Bool)

(declare-fun e!2890076 () Bool)

(assert (=> b!4632895 (= e!2890076 (not (contains!14725 (keys!18210 lt!1793407) key!4968)))))

(declare-fun b!4632896 () Bool)

(declare-fun e!2890079 () Unit!113631)

(declare-fun e!2890077 () Unit!113631)

(assert (=> b!4632896 (= e!2890079 e!2890077)))

(declare-fun c!792985 () Bool)

(declare-fun call!323298 () Bool)

(assert (=> b!4632896 (= c!792985 call!323298)))

(declare-fun b!4632897 () Bool)

(declare-fun e!2890078 () Bool)

(assert (=> b!4632897 (= e!2890078 e!2890075)))

(declare-fun res!1944108 () Bool)

(assert (=> b!4632897 (=> (not res!1944108) (not e!2890075))))

(assert (=> b!4632897 (= res!1944108 (isDefined!8938 (getValueByKey!1502 (toList!5037 lt!1793407) key!4968)))))

(declare-fun b!4632898 () Bool)

(assert (=> b!4632898 false))

(declare-fun lt!1794000 () Unit!113631)

(declare-fun lt!1794003 () Unit!113631)

(assert (=> b!4632898 (= lt!1794000 lt!1794003)))

(assert (=> b!4632898 (containsKey!2531 (toList!5037 lt!1793407) key!4968)))

(assert (=> b!4632898 (= lt!1794003 (lemmaInGetKeysListThenContainsKey!680 (toList!5037 lt!1793407) key!4968))))

(declare-fun Unit!113740 () Unit!113631)

(assert (=> b!4632898 (= e!2890077 Unit!113740)))

(declare-fun b!4632899 () Bool)

(assert (=> b!4632899 (= e!2890074 (keys!18210 lt!1793407))))

(declare-fun b!4632900 () Bool)

(declare-fun Unit!113741 () Unit!113631)

(assert (=> b!4632900 (= e!2890077 Unit!113741)))

(declare-fun bm!323293 () Bool)

(assert (=> bm!323293 (= call!323298 (contains!14725 e!2890074 key!4968))))

(declare-fun c!792984 () Bool)

(declare-fun c!792986 () Bool)

(assert (=> bm!323293 (= c!792984 c!792986)))

(declare-fun d!1460286 () Bool)

(assert (=> d!1460286 e!2890078))

(declare-fun res!1944110 () Bool)

(assert (=> d!1460286 (=> res!1944110 e!2890078)))

(assert (=> d!1460286 (= res!1944110 e!2890076)))

(declare-fun res!1944109 () Bool)

(assert (=> d!1460286 (=> (not res!1944109) (not e!2890076))))

(declare-fun lt!1793999 () Bool)

(assert (=> d!1460286 (= res!1944109 (not lt!1793999))))

(declare-fun lt!1793998 () Bool)

(assert (=> d!1460286 (= lt!1793999 lt!1793998)))

(declare-fun lt!1793997 () Unit!113631)

(assert (=> d!1460286 (= lt!1793997 e!2890079)))

(assert (=> d!1460286 (= c!792986 lt!1793998)))

(assert (=> d!1460286 (= lt!1793998 (containsKey!2531 (toList!5037 lt!1793407) key!4968))))

(assert (=> d!1460286 (= (contains!14721 lt!1793407 key!4968) lt!1793999)))

(declare-fun b!4632894 () Bool)

(declare-fun lt!1794002 () Unit!113631)

(assert (=> b!4632894 (= e!2890079 lt!1794002)))

(declare-fun lt!1793996 () Unit!113631)

(assert (=> b!4632894 (= lt!1793996 (lemmaContainsKeyImpliesGetValueByKeyDefined!1405 (toList!5037 lt!1793407) key!4968))))

(assert (=> b!4632894 (isDefined!8938 (getValueByKey!1502 (toList!5037 lt!1793407) key!4968))))

(declare-fun lt!1794001 () Unit!113631)

(assert (=> b!4632894 (= lt!1794001 lt!1793996)))

(assert (=> b!4632894 (= lt!1794002 (lemmaInListThenGetKeysListContains!676 (toList!5037 lt!1793407) key!4968))))

(assert (=> b!4632894 call!323298))

(assert (= (and d!1460286 c!792986) b!4632894))

(assert (= (and d!1460286 (not c!792986)) b!4632896))

(assert (= (and b!4632896 c!792985) b!4632898))

(assert (= (and b!4632896 (not c!792985)) b!4632900))

(assert (= (or b!4632894 b!4632896) bm!323293))

(assert (= (and bm!323293 c!792984) b!4632892))

(assert (= (and bm!323293 (not c!792984)) b!4632899))

(assert (= (and d!1460286 res!1944109) b!4632895))

(assert (= (and d!1460286 (not res!1944110)) b!4632897))

(assert (= (and b!4632897 res!1944108) b!4632893))

(declare-fun m!5484955 () Bool)

(assert (=> b!4632893 m!5484955))

(assert (=> b!4632893 m!5484955))

(declare-fun m!5484957 () Bool)

(assert (=> b!4632893 m!5484957))

(assert (=> b!4632899 m!5484955))

(declare-fun m!5484959 () Bool)

(assert (=> bm!323293 m!5484959))

(assert (=> b!4632895 m!5484955))

(assert (=> b!4632895 m!5484955))

(assert (=> b!4632895 m!5484957))

(declare-fun m!5484961 () Bool)

(assert (=> b!4632894 m!5484961))

(declare-fun m!5484963 () Bool)

(assert (=> b!4632894 m!5484963))

(assert (=> b!4632894 m!5484963))

(declare-fun m!5484965 () Bool)

(assert (=> b!4632894 m!5484965))

(declare-fun m!5484967 () Bool)

(assert (=> b!4632894 m!5484967))

(assert (=> b!4632897 m!5484963))

(assert (=> b!4632897 m!5484963))

(assert (=> b!4632897 m!5484965))

(declare-fun m!5484969 () Bool)

(assert (=> b!4632892 m!5484969))

(declare-fun m!5484971 () Bool)

(assert (=> b!4632898 m!5484971))

(declare-fun m!5484973 () Bool)

(assert (=> b!4632898 m!5484973))

(assert (=> d!1460286 m!5484971))

(assert (=> b!4632474 d!1460286))

(declare-fun d!1460288 () Bool)

(assert (=> d!1460288 (= (eq!851 (addToMapMapFromBucket!997 (Cons!51620 lt!1793409 lt!1793413) (ListMap!4342 Nil!51620)) (+!1902 (addToMapMapFromBucket!997 lt!1793413 (ListMap!4342 Nil!51620)) lt!1793409)) (= (content!8874 (toList!5037 (addToMapMapFromBucket!997 (Cons!51620 lt!1793409 lt!1793413) (ListMap!4342 Nil!51620)))) (content!8874 (toList!5037 (+!1902 (addToMapMapFromBucket!997 lt!1793413 (ListMap!4342 Nil!51620)) lt!1793409)))))))

(declare-fun bs!1028776 () Bool)

(assert (= bs!1028776 d!1460288))

(declare-fun m!5484975 () Bool)

(assert (=> bs!1028776 m!5484975))

(declare-fun m!5484977 () Bool)

(assert (=> bs!1028776 m!5484977))

(assert (=> b!4632474 d!1460288))

(declare-fun d!1460290 () Bool)

(assert (=> d!1460290 (= (eq!851 lt!1793401 (+!1902 (extractMap!1592 (Cons!51621 (tuple2!52593 hash!414 lt!1793406) Nil!51621)) (h!57696 oldBucket!40))) (= (content!8874 (toList!5037 lt!1793401)) (content!8874 (toList!5037 (+!1902 (extractMap!1592 (Cons!51621 (tuple2!52593 hash!414 lt!1793406) Nil!51621)) (h!57696 oldBucket!40))))))))

(declare-fun bs!1028777 () Bool)

(assert (= bs!1028777 d!1460290))

(declare-fun m!5484979 () Bool)

(assert (=> bs!1028777 m!5484979))

(declare-fun m!5484981 () Bool)

(assert (=> bs!1028777 m!5484981))

(assert (=> b!4632474 d!1460290))

(declare-fun d!1460292 () Bool)

(declare-fun res!1944111 () Bool)

(declare-fun e!2890080 () Bool)

(assert (=> d!1460292 (=> res!1944111 e!2890080)))

(assert (=> d!1460292 (= res!1944111 (not ((_ is Cons!51620) newBucket!224)))))

(assert (=> d!1460292 (= (noDuplicateKeys!1536 newBucket!224) e!2890080)))

(declare-fun b!4632901 () Bool)

(declare-fun e!2890081 () Bool)

(assert (=> b!4632901 (= e!2890080 e!2890081)))

(declare-fun res!1944112 () Bool)

(assert (=> b!4632901 (=> (not res!1944112) (not e!2890081))))

(assert (=> b!4632901 (= res!1944112 (not (containsKey!2528 (t!358802 newBucket!224) (_1!29589 (h!57696 newBucket!224)))))))

(declare-fun b!4632902 () Bool)

(assert (=> b!4632902 (= e!2890081 (noDuplicateKeys!1536 (t!358802 newBucket!224)))))

(assert (= (and d!1460292 (not res!1944111)) b!4632901))

(assert (= (and b!4632901 res!1944112) b!4632902))

(declare-fun m!5484983 () Bool)

(assert (=> b!4632901 m!5484983))

(declare-fun m!5484985 () Bool)

(assert (=> b!4632902 m!5484985))

(assert (=> b!4632485 d!1460292))

(declare-fun d!1460294 () Bool)

(declare-fun lt!1794004 () List!51744)

(assert (=> d!1460294 (not (containsKey!2528 lt!1794004 key!4968))))

(declare-fun e!2890082 () List!51744)

(assert (=> d!1460294 (= lt!1794004 e!2890082)))

(declare-fun c!792988 () Bool)

(assert (=> d!1460294 (= c!792988 (and ((_ is Cons!51620) oldBucket!40) (= (_1!29589 (h!57696 oldBucket!40)) key!4968)))))

(assert (=> d!1460294 (noDuplicateKeys!1536 oldBucket!40)))

(assert (=> d!1460294 (= (removePairForKey!1159 oldBucket!40 key!4968) lt!1794004)))

(declare-fun b!4632905 () Bool)

(declare-fun e!2890083 () List!51744)

(assert (=> b!4632905 (= e!2890083 (Cons!51620 (h!57696 oldBucket!40) (removePairForKey!1159 (t!358802 oldBucket!40) key!4968)))))

(declare-fun b!4632904 () Bool)

(assert (=> b!4632904 (= e!2890082 e!2890083)))

(declare-fun c!792987 () Bool)

(assert (=> b!4632904 (= c!792987 ((_ is Cons!51620) oldBucket!40))))

(declare-fun b!4632906 () Bool)

(assert (=> b!4632906 (= e!2890083 Nil!51620)))

(declare-fun b!4632903 () Bool)

(assert (=> b!4632903 (= e!2890082 (t!358802 oldBucket!40))))

(assert (= (and d!1460294 c!792988) b!4632903))

(assert (= (and d!1460294 (not c!792988)) b!4632904))

(assert (= (and b!4632904 c!792987) b!4632905))

(assert (= (and b!4632904 (not c!792987)) b!4632906))

(declare-fun m!5484987 () Bool)

(assert (=> d!1460294 m!5484987))

(assert (=> d!1460294 m!5483955))

(assert (=> b!4632905 m!5483893))

(assert (=> b!4632475 d!1460294))

(declare-fun d!1460296 () Bool)

(declare-fun hash!3584 (Hashable!5933 K!12990) (_ BitVec 64))

(assert (=> d!1460296 (= (hash!3580 hashF!1389 key!4968) (hash!3584 hashF!1389 key!4968))))

(declare-fun bs!1028778 () Bool)

(assert (= bs!1028778 d!1460296))

(declare-fun m!5484989 () Bool)

(assert (=> bs!1028778 m!5484989))

(assert (=> b!4632473 d!1460296))

(declare-fun d!1460298 () Bool)

(declare-fun e!2890084 () Bool)

(assert (=> d!1460298 e!2890084))

(declare-fun res!1944113 () Bool)

(assert (=> d!1460298 (=> (not res!1944113) (not e!2890084))))

(declare-fun lt!1794007 () ListMap!4341)

(assert (=> d!1460298 (= res!1944113 (contains!14721 lt!1794007 (_1!29589 (h!57696 oldBucket!40))))))

(declare-fun lt!1794008 () List!51744)

(assert (=> d!1460298 (= lt!1794007 (ListMap!4342 lt!1794008))))

(declare-fun lt!1794006 () Unit!113631)

(declare-fun lt!1794005 () Unit!113631)

(assert (=> d!1460298 (= lt!1794006 lt!1794005)))

(assert (=> d!1460298 (= (getValueByKey!1502 lt!1794008 (_1!29589 (h!57696 oldBucket!40))) (Some!11671 (_2!29589 (h!57696 oldBucket!40))))))

(assert (=> d!1460298 (= lt!1794005 (lemmaContainsTupThenGetReturnValue!874 lt!1794008 (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40))))))

(assert (=> d!1460298 (= lt!1794008 (insertNoDuplicatedKeys!382 (toList!5037 lt!1793407) (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40))))))

(assert (=> d!1460298 (= (+!1902 lt!1793407 (h!57696 oldBucket!40)) lt!1794007)))

(declare-fun b!4632907 () Bool)

(declare-fun res!1944114 () Bool)

(assert (=> b!4632907 (=> (not res!1944114) (not e!2890084))))

(assert (=> b!4632907 (= res!1944114 (= (getValueByKey!1502 (toList!5037 lt!1794007) (_1!29589 (h!57696 oldBucket!40))) (Some!11671 (_2!29589 (h!57696 oldBucket!40)))))))

(declare-fun b!4632908 () Bool)

(assert (=> b!4632908 (= e!2890084 (contains!14724 (toList!5037 lt!1794007) (h!57696 oldBucket!40)))))

(assert (= (and d!1460298 res!1944113) b!4632907))

(assert (= (and b!4632907 res!1944114) b!4632908))

(declare-fun m!5484991 () Bool)

(assert (=> d!1460298 m!5484991))

(declare-fun m!5484993 () Bool)

(assert (=> d!1460298 m!5484993))

(declare-fun m!5484995 () Bool)

(assert (=> d!1460298 m!5484995))

(declare-fun m!5484997 () Bool)

(assert (=> d!1460298 m!5484997))

(declare-fun m!5484999 () Bool)

(assert (=> b!4632907 m!5484999))

(declare-fun m!5485001 () Bool)

(assert (=> b!4632908 m!5485001))

(assert (=> b!4632484 d!1460298))

(declare-fun d!1460300 () Bool)

(assert (=> d!1460300 (eq!851 (extractMap!1592 (Cons!51621 (tuple2!52593 hash!414 lt!1793413) Nil!51621)) (-!576 (extractMap!1592 (Cons!51621 (tuple2!52593 hash!414 (t!358802 oldBucket!40)) Nil!51621)) key!4968))))

(declare-fun lt!1794011 () Unit!113631)

(declare-fun choose!31567 ((_ BitVec 64) List!51744 List!51744 K!12990 Hashable!5933) Unit!113631)

(assert (=> d!1460300 (= lt!1794011 (choose!31567 hash!414 (t!358802 oldBucket!40) lt!1793413 key!4968 hashF!1389))))

(assert (=> d!1460300 (noDuplicateKeys!1536 (t!358802 oldBucket!40))))

(assert (=> d!1460300 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!138 hash!414 (t!358802 oldBucket!40) lt!1793413 key!4968 hashF!1389) lt!1794011)))

(declare-fun bs!1028779 () Bool)

(assert (= bs!1028779 d!1460300))

(declare-fun m!5485003 () Bool)

(assert (=> bs!1028779 m!5485003))

(declare-fun m!5485005 () Bool)

(assert (=> bs!1028779 m!5485005))

(assert (=> bs!1028779 m!5484541))

(assert (=> bs!1028779 m!5485003))

(assert (=> bs!1028779 m!5483923))

(declare-fun m!5485007 () Bool)

(assert (=> bs!1028779 m!5485007))

(assert (=> bs!1028779 m!5483923))

(assert (=> bs!1028779 m!5485005))

(declare-fun m!5485009 () Bool)

(assert (=> bs!1028779 m!5485009))

(assert (=> b!4632484 d!1460300))

(declare-fun d!1460302 () Bool)

(assert (=> d!1460302 (= (-!576 (+!1902 lt!1793407 (tuple2!52591 (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40)))) key!4968) (+!1902 (-!576 lt!1793407 key!4968) (tuple2!52591 (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40)))))))

(declare-fun lt!1794014 () Unit!113631)

(declare-fun choose!31568 (ListMap!4341 K!12990 V!13236 K!12990) Unit!113631)

(assert (=> d!1460302 (= lt!1794014 (choose!31568 lt!1793407 (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40)) key!4968))))

(assert (=> d!1460302 (not (= (_1!29589 (h!57696 oldBucket!40)) key!4968))))

(assert (=> d!1460302 (= (addRemoveCommutativeForDiffKeys!31 lt!1793407 (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40)) key!4968) lt!1794014)))

(declare-fun bs!1028780 () Bool)

(assert (= bs!1028780 d!1460302))

(assert (=> bs!1028780 m!5483931))

(declare-fun m!5485011 () Bool)

(assert (=> bs!1028780 m!5485011))

(declare-fun m!5485013 () Bool)

(assert (=> bs!1028780 m!5485013))

(assert (=> bs!1028780 m!5485013))

(declare-fun m!5485015 () Bool)

(assert (=> bs!1028780 m!5485015))

(assert (=> bs!1028780 m!5483931))

(declare-fun m!5485017 () Bool)

(assert (=> bs!1028780 m!5485017))

(assert (=> b!4632484 d!1460302))

(declare-fun d!1460304 () Bool)

(declare-fun e!2890085 () Bool)

(assert (=> d!1460304 e!2890085))

(declare-fun res!1944115 () Bool)

(assert (=> d!1460304 (=> (not res!1944115) (not e!2890085))))

(declare-fun lt!1794015 () ListMap!4341)

(assert (=> d!1460304 (= res!1944115 (not (contains!14721 lt!1794015 key!4968)))))

(assert (=> d!1460304 (= lt!1794015 (ListMap!4342 (removePresrvNoDuplicatedKeys!279 (toList!5037 lt!1793410) key!4968)))))

(assert (=> d!1460304 (= (-!576 lt!1793410 key!4968) lt!1794015)))

(declare-fun b!4632909 () Bool)

(assert (=> b!4632909 (= e!2890085 (= ((_ map and) (content!8875 (keys!18210 lt!1793410)) ((_ map not) (store ((as const (Array K!12990 Bool)) false) key!4968 true))) (content!8875 (keys!18210 lt!1794015))))))

(assert (= (and d!1460304 res!1944115) b!4632909))

(declare-fun m!5485019 () Bool)

(assert (=> d!1460304 m!5485019))

(declare-fun m!5485021 () Bool)

(assert (=> d!1460304 m!5485021))

(declare-fun m!5485023 () Bool)

(assert (=> b!4632909 m!5485023))

(declare-fun m!5485025 () Bool)

(assert (=> b!4632909 m!5485025))

(declare-fun m!5485027 () Bool)

(assert (=> b!4632909 m!5485027))

(declare-fun m!5485029 () Bool)

(assert (=> b!4632909 m!5485029))

(assert (=> b!4632909 m!5485027))

(assert (=> b!4632909 m!5484147))

(assert (=> b!4632909 m!5485023))

(assert (=> b!4632484 d!1460304))

(declare-fun d!1460306 () Bool)

(declare-fun e!2890086 () Bool)

(assert (=> d!1460306 e!2890086))

(declare-fun res!1944116 () Bool)

(assert (=> d!1460306 (=> (not res!1944116) (not e!2890086))))

(declare-fun lt!1794018 () ListMap!4341)

(assert (=> d!1460306 (= res!1944116 (contains!14721 lt!1794018 (_1!29589 (h!57696 oldBucket!40))))))

(declare-fun lt!1794019 () List!51744)

(assert (=> d!1460306 (= lt!1794018 (ListMap!4342 lt!1794019))))

(declare-fun lt!1794017 () Unit!113631)

(declare-fun lt!1794016 () Unit!113631)

(assert (=> d!1460306 (= lt!1794017 lt!1794016)))

(assert (=> d!1460306 (= (getValueByKey!1502 lt!1794019 (_1!29589 (h!57696 oldBucket!40))) (Some!11671 (_2!29589 (h!57696 oldBucket!40))))))

(assert (=> d!1460306 (= lt!1794016 (lemmaContainsTupThenGetReturnValue!874 lt!1794019 (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40))))))

(assert (=> d!1460306 (= lt!1794019 (insertNoDuplicatedKeys!382 (toList!5037 lt!1793399) (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40))))))

(assert (=> d!1460306 (= (+!1902 lt!1793399 (h!57696 oldBucket!40)) lt!1794018)))

(declare-fun b!4632910 () Bool)

(declare-fun res!1944117 () Bool)

(assert (=> b!4632910 (=> (not res!1944117) (not e!2890086))))

(assert (=> b!4632910 (= res!1944117 (= (getValueByKey!1502 (toList!5037 lt!1794018) (_1!29589 (h!57696 oldBucket!40))) (Some!11671 (_2!29589 (h!57696 oldBucket!40)))))))

(declare-fun b!4632911 () Bool)

(assert (=> b!4632911 (= e!2890086 (contains!14724 (toList!5037 lt!1794018) (h!57696 oldBucket!40)))))

(assert (= (and d!1460306 res!1944116) b!4632910))

(assert (= (and b!4632910 res!1944117) b!4632911))

(declare-fun m!5485031 () Bool)

(assert (=> d!1460306 m!5485031))

(declare-fun m!5485033 () Bool)

(assert (=> d!1460306 m!5485033))

(declare-fun m!5485035 () Bool)

(assert (=> d!1460306 m!5485035))

(declare-fun m!5485037 () Bool)

(assert (=> d!1460306 m!5485037))

(declare-fun m!5485039 () Bool)

(assert (=> b!4632910 m!5485039))

(declare-fun m!5485041 () Bool)

(assert (=> b!4632911 m!5485041))

(assert (=> b!4632484 d!1460306))

(declare-fun d!1460308 () Bool)

(declare-fun e!2890087 () Bool)

(assert (=> d!1460308 e!2890087))

(declare-fun res!1944118 () Bool)

(assert (=> d!1460308 (=> (not res!1944118) (not e!2890087))))

(declare-fun lt!1794020 () ListMap!4341)

(assert (=> d!1460308 (= res!1944118 (not (contains!14721 lt!1794020 key!4968)))))

(assert (=> d!1460308 (= lt!1794020 (ListMap!4342 (removePresrvNoDuplicatedKeys!279 (toList!5037 (+!1902 lt!1793407 (h!57696 oldBucket!40))) key!4968)))))

(assert (=> d!1460308 (= (-!576 (+!1902 lt!1793407 (h!57696 oldBucket!40)) key!4968) lt!1794020)))

(declare-fun b!4632912 () Bool)

(assert (=> b!4632912 (= e!2890087 (= ((_ map and) (content!8875 (keys!18210 (+!1902 lt!1793407 (h!57696 oldBucket!40)))) ((_ map not) (store ((as const (Array K!12990 Bool)) false) key!4968 true))) (content!8875 (keys!18210 lt!1794020))))))

(assert (= (and d!1460308 res!1944118) b!4632912))

(declare-fun m!5485043 () Bool)

(assert (=> d!1460308 m!5485043))

(declare-fun m!5485045 () Bool)

(assert (=> d!1460308 m!5485045))

(declare-fun m!5485047 () Bool)

(assert (=> b!4632912 m!5485047))

(declare-fun m!5485049 () Bool)

(assert (=> b!4632912 m!5485049))

(declare-fun m!5485051 () Bool)

(assert (=> b!4632912 m!5485051))

(declare-fun m!5485053 () Bool)

(assert (=> b!4632912 m!5485053))

(assert (=> b!4632912 m!5483933))

(assert (=> b!4632912 m!5485051))

(assert (=> b!4632912 m!5484147))

(assert (=> b!4632912 m!5485047))

(assert (=> b!4632484 d!1460308))

(declare-fun d!1460310 () Bool)

(assert (=> d!1460310 (= (eq!851 lt!1793395 lt!1793399) (= (content!8874 (toList!5037 lt!1793395)) (content!8874 (toList!5037 lt!1793399))))))

(declare-fun bs!1028781 () Bool)

(assert (= bs!1028781 d!1460310))

(declare-fun m!5485055 () Bool)

(assert (=> bs!1028781 m!5485055))

(declare-fun m!5485057 () Bool)

(assert (=> bs!1028781 m!5485057))

(assert (=> b!4632484 d!1460310))

(declare-fun d!1460312 () Bool)

(declare-fun e!2890088 () Bool)

(assert (=> d!1460312 e!2890088))

(declare-fun res!1944119 () Bool)

(assert (=> d!1460312 (=> (not res!1944119) (not e!2890088))))

(declare-fun lt!1794021 () ListMap!4341)

(assert (=> d!1460312 (= res!1944119 (not (contains!14721 lt!1794021 key!4968)))))

(assert (=> d!1460312 (= lt!1794021 (ListMap!4342 (removePresrvNoDuplicatedKeys!279 (toList!5037 lt!1793407) key!4968)))))

(assert (=> d!1460312 (= (-!576 lt!1793407 key!4968) lt!1794021)))

(declare-fun b!4632913 () Bool)

(assert (=> b!4632913 (= e!2890088 (= ((_ map and) (content!8875 (keys!18210 lt!1793407)) ((_ map not) (store ((as const (Array K!12990 Bool)) false) key!4968 true))) (content!8875 (keys!18210 lt!1794021))))))

(assert (= (and d!1460312 res!1944119) b!4632913))

(declare-fun m!5485059 () Bool)

(assert (=> d!1460312 m!5485059))

(declare-fun m!5485061 () Bool)

(assert (=> d!1460312 m!5485061))

(declare-fun m!5485063 () Bool)

(assert (=> b!4632913 m!5485063))

(declare-fun m!5485065 () Bool)

(assert (=> b!4632913 m!5485065))

(assert (=> b!4632913 m!5484955))

(declare-fun m!5485067 () Bool)

(assert (=> b!4632913 m!5485067))

(assert (=> b!4632913 m!5484955))

(assert (=> b!4632913 m!5484147))

(assert (=> b!4632913 m!5485063))

(assert (=> b!4632484 d!1460312))

(declare-fun bs!1028782 () Bool)

(declare-fun b!4632914 () Bool)

(assert (= bs!1028782 (and b!4632914 b!4632890)))

(declare-fun lambda!194152 () Int)

(assert (=> bs!1028782 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194152 lambda!194149))))

(declare-fun bs!1028783 () Bool)

(assert (= bs!1028783 (and b!4632914 d!1460280)))

(assert (=> bs!1028783 (= (= lt!1793417 lt!1793968) (= lambda!194152 lambda!194147))))

(declare-fun bs!1028784 () Bool)

(assert (= bs!1028784 (and b!4632914 b!4632880)))

(assert (=> bs!1028784 (= (= lt!1793417 lt!1793942) (= lambda!194152 lambda!194142))))

(declare-fun bs!1028785 () Bool)

(assert (= bs!1028785 (and b!4632914 b!4632885)))

(assert (=> bs!1028785 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194152 lambda!194145))))

(declare-fun bs!1028786 () Bool)

(assert (= bs!1028786 (and b!4632914 d!1460284)))

(assert (=> bs!1028786 (= (= lt!1793417 lt!1793989) (= lambda!194152 lambda!194151))))

(assert (=> bs!1028785 (= (= lt!1793417 lt!1793963) (= lambda!194152 lambda!194146))))

(declare-fun bs!1028787 () Bool)

(assert (= bs!1028787 (and b!4632914 d!1460278)))

(assert (=> bs!1028787 (= (= lt!1793417 lt!1793947) (= lambda!194152 lambda!194143))))

(declare-fun bs!1028788 () Bool)

(assert (= bs!1028788 (and b!4632914 b!4632877)))

(assert (=> bs!1028788 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194152 lambda!194140))))

(declare-fun bs!1028789 () Bool)

(assert (= bs!1028789 (and b!4632914 b!4632882)))

(assert (=> bs!1028789 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194152 lambda!194144))))

(declare-fun bs!1028790 () Bool)

(assert (= bs!1028790 (and b!4632914 d!1460070)))

(assert (=> bs!1028790 (not (= lambda!194152 lambda!194017))))

(declare-fun bs!1028791 () Bool)

(assert (= bs!1028791 (and b!4632914 b!4632867)))

(assert (=> bs!1028791 (= (= lt!1793417 lt!1793908) (= lambda!194152 lambda!194134))))

(declare-fun bs!1028792 () Bool)

(assert (= bs!1028792 (and b!4632914 d!1460072)))

(assert (=> bs!1028792 (not (= lambda!194152 lambda!194018))))

(assert (=> bs!1028791 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194152 lambda!194133))))

(assert (=> bs!1028782 (= (= lt!1793417 lt!1793984) (= lambda!194152 lambda!194150))))

(assert (=> bs!1028784 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194152 lambda!194141))))

(declare-fun bs!1028793 () Bool)

(assert (= bs!1028793 (and b!4632914 b!4632864)))

(assert (=> bs!1028793 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194152 lambda!194132))))

(declare-fun bs!1028794 () Bool)

(assert (= bs!1028794 (and b!4632914 d!1460228)))

(assert (=> bs!1028794 (= (= lt!1793417 lt!1793913) (= lambda!194152 lambda!194135))))

(declare-fun bs!1028795 () Bool)

(assert (= bs!1028795 (and b!4632914 b!4632887)))

(assert (=> bs!1028795 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194152 lambda!194148))))

(assert (=> b!4632914 true))

(declare-fun bs!1028796 () Bool)

(declare-fun b!4632917 () Bool)

(assert (= bs!1028796 (and b!4632917 b!4632890)))

(declare-fun lambda!194153 () Int)

(assert (=> bs!1028796 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194153 lambda!194149))))

(declare-fun bs!1028797 () Bool)

(assert (= bs!1028797 (and b!4632917 d!1460280)))

(assert (=> bs!1028797 (= (= lt!1793417 lt!1793968) (= lambda!194153 lambda!194147))))

(declare-fun bs!1028798 () Bool)

(assert (= bs!1028798 (and b!4632917 b!4632880)))

(assert (=> bs!1028798 (= (= lt!1793417 lt!1793942) (= lambda!194153 lambda!194142))))

(declare-fun bs!1028799 () Bool)

(assert (= bs!1028799 (and b!4632917 b!4632885)))

(assert (=> bs!1028799 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194153 lambda!194145))))

(declare-fun bs!1028800 () Bool)

(assert (= bs!1028800 (and b!4632917 d!1460284)))

(assert (=> bs!1028800 (= (= lt!1793417 lt!1793989) (= lambda!194153 lambda!194151))))

(assert (=> bs!1028799 (= (= lt!1793417 lt!1793963) (= lambda!194153 lambda!194146))))

(declare-fun bs!1028801 () Bool)

(assert (= bs!1028801 (and b!4632917 b!4632877)))

(assert (=> bs!1028801 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194153 lambda!194140))))

(declare-fun bs!1028802 () Bool)

(assert (= bs!1028802 (and b!4632917 b!4632882)))

(assert (=> bs!1028802 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194153 lambda!194144))))

(declare-fun bs!1028803 () Bool)

(assert (= bs!1028803 (and b!4632917 d!1460070)))

(assert (=> bs!1028803 (not (= lambda!194153 lambda!194017))))

(declare-fun bs!1028804 () Bool)

(assert (= bs!1028804 (and b!4632917 b!4632867)))

(assert (=> bs!1028804 (= (= lt!1793417 lt!1793908) (= lambda!194153 lambda!194134))))

(declare-fun bs!1028805 () Bool)

(assert (= bs!1028805 (and b!4632917 d!1460072)))

(assert (=> bs!1028805 (not (= lambda!194153 lambda!194018))))

(assert (=> bs!1028804 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194153 lambda!194133))))

(assert (=> bs!1028796 (= (= lt!1793417 lt!1793984) (= lambda!194153 lambda!194150))))

(assert (=> bs!1028798 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194153 lambda!194141))))

(declare-fun bs!1028806 () Bool)

(assert (= bs!1028806 (and b!4632917 b!4632864)))

(assert (=> bs!1028806 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194153 lambda!194132))))

(declare-fun bs!1028807 () Bool)

(assert (= bs!1028807 (and b!4632917 d!1460278)))

(assert (=> bs!1028807 (= (= lt!1793417 lt!1793947) (= lambda!194153 lambda!194143))))

(declare-fun bs!1028808 () Bool)

(assert (= bs!1028808 (and b!4632917 b!4632914)))

(assert (=> bs!1028808 (= lambda!194153 lambda!194152)))

(declare-fun bs!1028809 () Bool)

(assert (= bs!1028809 (and b!4632917 d!1460228)))

(assert (=> bs!1028809 (= (= lt!1793417 lt!1793913) (= lambda!194153 lambda!194135))))

(declare-fun bs!1028810 () Bool)

(assert (= bs!1028810 (and b!4632917 b!4632887)))

(assert (=> bs!1028810 (= (= lt!1793417 (ListMap!4342 Nil!51620)) (= lambda!194153 lambda!194148))))

(assert (=> b!4632917 true))

(declare-fun lt!1794031 () ListMap!4341)

(declare-fun lambda!194154 () Int)

(assert (=> bs!1028796 (= (= lt!1794031 (ListMap!4342 Nil!51620)) (= lambda!194154 lambda!194149))))

(assert (=> bs!1028797 (= (= lt!1794031 lt!1793968) (= lambda!194154 lambda!194147))))

(assert (=> bs!1028798 (= (= lt!1794031 lt!1793942) (= lambda!194154 lambda!194142))))

(assert (=> bs!1028799 (= (= lt!1794031 (ListMap!4342 Nil!51620)) (= lambda!194154 lambda!194145))))

(assert (=> bs!1028800 (= (= lt!1794031 lt!1793989) (= lambda!194154 lambda!194151))))

(assert (=> bs!1028799 (= (= lt!1794031 lt!1793963) (= lambda!194154 lambda!194146))))

(assert (=> bs!1028801 (= (= lt!1794031 (ListMap!4342 Nil!51620)) (= lambda!194154 lambda!194140))))

(assert (=> bs!1028802 (= (= lt!1794031 (ListMap!4342 Nil!51620)) (= lambda!194154 lambda!194144))))

(assert (=> bs!1028803 (not (= lambda!194154 lambda!194017))))

(assert (=> bs!1028804 (= (= lt!1794031 lt!1793908) (= lambda!194154 lambda!194134))))

(assert (=> bs!1028805 (not (= lambda!194154 lambda!194018))))

(assert (=> bs!1028804 (= (= lt!1794031 (ListMap!4342 Nil!51620)) (= lambda!194154 lambda!194133))))

(assert (=> bs!1028796 (= (= lt!1794031 lt!1793984) (= lambda!194154 lambda!194150))))

(assert (=> bs!1028798 (= (= lt!1794031 (ListMap!4342 Nil!51620)) (= lambda!194154 lambda!194141))))

(assert (=> bs!1028806 (= (= lt!1794031 (ListMap!4342 Nil!51620)) (= lambda!194154 lambda!194132))))

(assert (=> bs!1028807 (= (= lt!1794031 lt!1793947) (= lambda!194154 lambda!194143))))

(assert (=> bs!1028808 (= (= lt!1794031 lt!1793417) (= lambda!194154 lambda!194152))))

(assert (=> b!4632917 (= (= lt!1794031 lt!1793417) (= lambda!194154 lambda!194153))))

(assert (=> bs!1028809 (= (= lt!1794031 lt!1793913) (= lambda!194154 lambda!194135))))

(assert (=> bs!1028810 (= (= lt!1794031 (ListMap!4342 Nil!51620)) (= lambda!194154 lambda!194148))))

(assert (=> b!4632917 true))

(declare-fun bs!1028811 () Bool)

(declare-fun d!1460314 () Bool)

(assert (= bs!1028811 (and d!1460314 b!4632890)))

(declare-fun lt!1794036 () ListMap!4341)

(declare-fun lambda!194155 () Int)

(assert (=> bs!1028811 (= (= lt!1794036 (ListMap!4342 Nil!51620)) (= lambda!194155 lambda!194149))))

(declare-fun bs!1028812 () Bool)

(assert (= bs!1028812 (and d!1460314 d!1460280)))

(assert (=> bs!1028812 (= (= lt!1794036 lt!1793968) (= lambda!194155 lambda!194147))))

(declare-fun bs!1028813 () Bool)

(assert (= bs!1028813 (and d!1460314 b!4632917)))

(assert (=> bs!1028813 (= (= lt!1794036 lt!1794031) (= lambda!194155 lambda!194154))))

(declare-fun bs!1028814 () Bool)

(assert (= bs!1028814 (and d!1460314 b!4632880)))

(assert (=> bs!1028814 (= (= lt!1794036 lt!1793942) (= lambda!194155 lambda!194142))))

(declare-fun bs!1028815 () Bool)

(assert (= bs!1028815 (and d!1460314 b!4632885)))

(assert (=> bs!1028815 (= (= lt!1794036 (ListMap!4342 Nil!51620)) (= lambda!194155 lambda!194145))))

(declare-fun bs!1028816 () Bool)

(assert (= bs!1028816 (and d!1460314 d!1460284)))

(assert (=> bs!1028816 (= (= lt!1794036 lt!1793989) (= lambda!194155 lambda!194151))))

(assert (=> bs!1028815 (= (= lt!1794036 lt!1793963) (= lambda!194155 lambda!194146))))

(declare-fun bs!1028817 () Bool)

(assert (= bs!1028817 (and d!1460314 b!4632877)))

(assert (=> bs!1028817 (= (= lt!1794036 (ListMap!4342 Nil!51620)) (= lambda!194155 lambda!194140))))

(declare-fun bs!1028818 () Bool)

(assert (= bs!1028818 (and d!1460314 b!4632882)))

(assert (=> bs!1028818 (= (= lt!1794036 (ListMap!4342 Nil!51620)) (= lambda!194155 lambda!194144))))

(declare-fun bs!1028819 () Bool)

(assert (= bs!1028819 (and d!1460314 d!1460070)))

(assert (=> bs!1028819 (not (= lambda!194155 lambda!194017))))

(declare-fun bs!1028820 () Bool)

(assert (= bs!1028820 (and d!1460314 b!4632867)))

(assert (=> bs!1028820 (= (= lt!1794036 lt!1793908) (= lambda!194155 lambda!194134))))

(declare-fun bs!1028821 () Bool)

(assert (= bs!1028821 (and d!1460314 d!1460072)))

(assert (=> bs!1028821 (not (= lambda!194155 lambda!194018))))

(assert (=> bs!1028820 (= (= lt!1794036 (ListMap!4342 Nil!51620)) (= lambda!194155 lambda!194133))))

(assert (=> bs!1028811 (= (= lt!1794036 lt!1793984) (= lambda!194155 lambda!194150))))

(assert (=> bs!1028814 (= (= lt!1794036 (ListMap!4342 Nil!51620)) (= lambda!194155 lambda!194141))))

(declare-fun bs!1028822 () Bool)

(assert (= bs!1028822 (and d!1460314 b!4632864)))

(assert (=> bs!1028822 (= (= lt!1794036 (ListMap!4342 Nil!51620)) (= lambda!194155 lambda!194132))))

(declare-fun bs!1028823 () Bool)

(assert (= bs!1028823 (and d!1460314 d!1460278)))

(assert (=> bs!1028823 (= (= lt!1794036 lt!1793947) (= lambda!194155 lambda!194143))))

(declare-fun bs!1028824 () Bool)

(assert (= bs!1028824 (and d!1460314 b!4632914)))

(assert (=> bs!1028824 (= (= lt!1794036 lt!1793417) (= lambda!194155 lambda!194152))))

(assert (=> bs!1028813 (= (= lt!1794036 lt!1793417) (= lambda!194155 lambda!194153))))

(declare-fun bs!1028825 () Bool)

(assert (= bs!1028825 (and d!1460314 d!1460228)))

(assert (=> bs!1028825 (= (= lt!1794036 lt!1793913) (= lambda!194155 lambda!194135))))

(declare-fun bs!1028826 () Bool)

(assert (= bs!1028826 (and d!1460314 b!4632887)))

(assert (=> bs!1028826 (= (= lt!1794036 (ListMap!4342 Nil!51620)) (= lambda!194155 lambda!194148))))

(assert (=> d!1460314 true))

(declare-fun bm!323294 () Bool)

(declare-fun c!792989 () Bool)

(declare-fun call!323301 () Bool)

(assert (=> bm!323294 (= call!323301 (forall!10876 (toList!5037 lt!1793417) (ite c!792989 lambda!194152 lambda!194154)))))

(declare-fun bm!323295 () Bool)

(declare-fun call!323300 () Bool)

(assert (=> bm!323295 (= call!323300 (forall!10876 (ite c!792989 (toList!5037 lt!1793417) oldBucket!40) (ite c!792989 lambda!194152 lambda!194154)))))

(declare-fun e!2890091 () ListMap!4341)

(assert (=> b!4632914 (= e!2890091 lt!1793417)))

(declare-fun lt!1794039 () Unit!113631)

(declare-fun call!323299 () Unit!113631)

(assert (=> b!4632914 (= lt!1794039 call!323299)))

(assert (=> b!4632914 call!323300))

(declare-fun lt!1794028 () Unit!113631)

(assert (=> b!4632914 (= lt!1794028 lt!1794039)))

(assert (=> b!4632914 call!323301))

(declare-fun lt!1794041 () Unit!113631)

(declare-fun Unit!113742 () Unit!113631)

(assert (=> b!4632914 (= lt!1794041 Unit!113742)))

(declare-fun b!4632915 () Bool)

(declare-fun e!2890089 () Bool)

(assert (=> b!4632915 (= e!2890089 (forall!10876 (toList!5037 lt!1793417) lambda!194154))))

(declare-fun b!4632916 () Bool)

(declare-fun res!1944120 () Bool)

(declare-fun e!2890090 () Bool)

(assert (=> b!4632916 (=> (not res!1944120) (not e!2890090))))

(assert (=> b!4632916 (= res!1944120 (forall!10876 (toList!5037 lt!1793417) lambda!194155))))

(declare-fun b!4632918 () Bool)

(assert (=> b!4632918 (= e!2890090 (invariantList!1230 (toList!5037 lt!1794036)))))

(declare-fun bm!323296 () Bool)

(assert (=> bm!323296 (= call!323299 (lemmaContainsAllItsOwnKeys!532 lt!1793417))))

(assert (=> d!1460314 e!2890090))

(declare-fun res!1944121 () Bool)

(assert (=> d!1460314 (=> (not res!1944121) (not e!2890090))))

(assert (=> d!1460314 (= res!1944121 (forall!10876 oldBucket!40 lambda!194155))))

(assert (=> d!1460314 (= lt!1794036 e!2890091)))

(assert (=> d!1460314 (= c!792989 ((_ is Nil!51620) oldBucket!40))))

(assert (=> d!1460314 (noDuplicateKeys!1536 oldBucket!40)))

(assert (=> d!1460314 (= (addToMapMapFromBucket!997 oldBucket!40 lt!1793417) lt!1794036)))

(assert (=> b!4632917 (= e!2890091 lt!1794031)))

(declare-fun lt!1794030 () ListMap!4341)

(assert (=> b!4632917 (= lt!1794030 (+!1902 lt!1793417 (h!57696 oldBucket!40)))))

(assert (=> b!4632917 (= lt!1794031 (addToMapMapFromBucket!997 (t!358802 oldBucket!40) (+!1902 lt!1793417 (h!57696 oldBucket!40))))))

(declare-fun lt!1794037 () Unit!113631)

(assert (=> b!4632917 (= lt!1794037 call!323299)))

(assert (=> b!4632917 (forall!10876 (toList!5037 lt!1793417) lambda!194153)))

(declare-fun lt!1794022 () Unit!113631)

(assert (=> b!4632917 (= lt!1794022 lt!1794037)))

(assert (=> b!4632917 (forall!10876 (toList!5037 lt!1794030) lambda!194154)))

(declare-fun lt!1794025 () Unit!113631)

(declare-fun Unit!113743 () Unit!113631)

(assert (=> b!4632917 (= lt!1794025 Unit!113743)))

(assert (=> b!4632917 (forall!10876 (t!358802 oldBucket!40) lambda!194154)))

(declare-fun lt!1794024 () Unit!113631)

(declare-fun Unit!113744 () Unit!113631)

(assert (=> b!4632917 (= lt!1794024 Unit!113744)))

(declare-fun lt!1794029 () Unit!113631)

(declare-fun Unit!113745 () Unit!113631)

(assert (=> b!4632917 (= lt!1794029 Unit!113745)))

(declare-fun lt!1794040 () Unit!113631)

(assert (=> b!4632917 (= lt!1794040 (forallContained!3108 (toList!5037 lt!1794030) lambda!194154 (h!57696 oldBucket!40)))))

(assert (=> b!4632917 (contains!14721 lt!1794030 (_1!29589 (h!57696 oldBucket!40)))))

(declare-fun lt!1794027 () Unit!113631)

(declare-fun Unit!113746 () Unit!113631)

(assert (=> b!4632917 (= lt!1794027 Unit!113746)))

(assert (=> b!4632917 (contains!14721 lt!1794031 (_1!29589 (h!57696 oldBucket!40)))))

(declare-fun lt!1794035 () Unit!113631)

(declare-fun Unit!113747 () Unit!113631)

(assert (=> b!4632917 (= lt!1794035 Unit!113747)))

(assert (=> b!4632917 call!323300))

(declare-fun lt!1794042 () Unit!113631)

(declare-fun Unit!113748 () Unit!113631)

(assert (=> b!4632917 (= lt!1794042 Unit!113748)))

(assert (=> b!4632917 (forall!10876 (toList!5037 lt!1794030) lambda!194154)))

(declare-fun lt!1794034 () Unit!113631)

(declare-fun Unit!113749 () Unit!113631)

(assert (=> b!4632917 (= lt!1794034 Unit!113749)))

(declare-fun lt!1794023 () Unit!113631)

(declare-fun Unit!113750 () Unit!113631)

(assert (=> b!4632917 (= lt!1794023 Unit!113750)))

(declare-fun lt!1794038 () Unit!113631)

(assert (=> b!4632917 (= lt!1794038 (addForallContainsKeyThenBeforeAdding!531 lt!1793417 lt!1794031 (_1!29589 (h!57696 oldBucket!40)) (_2!29589 (h!57696 oldBucket!40))))))

(assert (=> b!4632917 (forall!10876 (toList!5037 lt!1793417) lambda!194154)))

(declare-fun lt!1794032 () Unit!113631)

(assert (=> b!4632917 (= lt!1794032 lt!1794038)))

(assert (=> b!4632917 call!323301))

(declare-fun lt!1794026 () Unit!113631)

(declare-fun Unit!113751 () Unit!113631)

(assert (=> b!4632917 (= lt!1794026 Unit!113751)))

(declare-fun res!1944122 () Bool)

(assert (=> b!4632917 (= res!1944122 (forall!10876 oldBucket!40 lambda!194154))))

(assert (=> b!4632917 (=> (not res!1944122) (not e!2890089))))

(assert (=> b!4632917 e!2890089))

(declare-fun lt!1794033 () Unit!113631)

(declare-fun Unit!113752 () Unit!113631)

(assert (=> b!4632917 (= lt!1794033 Unit!113752)))

(assert (= (and d!1460314 c!792989) b!4632914))

(assert (= (and d!1460314 (not c!792989)) b!4632917))

(assert (= (and b!4632917 res!1944122) b!4632915))

(assert (= (or b!4632914 b!4632917) bm!323296))

(assert (= (or b!4632914 b!4632917) bm!323295))

(assert (= (or b!4632914 b!4632917) bm!323294))

(assert (= (and d!1460314 res!1944121) b!4632916))

(assert (= (and b!4632916 res!1944120) b!4632918))

(declare-fun m!5485069 () Bool)

(assert (=> d!1460314 m!5485069))

(assert (=> d!1460314 m!5483955))

(declare-fun m!5485071 () Bool)

(assert (=> bm!323294 m!5485071))

(declare-fun m!5485073 () Bool)

(assert (=> b!4632917 m!5485073))

(declare-fun m!5485075 () Bool)

(assert (=> b!4632917 m!5485075))

(declare-fun m!5485077 () Bool)

(assert (=> b!4632917 m!5485077))

(declare-fun m!5485079 () Bool)

(assert (=> b!4632917 m!5485079))

(assert (=> b!4632917 m!5485077))

(declare-fun m!5485081 () Bool)

(assert (=> b!4632917 m!5485081))

(declare-fun m!5485083 () Bool)

(assert (=> b!4632917 m!5485083))

(declare-fun m!5485085 () Bool)

(assert (=> b!4632917 m!5485085))

(declare-fun m!5485087 () Bool)

(assert (=> b!4632917 m!5485087))

(assert (=> b!4632917 m!5485087))

(declare-fun m!5485089 () Bool)

(assert (=> b!4632917 m!5485089))

(declare-fun m!5485091 () Bool)

(assert (=> b!4632917 m!5485091))

(declare-fun m!5485093 () Bool)

(assert (=> b!4632917 m!5485093))

(declare-fun m!5485095 () Bool)

(assert (=> b!4632918 m!5485095))

(declare-fun m!5485097 () Bool)

(assert (=> b!4632916 m!5485097))

(declare-fun m!5485099 () Bool)

(assert (=> bm!323296 m!5485099))

(declare-fun m!5485101 () Bool)

(assert (=> bm!323295 m!5485101))

(assert (=> b!4632915 m!5485073))

(assert (=> b!4632472 d!1460314))

(declare-fun bs!1028827 () Bool)

(declare-fun d!1460316 () Bool)

(assert (= bs!1028827 (and d!1460316 d!1460196)))

(declare-fun lambda!194156 () Int)

(assert (=> bs!1028827 (= lambda!194156 lambda!194086)))

(declare-fun bs!1028828 () Bool)

(assert (= bs!1028828 (and d!1460316 d!1460266)))

(assert (=> bs!1028828 (= lambda!194156 lambda!194136)))

(declare-fun bs!1028829 () Bool)

(assert (= bs!1028829 (and d!1460316 d!1460124)))

(assert (=> bs!1028829 (= lambda!194156 lambda!194070)))

(declare-fun bs!1028830 () Bool)

(assert (= bs!1028830 (and d!1460316 d!1460270)))

(assert (=> bs!1028830 (= lambda!194156 lambda!194139)))

(declare-fun bs!1028831 () Bool)

(assert (= bs!1028831 (and d!1460316 d!1460192)))

(assert (=> bs!1028831 (= lambda!194156 lambda!194085)))

(declare-fun bs!1028832 () Bool)

(assert (= bs!1028832 (and d!1460316 d!1460224)))

(assert (=> bs!1028832 (= lambda!194156 lambda!194090)))

(declare-fun bs!1028833 () Bool)

(assert (= bs!1028833 (and d!1460316 b!4632468)))

(assert (=> bs!1028833 (= lambda!194156 lambda!194010)))

(declare-fun bs!1028834 () Bool)

(assert (= bs!1028834 (and d!1460316 d!1460174)))

(assert (=> bs!1028834 (= lambda!194156 lambda!194084)))

(declare-fun bs!1028835 () Bool)

(assert (= bs!1028835 (and d!1460316 d!1460116)))

(assert (=> bs!1028835 (= lambda!194156 lambda!194054)))

(declare-fun lt!1794043 () ListMap!4341)

(assert (=> d!1460316 (invariantList!1230 (toList!5037 lt!1794043))))

(declare-fun e!2890092 () ListMap!4341)

(assert (=> d!1460316 (= lt!1794043 e!2890092)))

(declare-fun c!792990 () Bool)

(assert (=> d!1460316 (= c!792990 ((_ is Cons!51621) Nil!51621))))

(assert (=> d!1460316 (forall!10874 Nil!51621 lambda!194156)))

(assert (=> d!1460316 (= (extractMap!1592 Nil!51621) lt!1794043)))

(declare-fun b!4632919 () Bool)

(assert (=> b!4632919 (= e!2890092 (addToMapMapFromBucket!997 (_2!29590 (h!57697 Nil!51621)) (extractMap!1592 (t!358803 Nil!51621))))))

(declare-fun b!4632920 () Bool)

(assert (=> b!4632920 (= e!2890092 (ListMap!4342 Nil!51620))))

(assert (= (and d!1460316 c!792990) b!4632919))

(assert (= (and d!1460316 (not c!792990)) b!4632920))

(declare-fun m!5485103 () Bool)

(assert (=> d!1460316 m!5485103))

(declare-fun m!5485105 () Bool)

(assert (=> d!1460316 m!5485105))

(declare-fun m!5485107 () Bool)

(assert (=> b!4632919 m!5485107))

(assert (=> b!4632919 m!5485107))

(declare-fun m!5485109 () Bool)

(assert (=> b!4632919 m!5485109))

(assert (=> b!4632472 d!1460316))

(declare-fun e!2890095 () Bool)

(declare-fun tp!1342398 () Bool)

(declare-fun b!4632925 () Bool)

(assert (=> b!4632925 (= e!2890095 (and tp_is_empty!29437 tp_is_empty!29439 tp!1342398))))

(assert (=> b!4632470 (= tp!1342391 e!2890095)))

(assert (= (and b!4632470 ((_ is Cons!51620) (t!358802 oldBucket!40))) b!4632925))

(declare-fun tp!1342399 () Bool)

(declare-fun e!2890096 () Bool)

(declare-fun b!4632926 () Bool)

(assert (=> b!4632926 (= e!2890096 (and tp_is_empty!29437 tp_is_empty!29439 tp!1342399))))

(assert (=> b!4632482 (= tp!1342390 e!2890096)))

(assert (= (and b!4632482 ((_ is Cons!51620) (t!358802 newBucket!224))) b!4632926))

(declare-fun b_lambda!170921 () Bool)

(assert (= b_lambda!170915 (or b!4632468 b_lambda!170921)))

(declare-fun bs!1028836 () Bool)

(declare-fun d!1460318 () Bool)

(assert (= bs!1028836 (and d!1460318 b!4632468)))

(assert (=> bs!1028836 (= (dynLambda!21523 lambda!194010 (h!57697 lt!1793402)) (noDuplicateKeys!1536 (_2!29590 (h!57697 lt!1793402))))))

(declare-fun m!5485111 () Bool)

(assert (=> bs!1028836 m!5485111))

(assert (=> b!4632764 d!1460318))

(declare-fun b_lambda!170923 () Bool)

(assert (= b_lambda!170909 (or b!4632468 b_lambda!170923)))

(declare-fun bs!1028837 () Bool)

(declare-fun d!1460320 () Bool)

(assert (= bs!1028837 (and d!1460320 b!4632468)))

(assert (=> bs!1028837 (= (dynLambda!21523 lambda!194010 lt!1793416) (noDuplicateKeys!1536 (_2!29590 lt!1793416)))))

(declare-fun m!5485113 () Bool)

(assert (=> bs!1028837 m!5485113))

(assert (=> d!1460146 d!1460320))

(check-sat (not b!4632890) (not d!1460192) (not bm!323292) (not d!1460294) (not b!4632524) (not d!1460308) tp_is_empty!29439 (not b!4632745) (not d!1460316) (not d!1460116) (not b!4632778) (not b!4632899) (not bm!323285) (not b!4632743) (not b!4632586) (not d!1460108) (not b!4632915) (not d!1460160) (not d!1460228) (not b!4632868) (not b!4632654) (not b!4632893) (not d!1460110) (not b!4632889) (not b!4632897) (not d!1460300) (not bm!323281) (not bm!323294) (not d!1460098) (not b!4632884) (not d!1460102) (not b!4632902) (not b!4632545) (not b!4632866) (not bm!323283) (not d!1460274) (not bs!1028837) (not d!1460146) (not b!4632874) (not b_lambda!170923) (not b!4632739) (not d!1460190) (not b!4632907) (not d!1460104) (not b!4632714) (not bm!323288) (not d!1460306) (not b!4632901) (not b!4632716) (not d!1460284) (not b!4632646) (not d!1460280) (not d!1460312) (not b!4632661) (not b!4632917) (not b!4632644) (not b!4632752) (not b!4632873) (not d!1460090) (not d!1460162) (not b!4632533) (not b!4632876) (not bm!323287) (not d!1460224) (not b!4632645) (not b!4632926) (not d!1460272) (not b!4632543) (not d!1460278) (not b!4632532) (not b!4632584) (not b!4632912) (not d!1460214) (not b!4632865) (not b!4632886) (not d!1460298) (not b!4632908) (not d!1460124) (not d!1460114) (not b!4632909) (not d!1460188) (not b!4632905) (not b!4632916) (not b!4632867) (not d!1460072) (not b!4632910) (not d!1460174) (not bm!323284) (not b!4632792) (not b!4632556) (not b!4632881) (not b!4632643) (not d!1460186) (not d!1460276) (not b!4632871) (not b!4632891) (not b!4632719) (not d!1460282) (not bm!323296) (not b!4632885) (not b!4632892) (not b!4632895) (not b!4632579) (not bm!323282) (not bm!323271) (not bm!323286) (not d!1460290) (not b!4632888) (not d!1460304) tp_is_empty!29437 (not b!4632898) (not d!1460142) (not d!1460106) (not d!1460310) (not d!1460288) (not d!1460302) (not b!4632585) (not d!1460204) (not b!4632749) (not bs!1028836) (not b!4632875) (not b!4632925) (not b!4632721) (not d!1460226) (not b!4632765) (not d!1460158) (not d!1460074) (not b!4632583) (not d!1460296) (not b!4632715) (not b!4632919) (not d!1460314) (not b!4632536) (not b!4632880) (not d!1460266) (not d!1460096) (not b!4632883) (not b!4632777) (not d!1460100) (not d!1460286) (not b!4632918) (not b!4632894) (not d!1460196) (not d!1460070) (not b!4632720) (not b!4632879) (not bm!323295) (not b!4632793) (not b!4632790) (not b_lambda!170921) (not b!4632652) (not bm!323293) (not bm!323289) (not bm!323290) (not d!1460270) (not b!4632717) (not d!1460206) (not bm!323291) (not b!4632878) (not b!4632746) (not b!4632913) (not b!4632911))
(check-sat)
