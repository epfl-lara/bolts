; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!467300 () Bool)

(assert start!467300)

(declare-fun b!4644207 () Bool)

(declare-fun res!1951093 () Bool)

(declare-fun e!2897187 () Bool)

(assert (=> b!4644207 (=> res!1951093 e!2897187)))

(declare-datatypes ((K!13175 0))(
  ( (K!13176 (val!18811 Int)) )
))
(declare-datatypes ((V!13421 0))(
  ( (V!13422 (val!18812 Int)) )
))
(declare-datatypes ((tuple2!52886 0))(
  ( (tuple2!52887 (_1!29737 K!13175) (_2!29737 V!13421)) )
))
(declare-datatypes ((List!51936 0))(
  ( (Nil!51812) (Cons!51812 (h!57932 tuple2!52886) (t!359030 List!51936)) )
))
(declare-datatypes ((ListMap!4489 0))(
  ( (ListMap!4490 (toList!5165 List!51936)) )
))
(declare-fun lt!1808639 () ListMap!4489)

(declare-fun oldBucket!40 () List!51936)

(declare-fun lt!1808647 () ListMap!4489)

(declare-fun eq!901 (ListMap!4489 ListMap!4489) Bool)

(declare-fun +!1960 (ListMap!4489 tuple2!52886) ListMap!4489)

(assert (=> b!4644207 (= res!1951093 (not (eq!901 lt!1808647 (+!1960 lt!1808639 (h!57932 oldBucket!40)))))))

(declare-fun b!4644208 () Bool)

(declare-fun e!2897182 () Bool)

(assert (=> b!4644208 (= e!2897182 e!2897187)))

(declare-fun res!1951101 () Bool)

(assert (=> b!4644208 (=> res!1951101 e!2897187)))

(declare-fun lt!1808629 () ListMap!4489)

(declare-fun lt!1808649 () ListMap!4489)

(assert (=> b!4644208 (= res!1951101 (not (eq!901 lt!1808629 lt!1808649)))))

(declare-fun lt!1808633 () ListMap!4489)

(assert (=> b!4644208 (eq!901 lt!1808633 lt!1808629)))

(declare-fun lt!1808652 () ListMap!4489)

(declare-fun key!4968 () K!13175)

(declare-fun -!614 (ListMap!4489 K!13175) ListMap!4489)

(assert (=> b!4644208 (= lt!1808629 (-!614 lt!1808652 key!4968))))

(declare-datatypes ((Unit!116009 0))(
  ( (Unit!116010) )
))
(declare-fun lt!1808643 () Unit!116009)

(declare-fun lt!1808632 () ListMap!4489)

(declare-fun lemmaRemovePreservesEq!62 (ListMap!4489 ListMap!4489 K!13175) Unit!116009)

(assert (=> b!4644208 (= lt!1808643 (lemmaRemovePreservesEq!62 lt!1808632 lt!1808652 key!4968))))

(declare-fun b!4644209 () Bool)

(declare-fun e!2897183 () Bool)

(declare-fun e!2897190 () Bool)

(assert (=> b!4644209 (= e!2897183 e!2897190)))

(declare-fun res!1951104 () Bool)

(assert (=> b!4644209 (=> res!1951104 e!2897190)))

(declare-fun lt!1808655 () tuple2!52886)

(assert (=> b!4644209 (= res!1951104 (not (eq!901 lt!1808647 (+!1960 lt!1808639 lt!1808655))))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1808650 () List!51936)

(declare-datatypes ((tuple2!52888 0))(
  ( (tuple2!52889 (_1!29738 (_ BitVec 64)) (_2!29738 List!51936)) )
))
(declare-datatypes ((List!51937 0))(
  ( (Nil!51813) (Cons!51813 (h!57933 tuple2!52888) (t!359031 List!51937)) )
))
(declare-fun extractMap!1666 (List!51937) ListMap!4489)

(assert (=> b!4644209 (= lt!1808639 (extractMap!1666 (Cons!51813 (tuple2!52889 hash!414 lt!1808650) Nil!51813)))))

(declare-fun newBucket!224 () List!51936)

(assert (=> b!4644209 (= lt!1808647 (extractMap!1666 (Cons!51813 (tuple2!52889 hash!414 newBucket!224) Nil!51813)))))

(declare-fun b!4644210 () Bool)

(declare-fun res!1951095 () Bool)

(declare-fun e!2897185 () Bool)

(assert (=> b!4644210 (=> res!1951095 e!2897185)))

(assert (=> b!4644210 (= res!1951095 (not (eq!901 lt!1808652 lt!1808632)))))

(declare-fun b!4644211 () Bool)

(declare-fun e!2897184 () Bool)

(declare-fun e!2897179 () Bool)

(assert (=> b!4644211 (= e!2897184 (not e!2897179))))

(declare-fun res!1951096 () Bool)

(assert (=> b!4644211 (=> res!1951096 e!2897179)))

(get-info :version)

(assert (=> b!4644211 (= res!1951096 (or (and ((_ is Cons!51812) oldBucket!40) (= (_1!29737 (h!57932 oldBucket!40)) key!4968)) (not ((_ is Cons!51812) oldBucket!40)) (= (_1!29737 (h!57932 oldBucket!40)) key!4968)))))

(declare-fun e!2897181 () Bool)

(assert (=> b!4644211 e!2897181))

(declare-fun res!1951086 () Bool)

(assert (=> b!4644211 (=> (not res!1951086) (not e!2897181))))

(declare-fun lt!1808624 () ListMap!4489)

(declare-fun addToMapMapFromBucket!1069 (List!51936 ListMap!4489) ListMap!4489)

(assert (=> b!4644211 (= res!1951086 (= lt!1808652 (addToMapMapFromBucket!1069 oldBucket!40 lt!1808624)))))

(assert (=> b!4644211 (= lt!1808624 (extractMap!1666 Nil!51813))))

(assert (=> b!4644211 true))

(declare-fun b!4644213 () Bool)

(assert (=> b!4644213 (= e!2897181 (= lt!1808624 (ListMap!4490 Nil!51812)))))

(declare-fun b!4644214 () Bool)

(declare-fun e!2897192 () Bool)

(declare-fun e!2897189 () Bool)

(assert (=> b!4644214 (= e!2897192 e!2897189)))

(declare-fun res!1951097 () Bool)

(assert (=> b!4644214 (=> (not res!1951097) (not e!2897189))))

(declare-fun contains!14963 (ListMap!4489 K!13175) Bool)

(assert (=> b!4644214 (= res!1951097 (contains!14963 lt!1808652 key!4968))))

(declare-fun lt!1808656 () List!51937)

(assert (=> b!4644214 (= lt!1808652 (extractMap!1666 lt!1808656))))

(assert (=> b!4644214 (= lt!1808656 (Cons!51813 (tuple2!52889 hash!414 oldBucket!40) Nil!51813))))

(declare-fun b!4644215 () Bool)

(declare-fun e!2897186 () Bool)

(assert (=> b!4644215 (= e!2897179 e!2897186)))

(declare-fun res!1951087 () Bool)

(assert (=> b!4644215 (=> res!1951087 e!2897186)))

(declare-fun containsKey!2668 (List!51936 K!13175) Bool)

(assert (=> b!4644215 (= res!1951087 (not (containsKey!2668 (t!359030 oldBucket!40) key!4968)))))

(assert (=> b!4644215 (containsKey!2668 oldBucket!40 key!4968)))

(declare-datatypes ((Hashable!6007 0))(
  ( (HashableExt!6006 (__x!31710 Int)) )
))
(declare-fun hashF!1389 () Hashable!6007)

(declare-fun lt!1808641 () Unit!116009)

(declare-fun lemmaGetPairDefinedThenContainsKey!124 (List!51936 K!13175 Hashable!6007) Unit!116009)

(assert (=> b!4644215 (= lt!1808641 (lemmaGetPairDefinedThenContainsKey!124 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1808645 () List!51936)

(declare-datatypes ((Option!11790 0))(
  ( (None!11789) (Some!11789 (v!46035 tuple2!52886)) )
))
(declare-fun isDefined!9055 (Option!11790) Bool)

(declare-fun getPair!370 (List!51936 K!13175) Option!11790)

(assert (=> b!4644215 (isDefined!9055 (getPair!370 lt!1808645 key!4968))))

(declare-fun lt!1808638 () Unit!116009)

(declare-fun lambda!197066 () Int)

(declare-fun lt!1808644 () tuple2!52888)

(declare-fun forallContained!3192 (List!51937 Int tuple2!52888) Unit!116009)

(assert (=> b!4644215 (= lt!1808638 (forallContained!3192 lt!1808656 lambda!197066 lt!1808644))))

(declare-fun contains!14964 (List!51937 tuple2!52888) Bool)

(assert (=> b!4644215 (contains!14964 lt!1808656 lt!1808644)))

(declare-fun lt!1808627 () (_ BitVec 64))

(assert (=> b!4644215 (= lt!1808644 (tuple2!52889 lt!1808627 lt!1808645))))

(declare-fun lt!1808640 () Unit!116009)

(declare-datatypes ((ListLongMap!3735 0))(
  ( (ListLongMap!3736 (toList!5166 List!51937)) )
))
(declare-fun lt!1808634 () ListLongMap!3735)

(declare-fun lemmaGetValueImpliesTupleContained!175 (ListLongMap!3735 (_ BitVec 64) List!51936) Unit!116009)

(assert (=> b!4644215 (= lt!1808640 (lemmaGetValueImpliesTupleContained!175 lt!1808634 lt!1808627 lt!1808645))))

(declare-fun apply!12243 (ListLongMap!3735 (_ BitVec 64)) List!51936)

(assert (=> b!4644215 (= lt!1808645 (apply!12243 lt!1808634 lt!1808627))))

(declare-fun contains!14965 (ListLongMap!3735 (_ BitVec 64)) Bool)

(assert (=> b!4644215 (contains!14965 lt!1808634 lt!1808627)))

(declare-fun lt!1808642 () Unit!116009)

(declare-fun lemmaInGenMapThenLongMapContainsHash!576 (ListLongMap!3735 K!13175 Hashable!6007) Unit!116009)

(assert (=> b!4644215 (= lt!1808642 (lemmaInGenMapThenLongMapContainsHash!576 lt!1808634 key!4968 hashF!1389))))

(declare-fun lt!1808626 () Unit!116009)

(declare-fun lemmaInGenMapThenGetPairDefined!166 (ListLongMap!3735 K!13175 Hashable!6007) Unit!116009)

(assert (=> b!4644215 (= lt!1808626 (lemmaInGenMapThenGetPairDefined!166 lt!1808634 key!4968 hashF!1389))))

(assert (=> b!4644215 (= lt!1808634 (ListLongMap!3736 lt!1808656))))

(declare-fun e!2897188 () Bool)

(declare-fun tp_is_empty!29733 () Bool)

(declare-fun tp_is_empty!29735 () Bool)

(declare-fun tp!1343011 () Bool)

(declare-fun b!4644216 () Bool)

(assert (=> b!4644216 (= e!2897188 (and tp_is_empty!29733 tp_is_empty!29735 tp!1343011))))

(declare-fun tp!1343010 () Bool)

(declare-fun b!4644217 () Bool)

(declare-fun e!2897180 () Bool)

(assert (=> b!4644217 (= e!2897180 (and tp_is_empty!29733 tp_is_empty!29735 tp!1343010))))

(declare-fun b!4644218 () Bool)

(assert (=> b!4644218 (= e!2897185 (eq!901 lt!1808647 lt!1808629))))

(declare-fun b!4644219 () Bool)

(declare-fun e!2897191 () Bool)

(assert (=> b!4644219 (= e!2897191 e!2897183)))

(declare-fun res!1951085 () Bool)

(assert (=> b!4644219 (=> res!1951085 e!2897183)))

(declare-fun lt!1808631 () List!51936)

(assert (=> b!4644219 (= res!1951085 (not (eq!901 lt!1808652 (+!1960 (extractMap!1666 (Cons!51813 (tuple2!52889 hash!414 lt!1808631) Nil!51813)) (h!57932 oldBucket!40)))))))

(assert (=> b!4644219 (eq!901 (addToMapMapFromBucket!1069 (Cons!51812 lt!1808655 lt!1808650) (ListMap!4490 Nil!51812)) (+!1960 (addToMapMapFromBucket!1069 lt!1808650 (ListMap!4490 Nil!51812)) lt!1808655))))

(declare-fun lt!1808651 () Unit!116009)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!152 (tuple2!52886 List!51936 ListMap!4489) Unit!116009)

(assert (=> b!4644219 (= lt!1808651 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!152 lt!1808655 lt!1808650 (ListMap!4490 Nil!51812)))))

(declare-fun head!9720 (List!51936) tuple2!52886)

(assert (=> b!4644219 (= lt!1808655 (head!9720 newBucket!224))))

(declare-fun lt!1808628 () tuple2!52886)

(assert (=> b!4644219 (eq!901 (addToMapMapFromBucket!1069 (Cons!51812 lt!1808628 lt!1808631) (ListMap!4490 Nil!51812)) (+!1960 (addToMapMapFromBucket!1069 lt!1808631 (ListMap!4490 Nil!51812)) lt!1808628))))

(declare-fun lt!1808653 () Unit!116009)

(assert (=> b!4644219 (= lt!1808653 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!152 lt!1808628 lt!1808631 (ListMap!4490 Nil!51812)))))

(assert (=> b!4644219 (= lt!1808628 (head!9720 oldBucket!40))))

(declare-fun lt!1808625 () ListMap!4489)

(assert (=> b!4644219 (contains!14963 lt!1808625 key!4968)))

(declare-fun lt!1808648 () List!51937)

(assert (=> b!4644219 (= lt!1808625 (extractMap!1666 lt!1808648))))

(declare-fun lt!1808636 () Unit!116009)

(declare-fun lemmaListContainsThenExtractedMapContains!388 (ListLongMap!3735 K!13175 Hashable!6007) Unit!116009)

(assert (=> b!4644219 (= lt!1808636 (lemmaListContainsThenExtractedMapContains!388 (ListLongMap!3736 lt!1808648) key!4968 hashF!1389))))

(assert (=> b!4644219 (= lt!1808648 (Cons!51813 (tuple2!52889 hash!414 (t!359030 oldBucket!40)) Nil!51813))))

(declare-fun b!4644220 () Bool)

(declare-fun res!1951094 () Bool)

(assert (=> b!4644220 (=> (not res!1951094) (not e!2897184))))

(declare-fun allKeysSameHash!1464 (List!51936 (_ BitVec 64) Hashable!6007) Bool)

(assert (=> b!4644220 (= res!1951094 (allKeysSameHash!1464 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4644221 () Bool)

(assert (=> b!4644221 (= e!2897189 e!2897184)))

(declare-fun res!1951088 () Bool)

(assert (=> b!4644221 (=> (not res!1951088) (not e!2897184))))

(assert (=> b!4644221 (= res!1951088 (= lt!1808627 hash!414))))

(declare-fun hash!3721 (Hashable!6007 K!13175) (_ BitVec 64))

(assert (=> b!4644221 (= lt!1808627 (hash!3721 hashF!1389 key!4968))))

(declare-fun b!4644212 () Bool)

(assert (=> b!4644212 (= e!2897190 e!2897182)))

(declare-fun res!1951091 () Bool)

(assert (=> b!4644212 (=> res!1951091 e!2897182)))

(assert (=> b!4644212 (= res!1951091 (not (= lt!1808633 lt!1808649)))))

(declare-fun lt!1808630 () ListMap!4489)

(assert (=> b!4644212 (= lt!1808649 (+!1960 lt!1808630 (h!57932 oldBucket!40)))))

(assert (=> b!4644212 (= lt!1808633 (-!614 lt!1808632 key!4968))))

(assert (=> b!4644212 (= lt!1808632 (+!1960 lt!1808625 (h!57932 oldBucket!40)))))

(declare-fun lt!1808635 () ListMap!4489)

(declare-fun lt!1808654 () ListMap!4489)

(assert (=> b!4644212 (= lt!1808635 lt!1808654)))

(assert (=> b!4644212 (= lt!1808654 (+!1960 lt!1808630 (h!57932 oldBucket!40)))))

(assert (=> b!4644212 (= lt!1808635 (-!614 (+!1960 lt!1808625 (h!57932 oldBucket!40)) key!4968))))

(declare-fun lt!1808637 () Unit!116009)

(declare-fun addRemoveCommutativeForDiffKeys!59 (ListMap!4489 K!13175 V!13421 K!13175) Unit!116009)

(assert (=> b!4644212 (= lt!1808637 (addRemoveCommutativeForDiffKeys!59 lt!1808625 (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40)) key!4968))))

(assert (=> b!4644212 (eq!901 lt!1808639 lt!1808630)))

(assert (=> b!4644212 (= lt!1808630 (-!614 lt!1808625 key!4968))))

(declare-fun lt!1808657 () Unit!116009)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!166 ((_ BitVec 64) List!51936 List!51936 K!13175 Hashable!6007) Unit!116009)

(assert (=> b!4644212 (= lt!1808657 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!166 hash!414 (t!359030 oldBucket!40) lt!1808650 key!4968 hashF!1389))))

(declare-fun res!1951100 () Bool)

(assert (=> start!467300 (=> (not res!1951100) (not e!2897192))))

(declare-fun noDuplicateKeys!1610 (List!51936) Bool)

(assert (=> start!467300 (= res!1951100 (noDuplicateKeys!1610 oldBucket!40))))

(assert (=> start!467300 e!2897192))

(assert (=> start!467300 true))

(assert (=> start!467300 e!2897188))

(assert (=> start!467300 tp_is_empty!29733))

(assert (=> start!467300 e!2897180))

(declare-fun b!4644222 () Bool)

(declare-fun res!1951089 () Bool)

(assert (=> b!4644222 (=> res!1951089 e!2897187)))

(assert (=> b!4644222 (= res!1951089 (not (= lt!1808655 (h!57932 oldBucket!40))))))

(declare-fun b!4644223 () Bool)

(assert (=> b!4644223 (= e!2897187 e!2897185)))

(declare-fun res!1951090 () Bool)

(assert (=> b!4644223 (=> res!1951090 e!2897185)))

(assert (=> b!4644223 (= res!1951090 (not (eq!901 lt!1808647 lt!1808649)))))

(assert (=> b!4644223 (eq!901 lt!1808654 (+!1960 lt!1808639 (h!57932 oldBucket!40)))))

(declare-fun lt!1808646 () Unit!116009)

(declare-fun lemmaAddToEqMapsPreservesEq!68 (ListMap!4489 ListMap!4489 K!13175 V!13421) Unit!116009)

(assert (=> b!4644223 (= lt!1808646 (lemmaAddToEqMapsPreservesEq!68 lt!1808630 lt!1808639 (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40))))))

(declare-fun b!4644224 () Bool)

(declare-fun res!1951102 () Bool)

(assert (=> b!4644224 (=> (not res!1951102) (not e!2897192))))

(assert (=> b!4644224 (= res!1951102 (allKeysSameHash!1464 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4644225 () Bool)

(declare-fun res!1951098 () Bool)

(assert (=> b!4644225 (=> (not res!1951098) (not e!2897192))))

(declare-fun removePairForKey!1233 (List!51936 K!13175) List!51936)

(assert (=> b!4644225 (= res!1951098 (= (removePairForKey!1233 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4644226 () Bool)

(declare-fun res!1951092 () Bool)

(assert (=> b!4644226 (=> res!1951092 e!2897191)))

(assert (=> b!4644226 (= res!1951092 (not (= (removePairForKey!1233 (t!359030 oldBucket!40) key!4968) lt!1808650)))))

(declare-fun b!4644227 () Bool)

(assert (=> b!4644227 (= e!2897186 e!2897191)))

(declare-fun res!1951099 () Bool)

(assert (=> b!4644227 (=> res!1951099 e!2897191)))

(assert (=> b!4644227 (= res!1951099 (not (= (removePairForKey!1233 lt!1808631 key!4968) lt!1808650)))))

(declare-fun tail!8233 (List!51936) List!51936)

(assert (=> b!4644227 (= lt!1808650 (tail!8233 newBucket!224))))

(assert (=> b!4644227 (= lt!1808631 (tail!8233 oldBucket!40))))

(declare-fun b!4644228 () Bool)

(declare-fun res!1951103 () Bool)

(assert (=> b!4644228 (=> (not res!1951103) (not e!2897192))))

(assert (=> b!4644228 (= res!1951103 (noDuplicateKeys!1610 newBucket!224))))

(assert (= (and start!467300 res!1951100) b!4644228))

(assert (= (and b!4644228 res!1951103) b!4644225))

(assert (= (and b!4644225 res!1951098) b!4644224))

(assert (= (and b!4644224 res!1951102) b!4644214))

(assert (= (and b!4644214 res!1951097) b!4644221))

(assert (= (and b!4644221 res!1951088) b!4644220))

(assert (= (and b!4644220 res!1951094) b!4644211))

(assert (= (and b!4644211 res!1951086) b!4644213))

(assert (= (and b!4644211 (not res!1951096)) b!4644215))

(assert (= (and b!4644215 (not res!1951087)) b!4644227))

(assert (= (and b!4644227 (not res!1951099)) b!4644226))

(assert (= (and b!4644226 (not res!1951092)) b!4644219))

(assert (= (and b!4644219 (not res!1951085)) b!4644209))

(assert (= (and b!4644209 (not res!1951104)) b!4644212))

(assert (= (and b!4644212 (not res!1951091)) b!4644208))

(assert (= (and b!4644208 (not res!1951101)) b!4644222))

(assert (= (and b!4644222 (not res!1951089)) b!4644207))

(assert (= (and b!4644207 (not res!1951093)) b!4644223))

(assert (= (and b!4644223 (not res!1951090)) b!4644210))

(assert (= (and b!4644210 (not res!1951095)) b!4644218))

(assert (= (and start!467300 ((_ is Cons!51812) oldBucket!40)) b!4644216))

(assert (= (and start!467300 ((_ is Cons!51812) newBucket!224)) b!4644217))

(declare-fun m!5508445 () Bool)

(assert (=> b!4644212 m!5508445))

(declare-fun m!5508447 () Bool)

(assert (=> b!4644212 m!5508447))

(declare-fun m!5508449 () Bool)

(assert (=> b!4644212 m!5508449))

(declare-fun m!5508451 () Bool)

(assert (=> b!4644212 m!5508451))

(declare-fun m!5508453 () Bool)

(assert (=> b!4644212 m!5508453))

(declare-fun m!5508455 () Bool)

(assert (=> b!4644212 m!5508455))

(assert (=> b!4644212 m!5508445))

(declare-fun m!5508457 () Bool)

(assert (=> b!4644212 m!5508457))

(declare-fun m!5508459 () Bool)

(assert (=> b!4644212 m!5508459))

(declare-fun m!5508461 () Bool)

(assert (=> b!4644224 m!5508461))

(declare-fun m!5508463 () Bool)

(assert (=> b!4644218 m!5508463))

(declare-fun m!5508465 () Bool)

(assert (=> b!4644220 m!5508465))

(declare-fun m!5508467 () Bool)

(assert (=> b!4644227 m!5508467))

(declare-fun m!5508469 () Bool)

(assert (=> b!4644227 m!5508469))

(declare-fun m!5508471 () Bool)

(assert (=> b!4644227 m!5508471))

(declare-fun m!5508473 () Bool)

(assert (=> b!4644207 m!5508473))

(assert (=> b!4644207 m!5508473))

(declare-fun m!5508475 () Bool)

(assert (=> b!4644207 m!5508475))

(declare-fun m!5508477 () Bool)

(assert (=> b!4644210 m!5508477))

(declare-fun m!5508479 () Bool)

(assert (=> b!4644221 m!5508479))

(declare-fun m!5508481 () Bool)

(assert (=> b!4644225 m!5508481))

(declare-fun m!5508483 () Bool)

(assert (=> b!4644228 m!5508483))

(declare-fun m!5508485 () Bool)

(assert (=> b!4644208 m!5508485))

(declare-fun m!5508487 () Bool)

(assert (=> b!4644208 m!5508487))

(declare-fun m!5508489 () Bool)

(assert (=> b!4644208 m!5508489))

(declare-fun m!5508491 () Bool)

(assert (=> b!4644208 m!5508491))

(declare-fun m!5508493 () Bool)

(assert (=> b!4644223 m!5508493))

(assert (=> b!4644223 m!5508473))

(assert (=> b!4644223 m!5508473))

(declare-fun m!5508495 () Bool)

(assert (=> b!4644223 m!5508495))

(declare-fun m!5508497 () Bool)

(assert (=> b!4644223 m!5508497))

(declare-fun m!5508499 () Bool)

(assert (=> start!467300 m!5508499))

(declare-fun m!5508501 () Bool)

(assert (=> b!4644226 m!5508501))

(declare-fun m!5508503 () Bool)

(assert (=> b!4644214 m!5508503))

(declare-fun m!5508505 () Bool)

(assert (=> b!4644214 m!5508505))

(declare-fun m!5508507 () Bool)

(assert (=> b!4644211 m!5508507))

(declare-fun m!5508509 () Bool)

(assert (=> b!4644211 m!5508509))

(declare-fun m!5508511 () Bool)

(assert (=> b!4644219 m!5508511))

(declare-fun m!5508513 () Bool)

(assert (=> b!4644219 m!5508513))

(declare-fun m!5508515 () Bool)

(assert (=> b!4644219 m!5508515))

(declare-fun m!5508517 () Bool)

(assert (=> b!4644219 m!5508517))

(declare-fun m!5508519 () Bool)

(assert (=> b!4644219 m!5508519))

(declare-fun m!5508521 () Bool)

(assert (=> b!4644219 m!5508521))

(declare-fun m!5508523 () Bool)

(assert (=> b!4644219 m!5508523))

(declare-fun m!5508525 () Bool)

(assert (=> b!4644219 m!5508525))

(declare-fun m!5508527 () Bool)

(assert (=> b!4644219 m!5508527))

(declare-fun m!5508529 () Bool)

(assert (=> b!4644219 m!5508529))

(declare-fun m!5508531 () Bool)

(assert (=> b!4644219 m!5508531))

(declare-fun m!5508533 () Bool)

(assert (=> b!4644219 m!5508533))

(assert (=> b!4644219 m!5508527))

(declare-fun m!5508535 () Bool)

(assert (=> b!4644219 m!5508535))

(assert (=> b!4644219 m!5508515))

(declare-fun m!5508537 () Bool)

(assert (=> b!4644219 m!5508537))

(declare-fun m!5508539 () Bool)

(assert (=> b!4644219 m!5508539))

(assert (=> b!4644219 m!5508539))

(assert (=> b!4644219 m!5508523))

(declare-fun m!5508541 () Bool)

(assert (=> b!4644219 m!5508541))

(assert (=> b!4644219 m!5508521))

(assert (=> b!4644219 m!5508535))

(declare-fun m!5508543 () Bool)

(assert (=> b!4644219 m!5508543))

(assert (=> b!4644219 m!5508513))

(assert (=> b!4644219 m!5508517))

(declare-fun m!5508545 () Bool)

(assert (=> b!4644219 m!5508545))

(declare-fun m!5508547 () Bool)

(assert (=> b!4644215 m!5508547))

(declare-fun m!5508549 () Bool)

(assert (=> b!4644215 m!5508549))

(declare-fun m!5508551 () Bool)

(assert (=> b!4644215 m!5508551))

(declare-fun m!5508553 () Bool)

(assert (=> b!4644215 m!5508553))

(declare-fun m!5508555 () Bool)

(assert (=> b!4644215 m!5508555))

(declare-fun m!5508557 () Bool)

(assert (=> b!4644215 m!5508557))

(declare-fun m!5508559 () Bool)

(assert (=> b!4644215 m!5508559))

(declare-fun m!5508561 () Bool)

(assert (=> b!4644215 m!5508561))

(declare-fun m!5508563 () Bool)

(assert (=> b!4644215 m!5508563))

(declare-fun m!5508565 () Bool)

(assert (=> b!4644215 m!5508565))

(declare-fun m!5508567 () Bool)

(assert (=> b!4644215 m!5508567))

(declare-fun m!5508569 () Bool)

(assert (=> b!4644215 m!5508569))

(assert (=> b!4644215 m!5508557))

(declare-fun m!5508571 () Bool)

(assert (=> b!4644209 m!5508571))

(assert (=> b!4644209 m!5508571))

(declare-fun m!5508573 () Bool)

(assert (=> b!4644209 m!5508573))

(declare-fun m!5508575 () Bool)

(assert (=> b!4644209 m!5508575))

(declare-fun m!5508577 () Bool)

(assert (=> b!4644209 m!5508577))

(check-sat (not b!4644227) (not b!4644221) (not b!4644228) (not b!4644208) tp_is_empty!29733 (not b!4644207) (not b!4644211) (not b!4644215) (not b!4644214) (not b!4644209) (not b!4644210) (not b!4644224) (not b!4644220) (not b!4644218) (not b!4644225) (not b!4644219) (not b!4644226) tp_is_empty!29735 (not b!4644223) (not start!467300) (not b!4644212) (not b!4644216) (not b!4644217))
(check-sat)
(get-model)

(declare-fun d!1464459 () Bool)

(assert (=> d!1464459 true))

(assert (=> d!1464459 true))

(declare-fun lambda!197069 () Int)

(declare-fun forall!10967 (List!51936 Int) Bool)

(assert (=> d!1464459 (= (allKeysSameHash!1464 newBucket!224 hash!414 hashF!1389) (forall!10967 newBucket!224 lambda!197069))))

(declare-fun bs!1035635 () Bool)

(assert (= bs!1035635 d!1464459))

(declare-fun m!5508597 () Bool)

(assert (=> bs!1035635 m!5508597))

(assert (=> b!4644220 d!1464459))

(declare-fun d!1464463 () Bool)

(declare-fun res!1951112 () Bool)

(declare-fun e!2897200 () Bool)

(assert (=> d!1464463 (=> res!1951112 e!2897200)))

(assert (=> d!1464463 (= res!1951112 (not ((_ is Cons!51812) oldBucket!40)))))

(assert (=> d!1464463 (= (noDuplicateKeys!1610 oldBucket!40) e!2897200)))

(declare-fun b!4644240 () Bool)

(declare-fun e!2897201 () Bool)

(assert (=> b!4644240 (= e!2897200 e!2897201)))

(declare-fun res!1951113 () Bool)

(assert (=> b!4644240 (=> (not res!1951113) (not e!2897201))))

(assert (=> b!4644240 (= res!1951113 (not (containsKey!2668 (t!359030 oldBucket!40) (_1!29737 (h!57932 oldBucket!40)))))))

(declare-fun b!4644241 () Bool)

(assert (=> b!4644241 (= e!2897201 (noDuplicateKeys!1610 (t!359030 oldBucket!40)))))

(assert (= (and d!1464463 (not res!1951112)) b!4644240))

(assert (= (and b!4644240 res!1951113) b!4644241))

(declare-fun m!5508599 () Bool)

(assert (=> b!4644240 m!5508599))

(declare-fun m!5508601 () Bool)

(assert (=> b!4644241 m!5508601))

(assert (=> start!467300 d!1464463))

(declare-fun d!1464465 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8970 (List!51936) (InoxSet tuple2!52886))

(assert (=> d!1464465 (= (eq!901 lt!1808652 lt!1808632) (= (content!8970 (toList!5165 lt!1808652)) (content!8970 (toList!5165 lt!1808632))))))

(declare-fun bs!1035636 () Bool)

(assert (= bs!1035636 d!1464465))

(declare-fun m!5508609 () Bool)

(assert (=> bs!1035636 m!5508609))

(declare-fun m!5508617 () Bool)

(assert (=> bs!1035636 m!5508617))

(assert (=> b!4644210 d!1464465))

(declare-fun d!1464469 () Bool)

(declare-fun hash!3724 (Hashable!6007 K!13175) (_ BitVec 64))

(assert (=> d!1464469 (= (hash!3721 hashF!1389 key!4968) (hash!3724 hashF!1389 key!4968))))

(declare-fun bs!1035637 () Bool)

(assert (= bs!1035637 d!1464469))

(declare-fun m!5508643 () Bool)

(assert (=> bs!1035637 m!5508643))

(assert (=> b!4644221 d!1464469))

(declare-fun bs!1035678 () Bool)

(declare-fun b!4644299 () Bool)

(assert (= bs!1035678 (and b!4644299 d!1464459)))

(declare-fun lambda!197141 () Int)

(assert (=> bs!1035678 (not (= lambda!197141 lambda!197069))))

(assert (=> b!4644299 true))

(declare-fun bs!1035679 () Bool)

(declare-fun b!4644297 () Bool)

(assert (= bs!1035679 (and b!4644297 d!1464459)))

(declare-fun lambda!197142 () Int)

(assert (=> bs!1035679 (not (= lambda!197142 lambda!197069))))

(declare-fun bs!1035680 () Bool)

(assert (= bs!1035680 (and b!4644297 b!4644299)))

(assert (=> bs!1035680 (= lambda!197142 lambda!197141)))

(assert (=> b!4644297 true))

(declare-fun lambda!197143 () Int)

(assert (=> bs!1035679 (not (= lambda!197143 lambda!197069))))

(declare-fun lt!1808854 () ListMap!4489)

(assert (=> bs!1035680 (= (= lt!1808854 lt!1808624) (= lambda!197143 lambda!197141))))

(assert (=> b!4644297 (= (= lt!1808854 lt!1808624) (= lambda!197143 lambda!197142))))

(assert (=> b!4644297 true))

(declare-fun bs!1035681 () Bool)

(declare-fun d!1464475 () Bool)

(assert (= bs!1035681 (and d!1464475 d!1464459)))

(declare-fun lambda!197144 () Int)

(assert (=> bs!1035681 (not (= lambda!197144 lambda!197069))))

(declare-fun bs!1035682 () Bool)

(assert (= bs!1035682 (and d!1464475 b!4644299)))

(declare-fun lt!1808846 () ListMap!4489)

(assert (=> bs!1035682 (= (= lt!1808846 lt!1808624) (= lambda!197144 lambda!197141))))

(declare-fun bs!1035683 () Bool)

(assert (= bs!1035683 (and d!1464475 b!4644297)))

(assert (=> bs!1035683 (= (= lt!1808846 lt!1808624) (= lambda!197144 lambda!197142))))

(assert (=> bs!1035683 (= (= lt!1808846 lt!1808854) (= lambda!197144 lambda!197143))))

(assert (=> d!1464475 true))

(declare-fun b!4644298 () Bool)

(declare-fun e!2897235 () Bool)

(declare-fun invariantList!1274 (List!51936) Bool)

(assert (=> b!4644298 (= e!2897235 (invariantList!1274 (toList!5165 lt!1808846)))))

(declare-fun e!2897233 () ListMap!4489)

(assert (=> b!4644299 (= e!2897233 lt!1808624)))

(declare-fun lt!1808842 () Unit!116009)

(declare-fun call!324266 () Unit!116009)

(assert (=> b!4644299 (= lt!1808842 call!324266)))

(declare-fun call!324265 () Bool)

(assert (=> b!4644299 call!324265))

(declare-fun lt!1808841 () Unit!116009)

(assert (=> b!4644299 (= lt!1808841 lt!1808842)))

(declare-fun call!324267 () Bool)

(assert (=> b!4644299 call!324267))

(declare-fun lt!1808840 () Unit!116009)

(declare-fun Unit!116031 () Unit!116009)

(assert (=> b!4644299 (= lt!1808840 Unit!116031)))

(declare-fun bm!324260 () Bool)

(declare-fun lt!1808839 () ListMap!4489)

(declare-fun c!794671 () Bool)

(assert (=> bm!324260 (= call!324267 (forall!10967 (ite c!794671 (toList!5165 lt!1808624) (toList!5165 lt!1808839)) (ite c!794671 lambda!197141 lambda!197143)))))

(declare-fun b!4644300 () Bool)

(declare-fun res!1951148 () Bool)

(assert (=> b!4644300 (=> (not res!1951148) (not e!2897235))))

(assert (=> b!4644300 (= res!1951148 (forall!10967 (toList!5165 lt!1808624) lambda!197144))))

(declare-fun b!4644301 () Bool)

(declare-fun e!2897234 () Bool)

(assert (=> b!4644301 (= e!2897234 call!324265)))

(assert (=> d!1464475 e!2897235))

(declare-fun res!1951149 () Bool)

(assert (=> d!1464475 (=> (not res!1951149) (not e!2897235))))

(assert (=> d!1464475 (= res!1951149 (forall!10967 oldBucket!40 lambda!197144))))

(assert (=> d!1464475 (= lt!1808846 e!2897233)))

(assert (=> d!1464475 (= c!794671 ((_ is Nil!51812) oldBucket!40))))

(assert (=> d!1464475 (noDuplicateKeys!1610 oldBucket!40)))

(assert (=> d!1464475 (= (addToMapMapFromBucket!1069 oldBucket!40 lt!1808624) lt!1808846)))

(assert (=> b!4644297 (= e!2897233 lt!1808854)))

(assert (=> b!4644297 (= lt!1808839 (+!1960 lt!1808624 (h!57932 oldBucket!40)))))

(assert (=> b!4644297 (= lt!1808854 (addToMapMapFromBucket!1069 (t!359030 oldBucket!40) (+!1960 lt!1808624 (h!57932 oldBucket!40))))))

(declare-fun lt!1808843 () Unit!116009)

(assert (=> b!4644297 (= lt!1808843 call!324266)))

(assert (=> b!4644297 (forall!10967 (toList!5165 lt!1808624) lambda!197142)))

(declare-fun lt!1808859 () Unit!116009)

(assert (=> b!4644297 (= lt!1808859 lt!1808843)))

(assert (=> b!4644297 (forall!10967 (toList!5165 lt!1808839) lambda!197143)))

(declare-fun lt!1808848 () Unit!116009)

(declare-fun Unit!116034 () Unit!116009)

(assert (=> b!4644297 (= lt!1808848 Unit!116034)))

(assert (=> b!4644297 (forall!10967 (t!359030 oldBucket!40) lambda!197143)))

(declare-fun lt!1808858 () Unit!116009)

(declare-fun Unit!116035 () Unit!116009)

(assert (=> b!4644297 (= lt!1808858 Unit!116035)))

(declare-fun lt!1808851 () Unit!116009)

(declare-fun Unit!116036 () Unit!116009)

(assert (=> b!4644297 (= lt!1808851 Unit!116036)))

(declare-fun lt!1808845 () Unit!116009)

(declare-fun forallContained!3194 (List!51936 Int tuple2!52886) Unit!116009)

(assert (=> b!4644297 (= lt!1808845 (forallContained!3194 (toList!5165 lt!1808839) lambda!197143 (h!57932 oldBucket!40)))))

(assert (=> b!4644297 (contains!14963 lt!1808839 (_1!29737 (h!57932 oldBucket!40)))))

(declare-fun lt!1808857 () Unit!116009)

(declare-fun Unit!116037 () Unit!116009)

(assert (=> b!4644297 (= lt!1808857 Unit!116037)))

(assert (=> b!4644297 (contains!14963 lt!1808854 (_1!29737 (h!57932 oldBucket!40)))))

(declare-fun lt!1808844 () Unit!116009)

(declare-fun Unit!116038 () Unit!116009)

(assert (=> b!4644297 (= lt!1808844 Unit!116038)))

(assert (=> b!4644297 (forall!10967 oldBucket!40 lambda!197143)))

(declare-fun lt!1808852 () Unit!116009)

(declare-fun Unit!116039 () Unit!116009)

(assert (=> b!4644297 (= lt!1808852 Unit!116039)))

(assert (=> b!4644297 call!324267))

(declare-fun lt!1808855 () Unit!116009)

(declare-fun Unit!116040 () Unit!116009)

(assert (=> b!4644297 (= lt!1808855 Unit!116040)))

(declare-fun lt!1808853 () Unit!116009)

(declare-fun Unit!116041 () Unit!116009)

(assert (=> b!4644297 (= lt!1808853 Unit!116041)))

(declare-fun lt!1808847 () Unit!116009)

(declare-fun addForallContainsKeyThenBeforeAdding!575 (ListMap!4489 ListMap!4489 K!13175 V!13421) Unit!116009)

(assert (=> b!4644297 (= lt!1808847 (addForallContainsKeyThenBeforeAdding!575 lt!1808624 lt!1808854 (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40))))))

(assert (=> b!4644297 (forall!10967 (toList!5165 lt!1808624) lambda!197143)))

(declare-fun lt!1808849 () Unit!116009)

(assert (=> b!4644297 (= lt!1808849 lt!1808847)))

(assert (=> b!4644297 (forall!10967 (toList!5165 lt!1808624) lambda!197143)))

(declare-fun lt!1808850 () Unit!116009)

(declare-fun Unit!116042 () Unit!116009)

(assert (=> b!4644297 (= lt!1808850 Unit!116042)))

(declare-fun res!1951147 () Bool)

(assert (=> b!4644297 (= res!1951147 (forall!10967 oldBucket!40 lambda!197143))))

(assert (=> b!4644297 (=> (not res!1951147) (not e!2897234))))

(assert (=> b!4644297 e!2897234))

(declare-fun lt!1808856 () Unit!116009)

(declare-fun Unit!116043 () Unit!116009)

(assert (=> b!4644297 (= lt!1808856 Unit!116043)))

(declare-fun bm!324261 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!576 (ListMap!4489) Unit!116009)

(assert (=> bm!324261 (= call!324266 (lemmaContainsAllItsOwnKeys!576 lt!1808624))))

(declare-fun bm!324262 () Bool)

(assert (=> bm!324262 (= call!324265 (forall!10967 (toList!5165 lt!1808624) (ite c!794671 lambda!197141 lambda!197143)))))

(assert (= (and d!1464475 c!794671) b!4644299))

(assert (= (and d!1464475 (not c!794671)) b!4644297))

(assert (= (and b!4644297 res!1951147) b!4644301))

(assert (= (or b!4644299 b!4644297) bm!324261))

(assert (= (or b!4644299 b!4644297) bm!324260))

(assert (= (or b!4644299 b!4644301) bm!324262))

(assert (= (and d!1464475 res!1951149) b!4644300))

(assert (= (and b!4644300 res!1951148) b!4644298))

(declare-fun m!5508803 () Bool)

(assert (=> b!4644298 m!5508803))

(declare-fun m!5508805 () Bool)

(assert (=> bm!324262 m!5508805))

(declare-fun m!5508807 () Bool)

(assert (=> b!4644300 m!5508807))

(declare-fun m!5508809 () Bool)

(assert (=> bm!324260 m!5508809))

(declare-fun m!5508811 () Bool)

(assert (=> bm!324261 m!5508811))

(declare-fun m!5508813 () Bool)

(assert (=> d!1464475 m!5508813))

(assert (=> d!1464475 m!5508499))

(declare-fun m!5508815 () Bool)

(assert (=> b!4644297 m!5508815))

(declare-fun m!5508817 () Bool)

(assert (=> b!4644297 m!5508817))

(declare-fun m!5508819 () Bool)

(assert (=> b!4644297 m!5508819))

(declare-fun m!5508821 () Bool)

(assert (=> b!4644297 m!5508821))

(assert (=> b!4644297 m!5508817))

(declare-fun m!5508823 () Bool)

(assert (=> b!4644297 m!5508823))

(assert (=> b!4644297 m!5508815))

(declare-fun m!5508825 () Bool)

(assert (=> b!4644297 m!5508825))

(declare-fun m!5508827 () Bool)

(assert (=> b!4644297 m!5508827))

(assert (=> b!4644297 m!5508823))

(declare-fun m!5508829 () Bool)

(assert (=> b!4644297 m!5508829))

(declare-fun m!5508831 () Bool)

(assert (=> b!4644297 m!5508831))

(declare-fun m!5508833 () Bool)

(assert (=> b!4644297 m!5508833))

(declare-fun m!5508835 () Bool)

(assert (=> b!4644297 m!5508835))

(assert (=> b!4644211 d!1464475))

(declare-fun bs!1035688 () Bool)

(declare-fun d!1464495 () Bool)

(assert (= bs!1035688 (and d!1464495 b!4644215)))

(declare-fun lambda!197150 () Int)

(assert (=> bs!1035688 (= lambda!197150 lambda!197066)))

(declare-fun lt!1808872 () ListMap!4489)

(assert (=> d!1464495 (invariantList!1274 (toList!5165 lt!1808872))))

(declare-fun e!2897239 () ListMap!4489)

(assert (=> d!1464495 (= lt!1808872 e!2897239)))

(declare-fun c!794674 () Bool)

(assert (=> d!1464495 (= c!794674 ((_ is Cons!51813) Nil!51813))))

(declare-fun forall!10968 (List!51937 Int) Bool)

(assert (=> d!1464495 (forall!10968 Nil!51813 lambda!197150)))

(assert (=> d!1464495 (= (extractMap!1666 Nil!51813) lt!1808872)))

(declare-fun b!4644310 () Bool)

(assert (=> b!4644310 (= e!2897239 (addToMapMapFromBucket!1069 (_2!29738 (h!57933 Nil!51813)) (extractMap!1666 (t!359031 Nil!51813))))))

(declare-fun b!4644311 () Bool)

(assert (=> b!4644311 (= e!2897239 (ListMap!4490 Nil!51812))))

(assert (= (and d!1464495 c!794674) b!4644310))

(assert (= (and d!1464495 (not c!794674)) b!4644311))

(declare-fun m!5508863 () Bool)

(assert (=> d!1464495 m!5508863))

(declare-fun m!5508865 () Bool)

(assert (=> d!1464495 m!5508865))

(declare-fun m!5508867 () Bool)

(assert (=> b!4644310 m!5508867))

(assert (=> b!4644310 m!5508867))

(declare-fun m!5508869 () Bool)

(assert (=> b!4644310 m!5508869))

(assert (=> b!4644211 d!1464495))

(declare-fun d!1464507 () Bool)

(declare-fun res!1951152 () Bool)

(declare-fun e!2897240 () Bool)

(assert (=> d!1464507 (=> res!1951152 e!2897240)))

(assert (=> d!1464507 (= res!1951152 (not ((_ is Cons!51812) newBucket!224)))))

(assert (=> d!1464507 (= (noDuplicateKeys!1610 newBucket!224) e!2897240)))

(declare-fun b!4644312 () Bool)

(declare-fun e!2897241 () Bool)

(assert (=> b!4644312 (= e!2897240 e!2897241)))

(declare-fun res!1951153 () Bool)

(assert (=> b!4644312 (=> (not res!1951153) (not e!2897241))))

(assert (=> b!4644312 (= res!1951153 (not (containsKey!2668 (t!359030 newBucket!224) (_1!29737 (h!57932 newBucket!224)))))))

(declare-fun b!4644313 () Bool)

(assert (=> b!4644313 (= e!2897241 (noDuplicateKeys!1610 (t!359030 newBucket!224)))))

(assert (= (and d!1464507 (not res!1951152)) b!4644312))

(assert (= (and b!4644312 res!1951153) b!4644313))

(declare-fun m!5508871 () Bool)

(assert (=> b!4644312 m!5508871))

(declare-fun m!5508873 () Bool)

(assert (=> b!4644313 m!5508873))

(assert (=> b!4644228 d!1464507))

(declare-fun d!1464509 () Bool)

(assert (=> d!1464509 (= (eq!901 lt!1808647 (+!1960 lt!1808639 (h!57932 oldBucket!40))) (= (content!8970 (toList!5165 lt!1808647)) (content!8970 (toList!5165 (+!1960 lt!1808639 (h!57932 oldBucket!40))))))))

(declare-fun bs!1035690 () Bool)

(assert (= bs!1035690 d!1464509))

(declare-fun m!5508875 () Bool)

(assert (=> bs!1035690 m!5508875))

(declare-fun m!5508877 () Bool)

(assert (=> bs!1035690 m!5508877))

(assert (=> b!4644207 d!1464509))

(declare-fun d!1464511 () Bool)

(declare-fun e!2897244 () Bool)

(assert (=> d!1464511 e!2897244))

(declare-fun res!1951158 () Bool)

(assert (=> d!1464511 (=> (not res!1951158) (not e!2897244))))

(declare-fun lt!1808884 () ListMap!4489)

(assert (=> d!1464511 (= res!1951158 (contains!14963 lt!1808884 (_1!29737 (h!57932 oldBucket!40))))))

(declare-fun lt!1808883 () List!51936)

(assert (=> d!1464511 (= lt!1808884 (ListMap!4490 lt!1808883))))

(declare-fun lt!1808885 () Unit!116009)

(declare-fun lt!1808882 () Unit!116009)

(assert (=> d!1464511 (= lt!1808885 lt!1808882)))

(declare-datatypes ((Option!11792 0))(
  ( (None!11791) (Some!11791 (v!46041 V!13421)) )
))
(declare-fun getValueByKey!1580 (List!51936 K!13175) Option!11792)

(assert (=> d!1464511 (= (getValueByKey!1580 lt!1808883 (_1!29737 (h!57932 oldBucket!40))) (Some!11791 (_2!29737 (h!57932 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!910 (List!51936 K!13175 V!13421) Unit!116009)

(assert (=> d!1464511 (= lt!1808882 (lemmaContainsTupThenGetReturnValue!910 lt!1808883 (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!418 (List!51936 K!13175 V!13421) List!51936)

(assert (=> d!1464511 (= lt!1808883 (insertNoDuplicatedKeys!418 (toList!5165 lt!1808639) (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40))))))

(assert (=> d!1464511 (= (+!1960 lt!1808639 (h!57932 oldBucket!40)) lt!1808884)))

(declare-fun b!4644318 () Bool)

(declare-fun res!1951159 () Bool)

(assert (=> b!4644318 (=> (not res!1951159) (not e!2897244))))

(assert (=> b!4644318 (= res!1951159 (= (getValueByKey!1580 (toList!5165 lt!1808884) (_1!29737 (h!57932 oldBucket!40))) (Some!11791 (_2!29737 (h!57932 oldBucket!40)))))))

(declare-fun b!4644319 () Bool)

(declare-fun contains!14967 (List!51936 tuple2!52886) Bool)

(assert (=> b!4644319 (= e!2897244 (contains!14967 (toList!5165 lt!1808884) (h!57932 oldBucket!40)))))

(assert (= (and d!1464511 res!1951158) b!4644318))

(assert (= (and b!4644318 res!1951159) b!4644319))

(declare-fun m!5508879 () Bool)

(assert (=> d!1464511 m!5508879))

(declare-fun m!5508881 () Bool)

(assert (=> d!1464511 m!5508881))

(declare-fun m!5508883 () Bool)

(assert (=> d!1464511 m!5508883))

(declare-fun m!5508885 () Bool)

(assert (=> d!1464511 m!5508885))

(declare-fun m!5508887 () Bool)

(assert (=> b!4644318 m!5508887))

(declare-fun m!5508889 () Bool)

(assert (=> b!4644319 m!5508889))

(assert (=> b!4644207 d!1464511))

(declare-fun d!1464513 () Bool)

(assert (=> d!1464513 (= (eq!901 lt!1808647 lt!1808629) (= (content!8970 (toList!5165 lt!1808647)) (content!8970 (toList!5165 lt!1808629))))))

(declare-fun bs!1035691 () Bool)

(assert (= bs!1035691 d!1464513))

(assert (=> bs!1035691 m!5508875))

(declare-fun m!5508891 () Bool)

(assert (=> bs!1035691 m!5508891))

(assert (=> b!4644218 d!1464513))

(declare-fun d!1464515 () Bool)

(assert (=> d!1464515 (= (eq!901 lt!1808629 lt!1808649) (= (content!8970 (toList!5165 lt!1808629)) (content!8970 (toList!5165 lt!1808649))))))

(declare-fun bs!1035692 () Bool)

(assert (= bs!1035692 d!1464515))

(assert (=> bs!1035692 m!5508891))

(declare-fun m!5508893 () Bool)

(assert (=> bs!1035692 m!5508893))

(assert (=> b!4644208 d!1464515))

(declare-fun d!1464517 () Bool)

(assert (=> d!1464517 (= (eq!901 lt!1808633 lt!1808629) (= (content!8970 (toList!5165 lt!1808633)) (content!8970 (toList!5165 lt!1808629))))))

(declare-fun bs!1035693 () Bool)

(assert (= bs!1035693 d!1464517))

(declare-fun m!5508895 () Bool)

(assert (=> bs!1035693 m!5508895))

(assert (=> bs!1035693 m!5508891))

(assert (=> b!4644208 d!1464517))

(declare-fun d!1464519 () Bool)

(declare-fun e!2897265 () Bool)

(assert (=> d!1464519 e!2897265))

(declare-fun res!1951171 () Bool)

(assert (=> d!1464519 (=> (not res!1951171) (not e!2897265))))

(declare-fun lt!1808912 () ListMap!4489)

(assert (=> d!1464519 (= res!1951171 (not (contains!14963 lt!1808912 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!305 (List!51936 K!13175) List!51936)

(assert (=> d!1464519 (= lt!1808912 (ListMap!4490 (removePresrvNoDuplicatedKeys!305 (toList!5165 lt!1808652) key!4968)))))

(assert (=> d!1464519 (= (-!614 lt!1808652 key!4968) lt!1808912)))

(declare-fun b!4644349 () Bool)

(declare-datatypes ((List!51939 0))(
  ( (Nil!51815) (Cons!51815 (h!57937 K!13175) (t!359035 List!51939)) )
))
(declare-fun content!8971 (List!51939) (InoxSet K!13175))

(declare-fun keys!18328 (ListMap!4489) List!51939)

(assert (=> b!4644349 (= e!2897265 (= ((_ map and) (content!8971 (keys!18328 lt!1808652)) ((_ map not) (store ((as const (Array K!13175 Bool)) false) key!4968 true))) (content!8971 (keys!18328 lt!1808912))))))

(assert (= (and d!1464519 res!1951171) b!4644349))

(declare-fun m!5508911 () Bool)

(assert (=> d!1464519 m!5508911))

(declare-fun m!5508915 () Bool)

(assert (=> d!1464519 m!5508915))

(declare-fun m!5508917 () Bool)

(assert (=> b!4644349 m!5508917))

(declare-fun m!5508921 () Bool)

(assert (=> b!4644349 m!5508921))

(declare-fun m!5508923 () Bool)

(assert (=> b!4644349 m!5508923))

(assert (=> b!4644349 m!5508921))

(declare-fun m!5508925 () Bool)

(assert (=> b!4644349 m!5508925))

(assert (=> b!4644349 m!5508925))

(declare-fun m!5508927 () Bool)

(assert (=> b!4644349 m!5508927))

(assert (=> b!4644208 d!1464519))

(declare-fun d!1464523 () Bool)

(assert (=> d!1464523 (eq!901 (-!614 lt!1808632 key!4968) (-!614 lt!1808652 key!4968))))

(declare-fun lt!1808936 () Unit!116009)

(declare-fun choose!31879 (ListMap!4489 ListMap!4489 K!13175) Unit!116009)

(assert (=> d!1464523 (= lt!1808936 (choose!31879 lt!1808632 lt!1808652 key!4968))))

(assert (=> d!1464523 (eq!901 lt!1808632 lt!1808652)))

(assert (=> d!1464523 (= (lemmaRemovePreservesEq!62 lt!1808632 lt!1808652 key!4968) lt!1808936)))

(declare-fun bs!1035723 () Bool)

(assert (= bs!1035723 d!1464523))

(assert (=> bs!1035723 m!5508449))

(assert (=> bs!1035723 m!5508489))

(assert (=> bs!1035723 m!5508449))

(assert (=> bs!1035723 m!5508489))

(declare-fun m!5508933 () Bool)

(assert (=> bs!1035723 m!5508933))

(declare-fun m!5508935 () Bool)

(assert (=> bs!1035723 m!5508935))

(declare-fun m!5508937 () Bool)

(assert (=> bs!1035723 m!5508937))

(assert (=> b!4644208 d!1464523))

(declare-fun d!1464527 () Bool)

(assert (=> d!1464527 (eq!901 (addToMapMapFromBucket!1069 (Cons!51812 lt!1808655 lt!1808650) (ListMap!4490 Nil!51812)) (+!1960 (addToMapMapFromBucket!1069 lt!1808650 (ListMap!4490 Nil!51812)) lt!1808655))))

(declare-fun lt!1808966 () Unit!116009)

(declare-fun choose!31880 (tuple2!52886 List!51936 ListMap!4489) Unit!116009)

(assert (=> d!1464527 (= lt!1808966 (choose!31880 lt!1808655 lt!1808650 (ListMap!4490 Nil!51812)))))

(assert (=> d!1464527 (noDuplicateKeys!1610 lt!1808650)))

(assert (=> d!1464527 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!152 lt!1808655 lt!1808650 (ListMap!4490 Nil!51812)) lt!1808966)))

(declare-fun bs!1035759 () Bool)

(assert (= bs!1035759 d!1464527))

(assert (=> bs!1035759 m!5508515))

(assert (=> bs!1035759 m!5508517))

(assert (=> bs!1035759 m!5508519))

(assert (=> bs!1035759 m!5508513))

(declare-fun m!5509003 () Bool)

(assert (=> bs!1035759 m!5509003))

(assert (=> bs!1035759 m!5508513))

(assert (=> bs!1035759 m!5508517))

(assert (=> bs!1035759 m!5508515))

(declare-fun m!5509005 () Bool)

(assert (=> bs!1035759 m!5509005))

(assert (=> b!4644219 d!1464527))

(declare-fun bs!1035774 () Bool)

(declare-fun d!1464541 () Bool)

(assert (= bs!1035774 (and d!1464541 b!4644215)))

(declare-fun lambda!197163 () Int)

(assert (=> bs!1035774 (= lambda!197163 lambda!197066)))

(declare-fun bs!1035775 () Bool)

(assert (= bs!1035775 (and d!1464541 d!1464495)))

(assert (=> bs!1035775 (= lambda!197163 lambda!197150)))

(assert (=> d!1464541 (contains!14963 (extractMap!1666 (toList!5166 (ListLongMap!3736 lt!1808648))) key!4968)))

(declare-fun lt!1808972 () Unit!116009)

(declare-fun choose!31881 (ListLongMap!3735 K!13175 Hashable!6007) Unit!116009)

(assert (=> d!1464541 (= lt!1808972 (choose!31881 (ListLongMap!3736 lt!1808648) key!4968 hashF!1389))))

(assert (=> d!1464541 (forall!10968 (toList!5166 (ListLongMap!3736 lt!1808648)) lambda!197163)))

(assert (=> d!1464541 (= (lemmaListContainsThenExtractedMapContains!388 (ListLongMap!3736 lt!1808648) key!4968 hashF!1389) lt!1808972)))

(declare-fun bs!1035776 () Bool)

(assert (= bs!1035776 d!1464541))

(declare-fun m!5509047 () Bool)

(assert (=> bs!1035776 m!5509047))

(assert (=> bs!1035776 m!5509047))

(declare-fun m!5509049 () Bool)

(assert (=> bs!1035776 m!5509049))

(declare-fun m!5509051 () Bool)

(assert (=> bs!1035776 m!5509051))

(declare-fun m!5509053 () Bool)

(assert (=> bs!1035776 m!5509053))

(assert (=> b!4644219 d!1464541))

(declare-fun bs!1035777 () Bool)

(declare-fun d!1464549 () Bool)

(assert (= bs!1035777 (and d!1464549 b!4644215)))

(declare-fun lambda!197164 () Int)

(assert (=> bs!1035777 (= lambda!197164 lambda!197066)))

(declare-fun bs!1035778 () Bool)

(assert (= bs!1035778 (and d!1464549 d!1464495)))

(assert (=> bs!1035778 (= lambda!197164 lambda!197150)))

(declare-fun bs!1035779 () Bool)

(assert (= bs!1035779 (and d!1464549 d!1464541)))

(assert (=> bs!1035779 (= lambda!197164 lambda!197163)))

(declare-fun lt!1808973 () ListMap!4489)

(assert (=> d!1464549 (invariantList!1274 (toList!5165 lt!1808973))))

(declare-fun e!2897287 () ListMap!4489)

(assert (=> d!1464549 (= lt!1808973 e!2897287)))

(declare-fun c!794694 () Bool)

(assert (=> d!1464549 (= c!794694 ((_ is Cons!51813) lt!1808648))))

(assert (=> d!1464549 (forall!10968 lt!1808648 lambda!197164)))

(assert (=> d!1464549 (= (extractMap!1666 lt!1808648) lt!1808973)))

(declare-fun b!4644384 () Bool)

(assert (=> b!4644384 (= e!2897287 (addToMapMapFromBucket!1069 (_2!29738 (h!57933 lt!1808648)) (extractMap!1666 (t!359031 lt!1808648))))))

(declare-fun b!4644385 () Bool)

(assert (=> b!4644385 (= e!2897287 (ListMap!4490 Nil!51812))))

(assert (= (and d!1464549 c!794694) b!4644384))

(assert (= (and d!1464549 (not c!794694)) b!4644385))

(declare-fun m!5509055 () Bool)

(assert (=> d!1464549 m!5509055))

(declare-fun m!5509057 () Bool)

(assert (=> d!1464549 m!5509057))

(declare-fun m!5509059 () Bool)

(assert (=> b!4644384 m!5509059))

(assert (=> b!4644384 m!5509059))

(declare-fun m!5509061 () Bool)

(assert (=> b!4644384 m!5509061))

(assert (=> b!4644219 d!1464549))

(declare-fun d!1464551 () Bool)

(assert (=> d!1464551 (= (head!9720 oldBucket!40) (h!57932 oldBucket!40))))

(assert (=> b!4644219 d!1464551))

(declare-fun bs!1035782 () Bool)

(declare-fun d!1464553 () Bool)

(assert (= bs!1035782 (and d!1464553 b!4644215)))

(declare-fun lambda!197168 () Int)

(assert (=> bs!1035782 (= lambda!197168 lambda!197066)))

(declare-fun bs!1035784 () Bool)

(assert (= bs!1035784 (and d!1464553 d!1464495)))

(assert (=> bs!1035784 (= lambda!197168 lambda!197150)))

(declare-fun bs!1035786 () Bool)

(assert (= bs!1035786 (and d!1464553 d!1464541)))

(assert (=> bs!1035786 (= lambda!197168 lambda!197163)))

(declare-fun bs!1035788 () Bool)

(assert (= bs!1035788 (and d!1464553 d!1464549)))

(assert (=> bs!1035788 (= lambda!197168 lambda!197164)))

(declare-fun lt!1808974 () ListMap!4489)

(assert (=> d!1464553 (invariantList!1274 (toList!5165 lt!1808974))))

(declare-fun e!2897288 () ListMap!4489)

(assert (=> d!1464553 (= lt!1808974 e!2897288)))

(declare-fun c!794695 () Bool)

(assert (=> d!1464553 (= c!794695 ((_ is Cons!51813) (Cons!51813 (tuple2!52889 hash!414 lt!1808631) Nil!51813)))))

(assert (=> d!1464553 (forall!10968 (Cons!51813 (tuple2!52889 hash!414 lt!1808631) Nil!51813) lambda!197168)))

(assert (=> d!1464553 (= (extractMap!1666 (Cons!51813 (tuple2!52889 hash!414 lt!1808631) Nil!51813)) lt!1808974)))

(declare-fun b!4644390 () Bool)

(assert (=> b!4644390 (= e!2897288 (addToMapMapFromBucket!1069 (_2!29738 (h!57933 (Cons!51813 (tuple2!52889 hash!414 lt!1808631) Nil!51813))) (extractMap!1666 (t!359031 (Cons!51813 (tuple2!52889 hash!414 lt!1808631) Nil!51813)))))))

(declare-fun b!4644391 () Bool)

(assert (=> b!4644391 (= e!2897288 (ListMap!4490 Nil!51812))))

(assert (= (and d!1464553 c!794695) b!4644390))

(assert (= (and d!1464553 (not c!794695)) b!4644391))

(declare-fun m!5509063 () Bool)

(assert (=> d!1464553 m!5509063))

(declare-fun m!5509065 () Bool)

(assert (=> d!1464553 m!5509065))

(declare-fun m!5509067 () Bool)

(assert (=> b!4644390 m!5509067))

(assert (=> b!4644390 m!5509067))

(declare-fun m!5509069 () Bool)

(assert (=> b!4644390 m!5509069))

(assert (=> b!4644219 d!1464553))

(declare-fun d!1464555 () Bool)

(assert (=> d!1464555 (= (head!9720 newBucket!224) (h!57932 newBucket!224))))

(assert (=> b!4644219 d!1464555))

(declare-fun d!1464557 () Bool)

(declare-fun e!2897289 () Bool)

(assert (=> d!1464557 e!2897289))

(declare-fun res!1951186 () Bool)

(assert (=> d!1464557 (=> (not res!1951186) (not e!2897289))))

(declare-fun lt!1808977 () ListMap!4489)

(assert (=> d!1464557 (= res!1951186 (contains!14963 lt!1808977 (_1!29737 lt!1808628)))))

(declare-fun lt!1808976 () List!51936)

(assert (=> d!1464557 (= lt!1808977 (ListMap!4490 lt!1808976))))

(declare-fun lt!1808978 () Unit!116009)

(declare-fun lt!1808975 () Unit!116009)

(assert (=> d!1464557 (= lt!1808978 lt!1808975)))

(assert (=> d!1464557 (= (getValueByKey!1580 lt!1808976 (_1!29737 lt!1808628)) (Some!11791 (_2!29737 lt!1808628)))))

(assert (=> d!1464557 (= lt!1808975 (lemmaContainsTupThenGetReturnValue!910 lt!1808976 (_1!29737 lt!1808628) (_2!29737 lt!1808628)))))

(assert (=> d!1464557 (= lt!1808976 (insertNoDuplicatedKeys!418 (toList!5165 (addToMapMapFromBucket!1069 lt!1808631 (ListMap!4490 Nil!51812))) (_1!29737 lt!1808628) (_2!29737 lt!1808628)))))

(assert (=> d!1464557 (= (+!1960 (addToMapMapFromBucket!1069 lt!1808631 (ListMap!4490 Nil!51812)) lt!1808628) lt!1808977)))

(declare-fun b!4644392 () Bool)

(declare-fun res!1951187 () Bool)

(assert (=> b!4644392 (=> (not res!1951187) (not e!2897289))))

(assert (=> b!4644392 (= res!1951187 (= (getValueByKey!1580 (toList!5165 lt!1808977) (_1!29737 lt!1808628)) (Some!11791 (_2!29737 lt!1808628))))))

(declare-fun b!4644393 () Bool)

(assert (=> b!4644393 (= e!2897289 (contains!14967 (toList!5165 lt!1808977) lt!1808628))))

(assert (= (and d!1464557 res!1951186) b!4644392))

(assert (= (and b!4644392 res!1951187) b!4644393))

(declare-fun m!5509071 () Bool)

(assert (=> d!1464557 m!5509071))

(declare-fun m!5509073 () Bool)

(assert (=> d!1464557 m!5509073))

(declare-fun m!5509075 () Bool)

(assert (=> d!1464557 m!5509075))

(declare-fun m!5509079 () Bool)

(assert (=> d!1464557 m!5509079))

(declare-fun m!5509081 () Bool)

(assert (=> b!4644392 m!5509081))

(declare-fun m!5509083 () Bool)

(assert (=> b!4644393 m!5509083))

(assert (=> b!4644219 d!1464557))

(declare-fun d!1464561 () Bool)

(assert (=> d!1464561 (eq!901 (addToMapMapFromBucket!1069 (Cons!51812 lt!1808628 lt!1808631) (ListMap!4490 Nil!51812)) (+!1960 (addToMapMapFromBucket!1069 lt!1808631 (ListMap!4490 Nil!51812)) lt!1808628))))

(declare-fun lt!1808987 () Unit!116009)

(assert (=> d!1464561 (= lt!1808987 (choose!31880 lt!1808628 lt!1808631 (ListMap!4490 Nil!51812)))))

(assert (=> d!1464561 (noDuplicateKeys!1610 lt!1808631)))

(assert (=> d!1464561 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!152 lt!1808628 lt!1808631 (ListMap!4490 Nil!51812)) lt!1808987)))

(declare-fun bs!1035801 () Bool)

(assert (= bs!1035801 d!1464561))

(assert (=> bs!1035801 m!5508521))

(assert (=> bs!1035801 m!5508523))

(assert (=> bs!1035801 m!5508525))

(assert (=> bs!1035801 m!5508539))

(declare-fun m!5509089 () Bool)

(assert (=> bs!1035801 m!5509089))

(assert (=> bs!1035801 m!5508539))

(assert (=> bs!1035801 m!5508523))

(assert (=> bs!1035801 m!5508521))

(declare-fun m!5509091 () Bool)

(assert (=> bs!1035801 m!5509091))

(assert (=> b!4644219 d!1464561))

(declare-fun d!1464565 () Bool)

(declare-fun e!2897296 () Bool)

(assert (=> d!1464565 e!2897296))

(declare-fun res!1951191 () Bool)

(assert (=> d!1464565 (=> (not res!1951191) (not e!2897296))))

(declare-fun lt!1808990 () ListMap!4489)

(assert (=> d!1464565 (= res!1951191 (contains!14963 lt!1808990 (_1!29737 (h!57932 oldBucket!40))))))

(declare-fun lt!1808989 () List!51936)

(assert (=> d!1464565 (= lt!1808990 (ListMap!4490 lt!1808989))))

(declare-fun lt!1808991 () Unit!116009)

(declare-fun lt!1808988 () Unit!116009)

(assert (=> d!1464565 (= lt!1808991 lt!1808988)))

(assert (=> d!1464565 (= (getValueByKey!1580 lt!1808989 (_1!29737 (h!57932 oldBucket!40))) (Some!11791 (_2!29737 (h!57932 oldBucket!40))))))

(assert (=> d!1464565 (= lt!1808988 (lemmaContainsTupThenGetReturnValue!910 lt!1808989 (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40))))))

(assert (=> d!1464565 (= lt!1808989 (insertNoDuplicatedKeys!418 (toList!5165 (extractMap!1666 (Cons!51813 (tuple2!52889 hash!414 lt!1808631) Nil!51813))) (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40))))))

(assert (=> d!1464565 (= (+!1960 (extractMap!1666 (Cons!51813 (tuple2!52889 hash!414 lt!1808631) Nil!51813)) (h!57932 oldBucket!40)) lt!1808990)))

(declare-fun b!4644403 () Bool)

(declare-fun res!1951192 () Bool)

(assert (=> b!4644403 (=> (not res!1951192) (not e!2897296))))

(assert (=> b!4644403 (= res!1951192 (= (getValueByKey!1580 (toList!5165 lt!1808990) (_1!29737 (h!57932 oldBucket!40))) (Some!11791 (_2!29737 (h!57932 oldBucket!40)))))))

(declare-fun b!4644404 () Bool)

(assert (=> b!4644404 (= e!2897296 (contains!14967 (toList!5165 lt!1808990) (h!57932 oldBucket!40)))))

(assert (= (and d!1464565 res!1951191) b!4644403))

(assert (= (and b!4644403 res!1951192) b!4644404))

(declare-fun m!5509113 () Bool)

(assert (=> d!1464565 m!5509113))

(declare-fun m!5509115 () Bool)

(assert (=> d!1464565 m!5509115))

(declare-fun m!5509117 () Bool)

(assert (=> d!1464565 m!5509117))

(declare-fun m!5509119 () Bool)

(assert (=> d!1464565 m!5509119))

(declare-fun m!5509121 () Bool)

(assert (=> b!4644403 m!5509121))

(declare-fun m!5509123 () Bool)

(assert (=> b!4644404 m!5509123))

(assert (=> b!4644219 d!1464565))

(declare-fun d!1464569 () Bool)

(assert (=> d!1464569 (= (eq!901 lt!1808652 (+!1960 (extractMap!1666 (Cons!51813 (tuple2!52889 hash!414 lt!1808631) Nil!51813)) (h!57932 oldBucket!40))) (= (content!8970 (toList!5165 lt!1808652)) (content!8970 (toList!5165 (+!1960 (extractMap!1666 (Cons!51813 (tuple2!52889 hash!414 lt!1808631) Nil!51813)) (h!57932 oldBucket!40))))))))

(declare-fun bs!1035803 () Bool)

(assert (= bs!1035803 d!1464569))

(assert (=> bs!1035803 m!5508609))

(declare-fun m!5509125 () Bool)

(assert (=> bs!1035803 m!5509125))

(assert (=> b!4644219 d!1464569))

(declare-fun d!1464571 () Bool)

(assert (=> d!1464571 (= (eq!901 (addToMapMapFromBucket!1069 (Cons!51812 lt!1808655 lt!1808650) (ListMap!4490 Nil!51812)) (+!1960 (addToMapMapFromBucket!1069 lt!1808650 (ListMap!4490 Nil!51812)) lt!1808655)) (= (content!8970 (toList!5165 (addToMapMapFromBucket!1069 (Cons!51812 lt!1808655 lt!1808650) (ListMap!4490 Nil!51812)))) (content!8970 (toList!5165 (+!1960 (addToMapMapFromBucket!1069 lt!1808650 (ListMap!4490 Nil!51812)) lt!1808655)))))))

(declare-fun bs!1035807 () Bool)

(assert (= bs!1035807 d!1464571))

(declare-fun m!5509127 () Bool)

(assert (=> bs!1035807 m!5509127))

(declare-fun m!5509129 () Bool)

(assert (=> bs!1035807 m!5509129))

(assert (=> b!4644219 d!1464571))

(declare-fun bs!1035810 () Bool)

(declare-fun b!4644409 () Bool)

(assert (= bs!1035810 (and b!4644409 d!1464459)))

(declare-fun lambda!197170 () Int)

(assert (=> bs!1035810 (not (= lambda!197170 lambda!197069))))

(declare-fun bs!1035811 () Bool)

(assert (= bs!1035811 (and b!4644409 d!1464475)))

(assert (=> bs!1035811 (= (= (ListMap!4490 Nil!51812) lt!1808846) (= lambda!197170 lambda!197144))))

(declare-fun bs!1035812 () Bool)

(assert (= bs!1035812 (and b!4644409 b!4644299)))

(assert (=> bs!1035812 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197170 lambda!197141))))

(declare-fun bs!1035813 () Bool)

(assert (= bs!1035813 (and b!4644409 b!4644297)))

(assert (=> bs!1035813 (= (= (ListMap!4490 Nil!51812) lt!1808854) (= lambda!197170 lambda!197143))))

(assert (=> bs!1035813 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197170 lambda!197142))))

(assert (=> b!4644409 true))

(declare-fun bs!1035815 () Bool)

(declare-fun b!4644407 () Bool)

(assert (= bs!1035815 (and b!4644407 b!4644409)))

(declare-fun lambda!197172 () Int)

(assert (=> bs!1035815 (= lambda!197172 lambda!197170)))

(declare-fun bs!1035817 () Bool)

(assert (= bs!1035817 (and b!4644407 d!1464459)))

(assert (=> bs!1035817 (not (= lambda!197172 lambda!197069))))

(declare-fun bs!1035819 () Bool)

(assert (= bs!1035819 (and b!4644407 d!1464475)))

(assert (=> bs!1035819 (= (= (ListMap!4490 Nil!51812) lt!1808846) (= lambda!197172 lambda!197144))))

(declare-fun bs!1035821 () Bool)

(assert (= bs!1035821 (and b!4644407 b!4644299)))

(assert (=> bs!1035821 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197172 lambda!197141))))

(declare-fun bs!1035823 () Bool)

(assert (= bs!1035823 (and b!4644407 b!4644297)))

(assert (=> bs!1035823 (= (= (ListMap!4490 Nil!51812) lt!1808854) (= lambda!197172 lambda!197143))))

(assert (=> bs!1035823 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197172 lambda!197142))))

(assert (=> b!4644407 true))

(declare-fun lt!1809008 () ListMap!4489)

(declare-fun lambda!197173 () Int)

(assert (=> bs!1035815 (= (= lt!1809008 (ListMap!4490 Nil!51812)) (= lambda!197173 lambda!197170))))

(assert (=> bs!1035817 (not (= lambda!197173 lambda!197069))))

(assert (=> bs!1035819 (= (= lt!1809008 lt!1808846) (= lambda!197173 lambda!197144))))

(assert (=> bs!1035821 (= (= lt!1809008 lt!1808624) (= lambda!197173 lambda!197141))))

(assert (=> bs!1035823 (= (= lt!1809008 lt!1808854) (= lambda!197173 lambda!197143))))

(assert (=> b!4644407 (= (= lt!1809008 (ListMap!4490 Nil!51812)) (= lambda!197173 lambda!197172))))

(assert (=> bs!1035823 (= (= lt!1809008 lt!1808624) (= lambda!197173 lambda!197142))))

(assert (=> b!4644407 true))

(declare-fun bs!1035832 () Bool)

(declare-fun d!1464573 () Bool)

(assert (= bs!1035832 (and d!1464573 b!4644409)))

(declare-fun lt!1809000 () ListMap!4489)

(declare-fun lambda!197175 () Int)

(assert (=> bs!1035832 (= (= lt!1809000 (ListMap!4490 Nil!51812)) (= lambda!197175 lambda!197170))))

(declare-fun bs!1035834 () Bool)

(assert (= bs!1035834 (and d!1464573 d!1464459)))

(assert (=> bs!1035834 (not (= lambda!197175 lambda!197069))))

(declare-fun bs!1035835 () Bool)

(assert (= bs!1035835 (and d!1464573 d!1464475)))

(assert (=> bs!1035835 (= (= lt!1809000 lt!1808846) (= lambda!197175 lambda!197144))))

(declare-fun bs!1035836 () Bool)

(assert (= bs!1035836 (and d!1464573 b!4644407)))

(assert (=> bs!1035836 (= (= lt!1809000 lt!1809008) (= lambda!197175 lambda!197173))))

(declare-fun bs!1035837 () Bool)

(assert (= bs!1035837 (and d!1464573 b!4644299)))

(assert (=> bs!1035837 (= (= lt!1809000 lt!1808624) (= lambda!197175 lambda!197141))))

(declare-fun bs!1035838 () Bool)

(assert (= bs!1035838 (and d!1464573 b!4644297)))

(assert (=> bs!1035838 (= (= lt!1809000 lt!1808854) (= lambda!197175 lambda!197143))))

(assert (=> bs!1035836 (= (= lt!1809000 (ListMap!4490 Nil!51812)) (= lambda!197175 lambda!197172))))

(assert (=> bs!1035838 (= (= lt!1809000 lt!1808624) (= lambda!197175 lambda!197142))))

(assert (=> d!1464573 true))

(declare-fun b!4644408 () Bool)

(declare-fun e!2897300 () Bool)

(assert (=> b!4644408 (= e!2897300 (invariantList!1274 (toList!5165 lt!1809000)))))

(declare-fun e!2897298 () ListMap!4489)

(assert (=> b!4644409 (= e!2897298 (ListMap!4490 Nil!51812))))

(declare-fun lt!1808996 () Unit!116009)

(declare-fun call!324279 () Unit!116009)

(assert (=> b!4644409 (= lt!1808996 call!324279)))

(declare-fun call!324278 () Bool)

(assert (=> b!4644409 call!324278))

(declare-fun lt!1808995 () Unit!116009)

(assert (=> b!4644409 (= lt!1808995 lt!1808996)))

(declare-fun call!324280 () Bool)

(assert (=> b!4644409 call!324280))

(declare-fun lt!1808994 () Unit!116009)

(declare-fun Unit!116057 () Unit!116009)

(assert (=> b!4644409 (= lt!1808994 Unit!116057)))

(declare-fun bm!324273 () Bool)

(declare-fun lt!1808993 () ListMap!4489)

(declare-fun c!794700 () Bool)

(assert (=> bm!324273 (= call!324280 (forall!10967 (ite c!794700 (toList!5165 (ListMap!4490 Nil!51812)) (toList!5165 lt!1808993)) (ite c!794700 lambda!197170 lambda!197173)))))

(declare-fun b!4644410 () Bool)

(declare-fun res!1951194 () Bool)

(assert (=> b!4644410 (=> (not res!1951194) (not e!2897300))))

(assert (=> b!4644410 (= res!1951194 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197175))))

(declare-fun b!4644411 () Bool)

(declare-fun e!2897299 () Bool)

(assert (=> b!4644411 (= e!2897299 call!324278)))

(assert (=> d!1464573 e!2897300))

(declare-fun res!1951195 () Bool)

(assert (=> d!1464573 (=> (not res!1951195) (not e!2897300))))

(assert (=> d!1464573 (= res!1951195 (forall!10967 (Cons!51812 lt!1808628 lt!1808631) lambda!197175))))

(assert (=> d!1464573 (= lt!1809000 e!2897298)))

(assert (=> d!1464573 (= c!794700 ((_ is Nil!51812) (Cons!51812 lt!1808628 lt!1808631)))))

(assert (=> d!1464573 (noDuplicateKeys!1610 (Cons!51812 lt!1808628 lt!1808631))))

(assert (=> d!1464573 (= (addToMapMapFromBucket!1069 (Cons!51812 lt!1808628 lt!1808631) (ListMap!4490 Nil!51812)) lt!1809000)))

(assert (=> b!4644407 (= e!2897298 lt!1809008)))

(assert (=> b!4644407 (= lt!1808993 (+!1960 (ListMap!4490 Nil!51812) (h!57932 (Cons!51812 lt!1808628 lt!1808631))))))

(assert (=> b!4644407 (= lt!1809008 (addToMapMapFromBucket!1069 (t!359030 (Cons!51812 lt!1808628 lt!1808631)) (+!1960 (ListMap!4490 Nil!51812) (h!57932 (Cons!51812 lt!1808628 lt!1808631)))))))

(declare-fun lt!1808997 () Unit!116009)

(assert (=> b!4644407 (= lt!1808997 call!324279)))

(assert (=> b!4644407 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197172)))

(declare-fun lt!1809013 () Unit!116009)

(assert (=> b!4644407 (= lt!1809013 lt!1808997)))

(assert (=> b!4644407 (forall!10967 (toList!5165 lt!1808993) lambda!197173)))

(declare-fun lt!1809002 () Unit!116009)

(declare-fun Unit!116058 () Unit!116009)

(assert (=> b!4644407 (= lt!1809002 Unit!116058)))

(assert (=> b!4644407 (forall!10967 (t!359030 (Cons!51812 lt!1808628 lt!1808631)) lambda!197173)))

(declare-fun lt!1809012 () Unit!116009)

(declare-fun Unit!116059 () Unit!116009)

(assert (=> b!4644407 (= lt!1809012 Unit!116059)))

(declare-fun lt!1809005 () Unit!116009)

(declare-fun Unit!116060 () Unit!116009)

(assert (=> b!4644407 (= lt!1809005 Unit!116060)))

(declare-fun lt!1808999 () Unit!116009)

(assert (=> b!4644407 (= lt!1808999 (forallContained!3194 (toList!5165 lt!1808993) lambda!197173 (h!57932 (Cons!51812 lt!1808628 lt!1808631))))))

(assert (=> b!4644407 (contains!14963 lt!1808993 (_1!29737 (h!57932 (Cons!51812 lt!1808628 lt!1808631))))))

(declare-fun lt!1809011 () Unit!116009)

(declare-fun Unit!116061 () Unit!116009)

(assert (=> b!4644407 (= lt!1809011 Unit!116061)))

(assert (=> b!4644407 (contains!14963 lt!1809008 (_1!29737 (h!57932 (Cons!51812 lt!1808628 lt!1808631))))))

(declare-fun lt!1808998 () Unit!116009)

(declare-fun Unit!116062 () Unit!116009)

(assert (=> b!4644407 (= lt!1808998 Unit!116062)))

(assert (=> b!4644407 (forall!10967 (Cons!51812 lt!1808628 lt!1808631) lambda!197173)))

(declare-fun lt!1809006 () Unit!116009)

(declare-fun Unit!116063 () Unit!116009)

(assert (=> b!4644407 (= lt!1809006 Unit!116063)))

(assert (=> b!4644407 call!324280))

(declare-fun lt!1809009 () Unit!116009)

(declare-fun Unit!116064 () Unit!116009)

(assert (=> b!4644407 (= lt!1809009 Unit!116064)))

(declare-fun lt!1809007 () Unit!116009)

(declare-fun Unit!116065 () Unit!116009)

(assert (=> b!4644407 (= lt!1809007 Unit!116065)))

(declare-fun lt!1809001 () Unit!116009)

(assert (=> b!4644407 (= lt!1809001 (addForallContainsKeyThenBeforeAdding!575 (ListMap!4490 Nil!51812) lt!1809008 (_1!29737 (h!57932 (Cons!51812 lt!1808628 lt!1808631))) (_2!29737 (h!57932 (Cons!51812 lt!1808628 lt!1808631)))))))

(assert (=> b!4644407 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197173)))

(declare-fun lt!1809003 () Unit!116009)

(assert (=> b!4644407 (= lt!1809003 lt!1809001)))

(assert (=> b!4644407 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197173)))

(declare-fun lt!1809004 () Unit!116009)

(declare-fun Unit!116066 () Unit!116009)

(assert (=> b!4644407 (= lt!1809004 Unit!116066)))

(declare-fun res!1951193 () Bool)

(assert (=> b!4644407 (= res!1951193 (forall!10967 (Cons!51812 lt!1808628 lt!1808631) lambda!197173))))

(assert (=> b!4644407 (=> (not res!1951193) (not e!2897299))))

(assert (=> b!4644407 e!2897299))

(declare-fun lt!1809010 () Unit!116009)

(declare-fun Unit!116067 () Unit!116009)

(assert (=> b!4644407 (= lt!1809010 Unit!116067)))

(declare-fun bm!324274 () Bool)

(assert (=> bm!324274 (= call!324279 (lemmaContainsAllItsOwnKeys!576 (ListMap!4490 Nil!51812)))))

(declare-fun bm!324275 () Bool)

(assert (=> bm!324275 (= call!324278 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) (ite c!794700 lambda!197170 lambda!197173)))))

(assert (= (and d!1464573 c!794700) b!4644409))

(assert (= (and d!1464573 (not c!794700)) b!4644407))

(assert (= (and b!4644407 res!1951193) b!4644411))

(assert (= (or b!4644409 b!4644407) bm!324274))

(assert (= (or b!4644409 b!4644407) bm!324273))

(assert (= (or b!4644409 b!4644411) bm!324275))

(assert (= (and d!1464573 res!1951195) b!4644410))

(assert (= (and b!4644410 res!1951194) b!4644408))

(declare-fun m!5509175 () Bool)

(assert (=> b!4644408 m!5509175))

(declare-fun m!5509177 () Bool)

(assert (=> bm!324275 m!5509177))

(declare-fun m!5509179 () Bool)

(assert (=> b!4644410 m!5509179))

(declare-fun m!5509181 () Bool)

(assert (=> bm!324273 m!5509181))

(declare-fun m!5509183 () Bool)

(assert (=> bm!324274 m!5509183))

(declare-fun m!5509185 () Bool)

(assert (=> d!1464573 m!5509185))

(declare-fun m!5509187 () Bool)

(assert (=> d!1464573 m!5509187))

(declare-fun m!5509189 () Bool)

(assert (=> b!4644407 m!5509189))

(declare-fun m!5509191 () Bool)

(assert (=> b!4644407 m!5509191))

(declare-fun m!5509193 () Bool)

(assert (=> b!4644407 m!5509193))

(declare-fun m!5509195 () Bool)

(assert (=> b!4644407 m!5509195))

(assert (=> b!4644407 m!5509191))

(declare-fun m!5509197 () Bool)

(assert (=> b!4644407 m!5509197))

(assert (=> b!4644407 m!5509189))

(declare-fun m!5509199 () Bool)

(assert (=> b!4644407 m!5509199))

(declare-fun m!5509201 () Bool)

(assert (=> b!4644407 m!5509201))

(assert (=> b!4644407 m!5509197))

(declare-fun m!5509203 () Bool)

(assert (=> b!4644407 m!5509203))

(declare-fun m!5509205 () Bool)

(assert (=> b!4644407 m!5509205))

(declare-fun m!5509207 () Bool)

(assert (=> b!4644407 m!5509207))

(declare-fun m!5509209 () Bool)

(assert (=> b!4644407 m!5509209))

(assert (=> b!4644219 d!1464573))

(declare-fun bs!1035839 () Bool)

(declare-fun b!4644422 () Bool)

(assert (= bs!1035839 (and b!4644422 b!4644409)))

(declare-fun lambda!197176 () Int)

(assert (=> bs!1035839 (= lambda!197176 lambda!197170)))

(declare-fun bs!1035840 () Bool)

(assert (= bs!1035840 (and b!4644422 d!1464459)))

(assert (=> bs!1035840 (not (= lambda!197176 lambda!197069))))

(declare-fun bs!1035841 () Bool)

(assert (= bs!1035841 (and b!4644422 d!1464475)))

(assert (=> bs!1035841 (= (= (ListMap!4490 Nil!51812) lt!1808846) (= lambda!197176 lambda!197144))))

(declare-fun bs!1035842 () Bool)

(assert (= bs!1035842 (and b!4644422 b!4644407)))

(assert (=> bs!1035842 (= (= (ListMap!4490 Nil!51812) lt!1809008) (= lambda!197176 lambda!197173))))

(declare-fun bs!1035843 () Bool)

(assert (= bs!1035843 (and b!4644422 b!4644299)))

(assert (=> bs!1035843 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197176 lambda!197141))))

(declare-fun bs!1035844 () Bool)

(assert (= bs!1035844 (and b!4644422 b!4644297)))

(assert (=> bs!1035844 (= (= (ListMap!4490 Nil!51812) lt!1808854) (= lambda!197176 lambda!197143))))

(assert (=> bs!1035844 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197176 lambda!197142))))

(declare-fun bs!1035845 () Bool)

(assert (= bs!1035845 (and b!4644422 d!1464573)))

(assert (=> bs!1035845 (= (= (ListMap!4490 Nil!51812) lt!1809000) (= lambda!197176 lambda!197175))))

(assert (=> bs!1035842 (= lambda!197176 lambda!197172)))

(assert (=> b!4644422 true))

(declare-fun bs!1035846 () Bool)

(declare-fun b!4644420 () Bool)

(assert (= bs!1035846 (and b!4644420 b!4644409)))

(declare-fun lambda!197177 () Int)

(assert (=> bs!1035846 (= lambda!197177 lambda!197170)))

(declare-fun bs!1035847 () Bool)

(assert (= bs!1035847 (and b!4644420 d!1464459)))

(assert (=> bs!1035847 (not (= lambda!197177 lambda!197069))))

(declare-fun bs!1035848 () Bool)

(assert (= bs!1035848 (and b!4644420 d!1464475)))

(assert (=> bs!1035848 (= (= (ListMap!4490 Nil!51812) lt!1808846) (= lambda!197177 lambda!197144))))

(declare-fun bs!1035849 () Bool)

(assert (= bs!1035849 (and b!4644420 b!4644407)))

(assert (=> bs!1035849 (= (= (ListMap!4490 Nil!51812) lt!1809008) (= lambda!197177 lambda!197173))))

(declare-fun bs!1035850 () Bool)

(assert (= bs!1035850 (and b!4644420 b!4644299)))

(assert (=> bs!1035850 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197177 lambda!197141))))

(declare-fun bs!1035851 () Bool)

(assert (= bs!1035851 (and b!4644420 b!4644297)))

(assert (=> bs!1035851 (= (= (ListMap!4490 Nil!51812) lt!1808854) (= lambda!197177 lambda!197143))))

(assert (=> bs!1035851 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197177 lambda!197142))))

(declare-fun bs!1035852 () Bool)

(assert (= bs!1035852 (and b!4644420 b!4644422)))

(assert (=> bs!1035852 (= lambda!197177 lambda!197176)))

(declare-fun bs!1035853 () Bool)

(assert (= bs!1035853 (and b!4644420 d!1464573)))

(assert (=> bs!1035853 (= (= (ListMap!4490 Nil!51812) lt!1809000) (= lambda!197177 lambda!197175))))

(assert (=> bs!1035849 (= lambda!197177 lambda!197172)))

(assert (=> b!4644420 true))

(declare-fun lambda!197178 () Int)

(assert (=> bs!1035847 (not (= lambda!197178 lambda!197069))))

(declare-fun lt!1809035 () ListMap!4489)

(assert (=> bs!1035848 (= (= lt!1809035 lt!1808846) (= lambda!197178 lambda!197144))))

(assert (=> bs!1035849 (= (= lt!1809035 lt!1809008) (= lambda!197178 lambda!197173))))

(assert (=> bs!1035850 (= (= lt!1809035 lt!1808624) (= lambda!197178 lambda!197141))))

(assert (=> bs!1035851 (= (= lt!1809035 lt!1808854) (= lambda!197178 lambda!197143))))

(assert (=> bs!1035851 (= (= lt!1809035 lt!1808624) (= lambda!197178 lambda!197142))))

(assert (=> bs!1035852 (= (= lt!1809035 (ListMap!4490 Nil!51812)) (= lambda!197178 lambda!197176))))

(assert (=> bs!1035846 (= (= lt!1809035 (ListMap!4490 Nil!51812)) (= lambda!197178 lambda!197170))))

(assert (=> b!4644420 (= (= lt!1809035 (ListMap!4490 Nil!51812)) (= lambda!197178 lambda!197177))))

(assert (=> bs!1035853 (= (= lt!1809035 lt!1809000) (= lambda!197178 lambda!197175))))

(assert (=> bs!1035849 (= (= lt!1809035 (ListMap!4490 Nil!51812)) (= lambda!197178 lambda!197172))))

(assert (=> b!4644420 true))

(declare-fun bs!1035854 () Bool)

(declare-fun d!1464589 () Bool)

(assert (= bs!1035854 (and d!1464589 d!1464459)))

(declare-fun lambda!197179 () Int)

(assert (=> bs!1035854 (not (= lambda!197179 lambda!197069))))

(declare-fun bs!1035855 () Bool)

(assert (= bs!1035855 (and d!1464589 d!1464475)))

(declare-fun lt!1809027 () ListMap!4489)

(assert (=> bs!1035855 (= (= lt!1809027 lt!1808846) (= lambda!197179 lambda!197144))))

(declare-fun bs!1035856 () Bool)

(assert (= bs!1035856 (and d!1464589 b!4644407)))

(assert (=> bs!1035856 (= (= lt!1809027 lt!1809008) (= lambda!197179 lambda!197173))))

(declare-fun bs!1035857 () Bool)

(assert (= bs!1035857 (and d!1464589 b!4644299)))

(assert (=> bs!1035857 (= (= lt!1809027 lt!1808624) (= lambda!197179 lambda!197141))))

(declare-fun bs!1035858 () Bool)

(assert (= bs!1035858 (and d!1464589 b!4644297)))

(assert (=> bs!1035858 (= (= lt!1809027 lt!1808854) (= lambda!197179 lambda!197143))))

(declare-fun bs!1035859 () Bool)

(assert (= bs!1035859 (and d!1464589 b!4644422)))

(assert (=> bs!1035859 (= (= lt!1809027 (ListMap!4490 Nil!51812)) (= lambda!197179 lambda!197176))))

(declare-fun bs!1035860 () Bool)

(assert (= bs!1035860 (and d!1464589 b!4644409)))

(assert (=> bs!1035860 (= (= lt!1809027 (ListMap!4490 Nil!51812)) (= lambda!197179 lambda!197170))))

(declare-fun bs!1035861 () Bool)

(assert (= bs!1035861 (and d!1464589 b!4644420)))

(assert (=> bs!1035861 (= (= lt!1809027 (ListMap!4490 Nil!51812)) (= lambda!197179 lambda!197177))))

(declare-fun bs!1035862 () Bool)

(assert (= bs!1035862 (and d!1464589 d!1464573)))

(assert (=> bs!1035862 (= (= lt!1809027 lt!1809000) (= lambda!197179 lambda!197175))))

(assert (=> bs!1035856 (= (= lt!1809027 (ListMap!4490 Nil!51812)) (= lambda!197179 lambda!197172))))

(assert (=> bs!1035861 (= (= lt!1809027 lt!1809035) (= lambda!197179 lambda!197178))))

(assert (=> bs!1035858 (= (= lt!1809027 lt!1808624) (= lambda!197179 lambda!197142))))

(assert (=> d!1464589 true))

(declare-fun b!4644421 () Bool)

(declare-fun e!2897308 () Bool)

(assert (=> b!4644421 (= e!2897308 (invariantList!1274 (toList!5165 lt!1809027)))))

(declare-fun e!2897306 () ListMap!4489)

(assert (=> b!4644422 (= e!2897306 (ListMap!4490 Nil!51812))))

(declare-fun lt!1809023 () Unit!116009)

(declare-fun call!324282 () Unit!116009)

(assert (=> b!4644422 (= lt!1809023 call!324282)))

(declare-fun call!324281 () Bool)

(assert (=> b!4644422 call!324281))

(declare-fun lt!1809022 () Unit!116009)

(assert (=> b!4644422 (= lt!1809022 lt!1809023)))

(declare-fun call!324283 () Bool)

(assert (=> b!4644422 call!324283))

(declare-fun lt!1809021 () Unit!116009)

(declare-fun Unit!116079 () Unit!116009)

(assert (=> b!4644422 (= lt!1809021 Unit!116079)))

(declare-fun c!794703 () Bool)

(declare-fun lt!1809020 () ListMap!4489)

(declare-fun bm!324276 () Bool)

(assert (=> bm!324276 (= call!324283 (forall!10967 (ite c!794703 (toList!5165 (ListMap!4490 Nil!51812)) (toList!5165 lt!1809020)) (ite c!794703 lambda!197176 lambda!197178)))))

(declare-fun b!4644423 () Bool)

(declare-fun res!1951201 () Bool)

(assert (=> b!4644423 (=> (not res!1951201) (not e!2897308))))

(assert (=> b!4644423 (= res!1951201 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197179))))

(declare-fun b!4644424 () Bool)

(declare-fun e!2897307 () Bool)

(assert (=> b!4644424 (= e!2897307 call!324281)))

(assert (=> d!1464589 e!2897308))

(declare-fun res!1951202 () Bool)

(assert (=> d!1464589 (=> (not res!1951202) (not e!2897308))))

(assert (=> d!1464589 (= res!1951202 (forall!10967 lt!1808631 lambda!197179))))

(assert (=> d!1464589 (= lt!1809027 e!2897306)))

(assert (=> d!1464589 (= c!794703 ((_ is Nil!51812) lt!1808631))))

(assert (=> d!1464589 (noDuplicateKeys!1610 lt!1808631)))

(assert (=> d!1464589 (= (addToMapMapFromBucket!1069 lt!1808631 (ListMap!4490 Nil!51812)) lt!1809027)))

(assert (=> b!4644420 (= e!2897306 lt!1809035)))

(assert (=> b!4644420 (= lt!1809020 (+!1960 (ListMap!4490 Nil!51812) (h!57932 lt!1808631)))))

(assert (=> b!4644420 (= lt!1809035 (addToMapMapFromBucket!1069 (t!359030 lt!1808631) (+!1960 (ListMap!4490 Nil!51812) (h!57932 lt!1808631))))))

(declare-fun lt!1809024 () Unit!116009)

(assert (=> b!4644420 (= lt!1809024 call!324282)))

(assert (=> b!4644420 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197177)))

(declare-fun lt!1809040 () Unit!116009)

(assert (=> b!4644420 (= lt!1809040 lt!1809024)))

(assert (=> b!4644420 (forall!10967 (toList!5165 lt!1809020) lambda!197178)))

(declare-fun lt!1809029 () Unit!116009)

(declare-fun Unit!116080 () Unit!116009)

(assert (=> b!4644420 (= lt!1809029 Unit!116080)))

(assert (=> b!4644420 (forall!10967 (t!359030 lt!1808631) lambda!197178)))

(declare-fun lt!1809039 () Unit!116009)

(declare-fun Unit!116081 () Unit!116009)

(assert (=> b!4644420 (= lt!1809039 Unit!116081)))

(declare-fun lt!1809032 () Unit!116009)

(declare-fun Unit!116082 () Unit!116009)

(assert (=> b!4644420 (= lt!1809032 Unit!116082)))

(declare-fun lt!1809026 () Unit!116009)

(assert (=> b!4644420 (= lt!1809026 (forallContained!3194 (toList!5165 lt!1809020) lambda!197178 (h!57932 lt!1808631)))))

(assert (=> b!4644420 (contains!14963 lt!1809020 (_1!29737 (h!57932 lt!1808631)))))

(declare-fun lt!1809038 () Unit!116009)

(declare-fun Unit!116083 () Unit!116009)

(assert (=> b!4644420 (= lt!1809038 Unit!116083)))

(assert (=> b!4644420 (contains!14963 lt!1809035 (_1!29737 (h!57932 lt!1808631)))))

(declare-fun lt!1809025 () Unit!116009)

(declare-fun Unit!116084 () Unit!116009)

(assert (=> b!4644420 (= lt!1809025 Unit!116084)))

(assert (=> b!4644420 (forall!10967 lt!1808631 lambda!197178)))

(declare-fun lt!1809033 () Unit!116009)

(declare-fun Unit!116085 () Unit!116009)

(assert (=> b!4644420 (= lt!1809033 Unit!116085)))

(assert (=> b!4644420 call!324283))

(declare-fun lt!1809036 () Unit!116009)

(declare-fun Unit!116086 () Unit!116009)

(assert (=> b!4644420 (= lt!1809036 Unit!116086)))

(declare-fun lt!1809034 () Unit!116009)

(declare-fun Unit!116087 () Unit!116009)

(assert (=> b!4644420 (= lt!1809034 Unit!116087)))

(declare-fun lt!1809028 () Unit!116009)

(assert (=> b!4644420 (= lt!1809028 (addForallContainsKeyThenBeforeAdding!575 (ListMap!4490 Nil!51812) lt!1809035 (_1!29737 (h!57932 lt!1808631)) (_2!29737 (h!57932 lt!1808631))))))

(assert (=> b!4644420 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197178)))

(declare-fun lt!1809030 () Unit!116009)

(assert (=> b!4644420 (= lt!1809030 lt!1809028)))

(assert (=> b!4644420 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197178)))

(declare-fun lt!1809031 () Unit!116009)

(declare-fun Unit!116088 () Unit!116009)

(assert (=> b!4644420 (= lt!1809031 Unit!116088)))

(declare-fun res!1951200 () Bool)

(assert (=> b!4644420 (= res!1951200 (forall!10967 lt!1808631 lambda!197178))))

(assert (=> b!4644420 (=> (not res!1951200) (not e!2897307))))

(assert (=> b!4644420 e!2897307))

(declare-fun lt!1809037 () Unit!116009)

(declare-fun Unit!116089 () Unit!116009)

(assert (=> b!4644420 (= lt!1809037 Unit!116089)))

(declare-fun bm!324277 () Bool)

(assert (=> bm!324277 (= call!324282 (lemmaContainsAllItsOwnKeys!576 (ListMap!4490 Nil!51812)))))

(declare-fun bm!324278 () Bool)

(assert (=> bm!324278 (= call!324281 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) (ite c!794703 lambda!197176 lambda!197178)))))

(assert (= (and d!1464589 c!794703) b!4644422))

(assert (= (and d!1464589 (not c!794703)) b!4644420))

(assert (= (and b!4644420 res!1951200) b!4644424))

(assert (= (or b!4644422 b!4644420) bm!324277))

(assert (= (or b!4644422 b!4644420) bm!324276))

(assert (= (or b!4644422 b!4644424) bm!324278))

(assert (= (and d!1464589 res!1951202) b!4644423))

(assert (= (and b!4644423 res!1951201) b!4644421))

(declare-fun m!5509225 () Bool)

(assert (=> b!4644421 m!5509225))

(declare-fun m!5509227 () Bool)

(assert (=> bm!324278 m!5509227))

(declare-fun m!5509229 () Bool)

(assert (=> b!4644423 m!5509229))

(declare-fun m!5509231 () Bool)

(assert (=> bm!324276 m!5509231))

(assert (=> bm!324277 m!5509183))

(declare-fun m!5509233 () Bool)

(assert (=> d!1464589 m!5509233))

(assert (=> d!1464589 m!5509091))

(declare-fun m!5509235 () Bool)

(assert (=> b!4644420 m!5509235))

(declare-fun m!5509237 () Bool)

(assert (=> b!4644420 m!5509237))

(declare-fun m!5509239 () Bool)

(assert (=> b!4644420 m!5509239))

(declare-fun m!5509241 () Bool)

(assert (=> b!4644420 m!5509241))

(assert (=> b!4644420 m!5509237))

(declare-fun m!5509243 () Bool)

(assert (=> b!4644420 m!5509243))

(assert (=> b!4644420 m!5509235))

(declare-fun m!5509245 () Bool)

(assert (=> b!4644420 m!5509245))

(declare-fun m!5509247 () Bool)

(assert (=> b!4644420 m!5509247))

(assert (=> b!4644420 m!5509243))

(declare-fun m!5509249 () Bool)

(assert (=> b!4644420 m!5509249))

(declare-fun m!5509251 () Bool)

(assert (=> b!4644420 m!5509251))

(declare-fun m!5509253 () Bool)

(assert (=> b!4644420 m!5509253))

(declare-fun m!5509255 () Bool)

(assert (=> b!4644420 m!5509255))

(assert (=> b!4644219 d!1464589))

(declare-fun b!4644467 () Bool)

(declare-fun e!2897340 () Bool)

(declare-fun contains!14969 (List!51939 K!13175) Bool)

(assert (=> b!4644467 (= e!2897340 (not (contains!14969 (keys!18328 lt!1808625) key!4968)))))

(declare-fun b!4644468 () Bool)

(assert (=> b!4644468 false))

(declare-fun lt!1809065 () Unit!116009)

(declare-fun lt!1809066 () Unit!116009)

(assert (=> b!4644468 (= lt!1809065 lt!1809066)))

(declare-fun containsKey!2670 (List!51936 K!13175) Bool)

(assert (=> b!4644468 (containsKey!2670 (toList!5165 lt!1808625) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!724 (List!51936 K!13175) Unit!116009)

(assert (=> b!4644468 (= lt!1809066 (lemmaInGetKeysListThenContainsKey!724 (toList!5165 lt!1808625) key!4968))))

(declare-fun e!2897336 () Unit!116009)

(declare-fun Unit!116090 () Unit!116009)

(assert (=> b!4644468 (= e!2897336 Unit!116090)))

(declare-fun b!4644469 () Bool)

(declare-fun e!2897341 () Bool)

(declare-fun e!2897339 () Bool)

(assert (=> b!4644469 (= e!2897341 e!2897339)))

(declare-fun res!1951222 () Bool)

(assert (=> b!4644469 (=> (not res!1951222) (not e!2897339))))

(declare-fun isDefined!9057 (Option!11792) Bool)

(assert (=> b!4644469 (= res!1951222 (isDefined!9057 (getValueByKey!1580 (toList!5165 lt!1808625) key!4968)))))

(declare-fun b!4644470 () Bool)

(declare-fun e!2897337 () Unit!116009)

(assert (=> b!4644470 (= e!2897337 e!2897336)))

(declare-fun c!794716 () Bool)

(declare-fun call!324286 () Bool)

(assert (=> b!4644470 (= c!794716 call!324286)))

(declare-fun b!4644471 () Bool)

(declare-fun e!2897338 () List!51939)

(declare-fun getKeysList!725 (List!51936) List!51939)

(assert (=> b!4644471 (= e!2897338 (getKeysList!725 (toList!5165 lt!1808625)))))

(declare-fun b!4644472 () Bool)

(declare-fun lt!1809062 () Unit!116009)

(assert (=> b!4644472 (= e!2897337 lt!1809062)))

(declare-fun lt!1809060 () Unit!116009)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1482 (List!51936 K!13175) Unit!116009)

(assert (=> b!4644472 (= lt!1809060 (lemmaContainsKeyImpliesGetValueByKeyDefined!1482 (toList!5165 lt!1808625) key!4968))))

(assert (=> b!4644472 (isDefined!9057 (getValueByKey!1580 (toList!5165 lt!1808625) key!4968))))

(declare-fun lt!1809061 () Unit!116009)

(assert (=> b!4644472 (= lt!1809061 lt!1809060)))

(declare-fun lemmaInListThenGetKeysListContains!720 (List!51936 K!13175) Unit!116009)

(assert (=> b!4644472 (= lt!1809062 (lemmaInListThenGetKeysListContains!720 (toList!5165 lt!1808625) key!4968))))

(assert (=> b!4644472 call!324286))

(declare-fun b!4644473 () Bool)

(assert (=> b!4644473 (= e!2897338 (keys!18328 lt!1808625))))

(declare-fun b!4644474 () Bool)

(declare-fun Unit!116091 () Unit!116009)

(assert (=> b!4644474 (= e!2897336 Unit!116091)))

(declare-fun b!4644475 () Bool)

(assert (=> b!4644475 (= e!2897339 (contains!14969 (keys!18328 lt!1808625) key!4968))))

(declare-fun d!1464593 () Bool)

(assert (=> d!1464593 e!2897341))

(declare-fun res!1951223 () Bool)

(assert (=> d!1464593 (=> res!1951223 e!2897341)))

(assert (=> d!1464593 (= res!1951223 e!2897340)))

(declare-fun res!1951221 () Bool)

(assert (=> d!1464593 (=> (not res!1951221) (not e!2897340))))

(declare-fun lt!1809067 () Bool)

(assert (=> d!1464593 (= res!1951221 (not lt!1809067))))

(declare-fun lt!1809063 () Bool)

(assert (=> d!1464593 (= lt!1809067 lt!1809063)))

(declare-fun lt!1809064 () Unit!116009)

(assert (=> d!1464593 (= lt!1809064 e!2897337)))

(declare-fun c!794717 () Bool)

(assert (=> d!1464593 (= c!794717 lt!1809063)))

(assert (=> d!1464593 (= lt!1809063 (containsKey!2670 (toList!5165 lt!1808625) key!4968))))

(assert (=> d!1464593 (= (contains!14963 lt!1808625 key!4968) lt!1809067)))

(declare-fun bm!324281 () Bool)

(assert (=> bm!324281 (= call!324286 (contains!14969 e!2897338 key!4968))))

(declare-fun c!794718 () Bool)

(assert (=> bm!324281 (= c!794718 c!794717)))

(assert (= (and d!1464593 c!794717) b!4644472))

(assert (= (and d!1464593 (not c!794717)) b!4644470))

(assert (= (and b!4644470 c!794716) b!4644468))

(assert (= (and b!4644470 (not c!794716)) b!4644474))

(assert (= (or b!4644472 b!4644470) bm!324281))

(assert (= (and bm!324281 c!794718) b!4644471))

(assert (= (and bm!324281 (not c!794718)) b!4644473))

(assert (= (and d!1464593 res!1951221) b!4644467))

(assert (= (and d!1464593 (not res!1951223)) b!4644469))

(assert (= (and b!4644469 res!1951222) b!4644475))

(declare-fun m!5509257 () Bool)

(assert (=> b!4644467 m!5509257))

(assert (=> b!4644467 m!5509257))

(declare-fun m!5509259 () Bool)

(assert (=> b!4644467 m!5509259))

(declare-fun m!5509261 () Bool)

(assert (=> b!4644468 m!5509261))

(declare-fun m!5509263 () Bool)

(assert (=> b!4644468 m!5509263))

(assert (=> b!4644473 m!5509257))

(declare-fun m!5509265 () Bool)

(assert (=> b!4644469 m!5509265))

(assert (=> b!4644469 m!5509265))

(declare-fun m!5509267 () Bool)

(assert (=> b!4644469 m!5509267))

(assert (=> d!1464593 m!5509261))

(assert (=> b!4644475 m!5509257))

(assert (=> b!4644475 m!5509257))

(assert (=> b!4644475 m!5509259))

(declare-fun m!5509269 () Bool)

(assert (=> b!4644471 m!5509269))

(declare-fun m!5509271 () Bool)

(assert (=> b!4644472 m!5509271))

(assert (=> b!4644472 m!5509265))

(assert (=> b!4644472 m!5509265))

(assert (=> b!4644472 m!5509267))

(declare-fun m!5509273 () Bool)

(assert (=> b!4644472 m!5509273))

(declare-fun m!5509275 () Bool)

(assert (=> bm!324281 m!5509275))

(assert (=> b!4644219 d!1464593))

(declare-fun bs!1035863 () Bool)

(declare-fun b!4644478 () Bool)

(assert (= bs!1035863 (and b!4644478 d!1464459)))

(declare-fun lambda!197180 () Int)

(assert (=> bs!1035863 (not (= lambda!197180 lambda!197069))))

(declare-fun bs!1035864 () Bool)

(assert (= bs!1035864 (and b!4644478 d!1464475)))

(assert (=> bs!1035864 (= (= (ListMap!4490 Nil!51812) lt!1808846) (= lambda!197180 lambda!197144))))

(declare-fun bs!1035865 () Bool)

(assert (= bs!1035865 (and b!4644478 b!4644407)))

(assert (=> bs!1035865 (= (= (ListMap!4490 Nil!51812) lt!1809008) (= lambda!197180 lambda!197173))))

(declare-fun bs!1035866 () Bool)

(assert (= bs!1035866 (and b!4644478 b!4644299)))

(assert (=> bs!1035866 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197180 lambda!197141))))

(declare-fun bs!1035867 () Bool)

(assert (= bs!1035867 (and b!4644478 b!4644297)))

(assert (=> bs!1035867 (= (= (ListMap!4490 Nil!51812) lt!1808854) (= lambda!197180 lambda!197143))))

(declare-fun bs!1035868 () Bool)

(assert (= bs!1035868 (and b!4644478 d!1464589)))

(assert (=> bs!1035868 (= (= (ListMap!4490 Nil!51812) lt!1809027) (= lambda!197180 lambda!197179))))

(declare-fun bs!1035869 () Bool)

(assert (= bs!1035869 (and b!4644478 b!4644422)))

(assert (=> bs!1035869 (= lambda!197180 lambda!197176)))

(declare-fun bs!1035870 () Bool)

(assert (= bs!1035870 (and b!4644478 b!4644409)))

(assert (=> bs!1035870 (= lambda!197180 lambda!197170)))

(declare-fun bs!1035871 () Bool)

(assert (= bs!1035871 (and b!4644478 b!4644420)))

(assert (=> bs!1035871 (= lambda!197180 lambda!197177)))

(declare-fun bs!1035872 () Bool)

(assert (= bs!1035872 (and b!4644478 d!1464573)))

(assert (=> bs!1035872 (= (= (ListMap!4490 Nil!51812) lt!1809000) (= lambda!197180 lambda!197175))))

(assert (=> bs!1035865 (= lambda!197180 lambda!197172)))

(assert (=> bs!1035871 (= (= (ListMap!4490 Nil!51812) lt!1809035) (= lambda!197180 lambda!197178))))

(assert (=> bs!1035867 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197180 lambda!197142))))

(assert (=> b!4644478 true))

(declare-fun bs!1035873 () Bool)

(declare-fun b!4644476 () Bool)

(assert (= bs!1035873 (and b!4644476 d!1464459)))

(declare-fun lambda!197181 () Int)

(assert (=> bs!1035873 (not (= lambda!197181 lambda!197069))))

(declare-fun bs!1035874 () Bool)

(assert (= bs!1035874 (and b!4644476 d!1464475)))

(assert (=> bs!1035874 (= (= (ListMap!4490 Nil!51812) lt!1808846) (= lambda!197181 lambda!197144))))

(declare-fun bs!1035875 () Bool)

(assert (= bs!1035875 (and b!4644476 b!4644478)))

(assert (=> bs!1035875 (= lambda!197181 lambda!197180)))

(declare-fun bs!1035876 () Bool)

(assert (= bs!1035876 (and b!4644476 b!4644407)))

(assert (=> bs!1035876 (= (= (ListMap!4490 Nil!51812) lt!1809008) (= lambda!197181 lambda!197173))))

(declare-fun bs!1035877 () Bool)

(assert (= bs!1035877 (and b!4644476 b!4644299)))

(assert (=> bs!1035877 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197181 lambda!197141))))

(declare-fun bs!1035878 () Bool)

(assert (= bs!1035878 (and b!4644476 b!4644297)))

(assert (=> bs!1035878 (= (= (ListMap!4490 Nil!51812) lt!1808854) (= lambda!197181 lambda!197143))))

(declare-fun bs!1035879 () Bool)

(assert (= bs!1035879 (and b!4644476 d!1464589)))

(assert (=> bs!1035879 (= (= (ListMap!4490 Nil!51812) lt!1809027) (= lambda!197181 lambda!197179))))

(declare-fun bs!1035880 () Bool)

(assert (= bs!1035880 (and b!4644476 b!4644422)))

(assert (=> bs!1035880 (= lambda!197181 lambda!197176)))

(declare-fun bs!1035881 () Bool)

(assert (= bs!1035881 (and b!4644476 b!4644409)))

(assert (=> bs!1035881 (= lambda!197181 lambda!197170)))

(declare-fun bs!1035882 () Bool)

(assert (= bs!1035882 (and b!4644476 b!4644420)))

(assert (=> bs!1035882 (= lambda!197181 lambda!197177)))

(declare-fun bs!1035883 () Bool)

(assert (= bs!1035883 (and b!4644476 d!1464573)))

(assert (=> bs!1035883 (= (= (ListMap!4490 Nil!51812) lt!1809000) (= lambda!197181 lambda!197175))))

(assert (=> bs!1035876 (= lambda!197181 lambda!197172)))

(assert (=> bs!1035882 (= (= (ListMap!4490 Nil!51812) lt!1809035) (= lambda!197181 lambda!197178))))

(assert (=> bs!1035878 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197181 lambda!197142))))

(assert (=> b!4644476 true))

(declare-fun lambda!197182 () Int)

(assert (=> bs!1035873 (not (= lambda!197182 lambda!197069))))

(declare-fun lt!1809083 () ListMap!4489)

(assert (=> b!4644476 (= (= lt!1809083 (ListMap!4490 Nil!51812)) (= lambda!197182 lambda!197181))))

(assert (=> bs!1035874 (= (= lt!1809083 lt!1808846) (= lambda!197182 lambda!197144))))

(assert (=> bs!1035875 (= (= lt!1809083 (ListMap!4490 Nil!51812)) (= lambda!197182 lambda!197180))))

(assert (=> bs!1035876 (= (= lt!1809083 lt!1809008) (= lambda!197182 lambda!197173))))

(assert (=> bs!1035877 (= (= lt!1809083 lt!1808624) (= lambda!197182 lambda!197141))))

(assert (=> bs!1035878 (= (= lt!1809083 lt!1808854) (= lambda!197182 lambda!197143))))

(assert (=> bs!1035879 (= (= lt!1809083 lt!1809027) (= lambda!197182 lambda!197179))))

(assert (=> bs!1035880 (= (= lt!1809083 (ListMap!4490 Nil!51812)) (= lambda!197182 lambda!197176))))

(assert (=> bs!1035881 (= (= lt!1809083 (ListMap!4490 Nil!51812)) (= lambda!197182 lambda!197170))))

(assert (=> bs!1035882 (= (= lt!1809083 (ListMap!4490 Nil!51812)) (= lambda!197182 lambda!197177))))

(assert (=> bs!1035883 (= (= lt!1809083 lt!1809000) (= lambda!197182 lambda!197175))))

(assert (=> bs!1035876 (= (= lt!1809083 (ListMap!4490 Nil!51812)) (= lambda!197182 lambda!197172))))

(assert (=> bs!1035882 (= (= lt!1809083 lt!1809035) (= lambda!197182 lambda!197178))))

(assert (=> bs!1035878 (= (= lt!1809083 lt!1808624) (= lambda!197182 lambda!197142))))

(assert (=> b!4644476 true))

(declare-fun bs!1035884 () Bool)

(declare-fun d!1464595 () Bool)

(assert (= bs!1035884 (and d!1464595 b!4644476)))

(declare-fun lt!1809075 () ListMap!4489)

(declare-fun lambda!197183 () Int)

(assert (=> bs!1035884 (= (= lt!1809075 (ListMap!4490 Nil!51812)) (= lambda!197183 lambda!197181))))

(declare-fun bs!1035885 () Bool)

(assert (= bs!1035885 (and d!1464595 d!1464475)))

(assert (=> bs!1035885 (= (= lt!1809075 lt!1808846) (= lambda!197183 lambda!197144))))

(declare-fun bs!1035886 () Bool)

(assert (= bs!1035886 (and d!1464595 b!4644478)))

(assert (=> bs!1035886 (= (= lt!1809075 (ListMap!4490 Nil!51812)) (= lambda!197183 lambda!197180))))

(declare-fun bs!1035887 () Bool)

(assert (= bs!1035887 (and d!1464595 b!4644407)))

(assert (=> bs!1035887 (= (= lt!1809075 lt!1809008) (= lambda!197183 lambda!197173))))

(declare-fun bs!1035888 () Bool)

(assert (= bs!1035888 (and d!1464595 b!4644299)))

(assert (=> bs!1035888 (= (= lt!1809075 lt!1808624) (= lambda!197183 lambda!197141))))

(declare-fun bs!1035889 () Bool)

(assert (= bs!1035889 (and d!1464595 b!4644297)))

(assert (=> bs!1035889 (= (= lt!1809075 lt!1808854) (= lambda!197183 lambda!197143))))

(declare-fun bs!1035890 () Bool)

(assert (= bs!1035890 (and d!1464595 d!1464589)))

(assert (=> bs!1035890 (= (= lt!1809075 lt!1809027) (= lambda!197183 lambda!197179))))

(declare-fun bs!1035891 () Bool)

(assert (= bs!1035891 (and d!1464595 b!4644422)))

(assert (=> bs!1035891 (= (= lt!1809075 (ListMap!4490 Nil!51812)) (= lambda!197183 lambda!197176))))

(declare-fun bs!1035892 () Bool)

(assert (= bs!1035892 (and d!1464595 b!4644409)))

(assert (=> bs!1035892 (= (= lt!1809075 (ListMap!4490 Nil!51812)) (= lambda!197183 lambda!197170))))

(declare-fun bs!1035893 () Bool)

(assert (= bs!1035893 (and d!1464595 b!4644420)))

(assert (=> bs!1035893 (= (= lt!1809075 (ListMap!4490 Nil!51812)) (= lambda!197183 lambda!197177))))

(declare-fun bs!1035894 () Bool)

(assert (= bs!1035894 (and d!1464595 d!1464459)))

(assert (=> bs!1035894 (not (= lambda!197183 lambda!197069))))

(assert (=> bs!1035884 (= (= lt!1809075 lt!1809083) (= lambda!197183 lambda!197182))))

(declare-fun bs!1035895 () Bool)

(assert (= bs!1035895 (and d!1464595 d!1464573)))

(assert (=> bs!1035895 (= (= lt!1809075 lt!1809000) (= lambda!197183 lambda!197175))))

(assert (=> bs!1035887 (= (= lt!1809075 (ListMap!4490 Nil!51812)) (= lambda!197183 lambda!197172))))

(assert (=> bs!1035893 (= (= lt!1809075 lt!1809035) (= lambda!197183 lambda!197178))))

(assert (=> bs!1035889 (= (= lt!1809075 lt!1808624) (= lambda!197183 lambda!197142))))

(assert (=> d!1464595 true))

(declare-fun b!4644477 () Bool)

(declare-fun e!2897344 () Bool)

(assert (=> b!4644477 (= e!2897344 (invariantList!1274 (toList!5165 lt!1809075)))))

(declare-fun e!2897342 () ListMap!4489)

(assert (=> b!4644478 (= e!2897342 (ListMap!4490 Nil!51812))))

(declare-fun lt!1809071 () Unit!116009)

(declare-fun call!324288 () Unit!116009)

(assert (=> b!4644478 (= lt!1809071 call!324288)))

(declare-fun call!324287 () Bool)

(assert (=> b!4644478 call!324287))

(declare-fun lt!1809070 () Unit!116009)

(assert (=> b!4644478 (= lt!1809070 lt!1809071)))

(declare-fun call!324289 () Bool)

(assert (=> b!4644478 call!324289))

(declare-fun lt!1809069 () Unit!116009)

(declare-fun Unit!116093 () Unit!116009)

(assert (=> b!4644478 (= lt!1809069 Unit!116093)))

(declare-fun bm!324282 () Bool)

(declare-fun lt!1809068 () ListMap!4489)

(declare-fun c!794719 () Bool)

(assert (=> bm!324282 (= call!324289 (forall!10967 (ite c!794719 (toList!5165 (ListMap!4490 Nil!51812)) (toList!5165 lt!1809068)) (ite c!794719 lambda!197180 lambda!197182)))))

(declare-fun b!4644479 () Bool)

(declare-fun res!1951225 () Bool)

(assert (=> b!4644479 (=> (not res!1951225) (not e!2897344))))

(assert (=> b!4644479 (= res!1951225 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197183))))

(declare-fun b!4644480 () Bool)

(declare-fun e!2897343 () Bool)

(assert (=> b!4644480 (= e!2897343 call!324287)))

(assert (=> d!1464595 e!2897344))

(declare-fun res!1951226 () Bool)

(assert (=> d!1464595 (=> (not res!1951226) (not e!2897344))))

(assert (=> d!1464595 (= res!1951226 (forall!10967 lt!1808650 lambda!197183))))

(assert (=> d!1464595 (= lt!1809075 e!2897342)))

(assert (=> d!1464595 (= c!794719 ((_ is Nil!51812) lt!1808650))))

(assert (=> d!1464595 (noDuplicateKeys!1610 lt!1808650)))

(assert (=> d!1464595 (= (addToMapMapFromBucket!1069 lt!1808650 (ListMap!4490 Nil!51812)) lt!1809075)))

(assert (=> b!4644476 (= e!2897342 lt!1809083)))

(assert (=> b!4644476 (= lt!1809068 (+!1960 (ListMap!4490 Nil!51812) (h!57932 lt!1808650)))))

(assert (=> b!4644476 (= lt!1809083 (addToMapMapFromBucket!1069 (t!359030 lt!1808650) (+!1960 (ListMap!4490 Nil!51812) (h!57932 lt!1808650))))))

(declare-fun lt!1809072 () Unit!116009)

(assert (=> b!4644476 (= lt!1809072 call!324288)))

(assert (=> b!4644476 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197181)))

(declare-fun lt!1809088 () Unit!116009)

(assert (=> b!4644476 (= lt!1809088 lt!1809072)))

(assert (=> b!4644476 (forall!10967 (toList!5165 lt!1809068) lambda!197182)))

(declare-fun lt!1809077 () Unit!116009)

(declare-fun Unit!116101 () Unit!116009)

(assert (=> b!4644476 (= lt!1809077 Unit!116101)))

(assert (=> b!4644476 (forall!10967 (t!359030 lt!1808650) lambda!197182)))

(declare-fun lt!1809087 () Unit!116009)

(declare-fun Unit!116103 () Unit!116009)

(assert (=> b!4644476 (= lt!1809087 Unit!116103)))

(declare-fun lt!1809080 () Unit!116009)

(declare-fun Unit!116104 () Unit!116009)

(assert (=> b!4644476 (= lt!1809080 Unit!116104)))

(declare-fun lt!1809074 () Unit!116009)

(assert (=> b!4644476 (= lt!1809074 (forallContained!3194 (toList!5165 lt!1809068) lambda!197182 (h!57932 lt!1808650)))))

(assert (=> b!4644476 (contains!14963 lt!1809068 (_1!29737 (h!57932 lt!1808650)))))

(declare-fun lt!1809086 () Unit!116009)

(declare-fun Unit!116106 () Unit!116009)

(assert (=> b!4644476 (= lt!1809086 Unit!116106)))

(assert (=> b!4644476 (contains!14963 lt!1809083 (_1!29737 (h!57932 lt!1808650)))))

(declare-fun lt!1809073 () Unit!116009)

(declare-fun Unit!116107 () Unit!116009)

(assert (=> b!4644476 (= lt!1809073 Unit!116107)))

(assert (=> b!4644476 (forall!10967 lt!1808650 lambda!197182)))

(declare-fun lt!1809081 () Unit!116009)

(declare-fun Unit!116109 () Unit!116009)

(assert (=> b!4644476 (= lt!1809081 Unit!116109)))

(assert (=> b!4644476 call!324289))

(declare-fun lt!1809084 () Unit!116009)

(declare-fun Unit!116110 () Unit!116009)

(assert (=> b!4644476 (= lt!1809084 Unit!116110)))

(declare-fun lt!1809082 () Unit!116009)

(declare-fun Unit!116111 () Unit!116009)

(assert (=> b!4644476 (= lt!1809082 Unit!116111)))

(declare-fun lt!1809076 () Unit!116009)

(assert (=> b!4644476 (= lt!1809076 (addForallContainsKeyThenBeforeAdding!575 (ListMap!4490 Nil!51812) lt!1809083 (_1!29737 (h!57932 lt!1808650)) (_2!29737 (h!57932 lt!1808650))))))

(assert (=> b!4644476 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197182)))

(declare-fun lt!1809078 () Unit!116009)

(assert (=> b!4644476 (= lt!1809078 lt!1809076)))

(assert (=> b!4644476 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197182)))

(declare-fun lt!1809079 () Unit!116009)

(declare-fun Unit!116112 () Unit!116009)

(assert (=> b!4644476 (= lt!1809079 Unit!116112)))

(declare-fun res!1951224 () Bool)

(assert (=> b!4644476 (= res!1951224 (forall!10967 lt!1808650 lambda!197182))))

(assert (=> b!4644476 (=> (not res!1951224) (not e!2897343))))

(assert (=> b!4644476 e!2897343))

(declare-fun lt!1809085 () Unit!116009)

(declare-fun Unit!116113 () Unit!116009)

(assert (=> b!4644476 (= lt!1809085 Unit!116113)))

(declare-fun bm!324283 () Bool)

(assert (=> bm!324283 (= call!324288 (lemmaContainsAllItsOwnKeys!576 (ListMap!4490 Nil!51812)))))

(declare-fun bm!324284 () Bool)

(assert (=> bm!324284 (= call!324287 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) (ite c!794719 lambda!197180 lambda!197182)))))

(assert (= (and d!1464595 c!794719) b!4644478))

(assert (= (and d!1464595 (not c!794719)) b!4644476))

(assert (= (and b!4644476 res!1951224) b!4644480))

(assert (= (or b!4644478 b!4644476) bm!324283))

(assert (= (or b!4644478 b!4644476) bm!324282))

(assert (= (or b!4644478 b!4644480) bm!324284))

(assert (= (and d!1464595 res!1951226) b!4644479))

(assert (= (and b!4644479 res!1951225) b!4644477))

(declare-fun m!5509277 () Bool)

(assert (=> b!4644477 m!5509277))

(declare-fun m!5509279 () Bool)

(assert (=> bm!324284 m!5509279))

(declare-fun m!5509281 () Bool)

(assert (=> b!4644479 m!5509281))

(declare-fun m!5509283 () Bool)

(assert (=> bm!324282 m!5509283))

(assert (=> bm!324283 m!5509183))

(declare-fun m!5509285 () Bool)

(assert (=> d!1464595 m!5509285))

(assert (=> d!1464595 m!5509005))

(declare-fun m!5509287 () Bool)

(assert (=> b!4644476 m!5509287))

(declare-fun m!5509289 () Bool)

(assert (=> b!4644476 m!5509289))

(declare-fun m!5509291 () Bool)

(assert (=> b!4644476 m!5509291))

(declare-fun m!5509293 () Bool)

(assert (=> b!4644476 m!5509293))

(assert (=> b!4644476 m!5509289))

(declare-fun m!5509295 () Bool)

(assert (=> b!4644476 m!5509295))

(assert (=> b!4644476 m!5509287))

(declare-fun m!5509297 () Bool)

(assert (=> b!4644476 m!5509297))

(declare-fun m!5509299 () Bool)

(assert (=> b!4644476 m!5509299))

(assert (=> b!4644476 m!5509295))

(declare-fun m!5509301 () Bool)

(assert (=> b!4644476 m!5509301))

(declare-fun m!5509303 () Bool)

(assert (=> b!4644476 m!5509303))

(declare-fun m!5509305 () Bool)

(assert (=> b!4644476 m!5509305))

(declare-fun m!5509307 () Bool)

(assert (=> b!4644476 m!5509307))

(assert (=> b!4644219 d!1464595))

(declare-fun d!1464597 () Bool)

(assert (=> d!1464597 (= (eq!901 (addToMapMapFromBucket!1069 (Cons!51812 lt!1808628 lt!1808631) (ListMap!4490 Nil!51812)) (+!1960 (addToMapMapFromBucket!1069 lt!1808631 (ListMap!4490 Nil!51812)) lt!1808628)) (= (content!8970 (toList!5165 (addToMapMapFromBucket!1069 (Cons!51812 lt!1808628 lt!1808631) (ListMap!4490 Nil!51812)))) (content!8970 (toList!5165 (+!1960 (addToMapMapFromBucket!1069 lt!1808631 (ListMap!4490 Nil!51812)) lt!1808628)))))))

(declare-fun bs!1035896 () Bool)

(assert (= bs!1035896 d!1464597))

(declare-fun m!5509309 () Bool)

(assert (=> bs!1035896 m!5509309))

(declare-fun m!5509311 () Bool)

(assert (=> bs!1035896 m!5509311))

(assert (=> b!4644219 d!1464597))

(declare-fun d!1464599 () Bool)

(declare-fun e!2897345 () Bool)

(assert (=> d!1464599 e!2897345))

(declare-fun res!1951227 () Bool)

(assert (=> d!1464599 (=> (not res!1951227) (not e!2897345))))

(declare-fun lt!1809091 () ListMap!4489)

(assert (=> d!1464599 (= res!1951227 (contains!14963 lt!1809091 (_1!29737 lt!1808655)))))

(declare-fun lt!1809090 () List!51936)

(assert (=> d!1464599 (= lt!1809091 (ListMap!4490 lt!1809090))))

(declare-fun lt!1809092 () Unit!116009)

(declare-fun lt!1809089 () Unit!116009)

(assert (=> d!1464599 (= lt!1809092 lt!1809089)))

(assert (=> d!1464599 (= (getValueByKey!1580 lt!1809090 (_1!29737 lt!1808655)) (Some!11791 (_2!29737 lt!1808655)))))

(assert (=> d!1464599 (= lt!1809089 (lemmaContainsTupThenGetReturnValue!910 lt!1809090 (_1!29737 lt!1808655) (_2!29737 lt!1808655)))))

(assert (=> d!1464599 (= lt!1809090 (insertNoDuplicatedKeys!418 (toList!5165 (addToMapMapFromBucket!1069 lt!1808650 (ListMap!4490 Nil!51812))) (_1!29737 lt!1808655) (_2!29737 lt!1808655)))))

(assert (=> d!1464599 (= (+!1960 (addToMapMapFromBucket!1069 lt!1808650 (ListMap!4490 Nil!51812)) lt!1808655) lt!1809091)))

(declare-fun b!4644481 () Bool)

(declare-fun res!1951228 () Bool)

(assert (=> b!4644481 (=> (not res!1951228) (not e!2897345))))

(assert (=> b!4644481 (= res!1951228 (= (getValueByKey!1580 (toList!5165 lt!1809091) (_1!29737 lt!1808655)) (Some!11791 (_2!29737 lt!1808655))))))

(declare-fun b!4644482 () Bool)

(assert (=> b!4644482 (= e!2897345 (contains!14967 (toList!5165 lt!1809091) lt!1808655))))

(assert (= (and d!1464599 res!1951227) b!4644481))

(assert (= (and b!4644481 res!1951228) b!4644482))

(declare-fun m!5509313 () Bool)

(assert (=> d!1464599 m!5509313))

(declare-fun m!5509315 () Bool)

(assert (=> d!1464599 m!5509315))

(declare-fun m!5509317 () Bool)

(assert (=> d!1464599 m!5509317))

(declare-fun m!5509319 () Bool)

(assert (=> d!1464599 m!5509319))

(declare-fun m!5509321 () Bool)

(assert (=> b!4644481 m!5509321))

(declare-fun m!5509323 () Bool)

(assert (=> b!4644482 m!5509323))

(assert (=> b!4644219 d!1464599))

(declare-fun bs!1035897 () Bool)

(declare-fun b!4644485 () Bool)

(assert (= bs!1035897 (and b!4644485 b!4644476)))

(declare-fun lambda!197184 () Int)

(assert (=> bs!1035897 (= lambda!197184 lambda!197181)))

(declare-fun bs!1035898 () Bool)

(assert (= bs!1035898 (and b!4644485 d!1464475)))

(assert (=> bs!1035898 (= (= (ListMap!4490 Nil!51812) lt!1808846) (= lambda!197184 lambda!197144))))

(declare-fun bs!1035899 () Bool)

(assert (= bs!1035899 (and b!4644485 b!4644478)))

(assert (=> bs!1035899 (= lambda!197184 lambda!197180)))

(declare-fun bs!1035900 () Bool)

(assert (= bs!1035900 (and b!4644485 b!4644407)))

(assert (=> bs!1035900 (= (= (ListMap!4490 Nil!51812) lt!1809008) (= lambda!197184 lambda!197173))))

(declare-fun bs!1035901 () Bool)

(assert (= bs!1035901 (and b!4644485 b!4644299)))

(assert (=> bs!1035901 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197184 lambda!197141))))

(declare-fun bs!1035902 () Bool)

(assert (= bs!1035902 (and b!4644485 b!4644297)))

(assert (=> bs!1035902 (= (= (ListMap!4490 Nil!51812) lt!1808854) (= lambda!197184 lambda!197143))))

(declare-fun bs!1035903 () Bool)

(assert (= bs!1035903 (and b!4644485 d!1464589)))

(assert (=> bs!1035903 (= (= (ListMap!4490 Nil!51812) lt!1809027) (= lambda!197184 lambda!197179))))

(declare-fun bs!1035904 () Bool)

(assert (= bs!1035904 (and b!4644485 b!4644422)))

(assert (=> bs!1035904 (= lambda!197184 lambda!197176)))

(declare-fun bs!1035905 () Bool)

(assert (= bs!1035905 (and b!4644485 b!4644409)))

(assert (=> bs!1035905 (= lambda!197184 lambda!197170)))

(declare-fun bs!1035906 () Bool)

(assert (= bs!1035906 (and b!4644485 b!4644420)))

(assert (=> bs!1035906 (= lambda!197184 lambda!197177)))

(declare-fun bs!1035907 () Bool)

(assert (= bs!1035907 (and b!4644485 d!1464459)))

(assert (=> bs!1035907 (not (= lambda!197184 lambda!197069))))

(assert (=> bs!1035897 (= (= (ListMap!4490 Nil!51812) lt!1809083) (= lambda!197184 lambda!197182))))

(declare-fun bs!1035908 () Bool)

(assert (= bs!1035908 (and b!4644485 d!1464595)))

(assert (=> bs!1035908 (= (= (ListMap!4490 Nil!51812) lt!1809075) (= lambda!197184 lambda!197183))))

(declare-fun bs!1035909 () Bool)

(assert (= bs!1035909 (and b!4644485 d!1464573)))

(assert (=> bs!1035909 (= (= (ListMap!4490 Nil!51812) lt!1809000) (= lambda!197184 lambda!197175))))

(assert (=> bs!1035900 (= lambda!197184 lambda!197172)))

(assert (=> bs!1035906 (= (= (ListMap!4490 Nil!51812) lt!1809035) (= lambda!197184 lambda!197178))))

(assert (=> bs!1035902 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197184 lambda!197142))))

(assert (=> b!4644485 true))

(declare-fun bs!1035910 () Bool)

(declare-fun b!4644483 () Bool)

(assert (= bs!1035910 (and b!4644483 b!4644476)))

(declare-fun lambda!197187 () Int)

(assert (=> bs!1035910 (= lambda!197187 lambda!197181)))

(declare-fun bs!1035911 () Bool)

(assert (= bs!1035911 (and b!4644483 d!1464475)))

(assert (=> bs!1035911 (= (= (ListMap!4490 Nil!51812) lt!1808846) (= lambda!197187 lambda!197144))))

(declare-fun bs!1035912 () Bool)

(assert (= bs!1035912 (and b!4644483 b!4644478)))

(assert (=> bs!1035912 (= lambda!197187 lambda!197180)))

(declare-fun bs!1035913 () Bool)

(assert (= bs!1035913 (and b!4644483 b!4644407)))

(assert (=> bs!1035913 (= (= (ListMap!4490 Nil!51812) lt!1809008) (= lambda!197187 lambda!197173))))

(declare-fun bs!1035914 () Bool)

(assert (= bs!1035914 (and b!4644483 b!4644485)))

(assert (=> bs!1035914 (= lambda!197187 lambda!197184)))

(declare-fun bs!1035915 () Bool)

(assert (= bs!1035915 (and b!4644483 b!4644299)))

(assert (=> bs!1035915 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197187 lambda!197141))))

(declare-fun bs!1035916 () Bool)

(assert (= bs!1035916 (and b!4644483 b!4644297)))

(assert (=> bs!1035916 (= (= (ListMap!4490 Nil!51812) lt!1808854) (= lambda!197187 lambda!197143))))

(declare-fun bs!1035917 () Bool)

(assert (= bs!1035917 (and b!4644483 d!1464589)))

(assert (=> bs!1035917 (= (= (ListMap!4490 Nil!51812) lt!1809027) (= lambda!197187 lambda!197179))))

(declare-fun bs!1035918 () Bool)

(assert (= bs!1035918 (and b!4644483 b!4644422)))

(assert (=> bs!1035918 (= lambda!197187 lambda!197176)))

(declare-fun bs!1035919 () Bool)

(assert (= bs!1035919 (and b!4644483 b!4644409)))

(assert (=> bs!1035919 (= lambda!197187 lambda!197170)))

(declare-fun bs!1035920 () Bool)

(assert (= bs!1035920 (and b!4644483 b!4644420)))

(assert (=> bs!1035920 (= lambda!197187 lambda!197177)))

(declare-fun bs!1035921 () Bool)

(assert (= bs!1035921 (and b!4644483 d!1464459)))

(assert (=> bs!1035921 (not (= lambda!197187 lambda!197069))))

(assert (=> bs!1035910 (= (= (ListMap!4490 Nil!51812) lt!1809083) (= lambda!197187 lambda!197182))))

(declare-fun bs!1035922 () Bool)

(assert (= bs!1035922 (and b!4644483 d!1464595)))

(assert (=> bs!1035922 (= (= (ListMap!4490 Nil!51812) lt!1809075) (= lambda!197187 lambda!197183))))

(declare-fun bs!1035923 () Bool)

(assert (= bs!1035923 (and b!4644483 d!1464573)))

(assert (=> bs!1035923 (= (= (ListMap!4490 Nil!51812) lt!1809000) (= lambda!197187 lambda!197175))))

(assert (=> bs!1035913 (= lambda!197187 lambda!197172)))

(assert (=> bs!1035920 (= (= (ListMap!4490 Nil!51812) lt!1809035) (= lambda!197187 lambda!197178))))

(assert (=> bs!1035916 (= (= (ListMap!4490 Nil!51812) lt!1808624) (= lambda!197187 lambda!197142))))

(assert (=> b!4644483 true))

(declare-fun lt!1809108 () ListMap!4489)

(declare-fun lambda!197190 () Int)

(assert (=> bs!1035910 (= (= lt!1809108 (ListMap!4490 Nil!51812)) (= lambda!197190 lambda!197181))))

(assert (=> bs!1035911 (= (= lt!1809108 lt!1808846) (= lambda!197190 lambda!197144))))

(assert (=> bs!1035912 (= (= lt!1809108 (ListMap!4490 Nil!51812)) (= lambda!197190 lambda!197180))))

(assert (=> bs!1035913 (= (= lt!1809108 lt!1809008) (= lambda!197190 lambda!197173))))

(assert (=> bs!1035914 (= (= lt!1809108 (ListMap!4490 Nil!51812)) (= lambda!197190 lambda!197184))))

(assert (=> bs!1035915 (= (= lt!1809108 lt!1808624) (= lambda!197190 lambda!197141))))

(assert (=> b!4644483 (= (= lt!1809108 (ListMap!4490 Nil!51812)) (= lambda!197190 lambda!197187))))

(assert (=> bs!1035916 (= (= lt!1809108 lt!1808854) (= lambda!197190 lambda!197143))))

(assert (=> bs!1035917 (= (= lt!1809108 lt!1809027) (= lambda!197190 lambda!197179))))

(assert (=> bs!1035918 (= (= lt!1809108 (ListMap!4490 Nil!51812)) (= lambda!197190 lambda!197176))))

(assert (=> bs!1035919 (= (= lt!1809108 (ListMap!4490 Nil!51812)) (= lambda!197190 lambda!197170))))

(assert (=> bs!1035920 (= (= lt!1809108 (ListMap!4490 Nil!51812)) (= lambda!197190 lambda!197177))))

(assert (=> bs!1035921 (not (= lambda!197190 lambda!197069))))

(assert (=> bs!1035910 (= (= lt!1809108 lt!1809083) (= lambda!197190 lambda!197182))))

(assert (=> bs!1035922 (= (= lt!1809108 lt!1809075) (= lambda!197190 lambda!197183))))

(assert (=> bs!1035923 (= (= lt!1809108 lt!1809000) (= lambda!197190 lambda!197175))))

(assert (=> bs!1035913 (= (= lt!1809108 (ListMap!4490 Nil!51812)) (= lambda!197190 lambda!197172))))

(assert (=> bs!1035920 (= (= lt!1809108 lt!1809035) (= lambda!197190 lambda!197178))))

(assert (=> bs!1035916 (= (= lt!1809108 lt!1808624) (= lambda!197190 lambda!197142))))

(assert (=> b!4644483 true))

(declare-fun bs!1035924 () Bool)

(declare-fun d!1464601 () Bool)

(assert (= bs!1035924 (and d!1464601 b!4644483)))

(declare-fun lt!1809100 () ListMap!4489)

(declare-fun lambda!197193 () Int)

(assert (=> bs!1035924 (= (= lt!1809100 lt!1809108) (= lambda!197193 lambda!197190))))

(declare-fun bs!1035925 () Bool)

(assert (= bs!1035925 (and d!1464601 b!4644476)))

(assert (=> bs!1035925 (= (= lt!1809100 (ListMap!4490 Nil!51812)) (= lambda!197193 lambda!197181))))

(declare-fun bs!1035926 () Bool)

(assert (= bs!1035926 (and d!1464601 d!1464475)))

(assert (=> bs!1035926 (= (= lt!1809100 lt!1808846) (= lambda!197193 lambda!197144))))

(declare-fun bs!1035927 () Bool)

(assert (= bs!1035927 (and d!1464601 b!4644478)))

(assert (=> bs!1035927 (= (= lt!1809100 (ListMap!4490 Nil!51812)) (= lambda!197193 lambda!197180))))

(declare-fun bs!1035928 () Bool)

(assert (= bs!1035928 (and d!1464601 b!4644407)))

(assert (=> bs!1035928 (= (= lt!1809100 lt!1809008) (= lambda!197193 lambda!197173))))

(declare-fun bs!1035929 () Bool)

(assert (= bs!1035929 (and d!1464601 b!4644485)))

(assert (=> bs!1035929 (= (= lt!1809100 (ListMap!4490 Nil!51812)) (= lambda!197193 lambda!197184))))

(declare-fun bs!1035930 () Bool)

(assert (= bs!1035930 (and d!1464601 b!4644299)))

(assert (=> bs!1035930 (= (= lt!1809100 lt!1808624) (= lambda!197193 lambda!197141))))

(assert (=> bs!1035924 (= (= lt!1809100 (ListMap!4490 Nil!51812)) (= lambda!197193 lambda!197187))))

(declare-fun bs!1035931 () Bool)

(assert (= bs!1035931 (and d!1464601 b!4644297)))

(assert (=> bs!1035931 (= (= lt!1809100 lt!1808854) (= lambda!197193 lambda!197143))))

(declare-fun bs!1035932 () Bool)

(assert (= bs!1035932 (and d!1464601 d!1464589)))

(assert (=> bs!1035932 (= (= lt!1809100 lt!1809027) (= lambda!197193 lambda!197179))))

(declare-fun bs!1035933 () Bool)

(assert (= bs!1035933 (and d!1464601 b!4644422)))

(assert (=> bs!1035933 (= (= lt!1809100 (ListMap!4490 Nil!51812)) (= lambda!197193 lambda!197176))))

(declare-fun bs!1035934 () Bool)

(assert (= bs!1035934 (and d!1464601 b!4644409)))

(assert (=> bs!1035934 (= (= lt!1809100 (ListMap!4490 Nil!51812)) (= lambda!197193 lambda!197170))))

(declare-fun bs!1035935 () Bool)

(assert (= bs!1035935 (and d!1464601 b!4644420)))

(assert (=> bs!1035935 (= (= lt!1809100 (ListMap!4490 Nil!51812)) (= lambda!197193 lambda!197177))))

(declare-fun bs!1035936 () Bool)

(assert (= bs!1035936 (and d!1464601 d!1464459)))

(assert (=> bs!1035936 (not (= lambda!197193 lambda!197069))))

(assert (=> bs!1035925 (= (= lt!1809100 lt!1809083) (= lambda!197193 lambda!197182))))

(declare-fun bs!1035937 () Bool)

(assert (= bs!1035937 (and d!1464601 d!1464595)))

(assert (=> bs!1035937 (= (= lt!1809100 lt!1809075) (= lambda!197193 lambda!197183))))

(declare-fun bs!1035938 () Bool)

(assert (= bs!1035938 (and d!1464601 d!1464573)))

(assert (=> bs!1035938 (= (= lt!1809100 lt!1809000) (= lambda!197193 lambda!197175))))

(assert (=> bs!1035928 (= (= lt!1809100 (ListMap!4490 Nil!51812)) (= lambda!197193 lambda!197172))))

(assert (=> bs!1035935 (= (= lt!1809100 lt!1809035) (= lambda!197193 lambda!197178))))

(assert (=> bs!1035931 (= (= lt!1809100 lt!1808624) (= lambda!197193 lambda!197142))))

(assert (=> d!1464601 true))

(declare-fun b!4644484 () Bool)

(declare-fun e!2897348 () Bool)

(assert (=> b!4644484 (= e!2897348 (invariantList!1274 (toList!5165 lt!1809100)))))

(declare-fun e!2897346 () ListMap!4489)

(assert (=> b!4644485 (= e!2897346 (ListMap!4490 Nil!51812))))

(declare-fun lt!1809096 () Unit!116009)

(declare-fun call!324291 () Unit!116009)

(assert (=> b!4644485 (= lt!1809096 call!324291)))

(declare-fun call!324290 () Bool)

(assert (=> b!4644485 call!324290))

(declare-fun lt!1809095 () Unit!116009)

(assert (=> b!4644485 (= lt!1809095 lt!1809096)))

(declare-fun call!324292 () Bool)

(assert (=> b!4644485 call!324292))

(declare-fun lt!1809094 () Unit!116009)

(declare-fun Unit!116116 () Unit!116009)

(assert (=> b!4644485 (= lt!1809094 Unit!116116)))

(declare-fun lt!1809093 () ListMap!4489)

(declare-fun bm!324285 () Bool)

(declare-fun c!794720 () Bool)

(assert (=> bm!324285 (= call!324292 (forall!10967 (ite c!794720 (toList!5165 (ListMap!4490 Nil!51812)) (toList!5165 lt!1809093)) (ite c!794720 lambda!197184 lambda!197190)))))

(declare-fun b!4644486 () Bool)

(declare-fun res!1951230 () Bool)

(assert (=> b!4644486 (=> (not res!1951230) (not e!2897348))))

(assert (=> b!4644486 (= res!1951230 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197193))))

(declare-fun b!4644487 () Bool)

(declare-fun e!2897347 () Bool)

(assert (=> b!4644487 (= e!2897347 call!324290)))

(assert (=> d!1464601 e!2897348))

(declare-fun res!1951231 () Bool)

(assert (=> d!1464601 (=> (not res!1951231) (not e!2897348))))

(assert (=> d!1464601 (= res!1951231 (forall!10967 (Cons!51812 lt!1808655 lt!1808650) lambda!197193))))

(assert (=> d!1464601 (= lt!1809100 e!2897346)))

(assert (=> d!1464601 (= c!794720 ((_ is Nil!51812) (Cons!51812 lt!1808655 lt!1808650)))))

(assert (=> d!1464601 (noDuplicateKeys!1610 (Cons!51812 lt!1808655 lt!1808650))))

(assert (=> d!1464601 (= (addToMapMapFromBucket!1069 (Cons!51812 lt!1808655 lt!1808650) (ListMap!4490 Nil!51812)) lt!1809100)))

(assert (=> b!4644483 (= e!2897346 lt!1809108)))

(assert (=> b!4644483 (= lt!1809093 (+!1960 (ListMap!4490 Nil!51812) (h!57932 (Cons!51812 lt!1808655 lt!1808650))))))

(assert (=> b!4644483 (= lt!1809108 (addToMapMapFromBucket!1069 (t!359030 (Cons!51812 lt!1808655 lt!1808650)) (+!1960 (ListMap!4490 Nil!51812) (h!57932 (Cons!51812 lt!1808655 lt!1808650)))))))

(declare-fun lt!1809097 () Unit!116009)

(assert (=> b!4644483 (= lt!1809097 call!324291)))

(assert (=> b!4644483 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197187)))

(declare-fun lt!1809113 () Unit!116009)

(assert (=> b!4644483 (= lt!1809113 lt!1809097)))

(assert (=> b!4644483 (forall!10967 (toList!5165 lt!1809093) lambda!197190)))

(declare-fun lt!1809102 () Unit!116009)

(declare-fun Unit!116117 () Unit!116009)

(assert (=> b!4644483 (= lt!1809102 Unit!116117)))

(assert (=> b!4644483 (forall!10967 (t!359030 (Cons!51812 lt!1808655 lt!1808650)) lambda!197190)))

(declare-fun lt!1809112 () Unit!116009)

(declare-fun Unit!116118 () Unit!116009)

(assert (=> b!4644483 (= lt!1809112 Unit!116118)))

(declare-fun lt!1809105 () Unit!116009)

(declare-fun Unit!116119 () Unit!116009)

(assert (=> b!4644483 (= lt!1809105 Unit!116119)))

(declare-fun lt!1809099 () Unit!116009)

(assert (=> b!4644483 (= lt!1809099 (forallContained!3194 (toList!5165 lt!1809093) lambda!197190 (h!57932 (Cons!51812 lt!1808655 lt!1808650))))))

(assert (=> b!4644483 (contains!14963 lt!1809093 (_1!29737 (h!57932 (Cons!51812 lt!1808655 lt!1808650))))))

(declare-fun lt!1809111 () Unit!116009)

(declare-fun Unit!116120 () Unit!116009)

(assert (=> b!4644483 (= lt!1809111 Unit!116120)))

(assert (=> b!4644483 (contains!14963 lt!1809108 (_1!29737 (h!57932 (Cons!51812 lt!1808655 lt!1808650))))))

(declare-fun lt!1809098 () Unit!116009)

(declare-fun Unit!116121 () Unit!116009)

(assert (=> b!4644483 (= lt!1809098 Unit!116121)))

(assert (=> b!4644483 (forall!10967 (Cons!51812 lt!1808655 lt!1808650) lambda!197190)))

(declare-fun lt!1809106 () Unit!116009)

(declare-fun Unit!116122 () Unit!116009)

(assert (=> b!4644483 (= lt!1809106 Unit!116122)))

(assert (=> b!4644483 call!324292))

(declare-fun lt!1809109 () Unit!116009)

(declare-fun Unit!116123 () Unit!116009)

(assert (=> b!4644483 (= lt!1809109 Unit!116123)))

(declare-fun lt!1809107 () Unit!116009)

(declare-fun Unit!116124 () Unit!116009)

(assert (=> b!4644483 (= lt!1809107 Unit!116124)))

(declare-fun lt!1809101 () Unit!116009)

(assert (=> b!4644483 (= lt!1809101 (addForallContainsKeyThenBeforeAdding!575 (ListMap!4490 Nil!51812) lt!1809108 (_1!29737 (h!57932 (Cons!51812 lt!1808655 lt!1808650))) (_2!29737 (h!57932 (Cons!51812 lt!1808655 lt!1808650)))))))

(assert (=> b!4644483 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197190)))

(declare-fun lt!1809103 () Unit!116009)

(assert (=> b!4644483 (= lt!1809103 lt!1809101)))

(assert (=> b!4644483 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) lambda!197190)))

(declare-fun lt!1809104 () Unit!116009)

(declare-fun Unit!116125 () Unit!116009)

(assert (=> b!4644483 (= lt!1809104 Unit!116125)))

(declare-fun res!1951229 () Bool)

(assert (=> b!4644483 (= res!1951229 (forall!10967 (Cons!51812 lt!1808655 lt!1808650) lambda!197190))))

(assert (=> b!4644483 (=> (not res!1951229) (not e!2897347))))

(assert (=> b!4644483 e!2897347))

(declare-fun lt!1809110 () Unit!116009)

(declare-fun Unit!116126 () Unit!116009)

(assert (=> b!4644483 (= lt!1809110 Unit!116126)))

(declare-fun bm!324286 () Bool)

(assert (=> bm!324286 (= call!324291 (lemmaContainsAllItsOwnKeys!576 (ListMap!4490 Nil!51812)))))

(declare-fun bm!324287 () Bool)

(assert (=> bm!324287 (= call!324290 (forall!10967 (toList!5165 (ListMap!4490 Nil!51812)) (ite c!794720 lambda!197184 lambda!197190)))))

(assert (= (and d!1464601 c!794720) b!4644485))

(assert (= (and d!1464601 (not c!794720)) b!4644483))

(assert (= (and b!4644483 res!1951229) b!4644487))

(assert (= (or b!4644485 b!4644483) bm!324286))

(assert (= (or b!4644485 b!4644483) bm!324285))

(assert (= (or b!4644485 b!4644487) bm!324287))

(assert (= (and d!1464601 res!1951231) b!4644486))

(assert (= (and b!4644486 res!1951230) b!4644484))

(declare-fun m!5509325 () Bool)

(assert (=> b!4644484 m!5509325))

(declare-fun m!5509327 () Bool)

(assert (=> bm!324287 m!5509327))

(declare-fun m!5509329 () Bool)

(assert (=> b!4644486 m!5509329))

(declare-fun m!5509331 () Bool)

(assert (=> bm!324285 m!5509331))

(assert (=> bm!324286 m!5509183))

(declare-fun m!5509333 () Bool)

(assert (=> d!1464601 m!5509333))

(declare-fun m!5509335 () Bool)

(assert (=> d!1464601 m!5509335))

(declare-fun m!5509337 () Bool)

(assert (=> b!4644483 m!5509337))

(declare-fun m!5509339 () Bool)

(assert (=> b!4644483 m!5509339))

(declare-fun m!5509341 () Bool)

(assert (=> b!4644483 m!5509341))

(declare-fun m!5509343 () Bool)

(assert (=> b!4644483 m!5509343))

(assert (=> b!4644483 m!5509339))

(declare-fun m!5509345 () Bool)

(assert (=> b!4644483 m!5509345))

(assert (=> b!4644483 m!5509337))

(declare-fun m!5509347 () Bool)

(assert (=> b!4644483 m!5509347))

(declare-fun m!5509349 () Bool)

(assert (=> b!4644483 m!5509349))

(assert (=> b!4644483 m!5509345))

(declare-fun m!5509351 () Bool)

(assert (=> b!4644483 m!5509351))

(declare-fun m!5509353 () Bool)

(assert (=> b!4644483 m!5509353))

(declare-fun m!5509355 () Bool)

(assert (=> b!4644483 m!5509355))

(declare-fun m!5509357 () Bool)

(assert (=> b!4644483 m!5509357))

(assert (=> b!4644219 d!1464601))

(declare-fun d!1464603 () Bool)

(assert (=> d!1464603 (= (eq!901 lt!1808647 (+!1960 lt!1808639 lt!1808655)) (= (content!8970 (toList!5165 lt!1808647)) (content!8970 (toList!5165 (+!1960 lt!1808639 lt!1808655)))))))

(declare-fun bs!1035947 () Bool)

(assert (= bs!1035947 d!1464603))

(assert (=> bs!1035947 m!5508875))

(declare-fun m!5509359 () Bool)

(assert (=> bs!1035947 m!5509359))

(assert (=> b!4644209 d!1464603))

(declare-fun d!1464605 () Bool)

(declare-fun e!2897355 () Bool)

(assert (=> d!1464605 e!2897355))

(declare-fun res!1951244 () Bool)

(assert (=> d!1464605 (=> (not res!1951244) (not e!2897355))))

(declare-fun lt!1809140 () ListMap!4489)

(assert (=> d!1464605 (= res!1951244 (contains!14963 lt!1809140 (_1!29737 lt!1808655)))))

(declare-fun lt!1809139 () List!51936)

(assert (=> d!1464605 (= lt!1809140 (ListMap!4490 lt!1809139))))

(declare-fun lt!1809141 () Unit!116009)

(declare-fun lt!1809138 () Unit!116009)

(assert (=> d!1464605 (= lt!1809141 lt!1809138)))

(assert (=> d!1464605 (= (getValueByKey!1580 lt!1809139 (_1!29737 lt!1808655)) (Some!11791 (_2!29737 lt!1808655)))))

(assert (=> d!1464605 (= lt!1809138 (lemmaContainsTupThenGetReturnValue!910 lt!1809139 (_1!29737 lt!1808655) (_2!29737 lt!1808655)))))

(assert (=> d!1464605 (= lt!1809139 (insertNoDuplicatedKeys!418 (toList!5165 lt!1808639) (_1!29737 lt!1808655) (_2!29737 lt!1808655)))))

(assert (=> d!1464605 (= (+!1960 lt!1808639 lt!1808655) lt!1809140)))

(declare-fun b!4644500 () Bool)

(declare-fun res!1951245 () Bool)

(assert (=> b!4644500 (=> (not res!1951245) (not e!2897355))))

(assert (=> b!4644500 (= res!1951245 (= (getValueByKey!1580 (toList!5165 lt!1809140) (_1!29737 lt!1808655)) (Some!11791 (_2!29737 lt!1808655))))))

(declare-fun b!4644501 () Bool)

(assert (=> b!4644501 (= e!2897355 (contains!14967 (toList!5165 lt!1809140) lt!1808655))))

(assert (= (and d!1464605 res!1951244) b!4644500))

(assert (= (and b!4644500 res!1951245) b!4644501))

(declare-fun m!5509361 () Bool)

(assert (=> d!1464605 m!5509361))

(declare-fun m!5509363 () Bool)

(assert (=> d!1464605 m!5509363))

(declare-fun m!5509365 () Bool)

(assert (=> d!1464605 m!5509365))

(declare-fun m!5509367 () Bool)

(assert (=> d!1464605 m!5509367))

(declare-fun m!5509369 () Bool)

(assert (=> b!4644500 m!5509369))

(declare-fun m!5509371 () Bool)

(assert (=> b!4644501 m!5509371))

(assert (=> b!4644209 d!1464605))

(declare-fun bs!1035948 () Bool)

(declare-fun d!1464607 () Bool)

(assert (= bs!1035948 (and d!1464607 d!1464495)))

(declare-fun lambda!197195 () Int)

(assert (=> bs!1035948 (= lambda!197195 lambda!197150)))

(declare-fun bs!1035949 () Bool)

(assert (= bs!1035949 (and d!1464607 b!4644215)))

(assert (=> bs!1035949 (= lambda!197195 lambda!197066)))

(declare-fun bs!1035950 () Bool)

(assert (= bs!1035950 (and d!1464607 d!1464549)))

(assert (=> bs!1035950 (= lambda!197195 lambda!197164)))

(declare-fun bs!1035951 () Bool)

(assert (= bs!1035951 (and d!1464607 d!1464541)))

(assert (=> bs!1035951 (= lambda!197195 lambda!197163)))

(declare-fun bs!1035952 () Bool)

(assert (= bs!1035952 (and d!1464607 d!1464553)))

(assert (=> bs!1035952 (= lambda!197195 lambda!197168)))

(declare-fun lt!1809142 () ListMap!4489)

(assert (=> d!1464607 (invariantList!1274 (toList!5165 lt!1809142))))

(declare-fun e!2897356 () ListMap!4489)

(assert (=> d!1464607 (= lt!1809142 e!2897356)))

(declare-fun c!794721 () Bool)

(assert (=> d!1464607 (= c!794721 ((_ is Cons!51813) (Cons!51813 (tuple2!52889 hash!414 lt!1808650) Nil!51813)))))

(assert (=> d!1464607 (forall!10968 (Cons!51813 (tuple2!52889 hash!414 lt!1808650) Nil!51813) lambda!197195)))

(assert (=> d!1464607 (= (extractMap!1666 (Cons!51813 (tuple2!52889 hash!414 lt!1808650) Nil!51813)) lt!1809142)))

(declare-fun b!4644502 () Bool)

(assert (=> b!4644502 (= e!2897356 (addToMapMapFromBucket!1069 (_2!29738 (h!57933 (Cons!51813 (tuple2!52889 hash!414 lt!1808650) Nil!51813))) (extractMap!1666 (t!359031 (Cons!51813 (tuple2!52889 hash!414 lt!1808650) Nil!51813)))))))

(declare-fun b!4644503 () Bool)

(assert (=> b!4644503 (= e!2897356 (ListMap!4490 Nil!51812))))

(assert (= (and d!1464607 c!794721) b!4644502))

(assert (= (and d!1464607 (not c!794721)) b!4644503))

(declare-fun m!5509401 () Bool)

(assert (=> d!1464607 m!5509401))

(declare-fun m!5509403 () Bool)

(assert (=> d!1464607 m!5509403))

(declare-fun m!5509405 () Bool)

(assert (=> b!4644502 m!5509405))

(assert (=> b!4644502 m!5509405))

(declare-fun m!5509407 () Bool)

(assert (=> b!4644502 m!5509407))

(assert (=> b!4644209 d!1464607))

(declare-fun bs!1035953 () Bool)

(declare-fun d!1464611 () Bool)

(assert (= bs!1035953 (and d!1464611 b!4644215)))

(declare-fun lambda!197196 () Int)

(assert (=> bs!1035953 (= lambda!197196 lambda!197066)))

(declare-fun bs!1035954 () Bool)

(assert (= bs!1035954 (and d!1464611 d!1464549)))

(assert (=> bs!1035954 (= lambda!197196 lambda!197164)))

(declare-fun bs!1035955 () Bool)

(assert (= bs!1035955 (and d!1464611 d!1464495)))

(assert (=> bs!1035955 (= lambda!197196 lambda!197150)))

(declare-fun bs!1035956 () Bool)

(assert (= bs!1035956 (and d!1464611 d!1464607)))

(assert (=> bs!1035956 (= lambda!197196 lambda!197195)))

(declare-fun bs!1035957 () Bool)

(assert (= bs!1035957 (and d!1464611 d!1464541)))

(assert (=> bs!1035957 (= lambda!197196 lambda!197163)))

(declare-fun bs!1035959 () Bool)

(assert (= bs!1035959 (and d!1464611 d!1464553)))

(assert (=> bs!1035959 (= lambda!197196 lambda!197168)))

(declare-fun lt!1809143 () ListMap!4489)

(assert (=> d!1464611 (invariantList!1274 (toList!5165 lt!1809143))))

(declare-fun e!2897357 () ListMap!4489)

(assert (=> d!1464611 (= lt!1809143 e!2897357)))

(declare-fun c!794722 () Bool)

(assert (=> d!1464611 (= c!794722 ((_ is Cons!51813) (Cons!51813 (tuple2!52889 hash!414 newBucket!224) Nil!51813)))))

(assert (=> d!1464611 (forall!10968 (Cons!51813 (tuple2!52889 hash!414 newBucket!224) Nil!51813) lambda!197196)))

(assert (=> d!1464611 (= (extractMap!1666 (Cons!51813 (tuple2!52889 hash!414 newBucket!224) Nil!51813)) lt!1809143)))

(declare-fun b!4644504 () Bool)

(assert (=> b!4644504 (= e!2897357 (addToMapMapFromBucket!1069 (_2!29738 (h!57933 (Cons!51813 (tuple2!52889 hash!414 newBucket!224) Nil!51813))) (extractMap!1666 (t!359031 (Cons!51813 (tuple2!52889 hash!414 newBucket!224) Nil!51813)))))))

(declare-fun b!4644505 () Bool)

(assert (=> b!4644505 (= e!2897357 (ListMap!4490 Nil!51812))))

(assert (= (and d!1464611 c!794722) b!4644504))

(assert (= (and d!1464611 (not c!794722)) b!4644505))

(declare-fun m!5509413 () Bool)

(assert (=> d!1464611 m!5509413))

(declare-fun m!5509415 () Bool)

(assert (=> d!1464611 m!5509415))

(declare-fun m!5509417 () Bool)

(assert (=> b!4644504 m!5509417))

(assert (=> b!4644504 m!5509417))

(declare-fun m!5509419 () Bool)

(assert (=> b!4644504 m!5509419))

(assert (=> b!4644209 d!1464611))

(declare-fun d!1464615 () Bool)

(declare-fun e!2897368 () Bool)

(assert (=> d!1464615 e!2897368))

(declare-fun res!1951254 () Bool)

(assert (=> d!1464615 (=> res!1951254 e!2897368)))

(declare-fun lt!1809161 () Bool)

(assert (=> d!1464615 (= res!1951254 (not lt!1809161))))

(declare-fun lt!1809159 () Bool)

(assert (=> d!1464615 (= lt!1809161 lt!1809159)))

(declare-fun lt!1809158 () Unit!116009)

(declare-fun e!2897369 () Unit!116009)

(assert (=> d!1464615 (= lt!1809158 e!2897369)))

(declare-fun c!794725 () Bool)

(assert (=> d!1464615 (= c!794725 lt!1809159)))

(declare-fun containsKey!2671 (List!51937 (_ BitVec 64)) Bool)

(assert (=> d!1464615 (= lt!1809159 (containsKey!2671 (toList!5166 lt!1808634) lt!1808627))))

(assert (=> d!1464615 (= (contains!14965 lt!1808634 lt!1808627) lt!1809161)))

(declare-fun b!4644519 () Bool)

(declare-fun lt!1809160 () Unit!116009)

(assert (=> b!4644519 (= e!2897369 lt!1809160)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1483 (List!51937 (_ BitVec 64)) Unit!116009)

(assert (=> b!4644519 (= lt!1809160 (lemmaContainsKeyImpliesGetValueByKeyDefined!1483 (toList!5166 lt!1808634) lt!1808627))))

(declare-datatypes ((Option!11793 0))(
  ( (None!11792) (Some!11792 (v!46042 List!51936)) )
))
(declare-fun isDefined!9058 (Option!11793) Bool)

(declare-fun getValueByKey!1581 (List!51937 (_ BitVec 64)) Option!11793)

(assert (=> b!4644519 (isDefined!9058 (getValueByKey!1581 (toList!5166 lt!1808634) lt!1808627))))

(declare-fun b!4644520 () Bool)

(declare-fun Unit!116127 () Unit!116009)

(assert (=> b!4644520 (= e!2897369 Unit!116127)))

(declare-fun b!4644521 () Bool)

(assert (=> b!4644521 (= e!2897368 (isDefined!9058 (getValueByKey!1581 (toList!5166 lt!1808634) lt!1808627)))))

(assert (= (and d!1464615 c!794725) b!4644519))

(assert (= (and d!1464615 (not c!794725)) b!4644520))

(assert (= (and d!1464615 (not res!1951254)) b!4644521))

(declare-fun m!5509429 () Bool)

(assert (=> d!1464615 m!5509429))

(declare-fun m!5509431 () Bool)

(assert (=> b!4644519 m!5509431))

(declare-fun m!5509433 () Bool)

(assert (=> b!4644519 m!5509433))

(assert (=> b!4644519 m!5509433))

(declare-fun m!5509435 () Bool)

(assert (=> b!4644519 m!5509435))

(assert (=> b!4644521 m!5509433))

(assert (=> b!4644521 m!5509433))

(assert (=> b!4644521 m!5509435))

(assert (=> b!4644215 d!1464615))

(declare-fun d!1464623 () Bool)

(assert (=> d!1464623 (containsKey!2668 oldBucket!40 key!4968)))

(declare-fun lt!1809167 () Unit!116009)

(declare-fun choose!31885 (List!51936 K!13175 Hashable!6007) Unit!116009)

(assert (=> d!1464623 (= lt!1809167 (choose!31885 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1464623 (noDuplicateKeys!1610 oldBucket!40)))

(assert (=> d!1464623 (= (lemmaGetPairDefinedThenContainsKey!124 oldBucket!40 key!4968 hashF!1389) lt!1809167)))

(declare-fun bs!1035962 () Bool)

(assert (= bs!1035962 d!1464623))

(assert (=> bs!1035962 m!5508553))

(declare-fun m!5509443 () Bool)

(assert (=> bs!1035962 m!5509443))

(assert (=> bs!1035962 m!5508499))

(assert (=> b!4644215 d!1464623))

(declare-fun d!1464627 () Bool)

(declare-fun lt!1809170 () Bool)

(declare-fun content!8972 (List!51937) (InoxSet tuple2!52888))

(assert (=> d!1464627 (= lt!1809170 (select (content!8972 lt!1808656) lt!1808644))))

(declare-fun e!2897380 () Bool)

(assert (=> d!1464627 (= lt!1809170 e!2897380)))

(declare-fun res!1951264 () Bool)

(assert (=> d!1464627 (=> (not res!1951264) (not e!2897380))))

(assert (=> d!1464627 (= res!1951264 ((_ is Cons!51813) lt!1808656))))

(assert (=> d!1464627 (= (contains!14964 lt!1808656 lt!1808644) lt!1809170)))

(declare-fun b!4644531 () Bool)

(declare-fun e!2897379 () Bool)

(assert (=> b!4644531 (= e!2897380 e!2897379)))

(declare-fun res!1951265 () Bool)

(assert (=> b!4644531 (=> res!1951265 e!2897379)))

(assert (=> b!4644531 (= res!1951265 (= (h!57933 lt!1808656) lt!1808644))))

(declare-fun b!4644532 () Bool)

(assert (=> b!4644532 (= e!2897379 (contains!14964 (t!359031 lt!1808656) lt!1808644))))

(assert (= (and d!1464627 res!1951264) b!4644531))

(assert (= (and b!4644531 (not res!1951265)) b!4644532))

(declare-fun m!5509445 () Bool)

(assert (=> d!1464627 m!5509445))

(declare-fun m!5509447 () Bool)

(assert (=> d!1464627 m!5509447))

(declare-fun m!5509449 () Bool)

(assert (=> b!4644532 m!5509449))

(assert (=> b!4644215 d!1464627))

(declare-fun d!1464631 () Bool)

(declare-fun res!1951270 () Bool)

(declare-fun e!2897385 () Bool)

(assert (=> d!1464631 (=> res!1951270 e!2897385)))

(assert (=> d!1464631 (= res!1951270 (and ((_ is Cons!51812) (t!359030 oldBucket!40)) (= (_1!29737 (h!57932 (t!359030 oldBucket!40))) key!4968)))))

(assert (=> d!1464631 (= (containsKey!2668 (t!359030 oldBucket!40) key!4968) e!2897385)))

(declare-fun b!4644537 () Bool)

(declare-fun e!2897386 () Bool)

(assert (=> b!4644537 (= e!2897385 e!2897386)))

(declare-fun res!1951271 () Bool)

(assert (=> b!4644537 (=> (not res!1951271) (not e!2897386))))

(assert (=> b!4644537 (= res!1951271 ((_ is Cons!51812) (t!359030 oldBucket!40)))))

(declare-fun b!4644538 () Bool)

(assert (=> b!4644538 (= e!2897386 (containsKey!2668 (t!359030 (t!359030 oldBucket!40)) key!4968))))

(assert (= (and d!1464631 (not res!1951270)) b!4644537))

(assert (= (and b!4644537 res!1951271) b!4644538))

(declare-fun m!5509451 () Bool)

(assert (=> b!4644538 m!5509451))

(assert (=> b!4644215 d!1464631))

(declare-fun b!4644561 () Bool)

(declare-fun e!2897403 () Bool)

(declare-fun lt!1809179 () Option!11790)

(declare-fun get!17248 (Option!11790) tuple2!52886)

(assert (=> b!4644561 (= e!2897403 (contains!14967 lt!1808645 (get!17248 lt!1809179)))))

(declare-fun b!4644562 () Bool)

(declare-fun e!2897405 () Option!11790)

(assert (=> b!4644562 (= e!2897405 (Some!11789 (h!57932 lt!1808645)))))

(declare-fun b!4644563 () Bool)

(declare-fun e!2897406 () Bool)

(assert (=> b!4644563 (= e!2897406 e!2897403)))

(declare-fun res!1951288 () Bool)

(assert (=> b!4644563 (=> (not res!1951288) (not e!2897403))))

(assert (=> b!4644563 (= res!1951288 (isDefined!9055 lt!1809179))))

(declare-fun b!4644564 () Bool)

(declare-fun e!2897407 () Option!11790)

(assert (=> b!4644564 (= e!2897407 None!11789)))

(declare-fun d!1464633 () Bool)

(assert (=> d!1464633 e!2897406))

(declare-fun res!1951287 () Bool)

(assert (=> d!1464633 (=> res!1951287 e!2897406)))

(declare-fun e!2897404 () Bool)

(assert (=> d!1464633 (= res!1951287 e!2897404)))

(declare-fun res!1951286 () Bool)

(assert (=> d!1464633 (=> (not res!1951286) (not e!2897404))))

(declare-fun isEmpty!28990 (Option!11790) Bool)

(assert (=> d!1464633 (= res!1951286 (isEmpty!28990 lt!1809179))))

(assert (=> d!1464633 (= lt!1809179 e!2897405)))

(declare-fun c!794730 () Bool)

(assert (=> d!1464633 (= c!794730 (and ((_ is Cons!51812) lt!1808645) (= (_1!29737 (h!57932 lt!1808645)) key!4968)))))

(assert (=> d!1464633 (noDuplicateKeys!1610 lt!1808645)))

(assert (=> d!1464633 (= (getPair!370 lt!1808645 key!4968) lt!1809179)))

(declare-fun b!4644565 () Bool)

(assert (=> b!4644565 (= e!2897405 e!2897407)))

(declare-fun c!794731 () Bool)

(assert (=> b!4644565 (= c!794731 ((_ is Cons!51812) lt!1808645))))

(declare-fun b!4644566 () Bool)

(assert (=> b!4644566 (= e!2897407 (getPair!370 (t!359030 lt!1808645) key!4968))))

(declare-fun b!4644567 () Bool)

(declare-fun res!1951289 () Bool)

(assert (=> b!4644567 (=> (not res!1951289) (not e!2897403))))

(assert (=> b!4644567 (= res!1951289 (= (_1!29737 (get!17248 lt!1809179)) key!4968))))

(declare-fun b!4644568 () Bool)

(assert (=> b!4644568 (= e!2897404 (not (containsKey!2668 lt!1808645 key!4968)))))

(assert (= (and d!1464633 c!794730) b!4644562))

(assert (= (and d!1464633 (not c!794730)) b!4644565))

(assert (= (and b!4644565 c!794731) b!4644566))

(assert (= (and b!4644565 (not c!794731)) b!4644564))

(assert (= (and d!1464633 res!1951286) b!4644568))

(assert (= (and d!1464633 (not res!1951287)) b!4644563))

(assert (= (and b!4644563 res!1951288) b!4644567))

(assert (= (and b!4644567 res!1951289) b!4644561))

(declare-fun m!5509463 () Bool)

(assert (=> d!1464633 m!5509463))

(declare-fun m!5509465 () Bool)

(assert (=> d!1464633 m!5509465))

(declare-fun m!5509467 () Bool)

(assert (=> b!4644566 m!5509467))

(declare-fun m!5509469 () Bool)

(assert (=> b!4644563 m!5509469))

(declare-fun m!5509471 () Bool)

(assert (=> b!4644568 m!5509471))

(declare-fun m!5509473 () Bool)

(assert (=> b!4644561 m!5509473))

(assert (=> b!4644561 m!5509473))

(declare-fun m!5509475 () Bool)

(assert (=> b!4644561 m!5509475))

(assert (=> b!4644567 m!5509473))

(assert (=> b!4644215 d!1464633))

(declare-fun d!1464639 () Bool)

(assert (=> d!1464639 (= (isDefined!9055 (getPair!370 lt!1808645 key!4968)) (not (isEmpty!28990 (getPair!370 lt!1808645 key!4968))))))

(declare-fun bs!1035973 () Bool)

(assert (= bs!1035973 d!1464639))

(assert (=> bs!1035973 m!5508557))

(declare-fun m!5509477 () Bool)

(assert (=> bs!1035973 m!5509477))

(assert (=> b!4644215 d!1464639))

(declare-fun bs!1036001 () Bool)

(declare-fun d!1464641 () Bool)

(assert (= bs!1036001 (and d!1464641 b!4644215)))

(declare-fun lambda!197207 () Int)

(assert (=> bs!1036001 (= lambda!197207 lambda!197066)))

(declare-fun bs!1036002 () Bool)

(assert (= bs!1036002 (and d!1464641 d!1464611)))

(assert (=> bs!1036002 (= lambda!197207 lambda!197196)))

(declare-fun bs!1036003 () Bool)

(assert (= bs!1036003 (and d!1464641 d!1464549)))

(assert (=> bs!1036003 (= lambda!197207 lambda!197164)))

(declare-fun bs!1036004 () Bool)

(assert (= bs!1036004 (and d!1464641 d!1464495)))

(assert (=> bs!1036004 (= lambda!197207 lambda!197150)))

(declare-fun bs!1036005 () Bool)

(assert (= bs!1036005 (and d!1464641 d!1464607)))

(assert (=> bs!1036005 (= lambda!197207 lambda!197195)))

(declare-fun bs!1036006 () Bool)

(assert (= bs!1036006 (and d!1464641 d!1464541)))

(assert (=> bs!1036006 (= lambda!197207 lambda!197163)))

(declare-fun bs!1036007 () Bool)

(assert (= bs!1036007 (and d!1464641 d!1464553)))

(assert (=> bs!1036007 (= lambda!197207 lambda!197168)))

(declare-fun lt!1809222 () (_ BitVec 64))

(declare-fun lt!1809224 () List!51936)

(declare-fun e!2897429 () Bool)

(declare-fun b!4644606 () Bool)

(assert (=> b!4644606 (= e!2897429 (= (getValueByKey!1581 (toList!5166 lt!1808634) lt!1809222) (Some!11792 lt!1809224)))))

(declare-fun b!4644605 () Bool)

(declare-fun e!2897428 () Bool)

(assert (=> b!4644605 (= e!2897428 (isDefined!9055 (getPair!370 (apply!12243 lt!1808634 (hash!3721 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1809228 () Unit!116009)

(assert (=> b!4644605 (= lt!1809228 (forallContained!3192 (toList!5166 lt!1808634) lambda!197207 (tuple2!52889 (hash!3721 hashF!1389 key!4968) (apply!12243 lt!1808634 (hash!3721 hashF!1389 key!4968)))))))

(declare-fun lt!1809221 () Unit!116009)

(declare-fun lt!1809225 () Unit!116009)

(assert (=> b!4644605 (= lt!1809221 lt!1809225)))

(assert (=> b!4644605 (contains!14964 (toList!5166 lt!1808634) (tuple2!52889 lt!1809222 lt!1809224))))

(assert (=> b!4644605 (= lt!1809225 (lemmaGetValueImpliesTupleContained!175 lt!1808634 lt!1809222 lt!1809224))))

(assert (=> b!4644605 e!2897429))

(declare-fun res!1951306 () Bool)

(assert (=> b!4644605 (=> (not res!1951306) (not e!2897429))))

(assert (=> b!4644605 (= res!1951306 (contains!14965 lt!1808634 lt!1809222))))

(assert (=> b!4644605 (= lt!1809224 (apply!12243 lt!1808634 (hash!3721 hashF!1389 key!4968)))))

(assert (=> b!4644605 (= lt!1809222 (hash!3721 hashF!1389 key!4968))))

(declare-fun lt!1809223 () Unit!116009)

(declare-fun lt!1809226 () Unit!116009)

(assert (=> b!4644605 (= lt!1809223 lt!1809226)))

(assert (=> b!4644605 (contains!14965 lt!1808634 (hash!3721 hashF!1389 key!4968))))

(assert (=> b!4644605 (= lt!1809226 (lemmaInGenMapThenLongMapContainsHash!576 lt!1808634 key!4968 hashF!1389))))

(declare-fun b!4644603 () Bool)

(declare-fun res!1951307 () Bool)

(assert (=> b!4644603 (=> (not res!1951307) (not e!2897428))))

(declare-fun allKeysSameHashInMap!1590 (ListLongMap!3735 Hashable!6007) Bool)

(assert (=> b!4644603 (= res!1951307 (allKeysSameHashInMap!1590 lt!1808634 hashF!1389))))

(declare-fun b!4644604 () Bool)

(declare-fun res!1951305 () Bool)

(assert (=> b!4644604 (=> (not res!1951305) (not e!2897428))))

(assert (=> b!4644604 (= res!1951305 (contains!14963 (extractMap!1666 (toList!5166 lt!1808634)) key!4968))))

(assert (=> d!1464641 e!2897428))

(declare-fun res!1951304 () Bool)

(assert (=> d!1464641 (=> (not res!1951304) (not e!2897428))))

(assert (=> d!1464641 (= res!1951304 (forall!10968 (toList!5166 lt!1808634) lambda!197207))))

(declare-fun lt!1809227 () Unit!116009)

(declare-fun choose!31889 (ListLongMap!3735 K!13175 Hashable!6007) Unit!116009)

(assert (=> d!1464641 (= lt!1809227 (choose!31889 lt!1808634 key!4968 hashF!1389))))

(assert (=> d!1464641 (forall!10968 (toList!5166 lt!1808634) lambda!197207)))

(assert (=> d!1464641 (= (lemmaInGenMapThenGetPairDefined!166 lt!1808634 key!4968 hashF!1389) lt!1809227)))

(assert (= (and d!1464641 res!1951304) b!4644603))

(assert (= (and b!4644603 res!1951307) b!4644604))

(assert (= (and b!4644604 res!1951305) b!4644605))

(assert (= (and b!4644605 res!1951306) b!4644606))

(declare-fun m!5509545 () Bool)

(assert (=> d!1464641 m!5509545))

(declare-fun m!5509547 () Bool)

(assert (=> d!1464641 m!5509547))

(assert (=> d!1464641 m!5509545))

(assert (=> b!4644605 m!5508479))

(assert (=> b!4644605 m!5508479))

(declare-fun m!5509549 () Bool)

(assert (=> b!4644605 m!5509549))

(declare-fun m!5509551 () Bool)

(assert (=> b!4644605 m!5509551))

(declare-fun m!5509553 () Bool)

(assert (=> b!4644605 m!5509553))

(declare-fun m!5509555 () Bool)

(assert (=> b!4644605 m!5509555))

(assert (=> b!4644605 m!5508561))

(declare-fun m!5509557 () Bool)

(assert (=> b!4644605 m!5509557))

(assert (=> b!4644605 m!5508479))

(declare-fun m!5509559 () Bool)

(assert (=> b!4644605 m!5509559))

(declare-fun m!5509561 () Bool)

(assert (=> b!4644605 m!5509561))

(declare-fun m!5509563 () Bool)

(assert (=> b!4644605 m!5509563))

(assert (=> b!4644605 m!5509549))

(assert (=> b!4644605 m!5509561))

(declare-fun m!5509565 () Bool)

(assert (=> b!4644603 m!5509565))

(declare-fun m!5509567 () Bool)

(assert (=> b!4644604 m!5509567))

(assert (=> b!4644604 m!5509567))

(declare-fun m!5509569 () Bool)

(assert (=> b!4644604 m!5509569))

(declare-fun m!5509571 () Bool)

(assert (=> b!4644606 m!5509571))

(assert (=> b!4644215 d!1464641))

(declare-fun d!1464677 () Bool)

(assert (=> d!1464677 (contains!14964 (toList!5166 lt!1808634) (tuple2!52889 lt!1808627 lt!1808645))))

(declare-fun lt!1809231 () Unit!116009)

(declare-fun choose!31891 (ListLongMap!3735 (_ BitVec 64) List!51936) Unit!116009)

(assert (=> d!1464677 (= lt!1809231 (choose!31891 lt!1808634 lt!1808627 lt!1808645))))

(assert (=> d!1464677 (contains!14965 lt!1808634 lt!1808627)))

(assert (=> d!1464677 (= (lemmaGetValueImpliesTupleContained!175 lt!1808634 lt!1808627 lt!1808645) lt!1809231)))

(declare-fun bs!1036008 () Bool)

(assert (= bs!1036008 d!1464677))

(declare-fun m!5509573 () Bool)

(assert (=> bs!1036008 m!5509573))

(declare-fun m!5509575 () Bool)

(assert (=> bs!1036008 m!5509575))

(assert (=> bs!1036008 m!5508549))

(assert (=> b!4644215 d!1464677))

(declare-fun bs!1036009 () Bool)

(declare-fun d!1464679 () Bool)

(assert (= bs!1036009 (and d!1464679 b!4644215)))

(declare-fun lambda!197210 () Int)

(assert (=> bs!1036009 (= lambda!197210 lambda!197066)))

(declare-fun bs!1036010 () Bool)

(assert (= bs!1036010 (and d!1464679 d!1464611)))

(assert (=> bs!1036010 (= lambda!197210 lambda!197196)))

(declare-fun bs!1036011 () Bool)

(assert (= bs!1036011 (and d!1464679 d!1464641)))

(assert (=> bs!1036011 (= lambda!197210 lambda!197207)))

(declare-fun bs!1036012 () Bool)

(assert (= bs!1036012 (and d!1464679 d!1464549)))

(assert (=> bs!1036012 (= lambda!197210 lambda!197164)))

(declare-fun bs!1036013 () Bool)

(assert (= bs!1036013 (and d!1464679 d!1464495)))

(assert (=> bs!1036013 (= lambda!197210 lambda!197150)))

(declare-fun bs!1036014 () Bool)

(assert (= bs!1036014 (and d!1464679 d!1464607)))

(assert (=> bs!1036014 (= lambda!197210 lambda!197195)))

(declare-fun bs!1036015 () Bool)

(assert (= bs!1036015 (and d!1464679 d!1464541)))

(assert (=> bs!1036015 (= lambda!197210 lambda!197163)))

(declare-fun bs!1036016 () Bool)

(assert (= bs!1036016 (and d!1464679 d!1464553)))

(assert (=> bs!1036016 (= lambda!197210 lambda!197168)))

(assert (=> d!1464679 (contains!14965 lt!1808634 (hash!3721 hashF!1389 key!4968))))

(declare-fun lt!1809234 () Unit!116009)

(declare-fun choose!31892 (ListLongMap!3735 K!13175 Hashable!6007) Unit!116009)

(assert (=> d!1464679 (= lt!1809234 (choose!31892 lt!1808634 key!4968 hashF!1389))))

(assert (=> d!1464679 (forall!10968 (toList!5166 lt!1808634) lambda!197210)))

(assert (=> d!1464679 (= (lemmaInGenMapThenLongMapContainsHash!576 lt!1808634 key!4968 hashF!1389) lt!1809234)))

(declare-fun bs!1036017 () Bool)

(assert (= bs!1036017 d!1464679))

(assert (=> bs!1036017 m!5508479))

(assert (=> bs!1036017 m!5508479))

(assert (=> bs!1036017 m!5509559))

(declare-fun m!5509577 () Bool)

(assert (=> bs!1036017 m!5509577))

(declare-fun m!5509579 () Bool)

(assert (=> bs!1036017 m!5509579))

(assert (=> b!4644215 d!1464679))

(declare-fun d!1464681 () Bool)

(declare-fun get!17250 (Option!11793) List!51936)

(assert (=> d!1464681 (= (apply!12243 lt!1808634 lt!1808627) (get!17250 (getValueByKey!1581 (toList!5166 lt!1808634) lt!1808627)))))

(declare-fun bs!1036018 () Bool)

(assert (= bs!1036018 d!1464681))

(assert (=> bs!1036018 m!5509433))

(assert (=> bs!1036018 m!5509433))

(declare-fun m!5509581 () Bool)

(assert (=> bs!1036018 m!5509581))

(assert (=> b!4644215 d!1464681))

(declare-fun d!1464683 () Bool)

(declare-fun dynLambda!21558 (Int tuple2!52888) Bool)

(assert (=> d!1464683 (dynLambda!21558 lambda!197066 lt!1808644)))

(declare-fun lt!1809237 () Unit!116009)

(declare-fun choose!31893 (List!51937 Int tuple2!52888) Unit!116009)

(assert (=> d!1464683 (= lt!1809237 (choose!31893 lt!1808656 lambda!197066 lt!1808644))))

(declare-fun e!2897432 () Bool)

(assert (=> d!1464683 e!2897432))

(declare-fun res!1951310 () Bool)

(assert (=> d!1464683 (=> (not res!1951310) (not e!2897432))))

(assert (=> d!1464683 (= res!1951310 (forall!10968 lt!1808656 lambda!197066))))

(assert (=> d!1464683 (= (forallContained!3192 lt!1808656 lambda!197066 lt!1808644) lt!1809237)))

(declare-fun b!4644610 () Bool)

(assert (=> b!4644610 (= e!2897432 (contains!14964 lt!1808656 lt!1808644))))

(assert (= (and d!1464683 res!1951310) b!4644610))

(declare-fun b_lambda!171113 () Bool)

(assert (=> (not b_lambda!171113) (not d!1464683)))

(declare-fun m!5509583 () Bool)

(assert (=> d!1464683 m!5509583))

(declare-fun m!5509585 () Bool)

(assert (=> d!1464683 m!5509585))

(declare-fun m!5509587 () Bool)

(assert (=> d!1464683 m!5509587))

(assert (=> b!4644610 m!5508555))

(assert (=> b!4644215 d!1464683))

(declare-fun d!1464685 () Bool)

(declare-fun res!1951311 () Bool)

(declare-fun e!2897433 () Bool)

(assert (=> d!1464685 (=> res!1951311 e!2897433)))

(assert (=> d!1464685 (= res!1951311 (and ((_ is Cons!51812) oldBucket!40) (= (_1!29737 (h!57932 oldBucket!40)) key!4968)))))

(assert (=> d!1464685 (= (containsKey!2668 oldBucket!40 key!4968) e!2897433)))

(declare-fun b!4644611 () Bool)

(declare-fun e!2897434 () Bool)

(assert (=> b!4644611 (= e!2897433 e!2897434)))

(declare-fun res!1951312 () Bool)

(assert (=> b!4644611 (=> (not res!1951312) (not e!2897434))))

(assert (=> b!4644611 (= res!1951312 ((_ is Cons!51812) oldBucket!40))))

(declare-fun b!4644612 () Bool)

(assert (=> b!4644612 (= e!2897434 (containsKey!2668 (t!359030 oldBucket!40) key!4968))))

(assert (= (and d!1464685 (not res!1951311)) b!4644611))

(assert (= (and b!4644611 res!1951312) b!4644612))

(assert (=> b!4644612 m!5508563))

(assert (=> b!4644215 d!1464685))

(declare-fun b!4644622 () Bool)

(declare-fun e!2897440 () List!51936)

(declare-fun e!2897439 () List!51936)

(assert (=> b!4644622 (= e!2897440 e!2897439)))

(declare-fun c!794743 () Bool)

(assert (=> b!4644622 (= c!794743 ((_ is Cons!51812) (t!359030 oldBucket!40)))))

(declare-fun b!4644623 () Bool)

(assert (=> b!4644623 (= e!2897439 (Cons!51812 (h!57932 (t!359030 oldBucket!40)) (removePairForKey!1233 (t!359030 (t!359030 oldBucket!40)) key!4968)))))

(declare-fun d!1464687 () Bool)

(declare-fun lt!1809240 () List!51936)

(assert (=> d!1464687 (not (containsKey!2668 lt!1809240 key!4968))))

(assert (=> d!1464687 (= lt!1809240 e!2897440)))

(declare-fun c!794744 () Bool)

(assert (=> d!1464687 (= c!794744 (and ((_ is Cons!51812) (t!359030 oldBucket!40)) (= (_1!29737 (h!57932 (t!359030 oldBucket!40))) key!4968)))))

(assert (=> d!1464687 (noDuplicateKeys!1610 (t!359030 oldBucket!40))))

(assert (=> d!1464687 (= (removePairForKey!1233 (t!359030 oldBucket!40) key!4968) lt!1809240)))

(declare-fun b!4644624 () Bool)

(assert (=> b!4644624 (= e!2897439 Nil!51812)))

(declare-fun b!4644621 () Bool)

(assert (=> b!4644621 (= e!2897440 (t!359030 (t!359030 oldBucket!40)))))

(assert (= (and d!1464687 c!794744) b!4644621))

(assert (= (and d!1464687 (not c!794744)) b!4644622))

(assert (= (and b!4644622 c!794743) b!4644623))

(assert (= (and b!4644622 (not c!794743)) b!4644624))

(declare-fun m!5509589 () Bool)

(assert (=> b!4644623 m!5509589))

(declare-fun m!5509591 () Bool)

(assert (=> d!1464687 m!5509591))

(assert (=> d!1464687 m!5508601))

(assert (=> b!4644226 d!1464687))

(declare-fun b!4644626 () Bool)

(declare-fun e!2897442 () List!51936)

(declare-fun e!2897441 () List!51936)

(assert (=> b!4644626 (= e!2897442 e!2897441)))

(declare-fun c!794745 () Bool)

(assert (=> b!4644626 (= c!794745 ((_ is Cons!51812) lt!1808631))))

(declare-fun b!4644627 () Bool)

(assert (=> b!4644627 (= e!2897441 (Cons!51812 (h!57932 lt!1808631) (removePairForKey!1233 (t!359030 lt!1808631) key!4968)))))

(declare-fun d!1464689 () Bool)

(declare-fun lt!1809241 () List!51936)

(assert (=> d!1464689 (not (containsKey!2668 lt!1809241 key!4968))))

(assert (=> d!1464689 (= lt!1809241 e!2897442)))

(declare-fun c!794746 () Bool)

(assert (=> d!1464689 (= c!794746 (and ((_ is Cons!51812) lt!1808631) (= (_1!29737 (h!57932 lt!1808631)) key!4968)))))

(assert (=> d!1464689 (noDuplicateKeys!1610 lt!1808631)))

(assert (=> d!1464689 (= (removePairForKey!1233 lt!1808631 key!4968) lt!1809241)))

(declare-fun b!4644628 () Bool)

(assert (=> b!4644628 (= e!2897441 Nil!51812)))

(declare-fun b!4644625 () Bool)

(assert (=> b!4644625 (= e!2897442 (t!359030 lt!1808631))))

(assert (= (and d!1464689 c!794746) b!4644625))

(assert (= (and d!1464689 (not c!794746)) b!4644626))

(assert (= (and b!4644626 c!794745) b!4644627))

(assert (= (and b!4644626 (not c!794745)) b!4644628))

(declare-fun m!5509593 () Bool)

(assert (=> b!4644627 m!5509593))

(declare-fun m!5509595 () Bool)

(assert (=> d!1464689 m!5509595))

(assert (=> d!1464689 m!5509091))

(assert (=> b!4644227 d!1464689))

(declare-fun d!1464691 () Bool)

(assert (=> d!1464691 (= (tail!8233 newBucket!224) (t!359030 newBucket!224))))

(assert (=> b!4644227 d!1464691))

(declare-fun d!1464693 () Bool)

(assert (=> d!1464693 (= (tail!8233 oldBucket!40) (t!359030 oldBucket!40))))

(assert (=> b!4644227 d!1464693))

(declare-fun d!1464695 () Bool)

(declare-fun e!2897443 () Bool)

(assert (=> d!1464695 e!2897443))

(declare-fun res!1951313 () Bool)

(assert (=> d!1464695 (=> (not res!1951313) (not e!2897443))))

(declare-fun lt!1809244 () ListMap!4489)

(assert (=> d!1464695 (= res!1951313 (contains!14963 lt!1809244 (_1!29737 (h!57932 oldBucket!40))))))

(declare-fun lt!1809243 () List!51936)

(assert (=> d!1464695 (= lt!1809244 (ListMap!4490 lt!1809243))))

(declare-fun lt!1809245 () Unit!116009)

(declare-fun lt!1809242 () Unit!116009)

(assert (=> d!1464695 (= lt!1809245 lt!1809242)))

(assert (=> d!1464695 (= (getValueByKey!1580 lt!1809243 (_1!29737 (h!57932 oldBucket!40))) (Some!11791 (_2!29737 (h!57932 oldBucket!40))))))

(assert (=> d!1464695 (= lt!1809242 (lemmaContainsTupThenGetReturnValue!910 lt!1809243 (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40))))))

(assert (=> d!1464695 (= lt!1809243 (insertNoDuplicatedKeys!418 (toList!5165 lt!1808630) (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40))))))

(assert (=> d!1464695 (= (+!1960 lt!1808630 (h!57932 oldBucket!40)) lt!1809244)))

(declare-fun b!4644629 () Bool)

(declare-fun res!1951314 () Bool)

(assert (=> b!4644629 (=> (not res!1951314) (not e!2897443))))

(assert (=> b!4644629 (= res!1951314 (= (getValueByKey!1580 (toList!5165 lt!1809244) (_1!29737 (h!57932 oldBucket!40))) (Some!11791 (_2!29737 (h!57932 oldBucket!40)))))))

(declare-fun b!4644630 () Bool)

(assert (=> b!4644630 (= e!2897443 (contains!14967 (toList!5165 lt!1809244) (h!57932 oldBucket!40)))))

(assert (= (and d!1464695 res!1951313) b!4644629))

(assert (= (and b!4644629 res!1951314) b!4644630))

(declare-fun m!5509597 () Bool)

(assert (=> d!1464695 m!5509597))

(declare-fun m!5509599 () Bool)

(assert (=> d!1464695 m!5509599))

(declare-fun m!5509601 () Bool)

(assert (=> d!1464695 m!5509601))

(declare-fun m!5509603 () Bool)

(assert (=> d!1464695 m!5509603))

(declare-fun m!5509605 () Bool)

(assert (=> b!4644629 m!5509605))

(declare-fun m!5509607 () Bool)

(assert (=> b!4644630 m!5509607))

(assert (=> b!4644212 d!1464695))

(declare-fun d!1464697 () Bool)

(assert (=> d!1464697 (eq!901 (extractMap!1666 (Cons!51813 (tuple2!52889 hash!414 lt!1808650) Nil!51813)) (-!614 (extractMap!1666 (Cons!51813 (tuple2!52889 hash!414 (t!359030 oldBucket!40)) Nil!51813)) key!4968))))

(declare-fun lt!1809248 () Unit!116009)

(declare-fun choose!31895 ((_ BitVec 64) List!51936 List!51936 K!13175 Hashable!6007) Unit!116009)

(assert (=> d!1464697 (= lt!1809248 (choose!31895 hash!414 (t!359030 oldBucket!40) lt!1808650 key!4968 hashF!1389))))

(assert (=> d!1464697 (noDuplicateKeys!1610 (t!359030 oldBucket!40))))

(assert (=> d!1464697 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!166 hash!414 (t!359030 oldBucket!40) lt!1808650 key!4968 hashF!1389) lt!1809248)))

(declare-fun bs!1036019 () Bool)

(assert (= bs!1036019 d!1464697))

(declare-fun m!5509609 () Bool)

(assert (=> bs!1036019 m!5509609))

(declare-fun m!5509611 () Bool)

(assert (=> bs!1036019 m!5509611))

(assert (=> bs!1036019 m!5508575))

(assert (=> bs!1036019 m!5508601))

(assert (=> bs!1036019 m!5509609))

(assert (=> bs!1036019 m!5508575))

(assert (=> bs!1036019 m!5509611))

(declare-fun m!5509613 () Bool)

(assert (=> bs!1036019 m!5509613))

(declare-fun m!5509615 () Bool)

(assert (=> bs!1036019 m!5509615))

(assert (=> b!4644212 d!1464697))

(declare-fun d!1464699 () Bool)

(declare-fun e!2897444 () Bool)

(assert (=> d!1464699 e!2897444))

(declare-fun res!1951315 () Bool)

(assert (=> d!1464699 (=> (not res!1951315) (not e!2897444))))

(declare-fun lt!1809251 () ListMap!4489)

(assert (=> d!1464699 (= res!1951315 (contains!14963 lt!1809251 (_1!29737 (h!57932 oldBucket!40))))))

(declare-fun lt!1809250 () List!51936)

(assert (=> d!1464699 (= lt!1809251 (ListMap!4490 lt!1809250))))

(declare-fun lt!1809252 () Unit!116009)

(declare-fun lt!1809249 () Unit!116009)

(assert (=> d!1464699 (= lt!1809252 lt!1809249)))

(assert (=> d!1464699 (= (getValueByKey!1580 lt!1809250 (_1!29737 (h!57932 oldBucket!40))) (Some!11791 (_2!29737 (h!57932 oldBucket!40))))))

(assert (=> d!1464699 (= lt!1809249 (lemmaContainsTupThenGetReturnValue!910 lt!1809250 (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40))))))

(assert (=> d!1464699 (= lt!1809250 (insertNoDuplicatedKeys!418 (toList!5165 lt!1808625) (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40))))))

(assert (=> d!1464699 (= (+!1960 lt!1808625 (h!57932 oldBucket!40)) lt!1809251)))

(declare-fun b!4644631 () Bool)

(declare-fun res!1951316 () Bool)

(assert (=> b!4644631 (=> (not res!1951316) (not e!2897444))))

(assert (=> b!4644631 (= res!1951316 (= (getValueByKey!1580 (toList!5165 lt!1809251) (_1!29737 (h!57932 oldBucket!40))) (Some!11791 (_2!29737 (h!57932 oldBucket!40)))))))

(declare-fun b!4644632 () Bool)

(assert (=> b!4644632 (= e!2897444 (contains!14967 (toList!5165 lt!1809251) (h!57932 oldBucket!40)))))

(assert (= (and d!1464699 res!1951315) b!4644631))

(assert (= (and b!4644631 res!1951316) b!4644632))

(declare-fun m!5509617 () Bool)

(assert (=> d!1464699 m!5509617))

(declare-fun m!5509619 () Bool)

(assert (=> d!1464699 m!5509619))

(declare-fun m!5509621 () Bool)

(assert (=> d!1464699 m!5509621))

(declare-fun m!5509623 () Bool)

(assert (=> d!1464699 m!5509623))

(declare-fun m!5509625 () Bool)

(assert (=> b!4644631 m!5509625))

(declare-fun m!5509627 () Bool)

(assert (=> b!4644632 m!5509627))

(assert (=> b!4644212 d!1464699))

(declare-fun d!1464701 () Bool)

(declare-fun e!2897445 () Bool)

(assert (=> d!1464701 e!2897445))

(declare-fun res!1951317 () Bool)

(assert (=> d!1464701 (=> (not res!1951317) (not e!2897445))))

(declare-fun lt!1809253 () ListMap!4489)

(assert (=> d!1464701 (= res!1951317 (not (contains!14963 lt!1809253 key!4968)))))

(assert (=> d!1464701 (= lt!1809253 (ListMap!4490 (removePresrvNoDuplicatedKeys!305 (toList!5165 lt!1808625) key!4968)))))

(assert (=> d!1464701 (= (-!614 lt!1808625 key!4968) lt!1809253)))

(declare-fun b!4644633 () Bool)

(assert (=> b!4644633 (= e!2897445 (= ((_ map and) (content!8971 (keys!18328 lt!1808625)) ((_ map not) (store ((as const (Array K!13175 Bool)) false) key!4968 true))) (content!8971 (keys!18328 lt!1809253))))))

(assert (= (and d!1464701 res!1951317) b!4644633))

(declare-fun m!5509629 () Bool)

(assert (=> d!1464701 m!5509629))

(declare-fun m!5509631 () Bool)

(assert (=> d!1464701 m!5509631))

(assert (=> b!4644633 m!5508917))

(assert (=> b!4644633 m!5509257))

(declare-fun m!5509633 () Bool)

(assert (=> b!4644633 m!5509633))

(assert (=> b!4644633 m!5509257))

(declare-fun m!5509635 () Bool)

(assert (=> b!4644633 m!5509635))

(assert (=> b!4644633 m!5509635))

(declare-fun m!5509637 () Bool)

(assert (=> b!4644633 m!5509637))

(assert (=> b!4644212 d!1464701))

(declare-fun d!1464703 () Bool)

(assert (=> d!1464703 (= (eq!901 lt!1808639 lt!1808630) (= (content!8970 (toList!5165 lt!1808639)) (content!8970 (toList!5165 lt!1808630))))))

(declare-fun bs!1036020 () Bool)

(assert (= bs!1036020 d!1464703))

(declare-fun m!5509639 () Bool)

(assert (=> bs!1036020 m!5509639))

(declare-fun m!5509641 () Bool)

(assert (=> bs!1036020 m!5509641))

(assert (=> b!4644212 d!1464703))

(declare-fun d!1464705 () Bool)

(assert (=> d!1464705 (= (-!614 (+!1960 lt!1808625 (tuple2!52887 (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40)))) key!4968) (+!1960 (-!614 lt!1808625 key!4968) (tuple2!52887 (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40)))))))

(declare-fun lt!1809256 () Unit!116009)

(declare-fun choose!31897 (ListMap!4489 K!13175 V!13421 K!13175) Unit!116009)

(assert (=> d!1464705 (= lt!1809256 (choose!31897 lt!1808625 (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40)) key!4968))))

(assert (=> d!1464705 (not (= (_1!29737 (h!57932 oldBucket!40)) key!4968))))

(assert (=> d!1464705 (= (addRemoveCommutativeForDiffKeys!59 lt!1808625 (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40)) key!4968) lt!1809256)))

(declare-fun bs!1036021 () Bool)

(assert (= bs!1036021 d!1464705))

(declare-fun m!5509643 () Bool)

(assert (=> bs!1036021 m!5509643))

(assert (=> bs!1036021 m!5508459))

(assert (=> bs!1036021 m!5508459))

(declare-fun m!5509645 () Bool)

(assert (=> bs!1036021 m!5509645))

(declare-fun m!5509647 () Bool)

(assert (=> bs!1036021 m!5509647))

(assert (=> bs!1036021 m!5509647))

(declare-fun m!5509649 () Bool)

(assert (=> bs!1036021 m!5509649))

(assert (=> b!4644212 d!1464705))

(declare-fun d!1464707 () Bool)

(declare-fun e!2897446 () Bool)

(assert (=> d!1464707 e!2897446))

(declare-fun res!1951318 () Bool)

(assert (=> d!1464707 (=> (not res!1951318) (not e!2897446))))

(declare-fun lt!1809257 () ListMap!4489)

(assert (=> d!1464707 (= res!1951318 (not (contains!14963 lt!1809257 key!4968)))))

(assert (=> d!1464707 (= lt!1809257 (ListMap!4490 (removePresrvNoDuplicatedKeys!305 (toList!5165 lt!1808632) key!4968)))))

(assert (=> d!1464707 (= (-!614 lt!1808632 key!4968) lt!1809257)))

(declare-fun b!4644634 () Bool)

(assert (=> b!4644634 (= e!2897446 (= ((_ map and) (content!8971 (keys!18328 lt!1808632)) ((_ map not) (store ((as const (Array K!13175 Bool)) false) key!4968 true))) (content!8971 (keys!18328 lt!1809257))))))

(assert (= (and d!1464707 res!1951318) b!4644634))

(declare-fun m!5509651 () Bool)

(assert (=> d!1464707 m!5509651))

(declare-fun m!5509653 () Bool)

(assert (=> d!1464707 m!5509653))

(assert (=> b!4644634 m!5508917))

(declare-fun m!5509655 () Bool)

(assert (=> b!4644634 m!5509655))

(declare-fun m!5509657 () Bool)

(assert (=> b!4644634 m!5509657))

(assert (=> b!4644634 m!5509655))

(declare-fun m!5509659 () Bool)

(assert (=> b!4644634 m!5509659))

(assert (=> b!4644634 m!5509659))

(declare-fun m!5509661 () Bool)

(assert (=> b!4644634 m!5509661))

(assert (=> b!4644212 d!1464707))

(declare-fun d!1464709 () Bool)

(declare-fun e!2897447 () Bool)

(assert (=> d!1464709 e!2897447))

(declare-fun res!1951319 () Bool)

(assert (=> d!1464709 (=> (not res!1951319) (not e!2897447))))

(declare-fun lt!1809258 () ListMap!4489)

(assert (=> d!1464709 (= res!1951319 (not (contains!14963 lt!1809258 key!4968)))))

(assert (=> d!1464709 (= lt!1809258 (ListMap!4490 (removePresrvNoDuplicatedKeys!305 (toList!5165 (+!1960 lt!1808625 (h!57932 oldBucket!40))) key!4968)))))

(assert (=> d!1464709 (= (-!614 (+!1960 lt!1808625 (h!57932 oldBucket!40)) key!4968) lt!1809258)))

(declare-fun b!4644635 () Bool)

(assert (=> b!4644635 (= e!2897447 (= ((_ map and) (content!8971 (keys!18328 (+!1960 lt!1808625 (h!57932 oldBucket!40)))) ((_ map not) (store ((as const (Array K!13175 Bool)) false) key!4968 true))) (content!8971 (keys!18328 lt!1809258))))))

(assert (= (and d!1464709 res!1951319) b!4644635))

(declare-fun m!5509663 () Bool)

(assert (=> d!1464709 m!5509663))

(declare-fun m!5509665 () Bool)

(assert (=> d!1464709 m!5509665))

(assert (=> b!4644635 m!5508917))

(declare-fun m!5509667 () Bool)

(assert (=> b!4644635 m!5509667))

(declare-fun m!5509669 () Bool)

(assert (=> b!4644635 m!5509669))

(assert (=> b!4644635 m!5508445))

(assert (=> b!4644635 m!5509667))

(declare-fun m!5509671 () Bool)

(assert (=> b!4644635 m!5509671))

(assert (=> b!4644635 m!5509671))

(declare-fun m!5509673 () Bool)

(assert (=> b!4644635 m!5509673))

(assert (=> b!4644212 d!1464709))

(declare-fun d!1464711 () Bool)

(assert (=> d!1464711 (= (eq!901 lt!1808647 lt!1808649) (= (content!8970 (toList!5165 lt!1808647)) (content!8970 (toList!5165 lt!1808649))))))

(declare-fun bs!1036022 () Bool)

(assert (= bs!1036022 d!1464711))

(assert (=> bs!1036022 m!5508875))

(assert (=> bs!1036022 m!5508893))

(assert (=> b!4644223 d!1464711))

(declare-fun d!1464713 () Bool)

(assert (=> d!1464713 (= (eq!901 lt!1808654 (+!1960 lt!1808639 (h!57932 oldBucket!40))) (= (content!8970 (toList!5165 lt!1808654)) (content!8970 (toList!5165 (+!1960 lt!1808639 (h!57932 oldBucket!40))))))))

(declare-fun bs!1036023 () Bool)

(assert (= bs!1036023 d!1464713))

(declare-fun m!5509675 () Bool)

(assert (=> bs!1036023 m!5509675))

(assert (=> bs!1036023 m!5508877))

(assert (=> b!4644223 d!1464713))

(assert (=> b!4644223 d!1464511))

(declare-fun d!1464715 () Bool)

(assert (=> d!1464715 (eq!901 (+!1960 lt!1808630 (tuple2!52887 (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40)))) (+!1960 lt!1808639 (tuple2!52887 (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40)))))))

(declare-fun lt!1809261 () Unit!116009)

(declare-fun choose!31898 (ListMap!4489 ListMap!4489 K!13175 V!13421) Unit!116009)

(assert (=> d!1464715 (= lt!1809261 (choose!31898 lt!1808630 lt!1808639 (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40))))))

(assert (=> d!1464715 (eq!901 lt!1808630 lt!1808639)))

(assert (=> d!1464715 (= (lemmaAddToEqMapsPreservesEq!68 lt!1808630 lt!1808639 (_1!29737 (h!57932 oldBucket!40)) (_2!29737 (h!57932 oldBucket!40))) lt!1809261)))

(declare-fun bs!1036024 () Bool)

(assert (= bs!1036024 d!1464715))

(declare-fun m!5509677 () Bool)

(assert (=> bs!1036024 m!5509677))

(declare-fun m!5509679 () Bool)

(assert (=> bs!1036024 m!5509679))

(declare-fun m!5509681 () Bool)

(assert (=> bs!1036024 m!5509681))

(declare-fun m!5509683 () Bool)

(assert (=> bs!1036024 m!5509683))

(assert (=> bs!1036024 m!5509677))

(assert (=> bs!1036024 m!5509679))

(declare-fun m!5509685 () Bool)

(assert (=> bs!1036024 m!5509685))

(assert (=> b!4644223 d!1464715))

(declare-fun bs!1036025 () Bool)

(declare-fun d!1464717 () Bool)

(assert (= bs!1036025 (and d!1464717 d!1464601)))

(declare-fun lambda!197211 () Int)

(assert (=> bs!1036025 (not (= lambda!197211 lambda!197193))))

(declare-fun bs!1036026 () Bool)

(assert (= bs!1036026 (and d!1464717 b!4644483)))

(assert (=> bs!1036026 (not (= lambda!197211 lambda!197190))))

(declare-fun bs!1036027 () Bool)

(assert (= bs!1036027 (and d!1464717 b!4644476)))

(assert (=> bs!1036027 (not (= lambda!197211 lambda!197181))))

(declare-fun bs!1036028 () Bool)

(assert (= bs!1036028 (and d!1464717 d!1464475)))

(assert (=> bs!1036028 (not (= lambda!197211 lambda!197144))))

(declare-fun bs!1036029 () Bool)

(assert (= bs!1036029 (and d!1464717 b!4644478)))

(assert (=> bs!1036029 (not (= lambda!197211 lambda!197180))))

(declare-fun bs!1036030 () Bool)

(assert (= bs!1036030 (and d!1464717 b!4644407)))

(assert (=> bs!1036030 (not (= lambda!197211 lambda!197173))))

(declare-fun bs!1036031 () Bool)

(assert (= bs!1036031 (and d!1464717 b!4644485)))

(assert (=> bs!1036031 (not (= lambda!197211 lambda!197184))))

(declare-fun bs!1036032 () Bool)

(assert (= bs!1036032 (and d!1464717 b!4644299)))

(assert (=> bs!1036032 (not (= lambda!197211 lambda!197141))))

(assert (=> bs!1036026 (not (= lambda!197211 lambda!197187))))

(declare-fun bs!1036033 () Bool)

(assert (= bs!1036033 (and d!1464717 b!4644297)))

(assert (=> bs!1036033 (not (= lambda!197211 lambda!197143))))

(declare-fun bs!1036034 () Bool)

(assert (= bs!1036034 (and d!1464717 d!1464589)))

(assert (=> bs!1036034 (not (= lambda!197211 lambda!197179))))

(declare-fun bs!1036035 () Bool)

(assert (= bs!1036035 (and d!1464717 b!4644422)))

(assert (=> bs!1036035 (not (= lambda!197211 lambda!197176))))

(declare-fun bs!1036036 () Bool)

(assert (= bs!1036036 (and d!1464717 b!4644409)))

(assert (=> bs!1036036 (not (= lambda!197211 lambda!197170))))

(declare-fun bs!1036037 () Bool)

(assert (= bs!1036037 (and d!1464717 b!4644420)))

(assert (=> bs!1036037 (not (= lambda!197211 lambda!197177))))

(declare-fun bs!1036038 () Bool)

(assert (= bs!1036038 (and d!1464717 d!1464459)))

(assert (=> bs!1036038 (= lambda!197211 lambda!197069)))

(assert (=> bs!1036027 (not (= lambda!197211 lambda!197182))))

(declare-fun bs!1036039 () Bool)

(assert (= bs!1036039 (and d!1464717 d!1464595)))

(assert (=> bs!1036039 (not (= lambda!197211 lambda!197183))))

(declare-fun bs!1036040 () Bool)

(assert (= bs!1036040 (and d!1464717 d!1464573)))

(assert (=> bs!1036040 (not (= lambda!197211 lambda!197175))))

(assert (=> bs!1036030 (not (= lambda!197211 lambda!197172))))

(assert (=> bs!1036037 (not (= lambda!197211 lambda!197178))))

(assert (=> bs!1036033 (not (= lambda!197211 lambda!197142))))

(assert (=> d!1464717 true))

(assert (=> d!1464717 true))

(assert (=> d!1464717 (= (allKeysSameHash!1464 oldBucket!40 hash!414 hashF!1389) (forall!10967 oldBucket!40 lambda!197211))))

(declare-fun bs!1036041 () Bool)

(assert (= bs!1036041 d!1464717))

(declare-fun m!5509687 () Bool)

(assert (=> bs!1036041 m!5509687))

(assert (=> b!4644224 d!1464717))

(declare-fun b!4644636 () Bool)

(declare-fun e!2897452 () Bool)

(assert (=> b!4644636 (= e!2897452 (not (contains!14969 (keys!18328 lt!1808652) key!4968)))))

(declare-fun b!4644637 () Bool)

(assert (=> b!4644637 false))

(declare-fun lt!1809267 () Unit!116009)

(declare-fun lt!1809268 () Unit!116009)

(assert (=> b!4644637 (= lt!1809267 lt!1809268)))

(assert (=> b!4644637 (containsKey!2670 (toList!5165 lt!1808652) key!4968)))

(assert (=> b!4644637 (= lt!1809268 (lemmaInGetKeysListThenContainsKey!724 (toList!5165 lt!1808652) key!4968))))

(declare-fun e!2897448 () Unit!116009)

(declare-fun Unit!116129 () Unit!116009)

(assert (=> b!4644637 (= e!2897448 Unit!116129)))

(declare-fun b!4644638 () Bool)

(declare-fun e!2897453 () Bool)

(declare-fun e!2897451 () Bool)

(assert (=> b!4644638 (= e!2897453 e!2897451)))

(declare-fun res!1951321 () Bool)

(assert (=> b!4644638 (=> (not res!1951321) (not e!2897451))))

(assert (=> b!4644638 (= res!1951321 (isDefined!9057 (getValueByKey!1580 (toList!5165 lt!1808652) key!4968)))))

(declare-fun b!4644639 () Bool)

(declare-fun e!2897449 () Unit!116009)

(assert (=> b!4644639 (= e!2897449 e!2897448)))

(declare-fun c!794747 () Bool)

(declare-fun call!324293 () Bool)

(assert (=> b!4644639 (= c!794747 call!324293)))

(declare-fun b!4644640 () Bool)

(declare-fun e!2897450 () List!51939)

(assert (=> b!4644640 (= e!2897450 (getKeysList!725 (toList!5165 lt!1808652)))))

(declare-fun b!4644641 () Bool)

(declare-fun lt!1809264 () Unit!116009)

(assert (=> b!4644641 (= e!2897449 lt!1809264)))

(declare-fun lt!1809262 () Unit!116009)

(assert (=> b!4644641 (= lt!1809262 (lemmaContainsKeyImpliesGetValueByKeyDefined!1482 (toList!5165 lt!1808652) key!4968))))

(assert (=> b!4644641 (isDefined!9057 (getValueByKey!1580 (toList!5165 lt!1808652) key!4968))))

(declare-fun lt!1809263 () Unit!116009)

(assert (=> b!4644641 (= lt!1809263 lt!1809262)))

(assert (=> b!4644641 (= lt!1809264 (lemmaInListThenGetKeysListContains!720 (toList!5165 lt!1808652) key!4968))))

(assert (=> b!4644641 call!324293))

(declare-fun b!4644642 () Bool)

(assert (=> b!4644642 (= e!2897450 (keys!18328 lt!1808652))))

(declare-fun b!4644643 () Bool)

(declare-fun Unit!116130 () Unit!116009)

(assert (=> b!4644643 (= e!2897448 Unit!116130)))

(declare-fun b!4644644 () Bool)

(assert (=> b!4644644 (= e!2897451 (contains!14969 (keys!18328 lt!1808652) key!4968))))

(declare-fun d!1464719 () Bool)

(assert (=> d!1464719 e!2897453))

(declare-fun res!1951322 () Bool)

(assert (=> d!1464719 (=> res!1951322 e!2897453)))

(assert (=> d!1464719 (= res!1951322 e!2897452)))

(declare-fun res!1951320 () Bool)

(assert (=> d!1464719 (=> (not res!1951320) (not e!2897452))))

(declare-fun lt!1809269 () Bool)

(assert (=> d!1464719 (= res!1951320 (not lt!1809269))))

(declare-fun lt!1809265 () Bool)

(assert (=> d!1464719 (= lt!1809269 lt!1809265)))

(declare-fun lt!1809266 () Unit!116009)

(assert (=> d!1464719 (= lt!1809266 e!2897449)))

(declare-fun c!794748 () Bool)

(assert (=> d!1464719 (= c!794748 lt!1809265)))

(assert (=> d!1464719 (= lt!1809265 (containsKey!2670 (toList!5165 lt!1808652) key!4968))))

(assert (=> d!1464719 (= (contains!14963 lt!1808652 key!4968) lt!1809269)))

(declare-fun bm!324288 () Bool)

(assert (=> bm!324288 (= call!324293 (contains!14969 e!2897450 key!4968))))

(declare-fun c!794749 () Bool)

(assert (=> bm!324288 (= c!794749 c!794748)))

(assert (= (and d!1464719 c!794748) b!4644641))

(assert (= (and d!1464719 (not c!794748)) b!4644639))

(assert (= (and b!4644639 c!794747) b!4644637))

(assert (= (and b!4644639 (not c!794747)) b!4644643))

(assert (= (or b!4644641 b!4644639) bm!324288))

(assert (= (and bm!324288 c!794749) b!4644640))

(assert (= (and bm!324288 (not c!794749)) b!4644642))

(assert (= (and d!1464719 res!1951320) b!4644636))

(assert (= (and d!1464719 (not res!1951322)) b!4644638))

(assert (= (and b!4644638 res!1951321) b!4644644))

(assert (=> b!4644636 m!5508921))

(assert (=> b!4644636 m!5508921))

(declare-fun m!5509689 () Bool)

(assert (=> b!4644636 m!5509689))

(declare-fun m!5509691 () Bool)

(assert (=> b!4644637 m!5509691))

(declare-fun m!5509693 () Bool)

(assert (=> b!4644637 m!5509693))

(assert (=> b!4644642 m!5508921))

(declare-fun m!5509695 () Bool)

(assert (=> b!4644638 m!5509695))

(assert (=> b!4644638 m!5509695))

(declare-fun m!5509697 () Bool)

(assert (=> b!4644638 m!5509697))

(assert (=> d!1464719 m!5509691))

(assert (=> b!4644644 m!5508921))

(assert (=> b!4644644 m!5508921))

(assert (=> b!4644644 m!5509689))

(declare-fun m!5509699 () Bool)

(assert (=> b!4644640 m!5509699))

(declare-fun m!5509701 () Bool)

(assert (=> b!4644641 m!5509701))

(assert (=> b!4644641 m!5509695))

(assert (=> b!4644641 m!5509695))

(assert (=> b!4644641 m!5509697))

(declare-fun m!5509703 () Bool)

(assert (=> b!4644641 m!5509703))

(declare-fun m!5509705 () Bool)

(assert (=> bm!324288 m!5509705))

(assert (=> b!4644214 d!1464719))

(declare-fun bs!1036042 () Bool)

(declare-fun d!1464721 () Bool)

(assert (= bs!1036042 (and d!1464721 b!4644215)))

(declare-fun lambda!197212 () Int)

(assert (=> bs!1036042 (= lambda!197212 lambda!197066)))

(declare-fun bs!1036043 () Bool)

(assert (= bs!1036043 (and d!1464721 d!1464611)))

(assert (=> bs!1036043 (= lambda!197212 lambda!197196)))

(declare-fun bs!1036044 () Bool)

(assert (= bs!1036044 (and d!1464721 d!1464641)))

(assert (=> bs!1036044 (= lambda!197212 lambda!197207)))

(declare-fun bs!1036045 () Bool)

(assert (= bs!1036045 (and d!1464721 d!1464549)))

(assert (=> bs!1036045 (= lambda!197212 lambda!197164)))

(declare-fun bs!1036046 () Bool)

(assert (= bs!1036046 (and d!1464721 d!1464679)))

(assert (=> bs!1036046 (= lambda!197212 lambda!197210)))

(declare-fun bs!1036047 () Bool)

(assert (= bs!1036047 (and d!1464721 d!1464495)))

(assert (=> bs!1036047 (= lambda!197212 lambda!197150)))

(declare-fun bs!1036048 () Bool)

(assert (= bs!1036048 (and d!1464721 d!1464607)))

(assert (=> bs!1036048 (= lambda!197212 lambda!197195)))

(declare-fun bs!1036049 () Bool)

(assert (= bs!1036049 (and d!1464721 d!1464541)))

(assert (=> bs!1036049 (= lambda!197212 lambda!197163)))

(declare-fun bs!1036050 () Bool)

(assert (= bs!1036050 (and d!1464721 d!1464553)))

(assert (=> bs!1036050 (= lambda!197212 lambda!197168)))

(declare-fun lt!1809270 () ListMap!4489)

(assert (=> d!1464721 (invariantList!1274 (toList!5165 lt!1809270))))

(declare-fun e!2897454 () ListMap!4489)

(assert (=> d!1464721 (= lt!1809270 e!2897454)))

(declare-fun c!794750 () Bool)

(assert (=> d!1464721 (= c!794750 ((_ is Cons!51813) lt!1808656))))

(assert (=> d!1464721 (forall!10968 lt!1808656 lambda!197212)))

(assert (=> d!1464721 (= (extractMap!1666 lt!1808656) lt!1809270)))

(declare-fun b!4644645 () Bool)

(assert (=> b!4644645 (= e!2897454 (addToMapMapFromBucket!1069 (_2!29738 (h!57933 lt!1808656)) (extractMap!1666 (t!359031 lt!1808656))))))

(declare-fun b!4644646 () Bool)

(assert (=> b!4644646 (= e!2897454 (ListMap!4490 Nil!51812))))

(assert (= (and d!1464721 c!794750) b!4644645))

(assert (= (and d!1464721 (not c!794750)) b!4644646))

(declare-fun m!5509707 () Bool)

(assert (=> d!1464721 m!5509707))

(declare-fun m!5509709 () Bool)

(assert (=> d!1464721 m!5509709))

(declare-fun m!5509711 () Bool)

(assert (=> b!4644645 m!5509711))

(assert (=> b!4644645 m!5509711))

(declare-fun m!5509713 () Bool)

(assert (=> b!4644645 m!5509713))

(assert (=> b!4644214 d!1464721))

(declare-fun b!4644648 () Bool)

(declare-fun e!2897456 () List!51936)

(declare-fun e!2897455 () List!51936)

(assert (=> b!4644648 (= e!2897456 e!2897455)))

(declare-fun c!794751 () Bool)

(assert (=> b!4644648 (= c!794751 ((_ is Cons!51812) oldBucket!40))))

(declare-fun b!4644649 () Bool)

(assert (=> b!4644649 (= e!2897455 (Cons!51812 (h!57932 oldBucket!40) (removePairForKey!1233 (t!359030 oldBucket!40) key!4968)))))

(declare-fun d!1464723 () Bool)

(declare-fun lt!1809271 () List!51936)

(assert (=> d!1464723 (not (containsKey!2668 lt!1809271 key!4968))))

(assert (=> d!1464723 (= lt!1809271 e!2897456)))

(declare-fun c!794752 () Bool)

(assert (=> d!1464723 (= c!794752 (and ((_ is Cons!51812) oldBucket!40) (= (_1!29737 (h!57932 oldBucket!40)) key!4968)))))

(assert (=> d!1464723 (noDuplicateKeys!1610 oldBucket!40)))

(assert (=> d!1464723 (= (removePairForKey!1233 oldBucket!40 key!4968) lt!1809271)))

(declare-fun b!4644650 () Bool)

(assert (=> b!4644650 (= e!2897455 Nil!51812)))

(declare-fun b!4644647 () Bool)

(assert (=> b!4644647 (= e!2897456 (t!359030 oldBucket!40))))

(assert (= (and d!1464723 c!794752) b!4644647))

(assert (= (and d!1464723 (not c!794752)) b!4644648))

(assert (= (and b!4644648 c!794751) b!4644649))

(assert (= (and b!4644648 (not c!794751)) b!4644650))

(assert (=> b!4644649 m!5508501))

(declare-fun m!5509715 () Bool)

(assert (=> d!1464723 m!5509715))

(assert (=> d!1464723 m!5508499))

(assert (=> b!4644225 d!1464723))

(declare-fun e!2897459 () Bool)

(declare-fun tp!1343018 () Bool)

(declare-fun b!4644655 () Bool)

(assert (=> b!4644655 (= e!2897459 (and tp_is_empty!29733 tp_is_empty!29735 tp!1343018))))

(assert (=> b!4644216 (= tp!1343011 e!2897459)))

(assert (= (and b!4644216 ((_ is Cons!51812) (t!359030 oldBucket!40))) b!4644655))

(declare-fun e!2897460 () Bool)

(declare-fun b!4644656 () Bool)

(declare-fun tp!1343019 () Bool)

(assert (=> b!4644656 (= e!2897460 (and tp_is_empty!29733 tp_is_empty!29735 tp!1343019))))

(assert (=> b!4644217 (= tp!1343010 e!2897460)))

(assert (= (and b!4644217 ((_ is Cons!51812) (t!359030 newBucket!224))) b!4644656))

(declare-fun b_lambda!171115 () Bool)

(assert (= b_lambda!171113 (or b!4644215 b_lambda!171115)))

(declare-fun bs!1036051 () Bool)

(declare-fun d!1464725 () Bool)

(assert (= bs!1036051 (and d!1464725 b!4644215)))

(assert (=> bs!1036051 (= (dynLambda!21558 lambda!197066 lt!1808644) (noDuplicateKeys!1610 (_2!29738 lt!1808644)))))

(declare-fun m!5509717 () Bool)

(assert (=> bs!1036051 m!5509717))

(assert (=> d!1464683 d!1464725))

(check-sat (not b!4644318) (not b!4644631) (not d!1464571) (not b!4644310) (not d!1464519) (not b!4644638) (not b!4644627) (not b!4644656) (not b!4644404) (not b!4644313) (not d!1464713) (not d!1464709) (not b!4644312) (not b!4644563) (not b!4644501) (not d!1464611) (not b!4644655) (not b!4644634) (not b!4644568) (not b!4644566) (not bm!324288) (not d!1464699) (not b!4644467) (not b!4644649) (not d!1464557) (not b!4644645) (not b_lambda!171115) (not b!4644349) (not b!4644393) (not b!4644603) (not b!4644420) (not b!4644637) (not d!1464509) (not b!4644241) (not d!1464719) (not bm!324262) (not b!4644469) (not d!1464511) (not b!4644612) (not d!1464515) (not bm!324285) (not b!4644567) (not b!4644605) (not d!1464469) (not bs!1036051) (not bm!324277) (not d!1464707) (not b!4644630) (not d!1464589) (not d!1464717) (not b!4644636) (not d!1464695) (not b!4644408) (not d!1464597) (not b!4644610) (not d!1464711) (not b!4644468) (not b!4644623) (not d!1464679) (not bm!324282) (not d!1464601) (not b!4644484) (not d!1464565) (not b!4644476) (not d!1464573) (not d!1464569) (not d!1464603) (not b!4644538) (not b!4644633) (not d!1464689) (not b!4644479) (not bm!324283) (not b!4644641) (not bm!324273) (not d!1464627) tp_is_empty!29733 (not b!4644481) (not d!1464607) (not b!4644486) (not b!4644644) (not bm!324275) (not d!1464459) (not d!1464723) (not b!4644475) (not b!4644604) (not bm!324278) (not d!1464639) (not b!4644632) (not d!1464517) (not b!4644403) (not d!1464623) (not d!1464593) (not b!4644504) (not b!4644483) (not d!1464523) tp_is_empty!29735 (not bm!324276) (not b!4644392) (not d!1464605) (not b!4644298) (not b!4644297) (not d!1464465) (not d!1464641) (not d!1464561) (not d!1464549) (not d!1464703) (not b!4644482) (not d!1464475) (not b!4644606) (not d!1464715) (not b!4644390) (not d!1464513) (not d!1464541) (not b!4644561) (not b!4644384) (not d!1464721) (not b!4644502) (not b!4644471) (not d!1464595) (not bm!324260) (not b!4644629) (not d!1464633) (not b!4644521) (not b!4644407) (not bm!324287) (not d!1464553) (not d!1464705) (not b!4644319) (not bm!324274) (not b!4644300) (not b!4644423) (not d!1464683) (not b!4644500) (not b!4644635) (not b!4644477) (not b!4644473) (not b!4644640) (not d!1464495) (not b!4644532) (not b!4644642) (not d!1464701) (not d!1464697) (not bm!324281) (not d!1464681) (not bm!324286) (not d!1464599) (not d!1464527) (not b!4644240) (not d!1464615) (not b!4644472) (not b!4644410) (not d!1464687) (not b!4644421) (not b!4644519) (not bm!324284) (not d!1464677) (not bm!324261))
(check-sat)
