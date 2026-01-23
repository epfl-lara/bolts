; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!466378 () Bool)

(assert start!466378)

(declare-fun b!4639585 () Bool)

(declare-fun res!1948345 () Bool)

(declare-fun e!2894224 () Bool)

(assert (=> b!4639585 (=> (not res!1948345) (not e!2894224))))

(declare-datatypes ((K!13113 0))(
  ( (K!13114 (val!18761 Int)) )
))
(declare-datatypes ((V!13359 0))(
  ( (V!13360 (val!18762 Int)) )
))
(declare-datatypes ((tuple2!52786 0))(
  ( (tuple2!52787 (_1!29687 K!13113) (_2!29687 V!13359)) )
))
(declare-datatypes ((List!51868 0))(
  ( (Nil!51744) (Cons!51744 (h!57846 tuple2!52786) (t!358950 List!51868)) )
))
(declare-fun newBucket!224 () List!51868)

(declare-fun noDuplicateKeys!1585 (List!51868) Bool)

(assert (=> b!4639585 (= res!1948345 (noDuplicateKeys!1585 newBucket!224))))

(declare-fun b!4639586 () Bool)

(declare-fun e!2894229 () Bool)

(declare-datatypes ((ListMap!4439 0))(
  ( (ListMap!4440 (toList!5115 List!51868)) )
))
(declare-fun lt!1802392 () ListMap!4439)

(assert (=> b!4639586 (= e!2894229 (= lt!1802392 (ListMap!4440 Nil!51744)))))

(declare-fun b!4639587 () Bool)

(declare-fun e!2894228 () Bool)

(declare-fun tp_is_empty!29635 () Bool)

(declare-fun tp_is_empty!29633 () Bool)

(declare-fun tp!1342789 () Bool)

(assert (=> b!4639587 (= e!2894228 (and tp_is_empty!29633 tp_is_empty!29635 tp!1342789))))

(declare-fun b!4639588 () Bool)

(declare-fun e!2894223 () Bool)

(declare-fun e!2894225 () Bool)

(assert (=> b!4639588 (= e!2894223 (not e!2894225))))

(declare-fun res!1948341 () Bool)

(assert (=> b!4639588 (=> res!1948341 e!2894225)))

(declare-fun oldBucket!40 () List!51868)

(declare-fun key!4968 () K!13113)

(assert (=> b!4639588 (= res!1948341 (or (and (is-Cons!51744 oldBucket!40) (= (_1!29687 (h!57846 oldBucket!40)) key!4968)) (not (is-Cons!51744 oldBucket!40)) (= (_1!29687 (h!57846 oldBucket!40)) key!4968)))))

(assert (=> b!4639588 e!2894229))

(declare-fun res!1948339 () Bool)

(assert (=> b!4639588 (=> (not res!1948339) (not e!2894229))))

(declare-fun lt!1802386 () ListMap!4439)

(declare-fun addToMapMapFromBucket!1044 (List!51868 ListMap!4439) ListMap!4439)

(assert (=> b!4639588 (= res!1948339 (= lt!1802386 (addToMapMapFromBucket!1044 oldBucket!40 lt!1802392)))))

(declare-datatypes ((tuple2!52788 0))(
  ( (tuple2!52789 (_1!29688 (_ BitVec 64)) (_2!29688 List!51868)) )
))
(declare-datatypes ((List!51869 0))(
  ( (Nil!51745) (Cons!51745 (h!57847 tuple2!52788) (t!358951 List!51869)) )
))
(declare-fun extractMap!1641 (List!51869) ListMap!4439)

(assert (=> b!4639588 (= lt!1802392 (extractMap!1641 Nil!51745))))

(assert (=> b!4639588 true))

(declare-fun b!4639589 () Bool)

(declare-fun e!2894226 () Bool)

(assert (=> b!4639589 (= e!2894226 e!2894223)))

(declare-fun res!1948346 () Bool)

(assert (=> b!4639589 (=> (not res!1948346) (not e!2894223))))

(declare-fun lt!1802395 () (_ BitVec 64))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4639589 (= res!1948346 (= lt!1802395 hash!414))))

(declare-datatypes ((Hashable!5982 0))(
  ( (HashableExt!5981 (__x!31685 Int)) )
))
(declare-fun hashF!1389 () Hashable!5982)

(declare-fun hash!3671 (Hashable!5982 K!13113) (_ BitVec 64))

(assert (=> b!4639589 (= lt!1802395 (hash!3671 hashF!1389 key!4968))))

(declare-fun b!4639590 () Bool)

(declare-fun res!1948340 () Bool)

(assert (=> b!4639590 (=> (not res!1948340) (not e!2894224))))

(declare-fun removePairForKey!1208 (List!51868 K!13113) List!51868)

(assert (=> b!4639590 (= res!1948340 (= (removePairForKey!1208 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4639591 () Bool)

(declare-fun res!1948344 () Bool)

(assert (=> b!4639591 (=> (not res!1948344) (not e!2894223))))

(declare-fun allKeysSameHash!1439 (List!51868 (_ BitVec 64) Hashable!5982) Bool)

(assert (=> b!4639591 (= res!1948344 (allKeysSameHash!1439 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4639592 () Bool)

(assert (=> b!4639592 (= e!2894224 e!2894226)))

(declare-fun res!1948347 () Bool)

(assert (=> b!4639592 (=> (not res!1948347) (not e!2894226))))

(declare-fun contains!14852 (ListMap!4439 K!13113) Bool)

(assert (=> b!4639592 (= res!1948347 (contains!14852 lt!1802386 key!4968))))

(declare-fun lt!1802388 () List!51869)

(assert (=> b!4639592 (= lt!1802386 (extractMap!1641 lt!1802388))))

(assert (=> b!4639592 (= lt!1802388 (Cons!51745 (tuple2!52789 hash!414 oldBucket!40) Nil!51745))))

(declare-fun res!1948342 () Bool)

(assert (=> start!466378 (=> (not res!1948342) (not e!2894224))))

(assert (=> start!466378 (= res!1948342 (noDuplicateKeys!1585 oldBucket!40))))

(assert (=> start!466378 e!2894224))

(assert (=> start!466378 true))

(assert (=> start!466378 e!2894228))

(assert (=> start!466378 tp_is_empty!29633))

(declare-fun e!2894227 () Bool)

(assert (=> start!466378 e!2894227))

(declare-fun b!4639593 () Bool)

(declare-fun containsKey!2607 (List!51868 K!13113) Bool)

(assert (=> b!4639593 (= e!2894225 (containsKey!2607 (t!358950 oldBucket!40) key!4968))))

(assert (=> b!4639593 (containsKey!2607 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!115155 0))(
  ( (Unit!115156) )
))
(declare-fun lt!1802397 () Unit!115155)

(declare-fun lemmaGetPairDefinedThenContainsKey!99 (List!51868 K!13113 Hashable!5982) Unit!115155)

(assert (=> b!4639593 (= lt!1802397 (lemmaGetPairDefinedThenContainsKey!99 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1802396 () List!51868)

(declare-datatypes ((Option!11729 0))(
  ( (None!11728) (Some!11728 (v!45938 tuple2!52786)) )
))
(declare-fun isDefined!8994 (Option!11729) Bool)

(declare-fun getPair!345 (List!51868 K!13113) Option!11729)

(assert (=> b!4639593 (isDefined!8994 (getPair!345 lt!1802396 key!4968))))

(declare-fun lt!1802387 () tuple2!52788)

(declare-fun lt!1802394 () Unit!115155)

(declare-fun lambda!195819 () Int)

(declare-fun forallContained!3149 (List!51869 Int tuple2!52788) Unit!115155)

(assert (=> b!4639593 (= lt!1802394 (forallContained!3149 lt!1802388 lambda!195819 lt!1802387))))

(declare-fun contains!14853 (List!51869 tuple2!52788) Bool)

(assert (=> b!4639593 (contains!14853 lt!1802388 lt!1802387)))

(assert (=> b!4639593 (= lt!1802387 (tuple2!52789 lt!1802395 lt!1802396))))

(declare-datatypes ((ListLongMap!3685 0))(
  ( (ListLongMap!3686 (toList!5116 List!51869)) )
))
(declare-fun lt!1802393 () ListLongMap!3685)

(declare-fun lt!1802391 () Unit!115155)

(declare-fun lemmaGetValueImpliesTupleContained!150 (ListLongMap!3685 (_ BitVec 64) List!51868) Unit!115155)

(assert (=> b!4639593 (= lt!1802391 (lemmaGetValueImpliesTupleContained!150 lt!1802393 lt!1802395 lt!1802396))))

(declare-fun apply!12218 (ListLongMap!3685 (_ BitVec 64)) List!51868)

(assert (=> b!4639593 (= lt!1802396 (apply!12218 lt!1802393 lt!1802395))))

(declare-fun contains!14854 (ListLongMap!3685 (_ BitVec 64)) Bool)

(assert (=> b!4639593 (contains!14854 lt!1802393 lt!1802395)))

(declare-fun lt!1802390 () Unit!115155)

(declare-fun lemmaInGenMapThenLongMapContainsHash!551 (ListLongMap!3685 K!13113 Hashable!5982) Unit!115155)

(assert (=> b!4639593 (= lt!1802390 (lemmaInGenMapThenLongMapContainsHash!551 lt!1802393 key!4968 hashF!1389))))

(declare-fun lt!1802389 () Unit!115155)

(declare-fun lemmaInGenMapThenGetPairDefined!141 (ListLongMap!3685 K!13113 Hashable!5982) Unit!115155)

(assert (=> b!4639593 (= lt!1802389 (lemmaInGenMapThenGetPairDefined!141 lt!1802393 key!4968 hashF!1389))))

(assert (=> b!4639593 (= lt!1802393 (ListLongMap!3686 lt!1802388))))

(declare-fun b!4639594 () Bool)

(declare-fun res!1948343 () Bool)

(assert (=> b!4639594 (=> (not res!1948343) (not e!2894224))))

(assert (=> b!4639594 (= res!1948343 (allKeysSameHash!1439 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4639595 () Bool)

(declare-fun tp!1342788 () Bool)

(assert (=> b!4639595 (= e!2894227 (and tp_is_empty!29633 tp_is_empty!29635 tp!1342788))))

(assert (= (and start!466378 res!1948342) b!4639585))

(assert (= (and b!4639585 res!1948345) b!4639590))

(assert (= (and b!4639590 res!1948340) b!4639594))

(assert (= (and b!4639594 res!1948343) b!4639592))

(assert (= (and b!4639592 res!1948347) b!4639589))

(assert (= (and b!4639589 res!1948346) b!4639591))

(assert (= (and b!4639591 res!1948344) b!4639588))

(assert (= (and b!4639588 res!1948339) b!4639586))

(assert (= (and b!4639588 (not res!1948341)) b!4639593))

(assert (= (and start!466378 (is-Cons!51744 oldBucket!40)) b!4639587))

(assert (= (and start!466378 (is-Cons!51744 newBucket!224)) b!4639595))

(declare-fun m!5498995 () Bool)

(assert (=> b!4639593 m!5498995))

(declare-fun m!5498997 () Bool)

(assert (=> b!4639593 m!5498997))

(declare-fun m!5498999 () Bool)

(assert (=> b!4639593 m!5498999))

(declare-fun m!5499001 () Bool)

(assert (=> b!4639593 m!5499001))

(declare-fun m!5499003 () Bool)

(assert (=> b!4639593 m!5499003))

(declare-fun m!5499005 () Bool)

(assert (=> b!4639593 m!5499005))

(assert (=> b!4639593 m!5499003))

(declare-fun m!5499007 () Bool)

(assert (=> b!4639593 m!5499007))

(declare-fun m!5499009 () Bool)

(assert (=> b!4639593 m!5499009))

(declare-fun m!5499011 () Bool)

(assert (=> b!4639593 m!5499011))

(declare-fun m!5499013 () Bool)

(assert (=> b!4639593 m!5499013))

(declare-fun m!5499015 () Bool)

(assert (=> b!4639593 m!5499015))

(declare-fun m!5499017 () Bool)

(assert (=> b!4639593 m!5499017))

(declare-fun m!5499019 () Bool)

(assert (=> b!4639591 m!5499019))

(declare-fun m!5499021 () Bool)

(assert (=> start!466378 m!5499021))

(declare-fun m!5499023 () Bool)

(assert (=> b!4639590 m!5499023))

(declare-fun m!5499025 () Bool)

(assert (=> b!4639592 m!5499025))

(declare-fun m!5499027 () Bool)

(assert (=> b!4639592 m!5499027))

(declare-fun m!5499029 () Bool)

(assert (=> b!4639589 m!5499029))

(declare-fun m!5499031 () Bool)

(assert (=> b!4639585 m!5499031))

(declare-fun m!5499033 () Bool)

(assert (=> b!4639588 m!5499033))

(declare-fun m!5499035 () Bool)

(assert (=> b!4639588 m!5499035))

(declare-fun m!5499037 () Bool)

(assert (=> b!4639594 m!5499037))

(push 1)

(assert (not b!4639585))

(assert (not b!4639590))

(assert (not b!4639594))

(assert tp_is_empty!29635)

(assert (not b!4639591))

(assert (not b!4639592))

(assert tp_is_empty!29633)

(assert (not b!4639595))

(assert (not b!4639588))

(assert (not b!4639593))

(assert (not b!4639589))

(assert (not start!466378))

(assert (not b!4639587))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4639647 () Bool)

(declare-fun e!2894265 () Bool)

(declare-fun e!2894264 () Bool)

(assert (=> b!4639647 (= e!2894265 e!2894264)))

(declare-fun res!1948382 () Bool)

(assert (=> b!4639647 (=> (not res!1948382) (not e!2894264))))

(declare-datatypes ((Option!11731 0))(
  ( (None!11730) (Some!11730 (v!45943 V!13359)) )
))
(declare-fun isDefined!8996 (Option!11731) Bool)

(declare-fun getValueByKey!1543 (List!51868 K!13113) Option!11731)

(assert (=> b!4639647 (= res!1948382 (isDefined!8996 (getValueByKey!1543 (toList!5115 lt!1802386) key!4968)))))

(declare-fun b!4639648 () Bool)

(declare-datatypes ((List!51872 0))(
  ( (Nil!51748) (Cons!51748 (h!57852 K!13113) (t!358954 List!51872)) )
))
(declare-fun e!2894268 () List!51872)

(declare-fun getKeysList!706 (List!51868) List!51872)

(assert (=> b!4639648 (= e!2894268 (getKeysList!706 (toList!5115 lt!1802386)))))

(declare-fun bm!323869 () Bool)

(declare-fun call!323874 () Bool)

(declare-fun contains!14858 (List!51872 K!13113) Bool)

(assert (=> bm!323869 (= call!323874 (contains!14858 e!2894268 key!4968))))

(declare-fun c!793923 () Bool)

(declare-fun c!793921 () Bool)

(assert (=> bm!323869 (= c!793923 c!793921)))

(declare-fun b!4639649 () Bool)

(declare-fun keys!18285 (ListMap!4439) List!51872)

(assert (=> b!4639649 (= e!2894264 (contains!14858 (keys!18285 lt!1802386) key!4968))))

(declare-fun b!4639650 () Bool)

(declare-fun e!2894266 () Unit!115155)

(declare-fun e!2894263 () Unit!115155)

(assert (=> b!4639650 (= e!2894266 e!2894263)))

(declare-fun c!793922 () Bool)

(assert (=> b!4639650 (= c!793922 call!323874)))

(declare-fun b!4639651 () Bool)

(declare-fun e!2894267 () Bool)

(assert (=> b!4639651 (= e!2894267 (not (contains!14858 (keys!18285 lt!1802386) key!4968)))))

(declare-fun d!1462743 () Bool)

(assert (=> d!1462743 e!2894265))

(declare-fun res!1948381 () Bool)

(assert (=> d!1462743 (=> res!1948381 e!2894265)))

(assert (=> d!1462743 (= res!1948381 e!2894267)))

(declare-fun res!1948383 () Bool)

(assert (=> d!1462743 (=> (not res!1948383) (not e!2894267))))

(declare-fun lt!1802452 () Bool)

(assert (=> d!1462743 (= res!1948383 (not lt!1802452))))

(declare-fun lt!1802456 () Bool)

(assert (=> d!1462743 (= lt!1802452 lt!1802456)))

(declare-fun lt!1802451 () Unit!115155)

(assert (=> d!1462743 (= lt!1802451 e!2894266)))

(assert (=> d!1462743 (= c!793921 lt!1802456)))

(declare-fun containsKey!2609 (List!51868 K!13113) Bool)

(assert (=> d!1462743 (= lt!1802456 (containsKey!2609 (toList!5115 lt!1802386) key!4968))))

(assert (=> d!1462743 (= (contains!14852 lt!1802386 key!4968) lt!1802452)))

(declare-fun b!4639652 () Bool)

(declare-fun Unit!115159 () Unit!115155)

(assert (=> b!4639652 (= e!2894263 Unit!115159)))

(declare-fun b!4639653 () Bool)

(assert (=> b!4639653 false))

(declare-fun lt!1802453 () Unit!115155)

(declare-fun lt!1802454 () Unit!115155)

(assert (=> b!4639653 (= lt!1802453 lt!1802454)))

(assert (=> b!4639653 (containsKey!2609 (toList!5115 lt!1802386) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!705 (List!51868 K!13113) Unit!115155)

(assert (=> b!4639653 (= lt!1802454 (lemmaInGetKeysListThenContainsKey!705 (toList!5115 lt!1802386) key!4968))))

(declare-fun Unit!115160 () Unit!115155)

(assert (=> b!4639653 (= e!2894263 Unit!115160)))

(declare-fun b!4639654 () Bool)

(declare-fun lt!1802455 () Unit!115155)

(assert (=> b!4639654 (= e!2894266 lt!1802455)))

(declare-fun lt!1802450 () Unit!115155)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1445 (List!51868 K!13113) Unit!115155)

(assert (=> b!4639654 (= lt!1802450 (lemmaContainsKeyImpliesGetValueByKeyDefined!1445 (toList!5115 lt!1802386) key!4968))))

(assert (=> b!4639654 (isDefined!8996 (getValueByKey!1543 (toList!5115 lt!1802386) key!4968))))

(declare-fun lt!1802457 () Unit!115155)

(assert (=> b!4639654 (= lt!1802457 lt!1802450)))

(declare-fun lemmaInListThenGetKeysListContains!701 (List!51868 K!13113) Unit!115155)

(assert (=> b!4639654 (= lt!1802455 (lemmaInListThenGetKeysListContains!701 (toList!5115 lt!1802386) key!4968))))

(assert (=> b!4639654 call!323874))

(declare-fun b!4639655 () Bool)

(assert (=> b!4639655 (= e!2894268 (keys!18285 lt!1802386))))

(assert (= (and d!1462743 c!793921) b!4639654))

(assert (= (and d!1462743 (not c!793921)) b!4639650))

(assert (= (and b!4639650 c!793922) b!4639653))

(assert (= (and b!4639650 (not c!793922)) b!4639652))

(assert (= (or b!4639654 b!4639650) bm!323869))

(assert (= (and bm!323869 c!793923) b!4639648))

(assert (= (and bm!323869 (not c!793923)) b!4639655))

(assert (= (and d!1462743 res!1948383) b!4639651))

(assert (= (and d!1462743 (not res!1948381)) b!4639647))

(assert (= (and b!4639647 res!1948382) b!4639649))

(declare-fun m!5499083 () Bool)

(assert (=> b!4639655 m!5499083))

(assert (=> b!4639649 m!5499083))

(assert (=> b!4639649 m!5499083))

(declare-fun m!5499085 () Bool)

(assert (=> b!4639649 m!5499085))

(declare-fun m!5499087 () Bool)

(assert (=> b!4639653 m!5499087))

(declare-fun m!5499089 () Bool)

(assert (=> b!4639653 m!5499089))

(declare-fun m!5499091 () Bool)

(assert (=> bm!323869 m!5499091))

(declare-fun m!5499093 () Bool)

(assert (=> b!4639648 m!5499093))

(assert (=> b!4639651 m!5499083))

(assert (=> b!4639651 m!5499083))

(assert (=> b!4639651 m!5499085))

(declare-fun m!5499095 () Bool)

(assert (=> b!4639654 m!5499095))

(declare-fun m!5499097 () Bool)

(assert (=> b!4639654 m!5499097))

(assert (=> b!4639654 m!5499097))

(declare-fun m!5499099 () Bool)

(assert (=> b!4639654 m!5499099))

(declare-fun m!5499101 () Bool)

(assert (=> b!4639654 m!5499101))

(assert (=> b!4639647 m!5499097))

(assert (=> b!4639647 m!5499097))

(assert (=> b!4639647 m!5499099))

(assert (=> d!1462743 m!5499087))

(assert (=> b!4639592 d!1462743))

(declare-fun bs!1033043 () Bool)

(declare-fun d!1462747 () Bool)

(assert (= bs!1033043 (and d!1462747 b!4639593)))

(declare-fun lambda!195825 () Int)

(assert (=> bs!1033043 (= lambda!195825 lambda!195819)))

(declare-fun lt!1802460 () ListMap!4439)

(declare-fun invariantList!1255 (List!51868) Bool)

(assert (=> d!1462747 (invariantList!1255 (toList!5115 lt!1802460))))

(declare-fun e!2894277 () ListMap!4439)

(assert (=> d!1462747 (= lt!1802460 e!2894277)))

(declare-fun c!793926 () Bool)

(assert (=> d!1462747 (= c!793926 (is-Cons!51745 lt!1802388))))

(declare-fun forall!10929 (List!51869 Int) Bool)

(assert (=> d!1462747 (forall!10929 lt!1802388 lambda!195825)))

(assert (=> d!1462747 (= (extractMap!1641 lt!1802388) lt!1802460)))

(declare-fun b!4639666 () Bool)

(assert (=> b!4639666 (= e!2894277 (addToMapMapFromBucket!1044 (_2!29688 (h!57847 lt!1802388)) (extractMap!1641 (t!358951 lt!1802388))))))

(declare-fun b!4639667 () Bool)

(assert (=> b!4639667 (= e!2894277 (ListMap!4440 Nil!51744))))

(assert (= (and d!1462747 c!793926) b!4639666))

(assert (= (and d!1462747 (not c!793926)) b!4639667))

(declare-fun m!5499109 () Bool)

(assert (=> d!1462747 m!5499109))

(declare-fun m!5499111 () Bool)

(assert (=> d!1462747 m!5499111))

(declare-fun m!5499113 () Bool)

(assert (=> b!4639666 m!5499113))

(assert (=> b!4639666 m!5499113))

(declare-fun m!5499115 () Bool)

(assert (=> b!4639666 m!5499115))

(assert (=> b!4639592 d!1462747))

(declare-fun d!1462753 () Bool)

(assert (=> d!1462753 true))

(assert (=> d!1462753 true))

(declare-fun lambda!195828 () Int)

(declare-fun forall!10930 (List!51868 Int) Bool)

(assert (=> d!1462753 (= (allKeysSameHash!1439 newBucket!224 hash!414 hashF!1389) (forall!10930 newBucket!224 lambda!195828))))

(declare-fun bs!1033044 () Bool)

(assert (= bs!1033044 d!1462753))

(declare-fun m!5499117 () Bool)

(assert (=> bs!1033044 m!5499117))

(assert (=> b!4639591 d!1462753))

(declare-fun d!1462755 () Bool)

(declare-fun res!1948394 () Bool)

(declare-fun e!2894282 () Bool)

(assert (=> d!1462755 (=> res!1948394 e!2894282)))

(assert (=> d!1462755 (= res!1948394 (not (is-Cons!51744 newBucket!224)))))

(assert (=> d!1462755 (= (noDuplicateKeys!1585 newBucket!224) e!2894282)))

(declare-fun b!4639676 () Bool)

(declare-fun e!2894283 () Bool)

(assert (=> b!4639676 (= e!2894282 e!2894283)))

(declare-fun res!1948395 () Bool)

(assert (=> b!4639676 (=> (not res!1948395) (not e!2894283))))

(assert (=> b!4639676 (= res!1948395 (not (containsKey!2607 (t!358950 newBucket!224) (_1!29687 (h!57846 newBucket!224)))))))

(declare-fun b!4639677 () Bool)

(assert (=> b!4639677 (= e!2894283 (noDuplicateKeys!1585 (t!358950 newBucket!224)))))

(assert (= (and d!1462755 (not res!1948394)) b!4639676))

(assert (= (and b!4639676 res!1948395) b!4639677))

(declare-fun m!5499119 () Bool)

(assert (=> b!4639676 m!5499119))

(declare-fun m!5499121 () Bool)

(assert (=> b!4639677 m!5499121))

(assert (=> b!4639585 d!1462755))

(declare-fun b!4639689 () Bool)

(declare-fun e!2894289 () List!51868)

(assert (=> b!4639689 (= e!2894289 Nil!51744)))

(declare-fun b!4639686 () Bool)

(declare-fun e!2894288 () List!51868)

(assert (=> b!4639686 (= e!2894288 (t!358950 oldBucket!40))))

(declare-fun b!4639688 () Bool)

(assert (=> b!4639688 (= e!2894289 (Cons!51744 (h!57846 oldBucket!40) (removePairForKey!1208 (t!358950 oldBucket!40) key!4968)))))

(declare-fun b!4639687 () Bool)

(assert (=> b!4639687 (= e!2894288 e!2894289)))

(declare-fun c!793932 () Bool)

(assert (=> b!4639687 (= c!793932 (is-Cons!51744 oldBucket!40))))

(declare-fun d!1462757 () Bool)

(declare-fun lt!1802463 () List!51868)

(assert (=> d!1462757 (not (containsKey!2607 lt!1802463 key!4968))))

(assert (=> d!1462757 (= lt!1802463 e!2894288)))

(declare-fun c!793931 () Bool)

(assert (=> d!1462757 (= c!793931 (and (is-Cons!51744 oldBucket!40) (= (_1!29687 (h!57846 oldBucket!40)) key!4968)))))

(assert (=> d!1462757 (noDuplicateKeys!1585 oldBucket!40)))

(assert (=> d!1462757 (= (removePairForKey!1208 oldBucket!40 key!4968) lt!1802463)))

(assert (= (and d!1462757 c!793931) b!4639686))

(assert (= (and d!1462757 (not c!793931)) b!4639687))

(assert (= (and b!4639687 c!793932) b!4639688))

(assert (= (and b!4639687 (not c!793932)) b!4639689))

(declare-fun m!5499123 () Bool)

(assert (=> b!4639688 m!5499123))

(declare-fun m!5499125 () Bool)

(assert (=> d!1462757 m!5499125))

(assert (=> d!1462757 m!5499021))

(assert (=> b!4639590 d!1462757))

(declare-fun d!1462759 () Bool)

(declare-fun hash!3673 (Hashable!5982 K!13113) (_ BitVec 64))

(assert (=> d!1462759 (= (hash!3671 hashF!1389 key!4968) (hash!3673 hashF!1389 key!4968))))

(declare-fun bs!1033045 () Bool)

(assert (= bs!1033045 d!1462759))

(declare-fun m!5499127 () Bool)

(assert (=> bs!1033045 m!5499127))

(assert (=> b!4639589 d!1462759))

(declare-fun bs!1033046 () Bool)

(declare-fun d!1462761 () Bool)

(assert (= bs!1033046 (and d!1462761 d!1462753)))

(declare-fun lambda!195829 () Int)

(assert (=> bs!1033046 (= lambda!195829 lambda!195828)))

(assert (=> d!1462761 true))

(assert (=> d!1462761 true))

(assert (=> d!1462761 (= (allKeysSameHash!1439 oldBucket!40 hash!414 hashF!1389) (forall!10930 oldBucket!40 lambda!195829))))

(declare-fun bs!1033047 () Bool)

(assert (= bs!1033047 d!1462761))

(declare-fun m!5499129 () Bool)

(assert (=> bs!1033047 m!5499129))

(assert (=> b!4639594 d!1462761))

(declare-fun bs!1033048 () Bool)

(declare-fun b!4639701 () Bool)

(assert (= bs!1033048 (and b!4639701 d!1462753)))

(declare-fun lambda!195858 () Int)

(assert (=> bs!1033048 (not (= lambda!195858 lambda!195828))))

(declare-fun bs!1033049 () Bool)

(assert (= bs!1033049 (and b!4639701 d!1462761)))

(assert (=> bs!1033049 (not (= lambda!195858 lambda!195829))))

(assert (=> b!4639701 true))

(declare-fun bs!1033050 () Bool)

(declare-fun b!4639700 () Bool)

(assert (= bs!1033050 (and b!4639700 d!1462753)))

(declare-fun lambda!195859 () Int)

(assert (=> bs!1033050 (not (= lambda!195859 lambda!195828))))

(declare-fun bs!1033051 () Bool)

(assert (= bs!1033051 (and b!4639700 d!1462761)))

(assert (=> bs!1033051 (not (= lambda!195859 lambda!195829))))

(declare-fun bs!1033052 () Bool)

(assert (= bs!1033052 (and b!4639700 b!4639701)))

(assert (=> bs!1033052 (= lambda!195859 lambda!195858)))

(assert (=> b!4639700 true))

(declare-fun lambda!195860 () Int)

(assert (=> bs!1033050 (not (= lambda!195860 lambda!195828))))

(assert (=> bs!1033051 (not (= lambda!195860 lambda!195829))))

(declare-fun lt!1802526 () ListMap!4439)

(assert (=> bs!1033052 (= (= lt!1802526 lt!1802392) (= lambda!195860 lambda!195858))))

(assert (=> b!4639700 (= (= lt!1802526 lt!1802392) (= lambda!195860 lambda!195859))))

(assert (=> b!4639700 true))

(declare-fun bs!1033053 () Bool)

(declare-fun d!1462763 () Bool)

(assert (= bs!1033053 (and d!1462763 b!4639700)))

(declare-fun lambda!195861 () Int)

(declare-fun lt!1802514 () ListMap!4439)

(assert (=> bs!1033053 (= (= lt!1802514 lt!1802392) (= lambda!195861 lambda!195859))))

(declare-fun bs!1033054 () Bool)

(assert (= bs!1033054 (and d!1462763 d!1462753)))

(assert (=> bs!1033054 (not (= lambda!195861 lambda!195828))))

(declare-fun bs!1033055 () Bool)

(assert (= bs!1033055 (and d!1462763 d!1462761)))

(assert (=> bs!1033055 (not (= lambda!195861 lambda!195829))))

(declare-fun bs!1033056 () Bool)

(assert (= bs!1033056 (and d!1462763 b!4639701)))

(assert (=> bs!1033056 (= (= lt!1802514 lt!1802392) (= lambda!195861 lambda!195858))))

(assert (=> bs!1033053 (= (= lt!1802514 lt!1802526) (= lambda!195861 lambda!195860))))

(assert (=> d!1462763 true))

(declare-fun e!2894296 () ListMap!4439)

(assert (=> b!4639700 (= e!2894296 lt!1802526)))

(declare-fun lt!1802519 () ListMap!4439)

(declare-fun +!1937 (ListMap!4439 tuple2!52786) ListMap!4439)

(assert (=> b!4639700 (= lt!1802519 (+!1937 lt!1802392 (h!57846 oldBucket!40)))))

(assert (=> b!4639700 (= lt!1802526 (addToMapMapFromBucket!1044 (t!358950 oldBucket!40) (+!1937 lt!1802392 (h!57846 oldBucket!40))))))

(declare-fun lt!1802517 () Unit!115155)

(declare-fun call!323883 () Unit!115155)

(assert (=> b!4639700 (= lt!1802517 call!323883)))

(assert (=> b!4639700 (forall!10930 (toList!5115 lt!1802392) lambda!195859)))

(declare-fun lt!1802506 () Unit!115155)

(assert (=> b!4639700 (= lt!1802506 lt!1802517)))

(assert (=> b!4639700 (forall!10930 (toList!5115 lt!1802519) lambda!195860)))

(declare-fun lt!1802516 () Unit!115155)

(declare-fun Unit!115161 () Unit!115155)

(assert (=> b!4639700 (= lt!1802516 Unit!115161)))

(assert (=> b!4639700 (forall!10930 (t!358950 oldBucket!40) lambda!195860)))

(declare-fun lt!1802509 () Unit!115155)

(declare-fun Unit!115162 () Unit!115155)

(assert (=> b!4639700 (= lt!1802509 Unit!115162)))

(declare-fun lt!1802521 () Unit!115155)

(declare-fun Unit!115163 () Unit!115155)

(assert (=> b!4639700 (= lt!1802521 Unit!115163)))

(declare-fun lt!1802518 () Unit!115155)

(declare-fun forallContained!3151 (List!51868 Int tuple2!52786) Unit!115155)

(assert (=> b!4639700 (= lt!1802518 (forallContained!3151 (toList!5115 lt!1802519) lambda!195860 (h!57846 oldBucket!40)))))

(assert (=> b!4639700 (contains!14852 lt!1802519 (_1!29687 (h!57846 oldBucket!40)))))

(declare-fun lt!1802507 () Unit!115155)

(declare-fun Unit!115164 () Unit!115155)

(assert (=> b!4639700 (= lt!1802507 Unit!115164)))

(assert (=> b!4639700 (contains!14852 lt!1802526 (_1!29687 (h!57846 oldBucket!40)))))

(declare-fun lt!1802523 () Unit!115155)

(declare-fun Unit!115165 () Unit!115155)

(assert (=> b!4639700 (= lt!1802523 Unit!115165)))

(assert (=> b!4639700 (forall!10930 oldBucket!40 lambda!195860)))

(declare-fun lt!1802508 () Unit!115155)

(declare-fun Unit!115166 () Unit!115155)

(assert (=> b!4639700 (= lt!1802508 Unit!115166)))

(assert (=> b!4639700 (forall!10930 (toList!5115 lt!1802519) lambda!195860)))

(declare-fun lt!1802510 () Unit!115155)

(declare-fun Unit!115167 () Unit!115155)

(assert (=> b!4639700 (= lt!1802510 Unit!115167)))

(declare-fun lt!1802525 () Unit!115155)

(declare-fun Unit!115168 () Unit!115155)

(assert (=> b!4639700 (= lt!1802525 Unit!115168)))

(declare-fun lt!1802511 () Unit!115155)

(declare-fun addForallContainsKeyThenBeforeAdding!556 (ListMap!4439 ListMap!4439 K!13113 V!13359) Unit!115155)

(assert (=> b!4639700 (= lt!1802511 (addForallContainsKeyThenBeforeAdding!556 lt!1802392 lt!1802526 (_1!29687 (h!57846 oldBucket!40)) (_2!29687 (h!57846 oldBucket!40))))))

(declare-fun call!323882 () Bool)

(assert (=> b!4639700 call!323882))

(declare-fun lt!1802515 () Unit!115155)

(assert (=> b!4639700 (= lt!1802515 lt!1802511)))

(assert (=> b!4639700 (forall!10930 (toList!5115 lt!1802392) lambda!195860)))

(declare-fun lt!1802520 () Unit!115155)

(declare-fun Unit!115169 () Unit!115155)

(assert (=> b!4639700 (= lt!1802520 Unit!115169)))

(declare-fun res!1948403 () Bool)

(declare-fun call!323881 () Bool)

(assert (=> b!4639700 (= res!1948403 call!323881)))

(declare-fun e!2894298 () Bool)

(assert (=> b!4639700 (=> (not res!1948403) (not e!2894298))))

(assert (=> b!4639700 e!2894298))

(declare-fun lt!1802513 () Unit!115155)

(declare-fun Unit!115170 () Unit!115155)

(assert (=> b!4639700 (= lt!1802513 Unit!115170)))

(declare-fun e!2894297 () Bool)

(assert (=> d!1462763 e!2894297))

(declare-fun res!1948404 () Bool)

(assert (=> d!1462763 (=> (not res!1948404) (not e!2894297))))

(assert (=> d!1462763 (= res!1948404 (forall!10930 oldBucket!40 lambda!195861))))

(assert (=> d!1462763 (= lt!1802514 e!2894296)))

(declare-fun c!793935 () Bool)

(assert (=> d!1462763 (= c!793935 (is-Nil!51744 oldBucket!40))))

(assert (=> d!1462763 (noDuplicateKeys!1585 oldBucket!40)))

(assert (=> d!1462763 (= (addToMapMapFromBucket!1044 oldBucket!40 lt!1802392) lt!1802514)))

(assert (=> b!4639701 (= e!2894296 lt!1802392)))

(declare-fun lt!1802524 () Unit!115155)

(assert (=> b!4639701 (= lt!1802524 call!323883)))

(assert (=> b!4639701 call!323881))

(declare-fun lt!1802522 () Unit!115155)

(assert (=> b!4639701 (= lt!1802522 lt!1802524)))

(assert (=> b!4639701 call!323882))

(declare-fun lt!1802512 () Unit!115155)

(declare-fun Unit!115171 () Unit!115155)

(assert (=> b!4639701 (= lt!1802512 Unit!115171)))

(declare-fun bm!323876 () Bool)

(assert (=> bm!323876 (= call!323881 (forall!10930 (ite c!793935 (toList!5115 lt!1802392) oldBucket!40) (ite c!793935 lambda!195858 lambda!195860)))))

(declare-fun bm!323877 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!557 (ListMap!4439) Unit!115155)

(assert (=> bm!323877 (= call!323883 (lemmaContainsAllItsOwnKeys!557 lt!1802392))))

(declare-fun b!4639702 () Bool)

(assert (=> b!4639702 (= e!2894298 (forall!10930 (toList!5115 lt!1802392) lambda!195860))))

(declare-fun b!4639703 () Bool)

(assert (=> b!4639703 (= e!2894297 (invariantList!1255 (toList!5115 lt!1802514)))))

(declare-fun b!4639704 () Bool)

(declare-fun res!1948402 () Bool)

(assert (=> b!4639704 (=> (not res!1948402) (not e!2894297))))

(assert (=> b!4639704 (= res!1948402 (forall!10930 (toList!5115 lt!1802392) lambda!195861))))

(declare-fun bm!323878 () Bool)

(assert (=> bm!323878 (= call!323882 (forall!10930 (toList!5115 lt!1802392) (ite c!793935 lambda!195858 lambda!195860)))))

(assert (= (and d!1462763 c!793935) b!4639701))

(assert (= (and d!1462763 (not c!793935)) b!4639700))

(assert (= (and b!4639700 res!1948403) b!4639702))

(assert (= (or b!4639701 b!4639700) bm!323877))

(assert (= (or b!4639701 b!4639700) bm!323876))

(assert (= (or b!4639701 b!4639700) bm!323878))

(assert (= (and d!1462763 res!1948404) b!4639704))

(assert (= (and b!4639704 res!1948402) b!4639703))

(declare-fun m!5499131 () Bool)

(assert (=> d!1462763 m!5499131))

(assert (=> d!1462763 m!5499021))

(declare-fun m!5499133 () Bool)

(assert (=> bm!323877 m!5499133))

(declare-fun m!5499135 () Bool)

(assert (=> b!4639704 m!5499135))

(declare-fun m!5499137 () Bool)

(assert (=> bm!323878 m!5499137))

(declare-fun m!5499139 () Bool)

(assert (=> b!4639700 m!5499139))

(declare-fun m!5499141 () Bool)

(assert (=> b!4639700 m!5499141))

(declare-fun m!5499143 () Bool)

(assert (=> b!4639700 m!5499143))

(declare-fun m!5499145 () Bool)

(assert (=> b!4639700 m!5499145))

(declare-fun m!5499147 () Bool)

(assert (=> b!4639700 m!5499147))

(declare-fun m!5499149 () Bool)

(assert (=> b!4639700 m!5499149))

(declare-fun m!5499151 () Bool)

(assert (=> b!4639700 m!5499151))

(declare-fun m!5499153 () Bool)

(assert (=> b!4639700 m!5499153))

(assert (=> b!4639700 m!5499153))

(declare-fun m!5499155 () Bool)

(assert (=> b!4639700 m!5499155))

(assert (=> b!4639700 m!5499145))

(declare-fun m!5499157 () Bool)

(assert (=> b!4639700 m!5499157))

(declare-fun m!5499159 () Bool)

(assert (=> b!4639700 m!5499159))

(declare-fun m!5499161 () Bool)

(assert (=> bm!323876 m!5499161))

(assert (=> b!4639702 m!5499141))

(declare-fun m!5499163 () Bool)

(assert (=> b!4639703 m!5499163))

(assert (=> b!4639588 d!1462763))

(declare-fun bs!1033057 () Bool)

(declare-fun d!1462765 () Bool)

(assert (= bs!1033057 (and d!1462765 b!4639593)))

(declare-fun lambda!195862 () Int)

(assert (=> bs!1033057 (= lambda!195862 lambda!195819)))

(declare-fun bs!1033058 () Bool)

(assert (= bs!1033058 (and d!1462765 d!1462747)))

(assert (=> bs!1033058 (= lambda!195862 lambda!195825)))

(declare-fun lt!1802527 () ListMap!4439)

(assert (=> d!1462765 (invariantList!1255 (toList!5115 lt!1802527))))

(declare-fun e!2894299 () ListMap!4439)

(assert (=> d!1462765 (= lt!1802527 e!2894299)))

(declare-fun c!793936 () Bool)

(assert (=> d!1462765 (= c!793936 (is-Cons!51745 Nil!51745))))

(assert (=> d!1462765 (forall!10929 Nil!51745 lambda!195862)))

(assert (=> d!1462765 (= (extractMap!1641 Nil!51745) lt!1802527)))

(declare-fun b!4639707 () Bool)

(assert (=> b!4639707 (= e!2894299 (addToMapMapFromBucket!1044 (_2!29688 (h!57847 Nil!51745)) (extractMap!1641 (t!358951 Nil!51745))))))

(declare-fun b!4639708 () Bool)

(assert (=> b!4639708 (= e!2894299 (ListMap!4440 Nil!51744))))

(assert (= (and d!1462765 c!793936) b!4639707))

(assert (= (and d!1462765 (not c!793936)) b!4639708))

(declare-fun m!5499165 () Bool)

(assert (=> d!1462765 m!5499165))

(declare-fun m!5499167 () Bool)

(assert (=> d!1462765 m!5499167))

(declare-fun m!5499169 () Bool)

(assert (=> b!4639707 m!5499169))

(assert (=> b!4639707 m!5499169))

(declare-fun m!5499171 () Bool)

(assert (=> b!4639707 m!5499171))

(assert (=> b!4639588 d!1462765))

(declare-fun bs!1033059 () Bool)

(declare-fun d!1462767 () Bool)

(assert (= bs!1033059 (and d!1462767 b!4639593)))

(declare-fun lambda!195865 () Int)

(assert (=> bs!1033059 (= lambda!195865 lambda!195819)))

(declare-fun bs!1033060 () Bool)

(assert (= bs!1033060 (and d!1462767 d!1462747)))

(assert (=> bs!1033060 (= lambda!195865 lambda!195825)))

(declare-fun bs!1033061 () Bool)

(assert (= bs!1033061 (and d!1462767 d!1462765)))

(assert (=> bs!1033061 (= lambda!195865 lambda!195862)))

(assert (=> d!1462767 (contains!14854 lt!1802393 (hash!3671 hashF!1389 key!4968))))

(declare-fun lt!1802530 () Unit!115155)

(declare-fun choose!31735 (ListLongMap!3685 K!13113 Hashable!5982) Unit!115155)

(assert (=> d!1462767 (= lt!1802530 (choose!31735 lt!1802393 key!4968 hashF!1389))))

(assert (=> d!1462767 (forall!10929 (toList!5116 lt!1802393) lambda!195865)))

(assert (=> d!1462767 (= (lemmaInGenMapThenLongMapContainsHash!551 lt!1802393 key!4968 hashF!1389) lt!1802530)))

(declare-fun bs!1033062 () Bool)

(assert (= bs!1033062 d!1462767))

(assert (=> bs!1033062 m!5499029))

(assert (=> bs!1033062 m!5499029))

(declare-fun m!5499173 () Bool)

(assert (=> bs!1033062 m!5499173))

(declare-fun m!5499175 () Bool)

(assert (=> bs!1033062 m!5499175))

(declare-fun m!5499177 () Bool)

(assert (=> bs!1033062 m!5499177))

(assert (=> b!4639593 d!1462767))

(declare-fun d!1462769 () Bool)

(declare-fun isEmpty!28971 (Option!11729) Bool)

(assert (=> d!1462769 (= (isDefined!8994 (getPair!345 lt!1802396 key!4968)) (not (isEmpty!28971 (getPair!345 lt!1802396 key!4968))))))

(declare-fun bs!1033063 () Bool)

(assert (= bs!1033063 d!1462769))

(assert (=> bs!1033063 m!5499003))

(declare-fun m!5499179 () Bool)

(assert (=> bs!1033063 m!5499179))

(assert (=> b!4639593 d!1462769))

(declare-fun d!1462771 () Bool)

(declare-datatypes ((Option!11732 0))(
  ( (None!11731) (Some!11731 (v!45945 List!51868)) )
))
(declare-fun get!17199 (Option!11732) List!51868)

(declare-fun getValueByKey!1544 (List!51869 (_ BitVec 64)) Option!11732)

(assert (=> d!1462771 (= (apply!12218 lt!1802393 lt!1802395) (get!17199 (getValueByKey!1544 (toList!5116 lt!1802393) lt!1802395)))))

(declare-fun bs!1033064 () Bool)

(assert (= bs!1033064 d!1462771))

(declare-fun m!5499181 () Bool)

(assert (=> bs!1033064 m!5499181))

(assert (=> bs!1033064 m!5499181))

(declare-fun m!5499183 () Bool)

(assert (=> bs!1033064 m!5499183))

(assert (=> b!4639593 d!1462771))

(declare-fun d!1462773 () Bool)

(assert (=> d!1462773 (containsKey!2607 oldBucket!40 key!4968)))

(declare-fun lt!1802533 () Unit!115155)

(declare-fun choose!31736 (List!51868 K!13113 Hashable!5982) Unit!115155)

(assert (=> d!1462773 (= lt!1802533 (choose!31736 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1462773 (noDuplicateKeys!1585 oldBucket!40)))

(assert (=> d!1462773 (= (lemmaGetPairDefinedThenContainsKey!99 oldBucket!40 key!4968 hashF!1389) lt!1802533)))

(declare-fun bs!1033065 () Bool)

(assert (= bs!1033065 d!1462773))

(assert (=> bs!1033065 m!5499007))

(declare-fun m!5499185 () Bool)

(assert (=> bs!1033065 m!5499185))

(assert (=> bs!1033065 m!5499021))

(assert (=> b!4639593 d!1462773))

(declare-fun d!1462775 () Bool)

(declare-fun dynLambda!21539 (Int tuple2!52788) Bool)

(assert (=> d!1462775 (dynLambda!21539 lambda!195819 lt!1802387)))

(declare-fun lt!1802536 () Unit!115155)

(declare-fun choose!31737 (List!51869 Int tuple2!52788) Unit!115155)

(assert (=> d!1462775 (= lt!1802536 (choose!31737 lt!1802388 lambda!195819 lt!1802387))))

(declare-fun e!2894302 () Bool)

(assert (=> d!1462775 e!2894302))

(declare-fun res!1948407 () Bool)

(assert (=> d!1462775 (=> (not res!1948407) (not e!2894302))))

(assert (=> d!1462775 (= res!1948407 (forall!10929 lt!1802388 lambda!195819))))

(assert (=> d!1462775 (= (forallContained!3149 lt!1802388 lambda!195819 lt!1802387) lt!1802536)))

(declare-fun b!4639711 () Bool)

(assert (=> b!4639711 (= e!2894302 (contains!14853 lt!1802388 lt!1802387))))

(assert (= (and d!1462775 res!1948407) b!4639711))

(declare-fun b_lambda!171037 () Bool)

(assert (=> (not b_lambda!171037) (not d!1462775)))

(declare-fun m!5499187 () Bool)

(assert (=> d!1462775 m!5499187))

(declare-fun m!5499189 () Bool)

(assert (=> d!1462775 m!5499189))

(declare-fun m!5499191 () Bool)

(assert (=> d!1462775 m!5499191))

(assert (=> b!4639711 m!5499015))

(assert (=> b!4639593 d!1462775))

(declare-fun b!4639728 () Bool)

(declare-fun e!2894316 () Bool)

(declare-fun lt!1802539 () Option!11729)

(declare-fun contains!14859 (List!51868 tuple2!52786) Bool)

(declare-fun get!17200 (Option!11729) tuple2!52786)

(assert (=> b!4639728 (= e!2894316 (contains!14859 lt!1802396 (get!17200 lt!1802539)))))

(declare-fun b!4639729 () Bool)

(declare-fun e!2894314 () Option!11729)

(assert (=> b!4639729 (= e!2894314 (getPair!345 (t!358950 lt!1802396) key!4968))))

(declare-fun b!4639730 () Bool)

(declare-fun e!2894313 () Option!11729)

(assert (=> b!4639730 (= e!2894313 (Some!11728 (h!57846 lt!1802396)))))

(declare-fun b!4639731 () Bool)

(assert (=> b!4639731 (= e!2894313 e!2894314)))

(declare-fun c!793941 () Bool)

(assert (=> b!4639731 (= c!793941 (is-Cons!51744 lt!1802396))))

(declare-fun b!4639732 () Bool)

(assert (=> b!4639732 (= e!2894314 None!11728)))

(declare-fun b!4639733 () Bool)

(declare-fun res!1948419 () Bool)

(assert (=> b!4639733 (=> (not res!1948419) (not e!2894316))))

(assert (=> b!4639733 (= res!1948419 (= (_1!29687 (get!17200 lt!1802539)) key!4968))))

(declare-fun b!4639734 () Bool)

(declare-fun e!2894315 () Bool)

(assert (=> b!4639734 (= e!2894315 (not (containsKey!2607 lt!1802396 key!4968)))))

(declare-fun d!1462777 () Bool)

(declare-fun e!2894317 () Bool)

(assert (=> d!1462777 e!2894317))

(declare-fun res!1948418 () Bool)

(assert (=> d!1462777 (=> res!1948418 e!2894317)))

(assert (=> d!1462777 (= res!1948418 e!2894315)))

(declare-fun res!1948416 () Bool)

(assert (=> d!1462777 (=> (not res!1948416) (not e!2894315))))

(assert (=> d!1462777 (= res!1948416 (isEmpty!28971 lt!1802539))))

(assert (=> d!1462777 (= lt!1802539 e!2894313)))

(declare-fun c!793942 () Bool)

(assert (=> d!1462777 (= c!793942 (and (is-Cons!51744 lt!1802396) (= (_1!29687 (h!57846 lt!1802396)) key!4968)))))

(assert (=> d!1462777 (noDuplicateKeys!1585 lt!1802396)))

(assert (=> d!1462777 (= (getPair!345 lt!1802396 key!4968) lt!1802539)))

(declare-fun b!4639735 () Bool)

(assert (=> b!4639735 (= e!2894317 e!2894316)))

(declare-fun res!1948417 () Bool)

(assert (=> b!4639735 (=> (not res!1948417) (not e!2894316))))

(assert (=> b!4639735 (= res!1948417 (isDefined!8994 lt!1802539))))

(assert (= (and d!1462777 c!793942) b!4639730))

(assert (= (and d!1462777 (not c!793942)) b!4639731))

(assert (= (and b!4639731 c!793941) b!4639729))

(assert (= (and b!4639731 (not c!793941)) b!4639732))

(assert (= (and d!1462777 res!1948416) b!4639734))

(assert (= (and d!1462777 (not res!1948418)) b!4639735))

(assert (= (and b!4639735 res!1948417) b!4639733))

(assert (= (and b!4639733 res!1948419) b!4639728))

(declare-fun m!5499193 () Bool)

(assert (=> b!4639733 m!5499193))

(declare-fun m!5499195 () Bool)

(assert (=> b!4639734 m!5499195))

(declare-fun m!5499197 () Bool)

(assert (=> d!1462777 m!5499197))

(declare-fun m!5499199 () Bool)

(assert (=> d!1462777 m!5499199))

(declare-fun m!5499201 () Bool)

(assert (=> b!4639729 m!5499201))

(assert (=> b!4639728 m!5499193))

(assert (=> b!4639728 m!5499193))

(declare-fun m!5499203 () Bool)

(assert (=> b!4639728 m!5499203))

(declare-fun m!5499205 () Bool)

(assert (=> b!4639735 m!5499205))

(assert (=> b!4639593 d!1462777))

(declare-fun d!1462779 () Bool)

(declare-fun res!1948424 () Bool)

(declare-fun e!2894322 () Bool)

(assert (=> d!1462779 (=> res!1948424 e!2894322)))

(assert (=> d!1462779 (= res!1948424 (and (is-Cons!51744 (t!358950 oldBucket!40)) (= (_1!29687 (h!57846 (t!358950 oldBucket!40))) key!4968)))))

(assert (=> d!1462779 (= (containsKey!2607 (t!358950 oldBucket!40) key!4968) e!2894322)))

(declare-fun b!4639740 () Bool)

(declare-fun e!2894323 () Bool)

(assert (=> b!4639740 (= e!2894322 e!2894323)))

(declare-fun res!1948425 () Bool)

(assert (=> b!4639740 (=> (not res!1948425) (not e!2894323))))

(assert (=> b!4639740 (= res!1948425 (is-Cons!51744 (t!358950 oldBucket!40)))))

(declare-fun b!4639741 () Bool)

(assert (=> b!4639741 (= e!2894323 (containsKey!2607 (t!358950 (t!358950 oldBucket!40)) key!4968))))

(assert (= (and d!1462779 (not res!1948424)) b!4639740))

(assert (= (and b!4639740 res!1948425) b!4639741))

(declare-fun m!5499207 () Bool)

(assert (=> b!4639741 m!5499207))

(assert (=> b!4639593 d!1462779))

(declare-fun d!1462781 () Bool)

(declare-fun lt!1802542 () Bool)

(declare-fun content!8930 (List!51869) (Set tuple2!52788))

(assert (=> d!1462781 (= lt!1802542 (set.member lt!1802387 (content!8930 lt!1802388)))))

(declare-fun e!2894328 () Bool)

(assert (=> d!1462781 (= lt!1802542 e!2894328)))

(declare-fun res!1948431 () Bool)

(assert (=> d!1462781 (=> (not res!1948431) (not e!2894328))))

(assert (=> d!1462781 (= res!1948431 (is-Cons!51745 lt!1802388))))

(assert (=> d!1462781 (= (contains!14853 lt!1802388 lt!1802387) lt!1802542)))

(declare-fun b!4639746 () Bool)

(declare-fun e!2894329 () Bool)

(assert (=> b!4639746 (= e!2894328 e!2894329)))

(declare-fun res!1948430 () Bool)

(assert (=> b!4639746 (=> res!1948430 e!2894329)))

(assert (=> b!4639746 (= res!1948430 (= (h!57847 lt!1802388) lt!1802387))))

(declare-fun b!4639747 () Bool)

(assert (=> b!4639747 (= e!2894329 (contains!14853 (t!358951 lt!1802388) lt!1802387))))

(assert (= (and d!1462781 res!1948431) b!4639746))

(assert (= (and b!4639746 (not res!1948430)) b!4639747))

(declare-fun m!5499209 () Bool)

(assert (=> d!1462781 m!5499209))

(declare-fun m!5499211 () Bool)

(assert (=> d!1462781 m!5499211))

(declare-fun m!5499213 () Bool)

(assert (=> b!4639747 m!5499213))

(assert (=> b!4639593 d!1462781))

(declare-fun d!1462783 () Bool)

(declare-fun res!1948432 () Bool)

(declare-fun e!2894330 () Bool)

(assert (=> d!1462783 (=> res!1948432 e!2894330)))

(assert (=> d!1462783 (= res!1948432 (and (is-Cons!51744 oldBucket!40) (= (_1!29687 (h!57846 oldBucket!40)) key!4968)))))

(assert (=> d!1462783 (= (containsKey!2607 oldBucket!40 key!4968) e!2894330)))

(declare-fun b!4639748 () Bool)

(declare-fun e!2894331 () Bool)

(assert (=> b!4639748 (= e!2894330 e!2894331)))

(declare-fun res!1948433 () Bool)

(assert (=> b!4639748 (=> (not res!1948433) (not e!2894331))))

(assert (=> b!4639748 (= res!1948433 (is-Cons!51744 oldBucket!40))))

(declare-fun b!4639749 () Bool)

(assert (=> b!4639749 (= e!2894331 (containsKey!2607 (t!358950 oldBucket!40) key!4968))))

(assert (= (and d!1462783 (not res!1948432)) b!4639748))

(assert (= (and b!4639748 res!1948433) b!4639749))

(assert (=> b!4639749 m!5499013))

(assert (=> b!4639593 d!1462783))

(declare-fun d!1462785 () Bool)

(assert (=> d!1462785 (contains!14853 (toList!5116 lt!1802393) (tuple2!52789 lt!1802395 lt!1802396))))

(declare-fun lt!1802545 () Unit!115155)

(declare-fun choose!31738 (ListLongMap!3685 (_ BitVec 64) List!51868) Unit!115155)

(assert (=> d!1462785 (= lt!1802545 (choose!31738 lt!1802393 lt!1802395 lt!1802396))))

(assert (=> d!1462785 (contains!14854 lt!1802393 lt!1802395)))

(assert (=> d!1462785 (= (lemmaGetValueImpliesTupleContained!150 lt!1802393 lt!1802395 lt!1802396) lt!1802545)))

(declare-fun bs!1033066 () Bool)

(assert (= bs!1033066 d!1462785))

(declare-fun m!5499215 () Bool)

(assert (=> bs!1033066 m!5499215))

(declare-fun m!5499217 () Bool)

(assert (=> bs!1033066 m!5499217))

(assert (=> bs!1033066 m!5499011))

(assert (=> b!4639593 d!1462785))

(declare-fun d!1462787 () Bool)

(declare-fun e!2894339 () Bool)

(assert (=> d!1462787 e!2894339))

(declare-fun res!1948436 () Bool)

(assert (=> d!1462787 (=> res!1948436 e!2894339)))

(declare-fun lt!1802579 () Bool)

(assert (=> d!1462787 (= res!1948436 (not lt!1802579))))

(declare-fun lt!1802581 () Bool)

(assert (=> d!1462787 (= lt!1802579 lt!1802581)))

(declare-fun lt!1802580 () Unit!115155)

(declare-fun e!2894338 () Unit!115155)

(assert (=> d!1462787 (= lt!1802580 e!2894338)))

(declare-fun c!793947 () Bool)

(assert (=> d!1462787 (= c!793947 lt!1802581)))

(declare-fun containsKey!2610 (List!51869 (_ BitVec 64)) Bool)

(assert (=> d!1462787 (= lt!1802581 (containsKey!2610 (toList!5116 lt!1802393) lt!1802395))))

(assert (=> d!1462787 (= (contains!14854 lt!1802393 lt!1802395) lt!1802579)))

(declare-fun b!4639761 () Bool)

(declare-fun lt!1802578 () Unit!115155)

(assert (=> b!4639761 (= e!2894338 lt!1802578)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1446 (List!51869 (_ BitVec 64)) Unit!115155)

(assert (=> b!4639761 (= lt!1802578 (lemmaContainsKeyImpliesGetValueByKeyDefined!1446 (toList!5116 lt!1802393) lt!1802395))))

(declare-fun isDefined!8997 (Option!11732) Bool)

(assert (=> b!4639761 (isDefined!8997 (getValueByKey!1544 (toList!5116 lt!1802393) lt!1802395))))

(declare-fun b!4639762 () Bool)

(declare-fun Unit!115172 () Unit!115155)

(assert (=> b!4639762 (= e!2894338 Unit!115172)))

(declare-fun b!4639763 () Bool)

(assert (=> b!4639763 (= e!2894339 (isDefined!8997 (getValueByKey!1544 (toList!5116 lt!1802393) lt!1802395)))))

(assert (= (and d!1462787 c!793947) b!4639761))

(assert (= (and d!1462787 (not c!793947)) b!4639762))

(assert (= (and d!1462787 (not res!1948436)) b!4639763))

(declare-fun m!5499219 () Bool)

(assert (=> d!1462787 m!5499219))

(declare-fun m!5499221 () Bool)

(assert (=> b!4639761 m!5499221))

(assert (=> b!4639761 m!5499181))

(assert (=> b!4639761 m!5499181))

(declare-fun m!5499223 () Bool)

(assert (=> b!4639761 m!5499223))

(assert (=> b!4639763 m!5499181))

(assert (=> b!4639763 m!5499181))

(assert (=> b!4639763 m!5499223))

(assert (=> b!4639593 d!1462787))

(declare-fun bs!1033075 () Bool)

(declare-fun d!1462789 () Bool)

(assert (= bs!1033075 (and d!1462789 b!4639593)))

(declare-fun lambda!195910 () Int)

(assert (=> bs!1033075 (= lambda!195910 lambda!195819)))

(declare-fun bs!1033076 () Bool)

(assert (= bs!1033076 (and d!1462789 d!1462747)))

(assert (=> bs!1033076 (= lambda!195910 lambda!195825)))

(declare-fun bs!1033077 () Bool)

(assert (= bs!1033077 (and d!1462789 d!1462765)))

(assert (=> bs!1033077 (= lambda!195910 lambda!195862)))

(declare-fun bs!1033078 () Bool)

(assert (= bs!1033078 (and d!1462789 d!1462767)))

(assert (=> bs!1033078 (= lambda!195910 lambda!195865)))

(declare-fun e!2894357 () Bool)

(declare-fun b!4639801 () Bool)

(declare-fun lt!1802644 () (_ BitVec 64))

(declare-fun lt!1802646 () List!51868)

(assert (=> b!4639801 (= e!2894357 (= (getValueByKey!1544 (toList!5116 lt!1802393) lt!1802644) (Some!11731 lt!1802646)))))

(declare-fun e!2894358 () Bool)

(declare-fun b!4639800 () Bool)

(assert (=> b!4639800 (= e!2894358 (isDefined!8994 (getPair!345 (apply!12218 lt!1802393 (hash!3671 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1802645 () Unit!115155)

(assert (=> b!4639800 (= lt!1802645 (forallContained!3149 (toList!5116 lt!1802393) lambda!195910 (tuple2!52789 (hash!3671 hashF!1389 key!4968) (apply!12218 lt!1802393 (hash!3671 hashF!1389 key!4968)))))))

(declare-fun lt!1802650 () Unit!115155)

(declare-fun lt!1802649 () Unit!115155)

(assert (=> b!4639800 (= lt!1802650 lt!1802649)))

(assert (=> b!4639800 (contains!14853 (toList!5116 lt!1802393) (tuple2!52789 lt!1802644 lt!1802646))))

(assert (=> b!4639800 (= lt!1802649 (lemmaGetValueImpliesTupleContained!150 lt!1802393 lt!1802644 lt!1802646))))

(assert (=> b!4639800 e!2894357))

(declare-fun res!1948458 () Bool)

(assert (=> b!4639800 (=> (not res!1948458) (not e!2894357))))

(assert (=> b!4639800 (= res!1948458 (contains!14854 lt!1802393 lt!1802644))))

(assert (=> b!4639800 (= lt!1802646 (apply!12218 lt!1802393 (hash!3671 hashF!1389 key!4968)))))

(assert (=> b!4639800 (= lt!1802644 (hash!3671 hashF!1389 key!4968))))

(declare-fun lt!1802648 () Unit!115155)

(declare-fun lt!1802647 () Unit!115155)

(assert (=> b!4639800 (= lt!1802648 lt!1802647)))

(assert (=> b!4639800 (contains!14854 lt!1802393 (hash!3671 hashF!1389 key!4968))))

(assert (=> b!4639800 (= lt!1802647 (lemmaInGenMapThenLongMapContainsHash!551 lt!1802393 key!4968 hashF!1389))))

(declare-fun b!4639799 () Bool)

(declare-fun res!1948459 () Bool)

(assert (=> b!4639799 (=> (not res!1948459) (not e!2894358))))

(assert (=> b!4639799 (= res!1948459 (contains!14852 (extractMap!1641 (toList!5116 lt!1802393)) key!4968))))

(declare-fun b!4639798 () Bool)

(declare-fun res!1948457 () Bool)

(assert (=> b!4639798 (=> (not res!1948457) (not e!2894358))))

(declare-fun allKeysSameHashInMap!1571 (ListLongMap!3685 Hashable!5982) Bool)

(assert (=> b!4639798 (= res!1948457 (allKeysSameHashInMap!1571 lt!1802393 hashF!1389))))

(assert (=> d!1462789 e!2894358))

(declare-fun res!1948460 () Bool)

(assert (=> d!1462789 (=> (not res!1948460) (not e!2894358))))

(assert (=> d!1462789 (= res!1948460 (forall!10929 (toList!5116 lt!1802393) lambda!195910))))

(declare-fun lt!1802643 () Unit!115155)

(declare-fun choose!31739 (ListLongMap!3685 K!13113 Hashable!5982) Unit!115155)

(assert (=> d!1462789 (= lt!1802643 (choose!31739 lt!1802393 key!4968 hashF!1389))))

(assert (=> d!1462789 (forall!10929 (toList!5116 lt!1802393) lambda!195910)))

(assert (=> d!1462789 (= (lemmaInGenMapThenGetPairDefined!141 lt!1802393 key!4968 hashF!1389) lt!1802643)))

(assert (= (and d!1462789 res!1948460) b!4639798))

(assert (= (and b!4639798 res!1948457) b!4639799))

(assert (= (and b!4639799 res!1948459) b!4639800))

(assert (= (and b!4639800 res!1948458) b!4639801))

(assert (=> b!4639800 m!5499029))

(assert (=> b!4639800 m!5499173))

(assert (=> b!4639800 m!5499029))

(declare-fun m!5499273 () Bool)

(assert (=> b!4639800 m!5499273))

(declare-fun m!5499277 () Bool)

(assert (=> b!4639800 m!5499277))

(declare-fun m!5499281 () Bool)

(assert (=> b!4639800 m!5499281))

(declare-fun m!5499283 () Bool)

(assert (=> b!4639800 m!5499283))

(declare-fun m!5499285 () Bool)

(assert (=> b!4639800 m!5499285))

(assert (=> b!4639800 m!5499001))

(declare-fun m!5499287 () Bool)

(assert (=> b!4639800 m!5499287))

(assert (=> b!4639800 m!5499029))

(assert (=> b!4639800 m!5499273))

(assert (=> b!4639800 m!5499283))

(declare-fun m!5499289 () Bool)

(assert (=> b!4639800 m!5499289))

(declare-fun m!5499291 () Bool)

(assert (=> b!4639801 m!5499291))

(declare-fun m!5499293 () Bool)

(assert (=> d!1462789 m!5499293))

(declare-fun m!5499295 () Bool)

(assert (=> d!1462789 m!5499295))

(assert (=> d!1462789 m!5499293))

(declare-fun m!5499297 () Bool)

(assert (=> b!4639798 m!5499297))

(declare-fun m!5499299 () Bool)

(assert (=> b!4639799 m!5499299))

(assert (=> b!4639799 m!5499299))

(declare-fun m!5499301 () Bool)

(assert (=> b!4639799 m!5499301))

(assert (=> b!4639593 d!1462789))

(declare-fun d!1462801 () Bool)

(declare-fun res!1948461 () Bool)

(declare-fun e!2894359 () Bool)

(assert (=> d!1462801 (=> res!1948461 e!2894359)))

(assert (=> d!1462801 (= res!1948461 (not (is-Cons!51744 oldBucket!40)))))

(assert (=> d!1462801 (= (noDuplicateKeys!1585 oldBucket!40) e!2894359)))

(declare-fun b!4639803 () Bool)

(declare-fun e!2894360 () Bool)

(assert (=> b!4639803 (= e!2894359 e!2894360)))

(declare-fun res!1948462 () Bool)

(assert (=> b!4639803 (=> (not res!1948462) (not e!2894360))))

(assert (=> b!4639803 (= res!1948462 (not (containsKey!2607 (t!358950 oldBucket!40) (_1!29687 (h!57846 oldBucket!40)))))))

(declare-fun b!4639804 () Bool)

(assert (=> b!4639804 (= e!2894360 (noDuplicateKeys!1585 (t!358950 oldBucket!40)))))

(assert (= (and d!1462801 (not res!1948461)) b!4639803))

(assert (= (and b!4639803 res!1948462) b!4639804))

(declare-fun m!5499303 () Bool)

(assert (=> b!4639803 m!5499303))

(declare-fun m!5499305 () Bool)

(assert (=> b!4639804 m!5499305))

(assert (=> start!466378 d!1462801))

(declare-fun e!2894363 () Bool)

(declare-fun b!4639809 () Bool)

(declare-fun tp!1342798 () Bool)

(assert (=> b!4639809 (= e!2894363 (and tp_is_empty!29633 tp_is_empty!29635 tp!1342798))))

(assert (=> b!4639587 (= tp!1342789 e!2894363)))

(assert (= (and b!4639587 (is-Cons!51744 (t!358950 oldBucket!40))) b!4639809))

(declare-fun e!2894364 () Bool)

(declare-fun b!4639810 () Bool)

(declare-fun tp!1342799 () Bool)

(assert (=> b!4639810 (= e!2894364 (and tp_is_empty!29633 tp_is_empty!29635 tp!1342799))))

(assert (=> b!4639595 (= tp!1342788 e!2894364)))

(assert (= (and b!4639595 (is-Cons!51744 (t!358950 newBucket!224))) b!4639810))

(declare-fun b_lambda!171041 () Bool)

(assert (= b_lambda!171037 (or b!4639593 b_lambda!171041)))

(declare-fun bs!1033081 () Bool)

(declare-fun d!1462805 () Bool)

(assert (= bs!1033081 (and d!1462805 b!4639593)))

(assert (=> bs!1033081 (= (dynLambda!21539 lambda!195819 lt!1802387) (noDuplicateKeys!1585 (_2!29688 lt!1802387)))))

(declare-fun m!5499309 () Bool)

(assert (=> bs!1033081 m!5499309))

(assert (=> d!1462775 d!1462805))

(push 1)

(assert (not b!4639801))

(assert (not b!4639763))

(assert (not b!4639688))

(assert (not d!1462759))

(assert (not bm!323878))

(assert (not b!4639729))

(assert (not bm!323877))

(assert (not b!4639735))

(assert (not b!4639700))

(assert (not b!4639702))

(assert (not b!4639747))

(assert (not d!1462773))

(assert (not b_lambda!171041))

(assert (not b!4639654))

(assert (not d!1462767))

(assert (not d!1462761))

(assert (not d!1462777))

(assert (not b!4639728))

(assert (not d!1462775))

(assert (not b!4639648))

(assert (not b!4639647))

(assert (not b!4639803))

(assert (not b!4639703))

(assert (not b!4639655))

(assert (not d!1462753))

(assert (not b!4639711))

(assert (not b!4639676))

(assert (not bs!1033081))

(assert (not b!4639734))

(assert (not d!1462787))

(assert (not b!4639704))

(assert (not b!4639804))

(assert (not d!1462771))

(assert (not b!4639677))

(assert tp_is_empty!29635)

(assert (not d!1462757))

(assert (not b!4639800))

(assert (not b!4639810))

(assert (not b!4639651))

(assert (not b!4639653))

(assert (not b!4639749))

(assert (not d!1462747))

(assert (not bm!323869))

(assert (not d!1462743))

(assert (not b!4639649))

(assert (not b!4639798))

(assert (not b!4639733))

(assert (not b!4639707))

(assert tp_is_empty!29633)

(assert (not d!1462789))

(assert (not d!1462769))

(assert (not b!4639761))

(assert (not b!4639809))

(assert (not bm!323876))

(assert (not b!4639799))

(assert (not b!4639741))

(assert (not d!1462785))

(assert (not d!1462765))

(assert (not d!1462781))

(assert (not d!1462763))

(assert (not b!4639666))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

