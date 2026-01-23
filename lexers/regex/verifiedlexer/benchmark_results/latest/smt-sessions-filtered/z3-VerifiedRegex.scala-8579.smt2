; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!455660 () Bool)

(assert start!455660)

(declare-fun b!4578098 () Bool)

(declare-fun res!1912341 () Bool)

(declare-fun e!2854773 () Bool)

(assert (=> b!4578098 (=> res!1912341 e!2854773)))

(declare-datatypes ((K!12300 0))(
  ( (K!12301 (val!18111 Int)) )
))
(declare-datatypes ((V!12546 0))(
  ( (V!12547 (val!18112 Int)) )
))
(declare-datatypes ((tuple2!51490 0))(
  ( (tuple2!51491 (_1!29039 K!12300) (_2!29039 V!12546)) )
))
(declare-datatypes ((List!51052 0))(
  ( (Nil!50928) (Cons!50928 (h!56857 tuple2!51490) (t!358042 List!51052)) )
))
(declare-datatypes ((ListMap!3797 0))(
  ( (ListMap!3798 (toList!4535 List!51052)) )
))
(declare-fun lt!1743173 () ListMap!3797)

(declare-fun lt!1743174 () ListMap!3797)

(declare-fun eq!703 (ListMap!3797 ListMap!3797) Bool)

(assert (=> b!4578098 (= res!1912341 (not (eq!703 lt!1743173 lt!1743174)))))

(declare-fun b!4578099 () Bool)

(declare-fun e!2854781 () Bool)

(declare-fun e!2854778 () Bool)

(assert (=> b!4578099 (= e!2854781 e!2854778)))

(declare-fun res!1912354 () Bool)

(assert (=> b!4578099 (=> res!1912354 e!2854778)))

(declare-fun lt!1743154 () Bool)

(assert (=> b!4578099 (= res!1912354 lt!1743154)))

(declare-datatypes ((Unit!105281 0))(
  ( (Unit!105282) )
))
(declare-fun lt!1743169 () Unit!105281)

(declare-fun e!2854782 () Unit!105281)

(assert (=> b!4578099 (= lt!1743169 e!2854782)))

(declare-fun c!783572 () Bool)

(assert (=> b!4578099 (= c!783572 lt!1743154)))

(declare-fun lt!1743157 () List!51052)

(declare-fun key!3287 () K!12300)

(declare-fun containsKey!2034 (List!51052 K!12300) Bool)

(assert (=> b!4578099 (= lt!1743154 (not (containsKey!2034 lt!1743157 key!3287)))))

(declare-fun b!4578100 () Bool)

(declare-fun e!2854780 () Bool)

(assert (=> b!4578100 (= e!2854780 e!2854781)))

(declare-fun res!1912343 () Bool)

(assert (=> b!4578100 (=> res!1912343 e!2854781)))

(declare-datatypes ((tuple2!51492 0))(
  ( (tuple2!51493 (_1!29040 (_ BitVec 64)) (_2!29040 List!51052)) )
))
(declare-datatypes ((List!51053 0))(
  ( (Nil!50929) (Cons!50929 (h!56858 tuple2!51492) (t!358043 List!51053)) )
))
(declare-datatypes ((ListLongMap!3167 0))(
  ( (ListLongMap!3168 (toList!4536 List!51053)) )
))
(declare-fun lt!1743167 () ListLongMap!3167)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!13813 (ListLongMap!3167 (_ BitVec 64)) Bool)

(assert (=> b!4578100 (= res!1912343 (not (contains!13813 lt!1743167 hash!344)))))

(declare-fun lm!1477 () ListLongMap!3167)

(declare-fun tail!7903 (ListLongMap!3167) ListLongMap!3167)

(assert (=> b!4578100 (= lt!1743167 (tail!7903 lm!1477))))

(declare-fun b!4578101 () Bool)

(declare-fun e!2854774 () Bool)

(declare-fun tp!1339634 () Bool)

(assert (=> b!4578101 (= e!2854774 tp!1339634)))

(declare-fun b!4578102 () Bool)

(declare-fun e!2854784 () Bool)

(declare-fun e!2854776 () Bool)

(assert (=> b!4578102 (= e!2854784 e!2854776)))

(declare-fun res!1912346 () Bool)

(assert (=> b!4578102 (=> res!1912346 e!2854776)))

(declare-fun contains!13814 (ListMap!3797 K!12300) Bool)

(declare-fun extractMap!1320 (List!51053) ListMap!3797)

(assert (=> b!4578102 (= res!1912346 (not (contains!13814 (extractMap!1320 (t!358043 (toList!4536 lm!1477))) key!3287)))))

(declare-fun lt!1743166 () ListMap!3797)

(assert (=> b!4578102 (contains!13814 lt!1743166 key!3287)))

(assert (=> b!4578102 (= lt!1743166 (extractMap!1320 (toList!4536 lt!1743167)))))

(declare-datatypes ((Hashable!5659 0))(
  ( (HashableExt!5658 (__x!31362 Int)) )
))
(declare-fun hashF!1107 () Hashable!5659)

(declare-fun lt!1743172 () Unit!105281)

(declare-fun lemmaListContainsThenExtractedMapContains!220 (ListLongMap!3167 K!12300 Hashable!5659) Unit!105281)

(assert (=> b!4578102 (= lt!1743172 (lemmaListContainsThenExtractedMapContains!220 lt!1743167 key!3287 hashF!1107))))

(declare-fun b!4578103 () Bool)

(declare-fun res!1912357 () Bool)

(assert (=> b!4578103 (=> res!1912357 e!2854773)))

(declare-fun lt!1743160 () tuple2!51492)

(assert (=> b!4578103 (= res!1912357 (bvsge (_1!29040 lt!1743160) hash!344))))

(declare-fun b!4578104 () Bool)

(declare-fun Unit!105283 () Unit!105281)

(assert (=> b!4578104 (= e!2854782 Unit!105283)))

(declare-fun lt!1743164 () Unit!105281)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!246 (ListLongMap!3167 K!12300 Hashable!5659) Unit!105281)

(assert (=> b!4578104 (= lt!1743164 (lemmaNotInItsHashBucketThenNotInMap!246 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4578104 false))

(declare-fun b!4578105 () Bool)

(declare-fun res!1912344 () Bool)

(declare-fun e!2854785 () Bool)

(assert (=> b!4578105 (=> res!1912344 e!2854785)))

(declare-fun lt!1743177 () ListLongMap!3167)

(declare-fun head!9524 (ListLongMap!3167) tuple2!51492)

(assert (=> b!4578105 (= res!1912344 (not (= (head!9524 lt!1743177) lt!1743160)))))

(declare-fun b!4578106 () Bool)

(declare-fun Unit!105284 () Unit!105281)

(assert (=> b!4578106 (= e!2854782 Unit!105284)))

(declare-fun b!4578107 () Bool)

(declare-fun res!1912349 () Bool)

(declare-fun e!2854779 () Bool)

(assert (=> b!4578107 (=> (not res!1912349) (not e!2854779))))

(declare-fun newBucket!178 () List!51052)

(declare-fun allKeysSameHash!1118 (List!51052 (_ BitVec 64) Hashable!5659) Bool)

(assert (=> b!4578107 (= res!1912349 (allKeysSameHash!1118 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4578108 () Bool)

(assert (=> b!4578108 (= e!2854776 e!2854773)))

(declare-fun res!1912353 () Bool)

(assert (=> b!4578108 (=> res!1912353 e!2854773)))

(assert (=> b!4578108 (= res!1912353 (not (eq!703 lt!1743174 lt!1743173)))))

(declare-fun +!1694 (ListLongMap!3167 tuple2!51492) ListLongMap!3167)

(assert (=> b!4578108 (= lt!1743174 (extractMap!1320 (toList!4536 (+!1694 lt!1743167 lt!1743160))))))

(assert (=> b!4578108 (= lt!1743160 (head!9524 lm!1477))))

(declare-fun lt!1743158 () ListMap!3797)

(declare-fun lt!1743163 () ListMap!3797)

(assert (=> b!4578108 (eq!703 lt!1743158 lt!1743163)))

(declare-fun -!472 (ListMap!3797 K!12300) ListMap!3797)

(assert (=> b!4578108 (= lt!1743163 (-!472 lt!1743166 key!3287))))

(declare-fun lt!1743161 () ListLongMap!3167)

(assert (=> b!4578108 (= lt!1743158 (extractMap!1320 (toList!4536 lt!1743161)))))

(declare-fun lt!1743155 () tuple2!51492)

(assert (=> b!4578108 (= lt!1743161 (+!1694 lt!1743167 lt!1743155))))

(assert (=> b!4578108 (= lt!1743155 (tuple2!51493 hash!344 newBucket!178))))

(declare-fun lt!1743165 () Unit!105281)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!211 (ListLongMap!3167 (_ BitVec 64) List!51052 K!12300 Hashable!5659) Unit!105281)

(assert (=> b!4578108 (= lt!1743165 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!211 lt!1743167 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4578109 () Bool)

(declare-fun tp_is_empty!28335 () Bool)

(declare-fun tp!1339635 () Bool)

(declare-fun tp_is_empty!28333 () Bool)

(declare-fun e!2854775 () Bool)

(assert (=> b!4578109 (= e!2854775 (and tp_is_empty!28333 tp_is_empty!28335 tp!1339635))))

(declare-fun b!4578110 () Bool)

(declare-fun e!2854777 () Bool)

(assert (=> b!4578110 (= e!2854777 e!2854779)))

(declare-fun res!1912340 () Bool)

(assert (=> b!4578110 (=> (not res!1912340) (not e!2854779))))

(declare-fun lt!1743162 () (_ BitVec 64))

(assert (=> b!4578110 (= res!1912340 (= lt!1743162 hash!344))))

(declare-fun hash!3099 (Hashable!5659 K!12300) (_ BitVec 64))

(assert (=> b!4578110 (= lt!1743162 (hash!3099 hashF!1107 key!3287))))

(declare-fun res!1912355 () Bool)

(declare-fun e!2854783 () Bool)

(assert (=> start!455660 (=> (not res!1912355) (not e!2854783))))

(declare-fun lambda!182553 () Int)

(declare-fun forall!10486 (List!51053 Int) Bool)

(assert (=> start!455660 (= res!1912355 (forall!10486 (toList!4536 lm!1477) lambda!182553))))

(assert (=> start!455660 e!2854783))

(assert (=> start!455660 true))

(declare-fun inv!66484 (ListLongMap!3167) Bool)

(assert (=> start!455660 (and (inv!66484 lm!1477) e!2854774)))

(assert (=> start!455660 tp_is_empty!28333))

(assert (=> start!455660 e!2854775))

(declare-fun b!4578111 () Bool)

(declare-fun res!1912348 () Bool)

(assert (=> b!4578111 (=> res!1912348 e!2854780)))

(declare-fun noDuplicateKeys!1264 (List!51052) Bool)

(assert (=> b!4578111 (= res!1912348 (not (noDuplicateKeys!1264 newBucket!178)))))

(declare-fun b!4578112 () Bool)

(declare-fun res!1912351 () Bool)

(assert (=> b!4578112 (=> (not res!1912351) (not e!2854783))))

(declare-fun allKeysSameHashInMap!1371 (ListLongMap!3167 Hashable!5659) Bool)

(assert (=> b!4578112 (= res!1912351 (allKeysSameHashInMap!1371 lm!1477 hashF!1107))))

(declare-fun b!4578113 () Bool)

(assert (=> b!4578113 (= e!2854779 (not e!2854780))))

(declare-fun res!1912347 () Bool)

(assert (=> b!4578113 (=> res!1912347 e!2854780)))

(declare-fun removePairForKey!891 (List!51052 K!12300) List!51052)

(assert (=> b!4578113 (= res!1912347 (not (= newBucket!178 (removePairForKey!891 lt!1743157 key!3287))))))

(declare-fun lt!1743171 () Unit!105281)

(declare-fun lt!1743159 () tuple2!51492)

(declare-fun forallContained!2747 (List!51053 Int tuple2!51492) Unit!105281)

(assert (=> b!4578113 (= lt!1743171 (forallContained!2747 (toList!4536 lm!1477) lambda!182553 lt!1743159))))

(declare-fun contains!13815 (List!51053 tuple2!51492) Bool)

(assert (=> b!4578113 (contains!13815 (toList!4536 lm!1477) lt!1743159)))

(assert (=> b!4578113 (= lt!1743159 (tuple2!51493 hash!344 lt!1743157))))

(declare-fun lt!1743178 () Unit!105281)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!776 (List!51053 (_ BitVec 64) List!51052) Unit!105281)

(assert (=> b!4578113 (= lt!1743178 (lemmaGetValueByKeyImpliesContainsTuple!776 (toList!4536 lm!1477) hash!344 lt!1743157))))

(declare-fun apply!12001 (ListLongMap!3167 (_ BitVec 64)) List!51052)

(assert (=> b!4578113 (= lt!1743157 (apply!12001 lm!1477 hash!344))))

(assert (=> b!4578113 (contains!13813 lm!1477 lt!1743162)))

(declare-fun lt!1743176 () Unit!105281)

(declare-fun lemmaInGenMapThenLongMapContainsHash!338 (ListLongMap!3167 K!12300 Hashable!5659) Unit!105281)

(assert (=> b!4578113 (= lt!1743176 (lemmaInGenMapThenLongMapContainsHash!338 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4578114 () Bool)

(declare-fun res!1912352 () Bool)

(assert (=> b!4578114 (=> res!1912352 e!2854781)))

(assert (=> b!4578114 (= res!1912352 (not (contains!13815 (t!358043 (toList!4536 lm!1477)) lt!1743159)))))

(declare-fun b!4578115 () Bool)

(declare-fun res!1912345 () Bool)

(assert (=> b!4578115 (=> res!1912345 e!2854780)))

(get-info :version)

(assert (=> b!4578115 (= res!1912345 (or ((_ is Nil!50929) (toList!4536 lm!1477)) (= (_1!29040 (h!56858 (toList!4536 lm!1477))) hash!344)))))

(declare-fun b!4578116 () Bool)

(declare-fun res!1912338 () Bool)

(assert (=> b!4578116 (=> res!1912338 e!2854781)))

(assert (=> b!4578116 (= res!1912338 (not (= (apply!12001 lt!1743167 hash!344) lt!1743157)))))

(declare-fun b!4578117 () Bool)

(declare-fun e!2854772 () Bool)

(declare-fun lt!1743170 () ListMap!3797)

(declare-fun lt!1743168 () ListMap!3797)

(assert (=> b!4578117 (= e!2854772 (eq!703 lt!1743170 lt!1743168))))

(declare-fun lt!1743156 () ListMap!3797)

(assert (=> b!4578117 (eq!703 lt!1743156 lt!1743168)))

(declare-fun addToMapMapFromBucket!777 (List!51052 ListMap!3797) ListMap!3797)

(assert (=> b!4578117 (= lt!1743168 (addToMapMapFromBucket!777 (_2!29040 lt!1743160) lt!1743163))))

(declare-fun lt!1743153 () Unit!105281)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!88 (ListMap!3797 ListMap!3797 List!51052) Unit!105281)

(assert (=> b!4578117 (= lt!1743153 (lemmaAddToMapFromBucketPreservesEquivalence!88 lt!1743158 lt!1743163 (_2!29040 lt!1743160)))))

(declare-fun b!4578118 () Bool)

(assert (=> b!4578118 (= e!2854778 e!2854784)))

(declare-fun res!1912350 () Bool)

(assert (=> b!4578118 (=> res!1912350 e!2854784)))

(declare-fun containsKeyBiggerList!234 (List!51053 K!12300) Bool)

(assert (=> b!4578118 (= res!1912350 (not (containsKeyBiggerList!234 (t!358043 (toList!4536 lm!1477)) key!3287)))))

(assert (=> b!4578118 (containsKeyBiggerList!234 (toList!4536 lt!1743167) key!3287)))

(declare-fun lt!1743175 () Unit!105281)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!146 (ListLongMap!3167 K!12300 Hashable!5659) Unit!105281)

(assert (=> b!4578118 (= lt!1743175 (lemmaInLongMapThenContainsKeyBiggerList!146 lt!1743167 key!3287 hashF!1107))))

(declare-fun b!4578119 () Bool)

(assert (=> b!4578119 (= e!2854783 e!2854777)))

(declare-fun res!1912339 () Bool)

(assert (=> b!4578119 (=> (not res!1912339) (not e!2854777))))

(assert (=> b!4578119 (= res!1912339 (contains!13814 lt!1743173 key!3287))))

(assert (=> b!4578119 (= lt!1743173 (extractMap!1320 (toList!4536 lm!1477)))))

(declare-fun b!4578120 () Bool)

(assert (=> b!4578120 (= e!2854773 e!2854785)))

(declare-fun res!1912356 () Bool)

(assert (=> b!4578120 (=> res!1912356 e!2854785)))

(assert (=> b!4578120 (= res!1912356 (not (= lt!1743177 (+!1694 lm!1477 lt!1743155))))))

(assert (=> b!4578120 (= lt!1743177 (+!1694 lt!1743161 lt!1743160))))

(declare-fun b!4578121 () Bool)

(assert (=> b!4578121 (= e!2854785 e!2854772)))

(declare-fun res!1912342 () Bool)

(assert (=> b!4578121 (=> res!1912342 e!2854772)))

(assert (=> b!4578121 (= res!1912342 (not (eq!703 lt!1743170 lt!1743156)))))

(assert (=> b!4578121 (= lt!1743156 (addToMapMapFromBucket!777 (_2!29040 lt!1743160) lt!1743158))))

(assert (=> b!4578121 (= lt!1743170 (extractMap!1320 (toList!4536 lt!1743177)))))

(assert (= (and start!455660 res!1912355) b!4578112))

(assert (= (and b!4578112 res!1912351) b!4578119))

(assert (= (and b!4578119 res!1912339) b!4578110))

(assert (= (and b!4578110 res!1912340) b!4578107))

(assert (= (and b!4578107 res!1912349) b!4578113))

(assert (= (and b!4578113 (not res!1912347)) b!4578111))

(assert (= (and b!4578111 (not res!1912348)) b!4578115))

(assert (= (and b!4578115 (not res!1912345)) b!4578100))

(assert (= (and b!4578100 (not res!1912343)) b!4578116))

(assert (= (and b!4578116 (not res!1912338)) b!4578114))

(assert (= (and b!4578114 (not res!1912352)) b!4578099))

(assert (= (and b!4578099 c!783572) b!4578104))

(assert (= (and b!4578099 (not c!783572)) b!4578106))

(assert (= (and b!4578099 (not res!1912354)) b!4578118))

(assert (= (and b!4578118 (not res!1912350)) b!4578102))

(assert (= (and b!4578102 (not res!1912346)) b!4578108))

(assert (= (and b!4578108 (not res!1912353)) b!4578098))

(assert (= (and b!4578098 (not res!1912341)) b!4578103))

(assert (= (and b!4578103 (not res!1912357)) b!4578120))

(assert (= (and b!4578120 (not res!1912356)) b!4578105))

(assert (= (and b!4578105 (not res!1912344)) b!4578121))

(assert (= (and b!4578121 (not res!1912342)) b!4578117))

(assert (= start!455660 b!4578101))

(assert (= (and start!455660 ((_ is Cons!50928) newBucket!178)) b!4578109))

(declare-fun m!5386447 () Bool)

(assert (=> b!4578110 m!5386447))

(declare-fun m!5386449 () Bool)

(assert (=> b!4578111 m!5386449))

(declare-fun m!5386451 () Bool)

(assert (=> b!4578121 m!5386451))

(declare-fun m!5386453 () Bool)

(assert (=> b!4578121 m!5386453))

(declare-fun m!5386455 () Bool)

(assert (=> b!4578121 m!5386455))

(declare-fun m!5386457 () Bool)

(assert (=> b!4578114 m!5386457))

(declare-fun m!5386459 () Bool)

(assert (=> b!4578118 m!5386459))

(declare-fun m!5386461 () Bool)

(assert (=> b!4578118 m!5386461))

(declare-fun m!5386463 () Bool)

(assert (=> b!4578118 m!5386463))

(declare-fun m!5386465 () Bool)

(assert (=> b!4578113 m!5386465))

(declare-fun m!5386467 () Bool)

(assert (=> b!4578113 m!5386467))

(declare-fun m!5386469 () Bool)

(assert (=> b!4578113 m!5386469))

(declare-fun m!5386471 () Bool)

(assert (=> b!4578113 m!5386471))

(declare-fun m!5386473 () Bool)

(assert (=> b!4578113 m!5386473))

(declare-fun m!5386475 () Bool)

(assert (=> b!4578113 m!5386475))

(declare-fun m!5386477 () Bool)

(assert (=> b!4578113 m!5386477))

(declare-fun m!5386479 () Bool)

(assert (=> b!4578120 m!5386479))

(declare-fun m!5386481 () Bool)

(assert (=> b!4578120 m!5386481))

(declare-fun m!5386483 () Bool)

(assert (=> b!4578102 m!5386483))

(declare-fun m!5386485 () Bool)

(assert (=> b!4578102 m!5386485))

(declare-fun m!5386487 () Bool)

(assert (=> b!4578102 m!5386487))

(assert (=> b!4578102 m!5386487))

(declare-fun m!5386489 () Bool)

(assert (=> b!4578102 m!5386489))

(declare-fun m!5386491 () Bool)

(assert (=> b!4578102 m!5386491))

(declare-fun m!5386493 () Bool)

(assert (=> b!4578098 m!5386493))

(declare-fun m!5386495 () Bool)

(assert (=> b!4578107 m!5386495))

(declare-fun m!5386497 () Bool)

(assert (=> b!4578100 m!5386497))

(declare-fun m!5386499 () Bool)

(assert (=> b!4578100 m!5386499))

(declare-fun m!5386501 () Bool)

(assert (=> b!4578105 m!5386501))

(declare-fun m!5386503 () Bool)

(assert (=> b!4578108 m!5386503))

(declare-fun m!5386505 () Bool)

(assert (=> b!4578108 m!5386505))

(declare-fun m!5386507 () Bool)

(assert (=> b!4578108 m!5386507))

(declare-fun m!5386509 () Bool)

(assert (=> b!4578108 m!5386509))

(declare-fun m!5386511 () Bool)

(assert (=> b!4578108 m!5386511))

(declare-fun m!5386513 () Bool)

(assert (=> b!4578108 m!5386513))

(declare-fun m!5386515 () Bool)

(assert (=> b!4578108 m!5386515))

(declare-fun m!5386517 () Bool)

(assert (=> b!4578108 m!5386517))

(declare-fun m!5386519 () Bool)

(assert (=> b!4578108 m!5386519))

(declare-fun m!5386521 () Bool)

(assert (=> b!4578104 m!5386521))

(declare-fun m!5386523 () Bool)

(assert (=> b!4578116 m!5386523))

(declare-fun m!5386525 () Bool)

(assert (=> b!4578119 m!5386525))

(declare-fun m!5386527 () Bool)

(assert (=> b!4578119 m!5386527))

(declare-fun m!5386529 () Bool)

(assert (=> b!4578117 m!5386529))

(declare-fun m!5386531 () Bool)

(assert (=> b!4578117 m!5386531))

(declare-fun m!5386533 () Bool)

(assert (=> b!4578117 m!5386533))

(declare-fun m!5386535 () Bool)

(assert (=> b!4578117 m!5386535))

(declare-fun m!5386537 () Bool)

(assert (=> start!455660 m!5386537))

(declare-fun m!5386539 () Bool)

(assert (=> start!455660 m!5386539))

(declare-fun m!5386541 () Bool)

(assert (=> b!4578099 m!5386541))

(declare-fun m!5386543 () Bool)

(assert (=> b!4578112 m!5386543))

(check-sat (not b!4578109) tp_is_empty!28335 (not b!4578098) (not b!4578118) (not b!4578104) (not b!4578099) (not b!4578101) (not b!4578107) (not b!4578112) (not b!4578121) (not b!4578110) (not b!4578114) (not b!4578117) tp_is_empty!28333 (not b!4578111) (not start!455660) (not b!4578119) (not b!4578102) (not b!4578100) (not b!4578108) (not b!4578120) (not b!4578113) (not b!4578116) (not b!4578105))
(check-sat)
(get-model)

(declare-fun d!1433328 () Bool)

(declare-datatypes ((Option!11309 0))(
  ( (None!11308) (Some!11308 (v!45176 List!51052)) )
))
(declare-fun get!16799 (Option!11309) List!51052)

(declare-fun getValueByKey!1241 (List!51053 (_ BitVec 64)) Option!11309)

(assert (=> d!1433328 (= (apply!12001 lm!1477 hash!344) (get!16799 (getValueByKey!1241 (toList!4536 lm!1477) hash!344)))))

(declare-fun bs!971004 () Bool)

(assert (= bs!971004 d!1433328))

(declare-fun m!5386545 () Bool)

(assert (=> bs!971004 m!5386545))

(assert (=> bs!971004 m!5386545))

(declare-fun m!5386547 () Bool)

(assert (=> bs!971004 m!5386547))

(assert (=> b!4578113 d!1433328))

(declare-fun d!1433330 () Bool)

(declare-fun e!2854790 () Bool)

(assert (=> d!1433330 e!2854790))

(declare-fun res!1912360 () Bool)

(assert (=> d!1433330 (=> res!1912360 e!2854790)))

(declare-fun lt!1743187 () Bool)

(assert (=> d!1433330 (= res!1912360 (not lt!1743187))))

(declare-fun lt!1743190 () Bool)

(assert (=> d!1433330 (= lt!1743187 lt!1743190)))

(declare-fun lt!1743189 () Unit!105281)

(declare-fun e!2854791 () Unit!105281)

(assert (=> d!1433330 (= lt!1743189 e!2854791)))

(declare-fun c!783575 () Bool)

(assert (=> d!1433330 (= c!783575 lt!1743190)))

(declare-fun containsKey!2035 (List!51053 (_ BitVec 64)) Bool)

(assert (=> d!1433330 (= lt!1743190 (containsKey!2035 (toList!4536 lm!1477) lt!1743162))))

(assert (=> d!1433330 (= (contains!13813 lm!1477 lt!1743162) lt!1743187)))

(declare-fun b!4578128 () Bool)

(declare-fun lt!1743188 () Unit!105281)

(assert (=> b!4578128 (= e!2854791 lt!1743188)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1144 (List!51053 (_ BitVec 64)) Unit!105281)

(assert (=> b!4578128 (= lt!1743188 (lemmaContainsKeyImpliesGetValueByKeyDefined!1144 (toList!4536 lm!1477) lt!1743162))))

(declare-fun isDefined!8580 (Option!11309) Bool)

(assert (=> b!4578128 (isDefined!8580 (getValueByKey!1241 (toList!4536 lm!1477) lt!1743162))))

(declare-fun b!4578129 () Bool)

(declare-fun Unit!105296 () Unit!105281)

(assert (=> b!4578129 (= e!2854791 Unit!105296)))

(declare-fun b!4578130 () Bool)

(assert (=> b!4578130 (= e!2854790 (isDefined!8580 (getValueByKey!1241 (toList!4536 lm!1477) lt!1743162)))))

(assert (= (and d!1433330 c!783575) b!4578128))

(assert (= (and d!1433330 (not c!783575)) b!4578129))

(assert (= (and d!1433330 (not res!1912360)) b!4578130))

(declare-fun m!5386549 () Bool)

(assert (=> d!1433330 m!5386549))

(declare-fun m!5386551 () Bool)

(assert (=> b!4578128 m!5386551))

(declare-fun m!5386553 () Bool)

(assert (=> b!4578128 m!5386553))

(assert (=> b!4578128 m!5386553))

(declare-fun m!5386555 () Bool)

(assert (=> b!4578128 m!5386555))

(assert (=> b!4578130 m!5386553))

(assert (=> b!4578130 m!5386553))

(assert (=> b!4578130 m!5386555))

(assert (=> b!4578113 d!1433330))

(declare-fun d!1433332 () Bool)

(declare-fun lt!1743193 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8568 (List!51053) (InoxSet tuple2!51492))

(assert (=> d!1433332 (= lt!1743193 (select (content!8568 (toList!4536 lm!1477)) lt!1743159))))

(declare-fun e!2854797 () Bool)

(assert (=> d!1433332 (= lt!1743193 e!2854797)))

(declare-fun res!1912365 () Bool)

(assert (=> d!1433332 (=> (not res!1912365) (not e!2854797))))

(assert (=> d!1433332 (= res!1912365 ((_ is Cons!50929) (toList!4536 lm!1477)))))

(assert (=> d!1433332 (= (contains!13815 (toList!4536 lm!1477) lt!1743159) lt!1743193)))

(declare-fun b!4578135 () Bool)

(declare-fun e!2854796 () Bool)

(assert (=> b!4578135 (= e!2854797 e!2854796)))

(declare-fun res!1912366 () Bool)

(assert (=> b!4578135 (=> res!1912366 e!2854796)))

(assert (=> b!4578135 (= res!1912366 (= (h!56858 (toList!4536 lm!1477)) lt!1743159))))

(declare-fun b!4578136 () Bool)

(assert (=> b!4578136 (= e!2854796 (contains!13815 (t!358043 (toList!4536 lm!1477)) lt!1743159))))

(assert (= (and d!1433332 res!1912365) b!4578135))

(assert (= (and b!4578135 (not res!1912366)) b!4578136))

(declare-fun m!5386557 () Bool)

(assert (=> d!1433332 m!5386557))

(declare-fun m!5386559 () Bool)

(assert (=> d!1433332 m!5386559))

(assert (=> b!4578136 m!5386457))

(assert (=> b!4578113 d!1433332))

(declare-fun d!1433334 () Bool)

(declare-fun dynLambda!21325 (Int tuple2!51492) Bool)

(assert (=> d!1433334 (dynLambda!21325 lambda!182553 lt!1743159)))

(declare-fun lt!1743196 () Unit!105281)

(declare-fun choose!30459 (List!51053 Int tuple2!51492) Unit!105281)

(assert (=> d!1433334 (= lt!1743196 (choose!30459 (toList!4536 lm!1477) lambda!182553 lt!1743159))))

(declare-fun e!2854800 () Bool)

(assert (=> d!1433334 e!2854800))

(declare-fun res!1912369 () Bool)

(assert (=> d!1433334 (=> (not res!1912369) (not e!2854800))))

(assert (=> d!1433334 (= res!1912369 (forall!10486 (toList!4536 lm!1477) lambda!182553))))

(assert (=> d!1433334 (= (forallContained!2747 (toList!4536 lm!1477) lambda!182553 lt!1743159) lt!1743196)))

(declare-fun b!4578139 () Bool)

(assert (=> b!4578139 (= e!2854800 (contains!13815 (toList!4536 lm!1477) lt!1743159))))

(assert (= (and d!1433334 res!1912369) b!4578139))

(declare-fun b_lambda!165911 () Bool)

(assert (=> (not b_lambda!165911) (not d!1433334)))

(declare-fun m!5386561 () Bool)

(assert (=> d!1433334 m!5386561))

(declare-fun m!5386563 () Bool)

(assert (=> d!1433334 m!5386563))

(assert (=> d!1433334 m!5386537))

(assert (=> b!4578139 m!5386473))

(assert (=> b!4578113 d!1433334))

(declare-fun b!4578156 () Bool)

(declare-fun e!2854811 () List!51052)

(assert (=> b!4578156 (= e!2854811 (Cons!50928 (h!56857 lt!1743157) (removePairForKey!891 (t!358042 lt!1743157) key!3287)))))

(declare-fun b!4578154 () Bool)

(declare-fun e!2854812 () List!51052)

(assert (=> b!4578154 (= e!2854812 (t!358042 lt!1743157))))

(declare-fun b!4578155 () Bool)

(assert (=> b!4578155 (= e!2854812 e!2854811)))

(declare-fun c!783580 () Bool)

(assert (=> b!4578155 (= c!783580 ((_ is Cons!50928) lt!1743157))))

(declare-fun b!4578157 () Bool)

(assert (=> b!4578157 (= e!2854811 Nil!50928)))

(declare-fun d!1433336 () Bool)

(declare-fun lt!1743202 () List!51052)

(assert (=> d!1433336 (not (containsKey!2034 lt!1743202 key!3287))))

(assert (=> d!1433336 (= lt!1743202 e!2854812)))

(declare-fun c!783581 () Bool)

(assert (=> d!1433336 (= c!783581 (and ((_ is Cons!50928) lt!1743157) (= (_1!29039 (h!56857 lt!1743157)) key!3287)))))

(assert (=> d!1433336 (noDuplicateKeys!1264 lt!1743157)))

(assert (=> d!1433336 (= (removePairForKey!891 lt!1743157 key!3287) lt!1743202)))

(assert (= (and d!1433336 c!783581) b!4578154))

(assert (= (and d!1433336 (not c!783581)) b!4578155))

(assert (= (and b!4578155 c!783580) b!4578156))

(assert (= (and b!4578155 (not c!783580)) b!4578157))

(declare-fun m!5386577 () Bool)

(assert (=> b!4578156 m!5386577))

(declare-fun m!5386579 () Bool)

(assert (=> d!1433336 m!5386579))

(declare-fun m!5386581 () Bool)

(assert (=> d!1433336 m!5386581))

(assert (=> b!4578113 d!1433336))

(declare-fun bs!971007 () Bool)

(declare-fun d!1433346 () Bool)

(assert (= bs!971007 (and d!1433346 start!455660)))

(declare-fun lambda!182556 () Int)

(assert (=> bs!971007 (= lambda!182556 lambda!182553)))

(assert (=> d!1433346 (contains!13813 lm!1477 (hash!3099 hashF!1107 key!3287))))

(declare-fun lt!1743205 () Unit!105281)

(declare-fun choose!30460 (ListLongMap!3167 K!12300 Hashable!5659) Unit!105281)

(assert (=> d!1433346 (= lt!1743205 (choose!30460 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1433346 (forall!10486 (toList!4536 lm!1477) lambda!182556)))

(assert (=> d!1433346 (= (lemmaInGenMapThenLongMapContainsHash!338 lm!1477 key!3287 hashF!1107) lt!1743205)))

(declare-fun bs!971008 () Bool)

(assert (= bs!971008 d!1433346))

(assert (=> bs!971008 m!5386447))

(assert (=> bs!971008 m!5386447))

(declare-fun m!5386583 () Bool)

(assert (=> bs!971008 m!5386583))

(declare-fun m!5386585 () Bool)

(assert (=> bs!971008 m!5386585))

(declare-fun m!5386587 () Bool)

(assert (=> bs!971008 m!5386587))

(assert (=> b!4578113 d!1433346))

(declare-fun d!1433348 () Bool)

(assert (=> d!1433348 (contains!13815 (toList!4536 lm!1477) (tuple2!51493 hash!344 lt!1743157))))

(declare-fun lt!1743208 () Unit!105281)

(declare-fun choose!30462 (List!51053 (_ BitVec 64) List!51052) Unit!105281)

(assert (=> d!1433348 (= lt!1743208 (choose!30462 (toList!4536 lm!1477) hash!344 lt!1743157))))

(declare-fun e!2854815 () Bool)

(assert (=> d!1433348 e!2854815))

(declare-fun res!1912378 () Bool)

(assert (=> d!1433348 (=> (not res!1912378) (not e!2854815))))

(declare-fun isStrictlySorted!505 (List!51053) Bool)

(assert (=> d!1433348 (= res!1912378 (isStrictlySorted!505 (toList!4536 lm!1477)))))

(assert (=> d!1433348 (= (lemmaGetValueByKeyImpliesContainsTuple!776 (toList!4536 lm!1477) hash!344 lt!1743157) lt!1743208)))

(declare-fun b!4578160 () Bool)

(assert (=> b!4578160 (= e!2854815 (= (getValueByKey!1241 (toList!4536 lm!1477) hash!344) (Some!11308 lt!1743157)))))

(assert (= (and d!1433348 res!1912378) b!4578160))

(declare-fun m!5386589 () Bool)

(assert (=> d!1433348 m!5386589))

(declare-fun m!5386591 () Bool)

(assert (=> d!1433348 m!5386591))

(declare-fun m!5386593 () Bool)

(assert (=> d!1433348 m!5386593))

(assert (=> b!4578160 m!5386545))

(assert (=> b!4578113 d!1433348))

(declare-fun bs!971009 () Bool)

(declare-fun d!1433350 () Bool)

(assert (= bs!971009 (and d!1433350 start!455660)))

(declare-fun lambda!182559 () Int)

(assert (=> bs!971009 (= lambda!182559 lambda!182553)))

(declare-fun bs!971010 () Bool)

(assert (= bs!971010 (and d!1433350 d!1433346)))

(assert (=> bs!971010 (= lambda!182559 lambda!182556)))

(declare-fun lt!1743211 () ListMap!3797)

(declare-fun invariantList!1091 (List!51052) Bool)

(assert (=> d!1433350 (invariantList!1091 (toList!4535 lt!1743211))))

(declare-fun e!2854818 () ListMap!3797)

(assert (=> d!1433350 (= lt!1743211 e!2854818)))

(declare-fun c!783584 () Bool)

(assert (=> d!1433350 (= c!783584 ((_ is Cons!50929) (toList!4536 lt!1743167)))))

(assert (=> d!1433350 (forall!10486 (toList!4536 lt!1743167) lambda!182559)))

(assert (=> d!1433350 (= (extractMap!1320 (toList!4536 lt!1743167)) lt!1743211)))

(declare-fun b!4578165 () Bool)

(assert (=> b!4578165 (= e!2854818 (addToMapMapFromBucket!777 (_2!29040 (h!56858 (toList!4536 lt!1743167))) (extractMap!1320 (t!358043 (toList!4536 lt!1743167)))))))

(declare-fun b!4578166 () Bool)

(assert (=> b!4578166 (= e!2854818 (ListMap!3798 Nil!50928))))

(assert (= (and d!1433350 c!783584) b!4578165))

(assert (= (and d!1433350 (not c!783584)) b!4578166))

(declare-fun m!5386595 () Bool)

(assert (=> d!1433350 m!5386595))

(declare-fun m!5386597 () Bool)

(assert (=> d!1433350 m!5386597))

(declare-fun m!5386599 () Bool)

(assert (=> b!4578165 m!5386599))

(assert (=> b!4578165 m!5386599))

(declare-fun m!5386601 () Bool)

(assert (=> b!4578165 m!5386601))

(assert (=> b!4578102 d!1433350))

(declare-fun b!4578189 () Bool)

(declare-fun e!2854837 () Unit!105281)

(declare-fun Unit!105297 () Unit!105281)

(assert (=> b!4578189 (= e!2854837 Unit!105297)))

(declare-fun b!4578190 () Bool)

(declare-datatypes ((List!51055 0))(
  ( (Nil!50931) (Cons!50931 (h!56862 K!12300) (t!358045 List!51055)) )
))
(declare-fun e!2854833 () List!51055)

(declare-fun keys!17786 (ListMap!3797) List!51055)

(assert (=> b!4578190 (= e!2854833 (keys!17786 lt!1743166))))

(declare-fun b!4578191 () Bool)

(declare-fun e!2854838 () Unit!105281)

(declare-fun lt!1743240 () Unit!105281)

(assert (=> b!4578191 (= e!2854838 lt!1743240)))

(declare-fun lt!1743239 () Unit!105281)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1145 (List!51052 K!12300) Unit!105281)

(assert (=> b!4578191 (= lt!1743239 (lemmaContainsKeyImpliesGetValueByKeyDefined!1145 (toList!4535 lt!1743166) key!3287))))

(declare-datatypes ((Option!11311 0))(
  ( (None!11310) (Some!11310 (v!45178 V!12546)) )
))
(declare-fun isDefined!8582 (Option!11311) Bool)

(declare-fun getValueByKey!1243 (List!51052 K!12300) Option!11311)

(assert (=> b!4578191 (isDefined!8582 (getValueByKey!1243 (toList!4535 lt!1743166) key!3287))))

(declare-fun lt!1743236 () Unit!105281)

(assert (=> b!4578191 (= lt!1743236 lt!1743239)))

(declare-fun lemmaInListThenGetKeysListContains!534 (List!51052 K!12300) Unit!105281)

(assert (=> b!4578191 (= lt!1743240 (lemmaInListThenGetKeysListContains!534 (toList!4535 lt!1743166) key!3287))))

(declare-fun call!319577 () Bool)

(assert (=> b!4578191 call!319577))

(declare-fun b!4578192 () Bool)

(assert (=> b!4578192 (= e!2854838 e!2854837)))

(declare-fun c!783594 () Bool)

(assert (=> b!4578192 (= c!783594 call!319577)))

(declare-fun b!4578193 () Bool)

(assert (=> b!4578193 false))

(declare-fun lt!1743234 () Unit!105281)

(declare-fun lt!1743238 () Unit!105281)

(assert (=> b!4578193 (= lt!1743234 lt!1743238)))

(declare-fun containsKey!2037 (List!51052 K!12300) Bool)

(assert (=> b!4578193 (containsKey!2037 (toList!4535 lt!1743166) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!537 (List!51052 K!12300) Unit!105281)

(assert (=> b!4578193 (= lt!1743238 (lemmaInGetKeysListThenContainsKey!537 (toList!4535 lt!1743166) key!3287))))

(declare-fun Unit!105298 () Unit!105281)

(assert (=> b!4578193 (= e!2854837 Unit!105298)))

(declare-fun b!4578194 () Bool)

(declare-fun e!2854834 () Bool)

(declare-fun contains!13817 (List!51055 K!12300) Bool)

(assert (=> b!4578194 (= e!2854834 (not (contains!13817 (keys!17786 lt!1743166) key!3287)))))

(declare-fun bm!319572 () Bool)

(assert (=> bm!319572 (= call!319577 (contains!13817 e!2854833 key!3287))))

(declare-fun c!783593 () Bool)

(declare-fun c!783595 () Bool)

(assert (=> bm!319572 (= c!783593 c!783595)))

(declare-fun b!4578195 () Bool)

(declare-fun e!2854836 () Bool)

(assert (=> b!4578195 (= e!2854836 (contains!13817 (keys!17786 lt!1743166) key!3287))))

(declare-fun d!1433352 () Bool)

(declare-fun e!2854835 () Bool)

(assert (=> d!1433352 e!2854835))

(declare-fun res!1912386 () Bool)

(assert (=> d!1433352 (=> res!1912386 e!2854835)))

(assert (=> d!1433352 (= res!1912386 e!2854834)))

(declare-fun res!1912387 () Bool)

(assert (=> d!1433352 (=> (not res!1912387) (not e!2854834))))

(declare-fun lt!1743241 () Bool)

(assert (=> d!1433352 (= res!1912387 (not lt!1743241))))

(declare-fun lt!1743235 () Bool)

(assert (=> d!1433352 (= lt!1743241 lt!1743235)))

(declare-fun lt!1743237 () Unit!105281)

(assert (=> d!1433352 (= lt!1743237 e!2854838)))

(assert (=> d!1433352 (= c!783595 lt!1743235)))

(assert (=> d!1433352 (= lt!1743235 (containsKey!2037 (toList!4535 lt!1743166) key!3287))))

(assert (=> d!1433352 (= (contains!13814 lt!1743166 key!3287) lt!1743241)))

(declare-fun b!4578196 () Bool)

(declare-fun getKeysList!539 (List!51052) List!51055)

(assert (=> b!4578196 (= e!2854833 (getKeysList!539 (toList!4535 lt!1743166)))))

(declare-fun b!4578197 () Bool)

(assert (=> b!4578197 (= e!2854835 e!2854836)))

(declare-fun res!1912385 () Bool)

(assert (=> b!4578197 (=> (not res!1912385) (not e!2854836))))

(assert (=> b!4578197 (= res!1912385 (isDefined!8582 (getValueByKey!1243 (toList!4535 lt!1743166) key!3287)))))

(assert (= (and d!1433352 c!783595) b!4578191))

(assert (= (and d!1433352 (not c!783595)) b!4578192))

(assert (= (and b!4578192 c!783594) b!4578193))

(assert (= (and b!4578192 (not c!783594)) b!4578189))

(assert (= (or b!4578191 b!4578192) bm!319572))

(assert (= (and bm!319572 c!783593) b!4578196))

(assert (= (and bm!319572 (not c!783593)) b!4578190))

(assert (= (and d!1433352 res!1912387) b!4578194))

(assert (= (and d!1433352 (not res!1912386)) b!4578197))

(assert (= (and b!4578197 res!1912385) b!4578195))

(declare-fun m!5386603 () Bool)

(assert (=> b!4578191 m!5386603))

(declare-fun m!5386605 () Bool)

(assert (=> b!4578191 m!5386605))

(assert (=> b!4578191 m!5386605))

(declare-fun m!5386607 () Bool)

(assert (=> b!4578191 m!5386607))

(declare-fun m!5386609 () Bool)

(assert (=> b!4578191 m!5386609))

(assert (=> b!4578197 m!5386605))

(assert (=> b!4578197 m!5386605))

(assert (=> b!4578197 m!5386607))

(declare-fun m!5386611 () Bool)

(assert (=> b!4578190 m!5386611))

(declare-fun m!5386613 () Bool)

(assert (=> b!4578196 m!5386613))

(declare-fun m!5386615 () Bool)

(assert (=> d!1433352 m!5386615))

(assert (=> b!4578195 m!5386611))

(assert (=> b!4578195 m!5386611))

(declare-fun m!5386617 () Bool)

(assert (=> b!4578195 m!5386617))

(assert (=> b!4578194 m!5386611))

(assert (=> b!4578194 m!5386611))

(assert (=> b!4578194 m!5386617))

(declare-fun m!5386619 () Bool)

(assert (=> bm!319572 m!5386619))

(assert (=> b!4578193 m!5386615))

(declare-fun m!5386621 () Bool)

(assert (=> b!4578193 m!5386621))

(assert (=> b!4578102 d!1433352))

(declare-fun b!4578198 () Bool)

(declare-fun e!2854843 () Unit!105281)

(declare-fun Unit!105301 () Unit!105281)

(assert (=> b!4578198 (= e!2854843 Unit!105301)))

(declare-fun b!4578199 () Bool)

(declare-fun e!2854839 () List!51055)

(assert (=> b!4578199 (= e!2854839 (keys!17786 (extractMap!1320 (t!358043 (toList!4536 lm!1477)))))))

(declare-fun b!4578200 () Bool)

(declare-fun e!2854844 () Unit!105281)

(declare-fun lt!1743258 () Unit!105281)

(assert (=> b!4578200 (= e!2854844 lt!1743258)))

(declare-fun lt!1743257 () Unit!105281)

(assert (=> b!4578200 (= lt!1743257 (lemmaContainsKeyImpliesGetValueByKeyDefined!1145 (toList!4535 (extractMap!1320 (t!358043 (toList!4536 lm!1477)))) key!3287))))

(assert (=> b!4578200 (isDefined!8582 (getValueByKey!1243 (toList!4535 (extractMap!1320 (t!358043 (toList!4536 lm!1477)))) key!3287))))

(declare-fun lt!1743254 () Unit!105281)

(assert (=> b!4578200 (= lt!1743254 lt!1743257)))

(assert (=> b!4578200 (= lt!1743258 (lemmaInListThenGetKeysListContains!534 (toList!4535 (extractMap!1320 (t!358043 (toList!4536 lm!1477)))) key!3287))))

(declare-fun call!319578 () Bool)

(assert (=> b!4578200 call!319578))

(declare-fun b!4578201 () Bool)

(assert (=> b!4578201 (= e!2854844 e!2854843)))

(declare-fun c!783597 () Bool)

(assert (=> b!4578201 (= c!783597 call!319578)))

(declare-fun b!4578202 () Bool)

(assert (=> b!4578202 false))

(declare-fun lt!1743252 () Unit!105281)

(declare-fun lt!1743256 () Unit!105281)

(assert (=> b!4578202 (= lt!1743252 lt!1743256)))

(assert (=> b!4578202 (containsKey!2037 (toList!4535 (extractMap!1320 (t!358043 (toList!4536 lm!1477)))) key!3287)))

(assert (=> b!4578202 (= lt!1743256 (lemmaInGetKeysListThenContainsKey!537 (toList!4535 (extractMap!1320 (t!358043 (toList!4536 lm!1477)))) key!3287))))

(declare-fun Unit!105302 () Unit!105281)

(assert (=> b!4578202 (= e!2854843 Unit!105302)))

(declare-fun b!4578203 () Bool)

(declare-fun e!2854840 () Bool)

(assert (=> b!4578203 (= e!2854840 (not (contains!13817 (keys!17786 (extractMap!1320 (t!358043 (toList!4536 lm!1477)))) key!3287)))))

(declare-fun bm!319573 () Bool)

(assert (=> bm!319573 (= call!319578 (contains!13817 e!2854839 key!3287))))

(declare-fun c!783596 () Bool)

(declare-fun c!783598 () Bool)

(assert (=> bm!319573 (= c!783596 c!783598)))

(declare-fun b!4578204 () Bool)

(declare-fun e!2854842 () Bool)

(assert (=> b!4578204 (= e!2854842 (contains!13817 (keys!17786 (extractMap!1320 (t!358043 (toList!4536 lm!1477)))) key!3287))))

(declare-fun d!1433354 () Bool)

(declare-fun e!2854841 () Bool)

(assert (=> d!1433354 e!2854841))

(declare-fun res!1912389 () Bool)

(assert (=> d!1433354 (=> res!1912389 e!2854841)))

(assert (=> d!1433354 (= res!1912389 e!2854840)))

(declare-fun res!1912390 () Bool)

(assert (=> d!1433354 (=> (not res!1912390) (not e!2854840))))

(declare-fun lt!1743259 () Bool)

(assert (=> d!1433354 (= res!1912390 (not lt!1743259))))

(declare-fun lt!1743253 () Bool)

(assert (=> d!1433354 (= lt!1743259 lt!1743253)))

(declare-fun lt!1743255 () Unit!105281)

(assert (=> d!1433354 (= lt!1743255 e!2854844)))

(assert (=> d!1433354 (= c!783598 lt!1743253)))

(assert (=> d!1433354 (= lt!1743253 (containsKey!2037 (toList!4535 (extractMap!1320 (t!358043 (toList!4536 lm!1477)))) key!3287))))

(assert (=> d!1433354 (= (contains!13814 (extractMap!1320 (t!358043 (toList!4536 lm!1477))) key!3287) lt!1743259)))

(declare-fun b!4578205 () Bool)

(assert (=> b!4578205 (= e!2854839 (getKeysList!539 (toList!4535 (extractMap!1320 (t!358043 (toList!4536 lm!1477))))))))

(declare-fun b!4578206 () Bool)

(assert (=> b!4578206 (= e!2854841 e!2854842)))

(declare-fun res!1912388 () Bool)

(assert (=> b!4578206 (=> (not res!1912388) (not e!2854842))))

(assert (=> b!4578206 (= res!1912388 (isDefined!8582 (getValueByKey!1243 (toList!4535 (extractMap!1320 (t!358043 (toList!4536 lm!1477)))) key!3287)))))

(assert (= (and d!1433354 c!783598) b!4578200))

(assert (= (and d!1433354 (not c!783598)) b!4578201))

(assert (= (and b!4578201 c!783597) b!4578202))

(assert (= (and b!4578201 (not c!783597)) b!4578198))

(assert (= (or b!4578200 b!4578201) bm!319573))

(assert (= (and bm!319573 c!783596) b!4578205))

(assert (= (and bm!319573 (not c!783596)) b!4578199))

(assert (= (and d!1433354 res!1912390) b!4578203))

(assert (= (and d!1433354 (not res!1912389)) b!4578206))

(assert (= (and b!4578206 res!1912388) b!4578204))

(declare-fun m!5386623 () Bool)

(assert (=> b!4578200 m!5386623))

(declare-fun m!5386625 () Bool)

(assert (=> b!4578200 m!5386625))

(assert (=> b!4578200 m!5386625))

(declare-fun m!5386627 () Bool)

(assert (=> b!4578200 m!5386627))

(declare-fun m!5386629 () Bool)

(assert (=> b!4578200 m!5386629))

(assert (=> b!4578206 m!5386625))

(assert (=> b!4578206 m!5386625))

(assert (=> b!4578206 m!5386627))

(assert (=> b!4578199 m!5386487))

(declare-fun m!5386631 () Bool)

(assert (=> b!4578199 m!5386631))

(declare-fun m!5386633 () Bool)

(assert (=> b!4578205 m!5386633))

(declare-fun m!5386635 () Bool)

(assert (=> d!1433354 m!5386635))

(assert (=> b!4578204 m!5386487))

(assert (=> b!4578204 m!5386631))

(assert (=> b!4578204 m!5386631))

(declare-fun m!5386637 () Bool)

(assert (=> b!4578204 m!5386637))

(assert (=> b!4578203 m!5386487))

(assert (=> b!4578203 m!5386631))

(assert (=> b!4578203 m!5386631))

(assert (=> b!4578203 m!5386637))

(declare-fun m!5386639 () Bool)

(assert (=> bm!319573 m!5386639))

(assert (=> b!4578202 m!5386635))

(declare-fun m!5386641 () Bool)

(assert (=> b!4578202 m!5386641))

(assert (=> b!4578102 d!1433354))

(declare-fun bs!971011 () Bool)

(declare-fun d!1433356 () Bool)

(assert (= bs!971011 (and d!1433356 start!455660)))

(declare-fun lambda!182572 () Int)

(assert (=> bs!971011 (= lambda!182572 lambda!182553)))

(declare-fun bs!971012 () Bool)

(assert (= bs!971012 (and d!1433356 d!1433346)))

(assert (=> bs!971012 (= lambda!182572 lambda!182556)))

(declare-fun bs!971013 () Bool)

(assert (= bs!971013 (and d!1433356 d!1433350)))

(assert (=> bs!971013 (= lambda!182572 lambda!182559)))

(declare-fun lt!1743268 () ListMap!3797)

(assert (=> d!1433356 (invariantList!1091 (toList!4535 lt!1743268))))

(declare-fun e!2854845 () ListMap!3797)

(assert (=> d!1433356 (= lt!1743268 e!2854845)))

(declare-fun c!783599 () Bool)

(assert (=> d!1433356 (= c!783599 ((_ is Cons!50929) (t!358043 (toList!4536 lm!1477))))))

(assert (=> d!1433356 (forall!10486 (t!358043 (toList!4536 lm!1477)) lambda!182572)))

(assert (=> d!1433356 (= (extractMap!1320 (t!358043 (toList!4536 lm!1477))) lt!1743268)))

(declare-fun b!4578207 () Bool)

(assert (=> b!4578207 (= e!2854845 (addToMapMapFromBucket!777 (_2!29040 (h!56858 (t!358043 (toList!4536 lm!1477)))) (extractMap!1320 (t!358043 (t!358043 (toList!4536 lm!1477))))))))

(declare-fun b!4578208 () Bool)

(assert (=> b!4578208 (= e!2854845 (ListMap!3798 Nil!50928))))

(assert (= (and d!1433356 c!783599) b!4578207))

(assert (= (and d!1433356 (not c!783599)) b!4578208))

(declare-fun m!5386643 () Bool)

(assert (=> d!1433356 m!5386643))

(declare-fun m!5386645 () Bool)

(assert (=> d!1433356 m!5386645))

(declare-fun m!5386647 () Bool)

(assert (=> b!4578207 m!5386647))

(assert (=> b!4578207 m!5386647))

(declare-fun m!5386649 () Bool)

(assert (=> b!4578207 m!5386649))

(assert (=> b!4578102 d!1433356))

(declare-fun bs!971017 () Bool)

(declare-fun d!1433358 () Bool)

(assert (= bs!971017 (and d!1433358 start!455660)))

(declare-fun lambda!182595 () Int)

(assert (=> bs!971017 (= lambda!182595 lambda!182553)))

(declare-fun bs!971018 () Bool)

(assert (= bs!971018 (and d!1433358 d!1433346)))

(assert (=> bs!971018 (= lambda!182595 lambda!182556)))

(declare-fun bs!971019 () Bool)

(assert (= bs!971019 (and d!1433358 d!1433350)))

(assert (=> bs!971019 (= lambda!182595 lambda!182559)))

(declare-fun bs!971020 () Bool)

(assert (= bs!971020 (and d!1433358 d!1433356)))

(assert (=> bs!971020 (= lambda!182595 lambda!182572)))

(assert (=> d!1433358 (contains!13814 (extractMap!1320 (toList!4536 lt!1743167)) key!3287)))

(declare-fun lt!1743310 () Unit!105281)

(declare-fun choose!30463 (ListLongMap!3167 K!12300 Hashable!5659) Unit!105281)

(assert (=> d!1433358 (= lt!1743310 (choose!30463 lt!1743167 key!3287 hashF!1107))))

(assert (=> d!1433358 (forall!10486 (toList!4536 lt!1743167) lambda!182595)))

(assert (=> d!1433358 (= (lemmaListContainsThenExtractedMapContains!220 lt!1743167 key!3287 hashF!1107) lt!1743310)))

(declare-fun bs!971021 () Bool)

(assert (= bs!971021 d!1433358))

(assert (=> bs!971021 m!5386485))

(assert (=> bs!971021 m!5386485))

(declare-fun m!5386687 () Bool)

(assert (=> bs!971021 m!5386687))

(declare-fun m!5386689 () Bool)

(assert (=> bs!971021 m!5386689))

(declare-fun m!5386691 () Bool)

(assert (=> bs!971021 m!5386691))

(assert (=> b!4578102 d!1433358))

(declare-fun bs!971026 () Bool)

(declare-fun d!1433362 () Bool)

(assert (= bs!971026 (and d!1433362 d!1433350)))

(declare-fun lambda!182602 () Int)

(assert (=> bs!971026 (= lambda!182602 lambda!182559)))

(declare-fun bs!971027 () Bool)

(assert (= bs!971027 (and d!1433362 d!1433356)))

(assert (=> bs!971027 (= lambda!182602 lambda!182572)))

(declare-fun bs!971028 () Bool)

(assert (= bs!971028 (and d!1433362 start!455660)))

(assert (=> bs!971028 (= lambda!182602 lambda!182553)))

(declare-fun bs!971029 () Bool)

(assert (= bs!971029 (and d!1433362 d!1433358)))

(assert (=> bs!971029 (= lambda!182602 lambda!182595)))

(declare-fun bs!971030 () Bool)

(assert (= bs!971030 (and d!1433362 d!1433346)))

(assert (=> bs!971030 (= lambda!182602 lambda!182556)))

(assert (=> d!1433362 (not (contains!13814 (extractMap!1320 (toList!4536 lm!1477)) key!3287))))

(declare-fun lt!1743333 () Unit!105281)

(declare-fun choose!30464 (ListLongMap!3167 K!12300 Hashable!5659) Unit!105281)

(assert (=> d!1433362 (= lt!1743333 (choose!30464 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1433362 (forall!10486 (toList!4536 lm!1477) lambda!182602)))

(assert (=> d!1433362 (= (lemmaNotInItsHashBucketThenNotInMap!246 lm!1477 key!3287 hashF!1107) lt!1743333)))

(declare-fun bs!971031 () Bool)

(assert (= bs!971031 d!1433362))

(assert (=> bs!971031 m!5386527))

(assert (=> bs!971031 m!5386527))

(declare-fun m!5386737 () Bool)

(assert (=> bs!971031 m!5386737))

(declare-fun m!5386739 () Bool)

(assert (=> bs!971031 m!5386739))

(declare-fun m!5386741 () Bool)

(assert (=> bs!971031 m!5386741))

(assert (=> b!4578104 d!1433362))

(declare-fun d!1433374 () Bool)

(declare-fun lt!1743334 () Bool)

(assert (=> d!1433374 (= lt!1743334 (select (content!8568 (t!358043 (toList!4536 lm!1477))) lt!1743159))))

(declare-fun e!2854862 () Bool)

(assert (=> d!1433374 (= lt!1743334 e!2854862)))

(declare-fun res!1912408 () Bool)

(assert (=> d!1433374 (=> (not res!1912408) (not e!2854862))))

(assert (=> d!1433374 (= res!1912408 ((_ is Cons!50929) (t!358043 (toList!4536 lm!1477))))))

(assert (=> d!1433374 (= (contains!13815 (t!358043 (toList!4536 lm!1477)) lt!1743159) lt!1743334)))

(declare-fun b!4578238 () Bool)

(declare-fun e!2854861 () Bool)

(assert (=> b!4578238 (= e!2854862 e!2854861)))

(declare-fun res!1912409 () Bool)

(assert (=> b!4578238 (=> res!1912409 e!2854861)))

(assert (=> b!4578238 (= res!1912409 (= (h!56858 (t!358043 (toList!4536 lm!1477))) lt!1743159))))

(declare-fun b!4578239 () Bool)

(assert (=> b!4578239 (= e!2854861 (contains!13815 (t!358043 (t!358043 (toList!4536 lm!1477))) lt!1743159))))

(assert (= (and d!1433374 res!1912408) b!4578238))

(assert (= (and b!4578238 (not res!1912409)) b!4578239))

(declare-fun m!5386743 () Bool)

(assert (=> d!1433374 m!5386743))

(declare-fun m!5386745 () Bool)

(assert (=> d!1433374 m!5386745))

(declare-fun m!5386747 () Bool)

(assert (=> b!4578239 m!5386747))

(assert (=> b!4578114 d!1433374))

(declare-fun d!1433376 () Bool)

(assert (=> d!1433376 (= (apply!12001 lt!1743167 hash!344) (get!16799 (getValueByKey!1241 (toList!4536 lt!1743167) hash!344)))))

(declare-fun bs!971032 () Bool)

(assert (= bs!971032 d!1433376))

(declare-fun m!5386749 () Bool)

(assert (=> bs!971032 m!5386749))

(assert (=> bs!971032 m!5386749))

(declare-fun m!5386751 () Bool)

(assert (=> bs!971032 m!5386751))

(assert (=> b!4578116 d!1433376))

(declare-fun d!1433378 () Bool)

(declare-fun head!9526 (List!51053) tuple2!51492)

(assert (=> d!1433378 (= (head!9524 lt!1743177) (head!9526 (toList!4536 lt!1743177)))))

(declare-fun bs!971033 () Bool)

(assert (= bs!971033 d!1433378))

(declare-fun m!5386753 () Bool)

(assert (=> bs!971033 m!5386753))

(assert (=> b!4578105 d!1433378))

(declare-fun d!1433380 () Bool)

(assert (=> d!1433380 true))

(assert (=> d!1433380 true))

(declare-fun lambda!182605 () Int)

(declare-fun forall!10488 (List!51052 Int) Bool)

(assert (=> d!1433380 (= (allKeysSameHash!1118 newBucket!178 hash!344 hashF!1107) (forall!10488 newBucket!178 lambda!182605))))

(declare-fun bs!971036 () Bool)

(assert (= bs!971036 d!1433380))

(declare-fun m!5386773 () Bool)

(assert (=> bs!971036 m!5386773))

(assert (=> b!4578107 d!1433380))

(declare-fun d!1433386 () Bool)

(declare-fun content!8569 (List!51052) (InoxSet tuple2!51490))

(assert (=> d!1433386 (= (eq!703 lt!1743170 lt!1743168) (= (content!8569 (toList!4535 lt!1743170)) (content!8569 (toList!4535 lt!1743168))))))

(declare-fun bs!971039 () Bool)

(assert (= bs!971039 d!1433386))

(declare-fun m!5386783 () Bool)

(assert (=> bs!971039 m!5386783))

(declare-fun m!5386785 () Bool)

(assert (=> bs!971039 m!5386785))

(assert (=> b!4578117 d!1433386))

(declare-fun d!1433390 () Bool)

(assert (=> d!1433390 (= (eq!703 lt!1743156 lt!1743168) (= (content!8569 (toList!4535 lt!1743156)) (content!8569 (toList!4535 lt!1743168))))))

(declare-fun bs!971040 () Bool)

(assert (= bs!971040 d!1433390))

(declare-fun m!5386787 () Bool)

(assert (=> bs!971040 m!5386787))

(assert (=> bs!971040 m!5386785))

(assert (=> b!4578117 d!1433390))

(declare-fun bs!971124 () Bool)

(declare-fun b!4578344 () Bool)

(assert (= bs!971124 (and b!4578344 d!1433380)))

(declare-fun lambda!182657 () Int)

(assert (=> bs!971124 (not (= lambda!182657 lambda!182605))))

(assert (=> b!4578344 true))

(declare-fun bs!971125 () Bool)

(declare-fun b!4578341 () Bool)

(assert (= bs!971125 (and b!4578341 d!1433380)))

(declare-fun lambda!182658 () Int)

(assert (=> bs!971125 (not (= lambda!182658 lambda!182605))))

(declare-fun bs!971126 () Bool)

(assert (= bs!971126 (and b!4578341 b!4578344)))

(assert (=> bs!971126 (= lambda!182658 lambda!182657)))

(assert (=> b!4578341 true))

(declare-fun lambda!182659 () Int)

(assert (=> bs!971125 (not (= lambda!182659 lambda!182605))))

(declare-fun lt!1743478 () ListMap!3797)

(assert (=> bs!971126 (= (= lt!1743478 lt!1743163) (= lambda!182659 lambda!182657))))

(assert (=> b!4578341 (= (= lt!1743478 lt!1743163) (= lambda!182659 lambda!182658))))

(assert (=> b!4578341 true))

(declare-fun bs!971127 () Bool)

(declare-fun d!1433392 () Bool)

(assert (= bs!971127 (and d!1433392 d!1433380)))

(declare-fun lambda!182660 () Int)

(assert (=> bs!971127 (not (= lambda!182660 lambda!182605))))

(declare-fun bs!971129 () Bool)

(assert (= bs!971129 (and d!1433392 b!4578344)))

(declare-fun lt!1743474 () ListMap!3797)

(assert (=> bs!971129 (= (= lt!1743474 lt!1743163) (= lambda!182660 lambda!182657))))

(declare-fun bs!971130 () Bool)

(assert (= bs!971130 (and d!1433392 b!4578341)))

(assert (=> bs!971130 (= (= lt!1743474 lt!1743163) (= lambda!182660 lambda!182658))))

(assert (=> bs!971130 (= (= lt!1743474 lt!1743478) (= lambda!182660 lambda!182659))))

(assert (=> d!1433392 true))

(declare-fun e!2854931 () ListMap!3797)

(assert (=> b!4578341 (= e!2854931 lt!1743478)))

(declare-fun lt!1743470 () ListMap!3797)

(declare-fun +!1696 (ListMap!3797 tuple2!51490) ListMap!3797)

(assert (=> b!4578341 (= lt!1743470 (+!1696 lt!1743163 (h!56857 (_2!29040 lt!1743160))))))

(assert (=> b!4578341 (= lt!1743478 (addToMapMapFromBucket!777 (t!358042 (_2!29040 lt!1743160)) (+!1696 lt!1743163 (h!56857 (_2!29040 lt!1743160)))))))

(declare-fun lt!1743475 () Unit!105281)

(declare-fun call!319603 () Unit!105281)

(assert (=> b!4578341 (= lt!1743475 call!319603)))

(assert (=> b!4578341 (forall!10488 (toList!4535 lt!1743163) lambda!182658)))

(declare-fun lt!1743469 () Unit!105281)

(assert (=> b!4578341 (= lt!1743469 lt!1743475)))

(declare-fun call!319602 () Bool)

(assert (=> b!4578341 call!319602))

(declare-fun lt!1743476 () Unit!105281)

(declare-fun Unit!105305 () Unit!105281)

(assert (=> b!4578341 (= lt!1743476 Unit!105305)))

(assert (=> b!4578341 (forall!10488 (t!358042 (_2!29040 lt!1743160)) lambda!182659)))

(declare-fun lt!1743477 () Unit!105281)

(declare-fun Unit!105306 () Unit!105281)

(assert (=> b!4578341 (= lt!1743477 Unit!105306)))

(declare-fun lt!1743472 () Unit!105281)

(declare-fun Unit!105307 () Unit!105281)

(assert (=> b!4578341 (= lt!1743472 Unit!105307)))

(declare-fun lt!1743482 () Unit!105281)

(declare-fun forallContained!2749 (List!51052 Int tuple2!51490) Unit!105281)

(assert (=> b!4578341 (= lt!1743482 (forallContained!2749 (toList!4535 lt!1743470) lambda!182659 (h!56857 (_2!29040 lt!1743160))))))

(assert (=> b!4578341 (contains!13814 lt!1743470 (_1!29039 (h!56857 (_2!29040 lt!1743160))))))

(declare-fun lt!1743485 () Unit!105281)

(declare-fun Unit!105308 () Unit!105281)

(assert (=> b!4578341 (= lt!1743485 Unit!105308)))

(assert (=> b!4578341 (contains!13814 lt!1743478 (_1!29039 (h!56857 (_2!29040 lt!1743160))))))

(declare-fun lt!1743483 () Unit!105281)

(declare-fun Unit!105309 () Unit!105281)

(assert (=> b!4578341 (= lt!1743483 Unit!105309)))

(assert (=> b!4578341 (forall!10488 (_2!29040 lt!1743160) lambda!182659)))

(declare-fun lt!1743473 () Unit!105281)

(declare-fun Unit!105310 () Unit!105281)

(assert (=> b!4578341 (= lt!1743473 Unit!105310)))

(assert (=> b!4578341 (forall!10488 (toList!4535 lt!1743470) lambda!182659)))

(declare-fun lt!1743480 () Unit!105281)

(declare-fun Unit!105311 () Unit!105281)

(assert (=> b!4578341 (= lt!1743480 Unit!105311)))

(declare-fun lt!1743487 () Unit!105281)

(declare-fun Unit!105312 () Unit!105281)

(assert (=> b!4578341 (= lt!1743487 Unit!105312)))

(declare-fun lt!1743479 () Unit!105281)

(declare-fun addForallContainsKeyThenBeforeAdding!408 (ListMap!3797 ListMap!3797 K!12300 V!12546) Unit!105281)

(assert (=> b!4578341 (= lt!1743479 (addForallContainsKeyThenBeforeAdding!408 lt!1743163 lt!1743478 (_1!29039 (h!56857 (_2!29040 lt!1743160))) (_2!29039 (h!56857 (_2!29040 lt!1743160)))))))

(assert (=> b!4578341 (forall!10488 (toList!4535 lt!1743163) lambda!182659)))

(declare-fun lt!1743481 () Unit!105281)

(assert (=> b!4578341 (= lt!1743481 lt!1743479)))

(declare-fun call!319604 () Bool)

(assert (=> b!4578341 call!319604))

(declare-fun lt!1743484 () Unit!105281)

(declare-fun Unit!105313 () Unit!105281)

(assert (=> b!4578341 (= lt!1743484 Unit!105313)))

(declare-fun res!1912457 () Bool)

(assert (=> b!4578341 (= res!1912457 (forall!10488 (_2!29040 lt!1743160) lambda!182659))))

(declare-fun e!2854933 () Bool)

(assert (=> b!4578341 (=> (not res!1912457) (not e!2854933))))

(assert (=> b!4578341 e!2854933))

(declare-fun lt!1743488 () Unit!105281)

(declare-fun Unit!105314 () Unit!105281)

(assert (=> b!4578341 (= lt!1743488 Unit!105314)))

(declare-fun bm!319597 () Bool)

(declare-fun c!783629 () Bool)

(assert (=> bm!319597 (= call!319602 (forall!10488 (ite c!783629 (toList!4535 lt!1743163) (toList!4535 lt!1743470)) (ite c!783629 lambda!182657 lambda!182659)))))

(declare-fun e!2854932 () Bool)

(assert (=> d!1433392 e!2854932))

(declare-fun res!1912459 () Bool)

(assert (=> d!1433392 (=> (not res!1912459) (not e!2854932))))

(assert (=> d!1433392 (= res!1912459 (forall!10488 (_2!29040 lt!1743160) lambda!182660))))

(assert (=> d!1433392 (= lt!1743474 e!2854931)))

(assert (=> d!1433392 (= c!783629 ((_ is Nil!50928) (_2!29040 lt!1743160)))))

(assert (=> d!1433392 (noDuplicateKeys!1264 (_2!29040 lt!1743160))))

(assert (=> d!1433392 (= (addToMapMapFromBucket!777 (_2!29040 lt!1743160) lt!1743163) lt!1743474)))

(declare-fun b!4578342 () Bool)

(assert (=> b!4578342 (= e!2854933 (forall!10488 (toList!4535 lt!1743163) lambda!182659))))

(declare-fun b!4578343 () Bool)

(assert (=> b!4578343 (= e!2854932 (invariantList!1091 (toList!4535 lt!1743474)))))

(assert (=> b!4578344 (= e!2854931 lt!1743163)))

(declare-fun lt!1743468 () Unit!105281)

(assert (=> b!4578344 (= lt!1743468 call!319603)))

(assert (=> b!4578344 call!319604))

(declare-fun lt!1743471 () Unit!105281)

(assert (=> b!4578344 (= lt!1743471 lt!1743468)))

(assert (=> b!4578344 call!319602))

(declare-fun lt!1743486 () Unit!105281)

(declare-fun Unit!105315 () Unit!105281)

(assert (=> b!4578344 (= lt!1743486 Unit!105315)))

(declare-fun bm!319598 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!408 (ListMap!3797) Unit!105281)

(assert (=> bm!319598 (= call!319603 (lemmaContainsAllItsOwnKeys!408 lt!1743163))))

(declare-fun bm!319599 () Bool)

(assert (=> bm!319599 (= call!319604 (forall!10488 (toList!4535 lt!1743163) (ite c!783629 lambda!182657 lambda!182659)))))

(declare-fun b!4578345 () Bool)

(declare-fun res!1912458 () Bool)

(assert (=> b!4578345 (=> (not res!1912458) (not e!2854932))))

(assert (=> b!4578345 (= res!1912458 (forall!10488 (toList!4535 lt!1743163) lambda!182660))))

(assert (= (and d!1433392 c!783629) b!4578344))

(assert (= (and d!1433392 (not c!783629)) b!4578341))

(assert (= (and b!4578341 res!1912457) b!4578342))

(assert (= (or b!4578344 b!4578341) bm!319597))

(assert (= (or b!4578344 b!4578341) bm!319599))

(assert (= (or b!4578344 b!4578341) bm!319598))

(assert (= (and d!1433392 res!1912459) b!4578345))

(assert (= (and b!4578345 res!1912458) b!4578343))

(declare-fun m!5386971 () Bool)

(assert (=> d!1433392 m!5386971))

(declare-fun m!5386975 () Bool)

(assert (=> d!1433392 m!5386975))

(declare-fun m!5386979 () Bool)

(assert (=> bm!319597 m!5386979))

(declare-fun m!5386983 () Bool)

(assert (=> b!4578343 m!5386983))

(declare-fun m!5386985 () Bool)

(assert (=> bm!319598 m!5386985))

(declare-fun m!5386989 () Bool)

(assert (=> b!4578342 m!5386989))

(declare-fun m!5386991 () Bool)

(assert (=> b!4578341 m!5386991))

(declare-fun m!5386993 () Bool)

(assert (=> b!4578341 m!5386993))

(declare-fun m!5386995 () Bool)

(assert (=> b!4578341 m!5386995))

(declare-fun m!5386997 () Bool)

(assert (=> b!4578341 m!5386997))

(assert (=> b!4578341 m!5386989))

(declare-fun m!5386999 () Bool)

(assert (=> b!4578341 m!5386999))

(declare-fun m!5387001 () Bool)

(assert (=> b!4578341 m!5387001))

(assert (=> b!4578341 m!5386997))

(declare-fun m!5387003 () Bool)

(assert (=> b!4578341 m!5387003))

(declare-fun m!5387005 () Bool)

(assert (=> b!4578341 m!5387005))

(assert (=> b!4578341 m!5386999))

(declare-fun m!5387007 () Bool)

(assert (=> b!4578341 m!5387007))

(declare-fun m!5387009 () Bool)

(assert (=> b!4578341 m!5387009))

(declare-fun m!5387013 () Bool)

(assert (=> bm!319599 m!5387013))

(declare-fun m!5387017 () Bool)

(assert (=> b!4578345 m!5387017))

(assert (=> b!4578117 d!1433392))

(declare-fun d!1433444 () Bool)

(assert (=> d!1433444 (eq!703 (addToMapMapFromBucket!777 (_2!29040 lt!1743160) lt!1743158) (addToMapMapFromBucket!777 (_2!29040 lt!1743160) lt!1743163))))

(declare-fun lt!1743503 () Unit!105281)

(declare-fun choose!30466 (ListMap!3797 ListMap!3797 List!51052) Unit!105281)

(assert (=> d!1433444 (= lt!1743503 (choose!30466 lt!1743158 lt!1743163 (_2!29040 lt!1743160)))))

(assert (=> d!1433444 (noDuplicateKeys!1264 (_2!29040 lt!1743160))))

(assert (=> d!1433444 (= (lemmaAddToMapFromBucketPreservesEquivalence!88 lt!1743158 lt!1743163 (_2!29040 lt!1743160)) lt!1743503)))

(declare-fun bs!971140 () Bool)

(assert (= bs!971140 d!1433444))

(assert (=> bs!971140 m!5386453))

(assert (=> bs!971140 m!5386533))

(declare-fun m!5387037 () Bool)

(assert (=> bs!971140 m!5387037))

(declare-fun m!5387039 () Bool)

(assert (=> bs!971140 m!5387039))

(assert (=> bs!971140 m!5386453))

(assert (=> bs!971140 m!5386975))

(assert (=> bs!971140 m!5386533))

(assert (=> b!4578117 d!1433444))

(declare-fun b!4578373 () Bool)

(declare-fun e!2854956 () Unit!105281)

(declare-fun Unit!105316 () Unit!105281)

(assert (=> b!4578373 (= e!2854956 Unit!105316)))

(declare-fun b!4578374 () Bool)

(declare-fun e!2854952 () List!51055)

(assert (=> b!4578374 (= e!2854952 (keys!17786 lt!1743173))))

(declare-fun b!4578375 () Bool)

(declare-fun e!2854957 () Unit!105281)

(declare-fun lt!1743512 () Unit!105281)

(assert (=> b!4578375 (= e!2854957 lt!1743512)))

(declare-fun lt!1743511 () Unit!105281)

(assert (=> b!4578375 (= lt!1743511 (lemmaContainsKeyImpliesGetValueByKeyDefined!1145 (toList!4535 lt!1743173) key!3287))))

(assert (=> b!4578375 (isDefined!8582 (getValueByKey!1243 (toList!4535 lt!1743173) key!3287))))

(declare-fun lt!1743508 () Unit!105281)

(assert (=> b!4578375 (= lt!1743508 lt!1743511)))

(assert (=> b!4578375 (= lt!1743512 (lemmaInListThenGetKeysListContains!534 (toList!4535 lt!1743173) key!3287))))

(declare-fun call!319605 () Bool)

(assert (=> b!4578375 call!319605))

(declare-fun b!4578376 () Bool)

(assert (=> b!4578376 (= e!2854957 e!2854956)))

(declare-fun c!783632 () Bool)

(assert (=> b!4578376 (= c!783632 call!319605)))

(declare-fun b!4578377 () Bool)

(assert (=> b!4578377 false))

(declare-fun lt!1743506 () Unit!105281)

(declare-fun lt!1743510 () Unit!105281)

(assert (=> b!4578377 (= lt!1743506 lt!1743510)))

(assert (=> b!4578377 (containsKey!2037 (toList!4535 lt!1743173) key!3287)))

(assert (=> b!4578377 (= lt!1743510 (lemmaInGetKeysListThenContainsKey!537 (toList!4535 lt!1743173) key!3287))))

(declare-fun Unit!105321 () Unit!105281)

(assert (=> b!4578377 (= e!2854956 Unit!105321)))

(declare-fun b!4578378 () Bool)

(declare-fun e!2854953 () Bool)

(assert (=> b!4578378 (= e!2854953 (not (contains!13817 (keys!17786 lt!1743173) key!3287)))))

(declare-fun bm!319600 () Bool)

(assert (=> bm!319600 (= call!319605 (contains!13817 e!2854952 key!3287))))

(declare-fun c!783631 () Bool)

(declare-fun c!783633 () Bool)

(assert (=> bm!319600 (= c!783631 c!783633)))

(declare-fun b!4578379 () Bool)

(declare-fun e!2854955 () Bool)

(assert (=> b!4578379 (= e!2854955 (contains!13817 (keys!17786 lt!1743173) key!3287))))

(declare-fun d!1433456 () Bool)

(declare-fun e!2854954 () Bool)

(assert (=> d!1433456 e!2854954))

(declare-fun res!1912480 () Bool)

(assert (=> d!1433456 (=> res!1912480 e!2854954)))

(assert (=> d!1433456 (= res!1912480 e!2854953)))

(declare-fun res!1912481 () Bool)

(assert (=> d!1433456 (=> (not res!1912481) (not e!2854953))))

(declare-fun lt!1743513 () Bool)

(assert (=> d!1433456 (= res!1912481 (not lt!1743513))))

(declare-fun lt!1743507 () Bool)

(assert (=> d!1433456 (= lt!1743513 lt!1743507)))

(declare-fun lt!1743509 () Unit!105281)

(assert (=> d!1433456 (= lt!1743509 e!2854957)))

(assert (=> d!1433456 (= c!783633 lt!1743507)))

(assert (=> d!1433456 (= lt!1743507 (containsKey!2037 (toList!4535 lt!1743173) key!3287))))

(assert (=> d!1433456 (= (contains!13814 lt!1743173 key!3287) lt!1743513)))

(declare-fun b!4578380 () Bool)

(assert (=> b!4578380 (= e!2854952 (getKeysList!539 (toList!4535 lt!1743173)))))

(declare-fun b!4578381 () Bool)

(assert (=> b!4578381 (= e!2854954 e!2854955)))

(declare-fun res!1912479 () Bool)

(assert (=> b!4578381 (=> (not res!1912479) (not e!2854955))))

(assert (=> b!4578381 (= res!1912479 (isDefined!8582 (getValueByKey!1243 (toList!4535 lt!1743173) key!3287)))))

(assert (= (and d!1433456 c!783633) b!4578375))

(assert (= (and d!1433456 (not c!783633)) b!4578376))

(assert (= (and b!4578376 c!783632) b!4578377))

(assert (= (and b!4578376 (not c!783632)) b!4578373))

(assert (= (or b!4578375 b!4578376) bm!319600))

(assert (= (and bm!319600 c!783631) b!4578380))

(assert (= (and bm!319600 (not c!783631)) b!4578374))

(assert (= (and d!1433456 res!1912481) b!4578378))

(assert (= (and d!1433456 (not res!1912480)) b!4578381))

(assert (= (and b!4578381 res!1912479) b!4578379))

(declare-fun m!5387047 () Bool)

(assert (=> b!4578375 m!5387047))

(declare-fun m!5387049 () Bool)

(assert (=> b!4578375 m!5387049))

(assert (=> b!4578375 m!5387049))

(declare-fun m!5387051 () Bool)

(assert (=> b!4578375 m!5387051))

(declare-fun m!5387053 () Bool)

(assert (=> b!4578375 m!5387053))

(assert (=> b!4578381 m!5387049))

(assert (=> b!4578381 m!5387049))

(assert (=> b!4578381 m!5387051))

(declare-fun m!5387055 () Bool)

(assert (=> b!4578374 m!5387055))

(declare-fun m!5387057 () Bool)

(assert (=> b!4578380 m!5387057))

(declare-fun m!5387059 () Bool)

(assert (=> d!1433456 m!5387059))

(assert (=> b!4578379 m!5387055))

(assert (=> b!4578379 m!5387055))

(declare-fun m!5387061 () Bool)

(assert (=> b!4578379 m!5387061))

(assert (=> b!4578378 m!5387055))

(assert (=> b!4578378 m!5387055))

(assert (=> b!4578378 m!5387061))

(declare-fun m!5387063 () Bool)

(assert (=> bm!319600 m!5387063))

(assert (=> b!4578377 m!5387059))

(declare-fun m!5387065 () Bool)

(assert (=> b!4578377 m!5387065))

(assert (=> b!4578119 d!1433456))

(declare-fun bs!971141 () Bool)

(declare-fun d!1433460 () Bool)

(assert (= bs!971141 (and d!1433460 d!1433362)))

(declare-fun lambda!182664 () Int)

(assert (=> bs!971141 (= lambda!182664 lambda!182602)))

(declare-fun bs!971142 () Bool)

(assert (= bs!971142 (and d!1433460 d!1433350)))

(assert (=> bs!971142 (= lambda!182664 lambda!182559)))

(declare-fun bs!971143 () Bool)

(assert (= bs!971143 (and d!1433460 d!1433356)))

(assert (=> bs!971143 (= lambda!182664 lambda!182572)))

(declare-fun bs!971144 () Bool)

(assert (= bs!971144 (and d!1433460 start!455660)))

(assert (=> bs!971144 (= lambda!182664 lambda!182553)))

(declare-fun bs!971145 () Bool)

(assert (= bs!971145 (and d!1433460 d!1433358)))

(assert (=> bs!971145 (= lambda!182664 lambda!182595)))

(declare-fun bs!971146 () Bool)

(assert (= bs!971146 (and d!1433460 d!1433346)))

(assert (=> bs!971146 (= lambda!182664 lambda!182556)))

(declare-fun lt!1743515 () ListMap!3797)

(assert (=> d!1433460 (invariantList!1091 (toList!4535 lt!1743515))))

(declare-fun e!2854959 () ListMap!3797)

(assert (=> d!1433460 (= lt!1743515 e!2854959)))

(declare-fun c!783634 () Bool)

(assert (=> d!1433460 (= c!783634 ((_ is Cons!50929) (toList!4536 lm!1477)))))

(assert (=> d!1433460 (forall!10486 (toList!4536 lm!1477) lambda!182664)))

(assert (=> d!1433460 (= (extractMap!1320 (toList!4536 lm!1477)) lt!1743515)))

(declare-fun b!4578383 () Bool)

(assert (=> b!4578383 (= e!2854959 (addToMapMapFromBucket!777 (_2!29040 (h!56858 (toList!4536 lm!1477))) (extractMap!1320 (t!358043 (toList!4536 lm!1477)))))))

(declare-fun b!4578384 () Bool)

(assert (=> b!4578384 (= e!2854959 (ListMap!3798 Nil!50928))))

(assert (= (and d!1433460 c!783634) b!4578383))

(assert (= (and d!1433460 (not c!783634)) b!4578384))

(declare-fun m!5387067 () Bool)

(assert (=> d!1433460 m!5387067))

(declare-fun m!5387069 () Bool)

(assert (=> d!1433460 m!5387069))

(assert (=> b!4578383 m!5386487))

(assert (=> b!4578383 m!5386487))

(declare-fun m!5387071 () Bool)

(assert (=> b!4578383 m!5387071))

(assert (=> b!4578119 d!1433460))

(declare-fun bs!971147 () Bool)

(declare-fun d!1433462 () Bool)

(assert (= bs!971147 (and d!1433462 d!1433362)))

(declare-fun lambda!182665 () Int)

(assert (=> bs!971147 (= lambda!182665 lambda!182602)))

(declare-fun bs!971148 () Bool)

(assert (= bs!971148 (and d!1433462 d!1433350)))

(assert (=> bs!971148 (= lambda!182665 lambda!182559)))

(declare-fun bs!971149 () Bool)

(assert (= bs!971149 (and d!1433462 d!1433356)))

(assert (=> bs!971149 (= lambda!182665 lambda!182572)))

(declare-fun bs!971150 () Bool)

(assert (= bs!971150 (and d!1433462 d!1433460)))

(assert (=> bs!971150 (= lambda!182665 lambda!182664)))

(declare-fun bs!971151 () Bool)

(assert (= bs!971151 (and d!1433462 start!455660)))

(assert (=> bs!971151 (= lambda!182665 lambda!182553)))

(declare-fun bs!971152 () Bool)

(assert (= bs!971152 (and d!1433462 d!1433358)))

(assert (=> bs!971152 (= lambda!182665 lambda!182595)))

(declare-fun bs!971153 () Bool)

(assert (= bs!971153 (and d!1433462 d!1433346)))

(assert (=> bs!971153 (= lambda!182665 lambda!182556)))

(declare-fun lt!1743516 () ListMap!3797)

(assert (=> d!1433462 (invariantList!1091 (toList!4535 lt!1743516))))

(declare-fun e!2854960 () ListMap!3797)

(assert (=> d!1433462 (= lt!1743516 e!2854960)))

(declare-fun c!783635 () Bool)

(assert (=> d!1433462 (= c!783635 ((_ is Cons!50929) (toList!4536 lt!1743161)))))

(assert (=> d!1433462 (forall!10486 (toList!4536 lt!1743161) lambda!182665)))

(assert (=> d!1433462 (= (extractMap!1320 (toList!4536 lt!1743161)) lt!1743516)))

(declare-fun b!4578385 () Bool)

(assert (=> b!4578385 (= e!2854960 (addToMapMapFromBucket!777 (_2!29040 (h!56858 (toList!4536 lt!1743161))) (extractMap!1320 (t!358043 (toList!4536 lt!1743161)))))))

(declare-fun b!4578386 () Bool)

(assert (=> b!4578386 (= e!2854960 (ListMap!3798 Nil!50928))))

(assert (= (and d!1433462 c!783635) b!4578385))

(assert (= (and d!1433462 (not c!783635)) b!4578386))

(declare-fun m!5387073 () Bool)

(assert (=> d!1433462 m!5387073))

(declare-fun m!5387075 () Bool)

(assert (=> d!1433462 m!5387075))

(declare-fun m!5387077 () Bool)

(assert (=> b!4578385 m!5387077))

(assert (=> b!4578385 m!5387077))

(declare-fun m!5387079 () Bool)

(assert (=> b!4578385 m!5387079))

(assert (=> b!4578108 d!1433462))

(declare-fun d!1433464 () Bool)

(declare-fun e!2854971 () Bool)

(assert (=> d!1433464 e!2854971))

(declare-fun res!1912488 () Bool)

(assert (=> d!1433464 (=> (not res!1912488) (not e!2854971))))

(declare-fun lt!1743535 () ListLongMap!3167)

(assert (=> d!1433464 (= res!1912488 (contains!13813 lt!1743535 (_1!29040 lt!1743160)))))

(declare-fun lt!1743538 () List!51053)

(assert (=> d!1433464 (= lt!1743535 (ListLongMap!3168 lt!1743538))))

(declare-fun lt!1743537 () Unit!105281)

(declare-fun lt!1743536 () Unit!105281)

(assert (=> d!1433464 (= lt!1743537 lt!1743536)))

(assert (=> d!1433464 (= (getValueByKey!1241 lt!1743538 (_1!29040 lt!1743160)) (Some!11308 (_2!29040 lt!1743160)))))

(declare-fun lemmaContainsTupThenGetReturnValue!772 (List!51053 (_ BitVec 64) List!51052) Unit!105281)

(assert (=> d!1433464 (= lt!1743536 (lemmaContainsTupThenGetReturnValue!772 lt!1743538 (_1!29040 lt!1743160) (_2!29040 lt!1743160)))))

(declare-fun insertStrictlySorted!472 (List!51053 (_ BitVec 64) List!51052) List!51053)

(assert (=> d!1433464 (= lt!1743538 (insertStrictlySorted!472 (toList!4536 lt!1743167) (_1!29040 lt!1743160) (_2!29040 lt!1743160)))))

(assert (=> d!1433464 (= (+!1694 lt!1743167 lt!1743160) lt!1743535)))

(declare-fun b!4578406 () Bool)

(declare-fun res!1912489 () Bool)

(assert (=> b!4578406 (=> (not res!1912489) (not e!2854971))))

(assert (=> b!4578406 (= res!1912489 (= (getValueByKey!1241 (toList!4536 lt!1743535) (_1!29040 lt!1743160)) (Some!11308 (_2!29040 lt!1743160))))))

(declare-fun b!4578407 () Bool)

(assert (=> b!4578407 (= e!2854971 (contains!13815 (toList!4536 lt!1743535) lt!1743160))))

(assert (= (and d!1433464 res!1912488) b!4578406))

(assert (= (and b!4578406 res!1912489) b!4578407))

(declare-fun m!5387103 () Bool)

(assert (=> d!1433464 m!5387103))

(declare-fun m!5387105 () Bool)

(assert (=> d!1433464 m!5387105))

(declare-fun m!5387107 () Bool)

(assert (=> d!1433464 m!5387107))

(declare-fun m!5387109 () Bool)

(assert (=> d!1433464 m!5387109))

(declare-fun m!5387111 () Bool)

(assert (=> b!4578406 m!5387111))

(declare-fun m!5387113 () Bool)

(assert (=> b!4578407 m!5387113))

(assert (=> b!4578108 d!1433464))

(declare-fun d!1433474 () Bool)

(declare-fun e!2854974 () Bool)

(assert (=> d!1433474 e!2854974))

(declare-fun res!1912492 () Bool)

(assert (=> d!1433474 (=> (not res!1912492) (not e!2854974))))

(declare-fun lt!1743540 () ListLongMap!3167)

(assert (=> d!1433474 (= res!1912492 (contains!13813 lt!1743540 (_1!29040 lt!1743155)))))

(declare-fun lt!1743543 () List!51053)

(assert (=> d!1433474 (= lt!1743540 (ListLongMap!3168 lt!1743543))))

(declare-fun lt!1743542 () Unit!105281)

(declare-fun lt!1743541 () Unit!105281)

(assert (=> d!1433474 (= lt!1743542 lt!1743541)))

(assert (=> d!1433474 (= (getValueByKey!1241 lt!1743543 (_1!29040 lt!1743155)) (Some!11308 (_2!29040 lt!1743155)))))

(assert (=> d!1433474 (= lt!1743541 (lemmaContainsTupThenGetReturnValue!772 lt!1743543 (_1!29040 lt!1743155) (_2!29040 lt!1743155)))))

(assert (=> d!1433474 (= lt!1743543 (insertStrictlySorted!472 (toList!4536 lt!1743167) (_1!29040 lt!1743155) (_2!29040 lt!1743155)))))

(assert (=> d!1433474 (= (+!1694 lt!1743167 lt!1743155) lt!1743540)))

(declare-fun b!4578410 () Bool)

(declare-fun res!1912493 () Bool)

(assert (=> b!4578410 (=> (not res!1912493) (not e!2854974))))

(assert (=> b!4578410 (= res!1912493 (= (getValueByKey!1241 (toList!4536 lt!1743540) (_1!29040 lt!1743155)) (Some!11308 (_2!29040 lt!1743155))))))

(declare-fun b!4578411 () Bool)

(assert (=> b!4578411 (= e!2854974 (contains!13815 (toList!4536 lt!1743540) lt!1743155))))

(assert (= (and d!1433474 res!1912492) b!4578410))

(assert (= (and b!4578410 res!1912493) b!4578411))

(declare-fun m!5387119 () Bool)

(assert (=> d!1433474 m!5387119))

(declare-fun m!5387121 () Bool)

(assert (=> d!1433474 m!5387121))

(declare-fun m!5387123 () Bool)

(assert (=> d!1433474 m!5387123))

(declare-fun m!5387125 () Bool)

(assert (=> d!1433474 m!5387125))

(declare-fun m!5387127 () Bool)

(assert (=> b!4578410 m!5387127))

(declare-fun m!5387129 () Bool)

(assert (=> b!4578411 m!5387129))

(assert (=> b!4578108 d!1433474))

(declare-fun d!1433478 () Bool)

(assert (=> d!1433478 (= (eq!703 lt!1743158 lt!1743163) (= (content!8569 (toList!4535 lt!1743158)) (content!8569 (toList!4535 lt!1743163))))))

(declare-fun bs!971168 () Bool)

(assert (= bs!971168 d!1433478))

(declare-fun m!5387131 () Bool)

(assert (=> bs!971168 m!5387131))

(declare-fun m!5387133 () Bool)

(assert (=> bs!971168 m!5387133))

(assert (=> b!4578108 d!1433478))

(declare-fun d!1433480 () Bool)

(declare-fun e!2854986 () Bool)

(assert (=> d!1433480 e!2854986))

(declare-fun res!1912499 () Bool)

(assert (=> d!1433480 (=> (not res!1912499) (not e!2854986))))

(declare-fun lt!1743549 () ListMap!3797)

(assert (=> d!1433480 (= res!1912499 (not (contains!13814 lt!1743549 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!205 (List!51052 K!12300) List!51052)

(assert (=> d!1433480 (= lt!1743549 (ListMap!3798 (removePresrvNoDuplicatedKeys!205 (toList!4535 lt!1743166) key!3287)))))

(assert (=> d!1433480 (= (-!472 lt!1743166 key!3287) lt!1743549)))

(declare-fun b!4578427 () Bool)

(declare-fun content!8570 (List!51055) (InoxSet K!12300))

(assert (=> b!4578427 (= e!2854986 (= ((_ map and) (content!8570 (keys!17786 lt!1743166)) ((_ map not) (store ((as const (Array K!12300 Bool)) false) key!3287 true))) (content!8570 (keys!17786 lt!1743549))))))

(assert (= (and d!1433480 res!1912499) b!4578427))

(declare-fun m!5387143 () Bool)

(assert (=> d!1433480 m!5387143))

(declare-fun m!5387145 () Bool)

(assert (=> d!1433480 m!5387145))

(assert (=> b!4578427 m!5386611))

(assert (=> b!4578427 m!5386611))

(declare-fun m!5387147 () Bool)

(assert (=> b!4578427 m!5387147))

(declare-fun m!5387149 () Bool)

(assert (=> b!4578427 m!5387149))

(declare-fun m!5387151 () Bool)

(assert (=> b!4578427 m!5387151))

(declare-fun m!5387153 () Bool)

(assert (=> b!4578427 m!5387153))

(assert (=> b!4578427 m!5387151))

(assert (=> b!4578108 d!1433480))

(declare-fun d!1433486 () Bool)

(assert (=> d!1433486 (= (eq!703 lt!1743174 lt!1743173) (= (content!8569 (toList!4535 lt!1743174)) (content!8569 (toList!4535 lt!1743173))))))

(declare-fun bs!971171 () Bool)

(assert (= bs!971171 d!1433486))

(declare-fun m!5387155 () Bool)

(assert (=> bs!971171 m!5387155))

(declare-fun m!5387157 () Bool)

(assert (=> bs!971171 m!5387157))

(assert (=> b!4578108 d!1433486))

(declare-fun bs!971172 () Bool)

(declare-fun d!1433488 () Bool)

(assert (= bs!971172 (and d!1433488 d!1433362)))

(declare-fun lambda!182669 () Int)

(assert (=> bs!971172 (= lambda!182669 lambda!182602)))

(declare-fun bs!971173 () Bool)

(assert (= bs!971173 (and d!1433488 d!1433350)))

(assert (=> bs!971173 (= lambda!182669 lambda!182559)))

(declare-fun bs!971174 () Bool)

(assert (= bs!971174 (and d!1433488 d!1433460)))

(assert (=> bs!971174 (= lambda!182669 lambda!182664)))

(declare-fun bs!971175 () Bool)

(assert (= bs!971175 (and d!1433488 start!455660)))

(assert (=> bs!971175 (= lambda!182669 lambda!182553)))

(declare-fun bs!971176 () Bool)

(assert (= bs!971176 (and d!1433488 d!1433358)))

(assert (=> bs!971176 (= lambda!182669 lambda!182595)))

(declare-fun bs!971177 () Bool)

(assert (= bs!971177 (and d!1433488 d!1433346)))

(assert (=> bs!971177 (= lambda!182669 lambda!182556)))

(declare-fun bs!971178 () Bool)

(assert (= bs!971178 (and d!1433488 d!1433462)))

(assert (=> bs!971178 (= lambda!182669 lambda!182665)))

(declare-fun bs!971179 () Bool)

(assert (= bs!971179 (and d!1433488 d!1433356)))

(assert (=> bs!971179 (= lambda!182669 lambda!182572)))

(declare-fun lt!1743550 () ListMap!3797)

(assert (=> d!1433488 (invariantList!1091 (toList!4535 lt!1743550))))

(declare-fun e!2854987 () ListMap!3797)

(assert (=> d!1433488 (= lt!1743550 e!2854987)))

(declare-fun c!783643 () Bool)

(assert (=> d!1433488 (= c!783643 ((_ is Cons!50929) (toList!4536 (+!1694 lt!1743167 lt!1743160))))))

(assert (=> d!1433488 (forall!10486 (toList!4536 (+!1694 lt!1743167 lt!1743160)) lambda!182669)))

(assert (=> d!1433488 (= (extractMap!1320 (toList!4536 (+!1694 lt!1743167 lt!1743160))) lt!1743550)))

(declare-fun b!4578428 () Bool)

(assert (=> b!4578428 (= e!2854987 (addToMapMapFromBucket!777 (_2!29040 (h!56858 (toList!4536 (+!1694 lt!1743167 lt!1743160)))) (extractMap!1320 (t!358043 (toList!4536 (+!1694 lt!1743167 lt!1743160))))))))

(declare-fun b!4578429 () Bool)

(assert (=> b!4578429 (= e!2854987 (ListMap!3798 Nil!50928))))

(assert (= (and d!1433488 c!783643) b!4578428))

(assert (= (and d!1433488 (not c!783643)) b!4578429))

(declare-fun m!5387159 () Bool)

(assert (=> d!1433488 m!5387159))

(declare-fun m!5387161 () Bool)

(assert (=> d!1433488 m!5387161))

(declare-fun m!5387163 () Bool)

(assert (=> b!4578428 m!5387163))

(assert (=> b!4578428 m!5387163))

(declare-fun m!5387165 () Bool)

(assert (=> b!4578428 m!5387165))

(assert (=> b!4578108 d!1433488))

(declare-fun d!1433490 () Bool)

(assert (=> d!1433490 (= (head!9524 lm!1477) (head!9526 (toList!4536 lm!1477)))))

(declare-fun bs!971180 () Bool)

(assert (= bs!971180 d!1433490))

(declare-fun m!5387167 () Bool)

(assert (=> bs!971180 m!5387167))

(assert (=> b!4578108 d!1433490))

(declare-fun bs!971181 () Bool)

(declare-fun d!1433492 () Bool)

(assert (= bs!971181 (and d!1433492 d!1433362)))

(declare-fun lambda!182672 () Int)

(assert (=> bs!971181 (= lambda!182672 lambda!182602)))

(declare-fun bs!971182 () Bool)

(assert (= bs!971182 (and d!1433492 d!1433350)))

(assert (=> bs!971182 (= lambda!182672 lambda!182559)))

(declare-fun bs!971183 () Bool)

(assert (= bs!971183 (and d!1433492 d!1433460)))

(assert (=> bs!971183 (= lambda!182672 lambda!182664)))

(declare-fun bs!971184 () Bool)

(assert (= bs!971184 (and d!1433492 start!455660)))

(assert (=> bs!971184 (= lambda!182672 lambda!182553)))

(declare-fun bs!971185 () Bool)

(assert (= bs!971185 (and d!1433492 d!1433346)))

(assert (=> bs!971185 (= lambda!182672 lambda!182556)))

(declare-fun bs!971186 () Bool)

(assert (= bs!971186 (and d!1433492 d!1433462)))

(assert (=> bs!971186 (= lambda!182672 lambda!182665)))

(declare-fun bs!971187 () Bool)

(assert (= bs!971187 (and d!1433492 d!1433356)))

(assert (=> bs!971187 (= lambda!182672 lambda!182572)))

(declare-fun bs!971188 () Bool)

(assert (= bs!971188 (and d!1433492 d!1433358)))

(assert (=> bs!971188 (= lambda!182672 lambda!182595)))

(declare-fun bs!971189 () Bool)

(assert (= bs!971189 (and d!1433492 d!1433488)))

(assert (=> bs!971189 (= lambda!182672 lambda!182669)))

(assert (=> d!1433492 (eq!703 (extractMap!1320 (toList!4536 (+!1694 lt!1743167 (tuple2!51493 hash!344 newBucket!178)))) (-!472 (extractMap!1320 (toList!4536 lt!1743167)) key!3287))))

(declare-fun lt!1743553 () Unit!105281)

(declare-fun choose!30469 (ListLongMap!3167 (_ BitVec 64) List!51052 K!12300 Hashable!5659) Unit!105281)

(assert (=> d!1433492 (= lt!1743553 (choose!30469 lt!1743167 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1433492 (forall!10486 (toList!4536 lt!1743167) lambda!182672)))

(assert (=> d!1433492 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!211 lt!1743167 hash!344 newBucket!178 key!3287 hashF!1107) lt!1743553)))

(declare-fun bs!971190 () Bool)

(assert (= bs!971190 d!1433492))

(declare-fun m!5387169 () Bool)

(assert (=> bs!971190 m!5387169))

(declare-fun m!5387171 () Bool)

(assert (=> bs!971190 m!5387171))

(declare-fun m!5387173 () Bool)

(assert (=> bs!971190 m!5387173))

(declare-fun m!5387175 () Bool)

(assert (=> bs!971190 m!5387175))

(declare-fun m!5387177 () Bool)

(assert (=> bs!971190 m!5387177))

(declare-fun m!5387179 () Bool)

(assert (=> bs!971190 m!5387179))

(assert (=> bs!971190 m!5386485))

(assert (=> bs!971190 m!5386485))

(assert (=> bs!971190 m!5387177))

(assert (=> bs!971190 m!5387175))

(assert (=> b!4578108 d!1433492))

(declare-fun d!1433494 () Bool)

(declare-fun res!1912506 () Bool)

(declare-fun e!2854996 () Bool)

(assert (=> d!1433494 (=> res!1912506 e!2854996)))

(declare-fun e!2854994 () Bool)

(assert (=> d!1433494 (= res!1912506 e!2854994)))

(declare-fun res!1912508 () Bool)

(assert (=> d!1433494 (=> (not res!1912508) (not e!2854994))))

(assert (=> d!1433494 (= res!1912508 ((_ is Cons!50929) (t!358043 (toList!4536 lm!1477))))))

(assert (=> d!1433494 (= (containsKeyBiggerList!234 (t!358043 (toList!4536 lm!1477)) key!3287) e!2854996)))

(declare-fun b!4578436 () Bool)

(assert (=> b!4578436 (= e!2854994 (containsKey!2034 (_2!29040 (h!56858 (t!358043 (toList!4536 lm!1477)))) key!3287))))

(declare-fun b!4578437 () Bool)

(declare-fun e!2854995 () Bool)

(assert (=> b!4578437 (= e!2854996 e!2854995)))

(declare-fun res!1912507 () Bool)

(assert (=> b!4578437 (=> (not res!1912507) (not e!2854995))))

(assert (=> b!4578437 (= res!1912507 ((_ is Cons!50929) (t!358043 (toList!4536 lm!1477))))))

(declare-fun b!4578438 () Bool)

(assert (=> b!4578438 (= e!2854995 (containsKeyBiggerList!234 (t!358043 (t!358043 (toList!4536 lm!1477))) key!3287))))

(assert (= (and d!1433494 res!1912508) b!4578436))

(assert (= (and d!1433494 (not res!1912506)) b!4578437))

(assert (= (and b!4578437 res!1912507) b!4578438))

(declare-fun m!5387181 () Bool)

(assert (=> b!4578436 m!5387181))

(declare-fun m!5387183 () Bool)

(assert (=> b!4578438 m!5387183))

(assert (=> b!4578118 d!1433494))

(declare-fun d!1433496 () Bool)

(declare-fun res!1912509 () Bool)

(declare-fun e!2854999 () Bool)

(assert (=> d!1433496 (=> res!1912509 e!2854999)))

(declare-fun e!2854997 () Bool)

(assert (=> d!1433496 (= res!1912509 e!2854997)))

(declare-fun res!1912511 () Bool)

(assert (=> d!1433496 (=> (not res!1912511) (not e!2854997))))

(assert (=> d!1433496 (= res!1912511 ((_ is Cons!50929) (toList!4536 lt!1743167)))))

(assert (=> d!1433496 (= (containsKeyBiggerList!234 (toList!4536 lt!1743167) key!3287) e!2854999)))

(declare-fun b!4578439 () Bool)

(assert (=> b!4578439 (= e!2854997 (containsKey!2034 (_2!29040 (h!56858 (toList!4536 lt!1743167))) key!3287))))

(declare-fun b!4578440 () Bool)

(declare-fun e!2854998 () Bool)

(assert (=> b!4578440 (= e!2854999 e!2854998)))

(declare-fun res!1912510 () Bool)

(assert (=> b!4578440 (=> (not res!1912510) (not e!2854998))))

(assert (=> b!4578440 (= res!1912510 ((_ is Cons!50929) (toList!4536 lt!1743167)))))

(declare-fun b!4578441 () Bool)

(assert (=> b!4578441 (= e!2854998 (containsKeyBiggerList!234 (t!358043 (toList!4536 lt!1743167)) key!3287))))

(assert (= (and d!1433496 res!1912511) b!4578439))

(assert (= (and d!1433496 (not res!1912509)) b!4578440))

(assert (= (and b!4578440 res!1912510) b!4578441))

(declare-fun m!5387185 () Bool)

(assert (=> b!4578439 m!5387185))

(declare-fun m!5387187 () Bool)

(assert (=> b!4578441 m!5387187))

(assert (=> b!4578118 d!1433496))

(declare-fun bs!971191 () Bool)

(declare-fun d!1433498 () Bool)

(assert (= bs!971191 (and d!1433498 d!1433362)))

(declare-fun lambda!182675 () Int)

(assert (=> bs!971191 (= lambda!182675 lambda!182602)))

(declare-fun bs!971192 () Bool)

(assert (= bs!971192 (and d!1433498 d!1433350)))

(assert (=> bs!971192 (= lambda!182675 lambda!182559)))

(declare-fun bs!971193 () Bool)

(assert (= bs!971193 (and d!1433498 d!1433460)))

(assert (=> bs!971193 (= lambda!182675 lambda!182664)))

(declare-fun bs!971194 () Bool)

(assert (= bs!971194 (and d!1433498 start!455660)))

(assert (=> bs!971194 (= lambda!182675 lambda!182553)))

(declare-fun bs!971195 () Bool)

(assert (= bs!971195 (and d!1433498 d!1433492)))

(assert (=> bs!971195 (= lambda!182675 lambda!182672)))

(declare-fun bs!971196 () Bool)

(assert (= bs!971196 (and d!1433498 d!1433346)))

(assert (=> bs!971196 (= lambda!182675 lambda!182556)))

(declare-fun bs!971197 () Bool)

(assert (= bs!971197 (and d!1433498 d!1433462)))

(assert (=> bs!971197 (= lambda!182675 lambda!182665)))

(declare-fun bs!971198 () Bool)

(assert (= bs!971198 (and d!1433498 d!1433356)))

(assert (=> bs!971198 (= lambda!182675 lambda!182572)))

(declare-fun bs!971199 () Bool)

(assert (= bs!971199 (and d!1433498 d!1433358)))

(assert (=> bs!971199 (= lambda!182675 lambda!182595)))

(declare-fun bs!971200 () Bool)

(assert (= bs!971200 (and d!1433498 d!1433488)))

(assert (=> bs!971200 (= lambda!182675 lambda!182669)))

(assert (=> d!1433498 (containsKeyBiggerList!234 (toList!4536 lt!1743167) key!3287)))

(declare-fun lt!1743556 () Unit!105281)

(declare-fun choose!30470 (ListLongMap!3167 K!12300 Hashable!5659) Unit!105281)

(assert (=> d!1433498 (= lt!1743556 (choose!30470 lt!1743167 key!3287 hashF!1107))))

(assert (=> d!1433498 (forall!10486 (toList!4536 lt!1743167) lambda!182675)))

(assert (=> d!1433498 (= (lemmaInLongMapThenContainsKeyBiggerList!146 lt!1743167 key!3287 hashF!1107) lt!1743556)))

(declare-fun bs!971201 () Bool)

(assert (= bs!971201 d!1433498))

(assert (=> bs!971201 m!5386461))

(declare-fun m!5387189 () Bool)

(assert (=> bs!971201 m!5387189))

(declare-fun m!5387191 () Bool)

(assert (=> bs!971201 m!5387191))

(assert (=> b!4578118 d!1433498))

(declare-fun d!1433500 () Bool)

(declare-fun res!1912516 () Bool)

(declare-fun e!2855004 () Bool)

(assert (=> d!1433500 (=> res!1912516 e!2855004)))

(assert (=> d!1433500 (= res!1912516 (and ((_ is Cons!50928) lt!1743157) (= (_1!29039 (h!56857 lt!1743157)) key!3287)))))

(assert (=> d!1433500 (= (containsKey!2034 lt!1743157 key!3287) e!2855004)))

(declare-fun b!4578446 () Bool)

(declare-fun e!2855005 () Bool)

(assert (=> b!4578446 (= e!2855004 e!2855005)))

(declare-fun res!1912517 () Bool)

(assert (=> b!4578446 (=> (not res!1912517) (not e!2855005))))

(assert (=> b!4578446 (= res!1912517 ((_ is Cons!50928) lt!1743157))))

(declare-fun b!4578447 () Bool)

(assert (=> b!4578447 (= e!2855005 (containsKey!2034 (t!358042 lt!1743157) key!3287))))

(assert (= (and d!1433500 (not res!1912516)) b!4578446))

(assert (= (and b!4578446 res!1912517) b!4578447))

(declare-fun m!5387193 () Bool)

(assert (=> b!4578447 m!5387193))

(assert (=> b!4578099 d!1433500))

(declare-fun d!1433502 () Bool)

(declare-fun e!2855006 () Bool)

(assert (=> d!1433502 e!2855006))

(declare-fun res!1912518 () Bool)

(assert (=> d!1433502 (=> (not res!1912518) (not e!2855006))))

(declare-fun lt!1743557 () ListLongMap!3167)

(assert (=> d!1433502 (= res!1912518 (contains!13813 lt!1743557 (_1!29040 lt!1743155)))))

(declare-fun lt!1743560 () List!51053)

(assert (=> d!1433502 (= lt!1743557 (ListLongMap!3168 lt!1743560))))

(declare-fun lt!1743559 () Unit!105281)

(declare-fun lt!1743558 () Unit!105281)

(assert (=> d!1433502 (= lt!1743559 lt!1743558)))

(assert (=> d!1433502 (= (getValueByKey!1241 lt!1743560 (_1!29040 lt!1743155)) (Some!11308 (_2!29040 lt!1743155)))))

(assert (=> d!1433502 (= lt!1743558 (lemmaContainsTupThenGetReturnValue!772 lt!1743560 (_1!29040 lt!1743155) (_2!29040 lt!1743155)))))

(assert (=> d!1433502 (= lt!1743560 (insertStrictlySorted!472 (toList!4536 lm!1477) (_1!29040 lt!1743155) (_2!29040 lt!1743155)))))

(assert (=> d!1433502 (= (+!1694 lm!1477 lt!1743155) lt!1743557)))

(declare-fun b!4578448 () Bool)

(declare-fun res!1912519 () Bool)

(assert (=> b!4578448 (=> (not res!1912519) (not e!2855006))))

(assert (=> b!4578448 (= res!1912519 (= (getValueByKey!1241 (toList!4536 lt!1743557) (_1!29040 lt!1743155)) (Some!11308 (_2!29040 lt!1743155))))))

(declare-fun b!4578449 () Bool)

(assert (=> b!4578449 (= e!2855006 (contains!13815 (toList!4536 lt!1743557) lt!1743155))))

(assert (= (and d!1433502 res!1912518) b!4578448))

(assert (= (and b!4578448 res!1912519) b!4578449))

(declare-fun m!5387195 () Bool)

(assert (=> d!1433502 m!5387195))

(declare-fun m!5387197 () Bool)

(assert (=> d!1433502 m!5387197))

(declare-fun m!5387199 () Bool)

(assert (=> d!1433502 m!5387199))

(declare-fun m!5387201 () Bool)

(assert (=> d!1433502 m!5387201))

(declare-fun m!5387203 () Bool)

(assert (=> b!4578448 m!5387203))

(declare-fun m!5387205 () Bool)

(assert (=> b!4578449 m!5387205))

(assert (=> b!4578120 d!1433502))

(declare-fun d!1433504 () Bool)

(declare-fun e!2855007 () Bool)

(assert (=> d!1433504 e!2855007))

(declare-fun res!1912520 () Bool)

(assert (=> d!1433504 (=> (not res!1912520) (not e!2855007))))

(declare-fun lt!1743561 () ListLongMap!3167)

(assert (=> d!1433504 (= res!1912520 (contains!13813 lt!1743561 (_1!29040 lt!1743160)))))

(declare-fun lt!1743564 () List!51053)

(assert (=> d!1433504 (= lt!1743561 (ListLongMap!3168 lt!1743564))))

(declare-fun lt!1743563 () Unit!105281)

(declare-fun lt!1743562 () Unit!105281)

(assert (=> d!1433504 (= lt!1743563 lt!1743562)))

(assert (=> d!1433504 (= (getValueByKey!1241 lt!1743564 (_1!29040 lt!1743160)) (Some!11308 (_2!29040 lt!1743160)))))

(assert (=> d!1433504 (= lt!1743562 (lemmaContainsTupThenGetReturnValue!772 lt!1743564 (_1!29040 lt!1743160) (_2!29040 lt!1743160)))))

(assert (=> d!1433504 (= lt!1743564 (insertStrictlySorted!472 (toList!4536 lt!1743161) (_1!29040 lt!1743160) (_2!29040 lt!1743160)))))

(assert (=> d!1433504 (= (+!1694 lt!1743161 lt!1743160) lt!1743561)))

(declare-fun b!4578450 () Bool)

(declare-fun res!1912521 () Bool)

(assert (=> b!4578450 (=> (not res!1912521) (not e!2855007))))

(assert (=> b!4578450 (= res!1912521 (= (getValueByKey!1241 (toList!4536 lt!1743561) (_1!29040 lt!1743160)) (Some!11308 (_2!29040 lt!1743160))))))

(declare-fun b!4578451 () Bool)

(assert (=> b!4578451 (= e!2855007 (contains!13815 (toList!4536 lt!1743561) lt!1743160))))

(assert (= (and d!1433504 res!1912520) b!4578450))

(assert (= (and b!4578450 res!1912521) b!4578451))

(declare-fun m!5387207 () Bool)

(assert (=> d!1433504 m!5387207))

(declare-fun m!5387209 () Bool)

(assert (=> d!1433504 m!5387209))

(declare-fun m!5387211 () Bool)

(assert (=> d!1433504 m!5387211))

(declare-fun m!5387213 () Bool)

(assert (=> d!1433504 m!5387213))

(declare-fun m!5387215 () Bool)

(assert (=> b!4578450 m!5387215))

(declare-fun m!5387217 () Bool)

(assert (=> b!4578451 m!5387217))

(assert (=> b!4578120 d!1433504))

(declare-fun d!1433506 () Bool)

(assert (=> d!1433506 (= (eq!703 lt!1743173 lt!1743174) (= (content!8569 (toList!4535 lt!1743173)) (content!8569 (toList!4535 lt!1743174))))))

(declare-fun bs!971202 () Bool)

(assert (= bs!971202 d!1433506))

(assert (=> bs!971202 m!5387157))

(assert (=> bs!971202 m!5387155))

(assert (=> b!4578098 d!1433506))

(declare-fun d!1433508 () Bool)

(declare-fun res!1912526 () Bool)

(declare-fun e!2855012 () Bool)

(assert (=> d!1433508 (=> res!1912526 e!2855012)))

(assert (=> d!1433508 (= res!1912526 (not ((_ is Cons!50928) newBucket!178)))))

(assert (=> d!1433508 (= (noDuplicateKeys!1264 newBucket!178) e!2855012)))

(declare-fun b!4578456 () Bool)

(declare-fun e!2855013 () Bool)

(assert (=> b!4578456 (= e!2855012 e!2855013)))

(declare-fun res!1912527 () Bool)

(assert (=> b!4578456 (=> (not res!1912527) (not e!2855013))))

(assert (=> b!4578456 (= res!1912527 (not (containsKey!2034 (t!358042 newBucket!178) (_1!29039 (h!56857 newBucket!178)))))))

(declare-fun b!4578457 () Bool)

(assert (=> b!4578457 (= e!2855013 (noDuplicateKeys!1264 (t!358042 newBucket!178)))))

(assert (= (and d!1433508 (not res!1912526)) b!4578456))

(assert (= (and b!4578456 res!1912527) b!4578457))

(declare-fun m!5387219 () Bool)

(assert (=> b!4578456 m!5387219))

(declare-fun m!5387221 () Bool)

(assert (=> b!4578457 m!5387221))

(assert (=> b!4578111 d!1433508))

(declare-fun d!1433510 () Bool)

(declare-fun res!1912532 () Bool)

(declare-fun e!2855018 () Bool)

(assert (=> d!1433510 (=> res!1912532 e!2855018)))

(assert (=> d!1433510 (= res!1912532 ((_ is Nil!50929) (toList!4536 lm!1477)))))

(assert (=> d!1433510 (= (forall!10486 (toList!4536 lm!1477) lambda!182553) e!2855018)))

(declare-fun b!4578462 () Bool)

(declare-fun e!2855019 () Bool)

(assert (=> b!4578462 (= e!2855018 e!2855019)))

(declare-fun res!1912533 () Bool)

(assert (=> b!4578462 (=> (not res!1912533) (not e!2855019))))

(assert (=> b!4578462 (= res!1912533 (dynLambda!21325 lambda!182553 (h!56858 (toList!4536 lm!1477))))))

(declare-fun b!4578463 () Bool)

(assert (=> b!4578463 (= e!2855019 (forall!10486 (t!358043 (toList!4536 lm!1477)) lambda!182553))))

(assert (= (and d!1433510 (not res!1912532)) b!4578462))

(assert (= (and b!4578462 res!1912533) b!4578463))

(declare-fun b_lambda!165921 () Bool)

(assert (=> (not b_lambda!165921) (not b!4578462)))

(declare-fun m!5387223 () Bool)

(assert (=> b!4578462 m!5387223))

(declare-fun m!5387225 () Bool)

(assert (=> b!4578463 m!5387225))

(assert (=> start!455660 d!1433510))

(declare-fun d!1433512 () Bool)

(assert (=> d!1433512 (= (inv!66484 lm!1477) (isStrictlySorted!505 (toList!4536 lm!1477)))))

(declare-fun bs!971203 () Bool)

(assert (= bs!971203 d!1433512))

(assert (=> bs!971203 m!5386593))

(assert (=> start!455660 d!1433512))

(declare-fun d!1433514 () Bool)

(declare-fun e!2855020 () Bool)

(assert (=> d!1433514 e!2855020))

(declare-fun res!1912534 () Bool)

(assert (=> d!1433514 (=> res!1912534 e!2855020)))

(declare-fun lt!1743565 () Bool)

(assert (=> d!1433514 (= res!1912534 (not lt!1743565))))

(declare-fun lt!1743568 () Bool)

(assert (=> d!1433514 (= lt!1743565 lt!1743568)))

(declare-fun lt!1743567 () Unit!105281)

(declare-fun e!2855021 () Unit!105281)

(assert (=> d!1433514 (= lt!1743567 e!2855021)))

(declare-fun c!783644 () Bool)

(assert (=> d!1433514 (= c!783644 lt!1743568)))

(assert (=> d!1433514 (= lt!1743568 (containsKey!2035 (toList!4536 lt!1743167) hash!344))))

(assert (=> d!1433514 (= (contains!13813 lt!1743167 hash!344) lt!1743565)))

(declare-fun b!4578464 () Bool)

(declare-fun lt!1743566 () Unit!105281)

(assert (=> b!4578464 (= e!2855021 lt!1743566)))

(assert (=> b!4578464 (= lt!1743566 (lemmaContainsKeyImpliesGetValueByKeyDefined!1144 (toList!4536 lt!1743167) hash!344))))

(assert (=> b!4578464 (isDefined!8580 (getValueByKey!1241 (toList!4536 lt!1743167) hash!344))))

(declare-fun b!4578465 () Bool)

(declare-fun Unit!105331 () Unit!105281)

(assert (=> b!4578465 (= e!2855021 Unit!105331)))

(declare-fun b!4578466 () Bool)

(assert (=> b!4578466 (= e!2855020 (isDefined!8580 (getValueByKey!1241 (toList!4536 lt!1743167) hash!344)))))

(assert (= (and d!1433514 c!783644) b!4578464))

(assert (= (and d!1433514 (not c!783644)) b!4578465))

(assert (= (and d!1433514 (not res!1912534)) b!4578466))

(declare-fun m!5387227 () Bool)

(assert (=> d!1433514 m!5387227))

(declare-fun m!5387229 () Bool)

(assert (=> b!4578464 m!5387229))

(assert (=> b!4578464 m!5386749))

(assert (=> b!4578464 m!5386749))

(declare-fun m!5387231 () Bool)

(assert (=> b!4578464 m!5387231))

(assert (=> b!4578466 m!5386749))

(assert (=> b!4578466 m!5386749))

(assert (=> b!4578466 m!5387231))

(assert (=> b!4578100 d!1433514))

(declare-fun d!1433516 () Bool)

(declare-fun tail!7904 (List!51053) List!51053)

(assert (=> d!1433516 (= (tail!7903 lm!1477) (ListLongMap!3168 (tail!7904 (toList!4536 lm!1477))))))

(declare-fun bs!971204 () Bool)

(assert (= bs!971204 d!1433516))

(declare-fun m!5387233 () Bool)

(assert (=> bs!971204 m!5387233))

(assert (=> b!4578100 d!1433516))

(declare-fun d!1433518 () Bool)

(assert (=> d!1433518 (= (eq!703 lt!1743170 lt!1743156) (= (content!8569 (toList!4535 lt!1743170)) (content!8569 (toList!4535 lt!1743156))))))

(declare-fun bs!971205 () Bool)

(assert (= bs!971205 d!1433518))

(assert (=> bs!971205 m!5386783))

(assert (=> bs!971205 m!5386787))

(assert (=> b!4578121 d!1433518))

(declare-fun bs!971206 () Bool)

(declare-fun b!4578470 () Bool)

(assert (= bs!971206 (and b!4578470 d!1433392)))

(declare-fun lambda!182676 () Int)

(assert (=> bs!971206 (= (= lt!1743158 lt!1743474) (= lambda!182676 lambda!182660))))

(declare-fun bs!971207 () Bool)

(assert (= bs!971207 (and b!4578470 b!4578341)))

(assert (=> bs!971207 (= (= lt!1743158 lt!1743163) (= lambda!182676 lambda!182658))))

(declare-fun bs!971208 () Bool)

(assert (= bs!971208 (and b!4578470 b!4578344)))

(assert (=> bs!971208 (= (= lt!1743158 lt!1743163) (= lambda!182676 lambda!182657))))

(declare-fun bs!971209 () Bool)

(assert (= bs!971209 (and b!4578470 d!1433380)))

(assert (=> bs!971209 (not (= lambda!182676 lambda!182605))))

(assert (=> bs!971207 (= (= lt!1743158 lt!1743478) (= lambda!182676 lambda!182659))))

(assert (=> b!4578470 true))

(declare-fun bs!971210 () Bool)

(declare-fun b!4578467 () Bool)

(assert (= bs!971210 (and b!4578467 d!1433392)))

(declare-fun lambda!182677 () Int)

(assert (=> bs!971210 (= (= lt!1743158 lt!1743474) (= lambda!182677 lambda!182660))))

(declare-fun bs!971211 () Bool)

(assert (= bs!971211 (and b!4578467 b!4578341)))

(assert (=> bs!971211 (= (= lt!1743158 lt!1743163) (= lambda!182677 lambda!182658))))

(declare-fun bs!971212 () Bool)

(assert (= bs!971212 (and b!4578467 b!4578344)))

(assert (=> bs!971212 (= (= lt!1743158 lt!1743163) (= lambda!182677 lambda!182657))))

(declare-fun bs!971213 () Bool)

(assert (= bs!971213 (and b!4578467 b!4578470)))

(assert (=> bs!971213 (= lambda!182677 lambda!182676)))

(declare-fun bs!971214 () Bool)

(assert (= bs!971214 (and b!4578467 d!1433380)))

(assert (=> bs!971214 (not (= lambda!182677 lambda!182605))))

(assert (=> bs!971211 (= (= lt!1743158 lt!1743478) (= lambda!182677 lambda!182659))))

(assert (=> b!4578467 true))

(declare-fun lt!1743579 () ListMap!3797)

(declare-fun lambda!182678 () Int)

(assert (=> bs!971210 (= (= lt!1743579 lt!1743474) (= lambda!182678 lambda!182660))))

(assert (=> b!4578467 (= (= lt!1743579 lt!1743158) (= lambda!182678 lambda!182677))))

(assert (=> bs!971211 (= (= lt!1743579 lt!1743163) (= lambda!182678 lambda!182658))))

(assert (=> bs!971212 (= (= lt!1743579 lt!1743163) (= lambda!182678 lambda!182657))))

(assert (=> bs!971213 (= (= lt!1743579 lt!1743158) (= lambda!182678 lambda!182676))))

(assert (=> bs!971214 (not (= lambda!182678 lambda!182605))))

(assert (=> bs!971211 (= (= lt!1743579 lt!1743478) (= lambda!182678 lambda!182659))))

(assert (=> b!4578467 true))

(declare-fun bs!971215 () Bool)

(declare-fun d!1433520 () Bool)

(assert (= bs!971215 (and d!1433520 d!1433392)))

(declare-fun lt!1743575 () ListMap!3797)

(declare-fun lambda!182679 () Int)

(assert (=> bs!971215 (= (= lt!1743575 lt!1743474) (= lambda!182679 lambda!182660))))

(declare-fun bs!971216 () Bool)

(assert (= bs!971216 (and d!1433520 b!4578467)))

(assert (=> bs!971216 (= (= lt!1743575 lt!1743158) (= lambda!182679 lambda!182677))))

(declare-fun bs!971217 () Bool)

(assert (= bs!971217 (and d!1433520 b!4578341)))

(assert (=> bs!971217 (= (= lt!1743575 lt!1743163) (= lambda!182679 lambda!182658))))

(declare-fun bs!971218 () Bool)

(assert (= bs!971218 (and d!1433520 b!4578344)))

(assert (=> bs!971218 (= (= lt!1743575 lt!1743163) (= lambda!182679 lambda!182657))))

(declare-fun bs!971219 () Bool)

(assert (= bs!971219 (and d!1433520 b!4578470)))

(assert (=> bs!971219 (= (= lt!1743575 lt!1743158) (= lambda!182679 lambda!182676))))

(assert (=> bs!971216 (= (= lt!1743575 lt!1743579) (= lambda!182679 lambda!182678))))

(declare-fun bs!971220 () Bool)

(assert (= bs!971220 (and d!1433520 d!1433380)))

(assert (=> bs!971220 (not (= lambda!182679 lambda!182605))))

(assert (=> bs!971217 (= (= lt!1743575 lt!1743478) (= lambda!182679 lambda!182659))))

(assert (=> d!1433520 true))

(declare-fun e!2855022 () ListMap!3797)

(assert (=> b!4578467 (= e!2855022 lt!1743579)))

(declare-fun lt!1743571 () ListMap!3797)

(assert (=> b!4578467 (= lt!1743571 (+!1696 lt!1743158 (h!56857 (_2!29040 lt!1743160))))))

(assert (=> b!4578467 (= lt!1743579 (addToMapMapFromBucket!777 (t!358042 (_2!29040 lt!1743160)) (+!1696 lt!1743158 (h!56857 (_2!29040 lt!1743160)))))))

(declare-fun lt!1743576 () Unit!105281)

(declare-fun call!319607 () Unit!105281)

(assert (=> b!4578467 (= lt!1743576 call!319607)))

(assert (=> b!4578467 (forall!10488 (toList!4535 lt!1743158) lambda!182677)))

(declare-fun lt!1743570 () Unit!105281)

(assert (=> b!4578467 (= lt!1743570 lt!1743576)))

(declare-fun call!319606 () Bool)

(assert (=> b!4578467 call!319606))

(declare-fun lt!1743577 () Unit!105281)

(declare-fun Unit!105333 () Unit!105281)

(assert (=> b!4578467 (= lt!1743577 Unit!105333)))

(assert (=> b!4578467 (forall!10488 (t!358042 (_2!29040 lt!1743160)) lambda!182678)))

(declare-fun lt!1743578 () Unit!105281)

(declare-fun Unit!105334 () Unit!105281)

(assert (=> b!4578467 (= lt!1743578 Unit!105334)))

(declare-fun lt!1743573 () Unit!105281)

(declare-fun Unit!105335 () Unit!105281)

(assert (=> b!4578467 (= lt!1743573 Unit!105335)))

(declare-fun lt!1743583 () Unit!105281)

(assert (=> b!4578467 (= lt!1743583 (forallContained!2749 (toList!4535 lt!1743571) lambda!182678 (h!56857 (_2!29040 lt!1743160))))))

(assert (=> b!4578467 (contains!13814 lt!1743571 (_1!29039 (h!56857 (_2!29040 lt!1743160))))))

(declare-fun lt!1743586 () Unit!105281)

(declare-fun Unit!105336 () Unit!105281)

(assert (=> b!4578467 (= lt!1743586 Unit!105336)))

(assert (=> b!4578467 (contains!13814 lt!1743579 (_1!29039 (h!56857 (_2!29040 lt!1743160))))))

(declare-fun lt!1743584 () Unit!105281)

(declare-fun Unit!105337 () Unit!105281)

(assert (=> b!4578467 (= lt!1743584 Unit!105337)))

(assert (=> b!4578467 (forall!10488 (_2!29040 lt!1743160) lambda!182678)))

(declare-fun lt!1743574 () Unit!105281)

(declare-fun Unit!105338 () Unit!105281)

(assert (=> b!4578467 (= lt!1743574 Unit!105338)))

(assert (=> b!4578467 (forall!10488 (toList!4535 lt!1743571) lambda!182678)))

(declare-fun lt!1743581 () Unit!105281)

(declare-fun Unit!105339 () Unit!105281)

(assert (=> b!4578467 (= lt!1743581 Unit!105339)))

(declare-fun lt!1743588 () Unit!105281)

(declare-fun Unit!105340 () Unit!105281)

(assert (=> b!4578467 (= lt!1743588 Unit!105340)))

(declare-fun lt!1743580 () Unit!105281)

(assert (=> b!4578467 (= lt!1743580 (addForallContainsKeyThenBeforeAdding!408 lt!1743158 lt!1743579 (_1!29039 (h!56857 (_2!29040 lt!1743160))) (_2!29039 (h!56857 (_2!29040 lt!1743160)))))))

(assert (=> b!4578467 (forall!10488 (toList!4535 lt!1743158) lambda!182678)))

(declare-fun lt!1743582 () Unit!105281)

(assert (=> b!4578467 (= lt!1743582 lt!1743580)))

(declare-fun call!319608 () Bool)

(assert (=> b!4578467 call!319608))

(declare-fun lt!1743585 () Unit!105281)

(declare-fun Unit!105341 () Unit!105281)

(assert (=> b!4578467 (= lt!1743585 Unit!105341)))

(declare-fun res!1912535 () Bool)

(assert (=> b!4578467 (= res!1912535 (forall!10488 (_2!29040 lt!1743160) lambda!182678))))

(declare-fun e!2855024 () Bool)

(assert (=> b!4578467 (=> (not res!1912535) (not e!2855024))))

(assert (=> b!4578467 e!2855024))

(declare-fun lt!1743589 () Unit!105281)

(declare-fun Unit!105342 () Unit!105281)

(assert (=> b!4578467 (= lt!1743589 Unit!105342)))

(declare-fun c!783645 () Bool)

(declare-fun bm!319601 () Bool)

(assert (=> bm!319601 (= call!319606 (forall!10488 (ite c!783645 (toList!4535 lt!1743158) (toList!4535 lt!1743571)) (ite c!783645 lambda!182676 lambda!182678)))))

(declare-fun e!2855023 () Bool)

(assert (=> d!1433520 e!2855023))

(declare-fun res!1912537 () Bool)

(assert (=> d!1433520 (=> (not res!1912537) (not e!2855023))))

(assert (=> d!1433520 (= res!1912537 (forall!10488 (_2!29040 lt!1743160) lambda!182679))))

(assert (=> d!1433520 (= lt!1743575 e!2855022)))

(assert (=> d!1433520 (= c!783645 ((_ is Nil!50928) (_2!29040 lt!1743160)))))

(assert (=> d!1433520 (noDuplicateKeys!1264 (_2!29040 lt!1743160))))

(assert (=> d!1433520 (= (addToMapMapFromBucket!777 (_2!29040 lt!1743160) lt!1743158) lt!1743575)))

(declare-fun b!4578468 () Bool)

(assert (=> b!4578468 (= e!2855024 (forall!10488 (toList!4535 lt!1743158) lambda!182678))))

(declare-fun b!4578469 () Bool)

(assert (=> b!4578469 (= e!2855023 (invariantList!1091 (toList!4535 lt!1743575)))))

(assert (=> b!4578470 (= e!2855022 lt!1743158)))

(declare-fun lt!1743569 () Unit!105281)

(assert (=> b!4578470 (= lt!1743569 call!319607)))

(assert (=> b!4578470 call!319608))

(declare-fun lt!1743572 () Unit!105281)

(assert (=> b!4578470 (= lt!1743572 lt!1743569)))

(assert (=> b!4578470 call!319606))

(declare-fun lt!1743587 () Unit!105281)

(declare-fun Unit!105343 () Unit!105281)

(assert (=> b!4578470 (= lt!1743587 Unit!105343)))

(declare-fun bm!319602 () Bool)

(assert (=> bm!319602 (= call!319607 (lemmaContainsAllItsOwnKeys!408 lt!1743158))))

(declare-fun bm!319603 () Bool)

(assert (=> bm!319603 (= call!319608 (forall!10488 (toList!4535 lt!1743158) (ite c!783645 lambda!182676 lambda!182678)))))

(declare-fun b!4578471 () Bool)

(declare-fun res!1912536 () Bool)

(assert (=> b!4578471 (=> (not res!1912536) (not e!2855023))))

(assert (=> b!4578471 (= res!1912536 (forall!10488 (toList!4535 lt!1743158) lambda!182679))))

(assert (= (and d!1433520 c!783645) b!4578470))

(assert (= (and d!1433520 (not c!783645)) b!4578467))

(assert (= (and b!4578467 res!1912535) b!4578468))

(assert (= (or b!4578470 b!4578467) bm!319601))

(assert (= (or b!4578470 b!4578467) bm!319603))

(assert (= (or b!4578470 b!4578467) bm!319602))

(assert (= (and d!1433520 res!1912537) b!4578471))

(assert (= (and b!4578471 res!1912536) b!4578469))

(declare-fun m!5387235 () Bool)

(assert (=> d!1433520 m!5387235))

(assert (=> d!1433520 m!5386975))

(declare-fun m!5387237 () Bool)

(assert (=> bm!319601 m!5387237))

(declare-fun m!5387239 () Bool)

(assert (=> b!4578469 m!5387239))

(declare-fun m!5387241 () Bool)

(assert (=> bm!319602 m!5387241))

(declare-fun m!5387243 () Bool)

(assert (=> b!4578468 m!5387243))

(declare-fun m!5387245 () Bool)

(assert (=> b!4578467 m!5387245))

(declare-fun m!5387247 () Bool)

(assert (=> b!4578467 m!5387247))

(declare-fun m!5387249 () Bool)

(assert (=> b!4578467 m!5387249))

(declare-fun m!5387251 () Bool)

(assert (=> b!4578467 m!5387251))

(assert (=> b!4578467 m!5387243))

(declare-fun m!5387253 () Bool)

(assert (=> b!4578467 m!5387253))

(declare-fun m!5387255 () Bool)

(assert (=> b!4578467 m!5387255))

(assert (=> b!4578467 m!5387251))

(declare-fun m!5387257 () Bool)

(assert (=> b!4578467 m!5387257))

(declare-fun m!5387259 () Bool)

(assert (=> b!4578467 m!5387259))

(assert (=> b!4578467 m!5387253))

(declare-fun m!5387261 () Bool)

(assert (=> b!4578467 m!5387261))

(declare-fun m!5387263 () Bool)

(assert (=> b!4578467 m!5387263))

(declare-fun m!5387265 () Bool)

(assert (=> bm!319603 m!5387265))

(declare-fun m!5387267 () Bool)

(assert (=> b!4578471 m!5387267))

(assert (=> b!4578121 d!1433520))

(declare-fun bs!971221 () Bool)

(declare-fun d!1433522 () Bool)

(assert (= bs!971221 (and d!1433522 d!1433362)))

(declare-fun lambda!182680 () Int)

(assert (=> bs!971221 (= lambda!182680 lambda!182602)))

(declare-fun bs!971222 () Bool)

(assert (= bs!971222 (and d!1433522 d!1433350)))

(assert (=> bs!971222 (= lambda!182680 lambda!182559)))

(declare-fun bs!971223 () Bool)

(assert (= bs!971223 (and d!1433522 d!1433460)))

(assert (=> bs!971223 (= lambda!182680 lambda!182664)))

(declare-fun bs!971224 () Bool)

(assert (= bs!971224 (and d!1433522 start!455660)))

(assert (=> bs!971224 (= lambda!182680 lambda!182553)))

(declare-fun bs!971225 () Bool)

(assert (= bs!971225 (and d!1433522 d!1433492)))

(assert (=> bs!971225 (= lambda!182680 lambda!182672)))

(declare-fun bs!971226 () Bool)

(assert (= bs!971226 (and d!1433522 d!1433346)))

(assert (=> bs!971226 (= lambda!182680 lambda!182556)))

(declare-fun bs!971227 () Bool)

(assert (= bs!971227 (and d!1433522 d!1433498)))

(assert (=> bs!971227 (= lambda!182680 lambda!182675)))

(declare-fun bs!971228 () Bool)

(assert (= bs!971228 (and d!1433522 d!1433462)))

(assert (=> bs!971228 (= lambda!182680 lambda!182665)))

(declare-fun bs!971229 () Bool)

(assert (= bs!971229 (and d!1433522 d!1433356)))

(assert (=> bs!971229 (= lambda!182680 lambda!182572)))

(declare-fun bs!971230 () Bool)

(assert (= bs!971230 (and d!1433522 d!1433358)))

(assert (=> bs!971230 (= lambda!182680 lambda!182595)))

(declare-fun bs!971231 () Bool)

(assert (= bs!971231 (and d!1433522 d!1433488)))

(assert (=> bs!971231 (= lambda!182680 lambda!182669)))

(declare-fun lt!1743590 () ListMap!3797)

(assert (=> d!1433522 (invariantList!1091 (toList!4535 lt!1743590))))

(declare-fun e!2855025 () ListMap!3797)

(assert (=> d!1433522 (= lt!1743590 e!2855025)))

(declare-fun c!783646 () Bool)

(assert (=> d!1433522 (= c!783646 ((_ is Cons!50929) (toList!4536 lt!1743177)))))

(assert (=> d!1433522 (forall!10486 (toList!4536 lt!1743177) lambda!182680)))

(assert (=> d!1433522 (= (extractMap!1320 (toList!4536 lt!1743177)) lt!1743590)))

(declare-fun b!4578472 () Bool)

(assert (=> b!4578472 (= e!2855025 (addToMapMapFromBucket!777 (_2!29040 (h!56858 (toList!4536 lt!1743177))) (extractMap!1320 (t!358043 (toList!4536 lt!1743177)))))))

(declare-fun b!4578473 () Bool)

(assert (=> b!4578473 (= e!2855025 (ListMap!3798 Nil!50928))))

(assert (= (and d!1433522 c!783646) b!4578472))

(assert (= (and d!1433522 (not c!783646)) b!4578473))

(declare-fun m!5387269 () Bool)

(assert (=> d!1433522 m!5387269))

(declare-fun m!5387271 () Bool)

(assert (=> d!1433522 m!5387271))

(declare-fun m!5387273 () Bool)

(assert (=> b!4578472 m!5387273))

(assert (=> b!4578472 m!5387273))

(declare-fun m!5387275 () Bool)

(assert (=> b!4578472 m!5387275))

(assert (=> b!4578121 d!1433522))

(declare-fun d!1433524 () Bool)

(declare-fun hash!3103 (Hashable!5659 K!12300) (_ BitVec 64))

(assert (=> d!1433524 (= (hash!3099 hashF!1107 key!3287) (hash!3103 hashF!1107 key!3287))))

(declare-fun bs!971232 () Bool)

(assert (= bs!971232 d!1433524))

(declare-fun m!5387277 () Bool)

(assert (=> bs!971232 m!5387277))

(assert (=> b!4578110 d!1433524))

(declare-fun bs!971233 () Bool)

(declare-fun d!1433526 () Bool)

(assert (= bs!971233 (and d!1433526 d!1433522)))

(declare-fun lambda!182683 () Int)

(assert (=> bs!971233 (not (= lambda!182683 lambda!182680))))

(declare-fun bs!971234 () Bool)

(assert (= bs!971234 (and d!1433526 d!1433362)))

(assert (=> bs!971234 (not (= lambda!182683 lambda!182602))))

(declare-fun bs!971235 () Bool)

(assert (= bs!971235 (and d!1433526 d!1433350)))

(assert (=> bs!971235 (not (= lambda!182683 lambda!182559))))

(declare-fun bs!971236 () Bool)

(assert (= bs!971236 (and d!1433526 d!1433460)))

(assert (=> bs!971236 (not (= lambda!182683 lambda!182664))))

(declare-fun bs!971237 () Bool)

(assert (= bs!971237 (and d!1433526 start!455660)))

(assert (=> bs!971237 (not (= lambda!182683 lambda!182553))))

(declare-fun bs!971238 () Bool)

(assert (= bs!971238 (and d!1433526 d!1433492)))

(assert (=> bs!971238 (not (= lambda!182683 lambda!182672))))

(declare-fun bs!971239 () Bool)

(assert (= bs!971239 (and d!1433526 d!1433346)))

(assert (=> bs!971239 (not (= lambda!182683 lambda!182556))))

(declare-fun bs!971240 () Bool)

(assert (= bs!971240 (and d!1433526 d!1433498)))

(assert (=> bs!971240 (not (= lambda!182683 lambda!182675))))

(declare-fun bs!971241 () Bool)

(assert (= bs!971241 (and d!1433526 d!1433462)))

(assert (=> bs!971241 (not (= lambda!182683 lambda!182665))))

(declare-fun bs!971242 () Bool)

(assert (= bs!971242 (and d!1433526 d!1433356)))

(assert (=> bs!971242 (not (= lambda!182683 lambda!182572))))

(declare-fun bs!971243 () Bool)

(assert (= bs!971243 (and d!1433526 d!1433358)))

(assert (=> bs!971243 (not (= lambda!182683 lambda!182595))))

(declare-fun bs!971244 () Bool)

(assert (= bs!971244 (and d!1433526 d!1433488)))

(assert (=> bs!971244 (not (= lambda!182683 lambda!182669))))

(assert (=> d!1433526 true))

(assert (=> d!1433526 (= (allKeysSameHashInMap!1371 lm!1477 hashF!1107) (forall!10486 (toList!4536 lm!1477) lambda!182683))))

(declare-fun bs!971245 () Bool)

(assert (= bs!971245 d!1433526))

(declare-fun m!5387279 () Bool)

(assert (=> bs!971245 m!5387279))

(assert (=> b!4578112 d!1433526))

(declare-fun e!2855028 () Bool)

(declare-fun b!4578480 () Bool)

(declare-fun tp!1339647 () Bool)

(assert (=> b!4578480 (= e!2855028 (and tp_is_empty!28333 tp_is_empty!28335 tp!1339647))))

(assert (=> b!4578109 (= tp!1339635 e!2855028)))

(assert (= (and b!4578109 ((_ is Cons!50928) (t!358042 newBucket!178))) b!4578480))

(declare-fun b!4578485 () Bool)

(declare-fun e!2855031 () Bool)

(declare-fun tp!1339652 () Bool)

(declare-fun tp!1339653 () Bool)

(assert (=> b!4578485 (= e!2855031 (and tp!1339652 tp!1339653))))

(assert (=> b!4578101 (= tp!1339634 e!2855031)))

(assert (= (and b!4578101 ((_ is Cons!50929) (toList!4536 lm!1477))) b!4578485))

(declare-fun b_lambda!165923 () Bool)

(assert (= b_lambda!165921 (or start!455660 b_lambda!165923)))

(declare-fun bs!971246 () Bool)

(declare-fun d!1433528 () Bool)

(assert (= bs!971246 (and d!1433528 start!455660)))

(assert (=> bs!971246 (= (dynLambda!21325 lambda!182553 (h!56858 (toList!4536 lm!1477))) (noDuplicateKeys!1264 (_2!29040 (h!56858 (toList!4536 lm!1477)))))))

(declare-fun m!5387281 () Bool)

(assert (=> bs!971246 m!5387281))

(assert (=> b!4578462 d!1433528))

(declare-fun b_lambda!165925 () Bool)

(assert (= b_lambda!165911 (or start!455660 b_lambda!165925)))

(declare-fun bs!971247 () Bool)

(declare-fun d!1433530 () Bool)

(assert (= bs!971247 (and d!1433530 start!455660)))

(assert (=> bs!971247 (= (dynLambda!21325 lambda!182553 lt!1743159) (noDuplicateKeys!1264 (_2!29040 lt!1743159)))))

(declare-fun m!5387283 () Bool)

(assert (=> bs!971247 m!5387283))

(assert (=> d!1433334 d!1433530))

(check-sat (not b!4578239) (not b!4578191) (not b!4578199) (not d!1433520) (not d!1433348) (not b!4578451) (not d!1433464) (not b!4578197) (not bm!319599) (not b!4578194) (not bm!319598) (not b!4578468) (not d!1433516) (not d!1433474) (not d!1433328) (not d!1433336) (not d!1433386) (not b!4578438) (not d!1433352) (not b!4578380) (not b!4578485) (not b!4578196) (not b!4578160) (not d!1433490) (not d!1433334) (not d!1433492) (not b_lambda!165923) (not b!4578381) (not b!4578383) (not b!4578379) (not bm!319597) (not d!1433504) (not b!4578436) (not b!4578139) (not d!1433502) (not d!1433514) (not d!1433522) (not b!4578345) (not b!4578411) (not b!4578463) tp_is_empty!28335 (not bm!319572) (not d!1433362) (not d!1433486) (not d!1433390) (not b!4578449) (not d!1433498) (not d!1433330) (not b!4578469) (not d!1433488) (not bm!319602) (not b!4578207) (not d!1433518) (not b!4578410) (not b!4578193) (not b!4578428) (not b!4578464) (not b!4578439) (not b_lambda!165925) (not b!4578343) (not b!4578378) (not bm!319600) (not b!4578448) (not b!4578130) (not b!4578203) (not b!4578456) (not b!4578200) tp_is_empty!28333 (not b!4578466) (not d!1433462) (not b!4578341) (not d!1433356) (not d!1433358) (not b!4578374) (not b!4578136) (not d!1433506) (not b!4578202) (not b!4578205) (not b!4578407) (not b!4578467) (not b!4578195) (not d!1433456) (not d!1433480) (not d!1433354) (not b!4578480) (not b!4578406) (not d!1433524) (not b!4578342) (not d!1433346) (not d!1433350) (not b!4578441) (not bm!319603) (not d!1433478) (not d!1433380) (not b!4578206) (not b!4578471) (not b!4578204) (not bs!971247) (not d!1433392) (not bm!319601) (not bs!971246) (not d!1433444) (not b!4578128) (not b!4578472) (not b!4578447) (not b!4578450) (not b!4578457) (not d!1433460) (not b!4578377) (not b!4578427) (not d!1433378) (not d!1433374) (not b!4578165) (not d!1433376) (not bm!319573) (not b!4578385) (not d!1433512) (not d!1433332) (not b!4578375) (not d!1433526) (not b!4578190) (not b!4578156))
(check-sat)
