; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!440644 () Bool)

(assert start!440644)

(declare-fun b!4480317 () Bool)

(declare-fun res!1860037 () Bool)

(declare-fun e!2790387 () Bool)

(assert (=> b!4480317 (=> (not res!1860037) (not e!2790387))))

(declare-datatypes ((Hashable!5449 0))(
  ( (HashableExt!5448 (__x!31152 Int)) )
))
(declare-fun hashF!1107 () Hashable!5449)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((K!11775 0))(
  ( (K!11776 (val!17691 Int)) )
))
(declare-datatypes ((V!12021 0))(
  ( (V!12022 (val!17692 Int)) )
))
(declare-datatypes ((tuple2!50650 0))(
  ( (tuple2!50651 (_1!28619 K!11775) (_2!28619 V!12021)) )
))
(declare-datatypes ((List!50488 0))(
  ( (Nil!50364) (Cons!50364 (h!56147 tuple2!50650) (t!357442 List!50488)) )
))
(declare-fun newBucket!178 () List!50488)

(declare-fun allKeysSameHash!908 (List!50488 (_ BitVec 64) Hashable!5449) Bool)

(assert (=> b!4480317 (= res!1860037 (allKeysSameHash!908 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4480318 () Bool)

(declare-fun e!2790384 () Bool)

(declare-fun e!2790394 () Bool)

(assert (=> b!4480318 (= e!2790384 e!2790394)))

(declare-fun res!1860032 () Bool)

(assert (=> b!4480318 (=> res!1860032 e!2790394)))

(declare-fun lt!1666968 () Bool)

(assert (=> b!4480318 (= res!1860032 lt!1666968)))

(declare-datatypes ((Unit!89629 0))(
  ( (Unit!89630) )
))
(declare-fun lt!1666978 () Unit!89629)

(declare-fun e!2790388 () Unit!89629)

(assert (=> b!4480318 (= lt!1666978 e!2790388)))

(declare-fun c!763191 () Bool)

(assert (=> b!4480318 (= c!763191 lt!1666968)))

(declare-datatypes ((ListMap!3377 0))(
  ( (ListMap!3378 (toList!4115 List!50488)) )
))
(declare-fun lt!1666982 () ListMap!3377)

(declare-fun key!3287 () K!11775)

(declare-fun contains!12951 (ListMap!3377 K!11775) Bool)

(assert (=> b!4480318 (= lt!1666968 (contains!12951 lt!1666982 key!3287))))

(declare-fun b!4480319 () Bool)

(declare-fun e!2790385 () Bool)

(declare-datatypes ((tuple2!50652 0))(
  ( (tuple2!50653 (_1!28620 (_ BitVec 64)) (_2!28620 List!50488)) )
))
(declare-datatypes ((List!50489 0))(
  ( (Nil!50365) (Cons!50365 (h!56148 tuple2!50652) (t!357443 List!50489)) )
))
(declare-datatypes ((ListLongMap!2747 0))(
  ( (ListLongMap!2748 (toList!4116 List!50489)) )
))
(declare-fun lt!1666963 () ListLongMap!2747)

(declare-fun lambda!165181 () Int)

(declare-fun forall!10046 (List!50489 Int) Bool)

(assert (=> b!4480319 (= e!2790385 (forall!10046 (toList!4116 lt!1666963) lambda!165181))))

(declare-fun b!4480320 () Bool)

(declare-fun e!2790390 () Bool)

(assert (=> b!4480320 (= e!2790394 e!2790390)))

(declare-fun res!1860042 () Bool)

(assert (=> b!4480320 (=> res!1860042 e!2790390)))

(declare-fun lt!1666973 () ListLongMap!2747)

(declare-fun lm!1477 () ListLongMap!2747)

(declare-fun lt!1666981 () tuple2!50652)

(assert (=> b!4480320 (= res!1860042 (not (= (toList!4116 lt!1666973) (Cons!50365 lt!1666981 (t!357443 (toList!4116 lm!1477))))))))

(declare-fun lt!1666974 () tuple2!50652)

(declare-fun lt!1666967 () List!50489)

(declare-fun eq!547 (ListMap!3377 ListMap!3377) Bool)

(declare-fun extractMap!1110 (List!50489) ListMap!3377)

(declare-fun -!316 (ListMap!3377 K!11775) ListMap!3377)

(assert (=> b!4480320 (eq!547 (extractMap!1110 (Cons!50365 lt!1666981 lt!1666967)) (-!316 (extractMap!1110 (Cons!50365 lt!1666974 lt!1666967)) key!3287))))

(declare-fun tail!7560 (List!50489) List!50489)

(assert (=> b!4480320 (= lt!1666967 (tail!7560 (toList!4116 lm!1477)))))

(declare-fun lt!1666976 () Unit!89629)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!14 (ListLongMap!2747 (_ BitVec 64) List!50488 List!50488 K!11775 Hashable!5449) Unit!89629)

(assert (=> b!4480320 (= lt!1666976 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!14 lm!1477 hash!344 (_2!28620 (h!56148 (toList!4116 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4480321 () Bool)

(declare-fun res!1860034 () Bool)

(assert (=> b!4480321 (=> res!1860034 e!2790390)))

(declare-fun lt!1666980 () ListMap!3377)

(declare-fun addToMapMapFromBucket!609 (List!50488 ListMap!3377) ListMap!3377)

(assert (=> b!4480321 (= res!1860034 (not (eq!547 (extractMap!1110 (toList!4116 lt!1666973)) (addToMapMapFromBucket!609 newBucket!178 lt!1666980))))))

(declare-fun b!4480322 () Bool)

(declare-fun e!2790391 () Bool)

(declare-fun e!2790380 () Bool)

(assert (=> b!4480322 (= e!2790391 e!2790380)))

(declare-fun res!1860025 () Bool)

(assert (=> b!4480322 (=> res!1860025 e!2790380)))

(assert (=> b!4480322 (= res!1860025 (not (= (t!357443 (toList!4116 lm!1477)) (tail!7560 (toList!4116 lt!1666973)))))))

(declare-fun +!1408 (ListLongMap!2747 tuple2!50652) ListLongMap!2747)

(assert (=> b!4480322 (= lt!1666973 (+!1408 lm!1477 lt!1666981))))

(assert (=> b!4480322 (eq!547 (extractMap!1110 (Cons!50365 lt!1666981 Nil!50365)) (-!316 (extractMap!1110 (Cons!50365 lt!1666974 Nil!50365)) key!3287))))

(assert (=> b!4480322 (= lt!1666974 (tuple2!50653 hash!344 (_2!28620 (h!56148 (toList!4116 lm!1477)))))))

(assert (=> b!4480322 (= lt!1666981 (tuple2!50653 hash!344 newBucket!178))))

(declare-fun lt!1666969 () Unit!89629)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!46 ((_ BitVec 64) List!50488 List!50488 K!11775 Hashable!5449) Unit!89629)

(assert (=> b!4480322 (= lt!1666969 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!46 hash!344 (_2!28620 (h!56148 (toList!4116 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1666983 () List!50489)

(assert (=> b!4480322 (contains!12951 (extractMap!1110 lt!1666983) key!3287)))

(declare-fun lt!1666975 () Unit!89629)

(declare-fun lemmaListContainsThenExtractedMapContains!50 (ListLongMap!2747 K!11775 Hashable!5449) Unit!89629)

(assert (=> b!4480322 (= lt!1666975 (lemmaListContainsThenExtractedMapContains!50 (ListLongMap!2748 lt!1666983) key!3287 hashF!1107))))

(declare-fun b!4480324 () Bool)

(declare-fun e!2790389 () Bool)

(assert (=> b!4480324 (= e!2790380 e!2790389)))

(declare-fun res!1860026 () Bool)

(assert (=> b!4480324 (=> res!1860026 e!2790389)))

(declare-fun lt!1666985 () ListLongMap!2747)

(assert (=> b!4480324 (= res!1860026 (not (= lt!1666973 (+!1408 lt!1666985 lt!1666981))))))

(declare-fun tail!7561 (ListLongMap!2747) ListLongMap!2747)

(assert (=> b!4480324 (= lt!1666985 (tail!7561 lm!1477))))

(declare-fun b!4480325 () Bool)

(declare-fun res!1860040 () Bool)

(declare-fun e!2790393 () Bool)

(assert (=> b!4480325 (=> res!1860040 e!2790393)))

(get-info :version)

(assert (=> b!4480325 (= res!1860040 (or ((_ is Nil!50365) (toList!4116 lm!1477)) (not (= (_1!28620 (h!56148 (toList!4116 lm!1477))) hash!344))))))

(declare-fun b!4480326 () Bool)

(declare-fun res!1860028 () Bool)

(declare-fun e!2790386 () Bool)

(assert (=> b!4480326 (=> (not res!1860028) (not e!2790386))))

(assert (=> b!4480326 (= res!1860028 (contains!12951 (extractMap!1110 (toList!4116 lm!1477)) key!3287))))

(declare-fun b!4480327 () Bool)

(declare-fun e!2790381 () Bool)

(assert (=> b!4480327 (= e!2790381 false)))

(declare-fun b!4480328 () Bool)

(declare-fun e!2790392 () Bool)

(declare-fun tp!1336626 () Bool)

(assert (=> b!4480328 (= e!2790392 tp!1336626)))

(declare-fun e!2790395 () Bool)

(declare-fun tp!1336627 () Bool)

(declare-fun tp_is_empty!27493 () Bool)

(declare-fun tp_is_empty!27495 () Bool)

(declare-fun b!4480329 () Bool)

(assert (=> b!4480329 (= e!2790395 (and tp_is_empty!27493 tp_is_empty!27495 tp!1336627))))

(declare-fun b!4480330 () Bool)

(declare-fun e!2790383 () Unit!89629)

(declare-fun Unit!89631 () Unit!89629)

(assert (=> b!4480330 (= e!2790383 Unit!89631)))

(declare-fun b!4480331 () Bool)

(declare-fun Unit!89632 () Unit!89629)

(assert (=> b!4480331 (= e!2790388 Unit!89632)))

(declare-fun b!4480332 () Bool)

(declare-fun e!2790382 () Bool)

(assert (=> b!4480332 (= e!2790393 e!2790382)))

(declare-fun res!1860033 () Bool)

(assert (=> b!4480332 (=> res!1860033 e!2790382)))

(declare-fun lt!1666984 () Bool)

(assert (=> b!4480332 (= res!1860033 lt!1666984)))

(declare-fun lt!1666964 () Unit!89629)

(assert (=> b!4480332 (= lt!1666964 e!2790383)))

(declare-fun c!763190 () Bool)

(assert (=> b!4480332 (= c!763190 lt!1666984)))

(declare-fun containsKey!1538 (List!50488 K!11775) Bool)

(assert (=> b!4480332 (= lt!1666984 (not (containsKey!1538 (_2!28620 (h!56148 (toList!4116 lm!1477))) key!3287)))))

(declare-fun b!4480333 () Bool)

(declare-fun Unit!89633 () Unit!89629)

(assert (=> b!4480333 (= e!2790388 Unit!89633)))

(declare-fun lt!1666966 () Unit!89629)

(declare-fun lemmaInGenMapThenLongMapContainsHash!128 (ListLongMap!2747 K!11775 Hashable!5449) Unit!89629)

(assert (=> b!4480333 (= lt!1666966 (lemmaInGenMapThenLongMapContainsHash!128 lt!1666985 key!3287 hashF!1107))))

(declare-fun res!1860031 () Bool)

(declare-fun lt!1666979 () (_ BitVec 64))

(declare-fun contains!12952 (ListLongMap!2747 (_ BitVec 64)) Bool)

(assert (=> b!4480333 (= res!1860031 (contains!12952 lt!1666985 lt!1666979))))

(assert (=> b!4480333 (=> (not res!1860031) (not e!2790381))))

(assert (=> b!4480333 e!2790381))

(declare-fun b!4480334 () Bool)

(assert (=> b!4480334 (= e!2790387 (not e!2790393))))

(declare-fun res!1860039 () Bool)

(assert (=> b!4480334 (=> res!1860039 e!2790393)))

(declare-fun lt!1666965 () List!50488)

(declare-fun removePairForKey!681 (List!50488 K!11775) List!50488)

(assert (=> b!4480334 (= res!1860039 (not (= newBucket!178 (removePairForKey!681 lt!1666965 key!3287))))))

(declare-fun lt!1666971 () tuple2!50652)

(declare-fun lt!1666986 () Unit!89629)

(declare-fun forallContained!2307 (List!50489 Int tuple2!50652) Unit!89629)

(assert (=> b!4480334 (= lt!1666986 (forallContained!2307 (toList!4116 lm!1477) lambda!165181 lt!1666971))))

(declare-fun contains!12953 (List!50489 tuple2!50652) Bool)

(assert (=> b!4480334 (contains!12953 (toList!4116 lm!1477) lt!1666971)))

(assert (=> b!4480334 (= lt!1666971 (tuple2!50653 hash!344 lt!1666965))))

(declare-fun lt!1666972 () Unit!89629)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!566 (List!50489 (_ BitVec 64) List!50488) Unit!89629)

(assert (=> b!4480334 (= lt!1666972 (lemmaGetValueByKeyImpliesContainsTuple!566 (toList!4116 lm!1477) hash!344 lt!1666965))))

(declare-fun apply!11791 (ListLongMap!2747 (_ BitVec 64)) List!50488)

(assert (=> b!4480334 (= lt!1666965 (apply!11791 lm!1477 hash!344))))

(assert (=> b!4480334 (contains!12952 lm!1477 lt!1666979)))

(declare-fun lt!1666977 () Unit!89629)

(assert (=> b!4480334 (= lt!1666977 (lemmaInGenMapThenLongMapContainsHash!128 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4480335 () Bool)

(declare-fun res!1860041 () Bool)

(assert (=> b!4480335 (=> (not res!1860041) (not e!2790386))))

(declare-fun allKeysSameHashInMap!1161 (ListLongMap!2747 Hashable!5449) Bool)

(assert (=> b!4480335 (= res!1860041 (allKeysSameHashInMap!1161 lm!1477 hashF!1107))))

(declare-fun res!1860035 () Bool)

(assert (=> start!440644 (=> (not res!1860035) (not e!2790386))))

(assert (=> start!440644 (= res!1860035 (forall!10046 (toList!4116 lm!1477) lambda!165181))))

(assert (=> start!440644 e!2790386))

(assert (=> start!440644 true))

(declare-fun inv!65959 (ListLongMap!2747) Bool)

(assert (=> start!440644 (and (inv!65959 lm!1477) e!2790392)))

(assert (=> start!440644 tp_is_empty!27493))

(assert (=> start!440644 e!2790395))

(declare-fun b!4480323 () Bool)

(assert (=> b!4480323 (= e!2790390 e!2790385)))

(declare-fun res!1860036 () Bool)

(assert (=> b!4480323 (=> res!1860036 e!2790385)))

(assert (=> b!4480323 (= res!1860036 (not (eq!547 (extractMap!1110 (toList!4116 lt!1666963)) (addToMapMapFromBucket!609 (_2!28620 (h!56148 (toList!4116 lm!1477))) lt!1666980))))))

(assert (=> b!4480323 (= lt!1666963 (+!1408 lm!1477 lt!1666974))))

(declare-fun b!4480336 () Bool)

(declare-fun res!1860029 () Bool)

(assert (=> b!4480336 (=> res!1860029 e!2790393)))

(declare-fun noDuplicateKeys!1054 (List!50488) Bool)

(assert (=> b!4480336 (= res!1860029 (not (noDuplicateKeys!1054 newBucket!178)))))

(declare-fun b!4480337 () Bool)

(assert (=> b!4480337 (= e!2790389 e!2790384)))

(declare-fun res!1860030 () Bool)

(assert (=> b!4480337 (=> res!1860030 e!2790384)))

(assert (=> b!4480337 (= res!1860030 (not (= lt!1666982 lt!1666980)))))

(assert (=> b!4480337 (= lt!1666980 (extractMap!1110 (t!357443 (toList!4116 lm!1477))))))

(assert (=> b!4480337 (= lt!1666982 (extractMap!1110 (toList!4116 lt!1666985)))))

(declare-fun b!4480338 () Bool)

(declare-fun Unit!89634 () Unit!89629)

(assert (=> b!4480338 (= e!2790383 Unit!89634)))

(declare-fun lt!1666970 () Unit!89629)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!54 (ListLongMap!2747 K!11775 Hashable!5449) Unit!89629)

(assert (=> b!4480338 (= lt!1666970 (lemmaNotInItsHashBucketThenNotInMap!54 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4480338 false))

(declare-fun b!4480339 () Bool)

(assert (=> b!4480339 (= e!2790382 e!2790391)))

(declare-fun res!1860027 () Bool)

(assert (=> b!4480339 (=> res!1860027 e!2790391)))

(declare-fun containsKeyBiggerList!54 (List!50489 K!11775) Bool)

(assert (=> b!4480339 (= res!1860027 (not (containsKeyBiggerList!54 lt!1666983 key!3287)))))

(assert (=> b!4480339 (= lt!1666983 (Cons!50365 (h!56148 (toList!4116 lm!1477)) Nil!50365))))

(declare-fun b!4480340 () Bool)

(assert (=> b!4480340 (= e!2790386 e!2790387)))

(declare-fun res!1860038 () Bool)

(assert (=> b!4480340 (=> (not res!1860038) (not e!2790387))))

(assert (=> b!4480340 (= res!1860038 (= lt!1666979 hash!344))))

(declare-fun hash!2535 (Hashable!5449 K!11775) (_ BitVec 64))

(assert (=> b!4480340 (= lt!1666979 (hash!2535 hashF!1107 key!3287))))

(assert (= (and start!440644 res!1860035) b!4480335))

(assert (= (and b!4480335 res!1860041) b!4480326))

(assert (= (and b!4480326 res!1860028) b!4480340))

(assert (= (and b!4480340 res!1860038) b!4480317))

(assert (= (and b!4480317 res!1860037) b!4480334))

(assert (= (and b!4480334 (not res!1860039)) b!4480336))

(assert (= (and b!4480336 (not res!1860029)) b!4480325))

(assert (= (and b!4480325 (not res!1860040)) b!4480332))

(assert (= (and b!4480332 c!763190) b!4480338))

(assert (= (and b!4480332 (not c!763190)) b!4480330))

(assert (= (and b!4480332 (not res!1860033)) b!4480339))

(assert (= (and b!4480339 (not res!1860027)) b!4480322))

(assert (= (and b!4480322 (not res!1860025)) b!4480324))

(assert (= (and b!4480324 (not res!1860026)) b!4480337))

(assert (= (and b!4480337 (not res!1860030)) b!4480318))

(assert (= (and b!4480318 c!763191) b!4480333))

(assert (= (and b!4480318 (not c!763191)) b!4480331))

(assert (= (and b!4480333 res!1860031) b!4480327))

(assert (= (and b!4480318 (not res!1860032)) b!4480320))

(assert (= (and b!4480320 (not res!1860042)) b!4480321))

(assert (= (and b!4480321 (not res!1860034)) b!4480323))

(assert (= (and b!4480323 (not res!1860036)) b!4480319))

(assert (= start!440644 b!4480328))

(assert (= (and start!440644 ((_ is Cons!50364) newBucket!178)) b!4480329))

(declare-fun m!5199149 () Bool)

(assert (=> b!4480319 m!5199149))

(declare-fun m!5199151 () Bool)

(assert (=> b!4480324 m!5199151))

(declare-fun m!5199153 () Bool)

(assert (=> b!4480324 m!5199153))

(declare-fun m!5199155 () Bool)

(assert (=> b!4480336 m!5199155))

(declare-fun m!5199157 () Bool)

(assert (=> b!4480335 m!5199157))

(declare-fun m!5199159 () Bool)

(assert (=> b!4480320 m!5199159))

(declare-fun m!5199161 () Bool)

(assert (=> b!4480320 m!5199161))

(declare-fun m!5199163 () Bool)

(assert (=> b!4480320 m!5199163))

(declare-fun m!5199165 () Bool)

(assert (=> b!4480320 m!5199165))

(assert (=> b!4480320 m!5199165))

(declare-fun m!5199167 () Bool)

(assert (=> b!4480320 m!5199167))

(assert (=> b!4480320 m!5199163))

(assert (=> b!4480320 m!5199167))

(declare-fun m!5199169 () Bool)

(assert (=> b!4480320 m!5199169))

(declare-fun m!5199171 () Bool)

(assert (=> b!4480338 m!5199171))

(declare-fun m!5199173 () Bool)

(assert (=> b!4480334 m!5199173))

(declare-fun m!5199175 () Bool)

(assert (=> b!4480334 m!5199175))

(declare-fun m!5199177 () Bool)

(assert (=> b!4480334 m!5199177))

(declare-fun m!5199179 () Bool)

(assert (=> b!4480334 m!5199179))

(declare-fun m!5199181 () Bool)

(assert (=> b!4480334 m!5199181))

(declare-fun m!5199183 () Bool)

(assert (=> b!4480334 m!5199183))

(declare-fun m!5199185 () Bool)

(assert (=> b!4480334 m!5199185))

(declare-fun m!5199187 () Bool)

(assert (=> b!4480337 m!5199187))

(declare-fun m!5199189 () Bool)

(assert (=> b!4480337 m!5199189))

(declare-fun m!5199191 () Bool)

(assert (=> b!4480340 m!5199191))

(declare-fun m!5199193 () Bool)

(assert (=> b!4480321 m!5199193))

(declare-fun m!5199195 () Bool)

(assert (=> b!4480321 m!5199195))

(assert (=> b!4480321 m!5199193))

(assert (=> b!4480321 m!5199195))

(declare-fun m!5199197 () Bool)

(assert (=> b!4480321 m!5199197))

(declare-fun m!5199199 () Bool)

(assert (=> b!4480333 m!5199199))

(declare-fun m!5199201 () Bool)

(assert (=> b!4480333 m!5199201))

(declare-fun m!5199203 () Bool)

(assert (=> b!4480323 m!5199203))

(declare-fun m!5199205 () Bool)

(assert (=> b!4480323 m!5199205))

(assert (=> b!4480323 m!5199203))

(assert (=> b!4480323 m!5199205))

(declare-fun m!5199207 () Bool)

(assert (=> b!4480323 m!5199207))

(declare-fun m!5199209 () Bool)

(assert (=> b!4480323 m!5199209))

(declare-fun m!5199211 () Bool)

(assert (=> b!4480326 m!5199211))

(assert (=> b!4480326 m!5199211))

(declare-fun m!5199213 () Bool)

(assert (=> b!4480326 m!5199213))

(declare-fun m!5199215 () Bool)

(assert (=> b!4480332 m!5199215))

(declare-fun m!5199217 () Bool)

(assert (=> start!440644 m!5199217))

(declare-fun m!5199219 () Bool)

(assert (=> start!440644 m!5199219))

(declare-fun m!5199221 () Bool)

(assert (=> b!4480322 m!5199221))

(declare-fun m!5199223 () Bool)

(assert (=> b!4480322 m!5199223))

(declare-fun m!5199225 () Bool)

(assert (=> b!4480322 m!5199225))

(declare-fun m!5199227 () Bool)

(assert (=> b!4480322 m!5199227))

(declare-fun m!5199229 () Bool)

(assert (=> b!4480322 m!5199229))

(declare-fun m!5199231 () Bool)

(assert (=> b!4480322 m!5199231))

(declare-fun m!5199233 () Bool)

(assert (=> b!4480322 m!5199233))

(assert (=> b!4480322 m!5199221))

(declare-fun m!5199235 () Bool)

(assert (=> b!4480322 m!5199235))

(declare-fun m!5199237 () Bool)

(assert (=> b!4480322 m!5199237))

(assert (=> b!4480322 m!5199237))

(assert (=> b!4480322 m!5199235))

(declare-fun m!5199239 () Bool)

(assert (=> b!4480322 m!5199239))

(assert (=> b!4480322 m!5199231))

(declare-fun m!5199241 () Bool)

(assert (=> b!4480318 m!5199241))

(declare-fun m!5199243 () Bool)

(assert (=> b!4480317 m!5199243))

(declare-fun m!5199245 () Bool)

(assert (=> b!4480339 m!5199245))

(check-sat (not b!4480317) (not b!4480339) (not b!4480333) (not b!4480329) (not b!4480336) (not b!4480318) (not start!440644) (not b!4480323) (not b!4480322) (not b!4480319) (not b!4480334) (not b!4480321) tp_is_empty!27493 (not b!4480324) (not b!4480337) tp_is_empty!27495 (not b!4480340) (not b!4480320) (not b!4480338) (not b!4480326) (not b!4480332) (not b!4480328) (not b!4480335))
(check-sat)
(get-model)

(declare-fun d!1371291 () Bool)

(declare-fun res!1860047 () Bool)

(declare-fun e!2790400 () Bool)

(assert (=> d!1371291 (=> res!1860047 e!2790400)))

(assert (=> d!1371291 (= res!1860047 (and ((_ is Cons!50364) (_2!28620 (h!56148 (toList!4116 lm!1477)))) (= (_1!28619 (h!56147 (_2!28620 (h!56148 (toList!4116 lm!1477))))) key!3287)))))

(assert (=> d!1371291 (= (containsKey!1538 (_2!28620 (h!56148 (toList!4116 lm!1477))) key!3287) e!2790400)))

(declare-fun b!4480345 () Bool)

(declare-fun e!2790401 () Bool)

(assert (=> b!4480345 (= e!2790400 e!2790401)))

(declare-fun res!1860048 () Bool)

(assert (=> b!4480345 (=> (not res!1860048) (not e!2790401))))

(assert (=> b!4480345 (= res!1860048 ((_ is Cons!50364) (_2!28620 (h!56148 (toList!4116 lm!1477)))))))

(declare-fun b!4480346 () Bool)

(assert (=> b!4480346 (= e!2790401 (containsKey!1538 (t!357442 (_2!28620 (h!56148 (toList!4116 lm!1477)))) key!3287))))

(assert (= (and d!1371291 (not res!1860047)) b!4480345))

(assert (= (and b!4480345 res!1860048) b!4480346))

(declare-fun m!5199247 () Bool)

(assert (=> b!4480346 m!5199247))

(assert (=> b!4480332 d!1371291))

(declare-fun d!1371293 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8160 (List!50488) (InoxSet tuple2!50650))

(assert (=> d!1371293 (= (eq!547 (extractMap!1110 (toList!4116 lt!1666973)) (addToMapMapFromBucket!609 newBucket!178 lt!1666980)) (= (content!8160 (toList!4115 (extractMap!1110 (toList!4116 lt!1666973)))) (content!8160 (toList!4115 (addToMapMapFromBucket!609 newBucket!178 lt!1666980)))))))

(declare-fun bs!824369 () Bool)

(assert (= bs!824369 d!1371293))

(declare-fun m!5199249 () Bool)

(assert (=> bs!824369 m!5199249))

(declare-fun m!5199251 () Bool)

(assert (=> bs!824369 m!5199251))

(assert (=> b!4480321 d!1371293))

(declare-fun bs!824370 () Bool)

(declare-fun d!1371295 () Bool)

(assert (= bs!824370 (and d!1371295 start!440644)))

(declare-fun lambda!165184 () Int)

(assert (=> bs!824370 (= lambda!165184 lambda!165181)))

(declare-fun lt!1666989 () ListMap!3377)

(declare-fun invariantList!947 (List!50488) Bool)

(assert (=> d!1371295 (invariantList!947 (toList!4115 lt!1666989))))

(declare-fun e!2790404 () ListMap!3377)

(assert (=> d!1371295 (= lt!1666989 e!2790404)))

(declare-fun c!763194 () Bool)

(assert (=> d!1371295 (= c!763194 ((_ is Cons!50365) (toList!4116 lt!1666973)))))

(assert (=> d!1371295 (forall!10046 (toList!4116 lt!1666973) lambda!165184)))

(assert (=> d!1371295 (= (extractMap!1110 (toList!4116 lt!1666973)) lt!1666989)))

(declare-fun b!4480351 () Bool)

(assert (=> b!4480351 (= e!2790404 (addToMapMapFromBucket!609 (_2!28620 (h!56148 (toList!4116 lt!1666973))) (extractMap!1110 (t!357443 (toList!4116 lt!1666973)))))))

(declare-fun b!4480352 () Bool)

(assert (=> b!4480352 (= e!2790404 (ListMap!3378 Nil!50364))))

(assert (= (and d!1371295 c!763194) b!4480351))

(assert (= (and d!1371295 (not c!763194)) b!4480352))

(declare-fun m!5199253 () Bool)

(assert (=> d!1371295 m!5199253))

(declare-fun m!5199255 () Bool)

(assert (=> d!1371295 m!5199255))

(declare-fun m!5199257 () Bool)

(assert (=> b!4480351 m!5199257))

(assert (=> b!4480351 m!5199257))

(declare-fun m!5199259 () Bool)

(assert (=> b!4480351 m!5199259))

(assert (=> b!4480321 d!1371295))

(declare-fun b!4480418 () Bool)

(assert (=> b!4480418 true))

(declare-fun bs!824413 () Bool)

(declare-fun b!4480422 () Bool)

(assert (= bs!824413 (and b!4480422 b!4480418)))

(declare-fun lambda!165264 () Int)

(declare-fun lambda!165262 () Int)

(assert (=> bs!824413 (= lambda!165264 lambda!165262)))

(assert (=> b!4480422 true))

(declare-fun lambda!165265 () Int)

(declare-fun lt!1667118 () ListMap!3377)

(assert (=> bs!824413 (= (= lt!1667118 lt!1666980) (= lambda!165265 lambda!165262))))

(assert (=> b!4480422 (= (= lt!1667118 lt!1666980) (= lambda!165265 lambda!165264))))

(assert (=> b!4480422 true))

(declare-fun bs!824414 () Bool)

(declare-fun d!1371297 () Bool)

(assert (= bs!824414 (and d!1371297 b!4480418)))

(declare-fun lambda!165266 () Int)

(declare-fun lt!1667127 () ListMap!3377)

(assert (=> bs!824414 (= (= lt!1667127 lt!1666980) (= lambda!165266 lambda!165262))))

(declare-fun bs!824415 () Bool)

(assert (= bs!824415 (and d!1371297 b!4480422)))

(assert (=> bs!824415 (= (= lt!1667127 lt!1666980) (= lambda!165266 lambda!165264))))

(assert (=> bs!824415 (= (= lt!1667127 lt!1667118) (= lambda!165266 lambda!165265))))

(assert (=> d!1371297 true))

(declare-fun bm!312016 () Bool)

(declare-fun c!763205 () Bool)

(declare-fun call!312021 () Bool)

(declare-fun forall!10048 (List!50488 Int) Bool)

(assert (=> bm!312016 (= call!312021 (forall!10048 (toList!4115 lt!1666980) (ite c!763205 lambda!165262 lambda!165265)))))

(declare-fun e!2790450 () ListMap!3377)

(assert (=> b!4480418 (= e!2790450 lt!1666980)))

(declare-fun lt!1667132 () Unit!89629)

(declare-fun call!312022 () Unit!89629)

(assert (=> b!4480418 (= lt!1667132 call!312022)))

(declare-fun call!312023 () Bool)

(assert (=> b!4480418 call!312023))

(declare-fun lt!1667123 () Unit!89629)

(assert (=> b!4480418 (= lt!1667123 lt!1667132)))

(assert (=> b!4480418 call!312021))

(declare-fun lt!1667122 () Unit!89629)

(declare-fun Unit!89646 () Unit!89629)

(assert (=> b!4480418 (= lt!1667122 Unit!89646)))

(declare-fun b!4480419 () Bool)

(declare-fun res!1860090 () Bool)

(declare-fun e!2790449 () Bool)

(assert (=> b!4480419 (=> (not res!1860090) (not e!2790449))))

(assert (=> b!4480419 (= res!1860090 (forall!10048 (toList!4115 lt!1666980) lambda!165266))))

(assert (=> d!1371297 e!2790449))

(declare-fun res!1860089 () Bool)

(assert (=> d!1371297 (=> (not res!1860089) (not e!2790449))))

(assert (=> d!1371297 (= res!1860089 (forall!10048 newBucket!178 lambda!165266))))

(assert (=> d!1371297 (= lt!1667127 e!2790450)))

(assert (=> d!1371297 (= c!763205 ((_ is Nil!50364) newBucket!178))))

(assert (=> d!1371297 (noDuplicateKeys!1054 newBucket!178)))

(assert (=> d!1371297 (= (addToMapMapFromBucket!609 newBucket!178 lt!1666980) lt!1667127)))

(declare-fun bm!312017 () Bool)

(declare-fun lt!1667117 () ListMap!3377)

(assert (=> bm!312017 (= call!312023 (forall!10048 (ite c!763205 (toList!4115 lt!1666980) (toList!4115 lt!1667117)) (ite c!763205 lambda!165262 lambda!165265)))))

(declare-fun b!4480420 () Bool)

(declare-fun e!2790451 () Bool)

(assert (=> b!4480420 (= e!2790451 (forall!10048 (toList!4115 lt!1666980) lambda!165265))))

(declare-fun b!4480421 () Bool)

(assert (=> b!4480421 (= e!2790449 (invariantList!947 (toList!4115 lt!1667127)))))

(assert (=> b!4480422 (= e!2790450 lt!1667118)))

(declare-fun +!1410 (ListMap!3377 tuple2!50650) ListMap!3377)

(assert (=> b!4480422 (= lt!1667117 (+!1410 lt!1666980 (h!56147 newBucket!178)))))

(assert (=> b!4480422 (= lt!1667118 (addToMapMapFromBucket!609 (t!357442 newBucket!178) (+!1410 lt!1666980 (h!56147 newBucket!178))))))

(declare-fun lt!1667112 () Unit!89629)

(assert (=> b!4480422 (= lt!1667112 call!312022)))

(assert (=> b!4480422 (forall!10048 (toList!4115 lt!1666980) lambda!165264)))

(declare-fun lt!1667129 () Unit!89629)

(assert (=> b!4480422 (= lt!1667129 lt!1667112)))

(assert (=> b!4480422 call!312023))

(declare-fun lt!1667115 () Unit!89629)

(declare-fun Unit!89647 () Unit!89629)

(assert (=> b!4480422 (= lt!1667115 Unit!89647)))

(assert (=> b!4480422 (forall!10048 (t!357442 newBucket!178) lambda!165265)))

(declare-fun lt!1667126 () Unit!89629)

(declare-fun Unit!89648 () Unit!89629)

(assert (=> b!4480422 (= lt!1667126 Unit!89648)))

(declare-fun lt!1667119 () Unit!89629)

(declare-fun Unit!89649 () Unit!89629)

(assert (=> b!4480422 (= lt!1667119 Unit!89649)))

(declare-fun lt!1667114 () Unit!89629)

(declare-fun forallContained!2309 (List!50488 Int tuple2!50650) Unit!89629)

(assert (=> b!4480422 (= lt!1667114 (forallContained!2309 (toList!4115 lt!1667117) lambda!165265 (h!56147 newBucket!178)))))

(assert (=> b!4480422 (contains!12951 lt!1667117 (_1!28619 (h!56147 newBucket!178)))))

(declare-fun lt!1667120 () Unit!89629)

(declare-fun Unit!89650 () Unit!89629)

(assert (=> b!4480422 (= lt!1667120 Unit!89650)))

(assert (=> b!4480422 (contains!12951 lt!1667118 (_1!28619 (h!56147 newBucket!178)))))

(declare-fun lt!1667116 () Unit!89629)

(declare-fun Unit!89651 () Unit!89629)

(assert (=> b!4480422 (= lt!1667116 Unit!89651)))

(assert (=> b!4480422 (forall!10048 newBucket!178 lambda!165265)))

(declare-fun lt!1667113 () Unit!89629)

(declare-fun Unit!89652 () Unit!89629)

(assert (=> b!4480422 (= lt!1667113 Unit!89652)))

(assert (=> b!4480422 (forall!10048 (toList!4115 lt!1667117) lambda!165265)))

(declare-fun lt!1667125 () Unit!89629)

(declare-fun Unit!89653 () Unit!89629)

(assert (=> b!4480422 (= lt!1667125 Unit!89653)))

(declare-fun lt!1667128 () Unit!89629)

(declare-fun Unit!89654 () Unit!89629)

(assert (=> b!4480422 (= lt!1667128 Unit!89654)))

(declare-fun lt!1667124 () Unit!89629)

(declare-fun addForallContainsKeyThenBeforeAdding!278 (ListMap!3377 ListMap!3377 K!11775 V!12021) Unit!89629)

(assert (=> b!4480422 (= lt!1667124 (addForallContainsKeyThenBeforeAdding!278 lt!1666980 lt!1667118 (_1!28619 (h!56147 newBucket!178)) (_2!28619 (h!56147 newBucket!178))))))

(assert (=> b!4480422 (forall!10048 (toList!4115 lt!1666980) lambda!165265)))

(declare-fun lt!1667130 () Unit!89629)

(assert (=> b!4480422 (= lt!1667130 lt!1667124)))

(assert (=> b!4480422 call!312021))

(declare-fun lt!1667121 () Unit!89629)

(declare-fun Unit!89655 () Unit!89629)

(assert (=> b!4480422 (= lt!1667121 Unit!89655)))

(declare-fun res!1860088 () Bool)

(assert (=> b!4480422 (= res!1860088 (forall!10048 newBucket!178 lambda!165265))))

(assert (=> b!4480422 (=> (not res!1860088) (not e!2790451))))

(assert (=> b!4480422 e!2790451))

(declare-fun lt!1667131 () Unit!89629)

(declare-fun Unit!89656 () Unit!89629)

(assert (=> b!4480422 (= lt!1667131 Unit!89656)))

(declare-fun bm!312018 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!278 (ListMap!3377) Unit!89629)

(assert (=> bm!312018 (= call!312022 (lemmaContainsAllItsOwnKeys!278 lt!1666980))))

(assert (= (and d!1371297 c!763205) b!4480418))

(assert (= (and d!1371297 (not c!763205)) b!4480422))

(assert (= (and b!4480422 res!1860088) b!4480420))

(assert (= (or b!4480418 b!4480422) bm!312017))

(assert (= (or b!4480418 b!4480422) bm!312016))

(assert (= (or b!4480418 b!4480422) bm!312018))

(assert (= (and d!1371297 res!1860089) b!4480419))

(assert (= (and b!4480419 res!1860090) b!4480421))

(declare-fun m!5199403 () Bool)

(assert (=> bm!312018 m!5199403))

(declare-fun m!5199405 () Bool)

(assert (=> b!4480419 m!5199405))

(declare-fun m!5199407 () Bool)

(assert (=> bm!312017 m!5199407))

(declare-fun m!5199409 () Bool)

(assert (=> d!1371297 m!5199409))

(assert (=> d!1371297 m!5199155))

(declare-fun m!5199411 () Bool)

(assert (=> b!4480420 m!5199411))

(declare-fun m!5199413 () Bool)

(assert (=> b!4480421 m!5199413))

(declare-fun m!5199415 () Bool)

(assert (=> bm!312016 m!5199415))

(declare-fun m!5199417 () Bool)

(assert (=> b!4480422 m!5199417))

(declare-fun m!5199419 () Bool)

(assert (=> b!4480422 m!5199419))

(declare-fun m!5199421 () Bool)

(assert (=> b!4480422 m!5199421))

(declare-fun m!5199423 () Bool)

(assert (=> b!4480422 m!5199423))

(declare-fun m!5199425 () Bool)

(assert (=> b!4480422 m!5199425))

(declare-fun m!5199427 () Bool)

(assert (=> b!4480422 m!5199427))

(assert (=> b!4480422 m!5199425))

(declare-fun m!5199429 () Bool)

(assert (=> b!4480422 m!5199429))

(assert (=> b!4480422 m!5199411))

(declare-fun m!5199431 () Bool)

(assert (=> b!4480422 m!5199431))

(assert (=> b!4480422 m!5199429))

(declare-fun m!5199433 () Bool)

(assert (=> b!4480422 m!5199433))

(declare-fun m!5199435 () Bool)

(assert (=> b!4480422 m!5199435))

(assert (=> b!4480321 d!1371297))

(declare-fun d!1371339 () Bool)

(assert (=> d!1371339 (= (eq!547 (extractMap!1110 (toList!4116 lt!1666963)) (addToMapMapFromBucket!609 (_2!28620 (h!56148 (toList!4116 lm!1477))) lt!1666980)) (= (content!8160 (toList!4115 (extractMap!1110 (toList!4116 lt!1666963)))) (content!8160 (toList!4115 (addToMapMapFromBucket!609 (_2!28620 (h!56148 (toList!4116 lm!1477))) lt!1666980)))))))

(declare-fun bs!824416 () Bool)

(assert (= bs!824416 d!1371339))

(declare-fun m!5199437 () Bool)

(assert (=> bs!824416 m!5199437))

(declare-fun m!5199439 () Bool)

(assert (=> bs!824416 m!5199439))

(assert (=> b!4480323 d!1371339))

(declare-fun bs!824417 () Bool)

(declare-fun d!1371341 () Bool)

(assert (= bs!824417 (and d!1371341 start!440644)))

(declare-fun lambda!165267 () Int)

(assert (=> bs!824417 (= lambda!165267 lambda!165181)))

(declare-fun bs!824418 () Bool)

(assert (= bs!824418 (and d!1371341 d!1371295)))

(assert (=> bs!824418 (= lambda!165267 lambda!165184)))

(declare-fun lt!1667135 () ListMap!3377)

(assert (=> d!1371341 (invariantList!947 (toList!4115 lt!1667135))))

(declare-fun e!2790454 () ListMap!3377)

(assert (=> d!1371341 (= lt!1667135 e!2790454)))

(declare-fun c!763207 () Bool)

(assert (=> d!1371341 (= c!763207 ((_ is Cons!50365) (toList!4116 lt!1666963)))))

(assert (=> d!1371341 (forall!10046 (toList!4116 lt!1666963) lambda!165267)))

(assert (=> d!1371341 (= (extractMap!1110 (toList!4116 lt!1666963)) lt!1667135)))

(declare-fun b!4480428 () Bool)

(assert (=> b!4480428 (= e!2790454 (addToMapMapFromBucket!609 (_2!28620 (h!56148 (toList!4116 lt!1666963))) (extractMap!1110 (t!357443 (toList!4116 lt!1666963)))))))

(declare-fun b!4480429 () Bool)

(assert (=> b!4480429 (= e!2790454 (ListMap!3378 Nil!50364))))

(assert (= (and d!1371341 c!763207) b!4480428))

(assert (= (and d!1371341 (not c!763207)) b!4480429))

(declare-fun m!5199441 () Bool)

(assert (=> d!1371341 m!5199441))

(declare-fun m!5199443 () Bool)

(assert (=> d!1371341 m!5199443))

(declare-fun m!5199445 () Bool)

(assert (=> b!4480428 m!5199445))

(assert (=> b!4480428 m!5199445))

(declare-fun m!5199447 () Bool)

(assert (=> b!4480428 m!5199447))

(assert (=> b!4480323 d!1371341))

(declare-fun bs!824419 () Bool)

(declare-fun b!4480430 () Bool)

(assert (= bs!824419 (and b!4480430 b!4480418)))

(declare-fun lambda!165268 () Int)

(assert (=> bs!824419 (= lambda!165268 lambda!165262)))

(declare-fun bs!824420 () Bool)

(assert (= bs!824420 (and b!4480430 b!4480422)))

(assert (=> bs!824420 (= lambda!165268 lambda!165264)))

(assert (=> bs!824420 (= (= lt!1666980 lt!1667118) (= lambda!165268 lambda!165265))))

(declare-fun bs!824421 () Bool)

(assert (= bs!824421 (and b!4480430 d!1371297)))

(assert (=> bs!824421 (= (= lt!1666980 lt!1667127) (= lambda!165268 lambda!165266))))

(assert (=> b!4480430 true))

(declare-fun bs!824422 () Bool)

(declare-fun b!4480434 () Bool)

(assert (= bs!824422 (and b!4480434 b!4480418)))

(declare-fun lambda!165269 () Int)

(assert (=> bs!824422 (= lambda!165269 lambda!165262)))

(declare-fun bs!824423 () Bool)

(assert (= bs!824423 (and b!4480434 d!1371297)))

(assert (=> bs!824423 (= (= lt!1666980 lt!1667127) (= lambda!165269 lambda!165266))))

(declare-fun bs!824424 () Bool)

(assert (= bs!824424 (and b!4480434 b!4480422)))

(assert (=> bs!824424 (= lambda!165269 lambda!165264)))

(assert (=> bs!824424 (= (= lt!1666980 lt!1667118) (= lambda!165269 lambda!165265))))

(declare-fun bs!824425 () Bool)

(assert (= bs!824425 (and b!4480434 b!4480430)))

(assert (=> bs!824425 (= lambda!165269 lambda!165268)))

(assert (=> b!4480434 true))

(declare-fun lt!1667142 () ListMap!3377)

(declare-fun lambda!165270 () Int)

(assert (=> bs!824422 (= (= lt!1667142 lt!1666980) (= lambda!165270 lambda!165262))))

(assert (=> bs!824423 (= (= lt!1667142 lt!1667127) (= lambda!165270 lambda!165266))))

(assert (=> b!4480434 (= (= lt!1667142 lt!1666980) (= lambda!165270 lambda!165269))))

(assert (=> bs!824424 (= (= lt!1667142 lt!1666980) (= lambda!165270 lambda!165264))))

(assert (=> bs!824424 (= (= lt!1667142 lt!1667118) (= lambda!165270 lambda!165265))))

(assert (=> bs!824425 (= (= lt!1667142 lt!1666980) (= lambda!165270 lambda!165268))))

(assert (=> b!4480434 true))

(declare-fun bs!824426 () Bool)

(declare-fun d!1371343 () Bool)

(assert (= bs!824426 (and d!1371343 b!4480418)))

(declare-fun lt!1667151 () ListMap!3377)

(declare-fun lambda!165271 () Int)

(assert (=> bs!824426 (= (= lt!1667151 lt!1666980) (= lambda!165271 lambda!165262))))

(declare-fun bs!824427 () Bool)

(assert (= bs!824427 (and d!1371343 d!1371297)))

(assert (=> bs!824427 (= (= lt!1667151 lt!1667127) (= lambda!165271 lambda!165266))))

(declare-fun bs!824428 () Bool)

(assert (= bs!824428 (and d!1371343 b!4480434)))

(assert (=> bs!824428 (= (= lt!1667151 lt!1666980) (= lambda!165271 lambda!165269))))

(declare-fun bs!824429 () Bool)

(assert (= bs!824429 (and d!1371343 b!4480422)))

(assert (=> bs!824429 (= (= lt!1667151 lt!1666980) (= lambda!165271 lambda!165264))))

(declare-fun bs!824430 () Bool)

(assert (= bs!824430 (and d!1371343 b!4480430)))

(assert (=> bs!824430 (= (= lt!1667151 lt!1666980) (= lambda!165271 lambda!165268))))

(assert (=> bs!824429 (= (= lt!1667151 lt!1667118) (= lambda!165271 lambda!165265))))

(assert (=> bs!824428 (= (= lt!1667151 lt!1667142) (= lambda!165271 lambda!165270))))

(assert (=> d!1371343 true))

(declare-fun bm!312019 () Bool)

(declare-fun call!312024 () Bool)

(declare-fun c!763208 () Bool)

(assert (=> bm!312019 (= call!312024 (forall!10048 (toList!4115 lt!1666980) (ite c!763208 lambda!165268 lambda!165270)))))

(declare-fun e!2790456 () ListMap!3377)

(assert (=> b!4480430 (= e!2790456 lt!1666980)))

(declare-fun lt!1667156 () Unit!89629)

(declare-fun call!312025 () Unit!89629)

(assert (=> b!4480430 (= lt!1667156 call!312025)))

(declare-fun call!312026 () Bool)

(assert (=> b!4480430 call!312026))

(declare-fun lt!1667147 () Unit!89629)

(assert (=> b!4480430 (= lt!1667147 lt!1667156)))

(assert (=> b!4480430 call!312024))

(declare-fun lt!1667146 () Unit!89629)

(declare-fun Unit!89659 () Unit!89629)

(assert (=> b!4480430 (= lt!1667146 Unit!89659)))

(declare-fun b!4480431 () Bool)

(declare-fun res!1860094 () Bool)

(declare-fun e!2790455 () Bool)

(assert (=> b!4480431 (=> (not res!1860094) (not e!2790455))))

(assert (=> b!4480431 (= res!1860094 (forall!10048 (toList!4115 lt!1666980) lambda!165271))))

(assert (=> d!1371343 e!2790455))

(declare-fun res!1860093 () Bool)

(assert (=> d!1371343 (=> (not res!1860093) (not e!2790455))))

(assert (=> d!1371343 (= res!1860093 (forall!10048 (_2!28620 (h!56148 (toList!4116 lm!1477))) lambda!165271))))

(assert (=> d!1371343 (= lt!1667151 e!2790456)))

(assert (=> d!1371343 (= c!763208 ((_ is Nil!50364) (_2!28620 (h!56148 (toList!4116 lm!1477)))))))

(assert (=> d!1371343 (noDuplicateKeys!1054 (_2!28620 (h!56148 (toList!4116 lm!1477))))))

(assert (=> d!1371343 (= (addToMapMapFromBucket!609 (_2!28620 (h!56148 (toList!4116 lm!1477))) lt!1666980) lt!1667151)))

(declare-fun lt!1667141 () ListMap!3377)

(declare-fun bm!312020 () Bool)

(assert (=> bm!312020 (= call!312026 (forall!10048 (ite c!763208 (toList!4115 lt!1666980) (toList!4115 lt!1667141)) (ite c!763208 lambda!165268 lambda!165270)))))

(declare-fun b!4480432 () Bool)

(declare-fun e!2790457 () Bool)

(assert (=> b!4480432 (= e!2790457 (forall!10048 (toList!4115 lt!1666980) lambda!165270))))

(declare-fun b!4480433 () Bool)

(assert (=> b!4480433 (= e!2790455 (invariantList!947 (toList!4115 lt!1667151)))))

(assert (=> b!4480434 (= e!2790456 lt!1667142)))

(assert (=> b!4480434 (= lt!1667141 (+!1410 lt!1666980 (h!56147 (_2!28620 (h!56148 (toList!4116 lm!1477))))))))

(assert (=> b!4480434 (= lt!1667142 (addToMapMapFromBucket!609 (t!357442 (_2!28620 (h!56148 (toList!4116 lm!1477)))) (+!1410 lt!1666980 (h!56147 (_2!28620 (h!56148 (toList!4116 lm!1477)))))))))

(declare-fun lt!1667136 () Unit!89629)

(assert (=> b!4480434 (= lt!1667136 call!312025)))

(assert (=> b!4480434 (forall!10048 (toList!4115 lt!1666980) lambda!165269)))

(declare-fun lt!1667153 () Unit!89629)

(assert (=> b!4480434 (= lt!1667153 lt!1667136)))

(assert (=> b!4480434 call!312026))

(declare-fun lt!1667139 () Unit!89629)

(declare-fun Unit!89660 () Unit!89629)

(assert (=> b!4480434 (= lt!1667139 Unit!89660)))

(assert (=> b!4480434 (forall!10048 (t!357442 (_2!28620 (h!56148 (toList!4116 lm!1477)))) lambda!165270)))

(declare-fun lt!1667150 () Unit!89629)

(declare-fun Unit!89661 () Unit!89629)

(assert (=> b!4480434 (= lt!1667150 Unit!89661)))

(declare-fun lt!1667143 () Unit!89629)

(declare-fun Unit!89662 () Unit!89629)

(assert (=> b!4480434 (= lt!1667143 Unit!89662)))

(declare-fun lt!1667138 () Unit!89629)

(assert (=> b!4480434 (= lt!1667138 (forallContained!2309 (toList!4115 lt!1667141) lambda!165270 (h!56147 (_2!28620 (h!56148 (toList!4116 lm!1477))))))))

(assert (=> b!4480434 (contains!12951 lt!1667141 (_1!28619 (h!56147 (_2!28620 (h!56148 (toList!4116 lm!1477))))))))

(declare-fun lt!1667144 () Unit!89629)

(declare-fun Unit!89663 () Unit!89629)

(assert (=> b!4480434 (= lt!1667144 Unit!89663)))

(assert (=> b!4480434 (contains!12951 lt!1667142 (_1!28619 (h!56147 (_2!28620 (h!56148 (toList!4116 lm!1477))))))))

(declare-fun lt!1667140 () Unit!89629)

(declare-fun Unit!89664 () Unit!89629)

(assert (=> b!4480434 (= lt!1667140 Unit!89664)))

(assert (=> b!4480434 (forall!10048 (_2!28620 (h!56148 (toList!4116 lm!1477))) lambda!165270)))

(declare-fun lt!1667137 () Unit!89629)

(declare-fun Unit!89665 () Unit!89629)

(assert (=> b!4480434 (= lt!1667137 Unit!89665)))

(assert (=> b!4480434 (forall!10048 (toList!4115 lt!1667141) lambda!165270)))

(declare-fun lt!1667149 () Unit!89629)

(declare-fun Unit!89666 () Unit!89629)

(assert (=> b!4480434 (= lt!1667149 Unit!89666)))

(declare-fun lt!1667152 () Unit!89629)

(declare-fun Unit!89667 () Unit!89629)

(assert (=> b!4480434 (= lt!1667152 Unit!89667)))

(declare-fun lt!1667148 () Unit!89629)

(assert (=> b!4480434 (= lt!1667148 (addForallContainsKeyThenBeforeAdding!278 lt!1666980 lt!1667142 (_1!28619 (h!56147 (_2!28620 (h!56148 (toList!4116 lm!1477))))) (_2!28619 (h!56147 (_2!28620 (h!56148 (toList!4116 lm!1477)))))))))

(assert (=> b!4480434 (forall!10048 (toList!4115 lt!1666980) lambda!165270)))

(declare-fun lt!1667154 () Unit!89629)

(assert (=> b!4480434 (= lt!1667154 lt!1667148)))

(assert (=> b!4480434 call!312024))

(declare-fun lt!1667145 () Unit!89629)

(declare-fun Unit!89668 () Unit!89629)

(assert (=> b!4480434 (= lt!1667145 Unit!89668)))

(declare-fun res!1860092 () Bool)

(assert (=> b!4480434 (= res!1860092 (forall!10048 (_2!28620 (h!56148 (toList!4116 lm!1477))) lambda!165270))))

(assert (=> b!4480434 (=> (not res!1860092) (not e!2790457))))

(assert (=> b!4480434 e!2790457))

(declare-fun lt!1667155 () Unit!89629)

(declare-fun Unit!89669 () Unit!89629)

(assert (=> b!4480434 (= lt!1667155 Unit!89669)))

(declare-fun bm!312021 () Bool)

(assert (=> bm!312021 (= call!312025 (lemmaContainsAllItsOwnKeys!278 lt!1666980))))

(assert (= (and d!1371343 c!763208) b!4480430))

(assert (= (and d!1371343 (not c!763208)) b!4480434))

(assert (= (and b!4480434 res!1860092) b!4480432))

(assert (= (or b!4480430 b!4480434) bm!312020))

(assert (= (or b!4480430 b!4480434) bm!312019))

(assert (= (or b!4480430 b!4480434) bm!312021))

(assert (= (and d!1371343 res!1860093) b!4480431))

(assert (= (and b!4480431 res!1860094) b!4480433))

(assert (=> bm!312021 m!5199403))

(declare-fun m!5199461 () Bool)

(assert (=> b!4480431 m!5199461))

(declare-fun m!5199463 () Bool)

(assert (=> bm!312020 m!5199463))

(declare-fun m!5199465 () Bool)

(assert (=> d!1371343 m!5199465))

(declare-fun m!5199467 () Bool)

(assert (=> d!1371343 m!5199467))

(declare-fun m!5199469 () Bool)

(assert (=> b!4480432 m!5199469))

(declare-fun m!5199471 () Bool)

(assert (=> b!4480433 m!5199471))

(declare-fun m!5199473 () Bool)

(assert (=> bm!312019 m!5199473))

(declare-fun m!5199475 () Bool)

(assert (=> b!4480434 m!5199475))

(declare-fun m!5199477 () Bool)

(assert (=> b!4480434 m!5199477))

(declare-fun m!5199479 () Bool)

(assert (=> b!4480434 m!5199479))

(declare-fun m!5199481 () Bool)

(assert (=> b!4480434 m!5199481))

(declare-fun m!5199483 () Bool)

(assert (=> b!4480434 m!5199483))

(declare-fun m!5199485 () Bool)

(assert (=> b!4480434 m!5199485))

(assert (=> b!4480434 m!5199483))

(declare-fun m!5199487 () Bool)

(assert (=> b!4480434 m!5199487))

(assert (=> b!4480434 m!5199469))

(declare-fun m!5199489 () Bool)

(assert (=> b!4480434 m!5199489))

(assert (=> b!4480434 m!5199487))

(declare-fun m!5199491 () Bool)

(assert (=> b!4480434 m!5199491))

(declare-fun m!5199493 () Bool)

(assert (=> b!4480434 m!5199493))

(assert (=> b!4480323 d!1371343))

(declare-fun d!1371347 () Bool)

(declare-fun e!2790463 () Bool)

(assert (=> d!1371347 e!2790463))

(declare-fun res!1860106 () Bool)

(assert (=> d!1371347 (=> (not res!1860106) (not e!2790463))))

(declare-fun lt!1667178 () ListLongMap!2747)

(assert (=> d!1371347 (= res!1860106 (contains!12952 lt!1667178 (_1!28620 lt!1666974)))))

(declare-fun lt!1667177 () List!50489)

(assert (=> d!1371347 (= lt!1667178 (ListLongMap!2748 lt!1667177))))

(declare-fun lt!1667179 () Unit!89629)

(declare-fun lt!1667180 () Unit!89629)

(assert (=> d!1371347 (= lt!1667179 lt!1667180)))

(declare-datatypes ((Option!10966 0))(
  ( (None!10965) (Some!10965 (v!44337 List!50488)) )
))
(declare-fun getValueByKey!952 (List!50489 (_ BitVec 64)) Option!10966)

(assert (=> d!1371347 (= (getValueByKey!952 lt!1667177 (_1!28620 lt!1666974)) (Some!10965 (_2!28620 lt!1666974)))))

(declare-fun lemmaContainsTupThenGetReturnValue!606 (List!50489 (_ BitVec 64) List!50488) Unit!89629)

(assert (=> d!1371347 (= lt!1667180 (lemmaContainsTupThenGetReturnValue!606 lt!1667177 (_1!28620 lt!1666974) (_2!28620 lt!1666974)))))

(declare-fun insertStrictlySorted!350 (List!50489 (_ BitVec 64) List!50488) List!50489)

(assert (=> d!1371347 (= lt!1667177 (insertStrictlySorted!350 (toList!4116 lm!1477) (_1!28620 lt!1666974) (_2!28620 lt!1666974)))))

(assert (=> d!1371347 (= (+!1408 lm!1477 lt!1666974) lt!1667178)))

(declare-fun b!4480445 () Bool)

(declare-fun res!1860105 () Bool)

(assert (=> b!4480445 (=> (not res!1860105) (not e!2790463))))

(assert (=> b!4480445 (= res!1860105 (= (getValueByKey!952 (toList!4116 lt!1667178) (_1!28620 lt!1666974)) (Some!10965 (_2!28620 lt!1666974))))))

(declare-fun b!4480446 () Bool)

(assert (=> b!4480446 (= e!2790463 (contains!12953 (toList!4116 lt!1667178) lt!1666974))))

(assert (= (and d!1371347 res!1860106) b!4480445))

(assert (= (and b!4480445 res!1860105) b!4480446))

(declare-fun m!5199495 () Bool)

(assert (=> d!1371347 m!5199495))

(declare-fun m!5199497 () Bool)

(assert (=> d!1371347 m!5199497))

(declare-fun m!5199499 () Bool)

(assert (=> d!1371347 m!5199499))

(declare-fun m!5199501 () Bool)

(assert (=> d!1371347 m!5199501))

(declare-fun m!5199503 () Bool)

(assert (=> b!4480445 m!5199503))

(declare-fun m!5199505 () Bool)

(assert (=> b!4480446 m!5199505))

(assert (=> b!4480323 d!1371347))

(declare-fun bs!824431 () Bool)

(declare-fun d!1371349 () Bool)

(assert (= bs!824431 (and d!1371349 start!440644)))

(declare-fun lambda!165274 () Int)

(assert (=> bs!824431 (= lambda!165274 lambda!165181)))

(declare-fun bs!824432 () Bool)

(assert (= bs!824432 (and d!1371349 d!1371295)))

(assert (=> bs!824432 (= lambda!165274 lambda!165184)))

(declare-fun bs!824433 () Bool)

(assert (= bs!824433 (and d!1371349 d!1371341)))

(assert (=> bs!824433 (= lambda!165274 lambda!165267)))

(assert (=> d!1371349 (contains!12952 lt!1666985 (hash!2535 hashF!1107 key!3287))))

(declare-fun lt!1667199 () Unit!89629)

(declare-fun choose!28749 (ListLongMap!2747 K!11775 Hashable!5449) Unit!89629)

(assert (=> d!1371349 (= lt!1667199 (choose!28749 lt!1666985 key!3287 hashF!1107))))

(assert (=> d!1371349 (forall!10046 (toList!4116 lt!1666985) lambda!165274)))

(assert (=> d!1371349 (= (lemmaInGenMapThenLongMapContainsHash!128 lt!1666985 key!3287 hashF!1107) lt!1667199)))

(declare-fun bs!824434 () Bool)

(assert (= bs!824434 d!1371349))

(assert (=> bs!824434 m!5199191))

(assert (=> bs!824434 m!5199191))

(declare-fun m!5199507 () Bool)

(assert (=> bs!824434 m!5199507))

(declare-fun m!5199509 () Bool)

(assert (=> bs!824434 m!5199509))

(declare-fun m!5199511 () Bool)

(assert (=> bs!824434 m!5199511))

(assert (=> b!4480333 d!1371349))

(declare-fun d!1371351 () Bool)

(declare-fun e!2790486 () Bool)

(assert (=> d!1371351 e!2790486))

(declare-fun res!1860118 () Bool)

(assert (=> d!1371351 (=> res!1860118 e!2790486)))

(declare-fun lt!1667219 () Bool)

(assert (=> d!1371351 (= res!1860118 (not lt!1667219))))

(declare-fun lt!1667217 () Bool)

(assert (=> d!1371351 (= lt!1667219 lt!1667217)))

(declare-fun lt!1667218 () Unit!89629)

(declare-fun e!2790487 () Unit!89629)

(assert (=> d!1371351 (= lt!1667218 e!2790487)))

(declare-fun c!763220 () Bool)

(assert (=> d!1371351 (= c!763220 lt!1667217)))

(declare-fun containsKey!1540 (List!50489 (_ BitVec 64)) Bool)

(assert (=> d!1371351 (= lt!1667217 (containsKey!1540 (toList!4116 lt!1666985) lt!1666979))))

(assert (=> d!1371351 (= (contains!12952 lt!1666985 lt!1666979) lt!1667219)))

(declare-fun b!4480480 () Bool)

(declare-fun lt!1667216 () Unit!89629)

(assert (=> b!4480480 (= e!2790487 lt!1667216)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!855 (List!50489 (_ BitVec 64)) Unit!89629)

(assert (=> b!4480480 (= lt!1667216 (lemmaContainsKeyImpliesGetValueByKeyDefined!855 (toList!4116 lt!1666985) lt!1666979))))

(declare-fun isDefined!8252 (Option!10966) Bool)

(assert (=> b!4480480 (isDefined!8252 (getValueByKey!952 (toList!4116 lt!1666985) lt!1666979))))

(declare-fun b!4480481 () Bool)

(declare-fun Unit!89670 () Unit!89629)

(assert (=> b!4480481 (= e!2790487 Unit!89670)))

(declare-fun b!4480482 () Bool)

(assert (=> b!4480482 (= e!2790486 (isDefined!8252 (getValueByKey!952 (toList!4116 lt!1666985) lt!1666979)))))

(assert (= (and d!1371351 c!763220) b!4480480))

(assert (= (and d!1371351 (not c!763220)) b!4480481))

(assert (= (and d!1371351 (not res!1860118)) b!4480482))

(declare-fun m!5199533 () Bool)

(assert (=> d!1371351 m!5199533))

(declare-fun m!5199535 () Bool)

(assert (=> b!4480480 m!5199535))

(declare-fun m!5199537 () Bool)

(assert (=> b!4480480 m!5199537))

(assert (=> b!4480480 m!5199537))

(declare-fun m!5199539 () Bool)

(assert (=> b!4480480 m!5199539))

(assert (=> b!4480482 m!5199537))

(assert (=> b!4480482 m!5199537))

(assert (=> b!4480482 m!5199539))

(assert (=> b!4480333 d!1371351))

(declare-fun bs!824435 () Bool)

(declare-fun d!1371355 () Bool)

(assert (= bs!824435 (and d!1371355 start!440644)))

(declare-fun lambda!165275 () Int)

(assert (=> bs!824435 (= lambda!165275 lambda!165181)))

(declare-fun bs!824436 () Bool)

(assert (= bs!824436 (and d!1371355 d!1371295)))

(assert (=> bs!824436 (= lambda!165275 lambda!165184)))

(declare-fun bs!824437 () Bool)

(assert (= bs!824437 (and d!1371355 d!1371341)))

(assert (=> bs!824437 (= lambda!165275 lambda!165267)))

(declare-fun bs!824438 () Bool)

(assert (= bs!824438 (and d!1371355 d!1371349)))

(assert (=> bs!824438 (= lambda!165275 lambda!165274)))

(declare-fun lt!1667220 () ListMap!3377)

(assert (=> d!1371355 (invariantList!947 (toList!4115 lt!1667220))))

(declare-fun e!2790488 () ListMap!3377)

(assert (=> d!1371355 (= lt!1667220 e!2790488)))

(declare-fun c!763221 () Bool)

(assert (=> d!1371355 (= c!763221 ((_ is Cons!50365) (Cons!50365 lt!1666974 Nil!50365)))))

(assert (=> d!1371355 (forall!10046 (Cons!50365 lt!1666974 Nil!50365) lambda!165275)))

(assert (=> d!1371355 (= (extractMap!1110 (Cons!50365 lt!1666974 Nil!50365)) lt!1667220)))

(declare-fun b!4480483 () Bool)

(assert (=> b!4480483 (= e!2790488 (addToMapMapFromBucket!609 (_2!28620 (h!56148 (Cons!50365 lt!1666974 Nil!50365))) (extractMap!1110 (t!357443 (Cons!50365 lt!1666974 Nil!50365)))))))

(declare-fun b!4480484 () Bool)

(assert (=> b!4480484 (= e!2790488 (ListMap!3378 Nil!50364))))

(assert (= (and d!1371355 c!763221) b!4480483))

(assert (= (and d!1371355 (not c!763221)) b!4480484))

(declare-fun m!5199541 () Bool)

(assert (=> d!1371355 m!5199541))

(declare-fun m!5199543 () Bool)

(assert (=> d!1371355 m!5199543))

(declare-fun m!5199545 () Bool)

(assert (=> b!4480483 m!5199545))

(assert (=> b!4480483 m!5199545))

(declare-fun m!5199547 () Bool)

(assert (=> b!4480483 m!5199547))

(assert (=> b!4480322 d!1371355))

(declare-fun d!1371357 () Bool)

(declare-fun e!2790489 () Bool)

(assert (=> d!1371357 e!2790489))

(declare-fun res!1860120 () Bool)

(assert (=> d!1371357 (=> (not res!1860120) (not e!2790489))))

(declare-fun lt!1667222 () ListLongMap!2747)

(assert (=> d!1371357 (= res!1860120 (contains!12952 lt!1667222 (_1!28620 lt!1666981)))))

(declare-fun lt!1667221 () List!50489)

(assert (=> d!1371357 (= lt!1667222 (ListLongMap!2748 lt!1667221))))

(declare-fun lt!1667223 () Unit!89629)

(declare-fun lt!1667224 () Unit!89629)

(assert (=> d!1371357 (= lt!1667223 lt!1667224)))

(assert (=> d!1371357 (= (getValueByKey!952 lt!1667221 (_1!28620 lt!1666981)) (Some!10965 (_2!28620 lt!1666981)))))

(assert (=> d!1371357 (= lt!1667224 (lemmaContainsTupThenGetReturnValue!606 lt!1667221 (_1!28620 lt!1666981) (_2!28620 lt!1666981)))))

(assert (=> d!1371357 (= lt!1667221 (insertStrictlySorted!350 (toList!4116 lm!1477) (_1!28620 lt!1666981) (_2!28620 lt!1666981)))))

(assert (=> d!1371357 (= (+!1408 lm!1477 lt!1666981) lt!1667222)))

(declare-fun b!4480485 () Bool)

(declare-fun res!1860119 () Bool)

(assert (=> b!4480485 (=> (not res!1860119) (not e!2790489))))

(assert (=> b!4480485 (= res!1860119 (= (getValueByKey!952 (toList!4116 lt!1667222) (_1!28620 lt!1666981)) (Some!10965 (_2!28620 lt!1666981))))))

(declare-fun b!4480486 () Bool)

(assert (=> b!4480486 (= e!2790489 (contains!12953 (toList!4116 lt!1667222) lt!1666981))))

(assert (= (and d!1371357 res!1860120) b!4480485))

(assert (= (and b!4480485 res!1860119) b!4480486))

(declare-fun m!5199549 () Bool)

(assert (=> d!1371357 m!5199549))

(declare-fun m!5199551 () Bool)

(assert (=> d!1371357 m!5199551))

(declare-fun m!5199553 () Bool)

(assert (=> d!1371357 m!5199553))

(declare-fun m!5199555 () Bool)

(assert (=> d!1371357 m!5199555))

(declare-fun m!5199557 () Bool)

(assert (=> b!4480485 m!5199557))

(declare-fun m!5199559 () Bool)

(assert (=> b!4480486 m!5199559))

(assert (=> b!4480322 d!1371357))

(declare-fun bs!824457 () Bool)

(declare-fun d!1371359 () Bool)

(assert (= bs!824457 (and d!1371359 d!1371355)))

(declare-fun lambda!165280 () Int)

(assert (=> bs!824457 (= lambda!165280 lambda!165275)))

(declare-fun bs!824458 () Bool)

(assert (= bs!824458 (and d!1371359 d!1371349)))

(assert (=> bs!824458 (= lambda!165280 lambda!165274)))

(declare-fun bs!824459 () Bool)

(assert (= bs!824459 (and d!1371359 start!440644)))

(assert (=> bs!824459 (= lambda!165280 lambda!165181)))

(declare-fun bs!824460 () Bool)

(assert (= bs!824460 (and d!1371359 d!1371341)))

(assert (=> bs!824460 (= lambda!165280 lambda!165267)))

(declare-fun bs!824461 () Bool)

(assert (= bs!824461 (and d!1371359 d!1371295)))

(assert (=> bs!824461 (= lambda!165280 lambda!165184)))

(assert (=> d!1371359 (contains!12951 (extractMap!1110 (toList!4116 (ListLongMap!2748 lt!1666983))) key!3287)))

(declare-fun lt!1667232 () Unit!89629)

(declare-fun choose!28753 (ListLongMap!2747 K!11775 Hashable!5449) Unit!89629)

(assert (=> d!1371359 (= lt!1667232 (choose!28753 (ListLongMap!2748 lt!1666983) key!3287 hashF!1107))))

(assert (=> d!1371359 (forall!10046 (toList!4116 (ListLongMap!2748 lt!1666983)) lambda!165280)))

(assert (=> d!1371359 (= (lemmaListContainsThenExtractedMapContains!50 (ListLongMap!2748 lt!1666983) key!3287 hashF!1107) lt!1667232)))

(declare-fun bs!824462 () Bool)

(assert (= bs!824462 d!1371359))

(declare-fun m!5199589 () Bool)

(assert (=> bs!824462 m!5199589))

(assert (=> bs!824462 m!5199589))

(declare-fun m!5199591 () Bool)

(assert (=> bs!824462 m!5199591))

(declare-fun m!5199593 () Bool)

(assert (=> bs!824462 m!5199593))

(declare-fun m!5199595 () Bool)

(assert (=> bs!824462 m!5199595))

(assert (=> b!4480322 d!1371359))

(declare-fun d!1371369 () Bool)

(assert (=> d!1371369 (= (eq!547 (extractMap!1110 (Cons!50365 lt!1666981 Nil!50365)) (-!316 (extractMap!1110 (Cons!50365 lt!1666974 Nil!50365)) key!3287)) (= (content!8160 (toList!4115 (extractMap!1110 (Cons!50365 lt!1666981 Nil!50365)))) (content!8160 (toList!4115 (-!316 (extractMap!1110 (Cons!50365 lt!1666974 Nil!50365)) key!3287)))))))

(declare-fun bs!824463 () Bool)

(assert (= bs!824463 d!1371369))

(declare-fun m!5199597 () Bool)

(assert (=> bs!824463 m!5199597))

(declare-fun m!5199599 () Bool)

(assert (=> bs!824463 m!5199599))

(assert (=> b!4480322 d!1371369))

(declare-fun b!4480527 () Bool)

(declare-datatypes ((List!50491 0))(
  ( (Nil!50367) (Cons!50367 (h!56152 K!11775) (t!357445 List!50491)) )
))
(declare-fun e!2790520 () List!50491)

(declare-fun keys!17414 (ListMap!3377) List!50491)

(assert (=> b!4480527 (= e!2790520 (keys!17414 (extractMap!1110 lt!1666983)))))

(declare-fun b!4480528 () Bool)

(declare-fun e!2790519 () Bool)

(declare-fun e!2790521 () Bool)

(assert (=> b!4480528 (= e!2790519 e!2790521)))

(declare-fun res!1860133 () Bool)

(assert (=> b!4480528 (=> (not res!1860133) (not e!2790521))))

(declare-datatypes ((Option!10967 0))(
  ( (None!10966) (Some!10966 (v!44338 V!12021)) )
))
(declare-fun isDefined!8254 (Option!10967) Bool)

(declare-fun getValueByKey!953 (List!50488 K!11775) Option!10967)

(assert (=> b!4480528 (= res!1860133 (isDefined!8254 (getValueByKey!953 (toList!4115 (extractMap!1110 lt!1666983)) key!3287)))))

(declare-fun b!4480529 () Bool)

(declare-fun contains!12955 (List!50491 K!11775) Bool)

(assert (=> b!4480529 (= e!2790521 (contains!12955 (keys!17414 (extractMap!1110 lt!1666983)) key!3287))))

(declare-fun b!4480530 () Bool)

(declare-fun e!2790516 () Unit!89629)

(declare-fun e!2790517 () Unit!89629)

(assert (=> b!4480530 (= e!2790516 e!2790517)))

(declare-fun c!763236 () Bool)

(declare-fun call!312032 () Bool)

(assert (=> b!4480530 (= c!763236 call!312032)))

(declare-fun b!4480531 () Bool)

(declare-fun lt!1667264 () Unit!89629)

(assert (=> b!4480531 (= e!2790516 lt!1667264)))

(declare-fun lt!1667263 () Unit!89629)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!857 (List!50488 K!11775) Unit!89629)

(assert (=> b!4480531 (= lt!1667263 (lemmaContainsKeyImpliesGetValueByKeyDefined!857 (toList!4115 (extractMap!1110 lt!1666983)) key!3287))))

(assert (=> b!4480531 (isDefined!8254 (getValueByKey!953 (toList!4115 (extractMap!1110 lt!1666983)) key!3287))))

(declare-fun lt!1667262 () Unit!89629)

(assert (=> b!4480531 (= lt!1667262 lt!1667263)))

(declare-fun lemmaInListThenGetKeysListContains!391 (List!50488 K!11775) Unit!89629)

(assert (=> b!4480531 (= lt!1667264 (lemmaInListThenGetKeysListContains!391 (toList!4115 (extractMap!1110 lt!1666983)) key!3287))))

(assert (=> b!4480531 call!312032))

(declare-fun b!4480532 () Bool)

(declare-fun getKeysList!395 (List!50488) List!50491)

(assert (=> b!4480532 (= e!2790520 (getKeysList!395 (toList!4115 (extractMap!1110 lt!1666983))))))

(declare-fun bm!312027 () Bool)

(assert (=> bm!312027 (= call!312032 (contains!12955 e!2790520 key!3287))))

(declare-fun c!763238 () Bool)

(declare-fun c!763237 () Bool)

(assert (=> bm!312027 (= c!763238 c!763237)))

(declare-fun b!4480533 () Bool)

(declare-fun e!2790518 () Bool)

(assert (=> b!4480533 (= e!2790518 (not (contains!12955 (keys!17414 (extractMap!1110 lt!1666983)) key!3287)))))

(declare-fun b!4480535 () Bool)

(assert (=> b!4480535 false))

(declare-fun lt!1667268 () Unit!89629)

(declare-fun lt!1667266 () Unit!89629)

(assert (=> b!4480535 (= lt!1667268 lt!1667266)))

(declare-fun containsKey!1542 (List!50488 K!11775) Bool)

(assert (=> b!4480535 (containsKey!1542 (toList!4115 (extractMap!1110 lt!1666983)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!394 (List!50488 K!11775) Unit!89629)

(assert (=> b!4480535 (= lt!1667266 (lemmaInGetKeysListThenContainsKey!394 (toList!4115 (extractMap!1110 lt!1666983)) key!3287))))

(declare-fun Unit!89672 () Unit!89629)

(assert (=> b!4480535 (= e!2790517 Unit!89672)))

(declare-fun b!4480534 () Bool)

(declare-fun Unit!89673 () Unit!89629)

(assert (=> b!4480534 (= e!2790517 Unit!89673)))

(declare-fun d!1371371 () Bool)

(assert (=> d!1371371 e!2790519))

(declare-fun res!1860134 () Bool)

(assert (=> d!1371371 (=> res!1860134 e!2790519)))

(assert (=> d!1371371 (= res!1860134 e!2790518)))

(declare-fun res!1860135 () Bool)

(assert (=> d!1371371 (=> (not res!1860135) (not e!2790518))))

(declare-fun lt!1667267 () Bool)

(assert (=> d!1371371 (= res!1860135 (not lt!1667267))))

(declare-fun lt!1667265 () Bool)

(assert (=> d!1371371 (= lt!1667267 lt!1667265)))

(declare-fun lt!1667261 () Unit!89629)

(assert (=> d!1371371 (= lt!1667261 e!2790516)))

(assert (=> d!1371371 (= c!763237 lt!1667265)))

(assert (=> d!1371371 (= lt!1667265 (containsKey!1542 (toList!4115 (extractMap!1110 lt!1666983)) key!3287))))

(assert (=> d!1371371 (= (contains!12951 (extractMap!1110 lt!1666983) key!3287) lt!1667267)))

(assert (= (and d!1371371 c!763237) b!4480531))

(assert (= (and d!1371371 (not c!763237)) b!4480530))

(assert (= (and b!4480530 c!763236) b!4480535))

(assert (= (and b!4480530 (not c!763236)) b!4480534))

(assert (= (or b!4480531 b!4480530) bm!312027))

(assert (= (and bm!312027 c!763238) b!4480532))

(assert (= (and bm!312027 (not c!763238)) b!4480527))

(assert (= (and d!1371371 res!1860135) b!4480533))

(assert (= (and d!1371371 (not res!1860134)) b!4480528))

(assert (= (and b!4480528 res!1860133) b!4480529))

(declare-fun m!5199625 () Bool)

(assert (=> b!4480532 m!5199625))

(assert (=> b!4480527 m!5199231))

(declare-fun m!5199627 () Bool)

(assert (=> b!4480527 m!5199627))

(assert (=> b!4480533 m!5199231))

(assert (=> b!4480533 m!5199627))

(assert (=> b!4480533 m!5199627))

(declare-fun m!5199629 () Bool)

(assert (=> b!4480533 m!5199629))

(declare-fun m!5199631 () Bool)

(assert (=> d!1371371 m!5199631))

(declare-fun m!5199633 () Bool)

(assert (=> bm!312027 m!5199633))

(declare-fun m!5199635 () Bool)

(assert (=> b!4480531 m!5199635))

(declare-fun m!5199637 () Bool)

(assert (=> b!4480531 m!5199637))

(assert (=> b!4480531 m!5199637))

(declare-fun m!5199639 () Bool)

(assert (=> b!4480531 m!5199639))

(declare-fun m!5199641 () Bool)

(assert (=> b!4480531 m!5199641))

(assert (=> b!4480528 m!5199637))

(assert (=> b!4480528 m!5199637))

(assert (=> b!4480528 m!5199639))

(assert (=> b!4480529 m!5199231))

(assert (=> b!4480529 m!5199627))

(assert (=> b!4480529 m!5199627))

(assert (=> b!4480529 m!5199629))

(assert (=> b!4480535 m!5199631))

(declare-fun m!5199643 () Bool)

(assert (=> b!4480535 m!5199643))

(assert (=> b!4480322 d!1371371))

(declare-fun bs!824476 () Bool)

(declare-fun d!1371383 () Bool)

(assert (= bs!824476 (and d!1371383 d!1371355)))

(declare-fun lambda!165284 () Int)

(assert (=> bs!824476 (= lambda!165284 lambda!165275)))

(declare-fun bs!824477 () Bool)

(assert (= bs!824477 (and d!1371383 start!440644)))

(assert (=> bs!824477 (= lambda!165284 lambda!165181)))

(declare-fun bs!824478 () Bool)

(assert (= bs!824478 (and d!1371383 d!1371341)))

(assert (=> bs!824478 (= lambda!165284 lambda!165267)))

(declare-fun bs!824479 () Bool)

(assert (= bs!824479 (and d!1371383 d!1371295)))

(assert (=> bs!824479 (= lambda!165284 lambda!165184)))

(declare-fun bs!824480 () Bool)

(assert (= bs!824480 (and d!1371383 d!1371349)))

(assert (=> bs!824480 (= lambda!165284 lambda!165274)))

(declare-fun bs!824481 () Bool)

(assert (= bs!824481 (and d!1371383 d!1371359)))

(assert (=> bs!824481 (= lambda!165284 lambda!165280)))

(declare-fun lt!1667272 () ListMap!3377)

(assert (=> d!1371383 (invariantList!947 (toList!4115 lt!1667272))))

(declare-fun e!2790528 () ListMap!3377)

(assert (=> d!1371383 (= lt!1667272 e!2790528)))

(declare-fun c!763239 () Bool)

(assert (=> d!1371383 (= c!763239 ((_ is Cons!50365) lt!1666983))))

(assert (=> d!1371383 (forall!10046 lt!1666983 lambda!165284)))

(assert (=> d!1371383 (= (extractMap!1110 lt!1666983) lt!1667272)))

(declare-fun b!4480542 () Bool)

(assert (=> b!4480542 (= e!2790528 (addToMapMapFromBucket!609 (_2!28620 (h!56148 lt!1666983)) (extractMap!1110 (t!357443 lt!1666983))))))

(declare-fun b!4480543 () Bool)

(assert (=> b!4480543 (= e!2790528 (ListMap!3378 Nil!50364))))

(assert (= (and d!1371383 c!763239) b!4480542))

(assert (= (and d!1371383 (not c!763239)) b!4480543))

(declare-fun m!5199651 () Bool)

(assert (=> d!1371383 m!5199651))

(declare-fun m!5199653 () Bool)

(assert (=> d!1371383 m!5199653))

(declare-fun m!5199655 () Bool)

(assert (=> b!4480542 m!5199655))

(assert (=> b!4480542 m!5199655))

(declare-fun m!5199657 () Bool)

(assert (=> b!4480542 m!5199657))

(assert (=> b!4480322 d!1371383))

(declare-fun d!1371387 () Bool)

(assert (=> d!1371387 (= (tail!7560 (toList!4116 lt!1666973)) (t!357443 (toList!4116 lt!1666973)))))

(assert (=> b!4480322 d!1371387))

(declare-fun d!1371389 () Bool)

(assert (=> d!1371389 (eq!547 (extractMap!1110 (Cons!50365 (tuple2!50653 hash!344 newBucket!178) Nil!50365)) (-!316 (extractMap!1110 (Cons!50365 (tuple2!50653 hash!344 (_2!28620 (h!56148 (toList!4116 lm!1477)))) Nil!50365)) key!3287))))

(declare-fun lt!1667314 () Unit!89629)

(declare-fun choose!28754 ((_ BitVec 64) List!50488 List!50488 K!11775 Hashable!5449) Unit!89629)

(assert (=> d!1371389 (= lt!1667314 (choose!28754 hash!344 (_2!28620 (h!56148 (toList!4116 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1371389 (noDuplicateKeys!1054 (_2!28620 (h!56148 (toList!4116 lm!1477))))))

(assert (=> d!1371389 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!46 hash!344 (_2!28620 (h!56148 (toList!4116 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1667314)))

(declare-fun bs!824516 () Bool)

(assert (= bs!824516 d!1371389))

(declare-fun m!5199699 () Bool)

(assert (=> bs!824516 m!5199699))

(declare-fun m!5199701 () Bool)

(assert (=> bs!824516 m!5199701))

(declare-fun m!5199703 () Bool)

(assert (=> bs!824516 m!5199703))

(assert (=> bs!824516 m!5199467))

(declare-fun m!5199705 () Bool)

(assert (=> bs!824516 m!5199705))

(assert (=> bs!824516 m!5199705))

(assert (=> bs!824516 m!5199703))

(declare-fun m!5199707 () Bool)

(assert (=> bs!824516 m!5199707))

(assert (=> bs!824516 m!5199701))

(assert (=> b!4480322 d!1371389))

(declare-fun bs!824517 () Bool)

(declare-fun d!1371405 () Bool)

(assert (= bs!824517 (and d!1371405 d!1371355)))

(declare-fun lambda!165290 () Int)

(assert (=> bs!824517 (= lambda!165290 lambda!165275)))

(declare-fun bs!824518 () Bool)

(assert (= bs!824518 (and d!1371405 start!440644)))

(assert (=> bs!824518 (= lambda!165290 lambda!165181)))

(declare-fun bs!824519 () Bool)

(assert (= bs!824519 (and d!1371405 d!1371341)))

(assert (=> bs!824519 (= lambda!165290 lambda!165267)))

(declare-fun bs!824520 () Bool)

(assert (= bs!824520 (and d!1371405 d!1371349)))

(assert (=> bs!824520 (= lambda!165290 lambda!165274)))

(declare-fun bs!824521 () Bool)

(assert (= bs!824521 (and d!1371405 d!1371359)))

(assert (=> bs!824521 (= lambda!165290 lambda!165280)))

(declare-fun bs!824522 () Bool)

(assert (= bs!824522 (and d!1371405 d!1371383)))

(assert (=> bs!824522 (= lambda!165290 lambda!165284)))

(declare-fun bs!824523 () Bool)

(assert (= bs!824523 (and d!1371405 d!1371295)))

(assert (=> bs!824523 (= lambda!165290 lambda!165184)))

(declare-fun lt!1667315 () ListMap!3377)

(assert (=> d!1371405 (invariantList!947 (toList!4115 lt!1667315))))

(declare-fun e!2790549 () ListMap!3377)

(assert (=> d!1371405 (= lt!1667315 e!2790549)))

(declare-fun c!763246 () Bool)

(assert (=> d!1371405 (= c!763246 ((_ is Cons!50365) (Cons!50365 lt!1666981 Nil!50365)))))

(assert (=> d!1371405 (forall!10046 (Cons!50365 lt!1666981 Nil!50365) lambda!165290)))

(assert (=> d!1371405 (= (extractMap!1110 (Cons!50365 lt!1666981 Nil!50365)) lt!1667315)))

(declare-fun b!4480571 () Bool)

(assert (=> b!4480571 (= e!2790549 (addToMapMapFromBucket!609 (_2!28620 (h!56148 (Cons!50365 lt!1666981 Nil!50365))) (extractMap!1110 (t!357443 (Cons!50365 lt!1666981 Nil!50365)))))))

(declare-fun b!4480572 () Bool)

(assert (=> b!4480572 (= e!2790549 (ListMap!3378 Nil!50364))))

(assert (= (and d!1371405 c!763246) b!4480571))

(assert (= (and d!1371405 (not c!763246)) b!4480572))

(declare-fun m!5199709 () Bool)

(assert (=> d!1371405 m!5199709))

(declare-fun m!5199711 () Bool)

(assert (=> d!1371405 m!5199711))

(declare-fun m!5199713 () Bool)

(assert (=> b!4480571 m!5199713))

(assert (=> b!4480571 m!5199713))

(declare-fun m!5199715 () Bool)

(assert (=> b!4480571 m!5199715))

(assert (=> b!4480322 d!1371405))

(declare-fun d!1371407 () Bool)

(declare-fun e!2790556 () Bool)

(assert (=> d!1371407 e!2790556))

(declare-fun res!1860163 () Bool)

(assert (=> d!1371407 (=> (not res!1860163) (not e!2790556))))

(declare-fun lt!1667328 () ListMap!3377)

(assert (=> d!1371407 (= res!1860163 (not (contains!12951 lt!1667328 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!83 (List!50488 K!11775) List!50488)

(assert (=> d!1371407 (= lt!1667328 (ListMap!3378 (removePresrvNoDuplicatedKeys!83 (toList!4115 (extractMap!1110 (Cons!50365 lt!1666974 Nil!50365))) key!3287)))))

(assert (=> d!1371407 (= (-!316 (extractMap!1110 (Cons!50365 lt!1666974 Nil!50365)) key!3287) lt!1667328)))

(declare-fun b!4480583 () Bool)

(declare-fun content!8162 (List!50491) (InoxSet K!11775))

(assert (=> b!4480583 (= e!2790556 (= ((_ map and) (content!8162 (keys!17414 (extractMap!1110 (Cons!50365 lt!1666974 Nil!50365)))) ((_ map not) (store ((as const (Array K!11775 Bool)) false) key!3287 true))) (content!8162 (keys!17414 lt!1667328))))))

(assert (= (and d!1371407 res!1860163) b!4480583))

(declare-fun m!5199787 () Bool)

(assert (=> d!1371407 m!5199787))

(declare-fun m!5199789 () Bool)

(assert (=> d!1371407 m!5199789))

(declare-fun m!5199791 () Bool)

(assert (=> b!4480583 m!5199791))

(declare-fun m!5199793 () Bool)

(assert (=> b!4480583 m!5199793))

(assert (=> b!4480583 m!5199791))

(declare-fun m!5199795 () Bool)

(assert (=> b!4480583 m!5199795))

(declare-fun m!5199797 () Bool)

(assert (=> b!4480583 m!5199797))

(declare-fun m!5199799 () Bool)

(assert (=> b!4480583 m!5199799))

(assert (=> b!4480583 m!5199221))

(assert (=> b!4480583 m!5199795))

(assert (=> b!4480322 d!1371407))

(declare-fun d!1371419 () Bool)

(declare-fun res!1860168 () Bool)

(declare-fun e!2790561 () Bool)

(assert (=> d!1371419 (=> res!1860168 e!2790561)))

(assert (=> d!1371419 (= res!1860168 ((_ is Nil!50365) (toList!4116 lt!1666963)))))

(assert (=> d!1371419 (= (forall!10046 (toList!4116 lt!1666963) lambda!165181) e!2790561)))

(declare-fun b!4480588 () Bool)

(declare-fun e!2790562 () Bool)

(assert (=> b!4480588 (= e!2790561 e!2790562)))

(declare-fun res!1860169 () Bool)

(assert (=> b!4480588 (=> (not res!1860169) (not e!2790562))))

(declare-fun dynLambda!21044 (Int tuple2!50652) Bool)

(assert (=> b!4480588 (= res!1860169 (dynLambda!21044 lambda!165181 (h!56148 (toList!4116 lt!1666963))))))

(declare-fun b!4480589 () Bool)

(assert (=> b!4480589 (= e!2790562 (forall!10046 (t!357443 (toList!4116 lt!1666963)) lambda!165181))))

(assert (= (and d!1371419 (not res!1860168)) b!4480588))

(assert (= (and b!4480588 res!1860169) b!4480589))

(declare-fun b_lambda!150287 () Bool)

(assert (=> (not b_lambda!150287) (not b!4480588)))

(declare-fun m!5199803 () Bool)

(assert (=> b!4480588 m!5199803))

(declare-fun m!5199805 () Bool)

(assert (=> b!4480589 m!5199805))

(assert (=> b!4480319 d!1371419))

(declare-fun d!1371425 () Bool)

(declare-fun hash!2540 (Hashable!5449 K!11775) (_ BitVec 64))

(assert (=> d!1371425 (= (hash!2535 hashF!1107 key!3287) (hash!2540 hashF!1107 key!3287))))

(declare-fun bs!824559 () Bool)

(assert (= bs!824559 d!1371425))

(declare-fun m!5199807 () Bool)

(assert (=> bs!824559 m!5199807))

(assert (=> b!4480340 d!1371425))

(declare-fun b!4480590 () Bool)

(declare-fun e!2790567 () List!50491)

(assert (=> b!4480590 (= e!2790567 (keys!17414 lt!1666982))))

(declare-fun b!4480591 () Bool)

(declare-fun e!2790566 () Bool)

(declare-fun e!2790568 () Bool)

(assert (=> b!4480591 (= e!2790566 e!2790568)))

(declare-fun res!1860170 () Bool)

(assert (=> b!4480591 (=> (not res!1860170) (not e!2790568))))

(assert (=> b!4480591 (= res!1860170 (isDefined!8254 (getValueByKey!953 (toList!4115 lt!1666982) key!3287)))))

(declare-fun b!4480592 () Bool)

(assert (=> b!4480592 (= e!2790568 (contains!12955 (keys!17414 lt!1666982) key!3287))))

(declare-fun b!4480593 () Bool)

(declare-fun e!2790563 () Unit!89629)

(declare-fun e!2790564 () Unit!89629)

(assert (=> b!4480593 (= e!2790563 e!2790564)))

(declare-fun c!763249 () Bool)

(declare-fun call!312036 () Bool)

(assert (=> b!4480593 (= c!763249 call!312036)))

(declare-fun b!4480594 () Bool)

(declare-fun lt!1667332 () Unit!89629)

(assert (=> b!4480594 (= e!2790563 lt!1667332)))

(declare-fun lt!1667331 () Unit!89629)

(assert (=> b!4480594 (= lt!1667331 (lemmaContainsKeyImpliesGetValueByKeyDefined!857 (toList!4115 lt!1666982) key!3287))))

(assert (=> b!4480594 (isDefined!8254 (getValueByKey!953 (toList!4115 lt!1666982) key!3287))))

(declare-fun lt!1667330 () Unit!89629)

(assert (=> b!4480594 (= lt!1667330 lt!1667331)))

(assert (=> b!4480594 (= lt!1667332 (lemmaInListThenGetKeysListContains!391 (toList!4115 lt!1666982) key!3287))))

(assert (=> b!4480594 call!312036))

(declare-fun b!4480595 () Bool)

(assert (=> b!4480595 (= e!2790567 (getKeysList!395 (toList!4115 lt!1666982)))))

(declare-fun bm!312031 () Bool)

(assert (=> bm!312031 (= call!312036 (contains!12955 e!2790567 key!3287))))

(declare-fun c!763251 () Bool)

(declare-fun c!763250 () Bool)

(assert (=> bm!312031 (= c!763251 c!763250)))

(declare-fun b!4480596 () Bool)

(declare-fun e!2790565 () Bool)

(assert (=> b!4480596 (= e!2790565 (not (contains!12955 (keys!17414 lt!1666982) key!3287)))))

(declare-fun b!4480598 () Bool)

(assert (=> b!4480598 false))

(declare-fun lt!1667336 () Unit!89629)

(declare-fun lt!1667334 () Unit!89629)

(assert (=> b!4480598 (= lt!1667336 lt!1667334)))

(assert (=> b!4480598 (containsKey!1542 (toList!4115 lt!1666982) key!3287)))

(assert (=> b!4480598 (= lt!1667334 (lemmaInGetKeysListThenContainsKey!394 (toList!4115 lt!1666982) key!3287))))

(declare-fun Unit!89675 () Unit!89629)

(assert (=> b!4480598 (= e!2790564 Unit!89675)))

(declare-fun b!4480597 () Bool)

(declare-fun Unit!89676 () Unit!89629)

(assert (=> b!4480597 (= e!2790564 Unit!89676)))

(declare-fun d!1371427 () Bool)

(assert (=> d!1371427 e!2790566))

(declare-fun res!1860171 () Bool)

(assert (=> d!1371427 (=> res!1860171 e!2790566)))

(assert (=> d!1371427 (= res!1860171 e!2790565)))

(declare-fun res!1860172 () Bool)

(assert (=> d!1371427 (=> (not res!1860172) (not e!2790565))))

(declare-fun lt!1667335 () Bool)

(assert (=> d!1371427 (= res!1860172 (not lt!1667335))))

(declare-fun lt!1667333 () Bool)

(assert (=> d!1371427 (= lt!1667335 lt!1667333)))

(declare-fun lt!1667329 () Unit!89629)

(assert (=> d!1371427 (= lt!1667329 e!2790563)))

(assert (=> d!1371427 (= c!763250 lt!1667333)))

(assert (=> d!1371427 (= lt!1667333 (containsKey!1542 (toList!4115 lt!1666982) key!3287))))

(assert (=> d!1371427 (= (contains!12951 lt!1666982 key!3287) lt!1667335)))

(assert (= (and d!1371427 c!763250) b!4480594))

(assert (= (and d!1371427 (not c!763250)) b!4480593))

(assert (= (and b!4480593 c!763249) b!4480598))

(assert (= (and b!4480593 (not c!763249)) b!4480597))

(assert (= (or b!4480594 b!4480593) bm!312031))

(assert (= (and bm!312031 c!763251) b!4480595))

(assert (= (and bm!312031 (not c!763251)) b!4480590))

(assert (= (and d!1371427 res!1860172) b!4480596))

(assert (= (and d!1371427 (not res!1860171)) b!4480591))

(assert (= (and b!4480591 res!1860170) b!4480592))

(declare-fun m!5199809 () Bool)

(assert (=> b!4480595 m!5199809))

(declare-fun m!5199811 () Bool)

(assert (=> b!4480590 m!5199811))

(assert (=> b!4480596 m!5199811))

(assert (=> b!4480596 m!5199811))

(declare-fun m!5199813 () Bool)

(assert (=> b!4480596 m!5199813))

(declare-fun m!5199815 () Bool)

(assert (=> d!1371427 m!5199815))

(declare-fun m!5199817 () Bool)

(assert (=> bm!312031 m!5199817))

(declare-fun m!5199819 () Bool)

(assert (=> b!4480594 m!5199819))

(declare-fun m!5199821 () Bool)

(assert (=> b!4480594 m!5199821))

(assert (=> b!4480594 m!5199821))

(declare-fun m!5199823 () Bool)

(assert (=> b!4480594 m!5199823))

(declare-fun m!5199825 () Bool)

(assert (=> b!4480594 m!5199825))

(assert (=> b!4480591 m!5199821))

(assert (=> b!4480591 m!5199821))

(assert (=> b!4480591 m!5199823))

(assert (=> b!4480592 m!5199811))

(assert (=> b!4480592 m!5199811))

(assert (=> b!4480592 m!5199813))

(assert (=> b!4480598 m!5199815))

(declare-fun m!5199827 () Bool)

(assert (=> b!4480598 m!5199827))

(assert (=> b!4480318 d!1371427))

(declare-fun d!1371429 () Bool)

(declare-fun res!1860173 () Bool)

(declare-fun e!2790569 () Bool)

(assert (=> d!1371429 (=> res!1860173 e!2790569)))

(assert (=> d!1371429 (= res!1860173 ((_ is Nil!50365) (toList!4116 lm!1477)))))

(assert (=> d!1371429 (= (forall!10046 (toList!4116 lm!1477) lambda!165181) e!2790569)))

(declare-fun b!4480601 () Bool)

(declare-fun e!2790570 () Bool)

(assert (=> b!4480601 (= e!2790569 e!2790570)))

(declare-fun res!1860174 () Bool)

(assert (=> b!4480601 (=> (not res!1860174) (not e!2790570))))

(assert (=> b!4480601 (= res!1860174 (dynLambda!21044 lambda!165181 (h!56148 (toList!4116 lm!1477))))))

(declare-fun b!4480602 () Bool)

(assert (=> b!4480602 (= e!2790570 (forall!10046 (t!357443 (toList!4116 lm!1477)) lambda!165181))))

(assert (= (and d!1371429 (not res!1860173)) b!4480601))

(assert (= (and b!4480601 res!1860174) b!4480602))

(declare-fun b_lambda!150289 () Bool)

(assert (=> (not b_lambda!150289) (not b!4480601)))

(declare-fun m!5199829 () Bool)

(assert (=> b!4480601 m!5199829))

(declare-fun m!5199831 () Bool)

(assert (=> b!4480602 m!5199831))

(assert (=> start!440644 d!1371429))

(declare-fun d!1371431 () Bool)

(declare-fun isStrictlySorted!361 (List!50489) Bool)

(assert (=> d!1371431 (= (inv!65959 lm!1477) (isStrictlySorted!361 (toList!4116 lm!1477)))))

(declare-fun bs!824576 () Bool)

(assert (= bs!824576 d!1371431))

(declare-fun m!5199835 () Bool)

(assert (=> bs!824576 m!5199835))

(assert (=> start!440644 d!1371431))

(declare-fun d!1371435 () Bool)

(declare-fun e!2790577 () Bool)

(assert (=> d!1371435 e!2790577))

(declare-fun res!1860178 () Bool)

(assert (=> d!1371435 (=> (not res!1860178) (not e!2790577))))

(declare-fun lt!1667345 () ListMap!3377)

(assert (=> d!1371435 (= res!1860178 (not (contains!12951 lt!1667345 key!3287)))))

(assert (=> d!1371435 (= lt!1667345 (ListMap!3378 (removePresrvNoDuplicatedKeys!83 (toList!4115 (extractMap!1110 (Cons!50365 lt!1666974 lt!1666967))) key!3287)))))

(assert (=> d!1371435 (= (-!316 (extractMap!1110 (Cons!50365 lt!1666974 lt!1666967)) key!3287) lt!1667345)))

(declare-fun b!4480612 () Bool)

(assert (=> b!4480612 (= e!2790577 (= ((_ map and) (content!8162 (keys!17414 (extractMap!1110 (Cons!50365 lt!1666974 lt!1666967)))) ((_ map not) (store ((as const (Array K!11775 Bool)) false) key!3287 true))) (content!8162 (keys!17414 lt!1667345))))))

(assert (= (and d!1371435 res!1860178) b!4480612))

(declare-fun m!5199841 () Bool)

(assert (=> d!1371435 m!5199841))

(declare-fun m!5199845 () Bool)

(assert (=> d!1371435 m!5199845))

(declare-fun m!5199849 () Bool)

(assert (=> b!4480612 m!5199849))

(declare-fun m!5199851 () Bool)

(assert (=> b!4480612 m!5199851))

(assert (=> b!4480612 m!5199849))

(declare-fun m!5199855 () Bool)

(assert (=> b!4480612 m!5199855))

(declare-fun m!5199859 () Bool)

(assert (=> b!4480612 m!5199859))

(assert (=> b!4480612 m!5199799))

(assert (=> b!4480612 m!5199165))

(assert (=> b!4480612 m!5199855))

(assert (=> b!4480320 d!1371435))

(declare-fun bs!824596 () Bool)

(declare-fun d!1371437 () Bool)

(assert (= bs!824596 (and d!1371437 d!1371355)))

(declare-fun lambda!165300 () Int)

(assert (=> bs!824596 (= lambda!165300 lambda!165275)))

(declare-fun bs!824597 () Bool)

(assert (= bs!824597 (and d!1371437 start!440644)))

(assert (=> bs!824597 (= lambda!165300 lambda!165181)))

(declare-fun bs!824598 () Bool)

(assert (= bs!824598 (and d!1371437 d!1371341)))

(assert (=> bs!824598 (= lambda!165300 lambda!165267)))

(declare-fun bs!824599 () Bool)

(assert (= bs!824599 (and d!1371437 d!1371405)))

(assert (=> bs!824599 (= lambda!165300 lambda!165290)))

(declare-fun bs!824600 () Bool)

(assert (= bs!824600 (and d!1371437 d!1371349)))

(assert (=> bs!824600 (= lambda!165300 lambda!165274)))

(declare-fun bs!824601 () Bool)

(assert (= bs!824601 (and d!1371437 d!1371359)))

(assert (=> bs!824601 (= lambda!165300 lambda!165280)))

(declare-fun bs!824602 () Bool)

(assert (= bs!824602 (and d!1371437 d!1371383)))

(assert (=> bs!824602 (= lambda!165300 lambda!165284)))

(declare-fun bs!824603 () Bool)

(assert (= bs!824603 (and d!1371437 d!1371295)))

(assert (=> bs!824603 (= lambda!165300 lambda!165184)))

(assert (=> d!1371437 (eq!547 (extractMap!1110 (Cons!50365 (tuple2!50653 hash!344 newBucket!178) (tail!7560 (toList!4116 lm!1477)))) (-!316 (extractMap!1110 (Cons!50365 (tuple2!50653 hash!344 (_2!28620 (h!56148 (toList!4116 lm!1477)))) (tail!7560 (toList!4116 lm!1477)))) key!3287))))

(declare-fun lt!1667357 () Unit!89629)

(declare-fun choose!28755 (ListLongMap!2747 (_ BitVec 64) List!50488 List!50488 K!11775 Hashable!5449) Unit!89629)

(assert (=> d!1371437 (= lt!1667357 (choose!28755 lm!1477 hash!344 (_2!28620 (h!56148 (toList!4116 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1371437 (forall!10046 (toList!4116 lm!1477) lambda!165300)))

(assert (=> d!1371437 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!14 lm!1477 hash!344 (_2!28620 (h!56148 (toList!4116 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1667357)))

(declare-fun bs!824604 () Bool)

(assert (= bs!824604 d!1371437))

(declare-fun m!5199899 () Bool)

(assert (=> bs!824604 m!5199899))

(declare-fun m!5199901 () Bool)

(assert (=> bs!824604 m!5199901))

(declare-fun m!5199903 () Bool)

(assert (=> bs!824604 m!5199903))

(declare-fun m!5199905 () Bool)

(assert (=> bs!824604 m!5199905))

(declare-fun m!5199907 () Bool)

(assert (=> bs!824604 m!5199907))

(assert (=> bs!824604 m!5199901))

(assert (=> bs!824604 m!5199905))

(assert (=> bs!824604 m!5199903))

(declare-fun m!5199909 () Bool)

(assert (=> bs!824604 m!5199909))

(assert (=> bs!824604 m!5199161))

(assert (=> b!4480320 d!1371437))

(declare-fun bs!824605 () Bool)

(declare-fun d!1371449 () Bool)

(assert (= bs!824605 (and d!1371449 d!1371355)))

(declare-fun lambda!165301 () Int)

(assert (=> bs!824605 (= lambda!165301 lambda!165275)))

(declare-fun bs!824606 () Bool)

(assert (= bs!824606 (and d!1371449 start!440644)))

(assert (=> bs!824606 (= lambda!165301 lambda!165181)))

(declare-fun bs!824607 () Bool)

(assert (= bs!824607 (and d!1371449 d!1371437)))

(assert (=> bs!824607 (= lambda!165301 lambda!165300)))

(declare-fun bs!824608 () Bool)

(assert (= bs!824608 (and d!1371449 d!1371341)))

(assert (=> bs!824608 (= lambda!165301 lambda!165267)))

(declare-fun bs!824609 () Bool)

(assert (= bs!824609 (and d!1371449 d!1371405)))

(assert (=> bs!824609 (= lambda!165301 lambda!165290)))

(declare-fun bs!824610 () Bool)

(assert (= bs!824610 (and d!1371449 d!1371349)))

(assert (=> bs!824610 (= lambda!165301 lambda!165274)))

(declare-fun bs!824611 () Bool)

(assert (= bs!824611 (and d!1371449 d!1371359)))

(assert (=> bs!824611 (= lambda!165301 lambda!165280)))

(declare-fun bs!824612 () Bool)

(assert (= bs!824612 (and d!1371449 d!1371383)))

(assert (=> bs!824612 (= lambda!165301 lambda!165284)))

(declare-fun bs!824613 () Bool)

(assert (= bs!824613 (and d!1371449 d!1371295)))

(assert (=> bs!824613 (= lambda!165301 lambda!165184)))

(declare-fun lt!1667358 () ListMap!3377)

(assert (=> d!1371449 (invariantList!947 (toList!4115 lt!1667358))))

(declare-fun e!2790591 () ListMap!3377)

(assert (=> d!1371449 (= lt!1667358 e!2790591)))

(declare-fun c!763259 () Bool)

(assert (=> d!1371449 (= c!763259 ((_ is Cons!50365) (Cons!50365 lt!1666981 lt!1666967)))))

(assert (=> d!1371449 (forall!10046 (Cons!50365 lt!1666981 lt!1666967) lambda!165301)))

(assert (=> d!1371449 (= (extractMap!1110 (Cons!50365 lt!1666981 lt!1666967)) lt!1667358)))

(declare-fun b!4480634 () Bool)

(assert (=> b!4480634 (= e!2790591 (addToMapMapFromBucket!609 (_2!28620 (h!56148 (Cons!50365 lt!1666981 lt!1666967))) (extractMap!1110 (t!357443 (Cons!50365 lt!1666981 lt!1666967)))))))

(declare-fun b!4480635 () Bool)

(assert (=> b!4480635 (= e!2790591 (ListMap!3378 Nil!50364))))

(assert (= (and d!1371449 c!763259) b!4480634))

(assert (= (and d!1371449 (not c!763259)) b!4480635))

(declare-fun m!5199911 () Bool)

(assert (=> d!1371449 m!5199911))

(declare-fun m!5199913 () Bool)

(assert (=> d!1371449 m!5199913))

(declare-fun m!5199915 () Bool)

(assert (=> b!4480634 m!5199915))

(assert (=> b!4480634 m!5199915))

(declare-fun m!5199917 () Bool)

(assert (=> b!4480634 m!5199917))

(assert (=> b!4480320 d!1371449))

(declare-fun bs!824614 () Bool)

(declare-fun d!1371451 () Bool)

(assert (= bs!824614 (and d!1371451 start!440644)))

(declare-fun lambda!165302 () Int)

(assert (=> bs!824614 (= lambda!165302 lambda!165181)))

(declare-fun bs!824615 () Bool)

(assert (= bs!824615 (and d!1371451 d!1371437)))

(assert (=> bs!824615 (= lambda!165302 lambda!165300)))

(declare-fun bs!824616 () Bool)

(assert (= bs!824616 (and d!1371451 d!1371341)))

(assert (=> bs!824616 (= lambda!165302 lambda!165267)))

(declare-fun bs!824617 () Bool)

(assert (= bs!824617 (and d!1371451 d!1371405)))

(assert (=> bs!824617 (= lambda!165302 lambda!165290)))

(declare-fun bs!824618 () Bool)

(assert (= bs!824618 (and d!1371451 d!1371355)))

(assert (=> bs!824618 (= lambda!165302 lambda!165275)))

(declare-fun bs!824619 () Bool)

(assert (= bs!824619 (and d!1371451 d!1371449)))

(assert (=> bs!824619 (= lambda!165302 lambda!165301)))

(declare-fun bs!824620 () Bool)

(assert (= bs!824620 (and d!1371451 d!1371349)))

(assert (=> bs!824620 (= lambda!165302 lambda!165274)))

(declare-fun bs!824621 () Bool)

(assert (= bs!824621 (and d!1371451 d!1371359)))

(assert (=> bs!824621 (= lambda!165302 lambda!165280)))

(declare-fun bs!824622 () Bool)

(assert (= bs!824622 (and d!1371451 d!1371383)))

(assert (=> bs!824622 (= lambda!165302 lambda!165284)))

(declare-fun bs!824623 () Bool)

(assert (= bs!824623 (and d!1371451 d!1371295)))

(assert (=> bs!824623 (= lambda!165302 lambda!165184)))

(declare-fun lt!1667359 () ListMap!3377)

(assert (=> d!1371451 (invariantList!947 (toList!4115 lt!1667359))))

(declare-fun e!2790592 () ListMap!3377)

(assert (=> d!1371451 (= lt!1667359 e!2790592)))

(declare-fun c!763260 () Bool)

(assert (=> d!1371451 (= c!763260 ((_ is Cons!50365) (Cons!50365 lt!1666974 lt!1666967)))))

(assert (=> d!1371451 (forall!10046 (Cons!50365 lt!1666974 lt!1666967) lambda!165302)))

(assert (=> d!1371451 (= (extractMap!1110 (Cons!50365 lt!1666974 lt!1666967)) lt!1667359)))

(declare-fun b!4480636 () Bool)

(assert (=> b!4480636 (= e!2790592 (addToMapMapFromBucket!609 (_2!28620 (h!56148 (Cons!50365 lt!1666974 lt!1666967))) (extractMap!1110 (t!357443 (Cons!50365 lt!1666974 lt!1666967)))))))

(declare-fun b!4480637 () Bool)

(assert (=> b!4480637 (= e!2790592 (ListMap!3378 Nil!50364))))

(assert (= (and d!1371451 c!763260) b!4480636))

(assert (= (and d!1371451 (not c!763260)) b!4480637))

(declare-fun m!5199919 () Bool)

(assert (=> d!1371451 m!5199919))

(declare-fun m!5199921 () Bool)

(assert (=> d!1371451 m!5199921))

(declare-fun m!5199923 () Bool)

(assert (=> b!4480636 m!5199923))

(assert (=> b!4480636 m!5199923))

(declare-fun m!5199925 () Bool)

(assert (=> b!4480636 m!5199925))

(assert (=> b!4480320 d!1371451))

(declare-fun d!1371453 () Bool)

(assert (=> d!1371453 (= (tail!7560 (toList!4116 lm!1477)) (t!357443 (toList!4116 lm!1477)))))

(assert (=> b!4480320 d!1371453))

(declare-fun d!1371455 () Bool)

(assert (=> d!1371455 (= (eq!547 (extractMap!1110 (Cons!50365 lt!1666981 lt!1666967)) (-!316 (extractMap!1110 (Cons!50365 lt!1666974 lt!1666967)) key!3287)) (= (content!8160 (toList!4115 (extractMap!1110 (Cons!50365 lt!1666981 lt!1666967)))) (content!8160 (toList!4115 (-!316 (extractMap!1110 (Cons!50365 lt!1666974 lt!1666967)) key!3287)))))))

(declare-fun bs!824624 () Bool)

(assert (= bs!824624 d!1371455))

(declare-fun m!5199927 () Bool)

(assert (=> bs!824624 m!5199927))

(declare-fun m!5199929 () Bool)

(assert (=> bs!824624 m!5199929))

(assert (=> b!4480320 d!1371455))

(declare-fun bs!824625 () Bool)

(declare-fun d!1371457 () Bool)

(assert (= bs!824625 (and d!1371457 start!440644)))

(declare-fun lambda!165303 () Int)

(assert (=> bs!824625 (= lambda!165303 lambda!165181)))

(declare-fun bs!824626 () Bool)

(assert (= bs!824626 (and d!1371457 d!1371341)))

(assert (=> bs!824626 (= lambda!165303 lambda!165267)))

(declare-fun bs!824627 () Bool)

(assert (= bs!824627 (and d!1371457 d!1371405)))

(assert (=> bs!824627 (= lambda!165303 lambda!165290)))

(declare-fun bs!824628 () Bool)

(assert (= bs!824628 (and d!1371457 d!1371355)))

(assert (=> bs!824628 (= lambda!165303 lambda!165275)))

(declare-fun bs!824629 () Bool)

(assert (= bs!824629 (and d!1371457 d!1371449)))

(assert (=> bs!824629 (= lambda!165303 lambda!165301)))

(declare-fun bs!824630 () Bool)

(assert (= bs!824630 (and d!1371457 d!1371349)))

(assert (=> bs!824630 (= lambda!165303 lambda!165274)))

(declare-fun bs!824631 () Bool)

(assert (= bs!824631 (and d!1371457 d!1371359)))

(assert (=> bs!824631 (= lambda!165303 lambda!165280)))

(declare-fun bs!824632 () Bool)

(assert (= bs!824632 (and d!1371457 d!1371451)))

(assert (=> bs!824632 (= lambda!165303 lambda!165302)))

(declare-fun bs!824633 () Bool)

(assert (= bs!824633 (and d!1371457 d!1371437)))

(assert (=> bs!824633 (= lambda!165303 lambda!165300)))

(declare-fun bs!824634 () Bool)

(assert (= bs!824634 (and d!1371457 d!1371383)))

(assert (=> bs!824634 (= lambda!165303 lambda!165284)))

(declare-fun bs!824635 () Bool)

(assert (= bs!824635 (and d!1371457 d!1371295)))

(assert (=> bs!824635 (= lambda!165303 lambda!165184)))

(declare-fun lt!1667360 () ListMap!3377)

(assert (=> d!1371457 (invariantList!947 (toList!4115 lt!1667360))))

(declare-fun e!2790593 () ListMap!3377)

(assert (=> d!1371457 (= lt!1667360 e!2790593)))

(declare-fun c!763261 () Bool)

(assert (=> d!1371457 (= c!763261 ((_ is Cons!50365) (t!357443 (toList!4116 lm!1477))))))

(assert (=> d!1371457 (forall!10046 (t!357443 (toList!4116 lm!1477)) lambda!165303)))

(assert (=> d!1371457 (= (extractMap!1110 (t!357443 (toList!4116 lm!1477))) lt!1667360)))

(declare-fun b!4480638 () Bool)

(assert (=> b!4480638 (= e!2790593 (addToMapMapFromBucket!609 (_2!28620 (h!56148 (t!357443 (toList!4116 lm!1477)))) (extractMap!1110 (t!357443 (t!357443 (toList!4116 lm!1477))))))))

(declare-fun b!4480639 () Bool)

(assert (=> b!4480639 (= e!2790593 (ListMap!3378 Nil!50364))))

(assert (= (and d!1371457 c!763261) b!4480638))

(assert (= (and d!1371457 (not c!763261)) b!4480639))

(declare-fun m!5199931 () Bool)

(assert (=> d!1371457 m!5199931))

(declare-fun m!5199933 () Bool)

(assert (=> d!1371457 m!5199933))

(declare-fun m!5199935 () Bool)

(assert (=> b!4480638 m!5199935))

(assert (=> b!4480638 m!5199935))

(declare-fun m!5199937 () Bool)

(assert (=> b!4480638 m!5199937))

(assert (=> b!4480337 d!1371457))

(declare-fun bs!824636 () Bool)

(declare-fun d!1371459 () Bool)

(assert (= bs!824636 (and d!1371459 d!1371457)))

(declare-fun lambda!165304 () Int)

(assert (=> bs!824636 (= lambda!165304 lambda!165303)))

(declare-fun bs!824637 () Bool)

(assert (= bs!824637 (and d!1371459 start!440644)))

(assert (=> bs!824637 (= lambda!165304 lambda!165181)))

(declare-fun bs!824638 () Bool)

(assert (= bs!824638 (and d!1371459 d!1371341)))

(assert (=> bs!824638 (= lambda!165304 lambda!165267)))

(declare-fun bs!824639 () Bool)

(assert (= bs!824639 (and d!1371459 d!1371405)))

(assert (=> bs!824639 (= lambda!165304 lambda!165290)))

(declare-fun bs!824640 () Bool)

(assert (= bs!824640 (and d!1371459 d!1371355)))

(assert (=> bs!824640 (= lambda!165304 lambda!165275)))

(declare-fun bs!824641 () Bool)

(assert (= bs!824641 (and d!1371459 d!1371449)))

(assert (=> bs!824641 (= lambda!165304 lambda!165301)))

(declare-fun bs!824642 () Bool)

(assert (= bs!824642 (and d!1371459 d!1371349)))

(assert (=> bs!824642 (= lambda!165304 lambda!165274)))

(declare-fun bs!824643 () Bool)

(assert (= bs!824643 (and d!1371459 d!1371359)))

(assert (=> bs!824643 (= lambda!165304 lambda!165280)))

(declare-fun bs!824644 () Bool)

(assert (= bs!824644 (and d!1371459 d!1371451)))

(assert (=> bs!824644 (= lambda!165304 lambda!165302)))

(declare-fun bs!824645 () Bool)

(assert (= bs!824645 (and d!1371459 d!1371437)))

(assert (=> bs!824645 (= lambda!165304 lambda!165300)))

(declare-fun bs!824646 () Bool)

(assert (= bs!824646 (and d!1371459 d!1371383)))

(assert (=> bs!824646 (= lambda!165304 lambda!165284)))

(declare-fun bs!824647 () Bool)

(assert (= bs!824647 (and d!1371459 d!1371295)))

(assert (=> bs!824647 (= lambda!165304 lambda!165184)))

(declare-fun lt!1667361 () ListMap!3377)

(assert (=> d!1371459 (invariantList!947 (toList!4115 lt!1667361))))

(declare-fun e!2790594 () ListMap!3377)

(assert (=> d!1371459 (= lt!1667361 e!2790594)))

(declare-fun c!763262 () Bool)

(assert (=> d!1371459 (= c!763262 ((_ is Cons!50365) (toList!4116 lt!1666985)))))

(assert (=> d!1371459 (forall!10046 (toList!4116 lt!1666985) lambda!165304)))

(assert (=> d!1371459 (= (extractMap!1110 (toList!4116 lt!1666985)) lt!1667361)))

(declare-fun b!4480640 () Bool)

(assert (=> b!4480640 (= e!2790594 (addToMapMapFromBucket!609 (_2!28620 (h!56148 (toList!4116 lt!1666985))) (extractMap!1110 (t!357443 (toList!4116 lt!1666985)))))))

(declare-fun b!4480641 () Bool)

(assert (=> b!4480641 (= e!2790594 (ListMap!3378 Nil!50364))))

(assert (= (and d!1371459 c!763262) b!4480640))

(assert (= (and d!1371459 (not c!763262)) b!4480641))

(declare-fun m!5199939 () Bool)

(assert (=> d!1371459 m!5199939))

(declare-fun m!5199941 () Bool)

(assert (=> d!1371459 m!5199941))

(declare-fun m!5199943 () Bool)

(assert (=> b!4480640 m!5199943))

(assert (=> b!4480640 m!5199943))

(declare-fun m!5199945 () Bool)

(assert (=> b!4480640 m!5199945))

(assert (=> b!4480337 d!1371459))

(declare-fun b!4480642 () Bool)

(declare-fun e!2790599 () List!50491)

(assert (=> b!4480642 (= e!2790599 (keys!17414 (extractMap!1110 (toList!4116 lm!1477))))))

(declare-fun b!4480643 () Bool)

(declare-fun e!2790598 () Bool)

(declare-fun e!2790600 () Bool)

(assert (=> b!4480643 (= e!2790598 e!2790600)))

(declare-fun res!1860182 () Bool)

(assert (=> b!4480643 (=> (not res!1860182) (not e!2790600))))

(assert (=> b!4480643 (= res!1860182 (isDefined!8254 (getValueByKey!953 (toList!4115 (extractMap!1110 (toList!4116 lm!1477))) key!3287)))))

(declare-fun b!4480644 () Bool)

(assert (=> b!4480644 (= e!2790600 (contains!12955 (keys!17414 (extractMap!1110 (toList!4116 lm!1477))) key!3287))))

(declare-fun b!4480645 () Bool)

(declare-fun e!2790595 () Unit!89629)

(declare-fun e!2790596 () Unit!89629)

(assert (=> b!4480645 (= e!2790595 e!2790596)))

(declare-fun c!763263 () Bool)

(declare-fun call!312039 () Bool)

(assert (=> b!4480645 (= c!763263 call!312039)))

(declare-fun b!4480646 () Bool)

(declare-fun lt!1667365 () Unit!89629)

(assert (=> b!4480646 (= e!2790595 lt!1667365)))

(declare-fun lt!1667364 () Unit!89629)

(assert (=> b!4480646 (= lt!1667364 (lemmaContainsKeyImpliesGetValueByKeyDefined!857 (toList!4115 (extractMap!1110 (toList!4116 lm!1477))) key!3287))))

(assert (=> b!4480646 (isDefined!8254 (getValueByKey!953 (toList!4115 (extractMap!1110 (toList!4116 lm!1477))) key!3287))))

(declare-fun lt!1667363 () Unit!89629)

(assert (=> b!4480646 (= lt!1667363 lt!1667364)))

(assert (=> b!4480646 (= lt!1667365 (lemmaInListThenGetKeysListContains!391 (toList!4115 (extractMap!1110 (toList!4116 lm!1477))) key!3287))))

(assert (=> b!4480646 call!312039))

(declare-fun b!4480647 () Bool)

(assert (=> b!4480647 (= e!2790599 (getKeysList!395 (toList!4115 (extractMap!1110 (toList!4116 lm!1477)))))))

(declare-fun bm!312034 () Bool)

(assert (=> bm!312034 (= call!312039 (contains!12955 e!2790599 key!3287))))

(declare-fun c!763265 () Bool)

(declare-fun c!763264 () Bool)

(assert (=> bm!312034 (= c!763265 c!763264)))

(declare-fun b!4480648 () Bool)

(declare-fun e!2790597 () Bool)

(assert (=> b!4480648 (= e!2790597 (not (contains!12955 (keys!17414 (extractMap!1110 (toList!4116 lm!1477))) key!3287)))))

(declare-fun b!4480650 () Bool)

(assert (=> b!4480650 false))

(declare-fun lt!1667369 () Unit!89629)

(declare-fun lt!1667367 () Unit!89629)

(assert (=> b!4480650 (= lt!1667369 lt!1667367)))

(assert (=> b!4480650 (containsKey!1542 (toList!4115 (extractMap!1110 (toList!4116 lm!1477))) key!3287)))

(assert (=> b!4480650 (= lt!1667367 (lemmaInGetKeysListThenContainsKey!394 (toList!4115 (extractMap!1110 (toList!4116 lm!1477))) key!3287))))

(declare-fun Unit!89688 () Unit!89629)

(assert (=> b!4480650 (= e!2790596 Unit!89688)))

(declare-fun b!4480649 () Bool)

(declare-fun Unit!89689 () Unit!89629)

(assert (=> b!4480649 (= e!2790596 Unit!89689)))

(declare-fun d!1371461 () Bool)

(assert (=> d!1371461 e!2790598))

(declare-fun res!1860183 () Bool)

(assert (=> d!1371461 (=> res!1860183 e!2790598)))

(assert (=> d!1371461 (= res!1860183 e!2790597)))

(declare-fun res!1860184 () Bool)

(assert (=> d!1371461 (=> (not res!1860184) (not e!2790597))))

(declare-fun lt!1667368 () Bool)

(assert (=> d!1371461 (= res!1860184 (not lt!1667368))))

(declare-fun lt!1667366 () Bool)

(assert (=> d!1371461 (= lt!1667368 lt!1667366)))

(declare-fun lt!1667362 () Unit!89629)

(assert (=> d!1371461 (= lt!1667362 e!2790595)))

(assert (=> d!1371461 (= c!763264 lt!1667366)))

(assert (=> d!1371461 (= lt!1667366 (containsKey!1542 (toList!4115 (extractMap!1110 (toList!4116 lm!1477))) key!3287))))

(assert (=> d!1371461 (= (contains!12951 (extractMap!1110 (toList!4116 lm!1477)) key!3287) lt!1667368)))

(assert (= (and d!1371461 c!763264) b!4480646))

(assert (= (and d!1371461 (not c!763264)) b!4480645))

(assert (= (and b!4480645 c!763263) b!4480650))

(assert (= (and b!4480645 (not c!763263)) b!4480649))

(assert (= (or b!4480646 b!4480645) bm!312034))

(assert (= (and bm!312034 c!763265) b!4480647))

(assert (= (and bm!312034 (not c!763265)) b!4480642))

(assert (= (and d!1371461 res!1860184) b!4480648))

(assert (= (and d!1371461 (not res!1860183)) b!4480643))

(assert (= (and b!4480643 res!1860182) b!4480644))

(declare-fun m!5199947 () Bool)

(assert (=> b!4480647 m!5199947))

(assert (=> b!4480642 m!5199211))

(declare-fun m!5199949 () Bool)

(assert (=> b!4480642 m!5199949))

(assert (=> b!4480648 m!5199211))

(assert (=> b!4480648 m!5199949))

(assert (=> b!4480648 m!5199949))

(declare-fun m!5199951 () Bool)

(assert (=> b!4480648 m!5199951))

(declare-fun m!5199953 () Bool)

(assert (=> d!1371461 m!5199953))

(declare-fun m!5199955 () Bool)

(assert (=> bm!312034 m!5199955))

(declare-fun m!5199957 () Bool)

(assert (=> b!4480646 m!5199957))

(declare-fun m!5199959 () Bool)

(assert (=> b!4480646 m!5199959))

(assert (=> b!4480646 m!5199959))

(declare-fun m!5199961 () Bool)

(assert (=> b!4480646 m!5199961))

(declare-fun m!5199963 () Bool)

(assert (=> b!4480646 m!5199963))

(assert (=> b!4480643 m!5199959))

(assert (=> b!4480643 m!5199959))

(assert (=> b!4480643 m!5199961))

(assert (=> b!4480644 m!5199211))

(assert (=> b!4480644 m!5199949))

(assert (=> b!4480644 m!5199949))

(assert (=> b!4480644 m!5199951))

(assert (=> b!4480650 m!5199953))

(declare-fun m!5199965 () Bool)

(assert (=> b!4480650 m!5199965))

(assert (=> b!4480326 d!1371461))

(declare-fun bs!824648 () Bool)

(declare-fun d!1371463 () Bool)

(assert (= bs!824648 (and d!1371463 d!1371457)))

(declare-fun lambda!165305 () Int)

(assert (=> bs!824648 (= lambda!165305 lambda!165303)))

(declare-fun bs!824649 () Bool)

(assert (= bs!824649 (and d!1371463 start!440644)))

(assert (=> bs!824649 (= lambda!165305 lambda!165181)))

(declare-fun bs!824650 () Bool)

(assert (= bs!824650 (and d!1371463 d!1371459)))

(assert (=> bs!824650 (= lambda!165305 lambda!165304)))

(declare-fun bs!824651 () Bool)

(assert (= bs!824651 (and d!1371463 d!1371341)))

(assert (=> bs!824651 (= lambda!165305 lambda!165267)))

(declare-fun bs!824652 () Bool)

(assert (= bs!824652 (and d!1371463 d!1371405)))

(assert (=> bs!824652 (= lambda!165305 lambda!165290)))

(declare-fun bs!824653 () Bool)

(assert (= bs!824653 (and d!1371463 d!1371355)))

(assert (=> bs!824653 (= lambda!165305 lambda!165275)))

(declare-fun bs!824654 () Bool)

(assert (= bs!824654 (and d!1371463 d!1371449)))

(assert (=> bs!824654 (= lambda!165305 lambda!165301)))

(declare-fun bs!824655 () Bool)

(assert (= bs!824655 (and d!1371463 d!1371349)))

(assert (=> bs!824655 (= lambda!165305 lambda!165274)))

(declare-fun bs!824656 () Bool)

(assert (= bs!824656 (and d!1371463 d!1371359)))

(assert (=> bs!824656 (= lambda!165305 lambda!165280)))

(declare-fun bs!824657 () Bool)

(assert (= bs!824657 (and d!1371463 d!1371451)))

(assert (=> bs!824657 (= lambda!165305 lambda!165302)))

(declare-fun bs!824658 () Bool)

(assert (= bs!824658 (and d!1371463 d!1371437)))

(assert (=> bs!824658 (= lambda!165305 lambda!165300)))

(declare-fun bs!824659 () Bool)

(assert (= bs!824659 (and d!1371463 d!1371383)))

(assert (=> bs!824659 (= lambda!165305 lambda!165284)))

(declare-fun bs!824660 () Bool)

(assert (= bs!824660 (and d!1371463 d!1371295)))

(assert (=> bs!824660 (= lambda!165305 lambda!165184)))

(declare-fun lt!1667370 () ListMap!3377)

(assert (=> d!1371463 (invariantList!947 (toList!4115 lt!1667370))))

(declare-fun e!2790601 () ListMap!3377)

(assert (=> d!1371463 (= lt!1667370 e!2790601)))

(declare-fun c!763266 () Bool)

(assert (=> d!1371463 (= c!763266 ((_ is Cons!50365) (toList!4116 lm!1477)))))

(assert (=> d!1371463 (forall!10046 (toList!4116 lm!1477) lambda!165305)))

(assert (=> d!1371463 (= (extractMap!1110 (toList!4116 lm!1477)) lt!1667370)))

(declare-fun b!4480651 () Bool)

(assert (=> b!4480651 (= e!2790601 (addToMapMapFromBucket!609 (_2!28620 (h!56148 (toList!4116 lm!1477))) (extractMap!1110 (t!357443 (toList!4116 lm!1477)))))))

(declare-fun b!4480652 () Bool)

(assert (=> b!4480652 (= e!2790601 (ListMap!3378 Nil!50364))))

(assert (= (and d!1371463 c!763266) b!4480651))

(assert (= (and d!1371463 (not c!763266)) b!4480652))

(declare-fun m!5199967 () Bool)

(assert (=> d!1371463 m!5199967))

(declare-fun m!5199969 () Bool)

(assert (=> d!1371463 m!5199969))

(assert (=> b!4480651 m!5199187))

(assert (=> b!4480651 m!5199187))

(declare-fun m!5199971 () Bool)

(assert (=> b!4480651 m!5199971))

(assert (=> b!4480326 d!1371463))

(declare-fun d!1371465 () Bool)

(declare-fun res!1860193 () Bool)

(declare-fun e!2790608 () Bool)

(assert (=> d!1371465 (=> res!1860193 e!2790608)))

(declare-fun e!2790609 () Bool)

(assert (=> d!1371465 (= res!1860193 e!2790609)))

(declare-fun res!1860191 () Bool)

(assert (=> d!1371465 (=> (not res!1860191) (not e!2790609))))

(assert (=> d!1371465 (= res!1860191 ((_ is Cons!50365) lt!1666983))))

(assert (=> d!1371465 (= (containsKeyBiggerList!54 lt!1666983 key!3287) e!2790608)))

(declare-fun b!4480659 () Bool)

(assert (=> b!4480659 (= e!2790609 (containsKey!1538 (_2!28620 (h!56148 lt!1666983)) key!3287))))

(declare-fun b!4480660 () Bool)

(declare-fun e!2790610 () Bool)

(assert (=> b!4480660 (= e!2790608 e!2790610)))

(declare-fun res!1860192 () Bool)

(assert (=> b!4480660 (=> (not res!1860192) (not e!2790610))))

(assert (=> b!4480660 (= res!1860192 ((_ is Cons!50365) lt!1666983))))

(declare-fun b!4480661 () Bool)

(assert (=> b!4480661 (= e!2790610 (containsKeyBiggerList!54 (t!357443 lt!1666983) key!3287))))

(assert (= (and d!1371465 res!1860191) b!4480659))

(assert (= (and d!1371465 (not res!1860193)) b!4480660))

(assert (= (and b!4480660 res!1860192) b!4480661))

(declare-fun m!5199973 () Bool)

(assert (=> b!4480659 m!5199973))

(declare-fun m!5199975 () Bool)

(assert (=> b!4480661 m!5199975))

(assert (=> b!4480339 d!1371465))

(declare-fun bs!824661 () Bool)

(declare-fun d!1371467 () Bool)

(assert (= bs!824661 (and d!1371467 b!4480418)))

(declare-fun lambda!165308 () Int)

(assert (=> bs!824661 (not (= lambda!165308 lambda!165262))))

(declare-fun bs!824662 () Bool)

(assert (= bs!824662 (and d!1371467 d!1371297)))

(assert (=> bs!824662 (not (= lambda!165308 lambda!165266))))

(declare-fun bs!824663 () Bool)

(assert (= bs!824663 (and d!1371467 b!4480434)))

(assert (=> bs!824663 (not (= lambda!165308 lambda!165269))))

(declare-fun bs!824664 () Bool)

(assert (= bs!824664 (and d!1371467 d!1371343)))

(assert (=> bs!824664 (not (= lambda!165308 lambda!165271))))

(declare-fun bs!824665 () Bool)

(assert (= bs!824665 (and d!1371467 b!4480422)))

(assert (=> bs!824665 (not (= lambda!165308 lambda!165264))))

(declare-fun bs!824666 () Bool)

(assert (= bs!824666 (and d!1371467 b!4480430)))

(assert (=> bs!824666 (not (= lambda!165308 lambda!165268))))

(assert (=> bs!824665 (not (= lambda!165308 lambda!165265))))

(assert (=> bs!824663 (not (= lambda!165308 lambda!165270))))

(assert (=> d!1371467 true))

(assert (=> d!1371467 true))

(assert (=> d!1371467 (= (allKeysSameHash!908 newBucket!178 hash!344 hashF!1107) (forall!10048 newBucket!178 lambda!165308))))

(declare-fun bs!824667 () Bool)

(assert (= bs!824667 d!1371467))

(declare-fun m!5199977 () Bool)

(assert (=> bs!824667 m!5199977))

(assert (=> b!4480317 d!1371467))

(declare-fun bs!824668 () Bool)

(declare-fun d!1371469 () Bool)

(assert (= bs!824668 (and d!1371469 d!1371457)))

(declare-fun lambda!165311 () Int)

(assert (=> bs!824668 (= lambda!165311 lambda!165303)))

(declare-fun bs!824669 () Bool)

(assert (= bs!824669 (and d!1371469 d!1371463)))

(assert (=> bs!824669 (= lambda!165311 lambda!165305)))

(declare-fun bs!824670 () Bool)

(assert (= bs!824670 (and d!1371469 start!440644)))

(assert (=> bs!824670 (= lambda!165311 lambda!165181)))

(declare-fun bs!824671 () Bool)

(assert (= bs!824671 (and d!1371469 d!1371459)))

(assert (=> bs!824671 (= lambda!165311 lambda!165304)))

(declare-fun bs!824672 () Bool)

(assert (= bs!824672 (and d!1371469 d!1371341)))

(assert (=> bs!824672 (= lambda!165311 lambda!165267)))

(declare-fun bs!824673 () Bool)

(assert (= bs!824673 (and d!1371469 d!1371405)))

(assert (=> bs!824673 (= lambda!165311 lambda!165290)))

(declare-fun bs!824674 () Bool)

(assert (= bs!824674 (and d!1371469 d!1371355)))

(assert (=> bs!824674 (= lambda!165311 lambda!165275)))

(declare-fun bs!824675 () Bool)

(assert (= bs!824675 (and d!1371469 d!1371449)))

(assert (=> bs!824675 (= lambda!165311 lambda!165301)))

(declare-fun bs!824676 () Bool)

(assert (= bs!824676 (and d!1371469 d!1371349)))

(assert (=> bs!824676 (= lambda!165311 lambda!165274)))

(declare-fun bs!824677 () Bool)

(assert (= bs!824677 (and d!1371469 d!1371359)))

(assert (=> bs!824677 (= lambda!165311 lambda!165280)))

(declare-fun bs!824678 () Bool)

(assert (= bs!824678 (and d!1371469 d!1371451)))

(assert (=> bs!824678 (= lambda!165311 lambda!165302)))

(declare-fun bs!824679 () Bool)

(assert (= bs!824679 (and d!1371469 d!1371437)))

(assert (=> bs!824679 (= lambda!165311 lambda!165300)))

(declare-fun bs!824680 () Bool)

(assert (= bs!824680 (and d!1371469 d!1371383)))

(assert (=> bs!824680 (= lambda!165311 lambda!165284)))

(declare-fun bs!824681 () Bool)

(assert (= bs!824681 (and d!1371469 d!1371295)))

(assert (=> bs!824681 (= lambda!165311 lambda!165184)))

(assert (=> d!1371469 (not (contains!12951 (extractMap!1110 (toList!4116 lm!1477)) key!3287))))

(declare-fun lt!1667373 () Unit!89629)

(declare-fun choose!28756 (ListLongMap!2747 K!11775 Hashable!5449) Unit!89629)

(assert (=> d!1371469 (= lt!1667373 (choose!28756 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1371469 (forall!10046 (toList!4116 lm!1477) lambda!165311)))

(assert (=> d!1371469 (= (lemmaNotInItsHashBucketThenNotInMap!54 lm!1477 key!3287 hashF!1107) lt!1667373)))

(declare-fun bs!824682 () Bool)

(assert (= bs!824682 d!1371469))

(assert (=> bs!824682 m!5199211))

(assert (=> bs!824682 m!5199211))

(assert (=> bs!824682 m!5199213))

(declare-fun m!5199979 () Bool)

(assert (=> bs!824682 m!5199979))

(declare-fun m!5199981 () Bool)

(assert (=> bs!824682 m!5199981))

(assert (=> b!4480338 d!1371469))

(declare-fun bs!824683 () Bool)

(declare-fun d!1371471 () Bool)

(assert (= bs!824683 (and d!1371471 d!1371457)))

(declare-fun lambda!165314 () Int)

(assert (=> bs!824683 (not (= lambda!165314 lambda!165303))))

(declare-fun bs!824684 () Bool)

(assert (= bs!824684 (and d!1371471 d!1371463)))

(assert (=> bs!824684 (not (= lambda!165314 lambda!165305))))

(declare-fun bs!824685 () Bool)

(assert (= bs!824685 (and d!1371471 start!440644)))

(assert (=> bs!824685 (not (= lambda!165314 lambda!165181))))

(declare-fun bs!824686 () Bool)

(assert (= bs!824686 (and d!1371471 d!1371341)))

(assert (=> bs!824686 (not (= lambda!165314 lambda!165267))))

(declare-fun bs!824687 () Bool)

(assert (= bs!824687 (and d!1371471 d!1371405)))

(assert (=> bs!824687 (not (= lambda!165314 lambda!165290))))

(declare-fun bs!824688 () Bool)

(assert (= bs!824688 (and d!1371471 d!1371355)))

(assert (=> bs!824688 (not (= lambda!165314 lambda!165275))))

(declare-fun bs!824689 () Bool)

(assert (= bs!824689 (and d!1371471 d!1371449)))

(assert (=> bs!824689 (not (= lambda!165314 lambda!165301))))

(declare-fun bs!824690 () Bool)

(assert (= bs!824690 (and d!1371471 d!1371349)))

(assert (=> bs!824690 (not (= lambda!165314 lambda!165274))))

(declare-fun bs!824691 () Bool)

(assert (= bs!824691 (and d!1371471 d!1371359)))

(assert (=> bs!824691 (not (= lambda!165314 lambda!165280))))

(declare-fun bs!824692 () Bool)

(assert (= bs!824692 (and d!1371471 d!1371469)))

(assert (=> bs!824692 (not (= lambda!165314 lambda!165311))))

(declare-fun bs!824693 () Bool)

(assert (= bs!824693 (and d!1371471 d!1371459)))

(assert (=> bs!824693 (not (= lambda!165314 lambda!165304))))

(declare-fun bs!824694 () Bool)

(assert (= bs!824694 (and d!1371471 d!1371451)))

(assert (=> bs!824694 (not (= lambda!165314 lambda!165302))))

(declare-fun bs!824695 () Bool)

(assert (= bs!824695 (and d!1371471 d!1371437)))

(assert (=> bs!824695 (not (= lambda!165314 lambda!165300))))

(declare-fun bs!824696 () Bool)

(assert (= bs!824696 (and d!1371471 d!1371383)))

(assert (=> bs!824696 (not (= lambda!165314 lambda!165284))))

(declare-fun bs!824697 () Bool)

(assert (= bs!824697 (and d!1371471 d!1371295)))

(assert (=> bs!824697 (not (= lambda!165314 lambda!165184))))

(assert (=> d!1371471 true))

(assert (=> d!1371471 (= (allKeysSameHashInMap!1161 lm!1477 hashF!1107) (forall!10046 (toList!4116 lm!1477) lambda!165314))))

(declare-fun bs!824698 () Bool)

(assert (= bs!824698 d!1371471))

(declare-fun m!5199983 () Bool)

(assert (=> bs!824698 m!5199983))

(assert (=> b!4480335 d!1371471))

(declare-fun d!1371473 () Bool)

(declare-fun e!2790611 () Bool)

(assert (=> d!1371473 e!2790611))

(declare-fun res!1860195 () Bool)

(assert (=> d!1371473 (=> (not res!1860195) (not e!2790611))))

(declare-fun lt!1667375 () ListLongMap!2747)

(assert (=> d!1371473 (= res!1860195 (contains!12952 lt!1667375 (_1!28620 lt!1666981)))))

(declare-fun lt!1667374 () List!50489)

(assert (=> d!1371473 (= lt!1667375 (ListLongMap!2748 lt!1667374))))

(declare-fun lt!1667376 () Unit!89629)

(declare-fun lt!1667377 () Unit!89629)

(assert (=> d!1371473 (= lt!1667376 lt!1667377)))

(assert (=> d!1371473 (= (getValueByKey!952 lt!1667374 (_1!28620 lt!1666981)) (Some!10965 (_2!28620 lt!1666981)))))

(assert (=> d!1371473 (= lt!1667377 (lemmaContainsTupThenGetReturnValue!606 lt!1667374 (_1!28620 lt!1666981) (_2!28620 lt!1666981)))))

(assert (=> d!1371473 (= lt!1667374 (insertStrictlySorted!350 (toList!4116 lt!1666985) (_1!28620 lt!1666981) (_2!28620 lt!1666981)))))

(assert (=> d!1371473 (= (+!1408 lt!1666985 lt!1666981) lt!1667375)))

(declare-fun b!4480668 () Bool)

(declare-fun res!1860194 () Bool)

(assert (=> b!4480668 (=> (not res!1860194) (not e!2790611))))

(assert (=> b!4480668 (= res!1860194 (= (getValueByKey!952 (toList!4116 lt!1667375) (_1!28620 lt!1666981)) (Some!10965 (_2!28620 lt!1666981))))))

(declare-fun b!4480669 () Bool)

(assert (=> b!4480669 (= e!2790611 (contains!12953 (toList!4116 lt!1667375) lt!1666981))))

(assert (= (and d!1371473 res!1860195) b!4480668))

(assert (= (and b!4480668 res!1860194) b!4480669))

(declare-fun m!5199985 () Bool)

(assert (=> d!1371473 m!5199985))

(declare-fun m!5199987 () Bool)

(assert (=> d!1371473 m!5199987))

(declare-fun m!5199989 () Bool)

(assert (=> d!1371473 m!5199989))

(declare-fun m!5199991 () Bool)

(assert (=> d!1371473 m!5199991))

(declare-fun m!5199993 () Bool)

(assert (=> b!4480668 m!5199993))

(declare-fun m!5199995 () Bool)

(assert (=> b!4480669 m!5199995))

(assert (=> b!4480324 d!1371473))

(declare-fun d!1371475 () Bool)

(assert (=> d!1371475 (= (tail!7561 lm!1477) (ListLongMap!2748 (tail!7560 (toList!4116 lm!1477))))))

(declare-fun bs!824699 () Bool)

(assert (= bs!824699 d!1371475))

(assert (=> bs!824699 m!5199161))

(assert (=> b!4480324 d!1371475))

(declare-fun b!4480680 () Bool)

(declare-fun e!2790616 () List!50488)

(assert (=> b!4480680 (= e!2790616 (Cons!50364 (h!56147 lt!1666965) (removePairForKey!681 (t!357442 lt!1666965) key!3287)))))

(declare-fun b!4480678 () Bool)

(declare-fun e!2790617 () List!50488)

(assert (=> b!4480678 (= e!2790617 (t!357442 lt!1666965))))

(declare-fun b!4480679 () Bool)

(assert (=> b!4480679 (= e!2790617 e!2790616)))

(declare-fun c!763272 () Bool)

(assert (=> b!4480679 (= c!763272 ((_ is Cons!50364) lt!1666965))))

(declare-fun b!4480681 () Bool)

(assert (=> b!4480681 (= e!2790616 Nil!50364)))

(declare-fun d!1371477 () Bool)

(declare-fun lt!1667380 () List!50488)

(assert (=> d!1371477 (not (containsKey!1538 lt!1667380 key!3287))))

(assert (=> d!1371477 (= lt!1667380 e!2790617)))

(declare-fun c!763271 () Bool)

(assert (=> d!1371477 (= c!763271 (and ((_ is Cons!50364) lt!1666965) (= (_1!28619 (h!56147 lt!1666965)) key!3287)))))

(assert (=> d!1371477 (noDuplicateKeys!1054 lt!1666965)))

(assert (=> d!1371477 (= (removePairForKey!681 lt!1666965 key!3287) lt!1667380)))

(assert (= (and d!1371477 c!763271) b!4480678))

(assert (= (and d!1371477 (not c!763271)) b!4480679))

(assert (= (and b!4480679 c!763272) b!4480680))

(assert (= (and b!4480679 (not c!763272)) b!4480681))

(declare-fun m!5199997 () Bool)

(assert (=> b!4480680 m!5199997))

(declare-fun m!5199999 () Bool)

(assert (=> d!1371477 m!5199999))

(declare-fun m!5200001 () Bool)

(assert (=> d!1371477 m!5200001))

(assert (=> b!4480334 d!1371477))

(declare-fun bs!824700 () Bool)

(declare-fun d!1371479 () Bool)

(assert (= bs!824700 (and d!1371479 d!1371457)))

(declare-fun lambda!165315 () Int)

(assert (=> bs!824700 (= lambda!165315 lambda!165303)))

(declare-fun bs!824701 () Bool)

(assert (= bs!824701 (and d!1371479 d!1371463)))

(assert (=> bs!824701 (= lambda!165315 lambda!165305)))

(declare-fun bs!824702 () Bool)

(assert (= bs!824702 (and d!1371479 start!440644)))

(assert (=> bs!824702 (= lambda!165315 lambda!165181)))

(declare-fun bs!824703 () Bool)

(assert (= bs!824703 (and d!1371479 d!1371471)))

(assert (=> bs!824703 (not (= lambda!165315 lambda!165314))))

(declare-fun bs!824704 () Bool)

(assert (= bs!824704 (and d!1371479 d!1371341)))

(assert (=> bs!824704 (= lambda!165315 lambda!165267)))

(declare-fun bs!824705 () Bool)

(assert (= bs!824705 (and d!1371479 d!1371405)))

(assert (=> bs!824705 (= lambda!165315 lambda!165290)))

(declare-fun bs!824706 () Bool)

(assert (= bs!824706 (and d!1371479 d!1371355)))

(assert (=> bs!824706 (= lambda!165315 lambda!165275)))

(declare-fun bs!824707 () Bool)

(assert (= bs!824707 (and d!1371479 d!1371449)))

(assert (=> bs!824707 (= lambda!165315 lambda!165301)))

(declare-fun bs!824708 () Bool)

(assert (= bs!824708 (and d!1371479 d!1371349)))

(assert (=> bs!824708 (= lambda!165315 lambda!165274)))

(declare-fun bs!824709 () Bool)

(assert (= bs!824709 (and d!1371479 d!1371359)))

(assert (=> bs!824709 (= lambda!165315 lambda!165280)))

(declare-fun bs!824710 () Bool)

(assert (= bs!824710 (and d!1371479 d!1371469)))

(assert (=> bs!824710 (= lambda!165315 lambda!165311)))

(declare-fun bs!824711 () Bool)

(assert (= bs!824711 (and d!1371479 d!1371459)))

(assert (=> bs!824711 (= lambda!165315 lambda!165304)))

(declare-fun bs!824712 () Bool)

(assert (= bs!824712 (and d!1371479 d!1371451)))

(assert (=> bs!824712 (= lambda!165315 lambda!165302)))

(declare-fun bs!824713 () Bool)

(assert (= bs!824713 (and d!1371479 d!1371437)))

(assert (=> bs!824713 (= lambda!165315 lambda!165300)))

(declare-fun bs!824714 () Bool)

(assert (= bs!824714 (and d!1371479 d!1371383)))

(assert (=> bs!824714 (= lambda!165315 lambda!165284)))

(declare-fun bs!824715 () Bool)

(assert (= bs!824715 (and d!1371479 d!1371295)))

(assert (=> bs!824715 (= lambda!165315 lambda!165184)))

(assert (=> d!1371479 (contains!12952 lm!1477 (hash!2535 hashF!1107 key!3287))))

(declare-fun lt!1667381 () Unit!89629)

(assert (=> d!1371479 (= lt!1667381 (choose!28749 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1371479 (forall!10046 (toList!4116 lm!1477) lambda!165315)))

(assert (=> d!1371479 (= (lemmaInGenMapThenLongMapContainsHash!128 lm!1477 key!3287 hashF!1107) lt!1667381)))

(declare-fun bs!824716 () Bool)

(assert (= bs!824716 d!1371479))

(assert (=> bs!824716 m!5199191))

(assert (=> bs!824716 m!5199191))

(declare-fun m!5200003 () Bool)

(assert (=> bs!824716 m!5200003))

(declare-fun m!5200005 () Bool)

(assert (=> bs!824716 m!5200005))

(declare-fun m!5200007 () Bool)

(assert (=> bs!824716 m!5200007))

(assert (=> b!4480334 d!1371479))

(declare-fun d!1371481 () Bool)

(declare-fun get!16433 (Option!10966) List!50488)

(assert (=> d!1371481 (= (apply!11791 lm!1477 hash!344) (get!16433 (getValueByKey!952 (toList!4116 lm!1477) hash!344)))))

(declare-fun bs!824717 () Bool)

(assert (= bs!824717 d!1371481))

(declare-fun m!5200009 () Bool)

(assert (=> bs!824717 m!5200009))

(assert (=> bs!824717 m!5200009))

(declare-fun m!5200011 () Bool)

(assert (=> bs!824717 m!5200011))

(assert (=> b!4480334 d!1371481))

(declare-fun d!1371483 () Bool)

(declare-fun lt!1667384 () Bool)

(declare-fun content!8163 (List!50489) (InoxSet tuple2!50652))

(assert (=> d!1371483 (= lt!1667384 (select (content!8163 (toList!4116 lm!1477)) lt!1666971))))

(declare-fun e!2790622 () Bool)

(assert (=> d!1371483 (= lt!1667384 e!2790622)))

(declare-fun res!1860201 () Bool)

(assert (=> d!1371483 (=> (not res!1860201) (not e!2790622))))

(assert (=> d!1371483 (= res!1860201 ((_ is Cons!50365) (toList!4116 lm!1477)))))

(assert (=> d!1371483 (= (contains!12953 (toList!4116 lm!1477) lt!1666971) lt!1667384)))

(declare-fun b!4480686 () Bool)

(declare-fun e!2790623 () Bool)

(assert (=> b!4480686 (= e!2790622 e!2790623)))

(declare-fun res!1860200 () Bool)

(assert (=> b!4480686 (=> res!1860200 e!2790623)))

(assert (=> b!4480686 (= res!1860200 (= (h!56148 (toList!4116 lm!1477)) lt!1666971))))

(declare-fun b!4480687 () Bool)

(assert (=> b!4480687 (= e!2790623 (contains!12953 (t!357443 (toList!4116 lm!1477)) lt!1666971))))

(assert (= (and d!1371483 res!1860201) b!4480686))

(assert (= (and b!4480686 (not res!1860200)) b!4480687))

(declare-fun m!5200013 () Bool)

(assert (=> d!1371483 m!5200013))

(declare-fun m!5200015 () Bool)

(assert (=> d!1371483 m!5200015))

(declare-fun m!5200017 () Bool)

(assert (=> b!4480687 m!5200017))

(assert (=> b!4480334 d!1371483))

(declare-fun d!1371485 () Bool)

(declare-fun e!2790624 () Bool)

(assert (=> d!1371485 e!2790624))

(declare-fun res!1860202 () Bool)

(assert (=> d!1371485 (=> res!1860202 e!2790624)))

(declare-fun lt!1667388 () Bool)

(assert (=> d!1371485 (= res!1860202 (not lt!1667388))))

(declare-fun lt!1667386 () Bool)

(assert (=> d!1371485 (= lt!1667388 lt!1667386)))

(declare-fun lt!1667387 () Unit!89629)

(declare-fun e!2790625 () Unit!89629)

(assert (=> d!1371485 (= lt!1667387 e!2790625)))

(declare-fun c!763273 () Bool)

(assert (=> d!1371485 (= c!763273 lt!1667386)))

(assert (=> d!1371485 (= lt!1667386 (containsKey!1540 (toList!4116 lm!1477) lt!1666979))))

(assert (=> d!1371485 (= (contains!12952 lm!1477 lt!1666979) lt!1667388)))

(declare-fun b!4480688 () Bool)

(declare-fun lt!1667385 () Unit!89629)

(assert (=> b!4480688 (= e!2790625 lt!1667385)))

(assert (=> b!4480688 (= lt!1667385 (lemmaContainsKeyImpliesGetValueByKeyDefined!855 (toList!4116 lm!1477) lt!1666979))))

(assert (=> b!4480688 (isDefined!8252 (getValueByKey!952 (toList!4116 lm!1477) lt!1666979))))

(declare-fun b!4480689 () Bool)

(declare-fun Unit!89694 () Unit!89629)

(assert (=> b!4480689 (= e!2790625 Unit!89694)))

(declare-fun b!4480690 () Bool)

(assert (=> b!4480690 (= e!2790624 (isDefined!8252 (getValueByKey!952 (toList!4116 lm!1477) lt!1666979)))))

(assert (= (and d!1371485 c!763273) b!4480688))

(assert (= (and d!1371485 (not c!763273)) b!4480689))

(assert (= (and d!1371485 (not res!1860202)) b!4480690))

(declare-fun m!5200019 () Bool)

(assert (=> d!1371485 m!5200019))

(declare-fun m!5200021 () Bool)

(assert (=> b!4480688 m!5200021))

(declare-fun m!5200023 () Bool)

(assert (=> b!4480688 m!5200023))

(assert (=> b!4480688 m!5200023))

(declare-fun m!5200025 () Bool)

(assert (=> b!4480688 m!5200025))

(assert (=> b!4480690 m!5200023))

(assert (=> b!4480690 m!5200023))

(assert (=> b!4480690 m!5200025))

(assert (=> b!4480334 d!1371485))

(declare-fun d!1371487 () Bool)

(assert (=> d!1371487 (dynLambda!21044 lambda!165181 lt!1666971)))

(declare-fun lt!1667391 () Unit!89629)

(declare-fun choose!28757 (List!50489 Int tuple2!50652) Unit!89629)

(assert (=> d!1371487 (= lt!1667391 (choose!28757 (toList!4116 lm!1477) lambda!165181 lt!1666971))))

(declare-fun e!2790628 () Bool)

(assert (=> d!1371487 e!2790628))

(declare-fun res!1860205 () Bool)

(assert (=> d!1371487 (=> (not res!1860205) (not e!2790628))))

(assert (=> d!1371487 (= res!1860205 (forall!10046 (toList!4116 lm!1477) lambda!165181))))

(assert (=> d!1371487 (= (forallContained!2307 (toList!4116 lm!1477) lambda!165181 lt!1666971) lt!1667391)))

(declare-fun b!4480693 () Bool)

(assert (=> b!4480693 (= e!2790628 (contains!12953 (toList!4116 lm!1477) lt!1666971))))

(assert (= (and d!1371487 res!1860205) b!4480693))

(declare-fun b_lambda!150297 () Bool)

(assert (=> (not b_lambda!150297) (not d!1371487)))

(declare-fun m!5200027 () Bool)

(assert (=> d!1371487 m!5200027))

(declare-fun m!5200029 () Bool)

(assert (=> d!1371487 m!5200029))

(assert (=> d!1371487 m!5199217))

(assert (=> b!4480693 m!5199177))

(assert (=> b!4480334 d!1371487))

(declare-fun d!1371489 () Bool)

(assert (=> d!1371489 (contains!12953 (toList!4116 lm!1477) (tuple2!50653 hash!344 lt!1666965))))

(declare-fun lt!1667394 () Unit!89629)

(declare-fun choose!28758 (List!50489 (_ BitVec 64) List!50488) Unit!89629)

(assert (=> d!1371489 (= lt!1667394 (choose!28758 (toList!4116 lm!1477) hash!344 lt!1666965))))

(declare-fun e!2790631 () Bool)

(assert (=> d!1371489 e!2790631))

(declare-fun res!1860208 () Bool)

(assert (=> d!1371489 (=> (not res!1860208) (not e!2790631))))

(assert (=> d!1371489 (= res!1860208 (isStrictlySorted!361 (toList!4116 lm!1477)))))

(assert (=> d!1371489 (= (lemmaGetValueByKeyImpliesContainsTuple!566 (toList!4116 lm!1477) hash!344 lt!1666965) lt!1667394)))

(declare-fun b!4480696 () Bool)

(assert (=> b!4480696 (= e!2790631 (= (getValueByKey!952 (toList!4116 lm!1477) hash!344) (Some!10965 lt!1666965)))))

(assert (= (and d!1371489 res!1860208) b!4480696))

(declare-fun m!5200031 () Bool)

(assert (=> d!1371489 m!5200031))

(declare-fun m!5200033 () Bool)

(assert (=> d!1371489 m!5200033))

(assert (=> d!1371489 m!5199835))

(assert (=> b!4480696 m!5200009))

(assert (=> b!4480334 d!1371489))

(declare-fun d!1371491 () Bool)

(declare-fun res!1860213 () Bool)

(declare-fun e!2790636 () Bool)

(assert (=> d!1371491 (=> res!1860213 e!2790636)))

(assert (=> d!1371491 (= res!1860213 (not ((_ is Cons!50364) newBucket!178)))))

(assert (=> d!1371491 (= (noDuplicateKeys!1054 newBucket!178) e!2790636)))

(declare-fun b!4480701 () Bool)

(declare-fun e!2790637 () Bool)

(assert (=> b!4480701 (= e!2790636 e!2790637)))

(declare-fun res!1860214 () Bool)

(assert (=> b!4480701 (=> (not res!1860214) (not e!2790637))))

(assert (=> b!4480701 (= res!1860214 (not (containsKey!1538 (t!357442 newBucket!178) (_1!28619 (h!56147 newBucket!178)))))))

(declare-fun b!4480702 () Bool)

(assert (=> b!4480702 (= e!2790637 (noDuplicateKeys!1054 (t!357442 newBucket!178)))))

(assert (= (and d!1371491 (not res!1860213)) b!4480701))

(assert (= (and b!4480701 res!1860214) b!4480702))

(declare-fun m!5200035 () Bool)

(assert (=> b!4480701 m!5200035))

(declare-fun m!5200037 () Bool)

(assert (=> b!4480702 m!5200037))

(assert (=> b!4480336 d!1371491))

(declare-fun b!4480707 () Bool)

(declare-fun e!2790640 () Bool)

(declare-fun tp!1336641 () Bool)

(declare-fun tp!1336642 () Bool)

(assert (=> b!4480707 (= e!2790640 (and tp!1336641 tp!1336642))))

(assert (=> b!4480328 (= tp!1336626 e!2790640)))

(assert (= (and b!4480328 ((_ is Cons!50365) (toList!4116 lm!1477))) b!4480707))

(declare-fun b!4480712 () Bool)

(declare-fun tp!1336645 () Bool)

(declare-fun e!2790643 () Bool)

(assert (=> b!4480712 (= e!2790643 (and tp_is_empty!27493 tp_is_empty!27495 tp!1336645))))

(assert (=> b!4480329 (= tp!1336627 e!2790643)))

(assert (= (and b!4480329 ((_ is Cons!50364) (t!357442 newBucket!178))) b!4480712))

(declare-fun b_lambda!150299 () Bool)

(assert (= b_lambda!150287 (or start!440644 b_lambda!150299)))

(declare-fun bs!824718 () Bool)

(declare-fun d!1371493 () Bool)

(assert (= bs!824718 (and d!1371493 start!440644)))

(assert (=> bs!824718 (= (dynLambda!21044 lambda!165181 (h!56148 (toList!4116 lt!1666963))) (noDuplicateKeys!1054 (_2!28620 (h!56148 (toList!4116 lt!1666963)))))))

(declare-fun m!5200039 () Bool)

(assert (=> bs!824718 m!5200039))

(assert (=> b!4480588 d!1371493))

(declare-fun b_lambda!150301 () Bool)

(assert (= b_lambda!150297 (or start!440644 b_lambda!150301)))

(declare-fun bs!824719 () Bool)

(declare-fun d!1371495 () Bool)

(assert (= bs!824719 (and d!1371495 start!440644)))

(assert (=> bs!824719 (= (dynLambda!21044 lambda!165181 lt!1666971) (noDuplicateKeys!1054 (_2!28620 lt!1666971)))))

(declare-fun m!5200041 () Bool)

(assert (=> bs!824719 m!5200041))

(assert (=> d!1371487 d!1371495))

(declare-fun b_lambda!150303 () Bool)

(assert (= b_lambda!150289 (or start!440644 b_lambda!150303)))

(declare-fun bs!824720 () Bool)

(declare-fun d!1371497 () Bool)

(assert (= bs!824720 (and d!1371497 start!440644)))

(assert (=> bs!824720 (= (dynLambda!21044 lambda!165181 (h!56148 (toList!4116 lm!1477))) (noDuplicateKeys!1054 (_2!28620 (h!56148 (toList!4116 lm!1477)))))))

(assert (=> bs!824720 m!5199467))

(assert (=> b!4480601 d!1371497))

(check-sat (not d!1371359) (not d!1371343) (not b!4480419) (not b!4480528) (not b_lambda!150303) (not bm!312017) (not b!4480596) (not d!1371347) (not d!1371477) (not b!4480445) (not b!4480598) (not b!4480648) (not d!1371489) (not b!4480696) (not d!1371297) (not b!4480542) (not b!4480486) (not d!1371487) (not d!1371481) (not b!4480643) (not b!4480594) (not b!4480531) (not b!4480592) (not d!1371295) (not b!4480434) (not bm!312034) (not d!1371451) (not b!4480483) (not d!1371469) (not b!4480612) (not d!1371483) (not d!1371479) (not b!4480659) (not bm!312016) (not b!4480351) (not d!1371425) (not b!4480701) (not b!4480712) (not b!4480482) (not b!4480646) (not d!1371293) (not b!4480433) (not d!1371371) (not b!4480446) (not d!1371357) (not d!1371461) (not b!4480591) (not b!4480702) (not b!4480687) (not b!4480688) (not bm!312027) (not d!1371405) (not b!4480669) (not bs!824718) (not b!4480590) (not b!4480571) (not b!4480583) (not bm!312021) (not d!1371475) (not b!4480346) (not d!1371471) (not b!4480595) (not b!4480680) (not d!1371431) (not d!1371339) (not bm!312020) (not b!4480651) (not b!4480602) tp_is_empty!27495 (not d!1371457) (not b!4480532) (not b!4480638) (not d!1371473) (not b!4480640) (not bm!312019) (not b!4480661) (not d!1371355) (not d!1371463) (not b!4480480) (not d!1371467) (not b!4480589) (not d!1371369) (not b!4480432) (not d!1371341) (not b!4480485) (not d!1371437) (not b_lambda!150301) (not bm!312018) (not bs!824720) (not b!4480533) (not b!4480690) (not d!1371455) (not b!4480650) (not d!1371449) (not bm!312031) (not b!4480634) (not b!4480647) (not b!4480636) (not b!4480668) (not b!4480644) (not b!4480421) (not d!1371349) (not b!4480431) (not b_lambda!150299) (not b!4480642) (not d!1371485) (not b!4480527) (not d!1371351) (not b!4480529) (not d!1371427) (not b!4480422) (not b!4480693) (not b!4480535) (not bs!824719) (not b!4480420) (not b!4480428) (not b!4480707) (not d!1371435) (not d!1371383) (not d!1371389) (not d!1371459) (not d!1371407) tp_is_empty!27493)
(check-sat)
