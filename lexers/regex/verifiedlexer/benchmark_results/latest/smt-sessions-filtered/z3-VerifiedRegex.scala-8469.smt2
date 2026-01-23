; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!439952 () Bool)

(assert start!439952)

(declare-fun b!4473924 () Bool)

(declare-fun e!2786025 () Bool)

(declare-datatypes ((K!11750 0))(
  ( (K!11751 (val!17671 Int)) )
))
(declare-datatypes ((V!11996 0))(
  ( (V!11997 (val!17672 Int)) )
))
(declare-datatypes ((tuple2!50610 0))(
  ( (tuple2!50611 (_1!28599 K!11750) (_2!28599 V!11996)) )
))
(declare-datatypes ((List!50460 0))(
  ( (Nil!50336) (Cons!50336 (h!56111 tuple2!50610) (t!357410 List!50460)) )
))
(declare-datatypes ((tuple2!50612 0))(
  ( (tuple2!50613 (_1!28600 (_ BitVec 64)) (_2!28600 List!50460)) )
))
(declare-datatypes ((List!50461 0))(
  ( (Nil!50337) (Cons!50337 (h!56112 tuple2!50612) (t!357411 List!50461)) )
))
(declare-datatypes ((ListLongMap!2727 0))(
  ( (ListLongMap!2728 (toList!4095 List!50461)) )
))
(declare-fun lm!1477 () ListLongMap!2727)

(declare-fun lambda!164055 () Int)

(declare-fun forall!10026 (List!50461 Int) Bool)

(assert (=> b!4473924 (= e!2786025 (forall!10026 (t!357411 (toList!4095 lm!1477)) lambda!164055))))

(declare-datatypes ((ListMap!3357 0))(
  ( (ListMap!3358 (toList!4096 List!50460)) )
))
(declare-fun lt!1661769 () ListMap!3357)

(declare-fun lt!1661762 () ListLongMap!2727)

(declare-fun extractMap!1100 (List!50461) ListMap!3357)

(assert (=> b!4473924 (= lt!1661769 (extractMap!1100 (toList!4095 lt!1661762)))))

(declare-fun res!1856632 () Bool)

(declare-fun e!2786037 () Bool)

(assert (=> start!439952 (=> (not res!1856632) (not e!2786037))))

(assert (=> start!439952 (= res!1856632 (forall!10026 (toList!4095 lm!1477) lambda!164055))))

(assert (=> start!439952 e!2786037))

(assert (=> start!439952 true))

(declare-fun e!2786031 () Bool)

(declare-fun inv!65934 (ListLongMap!2727) Bool)

(assert (=> start!439952 (and (inv!65934 lm!1477) e!2786031)))

(declare-fun tp_is_empty!27453 () Bool)

(assert (=> start!439952 tp_is_empty!27453))

(declare-fun e!2786023 () Bool)

(assert (=> start!439952 e!2786023))

(declare-fun b!4473925 () Bool)

(declare-fun res!1856629 () Bool)

(declare-fun e!2786035 () Bool)

(assert (=> b!4473925 (=> res!1856629 e!2786035)))

(declare-fun newBucket!178 () List!50460)

(declare-fun noDuplicateKeys!1044 (List!50460) Bool)

(assert (=> b!4473925 (= res!1856629 (not (noDuplicateKeys!1044 newBucket!178)))))

(declare-fun b!4473926 () Bool)

(declare-fun e!2786027 () Bool)

(declare-fun e!2786030 () Bool)

(assert (=> b!4473926 (= e!2786027 e!2786030)))

(declare-fun res!1856630 () Bool)

(assert (=> b!4473926 (=> res!1856630 e!2786030)))

(declare-fun lt!1661760 () ListMap!3357)

(assert (=> b!4473926 (= res!1856630 (not (= lt!1661760 (extractMap!1100 (t!357411 (toList!4095 lm!1477))))))))

(declare-fun lt!1661774 () ListLongMap!2727)

(assert (=> b!4473926 (= lt!1661760 (extractMap!1100 (toList!4095 lt!1661774)))))

(declare-fun b!4473927 () Bool)

(declare-fun e!2786032 () Bool)

(assert (=> b!4473927 (= e!2786035 e!2786032)))

(declare-fun res!1856626 () Bool)

(assert (=> b!4473927 (=> res!1856626 e!2786032)))

(declare-fun lt!1661756 () Bool)

(assert (=> b!4473927 (= res!1856626 lt!1661756)))

(declare-datatypes ((Unit!88321 0))(
  ( (Unit!88322) )
))
(declare-fun lt!1661764 () Unit!88321)

(declare-fun e!2786024 () Unit!88321)

(assert (=> b!4473927 (= lt!1661764 e!2786024)))

(declare-fun c!761805 () Bool)

(assert (=> b!4473927 (= c!761805 lt!1661756)))

(declare-fun key!3287 () K!11750)

(declare-fun containsKey!1512 (List!50460 K!11750) Bool)

(assert (=> b!4473927 (= lt!1661756 (not (containsKey!1512 (_2!28600 (h!56112 (toList!4095 lm!1477))) key!3287)))))

(declare-fun b!4473928 () Bool)

(declare-fun e!2786029 () Bool)

(assert (=> b!4473928 (= e!2786029 false)))

(declare-fun b!4473929 () Bool)

(declare-fun e!2786026 () Bool)

(declare-fun e!2786036 () Bool)

(assert (=> b!4473929 (= e!2786026 e!2786036)))

(declare-fun res!1856637 () Bool)

(assert (=> b!4473929 (=> res!1856637 e!2786036)))

(declare-fun tail!7540 (List!50461) List!50461)

(assert (=> b!4473929 (= res!1856637 (not (= (t!357411 (toList!4095 lm!1477)) (tail!7540 (toList!4095 lt!1661762)))))))

(declare-fun lt!1661770 () tuple2!50612)

(declare-fun +!1392 (ListLongMap!2727 tuple2!50612) ListLongMap!2727)

(assert (=> b!4473929 (= lt!1661762 (+!1392 lm!1477 lt!1661770))))

(declare-fun lt!1661767 () tuple2!50612)

(declare-fun eq!537 (ListMap!3357 ListMap!3357) Bool)

(declare-fun -!306 (ListMap!3357 K!11750) ListMap!3357)

(assert (=> b!4473929 (eq!537 (extractMap!1100 (Cons!50337 lt!1661770 Nil!50337)) (-!306 (extractMap!1100 (Cons!50337 lt!1661767 Nil!50337)) key!3287))))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4473929 (= lt!1661767 (tuple2!50613 hash!344 (_2!28600 (h!56112 (toList!4095 lm!1477)))))))

(assert (=> b!4473929 (= lt!1661770 (tuple2!50613 hash!344 newBucket!178))))

(declare-datatypes ((Hashable!5439 0))(
  ( (HashableExt!5438 (__x!31142 Int)) )
))
(declare-fun hashF!1107 () Hashable!5439)

(declare-fun lt!1661768 () Unit!88321)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!36 ((_ BitVec 64) List!50460 List!50460 K!11750 Hashable!5439) Unit!88321)

(assert (=> b!4473929 (= lt!1661768 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!36 hash!344 (_2!28600 (h!56112 (toList!4095 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1661771 () List!50461)

(declare-fun contains!12911 (ListMap!3357 K!11750) Bool)

(assert (=> b!4473929 (contains!12911 (extractMap!1100 lt!1661771) key!3287)))

(declare-fun lt!1661773 () Unit!88321)

(declare-fun lemmaListContainsThenExtractedMapContains!40 (ListLongMap!2727 K!11750 Hashable!5439) Unit!88321)

(assert (=> b!4473929 (= lt!1661773 (lemmaListContainsThenExtractedMapContains!40 (ListLongMap!2728 lt!1661771) key!3287 hashF!1107))))

(declare-fun b!4473930 () Bool)

(assert (=> b!4473930 (= e!2786032 e!2786026)))

(declare-fun res!1856640 () Bool)

(assert (=> b!4473930 (=> res!1856640 e!2786026)))

(declare-fun containsKeyBiggerList!44 (List!50461 K!11750) Bool)

(assert (=> b!4473930 (= res!1856640 (not (containsKeyBiggerList!44 lt!1661771 key!3287)))))

(assert (=> b!4473930 (= lt!1661771 (Cons!50337 (h!56112 (toList!4095 lm!1477)) Nil!50337))))

(declare-fun tp_is_empty!27455 () Bool)

(declare-fun tp!1336476 () Bool)

(declare-fun b!4473931 () Bool)

(assert (=> b!4473931 (= e!2786023 (and tp_is_empty!27453 tp_is_empty!27455 tp!1336476))))

(declare-fun b!4473932 () Bool)

(declare-fun res!1856635 () Bool)

(assert (=> b!4473932 (=> (not res!1856635) (not e!2786037))))

(declare-fun allKeysSameHashInMap!1151 (ListLongMap!2727 Hashable!5439) Bool)

(assert (=> b!4473932 (= res!1856635 (allKeysSameHashInMap!1151 lm!1477 hashF!1107))))

(declare-fun b!4473933 () Bool)

(declare-fun e!2786033 () Unit!88321)

(declare-fun Unit!88323 () Unit!88321)

(assert (=> b!4473933 (= e!2786033 Unit!88323)))

(declare-fun b!4473934 () Bool)

(declare-fun e!2786034 () Bool)

(assert (=> b!4473934 (= e!2786034 e!2786025)))

(declare-fun res!1856633 () Bool)

(assert (=> b!4473934 (=> res!1856633 e!2786025)))

(assert (=> b!4473934 (= res!1856633 (not (= (toList!4095 lt!1661762) (Cons!50337 lt!1661770 (t!357411 (toList!4095 lm!1477))))))))

(declare-fun lt!1661757 () List!50461)

(assert (=> b!4473934 (eq!537 (extractMap!1100 (Cons!50337 lt!1661770 lt!1661757)) (-!306 (extractMap!1100 (Cons!50337 lt!1661767 lt!1661757)) key!3287))))

(assert (=> b!4473934 (= lt!1661757 (tail!7540 (toList!4095 lm!1477)))))

(declare-fun lt!1661755 () Unit!88321)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!4 (ListLongMap!2727 (_ BitVec 64) List!50460 List!50460 K!11750 Hashable!5439) Unit!88321)

(assert (=> b!4473934 (= lt!1661755 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!4 lm!1477 hash!344 (_2!28600 (h!56112 (toList!4095 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4473935 () Bool)

(assert (=> b!4473935 (= e!2786036 e!2786027)))

(declare-fun res!1856627 () Bool)

(assert (=> b!4473935 (=> res!1856627 e!2786027)))

(assert (=> b!4473935 (= res!1856627 (not (= lt!1661762 (+!1392 lt!1661774 lt!1661770))))))

(declare-fun tail!7541 (ListLongMap!2727) ListLongMap!2727)

(assert (=> b!4473935 (= lt!1661774 (tail!7541 lm!1477))))

(declare-fun b!4473936 () Bool)

(declare-fun res!1856628 () Bool)

(declare-fun e!2786028 () Bool)

(assert (=> b!4473936 (=> (not res!1856628) (not e!2786028))))

(declare-fun allKeysSameHash!898 (List!50460 (_ BitVec 64) Hashable!5439) Bool)

(assert (=> b!4473936 (= res!1856628 (allKeysSameHash!898 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4473937 () Bool)

(declare-fun Unit!88324 () Unit!88321)

(assert (=> b!4473937 (= e!2786024 Unit!88324)))

(declare-fun lt!1661758 () Unit!88321)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!44 (ListLongMap!2727 K!11750 Hashable!5439) Unit!88321)

(assert (=> b!4473937 (= lt!1661758 (lemmaNotInItsHashBucketThenNotInMap!44 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4473937 false))

(declare-fun b!4473938 () Bool)

(declare-fun res!1856638 () Bool)

(assert (=> b!4473938 (=> (not res!1856638) (not e!2786037))))

(assert (=> b!4473938 (= res!1856638 (contains!12911 (extractMap!1100 (toList!4095 lm!1477)) key!3287))))

(declare-fun b!4473939 () Bool)

(assert (=> b!4473939 (= e!2786037 e!2786028)))

(declare-fun res!1856641 () Bool)

(assert (=> b!4473939 (=> (not res!1856641) (not e!2786028))))

(declare-fun lt!1661765 () (_ BitVec 64))

(assert (=> b!4473939 (= res!1856641 (= lt!1661765 hash!344))))

(declare-fun hash!2497 (Hashable!5439 K!11750) (_ BitVec 64))

(assert (=> b!4473939 (= lt!1661765 (hash!2497 hashF!1107 key!3287))))

(declare-fun b!4473940 () Bool)

(declare-fun Unit!88325 () Unit!88321)

(assert (=> b!4473940 (= e!2786033 Unit!88325)))

(declare-fun lt!1661761 () Unit!88321)

(declare-fun lemmaInGenMapThenLongMapContainsHash!118 (ListLongMap!2727 K!11750 Hashable!5439) Unit!88321)

(assert (=> b!4473940 (= lt!1661761 (lemmaInGenMapThenLongMapContainsHash!118 lt!1661774 key!3287 hashF!1107))))

(declare-fun res!1856636 () Bool)

(declare-fun contains!12912 (ListLongMap!2727 (_ BitVec 64)) Bool)

(assert (=> b!4473940 (= res!1856636 (contains!12912 lt!1661774 lt!1661765))))

(assert (=> b!4473940 (=> (not res!1856636) (not e!2786029))))

(assert (=> b!4473940 e!2786029))

(declare-fun b!4473941 () Bool)

(declare-fun Unit!88326 () Unit!88321)

(assert (=> b!4473941 (= e!2786024 Unit!88326)))

(declare-fun b!4473942 () Bool)

(declare-fun tp!1336477 () Bool)

(assert (=> b!4473942 (= e!2786031 tp!1336477)))

(declare-fun b!4473943 () Bool)

(assert (=> b!4473943 (= e!2786028 (not e!2786035))))

(declare-fun res!1856631 () Bool)

(assert (=> b!4473943 (=> res!1856631 e!2786035)))

(declare-fun lt!1661754 () List!50460)

(declare-fun removePairForKey!671 (List!50460 K!11750) List!50460)

(assert (=> b!4473943 (= res!1856631 (not (= newBucket!178 (removePairForKey!671 lt!1661754 key!3287))))))

(declare-fun lt!1661766 () tuple2!50612)

(declare-fun lt!1661759 () Unit!88321)

(declare-fun forallContained!2289 (List!50461 Int tuple2!50612) Unit!88321)

(assert (=> b!4473943 (= lt!1661759 (forallContained!2289 (toList!4095 lm!1477) lambda!164055 lt!1661766))))

(declare-fun contains!12913 (List!50461 tuple2!50612) Bool)

(assert (=> b!4473943 (contains!12913 (toList!4095 lm!1477) lt!1661766)))

(assert (=> b!4473943 (= lt!1661766 (tuple2!50613 hash!344 lt!1661754))))

(declare-fun lt!1661763 () Unit!88321)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!556 (List!50461 (_ BitVec 64) List!50460) Unit!88321)

(assert (=> b!4473943 (= lt!1661763 (lemmaGetValueByKeyImpliesContainsTuple!556 (toList!4095 lm!1477) hash!344 lt!1661754))))

(declare-fun apply!11781 (ListLongMap!2727 (_ BitVec 64)) List!50460)

(assert (=> b!4473943 (= lt!1661754 (apply!11781 lm!1477 hash!344))))

(assert (=> b!4473943 (contains!12912 lm!1477 lt!1661765)))

(declare-fun lt!1661752 () Unit!88321)

(assert (=> b!4473943 (= lt!1661752 (lemmaInGenMapThenLongMapContainsHash!118 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4473944 () Bool)

(assert (=> b!4473944 (= e!2786030 e!2786034)))

(declare-fun res!1856634 () Bool)

(assert (=> b!4473944 (=> res!1856634 e!2786034)))

(declare-fun lt!1661772 () Bool)

(assert (=> b!4473944 (= res!1856634 lt!1661772)))

(declare-fun lt!1661753 () Unit!88321)

(assert (=> b!4473944 (= lt!1661753 e!2786033)))

(declare-fun c!761806 () Bool)

(assert (=> b!4473944 (= c!761806 lt!1661772)))

(assert (=> b!4473944 (= lt!1661772 (contains!12911 lt!1661760 key!3287))))

(declare-fun b!4473945 () Bool)

(declare-fun res!1856639 () Bool)

(assert (=> b!4473945 (=> res!1856639 e!2786035)))

(get-info :version)

(assert (=> b!4473945 (= res!1856639 (or ((_ is Nil!50337) (toList!4095 lm!1477)) (not (= (_1!28600 (h!56112 (toList!4095 lm!1477))) hash!344))))))

(assert (= (and start!439952 res!1856632) b!4473932))

(assert (= (and b!4473932 res!1856635) b!4473938))

(assert (= (and b!4473938 res!1856638) b!4473939))

(assert (= (and b!4473939 res!1856641) b!4473936))

(assert (= (and b!4473936 res!1856628) b!4473943))

(assert (= (and b!4473943 (not res!1856631)) b!4473925))

(assert (= (and b!4473925 (not res!1856629)) b!4473945))

(assert (= (and b!4473945 (not res!1856639)) b!4473927))

(assert (= (and b!4473927 c!761805) b!4473937))

(assert (= (and b!4473927 (not c!761805)) b!4473941))

(assert (= (and b!4473927 (not res!1856626)) b!4473930))

(assert (= (and b!4473930 (not res!1856640)) b!4473929))

(assert (= (and b!4473929 (not res!1856637)) b!4473935))

(assert (= (and b!4473935 (not res!1856627)) b!4473926))

(assert (= (and b!4473926 (not res!1856630)) b!4473944))

(assert (= (and b!4473944 c!761806) b!4473940))

(assert (= (and b!4473944 (not c!761806)) b!4473933))

(assert (= (and b!4473940 res!1856636) b!4473928))

(assert (= (and b!4473944 (not res!1856634)) b!4473934))

(assert (= (and b!4473934 (not res!1856633)) b!4473924))

(assert (= start!439952 b!4473942))

(assert (= (and start!439952 ((_ is Cons!50336) newBucket!178)) b!4473931))

(declare-fun m!5183431 () Bool)

(assert (=> b!4473930 m!5183431))

(declare-fun m!5183433 () Bool)

(assert (=> b!4473937 m!5183433))

(declare-fun m!5183435 () Bool)

(assert (=> b!4473944 m!5183435))

(declare-fun m!5183437 () Bool)

(assert (=> b!4473940 m!5183437))

(declare-fun m!5183439 () Bool)

(assert (=> b!4473940 m!5183439))

(declare-fun m!5183441 () Bool)

(assert (=> b!4473936 m!5183441))

(declare-fun m!5183443 () Bool)

(assert (=> b!4473925 m!5183443))

(declare-fun m!5183445 () Bool)

(assert (=> b!4473929 m!5183445))

(declare-fun m!5183447 () Bool)

(assert (=> b!4473929 m!5183447))

(declare-fun m!5183449 () Bool)

(assert (=> b!4473929 m!5183449))

(declare-fun m!5183451 () Bool)

(assert (=> b!4473929 m!5183451))

(declare-fun m!5183453 () Bool)

(assert (=> b!4473929 m!5183453))

(declare-fun m!5183455 () Bool)

(assert (=> b!4473929 m!5183455))

(assert (=> b!4473929 m!5183453))

(assert (=> b!4473929 m!5183447))

(assert (=> b!4473929 m!5183455))

(declare-fun m!5183457 () Bool)

(assert (=> b!4473929 m!5183457))

(declare-fun m!5183459 () Bool)

(assert (=> b!4473929 m!5183459))

(declare-fun m!5183461 () Bool)

(assert (=> b!4473929 m!5183461))

(assert (=> b!4473929 m!5183461))

(declare-fun m!5183463 () Bool)

(assert (=> b!4473929 m!5183463))

(declare-fun m!5183465 () Bool)

(assert (=> b!4473935 m!5183465))

(declare-fun m!5183467 () Bool)

(assert (=> b!4473935 m!5183467))

(declare-fun m!5183469 () Bool)

(assert (=> b!4473924 m!5183469))

(declare-fun m!5183471 () Bool)

(assert (=> b!4473924 m!5183471))

(declare-fun m!5183473 () Bool)

(assert (=> b!4473939 m!5183473))

(declare-fun m!5183475 () Bool)

(assert (=> b!4473934 m!5183475))

(declare-fun m!5183477 () Bool)

(assert (=> b!4473934 m!5183477))

(declare-fun m!5183479 () Bool)

(assert (=> b!4473934 m!5183479))

(declare-fun m!5183481 () Bool)

(assert (=> b!4473934 m!5183481))

(assert (=> b!4473934 m!5183477))

(declare-fun m!5183483 () Bool)

(assert (=> b!4473934 m!5183483))

(assert (=> b!4473934 m!5183481))

(assert (=> b!4473934 m!5183475))

(declare-fun m!5183485 () Bool)

(assert (=> b!4473934 m!5183485))

(declare-fun m!5183487 () Bool)

(assert (=> b!4473926 m!5183487))

(declare-fun m!5183489 () Bool)

(assert (=> b!4473926 m!5183489))

(declare-fun m!5183491 () Bool)

(assert (=> start!439952 m!5183491))

(declare-fun m!5183493 () Bool)

(assert (=> start!439952 m!5183493))

(declare-fun m!5183495 () Bool)

(assert (=> b!4473943 m!5183495))

(declare-fun m!5183497 () Bool)

(assert (=> b!4473943 m!5183497))

(declare-fun m!5183499 () Bool)

(assert (=> b!4473943 m!5183499))

(declare-fun m!5183501 () Bool)

(assert (=> b!4473943 m!5183501))

(declare-fun m!5183503 () Bool)

(assert (=> b!4473943 m!5183503))

(declare-fun m!5183505 () Bool)

(assert (=> b!4473943 m!5183505))

(declare-fun m!5183507 () Bool)

(assert (=> b!4473943 m!5183507))

(declare-fun m!5183509 () Bool)

(assert (=> b!4473927 m!5183509))

(declare-fun m!5183511 () Bool)

(assert (=> b!4473932 m!5183511))

(declare-fun m!5183513 () Bool)

(assert (=> b!4473938 m!5183513))

(assert (=> b!4473938 m!5183513))

(declare-fun m!5183515 () Bool)

(assert (=> b!4473938 m!5183515))

(check-sat tp_is_empty!27455 (not b!4473936) (not b!4473938) (not b!4473934) (not b!4473932) (not b!4473937) (not b!4473927) (not b!4473929) (not b!4473924) (not b!4473935) (not b!4473939) (not b!4473930) (not b!4473943) (not start!439952) (not b!4473931) (not b!4473940) (not b!4473944) (not b!4473942) (not b!4473926) tp_is_empty!27453 (not b!4473925))
(check-sat)
(get-model)

(declare-fun bs!797694 () Bool)

(declare-fun d!1365412 () Bool)

(assert (= bs!797694 (and d!1365412 start!439952)))

(declare-fun lambda!164058 () Int)

(assert (=> bs!797694 (= lambda!164058 lambda!164055)))

(assert (=> d!1365412 (contains!12912 lt!1661774 (hash!2497 hashF!1107 key!3287))))

(declare-fun lt!1661777 () Unit!88321)

(declare-fun choose!28668 (ListLongMap!2727 K!11750 Hashable!5439) Unit!88321)

(assert (=> d!1365412 (= lt!1661777 (choose!28668 lt!1661774 key!3287 hashF!1107))))

(assert (=> d!1365412 (forall!10026 (toList!4095 lt!1661774) lambda!164058)))

(assert (=> d!1365412 (= (lemmaInGenMapThenLongMapContainsHash!118 lt!1661774 key!3287 hashF!1107) lt!1661777)))

(declare-fun bs!797695 () Bool)

(assert (= bs!797695 d!1365412))

(assert (=> bs!797695 m!5183473))

(assert (=> bs!797695 m!5183473))

(declare-fun m!5183517 () Bool)

(assert (=> bs!797695 m!5183517))

(declare-fun m!5183519 () Bool)

(assert (=> bs!797695 m!5183519))

(declare-fun m!5183521 () Bool)

(assert (=> bs!797695 m!5183521))

(assert (=> b!4473940 d!1365412))

(declare-fun d!1365414 () Bool)

(declare-fun e!2786042 () Bool)

(assert (=> d!1365414 e!2786042))

(declare-fun res!1856644 () Bool)

(assert (=> d!1365414 (=> res!1856644 e!2786042)))

(declare-fun lt!1661789 () Bool)

(assert (=> d!1365414 (= res!1856644 (not lt!1661789))))

(declare-fun lt!1661787 () Bool)

(assert (=> d!1365414 (= lt!1661789 lt!1661787)))

(declare-fun lt!1661786 () Unit!88321)

(declare-fun e!2786043 () Unit!88321)

(assert (=> d!1365414 (= lt!1661786 e!2786043)))

(declare-fun c!761809 () Bool)

(assert (=> d!1365414 (= c!761809 lt!1661787)))

(declare-fun containsKey!1514 (List!50461 (_ BitVec 64)) Bool)

(assert (=> d!1365414 (= lt!1661787 (containsKey!1514 (toList!4095 lt!1661774) lt!1661765))))

(assert (=> d!1365414 (= (contains!12912 lt!1661774 lt!1661765) lt!1661789)))

(declare-fun b!4473952 () Bool)

(declare-fun lt!1661788 () Unit!88321)

(assert (=> b!4473952 (= e!2786043 lt!1661788)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!839 (List!50461 (_ BitVec 64)) Unit!88321)

(assert (=> b!4473952 (= lt!1661788 (lemmaContainsKeyImpliesGetValueByKeyDefined!839 (toList!4095 lt!1661774) lt!1661765))))

(declare-datatypes ((Option!10950 0))(
  ( (None!10949) (Some!10949 (v!44299 List!50460)) )
))
(declare-fun isDefined!8236 (Option!10950) Bool)

(declare-fun getValueByKey!936 (List!50461 (_ BitVec 64)) Option!10950)

(assert (=> b!4473952 (isDefined!8236 (getValueByKey!936 (toList!4095 lt!1661774) lt!1661765))))

(declare-fun b!4473953 () Bool)

(declare-fun Unit!88331 () Unit!88321)

(assert (=> b!4473953 (= e!2786043 Unit!88331)))

(declare-fun b!4473954 () Bool)

(assert (=> b!4473954 (= e!2786042 (isDefined!8236 (getValueByKey!936 (toList!4095 lt!1661774) lt!1661765)))))

(assert (= (and d!1365414 c!761809) b!4473952))

(assert (= (and d!1365414 (not c!761809)) b!4473953))

(assert (= (and d!1365414 (not res!1856644)) b!4473954))

(declare-fun m!5183523 () Bool)

(assert (=> d!1365414 m!5183523))

(declare-fun m!5183525 () Bool)

(assert (=> b!4473952 m!5183525))

(declare-fun m!5183527 () Bool)

(assert (=> b!4473952 m!5183527))

(assert (=> b!4473952 m!5183527))

(declare-fun m!5183529 () Bool)

(assert (=> b!4473952 m!5183529))

(assert (=> b!4473954 m!5183527))

(assert (=> b!4473954 m!5183527))

(assert (=> b!4473954 m!5183529))

(assert (=> b!4473940 d!1365414))

(declare-fun d!1365418 () Bool)

(declare-fun res!1856651 () Bool)

(declare-fun e!2786052 () Bool)

(assert (=> d!1365418 (=> res!1856651 e!2786052)))

(declare-fun e!2786051 () Bool)

(assert (=> d!1365418 (= res!1856651 e!2786051)))

(declare-fun res!1856652 () Bool)

(assert (=> d!1365418 (=> (not res!1856652) (not e!2786051))))

(assert (=> d!1365418 (= res!1856652 ((_ is Cons!50337) lt!1661771))))

(assert (=> d!1365418 (= (containsKeyBiggerList!44 lt!1661771 key!3287) e!2786052)))

(declare-fun b!4473961 () Bool)

(assert (=> b!4473961 (= e!2786051 (containsKey!1512 (_2!28600 (h!56112 lt!1661771)) key!3287))))

(declare-fun b!4473962 () Bool)

(declare-fun e!2786050 () Bool)

(assert (=> b!4473962 (= e!2786052 e!2786050)))

(declare-fun res!1856653 () Bool)

(assert (=> b!4473962 (=> (not res!1856653) (not e!2786050))))

(assert (=> b!4473962 (= res!1856653 ((_ is Cons!50337) lt!1661771))))

(declare-fun b!4473963 () Bool)

(assert (=> b!4473963 (= e!2786050 (containsKeyBiggerList!44 (t!357411 lt!1661771) key!3287))))

(assert (= (and d!1365418 res!1856652) b!4473961))

(assert (= (and d!1365418 (not res!1856651)) b!4473962))

(assert (= (and b!4473962 res!1856653) b!4473963))

(declare-fun m!5183531 () Bool)

(assert (=> b!4473961 m!5183531))

(declare-fun m!5183533 () Bool)

(assert (=> b!4473963 m!5183533))

(assert (=> b!4473930 d!1365418))

(declare-fun d!1365420 () Bool)

(declare-fun res!1856658 () Bool)

(declare-fun e!2786061 () Bool)

(assert (=> d!1365420 (=> res!1856658 e!2786061)))

(assert (=> d!1365420 (= res!1856658 ((_ is Nil!50337) (toList!4095 lm!1477)))))

(assert (=> d!1365420 (= (forall!10026 (toList!4095 lm!1477) lambda!164055) e!2786061)))

(declare-fun b!4473976 () Bool)

(declare-fun e!2786062 () Bool)

(assert (=> b!4473976 (= e!2786061 e!2786062)))

(declare-fun res!1856659 () Bool)

(assert (=> b!4473976 (=> (not res!1856659) (not e!2786062))))

(declare-fun dynLambda!21029 (Int tuple2!50612) Bool)

(assert (=> b!4473976 (= res!1856659 (dynLambda!21029 lambda!164055 (h!56112 (toList!4095 lm!1477))))))

(declare-fun b!4473977 () Bool)

(assert (=> b!4473977 (= e!2786062 (forall!10026 (t!357411 (toList!4095 lm!1477)) lambda!164055))))

(assert (= (and d!1365420 (not res!1856658)) b!4473976))

(assert (= (and b!4473976 res!1856659) b!4473977))

(declare-fun b_lambda!148741 () Bool)

(assert (=> (not b_lambda!148741) (not b!4473976)))

(declare-fun m!5183551 () Bool)

(assert (=> b!4473976 m!5183551))

(assert (=> b!4473977 m!5183469))

(assert (=> start!439952 d!1365420))

(declare-fun d!1365426 () Bool)

(declare-fun isStrictlySorted!352 (List!50461) Bool)

(assert (=> d!1365426 (= (inv!65934 lm!1477) (isStrictlySorted!352 (toList!4095 lm!1477)))))

(declare-fun bs!797699 () Bool)

(assert (= bs!797699 d!1365426))

(declare-fun m!5183553 () Bool)

(assert (=> bs!797699 m!5183553))

(assert (=> start!439952 d!1365426))

(declare-fun d!1365428 () Bool)

(declare-fun e!2786104 () Bool)

(assert (=> d!1365428 e!2786104))

(declare-fun res!1856681 () Bool)

(assert (=> d!1365428 (=> res!1856681 e!2786104)))

(declare-fun e!2786102 () Bool)

(assert (=> d!1365428 (= res!1856681 e!2786102)))

(declare-fun res!1856683 () Bool)

(assert (=> d!1365428 (=> (not res!1856683) (not e!2786102))))

(declare-fun lt!1661845 () Bool)

(assert (=> d!1365428 (= res!1856683 (not lt!1661845))))

(declare-fun lt!1661846 () Bool)

(assert (=> d!1365428 (= lt!1661845 lt!1661846)))

(declare-fun lt!1661844 () Unit!88321)

(declare-fun e!2786103 () Unit!88321)

(assert (=> d!1365428 (= lt!1661844 e!2786103)))

(declare-fun c!761832 () Bool)

(assert (=> d!1365428 (= c!761832 lt!1661846)))

(declare-fun containsKey!1515 (List!50460 K!11750) Bool)

(assert (=> d!1365428 (= lt!1661846 (containsKey!1515 (toList!4096 lt!1661760) key!3287))))

(assert (=> d!1365428 (= (contains!12911 lt!1661760 key!3287) lt!1661845)))

(declare-fun b!4474035 () Bool)

(declare-fun e!2786106 () Bool)

(assert (=> b!4474035 (= e!2786104 e!2786106)))

(declare-fun res!1856682 () Bool)

(assert (=> b!4474035 (=> (not res!1856682) (not e!2786106))))

(declare-datatypes ((Option!10951 0))(
  ( (None!10950) (Some!10950 (v!44300 V!11996)) )
))
(declare-fun isDefined!8237 (Option!10951) Bool)

(declare-fun getValueByKey!937 (List!50460 K!11750) Option!10951)

(assert (=> b!4474035 (= res!1856682 (isDefined!8237 (getValueByKey!937 (toList!4096 lt!1661760) key!3287)))))

(declare-fun b!4474036 () Bool)

(declare-datatypes ((List!50463 0))(
  ( (Nil!50339) (Cons!50339 (h!56116 K!11750) (t!357413 List!50463)) )
))
(declare-fun e!2786107 () List!50463)

(declare-fun keys!17394 (ListMap!3357) List!50463)

(assert (=> b!4474036 (= e!2786107 (keys!17394 lt!1661760))))

(declare-fun b!4474037 () Bool)

(declare-fun e!2786105 () Unit!88321)

(assert (=> b!4474037 (= e!2786103 e!2786105)))

(declare-fun c!761833 () Bool)

(declare-fun call!311484 () Bool)

(assert (=> b!4474037 (= c!761833 call!311484)))

(declare-fun b!4474038 () Bool)

(declare-fun contains!12915 (List!50463 K!11750) Bool)

(assert (=> b!4474038 (= e!2786102 (not (contains!12915 (keys!17394 lt!1661760) key!3287)))))

(declare-fun b!4474039 () Bool)

(declare-fun getKeysList!387 (List!50460) List!50463)

(assert (=> b!4474039 (= e!2786107 (getKeysList!387 (toList!4096 lt!1661760)))))

(declare-fun b!4474040 () Bool)

(declare-fun lt!1661842 () Unit!88321)

(assert (=> b!4474040 (= e!2786103 lt!1661842)))

(declare-fun lt!1661841 () Unit!88321)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!840 (List!50460 K!11750) Unit!88321)

(assert (=> b!4474040 (= lt!1661841 (lemmaContainsKeyImpliesGetValueByKeyDefined!840 (toList!4096 lt!1661760) key!3287))))

(assert (=> b!4474040 (isDefined!8237 (getValueByKey!937 (toList!4096 lt!1661760) key!3287))))

(declare-fun lt!1661843 () Unit!88321)

(assert (=> b!4474040 (= lt!1661843 lt!1661841)))

(declare-fun lemmaInListThenGetKeysListContains!383 (List!50460 K!11750) Unit!88321)

(assert (=> b!4474040 (= lt!1661842 (lemmaInListThenGetKeysListContains!383 (toList!4096 lt!1661760) key!3287))))

(assert (=> b!4474040 call!311484))

(declare-fun bm!311479 () Bool)

(assert (=> bm!311479 (= call!311484 (contains!12915 e!2786107 key!3287))))

(declare-fun c!761834 () Bool)

(assert (=> bm!311479 (= c!761834 c!761832)))

(declare-fun b!4474041 () Bool)

(assert (=> b!4474041 (= e!2786106 (contains!12915 (keys!17394 lt!1661760) key!3287))))

(declare-fun b!4474042 () Bool)

(assert (=> b!4474042 false))

(declare-fun lt!1661847 () Unit!88321)

(declare-fun lt!1661840 () Unit!88321)

(assert (=> b!4474042 (= lt!1661847 lt!1661840)))

(assert (=> b!4474042 (containsKey!1515 (toList!4096 lt!1661760) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!386 (List!50460 K!11750) Unit!88321)

(assert (=> b!4474042 (= lt!1661840 (lemmaInGetKeysListThenContainsKey!386 (toList!4096 lt!1661760) key!3287))))

(declare-fun Unit!88332 () Unit!88321)

(assert (=> b!4474042 (= e!2786105 Unit!88332)))

(declare-fun b!4474043 () Bool)

(declare-fun Unit!88333 () Unit!88321)

(assert (=> b!4474043 (= e!2786105 Unit!88333)))

(assert (= (and d!1365428 c!761832) b!4474040))

(assert (= (and d!1365428 (not c!761832)) b!4474037))

(assert (= (and b!4474037 c!761833) b!4474042))

(assert (= (and b!4474037 (not c!761833)) b!4474043))

(assert (= (or b!4474040 b!4474037) bm!311479))

(assert (= (and bm!311479 c!761834) b!4474039))

(assert (= (and bm!311479 (not c!761834)) b!4474036))

(assert (= (and d!1365428 res!1856683) b!4474038))

(assert (= (and d!1365428 (not res!1856681)) b!4474035))

(assert (= (and b!4474035 res!1856682) b!4474041))

(declare-fun m!5183617 () Bool)

(assert (=> b!4474042 m!5183617))

(declare-fun m!5183619 () Bool)

(assert (=> b!4474042 m!5183619))

(declare-fun m!5183621 () Bool)

(assert (=> b!4474040 m!5183621))

(declare-fun m!5183623 () Bool)

(assert (=> b!4474040 m!5183623))

(assert (=> b!4474040 m!5183623))

(declare-fun m!5183625 () Bool)

(assert (=> b!4474040 m!5183625))

(declare-fun m!5183627 () Bool)

(assert (=> b!4474040 m!5183627))

(declare-fun m!5183629 () Bool)

(assert (=> b!4474036 m!5183629))

(declare-fun m!5183631 () Bool)

(assert (=> b!4474039 m!5183631))

(assert (=> b!4474041 m!5183629))

(assert (=> b!4474041 m!5183629))

(declare-fun m!5183633 () Bool)

(assert (=> b!4474041 m!5183633))

(assert (=> b!4474035 m!5183623))

(assert (=> b!4474035 m!5183623))

(assert (=> b!4474035 m!5183625))

(assert (=> d!1365428 m!5183617))

(declare-fun m!5183635 () Bool)

(assert (=> bm!311479 m!5183635))

(assert (=> b!4474038 m!5183629))

(assert (=> b!4474038 m!5183629))

(assert (=> b!4474038 m!5183633))

(assert (=> b!4473944 d!1365428))

(declare-fun d!1365448 () Bool)

(assert (=> d!1365448 (= (tail!7540 (toList!4095 lm!1477)) (t!357411 (toList!4095 lm!1477)))))

(assert (=> b!4473934 d!1365448))

(declare-fun bs!797732 () Bool)

(declare-fun d!1365450 () Bool)

(assert (= bs!797732 (and d!1365450 start!439952)))

(declare-fun lambda!164075 () Int)

(assert (=> bs!797732 (= lambda!164075 lambda!164055)))

(declare-fun bs!797737 () Bool)

(assert (= bs!797737 (and d!1365450 d!1365412)))

(assert (=> bs!797737 (= lambda!164075 lambda!164058)))

(assert (=> d!1365450 (eq!537 (extractMap!1100 (Cons!50337 (tuple2!50613 hash!344 newBucket!178) (tail!7540 (toList!4095 lm!1477)))) (-!306 (extractMap!1100 (Cons!50337 (tuple2!50613 hash!344 (_2!28600 (h!56112 (toList!4095 lm!1477)))) (tail!7540 (toList!4095 lm!1477)))) key!3287))))

(declare-fun lt!1661879 () Unit!88321)

(declare-fun choose!28670 (ListLongMap!2727 (_ BitVec 64) List!50460 List!50460 K!11750 Hashable!5439) Unit!88321)

(assert (=> d!1365450 (= lt!1661879 (choose!28670 lm!1477 hash!344 (_2!28600 (h!56112 (toList!4095 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1365450 (forall!10026 (toList!4095 lm!1477) lambda!164075)))

(assert (=> d!1365450 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!4 lm!1477 hash!344 (_2!28600 (h!56112 (toList!4095 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1661879)))

(declare-fun bs!797740 () Bool)

(assert (= bs!797740 d!1365450))

(declare-fun m!5183703 () Bool)

(assert (=> bs!797740 m!5183703))

(declare-fun m!5183705 () Bool)

(assert (=> bs!797740 m!5183705))

(declare-fun m!5183707 () Bool)

(assert (=> bs!797740 m!5183707))

(assert (=> bs!797740 m!5183703))

(declare-fun m!5183709 () Bool)

(assert (=> bs!797740 m!5183709))

(declare-fun m!5183711 () Bool)

(assert (=> bs!797740 m!5183711))

(assert (=> bs!797740 m!5183709))

(assert (=> bs!797740 m!5183705))

(declare-fun m!5183715 () Bool)

(assert (=> bs!797740 m!5183715))

(assert (=> bs!797740 m!5183485))

(assert (=> b!4473934 d!1365450))

(declare-fun bs!797773 () Bool)

(declare-fun d!1365466 () Bool)

(assert (= bs!797773 (and d!1365466 start!439952)))

(declare-fun lambda!164083 () Int)

(assert (=> bs!797773 (= lambda!164083 lambda!164055)))

(declare-fun bs!797775 () Bool)

(assert (= bs!797775 (and d!1365466 d!1365412)))

(assert (=> bs!797775 (= lambda!164083 lambda!164058)))

(declare-fun bs!797776 () Bool)

(assert (= bs!797776 (and d!1365466 d!1365450)))

(assert (=> bs!797776 (= lambda!164083 lambda!164075)))

(declare-fun lt!1661889 () ListMap!3357)

(declare-fun invariantList!939 (List!50460) Bool)

(assert (=> d!1365466 (invariantList!939 (toList!4096 lt!1661889))))

(declare-fun e!2786132 () ListMap!3357)

(assert (=> d!1365466 (= lt!1661889 e!2786132)))

(declare-fun c!761843 () Bool)

(assert (=> d!1365466 (= c!761843 ((_ is Cons!50337) (Cons!50337 lt!1661770 lt!1661757)))))

(assert (=> d!1365466 (forall!10026 (Cons!50337 lt!1661770 lt!1661757) lambda!164083)))

(assert (=> d!1365466 (= (extractMap!1100 (Cons!50337 lt!1661770 lt!1661757)) lt!1661889)))

(declare-fun b!4474079 () Bool)

(declare-fun addToMapMapFromBucket!601 (List!50460 ListMap!3357) ListMap!3357)

(assert (=> b!4474079 (= e!2786132 (addToMapMapFromBucket!601 (_2!28600 (h!56112 (Cons!50337 lt!1661770 lt!1661757))) (extractMap!1100 (t!357411 (Cons!50337 lt!1661770 lt!1661757)))))))

(declare-fun b!4474080 () Bool)

(assert (=> b!4474080 (= e!2786132 (ListMap!3358 Nil!50336))))

(assert (= (and d!1365466 c!761843) b!4474079))

(assert (= (and d!1365466 (not c!761843)) b!4474080))

(declare-fun m!5183763 () Bool)

(assert (=> d!1365466 m!5183763))

(declare-fun m!5183765 () Bool)

(assert (=> d!1365466 m!5183765))

(declare-fun m!5183767 () Bool)

(assert (=> b!4474079 m!5183767))

(assert (=> b!4474079 m!5183767))

(declare-fun m!5183769 () Bool)

(assert (=> b!4474079 m!5183769))

(assert (=> b!4473934 d!1365466))

(declare-fun d!1365482 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8137 (List!50460) (InoxSet tuple2!50610))

(assert (=> d!1365482 (= (eq!537 (extractMap!1100 (Cons!50337 lt!1661770 lt!1661757)) (-!306 (extractMap!1100 (Cons!50337 lt!1661767 lt!1661757)) key!3287)) (= (content!8137 (toList!4096 (extractMap!1100 (Cons!50337 lt!1661770 lt!1661757)))) (content!8137 (toList!4096 (-!306 (extractMap!1100 (Cons!50337 lt!1661767 lt!1661757)) key!3287)))))))

(declare-fun bs!797787 () Bool)

(assert (= bs!797787 d!1365482))

(declare-fun m!5183795 () Bool)

(assert (=> bs!797787 m!5183795))

(declare-fun m!5183797 () Bool)

(assert (=> bs!797787 m!5183797))

(assert (=> b!4473934 d!1365482))

(declare-fun d!1365488 () Bool)

(declare-fun e!2786151 () Bool)

(assert (=> d!1365488 e!2786151))

(declare-fun res!1856718 () Bool)

(assert (=> d!1365488 (=> (not res!1856718) (not e!2786151))))

(declare-fun lt!1661908 () ListMap!3357)

(assert (=> d!1365488 (= res!1856718 (not (contains!12911 lt!1661908 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!75 (List!50460 K!11750) List!50460)

(assert (=> d!1365488 (= lt!1661908 (ListMap!3358 (removePresrvNoDuplicatedKeys!75 (toList!4096 (extractMap!1100 (Cons!50337 lt!1661767 lt!1661757))) key!3287)))))

(assert (=> d!1365488 (= (-!306 (extractMap!1100 (Cons!50337 lt!1661767 lt!1661757)) key!3287) lt!1661908)))

(declare-fun b!4474108 () Bool)

(declare-fun content!8138 (List!50463) (InoxSet K!11750))

(assert (=> b!4474108 (= e!2786151 (= ((_ map and) (content!8138 (keys!17394 (extractMap!1100 (Cons!50337 lt!1661767 lt!1661757)))) ((_ map not) (store ((as const (Array K!11750 Bool)) false) key!3287 true))) (content!8138 (keys!17394 lt!1661908))))))

(assert (= (and d!1365488 res!1856718) b!4474108))

(declare-fun m!5183835 () Bool)

(assert (=> d!1365488 m!5183835))

(declare-fun m!5183837 () Bool)

(assert (=> d!1365488 m!5183837))

(declare-fun m!5183839 () Bool)

(assert (=> b!4474108 m!5183839))

(declare-fun m!5183841 () Bool)

(assert (=> b!4474108 m!5183841))

(declare-fun m!5183843 () Bool)

(assert (=> b!4474108 m!5183843))

(declare-fun m!5183845 () Bool)

(assert (=> b!4474108 m!5183845))

(assert (=> b!4474108 m!5183845))

(declare-fun m!5183847 () Bool)

(assert (=> b!4474108 m!5183847))

(assert (=> b!4474108 m!5183481))

(assert (=> b!4474108 m!5183839))

(assert (=> b!4473934 d!1365488))

(declare-fun bs!797807 () Bool)

(declare-fun d!1365504 () Bool)

(assert (= bs!797807 (and d!1365504 start!439952)))

(declare-fun lambda!164091 () Int)

(assert (=> bs!797807 (= lambda!164091 lambda!164055)))

(declare-fun bs!797808 () Bool)

(assert (= bs!797808 (and d!1365504 d!1365412)))

(assert (=> bs!797808 (= lambda!164091 lambda!164058)))

(declare-fun bs!797809 () Bool)

(assert (= bs!797809 (and d!1365504 d!1365450)))

(assert (=> bs!797809 (= lambda!164091 lambda!164075)))

(declare-fun bs!797810 () Bool)

(assert (= bs!797810 (and d!1365504 d!1365466)))

(assert (=> bs!797810 (= lambda!164091 lambda!164083)))

(declare-fun lt!1661909 () ListMap!3357)

(assert (=> d!1365504 (invariantList!939 (toList!4096 lt!1661909))))

(declare-fun e!2786152 () ListMap!3357)

(assert (=> d!1365504 (= lt!1661909 e!2786152)))

(declare-fun c!761848 () Bool)

(assert (=> d!1365504 (= c!761848 ((_ is Cons!50337) (Cons!50337 lt!1661767 lt!1661757)))))

(assert (=> d!1365504 (forall!10026 (Cons!50337 lt!1661767 lt!1661757) lambda!164091)))

(assert (=> d!1365504 (= (extractMap!1100 (Cons!50337 lt!1661767 lt!1661757)) lt!1661909)))

(declare-fun b!4474109 () Bool)

(assert (=> b!4474109 (= e!2786152 (addToMapMapFromBucket!601 (_2!28600 (h!56112 (Cons!50337 lt!1661767 lt!1661757))) (extractMap!1100 (t!357411 (Cons!50337 lt!1661767 lt!1661757)))))))

(declare-fun b!4474110 () Bool)

(assert (=> b!4474110 (= e!2786152 (ListMap!3358 Nil!50336))))

(assert (= (and d!1365504 c!761848) b!4474109))

(assert (= (and d!1365504 (not c!761848)) b!4474110))

(declare-fun m!5183849 () Bool)

(assert (=> d!1365504 m!5183849))

(declare-fun m!5183851 () Bool)

(assert (=> d!1365504 m!5183851))

(declare-fun m!5183853 () Bool)

(assert (=> b!4474109 m!5183853))

(assert (=> b!4474109 m!5183853))

(declare-fun m!5183855 () Bool)

(assert (=> b!4474109 m!5183855))

(assert (=> b!4473934 d!1365504))

(declare-fun bs!797811 () Bool)

(declare-fun d!1365506 () Bool)

(assert (= bs!797811 (and d!1365506 d!1365466)))

(declare-fun lambda!164094 () Int)

(assert (=> bs!797811 (not (= lambda!164094 lambda!164083))))

(declare-fun bs!797812 () Bool)

(assert (= bs!797812 (and d!1365506 d!1365450)))

(assert (=> bs!797812 (not (= lambda!164094 lambda!164075))))

(declare-fun bs!797813 () Bool)

(assert (= bs!797813 (and d!1365506 start!439952)))

(assert (=> bs!797813 (not (= lambda!164094 lambda!164055))))

(declare-fun bs!797814 () Bool)

(assert (= bs!797814 (and d!1365506 d!1365504)))

(assert (=> bs!797814 (not (= lambda!164094 lambda!164091))))

(declare-fun bs!797815 () Bool)

(assert (= bs!797815 (and d!1365506 d!1365412)))

(assert (=> bs!797815 (not (= lambda!164094 lambda!164058))))

(assert (=> d!1365506 true))

(assert (=> d!1365506 (= (allKeysSameHashInMap!1151 lm!1477 hashF!1107) (forall!10026 (toList!4095 lm!1477) lambda!164094))))

(declare-fun bs!797816 () Bool)

(assert (= bs!797816 d!1365506))

(declare-fun m!5183863 () Bool)

(assert (=> bs!797816 m!5183863))

(assert (=> b!4473932 d!1365506))

(declare-fun d!1365510 () Bool)

(assert (=> d!1365510 (contains!12913 (toList!4095 lm!1477) (tuple2!50613 hash!344 lt!1661754))))

(declare-fun lt!1661930 () Unit!88321)

(declare-fun choose!28672 (List!50461 (_ BitVec 64) List!50460) Unit!88321)

(assert (=> d!1365510 (= lt!1661930 (choose!28672 (toList!4095 lm!1477) hash!344 lt!1661754))))

(declare-fun e!2786173 () Bool)

(assert (=> d!1365510 e!2786173))

(declare-fun res!1856730 () Bool)

(assert (=> d!1365510 (=> (not res!1856730) (not e!2786173))))

(assert (=> d!1365510 (= res!1856730 (isStrictlySorted!352 (toList!4095 lm!1477)))))

(assert (=> d!1365510 (= (lemmaGetValueByKeyImpliesContainsTuple!556 (toList!4095 lm!1477) hash!344 lt!1661754) lt!1661930)))

(declare-fun b!4474142 () Bool)

(assert (=> b!4474142 (= e!2786173 (= (getValueByKey!936 (toList!4095 lm!1477) hash!344) (Some!10949 lt!1661754)))))

(assert (= (and d!1365510 res!1856730) b!4474142))

(declare-fun m!5183879 () Bool)

(assert (=> d!1365510 m!5183879))

(declare-fun m!5183881 () Bool)

(assert (=> d!1365510 m!5183881))

(assert (=> d!1365510 m!5183553))

(declare-fun m!5183883 () Bool)

(assert (=> b!4474142 m!5183883))

(assert (=> b!4473943 d!1365510))

(declare-fun bs!797817 () Bool)

(declare-fun d!1365516 () Bool)

(assert (= bs!797817 (and d!1365516 d!1365466)))

(declare-fun lambda!164095 () Int)

(assert (=> bs!797817 (= lambda!164095 lambda!164083)))

(declare-fun bs!797818 () Bool)

(assert (= bs!797818 (and d!1365516 d!1365450)))

(assert (=> bs!797818 (= lambda!164095 lambda!164075)))

(declare-fun bs!797819 () Bool)

(assert (= bs!797819 (and d!1365516 start!439952)))

(assert (=> bs!797819 (= lambda!164095 lambda!164055)))

(declare-fun bs!797820 () Bool)

(assert (= bs!797820 (and d!1365516 d!1365506)))

(assert (=> bs!797820 (not (= lambda!164095 lambda!164094))))

(declare-fun bs!797821 () Bool)

(assert (= bs!797821 (and d!1365516 d!1365504)))

(assert (=> bs!797821 (= lambda!164095 lambda!164091)))

(declare-fun bs!797822 () Bool)

(assert (= bs!797822 (and d!1365516 d!1365412)))

(assert (=> bs!797822 (= lambda!164095 lambda!164058)))

(assert (=> d!1365516 (contains!12912 lm!1477 (hash!2497 hashF!1107 key!3287))))

(declare-fun lt!1661933 () Unit!88321)

(assert (=> d!1365516 (= lt!1661933 (choose!28668 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1365516 (forall!10026 (toList!4095 lm!1477) lambda!164095)))

(assert (=> d!1365516 (= (lemmaInGenMapThenLongMapContainsHash!118 lm!1477 key!3287 hashF!1107) lt!1661933)))

(declare-fun bs!797823 () Bool)

(assert (= bs!797823 d!1365516))

(assert (=> bs!797823 m!5183473))

(assert (=> bs!797823 m!5183473))

(declare-fun m!5183889 () Bool)

(assert (=> bs!797823 m!5183889))

(declare-fun m!5183891 () Bool)

(assert (=> bs!797823 m!5183891))

(declare-fun m!5183893 () Bool)

(assert (=> bs!797823 m!5183893))

(assert (=> b!4473943 d!1365516))

(declare-fun d!1365520 () Bool)

(declare-fun get!16418 (Option!10950) List!50460)

(assert (=> d!1365520 (= (apply!11781 lm!1477 hash!344) (get!16418 (getValueByKey!936 (toList!4095 lm!1477) hash!344)))))

(declare-fun bs!797824 () Bool)

(assert (= bs!797824 d!1365520))

(assert (=> bs!797824 m!5183883))

(assert (=> bs!797824 m!5183883))

(declare-fun m!5183895 () Bool)

(assert (=> bs!797824 m!5183895))

(assert (=> b!4473943 d!1365520))

(declare-fun d!1365522 () Bool)

(assert (=> d!1365522 (dynLambda!21029 lambda!164055 lt!1661766)))

(declare-fun lt!1661945 () Unit!88321)

(declare-fun choose!28673 (List!50461 Int tuple2!50612) Unit!88321)

(assert (=> d!1365522 (= lt!1661945 (choose!28673 (toList!4095 lm!1477) lambda!164055 lt!1661766))))

(declare-fun e!2786192 () Bool)

(assert (=> d!1365522 e!2786192))

(declare-fun res!1856749 () Bool)

(assert (=> d!1365522 (=> (not res!1856749) (not e!2786192))))

(assert (=> d!1365522 (= res!1856749 (forall!10026 (toList!4095 lm!1477) lambda!164055))))

(assert (=> d!1365522 (= (forallContained!2289 (toList!4095 lm!1477) lambda!164055 lt!1661766) lt!1661945)))

(declare-fun b!4474161 () Bool)

(assert (=> b!4474161 (= e!2786192 (contains!12913 (toList!4095 lm!1477) lt!1661766))))

(assert (= (and d!1365522 res!1856749) b!4474161))

(declare-fun b_lambda!148749 () Bool)

(assert (=> (not b_lambda!148749) (not d!1365522)))

(declare-fun m!5183919 () Bool)

(assert (=> d!1365522 m!5183919))

(declare-fun m!5183921 () Bool)

(assert (=> d!1365522 m!5183921))

(assert (=> d!1365522 m!5183491))

(assert (=> b!4474161 m!5183495))

(assert (=> b!4473943 d!1365522))

(declare-fun b!4474179 () Bool)

(declare-fun e!2786200 () List!50460)

(declare-fun e!2786201 () List!50460)

(assert (=> b!4474179 (= e!2786200 e!2786201)))

(declare-fun c!761864 () Bool)

(assert (=> b!4474179 (= c!761864 ((_ is Cons!50336) lt!1661754))))

(declare-fun d!1365532 () Bool)

(declare-fun lt!1661948 () List!50460)

(assert (=> d!1365532 (not (containsKey!1512 lt!1661948 key!3287))))

(assert (=> d!1365532 (= lt!1661948 e!2786200)))

(declare-fun c!761863 () Bool)

(assert (=> d!1365532 (= c!761863 (and ((_ is Cons!50336) lt!1661754) (= (_1!28599 (h!56111 lt!1661754)) key!3287)))))

(assert (=> d!1365532 (noDuplicateKeys!1044 lt!1661754)))

(assert (=> d!1365532 (= (removePairForKey!671 lt!1661754 key!3287) lt!1661948)))

(declare-fun b!4474178 () Bool)

(assert (=> b!4474178 (= e!2786200 (t!357410 lt!1661754))))

(declare-fun b!4474181 () Bool)

(assert (=> b!4474181 (= e!2786201 Nil!50336)))

(declare-fun b!4474180 () Bool)

(assert (=> b!4474180 (= e!2786201 (Cons!50336 (h!56111 lt!1661754) (removePairForKey!671 (t!357410 lt!1661754) key!3287)))))

(assert (= (and d!1365532 c!761863) b!4474178))

(assert (= (and d!1365532 (not c!761863)) b!4474179))

(assert (= (and b!4474179 c!761864) b!4474180))

(assert (= (and b!4474179 (not c!761864)) b!4474181))

(declare-fun m!5183925 () Bool)

(assert (=> d!1365532 m!5183925))

(declare-fun m!5183927 () Bool)

(assert (=> d!1365532 m!5183927))

(declare-fun m!5183929 () Bool)

(assert (=> b!4474180 m!5183929))

(assert (=> b!4473943 d!1365532))

(declare-fun d!1365534 () Bool)

(declare-fun lt!1661951 () Bool)

(declare-fun content!8139 (List!50461) (InoxSet tuple2!50612))

(assert (=> d!1365534 (= lt!1661951 (select (content!8139 (toList!4095 lm!1477)) lt!1661766))))

(declare-fun e!2786210 () Bool)

(assert (=> d!1365534 (= lt!1661951 e!2786210)))

(declare-fun res!1856755 () Bool)

(assert (=> d!1365534 (=> (not res!1856755) (not e!2786210))))

(assert (=> d!1365534 (= res!1856755 ((_ is Cons!50337) (toList!4095 lm!1477)))))

(assert (=> d!1365534 (= (contains!12913 (toList!4095 lm!1477) lt!1661766) lt!1661951)))

(declare-fun b!4474192 () Bool)

(declare-fun e!2786211 () Bool)

(assert (=> b!4474192 (= e!2786210 e!2786211)))

(declare-fun res!1856754 () Bool)

(assert (=> b!4474192 (=> res!1856754 e!2786211)))

(assert (=> b!4474192 (= res!1856754 (= (h!56112 (toList!4095 lm!1477)) lt!1661766))))

(declare-fun b!4474193 () Bool)

(assert (=> b!4474193 (= e!2786211 (contains!12913 (t!357411 (toList!4095 lm!1477)) lt!1661766))))

(assert (= (and d!1365534 res!1856755) b!4474192))

(assert (= (and b!4474192 (not res!1856754)) b!4474193))

(declare-fun m!5183935 () Bool)

(assert (=> d!1365534 m!5183935))

(declare-fun m!5183937 () Bool)

(assert (=> d!1365534 m!5183937))

(declare-fun m!5183939 () Bool)

(assert (=> b!4474193 m!5183939))

(assert (=> b!4473943 d!1365534))

(declare-fun d!1365542 () Bool)

(declare-fun e!2786212 () Bool)

(assert (=> d!1365542 e!2786212))

(declare-fun res!1856756 () Bool)

(assert (=> d!1365542 (=> res!1856756 e!2786212)))

(declare-fun lt!1661955 () Bool)

(assert (=> d!1365542 (= res!1856756 (not lt!1661955))))

(declare-fun lt!1661953 () Bool)

(assert (=> d!1365542 (= lt!1661955 lt!1661953)))

(declare-fun lt!1661952 () Unit!88321)

(declare-fun e!2786213 () Unit!88321)

(assert (=> d!1365542 (= lt!1661952 e!2786213)))

(declare-fun c!761865 () Bool)

(assert (=> d!1365542 (= c!761865 lt!1661953)))

(assert (=> d!1365542 (= lt!1661953 (containsKey!1514 (toList!4095 lm!1477) lt!1661765))))

(assert (=> d!1365542 (= (contains!12912 lm!1477 lt!1661765) lt!1661955)))

(declare-fun b!4474194 () Bool)

(declare-fun lt!1661954 () Unit!88321)

(assert (=> b!4474194 (= e!2786213 lt!1661954)))

(assert (=> b!4474194 (= lt!1661954 (lemmaContainsKeyImpliesGetValueByKeyDefined!839 (toList!4095 lm!1477) lt!1661765))))

(assert (=> b!4474194 (isDefined!8236 (getValueByKey!936 (toList!4095 lm!1477) lt!1661765))))

(declare-fun b!4474195 () Bool)

(declare-fun Unit!88336 () Unit!88321)

(assert (=> b!4474195 (= e!2786213 Unit!88336)))

(declare-fun b!4474196 () Bool)

(assert (=> b!4474196 (= e!2786212 (isDefined!8236 (getValueByKey!936 (toList!4095 lm!1477) lt!1661765)))))

(assert (= (and d!1365542 c!761865) b!4474194))

(assert (= (and d!1365542 (not c!761865)) b!4474195))

(assert (= (and d!1365542 (not res!1856756)) b!4474196))

(declare-fun m!5183941 () Bool)

(assert (=> d!1365542 m!5183941))

(declare-fun m!5183943 () Bool)

(assert (=> b!4474194 m!5183943))

(declare-fun m!5183945 () Bool)

(assert (=> b!4474194 m!5183945))

(assert (=> b!4474194 m!5183945))

(declare-fun m!5183947 () Bool)

(assert (=> b!4474194 m!5183947))

(assert (=> b!4474196 m!5183945))

(assert (=> b!4474196 m!5183945))

(assert (=> b!4474196 m!5183947))

(assert (=> b!4473943 d!1365542))

(declare-fun d!1365544 () Bool)

(assert (=> d!1365544 true))

(assert (=> d!1365544 true))

(declare-fun lambda!164102 () Int)

(declare-fun forall!10027 (List!50460 Int) Bool)

(assert (=> d!1365544 (= (allKeysSameHash!898 newBucket!178 hash!344 hashF!1107) (forall!10027 newBucket!178 lambda!164102))))

(declare-fun bs!797859 () Bool)

(assert (= bs!797859 d!1365544))

(declare-fun m!5183949 () Bool)

(assert (=> bs!797859 m!5183949))

(assert (=> b!4473936 d!1365544))

(declare-fun bs!797860 () Bool)

(declare-fun d!1365546 () Bool)

(assert (= bs!797860 (and d!1365546 d!1365466)))

(declare-fun lambda!164103 () Int)

(assert (=> bs!797860 (= lambda!164103 lambda!164083)))

(declare-fun bs!797861 () Bool)

(assert (= bs!797861 (and d!1365546 d!1365450)))

(assert (=> bs!797861 (= lambda!164103 lambda!164075)))

(declare-fun bs!797862 () Bool)

(assert (= bs!797862 (and d!1365546 start!439952)))

(assert (=> bs!797862 (= lambda!164103 lambda!164055)))

(declare-fun bs!797863 () Bool)

(assert (= bs!797863 (and d!1365546 d!1365504)))

(assert (=> bs!797863 (= lambda!164103 lambda!164091)))

(declare-fun bs!797864 () Bool)

(assert (= bs!797864 (and d!1365546 d!1365412)))

(assert (=> bs!797864 (= lambda!164103 lambda!164058)))

(declare-fun bs!797865 () Bool)

(assert (= bs!797865 (and d!1365546 d!1365506)))

(assert (=> bs!797865 (not (= lambda!164103 lambda!164094))))

(declare-fun bs!797866 () Bool)

(assert (= bs!797866 (and d!1365546 d!1365516)))

(assert (=> bs!797866 (= lambda!164103 lambda!164095)))

(declare-fun lt!1661956 () ListMap!3357)

(assert (=> d!1365546 (invariantList!939 (toList!4096 lt!1661956))))

(declare-fun e!2786214 () ListMap!3357)

(assert (=> d!1365546 (= lt!1661956 e!2786214)))

(declare-fun c!761866 () Bool)

(assert (=> d!1365546 (= c!761866 ((_ is Cons!50337) (t!357411 (toList!4095 lm!1477))))))

(assert (=> d!1365546 (forall!10026 (t!357411 (toList!4095 lm!1477)) lambda!164103)))

(assert (=> d!1365546 (= (extractMap!1100 (t!357411 (toList!4095 lm!1477))) lt!1661956)))

(declare-fun b!4474201 () Bool)

(assert (=> b!4474201 (= e!2786214 (addToMapMapFromBucket!601 (_2!28600 (h!56112 (t!357411 (toList!4095 lm!1477)))) (extractMap!1100 (t!357411 (t!357411 (toList!4095 lm!1477))))))))

(declare-fun b!4474202 () Bool)

(assert (=> b!4474202 (= e!2786214 (ListMap!3358 Nil!50336))))

(assert (= (and d!1365546 c!761866) b!4474201))

(assert (= (and d!1365546 (not c!761866)) b!4474202))

(declare-fun m!5183951 () Bool)

(assert (=> d!1365546 m!5183951))

(declare-fun m!5183953 () Bool)

(assert (=> d!1365546 m!5183953))

(declare-fun m!5183955 () Bool)

(assert (=> b!4474201 m!5183955))

(assert (=> b!4474201 m!5183955))

(declare-fun m!5183957 () Bool)

(assert (=> b!4474201 m!5183957))

(assert (=> b!4473926 d!1365546))

(declare-fun bs!797867 () Bool)

(declare-fun d!1365548 () Bool)

(assert (= bs!797867 (and d!1365548 d!1365546)))

(declare-fun lambda!164104 () Int)

(assert (=> bs!797867 (= lambda!164104 lambda!164103)))

(declare-fun bs!797868 () Bool)

(assert (= bs!797868 (and d!1365548 d!1365466)))

(assert (=> bs!797868 (= lambda!164104 lambda!164083)))

(declare-fun bs!797869 () Bool)

(assert (= bs!797869 (and d!1365548 d!1365450)))

(assert (=> bs!797869 (= lambda!164104 lambda!164075)))

(declare-fun bs!797870 () Bool)

(assert (= bs!797870 (and d!1365548 start!439952)))

(assert (=> bs!797870 (= lambda!164104 lambda!164055)))

(declare-fun bs!797871 () Bool)

(assert (= bs!797871 (and d!1365548 d!1365504)))

(assert (=> bs!797871 (= lambda!164104 lambda!164091)))

(declare-fun bs!797872 () Bool)

(assert (= bs!797872 (and d!1365548 d!1365412)))

(assert (=> bs!797872 (= lambda!164104 lambda!164058)))

(declare-fun bs!797873 () Bool)

(assert (= bs!797873 (and d!1365548 d!1365506)))

(assert (=> bs!797873 (not (= lambda!164104 lambda!164094))))

(declare-fun bs!797874 () Bool)

(assert (= bs!797874 (and d!1365548 d!1365516)))

(assert (=> bs!797874 (= lambda!164104 lambda!164095)))

(declare-fun lt!1661957 () ListMap!3357)

(assert (=> d!1365548 (invariantList!939 (toList!4096 lt!1661957))))

(declare-fun e!2786215 () ListMap!3357)

(assert (=> d!1365548 (= lt!1661957 e!2786215)))

(declare-fun c!761867 () Bool)

(assert (=> d!1365548 (= c!761867 ((_ is Cons!50337) (toList!4095 lt!1661774)))))

(assert (=> d!1365548 (forall!10026 (toList!4095 lt!1661774) lambda!164104)))

(assert (=> d!1365548 (= (extractMap!1100 (toList!4095 lt!1661774)) lt!1661957)))

(declare-fun b!4474203 () Bool)

(assert (=> b!4474203 (= e!2786215 (addToMapMapFromBucket!601 (_2!28600 (h!56112 (toList!4095 lt!1661774))) (extractMap!1100 (t!357411 (toList!4095 lt!1661774)))))))

(declare-fun b!4474204 () Bool)

(assert (=> b!4474204 (= e!2786215 (ListMap!3358 Nil!50336))))

(assert (= (and d!1365548 c!761867) b!4474203))

(assert (= (and d!1365548 (not c!761867)) b!4474204))

(declare-fun m!5183959 () Bool)

(assert (=> d!1365548 m!5183959))

(declare-fun m!5183961 () Bool)

(assert (=> d!1365548 m!5183961))

(declare-fun m!5183963 () Bool)

(assert (=> b!4474203 m!5183963))

(assert (=> b!4474203 m!5183963))

(declare-fun m!5183965 () Bool)

(assert (=> b!4474203 m!5183965))

(assert (=> b!4473926 d!1365548))

(declare-fun bs!797875 () Bool)

(declare-fun d!1365550 () Bool)

(assert (= bs!797875 (and d!1365550 d!1365548)))

(declare-fun lambda!164107 () Int)

(assert (=> bs!797875 (= lambda!164107 lambda!164104)))

(declare-fun bs!797876 () Bool)

(assert (= bs!797876 (and d!1365550 d!1365546)))

(assert (=> bs!797876 (= lambda!164107 lambda!164103)))

(declare-fun bs!797877 () Bool)

(assert (= bs!797877 (and d!1365550 d!1365466)))

(assert (=> bs!797877 (= lambda!164107 lambda!164083)))

(declare-fun bs!797878 () Bool)

(assert (= bs!797878 (and d!1365550 d!1365450)))

(assert (=> bs!797878 (= lambda!164107 lambda!164075)))

(declare-fun bs!797879 () Bool)

(assert (= bs!797879 (and d!1365550 start!439952)))

(assert (=> bs!797879 (= lambda!164107 lambda!164055)))

(declare-fun bs!797880 () Bool)

(assert (= bs!797880 (and d!1365550 d!1365504)))

(assert (=> bs!797880 (= lambda!164107 lambda!164091)))

(declare-fun bs!797881 () Bool)

(assert (= bs!797881 (and d!1365550 d!1365412)))

(assert (=> bs!797881 (= lambda!164107 lambda!164058)))

(declare-fun bs!797882 () Bool)

(assert (= bs!797882 (and d!1365550 d!1365506)))

(assert (=> bs!797882 (not (= lambda!164107 lambda!164094))))

(declare-fun bs!797883 () Bool)

(assert (= bs!797883 (and d!1365550 d!1365516)))

(assert (=> bs!797883 (= lambda!164107 lambda!164095)))

(assert (=> d!1365550 (not (contains!12911 (extractMap!1100 (toList!4095 lm!1477)) key!3287))))

(declare-fun lt!1661960 () Unit!88321)

(declare-fun choose!28675 (ListLongMap!2727 K!11750 Hashable!5439) Unit!88321)

(assert (=> d!1365550 (= lt!1661960 (choose!28675 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1365550 (forall!10026 (toList!4095 lm!1477) lambda!164107)))

(assert (=> d!1365550 (= (lemmaNotInItsHashBucketThenNotInMap!44 lm!1477 key!3287 hashF!1107) lt!1661960)))

(declare-fun bs!797884 () Bool)

(assert (= bs!797884 d!1365550))

(assert (=> bs!797884 m!5183513))

(assert (=> bs!797884 m!5183513))

(assert (=> bs!797884 m!5183515))

(declare-fun m!5183967 () Bool)

(assert (=> bs!797884 m!5183967))

(declare-fun m!5183969 () Bool)

(assert (=> bs!797884 m!5183969))

(assert (=> b!4473937 d!1365550))

(declare-fun d!1365552 () Bool)

(declare-fun res!1856757 () Bool)

(declare-fun e!2786216 () Bool)

(assert (=> d!1365552 (=> res!1856757 e!2786216)))

(assert (=> d!1365552 (= res!1856757 ((_ is Nil!50337) (t!357411 (toList!4095 lm!1477))))))

(assert (=> d!1365552 (= (forall!10026 (t!357411 (toList!4095 lm!1477)) lambda!164055) e!2786216)))

(declare-fun b!4474205 () Bool)

(declare-fun e!2786217 () Bool)

(assert (=> b!4474205 (= e!2786216 e!2786217)))

(declare-fun res!1856758 () Bool)

(assert (=> b!4474205 (=> (not res!1856758) (not e!2786217))))

(assert (=> b!4474205 (= res!1856758 (dynLambda!21029 lambda!164055 (h!56112 (t!357411 (toList!4095 lm!1477)))))))

(declare-fun b!4474206 () Bool)

(assert (=> b!4474206 (= e!2786217 (forall!10026 (t!357411 (t!357411 (toList!4095 lm!1477))) lambda!164055))))

(assert (= (and d!1365552 (not res!1856757)) b!4474205))

(assert (= (and b!4474205 res!1856758) b!4474206))

(declare-fun b_lambda!148757 () Bool)

(assert (=> (not b_lambda!148757) (not b!4474205)))

(declare-fun m!5183971 () Bool)

(assert (=> b!4474205 m!5183971))

(declare-fun m!5183973 () Bool)

(assert (=> b!4474206 m!5183973))

(assert (=> b!4473924 d!1365552))

(declare-fun bs!797885 () Bool)

(declare-fun d!1365554 () Bool)

(assert (= bs!797885 (and d!1365554 d!1365548)))

(declare-fun lambda!164108 () Int)

(assert (=> bs!797885 (= lambda!164108 lambda!164104)))

(declare-fun bs!797886 () Bool)

(assert (= bs!797886 (and d!1365554 d!1365546)))

(assert (=> bs!797886 (= lambda!164108 lambda!164103)))

(declare-fun bs!797887 () Bool)

(assert (= bs!797887 (and d!1365554 d!1365466)))

(assert (=> bs!797887 (= lambda!164108 lambda!164083)))

(declare-fun bs!797888 () Bool)

(assert (= bs!797888 (and d!1365554 d!1365450)))

(assert (=> bs!797888 (= lambda!164108 lambda!164075)))

(declare-fun bs!797889 () Bool)

(assert (= bs!797889 (and d!1365554 start!439952)))

(assert (=> bs!797889 (= lambda!164108 lambda!164055)))

(declare-fun bs!797890 () Bool)

(assert (= bs!797890 (and d!1365554 d!1365504)))

(assert (=> bs!797890 (= lambda!164108 lambda!164091)))

(declare-fun bs!797891 () Bool)

(assert (= bs!797891 (and d!1365554 d!1365412)))

(assert (=> bs!797891 (= lambda!164108 lambda!164058)))

(declare-fun bs!797892 () Bool)

(assert (= bs!797892 (and d!1365554 d!1365550)))

(assert (=> bs!797892 (= lambda!164108 lambda!164107)))

(declare-fun bs!797893 () Bool)

(assert (= bs!797893 (and d!1365554 d!1365506)))

(assert (=> bs!797893 (not (= lambda!164108 lambda!164094))))

(declare-fun bs!797894 () Bool)

(assert (= bs!797894 (and d!1365554 d!1365516)))

(assert (=> bs!797894 (= lambda!164108 lambda!164095)))

(declare-fun lt!1661961 () ListMap!3357)

(assert (=> d!1365554 (invariantList!939 (toList!4096 lt!1661961))))

(declare-fun e!2786218 () ListMap!3357)

(assert (=> d!1365554 (= lt!1661961 e!2786218)))

(declare-fun c!761868 () Bool)

(assert (=> d!1365554 (= c!761868 ((_ is Cons!50337) (toList!4095 lt!1661762)))))

(assert (=> d!1365554 (forall!10026 (toList!4095 lt!1661762) lambda!164108)))

(assert (=> d!1365554 (= (extractMap!1100 (toList!4095 lt!1661762)) lt!1661961)))

(declare-fun b!4474207 () Bool)

(assert (=> b!4474207 (= e!2786218 (addToMapMapFromBucket!601 (_2!28600 (h!56112 (toList!4095 lt!1661762))) (extractMap!1100 (t!357411 (toList!4095 lt!1661762)))))))

(declare-fun b!4474208 () Bool)

(assert (=> b!4474208 (= e!2786218 (ListMap!3358 Nil!50336))))

(assert (= (and d!1365554 c!761868) b!4474207))

(assert (= (and d!1365554 (not c!761868)) b!4474208))

(declare-fun m!5183975 () Bool)

(assert (=> d!1365554 m!5183975))

(declare-fun m!5183977 () Bool)

(assert (=> d!1365554 m!5183977))

(declare-fun m!5183979 () Bool)

(assert (=> b!4474207 m!5183979))

(assert (=> b!4474207 m!5183979))

(declare-fun m!5183981 () Bool)

(assert (=> b!4474207 m!5183981))

(assert (=> b!4473924 d!1365554))

(declare-fun d!1365556 () Bool)

(declare-fun e!2786221 () Bool)

(assert (=> d!1365556 e!2786221))

(declare-fun res!1856764 () Bool)

(assert (=> d!1365556 (=> (not res!1856764) (not e!2786221))))

(declare-fun lt!1661972 () ListLongMap!2727)

(assert (=> d!1365556 (= res!1856764 (contains!12912 lt!1661972 (_1!28600 lt!1661770)))))

(declare-fun lt!1661971 () List!50461)

(assert (=> d!1365556 (= lt!1661972 (ListLongMap!2728 lt!1661971))))

(declare-fun lt!1661973 () Unit!88321)

(declare-fun lt!1661970 () Unit!88321)

(assert (=> d!1365556 (= lt!1661973 lt!1661970)))

(assert (=> d!1365556 (= (getValueByKey!936 lt!1661971 (_1!28600 lt!1661770)) (Some!10949 (_2!28600 lt!1661770)))))

(declare-fun lemmaContainsTupThenGetReturnValue!596 (List!50461 (_ BitVec 64) List!50460) Unit!88321)

(assert (=> d!1365556 (= lt!1661970 (lemmaContainsTupThenGetReturnValue!596 lt!1661971 (_1!28600 lt!1661770) (_2!28600 lt!1661770)))))

(declare-fun insertStrictlySorted!342 (List!50461 (_ BitVec 64) List!50460) List!50461)

(assert (=> d!1365556 (= lt!1661971 (insertStrictlySorted!342 (toList!4095 lt!1661774) (_1!28600 lt!1661770) (_2!28600 lt!1661770)))))

(assert (=> d!1365556 (= (+!1392 lt!1661774 lt!1661770) lt!1661972)))

(declare-fun b!4474213 () Bool)

(declare-fun res!1856763 () Bool)

(assert (=> b!4474213 (=> (not res!1856763) (not e!2786221))))

(assert (=> b!4474213 (= res!1856763 (= (getValueByKey!936 (toList!4095 lt!1661972) (_1!28600 lt!1661770)) (Some!10949 (_2!28600 lt!1661770))))))

(declare-fun b!4474214 () Bool)

(assert (=> b!4474214 (= e!2786221 (contains!12913 (toList!4095 lt!1661972) lt!1661770))))

(assert (= (and d!1365556 res!1856764) b!4474213))

(assert (= (and b!4474213 res!1856763) b!4474214))

(declare-fun m!5183983 () Bool)

(assert (=> d!1365556 m!5183983))

(declare-fun m!5183985 () Bool)

(assert (=> d!1365556 m!5183985))

(declare-fun m!5183987 () Bool)

(assert (=> d!1365556 m!5183987))

(declare-fun m!5183989 () Bool)

(assert (=> d!1365556 m!5183989))

(declare-fun m!5183991 () Bool)

(assert (=> b!4474213 m!5183991))

(declare-fun m!5183993 () Bool)

(assert (=> b!4474214 m!5183993))

(assert (=> b!4473935 d!1365556))

(declare-fun d!1365558 () Bool)

(assert (=> d!1365558 (= (tail!7541 lm!1477) (ListLongMap!2728 (tail!7540 (toList!4095 lm!1477))))))

(declare-fun bs!797895 () Bool)

(assert (= bs!797895 d!1365558))

(assert (=> bs!797895 m!5183485))

(assert (=> b!4473935 d!1365558))

(declare-fun d!1365560 () Bool)

(declare-fun res!1856769 () Bool)

(declare-fun e!2786226 () Bool)

(assert (=> d!1365560 (=> res!1856769 e!2786226)))

(assert (=> d!1365560 (= res!1856769 (not ((_ is Cons!50336) newBucket!178)))))

(assert (=> d!1365560 (= (noDuplicateKeys!1044 newBucket!178) e!2786226)))

(declare-fun b!4474219 () Bool)

(declare-fun e!2786227 () Bool)

(assert (=> b!4474219 (= e!2786226 e!2786227)))

(declare-fun res!1856770 () Bool)

(assert (=> b!4474219 (=> (not res!1856770) (not e!2786227))))

(assert (=> b!4474219 (= res!1856770 (not (containsKey!1512 (t!357410 newBucket!178) (_1!28599 (h!56111 newBucket!178)))))))

(declare-fun b!4474220 () Bool)

(assert (=> b!4474220 (= e!2786227 (noDuplicateKeys!1044 (t!357410 newBucket!178)))))

(assert (= (and d!1365560 (not res!1856769)) b!4474219))

(assert (= (and b!4474219 res!1856770) b!4474220))

(declare-fun m!5183995 () Bool)

(assert (=> b!4474219 m!5183995))

(declare-fun m!5183997 () Bool)

(assert (=> b!4474220 m!5183997))

(assert (=> b!4473925 d!1365560))

(declare-fun d!1365562 () Bool)

(declare-fun hash!2503 (Hashable!5439 K!11750) (_ BitVec 64))

(assert (=> d!1365562 (= (hash!2497 hashF!1107 key!3287) (hash!2503 hashF!1107 key!3287))))

(declare-fun bs!797896 () Bool)

(assert (= bs!797896 d!1365562))

(declare-fun m!5183999 () Bool)

(assert (=> bs!797896 m!5183999))

(assert (=> b!4473939 d!1365562))

(declare-fun d!1365564 () Bool)

(declare-fun e!2786230 () Bool)

(assert (=> d!1365564 e!2786230))

(declare-fun res!1856771 () Bool)

(assert (=> d!1365564 (=> res!1856771 e!2786230)))

(declare-fun e!2786228 () Bool)

(assert (=> d!1365564 (= res!1856771 e!2786228)))

(declare-fun res!1856773 () Bool)

(assert (=> d!1365564 (=> (not res!1856773) (not e!2786228))))

(declare-fun lt!1661979 () Bool)

(assert (=> d!1365564 (= res!1856773 (not lt!1661979))))

(declare-fun lt!1661980 () Bool)

(assert (=> d!1365564 (= lt!1661979 lt!1661980)))

(declare-fun lt!1661978 () Unit!88321)

(declare-fun e!2786229 () Unit!88321)

(assert (=> d!1365564 (= lt!1661978 e!2786229)))

(declare-fun c!761869 () Bool)

(assert (=> d!1365564 (= c!761869 lt!1661980)))

(assert (=> d!1365564 (= lt!1661980 (containsKey!1515 (toList!4096 (extractMap!1100 lt!1661771)) key!3287))))

(assert (=> d!1365564 (= (contains!12911 (extractMap!1100 lt!1661771) key!3287) lt!1661979)))

(declare-fun b!4474221 () Bool)

(declare-fun e!2786232 () Bool)

(assert (=> b!4474221 (= e!2786230 e!2786232)))

(declare-fun res!1856772 () Bool)

(assert (=> b!4474221 (=> (not res!1856772) (not e!2786232))))

(assert (=> b!4474221 (= res!1856772 (isDefined!8237 (getValueByKey!937 (toList!4096 (extractMap!1100 lt!1661771)) key!3287)))))

(declare-fun b!4474222 () Bool)

(declare-fun e!2786233 () List!50463)

(assert (=> b!4474222 (= e!2786233 (keys!17394 (extractMap!1100 lt!1661771)))))

(declare-fun b!4474223 () Bool)

(declare-fun e!2786231 () Unit!88321)

(assert (=> b!4474223 (= e!2786229 e!2786231)))

(declare-fun c!761870 () Bool)

(declare-fun call!311487 () Bool)

(assert (=> b!4474223 (= c!761870 call!311487)))

(declare-fun b!4474224 () Bool)

(assert (=> b!4474224 (= e!2786228 (not (contains!12915 (keys!17394 (extractMap!1100 lt!1661771)) key!3287)))))

(declare-fun b!4474225 () Bool)

(assert (=> b!4474225 (= e!2786233 (getKeysList!387 (toList!4096 (extractMap!1100 lt!1661771))))))

(declare-fun b!4474226 () Bool)

(declare-fun lt!1661976 () Unit!88321)

(assert (=> b!4474226 (= e!2786229 lt!1661976)))

(declare-fun lt!1661975 () Unit!88321)

(assert (=> b!4474226 (= lt!1661975 (lemmaContainsKeyImpliesGetValueByKeyDefined!840 (toList!4096 (extractMap!1100 lt!1661771)) key!3287))))

(assert (=> b!4474226 (isDefined!8237 (getValueByKey!937 (toList!4096 (extractMap!1100 lt!1661771)) key!3287))))

(declare-fun lt!1661977 () Unit!88321)

(assert (=> b!4474226 (= lt!1661977 lt!1661975)))

(assert (=> b!4474226 (= lt!1661976 (lemmaInListThenGetKeysListContains!383 (toList!4096 (extractMap!1100 lt!1661771)) key!3287))))

(assert (=> b!4474226 call!311487))

(declare-fun bm!311482 () Bool)

(assert (=> bm!311482 (= call!311487 (contains!12915 e!2786233 key!3287))))

(declare-fun c!761871 () Bool)

(assert (=> bm!311482 (= c!761871 c!761869)))

(declare-fun b!4474227 () Bool)

(assert (=> b!4474227 (= e!2786232 (contains!12915 (keys!17394 (extractMap!1100 lt!1661771)) key!3287))))

(declare-fun b!4474228 () Bool)

(assert (=> b!4474228 false))

(declare-fun lt!1661981 () Unit!88321)

(declare-fun lt!1661974 () Unit!88321)

(assert (=> b!4474228 (= lt!1661981 lt!1661974)))

(assert (=> b!4474228 (containsKey!1515 (toList!4096 (extractMap!1100 lt!1661771)) key!3287)))

(assert (=> b!4474228 (= lt!1661974 (lemmaInGetKeysListThenContainsKey!386 (toList!4096 (extractMap!1100 lt!1661771)) key!3287))))

(declare-fun Unit!88338 () Unit!88321)

(assert (=> b!4474228 (= e!2786231 Unit!88338)))

(declare-fun b!4474229 () Bool)

(declare-fun Unit!88339 () Unit!88321)

(assert (=> b!4474229 (= e!2786231 Unit!88339)))

(assert (= (and d!1365564 c!761869) b!4474226))

(assert (= (and d!1365564 (not c!761869)) b!4474223))

(assert (= (and b!4474223 c!761870) b!4474228))

(assert (= (and b!4474223 (not c!761870)) b!4474229))

(assert (= (or b!4474226 b!4474223) bm!311482))

(assert (= (and bm!311482 c!761871) b!4474225))

(assert (= (and bm!311482 (not c!761871)) b!4474222))

(assert (= (and d!1365564 res!1856773) b!4474224))

(assert (= (and d!1365564 (not res!1856771)) b!4474221))

(assert (= (and b!4474221 res!1856772) b!4474227))

(declare-fun m!5184001 () Bool)

(assert (=> b!4474228 m!5184001))

(declare-fun m!5184003 () Bool)

(assert (=> b!4474228 m!5184003))

(declare-fun m!5184005 () Bool)

(assert (=> b!4474226 m!5184005))

(declare-fun m!5184007 () Bool)

(assert (=> b!4474226 m!5184007))

(assert (=> b!4474226 m!5184007))

(declare-fun m!5184009 () Bool)

(assert (=> b!4474226 m!5184009))

(declare-fun m!5184011 () Bool)

(assert (=> b!4474226 m!5184011))

(assert (=> b!4474222 m!5183461))

(declare-fun m!5184013 () Bool)

(assert (=> b!4474222 m!5184013))

(declare-fun m!5184015 () Bool)

(assert (=> b!4474225 m!5184015))

(assert (=> b!4474227 m!5183461))

(assert (=> b!4474227 m!5184013))

(assert (=> b!4474227 m!5184013))

(declare-fun m!5184017 () Bool)

(assert (=> b!4474227 m!5184017))

(assert (=> b!4474221 m!5184007))

(assert (=> b!4474221 m!5184007))

(assert (=> b!4474221 m!5184009))

(assert (=> d!1365564 m!5184001))

(declare-fun m!5184019 () Bool)

(assert (=> bm!311482 m!5184019))

(assert (=> b!4474224 m!5183461))

(assert (=> b!4474224 m!5184013))

(assert (=> b!4474224 m!5184013))

(assert (=> b!4474224 m!5184017))

(assert (=> b!4473929 d!1365564))

(declare-fun d!1365566 () Bool)

(assert (=> d!1365566 (= (eq!537 (extractMap!1100 (Cons!50337 lt!1661770 Nil!50337)) (-!306 (extractMap!1100 (Cons!50337 lt!1661767 Nil!50337)) key!3287)) (= (content!8137 (toList!4096 (extractMap!1100 (Cons!50337 lt!1661770 Nil!50337)))) (content!8137 (toList!4096 (-!306 (extractMap!1100 (Cons!50337 lt!1661767 Nil!50337)) key!3287)))))))

(declare-fun bs!797897 () Bool)

(assert (= bs!797897 d!1365566))

(declare-fun m!5184021 () Bool)

(assert (=> bs!797897 m!5184021))

(declare-fun m!5184023 () Bool)

(assert (=> bs!797897 m!5184023))

(assert (=> b!4473929 d!1365566))

(declare-fun d!1365568 () Bool)

(assert (=> d!1365568 (= (tail!7540 (toList!4095 lt!1661762)) (t!357411 (toList!4095 lt!1661762)))))

(assert (=> b!4473929 d!1365568))

(declare-fun bs!797898 () Bool)

(declare-fun d!1365570 () Bool)

(assert (= bs!797898 (and d!1365570 d!1365548)))

(declare-fun lambda!164109 () Int)

(assert (=> bs!797898 (= lambda!164109 lambda!164104)))

(declare-fun bs!797899 () Bool)

(assert (= bs!797899 (and d!1365570 d!1365546)))

(assert (=> bs!797899 (= lambda!164109 lambda!164103)))

(declare-fun bs!797900 () Bool)

(assert (= bs!797900 (and d!1365570 d!1365554)))

(assert (=> bs!797900 (= lambda!164109 lambda!164108)))

(declare-fun bs!797901 () Bool)

(assert (= bs!797901 (and d!1365570 d!1365466)))

(assert (=> bs!797901 (= lambda!164109 lambda!164083)))

(declare-fun bs!797902 () Bool)

(assert (= bs!797902 (and d!1365570 d!1365450)))

(assert (=> bs!797902 (= lambda!164109 lambda!164075)))

(declare-fun bs!797903 () Bool)

(assert (= bs!797903 (and d!1365570 start!439952)))

(assert (=> bs!797903 (= lambda!164109 lambda!164055)))

(declare-fun bs!797904 () Bool)

(assert (= bs!797904 (and d!1365570 d!1365504)))

(assert (=> bs!797904 (= lambda!164109 lambda!164091)))

(declare-fun bs!797905 () Bool)

(assert (= bs!797905 (and d!1365570 d!1365412)))

(assert (=> bs!797905 (= lambda!164109 lambda!164058)))

(declare-fun bs!797906 () Bool)

(assert (= bs!797906 (and d!1365570 d!1365550)))

(assert (=> bs!797906 (= lambda!164109 lambda!164107)))

(declare-fun bs!797907 () Bool)

(assert (= bs!797907 (and d!1365570 d!1365506)))

(assert (=> bs!797907 (not (= lambda!164109 lambda!164094))))

(declare-fun bs!797908 () Bool)

(assert (= bs!797908 (and d!1365570 d!1365516)))

(assert (=> bs!797908 (= lambda!164109 lambda!164095)))

(declare-fun lt!1661982 () ListMap!3357)

(assert (=> d!1365570 (invariantList!939 (toList!4096 lt!1661982))))

(declare-fun e!2786234 () ListMap!3357)

(assert (=> d!1365570 (= lt!1661982 e!2786234)))

(declare-fun c!761872 () Bool)

(assert (=> d!1365570 (= c!761872 ((_ is Cons!50337) (Cons!50337 lt!1661770 Nil!50337)))))

(assert (=> d!1365570 (forall!10026 (Cons!50337 lt!1661770 Nil!50337) lambda!164109)))

(assert (=> d!1365570 (= (extractMap!1100 (Cons!50337 lt!1661770 Nil!50337)) lt!1661982)))

(declare-fun b!4474230 () Bool)

(assert (=> b!4474230 (= e!2786234 (addToMapMapFromBucket!601 (_2!28600 (h!56112 (Cons!50337 lt!1661770 Nil!50337))) (extractMap!1100 (t!357411 (Cons!50337 lt!1661770 Nil!50337)))))))

(declare-fun b!4474231 () Bool)

(assert (=> b!4474231 (= e!2786234 (ListMap!3358 Nil!50336))))

(assert (= (and d!1365570 c!761872) b!4474230))

(assert (= (and d!1365570 (not c!761872)) b!4474231))

(declare-fun m!5184025 () Bool)

(assert (=> d!1365570 m!5184025))

(declare-fun m!5184027 () Bool)

(assert (=> d!1365570 m!5184027))

(declare-fun m!5184029 () Bool)

(assert (=> b!4474230 m!5184029))

(assert (=> b!4474230 m!5184029))

(declare-fun m!5184031 () Bool)

(assert (=> b!4474230 m!5184031))

(assert (=> b!4473929 d!1365570))

(declare-fun d!1365572 () Bool)

(declare-fun e!2786235 () Bool)

(assert (=> d!1365572 e!2786235))

(declare-fun res!1856775 () Bool)

(assert (=> d!1365572 (=> (not res!1856775) (not e!2786235))))

(declare-fun lt!1661985 () ListLongMap!2727)

(assert (=> d!1365572 (= res!1856775 (contains!12912 lt!1661985 (_1!28600 lt!1661770)))))

(declare-fun lt!1661984 () List!50461)

(assert (=> d!1365572 (= lt!1661985 (ListLongMap!2728 lt!1661984))))

(declare-fun lt!1661986 () Unit!88321)

(declare-fun lt!1661983 () Unit!88321)

(assert (=> d!1365572 (= lt!1661986 lt!1661983)))

(assert (=> d!1365572 (= (getValueByKey!936 lt!1661984 (_1!28600 lt!1661770)) (Some!10949 (_2!28600 lt!1661770)))))

(assert (=> d!1365572 (= lt!1661983 (lemmaContainsTupThenGetReturnValue!596 lt!1661984 (_1!28600 lt!1661770) (_2!28600 lt!1661770)))))

(assert (=> d!1365572 (= lt!1661984 (insertStrictlySorted!342 (toList!4095 lm!1477) (_1!28600 lt!1661770) (_2!28600 lt!1661770)))))

(assert (=> d!1365572 (= (+!1392 lm!1477 lt!1661770) lt!1661985)))

(declare-fun b!4474232 () Bool)

(declare-fun res!1856774 () Bool)

(assert (=> b!4474232 (=> (not res!1856774) (not e!2786235))))

(assert (=> b!4474232 (= res!1856774 (= (getValueByKey!936 (toList!4095 lt!1661985) (_1!28600 lt!1661770)) (Some!10949 (_2!28600 lt!1661770))))))

(declare-fun b!4474233 () Bool)

(assert (=> b!4474233 (= e!2786235 (contains!12913 (toList!4095 lt!1661985) lt!1661770))))

(assert (= (and d!1365572 res!1856775) b!4474232))

(assert (= (and b!4474232 res!1856774) b!4474233))

(declare-fun m!5184033 () Bool)

(assert (=> d!1365572 m!5184033))

(declare-fun m!5184035 () Bool)

(assert (=> d!1365572 m!5184035))

(declare-fun m!5184037 () Bool)

(assert (=> d!1365572 m!5184037))

(declare-fun m!5184039 () Bool)

(assert (=> d!1365572 m!5184039))

(declare-fun m!5184041 () Bool)

(assert (=> b!4474232 m!5184041))

(declare-fun m!5184043 () Bool)

(assert (=> b!4474233 m!5184043))

(assert (=> b!4473929 d!1365572))

(declare-fun bs!797909 () Bool)

(declare-fun d!1365574 () Bool)

(assert (= bs!797909 (and d!1365574 d!1365548)))

(declare-fun lambda!164110 () Int)

(assert (=> bs!797909 (= lambda!164110 lambda!164104)))

(declare-fun bs!797910 () Bool)

(assert (= bs!797910 (and d!1365574 d!1365546)))

(assert (=> bs!797910 (= lambda!164110 lambda!164103)))

(declare-fun bs!797911 () Bool)

(assert (= bs!797911 (and d!1365574 d!1365570)))

(assert (=> bs!797911 (= lambda!164110 lambda!164109)))

(declare-fun bs!797912 () Bool)

(assert (= bs!797912 (and d!1365574 d!1365554)))

(assert (=> bs!797912 (= lambda!164110 lambda!164108)))

(declare-fun bs!797913 () Bool)

(assert (= bs!797913 (and d!1365574 d!1365466)))

(assert (=> bs!797913 (= lambda!164110 lambda!164083)))

(declare-fun bs!797914 () Bool)

(assert (= bs!797914 (and d!1365574 d!1365450)))

(assert (=> bs!797914 (= lambda!164110 lambda!164075)))

(declare-fun bs!797915 () Bool)

(assert (= bs!797915 (and d!1365574 start!439952)))

(assert (=> bs!797915 (= lambda!164110 lambda!164055)))

(declare-fun bs!797916 () Bool)

(assert (= bs!797916 (and d!1365574 d!1365504)))

(assert (=> bs!797916 (= lambda!164110 lambda!164091)))

(declare-fun bs!797917 () Bool)

(assert (= bs!797917 (and d!1365574 d!1365412)))

(assert (=> bs!797917 (= lambda!164110 lambda!164058)))

(declare-fun bs!797918 () Bool)

(assert (= bs!797918 (and d!1365574 d!1365550)))

(assert (=> bs!797918 (= lambda!164110 lambda!164107)))

(declare-fun bs!797919 () Bool)

(assert (= bs!797919 (and d!1365574 d!1365506)))

(assert (=> bs!797919 (not (= lambda!164110 lambda!164094))))

(declare-fun bs!797920 () Bool)

(assert (= bs!797920 (and d!1365574 d!1365516)))

(assert (=> bs!797920 (= lambda!164110 lambda!164095)))

(declare-fun lt!1661987 () ListMap!3357)

(assert (=> d!1365574 (invariantList!939 (toList!4096 lt!1661987))))

(declare-fun e!2786236 () ListMap!3357)

(assert (=> d!1365574 (= lt!1661987 e!2786236)))

(declare-fun c!761873 () Bool)

(assert (=> d!1365574 (= c!761873 ((_ is Cons!50337) (Cons!50337 lt!1661767 Nil!50337)))))

(assert (=> d!1365574 (forall!10026 (Cons!50337 lt!1661767 Nil!50337) lambda!164110)))

(assert (=> d!1365574 (= (extractMap!1100 (Cons!50337 lt!1661767 Nil!50337)) lt!1661987)))

(declare-fun b!4474234 () Bool)

(assert (=> b!4474234 (= e!2786236 (addToMapMapFromBucket!601 (_2!28600 (h!56112 (Cons!50337 lt!1661767 Nil!50337))) (extractMap!1100 (t!357411 (Cons!50337 lt!1661767 Nil!50337)))))))

(declare-fun b!4474235 () Bool)

(assert (=> b!4474235 (= e!2786236 (ListMap!3358 Nil!50336))))

(assert (= (and d!1365574 c!761873) b!4474234))

(assert (= (and d!1365574 (not c!761873)) b!4474235))

(declare-fun m!5184045 () Bool)

(assert (=> d!1365574 m!5184045))

(declare-fun m!5184047 () Bool)

(assert (=> d!1365574 m!5184047))

(declare-fun m!5184049 () Bool)

(assert (=> b!4474234 m!5184049))

(assert (=> b!4474234 m!5184049))

(declare-fun m!5184051 () Bool)

(assert (=> b!4474234 m!5184051))

(assert (=> b!4473929 d!1365574))

(declare-fun d!1365576 () Bool)

(assert (=> d!1365576 (eq!537 (extractMap!1100 (Cons!50337 (tuple2!50613 hash!344 newBucket!178) Nil!50337)) (-!306 (extractMap!1100 (Cons!50337 (tuple2!50613 hash!344 (_2!28600 (h!56112 (toList!4095 lm!1477)))) Nil!50337)) key!3287))))

(declare-fun lt!1661990 () Unit!88321)

(declare-fun choose!28678 ((_ BitVec 64) List!50460 List!50460 K!11750 Hashable!5439) Unit!88321)

(assert (=> d!1365576 (= lt!1661990 (choose!28678 hash!344 (_2!28600 (h!56112 (toList!4095 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1365576 (noDuplicateKeys!1044 (_2!28600 (h!56112 (toList!4095 lm!1477))))))

(assert (=> d!1365576 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!36 hash!344 (_2!28600 (h!56112 (toList!4095 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1661990)))

(declare-fun bs!797921 () Bool)

(assert (= bs!797921 d!1365576))

(declare-fun m!5184053 () Bool)

(assert (=> bs!797921 m!5184053))

(declare-fun m!5184055 () Bool)

(assert (=> bs!797921 m!5184055))

(assert (=> bs!797921 m!5184055))

(declare-fun m!5184057 () Bool)

(assert (=> bs!797921 m!5184057))

(declare-fun m!5184059 () Bool)

(assert (=> bs!797921 m!5184059))

(declare-fun m!5184061 () Bool)

(assert (=> bs!797921 m!5184061))

(assert (=> bs!797921 m!5184061))

(assert (=> bs!797921 m!5184057))

(declare-fun m!5184063 () Bool)

(assert (=> bs!797921 m!5184063))

(assert (=> b!4473929 d!1365576))

(declare-fun d!1365578 () Bool)

(declare-fun e!2786237 () Bool)

(assert (=> d!1365578 e!2786237))

(declare-fun res!1856776 () Bool)

(assert (=> d!1365578 (=> (not res!1856776) (not e!2786237))))

(declare-fun lt!1661991 () ListMap!3357)

(assert (=> d!1365578 (= res!1856776 (not (contains!12911 lt!1661991 key!3287)))))

(assert (=> d!1365578 (= lt!1661991 (ListMap!3358 (removePresrvNoDuplicatedKeys!75 (toList!4096 (extractMap!1100 (Cons!50337 lt!1661767 Nil!50337))) key!3287)))))

(assert (=> d!1365578 (= (-!306 (extractMap!1100 (Cons!50337 lt!1661767 Nil!50337)) key!3287) lt!1661991)))

(declare-fun b!4474236 () Bool)

(assert (=> b!4474236 (= e!2786237 (= ((_ map and) (content!8138 (keys!17394 (extractMap!1100 (Cons!50337 lt!1661767 Nil!50337)))) ((_ map not) (store ((as const (Array K!11750 Bool)) false) key!3287 true))) (content!8138 (keys!17394 lt!1661991))))))

(assert (= (and d!1365578 res!1856776) b!4474236))

(declare-fun m!5184065 () Bool)

(assert (=> d!1365578 m!5184065))

(declare-fun m!5184067 () Bool)

(assert (=> d!1365578 m!5184067))

(declare-fun m!5184069 () Bool)

(assert (=> b!4474236 m!5184069))

(declare-fun m!5184071 () Bool)

(assert (=> b!4474236 m!5184071))

(assert (=> b!4474236 m!5183843))

(declare-fun m!5184073 () Bool)

(assert (=> b!4474236 m!5184073))

(assert (=> b!4474236 m!5184073))

(declare-fun m!5184075 () Bool)

(assert (=> b!4474236 m!5184075))

(assert (=> b!4474236 m!5183453))

(assert (=> b!4474236 m!5184069))

(assert (=> b!4473929 d!1365578))

(declare-fun bs!797922 () Bool)

(declare-fun d!1365580 () Bool)

(assert (= bs!797922 (and d!1365580 d!1365548)))

(declare-fun lambda!164113 () Int)

(assert (=> bs!797922 (= lambda!164113 lambda!164104)))

(declare-fun bs!797923 () Bool)

(assert (= bs!797923 (and d!1365580 d!1365546)))

(assert (=> bs!797923 (= lambda!164113 lambda!164103)))

(declare-fun bs!797924 () Bool)

(assert (= bs!797924 (and d!1365580 d!1365570)))

(assert (=> bs!797924 (= lambda!164113 lambda!164109)))

(declare-fun bs!797925 () Bool)

(assert (= bs!797925 (and d!1365580 d!1365554)))

(assert (=> bs!797925 (= lambda!164113 lambda!164108)))

(declare-fun bs!797926 () Bool)

(assert (= bs!797926 (and d!1365580 d!1365450)))

(assert (=> bs!797926 (= lambda!164113 lambda!164075)))

(declare-fun bs!797927 () Bool)

(assert (= bs!797927 (and d!1365580 start!439952)))

(assert (=> bs!797927 (= lambda!164113 lambda!164055)))

(declare-fun bs!797928 () Bool)

(assert (= bs!797928 (and d!1365580 d!1365504)))

(assert (=> bs!797928 (= lambda!164113 lambda!164091)))

(declare-fun bs!797929 () Bool)

(assert (= bs!797929 (and d!1365580 d!1365412)))

(assert (=> bs!797929 (= lambda!164113 lambda!164058)))

(declare-fun bs!797930 () Bool)

(assert (= bs!797930 (and d!1365580 d!1365550)))

(assert (=> bs!797930 (= lambda!164113 lambda!164107)))

(declare-fun bs!797931 () Bool)

(assert (= bs!797931 (and d!1365580 d!1365466)))

(assert (=> bs!797931 (= lambda!164113 lambda!164083)))

(declare-fun bs!797932 () Bool)

(assert (= bs!797932 (and d!1365580 d!1365574)))

(assert (=> bs!797932 (= lambda!164113 lambda!164110)))

(declare-fun bs!797933 () Bool)

(assert (= bs!797933 (and d!1365580 d!1365506)))

(assert (=> bs!797933 (not (= lambda!164113 lambda!164094))))

(declare-fun bs!797934 () Bool)

(assert (= bs!797934 (and d!1365580 d!1365516)))

(assert (=> bs!797934 (= lambda!164113 lambda!164095)))

(assert (=> d!1365580 (contains!12911 (extractMap!1100 (toList!4095 (ListLongMap!2728 lt!1661771))) key!3287)))

(declare-fun lt!1661994 () Unit!88321)

(declare-fun choose!28679 (ListLongMap!2727 K!11750 Hashable!5439) Unit!88321)

(assert (=> d!1365580 (= lt!1661994 (choose!28679 (ListLongMap!2728 lt!1661771) key!3287 hashF!1107))))

(assert (=> d!1365580 (forall!10026 (toList!4095 (ListLongMap!2728 lt!1661771)) lambda!164113)))

(assert (=> d!1365580 (= (lemmaListContainsThenExtractedMapContains!40 (ListLongMap!2728 lt!1661771) key!3287 hashF!1107) lt!1661994)))

(declare-fun bs!797935 () Bool)

(assert (= bs!797935 d!1365580))

(declare-fun m!5184077 () Bool)

(assert (=> bs!797935 m!5184077))

(assert (=> bs!797935 m!5184077))

(declare-fun m!5184079 () Bool)

(assert (=> bs!797935 m!5184079))

(declare-fun m!5184081 () Bool)

(assert (=> bs!797935 m!5184081))

(declare-fun m!5184083 () Bool)

(assert (=> bs!797935 m!5184083))

(assert (=> b!4473929 d!1365580))

(declare-fun bs!797936 () Bool)

(declare-fun d!1365582 () Bool)

(assert (= bs!797936 (and d!1365582 d!1365548)))

(declare-fun lambda!164114 () Int)

(assert (=> bs!797936 (= lambda!164114 lambda!164104)))

(declare-fun bs!797937 () Bool)

(assert (= bs!797937 (and d!1365582 d!1365546)))

(assert (=> bs!797937 (= lambda!164114 lambda!164103)))

(declare-fun bs!797938 () Bool)

(assert (= bs!797938 (and d!1365582 d!1365570)))

(assert (=> bs!797938 (= lambda!164114 lambda!164109)))

(declare-fun bs!797939 () Bool)

(assert (= bs!797939 (and d!1365582 d!1365554)))

(assert (=> bs!797939 (= lambda!164114 lambda!164108)))

(declare-fun bs!797940 () Bool)

(assert (= bs!797940 (and d!1365582 d!1365580)))

(assert (=> bs!797940 (= lambda!164114 lambda!164113)))

(declare-fun bs!797941 () Bool)

(assert (= bs!797941 (and d!1365582 d!1365450)))

(assert (=> bs!797941 (= lambda!164114 lambda!164075)))

(declare-fun bs!797942 () Bool)

(assert (= bs!797942 (and d!1365582 start!439952)))

(assert (=> bs!797942 (= lambda!164114 lambda!164055)))

(declare-fun bs!797943 () Bool)

(assert (= bs!797943 (and d!1365582 d!1365504)))

(assert (=> bs!797943 (= lambda!164114 lambda!164091)))

(declare-fun bs!797944 () Bool)

(assert (= bs!797944 (and d!1365582 d!1365412)))

(assert (=> bs!797944 (= lambda!164114 lambda!164058)))

(declare-fun bs!797945 () Bool)

(assert (= bs!797945 (and d!1365582 d!1365550)))

(assert (=> bs!797945 (= lambda!164114 lambda!164107)))

(declare-fun bs!797946 () Bool)

(assert (= bs!797946 (and d!1365582 d!1365466)))

(assert (=> bs!797946 (= lambda!164114 lambda!164083)))

(declare-fun bs!797947 () Bool)

(assert (= bs!797947 (and d!1365582 d!1365574)))

(assert (=> bs!797947 (= lambda!164114 lambda!164110)))

(declare-fun bs!797948 () Bool)

(assert (= bs!797948 (and d!1365582 d!1365506)))

(assert (=> bs!797948 (not (= lambda!164114 lambda!164094))))

(declare-fun bs!797949 () Bool)

(assert (= bs!797949 (and d!1365582 d!1365516)))

(assert (=> bs!797949 (= lambda!164114 lambda!164095)))

(declare-fun lt!1661995 () ListMap!3357)

(assert (=> d!1365582 (invariantList!939 (toList!4096 lt!1661995))))

(declare-fun e!2786238 () ListMap!3357)

(assert (=> d!1365582 (= lt!1661995 e!2786238)))

(declare-fun c!761874 () Bool)

(assert (=> d!1365582 (= c!761874 ((_ is Cons!50337) lt!1661771))))

(assert (=> d!1365582 (forall!10026 lt!1661771 lambda!164114)))

(assert (=> d!1365582 (= (extractMap!1100 lt!1661771) lt!1661995)))

(declare-fun b!4474237 () Bool)

(assert (=> b!4474237 (= e!2786238 (addToMapMapFromBucket!601 (_2!28600 (h!56112 lt!1661771)) (extractMap!1100 (t!357411 lt!1661771))))))

(declare-fun b!4474238 () Bool)

(assert (=> b!4474238 (= e!2786238 (ListMap!3358 Nil!50336))))

(assert (= (and d!1365582 c!761874) b!4474237))

(assert (= (and d!1365582 (not c!761874)) b!4474238))

(declare-fun m!5184085 () Bool)

(assert (=> d!1365582 m!5184085))

(declare-fun m!5184087 () Bool)

(assert (=> d!1365582 m!5184087))

(declare-fun m!5184089 () Bool)

(assert (=> b!4474237 m!5184089))

(assert (=> b!4474237 m!5184089))

(declare-fun m!5184091 () Bool)

(assert (=> b!4474237 m!5184091))

(assert (=> b!4473929 d!1365582))

(declare-fun d!1365584 () Bool)

(declare-fun res!1856781 () Bool)

(declare-fun e!2786243 () Bool)

(assert (=> d!1365584 (=> res!1856781 e!2786243)))

(assert (=> d!1365584 (= res!1856781 (and ((_ is Cons!50336) (_2!28600 (h!56112 (toList!4095 lm!1477)))) (= (_1!28599 (h!56111 (_2!28600 (h!56112 (toList!4095 lm!1477))))) key!3287)))))

(assert (=> d!1365584 (= (containsKey!1512 (_2!28600 (h!56112 (toList!4095 lm!1477))) key!3287) e!2786243)))

(declare-fun b!4474243 () Bool)

(declare-fun e!2786244 () Bool)

(assert (=> b!4474243 (= e!2786243 e!2786244)))

(declare-fun res!1856782 () Bool)

(assert (=> b!4474243 (=> (not res!1856782) (not e!2786244))))

(assert (=> b!4474243 (= res!1856782 ((_ is Cons!50336) (_2!28600 (h!56112 (toList!4095 lm!1477)))))))

(declare-fun b!4474244 () Bool)

(assert (=> b!4474244 (= e!2786244 (containsKey!1512 (t!357410 (_2!28600 (h!56112 (toList!4095 lm!1477)))) key!3287))))

(assert (= (and d!1365584 (not res!1856781)) b!4474243))

(assert (= (and b!4474243 res!1856782) b!4474244))

(declare-fun m!5184093 () Bool)

(assert (=> b!4474244 m!5184093))

(assert (=> b!4473927 d!1365584))

(declare-fun d!1365586 () Bool)

(declare-fun e!2786247 () Bool)

(assert (=> d!1365586 e!2786247))

(declare-fun res!1856783 () Bool)

(assert (=> d!1365586 (=> res!1856783 e!2786247)))

(declare-fun e!2786245 () Bool)

(assert (=> d!1365586 (= res!1856783 e!2786245)))

(declare-fun res!1856785 () Bool)

(assert (=> d!1365586 (=> (not res!1856785) (not e!2786245))))

(declare-fun lt!1662001 () Bool)

(assert (=> d!1365586 (= res!1856785 (not lt!1662001))))

(declare-fun lt!1662002 () Bool)

(assert (=> d!1365586 (= lt!1662001 lt!1662002)))

(declare-fun lt!1662000 () Unit!88321)

(declare-fun e!2786246 () Unit!88321)

(assert (=> d!1365586 (= lt!1662000 e!2786246)))

(declare-fun c!761875 () Bool)

(assert (=> d!1365586 (= c!761875 lt!1662002)))

(assert (=> d!1365586 (= lt!1662002 (containsKey!1515 (toList!4096 (extractMap!1100 (toList!4095 lm!1477))) key!3287))))

(assert (=> d!1365586 (= (contains!12911 (extractMap!1100 (toList!4095 lm!1477)) key!3287) lt!1662001)))

(declare-fun b!4474245 () Bool)

(declare-fun e!2786249 () Bool)

(assert (=> b!4474245 (= e!2786247 e!2786249)))

(declare-fun res!1856784 () Bool)

(assert (=> b!4474245 (=> (not res!1856784) (not e!2786249))))

(assert (=> b!4474245 (= res!1856784 (isDefined!8237 (getValueByKey!937 (toList!4096 (extractMap!1100 (toList!4095 lm!1477))) key!3287)))))

(declare-fun b!4474246 () Bool)

(declare-fun e!2786250 () List!50463)

(assert (=> b!4474246 (= e!2786250 (keys!17394 (extractMap!1100 (toList!4095 lm!1477))))))

(declare-fun b!4474247 () Bool)

(declare-fun e!2786248 () Unit!88321)

(assert (=> b!4474247 (= e!2786246 e!2786248)))

(declare-fun c!761876 () Bool)

(declare-fun call!311488 () Bool)

(assert (=> b!4474247 (= c!761876 call!311488)))

(declare-fun b!4474248 () Bool)

(assert (=> b!4474248 (= e!2786245 (not (contains!12915 (keys!17394 (extractMap!1100 (toList!4095 lm!1477))) key!3287)))))

(declare-fun b!4474249 () Bool)

(assert (=> b!4474249 (= e!2786250 (getKeysList!387 (toList!4096 (extractMap!1100 (toList!4095 lm!1477)))))))

(declare-fun b!4474250 () Bool)

(declare-fun lt!1661998 () Unit!88321)

(assert (=> b!4474250 (= e!2786246 lt!1661998)))

(declare-fun lt!1661997 () Unit!88321)

(assert (=> b!4474250 (= lt!1661997 (lemmaContainsKeyImpliesGetValueByKeyDefined!840 (toList!4096 (extractMap!1100 (toList!4095 lm!1477))) key!3287))))

(assert (=> b!4474250 (isDefined!8237 (getValueByKey!937 (toList!4096 (extractMap!1100 (toList!4095 lm!1477))) key!3287))))

(declare-fun lt!1661999 () Unit!88321)

(assert (=> b!4474250 (= lt!1661999 lt!1661997)))

(assert (=> b!4474250 (= lt!1661998 (lemmaInListThenGetKeysListContains!383 (toList!4096 (extractMap!1100 (toList!4095 lm!1477))) key!3287))))

(assert (=> b!4474250 call!311488))

(declare-fun bm!311483 () Bool)

(assert (=> bm!311483 (= call!311488 (contains!12915 e!2786250 key!3287))))

(declare-fun c!761877 () Bool)

(assert (=> bm!311483 (= c!761877 c!761875)))

(declare-fun b!4474251 () Bool)

(assert (=> b!4474251 (= e!2786249 (contains!12915 (keys!17394 (extractMap!1100 (toList!4095 lm!1477))) key!3287))))

(declare-fun b!4474252 () Bool)

(assert (=> b!4474252 false))

(declare-fun lt!1662003 () Unit!88321)

(declare-fun lt!1661996 () Unit!88321)

(assert (=> b!4474252 (= lt!1662003 lt!1661996)))

(assert (=> b!4474252 (containsKey!1515 (toList!4096 (extractMap!1100 (toList!4095 lm!1477))) key!3287)))

(assert (=> b!4474252 (= lt!1661996 (lemmaInGetKeysListThenContainsKey!386 (toList!4096 (extractMap!1100 (toList!4095 lm!1477))) key!3287))))

(declare-fun Unit!88341 () Unit!88321)

(assert (=> b!4474252 (= e!2786248 Unit!88341)))

(declare-fun b!4474253 () Bool)

(declare-fun Unit!88342 () Unit!88321)

(assert (=> b!4474253 (= e!2786248 Unit!88342)))

(assert (= (and d!1365586 c!761875) b!4474250))

(assert (= (and d!1365586 (not c!761875)) b!4474247))

(assert (= (and b!4474247 c!761876) b!4474252))

(assert (= (and b!4474247 (not c!761876)) b!4474253))

(assert (= (or b!4474250 b!4474247) bm!311483))

(assert (= (and bm!311483 c!761877) b!4474249))

(assert (= (and bm!311483 (not c!761877)) b!4474246))

(assert (= (and d!1365586 res!1856785) b!4474248))

(assert (= (and d!1365586 (not res!1856783)) b!4474245))

(assert (= (and b!4474245 res!1856784) b!4474251))

(declare-fun m!5184095 () Bool)

(assert (=> b!4474252 m!5184095))

(declare-fun m!5184097 () Bool)

(assert (=> b!4474252 m!5184097))

(declare-fun m!5184099 () Bool)

(assert (=> b!4474250 m!5184099))

(declare-fun m!5184101 () Bool)

(assert (=> b!4474250 m!5184101))

(assert (=> b!4474250 m!5184101))

(declare-fun m!5184103 () Bool)

(assert (=> b!4474250 m!5184103))

(declare-fun m!5184105 () Bool)

(assert (=> b!4474250 m!5184105))

(assert (=> b!4474246 m!5183513))

(declare-fun m!5184107 () Bool)

(assert (=> b!4474246 m!5184107))

(declare-fun m!5184109 () Bool)

(assert (=> b!4474249 m!5184109))

(assert (=> b!4474251 m!5183513))

(assert (=> b!4474251 m!5184107))

(assert (=> b!4474251 m!5184107))

(declare-fun m!5184111 () Bool)

(assert (=> b!4474251 m!5184111))

(assert (=> b!4474245 m!5184101))

(assert (=> b!4474245 m!5184101))

(assert (=> b!4474245 m!5184103))

(assert (=> d!1365586 m!5184095))

(declare-fun m!5184113 () Bool)

(assert (=> bm!311483 m!5184113))

(assert (=> b!4474248 m!5183513))

(assert (=> b!4474248 m!5184107))

(assert (=> b!4474248 m!5184107))

(assert (=> b!4474248 m!5184111))

(assert (=> b!4473938 d!1365586))

(declare-fun bs!797950 () Bool)

(declare-fun d!1365588 () Bool)

(assert (= bs!797950 (and d!1365588 d!1365582)))

(declare-fun lambda!164115 () Int)

(assert (=> bs!797950 (= lambda!164115 lambda!164114)))

(declare-fun bs!797951 () Bool)

(assert (= bs!797951 (and d!1365588 d!1365548)))

(assert (=> bs!797951 (= lambda!164115 lambda!164104)))

(declare-fun bs!797952 () Bool)

(assert (= bs!797952 (and d!1365588 d!1365546)))

(assert (=> bs!797952 (= lambda!164115 lambda!164103)))

(declare-fun bs!797953 () Bool)

(assert (= bs!797953 (and d!1365588 d!1365570)))

(assert (=> bs!797953 (= lambda!164115 lambda!164109)))

(declare-fun bs!797954 () Bool)

(assert (= bs!797954 (and d!1365588 d!1365554)))

(assert (=> bs!797954 (= lambda!164115 lambda!164108)))

(declare-fun bs!797955 () Bool)

(assert (= bs!797955 (and d!1365588 d!1365580)))

(assert (=> bs!797955 (= lambda!164115 lambda!164113)))

(declare-fun bs!797956 () Bool)

(assert (= bs!797956 (and d!1365588 d!1365450)))

(assert (=> bs!797956 (= lambda!164115 lambda!164075)))

(declare-fun bs!797957 () Bool)

(assert (= bs!797957 (and d!1365588 start!439952)))

(assert (=> bs!797957 (= lambda!164115 lambda!164055)))

(declare-fun bs!797958 () Bool)

(assert (= bs!797958 (and d!1365588 d!1365504)))

(assert (=> bs!797958 (= lambda!164115 lambda!164091)))

(declare-fun bs!797959 () Bool)

(assert (= bs!797959 (and d!1365588 d!1365412)))

(assert (=> bs!797959 (= lambda!164115 lambda!164058)))

(declare-fun bs!797960 () Bool)

(assert (= bs!797960 (and d!1365588 d!1365550)))

(assert (=> bs!797960 (= lambda!164115 lambda!164107)))

(declare-fun bs!797961 () Bool)

(assert (= bs!797961 (and d!1365588 d!1365466)))

(assert (=> bs!797961 (= lambda!164115 lambda!164083)))

(declare-fun bs!797962 () Bool)

(assert (= bs!797962 (and d!1365588 d!1365574)))

(assert (=> bs!797962 (= lambda!164115 lambda!164110)))

(declare-fun bs!797963 () Bool)

(assert (= bs!797963 (and d!1365588 d!1365506)))

(assert (=> bs!797963 (not (= lambda!164115 lambda!164094))))

(declare-fun bs!797964 () Bool)

(assert (= bs!797964 (and d!1365588 d!1365516)))

(assert (=> bs!797964 (= lambda!164115 lambda!164095)))

(declare-fun lt!1662004 () ListMap!3357)

(assert (=> d!1365588 (invariantList!939 (toList!4096 lt!1662004))))

(declare-fun e!2786251 () ListMap!3357)

(assert (=> d!1365588 (= lt!1662004 e!2786251)))

(declare-fun c!761878 () Bool)

(assert (=> d!1365588 (= c!761878 ((_ is Cons!50337) (toList!4095 lm!1477)))))

(assert (=> d!1365588 (forall!10026 (toList!4095 lm!1477) lambda!164115)))

(assert (=> d!1365588 (= (extractMap!1100 (toList!4095 lm!1477)) lt!1662004)))

(declare-fun b!4474254 () Bool)

(assert (=> b!4474254 (= e!2786251 (addToMapMapFromBucket!601 (_2!28600 (h!56112 (toList!4095 lm!1477))) (extractMap!1100 (t!357411 (toList!4095 lm!1477)))))))

(declare-fun b!4474255 () Bool)

(assert (=> b!4474255 (= e!2786251 (ListMap!3358 Nil!50336))))

(assert (= (and d!1365588 c!761878) b!4474254))

(assert (= (and d!1365588 (not c!761878)) b!4474255))

(declare-fun m!5184115 () Bool)

(assert (=> d!1365588 m!5184115))

(declare-fun m!5184117 () Bool)

(assert (=> d!1365588 m!5184117))

(assert (=> b!4474254 m!5183487))

(assert (=> b!4474254 m!5183487))

(declare-fun m!5184119 () Bool)

(assert (=> b!4474254 m!5184119))

(assert (=> b!4473938 d!1365588))

(declare-fun e!2786254 () Bool)

(declare-fun tp!1336489 () Bool)

(declare-fun b!4474260 () Bool)

(assert (=> b!4474260 (= e!2786254 (and tp_is_empty!27453 tp_is_empty!27455 tp!1336489))))

(assert (=> b!4473931 (= tp!1336476 e!2786254)))

(assert (= (and b!4473931 ((_ is Cons!50336) (t!357410 newBucket!178))) b!4474260))

(declare-fun b!4474265 () Bool)

(declare-fun e!2786257 () Bool)

(declare-fun tp!1336494 () Bool)

(declare-fun tp!1336495 () Bool)

(assert (=> b!4474265 (= e!2786257 (and tp!1336494 tp!1336495))))

(assert (=> b!4473942 (= tp!1336477 e!2786257)))

(assert (= (and b!4473942 ((_ is Cons!50337) (toList!4095 lm!1477))) b!4474265))

(declare-fun b_lambda!148759 () Bool)

(assert (= b_lambda!148749 (or start!439952 b_lambda!148759)))

(declare-fun bs!797965 () Bool)

(declare-fun d!1365590 () Bool)

(assert (= bs!797965 (and d!1365590 start!439952)))

(assert (=> bs!797965 (= (dynLambda!21029 lambda!164055 lt!1661766) (noDuplicateKeys!1044 (_2!28600 lt!1661766)))))

(declare-fun m!5184121 () Bool)

(assert (=> bs!797965 m!5184121))

(assert (=> d!1365522 d!1365590))

(declare-fun b_lambda!148761 () Bool)

(assert (= b_lambda!148757 (or start!439952 b_lambda!148761)))

(declare-fun bs!797966 () Bool)

(declare-fun d!1365592 () Bool)

(assert (= bs!797966 (and d!1365592 start!439952)))

(assert (=> bs!797966 (= (dynLambda!21029 lambda!164055 (h!56112 (t!357411 (toList!4095 lm!1477)))) (noDuplicateKeys!1044 (_2!28600 (h!56112 (t!357411 (toList!4095 lm!1477))))))))

(declare-fun m!5184123 () Bool)

(assert (=> bs!797966 m!5184123))

(assert (=> b!4474205 d!1365592))

(declare-fun b_lambda!148763 () Bool)

(assert (= b_lambda!148741 (or start!439952 b_lambda!148763)))

(declare-fun bs!797967 () Bool)

(declare-fun d!1365594 () Bool)

(assert (= bs!797967 (and d!1365594 start!439952)))

(assert (=> bs!797967 (= (dynLambda!21029 lambda!164055 (h!56112 (toList!4095 lm!1477))) (noDuplicateKeys!1044 (_2!28600 (h!56112 (toList!4095 lm!1477)))))))

(assert (=> bs!797967 m!5184059))

(assert (=> b!4473976 d!1365594))

(check-sat (not d!1365522) (not bm!311479) (not b!4473952) (not b!4473961) (not bm!311482) (not b!4474233) (not b!4474248) (not d!1365566) (not b!4474206) (not b!4474109) (not b!4474161) (not b_lambda!148759) (not d!1365586) (not d!1365548) (not b!4474244) (not b!4474213) (not bm!311483) (not d!1365450) (not b!4474040) (not d!1365488) (not b!4474254) tp_is_empty!27455 (not d!1365588) (not d!1365558) (not b!4474252) (not b!4474036) (not d!1365576) (not b!4474230) (not bs!797967) (not d!1365532) (not b!4474079) (not b!4474227) (not b!4474251) (not b!4474237) (not d!1365466) (not b!4474224) (not d!1365582) (not b!4474246) (not d!1365562) (not d!1365426) (not b!4473954) (not d!1365554) (not d!1365556) (not b!4474222) (not b!4474142) (not b_lambda!148761) (not d!1365482) (not d!1365414) (not b!4474220) (not b!4474236) (not b!4473977) (not b!4474219) (not b!4474228) (not d!1365574) (not b!4474225) (not d!1365534) (not b!4473963) (not b!4474234) (not bs!797966) (not b!4474265) (not b!4474193) (not b!4474108) (not b!4474035) (not b!4474201) (not b!4474226) (not b!4474041) (not d!1365570) (not b!4474203) (not b!4474214) (not b!4474245) (not d!1365520) (not b!4474180) (not d!1365546) (not b!4474260) (not b!4474221) (not b!4474194) (not d!1365506) (not d!1365550) (not d!1365544) (not b!4474250) (not d!1365510) (not bs!797965) (not d!1365580) (not b!4474042) (not d!1365516) (not b_lambda!148763) (not d!1365542) (not b!4474038) (not d!1365412) (not d!1365564) (not b!4474207) (not b!4474249) (not d!1365578) (not b!4474039) tp_is_empty!27453 (not d!1365428) (not b!4474196) (not d!1365572) (not d!1365504) (not b!4474232))
(check-sat)
