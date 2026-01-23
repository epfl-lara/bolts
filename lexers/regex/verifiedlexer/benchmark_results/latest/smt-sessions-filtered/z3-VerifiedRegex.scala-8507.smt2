; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!443472 () Bool)

(assert start!443472)

(declare-fun b!4495516 () Bool)

(declare-datatypes ((Unit!91352 0))(
  ( (Unit!91353) )
))
(declare-fun e!2800245 () Unit!91352)

(declare-fun Unit!91354 () Unit!91352)

(assert (=> b!4495516 (= e!2800245 Unit!91354)))

(declare-datatypes ((K!11940 0))(
  ( (K!11941 (val!17823 Int)) )
))
(declare-datatypes ((V!12186 0))(
  ( (V!12187 (val!17824 Int)) )
))
(declare-datatypes ((tuple2!50914 0))(
  ( (tuple2!50915 (_1!28751 K!11940) (_2!28751 V!12186)) )
))
(declare-datatypes ((List!50652 0))(
  ( (Nil!50528) (Cons!50528 (h!56343 tuple2!50914) (t!357610 List!50652)) )
))
(declare-datatypes ((tuple2!50916 0))(
  ( (tuple2!50917 (_1!28752 (_ BitVec 64)) (_2!28752 List!50652)) )
))
(declare-datatypes ((List!50653 0))(
  ( (Nil!50529) (Cons!50529 (h!56344 tuple2!50916) (t!357611 List!50653)) )
))
(declare-datatypes ((ListLongMap!2879 0))(
  ( (ListLongMap!2880 (toList!4247 List!50653)) )
))
(declare-fun lm!1477 () ListLongMap!2879)

(declare-fun key!3287 () K!11940)

(declare-fun lt!1677919 () Unit!91352)

(declare-datatypes ((Hashable!5515 0))(
  ( (HashableExt!5514 (__x!31218 Int)) )
))
(declare-fun hashF!1107 () Hashable!5515)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!108 (ListLongMap!2879 K!11940 Hashable!5515) Unit!91352)

(assert (=> b!4495516 (= lt!1677919 (lemmaNotInItsHashBucketThenNotInMap!108 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4495516 false))

(declare-fun tp_is_empty!27759 () Bool)

(declare-fun e!2800240 () Bool)

(declare-fun tp!1337393 () Bool)

(declare-fun tp_is_empty!27757 () Bool)

(declare-fun b!4495517 () Bool)

(assert (=> b!4495517 (= e!2800240 (and tp_is_empty!27757 tp_is_empty!27759 tp!1337393))))

(declare-fun b!4495518 () Bool)

(declare-fun res!1868586 () Bool)

(declare-fun e!2800235 () Bool)

(assert (=> b!4495518 (=> res!1868586 e!2800235)))

(declare-fun lt!1677910 () tuple2!50916)

(declare-fun contains!13189 (List!50653 tuple2!50916) Bool)

(assert (=> b!4495518 (= res!1868586 (not (contains!13189 (t!357611 (toList!4247 lm!1477)) lt!1677910)))))

(declare-fun b!4495519 () Bool)

(declare-fun res!1868585 () Bool)

(declare-fun e!2800239 () Bool)

(assert (=> b!4495519 (=> res!1868585 e!2800239)))

(declare-fun newBucket!178 () List!50652)

(declare-fun noDuplicateKeys!1120 (List!50652) Bool)

(assert (=> b!4495519 (= res!1868585 (not (noDuplicateKeys!1120 newBucket!178)))))

(declare-fun b!4495520 () Bool)

(declare-fun res!1868588 () Bool)

(assert (=> b!4495520 (=> res!1868588 e!2800239)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4495520 (= res!1868588 (or ((_ is Nil!50529) (toList!4247 lm!1477)) (= (_1!28752 (h!56344 (toList!4247 lm!1477))) hash!344)))))

(declare-fun b!4495521 () Bool)

(declare-fun e!2800237 () Bool)

(declare-fun e!2800243 () Bool)

(assert (=> b!4495521 (= e!2800237 e!2800243)))

(declare-fun res!1868575 () Bool)

(assert (=> b!4495521 (=> (not res!1868575) (not e!2800243))))

(declare-fun lt!1677911 () (_ BitVec 64))

(assert (=> b!4495521 (= res!1868575 (= lt!1677911 hash!344))))

(declare-fun hash!2667 (Hashable!5515 K!11940) (_ BitVec 64))

(assert (=> b!4495521 (= lt!1677911 (hash!2667 hashF!1107 key!3287))))

(declare-fun b!4495523 () Bool)

(declare-fun res!1868578 () Bool)

(assert (=> b!4495523 (=> res!1868578 e!2800235)))

(declare-fun lt!1677907 () ListLongMap!2879)

(declare-fun lt!1677908 () List!50652)

(declare-fun apply!11857 (ListLongMap!2879 (_ BitVec 64)) List!50652)

(assert (=> b!4495523 (= res!1868578 (not (= (apply!11857 lt!1677907 hash!344) lt!1677908)))))

(declare-fun b!4495524 () Bool)

(assert (=> b!4495524 (= e!2800239 e!2800235)))

(declare-fun res!1868582 () Bool)

(assert (=> b!4495524 (=> res!1868582 e!2800235)))

(declare-fun contains!13190 (ListLongMap!2879 (_ BitVec 64)) Bool)

(assert (=> b!4495524 (= res!1868582 (not (contains!13190 lt!1677907 hash!344)))))

(declare-fun tail!7656 (ListLongMap!2879) ListLongMap!2879)

(assert (=> b!4495524 (= lt!1677907 (tail!7656 lm!1477))))

(declare-fun b!4495525 () Bool)

(declare-fun e!2800241 () Bool)

(declare-fun e!2800238 () Bool)

(assert (=> b!4495525 (= e!2800241 e!2800238)))

(declare-fun res!1868587 () Bool)

(assert (=> b!4495525 (=> res!1868587 e!2800238)))

(declare-datatypes ((ListMap!3509 0))(
  ( (ListMap!3510 (toList!4248 List!50652)) )
))
(declare-fun contains!13191 (ListMap!3509 K!11940) Bool)

(declare-fun extractMap!1176 (List!50653) ListMap!3509)

(assert (=> b!4495525 (= res!1868587 (not (contains!13191 (extractMap!1176 (t!357611 (toList!4247 lm!1477))) key!3287)))))

(declare-fun lt!1677918 () ListMap!3509)

(assert (=> b!4495525 (contains!13191 lt!1677918 key!3287)))

(assert (=> b!4495525 (= lt!1677918 (extractMap!1176 (toList!4247 lt!1677907)))))

(declare-fun lt!1677920 () Unit!91352)

(declare-fun lemmaListContainsThenExtractedMapContains!90 (ListLongMap!2879 K!11940 Hashable!5515) Unit!91352)

(assert (=> b!4495525 (= lt!1677920 (lemmaListContainsThenExtractedMapContains!90 lt!1677907 key!3287 hashF!1107))))

(declare-fun b!4495526 () Bool)

(declare-fun res!1868579 () Bool)

(declare-fun e!2800234 () Bool)

(assert (=> b!4495526 (=> res!1868579 e!2800234)))

(declare-fun lt!1677922 () tuple2!50916)

(assert (=> b!4495526 (= res!1868579 (bvsge (_1!28752 lt!1677922) hash!344))))

(declare-fun b!4495527 () Bool)

(assert (=> b!4495527 (= e!2800238 e!2800234)))

(declare-fun res!1868576 () Bool)

(assert (=> b!4495527 (=> res!1868576 e!2800234)))

(declare-fun lt!1677917 () ListMap!3509)

(declare-fun lt!1677916 () ListMap!3509)

(declare-fun eq!577 (ListMap!3509 ListMap!3509) Bool)

(assert (=> b!4495527 (= res!1868576 (not (eq!577 lt!1677917 lt!1677916)))))

(declare-fun +!1462 (ListLongMap!2879 tuple2!50916) ListLongMap!2879)

(assert (=> b!4495527 (= lt!1677917 (extractMap!1176 (toList!4247 (+!1462 lt!1677907 lt!1677922))))))

(declare-fun head!9334 (ListLongMap!2879) tuple2!50916)

(assert (=> b!4495527 (= lt!1677922 (head!9334 lm!1477))))

(declare-fun -!346 (ListMap!3509 K!11940) ListMap!3509)

(assert (=> b!4495527 (eq!577 (extractMap!1176 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))) (-!346 lt!1677918 key!3287))))

(declare-fun lt!1677913 () Unit!91352)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!105 (ListLongMap!2879 (_ BitVec 64) List!50652 K!11940 Hashable!5515) Unit!91352)

(assert (=> b!4495527 (= lt!1677913 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!105 lt!1677907 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4495528 () Bool)

(declare-fun res!1868581 () Bool)

(declare-fun e!2800236 () Bool)

(assert (=> b!4495528 (=> (not res!1868581) (not e!2800236))))

(declare-fun allKeysSameHashInMap!1227 (ListLongMap!2879 Hashable!5515) Bool)

(assert (=> b!4495528 (= res!1868581 (allKeysSameHashInMap!1227 lm!1477 hashF!1107))))

(declare-fun b!4495529 () Bool)

(declare-fun Unit!91355 () Unit!91352)

(assert (=> b!4495529 (= e!2800245 Unit!91355)))

(declare-fun b!4495530 () Bool)

(assert (=> b!4495530 (= e!2800236 e!2800237)))

(declare-fun res!1868584 () Bool)

(assert (=> b!4495530 (=> (not res!1868584) (not e!2800237))))

(assert (=> b!4495530 (= res!1868584 (contains!13191 lt!1677916 key!3287))))

(assert (=> b!4495530 (= lt!1677916 (extractMap!1176 (toList!4247 lm!1477)))))

(declare-fun b!4495531 () Bool)

(declare-fun isEmpty!28579 (ListLongMap!2879) Bool)

(assert (=> b!4495531 (= e!2800234 (not (isEmpty!28579 lm!1477)))))

(declare-fun res!1868577 () Bool)

(assert (=> start!443472 (=> (not res!1868577) (not e!2800236))))

(declare-fun lambda!168015 () Int)

(declare-fun forall!10161 (List!50653 Int) Bool)

(assert (=> start!443472 (= res!1868577 (forall!10161 (toList!4247 lm!1477) lambda!168015))))

(assert (=> start!443472 e!2800236))

(assert (=> start!443472 true))

(declare-fun e!2800244 () Bool)

(declare-fun inv!66124 (ListLongMap!2879) Bool)

(assert (=> start!443472 (and (inv!66124 lm!1477) e!2800244)))

(assert (=> start!443472 tp_is_empty!27757))

(assert (=> start!443472 e!2800240))

(declare-fun b!4495522 () Bool)

(declare-fun res!1868573 () Bool)

(assert (=> b!4495522 (=> res!1868573 e!2800234)))

(assert (=> b!4495522 (= res!1868573 (not (eq!577 lt!1677916 lt!1677917)))))

(declare-fun b!4495532 () Bool)

(declare-fun e!2800242 () Bool)

(assert (=> b!4495532 (= e!2800242 e!2800241)))

(declare-fun res!1868580 () Bool)

(assert (=> b!4495532 (=> res!1868580 e!2800241)))

(declare-fun containsKeyBiggerList!100 (List!50653 K!11940) Bool)

(assert (=> b!4495532 (= res!1868580 (not (containsKeyBiggerList!100 (t!357611 (toList!4247 lm!1477)) key!3287)))))

(assert (=> b!4495532 (containsKeyBiggerList!100 (toList!4247 lt!1677907) key!3287)))

(declare-fun lt!1677906 () Unit!91352)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!36 (ListLongMap!2879 K!11940 Hashable!5515) Unit!91352)

(assert (=> b!4495532 (= lt!1677906 (lemmaInLongMapThenContainsKeyBiggerList!36 lt!1677907 key!3287 hashF!1107))))

(declare-fun b!4495533 () Bool)

(declare-fun tp!1337392 () Bool)

(assert (=> b!4495533 (= e!2800244 tp!1337392)))

(declare-fun b!4495534 () Bool)

(assert (=> b!4495534 (= e!2800235 e!2800242)))

(declare-fun res!1868583 () Bool)

(assert (=> b!4495534 (=> res!1868583 e!2800242)))

(declare-fun lt!1677912 () Bool)

(assert (=> b!4495534 (= res!1868583 lt!1677912)))

(declare-fun lt!1677921 () Unit!91352)

(assert (=> b!4495534 (= lt!1677921 e!2800245)))

(declare-fun c!765971 () Bool)

(assert (=> b!4495534 (= c!765971 lt!1677912)))

(declare-fun containsKey!1664 (List!50652 K!11940) Bool)

(assert (=> b!4495534 (= lt!1677912 (not (containsKey!1664 lt!1677908 key!3287)))))

(declare-fun b!4495535 () Bool)

(assert (=> b!4495535 (= e!2800243 (not e!2800239))))

(declare-fun res!1868572 () Bool)

(assert (=> b!4495535 (=> res!1868572 e!2800239)))

(declare-fun removePairForKey!747 (List!50652 K!11940) List!50652)

(assert (=> b!4495535 (= res!1868572 (not (= newBucket!178 (removePairForKey!747 lt!1677908 key!3287))))))

(declare-fun lt!1677915 () Unit!91352)

(declare-fun forallContained!2415 (List!50653 Int tuple2!50916) Unit!91352)

(assert (=> b!4495535 (= lt!1677915 (forallContained!2415 (toList!4247 lm!1477) lambda!168015 lt!1677910))))

(assert (=> b!4495535 (contains!13189 (toList!4247 lm!1477) lt!1677910)))

(assert (=> b!4495535 (= lt!1677910 (tuple2!50917 hash!344 lt!1677908))))

(declare-fun lt!1677909 () Unit!91352)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!632 (List!50653 (_ BitVec 64) List!50652) Unit!91352)

(assert (=> b!4495535 (= lt!1677909 (lemmaGetValueByKeyImpliesContainsTuple!632 (toList!4247 lm!1477) hash!344 lt!1677908))))

(assert (=> b!4495535 (= lt!1677908 (apply!11857 lm!1477 hash!344))))

(assert (=> b!4495535 (contains!13190 lm!1477 lt!1677911)))

(declare-fun lt!1677914 () Unit!91352)

(declare-fun lemmaInGenMapThenLongMapContainsHash!194 (ListLongMap!2879 K!11940 Hashable!5515) Unit!91352)

(assert (=> b!4495535 (= lt!1677914 (lemmaInGenMapThenLongMapContainsHash!194 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4495536 () Bool)

(declare-fun res!1868574 () Bool)

(assert (=> b!4495536 (=> (not res!1868574) (not e!2800243))))

(declare-fun allKeysSameHash!974 (List!50652 (_ BitVec 64) Hashable!5515) Bool)

(assert (=> b!4495536 (= res!1868574 (allKeysSameHash!974 newBucket!178 hash!344 hashF!1107))))

(assert (= (and start!443472 res!1868577) b!4495528))

(assert (= (and b!4495528 res!1868581) b!4495530))

(assert (= (and b!4495530 res!1868584) b!4495521))

(assert (= (and b!4495521 res!1868575) b!4495536))

(assert (= (and b!4495536 res!1868574) b!4495535))

(assert (= (and b!4495535 (not res!1868572)) b!4495519))

(assert (= (and b!4495519 (not res!1868585)) b!4495520))

(assert (= (and b!4495520 (not res!1868588)) b!4495524))

(assert (= (and b!4495524 (not res!1868582)) b!4495523))

(assert (= (and b!4495523 (not res!1868578)) b!4495518))

(assert (= (and b!4495518 (not res!1868586)) b!4495534))

(assert (= (and b!4495534 c!765971) b!4495516))

(assert (= (and b!4495534 (not c!765971)) b!4495529))

(assert (= (and b!4495534 (not res!1868583)) b!4495532))

(assert (= (and b!4495532 (not res!1868580)) b!4495525))

(assert (= (and b!4495525 (not res!1868587)) b!4495527))

(assert (= (and b!4495527 (not res!1868576)) b!4495522))

(assert (= (and b!4495522 (not res!1868573)) b!4495526))

(assert (= (and b!4495526 (not res!1868579)) b!4495531))

(assert (= start!443472 b!4495533))

(assert (= (and start!443472 ((_ is Cons!50528) newBucket!178)) b!4495517))

(declare-fun m!5222885 () Bool)

(assert (=> b!4495518 m!5222885))

(declare-fun m!5222887 () Bool)

(assert (=> b!4495536 m!5222887))

(declare-fun m!5222889 () Bool)

(assert (=> b!4495523 m!5222889))

(declare-fun m!5222891 () Bool)

(assert (=> b!4495531 m!5222891))

(declare-fun m!5222893 () Bool)

(assert (=> b!4495524 m!5222893))

(declare-fun m!5222895 () Bool)

(assert (=> b!4495524 m!5222895))

(declare-fun m!5222897 () Bool)

(assert (=> b!4495532 m!5222897))

(declare-fun m!5222899 () Bool)

(assert (=> b!4495532 m!5222899))

(declare-fun m!5222901 () Bool)

(assert (=> b!4495532 m!5222901))

(declare-fun m!5222903 () Bool)

(assert (=> b!4495535 m!5222903))

(declare-fun m!5222905 () Bool)

(assert (=> b!4495535 m!5222905))

(declare-fun m!5222907 () Bool)

(assert (=> b!4495535 m!5222907))

(declare-fun m!5222909 () Bool)

(assert (=> b!4495535 m!5222909))

(declare-fun m!5222911 () Bool)

(assert (=> b!4495535 m!5222911))

(declare-fun m!5222913 () Bool)

(assert (=> b!4495535 m!5222913))

(declare-fun m!5222915 () Bool)

(assert (=> b!4495535 m!5222915))

(declare-fun m!5222917 () Bool)

(assert (=> b!4495525 m!5222917))

(declare-fun m!5222919 () Bool)

(assert (=> b!4495525 m!5222919))

(declare-fun m!5222921 () Bool)

(assert (=> b!4495525 m!5222921))

(declare-fun m!5222923 () Bool)

(assert (=> b!4495525 m!5222923))

(assert (=> b!4495525 m!5222919))

(declare-fun m!5222925 () Bool)

(assert (=> b!4495525 m!5222925))

(declare-fun m!5222927 () Bool)

(assert (=> b!4495527 m!5222927))

(declare-fun m!5222929 () Bool)

(assert (=> b!4495527 m!5222929))

(declare-fun m!5222931 () Bool)

(assert (=> b!4495527 m!5222931))

(declare-fun m!5222933 () Bool)

(assert (=> b!4495527 m!5222933))

(declare-fun m!5222935 () Bool)

(assert (=> b!4495527 m!5222935))

(declare-fun m!5222937 () Bool)

(assert (=> b!4495527 m!5222937))

(declare-fun m!5222939 () Bool)

(assert (=> b!4495527 m!5222939))

(assert (=> b!4495527 m!5222935))

(declare-fun m!5222941 () Bool)

(assert (=> b!4495527 m!5222941))

(declare-fun m!5222943 () Bool)

(assert (=> b!4495527 m!5222943))

(assert (=> b!4495527 m!5222937))

(declare-fun m!5222945 () Bool)

(assert (=> b!4495528 m!5222945))

(declare-fun m!5222947 () Bool)

(assert (=> b!4495521 m!5222947))

(declare-fun m!5222949 () Bool)

(assert (=> start!443472 m!5222949))

(declare-fun m!5222951 () Bool)

(assert (=> start!443472 m!5222951))

(declare-fun m!5222953 () Bool)

(assert (=> b!4495519 m!5222953))

(declare-fun m!5222955 () Bool)

(assert (=> b!4495522 m!5222955))

(declare-fun m!5222957 () Bool)

(assert (=> b!4495516 m!5222957))

(declare-fun m!5222959 () Bool)

(assert (=> b!4495530 m!5222959))

(declare-fun m!5222961 () Bool)

(assert (=> b!4495530 m!5222961))

(declare-fun m!5222963 () Bool)

(assert (=> b!4495534 m!5222963))

(check-sat (not b!4495528) (not b!4495524) (not b!4495518) (not b!4495535) (not b!4495532) (not b!4495522) (not b!4495527) (not start!443472) (not b!4495521) (not b!4495523) (not b!4495525) (not b!4495534) (not b!4495519) (not b!4495533) (not b!4495536) tp_is_empty!27759 (not b!4495530) tp_is_empty!27757 (not b!4495516) (not b!4495531) (not b!4495517))
(check-sat)
(get-model)

(declare-fun d!1378564 () Bool)

(declare-fun isEmpty!28580 (List!50653) Bool)

(assert (=> d!1378564 (= (isEmpty!28579 lm!1477) (isEmpty!28580 (toList!4247 lm!1477)))))

(declare-fun bs!833339 () Bool)

(assert (= bs!833339 d!1378564))

(declare-fun m!5222965 () Bool)

(assert (=> bs!833339 m!5222965))

(assert (=> b!4495531 d!1378564))

(declare-fun d!1378566 () Bool)

(declare-fun e!2800266 () Bool)

(assert (=> d!1378566 e!2800266))

(declare-fun res!1868601 () Bool)

(assert (=> d!1378566 (=> res!1868601 e!2800266)))

(declare-fun e!2800263 () Bool)

(assert (=> d!1378566 (= res!1868601 e!2800263)))

(declare-fun res!1868603 () Bool)

(assert (=> d!1378566 (=> (not res!1868603) (not e!2800263))))

(declare-fun lt!1677954 () Bool)

(assert (=> d!1378566 (= res!1868603 (not lt!1677954))))

(declare-fun lt!1677952 () Bool)

(assert (=> d!1378566 (= lt!1677954 lt!1677952)))

(declare-fun lt!1677955 () Unit!91352)

(declare-fun e!2800261 () Unit!91352)

(assert (=> d!1378566 (= lt!1677955 e!2800261)))

(declare-fun c!765980 () Bool)

(assert (=> d!1378566 (= c!765980 lt!1677952)))

(declare-fun containsKey!1666 (List!50652 K!11940) Bool)

(assert (=> d!1378566 (= lt!1677952 (containsKey!1666 (toList!4248 lt!1677916) key!3287))))

(assert (=> d!1378566 (= (contains!13191 lt!1677916 key!3287) lt!1677954)))

(declare-fun b!4495561 () Bool)

(declare-fun e!2800265 () Unit!91352)

(assert (=> b!4495561 (= e!2800261 e!2800265)))

(declare-fun c!765979 () Bool)

(declare-fun call!312830 () Bool)

(assert (=> b!4495561 (= c!765979 call!312830)))

(declare-fun b!4495562 () Bool)

(declare-datatypes ((List!50655 0))(
  ( (Nil!50531) (Cons!50531 (h!56348 K!11940) (t!357613 List!50655)) )
))
(declare-fun e!2800262 () List!50655)

(declare-fun getKeysList!427 (List!50652) List!50655)

(assert (=> b!4495562 (= e!2800262 (getKeysList!427 (toList!4248 lt!1677916)))))

(declare-fun b!4495563 () Bool)

(assert (=> b!4495563 false))

(declare-fun lt!1677951 () Unit!91352)

(declare-fun lt!1677957 () Unit!91352)

(assert (=> b!4495563 (= lt!1677951 lt!1677957)))

(assert (=> b!4495563 (containsKey!1666 (toList!4248 lt!1677916) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!426 (List!50652 K!11940) Unit!91352)

(assert (=> b!4495563 (= lt!1677957 (lemmaInGetKeysListThenContainsKey!426 (toList!4248 lt!1677916) key!3287))))

(declare-fun Unit!91359 () Unit!91352)

(assert (=> b!4495563 (= e!2800265 Unit!91359)))

(declare-fun b!4495564 () Bool)

(declare-fun e!2800264 () Bool)

(declare-fun contains!13193 (List!50655 K!11940) Bool)

(declare-fun keys!17514 (ListMap!3509) List!50655)

(assert (=> b!4495564 (= e!2800264 (contains!13193 (keys!17514 lt!1677916) key!3287))))

(declare-fun b!4495565 () Bool)

(assert (=> b!4495565 (= e!2800263 (not (contains!13193 (keys!17514 lt!1677916) key!3287)))))

(declare-fun b!4495566 () Bool)

(declare-fun lt!1677958 () Unit!91352)

(assert (=> b!4495566 (= e!2800261 lt!1677958)))

(declare-fun lt!1677953 () Unit!91352)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!920 (List!50652 K!11940) Unit!91352)

(assert (=> b!4495566 (= lt!1677953 (lemmaContainsKeyImpliesGetValueByKeyDefined!920 (toList!4248 lt!1677916) key!3287))))

(declare-datatypes ((Option!11036 0))(
  ( (None!11035) (Some!11035 (v!44509 V!12186)) )
))
(declare-fun isDefined!8323 (Option!11036) Bool)

(declare-fun getValueByKey!1016 (List!50652 K!11940) Option!11036)

(assert (=> b!4495566 (isDefined!8323 (getValueByKey!1016 (toList!4248 lt!1677916) key!3287))))

(declare-fun lt!1677956 () Unit!91352)

(assert (=> b!4495566 (= lt!1677956 lt!1677953)))

(declare-fun lemmaInListThenGetKeysListContains!423 (List!50652 K!11940) Unit!91352)

(assert (=> b!4495566 (= lt!1677958 (lemmaInListThenGetKeysListContains!423 (toList!4248 lt!1677916) key!3287))))

(assert (=> b!4495566 call!312830))

(declare-fun bm!312825 () Bool)

(assert (=> bm!312825 (= call!312830 (contains!13193 e!2800262 key!3287))))

(declare-fun c!765978 () Bool)

(assert (=> bm!312825 (= c!765978 c!765980)))

(declare-fun b!4495567 () Bool)

(assert (=> b!4495567 (= e!2800262 (keys!17514 lt!1677916))))

(declare-fun b!4495568 () Bool)

(assert (=> b!4495568 (= e!2800266 e!2800264)))

(declare-fun res!1868602 () Bool)

(assert (=> b!4495568 (=> (not res!1868602) (not e!2800264))))

(assert (=> b!4495568 (= res!1868602 (isDefined!8323 (getValueByKey!1016 (toList!4248 lt!1677916) key!3287)))))

(declare-fun b!4495569 () Bool)

(declare-fun Unit!91360 () Unit!91352)

(assert (=> b!4495569 (= e!2800265 Unit!91360)))

(assert (= (and d!1378566 c!765980) b!4495566))

(assert (= (and d!1378566 (not c!765980)) b!4495561))

(assert (= (and b!4495561 c!765979) b!4495563))

(assert (= (and b!4495561 (not c!765979)) b!4495569))

(assert (= (or b!4495566 b!4495561) bm!312825))

(assert (= (and bm!312825 c!765978) b!4495562))

(assert (= (and bm!312825 (not c!765978)) b!4495567))

(assert (= (and d!1378566 res!1868603) b!4495565))

(assert (= (and d!1378566 (not res!1868601)) b!4495568))

(assert (= (and b!4495568 res!1868602) b!4495564))

(declare-fun m!5222985 () Bool)

(assert (=> b!4495566 m!5222985))

(declare-fun m!5222987 () Bool)

(assert (=> b!4495566 m!5222987))

(assert (=> b!4495566 m!5222987))

(declare-fun m!5222989 () Bool)

(assert (=> b!4495566 m!5222989))

(declare-fun m!5222991 () Bool)

(assert (=> b!4495566 m!5222991))

(assert (=> b!4495568 m!5222987))

(assert (=> b!4495568 m!5222987))

(assert (=> b!4495568 m!5222989))

(declare-fun m!5222993 () Bool)

(assert (=> b!4495565 m!5222993))

(assert (=> b!4495565 m!5222993))

(declare-fun m!5222995 () Bool)

(assert (=> b!4495565 m!5222995))

(assert (=> b!4495567 m!5222993))

(declare-fun m!5222997 () Bool)

(assert (=> b!4495562 m!5222997))

(declare-fun m!5222999 () Bool)

(assert (=> bm!312825 m!5222999))

(declare-fun m!5223001 () Bool)

(assert (=> d!1378566 m!5223001))

(assert (=> b!4495564 m!5222993))

(assert (=> b!4495564 m!5222993))

(assert (=> b!4495564 m!5222995))

(assert (=> b!4495563 m!5223001))

(declare-fun m!5223003 () Bool)

(assert (=> b!4495563 m!5223003))

(assert (=> b!4495530 d!1378566))

(declare-fun bs!833353 () Bool)

(declare-fun d!1378576 () Bool)

(assert (= bs!833353 (and d!1378576 start!443472)))

(declare-fun lambda!168025 () Int)

(assert (=> bs!833353 (= lambda!168025 lambda!168015)))

(declare-fun lt!1677975 () ListMap!3509)

(declare-fun invariantList!979 (List!50652) Bool)

(assert (=> d!1378576 (invariantList!979 (toList!4248 lt!1677975))))

(declare-fun e!2800277 () ListMap!3509)

(assert (=> d!1378576 (= lt!1677975 e!2800277)))

(declare-fun c!765987 () Bool)

(assert (=> d!1378576 (= c!765987 ((_ is Cons!50529) (toList!4247 lm!1477)))))

(assert (=> d!1378576 (forall!10161 (toList!4247 lm!1477) lambda!168025)))

(assert (=> d!1378576 (= (extractMap!1176 (toList!4247 lm!1477)) lt!1677975)))

(declare-fun b!4495587 () Bool)

(declare-fun addToMapMapFromBucket!647 (List!50652 ListMap!3509) ListMap!3509)

(assert (=> b!4495587 (= e!2800277 (addToMapMapFromBucket!647 (_2!28752 (h!56344 (toList!4247 lm!1477))) (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))))

(declare-fun b!4495588 () Bool)

(assert (=> b!4495588 (= e!2800277 (ListMap!3510 Nil!50528))))

(assert (= (and d!1378576 c!765987) b!4495587))

(assert (= (and d!1378576 (not c!765987)) b!4495588))

(declare-fun m!5223065 () Bool)

(assert (=> d!1378576 m!5223065))

(declare-fun m!5223067 () Bool)

(assert (=> d!1378576 m!5223067))

(assert (=> b!4495587 m!5222919))

(assert (=> b!4495587 m!5222919))

(declare-fun m!5223069 () Bool)

(assert (=> b!4495587 m!5223069))

(assert (=> b!4495530 d!1378576))

(declare-fun d!1378596 () Bool)

(declare-fun res!1868625 () Bool)

(declare-fun e!2800294 () Bool)

(assert (=> d!1378596 (=> res!1868625 e!2800294)))

(assert (=> d!1378596 (= res!1868625 (not ((_ is Cons!50528) newBucket!178)))))

(assert (=> d!1378596 (= (noDuplicateKeys!1120 newBucket!178) e!2800294)))

(declare-fun b!4495607 () Bool)

(declare-fun e!2800295 () Bool)

(assert (=> b!4495607 (= e!2800294 e!2800295)))

(declare-fun res!1868626 () Bool)

(assert (=> b!4495607 (=> (not res!1868626) (not e!2800295))))

(assert (=> b!4495607 (= res!1868626 (not (containsKey!1664 (t!357610 newBucket!178) (_1!28751 (h!56343 newBucket!178)))))))

(declare-fun b!4495608 () Bool)

(assert (=> b!4495608 (= e!2800295 (noDuplicateKeys!1120 (t!357610 newBucket!178)))))

(assert (= (and d!1378596 (not res!1868625)) b!4495607))

(assert (= (and b!4495607 res!1868626) b!4495608))

(declare-fun m!5223081 () Bool)

(assert (=> b!4495607 m!5223081))

(declare-fun m!5223083 () Bool)

(assert (=> b!4495608 m!5223083))

(assert (=> b!4495519 d!1378596))

(declare-fun d!1378604 () Bool)

(declare-fun lt!1677981 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8242 (List!50653) (InoxSet tuple2!50916))

(assert (=> d!1378604 (= lt!1677981 (select (content!8242 (t!357611 (toList!4247 lm!1477))) lt!1677910))))

(declare-fun e!2800301 () Bool)

(assert (=> d!1378604 (= lt!1677981 e!2800301)))

(declare-fun res!1868631 () Bool)

(assert (=> d!1378604 (=> (not res!1868631) (not e!2800301))))

(assert (=> d!1378604 (= res!1868631 ((_ is Cons!50529) (t!357611 (toList!4247 lm!1477))))))

(assert (=> d!1378604 (= (contains!13189 (t!357611 (toList!4247 lm!1477)) lt!1677910) lt!1677981)))

(declare-fun b!4495613 () Bool)

(declare-fun e!2800300 () Bool)

(assert (=> b!4495613 (= e!2800301 e!2800300)))

(declare-fun res!1868632 () Bool)

(assert (=> b!4495613 (=> res!1868632 e!2800300)))

(assert (=> b!4495613 (= res!1868632 (= (h!56344 (t!357611 (toList!4247 lm!1477))) lt!1677910))))

(declare-fun b!4495614 () Bool)

(assert (=> b!4495614 (= e!2800300 (contains!13189 (t!357611 (t!357611 (toList!4247 lm!1477))) lt!1677910))))

(assert (= (and d!1378604 res!1868631) b!4495613))

(assert (= (and b!4495613 (not res!1868632)) b!4495614))

(declare-fun m!5223089 () Bool)

(assert (=> d!1378604 m!5223089))

(declare-fun m!5223091 () Bool)

(assert (=> d!1378604 m!5223091))

(declare-fun m!5223093 () Bool)

(assert (=> b!4495614 m!5223093))

(assert (=> b!4495518 d!1378604))

(declare-fun bs!833365 () Bool)

(declare-fun d!1378608 () Bool)

(assert (= bs!833365 (and d!1378608 start!443472)))

(declare-fun lambda!168034 () Int)

(assert (=> bs!833365 (not (= lambda!168034 lambda!168015))))

(declare-fun bs!833366 () Bool)

(assert (= bs!833366 (and d!1378608 d!1378576)))

(assert (=> bs!833366 (not (= lambda!168034 lambda!168025))))

(assert (=> d!1378608 true))

(assert (=> d!1378608 (= (allKeysSameHashInMap!1227 lm!1477 hashF!1107) (forall!10161 (toList!4247 lm!1477) lambda!168034))))

(declare-fun bs!833367 () Bool)

(assert (= bs!833367 d!1378608))

(declare-fun m!5223095 () Bool)

(assert (=> bs!833367 m!5223095))

(assert (=> b!4495528 d!1378608))

(declare-fun d!1378610 () Bool)

(declare-fun e!2800323 () Bool)

(assert (=> d!1378610 e!2800323))

(declare-fun res!1868646 () Bool)

(assert (=> d!1378610 (=> (not res!1868646) (not e!2800323))))

(declare-fun lt!1678020 () ListLongMap!2879)

(assert (=> d!1378610 (= res!1868646 (contains!13190 lt!1678020 (_1!28752 lt!1677922)))))

(declare-fun lt!1678018 () List!50653)

(assert (=> d!1378610 (= lt!1678020 (ListLongMap!2880 lt!1678018))))

(declare-fun lt!1678019 () Unit!91352)

(declare-fun lt!1678021 () Unit!91352)

(assert (=> d!1378610 (= lt!1678019 lt!1678021)))

(declare-datatypes ((Option!11037 0))(
  ( (None!11036) (Some!11036 (v!44510 List!50652)) )
))
(declare-fun getValueByKey!1017 (List!50653 (_ BitVec 64)) Option!11037)

(assert (=> d!1378610 (= (getValueByKey!1017 lt!1678018 (_1!28752 lt!1677922)) (Some!11036 (_2!28752 lt!1677922)))))

(declare-fun lemmaContainsTupThenGetReturnValue!628 (List!50653 (_ BitVec 64) List!50652) Unit!91352)

(assert (=> d!1378610 (= lt!1678021 (lemmaContainsTupThenGetReturnValue!628 lt!1678018 (_1!28752 lt!1677922) (_2!28752 lt!1677922)))))

(declare-fun insertStrictlySorted!370 (List!50653 (_ BitVec 64) List!50652) List!50653)

(assert (=> d!1378610 (= lt!1678018 (insertStrictlySorted!370 (toList!4247 lt!1677907) (_1!28752 lt!1677922) (_2!28752 lt!1677922)))))

(assert (=> d!1378610 (= (+!1462 lt!1677907 lt!1677922) lt!1678020)))

(declare-fun b!4495650 () Bool)

(declare-fun res!1868647 () Bool)

(assert (=> b!4495650 (=> (not res!1868647) (not e!2800323))))

(assert (=> b!4495650 (= res!1868647 (= (getValueByKey!1017 (toList!4247 lt!1678020) (_1!28752 lt!1677922)) (Some!11036 (_2!28752 lt!1677922))))))

(declare-fun b!4495651 () Bool)

(assert (=> b!4495651 (= e!2800323 (contains!13189 (toList!4247 lt!1678020) lt!1677922))))

(assert (= (and d!1378610 res!1868646) b!4495650))

(assert (= (and b!4495650 res!1868647) b!4495651))

(declare-fun m!5223129 () Bool)

(assert (=> d!1378610 m!5223129))

(declare-fun m!5223131 () Bool)

(assert (=> d!1378610 m!5223131))

(declare-fun m!5223133 () Bool)

(assert (=> d!1378610 m!5223133))

(declare-fun m!5223135 () Bool)

(assert (=> d!1378610 m!5223135))

(declare-fun m!5223137 () Bool)

(assert (=> b!4495650 m!5223137))

(declare-fun m!5223139 () Bool)

(assert (=> b!4495651 m!5223139))

(assert (=> b!4495527 d!1378610))

(declare-fun d!1378618 () Bool)

(declare-fun content!8243 (List!50652) (InoxSet tuple2!50914))

(assert (=> d!1378618 (= (eq!577 lt!1677917 lt!1677916) (= (content!8243 (toList!4248 lt!1677917)) (content!8243 (toList!4248 lt!1677916))))))

(declare-fun bs!833382 () Bool)

(assert (= bs!833382 d!1378618))

(declare-fun m!5223145 () Bool)

(assert (=> bs!833382 m!5223145))

(declare-fun m!5223147 () Bool)

(assert (=> bs!833382 m!5223147))

(assert (=> b!4495527 d!1378618))

(declare-fun bs!833414 () Bool)

(declare-fun d!1378622 () Bool)

(assert (= bs!833414 (and d!1378622 start!443472)))

(declare-fun lambda!168049 () Int)

(assert (=> bs!833414 (= lambda!168049 lambda!168015)))

(declare-fun bs!833415 () Bool)

(assert (= bs!833415 (and d!1378622 d!1378576)))

(assert (=> bs!833415 (= lambda!168049 lambda!168025)))

(declare-fun bs!833416 () Bool)

(assert (= bs!833416 (and d!1378622 d!1378608)))

(assert (=> bs!833416 (not (= lambda!168049 lambda!168034))))

(assert (=> d!1378622 (eq!577 (extractMap!1176 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))) (-!346 (extractMap!1176 (toList!4247 lt!1677907)) key!3287))))

(declare-fun lt!1678060 () Unit!91352)

(declare-fun choose!29047 (ListLongMap!2879 (_ BitVec 64) List!50652 K!11940 Hashable!5515) Unit!91352)

(assert (=> d!1378622 (= lt!1678060 (choose!29047 lt!1677907 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1378622 (forall!10161 (toList!4247 lt!1677907) lambda!168049)))

(assert (=> d!1378622 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!105 lt!1677907 hash!344 newBucket!178 key!3287 hashF!1107) lt!1678060)))

(declare-fun bs!833417 () Bool)

(assert (= bs!833417 d!1378622))

(assert (=> bs!833417 m!5222917))

(declare-fun m!5223231 () Bool)

(assert (=> bs!833417 m!5223231))

(assert (=> bs!833417 m!5222943))

(declare-fun m!5223233 () Bool)

(assert (=> bs!833417 m!5223233))

(assert (=> bs!833417 m!5222917))

(declare-fun m!5223235 () Bool)

(assert (=> bs!833417 m!5223235))

(assert (=> bs!833417 m!5222935))

(assert (=> bs!833417 m!5222935))

(assert (=> bs!833417 m!5223231))

(declare-fun m!5223237 () Bool)

(assert (=> bs!833417 m!5223237))

(assert (=> b!4495527 d!1378622))

(declare-fun d!1378646 () Bool)

(declare-fun e!2800362 () Bool)

(assert (=> d!1378646 e!2800362))

(declare-fun res!1868675 () Bool)

(assert (=> d!1378646 (=> (not res!1868675) (not e!2800362))))

(declare-fun lt!1678065 () ListLongMap!2879)

(assert (=> d!1378646 (= res!1868675 (contains!13190 lt!1678065 (_1!28752 (tuple2!50917 hash!344 newBucket!178))))))

(declare-fun lt!1678063 () List!50653)

(assert (=> d!1378646 (= lt!1678065 (ListLongMap!2880 lt!1678063))))

(declare-fun lt!1678064 () Unit!91352)

(declare-fun lt!1678066 () Unit!91352)

(assert (=> d!1378646 (= lt!1678064 lt!1678066)))

(assert (=> d!1378646 (= (getValueByKey!1017 lt!1678063 (_1!28752 (tuple2!50917 hash!344 newBucket!178))) (Some!11036 (_2!28752 (tuple2!50917 hash!344 newBucket!178))))))

(assert (=> d!1378646 (= lt!1678066 (lemmaContainsTupThenGetReturnValue!628 lt!1678063 (_1!28752 (tuple2!50917 hash!344 newBucket!178)) (_2!28752 (tuple2!50917 hash!344 newBucket!178))))))

(assert (=> d!1378646 (= lt!1678063 (insertStrictlySorted!370 (toList!4247 lt!1677907) (_1!28752 (tuple2!50917 hash!344 newBucket!178)) (_2!28752 (tuple2!50917 hash!344 newBucket!178))))))

(assert (=> d!1378646 (= (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)) lt!1678065)))

(declare-fun b!4495705 () Bool)

(declare-fun res!1868676 () Bool)

(assert (=> b!4495705 (=> (not res!1868676) (not e!2800362))))

(assert (=> b!4495705 (= res!1868676 (= (getValueByKey!1017 (toList!4247 lt!1678065) (_1!28752 (tuple2!50917 hash!344 newBucket!178))) (Some!11036 (_2!28752 (tuple2!50917 hash!344 newBucket!178)))))))

(declare-fun b!4495706 () Bool)

(assert (=> b!4495706 (= e!2800362 (contains!13189 (toList!4247 lt!1678065) (tuple2!50917 hash!344 newBucket!178)))))

(assert (= (and d!1378646 res!1868675) b!4495705))

(assert (= (and b!4495705 res!1868676) b!4495706))

(declare-fun m!5223239 () Bool)

(assert (=> d!1378646 m!5223239))

(declare-fun m!5223241 () Bool)

(assert (=> d!1378646 m!5223241))

(declare-fun m!5223243 () Bool)

(assert (=> d!1378646 m!5223243))

(declare-fun m!5223245 () Bool)

(assert (=> d!1378646 m!5223245))

(declare-fun m!5223247 () Bool)

(assert (=> b!4495705 m!5223247))

(declare-fun m!5223249 () Bool)

(assert (=> b!4495706 m!5223249))

(assert (=> b!4495527 d!1378646))

(declare-fun d!1378648 () Bool)

(assert (=> d!1378648 (= (eq!577 (extractMap!1176 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))) (-!346 lt!1677918 key!3287)) (= (content!8243 (toList!4248 (extractMap!1176 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (content!8243 (toList!4248 (-!346 lt!1677918 key!3287)))))))

(declare-fun bs!833430 () Bool)

(assert (= bs!833430 d!1378648))

(declare-fun m!5223257 () Bool)

(assert (=> bs!833430 m!5223257))

(declare-fun m!5223259 () Bool)

(assert (=> bs!833430 m!5223259))

(assert (=> b!4495527 d!1378648))

(declare-fun bs!833432 () Bool)

(declare-fun d!1378652 () Bool)

(assert (= bs!833432 (and d!1378652 start!443472)))

(declare-fun lambda!168053 () Int)

(assert (=> bs!833432 (= lambda!168053 lambda!168015)))

(declare-fun bs!833433 () Bool)

(assert (= bs!833433 (and d!1378652 d!1378576)))

(assert (=> bs!833433 (= lambda!168053 lambda!168025)))

(declare-fun bs!833434 () Bool)

(assert (= bs!833434 (and d!1378652 d!1378608)))

(assert (=> bs!833434 (not (= lambda!168053 lambda!168034))))

(declare-fun bs!833435 () Bool)

(assert (= bs!833435 (and d!1378652 d!1378622)))

(assert (=> bs!833435 (= lambda!168053 lambda!168049)))

(declare-fun lt!1678068 () ListMap!3509)

(assert (=> d!1378652 (invariantList!979 (toList!4248 lt!1678068))))

(declare-fun e!2800363 () ListMap!3509)

(assert (=> d!1378652 (= lt!1678068 e!2800363)))

(declare-fun c!766009 () Bool)

(assert (=> d!1378652 (= c!766009 ((_ is Cons!50529) (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))))

(assert (=> d!1378652 (forall!10161 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))) lambda!168053)))

(assert (=> d!1378652 (= (extractMap!1176 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))) lt!1678068)))

(declare-fun b!4495707 () Bool)

(assert (=> b!4495707 (= e!2800363 (addToMapMapFromBucket!647 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))))))

(declare-fun b!4495708 () Bool)

(assert (=> b!4495708 (= e!2800363 (ListMap!3510 Nil!50528))))

(assert (= (and d!1378652 c!766009) b!4495707))

(assert (= (and d!1378652 (not c!766009)) b!4495708))

(declare-fun m!5223273 () Bool)

(assert (=> d!1378652 m!5223273))

(declare-fun m!5223275 () Bool)

(assert (=> d!1378652 m!5223275))

(declare-fun m!5223277 () Bool)

(assert (=> b!4495707 m!5223277))

(assert (=> b!4495707 m!5223277))

(declare-fun m!5223279 () Bool)

(assert (=> b!4495707 m!5223279))

(assert (=> b!4495527 d!1378652))

(declare-fun d!1378658 () Bool)

(declare-fun e!2800388 () Bool)

(assert (=> d!1378658 e!2800388))

(declare-fun res!1868694 () Bool)

(assert (=> d!1378658 (=> (not res!1868694) (not e!2800388))))

(declare-fun lt!1678085 () ListMap!3509)

(assert (=> d!1378658 (= res!1868694 (not (contains!13191 lt!1678085 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!103 (List!50652 K!11940) List!50652)

(assert (=> d!1378658 (= lt!1678085 (ListMap!3510 (removePresrvNoDuplicatedKeys!103 (toList!4248 lt!1677918) key!3287)))))

(assert (=> d!1378658 (= (-!346 lt!1677918 key!3287) lt!1678085)))

(declare-fun b!4495740 () Bool)

(declare-fun content!8244 (List!50655) (InoxSet K!11940))

(assert (=> b!4495740 (= e!2800388 (= ((_ map and) (content!8244 (keys!17514 lt!1677918)) ((_ map not) (store ((as const (Array K!11940 Bool)) false) key!3287 true))) (content!8244 (keys!17514 lt!1678085))))))

(assert (= (and d!1378658 res!1868694) b!4495740))

(declare-fun m!5223301 () Bool)

(assert (=> d!1378658 m!5223301))

(declare-fun m!5223303 () Bool)

(assert (=> d!1378658 m!5223303))

(declare-fun m!5223307 () Bool)

(assert (=> b!4495740 m!5223307))

(declare-fun m!5223309 () Bool)

(assert (=> b!4495740 m!5223309))

(assert (=> b!4495740 m!5223307))

(declare-fun m!5223311 () Bool)

(assert (=> b!4495740 m!5223311))

(assert (=> b!4495740 m!5223311))

(declare-fun m!5223313 () Bool)

(assert (=> b!4495740 m!5223313))

(declare-fun m!5223315 () Bool)

(assert (=> b!4495740 m!5223315))

(assert (=> b!4495527 d!1378658))

(declare-fun d!1378670 () Bool)

(declare-fun head!9336 (List!50653) tuple2!50916)

(assert (=> d!1378670 (= (head!9334 lm!1477) (head!9336 (toList!4247 lm!1477)))))

(declare-fun bs!833439 () Bool)

(assert (= bs!833439 d!1378670))

(declare-fun m!5223321 () Bool)

(assert (=> bs!833439 m!5223321))

(assert (=> b!4495527 d!1378670))

(declare-fun bs!833440 () Bool)

(declare-fun d!1378676 () Bool)

(assert (= bs!833440 (and d!1378676 d!1378622)))

(declare-fun lambda!168054 () Int)

(assert (=> bs!833440 (= lambda!168054 lambda!168049)))

(declare-fun bs!833441 () Bool)

(assert (= bs!833441 (and d!1378676 d!1378576)))

(assert (=> bs!833441 (= lambda!168054 lambda!168025)))

(declare-fun bs!833442 () Bool)

(assert (= bs!833442 (and d!1378676 start!443472)))

(assert (=> bs!833442 (= lambda!168054 lambda!168015)))

(declare-fun bs!833443 () Bool)

(assert (= bs!833443 (and d!1378676 d!1378652)))

(assert (=> bs!833443 (= lambda!168054 lambda!168053)))

(declare-fun bs!833444 () Bool)

(assert (= bs!833444 (and d!1378676 d!1378608)))

(assert (=> bs!833444 (not (= lambda!168054 lambda!168034))))

(declare-fun lt!1678086 () ListMap!3509)

(assert (=> d!1378676 (invariantList!979 (toList!4248 lt!1678086))))

(declare-fun e!2800395 () ListMap!3509)

(assert (=> d!1378676 (= lt!1678086 e!2800395)))

(declare-fun c!766017 () Bool)

(assert (=> d!1378676 (= c!766017 ((_ is Cons!50529) (toList!4247 (+!1462 lt!1677907 lt!1677922))))))

(assert (=> d!1378676 (forall!10161 (toList!4247 (+!1462 lt!1677907 lt!1677922)) lambda!168054)))

(assert (=> d!1378676 (= (extractMap!1176 (toList!4247 (+!1462 lt!1677907 lt!1677922))) lt!1678086)))

(declare-fun b!4495751 () Bool)

(assert (=> b!4495751 (= e!2800395 (addToMapMapFromBucket!647 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))))))

(declare-fun b!4495752 () Bool)

(assert (=> b!4495752 (= e!2800395 (ListMap!3510 Nil!50528))))

(assert (= (and d!1378676 c!766017) b!4495751))

(assert (= (and d!1378676 (not c!766017)) b!4495752))

(declare-fun m!5223323 () Bool)

(assert (=> d!1378676 m!5223323))

(declare-fun m!5223325 () Bool)

(assert (=> d!1378676 m!5223325))

(declare-fun m!5223327 () Bool)

(assert (=> b!4495751 m!5223327))

(assert (=> b!4495751 m!5223327))

(declare-fun m!5223329 () Bool)

(assert (=> b!4495751 m!5223329))

(assert (=> b!4495527 d!1378676))

(declare-fun bs!833445 () Bool)

(declare-fun d!1378678 () Bool)

(assert (= bs!833445 (and d!1378678 d!1378622)))

(declare-fun lambda!168057 () Int)

(assert (=> bs!833445 (= lambda!168057 lambda!168049)))

(declare-fun bs!833446 () Bool)

(assert (= bs!833446 (and d!1378678 d!1378576)))

(assert (=> bs!833446 (= lambda!168057 lambda!168025)))

(declare-fun bs!833447 () Bool)

(assert (= bs!833447 (and d!1378678 start!443472)))

(assert (=> bs!833447 (= lambda!168057 lambda!168015)))

(declare-fun bs!833448 () Bool)

(assert (= bs!833448 (and d!1378678 d!1378652)))

(assert (=> bs!833448 (= lambda!168057 lambda!168053)))

(declare-fun bs!833449 () Bool)

(assert (= bs!833449 (and d!1378678 d!1378676)))

(assert (=> bs!833449 (= lambda!168057 lambda!168054)))

(declare-fun bs!833450 () Bool)

(assert (= bs!833450 (and d!1378678 d!1378608)))

(assert (=> bs!833450 (not (= lambda!168057 lambda!168034))))

(assert (=> d!1378678 (not (contains!13191 (extractMap!1176 (toList!4247 lm!1477)) key!3287))))

(declare-fun lt!1678089 () Unit!91352)

(declare-fun choose!29048 (ListLongMap!2879 K!11940 Hashable!5515) Unit!91352)

(assert (=> d!1378678 (= lt!1678089 (choose!29048 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1378678 (forall!10161 (toList!4247 lm!1477) lambda!168057)))

(assert (=> d!1378678 (= (lemmaNotInItsHashBucketThenNotInMap!108 lm!1477 key!3287 hashF!1107) lt!1678089)))

(declare-fun bs!833451 () Bool)

(assert (= bs!833451 d!1378678))

(assert (=> bs!833451 m!5222961))

(assert (=> bs!833451 m!5222961))

(declare-fun m!5223331 () Bool)

(assert (=> bs!833451 m!5223331))

(declare-fun m!5223333 () Bool)

(assert (=> bs!833451 m!5223333))

(declare-fun m!5223335 () Bool)

(assert (=> bs!833451 m!5223335))

(assert (=> b!4495516 d!1378678))

(declare-fun d!1378680 () Bool)

(assert (=> d!1378680 true))

(assert (=> d!1378680 true))

(declare-fun lambda!168060 () Int)

(declare-fun forall!10163 (List!50652 Int) Bool)

(assert (=> d!1378680 (= (allKeysSameHash!974 newBucket!178 hash!344 hashF!1107) (forall!10163 newBucket!178 lambda!168060))))

(declare-fun bs!833452 () Bool)

(assert (= bs!833452 d!1378680))

(declare-fun m!5223337 () Bool)

(assert (=> bs!833452 m!5223337))

(assert (=> b!4495536 d!1378680))

(declare-fun bs!833453 () Bool)

(declare-fun d!1378682 () Bool)

(assert (= bs!833453 (and d!1378682 d!1378622)))

(declare-fun lambda!168063 () Int)

(assert (=> bs!833453 (= lambda!168063 lambda!168049)))

(declare-fun bs!833454 () Bool)

(assert (= bs!833454 (and d!1378682 d!1378576)))

(assert (=> bs!833454 (= lambda!168063 lambda!168025)))

(declare-fun bs!833455 () Bool)

(assert (= bs!833455 (and d!1378682 start!443472)))

(assert (=> bs!833455 (= lambda!168063 lambda!168015)))

(declare-fun bs!833456 () Bool)

(assert (= bs!833456 (and d!1378682 d!1378678)))

(assert (=> bs!833456 (= lambda!168063 lambda!168057)))

(declare-fun bs!833457 () Bool)

(assert (= bs!833457 (and d!1378682 d!1378652)))

(assert (=> bs!833457 (= lambda!168063 lambda!168053)))

(declare-fun bs!833458 () Bool)

(assert (= bs!833458 (and d!1378682 d!1378676)))

(assert (=> bs!833458 (= lambda!168063 lambda!168054)))

(declare-fun bs!833459 () Bool)

(assert (= bs!833459 (and d!1378682 d!1378608)))

(assert (=> bs!833459 (not (= lambda!168063 lambda!168034))))

(assert (=> d!1378682 (contains!13191 (extractMap!1176 (toList!4247 lt!1677907)) key!3287)))

(declare-fun lt!1678092 () Unit!91352)

(declare-fun choose!29049 (ListLongMap!2879 K!11940 Hashable!5515) Unit!91352)

(assert (=> d!1378682 (= lt!1678092 (choose!29049 lt!1677907 key!3287 hashF!1107))))

(assert (=> d!1378682 (forall!10161 (toList!4247 lt!1677907) lambda!168063)))

(assert (=> d!1378682 (= (lemmaListContainsThenExtractedMapContains!90 lt!1677907 key!3287 hashF!1107) lt!1678092)))

(declare-fun bs!833460 () Bool)

(assert (= bs!833460 d!1378682))

(assert (=> bs!833460 m!5222917))

(assert (=> bs!833460 m!5222917))

(declare-fun m!5223339 () Bool)

(assert (=> bs!833460 m!5223339))

(declare-fun m!5223341 () Bool)

(assert (=> bs!833460 m!5223341))

(declare-fun m!5223343 () Bool)

(assert (=> bs!833460 m!5223343))

(assert (=> b!4495525 d!1378682))

(declare-fun d!1378684 () Bool)

(declare-fun e!2800401 () Bool)

(assert (=> d!1378684 e!2800401))

(declare-fun res!1868695 () Bool)

(assert (=> d!1378684 (=> res!1868695 e!2800401)))

(declare-fun e!2800398 () Bool)

(assert (=> d!1378684 (= res!1868695 e!2800398)))

(declare-fun res!1868697 () Bool)

(assert (=> d!1378684 (=> (not res!1868697) (not e!2800398))))

(declare-fun lt!1678096 () Bool)

(assert (=> d!1378684 (= res!1868697 (not lt!1678096))))

(declare-fun lt!1678094 () Bool)

(assert (=> d!1378684 (= lt!1678096 lt!1678094)))

(declare-fun lt!1678097 () Unit!91352)

(declare-fun e!2800396 () Unit!91352)

(assert (=> d!1378684 (= lt!1678097 e!2800396)))

(declare-fun c!766020 () Bool)

(assert (=> d!1378684 (= c!766020 lt!1678094)))

(assert (=> d!1378684 (= lt!1678094 (containsKey!1666 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287))))

(assert (=> d!1378684 (= (contains!13191 (extractMap!1176 (t!357611 (toList!4247 lm!1477))) key!3287) lt!1678096)))

(declare-fun b!4495757 () Bool)

(declare-fun e!2800400 () Unit!91352)

(assert (=> b!4495757 (= e!2800396 e!2800400)))

(declare-fun c!766019 () Bool)

(declare-fun call!312836 () Bool)

(assert (=> b!4495757 (= c!766019 call!312836)))

(declare-fun b!4495758 () Bool)

(declare-fun e!2800397 () List!50655)

(assert (=> b!4495758 (= e!2800397 (getKeysList!427 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))))))

(declare-fun b!4495759 () Bool)

(assert (=> b!4495759 false))

(declare-fun lt!1678093 () Unit!91352)

(declare-fun lt!1678099 () Unit!91352)

(assert (=> b!4495759 (= lt!1678093 lt!1678099)))

(assert (=> b!4495759 (containsKey!1666 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287)))

(assert (=> b!4495759 (= lt!1678099 (lemmaInGetKeysListThenContainsKey!426 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287))))

(declare-fun Unit!91365 () Unit!91352)

(assert (=> b!4495759 (= e!2800400 Unit!91365)))

(declare-fun b!4495760 () Bool)

(declare-fun e!2800399 () Bool)

(assert (=> b!4495760 (= e!2800399 (contains!13193 (keys!17514 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287))))

(declare-fun b!4495761 () Bool)

(assert (=> b!4495761 (= e!2800398 (not (contains!13193 (keys!17514 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287)))))

(declare-fun b!4495762 () Bool)

(declare-fun lt!1678100 () Unit!91352)

(assert (=> b!4495762 (= e!2800396 lt!1678100)))

(declare-fun lt!1678095 () Unit!91352)

(assert (=> b!4495762 (= lt!1678095 (lemmaContainsKeyImpliesGetValueByKeyDefined!920 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287))))

(assert (=> b!4495762 (isDefined!8323 (getValueByKey!1016 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287))))

(declare-fun lt!1678098 () Unit!91352)

(assert (=> b!4495762 (= lt!1678098 lt!1678095)))

(assert (=> b!4495762 (= lt!1678100 (lemmaInListThenGetKeysListContains!423 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287))))

(assert (=> b!4495762 call!312836))

(declare-fun bm!312831 () Bool)

(assert (=> bm!312831 (= call!312836 (contains!13193 e!2800397 key!3287))))

(declare-fun c!766018 () Bool)

(assert (=> bm!312831 (= c!766018 c!766020)))

(declare-fun b!4495763 () Bool)

(assert (=> b!4495763 (= e!2800397 (keys!17514 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))))

(declare-fun b!4495764 () Bool)

(assert (=> b!4495764 (= e!2800401 e!2800399)))

(declare-fun res!1868696 () Bool)

(assert (=> b!4495764 (=> (not res!1868696) (not e!2800399))))

(assert (=> b!4495764 (= res!1868696 (isDefined!8323 (getValueByKey!1016 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287)))))

(declare-fun b!4495765 () Bool)

(declare-fun Unit!91367 () Unit!91352)

(assert (=> b!4495765 (= e!2800400 Unit!91367)))

(assert (= (and d!1378684 c!766020) b!4495762))

(assert (= (and d!1378684 (not c!766020)) b!4495757))

(assert (= (and b!4495757 c!766019) b!4495759))

(assert (= (and b!4495757 (not c!766019)) b!4495765))

(assert (= (or b!4495762 b!4495757) bm!312831))

(assert (= (and bm!312831 c!766018) b!4495758))

(assert (= (and bm!312831 (not c!766018)) b!4495763))

(assert (= (and d!1378684 res!1868697) b!4495761))

(assert (= (and d!1378684 (not res!1868695)) b!4495764))

(assert (= (and b!4495764 res!1868696) b!4495760))

(declare-fun m!5223345 () Bool)

(assert (=> b!4495762 m!5223345))

(declare-fun m!5223347 () Bool)

(assert (=> b!4495762 m!5223347))

(assert (=> b!4495762 m!5223347))

(declare-fun m!5223349 () Bool)

(assert (=> b!4495762 m!5223349))

(declare-fun m!5223351 () Bool)

(assert (=> b!4495762 m!5223351))

(assert (=> b!4495764 m!5223347))

(assert (=> b!4495764 m!5223347))

(assert (=> b!4495764 m!5223349))

(assert (=> b!4495761 m!5222919))

(declare-fun m!5223353 () Bool)

(assert (=> b!4495761 m!5223353))

(assert (=> b!4495761 m!5223353))

(declare-fun m!5223355 () Bool)

(assert (=> b!4495761 m!5223355))

(assert (=> b!4495763 m!5222919))

(assert (=> b!4495763 m!5223353))

(declare-fun m!5223357 () Bool)

(assert (=> b!4495758 m!5223357))

(declare-fun m!5223359 () Bool)

(assert (=> bm!312831 m!5223359))

(declare-fun m!5223361 () Bool)

(assert (=> d!1378684 m!5223361))

(assert (=> b!4495760 m!5222919))

(assert (=> b!4495760 m!5223353))

(assert (=> b!4495760 m!5223353))

(assert (=> b!4495760 m!5223355))

(assert (=> b!4495759 m!5223361))

(declare-fun m!5223363 () Bool)

(assert (=> b!4495759 m!5223363))

(assert (=> b!4495525 d!1378684))

(declare-fun bs!833461 () Bool)

(declare-fun d!1378686 () Bool)

(assert (= bs!833461 (and d!1378686 d!1378622)))

(declare-fun lambda!168064 () Int)

(assert (=> bs!833461 (= lambda!168064 lambda!168049)))

(declare-fun bs!833462 () Bool)

(assert (= bs!833462 (and d!1378686 d!1378576)))

(assert (=> bs!833462 (= lambda!168064 lambda!168025)))

(declare-fun bs!833463 () Bool)

(assert (= bs!833463 (and d!1378686 start!443472)))

(assert (=> bs!833463 (= lambda!168064 lambda!168015)))

(declare-fun bs!833464 () Bool)

(assert (= bs!833464 (and d!1378686 d!1378682)))

(assert (=> bs!833464 (= lambda!168064 lambda!168063)))

(declare-fun bs!833465 () Bool)

(assert (= bs!833465 (and d!1378686 d!1378678)))

(assert (=> bs!833465 (= lambda!168064 lambda!168057)))

(declare-fun bs!833466 () Bool)

(assert (= bs!833466 (and d!1378686 d!1378652)))

(assert (=> bs!833466 (= lambda!168064 lambda!168053)))

(declare-fun bs!833467 () Bool)

(assert (= bs!833467 (and d!1378686 d!1378676)))

(assert (=> bs!833467 (= lambda!168064 lambda!168054)))

(declare-fun bs!833468 () Bool)

(assert (= bs!833468 (and d!1378686 d!1378608)))

(assert (=> bs!833468 (not (= lambda!168064 lambda!168034))))

(declare-fun lt!1678101 () ListMap!3509)

(assert (=> d!1378686 (invariantList!979 (toList!4248 lt!1678101))))

(declare-fun e!2800402 () ListMap!3509)

(assert (=> d!1378686 (= lt!1678101 e!2800402)))

(declare-fun c!766021 () Bool)

(assert (=> d!1378686 (= c!766021 ((_ is Cons!50529) (t!357611 (toList!4247 lm!1477))))))

(assert (=> d!1378686 (forall!10161 (t!357611 (toList!4247 lm!1477)) lambda!168064)))

(assert (=> d!1378686 (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) lt!1678101)))

(declare-fun b!4495766 () Bool)

(assert (=> b!4495766 (= e!2800402 (addToMapMapFromBucket!647 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477))))))))

(declare-fun b!4495767 () Bool)

(assert (=> b!4495767 (= e!2800402 (ListMap!3510 Nil!50528))))

(assert (= (and d!1378686 c!766021) b!4495766))

(assert (= (and d!1378686 (not c!766021)) b!4495767))

(declare-fun m!5223365 () Bool)

(assert (=> d!1378686 m!5223365))

(declare-fun m!5223367 () Bool)

(assert (=> d!1378686 m!5223367))

(declare-fun m!5223369 () Bool)

(assert (=> b!4495766 m!5223369))

(assert (=> b!4495766 m!5223369))

(declare-fun m!5223371 () Bool)

(assert (=> b!4495766 m!5223371))

(assert (=> b!4495525 d!1378686))

(declare-fun d!1378688 () Bool)

(declare-fun e!2800408 () Bool)

(assert (=> d!1378688 e!2800408))

(declare-fun res!1868698 () Bool)

(assert (=> d!1378688 (=> res!1868698 e!2800408)))

(declare-fun e!2800405 () Bool)

(assert (=> d!1378688 (= res!1868698 e!2800405)))

(declare-fun res!1868700 () Bool)

(assert (=> d!1378688 (=> (not res!1868700) (not e!2800405))))

(declare-fun lt!1678105 () Bool)

(assert (=> d!1378688 (= res!1868700 (not lt!1678105))))

(declare-fun lt!1678103 () Bool)

(assert (=> d!1378688 (= lt!1678105 lt!1678103)))

(declare-fun lt!1678106 () Unit!91352)

(declare-fun e!2800403 () Unit!91352)

(assert (=> d!1378688 (= lt!1678106 e!2800403)))

(declare-fun c!766024 () Bool)

(assert (=> d!1378688 (= c!766024 lt!1678103)))

(assert (=> d!1378688 (= lt!1678103 (containsKey!1666 (toList!4248 lt!1677918) key!3287))))

(assert (=> d!1378688 (= (contains!13191 lt!1677918 key!3287) lt!1678105)))

(declare-fun b!4495768 () Bool)

(declare-fun e!2800407 () Unit!91352)

(assert (=> b!4495768 (= e!2800403 e!2800407)))

(declare-fun c!766023 () Bool)

(declare-fun call!312837 () Bool)

(assert (=> b!4495768 (= c!766023 call!312837)))

(declare-fun b!4495769 () Bool)

(declare-fun e!2800404 () List!50655)

(assert (=> b!4495769 (= e!2800404 (getKeysList!427 (toList!4248 lt!1677918)))))

(declare-fun b!4495770 () Bool)

(assert (=> b!4495770 false))

(declare-fun lt!1678102 () Unit!91352)

(declare-fun lt!1678108 () Unit!91352)

(assert (=> b!4495770 (= lt!1678102 lt!1678108)))

(assert (=> b!4495770 (containsKey!1666 (toList!4248 lt!1677918) key!3287)))

(assert (=> b!4495770 (= lt!1678108 (lemmaInGetKeysListThenContainsKey!426 (toList!4248 lt!1677918) key!3287))))

(declare-fun Unit!91368 () Unit!91352)

(assert (=> b!4495770 (= e!2800407 Unit!91368)))

(declare-fun b!4495771 () Bool)

(declare-fun e!2800406 () Bool)

(assert (=> b!4495771 (= e!2800406 (contains!13193 (keys!17514 lt!1677918) key!3287))))

(declare-fun b!4495772 () Bool)

(assert (=> b!4495772 (= e!2800405 (not (contains!13193 (keys!17514 lt!1677918) key!3287)))))

(declare-fun b!4495773 () Bool)

(declare-fun lt!1678109 () Unit!91352)

(assert (=> b!4495773 (= e!2800403 lt!1678109)))

(declare-fun lt!1678104 () Unit!91352)

(assert (=> b!4495773 (= lt!1678104 (lemmaContainsKeyImpliesGetValueByKeyDefined!920 (toList!4248 lt!1677918) key!3287))))

(assert (=> b!4495773 (isDefined!8323 (getValueByKey!1016 (toList!4248 lt!1677918) key!3287))))

(declare-fun lt!1678107 () Unit!91352)

(assert (=> b!4495773 (= lt!1678107 lt!1678104)))

(assert (=> b!4495773 (= lt!1678109 (lemmaInListThenGetKeysListContains!423 (toList!4248 lt!1677918) key!3287))))

(assert (=> b!4495773 call!312837))

(declare-fun bm!312832 () Bool)

(assert (=> bm!312832 (= call!312837 (contains!13193 e!2800404 key!3287))))

(declare-fun c!766022 () Bool)

(assert (=> bm!312832 (= c!766022 c!766024)))

(declare-fun b!4495774 () Bool)

(assert (=> b!4495774 (= e!2800404 (keys!17514 lt!1677918))))

(declare-fun b!4495775 () Bool)

(assert (=> b!4495775 (= e!2800408 e!2800406)))

(declare-fun res!1868699 () Bool)

(assert (=> b!4495775 (=> (not res!1868699) (not e!2800406))))

(assert (=> b!4495775 (= res!1868699 (isDefined!8323 (getValueByKey!1016 (toList!4248 lt!1677918) key!3287)))))

(declare-fun b!4495776 () Bool)

(declare-fun Unit!91369 () Unit!91352)

(assert (=> b!4495776 (= e!2800407 Unit!91369)))

(assert (= (and d!1378688 c!766024) b!4495773))

(assert (= (and d!1378688 (not c!766024)) b!4495768))

(assert (= (and b!4495768 c!766023) b!4495770))

(assert (= (and b!4495768 (not c!766023)) b!4495776))

(assert (= (or b!4495773 b!4495768) bm!312832))

(assert (= (and bm!312832 c!766022) b!4495769))

(assert (= (and bm!312832 (not c!766022)) b!4495774))

(assert (= (and d!1378688 res!1868700) b!4495772))

(assert (= (and d!1378688 (not res!1868698)) b!4495775))

(assert (= (and b!4495775 res!1868699) b!4495771))

(declare-fun m!5223373 () Bool)

(assert (=> b!4495773 m!5223373))

(declare-fun m!5223375 () Bool)

(assert (=> b!4495773 m!5223375))

(assert (=> b!4495773 m!5223375))

(declare-fun m!5223377 () Bool)

(assert (=> b!4495773 m!5223377))

(declare-fun m!5223379 () Bool)

(assert (=> b!4495773 m!5223379))

(assert (=> b!4495775 m!5223375))

(assert (=> b!4495775 m!5223375))

(assert (=> b!4495775 m!5223377))

(assert (=> b!4495772 m!5223307))

(assert (=> b!4495772 m!5223307))

(declare-fun m!5223381 () Bool)

(assert (=> b!4495772 m!5223381))

(assert (=> b!4495774 m!5223307))

(declare-fun m!5223383 () Bool)

(assert (=> b!4495769 m!5223383))

(declare-fun m!5223385 () Bool)

(assert (=> bm!312832 m!5223385))

(declare-fun m!5223387 () Bool)

(assert (=> d!1378688 m!5223387))

(assert (=> b!4495771 m!5223307))

(assert (=> b!4495771 m!5223307))

(assert (=> b!4495771 m!5223381))

(assert (=> b!4495770 m!5223387))

(declare-fun m!5223389 () Bool)

(assert (=> b!4495770 m!5223389))

(assert (=> b!4495525 d!1378688))

(declare-fun bs!833469 () Bool)

(declare-fun d!1378690 () Bool)

(assert (= bs!833469 (and d!1378690 d!1378622)))

(declare-fun lambda!168065 () Int)

(assert (=> bs!833469 (= lambda!168065 lambda!168049)))

(declare-fun bs!833470 () Bool)

(assert (= bs!833470 (and d!1378690 d!1378576)))

(assert (=> bs!833470 (= lambda!168065 lambda!168025)))

(declare-fun bs!833471 () Bool)

(assert (= bs!833471 (and d!1378690 start!443472)))

(assert (=> bs!833471 (= lambda!168065 lambda!168015)))

(declare-fun bs!833472 () Bool)

(assert (= bs!833472 (and d!1378690 d!1378682)))

(assert (=> bs!833472 (= lambda!168065 lambda!168063)))

(declare-fun bs!833473 () Bool)

(assert (= bs!833473 (and d!1378690 d!1378678)))

(assert (=> bs!833473 (= lambda!168065 lambda!168057)))

(declare-fun bs!833474 () Bool)

(assert (= bs!833474 (and d!1378690 d!1378652)))

(assert (=> bs!833474 (= lambda!168065 lambda!168053)))

(declare-fun bs!833475 () Bool)

(assert (= bs!833475 (and d!1378690 d!1378676)))

(assert (=> bs!833475 (= lambda!168065 lambda!168054)))

(declare-fun bs!833476 () Bool)

(assert (= bs!833476 (and d!1378690 d!1378608)))

(assert (=> bs!833476 (not (= lambda!168065 lambda!168034))))

(declare-fun bs!833477 () Bool)

(assert (= bs!833477 (and d!1378690 d!1378686)))

(assert (=> bs!833477 (= lambda!168065 lambda!168064)))

(declare-fun lt!1678110 () ListMap!3509)

(assert (=> d!1378690 (invariantList!979 (toList!4248 lt!1678110))))

(declare-fun e!2800409 () ListMap!3509)

(assert (=> d!1378690 (= lt!1678110 e!2800409)))

(declare-fun c!766025 () Bool)

(assert (=> d!1378690 (= c!766025 ((_ is Cons!50529) (toList!4247 lt!1677907)))))

(assert (=> d!1378690 (forall!10161 (toList!4247 lt!1677907) lambda!168065)))

(assert (=> d!1378690 (= (extractMap!1176 (toList!4247 lt!1677907)) lt!1678110)))

(declare-fun b!4495777 () Bool)

(assert (=> b!4495777 (= e!2800409 (addToMapMapFromBucket!647 (_2!28752 (h!56344 (toList!4247 lt!1677907))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))))))

(declare-fun b!4495778 () Bool)

(assert (=> b!4495778 (= e!2800409 (ListMap!3510 Nil!50528))))

(assert (= (and d!1378690 c!766025) b!4495777))

(assert (= (and d!1378690 (not c!766025)) b!4495778))

(declare-fun m!5223391 () Bool)

(assert (=> d!1378690 m!5223391))

(declare-fun m!5223393 () Bool)

(assert (=> d!1378690 m!5223393))

(declare-fun m!5223395 () Bool)

(assert (=> b!4495777 m!5223395))

(assert (=> b!4495777 m!5223395))

(declare-fun m!5223397 () Bool)

(assert (=> b!4495777 m!5223397))

(assert (=> b!4495525 d!1378690))

(declare-fun bs!833478 () Bool)

(declare-fun d!1378692 () Bool)

(assert (= bs!833478 (and d!1378692 d!1378622)))

(declare-fun lambda!168068 () Int)

(assert (=> bs!833478 (= lambda!168068 lambda!168049)))

(declare-fun bs!833479 () Bool)

(assert (= bs!833479 (and d!1378692 d!1378576)))

(assert (=> bs!833479 (= lambda!168068 lambda!168025)))

(declare-fun bs!833480 () Bool)

(assert (= bs!833480 (and d!1378692 start!443472)))

(assert (=> bs!833480 (= lambda!168068 lambda!168015)))

(declare-fun bs!833481 () Bool)

(assert (= bs!833481 (and d!1378692 d!1378682)))

(assert (=> bs!833481 (= lambda!168068 lambda!168063)))

(declare-fun bs!833482 () Bool)

(assert (= bs!833482 (and d!1378692 d!1378678)))

(assert (=> bs!833482 (= lambda!168068 lambda!168057)))

(declare-fun bs!833483 () Bool)

(assert (= bs!833483 (and d!1378692 d!1378652)))

(assert (=> bs!833483 (= lambda!168068 lambda!168053)))

(declare-fun bs!833484 () Bool)

(assert (= bs!833484 (and d!1378692 d!1378690)))

(assert (=> bs!833484 (= lambda!168068 lambda!168065)))

(declare-fun bs!833485 () Bool)

(assert (= bs!833485 (and d!1378692 d!1378676)))

(assert (=> bs!833485 (= lambda!168068 lambda!168054)))

(declare-fun bs!833486 () Bool)

(assert (= bs!833486 (and d!1378692 d!1378608)))

(assert (=> bs!833486 (not (= lambda!168068 lambda!168034))))

(declare-fun bs!833487 () Bool)

(assert (= bs!833487 (and d!1378692 d!1378686)))

(assert (=> bs!833487 (= lambda!168068 lambda!168064)))

(assert (=> d!1378692 (contains!13190 lm!1477 (hash!2667 hashF!1107 key!3287))))

(declare-fun lt!1678113 () Unit!91352)

(declare-fun choose!29053 (ListLongMap!2879 K!11940 Hashable!5515) Unit!91352)

(assert (=> d!1378692 (= lt!1678113 (choose!29053 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1378692 (forall!10161 (toList!4247 lm!1477) lambda!168068)))

(assert (=> d!1378692 (= (lemmaInGenMapThenLongMapContainsHash!194 lm!1477 key!3287 hashF!1107) lt!1678113)))

(declare-fun bs!833488 () Bool)

(assert (= bs!833488 d!1378692))

(assert (=> bs!833488 m!5222947))

(assert (=> bs!833488 m!5222947))

(declare-fun m!5223399 () Bool)

(assert (=> bs!833488 m!5223399))

(declare-fun m!5223401 () Bool)

(assert (=> bs!833488 m!5223401))

(declare-fun m!5223403 () Bool)

(assert (=> bs!833488 m!5223403))

(assert (=> b!4495535 d!1378692))

(declare-fun d!1378694 () Bool)

(declare-fun get!16506 (Option!11037) List!50652)

(assert (=> d!1378694 (= (apply!11857 lm!1477 hash!344) (get!16506 (getValueByKey!1017 (toList!4247 lm!1477) hash!344)))))

(declare-fun bs!833489 () Bool)

(assert (= bs!833489 d!1378694))

(declare-fun m!5223405 () Bool)

(assert (=> bs!833489 m!5223405))

(assert (=> bs!833489 m!5223405))

(declare-fun m!5223407 () Bool)

(assert (=> bs!833489 m!5223407))

(assert (=> b!4495535 d!1378694))

(declare-fun d!1378696 () Bool)

(declare-fun dynLambda!21097 (Int tuple2!50916) Bool)

(assert (=> d!1378696 (dynLambda!21097 lambda!168015 lt!1677910)))

(declare-fun lt!1678116 () Unit!91352)

(declare-fun choose!29054 (List!50653 Int tuple2!50916) Unit!91352)

(assert (=> d!1378696 (= lt!1678116 (choose!29054 (toList!4247 lm!1477) lambda!168015 lt!1677910))))

(declare-fun e!2800412 () Bool)

(assert (=> d!1378696 e!2800412))

(declare-fun res!1868703 () Bool)

(assert (=> d!1378696 (=> (not res!1868703) (not e!2800412))))

(assert (=> d!1378696 (= res!1868703 (forall!10161 (toList!4247 lm!1477) lambda!168015))))

(assert (=> d!1378696 (= (forallContained!2415 (toList!4247 lm!1477) lambda!168015 lt!1677910) lt!1678116)))

(declare-fun b!4495781 () Bool)

(assert (=> b!4495781 (= e!2800412 (contains!13189 (toList!4247 lm!1477) lt!1677910))))

(assert (= (and d!1378696 res!1868703) b!4495781))

(declare-fun b_lambda!151929 () Bool)

(assert (=> (not b_lambda!151929) (not d!1378696)))

(declare-fun m!5223409 () Bool)

(assert (=> d!1378696 m!5223409))

(declare-fun m!5223411 () Bool)

(assert (=> d!1378696 m!5223411))

(assert (=> d!1378696 m!5222949))

(assert (=> b!4495781 m!5222903))

(assert (=> b!4495535 d!1378696))

(declare-fun b!4495793 () Bool)

(declare-fun e!2800418 () List!50652)

(assert (=> b!4495793 (= e!2800418 Nil!50528)))

(declare-fun b!4495791 () Bool)

(declare-fun e!2800417 () List!50652)

(assert (=> b!4495791 (= e!2800417 e!2800418)))

(declare-fun c!766031 () Bool)

(assert (=> b!4495791 (= c!766031 ((_ is Cons!50528) lt!1677908))))

(declare-fun b!4495792 () Bool)

(assert (=> b!4495792 (= e!2800418 (Cons!50528 (h!56343 lt!1677908) (removePairForKey!747 (t!357610 lt!1677908) key!3287)))))

(declare-fun b!4495790 () Bool)

(assert (=> b!4495790 (= e!2800417 (t!357610 lt!1677908))))

(declare-fun d!1378698 () Bool)

(declare-fun lt!1678119 () List!50652)

(assert (=> d!1378698 (not (containsKey!1664 lt!1678119 key!3287))))

(assert (=> d!1378698 (= lt!1678119 e!2800417)))

(declare-fun c!766030 () Bool)

(assert (=> d!1378698 (= c!766030 (and ((_ is Cons!50528) lt!1677908) (= (_1!28751 (h!56343 lt!1677908)) key!3287)))))

(assert (=> d!1378698 (noDuplicateKeys!1120 lt!1677908)))

(assert (=> d!1378698 (= (removePairForKey!747 lt!1677908 key!3287) lt!1678119)))

(assert (= (and d!1378698 c!766030) b!4495790))

(assert (= (and d!1378698 (not c!766030)) b!4495791))

(assert (= (and b!4495791 c!766031) b!4495792))

(assert (= (and b!4495791 (not c!766031)) b!4495793))

(declare-fun m!5223413 () Bool)

(assert (=> b!4495792 m!5223413))

(declare-fun m!5223415 () Bool)

(assert (=> d!1378698 m!5223415))

(declare-fun m!5223417 () Bool)

(assert (=> d!1378698 m!5223417))

(assert (=> b!4495535 d!1378698))

(declare-fun d!1378700 () Bool)

(declare-fun e!2800423 () Bool)

(assert (=> d!1378700 e!2800423))

(declare-fun res!1868706 () Bool)

(assert (=> d!1378700 (=> res!1868706 e!2800423)))

(declare-fun lt!1678130 () Bool)

(assert (=> d!1378700 (= res!1868706 (not lt!1678130))))

(declare-fun lt!1678128 () Bool)

(assert (=> d!1378700 (= lt!1678130 lt!1678128)))

(declare-fun lt!1678131 () Unit!91352)

(declare-fun e!2800424 () Unit!91352)

(assert (=> d!1378700 (= lt!1678131 e!2800424)))

(declare-fun c!766034 () Bool)

(assert (=> d!1378700 (= c!766034 lt!1678128)))

(declare-fun containsKey!1668 (List!50653 (_ BitVec 64)) Bool)

(assert (=> d!1378700 (= lt!1678128 (containsKey!1668 (toList!4247 lm!1477) lt!1677911))))

(assert (=> d!1378700 (= (contains!13190 lm!1477 lt!1677911) lt!1678130)))

(declare-fun b!4495800 () Bool)

(declare-fun lt!1678129 () Unit!91352)

(assert (=> b!4495800 (= e!2800424 lt!1678129)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!921 (List!50653 (_ BitVec 64)) Unit!91352)

(assert (=> b!4495800 (= lt!1678129 (lemmaContainsKeyImpliesGetValueByKeyDefined!921 (toList!4247 lm!1477) lt!1677911))))

(declare-fun isDefined!8324 (Option!11037) Bool)

(assert (=> b!4495800 (isDefined!8324 (getValueByKey!1017 (toList!4247 lm!1477) lt!1677911))))

(declare-fun b!4495801 () Bool)

(declare-fun Unit!91370 () Unit!91352)

(assert (=> b!4495801 (= e!2800424 Unit!91370)))

(declare-fun b!4495802 () Bool)

(assert (=> b!4495802 (= e!2800423 (isDefined!8324 (getValueByKey!1017 (toList!4247 lm!1477) lt!1677911)))))

(assert (= (and d!1378700 c!766034) b!4495800))

(assert (= (and d!1378700 (not c!766034)) b!4495801))

(assert (= (and d!1378700 (not res!1868706)) b!4495802))

(declare-fun m!5223419 () Bool)

(assert (=> d!1378700 m!5223419))

(declare-fun m!5223421 () Bool)

(assert (=> b!4495800 m!5223421))

(declare-fun m!5223423 () Bool)

(assert (=> b!4495800 m!5223423))

(assert (=> b!4495800 m!5223423))

(declare-fun m!5223425 () Bool)

(assert (=> b!4495800 m!5223425))

(assert (=> b!4495802 m!5223423))

(assert (=> b!4495802 m!5223423))

(assert (=> b!4495802 m!5223425))

(assert (=> b!4495535 d!1378700))

(declare-fun d!1378702 () Bool)

(declare-fun lt!1678132 () Bool)

(assert (=> d!1378702 (= lt!1678132 (select (content!8242 (toList!4247 lm!1477)) lt!1677910))))

(declare-fun e!2800426 () Bool)

(assert (=> d!1378702 (= lt!1678132 e!2800426)))

(declare-fun res!1868707 () Bool)

(assert (=> d!1378702 (=> (not res!1868707) (not e!2800426))))

(assert (=> d!1378702 (= res!1868707 ((_ is Cons!50529) (toList!4247 lm!1477)))))

(assert (=> d!1378702 (= (contains!13189 (toList!4247 lm!1477) lt!1677910) lt!1678132)))

(declare-fun b!4495803 () Bool)

(declare-fun e!2800425 () Bool)

(assert (=> b!4495803 (= e!2800426 e!2800425)))

(declare-fun res!1868708 () Bool)

(assert (=> b!4495803 (=> res!1868708 e!2800425)))

(assert (=> b!4495803 (= res!1868708 (= (h!56344 (toList!4247 lm!1477)) lt!1677910))))

(declare-fun b!4495804 () Bool)

(assert (=> b!4495804 (= e!2800425 (contains!13189 (t!357611 (toList!4247 lm!1477)) lt!1677910))))

(assert (= (and d!1378702 res!1868707) b!4495803))

(assert (= (and b!4495803 (not res!1868708)) b!4495804))

(declare-fun m!5223427 () Bool)

(assert (=> d!1378702 m!5223427))

(declare-fun m!5223429 () Bool)

(assert (=> d!1378702 m!5223429))

(assert (=> b!4495804 m!5222885))

(assert (=> b!4495535 d!1378702))

(declare-fun d!1378704 () Bool)

(assert (=> d!1378704 (contains!13189 (toList!4247 lm!1477) (tuple2!50917 hash!344 lt!1677908))))

(declare-fun lt!1678135 () Unit!91352)

(declare-fun choose!29055 (List!50653 (_ BitVec 64) List!50652) Unit!91352)

(assert (=> d!1378704 (= lt!1678135 (choose!29055 (toList!4247 lm!1477) hash!344 lt!1677908))))

(declare-fun e!2800429 () Bool)

(assert (=> d!1378704 e!2800429))

(declare-fun res!1868711 () Bool)

(assert (=> d!1378704 (=> (not res!1868711) (not e!2800429))))

(declare-fun isStrictlySorted!393 (List!50653) Bool)

(assert (=> d!1378704 (= res!1868711 (isStrictlySorted!393 (toList!4247 lm!1477)))))

(assert (=> d!1378704 (= (lemmaGetValueByKeyImpliesContainsTuple!632 (toList!4247 lm!1477) hash!344 lt!1677908) lt!1678135)))

(declare-fun b!4495807 () Bool)

(assert (=> b!4495807 (= e!2800429 (= (getValueByKey!1017 (toList!4247 lm!1477) hash!344) (Some!11036 lt!1677908)))))

(assert (= (and d!1378704 res!1868711) b!4495807))

(declare-fun m!5223431 () Bool)

(assert (=> d!1378704 m!5223431))

(declare-fun m!5223433 () Bool)

(assert (=> d!1378704 m!5223433))

(declare-fun m!5223435 () Bool)

(assert (=> d!1378704 m!5223435))

(assert (=> b!4495807 m!5223405))

(assert (=> b!4495535 d!1378704))

(declare-fun d!1378706 () Bool)

(declare-fun e!2800430 () Bool)

(assert (=> d!1378706 e!2800430))

(declare-fun res!1868712 () Bool)

(assert (=> d!1378706 (=> res!1868712 e!2800430)))

(declare-fun lt!1678138 () Bool)

(assert (=> d!1378706 (= res!1868712 (not lt!1678138))))

(declare-fun lt!1678136 () Bool)

(assert (=> d!1378706 (= lt!1678138 lt!1678136)))

(declare-fun lt!1678139 () Unit!91352)

(declare-fun e!2800431 () Unit!91352)

(assert (=> d!1378706 (= lt!1678139 e!2800431)))

(declare-fun c!766035 () Bool)

(assert (=> d!1378706 (= c!766035 lt!1678136)))

(assert (=> d!1378706 (= lt!1678136 (containsKey!1668 (toList!4247 lt!1677907) hash!344))))

(assert (=> d!1378706 (= (contains!13190 lt!1677907 hash!344) lt!1678138)))

(declare-fun b!4495808 () Bool)

(declare-fun lt!1678137 () Unit!91352)

(assert (=> b!4495808 (= e!2800431 lt!1678137)))

(assert (=> b!4495808 (= lt!1678137 (lemmaContainsKeyImpliesGetValueByKeyDefined!921 (toList!4247 lt!1677907) hash!344))))

(assert (=> b!4495808 (isDefined!8324 (getValueByKey!1017 (toList!4247 lt!1677907) hash!344))))

(declare-fun b!4495809 () Bool)

(declare-fun Unit!91371 () Unit!91352)

(assert (=> b!4495809 (= e!2800431 Unit!91371)))

(declare-fun b!4495810 () Bool)

(assert (=> b!4495810 (= e!2800430 (isDefined!8324 (getValueByKey!1017 (toList!4247 lt!1677907) hash!344)))))

(assert (= (and d!1378706 c!766035) b!4495808))

(assert (= (and d!1378706 (not c!766035)) b!4495809))

(assert (= (and d!1378706 (not res!1868712)) b!4495810))

(declare-fun m!5223437 () Bool)

(assert (=> d!1378706 m!5223437))

(declare-fun m!5223439 () Bool)

(assert (=> b!4495808 m!5223439))

(declare-fun m!5223441 () Bool)

(assert (=> b!4495808 m!5223441))

(assert (=> b!4495808 m!5223441))

(declare-fun m!5223443 () Bool)

(assert (=> b!4495808 m!5223443))

(assert (=> b!4495810 m!5223441))

(assert (=> b!4495810 m!5223441))

(assert (=> b!4495810 m!5223443))

(assert (=> b!4495524 d!1378706))

(declare-fun d!1378708 () Bool)

(declare-fun tail!7658 (List!50653) List!50653)

(assert (=> d!1378708 (= (tail!7656 lm!1477) (ListLongMap!2880 (tail!7658 (toList!4247 lm!1477))))))

(declare-fun bs!833490 () Bool)

(assert (= bs!833490 d!1378708))

(declare-fun m!5223445 () Bool)

(assert (=> bs!833490 m!5223445))

(assert (=> b!4495524 d!1378708))

(declare-fun d!1378710 () Bool)

(declare-fun res!1868717 () Bool)

(declare-fun e!2800436 () Bool)

(assert (=> d!1378710 (=> res!1868717 e!2800436)))

(assert (=> d!1378710 (= res!1868717 ((_ is Nil!50529) (toList!4247 lm!1477)))))

(assert (=> d!1378710 (= (forall!10161 (toList!4247 lm!1477) lambda!168015) e!2800436)))

(declare-fun b!4495815 () Bool)

(declare-fun e!2800437 () Bool)

(assert (=> b!4495815 (= e!2800436 e!2800437)))

(declare-fun res!1868718 () Bool)

(assert (=> b!4495815 (=> (not res!1868718) (not e!2800437))))

(assert (=> b!4495815 (= res!1868718 (dynLambda!21097 lambda!168015 (h!56344 (toList!4247 lm!1477))))))

(declare-fun b!4495816 () Bool)

(assert (=> b!4495816 (= e!2800437 (forall!10161 (t!357611 (toList!4247 lm!1477)) lambda!168015))))

(assert (= (and d!1378710 (not res!1868717)) b!4495815))

(assert (= (and b!4495815 res!1868718) b!4495816))

(declare-fun b_lambda!151931 () Bool)

(assert (=> (not b_lambda!151931) (not b!4495815)))

(declare-fun m!5223447 () Bool)

(assert (=> b!4495815 m!5223447))

(declare-fun m!5223449 () Bool)

(assert (=> b!4495816 m!5223449))

(assert (=> start!443472 d!1378710))

(declare-fun d!1378712 () Bool)

(assert (=> d!1378712 (= (inv!66124 lm!1477) (isStrictlySorted!393 (toList!4247 lm!1477)))))

(declare-fun bs!833491 () Bool)

(assert (= bs!833491 d!1378712))

(assert (=> bs!833491 m!5223435))

(assert (=> start!443472 d!1378712))

(declare-fun d!1378714 () Bool)

(declare-fun res!1868723 () Bool)

(declare-fun e!2800442 () Bool)

(assert (=> d!1378714 (=> res!1868723 e!2800442)))

(assert (=> d!1378714 (= res!1868723 (and ((_ is Cons!50528) lt!1677908) (= (_1!28751 (h!56343 lt!1677908)) key!3287)))))

(assert (=> d!1378714 (= (containsKey!1664 lt!1677908 key!3287) e!2800442)))

(declare-fun b!4495821 () Bool)

(declare-fun e!2800443 () Bool)

(assert (=> b!4495821 (= e!2800442 e!2800443)))

(declare-fun res!1868724 () Bool)

(assert (=> b!4495821 (=> (not res!1868724) (not e!2800443))))

(assert (=> b!4495821 (= res!1868724 ((_ is Cons!50528) lt!1677908))))

(declare-fun b!4495822 () Bool)

(assert (=> b!4495822 (= e!2800443 (containsKey!1664 (t!357610 lt!1677908) key!3287))))

(assert (= (and d!1378714 (not res!1868723)) b!4495821))

(assert (= (and b!4495821 res!1868724) b!4495822))

(declare-fun m!5223451 () Bool)

(assert (=> b!4495822 m!5223451))

(assert (=> b!4495534 d!1378714))

(declare-fun d!1378716 () Bool)

(assert (=> d!1378716 (= (apply!11857 lt!1677907 hash!344) (get!16506 (getValueByKey!1017 (toList!4247 lt!1677907) hash!344)))))

(declare-fun bs!833492 () Bool)

(assert (= bs!833492 d!1378716))

(assert (=> bs!833492 m!5223441))

(assert (=> bs!833492 m!5223441))

(declare-fun m!5223453 () Bool)

(assert (=> bs!833492 m!5223453))

(assert (=> b!4495523 d!1378716))

(declare-fun d!1378718 () Bool)

(assert (=> d!1378718 (= (eq!577 lt!1677916 lt!1677917) (= (content!8243 (toList!4248 lt!1677916)) (content!8243 (toList!4248 lt!1677917))))))

(declare-fun bs!833493 () Bool)

(assert (= bs!833493 d!1378718))

(assert (=> bs!833493 m!5223147))

(assert (=> bs!833493 m!5223145))

(assert (=> b!4495522 d!1378718))

(declare-fun d!1378720 () Bool)

(declare-fun res!1868731 () Bool)

(declare-fun e!2800450 () Bool)

(assert (=> d!1378720 (=> res!1868731 e!2800450)))

(declare-fun e!2800452 () Bool)

(assert (=> d!1378720 (= res!1868731 e!2800452)))

(declare-fun res!1868733 () Bool)

(assert (=> d!1378720 (=> (not res!1868733) (not e!2800452))))

(assert (=> d!1378720 (= res!1868733 ((_ is Cons!50529) (t!357611 (toList!4247 lm!1477))))))

(assert (=> d!1378720 (= (containsKeyBiggerList!100 (t!357611 (toList!4247 lm!1477)) key!3287) e!2800450)))

(declare-fun b!4495829 () Bool)

(assert (=> b!4495829 (= e!2800452 (containsKey!1664 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477)))) key!3287))))

(declare-fun b!4495830 () Bool)

(declare-fun e!2800451 () Bool)

(assert (=> b!4495830 (= e!2800450 e!2800451)))

(declare-fun res!1868732 () Bool)

(assert (=> b!4495830 (=> (not res!1868732) (not e!2800451))))

(assert (=> b!4495830 (= res!1868732 ((_ is Cons!50529) (t!357611 (toList!4247 lm!1477))))))

(declare-fun b!4495831 () Bool)

(assert (=> b!4495831 (= e!2800451 (containsKeyBiggerList!100 (t!357611 (t!357611 (toList!4247 lm!1477))) key!3287))))

(assert (= (and d!1378720 res!1868733) b!4495829))

(assert (= (and d!1378720 (not res!1868731)) b!4495830))

(assert (= (and b!4495830 res!1868732) b!4495831))

(declare-fun m!5223455 () Bool)

(assert (=> b!4495829 m!5223455))

(declare-fun m!5223457 () Bool)

(assert (=> b!4495831 m!5223457))

(assert (=> b!4495532 d!1378720))

(declare-fun d!1378722 () Bool)

(declare-fun res!1868734 () Bool)

(declare-fun e!2800453 () Bool)

(assert (=> d!1378722 (=> res!1868734 e!2800453)))

(declare-fun e!2800455 () Bool)

(assert (=> d!1378722 (= res!1868734 e!2800455)))

(declare-fun res!1868736 () Bool)

(assert (=> d!1378722 (=> (not res!1868736) (not e!2800455))))

(assert (=> d!1378722 (= res!1868736 ((_ is Cons!50529) (toList!4247 lt!1677907)))))

(assert (=> d!1378722 (= (containsKeyBiggerList!100 (toList!4247 lt!1677907) key!3287) e!2800453)))

(declare-fun b!4495832 () Bool)

(assert (=> b!4495832 (= e!2800455 (containsKey!1664 (_2!28752 (h!56344 (toList!4247 lt!1677907))) key!3287))))

(declare-fun b!4495833 () Bool)

(declare-fun e!2800454 () Bool)

(assert (=> b!4495833 (= e!2800453 e!2800454)))

(declare-fun res!1868735 () Bool)

(assert (=> b!4495833 (=> (not res!1868735) (not e!2800454))))

(assert (=> b!4495833 (= res!1868735 ((_ is Cons!50529) (toList!4247 lt!1677907)))))

(declare-fun b!4495834 () Bool)

(assert (=> b!4495834 (= e!2800454 (containsKeyBiggerList!100 (t!357611 (toList!4247 lt!1677907)) key!3287))))

(assert (= (and d!1378722 res!1868736) b!4495832))

(assert (= (and d!1378722 (not res!1868734)) b!4495833))

(assert (= (and b!4495833 res!1868735) b!4495834))

(declare-fun m!5223459 () Bool)

(assert (=> b!4495832 m!5223459))

(declare-fun m!5223461 () Bool)

(assert (=> b!4495834 m!5223461))

(assert (=> b!4495532 d!1378722))

(declare-fun bs!833494 () Bool)

(declare-fun d!1378724 () Bool)

(assert (= bs!833494 (and d!1378724 d!1378622)))

(declare-fun lambda!168071 () Int)

(assert (=> bs!833494 (= lambda!168071 lambda!168049)))

(declare-fun bs!833495 () Bool)

(assert (= bs!833495 (and d!1378724 d!1378576)))

(assert (=> bs!833495 (= lambda!168071 lambda!168025)))

(declare-fun bs!833496 () Bool)

(assert (= bs!833496 (and d!1378724 start!443472)))

(assert (=> bs!833496 (= lambda!168071 lambda!168015)))

(declare-fun bs!833497 () Bool)

(assert (= bs!833497 (and d!1378724 d!1378692)))

(assert (=> bs!833497 (= lambda!168071 lambda!168068)))

(declare-fun bs!833498 () Bool)

(assert (= bs!833498 (and d!1378724 d!1378682)))

(assert (=> bs!833498 (= lambda!168071 lambda!168063)))

(declare-fun bs!833499 () Bool)

(assert (= bs!833499 (and d!1378724 d!1378678)))

(assert (=> bs!833499 (= lambda!168071 lambda!168057)))

(declare-fun bs!833500 () Bool)

(assert (= bs!833500 (and d!1378724 d!1378652)))

(assert (=> bs!833500 (= lambda!168071 lambda!168053)))

(declare-fun bs!833501 () Bool)

(assert (= bs!833501 (and d!1378724 d!1378690)))

(assert (=> bs!833501 (= lambda!168071 lambda!168065)))

(declare-fun bs!833502 () Bool)

(assert (= bs!833502 (and d!1378724 d!1378676)))

(assert (=> bs!833502 (= lambda!168071 lambda!168054)))

(declare-fun bs!833503 () Bool)

(assert (= bs!833503 (and d!1378724 d!1378608)))

(assert (=> bs!833503 (not (= lambda!168071 lambda!168034))))

(declare-fun bs!833504 () Bool)

(assert (= bs!833504 (and d!1378724 d!1378686)))

(assert (=> bs!833504 (= lambda!168071 lambda!168064)))

(assert (=> d!1378724 (containsKeyBiggerList!100 (toList!4247 lt!1677907) key!3287)))

(declare-fun lt!1678142 () Unit!91352)

(declare-fun choose!29056 (ListLongMap!2879 K!11940 Hashable!5515) Unit!91352)

(assert (=> d!1378724 (= lt!1678142 (choose!29056 lt!1677907 key!3287 hashF!1107))))

(assert (=> d!1378724 (forall!10161 (toList!4247 lt!1677907) lambda!168071)))

(assert (=> d!1378724 (= (lemmaInLongMapThenContainsKeyBiggerList!36 lt!1677907 key!3287 hashF!1107) lt!1678142)))

(declare-fun bs!833505 () Bool)

(assert (= bs!833505 d!1378724))

(assert (=> bs!833505 m!5222899))

(declare-fun m!5223463 () Bool)

(assert (=> bs!833505 m!5223463))

(declare-fun m!5223465 () Bool)

(assert (=> bs!833505 m!5223465))

(assert (=> b!4495532 d!1378724))

(declare-fun d!1378726 () Bool)

(declare-fun hash!2671 (Hashable!5515 K!11940) (_ BitVec 64))

(assert (=> d!1378726 (= (hash!2667 hashF!1107 key!3287) (hash!2671 hashF!1107 key!3287))))

(declare-fun bs!833506 () Bool)

(assert (= bs!833506 d!1378726))

(declare-fun m!5223467 () Bool)

(assert (=> bs!833506 m!5223467))

(assert (=> b!4495521 d!1378726))

(declare-fun b!4495839 () Bool)

(declare-fun tp!1337405 () Bool)

(declare-fun e!2800458 () Bool)

(assert (=> b!4495839 (= e!2800458 (and tp_is_empty!27757 tp_is_empty!27759 tp!1337405))))

(assert (=> b!4495517 (= tp!1337393 e!2800458)))

(assert (= (and b!4495517 ((_ is Cons!50528) (t!357610 newBucket!178))) b!4495839))

(declare-fun b!4495844 () Bool)

(declare-fun e!2800461 () Bool)

(declare-fun tp!1337410 () Bool)

(declare-fun tp!1337411 () Bool)

(assert (=> b!4495844 (= e!2800461 (and tp!1337410 tp!1337411))))

(assert (=> b!4495533 (= tp!1337392 e!2800461)))

(assert (= (and b!4495533 ((_ is Cons!50529) (toList!4247 lm!1477))) b!4495844))

(declare-fun b_lambda!151933 () Bool)

(assert (= b_lambda!151929 (or start!443472 b_lambda!151933)))

(declare-fun bs!833507 () Bool)

(declare-fun d!1378728 () Bool)

(assert (= bs!833507 (and d!1378728 start!443472)))

(assert (=> bs!833507 (= (dynLambda!21097 lambda!168015 lt!1677910) (noDuplicateKeys!1120 (_2!28752 lt!1677910)))))

(declare-fun m!5223469 () Bool)

(assert (=> bs!833507 m!5223469))

(assert (=> d!1378696 d!1378728))

(declare-fun b_lambda!151935 () Bool)

(assert (= b_lambda!151931 (or start!443472 b_lambda!151935)))

(declare-fun bs!833508 () Bool)

(declare-fun d!1378730 () Bool)

(assert (= bs!833508 (and d!1378730 start!443472)))

(assert (=> bs!833508 (= (dynLambda!21097 lambda!168015 (h!56344 (toList!4247 lm!1477))) (noDuplicateKeys!1120 (_2!28752 (h!56344 (toList!4247 lm!1477)))))))

(declare-fun m!5223471 () Bool)

(assert (=> bs!833508 m!5223471))

(assert (=> b!4495815 d!1378730))

(check-sat (not b!4495831) (not b!4495759) (not b_lambda!151933) (not b!4495564) (not b!4495758) (not bm!312825) (not b!4495832) (not b!4495800) (not b!4495777) (not b!4495607) (not b!4495761) (not b!4495562) (not b!4495760) (not d!1378698) (not d!1378684) (not b!4495706) (not b!4495839) (not d!1378724) (not d!1378646) (not b!4495563) (not b!4495804) (not b!4495566) (not b!4495614) (not b!4495834) (not d!1378564) (not bm!312832) (not d!1378652) (not d!1378696) (not b!4495771) (not b!4495808) (not b!4495772) (not b!4495565) (not d!1378694) (not bs!833508) (not b!4495822) (not b!4495740) (not d!1378608) (not d!1378676) (not b!4495774) (not d!1378688) (not b!4495751) (not b!4495707) (not b!4495792) tp_is_empty!27759 (not d!1378718) (not d!1378622) (not b!4495705) (not d!1378680) (not b!4495781) (not d!1378706) (not d!1378576) (not d!1378702) (not b!4495802) (not d!1378610) (not d!1378658) (not d!1378648) (not b!4495766) (not b!4495810) (not b!4495770) (not d!1378700) (not b_lambda!151935) (not b!4495769) (not d!1378686) (not b!4495568) (not d!1378712) (not b!4495762) (not b!4495764) (not b!4495651) (not b!4495567) (not d!1378716) (not b!4495650) (not bs!833507) (not d!1378726) (not d!1378670) (not d!1378566) (not bm!312831) (not b!4495807) (not d!1378604) (not b!4495763) tp_is_empty!27757 (not d!1378708) (not b!4495816) (not d!1378682) (not d!1378704) (not b!4495829) (not d!1378618) (not d!1378678) (not b!4495844) (not b!4495773) (not d!1378690) (not b!4495775) (not b!4495587) (not d!1378692) (not b!4495608))
(check-sat)
(get-model)

(declare-fun d!1378732 () Bool)

(declare-fun c!766038 () Bool)

(assert (=> d!1378732 (= c!766038 ((_ is Nil!50529) (t!357611 (toList!4247 lm!1477))))))

(declare-fun e!2800464 () (InoxSet tuple2!50916))

(assert (=> d!1378732 (= (content!8242 (t!357611 (toList!4247 lm!1477))) e!2800464)))

(declare-fun b!4495849 () Bool)

(assert (=> b!4495849 (= e!2800464 ((as const (Array tuple2!50916 Bool)) false))))

(declare-fun b!4495850 () Bool)

(assert (=> b!4495850 (= e!2800464 ((_ map or) (store ((as const (Array tuple2!50916 Bool)) false) (h!56344 (t!357611 (toList!4247 lm!1477))) true) (content!8242 (t!357611 (t!357611 (toList!4247 lm!1477))))))))

(assert (= (and d!1378732 c!766038) b!4495849))

(assert (= (and d!1378732 (not c!766038)) b!4495850))

(declare-fun m!5223473 () Bool)

(assert (=> b!4495850 m!5223473))

(declare-fun m!5223475 () Bool)

(assert (=> b!4495850 m!5223475))

(assert (=> d!1378604 d!1378732))

(declare-fun d!1378734 () Bool)

(assert (=> d!1378734 (= (isEmpty!28580 (toList!4247 lm!1477)) ((_ is Nil!50529) (toList!4247 lm!1477)))))

(assert (=> d!1378564 d!1378734))

(declare-fun c!766041 () Bool)

(declare-fun d!1378738 () Bool)

(assert (=> d!1378738 (= c!766041 ((_ is Nil!50528) (toList!4248 (extractMap!1176 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))))))

(declare-fun e!2800469 () (InoxSet tuple2!50914))

(assert (=> d!1378738 (= (content!8243 (toList!4248 (extractMap!1176 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) e!2800469)))

(declare-fun b!4495857 () Bool)

(assert (=> b!4495857 (= e!2800469 ((as const (Array tuple2!50914 Bool)) false))))

(declare-fun b!4495858 () Bool)

(assert (=> b!4495858 (= e!2800469 ((_ map or) (store ((as const (Array tuple2!50914 Bool)) false) (h!56343 (toList!4248 (extractMap!1176 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) true) (content!8243 (t!357610 (toList!4248 (extractMap!1176 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))))))))

(assert (= (and d!1378738 c!766041) b!4495857))

(assert (= (and d!1378738 (not c!766041)) b!4495858))

(declare-fun m!5223481 () Bool)

(assert (=> b!4495858 m!5223481))

(declare-fun m!5223483 () Bool)

(assert (=> b!4495858 m!5223483))

(assert (=> d!1378648 d!1378738))

(declare-fun d!1378744 () Bool)

(declare-fun c!766042 () Bool)

(assert (=> d!1378744 (= c!766042 ((_ is Nil!50528) (toList!4248 (-!346 lt!1677918 key!3287))))))

(declare-fun e!2800470 () (InoxSet tuple2!50914))

(assert (=> d!1378744 (= (content!8243 (toList!4248 (-!346 lt!1677918 key!3287))) e!2800470)))

(declare-fun b!4495859 () Bool)

(assert (=> b!4495859 (= e!2800470 ((as const (Array tuple2!50914 Bool)) false))))

(declare-fun b!4495860 () Bool)

(assert (=> b!4495860 (= e!2800470 ((_ map or) (store ((as const (Array tuple2!50914 Bool)) false) (h!56343 (toList!4248 (-!346 lt!1677918 key!3287))) true) (content!8243 (t!357610 (toList!4248 (-!346 lt!1677918 key!3287))))))))

(assert (= (and d!1378744 c!766042) b!4495859))

(assert (= (and d!1378744 (not c!766042)) b!4495860))

(declare-fun m!5223485 () Bool)

(assert (=> b!4495860 m!5223485))

(declare-fun m!5223487 () Bool)

(assert (=> b!4495860 m!5223487))

(assert (=> d!1378648 d!1378744))

(declare-fun d!1378746 () Bool)

(declare-fun lt!1678146 () Bool)

(assert (=> d!1378746 (= lt!1678146 (select (content!8244 (keys!17514 lt!1677916)) key!3287))))

(declare-fun e!2800481 () Bool)

(assert (=> d!1378746 (= lt!1678146 e!2800481)))

(declare-fun res!1868749 () Bool)

(assert (=> d!1378746 (=> (not res!1868749) (not e!2800481))))

(assert (=> d!1378746 (= res!1868749 ((_ is Cons!50531) (keys!17514 lt!1677916)))))

(assert (=> d!1378746 (= (contains!13193 (keys!17514 lt!1677916) key!3287) lt!1678146)))

(declare-fun b!4495871 () Bool)

(declare-fun e!2800482 () Bool)

(assert (=> b!4495871 (= e!2800481 e!2800482)))

(declare-fun res!1868750 () Bool)

(assert (=> b!4495871 (=> res!1868750 e!2800482)))

(assert (=> b!4495871 (= res!1868750 (= (h!56348 (keys!17514 lt!1677916)) key!3287))))

(declare-fun b!4495872 () Bool)

(assert (=> b!4495872 (= e!2800482 (contains!13193 (t!357613 (keys!17514 lt!1677916)) key!3287))))

(assert (= (and d!1378746 res!1868749) b!4495871))

(assert (= (and b!4495871 (not res!1868750)) b!4495872))

(assert (=> d!1378746 m!5222993))

(declare-fun m!5223491 () Bool)

(assert (=> d!1378746 m!5223491))

(declare-fun m!5223493 () Bool)

(assert (=> d!1378746 m!5223493))

(declare-fun m!5223495 () Bool)

(assert (=> b!4495872 m!5223495))

(assert (=> b!4495564 d!1378746))

(declare-fun b!4495900 () Bool)

(assert (=> b!4495900 true))

(declare-fun d!1378750 () Bool)

(declare-fun e!2800495 () Bool)

(assert (=> d!1378750 e!2800495))

(declare-fun res!1868757 () Bool)

(assert (=> d!1378750 (=> (not res!1868757) (not e!2800495))))

(declare-fun lt!1678149 () List!50655)

(declare-fun noDuplicate!723 (List!50655) Bool)

(assert (=> d!1378750 (= res!1868757 (noDuplicate!723 lt!1678149))))

(assert (=> d!1378750 (= lt!1678149 (getKeysList!427 (toList!4248 lt!1677916)))))

(assert (=> d!1378750 (= (keys!17514 lt!1677916) lt!1678149)))

(declare-fun b!4495899 () Bool)

(declare-fun res!1868759 () Bool)

(assert (=> b!4495899 (=> (not res!1868759) (not e!2800495))))

(declare-fun length!302 (List!50655) Int)

(declare-fun length!303 (List!50652) Int)

(assert (=> b!4495899 (= res!1868759 (= (length!302 lt!1678149) (length!303 (toList!4248 lt!1677916))))))

(declare-fun res!1868758 () Bool)

(assert (=> b!4495900 (=> (not res!1868758) (not e!2800495))))

(declare-fun lambda!168076 () Int)

(declare-fun forall!10164 (List!50655 Int) Bool)

(assert (=> b!4495900 (= res!1868758 (forall!10164 lt!1678149 lambda!168076))))

(declare-fun b!4495901 () Bool)

(declare-fun lambda!168077 () Int)

(declare-fun map!11094 (List!50652 Int) List!50655)

(assert (=> b!4495901 (= e!2800495 (= (content!8244 lt!1678149) (content!8244 (map!11094 (toList!4248 lt!1677916) lambda!168077))))))

(assert (= (and d!1378750 res!1868757) b!4495899))

(assert (= (and b!4495899 res!1868759) b!4495900))

(assert (= (and b!4495900 res!1868758) b!4495901))

(declare-fun m!5223501 () Bool)

(assert (=> d!1378750 m!5223501))

(assert (=> d!1378750 m!5222997))

(declare-fun m!5223503 () Bool)

(assert (=> b!4495899 m!5223503))

(declare-fun m!5223505 () Bool)

(assert (=> b!4495899 m!5223505))

(declare-fun m!5223507 () Bool)

(assert (=> b!4495900 m!5223507))

(declare-fun m!5223509 () Bool)

(assert (=> b!4495901 m!5223509))

(declare-fun m!5223511 () Bool)

(assert (=> b!4495901 m!5223511))

(assert (=> b!4495901 m!5223511))

(declare-fun m!5223513 () Bool)

(assert (=> b!4495901 m!5223513))

(assert (=> b!4495564 d!1378750))

(declare-fun b!4495927 () Bool)

(declare-fun e!2800509 () Option!11037)

(assert (=> b!4495927 (= e!2800509 (getValueByKey!1017 (t!357611 (toList!4247 lm!1477)) hash!344))))

(declare-fun d!1378756 () Bool)

(declare-fun c!766062 () Bool)

(assert (=> d!1378756 (= c!766062 (and ((_ is Cons!50529) (toList!4247 lm!1477)) (= (_1!28752 (h!56344 (toList!4247 lm!1477))) hash!344)))))

(declare-fun e!2800508 () Option!11037)

(assert (=> d!1378756 (= (getValueByKey!1017 (toList!4247 lm!1477) hash!344) e!2800508)))

(declare-fun b!4495925 () Bool)

(assert (=> b!4495925 (= e!2800508 (Some!11036 (_2!28752 (h!56344 (toList!4247 lm!1477)))))))

(declare-fun b!4495928 () Bool)

(assert (=> b!4495928 (= e!2800509 None!11036)))

(declare-fun b!4495926 () Bool)

(assert (=> b!4495926 (= e!2800508 e!2800509)))

(declare-fun c!766063 () Bool)

(assert (=> b!4495926 (= c!766063 (and ((_ is Cons!50529) (toList!4247 lm!1477)) (not (= (_1!28752 (h!56344 (toList!4247 lm!1477))) hash!344))))))

(assert (= (and d!1378756 c!766062) b!4495925))

(assert (= (and d!1378756 (not c!766062)) b!4495926))

(assert (= (and b!4495926 c!766063) b!4495927))

(assert (= (and b!4495926 (not c!766063)) b!4495928))

(declare-fun m!5223527 () Bool)

(assert (=> b!4495927 m!5223527))

(assert (=> b!4495807 d!1378756))

(declare-fun d!1378760 () Bool)

(declare-fun noDuplicatedKeys!238 (List!50652) Bool)

(assert (=> d!1378760 (= (invariantList!979 (toList!4248 lt!1678101)) (noDuplicatedKeys!238 (toList!4248 lt!1678101)))))

(declare-fun bs!833511 () Bool)

(assert (= bs!833511 d!1378760))

(declare-fun m!5223539 () Bool)

(assert (=> bs!833511 m!5223539))

(assert (=> d!1378686 d!1378760))

(declare-fun d!1378764 () Bool)

(declare-fun res!1868763 () Bool)

(declare-fun e!2800510 () Bool)

(assert (=> d!1378764 (=> res!1868763 e!2800510)))

(assert (=> d!1378764 (= res!1868763 ((_ is Nil!50529) (t!357611 (toList!4247 lm!1477))))))

(assert (=> d!1378764 (= (forall!10161 (t!357611 (toList!4247 lm!1477)) lambda!168064) e!2800510)))

(declare-fun b!4495929 () Bool)

(declare-fun e!2800511 () Bool)

(assert (=> b!4495929 (= e!2800510 e!2800511)))

(declare-fun res!1868764 () Bool)

(assert (=> b!4495929 (=> (not res!1868764) (not e!2800511))))

(assert (=> b!4495929 (= res!1868764 (dynLambda!21097 lambda!168064 (h!56344 (t!357611 (toList!4247 lm!1477)))))))

(declare-fun b!4495930 () Bool)

(assert (=> b!4495930 (= e!2800511 (forall!10161 (t!357611 (t!357611 (toList!4247 lm!1477))) lambda!168064))))

(assert (= (and d!1378764 (not res!1868763)) b!4495929))

(assert (= (and b!4495929 res!1868764) b!4495930))

(declare-fun b_lambda!151937 () Bool)

(assert (=> (not b_lambda!151937) (not b!4495929)))

(declare-fun m!5223541 () Bool)

(assert (=> b!4495929 m!5223541))

(declare-fun m!5223543 () Bool)

(assert (=> b!4495930 m!5223543))

(assert (=> d!1378686 d!1378764))

(declare-fun lt!1678158 () Bool)

(declare-fun d!1378766 () Bool)

(assert (=> d!1378766 (= lt!1678158 (select (content!8242 (toList!4247 lm!1477)) (tuple2!50917 hash!344 lt!1677908)))))

(declare-fun e!2800513 () Bool)

(assert (=> d!1378766 (= lt!1678158 e!2800513)))

(declare-fun res!1868765 () Bool)

(assert (=> d!1378766 (=> (not res!1868765) (not e!2800513))))

(assert (=> d!1378766 (= res!1868765 ((_ is Cons!50529) (toList!4247 lm!1477)))))

(assert (=> d!1378766 (= (contains!13189 (toList!4247 lm!1477) (tuple2!50917 hash!344 lt!1677908)) lt!1678158)))

(declare-fun b!4495931 () Bool)

(declare-fun e!2800512 () Bool)

(assert (=> b!4495931 (= e!2800513 e!2800512)))

(declare-fun res!1868766 () Bool)

(assert (=> b!4495931 (=> res!1868766 e!2800512)))

(assert (=> b!4495931 (= res!1868766 (= (h!56344 (toList!4247 lm!1477)) (tuple2!50917 hash!344 lt!1677908)))))

(declare-fun b!4495932 () Bool)

(assert (=> b!4495932 (= e!2800512 (contains!13189 (t!357611 (toList!4247 lm!1477)) (tuple2!50917 hash!344 lt!1677908)))))

(assert (= (and d!1378766 res!1868765) b!4495931))

(assert (= (and b!4495931 (not res!1868766)) b!4495932))

(assert (=> d!1378766 m!5223427))

(declare-fun m!5223545 () Bool)

(assert (=> d!1378766 m!5223545))

(declare-fun m!5223547 () Bool)

(assert (=> b!4495932 m!5223547))

(assert (=> d!1378704 d!1378766))

(declare-fun d!1378768 () Bool)

(assert (=> d!1378768 (contains!13189 (toList!4247 lm!1477) (tuple2!50917 hash!344 lt!1677908))))

(assert (=> d!1378768 true))

(declare-fun _$14!1082 () Unit!91352)

(assert (=> d!1378768 (= (choose!29055 (toList!4247 lm!1477) hash!344 lt!1677908) _$14!1082)))

(declare-fun bs!833512 () Bool)

(assert (= bs!833512 d!1378768))

(assert (=> bs!833512 m!5223431))

(assert (=> d!1378704 d!1378768))

(declare-fun d!1378770 () Bool)

(declare-fun res!1868771 () Bool)

(declare-fun e!2800518 () Bool)

(assert (=> d!1378770 (=> res!1868771 e!2800518)))

(assert (=> d!1378770 (= res!1868771 (or ((_ is Nil!50529) (toList!4247 lm!1477)) ((_ is Nil!50529) (t!357611 (toList!4247 lm!1477)))))))

(assert (=> d!1378770 (= (isStrictlySorted!393 (toList!4247 lm!1477)) e!2800518)))

(declare-fun b!4495937 () Bool)

(declare-fun e!2800519 () Bool)

(assert (=> b!4495937 (= e!2800518 e!2800519)))

(declare-fun res!1868772 () Bool)

(assert (=> b!4495937 (=> (not res!1868772) (not e!2800519))))

(assert (=> b!4495937 (= res!1868772 (bvslt (_1!28752 (h!56344 (toList!4247 lm!1477))) (_1!28752 (h!56344 (t!357611 (toList!4247 lm!1477))))))))

(declare-fun b!4495938 () Bool)

(assert (=> b!4495938 (= e!2800519 (isStrictlySorted!393 (t!357611 (toList!4247 lm!1477))))))

(assert (= (and d!1378770 (not res!1868771)) b!4495937))

(assert (= (and b!4495937 res!1868772) b!4495938))

(declare-fun m!5223549 () Bool)

(assert (=> b!4495938 m!5223549))

(assert (=> d!1378704 d!1378770))

(declare-fun d!1378772 () Bool)

(declare-fun isEmpty!28583 (Option!11037) Bool)

(assert (=> d!1378772 (= (isDefined!8324 (getValueByKey!1017 (toList!4247 lm!1477) lt!1677911)) (not (isEmpty!28583 (getValueByKey!1017 (toList!4247 lm!1477) lt!1677911))))))

(declare-fun bs!833513 () Bool)

(assert (= bs!833513 d!1378772))

(assert (=> bs!833513 m!5223423))

(declare-fun m!5223551 () Bool)

(assert (=> bs!833513 m!5223551))

(assert (=> b!4495802 d!1378772))

(declare-fun b!4495941 () Bool)

(declare-fun e!2800521 () Option!11037)

(assert (=> b!4495941 (= e!2800521 (getValueByKey!1017 (t!357611 (toList!4247 lm!1477)) lt!1677911))))

(declare-fun d!1378774 () Bool)

(declare-fun c!766064 () Bool)

(assert (=> d!1378774 (= c!766064 (and ((_ is Cons!50529) (toList!4247 lm!1477)) (= (_1!28752 (h!56344 (toList!4247 lm!1477))) lt!1677911)))))

(declare-fun e!2800520 () Option!11037)

(assert (=> d!1378774 (= (getValueByKey!1017 (toList!4247 lm!1477) lt!1677911) e!2800520)))

(declare-fun b!4495939 () Bool)

(assert (=> b!4495939 (= e!2800520 (Some!11036 (_2!28752 (h!56344 (toList!4247 lm!1477)))))))

(declare-fun b!4495942 () Bool)

(assert (=> b!4495942 (= e!2800521 None!11036)))

(declare-fun b!4495940 () Bool)

(assert (=> b!4495940 (= e!2800520 e!2800521)))

(declare-fun c!766065 () Bool)

(assert (=> b!4495940 (= c!766065 (and ((_ is Cons!50529) (toList!4247 lm!1477)) (not (= (_1!28752 (h!56344 (toList!4247 lm!1477))) lt!1677911))))))

(assert (= (and d!1378774 c!766064) b!4495939))

(assert (= (and d!1378774 (not c!766064)) b!4495940))

(assert (= (and b!4495940 c!766065) b!4495941))

(assert (= (and b!4495940 (not c!766065)) b!4495942))

(declare-fun m!5223553 () Bool)

(assert (=> b!4495941 m!5223553))

(assert (=> b!4495802 d!1378774))

(declare-fun bs!833516 () Bool)

(declare-fun b!4495977 () Bool)

(assert (= bs!833516 (and b!4495977 b!4495900)))

(declare-fun lambda!168086 () Int)

(assert (=> bs!833516 (= (= (t!357610 (toList!4248 lt!1677916)) (toList!4248 lt!1677916)) (= lambda!168086 lambda!168076))))

(assert (=> b!4495977 true))

(declare-fun bs!833517 () Bool)

(declare-fun b!4495981 () Bool)

(assert (= bs!833517 (and b!4495981 b!4495900)))

(declare-fun lambda!168087 () Int)

(assert (=> bs!833517 (= (= (Cons!50528 (h!56343 (toList!4248 lt!1677916)) (t!357610 (toList!4248 lt!1677916))) (toList!4248 lt!1677916)) (= lambda!168087 lambda!168076))))

(declare-fun bs!833518 () Bool)

(assert (= bs!833518 (and b!4495981 b!4495977)))

(assert (=> bs!833518 (= (= (Cons!50528 (h!56343 (toList!4248 lt!1677916)) (t!357610 (toList!4248 lt!1677916))) (t!357610 (toList!4248 lt!1677916))) (= lambda!168087 lambda!168086))))

(assert (=> b!4495981 true))

(declare-fun bs!833519 () Bool)

(declare-fun b!4495982 () Bool)

(assert (= bs!833519 (and b!4495982 b!4495900)))

(declare-fun lambda!168088 () Int)

(assert (=> bs!833519 (= lambda!168088 lambda!168076)))

(declare-fun bs!833520 () Bool)

(assert (= bs!833520 (and b!4495982 b!4495977)))

(assert (=> bs!833520 (= (= (toList!4248 lt!1677916) (t!357610 (toList!4248 lt!1677916))) (= lambda!168088 lambda!168086))))

(declare-fun bs!833521 () Bool)

(assert (= bs!833521 (and b!4495982 b!4495981)))

(assert (=> bs!833521 (= (= (toList!4248 lt!1677916) (Cons!50528 (h!56343 (toList!4248 lt!1677916)) (t!357610 (toList!4248 lt!1677916)))) (= lambda!168088 lambda!168087))))

(assert (=> b!4495982 true))

(declare-fun bs!833522 () Bool)

(declare-fun b!4495978 () Bool)

(assert (= bs!833522 (and b!4495978 b!4495901)))

(declare-fun lambda!168089 () Int)

(assert (=> bs!833522 (= lambda!168089 lambda!168077)))

(declare-fun b!4495975 () Bool)

(declare-fun e!2800547 () Unit!91352)

(declare-fun Unit!91372 () Unit!91352)

(assert (=> b!4495975 (= e!2800547 Unit!91372)))

(declare-fun b!4495976 () Bool)

(declare-fun e!2800546 () List!50655)

(assert (=> b!4495976 (= e!2800546 Nil!50531)))

(assert (=> b!4495977 false))

(declare-fun lt!1678176 () Unit!91352)

(declare-fun forallContained!2416 (List!50655 Int K!11940) Unit!91352)

(assert (=> b!4495977 (= lt!1678176 (forallContained!2416 (getKeysList!427 (t!357610 (toList!4248 lt!1677916))) lambda!168086 (_1!28751 (h!56343 (toList!4248 lt!1677916)))))))

(declare-fun Unit!91373 () Unit!91352)

(assert (=> b!4495977 (= e!2800547 Unit!91373)))

(declare-fun lt!1678179 () List!50655)

(declare-fun e!2800545 () Bool)

(assert (=> b!4495978 (= e!2800545 (= (content!8244 lt!1678179) (content!8244 (map!11094 (toList!4248 lt!1677916) lambda!168089))))))

(declare-fun b!4495979 () Bool)

(assert (=> b!4495979 false))

(declare-fun e!2800544 () Unit!91352)

(declare-fun Unit!91375 () Unit!91352)

(assert (=> b!4495979 (= e!2800544 Unit!91375)))

(declare-fun b!4495980 () Bool)

(declare-fun Unit!91376 () Unit!91352)

(assert (=> b!4495980 (= e!2800544 Unit!91376)))

(assert (=> b!4495981 (= e!2800546 (Cons!50531 (_1!28751 (h!56343 (toList!4248 lt!1677916))) (getKeysList!427 (t!357610 (toList!4248 lt!1677916)))))))

(declare-fun c!766073 () Bool)

(assert (=> b!4495981 (= c!766073 (containsKey!1666 (t!357610 (toList!4248 lt!1677916)) (_1!28751 (h!56343 (toList!4248 lt!1677916)))))))

(declare-fun lt!1678175 () Unit!91352)

(assert (=> b!4495981 (= lt!1678175 e!2800544)))

(declare-fun c!766072 () Bool)

(assert (=> b!4495981 (= c!766072 (contains!13193 (getKeysList!427 (t!357610 (toList!4248 lt!1677916))) (_1!28751 (h!56343 (toList!4248 lt!1677916)))))))

(declare-fun lt!1678178 () Unit!91352)

(assert (=> b!4495981 (= lt!1678178 e!2800547)))

(declare-fun lt!1678177 () List!50655)

(assert (=> b!4495981 (= lt!1678177 (getKeysList!427 (t!357610 (toList!4248 lt!1677916))))))

(declare-fun lt!1678174 () Unit!91352)

(declare-fun lemmaForallContainsAddHeadPreserves!144 (List!50652 List!50655 tuple2!50914) Unit!91352)

(assert (=> b!4495981 (= lt!1678174 (lemmaForallContainsAddHeadPreserves!144 (t!357610 (toList!4248 lt!1677916)) lt!1678177 (h!56343 (toList!4248 lt!1677916))))))

(assert (=> b!4495981 (forall!10164 lt!1678177 lambda!168087)))

(declare-fun lt!1678173 () Unit!91352)

(assert (=> b!4495981 (= lt!1678173 lt!1678174)))

(declare-fun d!1378776 () Bool)

(assert (=> d!1378776 e!2800545))

(declare-fun res!1868794 () Bool)

(assert (=> d!1378776 (=> (not res!1868794) (not e!2800545))))

(assert (=> d!1378776 (= res!1868794 (noDuplicate!723 lt!1678179))))

(assert (=> d!1378776 (= lt!1678179 e!2800546)))

(declare-fun c!766074 () Bool)

(assert (=> d!1378776 (= c!766074 ((_ is Cons!50528) (toList!4248 lt!1677916)))))

(assert (=> d!1378776 (invariantList!979 (toList!4248 lt!1677916))))

(assert (=> d!1378776 (= (getKeysList!427 (toList!4248 lt!1677916)) lt!1678179)))

(declare-fun res!1868793 () Bool)

(assert (=> b!4495982 (=> (not res!1868793) (not e!2800545))))

(assert (=> b!4495982 (= res!1868793 (forall!10164 lt!1678179 lambda!168088))))

(declare-fun b!4495983 () Bool)

(declare-fun res!1868795 () Bool)

(assert (=> b!4495983 (=> (not res!1868795) (not e!2800545))))

(assert (=> b!4495983 (= res!1868795 (= (length!302 lt!1678179) (length!303 (toList!4248 lt!1677916))))))

(assert (= (and d!1378776 c!766074) b!4495981))

(assert (= (and d!1378776 (not c!766074)) b!4495976))

(assert (= (and b!4495981 c!766073) b!4495979))

(assert (= (and b!4495981 (not c!766073)) b!4495980))

(assert (= (and b!4495981 c!766072) b!4495977))

(assert (= (and b!4495981 (not c!766072)) b!4495975))

(assert (= (and d!1378776 res!1868794) b!4495983))

(assert (= (and b!4495983 res!1868795) b!4495982))

(assert (= (and b!4495982 res!1868793) b!4495978))

(declare-fun m!5223569 () Bool)

(assert (=> b!4495978 m!5223569))

(declare-fun m!5223571 () Bool)

(assert (=> b!4495978 m!5223571))

(assert (=> b!4495978 m!5223571))

(declare-fun m!5223573 () Bool)

(assert (=> b!4495978 m!5223573))

(declare-fun m!5223575 () Bool)

(assert (=> b!4495977 m!5223575))

(assert (=> b!4495977 m!5223575))

(declare-fun m!5223577 () Bool)

(assert (=> b!4495977 m!5223577))

(declare-fun m!5223579 () Bool)

(assert (=> d!1378776 m!5223579))

(declare-fun m!5223581 () Bool)

(assert (=> d!1378776 m!5223581))

(declare-fun m!5223583 () Bool)

(assert (=> b!4495981 m!5223583))

(declare-fun m!5223585 () Bool)

(assert (=> b!4495981 m!5223585))

(assert (=> b!4495981 m!5223575))

(assert (=> b!4495981 m!5223575))

(declare-fun m!5223587 () Bool)

(assert (=> b!4495981 m!5223587))

(declare-fun m!5223589 () Bool)

(assert (=> b!4495981 m!5223589))

(declare-fun m!5223591 () Bool)

(assert (=> b!4495982 m!5223591))

(declare-fun m!5223593 () Bool)

(assert (=> b!4495983 m!5223593))

(assert (=> b!4495983 m!5223505))

(assert (=> b!4495562 d!1378776))

(declare-fun d!1378790 () Bool)

(declare-fun isEmpty!28584 (Option!11036) Bool)

(assert (=> d!1378790 (= (isDefined!8323 (getValueByKey!1016 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287)) (not (isEmpty!28584 (getValueByKey!1016 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287))))))

(declare-fun bs!833524 () Bool)

(assert (= bs!833524 d!1378790))

(assert (=> bs!833524 m!5223347))

(declare-fun m!5223599 () Bool)

(assert (=> bs!833524 m!5223599))

(assert (=> b!4495764 d!1378790))

(declare-fun b!4496002 () Bool)

(declare-fun e!2800559 () Option!11036)

(assert (=> b!4496002 (= e!2800559 (getValueByKey!1016 (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) key!3287))))

(declare-fun b!4496001 () Bool)

(declare-fun e!2800558 () Option!11036)

(assert (=> b!4496001 (= e!2800558 e!2800559)))

(declare-fun c!766080 () Bool)

(assert (=> b!4496001 (= c!766080 (and ((_ is Cons!50528) (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (not (= (_1!28751 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) key!3287))))))

(declare-fun d!1378792 () Bool)

(declare-fun c!766079 () Bool)

(assert (=> d!1378792 (= c!766079 (and ((_ is Cons!50528) (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (= (_1!28751 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) key!3287)))))

(assert (=> d!1378792 (= (getValueByKey!1016 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287) e!2800558)))

(declare-fun b!4496000 () Bool)

(assert (=> b!4496000 (= e!2800558 (Some!11035 (_2!28751 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))))))))

(declare-fun b!4496003 () Bool)

(assert (=> b!4496003 (= e!2800559 None!11035)))

(assert (= (and d!1378792 c!766079) b!4496000))

(assert (= (and d!1378792 (not c!766079)) b!4496001))

(assert (= (and b!4496001 c!766080) b!4496002))

(assert (= (and b!4496001 (not c!766080)) b!4496003))

(declare-fun m!5223617 () Bool)

(assert (=> b!4496002 m!5223617))

(assert (=> b!4495764 d!1378792))

(declare-fun d!1378802 () Bool)

(declare-fun lt!1678184 () Bool)

(assert (=> d!1378802 (= lt!1678184 (select (content!8244 e!2800397) key!3287))))

(declare-fun e!2800560 () Bool)

(assert (=> d!1378802 (= lt!1678184 e!2800560)))

(declare-fun res!1868802 () Bool)

(assert (=> d!1378802 (=> (not res!1868802) (not e!2800560))))

(assert (=> d!1378802 (= res!1868802 ((_ is Cons!50531) e!2800397))))

(assert (=> d!1378802 (= (contains!13193 e!2800397 key!3287) lt!1678184)))

(declare-fun b!4496004 () Bool)

(declare-fun e!2800561 () Bool)

(assert (=> b!4496004 (= e!2800560 e!2800561)))

(declare-fun res!1868803 () Bool)

(assert (=> b!4496004 (=> res!1868803 e!2800561)))

(assert (=> b!4496004 (= res!1868803 (= (h!56348 e!2800397) key!3287))))

(declare-fun b!4496005 () Bool)

(assert (=> b!4496005 (= e!2800561 (contains!13193 (t!357613 e!2800397) key!3287))))

(assert (= (and d!1378802 res!1868802) b!4496004))

(assert (= (and b!4496004 (not res!1868803)) b!4496005))

(declare-fun m!5223619 () Bool)

(assert (=> d!1378802 m!5223619))

(declare-fun m!5223621 () Bool)

(assert (=> d!1378802 m!5223621))

(declare-fun m!5223623 () Bool)

(assert (=> b!4496005 m!5223623))

(assert (=> bm!312831 d!1378802))

(declare-fun d!1378804 () Bool)

(declare-fun res!1868804 () Bool)

(declare-fun e!2800562 () Bool)

(assert (=> d!1378804 (=> res!1868804 e!2800562)))

(assert (=> d!1378804 (= res!1868804 ((_ is Nil!50529) (t!357611 (toList!4247 lm!1477))))))

(assert (=> d!1378804 (= (forall!10161 (t!357611 (toList!4247 lm!1477)) lambda!168015) e!2800562)))

(declare-fun b!4496006 () Bool)

(declare-fun e!2800563 () Bool)

(assert (=> b!4496006 (= e!2800562 e!2800563)))

(declare-fun res!1868805 () Bool)

(assert (=> b!4496006 (=> (not res!1868805) (not e!2800563))))

(assert (=> b!4496006 (= res!1868805 (dynLambda!21097 lambda!168015 (h!56344 (t!357611 (toList!4247 lm!1477)))))))

(declare-fun b!4496007 () Bool)

(assert (=> b!4496007 (= e!2800563 (forall!10161 (t!357611 (t!357611 (toList!4247 lm!1477))) lambda!168015))))

(assert (= (and d!1378804 (not res!1868804)) b!4496006))

(assert (= (and b!4496006 res!1868805) b!4496007))

(declare-fun b_lambda!151947 () Bool)

(assert (=> (not b_lambda!151947) (not b!4496006)))

(declare-fun m!5223625 () Bool)

(assert (=> b!4496006 m!5223625))

(declare-fun m!5223627 () Bool)

(assert (=> b!4496007 m!5223627))

(assert (=> b!4495816 d!1378804))

(declare-fun d!1378806 () Bool)

(assert (=> d!1378806 (= (isDefined!8324 (getValueByKey!1017 (toList!4247 lt!1677907) hash!344)) (not (isEmpty!28583 (getValueByKey!1017 (toList!4247 lt!1677907) hash!344))))))

(declare-fun bs!833526 () Bool)

(assert (= bs!833526 d!1378806))

(assert (=> bs!833526 m!5223441))

(declare-fun m!5223629 () Bool)

(assert (=> bs!833526 m!5223629))

(assert (=> b!4495810 d!1378806))

(declare-fun b!4496010 () Bool)

(declare-fun e!2800565 () Option!11037)

(assert (=> b!4496010 (= e!2800565 (getValueByKey!1017 (t!357611 (toList!4247 lt!1677907)) hash!344))))

(declare-fun d!1378808 () Bool)

(declare-fun c!766081 () Bool)

(assert (=> d!1378808 (= c!766081 (and ((_ is Cons!50529) (toList!4247 lt!1677907)) (= (_1!28752 (h!56344 (toList!4247 lt!1677907))) hash!344)))))

(declare-fun e!2800564 () Option!11037)

(assert (=> d!1378808 (= (getValueByKey!1017 (toList!4247 lt!1677907) hash!344) e!2800564)))

(declare-fun b!4496008 () Bool)

(assert (=> b!4496008 (= e!2800564 (Some!11036 (_2!28752 (h!56344 (toList!4247 lt!1677907)))))))

(declare-fun b!4496011 () Bool)

(assert (=> b!4496011 (= e!2800565 None!11036)))

(declare-fun b!4496009 () Bool)

(assert (=> b!4496009 (= e!2800564 e!2800565)))

(declare-fun c!766082 () Bool)

(assert (=> b!4496009 (= c!766082 (and ((_ is Cons!50529) (toList!4247 lt!1677907)) (not (= (_1!28752 (h!56344 (toList!4247 lt!1677907))) hash!344))))))

(assert (= (and d!1378808 c!766081) b!4496008))

(assert (= (and d!1378808 (not c!766081)) b!4496009))

(assert (= (and b!4496009 c!766082) b!4496010))

(assert (= (and b!4496009 (not c!766082)) b!4496011))

(declare-fun m!5223631 () Bool)

(assert (=> b!4496010 m!5223631))

(assert (=> b!4495810 d!1378808))

(declare-fun d!1378810 () Bool)

(declare-fun lt!1678185 () Bool)

(assert (=> d!1378810 (= lt!1678185 (select (content!8242 (toList!4247 lt!1678065)) (tuple2!50917 hash!344 newBucket!178)))))

(declare-fun e!2800567 () Bool)

(assert (=> d!1378810 (= lt!1678185 e!2800567)))

(declare-fun res!1868806 () Bool)

(assert (=> d!1378810 (=> (not res!1868806) (not e!2800567))))

(assert (=> d!1378810 (= res!1868806 ((_ is Cons!50529) (toList!4247 lt!1678065)))))

(assert (=> d!1378810 (= (contains!13189 (toList!4247 lt!1678065) (tuple2!50917 hash!344 newBucket!178)) lt!1678185)))

(declare-fun b!4496012 () Bool)

(declare-fun e!2800566 () Bool)

(assert (=> b!4496012 (= e!2800567 e!2800566)))

(declare-fun res!1868807 () Bool)

(assert (=> b!4496012 (=> res!1868807 e!2800566)))

(assert (=> b!4496012 (= res!1868807 (= (h!56344 (toList!4247 lt!1678065)) (tuple2!50917 hash!344 newBucket!178)))))

(declare-fun b!4496013 () Bool)

(assert (=> b!4496013 (= e!2800566 (contains!13189 (t!357611 (toList!4247 lt!1678065)) (tuple2!50917 hash!344 newBucket!178)))))

(assert (= (and d!1378810 res!1868806) b!4496012))

(assert (= (and b!4496012 (not res!1868807)) b!4496013))

(declare-fun m!5223633 () Bool)

(assert (=> d!1378810 m!5223633))

(declare-fun m!5223635 () Bool)

(assert (=> d!1378810 m!5223635))

(declare-fun m!5223637 () Bool)

(assert (=> b!4496013 m!5223637))

(assert (=> b!4495706 d!1378810))

(declare-fun d!1378812 () Bool)

(assert (=> d!1378812 (isDefined!8324 (getValueByKey!1017 (toList!4247 lt!1677907) hash!344))))

(declare-fun lt!1678188 () Unit!91352)

(declare-fun choose!29058 (List!50653 (_ BitVec 64)) Unit!91352)

(assert (=> d!1378812 (= lt!1678188 (choose!29058 (toList!4247 lt!1677907) hash!344))))

(declare-fun e!2800570 () Bool)

(assert (=> d!1378812 e!2800570))

(declare-fun res!1868810 () Bool)

(assert (=> d!1378812 (=> (not res!1868810) (not e!2800570))))

(assert (=> d!1378812 (= res!1868810 (isStrictlySorted!393 (toList!4247 lt!1677907)))))

(assert (=> d!1378812 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!921 (toList!4247 lt!1677907) hash!344) lt!1678188)))

(declare-fun b!4496016 () Bool)

(assert (=> b!4496016 (= e!2800570 (containsKey!1668 (toList!4247 lt!1677907) hash!344))))

(assert (= (and d!1378812 res!1868810) b!4496016))

(assert (=> d!1378812 m!5223441))

(assert (=> d!1378812 m!5223441))

(assert (=> d!1378812 m!5223443))

(declare-fun m!5223639 () Bool)

(assert (=> d!1378812 m!5223639))

(declare-fun m!5223641 () Bool)

(assert (=> d!1378812 m!5223641))

(assert (=> b!4496016 m!5223437))

(assert (=> b!4495808 d!1378812))

(assert (=> b!4495808 d!1378806))

(assert (=> b!4495808 d!1378808))

(declare-fun d!1378814 () Bool)

(assert (=> d!1378814 (isDefined!8324 (getValueByKey!1017 (toList!4247 lm!1477) lt!1677911))))

(declare-fun lt!1678189 () Unit!91352)

(assert (=> d!1378814 (= lt!1678189 (choose!29058 (toList!4247 lm!1477) lt!1677911))))

(declare-fun e!2800571 () Bool)

(assert (=> d!1378814 e!2800571))

(declare-fun res!1868811 () Bool)

(assert (=> d!1378814 (=> (not res!1868811) (not e!2800571))))

(assert (=> d!1378814 (= res!1868811 (isStrictlySorted!393 (toList!4247 lm!1477)))))

(assert (=> d!1378814 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!921 (toList!4247 lm!1477) lt!1677911) lt!1678189)))

(declare-fun b!4496017 () Bool)

(assert (=> b!4496017 (= e!2800571 (containsKey!1668 (toList!4247 lm!1477) lt!1677911))))

(assert (= (and d!1378814 res!1868811) b!4496017))

(assert (=> d!1378814 m!5223423))

(assert (=> d!1378814 m!5223423))

(assert (=> d!1378814 m!5223425))

(declare-fun m!5223643 () Bool)

(assert (=> d!1378814 m!5223643))

(assert (=> d!1378814 m!5223435))

(assert (=> b!4496017 m!5223419))

(assert (=> b!4495800 d!1378814))

(assert (=> b!4495800 d!1378772))

(assert (=> b!4495800 d!1378774))

(declare-fun d!1378816 () Bool)

(declare-fun c!766085 () Bool)

(assert (=> d!1378816 (= c!766085 ((_ is Nil!50531) (keys!17514 lt!1677918)))))

(declare-fun e!2800574 () (InoxSet K!11940))

(assert (=> d!1378816 (= (content!8244 (keys!17514 lt!1677918)) e!2800574)))

(declare-fun b!4496022 () Bool)

(assert (=> b!4496022 (= e!2800574 ((as const (Array K!11940 Bool)) false))))

(declare-fun b!4496023 () Bool)

(assert (=> b!4496023 (= e!2800574 ((_ map or) (store ((as const (Array K!11940 Bool)) false) (h!56348 (keys!17514 lt!1677918)) true) (content!8244 (t!357613 (keys!17514 lt!1677918)))))))

(assert (= (and d!1378816 c!766085) b!4496022))

(assert (= (and d!1378816 (not c!766085)) b!4496023))

(declare-fun m!5223645 () Bool)

(assert (=> b!4496023 m!5223645))

(declare-fun m!5223647 () Bool)

(assert (=> b!4496023 m!5223647))

(assert (=> b!4495740 d!1378816))

(declare-fun bs!833527 () Bool)

(declare-fun b!4496025 () Bool)

(assert (= bs!833527 (and b!4496025 b!4495900)))

(declare-fun lambda!168090 () Int)

(assert (=> bs!833527 (= (= (toList!4248 lt!1677918) (toList!4248 lt!1677916)) (= lambda!168090 lambda!168076))))

(declare-fun bs!833528 () Bool)

(assert (= bs!833528 (and b!4496025 b!4495977)))

(assert (=> bs!833528 (= (= (toList!4248 lt!1677918) (t!357610 (toList!4248 lt!1677916))) (= lambda!168090 lambda!168086))))

(declare-fun bs!833529 () Bool)

(assert (= bs!833529 (and b!4496025 b!4495981)))

(assert (=> bs!833529 (= (= (toList!4248 lt!1677918) (Cons!50528 (h!56343 (toList!4248 lt!1677916)) (t!357610 (toList!4248 lt!1677916)))) (= lambda!168090 lambda!168087))))

(declare-fun bs!833530 () Bool)

(assert (= bs!833530 (and b!4496025 b!4495982)))

(assert (=> bs!833530 (= (= (toList!4248 lt!1677918) (toList!4248 lt!1677916)) (= lambda!168090 lambda!168088))))

(assert (=> b!4496025 true))

(declare-fun bs!833531 () Bool)

(declare-fun b!4496026 () Bool)

(assert (= bs!833531 (and b!4496026 b!4495901)))

(declare-fun lambda!168091 () Int)

(assert (=> bs!833531 (= lambda!168091 lambda!168077)))

(declare-fun bs!833532 () Bool)

(assert (= bs!833532 (and b!4496026 b!4495978)))

(assert (=> bs!833532 (= lambda!168091 lambda!168089)))

(declare-fun d!1378818 () Bool)

(declare-fun e!2800575 () Bool)

(assert (=> d!1378818 e!2800575))

(declare-fun res!1868812 () Bool)

(assert (=> d!1378818 (=> (not res!1868812) (not e!2800575))))

(declare-fun lt!1678190 () List!50655)

(assert (=> d!1378818 (= res!1868812 (noDuplicate!723 lt!1678190))))

(assert (=> d!1378818 (= lt!1678190 (getKeysList!427 (toList!4248 lt!1677918)))))

(assert (=> d!1378818 (= (keys!17514 lt!1677918) lt!1678190)))

(declare-fun b!4496024 () Bool)

(declare-fun res!1868814 () Bool)

(assert (=> b!4496024 (=> (not res!1868814) (not e!2800575))))

(assert (=> b!4496024 (= res!1868814 (= (length!302 lt!1678190) (length!303 (toList!4248 lt!1677918))))))

(declare-fun res!1868813 () Bool)

(assert (=> b!4496025 (=> (not res!1868813) (not e!2800575))))

(assert (=> b!4496025 (= res!1868813 (forall!10164 lt!1678190 lambda!168090))))

(assert (=> b!4496026 (= e!2800575 (= (content!8244 lt!1678190) (content!8244 (map!11094 (toList!4248 lt!1677918) lambda!168091))))))

(assert (= (and d!1378818 res!1868812) b!4496024))

(assert (= (and b!4496024 res!1868814) b!4496025))

(assert (= (and b!4496025 res!1868813) b!4496026))

(declare-fun m!5223649 () Bool)

(assert (=> d!1378818 m!5223649))

(assert (=> d!1378818 m!5223383))

(declare-fun m!5223651 () Bool)

(assert (=> b!4496024 m!5223651))

(declare-fun m!5223653 () Bool)

(assert (=> b!4496024 m!5223653))

(declare-fun m!5223655 () Bool)

(assert (=> b!4496025 m!5223655))

(declare-fun m!5223657 () Bool)

(assert (=> b!4496026 m!5223657))

(declare-fun m!5223659 () Bool)

(assert (=> b!4496026 m!5223659))

(assert (=> b!4496026 m!5223659))

(declare-fun m!5223661 () Bool)

(assert (=> b!4496026 m!5223661))

(assert (=> b!4495740 d!1378818))

(declare-fun d!1378820 () Bool)

(declare-fun c!766086 () Bool)

(assert (=> d!1378820 (= c!766086 ((_ is Nil!50531) (keys!17514 lt!1678085)))))

(declare-fun e!2800576 () (InoxSet K!11940))

(assert (=> d!1378820 (= (content!8244 (keys!17514 lt!1678085)) e!2800576)))

(declare-fun b!4496027 () Bool)

(assert (=> b!4496027 (= e!2800576 ((as const (Array K!11940 Bool)) false))))

(declare-fun b!4496028 () Bool)

(assert (=> b!4496028 (= e!2800576 ((_ map or) (store ((as const (Array K!11940 Bool)) false) (h!56348 (keys!17514 lt!1678085)) true) (content!8244 (t!357613 (keys!17514 lt!1678085)))))))

(assert (= (and d!1378820 c!766086) b!4496027))

(assert (= (and d!1378820 (not c!766086)) b!4496028))

(declare-fun m!5223663 () Bool)

(assert (=> b!4496028 m!5223663))

(declare-fun m!5223665 () Bool)

(assert (=> b!4496028 m!5223665))

(assert (=> b!4495740 d!1378820))

(declare-fun bs!833533 () Bool)

(declare-fun b!4496030 () Bool)

(assert (= bs!833533 (and b!4496030 b!4495900)))

(declare-fun lambda!168092 () Int)

(assert (=> bs!833533 (= (= (toList!4248 lt!1678085) (toList!4248 lt!1677916)) (= lambda!168092 lambda!168076))))

(declare-fun bs!833534 () Bool)

(assert (= bs!833534 (and b!4496030 b!4495981)))

(assert (=> bs!833534 (= (= (toList!4248 lt!1678085) (Cons!50528 (h!56343 (toList!4248 lt!1677916)) (t!357610 (toList!4248 lt!1677916)))) (= lambda!168092 lambda!168087))))

(declare-fun bs!833535 () Bool)

(assert (= bs!833535 (and b!4496030 b!4496025)))

(assert (=> bs!833535 (= (= (toList!4248 lt!1678085) (toList!4248 lt!1677918)) (= lambda!168092 lambda!168090))))

(declare-fun bs!833536 () Bool)

(assert (= bs!833536 (and b!4496030 b!4495977)))

(assert (=> bs!833536 (= (= (toList!4248 lt!1678085) (t!357610 (toList!4248 lt!1677916))) (= lambda!168092 lambda!168086))))

(declare-fun bs!833537 () Bool)

(assert (= bs!833537 (and b!4496030 b!4495982)))

(assert (=> bs!833537 (= (= (toList!4248 lt!1678085) (toList!4248 lt!1677916)) (= lambda!168092 lambda!168088))))

(assert (=> b!4496030 true))

(declare-fun bs!833538 () Bool)

(declare-fun b!4496031 () Bool)

(assert (= bs!833538 (and b!4496031 b!4495901)))

(declare-fun lambda!168093 () Int)

(assert (=> bs!833538 (= lambda!168093 lambda!168077)))

(declare-fun bs!833539 () Bool)

(assert (= bs!833539 (and b!4496031 b!4495978)))

(assert (=> bs!833539 (= lambda!168093 lambda!168089)))

(declare-fun bs!833540 () Bool)

(assert (= bs!833540 (and b!4496031 b!4496026)))

(assert (=> bs!833540 (= lambda!168093 lambda!168091)))

(declare-fun d!1378822 () Bool)

(declare-fun e!2800577 () Bool)

(assert (=> d!1378822 e!2800577))

(declare-fun res!1868815 () Bool)

(assert (=> d!1378822 (=> (not res!1868815) (not e!2800577))))

(declare-fun lt!1678191 () List!50655)

(assert (=> d!1378822 (= res!1868815 (noDuplicate!723 lt!1678191))))

(assert (=> d!1378822 (= lt!1678191 (getKeysList!427 (toList!4248 lt!1678085)))))

(assert (=> d!1378822 (= (keys!17514 lt!1678085) lt!1678191)))

(declare-fun b!4496029 () Bool)

(declare-fun res!1868817 () Bool)

(assert (=> b!4496029 (=> (not res!1868817) (not e!2800577))))

(assert (=> b!4496029 (= res!1868817 (= (length!302 lt!1678191) (length!303 (toList!4248 lt!1678085))))))

(declare-fun res!1868816 () Bool)

(assert (=> b!4496030 (=> (not res!1868816) (not e!2800577))))

(assert (=> b!4496030 (= res!1868816 (forall!10164 lt!1678191 lambda!168092))))

(assert (=> b!4496031 (= e!2800577 (= (content!8244 lt!1678191) (content!8244 (map!11094 (toList!4248 lt!1678085) lambda!168093))))))

(assert (= (and d!1378822 res!1868815) b!4496029))

(assert (= (and b!4496029 res!1868817) b!4496030))

(assert (= (and b!4496030 res!1868816) b!4496031))

(declare-fun m!5223667 () Bool)

(assert (=> d!1378822 m!5223667))

(declare-fun m!5223669 () Bool)

(assert (=> d!1378822 m!5223669))

(declare-fun m!5223671 () Bool)

(assert (=> b!4496029 m!5223671))

(declare-fun m!5223673 () Bool)

(assert (=> b!4496029 m!5223673))

(declare-fun m!5223675 () Bool)

(assert (=> b!4496030 m!5223675))

(declare-fun m!5223677 () Bool)

(assert (=> b!4496031 m!5223677))

(declare-fun m!5223679 () Bool)

(assert (=> b!4496031 m!5223679))

(assert (=> b!4496031 m!5223679))

(declare-fun m!5223681 () Bool)

(assert (=> b!4496031 m!5223681))

(assert (=> b!4495740 d!1378822))

(assert (=> b!4495804 d!1378604))

(declare-fun d!1378824 () Bool)

(assert (=> d!1378824 (= (get!16506 (getValueByKey!1017 (toList!4247 lt!1677907) hash!344)) (v!44510 (getValueByKey!1017 (toList!4247 lt!1677907) hash!344)))))

(assert (=> d!1378716 d!1378824))

(assert (=> d!1378716 d!1378808))

(declare-fun d!1378826 () Bool)

(declare-fun e!2800578 () Bool)

(assert (=> d!1378826 e!2800578))

(declare-fun res!1868818 () Bool)

(assert (=> d!1378826 (=> res!1868818 e!2800578)))

(declare-fun lt!1678194 () Bool)

(assert (=> d!1378826 (= res!1868818 (not lt!1678194))))

(declare-fun lt!1678192 () Bool)

(assert (=> d!1378826 (= lt!1678194 lt!1678192)))

(declare-fun lt!1678195 () Unit!91352)

(declare-fun e!2800579 () Unit!91352)

(assert (=> d!1378826 (= lt!1678195 e!2800579)))

(declare-fun c!766087 () Bool)

(assert (=> d!1378826 (= c!766087 lt!1678192)))

(assert (=> d!1378826 (= lt!1678192 (containsKey!1668 (toList!4247 lt!1678020) (_1!28752 lt!1677922)))))

(assert (=> d!1378826 (= (contains!13190 lt!1678020 (_1!28752 lt!1677922)) lt!1678194)))

(declare-fun b!4496032 () Bool)

(declare-fun lt!1678193 () Unit!91352)

(assert (=> b!4496032 (= e!2800579 lt!1678193)))

(assert (=> b!4496032 (= lt!1678193 (lemmaContainsKeyImpliesGetValueByKeyDefined!921 (toList!4247 lt!1678020) (_1!28752 lt!1677922)))))

(assert (=> b!4496032 (isDefined!8324 (getValueByKey!1017 (toList!4247 lt!1678020) (_1!28752 lt!1677922)))))

(declare-fun b!4496033 () Bool)

(declare-fun Unit!91378 () Unit!91352)

(assert (=> b!4496033 (= e!2800579 Unit!91378)))

(declare-fun b!4496034 () Bool)

(assert (=> b!4496034 (= e!2800578 (isDefined!8324 (getValueByKey!1017 (toList!4247 lt!1678020) (_1!28752 lt!1677922))))))

(assert (= (and d!1378826 c!766087) b!4496032))

(assert (= (and d!1378826 (not c!766087)) b!4496033))

(assert (= (and d!1378826 (not res!1868818)) b!4496034))

(declare-fun m!5223683 () Bool)

(assert (=> d!1378826 m!5223683))

(declare-fun m!5223685 () Bool)

(assert (=> b!4496032 m!5223685))

(assert (=> b!4496032 m!5223137))

(assert (=> b!4496032 m!5223137))

(declare-fun m!5223687 () Bool)

(assert (=> b!4496032 m!5223687))

(assert (=> b!4496034 m!5223137))

(assert (=> b!4496034 m!5223137))

(assert (=> b!4496034 m!5223687))

(assert (=> d!1378610 d!1378826))

(declare-fun b!4496037 () Bool)

(declare-fun e!2800581 () Option!11037)

(assert (=> b!4496037 (= e!2800581 (getValueByKey!1017 (t!357611 lt!1678018) (_1!28752 lt!1677922)))))

(declare-fun d!1378828 () Bool)

(declare-fun c!766088 () Bool)

(assert (=> d!1378828 (= c!766088 (and ((_ is Cons!50529) lt!1678018) (= (_1!28752 (h!56344 lt!1678018)) (_1!28752 lt!1677922))))))

(declare-fun e!2800580 () Option!11037)

(assert (=> d!1378828 (= (getValueByKey!1017 lt!1678018 (_1!28752 lt!1677922)) e!2800580)))

(declare-fun b!4496035 () Bool)

(assert (=> b!4496035 (= e!2800580 (Some!11036 (_2!28752 (h!56344 lt!1678018))))))

(declare-fun b!4496038 () Bool)

(assert (=> b!4496038 (= e!2800581 None!11036)))

(declare-fun b!4496036 () Bool)

(assert (=> b!4496036 (= e!2800580 e!2800581)))

(declare-fun c!766089 () Bool)

(assert (=> b!4496036 (= c!766089 (and ((_ is Cons!50529) lt!1678018) (not (= (_1!28752 (h!56344 lt!1678018)) (_1!28752 lt!1677922)))))))

(assert (= (and d!1378828 c!766088) b!4496035))

(assert (= (and d!1378828 (not c!766088)) b!4496036))

(assert (= (and b!4496036 c!766089) b!4496037))

(assert (= (and b!4496036 (not c!766089)) b!4496038))

(declare-fun m!5223689 () Bool)

(assert (=> b!4496037 m!5223689))

(assert (=> d!1378610 d!1378828))

(declare-fun d!1378830 () Bool)

(assert (=> d!1378830 (= (getValueByKey!1017 lt!1678018 (_1!28752 lt!1677922)) (Some!11036 (_2!28752 lt!1677922)))))

(declare-fun lt!1678198 () Unit!91352)

(declare-fun choose!29059 (List!50653 (_ BitVec 64) List!50652) Unit!91352)

(assert (=> d!1378830 (= lt!1678198 (choose!29059 lt!1678018 (_1!28752 lt!1677922) (_2!28752 lt!1677922)))))

(declare-fun e!2800584 () Bool)

(assert (=> d!1378830 e!2800584))

(declare-fun res!1868823 () Bool)

(assert (=> d!1378830 (=> (not res!1868823) (not e!2800584))))

(assert (=> d!1378830 (= res!1868823 (isStrictlySorted!393 lt!1678018))))

(assert (=> d!1378830 (= (lemmaContainsTupThenGetReturnValue!628 lt!1678018 (_1!28752 lt!1677922) (_2!28752 lt!1677922)) lt!1678198)))

(declare-fun b!4496043 () Bool)

(declare-fun res!1868824 () Bool)

(assert (=> b!4496043 (=> (not res!1868824) (not e!2800584))))

(assert (=> b!4496043 (= res!1868824 (containsKey!1668 lt!1678018 (_1!28752 lt!1677922)))))

(declare-fun b!4496044 () Bool)

(assert (=> b!4496044 (= e!2800584 (contains!13189 lt!1678018 (tuple2!50917 (_1!28752 lt!1677922) (_2!28752 lt!1677922))))))

(assert (= (and d!1378830 res!1868823) b!4496043))

(assert (= (and b!4496043 res!1868824) b!4496044))

(assert (=> d!1378830 m!5223131))

(declare-fun m!5223691 () Bool)

(assert (=> d!1378830 m!5223691))

(declare-fun m!5223693 () Bool)

(assert (=> d!1378830 m!5223693))

(declare-fun m!5223695 () Bool)

(assert (=> b!4496043 m!5223695))

(declare-fun m!5223697 () Bool)

(assert (=> b!4496044 m!5223697))

(assert (=> d!1378610 d!1378830))

(declare-fun b!4496087 () Bool)

(declare-fun e!2800607 () List!50653)

(declare-fun call!312847 () List!50653)

(assert (=> b!4496087 (= e!2800607 call!312847)))

(declare-fun b!4496088 () Bool)

(declare-fun c!766099 () Bool)

(assert (=> b!4496088 (= c!766099 (and ((_ is Cons!50529) (toList!4247 lt!1677907)) (bvsgt (_1!28752 (h!56344 (toList!4247 lt!1677907))) (_1!28752 lt!1677922))))))

(declare-fun e!2800608 () List!50653)

(declare-fun e!2800611 () List!50653)

(assert (=> b!4496088 (= e!2800608 e!2800611)))

(declare-fun b!4496089 () Bool)

(assert (=> b!4496089 (= e!2800607 e!2800608)))

(declare-fun c!766100 () Bool)

(assert (=> b!4496089 (= c!766100 (and ((_ is Cons!50529) (toList!4247 lt!1677907)) (= (_1!28752 (h!56344 (toList!4247 lt!1677907))) (_1!28752 lt!1677922))))))

(declare-fun b!4496090 () Bool)

(declare-fun call!312846 () List!50653)

(assert (=> b!4496090 (= e!2800611 call!312846)))

(declare-fun d!1378832 () Bool)

(declare-fun e!2800609 () Bool)

(assert (=> d!1378832 e!2800609))

(declare-fun res!1868849 () Bool)

(assert (=> d!1378832 (=> (not res!1868849) (not e!2800609))))

(declare-fun lt!1678208 () List!50653)

(assert (=> d!1378832 (= res!1868849 (isStrictlySorted!393 lt!1678208))))

(assert (=> d!1378832 (= lt!1678208 e!2800607)))

(declare-fun c!766098 () Bool)

(assert (=> d!1378832 (= c!766098 (and ((_ is Cons!50529) (toList!4247 lt!1677907)) (bvslt (_1!28752 (h!56344 (toList!4247 lt!1677907))) (_1!28752 lt!1677922))))))

(assert (=> d!1378832 (isStrictlySorted!393 (toList!4247 lt!1677907))))

(assert (=> d!1378832 (= (insertStrictlySorted!370 (toList!4247 lt!1677907) (_1!28752 lt!1677922) (_2!28752 lt!1677922)) lt!1678208)))

(declare-fun b!4496091 () Bool)

(declare-fun e!2800610 () List!50653)

(assert (=> b!4496091 (= e!2800610 (insertStrictlySorted!370 (t!357611 (toList!4247 lt!1677907)) (_1!28752 lt!1677922) (_2!28752 lt!1677922)))))

(declare-fun bm!312840 () Bool)

(declare-fun call!312845 () List!50653)

(assert (=> bm!312840 (= call!312845 call!312847)))

(declare-fun b!4496092 () Bool)

(assert (=> b!4496092 (= e!2800611 call!312846)))

(declare-fun b!4496093 () Bool)

(assert (=> b!4496093 (= e!2800610 (ite c!766100 (t!357611 (toList!4247 lt!1677907)) (ite c!766099 (Cons!50529 (h!56344 (toList!4247 lt!1677907)) (t!357611 (toList!4247 lt!1677907))) Nil!50529)))))

(declare-fun bm!312841 () Bool)

(declare-fun $colon$colon!885 (List!50653 tuple2!50916) List!50653)

(assert (=> bm!312841 (= call!312847 ($colon$colon!885 e!2800610 (ite c!766098 (h!56344 (toList!4247 lt!1677907)) (tuple2!50917 (_1!28752 lt!1677922) (_2!28752 lt!1677922)))))))

(declare-fun c!766101 () Bool)

(assert (=> bm!312841 (= c!766101 c!766098)))

(declare-fun b!4496094 () Bool)

(assert (=> b!4496094 (= e!2800608 call!312845)))

(declare-fun b!4496095 () Bool)

(declare-fun res!1868850 () Bool)

(assert (=> b!4496095 (=> (not res!1868850) (not e!2800609))))

(assert (=> b!4496095 (= res!1868850 (containsKey!1668 lt!1678208 (_1!28752 lt!1677922)))))

(declare-fun bm!312842 () Bool)

(assert (=> bm!312842 (= call!312846 call!312845)))

(declare-fun b!4496096 () Bool)

(assert (=> b!4496096 (= e!2800609 (contains!13189 lt!1678208 (tuple2!50917 (_1!28752 lt!1677922) (_2!28752 lt!1677922))))))

(assert (= (and d!1378832 c!766098) b!4496087))

(assert (= (and d!1378832 (not c!766098)) b!4496089))

(assert (= (and b!4496089 c!766100) b!4496094))

(assert (= (and b!4496089 (not c!766100)) b!4496088))

(assert (= (and b!4496088 c!766099) b!4496090))

(assert (= (and b!4496088 (not c!766099)) b!4496092))

(assert (= (or b!4496090 b!4496092) bm!312842))

(assert (= (or b!4496094 bm!312842) bm!312840))

(assert (= (or b!4496087 bm!312840) bm!312841))

(assert (= (and bm!312841 c!766101) b!4496091))

(assert (= (and bm!312841 (not c!766101)) b!4496093))

(assert (= (and d!1378832 res!1868849) b!4496095))

(assert (= (and b!4496095 res!1868850) b!4496096))

(declare-fun m!5223735 () Bool)

(assert (=> d!1378832 m!5223735))

(assert (=> d!1378832 m!5223641))

(declare-fun m!5223737 () Bool)

(assert (=> bm!312841 m!5223737))

(declare-fun m!5223739 () Bool)

(assert (=> b!4496096 m!5223739))

(declare-fun m!5223743 () Bool)

(assert (=> b!4496091 m!5223743))

(declare-fun m!5223745 () Bool)

(assert (=> b!4496095 m!5223745))

(assert (=> d!1378610 d!1378832))

(declare-fun d!1378846 () Bool)

(declare-fun res!1868855 () Bool)

(declare-fun e!2800620 () Bool)

(assert (=> d!1378846 (=> res!1868855 e!2800620)))

(assert (=> d!1378846 (= res!1868855 (and ((_ is Cons!50529) (toList!4247 lm!1477)) (= (_1!28752 (h!56344 (toList!4247 lm!1477))) lt!1677911)))))

(assert (=> d!1378846 (= (containsKey!1668 (toList!4247 lm!1477) lt!1677911) e!2800620)))

(declare-fun b!4496109 () Bool)

(declare-fun e!2800621 () Bool)

(assert (=> b!4496109 (= e!2800620 e!2800621)))

(declare-fun res!1868856 () Bool)

(assert (=> b!4496109 (=> (not res!1868856) (not e!2800621))))

(assert (=> b!4496109 (= res!1868856 (and (or (not ((_ is Cons!50529) (toList!4247 lm!1477))) (bvsle (_1!28752 (h!56344 (toList!4247 lm!1477))) lt!1677911)) ((_ is Cons!50529) (toList!4247 lm!1477)) (bvslt (_1!28752 (h!56344 (toList!4247 lm!1477))) lt!1677911)))))

(declare-fun b!4496110 () Bool)

(assert (=> b!4496110 (= e!2800621 (containsKey!1668 (t!357611 (toList!4247 lm!1477)) lt!1677911))))

(assert (= (and d!1378846 (not res!1868855)) b!4496109))

(assert (= (and b!4496109 res!1868856) b!4496110))

(declare-fun m!5223753 () Bool)

(assert (=> b!4496110 m!5223753))

(assert (=> d!1378700 d!1378846))

(declare-fun d!1378854 () Bool)

(declare-fun lt!1678212 () Bool)

(assert (=> d!1378854 (= lt!1678212 (select (content!8244 (keys!17514 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) key!3287))))

(declare-fun e!2800622 () Bool)

(assert (=> d!1378854 (= lt!1678212 e!2800622)))

(declare-fun res!1868857 () Bool)

(assert (=> d!1378854 (=> (not res!1868857) (not e!2800622))))

(assert (=> d!1378854 (= res!1868857 ((_ is Cons!50531) (keys!17514 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))))))

(assert (=> d!1378854 (= (contains!13193 (keys!17514 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287) lt!1678212)))

(declare-fun b!4496111 () Bool)

(declare-fun e!2800623 () Bool)

(assert (=> b!4496111 (= e!2800622 e!2800623)))

(declare-fun res!1868858 () Bool)

(assert (=> b!4496111 (=> res!1868858 e!2800623)))

(assert (=> b!4496111 (= res!1868858 (= (h!56348 (keys!17514 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) key!3287))))

(declare-fun b!4496112 () Bool)

(assert (=> b!4496112 (= e!2800623 (contains!13193 (t!357613 (keys!17514 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) key!3287))))

(assert (= (and d!1378854 res!1868857) b!4496111))

(assert (= (and b!4496111 (not res!1868858)) b!4496112))

(assert (=> d!1378854 m!5223353))

(declare-fun m!5223755 () Bool)

(assert (=> d!1378854 m!5223755))

(declare-fun m!5223757 () Bool)

(assert (=> d!1378854 m!5223757))

(declare-fun m!5223759 () Bool)

(assert (=> b!4496112 m!5223759))

(assert (=> b!4495761 d!1378854))

(declare-fun bs!833546 () Bool)

(declare-fun b!4496114 () Bool)

(assert (= bs!833546 (and b!4496114 b!4495981)))

(declare-fun lambda!168102 () Int)

(assert (=> bs!833546 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (Cons!50528 (h!56343 (toList!4248 lt!1677916)) (t!357610 (toList!4248 lt!1677916)))) (= lambda!168102 lambda!168087))))

(declare-fun bs!833547 () Bool)

(assert (= bs!833547 (and b!4496114 b!4496025)))

(assert (=> bs!833547 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (toList!4248 lt!1677918)) (= lambda!168102 lambda!168090))))

(declare-fun bs!833548 () Bool)

(assert (= bs!833548 (and b!4496114 b!4495977)))

(assert (=> bs!833548 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (t!357610 (toList!4248 lt!1677916))) (= lambda!168102 lambda!168086))))

(declare-fun bs!833549 () Bool)

(assert (= bs!833549 (and b!4496114 b!4495982)))

(assert (=> bs!833549 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (toList!4248 lt!1677916)) (= lambda!168102 lambda!168088))))

(declare-fun bs!833550 () Bool)

(assert (= bs!833550 (and b!4496114 b!4495900)))

(assert (=> bs!833550 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (toList!4248 lt!1677916)) (= lambda!168102 lambda!168076))))

(declare-fun bs!833551 () Bool)

(assert (= bs!833551 (and b!4496114 b!4496030)))

(assert (=> bs!833551 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (toList!4248 lt!1678085)) (= lambda!168102 lambda!168092))))

(assert (=> b!4496114 true))

(declare-fun bs!833552 () Bool)

(declare-fun b!4496115 () Bool)

(assert (= bs!833552 (and b!4496115 b!4495901)))

(declare-fun lambda!168103 () Int)

(assert (=> bs!833552 (= lambda!168103 lambda!168077)))

(declare-fun bs!833553 () Bool)

(assert (= bs!833553 (and b!4496115 b!4495978)))

(assert (=> bs!833553 (= lambda!168103 lambda!168089)))

(declare-fun bs!833554 () Bool)

(assert (= bs!833554 (and b!4496115 b!4496026)))

(assert (=> bs!833554 (= lambda!168103 lambda!168091)))

(declare-fun bs!833555 () Bool)

(assert (= bs!833555 (and b!4496115 b!4496031)))

(assert (=> bs!833555 (= lambda!168103 lambda!168093)))

(declare-fun d!1378856 () Bool)

(declare-fun e!2800624 () Bool)

(assert (=> d!1378856 e!2800624))

(declare-fun res!1868859 () Bool)

(assert (=> d!1378856 (=> (not res!1868859) (not e!2800624))))

(declare-fun lt!1678213 () List!50655)

(assert (=> d!1378856 (= res!1868859 (noDuplicate!723 lt!1678213))))

(assert (=> d!1378856 (= lt!1678213 (getKeysList!427 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))))))

(assert (=> d!1378856 (= (keys!17514 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) lt!1678213)))

(declare-fun b!4496113 () Bool)

(declare-fun res!1868861 () Bool)

(assert (=> b!4496113 (=> (not res!1868861) (not e!2800624))))

(assert (=> b!4496113 (= res!1868861 (= (length!302 lt!1678213) (length!303 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))))))

(declare-fun res!1868860 () Bool)

(assert (=> b!4496114 (=> (not res!1868860) (not e!2800624))))

(assert (=> b!4496114 (= res!1868860 (forall!10164 lt!1678213 lambda!168102))))

(assert (=> b!4496115 (= e!2800624 (= (content!8244 lt!1678213) (content!8244 (map!11094 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) lambda!168103))))))

(assert (= (and d!1378856 res!1868859) b!4496113))

(assert (= (and b!4496113 res!1868861) b!4496114))

(assert (= (and b!4496114 res!1868860) b!4496115))

(declare-fun m!5223761 () Bool)

(assert (=> d!1378856 m!5223761))

(assert (=> d!1378856 m!5223357))

(declare-fun m!5223763 () Bool)

(assert (=> b!4496113 m!5223763))

(declare-fun m!5223765 () Bool)

(assert (=> b!4496113 m!5223765))

(declare-fun m!5223767 () Bool)

(assert (=> b!4496114 m!5223767))

(declare-fun m!5223769 () Bool)

(assert (=> b!4496115 m!5223769))

(declare-fun m!5223771 () Bool)

(assert (=> b!4496115 m!5223771))

(assert (=> b!4496115 m!5223771))

(declare-fun m!5223773 () Bool)

(assert (=> b!4496115 m!5223773))

(assert (=> b!4495761 d!1378856))

(declare-fun d!1378858 () Bool)

(declare-fun e!2800625 () Bool)

(assert (=> d!1378858 e!2800625))

(declare-fun res!1868862 () Bool)

(assert (=> d!1378858 (=> res!1868862 e!2800625)))

(declare-fun lt!1678218 () Bool)

(assert (=> d!1378858 (= res!1868862 (not lt!1678218))))

(declare-fun lt!1678216 () Bool)

(assert (=> d!1378858 (= lt!1678218 lt!1678216)))

(declare-fun lt!1678219 () Unit!91352)

(declare-fun e!2800626 () Unit!91352)

(assert (=> d!1378858 (= lt!1678219 e!2800626)))

(declare-fun c!766106 () Bool)

(assert (=> d!1378858 (= c!766106 lt!1678216)))

(assert (=> d!1378858 (= lt!1678216 (containsKey!1668 (toList!4247 lm!1477) (hash!2667 hashF!1107 key!3287)))))

(assert (=> d!1378858 (= (contains!13190 lm!1477 (hash!2667 hashF!1107 key!3287)) lt!1678218)))

(declare-fun b!4496116 () Bool)

(declare-fun lt!1678217 () Unit!91352)

(assert (=> b!4496116 (= e!2800626 lt!1678217)))

(assert (=> b!4496116 (= lt!1678217 (lemmaContainsKeyImpliesGetValueByKeyDefined!921 (toList!4247 lm!1477) (hash!2667 hashF!1107 key!3287)))))

(assert (=> b!4496116 (isDefined!8324 (getValueByKey!1017 (toList!4247 lm!1477) (hash!2667 hashF!1107 key!3287)))))

(declare-fun b!4496117 () Bool)

(declare-fun Unit!91380 () Unit!91352)

(assert (=> b!4496117 (= e!2800626 Unit!91380)))

(declare-fun b!4496118 () Bool)

(assert (=> b!4496118 (= e!2800625 (isDefined!8324 (getValueByKey!1017 (toList!4247 lm!1477) (hash!2667 hashF!1107 key!3287))))))

(assert (= (and d!1378858 c!766106) b!4496116))

(assert (= (and d!1378858 (not c!766106)) b!4496117))

(assert (= (and d!1378858 (not res!1868862)) b!4496118))

(assert (=> d!1378858 m!5222947))

(declare-fun m!5223779 () Bool)

(assert (=> d!1378858 m!5223779))

(assert (=> b!4496116 m!5222947))

(declare-fun m!5223781 () Bool)

(assert (=> b!4496116 m!5223781))

(assert (=> b!4496116 m!5222947))

(declare-fun m!5223783 () Bool)

(assert (=> b!4496116 m!5223783))

(assert (=> b!4496116 m!5223783))

(declare-fun m!5223785 () Bool)

(assert (=> b!4496116 m!5223785))

(assert (=> b!4496118 m!5222947))

(assert (=> b!4496118 m!5223783))

(assert (=> b!4496118 m!5223783))

(assert (=> b!4496118 m!5223785))

(assert (=> d!1378692 d!1378858))

(assert (=> d!1378692 d!1378726))

(declare-fun d!1378862 () Bool)

(assert (=> d!1378862 (contains!13190 lm!1477 (hash!2667 hashF!1107 key!3287))))

(assert (=> d!1378862 true))

(declare-fun _$27!1161 () Unit!91352)

(assert (=> d!1378862 (= (choose!29053 lm!1477 key!3287 hashF!1107) _$27!1161)))

(declare-fun bs!833557 () Bool)

(assert (= bs!833557 d!1378862))

(assert (=> bs!833557 m!5222947))

(assert (=> bs!833557 m!5222947))

(assert (=> bs!833557 m!5223399))

(assert (=> d!1378692 d!1378862))

(declare-fun d!1378872 () Bool)

(declare-fun res!1868870 () Bool)

(declare-fun e!2800637 () Bool)

(assert (=> d!1378872 (=> res!1868870 e!2800637)))

(assert (=> d!1378872 (= res!1868870 ((_ is Nil!50529) (toList!4247 lm!1477)))))

(assert (=> d!1378872 (= (forall!10161 (toList!4247 lm!1477) lambda!168068) e!2800637)))

(declare-fun b!4496132 () Bool)

(declare-fun e!2800638 () Bool)

(assert (=> b!4496132 (= e!2800637 e!2800638)))

(declare-fun res!1868871 () Bool)

(assert (=> b!4496132 (=> (not res!1868871) (not e!2800638))))

(assert (=> b!4496132 (= res!1868871 (dynLambda!21097 lambda!168068 (h!56344 (toList!4247 lm!1477))))))

(declare-fun b!4496133 () Bool)

(assert (=> b!4496133 (= e!2800638 (forall!10161 (t!357611 (toList!4247 lm!1477)) lambda!168068))))

(assert (= (and d!1378872 (not res!1868870)) b!4496132))

(assert (= (and b!4496132 res!1868871) b!4496133))

(declare-fun b_lambda!151951 () Bool)

(assert (=> (not b_lambda!151951) (not b!4496132)))

(declare-fun m!5223807 () Bool)

(assert (=> b!4496132 m!5223807))

(declare-fun m!5223809 () Bool)

(assert (=> b!4496133 m!5223809))

(assert (=> d!1378692 d!1378872))

(declare-fun d!1378876 () Bool)

(declare-fun res!1868876 () Bool)

(declare-fun e!2800643 () Bool)

(assert (=> d!1378876 (=> res!1868876 e!2800643)))

(assert (=> d!1378876 (= res!1868876 (and ((_ is Cons!50528) (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (= (_1!28751 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) key!3287)))))

(assert (=> d!1378876 (= (containsKey!1666 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287) e!2800643)))

(declare-fun b!4496138 () Bool)

(declare-fun e!2800644 () Bool)

(assert (=> b!4496138 (= e!2800643 e!2800644)))

(declare-fun res!1868877 () Bool)

(assert (=> b!4496138 (=> (not res!1868877) (not e!2800644))))

(assert (=> b!4496138 (= res!1868877 ((_ is Cons!50528) (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))))))

(declare-fun b!4496139 () Bool)

(assert (=> b!4496139 (= e!2800644 (containsKey!1666 (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) key!3287))))

(assert (= (and d!1378876 (not res!1868876)) b!4496138))

(assert (= (and b!4496138 res!1868877) b!4496139))

(declare-fun m!5223811 () Bool)

(assert (=> b!4496139 m!5223811))

(assert (=> b!4495759 d!1378876))

(declare-fun d!1378878 () Bool)

(assert (=> d!1378878 (containsKey!1666 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287)))

(declare-fun lt!1678231 () Unit!91352)

(declare-fun choose!29063 (List!50652 K!11940) Unit!91352)

(assert (=> d!1378878 (= lt!1678231 (choose!29063 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287))))

(assert (=> d!1378878 (invariantList!979 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))))

(assert (=> d!1378878 (= (lemmaInGetKeysListThenContainsKey!426 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287) lt!1678231)))

(declare-fun bs!833558 () Bool)

(assert (= bs!833558 d!1378878))

(assert (=> bs!833558 m!5223361))

(declare-fun m!5223819 () Bool)

(assert (=> bs!833558 m!5223819))

(declare-fun m!5223823 () Bool)

(assert (=> bs!833558 m!5223823))

(assert (=> b!4495759 d!1378878))

(declare-fun b!4496148 () Bool)

(declare-fun e!2800649 () Option!11037)

(assert (=> b!4496148 (= e!2800649 (getValueByKey!1017 (t!357611 (toList!4247 lt!1678020)) (_1!28752 lt!1677922)))))

(declare-fun d!1378882 () Bool)

(declare-fun c!766110 () Bool)

(assert (=> d!1378882 (= c!766110 (and ((_ is Cons!50529) (toList!4247 lt!1678020)) (= (_1!28752 (h!56344 (toList!4247 lt!1678020))) (_1!28752 lt!1677922))))))

(declare-fun e!2800648 () Option!11037)

(assert (=> d!1378882 (= (getValueByKey!1017 (toList!4247 lt!1678020) (_1!28752 lt!1677922)) e!2800648)))

(declare-fun b!4496146 () Bool)

(assert (=> b!4496146 (= e!2800648 (Some!11036 (_2!28752 (h!56344 (toList!4247 lt!1678020)))))))

(declare-fun b!4496149 () Bool)

(assert (=> b!4496149 (= e!2800649 None!11036)))

(declare-fun b!4496147 () Bool)

(assert (=> b!4496147 (= e!2800648 e!2800649)))

(declare-fun c!766111 () Bool)

(assert (=> b!4496147 (= c!766111 (and ((_ is Cons!50529) (toList!4247 lt!1678020)) (not (= (_1!28752 (h!56344 (toList!4247 lt!1678020))) (_1!28752 lt!1677922)))))))

(assert (= (and d!1378882 c!766110) b!4496146))

(assert (= (and d!1378882 (not c!766110)) b!4496147))

(assert (= (and b!4496147 c!766111) b!4496148))

(assert (= (and b!4496147 (not c!766111)) b!4496149))

(declare-fun m!5223825 () Bool)

(assert (=> b!4496148 m!5223825))

(assert (=> b!4495650 d!1378882))

(declare-fun d!1378884 () Bool)

(declare-fun res!1868884 () Bool)

(declare-fun e!2800650 () Bool)

(assert (=> d!1378884 (=> res!1868884 e!2800650)))

(assert (=> d!1378884 (= res!1868884 (and ((_ is Cons!50528) (t!357610 lt!1677908)) (= (_1!28751 (h!56343 (t!357610 lt!1677908))) key!3287)))))

(assert (=> d!1378884 (= (containsKey!1664 (t!357610 lt!1677908) key!3287) e!2800650)))

(declare-fun b!4496150 () Bool)

(declare-fun e!2800651 () Bool)

(assert (=> b!4496150 (= e!2800650 e!2800651)))

(declare-fun res!1868885 () Bool)

(assert (=> b!4496150 (=> (not res!1868885) (not e!2800651))))

(assert (=> b!4496150 (= res!1868885 ((_ is Cons!50528) (t!357610 lt!1677908)))))

(declare-fun b!4496151 () Bool)

(assert (=> b!4496151 (= e!2800651 (containsKey!1664 (t!357610 (t!357610 lt!1677908)) key!3287))))

(assert (= (and d!1378884 (not res!1868884)) b!4496150))

(assert (= (and b!4496150 res!1868885) b!4496151))

(declare-fun m!5223827 () Bool)

(assert (=> b!4496151 m!5223827))

(assert (=> b!4495822 d!1378884))

(assert (=> b!4495774 d!1378818))

(declare-fun d!1378886 () Bool)

(declare-fun res!1868886 () Bool)

(declare-fun e!2800652 () Bool)

(assert (=> d!1378886 (=> res!1868886 e!2800652)))

(assert (=> d!1378886 (= res!1868886 (not ((_ is Cons!50528) (_2!28752 (h!56344 (toList!4247 lm!1477))))))))

(assert (=> d!1378886 (= (noDuplicateKeys!1120 (_2!28752 (h!56344 (toList!4247 lm!1477)))) e!2800652)))

(declare-fun b!4496152 () Bool)

(declare-fun e!2800653 () Bool)

(assert (=> b!4496152 (= e!2800652 e!2800653)))

(declare-fun res!1868887 () Bool)

(assert (=> b!4496152 (=> (not res!1868887) (not e!2800653))))

(assert (=> b!4496152 (= res!1868887 (not (containsKey!1664 (t!357610 (_2!28752 (h!56344 (toList!4247 lm!1477)))) (_1!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 lm!1477))))))))))

(declare-fun b!4496153 () Bool)

(assert (=> b!4496153 (= e!2800653 (noDuplicateKeys!1120 (t!357610 (_2!28752 (h!56344 (toList!4247 lm!1477))))))))

(assert (= (and d!1378886 (not res!1868886)) b!4496152))

(assert (= (and b!4496152 res!1868887) b!4496153))

(declare-fun m!5223829 () Bool)

(assert (=> b!4496152 m!5223829))

(declare-fun m!5223831 () Bool)

(assert (=> b!4496153 m!5223831))

(assert (=> bs!833508 d!1378886))

(declare-fun d!1378888 () Bool)

(declare-fun res!1868888 () Bool)

(declare-fun e!2800654 () Bool)

(assert (=> d!1378888 (=> res!1868888 e!2800654)))

(assert (=> d!1378888 (= res!1868888 ((_ is Nil!50529) (toList!4247 lm!1477)))))

(assert (=> d!1378888 (= (forall!10161 (toList!4247 lm!1477) lambda!168034) e!2800654)))

(declare-fun b!4496154 () Bool)

(declare-fun e!2800655 () Bool)

(assert (=> b!4496154 (= e!2800654 e!2800655)))

(declare-fun res!1868889 () Bool)

(assert (=> b!4496154 (=> (not res!1868889) (not e!2800655))))

(assert (=> b!4496154 (= res!1868889 (dynLambda!21097 lambda!168034 (h!56344 (toList!4247 lm!1477))))))

(declare-fun b!4496155 () Bool)

(assert (=> b!4496155 (= e!2800655 (forall!10161 (t!357611 (toList!4247 lm!1477)) lambda!168034))))

(assert (= (and d!1378888 (not res!1868888)) b!4496154))

(assert (= (and b!4496154 res!1868889) b!4496155))

(declare-fun b_lambda!151953 () Bool)

(assert (=> (not b_lambda!151953) (not b!4496154)))

(declare-fun m!5223833 () Bool)

(assert (=> b!4496154 m!5223833))

(declare-fun m!5223835 () Bool)

(assert (=> b!4496155 m!5223835))

(assert (=> d!1378608 d!1378888))

(declare-fun d!1378890 () Bool)

(assert (=> d!1378890 (isDefined!8323 (getValueByKey!1016 (toList!4248 lt!1677918) key!3287))))

(declare-fun lt!1678234 () Unit!91352)

(declare-fun choose!29064 (List!50652 K!11940) Unit!91352)

(assert (=> d!1378890 (= lt!1678234 (choose!29064 (toList!4248 lt!1677918) key!3287))))

(assert (=> d!1378890 (invariantList!979 (toList!4248 lt!1677918))))

(assert (=> d!1378890 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!920 (toList!4248 lt!1677918) key!3287) lt!1678234)))

(declare-fun bs!833559 () Bool)

(assert (= bs!833559 d!1378890))

(assert (=> bs!833559 m!5223375))

(assert (=> bs!833559 m!5223375))

(assert (=> bs!833559 m!5223377))

(declare-fun m!5223837 () Bool)

(assert (=> bs!833559 m!5223837))

(declare-fun m!5223839 () Bool)

(assert (=> bs!833559 m!5223839))

(assert (=> b!4495773 d!1378890))

(declare-fun d!1378892 () Bool)

(assert (=> d!1378892 (= (isDefined!8323 (getValueByKey!1016 (toList!4248 lt!1677918) key!3287)) (not (isEmpty!28584 (getValueByKey!1016 (toList!4248 lt!1677918) key!3287))))))

(declare-fun bs!833560 () Bool)

(assert (= bs!833560 d!1378892))

(assert (=> bs!833560 m!5223375))

(declare-fun m!5223841 () Bool)

(assert (=> bs!833560 m!5223841))

(assert (=> b!4495773 d!1378892))

(declare-fun b!4496158 () Bool)

(declare-fun e!2800657 () Option!11036)

(assert (=> b!4496158 (= e!2800657 (getValueByKey!1016 (t!357610 (toList!4248 lt!1677918)) key!3287))))

(declare-fun b!4496157 () Bool)

(declare-fun e!2800656 () Option!11036)

(assert (=> b!4496157 (= e!2800656 e!2800657)))

(declare-fun c!766113 () Bool)

(assert (=> b!4496157 (= c!766113 (and ((_ is Cons!50528) (toList!4248 lt!1677918)) (not (= (_1!28751 (h!56343 (toList!4248 lt!1677918))) key!3287))))))

(declare-fun d!1378894 () Bool)

(declare-fun c!766112 () Bool)

(assert (=> d!1378894 (= c!766112 (and ((_ is Cons!50528) (toList!4248 lt!1677918)) (= (_1!28751 (h!56343 (toList!4248 lt!1677918))) key!3287)))))

(assert (=> d!1378894 (= (getValueByKey!1016 (toList!4248 lt!1677918) key!3287) e!2800656)))

(declare-fun b!4496156 () Bool)

(assert (=> b!4496156 (= e!2800656 (Some!11035 (_2!28751 (h!56343 (toList!4248 lt!1677918)))))))

(declare-fun b!4496159 () Bool)

(assert (=> b!4496159 (= e!2800657 None!11035)))

(assert (= (and d!1378894 c!766112) b!4496156))

(assert (= (and d!1378894 (not c!766112)) b!4496157))

(assert (= (and b!4496157 c!766113) b!4496158))

(assert (= (and b!4496157 (not c!766113)) b!4496159))

(declare-fun m!5223843 () Bool)

(assert (=> b!4496158 m!5223843))

(assert (=> b!4495773 d!1378894))

(declare-fun d!1378896 () Bool)

(assert (=> d!1378896 (contains!13193 (getKeysList!427 (toList!4248 lt!1677918)) key!3287)))

(declare-fun lt!1678239 () Unit!91352)

(declare-fun choose!29065 (List!50652 K!11940) Unit!91352)

(assert (=> d!1378896 (= lt!1678239 (choose!29065 (toList!4248 lt!1677918) key!3287))))

(assert (=> d!1378896 (invariantList!979 (toList!4248 lt!1677918))))

(assert (=> d!1378896 (= (lemmaInListThenGetKeysListContains!423 (toList!4248 lt!1677918) key!3287) lt!1678239)))

(declare-fun bs!833561 () Bool)

(assert (= bs!833561 d!1378896))

(assert (=> bs!833561 m!5223383))

(assert (=> bs!833561 m!5223383))

(declare-fun m!5223845 () Bool)

(assert (=> bs!833561 m!5223845))

(declare-fun m!5223847 () Bool)

(assert (=> bs!833561 m!5223847))

(assert (=> bs!833561 m!5223839))

(assert (=> b!4495773 d!1378896))

(declare-fun d!1378898 () Bool)

(declare-fun res!1868890 () Bool)

(declare-fun e!2800664 () Bool)

(assert (=> d!1378898 (=> res!1868890 e!2800664)))

(assert (=> d!1378898 (= res!1868890 (and ((_ is Cons!50528) (t!357610 newBucket!178)) (= (_1!28751 (h!56343 (t!357610 newBucket!178))) (_1!28751 (h!56343 newBucket!178)))))))

(assert (=> d!1378898 (= (containsKey!1664 (t!357610 newBucket!178) (_1!28751 (h!56343 newBucket!178))) e!2800664)))

(declare-fun b!4496172 () Bool)

(declare-fun e!2800665 () Bool)

(assert (=> b!4496172 (= e!2800664 e!2800665)))

(declare-fun res!1868891 () Bool)

(assert (=> b!4496172 (=> (not res!1868891) (not e!2800665))))

(assert (=> b!4496172 (= res!1868891 ((_ is Cons!50528) (t!357610 newBucket!178)))))

(declare-fun b!4496173 () Bool)

(assert (=> b!4496173 (= e!2800665 (containsKey!1664 (t!357610 (t!357610 newBucket!178)) (_1!28751 (h!56343 newBucket!178))))))

(assert (= (and d!1378898 (not res!1868890)) b!4496172))

(assert (= (and b!4496172 res!1868891) b!4496173))

(declare-fun m!5223849 () Bool)

(assert (=> b!4496173 m!5223849))

(assert (=> b!4495607 d!1378898))

(declare-fun d!1378900 () Bool)

(assert (=> d!1378900 (= (invariantList!979 (toList!4248 lt!1677975)) (noDuplicatedKeys!238 (toList!4248 lt!1677975)))))

(declare-fun bs!833562 () Bool)

(assert (= bs!833562 d!1378900))

(declare-fun m!5223851 () Bool)

(assert (=> bs!833562 m!5223851))

(assert (=> d!1378576 d!1378900))

(declare-fun d!1378902 () Bool)

(declare-fun res!1868892 () Bool)

(declare-fun e!2800668 () Bool)

(assert (=> d!1378902 (=> res!1868892 e!2800668)))

(assert (=> d!1378902 (= res!1868892 ((_ is Nil!50529) (toList!4247 lm!1477)))))

(assert (=> d!1378902 (= (forall!10161 (toList!4247 lm!1477) lambda!168025) e!2800668)))

(declare-fun b!4496178 () Bool)

(declare-fun e!2800669 () Bool)

(assert (=> b!4496178 (= e!2800668 e!2800669)))

(declare-fun res!1868893 () Bool)

(assert (=> b!4496178 (=> (not res!1868893) (not e!2800669))))

(assert (=> b!4496178 (= res!1868893 (dynLambda!21097 lambda!168025 (h!56344 (toList!4247 lm!1477))))))

(declare-fun b!4496179 () Bool)

(assert (=> b!4496179 (= e!2800669 (forall!10161 (t!357611 (toList!4247 lm!1477)) lambda!168025))))

(assert (= (and d!1378902 (not res!1868892)) b!4496178))

(assert (= (and b!4496178 res!1868893) b!4496179))

(declare-fun b_lambda!151955 () Bool)

(assert (=> (not b_lambda!151955) (not b!4496178)))

(declare-fun m!5223853 () Bool)

(assert (=> b!4496178 m!5223853))

(declare-fun m!5223855 () Bool)

(assert (=> b!4496179 m!5223855))

(assert (=> d!1378576 d!1378902))

(declare-fun d!1378904 () Bool)

(declare-fun e!2800677 () Bool)

(assert (=> d!1378904 e!2800677))

(declare-fun res!1868896 () Bool)

(assert (=> d!1378904 (=> res!1868896 e!2800677)))

(declare-fun e!2800674 () Bool)

(assert (=> d!1378904 (= res!1868896 e!2800674)))

(declare-fun res!1868900 () Bool)

(assert (=> d!1378904 (=> (not res!1868900) (not e!2800674))))

(declare-fun lt!1678243 () Bool)

(assert (=> d!1378904 (= res!1868900 (not lt!1678243))))

(declare-fun lt!1678241 () Bool)

(assert (=> d!1378904 (= lt!1678243 lt!1678241)))

(declare-fun lt!1678244 () Unit!91352)

(declare-fun e!2800672 () Unit!91352)

(assert (=> d!1378904 (= lt!1678244 e!2800672)))

(declare-fun c!766124 () Bool)

(assert (=> d!1378904 (= c!766124 lt!1678241)))

(assert (=> d!1378904 (= lt!1678241 (containsKey!1666 (toList!4248 (extractMap!1176 (toList!4247 lm!1477))) key!3287))))

(assert (=> d!1378904 (= (contains!13191 (extractMap!1176 (toList!4247 lm!1477)) key!3287) lt!1678243)))

(declare-fun b!4496184 () Bool)

(declare-fun e!2800676 () Unit!91352)

(assert (=> b!4496184 (= e!2800672 e!2800676)))

(declare-fun c!766123 () Bool)

(declare-fun call!312854 () Bool)

(assert (=> b!4496184 (= c!766123 call!312854)))

(declare-fun b!4496185 () Bool)

(declare-fun e!2800673 () List!50655)

(assert (=> b!4496185 (= e!2800673 (getKeysList!427 (toList!4248 (extractMap!1176 (toList!4247 lm!1477)))))))

(declare-fun b!4496186 () Bool)

(assert (=> b!4496186 false))

(declare-fun lt!1678240 () Unit!91352)

(declare-fun lt!1678246 () Unit!91352)

(assert (=> b!4496186 (= lt!1678240 lt!1678246)))

(assert (=> b!4496186 (containsKey!1666 (toList!4248 (extractMap!1176 (toList!4247 lm!1477))) key!3287)))

(assert (=> b!4496186 (= lt!1678246 (lemmaInGetKeysListThenContainsKey!426 (toList!4248 (extractMap!1176 (toList!4247 lm!1477))) key!3287))))

(declare-fun Unit!91386 () Unit!91352)

(assert (=> b!4496186 (= e!2800676 Unit!91386)))

(declare-fun b!4496187 () Bool)

(declare-fun e!2800675 () Bool)

(assert (=> b!4496187 (= e!2800675 (contains!13193 (keys!17514 (extractMap!1176 (toList!4247 lm!1477))) key!3287))))

(declare-fun b!4496188 () Bool)

(assert (=> b!4496188 (= e!2800674 (not (contains!13193 (keys!17514 (extractMap!1176 (toList!4247 lm!1477))) key!3287)))))

(declare-fun b!4496189 () Bool)

(declare-fun lt!1678247 () Unit!91352)

(assert (=> b!4496189 (= e!2800672 lt!1678247)))

(declare-fun lt!1678242 () Unit!91352)

(assert (=> b!4496189 (= lt!1678242 (lemmaContainsKeyImpliesGetValueByKeyDefined!920 (toList!4248 (extractMap!1176 (toList!4247 lm!1477))) key!3287))))

(assert (=> b!4496189 (isDefined!8323 (getValueByKey!1016 (toList!4248 (extractMap!1176 (toList!4247 lm!1477))) key!3287))))

(declare-fun lt!1678245 () Unit!91352)

(assert (=> b!4496189 (= lt!1678245 lt!1678242)))

(assert (=> b!4496189 (= lt!1678247 (lemmaInListThenGetKeysListContains!423 (toList!4248 (extractMap!1176 (toList!4247 lm!1477))) key!3287))))

(assert (=> b!4496189 call!312854))

(declare-fun bm!312849 () Bool)

(assert (=> bm!312849 (= call!312854 (contains!13193 e!2800673 key!3287))))

(declare-fun c!766122 () Bool)

(assert (=> bm!312849 (= c!766122 c!766124)))

(declare-fun b!4496190 () Bool)

(assert (=> b!4496190 (= e!2800673 (keys!17514 (extractMap!1176 (toList!4247 lm!1477))))))

(declare-fun b!4496191 () Bool)

(assert (=> b!4496191 (= e!2800677 e!2800675)))

(declare-fun res!1868897 () Bool)

(assert (=> b!4496191 (=> (not res!1868897) (not e!2800675))))

(assert (=> b!4496191 (= res!1868897 (isDefined!8323 (getValueByKey!1016 (toList!4248 (extractMap!1176 (toList!4247 lm!1477))) key!3287)))))

(declare-fun b!4496192 () Bool)

(declare-fun Unit!91387 () Unit!91352)

(assert (=> b!4496192 (= e!2800676 Unit!91387)))

(assert (= (and d!1378904 c!766124) b!4496189))

(assert (= (and d!1378904 (not c!766124)) b!4496184))

(assert (= (and b!4496184 c!766123) b!4496186))

(assert (= (and b!4496184 (not c!766123)) b!4496192))

(assert (= (or b!4496189 b!4496184) bm!312849))

(assert (= (and bm!312849 c!766122) b!4496185))

(assert (= (and bm!312849 (not c!766122)) b!4496190))

(assert (= (and d!1378904 res!1868900) b!4496188))

(assert (= (and d!1378904 (not res!1868896)) b!4496191))

(assert (= (and b!4496191 res!1868897) b!4496187))

(declare-fun m!5223857 () Bool)

(assert (=> b!4496189 m!5223857))

(declare-fun m!5223859 () Bool)

(assert (=> b!4496189 m!5223859))

(assert (=> b!4496189 m!5223859))

(declare-fun m!5223861 () Bool)

(assert (=> b!4496189 m!5223861))

(declare-fun m!5223863 () Bool)

(assert (=> b!4496189 m!5223863))

(assert (=> b!4496191 m!5223859))

(assert (=> b!4496191 m!5223859))

(assert (=> b!4496191 m!5223861))

(assert (=> b!4496188 m!5222961))

(declare-fun m!5223865 () Bool)

(assert (=> b!4496188 m!5223865))

(assert (=> b!4496188 m!5223865))

(declare-fun m!5223867 () Bool)

(assert (=> b!4496188 m!5223867))

(assert (=> b!4496190 m!5222961))

(assert (=> b!4496190 m!5223865))

(declare-fun m!5223869 () Bool)

(assert (=> b!4496185 m!5223869))

(declare-fun m!5223871 () Bool)

(assert (=> bm!312849 m!5223871))

(declare-fun m!5223873 () Bool)

(assert (=> d!1378904 m!5223873))

(assert (=> b!4496187 m!5222961))

(assert (=> b!4496187 m!5223865))

(assert (=> b!4496187 m!5223865))

(assert (=> b!4496187 m!5223867))

(assert (=> b!4496186 m!5223873))

(declare-fun m!5223875 () Bool)

(assert (=> b!4496186 m!5223875))

(assert (=> d!1378678 d!1378904))

(assert (=> d!1378678 d!1378576))

(declare-fun d!1378906 () Bool)

(assert (=> d!1378906 (not (contains!13191 (extractMap!1176 (toList!4247 lm!1477)) key!3287))))

(assert (=> d!1378906 true))

(declare-fun _$26!302 () Unit!91352)

(assert (=> d!1378906 (= (choose!29048 lm!1477 key!3287 hashF!1107) _$26!302)))

(declare-fun bs!833563 () Bool)

(assert (= bs!833563 d!1378906))

(assert (=> bs!833563 m!5222961))

(assert (=> bs!833563 m!5222961))

(assert (=> bs!833563 m!5223331))

(assert (=> d!1378678 d!1378906))

(declare-fun d!1378910 () Bool)

(declare-fun res!1868903 () Bool)

(declare-fun e!2800683 () Bool)

(assert (=> d!1378910 (=> res!1868903 e!2800683)))

(assert (=> d!1378910 (= res!1868903 ((_ is Nil!50529) (toList!4247 lm!1477)))))

(assert (=> d!1378910 (= (forall!10161 (toList!4247 lm!1477) lambda!168057) e!2800683)))

(declare-fun b!4496203 () Bool)

(declare-fun e!2800684 () Bool)

(assert (=> b!4496203 (= e!2800683 e!2800684)))

(declare-fun res!1868904 () Bool)

(assert (=> b!4496203 (=> (not res!1868904) (not e!2800684))))

(assert (=> b!4496203 (= res!1868904 (dynLambda!21097 lambda!168057 (h!56344 (toList!4247 lm!1477))))))

(declare-fun b!4496204 () Bool)

(assert (=> b!4496204 (= e!2800684 (forall!10161 (t!357611 (toList!4247 lm!1477)) lambda!168057))))

(assert (= (and d!1378910 (not res!1868903)) b!4496203))

(assert (= (and b!4496203 res!1868904) b!4496204))

(declare-fun b_lambda!151957 () Bool)

(assert (=> (not b_lambda!151957) (not b!4496203)))

(declare-fun m!5223889 () Bool)

(assert (=> b!4496203 m!5223889))

(declare-fun m!5223891 () Bool)

(assert (=> b!4496204 m!5223891))

(assert (=> d!1378678 d!1378910))

(declare-fun d!1378912 () Bool)

(declare-fun lt!1678249 () Bool)

(assert (=> d!1378912 (= lt!1678249 (select (content!8244 (keys!17514 lt!1677918)) key!3287))))

(declare-fun e!2800685 () Bool)

(assert (=> d!1378912 (= lt!1678249 e!2800685)))

(declare-fun res!1868905 () Bool)

(assert (=> d!1378912 (=> (not res!1868905) (not e!2800685))))

(assert (=> d!1378912 (= res!1868905 ((_ is Cons!50531) (keys!17514 lt!1677918)))))

(assert (=> d!1378912 (= (contains!13193 (keys!17514 lt!1677918) key!3287) lt!1678249)))

(declare-fun b!4496205 () Bool)

(declare-fun e!2800686 () Bool)

(assert (=> b!4496205 (= e!2800685 e!2800686)))

(declare-fun res!1868906 () Bool)

(assert (=> b!4496205 (=> res!1868906 e!2800686)))

(assert (=> b!4496205 (= res!1868906 (= (h!56348 (keys!17514 lt!1677918)) key!3287))))

(declare-fun b!4496206 () Bool)

(assert (=> b!4496206 (= e!2800686 (contains!13193 (t!357613 (keys!17514 lt!1677918)) key!3287))))

(assert (= (and d!1378912 res!1868905) b!4496205))

(assert (= (and b!4496205 (not res!1868906)) b!4496206))

(assert (=> d!1378912 m!5223307))

(assert (=> d!1378912 m!5223309))

(declare-fun m!5223893 () Bool)

(assert (=> d!1378912 m!5223893))

(declare-fun m!5223895 () Bool)

(assert (=> b!4496206 m!5223895))

(assert (=> b!4495771 d!1378912))

(assert (=> b!4495771 d!1378818))

(declare-fun d!1378914 () Bool)

(assert (=> d!1378914 (= (isDefined!8323 (getValueByKey!1016 (toList!4248 lt!1677916) key!3287)) (not (isEmpty!28584 (getValueByKey!1016 (toList!4248 lt!1677916) key!3287))))))

(declare-fun bs!833564 () Bool)

(assert (= bs!833564 d!1378914))

(assert (=> bs!833564 m!5222987))

(declare-fun m!5223897 () Bool)

(assert (=> bs!833564 m!5223897))

(assert (=> b!4495568 d!1378914))

(declare-fun b!4496209 () Bool)

(declare-fun e!2800688 () Option!11036)

(assert (=> b!4496209 (= e!2800688 (getValueByKey!1016 (t!357610 (toList!4248 lt!1677916)) key!3287))))

(declare-fun b!4496208 () Bool)

(declare-fun e!2800687 () Option!11036)

(assert (=> b!4496208 (= e!2800687 e!2800688)))

(declare-fun c!766130 () Bool)

(assert (=> b!4496208 (= c!766130 (and ((_ is Cons!50528) (toList!4248 lt!1677916)) (not (= (_1!28751 (h!56343 (toList!4248 lt!1677916))) key!3287))))))

(declare-fun d!1378916 () Bool)

(declare-fun c!766129 () Bool)

(assert (=> d!1378916 (= c!766129 (and ((_ is Cons!50528) (toList!4248 lt!1677916)) (= (_1!28751 (h!56343 (toList!4248 lt!1677916))) key!3287)))))

(assert (=> d!1378916 (= (getValueByKey!1016 (toList!4248 lt!1677916) key!3287) e!2800687)))

(declare-fun b!4496207 () Bool)

(assert (=> b!4496207 (= e!2800687 (Some!11035 (_2!28751 (h!56343 (toList!4248 lt!1677916)))))))

(declare-fun b!4496210 () Bool)

(assert (=> b!4496210 (= e!2800688 None!11035)))

(assert (= (and d!1378916 c!766129) b!4496207))

(assert (= (and d!1378916 (not c!766129)) b!4496208))

(assert (= (and b!4496208 c!766130) b!4496209))

(assert (= (and b!4496208 (not c!766130)) b!4496210))

(declare-fun m!5223899 () Bool)

(assert (=> b!4496209 m!5223899))

(assert (=> b!4495568 d!1378916))

(declare-fun d!1378918 () Bool)

(assert (=> d!1378918 (= (head!9336 (toList!4247 lm!1477)) (h!56344 (toList!4247 lm!1477)))))

(assert (=> d!1378670 d!1378918))

(declare-fun bs!833565 () Bool)

(declare-fun b!4496213 () Bool)

(assert (= bs!833565 (and b!4496213 b!4496114)))

(declare-fun lambda!168104 () Int)

(assert (=> bs!833565 (= (= (t!357610 (toList!4248 lt!1677918)) (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (= lambda!168104 lambda!168102))))

(declare-fun bs!833566 () Bool)

(assert (= bs!833566 (and b!4496213 b!4495981)))

(assert (=> bs!833566 (= (= (t!357610 (toList!4248 lt!1677918)) (Cons!50528 (h!56343 (toList!4248 lt!1677916)) (t!357610 (toList!4248 lt!1677916)))) (= lambda!168104 lambda!168087))))

(declare-fun bs!833567 () Bool)

(assert (= bs!833567 (and b!4496213 b!4496025)))

(assert (=> bs!833567 (= (= (t!357610 (toList!4248 lt!1677918)) (toList!4248 lt!1677918)) (= lambda!168104 lambda!168090))))

(declare-fun bs!833568 () Bool)

(assert (= bs!833568 (and b!4496213 b!4495977)))

(assert (=> bs!833568 (= (= (t!357610 (toList!4248 lt!1677918)) (t!357610 (toList!4248 lt!1677916))) (= lambda!168104 lambda!168086))))

(declare-fun bs!833569 () Bool)

(assert (= bs!833569 (and b!4496213 b!4495982)))

(assert (=> bs!833569 (= (= (t!357610 (toList!4248 lt!1677918)) (toList!4248 lt!1677916)) (= lambda!168104 lambda!168088))))

(declare-fun bs!833570 () Bool)

(assert (= bs!833570 (and b!4496213 b!4495900)))

(assert (=> bs!833570 (= (= (t!357610 (toList!4248 lt!1677918)) (toList!4248 lt!1677916)) (= lambda!168104 lambda!168076))))

(declare-fun bs!833571 () Bool)

(assert (= bs!833571 (and b!4496213 b!4496030)))

(assert (=> bs!833571 (= (= (t!357610 (toList!4248 lt!1677918)) (toList!4248 lt!1678085)) (= lambda!168104 lambda!168092))))

(assert (=> b!4496213 true))

(declare-fun bs!833572 () Bool)

(declare-fun b!4496217 () Bool)

(assert (= bs!833572 (and b!4496217 b!4496114)))

(declare-fun lambda!168105 () Int)

(assert (=> bs!833572 (= (= (Cons!50528 (h!56343 (toList!4248 lt!1677918)) (t!357610 (toList!4248 lt!1677918))) (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (= lambda!168105 lambda!168102))))

(declare-fun bs!833573 () Bool)

(assert (= bs!833573 (and b!4496217 b!4495981)))

(assert (=> bs!833573 (= (= (Cons!50528 (h!56343 (toList!4248 lt!1677918)) (t!357610 (toList!4248 lt!1677918))) (Cons!50528 (h!56343 (toList!4248 lt!1677916)) (t!357610 (toList!4248 lt!1677916)))) (= lambda!168105 lambda!168087))))

(declare-fun bs!833574 () Bool)

(assert (= bs!833574 (and b!4496217 b!4496213)))

(assert (=> bs!833574 (= (= (Cons!50528 (h!56343 (toList!4248 lt!1677918)) (t!357610 (toList!4248 lt!1677918))) (t!357610 (toList!4248 lt!1677918))) (= lambda!168105 lambda!168104))))

(declare-fun bs!833575 () Bool)

(assert (= bs!833575 (and b!4496217 b!4496025)))

(assert (=> bs!833575 (= (= (Cons!50528 (h!56343 (toList!4248 lt!1677918)) (t!357610 (toList!4248 lt!1677918))) (toList!4248 lt!1677918)) (= lambda!168105 lambda!168090))))

(declare-fun bs!833576 () Bool)

(assert (= bs!833576 (and b!4496217 b!4495977)))

(assert (=> bs!833576 (= (= (Cons!50528 (h!56343 (toList!4248 lt!1677918)) (t!357610 (toList!4248 lt!1677918))) (t!357610 (toList!4248 lt!1677916))) (= lambda!168105 lambda!168086))))

(declare-fun bs!833577 () Bool)

(assert (= bs!833577 (and b!4496217 b!4495982)))

(assert (=> bs!833577 (= (= (Cons!50528 (h!56343 (toList!4248 lt!1677918)) (t!357610 (toList!4248 lt!1677918))) (toList!4248 lt!1677916)) (= lambda!168105 lambda!168088))))

(declare-fun bs!833578 () Bool)

(assert (= bs!833578 (and b!4496217 b!4495900)))

(assert (=> bs!833578 (= (= (Cons!50528 (h!56343 (toList!4248 lt!1677918)) (t!357610 (toList!4248 lt!1677918))) (toList!4248 lt!1677916)) (= lambda!168105 lambda!168076))))

(declare-fun bs!833579 () Bool)

(assert (= bs!833579 (and b!4496217 b!4496030)))

(assert (=> bs!833579 (= (= (Cons!50528 (h!56343 (toList!4248 lt!1677918)) (t!357610 (toList!4248 lt!1677918))) (toList!4248 lt!1678085)) (= lambda!168105 lambda!168092))))

(assert (=> b!4496217 true))

(declare-fun bs!833580 () Bool)

(declare-fun b!4496218 () Bool)

(assert (= bs!833580 (and b!4496218 b!4496114)))

(declare-fun lambda!168106 () Int)

(assert (=> bs!833580 (= (= (toList!4248 lt!1677918) (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (= lambda!168106 lambda!168102))))

(declare-fun bs!833581 () Bool)

(assert (= bs!833581 (and b!4496218 b!4495981)))

(assert (=> bs!833581 (= (= (toList!4248 lt!1677918) (Cons!50528 (h!56343 (toList!4248 lt!1677916)) (t!357610 (toList!4248 lt!1677916)))) (= lambda!168106 lambda!168087))))

(declare-fun bs!833582 () Bool)

(assert (= bs!833582 (and b!4496218 b!4496217)))

(assert (=> bs!833582 (= (= (toList!4248 lt!1677918) (Cons!50528 (h!56343 (toList!4248 lt!1677918)) (t!357610 (toList!4248 lt!1677918)))) (= lambda!168106 lambda!168105))))

(declare-fun bs!833583 () Bool)

(assert (= bs!833583 (and b!4496218 b!4496213)))

(assert (=> bs!833583 (= (= (toList!4248 lt!1677918) (t!357610 (toList!4248 lt!1677918))) (= lambda!168106 lambda!168104))))

(declare-fun bs!833584 () Bool)

(assert (= bs!833584 (and b!4496218 b!4496025)))

(assert (=> bs!833584 (= lambda!168106 lambda!168090)))

(declare-fun bs!833585 () Bool)

(assert (= bs!833585 (and b!4496218 b!4495977)))

(assert (=> bs!833585 (= (= (toList!4248 lt!1677918) (t!357610 (toList!4248 lt!1677916))) (= lambda!168106 lambda!168086))))

(declare-fun bs!833586 () Bool)

(assert (= bs!833586 (and b!4496218 b!4495982)))

(assert (=> bs!833586 (= (= (toList!4248 lt!1677918) (toList!4248 lt!1677916)) (= lambda!168106 lambda!168088))))

(declare-fun bs!833587 () Bool)

(assert (= bs!833587 (and b!4496218 b!4495900)))

(assert (=> bs!833587 (= (= (toList!4248 lt!1677918) (toList!4248 lt!1677916)) (= lambda!168106 lambda!168076))))

(declare-fun bs!833588 () Bool)

(assert (= bs!833588 (and b!4496218 b!4496030)))

(assert (=> bs!833588 (= (= (toList!4248 lt!1677918) (toList!4248 lt!1678085)) (= lambda!168106 lambda!168092))))

(assert (=> b!4496218 true))

(declare-fun bs!833589 () Bool)

(declare-fun b!4496214 () Bool)

(assert (= bs!833589 (and b!4496214 b!4495901)))

(declare-fun lambda!168107 () Int)

(assert (=> bs!833589 (= lambda!168107 lambda!168077)))

(declare-fun bs!833590 () Bool)

(assert (= bs!833590 (and b!4496214 b!4496115)))

(assert (=> bs!833590 (= lambda!168107 lambda!168103)))

(declare-fun bs!833591 () Bool)

(assert (= bs!833591 (and b!4496214 b!4496026)))

(assert (=> bs!833591 (= lambda!168107 lambda!168091)))

(declare-fun bs!833592 () Bool)

(assert (= bs!833592 (and b!4496214 b!4495978)))

(assert (=> bs!833592 (= lambda!168107 lambda!168089)))

(declare-fun bs!833593 () Bool)

(assert (= bs!833593 (and b!4496214 b!4496031)))

(assert (=> bs!833593 (= lambda!168107 lambda!168093)))

(declare-fun b!4496211 () Bool)

(declare-fun e!2800692 () Unit!91352)

(declare-fun Unit!91388 () Unit!91352)

(assert (=> b!4496211 (= e!2800692 Unit!91388)))

(declare-fun b!4496212 () Bool)

(declare-fun e!2800691 () List!50655)

(assert (=> b!4496212 (= e!2800691 Nil!50531)))

(assert (=> b!4496213 false))

(declare-fun lt!1678253 () Unit!91352)

(assert (=> b!4496213 (= lt!1678253 (forallContained!2416 (getKeysList!427 (t!357610 (toList!4248 lt!1677918))) lambda!168104 (_1!28751 (h!56343 (toList!4248 lt!1677918)))))))

(declare-fun Unit!91389 () Unit!91352)

(assert (=> b!4496213 (= e!2800692 Unit!91389)))

(declare-fun lt!1678256 () List!50655)

(declare-fun e!2800690 () Bool)

(assert (=> b!4496214 (= e!2800690 (= (content!8244 lt!1678256) (content!8244 (map!11094 (toList!4248 lt!1677918) lambda!168107))))))

(declare-fun b!4496215 () Bool)

(assert (=> b!4496215 false))

(declare-fun e!2800689 () Unit!91352)

(declare-fun Unit!91390 () Unit!91352)

(assert (=> b!4496215 (= e!2800689 Unit!91390)))

(declare-fun b!4496216 () Bool)

(declare-fun Unit!91391 () Unit!91352)

(assert (=> b!4496216 (= e!2800689 Unit!91391)))

(assert (=> b!4496217 (= e!2800691 (Cons!50531 (_1!28751 (h!56343 (toList!4248 lt!1677918))) (getKeysList!427 (t!357610 (toList!4248 lt!1677918)))))))

(declare-fun c!766132 () Bool)

(assert (=> b!4496217 (= c!766132 (containsKey!1666 (t!357610 (toList!4248 lt!1677918)) (_1!28751 (h!56343 (toList!4248 lt!1677918)))))))

(declare-fun lt!1678252 () Unit!91352)

(assert (=> b!4496217 (= lt!1678252 e!2800689)))

(declare-fun c!766131 () Bool)

(assert (=> b!4496217 (= c!766131 (contains!13193 (getKeysList!427 (t!357610 (toList!4248 lt!1677918))) (_1!28751 (h!56343 (toList!4248 lt!1677918)))))))

(declare-fun lt!1678255 () Unit!91352)

(assert (=> b!4496217 (= lt!1678255 e!2800692)))

(declare-fun lt!1678254 () List!50655)

(assert (=> b!4496217 (= lt!1678254 (getKeysList!427 (t!357610 (toList!4248 lt!1677918))))))

(declare-fun lt!1678251 () Unit!91352)

(assert (=> b!4496217 (= lt!1678251 (lemmaForallContainsAddHeadPreserves!144 (t!357610 (toList!4248 lt!1677918)) lt!1678254 (h!56343 (toList!4248 lt!1677918))))))

(assert (=> b!4496217 (forall!10164 lt!1678254 lambda!168105)))

(declare-fun lt!1678250 () Unit!91352)

(assert (=> b!4496217 (= lt!1678250 lt!1678251)))

(declare-fun d!1378920 () Bool)

(assert (=> d!1378920 e!2800690))

(declare-fun res!1868908 () Bool)

(assert (=> d!1378920 (=> (not res!1868908) (not e!2800690))))

(assert (=> d!1378920 (= res!1868908 (noDuplicate!723 lt!1678256))))

(assert (=> d!1378920 (= lt!1678256 e!2800691)))

(declare-fun c!766133 () Bool)

(assert (=> d!1378920 (= c!766133 ((_ is Cons!50528) (toList!4248 lt!1677918)))))

(assert (=> d!1378920 (invariantList!979 (toList!4248 lt!1677918))))

(assert (=> d!1378920 (= (getKeysList!427 (toList!4248 lt!1677918)) lt!1678256)))

(declare-fun res!1868907 () Bool)

(assert (=> b!4496218 (=> (not res!1868907) (not e!2800690))))

(assert (=> b!4496218 (= res!1868907 (forall!10164 lt!1678256 lambda!168106))))

(declare-fun b!4496219 () Bool)

(declare-fun res!1868909 () Bool)

(assert (=> b!4496219 (=> (not res!1868909) (not e!2800690))))

(assert (=> b!4496219 (= res!1868909 (= (length!302 lt!1678256) (length!303 (toList!4248 lt!1677918))))))

(assert (= (and d!1378920 c!766133) b!4496217))

(assert (= (and d!1378920 (not c!766133)) b!4496212))

(assert (= (and b!4496217 c!766132) b!4496215))

(assert (= (and b!4496217 (not c!766132)) b!4496216))

(assert (= (and b!4496217 c!766131) b!4496213))

(assert (= (and b!4496217 (not c!766131)) b!4496211))

(assert (= (and d!1378920 res!1868908) b!4496219))

(assert (= (and b!4496219 res!1868909) b!4496218))

(assert (= (and b!4496218 res!1868907) b!4496214))

(declare-fun m!5223901 () Bool)

(assert (=> b!4496214 m!5223901))

(declare-fun m!5223903 () Bool)

(assert (=> b!4496214 m!5223903))

(assert (=> b!4496214 m!5223903))

(declare-fun m!5223905 () Bool)

(assert (=> b!4496214 m!5223905))

(declare-fun m!5223907 () Bool)

(assert (=> b!4496213 m!5223907))

(assert (=> b!4496213 m!5223907))

(declare-fun m!5223909 () Bool)

(assert (=> b!4496213 m!5223909))

(declare-fun m!5223911 () Bool)

(assert (=> d!1378920 m!5223911))

(assert (=> d!1378920 m!5223839))

(declare-fun m!5223913 () Bool)

(assert (=> b!4496217 m!5223913))

(declare-fun m!5223915 () Bool)

(assert (=> b!4496217 m!5223915))

(assert (=> b!4496217 m!5223907))

(assert (=> b!4496217 m!5223907))

(declare-fun m!5223917 () Bool)

(assert (=> b!4496217 m!5223917))

(declare-fun m!5223919 () Bool)

(assert (=> b!4496217 m!5223919))

(declare-fun m!5223921 () Bool)

(assert (=> b!4496218 m!5223921))

(declare-fun m!5223923 () Bool)

(assert (=> b!4496219 m!5223923))

(assert (=> b!4496219 m!5223653))

(assert (=> b!4495769 d!1378920))

(declare-fun d!1378922 () Bool)

(assert (=> d!1378922 (= (get!16506 (getValueByKey!1017 (toList!4247 lm!1477) hash!344)) (v!44510 (getValueByKey!1017 (toList!4247 lm!1477) hash!344)))))

(assert (=> d!1378694 d!1378922))

(assert (=> d!1378694 d!1378756))

(declare-fun d!1378924 () Bool)

(declare-fun res!1868914 () Bool)

(declare-fun e!2800703 () Bool)

(assert (=> d!1378924 (=> res!1868914 e!2800703)))

(assert (=> d!1378924 (= res!1868914 ((_ is Nil!50528) newBucket!178))))

(assert (=> d!1378924 (= (forall!10163 newBucket!178 lambda!168060) e!2800703)))

(declare-fun b!4496236 () Bool)

(declare-fun e!2800704 () Bool)

(assert (=> b!4496236 (= e!2800703 e!2800704)))

(declare-fun res!1868915 () Bool)

(assert (=> b!4496236 (=> (not res!1868915) (not e!2800704))))

(declare-fun dynLambda!21099 (Int tuple2!50914) Bool)

(assert (=> b!4496236 (= res!1868915 (dynLambda!21099 lambda!168060 (h!56343 newBucket!178)))))

(declare-fun b!4496237 () Bool)

(assert (=> b!4496237 (= e!2800704 (forall!10163 (t!357610 newBucket!178) lambda!168060))))

(assert (= (and d!1378924 (not res!1868914)) b!4496236))

(assert (= (and b!4496236 res!1868915) b!4496237))

(declare-fun b_lambda!151959 () Bool)

(assert (=> (not b_lambda!151959) (not b!4496236)))

(declare-fun m!5223925 () Bool)

(assert (=> b!4496236 m!5223925))

(declare-fun m!5223927 () Bool)

(assert (=> b!4496237 m!5223927))

(assert (=> d!1378680 d!1378924))

(declare-fun d!1378926 () Bool)

(declare-fun lt!1678271 () Bool)

(assert (=> d!1378926 (= lt!1678271 (select (content!8244 e!2800262) key!3287))))

(declare-fun e!2800705 () Bool)

(assert (=> d!1378926 (= lt!1678271 e!2800705)))

(declare-fun res!1868916 () Bool)

(assert (=> d!1378926 (=> (not res!1868916) (not e!2800705))))

(assert (=> d!1378926 (= res!1868916 ((_ is Cons!50531) e!2800262))))

(assert (=> d!1378926 (= (contains!13193 e!2800262 key!3287) lt!1678271)))

(declare-fun b!4496238 () Bool)

(declare-fun e!2800706 () Bool)

(assert (=> b!4496238 (= e!2800705 e!2800706)))

(declare-fun res!1868917 () Bool)

(assert (=> b!4496238 (=> res!1868917 e!2800706)))

(assert (=> b!4496238 (= res!1868917 (= (h!56348 e!2800262) key!3287))))

(declare-fun b!4496239 () Bool)

(assert (=> b!4496239 (= e!2800706 (contains!13193 (t!357613 e!2800262) key!3287))))

(assert (= (and d!1378926 res!1868916) b!4496238))

(assert (= (and b!4496238 (not res!1868917)) b!4496239))

(declare-fun m!5223929 () Bool)

(assert (=> d!1378926 m!5223929))

(declare-fun m!5223931 () Bool)

(assert (=> d!1378926 m!5223931))

(declare-fun m!5223933 () Bool)

(assert (=> b!4496239 m!5223933))

(assert (=> bm!312825 d!1378926))

(declare-fun d!1378928 () Bool)

(declare-fun res!1868918 () Bool)

(declare-fun e!2800707 () Bool)

(assert (=> d!1378928 (=> res!1868918 e!2800707)))

(assert (=> d!1378928 (= res!1868918 (and ((_ is Cons!50528) (toList!4248 lt!1677918)) (= (_1!28751 (h!56343 (toList!4248 lt!1677918))) key!3287)))))

(assert (=> d!1378928 (= (containsKey!1666 (toList!4248 lt!1677918) key!3287) e!2800707)))

(declare-fun b!4496240 () Bool)

(declare-fun e!2800708 () Bool)

(assert (=> b!4496240 (= e!2800707 e!2800708)))

(declare-fun res!1868919 () Bool)

(assert (=> b!4496240 (=> (not res!1868919) (not e!2800708))))

(assert (=> b!4496240 (= res!1868919 ((_ is Cons!50528) (toList!4248 lt!1677918)))))

(declare-fun b!4496241 () Bool)

(assert (=> b!4496241 (= e!2800708 (containsKey!1666 (t!357610 (toList!4248 lt!1677918)) key!3287))))

(assert (= (and d!1378928 (not res!1868918)) b!4496240))

(assert (= (and b!4496240 res!1868919) b!4496241))

(declare-fun m!5223935 () Bool)

(assert (=> b!4496241 m!5223935))

(assert (=> d!1378688 d!1378928))

(declare-fun d!1378930 () Bool)

(declare-fun e!2800716 () Bool)

(assert (=> d!1378930 e!2800716))

(declare-fun res!1868924 () Bool)

(assert (=> d!1378930 (=> res!1868924 e!2800716)))

(declare-fun e!2800713 () Bool)

(assert (=> d!1378930 (= res!1868924 e!2800713)))

(declare-fun res!1868926 () Bool)

(assert (=> d!1378930 (=> (not res!1868926) (not e!2800713))))

(declare-fun lt!1678275 () Bool)

(assert (=> d!1378930 (= res!1868926 (not lt!1678275))))

(declare-fun lt!1678273 () Bool)

(assert (=> d!1378930 (= lt!1678275 lt!1678273)))

(declare-fun lt!1678276 () Unit!91352)

(declare-fun e!2800711 () Unit!91352)

(assert (=> d!1378930 (= lt!1678276 e!2800711)))

(declare-fun c!766142 () Bool)

(assert (=> d!1378930 (= c!766142 lt!1678273)))

(assert (=> d!1378930 (= lt!1678273 (containsKey!1666 (toList!4248 (extractMap!1176 (toList!4247 lt!1677907))) key!3287))))

(assert (=> d!1378930 (= (contains!13191 (extractMap!1176 (toList!4247 lt!1677907)) key!3287) lt!1678275)))

(declare-fun b!4496246 () Bool)

(declare-fun e!2800715 () Unit!91352)

(assert (=> b!4496246 (= e!2800711 e!2800715)))

(declare-fun c!766141 () Bool)

(declare-fun call!312858 () Bool)

(assert (=> b!4496246 (= c!766141 call!312858)))

(declare-fun b!4496247 () Bool)

(declare-fun e!2800712 () List!50655)

(assert (=> b!4496247 (= e!2800712 (getKeysList!427 (toList!4248 (extractMap!1176 (toList!4247 lt!1677907)))))))

(declare-fun b!4496248 () Bool)

(assert (=> b!4496248 false))

(declare-fun lt!1678272 () Unit!91352)

(declare-fun lt!1678278 () Unit!91352)

(assert (=> b!4496248 (= lt!1678272 lt!1678278)))

(assert (=> b!4496248 (containsKey!1666 (toList!4248 (extractMap!1176 (toList!4247 lt!1677907))) key!3287)))

(assert (=> b!4496248 (= lt!1678278 (lemmaInGetKeysListThenContainsKey!426 (toList!4248 (extractMap!1176 (toList!4247 lt!1677907))) key!3287))))

(declare-fun Unit!91392 () Unit!91352)

(assert (=> b!4496248 (= e!2800715 Unit!91392)))

(declare-fun b!4496249 () Bool)

(declare-fun e!2800714 () Bool)

(assert (=> b!4496249 (= e!2800714 (contains!13193 (keys!17514 (extractMap!1176 (toList!4247 lt!1677907))) key!3287))))

(declare-fun b!4496250 () Bool)

(assert (=> b!4496250 (= e!2800713 (not (contains!13193 (keys!17514 (extractMap!1176 (toList!4247 lt!1677907))) key!3287)))))

(declare-fun b!4496251 () Bool)

(declare-fun lt!1678279 () Unit!91352)

(assert (=> b!4496251 (= e!2800711 lt!1678279)))

(declare-fun lt!1678274 () Unit!91352)

(assert (=> b!4496251 (= lt!1678274 (lemmaContainsKeyImpliesGetValueByKeyDefined!920 (toList!4248 (extractMap!1176 (toList!4247 lt!1677907))) key!3287))))

(assert (=> b!4496251 (isDefined!8323 (getValueByKey!1016 (toList!4248 (extractMap!1176 (toList!4247 lt!1677907))) key!3287))))

(declare-fun lt!1678277 () Unit!91352)

(assert (=> b!4496251 (= lt!1678277 lt!1678274)))

(assert (=> b!4496251 (= lt!1678279 (lemmaInListThenGetKeysListContains!423 (toList!4248 (extractMap!1176 (toList!4247 lt!1677907))) key!3287))))

(assert (=> b!4496251 call!312858))

(declare-fun bm!312853 () Bool)

(assert (=> bm!312853 (= call!312858 (contains!13193 e!2800712 key!3287))))

(declare-fun c!766140 () Bool)

(assert (=> bm!312853 (= c!766140 c!766142)))

(declare-fun b!4496252 () Bool)

(assert (=> b!4496252 (= e!2800712 (keys!17514 (extractMap!1176 (toList!4247 lt!1677907))))))

(declare-fun b!4496253 () Bool)

(assert (=> b!4496253 (= e!2800716 e!2800714)))

(declare-fun res!1868925 () Bool)

(assert (=> b!4496253 (=> (not res!1868925) (not e!2800714))))

(assert (=> b!4496253 (= res!1868925 (isDefined!8323 (getValueByKey!1016 (toList!4248 (extractMap!1176 (toList!4247 lt!1677907))) key!3287)))))

(declare-fun b!4496254 () Bool)

(declare-fun Unit!91393 () Unit!91352)

(assert (=> b!4496254 (= e!2800715 Unit!91393)))

(assert (= (and d!1378930 c!766142) b!4496251))

(assert (= (and d!1378930 (not c!766142)) b!4496246))

(assert (= (and b!4496246 c!766141) b!4496248))

(assert (= (and b!4496246 (not c!766141)) b!4496254))

(assert (= (or b!4496251 b!4496246) bm!312853))

(assert (= (and bm!312853 c!766140) b!4496247))

(assert (= (and bm!312853 (not c!766140)) b!4496252))

(assert (= (and d!1378930 res!1868926) b!4496250))

(assert (= (and d!1378930 (not res!1868924)) b!4496253))

(assert (= (and b!4496253 res!1868925) b!4496249))

(declare-fun m!5223937 () Bool)

(assert (=> b!4496251 m!5223937))

(declare-fun m!5223939 () Bool)

(assert (=> b!4496251 m!5223939))

(assert (=> b!4496251 m!5223939))

(declare-fun m!5223941 () Bool)

(assert (=> b!4496251 m!5223941))

(declare-fun m!5223943 () Bool)

(assert (=> b!4496251 m!5223943))

(assert (=> b!4496253 m!5223939))

(assert (=> b!4496253 m!5223939))

(assert (=> b!4496253 m!5223941))

(assert (=> b!4496250 m!5222917))

(declare-fun m!5223945 () Bool)

(assert (=> b!4496250 m!5223945))

(assert (=> b!4496250 m!5223945))

(declare-fun m!5223947 () Bool)

(assert (=> b!4496250 m!5223947))

(assert (=> b!4496252 m!5222917))

(assert (=> b!4496252 m!5223945))

(declare-fun m!5223949 () Bool)

(assert (=> b!4496247 m!5223949))

(declare-fun m!5223951 () Bool)

(assert (=> bm!312853 m!5223951))

(declare-fun m!5223953 () Bool)

(assert (=> d!1378930 m!5223953))

(assert (=> b!4496249 m!5222917))

(assert (=> b!4496249 m!5223945))

(assert (=> b!4496249 m!5223945))

(assert (=> b!4496249 m!5223947))

(assert (=> b!4496248 m!5223953))

(declare-fun m!5223955 () Bool)

(assert (=> b!4496248 m!5223955))

(assert (=> d!1378682 d!1378930))

(assert (=> d!1378682 d!1378690))

(declare-fun d!1378932 () Bool)

(assert (=> d!1378932 (contains!13191 (extractMap!1176 (toList!4247 lt!1677907)) key!3287)))

(assert (=> d!1378932 true))

(declare-fun _$34!610 () Unit!91352)

(assert (=> d!1378932 (= (choose!29049 lt!1677907 key!3287 hashF!1107) _$34!610)))

(declare-fun bs!833605 () Bool)

(assert (= bs!833605 d!1378932))

(assert (=> bs!833605 m!5222917))

(assert (=> bs!833605 m!5222917))

(assert (=> bs!833605 m!5223339))

(assert (=> d!1378682 d!1378932))

(declare-fun d!1378942 () Bool)

(declare-fun res!1868937 () Bool)

(declare-fun e!2800731 () Bool)

(assert (=> d!1378942 (=> res!1868937 e!2800731)))

(assert (=> d!1378942 (= res!1868937 ((_ is Nil!50529) (toList!4247 lt!1677907)))))

(assert (=> d!1378942 (= (forall!10161 (toList!4247 lt!1677907) lambda!168063) e!2800731)))

(declare-fun b!4496287 () Bool)

(declare-fun e!2800732 () Bool)

(assert (=> b!4496287 (= e!2800731 e!2800732)))

(declare-fun res!1868938 () Bool)

(assert (=> b!4496287 (=> (not res!1868938) (not e!2800732))))

(assert (=> b!4496287 (= res!1868938 (dynLambda!21097 lambda!168063 (h!56344 (toList!4247 lt!1677907))))))

(declare-fun b!4496288 () Bool)

(assert (=> b!4496288 (= e!2800732 (forall!10161 (t!357611 (toList!4247 lt!1677907)) lambda!168063))))

(assert (= (and d!1378942 (not res!1868937)) b!4496287))

(assert (= (and b!4496287 res!1868938) b!4496288))

(declare-fun b_lambda!151961 () Bool)

(assert (=> (not b_lambda!151961) (not b!4496287)))

(declare-fun m!5223999 () Bool)

(assert (=> b!4496287 m!5223999))

(declare-fun m!5224001 () Bool)

(assert (=> b!4496288 m!5224001))

(assert (=> d!1378682 d!1378942))

(assert (=> b!4495565 d!1378746))

(assert (=> b!4495565 d!1378750))

(declare-fun d!1378944 () Bool)

(declare-fun lt!1678293 () Bool)

(assert (=> d!1378944 (= lt!1678293 (select (content!8242 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1677910))))

(declare-fun e!2800734 () Bool)

(assert (=> d!1378944 (= lt!1678293 e!2800734)))

(declare-fun res!1868939 () Bool)

(assert (=> d!1378944 (=> (not res!1868939) (not e!2800734))))

(assert (=> d!1378944 (= res!1868939 ((_ is Cons!50529) (t!357611 (t!357611 (toList!4247 lm!1477)))))))

(assert (=> d!1378944 (= (contains!13189 (t!357611 (t!357611 (toList!4247 lm!1477))) lt!1677910) lt!1678293)))

(declare-fun b!4496289 () Bool)

(declare-fun e!2800733 () Bool)

(assert (=> b!4496289 (= e!2800734 e!2800733)))

(declare-fun res!1868940 () Bool)

(assert (=> b!4496289 (=> res!1868940 e!2800733)))

(assert (=> b!4496289 (= res!1868940 (= (h!56344 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1677910))))

(declare-fun b!4496290 () Bool)

(assert (=> b!4496290 (= e!2800733 (contains!13189 (t!357611 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1677910))))

(assert (= (and d!1378944 res!1868939) b!4496289))

(assert (= (and b!4496289 (not res!1868940)) b!4496290))

(assert (=> d!1378944 m!5223475))

(declare-fun m!5224013 () Bool)

(assert (=> d!1378944 m!5224013))

(declare-fun m!5224015 () Bool)

(assert (=> b!4496290 m!5224015))

(assert (=> b!4495614 d!1378944))

(declare-fun d!1378948 () Bool)

(declare-fun e!2800742 () Bool)

(assert (=> d!1378948 e!2800742))

(declare-fun res!1868943 () Bool)

(assert (=> d!1378948 (=> res!1868943 e!2800742)))

(declare-fun e!2800739 () Bool)

(assert (=> d!1378948 (= res!1868943 e!2800739)))

(declare-fun res!1868945 () Bool)

(assert (=> d!1378948 (=> (not res!1868945) (not e!2800739))))

(declare-fun lt!1678297 () Bool)

(assert (=> d!1378948 (= res!1868945 (not lt!1678297))))

(declare-fun lt!1678295 () Bool)

(assert (=> d!1378948 (= lt!1678297 lt!1678295)))

(declare-fun lt!1678298 () Unit!91352)

(declare-fun e!2800737 () Unit!91352)

(assert (=> d!1378948 (= lt!1678298 e!2800737)))

(declare-fun c!766155 () Bool)

(assert (=> d!1378948 (= c!766155 lt!1678295)))

(assert (=> d!1378948 (= lt!1678295 (containsKey!1666 (toList!4248 lt!1678085) key!3287))))

(assert (=> d!1378948 (= (contains!13191 lt!1678085 key!3287) lt!1678297)))

(declare-fun b!4496293 () Bool)

(declare-fun e!2800741 () Unit!91352)

(assert (=> b!4496293 (= e!2800737 e!2800741)))

(declare-fun c!766154 () Bool)

(declare-fun call!312862 () Bool)

(assert (=> b!4496293 (= c!766154 call!312862)))

(declare-fun b!4496294 () Bool)

(declare-fun e!2800738 () List!50655)

(assert (=> b!4496294 (= e!2800738 (getKeysList!427 (toList!4248 lt!1678085)))))

(declare-fun b!4496295 () Bool)

(assert (=> b!4496295 false))

(declare-fun lt!1678294 () Unit!91352)

(declare-fun lt!1678300 () Unit!91352)

(assert (=> b!4496295 (= lt!1678294 lt!1678300)))

(assert (=> b!4496295 (containsKey!1666 (toList!4248 lt!1678085) key!3287)))

(assert (=> b!4496295 (= lt!1678300 (lemmaInGetKeysListThenContainsKey!426 (toList!4248 lt!1678085) key!3287))))

(declare-fun Unit!91396 () Unit!91352)

(assert (=> b!4496295 (= e!2800741 Unit!91396)))

(declare-fun b!4496296 () Bool)

(declare-fun e!2800740 () Bool)

(assert (=> b!4496296 (= e!2800740 (contains!13193 (keys!17514 lt!1678085) key!3287))))

(declare-fun b!4496297 () Bool)

(assert (=> b!4496297 (= e!2800739 (not (contains!13193 (keys!17514 lt!1678085) key!3287)))))

(declare-fun b!4496298 () Bool)

(declare-fun lt!1678301 () Unit!91352)

(assert (=> b!4496298 (= e!2800737 lt!1678301)))

(declare-fun lt!1678296 () Unit!91352)

(assert (=> b!4496298 (= lt!1678296 (lemmaContainsKeyImpliesGetValueByKeyDefined!920 (toList!4248 lt!1678085) key!3287))))

(assert (=> b!4496298 (isDefined!8323 (getValueByKey!1016 (toList!4248 lt!1678085) key!3287))))

(declare-fun lt!1678299 () Unit!91352)

(assert (=> b!4496298 (= lt!1678299 lt!1678296)))

(assert (=> b!4496298 (= lt!1678301 (lemmaInListThenGetKeysListContains!423 (toList!4248 lt!1678085) key!3287))))

(assert (=> b!4496298 call!312862))

(declare-fun bm!312857 () Bool)

(assert (=> bm!312857 (= call!312862 (contains!13193 e!2800738 key!3287))))

(declare-fun c!766153 () Bool)

(assert (=> bm!312857 (= c!766153 c!766155)))

(declare-fun b!4496299 () Bool)

(assert (=> b!4496299 (= e!2800738 (keys!17514 lt!1678085))))

(declare-fun b!4496300 () Bool)

(assert (=> b!4496300 (= e!2800742 e!2800740)))

(declare-fun res!1868944 () Bool)

(assert (=> b!4496300 (=> (not res!1868944) (not e!2800740))))

(assert (=> b!4496300 (= res!1868944 (isDefined!8323 (getValueByKey!1016 (toList!4248 lt!1678085) key!3287)))))

(declare-fun b!4496301 () Bool)

(declare-fun Unit!91397 () Unit!91352)

(assert (=> b!4496301 (= e!2800741 Unit!91397)))

(assert (= (and d!1378948 c!766155) b!4496298))

(assert (= (and d!1378948 (not c!766155)) b!4496293))

(assert (= (and b!4496293 c!766154) b!4496295))

(assert (= (and b!4496293 (not c!766154)) b!4496301))

(assert (= (or b!4496298 b!4496293) bm!312857))

(assert (= (and bm!312857 c!766153) b!4496294))

(assert (= (and bm!312857 (not c!766153)) b!4496299))

(assert (= (and d!1378948 res!1868945) b!4496297))

(assert (= (and d!1378948 (not res!1868943)) b!4496300))

(assert (= (and b!4496300 res!1868944) b!4496296))

(declare-fun m!5224019 () Bool)

(assert (=> b!4496298 m!5224019))

(declare-fun m!5224021 () Bool)

(assert (=> b!4496298 m!5224021))

(assert (=> b!4496298 m!5224021))

(declare-fun m!5224023 () Bool)

(assert (=> b!4496298 m!5224023))

(declare-fun m!5224027 () Bool)

(assert (=> b!4496298 m!5224027))

(assert (=> b!4496300 m!5224021))

(assert (=> b!4496300 m!5224021))

(assert (=> b!4496300 m!5224023))

(assert (=> b!4496297 m!5223311))

(assert (=> b!4496297 m!5223311))

(declare-fun m!5224029 () Bool)

(assert (=> b!4496297 m!5224029))

(assert (=> b!4496299 m!5223311))

(assert (=> b!4496294 m!5223669))

(declare-fun m!5224031 () Bool)

(assert (=> bm!312857 m!5224031))

(declare-fun m!5224033 () Bool)

(assert (=> d!1378948 m!5224033))

(assert (=> b!4496296 m!5223311))

(assert (=> b!4496296 m!5223311))

(assert (=> b!4496296 m!5224029))

(assert (=> b!4496295 m!5224033))

(declare-fun m!5224035 () Bool)

(assert (=> b!4496295 m!5224035))

(assert (=> d!1378658 d!1378948))

(declare-fun b!4496384 () Bool)

(declare-fun e!2800804 () List!50652)

(assert (=> b!4496384 (= e!2800804 (toList!4248 lt!1677918))))

(declare-fun b!4496385 () Bool)

(declare-fun e!2800802 () List!50652)

(assert (=> b!4496385 (= e!2800802 (t!357610 (toList!4248 lt!1677918)))))

(declare-fun c!766185 () Bool)

(declare-fun call!312880 () Bool)

(assert (=> b!4496385 (= c!766185 call!312880)))

(declare-fun lt!1678363 () Unit!91352)

(declare-fun e!2800799 () Unit!91352)

(assert (=> b!4496385 (= lt!1678363 e!2800799)))

(declare-fun b!4496386 () Bool)

(declare-fun res!1868978 () Bool)

(declare-fun e!2800798 () Bool)

(assert (=> b!4496386 (=> (not res!1868978) (not e!2800798))))

(declare-fun lt!1678358 () List!50652)

(assert (=> b!4496386 (= res!1868978 (= (content!8244 (getKeysList!427 lt!1678358)) ((_ map and) (content!8244 (getKeysList!427 (toList!4248 lt!1677918))) ((_ map not) (store ((as const (Array K!11940 Bool)) false) key!3287 true)))))))

(declare-fun b!4496387 () Bool)

(declare-fun e!2800796 () Unit!91352)

(declare-fun Unit!91398 () Unit!91352)

(assert (=> b!4496387 (= e!2800796 Unit!91398)))

(declare-fun lt!1678352 () List!50652)

(assert (=> b!4496387 (= lt!1678352 (removePresrvNoDuplicatedKeys!103 (t!357610 (toList!4248 lt!1677918)) key!3287))))

(declare-fun lt!1678362 () Unit!91352)

(assert (=> b!4496387 (= lt!1678362 (lemmaInListThenGetKeysListContains!423 lt!1678352 (_1!28751 (h!56343 (toList!4248 lt!1677918)))))))

(assert (=> b!4496387 (contains!13193 (getKeysList!427 lt!1678352) (_1!28751 (h!56343 (toList!4248 lt!1677918))))))

(declare-fun lt!1678351 () Unit!91352)

(assert (=> b!4496387 (= lt!1678351 lt!1678362)))

(assert (=> b!4496387 false))

(declare-fun b!4496388 () Bool)

(declare-fun call!312881 () (InoxSet tuple2!50914))

(declare-fun call!312877 () (InoxSet tuple2!50914))

(assert (=> b!4496388 (= call!312881 call!312877)))

(declare-fun Unit!91399 () Unit!91352)

(assert (=> b!4496388 (= e!2800799 Unit!91399)))

(declare-fun b!4496389 () Bool)

(declare-fun get!16507 (Option!11036) V!12186)

(assert (=> b!4496389 (= call!312881 ((_ map and) call!312877 ((_ map not) (store ((as const (Array tuple2!50914 Bool)) false) (tuple2!50915 key!3287 (get!16507 (getValueByKey!1016 (toList!4248 lt!1677918) key!3287))) true))))))

(declare-fun lt!1678349 () Unit!91352)

(declare-fun e!2800801 () Unit!91352)

(assert (=> b!4496389 (= lt!1678349 e!2800801)))

(declare-fun c!766183 () Bool)

(declare-fun contains!13194 (List!50652 tuple2!50914) Bool)

(assert (=> b!4496389 (= c!766183 (contains!13194 (t!357610 (toList!4248 lt!1677918)) (tuple2!50915 key!3287 (get!16507 (getValueByKey!1016 (toList!4248 lt!1677918) key!3287)))))))

(declare-fun Unit!91401 () Unit!91352)

(assert (=> b!4496389 (= e!2800799 Unit!91401)))

(declare-fun b!4496390 () Bool)

(declare-fun e!2800800 () List!50652)

(assert (=> b!4496390 (= e!2800800 Nil!50528)))

(declare-fun b!4496391 () Bool)

(declare-fun Unit!91402 () Unit!91352)

(assert (=> b!4496391 (= e!2800801 Unit!91402)))

(declare-fun lt!1678356 () V!12186)

(assert (=> b!4496391 (= lt!1678356 (get!16507 (getValueByKey!1016 (toList!4248 lt!1677918) key!3287)))))

(declare-fun lt!1678353 () K!11940)

(assert (=> b!4496391 (= lt!1678353 key!3287)))

(declare-fun lt!1678359 () K!11940)

(assert (=> b!4496391 (= lt!1678359 key!3287)))

(declare-fun lt!1678355 () Unit!91352)

(declare-fun lemmaContainsTupleThenContainsKey!38 (List!50652 K!11940 V!12186) Unit!91352)

(assert (=> b!4496391 (= lt!1678355 (lemmaContainsTupleThenContainsKey!38 (t!357610 (toList!4248 lt!1677918)) lt!1678353 (get!16507 (getValueByKey!1016 (toList!4248 lt!1677918) key!3287))))))

(declare-fun call!312876 () Bool)

(assert (=> b!4496391 call!312876))

(declare-fun lt!1678360 () Unit!91352)

(assert (=> b!4496391 (= lt!1678360 lt!1678355)))

(assert (=> b!4496391 false))

(declare-fun c!766184 () Bool)

(declare-fun bm!312871 () Bool)

(assert (=> bm!312871 (= call!312876 (containsKey!1666 (t!357610 (toList!4248 lt!1677918)) (ite c!766184 lt!1678353 (_1!28751 (h!56343 (toList!4248 lt!1677918))))))))

(declare-fun b!4496392 () Bool)

(assert (=> b!4496392 (= e!2800802 e!2800800)))

(declare-fun c!766181 () Bool)

(assert (=> b!4496392 (= c!766181 (and ((_ is Cons!50528) (toList!4248 lt!1677918)) (not (= (_1!28751 (h!56343 (toList!4248 lt!1677918))) key!3287))))))

(declare-fun b!4496393 () Bool)

(declare-fun lt!1678364 () Unit!91352)

(assert (=> b!4496393 (= lt!1678364 e!2800796)))

(declare-fun c!766182 () Bool)

(assert (=> b!4496393 (= c!766182 call!312880)))

(declare-fun lt!1678350 () Unit!91352)

(declare-fun e!2800797 () Unit!91352)

(assert (=> b!4496393 (= lt!1678350 e!2800797)))

(declare-fun c!766186 () Bool)

(assert (=> b!4496393 (= c!766186 (contains!13193 (getKeysList!427 (t!357610 (toList!4248 lt!1677918))) (_1!28751 (h!56343 (toList!4248 lt!1677918)))))))

(declare-fun lt!1678366 () List!50652)

(declare-fun $colon$colon!887 (List!50652 tuple2!50914) List!50652)

(assert (=> b!4496393 (= lt!1678366 ($colon$colon!887 (removePresrvNoDuplicatedKeys!103 (t!357610 (toList!4248 lt!1677918)) key!3287) (h!56343 (toList!4248 lt!1677918))))))

(assert (=> b!4496393 (= e!2800800 lt!1678366)))

(declare-fun b!4496394 () Bool)

(declare-fun Unit!91403 () Unit!91352)

(assert (=> b!4496394 (= e!2800797 Unit!91403)))

(declare-fun lt!1678361 () Unit!91352)

(assert (=> b!4496394 (= lt!1678361 (lemmaInGetKeysListThenContainsKey!426 (t!357610 (toList!4248 lt!1677918)) (_1!28751 (h!56343 (toList!4248 lt!1677918)))))))

(assert (=> b!4496394 call!312876))

(declare-fun lt!1678365 () Unit!91352)

(assert (=> b!4496394 (= lt!1678365 lt!1678361)))

(assert (=> b!4496394 false))

(declare-fun bm!312872 () Bool)

(declare-fun call!312878 () (InoxSet tuple2!50914))

(assert (=> bm!312872 (= call!312878 (content!8243 (toList!4248 lt!1677918)))))

(declare-fun b!4496395 () Bool)

(declare-fun res!1868980 () Bool)

(assert (=> b!4496395 (=> (not res!1868980) (not e!2800798))))

(assert (=> b!4496395 (= res!1868980 (not (containsKey!1666 lt!1678358 key!3287)))))

(declare-fun b!4496396 () Bool)

(declare-fun e!2800803 () Bool)

(declare-fun call!312879 () (InoxSet tuple2!50914))

(assert (=> b!4496396 (= e!2800803 (= call!312879 call!312878))))

(declare-fun bm!312873 () Bool)

(assert (=> bm!312873 (= call!312881 (content!8243 (t!357610 (toList!4248 lt!1677918))))))

(declare-fun bm!312874 () Bool)

(assert (=> bm!312874 (= call!312879 (content!8243 lt!1678358))))

(declare-fun b!4496397 () Bool)

(declare-fun Unit!91410 () Unit!91352)

(assert (=> b!4496397 (= e!2800801 Unit!91410)))

(declare-fun b!4496398 () Bool)

(declare-fun Unit!91411 () Unit!91352)

(assert (=> b!4496398 (= e!2800796 Unit!91411)))

(declare-fun bm!312875 () Bool)

(assert (=> bm!312875 (= call!312877 (content!8243 (toList!4248 lt!1677918)))))

(declare-fun bm!312876 () Bool)

(assert (=> bm!312876 (= call!312880 (containsKey!1666 e!2800804 (ite c!766184 key!3287 (_1!28751 (h!56343 (toList!4248 lt!1677918))))))))

(declare-fun c!766187 () Bool)

(assert (=> bm!312876 (= c!766187 c!766184)))

(declare-fun b!4496399 () Bool)

(assert (=> b!4496399 (= e!2800804 (removePresrvNoDuplicatedKeys!103 (t!357610 (toList!4248 lt!1677918)) key!3287))))

(declare-fun b!4496400 () Bool)

(assert (=> b!4496400 (= e!2800798 e!2800803)))

(declare-fun c!766188 () Bool)

(assert (=> b!4496400 (= c!766188 (containsKey!1666 (toList!4248 lt!1677918) key!3287))))

(declare-fun d!1378954 () Bool)

(assert (=> d!1378954 e!2800798))

(declare-fun res!1868979 () Bool)

(assert (=> d!1378954 (=> (not res!1868979) (not e!2800798))))

(assert (=> d!1378954 (= res!1868979 (invariantList!979 lt!1678358))))

(assert (=> d!1378954 (= lt!1678358 e!2800802)))

(assert (=> d!1378954 (= c!766184 (and ((_ is Cons!50528) (toList!4248 lt!1677918)) (= (_1!28751 (h!56343 (toList!4248 lt!1677918))) key!3287)))))

(assert (=> d!1378954 (invariantList!979 (toList!4248 lt!1677918))))

(assert (=> d!1378954 (= (removePresrvNoDuplicatedKeys!103 (toList!4248 lt!1677918) key!3287) lt!1678358)))

(declare-fun b!4496401 () Bool)

(assert (=> b!4496401 (= e!2800803 (= call!312879 ((_ map and) call!312878 ((_ map not) (store ((as const (Array tuple2!50914 Bool)) false) (tuple2!50915 key!3287 (get!16507 (getValueByKey!1016 (toList!4248 lt!1677918) key!3287))) true)))))))

(assert (=> b!4496401 (containsKey!1666 (toList!4248 lt!1677918) key!3287)))

(declare-fun lt!1678354 () Unit!91352)

(assert (=> b!4496401 (= lt!1678354 (lemmaContainsKeyImpliesGetValueByKeyDefined!920 (toList!4248 lt!1677918) key!3287))))

(assert (=> b!4496401 (isDefined!8323 (getValueByKey!1016 (toList!4248 lt!1677918) key!3287))))

(declare-fun lt!1678357 () Unit!91352)

(assert (=> b!4496401 (= lt!1678357 lt!1678354)))

(declare-fun b!4496402 () Bool)

(declare-fun Unit!91416 () Unit!91352)

(assert (=> b!4496402 (= e!2800797 Unit!91416)))

(assert (= (and d!1378954 c!766184) b!4496385))

(assert (= (and d!1378954 (not c!766184)) b!4496392))

(assert (= (and b!4496385 c!766185) b!4496389))

(assert (= (and b!4496385 (not c!766185)) b!4496388))

(assert (= (and b!4496389 c!766183) b!4496391))

(assert (= (and b!4496389 (not c!766183)) b!4496397))

(assert (= (or b!4496389 b!4496388) bm!312873))

(assert (= (or b!4496389 b!4496388) bm!312875))

(assert (= (and b!4496392 c!766181) b!4496393))

(assert (= (and b!4496392 (not c!766181)) b!4496390))

(assert (= (and b!4496393 c!766186) b!4496394))

(assert (= (and b!4496393 (not c!766186)) b!4496402))

(assert (= (and b!4496393 c!766182) b!4496387))

(assert (= (and b!4496393 (not c!766182)) b!4496398))

(assert (= (or b!4496391 b!4496394) bm!312871))

(assert (= (or b!4496385 b!4496393) bm!312876))

(assert (= (and bm!312876 c!766187) b!4496384))

(assert (= (and bm!312876 (not c!766187)) b!4496399))

(assert (= (and d!1378954 res!1868979) b!4496395))

(assert (= (and b!4496395 res!1868980) b!4496386))

(assert (= (and b!4496386 res!1868978) b!4496400))

(assert (= (and b!4496400 c!766188) b!4496401))

(assert (= (and b!4496400 (not c!766188)) b!4496396))

(assert (= (or b!4496401 b!4496396) bm!312874))

(assert (= (or b!4496401 b!4496396) bm!312872))

(declare-fun m!5224113 () Bool)

(assert (=> b!4496394 m!5224113))

(declare-fun m!5224115 () Bool)

(assert (=> bm!312873 m!5224115))

(assert (=> b!4496386 m!5223383))

(declare-fun m!5224117 () Bool)

(assert (=> b!4496386 m!5224117))

(assert (=> b!4496386 m!5223315))

(declare-fun m!5224119 () Bool)

(assert (=> b!4496386 m!5224119))

(assert (=> b!4496386 m!5224119))

(declare-fun m!5224121 () Bool)

(assert (=> b!4496386 m!5224121))

(assert (=> b!4496386 m!5223383))

(declare-fun m!5224123 () Bool)

(assert (=> b!4496395 m!5224123))

(assert (=> b!4496389 m!5223375))

(assert (=> b!4496389 m!5223375))

(declare-fun m!5224125 () Bool)

(assert (=> b!4496389 m!5224125))

(declare-fun m!5224127 () Bool)

(assert (=> b!4496389 m!5224127))

(declare-fun m!5224129 () Bool)

(assert (=> b!4496389 m!5224129))

(declare-fun m!5224131 () Bool)

(assert (=> b!4496399 m!5224131))

(assert (=> b!4496400 m!5223387))

(declare-fun m!5224133 () Bool)

(assert (=> bm!312872 m!5224133))

(declare-fun m!5224135 () Bool)

(assert (=> bm!312876 m!5224135))

(assert (=> bm!312875 m!5224133))

(assert (=> b!4496401 m!5223375))

(assert (=> b!4496401 m!5223387))

(assert (=> b!4496401 m!5223375))

(assert (=> b!4496401 m!5223377))

(assert (=> b!4496401 m!5223375))

(assert (=> b!4496401 m!5224125))

(assert (=> b!4496401 m!5224127))

(assert (=> b!4496401 m!5223373))

(assert (=> b!4496391 m!5223375))

(assert (=> b!4496391 m!5223375))

(assert (=> b!4496391 m!5224125))

(assert (=> b!4496391 m!5224125))

(declare-fun m!5224137 () Bool)

(assert (=> b!4496391 m!5224137))

(declare-fun m!5224139 () Bool)

(assert (=> bm!312871 m!5224139))

(assert (=> b!4496393 m!5223907))

(assert (=> b!4496393 m!5223907))

(assert (=> b!4496393 m!5223917))

(assert (=> b!4496393 m!5224131))

(assert (=> b!4496393 m!5224131))

(declare-fun m!5224141 () Bool)

(assert (=> b!4496393 m!5224141))

(assert (=> b!4496387 m!5224131))

(declare-fun m!5224143 () Bool)

(assert (=> b!4496387 m!5224143))

(declare-fun m!5224145 () Bool)

(assert (=> b!4496387 m!5224145))

(assert (=> b!4496387 m!5224145))

(declare-fun m!5224147 () Bool)

(assert (=> b!4496387 m!5224147))

(declare-fun m!5224149 () Bool)

(assert (=> d!1378954 m!5224149))

(assert (=> d!1378954 m!5223839))

(declare-fun m!5224151 () Bool)

(assert (=> bm!312874 m!5224151))

(assert (=> d!1378658 d!1378954))

(declare-fun d!1378992 () Bool)

(declare-fun choose!29066 (Hashable!5515 K!11940) (_ BitVec 64))

(assert (=> d!1378992 (= (hash!2671 hashF!1107 key!3287) (choose!29066 hashF!1107 key!3287))))

(declare-fun bs!833617 () Bool)

(assert (= bs!833617 d!1378992))

(declare-fun m!5224153 () Bool)

(assert (=> bs!833617 m!5224153))

(assert (=> d!1378726 d!1378992))

(declare-fun d!1378994 () Bool)

(declare-fun res!1868981 () Bool)

(declare-fun e!2800805 () Bool)

(assert (=> d!1378994 (=> res!1868981 e!2800805)))

(assert (=> d!1378994 (= res!1868981 (and ((_ is Cons!50528) (toList!4248 lt!1677916)) (= (_1!28751 (h!56343 (toList!4248 lt!1677916))) key!3287)))))

(assert (=> d!1378994 (= (containsKey!1666 (toList!4248 lt!1677916) key!3287) e!2800805)))

(declare-fun b!4496403 () Bool)

(declare-fun e!2800806 () Bool)

(assert (=> b!4496403 (= e!2800805 e!2800806)))

(declare-fun res!1868982 () Bool)

(assert (=> b!4496403 (=> (not res!1868982) (not e!2800806))))

(assert (=> b!4496403 (= res!1868982 ((_ is Cons!50528) (toList!4248 lt!1677916)))))

(declare-fun b!4496404 () Bool)

(assert (=> b!4496404 (= e!2800806 (containsKey!1666 (t!357610 (toList!4248 lt!1677916)) key!3287))))

(assert (= (and d!1378994 (not res!1868981)) b!4496403))

(assert (= (and b!4496403 res!1868982) b!4496404))

(declare-fun m!5224155 () Bool)

(assert (=> b!4496404 m!5224155))

(assert (=> b!4495563 d!1378994))

(declare-fun d!1378996 () Bool)

(assert (=> d!1378996 (containsKey!1666 (toList!4248 lt!1677916) key!3287)))

(declare-fun lt!1678367 () Unit!91352)

(assert (=> d!1378996 (= lt!1678367 (choose!29063 (toList!4248 lt!1677916) key!3287))))

(assert (=> d!1378996 (invariantList!979 (toList!4248 lt!1677916))))

(assert (=> d!1378996 (= (lemmaInGetKeysListThenContainsKey!426 (toList!4248 lt!1677916) key!3287) lt!1678367)))

(declare-fun bs!833618 () Bool)

(assert (= bs!833618 d!1378996))

(assert (=> bs!833618 m!5223001))

(declare-fun m!5224157 () Bool)

(assert (=> bs!833618 m!5224157))

(assert (=> bs!833618 m!5223581))

(assert (=> b!4495563 d!1378996))

(declare-fun d!1378998 () Bool)

(declare-fun c!766189 () Bool)

(assert (=> d!1378998 (= c!766189 ((_ is Nil!50528) (toList!4248 lt!1677916)))))

(declare-fun e!2800807 () (InoxSet tuple2!50914))

(assert (=> d!1378998 (= (content!8243 (toList!4248 lt!1677916)) e!2800807)))

(declare-fun b!4496405 () Bool)

(assert (=> b!4496405 (= e!2800807 ((as const (Array tuple2!50914 Bool)) false))))

(declare-fun b!4496406 () Bool)

(assert (=> b!4496406 (= e!2800807 ((_ map or) (store ((as const (Array tuple2!50914 Bool)) false) (h!56343 (toList!4248 lt!1677916)) true) (content!8243 (t!357610 (toList!4248 lt!1677916)))))))

(assert (= (and d!1378998 c!766189) b!4496405))

(assert (= (and d!1378998 (not c!766189)) b!4496406))

(declare-fun m!5224159 () Bool)

(assert (=> b!4496406 m!5224159))

(declare-fun m!5224161 () Bool)

(assert (=> b!4496406 m!5224161))

(assert (=> d!1378718 d!1378998))

(declare-fun d!1379000 () Bool)

(declare-fun c!766190 () Bool)

(assert (=> d!1379000 (= c!766190 ((_ is Nil!50528) (toList!4248 lt!1677917)))))

(declare-fun e!2800808 () (InoxSet tuple2!50914))

(assert (=> d!1379000 (= (content!8243 (toList!4248 lt!1677917)) e!2800808)))

(declare-fun b!4496407 () Bool)

(assert (=> b!4496407 (= e!2800808 ((as const (Array tuple2!50914 Bool)) false))))

(declare-fun b!4496408 () Bool)

(assert (=> b!4496408 (= e!2800808 ((_ map or) (store ((as const (Array tuple2!50914 Bool)) false) (h!56343 (toList!4248 lt!1677917)) true) (content!8243 (t!357610 (toList!4248 lt!1677917)))))))

(assert (= (and d!1379000 c!766190) b!4496407))

(assert (= (and d!1379000 (not c!766190)) b!4496408))

(declare-fun m!5224163 () Bool)

(assert (=> b!4496408 m!5224163))

(declare-fun m!5224165 () Bool)

(assert (=> b!4496408 m!5224165))

(assert (=> d!1378718 d!1379000))

(declare-fun d!1379002 () Bool)

(declare-fun res!1868983 () Bool)

(declare-fun e!2800809 () Bool)

(assert (=> d!1379002 (=> res!1868983 e!2800809)))

(assert (=> d!1379002 (= res!1868983 (and ((_ is Cons!50528) lt!1678119) (= (_1!28751 (h!56343 lt!1678119)) key!3287)))))

(assert (=> d!1379002 (= (containsKey!1664 lt!1678119 key!3287) e!2800809)))

(declare-fun b!4496409 () Bool)

(declare-fun e!2800810 () Bool)

(assert (=> b!4496409 (= e!2800809 e!2800810)))

(declare-fun res!1868984 () Bool)

(assert (=> b!4496409 (=> (not res!1868984) (not e!2800810))))

(assert (=> b!4496409 (= res!1868984 ((_ is Cons!50528) lt!1678119))))

(declare-fun b!4496410 () Bool)

(assert (=> b!4496410 (= e!2800810 (containsKey!1664 (t!357610 lt!1678119) key!3287))))

(assert (= (and d!1379002 (not res!1868983)) b!4496409))

(assert (= (and b!4496409 res!1868984) b!4496410))

(declare-fun m!5224167 () Bool)

(assert (=> b!4496410 m!5224167))

(assert (=> d!1378698 d!1379002))

(declare-fun d!1379004 () Bool)

(declare-fun res!1868985 () Bool)

(declare-fun e!2800811 () Bool)

(assert (=> d!1379004 (=> res!1868985 e!2800811)))

(assert (=> d!1379004 (= res!1868985 (not ((_ is Cons!50528) lt!1677908)))))

(assert (=> d!1379004 (= (noDuplicateKeys!1120 lt!1677908) e!2800811)))

(declare-fun b!4496411 () Bool)

(declare-fun e!2800812 () Bool)

(assert (=> b!4496411 (= e!2800811 e!2800812)))

(declare-fun res!1868986 () Bool)

(assert (=> b!4496411 (=> (not res!1868986) (not e!2800812))))

(assert (=> b!4496411 (= res!1868986 (not (containsKey!1664 (t!357610 lt!1677908) (_1!28751 (h!56343 lt!1677908)))))))

(declare-fun b!4496412 () Bool)

(assert (=> b!4496412 (= e!2800812 (noDuplicateKeys!1120 (t!357610 lt!1677908)))))

(assert (= (and d!1379004 (not res!1868985)) b!4496411))

(assert (= (and b!4496411 res!1868986) b!4496412))

(declare-fun m!5224169 () Bool)

(assert (=> b!4496411 m!5224169))

(declare-fun m!5224171 () Bool)

(assert (=> b!4496412 m!5224171))

(assert (=> d!1378698 d!1379004))

(assert (=> b!4495763 d!1378856))

(declare-fun d!1379006 () Bool)

(assert (=> d!1379006 (isDefined!8323 (getValueByKey!1016 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287))))

(declare-fun lt!1678368 () Unit!91352)

(assert (=> d!1379006 (= lt!1678368 (choose!29064 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287))))

(assert (=> d!1379006 (invariantList!979 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))))

(assert (=> d!1379006 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!920 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287) lt!1678368)))

(declare-fun bs!833619 () Bool)

(assert (= bs!833619 d!1379006))

(assert (=> bs!833619 m!5223347))

(assert (=> bs!833619 m!5223347))

(assert (=> bs!833619 m!5223349))

(declare-fun m!5224173 () Bool)

(assert (=> bs!833619 m!5224173))

(assert (=> bs!833619 m!5223823))

(assert (=> b!4495762 d!1379006))

(assert (=> b!4495762 d!1378790))

(assert (=> b!4495762 d!1378792))

(declare-fun d!1379008 () Bool)

(assert (=> d!1379008 (contains!13193 (getKeysList!427 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) key!3287)))

(declare-fun lt!1678369 () Unit!91352)

(assert (=> d!1379008 (= lt!1678369 (choose!29065 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287))))

(assert (=> d!1379008 (invariantList!979 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))))

(assert (=> d!1379008 (= (lemmaInListThenGetKeysListContains!423 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) key!3287) lt!1678369)))

(declare-fun bs!833620 () Bool)

(assert (= bs!833620 d!1379008))

(assert (=> bs!833620 m!5223357))

(assert (=> bs!833620 m!5223357))

(declare-fun m!5224175 () Bool)

(assert (=> bs!833620 m!5224175))

(declare-fun m!5224177 () Bool)

(assert (=> bs!833620 m!5224177))

(assert (=> bs!833620 m!5223823))

(assert (=> b!4495762 d!1379008))

(declare-fun d!1379010 () Bool)

(assert (=> d!1379010 (= (invariantList!979 (toList!4248 lt!1678068)) (noDuplicatedKeys!238 (toList!4248 lt!1678068)))))

(declare-fun bs!833621 () Bool)

(assert (= bs!833621 d!1379010))

(declare-fun m!5224179 () Bool)

(assert (=> bs!833621 m!5224179))

(assert (=> d!1378652 d!1379010))

(declare-fun d!1379012 () Bool)

(declare-fun res!1868987 () Bool)

(declare-fun e!2800813 () Bool)

(assert (=> d!1379012 (=> res!1868987 e!2800813)))

(assert (=> d!1379012 (= res!1868987 ((_ is Nil!50529) (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))))

(assert (=> d!1379012 (= (forall!10161 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))) lambda!168053) e!2800813)))

(declare-fun b!4496413 () Bool)

(declare-fun e!2800814 () Bool)

(assert (=> b!4496413 (= e!2800813 e!2800814)))

(declare-fun res!1868988 () Bool)

(assert (=> b!4496413 (=> (not res!1868988) (not e!2800814))))

(assert (=> b!4496413 (= res!1868988 (dynLambda!21097 lambda!168053 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))))))

(declare-fun b!4496414 () Bool)

(assert (=> b!4496414 (= e!2800814 (forall!10161 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))) lambda!168053))))

(assert (= (and d!1379012 (not res!1868987)) b!4496413))

(assert (= (and b!4496413 res!1868988) b!4496414))

(declare-fun b_lambda!151969 () Bool)

(assert (=> (not b_lambda!151969) (not b!4496413)))

(declare-fun m!5224181 () Bool)

(assert (=> b!4496413 m!5224181))

(declare-fun m!5224183 () Bool)

(assert (=> b!4496414 m!5224183))

(assert (=> d!1378652 d!1379012))

(declare-fun e!2800816 () Option!11037)

(declare-fun b!4496417 () Bool)

(assert (=> b!4496417 (= e!2800816 (getValueByKey!1017 (t!357611 (toList!4247 lt!1678065)) (_1!28752 (tuple2!50917 hash!344 newBucket!178))))))

(declare-fun c!766191 () Bool)

(declare-fun d!1379014 () Bool)

(assert (=> d!1379014 (= c!766191 (and ((_ is Cons!50529) (toList!4247 lt!1678065)) (= (_1!28752 (h!56344 (toList!4247 lt!1678065))) (_1!28752 (tuple2!50917 hash!344 newBucket!178)))))))

(declare-fun e!2800815 () Option!11037)

(assert (=> d!1379014 (= (getValueByKey!1017 (toList!4247 lt!1678065) (_1!28752 (tuple2!50917 hash!344 newBucket!178))) e!2800815)))

(declare-fun b!4496415 () Bool)

(assert (=> b!4496415 (= e!2800815 (Some!11036 (_2!28752 (h!56344 (toList!4247 lt!1678065)))))))

(declare-fun b!4496418 () Bool)

(assert (=> b!4496418 (= e!2800816 None!11036)))

(declare-fun b!4496416 () Bool)

(assert (=> b!4496416 (= e!2800815 e!2800816)))

(declare-fun c!766192 () Bool)

(assert (=> b!4496416 (= c!766192 (and ((_ is Cons!50529) (toList!4247 lt!1678065)) (not (= (_1!28752 (h!56344 (toList!4247 lt!1678065))) (_1!28752 (tuple2!50917 hash!344 newBucket!178))))))))

(assert (= (and d!1379014 c!766191) b!4496415))

(assert (= (and d!1379014 (not c!766191)) b!4496416))

(assert (= (and b!4496416 c!766192) b!4496417))

(assert (= (and b!4496416 (not c!766192)) b!4496418))

(declare-fun m!5224185 () Bool)

(assert (=> b!4496417 m!5224185))

(assert (=> b!4495705 d!1379014))

(declare-fun bs!833731 () Bool)

(declare-fun b!4496497 () Bool)

(assert (= bs!833731 (and b!4496497 d!1378680)))

(declare-fun lambda!168196 () Int)

(assert (=> bs!833731 (not (= lambda!168196 lambda!168060))))

(assert (=> b!4496497 true))

(declare-fun bs!833732 () Bool)

(declare-fun b!4496501 () Bool)

(assert (= bs!833732 (and b!4496501 d!1378680)))

(declare-fun lambda!168197 () Int)

(assert (=> bs!833732 (not (= lambda!168197 lambda!168060))))

(declare-fun bs!833733 () Bool)

(assert (= bs!833733 (and b!4496501 b!4496497)))

(assert (=> bs!833733 (= lambda!168197 lambda!168196)))

(assert (=> b!4496501 true))

(declare-fun lambda!168198 () Int)

(assert (=> bs!833732 (not (= lambda!168198 lambda!168060))))

(declare-fun lt!1678540 () ListMap!3509)

(assert (=> bs!833733 (= (= lt!1678540 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168198 lambda!168196))))

(assert (=> b!4496501 (= (= lt!1678540 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168198 lambda!168197))))

(assert (=> b!4496501 true))

(declare-fun bs!833735 () Bool)

(declare-fun d!1379016 () Bool)

(assert (= bs!833735 (and d!1379016 d!1378680)))

(declare-fun lambda!168199 () Int)

(assert (=> bs!833735 (not (= lambda!168199 lambda!168060))))

(declare-fun bs!833736 () Bool)

(assert (= bs!833736 (and d!1379016 b!4496497)))

(declare-fun lt!1678539 () ListMap!3509)

(assert (=> bs!833736 (= (= lt!1678539 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168199 lambda!168196))))

(declare-fun bs!833737 () Bool)

(assert (= bs!833737 (and d!1379016 b!4496501)))

(assert (=> bs!833737 (= (= lt!1678539 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168199 lambda!168197))))

(assert (=> bs!833737 (= (= lt!1678539 lt!1678540) (= lambda!168199 lambda!168198))))

(assert (=> d!1379016 true))

(declare-fun c!766209 () Bool)

(declare-fun bm!312895 () Bool)

(declare-fun call!312900 () Bool)

(assert (=> bm!312895 (= call!312900 (forall!10163 (ite c!766209 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (_2!28752 (h!56344 (toList!4247 lt!1677907)))) (ite c!766209 lambda!168196 lambda!168198)))))

(declare-fun e!2800868 () ListMap!3509)

(assert (=> b!4496497 (= e!2800868 (extractMap!1176 (t!357611 (toList!4247 lt!1677907))))))

(declare-fun lt!1678538 () Unit!91352)

(declare-fun call!312902 () Unit!91352)

(assert (=> b!4496497 (= lt!1678538 call!312902)))

(assert (=> b!4496497 call!312900))

(declare-fun lt!1678529 () Unit!91352)

(assert (=> b!4496497 (= lt!1678529 lt!1678538)))

(declare-fun call!312901 () Bool)

(assert (=> b!4496497 call!312901))

(declare-fun lt!1678523 () Unit!91352)

(declare-fun Unit!91420 () Unit!91352)

(assert (=> b!4496497 (= lt!1678523 Unit!91420)))

(declare-fun b!4496498 () Bool)

(declare-fun e!2800869 () Bool)

(assert (=> b!4496498 (= e!2800869 (invariantList!979 (toList!4248 lt!1678539)))))

(assert (=> d!1379016 e!2800869))

(declare-fun res!1869034 () Bool)

(assert (=> d!1379016 (=> (not res!1869034) (not e!2800869))))

(assert (=> d!1379016 (= res!1869034 (forall!10163 (_2!28752 (h!56344 (toList!4247 lt!1677907))) lambda!168199))))

(assert (=> d!1379016 (= lt!1678539 e!2800868)))

(assert (=> d!1379016 (= c!766209 ((_ is Nil!50528) (_2!28752 (h!56344 (toList!4247 lt!1677907)))))))

(assert (=> d!1379016 (noDuplicateKeys!1120 (_2!28752 (h!56344 (toList!4247 lt!1677907))))))

(assert (=> d!1379016 (= (addToMapMapFromBucket!647 (_2!28752 (h!56344 (toList!4247 lt!1677907))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) lt!1678539)))

(declare-fun b!4496499 () Bool)

(declare-fun e!2800867 () Bool)

(assert (=> b!4496499 (= e!2800867 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) lambda!168198))))

(declare-fun b!4496500 () Bool)

(declare-fun res!1869033 () Bool)

(assert (=> b!4496500 (=> (not res!1869033) (not e!2800869))))

(assert (=> b!4496500 (= res!1869033 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) lambda!168199))))

(assert (=> b!4496501 (= e!2800868 lt!1678540)))

(declare-fun lt!1678527 () ListMap!3509)

(declare-fun +!1464 (ListMap!3509 tuple2!50914) ListMap!3509)

(assert (=> b!4496501 (= lt!1678527 (+!1464 (extractMap!1176 (t!357611 (toList!4247 lt!1677907))) (h!56343 (_2!28752 (h!56344 (toList!4247 lt!1677907))))))))

(assert (=> b!4496501 (= lt!1678540 (addToMapMapFromBucket!647 (t!357610 (_2!28752 (h!56344 (toList!4247 lt!1677907)))) (+!1464 (extractMap!1176 (t!357611 (toList!4247 lt!1677907))) (h!56343 (_2!28752 (h!56344 (toList!4247 lt!1677907)))))))))

(declare-fun lt!1678525 () Unit!91352)

(assert (=> b!4496501 (= lt!1678525 call!312902)))

(assert (=> b!4496501 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) lambda!168197)))

(declare-fun lt!1678528 () Unit!91352)

(assert (=> b!4496501 (= lt!1678528 lt!1678525)))

(assert (=> b!4496501 (forall!10163 (toList!4248 lt!1678527) lambda!168198)))

(declare-fun lt!1678536 () Unit!91352)

(declare-fun Unit!91422 () Unit!91352)

(assert (=> b!4496501 (= lt!1678536 Unit!91422)))

(assert (=> b!4496501 (forall!10163 (t!357610 (_2!28752 (h!56344 (toList!4247 lt!1677907)))) lambda!168198)))

(declare-fun lt!1678524 () Unit!91352)

(declare-fun Unit!91423 () Unit!91352)

(assert (=> b!4496501 (= lt!1678524 Unit!91423)))

(declare-fun lt!1678526 () Unit!91352)

(declare-fun Unit!91424 () Unit!91352)

(assert (=> b!4496501 (= lt!1678526 Unit!91424)))

(declare-fun lt!1678537 () Unit!91352)

(declare-fun forallContained!2419 (List!50652 Int tuple2!50914) Unit!91352)

(assert (=> b!4496501 (= lt!1678537 (forallContained!2419 (toList!4248 lt!1678527) lambda!168198 (h!56343 (_2!28752 (h!56344 (toList!4247 lt!1677907))))))))

(assert (=> b!4496501 (contains!13191 lt!1678527 (_1!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 lt!1677907))))))))

(declare-fun lt!1678541 () Unit!91352)

(declare-fun Unit!91425 () Unit!91352)

(assert (=> b!4496501 (= lt!1678541 Unit!91425)))

(assert (=> b!4496501 (contains!13191 lt!1678540 (_1!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 lt!1677907))))))))

(declare-fun lt!1678531 () Unit!91352)

(declare-fun Unit!91426 () Unit!91352)

(assert (=> b!4496501 (= lt!1678531 Unit!91426)))

(assert (=> b!4496501 (forall!10163 (_2!28752 (h!56344 (toList!4247 lt!1677907))) lambda!168198)))

(declare-fun lt!1678521 () Unit!91352)

(declare-fun Unit!91427 () Unit!91352)

(assert (=> b!4496501 (= lt!1678521 Unit!91427)))

(assert (=> b!4496501 (forall!10163 (toList!4248 lt!1678527) lambda!168198)))

(declare-fun lt!1678535 () Unit!91352)

(declare-fun Unit!91428 () Unit!91352)

(assert (=> b!4496501 (= lt!1678535 Unit!91428)))

(declare-fun lt!1678530 () Unit!91352)

(declare-fun Unit!91429 () Unit!91352)

(assert (=> b!4496501 (= lt!1678530 Unit!91429)))

(declare-fun lt!1678533 () Unit!91352)

(declare-fun addForallContainsKeyThenBeforeAdding!302 (ListMap!3509 ListMap!3509 K!11940 V!12186) Unit!91352)

(assert (=> b!4496501 (= lt!1678533 (addForallContainsKeyThenBeforeAdding!302 (extractMap!1176 (t!357611 (toList!4247 lt!1677907))) lt!1678540 (_1!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 lt!1677907))))) (_2!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 lt!1677907)))))))))

(assert (=> b!4496501 call!312901))

(declare-fun lt!1678532 () Unit!91352)

(assert (=> b!4496501 (= lt!1678532 lt!1678533)))

(assert (=> b!4496501 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) lambda!168198)))

(declare-fun lt!1678522 () Unit!91352)

(declare-fun Unit!91430 () Unit!91352)

(assert (=> b!4496501 (= lt!1678522 Unit!91430)))

(declare-fun res!1869035 () Bool)

(assert (=> b!4496501 (= res!1869035 call!312900)))

(assert (=> b!4496501 (=> (not res!1869035) (not e!2800867))))

(assert (=> b!4496501 e!2800867))

(declare-fun lt!1678534 () Unit!91352)

(declare-fun Unit!91431 () Unit!91352)

(assert (=> b!4496501 (= lt!1678534 Unit!91431)))

(declare-fun bm!312896 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!302 (ListMap!3509) Unit!91352)

(assert (=> bm!312896 (= call!312902 (lemmaContainsAllItsOwnKeys!302 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))))))

(declare-fun bm!312897 () Bool)

(assert (=> bm!312897 (= call!312901 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (ite c!766209 lambda!168196 lambda!168198)))))

(assert (= (and d!1379016 c!766209) b!4496497))

(assert (= (and d!1379016 (not c!766209)) b!4496501))

(assert (= (and b!4496501 res!1869035) b!4496499))

(assert (= (or b!4496497 b!4496501) bm!312895))

(assert (= (or b!4496497 b!4496501) bm!312897))

(assert (= (or b!4496497 b!4496501) bm!312896))

(assert (= (and d!1379016 res!1869034) b!4496500))

(assert (= (and b!4496500 res!1869033) b!4496498))

(declare-fun m!5224379 () Bool)

(assert (=> b!4496499 m!5224379))

(assert (=> bm!312896 m!5223395))

(declare-fun m!5224381 () Bool)

(assert (=> bm!312896 m!5224381))

(declare-fun m!5224383 () Bool)

(assert (=> b!4496501 m!5224383))

(declare-fun m!5224385 () Bool)

(assert (=> b!4496501 m!5224385))

(assert (=> b!4496501 m!5223395))

(declare-fun m!5224387 () Bool)

(assert (=> b!4496501 m!5224387))

(assert (=> b!4496501 m!5224379))

(declare-fun m!5224389 () Bool)

(assert (=> b!4496501 m!5224389))

(declare-fun m!5224391 () Bool)

(assert (=> b!4496501 m!5224391))

(declare-fun m!5224393 () Bool)

(assert (=> b!4496501 m!5224393))

(assert (=> b!4496501 m!5223395))

(assert (=> b!4496501 m!5224391))

(assert (=> b!4496501 m!5224383))

(declare-fun m!5224395 () Bool)

(assert (=> b!4496501 m!5224395))

(declare-fun m!5224397 () Bool)

(assert (=> b!4496501 m!5224397))

(declare-fun m!5224399 () Bool)

(assert (=> b!4496501 m!5224399))

(declare-fun m!5224401 () Bool)

(assert (=> b!4496501 m!5224401))

(declare-fun m!5224403 () Bool)

(assert (=> bm!312895 m!5224403))

(declare-fun m!5224405 () Bool)

(assert (=> bm!312897 m!5224405))

(declare-fun m!5224407 () Bool)

(assert (=> b!4496500 m!5224407))

(declare-fun m!5224409 () Bool)

(assert (=> d!1379016 m!5224409))

(declare-fun m!5224411 () Bool)

(assert (=> d!1379016 m!5224411))

(declare-fun m!5224413 () Bool)

(assert (=> b!4496498 m!5224413))

(assert (=> b!4495777 d!1379016))

(declare-fun bs!833753 () Bool)

(declare-fun d!1379062 () Bool)

(assert (= bs!833753 (and d!1379062 d!1378622)))

(declare-fun lambda!168203 () Int)

(assert (=> bs!833753 (= lambda!168203 lambda!168049)))

(declare-fun bs!833754 () Bool)

(assert (= bs!833754 (and d!1379062 d!1378576)))

(assert (=> bs!833754 (= lambda!168203 lambda!168025)))

(declare-fun bs!833755 () Bool)

(assert (= bs!833755 (and d!1379062 start!443472)))

(assert (=> bs!833755 (= lambda!168203 lambda!168015)))

(declare-fun bs!833756 () Bool)

(assert (= bs!833756 (and d!1379062 d!1378692)))

(assert (=> bs!833756 (= lambda!168203 lambda!168068)))

(declare-fun bs!833757 () Bool)

(assert (= bs!833757 (and d!1379062 d!1378682)))

(assert (=> bs!833757 (= lambda!168203 lambda!168063)))

(declare-fun bs!833758 () Bool)

(assert (= bs!833758 (and d!1379062 d!1378652)))

(assert (=> bs!833758 (= lambda!168203 lambda!168053)))

(declare-fun bs!833759 () Bool)

(assert (= bs!833759 (and d!1379062 d!1378690)))

(assert (=> bs!833759 (= lambda!168203 lambda!168065)))

(declare-fun bs!833760 () Bool)

(assert (= bs!833760 (and d!1379062 d!1378676)))

(assert (=> bs!833760 (= lambda!168203 lambda!168054)))

(declare-fun bs!833761 () Bool)

(assert (= bs!833761 (and d!1379062 d!1378608)))

(assert (=> bs!833761 (not (= lambda!168203 lambda!168034))))

(declare-fun bs!833762 () Bool)

(assert (= bs!833762 (and d!1379062 d!1378686)))

(assert (=> bs!833762 (= lambda!168203 lambda!168064)))

(declare-fun bs!833764 () Bool)

(assert (= bs!833764 (and d!1379062 d!1378678)))

(assert (=> bs!833764 (= lambda!168203 lambda!168057)))

(declare-fun bs!833766 () Bool)

(assert (= bs!833766 (and d!1379062 d!1378724)))

(assert (=> bs!833766 (= lambda!168203 lambda!168071)))

(declare-fun lt!1678563 () ListMap!3509)

(assert (=> d!1379062 (invariantList!979 (toList!4248 lt!1678563))))

(declare-fun e!2800875 () ListMap!3509)

(assert (=> d!1379062 (= lt!1678563 e!2800875)))

(declare-fun c!766211 () Bool)

(assert (=> d!1379062 (= c!766211 ((_ is Cons!50529) (t!357611 (toList!4247 lt!1677907))))))

(assert (=> d!1379062 (forall!10161 (t!357611 (toList!4247 lt!1677907)) lambda!168203)))

(assert (=> d!1379062 (= (extractMap!1176 (t!357611 (toList!4247 lt!1677907))) lt!1678563)))

(declare-fun b!4496511 () Bool)

(assert (=> b!4496511 (= e!2800875 (addToMapMapFromBucket!647 (_2!28752 (h!56344 (t!357611 (toList!4247 lt!1677907)))) (extractMap!1176 (t!357611 (t!357611 (toList!4247 lt!1677907))))))))

(declare-fun b!4496512 () Bool)

(assert (=> b!4496512 (= e!2800875 (ListMap!3510 Nil!50528))))

(assert (= (and d!1379062 c!766211) b!4496511))

(assert (= (and d!1379062 (not c!766211)) b!4496512))

(declare-fun m!5224415 () Bool)

(assert (=> d!1379062 m!5224415))

(declare-fun m!5224417 () Bool)

(assert (=> d!1379062 m!5224417))

(declare-fun m!5224419 () Bool)

(assert (=> b!4496511 m!5224419))

(assert (=> b!4496511 m!5224419))

(declare-fun m!5224421 () Bool)

(assert (=> b!4496511 m!5224421))

(assert (=> b!4495777 d!1379062))

(declare-fun d!1379064 () Bool)

(assert (=> d!1379064 (dynLambda!21097 lambda!168015 lt!1677910)))

(assert (=> d!1379064 true))

(declare-fun _$7!1765 () Unit!91352)

(assert (=> d!1379064 (= (choose!29054 (toList!4247 lm!1477) lambda!168015 lt!1677910) _$7!1765)))

(declare-fun b_lambda!151975 () Bool)

(assert (=> (not b_lambda!151975) (not d!1379064)))

(declare-fun bs!833774 () Bool)

(assert (= bs!833774 d!1379064))

(assert (=> bs!833774 m!5223409))

(assert (=> d!1378696 d!1379064))

(assert (=> d!1378696 d!1378710))

(assert (=> b!4495760 d!1378854))

(assert (=> b!4495760 d!1378856))

(declare-fun d!1379066 () Bool)

(declare-fun lt!1678564 () Bool)

(assert (=> d!1379066 (= lt!1678564 (select (content!8242 (toList!4247 lt!1678020)) lt!1677922))))

(declare-fun e!2800877 () Bool)

(assert (=> d!1379066 (= lt!1678564 e!2800877)))

(declare-fun res!1869041 () Bool)

(assert (=> d!1379066 (=> (not res!1869041) (not e!2800877))))

(assert (=> d!1379066 (= res!1869041 ((_ is Cons!50529) (toList!4247 lt!1678020)))))

(assert (=> d!1379066 (= (contains!13189 (toList!4247 lt!1678020) lt!1677922) lt!1678564)))

(declare-fun b!4496513 () Bool)

(declare-fun e!2800876 () Bool)

(assert (=> b!4496513 (= e!2800877 e!2800876)))

(declare-fun res!1869042 () Bool)

(assert (=> b!4496513 (=> res!1869042 e!2800876)))

(assert (=> b!4496513 (= res!1869042 (= (h!56344 (toList!4247 lt!1678020)) lt!1677922))))

(declare-fun b!4496514 () Bool)

(assert (=> b!4496514 (= e!2800876 (contains!13189 (t!357611 (toList!4247 lt!1678020)) lt!1677922))))

(assert (= (and d!1379066 res!1869041) b!4496513))

(assert (= (and b!4496513 (not res!1869042)) b!4496514))

(declare-fun m!5224423 () Bool)

(assert (=> d!1379066 m!5224423))

(declare-fun m!5224425 () Bool)

(assert (=> d!1379066 m!5224425))

(declare-fun m!5224427 () Bool)

(assert (=> b!4496514 m!5224427))

(assert (=> b!4495651 d!1379066))

(declare-fun bs!833775 () Bool)

(declare-fun b!4496517 () Bool)

(assert (= bs!833775 (and b!4496517 b!4496114)))

(declare-fun lambda!168205 () Int)

(assert (=> bs!833775 (= (= (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (= lambda!168205 lambda!168102))))

(declare-fun bs!833776 () Bool)

(assert (= bs!833776 (and b!4496517 b!4495981)))

(assert (=> bs!833776 (= (= (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (Cons!50528 (h!56343 (toList!4248 lt!1677916)) (t!357610 (toList!4248 lt!1677916)))) (= lambda!168205 lambda!168087))))

(declare-fun bs!833777 () Bool)

(assert (= bs!833777 (and b!4496517 b!4496217)))

(assert (=> bs!833777 (= (= (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (Cons!50528 (h!56343 (toList!4248 lt!1677918)) (t!357610 (toList!4248 lt!1677918)))) (= lambda!168205 lambda!168105))))

(declare-fun bs!833778 () Bool)

(assert (= bs!833778 (and b!4496517 b!4496213)))

(assert (=> bs!833778 (= (= (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (t!357610 (toList!4248 lt!1677918))) (= lambda!168205 lambda!168104))))

(declare-fun bs!833779 () Bool)

(assert (= bs!833779 (and b!4496517 b!4496025)))

(assert (=> bs!833779 (= (= (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (toList!4248 lt!1677918)) (= lambda!168205 lambda!168090))))

(declare-fun bs!833780 () Bool)

(assert (= bs!833780 (and b!4496517 b!4496218)))

(assert (=> bs!833780 (= (= (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (toList!4248 lt!1677918)) (= lambda!168205 lambda!168106))))

(declare-fun bs!833781 () Bool)

(assert (= bs!833781 (and b!4496517 b!4495977)))

(assert (=> bs!833781 (= (= (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (t!357610 (toList!4248 lt!1677916))) (= lambda!168205 lambda!168086))))

(declare-fun bs!833782 () Bool)

(assert (= bs!833782 (and b!4496517 b!4495982)))

(assert (=> bs!833782 (= (= (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (toList!4248 lt!1677916)) (= lambda!168205 lambda!168088))))

(declare-fun bs!833783 () Bool)

(assert (= bs!833783 (and b!4496517 b!4495900)))

(assert (=> bs!833783 (= (= (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (toList!4248 lt!1677916)) (= lambda!168205 lambda!168076))))

(declare-fun bs!833784 () Bool)

(assert (= bs!833784 (and b!4496517 b!4496030)))

(assert (=> bs!833784 (= (= (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (toList!4248 lt!1678085)) (= lambda!168205 lambda!168092))))

(assert (=> b!4496517 true))

(declare-fun bs!833790 () Bool)

(declare-fun b!4496521 () Bool)

(assert (= bs!833790 (and b!4496521 b!4496114)))

(declare-fun lambda!168207 () Int)

(assert (=> bs!833790 (= (= (Cons!50528 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (= lambda!168207 lambda!168102))))

(declare-fun bs!833792 () Bool)

(assert (= bs!833792 (and b!4496521 b!4495981)))

(assert (=> bs!833792 (= (= (Cons!50528 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) (Cons!50528 (h!56343 (toList!4248 lt!1677916)) (t!357610 (toList!4248 lt!1677916)))) (= lambda!168207 lambda!168087))))

(declare-fun bs!833794 () Bool)

(assert (= bs!833794 (and b!4496521 b!4496217)))

(assert (=> bs!833794 (= (= (Cons!50528 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) (Cons!50528 (h!56343 (toList!4248 lt!1677918)) (t!357610 (toList!4248 lt!1677918)))) (= lambda!168207 lambda!168105))))

(declare-fun bs!833796 () Bool)

(assert (= bs!833796 (and b!4496521 b!4496213)))

(assert (=> bs!833796 (= (= (Cons!50528 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) (t!357610 (toList!4248 lt!1677918))) (= lambda!168207 lambda!168104))))

(declare-fun bs!833798 () Bool)

(assert (= bs!833798 (and b!4496521 b!4496025)))

(assert (=> bs!833798 (= (= (Cons!50528 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) (toList!4248 lt!1677918)) (= lambda!168207 lambda!168090))))

(declare-fun bs!833800 () Bool)

(assert (= bs!833800 (and b!4496521 b!4496517)))

(assert (=> bs!833800 (= (= (Cons!50528 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) (= lambda!168207 lambda!168205))))

(declare-fun bs!833802 () Bool)

(assert (= bs!833802 (and b!4496521 b!4496218)))

(assert (=> bs!833802 (= (= (Cons!50528 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) (toList!4248 lt!1677918)) (= lambda!168207 lambda!168106))))

(declare-fun bs!833804 () Bool)

(assert (= bs!833804 (and b!4496521 b!4495977)))

(assert (=> bs!833804 (= (= (Cons!50528 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) (t!357610 (toList!4248 lt!1677916))) (= lambda!168207 lambda!168086))))

(declare-fun bs!833806 () Bool)

(assert (= bs!833806 (and b!4496521 b!4495982)))

(assert (=> bs!833806 (= (= (Cons!50528 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) (toList!4248 lt!1677916)) (= lambda!168207 lambda!168088))))

(declare-fun bs!833808 () Bool)

(assert (= bs!833808 (and b!4496521 b!4495900)))

(assert (=> bs!833808 (= (= (Cons!50528 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) (toList!4248 lt!1677916)) (= lambda!168207 lambda!168076))))

(declare-fun bs!833809 () Bool)

(assert (= bs!833809 (and b!4496521 b!4496030)))

(assert (=> bs!833809 (= (= (Cons!50528 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) (toList!4248 lt!1678085)) (= lambda!168207 lambda!168092))))

(assert (=> b!4496521 true))

(declare-fun bs!833810 () Bool)

(declare-fun b!4496522 () Bool)

(assert (= bs!833810 (and b!4496522 b!4496114)))

(declare-fun lambda!168208 () Int)

(assert (=> bs!833810 (= lambda!168208 lambda!168102)))

(declare-fun bs!833811 () Bool)

(assert (= bs!833811 (and b!4496522 b!4495981)))

(assert (=> bs!833811 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (Cons!50528 (h!56343 (toList!4248 lt!1677916)) (t!357610 (toList!4248 lt!1677916)))) (= lambda!168208 lambda!168087))))

(declare-fun bs!833812 () Bool)

(assert (= bs!833812 (and b!4496522 b!4496521)))

(assert (=> bs!833812 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (Cons!50528 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))))) (= lambda!168208 lambda!168207))))

(declare-fun bs!833813 () Bool)

(assert (= bs!833813 (and b!4496522 b!4496217)))

(assert (=> bs!833813 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (Cons!50528 (h!56343 (toList!4248 lt!1677918)) (t!357610 (toList!4248 lt!1677918)))) (= lambda!168208 lambda!168105))))

(declare-fun bs!833814 () Bool)

(assert (= bs!833814 (and b!4496522 b!4496213)))

(assert (=> bs!833814 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (t!357610 (toList!4248 lt!1677918))) (= lambda!168208 lambda!168104))))

(declare-fun bs!833816 () Bool)

(assert (= bs!833816 (and b!4496522 b!4496025)))

(assert (=> bs!833816 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (toList!4248 lt!1677918)) (= lambda!168208 lambda!168090))))

(declare-fun bs!833817 () Bool)

(assert (= bs!833817 (and b!4496522 b!4496517)))

(assert (=> bs!833817 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) (= lambda!168208 lambda!168205))))

(declare-fun bs!833818 () Bool)

(assert (= bs!833818 (and b!4496522 b!4496218)))

(assert (=> bs!833818 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (toList!4248 lt!1677918)) (= lambda!168208 lambda!168106))))

(declare-fun bs!833820 () Bool)

(assert (= bs!833820 (and b!4496522 b!4495977)))

(assert (=> bs!833820 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (t!357610 (toList!4248 lt!1677916))) (= lambda!168208 lambda!168086))))

(declare-fun bs!833821 () Bool)

(assert (= bs!833821 (and b!4496522 b!4495982)))

(assert (=> bs!833821 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (toList!4248 lt!1677916)) (= lambda!168208 lambda!168088))))

(declare-fun bs!833822 () Bool)

(assert (= bs!833822 (and b!4496522 b!4495900)))

(assert (=> bs!833822 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (toList!4248 lt!1677916)) (= lambda!168208 lambda!168076))))

(declare-fun bs!833823 () Bool)

(assert (= bs!833823 (and b!4496522 b!4496030)))

(assert (=> bs!833823 (= (= (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (toList!4248 lt!1678085)) (= lambda!168208 lambda!168092))))

(assert (=> b!4496522 true))

(declare-fun bs!833824 () Bool)

(declare-fun b!4496518 () Bool)

(assert (= bs!833824 (and b!4496518 b!4495901)))

(declare-fun lambda!168209 () Int)

(assert (=> bs!833824 (= lambda!168209 lambda!168077)))

(declare-fun bs!833825 () Bool)

(assert (= bs!833825 (and b!4496518 b!4496115)))

(assert (=> bs!833825 (= lambda!168209 lambda!168103)))

(declare-fun bs!833827 () Bool)

(assert (= bs!833827 (and b!4496518 b!4496214)))

(assert (=> bs!833827 (= lambda!168209 lambda!168107)))

(declare-fun bs!833828 () Bool)

(assert (= bs!833828 (and b!4496518 b!4496026)))

(assert (=> bs!833828 (= lambda!168209 lambda!168091)))

(declare-fun bs!833829 () Bool)

(assert (= bs!833829 (and b!4496518 b!4495978)))

(assert (=> bs!833829 (= lambda!168209 lambda!168089)))

(declare-fun bs!833830 () Bool)

(assert (= bs!833830 (and b!4496518 b!4496031)))

(assert (=> bs!833830 (= lambda!168209 lambda!168093)))

(declare-fun b!4496515 () Bool)

(declare-fun e!2800881 () Unit!91352)

(declare-fun Unit!91443 () Unit!91352)

(assert (=> b!4496515 (= e!2800881 Unit!91443)))

(declare-fun b!4496516 () Bool)

(declare-fun e!2800880 () List!50655)

(assert (=> b!4496516 (= e!2800880 Nil!50531)))

(assert (=> b!4496517 false))

(declare-fun lt!1678568 () Unit!91352)

(assert (=> b!4496517 (= lt!1678568 (forallContained!2416 (getKeysList!427 (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) lambda!168205 (_1!28751 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))))))))

(declare-fun Unit!91444 () Unit!91352)

(assert (=> b!4496517 (= e!2800881 Unit!91444)))

(declare-fun lt!1678571 () List!50655)

(declare-fun e!2800879 () Bool)

(assert (=> b!4496518 (= e!2800879 (= (content!8244 lt!1678571) (content!8244 (map!11094 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) lambda!168209))))))

(declare-fun b!4496519 () Bool)

(assert (=> b!4496519 false))

(declare-fun e!2800878 () Unit!91352)

(declare-fun Unit!91445 () Unit!91352)

(assert (=> b!4496519 (= e!2800878 Unit!91445)))

(declare-fun b!4496520 () Bool)

(declare-fun Unit!91446 () Unit!91352)

(assert (=> b!4496520 (= e!2800878 Unit!91446)))

(assert (=> b!4496521 (= e!2800880 (Cons!50531 (_1!28751 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) (getKeysList!427 (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))))))))

(declare-fun c!766213 () Bool)

(assert (=> b!4496521 (= c!766213 (containsKey!1666 (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) (_1!28751 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))))))))

(declare-fun lt!1678567 () Unit!91352)

(assert (=> b!4496521 (= lt!1678567 e!2800878)))

(declare-fun c!766212 () Bool)

(assert (=> b!4496521 (= c!766212 (contains!13193 (getKeysList!427 (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))) (_1!28751 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))))))))

(declare-fun lt!1678570 () Unit!91352)

(assert (=> b!4496521 (= lt!1678570 e!2800881)))

(declare-fun lt!1678569 () List!50655)

(assert (=> b!4496521 (= lt!1678569 (getKeysList!427 (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))))))

(declare-fun lt!1678566 () Unit!91352)

(assert (=> b!4496521 (= lt!1678566 (lemmaForallContainsAddHeadPreserves!144 (t!357610 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) lt!1678569 (h!56343 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))))))

(assert (=> b!4496521 (forall!10164 lt!1678569 lambda!168207)))

(declare-fun lt!1678565 () Unit!91352)

(assert (=> b!4496521 (= lt!1678565 lt!1678566)))

(declare-fun d!1379068 () Bool)

(assert (=> d!1379068 e!2800879))

(declare-fun res!1869044 () Bool)

(assert (=> d!1379068 (=> (not res!1869044) (not e!2800879))))

(assert (=> d!1379068 (= res!1869044 (noDuplicate!723 lt!1678571))))

(assert (=> d!1379068 (= lt!1678571 e!2800880)))

(declare-fun c!766214 () Bool)

(assert (=> d!1379068 (= c!766214 ((_ is Cons!50528) (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))))))

(assert (=> d!1379068 (invariantList!979 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))))

(assert (=> d!1379068 (= (getKeysList!427 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))) lt!1678571)))

(declare-fun res!1869043 () Bool)

(assert (=> b!4496522 (=> (not res!1869043) (not e!2800879))))

(assert (=> b!4496522 (= res!1869043 (forall!10164 lt!1678571 lambda!168208))))

(declare-fun b!4496523 () Bool)

(declare-fun res!1869045 () Bool)

(assert (=> b!4496523 (=> (not res!1869045) (not e!2800879))))

(assert (=> b!4496523 (= res!1869045 (= (length!302 lt!1678571) (length!303 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))))))

(assert (= (and d!1379068 c!766214) b!4496521))

(assert (= (and d!1379068 (not c!766214)) b!4496516))

(assert (= (and b!4496521 c!766213) b!4496519))

(assert (= (and b!4496521 (not c!766213)) b!4496520))

(assert (= (and b!4496521 c!766212) b!4496517))

(assert (= (and b!4496521 (not c!766212)) b!4496515))

(assert (= (and d!1379068 res!1869044) b!4496523))

(assert (= (and b!4496523 res!1869045) b!4496522))

(assert (= (and b!4496522 res!1869043) b!4496518))

(declare-fun m!5224487 () Bool)

(assert (=> b!4496518 m!5224487))

(declare-fun m!5224489 () Bool)

(assert (=> b!4496518 m!5224489))

(assert (=> b!4496518 m!5224489))

(declare-fun m!5224491 () Bool)

(assert (=> b!4496518 m!5224491))

(declare-fun m!5224493 () Bool)

(assert (=> b!4496517 m!5224493))

(assert (=> b!4496517 m!5224493))

(declare-fun m!5224495 () Bool)

(assert (=> b!4496517 m!5224495))

(declare-fun m!5224497 () Bool)

(assert (=> d!1379068 m!5224497))

(assert (=> d!1379068 m!5223823))

(declare-fun m!5224499 () Bool)

(assert (=> b!4496521 m!5224499))

(declare-fun m!5224501 () Bool)

(assert (=> b!4496521 m!5224501))

(assert (=> b!4496521 m!5224493))

(assert (=> b!4496521 m!5224493))

(declare-fun m!5224503 () Bool)

(assert (=> b!4496521 m!5224503))

(declare-fun m!5224505 () Bool)

(assert (=> b!4496521 m!5224505))

(declare-fun m!5224507 () Bool)

(assert (=> b!4496522 m!5224507))

(declare-fun m!5224509 () Bool)

(assert (=> b!4496523 m!5224509))

(assert (=> b!4496523 m!5223765))

(assert (=> b!4495758 d!1379068))

(assert (=> b!4495775 d!1378892))

(assert (=> b!4495775 d!1378894))

(declare-fun d!1379084 () Bool)

(declare-fun res!1869051 () Bool)

(declare-fun e!2800890 () Bool)

(assert (=> d!1379084 (=> res!1869051 e!2800890)))

(declare-fun e!2800892 () Bool)

(assert (=> d!1379084 (= res!1869051 e!2800892)))

(declare-fun res!1869053 () Bool)

(assert (=> d!1379084 (=> (not res!1869053) (not e!2800892))))

(assert (=> d!1379084 (= res!1869053 ((_ is Cons!50529) (t!357611 (t!357611 (toList!4247 lm!1477)))))))

(assert (=> d!1379084 (= (containsKeyBiggerList!100 (t!357611 (t!357611 (toList!4247 lm!1477))) key!3287) e!2800890)))

(declare-fun b!4496537 () Bool)

(assert (=> b!4496537 (= e!2800892 (containsKey!1664 (_2!28752 (h!56344 (t!357611 (t!357611 (toList!4247 lm!1477))))) key!3287))))

(declare-fun b!4496538 () Bool)

(declare-fun e!2800891 () Bool)

(assert (=> b!4496538 (= e!2800890 e!2800891)))

(declare-fun res!1869052 () Bool)

(assert (=> b!4496538 (=> (not res!1869052) (not e!2800891))))

(assert (=> b!4496538 (= res!1869052 ((_ is Cons!50529) (t!357611 (t!357611 (toList!4247 lm!1477)))))))

(declare-fun b!4496539 () Bool)

(assert (=> b!4496539 (= e!2800891 (containsKeyBiggerList!100 (t!357611 (t!357611 (t!357611 (toList!4247 lm!1477)))) key!3287))))

(assert (= (and d!1379084 res!1869053) b!4496537))

(assert (= (and d!1379084 (not res!1869051)) b!4496538))

(assert (= (and b!4496538 res!1869052) b!4496539))

(declare-fun m!5224511 () Bool)

(assert (=> b!4496537 m!5224511))

(declare-fun m!5224513 () Bool)

(assert (=> b!4496539 m!5224513))

(assert (=> b!4495831 d!1379084))

(assert (=> d!1378684 d!1378876))

(declare-fun d!1379086 () Bool)

(assert (=> d!1379086 (= (invariantList!979 (toList!4248 lt!1678110)) (noDuplicatedKeys!238 (toList!4248 lt!1678110)))))

(declare-fun bs!833843 () Bool)

(assert (= bs!833843 d!1379086))

(declare-fun m!5224515 () Bool)

(assert (=> bs!833843 m!5224515))

(assert (=> d!1378690 d!1379086))

(declare-fun d!1379088 () Bool)

(declare-fun res!1869054 () Bool)

(declare-fun e!2800893 () Bool)

(assert (=> d!1379088 (=> res!1869054 e!2800893)))

(assert (=> d!1379088 (= res!1869054 ((_ is Nil!50529) (toList!4247 lt!1677907)))))

(assert (=> d!1379088 (= (forall!10161 (toList!4247 lt!1677907) lambda!168065) e!2800893)))

(declare-fun b!4496540 () Bool)

(declare-fun e!2800894 () Bool)

(assert (=> b!4496540 (= e!2800893 e!2800894)))

(declare-fun res!1869055 () Bool)

(assert (=> b!4496540 (=> (not res!1869055) (not e!2800894))))

(assert (=> b!4496540 (= res!1869055 (dynLambda!21097 lambda!168065 (h!56344 (toList!4247 lt!1677907))))))

(declare-fun b!4496541 () Bool)

(assert (=> b!4496541 (= e!2800894 (forall!10161 (t!357611 (toList!4247 lt!1677907)) lambda!168065))))

(assert (= (and d!1379088 (not res!1869054)) b!4496540))

(assert (= (and b!4496540 res!1869055) b!4496541))

(declare-fun b_lambda!151977 () Bool)

(assert (=> (not b_lambda!151977) (not b!4496540)))

(declare-fun m!5224517 () Bool)

(assert (=> b!4496540 m!5224517))

(declare-fun m!5224519 () Bool)

(assert (=> b!4496541 m!5224519))

(assert (=> d!1378690 d!1379088))

(declare-fun bs!833853 () Bool)

(declare-fun b!4496542 () Bool)

(assert (= bs!833853 (and b!4496542 d!1378680)))

(declare-fun lambda!168212 () Int)

(assert (=> bs!833853 (not (= lambda!168212 lambda!168060))))

(declare-fun bs!833854 () Bool)

(assert (= bs!833854 (and b!4496542 b!4496501)))

(assert (=> bs!833854 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) lt!1678540) (= lambda!168212 lambda!168198))))

(declare-fun bs!833855 () Bool)

(assert (= bs!833855 (and b!4496542 d!1379016)))

(assert (=> bs!833855 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) lt!1678539) (= lambda!168212 lambda!168199))))

(assert (=> bs!833854 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168212 lambda!168197))))

(declare-fun bs!833856 () Bool)

(assert (= bs!833856 (and b!4496542 b!4496497)))

(assert (=> bs!833856 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168212 lambda!168196))))

(assert (=> b!4496542 true))

(declare-fun bs!833857 () Bool)

(declare-fun b!4496546 () Bool)

(assert (= bs!833857 (and b!4496546 d!1378680)))

(declare-fun lambda!168214 () Int)

(assert (=> bs!833857 (not (= lambda!168214 lambda!168060))))

(declare-fun bs!833858 () Bool)

(assert (= bs!833858 (and b!4496546 b!4496542)))

(assert (=> bs!833858 (= lambda!168214 lambda!168212)))

(declare-fun bs!833859 () Bool)

(assert (= bs!833859 (and b!4496546 b!4496501)))

(assert (=> bs!833859 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) lt!1678540) (= lambda!168214 lambda!168198))))

(declare-fun bs!833860 () Bool)

(assert (= bs!833860 (and b!4496546 d!1379016)))

(assert (=> bs!833860 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) lt!1678539) (= lambda!168214 lambda!168199))))

(assert (=> bs!833859 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168214 lambda!168197))))

(declare-fun bs!833861 () Bool)

(assert (= bs!833861 (and b!4496546 b!4496497)))

(assert (=> bs!833861 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168214 lambda!168196))))

(assert (=> b!4496546 true))

(declare-fun lambda!168215 () Int)

(assert (=> bs!833857 (not (= lambda!168215 lambda!168060))))

(declare-fun lt!1678615 () ListMap!3509)

(assert (=> bs!833858 (= (= lt!1678615 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168215 lambda!168212))))

(assert (=> bs!833859 (= (= lt!1678615 lt!1678540) (= lambda!168215 lambda!168198))))

(assert (=> b!4496546 (= (= lt!1678615 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168215 lambda!168214))))

(assert (=> bs!833860 (= (= lt!1678615 lt!1678539) (= lambda!168215 lambda!168199))))

(assert (=> bs!833859 (= (= lt!1678615 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168215 lambda!168197))))

(assert (=> bs!833861 (= (= lt!1678615 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168215 lambda!168196))))

(assert (=> b!4496546 true))

(declare-fun bs!833872 () Bool)

(declare-fun d!1379090 () Bool)

(assert (= bs!833872 (and d!1379090 d!1378680)))

(declare-fun lambda!168217 () Int)

(assert (=> bs!833872 (not (= lambda!168217 lambda!168060))))

(declare-fun bs!833874 () Bool)

(assert (= bs!833874 (and d!1379090 b!4496542)))

(declare-fun lt!1678614 () ListMap!3509)

(assert (=> bs!833874 (= (= lt!1678614 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168217 lambda!168212))))

(declare-fun bs!833876 () Bool)

(assert (= bs!833876 (and d!1379090 b!4496501)))

(assert (=> bs!833876 (= (= lt!1678614 lt!1678540) (= lambda!168217 lambda!168198))))

(declare-fun bs!833877 () Bool)

(assert (= bs!833877 (and d!1379090 b!4496546)))

(assert (=> bs!833877 (= (= lt!1678614 lt!1678615) (= lambda!168217 lambda!168215))))

(assert (=> bs!833877 (= (= lt!1678614 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168217 lambda!168214))))

(declare-fun bs!833878 () Bool)

(assert (= bs!833878 (and d!1379090 d!1379016)))

(assert (=> bs!833878 (= (= lt!1678614 lt!1678539) (= lambda!168217 lambda!168199))))

(assert (=> bs!833876 (= (= lt!1678614 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168217 lambda!168197))))

(declare-fun bs!833879 () Bool)

(assert (= bs!833879 (and d!1379090 b!4496497)))

(assert (=> bs!833879 (= (= lt!1678614 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168217 lambda!168196))))

(assert (=> d!1379090 true))

(declare-fun c!766219 () Bool)

(declare-fun bm!312904 () Bool)

(declare-fun call!312909 () Bool)

(assert (=> bm!312904 (= call!312909 (forall!10163 (ite c!766219 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (ite c!766219 lambda!168212 lambda!168215)))))

(declare-fun e!2800896 () ListMap!3509)

(assert (=> b!4496542 (= e!2800896 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922)))))))

(declare-fun lt!1678613 () Unit!91352)

(declare-fun call!312911 () Unit!91352)

(assert (=> b!4496542 (= lt!1678613 call!312911)))

(assert (=> b!4496542 call!312909))

(declare-fun lt!1678604 () Unit!91352)

(assert (=> b!4496542 (= lt!1678604 lt!1678613)))

(declare-fun call!312910 () Bool)

(assert (=> b!4496542 call!312910))

(declare-fun lt!1678598 () Unit!91352)

(declare-fun Unit!91447 () Unit!91352)

(assert (=> b!4496542 (= lt!1678598 Unit!91447)))

(declare-fun b!4496543 () Bool)

(declare-fun e!2800897 () Bool)

(assert (=> b!4496543 (= e!2800897 (invariantList!979 (toList!4248 lt!1678614)))))

(assert (=> d!1379090 e!2800897))

(declare-fun res!1869057 () Bool)

(assert (=> d!1379090 (=> (not res!1869057) (not e!2800897))))

(assert (=> d!1379090 (= res!1869057 (forall!10163 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) lambda!168217))))

(assert (=> d!1379090 (= lt!1678614 e!2800896)))

(assert (=> d!1379090 (= c!766219 ((_ is Nil!50528) (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922))))))))

(assert (=> d!1379090 (noDuplicateKeys!1120 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922)))))))

(assert (=> d!1379090 (= (addToMapMapFromBucket!647 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) lt!1678614)))

(declare-fun b!4496544 () Bool)

(declare-fun e!2800895 () Bool)

(assert (=> b!4496544 (= e!2800895 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) lambda!168215))))

(declare-fun b!4496545 () Bool)

(declare-fun res!1869056 () Bool)

(assert (=> b!4496545 (=> (not res!1869056) (not e!2800897))))

(assert (=> b!4496545 (= res!1869056 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) lambda!168217))))

(assert (=> b!4496546 (= e!2800896 lt!1678615)))

(declare-fun lt!1678602 () ListMap!3509)

(assert (=> b!4496546 (= lt!1678602 (+!1464 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) (h!56343 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922)))))))))

(assert (=> b!4496546 (= lt!1678615 (addToMapMapFromBucket!647 (t!357610 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (+!1464 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) (h!56343 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922))))))))))

(declare-fun lt!1678600 () Unit!91352)

(assert (=> b!4496546 (= lt!1678600 call!312911)))

(assert (=> b!4496546 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) lambda!168214)))

(declare-fun lt!1678603 () Unit!91352)

(assert (=> b!4496546 (= lt!1678603 lt!1678600)))

(assert (=> b!4496546 (forall!10163 (toList!4248 lt!1678602) lambda!168215)))

(declare-fun lt!1678611 () Unit!91352)

(declare-fun Unit!91448 () Unit!91352)

(assert (=> b!4496546 (= lt!1678611 Unit!91448)))

(assert (=> b!4496546 (forall!10163 (t!357610 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) lambda!168215)))

(declare-fun lt!1678599 () Unit!91352)

(declare-fun Unit!91449 () Unit!91352)

(assert (=> b!4496546 (= lt!1678599 Unit!91449)))

(declare-fun lt!1678601 () Unit!91352)

(declare-fun Unit!91450 () Unit!91352)

(assert (=> b!4496546 (= lt!1678601 Unit!91450)))

(declare-fun lt!1678612 () Unit!91352)

(assert (=> b!4496546 (= lt!1678612 (forallContained!2419 (toList!4248 lt!1678602) lambda!168215 (h!56343 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922)))))))))

(assert (=> b!4496546 (contains!13191 lt!1678602 (_1!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922)))))))))

(declare-fun lt!1678616 () Unit!91352)

(declare-fun Unit!91451 () Unit!91352)

(assert (=> b!4496546 (= lt!1678616 Unit!91451)))

(assert (=> b!4496546 (contains!13191 lt!1678615 (_1!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922)))))))))

(declare-fun lt!1678606 () Unit!91352)

(declare-fun Unit!91452 () Unit!91352)

(assert (=> b!4496546 (= lt!1678606 Unit!91452)))

(assert (=> b!4496546 (forall!10163 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) lambda!168215)))

(declare-fun lt!1678596 () Unit!91352)

(declare-fun Unit!91453 () Unit!91352)

(assert (=> b!4496546 (= lt!1678596 Unit!91453)))

(assert (=> b!4496546 (forall!10163 (toList!4248 lt!1678602) lambda!168215)))

(declare-fun lt!1678610 () Unit!91352)

(declare-fun Unit!91454 () Unit!91352)

(assert (=> b!4496546 (= lt!1678610 Unit!91454)))

(declare-fun lt!1678605 () Unit!91352)

(declare-fun Unit!91455 () Unit!91352)

(assert (=> b!4496546 (= lt!1678605 Unit!91455)))

(declare-fun lt!1678608 () Unit!91352)

(assert (=> b!4496546 (= lt!1678608 (addForallContainsKeyThenBeforeAdding!302 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) lt!1678615 (_1!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922)))))) (_2!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922))))))))))

(assert (=> b!4496546 call!312910))

(declare-fun lt!1678607 () Unit!91352)

(assert (=> b!4496546 (= lt!1678607 lt!1678608)))

(assert (=> b!4496546 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) lambda!168215)))

(declare-fun lt!1678597 () Unit!91352)

(declare-fun Unit!91456 () Unit!91352)

(assert (=> b!4496546 (= lt!1678597 Unit!91456)))

(declare-fun res!1869058 () Bool)

(assert (=> b!4496546 (= res!1869058 call!312909)))

(assert (=> b!4496546 (=> (not res!1869058) (not e!2800895))))

(assert (=> b!4496546 e!2800895))

(declare-fun lt!1678609 () Unit!91352)

(declare-fun Unit!91457 () Unit!91352)

(assert (=> b!4496546 (= lt!1678609 Unit!91457)))

(declare-fun bm!312905 () Bool)

(assert (=> bm!312905 (= call!312911 (lemmaContainsAllItsOwnKeys!302 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))))))

(declare-fun bm!312906 () Bool)

(assert (=> bm!312906 (= call!312910 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (ite c!766219 lambda!168212 lambda!168215)))))

(assert (= (and d!1379090 c!766219) b!4496542))

(assert (= (and d!1379090 (not c!766219)) b!4496546))

(assert (= (and b!4496546 res!1869058) b!4496544))

(assert (= (or b!4496542 b!4496546) bm!312904))

(assert (= (or b!4496542 b!4496546) bm!312906))

(assert (= (or b!4496542 b!4496546) bm!312905))

(assert (= (and d!1379090 res!1869057) b!4496545))

(assert (= (and b!4496545 res!1869056) b!4496543))

(declare-fun m!5224533 () Bool)

(assert (=> b!4496544 m!5224533))

(assert (=> bm!312905 m!5223327))

(declare-fun m!5224537 () Bool)

(assert (=> bm!312905 m!5224537))

(declare-fun m!5224541 () Bool)

(assert (=> b!4496546 m!5224541))

(declare-fun m!5224545 () Bool)

(assert (=> b!4496546 m!5224545))

(assert (=> b!4496546 m!5223327))

(declare-fun m!5224549 () Bool)

(assert (=> b!4496546 m!5224549))

(assert (=> b!4496546 m!5224533))

(declare-fun m!5224555 () Bool)

(assert (=> b!4496546 m!5224555))

(declare-fun m!5224561 () Bool)

(assert (=> b!4496546 m!5224561))

(declare-fun m!5224565 () Bool)

(assert (=> b!4496546 m!5224565))

(assert (=> b!4496546 m!5223327))

(assert (=> b!4496546 m!5224561))

(assert (=> b!4496546 m!5224541))

(declare-fun m!5224571 () Bool)

(assert (=> b!4496546 m!5224571))

(declare-fun m!5224575 () Bool)

(assert (=> b!4496546 m!5224575))

(declare-fun m!5224577 () Bool)

(assert (=> b!4496546 m!5224577))

(declare-fun m!5224579 () Bool)

(assert (=> b!4496546 m!5224579))

(declare-fun m!5224581 () Bool)

(assert (=> bm!312904 m!5224581))

(declare-fun m!5224583 () Bool)

(assert (=> bm!312906 m!5224583))

(declare-fun m!5224585 () Bool)

(assert (=> b!4496545 m!5224585))

(declare-fun m!5224587 () Bool)

(assert (=> d!1379090 m!5224587))

(declare-fun m!5224589 () Bool)

(assert (=> d!1379090 m!5224589))

(declare-fun m!5224591 () Bool)

(assert (=> b!4496543 m!5224591))

(assert (=> b!4495751 d!1379090))

(declare-fun bs!833884 () Bool)

(declare-fun d!1379094 () Bool)

(assert (= bs!833884 (and d!1379094 d!1378622)))

(declare-fun lambda!168219 () Int)

(assert (=> bs!833884 (= lambda!168219 lambda!168049)))

(declare-fun bs!833887 () Bool)

(assert (= bs!833887 (and d!1379094 d!1378576)))

(assert (=> bs!833887 (= lambda!168219 lambda!168025)))

(declare-fun bs!833889 () Bool)

(assert (= bs!833889 (and d!1379094 start!443472)))

(assert (=> bs!833889 (= lambda!168219 lambda!168015)))

(declare-fun bs!833891 () Bool)

(assert (= bs!833891 (and d!1379094 d!1378692)))

(assert (=> bs!833891 (= lambda!168219 lambda!168068)))

(declare-fun bs!833893 () Bool)

(assert (= bs!833893 (and d!1379094 d!1378682)))

(assert (=> bs!833893 (= lambda!168219 lambda!168063)))

(declare-fun bs!833895 () Bool)

(assert (= bs!833895 (and d!1379094 d!1378652)))

(assert (=> bs!833895 (= lambda!168219 lambda!168053)))

(declare-fun bs!833897 () Bool)

(assert (= bs!833897 (and d!1379094 d!1378690)))

(assert (=> bs!833897 (= lambda!168219 lambda!168065)))

(declare-fun bs!833899 () Bool)

(assert (= bs!833899 (and d!1379094 d!1378676)))

(assert (=> bs!833899 (= lambda!168219 lambda!168054)))

(declare-fun bs!833901 () Bool)

(assert (= bs!833901 (and d!1379094 d!1378608)))

(assert (=> bs!833901 (not (= lambda!168219 lambda!168034))))

(declare-fun bs!833903 () Bool)

(assert (= bs!833903 (and d!1379094 d!1378686)))

(assert (=> bs!833903 (= lambda!168219 lambda!168064)))

(declare-fun bs!833905 () Bool)

(assert (= bs!833905 (and d!1379094 d!1379062)))

(assert (=> bs!833905 (= lambda!168219 lambda!168203)))

(declare-fun bs!833906 () Bool)

(assert (= bs!833906 (and d!1379094 d!1378678)))

(assert (=> bs!833906 (= lambda!168219 lambda!168057)))

(declare-fun bs!833907 () Bool)

(assert (= bs!833907 (and d!1379094 d!1378724)))

(assert (=> bs!833907 (= lambda!168219 lambda!168071)))

(declare-fun lt!1678618 () ListMap!3509)

(assert (=> d!1379094 (invariantList!979 (toList!4248 lt!1678618))))

(declare-fun e!2800899 () ListMap!3509)

(assert (=> d!1379094 (= lt!1678618 e!2800899)))

(declare-fun c!766221 () Bool)

(assert (=> d!1379094 (= c!766221 ((_ is Cons!50529) (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922)))))))

(assert (=> d!1379094 (forall!10161 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))) lambda!168219)))

(assert (=> d!1379094 (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) lt!1678618)))

(declare-fun b!4496549 () Bool)

(assert (=> b!4496549 (= e!2800899 (addToMapMapFromBucket!647 (_2!28752 (h!56344 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (extractMap!1176 (t!357611 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922)))))))))

(declare-fun b!4496550 () Bool)

(assert (=> b!4496550 (= e!2800899 (ListMap!3510 Nil!50528))))

(assert (= (and d!1379094 c!766221) b!4496549))

(assert (= (and d!1379094 (not c!766221)) b!4496550))

(declare-fun m!5224601 () Bool)

(assert (=> d!1379094 m!5224601))

(declare-fun m!5224603 () Bool)

(assert (=> d!1379094 m!5224603))

(declare-fun m!5224605 () Bool)

(assert (=> b!4496549 m!5224605))

(assert (=> b!4496549 m!5224605))

(declare-fun m!5224609 () Bool)

(assert (=> b!4496549 m!5224609))

(assert (=> b!4495751 d!1379094))

(assert (=> d!1378724 d!1378722))

(declare-fun d!1379100 () Bool)

(assert (=> d!1379100 (containsKeyBiggerList!100 (toList!4247 lt!1677907) key!3287)))

(assert (=> d!1379100 true))

(declare-fun _$33!595 () Unit!91352)

(assert (=> d!1379100 (= (choose!29056 lt!1677907 key!3287 hashF!1107) _$33!595)))

(declare-fun bs!833909 () Bool)

(assert (= bs!833909 d!1379100))

(assert (=> bs!833909 m!5222899))

(assert (=> d!1378724 d!1379100))

(declare-fun d!1379104 () Bool)

(declare-fun res!1869061 () Bool)

(declare-fun e!2800902 () Bool)

(assert (=> d!1379104 (=> res!1869061 e!2800902)))

(assert (=> d!1379104 (= res!1869061 ((_ is Nil!50529) (toList!4247 lt!1677907)))))

(assert (=> d!1379104 (= (forall!10161 (toList!4247 lt!1677907) lambda!168071) e!2800902)))

(declare-fun b!4496553 () Bool)

(declare-fun e!2800903 () Bool)

(assert (=> b!4496553 (= e!2800902 e!2800903)))

(declare-fun res!1869062 () Bool)

(assert (=> b!4496553 (=> (not res!1869062) (not e!2800903))))

(assert (=> b!4496553 (= res!1869062 (dynLambda!21097 lambda!168071 (h!56344 (toList!4247 lt!1677907))))))

(declare-fun b!4496554 () Bool)

(assert (=> b!4496554 (= e!2800903 (forall!10161 (t!357611 (toList!4247 lt!1677907)) lambda!168071))))

(assert (= (and d!1379104 (not res!1869061)) b!4496553))

(assert (= (and b!4496553 res!1869062) b!4496554))

(declare-fun b_lambda!151981 () Bool)

(assert (=> (not b_lambda!151981) (not b!4496553)))

(declare-fun m!5224615 () Bool)

(assert (=> b!4496553 m!5224615))

(declare-fun m!5224617 () Bool)

(assert (=> b!4496554 m!5224617))

(assert (=> d!1378724 d!1379104))

(assert (=> b!4495781 d!1378702))

(declare-fun d!1379106 () Bool)

(declare-fun res!1869063 () Bool)

(declare-fun e!2800906 () Bool)

(assert (=> d!1379106 (=> res!1869063 e!2800906)))

(assert (=> d!1379106 (= res!1869063 ((_ is Nil!50529) (toList!4247 lt!1677907)))))

(assert (=> d!1379106 (= (forall!10161 (toList!4247 lt!1677907) lambda!168049) e!2800906)))

(declare-fun b!4496559 () Bool)

(declare-fun e!2800907 () Bool)

(assert (=> b!4496559 (= e!2800906 e!2800907)))

(declare-fun res!1869064 () Bool)

(assert (=> b!4496559 (=> (not res!1869064) (not e!2800907))))

(assert (=> b!4496559 (= res!1869064 (dynLambda!21097 lambda!168049 (h!56344 (toList!4247 lt!1677907))))))

(declare-fun b!4496560 () Bool)

(assert (=> b!4496560 (= e!2800907 (forall!10161 (t!357611 (toList!4247 lt!1677907)) lambda!168049))))

(assert (= (and d!1379106 (not res!1869063)) b!4496559))

(assert (= (and b!4496559 res!1869064) b!4496560))

(declare-fun b_lambda!151983 () Bool)

(assert (=> (not b_lambda!151983) (not b!4496559)))

(declare-fun m!5224619 () Bool)

(assert (=> b!4496559 m!5224619))

(declare-fun m!5224621 () Bool)

(assert (=> b!4496560 m!5224621))

(assert (=> d!1378622 d!1379106))

(declare-fun d!1379108 () Bool)

(assert (=> d!1379108 (eq!577 (extractMap!1176 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))) (-!346 (extractMap!1176 (toList!4247 lt!1677907)) key!3287))))

(assert (=> d!1379108 true))

(declare-fun _$8!584 () Unit!91352)

(assert (=> d!1379108 (= (choose!29047 lt!1677907 hash!344 newBucket!178 key!3287 hashF!1107) _$8!584)))

(declare-fun bs!833970 () Bool)

(assert (= bs!833970 d!1379108))

(assert (=> bs!833970 m!5222943))

(assert (=> bs!833970 m!5222935))

(assert (=> bs!833970 m!5223231))

(assert (=> bs!833970 m!5223237))

(assert (=> bs!833970 m!5222917))

(assert (=> bs!833970 m!5222935))

(assert (=> bs!833970 m!5222917))

(assert (=> bs!833970 m!5223231))

(assert (=> d!1378622 d!1379108))

(declare-fun d!1379122 () Bool)

(declare-fun e!2800920 () Bool)

(assert (=> d!1379122 e!2800920))

(declare-fun res!1869075 () Bool)

(assert (=> d!1379122 (=> (not res!1869075) (not e!2800920))))

(declare-fun lt!1678642 () ListMap!3509)

(assert (=> d!1379122 (= res!1869075 (not (contains!13191 lt!1678642 key!3287)))))

(assert (=> d!1379122 (= lt!1678642 (ListMap!3510 (removePresrvNoDuplicatedKeys!103 (toList!4248 (extractMap!1176 (toList!4247 lt!1677907))) key!3287)))))

(assert (=> d!1379122 (= (-!346 (extractMap!1176 (toList!4247 lt!1677907)) key!3287) lt!1678642)))

(declare-fun b!4496581 () Bool)

(assert (=> b!4496581 (= e!2800920 (= ((_ map and) (content!8244 (keys!17514 (extractMap!1176 (toList!4247 lt!1677907)))) ((_ map not) (store ((as const (Array K!11940 Bool)) false) key!3287 true))) (content!8244 (keys!17514 lt!1678642))))))

(assert (= (and d!1379122 res!1869075) b!4496581))

(declare-fun m!5224691 () Bool)

(assert (=> d!1379122 m!5224691))

(declare-fun m!5224693 () Bool)

(assert (=> d!1379122 m!5224693))

(assert (=> b!4496581 m!5223945))

(declare-fun m!5224695 () Bool)

(assert (=> b!4496581 m!5224695))

(assert (=> b!4496581 m!5222917))

(assert (=> b!4496581 m!5223945))

(declare-fun m!5224697 () Bool)

(assert (=> b!4496581 m!5224697))

(assert (=> b!4496581 m!5224697))

(declare-fun m!5224699 () Bool)

(assert (=> b!4496581 m!5224699))

(assert (=> b!4496581 m!5223315))

(assert (=> d!1378622 d!1379122))

(assert (=> d!1378622 d!1378690))

(assert (=> d!1378622 d!1378646))

(assert (=> d!1378622 d!1378652))

(declare-fun d!1379126 () Bool)

(assert (=> d!1379126 (= (eq!577 (extractMap!1176 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))) (-!346 (extractMap!1176 (toList!4247 lt!1677907)) key!3287)) (= (content!8243 (toList!4248 (extractMap!1176 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (content!8243 (toList!4248 (-!346 (extractMap!1176 (toList!4247 lt!1677907)) key!3287)))))))

(declare-fun bs!833971 () Bool)

(assert (= bs!833971 d!1379126))

(assert (=> bs!833971 m!5223257))

(declare-fun m!5224701 () Bool)

(assert (=> bs!833971 m!5224701))

(assert (=> d!1378622 d!1379126))

(assert (=> d!1378566 d!1378994))

(declare-fun d!1379128 () Bool)

(declare-fun res!1869079 () Bool)

(declare-fun e!2800927 () Bool)

(assert (=> d!1379128 (=> res!1869079 e!2800927)))

(assert (=> d!1379128 (= res!1869079 (not ((_ is Cons!50528) (t!357610 newBucket!178))))))

(assert (=> d!1379128 (= (noDuplicateKeys!1120 (t!357610 newBucket!178)) e!2800927)))

(declare-fun b!4496591 () Bool)

(declare-fun e!2800928 () Bool)

(assert (=> b!4496591 (= e!2800927 e!2800928)))

(declare-fun res!1869080 () Bool)

(assert (=> b!4496591 (=> (not res!1869080) (not e!2800928))))

(assert (=> b!4496591 (= res!1869080 (not (containsKey!1664 (t!357610 (t!357610 newBucket!178)) (_1!28751 (h!56343 (t!357610 newBucket!178))))))))

(declare-fun b!4496592 () Bool)

(assert (=> b!4496592 (= e!2800928 (noDuplicateKeys!1120 (t!357610 (t!357610 newBucket!178))))))

(assert (= (and d!1379128 (not res!1869079)) b!4496591))

(assert (= (and b!4496591 res!1869080) b!4496592))

(declare-fun m!5224711 () Bool)

(assert (=> b!4496591 m!5224711))

(declare-fun m!5224715 () Bool)

(assert (=> b!4496592 m!5224715))

(assert (=> b!4495608 d!1379128))

(assert (=> d!1378618 d!1379000))

(assert (=> d!1378618 d!1378998))

(declare-fun d!1379130 () Bool)

(declare-fun lt!1678651 () Bool)

(assert (=> d!1379130 (= lt!1678651 (select (content!8244 e!2800404) key!3287))))

(declare-fun e!2800929 () Bool)

(assert (=> d!1379130 (= lt!1678651 e!2800929)))

(declare-fun res!1869081 () Bool)

(assert (=> d!1379130 (=> (not res!1869081) (not e!2800929))))

(assert (=> d!1379130 (= res!1869081 ((_ is Cons!50531) e!2800404))))

(assert (=> d!1379130 (= (contains!13193 e!2800404 key!3287) lt!1678651)))

(declare-fun b!4496593 () Bool)

(declare-fun e!2800930 () Bool)

(assert (=> b!4496593 (= e!2800929 e!2800930)))

(declare-fun res!1869082 () Bool)

(assert (=> b!4496593 (=> res!1869082 e!2800930)))

(assert (=> b!4496593 (= res!1869082 (= (h!56348 e!2800404) key!3287))))

(declare-fun b!4496594 () Bool)

(assert (=> b!4496594 (= e!2800930 (contains!13193 (t!357613 e!2800404) key!3287))))

(assert (= (and d!1379130 res!1869081) b!4496593))

(assert (= (and b!4496593 (not res!1869082)) b!4496594))

(declare-fun m!5224723 () Bool)

(assert (=> d!1379130 m!5224723))

(declare-fun m!5224725 () Bool)

(assert (=> d!1379130 m!5224725))

(declare-fun m!5224727 () Bool)

(assert (=> b!4496594 m!5224727))

(assert (=> bm!312832 d!1379130))

(declare-fun d!1379134 () Bool)

(declare-fun res!1869083 () Bool)

(declare-fun e!2800931 () Bool)

(assert (=> d!1379134 (=> res!1869083 e!2800931)))

(assert (=> d!1379134 (= res!1869083 (and ((_ is Cons!50528) (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477))))) (= (_1!28751 (h!56343 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477)))))) key!3287)))))

(assert (=> d!1379134 (= (containsKey!1664 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477)))) key!3287) e!2800931)))

(declare-fun b!4496595 () Bool)

(declare-fun e!2800932 () Bool)

(assert (=> b!4496595 (= e!2800931 e!2800932)))

(declare-fun res!1869084 () Bool)

(assert (=> b!4496595 (=> (not res!1869084) (not e!2800932))))

(assert (=> b!4496595 (= res!1869084 ((_ is Cons!50528) (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477))))))))

(declare-fun b!4496596 () Bool)

(assert (=> b!4496596 (= e!2800932 (containsKey!1664 (t!357610 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477))))) key!3287))))

(assert (= (and d!1379134 (not res!1869083)) b!4496595))

(assert (= (and b!4496595 res!1869084) b!4496596))

(declare-fun m!5224729 () Bool)

(assert (=> b!4496596 m!5224729))

(assert (=> b!4495829 d!1379134))

(assert (=> b!4495772 d!1378912))

(assert (=> b!4495772 d!1378818))

(declare-fun d!1379136 () Bool)

(declare-fun res!1869085 () Bool)

(declare-fun e!2800933 () Bool)

(assert (=> d!1379136 (=> res!1869085 e!2800933)))

(assert (=> d!1379136 (= res!1869085 (and ((_ is Cons!50529) (toList!4247 lt!1677907)) (= (_1!28752 (h!56344 (toList!4247 lt!1677907))) hash!344)))))

(assert (=> d!1379136 (= (containsKey!1668 (toList!4247 lt!1677907) hash!344) e!2800933)))

(declare-fun b!4496597 () Bool)

(declare-fun e!2800934 () Bool)

(assert (=> b!4496597 (= e!2800933 e!2800934)))

(declare-fun res!1869086 () Bool)

(assert (=> b!4496597 (=> (not res!1869086) (not e!2800934))))

(assert (=> b!4496597 (= res!1869086 (and (or (not ((_ is Cons!50529) (toList!4247 lt!1677907))) (bvsle (_1!28752 (h!56344 (toList!4247 lt!1677907))) hash!344)) ((_ is Cons!50529) (toList!4247 lt!1677907)) (bvslt (_1!28752 (h!56344 (toList!4247 lt!1677907))) hash!344)))))

(declare-fun b!4496598 () Bool)

(assert (=> b!4496598 (= e!2800934 (containsKey!1668 (t!357611 (toList!4247 lt!1677907)) hash!344))))

(assert (= (and d!1379136 (not res!1869085)) b!4496597))

(assert (= (and b!4496597 res!1869086) b!4496598))

(declare-fun m!5224731 () Bool)

(assert (=> b!4496598 m!5224731))

(assert (=> d!1378706 d!1379136))

(declare-fun d!1379138 () Bool)

(declare-fun e!2800935 () Bool)

(assert (=> d!1379138 e!2800935))

(declare-fun res!1869087 () Bool)

(assert (=> d!1379138 (=> res!1869087 e!2800935)))

(declare-fun lt!1678654 () Bool)

(assert (=> d!1379138 (= res!1869087 (not lt!1678654))))

(declare-fun lt!1678652 () Bool)

(assert (=> d!1379138 (= lt!1678654 lt!1678652)))

(declare-fun lt!1678655 () Unit!91352)

(declare-fun e!2800936 () Unit!91352)

(assert (=> d!1379138 (= lt!1678655 e!2800936)))

(declare-fun c!766232 () Bool)

(assert (=> d!1379138 (= c!766232 lt!1678652)))

(assert (=> d!1379138 (= lt!1678652 (containsKey!1668 (toList!4247 lt!1678065) (_1!28752 (tuple2!50917 hash!344 newBucket!178))))))

(assert (=> d!1379138 (= (contains!13190 lt!1678065 (_1!28752 (tuple2!50917 hash!344 newBucket!178))) lt!1678654)))

(declare-fun b!4496599 () Bool)

(declare-fun lt!1678653 () Unit!91352)

(assert (=> b!4496599 (= e!2800936 lt!1678653)))

(assert (=> b!4496599 (= lt!1678653 (lemmaContainsKeyImpliesGetValueByKeyDefined!921 (toList!4247 lt!1678065) (_1!28752 (tuple2!50917 hash!344 newBucket!178))))))

(assert (=> b!4496599 (isDefined!8324 (getValueByKey!1017 (toList!4247 lt!1678065) (_1!28752 (tuple2!50917 hash!344 newBucket!178))))))

(declare-fun b!4496600 () Bool)

(declare-fun Unit!91462 () Unit!91352)

(assert (=> b!4496600 (= e!2800936 Unit!91462)))

(declare-fun b!4496601 () Bool)

(assert (=> b!4496601 (= e!2800935 (isDefined!8324 (getValueByKey!1017 (toList!4247 lt!1678065) (_1!28752 (tuple2!50917 hash!344 newBucket!178)))))))

(assert (= (and d!1379138 c!766232) b!4496599))

(assert (= (and d!1379138 (not c!766232)) b!4496600))

(assert (= (and d!1379138 (not res!1869087)) b!4496601))

(declare-fun m!5224733 () Bool)

(assert (=> d!1379138 m!5224733))

(declare-fun m!5224735 () Bool)

(assert (=> b!4496599 m!5224735))

(assert (=> b!4496599 m!5223247))

(assert (=> b!4496599 m!5223247))

(declare-fun m!5224737 () Bool)

(assert (=> b!4496599 m!5224737))

(assert (=> b!4496601 m!5223247))

(assert (=> b!4496601 m!5223247))

(assert (=> b!4496601 m!5224737))

(assert (=> d!1378646 d!1379138))

(declare-fun b!4496604 () Bool)

(declare-fun e!2800938 () Option!11037)

(assert (=> b!4496604 (= e!2800938 (getValueByKey!1017 (t!357611 lt!1678063) (_1!28752 (tuple2!50917 hash!344 newBucket!178))))))

(declare-fun d!1379140 () Bool)

(declare-fun c!766233 () Bool)

(assert (=> d!1379140 (= c!766233 (and ((_ is Cons!50529) lt!1678063) (= (_1!28752 (h!56344 lt!1678063)) (_1!28752 (tuple2!50917 hash!344 newBucket!178)))))))

(declare-fun e!2800937 () Option!11037)

(assert (=> d!1379140 (= (getValueByKey!1017 lt!1678063 (_1!28752 (tuple2!50917 hash!344 newBucket!178))) e!2800937)))

(declare-fun b!4496602 () Bool)

(assert (=> b!4496602 (= e!2800937 (Some!11036 (_2!28752 (h!56344 lt!1678063))))))

(declare-fun b!4496605 () Bool)

(assert (=> b!4496605 (= e!2800938 None!11036)))

(declare-fun b!4496603 () Bool)

(assert (=> b!4496603 (= e!2800937 e!2800938)))

(declare-fun c!766234 () Bool)

(assert (=> b!4496603 (= c!766234 (and ((_ is Cons!50529) lt!1678063) (not (= (_1!28752 (h!56344 lt!1678063)) (_1!28752 (tuple2!50917 hash!344 newBucket!178))))))))

(assert (= (and d!1379140 c!766233) b!4496602))

(assert (= (and d!1379140 (not c!766233)) b!4496603))

(assert (= (and b!4496603 c!766234) b!4496604))

(assert (= (and b!4496603 (not c!766234)) b!4496605))

(declare-fun m!5224739 () Bool)

(assert (=> b!4496604 m!5224739))

(assert (=> d!1378646 d!1379140))

(declare-fun d!1379142 () Bool)

(assert (=> d!1379142 (= (getValueByKey!1017 lt!1678063 (_1!28752 (tuple2!50917 hash!344 newBucket!178))) (Some!11036 (_2!28752 (tuple2!50917 hash!344 newBucket!178))))))

(declare-fun lt!1678656 () Unit!91352)

(assert (=> d!1379142 (= lt!1678656 (choose!29059 lt!1678063 (_1!28752 (tuple2!50917 hash!344 newBucket!178)) (_2!28752 (tuple2!50917 hash!344 newBucket!178))))))

(declare-fun e!2800939 () Bool)

(assert (=> d!1379142 e!2800939))

(declare-fun res!1869088 () Bool)

(assert (=> d!1379142 (=> (not res!1869088) (not e!2800939))))

(assert (=> d!1379142 (= res!1869088 (isStrictlySorted!393 lt!1678063))))

(assert (=> d!1379142 (= (lemmaContainsTupThenGetReturnValue!628 lt!1678063 (_1!28752 (tuple2!50917 hash!344 newBucket!178)) (_2!28752 (tuple2!50917 hash!344 newBucket!178))) lt!1678656)))

(declare-fun b!4496606 () Bool)

(declare-fun res!1869089 () Bool)

(assert (=> b!4496606 (=> (not res!1869089) (not e!2800939))))

(assert (=> b!4496606 (= res!1869089 (containsKey!1668 lt!1678063 (_1!28752 (tuple2!50917 hash!344 newBucket!178))))))

(declare-fun b!4496607 () Bool)

(assert (=> b!4496607 (= e!2800939 (contains!13189 lt!1678063 (tuple2!50917 (_1!28752 (tuple2!50917 hash!344 newBucket!178)) (_2!28752 (tuple2!50917 hash!344 newBucket!178)))))))

(assert (= (and d!1379142 res!1869088) b!4496606))

(assert (= (and b!4496606 res!1869089) b!4496607))

(assert (=> d!1379142 m!5223241))

(declare-fun m!5224741 () Bool)

(assert (=> d!1379142 m!5224741))

(declare-fun m!5224743 () Bool)

(assert (=> d!1379142 m!5224743))

(declare-fun m!5224745 () Bool)

(assert (=> b!4496606 m!5224745))

(declare-fun m!5224747 () Bool)

(assert (=> b!4496607 m!5224747))

(assert (=> d!1378646 d!1379142))

(declare-fun b!4496608 () Bool)

(declare-fun e!2800940 () List!50653)

(declare-fun call!312918 () List!50653)

(assert (=> b!4496608 (= e!2800940 call!312918)))

(declare-fun b!4496609 () Bool)

(declare-fun c!766236 () Bool)

(assert (=> b!4496609 (= c!766236 (and ((_ is Cons!50529) (toList!4247 lt!1677907)) (bvsgt (_1!28752 (h!56344 (toList!4247 lt!1677907))) (_1!28752 (tuple2!50917 hash!344 newBucket!178)))))))

(declare-fun e!2800941 () List!50653)

(declare-fun e!2800944 () List!50653)

(assert (=> b!4496609 (= e!2800941 e!2800944)))

(declare-fun b!4496610 () Bool)

(assert (=> b!4496610 (= e!2800940 e!2800941)))

(declare-fun c!766237 () Bool)

(assert (=> b!4496610 (= c!766237 (and ((_ is Cons!50529) (toList!4247 lt!1677907)) (= (_1!28752 (h!56344 (toList!4247 lt!1677907))) (_1!28752 (tuple2!50917 hash!344 newBucket!178)))))))

(declare-fun b!4496611 () Bool)

(declare-fun call!312917 () List!50653)

(assert (=> b!4496611 (= e!2800944 call!312917)))

(declare-fun d!1379144 () Bool)

(declare-fun e!2800942 () Bool)

(assert (=> d!1379144 e!2800942))

(declare-fun res!1869090 () Bool)

(assert (=> d!1379144 (=> (not res!1869090) (not e!2800942))))

(declare-fun lt!1678657 () List!50653)

(assert (=> d!1379144 (= res!1869090 (isStrictlySorted!393 lt!1678657))))

(assert (=> d!1379144 (= lt!1678657 e!2800940)))

(declare-fun c!766235 () Bool)

(assert (=> d!1379144 (= c!766235 (and ((_ is Cons!50529) (toList!4247 lt!1677907)) (bvslt (_1!28752 (h!56344 (toList!4247 lt!1677907))) (_1!28752 (tuple2!50917 hash!344 newBucket!178)))))))

(assert (=> d!1379144 (isStrictlySorted!393 (toList!4247 lt!1677907))))

(assert (=> d!1379144 (= (insertStrictlySorted!370 (toList!4247 lt!1677907) (_1!28752 (tuple2!50917 hash!344 newBucket!178)) (_2!28752 (tuple2!50917 hash!344 newBucket!178))) lt!1678657)))

(declare-fun b!4496612 () Bool)

(declare-fun e!2800943 () List!50653)

(assert (=> b!4496612 (= e!2800943 (insertStrictlySorted!370 (t!357611 (toList!4247 lt!1677907)) (_1!28752 (tuple2!50917 hash!344 newBucket!178)) (_2!28752 (tuple2!50917 hash!344 newBucket!178))))))

(declare-fun bm!312911 () Bool)

(declare-fun call!312916 () List!50653)

(assert (=> bm!312911 (= call!312916 call!312918)))

(declare-fun b!4496613 () Bool)

(assert (=> b!4496613 (= e!2800944 call!312917)))

(declare-fun b!4496614 () Bool)

(assert (=> b!4496614 (= e!2800943 (ite c!766237 (t!357611 (toList!4247 lt!1677907)) (ite c!766236 (Cons!50529 (h!56344 (toList!4247 lt!1677907)) (t!357611 (toList!4247 lt!1677907))) Nil!50529)))))

(declare-fun bm!312912 () Bool)

(assert (=> bm!312912 (= call!312918 ($colon$colon!885 e!2800943 (ite c!766235 (h!56344 (toList!4247 lt!1677907)) (tuple2!50917 (_1!28752 (tuple2!50917 hash!344 newBucket!178)) (_2!28752 (tuple2!50917 hash!344 newBucket!178))))))))

(declare-fun c!766238 () Bool)

(assert (=> bm!312912 (= c!766238 c!766235)))

(declare-fun b!4496615 () Bool)

(assert (=> b!4496615 (= e!2800941 call!312916)))

(declare-fun b!4496616 () Bool)

(declare-fun res!1869091 () Bool)

(assert (=> b!4496616 (=> (not res!1869091) (not e!2800942))))

(assert (=> b!4496616 (= res!1869091 (containsKey!1668 lt!1678657 (_1!28752 (tuple2!50917 hash!344 newBucket!178))))))

(declare-fun bm!312913 () Bool)

(assert (=> bm!312913 (= call!312917 call!312916)))

(declare-fun b!4496617 () Bool)

(assert (=> b!4496617 (= e!2800942 (contains!13189 lt!1678657 (tuple2!50917 (_1!28752 (tuple2!50917 hash!344 newBucket!178)) (_2!28752 (tuple2!50917 hash!344 newBucket!178)))))))

(assert (= (and d!1379144 c!766235) b!4496608))

(assert (= (and d!1379144 (not c!766235)) b!4496610))

(assert (= (and b!4496610 c!766237) b!4496615))

(assert (= (and b!4496610 (not c!766237)) b!4496609))

(assert (= (and b!4496609 c!766236) b!4496611))

(assert (= (and b!4496609 (not c!766236)) b!4496613))

(assert (= (or b!4496611 b!4496613) bm!312913))

(assert (= (or b!4496615 bm!312913) bm!312911))

(assert (= (or b!4496608 bm!312911) bm!312912))

(assert (= (and bm!312912 c!766238) b!4496612))

(assert (= (and bm!312912 (not c!766238)) b!4496614))

(assert (= (and d!1379144 res!1869090) b!4496616))

(assert (= (and b!4496616 res!1869091) b!4496617))

(declare-fun m!5224749 () Bool)

(assert (=> d!1379144 m!5224749))

(assert (=> d!1379144 m!5223641))

(declare-fun m!5224751 () Bool)

(assert (=> bm!312912 m!5224751))

(declare-fun m!5224753 () Bool)

(assert (=> b!4496617 m!5224753))

(declare-fun m!5224755 () Bool)

(assert (=> b!4496612 m!5224755))

(declare-fun m!5224757 () Bool)

(assert (=> b!4496616 m!5224757))

(assert (=> d!1378646 d!1379144))

(declare-fun b!4496621 () Bool)

(declare-fun e!2800946 () List!50652)

(assert (=> b!4496621 (= e!2800946 Nil!50528)))

(declare-fun b!4496619 () Bool)

(declare-fun e!2800945 () List!50652)

(assert (=> b!4496619 (= e!2800945 e!2800946)))

(declare-fun c!766240 () Bool)

(assert (=> b!4496619 (= c!766240 ((_ is Cons!50528) (t!357610 lt!1677908)))))

(declare-fun b!4496620 () Bool)

(assert (=> b!4496620 (= e!2800946 (Cons!50528 (h!56343 (t!357610 lt!1677908)) (removePairForKey!747 (t!357610 (t!357610 lt!1677908)) key!3287)))))

(declare-fun b!4496618 () Bool)

(assert (=> b!4496618 (= e!2800945 (t!357610 (t!357610 lt!1677908)))))

(declare-fun d!1379146 () Bool)

(declare-fun lt!1678658 () List!50652)

(assert (=> d!1379146 (not (containsKey!1664 lt!1678658 key!3287))))

(assert (=> d!1379146 (= lt!1678658 e!2800945)))

(declare-fun c!766239 () Bool)

(assert (=> d!1379146 (= c!766239 (and ((_ is Cons!50528) (t!357610 lt!1677908)) (= (_1!28751 (h!56343 (t!357610 lt!1677908))) key!3287)))))

(assert (=> d!1379146 (noDuplicateKeys!1120 (t!357610 lt!1677908))))

(assert (=> d!1379146 (= (removePairForKey!747 (t!357610 lt!1677908) key!3287) lt!1678658)))

(assert (= (and d!1379146 c!766239) b!4496618))

(assert (= (and d!1379146 (not c!766239)) b!4496619))

(assert (= (and b!4496619 c!766240) b!4496620))

(assert (= (and b!4496619 (not c!766240)) b!4496621))

(declare-fun m!5224759 () Bool)

(assert (=> b!4496620 m!5224759))

(declare-fun m!5224761 () Bool)

(assert (=> d!1379146 m!5224761))

(assert (=> d!1379146 m!5224171))

(assert (=> b!4495792 d!1379146))

(declare-fun d!1379148 () Bool)

(assert (=> d!1379148 (= (invariantList!979 (toList!4248 lt!1678086)) (noDuplicatedKeys!238 (toList!4248 lt!1678086)))))

(declare-fun bs!833972 () Bool)

(assert (= bs!833972 d!1379148))

(declare-fun m!5224763 () Bool)

(assert (=> bs!833972 m!5224763))

(assert (=> d!1378676 d!1379148))

(declare-fun d!1379150 () Bool)

(declare-fun res!1869092 () Bool)

(declare-fun e!2800947 () Bool)

(assert (=> d!1379150 (=> res!1869092 e!2800947)))

(assert (=> d!1379150 (= res!1869092 ((_ is Nil!50529) (toList!4247 (+!1462 lt!1677907 lt!1677922))))))

(assert (=> d!1379150 (= (forall!10161 (toList!4247 (+!1462 lt!1677907 lt!1677922)) lambda!168054) e!2800947)))

(declare-fun b!4496622 () Bool)

(declare-fun e!2800948 () Bool)

(assert (=> b!4496622 (= e!2800947 e!2800948)))

(declare-fun res!1869093 () Bool)

(assert (=> b!4496622 (=> (not res!1869093) (not e!2800948))))

(assert (=> b!4496622 (= res!1869093 (dynLambda!21097 lambda!168054 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922)))))))

(declare-fun b!4496623 () Bool)

(assert (=> b!4496623 (= e!2800948 (forall!10161 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))) lambda!168054))))

(assert (= (and d!1379150 (not res!1869092)) b!4496622))

(assert (= (and b!4496622 res!1869093) b!4496623))

(declare-fun b_lambda!151985 () Bool)

(assert (=> (not b_lambda!151985) (not b!4496622)))

(declare-fun m!5224765 () Bool)

(assert (=> b!4496622 m!5224765))

(declare-fun m!5224767 () Bool)

(assert (=> b!4496623 m!5224767))

(assert (=> d!1378676 d!1379150))

(declare-fun d!1379152 () Bool)

(assert (=> d!1379152 (= (tail!7658 (toList!4247 lm!1477)) (t!357611 (toList!4247 lm!1477)))))

(assert (=> d!1378708 d!1379152))

(declare-fun d!1379154 () Bool)

(declare-fun c!766241 () Bool)

(assert (=> d!1379154 (= c!766241 ((_ is Nil!50529) (toList!4247 lm!1477)))))

(declare-fun e!2800949 () (InoxSet tuple2!50916))

(assert (=> d!1379154 (= (content!8242 (toList!4247 lm!1477)) e!2800949)))

(declare-fun b!4496624 () Bool)

(assert (=> b!4496624 (= e!2800949 ((as const (Array tuple2!50916 Bool)) false))))

(declare-fun b!4496625 () Bool)

(assert (=> b!4496625 (= e!2800949 ((_ map or) (store ((as const (Array tuple2!50916 Bool)) false) (h!56344 (toList!4247 lm!1477)) true) (content!8242 (t!357611 (toList!4247 lm!1477)))))))

(assert (= (and d!1379154 c!766241) b!4496624))

(assert (= (and d!1379154 (not c!766241)) b!4496625))

(declare-fun m!5224769 () Bool)

(assert (=> b!4496625 m!5224769))

(assert (=> b!4496625 m!5223089))

(assert (=> d!1378702 d!1379154))

(declare-fun bs!833973 () Bool)

(declare-fun b!4496626 () Bool)

(assert (= bs!833973 (and b!4496626 d!1378680)))

(declare-fun lambda!168226 () Int)

(assert (=> bs!833973 (not (= lambda!168226 lambda!168060))))

(declare-fun bs!833974 () Bool)

(assert (= bs!833974 (and b!4496626 b!4496542)))

(assert (=> bs!833974 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168226 lambda!168212))))

(declare-fun bs!833975 () Bool)

(assert (= bs!833975 (and b!4496626 b!4496501)))

(assert (=> bs!833975 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) lt!1678540) (= lambda!168226 lambda!168198))))

(declare-fun bs!833976 () Bool)

(assert (= bs!833976 (and b!4496626 d!1379090)))

(assert (=> bs!833976 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) lt!1678614) (= lambda!168226 lambda!168217))))

(declare-fun bs!833977 () Bool)

(assert (= bs!833977 (and b!4496626 b!4496546)))

(assert (=> bs!833977 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) lt!1678615) (= lambda!168226 lambda!168215))))

(assert (=> bs!833977 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168226 lambda!168214))))

(declare-fun bs!833978 () Bool)

(assert (= bs!833978 (and b!4496626 d!1379016)))

(assert (=> bs!833978 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) lt!1678539) (= lambda!168226 lambda!168199))))

(assert (=> bs!833975 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168226 lambda!168197))))

(declare-fun bs!833979 () Bool)

(assert (= bs!833979 (and b!4496626 b!4496497)))

(assert (=> bs!833979 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168226 lambda!168196))))

(assert (=> b!4496626 true))

(declare-fun bs!833980 () Bool)

(declare-fun b!4496630 () Bool)

(assert (= bs!833980 (and b!4496630 d!1378680)))

(declare-fun lambda!168227 () Int)

(assert (=> bs!833980 (not (= lambda!168227 lambda!168060))))

(declare-fun bs!833981 () Bool)

(assert (= bs!833981 (and b!4496630 b!4496542)))

(assert (=> bs!833981 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168227 lambda!168212))))

(declare-fun bs!833982 () Bool)

(assert (= bs!833982 (and b!4496630 b!4496501)))

(assert (=> bs!833982 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) lt!1678540) (= lambda!168227 lambda!168198))))

(declare-fun bs!833983 () Bool)

(assert (= bs!833983 (and b!4496630 d!1379090)))

(assert (=> bs!833983 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) lt!1678614) (= lambda!168227 lambda!168217))))

(declare-fun bs!833984 () Bool)

(assert (= bs!833984 (and b!4496630 b!4496546)))

(assert (=> bs!833984 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168227 lambda!168214))))

(declare-fun bs!833985 () Bool)

(assert (= bs!833985 (and b!4496630 d!1379016)))

(assert (=> bs!833985 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) lt!1678539) (= lambda!168227 lambda!168199))))

(assert (=> bs!833982 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168227 lambda!168197))))

(declare-fun bs!833986 () Bool)

(assert (= bs!833986 (and b!4496630 b!4496497)))

(assert (=> bs!833986 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168227 lambda!168196))))

(assert (=> bs!833984 (= (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) lt!1678615) (= lambda!168227 lambda!168215))))

(declare-fun bs!833987 () Bool)

(assert (= bs!833987 (and b!4496630 b!4496626)))

(assert (=> bs!833987 (= lambda!168227 lambda!168226)))

(assert (=> b!4496630 true))

(declare-fun lambda!168228 () Int)

(assert (=> bs!833980 (not (= lambda!168228 lambda!168060))))

(declare-fun lt!1678678 () ListMap!3509)

(assert (=> bs!833981 (= (= lt!1678678 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168228 lambda!168212))))

(assert (=> bs!833982 (= (= lt!1678678 lt!1678540) (= lambda!168228 lambda!168198))))

(assert (=> bs!833983 (= (= lt!1678678 lt!1678614) (= lambda!168228 lambda!168217))))

(assert (=> bs!833985 (= (= lt!1678678 lt!1678539) (= lambda!168228 lambda!168199))))

(assert (=> bs!833982 (= (= lt!1678678 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168228 lambda!168197))))

(assert (=> bs!833986 (= (= lt!1678678 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168228 lambda!168196))))

(assert (=> bs!833984 (= (= lt!1678678 lt!1678615) (= lambda!168228 lambda!168215))))

(assert (=> bs!833987 (= (= lt!1678678 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168228 lambda!168226))))

(assert (=> b!4496630 (= (= lt!1678678 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168228 lambda!168227))))

(assert (=> bs!833984 (= (= lt!1678678 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168228 lambda!168214))))

(assert (=> b!4496630 true))

(declare-fun bs!833988 () Bool)

(declare-fun d!1379156 () Bool)

(assert (= bs!833988 (and d!1379156 d!1378680)))

(declare-fun lambda!168229 () Int)

(assert (=> bs!833988 (not (= lambda!168229 lambda!168060))))

(declare-fun bs!833989 () Bool)

(assert (= bs!833989 (and d!1379156 b!4496542)))

(declare-fun lt!1678677 () ListMap!3509)

(assert (=> bs!833989 (= (= lt!1678677 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168229 lambda!168212))))

(declare-fun bs!833990 () Bool)

(assert (= bs!833990 (and d!1379156 b!4496501)))

(assert (=> bs!833990 (= (= lt!1678677 lt!1678540) (= lambda!168229 lambda!168198))))

(declare-fun bs!833991 () Bool)

(assert (= bs!833991 (and d!1379156 d!1379090)))

(assert (=> bs!833991 (= (= lt!1678677 lt!1678614) (= lambda!168229 lambda!168217))))

(declare-fun bs!833992 () Bool)

(assert (= bs!833992 (and d!1379156 b!4496630)))

(assert (=> bs!833992 (= (= lt!1678677 lt!1678678) (= lambda!168229 lambda!168228))))

(declare-fun bs!833993 () Bool)

(assert (= bs!833993 (and d!1379156 d!1379016)))

(assert (=> bs!833993 (= (= lt!1678677 lt!1678539) (= lambda!168229 lambda!168199))))

(assert (=> bs!833990 (= (= lt!1678677 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168229 lambda!168197))))

(declare-fun bs!833994 () Bool)

(assert (= bs!833994 (and d!1379156 b!4496497)))

(assert (=> bs!833994 (= (= lt!1678677 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168229 lambda!168196))))

(declare-fun bs!833995 () Bool)

(assert (= bs!833995 (and d!1379156 b!4496546)))

(assert (=> bs!833995 (= (= lt!1678677 lt!1678615) (= lambda!168229 lambda!168215))))

(declare-fun bs!833996 () Bool)

(assert (= bs!833996 (and d!1379156 b!4496626)))

(assert (=> bs!833996 (= (= lt!1678677 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168229 lambda!168226))))

(assert (=> bs!833992 (= (= lt!1678677 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168229 lambda!168227))))

(assert (=> bs!833995 (= (= lt!1678677 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168229 lambda!168214))))

(assert (=> d!1379156 true))

(declare-fun call!312919 () Bool)

(declare-fun c!766242 () Bool)

(declare-fun bm!312914 () Bool)

(assert (=> bm!312914 (= call!312919 (forall!10163 (ite c!766242 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (ite c!766242 lambda!168226 lambda!168228)))))

(declare-fun e!2800951 () ListMap!3509)

(assert (=> b!4496626 (= e!2800951 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))))))

(declare-fun lt!1678676 () Unit!91352)

(declare-fun call!312921 () Unit!91352)

(assert (=> b!4496626 (= lt!1678676 call!312921)))

(assert (=> b!4496626 call!312919))

(declare-fun lt!1678667 () Unit!91352)

(assert (=> b!4496626 (= lt!1678667 lt!1678676)))

(declare-fun call!312920 () Bool)

(assert (=> b!4496626 call!312920))

(declare-fun lt!1678661 () Unit!91352)

(declare-fun Unit!91474 () Unit!91352)

(assert (=> b!4496626 (= lt!1678661 Unit!91474)))

(declare-fun b!4496627 () Bool)

(declare-fun e!2800952 () Bool)

(assert (=> b!4496627 (= e!2800952 (invariantList!979 (toList!4248 lt!1678677)))))

(assert (=> d!1379156 e!2800952))

(declare-fun res!1869095 () Bool)

(assert (=> d!1379156 (=> (not res!1869095) (not e!2800952))))

(assert (=> d!1379156 (= res!1869095 (forall!10163 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) lambda!168229))))

(assert (=> d!1379156 (= lt!1678677 e!2800951)))

(assert (=> d!1379156 (= c!766242 ((_ is Nil!50528) (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))))))

(assert (=> d!1379156 (noDuplicateKeys!1120 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))))))

(assert (=> d!1379156 (= (addToMapMapFromBucket!647 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) lt!1678677)))

(declare-fun b!4496628 () Bool)

(declare-fun e!2800950 () Bool)

(assert (=> b!4496628 (= e!2800950 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) lambda!168228))))

(declare-fun b!4496629 () Bool)

(declare-fun res!1869094 () Bool)

(assert (=> b!4496629 (=> (not res!1869094) (not e!2800952))))

(assert (=> b!4496629 (= res!1869094 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) lambda!168229))))

(assert (=> b!4496630 (= e!2800951 lt!1678678)))

(declare-fun lt!1678665 () ListMap!3509)

(assert (=> b!4496630 (= lt!1678665 (+!1464 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) (h!56343 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))))))))

(assert (=> b!4496630 (= lt!1678678 (addToMapMapFromBucket!647 (t!357610 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (+!1464 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) (h!56343 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))))))))

(declare-fun lt!1678663 () Unit!91352)

(assert (=> b!4496630 (= lt!1678663 call!312921)))

(assert (=> b!4496630 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) lambda!168227)))

(declare-fun lt!1678666 () Unit!91352)

(assert (=> b!4496630 (= lt!1678666 lt!1678663)))

(assert (=> b!4496630 (forall!10163 (toList!4248 lt!1678665) lambda!168228)))

(declare-fun lt!1678674 () Unit!91352)

(declare-fun Unit!91475 () Unit!91352)

(assert (=> b!4496630 (= lt!1678674 Unit!91475)))

(assert (=> b!4496630 (forall!10163 (t!357610 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) lambda!168228)))

(declare-fun lt!1678662 () Unit!91352)

(declare-fun Unit!91476 () Unit!91352)

(assert (=> b!4496630 (= lt!1678662 Unit!91476)))

(declare-fun lt!1678664 () Unit!91352)

(declare-fun Unit!91477 () Unit!91352)

(assert (=> b!4496630 (= lt!1678664 Unit!91477)))

(declare-fun lt!1678675 () Unit!91352)

(assert (=> b!4496630 (= lt!1678675 (forallContained!2419 (toList!4248 lt!1678665) lambda!168228 (h!56343 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))))))))

(assert (=> b!4496630 (contains!13191 lt!1678665 (_1!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))))))))

(declare-fun lt!1678679 () Unit!91352)

(declare-fun Unit!91478 () Unit!91352)

(assert (=> b!4496630 (= lt!1678679 Unit!91478)))

(assert (=> b!4496630 (contains!13191 lt!1678678 (_1!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))))))))

(declare-fun lt!1678669 () Unit!91352)

(declare-fun Unit!91479 () Unit!91352)

(assert (=> b!4496630 (= lt!1678669 Unit!91479)))

(assert (=> b!4496630 (forall!10163 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) lambda!168228)))

(declare-fun lt!1678659 () Unit!91352)

(declare-fun Unit!91480 () Unit!91352)

(assert (=> b!4496630 (= lt!1678659 Unit!91480)))

(assert (=> b!4496630 (forall!10163 (toList!4248 lt!1678665) lambda!168228)))

(declare-fun lt!1678673 () Unit!91352)

(declare-fun Unit!91481 () Unit!91352)

(assert (=> b!4496630 (= lt!1678673 Unit!91481)))

(declare-fun lt!1678668 () Unit!91352)

(declare-fun Unit!91482 () Unit!91352)

(assert (=> b!4496630 (= lt!1678668 Unit!91482)))

(declare-fun lt!1678671 () Unit!91352)

(assert (=> b!4496630 (= lt!1678671 (addForallContainsKeyThenBeforeAdding!302 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) lt!1678678 (_1!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))))) (_2!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))))))))

(assert (=> b!4496630 call!312920))

(declare-fun lt!1678670 () Unit!91352)

(assert (=> b!4496630 (= lt!1678670 lt!1678671)))

(assert (=> b!4496630 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) lambda!168228)))

(declare-fun lt!1678660 () Unit!91352)

(declare-fun Unit!91483 () Unit!91352)

(assert (=> b!4496630 (= lt!1678660 Unit!91483)))

(declare-fun res!1869096 () Bool)

(assert (=> b!4496630 (= res!1869096 call!312919)))

(assert (=> b!4496630 (=> (not res!1869096) (not e!2800950))))

(assert (=> b!4496630 e!2800950))

(declare-fun lt!1678672 () Unit!91352)

(declare-fun Unit!91484 () Unit!91352)

(assert (=> b!4496630 (= lt!1678672 Unit!91484)))

(declare-fun bm!312915 () Bool)

(assert (=> bm!312915 (= call!312921 (lemmaContainsAllItsOwnKeys!302 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))))))

(declare-fun bm!312916 () Bool)

(assert (=> bm!312916 (= call!312920 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (ite c!766242 lambda!168226 lambda!168228)))))

(assert (= (and d!1379156 c!766242) b!4496626))

(assert (= (and d!1379156 (not c!766242)) b!4496630))

(assert (= (and b!4496630 res!1869096) b!4496628))

(assert (= (or b!4496626 b!4496630) bm!312914))

(assert (= (or b!4496626 b!4496630) bm!312916))

(assert (= (or b!4496626 b!4496630) bm!312915))

(assert (= (and d!1379156 res!1869095) b!4496629))

(assert (= (and b!4496629 res!1869094) b!4496627))

(declare-fun m!5224771 () Bool)

(assert (=> b!4496628 m!5224771))

(assert (=> bm!312915 m!5223277))

(declare-fun m!5224773 () Bool)

(assert (=> bm!312915 m!5224773))

(declare-fun m!5224775 () Bool)

(assert (=> b!4496630 m!5224775))

(declare-fun m!5224777 () Bool)

(assert (=> b!4496630 m!5224777))

(assert (=> b!4496630 m!5223277))

(declare-fun m!5224779 () Bool)

(assert (=> b!4496630 m!5224779))

(assert (=> b!4496630 m!5224771))

(declare-fun m!5224781 () Bool)

(assert (=> b!4496630 m!5224781))

(declare-fun m!5224783 () Bool)

(assert (=> b!4496630 m!5224783))

(declare-fun m!5224785 () Bool)

(assert (=> b!4496630 m!5224785))

(assert (=> b!4496630 m!5223277))

(assert (=> b!4496630 m!5224783))

(assert (=> b!4496630 m!5224775))

(declare-fun m!5224787 () Bool)

(assert (=> b!4496630 m!5224787))

(declare-fun m!5224789 () Bool)

(assert (=> b!4496630 m!5224789))

(declare-fun m!5224791 () Bool)

(assert (=> b!4496630 m!5224791))

(declare-fun m!5224793 () Bool)

(assert (=> b!4496630 m!5224793))

(declare-fun m!5224795 () Bool)

(assert (=> bm!312914 m!5224795))

(declare-fun m!5224797 () Bool)

(assert (=> bm!312916 m!5224797))

(declare-fun m!5224799 () Bool)

(assert (=> b!4496629 m!5224799))

(declare-fun m!5224801 () Bool)

(assert (=> d!1379156 m!5224801))

(declare-fun m!5224803 () Bool)

(assert (=> d!1379156 m!5224803))

(declare-fun m!5224805 () Bool)

(assert (=> b!4496627 m!5224805))

(assert (=> b!4495707 d!1379156))

(declare-fun bs!833997 () Bool)

(declare-fun d!1379158 () Bool)

(assert (= bs!833997 (and d!1379158 d!1378622)))

(declare-fun lambda!168230 () Int)

(assert (=> bs!833997 (= lambda!168230 lambda!168049)))

(declare-fun bs!833998 () Bool)

(assert (= bs!833998 (and d!1379158 d!1378576)))

(assert (=> bs!833998 (= lambda!168230 lambda!168025)))

(declare-fun bs!833999 () Bool)

(assert (= bs!833999 (and d!1379158 start!443472)))

(assert (=> bs!833999 (= lambda!168230 lambda!168015)))

(declare-fun bs!834000 () Bool)

(assert (= bs!834000 (and d!1379158 d!1378692)))

(assert (=> bs!834000 (= lambda!168230 lambda!168068)))

(declare-fun bs!834001 () Bool)

(assert (= bs!834001 (and d!1379158 d!1378682)))

(assert (=> bs!834001 (= lambda!168230 lambda!168063)))

(declare-fun bs!834002 () Bool)

(assert (= bs!834002 (and d!1379158 d!1378652)))

(assert (=> bs!834002 (= lambda!168230 lambda!168053)))

(declare-fun bs!834003 () Bool)

(assert (= bs!834003 (and d!1379158 d!1378690)))

(assert (=> bs!834003 (= lambda!168230 lambda!168065)))

(declare-fun bs!834004 () Bool)

(assert (= bs!834004 (and d!1379158 d!1378676)))

(assert (=> bs!834004 (= lambda!168230 lambda!168054)))

(declare-fun bs!834005 () Bool)

(assert (= bs!834005 (and d!1379158 d!1378686)))

(assert (=> bs!834005 (= lambda!168230 lambda!168064)))

(declare-fun bs!834006 () Bool)

(assert (= bs!834006 (and d!1379158 d!1379062)))

(assert (=> bs!834006 (= lambda!168230 lambda!168203)))

(declare-fun bs!834007 () Bool)

(assert (= bs!834007 (and d!1379158 d!1378678)))

(assert (=> bs!834007 (= lambda!168230 lambda!168057)))

(declare-fun bs!834008 () Bool)

(assert (= bs!834008 (and d!1379158 d!1378724)))

(assert (=> bs!834008 (= lambda!168230 lambda!168071)))

(declare-fun bs!834009 () Bool)

(assert (= bs!834009 (and d!1379158 d!1378608)))

(assert (=> bs!834009 (not (= lambda!168230 lambda!168034))))

(declare-fun bs!834010 () Bool)

(assert (= bs!834010 (and d!1379158 d!1379094)))

(assert (=> bs!834010 (= lambda!168230 lambda!168219)))

(declare-fun lt!1678680 () ListMap!3509)

(assert (=> d!1379158 (invariantList!979 (toList!4248 lt!1678680))))

(declare-fun e!2800953 () ListMap!3509)

(assert (=> d!1379158 (= lt!1678680 e!2800953)))

(declare-fun c!766243 () Bool)

(assert (=> d!1379158 (= c!766243 ((_ is Cons!50529) (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))))))

(assert (=> d!1379158 (forall!10161 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))) lambda!168230)))

(assert (=> d!1379158 (= (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) lt!1678680)))

(declare-fun b!4496631 () Bool)

(assert (=> b!4496631 (= e!2800953 (addToMapMapFromBucket!647 (_2!28752 (h!56344 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (extractMap!1176 (t!357611 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))))))))

(declare-fun b!4496632 () Bool)

(assert (=> b!4496632 (= e!2800953 (ListMap!3510 Nil!50528))))

(assert (= (and d!1379158 c!766243) b!4496631))

(assert (= (and d!1379158 (not c!766243)) b!4496632))

(declare-fun m!5224807 () Bool)

(assert (=> d!1379158 m!5224807))

(declare-fun m!5224809 () Bool)

(assert (=> d!1379158 m!5224809))

(declare-fun m!5224811 () Bool)

(assert (=> b!4496631 m!5224811))

(assert (=> b!4496631 m!5224811))

(declare-fun m!5224813 () Bool)

(assert (=> b!4496631 m!5224813))

(assert (=> b!4495707 d!1379158))

(assert (=> d!1378712 d!1378770))

(assert (=> b!4495770 d!1378928))

(declare-fun d!1379160 () Bool)

(assert (=> d!1379160 (containsKey!1666 (toList!4248 lt!1677918) key!3287)))

(declare-fun lt!1678681 () Unit!91352)

(assert (=> d!1379160 (= lt!1678681 (choose!29063 (toList!4248 lt!1677918) key!3287))))

(assert (=> d!1379160 (invariantList!979 (toList!4248 lt!1677918))))

(assert (=> d!1379160 (= (lemmaInGetKeysListThenContainsKey!426 (toList!4248 lt!1677918) key!3287) lt!1678681)))

(declare-fun bs!834011 () Bool)

(assert (= bs!834011 d!1379160))

(assert (=> bs!834011 m!5223387))

(declare-fun m!5224815 () Bool)

(assert (=> bs!834011 m!5224815))

(assert (=> bs!834011 m!5223839))

(assert (=> b!4495770 d!1379160))

(assert (=> b!4495567 d!1378750))

(declare-fun d!1379162 () Bool)

(declare-fun res!1869097 () Bool)

(declare-fun e!2800954 () Bool)

(assert (=> d!1379162 (=> res!1869097 e!2800954)))

(declare-fun e!2800956 () Bool)

(assert (=> d!1379162 (= res!1869097 e!2800956)))

(declare-fun res!1869099 () Bool)

(assert (=> d!1379162 (=> (not res!1869099) (not e!2800956))))

(assert (=> d!1379162 (= res!1869099 ((_ is Cons!50529) (t!357611 (toList!4247 lt!1677907))))))

(assert (=> d!1379162 (= (containsKeyBiggerList!100 (t!357611 (toList!4247 lt!1677907)) key!3287) e!2800954)))

(declare-fun b!4496633 () Bool)

(assert (=> b!4496633 (= e!2800956 (containsKey!1664 (_2!28752 (h!56344 (t!357611 (toList!4247 lt!1677907)))) key!3287))))

(declare-fun b!4496634 () Bool)

(declare-fun e!2800955 () Bool)

(assert (=> b!4496634 (= e!2800954 e!2800955)))

(declare-fun res!1869098 () Bool)

(assert (=> b!4496634 (=> (not res!1869098) (not e!2800955))))

(assert (=> b!4496634 (= res!1869098 ((_ is Cons!50529) (t!357611 (toList!4247 lt!1677907))))))

(declare-fun b!4496635 () Bool)

(assert (=> b!4496635 (= e!2800955 (containsKeyBiggerList!100 (t!357611 (t!357611 (toList!4247 lt!1677907))) key!3287))))

(assert (= (and d!1379162 res!1869099) b!4496633))

(assert (= (and d!1379162 (not res!1869097)) b!4496634))

(assert (= (and b!4496634 res!1869098) b!4496635))

(declare-fun m!5224817 () Bool)

(assert (=> b!4496633 m!5224817))

(declare-fun m!5224819 () Bool)

(assert (=> b!4496635 m!5224819))

(assert (=> b!4495834 d!1379162))

(declare-fun d!1379164 () Bool)

(declare-fun res!1869100 () Bool)

(declare-fun e!2800957 () Bool)

(assert (=> d!1379164 (=> res!1869100 e!2800957)))

(assert (=> d!1379164 (= res!1869100 (and ((_ is Cons!50528) (_2!28752 (h!56344 (toList!4247 lt!1677907)))) (= (_1!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 lt!1677907))))) key!3287)))))

(assert (=> d!1379164 (= (containsKey!1664 (_2!28752 (h!56344 (toList!4247 lt!1677907))) key!3287) e!2800957)))

(declare-fun b!4496636 () Bool)

(declare-fun e!2800958 () Bool)

(assert (=> b!4496636 (= e!2800957 e!2800958)))

(declare-fun res!1869101 () Bool)

(assert (=> b!4496636 (=> (not res!1869101) (not e!2800958))))

(assert (=> b!4496636 (= res!1869101 ((_ is Cons!50528) (_2!28752 (h!56344 (toList!4247 lt!1677907)))))))

(declare-fun b!4496637 () Bool)

(assert (=> b!4496637 (= e!2800958 (containsKey!1664 (t!357610 (_2!28752 (h!56344 (toList!4247 lt!1677907)))) key!3287))))

(assert (= (and d!1379164 (not res!1869100)) b!4496636))

(assert (= (and b!4496636 res!1869101) b!4496637))

(declare-fun m!5224821 () Bool)

(assert (=> b!4496637 m!5224821))

(assert (=> b!4495832 d!1379164))

(declare-fun bs!834012 () Bool)

(declare-fun b!4496638 () Bool)

(assert (= bs!834012 (and b!4496638 d!1378680)))

(declare-fun lambda!168231 () Int)

(assert (=> bs!834012 (not (= lambda!168231 lambda!168060))))

(declare-fun bs!834013 () Bool)

(assert (= bs!834013 (and b!4496638 b!4496542)))

(assert (=> bs!834013 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168231 lambda!168212))))

(declare-fun bs!834014 () Bool)

(assert (= bs!834014 (and b!4496638 b!4496501)))

(assert (=> bs!834014 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) lt!1678540) (= lambda!168231 lambda!168198))))

(declare-fun bs!834015 () Bool)

(assert (= bs!834015 (and b!4496638 d!1379090)))

(assert (=> bs!834015 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) lt!1678614) (= lambda!168231 lambda!168217))))

(declare-fun bs!834016 () Bool)

(assert (= bs!834016 (and b!4496638 d!1379156)))

(assert (=> bs!834016 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) lt!1678677) (= lambda!168231 lambda!168229))))

(declare-fun bs!834017 () Bool)

(assert (= bs!834017 (and b!4496638 b!4496630)))

(assert (=> bs!834017 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) lt!1678678) (= lambda!168231 lambda!168228))))

(declare-fun bs!834018 () Bool)

(assert (= bs!834018 (and b!4496638 d!1379016)))

(assert (=> bs!834018 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) lt!1678539) (= lambda!168231 lambda!168199))))

(assert (=> bs!834014 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168231 lambda!168197))))

(declare-fun bs!834019 () Bool)

(assert (= bs!834019 (and b!4496638 b!4496497)))

(assert (=> bs!834019 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168231 lambda!168196))))

(declare-fun bs!834020 () Bool)

(assert (= bs!834020 (and b!4496638 b!4496546)))

(assert (=> bs!834020 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) lt!1678615) (= lambda!168231 lambda!168215))))

(declare-fun bs!834021 () Bool)

(assert (= bs!834021 (and b!4496638 b!4496626)))

(assert (=> bs!834021 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168231 lambda!168226))))

(assert (=> bs!834017 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168231 lambda!168227))))

(assert (=> bs!834020 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168231 lambda!168214))))

(assert (=> b!4496638 true))

(declare-fun bs!834022 () Bool)

(declare-fun b!4496642 () Bool)

(assert (= bs!834022 (and b!4496642 d!1378680)))

(declare-fun lambda!168232 () Int)

(assert (=> bs!834022 (not (= lambda!168232 lambda!168060))))

(declare-fun bs!834023 () Bool)

(assert (= bs!834023 (and b!4496642 b!4496542)))

(assert (=> bs!834023 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168232 lambda!168212))))

(declare-fun bs!834024 () Bool)

(assert (= bs!834024 (and b!4496642 b!4496501)))

(assert (=> bs!834024 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) lt!1678540) (= lambda!168232 lambda!168198))))

(declare-fun bs!834025 () Bool)

(assert (= bs!834025 (and b!4496642 d!1379090)))

(assert (=> bs!834025 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) lt!1678614) (= lambda!168232 lambda!168217))))

(declare-fun bs!834026 () Bool)

(assert (= bs!834026 (and b!4496642 b!4496638)))

(assert (=> bs!834026 (= lambda!168232 lambda!168231)))

(declare-fun bs!834027 () Bool)

(assert (= bs!834027 (and b!4496642 d!1379156)))

(assert (=> bs!834027 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) lt!1678677) (= lambda!168232 lambda!168229))))

(declare-fun bs!834028 () Bool)

(assert (= bs!834028 (and b!4496642 b!4496630)))

(assert (=> bs!834028 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) lt!1678678) (= lambda!168232 lambda!168228))))

(declare-fun bs!834029 () Bool)

(assert (= bs!834029 (and b!4496642 d!1379016)))

(assert (=> bs!834029 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) lt!1678539) (= lambda!168232 lambda!168199))))

(assert (=> bs!834024 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168232 lambda!168197))))

(declare-fun bs!834030 () Bool)

(assert (= bs!834030 (and b!4496642 b!4496497)))

(assert (=> bs!834030 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168232 lambda!168196))))

(declare-fun bs!834031 () Bool)

(assert (= bs!834031 (and b!4496642 b!4496546)))

(assert (=> bs!834031 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) lt!1678615) (= lambda!168232 lambda!168215))))

(declare-fun bs!834032 () Bool)

(assert (= bs!834032 (and b!4496642 b!4496626)))

(assert (=> bs!834032 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168232 lambda!168226))))

(assert (=> bs!834028 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168232 lambda!168227))))

(assert (=> bs!834031 (= (= (extractMap!1176 (t!357611 (toList!4247 lm!1477))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168232 lambda!168214))))

(assert (=> b!4496642 true))

(declare-fun lambda!168233 () Int)

(assert (=> bs!834022 (not (= lambda!168233 lambda!168060))))

(declare-fun lt!1678701 () ListMap!3509)

(assert (=> bs!834023 (= (= lt!1678701 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168233 lambda!168212))))

(assert (=> bs!834024 (= (= lt!1678701 lt!1678540) (= lambda!168233 lambda!168198))))

(assert (=> bs!834025 (= (= lt!1678701 lt!1678614) (= lambda!168233 lambda!168217))))

(assert (=> b!4496642 (= (= lt!1678701 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (= lambda!168233 lambda!168232))))

(assert (=> bs!834026 (= (= lt!1678701 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (= lambda!168233 lambda!168231))))

(assert (=> bs!834027 (= (= lt!1678701 lt!1678677) (= lambda!168233 lambda!168229))))

(assert (=> bs!834028 (= (= lt!1678701 lt!1678678) (= lambda!168233 lambda!168228))))

(assert (=> bs!834029 (= (= lt!1678701 lt!1678539) (= lambda!168233 lambda!168199))))

(assert (=> bs!834024 (= (= lt!1678701 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168233 lambda!168197))))

(assert (=> bs!834030 (= (= lt!1678701 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168233 lambda!168196))))

(assert (=> bs!834031 (= (= lt!1678701 lt!1678615) (= lambda!168233 lambda!168215))))

(assert (=> bs!834032 (= (= lt!1678701 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168233 lambda!168226))))

(assert (=> bs!834028 (= (= lt!1678701 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168233 lambda!168227))))

(assert (=> bs!834031 (= (= lt!1678701 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168233 lambda!168214))))

(assert (=> b!4496642 true))

(declare-fun bs!834033 () Bool)

(declare-fun d!1379166 () Bool)

(assert (= bs!834033 (and d!1379166 d!1378680)))

(declare-fun lambda!168234 () Int)

(assert (=> bs!834033 (not (= lambda!168234 lambda!168060))))

(declare-fun bs!834034 () Bool)

(assert (= bs!834034 (and d!1379166 b!4496542)))

(declare-fun lt!1678700 () ListMap!3509)

(assert (=> bs!834034 (= (= lt!1678700 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168234 lambda!168212))))

(declare-fun bs!834035 () Bool)

(assert (= bs!834035 (and d!1379166 b!4496501)))

(assert (=> bs!834035 (= (= lt!1678700 lt!1678540) (= lambda!168234 lambda!168198))))

(declare-fun bs!834036 () Bool)

(assert (= bs!834036 (and d!1379166 d!1379090)))

(assert (=> bs!834036 (= (= lt!1678700 lt!1678614) (= lambda!168234 lambda!168217))))

(declare-fun bs!834037 () Bool)

(assert (= bs!834037 (and d!1379166 b!4496642)))

(assert (=> bs!834037 (= (= lt!1678700 lt!1678701) (= lambda!168234 lambda!168233))))

(assert (=> bs!834037 (= (= lt!1678700 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (= lambda!168234 lambda!168232))))

(declare-fun bs!834038 () Bool)

(assert (= bs!834038 (and d!1379166 b!4496638)))

(assert (=> bs!834038 (= (= lt!1678700 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (= lambda!168234 lambda!168231))))

(declare-fun bs!834039 () Bool)

(assert (= bs!834039 (and d!1379166 d!1379156)))

(assert (=> bs!834039 (= (= lt!1678700 lt!1678677) (= lambda!168234 lambda!168229))))

(declare-fun bs!834040 () Bool)

(assert (= bs!834040 (and d!1379166 b!4496630)))

(assert (=> bs!834040 (= (= lt!1678700 lt!1678678) (= lambda!168234 lambda!168228))))

(declare-fun bs!834041 () Bool)

(assert (= bs!834041 (and d!1379166 d!1379016)))

(assert (=> bs!834041 (= (= lt!1678700 lt!1678539) (= lambda!168234 lambda!168199))))

(assert (=> bs!834035 (= (= lt!1678700 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168234 lambda!168197))))

(declare-fun bs!834042 () Bool)

(assert (= bs!834042 (and d!1379166 b!4496497)))

(assert (=> bs!834042 (= (= lt!1678700 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168234 lambda!168196))))

(declare-fun bs!834043 () Bool)

(assert (= bs!834043 (and d!1379166 b!4496546)))

(assert (=> bs!834043 (= (= lt!1678700 lt!1678615) (= lambda!168234 lambda!168215))))

(declare-fun bs!834044 () Bool)

(assert (= bs!834044 (and d!1379166 b!4496626)))

(assert (=> bs!834044 (= (= lt!1678700 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168234 lambda!168226))))

(assert (=> bs!834040 (= (= lt!1678700 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168234 lambda!168227))))

(assert (=> bs!834043 (= (= lt!1678700 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168234 lambda!168214))))

(assert (=> d!1379166 true))

(declare-fun c!766244 () Bool)

(declare-fun bm!312917 () Bool)

(declare-fun call!312922 () Bool)

(assert (=> bm!312917 (= call!312922 (forall!10163 (ite c!766244 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (_2!28752 (h!56344 (toList!4247 lm!1477)))) (ite c!766244 lambda!168231 lambda!168233)))))

(declare-fun e!2800960 () ListMap!3509)

(assert (=> b!4496638 (= e!2800960 (extractMap!1176 (t!357611 (toList!4247 lm!1477))))))

(declare-fun lt!1678699 () Unit!91352)

(declare-fun call!312924 () Unit!91352)

(assert (=> b!4496638 (= lt!1678699 call!312924)))

(assert (=> b!4496638 call!312922))

(declare-fun lt!1678690 () Unit!91352)

(assert (=> b!4496638 (= lt!1678690 lt!1678699)))

(declare-fun call!312923 () Bool)

(assert (=> b!4496638 call!312923))

(declare-fun lt!1678684 () Unit!91352)

(declare-fun Unit!91496 () Unit!91352)

(assert (=> b!4496638 (= lt!1678684 Unit!91496)))

(declare-fun b!4496639 () Bool)

(declare-fun e!2800961 () Bool)

(assert (=> b!4496639 (= e!2800961 (invariantList!979 (toList!4248 lt!1678700)))))

(assert (=> d!1379166 e!2800961))

(declare-fun res!1869103 () Bool)

(assert (=> d!1379166 (=> (not res!1869103) (not e!2800961))))

(assert (=> d!1379166 (= res!1869103 (forall!10163 (_2!28752 (h!56344 (toList!4247 lm!1477))) lambda!168234))))

(assert (=> d!1379166 (= lt!1678700 e!2800960)))

(assert (=> d!1379166 (= c!766244 ((_ is Nil!50528) (_2!28752 (h!56344 (toList!4247 lm!1477)))))))

(assert (=> d!1379166 (noDuplicateKeys!1120 (_2!28752 (h!56344 (toList!4247 lm!1477))))))

(assert (=> d!1379166 (= (addToMapMapFromBucket!647 (_2!28752 (h!56344 (toList!4247 lm!1477))) (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) lt!1678700)))

(declare-fun b!4496640 () Bool)

(declare-fun e!2800959 () Bool)

(assert (=> b!4496640 (= e!2800959 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) lambda!168233))))

(declare-fun b!4496641 () Bool)

(declare-fun res!1869102 () Bool)

(assert (=> b!4496641 (=> (not res!1869102) (not e!2800961))))

(assert (=> b!4496641 (= res!1869102 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) lambda!168234))))

(assert (=> b!4496642 (= e!2800960 lt!1678701)))

(declare-fun lt!1678688 () ListMap!3509)

(assert (=> b!4496642 (= lt!1678688 (+!1464 (extractMap!1176 (t!357611 (toList!4247 lm!1477))) (h!56343 (_2!28752 (h!56344 (toList!4247 lm!1477))))))))

(assert (=> b!4496642 (= lt!1678701 (addToMapMapFromBucket!647 (t!357610 (_2!28752 (h!56344 (toList!4247 lm!1477)))) (+!1464 (extractMap!1176 (t!357611 (toList!4247 lm!1477))) (h!56343 (_2!28752 (h!56344 (toList!4247 lm!1477)))))))))

(declare-fun lt!1678686 () Unit!91352)

(assert (=> b!4496642 (= lt!1678686 call!312924)))

(assert (=> b!4496642 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) lambda!168232)))

(declare-fun lt!1678689 () Unit!91352)

(assert (=> b!4496642 (= lt!1678689 lt!1678686)))

(assert (=> b!4496642 (forall!10163 (toList!4248 lt!1678688) lambda!168233)))

(declare-fun lt!1678697 () Unit!91352)

(declare-fun Unit!91497 () Unit!91352)

(assert (=> b!4496642 (= lt!1678697 Unit!91497)))

(assert (=> b!4496642 (forall!10163 (t!357610 (_2!28752 (h!56344 (toList!4247 lm!1477)))) lambda!168233)))

(declare-fun lt!1678685 () Unit!91352)

(declare-fun Unit!91498 () Unit!91352)

(assert (=> b!4496642 (= lt!1678685 Unit!91498)))

(declare-fun lt!1678687 () Unit!91352)

(declare-fun Unit!91499 () Unit!91352)

(assert (=> b!4496642 (= lt!1678687 Unit!91499)))

(declare-fun lt!1678698 () Unit!91352)

(assert (=> b!4496642 (= lt!1678698 (forallContained!2419 (toList!4248 lt!1678688) lambda!168233 (h!56343 (_2!28752 (h!56344 (toList!4247 lm!1477))))))))

(assert (=> b!4496642 (contains!13191 lt!1678688 (_1!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 lm!1477))))))))

(declare-fun lt!1678702 () Unit!91352)

(declare-fun Unit!91500 () Unit!91352)

(assert (=> b!4496642 (= lt!1678702 Unit!91500)))

(assert (=> b!4496642 (contains!13191 lt!1678701 (_1!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 lm!1477))))))))

(declare-fun lt!1678692 () Unit!91352)

(declare-fun Unit!91501 () Unit!91352)

(assert (=> b!4496642 (= lt!1678692 Unit!91501)))

(assert (=> b!4496642 (forall!10163 (_2!28752 (h!56344 (toList!4247 lm!1477))) lambda!168233)))

(declare-fun lt!1678682 () Unit!91352)

(declare-fun Unit!91502 () Unit!91352)

(assert (=> b!4496642 (= lt!1678682 Unit!91502)))

(assert (=> b!4496642 (forall!10163 (toList!4248 lt!1678688) lambda!168233)))

(declare-fun lt!1678696 () Unit!91352)

(declare-fun Unit!91503 () Unit!91352)

(assert (=> b!4496642 (= lt!1678696 Unit!91503)))

(declare-fun lt!1678691 () Unit!91352)

(declare-fun Unit!91504 () Unit!91352)

(assert (=> b!4496642 (= lt!1678691 Unit!91504)))

(declare-fun lt!1678694 () Unit!91352)

(assert (=> b!4496642 (= lt!1678694 (addForallContainsKeyThenBeforeAdding!302 (extractMap!1176 (t!357611 (toList!4247 lm!1477))) lt!1678701 (_1!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 lm!1477))))) (_2!28751 (h!56343 (_2!28752 (h!56344 (toList!4247 lm!1477)))))))))

(assert (=> b!4496642 call!312923))

(declare-fun lt!1678693 () Unit!91352)

(assert (=> b!4496642 (= lt!1678693 lt!1678694)))

(assert (=> b!4496642 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) lambda!168233)))

(declare-fun lt!1678683 () Unit!91352)

(declare-fun Unit!91505 () Unit!91352)

(assert (=> b!4496642 (= lt!1678683 Unit!91505)))

(declare-fun res!1869104 () Bool)

(assert (=> b!4496642 (= res!1869104 call!312922)))

(assert (=> b!4496642 (=> (not res!1869104) (not e!2800959))))

(assert (=> b!4496642 e!2800959))

(declare-fun lt!1678695 () Unit!91352)

(declare-fun Unit!91506 () Unit!91352)

(assert (=> b!4496642 (= lt!1678695 Unit!91506)))

(declare-fun bm!312918 () Bool)

(assert (=> bm!312918 (= call!312924 (lemmaContainsAllItsOwnKeys!302 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))))))

(declare-fun bm!312919 () Bool)

(assert (=> bm!312919 (= call!312923 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (ite c!766244 lambda!168231 lambda!168233)))))

(assert (= (and d!1379166 c!766244) b!4496638))

(assert (= (and d!1379166 (not c!766244)) b!4496642))

(assert (= (and b!4496642 res!1869104) b!4496640))

(assert (= (or b!4496638 b!4496642) bm!312917))

(assert (= (or b!4496638 b!4496642) bm!312919))

(assert (= (or b!4496638 b!4496642) bm!312918))

(assert (= (and d!1379166 res!1869103) b!4496641))

(assert (= (and b!4496641 res!1869102) b!4496639))

(declare-fun m!5224823 () Bool)

(assert (=> b!4496640 m!5224823))

(assert (=> bm!312918 m!5222919))

(declare-fun m!5224825 () Bool)

(assert (=> bm!312918 m!5224825))

(declare-fun m!5224827 () Bool)

(assert (=> b!4496642 m!5224827))

(declare-fun m!5224829 () Bool)

(assert (=> b!4496642 m!5224829))

(assert (=> b!4496642 m!5222919))

(declare-fun m!5224831 () Bool)

(assert (=> b!4496642 m!5224831))

(assert (=> b!4496642 m!5224823))

(declare-fun m!5224833 () Bool)

(assert (=> b!4496642 m!5224833))

(declare-fun m!5224835 () Bool)

(assert (=> b!4496642 m!5224835))

(declare-fun m!5224837 () Bool)

(assert (=> b!4496642 m!5224837))

(assert (=> b!4496642 m!5222919))

(assert (=> b!4496642 m!5224835))

(assert (=> b!4496642 m!5224827))

(declare-fun m!5224839 () Bool)

(assert (=> b!4496642 m!5224839))

(declare-fun m!5224841 () Bool)

(assert (=> b!4496642 m!5224841))

(declare-fun m!5224843 () Bool)

(assert (=> b!4496642 m!5224843))

(declare-fun m!5224845 () Bool)

(assert (=> b!4496642 m!5224845))

(declare-fun m!5224847 () Bool)

(assert (=> bm!312917 m!5224847))

(declare-fun m!5224849 () Bool)

(assert (=> bm!312919 m!5224849))

(declare-fun m!5224851 () Bool)

(assert (=> b!4496641 m!5224851))

(declare-fun m!5224853 () Bool)

(assert (=> d!1379166 m!5224853))

(assert (=> d!1379166 m!5223471))

(declare-fun m!5224855 () Bool)

(assert (=> b!4496639 m!5224855))

(assert (=> b!4495587 d!1379166))

(assert (=> b!4495587 d!1378686))

(declare-fun bs!834045 () Bool)

(declare-fun b!4496643 () Bool)

(assert (= bs!834045 (and b!4496643 d!1378680)))

(declare-fun lambda!168235 () Int)

(assert (=> bs!834045 (not (= lambda!168235 lambda!168060))))

(declare-fun bs!834046 () Bool)

(assert (= bs!834046 (and b!4496643 b!4496542)))

(assert (=> bs!834046 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168235 lambda!168212))))

(declare-fun bs!834047 () Bool)

(assert (= bs!834047 (and b!4496643 b!4496501)))

(assert (=> bs!834047 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678540) (= lambda!168235 lambda!168198))))

(declare-fun bs!834048 () Bool)

(assert (= bs!834048 (and b!4496643 d!1379090)))

(assert (=> bs!834048 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678614) (= lambda!168235 lambda!168217))))

(declare-fun bs!834049 () Bool)

(assert (= bs!834049 (and b!4496643 b!4496642)))

(assert (=> bs!834049 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678701) (= lambda!168235 lambda!168233))))

(assert (=> bs!834049 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (= lambda!168235 lambda!168232))))

(declare-fun bs!834050 () Bool)

(assert (= bs!834050 (and b!4496643 d!1379156)))

(assert (=> bs!834050 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678677) (= lambda!168235 lambda!168229))))

(declare-fun bs!834051 () Bool)

(assert (= bs!834051 (and b!4496643 b!4496630)))

(assert (=> bs!834051 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678678) (= lambda!168235 lambda!168228))))

(declare-fun bs!834052 () Bool)

(assert (= bs!834052 (and b!4496643 d!1379016)))

(assert (=> bs!834052 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678539) (= lambda!168235 lambda!168199))))

(assert (=> bs!834047 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168235 lambda!168197))))

(declare-fun bs!834053 () Bool)

(assert (= bs!834053 (and b!4496643 b!4496497)))

(assert (=> bs!834053 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168235 lambda!168196))))

(declare-fun bs!834054 () Bool)

(assert (= bs!834054 (and b!4496643 b!4496638)))

(assert (=> bs!834054 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (= lambda!168235 lambda!168231))))

(declare-fun bs!834055 () Bool)

(assert (= bs!834055 (and b!4496643 d!1379166)))

(assert (=> bs!834055 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678700) (= lambda!168235 lambda!168234))))

(declare-fun bs!834056 () Bool)

(assert (= bs!834056 (and b!4496643 b!4496546)))

(assert (=> bs!834056 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678615) (= lambda!168235 lambda!168215))))

(declare-fun bs!834057 () Bool)

(assert (= bs!834057 (and b!4496643 b!4496626)))

(assert (=> bs!834057 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168235 lambda!168226))))

(assert (=> bs!834051 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168235 lambda!168227))))

(assert (=> bs!834056 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168235 lambda!168214))))

(assert (=> b!4496643 true))

(declare-fun bs!834058 () Bool)

(declare-fun b!4496647 () Bool)

(assert (= bs!834058 (and b!4496647 d!1378680)))

(declare-fun lambda!168236 () Int)

(assert (=> bs!834058 (not (= lambda!168236 lambda!168060))))

(declare-fun bs!834059 () Bool)

(assert (= bs!834059 (and b!4496647 b!4496542)))

(assert (=> bs!834059 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168236 lambda!168212))))

(declare-fun bs!834060 () Bool)

(assert (= bs!834060 (and b!4496647 b!4496501)))

(assert (=> bs!834060 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678540) (= lambda!168236 lambda!168198))))

(declare-fun bs!834061 () Bool)

(assert (= bs!834061 (and b!4496647 d!1379090)))

(assert (=> bs!834061 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678614) (= lambda!168236 lambda!168217))))

(declare-fun bs!834062 () Bool)

(assert (= bs!834062 (and b!4496647 b!4496642)))

(assert (=> bs!834062 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678701) (= lambda!168236 lambda!168233))))

(assert (=> bs!834062 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (= lambda!168236 lambda!168232))))

(declare-fun bs!834063 () Bool)

(assert (= bs!834063 (and b!4496647 b!4496643)))

(assert (=> bs!834063 (= lambda!168236 lambda!168235)))

(declare-fun bs!834064 () Bool)

(assert (= bs!834064 (and b!4496647 d!1379156)))

(assert (=> bs!834064 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678677) (= lambda!168236 lambda!168229))))

(declare-fun bs!834065 () Bool)

(assert (= bs!834065 (and b!4496647 b!4496630)))

(assert (=> bs!834065 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678678) (= lambda!168236 lambda!168228))))

(declare-fun bs!834066 () Bool)

(assert (= bs!834066 (and b!4496647 d!1379016)))

(assert (=> bs!834066 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678539) (= lambda!168236 lambda!168199))))

(assert (=> bs!834060 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168236 lambda!168197))))

(declare-fun bs!834067 () Bool)

(assert (= bs!834067 (and b!4496647 b!4496497)))

(assert (=> bs!834067 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168236 lambda!168196))))

(declare-fun bs!834068 () Bool)

(assert (= bs!834068 (and b!4496647 b!4496638)))

(assert (=> bs!834068 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (= lambda!168236 lambda!168231))))

(declare-fun bs!834069 () Bool)

(assert (= bs!834069 (and b!4496647 d!1379166)))

(assert (=> bs!834069 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678700) (= lambda!168236 lambda!168234))))

(declare-fun bs!834070 () Bool)

(assert (= bs!834070 (and b!4496647 b!4496546)))

(assert (=> bs!834070 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678615) (= lambda!168236 lambda!168215))))

(declare-fun bs!834071 () Bool)

(assert (= bs!834071 (and b!4496647 b!4496626)))

(assert (=> bs!834071 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168236 lambda!168226))))

(assert (=> bs!834065 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168236 lambda!168227))))

(assert (=> bs!834070 (= (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168236 lambda!168214))))

(assert (=> b!4496647 true))

(declare-fun lambda!168237 () Int)

(assert (=> bs!834058 (not (= lambda!168237 lambda!168060))))

(declare-fun lt!1678722 () ListMap!3509)

(assert (=> bs!834059 (= (= lt!1678722 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168237 lambda!168212))))

(assert (=> bs!834060 (= (= lt!1678722 lt!1678540) (= lambda!168237 lambda!168198))))

(assert (=> bs!834061 (= (= lt!1678722 lt!1678614) (= lambda!168237 lambda!168217))))

(assert (=> bs!834062 (= (= lt!1678722 lt!1678701) (= lambda!168237 lambda!168233))))

(assert (=> bs!834062 (= (= lt!1678722 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (= lambda!168237 lambda!168232))))

(assert (=> b!4496647 (= (= lt!1678722 (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477))))) (= lambda!168237 lambda!168236))))

(assert (=> bs!834063 (= (= lt!1678722 (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477))))) (= lambda!168237 lambda!168235))))

(assert (=> bs!834064 (= (= lt!1678722 lt!1678677) (= lambda!168237 lambda!168229))))

(assert (=> bs!834065 (= (= lt!1678722 lt!1678678) (= lambda!168237 lambda!168228))))

(assert (=> bs!834066 (= (= lt!1678722 lt!1678539) (= lambda!168237 lambda!168199))))

(assert (=> bs!834060 (= (= lt!1678722 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168237 lambda!168197))))

(assert (=> bs!834067 (= (= lt!1678722 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168237 lambda!168196))))

(assert (=> bs!834068 (= (= lt!1678722 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (= lambda!168237 lambda!168231))))

(assert (=> bs!834069 (= (= lt!1678722 lt!1678700) (= lambda!168237 lambda!168234))))

(assert (=> bs!834070 (= (= lt!1678722 lt!1678615) (= lambda!168237 lambda!168215))))

(assert (=> bs!834071 (= (= lt!1678722 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168237 lambda!168226))))

(assert (=> bs!834065 (= (= lt!1678722 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168237 lambda!168227))))

(assert (=> bs!834070 (= (= lt!1678722 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168237 lambda!168214))))

(assert (=> b!4496647 true))

(declare-fun bs!834072 () Bool)

(declare-fun d!1379168 () Bool)

(assert (= bs!834072 (and d!1379168 d!1378680)))

(declare-fun lambda!168238 () Int)

(assert (=> bs!834072 (not (= lambda!168238 lambda!168060))))

(declare-fun bs!834073 () Bool)

(assert (= bs!834073 (and d!1379168 b!4496542)))

(declare-fun lt!1678721 () ListMap!3509)

(assert (=> bs!834073 (= (= lt!1678721 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168238 lambda!168212))))

(declare-fun bs!834074 () Bool)

(assert (= bs!834074 (and d!1379168 b!4496501)))

(assert (=> bs!834074 (= (= lt!1678721 lt!1678540) (= lambda!168238 lambda!168198))))

(declare-fun bs!834075 () Bool)

(assert (= bs!834075 (and d!1379168 d!1379090)))

(assert (=> bs!834075 (= (= lt!1678721 lt!1678614) (= lambda!168238 lambda!168217))))

(declare-fun bs!834076 () Bool)

(assert (= bs!834076 (and d!1379168 b!4496642)))

(assert (=> bs!834076 (= (= lt!1678721 lt!1678701) (= lambda!168238 lambda!168233))))

(declare-fun bs!834077 () Bool)

(assert (= bs!834077 (and d!1379168 b!4496647)))

(assert (=> bs!834077 (= (= lt!1678721 (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477))))) (= lambda!168238 lambda!168236))))

(declare-fun bs!834078 () Bool)

(assert (= bs!834078 (and d!1379168 b!4496643)))

(assert (=> bs!834078 (= (= lt!1678721 (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477))))) (= lambda!168238 lambda!168235))))

(declare-fun bs!834079 () Bool)

(assert (= bs!834079 (and d!1379168 d!1379156)))

(assert (=> bs!834079 (= (= lt!1678721 lt!1678677) (= lambda!168238 lambda!168229))))

(declare-fun bs!834080 () Bool)

(assert (= bs!834080 (and d!1379168 b!4496630)))

(assert (=> bs!834080 (= (= lt!1678721 lt!1678678) (= lambda!168238 lambda!168228))))

(declare-fun bs!834081 () Bool)

(assert (= bs!834081 (and d!1379168 d!1379016)))

(assert (=> bs!834081 (= (= lt!1678721 lt!1678539) (= lambda!168238 lambda!168199))))

(assert (=> bs!834074 (= (= lt!1678721 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168238 lambda!168197))))

(declare-fun bs!834082 () Bool)

(assert (= bs!834082 (and d!1379168 b!4496497)))

(assert (=> bs!834082 (= (= lt!1678721 (extractMap!1176 (t!357611 (toList!4247 lt!1677907)))) (= lambda!168238 lambda!168196))))

(assert (=> bs!834077 (= (= lt!1678721 lt!1678722) (= lambda!168238 lambda!168237))))

(assert (=> bs!834076 (= (= lt!1678721 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (= lambda!168238 lambda!168232))))

(declare-fun bs!834083 () Bool)

(assert (= bs!834083 (and d!1379168 b!4496638)))

(assert (=> bs!834083 (= (= lt!1678721 (extractMap!1176 (t!357611 (toList!4247 lm!1477)))) (= lambda!168238 lambda!168231))))

(declare-fun bs!834084 () Bool)

(assert (= bs!834084 (and d!1379168 d!1379166)))

(assert (=> bs!834084 (= (= lt!1678721 lt!1678700) (= lambda!168238 lambda!168234))))

(declare-fun bs!834085 () Bool)

(assert (= bs!834085 (and d!1379168 b!4496546)))

(assert (=> bs!834085 (= (= lt!1678721 lt!1678615) (= lambda!168238 lambda!168215))))

(declare-fun bs!834086 () Bool)

(assert (= bs!834086 (and d!1379168 b!4496626)))

(assert (=> bs!834086 (= (= lt!1678721 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168238 lambda!168226))))

(assert (=> bs!834080 (= (= lt!1678721 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))) (= lambda!168238 lambda!168227))))

(assert (=> bs!834085 (= (= lt!1678721 (extractMap!1176 (t!357611 (toList!4247 (+!1462 lt!1677907 lt!1677922))))) (= lambda!168238 lambda!168214))))

(assert (=> d!1379168 true))

(declare-fun c!766245 () Bool)

(declare-fun call!312925 () Bool)

(declare-fun bm!312920 () Bool)

(assert (=> bm!312920 (= call!312925 (forall!10163 (ite c!766245 (toList!4248 (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477))))) (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477))))) (ite c!766245 lambda!168235 lambda!168237)))))

(declare-fun e!2800965 () ListMap!3509)

(assert (=> b!4496643 (= e!2800965 (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))))))

(declare-fun lt!1678720 () Unit!91352)

(declare-fun call!312927 () Unit!91352)

(assert (=> b!4496643 (= lt!1678720 call!312927)))

(assert (=> b!4496643 call!312925))

(declare-fun lt!1678711 () Unit!91352)

(assert (=> b!4496643 (= lt!1678711 lt!1678720)))

(declare-fun call!312926 () Bool)

(assert (=> b!4496643 call!312926))

(declare-fun lt!1678705 () Unit!91352)

(declare-fun Unit!91507 () Unit!91352)

(assert (=> b!4496643 (= lt!1678705 Unit!91507)))

(declare-fun b!4496644 () Bool)

(declare-fun e!2800966 () Bool)

(assert (=> b!4496644 (= e!2800966 (invariantList!979 (toList!4248 lt!1678721)))))

(assert (=> d!1379168 e!2800966))

(declare-fun res!1869106 () Bool)

(assert (=> d!1379168 (=> (not res!1869106) (not e!2800966))))

(assert (=> d!1379168 (= res!1869106 (forall!10163 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477)))) lambda!168238))))

(assert (=> d!1379168 (= lt!1678721 e!2800965)))

(assert (=> d!1379168 (= c!766245 ((_ is Nil!50528) (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477))))))))

(assert (=> d!1379168 (noDuplicateKeys!1120 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477)))))))

(assert (=> d!1379168 (= (addToMapMapFromBucket!647 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477)))) (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477))))) lt!1678721)))

(declare-fun b!4496645 () Bool)

(declare-fun e!2800964 () Bool)

(assert (=> b!4496645 (= e!2800964 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477))))) lambda!168237))))

(declare-fun b!4496646 () Bool)

(declare-fun res!1869105 () Bool)

(assert (=> b!4496646 (=> (not res!1869105) (not e!2800966))))

(assert (=> b!4496646 (= res!1869105 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477))))) lambda!168238))))

(assert (=> b!4496647 (= e!2800965 lt!1678722)))

(declare-fun lt!1678709 () ListMap!3509)

(assert (=> b!4496647 (= lt!1678709 (+!1464 (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (h!56343 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477)))))))))

(assert (=> b!4496647 (= lt!1678722 (addToMapMapFromBucket!647 (t!357610 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477))))) (+!1464 (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) (h!56343 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477))))))))))

(declare-fun lt!1678707 () Unit!91352)

(assert (=> b!4496647 (= lt!1678707 call!312927)))

(assert (=> b!4496647 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477))))) lambda!168236)))

(declare-fun lt!1678710 () Unit!91352)

(assert (=> b!4496647 (= lt!1678710 lt!1678707)))

(assert (=> b!4496647 (forall!10163 (toList!4248 lt!1678709) lambda!168237)))

(declare-fun lt!1678718 () Unit!91352)

(declare-fun Unit!91508 () Unit!91352)

(assert (=> b!4496647 (= lt!1678718 Unit!91508)))

(assert (=> b!4496647 (forall!10163 (t!357610 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477))))) lambda!168237)))

(declare-fun lt!1678706 () Unit!91352)

(declare-fun Unit!91509 () Unit!91352)

(assert (=> b!4496647 (= lt!1678706 Unit!91509)))

(declare-fun lt!1678708 () Unit!91352)

(declare-fun Unit!91510 () Unit!91352)

(assert (=> b!4496647 (= lt!1678708 Unit!91510)))

(declare-fun lt!1678719 () Unit!91352)

(assert (=> b!4496647 (= lt!1678719 (forallContained!2419 (toList!4248 lt!1678709) lambda!168237 (h!56343 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477)))))))))

(assert (=> b!4496647 (contains!13191 lt!1678709 (_1!28751 (h!56343 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477)))))))))

(declare-fun lt!1678723 () Unit!91352)

(declare-fun Unit!91511 () Unit!91352)

(assert (=> b!4496647 (= lt!1678723 Unit!91511)))

(assert (=> b!4496647 (contains!13191 lt!1678722 (_1!28751 (h!56343 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477)))))))))

(declare-fun lt!1678713 () Unit!91352)

(declare-fun Unit!91512 () Unit!91352)

(assert (=> b!4496647 (= lt!1678713 Unit!91512)))

(assert (=> b!4496647 (forall!10163 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477)))) lambda!168237)))

(declare-fun lt!1678703 () Unit!91352)

(declare-fun Unit!91513 () Unit!91352)

(assert (=> b!4496647 (= lt!1678703 Unit!91513)))

(assert (=> b!4496647 (forall!10163 (toList!4248 lt!1678709) lambda!168237)))

(declare-fun lt!1678717 () Unit!91352)

(declare-fun Unit!91514 () Unit!91352)

(assert (=> b!4496647 (= lt!1678717 Unit!91514)))

(declare-fun lt!1678712 () Unit!91352)

(declare-fun Unit!91515 () Unit!91352)

(assert (=> b!4496647 (= lt!1678712 Unit!91515)))

(declare-fun lt!1678715 () Unit!91352)

(assert (=> b!4496647 (= lt!1678715 (addForallContainsKeyThenBeforeAdding!302 (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678722 (_1!28751 (h!56343 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477)))))) (_2!28751 (h!56343 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477))))))))))

(assert (=> b!4496647 call!312926))

(declare-fun lt!1678714 () Unit!91352)

(assert (=> b!4496647 (= lt!1678714 lt!1678715)))

(assert (=> b!4496647 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477))))) lambda!168237)))

(declare-fun lt!1678704 () Unit!91352)

(declare-fun Unit!91516 () Unit!91352)

(assert (=> b!4496647 (= lt!1678704 Unit!91516)))

(declare-fun res!1869107 () Bool)

(assert (=> b!4496647 (= res!1869107 call!312925)))

(assert (=> b!4496647 (=> (not res!1869107) (not e!2800964))))

(assert (=> b!4496647 e!2800964))

(declare-fun lt!1678716 () Unit!91352)

(declare-fun Unit!91517 () Unit!91352)

(assert (=> b!4496647 (= lt!1678716 Unit!91517)))

(declare-fun bm!312921 () Bool)

(assert (=> bm!312921 (= call!312927 (lemmaContainsAllItsOwnKeys!302 (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477))))))))

(declare-fun bm!312922 () Bool)

(assert (=> bm!312922 (= call!312926 (forall!10163 (toList!4248 (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477))))) (ite c!766245 lambda!168235 lambda!168237)))))

(assert (= (and d!1379168 c!766245) b!4496643))

(assert (= (and d!1379168 (not c!766245)) b!4496647))

(assert (= (and b!4496647 res!1869107) b!4496645))

(assert (= (or b!4496643 b!4496647) bm!312920))

(assert (= (or b!4496643 b!4496647) bm!312922))

(assert (= (or b!4496643 b!4496647) bm!312921))

(assert (= (and d!1379168 res!1869106) b!4496646))

(assert (= (and b!4496646 res!1869105) b!4496644))

(declare-fun m!5224857 () Bool)

(assert (=> b!4496645 m!5224857))

(assert (=> bm!312921 m!5223369))

(declare-fun m!5224859 () Bool)

(assert (=> bm!312921 m!5224859))

(declare-fun m!5224861 () Bool)

(assert (=> b!4496647 m!5224861))

(declare-fun m!5224863 () Bool)

(assert (=> b!4496647 m!5224863))

(assert (=> b!4496647 m!5223369))

(declare-fun m!5224865 () Bool)

(assert (=> b!4496647 m!5224865))

(assert (=> b!4496647 m!5224857))

(declare-fun m!5224867 () Bool)

(assert (=> b!4496647 m!5224867))

(declare-fun m!5224869 () Bool)

(assert (=> b!4496647 m!5224869))

(declare-fun m!5224871 () Bool)

(assert (=> b!4496647 m!5224871))

(assert (=> b!4496647 m!5223369))

(assert (=> b!4496647 m!5224869))

(assert (=> b!4496647 m!5224861))

(declare-fun m!5224873 () Bool)

(assert (=> b!4496647 m!5224873))

(declare-fun m!5224875 () Bool)

(assert (=> b!4496647 m!5224875))

(declare-fun m!5224877 () Bool)

(assert (=> b!4496647 m!5224877))

(declare-fun m!5224879 () Bool)

(assert (=> b!4496647 m!5224879))

(declare-fun m!5224881 () Bool)

(assert (=> bm!312920 m!5224881))

(declare-fun m!5224883 () Bool)

(assert (=> bm!312922 m!5224883))

(declare-fun m!5224885 () Bool)

(assert (=> b!4496646 m!5224885))

(declare-fun m!5224887 () Bool)

(assert (=> d!1379168 m!5224887))

(declare-fun m!5224889 () Bool)

(assert (=> d!1379168 m!5224889))

(declare-fun m!5224891 () Bool)

(assert (=> b!4496644 m!5224891))

(assert (=> b!4495766 d!1379168))

(declare-fun bs!834087 () Bool)

(declare-fun d!1379170 () Bool)

(assert (= bs!834087 (and d!1379170 d!1378622)))

(declare-fun lambda!168239 () Int)

(assert (=> bs!834087 (= lambda!168239 lambda!168049)))

(declare-fun bs!834088 () Bool)

(assert (= bs!834088 (and d!1379170 d!1378576)))

(assert (=> bs!834088 (= lambda!168239 lambda!168025)))

(declare-fun bs!834089 () Bool)

(assert (= bs!834089 (and d!1379170 start!443472)))

(assert (=> bs!834089 (= lambda!168239 lambda!168015)))

(declare-fun bs!834090 () Bool)

(assert (= bs!834090 (and d!1379170 d!1378692)))

(assert (=> bs!834090 (= lambda!168239 lambda!168068)))

(declare-fun bs!834091 () Bool)

(assert (= bs!834091 (and d!1379170 d!1378682)))

(assert (=> bs!834091 (= lambda!168239 lambda!168063)))

(declare-fun bs!834092 () Bool)

(assert (= bs!834092 (and d!1379170 d!1379158)))

(assert (=> bs!834092 (= lambda!168239 lambda!168230)))

(declare-fun bs!834093 () Bool)

(assert (= bs!834093 (and d!1379170 d!1378652)))

(assert (=> bs!834093 (= lambda!168239 lambda!168053)))

(declare-fun bs!834094 () Bool)

(assert (= bs!834094 (and d!1379170 d!1378690)))

(assert (=> bs!834094 (= lambda!168239 lambda!168065)))

(declare-fun bs!834095 () Bool)

(assert (= bs!834095 (and d!1379170 d!1378676)))

(assert (=> bs!834095 (= lambda!168239 lambda!168054)))

(declare-fun bs!834096 () Bool)

(assert (= bs!834096 (and d!1379170 d!1378686)))

(assert (=> bs!834096 (= lambda!168239 lambda!168064)))

(declare-fun bs!834097 () Bool)

(assert (= bs!834097 (and d!1379170 d!1379062)))

(assert (=> bs!834097 (= lambda!168239 lambda!168203)))

(declare-fun bs!834098 () Bool)

(assert (= bs!834098 (and d!1379170 d!1378678)))

(assert (=> bs!834098 (= lambda!168239 lambda!168057)))

(declare-fun bs!834099 () Bool)

(assert (= bs!834099 (and d!1379170 d!1378724)))

(assert (=> bs!834099 (= lambda!168239 lambda!168071)))

(declare-fun bs!834100 () Bool)

(assert (= bs!834100 (and d!1379170 d!1378608)))

(assert (=> bs!834100 (not (= lambda!168239 lambda!168034))))

(declare-fun bs!834101 () Bool)

(assert (= bs!834101 (and d!1379170 d!1379094)))

(assert (=> bs!834101 (= lambda!168239 lambda!168219)))

(declare-fun lt!1678730 () ListMap!3509)

(assert (=> d!1379170 (invariantList!979 (toList!4248 lt!1678730))))

(declare-fun e!2800971 () ListMap!3509)

(assert (=> d!1379170 (= lt!1678730 e!2800971)))

(declare-fun c!766251 () Bool)

(assert (=> d!1379170 (= c!766251 ((_ is Cons!50529) (t!357611 (t!357611 (toList!4247 lm!1477)))))))

(assert (=> d!1379170 (forall!10161 (t!357611 (t!357611 (toList!4247 lm!1477))) lambda!168239)))

(assert (=> d!1379170 (= (extractMap!1176 (t!357611 (t!357611 (toList!4247 lm!1477)))) lt!1678730)))

(declare-fun b!4496660 () Bool)

(assert (=> b!4496660 (= e!2800971 (addToMapMapFromBucket!647 (_2!28752 (h!56344 (t!357611 (t!357611 (toList!4247 lm!1477))))) (extractMap!1176 (t!357611 (t!357611 (t!357611 (toList!4247 lm!1477)))))))))

(declare-fun b!4496661 () Bool)

(assert (=> b!4496661 (= e!2800971 (ListMap!3510 Nil!50528))))

(assert (= (and d!1379170 c!766251) b!4496660))

(assert (= (and d!1379170 (not c!766251)) b!4496661))

(declare-fun m!5224893 () Bool)

(assert (=> d!1379170 m!5224893))

(declare-fun m!5224895 () Bool)

(assert (=> d!1379170 m!5224895))

(declare-fun m!5224897 () Bool)

(assert (=> b!4496660 m!5224897))

(assert (=> b!4496660 m!5224897))

(declare-fun m!5224899 () Bool)

(assert (=> b!4496660 m!5224899))

(assert (=> b!4495766 d!1379170))

(declare-fun d!1379172 () Bool)

(declare-fun res!1869108 () Bool)

(declare-fun e!2800980 () Bool)

(assert (=> d!1379172 (=> res!1869108 e!2800980)))

(assert (=> d!1379172 (= res!1869108 (not ((_ is Cons!50528) (_2!28752 lt!1677910))))))

(assert (=> d!1379172 (= (noDuplicateKeys!1120 (_2!28752 lt!1677910)) e!2800980)))

(declare-fun b!4496674 () Bool)

(declare-fun e!2800981 () Bool)

(assert (=> b!4496674 (= e!2800980 e!2800981)))

(declare-fun res!1869109 () Bool)

(assert (=> b!4496674 (=> (not res!1869109) (not e!2800981))))

(assert (=> b!4496674 (= res!1869109 (not (containsKey!1664 (t!357610 (_2!28752 lt!1677910)) (_1!28751 (h!56343 (_2!28752 lt!1677910))))))))

(declare-fun b!4496675 () Bool)

(assert (=> b!4496675 (= e!2800981 (noDuplicateKeys!1120 (t!357610 (_2!28752 lt!1677910))))))

(assert (= (and d!1379172 (not res!1869108)) b!4496674))

(assert (= (and b!4496674 res!1869109) b!4496675))

(declare-fun m!5224901 () Bool)

(assert (=> b!4496674 m!5224901))

(declare-fun m!5224903 () Bool)

(assert (=> b!4496675 m!5224903))

(assert (=> bs!833507 d!1379172))

(declare-fun d!1379174 () Bool)

(assert (=> d!1379174 (isDefined!8323 (getValueByKey!1016 (toList!4248 lt!1677916) key!3287))))

(declare-fun lt!1678757 () Unit!91352)

(assert (=> d!1379174 (= lt!1678757 (choose!29064 (toList!4248 lt!1677916) key!3287))))

(assert (=> d!1379174 (invariantList!979 (toList!4248 lt!1677916))))

(assert (=> d!1379174 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!920 (toList!4248 lt!1677916) key!3287) lt!1678757)))

(declare-fun bs!834102 () Bool)

(assert (= bs!834102 d!1379174))

(assert (=> bs!834102 m!5222987))

(assert (=> bs!834102 m!5222987))

(assert (=> bs!834102 m!5222989))

(declare-fun m!5224905 () Bool)

(assert (=> bs!834102 m!5224905))

(assert (=> bs!834102 m!5223581))

(assert (=> b!4495566 d!1379174))

(assert (=> b!4495566 d!1378914))

(assert (=> b!4495566 d!1378916))

(declare-fun d!1379176 () Bool)

(assert (=> d!1379176 (contains!13193 (getKeysList!427 (toList!4248 lt!1677916)) key!3287)))

(declare-fun lt!1678758 () Unit!91352)

(assert (=> d!1379176 (= lt!1678758 (choose!29065 (toList!4248 lt!1677916) key!3287))))

(assert (=> d!1379176 (invariantList!979 (toList!4248 lt!1677916))))

(assert (=> d!1379176 (= (lemmaInListThenGetKeysListContains!423 (toList!4248 lt!1677916) key!3287) lt!1678758)))

(declare-fun bs!834103 () Bool)

(assert (= bs!834103 d!1379176))

(assert (=> bs!834103 m!5222997))

(assert (=> bs!834103 m!5222997))

(declare-fun m!5224907 () Bool)

(assert (=> bs!834103 m!5224907))

(declare-fun m!5224909 () Bool)

(assert (=> bs!834103 m!5224909))

(assert (=> bs!834103 m!5223581))

(assert (=> b!4495566 d!1379176))

(declare-fun b!4496676 () Bool)

(declare-fun e!2800982 () Bool)

(declare-fun tp!1337412 () Bool)

(assert (=> b!4496676 (= e!2800982 (and tp_is_empty!27757 tp_is_empty!27759 tp!1337412))))

(assert (=> b!4495839 (= tp!1337405 e!2800982)))

(assert (= (and b!4495839 ((_ is Cons!50528) (t!357610 (t!357610 newBucket!178)))) b!4496676))

(declare-fun b!4496677 () Bool)

(declare-fun tp!1337413 () Bool)

(declare-fun e!2800983 () Bool)

(assert (=> b!4496677 (= e!2800983 (and tp_is_empty!27757 tp_is_empty!27759 tp!1337413))))

(assert (=> b!4495844 (= tp!1337410 e!2800983)))

(assert (= (and b!4495844 ((_ is Cons!50528) (_2!28752 (h!56344 (toList!4247 lm!1477))))) b!4496677))

(declare-fun b!4496678 () Bool)

(declare-fun e!2800984 () Bool)

(declare-fun tp!1337414 () Bool)

(declare-fun tp!1337415 () Bool)

(assert (=> b!4496678 (= e!2800984 (and tp!1337414 tp!1337415))))

(assert (=> b!4495844 (= tp!1337411 e!2800984)))

(assert (= (and b!4495844 ((_ is Cons!50529) (t!357611 (toList!4247 lm!1477)))) b!4496678))

(declare-fun b_lambda!151987 () Bool)

(assert (= b_lambda!151953 (or d!1378608 b_lambda!151987)))

(declare-fun bs!834104 () Bool)

(declare-fun d!1379178 () Bool)

(assert (= bs!834104 (and d!1379178 d!1378608)))

(assert (=> bs!834104 (= (dynLambda!21097 lambda!168034 (h!56344 (toList!4247 lm!1477))) (allKeysSameHash!974 (_2!28752 (h!56344 (toList!4247 lm!1477))) (_1!28752 (h!56344 (toList!4247 lm!1477))) hashF!1107))))

(declare-fun m!5224911 () Bool)

(assert (=> bs!834104 m!5224911))

(assert (=> b!4496154 d!1379178))

(declare-fun b_lambda!151989 () Bool)

(assert (= b_lambda!151977 (or d!1378690 b_lambda!151989)))

(declare-fun bs!834105 () Bool)

(declare-fun d!1379180 () Bool)

(assert (= bs!834105 (and d!1379180 d!1378690)))

(assert (=> bs!834105 (= (dynLambda!21097 lambda!168065 (h!56344 (toList!4247 lt!1677907))) (noDuplicateKeys!1120 (_2!28752 (h!56344 (toList!4247 lt!1677907)))))))

(assert (=> bs!834105 m!5224411))

(assert (=> b!4496540 d!1379180))

(declare-fun b_lambda!151991 () Bool)

(assert (= b_lambda!151983 (or d!1378622 b_lambda!151991)))

(declare-fun bs!834106 () Bool)

(declare-fun d!1379182 () Bool)

(assert (= bs!834106 (and d!1379182 d!1378622)))

(assert (=> bs!834106 (= (dynLambda!21097 lambda!168049 (h!56344 (toList!4247 lt!1677907))) (noDuplicateKeys!1120 (_2!28752 (h!56344 (toList!4247 lt!1677907)))))))

(assert (=> bs!834106 m!5224411))

(assert (=> b!4496559 d!1379182))

(declare-fun b_lambda!151993 () Bool)

(assert (= b_lambda!151969 (or d!1378652 b_lambda!151993)))

(declare-fun bs!834107 () Bool)

(declare-fun d!1379184 () Bool)

(assert (= bs!834107 (and d!1379184 d!1378652)))

(assert (=> bs!834107 (= (dynLambda!21097 lambda!168053 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178))))) (noDuplicateKeys!1120 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 (tuple2!50917 hash!344 newBucket!178)))))))))

(assert (=> bs!834107 m!5224803))

(assert (=> b!4496413 d!1379184))

(declare-fun b_lambda!151995 () Bool)

(assert (= b_lambda!151955 (or d!1378576 b_lambda!151995)))

(declare-fun bs!834108 () Bool)

(declare-fun d!1379186 () Bool)

(assert (= bs!834108 (and d!1379186 d!1378576)))

(assert (=> bs!834108 (= (dynLambda!21097 lambda!168025 (h!56344 (toList!4247 lm!1477))) (noDuplicateKeys!1120 (_2!28752 (h!56344 (toList!4247 lm!1477)))))))

(assert (=> bs!834108 m!5223471))

(assert (=> b!4496178 d!1379186))

(declare-fun b_lambda!151997 () Bool)

(assert (= b_lambda!151975 (or start!443472 b_lambda!151997)))

(assert (=> d!1379064 d!1378728))

(declare-fun b_lambda!151999 () Bool)

(assert (= b_lambda!151959 (or d!1378680 b_lambda!151999)))

(declare-fun bs!834109 () Bool)

(declare-fun d!1379188 () Bool)

(assert (= bs!834109 (and d!1379188 d!1378680)))

(assert (=> bs!834109 (= (dynLambda!21099 lambda!168060 (h!56343 newBucket!178)) (= (hash!2667 hashF!1107 (_1!28751 (h!56343 newBucket!178))) hash!344))))

(declare-fun m!5224913 () Bool)

(assert (=> bs!834109 m!5224913))

(assert (=> b!4496236 d!1379188))

(declare-fun b_lambda!152001 () Bool)

(assert (= b_lambda!151951 (or d!1378692 b_lambda!152001)))

(declare-fun bs!834110 () Bool)

(declare-fun d!1379190 () Bool)

(assert (= bs!834110 (and d!1379190 d!1378692)))

(assert (=> bs!834110 (= (dynLambda!21097 lambda!168068 (h!56344 (toList!4247 lm!1477))) (noDuplicateKeys!1120 (_2!28752 (h!56344 (toList!4247 lm!1477)))))))

(assert (=> bs!834110 m!5223471))

(assert (=> b!4496132 d!1379190))

(declare-fun b_lambda!152003 () Bool)

(assert (= b_lambda!151961 (or d!1378682 b_lambda!152003)))

(declare-fun bs!834111 () Bool)

(declare-fun d!1379192 () Bool)

(assert (= bs!834111 (and d!1379192 d!1378682)))

(assert (=> bs!834111 (= (dynLambda!21097 lambda!168063 (h!56344 (toList!4247 lt!1677907))) (noDuplicateKeys!1120 (_2!28752 (h!56344 (toList!4247 lt!1677907)))))))

(assert (=> bs!834111 m!5224411))

(assert (=> b!4496287 d!1379192))

(declare-fun b_lambda!152005 () Bool)

(assert (= b_lambda!151957 (or d!1378678 b_lambda!152005)))

(declare-fun bs!834112 () Bool)

(declare-fun d!1379194 () Bool)

(assert (= bs!834112 (and d!1379194 d!1378678)))

(assert (=> bs!834112 (= (dynLambda!21097 lambda!168057 (h!56344 (toList!4247 lm!1477))) (noDuplicateKeys!1120 (_2!28752 (h!56344 (toList!4247 lm!1477)))))))

(assert (=> bs!834112 m!5223471))

(assert (=> b!4496203 d!1379194))

(declare-fun b_lambda!152007 () Bool)

(assert (= b_lambda!151985 (or d!1378676 b_lambda!152007)))

(declare-fun bs!834113 () Bool)

(declare-fun d!1379196 () Bool)

(assert (= bs!834113 (and d!1379196 d!1378676)))

(assert (=> bs!834113 (= (dynLambda!21097 lambda!168054 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922)))) (noDuplicateKeys!1120 (_2!28752 (h!56344 (toList!4247 (+!1462 lt!1677907 lt!1677922))))))))

(assert (=> bs!834113 m!5224589))

(assert (=> b!4496622 d!1379196))

(declare-fun b_lambda!152009 () Bool)

(assert (= b_lambda!151947 (or start!443472 b_lambda!152009)))

(declare-fun bs!834114 () Bool)

(declare-fun d!1379198 () Bool)

(assert (= bs!834114 (and d!1379198 start!443472)))

(assert (=> bs!834114 (= (dynLambda!21097 lambda!168015 (h!56344 (t!357611 (toList!4247 lm!1477)))) (noDuplicateKeys!1120 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477))))))))

(assert (=> bs!834114 m!5224889))

(assert (=> b!4496006 d!1379198))

(declare-fun b_lambda!152011 () Bool)

(assert (= b_lambda!151937 (or d!1378686 b_lambda!152011)))

(declare-fun bs!834115 () Bool)

(declare-fun d!1379200 () Bool)

(assert (= bs!834115 (and d!1379200 d!1378686)))

(assert (=> bs!834115 (= (dynLambda!21097 lambda!168064 (h!56344 (t!357611 (toList!4247 lm!1477)))) (noDuplicateKeys!1120 (_2!28752 (h!56344 (t!357611 (toList!4247 lm!1477))))))))

(assert (=> bs!834115 m!5224889))

(assert (=> b!4495929 d!1379200))

(declare-fun b_lambda!152013 () Bool)

(assert (= b_lambda!151981 (or d!1378724 b_lambda!152013)))

(declare-fun bs!834116 () Bool)

(declare-fun d!1379202 () Bool)

(assert (= bs!834116 (and d!1379202 d!1378724)))

(assert (=> bs!834116 (= (dynLambda!21097 lambda!168071 (h!56344 (toList!4247 lt!1677907))) (noDuplicateKeys!1120 (_2!28752 (h!56344 (toList!4247 lt!1677907)))))))

(assert (=> bs!834116 m!5224411))

(assert (=> b!4496553 d!1379202))

(check-sat (not b!4496091) (not b!4496095) (not b!4496606) (not d!1379010) (not b!4496676) (not b!4496411) (not b!4496005) (not b!4496412) (not d!1379168) (not b!4496025) (not d!1379122) (not b!4496017) (not b!4496549) (not b!4496288) (not b!4496511) (not b!4496518) (not d!1378776) (not b!4496213) (not bs!834105) (not d!1379130) (not d!1379166) (not b!4495978) (not b!4496206) (not b!4496399) (not b!4496591) (not b!4496190) (not b!4496295) (not b!4496417) (not b!4496391) (not d!1378912) (not d!1379066) (not b!4496386) (not b!4496115) (not b!4495941) (not b!4496173) (not b!4496406) (not b!4496248) (not b!4496133) (not b!4496217) (not d!1379174) (not d!1378930) (not b!4496628) (not b!4495850) (not b_lambda!151995) (not d!1378992) (not bs!834104) (not d!1378818) (not b!4496404) (not b!4496031) (not d!1378812) (not b!4496298) (not b!4496647) (not b!4496642) (not d!1378890) (not b_lambda!152009) (not bm!312916) (not b!4496625) (not b!4496148) (not bm!312921) (not d!1378790) (not bm!312873) (not b!4496560) (not d!1378802) (not b!4496607) (not bs!834107) (not b!4495938) (not b!4496297) (not b!4495981) (not b!4496408) (not d!1379094) (not d!1378996) (not b!4496546) (not b_lambda!151933) (not b!4496296) (not b!4496113) (not b!4496635) (not d!1379176) (not d!1379006) (not bm!312917) (not d!1379126) (not bm!312912) (not b!4496523) (not b!4496641) (not d!1379170) (not d!1378948) (not b!4496253) (not b!4496627) (not b!4496596) (not b!4496189) (not b!4495983) (not b!4496581) (not b!4496251) (not bm!312876) (not d!1379068) (not b!4496400) (not b!4496387) (not d!1378766) (not b!4496645) (not b!4496029) (not d!1378830) (not b!4496395) (not b!4496644) (not b!4496678) (not b!4495930) (not bm!312922) (not b!4496592) (not d!1378832) (not b!4496024) (not d!1378920) (not b!4496252) (not d!1378810) (not b!4496034) (not d!1378822) (not bs!834113) (not b!4496151) (not b!4496214) (not d!1379156) (not b!4496158) (not b_lambda!151999) (not d!1379146) (not b!4496028) (not b!4496209) (not b!4496522) (not d!1378862) (not b!4496543) (not b!4496639) (not d!1379090) (not b!4495901) (not bm!312875) tp_is_empty!27759 (not b!4496500) (not b!4496410) (not b!4496517) (not b!4496043) (not b!4496030) (not b!4496241) (not b!4496660) (not b!4496623) (not b!4496185) (not b!4496118) (not b!4496677) (not b!4495858) (not b!4496294) (not b!4496026) (not bm!312904) (not b!4496646) (not d!1379100) (not bs!834110) (not b!4496002) (not b!4496414) (not b_lambda!152007) (not d!1378904) (not bm!312918) (not d!1379062) (not d!1379086) (not b!4496617) (not b!4496612) (not b!4496152) (not d!1379008) (not b_lambda!151987) (not b!4496544) (not b!4496013) (not b!4496300) (not b!4496112) (not b!4496191) (not b!4496037) (not d!1378814) (not d!1378954) (not bm!312920) (not d!1379138) (not bm!312853) (not b!4496616) (not d!1378746) (not d!1379160) (not bm!312871) (not bs!834115) (not b!4496554) (not b!4495927) (not b!4496179) (not d!1378914) (not b!4496637) (not b!4495932) (not b!4496640) (not b_lambda!151935) (not b!4496630) (not b!4495982) (not bm!312914) (not b!4496290) (not bm!312897) (not b!4496239) (not bm!312872) (not b!4496394) (not d!1378854) (not b_lambda!152001) (not bm!312874) (not b!4496599) (not d!1378878) (not b!4496187) (not d!1379148) (not b!4496247) (not bm!312906) (not b_lambda!152013) (not b!4496594) (not b!4496604) (not b!4496393) (not bm!312895) (not b!4496023) (not b!4496155) (not b!4495872) (not bs!834116) (not b!4496153) (not bs!834114) (not d!1378944) (not d!1379016) (not b!4496007) (not b_lambda!151997) (not d!1379158) (not d!1378750) (not b!4496204) (not b_lambda!152005) (not b_lambda!152003) (not b!4496514) (not d!1378906) (not d!1378926) (not b!4496110) (not d!1378806) (not b!4496016) (not b!4496541) (not d!1378772) (not b!4496032) (not bm!312857) (not b!4496389) (not b!4496249) (not b!4496299) (not b_lambda!151991) (not bs!834111) (not b!4495860) (not b!4496044) (not d!1378896) (not b!4496096) (not b!4496116) (not b!4496501) (not b!4496620) (not b!4496629) (not bs!834108) (not b!4495977) (not d!1378900) (not bm!312905) (not b!4496631) (not b!4496186) tp_is_empty!27757 (not bm!312896) (not b!4496010) (not b!4496521) (not bs!834106) (not b!4495899) (not b!4496537) (not d!1379142) (not d!1379108) (not b!4496598) (not bm!312915) (not b!4496139) (not d!1378856) (not b!4496539) (not d!1378892) (not b!4496545) (not bs!834109) (not b_lambda!152011) (not d!1379144) (not bm!312841) (not bm!312849) (not d!1378932) (not d!1378826) (not b!4496601) (not b!4496498) (not bs!834112) (not b_lambda!151993) (not b!4496218) (not b!4496674) (not bm!312919) (not b!4496633) (not b!4496675) (not b!4496401) (not b!4496237) (not b!4496114) (not b!4495900) (not b!4496188) (not b_lambda!151989) (not d!1378858) (not d!1378768) (not b!4496250) (not d!1378760) (not b!4496219) (not b!4496499))
(check-sat)
