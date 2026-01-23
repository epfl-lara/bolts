; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!439252 () Bool)

(assert start!439252)

(declare-fun b!4469900 () Bool)

(declare-fun tp_is_empty!27391 () Bool)

(declare-fun tp!1336293 () Bool)

(declare-fun tp_is_empty!27389 () Bool)

(declare-fun e!2783466 () Bool)

(assert (=> b!4469900 (= e!2783466 (and tp_is_empty!27389 tp_is_empty!27391 tp!1336293))))

(declare-fun b!4469901 () Bool)

(declare-fun e!2783464 () Bool)

(declare-fun e!2783473 () Bool)

(assert (=> b!4469901 (= e!2783464 e!2783473)))

(declare-fun res!1854519 () Bool)

(assert (=> b!4469901 (=> res!1854519 e!2783473)))

(declare-datatypes ((K!11710 0))(
  ( (K!11711 (val!17639 Int)) )
))
(declare-datatypes ((V!11956 0))(
  ( (V!11957 (val!17640 Int)) )
))
(declare-datatypes ((tuple2!50546 0))(
  ( (tuple2!50547 (_1!28567 K!11710) (_2!28567 V!11956)) )
))
(declare-datatypes ((List!50420 0))(
  ( (Nil!50296) (Cons!50296 (h!56063 tuple2!50546) (t!357370 List!50420)) )
))
(declare-datatypes ((ListMap!3325 0))(
  ( (ListMap!3326 (toList!4063 List!50420)) )
))
(declare-fun lt!1658626 () ListMap!3325)

(declare-datatypes ((tuple2!50548 0))(
  ( (tuple2!50549 (_1!28568 (_ BitVec 64)) (_2!28568 List!50420)) )
))
(declare-datatypes ((List!50421 0))(
  ( (Nil!50297) (Cons!50297 (h!56064 tuple2!50548) (t!357371 List!50421)) )
))
(declare-datatypes ((ListLongMap!2695 0))(
  ( (ListLongMap!2696 (toList!4064 List!50421)) )
))
(declare-fun lm!1477 () ListLongMap!2695)

(declare-fun extractMap!1084 (List!50421) ListMap!3325)

(assert (=> b!4469901 (= res!1854519 (not (= lt!1658626 (extractMap!1084 (t!357371 (toList!4064 lm!1477))))))))

(declare-fun lt!1658620 () ListLongMap!2695)

(assert (=> b!4469901 (= lt!1658626 (extractMap!1084 (toList!4064 lt!1658620)))))

(declare-fun b!4469902 () Bool)

(declare-fun e!2783465 () Bool)

(declare-fun e!2783467 () Bool)

(assert (=> b!4469902 (= e!2783465 (not e!2783467))))

(declare-fun res!1854518 () Bool)

(assert (=> b!4469902 (=> res!1854518 e!2783467)))

(declare-fun key!3287 () K!11710)

(declare-fun lt!1658619 () List!50420)

(declare-fun newBucket!178 () List!50420)

(declare-fun removePairForKey!655 (List!50420 K!11710) List!50420)

(assert (=> b!4469902 (= res!1854518 (not (= newBucket!178 (removePairForKey!655 lt!1658619 key!3287))))))

(declare-datatypes ((Unit!87799 0))(
  ( (Unit!87800) )
))
(declare-fun lt!1658629 () Unit!87799)

(declare-fun lt!1658630 () tuple2!50548)

(declare-fun lambda!163367 () Int)

(declare-fun forallContained!2265 (List!50421 Int tuple2!50548) Unit!87799)

(assert (=> b!4469902 (= lt!1658629 (forallContained!2265 (toList!4064 lm!1477) lambda!163367 lt!1658630))))

(declare-fun contains!12851 (List!50421 tuple2!50548) Bool)

(assert (=> b!4469902 (contains!12851 (toList!4064 lm!1477) lt!1658630)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4469902 (= lt!1658630 (tuple2!50549 hash!344 lt!1658619))))

(declare-fun lt!1658633 () Unit!87799)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!540 (List!50421 (_ BitVec 64) List!50420) Unit!87799)

(assert (=> b!4469902 (= lt!1658633 (lemmaGetValueByKeyImpliesContainsTuple!540 (toList!4064 lm!1477) hash!344 lt!1658619))))

(declare-fun apply!11765 (ListLongMap!2695 (_ BitVec 64)) List!50420)

(assert (=> b!4469902 (= lt!1658619 (apply!11765 lm!1477 hash!344))))

(declare-fun lt!1658632 () (_ BitVec 64))

(declare-fun contains!12852 (ListLongMap!2695 (_ BitVec 64)) Bool)

(assert (=> b!4469902 (contains!12852 lm!1477 lt!1658632)))

(declare-datatypes ((Hashable!5423 0))(
  ( (HashableExt!5422 (__x!31126 Int)) )
))
(declare-fun hashF!1107 () Hashable!5423)

(declare-fun lt!1658623 () Unit!87799)

(declare-fun lemmaInGenMapThenLongMapContainsHash!102 (ListLongMap!2695 K!11710 Hashable!5423) Unit!87799)

(assert (=> b!4469902 (= lt!1658623 (lemmaInGenMapThenLongMapContainsHash!102 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4469903 () Bool)

(declare-fun e!2783469 () Bool)

(declare-fun tp!1336292 () Bool)

(assert (=> b!4469903 (= e!2783469 tp!1336292)))

(declare-fun b!4469904 () Bool)

(declare-fun res!1854523 () Bool)

(assert (=> b!4469904 (=> res!1854523 e!2783467)))

(declare-fun noDuplicateKeys!1028 (List!50420) Bool)

(assert (=> b!4469904 (= res!1854523 (not (noDuplicateKeys!1028 newBucket!178)))))

(declare-fun b!4469905 () Bool)

(declare-fun e!2783471 () Bool)

(assert (=> b!4469905 (= e!2783471 e!2783465)))

(declare-fun res!1854517 () Bool)

(assert (=> b!4469905 (=> (not res!1854517) (not e!2783465))))

(assert (=> b!4469905 (= res!1854517 (= lt!1658632 hash!344))))

(declare-fun hash!2459 (Hashable!5423 K!11710) (_ BitVec 64))

(assert (=> b!4469905 (= lt!1658632 (hash!2459 hashF!1107 key!3287))))

(declare-fun b!4469906 () Bool)

(declare-fun res!1854516 () Bool)

(assert (=> b!4469906 (=> (not res!1854516) (not e!2783471))))

(declare-fun contains!12853 (ListMap!3325 K!11710) Bool)

(assert (=> b!4469906 (= res!1854516 (contains!12853 (extractMap!1084 (toList!4064 lm!1477)) key!3287))))

(declare-fun b!4469907 () Bool)

(declare-fun e!2783470 () Bool)

(declare-fun e!2783468 () Bool)

(assert (=> b!4469907 (= e!2783470 e!2783468)))

(declare-fun res!1854524 () Bool)

(assert (=> b!4469907 (=> res!1854524 e!2783468)))

(declare-fun lt!1658621 () List!50421)

(declare-fun containsKeyBiggerList!28 (List!50421 K!11710) Bool)

(assert (=> b!4469907 (= res!1854524 (not (containsKeyBiggerList!28 lt!1658621 key!3287)))))

(assert (=> b!4469907 (= lt!1658621 (Cons!50297 (h!56064 (toList!4064 lm!1477)) Nil!50297))))

(declare-fun b!4469908 () Bool)

(declare-fun res!1854525 () Bool)

(assert (=> b!4469908 (=> res!1854525 e!2783467)))

(get-info :version)

(assert (=> b!4469908 (= res!1854525 (or ((_ is Nil!50297) (toList!4064 lm!1477)) (not (= (_1!28568 (h!56064 (toList!4064 lm!1477))) hash!344))))))

(declare-fun b!4469909 () Bool)

(declare-fun e!2783472 () Unit!87799)

(declare-fun Unit!87801 () Unit!87799)

(assert (=> b!4469909 (= e!2783472 Unit!87801)))

(declare-fun b!4469910 () Bool)

(declare-fun res!1854522 () Bool)

(assert (=> b!4469910 (=> (not res!1854522) (not e!2783471))))

(declare-fun allKeysSameHashInMap!1135 (ListLongMap!2695 Hashable!5423) Bool)

(assert (=> b!4469910 (= res!1854522 (allKeysSameHashInMap!1135 lm!1477 hashF!1107))))

(declare-fun b!4469911 () Bool)

(declare-fun isEmpty!28491 (ListLongMap!2695) Bool)

(assert (=> b!4469911 (= e!2783473 (not (isEmpty!28491 lm!1477)))))

(declare-fun b!4469912 () Bool)

(declare-fun e!2783463 () Bool)

(assert (=> b!4469912 (= e!2783463 e!2783464)))

(declare-fun res!1854526 () Bool)

(assert (=> b!4469912 (=> res!1854526 e!2783464)))

(declare-fun lt!1658625 () ListLongMap!2695)

(declare-fun lt!1658627 () tuple2!50548)

(declare-fun +!1372 (ListLongMap!2695 tuple2!50548) ListLongMap!2695)

(assert (=> b!4469912 (= res!1854526 (not (= lt!1658625 (+!1372 lt!1658620 lt!1658627))))))

(declare-fun tail!7508 (ListLongMap!2695) ListLongMap!2695)

(assert (=> b!4469912 (= lt!1658620 (tail!7508 lm!1477))))

(declare-fun b!4469913 () Bool)

(assert (=> b!4469913 (= e!2783467 e!2783470)))

(declare-fun res!1854521 () Bool)

(assert (=> b!4469913 (=> res!1854521 e!2783470)))

(declare-fun lt!1658622 () Bool)

(assert (=> b!4469913 (= res!1854521 lt!1658622)))

(declare-fun lt!1658634 () Unit!87799)

(assert (=> b!4469913 (= lt!1658634 e!2783472)))

(declare-fun c!760978 () Bool)

(assert (=> b!4469913 (= c!760978 lt!1658622)))

(declare-fun containsKey!1480 (List!50420 K!11710) Bool)

(assert (=> b!4469913 (= lt!1658622 (not (containsKey!1480 (_2!28568 (h!56064 (toList!4064 lm!1477))) key!3287)))))

(declare-fun res!1854520 () Bool)

(assert (=> start!439252 (=> (not res!1854520) (not e!2783471))))

(declare-fun forall!9998 (List!50421 Int) Bool)

(assert (=> start!439252 (= res!1854520 (forall!9998 (toList!4064 lm!1477) lambda!163367))))

(assert (=> start!439252 e!2783471))

(assert (=> start!439252 true))

(declare-fun inv!65894 (ListLongMap!2695) Bool)

(assert (=> start!439252 (and (inv!65894 lm!1477) e!2783469)))

(assert (=> start!439252 tp_is_empty!27389))

(assert (=> start!439252 e!2783466))

(declare-fun b!4469914 () Bool)

(declare-fun res!1854527 () Bool)

(assert (=> b!4469914 (=> res!1854527 e!2783473)))

(assert (=> b!4469914 (= res!1854527 (not (contains!12853 lt!1658626 key!3287)))))

(declare-fun b!4469915 () Bool)

(declare-fun res!1854529 () Bool)

(assert (=> b!4469915 (=> (not res!1854529) (not e!2783465))))

(declare-fun allKeysSameHash!882 (List!50420 (_ BitVec 64) Hashable!5423) Bool)

(assert (=> b!4469915 (= res!1854529 (allKeysSameHash!882 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4469916 () Bool)

(declare-fun Unit!87802 () Unit!87799)

(assert (=> b!4469916 (= e!2783472 Unit!87802)))

(declare-fun lt!1658631 () Unit!87799)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!28 (ListLongMap!2695 K!11710 Hashable!5423) Unit!87799)

(assert (=> b!4469916 (= lt!1658631 (lemmaNotInItsHashBucketThenNotInMap!28 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4469916 false))

(declare-fun b!4469917 () Bool)

(assert (=> b!4469917 (= e!2783468 e!2783463)))

(declare-fun res!1854528 () Bool)

(assert (=> b!4469917 (=> res!1854528 e!2783463)))

(declare-fun tail!7509 (List!50421) List!50421)

(assert (=> b!4469917 (= res!1854528 (not (= (t!357371 (toList!4064 lm!1477)) (tail!7509 (toList!4064 lt!1658625)))))))

(assert (=> b!4469917 (= lt!1658625 (+!1372 lm!1477 lt!1658627))))

(declare-fun eq!521 (ListMap!3325 ListMap!3325) Bool)

(declare-fun -!290 (ListMap!3325 K!11710) ListMap!3325)

(assert (=> b!4469917 (eq!521 (extractMap!1084 (Cons!50297 lt!1658627 Nil!50297)) (-!290 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)) key!3287))))

(assert (=> b!4469917 (= lt!1658627 (tuple2!50549 hash!344 newBucket!178))))

(declare-fun lt!1658624 () Unit!87799)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!20 ((_ BitVec 64) List!50420 List!50420 K!11710 Hashable!5423) Unit!87799)

(assert (=> b!4469917 (= lt!1658624 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!20 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4469917 (contains!12853 (extractMap!1084 lt!1658621) key!3287)))

(declare-fun lt!1658628 () Unit!87799)

(declare-fun lemmaListContainsThenExtractedMapContains!24 (ListLongMap!2695 K!11710 Hashable!5423) Unit!87799)

(assert (=> b!4469917 (= lt!1658628 (lemmaListContainsThenExtractedMapContains!24 (ListLongMap!2696 lt!1658621) key!3287 hashF!1107))))

(assert (= (and start!439252 res!1854520) b!4469910))

(assert (= (and b!4469910 res!1854522) b!4469906))

(assert (= (and b!4469906 res!1854516) b!4469905))

(assert (= (and b!4469905 res!1854517) b!4469915))

(assert (= (and b!4469915 res!1854529) b!4469902))

(assert (= (and b!4469902 (not res!1854518)) b!4469904))

(assert (= (and b!4469904 (not res!1854523)) b!4469908))

(assert (= (and b!4469908 (not res!1854525)) b!4469913))

(assert (= (and b!4469913 c!760978) b!4469916))

(assert (= (and b!4469913 (not c!760978)) b!4469909))

(assert (= (and b!4469913 (not res!1854521)) b!4469907))

(assert (= (and b!4469907 (not res!1854524)) b!4469917))

(assert (= (and b!4469917 (not res!1854528)) b!4469912))

(assert (= (and b!4469912 (not res!1854526)) b!4469901))

(assert (= (and b!4469901 (not res!1854519)) b!4469914))

(assert (= (and b!4469914 (not res!1854527)) b!4469911))

(assert (= start!439252 b!4469903))

(assert (= (and start!439252 ((_ is Cons!50296) newBucket!178)) b!4469900))

(declare-fun m!5176915 () Bool)

(assert (=> b!4469914 m!5176915))

(declare-fun m!5176917 () Bool)

(assert (=> b!4469902 m!5176917))

(declare-fun m!5176919 () Bool)

(assert (=> b!4469902 m!5176919))

(declare-fun m!5176921 () Bool)

(assert (=> b!4469902 m!5176921))

(declare-fun m!5176923 () Bool)

(assert (=> b!4469902 m!5176923))

(declare-fun m!5176925 () Bool)

(assert (=> b!4469902 m!5176925))

(declare-fun m!5176927 () Bool)

(assert (=> b!4469902 m!5176927))

(declare-fun m!5176929 () Bool)

(assert (=> b!4469902 m!5176929))

(declare-fun m!5176931 () Bool)

(assert (=> b!4469905 m!5176931))

(declare-fun m!5176933 () Bool)

(assert (=> b!4469915 m!5176933))

(declare-fun m!5176935 () Bool)

(assert (=> b!4469912 m!5176935))

(declare-fun m!5176937 () Bool)

(assert (=> b!4469912 m!5176937))

(declare-fun m!5176939 () Bool)

(assert (=> b!4469904 m!5176939))

(declare-fun m!5176941 () Bool)

(assert (=> b!4469911 m!5176941))

(declare-fun m!5176943 () Bool)

(assert (=> b!4469901 m!5176943))

(declare-fun m!5176945 () Bool)

(assert (=> b!4469901 m!5176945))

(declare-fun m!5176947 () Bool)

(assert (=> b!4469910 m!5176947))

(declare-fun m!5176949 () Bool)

(assert (=> b!4469906 m!5176949))

(assert (=> b!4469906 m!5176949))

(declare-fun m!5176951 () Bool)

(assert (=> b!4469906 m!5176951))

(declare-fun m!5176953 () Bool)

(assert (=> b!4469913 m!5176953))

(declare-fun m!5176955 () Bool)

(assert (=> b!4469917 m!5176955))

(declare-fun m!5176957 () Bool)

(assert (=> b!4469917 m!5176957))

(declare-fun m!5176959 () Bool)

(assert (=> b!4469917 m!5176959))

(declare-fun m!5176961 () Bool)

(assert (=> b!4469917 m!5176961))

(declare-fun m!5176963 () Bool)

(assert (=> b!4469917 m!5176963))

(assert (=> b!4469917 m!5176957))

(declare-fun m!5176965 () Bool)

(assert (=> b!4469917 m!5176965))

(declare-fun m!5176967 () Bool)

(assert (=> b!4469917 m!5176967))

(declare-fun m!5176969 () Bool)

(assert (=> b!4469917 m!5176969))

(assert (=> b!4469917 m!5176963))

(assert (=> b!4469917 m!5176955))

(declare-fun m!5176971 () Bool)

(assert (=> b!4469917 m!5176971))

(assert (=> b!4469917 m!5176959))

(declare-fun m!5176973 () Bool)

(assert (=> b!4469917 m!5176973))

(declare-fun m!5176975 () Bool)

(assert (=> start!439252 m!5176975))

(declare-fun m!5176977 () Bool)

(assert (=> start!439252 m!5176977))

(declare-fun m!5176979 () Bool)

(assert (=> b!4469916 m!5176979))

(declare-fun m!5176981 () Bool)

(assert (=> b!4469907 m!5176981))

(check-sat (not b!4469906) (not b!4469902) (not b!4469905) (not b!4469903) tp_is_empty!27391 (not b!4469915) (not b!4469917) (not b!4469912) (not b!4469910) (not b!4469914) tp_is_empty!27389 (not b!4469913) (not b!4469900) (not b!4469916) (not b!4469907) (not b!4469901) (not b!4469911) (not start!439252) (not b!4469904))
(check-sat)
(get-model)

(declare-fun d!1363740 () Bool)

(declare-fun e!2783482 () Bool)

(assert (=> d!1363740 e!2783482))

(declare-fun res!1854540 () Bool)

(assert (=> d!1363740 (=> (not res!1854540) (not e!2783482))))

(declare-fun lt!1658646 () ListLongMap!2695)

(assert (=> d!1363740 (= res!1854540 (contains!12852 lt!1658646 (_1!28568 lt!1658627)))))

(declare-fun lt!1658645 () List!50421)

(assert (=> d!1363740 (= lt!1658646 (ListLongMap!2696 lt!1658645))))

(declare-fun lt!1658644 () Unit!87799)

(declare-fun lt!1658643 () Unit!87799)

(assert (=> d!1363740 (= lt!1658644 lt!1658643)))

(declare-datatypes ((Option!10934 0))(
  ( (None!10933) (Some!10933 (v!44259 List!50420)) )
))
(declare-fun getValueByKey!920 (List!50421 (_ BitVec 64)) Option!10934)

(assert (=> d!1363740 (= (getValueByKey!920 lt!1658645 (_1!28568 lt!1658627)) (Some!10933 (_2!28568 lt!1658627)))))

(declare-fun lemmaContainsTupThenGetReturnValue!588 (List!50421 (_ BitVec 64) List!50420) Unit!87799)

(assert (=> d!1363740 (= lt!1658643 (lemmaContainsTupThenGetReturnValue!588 lt!1658645 (_1!28568 lt!1658627) (_2!28568 lt!1658627)))))

(declare-fun insertStrictlySorted!334 (List!50421 (_ BitVec 64) List!50420) List!50421)

(assert (=> d!1363740 (= lt!1658645 (insertStrictlySorted!334 (toList!4064 lt!1658620) (_1!28568 lt!1658627) (_2!28568 lt!1658627)))))

(assert (=> d!1363740 (= (+!1372 lt!1658620 lt!1658627) lt!1658646)))

(declare-fun b!4469928 () Bool)

(declare-fun res!1854541 () Bool)

(assert (=> b!4469928 (=> (not res!1854541) (not e!2783482))))

(assert (=> b!4469928 (= res!1854541 (= (getValueByKey!920 (toList!4064 lt!1658646) (_1!28568 lt!1658627)) (Some!10933 (_2!28568 lt!1658627))))))

(declare-fun b!4469929 () Bool)

(assert (=> b!4469929 (= e!2783482 (contains!12851 (toList!4064 lt!1658646) lt!1658627))))

(assert (= (and d!1363740 res!1854540) b!4469928))

(assert (= (and b!4469928 res!1854541) b!4469929))

(declare-fun m!5176989 () Bool)

(assert (=> d!1363740 m!5176989))

(declare-fun m!5176991 () Bool)

(assert (=> d!1363740 m!5176991))

(declare-fun m!5176993 () Bool)

(assert (=> d!1363740 m!5176993))

(declare-fun m!5176995 () Bool)

(assert (=> d!1363740 m!5176995))

(declare-fun m!5176997 () Bool)

(assert (=> b!4469928 m!5176997))

(declare-fun m!5176999 () Bool)

(assert (=> b!4469929 m!5176999))

(assert (=> b!4469912 d!1363740))

(declare-fun d!1363750 () Bool)

(assert (=> d!1363750 (= (tail!7508 lm!1477) (ListLongMap!2696 (tail!7509 (toList!4064 lm!1477))))))

(declare-fun bs!795245 () Bool)

(assert (= bs!795245 d!1363750))

(declare-fun m!5177001 () Bool)

(assert (=> bs!795245 m!5177001))

(assert (=> b!4469912 d!1363750))

(declare-fun d!1363752 () Bool)

(declare-fun lt!1658652 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8114 (List!50421) (InoxSet tuple2!50548))

(assert (=> d!1363752 (= lt!1658652 (select (content!8114 (toList!4064 lm!1477)) lt!1658630))))

(declare-fun e!2783490 () Bool)

(assert (=> d!1363752 (= lt!1658652 e!2783490)))

(declare-fun res!1854546 () Bool)

(assert (=> d!1363752 (=> (not res!1854546) (not e!2783490))))

(assert (=> d!1363752 (= res!1854546 ((_ is Cons!50297) (toList!4064 lm!1477)))))

(assert (=> d!1363752 (= (contains!12851 (toList!4064 lm!1477) lt!1658630) lt!1658652)))

(declare-fun b!4469940 () Bool)

(declare-fun e!2783491 () Bool)

(assert (=> b!4469940 (= e!2783490 e!2783491)))

(declare-fun res!1854547 () Bool)

(assert (=> b!4469940 (=> res!1854547 e!2783491)))

(assert (=> b!4469940 (= res!1854547 (= (h!56064 (toList!4064 lm!1477)) lt!1658630))))

(declare-fun b!4469941 () Bool)

(assert (=> b!4469941 (= e!2783491 (contains!12851 (t!357371 (toList!4064 lm!1477)) lt!1658630))))

(assert (= (and d!1363752 res!1854546) b!4469940))

(assert (= (and b!4469940 (not res!1854547)) b!4469941))

(declare-fun m!5177011 () Bool)

(assert (=> d!1363752 m!5177011))

(declare-fun m!5177013 () Bool)

(assert (=> d!1363752 m!5177013))

(declare-fun m!5177015 () Bool)

(assert (=> b!4469941 m!5177015))

(assert (=> b!4469902 d!1363752))

(declare-fun bs!795247 () Bool)

(declare-fun d!1363756 () Bool)

(assert (= bs!795247 (and d!1363756 start!439252)))

(declare-fun lambda!163373 () Int)

(assert (=> bs!795247 (= lambda!163373 lambda!163367)))

(assert (=> d!1363756 (contains!12852 lm!1477 (hash!2459 hashF!1107 key!3287))))

(declare-fun lt!1658658 () Unit!87799)

(declare-fun choose!28598 (ListLongMap!2695 K!11710 Hashable!5423) Unit!87799)

(assert (=> d!1363756 (= lt!1658658 (choose!28598 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1363756 (forall!9998 (toList!4064 lm!1477) lambda!163373)))

(assert (=> d!1363756 (= (lemmaInGenMapThenLongMapContainsHash!102 lm!1477 key!3287 hashF!1107) lt!1658658)))

(declare-fun bs!795248 () Bool)

(assert (= bs!795248 d!1363756))

(assert (=> bs!795248 m!5176931))

(assert (=> bs!795248 m!5176931))

(declare-fun m!5177031 () Bool)

(assert (=> bs!795248 m!5177031))

(declare-fun m!5177033 () Bool)

(assert (=> bs!795248 m!5177033))

(declare-fun m!5177035 () Bool)

(assert (=> bs!795248 m!5177035))

(assert (=> b!4469902 d!1363756))

(declare-fun d!1363760 () Bool)

(declare-fun dynLambda!21018 (Int tuple2!50548) Bool)

(assert (=> d!1363760 (dynLambda!21018 lambda!163367 lt!1658630)))

(declare-fun lt!1658674 () Unit!87799)

(declare-fun choose!28599 (List!50421 Int tuple2!50548) Unit!87799)

(assert (=> d!1363760 (= lt!1658674 (choose!28599 (toList!4064 lm!1477) lambda!163367 lt!1658630))))

(declare-fun e!2783501 () Bool)

(assert (=> d!1363760 e!2783501))

(declare-fun res!1854559 () Bool)

(assert (=> d!1363760 (=> (not res!1854559) (not e!2783501))))

(assert (=> d!1363760 (= res!1854559 (forall!9998 (toList!4064 lm!1477) lambda!163367))))

(assert (=> d!1363760 (= (forallContained!2265 (toList!4064 lm!1477) lambda!163367 lt!1658630) lt!1658674)))

(declare-fun b!4469955 () Bool)

(assert (=> b!4469955 (= e!2783501 (contains!12851 (toList!4064 lm!1477) lt!1658630))))

(assert (= (and d!1363760 res!1854559) b!4469955))

(declare-fun b_lambda!148447 () Bool)

(assert (=> (not b_lambda!148447) (not d!1363760)))

(declare-fun m!5177057 () Bool)

(assert (=> d!1363760 m!5177057))

(declare-fun m!5177059 () Bool)

(assert (=> d!1363760 m!5177059))

(assert (=> d!1363760 m!5176975))

(assert (=> b!4469955 m!5176919))

(assert (=> b!4469902 d!1363760))

(declare-fun d!1363766 () Bool)

(assert (=> d!1363766 (contains!12851 (toList!4064 lm!1477) (tuple2!50549 hash!344 lt!1658619))))

(declare-fun lt!1658680 () Unit!87799)

(declare-fun choose!28600 (List!50421 (_ BitVec 64) List!50420) Unit!87799)

(assert (=> d!1363766 (= lt!1658680 (choose!28600 (toList!4064 lm!1477) hash!344 lt!1658619))))

(declare-fun e!2783504 () Bool)

(assert (=> d!1363766 e!2783504))

(declare-fun res!1854562 () Bool)

(assert (=> d!1363766 (=> (not res!1854562) (not e!2783504))))

(declare-fun isStrictlySorted!345 (List!50421) Bool)

(assert (=> d!1363766 (= res!1854562 (isStrictlySorted!345 (toList!4064 lm!1477)))))

(assert (=> d!1363766 (= (lemmaGetValueByKeyImpliesContainsTuple!540 (toList!4064 lm!1477) hash!344 lt!1658619) lt!1658680)))

(declare-fun b!4469958 () Bool)

(assert (=> b!4469958 (= e!2783504 (= (getValueByKey!920 (toList!4064 lm!1477) hash!344) (Some!10933 lt!1658619)))))

(assert (= (and d!1363766 res!1854562) b!4469958))

(declare-fun m!5177069 () Bool)

(assert (=> d!1363766 m!5177069))

(declare-fun m!5177071 () Bool)

(assert (=> d!1363766 m!5177071))

(declare-fun m!5177073 () Bool)

(assert (=> d!1363766 m!5177073))

(declare-fun m!5177075 () Bool)

(assert (=> b!4469958 m!5177075))

(assert (=> b!4469902 d!1363766))

(declare-fun b!4469968 () Bool)

(declare-fun e!2783510 () List!50420)

(declare-fun e!2783509 () List!50420)

(assert (=> b!4469968 (= e!2783510 e!2783509)))

(declare-fun c!760988 () Bool)

(assert (=> b!4469968 (= c!760988 ((_ is Cons!50296) lt!1658619))))

(declare-fun b!4469967 () Bool)

(assert (=> b!4469967 (= e!2783510 (t!357370 lt!1658619))))

(declare-fun b!4469969 () Bool)

(assert (=> b!4469969 (= e!2783509 (Cons!50296 (h!56063 lt!1658619) (removePairForKey!655 (t!357370 lt!1658619) key!3287)))))

(declare-fun d!1363770 () Bool)

(declare-fun lt!1658685 () List!50420)

(assert (=> d!1363770 (not (containsKey!1480 lt!1658685 key!3287))))

(assert (=> d!1363770 (= lt!1658685 e!2783510)))

(declare-fun c!760987 () Bool)

(assert (=> d!1363770 (= c!760987 (and ((_ is Cons!50296) lt!1658619) (= (_1!28567 (h!56063 lt!1658619)) key!3287)))))

(assert (=> d!1363770 (noDuplicateKeys!1028 lt!1658619)))

(assert (=> d!1363770 (= (removePairForKey!655 lt!1658619 key!3287) lt!1658685)))

(declare-fun b!4469970 () Bool)

(assert (=> b!4469970 (= e!2783509 Nil!50296)))

(assert (= (and d!1363770 c!760987) b!4469967))

(assert (= (and d!1363770 (not c!760987)) b!4469968))

(assert (= (and b!4469968 c!760988) b!4469969))

(assert (= (and b!4469968 (not c!760988)) b!4469970))

(declare-fun m!5177077 () Bool)

(assert (=> b!4469969 m!5177077))

(declare-fun m!5177083 () Bool)

(assert (=> d!1363770 m!5177083))

(declare-fun m!5177087 () Bool)

(assert (=> d!1363770 m!5177087))

(assert (=> b!4469902 d!1363770))

(declare-fun d!1363772 () Bool)

(declare-fun get!16399 (Option!10934) List!50420)

(assert (=> d!1363772 (= (apply!11765 lm!1477 hash!344) (get!16399 (getValueByKey!920 (toList!4064 lm!1477) hash!344)))))

(declare-fun bs!795257 () Bool)

(assert (= bs!795257 d!1363772))

(assert (=> bs!795257 m!5177075))

(assert (=> bs!795257 m!5177075))

(declare-fun m!5177095 () Bool)

(assert (=> bs!795257 m!5177095))

(assert (=> b!4469902 d!1363772))

(declare-fun d!1363778 () Bool)

(declare-fun e!2783527 () Bool)

(assert (=> d!1363778 e!2783527))

(declare-fun res!1854571 () Bool)

(assert (=> d!1363778 (=> res!1854571 e!2783527)))

(declare-fun lt!1658712 () Bool)

(assert (=> d!1363778 (= res!1854571 (not lt!1658712))))

(declare-fun lt!1658711 () Bool)

(assert (=> d!1363778 (= lt!1658712 lt!1658711)))

(declare-fun lt!1658713 () Unit!87799)

(declare-fun e!2783528 () Unit!87799)

(assert (=> d!1363778 (= lt!1658713 e!2783528)))

(declare-fun c!760997 () Bool)

(assert (=> d!1363778 (= c!760997 lt!1658711)))

(declare-fun containsKey!1483 (List!50421 (_ BitVec 64)) Bool)

(assert (=> d!1363778 (= lt!1658711 (containsKey!1483 (toList!4064 lm!1477) lt!1658632))))

(assert (=> d!1363778 (= (contains!12852 lm!1477 lt!1658632) lt!1658712)))

(declare-fun b!4469995 () Bool)

(declare-fun lt!1658714 () Unit!87799)

(assert (=> b!4469995 (= e!2783528 lt!1658714)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!824 (List!50421 (_ BitVec 64)) Unit!87799)

(assert (=> b!4469995 (= lt!1658714 (lemmaContainsKeyImpliesGetValueByKeyDefined!824 (toList!4064 lm!1477) lt!1658632))))

(declare-fun isDefined!8221 (Option!10934) Bool)

(assert (=> b!4469995 (isDefined!8221 (getValueByKey!920 (toList!4064 lm!1477) lt!1658632))))

(declare-fun b!4469996 () Bool)

(declare-fun Unit!87808 () Unit!87799)

(assert (=> b!4469996 (= e!2783528 Unit!87808)))

(declare-fun b!4469997 () Bool)

(assert (=> b!4469997 (= e!2783527 (isDefined!8221 (getValueByKey!920 (toList!4064 lm!1477) lt!1658632)))))

(assert (= (and d!1363778 c!760997) b!4469995))

(assert (= (and d!1363778 (not c!760997)) b!4469996))

(assert (= (and d!1363778 (not res!1854571)) b!4469997))

(declare-fun m!5177097 () Bool)

(assert (=> d!1363778 m!5177097))

(declare-fun m!5177099 () Bool)

(assert (=> b!4469995 m!5177099))

(declare-fun m!5177101 () Bool)

(assert (=> b!4469995 m!5177101))

(assert (=> b!4469995 m!5177101))

(declare-fun m!5177103 () Bool)

(assert (=> b!4469995 m!5177103))

(assert (=> b!4469997 m!5177101))

(assert (=> b!4469997 m!5177101))

(assert (=> b!4469997 m!5177103))

(assert (=> b!4469902 d!1363778))

(declare-fun d!1363780 () Bool)

(declare-fun res!1854579 () Bool)

(declare-fun e!2783540 () Bool)

(assert (=> d!1363780 (=> res!1854579 e!2783540)))

(assert (=> d!1363780 (= res!1854579 (and ((_ is Cons!50296) (_2!28568 (h!56064 (toList!4064 lm!1477)))) (= (_1!28567 (h!56063 (_2!28568 (h!56064 (toList!4064 lm!1477))))) key!3287)))))

(assert (=> d!1363780 (= (containsKey!1480 (_2!28568 (h!56064 (toList!4064 lm!1477))) key!3287) e!2783540)))

(declare-fun b!4470013 () Bool)

(declare-fun e!2783541 () Bool)

(assert (=> b!4470013 (= e!2783540 e!2783541)))

(declare-fun res!1854580 () Bool)

(assert (=> b!4470013 (=> (not res!1854580) (not e!2783541))))

(assert (=> b!4470013 (= res!1854580 ((_ is Cons!50296) (_2!28568 (h!56064 (toList!4064 lm!1477)))))))

(declare-fun b!4470014 () Bool)

(assert (=> b!4470014 (= e!2783541 (containsKey!1480 (t!357370 (_2!28568 (h!56064 (toList!4064 lm!1477)))) key!3287))))

(assert (= (and d!1363780 (not res!1854579)) b!4470013))

(assert (= (and b!4470013 res!1854580) b!4470014))

(declare-fun m!5177133 () Bool)

(assert (=> b!4470014 m!5177133))

(assert (=> b!4469913 d!1363780))

(declare-fun b!4470082 () Bool)

(declare-fun e!2783592 () Bool)

(declare-datatypes ((List!50423 0))(
  ( (Nil!50299) (Cons!50299 (h!56068 K!11710) (t!357373 List!50423)) )
))
(declare-fun contains!12855 (List!50423 K!11710) Bool)

(declare-fun keys!17370 (ListMap!3325) List!50423)

(assert (=> b!4470082 (= e!2783592 (not (contains!12855 (keys!17370 lt!1658626) key!3287)))))

(declare-fun b!4470083 () Bool)

(declare-fun e!2783591 () Bool)

(assert (=> b!4470083 (= e!2783591 (contains!12855 (keys!17370 lt!1658626) key!3287))))

(declare-fun b!4470085 () Bool)

(declare-fun e!2783595 () Unit!87799)

(declare-fun Unit!87809 () Unit!87799)

(assert (=> b!4470085 (= e!2783595 Unit!87809)))

(declare-fun b!4470086 () Bool)

(declare-fun e!2783596 () List!50423)

(declare-fun getKeysList!379 (List!50420) List!50423)

(assert (=> b!4470086 (= e!2783596 (getKeysList!379 (toList!4063 lt!1658626)))))

(declare-fun b!4470087 () Bool)

(declare-fun e!2783594 () Unit!87799)

(declare-fun lt!1658777 () Unit!87799)

(assert (=> b!4470087 (= e!2783594 lt!1658777)))

(declare-fun lt!1658780 () Unit!87799)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!825 (List!50420 K!11710) Unit!87799)

(assert (=> b!4470087 (= lt!1658780 (lemmaContainsKeyImpliesGetValueByKeyDefined!825 (toList!4063 lt!1658626) key!3287))))

(declare-datatypes ((Option!10935 0))(
  ( (None!10934) (Some!10934 (v!44260 V!11956)) )
))
(declare-fun isDefined!8222 (Option!10935) Bool)

(declare-fun getValueByKey!921 (List!50420 K!11710) Option!10935)

(assert (=> b!4470087 (isDefined!8222 (getValueByKey!921 (toList!4063 lt!1658626) key!3287))))

(declare-fun lt!1658778 () Unit!87799)

(assert (=> b!4470087 (= lt!1658778 lt!1658780)))

(declare-fun lemmaInListThenGetKeysListContains!375 (List!50420 K!11710) Unit!87799)

(assert (=> b!4470087 (= lt!1658777 (lemmaInListThenGetKeysListContains!375 (toList!4063 lt!1658626) key!3287))))

(declare-fun call!311221 () Bool)

(assert (=> b!4470087 call!311221))

(declare-fun b!4470088 () Bool)

(assert (=> b!4470088 (= e!2783594 e!2783595)))

(declare-fun c!761020 () Bool)

(assert (=> b!4470088 (= c!761020 call!311221)))

(declare-fun b!4470089 () Bool)

(assert (=> b!4470089 false))

(declare-fun lt!1658784 () Unit!87799)

(declare-fun lt!1658779 () Unit!87799)

(assert (=> b!4470089 (= lt!1658784 lt!1658779)))

(declare-fun containsKey!1484 (List!50420 K!11710) Bool)

(assert (=> b!4470089 (containsKey!1484 (toList!4063 lt!1658626) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!378 (List!50420 K!11710) Unit!87799)

(assert (=> b!4470089 (= lt!1658779 (lemmaInGetKeysListThenContainsKey!378 (toList!4063 lt!1658626) key!3287))))

(declare-fun Unit!87812 () Unit!87799)

(assert (=> b!4470089 (= e!2783595 Unit!87812)))

(declare-fun b!4470090 () Bool)

(declare-fun e!2783593 () Bool)

(assert (=> b!4470090 (= e!2783593 e!2783591)))

(declare-fun res!1854614 () Bool)

(assert (=> b!4470090 (=> (not res!1854614) (not e!2783591))))

(assert (=> b!4470090 (= res!1854614 (isDefined!8222 (getValueByKey!921 (toList!4063 lt!1658626) key!3287)))))

(declare-fun bm!311216 () Bool)

(assert (=> bm!311216 (= call!311221 (contains!12855 e!2783596 key!3287))))

(declare-fun c!761018 () Bool)

(declare-fun c!761019 () Bool)

(assert (=> bm!311216 (= c!761018 c!761019)))

(declare-fun b!4470084 () Bool)

(assert (=> b!4470084 (= e!2783596 (keys!17370 lt!1658626))))

(declare-fun d!1363786 () Bool)

(assert (=> d!1363786 e!2783593))

(declare-fun res!1854615 () Bool)

(assert (=> d!1363786 (=> res!1854615 e!2783593)))

(assert (=> d!1363786 (= res!1854615 e!2783592)))

(declare-fun res!1854616 () Bool)

(assert (=> d!1363786 (=> (not res!1854616) (not e!2783592))))

(declare-fun lt!1658783 () Bool)

(assert (=> d!1363786 (= res!1854616 (not lt!1658783))))

(declare-fun lt!1658782 () Bool)

(assert (=> d!1363786 (= lt!1658783 lt!1658782)))

(declare-fun lt!1658781 () Unit!87799)

(assert (=> d!1363786 (= lt!1658781 e!2783594)))

(assert (=> d!1363786 (= c!761019 lt!1658782)))

(assert (=> d!1363786 (= lt!1658782 (containsKey!1484 (toList!4063 lt!1658626) key!3287))))

(assert (=> d!1363786 (= (contains!12853 lt!1658626 key!3287) lt!1658783)))

(assert (= (and d!1363786 c!761019) b!4470087))

(assert (= (and d!1363786 (not c!761019)) b!4470088))

(assert (= (and b!4470088 c!761020) b!4470089))

(assert (= (and b!4470088 (not c!761020)) b!4470085))

(assert (= (or b!4470087 b!4470088) bm!311216))

(assert (= (and bm!311216 c!761018) b!4470086))

(assert (= (and bm!311216 (not c!761018)) b!4470084))

(assert (= (and d!1363786 res!1854616) b!4470082))

(assert (= (and d!1363786 (not res!1854615)) b!4470090))

(assert (= (and b!4470090 res!1854614) b!4470083))

(declare-fun m!5177199 () Bool)

(assert (=> b!4470082 m!5177199))

(assert (=> b!4470082 m!5177199))

(declare-fun m!5177201 () Bool)

(assert (=> b!4470082 m!5177201))

(declare-fun m!5177205 () Bool)

(assert (=> b!4470087 m!5177205))

(declare-fun m!5177209 () Bool)

(assert (=> b!4470087 m!5177209))

(assert (=> b!4470087 m!5177209))

(declare-fun m!5177213 () Bool)

(assert (=> b!4470087 m!5177213))

(declare-fun m!5177215 () Bool)

(assert (=> b!4470087 m!5177215))

(declare-fun m!5177217 () Bool)

(assert (=> d!1363786 m!5177217))

(declare-fun m!5177219 () Bool)

(assert (=> bm!311216 m!5177219))

(assert (=> b!4470083 m!5177199))

(assert (=> b!4470083 m!5177199))

(assert (=> b!4470083 m!5177201))

(assert (=> b!4470090 m!5177209))

(assert (=> b!4470090 m!5177209))

(assert (=> b!4470090 m!5177213))

(declare-fun m!5177221 () Bool)

(assert (=> b!4470086 m!5177221))

(assert (=> b!4470089 m!5177217))

(declare-fun m!5177223 () Bool)

(assert (=> b!4470089 m!5177223))

(assert (=> b!4470084 m!5177199))

(assert (=> b!4469914 d!1363786))

(declare-fun d!1363812 () Bool)

(declare-fun res!1854627 () Bool)

(declare-fun e!2783609 () Bool)

(assert (=> d!1363812 (=> res!1854627 e!2783609)))

(assert (=> d!1363812 (= res!1854627 (not ((_ is Cons!50296) newBucket!178)))))

(assert (=> d!1363812 (= (noDuplicateKeys!1028 newBucket!178) e!2783609)))

(declare-fun b!4470109 () Bool)

(declare-fun e!2783610 () Bool)

(assert (=> b!4470109 (= e!2783609 e!2783610)))

(declare-fun res!1854628 () Bool)

(assert (=> b!4470109 (=> (not res!1854628) (not e!2783610))))

(assert (=> b!4470109 (= res!1854628 (not (containsKey!1480 (t!357370 newBucket!178) (_1!28567 (h!56063 newBucket!178)))))))

(declare-fun b!4470110 () Bool)

(assert (=> b!4470110 (= e!2783610 (noDuplicateKeys!1028 (t!357370 newBucket!178)))))

(assert (= (and d!1363812 (not res!1854627)) b!4470109))

(assert (= (and b!4470109 res!1854628) b!4470110))

(declare-fun m!5177229 () Bool)

(assert (=> b!4470109 m!5177229))

(declare-fun m!5177231 () Bool)

(assert (=> b!4470110 m!5177231))

(assert (=> b!4469904 d!1363812))

(declare-fun d!1363818 () Bool)

(assert (=> d!1363818 true))

(assert (=> d!1363818 true))

(declare-fun lambda!163394 () Int)

(declare-fun forall!10000 (List!50420 Int) Bool)

(assert (=> d!1363818 (= (allKeysSameHash!882 newBucket!178 hash!344 hashF!1107) (forall!10000 newBucket!178 lambda!163394))))

(declare-fun bs!795295 () Bool)

(assert (= bs!795295 d!1363818))

(declare-fun m!5177271 () Bool)

(assert (=> bs!795295 m!5177271))

(assert (=> b!4469915 d!1363818))

(declare-fun d!1363826 () Bool)

(declare-fun hash!2463 (Hashable!5423 K!11710) (_ BitVec 64))

(assert (=> d!1363826 (= (hash!2459 hashF!1107 key!3287) (hash!2463 hashF!1107 key!3287))))

(declare-fun bs!795297 () Bool)

(assert (= bs!795297 d!1363826))

(declare-fun m!5177277 () Bool)

(assert (=> bs!795297 m!5177277))

(assert (=> b!4469905 d!1363826))

(declare-fun bs!795319 () Bool)

(declare-fun d!1363832 () Bool)

(assert (= bs!795319 (and d!1363832 start!439252)))

(declare-fun lambda!163399 () Int)

(assert (=> bs!795319 (= lambda!163399 lambda!163367)))

(declare-fun bs!795320 () Bool)

(assert (= bs!795320 (and d!1363832 d!1363756)))

(assert (=> bs!795320 (= lambda!163399 lambda!163373)))

(assert (=> d!1363832 (not (contains!12853 (extractMap!1084 (toList!4064 lm!1477)) key!3287))))

(declare-fun lt!1658803 () Unit!87799)

(declare-fun choose!28601 (ListLongMap!2695 K!11710 Hashable!5423) Unit!87799)

(assert (=> d!1363832 (= lt!1658803 (choose!28601 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1363832 (forall!9998 (toList!4064 lm!1477) lambda!163399)))

(assert (=> d!1363832 (= (lemmaNotInItsHashBucketThenNotInMap!28 lm!1477 key!3287 hashF!1107) lt!1658803)))

(declare-fun bs!795321 () Bool)

(assert (= bs!795321 d!1363832))

(assert (=> bs!795321 m!5176949))

(assert (=> bs!795321 m!5176949))

(assert (=> bs!795321 m!5176951))

(declare-fun m!5177301 () Bool)

(assert (=> bs!795321 m!5177301))

(declare-fun m!5177303 () Bool)

(assert (=> bs!795321 m!5177303))

(assert (=> b!4469916 d!1363832))

(declare-fun b!4470148 () Bool)

(declare-fun e!2783634 () Bool)

(assert (=> b!4470148 (= e!2783634 (not (contains!12855 (keys!17370 (extractMap!1084 (toList!4064 lm!1477))) key!3287)))))

(declare-fun b!4470149 () Bool)

(declare-fun e!2783633 () Bool)

(assert (=> b!4470149 (= e!2783633 (contains!12855 (keys!17370 (extractMap!1084 (toList!4064 lm!1477))) key!3287))))

(declare-fun b!4470151 () Bool)

(declare-fun e!2783637 () Unit!87799)

(declare-fun Unit!87813 () Unit!87799)

(assert (=> b!4470151 (= e!2783637 Unit!87813)))

(declare-fun b!4470152 () Bool)

(declare-fun e!2783638 () List!50423)

(assert (=> b!4470152 (= e!2783638 (getKeysList!379 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))))))

(declare-fun b!4470153 () Bool)

(declare-fun e!2783636 () Unit!87799)

(declare-fun lt!1658804 () Unit!87799)

(assert (=> b!4470153 (= e!2783636 lt!1658804)))

(declare-fun lt!1658807 () Unit!87799)

(assert (=> b!4470153 (= lt!1658807 (lemmaContainsKeyImpliesGetValueByKeyDefined!825 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287))))

(assert (=> b!4470153 (isDefined!8222 (getValueByKey!921 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287))))

(declare-fun lt!1658805 () Unit!87799)

(assert (=> b!4470153 (= lt!1658805 lt!1658807)))

(assert (=> b!4470153 (= lt!1658804 (lemmaInListThenGetKeysListContains!375 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287))))

(declare-fun call!311223 () Bool)

(assert (=> b!4470153 call!311223))

(declare-fun b!4470154 () Bool)

(assert (=> b!4470154 (= e!2783636 e!2783637)))

(declare-fun c!761031 () Bool)

(assert (=> b!4470154 (= c!761031 call!311223)))

(declare-fun b!4470155 () Bool)

(assert (=> b!4470155 false))

(declare-fun lt!1658811 () Unit!87799)

(declare-fun lt!1658806 () Unit!87799)

(assert (=> b!4470155 (= lt!1658811 lt!1658806)))

(assert (=> b!4470155 (containsKey!1484 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287)))

(assert (=> b!4470155 (= lt!1658806 (lemmaInGetKeysListThenContainsKey!378 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287))))

(declare-fun Unit!87814 () Unit!87799)

(assert (=> b!4470155 (= e!2783637 Unit!87814)))

(declare-fun b!4470156 () Bool)

(declare-fun e!2783635 () Bool)

(assert (=> b!4470156 (= e!2783635 e!2783633)))

(declare-fun res!1854640 () Bool)

(assert (=> b!4470156 (=> (not res!1854640) (not e!2783633))))

(assert (=> b!4470156 (= res!1854640 (isDefined!8222 (getValueByKey!921 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287)))))

(declare-fun bm!311218 () Bool)

(assert (=> bm!311218 (= call!311223 (contains!12855 e!2783638 key!3287))))

(declare-fun c!761029 () Bool)

(declare-fun c!761030 () Bool)

(assert (=> bm!311218 (= c!761029 c!761030)))

(declare-fun b!4470150 () Bool)

(assert (=> b!4470150 (= e!2783638 (keys!17370 (extractMap!1084 (toList!4064 lm!1477))))))

(declare-fun d!1363842 () Bool)

(assert (=> d!1363842 e!2783635))

(declare-fun res!1854641 () Bool)

(assert (=> d!1363842 (=> res!1854641 e!2783635)))

(assert (=> d!1363842 (= res!1854641 e!2783634)))

(declare-fun res!1854642 () Bool)

(assert (=> d!1363842 (=> (not res!1854642) (not e!2783634))))

(declare-fun lt!1658810 () Bool)

(assert (=> d!1363842 (= res!1854642 (not lt!1658810))))

(declare-fun lt!1658809 () Bool)

(assert (=> d!1363842 (= lt!1658810 lt!1658809)))

(declare-fun lt!1658808 () Unit!87799)

(assert (=> d!1363842 (= lt!1658808 e!2783636)))

(assert (=> d!1363842 (= c!761030 lt!1658809)))

(assert (=> d!1363842 (= lt!1658809 (containsKey!1484 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287))))

(assert (=> d!1363842 (= (contains!12853 (extractMap!1084 (toList!4064 lm!1477)) key!3287) lt!1658810)))

(assert (= (and d!1363842 c!761030) b!4470153))

(assert (= (and d!1363842 (not c!761030)) b!4470154))

(assert (= (and b!4470154 c!761031) b!4470155))

(assert (= (and b!4470154 (not c!761031)) b!4470151))

(assert (= (or b!4470153 b!4470154) bm!311218))

(assert (= (and bm!311218 c!761029) b!4470152))

(assert (= (and bm!311218 (not c!761029)) b!4470150))

(assert (= (and d!1363842 res!1854642) b!4470148))

(assert (= (and d!1363842 (not res!1854641)) b!4470156))

(assert (= (and b!4470156 res!1854640) b!4470149))

(assert (=> b!4470148 m!5176949))

(declare-fun m!5177305 () Bool)

(assert (=> b!4470148 m!5177305))

(assert (=> b!4470148 m!5177305))

(declare-fun m!5177307 () Bool)

(assert (=> b!4470148 m!5177307))

(declare-fun m!5177309 () Bool)

(assert (=> b!4470153 m!5177309))

(declare-fun m!5177311 () Bool)

(assert (=> b!4470153 m!5177311))

(assert (=> b!4470153 m!5177311))

(declare-fun m!5177313 () Bool)

(assert (=> b!4470153 m!5177313))

(declare-fun m!5177315 () Bool)

(assert (=> b!4470153 m!5177315))

(declare-fun m!5177317 () Bool)

(assert (=> d!1363842 m!5177317))

(declare-fun m!5177319 () Bool)

(assert (=> bm!311218 m!5177319))

(assert (=> b!4470149 m!5176949))

(assert (=> b!4470149 m!5177305))

(assert (=> b!4470149 m!5177305))

(assert (=> b!4470149 m!5177307))

(assert (=> b!4470156 m!5177311))

(assert (=> b!4470156 m!5177311))

(assert (=> b!4470156 m!5177313))

(declare-fun m!5177321 () Bool)

(assert (=> b!4470152 m!5177321))

(assert (=> b!4470155 m!5177317))

(declare-fun m!5177323 () Bool)

(assert (=> b!4470155 m!5177323))

(assert (=> b!4470150 m!5176949))

(assert (=> b!4470150 m!5177305))

(assert (=> b!4469906 d!1363842))

(declare-fun bs!795322 () Bool)

(declare-fun d!1363844 () Bool)

(assert (= bs!795322 (and d!1363844 start!439252)))

(declare-fun lambda!163402 () Int)

(assert (=> bs!795322 (= lambda!163402 lambda!163367)))

(declare-fun bs!795323 () Bool)

(assert (= bs!795323 (and d!1363844 d!1363756)))

(assert (=> bs!795323 (= lambda!163402 lambda!163373)))

(declare-fun bs!795324 () Bool)

(assert (= bs!795324 (and d!1363844 d!1363832)))

(assert (=> bs!795324 (= lambda!163402 lambda!163399)))

(declare-fun lt!1658814 () ListMap!3325)

(declare-fun invariantList!931 (List!50420) Bool)

(assert (=> d!1363844 (invariantList!931 (toList!4063 lt!1658814))))

(declare-fun e!2783641 () ListMap!3325)

(assert (=> d!1363844 (= lt!1658814 e!2783641)))

(declare-fun c!761034 () Bool)

(assert (=> d!1363844 (= c!761034 ((_ is Cons!50297) (toList!4064 lm!1477)))))

(assert (=> d!1363844 (forall!9998 (toList!4064 lm!1477) lambda!163402)))

(assert (=> d!1363844 (= (extractMap!1084 (toList!4064 lm!1477)) lt!1658814)))

(declare-fun b!4470161 () Bool)

(declare-fun addToMapMapFromBucket!593 (List!50420 ListMap!3325) ListMap!3325)

(assert (=> b!4470161 (= e!2783641 (addToMapMapFromBucket!593 (_2!28568 (h!56064 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 (toList!4064 lm!1477)))))))

(declare-fun b!4470162 () Bool)

(assert (=> b!4470162 (= e!2783641 (ListMap!3326 Nil!50296))))

(assert (= (and d!1363844 c!761034) b!4470161))

(assert (= (and d!1363844 (not c!761034)) b!4470162))

(declare-fun m!5177325 () Bool)

(assert (=> d!1363844 m!5177325))

(declare-fun m!5177327 () Bool)

(assert (=> d!1363844 m!5177327))

(assert (=> b!4470161 m!5176943))

(assert (=> b!4470161 m!5176943))

(declare-fun m!5177329 () Bool)

(assert (=> b!4470161 m!5177329))

(assert (=> b!4469906 d!1363844))

(declare-fun d!1363846 () Bool)

(assert (=> d!1363846 (= (tail!7509 (toList!4064 lt!1658625)) (t!357371 (toList!4064 lt!1658625)))))

(assert (=> b!4469917 d!1363846))

(declare-fun bs!795325 () Bool)

(declare-fun d!1363848 () Bool)

(assert (= bs!795325 (and d!1363848 start!439252)))

(declare-fun lambda!163403 () Int)

(assert (=> bs!795325 (= lambda!163403 lambda!163367)))

(declare-fun bs!795326 () Bool)

(assert (= bs!795326 (and d!1363848 d!1363756)))

(assert (=> bs!795326 (= lambda!163403 lambda!163373)))

(declare-fun bs!795327 () Bool)

(assert (= bs!795327 (and d!1363848 d!1363832)))

(assert (=> bs!795327 (= lambda!163403 lambda!163399)))

(declare-fun bs!795328 () Bool)

(assert (= bs!795328 (and d!1363848 d!1363844)))

(assert (=> bs!795328 (= lambda!163403 lambda!163402)))

(declare-fun lt!1658815 () ListMap!3325)

(assert (=> d!1363848 (invariantList!931 (toList!4063 lt!1658815))))

(declare-fun e!2783642 () ListMap!3325)

(assert (=> d!1363848 (= lt!1658815 e!2783642)))

(declare-fun c!761035 () Bool)

(assert (=> d!1363848 (= c!761035 ((_ is Cons!50297) (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))

(assert (=> d!1363848 (forall!9998 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297) lambda!163403)))

(assert (=> d!1363848 (= (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)) lt!1658815)))

(declare-fun b!4470163 () Bool)

(assert (=> b!4470163 (= e!2783642 (addToMapMapFromBucket!593 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))

(declare-fun b!4470164 () Bool)

(assert (=> b!4470164 (= e!2783642 (ListMap!3326 Nil!50296))))

(assert (= (and d!1363848 c!761035) b!4470163))

(assert (= (and d!1363848 (not c!761035)) b!4470164))

(declare-fun m!5177331 () Bool)

(assert (=> d!1363848 m!5177331))

(declare-fun m!5177333 () Bool)

(assert (=> d!1363848 m!5177333))

(declare-fun m!5177335 () Bool)

(assert (=> b!4470163 m!5177335))

(assert (=> b!4470163 m!5177335))

(declare-fun m!5177337 () Bool)

(assert (=> b!4470163 m!5177337))

(assert (=> b!4469917 d!1363848))

(declare-fun bs!795329 () Bool)

(declare-fun d!1363850 () Bool)

(assert (= bs!795329 (and d!1363850 d!1363756)))

(declare-fun lambda!163404 () Int)

(assert (=> bs!795329 (= lambda!163404 lambda!163373)))

(declare-fun bs!795330 () Bool)

(assert (= bs!795330 (and d!1363850 start!439252)))

(assert (=> bs!795330 (= lambda!163404 lambda!163367)))

(declare-fun bs!795331 () Bool)

(assert (= bs!795331 (and d!1363850 d!1363832)))

(assert (=> bs!795331 (= lambda!163404 lambda!163399)))

(declare-fun bs!795332 () Bool)

(assert (= bs!795332 (and d!1363850 d!1363844)))

(assert (=> bs!795332 (= lambda!163404 lambda!163402)))

(declare-fun bs!795333 () Bool)

(assert (= bs!795333 (and d!1363850 d!1363848)))

(assert (=> bs!795333 (= lambda!163404 lambda!163403)))

(declare-fun lt!1658816 () ListMap!3325)

(assert (=> d!1363850 (invariantList!931 (toList!4063 lt!1658816))))

(declare-fun e!2783643 () ListMap!3325)

(assert (=> d!1363850 (= lt!1658816 e!2783643)))

(declare-fun c!761036 () Bool)

(assert (=> d!1363850 (= c!761036 ((_ is Cons!50297) lt!1658621))))

(assert (=> d!1363850 (forall!9998 lt!1658621 lambda!163404)))

(assert (=> d!1363850 (= (extractMap!1084 lt!1658621) lt!1658816)))

(declare-fun b!4470165 () Bool)

(assert (=> b!4470165 (= e!2783643 (addToMapMapFromBucket!593 (_2!28568 (h!56064 lt!1658621)) (extractMap!1084 (t!357371 lt!1658621))))))

(declare-fun b!4470166 () Bool)

(assert (=> b!4470166 (= e!2783643 (ListMap!3326 Nil!50296))))

(assert (= (and d!1363850 c!761036) b!4470165))

(assert (= (and d!1363850 (not c!761036)) b!4470166))

(declare-fun m!5177339 () Bool)

(assert (=> d!1363850 m!5177339))

(declare-fun m!5177341 () Bool)

(assert (=> d!1363850 m!5177341))

(declare-fun m!5177343 () Bool)

(assert (=> b!4470165 m!5177343))

(assert (=> b!4470165 m!5177343))

(declare-fun m!5177345 () Bool)

(assert (=> b!4470165 m!5177345))

(assert (=> b!4469917 d!1363850))

(declare-fun d!1363852 () Bool)

(declare-fun e!2783646 () Bool)

(assert (=> d!1363852 e!2783646))

(declare-fun res!1854645 () Bool)

(assert (=> d!1363852 (=> (not res!1854645) (not e!2783646))))

(declare-fun lt!1658819 () ListMap!3325)

(assert (=> d!1363852 (= res!1854645 (not (contains!12853 lt!1658819 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!67 (List!50420 K!11710) List!50420)

(assert (=> d!1363852 (= lt!1658819 (ListMap!3326 (removePresrvNoDuplicatedKeys!67 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) key!3287)))))

(assert (=> d!1363852 (= (-!290 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)) key!3287) lt!1658819)))

(declare-fun b!4470169 () Bool)

(declare-fun content!8115 (List!50423) (InoxSet K!11710))

(assert (=> b!4470169 (= e!2783646 (= ((_ map and) (content!8115 (keys!17370 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) ((_ map not) (store ((as const (Array K!11710 Bool)) false) key!3287 true))) (content!8115 (keys!17370 lt!1658819))))))

(assert (= (and d!1363852 res!1854645) b!4470169))

(declare-fun m!5177347 () Bool)

(assert (=> d!1363852 m!5177347))

(declare-fun m!5177349 () Bool)

(assert (=> d!1363852 m!5177349))

(declare-fun m!5177351 () Bool)

(assert (=> b!4470169 m!5177351))

(declare-fun m!5177353 () Bool)

(assert (=> b!4470169 m!5177353))

(declare-fun m!5177355 () Bool)

(assert (=> b!4470169 m!5177355))

(declare-fun m!5177357 () Bool)

(assert (=> b!4470169 m!5177357))

(assert (=> b!4470169 m!5177353))

(declare-fun m!5177359 () Bool)

(assert (=> b!4470169 m!5177359))

(assert (=> b!4470169 m!5176955))

(assert (=> b!4470169 m!5177355))

(assert (=> b!4469917 d!1363852))

(declare-fun d!1363854 () Bool)

(declare-fun content!8116 (List!50420) (InoxSet tuple2!50546))

(assert (=> d!1363854 (= (eq!521 (extractMap!1084 (Cons!50297 lt!1658627 Nil!50297)) (-!290 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)) key!3287)) (= (content!8116 (toList!4063 (extractMap!1084 (Cons!50297 lt!1658627 Nil!50297)))) (content!8116 (toList!4063 (-!290 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)) key!3287)))))))

(declare-fun bs!795334 () Bool)

(assert (= bs!795334 d!1363854))

(declare-fun m!5177361 () Bool)

(assert (=> bs!795334 m!5177361))

(declare-fun m!5177363 () Bool)

(assert (=> bs!795334 m!5177363))

(assert (=> b!4469917 d!1363854))

(declare-fun bs!795335 () Bool)

(declare-fun d!1363856 () Bool)

(assert (= bs!795335 (and d!1363856 d!1363756)))

(declare-fun lambda!163407 () Int)

(assert (=> bs!795335 (= lambda!163407 lambda!163373)))

(declare-fun bs!795336 () Bool)

(assert (= bs!795336 (and d!1363856 start!439252)))

(assert (=> bs!795336 (= lambda!163407 lambda!163367)))

(declare-fun bs!795337 () Bool)

(assert (= bs!795337 (and d!1363856 d!1363844)))

(assert (=> bs!795337 (= lambda!163407 lambda!163402)))

(declare-fun bs!795338 () Bool)

(assert (= bs!795338 (and d!1363856 d!1363848)))

(assert (=> bs!795338 (= lambda!163407 lambda!163403)))

(declare-fun bs!795339 () Bool)

(assert (= bs!795339 (and d!1363856 d!1363832)))

(assert (=> bs!795339 (= lambda!163407 lambda!163399)))

(declare-fun bs!795340 () Bool)

(assert (= bs!795340 (and d!1363856 d!1363850)))

(assert (=> bs!795340 (= lambda!163407 lambda!163404)))

(assert (=> d!1363856 (contains!12853 (extractMap!1084 (toList!4064 (ListLongMap!2696 lt!1658621))) key!3287)))

(declare-fun lt!1658822 () Unit!87799)

(declare-fun choose!28602 (ListLongMap!2695 K!11710 Hashable!5423) Unit!87799)

(assert (=> d!1363856 (= lt!1658822 (choose!28602 (ListLongMap!2696 lt!1658621) key!3287 hashF!1107))))

(assert (=> d!1363856 (forall!9998 (toList!4064 (ListLongMap!2696 lt!1658621)) lambda!163407)))

(assert (=> d!1363856 (= (lemmaListContainsThenExtractedMapContains!24 (ListLongMap!2696 lt!1658621) key!3287 hashF!1107) lt!1658822)))

(declare-fun bs!795341 () Bool)

(assert (= bs!795341 d!1363856))

(declare-fun m!5177365 () Bool)

(assert (=> bs!795341 m!5177365))

(assert (=> bs!795341 m!5177365))

(declare-fun m!5177367 () Bool)

(assert (=> bs!795341 m!5177367))

(declare-fun m!5177369 () Bool)

(assert (=> bs!795341 m!5177369))

(declare-fun m!5177371 () Bool)

(assert (=> bs!795341 m!5177371))

(assert (=> b!4469917 d!1363856))

(declare-fun d!1363858 () Bool)

(assert (=> d!1363858 (eq!521 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 newBucket!178) Nil!50297)) (-!290 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)) key!3287))))

(declare-fun lt!1658825 () Unit!87799)

(declare-fun choose!28603 ((_ BitVec 64) List!50420 List!50420 K!11710 Hashable!5423) Unit!87799)

(assert (=> d!1363858 (= lt!1658825 (choose!28603 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1363858 (noDuplicateKeys!1028 (_2!28568 (h!56064 (toList!4064 lm!1477))))))

(assert (=> d!1363858 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!20 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1658825)))

(declare-fun bs!795342 () Bool)

(assert (= bs!795342 d!1363858))

(declare-fun m!5177373 () Bool)

(assert (=> bs!795342 m!5177373))

(declare-fun m!5177375 () Bool)

(assert (=> bs!795342 m!5177375))

(assert (=> bs!795342 m!5176955))

(assert (=> bs!795342 m!5176957))

(declare-fun m!5177377 () Bool)

(assert (=> bs!795342 m!5177377))

(assert (=> bs!795342 m!5177375))

(assert (=> bs!795342 m!5176957))

(declare-fun m!5177379 () Bool)

(assert (=> bs!795342 m!5177379))

(assert (=> bs!795342 m!5176955))

(assert (=> b!4469917 d!1363858))

(declare-fun d!1363860 () Bool)

(declare-fun e!2783647 () Bool)

(assert (=> d!1363860 e!2783647))

(declare-fun res!1854646 () Bool)

(assert (=> d!1363860 (=> (not res!1854646) (not e!2783647))))

(declare-fun lt!1658829 () ListLongMap!2695)

(assert (=> d!1363860 (= res!1854646 (contains!12852 lt!1658829 (_1!28568 lt!1658627)))))

(declare-fun lt!1658828 () List!50421)

(assert (=> d!1363860 (= lt!1658829 (ListLongMap!2696 lt!1658828))))

(declare-fun lt!1658827 () Unit!87799)

(declare-fun lt!1658826 () Unit!87799)

(assert (=> d!1363860 (= lt!1658827 lt!1658826)))

(assert (=> d!1363860 (= (getValueByKey!920 lt!1658828 (_1!28568 lt!1658627)) (Some!10933 (_2!28568 lt!1658627)))))

(assert (=> d!1363860 (= lt!1658826 (lemmaContainsTupThenGetReturnValue!588 lt!1658828 (_1!28568 lt!1658627) (_2!28568 lt!1658627)))))

(assert (=> d!1363860 (= lt!1658828 (insertStrictlySorted!334 (toList!4064 lm!1477) (_1!28568 lt!1658627) (_2!28568 lt!1658627)))))

(assert (=> d!1363860 (= (+!1372 lm!1477 lt!1658627) lt!1658829)))

(declare-fun b!4470170 () Bool)

(declare-fun res!1854647 () Bool)

(assert (=> b!4470170 (=> (not res!1854647) (not e!2783647))))

(assert (=> b!4470170 (= res!1854647 (= (getValueByKey!920 (toList!4064 lt!1658829) (_1!28568 lt!1658627)) (Some!10933 (_2!28568 lt!1658627))))))

(declare-fun b!4470171 () Bool)

(assert (=> b!4470171 (= e!2783647 (contains!12851 (toList!4064 lt!1658829) lt!1658627))))

(assert (= (and d!1363860 res!1854646) b!4470170))

(assert (= (and b!4470170 res!1854647) b!4470171))

(declare-fun m!5177381 () Bool)

(assert (=> d!1363860 m!5177381))

(declare-fun m!5177383 () Bool)

(assert (=> d!1363860 m!5177383))

(declare-fun m!5177385 () Bool)

(assert (=> d!1363860 m!5177385))

(declare-fun m!5177387 () Bool)

(assert (=> d!1363860 m!5177387))

(declare-fun m!5177389 () Bool)

(assert (=> b!4470170 m!5177389))

(declare-fun m!5177391 () Bool)

(assert (=> b!4470171 m!5177391))

(assert (=> b!4469917 d!1363860))

(declare-fun bs!795343 () Bool)

(declare-fun d!1363862 () Bool)

(assert (= bs!795343 (and d!1363862 d!1363856)))

(declare-fun lambda!163408 () Int)

(assert (=> bs!795343 (= lambda!163408 lambda!163407)))

(declare-fun bs!795344 () Bool)

(assert (= bs!795344 (and d!1363862 d!1363756)))

(assert (=> bs!795344 (= lambda!163408 lambda!163373)))

(declare-fun bs!795345 () Bool)

(assert (= bs!795345 (and d!1363862 start!439252)))

(assert (=> bs!795345 (= lambda!163408 lambda!163367)))

(declare-fun bs!795346 () Bool)

(assert (= bs!795346 (and d!1363862 d!1363844)))

(assert (=> bs!795346 (= lambda!163408 lambda!163402)))

(declare-fun bs!795347 () Bool)

(assert (= bs!795347 (and d!1363862 d!1363848)))

(assert (=> bs!795347 (= lambda!163408 lambda!163403)))

(declare-fun bs!795348 () Bool)

(assert (= bs!795348 (and d!1363862 d!1363832)))

(assert (=> bs!795348 (= lambda!163408 lambda!163399)))

(declare-fun bs!795349 () Bool)

(assert (= bs!795349 (and d!1363862 d!1363850)))

(assert (=> bs!795349 (= lambda!163408 lambda!163404)))

(declare-fun lt!1658830 () ListMap!3325)

(assert (=> d!1363862 (invariantList!931 (toList!4063 lt!1658830))))

(declare-fun e!2783648 () ListMap!3325)

(assert (=> d!1363862 (= lt!1658830 e!2783648)))

(declare-fun c!761037 () Bool)

(assert (=> d!1363862 (= c!761037 ((_ is Cons!50297) (Cons!50297 lt!1658627 Nil!50297)))))

(assert (=> d!1363862 (forall!9998 (Cons!50297 lt!1658627 Nil!50297) lambda!163408)))

(assert (=> d!1363862 (= (extractMap!1084 (Cons!50297 lt!1658627 Nil!50297)) lt!1658830)))

(declare-fun b!4470172 () Bool)

(assert (=> b!4470172 (= e!2783648 (addToMapMapFromBucket!593 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297)))))))

(declare-fun b!4470173 () Bool)

(assert (=> b!4470173 (= e!2783648 (ListMap!3326 Nil!50296))))

(assert (= (and d!1363862 c!761037) b!4470172))

(assert (= (and d!1363862 (not c!761037)) b!4470173))

(declare-fun m!5177393 () Bool)

(assert (=> d!1363862 m!5177393))

(declare-fun m!5177395 () Bool)

(assert (=> d!1363862 m!5177395))

(declare-fun m!5177397 () Bool)

(assert (=> b!4470172 m!5177397))

(assert (=> b!4470172 m!5177397))

(declare-fun m!5177399 () Bool)

(assert (=> b!4470172 m!5177399))

(assert (=> b!4469917 d!1363862))

(declare-fun b!4470174 () Bool)

(declare-fun e!2783650 () Bool)

(assert (=> b!4470174 (= e!2783650 (not (contains!12855 (keys!17370 (extractMap!1084 lt!1658621)) key!3287)))))

(declare-fun b!4470175 () Bool)

(declare-fun e!2783649 () Bool)

(assert (=> b!4470175 (= e!2783649 (contains!12855 (keys!17370 (extractMap!1084 lt!1658621)) key!3287))))

(declare-fun b!4470177 () Bool)

(declare-fun e!2783653 () Unit!87799)

(declare-fun Unit!87815 () Unit!87799)

(assert (=> b!4470177 (= e!2783653 Unit!87815)))

(declare-fun b!4470178 () Bool)

(declare-fun e!2783654 () List!50423)

(assert (=> b!4470178 (= e!2783654 (getKeysList!379 (toList!4063 (extractMap!1084 lt!1658621))))))

(declare-fun b!4470179 () Bool)

(declare-fun e!2783652 () Unit!87799)

(declare-fun lt!1658831 () Unit!87799)

(assert (=> b!4470179 (= e!2783652 lt!1658831)))

(declare-fun lt!1658834 () Unit!87799)

(assert (=> b!4470179 (= lt!1658834 (lemmaContainsKeyImpliesGetValueByKeyDefined!825 (toList!4063 (extractMap!1084 lt!1658621)) key!3287))))

(assert (=> b!4470179 (isDefined!8222 (getValueByKey!921 (toList!4063 (extractMap!1084 lt!1658621)) key!3287))))

(declare-fun lt!1658832 () Unit!87799)

(assert (=> b!4470179 (= lt!1658832 lt!1658834)))

(assert (=> b!4470179 (= lt!1658831 (lemmaInListThenGetKeysListContains!375 (toList!4063 (extractMap!1084 lt!1658621)) key!3287))))

(declare-fun call!311224 () Bool)

(assert (=> b!4470179 call!311224))

(declare-fun b!4470180 () Bool)

(assert (=> b!4470180 (= e!2783652 e!2783653)))

(declare-fun c!761040 () Bool)

(assert (=> b!4470180 (= c!761040 call!311224)))

(declare-fun b!4470181 () Bool)

(assert (=> b!4470181 false))

(declare-fun lt!1658838 () Unit!87799)

(declare-fun lt!1658833 () Unit!87799)

(assert (=> b!4470181 (= lt!1658838 lt!1658833)))

(assert (=> b!4470181 (containsKey!1484 (toList!4063 (extractMap!1084 lt!1658621)) key!3287)))

(assert (=> b!4470181 (= lt!1658833 (lemmaInGetKeysListThenContainsKey!378 (toList!4063 (extractMap!1084 lt!1658621)) key!3287))))

(declare-fun Unit!87816 () Unit!87799)

(assert (=> b!4470181 (= e!2783653 Unit!87816)))

(declare-fun b!4470182 () Bool)

(declare-fun e!2783651 () Bool)

(assert (=> b!4470182 (= e!2783651 e!2783649)))

(declare-fun res!1854648 () Bool)

(assert (=> b!4470182 (=> (not res!1854648) (not e!2783649))))

(assert (=> b!4470182 (= res!1854648 (isDefined!8222 (getValueByKey!921 (toList!4063 (extractMap!1084 lt!1658621)) key!3287)))))

(declare-fun bm!311219 () Bool)

(assert (=> bm!311219 (= call!311224 (contains!12855 e!2783654 key!3287))))

(declare-fun c!761038 () Bool)

(declare-fun c!761039 () Bool)

(assert (=> bm!311219 (= c!761038 c!761039)))

(declare-fun b!4470176 () Bool)

(assert (=> b!4470176 (= e!2783654 (keys!17370 (extractMap!1084 lt!1658621)))))

(declare-fun d!1363864 () Bool)

(assert (=> d!1363864 e!2783651))

(declare-fun res!1854649 () Bool)

(assert (=> d!1363864 (=> res!1854649 e!2783651)))

(assert (=> d!1363864 (= res!1854649 e!2783650)))

(declare-fun res!1854650 () Bool)

(assert (=> d!1363864 (=> (not res!1854650) (not e!2783650))))

(declare-fun lt!1658837 () Bool)

(assert (=> d!1363864 (= res!1854650 (not lt!1658837))))

(declare-fun lt!1658836 () Bool)

(assert (=> d!1363864 (= lt!1658837 lt!1658836)))

(declare-fun lt!1658835 () Unit!87799)

(assert (=> d!1363864 (= lt!1658835 e!2783652)))

(assert (=> d!1363864 (= c!761039 lt!1658836)))

(assert (=> d!1363864 (= lt!1658836 (containsKey!1484 (toList!4063 (extractMap!1084 lt!1658621)) key!3287))))

(assert (=> d!1363864 (= (contains!12853 (extractMap!1084 lt!1658621) key!3287) lt!1658837)))

(assert (= (and d!1363864 c!761039) b!4470179))

(assert (= (and d!1363864 (not c!761039)) b!4470180))

(assert (= (and b!4470180 c!761040) b!4470181))

(assert (= (and b!4470180 (not c!761040)) b!4470177))

(assert (= (or b!4470179 b!4470180) bm!311219))

(assert (= (and bm!311219 c!761038) b!4470178))

(assert (= (and bm!311219 (not c!761038)) b!4470176))

(assert (= (and d!1363864 res!1854650) b!4470174))

(assert (= (and d!1363864 (not res!1854649)) b!4470182))

(assert (= (and b!4470182 res!1854648) b!4470175))

(assert (=> b!4470174 m!5176959))

(declare-fun m!5177401 () Bool)

(assert (=> b!4470174 m!5177401))

(assert (=> b!4470174 m!5177401))

(declare-fun m!5177403 () Bool)

(assert (=> b!4470174 m!5177403))

(declare-fun m!5177405 () Bool)

(assert (=> b!4470179 m!5177405))

(declare-fun m!5177407 () Bool)

(assert (=> b!4470179 m!5177407))

(assert (=> b!4470179 m!5177407))

(declare-fun m!5177409 () Bool)

(assert (=> b!4470179 m!5177409))

(declare-fun m!5177411 () Bool)

(assert (=> b!4470179 m!5177411))

(declare-fun m!5177413 () Bool)

(assert (=> d!1363864 m!5177413))

(declare-fun m!5177415 () Bool)

(assert (=> bm!311219 m!5177415))

(assert (=> b!4470175 m!5176959))

(assert (=> b!4470175 m!5177401))

(assert (=> b!4470175 m!5177401))

(assert (=> b!4470175 m!5177403))

(assert (=> b!4470182 m!5177407))

(assert (=> b!4470182 m!5177407))

(assert (=> b!4470182 m!5177409))

(declare-fun m!5177417 () Bool)

(assert (=> b!4470178 m!5177417))

(assert (=> b!4470181 m!5177413))

(declare-fun m!5177419 () Bool)

(assert (=> b!4470181 m!5177419))

(assert (=> b!4470176 m!5176959))

(assert (=> b!4470176 m!5177401))

(assert (=> b!4469917 d!1363864))

(declare-fun d!1363866 () Bool)

(declare-fun res!1854657 () Bool)

(declare-fun e!2783662 () Bool)

(assert (=> d!1363866 (=> res!1854657 e!2783662)))

(declare-fun e!2783661 () Bool)

(assert (=> d!1363866 (= res!1854657 e!2783661)))

(declare-fun res!1854658 () Bool)

(assert (=> d!1363866 (=> (not res!1854658) (not e!2783661))))

(assert (=> d!1363866 (= res!1854658 ((_ is Cons!50297) lt!1658621))))

(assert (=> d!1363866 (= (containsKeyBiggerList!28 lt!1658621 key!3287) e!2783662)))

(declare-fun b!4470189 () Bool)

(assert (=> b!4470189 (= e!2783661 (containsKey!1480 (_2!28568 (h!56064 lt!1658621)) key!3287))))

(declare-fun b!4470190 () Bool)

(declare-fun e!2783663 () Bool)

(assert (=> b!4470190 (= e!2783662 e!2783663)))

(declare-fun res!1854659 () Bool)

(assert (=> b!4470190 (=> (not res!1854659) (not e!2783663))))

(assert (=> b!4470190 (= res!1854659 ((_ is Cons!50297) lt!1658621))))

(declare-fun b!4470191 () Bool)

(assert (=> b!4470191 (= e!2783663 (containsKeyBiggerList!28 (t!357371 lt!1658621) key!3287))))

(assert (= (and d!1363866 res!1854658) b!4470189))

(assert (= (and d!1363866 (not res!1854657)) b!4470190))

(assert (= (and b!4470190 res!1854659) b!4470191))

(declare-fun m!5177421 () Bool)

(assert (=> b!4470189 m!5177421))

(declare-fun m!5177423 () Bool)

(assert (=> b!4470191 m!5177423))

(assert (=> b!4469907 d!1363866))

(declare-fun d!1363868 () Bool)

(declare-fun res!1854664 () Bool)

(declare-fun e!2783668 () Bool)

(assert (=> d!1363868 (=> res!1854664 e!2783668)))

(assert (=> d!1363868 (= res!1854664 ((_ is Nil!50297) (toList!4064 lm!1477)))))

(assert (=> d!1363868 (= (forall!9998 (toList!4064 lm!1477) lambda!163367) e!2783668)))

(declare-fun b!4470196 () Bool)

(declare-fun e!2783669 () Bool)

(assert (=> b!4470196 (= e!2783668 e!2783669)))

(declare-fun res!1854665 () Bool)

(assert (=> b!4470196 (=> (not res!1854665) (not e!2783669))))

(assert (=> b!4470196 (= res!1854665 (dynLambda!21018 lambda!163367 (h!56064 (toList!4064 lm!1477))))))

(declare-fun b!4470197 () Bool)

(assert (=> b!4470197 (= e!2783669 (forall!9998 (t!357371 (toList!4064 lm!1477)) lambda!163367))))

(assert (= (and d!1363868 (not res!1854664)) b!4470196))

(assert (= (and b!4470196 res!1854665) b!4470197))

(declare-fun b_lambda!148455 () Bool)

(assert (=> (not b_lambda!148455) (not b!4470196)))

(declare-fun m!5177425 () Bool)

(assert (=> b!4470196 m!5177425))

(declare-fun m!5177427 () Bool)

(assert (=> b!4470197 m!5177427))

(assert (=> start!439252 d!1363868))

(declare-fun d!1363870 () Bool)

(assert (=> d!1363870 (= (inv!65894 lm!1477) (isStrictlySorted!345 (toList!4064 lm!1477)))))

(declare-fun bs!795350 () Bool)

(assert (= bs!795350 d!1363870))

(assert (=> bs!795350 m!5177073))

(assert (=> start!439252 d!1363870))

(declare-fun bs!795351 () Bool)

(declare-fun d!1363872 () Bool)

(assert (= bs!795351 (and d!1363872 d!1363856)))

(declare-fun lambda!163411 () Int)

(assert (=> bs!795351 (not (= lambda!163411 lambda!163407))))

(declare-fun bs!795352 () Bool)

(assert (= bs!795352 (and d!1363872 d!1363756)))

(assert (=> bs!795352 (not (= lambda!163411 lambda!163373))))

(declare-fun bs!795353 () Bool)

(assert (= bs!795353 (and d!1363872 start!439252)))

(assert (=> bs!795353 (not (= lambda!163411 lambda!163367))))

(declare-fun bs!795354 () Bool)

(assert (= bs!795354 (and d!1363872 d!1363862)))

(assert (=> bs!795354 (not (= lambda!163411 lambda!163408))))

(declare-fun bs!795355 () Bool)

(assert (= bs!795355 (and d!1363872 d!1363844)))

(assert (=> bs!795355 (not (= lambda!163411 lambda!163402))))

(declare-fun bs!795356 () Bool)

(assert (= bs!795356 (and d!1363872 d!1363848)))

(assert (=> bs!795356 (not (= lambda!163411 lambda!163403))))

(declare-fun bs!795357 () Bool)

(assert (= bs!795357 (and d!1363872 d!1363832)))

(assert (=> bs!795357 (not (= lambda!163411 lambda!163399))))

(declare-fun bs!795358 () Bool)

(assert (= bs!795358 (and d!1363872 d!1363850)))

(assert (=> bs!795358 (not (= lambda!163411 lambda!163404))))

(assert (=> d!1363872 true))

(assert (=> d!1363872 (= (allKeysSameHashInMap!1135 lm!1477 hashF!1107) (forall!9998 (toList!4064 lm!1477) lambda!163411))))

(declare-fun bs!795359 () Bool)

(assert (= bs!795359 d!1363872))

(declare-fun m!5177429 () Bool)

(assert (=> bs!795359 m!5177429))

(assert (=> b!4469910 d!1363872))

(declare-fun d!1363874 () Bool)

(declare-fun isEmpty!28493 (List!50421) Bool)

(assert (=> d!1363874 (= (isEmpty!28491 lm!1477) (isEmpty!28493 (toList!4064 lm!1477)))))

(declare-fun bs!795360 () Bool)

(assert (= bs!795360 d!1363874))

(declare-fun m!5177431 () Bool)

(assert (=> bs!795360 m!5177431))

(assert (=> b!4469911 d!1363874))

(declare-fun bs!795361 () Bool)

(declare-fun d!1363876 () Bool)

(assert (= bs!795361 (and d!1363876 d!1363856)))

(declare-fun lambda!163412 () Int)

(assert (=> bs!795361 (= lambda!163412 lambda!163407)))

(declare-fun bs!795362 () Bool)

(assert (= bs!795362 (and d!1363876 d!1363756)))

(assert (=> bs!795362 (= lambda!163412 lambda!163373)))

(declare-fun bs!795363 () Bool)

(assert (= bs!795363 (and d!1363876 start!439252)))

(assert (=> bs!795363 (= lambda!163412 lambda!163367)))

(declare-fun bs!795364 () Bool)

(assert (= bs!795364 (and d!1363876 d!1363862)))

(assert (=> bs!795364 (= lambda!163412 lambda!163408)))

(declare-fun bs!795365 () Bool)

(assert (= bs!795365 (and d!1363876 d!1363872)))

(assert (=> bs!795365 (not (= lambda!163412 lambda!163411))))

(declare-fun bs!795366 () Bool)

(assert (= bs!795366 (and d!1363876 d!1363844)))

(assert (=> bs!795366 (= lambda!163412 lambda!163402)))

(declare-fun bs!795367 () Bool)

(assert (= bs!795367 (and d!1363876 d!1363848)))

(assert (=> bs!795367 (= lambda!163412 lambda!163403)))

(declare-fun bs!795368 () Bool)

(assert (= bs!795368 (and d!1363876 d!1363832)))

(assert (=> bs!795368 (= lambda!163412 lambda!163399)))

(declare-fun bs!795369 () Bool)

(assert (= bs!795369 (and d!1363876 d!1363850)))

(assert (=> bs!795369 (= lambda!163412 lambda!163404)))

(declare-fun lt!1658839 () ListMap!3325)

(assert (=> d!1363876 (invariantList!931 (toList!4063 lt!1658839))))

(declare-fun e!2783670 () ListMap!3325)

(assert (=> d!1363876 (= lt!1658839 e!2783670)))

(declare-fun c!761041 () Bool)

(assert (=> d!1363876 (= c!761041 ((_ is Cons!50297) (t!357371 (toList!4064 lm!1477))))))

(assert (=> d!1363876 (forall!9998 (t!357371 (toList!4064 lm!1477)) lambda!163412)))

(assert (=> d!1363876 (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1658839)))

(declare-fun b!4470200 () Bool)

(assert (=> b!4470200 (= e!2783670 (addToMapMapFromBucket!593 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477)))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))))))

(declare-fun b!4470201 () Bool)

(assert (=> b!4470201 (= e!2783670 (ListMap!3326 Nil!50296))))

(assert (= (and d!1363876 c!761041) b!4470200))

(assert (= (and d!1363876 (not c!761041)) b!4470201))

(declare-fun m!5177433 () Bool)

(assert (=> d!1363876 m!5177433))

(declare-fun m!5177435 () Bool)

(assert (=> d!1363876 m!5177435))

(declare-fun m!5177437 () Bool)

(assert (=> b!4470200 m!5177437))

(assert (=> b!4470200 m!5177437))

(declare-fun m!5177439 () Bool)

(assert (=> b!4470200 m!5177439))

(assert (=> b!4469901 d!1363876))

(declare-fun bs!795370 () Bool)

(declare-fun d!1363878 () Bool)

(assert (= bs!795370 (and d!1363878 d!1363876)))

(declare-fun lambda!163413 () Int)

(assert (=> bs!795370 (= lambda!163413 lambda!163412)))

(declare-fun bs!795371 () Bool)

(assert (= bs!795371 (and d!1363878 d!1363856)))

(assert (=> bs!795371 (= lambda!163413 lambda!163407)))

(declare-fun bs!795372 () Bool)

(assert (= bs!795372 (and d!1363878 d!1363756)))

(assert (=> bs!795372 (= lambda!163413 lambda!163373)))

(declare-fun bs!795373 () Bool)

(assert (= bs!795373 (and d!1363878 start!439252)))

(assert (=> bs!795373 (= lambda!163413 lambda!163367)))

(declare-fun bs!795374 () Bool)

(assert (= bs!795374 (and d!1363878 d!1363862)))

(assert (=> bs!795374 (= lambda!163413 lambda!163408)))

(declare-fun bs!795375 () Bool)

(assert (= bs!795375 (and d!1363878 d!1363872)))

(assert (=> bs!795375 (not (= lambda!163413 lambda!163411))))

(declare-fun bs!795376 () Bool)

(assert (= bs!795376 (and d!1363878 d!1363844)))

(assert (=> bs!795376 (= lambda!163413 lambda!163402)))

(declare-fun bs!795377 () Bool)

(assert (= bs!795377 (and d!1363878 d!1363848)))

(assert (=> bs!795377 (= lambda!163413 lambda!163403)))

(declare-fun bs!795378 () Bool)

(assert (= bs!795378 (and d!1363878 d!1363832)))

(assert (=> bs!795378 (= lambda!163413 lambda!163399)))

(declare-fun bs!795379 () Bool)

(assert (= bs!795379 (and d!1363878 d!1363850)))

(assert (=> bs!795379 (= lambda!163413 lambda!163404)))

(declare-fun lt!1658840 () ListMap!3325)

(assert (=> d!1363878 (invariantList!931 (toList!4063 lt!1658840))))

(declare-fun e!2783671 () ListMap!3325)

(assert (=> d!1363878 (= lt!1658840 e!2783671)))

(declare-fun c!761042 () Bool)

(assert (=> d!1363878 (= c!761042 ((_ is Cons!50297) (toList!4064 lt!1658620)))))

(assert (=> d!1363878 (forall!9998 (toList!4064 lt!1658620) lambda!163413)))

(assert (=> d!1363878 (= (extractMap!1084 (toList!4064 lt!1658620)) lt!1658840)))

(declare-fun b!4470202 () Bool)

(assert (=> b!4470202 (= e!2783671 (addToMapMapFromBucket!593 (_2!28568 (h!56064 (toList!4064 lt!1658620))) (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))))))

(declare-fun b!4470203 () Bool)

(assert (=> b!4470203 (= e!2783671 (ListMap!3326 Nil!50296))))

(assert (= (and d!1363878 c!761042) b!4470202))

(assert (= (and d!1363878 (not c!761042)) b!4470203))

(declare-fun m!5177441 () Bool)

(assert (=> d!1363878 m!5177441))

(declare-fun m!5177443 () Bool)

(assert (=> d!1363878 m!5177443))

(declare-fun m!5177445 () Bool)

(assert (=> b!4470202 m!5177445))

(assert (=> b!4470202 m!5177445))

(declare-fun m!5177447 () Bool)

(assert (=> b!4470202 m!5177447))

(assert (=> b!4469901 d!1363878))

(declare-fun b!4470208 () Bool)

(declare-fun e!2783674 () Bool)

(declare-fun tp!1336307 () Bool)

(declare-fun tp!1336308 () Bool)

(assert (=> b!4470208 (= e!2783674 (and tp!1336307 tp!1336308))))

(assert (=> b!4469903 (= tp!1336292 e!2783674)))

(assert (= (and b!4469903 ((_ is Cons!50297) (toList!4064 lm!1477))) b!4470208))

(declare-fun tp!1336311 () Bool)

(declare-fun b!4470213 () Bool)

(declare-fun e!2783677 () Bool)

(assert (=> b!4470213 (= e!2783677 (and tp_is_empty!27389 tp_is_empty!27391 tp!1336311))))

(assert (=> b!4469900 (= tp!1336293 e!2783677)))

(assert (= (and b!4469900 ((_ is Cons!50296) (t!357370 newBucket!178))) b!4470213))

(declare-fun b_lambda!148457 () Bool)

(assert (= b_lambda!148447 (or start!439252 b_lambda!148457)))

(declare-fun bs!795380 () Bool)

(declare-fun d!1363880 () Bool)

(assert (= bs!795380 (and d!1363880 start!439252)))

(assert (=> bs!795380 (= (dynLambda!21018 lambda!163367 lt!1658630) (noDuplicateKeys!1028 (_2!28568 lt!1658630)))))

(declare-fun m!5177449 () Bool)

(assert (=> bs!795380 m!5177449))

(assert (=> d!1363760 d!1363880))

(declare-fun b_lambda!148459 () Bool)

(assert (= b_lambda!148455 (or start!439252 b_lambda!148459)))

(declare-fun bs!795381 () Bool)

(declare-fun d!1363882 () Bool)

(assert (= bs!795381 (and d!1363882 start!439252)))

(assert (=> bs!795381 (= (dynLambda!21018 lambda!163367 (h!56064 (toList!4064 lm!1477))) (noDuplicateKeys!1028 (_2!28568 (h!56064 (toList!4064 lm!1477)))))))

(assert (=> bs!795381 m!5177373))

(assert (=> b!4470196 d!1363882))

(check-sat (not d!1363858) (not d!1363850) (not b!4470082) (not d!1363842) (not bm!311219) (not d!1363756) (not b!4470175) (not d!1363864) (not d!1363818) (not b!4470170) (not d!1363844) (not b!4469958) (not bs!795380) tp_is_empty!27391 (not b!4470014) (not b!4470084) (not b!4469928) (not d!1363852) (not b!4470179) (not d!1363770) (not b_lambda!148459) (not d!1363848) (not b!4470156) (not d!1363766) (not b!4470182) (not b!4470197) (not d!1363740) (not b!4469955) (not b!4470109) (not b!4469929) (not d!1363752) (not b!4470189) (not b!4470181) (not b!4470149) (not b!4470153) (not d!1363826) (not b!4469969) (not b!4470087) (not d!1363772) (not b!4470165) (not d!1363832) (not d!1363856) (not b!4470161) (not b!4470174) (not d!1363760) (not b!4470150) (not bm!311218) tp_is_empty!27389 (not b!4470090) (not bm!311216) (not b!4470148) (not b!4469997) (not d!1363786) (not b!4470208) (not d!1363876) (not b_lambda!148457) (not b!4470155) (not b!4470163) (not b!4470110) (not b!4470083) (not b!4470191) (not d!1363854) (not b!4470202) (not b!4470213) (not b!4469995) (not d!1363874) (not d!1363862) (not d!1363872) (not b!4470172) (not d!1363860) (not b!4470176) (not d!1363878) (not b!4470169) (not b!4470086) (not d!1363750) (not b!4470152) (not b!4470171) (not b!4470089) (not d!1363778) (not bs!795381) (not b!4470178) (not b!4469941) (not d!1363870) (not b!4470200))
(check-sat)
(get-model)

(declare-fun d!1363886 () Bool)

(declare-fun noDuplicatedKeys!214 (List!50420) Bool)

(assert (=> d!1363886 (= (invariantList!931 (toList!4063 lt!1658839)) (noDuplicatedKeys!214 (toList!4063 lt!1658839)))))

(declare-fun bs!795382 () Bool)

(assert (= bs!795382 d!1363886))

(declare-fun m!5177451 () Bool)

(assert (=> bs!795382 m!5177451))

(assert (=> d!1363876 d!1363886))

(declare-fun d!1363888 () Bool)

(declare-fun res!1854666 () Bool)

(declare-fun e!2783678 () Bool)

(assert (=> d!1363888 (=> res!1854666 e!2783678)))

(assert (=> d!1363888 (= res!1854666 ((_ is Nil!50297) (t!357371 (toList!4064 lm!1477))))))

(assert (=> d!1363888 (= (forall!9998 (t!357371 (toList!4064 lm!1477)) lambda!163412) e!2783678)))

(declare-fun b!4470214 () Bool)

(declare-fun e!2783679 () Bool)

(assert (=> b!4470214 (= e!2783678 e!2783679)))

(declare-fun res!1854667 () Bool)

(assert (=> b!4470214 (=> (not res!1854667) (not e!2783679))))

(assert (=> b!4470214 (= res!1854667 (dynLambda!21018 lambda!163412 (h!56064 (t!357371 (toList!4064 lm!1477)))))))

(declare-fun b!4470215 () Bool)

(assert (=> b!4470215 (= e!2783679 (forall!9998 (t!357371 (t!357371 (toList!4064 lm!1477))) lambda!163412))))

(assert (= (and d!1363888 (not res!1854666)) b!4470214))

(assert (= (and b!4470214 res!1854667) b!4470215))

(declare-fun b_lambda!148461 () Bool)

(assert (=> (not b_lambda!148461) (not b!4470214)))

(declare-fun m!5177453 () Bool)

(assert (=> b!4470214 m!5177453))

(declare-fun m!5177455 () Bool)

(assert (=> b!4470215 m!5177455))

(assert (=> d!1363876 d!1363888))

(assert (=> d!1363832 d!1363842))

(assert (=> d!1363832 d!1363844))

(declare-fun d!1363890 () Bool)

(assert (=> d!1363890 (not (contains!12853 (extractMap!1084 (toList!4064 lm!1477)) key!3287))))

(assert (=> d!1363890 true))

(declare-fun _$26!242 () Unit!87799)

(assert (=> d!1363890 (= (choose!28601 lm!1477 key!3287 hashF!1107) _$26!242)))

(declare-fun bs!795383 () Bool)

(assert (= bs!795383 d!1363890))

(assert (=> bs!795383 m!5176949))

(assert (=> bs!795383 m!5176949))

(assert (=> bs!795383 m!5176951))

(assert (=> d!1363832 d!1363890))

(declare-fun d!1363894 () Bool)

(declare-fun res!1854683 () Bool)

(declare-fun e!2783689 () Bool)

(assert (=> d!1363894 (=> res!1854683 e!2783689)))

(assert (=> d!1363894 (= res!1854683 ((_ is Nil!50297) (toList!4064 lm!1477)))))

(assert (=> d!1363894 (= (forall!9998 (toList!4064 lm!1477) lambda!163399) e!2783689)))

(declare-fun b!4470231 () Bool)

(declare-fun e!2783690 () Bool)

(assert (=> b!4470231 (= e!2783689 e!2783690)))

(declare-fun res!1854684 () Bool)

(assert (=> b!4470231 (=> (not res!1854684) (not e!2783690))))

(assert (=> b!4470231 (= res!1854684 (dynLambda!21018 lambda!163399 (h!56064 (toList!4064 lm!1477))))))

(declare-fun b!4470232 () Bool)

(assert (=> b!4470232 (= e!2783690 (forall!9998 (t!357371 (toList!4064 lm!1477)) lambda!163399))))

(assert (= (and d!1363894 (not res!1854683)) b!4470231))

(assert (= (and b!4470231 res!1854684) b!4470232))

(declare-fun b_lambda!148463 () Bool)

(assert (=> (not b_lambda!148463) (not b!4470231)))

(declare-fun m!5177463 () Bool)

(assert (=> b!4470231 m!5177463))

(declare-fun m!5177465 () Bool)

(assert (=> b!4470232 m!5177465))

(assert (=> d!1363832 d!1363894))

(declare-fun d!1363896 () Bool)

(declare-fun res!1854689 () Bool)

(declare-fun e!2783695 () Bool)

(assert (=> d!1363896 (=> res!1854689 e!2783695)))

(assert (=> d!1363896 (= res!1854689 (and ((_ is Cons!50296) (toList!4063 lt!1658626)) (= (_1!28567 (h!56063 (toList!4063 lt!1658626))) key!3287)))))

(assert (=> d!1363896 (= (containsKey!1484 (toList!4063 lt!1658626) key!3287) e!2783695)))

(declare-fun b!4470239 () Bool)

(declare-fun e!2783696 () Bool)

(assert (=> b!4470239 (= e!2783695 e!2783696)))

(declare-fun res!1854690 () Bool)

(assert (=> b!4470239 (=> (not res!1854690) (not e!2783696))))

(assert (=> b!4470239 (= res!1854690 ((_ is Cons!50296) (toList!4063 lt!1658626)))))

(declare-fun b!4470240 () Bool)

(assert (=> b!4470240 (= e!2783696 (containsKey!1484 (t!357370 (toList!4063 lt!1658626)) key!3287))))

(assert (= (and d!1363896 (not res!1854689)) b!4470239))

(assert (= (and b!4470239 res!1854690) b!4470240))

(declare-fun m!5177481 () Bool)

(assert (=> b!4470240 m!5177481))

(assert (=> d!1363786 d!1363896))

(assert (=> b!4469955 d!1363752))

(declare-fun d!1363900 () Bool)

(declare-fun res!1854691 () Bool)

(declare-fun e!2783697 () Bool)

(assert (=> d!1363900 (=> res!1854691 e!2783697)))

(assert (=> d!1363900 (= res!1854691 (not ((_ is Cons!50296) (t!357370 newBucket!178))))))

(assert (=> d!1363900 (= (noDuplicateKeys!1028 (t!357370 newBucket!178)) e!2783697)))

(declare-fun b!4470241 () Bool)

(declare-fun e!2783698 () Bool)

(assert (=> b!4470241 (= e!2783697 e!2783698)))

(declare-fun res!1854692 () Bool)

(assert (=> b!4470241 (=> (not res!1854692) (not e!2783698))))

(assert (=> b!4470241 (= res!1854692 (not (containsKey!1480 (t!357370 (t!357370 newBucket!178)) (_1!28567 (h!56063 (t!357370 newBucket!178))))))))

(declare-fun b!4470242 () Bool)

(assert (=> b!4470242 (= e!2783698 (noDuplicateKeys!1028 (t!357370 (t!357370 newBucket!178))))))

(assert (= (and d!1363900 (not res!1854691)) b!4470241))

(assert (= (and b!4470241 res!1854692) b!4470242))

(declare-fun m!5177483 () Bool)

(assert (=> b!4470241 m!5177483))

(declare-fun m!5177485 () Bool)

(assert (=> b!4470242 m!5177485))

(assert (=> b!4470110 d!1363900))

(declare-fun d!1363902 () Bool)

(assert (=> d!1363902 (= (invariantList!931 (toList!4063 lt!1658816)) (noDuplicatedKeys!214 (toList!4063 lt!1658816)))))

(declare-fun bs!795384 () Bool)

(assert (= bs!795384 d!1363902))

(declare-fun m!5177487 () Bool)

(assert (=> bs!795384 m!5177487))

(assert (=> d!1363850 d!1363902))

(declare-fun d!1363904 () Bool)

(declare-fun res!1854693 () Bool)

(declare-fun e!2783699 () Bool)

(assert (=> d!1363904 (=> res!1854693 e!2783699)))

(assert (=> d!1363904 (= res!1854693 ((_ is Nil!50297) lt!1658621))))

(assert (=> d!1363904 (= (forall!9998 lt!1658621 lambda!163404) e!2783699)))

(declare-fun b!4470243 () Bool)

(declare-fun e!2783700 () Bool)

(assert (=> b!4470243 (= e!2783699 e!2783700)))

(declare-fun res!1854694 () Bool)

(assert (=> b!4470243 (=> (not res!1854694) (not e!2783700))))

(assert (=> b!4470243 (= res!1854694 (dynLambda!21018 lambda!163404 (h!56064 lt!1658621)))))

(declare-fun b!4470244 () Bool)

(assert (=> b!4470244 (= e!2783700 (forall!9998 (t!357371 lt!1658621) lambda!163404))))

(assert (= (and d!1363904 (not res!1854693)) b!4470243))

(assert (= (and b!4470243 res!1854694) b!4470244))

(declare-fun b_lambda!148465 () Bool)

(assert (=> (not b_lambda!148465) (not b!4470243)))

(declare-fun m!5177489 () Bool)

(assert (=> b!4470243 m!5177489))

(declare-fun m!5177491 () Bool)

(assert (=> b!4470244 m!5177491))

(assert (=> d!1363850 d!1363904))

(declare-fun d!1363906 () Bool)

(declare-fun lt!1658849 () Bool)

(assert (=> d!1363906 (= lt!1658849 (select (content!8115 (keys!17370 (extractMap!1084 (toList!4064 lm!1477)))) key!3287))))

(declare-fun e!2783705 () Bool)

(assert (=> d!1363906 (= lt!1658849 e!2783705)))

(declare-fun res!1854700 () Bool)

(assert (=> d!1363906 (=> (not res!1854700) (not e!2783705))))

(assert (=> d!1363906 (= res!1854700 ((_ is Cons!50299) (keys!17370 (extractMap!1084 (toList!4064 lm!1477)))))))

(assert (=> d!1363906 (= (contains!12855 (keys!17370 (extractMap!1084 (toList!4064 lm!1477))) key!3287) lt!1658849)))

(declare-fun b!4470249 () Bool)

(declare-fun e!2783706 () Bool)

(assert (=> b!4470249 (= e!2783705 e!2783706)))

(declare-fun res!1854699 () Bool)

(assert (=> b!4470249 (=> res!1854699 e!2783706)))

(assert (=> b!4470249 (= res!1854699 (= (h!56068 (keys!17370 (extractMap!1084 (toList!4064 lm!1477)))) key!3287))))

(declare-fun b!4470250 () Bool)

(assert (=> b!4470250 (= e!2783706 (contains!12855 (t!357373 (keys!17370 (extractMap!1084 (toList!4064 lm!1477)))) key!3287))))

(assert (= (and d!1363906 res!1854700) b!4470249))

(assert (= (and b!4470249 (not res!1854699)) b!4470250))

(assert (=> d!1363906 m!5177305))

(declare-fun m!5177495 () Bool)

(assert (=> d!1363906 m!5177495))

(declare-fun m!5177497 () Bool)

(assert (=> d!1363906 m!5177497))

(declare-fun m!5177499 () Bool)

(assert (=> b!4470250 m!5177499))

(assert (=> b!4470149 d!1363906))

(declare-fun b!4470270 () Bool)

(assert (=> b!4470270 true))

(declare-fun d!1363912 () Bool)

(declare-fun e!2783715 () Bool)

(assert (=> d!1363912 e!2783715))

(declare-fun res!1854709 () Bool)

(assert (=> d!1363912 (=> (not res!1854709) (not e!2783715))))

(declare-fun lt!1658852 () List!50423)

(declare-fun noDuplicate!700 (List!50423) Bool)

(assert (=> d!1363912 (= res!1854709 (noDuplicate!700 lt!1658852))))

(assert (=> d!1363912 (= lt!1658852 (getKeysList!379 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))))))

(assert (=> d!1363912 (= (keys!17370 (extractMap!1084 (toList!4064 lm!1477))) lt!1658852)))

(declare-fun b!4470269 () Bool)

(declare-fun res!1854708 () Bool)

(assert (=> b!4470269 (=> (not res!1854708) (not e!2783715))))

(declare-fun length!256 (List!50423) Int)

(declare-fun length!257 (List!50420) Int)

(assert (=> b!4470269 (= res!1854708 (= (length!256 lt!1658852) (length!257 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))))))

(declare-fun res!1854707 () Bool)

(assert (=> b!4470270 (=> (not res!1854707) (not e!2783715))))

(declare-fun lambda!163424 () Int)

(declare-fun forall!10002 (List!50423 Int) Bool)

(assert (=> b!4470270 (= res!1854707 (forall!10002 lt!1658852 lambda!163424))))

(declare-fun b!4470271 () Bool)

(declare-fun lambda!163425 () Int)

(declare-fun map!11025 (List!50420 Int) List!50423)

(assert (=> b!4470271 (= e!2783715 (= (content!8115 lt!1658852) (content!8115 (map!11025 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) lambda!163425))))))

(assert (= (and d!1363912 res!1854709) b!4470269))

(assert (= (and b!4470269 res!1854708) b!4470270))

(assert (= (and b!4470270 res!1854707) b!4470271))

(declare-fun m!5177503 () Bool)

(assert (=> d!1363912 m!5177503))

(assert (=> d!1363912 m!5177321))

(declare-fun m!5177505 () Bool)

(assert (=> b!4470269 m!5177505))

(declare-fun m!5177507 () Bool)

(assert (=> b!4470269 m!5177507))

(declare-fun m!5177509 () Bool)

(assert (=> b!4470270 m!5177509))

(declare-fun m!5177511 () Bool)

(assert (=> b!4470271 m!5177511))

(declare-fun m!5177513 () Bool)

(assert (=> b!4470271 m!5177513))

(assert (=> b!4470271 m!5177513))

(declare-fun m!5177515 () Bool)

(assert (=> b!4470271 m!5177515))

(assert (=> b!4470149 d!1363912))

(declare-fun d!1363916 () Bool)

(declare-fun res!1854710 () Bool)

(declare-fun e!2783716 () Bool)

(assert (=> d!1363916 (=> res!1854710 e!2783716)))

(assert (=> d!1363916 (= res!1854710 ((_ is Nil!50297) (toList!4064 lm!1477)))))

(assert (=> d!1363916 (= (forall!9998 (toList!4064 lm!1477) lambda!163411) e!2783716)))

(declare-fun b!4470274 () Bool)

(declare-fun e!2783717 () Bool)

(assert (=> b!4470274 (= e!2783716 e!2783717)))

(declare-fun res!1854711 () Bool)

(assert (=> b!4470274 (=> (not res!1854711) (not e!2783717))))

(assert (=> b!4470274 (= res!1854711 (dynLambda!21018 lambda!163411 (h!56064 (toList!4064 lm!1477))))))

(declare-fun b!4470275 () Bool)

(assert (=> b!4470275 (= e!2783717 (forall!9998 (t!357371 (toList!4064 lm!1477)) lambda!163411))))

(assert (= (and d!1363916 (not res!1854710)) b!4470274))

(assert (= (and b!4470274 res!1854711) b!4470275))

(declare-fun b_lambda!148469 () Bool)

(assert (=> (not b_lambda!148469) (not b!4470274)))

(declare-fun m!5177517 () Bool)

(assert (=> b!4470274 m!5177517))

(declare-fun m!5177519 () Bool)

(assert (=> b!4470275 m!5177519))

(assert (=> d!1363872 d!1363916))

(declare-fun bs!795398 () Bool)

(declare-fun b!4470367 () Bool)

(assert (= bs!795398 (and b!4470367 d!1363818)))

(declare-fun lambda!163466 () Int)

(assert (=> bs!795398 (not (= lambda!163466 lambda!163394))))

(assert (=> b!4470367 true))

(declare-fun bs!795399 () Bool)

(declare-fun b!4470368 () Bool)

(assert (= bs!795399 (and b!4470368 d!1363818)))

(declare-fun lambda!163467 () Int)

(assert (=> bs!795399 (not (= lambda!163467 lambda!163394))))

(declare-fun bs!795400 () Bool)

(assert (= bs!795400 (and b!4470368 b!4470367)))

(assert (=> bs!795400 (= lambda!163467 lambda!163466)))

(assert (=> b!4470368 true))

(declare-fun lambda!163468 () Int)

(assert (=> bs!795399 (not (= lambda!163468 lambda!163394))))

(declare-fun lt!1658931 () ListMap!3325)

(assert (=> bs!795400 (= (= lt!1658931 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163468 lambda!163466))))

(assert (=> b!4470368 (= (= lt!1658931 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163468 lambda!163467))))

(assert (=> b!4470368 true))

(declare-fun bs!795401 () Bool)

(declare-fun d!1363918 () Bool)

(assert (= bs!795401 (and d!1363918 d!1363818)))

(declare-fun lambda!163469 () Int)

(assert (=> bs!795401 (not (= lambda!163469 lambda!163394))))

(declare-fun bs!795402 () Bool)

(assert (= bs!795402 (and d!1363918 b!4470367)))

(declare-fun lt!1658930 () ListMap!3325)

(assert (=> bs!795402 (= (= lt!1658930 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163469 lambda!163466))))

(declare-fun bs!795403 () Bool)

(assert (= bs!795403 (and d!1363918 b!4470368)))

(assert (=> bs!795403 (= (= lt!1658930 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163469 lambda!163467))))

(assert (=> bs!795403 (= (= lt!1658930 lt!1658931) (= lambda!163469 lambda!163468))))

(assert (=> d!1363918 true))

(declare-fun bm!311226 () Bool)

(declare-fun call!311233 () Unit!87799)

(declare-fun lemmaContainsAllItsOwnKeys!268 (ListMap!3325) Unit!87799)

(assert (=> bm!311226 (= call!311233 (lemmaContainsAllItsOwnKeys!268 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))))))

(declare-fun bm!311227 () Bool)

(declare-fun c!761078 () Bool)

(declare-fun lt!1658927 () ListMap!3325)

(declare-fun call!311231 () Bool)

(assert (=> bm!311227 (= call!311231 (forall!10000 (ite c!761078 (toList!4063 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (toList!4063 lt!1658927)) (ite c!761078 lambda!163466 lambda!163468)))))

(declare-fun e!2783770 () ListMap!3325)

(assert (=> b!4470367 (= e!2783770 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477)))))))

(declare-fun lt!1658923 () Unit!87799)

(assert (=> b!4470367 (= lt!1658923 call!311233)))

(declare-fun call!311232 () Bool)

(assert (=> b!4470367 call!311232))

(declare-fun lt!1658939 () Unit!87799)

(assert (=> b!4470367 (= lt!1658939 lt!1658923)))

(assert (=> b!4470367 call!311231))

(declare-fun lt!1658921 () Unit!87799)

(declare-fun Unit!87819 () Unit!87799)

(assert (=> b!4470367 (= lt!1658921 Unit!87819)))

(assert (=> b!4470368 (= e!2783770 lt!1658931)))

(declare-fun +!1373 (ListMap!3325 tuple2!50546) ListMap!3325)

(assert (=> b!4470368 (= lt!1658927 (+!1373 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477)))) (h!56063 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477)))))))))

(assert (=> b!4470368 (= lt!1658931 (addToMapMapFromBucket!593 (t!357370 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477))))) (+!1373 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477)))) (h!56063 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477))))))))))

(declare-fun lt!1658933 () Unit!87799)

(assert (=> b!4470368 (= lt!1658933 call!311233)))

(assert (=> b!4470368 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) lambda!163467)))

(declare-fun lt!1658935 () Unit!87799)

(assert (=> b!4470368 (= lt!1658935 lt!1658933)))

(assert (=> b!4470368 call!311231))

(declare-fun lt!1658925 () Unit!87799)

(declare-fun Unit!87822 () Unit!87799)

(assert (=> b!4470368 (= lt!1658925 Unit!87822)))

(assert (=> b!4470368 (forall!10000 (t!357370 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477))))) lambda!163468)))

(declare-fun lt!1658926 () Unit!87799)

(declare-fun Unit!87823 () Unit!87799)

(assert (=> b!4470368 (= lt!1658926 Unit!87823)))

(declare-fun lt!1658922 () Unit!87799)

(declare-fun Unit!87824 () Unit!87799)

(assert (=> b!4470368 (= lt!1658922 Unit!87824)))

(declare-fun lt!1658937 () Unit!87799)

(declare-fun forallContained!2267 (List!50420 Int tuple2!50546) Unit!87799)

(assert (=> b!4470368 (= lt!1658937 (forallContained!2267 (toList!4063 lt!1658927) lambda!163468 (h!56063 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477)))))))))

(assert (=> b!4470368 (contains!12853 lt!1658927 (_1!28567 (h!56063 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477)))))))))

(declare-fun lt!1658938 () Unit!87799)

(declare-fun Unit!87825 () Unit!87799)

(assert (=> b!4470368 (= lt!1658938 Unit!87825)))

(assert (=> b!4470368 (contains!12853 lt!1658931 (_1!28567 (h!56063 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477)))))))))

(declare-fun lt!1658924 () Unit!87799)

(declare-fun Unit!87826 () Unit!87799)

(assert (=> b!4470368 (= lt!1658924 Unit!87826)))

(assert (=> b!4470368 (forall!10000 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477)))) lambda!163468)))

(declare-fun lt!1658940 () Unit!87799)

(declare-fun Unit!87827 () Unit!87799)

(assert (=> b!4470368 (= lt!1658940 Unit!87827)))

(assert (=> b!4470368 (forall!10000 (toList!4063 lt!1658927) lambda!163468)))

(declare-fun lt!1658934 () Unit!87799)

(declare-fun Unit!87828 () Unit!87799)

(assert (=> b!4470368 (= lt!1658934 Unit!87828)))

(declare-fun lt!1658936 () Unit!87799)

(declare-fun Unit!87829 () Unit!87799)

(assert (=> b!4470368 (= lt!1658936 Unit!87829)))

(declare-fun lt!1658941 () Unit!87799)

(declare-fun addForallContainsKeyThenBeforeAdding!267 (ListMap!3325 ListMap!3325 K!11710 V!11956) Unit!87799)

(assert (=> b!4470368 (= lt!1658941 (addForallContainsKeyThenBeforeAdding!267 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477)))) lt!1658931 (_1!28567 (h!56063 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477)))))) (_2!28567 (h!56063 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477))))))))))

(assert (=> b!4470368 call!311232))

(declare-fun lt!1658932 () Unit!87799)

(assert (=> b!4470368 (= lt!1658932 lt!1658941)))

(assert (=> b!4470368 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) lambda!163468)))

(declare-fun lt!1658928 () Unit!87799)

(declare-fun Unit!87830 () Unit!87799)

(assert (=> b!4470368 (= lt!1658928 Unit!87830)))

(declare-fun res!1854743 () Bool)

(assert (=> b!4470368 (= res!1854743 (forall!10000 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477)))) lambda!163468))))

(declare-fun e!2783771 () Bool)

(assert (=> b!4470368 (=> (not res!1854743) (not e!2783771))))

(assert (=> b!4470368 e!2783771))

(declare-fun lt!1658929 () Unit!87799)

(declare-fun Unit!87831 () Unit!87799)

(assert (=> b!4470368 (= lt!1658929 Unit!87831)))

(declare-fun b!4470369 () Bool)

(assert (=> b!4470369 (= e!2783771 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) lambda!163468))))

(declare-fun b!4470370 () Bool)

(declare-fun e!2783769 () Bool)

(assert (=> b!4470370 (= e!2783769 (invariantList!931 (toList!4063 lt!1658930)))))

(declare-fun bm!311228 () Bool)

(assert (=> bm!311228 (= call!311232 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (ite c!761078 lambda!163466 lambda!163468)))))

(declare-fun b!4470366 () Bool)

(declare-fun res!1854742 () Bool)

(assert (=> b!4470366 (=> (not res!1854742) (not e!2783769))))

(assert (=> b!4470366 (= res!1854742 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) lambda!163469))))

(assert (=> d!1363918 e!2783769))

(declare-fun res!1854744 () Bool)

(assert (=> d!1363918 (=> (not res!1854744) (not e!2783769))))

(assert (=> d!1363918 (= res!1854744 (forall!10000 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477)))) lambda!163469))))

(assert (=> d!1363918 (= lt!1658930 e!2783770)))

(assert (=> d!1363918 (= c!761078 ((_ is Nil!50296) (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477))))))))

(assert (=> d!1363918 (noDuplicateKeys!1028 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477)))))))

(assert (=> d!1363918 (= (addToMapMapFromBucket!593 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477)))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) lt!1658930)))

(assert (= (and d!1363918 c!761078) b!4470367))

(assert (= (and d!1363918 (not c!761078)) b!4470368))

(assert (= (and b!4470368 res!1854743) b!4470369))

(assert (= (or b!4470367 b!4470368) bm!311228))

(assert (= (or b!4470367 b!4470368) bm!311227))

(assert (= (or b!4470367 b!4470368) bm!311226))

(assert (= (and d!1363918 res!1854744) b!4470366))

(assert (= (and b!4470366 res!1854742) b!4470370))

(declare-fun m!5177595 () Bool)

(assert (=> bm!311227 m!5177595))

(declare-fun m!5177597 () Bool)

(assert (=> bm!311228 m!5177597))

(declare-fun m!5177599 () Bool)

(assert (=> d!1363918 m!5177599))

(declare-fun m!5177601 () Bool)

(assert (=> d!1363918 m!5177601))

(assert (=> bm!311226 m!5177437))

(declare-fun m!5177603 () Bool)

(assert (=> bm!311226 m!5177603))

(declare-fun m!5177605 () Bool)

(assert (=> b!4470366 m!5177605))

(declare-fun m!5177607 () Bool)

(assert (=> b!4470370 m!5177607))

(declare-fun m!5177609 () Bool)

(assert (=> b!4470368 m!5177609))

(declare-fun m!5177611 () Bool)

(assert (=> b!4470368 m!5177611))

(declare-fun m!5177613 () Bool)

(assert (=> b!4470368 m!5177613))

(declare-fun m!5177615 () Bool)

(assert (=> b!4470368 m!5177615))

(assert (=> b!4470368 m!5177437))

(declare-fun m!5177617 () Bool)

(assert (=> b!4470368 m!5177617))

(declare-fun m!5177619 () Bool)

(assert (=> b!4470368 m!5177619))

(assert (=> b!4470368 m!5177437))

(assert (=> b!4470368 m!5177609))

(declare-fun m!5177621 () Bool)

(assert (=> b!4470368 m!5177621))

(declare-fun m!5177623 () Bool)

(assert (=> b!4470368 m!5177623))

(assert (=> b!4470368 m!5177623))

(declare-fun m!5177625 () Bool)

(assert (=> b!4470368 m!5177625))

(declare-fun m!5177627 () Bool)

(assert (=> b!4470368 m!5177627))

(declare-fun m!5177629 () Bool)

(assert (=> b!4470368 m!5177629))

(assert (=> b!4470369 m!5177627))

(assert (=> b!4470200 d!1363918))

(declare-fun bs!795404 () Bool)

(declare-fun d!1363956 () Bool)

(assert (= bs!795404 (and d!1363956 d!1363876)))

(declare-fun lambda!163470 () Int)

(assert (=> bs!795404 (= lambda!163470 lambda!163412)))

(declare-fun bs!795405 () Bool)

(assert (= bs!795405 (and d!1363956 d!1363856)))

(assert (=> bs!795405 (= lambda!163470 lambda!163407)))

(declare-fun bs!795406 () Bool)

(assert (= bs!795406 (and d!1363956 d!1363756)))

(assert (=> bs!795406 (= lambda!163470 lambda!163373)))

(declare-fun bs!795407 () Bool)

(assert (= bs!795407 (and d!1363956 start!439252)))

(assert (=> bs!795407 (= lambda!163470 lambda!163367)))

(declare-fun bs!795408 () Bool)

(assert (= bs!795408 (and d!1363956 d!1363862)))

(assert (=> bs!795408 (= lambda!163470 lambda!163408)))

(declare-fun bs!795409 () Bool)

(assert (= bs!795409 (and d!1363956 d!1363872)))

(assert (=> bs!795409 (not (= lambda!163470 lambda!163411))))

(declare-fun bs!795410 () Bool)

(assert (= bs!795410 (and d!1363956 d!1363878)))

(assert (=> bs!795410 (= lambda!163470 lambda!163413)))

(declare-fun bs!795411 () Bool)

(assert (= bs!795411 (and d!1363956 d!1363844)))

(assert (=> bs!795411 (= lambda!163470 lambda!163402)))

(declare-fun bs!795412 () Bool)

(assert (= bs!795412 (and d!1363956 d!1363848)))

(assert (=> bs!795412 (= lambda!163470 lambda!163403)))

(declare-fun bs!795413 () Bool)

(assert (= bs!795413 (and d!1363956 d!1363832)))

(assert (=> bs!795413 (= lambda!163470 lambda!163399)))

(declare-fun bs!795414 () Bool)

(assert (= bs!795414 (and d!1363956 d!1363850)))

(assert (=> bs!795414 (= lambda!163470 lambda!163404)))

(declare-fun lt!1658942 () ListMap!3325)

(assert (=> d!1363956 (invariantList!931 (toList!4063 lt!1658942))))

(declare-fun e!2783772 () ListMap!3325)

(assert (=> d!1363956 (= lt!1658942 e!2783772)))

(declare-fun c!761079 () Bool)

(assert (=> d!1363956 (= c!761079 ((_ is Cons!50297) (t!357371 (t!357371 (toList!4064 lm!1477)))))))

(assert (=> d!1363956 (forall!9998 (t!357371 (t!357371 (toList!4064 lm!1477))) lambda!163470)))

(assert (=> d!1363956 (= (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477)))) lt!1658942)))

(declare-fun b!4470373 () Bool)

(assert (=> b!4470373 (= e!2783772 (addToMapMapFromBucket!593 (_2!28568 (h!56064 (t!357371 (t!357371 (toList!4064 lm!1477))))) (extractMap!1084 (t!357371 (t!357371 (t!357371 (toList!4064 lm!1477)))))))))

(declare-fun b!4470374 () Bool)

(assert (=> b!4470374 (= e!2783772 (ListMap!3326 Nil!50296))))

(assert (= (and d!1363956 c!761079) b!4470373))

(assert (= (and d!1363956 (not c!761079)) b!4470374))

(declare-fun m!5177631 () Bool)

(assert (=> d!1363956 m!5177631))

(declare-fun m!5177633 () Bool)

(assert (=> d!1363956 m!5177633))

(declare-fun m!5177635 () Bool)

(assert (=> b!4470373 m!5177635))

(assert (=> b!4470373 m!5177635))

(declare-fun m!5177637 () Bool)

(assert (=> b!4470373 m!5177637))

(assert (=> b!4470200 d!1363956))

(declare-fun d!1363958 () Bool)

(declare-fun res!1854745 () Bool)

(declare-fun e!2783773 () Bool)

(assert (=> d!1363958 (=> res!1854745 e!2783773)))

(assert (=> d!1363958 (= res!1854745 (and ((_ is Cons!50296) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (= (_1!28567 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) key!3287)))))

(assert (=> d!1363958 (= (containsKey!1484 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287) e!2783773)))

(declare-fun b!4470375 () Bool)

(declare-fun e!2783774 () Bool)

(assert (=> b!4470375 (= e!2783773 e!2783774)))

(declare-fun res!1854746 () Bool)

(assert (=> b!4470375 (=> (not res!1854746) (not e!2783774))))

(assert (=> b!4470375 (= res!1854746 ((_ is Cons!50296) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))))))

(declare-fun b!4470376 () Bool)

(assert (=> b!4470376 (= e!2783774 (containsKey!1484 (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) key!3287))))

(assert (= (and d!1363958 (not res!1854745)) b!4470375))

(assert (= (and b!4470375 res!1854746) b!4470376))

(declare-fun m!5177639 () Bool)

(assert (=> b!4470376 m!5177639))

(assert (=> d!1363842 d!1363958))

(declare-fun d!1363960 () Bool)

(assert (=> d!1363960 (= (invariantList!931 (toList!4063 lt!1658840)) (noDuplicatedKeys!214 (toList!4063 lt!1658840)))))

(declare-fun bs!795415 () Bool)

(assert (= bs!795415 d!1363960))

(declare-fun m!5177641 () Bool)

(assert (=> bs!795415 m!5177641))

(assert (=> d!1363878 d!1363960))

(declare-fun d!1363962 () Bool)

(declare-fun res!1854747 () Bool)

(declare-fun e!2783775 () Bool)

(assert (=> d!1363962 (=> res!1854747 e!2783775)))

(assert (=> d!1363962 (= res!1854747 ((_ is Nil!50297) (toList!4064 lt!1658620)))))

(assert (=> d!1363962 (= (forall!9998 (toList!4064 lt!1658620) lambda!163413) e!2783775)))

(declare-fun b!4470377 () Bool)

(declare-fun e!2783776 () Bool)

(assert (=> b!4470377 (= e!2783775 e!2783776)))

(declare-fun res!1854748 () Bool)

(assert (=> b!4470377 (=> (not res!1854748) (not e!2783776))))

(assert (=> b!4470377 (= res!1854748 (dynLambda!21018 lambda!163413 (h!56064 (toList!4064 lt!1658620))))))

(declare-fun b!4470378 () Bool)

(assert (=> b!4470378 (= e!2783776 (forall!9998 (t!357371 (toList!4064 lt!1658620)) lambda!163413))))

(assert (= (and d!1363962 (not res!1854747)) b!4470377))

(assert (= (and b!4470377 res!1854748) b!4470378))

(declare-fun b_lambda!148475 () Bool)

(assert (=> (not b_lambda!148475) (not b!4470377)))

(declare-fun m!5177643 () Bool)

(assert (=> b!4470377 m!5177643))

(declare-fun m!5177645 () Bool)

(assert (=> b!4470378 m!5177645))

(assert (=> d!1363878 d!1363962))

(declare-fun d!1363964 () Bool)

(declare-fun lt!1658943 () Bool)

(assert (=> d!1363964 (= lt!1658943 (select (content!8115 (keys!17370 lt!1658626)) key!3287))))

(declare-fun e!2783777 () Bool)

(assert (=> d!1363964 (= lt!1658943 e!2783777)))

(declare-fun res!1854750 () Bool)

(assert (=> d!1363964 (=> (not res!1854750) (not e!2783777))))

(assert (=> d!1363964 (= res!1854750 ((_ is Cons!50299) (keys!17370 lt!1658626)))))

(assert (=> d!1363964 (= (contains!12855 (keys!17370 lt!1658626) key!3287) lt!1658943)))

(declare-fun b!4470379 () Bool)

(declare-fun e!2783778 () Bool)

(assert (=> b!4470379 (= e!2783777 e!2783778)))

(declare-fun res!1854749 () Bool)

(assert (=> b!4470379 (=> res!1854749 e!2783778)))

(assert (=> b!4470379 (= res!1854749 (= (h!56068 (keys!17370 lt!1658626)) key!3287))))

(declare-fun b!4470380 () Bool)

(assert (=> b!4470380 (= e!2783778 (contains!12855 (t!357373 (keys!17370 lt!1658626)) key!3287))))

(assert (= (and d!1363964 res!1854750) b!4470379))

(assert (= (and b!4470379 (not res!1854749)) b!4470380))

(assert (=> d!1363964 m!5177199))

(declare-fun m!5177647 () Bool)

(assert (=> d!1363964 m!5177647))

(declare-fun m!5177649 () Bool)

(assert (=> d!1363964 m!5177649))

(declare-fun m!5177651 () Bool)

(assert (=> b!4470380 m!5177651))

(assert (=> b!4470083 d!1363964))

(declare-fun bs!795416 () Bool)

(declare-fun b!4470382 () Bool)

(assert (= bs!795416 (and b!4470382 b!4470270)))

(declare-fun lambda!163471 () Int)

(assert (=> bs!795416 (= (= (toList!4063 lt!1658626) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (= lambda!163471 lambda!163424))))

(assert (=> b!4470382 true))

(declare-fun bs!795417 () Bool)

(declare-fun b!4470383 () Bool)

(assert (= bs!795417 (and b!4470383 b!4470271)))

(declare-fun lambda!163472 () Int)

(assert (=> bs!795417 (= lambda!163472 lambda!163425)))

(declare-fun d!1363966 () Bool)

(declare-fun e!2783779 () Bool)

(assert (=> d!1363966 e!2783779))

(declare-fun res!1854753 () Bool)

(assert (=> d!1363966 (=> (not res!1854753) (not e!2783779))))

(declare-fun lt!1658944 () List!50423)

(assert (=> d!1363966 (= res!1854753 (noDuplicate!700 lt!1658944))))

(assert (=> d!1363966 (= lt!1658944 (getKeysList!379 (toList!4063 lt!1658626)))))

(assert (=> d!1363966 (= (keys!17370 lt!1658626) lt!1658944)))

(declare-fun b!4470381 () Bool)

(declare-fun res!1854752 () Bool)

(assert (=> b!4470381 (=> (not res!1854752) (not e!2783779))))

(assert (=> b!4470381 (= res!1854752 (= (length!256 lt!1658944) (length!257 (toList!4063 lt!1658626))))))

(declare-fun res!1854751 () Bool)

(assert (=> b!4470382 (=> (not res!1854751) (not e!2783779))))

(assert (=> b!4470382 (= res!1854751 (forall!10002 lt!1658944 lambda!163471))))

(assert (=> b!4470383 (= e!2783779 (= (content!8115 lt!1658944) (content!8115 (map!11025 (toList!4063 lt!1658626) lambda!163472))))))

(assert (= (and d!1363966 res!1854753) b!4470381))

(assert (= (and b!4470381 res!1854752) b!4470382))

(assert (= (and b!4470382 res!1854751) b!4470383))

(declare-fun m!5177653 () Bool)

(assert (=> d!1363966 m!5177653))

(assert (=> d!1363966 m!5177221))

(declare-fun m!5177655 () Bool)

(assert (=> b!4470381 m!5177655))

(declare-fun m!5177657 () Bool)

(assert (=> b!4470381 m!5177657))

(declare-fun m!5177659 () Bool)

(assert (=> b!4470382 m!5177659))

(declare-fun m!5177661 () Bool)

(assert (=> b!4470383 m!5177661))

(declare-fun m!5177663 () Bool)

(assert (=> b!4470383 m!5177663))

(assert (=> b!4470383 m!5177663))

(declare-fun m!5177665 () Bool)

(assert (=> b!4470383 m!5177665))

(assert (=> b!4470083 d!1363966))

(declare-fun b!4470385 () Bool)

(declare-fun e!2783781 () List!50420)

(declare-fun e!2783780 () List!50420)

(assert (=> b!4470385 (= e!2783781 e!2783780)))

(declare-fun c!761081 () Bool)

(assert (=> b!4470385 (= c!761081 ((_ is Cons!50296) (t!357370 lt!1658619)))))

(declare-fun b!4470384 () Bool)

(assert (=> b!4470384 (= e!2783781 (t!357370 (t!357370 lt!1658619)))))

(declare-fun b!4470386 () Bool)

(assert (=> b!4470386 (= e!2783780 (Cons!50296 (h!56063 (t!357370 lt!1658619)) (removePairForKey!655 (t!357370 (t!357370 lt!1658619)) key!3287)))))

(declare-fun d!1363968 () Bool)

(declare-fun lt!1658945 () List!50420)

(assert (=> d!1363968 (not (containsKey!1480 lt!1658945 key!3287))))

(assert (=> d!1363968 (= lt!1658945 e!2783781)))

(declare-fun c!761080 () Bool)

(assert (=> d!1363968 (= c!761080 (and ((_ is Cons!50296) (t!357370 lt!1658619)) (= (_1!28567 (h!56063 (t!357370 lt!1658619))) key!3287)))))

(assert (=> d!1363968 (noDuplicateKeys!1028 (t!357370 lt!1658619))))

(assert (=> d!1363968 (= (removePairForKey!655 (t!357370 lt!1658619) key!3287) lt!1658945)))

(declare-fun b!4470387 () Bool)

(assert (=> b!4470387 (= e!2783780 Nil!50296)))

(assert (= (and d!1363968 c!761080) b!4470384))

(assert (= (and d!1363968 (not c!761080)) b!4470385))

(assert (= (and b!4470385 c!761081) b!4470386))

(assert (= (and b!4470385 (not c!761081)) b!4470387))

(declare-fun m!5177667 () Bool)

(assert (=> b!4470386 m!5177667))

(declare-fun m!5177669 () Bool)

(assert (=> d!1363968 m!5177669))

(declare-fun m!5177671 () Bool)

(assert (=> d!1363968 m!5177671))

(assert (=> b!4469969 d!1363968))

(declare-fun d!1363970 () Bool)

(declare-fun res!1854754 () Bool)

(declare-fun e!2783782 () Bool)

(assert (=> d!1363970 (=> res!1854754 e!2783782)))

(assert (=> d!1363970 (= res!1854754 (and ((_ is Cons!50296) (t!357370 (_2!28568 (h!56064 (toList!4064 lm!1477))))) (= (_1!28567 (h!56063 (t!357370 (_2!28568 (h!56064 (toList!4064 lm!1477)))))) key!3287)))))

(assert (=> d!1363970 (= (containsKey!1480 (t!357370 (_2!28568 (h!56064 (toList!4064 lm!1477)))) key!3287) e!2783782)))

(declare-fun b!4470388 () Bool)

(declare-fun e!2783783 () Bool)

(assert (=> b!4470388 (= e!2783782 e!2783783)))

(declare-fun res!1854755 () Bool)

(assert (=> b!4470388 (=> (not res!1854755) (not e!2783783))))

(assert (=> b!4470388 (= res!1854755 ((_ is Cons!50296) (t!357370 (_2!28568 (h!56064 (toList!4064 lm!1477))))))))

(declare-fun b!4470389 () Bool)

(assert (=> b!4470389 (= e!2783783 (containsKey!1480 (t!357370 (t!357370 (_2!28568 (h!56064 (toList!4064 lm!1477))))) key!3287))))

(assert (= (and d!1363970 (not res!1854754)) b!4470388))

(assert (= (and b!4470388 res!1854755) b!4470389))

(declare-fun m!5177673 () Bool)

(assert (=> b!4470389 m!5177673))

(assert (=> b!4470014 d!1363970))

(assert (=> b!4470155 d!1363958))

(declare-fun d!1363972 () Bool)

(assert (=> d!1363972 (containsKey!1484 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287)))

(declare-fun lt!1658948 () Unit!87799)

(declare-fun choose!28604 (List!50420 K!11710) Unit!87799)

(assert (=> d!1363972 (= lt!1658948 (choose!28604 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287))))

(assert (=> d!1363972 (invariantList!931 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))))

(assert (=> d!1363972 (= (lemmaInGetKeysListThenContainsKey!378 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287) lt!1658948)))

(declare-fun bs!795418 () Bool)

(assert (= bs!795418 d!1363972))

(assert (=> bs!795418 m!5177317))

(declare-fun m!5177675 () Bool)

(assert (=> bs!795418 m!5177675))

(declare-fun m!5177677 () Bool)

(assert (=> bs!795418 m!5177677))

(assert (=> b!4470155 d!1363972))

(declare-fun d!1363974 () Bool)

(declare-fun res!1854756 () Bool)

(declare-fun e!2783784 () Bool)

(assert (=> d!1363974 (=> res!1854756 e!2783784)))

(assert (=> d!1363974 (= res!1854756 ((_ is Nil!50297) (t!357371 (toList!4064 lm!1477))))))

(assert (=> d!1363974 (= (forall!9998 (t!357371 (toList!4064 lm!1477)) lambda!163367) e!2783784)))

(declare-fun b!4470390 () Bool)

(declare-fun e!2783785 () Bool)

(assert (=> b!4470390 (= e!2783784 e!2783785)))

(declare-fun res!1854757 () Bool)

(assert (=> b!4470390 (=> (not res!1854757) (not e!2783785))))

(assert (=> b!4470390 (= res!1854757 (dynLambda!21018 lambda!163367 (h!56064 (t!357371 (toList!4064 lm!1477)))))))

(declare-fun b!4470391 () Bool)

(assert (=> b!4470391 (= e!2783785 (forall!9998 (t!357371 (t!357371 (toList!4064 lm!1477))) lambda!163367))))

(assert (= (and d!1363974 (not res!1854756)) b!4470390))

(assert (= (and b!4470390 res!1854757) b!4470391))

(declare-fun b_lambda!148477 () Bool)

(assert (=> (not b_lambda!148477) (not b!4470390)))

(declare-fun m!5177679 () Bool)

(assert (=> b!4470390 m!5177679))

(declare-fun m!5177681 () Bool)

(assert (=> b!4470391 m!5177681))

(assert (=> b!4470197 d!1363974))

(declare-fun d!1363976 () Bool)

(declare-fun lt!1658949 () Bool)

(assert (=> d!1363976 (= lt!1658949 (select (content!8115 e!2783596) key!3287))))

(declare-fun e!2783786 () Bool)

(assert (=> d!1363976 (= lt!1658949 e!2783786)))

(declare-fun res!1854759 () Bool)

(assert (=> d!1363976 (=> (not res!1854759) (not e!2783786))))

(assert (=> d!1363976 (= res!1854759 ((_ is Cons!50299) e!2783596))))

(assert (=> d!1363976 (= (contains!12855 e!2783596 key!3287) lt!1658949)))

(declare-fun b!4470392 () Bool)

(declare-fun e!2783787 () Bool)

(assert (=> b!4470392 (= e!2783786 e!2783787)))

(declare-fun res!1854758 () Bool)

(assert (=> b!4470392 (=> res!1854758 e!2783787)))

(assert (=> b!4470392 (= res!1854758 (= (h!56068 e!2783596) key!3287))))

(declare-fun b!4470393 () Bool)

(assert (=> b!4470393 (= e!2783787 (contains!12855 (t!357373 e!2783596) key!3287))))

(assert (= (and d!1363976 res!1854759) b!4470392))

(assert (= (and b!4470392 (not res!1854758)) b!4470393))

(declare-fun m!5177683 () Bool)

(assert (=> d!1363976 m!5177683))

(declare-fun m!5177685 () Bool)

(assert (=> d!1363976 m!5177685))

(declare-fun m!5177687 () Bool)

(assert (=> b!4470393 m!5177687))

(assert (=> bm!311216 d!1363976))

(declare-fun bs!795419 () Bool)

(declare-fun b!4470421 () Bool)

(assert (= bs!795419 (and b!4470421 b!4470270)))

(declare-fun lambda!163493 () Int)

(assert (=> bs!795419 (= (= (t!357370 (toList!4063 (extractMap!1084 lt!1658621))) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (= lambda!163493 lambda!163424))))

(declare-fun bs!795420 () Bool)

(assert (= bs!795420 (and b!4470421 b!4470382)))

(assert (=> bs!795420 (= (= (t!357370 (toList!4063 (extractMap!1084 lt!1658621))) (toList!4063 lt!1658626)) (= lambda!163493 lambda!163471))))

(assert (=> b!4470421 true))

(declare-fun bs!795421 () Bool)

(declare-fun b!4470423 () Bool)

(assert (= bs!795421 (and b!4470423 b!4470270)))

(declare-fun lambda!163494 () Int)

(assert (=> bs!795421 (= (= (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (= lambda!163494 lambda!163424))))

(declare-fun bs!795422 () Bool)

(assert (= bs!795422 (and b!4470423 b!4470382)))

(assert (=> bs!795422 (= (= (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) (toList!4063 lt!1658626)) (= lambda!163494 lambda!163471))))

(declare-fun bs!795423 () Bool)

(assert (= bs!795423 (and b!4470423 b!4470421)))

(assert (=> bs!795423 (= (= (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) (= lambda!163494 lambda!163493))))

(assert (=> b!4470423 true))

(declare-fun bs!795424 () Bool)

(declare-fun b!4470424 () Bool)

(assert (= bs!795424 (and b!4470424 b!4470270)))

(declare-fun lambda!163497 () Int)

(assert (=> bs!795424 (= (= (toList!4063 (extractMap!1084 lt!1658621)) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (= lambda!163497 lambda!163424))))

(declare-fun bs!795425 () Bool)

(assert (= bs!795425 (and b!4470424 b!4470382)))

(assert (=> bs!795425 (= (= (toList!4063 (extractMap!1084 lt!1658621)) (toList!4063 lt!1658626)) (= lambda!163497 lambda!163471))))

(declare-fun bs!795426 () Bool)

(assert (= bs!795426 (and b!4470424 b!4470421)))

(assert (=> bs!795426 (= (= (toList!4063 (extractMap!1084 lt!1658621)) (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) (= lambda!163497 lambda!163493))))

(declare-fun bs!795427 () Bool)

(assert (= bs!795427 (and b!4470424 b!4470423)))

(assert (=> bs!795427 (= (= (toList!4063 (extractMap!1084 lt!1658621)) (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621))))) (= lambda!163497 lambda!163494))))

(assert (=> b!4470424 true))

(declare-fun bs!795428 () Bool)

(declare-fun b!4470422 () Bool)

(assert (= bs!795428 (and b!4470422 b!4470271)))

(declare-fun lambda!163500 () Int)

(assert (=> bs!795428 (= lambda!163500 lambda!163425)))

(declare-fun bs!795429 () Bool)

(assert (= bs!795429 (and b!4470422 b!4470383)))

(assert (=> bs!795429 (= lambda!163500 lambda!163472)))

(declare-fun b!4470416 () Bool)

(assert (=> b!4470416 false))

(declare-fun e!2783798 () Unit!87799)

(declare-fun Unit!87833 () Unit!87799)

(assert (=> b!4470416 (= e!2783798 Unit!87833)))

(declare-fun d!1363978 () Bool)

(declare-fun e!2783799 () Bool)

(assert (=> d!1363978 e!2783799))

(declare-fun res!1854768 () Bool)

(assert (=> d!1363978 (=> (not res!1854768) (not e!2783799))))

(declare-fun lt!1658990 () List!50423)

(assert (=> d!1363978 (= res!1854768 (noDuplicate!700 lt!1658990))))

(declare-fun e!2783800 () List!50423)

(assert (=> d!1363978 (= lt!1658990 e!2783800)))

(declare-fun c!761090 () Bool)

(assert (=> d!1363978 (= c!761090 ((_ is Cons!50296) (toList!4063 (extractMap!1084 lt!1658621))))))

(assert (=> d!1363978 (invariantList!931 (toList!4063 (extractMap!1084 lt!1658621)))))

(assert (=> d!1363978 (= (getKeysList!379 (toList!4063 (extractMap!1084 lt!1658621))) lt!1658990)))

(declare-fun b!4470417 () Bool)

(declare-fun e!2783801 () Unit!87799)

(declare-fun Unit!87835 () Unit!87799)

(assert (=> b!4470417 (= e!2783801 Unit!87835)))

(declare-fun b!4470418 () Bool)

(assert (=> b!4470418 (= e!2783800 Nil!50299)))

(declare-fun b!4470419 () Bool)

(declare-fun res!1854767 () Bool)

(assert (=> b!4470419 (=> (not res!1854767) (not e!2783799))))

(assert (=> b!4470419 (= res!1854767 (= (length!256 lt!1658990) (length!257 (toList!4063 (extractMap!1084 lt!1658621)))))))

(declare-fun b!4470420 () Bool)

(declare-fun Unit!87838 () Unit!87799)

(assert (=> b!4470420 (= e!2783798 Unit!87838)))

(assert (=> b!4470421 false))

(declare-fun lt!1658994 () Unit!87799)

(declare-fun forallContained!2269 (List!50423 Int K!11710) Unit!87799)

(assert (=> b!4470421 (= lt!1658994 (forallContained!2269 (getKeysList!379 (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) lambda!163493 (_1!28567 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))))))))

(declare-fun Unit!87840 () Unit!87799)

(assert (=> b!4470421 (= e!2783801 Unit!87840)))

(assert (=> b!4470422 (= e!2783799 (= (content!8115 lt!1658990) (content!8115 (map!11025 (toList!4063 (extractMap!1084 lt!1658621)) lambda!163500))))))

(assert (=> b!4470423 (= e!2783800 (Cons!50299 (_1!28567 (h!56063 (toList!4063 (extractMap!1084 lt!1658621)))) (getKeysList!379 (t!357370 (toList!4063 (extractMap!1084 lt!1658621))))))))

(declare-fun c!761091 () Bool)

(assert (=> b!4470423 (= c!761091 (containsKey!1484 (t!357370 (toList!4063 (extractMap!1084 lt!1658621))) (_1!28567 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))))))))

(declare-fun lt!1658993 () Unit!87799)

(assert (=> b!4470423 (= lt!1658993 e!2783798)))

(declare-fun c!761092 () Bool)

(assert (=> b!4470423 (= c!761092 (contains!12855 (getKeysList!379 (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) (_1!28567 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))))))))

(declare-fun lt!1658991 () Unit!87799)

(assert (=> b!4470423 (= lt!1658991 e!2783801)))

(declare-fun lt!1658988 () List!50423)

(assert (=> b!4470423 (= lt!1658988 (getKeysList!379 (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))))))

(declare-fun lt!1658992 () Unit!87799)

(declare-fun lemmaForallContainsAddHeadPreserves!122 (List!50420 List!50423 tuple2!50546) Unit!87799)

(assert (=> b!4470423 (= lt!1658992 (lemmaForallContainsAddHeadPreserves!122 (t!357370 (toList!4063 (extractMap!1084 lt!1658621))) lt!1658988 (h!56063 (toList!4063 (extractMap!1084 lt!1658621)))))))

(assert (=> b!4470423 (forall!10002 lt!1658988 lambda!163494)))

(declare-fun lt!1658989 () Unit!87799)

(assert (=> b!4470423 (= lt!1658989 lt!1658992)))

(declare-fun res!1854766 () Bool)

(assert (=> b!4470424 (=> (not res!1854766) (not e!2783799))))

(assert (=> b!4470424 (= res!1854766 (forall!10002 lt!1658990 lambda!163497))))

(assert (= (and d!1363978 c!761090) b!4470423))

(assert (= (and d!1363978 (not c!761090)) b!4470418))

(assert (= (and b!4470423 c!761091) b!4470416))

(assert (= (and b!4470423 (not c!761091)) b!4470420))

(assert (= (and b!4470423 c!761092) b!4470421))

(assert (= (and b!4470423 (not c!761092)) b!4470417))

(assert (= (and d!1363978 res!1854768) b!4470419))

(assert (= (and b!4470419 res!1854767) b!4470424))

(assert (= (and b!4470424 res!1854766) b!4470422))

(declare-fun m!5177689 () Bool)

(assert (=> b!4470423 m!5177689))

(declare-fun m!5177691 () Bool)

(assert (=> b!4470423 m!5177691))

(declare-fun m!5177693 () Bool)

(assert (=> b!4470423 m!5177693))

(declare-fun m!5177695 () Bool)

(assert (=> b!4470423 m!5177695))

(declare-fun m!5177697 () Bool)

(assert (=> b!4470423 m!5177697))

(assert (=> b!4470423 m!5177689))

(assert (=> b!4470421 m!5177689))

(assert (=> b!4470421 m!5177689))

(declare-fun m!5177699 () Bool)

(assert (=> b!4470421 m!5177699))

(declare-fun m!5177701 () Bool)

(assert (=> b!4470419 m!5177701))

(declare-fun m!5177703 () Bool)

(assert (=> b!4470419 m!5177703))

(declare-fun m!5177705 () Bool)

(assert (=> b!4470422 m!5177705))

(declare-fun m!5177707 () Bool)

(assert (=> b!4470422 m!5177707))

(assert (=> b!4470422 m!5177707))

(declare-fun m!5177709 () Bool)

(assert (=> b!4470422 m!5177709))

(declare-fun m!5177711 () Bool)

(assert (=> d!1363978 m!5177711))

(declare-fun m!5177713 () Bool)

(assert (=> d!1363978 m!5177713))

(declare-fun m!5177715 () Bool)

(assert (=> b!4470424 m!5177715))

(assert (=> b!4470178 d!1363978))

(declare-fun d!1363980 () Bool)

(declare-fun lt!1659013 () Bool)

(assert (=> d!1363980 (= lt!1659013 (select (content!8114 (toList!4064 lm!1477)) (tuple2!50549 hash!344 lt!1658619)))))

(declare-fun e!2783802 () Bool)

(assert (=> d!1363980 (= lt!1659013 e!2783802)))

(declare-fun res!1854769 () Bool)

(assert (=> d!1363980 (=> (not res!1854769) (not e!2783802))))

(assert (=> d!1363980 (= res!1854769 ((_ is Cons!50297) (toList!4064 lm!1477)))))

(assert (=> d!1363980 (= (contains!12851 (toList!4064 lm!1477) (tuple2!50549 hash!344 lt!1658619)) lt!1659013)))

(declare-fun b!4470427 () Bool)

(declare-fun e!2783803 () Bool)

(assert (=> b!4470427 (= e!2783802 e!2783803)))

(declare-fun res!1854770 () Bool)

(assert (=> b!4470427 (=> res!1854770 e!2783803)))

(assert (=> b!4470427 (= res!1854770 (= (h!56064 (toList!4064 lm!1477)) (tuple2!50549 hash!344 lt!1658619)))))

(declare-fun b!4470428 () Bool)

(assert (=> b!4470428 (= e!2783803 (contains!12851 (t!357371 (toList!4064 lm!1477)) (tuple2!50549 hash!344 lt!1658619)))))

(assert (= (and d!1363980 res!1854769) b!4470427))

(assert (= (and b!4470427 (not res!1854770)) b!4470428))

(assert (=> d!1363980 m!5177011))

(declare-fun m!5177717 () Bool)

(assert (=> d!1363980 m!5177717))

(declare-fun m!5177719 () Bool)

(assert (=> b!4470428 m!5177719))

(assert (=> d!1363766 d!1363980))

(declare-fun d!1363982 () Bool)

(assert (=> d!1363982 (contains!12851 (toList!4064 lm!1477) (tuple2!50549 hash!344 lt!1658619))))

(assert (=> d!1363982 true))

(declare-fun _$14!990 () Unit!87799)

(assert (=> d!1363982 (= (choose!28600 (toList!4064 lm!1477) hash!344 lt!1658619) _$14!990)))

(declare-fun bs!795430 () Bool)

(assert (= bs!795430 d!1363982))

(assert (=> bs!795430 m!5177069))

(assert (=> d!1363766 d!1363982))

(declare-fun d!1363984 () Bool)

(declare-fun res!1854779 () Bool)

(declare-fun e!2783812 () Bool)

(assert (=> d!1363984 (=> res!1854779 e!2783812)))

(assert (=> d!1363984 (= res!1854779 (or ((_ is Nil!50297) (toList!4064 lm!1477)) ((_ is Nil!50297) (t!357371 (toList!4064 lm!1477)))))))

(assert (=> d!1363984 (= (isStrictlySorted!345 (toList!4064 lm!1477)) e!2783812)))

(declare-fun b!4470435 () Bool)

(declare-fun e!2783813 () Bool)

(assert (=> b!4470435 (= e!2783812 e!2783813)))

(declare-fun res!1854780 () Bool)

(assert (=> b!4470435 (=> (not res!1854780) (not e!2783813))))

(assert (=> b!4470435 (= res!1854780 (bvslt (_1!28568 (h!56064 (toList!4064 lm!1477))) (_1!28568 (h!56064 (t!357371 (toList!4064 lm!1477))))))))

(declare-fun b!4470436 () Bool)

(assert (=> b!4470436 (= e!2783813 (isStrictlySorted!345 (t!357371 (toList!4064 lm!1477))))))

(assert (= (and d!1363984 (not res!1854779)) b!4470435))

(assert (= (and b!4470435 res!1854780) b!4470436))

(declare-fun m!5177721 () Bool)

(assert (=> b!4470436 m!5177721))

(assert (=> d!1363766 d!1363984))

(declare-fun d!1363986 () Bool)

(assert (=> d!1363986 (isDefined!8221 (getValueByKey!920 (toList!4064 lm!1477) lt!1658632))))

(declare-fun lt!1659016 () Unit!87799)

(declare-fun choose!28605 (List!50421 (_ BitVec 64)) Unit!87799)

(assert (=> d!1363986 (= lt!1659016 (choose!28605 (toList!4064 lm!1477) lt!1658632))))

(declare-fun e!2783816 () Bool)

(assert (=> d!1363986 e!2783816))

(declare-fun res!1854785 () Bool)

(assert (=> d!1363986 (=> (not res!1854785) (not e!2783816))))

(assert (=> d!1363986 (= res!1854785 (isStrictlySorted!345 (toList!4064 lm!1477)))))

(assert (=> d!1363986 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!824 (toList!4064 lm!1477) lt!1658632) lt!1659016)))

(declare-fun b!4470443 () Bool)

(assert (=> b!4470443 (= e!2783816 (containsKey!1483 (toList!4064 lm!1477) lt!1658632))))

(assert (= (and d!1363986 res!1854785) b!4470443))

(assert (=> d!1363986 m!5177101))

(assert (=> d!1363986 m!5177101))

(assert (=> d!1363986 m!5177103))

(declare-fun m!5177723 () Bool)

(assert (=> d!1363986 m!5177723))

(assert (=> d!1363986 m!5177073))

(assert (=> b!4470443 m!5177097))

(assert (=> b!4469995 d!1363986))

(declare-fun d!1363988 () Bool)

(declare-fun isEmpty!28495 (Option!10934) Bool)

(assert (=> d!1363988 (= (isDefined!8221 (getValueByKey!920 (toList!4064 lm!1477) lt!1658632)) (not (isEmpty!28495 (getValueByKey!920 (toList!4064 lm!1477) lt!1658632))))))

(declare-fun bs!795431 () Bool)

(assert (= bs!795431 d!1363988))

(assert (=> bs!795431 m!5177101))

(declare-fun m!5177725 () Bool)

(assert (=> bs!795431 m!5177725))

(assert (=> b!4469995 d!1363988))

(declare-fun b!4470460 () Bool)

(declare-fun e!2783825 () Option!10934)

(assert (=> b!4470460 (= e!2783825 None!10933)))

(declare-fun b!4470457 () Bool)

(declare-fun e!2783824 () Option!10934)

(assert (=> b!4470457 (= e!2783824 (Some!10933 (_2!28568 (h!56064 (toList!4064 lm!1477)))))))

(declare-fun b!4470458 () Bool)

(assert (=> b!4470458 (= e!2783824 e!2783825)))

(declare-fun c!761099 () Bool)

(assert (=> b!4470458 (= c!761099 (and ((_ is Cons!50297) (toList!4064 lm!1477)) (not (= (_1!28568 (h!56064 (toList!4064 lm!1477))) lt!1658632))))))

(declare-fun d!1363990 () Bool)

(declare-fun c!761098 () Bool)

(assert (=> d!1363990 (= c!761098 (and ((_ is Cons!50297) (toList!4064 lm!1477)) (= (_1!28568 (h!56064 (toList!4064 lm!1477))) lt!1658632)))))

(assert (=> d!1363990 (= (getValueByKey!920 (toList!4064 lm!1477) lt!1658632) e!2783824)))

(declare-fun b!4470459 () Bool)

(assert (=> b!4470459 (= e!2783825 (getValueByKey!920 (t!357371 (toList!4064 lm!1477)) lt!1658632))))

(assert (= (and d!1363990 c!761098) b!4470457))

(assert (= (and d!1363990 (not c!761098)) b!4470458))

(assert (= (and b!4470458 c!761099) b!4470459))

(assert (= (and b!4470458 (not c!761099)) b!4470460))

(declare-fun m!5177727 () Bool)

(assert (=> b!4470459 m!5177727))

(assert (=> b!4469995 d!1363990))

(declare-fun bs!795434 () Bool)

(declare-fun b!4470464 () Bool)

(assert (= bs!795434 (and b!4470464 b!4470368)))

(declare-fun lambda!163515 () Int)

(assert (=> bs!795434 (= (= (extractMap!1084 (t!357371 lt!1658621)) lt!1658931) (= lambda!163515 lambda!163468))))

(declare-fun bs!795436 () Bool)

(assert (= bs!795436 (and b!4470464 d!1363918)))

(assert (=> bs!795436 (= (= (extractMap!1084 (t!357371 lt!1658621)) lt!1658930) (= lambda!163515 lambda!163469))))

(assert (=> bs!795434 (= (= (extractMap!1084 (t!357371 lt!1658621)) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163515 lambda!163467))))

(declare-fun bs!795437 () Bool)

(assert (= bs!795437 (and b!4470464 b!4470367)))

(assert (=> bs!795437 (= (= (extractMap!1084 (t!357371 lt!1658621)) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163515 lambda!163466))))

(declare-fun bs!795438 () Bool)

(assert (= bs!795438 (and b!4470464 d!1363818)))

(assert (=> bs!795438 (not (= lambda!163515 lambda!163394))))

(assert (=> b!4470464 true))

(declare-fun bs!795439 () Bool)

(declare-fun b!4470465 () Bool)

(assert (= bs!795439 (and b!4470465 b!4470368)))

(declare-fun lambda!163517 () Int)

(assert (=> bs!795439 (= (= (extractMap!1084 (t!357371 lt!1658621)) lt!1658931) (= lambda!163517 lambda!163468))))

(declare-fun bs!795440 () Bool)

(assert (= bs!795440 (and b!4470465 b!4470464)))

(assert (=> bs!795440 (= lambda!163517 lambda!163515)))

(declare-fun bs!795441 () Bool)

(assert (= bs!795441 (and b!4470465 d!1363918)))

(assert (=> bs!795441 (= (= (extractMap!1084 (t!357371 lt!1658621)) lt!1658930) (= lambda!163517 lambda!163469))))

(assert (=> bs!795439 (= (= (extractMap!1084 (t!357371 lt!1658621)) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163517 lambda!163467))))

(declare-fun bs!795442 () Bool)

(assert (= bs!795442 (and b!4470465 b!4470367)))

(assert (=> bs!795442 (= (= (extractMap!1084 (t!357371 lt!1658621)) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163517 lambda!163466))))

(declare-fun bs!795443 () Bool)

(assert (= bs!795443 (and b!4470465 d!1363818)))

(assert (=> bs!795443 (not (= lambda!163517 lambda!163394))))

(assert (=> b!4470465 true))

(declare-fun lt!1659048 () ListMap!3325)

(declare-fun lambda!163518 () Int)

(assert (=> bs!795439 (= (= lt!1659048 lt!1658931) (= lambda!163518 lambda!163468))))

(assert (=> bs!795440 (= (= lt!1659048 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163518 lambda!163515))))

(assert (=> bs!795441 (= (= lt!1659048 lt!1658930) (= lambda!163518 lambda!163469))))

(assert (=> bs!795439 (= (= lt!1659048 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163518 lambda!163467))))

(assert (=> b!4470465 (= (= lt!1659048 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163518 lambda!163517))))

(assert (=> bs!795442 (= (= lt!1659048 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163518 lambda!163466))))

(assert (=> bs!795443 (not (= lambda!163518 lambda!163394))))

(assert (=> b!4470465 true))

(declare-fun bs!795447 () Bool)

(declare-fun d!1363992 () Bool)

(assert (= bs!795447 (and d!1363992 b!4470368)))

(declare-fun lambda!163520 () Int)

(declare-fun lt!1659047 () ListMap!3325)

(assert (=> bs!795447 (= (= lt!1659047 lt!1658931) (= lambda!163520 lambda!163468))))

(declare-fun bs!795448 () Bool)

(assert (= bs!795448 (and d!1363992 b!4470465)))

(assert (=> bs!795448 (= (= lt!1659047 lt!1659048) (= lambda!163520 lambda!163518))))

(declare-fun bs!795449 () Bool)

(assert (= bs!795449 (and d!1363992 b!4470464)))

(assert (=> bs!795449 (= (= lt!1659047 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163520 lambda!163515))))

(declare-fun bs!795450 () Bool)

(assert (= bs!795450 (and d!1363992 d!1363918)))

(assert (=> bs!795450 (= (= lt!1659047 lt!1658930) (= lambda!163520 lambda!163469))))

(assert (=> bs!795447 (= (= lt!1659047 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163520 lambda!163467))))

(assert (=> bs!795448 (= (= lt!1659047 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163520 lambda!163517))))

(declare-fun bs!795451 () Bool)

(assert (= bs!795451 (and d!1363992 b!4470367)))

(assert (=> bs!795451 (= (= lt!1659047 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163520 lambda!163466))))

(declare-fun bs!795452 () Bool)

(assert (= bs!795452 (and d!1363992 d!1363818)))

(assert (=> bs!795452 (not (= lambda!163520 lambda!163394))))

(assert (=> d!1363992 true))

(declare-fun bm!311238 () Bool)

(declare-fun call!311245 () Unit!87799)

(assert (=> bm!311238 (= call!311245 (lemmaContainsAllItsOwnKeys!268 (extractMap!1084 (t!357371 lt!1658621))))))

(declare-fun bm!311239 () Bool)

(declare-fun c!761100 () Bool)

(declare-fun call!311243 () Bool)

(declare-fun lt!1659044 () ListMap!3325)

(assert (=> bm!311239 (= call!311243 (forall!10000 (ite c!761100 (toList!4063 (extractMap!1084 (t!357371 lt!1658621))) (toList!4063 lt!1659044)) (ite c!761100 lambda!163515 lambda!163518)))))

(declare-fun e!2783827 () ListMap!3325)

(assert (=> b!4470464 (= e!2783827 (extractMap!1084 (t!357371 lt!1658621)))))

(declare-fun lt!1659040 () Unit!87799)

(assert (=> b!4470464 (= lt!1659040 call!311245)))

(declare-fun call!311244 () Bool)

(assert (=> b!4470464 call!311244))

(declare-fun lt!1659056 () Unit!87799)

(assert (=> b!4470464 (= lt!1659056 lt!1659040)))

(assert (=> b!4470464 call!311243))

(declare-fun lt!1659038 () Unit!87799)

(declare-fun Unit!87848 () Unit!87799)

(assert (=> b!4470464 (= lt!1659038 Unit!87848)))

(assert (=> b!4470465 (= e!2783827 lt!1659048)))

(assert (=> b!4470465 (= lt!1659044 (+!1373 (extractMap!1084 (t!357371 lt!1658621)) (h!56063 (_2!28568 (h!56064 lt!1658621)))))))

(assert (=> b!4470465 (= lt!1659048 (addToMapMapFromBucket!593 (t!357370 (_2!28568 (h!56064 lt!1658621))) (+!1373 (extractMap!1084 (t!357371 lt!1658621)) (h!56063 (_2!28568 (h!56064 lt!1658621))))))))

(declare-fun lt!1659050 () Unit!87799)

(assert (=> b!4470465 (= lt!1659050 call!311245)))

(assert (=> b!4470465 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 lt!1658621))) lambda!163517)))

(declare-fun lt!1659052 () Unit!87799)

(assert (=> b!4470465 (= lt!1659052 lt!1659050)))

(assert (=> b!4470465 call!311243))

(declare-fun lt!1659042 () Unit!87799)

(declare-fun Unit!87849 () Unit!87799)

(assert (=> b!4470465 (= lt!1659042 Unit!87849)))

(assert (=> b!4470465 (forall!10000 (t!357370 (_2!28568 (h!56064 lt!1658621))) lambda!163518)))

(declare-fun lt!1659043 () Unit!87799)

(declare-fun Unit!87850 () Unit!87799)

(assert (=> b!4470465 (= lt!1659043 Unit!87850)))

(declare-fun lt!1659039 () Unit!87799)

(declare-fun Unit!87851 () Unit!87799)

(assert (=> b!4470465 (= lt!1659039 Unit!87851)))

(declare-fun lt!1659054 () Unit!87799)

(assert (=> b!4470465 (= lt!1659054 (forallContained!2267 (toList!4063 lt!1659044) lambda!163518 (h!56063 (_2!28568 (h!56064 lt!1658621)))))))

(assert (=> b!4470465 (contains!12853 lt!1659044 (_1!28567 (h!56063 (_2!28568 (h!56064 lt!1658621)))))))

(declare-fun lt!1659055 () Unit!87799)

(declare-fun Unit!87852 () Unit!87799)

(assert (=> b!4470465 (= lt!1659055 Unit!87852)))

(assert (=> b!4470465 (contains!12853 lt!1659048 (_1!28567 (h!56063 (_2!28568 (h!56064 lt!1658621)))))))

(declare-fun lt!1659041 () Unit!87799)

(declare-fun Unit!87853 () Unit!87799)

(assert (=> b!4470465 (= lt!1659041 Unit!87853)))

(assert (=> b!4470465 (forall!10000 (_2!28568 (h!56064 lt!1658621)) lambda!163518)))

(declare-fun lt!1659057 () Unit!87799)

(declare-fun Unit!87854 () Unit!87799)

(assert (=> b!4470465 (= lt!1659057 Unit!87854)))

(assert (=> b!4470465 (forall!10000 (toList!4063 lt!1659044) lambda!163518)))

(declare-fun lt!1659051 () Unit!87799)

(declare-fun Unit!87855 () Unit!87799)

(assert (=> b!4470465 (= lt!1659051 Unit!87855)))

(declare-fun lt!1659053 () Unit!87799)

(declare-fun Unit!87856 () Unit!87799)

(assert (=> b!4470465 (= lt!1659053 Unit!87856)))

(declare-fun lt!1659058 () Unit!87799)

(assert (=> b!4470465 (= lt!1659058 (addForallContainsKeyThenBeforeAdding!267 (extractMap!1084 (t!357371 lt!1658621)) lt!1659048 (_1!28567 (h!56063 (_2!28568 (h!56064 lt!1658621)))) (_2!28567 (h!56063 (_2!28568 (h!56064 lt!1658621))))))))

(assert (=> b!4470465 call!311244))

(declare-fun lt!1659049 () Unit!87799)

(assert (=> b!4470465 (= lt!1659049 lt!1659058)))

(assert (=> b!4470465 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 lt!1658621))) lambda!163518)))

(declare-fun lt!1659045 () Unit!87799)

(declare-fun Unit!87857 () Unit!87799)

(assert (=> b!4470465 (= lt!1659045 Unit!87857)))

(declare-fun res!1854790 () Bool)

(assert (=> b!4470465 (= res!1854790 (forall!10000 (_2!28568 (h!56064 lt!1658621)) lambda!163518))))

(declare-fun e!2783828 () Bool)

(assert (=> b!4470465 (=> (not res!1854790) (not e!2783828))))

(assert (=> b!4470465 e!2783828))

(declare-fun lt!1659046 () Unit!87799)

(declare-fun Unit!87858 () Unit!87799)

(assert (=> b!4470465 (= lt!1659046 Unit!87858)))

(declare-fun b!4470466 () Bool)

(assert (=> b!4470466 (= e!2783828 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 lt!1658621))) lambda!163518))))

(declare-fun b!4470467 () Bool)

(declare-fun e!2783826 () Bool)

(assert (=> b!4470467 (= e!2783826 (invariantList!931 (toList!4063 lt!1659047)))))

(declare-fun bm!311240 () Bool)

(assert (=> bm!311240 (= call!311244 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 lt!1658621))) (ite c!761100 lambda!163515 lambda!163518)))))

(declare-fun b!4470463 () Bool)

(declare-fun res!1854789 () Bool)

(assert (=> b!4470463 (=> (not res!1854789) (not e!2783826))))

(assert (=> b!4470463 (= res!1854789 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 lt!1658621))) lambda!163520))))

(assert (=> d!1363992 e!2783826))

(declare-fun res!1854791 () Bool)

(assert (=> d!1363992 (=> (not res!1854791) (not e!2783826))))

(assert (=> d!1363992 (= res!1854791 (forall!10000 (_2!28568 (h!56064 lt!1658621)) lambda!163520))))

(assert (=> d!1363992 (= lt!1659047 e!2783827)))

(assert (=> d!1363992 (= c!761100 ((_ is Nil!50296) (_2!28568 (h!56064 lt!1658621))))))

(assert (=> d!1363992 (noDuplicateKeys!1028 (_2!28568 (h!56064 lt!1658621)))))

(assert (=> d!1363992 (= (addToMapMapFromBucket!593 (_2!28568 (h!56064 lt!1658621)) (extractMap!1084 (t!357371 lt!1658621))) lt!1659047)))

(assert (= (and d!1363992 c!761100) b!4470464))

(assert (= (and d!1363992 (not c!761100)) b!4470465))

(assert (= (and b!4470465 res!1854790) b!4470466))

(assert (= (or b!4470464 b!4470465) bm!311240))

(assert (= (or b!4470464 b!4470465) bm!311239))

(assert (= (or b!4470464 b!4470465) bm!311238))

(assert (= (and d!1363992 res!1854791) b!4470463))

(assert (= (and b!4470463 res!1854789) b!4470467))

(declare-fun m!5177765 () Bool)

(assert (=> bm!311239 m!5177765))

(declare-fun m!5177767 () Bool)

(assert (=> bm!311240 m!5177767))

(declare-fun m!5177769 () Bool)

(assert (=> d!1363992 m!5177769))

(declare-fun m!5177771 () Bool)

(assert (=> d!1363992 m!5177771))

(assert (=> bm!311238 m!5177343))

(declare-fun m!5177773 () Bool)

(assert (=> bm!311238 m!5177773))

(declare-fun m!5177775 () Bool)

(assert (=> b!4470463 m!5177775))

(declare-fun m!5177777 () Bool)

(assert (=> b!4470467 m!5177777))

(declare-fun m!5177779 () Bool)

(assert (=> b!4470465 m!5177779))

(declare-fun m!5177781 () Bool)

(assert (=> b!4470465 m!5177781))

(declare-fun m!5177783 () Bool)

(assert (=> b!4470465 m!5177783))

(declare-fun m!5177785 () Bool)

(assert (=> b!4470465 m!5177785))

(assert (=> b!4470465 m!5177343))

(declare-fun m!5177787 () Bool)

(assert (=> b!4470465 m!5177787))

(declare-fun m!5177789 () Bool)

(assert (=> b!4470465 m!5177789))

(assert (=> b!4470465 m!5177343))

(assert (=> b!4470465 m!5177779))

(declare-fun m!5177791 () Bool)

(assert (=> b!4470465 m!5177791))

(declare-fun m!5177793 () Bool)

(assert (=> b!4470465 m!5177793))

(assert (=> b!4470465 m!5177793))

(declare-fun m!5177795 () Bool)

(assert (=> b!4470465 m!5177795))

(declare-fun m!5177797 () Bool)

(assert (=> b!4470465 m!5177797))

(declare-fun m!5177799 () Bool)

(assert (=> b!4470465 m!5177799))

(assert (=> b!4470466 m!5177797))

(assert (=> b!4470165 d!1363992))

(declare-fun bs!795464 () Bool)

(declare-fun d!1363996 () Bool)

(assert (= bs!795464 (and d!1363996 d!1363876)))

(declare-fun lambda!163522 () Int)

(assert (=> bs!795464 (= lambda!163522 lambda!163412)))

(declare-fun bs!795465 () Bool)

(assert (= bs!795465 (and d!1363996 d!1363856)))

(assert (=> bs!795465 (= lambda!163522 lambda!163407)))

(declare-fun bs!795466 () Bool)

(assert (= bs!795466 (and d!1363996 d!1363756)))

(assert (=> bs!795466 (= lambda!163522 lambda!163373)))

(declare-fun bs!795467 () Bool)

(assert (= bs!795467 (and d!1363996 start!439252)))

(assert (=> bs!795467 (= lambda!163522 lambda!163367)))

(declare-fun bs!795468 () Bool)

(assert (= bs!795468 (and d!1363996 d!1363862)))

(assert (=> bs!795468 (= lambda!163522 lambda!163408)))

(declare-fun bs!795469 () Bool)

(assert (= bs!795469 (and d!1363996 d!1363956)))

(assert (=> bs!795469 (= lambda!163522 lambda!163470)))

(declare-fun bs!795470 () Bool)

(assert (= bs!795470 (and d!1363996 d!1363872)))

(assert (=> bs!795470 (not (= lambda!163522 lambda!163411))))

(declare-fun bs!795471 () Bool)

(assert (= bs!795471 (and d!1363996 d!1363878)))

(assert (=> bs!795471 (= lambda!163522 lambda!163413)))

(declare-fun bs!795472 () Bool)

(assert (= bs!795472 (and d!1363996 d!1363844)))

(assert (=> bs!795472 (= lambda!163522 lambda!163402)))

(declare-fun bs!795473 () Bool)

(assert (= bs!795473 (and d!1363996 d!1363848)))

(assert (=> bs!795473 (= lambda!163522 lambda!163403)))

(declare-fun bs!795474 () Bool)

(assert (= bs!795474 (and d!1363996 d!1363832)))

(assert (=> bs!795474 (= lambda!163522 lambda!163399)))

(declare-fun bs!795475 () Bool)

(assert (= bs!795475 (and d!1363996 d!1363850)))

(assert (=> bs!795475 (= lambda!163522 lambda!163404)))

(declare-fun lt!1659060 () ListMap!3325)

(assert (=> d!1363996 (invariantList!931 (toList!4063 lt!1659060))))

(declare-fun e!2783830 () ListMap!3325)

(assert (=> d!1363996 (= lt!1659060 e!2783830)))

(declare-fun c!761102 () Bool)

(assert (=> d!1363996 (= c!761102 ((_ is Cons!50297) (t!357371 lt!1658621)))))

(assert (=> d!1363996 (forall!9998 (t!357371 lt!1658621) lambda!163522)))

(assert (=> d!1363996 (= (extractMap!1084 (t!357371 lt!1658621)) lt!1659060)))

(declare-fun b!4470470 () Bool)

(assert (=> b!4470470 (= e!2783830 (addToMapMapFromBucket!593 (_2!28568 (h!56064 (t!357371 lt!1658621))) (extractMap!1084 (t!357371 (t!357371 lt!1658621)))))))

(declare-fun b!4470471 () Bool)

(assert (=> b!4470471 (= e!2783830 (ListMap!3326 Nil!50296))))

(assert (= (and d!1363996 c!761102) b!4470470))

(assert (= (and d!1363996 (not c!761102)) b!4470471))

(declare-fun m!5177815 () Bool)

(assert (=> d!1363996 m!5177815))

(declare-fun m!5177817 () Bool)

(assert (=> d!1363996 m!5177817))

(declare-fun m!5177819 () Bool)

(assert (=> b!4470470 m!5177819))

(assert (=> b!4470470 m!5177819))

(declare-fun m!5177821 () Bool)

(assert (=> b!4470470 m!5177821))

(assert (=> b!4470165 d!1363996))

(declare-fun d!1364002 () Bool)

(assert (=> d!1364002 (isDefined!8222 (getValueByKey!921 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287))))

(declare-fun lt!1659066 () Unit!87799)

(declare-fun choose!28607 (List!50420 K!11710) Unit!87799)

(assert (=> d!1364002 (= lt!1659066 (choose!28607 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287))))

(assert (=> d!1364002 (invariantList!931 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))))

(assert (=> d!1364002 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!825 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287) lt!1659066)))

(declare-fun bs!795476 () Bool)

(assert (= bs!795476 d!1364002))

(assert (=> bs!795476 m!5177311))

(assert (=> bs!795476 m!5177311))

(assert (=> bs!795476 m!5177313))

(declare-fun m!5177823 () Bool)

(assert (=> bs!795476 m!5177823))

(assert (=> bs!795476 m!5177677))

(assert (=> b!4470153 d!1364002))

(declare-fun d!1364004 () Bool)

(declare-fun isEmpty!28497 (Option!10935) Bool)

(assert (=> d!1364004 (= (isDefined!8222 (getValueByKey!921 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287)) (not (isEmpty!28497 (getValueByKey!921 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287))))))

(declare-fun bs!795477 () Bool)

(assert (= bs!795477 d!1364004))

(assert (=> bs!795477 m!5177311))

(declare-fun m!5177827 () Bool)

(assert (=> bs!795477 m!5177827))

(assert (=> b!4470153 d!1364004))

(declare-fun b!4470503 () Bool)

(declare-fun e!2783849 () Option!10935)

(assert (=> b!4470503 (= e!2783849 None!10934)))

(declare-fun d!1364008 () Bool)

(declare-fun c!761112 () Bool)

(assert (=> d!1364008 (= c!761112 (and ((_ is Cons!50296) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (= (_1!28567 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) key!3287)))))

(declare-fun e!2783848 () Option!10935)

(assert (=> d!1364008 (= (getValueByKey!921 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287) e!2783848)))

(declare-fun b!4470500 () Bool)

(assert (=> b!4470500 (= e!2783848 (Some!10934 (_2!28567 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))))))))

(declare-fun b!4470502 () Bool)

(assert (=> b!4470502 (= e!2783849 (getValueByKey!921 (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) key!3287))))

(declare-fun b!4470501 () Bool)

(assert (=> b!4470501 (= e!2783848 e!2783849)))

(declare-fun c!761113 () Bool)

(assert (=> b!4470501 (= c!761113 (and ((_ is Cons!50296) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (not (= (_1!28567 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) key!3287))))))

(assert (= (and d!1364008 c!761112) b!4470500))

(assert (= (and d!1364008 (not c!761112)) b!4470501))

(assert (= (and b!4470501 c!761113) b!4470502))

(assert (= (and b!4470501 (not c!761113)) b!4470503))

(declare-fun m!5177835 () Bool)

(assert (=> b!4470502 m!5177835))

(assert (=> b!4470153 d!1364008))

(declare-fun d!1364016 () Bool)

(assert (=> d!1364016 (contains!12855 (getKeysList!379 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) key!3287)))

(declare-fun lt!1659078 () Unit!87799)

(declare-fun choose!28608 (List!50420 K!11710) Unit!87799)

(assert (=> d!1364016 (= lt!1659078 (choose!28608 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287))))

(assert (=> d!1364016 (invariantList!931 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))))

(assert (=> d!1364016 (= (lemmaInListThenGetKeysListContains!375 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) key!3287) lt!1659078)))

(declare-fun bs!795499 () Bool)

(assert (= bs!795499 d!1364016))

(assert (=> bs!795499 m!5177321))

(assert (=> bs!795499 m!5177321))

(declare-fun m!5177873 () Bool)

(assert (=> bs!795499 m!5177873))

(declare-fun m!5177875 () Bool)

(assert (=> bs!795499 m!5177875))

(assert (=> bs!795499 m!5177677))

(assert (=> b!4470153 d!1364016))

(declare-fun d!1364026 () Bool)

(declare-fun res!1854809 () Bool)

(declare-fun e!2783855 () Bool)

(assert (=> d!1364026 (=> res!1854809 e!2783855)))

(assert (=> d!1364026 (= res!1854809 (not ((_ is Cons!50296) (_2!28568 (h!56064 (toList!4064 lm!1477))))))))

(assert (=> d!1364026 (= (noDuplicateKeys!1028 (_2!28568 (h!56064 (toList!4064 lm!1477)))) e!2783855)))

(declare-fun b!4470511 () Bool)

(declare-fun e!2783856 () Bool)

(assert (=> b!4470511 (= e!2783855 e!2783856)))

(declare-fun res!1854810 () Bool)

(assert (=> b!4470511 (=> (not res!1854810) (not e!2783856))))

(assert (=> b!4470511 (= res!1854810 (not (containsKey!1480 (t!357370 (_2!28568 (h!56064 (toList!4064 lm!1477)))) (_1!28567 (h!56063 (_2!28568 (h!56064 (toList!4064 lm!1477))))))))))

(declare-fun b!4470512 () Bool)

(assert (=> b!4470512 (= e!2783856 (noDuplicateKeys!1028 (t!357370 (_2!28568 (h!56064 (toList!4064 lm!1477))))))))

(assert (= (and d!1364026 (not res!1854809)) b!4470511))

(assert (= (and b!4470511 res!1854810) b!4470512))

(declare-fun m!5177877 () Bool)

(assert (=> b!4470511 m!5177877))

(declare-fun m!5177879 () Bool)

(assert (=> b!4470512 m!5177879))

(assert (=> bs!795381 d!1364026))

(declare-fun b!4470516 () Bool)

(declare-fun e!2783858 () Option!10934)

(assert (=> b!4470516 (= e!2783858 None!10933)))

(declare-fun b!4470513 () Bool)

(declare-fun e!2783857 () Option!10934)

(assert (=> b!4470513 (= e!2783857 (Some!10933 (_2!28568 (h!56064 (toList!4064 lm!1477)))))))

(declare-fun b!4470514 () Bool)

(assert (=> b!4470514 (= e!2783857 e!2783858)))

(declare-fun c!761115 () Bool)

(assert (=> b!4470514 (= c!761115 (and ((_ is Cons!50297) (toList!4064 lm!1477)) (not (= (_1!28568 (h!56064 (toList!4064 lm!1477))) hash!344))))))

(declare-fun d!1364028 () Bool)

(declare-fun c!761114 () Bool)

(assert (=> d!1364028 (= c!761114 (and ((_ is Cons!50297) (toList!4064 lm!1477)) (= (_1!28568 (h!56064 (toList!4064 lm!1477))) hash!344)))))

(assert (=> d!1364028 (= (getValueByKey!920 (toList!4064 lm!1477) hash!344) e!2783857)))

(declare-fun b!4470515 () Bool)

(assert (=> b!4470515 (= e!2783858 (getValueByKey!920 (t!357371 (toList!4064 lm!1477)) hash!344))))

(assert (= (and d!1364028 c!761114) b!4470513))

(assert (= (and d!1364028 (not c!761114)) b!4470514))

(assert (= (and b!4470514 c!761115) b!4470515))

(assert (= (and b!4470514 (not c!761115)) b!4470516))

(declare-fun m!5177881 () Bool)

(assert (=> b!4470515 m!5177881))

(assert (=> b!4469958 d!1364028))

(assert (=> b!4470089 d!1363896))

(declare-fun d!1364030 () Bool)

(assert (=> d!1364030 (containsKey!1484 (toList!4063 lt!1658626) key!3287)))

(declare-fun lt!1659079 () Unit!87799)

(assert (=> d!1364030 (= lt!1659079 (choose!28604 (toList!4063 lt!1658626) key!3287))))

(assert (=> d!1364030 (invariantList!931 (toList!4063 lt!1658626))))

(assert (=> d!1364030 (= (lemmaInGetKeysListThenContainsKey!378 (toList!4063 lt!1658626) key!3287) lt!1659079)))

(declare-fun bs!795508 () Bool)

(assert (= bs!795508 d!1364030))

(assert (=> bs!795508 m!5177217))

(declare-fun m!5177885 () Bool)

(assert (=> bs!795508 m!5177885))

(declare-fun m!5177889 () Bool)

(assert (=> bs!795508 m!5177889))

(assert (=> b!4470089 d!1364030))

(declare-fun d!1364032 () Bool)

(declare-fun lt!1659080 () Bool)

(assert (=> d!1364032 (= lt!1659080 (select (content!8114 (toList!4064 lt!1658646)) lt!1658627))))

(declare-fun e!2783859 () Bool)

(assert (=> d!1364032 (= lt!1659080 e!2783859)))

(declare-fun res!1854811 () Bool)

(assert (=> d!1364032 (=> (not res!1854811) (not e!2783859))))

(assert (=> d!1364032 (= res!1854811 ((_ is Cons!50297) (toList!4064 lt!1658646)))))

(assert (=> d!1364032 (= (contains!12851 (toList!4064 lt!1658646) lt!1658627) lt!1659080)))

(declare-fun b!4470517 () Bool)

(declare-fun e!2783860 () Bool)

(assert (=> b!4470517 (= e!2783859 e!2783860)))

(declare-fun res!1854812 () Bool)

(assert (=> b!4470517 (=> res!1854812 e!2783860)))

(assert (=> b!4470517 (= res!1854812 (= (h!56064 (toList!4064 lt!1658646)) lt!1658627))))

(declare-fun b!4470518 () Bool)

(assert (=> b!4470518 (= e!2783860 (contains!12851 (t!357371 (toList!4064 lt!1658646)) lt!1658627))))

(assert (= (and d!1364032 res!1854811) b!4470517))

(assert (= (and b!4470517 (not res!1854812)) b!4470518))

(declare-fun m!5177899 () Bool)

(assert (=> d!1364032 m!5177899))

(declare-fun m!5177901 () Bool)

(assert (=> d!1364032 m!5177901))

(declare-fun m!5177903 () Bool)

(assert (=> b!4470518 m!5177903))

(assert (=> b!4469929 d!1364032))

(declare-fun bs!795510 () Bool)

(declare-fun b!4470525 () Bool)

(assert (= bs!795510 (and b!4470525 b!4470270)))

(declare-fun lambda!163530 () Int)

(assert (=> bs!795510 (= (= (toList!4063 (extractMap!1084 lt!1658621)) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (= lambda!163530 lambda!163424))))

(declare-fun bs!795512 () Bool)

(assert (= bs!795512 (and b!4470525 b!4470423)))

(assert (=> bs!795512 (= (= (toList!4063 (extractMap!1084 lt!1658621)) (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621))))) (= lambda!163530 lambda!163494))))

(declare-fun bs!795514 () Bool)

(assert (= bs!795514 (and b!4470525 b!4470382)))

(assert (=> bs!795514 (= (= (toList!4063 (extractMap!1084 lt!1658621)) (toList!4063 lt!1658626)) (= lambda!163530 lambda!163471))))

(declare-fun bs!795515 () Bool)

(assert (= bs!795515 (and b!4470525 b!4470421)))

(assert (=> bs!795515 (= (= (toList!4063 (extractMap!1084 lt!1658621)) (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) (= lambda!163530 lambda!163493))))

(declare-fun bs!795517 () Bool)

(assert (= bs!795517 (and b!4470525 b!4470424)))

(assert (=> bs!795517 (= lambda!163530 lambda!163497)))

(assert (=> b!4470525 true))

(declare-fun bs!795518 () Bool)

(declare-fun b!4470526 () Bool)

(assert (= bs!795518 (and b!4470526 b!4470271)))

(declare-fun lambda!163531 () Int)

(assert (=> bs!795518 (= lambda!163531 lambda!163425)))

(declare-fun bs!795519 () Bool)

(assert (= bs!795519 (and b!4470526 b!4470383)))

(assert (=> bs!795519 (= lambda!163531 lambda!163472)))

(declare-fun bs!795520 () Bool)

(assert (= bs!795520 (and b!4470526 b!4470422)))

(assert (=> bs!795520 (= lambda!163531 lambda!163500)))

(declare-fun d!1364036 () Bool)

(declare-fun e!2783864 () Bool)

(assert (=> d!1364036 e!2783864))

(declare-fun res!1854818 () Bool)

(assert (=> d!1364036 (=> (not res!1854818) (not e!2783864))))

(declare-fun lt!1659102 () List!50423)

(assert (=> d!1364036 (= res!1854818 (noDuplicate!700 lt!1659102))))

(assert (=> d!1364036 (= lt!1659102 (getKeysList!379 (toList!4063 (extractMap!1084 lt!1658621))))))

(assert (=> d!1364036 (= (keys!17370 (extractMap!1084 lt!1658621)) lt!1659102)))

(declare-fun b!4470524 () Bool)

(declare-fun res!1854817 () Bool)

(assert (=> b!4470524 (=> (not res!1854817) (not e!2783864))))

(assert (=> b!4470524 (= res!1854817 (= (length!256 lt!1659102) (length!257 (toList!4063 (extractMap!1084 lt!1658621)))))))

(declare-fun res!1854816 () Bool)

(assert (=> b!4470525 (=> (not res!1854816) (not e!2783864))))

(assert (=> b!4470525 (= res!1854816 (forall!10002 lt!1659102 lambda!163530))))

(assert (=> b!4470526 (= e!2783864 (= (content!8115 lt!1659102) (content!8115 (map!11025 (toList!4063 (extractMap!1084 lt!1658621)) lambda!163531))))))

(assert (= (and d!1364036 res!1854818) b!4470524))

(assert (= (and b!4470524 res!1854817) b!4470525))

(assert (= (and b!4470525 res!1854816) b!4470526))

(declare-fun m!5177905 () Bool)

(assert (=> d!1364036 m!5177905))

(assert (=> d!1364036 m!5177417))

(declare-fun m!5177907 () Bool)

(assert (=> b!4470524 m!5177907))

(assert (=> b!4470524 m!5177703))

(declare-fun m!5177909 () Bool)

(assert (=> b!4470525 m!5177909))

(declare-fun m!5177911 () Bool)

(assert (=> b!4470526 m!5177911))

(declare-fun m!5177913 () Bool)

(assert (=> b!4470526 m!5177913))

(assert (=> b!4470526 m!5177913))

(declare-fun m!5177915 () Bool)

(assert (=> b!4470526 m!5177915))

(assert (=> b!4470176 d!1364036))

(assert (=> b!4469997 d!1363988))

(assert (=> b!4469997 d!1363990))

(declare-fun bs!795526 () Bool)

(declare-fun b!4470528 () Bool)

(assert (= bs!795526 (and b!4470528 b!4470368)))

(declare-fun lambda!163534 () Int)

(assert (=> bs!795526 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) lt!1658931) (= lambda!163534 lambda!163468))))

(declare-fun bs!795527 () Bool)

(assert (= bs!795527 (and b!4470528 b!4470465)))

(assert (=> bs!795527 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) lt!1659048) (= lambda!163534 lambda!163518))))

(declare-fun bs!795528 () Bool)

(assert (= bs!795528 (and b!4470528 b!4470464)))

(assert (=> bs!795528 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163534 lambda!163515))))

(declare-fun bs!795529 () Bool)

(assert (= bs!795529 (and b!4470528 d!1363918)))

(assert (=> bs!795529 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) lt!1658930) (= lambda!163534 lambda!163469))))

(declare-fun bs!795530 () Bool)

(assert (= bs!795530 (and b!4470528 d!1363992)))

(assert (=> bs!795530 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) lt!1659047) (= lambda!163534 lambda!163520))))

(assert (=> bs!795526 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163534 lambda!163467))))

(assert (=> bs!795527 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163534 lambda!163517))))

(declare-fun bs!795531 () Bool)

(assert (= bs!795531 (and b!4470528 b!4470367)))

(assert (=> bs!795531 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163534 lambda!163466))))

(declare-fun bs!795532 () Bool)

(assert (= bs!795532 (and b!4470528 d!1363818)))

(assert (=> bs!795532 (not (= lambda!163534 lambda!163394))))

(assert (=> b!4470528 true))

(declare-fun bs!795533 () Bool)

(declare-fun b!4470529 () Bool)

(assert (= bs!795533 (and b!4470529 b!4470368)))

(declare-fun lambda!163535 () Int)

(assert (=> bs!795533 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) lt!1658931) (= lambda!163535 lambda!163468))))

(declare-fun bs!795535 () Bool)

(assert (= bs!795535 (and b!4470529 b!4470528)))

(assert (=> bs!795535 (= lambda!163535 lambda!163534)))

(declare-fun bs!795537 () Bool)

(assert (= bs!795537 (and b!4470529 b!4470465)))

(assert (=> bs!795537 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) lt!1659048) (= lambda!163535 lambda!163518))))

(declare-fun bs!795539 () Bool)

(assert (= bs!795539 (and b!4470529 b!4470464)))

(assert (=> bs!795539 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163535 lambda!163515))))

(declare-fun bs!795540 () Bool)

(assert (= bs!795540 (and b!4470529 d!1363918)))

(assert (=> bs!795540 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) lt!1658930) (= lambda!163535 lambda!163469))))

(declare-fun bs!795542 () Bool)

(assert (= bs!795542 (and b!4470529 d!1363992)))

(assert (=> bs!795542 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) lt!1659047) (= lambda!163535 lambda!163520))))

(assert (=> bs!795533 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163535 lambda!163467))))

(assert (=> bs!795537 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163535 lambda!163517))))

(declare-fun bs!795545 () Bool)

(assert (= bs!795545 (and b!4470529 b!4470367)))

(assert (=> bs!795545 (= (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163535 lambda!163466))))

(declare-fun bs!795546 () Bool)

(assert (= bs!795546 (and b!4470529 d!1363818)))

(assert (=> bs!795546 (not (= lambda!163535 lambda!163394))))

(assert (=> b!4470529 true))

(declare-fun lt!1659113 () ListMap!3325)

(declare-fun lambda!163537 () Int)

(assert (=> bs!795533 (= (= lt!1659113 lt!1658931) (= lambda!163537 lambda!163468))))

(assert (=> bs!795535 (= (= lt!1659113 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163537 lambda!163534))))

(assert (=> bs!795537 (= (= lt!1659113 lt!1659048) (= lambda!163537 lambda!163518))))

(assert (=> bs!795539 (= (= lt!1659113 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163537 lambda!163515))))

(assert (=> bs!795540 (= (= lt!1659113 lt!1658930) (= lambda!163537 lambda!163469))))

(assert (=> bs!795542 (= (= lt!1659113 lt!1659047) (= lambda!163537 lambda!163520))))

(assert (=> bs!795533 (= (= lt!1659113 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163537 lambda!163467))))

(assert (=> b!4470529 (= (= lt!1659113 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163537 lambda!163535))))

(assert (=> bs!795537 (= (= lt!1659113 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163537 lambda!163517))))

(assert (=> bs!795545 (= (= lt!1659113 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163537 lambda!163466))))

(assert (=> bs!795546 (not (= lambda!163537 lambda!163394))))

(assert (=> b!4470529 true))

(declare-fun bs!795547 () Bool)

(declare-fun d!1364038 () Bool)

(assert (= bs!795547 (and d!1364038 b!4470368)))

(declare-fun lambda!163538 () Int)

(declare-fun lt!1659112 () ListMap!3325)

(assert (=> bs!795547 (= (= lt!1659112 lt!1658931) (= lambda!163538 lambda!163468))))

(declare-fun bs!795548 () Bool)

(assert (= bs!795548 (and d!1364038 b!4470528)))

(assert (=> bs!795548 (= (= lt!1659112 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163538 lambda!163534))))

(declare-fun bs!795549 () Bool)

(assert (= bs!795549 (and d!1364038 b!4470465)))

(assert (=> bs!795549 (= (= lt!1659112 lt!1659048) (= lambda!163538 lambda!163518))))

(declare-fun bs!795550 () Bool)

(assert (= bs!795550 (and d!1364038 b!4470529)))

(assert (=> bs!795550 (= (= lt!1659112 lt!1659113) (= lambda!163538 lambda!163537))))

(declare-fun bs!795552 () Bool)

(assert (= bs!795552 (and d!1364038 b!4470464)))

(assert (=> bs!795552 (= (= lt!1659112 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163538 lambda!163515))))

(declare-fun bs!795554 () Bool)

(assert (= bs!795554 (and d!1364038 d!1363918)))

(assert (=> bs!795554 (= (= lt!1659112 lt!1658930) (= lambda!163538 lambda!163469))))

(declare-fun bs!795556 () Bool)

(assert (= bs!795556 (and d!1364038 d!1363992)))

(assert (=> bs!795556 (= (= lt!1659112 lt!1659047) (= lambda!163538 lambda!163520))))

(assert (=> bs!795547 (= (= lt!1659112 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163538 lambda!163467))))

(assert (=> bs!795550 (= (= lt!1659112 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163538 lambda!163535))))

(assert (=> bs!795549 (= (= lt!1659112 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163538 lambda!163517))))

(declare-fun bs!795560 () Bool)

(assert (= bs!795560 (and d!1364038 b!4470367)))

(assert (=> bs!795560 (= (= lt!1659112 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163538 lambda!163466))))

(declare-fun bs!795562 () Bool)

(assert (= bs!795562 (and d!1364038 d!1363818)))

(assert (=> bs!795562 (not (= lambda!163538 lambda!163394))))

(assert (=> d!1364038 true))

(declare-fun bm!311244 () Bool)

(declare-fun call!311251 () Unit!87799)

(assert (=> bm!311244 (= call!311251 (lemmaContainsAllItsOwnKeys!268 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))))))

(declare-fun c!761117 () Bool)

(declare-fun lt!1659109 () ListMap!3325)

(declare-fun call!311249 () Bool)

(declare-fun bm!311245 () Bool)

(assert (=> bm!311245 (= call!311249 (forall!10000 (ite c!761117 (toList!4063 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (toList!4063 lt!1659109)) (ite c!761117 lambda!163534 lambda!163537)))))

(declare-fun e!2783866 () ListMap!3325)

(assert (=> b!4470528 (= e!2783866 (extractMap!1084 (t!357371 (toList!4064 lt!1658620))))))

(declare-fun lt!1659105 () Unit!87799)

(assert (=> b!4470528 (= lt!1659105 call!311251)))

(declare-fun call!311250 () Bool)

(assert (=> b!4470528 call!311250))

(declare-fun lt!1659121 () Unit!87799)

(assert (=> b!4470528 (= lt!1659121 lt!1659105)))

(assert (=> b!4470528 call!311249))

(declare-fun lt!1659103 () Unit!87799)

(declare-fun Unit!87874 () Unit!87799)

(assert (=> b!4470528 (= lt!1659103 Unit!87874)))

(assert (=> b!4470529 (= e!2783866 lt!1659113)))

(assert (=> b!4470529 (= lt!1659109 (+!1373 (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) (h!56063 (_2!28568 (h!56064 (toList!4064 lt!1658620))))))))

(assert (=> b!4470529 (= lt!1659113 (addToMapMapFromBucket!593 (t!357370 (_2!28568 (h!56064 (toList!4064 lt!1658620)))) (+!1373 (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) (h!56063 (_2!28568 (h!56064 (toList!4064 lt!1658620)))))))))

(declare-fun lt!1659115 () Unit!87799)

(assert (=> b!4470529 (= lt!1659115 call!311251)))

(assert (=> b!4470529 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) lambda!163535)))

(declare-fun lt!1659117 () Unit!87799)

(assert (=> b!4470529 (= lt!1659117 lt!1659115)))

(assert (=> b!4470529 call!311249))

(declare-fun lt!1659107 () Unit!87799)

(declare-fun Unit!87875 () Unit!87799)

(assert (=> b!4470529 (= lt!1659107 Unit!87875)))

(assert (=> b!4470529 (forall!10000 (t!357370 (_2!28568 (h!56064 (toList!4064 lt!1658620)))) lambda!163537)))

(declare-fun lt!1659108 () Unit!87799)

(declare-fun Unit!87876 () Unit!87799)

(assert (=> b!4470529 (= lt!1659108 Unit!87876)))

(declare-fun lt!1659104 () Unit!87799)

(declare-fun Unit!87877 () Unit!87799)

(assert (=> b!4470529 (= lt!1659104 Unit!87877)))

(declare-fun lt!1659119 () Unit!87799)

(assert (=> b!4470529 (= lt!1659119 (forallContained!2267 (toList!4063 lt!1659109) lambda!163537 (h!56063 (_2!28568 (h!56064 (toList!4064 lt!1658620))))))))

(assert (=> b!4470529 (contains!12853 lt!1659109 (_1!28567 (h!56063 (_2!28568 (h!56064 (toList!4064 lt!1658620))))))))

(declare-fun lt!1659120 () Unit!87799)

(declare-fun Unit!87878 () Unit!87799)

(assert (=> b!4470529 (= lt!1659120 Unit!87878)))

(assert (=> b!4470529 (contains!12853 lt!1659113 (_1!28567 (h!56063 (_2!28568 (h!56064 (toList!4064 lt!1658620))))))))

(declare-fun lt!1659106 () Unit!87799)

(declare-fun Unit!87879 () Unit!87799)

(assert (=> b!4470529 (= lt!1659106 Unit!87879)))

(assert (=> b!4470529 (forall!10000 (_2!28568 (h!56064 (toList!4064 lt!1658620))) lambda!163537)))

(declare-fun lt!1659122 () Unit!87799)

(declare-fun Unit!87880 () Unit!87799)

(assert (=> b!4470529 (= lt!1659122 Unit!87880)))

(assert (=> b!4470529 (forall!10000 (toList!4063 lt!1659109) lambda!163537)))

(declare-fun lt!1659116 () Unit!87799)

(declare-fun Unit!87881 () Unit!87799)

(assert (=> b!4470529 (= lt!1659116 Unit!87881)))

(declare-fun lt!1659118 () Unit!87799)

(declare-fun Unit!87882 () Unit!87799)

(assert (=> b!4470529 (= lt!1659118 Unit!87882)))

(declare-fun lt!1659123 () Unit!87799)

(assert (=> b!4470529 (= lt!1659123 (addForallContainsKeyThenBeforeAdding!267 (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) lt!1659113 (_1!28567 (h!56063 (_2!28568 (h!56064 (toList!4064 lt!1658620))))) (_2!28567 (h!56063 (_2!28568 (h!56064 (toList!4064 lt!1658620)))))))))

(assert (=> b!4470529 call!311250))

(declare-fun lt!1659114 () Unit!87799)

(assert (=> b!4470529 (= lt!1659114 lt!1659123)))

(assert (=> b!4470529 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) lambda!163537)))

(declare-fun lt!1659110 () Unit!87799)

(declare-fun Unit!87883 () Unit!87799)

(assert (=> b!4470529 (= lt!1659110 Unit!87883)))

(declare-fun res!1854820 () Bool)

(assert (=> b!4470529 (= res!1854820 (forall!10000 (_2!28568 (h!56064 (toList!4064 lt!1658620))) lambda!163537))))

(declare-fun e!2783867 () Bool)

(assert (=> b!4470529 (=> (not res!1854820) (not e!2783867))))

(assert (=> b!4470529 e!2783867))

(declare-fun lt!1659111 () Unit!87799)

(declare-fun Unit!87884 () Unit!87799)

(assert (=> b!4470529 (= lt!1659111 Unit!87884)))

(declare-fun b!4470530 () Bool)

(assert (=> b!4470530 (= e!2783867 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) lambda!163537))))

(declare-fun b!4470531 () Bool)

(declare-fun e!2783865 () Bool)

(assert (=> b!4470531 (= e!2783865 (invariantList!931 (toList!4063 lt!1659112)))))

(declare-fun bm!311246 () Bool)

(assert (=> bm!311246 (= call!311250 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (ite c!761117 lambda!163534 lambda!163537)))))

(declare-fun b!4470527 () Bool)

(declare-fun res!1854819 () Bool)

(assert (=> b!4470527 (=> (not res!1854819) (not e!2783865))))

(assert (=> b!4470527 (= res!1854819 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) lambda!163538))))

(assert (=> d!1364038 e!2783865))

(declare-fun res!1854821 () Bool)

(assert (=> d!1364038 (=> (not res!1854821) (not e!2783865))))

(assert (=> d!1364038 (= res!1854821 (forall!10000 (_2!28568 (h!56064 (toList!4064 lt!1658620))) lambda!163538))))

(assert (=> d!1364038 (= lt!1659112 e!2783866)))

(assert (=> d!1364038 (= c!761117 ((_ is Nil!50296) (_2!28568 (h!56064 (toList!4064 lt!1658620)))))))

(assert (=> d!1364038 (noDuplicateKeys!1028 (_2!28568 (h!56064 (toList!4064 lt!1658620))))))

(assert (=> d!1364038 (= (addToMapMapFromBucket!593 (_2!28568 (h!56064 (toList!4064 lt!1658620))) (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) lt!1659112)))

(assert (= (and d!1364038 c!761117) b!4470528))

(assert (= (and d!1364038 (not c!761117)) b!4470529))

(assert (= (and b!4470529 res!1854820) b!4470530))

(assert (= (or b!4470528 b!4470529) bm!311246))

(assert (= (or b!4470528 b!4470529) bm!311245))

(assert (= (or b!4470528 b!4470529) bm!311244))

(assert (= (and d!1364038 res!1854821) b!4470527))

(assert (= (and b!4470527 res!1854819) b!4470531))

(declare-fun m!5177967 () Bool)

(assert (=> bm!311245 m!5177967))

(declare-fun m!5177969 () Bool)

(assert (=> bm!311246 m!5177969))

(declare-fun m!5177971 () Bool)

(assert (=> d!1364038 m!5177971))

(declare-fun m!5177973 () Bool)

(assert (=> d!1364038 m!5177973))

(assert (=> bm!311244 m!5177445))

(declare-fun m!5177975 () Bool)

(assert (=> bm!311244 m!5177975))

(declare-fun m!5177977 () Bool)

(assert (=> b!4470527 m!5177977))

(declare-fun m!5177979 () Bool)

(assert (=> b!4470531 m!5177979))

(declare-fun m!5177981 () Bool)

(assert (=> b!4470529 m!5177981))

(declare-fun m!5177983 () Bool)

(assert (=> b!4470529 m!5177983))

(declare-fun m!5177985 () Bool)

(assert (=> b!4470529 m!5177985))

(declare-fun m!5177987 () Bool)

(assert (=> b!4470529 m!5177987))

(assert (=> b!4470529 m!5177445))

(declare-fun m!5177989 () Bool)

(assert (=> b!4470529 m!5177989))

(declare-fun m!5177991 () Bool)

(assert (=> b!4470529 m!5177991))

(assert (=> b!4470529 m!5177445))

(assert (=> b!4470529 m!5177981))

(declare-fun m!5177993 () Bool)

(assert (=> b!4470529 m!5177993))

(declare-fun m!5177995 () Bool)

(assert (=> b!4470529 m!5177995))

(assert (=> b!4470529 m!5177995))

(declare-fun m!5177997 () Bool)

(assert (=> b!4470529 m!5177997))

(declare-fun m!5177999 () Bool)

(assert (=> b!4470529 m!5177999))

(declare-fun m!5178001 () Bool)

(assert (=> b!4470529 m!5178001))

(assert (=> b!4470530 m!5177999))

(assert (=> b!4470202 d!1364038))

(declare-fun bs!795569 () Bool)

(declare-fun d!1364048 () Bool)

(assert (= bs!795569 (and d!1364048 d!1363876)))

(declare-fun lambda!163540 () Int)

(assert (=> bs!795569 (= lambda!163540 lambda!163412)))

(declare-fun bs!795570 () Bool)

(assert (= bs!795570 (and d!1364048 d!1363996)))

(assert (=> bs!795570 (= lambda!163540 lambda!163522)))

(declare-fun bs!795571 () Bool)

(assert (= bs!795571 (and d!1364048 d!1363856)))

(assert (=> bs!795571 (= lambda!163540 lambda!163407)))

(declare-fun bs!795572 () Bool)

(assert (= bs!795572 (and d!1364048 d!1363756)))

(assert (=> bs!795572 (= lambda!163540 lambda!163373)))

(declare-fun bs!795573 () Bool)

(assert (= bs!795573 (and d!1364048 start!439252)))

(assert (=> bs!795573 (= lambda!163540 lambda!163367)))

(declare-fun bs!795574 () Bool)

(assert (= bs!795574 (and d!1364048 d!1363862)))

(assert (=> bs!795574 (= lambda!163540 lambda!163408)))

(declare-fun bs!795575 () Bool)

(assert (= bs!795575 (and d!1364048 d!1363956)))

(assert (=> bs!795575 (= lambda!163540 lambda!163470)))

(declare-fun bs!795576 () Bool)

(assert (= bs!795576 (and d!1364048 d!1363872)))

(assert (=> bs!795576 (not (= lambda!163540 lambda!163411))))

(declare-fun bs!795577 () Bool)

(assert (= bs!795577 (and d!1364048 d!1363878)))

(assert (=> bs!795577 (= lambda!163540 lambda!163413)))

(declare-fun bs!795578 () Bool)

(assert (= bs!795578 (and d!1364048 d!1363844)))

(assert (=> bs!795578 (= lambda!163540 lambda!163402)))

(declare-fun bs!795579 () Bool)

(assert (= bs!795579 (and d!1364048 d!1363848)))

(assert (=> bs!795579 (= lambda!163540 lambda!163403)))

(declare-fun bs!795580 () Bool)

(assert (= bs!795580 (and d!1364048 d!1363832)))

(assert (=> bs!795580 (= lambda!163540 lambda!163399)))

(declare-fun bs!795581 () Bool)

(assert (= bs!795581 (and d!1364048 d!1363850)))

(assert (=> bs!795581 (= lambda!163540 lambda!163404)))

(declare-fun lt!1659125 () ListMap!3325)

(assert (=> d!1364048 (invariantList!931 (toList!4063 lt!1659125))))

(declare-fun e!2783871 () ListMap!3325)

(assert (=> d!1364048 (= lt!1659125 e!2783871)))

(declare-fun c!761119 () Bool)

(assert (=> d!1364048 (= c!761119 ((_ is Cons!50297) (t!357371 (toList!4064 lt!1658620))))))

(assert (=> d!1364048 (forall!9998 (t!357371 (toList!4064 lt!1658620)) lambda!163540)))

(assert (=> d!1364048 (= (extractMap!1084 (t!357371 (toList!4064 lt!1658620))) lt!1659125)))

(declare-fun b!4470536 () Bool)

(assert (=> b!4470536 (= e!2783871 (addToMapMapFromBucket!593 (_2!28568 (h!56064 (t!357371 (toList!4064 lt!1658620)))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lt!1658620))))))))

(declare-fun b!4470537 () Bool)

(assert (=> b!4470537 (= e!2783871 (ListMap!3326 Nil!50296))))

(assert (= (and d!1364048 c!761119) b!4470536))

(assert (= (and d!1364048 (not c!761119)) b!4470537))

(declare-fun m!5178003 () Bool)

(assert (=> d!1364048 m!5178003))

(declare-fun m!5178005 () Bool)

(assert (=> d!1364048 m!5178005))

(declare-fun m!5178007 () Bool)

(assert (=> b!4470536 m!5178007))

(assert (=> b!4470536 m!5178007))

(declare-fun m!5178009 () Bool)

(assert (=> b!4470536 m!5178009))

(assert (=> b!4470202 d!1364048))

(declare-fun d!1364050 () Bool)

(declare-fun c!761122 () Bool)

(assert (=> d!1364050 (= c!761122 ((_ is Nil!50299) (keys!17370 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))

(declare-fun e!2783881 () (InoxSet K!11710))

(assert (=> d!1364050 (= (content!8115 (keys!17370 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) e!2783881)))

(declare-fun b!4470551 () Bool)

(assert (=> b!4470551 (= e!2783881 ((as const (Array K!11710 Bool)) false))))

(declare-fun b!4470552 () Bool)

(assert (=> b!4470552 (= e!2783881 ((_ map or) (store ((as const (Array K!11710 Bool)) false) (h!56068 (keys!17370 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) true) (content!8115 (t!357373 (keys!17370 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))))

(assert (= (and d!1364050 c!761122) b!4470551))

(assert (= (and d!1364050 (not c!761122)) b!4470552))

(declare-fun m!5178013 () Bool)

(assert (=> b!4470552 m!5178013))

(declare-fun m!5178015 () Bool)

(assert (=> b!4470552 m!5178015))

(assert (=> b!4470169 d!1364050))

(declare-fun bs!795594 () Bool)

(declare-fun b!4470554 () Bool)

(assert (= bs!795594 (and b!4470554 b!4470270)))

(declare-fun lambda!163543 () Int)

(assert (=> bs!795594 (= (= (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (= lambda!163543 lambda!163424))))

(declare-fun bs!795595 () Bool)

(assert (= bs!795595 (and b!4470554 b!4470423)))

(assert (=> bs!795595 (= (= (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621))))) (= lambda!163543 lambda!163494))))

(declare-fun bs!795596 () Bool)

(assert (= bs!795596 (and b!4470554 b!4470382)))

(assert (=> bs!795596 (= (= (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (toList!4063 lt!1658626)) (= lambda!163543 lambda!163471))))

(declare-fun bs!795597 () Bool)

(assert (= bs!795597 (and b!4470554 b!4470525)))

(assert (=> bs!795597 (= (= (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163543 lambda!163530))))

(declare-fun bs!795598 () Bool)

(assert (= bs!795598 (and b!4470554 b!4470421)))

(assert (=> bs!795598 (= (= (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) (= lambda!163543 lambda!163493))))

(declare-fun bs!795599 () Bool)

(assert (= bs!795599 (and b!4470554 b!4470424)))

(assert (=> bs!795599 (= (= (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163543 lambda!163497))))

(assert (=> b!4470554 true))

(declare-fun bs!795600 () Bool)

(declare-fun b!4470555 () Bool)

(assert (= bs!795600 (and b!4470555 b!4470271)))

(declare-fun lambda!163544 () Int)

(assert (=> bs!795600 (= lambda!163544 lambda!163425)))

(declare-fun bs!795601 () Bool)

(assert (= bs!795601 (and b!4470555 b!4470383)))

(assert (=> bs!795601 (= lambda!163544 lambda!163472)))

(declare-fun bs!795602 () Bool)

(assert (= bs!795602 (and b!4470555 b!4470422)))

(assert (=> bs!795602 (= lambda!163544 lambda!163500)))

(declare-fun bs!795603 () Bool)

(assert (= bs!795603 (and b!4470555 b!4470526)))

(assert (=> bs!795603 (= lambda!163544 lambda!163531)))

(declare-fun d!1364054 () Bool)

(declare-fun e!2783882 () Bool)

(assert (=> d!1364054 e!2783882))

(declare-fun res!1854835 () Bool)

(assert (=> d!1364054 (=> (not res!1854835) (not e!2783882))))

(declare-fun lt!1659127 () List!50423)

(assert (=> d!1364054 (= res!1854835 (noDuplicate!700 lt!1659127))))

(assert (=> d!1364054 (= lt!1659127 (getKeysList!379 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))

(assert (=> d!1364054 (= (keys!17370 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lt!1659127)))

(declare-fun b!4470553 () Bool)

(declare-fun res!1854834 () Bool)

(assert (=> b!4470553 (=> (not res!1854834) (not e!2783882))))

(assert (=> b!4470553 (= res!1854834 (= (length!256 lt!1659127) (length!257 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))))

(declare-fun res!1854833 () Bool)

(assert (=> b!4470554 (=> (not res!1854833) (not e!2783882))))

(assert (=> b!4470554 (= res!1854833 (forall!10002 lt!1659127 lambda!163543))))

(assert (=> b!4470555 (= e!2783882 (= (content!8115 lt!1659127) (content!8115 (map!11025 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lambda!163544))))))

(assert (= (and d!1364054 res!1854835) b!4470553))

(assert (= (and b!4470553 res!1854834) b!4470554))

(assert (= (and b!4470554 res!1854833) b!4470555))

(declare-fun m!5178039 () Bool)

(assert (=> d!1364054 m!5178039))

(declare-fun m!5178041 () Bool)

(assert (=> d!1364054 m!5178041))

(declare-fun m!5178043 () Bool)

(assert (=> b!4470553 m!5178043))

(declare-fun m!5178045 () Bool)

(assert (=> b!4470553 m!5178045))

(declare-fun m!5178047 () Bool)

(assert (=> b!4470554 m!5178047))

(declare-fun m!5178049 () Bool)

(assert (=> b!4470555 m!5178049))

(declare-fun m!5178051 () Bool)

(assert (=> b!4470555 m!5178051))

(assert (=> b!4470555 m!5178051))

(declare-fun m!5178053 () Bool)

(assert (=> b!4470555 m!5178053))

(assert (=> b!4470169 d!1364054))

(declare-fun d!1364062 () Bool)

(declare-fun c!761123 () Bool)

(assert (=> d!1364062 (= c!761123 ((_ is Nil!50299) (keys!17370 lt!1658819)))))

(declare-fun e!2783887 () (InoxSet K!11710))

(assert (=> d!1364062 (= (content!8115 (keys!17370 lt!1658819)) e!2783887)))

(declare-fun b!4470560 () Bool)

(assert (=> b!4470560 (= e!2783887 ((as const (Array K!11710 Bool)) false))))

(declare-fun b!4470561 () Bool)

(assert (=> b!4470561 (= e!2783887 ((_ map or) (store ((as const (Array K!11710 Bool)) false) (h!56068 (keys!17370 lt!1658819)) true) (content!8115 (t!357373 (keys!17370 lt!1658819)))))))

(assert (= (and d!1364062 c!761123) b!4470560))

(assert (= (and d!1364062 (not c!761123)) b!4470561))

(declare-fun m!5178055 () Bool)

(assert (=> b!4470561 m!5178055))

(declare-fun m!5178057 () Bool)

(assert (=> b!4470561 m!5178057))

(assert (=> b!4470169 d!1364062))

(declare-fun bs!795604 () Bool)

(declare-fun b!4470563 () Bool)

(assert (= bs!795604 (and b!4470563 b!4470270)))

(declare-fun lambda!163545 () Int)

(assert (=> bs!795604 (= (= (toList!4063 lt!1658819) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (= lambda!163545 lambda!163424))))

(declare-fun bs!795605 () Bool)

(assert (= bs!795605 (and b!4470563 b!4470423)))

(assert (=> bs!795605 (= (= (toList!4063 lt!1658819) (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621))))) (= lambda!163545 lambda!163494))))

(declare-fun bs!795606 () Bool)

(assert (= bs!795606 (and b!4470563 b!4470382)))

(assert (=> bs!795606 (= (= (toList!4063 lt!1658819) (toList!4063 lt!1658626)) (= lambda!163545 lambda!163471))))

(declare-fun bs!795607 () Bool)

(assert (= bs!795607 (and b!4470563 b!4470525)))

(assert (=> bs!795607 (= (= (toList!4063 lt!1658819) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163545 lambda!163530))))

(declare-fun bs!795608 () Bool)

(assert (= bs!795608 (and b!4470563 b!4470554)))

(assert (=> bs!795608 (= (= (toList!4063 lt!1658819) (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163545 lambda!163543))))

(declare-fun bs!795609 () Bool)

(assert (= bs!795609 (and b!4470563 b!4470421)))

(assert (=> bs!795609 (= (= (toList!4063 lt!1658819) (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) (= lambda!163545 lambda!163493))))

(declare-fun bs!795610 () Bool)

(assert (= bs!795610 (and b!4470563 b!4470424)))

(assert (=> bs!795610 (= (= (toList!4063 lt!1658819) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163545 lambda!163497))))

(assert (=> b!4470563 true))

(declare-fun bs!795611 () Bool)

(declare-fun b!4470564 () Bool)

(assert (= bs!795611 (and b!4470564 b!4470526)))

(declare-fun lambda!163546 () Int)

(assert (=> bs!795611 (= lambda!163546 lambda!163531)))

(declare-fun bs!795613 () Bool)

(assert (= bs!795613 (and b!4470564 b!4470555)))

(assert (=> bs!795613 (= lambda!163546 lambda!163544)))

(declare-fun bs!795614 () Bool)

(assert (= bs!795614 (and b!4470564 b!4470271)))

(assert (=> bs!795614 (= lambda!163546 lambda!163425)))

(declare-fun bs!795615 () Bool)

(assert (= bs!795615 (and b!4470564 b!4470422)))

(assert (=> bs!795615 (= lambda!163546 lambda!163500)))

(declare-fun bs!795617 () Bool)

(assert (= bs!795617 (and b!4470564 b!4470383)))

(assert (=> bs!795617 (= lambda!163546 lambda!163472)))

(declare-fun d!1364064 () Bool)

(declare-fun e!2783888 () Bool)

(assert (=> d!1364064 e!2783888))

(declare-fun res!1854842 () Bool)

(assert (=> d!1364064 (=> (not res!1854842) (not e!2783888))))

(declare-fun lt!1659129 () List!50423)

(assert (=> d!1364064 (= res!1854842 (noDuplicate!700 lt!1659129))))

(assert (=> d!1364064 (= lt!1659129 (getKeysList!379 (toList!4063 lt!1658819)))))

(assert (=> d!1364064 (= (keys!17370 lt!1658819) lt!1659129)))

(declare-fun b!4470562 () Bool)

(declare-fun res!1854841 () Bool)

(assert (=> b!4470562 (=> (not res!1854841) (not e!2783888))))

(assert (=> b!4470562 (= res!1854841 (= (length!256 lt!1659129) (length!257 (toList!4063 lt!1658819))))))

(declare-fun res!1854840 () Bool)

(assert (=> b!4470563 (=> (not res!1854840) (not e!2783888))))

(assert (=> b!4470563 (= res!1854840 (forall!10002 lt!1659129 lambda!163545))))

(assert (=> b!4470564 (= e!2783888 (= (content!8115 lt!1659129) (content!8115 (map!11025 (toList!4063 lt!1658819) lambda!163546))))))

(assert (= (and d!1364064 res!1854842) b!4470562))

(assert (= (and b!4470562 res!1854841) b!4470563))

(assert (= (and b!4470563 res!1854840) b!4470564))

(declare-fun m!5178065 () Bool)

(assert (=> d!1364064 m!5178065))

(declare-fun m!5178067 () Bool)

(assert (=> d!1364064 m!5178067))

(declare-fun m!5178069 () Bool)

(assert (=> b!4470562 m!5178069))

(declare-fun m!5178071 () Bool)

(assert (=> b!4470562 m!5178071))

(declare-fun m!5178073 () Bool)

(assert (=> b!4470563 m!5178073))

(declare-fun m!5178075 () Bool)

(assert (=> b!4470564 m!5178075))

(declare-fun m!5178077 () Bool)

(assert (=> b!4470564 m!5178077))

(assert (=> b!4470564 m!5178077))

(declare-fun m!5178079 () Bool)

(assert (=> b!4470564 m!5178079))

(assert (=> b!4470169 d!1364064))

(declare-fun d!1364072 () Bool)

(assert (=> d!1364072 (isDefined!8222 (getValueByKey!921 (toList!4063 lt!1658626) key!3287))))

(declare-fun lt!1659133 () Unit!87799)

(assert (=> d!1364072 (= lt!1659133 (choose!28607 (toList!4063 lt!1658626) key!3287))))

(assert (=> d!1364072 (invariantList!931 (toList!4063 lt!1658626))))

(assert (=> d!1364072 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!825 (toList!4063 lt!1658626) key!3287) lt!1659133)))

(declare-fun bs!795618 () Bool)

(assert (= bs!795618 d!1364072))

(assert (=> bs!795618 m!5177209))

(assert (=> bs!795618 m!5177209))

(assert (=> bs!795618 m!5177213))

(declare-fun m!5178081 () Bool)

(assert (=> bs!795618 m!5178081))

(assert (=> bs!795618 m!5177889))

(assert (=> b!4470087 d!1364072))

(declare-fun d!1364074 () Bool)

(assert (=> d!1364074 (= (isDefined!8222 (getValueByKey!921 (toList!4063 lt!1658626) key!3287)) (not (isEmpty!28497 (getValueByKey!921 (toList!4063 lt!1658626) key!3287))))))

(declare-fun bs!795619 () Bool)

(assert (= bs!795619 d!1364074))

(assert (=> bs!795619 m!5177209))

(declare-fun m!5178083 () Bool)

(assert (=> bs!795619 m!5178083))

(assert (=> b!4470087 d!1364074))

(declare-fun b!4470572 () Bool)

(declare-fun e!2783892 () Option!10935)

(assert (=> b!4470572 (= e!2783892 None!10934)))

(declare-fun d!1364076 () Bool)

(declare-fun c!761126 () Bool)

(assert (=> d!1364076 (= c!761126 (and ((_ is Cons!50296) (toList!4063 lt!1658626)) (= (_1!28567 (h!56063 (toList!4063 lt!1658626))) key!3287)))))

(declare-fun e!2783891 () Option!10935)

(assert (=> d!1364076 (= (getValueByKey!921 (toList!4063 lt!1658626) key!3287) e!2783891)))

(declare-fun b!4470569 () Bool)

(assert (=> b!4470569 (= e!2783891 (Some!10934 (_2!28567 (h!56063 (toList!4063 lt!1658626)))))))

(declare-fun b!4470571 () Bool)

(assert (=> b!4470571 (= e!2783892 (getValueByKey!921 (t!357370 (toList!4063 lt!1658626)) key!3287))))

(declare-fun b!4470570 () Bool)

(assert (=> b!4470570 (= e!2783891 e!2783892)))

(declare-fun c!761127 () Bool)

(assert (=> b!4470570 (= c!761127 (and ((_ is Cons!50296) (toList!4063 lt!1658626)) (not (= (_1!28567 (h!56063 (toList!4063 lt!1658626))) key!3287))))))

(assert (= (and d!1364076 c!761126) b!4470569))

(assert (= (and d!1364076 (not c!761126)) b!4470570))

(assert (= (and b!4470570 c!761127) b!4470571))

(assert (= (and b!4470570 (not c!761127)) b!4470572))

(declare-fun m!5178085 () Bool)

(assert (=> b!4470571 m!5178085))

(assert (=> b!4470087 d!1364076))

(declare-fun d!1364078 () Bool)

(assert (=> d!1364078 (contains!12855 (getKeysList!379 (toList!4063 lt!1658626)) key!3287)))

(declare-fun lt!1659134 () Unit!87799)

(assert (=> d!1364078 (= lt!1659134 (choose!28608 (toList!4063 lt!1658626) key!3287))))

(assert (=> d!1364078 (invariantList!931 (toList!4063 lt!1658626))))

(assert (=> d!1364078 (= (lemmaInListThenGetKeysListContains!375 (toList!4063 lt!1658626) key!3287) lt!1659134)))

(declare-fun bs!795620 () Bool)

(assert (= bs!795620 d!1364078))

(assert (=> bs!795620 m!5177221))

(assert (=> bs!795620 m!5177221))

(declare-fun m!5178087 () Bool)

(assert (=> bs!795620 m!5178087))

(declare-fun m!5178089 () Bool)

(assert (=> bs!795620 m!5178089))

(assert (=> bs!795620 m!5177889))

(assert (=> b!4470087 d!1364078))

(declare-fun d!1364080 () Bool)

(declare-fun lt!1659135 () Bool)

(assert (=> d!1364080 (= lt!1659135 (select (content!8115 (keys!17370 (extractMap!1084 lt!1658621))) key!3287))))

(declare-fun e!2783893 () Bool)

(assert (=> d!1364080 (= lt!1659135 e!2783893)))

(declare-fun res!1854844 () Bool)

(assert (=> d!1364080 (=> (not res!1854844) (not e!2783893))))

(assert (=> d!1364080 (= res!1854844 ((_ is Cons!50299) (keys!17370 (extractMap!1084 lt!1658621))))))

(assert (=> d!1364080 (= (contains!12855 (keys!17370 (extractMap!1084 lt!1658621)) key!3287) lt!1659135)))

(declare-fun b!4470573 () Bool)

(declare-fun e!2783894 () Bool)

(assert (=> b!4470573 (= e!2783893 e!2783894)))

(declare-fun res!1854843 () Bool)

(assert (=> b!4470573 (=> res!1854843 e!2783894)))

(assert (=> b!4470573 (= res!1854843 (= (h!56068 (keys!17370 (extractMap!1084 lt!1658621))) key!3287))))

(declare-fun b!4470574 () Bool)

(assert (=> b!4470574 (= e!2783894 (contains!12855 (t!357373 (keys!17370 (extractMap!1084 lt!1658621))) key!3287))))

(assert (= (and d!1364080 res!1854844) b!4470573))

(assert (= (and b!4470573 (not res!1854843)) b!4470574))

(assert (=> d!1364080 m!5177401))

(declare-fun m!5178091 () Bool)

(assert (=> d!1364080 m!5178091))

(declare-fun m!5178093 () Bool)

(assert (=> d!1364080 m!5178093))

(declare-fun m!5178095 () Bool)

(assert (=> b!4470574 m!5178095))

(assert (=> b!4470174 d!1364080))

(assert (=> b!4470174 d!1364036))

(declare-fun d!1364082 () Bool)

(declare-fun res!1854852 () Bool)

(declare-fun e!2783903 () Bool)

(assert (=> d!1364082 (=> res!1854852 e!2783903)))

(assert (=> d!1364082 (= res!1854852 ((_ is Nil!50296) newBucket!178))))

(assert (=> d!1364082 (= (forall!10000 newBucket!178 lambda!163394) e!2783903)))

(declare-fun b!4470588 () Bool)

(declare-fun e!2783904 () Bool)

(assert (=> b!4470588 (= e!2783903 e!2783904)))

(declare-fun res!1854853 () Bool)

(assert (=> b!4470588 (=> (not res!1854853) (not e!2783904))))

(declare-fun dynLambda!21019 (Int tuple2!50546) Bool)

(assert (=> b!4470588 (= res!1854853 (dynLambda!21019 lambda!163394 (h!56063 newBucket!178)))))

(declare-fun b!4470589 () Bool)

(assert (=> b!4470589 (= e!2783904 (forall!10000 (t!357370 newBucket!178) lambda!163394))))

(assert (= (and d!1364082 (not res!1854852)) b!4470588))

(assert (= (and b!4470588 res!1854853) b!4470589))

(declare-fun b_lambda!148485 () Bool)

(assert (=> (not b_lambda!148485) (not b!4470588)))

(declare-fun m!5178101 () Bool)

(assert (=> b!4470588 m!5178101))

(declare-fun m!5178103 () Bool)

(assert (=> b!4470589 m!5178103))

(assert (=> d!1363818 d!1364082))

(declare-fun d!1364086 () Bool)

(assert (=> d!1364086 (= (isDefined!8222 (getValueByKey!921 (toList!4063 (extractMap!1084 lt!1658621)) key!3287)) (not (isEmpty!28497 (getValueByKey!921 (toList!4063 (extractMap!1084 lt!1658621)) key!3287))))))

(declare-fun bs!795627 () Bool)

(assert (= bs!795627 d!1364086))

(assert (=> bs!795627 m!5177407))

(declare-fun m!5178105 () Bool)

(assert (=> bs!795627 m!5178105))

(assert (=> b!4470182 d!1364086))

(declare-fun b!4470593 () Bool)

(declare-fun e!2783906 () Option!10935)

(assert (=> b!4470593 (= e!2783906 None!10934)))

(declare-fun d!1364088 () Bool)

(declare-fun c!761131 () Bool)

(assert (=> d!1364088 (= c!761131 (and ((_ is Cons!50296) (toList!4063 (extractMap!1084 lt!1658621))) (= (_1!28567 (h!56063 (toList!4063 (extractMap!1084 lt!1658621)))) key!3287)))))

(declare-fun e!2783905 () Option!10935)

(assert (=> d!1364088 (= (getValueByKey!921 (toList!4063 (extractMap!1084 lt!1658621)) key!3287) e!2783905)))

(declare-fun b!4470590 () Bool)

(assert (=> b!4470590 (= e!2783905 (Some!10934 (_2!28567 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))))))))

(declare-fun b!4470592 () Bool)

(assert (=> b!4470592 (= e!2783906 (getValueByKey!921 (t!357370 (toList!4063 (extractMap!1084 lt!1658621))) key!3287))))

(declare-fun b!4470591 () Bool)

(assert (=> b!4470591 (= e!2783905 e!2783906)))

(declare-fun c!761132 () Bool)

(assert (=> b!4470591 (= c!761132 (and ((_ is Cons!50296) (toList!4063 (extractMap!1084 lt!1658621))) (not (= (_1!28567 (h!56063 (toList!4063 (extractMap!1084 lt!1658621)))) key!3287))))))

(assert (= (and d!1364088 c!761131) b!4470590))

(assert (= (and d!1364088 (not c!761131)) b!4470591))

(assert (= (and b!4470591 c!761132) b!4470592))

(assert (= (and b!4470591 (not c!761132)) b!4470593))

(declare-fun m!5178107 () Bool)

(assert (=> b!4470592 m!5178107))

(assert (=> b!4470182 d!1364088))

(declare-fun d!1364090 () Bool)

(declare-fun lt!1659146 () Bool)

(assert (=> d!1364090 (= lt!1659146 (select (content!8115 e!2783638) key!3287))))

(declare-fun e!2783907 () Bool)

(assert (=> d!1364090 (= lt!1659146 e!2783907)))

(declare-fun res!1854855 () Bool)

(assert (=> d!1364090 (=> (not res!1854855) (not e!2783907))))

(assert (=> d!1364090 (= res!1854855 ((_ is Cons!50299) e!2783638))))

(assert (=> d!1364090 (= (contains!12855 e!2783638 key!3287) lt!1659146)))

(declare-fun b!4470594 () Bool)

(declare-fun e!2783908 () Bool)

(assert (=> b!4470594 (= e!2783907 e!2783908)))

(declare-fun res!1854854 () Bool)

(assert (=> b!4470594 (=> res!1854854 e!2783908)))

(assert (=> b!4470594 (= res!1854854 (= (h!56068 e!2783638) key!3287))))

(declare-fun b!4470595 () Bool)

(assert (=> b!4470595 (= e!2783908 (contains!12855 (t!357373 e!2783638) key!3287))))

(assert (= (and d!1364090 res!1854855) b!4470594))

(assert (= (and b!4470594 (not res!1854854)) b!4470595))

(declare-fun m!5178109 () Bool)

(assert (=> d!1364090 m!5178109))

(declare-fun m!5178111 () Bool)

(assert (=> d!1364090 m!5178111))

(declare-fun m!5178113 () Bool)

(assert (=> b!4470595 m!5178113))

(assert (=> bm!311218 d!1364090))

(declare-fun b!4470596 () Bool)

(declare-fun e!2783910 () Bool)

(assert (=> b!4470596 (= e!2783910 (not (contains!12855 (keys!17370 (extractMap!1084 (toList!4064 (ListLongMap!2696 lt!1658621)))) key!3287)))))

(declare-fun b!4470597 () Bool)

(declare-fun e!2783909 () Bool)

(assert (=> b!4470597 (= e!2783909 (contains!12855 (keys!17370 (extractMap!1084 (toList!4064 (ListLongMap!2696 lt!1658621)))) key!3287))))

(declare-fun b!4470599 () Bool)

(declare-fun e!2783913 () Unit!87799)

(declare-fun Unit!87885 () Unit!87799)

(assert (=> b!4470599 (= e!2783913 Unit!87885)))

(declare-fun b!4470600 () Bool)

(declare-fun e!2783914 () List!50423)

(assert (=> b!4470600 (= e!2783914 (getKeysList!379 (toList!4063 (extractMap!1084 (toList!4064 (ListLongMap!2696 lt!1658621))))))))

(declare-fun b!4470601 () Bool)

(declare-fun e!2783912 () Unit!87799)

(declare-fun lt!1659147 () Unit!87799)

(assert (=> b!4470601 (= e!2783912 lt!1659147)))

(declare-fun lt!1659150 () Unit!87799)

(assert (=> b!4470601 (= lt!1659150 (lemmaContainsKeyImpliesGetValueByKeyDefined!825 (toList!4063 (extractMap!1084 (toList!4064 (ListLongMap!2696 lt!1658621)))) key!3287))))

(assert (=> b!4470601 (isDefined!8222 (getValueByKey!921 (toList!4063 (extractMap!1084 (toList!4064 (ListLongMap!2696 lt!1658621)))) key!3287))))

(declare-fun lt!1659148 () Unit!87799)

(assert (=> b!4470601 (= lt!1659148 lt!1659150)))

(assert (=> b!4470601 (= lt!1659147 (lemmaInListThenGetKeysListContains!375 (toList!4063 (extractMap!1084 (toList!4064 (ListLongMap!2696 lt!1658621)))) key!3287))))

(declare-fun call!311252 () Bool)

(assert (=> b!4470601 call!311252))

(declare-fun b!4470602 () Bool)

(assert (=> b!4470602 (= e!2783912 e!2783913)))

(declare-fun c!761135 () Bool)

(assert (=> b!4470602 (= c!761135 call!311252)))

(declare-fun b!4470603 () Bool)

(assert (=> b!4470603 false))

(declare-fun lt!1659154 () Unit!87799)

(declare-fun lt!1659149 () Unit!87799)

(assert (=> b!4470603 (= lt!1659154 lt!1659149)))

(assert (=> b!4470603 (containsKey!1484 (toList!4063 (extractMap!1084 (toList!4064 (ListLongMap!2696 lt!1658621)))) key!3287)))

(assert (=> b!4470603 (= lt!1659149 (lemmaInGetKeysListThenContainsKey!378 (toList!4063 (extractMap!1084 (toList!4064 (ListLongMap!2696 lt!1658621)))) key!3287))))

(declare-fun Unit!87886 () Unit!87799)

(assert (=> b!4470603 (= e!2783913 Unit!87886)))

(declare-fun b!4470604 () Bool)

(declare-fun e!2783911 () Bool)

(assert (=> b!4470604 (= e!2783911 e!2783909)))

(declare-fun res!1854856 () Bool)

(assert (=> b!4470604 (=> (not res!1854856) (not e!2783909))))

(assert (=> b!4470604 (= res!1854856 (isDefined!8222 (getValueByKey!921 (toList!4063 (extractMap!1084 (toList!4064 (ListLongMap!2696 lt!1658621)))) key!3287)))))

(declare-fun bm!311247 () Bool)

(assert (=> bm!311247 (= call!311252 (contains!12855 e!2783914 key!3287))))

(declare-fun c!761133 () Bool)

(declare-fun c!761134 () Bool)

(assert (=> bm!311247 (= c!761133 c!761134)))

(declare-fun b!4470598 () Bool)

(assert (=> b!4470598 (= e!2783914 (keys!17370 (extractMap!1084 (toList!4064 (ListLongMap!2696 lt!1658621)))))))

(declare-fun d!1364092 () Bool)

(assert (=> d!1364092 e!2783911))

(declare-fun res!1854857 () Bool)

(assert (=> d!1364092 (=> res!1854857 e!2783911)))

(assert (=> d!1364092 (= res!1854857 e!2783910)))

(declare-fun res!1854858 () Bool)

(assert (=> d!1364092 (=> (not res!1854858) (not e!2783910))))

(declare-fun lt!1659153 () Bool)

(assert (=> d!1364092 (= res!1854858 (not lt!1659153))))

(declare-fun lt!1659152 () Bool)

(assert (=> d!1364092 (= lt!1659153 lt!1659152)))

(declare-fun lt!1659151 () Unit!87799)

(assert (=> d!1364092 (= lt!1659151 e!2783912)))

(assert (=> d!1364092 (= c!761134 lt!1659152)))

(assert (=> d!1364092 (= lt!1659152 (containsKey!1484 (toList!4063 (extractMap!1084 (toList!4064 (ListLongMap!2696 lt!1658621)))) key!3287))))

(assert (=> d!1364092 (= (contains!12853 (extractMap!1084 (toList!4064 (ListLongMap!2696 lt!1658621))) key!3287) lt!1659153)))

(assert (= (and d!1364092 c!761134) b!4470601))

(assert (= (and d!1364092 (not c!761134)) b!4470602))

(assert (= (and b!4470602 c!761135) b!4470603))

(assert (= (and b!4470602 (not c!761135)) b!4470599))

(assert (= (or b!4470601 b!4470602) bm!311247))

(assert (= (and bm!311247 c!761133) b!4470600))

(assert (= (and bm!311247 (not c!761133)) b!4470598))

(assert (= (and d!1364092 res!1854858) b!4470596))

(assert (= (and d!1364092 (not res!1854857)) b!4470604))

(assert (= (and b!4470604 res!1854856) b!4470597))

(assert (=> b!4470596 m!5177365))

(declare-fun m!5178115 () Bool)

(assert (=> b!4470596 m!5178115))

(assert (=> b!4470596 m!5178115))

(declare-fun m!5178117 () Bool)

(assert (=> b!4470596 m!5178117))

(declare-fun m!5178119 () Bool)

(assert (=> b!4470601 m!5178119))

(declare-fun m!5178121 () Bool)

(assert (=> b!4470601 m!5178121))

(assert (=> b!4470601 m!5178121))

(declare-fun m!5178123 () Bool)

(assert (=> b!4470601 m!5178123))

(declare-fun m!5178125 () Bool)

(assert (=> b!4470601 m!5178125))

(declare-fun m!5178127 () Bool)

(assert (=> d!1364092 m!5178127))

(declare-fun m!5178129 () Bool)

(assert (=> bm!311247 m!5178129))

(assert (=> b!4470597 m!5177365))

(assert (=> b!4470597 m!5178115))

(assert (=> b!4470597 m!5178115))

(assert (=> b!4470597 m!5178117))

(assert (=> b!4470604 m!5178121))

(assert (=> b!4470604 m!5178121))

(assert (=> b!4470604 m!5178123))

(declare-fun m!5178131 () Bool)

(assert (=> b!4470600 m!5178131))

(assert (=> b!4470603 m!5178127))

(declare-fun m!5178133 () Bool)

(assert (=> b!4470603 m!5178133))

(assert (=> b!4470598 m!5177365))

(assert (=> b!4470598 m!5178115))

(assert (=> d!1363856 d!1364092))

(declare-fun bs!795653 () Bool)

(declare-fun d!1364094 () Bool)

(assert (= bs!795653 (and d!1364094 d!1363876)))

(declare-fun lambda!163550 () Int)

(assert (=> bs!795653 (= lambda!163550 lambda!163412)))

(declare-fun bs!795655 () Bool)

(assert (= bs!795655 (and d!1364094 d!1363996)))

(assert (=> bs!795655 (= lambda!163550 lambda!163522)))

(declare-fun bs!795657 () Bool)

(assert (= bs!795657 (and d!1364094 d!1364048)))

(assert (=> bs!795657 (= lambda!163550 lambda!163540)))

(declare-fun bs!795659 () Bool)

(assert (= bs!795659 (and d!1364094 d!1363856)))

(assert (=> bs!795659 (= lambda!163550 lambda!163407)))

(declare-fun bs!795661 () Bool)

(assert (= bs!795661 (and d!1364094 d!1363756)))

(assert (=> bs!795661 (= lambda!163550 lambda!163373)))

(declare-fun bs!795663 () Bool)

(assert (= bs!795663 (and d!1364094 start!439252)))

(assert (=> bs!795663 (= lambda!163550 lambda!163367)))

(declare-fun bs!795664 () Bool)

(assert (= bs!795664 (and d!1364094 d!1363862)))

(assert (=> bs!795664 (= lambda!163550 lambda!163408)))

(declare-fun bs!795665 () Bool)

(assert (= bs!795665 (and d!1364094 d!1363956)))

(assert (=> bs!795665 (= lambda!163550 lambda!163470)))

(declare-fun bs!795666 () Bool)

(assert (= bs!795666 (and d!1364094 d!1363872)))

(assert (=> bs!795666 (not (= lambda!163550 lambda!163411))))

(declare-fun bs!795667 () Bool)

(assert (= bs!795667 (and d!1364094 d!1363878)))

(assert (=> bs!795667 (= lambda!163550 lambda!163413)))

(declare-fun bs!795668 () Bool)

(assert (= bs!795668 (and d!1364094 d!1363844)))

(assert (=> bs!795668 (= lambda!163550 lambda!163402)))

(declare-fun bs!795669 () Bool)

(assert (= bs!795669 (and d!1364094 d!1363848)))

(assert (=> bs!795669 (= lambda!163550 lambda!163403)))

(declare-fun bs!795670 () Bool)

(assert (= bs!795670 (and d!1364094 d!1363832)))

(assert (=> bs!795670 (= lambda!163550 lambda!163399)))

(declare-fun bs!795671 () Bool)

(assert (= bs!795671 (and d!1364094 d!1363850)))

(assert (=> bs!795671 (= lambda!163550 lambda!163404)))

(declare-fun lt!1659155 () ListMap!3325)

(assert (=> d!1364094 (invariantList!931 (toList!4063 lt!1659155))))

(declare-fun e!2783915 () ListMap!3325)

(assert (=> d!1364094 (= lt!1659155 e!2783915)))

(declare-fun c!761136 () Bool)

(assert (=> d!1364094 (= c!761136 ((_ is Cons!50297) (toList!4064 (ListLongMap!2696 lt!1658621))))))

(assert (=> d!1364094 (forall!9998 (toList!4064 (ListLongMap!2696 lt!1658621)) lambda!163550)))

(assert (=> d!1364094 (= (extractMap!1084 (toList!4064 (ListLongMap!2696 lt!1658621))) lt!1659155)))

(declare-fun b!4470605 () Bool)

(assert (=> b!4470605 (= e!2783915 (addToMapMapFromBucket!593 (_2!28568 (h!56064 (toList!4064 (ListLongMap!2696 lt!1658621)))) (extractMap!1084 (t!357371 (toList!4064 (ListLongMap!2696 lt!1658621))))))))

(declare-fun b!4470606 () Bool)

(assert (=> b!4470606 (= e!2783915 (ListMap!3326 Nil!50296))))

(assert (= (and d!1364094 c!761136) b!4470605))

(assert (= (and d!1364094 (not c!761136)) b!4470606))

(declare-fun m!5178147 () Bool)

(assert (=> d!1364094 m!5178147))

(declare-fun m!5178149 () Bool)

(assert (=> d!1364094 m!5178149))

(declare-fun m!5178153 () Bool)

(assert (=> b!4470605 m!5178153))

(assert (=> b!4470605 m!5178153))

(declare-fun m!5178157 () Bool)

(assert (=> b!4470605 m!5178157))

(assert (=> d!1363856 d!1364094))

(declare-fun d!1364096 () Bool)

(assert (=> d!1364096 (contains!12853 (extractMap!1084 (toList!4064 (ListLongMap!2696 lt!1658621))) key!3287)))

(assert (=> d!1364096 true))

(declare-fun _$34!559 () Unit!87799)

(assert (=> d!1364096 (= (choose!28602 (ListLongMap!2696 lt!1658621) key!3287 hashF!1107) _$34!559)))

(declare-fun bs!795672 () Bool)

(assert (= bs!795672 d!1364096))

(assert (=> bs!795672 m!5177365))

(assert (=> bs!795672 m!5177365))

(assert (=> bs!795672 m!5177367))

(assert (=> d!1363856 d!1364096))

(declare-fun d!1364106 () Bool)

(declare-fun res!1854866 () Bool)

(declare-fun e!2783923 () Bool)

(assert (=> d!1364106 (=> res!1854866 e!2783923)))

(assert (=> d!1364106 (= res!1854866 ((_ is Nil!50297) (toList!4064 (ListLongMap!2696 lt!1658621))))))

(assert (=> d!1364106 (= (forall!9998 (toList!4064 (ListLongMap!2696 lt!1658621)) lambda!163407) e!2783923)))

(declare-fun b!4470620 () Bool)

(declare-fun e!2783924 () Bool)

(assert (=> b!4470620 (= e!2783923 e!2783924)))

(declare-fun res!1854867 () Bool)

(assert (=> b!4470620 (=> (not res!1854867) (not e!2783924))))

(assert (=> b!4470620 (= res!1854867 (dynLambda!21018 lambda!163407 (h!56064 (toList!4064 (ListLongMap!2696 lt!1658621)))))))

(declare-fun b!4470621 () Bool)

(assert (=> b!4470621 (= e!2783924 (forall!9998 (t!357371 (toList!4064 (ListLongMap!2696 lt!1658621))) lambda!163407))))

(assert (= (and d!1364106 (not res!1854866)) b!4470620))

(assert (= (and b!4470620 res!1854867) b!4470621))

(declare-fun b_lambda!148487 () Bool)

(assert (=> (not b_lambda!148487) (not b!4470620)))

(declare-fun m!5178185 () Bool)

(assert (=> b!4470620 m!5178185))

(declare-fun m!5178187 () Bool)

(assert (=> b!4470621 m!5178187))

(assert (=> d!1363856 d!1364106))

(declare-fun d!1364108 () Bool)

(declare-fun lt!1659163 () Bool)

(assert (=> d!1364108 (= lt!1659163 (select (content!8114 (toList!4064 lt!1658829)) lt!1658627))))

(declare-fun e!2783925 () Bool)

(assert (=> d!1364108 (= lt!1659163 e!2783925)))

(declare-fun res!1854868 () Bool)

(assert (=> d!1364108 (=> (not res!1854868) (not e!2783925))))

(assert (=> d!1364108 (= res!1854868 ((_ is Cons!50297) (toList!4064 lt!1658829)))))

(assert (=> d!1364108 (= (contains!12851 (toList!4064 lt!1658829) lt!1658627) lt!1659163)))

(declare-fun b!4470622 () Bool)

(declare-fun e!2783926 () Bool)

(assert (=> b!4470622 (= e!2783925 e!2783926)))

(declare-fun res!1854869 () Bool)

(assert (=> b!4470622 (=> res!1854869 e!2783926)))

(assert (=> b!4470622 (= res!1854869 (= (h!56064 (toList!4064 lt!1658829)) lt!1658627))))

(declare-fun b!4470623 () Bool)

(assert (=> b!4470623 (= e!2783926 (contains!12851 (t!357371 (toList!4064 lt!1658829)) lt!1658627))))

(assert (= (and d!1364108 res!1854868) b!4470622))

(assert (= (and b!4470622 (not res!1854869)) b!4470623))

(declare-fun m!5178189 () Bool)

(assert (=> d!1364108 m!5178189))

(declare-fun m!5178191 () Bool)

(assert (=> d!1364108 m!5178191))

(declare-fun m!5178193 () Bool)

(assert (=> b!4470623 m!5178193))

(assert (=> b!4470171 d!1364108))

(declare-fun d!1364110 () Bool)

(declare-fun lt!1659164 () Bool)

(assert (=> d!1364110 (= lt!1659164 (select (content!8114 (t!357371 (toList!4064 lm!1477))) lt!1658630))))

(declare-fun e!2783927 () Bool)

(assert (=> d!1364110 (= lt!1659164 e!2783927)))

(declare-fun res!1854870 () Bool)

(assert (=> d!1364110 (=> (not res!1854870) (not e!2783927))))

(assert (=> d!1364110 (= res!1854870 ((_ is Cons!50297) (t!357371 (toList!4064 lm!1477))))))

(assert (=> d!1364110 (= (contains!12851 (t!357371 (toList!4064 lm!1477)) lt!1658630) lt!1659164)))

(declare-fun b!4470624 () Bool)

(declare-fun e!2783928 () Bool)

(assert (=> b!4470624 (= e!2783927 e!2783928)))

(declare-fun res!1854871 () Bool)

(assert (=> b!4470624 (=> res!1854871 e!2783928)))

(assert (=> b!4470624 (= res!1854871 (= (h!56064 (t!357371 (toList!4064 lm!1477))) lt!1658630))))

(declare-fun b!4470625 () Bool)

(assert (=> b!4470625 (= e!2783928 (contains!12851 (t!357371 (t!357371 (toList!4064 lm!1477))) lt!1658630))))

(assert (= (and d!1364110 res!1854870) b!4470624))

(assert (= (and b!4470624 (not res!1854871)) b!4470625))

(declare-fun m!5178195 () Bool)

(assert (=> d!1364110 m!5178195))

(declare-fun m!5178197 () Bool)

(assert (=> d!1364110 m!5178197))

(declare-fun m!5178199 () Bool)

(assert (=> b!4470625 m!5178199))

(assert (=> b!4469941 d!1364110))

(declare-fun d!1364112 () Bool)

(declare-fun choose!28612 (Hashable!5423 K!11710) (_ BitVec 64))

(assert (=> d!1364112 (= (hash!2463 hashF!1107 key!3287) (choose!28612 hashF!1107 key!3287))))

(declare-fun bs!795673 () Bool)

(assert (= bs!795673 d!1364112))

(declare-fun m!5178201 () Bool)

(assert (=> bs!795673 m!5178201))

(assert (=> d!1363826 d!1364112))

(declare-fun d!1364114 () Bool)

(declare-fun res!1854872 () Bool)

(declare-fun e!2783929 () Bool)

(assert (=> d!1364114 (=> res!1854872 e!2783929)))

(assert (=> d!1364114 (= res!1854872 (and ((_ is Cons!50296) lt!1658685) (= (_1!28567 (h!56063 lt!1658685)) key!3287)))))

(assert (=> d!1364114 (= (containsKey!1480 lt!1658685 key!3287) e!2783929)))

(declare-fun b!4470626 () Bool)

(declare-fun e!2783930 () Bool)

(assert (=> b!4470626 (= e!2783929 e!2783930)))

(declare-fun res!1854873 () Bool)

(assert (=> b!4470626 (=> (not res!1854873) (not e!2783930))))

(assert (=> b!4470626 (= res!1854873 ((_ is Cons!50296) lt!1658685))))

(declare-fun b!4470627 () Bool)

(assert (=> b!4470627 (= e!2783930 (containsKey!1480 (t!357370 lt!1658685) key!3287))))

(assert (= (and d!1364114 (not res!1854872)) b!4470626))

(assert (= (and b!4470626 res!1854873) b!4470627))

(declare-fun m!5178203 () Bool)

(assert (=> b!4470627 m!5178203))

(assert (=> d!1363770 d!1364114))

(declare-fun d!1364116 () Bool)

(declare-fun res!1854874 () Bool)

(declare-fun e!2783931 () Bool)

(assert (=> d!1364116 (=> res!1854874 e!2783931)))

(assert (=> d!1364116 (= res!1854874 (not ((_ is Cons!50296) lt!1658619)))))

(assert (=> d!1364116 (= (noDuplicateKeys!1028 lt!1658619) e!2783931)))

(declare-fun b!4470630 () Bool)

(declare-fun e!2783932 () Bool)

(assert (=> b!4470630 (= e!2783931 e!2783932)))

(declare-fun res!1854875 () Bool)

(assert (=> b!4470630 (=> (not res!1854875) (not e!2783932))))

(assert (=> b!4470630 (= res!1854875 (not (containsKey!1480 (t!357370 lt!1658619) (_1!28567 (h!56063 lt!1658619)))))))

(declare-fun b!4470631 () Bool)

(assert (=> b!4470631 (= e!2783932 (noDuplicateKeys!1028 (t!357370 lt!1658619)))))

(assert (= (and d!1364116 (not res!1854874)) b!4470630))

(assert (= (and b!4470630 res!1854875) b!4470631))

(declare-fun m!5178205 () Bool)

(assert (=> b!4470630 m!5178205))

(assert (=> b!4470631 m!5177671))

(assert (=> d!1363770 d!1364116))

(assert (=> d!1363870 d!1363984))

(declare-fun d!1364118 () Bool)

(declare-fun res!1854876 () Bool)

(declare-fun e!2783937 () Bool)

(assert (=> d!1364118 (=> res!1854876 e!2783937)))

(assert (=> d!1364118 (= res!1854876 (and ((_ is Cons!50296) (t!357370 newBucket!178)) (= (_1!28567 (h!56063 (t!357370 newBucket!178))) (_1!28567 (h!56063 newBucket!178)))))))

(assert (=> d!1364118 (= (containsKey!1480 (t!357370 newBucket!178) (_1!28567 (h!56063 newBucket!178))) e!2783937)))

(declare-fun b!4470638 () Bool)

(declare-fun e!2783938 () Bool)

(assert (=> b!4470638 (= e!2783937 e!2783938)))

(declare-fun res!1854877 () Bool)

(assert (=> b!4470638 (=> (not res!1854877) (not e!2783938))))

(assert (=> b!4470638 (= res!1854877 ((_ is Cons!50296) (t!357370 newBucket!178)))))

(declare-fun b!4470639 () Bool)

(assert (=> b!4470639 (= e!2783938 (containsKey!1480 (t!357370 (t!357370 newBucket!178)) (_1!28567 (h!56063 newBucket!178))))))

(assert (= (and d!1364118 (not res!1854876)) b!4470638))

(assert (= (and b!4470638 res!1854877) b!4470639))

(declare-fun m!5178207 () Bool)

(assert (=> b!4470639 m!5178207))

(assert (=> b!4470109 d!1364118))

(declare-fun bs!795674 () Bool)

(declare-fun b!4470649 () Bool)

(assert (= bs!795674 (and b!4470649 b!4470270)))

(declare-fun lambda!163552 () Int)

(assert (=> bs!795674 (= (= (t!357370 (toList!4063 lt!1658626)) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (= lambda!163552 lambda!163424))))

(declare-fun bs!795675 () Bool)

(assert (= bs!795675 (and b!4470649 b!4470423)))

(assert (=> bs!795675 (= (= (t!357370 (toList!4063 lt!1658626)) (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621))))) (= lambda!163552 lambda!163494))))

(declare-fun bs!795676 () Bool)

(assert (= bs!795676 (and b!4470649 b!4470382)))

(assert (=> bs!795676 (= (= (t!357370 (toList!4063 lt!1658626)) (toList!4063 lt!1658626)) (= lambda!163552 lambda!163471))))

(declare-fun bs!795677 () Bool)

(assert (= bs!795677 (and b!4470649 b!4470525)))

(assert (=> bs!795677 (= (= (t!357370 (toList!4063 lt!1658626)) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163552 lambda!163530))))

(declare-fun bs!795678 () Bool)

(assert (= bs!795678 (and b!4470649 b!4470421)))

(assert (=> bs!795678 (= (= (t!357370 (toList!4063 lt!1658626)) (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) (= lambda!163552 lambda!163493))))

(declare-fun bs!795679 () Bool)

(assert (= bs!795679 (and b!4470649 b!4470424)))

(assert (=> bs!795679 (= (= (t!357370 (toList!4063 lt!1658626)) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163552 lambda!163497))))

(declare-fun bs!795680 () Bool)

(assert (= bs!795680 (and b!4470649 b!4470554)))

(assert (=> bs!795680 (= (= (t!357370 (toList!4063 lt!1658626)) (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163552 lambda!163543))))

(declare-fun bs!795681 () Bool)

(assert (= bs!795681 (and b!4470649 b!4470563)))

(assert (=> bs!795681 (= (= (t!357370 (toList!4063 lt!1658626)) (toList!4063 lt!1658819)) (= lambda!163552 lambda!163545))))

(assert (=> b!4470649 true))

(declare-fun bs!795682 () Bool)

(declare-fun b!4470651 () Bool)

(assert (= bs!795682 (and b!4470651 b!4470649)))

(declare-fun lambda!163553 () Int)

(assert (=> bs!795682 (= (= (Cons!50296 (h!56063 (toList!4063 lt!1658626)) (t!357370 (toList!4063 lt!1658626))) (t!357370 (toList!4063 lt!1658626))) (= lambda!163553 lambda!163552))))

(declare-fun bs!795683 () Bool)

(assert (= bs!795683 (and b!4470651 b!4470270)))

(assert (=> bs!795683 (= (= (Cons!50296 (h!56063 (toList!4063 lt!1658626)) (t!357370 (toList!4063 lt!1658626))) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (= lambda!163553 lambda!163424))))

(declare-fun bs!795684 () Bool)

(assert (= bs!795684 (and b!4470651 b!4470423)))

(assert (=> bs!795684 (= (= (Cons!50296 (h!56063 (toList!4063 lt!1658626)) (t!357370 (toList!4063 lt!1658626))) (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621))))) (= lambda!163553 lambda!163494))))

(declare-fun bs!795685 () Bool)

(assert (= bs!795685 (and b!4470651 b!4470382)))

(assert (=> bs!795685 (= (= (Cons!50296 (h!56063 (toList!4063 lt!1658626)) (t!357370 (toList!4063 lt!1658626))) (toList!4063 lt!1658626)) (= lambda!163553 lambda!163471))))

(declare-fun bs!795686 () Bool)

(assert (= bs!795686 (and b!4470651 b!4470525)))

(assert (=> bs!795686 (= (= (Cons!50296 (h!56063 (toList!4063 lt!1658626)) (t!357370 (toList!4063 lt!1658626))) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163553 lambda!163530))))

(declare-fun bs!795687 () Bool)

(assert (= bs!795687 (and b!4470651 b!4470421)))

(assert (=> bs!795687 (= (= (Cons!50296 (h!56063 (toList!4063 lt!1658626)) (t!357370 (toList!4063 lt!1658626))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) (= lambda!163553 lambda!163493))))

(declare-fun bs!795688 () Bool)

(assert (= bs!795688 (and b!4470651 b!4470424)))

(assert (=> bs!795688 (= (= (Cons!50296 (h!56063 (toList!4063 lt!1658626)) (t!357370 (toList!4063 lt!1658626))) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163553 lambda!163497))))

(declare-fun bs!795689 () Bool)

(assert (= bs!795689 (and b!4470651 b!4470554)))

(assert (=> bs!795689 (= (= (Cons!50296 (h!56063 (toList!4063 lt!1658626)) (t!357370 (toList!4063 lt!1658626))) (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163553 lambda!163543))))

(declare-fun bs!795690 () Bool)

(assert (= bs!795690 (and b!4470651 b!4470563)))

(assert (=> bs!795690 (= (= (Cons!50296 (h!56063 (toList!4063 lt!1658626)) (t!357370 (toList!4063 lt!1658626))) (toList!4063 lt!1658819)) (= lambda!163553 lambda!163545))))

(assert (=> b!4470651 true))

(declare-fun bs!795691 () Bool)

(declare-fun b!4470652 () Bool)

(assert (= bs!795691 (and b!4470652 b!4470649)))

(declare-fun lambda!163554 () Int)

(assert (=> bs!795691 (= (= (toList!4063 lt!1658626) (t!357370 (toList!4063 lt!1658626))) (= lambda!163554 lambda!163552))))

(declare-fun bs!795692 () Bool)

(assert (= bs!795692 (and b!4470652 b!4470270)))

(assert (=> bs!795692 (= (= (toList!4063 lt!1658626) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (= lambda!163554 lambda!163424))))

(declare-fun bs!795693 () Bool)

(assert (= bs!795693 (and b!4470652 b!4470423)))

(assert (=> bs!795693 (= (= (toList!4063 lt!1658626) (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621))))) (= lambda!163554 lambda!163494))))

(declare-fun bs!795694 () Bool)

(assert (= bs!795694 (and b!4470652 b!4470382)))

(assert (=> bs!795694 (= lambda!163554 lambda!163471)))

(declare-fun bs!795695 () Bool)

(assert (= bs!795695 (and b!4470652 b!4470525)))

(assert (=> bs!795695 (= (= (toList!4063 lt!1658626) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163554 lambda!163530))))

(declare-fun bs!795696 () Bool)

(assert (= bs!795696 (and b!4470652 b!4470421)))

(assert (=> bs!795696 (= (= (toList!4063 lt!1658626) (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) (= lambda!163554 lambda!163493))))

(declare-fun bs!795697 () Bool)

(assert (= bs!795697 (and b!4470652 b!4470424)))

(assert (=> bs!795697 (= (= (toList!4063 lt!1658626) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163554 lambda!163497))))

(declare-fun bs!795698 () Bool)

(assert (= bs!795698 (and b!4470652 b!4470651)))

(assert (=> bs!795698 (= (= (toList!4063 lt!1658626) (Cons!50296 (h!56063 (toList!4063 lt!1658626)) (t!357370 (toList!4063 lt!1658626)))) (= lambda!163554 lambda!163553))))

(declare-fun bs!795699 () Bool)

(assert (= bs!795699 (and b!4470652 b!4470554)))

(assert (=> bs!795699 (= (= (toList!4063 lt!1658626) (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163554 lambda!163543))))

(declare-fun bs!795700 () Bool)

(assert (= bs!795700 (and b!4470652 b!4470563)))

(assert (=> bs!795700 (= (= (toList!4063 lt!1658626) (toList!4063 lt!1658819)) (= lambda!163554 lambda!163545))))

(assert (=> b!4470652 true))

(declare-fun bs!795701 () Bool)

(declare-fun b!4470650 () Bool)

(assert (= bs!795701 (and b!4470650 b!4470526)))

(declare-fun lambda!163555 () Int)

(assert (=> bs!795701 (= lambda!163555 lambda!163531)))

(declare-fun bs!795702 () Bool)

(assert (= bs!795702 (and b!4470650 b!4470555)))

(assert (=> bs!795702 (= lambda!163555 lambda!163544)))

(declare-fun bs!795703 () Bool)

(assert (= bs!795703 (and b!4470650 b!4470271)))

(assert (=> bs!795703 (= lambda!163555 lambda!163425)))

(declare-fun bs!795704 () Bool)

(assert (= bs!795704 (and b!4470650 b!4470422)))

(assert (=> bs!795704 (= lambda!163555 lambda!163500)))

(declare-fun bs!795705 () Bool)

(assert (= bs!795705 (and b!4470650 b!4470383)))

(assert (=> bs!795705 (= lambda!163555 lambda!163472)))

(declare-fun bs!795706 () Bool)

(assert (= bs!795706 (and b!4470650 b!4470564)))

(assert (=> bs!795706 (= lambda!163555 lambda!163546)))

(declare-fun b!4470644 () Bool)

(assert (=> b!4470644 false))

(declare-fun e!2783941 () Unit!87799)

(declare-fun Unit!87894 () Unit!87799)

(assert (=> b!4470644 (= e!2783941 Unit!87894)))

(declare-fun d!1364120 () Bool)

(declare-fun e!2783942 () Bool)

(assert (=> d!1364120 e!2783942))

(declare-fun res!1854880 () Bool)

(assert (=> d!1364120 (=> (not res!1854880) (not e!2783942))))

(declare-fun lt!1659169 () List!50423)

(assert (=> d!1364120 (= res!1854880 (noDuplicate!700 lt!1659169))))

(declare-fun e!2783943 () List!50423)

(assert (=> d!1364120 (= lt!1659169 e!2783943)))

(declare-fun c!761146 () Bool)

(assert (=> d!1364120 (= c!761146 ((_ is Cons!50296) (toList!4063 lt!1658626)))))

(assert (=> d!1364120 (invariantList!931 (toList!4063 lt!1658626))))

(assert (=> d!1364120 (= (getKeysList!379 (toList!4063 lt!1658626)) lt!1659169)))

(declare-fun b!4470645 () Bool)

(declare-fun e!2783944 () Unit!87799)

(declare-fun Unit!87895 () Unit!87799)

(assert (=> b!4470645 (= e!2783944 Unit!87895)))

(declare-fun b!4470646 () Bool)

(assert (=> b!4470646 (= e!2783943 Nil!50299)))

(declare-fun b!4470647 () Bool)

(declare-fun res!1854879 () Bool)

(assert (=> b!4470647 (=> (not res!1854879) (not e!2783942))))

(assert (=> b!4470647 (= res!1854879 (= (length!256 lt!1659169) (length!257 (toList!4063 lt!1658626))))))

(declare-fun b!4470648 () Bool)

(declare-fun Unit!87896 () Unit!87799)

(assert (=> b!4470648 (= e!2783941 Unit!87896)))

(assert (=> b!4470649 false))

(declare-fun lt!1659173 () Unit!87799)

(assert (=> b!4470649 (= lt!1659173 (forallContained!2269 (getKeysList!379 (t!357370 (toList!4063 lt!1658626))) lambda!163552 (_1!28567 (h!56063 (toList!4063 lt!1658626)))))))

(declare-fun Unit!87897 () Unit!87799)

(assert (=> b!4470649 (= e!2783944 Unit!87897)))

(assert (=> b!4470650 (= e!2783942 (= (content!8115 lt!1659169) (content!8115 (map!11025 (toList!4063 lt!1658626) lambda!163555))))))

(assert (=> b!4470651 (= e!2783943 (Cons!50299 (_1!28567 (h!56063 (toList!4063 lt!1658626))) (getKeysList!379 (t!357370 (toList!4063 lt!1658626)))))))

(declare-fun c!761147 () Bool)

(assert (=> b!4470651 (= c!761147 (containsKey!1484 (t!357370 (toList!4063 lt!1658626)) (_1!28567 (h!56063 (toList!4063 lt!1658626)))))))

(declare-fun lt!1659172 () Unit!87799)

(assert (=> b!4470651 (= lt!1659172 e!2783941)))

(declare-fun c!761148 () Bool)

(assert (=> b!4470651 (= c!761148 (contains!12855 (getKeysList!379 (t!357370 (toList!4063 lt!1658626))) (_1!28567 (h!56063 (toList!4063 lt!1658626)))))))

(declare-fun lt!1659170 () Unit!87799)

(assert (=> b!4470651 (= lt!1659170 e!2783944)))

(declare-fun lt!1659167 () List!50423)

(assert (=> b!4470651 (= lt!1659167 (getKeysList!379 (t!357370 (toList!4063 lt!1658626))))))

(declare-fun lt!1659171 () Unit!87799)

(assert (=> b!4470651 (= lt!1659171 (lemmaForallContainsAddHeadPreserves!122 (t!357370 (toList!4063 lt!1658626)) lt!1659167 (h!56063 (toList!4063 lt!1658626))))))

(assert (=> b!4470651 (forall!10002 lt!1659167 lambda!163553)))

(declare-fun lt!1659168 () Unit!87799)

(assert (=> b!4470651 (= lt!1659168 lt!1659171)))

(declare-fun res!1854878 () Bool)

(assert (=> b!4470652 (=> (not res!1854878) (not e!2783942))))

(assert (=> b!4470652 (= res!1854878 (forall!10002 lt!1659169 lambda!163554))))

(assert (= (and d!1364120 c!761146) b!4470651))

(assert (= (and d!1364120 (not c!761146)) b!4470646))

(assert (= (and b!4470651 c!761147) b!4470644))

(assert (= (and b!4470651 (not c!761147)) b!4470648))

(assert (= (and b!4470651 c!761148) b!4470649))

(assert (= (and b!4470651 (not c!761148)) b!4470645))

(assert (= (and d!1364120 res!1854880) b!4470647))

(assert (= (and b!4470647 res!1854879) b!4470652))

(assert (= (and b!4470652 res!1854878) b!4470650))

(declare-fun m!5178209 () Bool)

(assert (=> b!4470651 m!5178209))

(declare-fun m!5178211 () Bool)

(assert (=> b!4470651 m!5178211))

(declare-fun m!5178213 () Bool)

(assert (=> b!4470651 m!5178213))

(declare-fun m!5178215 () Bool)

(assert (=> b!4470651 m!5178215))

(declare-fun m!5178217 () Bool)

(assert (=> b!4470651 m!5178217))

(assert (=> b!4470651 m!5178209))

(assert (=> b!4470649 m!5178209))

(assert (=> b!4470649 m!5178209))

(declare-fun m!5178219 () Bool)

(assert (=> b!4470649 m!5178219))

(declare-fun m!5178221 () Bool)

(assert (=> b!4470647 m!5178221))

(assert (=> b!4470647 m!5177657))

(declare-fun m!5178223 () Bool)

(assert (=> b!4470650 m!5178223))

(declare-fun m!5178225 () Bool)

(assert (=> b!4470650 m!5178225))

(assert (=> b!4470650 m!5178225))

(declare-fun m!5178227 () Bool)

(assert (=> b!4470650 m!5178227))

(declare-fun m!5178229 () Bool)

(assert (=> d!1364120 m!5178229))

(assert (=> d!1364120 m!5177889))

(declare-fun m!5178231 () Bool)

(assert (=> b!4470652 m!5178231))

(assert (=> b!4470086 d!1364120))

(declare-fun d!1364122 () Bool)

(declare-fun res!1854886 () Bool)

(declare-fun e!2783953 () Bool)

(assert (=> d!1364122 (=> res!1854886 e!2783953)))

(assert (=> d!1364122 (= res!1854886 (and ((_ is Cons!50296) (toList!4063 (extractMap!1084 lt!1658621))) (= (_1!28567 (h!56063 (toList!4063 (extractMap!1084 lt!1658621)))) key!3287)))))

(assert (=> d!1364122 (= (containsKey!1484 (toList!4063 (extractMap!1084 lt!1658621)) key!3287) e!2783953)))

(declare-fun b!4470661 () Bool)

(declare-fun e!2783954 () Bool)

(assert (=> b!4470661 (= e!2783953 e!2783954)))

(declare-fun res!1854888 () Bool)

(assert (=> b!4470661 (=> (not res!1854888) (not e!2783954))))

(assert (=> b!4470661 (= res!1854888 ((_ is Cons!50296) (toList!4063 (extractMap!1084 lt!1658621))))))

(declare-fun b!4470662 () Bool)

(assert (=> b!4470662 (= e!2783954 (containsKey!1484 (t!357370 (toList!4063 (extractMap!1084 lt!1658621))) key!3287))))

(assert (= (and d!1364122 (not res!1854886)) b!4470661))

(assert (= (and b!4470661 res!1854888) b!4470662))

(declare-fun m!5178233 () Bool)

(assert (=> b!4470662 m!5178233))

(assert (=> d!1363864 d!1364122))

(declare-fun bs!795707 () Bool)

(declare-fun b!4470674 () Bool)

(assert (= bs!795707 (and b!4470674 b!4470368)))

(declare-fun lambda!163556 () Int)

(assert (=> bs!795707 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lt!1658931) (= lambda!163556 lambda!163468))))

(declare-fun bs!795708 () Bool)

(assert (= bs!795708 (and b!4470674 b!4470528)))

(assert (=> bs!795708 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163556 lambda!163534))))

(declare-fun bs!795709 () Bool)

(assert (= bs!795709 (and b!4470674 b!4470465)))

(assert (=> bs!795709 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lt!1659048) (= lambda!163556 lambda!163518))))

(declare-fun bs!795710 () Bool)

(assert (= bs!795710 (and b!4470674 b!4470529)))

(assert (=> bs!795710 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lt!1659113) (= lambda!163556 lambda!163537))))

(declare-fun bs!795711 () Bool)

(assert (= bs!795711 (and b!4470674 b!4470464)))

(assert (=> bs!795711 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163556 lambda!163515))))

(declare-fun bs!795712 () Bool)

(assert (= bs!795712 (and b!4470674 d!1363918)))

(assert (=> bs!795712 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lt!1658930) (= lambda!163556 lambda!163469))))

(declare-fun bs!795713 () Bool)

(assert (= bs!795713 (and b!4470674 d!1363992)))

(assert (=> bs!795713 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lt!1659047) (= lambda!163556 lambda!163520))))

(assert (=> bs!795707 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163556 lambda!163467))))

(declare-fun bs!795714 () Bool)

(assert (= bs!795714 (and b!4470674 d!1364038)))

(assert (=> bs!795714 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lt!1659112) (= lambda!163556 lambda!163538))))

(assert (=> bs!795710 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163556 lambda!163535))))

(assert (=> bs!795709 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163556 lambda!163517))))

(declare-fun bs!795715 () Bool)

(assert (= bs!795715 (and b!4470674 b!4470367)))

(assert (=> bs!795715 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163556 lambda!163466))))

(declare-fun bs!795716 () Bool)

(assert (= bs!795716 (and b!4470674 d!1363818)))

(assert (=> bs!795716 (not (= lambda!163556 lambda!163394))))

(assert (=> b!4470674 true))

(declare-fun bs!795717 () Bool)

(declare-fun b!4470675 () Bool)

(assert (= bs!795717 (and b!4470675 b!4470368)))

(declare-fun lambda!163557 () Int)

(assert (=> bs!795717 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lt!1658931) (= lambda!163557 lambda!163468))))

(declare-fun bs!795718 () Bool)

(assert (= bs!795718 (and b!4470675 b!4470528)))

(assert (=> bs!795718 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163557 lambda!163534))))

(declare-fun bs!795719 () Bool)

(assert (= bs!795719 (and b!4470675 b!4470465)))

(assert (=> bs!795719 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lt!1659048) (= lambda!163557 lambda!163518))))

(declare-fun bs!795720 () Bool)

(assert (= bs!795720 (and b!4470675 b!4470529)))

(assert (=> bs!795720 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lt!1659113) (= lambda!163557 lambda!163537))))

(declare-fun bs!795721 () Bool)

(assert (= bs!795721 (and b!4470675 b!4470464)))

(assert (=> bs!795721 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163557 lambda!163515))))

(declare-fun bs!795722 () Bool)

(assert (= bs!795722 (and b!4470675 d!1363918)))

(assert (=> bs!795722 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lt!1658930) (= lambda!163557 lambda!163469))))

(declare-fun bs!795723 () Bool)

(assert (= bs!795723 (and b!4470675 d!1363992)))

(assert (=> bs!795723 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lt!1659047) (= lambda!163557 lambda!163520))))

(declare-fun bs!795724 () Bool)

(assert (= bs!795724 (and b!4470675 b!4470674)))

(assert (=> bs!795724 (= lambda!163557 lambda!163556)))

(assert (=> bs!795717 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163557 lambda!163467))))

(declare-fun bs!795725 () Bool)

(assert (= bs!795725 (and b!4470675 d!1364038)))

(assert (=> bs!795725 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lt!1659112) (= lambda!163557 lambda!163538))))

(assert (=> bs!795720 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163557 lambda!163535))))

(assert (=> bs!795719 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163557 lambda!163517))))

(declare-fun bs!795727 () Bool)

(assert (= bs!795727 (and b!4470675 b!4470367)))

(assert (=> bs!795727 (= (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163557 lambda!163466))))

(declare-fun bs!795728 () Bool)

(assert (= bs!795728 (and b!4470675 d!1363818)))

(assert (=> bs!795728 (not (= lambda!163557 lambda!163394))))

(assert (=> b!4470675 true))

(declare-fun lambda!163559 () Int)

(declare-fun lt!1659185 () ListMap!3325)

(assert (=> bs!795717 (= (= lt!1659185 lt!1658931) (= lambda!163559 lambda!163468))))

(assert (=> bs!795718 (= (= lt!1659185 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163559 lambda!163534))))

(assert (=> bs!795719 (= (= lt!1659185 lt!1659048) (= lambda!163559 lambda!163518))))

(assert (=> bs!795720 (= (= lt!1659185 lt!1659113) (= lambda!163559 lambda!163537))))

(assert (=> bs!795721 (= (= lt!1659185 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163559 lambda!163515))))

(assert (=> bs!795722 (= (= lt!1659185 lt!1658930) (= lambda!163559 lambda!163469))))

(assert (=> bs!795723 (= (= lt!1659185 lt!1659047) (= lambda!163559 lambda!163520))))

(assert (=> bs!795724 (= (= lt!1659185 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163559 lambda!163556))))

(assert (=> bs!795717 (= (= lt!1659185 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163559 lambda!163467))))

(assert (=> b!4470675 (= (= lt!1659185 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163559 lambda!163557))))

(assert (=> bs!795725 (= (= lt!1659185 lt!1659112) (= lambda!163559 lambda!163538))))

(assert (=> bs!795720 (= (= lt!1659185 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163559 lambda!163535))))

(assert (=> bs!795719 (= (= lt!1659185 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163559 lambda!163517))))

(assert (=> bs!795727 (= (= lt!1659185 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163559 lambda!163466))))

(assert (=> bs!795728 (not (= lambda!163559 lambda!163394))))

(assert (=> b!4470675 true))

(declare-fun bs!795741 () Bool)

(declare-fun d!1364124 () Bool)

(assert (= bs!795741 (and d!1364124 b!4470368)))

(declare-fun lt!1659184 () ListMap!3325)

(declare-fun lambda!163560 () Int)

(assert (=> bs!795741 (= (= lt!1659184 lt!1658931) (= lambda!163560 lambda!163468))))

(declare-fun bs!795742 () Bool)

(assert (= bs!795742 (and d!1364124 b!4470528)))

(assert (=> bs!795742 (= (= lt!1659184 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163560 lambda!163534))))

(declare-fun bs!795743 () Bool)

(assert (= bs!795743 (and d!1364124 b!4470465)))

(assert (=> bs!795743 (= (= lt!1659184 lt!1659048) (= lambda!163560 lambda!163518))))

(declare-fun bs!795744 () Bool)

(assert (= bs!795744 (and d!1364124 b!4470529)))

(assert (=> bs!795744 (= (= lt!1659184 lt!1659113) (= lambda!163560 lambda!163537))))

(declare-fun bs!795745 () Bool)

(assert (= bs!795745 (and d!1364124 b!4470464)))

(assert (=> bs!795745 (= (= lt!1659184 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163560 lambda!163515))))

(declare-fun bs!795746 () Bool)

(assert (= bs!795746 (and d!1364124 d!1363918)))

(assert (=> bs!795746 (= (= lt!1659184 lt!1658930) (= lambda!163560 lambda!163469))))

(declare-fun bs!795747 () Bool)

(assert (= bs!795747 (and d!1364124 b!4470674)))

(assert (=> bs!795747 (= (= lt!1659184 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163560 lambda!163556))))

(assert (=> bs!795741 (= (= lt!1659184 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163560 lambda!163467))))

(declare-fun bs!795748 () Bool)

(assert (= bs!795748 (and d!1364124 b!4470675)))

(assert (=> bs!795748 (= (= lt!1659184 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163560 lambda!163557))))

(declare-fun bs!795749 () Bool)

(assert (= bs!795749 (and d!1364124 d!1364038)))

(assert (=> bs!795749 (= (= lt!1659184 lt!1659112) (= lambda!163560 lambda!163538))))

(assert (=> bs!795744 (= (= lt!1659184 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163560 lambda!163535))))

(assert (=> bs!795743 (= (= lt!1659184 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163560 lambda!163517))))

(declare-fun bs!795750 () Bool)

(assert (= bs!795750 (and d!1364124 b!4470367)))

(assert (=> bs!795750 (= (= lt!1659184 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163560 lambda!163466))))

(declare-fun bs!795751 () Bool)

(assert (= bs!795751 (and d!1364124 d!1363818)))

(assert (=> bs!795751 (not (= lambda!163560 lambda!163394))))

(assert (=> bs!795748 (= (= lt!1659184 lt!1659185) (= lambda!163560 lambda!163559))))

(declare-fun bs!795752 () Bool)

(assert (= bs!795752 (and d!1364124 d!1363992)))

(assert (=> bs!795752 (= (= lt!1659184 lt!1659047) (= lambda!163560 lambda!163520))))

(assert (=> d!1364124 true))

(declare-fun bm!311257 () Bool)

(declare-fun call!311264 () Unit!87799)

(assert (=> bm!311257 (= call!311264 (lemmaContainsAllItsOwnKeys!268 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))

(declare-fun c!761155 () Bool)

(declare-fun lt!1659181 () ListMap!3325)

(declare-fun call!311262 () Bool)

(declare-fun bm!311258 () Bool)

(assert (=> bm!311258 (= call!311262 (forall!10000 (ite c!761155 (toList!4063 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (toList!4063 lt!1659181)) (ite c!761155 lambda!163556 lambda!163559)))))

(declare-fun e!2783957 () ListMap!3325)

(assert (=> b!4470674 (= e!2783957 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))

(declare-fun lt!1659177 () Unit!87799)

(assert (=> b!4470674 (= lt!1659177 call!311264)))

(declare-fun call!311263 () Bool)

(assert (=> b!4470674 call!311263))

(declare-fun lt!1659193 () Unit!87799)

(assert (=> b!4470674 (= lt!1659193 lt!1659177)))

(assert (=> b!4470674 call!311262))

(declare-fun lt!1659175 () Unit!87799)

(declare-fun Unit!87898 () Unit!87799)

(assert (=> b!4470674 (= lt!1659175 Unit!87898)))

(assert (=> b!4470675 (= e!2783957 lt!1659185)))

(assert (=> b!4470675 (= lt!1659181 (+!1373 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (h!56063 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))))

(assert (=> b!4470675 (= lt!1659185 (addToMapMapFromBucket!593 (t!357370 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (+!1373 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (h!56063 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))))

(declare-fun lt!1659187 () Unit!87799)

(assert (=> b!4470675 (= lt!1659187 call!311264)))

(assert (=> b!4470675 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) lambda!163557)))

(declare-fun lt!1659189 () Unit!87799)

(assert (=> b!4470675 (= lt!1659189 lt!1659187)))

(assert (=> b!4470675 call!311262))

(declare-fun lt!1659179 () Unit!87799)

(declare-fun Unit!87899 () Unit!87799)

(assert (=> b!4470675 (= lt!1659179 Unit!87899)))

(assert (=> b!4470675 (forall!10000 (t!357370 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) lambda!163559)))

(declare-fun lt!1659180 () Unit!87799)

(declare-fun Unit!87900 () Unit!87799)

(assert (=> b!4470675 (= lt!1659180 Unit!87900)))

(declare-fun lt!1659176 () Unit!87799)

(declare-fun Unit!87901 () Unit!87799)

(assert (=> b!4470675 (= lt!1659176 Unit!87901)))

(declare-fun lt!1659191 () Unit!87799)

(assert (=> b!4470675 (= lt!1659191 (forallContained!2267 (toList!4063 lt!1659181) lambda!163559 (h!56063 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))))

(assert (=> b!4470675 (contains!12853 lt!1659181 (_1!28567 (h!56063 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))))

(declare-fun lt!1659192 () Unit!87799)

(declare-fun Unit!87902 () Unit!87799)

(assert (=> b!4470675 (= lt!1659192 Unit!87902)))

(assert (=> b!4470675 (contains!12853 lt!1659185 (_1!28567 (h!56063 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))))

(declare-fun lt!1659178 () Unit!87799)

(declare-fun Unit!87903 () Unit!87799)

(assert (=> b!4470675 (= lt!1659178 Unit!87903)))

(assert (=> b!4470675 (forall!10000 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lambda!163559)))

(declare-fun lt!1659194 () Unit!87799)

(declare-fun Unit!87904 () Unit!87799)

(assert (=> b!4470675 (= lt!1659194 Unit!87904)))

(assert (=> b!4470675 (forall!10000 (toList!4063 lt!1659181) lambda!163559)))

(declare-fun lt!1659188 () Unit!87799)

(declare-fun Unit!87905 () Unit!87799)

(assert (=> b!4470675 (= lt!1659188 Unit!87905)))

(declare-fun lt!1659190 () Unit!87799)

(declare-fun Unit!87906 () Unit!87799)

(assert (=> b!4470675 (= lt!1659190 Unit!87906)))

(declare-fun lt!1659195 () Unit!87799)

(assert (=> b!4470675 (= lt!1659195 (addForallContainsKeyThenBeforeAdding!267 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lt!1659185 (_1!28567 (h!56063 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))) (_2!28567 (h!56063 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))))

(assert (=> b!4470675 call!311263))

(declare-fun lt!1659186 () Unit!87799)

(assert (=> b!4470675 (= lt!1659186 lt!1659195)))

(assert (=> b!4470675 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) lambda!163559)))

(declare-fun lt!1659182 () Unit!87799)

(declare-fun Unit!87907 () Unit!87799)

(assert (=> b!4470675 (= lt!1659182 Unit!87907)))

(declare-fun res!1854890 () Bool)

(assert (=> b!4470675 (= res!1854890 (forall!10000 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lambda!163559))))

(declare-fun e!2783958 () Bool)

(assert (=> b!4470675 (=> (not res!1854890) (not e!2783958))))

(assert (=> b!4470675 e!2783958))

(declare-fun lt!1659183 () Unit!87799)

(declare-fun Unit!87908 () Unit!87799)

(assert (=> b!4470675 (= lt!1659183 Unit!87908)))

(declare-fun b!4470676 () Bool)

(assert (=> b!4470676 (= e!2783958 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) lambda!163559))))

(declare-fun b!4470677 () Bool)

(declare-fun e!2783956 () Bool)

(assert (=> b!4470677 (= e!2783956 (invariantList!931 (toList!4063 lt!1659184)))))

(declare-fun bm!311259 () Bool)

(assert (=> bm!311259 (= call!311263 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (ite c!761155 lambda!163556 lambda!163559)))))

(declare-fun b!4470673 () Bool)

(declare-fun res!1854889 () Bool)

(assert (=> b!4470673 (=> (not res!1854889) (not e!2783956))))

(assert (=> b!4470673 (= res!1854889 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) lambda!163560))))

(assert (=> d!1364124 e!2783956))

(declare-fun res!1854891 () Bool)

(assert (=> d!1364124 (=> (not res!1854891) (not e!2783956))))

(assert (=> d!1364124 (= res!1854891 (forall!10000 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lambda!163560))))

(assert (=> d!1364124 (= lt!1659184 e!2783957)))

(assert (=> d!1364124 (= c!761155 ((_ is Nil!50296) (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))

(assert (=> d!1364124 (noDuplicateKeys!1028 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))

(assert (=> d!1364124 (= (addToMapMapFromBucket!593 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) lt!1659184)))

(assert (= (and d!1364124 c!761155) b!4470674))

(assert (= (and d!1364124 (not c!761155)) b!4470675))

(assert (= (and b!4470675 res!1854890) b!4470676))

(assert (= (or b!4470674 b!4470675) bm!311259))

(assert (= (or b!4470674 b!4470675) bm!311258))

(assert (= (or b!4470674 b!4470675) bm!311257))

(assert (= (and d!1364124 res!1854891) b!4470673))

(assert (= (and b!4470673 res!1854889) b!4470677))

(declare-fun m!5178273 () Bool)

(assert (=> bm!311258 m!5178273))

(declare-fun m!5178275 () Bool)

(assert (=> bm!311259 m!5178275))

(declare-fun m!5178277 () Bool)

(assert (=> d!1364124 m!5178277))

(declare-fun m!5178279 () Bool)

(assert (=> d!1364124 m!5178279))

(assert (=> bm!311257 m!5177335))

(declare-fun m!5178281 () Bool)

(assert (=> bm!311257 m!5178281))

(declare-fun m!5178283 () Bool)

(assert (=> b!4470673 m!5178283))

(declare-fun m!5178285 () Bool)

(assert (=> b!4470677 m!5178285))

(declare-fun m!5178287 () Bool)

(assert (=> b!4470675 m!5178287))

(declare-fun m!5178289 () Bool)

(assert (=> b!4470675 m!5178289))

(declare-fun m!5178291 () Bool)

(assert (=> b!4470675 m!5178291))

(declare-fun m!5178293 () Bool)

(assert (=> b!4470675 m!5178293))

(assert (=> b!4470675 m!5177335))

(declare-fun m!5178295 () Bool)

(assert (=> b!4470675 m!5178295))

(declare-fun m!5178297 () Bool)

(assert (=> b!4470675 m!5178297))

(assert (=> b!4470675 m!5177335))

(assert (=> b!4470675 m!5178287))

(declare-fun m!5178299 () Bool)

(assert (=> b!4470675 m!5178299))

(declare-fun m!5178301 () Bool)

(assert (=> b!4470675 m!5178301))

(assert (=> b!4470675 m!5178301))

(declare-fun m!5178303 () Bool)

(assert (=> b!4470675 m!5178303))

(declare-fun m!5178305 () Bool)

(assert (=> b!4470675 m!5178305))

(declare-fun m!5178307 () Bool)

(assert (=> b!4470675 m!5178307))

(assert (=> b!4470676 m!5178305))

(assert (=> b!4470163 d!1364124))

(declare-fun bs!795753 () Bool)

(declare-fun d!1364132 () Bool)

(assert (= bs!795753 (and d!1364132 d!1363876)))

(declare-fun lambda!163561 () Int)

(assert (=> bs!795753 (= lambda!163561 lambda!163412)))

(declare-fun bs!795754 () Bool)

(assert (= bs!795754 (and d!1364132 d!1363996)))

(assert (=> bs!795754 (= lambda!163561 lambda!163522)))

(declare-fun bs!795755 () Bool)

(assert (= bs!795755 (and d!1364132 d!1364048)))

(assert (=> bs!795755 (= lambda!163561 lambda!163540)))

(declare-fun bs!795756 () Bool)

(assert (= bs!795756 (and d!1364132 d!1363856)))

(assert (=> bs!795756 (= lambda!163561 lambda!163407)))

(declare-fun bs!795757 () Bool)

(assert (= bs!795757 (and d!1364132 start!439252)))

(assert (=> bs!795757 (= lambda!163561 lambda!163367)))

(declare-fun bs!795758 () Bool)

(assert (= bs!795758 (and d!1364132 d!1363862)))

(assert (=> bs!795758 (= lambda!163561 lambda!163408)))

(declare-fun bs!795759 () Bool)

(assert (= bs!795759 (and d!1364132 d!1363956)))

(assert (=> bs!795759 (= lambda!163561 lambda!163470)))

(declare-fun bs!795760 () Bool)

(assert (= bs!795760 (and d!1364132 d!1363872)))

(assert (=> bs!795760 (not (= lambda!163561 lambda!163411))))

(declare-fun bs!795761 () Bool)

(assert (= bs!795761 (and d!1364132 d!1363878)))

(assert (=> bs!795761 (= lambda!163561 lambda!163413)))

(declare-fun bs!795762 () Bool)

(assert (= bs!795762 (and d!1364132 d!1363844)))

(assert (=> bs!795762 (= lambda!163561 lambda!163402)))

(declare-fun bs!795763 () Bool)

(assert (= bs!795763 (and d!1364132 d!1363848)))

(assert (=> bs!795763 (= lambda!163561 lambda!163403)))

(declare-fun bs!795764 () Bool)

(assert (= bs!795764 (and d!1364132 d!1364094)))

(assert (=> bs!795764 (= lambda!163561 lambda!163550)))

(declare-fun bs!795765 () Bool)

(assert (= bs!795765 (and d!1364132 d!1363756)))

(assert (=> bs!795765 (= lambda!163561 lambda!163373)))

(declare-fun bs!795766 () Bool)

(assert (= bs!795766 (and d!1364132 d!1363832)))

(assert (=> bs!795766 (= lambda!163561 lambda!163399)))

(declare-fun bs!795767 () Bool)

(assert (= bs!795767 (and d!1364132 d!1363850)))

(assert (=> bs!795767 (= lambda!163561 lambda!163404)))

(declare-fun lt!1659205 () ListMap!3325)

(assert (=> d!1364132 (invariantList!931 (toList!4063 lt!1659205))))

(declare-fun e!2783966 () ListMap!3325)

(assert (=> d!1364132 (= lt!1659205 e!2783966)))

(declare-fun c!761160 () Bool)

(assert (=> d!1364132 (= c!761160 ((_ is Cons!50297) (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))

(assert (=> d!1364132 (forall!9998 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)) lambda!163561)))

(assert (=> d!1364132 (= (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) lt!1659205)))

(declare-fun b!4470689 () Bool)

(assert (=> b!4470689 (= e!2783966 (addToMapMapFromBucket!593 (_2!28568 (h!56064 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (extractMap!1084 (t!357371 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))))

(declare-fun b!4470690 () Bool)

(assert (=> b!4470690 (= e!2783966 (ListMap!3326 Nil!50296))))

(assert (= (and d!1364132 c!761160) b!4470689))

(assert (= (and d!1364132 (not c!761160)) b!4470690))

(declare-fun m!5178309 () Bool)

(assert (=> d!1364132 m!5178309))

(declare-fun m!5178311 () Bool)

(assert (=> d!1364132 m!5178311))

(declare-fun m!5178313 () Bool)

(assert (=> b!4470689 m!5178313))

(assert (=> b!4470689 m!5178313))

(declare-fun m!5178315 () Bool)

(assert (=> b!4470689 m!5178315))

(assert (=> b!4470163 d!1364132))

(declare-fun d!1364134 () Bool)

(assert (=> d!1364134 (= (invariantList!931 (toList!4063 lt!1658830)) (noDuplicatedKeys!214 (toList!4063 lt!1658830)))))

(declare-fun bs!795768 () Bool)

(assert (= bs!795768 d!1364134))

(declare-fun m!5178317 () Bool)

(assert (=> bs!795768 m!5178317))

(assert (=> d!1363862 d!1364134))

(declare-fun d!1364136 () Bool)

(declare-fun res!1854895 () Bool)

(declare-fun e!2783967 () Bool)

(assert (=> d!1364136 (=> res!1854895 e!2783967)))

(assert (=> d!1364136 (= res!1854895 ((_ is Nil!50297) (Cons!50297 lt!1658627 Nil!50297)))))

(assert (=> d!1364136 (= (forall!9998 (Cons!50297 lt!1658627 Nil!50297) lambda!163408) e!2783967)))

(declare-fun b!4470691 () Bool)

(declare-fun e!2783968 () Bool)

(assert (=> b!4470691 (= e!2783967 e!2783968)))

(declare-fun res!1854896 () Bool)

(assert (=> b!4470691 (=> (not res!1854896) (not e!2783968))))

(assert (=> b!4470691 (= res!1854896 (dynLambda!21018 lambda!163408 (h!56064 (Cons!50297 lt!1658627 Nil!50297))))))

(declare-fun b!4470692 () Bool)

(assert (=> b!4470692 (= e!2783968 (forall!9998 (t!357371 (Cons!50297 lt!1658627 Nil!50297)) lambda!163408))))

(assert (= (and d!1364136 (not res!1854895)) b!4470691))

(assert (= (and b!4470691 res!1854896) b!4470692))

(declare-fun b_lambda!148489 () Bool)

(assert (=> (not b_lambda!148489) (not b!4470691)))

(declare-fun m!5178319 () Bool)

(assert (=> b!4470691 m!5178319))

(declare-fun m!5178321 () Bool)

(assert (=> b!4470692 m!5178321))

(assert (=> d!1363862 d!1364136))

(assert (=> b!4470148 d!1363906))

(assert (=> b!4470148 d!1363912))

(declare-fun d!1364138 () Bool)

(declare-fun res!1854897 () Bool)

(declare-fun e!2783970 () Bool)

(assert (=> d!1364138 (=> res!1854897 e!2783970)))

(declare-fun e!2783969 () Bool)

(assert (=> d!1364138 (= res!1854897 e!2783969)))

(declare-fun res!1854898 () Bool)

(assert (=> d!1364138 (=> (not res!1854898) (not e!2783969))))

(assert (=> d!1364138 (= res!1854898 ((_ is Cons!50297) (t!357371 lt!1658621)))))

(assert (=> d!1364138 (= (containsKeyBiggerList!28 (t!357371 lt!1658621) key!3287) e!2783970)))

(declare-fun b!4470693 () Bool)

(assert (=> b!4470693 (= e!2783969 (containsKey!1480 (_2!28568 (h!56064 (t!357371 lt!1658621))) key!3287))))

(declare-fun b!4470694 () Bool)

(declare-fun e!2783971 () Bool)

(assert (=> b!4470694 (= e!2783970 e!2783971)))

(declare-fun res!1854899 () Bool)

(assert (=> b!4470694 (=> (not res!1854899) (not e!2783971))))

(assert (=> b!4470694 (= res!1854899 ((_ is Cons!50297) (t!357371 lt!1658621)))))

(declare-fun b!4470695 () Bool)

(assert (=> b!4470695 (= e!2783971 (containsKeyBiggerList!28 (t!357371 (t!357371 lt!1658621)) key!3287))))

(assert (= (and d!1364138 res!1854898) b!4470693))

(assert (= (and d!1364138 (not res!1854897)) b!4470694))

(assert (= (and b!4470694 res!1854899) b!4470695))

(declare-fun m!5178323 () Bool)

(assert (=> b!4470693 m!5178323))

(declare-fun m!5178325 () Bool)

(assert (=> b!4470695 m!5178325))

(assert (=> b!4470191 d!1364138))

(declare-fun d!1364140 () Bool)

(declare-fun res!1854910 () Bool)

(declare-fun e!2783982 () Bool)

(assert (=> d!1364140 (=> res!1854910 e!2783982)))

(assert (=> d!1364140 (= res!1854910 (and ((_ is Cons!50297) (toList!4064 lm!1477)) (= (_1!28568 (h!56064 (toList!4064 lm!1477))) lt!1658632)))))

(assert (=> d!1364140 (= (containsKey!1483 (toList!4064 lm!1477) lt!1658632) e!2783982)))

(declare-fun b!4470706 () Bool)

(declare-fun e!2783983 () Bool)

(assert (=> b!4470706 (= e!2783982 e!2783983)))

(declare-fun res!1854911 () Bool)

(assert (=> b!4470706 (=> (not res!1854911) (not e!2783983))))

(assert (=> b!4470706 (= res!1854911 (and (or (not ((_ is Cons!50297) (toList!4064 lm!1477))) (bvsle (_1!28568 (h!56064 (toList!4064 lm!1477))) lt!1658632)) ((_ is Cons!50297) (toList!4064 lm!1477)) (bvslt (_1!28568 (h!56064 (toList!4064 lm!1477))) lt!1658632)))))

(declare-fun b!4470707 () Bool)

(assert (=> b!4470707 (= e!2783983 (containsKey!1483 (t!357371 (toList!4064 lm!1477)) lt!1658632))))

(assert (= (and d!1364140 (not res!1854910)) b!4470706))

(assert (= (and b!4470706 res!1854911) b!4470707))

(declare-fun m!5178331 () Bool)

(assert (=> b!4470707 m!5178331))

(assert (=> d!1363778 d!1364140))

(declare-fun d!1364146 () Bool)

(declare-fun e!2783984 () Bool)

(assert (=> d!1364146 e!2783984))

(declare-fun res!1854912 () Bool)

(assert (=> d!1364146 (=> res!1854912 e!2783984)))

(declare-fun lt!1659207 () Bool)

(assert (=> d!1364146 (= res!1854912 (not lt!1659207))))

(declare-fun lt!1659206 () Bool)

(assert (=> d!1364146 (= lt!1659207 lt!1659206)))

(declare-fun lt!1659208 () Unit!87799)

(declare-fun e!2783985 () Unit!87799)

(assert (=> d!1364146 (= lt!1659208 e!2783985)))

(declare-fun c!761161 () Bool)

(assert (=> d!1364146 (= c!761161 lt!1659206)))

(assert (=> d!1364146 (= lt!1659206 (containsKey!1483 (toList!4064 lm!1477) (hash!2459 hashF!1107 key!3287)))))

(assert (=> d!1364146 (= (contains!12852 lm!1477 (hash!2459 hashF!1107 key!3287)) lt!1659207)))

(declare-fun b!4470708 () Bool)

(declare-fun lt!1659209 () Unit!87799)

(assert (=> b!4470708 (= e!2783985 lt!1659209)))

(assert (=> b!4470708 (= lt!1659209 (lemmaContainsKeyImpliesGetValueByKeyDefined!824 (toList!4064 lm!1477) (hash!2459 hashF!1107 key!3287)))))

(assert (=> b!4470708 (isDefined!8221 (getValueByKey!920 (toList!4064 lm!1477) (hash!2459 hashF!1107 key!3287)))))

(declare-fun b!4470709 () Bool)

(declare-fun Unit!87911 () Unit!87799)

(assert (=> b!4470709 (= e!2783985 Unit!87911)))

(declare-fun b!4470710 () Bool)

(assert (=> b!4470710 (= e!2783984 (isDefined!8221 (getValueByKey!920 (toList!4064 lm!1477) (hash!2459 hashF!1107 key!3287))))))

(assert (= (and d!1364146 c!761161) b!4470708))

(assert (= (and d!1364146 (not c!761161)) b!4470709))

(assert (= (and d!1364146 (not res!1854912)) b!4470710))

(assert (=> d!1364146 m!5176931))

(declare-fun m!5178335 () Bool)

(assert (=> d!1364146 m!5178335))

(assert (=> b!4470708 m!5176931))

(declare-fun m!5178337 () Bool)

(assert (=> b!4470708 m!5178337))

(assert (=> b!4470708 m!5176931))

(declare-fun m!5178339 () Bool)

(assert (=> b!4470708 m!5178339))

(assert (=> b!4470708 m!5178339))

(declare-fun m!5178341 () Bool)

(assert (=> b!4470708 m!5178341))

(assert (=> b!4470710 m!5176931))

(assert (=> b!4470710 m!5178339))

(assert (=> b!4470710 m!5178339))

(assert (=> b!4470710 m!5178341))

(assert (=> d!1363756 d!1364146))

(assert (=> d!1363756 d!1363826))

(declare-fun d!1364150 () Bool)

(assert (=> d!1364150 (contains!12852 lm!1477 (hash!2459 hashF!1107 key!3287))))

(assert (=> d!1364150 true))

(declare-fun _$27!1088 () Unit!87799)

(assert (=> d!1364150 (= (choose!28598 lm!1477 key!3287 hashF!1107) _$27!1088)))

(declare-fun bs!795770 () Bool)

(assert (= bs!795770 d!1364150))

(assert (=> bs!795770 m!5176931))

(assert (=> bs!795770 m!5176931))

(assert (=> bs!795770 m!5177031))

(assert (=> d!1363756 d!1364150))

(declare-fun d!1364152 () Bool)

(declare-fun res!1854915 () Bool)

(declare-fun e!2783988 () Bool)

(assert (=> d!1364152 (=> res!1854915 e!2783988)))

(assert (=> d!1364152 (= res!1854915 ((_ is Nil!50297) (toList!4064 lm!1477)))))

(assert (=> d!1364152 (= (forall!9998 (toList!4064 lm!1477) lambda!163373) e!2783988)))

(declare-fun b!4470713 () Bool)

(declare-fun e!2783989 () Bool)

(assert (=> b!4470713 (= e!2783988 e!2783989)))

(declare-fun res!1854916 () Bool)

(assert (=> b!4470713 (=> (not res!1854916) (not e!2783989))))

(assert (=> b!4470713 (= res!1854916 (dynLambda!21018 lambda!163373 (h!56064 (toList!4064 lm!1477))))))

(declare-fun b!4470714 () Bool)

(assert (=> b!4470714 (= e!2783989 (forall!9998 (t!357371 (toList!4064 lm!1477)) lambda!163373))))

(assert (= (and d!1364152 (not res!1854915)) b!4470713))

(assert (= (and b!4470713 res!1854916) b!4470714))

(declare-fun b_lambda!148493 () Bool)

(assert (=> (not b_lambda!148493) (not b!4470713)))

(declare-fun m!5178343 () Bool)

(assert (=> b!4470713 m!5178343))

(declare-fun m!5178345 () Bool)

(assert (=> b!4470714 m!5178345))

(assert (=> d!1363756 d!1364152))

(assert (=> b!4470084 d!1363966))

(declare-fun d!1364154 () Bool)

(declare-fun res!1854917 () Bool)

(declare-fun e!2783990 () Bool)

(assert (=> d!1364154 (=> res!1854917 e!2783990)))

(assert (=> d!1364154 (= res!1854917 (not ((_ is Cons!50296) (_2!28568 lt!1658630))))))

(assert (=> d!1364154 (= (noDuplicateKeys!1028 (_2!28568 lt!1658630)) e!2783990)))

(declare-fun b!4470715 () Bool)

(declare-fun e!2783991 () Bool)

(assert (=> b!4470715 (= e!2783990 e!2783991)))

(declare-fun res!1854918 () Bool)

(assert (=> b!4470715 (=> (not res!1854918) (not e!2783991))))

(assert (=> b!4470715 (= res!1854918 (not (containsKey!1480 (t!357370 (_2!28568 lt!1658630)) (_1!28567 (h!56063 (_2!28568 lt!1658630))))))))

(declare-fun b!4470716 () Bool)

(assert (=> b!4470716 (= e!2783991 (noDuplicateKeys!1028 (t!357370 (_2!28568 lt!1658630))))))

(assert (= (and d!1364154 (not res!1854917)) b!4470715))

(assert (= (and b!4470715 res!1854918) b!4470716))

(declare-fun m!5178347 () Bool)

(assert (=> b!4470715 m!5178347))

(declare-fun m!5178349 () Bool)

(assert (=> b!4470716 m!5178349))

(assert (=> bs!795380 d!1364154))

(declare-fun bs!795771 () Bool)

(declare-fun b!4470718 () Bool)

(assert (= bs!795771 (and b!4470718 b!4470368)))

(declare-fun lambda!163562 () Int)

(assert (=> bs!795771 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1658931) (= lambda!163562 lambda!163468))))

(declare-fun bs!795772 () Bool)

(assert (= bs!795772 (and b!4470718 b!4470528)))

(assert (=> bs!795772 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163562 lambda!163534))))

(declare-fun bs!795773 () Bool)

(assert (= bs!795773 (and b!4470718 b!4470465)))

(assert (=> bs!795773 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1659048) (= lambda!163562 lambda!163518))))

(declare-fun bs!795774 () Bool)

(assert (= bs!795774 (and b!4470718 b!4470529)))

(assert (=> bs!795774 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1659113) (= lambda!163562 lambda!163537))))

(declare-fun bs!795775 () Bool)

(assert (= bs!795775 (and b!4470718 b!4470464)))

(assert (=> bs!795775 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163562 lambda!163515))))

(declare-fun bs!795776 () Bool)

(assert (= bs!795776 (and b!4470718 d!1363918)))

(assert (=> bs!795776 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1658930) (= lambda!163562 lambda!163469))))

(declare-fun bs!795777 () Bool)

(assert (= bs!795777 (and b!4470718 b!4470674)))

(assert (=> bs!795777 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163562 lambda!163556))))

(assert (=> bs!795771 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163562 lambda!163467))))

(declare-fun bs!795778 () Bool)

(assert (= bs!795778 (and b!4470718 b!4470675)))

(assert (=> bs!795778 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163562 lambda!163557))))

(declare-fun bs!795779 () Bool)

(assert (= bs!795779 (and b!4470718 d!1364124)))

(assert (=> bs!795779 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1659184) (= lambda!163562 lambda!163560))))

(declare-fun bs!795780 () Bool)

(assert (= bs!795780 (and b!4470718 d!1364038)))

(assert (=> bs!795780 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1659112) (= lambda!163562 lambda!163538))))

(assert (=> bs!795774 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163562 lambda!163535))))

(assert (=> bs!795773 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163562 lambda!163517))))

(declare-fun bs!795781 () Bool)

(assert (= bs!795781 (and b!4470718 b!4470367)))

(assert (=> bs!795781 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163562 lambda!163466))))

(declare-fun bs!795782 () Bool)

(assert (= bs!795782 (and b!4470718 d!1363818)))

(assert (=> bs!795782 (not (= lambda!163562 lambda!163394))))

(assert (=> bs!795778 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1659185) (= lambda!163562 lambda!163559))))

(declare-fun bs!795783 () Bool)

(assert (= bs!795783 (and b!4470718 d!1363992)))

(assert (=> bs!795783 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1659047) (= lambda!163562 lambda!163520))))

(assert (=> b!4470718 true))

(declare-fun bs!795784 () Bool)

(declare-fun b!4470719 () Bool)

(assert (= bs!795784 (and b!4470719 b!4470368)))

(declare-fun lambda!163563 () Int)

(assert (=> bs!795784 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1658931) (= lambda!163563 lambda!163468))))

(declare-fun bs!795785 () Bool)

(assert (= bs!795785 (and b!4470719 b!4470528)))

(assert (=> bs!795785 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163563 lambda!163534))))

(declare-fun bs!795786 () Bool)

(assert (= bs!795786 (and b!4470719 b!4470465)))

(assert (=> bs!795786 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1659048) (= lambda!163563 lambda!163518))))

(declare-fun bs!795787 () Bool)

(assert (= bs!795787 (and b!4470719 b!4470529)))

(assert (=> bs!795787 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1659113) (= lambda!163563 lambda!163537))))

(declare-fun bs!795788 () Bool)

(assert (= bs!795788 (and b!4470719 b!4470464)))

(assert (=> bs!795788 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163563 lambda!163515))))

(declare-fun bs!795789 () Bool)

(assert (= bs!795789 (and b!4470719 d!1363918)))

(assert (=> bs!795789 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1658930) (= lambda!163563 lambda!163469))))

(declare-fun bs!795790 () Bool)

(assert (= bs!795790 (and b!4470719 b!4470718)))

(assert (=> bs!795790 (= lambda!163563 lambda!163562)))

(declare-fun bs!795791 () Bool)

(assert (= bs!795791 (and b!4470719 b!4470674)))

(assert (=> bs!795791 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163563 lambda!163556))))

(assert (=> bs!795784 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163563 lambda!163467))))

(declare-fun bs!795792 () Bool)

(assert (= bs!795792 (and b!4470719 b!4470675)))

(assert (=> bs!795792 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163563 lambda!163557))))

(declare-fun bs!795793 () Bool)

(assert (= bs!795793 (and b!4470719 d!1364124)))

(assert (=> bs!795793 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1659184) (= lambda!163563 lambda!163560))))

(declare-fun bs!795794 () Bool)

(assert (= bs!795794 (and b!4470719 d!1364038)))

(assert (=> bs!795794 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1659112) (= lambda!163563 lambda!163538))))

(assert (=> bs!795787 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163563 lambda!163535))))

(assert (=> bs!795786 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163563 lambda!163517))))

(declare-fun bs!795795 () Bool)

(assert (= bs!795795 (and b!4470719 b!4470367)))

(assert (=> bs!795795 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163563 lambda!163466))))

(declare-fun bs!795796 () Bool)

(assert (= bs!795796 (and b!4470719 d!1363818)))

(assert (=> bs!795796 (not (= lambda!163563 lambda!163394))))

(assert (=> bs!795792 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1659185) (= lambda!163563 lambda!163559))))

(declare-fun bs!795797 () Bool)

(assert (= bs!795797 (and b!4470719 d!1363992)))

(assert (=> bs!795797 (= (= (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1659047) (= lambda!163563 lambda!163520))))

(assert (=> b!4470719 true))

(declare-fun lambda!163564 () Int)

(declare-fun lt!1659220 () ListMap!3325)

(assert (=> bs!795784 (= (= lt!1659220 lt!1658931) (= lambda!163564 lambda!163468))))

(assert (=> bs!795785 (= (= lt!1659220 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163564 lambda!163534))))

(assert (=> bs!795786 (= (= lt!1659220 lt!1659048) (= lambda!163564 lambda!163518))))

(assert (=> bs!795787 (= (= lt!1659220 lt!1659113) (= lambda!163564 lambda!163537))))

(assert (=> bs!795788 (= (= lt!1659220 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163564 lambda!163515))))

(assert (=> bs!795789 (= (= lt!1659220 lt!1658930) (= lambda!163564 lambda!163469))))

(assert (=> bs!795790 (= (= lt!1659220 (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) (= lambda!163564 lambda!163562))))

(assert (=> b!4470719 (= (= lt!1659220 (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) (= lambda!163564 lambda!163563))))

(assert (=> bs!795791 (= (= lt!1659220 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163564 lambda!163556))))

(assert (=> bs!795784 (= (= lt!1659220 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163564 lambda!163467))))

(assert (=> bs!795792 (= (= lt!1659220 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163564 lambda!163557))))

(assert (=> bs!795793 (= (= lt!1659220 lt!1659184) (= lambda!163564 lambda!163560))))

(assert (=> bs!795794 (= (= lt!1659220 lt!1659112) (= lambda!163564 lambda!163538))))

(assert (=> bs!795787 (= (= lt!1659220 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163564 lambda!163535))))

(assert (=> bs!795786 (= (= lt!1659220 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163564 lambda!163517))))

(assert (=> bs!795795 (= (= lt!1659220 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163564 lambda!163466))))

(assert (=> bs!795796 (not (= lambda!163564 lambda!163394))))

(assert (=> bs!795792 (= (= lt!1659220 lt!1659185) (= lambda!163564 lambda!163559))))

(assert (=> bs!795797 (= (= lt!1659220 lt!1659047) (= lambda!163564 lambda!163520))))

(assert (=> b!4470719 true))

(declare-fun bs!795798 () Bool)

(declare-fun d!1364156 () Bool)

(assert (= bs!795798 (and d!1364156 b!4470368)))

(declare-fun lt!1659219 () ListMap!3325)

(declare-fun lambda!163565 () Int)

(assert (=> bs!795798 (= (= lt!1659219 lt!1658931) (= lambda!163565 lambda!163468))))

(declare-fun bs!795799 () Bool)

(assert (= bs!795799 (and d!1364156 b!4470528)))

(assert (=> bs!795799 (= (= lt!1659219 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163565 lambda!163534))))

(declare-fun bs!795800 () Bool)

(assert (= bs!795800 (and d!1364156 b!4470465)))

(assert (=> bs!795800 (= (= lt!1659219 lt!1659048) (= lambda!163565 lambda!163518))))

(declare-fun bs!795801 () Bool)

(assert (= bs!795801 (and d!1364156 b!4470529)))

(assert (=> bs!795801 (= (= lt!1659219 lt!1659113) (= lambda!163565 lambda!163537))))

(declare-fun bs!795802 () Bool)

(assert (= bs!795802 (and d!1364156 b!4470464)))

(assert (=> bs!795802 (= (= lt!1659219 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163565 lambda!163515))))

(declare-fun bs!795803 () Bool)

(assert (= bs!795803 (and d!1364156 d!1363918)))

(assert (=> bs!795803 (= (= lt!1659219 lt!1658930) (= lambda!163565 lambda!163469))))

(declare-fun bs!795804 () Bool)

(assert (= bs!795804 (and d!1364156 b!4470718)))

(assert (=> bs!795804 (= (= lt!1659219 (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) (= lambda!163565 lambda!163562))))

(declare-fun bs!795805 () Bool)

(assert (= bs!795805 (and d!1364156 b!4470719)))

(assert (=> bs!795805 (= (= lt!1659219 (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) (= lambda!163565 lambda!163563))))

(declare-fun bs!795806 () Bool)

(assert (= bs!795806 (and d!1364156 b!4470674)))

(assert (=> bs!795806 (= (= lt!1659219 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163565 lambda!163556))))

(assert (=> bs!795798 (= (= lt!1659219 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163565 lambda!163467))))

(declare-fun bs!795807 () Bool)

(assert (= bs!795807 (and d!1364156 b!4470675)))

(assert (=> bs!795807 (= (= lt!1659219 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163565 lambda!163557))))

(assert (=> bs!795805 (= (= lt!1659219 lt!1659220) (= lambda!163565 lambda!163564))))

(declare-fun bs!795808 () Bool)

(assert (= bs!795808 (and d!1364156 d!1364124)))

(assert (=> bs!795808 (= (= lt!1659219 lt!1659184) (= lambda!163565 lambda!163560))))

(declare-fun bs!795809 () Bool)

(assert (= bs!795809 (and d!1364156 d!1364038)))

(assert (=> bs!795809 (= (= lt!1659219 lt!1659112) (= lambda!163565 lambda!163538))))

(assert (=> bs!795801 (= (= lt!1659219 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163565 lambda!163535))))

(assert (=> bs!795800 (= (= lt!1659219 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163565 lambda!163517))))

(declare-fun bs!795810 () Bool)

(assert (= bs!795810 (and d!1364156 b!4470367)))

(assert (=> bs!795810 (= (= lt!1659219 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163565 lambda!163466))))

(declare-fun bs!795811 () Bool)

(assert (= bs!795811 (and d!1364156 d!1363818)))

(assert (=> bs!795811 (not (= lambda!163565 lambda!163394))))

(assert (=> bs!795807 (= (= lt!1659219 lt!1659185) (= lambda!163565 lambda!163559))))

(declare-fun bs!795812 () Bool)

(assert (= bs!795812 (and d!1364156 d!1363992)))

(assert (=> bs!795812 (= (= lt!1659219 lt!1659047) (= lambda!163565 lambda!163520))))

(assert (=> d!1364156 true))

(declare-fun bm!311261 () Bool)

(declare-fun call!311268 () Unit!87799)

(assert (=> bm!311261 (= call!311268 (lemmaContainsAllItsOwnKeys!268 (extractMap!1084 (t!357371 (toList!4064 lm!1477)))))))

(declare-fun call!311266 () Bool)

(declare-fun c!761162 () Bool)

(declare-fun lt!1659216 () ListMap!3325)

(declare-fun bm!311262 () Bool)

(assert (=> bm!311262 (= call!311266 (forall!10000 (ite c!761162 (toList!4063 (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) (toList!4063 lt!1659216)) (ite c!761162 lambda!163562 lambda!163564)))))

(declare-fun e!2783993 () ListMap!3325)

(assert (=> b!4470718 (= e!2783993 (extractMap!1084 (t!357371 (toList!4064 lm!1477))))))

(declare-fun lt!1659212 () Unit!87799)

(assert (=> b!4470718 (= lt!1659212 call!311268)))

(declare-fun call!311267 () Bool)

(assert (=> b!4470718 call!311267))

(declare-fun lt!1659228 () Unit!87799)

(assert (=> b!4470718 (= lt!1659228 lt!1659212)))

(assert (=> b!4470718 call!311266))

(declare-fun lt!1659210 () Unit!87799)

(declare-fun Unit!87920 () Unit!87799)

(assert (=> b!4470718 (= lt!1659210 Unit!87920)))

(assert (=> b!4470719 (= e!2783993 lt!1659220)))

(assert (=> b!4470719 (= lt!1659216 (+!1373 (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (h!56063 (_2!28568 (h!56064 (toList!4064 lm!1477))))))))

(assert (=> b!4470719 (= lt!1659220 (addToMapMapFromBucket!593 (t!357370 (_2!28568 (h!56064 (toList!4064 lm!1477)))) (+!1373 (extractMap!1084 (t!357371 (toList!4064 lm!1477))) (h!56063 (_2!28568 (h!56064 (toList!4064 lm!1477)))))))))

(declare-fun lt!1659222 () Unit!87799)

(assert (=> b!4470719 (= lt!1659222 call!311268)))

(assert (=> b!4470719 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) lambda!163563)))

(declare-fun lt!1659224 () Unit!87799)

(assert (=> b!4470719 (= lt!1659224 lt!1659222)))

(assert (=> b!4470719 call!311266))

(declare-fun lt!1659214 () Unit!87799)

(declare-fun Unit!87921 () Unit!87799)

(assert (=> b!4470719 (= lt!1659214 Unit!87921)))

(assert (=> b!4470719 (forall!10000 (t!357370 (_2!28568 (h!56064 (toList!4064 lm!1477)))) lambda!163564)))

(declare-fun lt!1659215 () Unit!87799)

(declare-fun Unit!87922 () Unit!87799)

(assert (=> b!4470719 (= lt!1659215 Unit!87922)))

(declare-fun lt!1659211 () Unit!87799)

(declare-fun Unit!87923 () Unit!87799)

(assert (=> b!4470719 (= lt!1659211 Unit!87923)))

(declare-fun lt!1659226 () Unit!87799)

(assert (=> b!4470719 (= lt!1659226 (forallContained!2267 (toList!4063 lt!1659216) lambda!163564 (h!56063 (_2!28568 (h!56064 (toList!4064 lm!1477))))))))

(assert (=> b!4470719 (contains!12853 lt!1659216 (_1!28567 (h!56063 (_2!28568 (h!56064 (toList!4064 lm!1477))))))))

(declare-fun lt!1659227 () Unit!87799)

(declare-fun Unit!87924 () Unit!87799)

(assert (=> b!4470719 (= lt!1659227 Unit!87924)))

(assert (=> b!4470719 (contains!12853 lt!1659220 (_1!28567 (h!56063 (_2!28568 (h!56064 (toList!4064 lm!1477))))))))

(declare-fun lt!1659213 () Unit!87799)

(declare-fun Unit!87925 () Unit!87799)

(assert (=> b!4470719 (= lt!1659213 Unit!87925)))

(assert (=> b!4470719 (forall!10000 (_2!28568 (h!56064 (toList!4064 lm!1477))) lambda!163564)))

(declare-fun lt!1659229 () Unit!87799)

(declare-fun Unit!87926 () Unit!87799)

(assert (=> b!4470719 (= lt!1659229 Unit!87926)))

(assert (=> b!4470719 (forall!10000 (toList!4063 lt!1659216) lambda!163564)))

(declare-fun lt!1659223 () Unit!87799)

(declare-fun Unit!87927 () Unit!87799)

(assert (=> b!4470719 (= lt!1659223 Unit!87927)))

(declare-fun lt!1659225 () Unit!87799)

(declare-fun Unit!87928 () Unit!87799)

(assert (=> b!4470719 (= lt!1659225 Unit!87928)))

(declare-fun lt!1659230 () Unit!87799)

(assert (=> b!4470719 (= lt!1659230 (addForallContainsKeyThenBeforeAdding!267 (extractMap!1084 (t!357371 (toList!4064 lm!1477))) lt!1659220 (_1!28567 (h!56063 (_2!28568 (h!56064 (toList!4064 lm!1477))))) (_2!28567 (h!56063 (_2!28568 (h!56064 (toList!4064 lm!1477)))))))))

(assert (=> b!4470719 call!311267))

(declare-fun lt!1659221 () Unit!87799)

(assert (=> b!4470719 (= lt!1659221 lt!1659230)))

(assert (=> b!4470719 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) lambda!163564)))

(declare-fun lt!1659217 () Unit!87799)

(declare-fun Unit!87929 () Unit!87799)

(assert (=> b!4470719 (= lt!1659217 Unit!87929)))

(declare-fun res!1854920 () Bool)

(assert (=> b!4470719 (= res!1854920 (forall!10000 (_2!28568 (h!56064 (toList!4064 lm!1477))) lambda!163564))))

(declare-fun e!2783994 () Bool)

(assert (=> b!4470719 (=> (not res!1854920) (not e!2783994))))

(assert (=> b!4470719 e!2783994))

(declare-fun lt!1659218 () Unit!87799)

(declare-fun Unit!87930 () Unit!87799)

(assert (=> b!4470719 (= lt!1659218 Unit!87930)))

(declare-fun b!4470720 () Bool)

(assert (=> b!4470720 (= e!2783994 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) lambda!163564))))

(declare-fun b!4470721 () Bool)

(declare-fun e!2783992 () Bool)

(assert (=> b!4470721 (= e!2783992 (invariantList!931 (toList!4063 lt!1659219)))))

(declare-fun bm!311263 () Bool)

(assert (=> bm!311263 (= call!311267 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) (ite c!761162 lambda!163562 lambda!163564)))))

(declare-fun b!4470717 () Bool)

(declare-fun res!1854919 () Bool)

(assert (=> b!4470717 (=> (not res!1854919) (not e!2783992))))

(assert (=> b!4470717 (= res!1854919 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) lambda!163565))))

(assert (=> d!1364156 e!2783992))

(declare-fun res!1854921 () Bool)

(assert (=> d!1364156 (=> (not res!1854921) (not e!2783992))))

(assert (=> d!1364156 (= res!1854921 (forall!10000 (_2!28568 (h!56064 (toList!4064 lm!1477))) lambda!163565))))

(assert (=> d!1364156 (= lt!1659219 e!2783993)))

(assert (=> d!1364156 (= c!761162 ((_ is Nil!50296) (_2!28568 (h!56064 (toList!4064 lm!1477)))))))

(assert (=> d!1364156 (noDuplicateKeys!1028 (_2!28568 (h!56064 (toList!4064 lm!1477))))))

(assert (=> d!1364156 (= (addToMapMapFromBucket!593 (_2!28568 (h!56064 (toList!4064 lm!1477))) (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) lt!1659219)))

(assert (= (and d!1364156 c!761162) b!4470718))

(assert (= (and d!1364156 (not c!761162)) b!4470719))

(assert (= (and b!4470719 res!1854920) b!4470720))

(assert (= (or b!4470718 b!4470719) bm!311263))

(assert (= (or b!4470718 b!4470719) bm!311262))

(assert (= (or b!4470718 b!4470719) bm!311261))

(assert (= (and d!1364156 res!1854921) b!4470717))

(assert (= (and b!4470717 res!1854919) b!4470721))

(declare-fun m!5178351 () Bool)

(assert (=> bm!311262 m!5178351))

(declare-fun m!5178353 () Bool)

(assert (=> bm!311263 m!5178353))

(declare-fun m!5178355 () Bool)

(assert (=> d!1364156 m!5178355))

(assert (=> d!1364156 m!5177373))

(assert (=> bm!311261 m!5176943))

(declare-fun m!5178357 () Bool)

(assert (=> bm!311261 m!5178357))

(declare-fun m!5178359 () Bool)

(assert (=> b!4470717 m!5178359))

(declare-fun m!5178361 () Bool)

(assert (=> b!4470721 m!5178361))

(declare-fun m!5178367 () Bool)

(assert (=> b!4470719 m!5178367))

(declare-fun m!5178369 () Bool)

(assert (=> b!4470719 m!5178369))

(declare-fun m!5178371 () Bool)

(assert (=> b!4470719 m!5178371))

(declare-fun m!5178373 () Bool)

(assert (=> b!4470719 m!5178373))

(assert (=> b!4470719 m!5176943))

(declare-fun m!5178375 () Bool)

(assert (=> b!4470719 m!5178375))

(declare-fun m!5178377 () Bool)

(assert (=> b!4470719 m!5178377))

(assert (=> b!4470719 m!5176943))

(assert (=> b!4470719 m!5178367))

(declare-fun m!5178379 () Bool)

(assert (=> b!4470719 m!5178379))

(declare-fun m!5178381 () Bool)

(assert (=> b!4470719 m!5178381))

(assert (=> b!4470719 m!5178381))

(declare-fun m!5178383 () Bool)

(assert (=> b!4470719 m!5178383))

(declare-fun m!5178385 () Bool)

(assert (=> b!4470719 m!5178385))

(declare-fun m!5178387 () Bool)

(assert (=> b!4470719 m!5178387))

(assert (=> b!4470720 m!5178385))

(assert (=> b!4470161 d!1364156))

(assert (=> b!4470161 d!1363876))

(declare-fun d!1364162 () Bool)

(declare-fun e!2783998 () Bool)

(assert (=> d!1364162 e!2783998))

(declare-fun res!1854924 () Bool)

(assert (=> d!1364162 (=> res!1854924 e!2783998)))

(declare-fun lt!1659233 () Bool)

(assert (=> d!1364162 (= res!1854924 (not lt!1659233))))

(declare-fun lt!1659232 () Bool)

(assert (=> d!1364162 (= lt!1659233 lt!1659232)))

(declare-fun lt!1659234 () Unit!87799)

(declare-fun e!2783999 () Unit!87799)

(assert (=> d!1364162 (= lt!1659234 e!2783999)))

(declare-fun c!761164 () Bool)

(assert (=> d!1364162 (= c!761164 lt!1659232)))

(assert (=> d!1364162 (= lt!1659232 (containsKey!1483 (toList!4064 lt!1658646) (_1!28568 lt!1658627)))))

(assert (=> d!1364162 (= (contains!12852 lt!1658646 (_1!28568 lt!1658627)) lt!1659233)))

(declare-fun b!4470726 () Bool)

(declare-fun lt!1659235 () Unit!87799)

(assert (=> b!4470726 (= e!2783999 lt!1659235)))

(assert (=> b!4470726 (= lt!1659235 (lemmaContainsKeyImpliesGetValueByKeyDefined!824 (toList!4064 lt!1658646) (_1!28568 lt!1658627)))))

(assert (=> b!4470726 (isDefined!8221 (getValueByKey!920 (toList!4064 lt!1658646) (_1!28568 lt!1658627)))))

(declare-fun b!4470727 () Bool)

(declare-fun Unit!87931 () Unit!87799)

(assert (=> b!4470727 (= e!2783999 Unit!87931)))

(declare-fun b!4470728 () Bool)

(assert (=> b!4470728 (= e!2783998 (isDefined!8221 (getValueByKey!920 (toList!4064 lt!1658646) (_1!28568 lt!1658627))))))

(assert (= (and d!1364162 c!761164) b!4470726))

(assert (= (and d!1364162 (not c!761164)) b!4470727))

(assert (= (and d!1364162 (not res!1854924)) b!4470728))

(declare-fun m!5178389 () Bool)

(assert (=> d!1364162 m!5178389))

(declare-fun m!5178391 () Bool)

(assert (=> b!4470726 m!5178391))

(assert (=> b!4470726 m!5176997))

(assert (=> b!4470726 m!5176997))

(declare-fun m!5178393 () Bool)

(assert (=> b!4470726 m!5178393))

(assert (=> b!4470728 m!5176997))

(assert (=> b!4470728 m!5176997))

(assert (=> b!4470728 m!5178393))

(assert (=> d!1363740 d!1364162))

(declare-fun b!4470732 () Bool)

(declare-fun e!2784001 () Option!10934)

(assert (=> b!4470732 (= e!2784001 None!10933)))

(declare-fun b!4470729 () Bool)

(declare-fun e!2784000 () Option!10934)

(assert (=> b!4470729 (= e!2784000 (Some!10933 (_2!28568 (h!56064 lt!1658645))))))

(declare-fun b!4470730 () Bool)

(assert (=> b!4470730 (= e!2784000 e!2784001)))

(declare-fun c!761166 () Bool)

(assert (=> b!4470730 (= c!761166 (and ((_ is Cons!50297) lt!1658645) (not (= (_1!28568 (h!56064 lt!1658645)) (_1!28568 lt!1658627)))))))

(declare-fun d!1364164 () Bool)

(declare-fun c!761165 () Bool)

(assert (=> d!1364164 (= c!761165 (and ((_ is Cons!50297) lt!1658645) (= (_1!28568 (h!56064 lt!1658645)) (_1!28568 lt!1658627))))))

(assert (=> d!1364164 (= (getValueByKey!920 lt!1658645 (_1!28568 lt!1658627)) e!2784000)))

(declare-fun b!4470731 () Bool)

(assert (=> b!4470731 (= e!2784001 (getValueByKey!920 (t!357371 lt!1658645) (_1!28568 lt!1658627)))))

(assert (= (and d!1364164 c!761165) b!4470729))

(assert (= (and d!1364164 (not c!761165)) b!4470730))

(assert (= (and b!4470730 c!761166) b!4470731))

(assert (= (and b!4470730 (not c!761166)) b!4470732))

(declare-fun m!5178395 () Bool)

(assert (=> b!4470731 m!5178395))

(assert (=> d!1363740 d!1364164))

(declare-fun d!1364166 () Bool)

(assert (=> d!1364166 (= (getValueByKey!920 lt!1658645 (_1!28568 lt!1658627)) (Some!10933 (_2!28568 lt!1658627)))))

(declare-fun lt!1659239 () Unit!87799)

(declare-fun choose!28613 (List!50421 (_ BitVec 64) List!50420) Unit!87799)

(assert (=> d!1364166 (= lt!1659239 (choose!28613 lt!1658645 (_1!28568 lt!1658627) (_2!28568 lt!1658627)))))

(declare-fun e!2784010 () Bool)

(assert (=> d!1364166 e!2784010))

(declare-fun res!1854935 () Bool)

(assert (=> d!1364166 (=> (not res!1854935) (not e!2784010))))

(assert (=> d!1364166 (= res!1854935 (isStrictlySorted!345 lt!1658645))))

(assert (=> d!1364166 (= (lemmaContainsTupThenGetReturnValue!588 lt!1658645 (_1!28568 lt!1658627) (_2!28568 lt!1658627)) lt!1659239)))

(declare-fun b!4470743 () Bool)

(declare-fun res!1854936 () Bool)

(assert (=> b!4470743 (=> (not res!1854936) (not e!2784010))))

(assert (=> b!4470743 (= res!1854936 (containsKey!1483 lt!1658645 (_1!28568 lt!1658627)))))

(declare-fun b!4470744 () Bool)

(assert (=> b!4470744 (= e!2784010 (contains!12851 lt!1658645 (tuple2!50549 (_1!28568 lt!1658627) (_2!28568 lt!1658627))))))

(assert (= (and d!1364166 res!1854935) b!4470743))

(assert (= (and b!4470743 res!1854936) b!4470744))

(assert (=> d!1364166 m!5176991))

(declare-fun m!5178413 () Bool)

(assert (=> d!1364166 m!5178413))

(declare-fun m!5178415 () Bool)

(assert (=> d!1364166 m!5178415))

(declare-fun m!5178419 () Bool)

(assert (=> b!4470743 m!5178419))

(declare-fun m!5178423 () Bool)

(assert (=> b!4470744 m!5178423))

(assert (=> d!1363740 d!1364166))

(declare-fun b!4470787 () Bool)

(declare-fun c!761179 () Bool)

(assert (=> b!4470787 (= c!761179 (and ((_ is Cons!50297) (toList!4064 lt!1658620)) (bvsgt (_1!28568 (h!56064 (toList!4064 lt!1658620))) (_1!28568 lt!1658627))))))

(declare-fun e!2784042 () List!50421)

(declare-fun e!2784040 () List!50421)

(assert (=> b!4470787 (= e!2784042 e!2784040)))

(declare-fun b!4470788 () Bool)

(declare-fun call!311277 () List!50421)

(assert (=> b!4470788 (= e!2784040 call!311277)))

(declare-fun b!4470790 () Bool)

(declare-fun e!2784041 () List!50421)

(declare-fun call!311278 () List!50421)

(assert (=> b!4470790 (= e!2784041 call!311278)))

(declare-fun b!4470791 () Bool)

(assert (=> b!4470791 (= e!2784041 e!2784042)))

(declare-fun c!761181 () Bool)

(assert (=> b!4470791 (= c!761181 (and ((_ is Cons!50297) (toList!4064 lt!1658620)) (= (_1!28568 (h!56064 (toList!4064 lt!1658620))) (_1!28568 lt!1658627))))))

(declare-fun b!4470792 () Bool)

(declare-fun e!2784043 () List!50421)

(assert (=> b!4470792 (= e!2784043 (insertStrictlySorted!334 (t!357371 (toList!4064 lt!1658620)) (_1!28568 lt!1658627) (_2!28568 lt!1658627)))))

(declare-fun c!761178 () Bool)

(declare-fun bm!311271 () Bool)

(declare-fun $colon$colon!855 (List!50421 tuple2!50548) List!50421)

(assert (=> bm!311271 (= call!311278 ($colon$colon!855 e!2784043 (ite c!761178 (h!56064 (toList!4064 lt!1658620)) (tuple2!50549 (_1!28568 lt!1658627) (_2!28568 lt!1658627)))))))

(declare-fun c!761180 () Bool)

(assert (=> bm!311271 (= c!761180 c!761178)))

(declare-fun b!4470793 () Bool)

(assert (=> b!4470793 (= e!2784043 (ite c!761181 (t!357371 (toList!4064 lt!1658620)) (ite c!761179 (Cons!50297 (h!56064 (toList!4064 lt!1658620)) (t!357371 (toList!4064 lt!1658620))) Nil!50297)))))

(declare-fun b!4470789 () Bool)

(declare-fun res!1854957 () Bool)

(declare-fun e!2784044 () Bool)

(assert (=> b!4470789 (=> (not res!1854957) (not e!2784044))))

(declare-fun lt!1659253 () List!50421)

(assert (=> b!4470789 (= res!1854957 (containsKey!1483 lt!1659253 (_1!28568 lt!1658627)))))

(declare-fun d!1364178 () Bool)

(assert (=> d!1364178 e!2784044))

(declare-fun res!1854958 () Bool)

(assert (=> d!1364178 (=> (not res!1854958) (not e!2784044))))

(assert (=> d!1364178 (= res!1854958 (isStrictlySorted!345 lt!1659253))))

(assert (=> d!1364178 (= lt!1659253 e!2784041)))

(assert (=> d!1364178 (= c!761178 (and ((_ is Cons!50297) (toList!4064 lt!1658620)) (bvslt (_1!28568 (h!56064 (toList!4064 lt!1658620))) (_1!28568 lt!1658627))))))

(assert (=> d!1364178 (isStrictlySorted!345 (toList!4064 lt!1658620))))

(assert (=> d!1364178 (= (insertStrictlySorted!334 (toList!4064 lt!1658620) (_1!28568 lt!1658627) (_2!28568 lt!1658627)) lt!1659253)))

(declare-fun b!4470794 () Bool)

(declare-fun call!311276 () List!50421)

(assert (=> b!4470794 (= e!2784042 call!311276)))

(declare-fun bm!311272 () Bool)

(assert (=> bm!311272 (= call!311276 call!311278)))

(declare-fun b!4470795 () Bool)

(assert (=> b!4470795 (= e!2784040 call!311277)))

(declare-fun bm!311273 () Bool)

(assert (=> bm!311273 (= call!311277 call!311276)))

(declare-fun b!4470796 () Bool)

(assert (=> b!4470796 (= e!2784044 (contains!12851 lt!1659253 (tuple2!50549 (_1!28568 lt!1658627) (_2!28568 lt!1658627))))))

(assert (= (and d!1364178 c!761178) b!4470790))

(assert (= (and d!1364178 (not c!761178)) b!4470791))

(assert (= (and b!4470791 c!761181) b!4470794))

(assert (= (and b!4470791 (not c!761181)) b!4470787))

(assert (= (and b!4470787 c!761179) b!4470788))

(assert (= (and b!4470787 (not c!761179)) b!4470795))

(assert (= (or b!4470788 b!4470795) bm!311273))

(assert (= (or b!4470794 bm!311273) bm!311272))

(assert (= (or b!4470790 bm!311272) bm!311271))

(assert (= (and bm!311271 c!761180) b!4470792))

(assert (= (and bm!311271 (not c!761180)) b!4470793))

(assert (= (and d!1364178 res!1854958) b!4470789))

(assert (= (and b!4470789 res!1854957) b!4470796))

(declare-fun m!5178471 () Bool)

(assert (=> b!4470792 m!5178471))

(declare-fun m!5178473 () Bool)

(assert (=> bm!311271 m!5178473))

(declare-fun m!5178475 () Bool)

(assert (=> b!4470789 m!5178475))

(declare-fun m!5178477 () Bool)

(assert (=> b!4470796 m!5178477))

(declare-fun m!5178479 () Bool)

(assert (=> d!1364178 m!5178479))

(declare-fun m!5178481 () Bool)

(assert (=> d!1364178 m!5178481))

(assert (=> d!1363740 d!1364178))

(declare-fun d!1364198 () Bool)

(declare-fun e!2784045 () Bool)

(assert (=> d!1364198 e!2784045))

(declare-fun res!1854959 () Bool)

(assert (=> d!1364198 (=> res!1854959 e!2784045)))

(declare-fun lt!1659255 () Bool)

(assert (=> d!1364198 (= res!1854959 (not lt!1659255))))

(declare-fun lt!1659254 () Bool)

(assert (=> d!1364198 (= lt!1659255 lt!1659254)))

(declare-fun lt!1659256 () Unit!87799)

(declare-fun e!2784046 () Unit!87799)

(assert (=> d!1364198 (= lt!1659256 e!2784046)))

(declare-fun c!761182 () Bool)

(assert (=> d!1364198 (= c!761182 lt!1659254)))

(assert (=> d!1364198 (= lt!1659254 (containsKey!1483 (toList!4064 lt!1658829) (_1!28568 lt!1658627)))))

(assert (=> d!1364198 (= (contains!12852 lt!1658829 (_1!28568 lt!1658627)) lt!1659255)))

(declare-fun b!4470797 () Bool)

(declare-fun lt!1659257 () Unit!87799)

(assert (=> b!4470797 (= e!2784046 lt!1659257)))

(assert (=> b!4470797 (= lt!1659257 (lemmaContainsKeyImpliesGetValueByKeyDefined!824 (toList!4064 lt!1658829) (_1!28568 lt!1658627)))))

(assert (=> b!4470797 (isDefined!8221 (getValueByKey!920 (toList!4064 lt!1658829) (_1!28568 lt!1658627)))))

(declare-fun b!4470798 () Bool)

(declare-fun Unit!87932 () Unit!87799)

(assert (=> b!4470798 (= e!2784046 Unit!87932)))

(declare-fun b!4470799 () Bool)

(assert (=> b!4470799 (= e!2784045 (isDefined!8221 (getValueByKey!920 (toList!4064 lt!1658829) (_1!28568 lt!1658627))))))

(assert (= (and d!1364198 c!761182) b!4470797))

(assert (= (and d!1364198 (not c!761182)) b!4470798))

(assert (= (and d!1364198 (not res!1854959)) b!4470799))

(declare-fun m!5178483 () Bool)

(assert (=> d!1364198 m!5178483))

(declare-fun m!5178485 () Bool)

(assert (=> b!4470797 m!5178485))

(assert (=> b!4470797 m!5177389))

(assert (=> b!4470797 m!5177389))

(declare-fun m!5178487 () Bool)

(assert (=> b!4470797 m!5178487))

(assert (=> b!4470799 m!5177389))

(assert (=> b!4470799 m!5177389))

(assert (=> b!4470799 m!5178487))

(assert (=> d!1363860 d!1364198))

(declare-fun b!4470803 () Bool)

(declare-fun e!2784048 () Option!10934)

(assert (=> b!4470803 (= e!2784048 None!10933)))

(declare-fun b!4470800 () Bool)

(declare-fun e!2784047 () Option!10934)

(assert (=> b!4470800 (= e!2784047 (Some!10933 (_2!28568 (h!56064 lt!1658828))))))

(declare-fun b!4470801 () Bool)

(assert (=> b!4470801 (= e!2784047 e!2784048)))

(declare-fun c!761184 () Bool)

(assert (=> b!4470801 (= c!761184 (and ((_ is Cons!50297) lt!1658828) (not (= (_1!28568 (h!56064 lt!1658828)) (_1!28568 lt!1658627)))))))

(declare-fun d!1364200 () Bool)

(declare-fun c!761183 () Bool)

(assert (=> d!1364200 (= c!761183 (and ((_ is Cons!50297) lt!1658828) (= (_1!28568 (h!56064 lt!1658828)) (_1!28568 lt!1658627))))))

(assert (=> d!1364200 (= (getValueByKey!920 lt!1658828 (_1!28568 lt!1658627)) e!2784047)))

(declare-fun b!4470802 () Bool)

(assert (=> b!4470802 (= e!2784048 (getValueByKey!920 (t!357371 lt!1658828) (_1!28568 lt!1658627)))))

(assert (= (and d!1364200 c!761183) b!4470800))

(assert (= (and d!1364200 (not c!761183)) b!4470801))

(assert (= (and b!4470801 c!761184) b!4470802))

(assert (= (and b!4470801 (not c!761184)) b!4470803))

(declare-fun m!5178489 () Bool)

(assert (=> b!4470802 m!5178489))

(assert (=> d!1363860 d!1364200))

(declare-fun d!1364202 () Bool)

(assert (=> d!1364202 (= (getValueByKey!920 lt!1658828 (_1!28568 lt!1658627)) (Some!10933 (_2!28568 lt!1658627)))))

(declare-fun lt!1659258 () Unit!87799)

(assert (=> d!1364202 (= lt!1659258 (choose!28613 lt!1658828 (_1!28568 lt!1658627) (_2!28568 lt!1658627)))))

(declare-fun e!2784049 () Bool)

(assert (=> d!1364202 e!2784049))

(declare-fun res!1854960 () Bool)

(assert (=> d!1364202 (=> (not res!1854960) (not e!2784049))))

(assert (=> d!1364202 (= res!1854960 (isStrictlySorted!345 lt!1658828))))

(assert (=> d!1364202 (= (lemmaContainsTupThenGetReturnValue!588 lt!1658828 (_1!28568 lt!1658627) (_2!28568 lt!1658627)) lt!1659258)))

(declare-fun b!4470804 () Bool)

(declare-fun res!1854961 () Bool)

(assert (=> b!4470804 (=> (not res!1854961) (not e!2784049))))

(assert (=> b!4470804 (= res!1854961 (containsKey!1483 lt!1658828 (_1!28568 lt!1658627)))))

(declare-fun b!4470805 () Bool)

(assert (=> b!4470805 (= e!2784049 (contains!12851 lt!1658828 (tuple2!50549 (_1!28568 lt!1658627) (_2!28568 lt!1658627))))))

(assert (= (and d!1364202 res!1854960) b!4470804))

(assert (= (and b!4470804 res!1854961) b!4470805))

(assert (=> d!1364202 m!5177383))

(declare-fun m!5178491 () Bool)

(assert (=> d!1364202 m!5178491))

(declare-fun m!5178493 () Bool)

(assert (=> d!1364202 m!5178493))

(declare-fun m!5178495 () Bool)

(assert (=> b!4470804 m!5178495))

(declare-fun m!5178497 () Bool)

(assert (=> b!4470805 m!5178497))

(assert (=> d!1363860 d!1364202))

(declare-fun b!4470806 () Bool)

(declare-fun c!761186 () Bool)

(assert (=> b!4470806 (= c!761186 (and ((_ is Cons!50297) (toList!4064 lm!1477)) (bvsgt (_1!28568 (h!56064 (toList!4064 lm!1477))) (_1!28568 lt!1658627))))))

(declare-fun e!2784052 () List!50421)

(declare-fun e!2784050 () List!50421)

(assert (=> b!4470806 (= e!2784052 e!2784050)))

(declare-fun b!4470807 () Bool)

(declare-fun call!311280 () List!50421)

(assert (=> b!4470807 (= e!2784050 call!311280)))

(declare-fun b!4470809 () Bool)

(declare-fun e!2784051 () List!50421)

(declare-fun call!311281 () List!50421)

(assert (=> b!4470809 (= e!2784051 call!311281)))

(declare-fun b!4470810 () Bool)

(assert (=> b!4470810 (= e!2784051 e!2784052)))

(declare-fun c!761188 () Bool)

(assert (=> b!4470810 (= c!761188 (and ((_ is Cons!50297) (toList!4064 lm!1477)) (= (_1!28568 (h!56064 (toList!4064 lm!1477))) (_1!28568 lt!1658627))))))

(declare-fun b!4470811 () Bool)

(declare-fun e!2784053 () List!50421)

(assert (=> b!4470811 (= e!2784053 (insertStrictlySorted!334 (t!357371 (toList!4064 lm!1477)) (_1!28568 lt!1658627) (_2!28568 lt!1658627)))))

(declare-fun bm!311274 () Bool)

(declare-fun c!761185 () Bool)

(assert (=> bm!311274 (= call!311281 ($colon$colon!855 e!2784053 (ite c!761185 (h!56064 (toList!4064 lm!1477)) (tuple2!50549 (_1!28568 lt!1658627) (_2!28568 lt!1658627)))))))

(declare-fun c!761187 () Bool)

(assert (=> bm!311274 (= c!761187 c!761185)))

(declare-fun b!4470812 () Bool)

(assert (=> b!4470812 (= e!2784053 (ite c!761188 (t!357371 (toList!4064 lm!1477)) (ite c!761186 (Cons!50297 (h!56064 (toList!4064 lm!1477)) (t!357371 (toList!4064 lm!1477))) Nil!50297)))))

(declare-fun b!4470808 () Bool)

(declare-fun res!1854962 () Bool)

(declare-fun e!2784054 () Bool)

(assert (=> b!4470808 (=> (not res!1854962) (not e!2784054))))

(declare-fun lt!1659259 () List!50421)

(assert (=> b!4470808 (= res!1854962 (containsKey!1483 lt!1659259 (_1!28568 lt!1658627)))))

(declare-fun d!1364204 () Bool)

(assert (=> d!1364204 e!2784054))

(declare-fun res!1854963 () Bool)

(assert (=> d!1364204 (=> (not res!1854963) (not e!2784054))))

(assert (=> d!1364204 (= res!1854963 (isStrictlySorted!345 lt!1659259))))

(assert (=> d!1364204 (= lt!1659259 e!2784051)))

(assert (=> d!1364204 (= c!761185 (and ((_ is Cons!50297) (toList!4064 lm!1477)) (bvslt (_1!28568 (h!56064 (toList!4064 lm!1477))) (_1!28568 lt!1658627))))))

(assert (=> d!1364204 (isStrictlySorted!345 (toList!4064 lm!1477))))

(assert (=> d!1364204 (= (insertStrictlySorted!334 (toList!4064 lm!1477) (_1!28568 lt!1658627) (_2!28568 lt!1658627)) lt!1659259)))

(declare-fun b!4470813 () Bool)

(declare-fun call!311279 () List!50421)

(assert (=> b!4470813 (= e!2784052 call!311279)))

(declare-fun bm!311275 () Bool)

(assert (=> bm!311275 (= call!311279 call!311281)))

(declare-fun b!4470814 () Bool)

(assert (=> b!4470814 (= e!2784050 call!311280)))

(declare-fun bm!311276 () Bool)

(assert (=> bm!311276 (= call!311280 call!311279)))

(declare-fun b!4470815 () Bool)

(assert (=> b!4470815 (= e!2784054 (contains!12851 lt!1659259 (tuple2!50549 (_1!28568 lt!1658627) (_2!28568 lt!1658627))))))

(assert (= (and d!1364204 c!761185) b!4470809))

(assert (= (and d!1364204 (not c!761185)) b!4470810))

(assert (= (and b!4470810 c!761188) b!4470813))

(assert (= (and b!4470810 (not c!761188)) b!4470806))

(assert (= (and b!4470806 c!761186) b!4470807))

(assert (= (and b!4470806 (not c!761186)) b!4470814))

(assert (= (or b!4470807 b!4470814) bm!311276))

(assert (= (or b!4470813 bm!311276) bm!311275))

(assert (= (or b!4470809 bm!311275) bm!311274))

(assert (= (and bm!311274 c!761187) b!4470811))

(assert (= (and bm!311274 (not c!761187)) b!4470812))

(assert (= (and d!1364204 res!1854963) b!4470808))

(assert (= (and b!4470808 res!1854962) b!4470815))

(declare-fun m!5178499 () Bool)

(assert (=> b!4470811 m!5178499))

(declare-fun m!5178501 () Bool)

(assert (=> bm!311274 m!5178501))

(declare-fun m!5178503 () Bool)

(assert (=> b!4470808 m!5178503))

(declare-fun m!5178505 () Bool)

(assert (=> b!4470815 m!5178505))

(declare-fun m!5178507 () Bool)

(assert (=> d!1364204 m!5178507))

(assert (=> d!1364204 m!5177073))

(assert (=> d!1363860 d!1364204))

(declare-fun d!1364206 () Bool)

(declare-fun res!1854964 () Bool)

(declare-fun e!2784055 () Bool)

(assert (=> d!1364206 (=> res!1854964 e!2784055)))

(assert (=> d!1364206 (= res!1854964 (and ((_ is Cons!50296) (_2!28568 (h!56064 lt!1658621))) (= (_1!28567 (h!56063 (_2!28568 (h!56064 lt!1658621)))) key!3287)))))

(assert (=> d!1364206 (= (containsKey!1480 (_2!28568 (h!56064 lt!1658621)) key!3287) e!2784055)))

(declare-fun b!4470816 () Bool)

(declare-fun e!2784056 () Bool)

(assert (=> b!4470816 (= e!2784055 e!2784056)))

(declare-fun res!1854965 () Bool)

(assert (=> b!4470816 (=> (not res!1854965) (not e!2784056))))

(assert (=> b!4470816 (= res!1854965 ((_ is Cons!50296) (_2!28568 (h!56064 lt!1658621))))))

(declare-fun b!4470817 () Bool)

(assert (=> b!4470817 (= e!2784056 (containsKey!1480 (t!357370 (_2!28568 (h!56064 lt!1658621))) key!3287))))

(assert (= (and d!1364206 (not res!1854964)) b!4470816))

(assert (= (and b!4470816 res!1854965) b!4470817))

(declare-fun m!5178509 () Bool)

(assert (=> b!4470817 m!5178509))

(assert (=> b!4470189 d!1364206))

(declare-fun d!1364208 () Bool)

(declare-fun c!761191 () Bool)

(assert (=> d!1364208 (= c!761191 ((_ is Nil!50296) (toList!4063 (extractMap!1084 (Cons!50297 lt!1658627 Nil!50297)))))))

(declare-fun e!2784059 () (InoxSet tuple2!50546))

(assert (=> d!1364208 (= (content!8116 (toList!4063 (extractMap!1084 (Cons!50297 lt!1658627 Nil!50297)))) e!2784059)))

(declare-fun b!4470822 () Bool)

(assert (=> b!4470822 (= e!2784059 ((as const (Array tuple2!50546 Bool)) false))))

(declare-fun b!4470823 () Bool)

(assert (=> b!4470823 (= e!2784059 ((_ map or) (store ((as const (Array tuple2!50546 Bool)) false) (h!56063 (toList!4063 (extractMap!1084 (Cons!50297 lt!1658627 Nil!50297)))) true) (content!8116 (t!357370 (toList!4063 (extractMap!1084 (Cons!50297 lt!1658627 Nil!50297)))))))))

(assert (= (and d!1364208 c!761191) b!4470822))

(assert (= (and d!1364208 (not c!761191)) b!4470823))

(declare-fun m!5178511 () Bool)

(assert (=> b!4470823 m!5178511))

(declare-fun m!5178513 () Bool)

(assert (=> b!4470823 m!5178513))

(assert (=> d!1363854 d!1364208))

(declare-fun d!1364210 () Bool)

(declare-fun c!761192 () Bool)

(assert (=> d!1364210 (= c!761192 ((_ is Nil!50296) (toList!4063 (-!290 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)) key!3287))))))

(declare-fun e!2784060 () (InoxSet tuple2!50546))

(assert (=> d!1364210 (= (content!8116 (toList!4063 (-!290 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)) key!3287))) e!2784060)))

(declare-fun b!4470824 () Bool)

(assert (=> b!4470824 (= e!2784060 ((as const (Array tuple2!50546 Bool)) false))))

(declare-fun b!4470825 () Bool)

(assert (=> b!4470825 (= e!2784060 ((_ map or) (store ((as const (Array tuple2!50546 Bool)) false) (h!56063 (toList!4063 (-!290 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)) key!3287))) true) (content!8116 (t!357370 (toList!4063 (-!290 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)) key!3287))))))))

(assert (= (and d!1364210 c!761192) b!4470824))

(assert (= (and d!1364210 (not c!761192)) b!4470825))

(declare-fun m!5178515 () Bool)

(assert (=> b!4470825 m!5178515))

(declare-fun m!5178517 () Bool)

(assert (=> b!4470825 m!5178517))

(assert (=> d!1363854 d!1364210))

(assert (=> b!4470082 d!1363964))

(assert (=> b!4470082 d!1363966))

(assert (=> d!1363858 d!1363848))

(declare-fun d!1364212 () Bool)

(assert (=> d!1364212 (eq!521 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 newBucket!178) Nil!50297)) (-!290 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)) key!3287))))

(assert (=> d!1364212 true))

(declare-fun _$18!210 () Unit!87799)

(assert (=> d!1364212 (= (choose!28603 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477))) newBucket!178 key!3287 hashF!1107) _$18!210)))

(declare-fun bs!795832 () Bool)

(assert (= bs!795832 d!1364212))

(assert (=> bs!795832 m!5177375))

(assert (=> bs!795832 m!5176955))

(assert (=> bs!795832 m!5176955))

(assert (=> bs!795832 m!5176957))

(assert (=> bs!795832 m!5177375))

(assert (=> bs!795832 m!5176957))

(assert (=> bs!795832 m!5177379))

(assert (=> d!1363858 d!1364212))

(assert (=> d!1363858 d!1363852))

(assert (=> d!1363858 d!1364026))

(declare-fun bs!795833 () Bool)

(declare-fun d!1364214 () Bool)

(assert (= bs!795833 (and d!1364214 d!1363876)))

(declare-fun lambda!163567 () Int)

(assert (=> bs!795833 (= lambda!163567 lambda!163412)))

(declare-fun bs!795834 () Bool)

(assert (= bs!795834 (and d!1364214 d!1363996)))

(assert (=> bs!795834 (= lambda!163567 lambda!163522)))

(declare-fun bs!795835 () Bool)

(assert (= bs!795835 (and d!1364214 d!1364048)))

(assert (=> bs!795835 (= lambda!163567 lambda!163540)))

(declare-fun bs!795836 () Bool)

(assert (= bs!795836 (and d!1364214 d!1363856)))

(assert (=> bs!795836 (= lambda!163567 lambda!163407)))

(declare-fun bs!795837 () Bool)

(assert (= bs!795837 (and d!1364214 start!439252)))

(assert (=> bs!795837 (= lambda!163567 lambda!163367)))

(declare-fun bs!795838 () Bool)

(assert (= bs!795838 (and d!1364214 d!1363862)))

(assert (=> bs!795838 (= lambda!163567 lambda!163408)))

(declare-fun bs!795839 () Bool)

(assert (= bs!795839 (and d!1364214 d!1364132)))

(assert (=> bs!795839 (= lambda!163567 lambda!163561)))

(declare-fun bs!795840 () Bool)

(assert (= bs!795840 (and d!1364214 d!1363956)))

(assert (=> bs!795840 (= lambda!163567 lambda!163470)))

(declare-fun bs!795841 () Bool)

(assert (= bs!795841 (and d!1364214 d!1363872)))

(assert (=> bs!795841 (not (= lambda!163567 lambda!163411))))

(declare-fun bs!795842 () Bool)

(assert (= bs!795842 (and d!1364214 d!1363878)))

(assert (=> bs!795842 (= lambda!163567 lambda!163413)))

(declare-fun bs!795843 () Bool)

(assert (= bs!795843 (and d!1364214 d!1363844)))

(assert (=> bs!795843 (= lambda!163567 lambda!163402)))

(declare-fun bs!795844 () Bool)

(assert (= bs!795844 (and d!1364214 d!1363848)))

(assert (=> bs!795844 (= lambda!163567 lambda!163403)))

(declare-fun bs!795845 () Bool)

(assert (= bs!795845 (and d!1364214 d!1364094)))

(assert (=> bs!795845 (= lambda!163567 lambda!163550)))

(declare-fun bs!795846 () Bool)

(assert (= bs!795846 (and d!1364214 d!1363756)))

(assert (=> bs!795846 (= lambda!163567 lambda!163373)))

(declare-fun bs!795847 () Bool)

(assert (= bs!795847 (and d!1364214 d!1363832)))

(assert (=> bs!795847 (= lambda!163567 lambda!163399)))

(declare-fun bs!795848 () Bool)

(assert (= bs!795848 (and d!1364214 d!1363850)))

(assert (=> bs!795848 (= lambda!163567 lambda!163404)))

(declare-fun lt!1659260 () ListMap!3325)

(assert (=> d!1364214 (invariantList!931 (toList!4063 lt!1659260))))

(declare-fun e!2784063 () ListMap!3325)

(assert (=> d!1364214 (= lt!1659260 e!2784063)))

(declare-fun c!761193 () Bool)

(assert (=> d!1364214 (= c!761193 ((_ is Cons!50297) (Cons!50297 (tuple2!50549 hash!344 newBucket!178) Nil!50297)))))

(assert (=> d!1364214 (forall!9998 (Cons!50297 (tuple2!50549 hash!344 newBucket!178) Nil!50297) lambda!163567)))

(assert (=> d!1364214 (= (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 newBucket!178) Nil!50297)) lt!1659260)))

(declare-fun b!4470826 () Bool)

(assert (=> b!4470826 (= e!2784063 (addToMapMapFromBucket!593 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 newBucket!178) Nil!50297))) (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 newBucket!178) Nil!50297)))))))

(declare-fun b!4470827 () Bool)

(assert (=> b!4470827 (= e!2784063 (ListMap!3326 Nil!50296))))

(assert (= (and d!1364214 c!761193) b!4470826))

(assert (= (and d!1364214 (not c!761193)) b!4470827))

(declare-fun m!5178519 () Bool)

(assert (=> d!1364214 m!5178519))

(declare-fun m!5178521 () Bool)

(assert (=> d!1364214 m!5178521))

(declare-fun m!5178523 () Bool)

(assert (=> b!4470826 m!5178523))

(assert (=> b!4470826 m!5178523))

(declare-fun m!5178525 () Bool)

(assert (=> b!4470826 m!5178525))

(assert (=> d!1363858 d!1364214))

(declare-fun d!1364216 () Bool)

(assert (=> d!1364216 (= (eq!521 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 newBucket!178) Nil!50297)) (-!290 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)) key!3287)) (= (content!8116 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 newBucket!178) Nil!50297)))) (content!8116 (toList!4063 (-!290 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)) key!3287)))))))

(declare-fun bs!795849 () Bool)

(assert (= bs!795849 d!1364216))

(declare-fun m!5178527 () Bool)

(assert (=> bs!795849 m!5178527))

(assert (=> bs!795849 m!5177363))

(assert (=> d!1363858 d!1364216))

(declare-fun d!1364218 () Bool)

(assert (=> d!1364218 (= (invariantList!931 (toList!4063 lt!1658815)) (noDuplicatedKeys!214 (toList!4063 lt!1658815)))))

(declare-fun bs!795850 () Bool)

(assert (= bs!795850 d!1364218))

(declare-fun m!5178529 () Bool)

(assert (=> bs!795850 m!5178529))

(assert (=> d!1363848 d!1364218))

(declare-fun d!1364220 () Bool)

(declare-fun res!1854966 () Bool)

(declare-fun e!2784064 () Bool)

(assert (=> d!1364220 (=> res!1854966 e!2784064)))

(assert (=> d!1364220 (= res!1854966 ((_ is Nil!50297) (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))

(assert (=> d!1364220 (= (forall!9998 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297) lambda!163403) e!2784064)))

(declare-fun b!4470828 () Bool)

(declare-fun e!2784065 () Bool)

(assert (=> b!4470828 (= e!2784064 e!2784065)))

(declare-fun res!1854967 () Bool)

(assert (=> b!4470828 (=> (not res!1854967) (not e!2784065))))

(assert (=> b!4470828 (= res!1854967 (dynLambda!21018 lambda!163403 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))

(declare-fun b!4470829 () Bool)

(assert (=> b!4470829 (= e!2784065 (forall!9998 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)) lambda!163403))))

(assert (= (and d!1364220 (not res!1854966)) b!4470828))

(assert (= (and b!4470828 res!1854967) b!4470829))

(declare-fun b_lambda!148499 () Bool)

(assert (=> (not b_lambda!148499) (not b!4470828)))

(declare-fun m!5178531 () Bool)

(assert (=> b!4470828 m!5178531))

(declare-fun m!5178533 () Bool)

(assert (=> b!4470829 m!5178533))

(assert (=> d!1363848 d!1364220))

(declare-fun b!4470833 () Bool)

(declare-fun e!2784067 () Option!10934)

(assert (=> b!4470833 (= e!2784067 None!10933)))

(declare-fun b!4470830 () Bool)

(declare-fun e!2784066 () Option!10934)

(assert (=> b!4470830 (= e!2784066 (Some!10933 (_2!28568 (h!56064 (toList!4064 lt!1658829)))))))

(declare-fun b!4470831 () Bool)

(assert (=> b!4470831 (= e!2784066 e!2784067)))

(declare-fun c!761195 () Bool)

(assert (=> b!4470831 (= c!761195 (and ((_ is Cons!50297) (toList!4064 lt!1658829)) (not (= (_1!28568 (h!56064 (toList!4064 lt!1658829))) (_1!28568 lt!1658627)))))))

(declare-fun d!1364222 () Bool)

(declare-fun c!761194 () Bool)

(assert (=> d!1364222 (= c!761194 (and ((_ is Cons!50297) (toList!4064 lt!1658829)) (= (_1!28568 (h!56064 (toList!4064 lt!1658829))) (_1!28568 lt!1658627))))))

(assert (=> d!1364222 (= (getValueByKey!920 (toList!4064 lt!1658829) (_1!28568 lt!1658627)) e!2784066)))

(declare-fun b!4470832 () Bool)

(assert (=> b!4470832 (= e!2784067 (getValueByKey!920 (t!357371 (toList!4064 lt!1658829)) (_1!28568 lt!1658627)))))

(assert (= (and d!1364222 c!761194) b!4470830))

(assert (= (and d!1364222 (not c!761194)) b!4470831))

(assert (= (and b!4470831 c!761195) b!4470832))

(assert (= (and b!4470831 (not c!761195)) b!4470833))

(declare-fun m!5178535 () Bool)

(assert (=> b!4470832 m!5178535))

(assert (=> b!4470170 d!1364222))

(assert (=> b!4470090 d!1364074))

(assert (=> b!4470090 d!1364076))

(declare-fun b!4470837 () Bool)

(declare-fun e!2784069 () Option!10934)

(assert (=> b!4470837 (= e!2784069 None!10933)))

(declare-fun b!4470834 () Bool)

(declare-fun e!2784068 () Option!10934)

(assert (=> b!4470834 (= e!2784068 (Some!10933 (_2!28568 (h!56064 (toList!4064 lt!1658646)))))))

(declare-fun b!4470835 () Bool)

(assert (=> b!4470835 (= e!2784068 e!2784069)))

(declare-fun c!761197 () Bool)

(assert (=> b!4470835 (= c!761197 (and ((_ is Cons!50297) (toList!4064 lt!1658646)) (not (= (_1!28568 (h!56064 (toList!4064 lt!1658646))) (_1!28568 lt!1658627)))))))

(declare-fun d!1364224 () Bool)

(declare-fun c!761196 () Bool)

(assert (=> d!1364224 (= c!761196 (and ((_ is Cons!50297) (toList!4064 lt!1658646)) (= (_1!28568 (h!56064 (toList!4064 lt!1658646))) (_1!28568 lt!1658627))))))

(assert (=> d!1364224 (= (getValueByKey!920 (toList!4064 lt!1658646) (_1!28568 lt!1658627)) e!2784068)))

(declare-fun b!4470836 () Bool)

(assert (=> b!4470836 (= e!2784069 (getValueByKey!920 (t!357371 (toList!4064 lt!1658646)) (_1!28568 lt!1658627)))))

(assert (= (and d!1364224 c!761196) b!4470834))

(assert (= (and d!1364224 (not c!761196)) b!4470835))

(assert (= (and b!4470835 c!761197) b!4470836))

(assert (= (and b!4470835 (not c!761197)) b!4470837))

(declare-fun m!5178537 () Bool)

(assert (=> b!4470836 m!5178537))

(assert (=> b!4469928 d!1364224))

(declare-fun bs!795851 () Bool)

(declare-fun b!4470839 () Bool)

(assert (= bs!795851 (and b!4470839 b!4470368)))

(declare-fun lambda!163568 () Int)

(assert (=> bs!795851 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1658931) (= lambda!163568 lambda!163468))))

(declare-fun bs!795852 () Bool)

(assert (= bs!795852 (and b!4470839 b!4470528)))

(assert (=> bs!795852 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163568 lambda!163534))))

(declare-fun bs!795853 () Bool)

(assert (= bs!795853 (and b!4470839 b!4470465)))

(assert (=> bs!795853 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659048) (= lambda!163568 lambda!163518))))

(declare-fun bs!795854 () Bool)

(assert (= bs!795854 (and b!4470839 b!4470529)))

(assert (=> bs!795854 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659113) (= lambda!163568 lambda!163537))))

(declare-fun bs!795855 () Bool)

(assert (= bs!795855 (and b!4470839 d!1363918)))

(assert (=> bs!795855 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1658930) (= lambda!163568 lambda!163469))))

(declare-fun bs!795856 () Bool)

(assert (= bs!795856 (and b!4470839 b!4470718)))

(assert (=> bs!795856 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) (= lambda!163568 lambda!163562))))

(declare-fun bs!795857 () Bool)

(assert (= bs!795857 (and b!4470839 b!4470719)))

(assert (=> bs!795857 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) (= lambda!163568 lambda!163563))))

(declare-fun bs!795858 () Bool)

(assert (= bs!795858 (and b!4470839 b!4470674)))

(assert (=> bs!795858 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163568 lambda!163556))))

(assert (=> bs!795851 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163568 lambda!163467))))

(declare-fun bs!795859 () Bool)

(assert (= bs!795859 (and b!4470839 b!4470675)))

(assert (=> bs!795859 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163568 lambda!163557))))

(assert (=> bs!795857 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659220) (= lambda!163568 lambda!163564))))

(declare-fun bs!795860 () Bool)

(assert (= bs!795860 (and b!4470839 d!1364124)))

(assert (=> bs!795860 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659184) (= lambda!163568 lambda!163560))))

(declare-fun bs!795861 () Bool)

(assert (= bs!795861 (and b!4470839 d!1364038)))

(assert (=> bs!795861 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659112) (= lambda!163568 lambda!163538))))

(assert (=> bs!795854 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163568 lambda!163535))))

(assert (=> bs!795853 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163568 lambda!163517))))

(declare-fun bs!795862 () Bool)

(assert (= bs!795862 (and b!4470839 b!4470367)))

(assert (=> bs!795862 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163568 lambda!163466))))

(declare-fun bs!795863 () Bool)

(assert (= bs!795863 (and b!4470839 d!1363818)))

(assert (=> bs!795863 (not (= lambda!163568 lambda!163394))))

(declare-fun bs!795864 () Bool)

(assert (= bs!795864 (and b!4470839 b!4470464)))

(assert (=> bs!795864 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163568 lambda!163515))))

(declare-fun bs!795865 () Bool)

(assert (= bs!795865 (and b!4470839 d!1364156)))

(assert (=> bs!795865 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659219) (= lambda!163568 lambda!163565))))

(assert (=> bs!795859 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659185) (= lambda!163568 lambda!163559))))

(declare-fun bs!795866 () Bool)

(assert (= bs!795866 (and b!4470839 d!1363992)))

(assert (=> bs!795866 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659047) (= lambda!163568 lambda!163520))))

(assert (=> b!4470839 true))

(declare-fun bs!795867 () Bool)

(declare-fun b!4470840 () Bool)

(assert (= bs!795867 (and b!4470840 b!4470368)))

(declare-fun lambda!163569 () Int)

(assert (=> bs!795867 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1658931) (= lambda!163569 lambda!163468))))

(declare-fun bs!795868 () Bool)

(assert (= bs!795868 (and b!4470840 b!4470528)))

(assert (=> bs!795868 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163569 lambda!163534))))

(declare-fun bs!795869 () Bool)

(assert (= bs!795869 (and b!4470840 b!4470529)))

(assert (=> bs!795869 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659113) (= lambda!163569 lambda!163537))))

(declare-fun bs!795870 () Bool)

(assert (= bs!795870 (and b!4470840 d!1363918)))

(assert (=> bs!795870 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1658930) (= lambda!163569 lambda!163469))))

(declare-fun bs!795871 () Bool)

(assert (= bs!795871 (and b!4470840 b!4470718)))

(assert (=> bs!795871 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) (= lambda!163569 lambda!163562))))

(declare-fun bs!795872 () Bool)

(assert (= bs!795872 (and b!4470840 b!4470719)))

(assert (=> bs!795872 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) (= lambda!163569 lambda!163563))))

(declare-fun bs!795873 () Bool)

(assert (= bs!795873 (and b!4470840 b!4470674)))

(assert (=> bs!795873 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163569 lambda!163556))))

(assert (=> bs!795867 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163569 lambda!163467))))

(declare-fun bs!795874 () Bool)

(assert (= bs!795874 (and b!4470840 b!4470675)))

(assert (=> bs!795874 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163569 lambda!163557))))

(assert (=> bs!795872 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659220) (= lambda!163569 lambda!163564))))

(declare-fun bs!795875 () Bool)

(assert (= bs!795875 (and b!4470840 d!1364124)))

(assert (=> bs!795875 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659184) (= lambda!163569 lambda!163560))))

(declare-fun bs!795876 () Bool)

(assert (= bs!795876 (and b!4470840 d!1364038)))

(assert (=> bs!795876 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659112) (= lambda!163569 lambda!163538))))

(assert (=> bs!795869 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163569 lambda!163535))))

(declare-fun bs!795877 () Bool)

(assert (= bs!795877 (and b!4470840 b!4470465)))

(assert (=> bs!795877 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163569 lambda!163517))))

(declare-fun bs!795878 () Bool)

(assert (= bs!795878 (and b!4470840 b!4470839)))

(assert (=> bs!795878 (= lambda!163569 lambda!163568)))

(assert (=> bs!795877 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659048) (= lambda!163569 lambda!163518))))

(declare-fun bs!795879 () Bool)

(assert (= bs!795879 (and b!4470840 b!4470367)))

(assert (=> bs!795879 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163569 lambda!163466))))

(declare-fun bs!795880 () Bool)

(assert (= bs!795880 (and b!4470840 d!1363818)))

(assert (=> bs!795880 (not (= lambda!163569 lambda!163394))))

(declare-fun bs!795881 () Bool)

(assert (= bs!795881 (and b!4470840 b!4470464)))

(assert (=> bs!795881 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163569 lambda!163515))))

(declare-fun bs!795882 () Bool)

(assert (= bs!795882 (and b!4470840 d!1364156)))

(assert (=> bs!795882 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659219) (= lambda!163569 lambda!163565))))

(assert (=> bs!795874 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659185) (= lambda!163569 lambda!163559))))

(declare-fun bs!795883 () Bool)

(assert (= bs!795883 (and b!4470840 d!1363992)))

(assert (=> bs!795883 (= (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659047) (= lambda!163569 lambda!163520))))

(assert (=> b!4470840 true))

(declare-fun lt!1659271 () ListMap!3325)

(declare-fun lambda!163570 () Int)

(assert (=> bs!795867 (= (= lt!1659271 lt!1658931) (= lambda!163570 lambda!163468))))

(assert (=> bs!795868 (= (= lt!1659271 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163570 lambda!163534))))

(assert (=> bs!795869 (= (= lt!1659271 lt!1659113) (= lambda!163570 lambda!163537))))

(assert (=> bs!795870 (= (= lt!1659271 lt!1658930) (= lambda!163570 lambda!163469))))

(assert (=> bs!795872 (= (= lt!1659271 (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) (= lambda!163570 lambda!163563))))

(assert (=> bs!795873 (= (= lt!1659271 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163570 lambda!163556))))

(assert (=> bs!795867 (= (= lt!1659271 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163570 lambda!163467))))

(assert (=> bs!795874 (= (= lt!1659271 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163570 lambda!163557))))

(assert (=> bs!795872 (= (= lt!1659271 lt!1659220) (= lambda!163570 lambda!163564))))

(assert (=> bs!795875 (= (= lt!1659271 lt!1659184) (= lambda!163570 lambda!163560))))

(assert (=> bs!795876 (= (= lt!1659271 lt!1659112) (= lambda!163570 lambda!163538))))

(assert (=> bs!795869 (= (= lt!1659271 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163570 lambda!163535))))

(assert (=> bs!795877 (= (= lt!1659271 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163570 lambda!163517))))

(assert (=> bs!795878 (= (= lt!1659271 (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297)))) (= lambda!163570 lambda!163568))))

(assert (=> bs!795877 (= (= lt!1659271 lt!1659048) (= lambda!163570 lambda!163518))))

(assert (=> bs!795879 (= (= lt!1659271 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163570 lambda!163466))))

(assert (=> bs!795880 (not (= lambda!163570 lambda!163394))))

(assert (=> bs!795881 (= (= lt!1659271 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163570 lambda!163515))))

(assert (=> bs!795882 (= (= lt!1659271 lt!1659219) (= lambda!163570 lambda!163565))))

(assert (=> bs!795871 (= (= lt!1659271 (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) (= lambda!163570 lambda!163562))))

(assert (=> b!4470840 (= (= lt!1659271 (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297)))) (= lambda!163570 lambda!163569))))

(assert (=> bs!795874 (= (= lt!1659271 lt!1659185) (= lambda!163570 lambda!163559))))

(assert (=> bs!795883 (= (= lt!1659271 lt!1659047) (= lambda!163570 lambda!163520))))

(assert (=> b!4470840 true))

(declare-fun bs!795884 () Bool)

(declare-fun d!1364226 () Bool)

(assert (= bs!795884 (and d!1364226 b!4470368)))

(declare-fun lt!1659270 () ListMap!3325)

(declare-fun lambda!163571 () Int)

(assert (=> bs!795884 (= (= lt!1659270 lt!1658931) (= lambda!163571 lambda!163468))))

(declare-fun bs!795885 () Bool)

(assert (= bs!795885 (and d!1364226 b!4470528)))

(assert (=> bs!795885 (= (= lt!1659270 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163571 lambda!163534))))

(declare-fun bs!795886 () Bool)

(assert (= bs!795886 (and d!1364226 b!4470529)))

(assert (=> bs!795886 (= (= lt!1659270 lt!1659113) (= lambda!163571 lambda!163537))))

(declare-fun bs!795887 () Bool)

(assert (= bs!795887 (and d!1364226 d!1363918)))

(assert (=> bs!795887 (= (= lt!1659270 lt!1658930) (= lambda!163571 lambda!163469))))

(declare-fun bs!795888 () Bool)

(assert (= bs!795888 (and d!1364226 b!4470719)))

(assert (=> bs!795888 (= (= lt!1659270 (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) (= lambda!163571 lambda!163563))))

(declare-fun bs!795889 () Bool)

(assert (= bs!795889 (and d!1364226 b!4470674)))

(assert (=> bs!795889 (= (= lt!1659270 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163571 lambda!163556))))

(assert (=> bs!795884 (= (= lt!1659270 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163571 lambda!163467))))

(declare-fun bs!795890 () Bool)

(assert (= bs!795890 (and d!1364226 b!4470675)))

(assert (=> bs!795890 (= (= lt!1659270 (extractMap!1084 (t!357371 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163571 lambda!163557))))

(assert (=> bs!795888 (= (= lt!1659270 lt!1659220) (= lambda!163571 lambda!163564))))

(declare-fun bs!795891 () Bool)

(assert (= bs!795891 (and d!1364226 b!4470840)))

(assert (=> bs!795891 (= (= lt!1659270 lt!1659271) (= lambda!163571 lambda!163570))))

(declare-fun bs!795892 () Bool)

(assert (= bs!795892 (and d!1364226 d!1364124)))

(assert (=> bs!795892 (= (= lt!1659270 lt!1659184) (= lambda!163571 lambda!163560))))

(declare-fun bs!795893 () Bool)

(assert (= bs!795893 (and d!1364226 d!1364038)))

(assert (=> bs!795893 (= (= lt!1659270 lt!1659112) (= lambda!163571 lambda!163538))))

(assert (=> bs!795886 (= (= lt!1659270 (extractMap!1084 (t!357371 (toList!4064 lt!1658620)))) (= lambda!163571 lambda!163535))))

(declare-fun bs!795894 () Bool)

(assert (= bs!795894 (and d!1364226 b!4470465)))

(assert (=> bs!795894 (= (= lt!1659270 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163571 lambda!163517))))

(declare-fun bs!795895 () Bool)

(assert (= bs!795895 (and d!1364226 b!4470839)))

(assert (=> bs!795895 (= (= lt!1659270 (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297)))) (= lambda!163571 lambda!163568))))

(assert (=> bs!795894 (= (= lt!1659270 lt!1659048) (= lambda!163571 lambda!163518))))

(declare-fun bs!795896 () Bool)

(assert (= bs!795896 (and d!1364226 b!4470367)))

(assert (=> bs!795896 (= (= lt!1659270 (extractMap!1084 (t!357371 (t!357371 (toList!4064 lm!1477))))) (= lambda!163571 lambda!163466))))

(declare-fun bs!795897 () Bool)

(assert (= bs!795897 (and d!1364226 d!1363818)))

(assert (=> bs!795897 (not (= lambda!163571 lambda!163394))))

(declare-fun bs!795898 () Bool)

(assert (= bs!795898 (and d!1364226 b!4470464)))

(assert (=> bs!795898 (= (= lt!1659270 (extractMap!1084 (t!357371 lt!1658621))) (= lambda!163571 lambda!163515))))

(declare-fun bs!795899 () Bool)

(assert (= bs!795899 (and d!1364226 d!1364156)))

(assert (=> bs!795899 (= (= lt!1659270 lt!1659219) (= lambda!163571 lambda!163565))))

(declare-fun bs!795900 () Bool)

(assert (= bs!795900 (and d!1364226 b!4470718)))

(assert (=> bs!795900 (= (= lt!1659270 (extractMap!1084 (t!357371 (toList!4064 lm!1477)))) (= lambda!163571 lambda!163562))))

(assert (=> bs!795891 (= (= lt!1659270 (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297)))) (= lambda!163571 lambda!163569))))

(assert (=> bs!795890 (= (= lt!1659270 lt!1659185) (= lambda!163571 lambda!163559))))

(declare-fun bs!795901 () Bool)

(assert (= bs!795901 (and d!1364226 d!1363992)))

(assert (=> bs!795901 (= (= lt!1659270 lt!1659047) (= lambda!163571 lambda!163520))))

(assert (=> d!1364226 true))

(declare-fun bm!311277 () Bool)

(declare-fun call!311284 () Unit!87799)

(assert (=> bm!311277 (= call!311284 (lemmaContainsAllItsOwnKeys!268 (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297)))))))

(declare-fun call!311282 () Bool)

(declare-fun lt!1659267 () ListMap!3325)

(declare-fun c!761198 () Bool)

(declare-fun bm!311278 () Bool)

(assert (=> bm!311278 (= call!311282 (forall!10000 (ite c!761198 (toList!4063 (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297)))) (toList!4063 lt!1659267)) (ite c!761198 lambda!163568 lambda!163570)))))

(declare-fun e!2784071 () ListMap!3325)

(assert (=> b!4470839 (= e!2784071 (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))))))

(declare-fun lt!1659263 () Unit!87799)

(assert (=> b!4470839 (= lt!1659263 call!311284)))

(declare-fun call!311283 () Bool)

(assert (=> b!4470839 call!311283))

(declare-fun lt!1659279 () Unit!87799)

(assert (=> b!4470839 (= lt!1659279 lt!1659263)))

(assert (=> b!4470839 call!311282))

(declare-fun lt!1659261 () Unit!87799)

(declare-fun Unit!87955 () Unit!87799)

(assert (=> b!4470839 (= lt!1659261 Unit!87955)))

(assert (=> b!4470840 (= e!2784071 lt!1659271)))

(assert (=> b!4470840 (= lt!1659267 (+!1373 (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (h!56063 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297))))))))

(assert (=> b!4470840 (= lt!1659271 (addToMapMapFromBucket!593 (t!357370 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297)))) (+!1373 (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) (h!56063 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297)))))))))

(declare-fun lt!1659273 () Unit!87799)

(assert (=> b!4470840 (= lt!1659273 call!311284)))

(assert (=> b!4470840 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297)))) lambda!163569)))

(declare-fun lt!1659275 () Unit!87799)

(assert (=> b!4470840 (= lt!1659275 lt!1659273)))

(assert (=> b!4470840 call!311282))

(declare-fun lt!1659265 () Unit!87799)

(declare-fun Unit!87957 () Unit!87799)

(assert (=> b!4470840 (= lt!1659265 Unit!87957)))

(assert (=> b!4470840 (forall!10000 (t!357370 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297)))) lambda!163570)))

(declare-fun lt!1659266 () Unit!87799)

(declare-fun Unit!87958 () Unit!87799)

(assert (=> b!4470840 (= lt!1659266 Unit!87958)))

(declare-fun lt!1659262 () Unit!87799)

(declare-fun Unit!87959 () Unit!87799)

(assert (=> b!4470840 (= lt!1659262 Unit!87959)))

(declare-fun lt!1659277 () Unit!87799)

(assert (=> b!4470840 (= lt!1659277 (forallContained!2267 (toList!4063 lt!1659267) lambda!163570 (h!56063 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297))))))))

(assert (=> b!4470840 (contains!12853 lt!1659267 (_1!28567 (h!56063 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297))))))))

(declare-fun lt!1659278 () Unit!87799)

(declare-fun Unit!87960 () Unit!87799)

(assert (=> b!4470840 (= lt!1659278 Unit!87960)))

(assert (=> b!4470840 (contains!12853 lt!1659271 (_1!28567 (h!56063 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297))))))))

(declare-fun lt!1659264 () Unit!87799)

(declare-fun Unit!87961 () Unit!87799)

(assert (=> b!4470840 (= lt!1659264 Unit!87961)))

(assert (=> b!4470840 (forall!10000 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297))) lambda!163570)))

(declare-fun lt!1659280 () Unit!87799)

(declare-fun Unit!87962 () Unit!87799)

(assert (=> b!4470840 (= lt!1659280 Unit!87962)))

(assert (=> b!4470840 (forall!10000 (toList!4063 lt!1659267) lambda!163570)))

(declare-fun lt!1659274 () Unit!87799)

(declare-fun Unit!87963 () Unit!87799)

(assert (=> b!4470840 (= lt!1659274 Unit!87963)))

(declare-fun lt!1659276 () Unit!87799)

(declare-fun Unit!87964 () Unit!87799)

(assert (=> b!4470840 (= lt!1659276 Unit!87964)))

(declare-fun lt!1659281 () Unit!87799)

(assert (=> b!4470840 (= lt!1659281 (addForallContainsKeyThenBeforeAdding!267 (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659271 (_1!28567 (h!56063 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297))))) (_2!28567 (h!56063 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297)))))))))

(assert (=> b!4470840 call!311283))

(declare-fun lt!1659272 () Unit!87799)

(assert (=> b!4470840 (= lt!1659272 lt!1659281)))

(assert (=> b!4470840 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297)))) lambda!163570)))

(declare-fun lt!1659268 () Unit!87799)

(declare-fun Unit!87965 () Unit!87799)

(assert (=> b!4470840 (= lt!1659268 Unit!87965)))

(declare-fun res!1854969 () Bool)

(assert (=> b!4470840 (= res!1854969 (forall!10000 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297))) lambda!163570))))

(declare-fun e!2784072 () Bool)

(assert (=> b!4470840 (=> (not res!1854969) (not e!2784072))))

(assert (=> b!4470840 e!2784072))

(declare-fun lt!1659269 () Unit!87799)

(declare-fun Unit!87966 () Unit!87799)

(assert (=> b!4470840 (= lt!1659269 Unit!87966)))

(declare-fun b!4470841 () Bool)

(assert (=> b!4470841 (= e!2784072 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297)))) lambda!163570))))

(declare-fun b!4470842 () Bool)

(declare-fun e!2784070 () Bool)

(assert (=> b!4470842 (= e!2784070 (invariantList!931 (toList!4063 lt!1659270)))))

(declare-fun bm!311279 () Bool)

(assert (=> bm!311279 (= call!311283 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297)))) (ite c!761198 lambda!163568 lambda!163570)))))

(declare-fun b!4470838 () Bool)

(declare-fun res!1854968 () Bool)

(assert (=> b!4470838 (=> (not res!1854968) (not e!2784070))))

(assert (=> b!4470838 (= res!1854968 (forall!10000 (toList!4063 (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297)))) lambda!163571))))

(assert (=> d!1364226 e!2784070))

(declare-fun res!1854970 () Bool)

(assert (=> d!1364226 (=> (not res!1854970) (not e!2784070))))

(assert (=> d!1364226 (= res!1854970 (forall!10000 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297))) lambda!163571))))

(assert (=> d!1364226 (= lt!1659270 e!2784071)))

(assert (=> d!1364226 (= c!761198 ((_ is Nil!50296) (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297)))))))

(assert (=> d!1364226 (noDuplicateKeys!1028 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297))))))

(assert (=> d!1364226 (= (addToMapMapFromBucket!593 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297))) (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297)))) lt!1659270)))

(assert (= (and d!1364226 c!761198) b!4470839))

(assert (= (and d!1364226 (not c!761198)) b!4470840))

(assert (= (and b!4470840 res!1854969) b!4470841))

(assert (= (or b!4470839 b!4470840) bm!311279))

(assert (= (or b!4470839 b!4470840) bm!311278))

(assert (= (or b!4470839 b!4470840) bm!311277))

(assert (= (and d!1364226 res!1854970) b!4470838))

(assert (= (and b!4470838 res!1854968) b!4470842))

(declare-fun m!5178539 () Bool)

(assert (=> bm!311278 m!5178539))

(declare-fun m!5178541 () Bool)

(assert (=> bm!311279 m!5178541))

(declare-fun m!5178543 () Bool)

(assert (=> d!1364226 m!5178543))

(declare-fun m!5178545 () Bool)

(assert (=> d!1364226 m!5178545))

(assert (=> bm!311277 m!5177397))

(declare-fun m!5178547 () Bool)

(assert (=> bm!311277 m!5178547))

(declare-fun m!5178549 () Bool)

(assert (=> b!4470838 m!5178549))

(declare-fun m!5178551 () Bool)

(assert (=> b!4470842 m!5178551))

(declare-fun m!5178553 () Bool)

(assert (=> b!4470840 m!5178553))

(declare-fun m!5178555 () Bool)

(assert (=> b!4470840 m!5178555))

(declare-fun m!5178557 () Bool)

(assert (=> b!4470840 m!5178557))

(declare-fun m!5178559 () Bool)

(assert (=> b!4470840 m!5178559))

(assert (=> b!4470840 m!5177397))

(declare-fun m!5178561 () Bool)

(assert (=> b!4470840 m!5178561))

(declare-fun m!5178563 () Bool)

(assert (=> b!4470840 m!5178563))

(assert (=> b!4470840 m!5177397))

(assert (=> b!4470840 m!5178553))

(declare-fun m!5178565 () Bool)

(assert (=> b!4470840 m!5178565))

(declare-fun m!5178567 () Bool)

(assert (=> b!4470840 m!5178567))

(assert (=> b!4470840 m!5178567))

(declare-fun m!5178569 () Bool)

(assert (=> b!4470840 m!5178569))

(declare-fun m!5178571 () Bool)

(assert (=> b!4470840 m!5178571))

(declare-fun m!5178573 () Bool)

(assert (=> b!4470840 m!5178573))

(assert (=> b!4470841 m!5178571))

(assert (=> b!4470172 d!1364226))

(declare-fun bs!795902 () Bool)

(declare-fun d!1364228 () Bool)

(assert (= bs!795902 (and d!1364228 d!1363876)))

(declare-fun lambda!163572 () Int)

(assert (=> bs!795902 (= lambda!163572 lambda!163412)))

(declare-fun bs!795903 () Bool)

(assert (= bs!795903 (and d!1364228 d!1363996)))

(assert (=> bs!795903 (= lambda!163572 lambda!163522)))

(declare-fun bs!795904 () Bool)

(assert (= bs!795904 (and d!1364228 d!1364048)))

(assert (=> bs!795904 (= lambda!163572 lambda!163540)))

(declare-fun bs!795905 () Bool)

(assert (= bs!795905 (and d!1364228 d!1363856)))

(assert (=> bs!795905 (= lambda!163572 lambda!163407)))

(declare-fun bs!795906 () Bool)

(assert (= bs!795906 (and d!1364228 d!1364214)))

(assert (=> bs!795906 (= lambda!163572 lambda!163567)))

(declare-fun bs!795907 () Bool)

(assert (= bs!795907 (and d!1364228 start!439252)))

(assert (=> bs!795907 (= lambda!163572 lambda!163367)))

(declare-fun bs!795908 () Bool)

(assert (= bs!795908 (and d!1364228 d!1363862)))

(assert (=> bs!795908 (= lambda!163572 lambda!163408)))

(declare-fun bs!795909 () Bool)

(assert (= bs!795909 (and d!1364228 d!1364132)))

(assert (=> bs!795909 (= lambda!163572 lambda!163561)))

(declare-fun bs!795910 () Bool)

(assert (= bs!795910 (and d!1364228 d!1363956)))

(assert (=> bs!795910 (= lambda!163572 lambda!163470)))

(declare-fun bs!795911 () Bool)

(assert (= bs!795911 (and d!1364228 d!1363872)))

(assert (=> bs!795911 (not (= lambda!163572 lambda!163411))))

(declare-fun bs!795912 () Bool)

(assert (= bs!795912 (and d!1364228 d!1363878)))

(assert (=> bs!795912 (= lambda!163572 lambda!163413)))

(declare-fun bs!795913 () Bool)

(assert (= bs!795913 (and d!1364228 d!1363844)))

(assert (=> bs!795913 (= lambda!163572 lambda!163402)))

(declare-fun bs!795914 () Bool)

(assert (= bs!795914 (and d!1364228 d!1363848)))

(assert (=> bs!795914 (= lambda!163572 lambda!163403)))

(declare-fun bs!795915 () Bool)

(assert (= bs!795915 (and d!1364228 d!1364094)))

(assert (=> bs!795915 (= lambda!163572 lambda!163550)))

(declare-fun bs!795916 () Bool)

(assert (= bs!795916 (and d!1364228 d!1363756)))

(assert (=> bs!795916 (= lambda!163572 lambda!163373)))

(declare-fun bs!795917 () Bool)

(assert (= bs!795917 (and d!1364228 d!1363832)))

(assert (=> bs!795917 (= lambda!163572 lambda!163399)))

(declare-fun bs!795918 () Bool)

(assert (= bs!795918 (and d!1364228 d!1363850)))

(assert (=> bs!795918 (= lambda!163572 lambda!163404)))

(declare-fun lt!1659318 () ListMap!3325)

(assert (=> d!1364228 (invariantList!931 (toList!4063 lt!1659318))))

(declare-fun e!2784091 () ListMap!3325)

(assert (=> d!1364228 (= lt!1659318 e!2784091)))

(declare-fun c!761215 () Bool)

(assert (=> d!1364228 (= c!761215 ((_ is Cons!50297) (t!357371 (Cons!50297 lt!1658627 Nil!50297))))))

(assert (=> d!1364228 (forall!9998 (t!357371 (Cons!50297 lt!1658627 Nil!50297)) lambda!163572)))

(assert (=> d!1364228 (= (extractMap!1084 (t!357371 (Cons!50297 lt!1658627 Nil!50297))) lt!1659318)))

(declare-fun b!4470881 () Bool)

(assert (=> b!4470881 (= e!2784091 (addToMapMapFromBucket!593 (_2!28568 (h!56064 (t!357371 (Cons!50297 lt!1658627 Nil!50297)))) (extractMap!1084 (t!357371 (t!357371 (Cons!50297 lt!1658627 Nil!50297))))))))

(declare-fun b!4470882 () Bool)

(assert (=> b!4470882 (= e!2784091 (ListMap!3326 Nil!50296))))

(assert (= (and d!1364228 c!761215) b!4470881))

(assert (= (and d!1364228 (not c!761215)) b!4470882))

(declare-fun m!5178575 () Bool)

(assert (=> d!1364228 m!5178575))

(declare-fun m!5178577 () Bool)

(assert (=> d!1364228 m!5178577))

(declare-fun m!5178579 () Bool)

(assert (=> b!4470881 m!5178579))

(assert (=> b!4470881 m!5178579))

(declare-fun m!5178581 () Bool)

(assert (=> b!4470881 m!5178581))

(assert (=> b!4470172 d!1364228))

(declare-fun bs!795919 () Bool)

(declare-fun b!4470888 () Bool)

(assert (= bs!795919 (and b!4470888 b!4470649)))

(declare-fun lambda!163573 () Int)

(assert (=> bs!795919 (= (= (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (t!357370 (toList!4063 lt!1658626))) (= lambda!163573 lambda!163552))))

(declare-fun bs!795920 () Bool)

(assert (= bs!795920 (and b!4470888 b!4470423)))

(assert (=> bs!795920 (= (= (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621))))) (= lambda!163573 lambda!163494))))

(declare-fun bs!795921 () Bool)

(assert (= bs!795921 (and b!4470888 b!4470382)))

(assert (=> bs!795921 (= (= (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (toList!4063 lt!1658626)) (= lambda!163573 lambda!163471))))

(declare-fun bs!795922 () Bool)

(assert (= bs!795922 (and b!4470888 b!4470525)))

(assert (=> bs!795922 (= (= (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163573 lambda!163530))))

(declare-fun bs!795923 () Bool)

(assert (= bs!795923 (and b!4470888 b!4470421)))

(assert (=> bs!795923 (= (= (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) (= lambda!163573 lambda!163493))))

(declare-fun bs!795924 () Bool)

(assert (= bs!795924 (and b!4470888 b!4470424)))

(assert (=> bs!795924 (= (= (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163573 lambda!163497))))

(declare-fun bs!795925 () Bool)

(assert (= bs!795925 (and b!4470888 b!4470651)))

(assert (=> bs!795925 (= (= (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (Cons!50296 (h!56063 (toList!4063 lt!1658626)) (t!357370 (toList!4063 lt!1658626)))) (= lambda!163573 lambda!163553))))

(declare-fun bs!795926 () Bool)

(assert (= bs!795926 (and b!4470888 b!4470652)))

(assert (=> bs!795926 (= (= (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (toList!4063 lt!1658626)) (= lambda!163573 lambda!163554))))

(declare-fun bs!795927 () Bool)

(assert (= bs!795927 (and b!4470888 b!4470270)))

(assert (=> bs!795927 (= (= (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (= lambda!163573 lambda!163424))))

(declare-fun bs!795928 () Bool)

(assert (= bs!795928 (and b!4470888 b!4470554)))

(assert (=> bs!795928 (= (= (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163573 lambda!163543))))

(declare-fun bs!795929 () Bool)

(assert (= bs!795929 (and b!4470888 b!4470563)))

(assert (=> bs!795929 (= (= (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (toList!4063 lt!1658819)) (= lambda!163573 lambda!163545))))

(assert (=> b!4470888 true))

(declare-fun bs!795930 () Bool)

(declare-fun b!4470890 () Bool)

(assert (= bs!795930 (and b!4470890 b!4470888)))

(declare-fun lambda!163574 () Int)

(assert (=> bs!795930 (= (= (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (= lambda!163574 lambda!163573))))

(declare-fun bs!795931 () Bool)

(assert (= bs!795931 (and b!4470890 b!4470649)))

(assert (=> bs!795931 (= (= (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (t!357370 (toList!4063 lt!1658626))) (= lambda!163574 lambda!163552))))

(declare-fun bs!795932 () Bool)

(assert (= bs!795932 (and b!4470890 b!4470423)))

(assert (=> bs!795932 (= (= (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621))))) (= lambda!163574 lambda!163494))))

(declare-fun bs!795933 () Bool)

(assert (= bs!795933 (and b!4470890 b!4470382)))

(assert (=> bs!795933 (= (= (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (toList!4063 lt!1658626)) (= lambda!163574 lambda!163471))))

(declare-fun bs!795934 () Bool)

(assert (= bs!795934 (and b!4470890 b!4470525)))

(assert (=> bs!795934 (= (= (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163574 lambda!163530))))

(declare-fun bs!795935 () Bool)

(assert (= bs!795935 (and b!4470890 b!4470421)))

(assert (=> bs!795935 (= (= (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) (= lambda!163574 lambda!163493))))

(declare-fun bs!795936 () Bool)

(assert (= bs!795936 (and b!4470890 b!4470424)))

(assert (=> bs!795936 (= (= (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163574 lambda!163497))))

(declare-fun bs!795937 () Bool)

(assert (= bs!795937 (and b!4470890 b!4470651)))

(assert (=> bs!795937 (= (= (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (Cons!50296 (h!56063 (toList!4063 lt!1658626)) (t!357370 (toList!4063 lt!1658626)))) (= lambda!163574 lambda!163553))))

(declare-fun bs!795938 () Bool)

(assert (= bs!795938 (and b!4470890 b!4470652)))

(assert (=> bs!795938 (= (= (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (toList!4063 lt!1658626)) (= lambda!163574 lambda!163554))))

(declare-fun bs!795939 () Bool)

(assert (= bs!795939 (and b!4470890 b!4470270)))

(assert (=> bs!795939 (= (= (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (= lambda!163574 lambda!163424))))

(declare-fun bs!795940 () Bool)

(assert (= bs!795940 (and b!4470890 b!4470554)))

(assert (=> bs!795940 (= (= (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163574 lambda!163543))))

(declare-fun bs!795941 () Bool)

(assert (= bs!795941 (and b!4470890 b!4470563)))

(assert (=> bs!795941 (= (= (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (toList!4063 lt!1658819)) (= lambda!163574 lambda!163545))))

(assert (=> b!4470890 true))

(declare-fun bs!795942 () Bool)

(declare-fun b!4470891 () Bool)

(assert (= bs!795942 (and b!4470891 b!4470888)))

(declare-fun lambda!163575 () Int)

(assert (=> bs!795942 (= (= (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (= lambda!163575 lambda!163573))))

(declare-fun bs!795943 () Bool)

(assert (= bs!795943 (and b!4470891 b!4470649)))

(assert (=> bs!795943 (= (= (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) (t!357370 (toList!4063 lt!1658626))) (= lambda!163575 lambda!163552))))

(declare-fun bs!795944 () Bool)

(assert (= bs!795944 (and b!4470891 b!4470423)))

(assert (=> bs!795944 (= (= (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 lt!1658621))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621))))) (= lambda!163575 lambda!163494))))

(declare-fun bs!795945 () Bool)

(assert (= bs!795945 (and b!4470891 b!4470890)))

(assert (=> bs!795945 (= (= (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) (Cons!50296 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))))) (= lambda!163575 lambda!163574))))

(declare-fun bs!795946 () Bool)

(assert (= bs!795946 (and b!4470891 b!4470382)))

(assert (=> bs!795946 (= (= (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) (toList!4063 lt!1658626)) (= lambda!163575 lambda!163471))))

(declare-fun bs!795947 () Bool)

(assert (= bs!795947 (and b!4470891 b!4470525)))

(assert (=> bs!795947 (= (= (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163575 lambda!163530))))

(declare-fun bs!795948 () Bool)

(assert (= bs!795948 (and b!4470891 b!4470421)))

(assert (=> bs!795948 (= (= (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) (t!357370 (toList!4063 (extractMap!1084 lt!1658621)))) (= lambda!163575 lambda!163493))))

(declare-fun bs!795949 () Bool)

(assert (= bs!795949 (and b!4470891 b!4470424)))

(assert (=> bs!795949 (= (= (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) (toList!4063 (extractMap!1084 lt!1658621))) (= lambda!163575 lambda!163497))))

(declare-fun bs!795950 () Bool)

(assert (= bs!795950 (and b!4470891 b!4470651)))

(assert (=> bs!795950 (= (= (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) (Cons!50296 (h!56063 (toList!4063 lt!1658626)) (t!357370 (toList!4063 lt!1658626)))) (= lambda!163575 lambda!163553))))

(declare-fun bs!795951 () Bool)

(assert (= bs!795951 (and b!4470891 b!4470652)))

(assert (=> bs!795951 (= (= (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) (toList!4063 lt!1658626)) (= lambda!163575 lambda!163554))))

(declare-fun bs!795952 () Bool)

(assert (= bs!795952 (and b!4470891 b!4470270)))

(assert (=> bs!795952 (= lambda!163575 lambda!163424)))

(declare-fun bs!795953 () Bool)

(assert (= bs!795953 (and b!4470891 b!4470554)))

(assert (=> bs!795953 (= (= (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= lambda!163575 lambda!163543))))

(declare-fun bs!795954 () Bool)

(assert (= bs!795954 (and b!4470891 b!4470563)))

(assert (=> bs!795954 (= (= (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) (toList!4063 lt!1658819)) (= lambda!163575 lambda!163545))))

(assert (=> b!4470891 true))

(declare-fun bs!795955 () Bool)

(declare-fun b!4470889 () Bool)

(assert (= bs!795955 (and b!4470889 b!4470526)))

(declare-fun lambda!163576 () Int)

(assert (=> bs!795955 (= lambda!163576 lambda!163531)))

(declare-fun bs!795956 () Bool)

(assert (= bs!795956 (and b!4470889 b!4470555)))

(assert (=> bs!795956 (= lambda!163576 lambda!163544)))

(declare-fun bs!795957 () Bool)

(assert (= bs!795957 (and b!4470889 b!4470271)))

(assert (=> bs!795957 (= lambda!163576 lambda!163425)))

(declare-fun bs!795958 () Bool)

(assert (= bs!795958 (and b!4470889 b!4470650)))

(assert (=> bs!795958 (= lambda!163576 lambda!163555)))

(declare-fun bs!795959 () Bool)

(assert (= bs!795959 (and b!4470889 b!4470422)))

(assert (=> bs!795959 (= lambda!163576 lambda!163500)))

(declare-fun bs!795960 () Bool)

(assert (= bs!795960 (and b!4470889 b!4470383)))

(assert (=> bs!795960 (= lambda!163576 lambda!163472)))

(declare-fun bs!795961 () Bool)

(assert (= bs!795961 (and b!4470889 b!4470564)))

(assert (=> bs!795961 (= lambda!163576 lambda!163546)))

(declare-fun b!4470883 () Bool)

(assert (=> b!4470883 false))

(declare-fun e!2784092 () Unit!87799)

(declare-fun Unit!87967 () Unit!87799)

(assert (=> b!4470883 (= e!2784092 Unit!87967)))

(declare-fun d!1364230 () Bool)

(declare-fun e!2784093 () Bool)

(assert (=> d!1364230 e!2784093))

(declare-fun res!1854979 () Bool)

(assert (=> d!1364230 (=> (not res!1854979) (not e!2784093))))

(declare-fun lt!1659321 () List!50423)

(assert (=> d!1364230 (= res!1854979 (noDuplicate!700 lt!1659321))))

(declare-fun e!2784094 () List!50423)

(assert (=> d!1364230 (= lt!1659321 e!2784094)))

(declare-fun c!761216 () Bool)

(assert (=> d!1364230 (= c!761216 ((_ is Cons!50296) (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))))))

(assert (=> d!1364230 (invariantList!931 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))))

(assert (=> d!1364230 (= (getKeysList!379 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) lt!1659321)))

(declare-fun b!4470884 () Bool)

(declare-fun e!2784095 () Unit!87799)

(declare-fun Unit!87968 () Unit!87799)

(assert (=> b!4470884 (= e!2784095 Unit!87968)))

(declare-fun b!4470885 () Bool)

(assert (=> b!4470885 (= e!2784094 Nil!50299)))

(declare-fun b!4470886 () Bool)

(declare-fun res!1854978 () Bool)

(assert (=> b!4470886 (=> (not res!1854978) (not e!2784093))))

(assert (=> b!4470886 (= res!1854978 (= (length!256 lt!1659321) (length!257 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))))))

(declare-fun b!4470887 () Bool)

(declare-fun Unit!87969 () Unit!87799)

(assert (=> b!4470887 (= e!2784092 Unit!87969)))

(assert (=> b!4470888 false))

(declare-fun lt!1659325 () Unit!87799)

(assert (=> b!4470888 (= lt!1659325 (forallContained!2269 (getKeysList!379 (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) lambda!163573 (_1!28567 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))))))))

(declare-fun Unit!87970 () Unit!87799)

(assert (=> b!4470888 (= e!2784095 Unit!87970)))

(assert (=> b!4470889 (= e!2784093 (= (content!8115 lt!1659321) (content!8115 (map!11025 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))) lambda!163576))))))

(assert (=> b!4470890 (= e!2784094 (Cons!50299 (_1!28567 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (getKeysList!379 (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))))))))

(declare-fun c!761217 () Bool)

(assert (=> b!4470890 (= c!761217 (containsKey!1484 (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) (_1!28567 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))))))))

(declare-fun lt!1659324 () Unit!87799)

(assert (=> b!4470890 (= lt!1659324 e!2784092)))

(declare-fun c!761218 () Bool)

(assert (=> b!4470890 (= c!761218 (contains!12855 (getKeysList!379 (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))) (_1!28567 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))))))))

(declare-fun lt!1659322 () Unit!87799)

(assert (=> b!4470890 (= lt!1659322 e!2784095)))

(declare-fun lt!1659319 () List!50423)

(assert (=> b!4470890 (= lt!1659319 (getKeysList!379 (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))))))

(declare-fun lt!1659323 () Unit!87799)

(assert (=> b!4470890 (= lt!1659323 (lemmaForallContainsAddHeadPreserves!122 (t!357370 (toList!4063 (extractMap!1084 (toList!4064 lm!1477)))) lt!1659319 (h!56063 (toList!4063 (extractMap!1084 (toList!4064 lm!1477))))))))

(assert (=> b!4470890 (forall!10002 lt!1659319 lambda!163574)))

(declare-fun lt!1659320 () Unit!87799)

(assert (=> b!4470890 (= lt!1659320 lt!1659323)))

(declare-fun res!1854977 () Bool)

(assert (=> b!4470891 (=> (not res!1854977) (not e!2784093))))

(assert (=> b!4470891 (= res!1854977 (forall!10002 lt!1659321 lambda!163575))))

(assert (= (and d!1364230 c!761216) b!4470890))

(assert (= (and d!1364230 (not c!761216)) b!4470885))

(assert (= (and b!4470890 c!761217) b!4470883))

(assert (= (and b!4470890 (not c!761217)) b!4470887))

(assert (= (and b!4470890 c!761218) b!4470888))

(assert (= (and b!4470890 (not c!761218)) b!4470884))

(assert (= (and d!1364230 res!1854979) b!4470886))

(assert (= (and b!4470886 res!1854978) b!4470891))

(assert (= (and b!4470891 res!1854977) b!4470889))

(declare-fun m!5178593 () Bool)

(assert (=> b!4470890 m!5178593))

(declare-fun m!5178595 () Bool)

(assert (=> b!4470890 m!5178595))

(declare-fun m!5178601 () Bool)

(assert (=> b!4470890 m!5178601))

(declare-fun m!5178605 () Bool)

(assert (=> b!4470890 m!5178605))

(declare-fun m!5178609 () Bool)

(assert (=> b!4470890 m!5178609))

(assert (=> b!4470890 m!5178593))

(assert (=> b!4470888 m!5178593))

(assert (=> b!4470888 m!5178593))

(declare-fun m!5178613 () Bool)

(assert (=> b!4470888 m!5178613))

(declare-fun m!5178615 () Bool)

(assert (=> b!4470886 m!5178615))

(assert (=> b!4470886 m!5177507))

(declare-fun m!5178619 () Bool)

(assert (=> b!4470889 m!5178619))

(declare-fun m!5178621 () Bool)

(assert (=> b!4470889 m!5178621))

(assert (=> b!4470889 m!5178621))

(declare-fun m!5178623 () Bool)

(assert (=> b!4470889 m!5178623))

(declare-fun m!5178625 () Bool)

(assert (=> d!1364230 m!5178625))

(assert (=> d!1364230 m!5177677))

(declare-fun m!5178627 () Bool)

(assert (=> b!4470891 m!5178627))

(assert (=> b!4470152 d!1364230))

(assert (=> b!4470175 d!1364080))

(assert (=> b!4470175 d!1364036))

(declare-fun d!1364232 () Bool)

(declare-fun c!761231 () Bool)

(assert (=> d!1364232 (= c!761231 ((_ is Nil!50297) (toList!4064 lm!1477)))))

(declare-fun e!2784109 () (InoxSet tuple2!50548))

(assert (=> d!1364232 (= (content!8114 (toList!4064 lm!1477)) e!2784109)))

(declare-fun b!4470919 () Bool)

(assert (=> b!4470919 (= e!2784109 ((as const (Array tuple2!50548 Bool)) false))))

(declare-fun b!4470920 () Bool)

(assert (=> b!4470920 (= e!2784109 ((_ map or) (store ((as const (Array tuple2!50548 Bool)) false) (h!56064 (toList!4064 lm!1477)) true) (content!8114 (t!357371 (toList!4064 lm!1477)))))))

(assert (= (and d!1364232 c!761231) b!4470919))

(assert (= (and d!1364232 (not c!761231)) b!4470920))

(declare-fun m!5178669 () Bool)

(assert (=> b!4470920 m!5178669))

(assert (=> b!4470920 m!5178195))

(assert (=> d!1363752 d!1364232))

(declare-fun d!1364240 () Bool)

(assert (=> d!1364240 (= (get!16399 (getValueByKey!920 (toList!4064 lm!1477) hash!344)) (v!44259 (getValueByKey!920 (toList!4064 lm!1477) hash!344)))))

(assert (=> d!1363772 d!1364240))

(assert (=> d!1363772 d!1364028))

(assert (=> b!4470150 d!1363912))

(declare-fun b!4470925 () Bool)

(declare-fun e!2784115 () Bool)

(assert (=> b!4470925 (= e!2784115 (not (contains!12855 (keys!17370 lt!1658819) key!3287)))))

(declare-fun b!4470926 () Bool)

(declare-fun e!2784114 () Bool)

(assert (=> b!4470926 (= e!2784114 (contains!12855 (keys!17370 lt!1658819) key!3287))))

(declare-fun b!4470928 () Bool)

(declare-fun e!2784118 () Unit!87799)

(declare-fun Unit!87971 () Unit!87799)

(assert (=> b!4470928 (= e!2784118 Unit!87971)))

(declare-fun b!4470929 () Bool)

(declare-fun e!2784119 () List!50423)

(assert (=> b!4470929 (= e!2784119 (getKeysList!379 (toList!4063 lt!1658819)))))

(declare-fun b!4470930 () Bool)

(declare-fun e!2784117 () Unit!87799)

(declare-fun lt!1659346 () Unit!87799)

(assert (=> b!4470930 (= e!2784117 lt!1659346)))

(declare-fun lt!1659349 () Unit!87799)

(assert (=> b!4470930 (= lt!1659349 (lemmaContainsKeyImpliesGetValueByKeyDefined!825 (toList!4063 lt!1658819) key!3287))))

(assert (=> b!4470930 (isDefined!8222 (getValueByKey!921 (toList!4063 lt!1658819) key!3287))))

(declare-fun lt!1659347 () Unit!87799)

(assert (=> b!4470930 (= lt!1659347 lt!1659349)))

(assert (=> b!4470930 (= lt!1659346 (lemmaInListThenGetKeysListContains!375 (toList!4063 lt!1658819) key!3287))))

(declare-fun call!311303 () Bool)

(assert (=> b!4470930 call!311303))

(declare-fun b!4470931 () Bool)

(assert (=> b!4470931 (= e!2784117 e!2784118)))

(declare-fun c!761234 () Bool)

(assert (=> b!4470931 (= c!761234 call!311303)))

(declare-fun b!4470932 () Bool)

(assert (=> b!4470932 false))

(declare-fun lt!1659353 () Unit!87799)

(declare-fun lt!1659348 () Unit!87799)

(assert (=> b!4470932 (= lt!1659353 lt!1659348)))

(assert (=> b!4470932 (containsKey!1484 (toList!4063 lt!1658819) key!3287)))

(assert (=> b!4470932 (= lt!1659348 (lemmaInGetKeysListThenContainsKey!378 (toList!4063 lt!1658819) key!3287))))

(declare-fun Unit!87974 () Unit!87799)

(assert (=> b!4470932 (= e!2784118 Unit!87974)))

(declare-fun b!4470933 () Bool)

(declare-fun e!2784116 () Bool)

(assert (=> b!4470933 (= e!2784116 e!2784114)))

(declare-fun res!1854987 () Bool)

(assert (=> b!4470933 (=> (not res!1854987) (not e!2784114))))

(assert (=> b!4470933 (= res!1854987 (isDefined!8222 (getValueByKey!921 (toList!4063 lt!1658819) key!3287)))))

(declare-fun bm!311298 () Bool)

(assert (=> bm!311298 (= call!311303 (contains!12855 e!2784119 key!3287))))

(declare-fun c!761232 () Bool)

(declare-fun c!761233 () Bool)

(assert (=> bm!311298 (= c!761232 c!761233)))

(declare-fun b!4470927 () Bool)

(assert (=> b!4470927 (= e!2784119 (keys!17370 lt!1658819))))

(declare-fun d!1364244 () Bool)

(assert (=> d!1364244 e!2784116))

(declare-fun res!1854988 () Bool)

(assert (=> d!1364244 (=> res!1854988 e!2784116)))

(assert (=> d!1364244 (= res!1854988 e!2784115)))

(declare-fun res!1854989 () Bool)

(assert (=> d!1364244 (=> (not res!1854989) (not e!2784115))))

(declare-fun lt!1659352 () Bool)

(assert (=> d!1364244 (= res!1854989 (not lt!1659352))))

(declare-fun lt!1659351 () Bool)

(assert (=> d!1364244 (= lt!1659352 lt!1659351)))

(declare-fun lt!1659350 () Unit!87799)

(assert (=> d!1364244 (= lt!1659350 e!2784117)))

(assert (=> d!1364244 (= c!761233 lt!1659351)))

(assert (=> d!1364244 (= lt!1659351 (containsKey!1484 (toList!4063 lt!1658819) key!3287))))

(assert (=> d!1364244 (= (contains!12853 lt!1658819 key!3287) lt!1659352)))

(assert (= (and d!1364244 c!761233) b!4470930))

(assert (= (and d!1364244 (not c!761233)) b!4470931))

(assert (= (and b!4470931 c!761234) b!4470932))

(assert (= (and b!4470931 (not c!761234)) b!4470928))

(assert (= (or b!4470930 b!4470931) bm!311298))

(assert (= (and bm!311298 c!761232) b!4470929))

(assert (= (and bm!311298 (not c!761232)) b!4470927))

(assert (= (and d!1364244 res!1854989) b!4470925))

(assert (= (and d!1364244 (not res!1854988)) b!4470933))

(assert (= (and b!4470933 res!1854987) b!4470926))

(assert (=> b!4470925 m!5177353))

(assert (=> b!4470925 m!5177353))

(declare-fun m!5178677 () Bool)

(assert (=> b!4470925 m!5178677))

(declare-fun m!5178679 () Bool)

(assert (=> b!4470930 m!5178679))

(declare-fun m!5178681 () Bool)

(assert (=> b!4470930 m!5178681))

(assert (=> b!4470930 m!5178681))

(declare-fun m!5178683 () Bool)

(assert (=> b!4470930 m!5178683))

(declare-fun m!5178685 () Bool)

(assert (=> b!4470930 m!5178685))

(declare-fun m!5178687 () Bool)

(assert (=> d!1364244 m!5178687))

(declare-fun m!5178689 () Bool)

(assert (=> bm!311298 m!5178689))

(assert (=> b!4470926 m!5177353))

(assert (=> b!4470926 m!5177353))

(assert (=> b!4470926 m!5178677))

(assert (=> b!4470933 m!5178681))

(assert (=> b!4470933 m!5178681))

(assert (=> b!4470933 m!5178683))

(assert (=> b!4470929 m!5178067))

(assert (=> b!4470932 m!5178687))

(declare-fun m!5178691 () Bool)

(assert (=> b!4470932 m!5178691))

(assert (=> b!4470927 m!5177353))

(assert (=> d!1363852 d!1364244))

(declare-fun d!1364246 () Bool)

(declare-fun e!2784184 () Bool)

(assert (=> d!1364246 e!2784184))

(declare-fun res!1855025 () Bool)

(assert (=> d!1364246 (=> (not res!1855025) (not e!2784184))))

(declare-fun lt!1659485 () List!50420)

(assert (=> d!1364246 (= res!1855025 (invariantList!931 lt!1659485))))

(declare-fun e!2784182 () List!50420)

(assert (=> d!1364246 (= lt!1659485 e!2784182)))

(declare-fun c!761268 () Bool)

(assert (=> d!1364246 (= c!761268 (and ((_ is Cons!50296) (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (= (_1!28567 (h!56063 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))) key!3287)))))

(assert (=> d!1364246 (invariantList!931 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))

(assert (=> d!1364246 (= (removePresrvNoDuplicatedKeys!67 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) key!3287) lt!1659485)))

(declare-fun b!4471028 () Bool)

(declare-fun e!2784177 () Unit!87799)

(declare-fun Unit!87984 () Unit!87799)

(assert (=> b!4471028 (= e!2784177 Unit!87984)))

(declare-fun b!4471029 () Bool)

(declare-fun e!2784179 () List!50420)

(assert (=> b!4471029 (= e!2784179 (removePresrvNoDuplicatedKeys!67 (t!357370 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) key!3287))))

(declare-fun b!4471030 () Bool)

(declare-fun e!2784181 () Unit!87799)

(declare-fun Unit!87985 () Unit!87799)

(assert (=> b!4471030 (= e!2784181 Unit!87985)))

(declare-fun lt!1659482 () Unit!87799)

(assert (=> b!4471030 (= lt!1659482 (lemmaInGetKeysListThenContainsKey!378 (t!357370 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (_1!28567 (h!56063 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))))

(declare-fun call!311332 () Bool)

(assert (=> b!4471030 call!311332))

(declare-fun lt!1659478 () Unit!87799)

(assert (=> b!4471030 (= lt!1659478 lt!1659482)))

(assert (=> b!4471030 false))

(declare-fun b!4471031 () Bool)

(declare-fun res!1855026 () Bool)

(assert (=> b!4471031 (=> (not res!1855026) (not e!2784184))))

(assert (=> b!4471031 (= res!1855026 (not (containsKey!1484 lt!1659485 key!3287)))))

(declare-fun b!4471032 () Bool)

(declare-fun e!2784185 () Unit!87799)

(declare-fun Unit!87986 () Unit!87799)

(assert (=> b!4471032 (= e!2784185 Unit!87986)))

(declare-fun lt!1659471 () V!11956)

(declare-fun get!16401 (Option!10935) V!11956)

(assert (=> b!4471032 (= lt!1659471 (get!16401 (getValueByKey!921 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) key!3287)))))

(declare-fun lt!1659470 () K!11710)

(assert (=> b!4471032 (= lt!1659470 key!3287)))

(declare-fun lt!1659484 () K!11710)

(assert (=> b!4471032 (= lt!1659484 key!3287)))

(declare-fun lt!1659468 () Unit!87799)

(declare-fun lemmaContainsTupleThenContainsKey!25 (List!50420 K!11710 V!11956) Unit!87799)

(assert (=> b!4471032 (= lt!1659468 (lemmaContainsTupleThenContainsKey!25 (t!357370 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) lt!1659470 (get!16401 (getValueByKey!921 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) key!3287))))))

(declare-fun call!311330 () Bool)

(assert (=> b!4471032 call!311330))

(declare-fun lt!1659469 () Unit!87799)

(assert (=> b!4471032 (= lt!1659469 lt!1659468)))

(assert (=> b!4471032 false))

(declare-fun b!4471033 () Bool)

(declare-fun lt!1659475 () Unit!87799)

(assert (=> b!4471033 (= lt!1659475 e!2784177)))

(declare-fun c!761272 () Bool)

(assert (=> b!4471033 (= c!761272 call!311330)))

(declare-fun lt!1659472 () Unit!87799)

(assert (=> b!4471033 (= lt!1659472 e!2784181)))

(declare-fun c!761266 () Bool)

(assert (=> b!4471033 (= c!761266 (contains!12855 (getKeysList!379 (t!357370 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))) (_1!28567 (h!56063 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))))

(declare-fun lt!1659473 () List!50420)

(declare-fun $colon$colon!856 (List!50420 tuple2!50546) List!50420)

(assert (=> b!4471033 (= lt!1659473 ($colon$colon!856 (removePresrvNoDuplicatedKeys!67 (t!357370 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) key!3287) (h!56063 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))))

(declare-fun e!2784183 () List!50420)

(assert (=> b!4471033 (= e!2784183 lt!1659473)))

(declare-fun b!4471034 () Bool)

(declare-fun Unit!87987 () Unit!87799)

(assert (=> b!4471034 (= e!2784185 Unit!87987)))

(declare-fun b!4471035 () Bool)

(assert (=> b!4471035 (= e!2784179 (t!357370 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))

(declare-fun call!311331 () (InoxSet tuple2!50546))

(declare-fun b!4471036 () Bool)

(declare-fun call!311328 () (InoxSet tuple2!50546))

(assert (=> b!4471036 (= call!311328 ((_ map and) call!311331 ((_ map not) (store ((as const (Array tuple2!50546 Bool)) false) (tuple2!50547 key!3287 (get!16401 (getValueByKey!921 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) key!3287))) true))))))

(declare-fun lt!1659483 () Unit!87799)

(assert (=> b!4471036 (= lt!1659483 e!2784185)))

(declare-fun c!761269 () Bool)

(declare-fun contains!12857 (List!50420 tuple2!50546) Bool)

(assert (=> b!4471036 (= c!761269 (contains!12857 (t!357370 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (tuple2!50547 key!3287 (get!16401 (getValueByKey!921 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) key!3287)))))))

(declare-fun e!2784180 () Unit!87799)

(declare-fun Unit!87988 () Unit!87799)

(assert (=> b!4471036 (= e!2784180 Unit!87988)))

(declare-fun b!4471037 () Bool)

(declare-fun e!2784178 () Bool)

(declare-fun call!311333 () (InoxSet tuple2!50546))

(declare-fun call!311329 () (InoxSet tuple2!50546))

(assert (=> b!4471037 (= e!2784178 (= call!311333 call!311329))))

(declare-fun b!4471038 () Bool)

(assert (=> b!4471038 (= e!2784183 Nil!50296)))

(declare-fun bm!311323 () Bool)

(assert (=> bm!311323 (= call!311329 (content!8116 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))

(declare-fun bm!311324 () Bool)

(assert (=> bm!311324 (= call!311332 (containsKey!1484 (ite c!761268 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (t!357370 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))) (ite c!761268 key!3287 (_1!28567 (h!56063 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))))))

(declare-fun b!4471039 () Bool)

(assert (=> b!4471039 (= e!2784178 (= call!311333 ((_ map and) call!311329 ((_ map not) (store ((as const (Array tuple2!50546 Bool)) false) (tuple2!50547 key!3287 (get!16401 (getValueByKey!921 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) key!3287))) true)))))))

(assert (=> b!4471039 (containsKey!1484 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) key!3287)))

(declare-fun lt!1659480 () Unit!87799)

(assert (=> b!4471039 (= lt!1659480 (lemmaContainsKeyImpliesGetValueByKeyDefined!825 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) key!3287))))

(assert (=> b!4471039 (isDefined!8222 (getValueByKey!921 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) key!3287))))

(declare-fun lt!1659474 () Unit!87799)

(assert (=> b!4471039 (= lt!1659474 lt!1659480)))

(declare-fun c!761271 () Bool)

(declare-fun bm!311325 () Bool)

(assert (=> bm!311325 (= call!311328 (content!8116 (ite c!761271 (t!357370 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))))

(declare-fun bm!311326 () Bool)

(assert (=> bm!311326 (= call!311331 (content!8116 (ite c!761271 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (t!357370 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))))

(declare-fun b!4471040 () Bool)

(assert (=> b!4471040 (= e!2784182 (t!357370 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))

(assert (=> b!4471040 (= c!761271 call!311332)))

(declare-fun lt!1659476 () Unit!87799)

(assert (=> b!4471040 (= lt!1659476 e!2784180)))

(declare-fun bm!311327 () Bool)

(assert (=> bm!311327 (= call!311333 (content!8116 lt!1659485))))

(declare-fun bm!311328 () Bool)

(assert (=> bm!311328 (= call!311330 (containsKey!1484 e!2784179 (ite c!761268 lt!1659470 (_1!28567 (h!56063 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))))))

(declare-fun c!761270 () Bool)

(assert (=> bm!311328 (= c!761270 c!761268)))

(declare-fun b!4471041 () Bool)

(declare-fun res!1855024 () Bool)

(assert (=> b!4471041 (=> (not res!1855024) (not e!2784184))))

(assert (=> b!4471041 (= res!1855024 (= (content!8115 (getKeysList!379 lt!1659485)) ((_ map and) (content!8115 (getKeysList!379 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))) ((_ map not) (store ((as const (Array K!11710 Bool)) false) key!3287 true)))))))

(declare-fun b!4471042 () Bool)

(declare-fun Unit!87989 () Unit!87799)

(assert (=> b!4471042 (= e!2784177 Unit!87989)))

(declare-fun lt!1659481 () List!50420)

(assert (=> b!4471042 (= lt!1659481 (removePresrvNoDuplicatedKeys!67 (t!357370 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) key!3287))))

(declare-fun lt!1659477 () Unit!87799)

(assert (=> b!4471042 (= lt!1659477 (lemmaInListThenGetKeysListContains!375 lt!1659481 (_1!28567 (h!56063 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))))

(assert (=> b!4471042 (contains!12855 (getKeysList!379 lt!1659481) (_1!28567 (h!56063 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))))))

(declare-fun lt!1659479 () Unit!87799)

(assert (=> b!4471042 (= lt!1659479 lt!1659477)))

(assert (=> b!4471042 false))

(declare-fun b!4471043 () Bool)

(assert (=> b!4471043 (= e!2784182 e!2784183)))

(declare-fun c!761267 () Bool)

(assert (=> b!4471043 (= c!761267 (and ((_ is Cons!50296) (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))) (not (= (_1!28567 (h!56063 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))))) key!3287))))))

(declare-fun b!4471044 () Bool)

(declare-fun Unit!87990 () Unit!87799)

(assert (=> b!4471044 (= e!2784181 Unit!87990)))

(declare-fun b!4471045 () Bool)

(assert (=> b!4471045 (= call!311331 call!311328)))

(declare-fun Unit!87991 () Unit!87799)

(assert (=> b!4471045 (= e!2784180 Unit!87991)))

(declare-fun b!4471046 () Bool)

(assert (=> b!4471046 (= e!2784184 e!2784178)))

(declare-fun c!761265 () Bool)

(assert (=> b!4471046 (= c!761265 (containsKey!1484 (toList!4063 (extractMap!1084 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) key!3287))))

(assert (= (and d!1364246 c!761268) b!4471040))

(assert (= (and d!1364246 (not c!761268)) b!4471043))

(assert (= (and b!4471040 c!761271) b!4471036))

(assert (= (and b!4471040 (not c!761271)) b!4471045))

(assert (= (and b!4471036 c!761269) b!4471032))

(assert (= (and b!4471036 (not c!761269)) b!4471034))

(assert (= (or b!4471036 b!4471045) bm!311326))

(assert (= (or b!4471036 b!4471045) bm!311325))

(assert (= (and b!4471043 c!761267) b!4471033))

(assert (= (and b!4471043 (not c!761267)) b!4471038))

(assert (= (and b!4471033 c!761266) b!4471030))

(assert (= (and b!4471033 (not c!761266)) b!4471044))

(assert (= (and b!4471033 c!761272) b!4471042))

(assert (= (and b!4471033 (not c!761272)) b!4471028))

(assert (= (or b!4471040 b!4471030) bm!311324))

(assert (= (or b!4471032 b!4471033) bm!311328))

(assert (= (and bm!311328 c!761270) b!4471035))

(assert (= (and bm!311328 (not c!761270)) b!4471029))

(assert (= (and d!1364246 res!1855025) b!4471031))

(assert (= (and b!4471031 res!1855026) b!4471041))

(assert (= (and b!4471041 res!1855024) b!4471046))

(assert (= (and b!4471046 c!761265) b!4471039))

(assert (= (and b!4471046 (not c!761265)) b!4471037))

(assert (= (or b!4471039 b!4471037) bm!311327))

(assert (= (or b!4471039 b!4471037) bm!311323))

(declare-fun m!5178891 () Bool)

(assert (=> d!1364246 m!5178891))

(declare-fun m!5178893 () Bool)

(assert (=> d!1364246 m!5178893))

(declare-fun m!5178895 () Bool)

(assert (=> bm!311326 m!5178895))

(declare-fun m!5178897 () Bool)

(assert (=> bm!311325 m!5178897))

(declare-fun m!5178899 () Bool)

(assert (=> b!4471033 m!5178899))

(assert (=> b!4471033 m!5178899))

(declare-fun m!5178901 () Bool)

(assert (=> b!4471033 m!5178901))

(declare-fun m!5178903 () Bool)

(assert (=> b!4471033 m!5178903))

(assert (=> b!4471033 m!5178903))

(declare-fun m!5178905 () Bool)

(assert (=> b!4471033 m!5178905))

(declare-fun m!5178907 () Bool)

(assert (=> bm!311324 m!5178907))

(declare-fun m!5178911 () Bool)

(assert (=> bm!311328 m!5178911))

(declare-fun m!5178913 () Bool)

(assert (=> bm!311327 m!5178913))

(declare-fun m!5178917 () Bool)

(assert (=> bm!311323 m!5178917))

(declare-fun m!5178925 () Bool)

(assert (=> b!4471030 m!5178925))

(assert (=> b!4471029 m!5178903))

(declare-fun m!5178929 () Bool)

(assert (=> b!4471032 m!5178929))

(assert (=> b!4471032 m!5178929))

(declare-fun m!5178933 () Bool)

(assert (=> b!4471032 m!5178933))

(assert (=> b!4471032 m!5178933))

(declare-fun m!5178935 () Bool)

(assert (=> b!4471032 m!5178935))

(assert (=> b!4471042 m!5178903))

(declare-fun m!5178937 () Bool)

(assert (=> b!4471042 m!5178937))

(declare-fun m!5178939 () Bool)

(assert (=> b!4471042 m!5178939))

(assert (=> b!4471042 m!5178939))

(declare-fun m!5178945 () Bool)

(assert (=> b!4471042 m!5178945))

(declare-fun m!5178947 () Bool)

(assert (=> b!4471031 m!5178947))

(assert (=> b!4471036 m!5178929))

(assert (=> b!4471036 m!5178929))

(assert (=> b!4471036 m!5178933))

(declare-fun m!5178949 () Bool)

(assert (=> b!4471036 m!5178949))

(declare-fun m!5178951 () Bool)

(assert (=> b!4471036 m!5178951))

(declare-fun m!5178953 () Bool)

(assert (=> b!4471046 m!5178953))

(assert (=> b!4471039 m!5178953))

(declare-fun m!5178955 () Bool)

(assert (=> b!4471039 m!5178955))

(assert (=> b!4471039 m!5178929))

(assert (=> b!4471039 m!5178933))

(assert (=> b!4471039 m!5178929))

(declare-fun m!5178957 () Bool)

(assert (=> b!4471039 m!5178957))

(assert (=> b!4471039 m!5178929))

(assert (=> b!4471039 m!5178949))

(assert (=> b!4471041 m!5178041))

(declare-fun m!5178959 () Bool)

(assert (=> b!4471041 m!5178959))

(declare-fun m!5178961 () Bool)

(assert (=> b!4471041 m!5178961))

(assert (=> b!4471041 m!5178041))

(declare-fun m!5178963 () Bool)

(assert (=> b!4471041 m!5178963))

(assert (=> b!4471041 m!5177351))

(assert (=> b!4471041 m!5178959))

(assert (=> d!1363852 d!1364246))

(declare-fun d!1364306 () Bool)

(declare-fun lt!1659488 () Bool)

(assert (=> d!1364306 (= lt!1659488 (select (content!8115 e!2783654) key!3287))))

(declare-fun e!2784192 () Bool)

(assert (=> d!1364306 (= lt!1659488 e!2784192)))

(declare-fun res!1855034 () Bool)

(assert (=> d!1364306 (=> (not res!1855034) (not e!2784192))))

(assert (=> d!1364306 (= res!1855034 ((_ is Cons!50299) e!2783654))))

(assert (=> d!1364306 (= (contains!12855 e!2783654 key!3287) lt!1659488)))

(declare-fun b!4471061 () Bool)

(declare-fun e!2784193 () Bool)

(assert (=> b!4471061 (= e!2784192 e!2784193)))

(declare-fun res!1855033 () Bool)

(assert (=> b!4471061 (=> res!1855033 e!2784193)))

(assert (=> b!4471061 (= res!1855033 (= (h!56068 e!2783654) key!3287))))

(declare-fun b!4471062 () Bool)

(assert (=> b!4471062 (= e!2784193 (contains!12855 (t!357373 e!2783654) key!3287))))

(assert (= (and d!1364306 res!1855034) b!4471061))

(assert (= (and b!4471061 (not res!1855033)) b!4471062))

(declare-fun m!5178965 () Bool)

(assert (=> d!1364306 m!5178965))

(declare-fun m!5178967 () Bool)

(assert (=> d!1364306 m!5178967))

(declare-fun m!5178969 () Bool)

(assert (=> b!4471062 m!5178969))

(assert (=> bm!311219 d!1364306))

(declare-fun d!1364308 () Bool)

(assert (=> d!1364308 (= (tail!7509 (toList!4064 lm!1477)) (t!357371 (toList!4064 lm!1477)))))

(assert (=> d!1363750 d!1364308))

(declare-fun d!1364310 () Bool)

(assert (=> d!1364310 (= (invariantList!931 (toList!4063 lt!1658814)) (noDuplicatedKeys!214 (toList!4063 lt!1658814)))))

(declare-fun bs!796133 () Bool)

(assert (= bs!796133 d!1364310))

(declare-fun m!5178971 () Bool)

(assert (=> bs!796133 m!5178971))

(assert (=> d!1363844 d!1364310))

(declare-fun d!1364312 () Bool)

(declare-fun res!1855035 () Bool)

(declare-fun e!2784194 () Bool)

(assert (=> d!1364312 (=> res!1855035 e!2784194)))

(assert (=> d!1364312 (= res!1855035 ((_ is Nil!50297) (toList!4064 lm!1477)))))

(assert (=> d!1364312 (= (forall!9998 (toList!4064 lm!1477) lambda!163402) e!2784194)))

(declare-fun b!4471063 () Bool)

(declare-fun e!2784195 () Bool)

(assert (=> b!4471063 (= e!2784194 e!2784195)))

(declare-fun res!1855036 () Bool)

(assert (=> b!4471063 (=> (not res!1855036) (not e!2784195))))

(assert (=> b!4471063 (= res!1855036 (dynLambda!21018 lambda!163402 (h!56064 (toList!4064 lm!1477))))))

(declare-fun b!4471064 () Bool)

(assert (=> b!4471064 (= e!2784195 (forall!9998 (t!357371 (toList!4064 lm!1477)) lambda!163402))))

(assert (= (and d!1364312 (not res!1855035)) b!4471063))

(assert (= (and b!4471063 res!1855036) b!4471064))

(declare-fun b_lambda!148509 () Bool)

(assert (=> (not b_lambda!148509) (not b!4471063)))

(declare-fun m!5178973 () Bool)

(assert (=> b!4471063 m!5178973))

(declare-fun m!5178975 () Bool)

(assert (=> b!4471064 m!5178975))

(assert (=> d!1363844 d!1364312))

(declare-fun d!1364314 () Bool)

(assert (=> d!1364314 (= (isEmpty!28493 (toList!4064 lm!1477)) ((_ is Nil!50297) (toList!4064 lm!1477)))))

(assert (=> d!1363874 d!1364314))

(assert (=> b!4470181 d!1364122))

(declare-fun d!1364318 () Bool)

(assert (=> d!1364318 (containsKey!1484 (toList!4063 (extractMap!1084 lt!1658621)) key!3287)))

(declare-fun lt!1659490 () Unit!87799)

(assert (=> d!1364318 (= lt!1659490 (choose!28604 (toList!4063 (extractMap!1084 lt!1658621)) key!3287))))

(assert (=> d!1364318 (invariantList!931 (toList!4063 (extractMap!1084 lt!1658621)))))

(assert (=> d!1364318 (= (lemmaInGetKeysListThenContainsKey!378 (toList!4063 (extractMap!1084 lt!1658621)) key!3287) lt!1659490)))

(declare-fun bs!796139 () Bool)

(assert (= bs!796139 d!1364318))

(assert (=> bs!796139 m!5177413))

(declare-fun m!5178997 () Bool)

(assert (=> bs!796139 m!5178997))

(assert (=> bs!796139 m!5177713))

(assert (=> b!4470181 d!1364318))

(assert (=> b!4470156 d!1364004))

(assert (=> b!4470156 d!1364008))

(declare-fun d!1364322 () Bool)

(assert (=> d!1364322 (dynLambda!21018 lambda!163367 lt!1658630)))

(assert (=> d!1364322 true))

(declare-fun _$7!1687 () Unit!87799)

(assert (=> d!1364322 (= (choose!28599 (toList!4064 lm!1477) lambda!163367 lt!1658630) _$7!1687)))

(declare-fun b_lambda!148511 () Bool)

(assert (=> (not b_lambda!148511) (not d!1364322)))

(declare-fun bs!796143 () Bool)

(assert (= bs!796143 d!1364322))

(assert (=> bs!796143 m!5177057))

(assert (=> d!1363760 d!1364322))

(assert (=> d!1363760 d!1363868))

(declare-fun d!1364326 () Bool)

(assert (=> d!1364326 (isDefined!8222 (getValueByKey!921 (toList!4063 (extractMap!1084 lt!1658621)) key!3287))))

(declare-fun lt!1659512 () Unit!87799)

(assert (=> d!1364326 (= lt!1659512 (choose!28607 (toList!4063 (extractMap!1084 lt!1658621)) key!3287))))

(assert (=> d!1364326 (invariantList!931 (toList!4063 (extractMap!1084 lt!1658621)))))

(assert (=> d!1364326 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!825 (toList!4063 (extractMap!1084 lt!1658621)) key!3287) lt!1659512)))

(declare-fun bs!796147 () Bool)

(assert (= bs!796147 d!1364326))

(assert (=> bs!796147 m!5177407))

(assert (=> bs!796147 m!5177407))

(assert (=> bs!796147 m!5177409))

(declare-fun m!5179003 () Bool)

(assert (=> bs!796147 m!5179003))

(assert (=> bs!796147 m!5177713))

(assert (=> b!4470179 d!1364326))

(assert (=> b!4470179 d!1364086))

(assert (=> b!4470179 d!1364088))

(declare-fun d!1364328 () Bool)

(assert (=> d!1364328 (contains!12855 (getKeysList!379 (toList!4063 (extractMap!1084 lt!1658621))) key!3287)))

(declare-fun lt!1659513 () Unit!87799)

(assert (=> d!1364328 (= lt!1659513 (choose!28608 (toList!4063 (extractMap!1084 lt!1658621)) key!3287))))

(assert (=> d!1364328 (invariantList!931 (toList!4063 (extractMap!1084 lt!1658621)))))

(assert (=> d!1364328 (= (lemmaInListThenGetKeysListContains!375 (toList!4063 (extractMap!1084 lt!1658621)) key!3287) lt!1659513)))

(declare-fun bs!796151 () Bool)

(assert (= bs!796151 d!1364328))

(assert (=> bs!796151 m!5177417))

(assert (=> bs!796151 m!5177417))

(declare-fun m!5179005 () Bool)

(assert (=> bs!796151 m!5179005))

(declare-fun m!5179007 () Bool)

(assert (=> bs!796151 m!5179007))

(assert (=> bs!796151 m!5177713))

(assert (=> b!4470179 d!1364328))

(declare-fun tp!1336312 () Bool)

(declare-fun b!4471074 () Bool)

(declare-fun e!2784203 () Bool)

(assert (=> b!4471074 (= e!2784203 (and tp_is_empty!27389 tp_is_empty!27391 tp!1336312))))

(assert (=> b!4470208 (= tp!1336307 e!2784203)))

(assert (= (and b!4470208 ((_ is Cons!50296) (_2!28568 (h!56064 (toList!4064 lm!1477))))) b!4471074))

(declare-fun b!4471075 () Bool)

(declare-fun e!2784204 () Bool)

(declare-fun tp!1336313 () Bool)

(declare-fun tp!1336314 () Bool)

(assert (=> b!4471075 (= e!2784204 (and tp!1336313 tp!1336314))))

(assert (=> b!4470208 (= tp!1336308 e!2784204)))

(assert (= (and b!4470208 ((_ is Cons!50297) (t!357371 (toList!4064 lm!1477)))) b!4471075))

(declare-fun tp!1336315 () Bool)

(declare-fun b!4471076 () Bool)

(declare-fun e!2784205 () Bool)

(assert (=> b!4471076 (= e!2784205 (and tp_is_empty!27389 tp_is_empty!27391 tp!1336315))))

(assert (=> b!4470213 (= tp!1336311 e!2784205)))

(assert (= (and b!4470213 ((_ is Cons!50296) (t!357370 (t!357370 newBucket!178)))) b!4471076))

(declare-fun b_lambda!148513 () Bool)

(assert (= b_lambda!148487 (or d!1363856 b_lambda!148513)))

(declare-fun bs!796166 () Bool)

(declare-fun d!1364330 () Bool)

(assert (= bs!796166 (and d!1364330 d!1363856)))

(assert (=> bs!796166 (= (dynLambda!21018 lambda!163407 (h!56064 (toList!4064 (ListLongMap!2696 lt!1658621)))) (noDuplicateKeys!1028 (_2!28568 (h!56064 (toList!4064 (ListLongMap!2696 lt!1658621))))))))

(declare-fun m!5179009 () Bool)

(assert (=> bs!796166 m!5179009))

(assert (=> b!4470620 d!1364330))

(declare-fun b_lambda!148515 () Bool)

(assert (= b_lambda!148475 (or d!1363878 b_lambda!148515)))

(declare-fun bs!796169 () Bool)

(declare-fun d!1364332 () Bool)

(assert (= bs!796169 (and d!1364332 d!1363878)))

(assert (=> bs!796169 (= (dynLambda!21018 lambda!163413 (h!56064 (toList!4064 lt!1658620))) (noDuplicateKeys!1028 (_2!28568 (h!56064 (toList!4064 lt!1658620)))))))

(assert (=> bs!796169 m!5177973))

(assert (=> b!4470377 d!1364332))

(declare-fun b_lambda!148517 () Bool)

(assert (= b_lambda!148489 (or d!1363862 b_lambda!148517)))

(declare-fun bs!796170 () Bool)

(declare-fun d!1364334 () Bool)

(assert (= bs!796170 (and d!1364334 d!1363862)))

(assert (=> bs!796170 (= (dynLambda!21018 lambda!163408 (h!56064 (Cons!50297 lt!1658627 Nil!50297))) (noDuplicateKeys!1028 (_2!28568 (h!56064 (Cons!50297 lt!1658627 Nil!50297)))))))

(assert (=> bs!796170 m!5178545))

(assert (=> b!4470691 d!1364334))

(declare-fun b_lambda!148519 () Bool)

(assert (= b_lambda!148461 (or d!1363876 b_lambda!148519)))

(declare-fun bs!796173 () Bool)

(declare-fun d!1364336 () Bool)

(assert (= bs!796173 (and d!1364336 d!1363876)))

(assert (=> bs!796173 (= (dynLambda!21018 lambda!163412 (h!56064 (t!357371 (toList!4064 lm!1477)))) (noDuplicateKeys!1028 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477))))))))

(assert (=> bs!796173 m!5177601))

(assert (=> b!4470214 d!1364336))

(declare-fun b_lambda!148521 () Bool)

(assert (= b_lambda!148485 (or d!1363818 b_lambda!148521)))

(declare-fun bs!796174 () Bool)

(declare-fun d!1364338 () Bool)

(assert (= bs!796174 (and d!1364338 d!1363818)))

(assert (=> bs!796174 (= (dynLambda!21019 lambda!163394 (h!56063 newBucket!178)) (= (hash!2459 hashF!1107 (_1!28567 (h!56063 newBucket!178))) hash!344))))

(declare-fun m!5179011 () Bool)

(assert (=> bs!796174 m!5179011))

(assert (=> b!4470588 d!1364338))

(declare-fun b_lambda!148523 () Bool)

(assert (= b_lambda!148465 (or d!1363850 b_lambda!148523)))

(declare-fun bs!796176 () Bool)

(declare-fun d!1364340 () Bool)

(assert (= bs!796176 (and d!1364340 d!1363850)))

(assert (=> bs!796176 (= (dynLambda!21018 lambda!163404 (h!56064 lt!1658621)) (noDuplicateKeys!1028 (_2!28568 (h!56064 lt!1658621))))))

(assert (=> bs!796176 m!5177771))

(assert (=> b!4470243 d!1364340))

(declare-fun b_lambda!148525 () Bool)

(assert (= b_lambda!148493 (or d!1363756 b_lambda!148525)))

(declare-fun bs!796177 () Bool)

(declare-fun d!1364342 () Bool)

(assert (= bs!796177 (and d!1364342 d!1363756)))

(assert (=> bs!796177 (= (dynLambda!21018 lambda!163373 (h!56064 (toList!4064 lm!1477))) (noDuplicateKeys!1028 (_2!28568 (h!56064 (toList!4064 lm!1477)))))))

(assert (=> bs!796177 m!5177373))

(assert (=> b!4470713 d!1364342))

(declare-fun b_lambda!148527 () Bool)

(assert (= b_lambda!148511 (or start!439252 b_lambda!148527)))

(assert (=> d!1364322 d!1363880))

(declare-fun b_lambda!148529 () Bool)

(assert (= b_lambda!148463 (or d!1363832 b_lambda!148529)))

(declare-fun bs!796179 () Bool)

(declare-fun d!1364344 () Bool)

(assert (= bs!796179 (and d!1364344 d!1363832)))

(assert (=> bs!796179 (= (dynLambda!21018 lambda!163399 (h!56064 (toList!4064 lm!1477))) (noDuplicateKeys!1028 (_2!28568 (h!56064 (toList!4064 lm!1477)))))))

(assert (=> bs!796179 m!5177373))

(assert (=> b!4470231 d!1364344))

(declare-fun b_lambda!148531 () Bool)

(assert (= b_lambda!148509 (or d!1363844 b_lambda!148531)))

(declare-fun bs!796182 () Bool)

(declare-fun d!1364346 () Bool)

(assert (= bs!796182 (and d!1364346 d!1363844)))

(assert (=> bs!796182 (= (dynLambda!21018 lambda!163402 (h!56064 (toList!4064 lm!1477))) (noDuplicateKeys!1028 (_2!28568 (h!56064 (toList!4064 lm!1477)))))))

(assert (=> bs!796182 m!5177373))

(assert (=> b!4471063 d!1364346))

(declare-fun b_lambda!148533 () Bool)

(assert (= b_lambda!148469 (or d!1363872 b_lambda!148533)))

(declare-fun bs!796184 () Bool)

(declare-fun d!1364348 () Bool)

(assert (= bs!796184 (and d!1364348 d!1363872)))

(assert (=> bs!796184 (= (dynLambda!21018 lambda!163411 (h!56064 (toList!4064 lm!1477))) (allKeysSameHash!882 (_2!28568 (h!56064 (toList!4064 lm!1477))) (_1!28568 (h!56064 (toList!4064 lm!1477))) hashF!1107))))

(declare-fun m!5179013 () Bool)

(assert (=> bs!796184 m!5179013))

(assert (=> b!4470274 d!1364348))

(declare-fun b_lambda!148535 () Bool)

(assert (= b_lambda!148477 (or start!439252 b_lambda!148535)))

(declare-fun bs!796186 () Bool)

(declare-fun d!1364350 () Bool)

(assert (= bs!796186 (and d!1364350 start!439252)))

(assert (=> bs!796186 (= (dynLambda!21018 lambda!163367 (h!56064 (t!357371 (toList!4064 lm!1477)))) (noDuplicateKeys!1028 (_2!28568 (h!56064 (t!357371 (toList!4064 lm!1477))))))))

(assert (=> bs!796186 m!5177601))

(assert (=> b!4470390 d!1364350))

(declare-fun b_lambda!148537 () Bool)

(assert (= b_lambda!148499 (or d!1363848 b_lambda!148537)))

(declare-fun bs!796187 () Bool)

(declare-fun d!1364352 () Bool)

(assert (= bs!796187 (and d!1364352 d!1363848)))

(assert (=> bs!796187 (= (dynLambda!21018 lambda!163403 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297))) (noDuplicateKeys!1028 (_2!28568 (h!56064 (Cons!50297 (tuple2!50549 hash!344 (_2!28568 (h!56064 (toList!4064 lm!1477)))) Nil!50297)))))))

(assert (=> bs!796187 m!5178279))

(assert (=> b!4470828 d!1364352))

(check-sat (not b_lambda!148537) (not b!4470386) (not b!4470889) (not bm!311259) (not bm!311327) (not d!1364328) (not d!1364064) (not d!1364216) (not b!4470811) (not b!4470650) (not b!4470929) (not b_lambda!148517) (not b!4471036) (not b_lambda!148525) (not b!4470720) (not b!4470649) (not bs!796166) (not b!4470925) (not b_lambda!148529) (not b!4470391) (not b!4470470) (not bm!311247) (not b!4471075) (not b!4470728) (not b!4470436) (not b!4470512) (not d!1364080) (not b!4470366) (not b!4470731) (not b!4470621) (not b!4470651) (not d!1364048) (not b!4470465) (not b!4470443) (not b!4470552) (not b!4470631) tp_is_empty!27391 (not bm!311262) (not b!4470630) (not d!1364038) (not b!4471074) (not b!4470595) (not b_lambda!148523) (not d!1364162) (not b!4470710) (not d!1364166) (not b!4470518) (not b!4470376) (not bs!796170) (not d!1363976) (not d!1364202) (not d!1363966) (not bs!796182) (not b!4470789) (not bm!311238) (not d!1364246) (not d!1364326) (not b!4470525) (not b!4470428) (not b!4470502) (not bs!796187) (not b!4470838) (not b!4470719) (not d!1364054) (not b!4470808) (not b_lambda!148459) (not b!4470526) (not bm!311277) (not b!4470676) (not b!4470242) (not b!4470927) (not b!4470932) (not b!4471064) (not b!4470881) (not b!4470721) (not d!1364032) (not b!4470693) (not d!1363956) (not d!1364156) (not b!4470424) (not bm!311328) (not d!1364198) (not b!4470421) (not b!4470527) (not b!4470250) (not d!1364112) (not b!4470605) (not bs!796186) (not b!4470695) (not bm!311323) (not b!4470562) (not bs!796184) (not d!1364072) (not b!4470419) (not b!4470596) (not b!4470708) (not b_lambda!148533) (not b!4470370) (not b!4470792) (not bm!311226) (not b!4470574) (not b!4470422) (not d!1364110) (not bs!796177) (not b!4470817) (not d!1363890) (not d!1364306) (not bm!311279) (not bm!311274) (not b!4470240) (not b!4470381) (not b!4470373) (not b!4470677) (not d!1364244) (not b!4471062) (not bs!796179) (not d!1363988) (not b!4470466) (not b!4470604) (not bm!311239) (not b!4470715) (not bm!311298) (not b!4470829) (not b!4470530) (not b!4470463) (not bm!311246) (not b!4470564) (not b!4470625) (not bm!311325) (not b!4470841) (not b!4470601) (not b!4471041) (not d!1363992) (not b!4470689) (not d!1364078) (not b!4470744) (not b!4470714) (not d!1364218) (not b_lambda!148521) tp_is_empty!27389 (not b!4470531) (not b!4470597) (not b!4470553) (not b!4470215) (not bs!796169) (not b!4470888) (not b!4470598) (not b!4470511) (not b!4470826) (not d!1363972) (not d!1364146) (not d!1364120) (not b!4470825) (not b!4470933) (not b!4470717) (not d!1363886) (not bm!311244) (not bm!311240) (not b_lambda!148535) (not bs!796173) (not b!4470930) (not b!4470524) (not b!4470369) (not b!4470926) (not bm!311258) (not b!4470692) (not bm!311245) (not b!4470836) (not b!4470368) (not b!4470592) (not b_lambda!148457) (not d!1363978) (not b!4470380) (not d!1364310) (not b!4470842) (not d!1364150) (not b!4470840) (not b!4470802) (not b!4470639) (not b!4470232) (not d!1364096) (not d!1364004) (not d!1363918) (not d!1364214) (not b!4470275) (not d!1364178) (not bm!311326) (not d!1363964) (not d!1364086) (not d!1363912) (not b!4470623) (not d!1364226) (not b!4470799) (not b!4470797) (not d!1364228) (not b!4470716) (not b!4470555) (not b!4470529) (not d!1364318) (not b_lambda!148513) (not b!4470554) (not b!4470743) (not b!4471031) (not b!4470382) (not bm!311261) (not d!1364230) (not b!4470563) (not b!4470890) (not b!4470389) (not d!1364108) (not b!4470571) (not b!4470536) (not b!4470675) (not b!4470561) (not d!1363986) (not b!4470589) (not d!1363960) (not d!1364030) (not bm!311271) (not bm!311278) (not b!4470467) (not b!4470662) (not d!1363982) (not d!1364074) (not b!4470383) (not b!4470270) (not b!4470673) (not b!4470271) (not b!4470804) (not b_lambda!148531) (not d!1364124) (not d!1364092) (not b!4471029) (not b!4470815) (not b!4470244) (not b!4470423) (not b!4470241) (not b_lambda!148527) (not b!4471030) (not b!4470707) (not b!4470515) (not b!4470269) (not d!1364132) (not b!4470627) (not bm!311324) (not bm!311227) (not d!1363996) (not d!1363980) (not b!4470459) (not b!4470823) (not d!1364002) (not b!4470600) (not d!1364036) (not b_lambda!148515) (not d!1363902) (not b!4470603) (not d!1364212) (not b!4470393) (not bm!311263) (not d!1364134) (not bm!311228) (not bm!311257) (not b!4471033) (not b!4470652) (not d!1364090) (not b!4470920) (not d!1364094) (not bs!796176) (not b!4471046) (not b!4470832) (not b!4470891) (not b!4471032) (not b!4470726) (not b!4470647) (not b!4470378) (not d!1364204) (not b!4470796) (not bs!796174) (not d!1363968) (not b!4470886) (not b!4470805) (not b!4471042) (not d!1364016) (not b_lambda!148519) (not b!4471039) (not b!4471076) (not d!1363906))
(check-sat)
