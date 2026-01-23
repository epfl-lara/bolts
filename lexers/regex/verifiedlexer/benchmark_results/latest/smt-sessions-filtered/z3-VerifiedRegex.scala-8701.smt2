; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!463528 () Bool)

(assert start!463528)

(declare-fun b!4625107 () Bool)

(declare-fun res!1939438 () Bool)

(declare-fun e!2885058 () Bool)

(assert (=> b!4625107 (=> res!1939438 e!2885058)))

(declare-datatypes ((K!12910 0))(
  ( (K!12911 (val!18599 Int)) )
))
(declare-datatypes ((V!13156 0))(
  ( (V!13157 (val!18600 Int)) )
))
(declare-datatypes ((tuple2!52462 0))(
  ( (tuple2!52463 (_1!29525 K!12910) (_2!29525 V!13156)) )
))
(declare-datatypes ((List!51654 0))(
  ( (Nil!51530) (Cons!51530 (h!57580 tuple2!52462) (t!358686 List!51654)) )
))
(declare-fun lt!1782819 () List!51654)

(declare-fun oldBucket!40 () List!51654)

(declare-fun key!4968 () K!12910)

(declare-fun removePairForKey!1127 (List!51654 K!12910) List!51654)

(assert (=> b!4625107 (= res!1939438 (not (= (removePairForKey!1127 (t!358686 oldBucket!40) key!4968) lt!1782819)))))

(declare-fun b!4625108 () Bool)

(declare-fun res!1939441 () Bool)

(declare-fun e!2885053 () Bool)

(assert (=> b!4625108 (=> (not res!1939441) (not e!2885053))))

(declare-fun newBucket!224 () List!51654)

(declare-fun noDuplicateKeys!1504 (List!51654) Bool)

(assert (=> b!4625108 (= res!1939441 (noDuplicateKeys!1504 newBucket!224))))

(declare-fun b!4625109 () Bool)

(declare-fun e!2885057 () Bool)

(declare-fun e!2885060 () Bool)

(assert (=> b!4625109 (= e!2885057 e!2885060)))

(declare-fun res!1939443 () Bool)

(assert (=> b!4625109 (=> res!1939443 e!2885060)))

(declare-fun lt!1782798 () tuple2!52462)

(declare-datatypes ((ListMap!4277 0))(
  ( (ListMap!4278 (toList!4973 List!51654)) )
))
(declare-fun lt!1782801 () ListMap!4277)

(declare-fun lt!1782814 () ListMap!4277)

(declare-fun eq!819 (ListMap!4277 ListMap!4277) Bool)

(declare-fun +!1870 (ListMap!4277 tuple2!52462) ListMap!4277)

(assert (=> b!4625109 (= res!1939443 (not (eq!819 lt!1782801 (+!1870 lt!1782814 lt!1782798))))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((tuple2!52464 0))(
  ( (tuple2!52465 (_1!29526 (_ BitVec 64)) (_2!29526 List!51654)) )
))
(declare-datatypes ((List!51655 0))(
  ( (Nil!51531) (Cons!51531 (h!57581 tuple2!52464) (t!358687 List!51655)) )
))
(declare-fun extractMap!1560 (List!51655) ListMap!4277)

(assert (=> b!4625109 (= lt!1782814 (extractMap!1560 (Cons!51531 (tuple2!52465 hash!414 lt!1782819) Nil!51531)))))

(assert (=> b!4625109 (= lt!1782801 (extractMap!1560 (Cons!51531 (tuple2!52465 hash!414 newBucket!224) Nil!51531)))))

(declare-fun b!4625110 () Bool)

(declare-fun lt!1782796 () List!51655)

(declare-fun lambda!191976 () Int)

(declare-fun forall!10822 (List!51655 Int) Bool)

(assert (=> b!4625110 (= e!2885060 (forall!10822 lt!1782796 lambda!191976))))

(declare-fun lt!1782810 () ListMap!4277)

(declare-fun -!544 (ListMap!4277 K!12910) ListMap!4277)

(assert (=> b!4625110 (eq!819 lt!1782814 (-!544 lt!1782810 key!4968))))

(declare-datatypes ((Hashable!5901 0))(
  ( (HashableExt!5900 (__x!31604 Int)) )
))
(declare-fun hashF!1389 () Hashable!5901)

(declare-datatypes ((Unit!112017 0))(
  ( (Unit!112018) )
))
(declare-fun lt!1782817 () Unit!112017)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!106 ((_ BitVec 64) List!51654 List!51654 K!12910 Hashable!5901) Unit!112017)

(assert (=> b!4625110 (= lt!1782817 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!106 hash!414 (t!358686 oldBucket!40) lt!1782819 key!4968 hashF!1389))))

(declare-fun b!4625111 () Bool)

(declare-fun e!2885056 () Bool)

(assert (=> b!4625111 (= e!2885053 e!2885056)))

(declare-fun res!1939446 () Bool)

(assert (=> b!4625111 (=> (not res!1939446) (not e!2885056))))

(declare-fun lt!1782809 () ListMap!4277)

(declare-fun contains!14571 (ListMap!4277 K!12910) Bool)

(assert (=> b!4625111 (= res!1939446 (contains!14571 lt!1782809 key!4968))))

(declare-fun lt!1782803 () List!51655)

(assert (=> b!4625111 (= lt!1782809 (extractMap!1560 lt!1782803))))

(assert (=> b!4625111 (= lt!1782803 (Cons!51531 (tuple2!52465 hash!414 oldBucket!40) Nil!51531))))

(declare-fun b!4625112 () Bool)

(declare-fun res!1939439 () Bool)

(assert (=> b!4625112 (=> (not res!1939439) (not e!2885053))))

(assert (=> b!4625112 (= res!1939439 (= (removePairForKey!1127 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4625113 () Bool)

(declare-fun res!1939445 () Bool)

(assert (=> b!4625113 (=> (not res!1939445) (not e!2885053))))

(declare-fun allKeysSameHash!1358 (List!51654 (_ BitVec 64) Hashable!5901) Bool)

(assert (=> b!4625113 (= res!1939445 (allKeysSameHash!1358 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4625114 () Bool)

(declare-fun res!1939450 () Bool)

(declare-fun e!2885051 () Bool)

(assert (=> b!4625114 (=> (not res!1939450) (not e!2885051))))

(assert (=> b!4625114 (= res!1939450 (allKeysSameHash!1358 newBucket!224 hash!414 hashF!1389))))

(declare-fun e!2885055 () Bool)

(declare-fun tp_is_empty!29311 () Bool)

(declare-fun b!4625115 () Bool)

(declare-fun tp_is_empty!29309 () Bool)

(declare-fun tp!1342095 () Bool)

(assert (=> b!4625115 (= e!2885055 (and tp_is_empty!29309 tp_is_empty!29311 tp!1342095))))

(declare-fun b!4625116 () Bool)

(declare-fun e!2885052 () Bool)

(declare-fun lt!1782800 () ListMap!4277)

(assert (=> b!4625116 (= e!2885052 (= lt!1782800 (ListMap!4278 Nil!51530)))))

(declare-fun b!4625117 () Bool)

(declare-fun e!2885054 () Bool)

(assert (=> b!4625117 (= e!2885054 e!2885058)))

(declare-fun res!1939449 () Bool)

(assert (=> b!4625117 (=> res!1939449 e!2885058)))

(declare-fun lt!1782804 () List!51654)

(assert (=> b!4625117 (= res!1939449 (not (= (removePairForKey!1127 lt!1782804 key!4968) lt!1782819)))))

(declare-fun tail!8139 (List!51654) List!51654)

(assert (=> b!4625117 (= lt!1782819 (tail!8139 newBucket!224))))

(assert (=> b!4625117 (= lt!1782804 (tail!8139 oldBucket!40))))

(declare-fun b!4625118 () Bool)

(assert (=> b!4625118 (= e!2885058 e!2885057)))

(declare-fun res!1939447 () Bool)

(assert (=> b!4625118 (=> res!1939447 e!2885057)))

(assert (=> b!4625118 (= res!1939447 (not (eq!819 lt!1782809 (+!1870 (extractMap!1560 (Cons!51531 (tuple2!52465 hash!414 lt!1782804) Nil!51531)) (h!57580 oldBucket!40)))))))

(declare-fun addToMapMapFromBucket!965 (List!51654 ListMap!4277) ListMap!4277)

(assert (=> b!4625118 (eq!819 (addToMapMapFromBucket!965 (Cons!51530 lt!1782798 lt!1782819) (ListMap!4278 Nil!51530)) (+!1870 (addToMapMapFromBucket!965 lt!1782819 (ListMap!4278 Nil!51530)) lt!1782798))))

(declare-fun lt!1782797 () Unit!112017)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!70 (tuple2!52462 List!51654 ListMap!4277) Unit!112017)

(assert (=> b!4625118 (= lt!1782797 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!70 lt!1782798 lt!1782819 (ListMap!4278 Nil!51530)))))

(declare-fun head!9638 (List!51654) tuple2!52462)

(assert (=> b!4625118 (= lt!1782798 (head!9638 newBucket!224))))

(declare-fun lt!1782799 () tuple2!52462)

(assert (=> b!4625118 (eq!819 (addToMapMapFromBucket!965 (Cons!51530 lt!1782799 lt!1782804) (ListMap!4278 Nil!51530)) (+!1870 (addToMapMapFromBucket!965 lt!1782804 (ListMap!4278 Nil!51530)) lt!1782799))))

(declare-fun lt!1782807 () Unit!112017)

(assert (=> b!4625118 (= lt!1782807 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!70 lt!1782799 lt!1782804 (ListMap!4278 Nil!51530)))))

(assert (=> b!4625118 (= lt!1782799 (head!9638 oldBucket!40))))

(assert (=> b!4625118 (contains!14571 lt!1782810 key!4968)))

(assert (=> b!4625118 (= lt!1782810 (extractMap!1560 lt!1782796))))

(declare-fun lt!1782812 () Unit!112017)

(declare-datatypes ((ListLongMap!3563 0))(
  ( (ListLongMap!3564 (toList!4974 List!51655)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!322 (ListLongMap!3563 K!12910 Hashable!5901) Unit!112017)

(assert (=> b!4625118 (= lt!1782812 (lemmaListContainsThenExtractedMapContains!322 (ListLongMap!3564 lt!1782796) key!4968 hashF!1389))))

(assert (=> b!4625118 (= lt!1782796 (Cons!51531 (tuple2!52465 hash!414 (t!358686 oldBucket!40)) Nil!51531))))

(declare-fun b!4625119 () Bool)

(declare-fun e!2885059 () Bool)

(assert (=> b!4625119 (= e!2885051 (not e!2885059))))

(declare-fun res!1939437 () Bool)

(assert (=> b!4625119 (=> res!1939437 e!2885059)))

(get-info :version)

(assert (=> b!4625119 (= res!1939437 (or (and ((_ is Cons!51530) oldBucket!40) (= (_1!29525 (h!57580 oldBucket!40)) key!4968)) (not ((_ is Cons!51530) oldBucket!40)) (= (_1!29525 (h!57580 oldBucket!40)) key!4968)))))

(assert (=> b!4625119 e!2885052))

(declare-fun res!1939448 () Bool)

(assert (=> b!4625119 (=> (not res!1939448) (not e!2885052))))

(assert (=> b!4625119 (= res!1939448 (= lt!1782809 (addToMapMapFromBucket!965 oldBucket!40 lt!1782800)))))

(assert (=> b!4625119 (= lt!1782800 (extractMap!1560 Nil!51531))))

(assert (=> b!4625119 true))

(declare-fun res!1939442 () Bool)

(assert (=> start!463528 (=> (not res!1939442) (not e!2885053))))

(assert (=> start!463528 (= res!1939442 (noDuplicateKeys!1504 oldBucket!40))))

(assert (=> start!463528 e!2885053))

(assert (=> start!463528 true))

(declare-fun e!2885050 () Bool)

(assert (=> start!463528 e!2885050))

(assert (=> start!463528 tp_is_empty!29309))

(assert (=> start!463528 e!2885055))

(declare-fun b!4625120 () Bool)

(declare-fun tp!1342094 () Bool)

(assert (=> b!4625120 (= e!2885050 (and tp_is_empty!29309 tp_is_empty!29311 tp!1342094))))

(declare-fun b!4625121 () Bool)

(assert (=> b!4625121 (= e!2885056 e!2885051)))

(declare-fun res!1939440 () Bool)

(assert (=> b!4625121 (=> (not res!1939440) (not e!2885051))))

(declare-fun lt!1782815 () (_ BitVec 64))

(assert (=> b!4625121 (= res!1939440 (= lt!1782815 hash!414))))

(declare-fun hash!3497 (Hashable!5901 K!12910) (_ BitVec 64))

(assert (=> b!4625121 (= lt!1782815 (hash!3497 hashF!1389 key!4968))))

(declare-fun b!4625122 () Bool)

(assert (=> b!4625122 (= e!2885059 e!2885054)))

(declare-fun res!1939444 () Bool)

(assert (=> b!4625122 (=> res!1939444 e!2885054)))

(declare-fun containsKey!2444 (List!51654 K!12910) Bool)

(assert (=> b!4625122 (= res!1939444 (not (containsKey!2444 (t!358686 oldBucket!40) key!4968)))))

(assert (=> b!4625122 (containsKey!2444 oldBucket!40 key!4968)))

(declare-fun lt!1782813 () Unit!112017)

(declare-fun lemmaGetPairDefinedThenContainsKey!50 (List!51654 K!12910 Hashable!5901) Unit!112017)

(assert (=> b!4625122 (= lt!1782813 (lemmaGetPairDefinedThenContainsKey!50 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1782808 () List!51654)

(declare-datatypes ((Option!11586 0))(
  ( (None!11585) (Some!11585 (v!45711 tuple2!52462)) )
))
(declare-fun isDefined!8851 (Option!11586) Bool)

(declare-fun getPair!296 (List!51654 K!12910) Option!11586)

(assert (=> b!4625122 (isDefined!8851 (getPair!296 lt!1782808 key!4968))))

(declare-fun lt!1782806 () Unit!112017)

(declare-fun lt!1782802 () tuple2!52464)

(declare-fun forallContained!3048 (List!51655 Int tuple2!52464) Unit!112017)

(assert (=> b!4625122 (= lt!1782806 (forallContained!3048 lt!1782803 lambda!191976 lt!1782802))))

(declare-fun contains!14572 (List!51655 tuple2!52464) Bool)

(assert (=> b!4625122 (contains!14572 lt!1782803 lt!1782802)))

(assert (=> b!4625122 (= lt!1782802 (tuple2!52465 lt!1782815 lt!1782808))))

(declare-fun lt!1782818 () Unit!112017)

(declare-fun lt!1782811 () ListLongMap!3563)

(declare-fun lemmaGetValueImpliesTupleContained!101 (ListLongMap!3563 (_ BitVec 64) List!51654) Unit!112017)

(assert (=> b!4625122 (= lt!1782818 (lemmaGetValueImpliesTupleContained!101 lt!1782811 lt!1782815 lt!1782808))))

(declare-fun apply!12169 (ListLongMap!3563 (_ BitVec 64)) List!51654)

(assert (=> b!4625122 (= lt!1782808 (apply!12169 lt!1782811 lt!1782815))))

(declare-fun contains!14573 (ListLongMap!3563 (_ BitVec 64)) Bool)

(assert (=> b!4625122 (contains!14573 lt!1782811 lt!1782815)))

(declare-fun lt!1782805 () Unit!112017)

(declare-fun lemmaInGenMapThenLongMapContainsHash!502 (ListLongMap!3563 K!12910 Hashable!5901) Unit!112017)

(assert (=> b!4625122 (= lt!1782805 (lemmaInGenMapThenLongMapContainsHash!502 lt!1782811 key!4968 hashF!1389))))

(declare-fun lt!1782816 () Unit!112017)

(declare-fun lemmaInGenMapThenGetPairDefined!92 (ListLongMap!3563 K!12910 Hashable!5901) Unit!112017)

(assert (=> b!4625122 (= lt!1782816 (lemmaInGenMapThenGetPairDefined!92 lt!1782811 key!4968 hashF!1389))))

(assert (=> b!4625122 (= lt!1782811 (ListLongMap!3564 lt!1782803))))

(assert (= (and start!463528 res!1939442) b!4625108))

(assert (= (and b!4625108 res!1939441) b!4625112))

(assert (= (and b!4625112 res!1939439) b!4625113))

(assert (= (and b!4625113 res!1939445) b!4625111))

(assert (= (and b!4625111 res!1939446) b!4625121))

(assert (= (and b!4625121 res!1939440) b!4625114))

(assert (= (and b!4625114 res!1939450) b!4625119))

(assert (= (and b!4625119 res!1939448) b!4625116))

(assert (= (and b!4625119 (not res!1939437)) b!4625122))

(assert (= (and b!4625122 (not res!1939444)) b!4625117))

(assert (= (and b!4625117 (not res!1939449)) b!4625107))

(assert (= (and b!4625107 (not res!1939438)) b!4625118))

(assert (= (and b!4625118 (not res!1939447)) b!4625109))

(assert (= (and b!4625109 (not res!1939443)) b!4625110))

(assert (= (and start!463528 ((_ is Cons!51530) oldBucket!40)) b!4625120))

(assert (= (and start!463528 ((_ is Cons!51530) newBucket!224)) b!4625115))

(declare-fun m!5466259 () Bool)

(assert (=> b!4625121 m!5466259))

(declare-fun m!5466261 () Bool)

(assert (=> b!4625110 m!5466261))

(declare-fun m!5466263 () Bool)

(assert (=> b!4625110 m!5466263))

(assert (=> b!4625110 m!5466263))

(declare-fun m!5466265 () Bool)

(assert (=> b!4625110 m!5466265))

(declare-fun m!5466267 () Bool)

(assert (=> b!4625110 m!5466267))

(declare-fun m!5466269 () Bool)

(assert (=> b!4625117 m!5466269))

(declare-fun m!5466271 () Bool)

(assert (=> b!4625117 m!5466271))

(declare-fun m!5466273 () Bool)

(assert (=> b!4625117 m!5466273))

(declare-fun m!5466275 () Bool)

(assert (=> start!463528 m!5466275))

(declare-fun m!5466277 () Bool)

(assert (=> b!4625111 m!5466277))

(declare-fun m!5466279 () Bool)

(assert (=> b!4625111 m!5466279))

(declare-fun m!5466281 () Bool)

(assert (=> b!4625107 m!5466281))

(declare-fun m!5466283 () Bool)

(assert (=> b!4625114 m!5466283))

(declare-fun m!5466285 () Bool)

(assert (=> b!4625119 m!5466285))

(declare-fun m!5466287 () Bool)

(assert (=> b!4625119 m!5466287))

(declare-fun m!5466289 () Bool)

(assert (=> b!4625122 m!5466289))

(declare-fun m!5466291 () Bool)

(assert (=> b!4625122 m!5466291))

(declare-fun m!5466293 () Bool)

(assert (=> b!4625122 m!5466293))

(declare-fun m!5466295 () Bool)

(assert (=> b!4625122 m!5466295))

(declare-fun m!5466297 () Bool)

(assert (=> b!4625122 m!5466297))

(declare-fun m!5466299 () Bool)

(assert (=> b!4625122 m!5466299))

(declare-fun m!5466301 () Bool)

(assert (=> b!4625122 m!5466301))

(declare-fun m!5466303 () Bool)

(assert (=> b!4625122 m!5466303))

(declare-fun m!5466305 () Bool)

(assert (=> b!4625122 m!5466305))

(declare-fun m!5466307 () Bool)

(assert (=> b!4625122 m!5466307))

(assert (=> b!4625122 m!5466291))

(declare-fun m!5466309 () Bool)

(assert (=> b!4625122 m!5466309))

(declare-fun m!5466311 () Bool)

(assert (=> b!4625122 m!5466311))

(declare-fun m!5466313 () Bool)

(assert (=> b!4625113 m!5466313))

(declare-fun m!5466315 () Bool)

(assert (=> b!4625109 m!5466315))

(assert (=> b!4625109 m!5466315))

(declare-fun m!5466317 () Bool)

(assert (=> b!4625109 m!5466317))

(declare-fun m!5466319 () Bool)

(assert (=> b!4625109 m!5466319))

(declare-fun m!5466321 () Bool)

(assert (=> b!4625109 m!5466321))

(declare-fun m!5466323 () Bool)

(assert (=> b!4625118 m!5466323))

(declare-fun m!5466325 () Bool)

(assert (=> b!4625118 m!5466325))

(declare-fun m!5466327 () Bool)

(assert (=> b!4625118 m!5466327))

(declare-fun m!5466329 () Bool)

(assert (=> b!4625118 m!5466329))

(assert (=> b!4625118 m!5466323))

(declare-fun m!5466331 () Bool)

(assert (=> b!4625118 m!5466331))

(declare-fun m!5466333 () Bool)

(assert (=> b!4625118 m!5466333))

(declare-fun m!5466335 () Bool)

(assert (=> b!4625118 m!5466335))

(declare-fun m!5466337 () Bool)

(assert (=> b!4625118 m!5466337))

(declare-fun m!5466339 () Bool)

(assert (=> b!4625118 m!5466339))

(declare-fun m!5466341 () Bool)

(assert (=> b!4625118 m!5466341))

(assert (=> b!4625118 m!5466341))

(declare-fun m!5466343 () Bool)

(assert (=> b!4625118 m!5466343))

(assert (=> b!4625118 m!5466343))

(declare-fun m!5466345 () Bool)

(assert (=> b!4625118 m!5466345))

(assert (=> b!4625118 m!5466333))

(assert (=> b!4625118 m!5466327))

(declare-fun m!5466347 () Bool)

(assert (=> b!4625118 m!5466347))

(declare-fun m!5466349 () Bool)

(assert (=> b!4625118 m!5466349))

(declare-fun m!5466351 () Bool)

(assert (=> b!4625118 m!5466351))

(declare-fun m!5466353 () Bool)

(assert (=> b!4625118 m!5466353))

(declare-fun m!5466355 () Bool)

(assert (=> b!4625118 m!5466355))

(assert (=> b!4625118 m!5466349))

(assert (=> b!4625118 m!5466331))

(declare-fun m!5466357 () Bool)

(assert (=> b!4625118 m!5466357))

(assert (=> b!4625118 m!5466325))

(declare-fun m!5466359 () Bool)

(assert (=> b!4625108 m!5466359))

(declare-fun m!5466361 () Bool)

(assert (=> b!4625112 m!5466361))

(check-sat (not b!4625120) (not b!4625110) tp_is_empty!29311 (not b!4625117) (not b!4625119) (not start!463528) (not b!4625108) tp_is_empty!29309 (not b!4625122) (not b!4625115) (not b!4625107) (not b!4625111) (not b!4625118) (not b!4625114) (not b!4625121) (not b!4625112) (not b!4625109) (not b!4625113))
(check-sat)
(get-model)

(declare-fun d!1456872 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8797 (List!51654) (InoxSet tuple2!52462))

(assert (=> d!1456872 (= (eq!819 (addToMapMapFromBucket!965 (Cons!51530 lt!1782799 lt!1782804) (ListMap!4278 Nil!51530)) (+!1870 (addToMapMapFromBucket!965 lt!1782804 (ListMap!4278 Nil!51530)) lt!1782799)) (= (content!8797 (toList!4973 (addToMapMapFromBucket!965 (Cons!51530 lt!1782799 lt!1782804) (ListMap!4278 Nil!51530)))) (content!8797 (toList!4973 (+!1870 (addToMapMapFromBucket!965 lt!1782804 (ListMap!4278 Nil!51530)) lt!1782799)))))))

(declare-fun bs!1023119 () Bool)

(assert (= bs!1023119 d!1456872))

(declare-fun m!5466391 () Bool)

(assert (=> bs!1023119 m!5466391))

(declare-fun m!5466393 () Bool)

(assert (=> bs!1023119 m!5466393))

(assert (=> b!4625118 d!1456872))

(declare-fun d!1456874 () Bool)

(assert (=> d!1456874 (= (eq!819 (addToMapMapFromBucket!965 (Cons!51530 lt!1782798 lt!1782819) (ListMap!4278 Nil!51530)) (+!1870 (addToMapMapFromBucket!965 lt!1782819 (ListMap!4278 Nil!51530)) lt!1782798)) (= (content!8797 (toList!4973 (addToMapMapFromBucket!965 (Cons!51530 lt!1782798 lt!1782819) (ListMap!4278 Nil!51530)))) (content!8797 (toList!4973 (+!1870 (addToMapMapFromBucket!965 lt!1782819 (ListMap!4278 Nil!51530)) lt!1782798)))))))

(declare-fun bs!1023120 () Bool)

(assert (= bs!1023120 d!1456874))

(declare-fun m!5466395 () Bool)

(assert (=> bs!1023120 m!5466395))

(declare-fun m!5466397 () Bool)

(assert (=> bs!1023120 m!5466397))

(assert (=> b!4625118 d!1456874))

(declare-fun d!1456876 () Bool)

(assert (=> d!1456876 (= (head!9638 oldBucket!40) (h!57580 oldBucket!40))))

(assert (=> b!4625118 d!1456876))

(declare-fun b!4625232 () Bool)

(assert (=> b!4625232 true))

(declare-fun bs!1023206 () Bool)

(declare-fun b!4625235 () Bool)

(assert (= bs!1023206 (and b!4625235 b!4625232)))

(declare-fun lambda!192059 () Int)

(declare-fun lambda!192058 () Int)

(assert (=> bs!1023206 (= lambda!192059 lambda!192058)))

(assert (=> b!4625235 true))

(declare-fun lt!1783063 () ListMap!4277)

(declare-fun lambda!192060 () Int)

(assert (=> bs!1023206 (= (= lt!1783063 (ListMap!4278 Nil!51530)) (= lambda!192060 lambda!192058))))

(assert (=> b!4625235 (= (= lt!1783063 (ListMap!4278 Nil!51530)) (= lambda!192060 lambda!192059))))

(assert (=> b!4625235 true))

(declare-fun bs!1023209 () Bool)

(declare-fun d!1456878 () Bool)

(assert (= bs!1023209 (and d!1456878 b!4625232)))

(declare-fun lt!1783060 () ListMap!4277)

(declare-fun lambda!192061 () Int)

(assert (=> bs!1023209 (= (= lt!1783060 (ListMap!4278 Nil!51530)) (= lambda!192061 lambda!192058))))

(declare-fun bs!1023210 () Bool)

(assert (= bs!1023210 (and d!1456878 b!4625235)))

(assert (=> bs!1023210 (= (= lt!1783060 (ListMap!4278 Nil!51530)) (= lambda!192061 lambda!192059))))

(assert (=> bs!1023210 (= (= lt!1783060 lt!1783063) (= lambda!192061 lambda!192060))))

(assert (=> d!1456878 true))

(declare-fun e!2885131 () ListMap!4277)

(assert (=> b!4625232 (= e!2885131 (ListMap!4278 Nil!51530))))

(declare-fun lt!1783065 () Unit!112017)

(declare-fun call!322630 () Unit!112017)

(assert (=> b!4625232 (= lt!1783065 call!322630)))

(declare-fun call!322631 () Bool)

(assert (=> b!4625232 call!322631))

(declare-fun lt!1783073 () Unit!112017)

(assert (=> b!4625232 (= lt!1783073 lt!1783065)))

(declare-fun call!322632 () Bool)

(assert (=> b!4625232 call!322632))

(declare-fun lt!1783071 () Unit!112017)

(declare-fun Unit!112042 () Unit!112017)

(assert (=> b!4625232 (= lt!1783071 Unit!112042)))

(declare-fun bm!322625 () Bool)

(declare-fun c!791729 () Bool)

(declare-fun forall!10824 (List!51654 Int) Bool)

(assert (=> bm!322625 (= call!322631 (forall!10824 (ite c!791729 (toList!4973 (ListMap!4278 Nil!51530)) (Cons!51530 lt!1782798 lt!1782819)) (ite c!791729 lambda!192058 lambda!192060)))))

(declare-fun b!4625234 () Bool)

(declare-fun e!2885130 () Bool)

(declare-fun invariantList!1204 (List!51654) Bool)

(assert (=> b!4625234 (= e!2885130 (invariantList!1204 (toList!4973 lt!1783060)))))

(assert (=> b!4625235 (= e!2885131 lt!1783063)))

(declare-fun lt!1783061 () ListMap!4277)

(assert (=> b!4625235 (= lt!1783061 (+!1870 (ListMap!4278 Nil!51530) (h!57580 (Cons!51530 lt!1782798 lt!1782819))))))

(assert (=> b!4625235 (= lt!1783063 (addToMapMapFromBucket!965 (t!358686 (Cons!51530 lt!1782798 lt!1782819)) (+!1870 (ListMap!4278 Nil!51530) (h!57580 (Cons!51530 lt!1782798 lt!1782819)))))))

(declare-fun lt!1783076 () Unit!112017)

(assert (=> b!4625235 (= lt!1783076 call!322630)))

(assert (=> b!4625235 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192059)))

(declare-fun lt!1783070 () Unit!112017)

(assert (=> b!4625235 (= lt!1783070 lt!1783076)))

(assert (=> b!4625235 (forall!10824 (toList!4973 lt!1783061) lambda!192060)))

(declare-fun lt!1783078 () Unit!112017)

(declare-fun Unit!112046 () Unit!112017)

(assert (=> b!4625235 (= lt!1783078 Unit!112046)))

(assert (=> b!4625235 (forall!10824 (t!358686 (Cons!51530 lt!1782798 lt!1782819)) lambda!192060)))

(declare-fun lt!1783066 () Unit!112017)

(declare-fun Unit!112047 () Unit!112017)

(assert (=> b!4625235 (= lt!1783066 Unit!112047)))

(declare-fun lt!1783059 () Unit!112017)

(declare-fun Unit!112048 () Unit!112017)

(assert (=> b!4625235 (= lt!1783059 Unit!112048)))

(declare-fun lt!1783067 () Unit!112017)

(declare-fun forallContained!3050 (List!51654 Int tuple2!52462) Unit!112017)

(assert (=> b!4625235 (= lt!1783067 (forallContained!3050 (toList!4973 lt!1783061) lambda!192060 (h!57580 (Cons!51530 lt!1782798 lt!1782819))))))

(assert (=> b!4625235 (contains!14571 lt!1783061 (_1!29525 (h!57580 (Cons!51530 lt!1782798 lt!1782819))))))

(declare-fun lt!1783072 () Unit!112017)

(declare-fun Unit!112049 () Unit!112017)

(assert (=> b!4625235 (= lt!1783072 Unit!112049)))

(assert (=> b!4625235 (contains!14571 lt!1783063 (_1!29525 (h!57580 (Cons!51530 lt!1782798 lt!1782819))))))

(declare-fun lt!1783068 () Unit!112017)

(declare-fun Unit!112050 () Unit!112017)

(assert (=> b!4625235 (= lt!1783068 Unit!112050)))

(assert (=> b!4625235 (forall!10824 (Cons!51530 lt!1782798 lt!1782819) lambda!192060)))

(declare-fun lt!1783074 () Unit!112017)

(declare-fun Unit!112051 () Unit!112017)

(assert (=> b!4625235 (= lt!1783074 Unit!112051)))

(assert (=> b!4625235 (forall!10824 (toList!4973 lt!1783061) lambda!192060)))

(declare-fun lt!1783077 () Unit!112017)

(declare-fun Unit!112052 () Unit!112017)

(assert (=> b!4625235 (= lt!1783077 Unit!112052)))

(declare-fun lt!1783064 () Unit!112017)

(declare-fun Unit!112053 () Unit!112017)

(assert (=> b!4625235 (= lt!1783064 Unit!112053)))

(declare-fun lt!1783062 () Unit!112017)

(declare-fun addForallContainsKeyThenBeforeAdding!505 (ListMap!4277 ListMap!4277 K!12910 V!13156) Unit!112017)

(assert (=> b!4625235 (= lt!1783062 (addForallContainsKeyThenBeforeAdding!505 (ListMap!4278 Nil!51530) lt!1783063 (_1!29525 (h!57580 (Cons!51530 lt!1782798 lt!1782819))) (_2!29525 (h!57580 (Cons!51530 lt!1782798 lt!1782819)))))))

(assert (=> b!4625235 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192060)))

(declare-fun lt!1783075 () Unit!112017)

(assert (=> b!4625235 (= lt!1783075 lt!1783062)))

(assert (=> b!4625235 call!322632))

(declare-fun lt!1783079 () Unit!112017)

(declare-fun Unit!112054 () Unit!112017)

(assert (=> b!4625235 (= lt!1783079 Unit!112054)))

(declare-fun res!1939508 () Bool)

(assert (=> b!4625235 (= res!1939508 call!322631)))

(declare-fun e!2885129 () Bool)

(assert (=> b!4625235 (=> (not res!1939508) (not e!2885129))))

(assert (=> b!4625235 e!2885129))

(declare-fun lt!1783069 () Unit!112017)

(declare-fun Unit!112055 () Unit!112017)

(assert (=> b!4625235 (= lt!1783069 Unit!112055)))

(declare-fun bm!322626 () Bool)

(assert (=> bm!322626 (= call!322632 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) (ite c!791729 lambda!192058 lambda!192060)))))

(declare-fun bm!322627 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!506 (ListMap!4277) Unit!112017)

(assert (=> bm!322627 (= call!322630 (lemmaContainsAllItsOwnKeys!506 (ListMap!4278 Nil!51530)))))

(declare-fun b!4625236 () Bool)

(assert (=> b!4625236 (= e!2885129 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192060))))

(declare-fun b!4625233 () Bool)

(declare-fun res!1939507 () Bool)

(assert (=> b!4625233 (=> (not res!1939507) (not e!2885130))))

(assert (=> b!4625233 (= res!1939507 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192061))))

(assert (=> d!1456878 e!2885130))

(declare-fun res!1939506 () Bool)

(assert (=> d!1456878 (=> (not res!1939506) (not e!2885130))))

(assert (=> d!1456878 (= res!1939506 (forall!10824 (Cons!51530 lt!1782798 lt!1782819) lambda!192061))))

(assert (=> d!1456878 (= lt!1783060 e!2885131)))

(assert (=> d!1456878 (= c!791729 ((_ is Nil!51530) (Cons!51530 lt!1782798 lt!1782819)))))

(assert (=> d!1456878 (noDuplicateKeys!1504 (Cons!51530 lt!1782798 lt!1782819))))

(assert (=> d!1456878 (= (addToMapMapFromBucket!965 (Cons!51530 lt!1782798 lt!1782819) (ListMap!4278 Nil!51530)) lt!1783060)))

(assert (= (and d!1456878 c!791729) b!4625232))

(assert (= (and d!1456878 (not c!791729)) b!4625235))

(assert (= (and b!4625235 res!1939508) b!4625236))

(assert (= (or b!4625232 b!4625235) bm!322627))

(assert (= (or b!4625232 b!4625235) bm!322626))

(assert (= (or b!4625232 b!4625235) bm!322625))

(assert (= (and d!1456878 res!1939506) b!4625233))

(assert (= (and b!4625233 res!1939507) b!4625234))

(declare-fun m!5466665 () Bool)

(assert (=> bm!322626 m!5466665))

(declare-fun m!5466667 () Bool)

(assert (=> b!4625236 m!5466667))

(declare-fun m!5466669 () Bool)

(assert (=> bm!322627 m!5466669))

(declare-fun m!5466671 () Bool)

(assert (=> b!4625234 m!5466671))

(declare-fun m!5466673 () Bool)

(assert (=> b!4625235 m!5466673))

(declare-fun m!5466675 () Bool)

(assert (=> b!4625235 m!5466675))

(declare-fun m!5466677 () Bool)

(assert (=> b!4625235 m!5466677))

(declare-fun m!5466679 () Bool)

(assert (=> b!4625235 m!5466679))

(declare-fun m!5466681 () Bool)

(assert (=> b!4625235 m!5466681))

(declare-fun m!5466683 () Bool)

(assert (=> b!4625235 m!5466683))

(declare-fun m!5466685 () Bool)

(assert (=> b!4625235 m!5466685))

(declare-fun m!5466687 () Bool)

(assert (=> b!4625235 m!5466687))

(assert (=> b!4625235 m!5466667))

(assert (=> b!4625235 m!5466679))

(declare-fun m!5466689 () Bool)

(assert (=> b!4625235 m!5466689))

(assert (=> b!4625235 m!5466683))

(declare-fun m!5466691 () Bool)

(assert (=> b!4625235 m!5466691))

(declare-fun m!5466693 () Bool)

(assert (=> b!4625233 m!5466693))

(declare-fun m!5466695 () Bool)

(assert (=> d!1456878 m!5466695))

(declare-fun m!5466697 () Bool)

(assert (=> d!1456878 m!5466697))

(declare-fun m!5466699 () Bool)

(assert (=> bm!322625 m!5466699))

(assert (=> b!4625118 d!1456878))

(declare-fun d!1456926 () Bool)

(declare-fun e!2885137 () Bool)

(assert (=> d!1456926 e!2885137))

(declare-fun res!1939516 () Bool)

(assert (=> d!1456926 (=> (not res!1939516) (not e!2885137))))

(declare-fun lt!1783112 () ListMap!4277)

(assert (=> d!1456926 (= res!1939516 (contains!14571 lt!1783112 (_1!29525 (h!57580 oldBucket!40))))))

(declare-fun lt!1783111 () List!51654)

(assert (=> d!1456926 (= lt!1783112 (ListMap!4278 lt!1783111))))

(declare-fun lt!1783109 () Unit!112017)

(declare-fun lt!1783110 () Unit!112017)

(assert (=> d!1456926 (= lt!1783109 lt!1783110)))

(declare-datatypes ((Option!11588 0))(
  ( (None!11587) (Some!11587 (v!45717 V!13156)) )
))
(declare-fun getValueByKey!1450 (List!51654 K!12910) Option!11588)

(assert (=> d!1456926 (= (getValueByKey!1450 lt!1783111 (_1!29525 (h!57580 oldBucket!40))) (Some!11587 (_2!29525 (h!57580 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!848 (List!51654 K!12910 V!13156) Unit!112017)

(assert (=> d!1456926 (= lt!1783110 (lemmaContainsTupThenGetReturnValue!848 lt!1783111 (_1!29525 (h!57580 oldBucket!40)) (_2!29525 (h!57580 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!356 (List!51654 K!12910 V!13156) List!51654)

(assert (=> d!1456926 (= lt!1783111 (insertNoDuplicatedKeys!356 (toList!4973 (extractMap!1560 (Cons!51531 (tuple2!52465 hash!414 lt!1782804) Nil!51531))) (_1!29525 (h!57580 oldBucket!40)) (_2!29525 (h!57580 oldBucket!40))))))

(assert (=> d!1456926 (= (+!1870 (extractMap!1560 (Cons!51531 (tuple2!52465 hash!414 lt!1782804) Nil!51531)) (h!57580 oldBucket!40)) lt!1783112)))

(declare-fun b!4625248 () Bool)

(declare-fun res!1939517 () Bool)

(assert (=> b!4625248 (=> (not res!1939517) (not e!2885137))))

(assert (=> b!4625248 (= res!1939517 (= (getValueByKey!1450 (toList!4973 lt!1783112) (_1!29525 (h!57580 oldBucket!40))) (Some!11587 (_2!29525 (h!57580 oldBucket!40)))))))

(declare-fun b!4625249 () Bool)

(declare-fun contains!14576 (List!51654 tuple2!52462) Bool)

(assert (=> b!4625249 (= e!2885137 (contains!14576 (toList!4973 lt!1783112) (h!57580 oldBucket!40)))))

(assert (= (and d!1456926 res!1939516) b!4625248))

(assert (= (and b!4625248 res!1939517) b!4625249))

(declare-fun m!5466731 () Bool)

(assert (=> d!1456926 m!5466731))

(declare-fun m!5466733 () Bool)

(assert (=> d!1456926 m!5466733))

(declare-fun m!5466735 () Bool)

(assert (=> d!1456926 m!5466735))

(declare-fun m!5466737 () Bool)

(assert (=> d!1456926 m!5466737))

(declare-fun m!5466739 () Bool)

(assert (=> b!4625248 m!5466739))

(declare-fun m!5466741 () Bool)

(assert (=> b!4625249 m!5466741))

(assert (=> b!4625118 d!1456926))

(declare-fun bs!1023282 () Bool)

(declare-fun d!1456930 () Bool)

(assert (= bs!1023282 (and d!1456930 b!4625122)))

(declare-fun lambda!192073 () Int)

(assert (=> bs!1023282 (= lambda!192073 lambda!191976)))

(declare-fun lt!1783125 () ListMap!4277)

(assert (=> d!1456930 (invariantList!1204 (toList!4973 lt!1783125))))

(declare-fun e!2885151 () ListMap!4277)

(assert (=> d!1456930 (= lt!1783125 e!2885151)))

(declare-fun c!791743 () Bool)

(assert (=> d!1456930 (= c!791743 ((_ is Cons!51531) lt!1782796))))

(assert (=> d!1456930 (forall!10822 lt!1782796 lambda!192073)))

(assert (=> d!1456930 (= (extractMap!1560 lt!1782796) lt!1783125)))

(declare-fun b!4625280 () Bool)

(assert (=> b!4625280 (= e!2885151 (addToMapMapFromBucket!965 (_2!29526 (h!57581 lt!1782796)) (extractMap!1560 (t!358687 lt!1782796))))))

(declare-fun b!4625281 () Bool)

(assert (=> b!4625281 (= e!2885151 (ListMap!4278 Nil!51530))))

(assert (= (and d!1456930 c!791743) b!4625280))

(assert (= (and d!1456930 (not c!791743)) b!4625281))

(declare-fun m!5466787 () Bool)

(assert (=> d!1456930 m!5466787))

(declare-fun m!5466789 () Bool)

(assert (=> d!1456930 m!5466789))

(declare-fun m!5466791 () Bool)

(assert (=> b!4625280 m!5466791))

(assert (=> b!4625280 m!5466791))

(declare-fun m!5466793 () Bool)

(assert (=> b!4625280 m!5466793))

(assert (=> b!4625118 d!1456930))

(declare-fun bs!1023284 () Bool)

(declare-fun b!4625282 () Bool)

(assert (= bs!1023284 (and b!4625282 b!4625232)))

(declare-fun lambda!192074 () Int)

(assert (=> bs!1023284 (= lambda!192074 lambda!192058)))

(declare-fun bs!1023285 () Bool)

(assert (= bs!1023285 (and b!4625282 b!4625235)))

(assert (=> bs!1023285 (= lambda!192074 lambda!192059)))

(assert (=> bs!1023285 (= (= (ListMap!4278 Nil!51530) lt!1783063) (= lambda!192074 lambda!192060))))

(declare-fun bs!1023286 () Bool)

(assert (= bs!1023286 (and b!4625282 d!1456878)))

(assert (=> bs!1023286 (= (= (ListMap!4278 Nil!51530) lt!1783060) (= lambda!192074 lambda!192061))))

(assert (=> b!4625282 true))

(declare-fun bs!1023287 () Bool)

(declare-fun b!4625285 () Bool)

(assert (= bs!1023287 (and b!4625285 b!4625232)))

(declare-fun lambda!192075 () Int)

(assert (=> bs!1023287 (= lambda!192075 lambda!192058)))

(declare-fun bs!1023288 () Bool)

(assert (= bs!1023288 (and b!4625285 b!4625282)))

(assert (=> bs!1023288 (= lambda!192075 lambda!192074)))

(declare-fun bs!1023289 () Bool)

(assert (= bs!1023289 (and b!4625285 b!4625235)))

(assert (=> bs!1023289 (= (= (ListMap!4278 Nil!51530) lt!1783063) (= lambda!192075 lambda!192060))))

(declare-fun bs!1023290 () Bool)

(assert (= bs!1023290 (and b!4625285 d!1456878)))

(assert (=> bs!1023290 (= (= (ListMap!4278 Nil!51530) lt!1783060) (= lambda!192075 lambda!192061))))

(assert (=> bs!1023289 (= lambda!192075 lambda!192059)))

(assert (=> b!4625285 true))

(declare-fun lt!1783132 () ListMap!4277)

(declare-fun lambda!192076 () Int)

(assert (=> b!4625285 (= (= lt!1783132 (ListMap!4278 Nil!51530)) (= lambda!192076 lambda!192075))))

(assert (=> bs!1023287 (= (= lt!1783132 (ListMap!4278 Nil!51530)) (= lambda!192076 lambda!192058))))

(assert (=> bs!1023288 (= (= lt!1783132 (ListMap!4278 Nil!51530)) (= lambda!192076 lambda!192074))))

(assert (=> bs!1023289 (= (= lt!1783132 lt!1783063) (= lambda!192076 lambda!192060))))

(assert (=> bs!1023290 (= (= lt!1783132 lt!1783060) (= lambda!192076 lambda!192061))))

(assert (=> bs!1023289 (= (= lt!1783132 (ListMap!4278 Nil!51530)) (= lambda!192076 lambda!192059))))

(assert (=> b!4625285 true))

(declare-fun bs!1023291 () Bool)

(declare-fun d!1456952 () Bool)

(assert (= bs!1023291 (and d!1456952 b!4625285)))

(declare-fun lt!1783129 () ListMap!4277)

(declare-fun lambda!192077 () Int)

(assert (=> bs!1023291 (= (= lt!1783129 (ListMap!4278 Nil!51530)) (= lambda!192077 lambda!192075))))

(declare-fun bs!1023292 () Bool)

(assert (= bs!1023292 (and d!1456952 b!4625232)))

(assert (=> bs!1023292 (= (= lt!1783129 (ListMap!4278 Nil!51530)) (= lambda!192077 lambda!192058))))

(declare-fun bs!1023293 () Bool)

(assert (= bs!1023293 (and d!1456952 b!4625282)))

(assert (=> bs!1023293 (= (= lt!1783129 (ListMap!4278 Nil!51530)) (= lambda!192077 lambda!192074))))

(declare-fun bs!1023294 () Bool)

(assert (= bs!1023294 (and d!1456952 b!4625235)))

(assert (=> bs!1023294 (= (= lt!1783129 lt!1783063) (= lambda!192077 lambda!192060))))

(declare-fun bs!1023295 () Bool)

(assert (= bs!1023295 (and d!1456952 d!1456878)))

(assert (=> bs!1023295 (= (= lt!1783129 lt!1783060) (= lambda!192077 lambda!192061))))

(assert (=> bs!1023294 (= (= lt!1783129 (ListMap!4278 Nil!51530)) (= lambda!192077 lambda!192059))))

(assert (=> bs!1023291 (= (= lt!1783129 lt!1783132) (= lambda!192077 lambda!192076))))

(assert (=> d!1456952 true))

(declare-fun e!2885154 () ListMap!4277)

(assert (=> b!4625282 (= e!2885154 (ListMap!4278 Nil!51530))))

(declare-fun lt!1783134 () Unit!112017)

(declare-fun call!322636 () Unit!112017)

(assert (=> b!4625282 (= lt!1783134 call!322636)))

(declare-fun call!322637 () Bool)

(assert (=> b!4625282 call!322637))

(declare-fun lt!1783142 () Unit!112017)

(assert (=> b!4625282 (= lt!1783142 lt!1783134)))

(declare-fun call!322638 () Bool)

(assert (=> b!4625282 call!322638))

(declare-fun lt!1783140 () Unit!112017)

(declare-fun Unit!112056 () Unit!112017)

(assert (=> b!4625282 (= lt!1783140 Unit!112056)))

(declare-fun c!791744 () Bool)

(declare-fun bm!322631 () Bool)

(assert (=> bm!322631 (= call!322637 (forall!10824 (ite c!791744 (toList!4973 (ListMap!4278 Nil!51530)) lt!1782804) (ite c!791744 lambda!192074 lambda!192076)))))

(declare-fun b!4625284 () Bool)

(declare-fun e!2885153 () Bool)

(assert (=> b!4625284 (= e!2885153 (invariantList!1204 (toList!4973 lt!1783129)))))

(assert (=> b!4625285 (= e!2885154 lt!1783132)))

(declare-fun lt!1783130 () ListMap!4277)

(assert (=> b!4625285 (= lt!1783130 (+!1870 (ListMap!4278 Nil!51530) (h!57580 lt!1782804)))))

(assert (=> b!4625285 (= lt!1783132 (addToMapMapFromBucket!965 (t!358686 lt!1782804) (+!1870 (ListMap!4278 Nil!51530) (h!57580 lt!1782804))))))

(declare-fun lt!1783145 () Unit!112017)

(assert (=> b!4625285 (= lt!1783145 call!322636)))

(assert (=> b!4625285 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192075)))

(declare-fun lt!1783139 () Unit!112017)

(assert (=> b!4625285 (= lt!1783139 lt!1783145)))

(assert (=> b!4625285 (forall!10824 (toList!4973 lt!1783130) lambda!192076)))

(declare-fun lt!1783147 () Unit!112017)

(declare-fun Unit!112057 () Unit!112017)

(assert (=> b!4625285 (= lt!1783147 Unit!112057)))

(assert (=> b!4625285 (forall!10824 (t!358686 lt!1782804) lambda!192076)))

(declare-fun lt!1783135 () Unit!112017)

(declare-fun Unit!112058 () Unit!112017)

(assert (=> b!4625285 (= lt!1783135 Unit!112058)))

(declare-fun lt!1783128 () Unit!112017)

(declare-fun Unit!112059 () Unit!112017)

(assert (=> b!4625285 (= lt!1783128 Unit!112059)))

(declare-fun lt!1783136 () Unit!112017)

(assert (=> b!4625285 (= lt!1783136 (forallContained!3050 (toList!4973 lt!1783130) lambda!192076 (h!57580 lt!1782804)))))

(assert (=> b!4625285 (contains!14571 lt!1783130 (_1!29525 (h!57580 lt!1782804)))))

(declare-fun lt!1783141 () Unit!112017)

(declare-fun Unit!112060 () Unit!112017)

(assert (=> b!4625285 (= lt!1783141 Unit!112060)))

(assert (=> b!4625285 (contains!14571 lt!1783132 (_1!29525 (h!57580 lt!1782804)))))

(declare-fun lt!1783137 () Unit!112017)

(declare-fun Unit!112062 () Unit!112017)

(assert (=> b!4625285 (= lt!1783137 Unit!112062)))

(assert (=> b!4625285 (forall!10824 lt!1782804 lambda!192076)))

(declare-fun lt!1783143 () Unit!112017)

(declare-fun Unit!112063 () Unit!112017)

(assert (=> b!4625285 (= lt!1783143 Unit!112063)))

(assert (=> b!4625285 (forall!10824 (toList!4973 lt!1783130) lambda!192076)))

(declare-fun lt!1783146 () Unit!112017)

(declare-fun Unit!112064 () Unit!112017)

(assert (=> b!4625285 (= lt!1783146 Unit!112064)))

(declare-fun lt!1783133 () Unit!112017)

(declare-fun Unit!112065 () Unit!112017)

(assert (=> b!4625285 (= lt!1783133 Unit!112065)))

(declare-fun lt!1783131 () Unit!112017)

(assert (=> b!4625285 (= lt!1783131 (addForallContainsKeyThenBeforeAdding!505 (ListMap!4278 Nil!51530) lt!1783132 (_1!29525 (h!57580 lt!1782804)) (_2!29525 (h!57580 lt!1782804))))))

(assert (=> b!4625285 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192076)))

(declare-fun lt!1783144 () Unit!112017)

(assert (=> b!4625285 (= lt!1783144 lt!1783131)))

(assert (=> b!4625285 call!322638))

(declare-fun lt!1783148 () Unit!112017)

(declare-fun Unit!112066 () Unit!112017)

(assert (=> b!4625285 (= lt!1783148 Unit!112066)))

(declare-fun res!1939522 () Bool)

(assert (=> b!4625285 (= res!1939522 call!322637)))

(declare-fun e!2885152 () Bool)

(assert (=> b!4625285 (=> (not res!1939522) (not e!2885152))))

(assert (=> b!4625285 e!2885152))

(declare-fun lt!1783138 () Unit!112017)

(declare-fun Unit!112067 () Unit!112017)

(assert (=> b!4625285 (= lt!1783138 Unit!112067)))

(declare-fun bm!322632 () Bool)

(assert (=> bm!322632 (= call!322638 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) (ite c!791744 lambda!192074 lambda!192076)))))

(declare-fun bm!322633 () Bool)

(assert (=> bm!322633 (= call!322636 (lemmaContainsAllItsOwnKeys!506 (ListMap!4278 Nil!51530)))))

(declare-fun b!4625286 () Bool)

(assert (=> b!4625286 (= e!2885152 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192076))))

(declare-fun b!4625283 () Bool)

(declare-fun res!1939521 () Bool)

(assert (=> b!4625283 (=> (not res!1939521) (not e!2885153))))

(assert (=> b!4625283 (= res!1939521 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192077))))

(assert (=> d!1456952 e!2885153))

(declare-fun res!1939520 () Bool)

(assert (=> d!1456952 (=> (not res!1939520) (not e!2885153))))

(assert (=> d!1456952 (= res!1939520 (forall!10824 lt!1782804 lambda!192077))))

(assert (=> d!1456952 (= lt!1783129 e!2885154)))

(assert (=> d!1456952 (= c!791744 ((_ is Nil!51530) lt!1782804))))

(assert (=> d!1456952 (noDuplicateKeys!1504 lt!1782804)))

(assert (=> d!1456952 (= (addToMapMapFromBucket!965 lt!1782804 (ListMap!4278 Nil!51530)) lt!1783129)))

(assert (= (and d!1456952 c!791744) b!4625282))

(assert (= (and d!1456952 (not c!791744)) b!4625285))

(assert (= (and b!4625285 res!1939522) b!4625286))

(assert (= (or b!4625282 b!4625285) bm!322633))

(assert (= (or b!4625282 b!4625285) bm!322632))

(assert (= (or b!4625282 b!4625285) bm!322631))

(assert (= (and d!1456952 res!1939520) b!4625283))

(assert (= (and b!4625283 res!1939521) b!4625284))

(declare-fun m!5466797 () Bool)

(assert (=> bm!322632 m!5466797))

(declare-fun m!5466799 () Bool)

(assert (=> b!4625286 m!5466799))

(assert (=> bm!322633 m!5466669))

(declare-fun m!5466801 () Bool)

(assert (=> b!4625284 m!5466801))

(declare-fun m!5466803 () Bool)

(assert (=> b!4625285 m!5466803))

(declare-fun m!5466805 () Bool)

(assert (=> b!4625285 m!5466805))

(declare-fun m!5466807 () Bool)

(assert (=> b!4625285 m!5466807))

(declare-fun m!5466809 () Bool)

(assert (=> b!4625285 m!5466809))

(declare-fun m!5466811 () Bool)

(assert (=> b!4625285 m!5466811))

(declare-fun m!5466813 () Bool)

(assert (=> b!4625285 m!5466813))

(declare-fun m!5466815 () Bool)

(assert (=> b!4625285 m!5466815))

(declare-fun m!5466817 () Bool)

(assert (=> b!4625285 m!5466817))

(assert (=> b!4625285 m!5466799))

(assert (=> b!4625285 m!5466809))

(declare-fun m!5466819 () Bool)

(assert (=> b!4625285 m!5466819))

(assert (=> b!4625285 m!5466813))

(declare-fun m!5466821 () Bool)

(assert (=> b!4625285 m!5466821))

(declare-fun m!5466823 () Bool)

(assert (=> b!4625283 m!5466823))

(declare-fun m!5466825 () Bool)

(assert (=> d!1456952 m!5466825))

(declare-fun m!5466827 () Bool)

(assert (=> d!1456952 m!5466827))

(declare-fun m!5466829 () Bool)

(assert (=> bm!322631 m!5466829))

(assert (=> b!4625118 d!1456952))

(declare-fun bs!1023296 () Bool)

(declare-fun b!4625287 () Bool)

(assert (= bs!1023296 (and b!4625287 b!4625285)))

(declare-fun lambda!192078 () Int)

(assert (=> bs!1023296 (= lambda!192078 lambda!192075)))

(declare-fun bs!1023297 () Bool)

(assert (= bs!1023297 (and b!4625287 b!4625232)))

(assert (=> bs!1023297 (= lambda!192078 lambda!192058)))

(declare-fun bs!1023298 () Bool)

(assert (= bs!1023298 (and b!4625287 b!4625282)))

(assert (=> bs!1023298 (= lambda!192078 lambda!192074)))

(declare-fun bs!1023299 () Bool)

(assert (= bs!1023299 (and b!4625287 b!4625235)))

(assert (=> bs!1023299 (= (= (ListMap!4278 Nil!51530) lt!1783063) (= lambda!192078 lambda!192060))))

(declare-fun bs!1023300 () Bool)

(assert (= bs!1023300 (and b!4625287 d!1456878)))

(assert (=> bs!1023300 (= (= (ListMap!4278 Nil!51530) lt!1783060) (= lambda!192078 lambda!192061))))

(assert (=> bs!1023299 (= lambda!192078 lambda!192059)))

(assert (=> bs!1023296 (= (= (ListMap!4278 Nil!51530) lt!1783132) (= lambda!192078 lambda!192076))))

(declare-fun bs!1023301 () Bool)

(assert (= bs!1023301 (and b!4625287 d!1456952)))

(assert (=> bs!1023301 (= (= (ListMap!4278 Nil!51530) lt!1783129) (= lambda!192078 lambda!192077))))

(assert (=> b!4625287 true))

(declare-fun bs!1023302 () Bool)

(declare-fun b!4625290 () Bool)

(assert (= bs!1023302 (and b!4625290 b!4625287)))

(declare-fun lambda!192079 () Int)

(assert (=> bs!1023302 (= lambda!192079 lambda!192078)))

(declare-fun bs!1023303 () Bool)

(assert (= bs!1023303 (and b!4625290 b!4625285)))

(assert (=> bs!1023303 (= lambda!192079 lambda!192075)))

(declare-fun bs!1023304 () Bool)

(assert (= bs!1023304 (and b!4625290 b!4625232)))

(assert (=> bs!1023304 (= lambda!192079 lambda!192058)))

(declare-fun bs!1023305 () Bool)

(assert (= bs!1023305 (and b!4625290 b!4625282)))

(assert (=> bs!1023305 (= lambda!192079 lambda!192074)))

(declare-fun bs!1023306 () Bool)

(assert (= bs!1023306 (and b!4625290 b!4625235)))

(assert (=> bs!1023306 (= (= (ListMap!4278 Nil!51530) lt!1783063) (= lambda!192079 lambda!192060))))

(declare-fun bs!1023307 () Bool)

(assert (= bs!1023307 (and b!4625290 d!1456878)))

(assert (=> bs!1023307 (= (= (ListMap!4278 Nil!51530) lt!1783060) (= lambda!192079 lambda!192061))))

(assert (=> bs!1023306 (= lambda!192079 lambda!192059)))

(assert (=> bs!1023303 (= (= (ListMap!4278 Nil!51530) lt!1783132) (= lambda!192079 lambda!192076))))

(declare-fun bs!1023308 () Bool)

(assert (= bs!1023308 (and b!4625290 d!1456952)))

(assert (=> bs!1023308 (= (= (ListMap!4278 Nil!51530) lt!1783129) (= lambda!192079 lambda!192077))))

(assert (=> b!4625290 true))

(declare-fun lt!1783154 () ListMap!4277)

(declare-fun lambda!192080 () Int)

(assert (=> b!4625290 (= (= lt!1783154 (ListMap!4278 Nil!51530)) (= lambda!192080 lambda!192079))))

(assert (=> bs!1023302 (= (= lt!1783154 (ListMap!4278 Nil!51530)) (= lambda!192080 lambda!192078))))

(assert (=> bs!1023303 (= (= lt!1783154 (ListMap!4278 Nil!51530)) (= lambda!192080 lambda!192075))))

(assert (=> bs!1023304 (= (= lt!1783154 (ListMap!4278 Nil!51530)) (= lambda!192080 lambda!192058))))

(assert (=> bs!1023305 (= (= lt!1783154 (ListMap!4278 Nil!51530)) (= lambda!192080 lambda!192074))))

(assert (=> bs!1023306 (= (= lt!1783154 lt!1783063) (= lambda!192080 lambda!192060))))

(assert (=> bs!1023307 (= (= lt!1783154 lt!1783060) (= lambda!192080 lambda!192061))))

(assert (=> bs!1023306 (= (= lt!1783154 (ListMap!4278 Nil!51530)) (= lambda!192080 lambda!192059))))

(assert (=> bs!1023303 (= (= lt!1783154 lt!1783132) (= lambda!192080 lambda!192076))))

(assert (=> bs!1023308 (= (= lt!1783154 lt!1783129) (= lambda!192080 lambda!192077))))

(assert (=> b!4625290 true))

(declare-fun bs!1023309 () Bool)

(declare-fun d!1456956 () Bool)

(assert (= bs!1023309 (and d!1456956 b!4625290)))

(declare-fun lt!1783151 () ListMap!4277)

(declare-fun lambda!192081 () Int)

(assert (=> bs!1023309 (= (= lt!1783151 lt!1783154) (= lambda!192081 lambda!192080))))

(assert (=> bs!1023309 (= (= lt!1783151 (ListMap!4278 Nil!51530)) (= lambda!192081 lambda!192079))))

(declare-fun bs!1023310 () Bool)

(assert (= bs!1023310 (and d!1456956 b!4625287)))

(assert (=> bs!1023310 (= (= lt!1783151 (ListMap!4278 Nil!51530)) (= lambda!192081 lambda!192078))))

(declare-fun bs!1023311 () Bool)

(assert (= bs!1023311 (and d!1456956 b!4625285)))

(assert (=> bs!1023311 (= (= lt!1783151 (ListMap!4278 Nil!51530)) (= lambda!192081 lambda!192075))))

(declare-fun bs!1023312 () Bool)

(assert (= bs!1023312 (and d!1456956 b!4625232)))

(assert (=> bs!1023312 (= (= lt!1783151 (ListMap!4278 Nil!51530)) (= lambda!192081 lambda!192058))))

(declare-fun bs!1023313 () Bool)

(assert (= bs!1023313 (and d!1456956 b!4625282)))

(assert (=> bs!1023313 (= (= lt!1783151 (ListMap!4278 Nil!51530)) (= lambda!192081 lambda!192074))))

(declare-fun bs!1023314 () Bool)

(assert (= bs!1023314 (and d!1456956 b!4625235)))

(assert (=> bs!1023314 (= (= lt!1783151 lt!1783063) (= lambda!192081 lambda!192060))))

(declare-fun bs!1023315 () Bool)

(assert (= bs!1023315 (and d!1456956 d!1456878)))

(assert (=> bs!1023315 (= (= lt!1783151 lt!1783060) (= lambda!192081 lambda!192061))))

(assert (=> bs!1023314 (= (= lt!1783151 (ListMap!4278 Nil!51530)) (= lambda!192081 lambda!192059))))

(assert (=> bs!1023311 (= (= lt!1783151 lt!1783132) (= lambda!192081 lambda!192076))))

(declare-fun bs!1023316 () Bool)

(assert (= bs!1023316 (and d!1456956 d!1456952)))

(assert (=> bs!1023316 (= (= lt!1783151 lt!1783129) (= lambda!192081 lambda!192077))))

(assert (=> d!1456956 true))

(declare-fun e!2885157 () ListMap!4277)

(assert (=> b!4625287 (= e!2885157 (ListMap!4278 Nil!51530))))

(declare-fun lt!1783156 () Unit!112017)

(declare-fun call!322639 () Unit!112017)

(assert (=> b!4625287 (= lt!1783156 call!322639)))

(declare-fun call!322640 () Bool)

(assert (=> b!4625287 call!322640))

(declare-fun lt!1783164 () Unit!112017)

(assert (=> b!4625287 (= lt!1783164 lt!1783156)))

(declare-fun call!322641 () Bool)

(assert (=> b!4625287 call!322641))

(declare-fun lt!1783162 () Unit!112017)

(declare-fun Unit!112078 () Unit!112017)

(assert (=> b!4625287 (= lt!1783162 Unit!112078)))

(declare-fun c!791745 () Bool)

(declare-fun bm!322634 () Bool)

(assert (=> bm!322634 (= call!322640 (forall!10824 (ite c!791745 (toList!4973 (ListMap!4278 Nil!51530)) (Cons!51530 lt!1782799 lt!1782804)) (ite c!791745 lambda!192078 lambda!192080)))))

(declare-fun b!4625289 () Bool)

(declare-fun e!2885156 () Bool)

(assert (=> b!4625289 (= e!2885156 (invariantList!1204 (toList!4973 lt!1783151)))))

(assert (=> b!4625290 (= e!2885157 lt!1783154)))

(declare-fun lt!1783152 () ListMap!4277)

(assert (=> b!4625290 (= lt!1783152 (+!1870 (ListMap!4278 Nil!51530) (h!57580 (Cons!51530 lt!1782799 lt!1782804))))))

(assert (=> b!4625290 (= lt!1783154 (addToMapMapFromBucket!965 (t!358686 (Cons!51530 lt!1782799 lt!1782804)) (+!1870 (ListMap!4278 Nil!51530) (h!57580 (Cons!51530 lt!1782799 lt!1782804)))))))

(declare-fun lt!1783167 () Unit!112017)

(assert (=> b!4625290 (= lt!1783167 call!322639)))

(assert (=> b!4625290 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192079)))

(declare-fun lt!1783161 () Unit!112017)

(assert (=> b!4625290 (= lt!1783161 lt!1783167)))

(assert (=> b!4625290 (forall!10824 (toList!4973 lt!1783152) lambda!192080)))

(declare-fun lt!1783169 () Unit!112017)

(declare-fun Unit!112079 () Unit!112017)

(assert (=> b!4625290 (= lt!1783169 Unit!112079)))

(assert (=> b!4625290 (forall!10824 (t!358686 (Cons!51530 lt!1782799 lt!1782804)) lambda!192080)))

(declare-fun lt!1783157 () Unit!112017)

(declare-fun Unit!112080 () Unit!112017)

(assert (=> b!4625290 (= lt!1783157 Unit!112080)))

(declare-fun lt!1783150 () Unit!112017)

(declare-fun Unit!112081 () Unit!112017)

(assert (=> b!4625290 (= lt!1783150 Unit!112081)))

(declare-fun lt!1783158 () Unit!112017)

(assert (=> b!4625290 (= lt!1783158 (forallContained!3050 (toList!4973 lt!1783152) lambda!192080 (h!57580 (Cons!51530 lt!1782799 lt!1782804))))))

(assert (=> b!4625290 (contains!14571 lt!1783152 (_1!29525 (h!57580 (Cons!51530 lt!1782799 lt!1782804))))))

(declare-fun lt!1783163 () Unit!112017)

(declare-fun Unit!112082 () Unit!112017)

(assert (=> b!4625290 (= lt!1783163 Unit!112082)))

(assert (=> b!4625290 (contains!14571 lt!1783154 (_1!29525 (h!57580 (Cons!51530 lt!1782799 lt!1782804))))))

(declare-fun lt!1783159 () Unit!112017)

(declare-fun Unit!112083 () Unit!112017)

(assert (=> b!4625290 (= lt!1783159 Unit!112083)))

(assert (=> b!4625290 (forall!10824 (Cons!51530 lt!1782799 lt!1782804) lambda!192080)))

(declare-fun lt!1783165 () Unit!112017)

(declare-fun Unit!112084 () Unit!112017)

(assert (=> b!4625290 (= lt!1783165 Unit!112084)))

(assert (=> b!4625290 (forall!10824 (toList!4973 lt!1783152) lambda!192080)))

(declare-fun lt!1783168 () Unit!112017)

(declare-fun Unit!112085 () Unit!112017)

(assert (=> b!4625290 (= lt!1783168 Unit!112085)))

(declare-fun lt!1783155 () Unit!112017)

(declare-fun Unit!112086 () Unit!112017)

(assert (=> b!4625290 (= lt!1783155 Unit!112086)))

(declare-fun lt!1783153 () Unit!112017)

(assert (=> b!4625290 (= lt!1783153 (addForallContainsKeyThenBeforeAdding!505 (ListMap!4278 Nil!51530) lt!1783154 (_1!29525 (h!57580 (Cons!51530 lt!1782799 lt!1782804))) (_2!29525 (h!57580 (Cons!51530 lt!1782799 lt!1782804)))))))

(assert (=> b!4625290 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192080)))

(declare-fun lt!1783166 () Unit!112017)

(assert (=> b!4625290 (= lt!1783166 lt!1783153)))

(assert (=> b!4625290 call!322641))

(declare-fun lt!1783170 () Unit!112017)

(declare-fun Unit!112087 () Unit!112017)

(assert (=> b!4625290 (= lt!1783170 Unit!112087)))

(declare-fun res!1939525 () Bool)

(assert (=> b!4625290 (= res!1939525 call!322640)))

(declare-fun e!2885155 () Bool)

(assert (=> b!4625290 (=> (not res!1939525) (not e!2885155))))

(assert (=> b!4625290 e!2885155))

(declare-fun lt!1783160 () Unit!112017)

(declare-fun Unit!112088 () Unit!112017)

(assert (=> b!4625290 (= lt!1783160 Unit!112088)))

(declare-fun bm!322635 () Bool)

(assert (=> bm!322635 (= call!322641 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) (ite c!791745 lambda!192078 lambda!192080)))))

(declare-fun bm!322636 () Bool)

(assert (=> bm!322636 (= call!322639 (lemmaContainsAllItsOwnKeys!506 (ListMap!4278 Nil!51530)))))

(declare-fun b!4625291 () Bool)

(assert (=> b!4625291 (= e!2885155 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192080))))

(declare-fun b!4625288 () Bool)

(declare-fun res!1939524 () Bool)

(assert (=> b!4625288 (=> (not res!1939524) (not e!2885156))))

(assert (=> b!4625288 (= res!1939524 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192081))))

(assert (=> d!1456956 e!2885156))

(declare-fun res!1939523 () Bool)

(assert (=> d!1456956 (=> (not res!1939523) (not e!2885156))))

(assert (=> d!1456956 (= res!1939523 (forall!10824 (Cons!51530 lt!1782799 lt!1782804) lambda!192081))))

(assert (=> d!1456956 (= lt!1783151 e!2885157)))

(assert (=> d!1456956 (= c!791745 ((_ is Nil!51530) (Cons!51530 lt!1782799 lt!1782804)))))

(assert (=> d!1456956 (noDuplicateKeys!1504 (Cons!51530 lt!1782799 lt!1782804))))

(assert (=> d!1456956 (= (addToMapMapFromBucket!965 (Cons!51530 lt!1782799 lt!1782804) (ListMap!4278 Nil!51530)) lt!1783151)))

(assert (= (and d!1456956 c!791745) b!4625287))

(assert (= (and d!1456956 (not c!791745)) b!4625290))

(assert (= (and b!4625290 res!1939525) b!4625291))

(assert (= (or b!4625287 b!4625290) bm!322636))

(assert (= (or b!4625287 b!4625290) bm!322635))

(assert (= (or b!4625287 b!4625290) bm!322634))

(assert (= (and d!1456956 res!1939523) b!4625288))

(assert (= (and b!4625288 res!1939524) b!4625289))

(declare-fun m!5466831 () Bool)

(assert (=> bm!322635 m!5466831))

(declare-fun m!5466833 () Bool)

(assert (=> b!4625291 m!5466833))

(assert (=> bm!322636 m!5466669))

(declare-fun m!5466835 () Bool)

(assert (=> b!4625289 m!5466835))

(declare-fun m!5466837 () Bool)

(assert (=> b!4625290 m!5466837))

(declare-fun m!5466839 () Bool)

(assert (=> b!4625290 m!5466839))

(declare-fun m!5466841 () Bool)

(assert (=> b!4625290 m!5466841))

(declare-fun m!5466843 () Bool)

(assert (=> b!4625290 m!5466843))

(declare-fun m!5466845 () Bool)

(assert (=> b!4625290 m!5466845))

(declare-fun m!5466847 () Bool)

(assert (=> b!4625290 m!5466847))

(declare-fun m!5466849 () Bool)

(assert (=> b!4625290 m!5466849))

(declare-fun m!5466851 () Bool)

(assert (=> b!4625290 m!5466851))

(assert (=> b!4625290 m!5466833))

(assert (=> b!4625290 m!5466843))

(declare-fun m!5466853 () Bool)

(assert (=> b!4625290 m!5466853))

(assert (=> b!4625290 m!5466847))

(declare-fun m!5466855 () Bool)

(assert (=> b!4625290 m!5466855))

(declare-fun m!5466857 () Bool)

(assert (=> b!4625288 m!5466857))

(declare-fun m!5466859 () Bool)

(assert (=> d!1456956 m!5466859))

(declare-fun m!5466861 () Bool)

(assert (=> d!1456956 m!5466861))

(declare-fun m!5466863 () Bool)

(assert (=> bm!322634 m!5466863))

(assert (=> b!4625118 d!1456956))

(declare-fun d!1456958 () Bool)

(assert (=> d!1456958 (eq!819 (addToMapMapFromBucket!965 (Cons!51530 lt!1782799 lt!1782804) (ListMap!4278 Nil!51530)) (+!1870 (addToMapMapFromBucket!965 lt!1782804 (ListMap!4278 Nil!51530)) lt!1782799))))

(declare-fun lt!1783173 () Unit!112017)

(declare-fun choose!31303 (tuple2!52462 List!51654 ListMap!4277) Unit!112017)

(assert (=> d!1456958 (= lt!1783173 (choose!31303 lt!1782799 lt!1782804 (ListMap!4278 Nil!51530)))))

(assert (=> d!1456958 (noDuplicateKeys!1504 lt!1782804)))

(assert (=> d!1456958 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!70 lt!1782799 lt!1782804 (ListMap!4278 Nil!51530)) lt!1783173)))

(declare-fun bs!1023317 () Bool)

(assert (= bs!1023317 d!1456958))

(assert (=> bs!1023317 m!5466325))

(assert (=> bs!1023317 m!5466325))

(assert (=> bs!1023317 m!5466327))

(assert (=> bs!1023317 m!5466329))

(assert (=> bs!1023317 m!5466827))

(assert (=> bs!1023317 m!5466333))

(assert (=> bs!1023317 m!5466333))

(assert (=> bs!1023317 m!5466327))

(declare-fun m!5466865 () Bool)

(assert (=> bs!1023317 m!5466865))

(assert (=> b!4625118 d!1456958))

(declare-fun bs!1023318 () Bool)

(declare-fun d!1456960 () Bool)

(assert (= bs!1023318 (and d!1456960 b!4625122)))

(declare-fun lambda!192088 () Int)

(assert (=> bs!1023318 (= lambda!192088 lambda!191976)))

(declare-fun bs!1023319 () Bool)

(assert (= bs!1023319 (and d!1456960 d!1456930)))

(assert (=> bs!1023319 (= lambda!192088 lambda!192073)))

(assert (=> d!1456960 (contains!14571 (extractMap!1560 (toList!4974 (ListLongMap!3564 lt!1782796))) key!4968)))

(declare-fun lt!1783178 () Unit!112017)

(declare-fun choose!31304 (ListLongMap!3563 K!12910 Hashable!5901) Unit!112017)

(assert (=> d!1456960 (= lt!1783178 (choose!31304 (ListLongMap!3564 lt!1782796) key!4968 hashF!1389))))

(assert (=> d!1456960 (forall!10822 (toList!4974 (ListLongMap!3564 lt!1782796)) lambda!192088)))

(assert (=> d!1456960 (= (lemmaListContainsThenExtractedMapContains!322 (ListLongMap!3564 lt!1782796) key!4968 hashF!1389) lt!1783178)))

(declare-fun bs!1023320 () Bool)

(assert (= bs!1023320 d!1456960))

(declare-fun m!5466867 () Bool)

(assert (=> bs!1023320 m!5466867))

(assert (=> bs!1023320 m!5466867))

(declare-fun m!5466869 () Bool)

(assert (=> bs!1023320 m!5466869))

(declare-fun m!5466871 () Bool)

(assert (=> bs!1023320 m!5466871))

(declare-fun m!5466873 () Bool)

(assert (=> bs!1023320 m!5466873))

(assert (=> b!4625118 d!1456960))

(declare-fun d!1456962 () Bool)

(assert (=> d!1456962 (= (head!9638 newBucket!224) (h!57580 newBucket!224))))

(assert (=> b!4625118 d!1456962))

(declare-fun b!4625331 () Bool)

(declare-datatypes ((List!51657 0))(
  ( (Nil!51533) (Cons!51533 (h!57585 K!12910) (t!358691 List!51657)) )
))
(declare-fun e!2885185 () List!51657)

(declare-fun getKeysList!655 (List!51654) List!51657)

(assert (=> b!4625331 (= e!2885185 (getKeysList!655 (toList!4973 lt!1782810)))))

(declare-fun b!4625332 () Bool)

(declare-fun e!2885184 () Unit!112017)

(declare-fun lt!1783221 () Unit!112017)

(assert (=> b!4625332 (= e!2885184 lt!1783221)))

(declare-fun lt!1783224 () Unit!112017)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1352 (List!51654 K!12910) Unit!112017)

(assert (=> b!4625332 (= lt!1783224 (lemmaContainsKeyImpliesGetValueByKeyDefined!1352 (toList!4973 lt!1782810) key!4968))))

(declare-fun isDefined!8853 (Option!11588) Bool)

(assert (=> b!4625332 (isDefined!8853 (getValueByKey!1450 (toList!4973 lt!1782810) key!4968))))

(declare-fun lt!1783225 () Unit!112017)

(assert (=> b!4625332 (= lt!1783225 lt!1783224)))

(declare-fun lemmaInListThenGetKeysListContains!650 (List!51654 K!12910) Unit!112017)

(assert (=> b!4625332 (= lt!1783221 (lemmaInListThenGetKeysListContains!650 (toList!4973 lt!1782810) key!4968))))

(declare-fun call!322644 () Bool)

(assert (=> b!4625332 call!322644))

(declare-fun d!1456964 () Bool)

(declare-fun e!2885188 () Bool)

(assert (=> d!1456964 e!2885188))

(declare-fun res!1939553 () Bool)

(assert (=> d!1456964 (=> res!1939553 e!2885188)))

(declare-fun e!2885186 () Bool)

(assert (=> d!1456964 (= res!1939553 e!2885186)))

(declare-fun res!1939554 () Bool)

(assert (=> d!1456964 (=> (not res!1939554) (not e!2885186))))

(declare-fun lt!1783220 () Bool)

(assert (=> d!1456964 (= res!1939554 (not lt!1783220))))

(declare-fun lt!1783222 () Bool)

(assert (=> d!1456964 (= lt!1783220 lt!1783222)))

(declare-fun lt!1783223 () Unit!112017)

(assert (=> d!1456964 (= lt!1783223 e!2885184)))

(declare-fun c!791752 () Bool)

(assert (=> d!1456964 (= c!791752 lt!1783222)))

(declare-fun containsKey!2446 (List!51654 K!12910) Bool)

(assert (=> d!1456964 (= lt!1783222 (containsKey!2446 (toList!4973 lt!1782810) key!4968))))

(assert (=> d!1456964 (= (contains!14571 lt!1782810 key!4968) lt!1783220)))

(declare-fun b!4625333 () Bool)

(declare-fun e!2885189 () Bool)

(declare-fun contains!14577 (List!51657 K!12910) Bool)

(declare-fun keys!18152 (ListMap!4277) List!51657)

(assert (=> b!4625333 (= e!2885189 (contains!14577 (keys!18152 lt!1782810) key!4968))))

(declare-fun b!4625334 () Bool)

(declare-fun e!2885187 () Unit!112017)

(declare-fun Unit!112100 () Unit!112017)

(assert (=> b!4625334 (= e!2885187 Unit!112100)))

(declare-fun b!4625335 () Bool)

(assert (=> b!4625335 (= e!2885186 (not (contains!14577 (keys!18152 lt!1782810) key!4968)))))

(declare-fun b!4625336 () Bool)

(assert (=> b!4625336 (= e!2885184 e!2885187)))

(declare-fun c!791754 () Bool)

(assert (=> b!4625336 (= c!791754 call!322644)))

(declare-fun b!4625337 () Bool)

(assert (=> b!4625337 false))

(declare-fun lt!1783226 () Unit!112017)

(declare-fun lt!1783227 () Unit!112017)

(assert (=> b!4625337 (= lt!1783226 lt!1783227)))

(assert (=> b!4625337 (containsKey!2446 (toList!4973 lt!1782810) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!654 (List!51654 K!12910) Unit!112017)

(assert (=> b!4625337 (= lt!1783227 (lemmaInGetKeysListThenContainsKey!654 (toList!4973 lt!1782810) key!4968))))

(declare-fun Unit!112101 () Unit!112017)

(assert (=> b!4625337 (= e!2885187 Unit!112101)))

(declare-fun bm!322639 () Bool)

(assert (=> bm!322639 (= call!322644 (contains!14577 e!2885185 key!4968))))

(declare-fun c!791753 () Bool)

(assert (=> bm!322639 (= c!791753 c!791752)))

(declare-fun b!4625338 () Bool)

(assert (=> b!4625338 (= e!2885185 (keys!18152 lt!1782810))))

(declare-fun b!4625339 () Bool)

(assert (=> b!4625339 (= e!2885188 e!2885189)))

(declare-fun res!1939552 () Bool)

(assert (=> b!4625339 (=> (not res!1939552) (not e!2885189))))

(assert (=> b!4625339 (= res!1939552 (isDefined!8853 (getValueByKey!1450 (toList!4973 lt!1782810) key!4968)))))

(assert (= (and d!1456964 c!791752) b!4625332))

(assert (= (and d!1456964 (not c!791752)) b!4625336))

(assert (= (and b!4625336 c!791754) b!4625337))

(assert (= (and b!4625336 (not c!791754)) b!4625334))

(assert (= (or b!4625332 b!4625336) bm!322639))

(assert (= (and bm!322639 c!791753) b!4625331))

(assert (= (and bm!322639 (not c!791753)) b!4625338))

(assert (= (and d!1456964 res!1939554) b!4625335))

(assert (= (and d!1456964 (not res!1939553)) b!4625339))

(assert (= (and b!4625339 res!1939552) b!4625333))

(declare-fun m!5466915 () Bool)

(assert (=> b!4625339 m!5466915))

(assert (=> b!4625339 m!5466915))

(declare-fun m!5466917 () Bool)

(assert (=> b!4625339 m!5466917))

(declare-fun m!5466919 () Bool)

(assert (=> b!4625333 m!5466919))

(assert (=> b!4625333 m!5466919))

(declare-fun m!5466921 () Bool)

(assert (=> b!4625333 m!5466921))

(declare-fun m!5466923 () Bool)

(assert (=> bm!322639 m!5466923))

(assert (=> b!4625338 m!5466919))

(assert (=> b!4625335 m!5466919))

(assert (=> b!4625335 m!5466919))

(assert (=> b!4625335 m!5466921))

(declare-fun m!5466925 () Bool)

(assert (=> b!4625332 m!5466925))

(assert (=> b!4625332 m!5466915))

(assert (=> b!4625332 m!5466915))

(assert (=> b!4625332 m!5466917))

(declare-fun m!5466927 () Bool)

(assert (=> b!4625332 m!5466927))

(declare-fun m!5466929 () Bool)

(assert (=> d!1456964 m!5466929))

(assert (=> b!4625337 m!5466929))

(declare-fun m!5466931 () Bool)

(assert (=> b!4625337 m!5466931))

(declare-fun m!5466933 () Bool)

(assert (=> b!4625331 m!5466933))

(assert (=> b!4625118 d!1456964))

(declare-fun bs!1023332 () Bool)

(declare-fun b!4625344 () Bool)

(assert (= bs!1023332 (and b!4625344 b!4625290)))

(declare-fun lambda!192092 () Int)

(assert (=> bs!1023332 (= (= (ListMap!4278 Nil!51530) lt!1783154) (= lambda!192092 lambda!192080))))

(assert (=> bs!1023332 (= lambda!192092 lambda!192079)))

(declare-fun bs!1023333 () Bool)

(assert (= bs!1023333 (and b!4625344 b!4625287)))

(assert (=> bs!1023333 (= lambda!192092 lambda!192078)))

(declare-fun bs!1023334 () Bool)

(assert (= bs!1023334 (and b!4625344 b!4625285)))

(assert (=> bs!1023334 (= lambda!192092 lambda!192075)))

(declare-fun bs!1023335 () Bool)

(assert (= bs!1023335 (and b!4625344 b!4625232)))

(assert (=> bs!1023335 (= lambda!192092 lambda!192058)))

(declare-fun bs!1023336 () Bool)

(assert (= bs!1023336 (and b!4625344 b!4625282)))

(assert (=> bs!1023336 (= lambda!192092 lambda!192074)))

(declare-fun bs!1023337 () Bool)

(assert (= bs!1023337 (and b!4625344 b!4625235)))

(assert (=> bs!1023337 (= (= (ListMap!4278 Nil!51530) lt!1783063) (= lambda!192092 lambda!192060))))

(declare-fun bs!1023338 () Bool)

(assert (= bs!1023338 (and b!4625344 d!1456878)))

(assert (=> bs!1023338 (= (= (ListMap!4278 Nil!51530) lt!1783060) (= lambda!192092 lambda!192061))))

(declare-fun bs!1023339 () Bool)

(assert (= bs!1023339 (and b!4625344 d!1456956)))

(assert (=> bs!1023339 (= (= (ListMap!4278 Nil!51530) lt!1783151) (= lambda!192092 lambda!192081))))

(assert (=> bs!1023337 (= lambda!192092 lambda!192059)))

(assert (=> bs!1023334 (= (= (ListMap!4278 Nil!51530) lt!1783132) (= lambda!192092 lambda!192076))))

(declare-fun bs!1023340 () Bool)

(assert (= bs!1023340 (and b!4625344 d!1456952)))

(assert (=> bs!1023340 (= (= (ListMap!4278 Nil!51530) lt!1783129) (= lambda!192092 lambda!192077))))

(assert (=> b!4625344 true))

(declare-fun bs!1023341 () Bool)

(declare-fun b!4625347 () Bool)

(assert (= bs!1023341 (and b!4625347 b!4625290)))

(declare-fun lambda!192093 () Int)

(assert (=> bs!1023341 (= (= (ListMap!4278 Nil!51530) lt!1783154) (= lambda!192093 lambda!192080))))

(assert (=> bs!1023341 (= lambda!192093 lambda!192079)))

(declare-fun bs!1023342 () Bool)

(assert (= bs!1023342 (and b!4625347 b!4625287)))

(assert (=> bs!1023342 (= lambda!192093 lambda!192078)))

(declare-fun bs!1023343 () Bool)

(assert (= bs!1023343 (and b!4625347 b!4625285)))

(assert (=> bs!1023343 (= lambda!192093 lambda!192075)))

(declare-fun bs!1023344 () Bool)

(assert (= bs!1023344 (and b!4625347 b!4625282)))

(assert (=> bs!1023344 (= lambda!192093 lambda!192074)))

(declare-fun bs!1023345 () Bool)

(assert (= bs!1023345 (and b!4625347 b!4625235)))

(assert (=> bs!1023345 (= (= (ListMap!4278 Nil!51530) lt!1783063) (= lambda!192093 lambda!192060))))

(declare-fun bs!1023346 () Bool)

(assert (= bs!1023346 (and b!4625347 d!1456878)))

(assert (=> bs!1023346 (= (= (ListMap!4278 Nil!51530) lt!1783060) (= lambda!192093 lambda!192061))))

(declare-fun bs!1023347 () Bool)

(assert (= bs!1023347 (and b!4625347 d!1456956)))

(assert (=> bs!1023347 (= (= (ListMap!4278 Nil!51530) lt!1783151) (= lambda!192093 lambda!192081))))

(assert (=> bs!1023345 (= lambda!192093 lambda!192059)))

(declare-fun bs!1023348 () Bool)

(assert (= bs!1023348 (and b!4625347 b!4625344)))

(assert (=> bs!1023348 (= lambda!192093 lambda!192092)))

(declare-fun bs!1023349 () Bool)

(assert (= bs!1023349 (and b!4625347 b!4625232)))

(assert (=> bs!1023349 (= lambda!192093 lambda!192058)))

(assert (=> bs!1023343 (= (= (ListMap!4278 Nil!51530) lt!1783132) (= lambda!192093 lambda!192076))))

(declare-fun bs!1023350 () Bool)

(assert (= bs!1023350 (and b!4625347 d!1456952)))

(assert (=> bs!1023350 (= (= (ListMap!4278 Nil!51530) lt!1783129) (= lambda!192093 lambda!192077))))

(assert (=> b!4625347 true))

(declare-fun lt!1783240 () ListMap!4277)

(declare-fun lambda!192094 () Int)

(assert (=> bs!1023341 (= (= lt!1783240 lt!1783154) (= lambda!192094 lambda!192080))))

(assert (=> bs!1023341 (= (= lt!1783240 (ListMap!4278 Nil!51530)) (= lambda!192094 lambda!192079))))

(assert (=> bs!1023342 (= (= lt!1783240 (ListMap!4278 Nil!51530)) (= lambda!192094 lambda!192078))))

(assert (=> bs!1023343 (= (= lt!1783240 (ListMap!4278 Nil!51530)) (= lambda!192094 lambda!192075))))

(assert (=> b!4625347 (= (= lt!1783240 (ListMap!4278 Nil!51530)) (= lambda!192094 lambda!192093))))

(assert (=> bs!1023344 (= (= lt!1783240 (ListMap!4278 Nil!51530)) (= lambda!192094 lambda!192074))))

(assert (=> bs!1023345 (= (= lt!1783240 lt!1783063) (= lambda!192094 lambda!192060))))

(assert (=> bs!1023346 (= (= lt!1783240 lt!1783060) (= lambda!192094 lambda!192061))))

(assert (=> bs!1023347 (= (= lt!1783240 lt!1783151) (= lambda!192094 lambda!192081))))

(assert (=> bs!1023345 (= (= lt!1783240 (ListMap!4278 Nil!51530)) (= lambda!192094 lambda!192059))))

(assert (=> bs!1023348 (= (= lt!1783240 (ListMap!4278 Nil!51530)) (= lambda!192094 lambda!192092))))

(assert (=> bs!1023349 (= (= lt!1783240 (ListMap!4278 Nil!51530)) (= lambda!192094 lambda!192058))))

(assert (=> bs!1023343 (= (= lt!1783240 lt!1783132) (= lambda!192094 lambda!192076))))

(assert (=> bs!1023350 (= (= lt!1783240 lt!1783129) (= lambda!192094 lambda!192077))))

(assert (=> b!4625347 true))

(declare-fun bs!1023351 () Bool)

(declare-fun d!1456978 () Bool)

(assert (= bs!1023351 (and d!1456978 b!4625290)))

(declare-fun lt!1783237 () ListMap!4277)

(declare-fun lambda!192095 () Int)

(assert (=> bs!1023351 (= (= lt!1783237 lt!1783154) (= lambda!192095 lambda!192080))))

(assert (=> bs!1023351 (= (= lt!1783237 (ListMap!4278 Nil!51530)) (= lambda!192095 lambda!192079))))

(declare-fun bs!1023352 () Bool)

(assert (= bs!1023352 (and d!1456978 b!4625287)))

(assert (=> bs!1023352 (= (= lt!1783237 (ListMap!4278 Nil!51530)) (= lambda!192095 lambda!192078))))

(declare-fun bs!1023353 () Bool)

(assert (= bs!1023353 (and d!1456978 b!4625347)))

(assert (=> bs!1023353 (= (= lt!1783237 lt!1783240) (= lambda!192095 lambda!192094))))

(declare-fun bs!1023354 () Bool)

(assert (= bs!1023354 (and d!1456978 b!4625285)))

(assert (=> bs!1023354 (= (= lt!1783237 (ListMap!4278 Nil!51530)) (= lambda!192095 lambda!192075))))

(assert (=> bs!1023353 (= (= lt!1783237 (ListMap!4278 Nil!51530)) (= lambda!192095 lambda!192093))))

(declare-fun bs!1023355 () Bool)

(assert (= bs!1023355 (and d!1456978 b!4625282)))

(assert (=> bs!1023355 (= (= lt!1783237 (ListMap!4278 Nil!51530)) (= lambda!192095 lambda!192074))))

(declare-fun bs!1023356 () Bool)

(assert (= bs!1023356 (and d!1456978 b!4625235)))

(assert (=> bs!1023356 (= (= lt!1783237 lt!1783063) (= lambda!192095 lambda!192060))))

(declare-fun bs!1023357 () Bool)

(assert (= bs!1023357 (and d!1456978 d!1456878)))

(assert (=> bs!1023357 (= (= lt!1783237 lt!1783060) (= lambda!192095 lambda!192061))))

(declare-fun bs!1023358 () Bool)

(assert (= bs!1023358 (and d!1456978 d!1456956)))

(assert (=> bs!1023358 (= (= lt!1783237 lt!1783151) (= lambda!192095 lambda!192081))))

(assert (=> bs!1023356 (= (= lt!1783237 (ListMap!4278 Nil!51530)) (= lambda!192095 lambda!192059))))

(declare-fun bs!1023359 () Bool)

(assert (= bs!1023359 (and d!1456978 b!4625344)))

(assert (=> bs!1023359 (= (= lt!1783237 (ListMap!4278 Nil!51530)) (= lambda!192095 lambda!192092))))

(declare-fun bs!1023360 () Bool)

(assert (= bs!1023360 (and d!1456978 b!4625232)))

(assert (=> bs!1023360 (= (= lt!1783237 (ListMap!4278 Nil!51530)) (= lambda!192095 lambda!192058))))

(assert (=> bs!1023354 (= (= lt!1783237 lt!1783132) (= lambda!192095 lambda!192076))))

(declare-fun bs!1023361 () Bool)

(assert (= bs!1023361 (and d!1456978 d!1456952)))

(assert (=> bs!1023361 (= (= lt!1783237 lt!1783129) (= lambda!192095 lambda!192077))))

(assert (=> d!1456978 true))

(declare-fun e!2885194 () ListMap!4277)

(assert (=> b!4625344 (= e!2885194 (ListMap!4278 Nil!51530))))

(declare-fun lt!1783242 () Unit!112017)

(declare-fun call!322645 () Unit!112017)

(assert (=> b!4625344 (= lt!1783242 call!322645)))

(declare-fun call!322646 () Bool)

(assert (=> b!4625344 call!322646))

(declare-fun lt!1783250 () Unit!112017)

(assert (=> b!4625344 (= lt!1783250 lt!1783242)))

(declare-fun call!322647 () Bool)

(assert (=> b!4625344 call!322647))

(declare-fun lt!1783248 () Unit!112017)

(declare-fun Unit!112102 () Unit!112017)

(assert (=> b!4625344 (= lt!1783248 Unit!112102)))

(declare-fun bm!322640 () Bool)

(declare-fun c!791757 () Bool)

(assert (=> bm!322640 (= call!322646 (forall!10824 (ite c!791757 (toList!4973 (ListMap!4278 Nil!51530)) lt!1782819) (ite c!791757 lambda!192092 lambda!192094)))))

(declare-fun b!4625346 () Bool)

(declare-fun e!2885193 () Bool)

(assert (=> b!4625346 (= e!2885193 (invariantList!1204 (toList!4973 lt!1783237)))))

(assert (=> b!4625347 (= e!2885194 lt!1783240)))

(declare-fun lt!1783238 () ListMap!4277)

(assert (=> b!4625347 (= lt!1783238 (+!1870 (ListMap!4278 Nil!51530) (h!57580 lt!1782819)))))

(assert (=> b!4625347 (= lt!1783240 (addToMapMapFromBucket!965 (t!358686 lt!1782819) (+!1870 (ListMap!4278 Nil!51530) (h!57580 lt!1782819))))))

(declare-fun lt!1783253 () Unit!112017)

(assert (=> b!4625347 (= lt!1783253 call!322645)))

(assert (=> b!4625347 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192093)))

(declare-fun lt!1783247 () Unit!112017)

(assert (=> b!4625347 (= lt!1783247 lt!1783253)))

(assert (=> b!4625347 (forall!10824 (toList!4973 lt!1783238) lambda!192094)))

(declare-fun lt!1783255 () Unit!112017)

(declare-fun Unit!112103 () Unit!112017)

(assert (=> b!4625347 (= lt!1783255 Unit!112103)))

(assert (=> b!4625347 (forall!10824 (t!358686 lt!1782819) lambda!192094)))

(declare-fun lt!1783243 () Unit!112017)

(declare-fun Unit!112105 () Unit!112017)

(assert (=> b!4625347 (= lt!1783243 Unit!112105)))

(declare-fun lt!1783236 () Unit!112017)

(declare-fun Unit!112106 () Unit!112017)

(assert (=> b!4625347 (= lt!1783236 Unit!112106)))

(declare-fun lt!1783244 () Unit!112017)

(assert (=> b!4625347 (= lt!1783244 (forallContained!3050 (toList!4973 lt!1783238) lambda!192094 (h!57580 lt!1782819)))))

(assert (=> b!4625347 (contains!14571 lt!1783238 (_1!29525 (h!57580 lt!1782819)))))

(declare-fun lt!1783249 () Unit!112017)

(declare-fun Unit!112107 () Unit!112017)

(assert (=> b!4625347 (= lt!1783249 Unit!112107)))

(assert (=> b!4625347 (contains!14571 lt!1783240 (_1!29525 (h!57580 lt!1782819)))))

(declare-fun lt!1783245 () Unit!112017)

(declare-fun Unit!112108 () Unit!112017)

(assert (=> b!4625347 (= lt!1783245 Unit!112108)))

(assert (=> b!4625347 (forall!10824 lt!1782819 lambda!192094)))

(declare-fun lt!1783251 () Unit!112017)

(declare-fun Unit!112109 () Unit!112017)

(assert (=> b!4625347 (= lt!1783251 Unit!112109)))

(assert (=> b!4625347 (forall!10824 (toList!4973 lt!1783238) lambda!192094)))

(declare-fun lt!1783254 () Unit!112017)

(declare-fun Unit!112110 () Unit!112017)

(assert (=> b!4625347 (= lt!1783254 Unit!112110)))

(declare-fun lt!1783241 () Unit!112017)

(declare-fun Unit!112111 () Unit!112017)

(assert (=> b!4625347 (= lt!1783241 Unit!112111)))

(declare-fun lt!1783239 () Unit!112017)

(assert (=> b!4625347 (= lt!1783239 (addForallContainsKeyThenBeforeAdding!505 (ListMap!4278 Nil!51530) lt!1783240 (_1!29525 (h!57580 lt!1782819)) (_2!29525 (h!57580 lt!1782819))))))

(assert (=> b!4625347 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192094)))

(declare-fun lt!1783252 () Unit!112017)

(assert (=> b!4625347 (= lt!1783252 lt!1783239)))

(assert (=> b!4625347 call!322647))

(declare-fun lt!1783256 () Unit!112017)

(declare-fun Unit!112113 () Unit!112017)

(assert (=> b!4625347 (= lt!1783256 Unit!112113)))

(declare-fun res!1939557 () Bool)

(assert (=> b!4625347 (= res!1939557 call!322646)))

(declare-fun e!2885192 () Bool)

(assert (=> b!4625347 (=> (not res!1939557) (not e!2885192))))

(assert (=> b!4625347 e!2885192))

(declare-fun lt!1783246 () Unit!112017)

(declare-fun Unit!112116 () Unit!112017)

(assert (=> b!4625347 (= lt!1783246 Unit!112116)))

(declare-fun bm!322641 () Bool)

(assert (=> bm!322641 (= call!322647 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) (ite c!791757 lambda!192092 lambda!192094)))))

(declare-fun bm!322642 () Bool)

(assert (=> bm!322642 (= call!322645 (lemmaContainsAllItsOwnKeys!506 (ListMap!4278 Nil!51530)))))

(declare-fun b!4625348 () Bool)

(assert (=> b!4625348 (= e!2885192 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192094))))

(declare-fun b!4625345 () Bool)

(declare-fun res!1939556 () Bool)

(assert (=> b!4625345 (=> (not res!1939556) (not e!2885193))))

(assert (=> b!4625345 (= res!1939556 (forall!10824 (toList!4973 (ListMap!4278 Nil!51530)) lambda!192095))))

(assert (=> d!1456978 e!2885193))

(declare-fun res!1939555 () Bool)

(assert (=> d!1456978 (=> (not res!1939555) (not e!2885193))))

(assert (=> d!1456978 (= res!1939555 (forall!10824 lt!1782819 lambda!192095))))

(assert (=> d!1456978 (= lt!1783237 e!2885194)))

(assert (=> d!1456978 (= c!791757 ((_ is Nil!51530) lt!1782819))))

(assert (=> d!1456978 (noDuplicateKeys!1504 lt!1782819)))

(assert (=> d!1456978 (= (addToMapMapFromBucket!965 lt!1782819 (ListMap!4278 Nil!51530)) lt!1783237)))

(assert (= (and d!1456978 c!791757) b!4625344))

(assert (= (and d!1456978 (not c!791757)) b!4625347))

(assert (= (and b!4625347 res!1939557) b!4625348))

(assert (= (or b!4625344 b!4625347) bm!322642))

(assert (= (or b!4625344 b!4625347) bm!322641))

(assert (= (or b!4625344 b!4625347) bm!322640))

(assert (= (and d!1456978 res!1939555) b!4625345))

(assert (= (and b!4625345 res!1939556) b!4625346))

(declare-fun m!5466947 () Bool)

(assert (=> bm!322641 m!5466947))

(declare-fun m!5466949 () Bool)

(assert (=> b!4625348 m!5466949))

(assert (=> bm!322642 m!5466669))

(declare-fun m!5466951 () Bool)

(assert (=> b!4625346 m!5466951))

(declare-fun m!5466953 () Bool)

(assert (=> b!4625347 m!5466953))

(declare-fun m!5466955 () Bool)

(assert (=> b!4625347 m!5466955))

(declare-fun m!5466957 () Bool)

(assert (=> b!4625347 m!5466957))

(declare-fun m!5466959 () Bool)

(assert (=> b!4625347 m!5466959))

(declare-fun m!5466961 () Bool)

(assert (=> b!4625347 m!5466961))

(declare-fun m!5466963 () Bool)

(assert (=> b!4625347 m!5466963))

(declare-fun m!5466965 () Bool)

(assert (=> b!4625347 m!5466965))

(declare-fun m!5466967 () Bool)

(assert (=> b!4625347 m!5466967))

(assert (=> b!4625347 m!5466949))

(assert (=> b!4625347 m!5466959))

(declare-fun m!5466969 () Bool)

(assert (=> b!4625347 m!5466969))

(assert (=> b!4625347 m!5466963))

(declare-fun m!5466971 () Bool)

(assert (=> b!4625347 m!5466971))

(declare-fun m!5466973 () Bool)

(assert (=> b!4625345 m!5466973))

(declare-fun m!5466975 () Bool)

(assert (=> d!1456978 m!5466975))

(declare-fun m!5466977 () Bool)

(assert (=> d!1456978 m!5466977))

(declare-fun m!5466979 () Bool)

(assert (=> bm!322640 m!5466979))

(assert (=> b!4625118 d!1456978))

(declare-fun bs!1023362 () Bool)

(declare-fun d!1456984 () Bool)

(assert (= bs!1023362 (and d!1456984 b!4625122)))

(declare-fun lambda!192098 () Int)

(assert (=> bs!1023362 (= lambda!192098 lambda!191976)))

(declare-fun bs!1023363 () Bool)

(assert (= bs!1023363 (and d!1456984 d!1456930)))

(assert (=> bs!1023363 (= lambda!192098 lambda!192073)))

(declare-fun bs!1023364 () Bool)

(assert (= bs!1023364 (and d!1456984 d!1456960)))

(assert (=> bs!1023364 (= lambda!192098 lambda!192088)))

(declare-fun lt!1783264 () ListMap!4277)

(assert (=> d!1456984 (invariantList!1204 (toList!4973 lt!1783264))))

(declare-fun e!2885202 () ListMap!4277)

(assert (=> d!1456984 (= lt!1783264 e!2885202)))

(declare-fun c!791759 () Bool)

(assert (=> d!1456984 (= c!791759 ((_ is Cons!51531) (Cons!51531 (tuple2!52465 hash!414 lt!1782804) Nil!51531)))))

(assert (=> d!1456984 (forall!10822 (Cons!51531 (tuple2!52465 hash!414 lt!1782804) Nil!51531) lambda!192098)))

(assert (=> d!1456984 (= (extractMap!1560 (Cons!51531 (tuple2!52465 hash!414 lt!1782804) Nil!51531)) lt!1783264)))

(declare-fun b!4625357 () Bool)

(assert (=> b!4625357 (= e!2885202 (addToMapMapFromBucket!965 (_2!29526 (h!57581 (Cons!51531 (tuple2!52465 hash!414 lt!1782804) Nil!51531))) (extractMap!1560 (t!358687 (Cons!51531 (tuple2!52465 hash!414 lt!1782804) Nil!51531)))))))

(declare-fun b!4625358 () Bool)

(assert (=> b!4625358 (= e!2885202 (ListMap!4278 Nil!51530))))

(assert (= (and d!1456984 c!791759) b!4625357))

(assert (= (and d!1456984 (not c!791759)) b!4625358))

(declare-fun m!5466981 () Bool)

(assert (=> d!1456984 m!5466981))

(declare-fun m!5466983 () Bool)

(assert (=> d!1456984 m!5466983))

(declare-fun m!5466985 () Bool)

(assert (=> b!4625357 m!5466985))

(assert (=> b!4625357 m!5466985))

(declare-fun m!5466987 () Bool)

(assert (=> b!4625357 m!5466987))

(assert (=> b!4625118 d!1456984))

(declare-fun d!1456986 () Bool)

(declare-fun e!2885203 () Bool)

(assert (=> d!1456986 e!2885203))

(declare-fun res!1939564 () Bool)

(assert (=> d!1456986 (=> (not res!1939564) (not e!2885203))))

(declare-fun lt!1783271 () ListMap!4277)

(assert (=> d!1456986 (= res!1939564 (contains!14571 lt!1783271 (_1!29525 lt!1782798)))))

(declare-fun lt!1783270 () List!51654)

(assert (=> d!1456986 (= lt!1783271 (ListMap!4278 lt!1783270))))

(declare-fun lt!1783268 () Unit!112017)

(declare-fun lt!1783269 () Unit!112017)

(assert (=> d!1456986 (= lt!1783268 lt!1783269)))

(assert (=> d!1456986 (= (getValueByKey!1450 lt!1783270 (_1!29525 lt!1782798)) (Some!11587 (_2!29525 lt!1782798)))))

(assert (=> d!1456986 (= lt!1783269 (lemmaContainsTupThenGetReturnValue!848 lt!1783270 (_1!29525 lt!1782798) (_2!29525 lt!1782798)))))

(assert (=> d!1456986 (= lt!1783270 (insertNoDuplicatedKeys!356 (toList!4973 (addToMapMapFromBucket!965 lt!1782819 (ListMap!4278 Nil!51530))) (_1!29525 lt!1782798) (_2!29525 lt!1782798)))))

(assert (=> d!1456986 (= (+!1870 (addToMapMapFromBucket!965 lt!1782819 (ListMap!4278 Nil!51530)) lt!1782798) lt!1783271)))

(declare-fun b!4625359 () Bool)

(declare-fun res!1939565 () Bool)

(assert (=> b!4625359 (=> (not res!1939565) (not e!2885203))))

(assert (=> b!4625359 (= res!1939565 (= (getValueByKey!1450 (toList!4973 lt!1783271) (_1!29525 lt!1782798)) (Some!11587 (_2!29525 lt!1782798))))))

(declare-fun b!4625360 () Bool)

(assert (=> b!4625360 (= e!2885203 (contains!14576 (toList!4973 lt!1783271) lt!1782798))))

(assert (= (and d!1456986 res!1939564) b!4625359))

(assert (= (and b!4625359 res!1939565) b!4625360))

(declare-fun m!5466989 () Bool)

(assert (=> d!1456986 m!5466989))

(declare-fun m!5466991 () Bool)

(assert (=> d!1456986 m!5466991))

(declare-fun m!5466993 () Bool)

(assert (=> d!1456986 m!5466993))

(declare-fun m!5466995 () Bool)

(assert (=> d!1456986 m!5466995))

(declare-fun m!5466997 () Bool)

(assert (=> b!4625359 m!5466997))

(declare-fun m!5466999 () Bool)

(assert (=> b!4625360 m!5466999))

(assert (=> b!4625118 d!1456986))

(declare-fun d!1456988 () Bool)

(assert (=> d!1456988 (= (eq!819 lt!1782809 (+!1870 (extractMap!1560 (Cons!51531 (tuple2!52465 hash!414 lt!1782804) Nil!51531)) (h!57580 oldBucket!40))) (= (content!8797 (toList!4973 lt!1782809)) (content!8797 (toList!4973 (+!1870 (extractMap!1560 (Cons!51531 (tuple2!52465 hash!414 lt!1782804) Nil!51531)) (h!57580 oldBucket!40))))))))

(declare-fun bs!1023375 () Bool)

(assert (= bs!1023375 d!1456988))

(declare-fun m!5467001 () Bool)

(assert (=> bs!1023375 m!5467001))

(declare-fun m!5467003 () Bool)

(assert (=> bs!1023375 m!5467003))

(assert (=> b!4625118 d!1456988))

(declare-fun d!1456990 () Bool)

(assert (=> d!1456990 (eq!819 (addToMapMapFromBucket!965 (Cons!51530 lt!1782798 lt!1782819) (ListMap!4278 Nil!51530)) (+!1870 (addToMapMapFromBucket!965 lt!1782819 (ListMap!4278 Nil!51530)) lt!1782798))))

(declare-fun lt!1783272 () Unit!112017)

(assert (=> d!1456990 (= lt!1783272 (choose!31303 lt!1782798 lt!1782819 (ListMap!4278 Nil!51530)))))

(assert (=> d!1456990 (noDuplicateKeys!1504 lt!1782819)))

(assert (=> d!1456990 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!70 lt!1782798 lt!1782819 (ListMap!4278 Nil!51530)) lt!1783272)))

(declare-fun bs!1023376 () Bool)

(assert (= bs!1023376 d!1456990))

(assert (=> bs!1023376 m!5466349))

(assert (=> bs!1023376 m!5466349))

(assert (=> bs!1023376 m!5466331))

(assert (=> bs!1023376 m!5466357))

(assert (=> bs!1023376 m!5466977))

(assert (=> bs!1023376 m!5466323))

(assert (=> bs!1023376 m!5466323))

(assert (=> bs!1023376 m!5466331))

(declare-fun m!5467009 () Bool)

(assert (=> bs!1023376 m!5467009))

(assert (=> b!4625118 d!1456990))

(declare-fun d!1456994 () Bool)

(declare-fun e!2885204 () Bool)

(assert (=> d!1456994 e!2885204))

(declare-fun res!1939566 () Bool)

(assert (=> d!1456994 (=> (not res!1939566) (not e!2885204))))

(declare-fun lt!1783276 () ListMap!4277)

(assert (=> d!1456994 (= res!1939566 (contains!14571 lt!1783276 (_1!29525 lt!1782799)))))

(declare-fun lt!1783275 () List!51654)

(assert (=> d!1456994 (= lt!1783276 (ListMap!4278 lt!1783275))))

(declare-fun lt!1783273 () Unit!112017)

(declare-fun lt!1783274 () Unit!112017)

(assert (=> d!1456994 (= lt!1783273 lt!1783274)))

(assert (=> d!1456994 (= (getValueByKey!1450 lt!1783275 (_1!29525 lt!1782799)) (Some!11587 (_2!29525 lt!1782799)))))

(assert (=> d!1456994 (= lt!1783274 (lemmaContainsTupThenGetReturnValue!848 lt!1783275 (_1!29525 lt!1782799) (_2!29525 lt!1782799)))))

(assert (=> d!1456994 (= lt!1783275 (insertNoDuplicatedKeys!356 (toList!4973 (addToMapMapFromBucket!965 lt!1782804 (ListMap!4278 Nil!51530))) (_1!29525 lt!1782799) (_2!29525 lt!1782799)))))

(assert (=> d!1456994 (= (+!1870 (addToMapMapFromBucket!965 lt!1782804 (ListMap!4278 Nil!51530)) lt!1782799) lt!1783276)))

(declare-fun b!4625361 () Bool)

(declare-fun res!1939567 () Bool)

(assert (=> b!4625361 (=> (not res!1939567) (not e!2885204))))

(assert (=> b!4625361 (= res!1939567 (= (getValueByKey!1450 (toList!4973 lt!1783276) (_1!29525 lt!1782799)) (Some!11587 (_2!29525 lt!1782799))))))

(declare-fun b!4625362 () Bool)

(assert (=> b!4625362 (= e!2885204 (contains!14576 (toList!4973 lt!1783276) lt!1782799))))

(assert (= (and d!1456994 res!1939566) b!4625361))

(assert (= (and b!4625361 res!1939567) b!4625362))

(declare-fun m!5467011 () Bool)

(assert (=> d!1456994 m!5467011))

(declare-fun m!5467013 () Bool)

(assert (=> d!1456994 m!5467013))

(declare-fun m!5467015 () Bool)

(assert (=> d!1456994 m!5467015))

(declare-fun m!5467017 () Bool)

(assert (=> d!1456994 m!5467017))

(declare-fun m!5467019 () Bool)

(assert (=> b!4625361 m!5467019))

(declare-fun m!5467021 () Bool)

(assert (=> b!4625362 m!5467021))

(assert (=> b!4625118 d!1456994))

(declare-fun b!4625378 () Bool)

(declare-fun e!2885215 () List!51654)

(declare-fun e!2885216 () List!51654)

(assert (=> b!4625378 (= e!2885215 e!2885216)))

(declare-fun c!791765 () Bool)

(assert (=> b!4625378 (= c!791765 ((_ is Cons!51530) (t!358686 oldBucket!40)))))

(declare-fun d!1456996 () Bool)

(declare-fun lt!1783282 () List!51654)

(assert (=> d!1456996 (not (containsKey!2444 lt!1783282 key!4968))))

(assert (=> d!1456996 (= lt!1783282 e!2885215)))

(declare-fun c!791764 () Bool)

(assert (=> d!1456996 (= c!791764 (and ((_ is Cons!51530) (t!358686 oldBucket!40)) (= (_1!29525 (h!57580 (t!358686 oldBucket!40))) key!4968)))))

(assert (=> d!1456996 (noDuplicateKeys!1504 (t!358686 oldBucket!40))))

(assert (=> d!1456996 (= (removePairForKey!1127 (t!358686 oldBucket!40) key!4968) lt!1783282)))

(declare-fun b!4625380 () Bool)

(assert (=> b!4625380 (= e!2885216 Nil!51530)))

(declare-fun b!4625379 () Bool)

(assert (=> b!4625379 (= e!2885216 (Cons!51530 (h!57580 (t!358686 oldBucket!40)) (removePairForKey!1127 (t!358686 (t!358686 oldBucket!40)) key!4968)))))

(declare-fun b!4625377 () Bool)

(assert (=> b!4625377 (= e!2885215 (t!358686 (t!358686 oldBucket!40)))))

(assert (= (and d!1456996 c!791764) b!4625377))

(assert (= (and d!1456996 (not c!791764)) b!4625378))

(assert (= (and b!4625378 c!791765) b!4625379))

(assert (= (and b!4625378 (not c!791765)) b!4625380))

(declare-fun m!5467029 () Bool)

(assert (=> d!1456996 m!5467029))

(declare-fun m!5467031 () Bool)

(assert (=> d!1456996 m!5467031))

(declare-fun m!5467033 () Bool)

(assert (=> b!4625379 m!5467033))

(assert (=> b!4625107 d!1456996))

(declare-fun b!4625382 () Bool)

(declare-fun e!2885217 () List!51654)

(declare-fun e!2885218 () List!51654)

(assert (=> b!4625382 (= e!2885217 e!2885218)))

(declare-fun c!791767 () Bool)

(assert (=> b!4625382 (= c!791767 ((_ is Cons!51530) lt!1782804))))

(declare-fun d!1457000 () Bool)

(declare-fun lt!1783283 () List!51654)

(assert (=> d!1457000 (not (containsKey!2444 lt!1783283 key!4968))))

(assert (=> d!1457000 (= lt!1783283 e!2885217)))

(declare-fun c!791766 () Bool)

(assert (=> d!1457000 (= c!791766 (and ((_ is Cons!51530) lt!1782804) (= (_1!29525 (h!57580 lt!1782804)) key!4968)))))

(assert (=> d!1457000 (noDuplicateKeys!1504 lt!1782804)))

(assert (=> d!1457000 (= (removePairForKey!1127 lt!1782804 key!4968) lt!1783283)))

(declare-fun b!4625384 () Bool)

(assert (=> b!4625384 (= e!2885218 Nil!51530)))

(declare-fun b!4625383 () Bool)

(assert (=> b!4625383 (= e!2885218 (Cons!51530 (h!57580 lt!1782804) (removePairForKey!1127 (t!358686 lt!1782804) key!4968)))))

(declare-fun b!4625381 () Bool)

(assert (=> b!4625381 (= e!2885217 (t!358686 lt!1782804))))

(assert (= (and d!1457000 c!791766) b!4625381))

(assert (= (and d!1457000 (not c!791766)) b!4625382))

(assert (= (and b!4625382 c!791767) b!4625383))

(assert (= (and b!4625382 (not c!791767)) b!4625384))

(declare-fun m!5467035 () Bool)

(assert (=> d!1457000 m!5467035))

(assert (=> d!1457000 m!5466827))

(declare-fun m!5467037 () Bool)

(assert (=> b!4625383 m!5467037))

(assert (=> b!4625117 d!1457000))

(declare-fun d!1457002 () Bool)

(assert (=> d!1457002 (= (tail!8139 newBucket!224) (t!358686 newBucket!224))))

(assert (=> b!4625117 d!1457002))

(declare-fun d!1457004 () Bool)

(assert (=> d!1457004 (= (tail!8139 oldBucket!40) (t!358686 oldBucket!40))))

(assert (=> b!4625117 d!1457004))

(declare-fun bs!1023377 () Bool)

(declare-fun d!1457006 () Bool)

(assert (= bs!1023377 (and d!1457006 b!4625290)))

(declare-fun lambda!192102 () Int)

(assert (=> bs!1023377 (not (= lambda!192102 lambda!192080))))

(assert (=> bs!1023377 (not (= lambda!192102 lambda!192079))))

(declare-fun bs!1023378 () Bool)

(assert (= bs!1023378 (and d!1457006 b!4625287)))

(assert (=> bs!1023378 (not (= lambda!192102 lambda!192078))))

(declare-fun bs!1023379 () Bool)

(assert (= bs!1023379 (and d!1457006 b!4625347)))

(assert (=> bs!1023379 (not (= lambda!192102 lambda!192094))))

(declare-fun bs!1023380 () Bool)

(assert (= bs!1023380 (and d!1457006 b!4625285)))

(assert (=> bs!1023380 (not (= lambda!192102 lambda!192075))))

(assert (=> bs!1023379 (not (= lambda!192102 lambda!192093))))

(declare-fun bs!1023381 () Bool)

(assert (= bs!1023381 (and d!1457006 b!4625282)))

(assert (=> bs!1023381 (not (= lambda!192102 lambda!192074))))

(declare-fun bs!1023382 () Bool)

(assert (= bs!1023382 (and d!1457006 b!4625235)))

(assert (=> bs!1023382 (not (= lambda!192102 lambda!192060))))

(declare-fun bs!1023383 () Bool)

(assert (= bs!1023383 (and d!1457006 d!1456878)))

(assert (=> bs!1023383 (not (= lambda!192102 lambda!192061))))

(declare-fun bs!1023384 () Bool)

(assert (= bs!1023384 (and d!1457006 d!1456956)))

(assert (=> bs!1023384 (not (= lambda!192102 lambda!192081))))

(declare-fun bs!1023385 () Bool)

(assert (= bs!1023385 (and d!1457006 b!4625344)))

(assert (=> bs!1023385 (not (= lambda!192102 lambda!192092))))

(declare-fun bs!1023386 () Bool)

(assert (= bs!1023386 (and d!1457006 b!4625232)))

(assert (=> bs!1023386 (not (= lambda!192102 lambda!192058))))

(assert (=> bs!1023382 (not (= lambda!192102 lambda!192059))))

(declare-fun bs!1023387 () Bool)

(assert (= bs!1023387 (and d!1457006 d!1456978)))

(assert (=> bs!1023387 (not (= lambda!192102 lambda!192095))))

(assert (=> bs!1023380 (not (= lambda!192102 lambda!192076))))

(declare-fun bs!1023388 () Bool)

(assert (= bs!1023388 (and d!1457006 d!1456952)))

(assert (=> bs!1023388 (not (= lambda!192102 lambda!192077))))

(assert (=> d!1457006 true))

(assert (=> d!1457006 true))

(assert (=> d!1457006 (= (allKeysSameHash!1358 newBucket!224 hash!414 hashF!1389) (forall!10824 newBucket!224 lambda!192102))))

(declare-fun bs!1023389 () Bool)

(assert (= bs!1023389 d!1457006))

(declare-fun m!5467039 () Bool)

(assert (=> bs!1023389 m!5467039))

(assert (=> b!4625114 d!1457006))

(declare-fun bs!1023390 () Bool)

(declare-fun d!1457008 () Bool)

(assert (= bs!1023390 (and d!1457008 b!4625290)))

(declare-fun lambda!192103 () Int)

(assert (=> bs!1023390 (not (= lambda!192103 lambda!192080))))

(assert (=> bs!1023390 (not (= lambda!192103 lambda!192079))))

(declare-fun bs!1023391 () Bool)

(assert (= bs!1023391 (and d!1457008 b!4625287)))

(assert (=> bs!1023391 (not (= lambda!192103 lambda!192078))))

(declare-fun bs!1023392 () Bool)

(assert (= bs!1023392 (and d!1457008 b!4625347)))

(assert (=> bs!1023392 (not (= lambda!192103 lambda!192094))))

(declare-fun bs!1023393 () Bool)

(assert (= bs!1023393 (and d!1457008 b!4625285)))

(assert (=> bs!1023393 (not (= lambda!192103 lambda!192075))))

(assert (=> bs!1023392 (not (= lambda!192103 lambda!192093))))

(declare-fun bs!1023394 () Bool)

(assert (= bs!1023394 (and d!1457008 b!4625282)))

(assert (=> bs!1023394 (not (= lambda!192103 lambda!192074))))

(declare-fun bs!1023395 () Bool)

(assert (= bs!1023395 (and d!1457008 b!4625235)))

(assert (=> bs!1023395 (not (= lambda!192103 lambda!192060))))

(declare-fun bs!1023397 () Bool)

(assert (= bs!1023397 (and d!1457008 d!1456878)))

(assert (=> bs!1023397 (not (= lambda!192103 lambda!192061))))

(declare-fun bs!1023399 () Bool)

(assert (= bs!1023399 (and d!1457008 d!1456956)))

(assert (=> bs!1023399 (not (= lambda!192103 lambda!192081))))

(declare-fun bs!1023401 () Bool)

(assert (= bs!1023401 (and d!1457008 b!4625344)))

(assert (=> bs!1023401 (not (= lambda!192103 lambda!192092))))

(declare-fun bs!1023403 () Bool)

(assert (= bs!1023403 (and d!1457008 b!4625232)))

(assert (=> bs!1023403 (not (= lambda!192103 lambda!192058))))

(assert (=> bs!1023395 (not (= lambda!192103 lambda!192059))))

(declare-fun bs!1023405 () Bool)

(assert (= bs!1023405 (and d!1457008 d!1457006)))

(assert (=> bs!1023405 (= lambda!192103 lambda!192102)))

(declare-fun bs!1023407 () Bool)

(assert (= bs!1023407 (and d!1457008 d!1456978)))

(assert (=> bs!1023407 (not (= lambda!192103 lambda!192095))))

(assert (=> bs!1023393 (not (= lambda!192103 lambda!192076))))

(declare-fun bs!1023410 () Bool)

(assert (= bs!1023410 (and d!1457008 d!1456952)))

(assert (=> bs!1023410 (not (= lambda!192103 lambda!192077))))

(assert (=> d!1457008 true))

(assert (=> d!1457008 true))

(assert (=> d!1457008 (= (allKeysSameHash!1358 oldBucket!40 hash!414 hashF!1389) (forall!10824 oldBucket!40 lambda!192103))))

(declare-fun bs!1023414 () Bool)

(assert (= bs!1023414 d!1457008))

(declare-fun m!5467055 () Bool)

(assert (=> bs!1023414 m!5467055))

(assert (=> b!4625113 d!1457008))

(declare-fun b!4625414 () Bool)

(declare-fun e!2885234 () List!51654)

(declare-fun e!2885235 () List!51654)

(assert (=> b!4625414 (= e!2885234 e!2885235)))

(declare-fun c!791775 () Bool)

(assert (=> b!4625414 (= c!791775 ((_ is Cons!51530) oldBucket!40))))

(declare-fun d!1457012 () Bool)

(declare-fun lt!1783287 () List!51654)

(assert (=> d!1457012 (not (containsKey!2444 lt!1783287 key!4968))))

(assert (=> d!1457012 (= lt!1783287 e!2885234)))

(declare-fun c!791774 () Bool)

(assert (=> d!1457012 (= c!791774 (and ((_ is Cons!51530) oldBucket!40) (= (_1!29525 (h!57580 oldBucket!40)) key!4968)))))

(assert (=> d!1457012 (noDuplicateKeys!1504 oldBucket!40)))

(assert (=> d!1457012 (= (removePairForKey!1127 oldBucket!40 key!4968) lt!1783287)))

(declare-fun b!4625416 () Bool)

(assert (=> b!4625416 (= e!2885235 Nil!51530)))

(declare-fun b!4625415 () Bool)

(assert (=> b!4625415 (= e!2885235 (Cons!51530 (h!57580 oldBucket!40) (removePairForKey!1127 (t!358686 oldBucket!40) key!4968)))))

(declare-fun b!4625413 () Bool)

(assert (=> b!4625413 (= e!2885234 (t!358686 oldBucket!40))))

(assert (= (and d!1457012 c!791774) b!4625413))

(assert (= (and d!1457012 (not c!791774)) b!4625414))

(assert (= (and b!4625414 c!791775) b!4625415))

(assert (= (and b!4625414 (not c!791775)) b!4625416))

(declare-fun m!5467057 () Bool)

(assert (=> d!1457012 m!5467057))

(assert (=> d!1457012 m!5466275))

(assert (=> b!4625415 m!5466281))

(assert (=> b!4625112 d!1457012))

(declare-fun d!1457014 () Bool)

(declare-datatypes ((Option!11589 0))(
  ( (None!11588) (Some!11588 (v!45718 List!51654)) )
))
(declare-fun get!17074 (Option!11589) List!51654)

(declare-fun getValueByKey!1451 (List!51655 (_ BitVec 64)) Option!11589)

(assert (=> d!1457014 (= (apply!12169 lt!1782811 lt!1782815) (get!17074 (getValueByKey!1451 (toList!4974 lt!1782811) lt!1782815)))))

(declare-fun bs!1023421 () Bool)

(assert (= bs!1023421 d!1457014))

(declare-fun m!5467061 () Bool)

(assert (=> bs!1023421 m!5467061))

(assert (=> bs!1023421 m!5467061))

(declare-fun m!5467063 () Bool)

(assert (=> bs!1023421 m!5467063))

(assert (=> b!4625122 d!1457014))

(declare-fun d!1457018 () Bool)

(declare-fun isEmpty!28929 (Option!11586) Bool)

(assert (=> d!1457018 (= (isDefined!8851 (getPair!296 lt!1782808 key!4968)) (not (isEmpty!28929 (getPair!296 lt!1782808 key!4968))))))

(declare-fun bs!1023422 () Bool)

(assert (= bs!1023422 d!1457018))

(assert (=> bs!1023422 m!5466291))

(declare-fun m!5467065 () Bool)

(assert (=> bs!1023422 m!5467065))

(assert (=> b!4625122 d!1457018))

(declare-fun d!1457020 () Bool)

(assert (=> d!1457020 (containsKey!2444 oldBucket!40 key!4968)))

(declare-fun lt!1783291 () Unit!112017)

(declare-fun choose!31306 (List!51654 K!12910 Hashable!5901) Unit!112017)

(assert (=> d!1457020 (= lt!1783291 (choose!31306 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1457020 (noDuplicateKeys!1504 oldBucket!40)))

(assert (=> d!1457020 (= (lemmaGetPairDefinedThenContainsKey!50 oldBucket!40 key!4968 hashF!1389) lt!1783291)))

(declare-fun bs!1023423 () Bool)

(assert (= bs!1023423 d!1457020))

(assert (=> bs!1023423 m!5466305))

(declare-fun m!5467075 () Bool)

(assert (=> bs!1023423 m!5467075))

(assert (=> bs!1023423 m!5466275))

(assert (=> b!4625122 d!1457020))

(declare-fun b!4625451 () Bool)

(declare-fun e!2885260 () Bool)

(declare-fun lt!1783294 () Option!11586)

(declare-fun get!17075 (Option!11586) tuple2!52462)

(assert (=> b!4625451 (= e!2885260 (contains!14576 lt!1782808 (get!17075 lt!1783294)))))

(declare-fun b!4625452 () Bool)

(declare-fun res!1939603 () Bool)

(assert (=> b!4625452 (=> (not res!1939603) (not e!2885260))))

(assert (=> b!4625452 (= res!1939603 (= (_1!29525 (get!17075 lt!1783294)) key!4968))))

(declare-fun b!4625453 () Bool)

(declare-fun e!2885264 () Option!11586)

(assert (=> b!4625453 (= e!2885264 (getPair!296 (t!358686 lt!1782808) key!4968))))

(declare-fun b!4625454 () Bool)

(declare-fun e!2885262 () Option!11586)

(assert (=> b!4625454 (= e!2885262 (Some!11585 (h!57580 lt!1782808)))))

(declare-fun d!1457026 () Bool)

(declare-fun e!2885263 () Bool)

(assert (=> d!1457026 e!2885263))

(declare-fun res!1939604 () Bool)

(assert (=> d!1457026 (=> res!1939604 e!2885263)))

(declare-fun e!2885261 () Bool)

(assert (=> d!1457026 (= res!1939604 e!2885261)))

(declare-fun res!1939605 () Bool)

(assert (=> d!1457026 (=> (not res!1939605) (not e!2885261))))

(assert (=> d!1457026 (= res!1939605 (isEmpty!28929 lt!1783294))))

(assert (=> d!1457026 (= lt!1783294 e!2885262)))

(declare-fun c!791783 () Bool)

(assert (=> d!1457026 (= c!791783 (and ((_ is Cons!51530) lt!1782808) (= (_1!29525 (h!57580 lt!1782808)) key!4968)))))

(assert (=> d!1457026 (noDuplicateKeys!1504 lt!1782808)))

(assert (=> d!1457026 (= (getPair!296 lt!1782808 key!4968) lt!1783294)))

(declare-fun b!4625455 () Bool)

(assert (=> b!4625455 (= e!2885261 (not (containsKey!2444 lt!1782808 key!4968)))))

(declare-fun b!4625456 () Bool)

(assert (=> b!4625456 (= e!2885264 None!11585)))

(declare-fun b!4625457 () Bool)

(assert (=> b!4625457 (= e!2885263 e!2885260)))

(declare-fun res!1939602 () Bool)

(assert (=> b!4625457 (=> (not res!1939602) (not e!2885260))))

(assert (=> b!4625457 (= res!1939602 (isDefined!8851 lt!1783294))))

(declare-fun b!4625458 () Bool)

(assert (=> b!4625458 (= e!2885262 e!2885264)))

(declare-fun c!791782 () Bool)

(assert (=> b!4625458 (= c!791782 ((_ is Cons!51530) lt!1782808))))

(assert (= (and d!1457026 c!791783) b!4625454))

(assert (= (and d!1457026 (not c!791783)) b!4625458))

(assert (= (and b!4625458 c!791782) b!4625453))

(assert (= (and b!4625458 (not c!791782)) b!4625456))

(assert (= (and d!1457026 res!1939605) b!4625455))

(assert (= (and d!1457026 (not res!1939604)) b!4625457))

(assert (= (and b!4625457 res!1939602) b!4625452))

(assert (= (and b!4625452 res!1939603) b!4625451))

(declare-fun m!5467081 () Bool)

(assert (=> b!4625457 m!5467081))

(declare-fun m!5467083 () Bool)

(assert (=> d!1457026 m!5467083))

(declare-fun m!5467085 () Bool)

(assert (=> d!1457026 m!5467085))

(declare-fun m!5467087 () Bool)

(assert (=> b!4625455 m!5467087))

(declare-fun m!5467089 () Bool)

(assert (=> b!4625453 m!5467089))

(declare-fun m!5467091 () Bool)

(assert (=> b!4625451 m!5467091))

(assert (=> b!4625451 m!5467091))

(declare-fun m!5467093 () Bool)

(assert (=> b!4625451 m!5467093))

(assert (=> b!4625452 m!5467091))

(assert (=> b!4625122 d!1457026))

(declare-fun d!1457032 () Bool)

(declare-fun res!1939610 () Bool)

(declare-fun e!2885269 () Bool)

(assert (=> d!1457032 (=> res!1939610 e!2885269)))

(assert (=> d!1457032 (= res!1939610 (and ((_ is Cons!51530) (t!358686 oldBucket!40)) (= (_1!29525 (h!57580 (t!358686 oldBucket!40))) key!4968)))))

(assert (=> d!1457032 (= (containsKey!2444 (t!358686 oldBucket!40) key!4968) e!2885269)))

(declare-fun b!4625463 () Bool)

(declare-fun e!2885270 () Bool)

(assert (=> b!4625463 (= e!2885269 e!2885270)))

(declare-fun res!1939611 () Bool)

(assert (=> b!4625463 (=> (not res!1939611) (not e!2885270))))

(assert (=> b!4625463 (= res!1939611 ((_ is Cons!51530) (t!358686 oldBucket!40)))))

(declare-fun b!4625464 () Bool)

(assert (=> b!4625464 (= e!2885270 (containsKey!2444 (t!358686 (t!358686 oldBucket!40)) key!4968))))

(assert (= (and d!1457032 (not res!1939610)) b!4625463))

(assert (= (and b!4625463 res!1939611) b!4625464))

(declare-fun m!5467095 () Bool)

(assert (=> b!4625464 m!5467095))

(assert (=> b!4625122 d!1457032))

(declare-fun d!1457034 () Bool)

(declare-fun e!2885275 () Bool)

(assert (=> d!1457034 e!2885275))

(declare-fun res!1939614 () Bool)

(assert (=> d!1457034 (=> res!1939614 e!2885275)))

(declare-fun lt!1783304 () Bool)

(assert (=> d!1457034 (= res!1939614 (not lt!1783304))))

(declare-fun lt!1783306 () Bool)

(assert (=> d!1457034 (= lt!1783304 lt!1783306)))

(declare-fun lt!1783305 () Unit!112017)

(declare-fun e!2885276 () Unit!112017)

(assert (=> d!1457034 (= lt!1783305 e!2885276)))

(declare-fun c!791786 () Bool)

(assert (=> d!1457034 (= c!791786 lt!1783306)))

(declare-fun containsKey!2447 (List!51655 (_ BitVec 64)) Bool)

(assert (=> d!1457034 (= lt!1783306 (containsKey!2447 (toList!4974 lt!1782811) lt!1782815))))

(assert (=> d!1457034 (= (contains!14573 lt!1782811 lt!1782815) lt!1783304)))

(declare-fun b!4625471 () Bool)

(declare-fun lt!1783303 () Unit!112017)

(assert (=> b!4625471 (= e!2885276 lt!1783303)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1353 (List!51655 (_ BitVec 64)) Unit!112017)

(assert (=> b!4625471 (= lt!1783303 (lemmaContainsKeyImpliesGetValueByKeyDefined!1353 (toList!4974 lt!1782811) lt!1782815))))

(declare-fun isDefined!8854 (Option!11589) Bool)

(assert (=> b!4625471 (isDefined!8854 (getValueByKey!1451 (toList!4974 lt!1782811) lt!1782815))))

(declare-fun b!4625472 () Bool)

(declare-fun Unit!112124 () Unit!112017)

(assert (=> b!4625472 (= e!2885276 Unit!112124)))

(declare-fun b!4625473 () Bool)

(assert (=> b!4625473 (= e!2885275 (isDefined!8854 (getValueByKey!1451 (toList!4974 lt!1782811) lt!1782815)))))

(assert (= (and d!1457034 c!791786) b!4625471))

(assert (= (and d!1457034 (not c!791786)) b!4625472))

(assert (= (and d!1457034 (not res!1939614)) b!4625473))

(declare-fun m!5467097 () Bool)

(assert (=> d!1457034 m!5467097))

(declare-fun m!5467099 () Bool)

(assert (=> b!4625471 m!5467099))

(assert (=> b!4625471 m!5467061))

(assert (=> b!4625471 m!5467061))

(declare-fun m!5467101 () Bool)

(assert (=> b!4625471 m!5467101))

(assert (=> b!4625473 m!5467061))

(assert (=> b!4625473 m!5467061))

(assert (=> b!4625473 m!5467101))

(assert (=> b!4625122 d!1457034))

(declare-fun d!1457036 () Bool)

(declare-fun lt!1783309 () Bool)

(declare-fun content!8798 (List!51655) (InoxSet tuple2!52464))

(assert (=> d!1457036 (= lt!1783309 (select (content!8798 lt!1782803) lt!1782802))))

(declare-fun e!2885281 () Bool)

(assert (=> d!1457036 (= lt!1783309 e!2885281)))

(declare-fun res!1939620 () Bool)

(assert (=> d!1457036 (=> (not res!1939620) (not e!2885281))))

(assert (=> d!1457036 (= res!1939620 ((_ is Cons!51531) lt!1782803))))

(assert (=> d!1457036 (= (contains!14572 lt!1782803 lt!1782802) lt!1783309)))

(declare-fun b!4625478 () Bool)

(declare-fun e!2885282 () Bool)

(assert (=> b!4625478 (= e!2885281 e!2885282)))

(declare-fun res!1939619 () Bool)

(assert (=> b!4625478 (=> res!1939619 e!2885282)))

(assert (=> b!4625478 (= res!1939619 (= (h!57581 lt!1782803) lt!1782802))))

(declare-fun b!4625479 () Bool)

(assert (=> b!4625479 (= e!2885282 (contains!14572 (t!358687 lt!1782803) lt!1782802))))

(assert (= (and d!1457036 res!1939620) b!4625478))

(assert (= (and b!4625478 (not res!1939619)) b!4625479))

(declare-fun m!5467103 () Bool)

(assert (=> d!1457036 m!5467103))

(declare-fun m!5467105 () Bool)

(assert (=> d!1457036 m!5467105))

(declare-fun m!5467107 () Bool)

(assert (=> b!4625479 m!5467107))

(assert (=> b!4625122 d!1457036))

(declare-fun bs!1023426 () Bool)

(declare-fun d!1457038 () Bool)

(assert (= bs!1023426 (and d!1457038 b!4625122)))

(declare-fun lambda!192107 () Int)

(assert (=> bs!1023426 (= lambda!192107 lambda!191976)))

(declare-fun bs!1023427 () Bool)

(assert (= bs!1023427 (and d!1457038 d!1456930)))

(assert (=> bs!1023427 (= lambda!192107 lambda!192073)))

(declare-fun bs!1023428 () Bool)

(assert (= bs!1023428 (and d!1457038 d!1456960)))

(assert (=> bs!1023428 (= lambda!192107 lambda!192088)))

(declare-fun bs!1023429 () Bool)

(assert (= bs!1023429 (and d!1457038 d!1456984)))

(assert (=> bs!1023429 (= lambda!192107 lambda!192098)))

(assert (=> d!1457038 (contains!14573 lt!1782811 (hash!3497 hashF!1389 key!4968))))

(declare-fun lt!1783312 () Unit!112017)

(declare-fun choose!31309 (ListLongMap!3563 K!12910 Hashable!5901) Unit!112017)

(assert (=> d!1457038 (= lt!1783312 (choose!31309 lt!1782811 key!4968 hashF!1389))))

(assert (=> d!1457038 (forall!10822 (toList!4974 lt!1782811) lambda!192107)))

(assert (=> d!1457038 (= (lemmaInGenMapThenLongMapContainsHash!502 lt!1782811 key!4968 hashF!1389) lt!1783312)))

(declare-fun bs!1023430 () Bool)

(assert (= bs!1023430 d!1457038))

(assert (=> bs!1023430 m!5466259))

(assert (=> bs!1023430 m!5466259))

(declare-fun m!5467109 () Bool)

(assert (=> bs!1023430 m!5467109))

(declare-fun m!5467111 () Bool)

(assert (=> bs!1023430 m!5467111))

(declare-fun m!5467113 () Bool)

(assert (=> bs!1023430 m!5467113))

(assert (=> b!4625122 d!1457038))

(declare-fun bs!1023431 () Bool)

(declare-fun d!1457040 () Bool)

(assert (= bs!1023431 (and d!1457040 d!1456930)))

(declare-fun lambda!192114 () Int)

(assert (=> bs!1023431 (= lambda!192114 lambda!192073)))

(declare-fun bs!1023432 () Bool)

(assert (= bs!1023432 (and d!1457040 d!1457038)))

(assert (=> bs!1023432 (= lambda!192114 lambda!192107)))

(declare-fun bs!1023433 () Bool)

(assert (= bs!1023433 (and d!1457040 b!4625122)))

(assert (=> bs!1023433 (= lambda!192114 lambda!191976)))

(declare-fun bs!1023434 () Bool)

(assert (= bs!1023434 (and d!1457040 d!1456984)))

(assert (=> bs!1023434 (= lambda!192114 lambda!192098)))

(declare-fun bs!1023435 () Bool)

(assert (= bs!1023435 (and d!1457040 d!1456960)))

(assert (=> bs!1023435 (= lambda!192114 lambda!192088)))

(declare-fun e!2885287 () Bool)

(assert (=> d!1457040 e!2885287))

(declare-fun res!1939631 () Bool)

(assert (=> d!1457040 (=> (not res!1939631) (not e!2885287))))

(assert (=> d!1457040 (= res!1939631 (forall!10822 (toList!4974 lt!1782811) lambda!192114))))

(declare-fun lt!1783333 () Unit!112017)

(declare-fun choose!31310 (ListLongMap!3563 K!12910 Hashable!5901) Unit!112017)

(assert (=> d!1457040 (= lt!1783333 (choose!31310 lt!1782811 key!4968 hashF!1389))))

(assert (=> d!1457040 (forall!10822 (toList!4974 lt!1782811) lambda!192114)))

(assert (=> d!1457040 (= (lemmaInGenMapThenGetPairDefined!92 lt!1782811 key!4968 hashF!1389) lt!1783333)))

(declare-fun b!4625491 () Bool)

(declare-fun lt!1783330 () List!51654)

(declare-fun e!2885288 () Bool)

(declare-fun lt!1783336 () (_ BitVec 64))

(assert (=> b!4625491 (= e!2885288 (= (getValueByKey!1451 (toList!4974 lt!1782811) lt!1783336) (Some!11588 lt!1783330)))))

(declare-fun b!4625490 () Bool)

(assert (=> b!4625490 (= e!2885287 (isDefined!8851 (getPair!296 (apply!12169 lt!1782811 (hash!3497 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1783329 () Unit!112017)

(assert (=> b!4625490 (= lt!1783329 (forallContained!3048 (toList!4974 lt!1782811) lambda!192114 (tuple2!52465 (hash!3497 hashF!1389 key!4968) (apply!12169 lt!1782811 (hash!3497 hashF!1389 key!4968)))))))

(declare-fun lt!1783331 () Unit!112017)

(declare-fun lt!1783335 () Unit!112017)

(assert (=> b!4625490 (= lt!1783331 lt!1783335)))

(assert (=> b!4625490 (contains!14572 (toList!4974 lt!1782811) (tuple2!52465 lt!1783336 lt!1783330))))

(assert (=> b!4625490 (= lt!1783335 (lemmaGetValueImpliesTupleContained!101 lt!1782811 lt!1783336 lt!1783330))))

(assert (=> b!4625490 e!2885288))

(declare-fun res!1939629 () Bool)

(assert (=> b!4625490 (=> (not res!1939629) (not e!2885288))))

(assert (=> b!4625490 (= res!1939629 (contains!14573 lt!1782811 lt!1783336))))

(assert (=> b!4625490 (= lt!1783330 (apply!12169 lt!1782811 (hash!3497 hashF!1389 key!4968)))))

(assert (=> b!4625490 (= lt!1783336 (hash!3497 hashF!1389 key!4968))))

(declare-fun lt!1783332 () Unit!112017)

(declare-fun lt!1783334 () Unit!112017)

(assert (=> b!4625490 (= lt!1783332 lt!1783334)))

(assert (=> b!4625490 (contains!14573 lt!1782811 (hash!3497 hashF!1389 key!4968))))

(assert (=> b!4625490 (= lt!1783334 (lemmaInGenMapThenLongMapContainsHash!502 lt!1782811 key!4968 hashF!1389))))

(declare-fun b!4625489 () Bool)

(declare-fun res!1939632 () Bool)

(assert (=> b!4625489 (=> (not res!1939632) (not e!2885287))))

(assert (=> b!4625489 (= res!1939632 (contains!14571 (extractMap!1560 (toList!4974 lt!1782811)) key!4968))))

(declare-fun b!4625488 () Bool)

(declare-fun res!1939630 () Bool)

(assert (=> b!4625488 (=> (not res!1939630) (not e!2885287))))

(declare-fun allKeysSameHashInMap!1530 (ListLongMap!3563 Hashable!5901) Bool)

(assert (=> b!4625488 (= res!1939630 (allKeysSameHashInMap!1530 lt!1782811 hashF!1389))))

(assert (= (and d!1457040 res!1939631) b!4625488))

(assert (= (and b!4625488 res!1939630) b!4625489))

(assert (= (and b!4625489 res!1939632) b!4625490))

(assert (= (and b!4625490 res!1939629) b!4625491))

(declare-fun m!5467115 () Bool)

(assert (=> b!4625488 m!5467115))

(declare-fun m!5467117 () Bool)

(assert (=> b!4625491 m!5467117))

(declare-fun m!5467119 () Bool)

(assert (=> d!1457040 m!5467119))

(declare-fun m!5467121 () Bool)

(assert (=> d!1457040 m!5467121))

(assert (=> d!1457040 m!5467119))

(declare-fun m!5467123 () Bool)

(assert (=> b!4625489 m!5467123))

(assert (=> b!4625489 m!5467123))

(declare-fun m!5467125 () Bool)

(assert (=> b!4625489 m!5467125))

(assert (=> b!4625490 m!5466259))

(declare-fun m!5467127 () Bool)

(assert (=> b!4625490 m!5467127))

(declare-fun m!5467129 () Bool)

(assert (=> b!4625490 m!5467129))

(declare-fun m!5467131 () Bool)

(assert (=> b!4625490 m!5467131))

(declare-fun m!5467133 () Bool)

(assert (=> b!4625490 m!5467133))

(declare-fun m!5467135 () Bool)

(assert (=> b!4625490 m!5467135))

(declare-fun m!5467137 () Bool)

(assert (=> b!4625490 m!5467137))

(assert (=> b!4625490 m!5466307))

(assert (=> b!4625490 m!5467135))

(declare-fun m!5467139 () Bool)

(assert (=> b!4625490 m!5467139))

(assert (=> b!4625490 m!5466259))

(assert (=> b!4625490 m!5467133))

(assert (=> b!4625490 m!5466259))

(assert (=> b!4625490 m!5467109))

(assert (=> b!4625122 d!1457040))

(declare-fun d!1457042 () Bool)

(declare-fun dynLambda!21498 (Int tuple2!52464) Bool)

(assert (=> d!1457042 (dynLambda!21498 lambda!191976 lt!1782802)))

(declare-fun lt!1783339 () Unit!112017)

(declare-fun choose!31313 (List!51655 Int tuple2!52464) Unit!112017)

(assert (=> d!1457042 (= lt!1783339 (choose!31313 lt!1782803 lambda!191976 lt!1782802))))

(declare-fun e!2885291 () Bool)

(assert (=> d!1457042 e!2885291))

(declare-fun res!1939635 () Bool)

(assert (=> d!1457042 (=> (not res!1939635) (not e!2885291))))

(assert (=> d!1457042 (= res!1939635 (forall!10822 lt!1782803 lambda!191976))))

(assert (=> d!1457042 (= (forallContained!3048 lt!1782803 lambda!191976 lt!1782802) lt!1783339)))

(declare-fun b!4625494 () Bool)

(assert (=> b!4625494 (= e!2885291 (contains!14572 lt!1782803 lt!1782802))))

(assert (= (and d!1457042 res!1939635) b!4625494))

(declare-fun b_lambda!170733 () Bool)

(assert (=> (not b_lambda!170733) (not d!1457042)))

(declare-fun m!5467141 () Bool)

(assert (=> d!1457042 m!5467141))

(declare-fun m!5467143 () Bool)

(assert (=> d!1457042 m!5467143))

(declare-fun m!5467145 () Bool)

(assert (=> d!1457042 m!5467145))

(assert (=> b!4625494 m!5466303))

(assert (=> b!4625122 d!1457042))

(declare-fun d!1457044 () Bool)

(assert (=> d!1457044 (contains!14572 (toList!4974 lt!1782811) (tuple2!52465 lt!1782815 lt!1782808))))

(declare-fun lt!1783342 () Unit!112017)

(declare-fun choose!31314 (ListLongMap!3563 (_ BitVec 64) List!51654) Unit!112017)

(assert (=> d!1457044 (= lt!1783342 (choose!31314 lt!1782811 lt!1782815 lt!1782808))))

(assert (=> d!1457044 (contains!14573 lt!1782811 lt!1782815)))

(assert (=> d!1457044 (= (lemmaGetValueImpliesTupleContained!101 lt!1782811 lt!1782815 lt!1782808) lt!1783342)))

(declare-fun bs!1023436 () Bool)

(assert (= bs!1023436 d!1457044))

(declare-fun m!5467147 () Bool)

(assert (=> bs!1023436 m!5467147))

(declare-fun m!5467149 () Bool)

(assert (=> bs!1023436 m!5467149))

(assert (=> bs!1023436 m!5466297))

(assert (=> b!4625122 d!1457044))

(declare-fun d!1457046 () Bool)

(declare-fun res!1939636 () Bool)

(declare-fun e!2885292 () Bool)

(assert (=> d!1457046 (=> res!1939636 e!2885292)))

(assert (=> d!1457046 (= res!1939636 (and ((_ is Cons!51530) oldBucket!40) (= (_1!29525 (h!57580 oldBucket!40)) key!4968)))))

(assert (=> d!1457046 (= (containsKey!2444 oldBucket!40 key!4968) e!2885292)))

(declare-fun b!4625496 () Bool)

(declare-fun e!2885293 () Bool)

(assert (=> b!4625496 (= e!2885292 e!2885293)))

(declare-fun res!1939637 () Bool)

(assert (=> b!4625496 (=> (not res!1939637) (not e!2885293))))

(assert (=> b!4625496 (= res!1939637 ((_ is Cons!51530) oldBucket!40))))

(declare-fun b!4625497 () Bool)

(assert (=> b!4625497 (= e!2885293 (containsKey!2444 (t!358686 oldBucket!40) key!4968))))

(assert (= (and d!1457046 (not res!1939636)) b!4625496))

(assert (= (and b!4625496 res!1939637) b!4625497))

(assert (=> b!4625497 m!5466311))

(assert (=> b!4625122 d!1457046))

(declare-fun d!1457048 () Bool)

(declare-fun res!1939642 () Bool)

(declare-fun e!2885298 () Bool)

(assert (=> d!1457048 (=> res!1939642 e!2885298)))

(assert (=> d!1457048 (= res!1939642 (not ((_ is Cons!51530) oldBucket!40)))))

(assert (=> d!1457048 (= (noDuplicateKeys!1504 oldBucket!40) e!2885298)))

(declare-fun b!4625502 () Bool)

(declare-fun e!2885299 () Bool)

(assert (=> b!4625502 (= e!2885298 e!2885299)))

(declare-fun res!1939643 () Bool)

(assert (=> b!4625502 (=> (not res!1939643) (not e!2885299))))

(assert (=> b!4625502 (= res!1939643 (not (containsKey!2444 (t!358686 oldBucket!40) (_1!29525 (h!57580 oldBucket!40)))))))

(declare-fun b!4625503 () Bool)

(assert (=> b!4625503 (= e!2885299 (noDuplicateKeys!1504 (t!358686 oldBucket!40)))))

(assert (= (and d!1457048 (not res!1939642)) b!4625502))

(assert (= (and b!4625502 res!1939643) b!4625503))

(declare-fun m!5467151 () Bool)

(assert (=> b!4625502 m!5467151))

(assert (=> b!4625503 m!5467031))

(assert (=> start!463528 d!1457048))

(declare-fun b!4625504 () Bool)

(declare-fun e!2885301 () List!51657)

(assert (=> b!4625504 (= e!2885301 (getKeysList!655 (toList!4973 lt!1782809)))))

(declare-fun b!4625505 () Bool)

(declare-fun e!2885300 () Unit!112017)

(declare-fun lt!1783344 () Unit!112017)

(assert (=> b!4625505 (= e!2885300 lt!1783344)))

(declare-fun lt!1783347 () Unit!112017)

(assert (=> b!4625505 (= lt!1783347 (lemmaContainsKeyImpliesGetValueByKeyDefined!1352 (toList!4973 lt!1782809) key!4968))))

(assert (=> b!4625505 (isDefined!8853 (getValueByKey!1450 (toList!4973 lt!1782809) key!4968))))

(declare-fun lt!1783348 () Unit!112017)

(assert (=> b!4625505 (= lt!1783348 lt!1783347)))

(assert (=> b!4625505 (= lt!1783344 (lemmaInListThenGetKeysListContains!650 (toList!4973 lt!1782809) key!4968))))

(declare-fun call!322648 () Bool)

(assert (=> b!4625505 call!322648))

(declare-fun d!1457050 () Bool)

(declare-fun e!2885304 () Bool)

(assert (=> d!1457050 e!2885304))

(declare-fun res!1939645 () Bool)

(assert (=> d!1457050 (=> res!1939645 e!2885304)))

(declare-fun e!2885302 () Bool)

(assert (=> d!1457050 (= res!1939645 e!2885302)))

(declare-fun res!1939646 () Bool)

(assert (=> d!1457050 (=> (not res!1939646) (not e!2885302))))

(declare-fun lt!1783343 () Bool)

(assert (=> d!1457050 (= res!1939646 (not lt!1783343))))

(declare-fun lt!1783345 () Bool)

(assert (=> d!1457050 (= lt!1783343 lt!1783345)))

(declare-fun lt!1783346 () Unit!112017)

(assert (=> d!1457050 (= lt!1783346 e!2885300)))

(declare-fun c!791787 () Bool)

(assert (=> d!1457050 (= c!791787 lt!1783345)))

(assert (=> d!1457050 (= lt!1783345 (containsKey!2446 (toList!4973 lt!1782809) key!4968))))

(assert (=> d!1457050 (= (contains!14571 lt!1782809 key!4968) lt!1783343)))

(declare-fun b!4625506 () Bool)

(declare-fun e!2885305 () Bool)

(assert (=> b!4625506 (= e!2885305 (contains!14577 (keys!18152 lt!1782809) key!4968))))

(declare-fun b!4625507 () Bool)

(declare-fun e!2885303 () Unit!112017)

(declare-fun Unit!112126 () Unit!112017)

(assert (=> b!4625507 (= e!2885303 Unit!112126)))

(declare-fun b!4625508 () Bool)

(assert (=> b!4625508 (= e!2885302 (not (contains!14577 (keys!18152 lt!1782809) key!4968)))))

(declare-fun b!4625509 () Bool)

(assert (=> b!4625509 (= e!2885300 e!2885303)))

(declare-fun c!791789 () Bool)

(assert (=> b!4625509 (= c!791789 call!322648)))

(declare-fun b!4625510 () Bool)

(assert (=> b!4625510 false))

(declare-fun lt!1783349 () Unit!112017)

(declare-fun lt!1783350 () Unit!112017)

(assert (=> b!4625510 (= lt!1783349 lt!1783350)))

(assert (=> b!4625510 (containsKey!2446 (toList!4973 lt!1782809) key!4968)))

(assert (=> b!4625510 (= lt!1783350 (lemmaInGetKeysListThenContainsKey!654 (toList!4973 lt!1782809) key!4968))))

(declare-fun Unit!112127 () Unit!112017)

(assert (=> b!4625510 (= e!2885303 Unit!112127)))

(declare-fun bm!322643 () Bool)

(assert (=> bm!322643 (= call!322648 (contains!14577 e!2885301 key!4968))))

(declare-fun c!791788 () Bool)

(assert (=> bm!322643 (= c!791788 c!791787)))

(declare-fun b!4625511 () Bool)

(assert (=> b!4625511 (= e!2885301 (keys!18152 lt!1782809))))

(declare-fun b!4625512 () Bool)

(assert (=> b!4625512 (= e!2885304 e!2885305)))

(declare-fun res!1939644 () Bool)

(assert (=> b!4625512 (=> (not res!1939644) (not e!2885305))))

(assert (=> b!4625512 (= res!1939644 (isDefined!8853 (getValueByKey!1450 (toList!4973 lt!1782809) key!4968)))))

(assert (= (and d!1457050 c!791787) b!4625505))

(assert (= (and d!1457050 (not c!791787)) b!4625509))

(assert (= (and b!4625509 c!791789) b!4625510))

(assert (= (and b!4625509 (not c!791789)) b!4625507))

(assert (= (or b!4625505 b!4625509) bm!322643))

(assert (= (and bm!322643 c!791788) b!4625504))

(assert (= (and bm!322643 (not c!791788)) b!4625511))

(assert (= (and d!1457050 res!1939646) b!4625508))

(assert (= (and d!1457050 (not res!1939645)) b!4625512))

(assert (= (and b!4625512 res!1939644) b!4625506))

(declare-fun m!5467153 () Bool)

(assert (=> b!4625512 m!5467153))

(assert (=> b!4625512 m!5467153))

(declare-fun m!5467155 () Bool)

(assert (=> b!4625512 m!5467155))

(declare-fun m!5467157 () Bool)

(assert (=> b!4625506 m!5467157))

(assert (=> b!4625506 m!5467157))

(declare-fun m!5467159 () Bool)

(assert (=> b!4625506 m!5467159))

(declare-fun m!5467161 () Bool)

(assert (=> bm!322643 m!5467161))

(assert (=> b!4625511 m!5467157))

(assert (=> b!4625508 m!5467157))

(assert (=> b!4625508 m!5467157))

(assert (=> b!4625508 m!5467159))

(declare-fun m!5467163 () Bool)

(assert (=> b!4625505 m!5467163))

(assert (=> b!4625505 m!5467153))

(assert (=> b!4625505 m!5467153))

(assert (=> b!4625505 m!5467155))

(declare-fun m!5467165 () Bool)

(assert (=> b!4625505 m!5467165))

(declare-fun m!5467167 () Bool)

(assert (=> d!1457050 m!5467167))

(assert (=> b!4625510 m!5467167))

(declare-fun m!5467169 () Bool)

(assert (=> b!4625510 m!5467169))

(declare-fun m!5467171 () Bool)

(assert (=> b!4625504 m!5467171))

(assert (=> b!4625111 d!1457050))

(declare-fun bs!1023437 () Bool)

(declare-fun d!1457052 () Bool)

(assert (= bs!1023437 (and d!1457052 d!1456930)))

(declare-fun lambda!192115 () Int)

(assert (=> bs!1023437 (= lambda!192115 lambda!192073)))

(declare-fun bs!1023438 () Bool)

(assert (= bs!1023438 (and d!1457052 d!1457038)))

(assert (=> bs!1023438 (= lambda!192115 lambda!192107)))

(declare-fun bs!1023439 () Bool)

(assert (= bs!1023439 (and d!1457052 b!4625122)))

(assert (=> bs!1023439 (= lambda!192115 lambda!191976)))

(declare-fun bs!1023440 () Bool)

(assert (= bs!1023440 (and d!1457052 d!1456984)))

(assert (=> bs!1023440 (= lambda!192115 lambda!192098)))

(declare-fun bs!1023441 () Bool)

(assert (= bs!1023441 (and d!1457052 d!1456960)))

(assert (=> bs!1023441 (= lambda!192115 lambda!192088)))

(declare-fun bs!1023442 () Bool)

(assert (= bs!1023442 (and d!1457052 d!1457040)))

(assert (=> bs!1023442 (= lambda!192115 lambda!192114)))

(declare-fun lt!1783351 () ListMap!4277)

(assert (=> d!1457052 (invariantList!1204 (toList!4973 lt!1783351))))

(declare-fun e!2885306 () ListMap!4277)

(assert (=> d!1457052 (= lt!1783351 e!2885306)))

(declare-fun c!791790 () Bool)

(assert (=> d!1457052 (= c!791790 ((_ is Cons!51531) lt!1782803))))

(assert (=> d!1457052 (forall!10822 lt!1782803 lambda!192115)))

(assert (=> d!1457052 (= (extractMap!1560 lt!1782803) lt!1783351)))

(declare-fun b!4625513 () Bool)

(assert (=> b!4625513 (= e!2885306 (addToMapMapFromBucket!965 (_2!29526 (h!57581 lt!1782803)) (extractMap!1560 (t!358687 lt!1782803))))))

(declare-fun b!4625514 () Bool)

(assert (=> b!4625514 (= e!2885306 (ListMap!4278 Nil!51530))))

(assert (= (and d!1457052 c!791790) b!4625513))

(assert (= (and d!1457052 (not c!791790)) b!4625514))

(declare-fun m!5467173 () Bool)

(assert (=> d!1457052 m!5467173))

(declare-fun m!5467175 () Bool)

(assert (=> d!1457052 m!5467175))

(declare-fun m!5467177 () Bool)

(assert (=> b!4625513 m!5467177))

(assert (=> b!4625513 m!5467177))

(declare-fun m!5467179 () Bool)

(assert (=> b!4625513 m!5467179))

(assert (=> b!4625111 d!1457052))

(declare-fun d!1457054 () Bool)

(declare-fun res!1939651 () Bool)

(declare-fun e!2885311 () Bool)

(assert (=> d!1457054 (=> res!1939651 e!2885311)))

(assert (=> d!1457054 (= res!1939651 ((_ is Nil!51531) lt!1782796))))

(assert (=> d!1457054 (= (forall!10822 lt!1782796 lambda!191976) e!2885311)))

(declare-fun b!4625519 () Bool)

(declare-fun e!2885312 () Bool)

(assert (=> b!4625519 (= e!2885311 e!2885312)))

(declare-fun res!1939652 () Bool)

(assert (=> b!4625519 (=> (not res!1939652) (not e!2885312))))

(assert (=> b!4625519 (= res!1939652 (dynLambda!21498 lambda!191976 (h!57581 lt!1782796)))))

(declare-fun b!4625520 () Bool)

(assert (=> b!4625520 (= e!2885312 (forall!10822 (t!358687 lt!1782796) lambda!191976))))

(assert (= (and d!1457054 (not res!1939651)) b!4625519))

(assert (= (and b!4625519 res!1939652) b!4625520))

(declare-fun b_lambda!170735 () Bool)

(assert (=> (not b_lambda!170735) (not b!4625519)))

(declare-fun m!5467181 () Bool)

(assert (=> b!4625519 m!5467181))

(declare-fun m!5467183 () Bool)

(assert (=> b!4625520 m!5467183))

(assert (=> b!4625110 d!1457054))

(declare-fun d!1457056 () Bool)

(assert (=> d!1457056 (= (eq!819 lt!1782814 (-!544 lt!1782810 key!4968)) (= (content!8797 (toList!4973 lt!1782814)) (content!8797 (toList!4973 (-!544 lt!1782810 key!4968)))))))

(declare-fun bs!1023443 () Bool)

(assert (= bs!1023443 d!1457056))

(declare-fun m!5467185 () Bool)

(assert (=> bs!1023443 m!5467185))

(declare-fun m!5467187 () Bool)

(assert (=> bs!1023443 m!5467187))

(assert (=> b!4625110 d!1457056))

(declare-fun d!1457058 () Bool)

(declare-fun e!2885315 () Bool)

(assert (=> d!1457058 e!2885315))

(declare-fun res!1939655 () Bool)

(assert (=> d!1457058 (=> (not res!1939655) (not e!2885315))))

(declare-fun lt!1783354 () ListMap!4277)

(assert (=> d!1457058 (= res!1939655 (not (contains!14571 lt!1783354 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!254 (List!51654 K!12910) List!51654)

(assert (=> d!1457058 (= lt!1783354 (ListMap!4278 (removePresrvNoDuplicatedKeys!254 (toList!4973 lt!1782810) key!4968)))))

(assert (=> d!1457058 (= (-!544 lt!1782810 key!4968) lt!1783354)))

(declare-fun b!4625523 () Bool)

(declare-fun content!8800 (List!51657) (InoxSet K!12910))

(assert (=> b!4625523 (= e!2885315 (= ((_ map and) (content!8800 (keys!18152 lt!1782810)) ((_ map not) (store ((as const (Array K!12910 Bool)) false) key!4968 true))) (content!8800 (keys!18152 lt!1783354))))))

(assert (= (and d!1457058 res!1939655) b!4625523))

(declare-fun m!5467189 () Bool)

(assert (=> d!1457058 m!5467189))

(declare-fun m!5467191 () Bool)

(assert (=> d!1457058 m!5467191))

(declare-fun m!5467193 () Bool)

(assert (=> b!4625523 m!5467193))

(declare-fun m!5467195 () Bool)

(assert (=> b!4625523 m!5467195))

(declare-fun m!5467197 () Bool)

(assert (=> b!4625523 m!5467197))

(assert (=> b!4625523 m!5466919))

(assert (=> b!4625523 m!5467193))

(assert (=> b!4625523 m!5466919))

(declare-fun m!5467199 () Bool)

(assert (=> b!4625523 m!5467199))

(assert (=> b!4625110 d!1457058))

(declare-fun d!1457060 () Bool)

(assert (=> d!1457060 (eq!819 (extractMap!1560 (Cons!51531 (tuple2!52465 hash!414 lt!1782819) Nil!51531)) (-!544 (extractMap!1560 (Cons!51531 (tuple2!52465 hash!414 (t!358686 oldBucket!40)) Nil!51531)) key!4968))))

(declare-fun lt!1783357 () Unit!112017)

(declare-fun choose!31315 ((_ BitVec 64) List!51654 List!51654 K!12910 Hashable!5901) Unit!112017)

(assert (=> d!1457060 (= lt!1783357 (choose!31315 hash!414 (t!358686 oldBucket!40) lt!1782819 key!4968 hashF!1389))))

(assert (=> d!1457060 (noDuplicateKeys!1504 (t!358686 oldBucket!40))))

(assert (=> d!1457060 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!106 hash!414 (t!358686 oldBucket!40) lt!1782819 key!4968 hashF!1389) lt!1783357)))

(declare-fun bs!1023444 () Bool)

(assert (= bs!1023444 d!1457060))

(assert (=> bs!1023444 m!5467031))

(assert (=> bs!1023444 m!5466319))

(declare-fun m!5467201 () Bool)

(assert (=> bs!1023444 m!5467201))

(assert (=> bs!1023444 m!5466319))

(declare-fun m!5467203 () Bool)

(assert (=> bs!1023444 m!5467203))

(declare-fun m!5467205 () Bool)

(assert (=> bs!1023444 m!5467205))

(declare-fun m!5467207 () Bool)

(assert (=> bs!1023444 m!5467207))

(assert (=> bs!1023444 m!5467201))

(assert (=> bs!1023444 m!5467203))

(assert (=> b!4625110 d!1457060))

(declare-fun d!1457062 () Bool)

(declare-fun hash!3501 (Hashable!5901 K!12910) (_ BitVec 64))

(assert (=> d!1457062 (= (hash!3497 hashF!1389 key!4968) (hash!3501 hashF!1389 key!4968))))

(declare-fun bs!1023445 () Bool)

(assert (= bs!1023445 d!1457062))

(declare-fun m!5467209 () Bool)

(assert (=> bs!1023445 m!5467209))

(assert (=> b!4625121 d!1457062))

(declare-fun d!1457064 () Bool)

(assert (=> d!1457064 (= (eq!819 lt!1782801 (+!1870 lt!1782814 lt!1782798)) (= (content!8797 (toList!4973 lt!1782801)) (content!8797 (toList!4973 (+!1870 lt!1782814 lt!1782798)))))))

(declare-fun bs!1023446 () Bool)

(assert (= bs!1023446 d!1457064))

(declare-fun m!5467211 () Bool)

(assert (=> bs!1023446 m!5467211))

(declare-fun m!5467213 () Bool)

(assert (=> bs!1023446 m!5467213))

(assert (=> b!4625109 d!1457064))

(declare-fun d!1457066 () Bool)

(declare-fun e!2885316 () Bool)

(assert (=> d!1457066 e!2885316))

(declare-fun res!1939656 () Bool)

(assert (=> d!1457066 (=> (not res!1939656) (not e!2885316))))

(declare-fun lt!1783361 () ListMap!4277)

(assert (=> d!1457066 (= res!1939656 (contains!14571 lt!1783361 (_1!29525 lt!1782798)))))

(declare-fun lt!1783360 () List!51654)

(assert (=> d!1457066 (= lt!1783361 (ListMap!4278 lt!1783360))))

(declare-fun lt!1783358 () Unit!112017)

(declare-fun lt!1783359 () Unit!112017)

(assert (=> d!1457066 (= lt!1783358 lt!1783359)))

(assert (=> d!1457066 (= (getValueByKey!1450 lt!1783360 (_1!29525 lt!1782798)) (Some!11587 (_2!29525 lt!1782798)))))

(assert (=> d!1457066 (= lt!1783359 (lemmaContainsTupThenGetReturnValue!848 lt!1783360 (_1!29525 lt!1782798) (_2!29525 lt!1782798)))))

(assert (=> d!1457066 (= lt!1783360 (insertNoDuplicatedKeys!356 (toList!4973 lt!1782814) (_1!29525 lt!1782798) (_2!29525 lt!1782798)))))

(assert (=> d!1457066 (= (+!1870 lt!1782814 lt!1782798) lt!1783361)))

(declare-fun b!4625524 () Bool)

(declare-fun res!1939657 () Bool)

(assert (=> b!4625524 (=> (not res!1939657) (not e!2885316))))

(assert (=> b!4625524 (= res!1939657 (= (getValueByKey!1450 (toList!4973 lt!1783361) (_1!29525 lt!1782798)) (Some!11587 (_2!29525 lt!1782798))))))

(declare-fun b!4625525 () Bool)

(assert (=> b!4625525 (= e!2885316 (contains!14576 (toList!4973 lt!1783361) lt!1782798))))

(assert (= (and d!1457066 res!1939656) b!4625524))

(assert (= (and b!4625524 res!1939657) b!4625525))

(declare-fun m!5467215 () Bool)

(assert (=> d!1457066 m!5467215))

(declare-fun m!5467217 () Bool)

(assert (=> d!1457066 m!5467217))

(declare-fun m!5467219 () Bool)

(assert (=> d!1457066 m!5467219))

(declare-fun m!5467221 () Bool)

(assert (=> d!1457066 m!5467221))

(declare-fun m!5467223 () Bool)

(assert (=> b!4625524 m!5467223))

(declare-fun m!5467225 () Bool)

(assert (=> b!4625525 m!5467225))

(assert (=> b!4625109 d!1457066))

(declare-fun bs!1023447 () Bool)

(declare-fun d!1457068 () Bool)

(assert (= bs!1023447 (and d!1457068 d!1456930)))

(declare-fun lambda!192116 () Int)

(assert (=> bs!1023447 (= lambda!192116 lambda!192073)))

(declare-fun bs!1023448 () Bool)

(assert (= bs!1023448 (and d!1457068 d!1457038)))

(assert (=> bs!1023448 (= lambda!192116 lambda!192107)))

(declare-fun bs!1023449 () Bool)

(assert (= bs!1023449 (and d!1457068 b!4625122)))

(assert (=> bs!1023449 (= lambda!192116 lambda!191976)))

(declare-fun bs!1023450 () Bool)

(assert (= bs!1023450 (and d!1457068 d!1456984)))

(assert (=> bs!1023450 (= lambda!192116 lambda!192098)))

(declare-fun bs!1023451 () Bool)

(assert (= bs!1023451 (and d!1457068 d!1457052)))

(assert (=> bs!1023451 (= lambda!192116 lambda!192115)))

(declare-fun bs!1023452 () Bool)

(assert (= bs!1023452 (and d!1457068 d!1456960)))

(assert (=> bs!1023452 (= lambda!192116 lambda!192088)))

(declare-fun bs!1023453 () Bool)

(assert (= bs!1023453 (and d!1457068 d!1457040)))

(assert (=> bs!1023453 (= lambda!192116 lambda!192114)))

(declare-fun lt!1783362 () ListMap!4277)

(assert (=> d!1457068 (invariantList!1204 (toList!4973 lt!1783362))))

(declare-fun e!2885317 () ListMap!4277)

(assert (=> d!1457068 (= lt!1783362 e!2885317)))

(declare-fun c!791791 () Bool)

(assert (=> d!1457068 (= c!791791 ((_ is Cons!51531) (Cons!51531 (tuple2!52465 hash!414 lt!1782819) Nil!51531)))))

(assert (=> d!1457068 (forall!10822 (Cons!51531 (tuple2!52465 hash!414 lt!1782819) Nil!51531) lambda!192116)))

(assert (=> d!1457068 (= (extractMap!1560 (Cons!51531 (tuple2!52465 hash!414 lt!1782819) Nil!51531)) lt!1783362)))

(declare-fun b!4625526 () Bool)

(assert (=> b!4625526 (= e!2885317 (addToMapMapFromBucket!965 (_2!29526 (h!57581 (Cons!51531 (tuple2!52465 hash!414 lt!1782819) Nil!51531))) (extractMap!1560 (t!358687 (Cons!51531 (tuple2!52465 hash!414 lt!1782819) Nil!51531)))))))

(declare-fun b!4625527 () Bool)

(assert (=> b!4625527 (= e!2885317 (ListMap!4278 Nil!51530))))

(assert (= (and d!1457068 c!791791) b!4625526))

(assert (= (and d!1457068 (not c!791791)) b!4625527))

(declare-fun m!5467227 () Bool)

(assert (=> d!1457068 m!5467227))

(declare-fun m!5467229 () Bool)

(assert (=> d!1457068 m!5467229))

(declare-fun m!5467231 () Bool)

(assert (=> b!4625526 m!5467231))

(assert (=> b!4625526 m!5467231))

(declare-fun m!5467233 () Bool)

(assert (=> b!4625526 m!5467233))

(assert (=> b!4625109 d!1457068))

(declare-fun bs!1023454 () Bool)

(declare-fun d!1457070 () Bool)

(assert (= bs!1023454 (and d!1457070 d!1456930)))

(declare-fun lambda!192117 () Int)

(assert (=> bs!1023454 (= lambda!192117 lambda!192073)))

(declare-fun bs!1023455 () Bool)

(assert (= bs!1023455 (and d!1457070 d!1457068)))

(assert (=> bs!1023455 (= lambda!192117 lambda!192116)))

(declare-fun bs!1023456 () Bool)

(assert (= bs!1023456 (and d!1457070 d!1457038)))

(assert (=> bs!1023456 (= lambda!192117 lambda!192107)))

(declare-fun bs!1023457 () Bool)

(assert (= bs!1023457 (and d!1457070 b!4625122)))

(assert (=> bs!1023457 (= lambda!192117 lambda!191976)))

(declare-fun bs!1023458 () Bool)

(assert (= bs!1023458 (and d!1457070 d!1456984)))

(assert (=> bs!1023458 (= lambda!192117 lambda!192098)))

(declare-fun bs!1023459 () Bool)

(assert (= bs!1023459 (and d!1457070 d!1457052)))

(assert (=> bs!1023459 (= lambda!192117 lambda!192115)))

(declare-fun bs!1023460 () Bool)

(assert (= bs!1023460 (and d!1457070 d!1456960)))

(assert (=> bs!1023460 (= lambda!192117 lambda!192088)))

(declare-fun bs!1023461 () Bool)

(assert (= bs!1023461 (and d!1457070 d!1457040)))

(assert (=> bs!1023461 (= lambda!192117 lambda!192114)))

(declare-fun lt!1783363 () ListMap!4277)

(assert (=> d!1457070 (invariantList!1204 (toList!4973 lt!1783363))))

(declare-fun e!2885318 () ListMap!4277)

(assert (=> d!1457070 (= lt!1783363 e!2885318)))

(declare-fun c!791792 () Bool)

(assert (=> d!1457070 (= c!791792 ((_ is Cons!51531) (Cons!51531 (tuple2!52465 hash!414 newBucket!224) Nil!51531)))))

(assert (=> d!1457070 (forall!10822 (Cons!51531 (tuple2!52465 hash!414 newBucket!224) Nil!51531) lambda!192117)))

(assert (=> d!1457070 (= (extractMap!1560 (Cons!51531 (tuple2!52465 hash!414 newBucket!224) Nil!51531)) lt!1783363)))

(declare-fun b!4625528 () Bool)

(assert (=> b!4625528 (= e!2885318 (addToMapMapFromBucket!965 (_2!29526 (h!57581 (Cons!51531 (tuple2!52465 hash!414 newBucket!224) Nil!51531))) (extractMap!1560 (t!358687 (Cons!51531 (tuple2!52465 hash!414 newBucket!224) Nil!51531)))))))

(declare-fun b!4625529 () Bool)

(assert (=> b!4625529 (= e!2885318 (ListMap!4278 Nil!51530))))

(assert (= (and d!1457070 c!791792) b!4625528))

(assert (= (and d!1457070 (not c!791792)) b!4625529))

(declare-fun m!5467235 () Bool)

(assert (=> d!1457070 m!5467235))

(declare-fun m!5467237 () Bool)

(assert (=> d!1457070 m!5467237))

(declare-fun m!5467239 () Bool)

(assert (=> b!4625528 m!5467239))

(assert (=> b!4625528 m!5467239))

(declare-fun m!5467241 () Bool)

(assert (=> b!4625528 m!5467241))

(assert (=> b!4625109 d!1457070))

(declare-fun d!1457072 () Bool)

(declare-fun res!1939658 () Bool)

(declare-fun e!2885319 () Bool)

(assert (=> d!1457072 (=> res!1939658 e!2885319)))

(assert (=> d!1457072 (= res!1939658 (not ((_ is Cons!51530) newBucket!224)))))

(assert (=> d!1457072 (= (noDuplicateKeys!1504 newBucket!224) e!2885319)))

(declare-fun b!4625530 () Bool)

(declare-fun e!2885320 () Bool)

(assert (=> b!4625530 (= e!2885319 e!2885320)))

(declare-fun res!1939659 () Bool)

(assert (=> b!4625530 (=> (not res!1939659) (not e!2885320))))

(assert (=> b!4625530 (= res!1939659 (not (containsKey!2444 (t!358686 newBucket!224) (_1!29525 (h!57580 newBucket!224)))))))

(declare-fun b!4625531 () Bool)

(assert (=> b!4625531 (= e!2885320 (noDuplicateKeys!1504 (t!358686 newBucket!224)))))

(assert (= (and d!1457072 (not res!1939658)) b!4625530))

(assert (= (and b!4625530 res!1939659) b!4625531))

(declare-fun m!5467243 () Bool)

(assert (=> b!4625530 m!5467243))

(declare-fun m!5467245 () Bool)

(assert (=> b!4625531 m!5467245))

(assert (=> b!4625108 d!1457072))

(declare-fun bs!1023462 () Bool)

(declare-fun b!4625532 () Bool)

(assert (= bs!1023462 (and b!4625532 b!4625290)))

(declare-fun lambda!192118 () Int)

(assert (=> bs!1023462 (= (= lt!1782800 lt!1783154) (= lambda!192118 lambda!192080))))

(assert (=> bs!1023462 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192118 lambda!192079))))

(declare-fun bs!1023463 () Bool)

(assert (= bs!1023463 (and b!4625532 b!4625287)))

(assert (=> bs!1023463 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192118 lambda!192078))))

(declare-fun bs!1023464 () Bool)

(assert (= bs!1023464 (and b!4625532 b!4625347)))

(assert (=> bs!1023464 (= (= lt!1782800 lt!1783240) (= lambda!192118 lambda!192094))))

(declare-fun bs!1023465 () Bool)

(assert (= bs!1023465 (and b!4625532 b!4625285)))

(assert (=> bs!1023465 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192118 lambda!192075))))

(assert (=> bs!1023464 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192118 lambda!192093))))

(declare-fun bs!1023466 () Bool)

(assert (= bs!1023466 (and b!4625532 b!4625282)))

(assert (=> bs!1023466 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192118 lambda!192074))))

(declare-fun bs!1023467 () Bool)

(assert (= bs!1023467 (and b!4625532 b!4625235)))

(assert (=> bs!1023467 (= (= lt!1782800 lt!1783063) (= lambda!192118 lambda!192060))))

(declare-fun bs!1023468 () Bool)

(assert (= bs!1023468 (and b!4625532 d!1456878)))

(assert (=> bs!1023468 (= (= lt!1782800 lt!1783060) (= lambda!192118 lambda!192061))))

(declare-fun bs!1023469 () Bool)

(assert (= bs!1023469 (and b!4625532 d!1457008)))

(assert (=> bs!1023469 (not (= lambda!192118 lambda!192103))))

(declare-fun bs!1023470 () Bool)

(assert (= bs!1023470 (and b!4625532 d!1456956)))

(assert (=> bs!1023470 (= (= lt!1782800 lt!1783151) (= lambda!192118 lambda!192081))))

(declare-fun bs!1023471 () Bool)

(assert (= bs!1023471 (and b!4625532 b!4625344)))

(assert (=> bs!1023471 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192118 lambda!192092))))

(declare-fun bs!1023472 () Bool)

(assert (= bs!1023472 (and b!4625532 b!4625232)))

(assert (=> bs!1023472 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192118 lambda!192058))))

(assert (=> bs!1023467 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192118 lambda!192059))))

(declare-fun bs!1023473 () Bool)

(assert (= bs!1023473 (and b!4625532 d!1457006)))

(assert (=> bs!1023473 (not (= lambda!192118 lambda!192102))))

(declare-fun bs!1023474 () Bool)

(assert (= bs!1023474 (and b!4625532 d!1456978)))

(assert (=> bs!1023474 (= (= lt!1782800 lt!1783237) (= lambda!192118 lambda!192095))))

(assert (=> bs!1023465 (= (= lt!1782800 lt!1783132) (= lambda!192118 lambda!192076))))

(declare-fun bs!1023475 () Bool)

(assert (= bs!1023475 (and b!4625532 d!1456952)))

(assert (=> bs!1023475 (= (= lt!1782800 lt!1783129) (= lambda!192118 lambda!192077))))

(assert (=> b!4625532 true))

(declare-fun bs!1023476 () Bool)

(declare-fun b!4625535 () Bool)

(assert (= bs!1023476 (and b!4625535 b!4625290)))

(declare-fun lambda!192119 () Int)

(assert (=> bs!1023476 (= (= lt!1782800 lt!1783154) (= lambda!192119 lambda!192080))))

(assert (=> bs!1023476 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192119 lambda!192079))))

(declare-fun bs!1023477 () Bool)

(assert (= bs!1023477 (and b!4625535 b!4625287)))

(assert (=> bs!1023477 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192119 lambda!192078))))

(declare-fun bs!1023478 () Bool)

(assert (= bs!1023478 (and b!4625535 b!4625347)))

(assert (=> bs!1023478 (= (= lt!1782800 lt!1783240) (= lambda!192119 lambda!192094))))

(declare-fun bs!1023479 () Bool)

(assert (= bs!1023479 (and b!4625535 b!4625285)))

(assert (=> bs!1023479 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192119 lambda!192075))))

(assert (=> bs!1023478 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192119 lambda!192093))))

(declare-fun bs!1023480 () Bool)

(assert (= bs!1023480 (and b!4625535 b!4625282)))

(assert (=> bs!1023480 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192119 lambda!192074))))

(declare-fun bs!1023481 () Bool)

(assert (= bs!1023481 (and b!4625535 b!4625235)))

(assert (=> bs!1023481 (= (= lt!1782800 lt!1783063) (= lambda!192119 lambda!192060))))

(declare-fun bs!1023482 () Bool)

(assert (= bs!1023482 (and b!4625535 d!1456878)))

(assert (=> bs!1023482 (= (= lt!1782800 lt!1783060) (= lambda!192119 lambda!192061))))

(declare-fun bs!1023483 () Bool)

(assert (= bs!1023483 (and b!4625535 d!1457008)))

(assert (=> bs!1023483 (not (= lambda!192119 lambda!192103))))

(declare-fun bs!1023484 () Bool)

(assert (= bs!1023484 (and b!4625535 d!1456956)))

(assert (=> bs!1023484 (= (= lt!1782800 lt!1783151) (= lambda!192119 lambda!192081))))

(declare-fun bs!1023485 () Bool)

(assert (= bs!1023485 (and b!4625535 b!4625532)))

(assert (=> bs!1023485 (= lambda!192119 lambda!192118)))

(declare-fun bs!1023486 () Bool)

(assert (= bs!1023486 (and b!4625535 b!4625344)))

(assert (=> bs!1023486 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192119 lambda!192092))))

(declare-fun bs!1023487 () Bool)

(assert (= bs!1023487 (and b!4625535 b!4625232)))

(assert (=> bs!1023487 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192119 lambda!192058))))

(assert (=> bs!1023481 (= (= lt!1782800 (ListMap!4278 Nil!51530)) (= lambda!192119 lambda!192059))))

(declare-fun bs!1023488 () Bool)

(assert (= bs!1023488 (and b!4625535 d!1457006)))

(assert (=> bs!1023488 (not (= lambda!192119 lambda!192102))))

(declare-fun bs!1023489 () Bool)

(assert (= bs!1023489 (and b!4625535 d!1456978)))

(assert (=> bs!1023489 (= (= lt!1782800 lt!1783237) (= lambda!192119 lambda!192095))))

(assert (=> bs!1023479 (= (= lt!1782800 lt!1783132) (= lambda!192119 lambda!192076))))

(declare-fun bs!1023490 () Bool)

(assert (= bs!1023490 (and b!4625535 d!1456952)))

(assert (=> bs!1023490 (= (= lt!1782800 lt!1783129) (= lambda!192119 lambda!192077))))

(assert (=> b!4625535 true))

(declare-fun lambda!192120 () Int)

(declare-fun lt!1783368 () ListMap!4277)

(assert (=> bs!1023476 (= (= lt!1783368 lt!1783154) (= lambda!192120 lambda!192080))))

(assert (=> bs!1023476 (= (= lt!1783368 (ListMap!4278 Nil!51530)) (= lambda!192120 lambda!192079))))

(assert (=> bs!1023477 (= (= lt!1783368 (ListMap!4278 Nil!51530)) (= lambda!192120 lambda!192078))))

(assert (=> bs!1023478 (= (= lt!1783368 lt!1783240) (= lambda!192120 lambda!192094))))

(assert (=> bs!1023479 (= (= lt!1783368 (ListMap!4278 Nil!51530)) (= lambda!192120 lambda!192075))))

(assert (=> bs!1023480 (= (= lt!1783368 (ListMap!4278 Nil!51530)) (= lambda!192120 lambda!192074))))

(assert (=> bs!1023481 (= (= lt!1783368 lt!1783063) (= lambda!192120 lambda!192060))))

(assert (=> bs!1023482 (= (= lt!1783368 lt!1783060) (= lambda!192120 lambda!192061))))

(assert (=> bs!1023483 (not (= lambda!192120 lambda!192103))))

(assert (=> bs!1023484 (= (= lt!1783368 lt!1783151) (= lambda!192120 lambda!192081))))

(assert (=> bs!1023485 (= (= lt!1783368 lt!1782800) (= lambda!192120 lambda!192118))))

(assert (=> bs!1023486 (= (= lt!1783368 (ListMap!4278 Nil!51530)) (= lambda!192120 lambda!192092))))

(assert (=> bs!1023487 (= (= lt!1783368 (ListMap!4278 Nil!51530)) (= lambda!192120 lambda!192058))))

(assert (=> b!4625535 (= (= lt!1783368 lt!1782800) (= lambda!192120 lambda!192119))))

(assert (=> bs!1023478 (= (= lt!1783368 (ListMap!4278 Nil!51530)) (= lambda!192120 lambda!192093))))

(assert (=> bs!1023481 (= (= lt!1783368 (ListMap!4278 Nil!51530)) (= lambda!192120 lambda!192059))))

(assert (=> bs!1023488 (not (= lambda!192120 lambda!192102))))

(assert (=> bs!1023489 (= (= lt!1783368 lt!1783237) (= lambda!192120 lambda!192095))))

(assert (=> bs!1023479 (= (= lt!1783368 lt!1783132) (= lambda!192120 lambda!192076))))

(assert (=> bs!1023490 (= (= lt!1783368 lt!1783129) (= lambda!192120 lambda!192077))))

(assert (=> b!4625535 true))

(declare-fun bs!1023491 () Bool)

(declare-fun d!1457074 () Bool)

(assert (= bs!1023491 (and d!1457074 b!4625290)))

(declare-fun lambda!192121 () Int)

(declare-fun lt!1783365 () ListMap!4277)

(assert (=> bs!1023491 (= (= lt!1783365 lt!1783154) (= lambda!192121 lambda!192080))))

(assert (=> bs!1023491 (= (= lt!1783365 (ListMap!4278 Nil!51530)) (= lambda!192121 lambda!192079))))

(declare-fun bs!1023492 () Bool)

(assert (= bs!1023492 (and d!1457074 b!4625287)))

(assert (=> bs!1023492 (= (= lt!1783365 (ListMap!4278 Nil!51530)) (= lambda!192121 lambda!192078))))

(declare-fun bs!1023493 () Bool)

(assert (= bs!1023493 (and d!1457074 b!4625347)))

(assert (=> bs!1023493 (= (= lt!1783365 lt!1783240) (= lambda!192121 lambda!192094))))

(declare-fun bs!1023494 () Bool)

(assert (= bs!1023494 (and d!1457074 b!4625285)))

(assert (=> bs!1023494 (= (= lt!1783365 (ListMap!4278 Nil!51530)) (= lambda!192121 lambda!192075))))

(declare-fun bs!1023495 () Bool)

(assert (= bs!1023495 (and d!1457074 b!4625282)))

(assert (=> bs!1023495 (= (= lt!1783365 (ListMap!4278 Nil!51530)) (= lambda!192121 lambda!192074))))

(declare-fun bs!1023496 () Bool)

(assert (= bs!1023496 (and d!1457074 b!4625235)))

(assert (=> bs!1023496 (= (= lt!1783365 lt!1783063) (= lambda!192121 lambda!192060))))

(declare-fun bs!1023497 () Bool)

(assert (= bs!1023497 (and d!1457074 d!1456878)))

(assert (=> bs!1023497 (= (= lt!1783365 lt!1783060) (= lambda!192121 lambda!192061))))

(declare-fun bs!1023498 () Bool)

(assert (= bs!1023498 (and d!1457074 d!1457008)))

(assert (=> bs!1023498 (not (= lambda!192121 lambda!192103))))

(declare-fun bs!1023499 () Bool)

(assert (= bs!1023499 (and d!1457074 b!4625532)))

(assert (=> bs!1023499 (= (= lt!1783365 lt!1782800) (= lambda!192121 lambda!192118))))

(declare-fun bs!1023500 () Bool)

(assert (= bs!1023500 (and d!1457074 b!4625344)))

(assert (=> bs!1023500 (= (= lt!1783365 (ListMap!4278 Nil!51530)) (= lambda!192121 lambda!192092))))

(declare-fun bs!1023501 () Bool)

(assert (= bs!1023501 (and d!1457074 b!4625232)))

(assert (=> bs!1023501 (= (= lt!1783365 (ListMap!4278 Nil!51530)) (= lambda!192121 lambda!192058))))

(declare-fun bs!1023502 () Bool)

(assert (= bs!1023502 (and d!1457074 b!4625535)))

(assert (=> bs!1023502 (= (= lt!1783365 lt!1782800) (= lambda!192121 lambda!192119))))

(assert (=> bs!1023493 (= (= lt!1783365 (ListMap!4278 Nil!51530)) (= lambda!192121 lambda!192093))))

(declare-fun bs!1023503 () Bool)

(assert (= bs!1023503 (and d!1457074 d!1456956)))

(assert (=> bs!1023503 (= (= lt!1783365 lt!1783151) (= lambda!192121 lambda!192081))))

(assert (=> bs!1023502 (= (= lt!1783365 lt!1783368) (= lambda!192121 lambda!192120))))

(assert (=> bs!1023496 (= (= lt!1783365 (ListMap!4278 Nil!51530)) (= lambda!192121 lambda!192059))))

(declare-fun bs!1023504 () Bool)

(assert (= bs!1023504 (and d!1457074 d!1457006)))

(assert (=> bs!1023504 (not (= lambda!192121 lambda!192102))))

(declare-fun bs!1023505 () Bool)

(assert (= bs!1023505 (and d!1457074 d!1456978)))

(assert (=> bs!1023505 (= (= lt!1783365 lt!1783237) (= lambda!192121 lambda!192095))))

(assert (=> bs!1023494 (= (= lt!1783365 lt!1783132) (= lambda!192121 lambda!192076))))

(declare-fun bs!1023506 () Bool)

(assert (= bs!1023506 (and d!1457074 d!1456952)))

(assert (=> bs!1023506 (= (= lt!1783365 lt!1783129) (= lambda!192121 lambda!192077))))

(assert (=> d!1457074 true))

(declare-fun e!2885323 () ListMap!4277)

(assert (=> b!4625532 (= e!2885323 lt!1782800)))

(declare-fun lt!1783370 () Unit!112017)

(declare-fun call!322649 () Unit!112017)

(assert (=> b!4625532 (= lt!1783370 call!322649)))

(declare-fun call!322650 () Bool)

(assert (=> b!4625532 call!322650))

(declare-fun lt!1783378 () Unit!112017)

(assert (=> b!4625532 (= lt!1783378 lt!1783370)))

(declare-fun call!322651 () Bool)

(assert (=> b!4625532 call!322651))

(declare-fun lt!1783376 () Unit!112017)

(declare-fun Unit!112128 () Unit!112017)

(assert (=> b!4625532 (= lt!1783376 Unit!112128)))

(declare-fun bm!322644 () Bool)

(declare-fun c!791793 () Bool)

(assert (=> bm!322644 (= call!322650 (forall!10824 (ite c!791793 (toList!4973 lt!1782800) oldBucket!40) (ite c!791793 lambda!192118 lambda!192120)))))

(declare-fun b!4625534 () Bool)

(declare-fun e!2885322 () Bool)

(assert (=> b!4625534 (= e!2885322 (invariantList!1204 (toList!4973 lt!1783365)))))

(assert (=> b!4625535 (= e!2885323 lt!1783368)))

(declare-fun lt!1783366 () ListMap!4277)

(assert (=> b!4625535 (= lt!1783366 (+!1870 lt!1782800 (h!57580 oldBucket!40)))))

(assert (=> b!4625535 (= lt!1783368 (addToMapMapFromBucket!965 (t!358686 oldBucket!40) (+!1870 lt!1782800 (h!57580 oldBucket!40))))))

(declare-fun lt!1783381 () Unit!112017)

(assert (=> b!4625535 (= lt!1783381 call!322649)))

(assert (=> b!4625535 (forall!10824 (toList!4973 lt!1782800) lambda!192119)))

(declare-fun lt!1783375 () Unit!112017)

(assert (=> b!4625535 (= lt!1783375 lt!1783381)))

(assert (=> b!4625535 (forall!10824 (toList!4973 lt!1783366) lambda!192120)))

(declare-fun lt!1783383 () Unit!112017)

(declare-fun Unit!112129 () Unit!112017)

(assert (=> b!4625535 (= lt!1783383 Unit!112129)))

(assert (=> b!4625535 (forall!10824 (t!358686 oldBucket!40) lambda!192120)))

(declare-fun lt!1783371 () Unit!112017)

(declare-fun Unit!112130 () Unit!112017)

(assert (=> b!4625535 (= lt!1783371 Unit!112130)))

(declare-fun lt!1783364 () Unit!112017)

(declare-fun Unit!112131 () Unit!112017)

(assert (=> b!4625535 (= lt!1783364 Unit!112131)))

(declare-fun lt!1783372 () Unit!112017)

(assert (=> b!4625535 (= lt!1783372 (forallContained!3050 (toList!4973 lt!1783366) lambda!192120 (h!57580 oldBucket!40)))))

(assert (=> b!4625535 (contains!14571 lt!1783366 (_1!29525 (h!57580 oldBucket!40)))))

(declare-fun lt!1783377 () Unit!112017)

(declare-fun Unit!112132 () Unit!112017)

(assert (=> b!4625535 (= lt!1783377 Unit!112132)))

(assert (=> b!4625535 (contains!14571 lt!1783368 (_1!29525 (h!57580 oldBucket!40)))))

(declare-fun lt!1783373 () Unit!112017)

(declare-fun Unit!112133 () Unit!112017)

(assert (=> b!4625535 (= lt!1783373 Unit!112133)))

(assert (=> b!4625535 (forall!10824 oldBucket!40 lambda!192120)))

(declare-fun lt!1783379 () Unit!112017)

(declare-fun Unit!112134 () Unit!112017)

(assert (=> b!4625535 (= lt!1783379 Unit!112134)))

(assert (=> b!4625535 (forall!10824 (toList!4973 lt!1783366) lambda!192120)))

(declare-fun lt!1783382 () Unit!112017)

(declare-fun Unit!112135 () Unit!112017)

(assert (=> b!4625535 (= lt!1783382 Unit!112135)))

(declare-fun lt!1783369 () Unit!112017)

(declare-fun Unit!112136 () Unit!112017)

(assert (=> b!4625535 (= lt!1783369 Unit!112136)))

(declare-fun lt!1783367 () Unit!112017)

(assert (=> b!4625535 (= lt!1783367 (addForallContainsKeyThenBeforeAdding!505 lt!1782800 lt!1783368 (_1!29525 (h!57580 oldBucket!40)) (_2!29525 (h!57580 oldBucket!40))))))

(assert (=> b!4625535 (forall!10824 (toList!4973 lt!1782800) lambda!192120)))

(declare-fun lt!1783380 () Unit!112017)

(assert (=> b!4625535 (= lt!1783380 lt!1783367)))

(assert (=> b!4625535 call!322651))

(declare-fun lt!1783384 () Unit!112017)

(declare-fun Unit!112137 () Unit!112017)

(assert (=> b!4625535 (= lt!1783384 Unit!112137)))

(declare-fun res!1939662 () Bool)

(assert (=> b!4625535 (= res!1939662 call!322650)))

(declare-fun e!2885321 () Bool)

(assert (=> b!4625535 (=> (not res!1939662) (not e!2885321))))

(assert (=> b!4625535 e!2885321))

(declare-fun lt!1783374 () Unit!112017)

(declare-fun Unit!112138 () Unit!112017)

(assert (=> b!4625535 (= lt!1783374 Unit!112138)))

(declare-fun bm!322645 () Bool)

(assert (=> bm!322645 (= call!322651 (forall!10824 (toList!4973 lt!1782800) (ite c!791793 lambda!192118 lambda!192120)))))

(declare-fun bm!322646 () Bool)

(assert (=> bm!322646 (= call!322649 (lemmaContainsAllItsOwnKeys!506 lt!1782800))))

(declare-fun b!4625536 () Bool)

(assert (=> b!4625536 (= e!2885321 (forall!10824 (toList!4973 lt!1782800) lambda!192120))))

(declare-fun b!4625533 () Bool)

(declare-fun res!1939661 () Bool)

(assert (=> b!4625533 (=> (not res!1939661) (not e!2885322))))

(assert (=> b!4625533 (= res!1939661 (forall!10824 (toList!4973 lt!1782800) lambda!192121))))

(assert (=> d!1457074 e!2885322))

(declare-fun res!1939660 () Bool)

(assert (=> d!1457074 (=> (not res!1939660) (not e!2885322))))

(assert (=> d!1457074 (= res!1939660 (forall!10824 oldBucket!40 lambda!192121))))

(assert (=> d!1457074 (= lt!1783365 e!2885323)))

(assert (=> d!1457074 (= c!791793 ((_ is Nil!51530) oldBucket!40))))

(assert (=> d!1457074 (noDuplicateKeys!1504 oldBucket!40)))

(assert (=> d!1457074 (= (addToMapMapFromBucket!965 oldBucket!40 lt!1782800) lt!1783365)))

(assert (= (and d!1457074 c!791793) b!4625532))

(assert (= (and d!1457074 (not c!791793)) b!4625535))

(assert (= (and b!4625535 res!1939662) b!4625536))

(assert (= (or b!4625532 b!4625535) bm!322646))

(assert (= (or b!4625532 b!4625535) bm!322645))

(assert (= (or b!4625532 b!4625535) bm!322644))

(assert (= (and d!1457074 res!1939660) b!4625533))

(assert (= (and b!4625533 res!1939661) b!4625534))

(declare-fun m!5467247 () Bool)

(assert (=> bm!322645 m!5467247))

(declare-fun m!5467249 () Bool)

(assert (=> b!4625536 m!5467249))

(declare-fun m!5467251 () Bool)

(assert (=> bm!322646 m!5467251))

(declare-fun m!5467253 () Bool)

(assert (=> b!4625534 m!5467253))

(declare-fun m!5467255 () Bool)

(assert (=> b!4625535 m!5467255))

(declare-fun m!5467257 () Bool)

(assert (=> b!4625535 m!5467257))

(declare-fun m!5467259 () Bool)

(assert (=> b!4625535 m!5467259))

(declare-fun m!5467261 () Bool)

(assert (=> b!4625535 m!5467261))

(declare-fun m!5467263 () Bool)

(assert (=> b!4625535 m!5467263))

(declare-fun m!5467265 () Bool)

(assert (=> b!4625535 m!5467265))

(declare-fun m!5467267 () Bool)

(assert (=> b!4625535 m!5467267))

(declare-fun m!5467269 () Bool)

(assert (=> b!4625535 m!5467269))

(assert (=> b!4625535 m!5467249))

(assert (=> b!4625535 m!5467261))

(declare-fun m!5467271 () Bool)

(assert (=> b!4625535 m!5467271))

(assert (=> b!4625535 m!5467265))

(declare-fun m!5467273 () Bool)

(assert (=> b!4625535 m!5467273))

(declare-fun m!5467275 () Bool)

(assert (=> b!4625533 m!5467275))

(declare-fun m!5467277 () Bool)

(assert (=> d!1457074 m!5467277))

(assert (=> d!1457074 m!5466275))

(declare-fun m!5467279 () Bool)

(assert (=> bm!322644 m!5467279))

(assert (=> b!4625119 d!1457074))

(declare-fun bs!1023507 () Bool)

(declare-fun d!1457076 () Bool)

(assert (= bs!1023507 (and d!1457076 d!1456930)))

(declare-fun lambda!192122 () Int)

(assert (=> bs!1023507 (= lambda!192122 lambda!192073)))

(declare-fun bs!1023508 () Bool)

(assert (= bs!1023508 (and d!1457076 d!1457068)))

(assert (=> bs!1023508 (= lambda!192122 lambda!192116)))

(declare-fun bs!1023509 () Bool)

(assert (= bs!1023509 (and d!1457076 d!1457038)))

(assert (=> bs!1023509 (= lambda!192122 lambda!192107)))

(declare-fun bs!1023510 () Bool)

(assert (= bs!1023510 (and d!1457076 b!4625122)))

(assert (=> bs!1023510 (= lambda!192122 lambda!191976)))

(declare-fun bs!1023511 () Bool)

(assert (= bs!1023511 (and d!1457076 d!1456984)))

(assert (=> bs!1023511 (= lambda!192122 lambda!192098)))

(declare-fun bs!1023512 () Bool)

(assert (= bs!1023512 (and d!1457076 d!1457052)))

(assert (=> bs!1023512 (= lambda!192122 lambda!192115)))

(declare-fun bs!1023513 () Bool)

(assert (= bs!1023513 (and d!1457076 d!1457070)))

(assert (=> bs!1023513 (= lambda!192122 lambda!192117)))

(declare-fun bs!1023514 () Bool)

(assert (= bs!1023514 (and d!1457076 d!1456960)))

(assert (=> bs!1023514 (= lambda!192122 lambda!192088)))

(declare-fun bs!1023515 () Bool)

(assert (= bs!1023515 (and d!1457076 d!1457040)))

(assert (=> bs!1023515 (= lambda!192122 lambda!192114)))

(declare-fun lt!1783385 () ListMap!4277)

(assert (=> d!1457076 (invariantList!1204 (toList!4973 lt!1783385))))

(declare-fun e!2885324 () ListMap!4277)

(assert (=> d!1457076 (= lt!1783385 e!2885324)))

(declare-fun c!791794 () Bool)

(assert (=> d!1457076 (= c!791794 ((_ is Cons!51531) Nil!51531))))

(assert (=> d!1457076 (forall!10822 Nil!51531 lambda!192122)))

(assert (=> d!1457076 (= (extractMap!1560 Nil!51531) lt!1783385)))

(declare-fun b!4625537 () Bool)

(assert (=> b!4625537 (= e!2885324 (addToMapMapFromBucket!965 (_2!29526 (h!57581 Nil!51531)) (extractMap!1560 (t!358687 Nil!51531))))))

(declare-fun b!4625538 () Bool)

(assert (=> b!4625538 (= e!2885324 (ListMap!4278 Nil!51530))))

(assert (= (and d!1457076 c!791794) b!4625537))

(assert (= (and d!1457076 (not c!791794)) b!4625538))

(declare-fun m!5467281 () Bool)

(assert (=> d!1457076 m!5467281))

(declare-fun m!5467283 () Bool)

(assert (=> d!1457076 m!5467283))

(declare-fun m!5467285 () Bool)

(assert (=> b!4625537 m!5467285))

(assert (=> b!4625537 m!5467285))

(declare-fun m!5467287 () Bool)

(assert (=> b!4625537 m!5467287))

(assert (=> b!4625119 d!1457076))

(declare-fun e!2885327 () Bool)

(declare-fun tp!1342102 () Bool)

(declare-fun b!4625543 () Bool)

(assert (=> b!4625543 (= e!2885327 (and tp_is_empty!29309 tp_is_empty!29311 tp!1342102))))

(assert (=> b!4625120 (= tp!1342094 e!2885327)))

(assert (= (and b!4625120 ((_ is Cons!51530) (t!358686 oldBucket!40))) b!4625543))

(declare-fun b!4625544 () Bool)

(declare-fun tp!1342103 () Bool)

(declare-fun e!2885328 () Bool)

(assert (=> b!4625544 (= e!2885328 (and tp_is_empty!29309 tp_is_empty!29311 tp!1342103))))

(assert (=> b!4625115 (= tp!1342095 e!2885328)))

(assert (= (and b!4625115 ((_ is Cons!51530) (t!358686 newBucket!224))) b!4625544))

(declare-fun b_lambda!170737 () Bool)

(assert (= b_lambda!170735 (or b!4625122 b_lambda!170737)))

(declare-fun bs!1023516 () Bool)

(declare-fun d!1457078 () Bool)

(assert (= bs!1023516 (and d!1457078 b!4625122)))

(assert (=> bs!1023516 (= (dynLambda!21498 lambda!191976 (h!57581 lt!1782796)) (noDuplicateKeys!1504 (_2!29526 (h!57581 lt!1782796))))))

(declare-fun m!5467289 () Bool)

(assert (=> bs!1023516 m!5467289))

(assert (=> b!4625519 d!1457078))

(declare-fun b_lambda!170739 () Bool)

(assert (= b_lambda!170733 (or b!4625122 b_lambda!170739)))

(declare-fun bs!1023517 () Bool)

(declare-fun d!1457080 () Bool)

(assert (= bs!1023517 (and d!1457080 b!4625122)))

(assert (=> bs!1023517 (= (dynLambda!21498 lambda!191976 lt!1782802) (noDuplicateKeys!1504 (_2!29526 lt!1782802)))))

(declare-fun m!5467291 () Bool)

(assert (=> bs!1023517 m!5467291))

(assert (=> d!1457042 d!1457080))

(check-sat (not b!4625236) (not d!1457058) (not b!4625530) (not bm!322641) (not b!4625291) (not d!1456958) (not d!1456952) (not b!4625357) (not d!1457034) (not bm!322634) (not d!1457026) (not d!1457040) (not bm!322631) (not bm!322627) (not b!4625332) (not d!1457076) (not b!4625335) (not d!1456960) (not d!1457006) (not b!4625504) (not b!4625473) (not d!1457052) (not b!4625235) (not d!1456926) (not bm!322643) (not b!4625471) (not b!4625383) (not d!1456996) (not b!4625491) (not b!4625249) (not b!4625290) (not d!1457018) tp_is_empty!29311 (not b!4625503) (not d!1456878) (not d!1457060) (not b!4625415) (not b!4625451) (not b!4625347) (not b!4625280) (not b!4625360) (not b!4625511) (not bs!1023516) (not d!1457066) (not b!4625494) (not b!4625453) (not b!4625510) (not bm!322640) (not b!4625234) (not d!1457062) (not d!1457000) (not b!4625535) (not b!4625513) (not b!4625506) (not b!4625537) (not b!4625338) (not b!4625479) (not b!4625464) (not d!1457038) (not d!1457042) (not b!4625508) (not d!1457070) (not b_lambda!170739) (not d!1456964) (not d!1457044) (not b!4625533) (not bm!322644) (not d!1456956) (not b!4625505) (not d!1457074) (not b!4625248) (not b!4625289) (not d!1457014) (not bm!322635) (not bm!322626) (not b!4625339) (not b!4625361) (not d!1456986) (not b!4625526) (not bm!322625) (not b!4625525) (not b!4625512) (not d!1457012) (not d!1456990) (not b!4625489) (not d!1457068) (not d!1456984) (not d!1457056) tp_is_empty!29309 (not d!1456988) (not bm!322645) (not bm!322632) (not b!4625544) (not b!4625283) (not b!4625288) (not b!4625528) (not b!4625524) (not bs!1023517) (not d!1456874) (not d!1457036) (not b!4625285) (not b!4625359) (not b!4625457) (not b!4625490) (not b!4625520) (not b!4625497) (not b!4625345) (not b!4625488) (not bm!322646) (not b!4625333) (not b!4625233) (not d!1456994) (not b!4625534) (not b!4625502) (not b!4625284) (not b_lambda!170737) (not b!4625379) (not bm!322639) (not b!4625536) (not bm!322636) (not bm!322633) (not b!4625362) (not d!1457020) (not b!4625346) (not b!4625337) (not b!4625531) (not d!1456872) (not b!4625348) (not b!4625543) (not d!1457050) (not b!4625523) (not b!4625452) (not d!1457064) (not d!1457008) (not b!4625331) (not b!4625286) (not d!1456930) (not bm!322642) (not d!1456978) (not b!4625455))
(check-sat)
