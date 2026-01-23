; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!460904 () Bool)

(assert start!460904)

(declare-fun b!4609311 () Bool)

(declare-fun e!2875227 () Bool)

(declare-datatypes ((K!12575 0))(
  ( (K!12576 (val!18331 Int)) )
))
(declare-datatypes ((V!12821 0))(
  ( (V!12822 (val!18332 Int)) )
))
(declare-datatypes ((tuple2!51930 0))(
  ( (tuple2!51931 (_1!29259 K!12575) (_2!29259 V!12821)) )
))
(declare-datatypes ((List!51331 0))(
  ( (Nil!51207) (Cons!51207 (h!57197 tuple2!51930) (t!358325 List!51331)) )
))
(declare-datatypes ((tuple2!51932 0))(
  ( (tuple2!51933 (_1!29260 (_ BitVec 64)) (_2!29260 List!51331)) )
))
(declare-fun lt!1765727 () tuple2!51932)

(declare-fun noDuplicateKeys!1370 (List!51331) Bool)

(assert (=> b!4609311 (= e!2875227 (noDuplicateKeys!1370 (_2!29260 lt!1765727)))))

(declare-fun tp_is_empty!28773 () Bool)

(declare-fun b!4609312 () Bool)

(declare-fun tp!1341026 () Bool)

(declare-fun e!2875231 () Bool)

(declare-fun tp_is_empty!28775 () Bool)

(assert (=> b!4609312 (= e!2875231 (and tp_is_empty!28773 tp_is_empty!28775 tp!1341026))))

(declare-fun b!4609313 () Bool)

(declare-fun res!1929532 () Bool)

(declare-fun e!2875225 () Bool)

(assert (=> b!4609313 (=> res!1929532 e!2875225)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4609313 (= res!1929532 (bvsge (_1!29260 lt!1765727) hash!344))))

(declare-fun b!4609314 () Bool)

(declare-datatypes ((Unit!109293 0))(
  ( (Unit!109294) )
))
(declare-fun e!2875234 () Unit!109293)

(declare-fun Unit!109295 () Unit!109293)

(assert (=> b!4609314 (= e!2875234 Unit!109295)))

(declare-fun b!4609315 () Bool)

(declare-fun e!2875222 () Bool)

(declare-fun e!2875230 () Bool)

(assert (=> b!4609315 (= e!2875222 e!2875230)))

(declare-fun res!1929530 () Bool)

(assert (=> b!4609315 (=> res!1929530 e!2875230)))

(declare-datatypes ((List!51332 0))(
  ( (Nil!51208) (Cons!51208 (h!57198 tuple2!51932) (t!358326 List!51332)) )
))
(declare-datatypes ((ListLongMap!3387 0))(
  ( (ListLongMap!3388 (toList!4755 List!51332)) )
))
(declare-fun lm!1477 () ListLongMap!3387)

(declare-fun key!3287 () K!12575)

(declare-datatypes ((ListMap!4017 0))(
  ( (ListMap!4018 (toList!4756 List!51331)) )
))
(declare-fun contains!14214 (ListMap!4017 K!12575) Bool)

(declare-fun extractMap!1430 (List!51332) ListMap!4017)

(assert (=> b!4609315 (= res!1929530 (not (contains!14214 (extractMap!1430 (t!358326 (toList!4755 lm!1477))) key!3287)))))

(declare-fun lt!1765733 () ListMap!4017)

(assert (=> b!4609315 (contains!14214 lt!1765733 key!3287)))

(declare-fun lt!1765732 () ListLongMap!3387)

(assert (=> b!4609315 (= lt!1765733 (extractMap!1430 (toList!4755 lt!1765732)))))

(declare-datatypes ((Hashable!5769 0))(
  ( (HashableExt!5768 (__x!31472 Int)) )
))
(declare-fun hashF!1107 () Hashable!5769)

(declare-fun lt!1765729 () Unit!109293)

(declare-fun lemmaListContainsThenExtractedMapContains!282 (ListLongMap!3387 K!12575 Hashable!5769) Unit!109293)

(assert (=> b!4609315 (= lt!1765729 (lemmaListContainsThenExtractedMapContains!282 lt!1765732 key!3287 hashF!1107))))

(declare-fun b!4609316 () Bool)

(declare-fun res!1929540 () Bool)

(declare-fun e!2875229 () Bool)

(assert (=> b!4609316 (=> res!1929540 e!2875229)))

(declare-fun lt!1765738 () tuple2!51932)

(declare-fun contains!14215 (List!51332 tuple2!51932) Bool)

(assert (=> b!4609316 (= res!1929540 (not (contains!14215 (t!358326 (toList!4755 lm!1477)) lt!1765738)))))

(declare-fun b!4609318 () Bool)

(declare-fun res!1929525 () Bool)

(assert (=> b!4609318 (=> res!1929525 e!2875225)))

(declare-fun lt!1765741 () ListMap!4017)

(declare-fun lt!1765740 () ListMap!4017)

(declare-fun eq!743 (ListMap!4017 ListMap!4017) Bool)

(assert (=> b!4609318 (= res!1929525 (not (eq!743 lt!1765741 lt!1765740)))))

(declare-fun b!4609319 () Bool)

(declare-fun e!2875232 () Bool)

(assert (=> b!4609319 (= e!2875232 e!2875222)))

(declare-fun res!1929531 () Bool)

(assert (=> b!4609319 (=> res!1929531 e!2875222)))

(declare-fun containsKeyBiggerList!310 (List!51332 K!12575) Bool)

(assert (=> b!4609319 (= res!1929531 (not (containsKeyBiggerList!310 (t!358326 (toList!4755 lm!1477)) key!3287)))))

(assert (=> b!4609319 (containsKeyBiggerList!310 (toList!4755 lt!1765732) key!3287)))

(declare-fun lt!1765745 () Unit!109293)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!180 (ListLongMap!3387 K!12575 Hashable!5769) Unit!109293)

(assert (=> b!4609319 (= lt!1765745 (lemmaInLongMapThenContainsKeyBiggerList!180 lt!1765732 key!3287 hashF!1107))))

(declare-fun b!4609320 () Bool)

(declare-fun res!1929528 () Bool)

(declare-fun e!2875223 () Bool)

(assert (=> b!4609320 (=> res!1929528 e!2875223)))

(declare-fun newBucket!178 () List!51331)

(assert (=> b!4609320 (= res!1929528 (not (noDuplicateKeys!1370 newBucket!178)))))

(declare-fun b!4609321 () Bool)

(declare-fun res!1929543 () Bool)

(assert (=> b!4609321 (=> res!1929543 e!2875227)))

(declare-fun lt!1765726 () ListLongMap!3387)

(declare-fun lt!1765737 () ListMap!4017)

(declare-fun addToMapMapFromBucket!840 (List!51331 ListMap!4017) ListMap!4017)

(assert (=> b!4609321 (= res!1929543 (not (eq!743 (extractMap!1430 (toList!4755 lt!1765726)) (addToMapMapFromBucket!840 (_2!29260 lt!1765727) lt!1765737))))))

(declare-fun b!4609322 () Bool)

(declare-fun res!1929535 () Bool)

(declare-fun e!2875233 () Bool)

(assert (=> b!4609322 (=> (not res!1929535) (not e!2875233))))

(declare-fun allKeysSameHash!1226 (List!51331 (_ BitVec 64) Hashable!5769) Bool)

(assert (=> b!4609322 (= res!1929535 (allKeysSameHash!1226 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4609323 () Bool)

(assert (=> b!4609323 (= e!2875225 e!2875227)))

(declare-fun res!1929538 () Bool)

(assert (=> b!4609323 (=> res!1929538 e!2875227)))

(declare-fun lt!1765731 () tuple2!51932)

(declare-fun +!1778 (ListLongMap!3387 tuple2!51932) ListLongMap!3387)

(assert (=> b!4609323 (= res!1929538 (not (= lt!1765726 (+!1778 lm!1477 lt!1765731))))))

(declare-fun lt!1765735 () ListLongMap!3387)

(assert (=> b!4609323 (= lt!1765726 (+!1778 lt!1765735 lt!1765727))))

(declare-fun b!4609324 () Bool)

(declare-fun e!2875224 () Bool)

(declare-fun e!2875228 () Bool)

(assert (=> b!4609324 (= e!2875224 e!2875228)))

(declare-fun res!1929529 () Bool)

(assert (=> b!4609324 (=> (not res!1929529) (not e!2875228))))

(assert (=> b!4609324 (= res!1929529 (contains!14214 lt!1765741 key!3287))))

(assert (=> b!4609324 (= lt!1765741 (extractMap!1430 (toList!4755 lm!1477)))))

(declare-fun b!4609325 () Bool)

(declare-fun e!2875226 () Bool)

(declare-fun tp!1341027 () Bool)

(assert (=> b!4609325 (= e!2875226 tp!1341027)))

(declare-fun b!4609326 () Bool)

(declare-fun res!1929536 () Bool)

(assert (=> b!4609326 (=> res!1929536 e!2875223)))

(get-info :version)

(assert (=> b!4609326 (= res!1929536 (or ((_ is Nil!51208) (toList!4755 lm!1477)) (= (_1!29260 (h!57198 (toList!4755 lm!1477))) hash!344)))))

(declare-fun b!4609327 () Bool)

(declare-fun res!1929527 () Bool)

(assert (=> b!4609327 (=> res!1929527 e!2875229)))

(declare-fun lt!1765728 () List!51331)

(declare-fun apply!12107 (ListLongMap!3387 (_ BitVec 64)) List!51331)

(assert (=> b!4609327 (= res!1929527 (not (= (apply!12107 lt!1765732 hash!344) lt!1765728)))))

(declare-fun b!4609328 () Bool)

(assert (=> b!4609328 (= e!2875229 e!2875232)))

(declare-fun res!1929537 () Bool)

(assert (=> b!4609328 (=> res!1929537 e!2875232)))

(declare-fun lt!1765734 () Bool)

(assert (=> b!4609328 (= res!1929537 lt!1765734)))

(declare-fun lt!1765742 () Unit!109293)

(assert (=> b!4609328 (= lt!1765742 e!2875234)))

(declare-fun c!789556 () Bool)

(assert (=> b!4609328 (= c!789556 lt!1765734)))

(declare-fun containsKey!2256 (List!51331 K!12575) Bool)

(assert (=> b!4609328 (= lt!1765734 (not (containsKey!2256 lt!1765728 key!3287)))))

(declare-fun b!4609329 () Bool)

(declare-fun res!1929541 () Bool)

(assert (=> b!4609329 (=> res!1929541 e!2875227)))

(declare-fun head!9554 (ListLongMap!3387) tuple2!51932)

(assert (=> b!4609329 (= res!1929541 (not (= (head!9554 lt!1765726) lt!1765727)))))

(declare-fun b!4609330 () Bool)

(assert (=> b!4609330 (= e!2875233 (not e!2875223))))

(declare-fun res!1929539 () Bool)

(assert (=> b!4609330 (=> res!1929539 e!2875223)))

(declare-fun removePairForKey!995 (List!51331 K!12575) List!51331)

(assert (=> b!4609330 (= res!1929539 (not (= newBucket!178 (removePairForKey!995 lt!1765728 key!3287))))))

(declare-fun lt!1765736 () Unit!109293)

(declare-fun lambda!188154 () Int)

(declare-fun forallContained!2935 (List!51332 Int tuple2!51932) Unit!109293)

(assert (=> b!4609330 (= lt!1765736 (forallContained!2935 (toList!4755 lm!1477) lambda!188154 lt!1765738))))

(assert (=> b!4609330 (contains!14215 (toList!4755 lm!1477) lt!1765738)))

(assert (=> b!4609330 (= lt!1765738 (tuple2!51933 hash!344 lt!1765728))))

(declare-fun lt!1765744 () Unit!109293)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!880 (List!51332 (_ BitVec 64) List!51331) Unit!109293)

(assert (=> b!4609330 (= lt!1765744 (lemmaGetValueByKeyImpliesContainsTuple!880 (toList!4755 lm!1477) hash!344 lt!1765728))))

(assert (=> b!4609330 (= lt!1765728 (apply!12107 lm!1477 hash!344))))

(declare-fun lt!1765725 () (_ BitVec 64))

(declare-fun contains!14216 (ListLongMap!3387 (_ BitVec 64)) Bool)

(assert (=> b!4609330 (contains!14216 lm!1477 lt!1765725)))

(declare-fun lt!1765730 () Unit!109293)

(declare-fun lemmaInGenMapThenLongMapContainsHash!444 (ListLongMap!3387 K!12575 Hashable!5769) Unit!109293)

(assert (=> b!4609330 (= lt!1765730 (lemmaInGenMapThenLongMapContainsHash!444 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4609317 () Bool)

(assert (=> b!4609317 (= e!2875223 e!2875229)))

(declare-fun res!1929542 () Bool)

(assert (=> b!4609317 (=> res!1929542 e!2875229)))

(assert (=> b!4609317 (= res!1929542 (not (contains!14216 lt!1765732 hash!344)))))

(declare-fun tail!8027 (ListLongMap!3387) ListLongMap!3387)

(assert (=> b!4609317 (= lt!1765732 (tail!8027 lm!1477))))

(declare-fun res!1929544 () Bool)

(assert (=> start!460904 (=> (not res!1929544) (not e!2875224))))

(declare-fun forall!10690 (List!51332 Int) Bool)

(assert (=> start!460904 (= res!1929544 (forall!10690 (toList!4755 lm!1477) lambda!188154))))

(assert (=> start!460904 e!2875224))

(assert (=> start!460904 true))

(declare-fun inv!66759 (ListLongMap!3387) Bool)

(assert (=> start!460904 (and (inv!66759 lm!1477) e!2875226)))

(assert (=> start!460904 tp_is_empty!28773))

(assert (=> start!460904 e!2875231))

(declare-fun b!4609331 () Bool)

(declare-fun Unit!109296 () Unit!109293)

(assert (=> b!4609331 (= e!2875234 Unit!109296)))

(declare-fun lt!1765743 () Unit!109293)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!334 (ListLongMap!3387 K!12575 Hashable!5769) Unit!109293)

(assert (=> b!4609331 (= lt!1765743 (lemmaNotInItsHashBucketThenNotInMap!334 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4609331 false))

(declare-fun b!4609332 () Bool)

(assert (=> b!4609332 (= e!2875228 e!2875233)))

(declare-fun res!1929534 () Bool)

(assert (=> b!4609332 (=> (not res!1929534) (not e!2875233))))

(assert (=> b!4609332 (= res!1929534 (= lt!1765725 hash!344))))

(declare-fun hash!3305 (Hashable!5769 K!12575) (_ BitVec 64))

(assert (=> b!4609332 (= lt!1765725 (hash!3305 hashF!1107 key!3287))))

(declare-fun b!4609333 () Bool)

(assert (=> b!4609333 (= e!2875230 e!2875225)))

(declare-fun res!1929533 () Bool)

(assert (=> b!4609333 (=> res!1929533 e!2875225)))

(assert (=> b!4609333 (= res!1929533 (not (eq!743 lt!1765740 lt!1765741)))))

(assert (=> b!4609333 (= lt!1765740 (extractMap!1430 (toList!4755 (+!1778 lt!1765732 lt!1765727))))))

(assert (=> b!4609333 (= lt!1765727 (head!9554 lm!1477))))

(declare-fun -!512 (ListMap!4017 K!12575) ListMap!4017)

(assert (=> b!4609333 (eq!743 lt!1765737 (-!512 lt!1765733 key!3287))))

(assert (=> b!4609333 (= lt!1765737 (extractMap!1430 (toList!4755 lt!1765735)))))

(assert (=> b!4609333 (= lt!1765735 (+!1778 lt!1765732 lt!1765731))))

(assert (=> b!4609333 (= lt!1765731 (tuple2!51933 hash!344 newBucket!178))))

(declare-fun lt!1765739 () Unit!109293)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!227 (ListLongMap!3387 (_ BitVec 64) List!51331 K!12575 Hashable!5769) Unit!109293)

(assert (=> b!4609333 (= lt!1765739 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!227 lt!1765732 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4609334 () Bool)

(declare-fun res!1929526 () Bool)

(assert (=> b!4609334 (=> (not res!1929526) (not e!2875224))))

(declare-fun allKeysSameHashInMap!1481 (ListLongMap!3387 Hashable!5769) Bool)

(assert (=> b!4609334 (= res!1929526 (allKeysSameHashInMap!1481 lm!1477 hashF!1107))))

(assert (= (and start!460904 res!1929544) b!4609334))

(assert (= (and b!4609334 res!1929526) b!4609324))

(assert (= (and b!4609324 res!1929529) b!4609332))

(assert (= (and b!4609332 res!1929534) b!4609322))

(assert (= (and b!4609322 res!1929535) b!4609330))

(assert (= (and b!4609330 (not res!1929539)) b!4609320))

(assert (= (and b!4609320 (not res!1929528)) b!4609326))

(assert (= (and b!4609326 (not res!1929536)) b!4609317))

(assert (= (and b!4609317 (not res!1929542)) b!4609327))

(assert (= (and b!4609327 (not res!1929527)) b!4609316))

(assert (= (and b!4609316 (not res!1929540)) b!4609328))

(assert (= (and b!4609328 c!789556) b!4609331))

(assert (= (and b!4609328 (not c!789556)) b!4609314))

(assert (= (and b!4609328 (not res!1929537)) b!4609319))

(assert (= (and b!4609319 (not res!1929531)) b!4609315))

(assert (= (and b!4609315 (not res!1929530)) b!4609333))

(assert (= (and b!4609333 (not res!1929533)) b!4609318))

(assert (= (and b!4609318 (not res!1929525)) b!4609313))

(assert (= (and b!4609313 (not res!1929532)) b!4609323))

(assert (= (and b!4609323 (not res!1929538)) b!4609329))

(assert (= (and b!4609329 (not res!1929541)) b!4609321))

(assert (= (and b!4609321 (not res!1929543)) b!4609311))

(assert (= start!460904 b!4609325))

(assert (= (and start!460904 ((_ is Cons!51207) newBucket!178)) b!4609312))

(declare-fun m!5440065 () Bool)

(assert (=> b!4609316 m!5440065))

(declare-fun m!5440067 () Bool)

(assert (=> b!4609327 m!5440067))

(declare-fun m!5440069 () Bool)

(assert (=> b!4609315 m!5440069))

(declare-fun m!5440071 () Bool)

(assert (=> b!4609315 m!5440071))

(declare-fun m!5440073 () Bool)

(assert (=> b!4609315 m!5440073))

(declare-fun m!5440075 () Bool)

(assert (=> b!4609315 m!5440075))

(assert (=> b!4609315 m!5440073))

(declare-fun m!5440077 () Bool)

(assert (=> b!4609315 m!5440077))

(declare-fun m!5440079 () Bool)

(assert (=> b!4609311 m!5440079))

(declare-fun m!5440081 () Bool)

(assert (=> b!4609331 m!5440081))

(declare-fun m!5440083 () Bool)

(assert (=> b!4609321 m!5440083))

(declare-fun m!5440085 () Bool)

(assert (=> b!4609321 m!5440085))

(assert (=> b!4609321 m!5440083))

(assert (=> b!4609321 m!5440085))

(declare-fun m!5440087 () Bool)

(assert (=> b!4609321 m!5440087))

(declare-fun m!5440089 () Bool)

(assert (=> b!4609323 m!5440089))

(declare-fun m!5440091 () Bool)

(assert (=> b!4609323 m!5440091))

(declare-fun m!5440093 () Bool)

(assert (=> start!460904 m!5440093))

(declare-fun m!5440095 () Bool)

(assert (=> start!460904 m!5440095))

(declare-fun m!5440097 () Bool)

(assert (=> b!4609334 m!5440097))

(declare-fun m!5440099 () Bool)

(assert (=> b!4609317 m!5440099))

(declare-fun m!5440101 () Bool)

(assert (=> b!4609317 m!5440101))

(declare-fun m!5440103 () Bool)

(assert (=> b!4609329 m!5440103))

(declare-fun m!5440105 () Bool)

(assert (=> b!4609328 m!5440105))

(declare-fun m!5440107 () Bool)

(assert (=> b!4609333 m!5440107))

(declare-fun m!5440109 () Bool)

(assert (=> b!4609333 m!5440109))

(declare-fun m!5440111 () Bool)

(assert (=> b!4609333 m!5440111))

(declare-fun m!5440113 () Bool)

(assert (=> b!4609333 m!5440113))

(declare-fun m!5440115 () Bool)

(assert (=> b!4609333 m!5440115))

(declare-fun m!5440117 () Bool)

(assert (=> b!4609333 m!5440117))

(declare-fun m!5440119 () Bool)

(assert (=> b!4609333 m!5440119))

(assert (=> b!4609333 m!5440109))

(declare-fun m!5440121 () Bool)

(assert (=> b!4609333 m!5440121))

(declare-fun m!5440123 () Bool)

(assert (=> b!4609333 m!5440123))

(declare-fun m!5440125 () Bool)

(assert (=> b!4609320 m!5440125))

(declare-fun m!5440127 () Bool)

(assert (=> b!4609332 m!5440127))

(declare-fun m!5440129 () Bool)

(assert (=> b!4609319 m!5440129))

(declare-fun m!5440131 () Bool)

(assert (=> b!4609319 m!5440131))

(declare-fun m!5440133 () Bool)

(assert (=> b!4609319 m!5440133))

(declare-fun m!5440135 () Bool)

(assert (=> b!4609322 m!5440135))

(declare-fun m!5440137 () Bool)

(assert (=> b!4609318 m!5440137))

(declare-fun m!5440139 () Bool)

(assert (=> b!4609324 m!5440139))

(declare-fun m!5440141 () Bool)

(assert (=> b!4609324 m!5440141))

(declare-fun m!5440143 () Bool)

(assert (=> b!4609330 m!5440143))

(declare-fun m!5440145 () Bool)

(assert (=> b!4609330 m!5440145))

(declare-fun m!5440147 () Bool)

(assert (=> b!4609330 m!5440147))

(declare-fun m!5440149 () Bool)

(assert (=> b!4609330 m!5440149))

(declare-fun m!5440151 () Bool)

(assert (=> b!4609330 m!5440151))

(declare-fun m!5440153 () Bool)

(assert (=> b!4609330 m!5440153))

(declare-fun m!5440155 () Bool)

(assert (=> b!4609330 m!5440155))

(check-sat tp_is_empty!28773 (not start!460904) (not b!4609319) (not b!4609317) (not b!4609334) (not b!4609316) (not b!4609325) (not b!4609331) (not b!4609332) (not b!4609318) (not b!4609327) (not b!4609315) (not b!4609329) (not b!4609328) (not b!4609330) (not b!4609323) (not b!4609322) (not b!4609311) tp_is_empty!28775 (not b!4609320) (not b!4609321) (not b!4609312) (not b!4609333) (not b!4609324))
(check-sat)
(get-model)

(declare-fun d!1452503 () Bool)

(declare-fun res!1929549 () Bool)

(declare-fun e!2875239 () Bool)

(assert (=> d!1452503 (=> res!1929549 e!2875239)))

(assert (=> d!1452503 (= res!1929549 (not ((_ is Cons!51207) newBucket!178)))))

(assert (=> d!1452503 (= (noDuplicateKeys!1370 newBucket!178) e!2875239)))

(declare-fun b!4609339 () Bool)

(declare-fun e!2875240 () Bool)

(assert (=> b!4609339 (= e!2875239 e!2875240)))

(declare-fun res!1929550 () Bool)

(assert (=> b!4609339 (=> (not res!1929550) (not e!2875240))))

(assert (=> b!4609339 (= res!1929550 (not (containsKey!2256 (t!358325 newBucket!178) (_1!29259 (h!57197 newBucket!178)))))))

(declare-fun b!4609340 () Bool)

(assert (=> b!4609340 (= e!2875240 (noDuplicateKeys!1370 (t!358325 newBucket!178)))))

(assert (= (and d!1452503 (not res!1929549)) b!4609339))

(assert (= (and b!4609339 res!1929550) b!4609340))

(declare-fun m!5440157 () Bool)

(assert (=> b!4609339 m!5440157))

(declare-fun m!5440159 () Bool)

(assert (=> b!4609340 m!5440159))

(assert (=> b!4609320 d!1452503))

(declare-fun bs!1015623 () Bool)

(declare-fun d!1452505 () Bool)

(assert (= bs!1015623 (and d!1452505 start!460904)))

(declare-fun lambda!188157 () Int)

(assert (=> bs!1015623 (= lambda!188157 lambda!188154)))

(assert (=> d!1452505 (not (contains!14214 (extractMap!1430 (toList!4755 lm!1477)) key!3287))))

(declare-fun lt!1765748 () Unit!109293)

(declare-fun choose!31020 (ListLongMap!3387 K!12575 Hashable!5769) Unit!109293)

(assert (=> d!1452505 (= lt!1765748 (choose!31020 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1452505 (forall!10690 (toList!4755 lm!1477) lambda!188157)))

(assert (=> d!1452505 (= (lemmaNotInItsHashBucketThenNotInMap!334 lm!1477 key!3287 hashF!1107) lt!1765748)))

(declare-fun bs!1015624 () Bool)

(assert (= bs!1015624 d!1452505))

(assert (=> bs!1015624 m!5440141))

(assert (=> bs!1015624 m!5440141))

(declare-fun m!5440165 () Bool)

(assert (=> bs!1015624 m!5440165))

(declare-fun m!5440167 () Bool)

(assert (=> bs!1015624 m!5440167))

(declare-fun m!5440169 () Bool)

(assert (=> bs!1015624 m!5440169))

(assert (=> b!4609331 d!1452505))

(declare-fun d!1452511 () Bool)

(declare-fun res!1929558 () Bool)

(declare-fun e!2875251 () Bool)

(assert (=> d!1452511 (=> res!1929558 e!2875251)))

(assert (=> d!1452511 (= res!1929558 ((_ is Nil!51208) (toList!4755 lm!1477)))))

(assert (=> d!1452511 (= (forall!10690 (toList!4755 lm!1477) lambda!188154) e!2875251)))

(declare-fun b!4609354 () Bool)

(declare-fun e!2875252 () Bool)

(assert (=> b!4609354 (= e!2875251 e!2875252)))

(declare-fun res!1929559 () Bool)

(assert (=> b!4609354 (=> (not res!1929559) (not e!2875252))))

(declare-fun dynLambda!21437 (Int tuple2!51932) Bool)

(assert (=> b!4609354 (= res!1929559 (dynLambda!21437 lambda!188154 (h!57198 (toList!4755 lm!1477))))))

(declare-fun b!4609355 () Bool)

(assert (=> b!4609355 (= e!2875252 (forall!10690 (t!358326 (toList!4755 lm!1477)) lambda!188154))))

(assert (= (and d!1452511 (not res!1929558)) b!4609354))

(assert (= (and b!4609354 res!1929559) b!4609355))

(declare-fun b_lambda!170381 () Bool)

(assert (=> (not b_lambda!170381) (not b!4609354)))

(declare-fun m!5440179 () Bool)

(assert (=> b!4609354 m!5440179))

(declare-fun m!5440181 () Bool)

(assert (=> b!4609355 m!5440181))

(assert (=> start!460904 d!1452511))

(declare-fun d!1452517 () Bool)

(declare-fun isStrictlySorted!564 (List!51332) Bool)

(assert (=> d!1452517 (= (inv!66759 lm!1477) (isStrictlySorted!564 (toList!4755 lm!1477)))))

(declare-fun bs!1015626 () Bool)

(assert (= bs!1015626 d!1452517))

(declare-fun m!5440183 () Bool)

(assert (=> bs!1015626 m!5440183))

(assert (=> start!460904 d!1452517))

(declare-fun d!1452519 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8698 (List!51331) (InoxSet tuple2!51930))

(assert (=> d!1452519 (= (eq!743 (extractMap!1430 (toList!4755 lt!1765726)) (addToMapMapFromBucket!840 (_2!29260 lt!1765727) lt!1765737)) (= (content!8698 (toList!4756 (extractMap!1430 (toList!4755 lt!1765726)))) (content!8698 (toList!4756 (addToMapMapFromBucket!840 (_2!29260 lt!1765727) lt!1765737)))))))

(declare-fun bs!1015627 () Bool)

(assert (= bs!1015627 d!1452519))

(declare-fun m!5440185 () Bool)

(assert (=> bs!1015627 m!5440185))

(declare-fun m!5440187 () Bool)

(assert (=> bs!1015627 m!5440187))

(assert (=> b!4609321 d!1452519))

(declare-fun bs!1015635 () Bool)

(declare-fun d!1452521 () Bool)

(assert (= bs!1015635 (and d!1452521 start!460904)))

(declare-fun lambda!188166 () Int)

(assert (=> bs!1015635 (= lambda!188166 lambda!188154)))

(declare-fun bs!1015638 () Bool)

(assert (= bs!1015638 (and d!1452521 d!1452505)))

(assert (=> bs!1015638 (= lambda!188166 lambda!188157)))

(declare-fun lt!1765785 () ListMap!4017)

(declare-fun invariantList!1148 (List!51331) Bool)

(assert (=> d!1452521 (invariantList!1148 (toList!4756 lt!1765785))))

(declare-fun e!2875262 () ListMap!4017)

(assert (=> d!1452521 (= lt!1765785 e!2875262)))

(declare-fun c!789565 () Bool)

(assert (=> d!1452521 (= c!789565 ((_ is Cons!51208) (toList!4755 lt!1765726)))))

(assert (=> d!1452521 (forall!10690 (toList!4755 lt!1765726) lambda!188166)))

(assert (=> d!1452521 (= (extractMap!1430 (toList!4755 lt!1765726)) lt!1765785)))

(declare-fun b!4609374 () Bool)

(assert (=> b!4609374 (= e!2875262 (addToMapMapFromBucket!840 (_2!29260 (h!57198 (toList!4755 lt!1765726))) (extractMap!1430 (t!358326 (toList!4755 lt!1765726)))))))

(declare-fun b!4609375 () Bool)

(assert (=> b!4609375 (= e!2875262 (ListMap!4018 Nil!51207))))

(assert (= (and d!1452521 c!789565) b!4609374))

(assert (= (and d!1452521 (not c!789565)) b!4609375))

(declare-fun m!5440247 () Bool)

(assert (=> d!1452521 m!5440247))

(declare-fun m!5440249 () Bool)

(assert (=> d!1452521 m!5440249))

(declare-fun m!5440251 () Bool)

(assert (=> b!4609374 m!5440251))

(assert (=> b!4609374 m!5440251))

(declare-fun m!5440253 () Bool)

(assert (=> b!4609374 m!5440253))

(assert (=> b!4609321 d!1452521))

(declare-fun b!4609473 () Bool)

(assert (=> b!4609473 true))

(declare-fun bs!1015669 () Bool)

(declare-fun b!4609471 () Bool)

(assert (= bs!1015669 (and b!4609471 b!4609473)))

(declare-fun lambda!188233 () Int)

(declare-fun lambda!188232 () Int)

(assert (=> bs!1015669 (= lambda!188233 lambda!188232)))

(assert (=> b!4609471 true))

(declare-fun lambda!188234 () Int)

(declare-fun lt!1765918 () ListMap!4017)

(assert (=> bs!1015669 (= (= lt!1765918 lt!1765737) (= lambda!188234 lambda!188232))))

(assert (=> b!4609471 (= (= lt!1765918 lt!1765737) (= lambda!188234 lambda!188233))))

(assert (=> b!4609471 true))

(declare-fun bs!1015670 () Bool)

(declare-fun d!1452537 () Bool)

(assert (= bs!1015670 (and d!1452537 b!4609473)))

(declare-fun lambda!188235 () Int)

(declare-fun lt!1765911 () ListMap!4017)

(assert (=> bs!1015670 (= (= lt!1765911 lt!1765737) (= lambda!188235 lambda!188232))))

(declare-fun bs!1015671 () Bool)

(assert (= bs!1015671 (and d!1452537 b!4609471)))

(assert (=> bs!1015671 (= (= lt!1765911 lt!1765737) (= lambda!188235 lambda!188233))))

(assert (=> bs!1015671 (= (= lt!1765911 lt!1765918) (= lambda!188235 lambda!188234))))

(assert (=> d!1452537 true))

(declare-fun b!4609470 () Bool)

(declare-fun e!2875335 () Bool)

(assert (=> b!4609470 (= e!2875335 (invariantList!1148 (toList!4756 lt!1765911)))))

(assert (=> d!1452537 e!2875335))

(declare-fun res!1929630 () Bool)

(assert (=> d!1452537 (=> (not res!1929630) (not e!2875335))))

(declare-fun forall!10691 (List!51331 Int) Bool)

(assert (=> d!1452537 (= res!1929630 (forall!10691 (_2!29260 lt!1765727) lambda!188235))))

(declare-fun e!2875334 () ListMap!4017)

(assert (=> d!1452537 (= lt!1765911 e!2875334)))

(declare-fun c!789582 () Bool)

(assert (=> d!1452537 (= c!789582 ((_ is Nil!51207) (_2!29260 lt!1765727)))))

(assert (=> d!1452537 (noDuplicateKeys!1370 (_2!29260 lt!1765727))))

(assert (=> d!1452537 (= (addToMapMapFromBucket!840 (_2!29260 lt!1765727) lt!1765737) lt!1765911)))

(declare-fun call!321428 () Bool)

(declare-fun bm!321422 () Bool)

(assert (=> bm!321422 (= call!321428 (forall!10691 (toList!4756 lt!1765737) (ite c!789582 lambda!188232 lambda!188234)))))

(assert (=> b!4609471 (= e!2875334 lt!1765918)))

(declare-fun lt!1765914 () ListMap!4017)

(declare-fun +!1779 (ListMap!4017 tuple2!51930) ListMap!4017)

(assert (=> b!4609471 (= lt!1765914 (+!1779 lt!1765737 (h!57197 (_2!29260 lt!1765727))))))

(assert (=> b!4609471 (= lt!1765918 (addToMapMapFromBucket!840 (t!358325 (_2!29260 lt!1765727)) (+!1779 lt!1765737 (h!57197 (_2!29260 lt!1765727)))))))

(declare-fun lt!1765923 () Unit!109293)

(declare-fun call!321429 () Unit!109293)

(assert (=> b!4609471 (= lt!1765923 call!321429)))

(assert (=> b!4609471 (forall!10691 (toList!4756 lt!1765737) lambda!188233)))

(declare-fun lt!1765924 () Unit!109293)

(assert (=> b!4609471 (= lt!1765924 lt!1765923)))

(assert (=> b!4609471 (forall!10691 (toList!4756 lt!1765914) lambda!188234)))

(declare-fun lt!1765927 () Unit!109293)

(declare-fun Unit!109300 () Unit!109293)

(assert (=> b!4609471 (= lt!1765927 Unit!109300)))

(assert (=> b!4609471 (forall!10691 (t!358325 (_2!29260 lt!1765727)) lambda!188234)))

(declare-fun lt!1765920 () Unit!109293)

(declare-fun Unit!109301 () Unit!109293)

(assert (=> b!4609471 (= lt!1765920 Unit!109301)))

(declare-fun lt!1765916 () Unit!109293)

(declare-fun Unit!109302 () Unit!109293)

(assert (=> b!4609471 (= lt!1765916 Unit!109302)))

(declare-fun lt!1765921 () Unit!109293)

(declare-fun forallContained!2936 (List!51331 Int tuple2!51930) Unit!109293)

(assert (=> b!4609471 (= lt!1765921 (forallContained!2936 (toList!4756 lt!1765914) lambda!188234 (h!57197 (_2!29260 lt!1765727))))))

(assert (=> b!4609471 (contains!14214 lt!1765914 (_1!29259 (h!57197 (_2!29260 lt!1765727))))))

(declare-fun lt!1765925 () Unit!109293)

(declare-fun Unit!109303 () Unit!109293)

(assert (=> b!4609471 (= lt!1765925 Unit!109303)))

(assert (=> b!4609471 (contains!14214 lt!1765918 (_1!29259 (h!57197 (_2!29260 lt!1765727))))))

(declare-fun lt!1765931 () Unit!109293)

(declare-fun Unit!109304 () Unit!109293)

(assert (=> b!4609471 (= lt!1765931 Unit!109304)))

(assert (=> b!4609471 (forall!10691 (_2!29260 lt!1765727) lambda!188234)))

(declare-fun lt!1765929 () Unit!109293)

(declare-fun Unit!109305 () Unit!109293)

(assert (=> b!4609471 (= lt!1765929 Unit!109305)))

(assert (=> b!4609471 (forall!10691 (toList!4756 lt!1765914) lambda!188234)))

(declare-fun lt!1765913 () Unit!109293)

(declare-fun Unit!109306 () Unit!109293)

(assert (=> b!4609471 (= lt!1765913 Unit!109306)))

(declare-fun lt!1765930 () Unit!109293)

(declare-fun Unit!109307 () Unit!109293)

(assert (=> b!4609471 (= lt!1765930 Unit!109307)))

(declare-fun lt!1765919 () Unit!109293)

(declare-fun addForallContainsKeyThenBeforeAdding!451 (ListMap!4017 ListMap!4017 K!12575 V!12821) Unit!109293)

(assert (=> b!4609471 (= lt!1765919 (addForallContainsKeyThenBeforeAdding!451 lt!1765737 lt!1765918 (_1!29259 (h!57197 (_2!29260 lt!1765727))) (_2!29259 (h!57197 (_2!29260 lt!1765727)))))))

(declare-fun call!321427 () Bool)

(assert (=> b!4609471 call!321427))

(declare-fun lt!1765917 () Unit!109293)

(assert (=> b!4609471 (= lt!1765917 lt!1765919)))

(assert (=> b!4609471 call!321428))

(declare-fun lt!1765926 () Unit!109293)

(declare-fun Unit!109308 () Unit!109293)

(assert (=> b!4609471 (= lt!1765926 Unit!109308)))

(declare-fun res!1929628 () Bool)

(assert (=> b!4609471 (= res!1929628 (forall!10691 (_2!29260 lt!1765727) lambda!188234))))

(declare-fun e!2875333 () Bool)

(assert (=> b!4609471 (=> (not res!1929628) (not e!2875333))))

(assert (=> b!4609471 e!2875333))

(declare-fun lt!1765922 () Unit!109293)

(declare-fun Unit!109309 () Unit!109293)

(assert (=> b!4609471 (= lt!1765922 Unit!109309)))

(declare-fun b!4609472 () Bool)

(assert (=> b!4609472 (= e!2875333 (forall!10691 (toList!4756 lt!1765737) lambda!188234))))

(declare-fun bm!321423 () Bool)

(assert (=> bm!321423 (= call!321427 (forall!10691 (toList!4756 lt!1765737) (ite c!789582 lambda!188232 lambda!188234)))))

(assert (=> b!4609473 (= e!2875334 lt!1765737)))

(declare-fun lt!1765928 () Unit!109293)

(assert (=> b!4609473 (= lt!1765928 call!321429)))

(assert (=> b!4609473 call!321428))

(declare-fun lt!1765912 () Unit!109293)

(assert (=> b!4609473 (= lt!1765912 lt!1765928)))

(assert (=> b!4609473 call!321427))

(declare-fun lt!1765915 () Unit!109293)

(declare-fun Unit!109310 () Unit!109293)

(assert (=> b!4609473 (= lt!1765915 Unit!109310)))

(declare-fun bm!321424 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!451 (ListMap!4017) Unit!109293)

(assert (=> bm!321424 (= call!321429 (lemmaContainsAllItsOwnKeys!451 lt!1765737))))

(declare-fun b!4609474 () Bool)

(declare-fun res!1929629 () Bool)

(assert (=> b!4609474 (=> (not res!1929629) (not e!2875335))))

(assert (=> b!4609474 (= res!1929629 (forall!10691 (toList!4756 lt!1765737) lambda!188235))))

(assert (= (and d!1452537 c!789582) b!4609473))

(assert (= (and d!1452537 (not c!789582)) b!4609471))

(assert (= (and b!4609471 res!1929628) b!4609472))

(assert (= (or b!4609473 b!4609471) bm!321422))

(assert (= (or b!4609473 b!4609471) bm!321423))

(assert (= (or b!4609473 b!4609471) bm!321424))

(assert (= (and d!1452537 res!1929630) b!4609474))

(assert (= (and b!4609474 res!1929629) b!4609470))

(declare-fun m!5440369 () Bool)

(assert (=> d!1452537 m!5440369))

(assert (=> d!1452537 m!5440079))

(declare-fun m!5440371 () Bool)

(assert (=> bm!321424 m!5440371))

(declare-fun m!5440373 () Bool)

(assert (=> b!4609472 m!5440373))

(declare-fun m!5440375 () Bool)

(assert (=> bm!321422 m!5440375))

(declare-fun m!5440377 () Bool)

(assert (=> b!4609470 m!5440377))

(assert (=> bm!321423 m!5440375))

(declare-fun m!5440379 () Bool)

(assert (=> b!4609471 m!5440379))

(declare-fun m!5440381 () Bool)

(assert (=> b!4609471 m!5440381))

(declare-fun m!5440383 () Bool)

(assert (=> b!4609471 m!5440383))

(declare-fun m!5440385 () Bool)

(assert (=> b!4609471 m!5440385))

(declare-fun m!5440387 () Bool)

(assert (=> b!4609471 m!5440387))

(declare-fun m!5440389 () Bool)

(assert (=> b!4609471 m!5440389))

(declare-fun m!5440391 () Bool)

(assert (=> b!4609471 m!5440391))

(declare-fun m!5440393 () Bool)

(assert (=> b!4609471 m!5440393))

(assert (=> b!4609471 m!5440381))

(declare-fun m!5440395 () Bool)

(assert (=> b!4609471 m!5440395))

(declare-fun m!5440397 () Bool)

(assert (=> b!4609471 m!5440397))

(assert (=> b!4609471 m!5440387))

(assert (=> b!4609471 m!5440379))

(declare-fun m!5440399 () Bool)

(assert (=> b!4609474 m!5440399))

(assert (=> b!4609321 d!1452537))

(declare-fun d!1452579 () Bool)

(declare-fun hash!3309 (Hashable!5769 K!12575) (_ BitVec 64))

(assert (=> d!1452579 (= (hash!3305 hashF!1107 key!3287) (hash!3309 hashF!1107 key!3287))))

(declare-fun bs!1015672 () Bool)

(assert (= bs!1015672 d!1452579))

(declare-fun m!5440401 () Bool)

(assert (=> bs!1015672 m!5440401))

(assert (=> b!4609332 d!1452579))

(declare-fun d!1452581 () Bool)

(declare-fun res!1929634 () Bool)

(declare-fun e!2875339 () Bool)

(assert (=> d!1452581 (=> res!1929634 e!2875339)))

(assert (=> d!1452581 (= res!1929634 (not ((_ is Cons!51207) (_2!29260 lt!1765727))))))

(assert (=> d!1452581 (= (noDuplicateKeys!1370 (_2!29260 lt!1765727)) e!2875339)))

(declare-fun b!4609484 () Bool)

(declare-fun e!2875340 () Bool)

(assert (=> b!4609484 (= e!2875339 e!2875340)))

(declare-fun res!1929635 () Bool)

(assert (=> b!4609484 (=> (not res!1929635) (not e!2875340))))

(assert (=> b!4609484 (= res!1929635 (not (containsKey!2256 (t!358325 (_2!29260 lt!1765727)) (_1!29259 (h!57197 (_2!29260 lt!1765727))))))))

(declare-fun b!4609485 () Bool)

(assert (=> b!4609485 (= e!2875340 (noDuplicateKeys!1370 (t!358325 (_2!29260 lt!1765727))))))

(assert (= (and d!1452581 (not res!1929634)) b!4609484))

(assert (= (and b!4609484 res!1929635) b!4609485))

(declare-fun m!5440403 () Bool)

(assert (=> b!4609484 m!5440403))

(declare-fun m!5440405 () Bool)

(assert (=> b!4609485 m!5440405))

(assert (=> b!4609311 d!1452581))

(declare-fun bs!1015676 () Bool)

(declare-fun d!1452583 () Bool)

(assert (= bs!1015676 (and d!1452583 b!4609473)))

(declare-fun lambda!188242 () Int)

(assert (=> bs!1015676 (not (= lambda!188242 lambda!188232))))

(declare-fun bs!1015677 () Bool)

(assert (= bs!1015677 (and d!1452583 b!4609471)))

(assert (=> bs!1015677 (not (= lambda!188242 lambda!188233))))

(assert (=> bs!1015677 (not (= lambda!188242 lambda!188234))))

(declare-fun bs!1015678 () Bool)

(assert (= bs!1015678 (and d!1452583 d!1452537)))

(assert (=> bs!1015678 (not (= lambda!188242 lambda!188235))))

(assert (=> d!1452583 true))

(assert (=> d!1452583 true))

(assert (=> d!1452583 (= (allKeysSameHash!1226 newBucket!178 hash!344 hashF!1107) (forall!10691 newBucket!178 lambda!188242))))

(declare-fun bs!1015679 () Bool)

(assert (= bs!1015679 d!1452583))

(declare-fun m!5440407 () Bool)

(assert (=> bs!1015679 m!5440407))

(assert (=> b!4609322 d!1452583))

(declare-fun d!1452585 () Bool)

(declare-fun e!2875355 () Bool)

(assert (=> d!1452585 e!2875355))

(declare-fun res!1929644 () Bool)

(assert (=> d!1452585 (=> (not res!1929644) (not e!2875355))))

(declare-fun lt!1765971 () ListMap!4017)

(assert (=> d!1452585 (= res!1929644 (not (contains!14214 lt!1765971 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!230 (List!51331 K!12575) List!51331)

(assert (=> d!1452585 (= lt!1765971 (ListMap!4018 (removePresrvNoDuplicatedKeys!230 (toList!4756 lt!1765733) key!3287)))))

(assert (=> d!1452585 (= (-!512 lt!1765733 key!3287) lt!1765971)))

(declare-fun b!4609514 () Bool)

(declare-datatypes ((List!51334 0))(
  ( (Nil!51210) (Cons!51210 (h!57202 K!12575) (t!358328 List!51334)) )
))
(declare-fun content!8699 (List!51334) (InoxSet K!12575))

(declare-fun keys!17961 (ListMap!4017) List!51334)

(assert (=> b!4609514 (= e!2875355 (= ((_ map and) (content!8699 (keys!17961 lt!1765733)) ((_ map not) (store ((as const (Array K!12575 Bool)) false) key!3287 true))) (content!8699 (keys!17961 lt!1765971))))))

(assert (= (and d!1452585 res!1929644) b!4609514))

(declare-fun m!5440483 () Bool)

(assert (=> d!1452585 m!5440483))

(declare-fun m!5440485 () Bool)

(assert (=> d!1452585 m!5440485))

(declare-fun m!5440487 () Bool)

(assert (=> b!4609514 m!5440487))

(declare-fun m!5440489 () Bool)

(assert (=> b!4609514 m!5440489))

(declare-fun m!5440491 () Bool)

(assert (=> b!4609514 m!5440491))

(declare-fun m!5440493 () Bool)

(assert (=> b!4609514 m!5440493))

(assert (=> b!4609514 m!5440493))

(declare-fun m!5440495 () Bool)

(assert (=> b!4609514 m!5440495))

(assert (=> b!4609514 m!5440487))

(assert (=> b!4609333 d!1452585))

(declare-fun d!1452595 () Bool)

(assert (=> d!1452595 (= (eq!743 lt!1765740 lt!1765741) (= (content!8698 (toList!4756 lt!1765740)) (content!8698 (toList!4756 lt!1765741))))))

(declare-fun bs!1015684 () Bool)

(assert (= bs!1015684 d!1452595))

(declare-fun m!5440497 () Bool)

(assert (=> bs!1015684 m!5440497))

(declare-fun m!5440499 () Bool)

(assert (=> bs!1015684 m!5440499))

(assert (=> b!4609333 d!1452595))

(declare-fun bs!1015685 () Bool)

(declare-fun d!1452597 () Bool)

(assert (= bs!1015685 (and d!1452597 start!460904)))

(declare-fun lambda!188246 () Int)

(assert (=> bs!1015685 (= lambda!188246 lambda!188154)))

(declare-fun bs!1015686 () Bool)

(assert (= bs!1015686 (and d!1452597 d!1452505)))

(assert (=> bs!1015686 (= lambda!188246 lambda!188157)))

(declare-fun bs!1015687 () Bool)

(assert (= bs!1015687 (and d!1452597 d!1452521)))

(assert (=> bs!1015687 (= lambda!188246 lambda!188166)))

(declare-fun lt!1765972 () ListMap!4017)

(assert (=> d!1452597 (invariantList!1148 (toList!4756 lt!1765972))))

(declare-fun e!2875356 () ListMap!4017)

(assert (=> d!1452597 (= lt!1765972 e!2875356)))

(declare-fun c!789590 () Bool)

(assert (=> d!1452597 (= c!789590 ((_ is Cons!51208) (toList!4755 lt!1765735)))))

(assert (=> d!1452597 (forall!10690 (toList!4755 lt!1765735) lambda!188246)))

(assert (=> d!1452597 (= (extractMap!1430 (toList!4755 lt!1765735)) lt!1765972)))

(declare-fun b!4609515 () Bool)

(assert (=> b!4609515 (= e!2875356 (addToMapMapFromBucket!840 (_2!29260 (h!57198 (toList!4755 lt!1765735))) (extractMap!1430 (t!358326 (toList!4755 lt!1765735)))))))

(declare-fun b!4609516 () Bool)

(assert (=> b!4609516 (= e!2875356 (ListMap!4018 Nil!51207))))

(assert (= (and d!1452597 c!789590) b!4609515))

(assert (= (and d!1452597 (not c!789590)) b!4609516))

(declare-fun m!5440501 () Bool)

(assert (=> d!1452597 m!5440501))

(declare-fun m!5440503 () Bool)

(assert (=> d!1452597 m!5440503))

(declare-fun m!5440505 () Bool)

(assert (=> b!4609515 m!5440505))

(assert (=> b!4609515 m!5440505))

(declare-fun m!5440507 () Bool)

(assert (=> b!4609515 m!5440507))

(assert (=> b!4609333 d!1452597))

(declare-fun d!1452599 () Bool)

(declare-fun e!2875359 () Bool)

(assert (=> d!1452599 e!2875359))

(declare-fun res!1929650 () Bool)

(assert (=> d!1452599 (=> (not res!1929650) (not e!2875359))))

(declare-fun lt!1765981 () ListLongMap!3387)

(assert (=> d!1452599 (= res!1929650 (contains!14216 lt!1765981 (_1!29260 lt!1765731)))))

(declare-fun lt!1765983 () List!51332)

(assert (=> d!1452599 (= lt!1765981 (ListLongMap!3388 lt!1765983))))

(declare-fun lt!1765984 () Unit!109293)

(declare-fun lt!1765982 () Unit!109293)

(assert (=> d!1452599 (= lt!1765984 lt!1765982)))

(declare-datatypes ((Option!11443 0))(
  ( (None!11442) (Some!11442 (v!45504 List!51331)) )
))
(declare-fun getValueByKey!1361 (List!51332 (_ BitVec 64)) Option!11443)

(assert (=> d!1452599 (= (getValueByKey!1361 lt!1765983 (_1!29260 lt!1765731)) (Some!11442 (_2!29260 lt!1765731)))))

(declare-fun lemmaContainsTupThenGetReturnValue!806 (List!51332 (_ BitVec 64) List!51331) Unit!109293)

(assert (=> d!1452599 (= lt!1765982 (lemmaContainsTupThenGetReturnValue!806 lt!1765983 (_1!29260 lt!1765731) (_2!29260 lt!1765731)))))

(declare-fun insertStrictlySorted!498 (List!51332 (_ BitVec 64) List!51331) List!51332)

(assert (=> d!1452599 (= lt!1765983 (insertStrictlySorted!498 (toList!4755 lt!1765732) (_1!29260 lt!1765731) (_2!29260 lt!1765731)))))

(assert (=> d!1452599 (= (+!1778 lt!1765732 lt!1765731) lt!1765981)))

(declare-fun b!4609521 () Bool)

(declare-fun res!1929649 () Bool)

(assert (=> b!4609521 (=> (not res!1929649) (not e!2875359))))

(assert (=> b!4609521 (= res!1929649 (= (getValueByKey!1361 (toList!4755 lt!1765981) (_1!29260 lt!1765731)) (Some!11442 (_2!29260 lt!1765731))))))

(declare-fun b!4609522 () Bool)

(assert (=> b!4609522 (= e!2875359 (contains!14215 (toList!4755 lt!1765981) lt!1765731))))

(assert (= (and d!1452599 res!1929650) b!4609521))

(assert (= (and b!4609521 res!1929649) b!4609522))

(declare-fun m!5440509 () Bool)

(assert (=> d!1452599 m!5440509))

(declare-fun m!5440511 () Bool)

(assert (=> d!1452599 m!5440511))

(declare-fun m!5440513 () Bool)

(assert (=> d!1452599 m!5440513))

(declare-fun m!5440515 () Bool)

(assert (=> d!1452599 m!5440515))

(declare-fun m!5440517 () Bool)

(assert (=> b!4609521 m!5440517))

(declare-fun m!5440519 () Bool)

(assert (=> b!4609522 m!5440519))

(assert (=> b!4609333 d!1452599))

(declare-fun bs!1015716 () Bool)

(declare-fun d!1452601 () Bool)

(assert (= bs!1015716 (and d!1452601 start!460904)))

(declare-fun lambda!188254 () Int)

(assert (=> bs!1015716 (= lambda!188254 lambda!188154)))

(declare-fun bs!1015717 () Bool)

(assert (= bs!1015717 (and d!1452601 d!1452505)))

(assert (=> bs!1015717 (= lambda!188254 lambda!188157)))

(declare-fun bs!1015718 () Bool)

(assert (= bs!1015718 (and d!1452601 d!1452521)))

(assert (=> bs!1015718 (= lambda!188254 lambda!188166)))

(declare-fun bs!1015719 () Bool)

(assert (= bs!1015719 (and d!1452601 d!1452597)))

(assert (=> bs!1015719 (= lambda!188254 lambda!188246)))

(assert (=> d!1452601 (eq!743 (extractMap!1430 (toList!4755 (+!1778 lt!1765732 (tuple2!51933 hash!344 newBucket!178)))) (-!512 (extractMap!1430 (toList!4755 lt!1765732)) key!3287))))

(declare-fun lt!1765995 () Unit!109293)

(declare-fun choose!31021 (ListLongMap!3387 (_ BitVec 64) List!51331 K!12575 Hashable!5769) Unit!109293)

(assert (=> d!1452601 (= lt!1765995 (choose!31021 lt!1765732 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1452601 (forall!10690 (toList!4755 lt!1765732) lambda!188254)))

(assert (=> d!1452601 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!227 lt!1765732 hash!344 newBucket!178 key!3287 hashF!1107) lt!1765995)))

(declare-fun bs!1015720 () Bool)

(assert (= bs!1015720 d!1452601))

(assert (=> bs!1015720 m!5440069))

(declare-fun m!5440549 () Bool)

(assert (=> bs!1015720 m!5440549))

(declare-fun m!5440551 () Bool)

(assert (=> bs!1015720 m!5440551))

(declare-fun m!5440553 () Bool)

(assert (=> bs!1015720 m!5440553))

(declare-fun m!5440555 () Bool)

(assert (=> bs!1015720 m!5440555))

(declare-fun m!5440557 () Bool)

(assert (=> bs!1015720 m!5440557))

(assert (=> bs!1015720 m!5440549))

(assert (=> bs!1015720 m!5440069))

(assert (=> bs!1015720 m!5440551))

(declare-fun m!5440559 () Bool)

(assert (=> bs!1015720 m!5440559))

(assert (=> b!4609333 d!1452601))

(declare-fun d!1452611 () Bool)

(declare-fun head!9556 (List!51332) tuple2!51932)

(assert (=> d!1452611 (= (head!9554 lm!1477) (head!9556 (toList!4755 lm!1477)))))

(declare-fun bs!1015721 () Bool)

(assert (= bs!1015721 d!1452611))

(declare-fun m!5440561 () Bool)

(assert (=> bs!1015721 m!5440561))

(assert (=> b!4609333 d!1452611))

(declare-fun d!1452613 () Bool)

(assert (=> d!1452613 (= (eq!743 lt!1765737 (-!512 lt!1765733 key!3287)) (= (content!8698 (toList!4756 lt!1765737)) (content!8698 (toList!4756 (-!512 lt!1765733 key!3287)))))))

(declare-fun bs!1015722 () Bool)

(assert (= bs!1015722 d!1452613))

(declare-fun m!5440563 () Bool)

(assert (=> bs!1015722 m!5440563))

(declare-fun m!5440565 () Bool)

(assert (=> bs!1015722 m!5440565))

(assert (=> b!4609333 d!1452613))

(declare-fun d!1452615 () Bool)

(declare-fun e!2875368 () Bool)

(assert (=> d!1452615 e!2875368))

(declare-fun res!1929658 () Bool)

(assert (=> d!1452615 (=> (not res!1929658) (not e!2875368))))

(declare-fun lt!1765998 () ListLongMap!3387)

(assert (=> d!1452615 (= res!1929658 (contains!14216 lt!1765998 (_1!29260 lt!1765727)))))

(declare-fun lt!1766000 () List!51332)

(assert (=> d!1452615 (= lt!1765998 (ListLongMap!3388 lt!1766000))))

(declare-fun lt!1766001 () Unit!109293)

(declare-fun lt!1765999 () Unit!109293)

(assert (=> d!1452615 (= lt!1766001 lt!1765999)))

(assert (=> d!1452615 (= (getValueByKey!1361 lt!1766000 (_1!29260 lt!1765727)) (Some!11442 (_2!29260 lt!1765727)))))

(assert (=> d!1452615 (= lt!1765999 (lemmaContainsTupThenGetReturnValue!806 lt!1766000 (_1!29260 lt!1765727) (_2!29260 lt!1765727)))))

(assert (=> d!1452615 (= lt!1766000 (insertStrictlySorted!498 (toList!4755 lt!1765732) (_1!29260 lt!1765727) (_2!29260 lt!1765727)))))

(assert (=> d!1452615 (= (+!1778 lt!1765732 lt!1765727) lt!1765998)))

(declare-fun b!4609533 () Bool)

(declare-fun res!1929657 () Bool)

(assert (=> b!4609533 (=> (not res!1929657) (not e!2875368))))

(assert (=> b!4609533 (= res!1929657 (= (getValueByKey!1361 (toList!4755 lt!1765998) (_1!29260 lt!1765727)) (Some!11442 (_2!29260 lt!1765727))))))

(declare-fun b!4609534 () Bool)

(assert (=> b!4609534 (= e!2875368 (contains!14215 (toList!4755 lt!1765998) lt!1765727))))

(assert (= (and d!1452615 res!1929658) b!4609533))

(assert (= (and b!4609533 res!1929657) b!4609534))

(declare-fun m!5440567 () Bool)

(assert (=> d!1452615 m!5440567))

(declare-fun m!5440569 () Bool)

(assert (=> d!1452615 m!5440569))

(declare-fun m!5440571 () Bool)

(assert (=> d!1452615 m!5440571))

(declare-fun m!5440573 () Bool)

(assert (=> d!1452615 m!5440573))

(declare-fun m!5440575 () Bool)

(assert (=> b!4609533 m!5440575))

(declare-fun m!5440577 () Bool)

(assert (=> b!4609534 m!5440577))

(assert (=> b!4609333 d!1452615))

(declare-fun bs!1015728 () Bool)

(declare-fun d!1452617 () Bool)

(assert (= bs!1015728 (and d!1452617 start!460904)))

(declare-fun lambda!188258 () Int)

(assert (=> bs!1015728 (= lambda!188258 lambda!188154)))

(declare-fun bs!1015730 () Bool)

(assert (= bs!1015730 (and d!1452617 d!1452597)))

(assert (=> bs!1015730 (= lambda!188258 lambda!188246)))

(declare-fun bs!1015732 () Bool)

(assert (= bs!1015732 (and d!1452617 d!1452505)))

(assert (=> bs!1015732 (= lambda!188258 lambda!188157)))

(declare-fun bs!1015734 () Bool)

(assert (= bs!1015734 (and d!1452617 d!1452521)))

(assert (=> bs!1015734 (= lambda!188258 lambda!188166)))

(declare-fun bs!1015736 () Bool)

(assert (= bs!1015736 (and d!1452617 d!1452601)))

(assert (=> bs!1015736 (= lambda!188258 lambda!188254)))

(declare-fun lt!1766003 () ListMap!4017)

(assert (=> d!1452617 (invariantList!1148 (toList!4756 lt!1766003))))

(declare-fun e!2875369 () ListMap!4017)

(assert (=> d!1452617 (= lt!1766003 e!2875369)))

(declare-fun c!789593 () Bool)

(assert (=> d!1452617 (= c!789593 ((_ is Cons!51208) (toList!4755 (+!1778 lt!1765732 lt!1765727))))))

(assert (=> d!1452617 (forall!10690 (toList!4755 (+!1778 lt!1765732 lt!1765727)) lambda!188258)))

(assert (=> d!1452617 (= (extractMap!1430 (toList!4755 (+!1778 lt!1765732 lt!1765727))) lt!1766003)))

(declare-fun b!4609535 () Bool)

(assert (=> b!4609535 (= e!2875369 (addToMapMapFromBucket!840 (_2!29260 (h!57198 (toList!4755 (+!1778 lt!1765732 lt!1765727)))) (extractMap!1430 (t!358326 (toList!4755 (+!1778 lt!1765732 lt!1765727))))))))

(declare-fun b!4609536 () Bool)

(assert (=> b!4609536 (= e!2875369 (ListMap!4018 Nil!51207))))

(assert (= (and d!1452617 c!789593) b!4609535))

(assert (= (and d!1452617 (not c!789593)) b!4609536))

(declare-fun m!5440579 () Bool)

(assert (=> d!1452617 m!5440579))

(declare-fun m!5440581 () Bool)

(assert (=> d!1452617 m!5440581))

(declare-fun m!5440583 () Bool)

(assert (=> b!4609535 m!5440583))

(assert (=> b!4609535 m!5440583))

(declare-fun m!5440589 () Bool)

(assert (=> b!4609535 m!5440589))

(assert (=> b!4609333 d!1452617))

(declare-fun d!1452619 () Bool)

(declare-fun res!1929663 () Bool)

(declare-fun e!2875374 () Bool)

(assert (=> d!1452619 (=> res!1929663 e!2875374)))

(assert (=> d!1452619 (= res!1929663 (and ((_ is Cons!51207) lt!1765728) (= (_1!29259 (h!57197 lt!1765728)) key!3287)))))

(assert (=> d!1452619 (= (containsKey!2256 lt!1765728 key!3287) e!2875374)))

(declare-fun b!4609541 () Bool)

(declare-fun e!2875375 () Bool)

(assert (=> b!4609541 (= e!2875374 e!2875375)))

(declare-fun res!1929664 () Bool)

(assert (=> b!4609541 (=> (not res!1929664) (not e!2875375))))

(assert (=> b!4609541 (= res!1929664 ((_ is Cons!51207) lt!1765728))))

(declare-fun b!4609542 () Bool)

(assert (=> b!4609542 (= e!2875375 (containsKey!2256 (t!358325 lt!1765728) key!3287))))

(assert (= (and d!1452619 (not res!1929663)) b!4609541))

(assert (= (and b!4609541 res!1929664) b!4609542))

(declare-fun m!5440593 () Bool)

(assert (=> b!4609542 m!5440593))

(assert (=> b!4609328 d!1452619))

(declare-fun d!1452623 () Bool)

(assert (=> d!1452623 (= (eq!743 lt!1765741 lt!1765740) (= (content!8698 (toList!4756 lt!1765741)) (content!8698 (toList!4756 lt!1765740))))))

(declare-fun bs!1015740 () Bool)

(assert (= bs!1015740 d!1452623))

(assert (=> bs!1015740 m!5440499))

(assert (=> bs!1015740 m!5440497))

(assert (=> b!4609318 d!1452623))

(declare-fun d!1452625 () Bool)

(assert (=> d!1452625 (= (head!9554 lt!1765726) (head!9556 (toList!4755 lt!1765726)))))

(declare-fun bs!1015741 () Bool)

(assert (= bs!1015741 d!1452625))

(declare-fun m!5440595 () Bool)

(assert (=> bs!1015741 m!5440595))

(assert (=> b!4609329 d!1452625))

(declare-fun d!1452627 () Bool)

(declare-fun res!1929672 () Bool)

(declare-fun e!2875382 () Bool)

(assert (=> d!1452627 (=> res!1929672 e!2875382)))

(declare-fun e!2875384 () Bool)

(assert (=> d!1452627 (= res!1929672 e!2875384)))

(declare-fun res!1929673 () Bool)

(assert (=> d!1452627 (=> (not res!1929673) (not e!2875384))))

(assert (=> d!1452627 (= res!1929673 ((_ is Cons!51208) (t!358326 (toList!4755 lm!1477))))))

(assert (=> d!1452627 (= (containsKeyBiggerList!310 (t!358326 (toList!4755 lm!1477)) key!3287) e!2875382)))

(declare-fun b!4609549 () Bool)

(assert (=> b!4609549 (= e!2875384 (containsKey!2256 (_2!29260 (h!57198 (t!358326 (toList!4755 lm!1477)))) key!3287))))

(declare-fun b!4609550 () Bool)

(declare-fun e!2875383 () Bool)

(assert (=> b!4609550 (= e!2875382 e!2875383)))

(declare-fun res!1929671 () Bool)

(assert (=> b!4609550 (=> (not res!1929671) (not e!2875383))))

(assert (=> b!4609550 (= res!1929671 ((_ is Cons!51208) (t!358326 (toList!4755 lm!1477))))))

(declare-fun b!4609551 () Bool)

(assert (=> b!4609551 (= e!2875383 (containsKeyBiggerList!310 (t!358326 (t!358326 (toList!4755 lm!1477))) key!3287))))

(assert (= (and d!1452627 res!1929673) b!4609549))

(assert (= (and d!1452627 (not res!1929672)) b!4609550))

(assert (= (and b!4609550 res!1929671) b!4609551))

(declare-fun m!5440597 () Bool)

(assert (=> b!4609549 m!5440597))

(declare-fun m!5440599 () Bool)

(assert (=> b!4609551 m!5440599))

(assert (=> b!4609319 d!1452627))

(declare-fun d!1452629 () Bool)

(declare-fun res!1929675 () Bool)

(declare-fun e!2875385 () Bool)

(assert (=> d!1452629 (=> res!1929675 e!2875385)))

(declare-fun e!2875387 () Bool)

(assert (=> d!1452629 (= res!1929675 e!2875387)))

(declare-fun res!1929676 () Bool)

(assert (=> d!1452629 (=> (not res!1929676) (not e!2875387))))

(assert (=> d!1452629 (= res!1929676 ((_ is Cons!51208) (toList!4755 lt!1765732)))))

(assert (=> d!1452629 (= (containsKeyBiggerList!310 (toList!4755 lt!1765732) key!3287) e!2875385)))

(declare-fun b!4609552 () Bool)

(assert (=> b!4609552 (= e!2875387 (containsKey!2256 (_2!29260 (h!57198 (toList!4755 lt!1765732))) key!3287))))

(declare-fun b!4609553 () Bool)

(declare-fun e!2875386 () Bool)

(assert (=> b!4609553 (= e!2875385 e!2875386)))

(declare-fun res!1929674 () Bool)

(assert (=> b!4609553 (=> (not res!1929674) (not e!2875386))))

(assert (=> b!4609553 (= res!1929674 ((_ is Cons!51208) (toList!4755 lt!1765732)))))

(declare-fun b!4609554 () Bool)

(assert (=> b!4609554 (= e!2875386 (containsKeyBiggerList!310 (t!358326 (toList!4755 lt!1765732)) key!3287))))

(assert (= (and d!1452629 res!1929676) b!4609552))

(assert (= (and d!1452629 (not res!1929675)) b!4609553))

(assert (= (and b!4609553 res!1929674) b!4609554))

(declare-fun m!5440601 () Bool)

(assert (=> b!4609552 m!5440601))

(declare-fun m!5440603 () Bool)

(assert (=> b!4609554 m!5440603))

(assert (=> b!4609319 d!1452629))

(declare-fun bs!1015756 () Bool)

(declare-fun d!1452631 () Bool)

(assert (= bs!1015756 (and d!1452631 start!460904)))

(declare-fun lambda!188264 () Int)

(assert (=> bs!1015756 (= lambda!188264 lambda!188154)))

(declare-fun bs!1015757 () Bool)

(assert (= bs!1015757 (and d!1452631 d!1452617)))

(assert (=> bs!1015757 (= lambda!188264 lambda!188258)))

(declare-fun bs!1015758 () Bool)

(assert (= bs!1015758 (and d!1452631 d!1452597)))

(assert (=> bs!1015758 (= lambda!188264 lambda!188246)))

(declare-fun bs!1015759 () Bool)

(assert (= bs!1015759 (and d!1452631 d!1452505)))

(assert (=> bs!1015759 (= lambda!188264 lambda!188157)))

(declare-fun bs!1015760 () Bool)

(assert (= bs!1015760 (and d!1452631 d!1452521)))

(assert (=> bs!1015760 (= lambda!188264 lambda!188166)))

(declare-fun bs!1015761 () Bool)

(assert (= bs!1015761 (and d!1452631 d!1452601)))

(assert (=> bs!1015761 (= lambda!188264 lambda!188254)))

(assert (=> d!1452631 (containsKeyBiggerList!310 (toList!4755 lt!1765732) key!3287)))

(declare-fun lt!1766011 () Unit!109293)

(declare-fun choose!31022 (ListLongMap!3387 K!12575 Hashable!5769) Unit!109293)

(assert (=> d!1452631 (= lt!1766011 (choose!31022 lt!1765732 key!3287 hashF!1107))))

(assert (=> d!1452631 (forall!10690 (toList!4755 lt!1765732) lambda!188264)))

(assert (=> d!1452631 (= (lemmaInLongMapThenContainsKeyBiggerList!180 lt!1765732 key!3287 hashF!1107) lt!1766011)))

(declare-fun bs!1015762 () Bool)

(assert (= bs!1015762 d!1452631))

(assert (=> bs!1015762 m!5440131))

(declare-fun m!5440615 () Bool)

(assert (=> bs!1015762 m!5440615))

(declare-fun m!5440617 () Bool)

(assert (=> bs!1015762 m!5440617))

(assert (=> b!4609319 d!1452631))

(declare-fun d!1452637 () Bool)

(assert (=> d!1452637 (dynLambda!21437 lambda!188154 lt!1765738)))

(declare-fun lt!1766016 () Unit!109293)

(declare-fun choose!31023 (List!51332 Int tuple2!51932) Unit!109293)

(assert (=> d!1452637 (= lt!1766016 (choose!31023 (toList!4755 lm!1477) lambda!188154 lt!1765738))))

(declare-fun e!2875398 () Bool)

(assert (=> d!1452637 e!2875398))

(declare-fun res!1929681 () Bool)

(assert (=> d!1452637 (=> (not res!1929681) (not e!2875398))))

(assert (=> d!1452637 (= res!1929681 (forall!10690 (toList!4755 lm!1477) lambda!188154))))

(assert (=> d!1452637 (= (forallContained!2935 (toList!4755 lm!1477) lambda!188154 lt!1765738) lt!1766016)))

(declare-fun b!4609571 () Bool)

(assert (=> b!4609571 (= e!2875398 (contains!14215 (toList!4755 lm!1477) lt!1765738))))

(assert (= (and d!1452637 res!1929681) b!4609571))

(declare-fun b_lambda!170385 () Bool)

(assert (=> (not b_lambda!170385) (not d!1452637)))

(declare-fun m!5440629 () Bool)

(assert (=> d!1452637 m!5440629))

(declare-fun m!5440631 () Bool)

(assert (=> d!1452637 m!5440631))

(assert (=> d!1452637 m!5440093))

(assert (=> b!4609571 m!5440147))

(assert (=> b!4609330 d!1452637))

(declare-fun bs!1015763 () Bool)

(declare-fun d!1452643 () Bool)

(assert (= bs!1015763 (and d!1452643 start!460904)))

(declare-fun lambda!188267 () Int)

(assert (=> bs!1015763 (= lambda!188267 lambda!188154)))

(declare-fun bs!1015764 () Bool)

(assert (= bs!1015764 (and d!1452643 d!1452617)))

(assert (=> bs!1015764 (= lambda!188267 lambda!188258)))

(declare-fun bs!1015765 () Bool)

(assert (= bs!1015765 (and d!1452643 d!1452597)))

(assert (=> bs!1015765 (= lambda!188267 lambda!188246)))

(declare-fun bs!1015766 () Bool)

(assert (= bs!1015766 (and d!1452643 d!1452505)))

(assert (=> bs!1015766 (= lambda!188267 lambda!188157)))

(declare-fun bs!1015767 () Bool)

(assert (= bs!1015767 (and d!1452643 d!1452521)))

(assert (=> bs!1015767 (= lambda!188267 lambda!188166)))

(declare-fun bs!1015768 () Bool)

(assert (= bs!1015768 (and d!1452643 d!1452631)))

(assert (=> bs!1015768 (= lambda!188267 lambda!188264)))

(declare-fun bs!1015769 () Bool)

(assert (= bs!1015769 (and d!1452643 d!1452601)))

(assert (=> bs!1015769 (= lambda!188267 lambda!188254)))

(assert (=> d!1452643 (contains!14216 lm!1477 (hash!3305 hashF!1107 key!3287))))

(declare-fun lt!1766026 () Unit!109293)

(declare-fun choose!31024 (ListLongMap!3387 K!12575 Hashable!5769) Unit!109293)

(assert (=> d!1452643 (= lt!1766026 (choose!31024 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1452643 (forall!10690 (toList!4755 lm!1477) lambda!188267)))

(assert (=> d!1452643 (= (lemmaInGenMapThenLongMapContainsHash!444 lm!1477 key!3287 hashF!1107) lt!1766026)))

(declare-fun bs!1015770 () Bool)

(assert (= bs!1015770 d!1452643))

(assert (=> bs!1015770 m!5440127))

(assert (=> bs!1015770 m!5440127))

(declare-fun m!5440645 () Bool)

(assert (=> bs!1015770 m!5440645))

(declare-fun m!5440647 () Bool)

(assert (=> bs!1015770 m!5440647))

(declare-fun m!5440649 () Bool)

(assert (=> bs!1015770 m!5440649))

(assert (=> b!4609330 d!1452643))

(declare-fun d!1452649 () Bool)

(declare-fun get!16941 (Option!11443) List!51331)

(assert (=> d!1452649 (= (apply!12107 lm!1477 hash!344) (get!16941 (getValueByKey!1361 (toList!4755 lm!1477) hash!344)))))

(declare-fun bs!1015771 () Bool)

(assert (= bs!1015771 d!1452649))

(declare-fun m!5440655 () Bool)

(assert (=> bs!1015771 m!5440655))

(assert (=> bs!1015771 m!5440655))

(declare-fun m!5440657 () Bool)

(assert (=> bs!1015771 m!5440657))

(assert (=> b!4609330 d!1452649))

(declare-fun d!1452651 () Bool)

(declare-fun lt!1766032 () Bool)

(declare-fun content!8700 (List!51332) (InoxSet tuple2!51932))

(assert (=> d!1452651 (= lt!1766032 (select (content!8700 (toList!4755 lm!1477)) lt!1765738))))

(declare-fun e!2875418 () Bool)

(assert (=> d!1452651 (= lt!1766032 e!2875418)))

(declare-fun res!1929693 () Bool)

(assert (=> d!1452651 (=> (not res!1929693) (not e!2875418))))

(assert (=> d!1452651 (= res!1929693 ((_ is Cons!51208) (toList!4755 lm!1477)))))

(assert (=> d!1452651 (= (contains!14215 (toList!4755 lm!1477) lt!1765738) lt!1766032)))

(declare-fun b!4609595 () Bool)

(declare-fun e!2875417 () Bool)

(assert (=> b!4609595 (= e!2875418 e!2875417)))

(declare-fun res!1929694 () Bool)

(assert (=> b!4609595 (=> res!1929694 e!2875417)))

(assert (=> b!4609595 (= res!1929694 (= (h!57198 (toList!4755 lm!1477)) lt!1765738))))

(declare-fun b!4609596 () Bool)

(assert (=> b!4609596 (= e!2875417 (contains!14215 (t!358326 (toList!4755 lm!1477)) lt!1765738))))

(assert (= (and d!1452651 res!1929693) b!4609595))

(assert (= (and b!4609595 (not res!1929694)) b!4609596))

(declare-fun m!5440663 () Bool)

(assert (=> d!1452651 m!5440663))

(declare-fun m!5440665 () Bool)

(assert (=> d!1452651 m!5440665))

(assert (=> b!4609596 m!5440065))

(assert (=> b!4609330 d!1452651))

(declare-fun d!1452657 () Bool)

(assert (=> d!1452657 (contains!14215 (toList!4755 lm!1477) (tuple2!51933 hash!344 lt!1765728))))

(declare-fun lt!1766035 () Unit!109293)

(declare-fun choose!31025 (List!51332 (_ BitVec 64) List!51331) Unit!109293)

(assert (=> d!1452657 (= lt!1766035 (choose!31025 (toList!4755 lm!1477) hash!344 lt!1765728))))

(declare-fun e!2875421 () Bool)

(assert (=> d!1452657 e!2875421))

(declare-fun res!1929697 () Bool)

(assert (=> d!1452657 (=> (not res!1929697) (not e!2875421))))

(assert (=> d!1452657 (= res!1929697 (isStrictlySorted!564 (toList!4755 lm!1477)))))

(assert (=> d!1452657 (= (lemmaGetValueByKeyImpliesContainsTuple!880 (toList!4755 lm!1477) hash!344 lt!1765728) lt!1766035)))

(declare-fun b!4609599 () Bool)

(assert (=> b!4609599 (= e!2875421 (= (getValueByKey!1361 (toList!4755 lm!1477) hash!344) (Some!11442 lt!1765728)))))

(assert (= (and d!1452657 res!1929697) b!4609599))

(declare-fun m!5440667 () Bool)

(assert (=> d!1452657 m!5440667))

(declare-fun m!5440669 () Bool)

(assert (=> d!1452657 m!5440669))

(assert (=> d!1452657 m!5440183))

(assert (=> b!4609599 m!5440655))

(assert (=> b!4609330 d!1452657))

(declare-fun b!4609608 () Bool)

(declare-fun e!2875427 () List!51331)

(assert (=> b!4609608 (= e!2875427 (t!358325 lt!1765728))))

(declare-fun d!1452659 () Bool)

(declare-fun lt!1766038 () List!51331)

(assert (=> d!1452659 (not (containsKey!2256 lt!1766038 key!3287))))

(assert (=> d!1452659 (= lt!1766038 e!2875427)))

(declare-fun c!789606 () Bool)

(assert (=> d!1452659 (= c!789606 (and ((_ is Cons!51207) lt!1765728) (= (_1!29259 (h!57197 lt!1765728)) key!3287)))))

(assert (=> d!1452659 (noDuplicateKeys!1370 lt!1765728)))

(assert (=> d!1452659 (= (removePairForKey!995 lt!1765728 key!3287) lt!1766038)))

(declare-fun b!4609610 () Bool)

(declare-fun e!2875426 () List!51331)

(assert (=> b!4609610 (= e!2875426 (Cons!51207 (h!57197 lt!1765728) (removePairForKey!995 (t!358325 lt!1765728) key!3287)))))

(declare-fun b!4609609 () Bool)

(assert (=> b!4609609 (= e!2875427 e!2875426)))

(declare-fun c!789605 () Bool)

(assert (=> b!4609609 (= c!789605 ((_ is Cons!51207) lt!1765728))))

(declare-fun b!4609611 () Bool)

(assert (=> b!4609611 (= e!2875426 Nil!51207)))

(assert (= (and d!1452659 c!789606) b!4609608))

(assert (= (and d!1452659 (not c!789606)) b!4609609))

(assert (= (and b!4609609 c!789605) b!4609610))

(assert (= (and b!4609609 (not c!789605)) b!4609611))

(declare-fun m!5440671 () Bool)

(assert (=> d!1452659 m!5440671))

(declare-fun m!5440673 () Bool)

(assert (=> d!1452659 m!5440673))

(declare-fun m!5440675 () Bool)

(assert (=> b!4609610 m!5440675))

(assert (=> b!4609330 d!1452659))

(declare-fun d!1452661 () Bool)

(declare-fun e!2875433 () Bool)

(assert (=> d!1452661 e!2875433))

(declare-fun res!1929700 () Bool)

(assert (=> d!1452661 (=> res!1929700 e!2875433)))

(declare-fun lt!1766049 () Bool)

(assert (=> d!1452661 (= res!1929700 (not lt!1766049))))

(declare-fun lt!1766050 () Bool)

(assert (=> d!1452661 (= lt!1766049 lt!1766050)))

(declare-fun lt!1766047 () Unit!109293)

(declare-fun e!2875432 () Unit!109293)

(assert (=> d!1452661 (= lt!1766047 e!2875432)))

(declare-fun c!789609 () Bool)

(assert (=> d!1452661 (= c!789609 lt!1766050)))

(declare-fun containsKey!2259 (List!51332 (_ BitVec 64)) Bool)

(assert (=> d!1452661 (= lt!1766050 (containsKey!2259 (toList!4755 lm!1477) lt!1765725))))

(assert (=> d!1452661 (= (contains!14216 lm!1477 lt!1765725) lt!1766049)))

(declare-fun b!4609618 () Bool)

(declare-fun lt!1766048 () Unit!109293)

(assert (=> b!4609618 (= e!2875432 lt!1766048)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1263 (List!51332 (_ BitVec 64)) Unit!109293)

(assert (=> b!4609618 (= lt!1766048 (lemmaContainsKeyImpliesGetValueByKeyDefined!1263 (toList!4755 lm!1477) lt!1765725))))

(declare-fun isDefined!8710 (Option!11443) Bool)

(assert (=> b!4609618 (isDefined!8710 (getValueByKey!1361 (toList!4755 lm!1477) lt!1765725))))

(declare-fun b!4609619 () Bool)

(declare-fun Unit!109326 () Unit!109293)

(assert (=> b!4609619 (= e!2875432 Unit!109326)))

(declare-fun b!4609620 () Bool)

(assert (=> b!4609620 (= e!2875433 (isDefined!8710 (getValueByKey!1361 (toList!4755 lm!1477) lt!1765725)))))

(assert (= (and d!1452661 c!789609) b!4609618))

(assert (= (and d!1452661 (not c!789609)) b!4609619))

(assert (= (and d!1452661 (not res!1929700)) b!4609620))

(declare-fun m!5440677 () Bool)

(assert (=> d!1452661 m!5440677))

(declare-fun m!5440679 () Bool)

(assert (=> b!4609618 m!5440679))

(declare-fun m!5440681 () Bool)

(assert (=> b!4609618 m!5440681))

(assert (=> b!4609618 m!5440681))

(declare-fun m!5440683 () Bool)

(assert (=> b!4609618 m!5440683))

(assert (=> b!4609620 m!5440681))

(assert (=> b!4609620 m!5440681))

(assert (=> b!4609620 m!5440683))

(assert (=> b!4609330 d!1452661))

(declare-fun b!4609639 () Bool)

(declare-fun e!2875447 () Unit!109293)

(declare-fun Unit!109327 () Unit!109293)

(assert (=> b!4609639 (= e!2875447 Unit!109327)))

(declare-fun b!4609640 () Bool)

(declare-fun e!2875450 () List!51334)

(assert (=> b!4609640 (= e!2875450 (keys!17961 lt!1765733))))

(declare-fun bm!321432 () Bool)

(declare-fun call!321437 () Bool)

(declare-fun contains!14218 (List!51334 K!12575) Bool)

(assert (=> bm!321432 (= call!321437 (contains!14218 e!2875450 key!3287))))

(declare-fun c!789617 () Bool)

(declare-fun c!789618 () Bool)

(assert (=> bm!321432 (= c!789617 c!789618)))

(declare-fun b!4609641 () Bool)

(declare-fun e!2875451 () Bool)

(declare-fun e!2875449 () Bool)

(assert (=> b!4609641 (= e!2875451 e!2875449)))

(declare-fun res!1929708 () Bool)

(assert (=> b!4609641 (=> (not res!1929708) (not e!2875449))))

(declare-datatypes ((Option!11444 0))(
  ( (None!11443) (Some!11443 (v!45505 V!12821)) )
))
(declare-fun isDefined!8711 (Option!11444) Bool)

(declare-fun getValueByKey!1362 (List!51331 K!12575) Option!11444)

(assert (=> b!4609641 (= res!1929708 (isDefined!8711 (getValueByKey!1362 (toList!4756 lt!1765733) key!3287)))))

(declare-fun d!1452663 () Bool)

(assert (=> d!1452663 e!2875451))

(declare-fun res!1929709 () Bool)

(assert (=> d!1452663 (=> res!1929709 e!2875451)))

(declare-fun e!2875448 () Bool)

(assert (=> d!1452663 (= res!1929709 e!2875448)))

(declare-fun res!1929707 () Bool)

(assert (=> d!1452663 (=> (not res!1929707) (not e!2875448))))

(declare-fun lt!1766074 () Bool)

(assert (=> d!1452663 (= res!1929707 (not lt!1766074))))

(declare-fun lt!1766071 () Bool)

(assert (=> d!1452663 (= lt!1766074 lt!1766071)))

(declare-fun lt!1766069 () Unit!109293)

(declare-fun e!2875446 () Unit!109293)

(assert (=> d!1452663 (= lt!1766069 e!2875446)))

(assert (=> d!1452663 (= c!789618 lt!1766071)))

(declare-fun containsKey!2260 (List!51331 K!12575) Bool)

(assert (=> d!1452663 (= lt!1766071 (containsKey!2260 (toList!4756 lt!1765733) key!3287))))

(assert (=> d!1452663 (= (contains!14214 lt!1765733 key!3287) lt!1766074)))

(declare-fun b!4609642 () Bool)

(assert (=> b!4609642 false))

(declare-fun lt!1766073 () Unit!109293)

(declare-fun lt!1766070 () Unit!109293)

(assert (=> b!4609642 (= lt!1766073 lt!1766070)))

(assert (=> b!4609642 (containsKey!2260 (toList!4756 lt!1765733) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!597 (List!51331 K!12575) Unit!109293)

(assert (=> b!4609642 (= lt!1766070 (lemmaInGetKeysListThenContainsKey!597 (toList!4756 lt!1765733) key!3287))))

(declare-fun Unit!109328 () Unit!109293)

(assert (=> b!4609642 (= e!2875447 Unit!109328)))

(declare-fun b!4609643 () Bool)

(assert (=> b!4609643 (= e!2875449 (contains!14218 (keys!17961 lt!1765733) key!3287))))

(declare-fun b!4609644 () Bool)

(declare-fun getKeysList!598 (List!51331) List!51334)

(assert (=> b!4609644 (= e!2875450 (getKeysList!598 (toList!4756 lt!1765733)))))

(declare-fun b!4609645 () Bool)

(assert (=> b!4609645 (= e!2875446 e!2875447)))

(declare-fun c!789616 () Bool)

(assert (=> b!4609645 (= c!789616 call!321437)))

(declare-fun b!4609646 () Bool)

(assert (=> b!4609646 (= e!2875448 (not (contains!14218 (keys!17961 lt!1765733) key!3287)))))

(declare-fun b!4609647 () Bool)

(declare-fun lt!1766067 () Unit!109293)

(assert (=> b!4609647 (= e!2875446 lt!1766067)))

(declare-fun lt!1766068 () Unit!109293)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1264 (List!51331 K!12575) Unit!109293)

(assert (=> b!4609647 (= lt!1766068 (lemmaContainsKeyImpliesGetValueByKeyDefined!1264 (toList!4756 lt!1765733) key!3287))))

(assert (=> b!4609647 (isDefined!8711 (getValueByKey!1362 (toList!4756 lt!1765733) key!3287))))

(declare-fun lt!1766072 () Unit!109293)

(assert (=> b!4609647 (= lt!1766072 lt!1766068)))

(declare-fun lemmaInListThenGetKeysListContains!593 (List!51331 K!12575) Unit!109293)

(assert (=> b!4609647 (= lt!1766067 (lemmaInListThenGetKeysListContains!593 (toList!4756 lt!1765733) key!3287))))

(assert (=> b!4609647 call!321437))

(assert (= (and d!1452663 c!789618) b!4609647))

(assert (= (and d!1452663 (not c!789618)) b!4609645))

(assert (= (and b!4609645 c!789616) b!4609642))

(assert (= (and b!4609645 (not c!789616)) b!4609639))

(assert (= (or b!4609647 b!4609645) bm!321432))

(assert (= (and bm!321432 c!789617) b!4609644))

(assert (= (and bm!321432 (not c!789617)) b!4609640))

(assert (= (and d!1452663 res!1929707) b!4609646))

(assert (= (and d!1452663 (not res!1929709)) b!4609641))

(assert (= (and b!4609641 res!1929708) b!4609643))

(assert (=> b!4609640 m!5440493))

(declare-fun m!5440685 () Bool)

(assert (=> b!4609647 m!5440685))

(declare-fun m!5440687 () Bool)

(assert (=> b!4609647 m!5440687))

(assert (=> b!4609647 m!5440687))

(declare-fun m!5440689 () Bool)

(assert (=> b!4609647 m!5440689))

(declare-fun m!5440691 () Bool)

(assert (=> b!4609647 m!5440691))

(assert (=> b!4609646 m!5440493))

(assert (=> b!4609646 m!5440493))

(declare-fun m!5440693 () Bool)

(assert (=> b!4609646 m!5440693))

(declare-fun m!5440695 () Bool)

(assert (=> bm!321432 m!5440695))

(declare-fun m!5440697 () Bool)

(assert (=> b!4609644 m!5440697))

(declare-fun m!5440699 () Bool)

(assert (=> d!1452663 m!5440699))

(assert (=> b!4609641 m!5440687))

(assert (=> b!4609641 m!5440687))

(assert (=> b!4609641 m!5440689))

(assert (=> b!4609643 m!5440493))

(assert (=> b!4609643 m!5440493))

(assert (=> b!4609643 m!5440693))

(assert (=> b!4609642 m!5440699))

(declare-fun m!5440701 () Bool)

(assert (=> b!4609642 m!5440701))

(assert (=> b!4609315 d!1452663))

(declare-fun bs!1015774 () Bool)

(declare-fun d!1452665 () Bool)

(assert (= bs!1015774 (and d!1452665 start!460904)))

(declare-fun lambda!188268 () Int)

(assert (=> bs!1015774 (= lambda!188268 lambda!188154)))

(declare-fun bs!1015775 () Bool)

(assert (= bs!1015775 (and d!1452665 d!1452617)))

(assert (=> bs!1015775 (= lambda!188268 lambda!188258)))

(declare-fun bs!1015776 () Bool)

(assert (= bs!1015776 (and d!1452665 d!1452597)))

(assert (=> bs!1015776 (= lambda!188268 lambda!188246)))

(declare-fun bs!1015777 () Bool)

(assert (= bs!1015777 (and d!1452665 d!1452505)))

(assert (=> bs!1015777 (= lambda!188268 lambda!188157)))

(declare-fun bs!1015778 () Bool)

(assert (= bs!1015778 (and d!1452665 d!1452521)))

(assert (=> bs!1015778 (= lambda!188268 lambda!188166)))

(declare-fun bs!1015779 () Bool)

(assert (= bs!1015779 (and d!1452665 d!1452643)))

(assert (=> bs!1015779 (= lambda!188268 lambda!188267)))

(declare-fun bs!1015780 () Bool)

(assert (= bs!1015780 (and d!1452665 d!1452631)))

(assert (=> bs!1015780 (= lambda!188268 lambda!188264)))

(declare-fun bs!1015781 () Bool)

(assert (= bs!1015781 (and d!1452665 d!1452601)))

(assert (=> bs!1015781 (= lambda!188268 lambda!188254)))

(declare-fun lt!1766075 () ListMap!4017)

(assert (=> d!1452665 (invariantList!1148 (toList!4756 lt!1766075))))

(declare-fun e!2875452 () ListMap!4017)

(assert (=> d!1452665 (= lt!1766075 e!2875452)))

(declare-fun c!789619 () Bool)

(assert (=> d!1452665 (= c!789619 ((_ is Cons!51208) (t!358326 (toList!4755 lm!1477))))))

(assert (=> d!1452665 (forall!10690 (t!358326 (toList!4755 lm!1477)) lambda!188268)))

(assert (=> d!1452665 (= (extractMap!1430 (t!358326 (toList!4755 lm!1477))) lt!1766075)))

(declare-fun b!4609648 () Bool)

(assert (=> b!4609648 (= e!2875452 (addToMapMapFromBucket!840 (_2!29260 (h!57198 (t!358326 (toList!4755 lm!1477)))) (extractMap!1430 (t!358326 (t!358326 (toList!4755 lm!1477))))))))

(declare-fun b!4609649 () Bool)

(assert (=> b!4609649 (= e!2875452 (ListMap!4018 Nil!51207))))

(assert (= (and d!1452665 c!789619) b!4609648))

(assert (= (and d!1452665 (not c!789619)) b!4609649))

(declare-fun m!5440703 () Bool)

(assert (=> d!1452665 m!5440703))

(declare-fun m!5440705 () Bool)

(assert (=> d!1452665 m!5440705))

(declare-fun m!5440707 () Bool)

(assert (=> b!4609648 m!5440707))

(assert (=> b!4609648 m!5440707))

(declare-fun m!5440709 () Bool)

(assert (=> b!4609648 m!5440709))

(assert (=> b!4609315 d!1452665))

(declare-fun bs!1015782 () Bool)

(declare-fun d!1452667 () Bool)

(assert (= bs!1015782 (and d!1452667 start!460904)))

(declare-fun lambda!188271 () Int)

(assert (=> bs!1015782 (= lambda!188271 lambda!188154)))

(declare-fun bs!1015783 () Bool)

(assert (= bs!1015783 (and d!1452667 d!1452617)))

(assert (=> bs!1015783 (= lambda!188271 lambda!188258)))

(declare-fun bs!1015784 () Bool)

(assert (= bs!1015784 (and d!1452667 d!1452597)))

(assert (=> bs!1015784 (= lambda!188271 lambda!188246)))

(declare-fun bs!1015785 () Bool)

(assert (= bs!1015785 (and d!1452667 d!1452505)))

(assert (=> bs!1015785 (= lambda!188271 lambda!188157)))

(declare-fun bs!1015786 () Bool)

(assert (= bs!1015786 (and d!1452667 d!1452521)))

(assert (=> bs!1015786 (= lambda!188271 lambda!188166)))

(declare-fun bs!1015787 () Bool)

(assert (= bs!1015787 (and d!1452667 d!1452665)))

(assert (=> bs!1015787 (= lambda!188271 lambda!188268)))

(declare-fun bs!1015788 () Bool)

(assert (= bs!1015788 (and d!1452667 d!1452643)))

(assert (=> bs!1015788 (= lambda!188271 lambda!188267)))

(declare-fun bs!1015789 () Bool)

(assert (= bs!1015789 (and d!1452667 d!1452631)))

(assert (=> bs!1015789 (= lambda!188271 lambda!188264)))

(declare-fun bs!1015790 () Bool)

(assert (= bs!1015790 (and d!1452667 d!1452601)))

(assert (=> bs!1015790 (= lambda!188271 lambda!188254)))

(assert (=> d!1452667 (contains!14214 (extractMap!1430 (toList!4755 lt!1765732)) key!3287)))

(declare-fun lt!1766078 () Unit!109293)

(declare-fun choose!31028 (ListLongMap!3387 K!12575 Hashable!5769) Unit!109293)

(assert (=> d!1452667 (= lt!1766078 (choose!31028 lt!1765732 key!3287 hashF!1107))))

(assert (=> d!1452667 (forall!10690 (toList!4755 lt!1765732) lambda!188271)))

(assert (=> d!1452667 (= (lemmaListContainsThenExtractedMapContains!282 lt!1765732 key!3287 hashF!1107) lt!1766078)))

(declare-fun bs!1015791 () Bool)

(assert (= bs!1015791 d!1452667))

(assert (=> bs!1015791 m!5440069))

(assert (=> bs!1015791 m!5440069))

(declare-fun m!5440711 () Bool)

(assert (=> bs!1015791 m!5440711))

(declare-fun m!5440713 () Bool)

(assert (=> bs!1015791 m!5440713))

(declare-fun m!5440715 () Bool)

(assert (=> bs!1015791 m!5440715))

(assert (=> b!4609315 d!1452667))

(declare-fun bs!1015792 () Bool)

(declare-fun d!1452669 () Bool)

(assert (= bs!1015792 (and d!1452669 start!460904)))

(declare-fun lambda!188272 () Int)

(assert (=> bs!1015792 (= lambda!188272 lambda!188154)))

(declare-fun bs!1015793 () Bool)

(assert (= bs!1015793 (and d!1452669 d!1452617)))

(assert (=> bs!1015793 (= lambda!188272 lambda!188258)))

(declare-fun bs!1015794 () Bool)

(assert (= bs!1015794 (and d!1452669 d!1452667)))

(assert (=> bs!1015794 (= lambda!188272 lambda!188271)))

(declare-fun bs!1015795 () Bool)

(assert (= bs!1015795 (and d!1452669 d!1452597)))

(assert (=> bs!1015795 (= lambda!188272 lambda!188246)))

(declare-fun bs!1015796 () Bool)

(assert (= bs!1015796 (and d!1452669 d!1452505)))

(assert (=> bs!1015796 (= lambda!188272 lambda!188157)))

(declare-fun bs!1015797 () Bool)

(assert (= bs!1015797 (and d!1452669 d!1452521)))

(assert (=> bs!1015797 (= lambda!188272 lambda!188166)))

(declare-fun bs!1015798 () Bool)

(assert (= bs!1015798 (and d!1452669 d!1452665)))

(assert (=> bs!1015798 (= lambda!188272 lambda!188268)))

(declare-fun bs!1015799 () Bool)

(assert (= bs!1015799 (and d!1452669 d!1452643)))

(assert (=> bs!1015799 (= lambda!188272 lambda!188267)))

(declare-fun bs!1015800 () Bool)

(assert (= bs!1015800 (and d!1452669 d!1452631)))

(assert (=> bs!1015800 (= lambda!188272 lambda!188264)))

(declare-fun bs!1015801 () Bool)

(assert (= bs!1015801 (and d!1452669 d!1452601)))

(assert (=> bs!1015801 (= lambda!188272 lambda!188254)))

(declare-fun lt!1766079 () ListMap!4017)

(assert (=> d!1452669 (invariantList!1148 (toList!4756 lt!1766079))))

(declare-fun e!2875453 () ListMap!4017)

(assert (=> d!1452669 (= lt!1766079 e!2875453)))

(declare-fun c!789620 () Bool)

(assert (=> d!1452669 (= c!789620 ((_ is Cons!51208) (toList!4755 lt!1765732)))))

(assert (=> d!1452669 (forall!10690 (toList!4755 lt!1765732) lambda!188272)))

(assert (=> d!1452669 (= (extractMap!1430 (toList!4755 lt!1765732)) lt!1766079)))

(declare-fun b!4609650 () Bool)

(assert (=> b!4609650 (= e!2875453 (addToMapMapFromBucket!840 (_2!29260 (h!57198 (toList!4755 lt!1765732))) (extractMap!1430 (t!358326 (toList!4755 lt!1765732)))))))

(declare-fun b!4609651 () Bool)

(assert (=> b!4609651 (= e!2875453 (ListMap!4018 Nil!51207))))

(assert (= (and d!1452669 c!789620) b!4609650))

(assert (= (and d!1452669 (not c!789620)) b!4609651))

(declare-fun m!5440717 () Bool)

(assert (=> d!1452669 m!5440717))

(declare-fun m!5440719 () Bool)

(assert (=> d!1452669 m!5440719))

(declare-fun m!5440721 () Bool)

(assert (=> b!4609650 m!5440721))

(assert (=> b!4609650 m!5440721))

(declare-fun m!5440723 () Bool)

(assert (=> b!4609650 m!5440723))

(assert (=> b!4609315 d!1452669))

(declare-fun b!4609652 () Bool)

(declare-fun e!2875455 () Unit!109293)

(declare-fun Unit!109329 () Unit!109293)

(assert (=> b!4609652 (= e!2875455 Unit!109329)))

(declare-fun b!4609653 () Bool)

(declare-fun e!2875458 () List!51334)

(assert (=> b!4609653 (= e!2875458 (keys!17961 (extractMap!1430 (t!358326 (toList!4755 lm!1477)))))))

(declare-fun bm!321433 () Bool)

(declare-fun call!321438 () Bool)

(assert (=> bm!321433 (= call!321438 (contains!14218 e!2875458 key!3287))))

(declare-fun c!789622 () Bool)

(declare-fun c!789623 () Bool)

(assert (=> bm!321433 (= c!789622 c!789623)))

(declare-fun b!4609654 () Bool)

(declare-fun e!2875459 () Bool)

(declare-fun e!2875457 () Bool)

(assert (=> b!4609654 (= e!2875459 e!2875457)))

(declare-fun res!1929711 () Bool)

(assert (=> b!4609654 (=> (not res!1929711) (not e!2875457))))

(assert (=> b!4609654 (= res!1929711 (isDefined!8711 (getValueByKey!1362 (toList!4756 (extractMap!1430 (t!358326 (toList!4755 lm!1477)))) key!3287)))))

(declare-fun d!1452671 () Bool)

(assert (=> d!1452671 e!2875459))

(declare-fun res!1929712 () Bool)

(assert (=> d!1452671 (=> res!1929712 e!2875459)))

(declare-fun e!2875456 () Bool)

(assert (=> d!1452671 (= res!1929712 e!2875456)))

(declare-fun res!1929710 () Bool)

(assert (=> d!1452671 (=> (not res!1929710) (not e!2875456))))

(declare-fun lt!1766087 () Bool)

(assert (=> d!1452671 (= res!1929710 (not lt!1766087))))

(declare-fun lt!1766084 () Bool)

(assert (=> d!1452671 (= lt!1766087 lt!1766084)))

(declare-fun lt!1766082 () Unit!109293)

(declare-fun e!2875454 () Unit!109293)

(assert (=> d!1452671 (= lt!1766082 e!2875454)))

(assert (=> d!1452671 (= c!789623 lt!1766084)))

(assert (=> d!1452671 (= lt!1766084 (containsKey!2260 (toList!4756 (extractMap!1430 (t!358326 (toList!4755 lm!1477)))) key!3287))))

(assert (=> d!1452671 (= (contains!14214 (extractMap!1430 (t!358326 (toList!4755 lm!1477))) key!3287) lt!1766087)))

(declare-fun b!4609655 () Bool)

(assert (=> b!4609655 false))

(declare-fun lt!1766086 () Unit!109293)

(declare-fun lt!1766083 () Unit!109293)

(assert (=> b!4609655 (= lt!1766086 lt!1766083)))

(assert (=> b!4609655 (containsKey!2260 (toList!4756 (extractMap!1430 (t!358326 (toList!4755 lm!1477)))) key!3287)))

(assert (=> b!4609655 (= lt!1766083 (lemmaInGetKeysListThenContainsKey!597 (toList!4756 (extractMap!1430 (t!358326 (toList!4755 lm!1477)))) key!3287))))

(declare-fun Unit!109330 () Unit!109293)

(assert (=> b!4609655 (= e!2875455 Unit!109330)))

(declare-fun b!4609656 () Bool)

(assert (=> b!4609656 (= e!2875457 (contains!14218 (keys!17961 (extractMap!1430 (t!358326 (toList!4755 lm!1477)))) key!3287))))

(declare-fun b!4609657 () Bool)

(assert (=> b!4609657 (= e!2875458 (getKeysList!598 (toList!4756 (extractMap!1430 (t!358326 (toList!4755 lm!1477))))))))

(declare-fun b!4609658 () Bool)

(assert (=> b!4609658 (= e!2875454 e!2875455)))

(declare-fun c!789621 () Bool)

(assert (=> b!4609658 (= c!789621 call!321438)))

(declare-fun b!4609659 () Bool)

(assert (=> b!4609659 (= e!2875456 (not (contains!14218 (keys!17961 (extractMap!1430 (t!358326 (toList!4755 lm!1477)))) key!3287)))))

(declare-fun b!4609660 () Bool)

(declare-fun lt!1766080 () Unit!109293)

(assert (=> b!4609660 (= e!2875454 lt!1766080)))

(declare-fun lt!1766081 () Unit!109293)

(assert (=> b!4609660 (= lt!1766081 (lemmaContainsKeyImpliesGetValueByKeyDefined!1264 (toList!4756 (extractMap!1430 (t!358326 (toList!4755 lm!1477)))) key!3287))))

(assert (=> b!4609660 (isDefined!8711 (getValueByKey!1362 (toList!4756 (extractMap!1430 (t!358326 (toList!4755 lm!1477)))) key!3287))))

(declare-fun lt!1766085 () Unit!109293)

(assert (=> b!4609660 (= lt!1766085 lt!1766081)))

(assert (=> b!4609660 (= lt!1766080 (lemmaInListThenGetKeysListContains!593 (toList!4756 (extractMap!1430 (t!358326 (toList!4755 lm!1477)))) key!3287))))

(assert (=> b!4609660 call!321438))

(assert (= (and d!1452671 c!789623) b!4609660))

(assert (= (and d!1452671 (not c!789623)) b!4609658))

(assert (= (and b!4609658 c!789621) b!4609655))

(assert (= (and b!4609658 (not c!789621)) b!4609652))

(assert (= (or b!4609660 b!4609658) bm!321433))

(assert (= (and bm!321433 c!789622) b!4609657))

(assert (= (and bm!321433 (not c!789622)) b!4609653))

(assert (= (and d!1452671 res!1929710) b!4609659))

(assert (= (and d!1452671 (not res!1929712)) b!4609654))

(assert (= (and b!4609654 res!1929711) b!4609656))

(assert (=> b!4609653 m!5440073))

(declare-fun m!5440725 () Bool)

(assert (=> b!4609653 m!5440725))

(declare-fun m!5440727 () Bool)

(assert (=> b!4609660 m!5440727))

(declare-fun m!5440729 () Bool)

(assert (=> b!4609660 m!5440729))

(assert (=> b!4609660 m!5440729))

(declare-fun m!5440731 () Bool)

(assert (=> b!4609660 m!5440731))

(declare-fun m!5440733 () Bool)

(assert (=> b!4609660 m!5440733))

(assert (=> b!4609659 m!5440073))

(assert (=> b!4609659 m!5440725))

(assert (=> b!4609659 m!5440725))

(declare-fun m!5440735 () Bool)

(assert (=> b!4609659 m!5440735))

(declare-fun m!5440737 () Bool)

(assert (=> bm!321433 m!5440737))

(declare-fun m!5440739 () Bool)

(assert (=> b!4609657 m!5440739))

(declare-fun m!5440741 () Bool)

(assert (=> d!1452671 m!5440741))

(assert (=> b!4609654 m!5440729))

(assert (=> b!4609654 m!5440729))

(assert (=> b!4609654 m!5440731))

(assert (=> b!4609656 m!5440073))

(assert (=> b!4609656 m!5440725))

(assert (=> b!4609656 m!5440725))

(assert (=> b!4609656 m!5440735))

(assert (=> b!4609655 m!5440741))

(declare-fun m!5440743 () Bool)

(assert (=> b!4609655 m!5440743))

(assert (=> b!4609315 d!1452671))

(declare-fun d!1452673 () Bool)

(declare-fun lt!1766088 () Bool)

(assert (=> d!1452673 (= lt!1766088 (select (content!8700 (t!358326 (toList!4755 lm!1477))) lt!1765738))))

(declare-fun e!2875461 () Bool)

(assert (=> d!1452673 (= lt!1766088 e!2875461)))

(declare-fun res!1929713 () Bool)

(assert (=> d!1452673 (=> (not res!1929713) (not e!2875461))))

(assert (=> d!1452673 (= res!1929713 ((_ is Cons!51208) (t!358326 (toList!4755 lm!1477))))))

(assert (=> d!1452673 (= (contains!14215 (t!358326 (toList!4755 lm!1477)) lt!1765738) lt!1766088)))

(declare-fun b!4609661 () Bool)

(declare-fun e!2875460 () Bool)

(assert (=> b!4609661 (= e!2875461 e!2875460)))

(declare-fun res!1929714 () Bool)

(assert (=> b!4609661 (=> res!1929714 e!2875460)))

(assert (=> b!4609661 (= res!1929714 (= (h!57198 (t!358326 (toList!4755 lm!1477))) lt!1765738))))

(declare-fun b!4609662 () Bool)

(assert (=> b!4609662 (= e!2875460 (contains!14215 (t!358326 (t!358326 (toList!4755 lm!1477))) lt!1765738))))

(assert (= (and d!1452673 res!1929713) b!4609661))

(assert (= (and b!4609661 (not res!1929714)) b!4609662))

(declare-fun m!5440745 () Bool)

(assert (=> d!1452673 m!5440745))

(declare-fun m!5440747 () Bool)

(assert (=> d!1452673 m!5440747))

(declare-fun m!5440749 () Bool)

(assert (=> b!4609662 m!5440749))

(assert (=> b!4609316 d!1452673))

(declare-fun d!1452675 () Bool)

(assert (=> d!1452675 (= (apply!12107 lt!1765732 hash!344) (get!16941 (getValueByKey!1361 (toList!4755 lt!1765732) hash!344)))))

(declare-fun bs!1015802 () Bool)

(assert (= bs!1015802 d!1452675))

(declare-fun m!5440751 () Bool)

(assert (=> bs!1015802 m!5440751))

(assert (=> bs!1015802 m!5440751))

(declare-fun m!5440753 () Bool)

(assert (=> bs!1015802 m!5440753))

(assert (=> b!4609327 d!1452675))

(declare-fun d!1452677 () Bool)

(declare-fun e!2875463 () Bool)

(assert (=> d!1452677 e!2875463))

(declare-fun res!1929715 () Bool)

(assert (=> d!1452677 (=> res!1929715 e!2875463)))

(declare-fun lt!1766091 () Bool)

(assert (=> d!1452677 (= res!1929715 (not lt!1766091))))

(declare-fun lt!1766092 () Bool)

(assert (=> d!1452677 (= lt!1766091 lt!1766092)))

(declare-fun lt!1766089 () Unit!109293)

(declare-fun e!2875462 () Unit!109293)

(assert (=> d!1452677 (= lt!1766089 e!2875462)))

(declare-fun c!789624 () Bool)

(assert (=> d!1452677 (= c!789624 lt!1766092)))

(assert (=> d!1452677 (= lt!1766092 (containsKey!2259 (toList!4755 lt!1765732) hash!344))))

(assert (=> d!1452677 (= (contains!14216 lt!1765732 hash!344) lt!1766091)))

(declare-fun b!4609663 () Bool)

(declare-fun lt!1766090 () Unit!109293)

(assert (=> b!4609663 (= e!2875462 lt!1766090)))

(assert (=> b!4609663 (= lt!1766090 (lemmaContainsKeyImpliesGetValueByKeyDefined!1263 (toList!4755 lt!1765732) hash!344))))

(assert (=> b!4609663 (isDefined!8710 (getValueByKey!1361 (toList!4755 lt!1765732) hash!344))))

(declare-fun b!4609664 () Bool)

(declare-fun Unit!109332 () Unit!109293)

(assert (=> b!4609664 (= e!2875462 Unit!109332)))

(declare-fun b!4609665 () Bool)

(assert (=> b!4609665 (= e!2875463 (isDefined!8710 (getValueByKey!1361 (toList!4755 lt!1765732) hash!344)))))

(assert (= (and d!1452677 c!789624) b!4609663))

(assert (= (and d!1452677 (not c!789624)) b!4609664))

(assert (= (and d!1452677 (not res!1929715)) b!4609665))

(declare-fun m!5440755 () Bool)

(assert (=> d!1452677 m!5440755))

(declare-fun m!5440757 () Bool)

(assert (=> b!4609663 m!5440757))

(assert (=> b!4609663 m!5440751))

(assert (=> b!4609663 m!5440751))

(declare-fun m!5440759 () Bool)

(assert (=> b!4609663 m!5440759))

(assert (=> b!4609665 m!5440751))

(assert (=> b!4609665 m!5440751))

(assert (=> b!4609665 m!5440759))

(assert (=> b!4609317 d!1452677))

(declare-fun d!1452679 () Bool)

(declare-fun tail!8029 (List!51332) List!51332)

(assert (=> d!1452679 (= (tail!8027 lm!1477) (ListLongMap!3388 (tail!8029 (toList!4755 lm!1477))))))

(declare-fun bs!1015803 () Bool)

(assert (= bs!1015803 d!1452679))

(declare-fun m!5440761 () Bool)

(assert (=> bs!1015803 m!5440761))

(assert (=> b!4609317 d!1452679))

(declare-fun d!1452681 () Bool)

(declare-fun e!2875464 () Bool)

(assert (=> d!1452681 e!2875464))

(declare-fun res!1929717 () Bool)

(assert (=> d!1452681 (=> (not res!1929717) (not e!2875464))))

(declare-fun lt!1766093 () ListLongMap!3387)

(assert (=> d!1452681 (= res!1929717 (contains!14216 lt!1766093 (_1!29260 lt!1765731)))))

(declare-fun lt!1766095 () List!51332)

(assert (=> d!1452681 (= lt!1766093 (ListLongMap!3388 lt!1766095))))

(declare-fun lt!1766096 () Unit!109293)

(declare-fun lt!1766094 () Unit!109293)

(assert (=> d!1452681 (= lt!1766096 lt!1766094)))

(assert (=> d!1452681 (= (getValueByKey!1361 lt!1766095 (_1!29260 lt!1765731)) (Some!11442 (_2!29260 lt!1765731)))))

(assert (=> d!1452681 (= lt!1766094 (lemmaContainsTupThenGetReturnValue!806 lt!1766095 (_1!29260 lt!1765731) (_2!29260 lt!1765731)))))

(assert (=> d!1452681 (= lt!1766095 (insertStrictlySorted!498 (toList!4755 lm!1477) (_1!29260 lt!1765731) (_2!29260 lt!1765731)))))

(assert (=> d!1452681 (= (+!1778 lm!1477 lt!1765731) lt!1766093)))

(declare-fun b!4609666 () Bool)

(declare-fun res!1929716 () Bool)

(assert (=> b!4609666 (=> (not res!1929716) (not e!2875464))))

(assert (=> b!4609666 (= res!1929716 (= (getValueByKey!1361 (toList!4755 lt!1766093) (_1!29260 lt!1765731)) (Some!11442 (_2!29260 lt!1765731))))))

(declare-fun b!4609667 () Bool)

(assert (=> b!4609667 (= e!2875464 (contains!14215 (toList!4755 lt!1766093) lt!1765731))))

(assert (= (and d!1452681 res!1929717) b!4609666))

(assert (= (and b!4609666 res!1929716) b!4609667))

(declare-fun m!5440763 () Bool)

(assert (=> d!1452681 m!5440763))

(declare-fun m!5440765 () Bool)

(assert (=> d!1452681 m!5440765))

(declare-fun m!5440767 () Bool)

(assert (=> d!1452681 m!5440767))

(declare-fun m!5440769 () Bool)

(assert (=> d!1452681 m!5440769))

(declare-fun m!5440771 () Bool)

(assert (=> b!4609666 m!5440771))

(declare-fun m!5440773 () Bool)

(assert (=> b!4609667 m!5440773))

(assert (=> b!4609323 d!1452681))

(declare-fun d!1452683 () Bool)

(declare-fun e!2875465 () Bool)

(assert (=> d!1452683 e!2875465))

(declare-fun res!1929719 () Bool)

(assert (=> d!1452683 (=> (not res!1929719) (not e!2875465))))

(declare-fun lt!1766097 () ListLongMap!3387)

(assert (=> d!1452683 (= res!1929719 (contains!14216 lt!1766097 (_1!29260 lt!1765727)))))

(declare-fun lt!1766099 () List!51332)

(assert (=> d!1452683 (= lt!1766097 (ListLongMap!3388 lt!1766099))))

(declare-fun lt!1766100 () Unit!109293)

(declare-fun lt!1766098 () Unit!109293)

(assert (=> d!1452683 (= lt!1766100 lt!1766098)))

(assert (=> d!1452683 (= (getValueByKey!1361 lt!1766099 (_1!29260 lt!1765727)) (Some!11442 (_2!29260 lt!1765727)))))

(assert (=> d!1452683 (= lt!1766098 (lemmaContainsTupThenGetReturnValue!806 lt!1766099 (_1!29260 lt!1765727) (_2!29260 lt!1765727)))))

(assert (=> d!1452683 (= lt!1766099 (insertStrictlySorted!498 (toList!4755 lt!1765735) (_1!29260 lt!1765727) (_2!29260 lt!1765727)))))

(assert (=> d!1452683 (= (+!1778 lt!1765735 lt!1765727) lt!1766097)))

(declare-fun b!4609668 () Bool)

(declare-fun res!1929718 () Bool)

(assert (=> b!4609668 (=> (not res!1929718) (not e!2875465))))

(assert (=> b!4609668 (= res!1929718 (= (getValueByKey!1361 (toList!4755 lt!1766097) (_1!29260 lt!1765727)) (Some!11442 (_2!29260 lt!1765727))))))

(declare-fun b!4609669 () Bool)

(assert (=> b!4609669 (= e!2875465 (contains!14215 (toList!4755 lt!1766097) lt!1765727))))

(assert (= (and d!1452683 res!1929719) b!4609668))

(assert (= (and b!4609668 res!1929718) b!4609669))

(declare-fun m!5440775 () Bool)

(assert (=> d!1452683 m!5440775))

(declare-fun m!5440777 () Bool)

(assert (=> d!1452683 m!5440777))

(declare-fun m!5440779 () Bool)

(assert (=> d!1452683 m!5440779))

(declare-fun m!5440781 () Bool)

(assert (=> d!1452683 m!5440781))

(declare-fun m!5440783 () Bool)

(assert (=> b!4609668 m!5440783))

(declare-fun m!5440785 () Bool)

(assert (=> b!4609669 m!5440785))

(assert (=> b!4609323 d!1452683))

(declare-fun bs!1015804 () Bool)

(declare-fun d!1452685 () Bool)

(assert (= bs!1015804 (and d!1452685 start!460904)))

(declare-fun lambda!188275 () Int)

(assert (=> bs!1015804 (not (= lambda!188275 lambda!188154))))

(declare-fun bs!1015805 () Bool)

(assert (= bs!1015805 (and d!1452685 d!1452617)))

(assert (=> bs!1015805 (not (= lambda!188275 lambda!188258))))

(declare-fun bs!1015806 () Bool)

(assert (= bs!1015806 (and d!1452685 d!1452667)))

(assert (=> bs!1015806 (not (= lambda!188275 lambda!188271))))

(declare-fun bs!1015807 () Bool)

(assert (= bs!1015807 (and d!1452685 d!1452597)))

(assert (=> bs!1015807 (not (= lambda!188275 lambda!188246))))

(declare-fun bs!1015808 () Bool)

(assert (= bs!1015808 (and d!1452685 d!1452505)))

(assert (=> bs!1015808 (not (= lambda!188275 lambda!188157))))

(declare-fun bs!1015809 () Bool)

(assert (= bs!1015809 (and d!1452685 d!1452521)))

(assert (=> bs!1015809 (not (= lambda!188275 lambda!188166))))

(declare-fun bs!1015810 () Bool)

(assert (= bs!1015810 (and d!1452685 d!1452665)))

(assert (=> bs!1015810 (not (= lambda!188275 lambda!188268))))

(declare-fun bs!1015811 () Bool)

(assert (= bs!1015811 (and d!1452685 d!1452631)))

(assert (=> bs!1015811 (not (= lambda!188275 lambda!188264))))

(declare-fun bs!1015812 () Bool)

(assert (= bs!1015812 (and d!1452685 d!1452601)))

(assert (=> bs!1015812 (not (= lambda!188275 lambda!188254))))

(declare-fun bs!1015813 () Bool)

(assert (= bs!1015813 (and d!1452685 d!1452643)))

(assert (=> bs!1015813 (not (= lambda!188275 lambda!188267))))

(declare-fun bs!1015814 () Bool)

(assert (= bs!1015814 (and d!1452685 d!1452669)))

(assert (=> bs!1015814 (not (= lambda!188275 lambda!188272))))

(assert (=> d!1452685 true))

(assert (=> d!1452685 (= (allKeysSameHashInMap!1481 lm!1477 hashF!1107) (forall!10690 (toList!4755 lm!1477) lambda!188275))))

(declare-fun bs!1015815 () Bool)

(assert (= bs!1015815 d!1452685))

(declare-fun m!5440787 () Bool)

(assert (=> bs!1015815 m!5440787))

(assert (=> b!4609334 d!1452685))

(declare-fun b!4609672 () Bool)

(declare-fun e!2875467 () Unit!109293)

(declare-fun Unit!109333 () Unit!109293)

(assert (=> b!4609672 (= e!2875467 Unit!109333)))

(declare-fun b!4609673 () Bool)

(declare-fun e!2875470 () List!51334)

(assert (=> b!4609673 (= e!2875470 (keys!17961 lt!1765741))))

(declare-fun bm!321434 () Bool)

(declare-fun call!321439 () Bool)

(assert (=> bm!321434 (= call!321439 (contains!14218 e!2875470 key!3287))))

(declare-fun c!789626 () Bool)

(declare-fun c!789627 () Bool)

(assert (=> bm!321434 (= c!789626 c!789627)))

(declare-fun b!4609674 () Bool)

(declare-fun e!2875471 () Bool)

(declare-fun e!2875469 () Bool)

(assert (=> b!4609674 (= e!2875471 e!2875469)))

(declare-fun res!1929721 () Bool)

(assert (=> b!4609674 (=> (not res!1929721) (not e!2875469))))

(assert (=> b!4609674 (= res!1929721 (isDefined!8711 (getValueByKey!1362 (toList!4756 lt!1765741) key!3287)))))

(declare-fun d!1452687 () Bool)

(assert (=> d!1452687 e!2875471))

(declare-fun res!1929722 () Bool)

(assert (=> d!1452687 (=> res!1929722 e!2875471)))

(declare-fun e!2875468 () Bool)

(assert (=> d!1452687 (= res!1929722 e!2875468)))

(declare-fun res!1929720 () Bool)

(assert (=> d!1452687 (=> (not res!1929720) (not e!2875468))))

(declare-fun lt!1766108 () Bool)

(assert (=> d!1452687 (= res!1929720 (not lt!1766108))))

(declare-fun lt!1766105 () Bool)

(assert (=> d!1452687 (= lt!1766108 lt!1766105)))

(declare-fun lt!1766103 () Unit!109293)

(declare-fun e!2875466 () Unit!109293)

(assert (=> d!1452687 (= lt!1766103 e!2875466)))

(assert (=> d!1452687 (= c!789627 lt!1766105)))

(assert (=> d!1452687 (= lt!1766105 (containsKey!2260 (toList!4756 lt!1765741) key!3287))))

(assert (=> d!1452687 (= (contains!14214 lt!1765741 key!3287) lt!1766108)))

(declare-fun b!4609675 () Bool)

(assert (=> b!4609675 false))

(declare-fun lt!1766107 () Unit!109293)

(declare-fun lt!1766104 () Unit!109293)

(assert (=> b!4609675 (= lt!1766107 lt!1766104)))

(assert (=> b!4609675 (containsKey!2260 (toList!4756 lt!1765741) key!3287)))

(assert (=> b!4609675 (= lt!1766104 (lemmaInGetKeysListThenContainsKey!597 (toList!4756 lt!1765741) key!3287))))

(declare-fun Unit!109334 () Unit!109293)

(assert (=> b!4609675 (= e!2875467 Unit!109334)))

(declare-fun b!4609676 () Bool)

(assert (=> b!4609676 (= e!2875469 (contains!14218 (keys!17961 lt!1765741) key!3287))))

(declare-fun b!4609677 () Bool)

(assert (=> b!4609677 (= e!2875470 (getKeysList!598 (toList!4756 lt!1765741)))))

(declare-fun b!4609678 () Bool)

(assert (=> b!4609678 (= e!2875466 e!2875467)))

(declare-fun c!789625 () Bool)

(assert (=> b!4609678 (= c!789625 call!321439)))

(declare-fun b!4609679 () Bool)

(assert (=> b!4609679 (= e!2875468 (not (contains!14218 (keys!17961 lt!1765741) key!3287)))))

(declare-fun b!4609680 () Bool)

(declare-fun lt!1766101 () Unit!109293)

(assert (=> b!4609680 (= e!2875466 lt!1766101)))

(declare-fun lt!1766102 () Unit!109293)

(assert (=> b!4609680 (= lt!1766102 (lemmaContainsKeyImpliesGetValueByKeyDefined!1264 (toList!4756 lt!1765741) key!3287))))

(assert (=> b!4609680 (isDefined!8711 (getValueByKey!1362 (toList!4756 lt!1765741) key!3287))))

(declare-fun lt!1766106 () Unit!109293)

(assert (=> b!4609680 (= lt!1766106 lt!1766102)))

(assert (=> b!4609680 (= lt!1766101 (lemmaInListThenGetKeysListContains!593 (toList!4756 lt!1765741) key!3287))))

(assert (=> b!4609680 call!321439))

(assert (= (and d!1452687 c!789627) b!4609680))

(assert (= (and d!1452687 (not c!789627)) b!4609678))

(assert (= (and b!4609678 c!789625) b!4609675))

(assert (= (and b!4609678 (not c!789625)) b!4609672))

(assert (= (or b!4609680 b!4609678) bm!321434))

(assert (= (and bm!321434 c!789626) b!4609677))

(assert (= (and bm!321434 (not c!789626)) b!4609673))

(assert (= (and d!1452687 res!1929720) b!4609679))

(assert (= (and d!1452687 (not res!1929722)) b!4609674))

(assert (= (and b!4609674 res!1929721) b!4609676))

(declare-fun m!5440789 () Bool)

(assert (=> b!4609673 m!5440789))

(declare-fun m!5440791 () Bool)

(assert (=> b!4609680 m!5440791))

(declare-fun m!5440793 () Bool)

(assert (=> b!4609680 m!5440793))

(assert (=> b!4609680 m!5440793))

(declare-fun m!5440795 () Bool)

(assert (=> b!4609680 m!5440795))

(declare-fun m!5440797 () Bool)

(assert (=> b!4609680 m!5440797))

(assert (=> b!4609679 m!5440789))

(assert (=> b!4609679 m!5440789))

(declare-fun m!5440799 () Bool)

(assert (=> b!4609679 m!5440799))

(declare-fun m!5440801 () Bool)

(assert (=> bm!321434 m!5440801))

(declare-fun m!5440803 () Bool)

(assert (=> b!4609677 m!5440803))

(declare-fun m!5440805 () Bool)

(assert (=> d!1452687 m!5440805))

(assert (=> b!4609674 m!5440793))

(assert (=> b!4609674 m!5440793))

(assert (=> b!4609674 m!5440795))

(assert (=> b!4609676 m!5440789))

(assert (=> b!4609676 m!5440789))

(assert (=> b!4609676 m!5440799))

(assert (=> b!4609675 m!5440805))

(declare-fun m!5440807 () Bool)

(assert (=> b!4609675 m!5440807))

(assert (=> b!4609324 d!1452687))

(declare-fun bs!1015816 () Bool)

(declare-fun d!1452689 () Bool)

(assert (= bs!1015816 (and d!1452689 start!460904)))

(declare-fun lambda!188276 () Int)

(assert (=> bs!1015816 (= lambda!188276 lambda!188154)))

(declare-fun bs!1015817 () Bool)

(assert (= bs!1015817 (and d!1452689 d!1452617)))

(assert (=> bs!1015817 (= lambda!188276 lambda!188258)))

(declare-fun bs!1015818 () Bool)

(assert (= bs!1015818 (and d!1452689 d!1452667)))

(assert (=> bs!1015818 (= lambda!188276 lambda!188271)))

(declare-fun bs!1015819 () Bool)

(assert (= bs!1015819 (and d!1452689 d!1452597)))

(assert (=> bs!1015819 (= lambda!188276 lambda!188246)))

(declare-fun bs!1015820 () Bool)

(assert (= bs!1015820 (and d!1452689 d!1452505)))

(assert (=> bs!1015820 (= lambda!188276 lambda!188157)))

(declare-fun bs!1015821 () Bool)

(assert (= bs!1015821 (and d!1452689 d!1452521)))

(assert (=> bs!1015821 (= lambda!188276 lambda!188166)))

(declare-fun bs!1015822 () Bool)

(assert (= bs!1015822 (and d!1452689 d!1452665)))

(assert (=> bs!1015822 (= lambda!188276 lambda!188268)))

(declare-fun bs!1015823 () Bool)

(assert (= bs!1015823 (and d!1452689 d!1452631)))

(assert (=> bs!1015823 (= lambda!188276 lambda!188264)))

(declare-fun bs!1015824 () Bool)

(assert (= bs!1015824 (and d!1452689 d!1452601)))

(assert (=> bs!1015824 (= lambda!188276 lambda!188254)))

(declare-fun bs!1015825 () Bool)

(assert (= bs!1015825 (and d!1452689 d!1452685)))

(assert (=> bs!1015825 (not (= lambda!188276 lambda!188275))))

(declare-fun bs!1015826 () Bool)

(assert (= bs!1015826 (and d!1452689 d!1452643)))

(assert (=> bs!1015826 (= lambda!188276 lambda!188267)))

(declare-fun bs!1015827 () Bool)

(assert (= bs!1015827 (and d!1452689 d!1452669)))

(assert (=> bs!1015827 (= lambda!188276 lambda!188272)))

(declare-fun lt!1766109 () ListMap!4017)

(assert (=> d!1452689 (invariantList!1148 (toList!4756 lt!1766109))))

(declare-fun e!2875472 () ListMap!4017)

(assert (=> d!1452689 (= lt!1766109 e!2875472)))

(declare-fun c!789628 () Bool)

(assert (=> d!1452689 (= c!789628 ((_ is Cons!51208) (toList!4755 lm!1477)))))

(assert (=> d!1452689 (forall!10690 (toList!4755 lm!1477) lambda!188276)))

(assert (=> d!1452689 (= (extractMap!1430 (toList!4755 lm!1477)) lt!1766109)))

(declare-fun b!4609681 () Bool)

(assert (=> b!4609681 (= e!2875472 (addToMapMapFromBucket!840 (_2!29260 (h!57198 (toList!4755 lm!1477))) (extractMap!1430 (t!358326 (toList!4755 lm!1477)))))))

(declare-fun b!4609682 () Bool)

(assert (=> b!4609682 (= e!2875472 (ListMap!4018 Nil!51207))))

(assert (= (and d!1452689 c!789628) b!4609681))

(assert (= (and d!1452689 (not c!789628)) b!4609682))

(declare-fun m!5440809 () Bool)

(assert (=> d!1452689 m!5440809))

(declare-fun m!5440811 () Bool)

(assert (=> d!1452689 m!5440811))

(assert (=> b!4609681 m!5440073))

(assert (=> b!4609681 m!5440073))

(declare-fun m!5440813 () Bool)

(assert (=> b!4609681 m!5440813))

(assert (=> b!4609324 d!1452689))

(declare-fun b!4609687 () Bool)

(declare-fun tp!1341039 () Bool)

(declare-fun e!2875475 () Bool)

(assert (=> b!4609687 (= e!2875475 (and tp_is_empty!28773 tp_is_empty!28775 tp!1341039))))

(assert (=> b!4609312 (= tp!1341026 e!2875475)))

(assert (= (and b!4609312 ((_ is Cons!51207) (t!358325 newBucket!178))) b!4609687))

(declare-fun b!4609692 () Bool)

(declare-fun e!2875478 () Bool)

(declare-fun tp!1341044 () Bool)

(declare-fun tp!1341045 () Bool)

(assert (=> b!4609692 (= e!2875478 (and tp!1341044 tp!1341045))))

(assert (=> b!4609325 (= tp!1341027 e!2875478)))

(assert (= (and b!4609325 ((_ is Cons!51208) (toList!4755 lm!1477))) b!4609692))

(declare-fun b_lambda!170393 () Bool)

(assert (= b_lambda!170381 (or start!460904 b_lambda!170393)))

(declare-fun bs!1015828 () Bool)

(declare-fun d!1452691 () Bool)

(assert (= bs!1015828 (and d!1452691 start!460904)))

(assert (=> bs!1015828 (= (dynLambda!21437 lambda!188154 (h!57198 (toList!4755 lm!1477))) (noDuplicateKeys!1370 (_2!29260 (h!57198 (toList!4755 lm!1477)))))))

(declare-fun m!5440815 () Bool)

(assert (=> bs!1015828 m!5440815))

(assert (=> b!4609354 d!1452691))

(declare-fun b_lambda!170395 () Bool)

(assert (= b_lambda!170385 (or start!460904 b_lambda!170395)))

(declare-fun bs!1015829 () Bool)

(declare-fun d!1452693 () Bool)

(assert (= bs!1015829 (and d!1452693 start!460904)))

(assert (=> bs!1015829 (= (dynLambda!21437 lambda!188154 lt!1765738) (noDuplicateKeys!1370 (_2!29260 lt!1765738)))))

(declare-fun m!5440817 () Bool)

(assert (=> bs!1015829 m!5440817))

(assert (=> d!1452637 d!1452693))

(check-sat (not bm!321423) (not d!1452617) (not b!4609542) (not b!4609571) (not b!4609618) (not b!4609662) (not d!1452673) (not d!1452663) (not b!4609596) tp_is_empty!28773 (not b!4609472) (not b!4609667) (not b!4609673) (not d!1452537) (not d!1452681) (not bm!321432) (not b_lambda!170393) (not d!1452665) (not b!4609656) (not b!4609339) (not d!1452631) (not d!1452677) (not b!4609521) (not d!1452651) (not b!4609665) (not b!4609681) (not d!1452615) (not b!4609641) (not b!4609657) (not b!4609674) (not b!4609692) (not d!1452517) (not d!1452505) (not b!4609533) (not b!4609340) (not b!4609620) (not d!1452689) (not b!4609653) (not b!4609642) (not d!1452687) (not d!1452679) (not b!4609484) (not b!4609655) (not d!1452661) (not b!4609640) (not b!4609534) (not b!4609535) (not b!4609514) (not bm!321434) (not b!4609663) (not b!4609680) (not b!4609650) (not b!4609668) (not b!4609677) (not bm!321424) (not b!4609687) (not b!4609659) (not d!1452675) (not b!4609554) (not d!1452649) (not bm!321433) (not d!1452597) (not b!4609549) (not d!1452669) (not b!4609648) (not d!1452659) (not bm!321422) (not d!1452585) (not b!4609675) (not bs!1015828) (not d!1452623) tp_is_empty!28775 (not b!4609522) (not d!1452625) (not b!4609485) (not d!1452643) (not b!4609610) (not b_lambda!170395) (not d!1452519) (not b!4609470) (not b!4609552) (not b!4609654) (not d!1452521) (not d!1452657) (not b!4609355) (not b!4609643) (not b!4609646) (not d!1452613) (not b!4609374) (not d!1452667) (not b!4609669) (not d!1452599) (not d!1452583) (not b!4609644) (not d!1452601) (not b!4609599) (not d!1452611) (not b!4609676) (not b!4609660) (not d!1452579) (not b!4609679) (not b!4609474) (not b!4609515) (not d!1452671) (not d!1452595) (not bs!1015829) (not b!4609666) (not d!1452685) (not b!4609471) (not b!4609647) (not b!4609551) (not d!1452683) (not d!1452637))
(check-sat)
