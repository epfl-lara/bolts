; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!449788 () Bool)

(assert start!449788)

(declare-fun bs!871128 () Bool)

(declare-fun b!4534165 () Bool)

(assert (= bs!871128 (and b!4534165 start!449788)))

(declare-fun lambda!174994 () Int)

(declare-fun lambda!174993 () Int)

(assert (=> bs!871128 (not (= lambda!174994 lambda!174993))))

(assert (=> b!4534165 true))

(assert (=> b!4534165 true))

(assert (=> b!4534165 true))

(declare-fun b!4534157 () Bool)

(declare-fun e!2825321 () Bool)

(declare-fun e!2825327 () Bool)

(assert (=> b!4534157 (= e!2825321 e!2825327)))

(declare-fun res!1888775 () Bool)

(assert (=> b!4534157 (=> res!1888775 e!2825327)))

(declare-datatypes ((K!12105 0))(
  ( (K!12106 (val!17955 Int)) )
))
(declare-datatypes ((V!12351 0))(
  ( (V!12352 (val!17956 Int)) )
))
(declare-datatypes ((tuple2!51178 0))(
  ( (tuple2!51179 (_1!28883 K!12105) (_2!28883 V!12351)) )
))
(declare-datatypes ((List!50842 0))(
  ( (Nil!50718) (Cons!50718 (h!56591 tuple2!51178) (t!357804 List!50842)) )
))
(declare-datatypes ((tuple2!51180 0))(
  ( (tuple2!51181 (_1!28884 (_ BitVec 64)) (_2!28884 List!50842)) )
))
(declare-fun lt!1709334 () tuple2!51180)

(declare-datatypes ((List!50843 0))(
  ( (Nil!50719) (Cons!50719 (h!56592 tuple2!51180) (t!357805 List!50843)) )
))
(declare-datatypes ((ListLongMap!3011 0))(
  ( (ListLongMap!3012 (toList!4379 List!50843)) )
))
(declare-fun lm!1477 () ListLongMap!3011)

(declare-fun lt!1709350 () ListLongMap!3011)

(declare-fun +!1584 (ListLongMap!3011 tuple2!51180) ListLongMap!3011)

(assert (=> b!4534157 (= res!1888775 (not (= lt!1709350 (+!1584 lm!1477 lt!1709334))))))

(declare-fun lt!1709352 () ListLongMap!3011)

(declare-fun lt!1709342 () tuple2!51180)

(assert (=> b!4534157 (= lt!1709350 (+!1584 lt!1709352 lt!1709342))))

(declare-fun b!4534158 () Bool)

(declare-fun res!1888767 () Bool)

(declare-fun e!2825328 () Bool)

(assert (=> b!4534158 (=> res!1888767 e!2825328)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4534158 (= res!1888767 (or ((_ is Nil!50719) (toList!4379 lm!1477)) (= (_1!28884 (h!56592 (toList!4379 lm!1477))) hash!344)))))

(declare-fun b!4534159 () Bool)

(declare-datatypes ((Unit!97512 0))(
  ( (Unit!97513) )
))
(declare-fun e!2825326 () Unit!97512)

(declare-fun Unit!97514 () Unit!97512)

(assert (=> b!4534159 (= e!2825326 Unit!97514)))

(declare-datatypes ((Hashable!5581 0))(
  ( (HashableExt!5580 (__x!31284 Int)) )
))
(declare-fun hashF!1107 () Hashable!5581)

(declare-fun lt!1709333 () Unit!97512)

(declare-fun key!3287 () K!12105)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!174 (ListLongMap!3011 K!12105 Hashable!5581) Unit!97512)

(assert (=> b!4534159 (= lt!1709333 (lemmaNotInItsHashBucketThenNotInMap!174 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4534159 false))

(declare-fun b!4534160 () Bool)

(declare-fun e!2825311 () Bool)

(assert (=> b!4534160 (= e!2825311 (not e!2825328))))

(declare-fun res!1888764 () Bool)

(assert (=> b!4534160 (=> res!1888764 e!2825328)))

(declare-fun lt!1709321 () List!50842)

(declare-fun newBucket!178 () List!50842)

(declare-fun removePairForKey!813 (List!50842 K!12105) List!50842)

(assert (=> b!4534160 (= res!1888764 (not (= newBucket!178 (removePairForKey!813 lt!1709321 key!3287))))))

(declare-fun lt!1709320 () tuple2!51180)

(declare-fun lt!1709327 () Unit!97512)

(declare-fun forallContained!2578 (List!50843 Int tuple2!51180) Unit!97512)

(assert (=> b!4534160 (= lt!1709327 (forallContained!2578 (toList!4379 lm!1477) lambda!174993 lt!1709320))))

(declare-fun contains!13489 (List!50843 tuple2!51180) Bool)

(assert (=> b!4534160 (contains!13489 (toList!4379 lm!1477) lt!1709320)))

(assert (=> b!4534160 (= lt!1709320 (tuple2!51181 hash!344 lt!1709321))))

(declare-fun lt!1709349 () Unit!97512)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!698 (List!50843 (_ BitVec 64) List!50842) Unit!97512)

(assert (=> b!4534160 (= lt!1709349 (lemmaGetValueByKeyImpliesContainsTuple!698 (toList!4379 lm!1477) hash!344 lt!1709321))))

(declare-fun apply!11923 (ListLongMap!3011 (_ BitVec 64)) List!50842)

(assert (=> b!4534160 (= lt!1709321 (apply!11923 lm!1477 hash!344))))

(declare-fun lt!1709346 () (_ BitVec 64))

(declare-fun contains!13490 (ListLongMap!3011 (_ BitVec 64)) Bool)

(assert (=> b!4534160 (contains!13490 lm!1477 lt!1709346)))

(declare-fun lt!1709338 () Unit!97512)

(declare-fun lemmaInGenMapThenLongMapContainsHash!260 (ListLongMap!3011 K!12105 Hashable!5581) Unit!97512)

(assert (=> b!4534160 (= lt!1709338 (lemmaInGenMapThenLongMapContainsHash!260 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4534161 () Bool)

(declare-fun Unit!97515 () Unit!97512)

(assert (=> b!4534161 (= e!2825326 Unit!97515)))

(declare-fun b!4534162 () Bool)

(declare-fun res!1888773 () Bool)

(assert (=> b!4534162 (=> (not res!1888773) (not e!2825311))))

(declare-fun allKeysSameHash!1040 (List!50842 (_ BitVec 64) Hashable!5581) Bool)

(assert (=> b!4534162 (= res!1888773 (allKeysSameHash!1040 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4534163 () Bool)

(declare-fun res!1888761 () Bool)

(assert (=> b!4534163 (=> res!1888761 e!2825321)))

(assert (=> b!4534163 (= res!1888761 (bvsge (_1!28884 lt!1709342) hash!344))))

(declare-fun res!1888774 () Bool)

(declare-fun e!2825320 () Bool)

(assert (=> start!449788 (=> (not res!1888774) (not e!2825320))))

(declare-fun forall!10321 (List!50843 Int) Bool)

(assert (=> start!449788 (= res!1888774 (forall!10321 (toList!4379 lm!1477) lambda!174993))))

(assert (=> start!449788 e!2825320))

(assert (=> start!449788 true))

(declare-fun e!2825318 () Bool)

(declare-fun inv!66289 (ListLongMap!3011) Bool)

(assert (=> start!449788 (and (inv!66289 lm!1477) e!2825318)))

(declare-fun tp_is_empty!28021 () Bool)

(assert (=> start!449788 tp_is_empty!28021))

(declare-fun e!2825329 () Bool)

(assert (=> start!449788 e!2825329))

(declare-fun b!4534164 () Bool)

(declare-fun tp!1338464 () Bool)

(assert (=> b!4534164 (= e!2825318 tp!1338464)))

(declare-fun e!2825315 () Unit!97512)

(declare-fun Unit!97516 () Unit!97512)

(assert (=> b!4534165 (= e!2825315 Unit!97516)))

(assert (=> b!4534165 (not (= hash!344 (_1!28884 lt!1709342)))))

(declare-datatypes ((Option!11173 0))(
  ( (None!11172) (Some!11172 (v!44842 tuple2!51178)) )
))
(declare-fun lt!1709331 () Option!11173)

(declare-fun getPair!202 (List!50842 K!12105) Option!11173)

(assert (=> b!4534165 (= lt!1709331 (getPair!202 (_2!28884 lt!1709342) key!3287))))

(declare-fun lt!1709341 () Unit!97512)

(assert (=> b!4534165 (= lt!1709341 (forallContained!2578 (toList!4379 lm!1477) lambda!174994 (h!56592 (toList!4379 lm!1477))))))

(declare-fun lambda!174995 () Int)

(declare-fun lt!1709319 () Unit!97512)

(declare-fun forallContained!2579 (List!50842 Int tuple2!51178) Unit!97512)

(declare-fun get!16655 (Option!11173) tuple2!51178)

(assert (=> b!4534165 (= lt!1709319 (forallContained!2579 (_2!28884 (h!56592 (toList!4379 lm!1477))) lambda!174995 (tuple2!51179 key!3287 (_2!28883 (get!16655 lt!1709331)))))))

(assert (=> b!4534165 false))

(declare-fun b!4534166 () Bool)

(declare-fun e!2825317 () Bool)

(assert (=> b!4534166 (= e!2825320 e!2825317)))

(declare-fun res!1888757 () Bool)

(assert (=> b!4534166 (=> (not res!1888757) (not e!2825317))))

(declare-datatypes ((ListMap!3641 0))(
  ( (ListMap!3642 (toList!4380 List!50842)) )
))
(declare-fun lt!1709328 () ListMap!3641)

(declare-fun contains!13491 (ListMap!3641 K!12105) Bool)

(assert (=> b!4534166 (= res!1888757 (contains!13491 lt!1709328 key!3287))))

(declare-fun extractMap!1242 (List!50843) ListMap!3641)

(assert (=> b!4534166 (= lt!1709328 (extractMap!1242 (toList!4379 lm!1477)))))

(declare-fun b!4534167 () Bool)

(declare-fun res!1888762 () Bool)

(assert (=> b!4534167 (=> res!1888762 e!2825328)))

(declare-fun noDuplicateKeys!1186 (List!50842) Bool)

(assert (=> b!4534167 (= res!1888762 (not (noDuplicateKeys!1186 newBucket!178)))))

(declare-fun b!4534168 () Bool)

(declare-fun e!2825313 () Bool)

(assert (=> b!4534168 (= e!2825328 e!2825313)))

(declare-fun res!1888758 () Bool)

(assert (=> b!4534168 (=> res!1888758 e!2825313)))

(declare-fun lt!1709344 () ListLongMap!3011)

(assert (=> b!4534168 (= res!1888758 (not (contains!13490 lt!1709344 hash!344)))))

(declare-fun tail!7780 (ListLongMap!3011) ListLongMap!3011)

(assert (=> b!4534168 (= lt!1709344 (tail!7780 lm!1477))))

(declare-fun b!4534169 () Bool)

(declare-fun e!2825325 () Bool)

(declare-fun e!2825316 () Bool)

(assert (=> b!4534169 (= e!2825325 e!2825316)))

(declare-fun res!1888765 () Bool)

(assert (=> b!4534169 (=> res!1888765 e!2825316)))

(assert (=> b!4534169 (= res!1888765 (not (noDuplicateKeys!1186 (_2!28884 lt!1709342))))))

(declare-fun lt!1709348 () Unit!97512)

(assert (=> b!4534169 (= lt!1709348 (forallContained!2578 (toList!4379 lm!1477) lambda!174993 (h!56592 (toList!4379 lm!1477))))))

(declare-fun tp_is_empty!28023 () Bool)

(declare-fun tp!1338465 () Bool)

(declare-fun b!4534170 () Bool)

(assert (=> b!4534170 (= e!2825329 (and tp_is_empty!28021 tp_is_empty!28023 tp!1338465))))

(declare-fun b!4534171 () Bool)

(declare-fun e!2825322 () Bool)

(declare-fun e!2825319 () Bool)

(assert (=> b!4534171 (= e!2825322 e!2825319)))

(declare-fun res!1888777 () Bool)

(assert (=> b!4534171 (=> res!1888777 e!2825319)))

(assert (=> b!4534171 (= res!1888777 (not (contains!13491 (extractMap!1242 (t!357805 (toList!4379 lm!1477))) key!3287)))))

(declare-fun lt!1709335 () ListMap!3641)

(assert (=> b!4534171 (contains!13491 lt!1709335 key!3287)))

(assert (=> b!4534171 (= lt!1709335 (extractMap!1242 (toList!4379 lt!1709344)))))

(declare-fun lt!1709324 () Unit!97512)

(declare-fun lemmaListContainsThenExtractedMapContains!156 (ListLongMap!3011 K!12105 Hashable!5581) Unit!97512)

(assert (=> b!4534171 (= lt!1709324 (lemmaListContainsThenExtractedMapContains!156 lt!1709344 key!3287 hashF!1107))))

(declare-fun b!4534172 () Bool)

(assert (=> b!4534172 (= e!2825319 e!2825321)))

(declare-fun res!1888772 () Bool)

(assert (=> b!4534172 (=> res!1888772 e!2825321)))

(declare-fun lt!1709336 () ListMap!3641)

(declare-fun eq!643 (ListMap!3641 ListMap!3641) Bool)

(assert (=> b!4534172 (= res!1888772 (not (eq!643 lt!1709336 lt!1709328)))))

(assert (=> b!4534172 (= lt!1709336 (extractMap!1242 (toList!4379 (+!1584 lt!1709344 lt!1709342))))))

(declare-fun head!9458 (ListLongMap!3011) tuple2!51180)

(assert (=> b!4534172 (= lt!1709342 (head!9458 lm!1477))))

(declare-fun lt!1709323 () ListMap!3641)

(declare-fun lt!1709351 () ListMap!3641)

(assert (=> b!4534172 (eq!643 lt!1709323 lt!1709351)))

(declare-fun -!412 (ListMap!3641 K!12105) ListMap!3641)

(assert (=> b!4534172 (= lt!1709351 (-!412 lt!1709335 key!3287))))

(assert (=> b!4534172 (= lt!1709323 (extractMap!1242 (toList!4379 lt!1709352)))))

(assert (=> b!4534172 (= lt!1709352 (+!1584 lt!1709344 lt!1709334))))

(assert (=> b!4534172 (= lt!1709334 (tuple2!51181 hash!344 newBucket!178))))

(declare-fun lt!1709339 () Unit!97512)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!171 (ListLongMap!3011 (_ BitVec 64) List!50842 K!12105 Hashable!5581) Unit!97512)

(assert (=> b!4534172 (= lt!1709339 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!171 lt!1709344 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4534173 () Bool)

(declare-fun e!2825323 () Bool)

(assert (=> b!4534173 (= e!2825323 (forall!10321 (toList!4379 lt!1709344) lambda!174993))))

(declare-fun b!4534174 () Bool)

(declare-fun res!1888756 () Bool)

(assert (=> b!4534174 (=> res!1888756 e!2825321)))

(assert (=> b!4534174 (= res!1888756 (not (eq!643 lt!1709328 lt!1709336)))))

(declare-fun b!4534175 () Bool)

(declare-fun e!2825314 () Bool)

(assert (=> b!4534175 (= e!2825313 e!2825314)))

(declare-fun res!1888769 () Bool)

(assert (=> b!4534175 (=> res!1888769 e!2825314)))

(declare-fun lt!1709329 () Bool)

(assert (=> b!4534175 (= res!1888769 lt!1709329)))

(declare-fun lt!1709343 () Unit!97512)

(assert (=> b!4534175 (= lt!1709343 e!2825326)))

(declare-fun c!774313 () Bool)

(assert (=> b!4534175 (= c!774313 lt!1709329)))

(declare-fun containsKey!1846 (List!50842 K!12105) Bool)

(assert (=> b!4534175 (= lt!1709329 (not (containsKey!1846 lt!1709321 key!3287)))))

(declare-fun b!4534176 () Bool)

(declare-fun e!2825324 () Bool)

(assert (=> b!4534176 (= e!2825327 e!2825324)))

(declare-fun res!1888771 () Bool)

(assert (=> b!4534176 (=> res!1888771 e!2825324)))

(declare-fun lt!1709340 () ListMap!3641)

(declare-fun lt!1709325 () ListMap!3641)

(assert (=> b!4534176 (= res!1888771 (not (eq!643 lt!1709340 lt!1709325)))))

(declare-fun addToMapMapFromBucket!713 (List!50842 ListMap!3641) ListMap!3641)

(assert (=> b!4534176 (= lt!1709325 (addToMapMapFromBucket!713 (_2!28884 lt!1709342) lt!1709323))))

(assert (=> b!4534176 (= lt!1709340 (extractMap!1242 (toList!4379 lt!1709350)))))

(declare-fun b!4534177 () Bool)

(declare-fun res!1888778 () Bool)

(assert (=> b!4534177 (=> res!1888778 e!2825313)))

(assert (=> b!4534177 (= res!1888778 (not (contains!13489 (t!357805 (toList!4379 lm!1477)) lt!1709320)))))

(declare-fun b!4534178 () Bool)

(declare-fun res!1888768 () Bool)

(assert (=> b!4534178 (=> (not res!1888768) (not e!2825320))))

(declare-fun allKeysSameHashInMap!1293 (ListLongMap!3011 Hashable!5581) Bool)

(assert (=> b!4534178 (= res!1888768 (allKeysSameHashInMap!1293 lm!1477 hashF!1107))))

(declare-fun b!4534179 () Bool)

(assert (=> b!4534179 (= e!2825317 e!2825311)))

(declare-fun res!1888776 () Bool)

(assert (=> b!4534179 (=> (not res!1888776) (not e!2825311))))

(assert (=> b!4534179 (= res!1888776 (= lt!1709346 hash!344))))

(declare-fun hash!2885 (Hashable!5581 K!12105) (_ BitVec 64))

(assert (=> b!4534179 (= lt!1709346 (hash!2885 hashF!1107 key!3287))))

(declare-fun b!4534180 () Bool)

(declare-fun res!1888766 () Bool)

(assert (=> b!4534180 (=> res!1888766 e!2825313)))

(assert (=> b!4534180 (= res!1888766 (not (= (apply!11923 lt!1709344 hash!344) lt!1709321)))))

(declare-fun b!4534181 () Bool)

(declare-fun e!2825312 () Bool)

(assert (=> b!4534181 (= e!2825312 e!2825323)))

(declare-fun res!1888770 () Bool)

(assert (=> b!4534181 (=> res!1888770 e!2825323)))

(declare-fun lt!1709322 () ListMap!3641)

(declare-fun lt!1709332 () ListMap!3641)

(assert (=> b!4534181 (= res!1888770 (not (eq!643 lt!1709322 lt!1709332)))))

(assert (=> b!4534181 (= lt!1709322 lt!1709332)))

(assert (=> b!4534181 (= lt!1709332 (-!412 (addToMapMapFromBucket!713 (_2!28884 lt!1709342) lt!1709335) key!3287))))

(declare-fun lt!1709330 () Unit!97512)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!10 (ListMap!3641 K!12105 List!50842) Unit!97512)

(assert (=> b!4534181 (= lt!1709330 (lemmaAddToMapFromBucketMinusKeyIsCommutative!10 lt!1709335 key!3287 (_2!28884 lt!1709342)))))

(declare-fun b!4534182 () Bool)

(assert (=> b!4534182 (= e!2825316 e!2825312)))

(declare-fun res!1888760 () Bool)

(assert (=> b!4534182 (=> res!1888760 e!2825312)))

(declare-fun lt!1709345 () Bool)

(assert (=> b!4534182 (= res!1888760 lt!1709345)))

(declare-fun lt!1709337 () Unit!97512)

(assert (=> b!4534182 (= lt!1709337 e!2825315)))

(declare-fun c!774312 () Bool)

(assert (=> b!4534182 (= c!774312 lt!1709345)))

(assert (=> b!4534182 (= lt!1709345 (containsKey!1846 (_2!28884 lt!1709342) key!3287))))

(declare-fun b!4534183 () Bool)

(assert (=> b!4534183 (= e!2825314 e!2825322)))

(declare-fun res!1888763 () Bool)

(assert (=> b!4534183 (=> res!1888763 e!2825322)))

(declare-fun containsKeyBiggerList!166 (List!50843 K!12105) Bool)

(assert (=> b!4534183 (= res!1888763 (not (containsKeyBiggerList!166 (t!357805 (toList!4379 lm!1477)) key!3287)))))

(assert (=> b!4534183 (containsKeyBiggerList!166 (toList!4379 lt!1709344) key!3287)))

(declare-fun lt!1709326 () Unit!97512)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!102 (ListLongMap!3011 K!12105 Hashable!5581) Unit!97512)

(assert (=> b!4534183 (= lt!1709326 (lemmaInLongMapThenContainsKeyBiggerList!102 lt!1709344 key!3287 hashF!1107))))

(declare-fun b!4534184 () Bool)

(declare-fun res!1888755 () Bool)

(assert (=> b!4534184 (=> res!1888755 e!2825327)))

(assert (=> b!4534184 (= res!1888755 (not (= (head!9458 lt!1709350) lt!1709342)))))

(declare-fun b!4534185 () Bool)

(declare-fun Unit!97517 () Unit!97512)

(assert (=> b!4534185 (= e!2825315 Unit!97517)))

(declare-fun b!4534186 () Bool)

(assert (=> b!4534186 (= e!2825324 e!2825325)))

(declare-fun res!1888759 () Bool)

(assert (=> b!4534186 (=> res!1888759 e!2825325)))

(assert (=> b!4534186 (= res!1888759 (not (eq!643 lt!1709340 lt!1709322)))))

(assert (=> b!4534186 (eq!643 lt!1709325 lt!1709322)))

(assert (=> b!4534186 (= lt!1709322 (addToMapMapFromBucket!713 (_2!28884 lt!1709342) lt!1709351))))

(declare-fun lt!1709347 () Unit!97512)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!62 (ListMap!3641 ListMap!3641 List!50842) Unit!97512)

(assert (=> b!4534186 (= lt!1709347 (lemmaAddToMapFromBucketPreservesEquivalence!62 lt!1709323 lt!1709351 (_2!28884 lt!1709342)))))

(assert (= (and start!449788 res!1888774) b!4534178))

(assert (= (and b!4534178 res!1888768) b!4534166))

(assert (= (and b!4534166 res!1888757) b!4534179))

(assert (= (and b!4534179 res!1888776) b!4534162))

(assert (= (and b!4534162 res!1888773) b!4534160))

(assert (= (and b!4534160 (not res!1888764)) b!4534167))

(assert (= (and b!4534167 (not res!1888762)) b!4534158))

(assert (= (and b!4534158 (not res!1888767)) b!4534168))

(assert (= (and b!4534168 (not res!1888758)) b!4534180))

(assert (= (and b!4534180 (not res!1888766)) b!4534177))

(assert (= (and b!4534177 (not res!1888778)) b!4534175))

(assert (= (and b!4534175 c!774313) b!4534159))

(assert (= (and b!4534175 (not c!774313)) b!4534161))

(assert (= (and b!4534175 (not res!1888769)) b!4534183))

(assert (= (and b!4534183 (not res!1888763)) b!4534171))

(assert (= (and b!4534171 (not res!1888777)) b!4534172))

(assert (= (and b!4534172 (not res!1888772)) b!4534174))

(assert (= (and b!4534174 (not res!1888756)) b!4534163))

(assert (= (and b!4534163 (not res!1888761)) b!4534157))

(assert (= (and b!4534157 (not res!1888775)) b!4534184))

(assert (= (and b!4534184 (not res!1888755)) b!4534176))

(assert (= (and b!4534176 (not res!1888771)) b!4534186))

(assert (= (and b!4534186 (not res!1888759)) b!4534169))

(assert (= (and b!4534169 (not res!1888765)) b!4534182))

(assert (= (and b!4534182 c!774312) b!4534165))

(assert (= (and b!4534182 (not c!774312)) b!4534185))

(assert (= (and b!4534182 (not res!1888760)) b!4534181))

(assert (= (and b!4534181 (not res!1888770)) b!4534173))

(assert (= start!449788 b!4534164))

(assert (= (and start!449788 ((_ is Cons!50718) newBucket!178)) b!4534170))

(declare-fun m!5294873 () Bool)

(assert (=> b!4534183 m!5294873))

(declare-fun m!5294875 () Bool)

(assert (=> b!4534183 m!5294875))

(declare-fun m!5294877 () Bool)

(assert (=> b!4534183 m!5294877))

(declare-fun m!5294879 () Bool)

(assert (=> b!4534174 m!5294879))

(declare-fun m!5294881 () Bool)

(assert (=> b!4534157 m!5294881))

(declare-fun m!5294883 () Bool)

(assert (=> b!4534157 m!5294883))

(declare-fun m!5294885 () Bool)

(assert (=> b!4534166 m!5294885))

(declare-fun m!5294887 () Bool)

(assert (=> b!4534166 m!5294887))

(declare-fun m!5294889 () Bool)

(assert (=> b!4534177 m!5294889))

(declare-fun m!5294891 () Bool)

(assert (=> start!449788 m!5294891))

(declare-fun m!5294893 () Bool)

(assert (=> start!449788 m!5294893))

(declare-fun m!5294895 () Bool)

(assert (=> b!4534181 m!5294895))

(declare-fun m!5294897 () Bool)

(assert (=> b!4534181 m!5294897))

(assert (=> b!4534181 m!5294897))

(declare-fun m!5294899 () Bool)

(assert (=> b!4534181 m!5294899))

(declare-fun m!5294901 () Bool)

(assert (=> b!4534181 m!5294901))

(declare-fun m!5294903 () Bool)

(assert (=> b!4534180 m!5294903))

(declare-fun m!5294905 () Bool)

(assert (=> b!4534179 m!5294905))

(declare-fun m!5294907 () Bool)

(assert (=> b!4534176 m!5294907))

(declare-fun m!5294909 () Bool)

(assert (=> b!4534176 m!5294909))

(declare-fun m!5294911 () Bool)

(assert (=> b!4534176 m!5294911))

(declare-fun m!5294913 () Bool)

(assert (=> b!4534173 m!5294913))

(declare-fun m!5294915 () Bool)

(assert (=> b!4534186 m!5294915))

(declare-fun m!5294917 () Bool)

(assert (=> b!4534186 m!5294917))

(declare-fun m!5294919 () Bool)

(assert (=> b!4534186 m!5294919))

(declare-fun m!5294921 () Bool)

(assert (=> b!4534186 m!5294921))

(declare-fun m!5294923 () Bool)

(assert (=> b!4534178 m!5294923))

(declare-fun m!5294925 () Bool)

(assert (=> b!4534159 m!5294925))

(declare-fun m!5294927 () Bool)

(assert (=> b!4534165 m!5294927))

(declare-fun m!5294929 () Bool)

(assert (=> b!4534165 m!5294929))

(declare-fun m!5294931 () Bool)

(assert (=> b!4534165 m!5294931))

(declare-fun m!5294933 () Bool)

(assert (=> b!4534165 m!5294933))

(declare-fun m!5294935 () Bool)

(assert (=> b!4534160 m!5294935))

(declare-fun m!5294937 () Bool)

(assert (=> b!4534160 m!5294937))

(declare-fun m!5294939 () Bool)

(assert (=> b!4534160 m!5294939))

(declare-fun m!5294941 () Bool)

(assert (=> b!4534160 m!5294941))

(declare-fun m!5294943 () Bool)

(assert (=> b!4534160 m!5294943))

(declare-fun m!5294945 () Bool)

(assert (=> b!4534160 m!5294945))

(declare-fun m!5294947 () Bool)

(assert (=> b!4534160 m!5294947))

(declare-fun m!5294949 () Bool)

(assert (=> b!4534169 m!5294949))

(declare-fun m!5294951 () Bool)

(assert (=> b!4534169 m!5294951))

(declare-fun m!5294953 () Bool)

(assert (=> b!4534171 m!5294953))

(declare-fun m!5294955 () Bool)

(assert (=> b!4534171 m!5294955))

(declare-fun m!5294957 () Bool)

(assert (=> b!4534171 m!5294957))

(assert (=> b!4534171 m!5294953))

(declare-fun m!5294959 () Bool)

(assert (=> b!4534171 m!5294959))

(declare-fun m!5294961 () Bool)

(assert (=> b!4534171 m!5294961))

(declare-fun m!5294963 () Bool)

(assert (=> b!4534182 m!5294963))

(declare-fun m!5294965 () Bool)

(assert (=> b!4534184 m!5294965))

(declare-fun m!5294967 () Bool)

(assert (=> b!4534172 m!5294967))

(declare-fun m!5294969 () Bool)

(assert (=> b!4534172 m!5294969))

(declare-fun m!5294971 () Bool)

(assert (=> b!4534172 m!5294971))

(declare-fun m!5294973 () Bool)

(assert (=> b!4534172 m!5294973))

(declare-fun m!5294975 () Bool)

(assert (=> b!4534172 m!5294975))

(declare-fun m!5294977 () Bool)

(assert (=> b!4534172 m!5294977))

(declare-fun m!5294979 () Bool)

(assert (=> b!4534172 m!5294979))

(declare-fun m!5294981 () Bool)

(assert (=> b!4534172 m!5294981))

(declare-fun m!5294983 () Bool)

(assert (=> b!4534172 m!5294983))

(declare-fun m!5294985 () Bool)

(assert (=> b!4534162 m!5294985))

(declare-fun m!5294987 () Bool)

(assert (=> b!4534168 m!5294987))

(declare-fun m!5294989 () Bool)

(assert (=> b!4534168 m!5294989))

(declare-fun m!5294991 () Bool)

(assert (=> b!4534175 m!5294991))

(declare-fun m!5294993 () Bool)

(assert (=> b!4534167 m!5294993))

(check-sat (not start!449788) (not b!4534184) tp_is_empty!28021 tp_is_empty!28023 (not b!4534181) (not b!4534173) (not b!4534174) (not b!4534179) (not b!4534168) (not b!4534162) (not b!4534172) (not b!4534157) (not b!4534183) (not b!4534171) (not b!4534160) (not b!4534178) (not b!4534165) (not b!4534166) (not b!4534159) (not b!4534177) (not b!4534170) (not b!4534167) (not b!4534182) (not b!4534169) (not b!4534180) (not b!4534164) (not b!4534176) (not b!4534186) (not b!4534175))
(check-sat)
(get-model)

(declare-fun d!1400373 () Bool)

(declare-fun res!1888800 () Bool)

(declare-fun e!2825349 () Bool)

(assert (=> d!1400373 (=> res!1888800 e!2825349)))

(assert (=> d!1400373 (= res!1888800 (and ((_ is Cons!50718) lt!1709321) (= (_1!28883 (h!56591 lt!1709321)) key!3287)))))

(assert (=> d!1400373 (= (containsKey!1846 lt!1709321 key!3287) e!2825349)))

(declare-fun b!4534218 () Bool)

(declare-fun e!2825350 () Bool)

(assert (=> b!4534218 (= e!2825349 e!2825350)))

(declare-fun res!1888801 () Bool)

(assert (=> b!4534218 (=> (not res!1888801) (not e!2825350))))

(assert (=> b!4534218 (= res!1888801 ((_ is Cons!50718) lt!1709321))))

(declare-fun b!4534219 () Bool)

(assert (=> b!4534219 (= e!2825350 (containsKey!1846 (t!357804 lt!1709321) key!3287))))

(assert (= (and d!1400373 (not res!1888800)) b!4534218))

(assert (= (and b!4534218 res!1888801) b!4534219))

(declare-fun m!5295049 () Bool)

(assert (=> b!4534219 m!5295049))

(assert (=> b!4534175 d!1400373))

(declare-fun d!1400375 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8416 (List!50842) (InoxSet tuple2!51178))

(assert (=> d!1400375 (= (eq!643 lt!1709328 lt!1709336) (= (content!8416 (toList!4380 lt!1709328)) (content!8416 (toList!4380 lt!1709336))))))

(declare-fun bs!871138 () Bool)

(assert (= bs!871138 d!1400375))

(declare-fun m!5295067 () Bool)

(assert (=> bs!871138 m!5295067))

(declare-fun m!5295069 () Bool)

(assert (=> bs!871138 m!5295069))

(assert (=> b!4534174 d!1400375))

(declare-fun d!1400381 () Bool)

(declare-fun e!2825367 () Bool)

(assert (=> d!1400381 e!2825367))

(declare-fun res!1888819 () Bool)

(assert (=> d!1400381 (=> (not res!1888819) (not e!2825367))))

(declare-fun lt!1709387 () ListLongMap!3011)

(assert (=> d!1400381 (= res!1888819 (contains!13490 lt!1709387 (_1!28884 lt!1709334)))))

(declare-fun lt!1709390 () List!50843)

(assert (=> d!1400381 (= lt!1709387 (ListLongMap!3012 lt!1709390))))

(declare-fun lt!1709389 () Unit!97512)

(declare-fun lt!1709388 () Unit!97512)

(assert (=> d!1400381 (= lt!1709389 lt!1709388)))

(declare-datatypes ((Option!11176 0))(
  ( (None!11175) (Some!11175 (v!44849 List!50842)) )
))
(declare-fun getValueByKey!1132 (List!50843 (_ BitVec 64)) Option!11176)

(assert (=> d!1400381 (= (getValueByKey!1132 lt!1709390 (_1!28884 lt!1709334)) (Some!11175 (_2!28884 lt!1709334)))))

(declare-fun lemmaContainsTupThenGetReturnValue!710 (List!50843 (_ BitVec 64) List!50842) Unit!97512)

(assert (=> d!1400381 (= lt!1709388 (lemmaContainsTupThenGetReturnValue!710 lt!1709390 (_1!28884 lt!1709334) (_2!28884 lt!1709334)))))

(declare-fun insertStrictlySorted!428 (List!50843 (_ BitVec 64) List!50842) List!50843)

(assert (=> d!1400381 (= lt!1709390 (insertStrictlySorted!428 (toList!4379 lm!1477) (_1!28884 lt!1709334) (_2!28884 lt!1709334)))))

(assert (=> d!1400381 (= (+!1584 lm!1477 lt!1709334) lt!1709387)))

(declare-fun b!4534240 () Bool)

(declare-fun res!1888818 () Bool)

(assert (=> b!4534240 (=> (not res!1888818) (not e!2825367))))

(assert (=> b!4534240 (= res!1888818 (= (getValueByKey!1132 (toList!4379 lt!1709387) (_1!28884 lt!1709334)) (Some!11175 (_2!28884 lt!1709334))))))

(declare-fun b!4534241 () Bool)

(assert (=> b!4534241 (= e!2825367 (contains!13489 (toList!4379 lt!1709387) lt!1709334))))

(assert (= (and d!1400381 res!1888819) b!4534240))

(assert (= (and b!4534240 res!1888818) b!4534241))

(declare-fun m!5295091 () Bool)

(assert (=> d!1400381 m!5295091))

(declare-fun m!5295093 () Bool)

(assert (=> d!1400381 m!5295093))

(declare-fun m!5295095 () Bool)

(assert (=> d!1400381 m!5295095))

(declare-fun m!5295097 () Bool)

(assert (=> d!1400381 m!5295097))

(declare-fun m!5295099 () Bool)

(assert (=> b!4534240 m!5295099))

(declare-fun m!5295101 () Bool)

(assert (=> b!4534241 m!5295101))

(assert (=> b!4534157 d!1400381))

(declare-fun d!1400389 () Bool)

(declare-fun e!2825368 () Bool)

(assert (=> d!1400389 e!2825368))

(declare-fun res!1888821 () Bool)

(assert (=> d!1400389 (=> (not res!1888821) (not e!2825368))))

(declare-fun lt!1709394 () ListLongMap!3011)

(assert (=> d!1400389 (= res!1888821 (contains!13490 lt!1709394 (_1!28884 lt!1709342)))))

(declare-fun lt!1709397 () List!50843)

(assert (=> d!1400389 (= lt!1709394 (ListLongMap!3012 lt!1709397))))

(declare-fun lt!1709396 () Unit!97512)

(declare-fun lt!1709395 () Unit!97512)

(assert (=> d!1400389 (= lt!1709396 lt!1709395)))

(assert (=> d!1400389 (= (getValueByKey!1132 lt!1709397 (_1!28884 lt!1709342)) (Some!11175 (_2!28884 lt!1709342)))))

(assert (=> d!1400389 (= lt!1709395 (lemmaContainsTupThenGetReturnValue!710 lt!1709397 (_1!28884 lt!1709342) (_2!28884 lt!1709342)))))

(assert (=> d!1400389 (= lt!1709397 (insertStrictlySorted!428 (toList!4379 lt!1709352) (_1!28884 lt!1709342) (_2!28884 lt!1709342)))))

(assert (=> d!1400389 (= (+!1584 lt!1709352 lt!1709342) lt!1709394)))

(declare-fun b!4534242 () Bool)

(declare-fun res!1888820 () Bool)

(assert (=> b!4534242 (=> (not res!1888820) (not e!2825368))))

(assert (=> b!4534242 (= res!1888820 (= (getValueByKey!1132 (toList!4379 lt!1709394) (_1!28884 lt!1709342)) (Some!11175 (_2!28884 lt!1709342))))))

(declare-fun b!4534243 () Bool)

(assert (=> b!4534243 (= e!2825368 (contains!13489 (toList!4379 lt!1709394) lt!1709342))))

(assert (= (and d!1400389 res!1888821) b!4534242))

(assert (= (and b!4534242 res!1888820) b!4534243))

(declare-fun m!5295107 () Bool)

(assert (=> d!1400389 m!5295107))

(declare-fun m!5295113 () Bool)

(assert (=> d!1400389 m!5295113))

(declare-fun m!5295115 () Bool)

(assert (=> d!1400389 m!5295115))

(declare-fun m!5295117 () Bool)

(assert (=> d!1400389 m!5295117))

(declare-fun m!5295119 () Bool)

(assert (=> b!4534242 m!5295119))

(declare-fun m!5295121 () Bool)

(assert (=> b!4534243 m!5295121))

(assert (=> b!4534157 d!1400389))

(declare-fun bs!871150 () Bool)

(declare-fun d!1400395 () Bool)

(assert (= bs!871150 (and d!1400395 start!449788)))

(declare-fun lambda!175008 () Int)

(assert (=> bs!871150 (not (= lambda!175008 lambda!174993))))

(declare-fun bs!871151 () Bool)

(assert (= bs!871151 (and d!1400395 b!4534165)))

(assert (=> bs!871151 (= lambda!175008 lambda!174994)))

(assert (=> d!1400395 true))

(assert (=> d!1400395 (= (allKeysSameHashInMap!1293 lm!1477 hashF!1107) (forall!10321 (toList!4379 lm!1477) lambda!175008))))

(declare-fun bs!871158 () Bool)

(assert (= bs!871158 d!1400395))

(declare-fun m!5295155 () Bool)

(assert (=> bs!871158 m!5295155))

(assert (=> b!4534178 d!1400395))

(declare-fun d!1400405 () Bool)

(declare-fun lt!1709412 () Bool)

(declare-fun content!8417 (List!50843) (InoxSet tuple2!51180))

(assert (=> d!1400405 (= lt!1709412 (select (content!8417 (t!357805 (toList!4379 lm!1477))) lt!1709320))))

(declare-fun e!2825388 () Bool)

(assert (=> d!1400405 (= lt!1709412 e!2825388)))

(declare-fun res!1888842 () Bool)

(assert (=> d!1400405 (=> (not res!1888842) (not e!2825388))))

(assert (=> d!1400405 (= res!1888842 ((_ is Cons!50719) (t!357805 (toList!4379 lm!1477))))))

(assert (=> d!1400405 (= (contains!13489 (t!357805 (toList!4379 lm!1477)) lt!1709320) lt!1709412)))

(declare-fun b!4534265 () Bool)

(declare-fun e!2825387 () Bool)

(assert (=> b!4534265 (= e!2825388 e!2825387)))

(declare-fun res!1888841 () Bool)

(assert (=> b!4534265 (=> res!1888841 e!2825387)))

(assert (=> b!4534265 (= res!1888841 (= (h!56592 (t!357805 (toList!4379 lm!1477))) lt!1709320))))

(declare-fun b!4534266 () Bool)

(assert (=> b!4534266 (= e!2825387 (contains!13489 (t!357805 (t!357805 (toList!4379 lm!1477))) lt!1709320))))

(assert (= (and d!1400405 res!1888842) b!4534265))

(assert (= (and b!4534265 (not res!1888841)) b!4534266))

(declare-fun m!5295165 () Bool)

(assert (=> d!1400405 m!5295165))

(declare-fun m!5295167 () Bool)

(assert (=> d!1400405 m!5295167))

(declare-fun m!5295169 () Bool)

(assert (=> b!4534266 m!5295169))

(assert (=> b!4534177 d!1400405))

(declare-fun d!1400409 () Bool)

(declare-fun res!1888847 () Bool)

(declare-fun e!2825393 () Bool)

(assert (=> d!1400409 (=> res!1888847 e!2825393)))

(assert (=> d!1400409 (= res!1888847 ((_ is Nil!50719) (toList!4379 lm!1477)))))

(assert (=> d!1400409 (= (forall!10321 (toList!4379 lm!1477) lambda!174993) e!2825393)))

(declare-fun b!4534271 () Bool)

(declare-fun e!2825394 () Bool)

(assert (=> b!4534271 (= e!2825393 e!2825394)))

(declare-fun res!1888848 () Bool)

(assert (=> b!4534271 (=> (not res!1888848) (not e!2825394))))

(declare-fun dynLambda!21199 (Int tuple2!51180) Bool)

(assert (=> b!4534271 (= res!1888848 (dynLambda!21199 lambda!174993 (h!56592 (toList!4379 lm!1477))))))

(declare-fun b!4534272 () Bool)

(assert (=> b!4534272 (= e!2825394 (forall!10321 (t!357805 (toList!4379 lm!1477)) lambda!174993))))

(assert (= (and d!1400409 (not res!1888847)) b!4534271))

(assert (= (and b!4534271 res!1888848) b!4534272))

(declare-fun b_lambda!157153 () Bool)

(assert (=> (not b_lambda!157153) (not b!4534271)))

(declare-fun m!5295171 () Bool)

(assert (=> b!4534271 m!5295171))

(declare-fun m!5295173 () Bool)

(assert (=> b!4534272 m!5295173))

(assert (=> start!449788 d!1400409))

(declare-fun d!1400411 () Bool)

(declare-fun isStrictlySorted!451 (List!50843) Bool)

(assert (=> d!1400411 (= (inv!66289 lm!1477) (isStrictlySorted!451 (toList!4379 lm!1477)))))

(declare-fun bs!871159 () Bool)

(assert (= bs!871159 d!1400411))

(declare-fun m!5295175 () Bool)

(assert (=> bs!871159 m!5295175))

(assert (=> start!449788 d!1400411))

(declare-fun d!1400413 () Bool)

(assert (=> d!1400413 (= (eq!643 lt!1709340 lt!1709325) (= (content!8416 (toList!4380 lt!1709340)) (content!8416 (toList!4380 lt!1709325))))))

(declare-fun bs!871160 () Bool)

(assert (= bs!871160 d!1400413))

(declare-fun m!5295177 () Bool)

(assert (=> bs!871160 m!5295177))

(declare-fun m!5295179 () Bool)

(assert (=> bs!871160 m!5295179))

(assert (=> b!4534176 d!1400413))

(declare-fun bs!871194 () Bool)

(declare-fun b!4534391 () Bool)

(assert (= bs!871194 (and b!4534391 b!4534165)))

(declare-fun lambda!175048 () Int)

(assert (=> bs!871194 (not (= lambda!175048 lambda!174995))))

(assert (=> b!4534391 true))

(declare-fun bs!871195 () Bool)

(declare-fun b!4534392 () Bool)

(assert (= bs!871195 (and b!4534392 b!4534165)))

(declare-fun lambda!175049 () Int)

(assert (=> bs!871195 (not (= lambda!175049 lambda!174995))))

(declare-fun bs!871196 () Bool)

(assert (= bs!871196 (and b!4534392 b!4534391)))

(assert (=> bs!871196 (= lambda!175049 lambda!175048)))

(assert (=> b!4534392 true))

(declare-fun lambda!175050 () Int)

(assert (=> bs!871195 (not (= lambda!175050 lambda!174995))))

(declare-fun lt!1709544 () ListMap!3641)

(assert (=> bs!871196 (= (= lt!1709544 lt!1709323) (= lambda!175050 lambda!175048))))

(assert (=> b!4534392 (= (= lt!1709544 lt!1709323) (= lambda!175050 lambda!175049))))

(assert (=> b!4534392 true))

(declare-fun bs!871197 () Bool)

(declare-fun d!1400415 () Bool)

(assert (= bs!871197 (and d!1400415 b!4534165)))

(declare-fun lambda!175053 () Int)

(assert (=> bs!871197 (not (= lambda!175053 lambda!174995))))

(declare-fun bs!871198 () Bool)

(assert (= bs!871198 (and d!1400415 b!4534391)))

(declare-fun lt!1709527 () ListMap!3641)

(assert (=> bs!871198 (= (= lt!1709527 lt!1709323) (= lambda!175053 lambda!175048))))

(declare-fun bs!871199 () Bool)

(assert (= bs!871199 (and d!1400415 b!4534392)))

(assert (=> bs!871199 (= (= lt!1709527 lt!1709323) (= lambda!175053 lambda!175049))))

(assert (=> bs!871199 (= (= lt!1709527 lt!1709544) (= lambda!175053 lambda!175050))))

(assert (=> d!1400415 true))

(declare-fun bm!316127 () Bool)

(declare-fun call!316133 () Unit!97512)

(declare-fun lemmaContainsAllItsOwnKeys!357 (ListMap!3641) Unit!97512)

(assert (=> bm!316127 (= call!316133 (lemmaContainsAllItsOwnKeys!357 lt!1709323))))

(declare-fun e!2825475 () ListMap!3641)

(assert (=> b!4534391 (= e!2825475 lt!1709323)))

(declare-fun lt!1709530 () Unit!97512)

(assert (=> b!4534391 (= lt!1709530 call!316133)))

(declare-fun call!316134 () Bool)

(assert (=> b!4534391 call!316134))

(declare-fun lt!1709529 () Unit!97512)

(assert (=> b!4534391 (= lt!1709529 lt!1709530)))

(declare-fun call!316132 () Bool)

(assert (=> b!4534391 call!316132))

(declare-fun lt!1709538 () Unit!97512)

(declare-fun Unit!97522 () Unit!97512)

(assert (=> b!4534391 (= lt!1709538 Unit!97522)))

(assert (=> b!4534392 (= e!2825475 lt!1709544)))

(declare-fun lt!1709545 () ListMap!3641)

(declare-fun +!1585 (ListMap!3641 tuple2!51178) ListMap!3641)

(assert (=> b!4534392 (= lt!1709545 (+!1585 lt!1709323 (h!56591 (_2!28884 lt!1709342))))))

(assert (=> b!4534392 (= lt!1709544 (addToMapMapFromBucket!713 (t!357804 (_2!28884 lt!1709342)) (+!1585 lt!1709323 (h!56591 (_2!28884 lt!1709342)))))))

(declare-fun lt!1709535 () Unit!97512)

(assert (=> b!4534392 (= lt!1709535 call!316133)))

(declare-fun forall!10323 (List!50842 Int) Bool)

(assert (=> b!4534392 (forall!10323 (toList!4380 lt!1709323) lambda!175049)))

(declare-fun lt!1709540 () Unit!97512)

(assert (=> b!4534392 (= lt!1709540 lt!1709535)))

(assert (=> b!4534392 call!316134))

(declare-fun lt!1709531 () Unit!97512)

(declare-fun Unit!97523 () Unit!97512)

(assert (=> b!4534392 (= lt!1709531 Unit!97523)))

(assert (=> b!4534392 (forall!10323 (t!357804 (_2!28884 lt!1709342)) lambda!175050)))

(declare-fun lt!1709541 () Unit!97512)

(declare-fun Unit!97524 () Unit!97512)

(assert (=> b!4534392 (= lt!1709541 Unit!97524)))

(declare-fun lt!1709528 () Unit!97512)

(declare-fun Unit!97525 () Unit!97512)

(assert (=> b!4534392 (= lt!1709528 Unit!97525)))

(declare-fun lt!1709539 () Unit!97512)

(assert (=> b!4534392 (= lt!1709539 (forallContained!2579 (toList!4380 lt!1709545) lambda!175050 (h!56591 (_2!28884 lt!1709342))))))

(assert (=> b!4534392 (contains!13491 lt!1709545 (_1!28883 (h!56591 (_2!28884 lt!1709342))))))

(declare-fun lt!1709542 () Unit!97512)

(declare-fun Unit!97526 () Unit!97512)

(assert (=> b!4534392 (= lt!1709542 Unit!97526)))

(assert (=> b!4534392 (contains!13491 lt!1709544 (_1!28883 (h!56591 (_2!28884 lt!1709342))))))

(declare-fun lt!1709532 () Unit!97512)

(declare-fun Unit!97527 () Unit!97512)

(assert (=> b!4534392 (= lt!1709532 Unit!97527)))

(assert (=> b!4534392 (forall!10323 (_2!28884 lt!1709342) lambda!175050)))

(declare-fun lt!1709537 () Unit!97512)

(declare-fun Unit!97528 () Unit!97512)

(assert (=> b!4534392 (= lt!1709537 Unit!97528)))

(assert (=> b!4534392 (forall!10323 (toList!4380 lt!1709545) lambda!175050)))

(declare-fun lt!1709543 () Unit!97512)

(declare-fun Unit!97529 () Unit!97512)

(assert (=> b!4534392 (= lt!1709543 Unit!97529)))

(declare-fun lt!1709547 () Unit!97512)

(declare-fun Unit!97530 () Unit!97512)

(assert (=> b!4534392 (= lt!1709547 Unit!97530)))

(declare-fun lt!1709534 () Unit!97512)

(declare-fun addForallContainsKeyThenBeforeAdding!357 (ListMap!3641 ListMap!3641 K!12105 V!12351) Unit!97512)

(assert (=> b!4534392 (= lt!1709534 (addForallContainsKeyThenBeforeAdding!357 lt!1709323 lt!1709544 (_1!28883 (h!56591 (_2!28884 lt!1709342))) (_2!28883 (h!56591 (_2!28884 lt!1709342)))))))

(assert (=> b!4534392 call!316132))

(declare-fun lt!1709546 () Unit!97512)

(assert (=> b!4534392 (= lt!1709546 lt!1709534)))

(assert (=> b!4534392 (forall!10323 (toList!4380 lt!1709323) lambda!175050)))

(declare-fun lt!1709536 () Unit!97512)

(declare-fun Unit!97531 () Unit!97512)

(assert (=> b!4534392 (= lt!1709536 Unit!97531)))

(declare-fun res!1888905 () Bool)

(assert (=> b!4534392 (= res!1888905 (forall!10323 (_2!28884 lt!1709342) lambda!175050))))

(declare-fun e!2825476 () Bool)

(assert (=> b!4534392 (=> (not res!1888905) (not e!2825476))))

(assert (=> b!4534392 e!2825476))

(declare-fun lt!1709533 () Unit!97512)

(declare-fun Unit!97532 () Unit!97512)

(assert (=> b!4534392 (= lt!1709533 Unit!97532)))

(declare-fun b!4534393 () Bool)

(assert (=> b!4534393 (= e!2825476 (forall!10323 (toList!4380 lt!1709323) lambda!175050))))

(declare-fun b!4534394 () Bool)

(declare-fun e!2825477 () Bool)

(declare-fun invariantList!1037 (List!50842) Bool)

(assert (=> b!4534394 (= e!2825477 (invariantList!1037 (toList!4380 lt!1709527)))))

(declare-fun b!4534395 () Bool)

(declare-fun res!1888904 () Bool)

(assert (=> b!4534395 (=> (not res!1888904) (not e!2825477))))

(assert (=> b!4534395 (= res!1888904 (forall!10323 (toList!4380 lt!1709323) lambda!175053))))

(declare-fun bm!316129 () Bool)

(declare-fun c!774350 () Bool)

(assert (=> bm!316129 (= call!316134 (forall!10323 (ite c!774350 (toList!4380 lt!1709323) (toList!4380 lt!1709545)) (ite c!774350 lambda!175048 lambda!175050)))))

(declare-fun bm!316128 () Bool)

(assert (=> bm!316128 (= call!316132 (forall!10323 (toList!4380 lt!1709323) (ite c!774350 lambda!175048 lambda!175050)))))

(assert (=> d!1400415 e!2825477))

(declare-fun res!1888903 () Bool)

(assert (=> d!1400415 (=> (not res!1888903) (not e!2825477))))

(assert (=> d!1400415 (= res!1888903 (forall!10323 (_2!28884 lt!1709342) lambda!175053))))

(assert (=> d!1400415 (= lt!1709527 e!2825475)))

(assert (=> d!1400415 (= c!774350 ((_ is Nil!50718) (_2!28884 lt!1709342)))))

(assert (=> d!1400415 (noDuplicateKeys!1186 (_2!28884 lt!1709342))))

(assert (=> d!1400415 (= (addToMapMapFromBucket!713 (_2!28884 lt!1709342) lt!1709323) lt!1709527)))

(assert (= (and d!1400415 c!774350) b!4534391))

(assert (= (and d!1400415 (not c!774350)) b!4534392))

(assert (= (and b!4534392 res!1888905) b!4534393))

(assert (= (or b!4534391 b!4534392) bm!316129))

(assert (= (or b!4534391 b!4534392) bm!316128))

(assert (= (or b!4534391 b!4534392) bm!316127))

(assert (= (and d!1400415 res!1888903) b!4534395))

(assert (= (and b!4534395 res!1888904) b!4534394))

(declare-fun m!5295313 () Bool)

(assert (=> b!4534392 m!5295313))

(declare-fun m!5295315 () Bool)

(assert (=> b!4534392 m!5295315))

(declare-fun m!5295317 () Bool)

(assert (=> b!4534392 m!5295317))

(declare-fun m!5295319 () Bool)

(assert (=> b!4534392 m!5295319))

(declare-fun m!5295321 () Bool)

(assert (=> b!4534392 m!5295321))

(declare-fun m!5295323 () Bool)

(assert (=> b!4534392 m!5295323))

(assert (=> b!4534392 m!5295319))

(declare-fun m!5295325 () Bool)

(assert (=> b!4534392 m!5295325))

(declare-fun m!5295327 () Bool)

(assert (=> b!4534392 m!5295327))

(declare-fun m!5295329 () Bool)

(assert (=> b!4534392 m!5295329))

(declare-fun m!5295331 () Bool)

(assert (=> b!4534392 m!5295331))

(declare-fun m!5295333 () Bool)

(assert (=> b!4534392 m!5295333))

(assert (=> b!4534392 m!5295315))

(declare-fun m!5295335 () Bool)

(assert (=> bm!316127 m!5295335))

(assert (=> b!4534393 m!5295329))

(declare-fun m!5295337 () Bool)

(assert (=> b!4534394 m!5295337))

(declare-fun m!5295339 () Bool)

(assert (=> d!1400415 m!5295339))

(assert (=> d!1400415 m!5294949))

(declare-fun m!5295341 () Bool)

(assert (=> b!4534395 m!5295341))

(declare-fun m!5295343 () Bool)

(assert (=> bm!316129 m!5295343))

(declare-fun m!5295345 () Bool)

(assert (=> bm!316128 m!5295345))

(assert (=> b!4534176 d!1400415))

(declare-fun bs!871200 () Bool)

(declare-fun d!1400461 () Bool)

(assert (= bs!871200 (and d!1400461 start!449788)))

(declare-fun lambda!175082 () Int)

(assert (=> bs!871200 (= lambda!175082 lambda!174993)))

(declare-fun bs!871201 () Bool)

(assert (= bs!871201 (and d!1400461 b!4534165)))

(assert (=> bs!871201 (not (= lambda!175082 lambda!174994))))

(declare-fun bs!871202 () Bool)

(assert (= bs!871202 (and d!1400461 d!1400395)))

(assert (=> bs!871202 (not (= lambda!175082 lambda!175008))))

(declare-fun lt!1709592 () ListMap!3641)

(assert (=> d!1400461 (invariantList!1037 (toList!4380 lt!1709592))))

(declare-fun e!2825486 () ListMap!3641)

(assert (=> d!1400461 (= lt!1709592 e!2825486)))

(declare-fun c!774355 () Bool)

(assert (=> d!1400461 (= c!774355 ((_ is Cons!50719) (toList!4379 lt!1709350)))))

(assert (=> d!1400461 (forall!10321 (toList!4379 lt!1709350) lambda!175082)))

(assert (=> d!1400461 (= (extractMap!1242 (toList!4379 lt!1709350)) lt!1709592)))

(declare-fun b!4534412 () Bool)

(assert (=> b!4534412 (= e!2825486 (addToMapMapFromBucket!713 (_2!28884 (h!56592 (toList!4379 lt!1709350))) (extractMap!1242 (t!357805 (toList!4379 lt!1709350)))))))

(declare-fun b!4534413 () Bool)

(assert (=> b!4534413 (= e!2825486 (ListMap!3642 Nil!50718))))

(assert (= (and d!1400461 c!774355) b!4534412))

(assert (= (and d!1400461 (not c!774355)) b!4534413))

(declare-fun m!5295347 () Bool)

(assert (=> d!1400461 m!5295347))

(declare-fun m!5295349 () Bool)

(assert (=> d!1400461 m!5295349))

(declare-fun m!5295351 () Bool)

(assert (=> b!4534412 m!5295351))

(assert (=> b!4534412 m!5295351))

(declare-fun m!5295353 () Bool)

(assert (=> b!4534412 m!5295353))

(assert (=> b!4534176 d!1400461))

(declare-fun d!1400463 () Bool)

(declare-fun res!1888916 () Bool)

(declare-fun e!2825491 () Bool)

(assert (=> d!1400463 (=> res!1888916 e!2825491)))

(assert (=> d!1400463 (= res!1888916 (not ((_ is Cons!50718) (_2!28884 lt!1709342))))))

(assert (=> d!1400463 (= (noDuplicateKeys!1186 (_2!28884 lt!1709342)) e!2825491)))

(declare-fun b!4534418 () Bool)

(declare-fun e!2825492 () Bool)

(assert (=> b!4534418 (= e!2825491 e!2825492)))

(declare-fun res!1888917 () Bool)

(assert (=> b!4534418 (=> (not res!1888917) (not e!2825492))))

(assert (=> b!4534418 (= res!1888917 (not (containsKey!1846 (t!357804 (_2!28884 lt!1709342)) (_1!28883 (h!56591 (_2!28884 lt!1709342))))))))

(declare-fun b!4534419 () Bool)

(assert (=> b!4534419 (= e!2825492 (noDuplicateKeys!1186 (t!357804 (_2!28884 lt!1709342))))))

(assert (= (and d!1400463 (not res!1888916)) b!4534418))

(assert (= (and b!4534418 res!1888917) b!4534419))

(declare-fun m!5295355 () Bool)

(assert (=> b!4534418 m!5295355))

(declare-fun m!5295357 () Bool)

(assert (=> b!4534419 m!5295357))

(assert (=> b!4534169 d!1400463))

(declare-fun d!1400465 () Bool)

(assert (=> d!1400465 (dynLambda!21199 lambda!174993 (h!56592 (toList!4379 lm!1477)))))

(declare-fun lt!1709616 () Unit!97512)

(declare-fun choose!29794 (List!50843 Int tuple2!51180) Unit!97512)

(assert (=> d!1400465 (= lt!1709616 (choose!29794 (toList!4379 lm!1477) lambda!174993 (h!56592 (toList!4379 lm!1477))))))

(declare-fun e!2825498 () Bool)

(assert (=> d!1400465 e!2825498))

(declare-fun res!1888923 () Bool)

(assert (=> d!1400465 (=> (not res!1888923) (not e!2825498))))

(assert (=> d!1400465 (= res!1888923 (forall!10321 (toList!4379 lm!1477) lambda!174993))))

(assert (=> d!1400465 (= (forallContained!2578 (toList!4379 lm!1477) lambda!174993 (h!56592 (toList!4379 lm!1477))) lt!1709616)))

(declare-fun b!4534429 () Bool)

(assert (=> b!4534429 (= e!2825498 (contains!13489 (toList!4379 lm!1477) (h!56592 (toList!4379 lm!1477))))))

(assert (= (and d!1400465 res!1888923) b!4534429))

(declare-fun b_lambda!157161 () Bool)

(assert (=> (not b_lambda!157161) (not d!1400465)))

(assert (=> d!1400465 m!5295171))

(declare-fun m!5295359 () Bool)

(assert (=> d!1400465 m!5295359))

(assert (=> d!1400465 m!5294891))

(declare-fun m!5295361 () Bool)

(assert (=> b!4534429 m!5295361))

(assert (=> b!4534169 d!1400465))

(declare-fun d!1400467 () Bool)

(declare-fun e!2825504 () Bool)

(assert (=> d!1400467 e!2825504))

(declare-fun res!1888926 () Bool)

(assert (=> d!1400467 (=> res!1888926 e!2825504)))

(declare-fun lt!1709626 () Bool)

(assert (=> d!1400467 (= res!1888926 (not lt!1709626))))

(declare-fun lt!1709627 () Bool)

(assert (=> d!1400467 (= lt!1709626 lt!1709627)))

(declare-fun lt!1709628 () Unit!97512)

(declare-fun e!2825503 () Unit!97512)

(assert (=> d!1400467 (= lt!1709628 e!2825503)))

(declare-fun c!774359 () Bool)

(assert (=> d!1400467 (= c!774359 lt!1709627)))

(declare-fun containsKey!1848 (List!50843 (_ BitVec 64)) Bool)

(assert (=> d!1400467 (= lt!1709627 (containsKey!1848 (toList!4379 lt!1709344) hash!344))))

(assert (=> d!1400467 (= (contains!13490 lt!1709344 hash!344) lt!1709626)))

(declare-fun b!4534436 () Bool)

(declare-fun lt!1709625 () Unit!97512)

(assert (=> b!4534436 (= e!2825503 lt!1709625)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1035 (List!50843 (_ BitVec 64)) Unit!97512)

(assert (=> b!4534436 (= lt!1709625 (lemmaContainsKeyImpliesGetValueByKeyDefined!1035 (toList!4379 lt!1709344) hash!344))))

(declare-fun isDefined!8457 (Option!11176) Bool)

(assert (=> b!4534436 (isDefined!8457 (getValueByKey!1132 (toList!4379 lt!1709344) hash!344))))

(declare-fun b!4534437 () Bool)

(declare-fun Unit!97533 () Unit!97512)

(assert (=> b!4534437 (= e!2825503 Unit!97533)))

(declare-fun b!4534438 () Bool)

(assert (=> b!4534438 (= e!2825504 (isDefined!8457 (getValueByKey!1132 (toList!4379 lt!1709344) hash!344)))))

(assert (= (and d!1400467 c!774359) b!4534436))

(assert (= (and d!1400467 (not c!774359)) b!4534437))

(assert (= (and d!1400467 (not res!1888926)) b!4534438))

(declare-fun m!5295397 () Bool)

(assert (=> d!1400467 m!5295397))

(declare-fun m!5295399 () Bool)

(assert (=> b!4534436 m!5295399))

(declare-fun m!5295401 () Bool)

(assert (=> b!4534436 m!5295401))

(assert (=> b!4534436 m!5295401))

(declare-fun m!5295403 () Bool)

(assert (=> b!4534436 m!5295403))

(assert (=> b!4534438 m!5295401))

(assert (=> b!4534438 m!5295401))

(assert (=> b!4534438 m!5295403))

(assert (=> b!4534168 d!1400467))

(declare-fun d!1400471 () Bool)

(declare-fun tail!7781 (List!50843) List!50843)

(assert (=> d!1400471 (= (tail!7780 lm!1477) (ListLongMap!3012 (tail!7781 (toList!4379 lm!1477))))))

(declare-fun bs!871212 () Bool)

(assert (= bs!871212 d!1400471))

(declare-fun m!5295405 () Bool)

(assert (=> bs!871212 m!5295405))

(assert (=> b!4534168 d!1400471))

(declare-fun d!1400473 () Bool)

(declare-fun res!1888927 () Bool)

(declare-fun e!2825505 () Bool)

(assert (=> d!1400473 (=> res!1888927 e!2825505)))

(assert (=> d!1400473 (= res!1888927 ((_ is Nil!50719) (toList!4379 lt!1709344)))))

(assert (=> d!1400473 (= (forall!10321 (toList!4379 lt!1709344) lambda!174993) e!2825505)))

(declare-fun b!4534439 () Bool)

(declare-fun e!2825506 () Bool)

(assert (=> b!4534439 (= e!2825505 e!2825506)))

(declare-fun res!1888928 () Bool)

(assert (=> b!4534439 (=> (not res!1888928) (not e!2825506))))

(assert (=> b!4534439 (= res!1888928 (dynLambda!21199 lambda!174993 (h!56592 (toList!4379 lt!1709344))))))

(declare-fun b!4534440 () Bool)

(assert (=> b!4534440 (= e!2825506 (forall!10321 (t!357805 (toList!4379 lt!1709344)) lambda!174993))))

(assert (= (and d!1400473 (not res!1888927)) b!4534439))

(assert (= (and b!4534439 res!1888928) b!4534440))

(declare-fun b_lambda!157163 () Bool)

(assert (=> (not b_lambda!157163) (not b!4534439)))

(declare-fun m!5295407 () Bool)

(assert (=> b!4534439 m!5295407))

(declare-fun m!5295409 () Bool)

(assert (=> b!4534440 m!5295409))

(assert (=> b!4534173 d!1400473))

(declare-fun d!1400475 () Bool)

(declare-fun e!2825507 () Bool)

(assert (=> d!1400475 e!2825507))

(declare-fun res!1888930 () Bool)

(assert (=> d!1400475 (=> (not res!1888930) (not e!2825507))))

(declare-fun lt!1709629 () ListLongMap!3011)

(assert (=> d!1400475 (= res!1888930 (contains!13490 lt!1709629 (_1!28884 lt!1709334)))))

(declare-fun lt!1709632 () List!50843)

(assert (=> d!1400475 (= lt!1709629 (ListLongMap!3012 lt!1709632))))

(declare-fun lt!1709631 () Unit!97512)

(declare-fun lt!1709630 () Unit!97512)

(assert (=> d!1400475 (= lt!1709631 lt!1709630)))

(assert (=> d!1400475 (= (getValueByKey!1132 lt!1709632 (_1!28884 lt!1709334)) (Some!11175 (_2!28884 lt!1709334)))))

(assert (=> d!1400475 (= lt!1709630 (lemmaContainsTupThenGetReturnValue!710 lt!1709632 (_1!28884 lt!1709334) (_2!28884 lt!1709334)))))

(assert (=> d!1400475 (= lt!1709632 (insertStrictlySorted!428 (toList!4379 lt!1709344) (_1!28884 lt!1709334) (_2!28884 lt!1709334)))))

(assert (=> d!1400475 (= (+!1584 lt!1709344 lt!1709334) lt!1709629)))

(declare-fun b!4534441 () Bool)

(declare-fun res!1888929 () Bool)

(assert (=> b!4534441 (=> (not res!1888929) (not e!2825507))))

(assert (=> b!4534441 (= res!1888929 (= (getValueByKey!1132 (toList!4379 lt!1709629) (_1!28884 lt!1709334)) (Some!11175 (_2!28884 lt!1709334))))))

(declare-fun b!4534442 () Bool)

(assert (=> b!4534442 (= e!2825507 (contains!13489 (toList!4379 lt!1709629) lt!1709334))))

(assert (= (and d!1400475 res!1888930) b!4534441))

(assert (= (and b!4534441 res!1888929) b!4534442))

(declare-fun m!5295411 () Bool)

(assert (=> d!1400475 m!5295411))

(declare-fun m!5295413 () Bool)

(assert (=> d!1400475 m!5295413))

(declare-fun m!5295415 () Bool)

(assert (=> d!1400475 m!5295415))

(declare-fun m!5295417 () Bool)

(assert (=> d!1400475 m!5295417))

(declare-fun m!5295419 () Bool)

(assert (=> b!4534441 m!5295419))

(declare-fun m!5295421 () Bool)

(assert (=> b!4534442 m!5295421))

(assert (=> b!4534172 d!1400475))

(declare-fun d!1400477 () Bool)

(assert (=> d!1400477 (= (eq!643 lt!1709323 lt!1709351) (= (content!8416 (toList!4380 lt!1709323)) (content!8416 (toList!4380 lt!1709351))))))

(declare-fun bs!871213 () Bool)

(assert (= bs!871213 d!1400477))

(declare-fun m!5295423 () Bool)

(assert (=> bs!871213 m!5295423))

(declare-fun m!5295425 () Bool)

(assert (=> bs!871213 m!5295425))

(assert (=> b!4534172 d!1400477))

(declare-fun d!1400479 () Bool)

(declare-fun e!2825508 () Bool)

(assert (=> d!1400479 e!2825508))

(declare-fun res!1888932 () Bool)

(assert (=> d!1400479 (=> (not res!1888932) (not e!2825508))))

(declare-fun lt!1709633 () ListLongMap!3011)

(assert (=> d!1400479 (= res!1888932 (contains!13490 lt!1709633 (_1!28884 lt!1709342)))))

(declare-fun lt!1709636 () List!50843)

(assert (=> d!1400479 (= lt!1709633 (ListLongMap!3012 lt!1709636))))

(declare-fun lt!1709635 () Unit!97512)

(declare-fun lt!1709634 () Unit!97512)

(assert (=> d!1400479 (= lt!1709635 lt!1709634)))

(assert (=> d!1400479 (= (getValueByKey!1132 lt!1709636 (_1!28884 lt!1709342)) (Some!11175 (_2!28884 lt!1709342)))))

(assert (=> d!1400479 (= lt!1709634 (lemmaContainsTupThenGetReturnValue!710 lt!1709636 (_1!28884 lt!1709342) (_2!28884 lt!1709342)))))

(assert (=> d!1400479 (= lt!1709636 (insertStrictlySorted!428 (toList!4379 lt!1709344) (_1!28884 lt!1709342) (_2!28884 lt!1709342)))))

(assert (=> d!1400479 (= (+!1584 lt!1709344 lt!1709342) lt!1709633)))

(declare-fun b!4534443 () Bool)

(declare-fun res!1888931 () Bool)

(assert (=> b!4534443 (=> (not res!1888931) (not e!2825508))))

(assert (=> b!4534443 (= res!1888931 (= (getValueByKey!1132 (toList!4379 lt!1709633) (_1!28884 lt!1709342)) (Some!11175 (_2!28884 lt!1709342))))))

(declare-fun b!4534444 () Bool)

(assert (=> b!4534444 (= e!2825508 (contains!13489 (toList!4379 lt!1709633) lt!1709342))))

(assert (= (and d!1400479 res!1888932) b!4534443))

(assert (= (and b!4534443 res!1888931) b!4534444))

(declare-fun m!5295427 () Bool)

(assert (=> d!1400479 m!5295427))

(declare-fun m!5295429 () Bool)

(assert (=> d!1400479 m!5295429))

(declare-fun m!5295431 () Bool)

(assert (=> d!1400479 m!5295431))

(declare-fun m!5295433 () Bool)

(assert (=> d!1400479 m!5295433))

(declare-fun m!5295435 () Bool)

(assert (=> b!4534443 m!5295435))

(declare-fun m!5295437 () Bool)

(assert (=> b!4534444 m!5295437))

(assert (=> b!4534172 d!1400479))

(declare-fun bs!871214 () Bool)

(declare-fun d!1400481 () Bool)

(assert (= bs!871214 (and d!1400481 start!449788)))

(declare-fun lambda!175087 () Int)

(assert (=> bs!871214 (= lambda!175087 lambda!174993)))

(declare-fun bs!871215 () Bool)

(assert (= bs!871215 (and d!1400481 b!4534165)))

(assert (=> bs!871215 (not (= lambda!175087 lambda!174994))))

(declare-fun bs!871216 () Bool)

(assert (= bs!871216 (and d!1400481 d!1400395)))

(assert (=> bs!871216 (not (= lambda!175087 lambda!175008))))

(declare-fun bs!871217 () Bool)

(assert (= bs!871217 (and d!1400481 d!1400461)))

(assert (=> bs!871217 (= lambda!175087 lambda!175082)))

(declare-fun lt!1709637 () ListMap!3641)

(assert (=> d!1400481 (invariantList!1037 (toList!4380 lt!1709637))))

(declare-fun e!2825509 () ListMap!3641)

(assert (=> d!1400481 (= lt!1709637 e!2825509)))

(declare-fun c!774360 () Bool)

(assert (=> d!1400481 (= c!774360 ((_ is Cons!50719) (toList!4379 (+!1584 lt!1709344 lt!1709342))))))

(assert (=> d!1400481 (forall!10321 (toList!4379 (+!1584 lt!1709344 lt!1709342)) lambda!175087)))

(assert (=> d!1400481 (= (extractMap!1242 (toList!4379 (+!1584 lt!1709344 lt!1709342))) lt!1709637)))

(declare-fun b!4534445 () Bool)

(assert (=> b!4534445 (= e!2825509 (addToMapMapFromBucket!713 (_2!28884 (h!56592 (toList!4379 (+!1584 lt!1709344 lt!1709342)))) (extractMap!1242 (t!357805 (toList!4379 (+!1584 lt!1709344 lt!1709342))))))))

(declare-fun b!4534446 () Bool)

(assert (=> b!4534446 (= e!2825509 (ListMap!3642 Nil!50718))))

(assert (= (and d!1400481 c!774360) b!4534445))

(assert (= (and d!1400481 (not c!774360)) b!4534446))

(declare-fun m!5295439 () Bool)

(assert (=> d!1400481 m!5295439))

(declare-fun m!5295441 () Bool)

(assert (=> d!1400481 m!5295441))

(declare-fun m!5295443 () Bool)

(assert (=> b!4534445 m!5295443))

(assert (=> b!4534445 m!5295443))

(declare-fun m!5295445 () Bool)

(assert (=> b!4534445 m!5295445))

(assert (=> b!4534172 d!1400481))

(declare-fun bs!871232 () Bool)

(declare-fun d!1400483 () Bool)

(assert (= bs!871232 (and d!1400483 d!1400481)))

(declare-fun lambda!175093 () Int)

(assert (=> bs!871232 (= lambda!175093 lambda!175087)))

(declare-fun bs!871233 () Bool)

(assert (= bs!871233 (and d!1400483 d!1400395)))

(assert (=> bs!871233 (not (= lambda!175093 lambda!175008))))

(declare-fun bs!871234 () Bool)

(assert (= bs!871234 (and d!1400483 b!4534165)))

(assert (=> bs!871234 (not (= lambda!175093 lambda!174994))))

(declare-fun bs!871235 () Bool)

(assert (= bs!871235 (and d!1400483 d!1400461)))

(assert (=> bs!871235 (= lambda!175093 lambda!175082)))

(declare-fun bs!871236 () Bool)

(assert (= bs!871236 (and d!1400483 start!449788)))

(assert (=> bs!871236 (= lambda!175093 lambda!174993)))

(assert (=> d!1400483 (eq!643 (extractMap!1242 (toList!4379 (+!1584 lt!1709344 (tuple2!51181 hash!344 newBucket!178)))) (-!412 (extractMap!1242 (toList!4379 lt!1709344)) key!3287))))

(declare-fun lt!1709643 () Unit!97512)

(declare-fun choose!29796 (ListLongMap!3011 (_ BitVec 64) List!50842 K!12105 Hashable!5581) Unit!97512)

(assert (=> d!1400483 (= lt!1709643 (choose!29796 lt!1709344 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1400483 (forall!10321 (toList!4379 lt!1709344) lambda!175093)))

(assert (=> d!1400483 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!171 lt!1709344 hash!344 newBucket!178 key!3287 hashF!1107) lt!1709643)))

(declare-fun bs!871237 () Bool)

(assert (= bs!871237 d!1400483))

(declare-fun m!5295457 () Bool)

(assert (=> bs!871237 m!5295457))

(declare-fun m!5295459 () Bool)

(assert (=> bs!871237 m!5295459))

(declare-fun m!5295461 () Bool)

(assert (=> bs!871237 m!5295461))

(declare-fun m!5295463 () Bool)

(assert (=> bs!871237 m!5295463))

(assert (=> bs!871237 m!5294955))

(declare-fun m!5295465 () Bool)

(assert (=> bs!871237 m!5295465))

(declare-fun m!5295467 () Bool)

(assert (=> bs!871237 m!5295467))

(assert (=> bs!871237 m!5294955))

(assert (=> bs!871237 m!5295461))

(assert (=> bs!871237 m!5295459))

(assert (=> b!4534172 d!1400483))

(declare-fun d!1400493 () Bool)

(declare-fun e!2825518 () Bool)

(assert (=> d!1400493 e!2825518))

(declare-fun res!1888941 () Bool)

(assert (=> d!1400493 (=> (not res!1888941) (not e!2825518))))

(declare-fun lt!1709671 () ListMap!3641)

(assert (=> d!1400493 (= res!1888941 (not (contains!13491 lt!1709671 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!161 (List!50842 K!12105) List!50842)

(assert (=> d!1400493 (= lt!1709671 (ListMap!3642 (removePresrvNoDuplicatedKeys!161 (toList!4380 lt!1709335) key!3287)))))

(assert (=> d!1400493 (= (-!412 lt!1709335 key!3287) lt!1709671)))

(declare-fun b!4534457 () Bool)

(declare-datatypes ((List!50845 0))(
  ( (Nil!50721) (Cons!50721 (h!56596 K!12105) (t!357807 List!50845)) )
))
(declare-fun content!8419 (List!50845) (InoxSet K!12105))

(declare-fun keys!17640 (ListMap!3641) List!50845)

(assert (=> b!4534457 (= e!2825518 (= ((_ map and) (content!8419 (keys!17640 lt!1709335)) ((_ map not) (store ((as const (Array K!12105 Bool)) false) key!3287 true))) (content!8419 (keys!17640 lt!1709671))))))

(assert (= (and d!1400493 res!1888941) b!4534457))

(declare-fun m!5295491 () Bool)

(assert (=> d!1400493 m!5295491))

(declare-fun m!5295493 () Bool)

(assert (=> d!1400493 m!5295493))

(declare-fun m!5295495 () Bool)

(assert (=> b!4534457 m!5295495))

(declare-fun m!5295497 () Bool)

(assert (=> b!4534457 m!5295497))

(declare-fun m!5295499 () Bool)

(assert (=> b!4534457 m!5295499))

(declare-fun m!5295501 () Bool)

(assert (=> b!4534457 m!5295501))

(assert (=> b!4534457 m!5295497))

(declare-fun m!5295503 () Bool)

(assert (=> b!4534457 m!5295503))

(assert (=> b!4534457 m!5295499))

(assert (=> b!4534172 d!1400493))

(declare-fun bs!871265 () Bool)

(declare-fun d!1400503 () Bool)

(assert (= bs!871265 (and d!1400503 d!1400481)))

(declare-fun lambda!175101 () Int)

(assert (=> bs!871265 (= lambda!175101 lambda!175087)))

(declare-fun bs!871267 () Bool)

(assert (= bs!871267 (and d!1400503 d!1400395)))

(assert (=> bs!871267 (not (= lambda!175101 lambda!175008))))

(declare-fun bs!871269 () Bool)

(assert (= bs!871269 (and d!1400503 b!4534165)))

(assert (=> bs!871269 (not (= lambda!175101 lambda!174994))))

(declare-fun bs!871271 () Bool)

(assert (= bs!871271 (and d!1400503 d!1400461)))

(assert (=> bs!871271 (= lambda!175101 lambda!175082)))

(declare-fun bs!871272 () Bool)

(assert (= bs!871272 (and d!1400503 start!449788)))

(assert (=> bs!871272 (= lambda!175101 lambda!174993)))

(declare-fun bs!871274 () Bool)

(assert (= bs!871274 (and d!1400503 d!1400483)))

(assert (=> bs!871274 (= lambda!175101 lambda!175093)))

(declare-fun lt!1709672 () ListMap!3641)

(assert (=> d!1400503 (invariantList!1037 (toList!4380 lt!1709672))))

(declare-fun e!2825519 () ListMap!3641)

(assert (=> d!1400503 (= lt!1709672 e!2825519)))

(declare-fun c!774362 () Bool)

(assert (=> d!1400503 (= c!774362 ((_ is Cons!50719) (toList!4379 lt!1709352)))))

(assert (=> d!1400503 (forall!10321 (toList!4379 lt!1709352) lambda!175101)))

(assert (=> d!1400503 (= (extractMap!1242 (toList!4379 lt!1709352)) lt!1709672)))

(declare-fun b!4534458 () Bool)

(assert (=> b!4534458 (= e!2825519 (addToMapMapFromBucket!713 (_2!28884 (h!56592 (toList!4379 lt!1709352))) (extractMap!1242 (t!357805 (toList!4379 lt!1709352)))))))

(declare-fun b!4534459 () Bool)

(assert (=> b!4534459 (= e!2825519 (ListMap!3642 Nil!50718))))

(assert (= (and d!1400503 c!774362) b!4534458))

(assert (= (and d!1400503 (not c!774362)) b!4534459))

(declare-fun m!5295505 () Bool)

(assert (=> d!1400503 m!5295505))

(declare-fun m!5295507 () Bool)

(assert (=> d!1400503 m!5295507))

(declare-fun m!5295509 () Bool)

(assert (=> b!4534458 m!5295509))

(assert (=> b!4534458 m!5295509))

(declare-fun m!5295511 () Bool)

(assert (=> b!4534458 m!5295511))

(assert (=> b!4534172 d!1400503))

(declare-fun d!1400505 () Bool)

(assert (=> d!1400505 (= (eq!643 lt!1709336 lt!1709328) (= (content!8416 (toList!4380 lt!1709336)) (content!8416 (toList!4380 lt!1709328))))))

(declare-fun bs!871275 () Bool)

(assert (= bs!871275 d!1400505))

(assert (=> bs!871275 m!5295069))

(assert (=> bs!871275 m!5295067))

(assert (=> b!4534172 d!1400505))

(declare-fun d!1400507 () Bool)

(declare-fun head!9460 (List!50843) tuple2!51180)

(assert (=> d!1400507 (= (head!9458 lm!1477) (head!9460 (toList!4379 lm!1477)))))

(declare-fun bs!871276 () Bool)

(assert (= bs!871276 d!1400507))

(declare-fun m!5295517 () Bool)

(assert (=> bs!871276 m!5295517))

(assert (=> b!4534172 d!1400507))

(declare-fun b!4534494 () Bool)

(declare-fun e!2825546 () Unit!97512)

(declare-fun lt!1709725 () Unit!97512)

(assert (=> b!4534494 (= e!2825546 lt!1709725)))

(declare-fun lt!1709722 () Unit!97512)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1037 (List!50842 K!12105) Unit!97512)

(assert (=> b!4534494 (= lt!1709722 (lemmaContainsKeyImpliesGetValueByKeyDefined!1037 (toList!4380 lt!1709335) key!3287))))

(declare-datatypes ((Option!11177 0))(
  ( (None!11176) (Some!11176 (v!44850 V!12351)) )
))
(declare-fun isDefined!8459 (Option!11177) Bool)

(declare-fun getValueByKey!1133 (List!50842 K!12105) Option!11177)

(assert (=> b!4534494 (isDefined!8459 (getValueByKey!1133 (toList!4380 lt!1709335) key!3287))))

(declare-fun lt!1709727 () Unit!97512)

(assert (=> b!4534494 (= lt!1709727 lt!1709722)))

(declare-fun lemmaInListThenGetKeysListContains!481 (List!50842 K!12105) Unit!97512)

(assert (=> b!4534494 (= lt!1709725 (lemmaInListThenGetKeysListContains!481 (toList!4380 lt!1709335) key!3287))))

(declare-fun call!316153 () Bool)

(assert (=> b!4534494 call!316153))

(declare-fun b!4534495 () Bool)

(declare-fun e!2825545 () Bool)

(declare-fun e!2825543 () Bool)

(assert (=> b!4534495 (= e!2825545 e!2825543)))

(declare-fun res!1888956 () Bool)

(assert (=> b!4534495 (=> (not res!1888956) (not e!2825543))))

(assert (=> b!4534495 (= res!1888956 (isDefined!8459 (getValueByKey!1133 (toList!4380 lt!1709335) key!3287)))))

(declare-fun d!1400509 () Bool)

(assert (=> d!1400509 e!2825545))

(declare-fun res!1888955 () Bool)

(assert (=> d!1400509 (=> res!1888955 e!2825545)))

(declare-fun e!2825542 () Bool)

(assert (=> d!1400509 (= res!1888955 e!2825542)))

(declare-fun res!1888954 () Bool)

(assert (=> d!1400509 (=> (not res!1888954) (not e!2825542))))

(declare-fun lt!1709728 () Bool)

(assert (=> d!1400509 (= res!1888954 (not lt!1709728))))

(declare-fun lt!1709724 () Bool)

(assert (=> d!1400509 (= lt!1709728 lt!1709724)))

(declare-fun lt!1709726 () Unit!97512)

(assert (=> d!1400509 (= lt!1709726 e!2825546)))

(declare-fun c!774374 () Bool)

(assert (=> d!1400509 (= c!774374 lt!1709724)))

(declare-fun containsKey!1850 (List!50842 K!12105) Bool)

(assert (=> d!1400509 (= lt!1709724 (containsKey!1850 (toList!4380 lt!1709335) key!3287))))

(assert (=> d!1400509 (= (contains!13491 lt!1709335 key!3287) lt!1709728)))

(declare-fun b!4534496 () Bool)

(assert (=> b!4534496 false))

(declare-fun lt!1709729 () Unit!97512)

(declare-fun lt!1709723 () Unit!97512)

(assert (=> b!4534496 (= lt!1709729 lt!1709723)))

(assert (=> b!4534496 (containsKey!1850 (toList!4380 lt!1709335) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!484 (List!50842 K!12105) Unit!97512)

(assert (=> b!4534496 (= lt!1709723 (lemmaInGetKeysListThenContainsKey!484 (toList!4380 lt!1709335) key!3287))))

(declare-fun e!2825547 () Unit!97512)

(declare-fun Unit!97546 () Unit!97512)

(assert (=> b!4534496 (= e!2825547 Unit!97546)))

(declare-fun b!4534497 () Bool)

(declare-fun e!2825544 () List!50845)

(declare-fun getKeysList!485 (List!50842) List!50845)

(assert (=> b!4534497 (= e!2825544 (getKeysList!485 (toList!4380 lt!1709335)))))

(declare-fun bm!316148 () Bool)

(declare-fun contains!13494 (List!50845 K!12105) Bool)

(assert (=> bm!316148 (= call!316153 (contains!13494 e!2825544 key!3287))))

(declare-fun c!774375 () Bool)

(assert (=> bm!316148 (= c!774375 c!774374)))

(declare-fun b!4534498 () Bool)

(assert (=> b!4534498 (= e!2825544 (keys!17640 lt!1709335))))

(declare-fun b!4534499 () Bool)

(assert (=> b!4534499 (= e!2825543 (contains!13494 (keys!17640 lt!1709335) key!3287))))

(declare-fun b!4534500 () Bool)

(assert (=> b!4534500 (= e!2825542 (not (contains!13494 (keys!17640 lt!1709335) key!3287)))))

(declare-fun b!4534501 () Bool)

(declare-fun Unit!97548 () Unit!97512)

(assert (=> b!4534501 (= e!2825547 Unit!97548)))

(declare-fun b!4534502 () Bool)

(assert (=> b!4534502 (= e!2825546 e!2825547)))

(declare-fun c!774376 () Bool)

(assert (=> b!4534502 (= c!774376 call!316153)))

(assert (= (and d!1400509 c!774374) b!4534494))

(assert (= (and d!1400509 (not c!774374)) b!4534502))

(assert (= (and b!4534502 c!774376) b!4534496))

(assert (= (and b!4534502 (not c!774376)) b!4534501))

(assert (= (or b!4534494 b!4534502) bm!316148))

(assert (= (and bm!316148 c!774375) b!4534497))

(assert (= (and bm!316148 (not c!774375)) b!4534498))

(assert (= (and d!1400509 res!1888954) b!4534500))

(assert (= (and d!1400509 (not res!1888955)) b!4534495))

(assert (= (and b!4534495 res!1888956) b!4534499))

(declare-fun m!5295579 () Bool)

(assert (=> b!4534495 m!5295579))

(assert (=> b!4534495 m!5295579))

(declare-fun m!5295581 () Bool)

(assert (=> b!4534495 m!5295581))

(assert (=> b!4534498 m!5295499))

(assert (=> b!4534500 m!5295499))

(assert (=> b!4534500 m!5295499))

(declare-fun m!5295583 () Bool)

(assert (=> b!4534500 m!5295583))

(declare-fun m!5295585 () Bool)

(assert (=> bm!316148 m!5295585))

(declare-fun m!5295587 () Bool)

(assert (=> b!4534494 m!5295587))

(assert (=> b!4534494 m!5295579))

(assert (=> b!4534494 m!5295579))

(assert (=> b!4534494 m!5295581))

(declare-fun m!5295589 () Bool)

(assert (=> b!4534494 m!5295589))

(assert (=> b!4534499 m!5295499))

(assert (=> b!4534499 m!5295499))

(assert (=> b!4534499 m!5295583))

(declare-fun m!5295591 () Bool)

(assert (=> b!4534497 m!5295591))

(declare-fun m!5295593 () Bool)

(assert (=> d!1400509 m!5295593))

(assert (=> b!4534496 m!5295593))

(declare-fun m!5295595 () Bool)

(assert (=> b!4534496 m!5295595))

(assert (=> b!4534171 d!1400509))

(declare-fun b!4534503 () Bool)

(declare-fun e!2825552 () Unit!97512)

(declare-fun lt!1709733 () Unit!97512)

(assert (=> b!4534503 (= e!2825552 lt!1709733)))

(declare-fun lt!1709730 () Unit!97512)

(assert (=> b!4534503 (= lt!1709730 (lemmaContainsKeyImpliesGetValueByKeyDefined!1037 (toList!4380 (extractMap!1242 (t!357805 (toList!4379 lm!1477)))) key!3287))))

(assert (=> b!4534503 (isDefined!8459 (getValueByKey!1133 (toList!4380 (extractMap!1242 (t!357805 (toList!4379 lm!1477)))) key!3287))))

(declare-fun lt!1709735 () Unit!97512)

(assert (=> b!4534503 (= lt!1709735 lt!1709730)))

(assert (=> b!4534503 (= lt!1709733 (lemmaInListThenGetKeysListContains!481 (toList!4380 (extractMap!1242 (t!357805 (toList!4379 lm!1477)))) key!3287))))

(declare-fun call!316154 () Bool)

(assert (=> b!4534503 call!316154))

(declare-fun b!4534504 () Bool)

(declare-fun e!2825551 () Bool)

(declare-fun e!2825549 () Bool)

(assert (=> b!4534504 (= e!2825551 e!2825549)))

(declare-fun res!1888959 () Bool)

(assert (=> b!4534504 (=> (not res!1888959) (not e!2825549))))

(assert (=> b!4534504 (= res!1888959 (isDefined!8459 (getValueByKey!1133 (toList!4380 (extractMap!1242 (t!357805 (toList!4379 lm!1477)))) key!3287)))))

(declare-fun d!1400521 () Bool)

(assert (=> d!1400521 e!2825551))

(declare-fun res!1888958 () Bool)

(assert (=> d!1400521 (=> res!1888958 e!2825551)))

(declare-fun e!2825548 () Bool)

(assert (=> d!1400521 (= res!1888958 e!2825548)))

(declare-fun res!1888957 () Bool)

(assert (=> d!1400521 (=> (not res!1888957) (not e!2825548))))

(declare-fun lt!1709736 () Bool)

(assert (=> d!1400521 (= res!1888957 (not lt!1709736))))

(declare-fun lt!1709732 () Bool)

(assert (=> d!1400521 (= lt!1709736 lt!1709732)))

(declare-fun lt!1709734 () Unit!97512)

(assert (=> d!1400521 (= lt!1709734 e!2825552)))

(declare-fun c!774377 () Bool)

(assert (=> d!1400521 (= c!774377 lt!1709732)))

(assert (=> d!1400521 (= lt!1709732 (containsKey!1850 (toList!4380 (extractMap!1242 (t!357805 (toList!4379 lm!1477)))) key!3287))))

(assert (=> d!1400521 (= (contains!13491 (extractMap!1242 (t!357805 (toList!4379 lm!1477))) key!3287) lt!1709736)))

(declare-fun b!4534505 () Bool)

(assert (=> b!4534505 false))

(declare-fun lt!1709737 () Unit!97512)

(declare-fun lt!1709731 () Unit!97512)

(assert (=> b!4534505 (= lt!1709737 lt!1709731)))

(assert (=> b!4534505 (containsKey!1850 (toList!4380 (extractMap!1242 (t!357805 (toList!4379 lm!1477)))) key!3287)))

(assert (=> b!4534505 (= lt!1709731 (lemmaInGetKeysListThenContainsKey!484 (toList!4380 (extractMap!1242 (t!357805 (toList!4379 lm!1477)))) key!3287))))

(declare-fun e!2825553 () Unit!97512)

(declare-fun Unit!97549 () Unit!97512)

(assert (=> b!4534505 (= e!2825553 Unit!97549)))

(declare-fun b!4534506 () Bool)

(declare-fun e!2825550 () List!50845)

(assert (=> b!4534506 (= e!2825550 (getKeysList!485 (toList!4380 (extractMap!1242 (t!357805 (toList!4379 lm!1477))))))))

(declare-fun bm!316149 () Bool)

(assert (=> bm!316149 (= call!316154 (contains!13494 e!2825550 key!3287))))

(declare-fun c!774378 () Bool)

(assert (=> bm!316149 (= c!774378 c!774377)))

(declare-fun b!4534507 () Bool)

(assert (=> b!4534507 (= e!2825550 (keys!17640 (extractMap!1242 (t!357805 (toList!4379 lm!1477)))))))

(declare-fun b!4534508 () Bool)

(assert (=> b!4534508 (= e!2825549 (contains!13494 (keys!17640 (extractMap!1242 (t!357805 (toList!4379 lm!1477)))) key!3287))))

(declare-fun b!4534509 () Bool)

(assert (=> b!4534509 (= e!2825548 (not (contains!13494 (keys!17640 (extractMap!1242 (t!357805 (toList!4379 lm!1477)))) key!3287)))))

(declare-fun b!4534510 () Bool)

(declare-fun Unit!97550 () Unit!97512)

(assert (=> b!4534510 (= e!2825553 Unit!97550)))

(declare-fun b!4534511 () Bool)

(assert (=> b!4534511 (= e!2825552 e!2825553)))

(declare-fun c!774379 () Bool)

(assert (=> b!4534511 (= c!774379 call!316154)))

(assert (= (and d!1400521 c!774377) b!4534503))

(assert (= (and d!1400521 (not c!774377)) b!4534511))

(assert (= (and b!4534511 c!774379) b!4534505))

(assert (= (and b!4534511 (not c!774379)) b!4534510))

(assert (= (or b!4534503 b!4534511) bm!316149))

(assert (= (and bm!316149 c!774378) b!4534506))

(assert (= (and bm!316149 (not c!774378)) b!4534507))

(assert (= (and d!1400521 res!1888957) b!4534509))

(assert (= (and d!1400521 (not res!1888958)) b!4534504))

(assert (= (and b!4534504 res!1888959) b!4534508))

(declare-fun m!5295597 () Bool)

(assert (=> b!4534504 m!5295597))

(assert (=> b!4534504 m!5295597))

(declare-fun m!5295599 () Bool)

(assert (=> b!4534504 m!5295599))

(assert (=> b!4534507 m!5294953))

(declare-fun m!5295601 () Bool)

(assert (=> b!4534507 m!5295601))

(assert (=> b!4534509 m!5294953))

(assert (=> b!4534509 m!5295601))

(assert (=> b!4534509 m!5295601))

(declare-fun m!5295603 () Bool)

(assert (=> b!4534509 m!5295603))

(declare-fun m!5295605 () Bool)

(assert (=> bm!316149 m!5295605))

(declare-fun m!5295607 () Bool)

(assert (=> b!4534503 m!5295607))

(assert (=> b!4534503 m!5295597))

(assert (=> b!4534503 m!5295597))

(assert (=> b!4534503 m!5295599))

(declare-fun m!5295609 () Bool)

(assert (=> b!4534503 m!5295609))

(assert (=> b!4534508 m!5294953))

(assert (=> b!4534508 m!5295601))

(assert (=> b!4534508 m!5295601))

(assert (=> b!4534508 m!5295603))

(declare-fun m!5295611 () Bool)

(assert (=> b!4534506 m!5295611))

(declare-fun m!5295613 () Bool)

(assert (=> d!1400521 m!5295613))

(assert (=> b!4534505 m!5295613))

(declare-fun m!5295615 () Bool)

(assert (=> b!4534505 m!5295615))

(assert (=> b!4534171 d!1400521))

(declare-fun bs!871315 () Bool)

(declare-fun d!1400523 () Bool)

(assert (= bs!871315 (and d!1400523 d!1400481)))

(declare-fun lambda!175107 () Int)

(assert (=> bs!871315 (= lambda!175107 lambda!175087)))

(declare-fun bs!871317 () Bool)

(assert (= bs!871317 (and d!1400523 d!1400503)))

(assert (=> bs!871317 (= lambda!175107 lambda!175101)))

(declare-fun bs!871319 () Bool)

(assert (= bs!871319 (and d!1400523 d!1400395)))

(assert (=> bs!871319 (not (= lambda!175107 lambda!175008))))

(declare-fun bs!871321 () Bool)

(assert (= bs!871321 (and d!1400523 b!4534165)))

(assert (=> bs!871321 (not (= lambda!175107 lambda!174994))))

(declare-fun bs!871322 () Bool)

(assert (= bs!871322 (and d!1400523 d!1400461)))

(assert (=> bs!871322 (= lambda!175107 lambda!175082)))

(declare-fun bs!871323 () Bool)

(assert (= bs!871323 (and d!1400523 start!449788)))

(assert (=> bs!871323 (= lambda!175107 lambda!174993)))

(declare-fun bs!871324 () Bool)

(assert (= bs!871324 (and d!1400523 d!1400483)))

(assert (=> bs!871324 (= lambda!175107 lambda!175093)))

(declare-fun lt!1709738 () ListMap!3641)

(assert (=> d!1400523 (invariantList!1037 (toList!4380 lt!1709738))))

(declare-fun e!2825554 () ListMap!3641)

(assert (=> d!1400523 (= lt!1709738 e!2825554)))

(declare-fun c!774380 () Bool)

(assert (=> d!1400523 (= c!774380 ((_ is Cons!50719) (t!357805 (toList!4379 lm!1477))))))

(assert (=> d!1400523 (forall!10321 (t!357805 (toList!4379 lm!1477)) lambda!175107)))

(assert (=> d!1400523 (= (extractMap!1242 (t!357805 (toList!4379 lm!1477))) lt!1709738)))

(declare-fun b!4534512 () Bool)

(assert (=> b!4534512 (= e!2825554 (addToMapMapFromBucket!713 (_2!28884 (h!56592 (t!357805 (toList!4379 lm!1477)))) (extractMap!1242 (t!357805 (t!357805 (toList!4379 lm!1477))))))))

(declare-fun b!4534513 () Bool)

(assert (=> b!4534513 (= e!2825554 (ListMap!3642 Nil!50718))))

(assert (= (and d!1400523 c!774380) b!4534512))

(assert (= (and d!1400523 (not c!774380)) b!4534513))

(declare-fun m!5295617 () Bool)

(assert (=> d!1400523 m!5295617))

(declare-fun m!5295619 () Bool)

(assert (=> d!1400523 m!5295619))

(declare-fun m!5295621 () Bool)

(assert (=> b!4534512 m!5295621))

(assert (=> b!4534512 m!5295621))

(declare-fun m!5295623 () Bool)

(assert (=> b!4534512 m!5295623))

(assert (=> b!4534171 d!1400523))

(declare-fun bs!871325 () Bool)

(declare-fun d!1400525 () Bool)

(assert (= bs!871325 (and d!1400525 d!1400481)))

(declare-fun lambda!175108 () Int)

(assert (=> bs!871325 (= lambda!175108 lambda!175087)))

(declare-fun bs!871326 () Bool)

(assert (= bs!871326 (and d!1400525 d!1400503)))

(assert (=> bs!871326 (= lambda!175108 lambda!175101)))

(declare-fun bs!871327 () Bool)

(assert (= bs!871327 (and d!1400525 b!4534165)))

(assert (=> bs!871327 (not (= lambda!175108 lambda!174994))))

(declare-fun bs!871328 () Bool)

(assert (= bs!871328 (and d!1400525 d!1400461)))

(assert (=> bs!871328 (= lambda!175108 lambda!175082)))

(declare-fun bs!871329 () Bool)

(assert (= bs!871329 (and d!1400525 start!449788)))

(assert (=> bs!871329 (= lambda!175108 lambda!174993)))

(declare-fun bs!871330 () Bool)

(assert (= bs!871330 (and d!1400525 d!1400483)))

(assert (=> bs!871330 (= lambda!175108 lambda!175093)))

(declare-fun bs!871331 () Bool)

(assert (= bs!871331 (and d!1400525 d!1400523)))

(assert (=> bs!871331 (= lambda!175108 lambda!175107)))

(declare-fun bs!871332 () Bool)

(assert (= bs!871332 (and d!1400525 d!1400395)))

(assert (=> bs!871332 (not (= lambda!175108 lambda!175008))))

(declare-fun lt!1709739 () ListMap!3641)

(assert (=> d!1400525 (invariantList!1037 (toList!4380 lt!1709739))))

(declare-fun e!2825555 () ListMap!3641)

(assert (=> d!1400525 (= lt!1709739 e!2825555)))

(declare-fun c!774381 () Bool)

(assert (=> d!1400525 (= c!774381 ((_ is Cons!50719) (toList!4379 lt!1709344)))))

(assert (=> d!1400525 (forall!10321 (toList!4379 lt!1709344) lambda!175108)))

(assert (=> d!1400525 (= (extractMap!1242 (toList!4379 lt!1709344)) lt!1709739)))

(declare-fun b!4534514 () Bool)

(assert (=> b!4534514 (= e!2825555 (addToMapMapFromBucket!713 (_2!28884 (h!56592 (toList!4379 lt!1709344))) (extractMap!1242 (t!357805 (toList!4379 lt!1709344)))))))

(declare-fun b!4534515 () Bool)

(assert (=> b!4534515 (= e!2825555 (ListMap!3642 Nil!50718))))

(assert (= (and d!1400525 c!774381) b!4534514))

(assert (= (and d!1400525 (not c!774381)) b!4534515))

(declare-fun m!5295653 () Bool)

(assert (=> d!1400525 m!5295653))

(declare-fun m!5295657 () Bool)

(assert (=> d!1400525 m!5295657))

(declare-fun m!5295659 () Bool)

(assert (=> b!4534514 m!5295659))

(assert (=> b!4534514 m!5295659))

(declare-fun m!5295663 () Bool)

(assert (=> b!4534514 m!5295663))

(assert (=> b!4534171 d!1400525))

(declare-fun bs!871352 () Bool)

(declare-fun d!1400527 () Bool)

(assert (= bs!871352 (and d!1400527 d!1400481)))

(declare-fun lambda!175112 () Int)

(assert (=> bs!871352 (= lambda!175112 lambda!175087)))

(declare-fun bs!871353 () Bool)

(assert (= bs!871353 (and d!1400527 d!1400503)))

(assert (=> bs!871353 (= lambda!175112 lambda!175101)))

(declare-fun bs!871354 () Bool)

(assert (= bs!871354 (and d!1400527 d!1400525)))

(assert (=> bs!871354 (= lambda!175112 lambda!175108)))

(declare-fun bs!871355 () Bool)

(assert (= bs!871355 (and d!1400527 b!4534165)))

(assert (=> bs!871355 (not (= lambda!175112 lambda!174994))))

(declare-fun bs!871356 () Bool)

(assert (= bs!871356 (and d!1400527 d!1400461)))

(assert (=> bs!871356 (= lambda!175112 lambda!175082)))

(declare-fun bs!871357 () Bool)

(assert (= bs!871357 (and d!1400527 start!449788)))

(assert (=> bs!871357 (= lambda!175112 lambda!174993)))

(declare-fun bs!871358 () Bool)

(assert (= bs!871358 (and d!1400527 d!1400483)))

(assert (=> bs!871358 (= lambda!175112 lambda!175093)))

(declare-fun bs!871359 () Bool)

(assert (= bs!871359 (and d!1400527 d!1400523)))

(assert (=> bs!871359 (= lambda!175112 lambda!175107)))

(declare-fun bs!871360 () Bool)

(assert (= bs!871360 (and d!1400527 d!1400395)))

(assert (=> bs!871360 (not (= lambda!175112 lambda!175008))))

(assert (=> d!1400527 (contains!13491 (extractMap!1242 (toList!4379 lt!1709344)) key!3287)))

(declare-fun lt!1709744 () Unit!97512)

(declare-fun choose!29799 (ListLongMap!3011 K!12105 Hashable!5581) Unit!97512)

(assert (=> d!1400527 (= lt!1709744 (choose!29799 lt!1709344 key!3287 hashF!1107))))

(assert (=> d!1400527 (forall!10321 (toList!4379 lt!1709344) lambda!175112)))

(assert (=> d!1400527 (= (lemmaListContainsThenExtractedMapContains!156 lt!1709344 key!3287 hashF!1107) lt!1709744)))

(declare-fun bs!871361 () Bool)

(assert (= bs!871361 d!1400527))

(assert (=> bs!871361 m!5294955))

(assert (=> bs!871361 m!5294955))

(declare-fun m!5295697 () Bool)

(assert (=> bs!871361 m!5295697))

(declare-fun m!5295699 () Bool)

(assert (=> bs!871361 m!5295699))

(declare-fun m!5295701 () Bool)

(assert (=> bs!871361 m!5295701))

(assert (=> b!4534171 d!1400527))

(declare-fun b!4534548 () Bool)

(declare-fun e!2825579 () Option!11173)

(assert (=> b!4534548 (= e!2825579 (getPair!202 (t!357804 (_2!28884 lt!1709342)) key!3287))))

(declare-fun b!4534549 () Bool)

(declare-fun e!2825578 () Option!11173)

(assert (=> b!4534549 (= e!2825578 e!2825579)))

(declare-fun c!774387 () Bool)

(assert (=> b!4534549 (= c!774387 ((_ is Cons!50718) (_2!28884 lt!1709342)))))

(declare-fun b!4534550 () Bool)

(declare-fun e!2825577 () Bool)

(declare-fun lt!1709747 () Option!11173)

(declare-fun contains!13495 (List!50842 tuple2!51178) Bool)

(assert (=> b!4534550 (= e!2825577 (contains!13495 (_2!28884 lt!1709342) (get!16655 lt!1709747)))))

(declare-fun b!4534551 () Bool)

(declare-fun res!1888974 () Bool)

(assert (=> b!4534551 (=> (not res!1888974) (not e!2825577))))

(assert (=> b!4534551 (= res!1888974 (= (_1!28883 (get!16655 lt!1709747)) key!3287))))

(declare-fun d!1400547 () Bool)

(declare-fun e!2825581 () Bool)

(assert (=> d!1400547 e!2825581))

(declare-fun res!1888975 () Bool)

(assert (=> d!1400547 (=> res!1888975 e!2825581)))

(declare-fun e!2825580 () Bool)

(assert (=> d!1400547 (= res!1888975 e!2825580)))

(declare-fun res!1888972 () Bool)

(assert (=> d!1400547 (=> (not res!1888972) (not e!2825580))))

(declare-fun isEmpty!28729 (Option!11173) Bool)

(assert (=> d!1400547 (= res!1888972 (isEmpty!28729 lt!1709747))))

(assert (=> d!1400547 (= lt!1709747 e!2825578)))

(declare-fun c!774388 () Bool)

(assert (=> d!1400547 (= c!774388 (and ((_ is Cons!50718) (_2!28884 lt!1709342)) (= (_1!28883 (h!56591 (_2!28884 lt!1709342))) key!3287)))))

(assert (=> d!1400547 (noDuplicateKeys!1186 (_2!28884 lt!1709342))))

(assert (=> d!1400547 (= (getPair!202 (_2!28884 lt!1709342) key!3287) lt!1709747)))

(declare-fun b!4534552 () Bool)

(assert (=> b!4534552 (= e!2825578 (Some!11172 (h!56591 (_2!28884 lt!1709342))))))

(declare-fun b!4534553 () Bool)

(assert (=> b!4534553 (= e!2825580 (not (containsKey!1846 (_2!28884 lt!1709342) key!3287)))))

(declare-fun b!4534554 () Bool)

(assert (=> b!4534554 (= e!2825581 e!2825577)))

(declare-fun res!1888973 () Bool)

(assert (=> b!4534554 (=> (not res!1888973) (not e!2825577))))

(declare-fun isDefined!8460 (Option!11173) Bool)

(assert (=> b!4534554 (= res!1888973 (isDefined!8460 lt!1709747))))

(declare-fun b!4534555 () Bool)

(assert (=> b!4534555 (= e!2825579 None!11172)))

(assert (= (and d!1400547 c!774388) b!4534552))

(assert (= (and d!1400547 (not c!774388)) b!4534549))

(assert (= (and b!4534549 c!774387) b!4534548))

(assert (= (and b!4534549 (not c!774387)) b!4534555))

(assert (= (and d!1400547 res!1888972) b!4534553))

(assert (= (and d!1400547 (not res!1888975)) b!4534554))

(assert (= (and b!4534554 res!1888973) b!4534551))

(assert (= (and b!4534551 res!1888974) b!4534550))

(declare-fun m!5295703 () Bool)

(assert (=> b!4534554 m!5295703))

(assert (=> b!4534553 m!5294963))

(declare-fun m!5295705 () Bool)

(assert (=> b!4534548 m!5295705))

(declare-fun m!5295707 () Bool)

(assert (=> b!4534551 m!5295707))

(assert (=> b!4534550 m!5295707))

(assert (=> b!4534550 m!5295707))

(declare-fun m!5295709 () Bool)

(assert (=> b!4534550 m!5295709))

(declare-fun m!5295711 () Bool)

(assert (=> d!1400547 m!5295711))

(assert (=> d!1400547 m!5294949))

(assert (=> b!4534165 d!1400547))

(declare-fun d!1400549 () Bool)

(assert (=> d!1400549 (dynLambda!21199 lambda!174994 (h!56592 (toList!4379 lm!1477)))))

(declare-fun lt!1709748 () Unit!97512)

(assert (=> d!1400549 (= lt!1709748 (choose!29794 (toList!4379 lm!1477) lambda!174994 (h!56592 (toList!4379 lm!1477))))))

(declare-fun e!2825582 () Bool)

(assert (=> d!1400549 e!2825582))

(declare-fun res!1888976 () Bool)

(assert (=> d!1400549 (=> (not res!1888976) (not e!2825582))))

(assert (=> d!1400549 (= res!1888976 (forall!10321 (toList!4379 lm!1477) lambda!174994))))

(assert (=> d!1400549 (= (forallContained!2578 (toList!4379 lm!1477) lambda!174994 (h!56592 (toList!4379 lm!1477))) lt!1709748)))

(declare-fun b!4534556 () Bool)

(assert (=> b!4534556 (= e!2825582 (contains!13489 (toList!4379 lm!1477) (h!56592 (toList!4379 lm!1477))))))

(assert (= (and d!1400549 res!1888976) b!4534556))

(declare-fun b_lambda!157177 () Bool)

(assert (=> (not b_lambda!157177) (not d!1400549)))

(declare-fun m!5295713 () Bool)

(assert (=> d!1400549 m!5295713))

(declare-fun m!5295715 () Bool)

(assert (=> d!1400549 m!5295715))

(declare-fun m!5295717 () Bool)

(assert (=> d!1400549 m!5295717))

(assert (=> b!4534556 m!5295361))

(assert (=> b!4534165 d!1400549))

(declare-fun d!1400551 () Bool)

(declare-fun dynLambda!21201 (Int tuple2!51178) Bool)

(assert (=> d!1400551 (dynLambda!21201 lambda!174995 (tuple2!51179 key!3287 (_2!28883 (get!16655 lt!1709331))))))

(declare-fun lt!1709751 () Unit!97512)

(declare-fun choose!29800 (List!50842 Int tuple2!51178) Unit!97512)

(assert (=> d!1400551 (= lt!1709751 (choose!29800 (_2!28884 (h!56592 (toList!4379 lm!1477))) lambda!174995 (tuple2!51179 key!3287 (_2!28883 (get!16655 lt!1709331)))))))

(declare-fun e!2825585 () Bool)

(assert (=> d!1400551 e!2825585))

(declare-fun res!1888979 () Bool)

(assert (=> d!1400551 (=> (not res!1888979) (not e!2825585))))

(assert (=> d!1400551 (= res!1888979 (forall!10323 (_2!28884 (h!56592 (toList!4379 lm!1477))) lambda!174995))))

(assert (=> d!1400551 (= (forallContained!2579 (_2!28884 (h!56592 (toList!4379 lm!1477))) lambda!174995 (tuple2!51179 key!3287 (_2!28883 (get!16655 lt!1709331)))) lt!1709751)))

(declare-fun b!4534559 () Bool)

(assert (=> b!4534559 (= e!2825585 (contains!13495 (_2!28884 (h!56592 (toList!4379 lm!1477))) (tuple2!51179 key!3287 (_2!28883 (get!16655 lt!1709331)))))))

(assert (= (and d!1400551 res!1888979) b!4534559))

(declare-fun b_lambda!157179 () Bool)

(assert (=> (not b_lambda!157179) (not d!1400551)))

(declare-fun m!5295719 () Bool)

(assert (=> d!1400551 m!5295719))

(declare-fun m!5295721 () Bool)

(assert (=> d!1400551 m!5295721))

(declare-fun m!5295723 () Bool)

(assert (=> d!1400551 m!5295723))

(declare-fun m!5295725 () Bool)

(assert (=> b!4534559 m!5295725))

(assert (=> b!4534165 d!1400551))

(declare-fun d!1400553 () Bool)

(assert (=> d!1400553 (= (get!16655 lt!1709331) (v!44842 lt!1709331))))

(assert (=> b!4534165 d!1400553))

(declare-fun d!1400555 () Bool)

(assert (=> d!1400555 (= (eq!643 lt!1709340 lt!1709322) (= (content!8416 (toList!4380 lt!1709340)) (content!8416 (toList!4380 lt!1709322))))))

(declare-fun bs!871362 () Bool)

(assert (= bs!871362 d!1400555))

(assert (=> bs!871362 m!5295177))

(declare-fun m!5295727 () Bool)

(assert (=> bs!871362 m!5295727))

(assert (=> b!4534186 d!1400555))

(declare-fun d!1400557 () Bool)

(assert (=> d!1400557 (= (eq!643 lt!1709325 lt!1709322) (= (content!8416 (toList!4380 lt!1709325)) (content!8416 (toList!4380 lt!1709322))))))

(declare-fun bs!871363 () Bool)

(assert (= bs!871363 d!1400557))

(assert (=> bs!871363 m!5295179))

(assert (=> bs!871363 m!5295727))

(assert (=> b!4534186 d!1400557))

(declare-fun bs!871364 () Bool)

(declare-fun b!4534560 () Bool)

(assert (= bs!871364 (and b!4534560 d!1400415)))

(declare-fun lambda!175113 () Int)

(assert (=> bs!871364 (= (= lt!1709351 lt!1709527) (= lambda!175113 lambda!175053))))

(declare-fun bs!871365 () Bool)

(assert (= bs!871365 (and b!4534560 b!4534392)))

(assert (=> bs!871365 (= (= lt!1709351 lt!1709544) (= lambda!175113 lambda!175050))))

(declare-fun bs!871366 () Bool)

(assert (= bs!871366 (and b!4534560 b!4534391)))

(assert (=> bs!871366 (= (= lt!1709351 lt!1709323) (= lambda!175113 lambda!175048))))

(assert (=> bs!871365 (= (= lt!1709351 lt!1709323) (= lambda!175113 lambda!175049))))

(declare-fun bs!871367 () Bool)

(assert (= bs!871367 (and b!4534560 b!4534165)))

(assert (=> bs!871367 (not (= lambda!175113 lambda!174995))))

(assert (=> b!4534560 true))

(declare-fun bs!871368 () Bool)

(declare-fun b!4534561 () Bool)

(assert (= bs!871368 (and b!4534561 d!1400415)))

(declare-fun lambda!175114 () Int)

(assert (=> bs!871368 (= (= lt!1709351 lt!1709527) (= lambda!175114 lambda!175053))))

(declare-fun bs!871369 () Bool)

(assert (= bs!871369 (and b!4534561 b!4534392)))

(assert (=> bs!871369 (= (= lt!1709351 lt!1709544) (= lambda!175114 lambda!175050))))

(declare-fun bs!871370 () Bool)

(assert (= bs!871370 (and b!4534561 b!4534560)))

(assert (=> bs!871370 (= lambda!175114 lambda!175113)))

(declare-fun bs!871371 () Bool)

(assert (= bs!871371 (and b!4534561 b!4534391)))

(assert (=> bs!871371 (= (= lt!1709351 lt!1709323) (= lambda!175114 lambda!175048))))

(assert (=> bs!871369 (= (= lt!1709351 lt!1709323) (= lambda!175114 lambda!175049))))

(declare-fun bs!871372 () Bool)

(assert (= bs!871372 (and b!4534561 b!4534165)))

(assert (=> bs!871372 (not (= lambda!175114 lambda!174995))))

(assert (=> b!4534561 true))

(declare-fun lt!1709769 () ListMap!3641)

(declare-fun lambda!175115 () Int)

(assert (=> bs!871368 (= (= lt!1709769 lt!1709527) (= lambda!175115 lambda!175053))))

(assert (=> bs!871369 (= (= lt!1709769 lt!1709544) (= lambda!175115 lambda!175050))))

(assert (=> bs!871370 (= (= lt!1709769 lt!1709351) (= lambda!175115 lambda!175113))))

(assert (=> bs!871371 (= (= lt!1709769 lt!1709323) (= lambda!175115 lambda!175048))))

(assert (=> bs!871369 (= (= lt!1709769 lt!1709323) (= lambda!175115 lambda!175049))))

(assert (=> bs!871372 (not (= lambda!175115 lambda!174995))))

(assert (=> b!4534561 (= (= lt!1709769 lt!1709351) (= lambda!175115 lambda!175114))))

(assert (=> b!4534561 true))

(declare-fun bs!871373 () Bool)

(declare-fun d!1400559 () Bool)

(assert (= bs!871373 (and d!1400559 d!1400415)))

(declare-fun lambda!175116 () Int)

(declare-fun lt!1709752 () ListMap!3641)

(assert (=> bs!871373 (= (= lt!1709752 lt!1709527) (= lambda!175116 lambda!175053))))

(declare-fun bs!871374 () Bool)

(assert (= bs!871374 (and d!1400559 b!4534392)))

(assert (=> bs!871374 (= (= lt!1709752 lt!1709544) (= lambda!175116 lambda!175050))))

(declare-fun bs!871375 () Bool)

(assert (= bs!871375 (and d!1400559 b!4534560)))

(assert (=> bs!871375 (= (= lt!1709752 lt!1709351) (= lambda!175116 lambda!175113))))

(declare-fun bs!871376 () Bool)

(assert (= bs!871376 (and d!1400559 b!4534391)))

(assert (=> bs!871376 (= (= lt!1709752 lt!1709323) (= lambda!175116 lambda!175048))))

(assert (=> bs!871374 (= (= lt!1709752 lt!1709323) (= lambda!175116 lambda!175049))))

(declare-fun bs!871377 () Bool)

(assert (= bs!871377 (and d!1400559 b!4534561)))

(assert (=> bs!871377 (= (= lt!1709752 lt!1709769) (= lambda!175116 lambda!175115))))

(declare-fun bs!871378 () Bool)

(assert (= bs!871378 (and d!1400559 b!4534165)))

(assert (=> bs!871378 (not (= lambda!175116 lambda!174995))))

(assert (=> bs!871377 (= (= lt!1709752 lt!1709351) (= lambda!175116 lambda!175114))))

(assert (=> d!1400559 true))

(declare-fun bm!316150 () Bool)

(declare-fun call!316156 () Unit!97512)

(assert (=> bm!316150 (= call!316156 (lemmaContainsAllItsOwnKeys!357 lt!1709351))))

(declare-fun e!2825586 () ListMap!3641)

(assert (=> b!4534560 (= e!2825586 lt!1709351)))

(declare-fun lt!1709755 () Unit!97512)

(assert (=> b!4534560 (= lt!1709755 call!316156)))

(declare-fun call!316157 () Bool)

(assert (=> b!4534560 call!316157))

(declare-fun lt!1709754 () Unit!97512)

(assert (=> b!4534560 (= lt!1709754 lt!1709755)))

(declare-fun call!316155 () Bool)

(assert (=> b!4534560 call!316155))

(declare-fun lt!1709763 () Unit!97512)

(declare-fun Unit!97562 () Unit!97512)

(assert (=> b!4534560 (= lt!1709763 Unit!97562)))

(assert (=> b!4534561 (= e!2825586 lt!1709769)))

(declare-fun lt!1709770 () ListMap!3641)

(assert (=> b!4534561 (= lt!1709770 (+!1585 lt!1709351 (h!56591 (_2!28884 lt!1709342))))))

(assert (=> b!4534561 (= lt!1709769 (addToMapMapFromBucket!713 (t!357804 (_2!28884 lt!1709342)) (+!1585 lt!1709351 (h!56591 (_2!28884 lt!1709342)))))))

(declare-fun lt!1709760 () Unit!97512)

(assert (=> b!4534561 (= lt!1709760 call!316156)))

(assert (=> b!4534561 (forall!10323 (toList!4380 lt!1709351) lambda!175114)))

(declare-fun lt!1709765 () Unit!97512)

(assert (=> b!4534561 (= lt!1709765 lt!1709760)))

(assert (=> b!4534561 call!316157))

(declare-fun lt!1709756 () Unit!97512)

(declare-fun Unit!97563 () Unit!97512)

(assert (=> b!4534561 (= lt!1709756 Unit!97563)))

(assert (=> b!4534561 (forall!10323 (t!357804 (_2!28884 lt!1709342)) lambda!175115)))

(declare-fun lt!1709766 () Unit!97512)

(declare-fun Unit!97564 () Unit!97512)

(assert (=> b!4534561 (= lt!1709766 Unit!97564)))

(declare-fun lt!1709753 () Unit!97512)

(declare-fun Unit!97565 () Unit!97512)

(assert (=> b!4534561 (= lt!1709753 Unit!97565)))

(declare-fun lt!1709764 () Unit!97512)

(assert (=> b!4534561 (= lt!1709764 (forallContained!2579 (toList!4380 lt!1709770) lambda!175115 (h!56591 (_2!28884 lt!1709342))))))

(assert (=> b!4534561 (contains!13491 lt!1709770 (_1!28883 (h!56591 (_2!28884 lt!1709342))))))

(declare-fun lt!1709767 () Unit!97512)

(declare-fun Unit!97566 () Unit!97512)

(assert (=> b!4534561 (= lt!1709767 Unit!97566)))

(assert (=> b!4534561 (contains!13491 lt!1709769 (_1!28883 (h!56591 (_2!28884 lt!1709342))))))

(declare-fun lt!1709757 () Unit!97512)

(declare-fun Unit!97567 () Unit!97512)

(assert (=> b!4534561 (= lt!1709757 Unit!97567)))

(assert (=> b!4534561 (forall!10323 (_2!28884 lt!1709342) lambda!175115)))

(declare-fun lt!1709762 () Unit!97512)

(declare-fun Unit!97568 () Unit!97512)

(assert (=> b!4534561 (= lt!1709762 Unit!97568)))

(assert (=> b!4534561 (forall!10323 (toList!4380 lt!1709770) lambda!175115)))

(declare-fun lt!1709768 () Unit!97512)

(declare-fun Unit!97569 () Unit!97512)

(assert (=> b!4534561 (= lt!1709768 Unit!97569)))

(declare-fun lt!1709772 () Unit!97512)

(declare-fun Unit!97570 () Unit!97512)

(assert (=> b!4534561 (= lt!1709772 Unit!97570)))

(declare-fun lt!1709759 () Unit!97512)

(assert (=> b!4534561 (= lt!1709759 (addForallContainsKeyThenBeforeAdding!357 lt!1709351 lt!1709769 (_1!28883 (h!56591 (_2!28884 lt!1709342))) (_2!28883 (h!56591 (_2!28884 lt!1709342)))))))

(assert (=> b!4534561 call!316155))

(declare-fun lt!1709771 () Unit!97512)

(assert (=> b!4534561 (= lt!1709771 lt!1709759)))

(assert (=> b!4534561 (forall!10323 (toList!4380 lt!1709351) lambda!175115)))

(declare-fun lt!1709761 () Unit!97512)

(declare-fun Unit!97571 () Unit!97512)

(assert (=> b!4534561 (= lt!1709761 Unit!97571)))

(declare-fun res!1888982 () Bool)

(assert (=> b!4534561 (= res!1888982 (forall!10323 (_2!28884 lt!1709342) lambda!175115))))

(declare-fun e!2825587 () Bool)

(assert (=> b!4534561 (=> (not res!1888982) (not e!2825587))))

(assert (=> b!4534561 e!2825587))

(declare-fun lt!1709758 () Unit!97512)

(declare-fun Unit!97573 () Unit!97512)

(assert (=> b!4534561 (= lt!1709758 Unit!97573)))

(declare-fun b!4534562 () Bool)

(assert (=> b!4534562 (= e!2825587 (forall!10323 (toList!4380 lt!1709351) lambda!175115))))

(declare-fun b!4534563 () Bool)

(declare-fun e!2825588 () Bool)

(assert (=> b!4534563 (= e!2825588 (invariantList!1037 (toList!4380 lt!1709752)))))

(declare-fun b!4534564 () Bool)

(declare-fun res!1888981 () Bool)

(assert (=> b!4534564 (=> (not res!1888981) (not e!2825588))))

(assert (=> b!4534564 (= res!1888981 (forall!10323 (toList!4380 lt!1709351) lambda!175116))))

(declare-fun bm!316152 () Bool)

(declare-fun c!774389 () Bool)

(assert (=> bm!316152 (= call!316157 (forall!10323 (ite c!774389 (toList!4380 lt!1709351) (toList!4380 lt!1709770)) (ite c!774389 lambda!175113 lambda!175115)))))

(declare-fun bm!316151 () Bool)

(assert (=> bm!316151 (= call!316155 (forall!10323 (toList!4380 lt!1709351) (ite c!774389 lambda!175113 lambda!175115)))))

(assert (=> d!1400559 e!2825588))

(declare-fun res!1888980 () Bool)

(assert (=> d!1400559 (=> (not res!1888980) (not e!2825588))))

(assert (=> d!1400559 (= res!1888980 (forall!10323 (_2!28884 lt!1709342) lambda!175116))))

(assert (=> d!1400559 (= lt!1709752 e!2825586)))

(assert (=> d!1400559 (= c!774389 ((_ is Nil!50718) (_2!28884 lt!1709342)))))

(assert (=> d!1400559 (noDuplicateKeys!1186 (_2!28884 lt!1709342))))

(assert (=> d!1400559 (= (addToMapMapFromBucket!713 (_2!28884 lt!1709342) lt!1709351) lt!1709752)))

(assert (= (and d!1400559 c!774389) b!4534560))

(assert (= (and d!1400559 (not c!774389)) b!4534561))

(assert (= (and b!4534561 res!1888982) b!4534562))

(assert (= (or b!4534560 b!4534561) bm!316152))

(assert (= (or b!4534560 b!4534561) bm!316151))

(assert (= (or b!4534560 b!4534561) bm!316150))

(assert (= (and d!1400559 res!1888980) b!4534564))

(assert (= (and b!4534564 res!1888981) b!4534563))

(declare-fun m!5295729 () Bool)

(assert (=> b!4534561 m!5295729))

(declare-fun m!5295731 () Bool)

(assert (=> b!4534561 m!5295731))

(declare-fun m!5295733 () Bool)

(assert (=> b!4534561 m!5295733))

(declare-fun m!5295735 () Bool)

(assert (=> b!4534561 m!5295735))

(declare-fun m!5295737 () Bool)

(assert (=> b!4534561 m!5295737))

(declare-fun m!5295739 () Bool)

(assert (=> b!4534561 m!5295739))

(assert (=> b!4534561 m!5295735))

(declare-fun m!5295741 () Bool)

(assert (=> b!4534561 m!5295741))

(declare-fun m!5295743 () Bool)

(assert (=> b!4534561 m!5295743))

(declare-fun m!5295745 () Bool)

(assert (=> b!4534561 m!5295745))

(declare-fun m!5295747 () Bool)

(assert (=> b!4534561 m!5295747))

(declare-fun m!5295749 () Bool)

(assert (=> b!4534561 m!5295749))

(assert (=> b!4534561 m!5295731))

(declare-fun m!5295751 () Bool)

(assert (=> bm!316150 m!5295751))

(assert (=> b!4534562 m!5295745))

(declare-fun m!5295753 () Bool)

(assert (=> b!4534563 m!5295753))

(declare-fun m!5295755 () Bool)

(assert (=> d!1400559 m!5295755))

(assert (=> d!1400559 m!5294949))

(declare-fun m!5295757 () Bool)

(assert (=> b!4534564 m!5295757))

(declare-fun m!5295759 () Bool)

(assert (=> bm!316152 m!5295759))

(declare-fun m!5295761 () Bool)

(assert (=> bm!316151 m!5295761))

(assert (=> b!4534186 d!1400559))

(declare-fun d!1400561 () Bool)

(assert (=> d!1400561 (eq!643 (addToMapMapFromBucket!713 (_2!28884 lt!1709342) lt!1709323) (addToMapMapFromBucket!713 (_2!28884 lt!1709342) lt!1709351))))

(declare-fun lt!1709775 () Unit!97512)

(declare-fun choose!29802 (ListMap!3641 ListMap!3641 List!50842) Unit!97512)

(assert (=> d!1400561 (= lt!1709775 (choose!29802 lt!1709323 lt!1709351 (_2!28884 lt!1709342)))))

(assert (=> d!1400561 (noDuplicateKeys!1186 (_2!28884 lt!1709342))))

(assert (=> d!1400561 (= (lemmaAddToMapFromBucketPreservesEquivalence!62 lt!1709323 lt!1709351 (_2!28884 lt!1709342)) lt!1709775)))

(declare-fun bs!871379 () Bool)

(assert (= bs!871379 d!1400561))

(assert (=> bs!871379 m!5294919))

(assert (=> bs!871379 m!5294909))

(assert (=> bs!871379 m!5294909))

(assert (=> bs!871379 m!5294919))

(declare-fun m!5295763 () Bool)

(assert (=> bs!871379 m!5295763))

(declare-fun m!5295765 () Bool)

(assert (=> bs!871379 m!5295765))

(assert (=> bs!871379 m!5294949))

(assert (=> b!4534186 d!1400561))

(declare-fun d!1400563 () Bool)

(assert (=> d!1400563 (= (head!9458 lt!1709350) (head!9460 (toList!4379 lt!1709350)))))

(declare-fun bs!871380 () Bool)

(assert (= bs!871380 d!1400563))

(declare-fun m!5295767 () Bool)

(assert (=> bs!871380 m!5295767))

(assert (=> b!4534184 d!1400563))

(declare-fun d!1400565 () Bool)

(declare-fun res!1888983 () Bool)

(declare-fun e!2825589 () Bool)

(assert (=> d!1400565 (=> res!1888983 e!2825589)))

(assert (=> d!1400565 (= res!1888983 (not ((_ is Cons!50718) newBucket!178)))))

(assert (=> d!1400565 (= (noDuplicateKeys!1186 newBucket!178) e!2825589)))

(declare-fun b!4534565 () Bool)

(declare-fun e!2825590 () Bool)

(assert (=> b!4534565 (= e!2825589 e!2825590)))

(declare-fun res!1888984 () Bool)

(assert (=> b!4534565 (=> (not res!1888984) (not e!2825590))))

(assert (=> b!4534565 (= res!1888984 (not (containsKey!1846 (t!357804 newBucket!178) (_1!28883 (h!56591 newBucket!178)))))))

(declare-fun b!4534566 () Bool)

(assert (=> b!4534566 (= e!2825590 (noDuplicateKeys!1186 (t!357804 newBucket!178)))))

(assert (= (and d!1400565 (not res!1888983)) b!4534565))

(assert (= (and b!4534565 res!1888984) b!4534566))

(declare-fun m!5295769 () Bool)

(assert (=> b!4534565 m!5295769))

(declare-fun m!5295771 () Bool)

(assert (=> b!4534566 m!5295771))

(assert (=> b!4534167 d!1400565))

(declare-fun b!4534567 () Bool)

(declare-fun e!2825595 () Unit!97512)

(declare-fun lt!1709779 () Unit!97512)

(assert (=> b!4534567 (= e!2825595 lt!1709779)))

(declare-fun lt!1709776 () Unit!97512)

(assert (=> b!4534567 (= lt!1709776 (lemmaContainsKeyImpliesGetValueByKeyDefined!1037 (toList!4380 lt!1709328) key!3287))))

(assert (=> b!4534567 (isDefined!8459 (getValueByKey!1133 (toList!4380 lt!1709328) key!3287))))

(declare-fun lt!1709781 () Unit!97512)

(assert (=> b!4534567 (= lt!1709781 lt!1709776)))

(assert (=> b!4534567 (= lt!1709779 (lemmaInListThenGetKeysListContains!481 (toList!4380 lt!1709328) key!3287))))

(declare-fun call!316158 () Bool)

(assert (=> b!4534567 call!316158))

(declare-fun b!4534568 () Bool)

(declare-fun e!2825594 () Bool)

(declare-fun e!2825592 () Bool)

(assert (=> b!4534568 (= e!2825594 e!2825592)))

(declare-fun res!1888987 () Bool)

(assert (=> b!4534568 (=> (not res!1888987) (not e!2825592))))

(assert (=> b!4534568 (= res!1888987 (isDefined!8459 (getValueByKey!1133 (toList!4380 lt!1709328) key!3287)))))

(declare-fun d!1400567 () Bool)

(assert (=> d!1400567 e!2825594))

(declare-fun res!1888986 () Bool)

(assert (=> d!1400567 (=> res!1888986 e!2825594)))

(declare-fun e!2825591 () Bool)

(assert (=> d!1400567 (= res!1888986 e!2825591)))

(declare-fun res!1888985 () Bool)

(assert (=> d!1400567 (=> (not res!1888985) (not e!2825591))))

(declare-fun lt!1709782 () Bool)

(assert (=> d!1400567 (= res!1888985 (not lt!1709782))))

(declare-fun lt!1709778 () Bool)

(assert (=> d!1400567 (= lt!1709782 lt!1709778)))

(declare-fun lt!1709780 () Unit!97512)

(assert (=> d!1400567 (= lt!1709780 e!2825595)))

(declare-fun c!774390 () Bool)

(assert (=> d!1400567 (= c!774390 lt!1709778)))

(assert (=> d!1400567 (= lt!1709778 (containsKey!1850 (toList!4380 lt!1709328) key!3287))))

(assert (=> d!1400567 (= (contains!13491 lt!1709328 key!3287) lt!1709782)))

(declare-fun b!4534569 () Bool)

(assert (=> b!4534569 false))

(declare-fun lt!1709783 () Unit!97512)

(declare-fun lt!1709777 () Unit!97512)

(assert (=> b!4534569 (= lt!1709783 lt!1709777)))

(assert (=> b!4534569 (containsKey!1850 (toList!4380 lt!1709328) key!3287)))

(assert (=> b!4534569 (= lt!1709777 (lemmaInGetKeysListThenContainsKey!484 (toList!4380 lt!1709328) key!3287))))

(declare-fun e!2825596 () Unit!97512)

(declare-fun Unit!97575 () Unit!97512)

(assert (=> b!4534569 (= e!2825596 Unit!97575)))

(declare-fun b!4534570 () Bool)

(declare-fun e!2825593 () List!50845)

(assert (=> b!4534570 (= e!2825593 (getKeysList!485 (toList!4380 lt!1709328)))))

(declare-fun bm!316153 () Bool)

(assert (=> bm!316153 (= call!316158 (contains!13494 e!2825593 key!3287))))

(declare-fun c!774391 () Bool)

(assert (=> bm!316153 (= c!774391 c!774390)))

(declare-fun b!4534571 () Bool)

(assert (=> b!4534571 (= e!2825593 (keys!17640 lt!1709328))))

(declare-fun b!4534572 () Bool)

(assert (=> b!4534572 (= e!2825592 (contains!13494 (keys!17640 lt!1709328) key!3287))))

(declare-fun b!4534573 () Bool)

(assert (=> b!4534573 (= e!2825591 (not (contains!13494 (keys!17640 lt!1709328) key!3287)))))

(declare-fun b!4534574 () Bool)

(declare-fun Unit!97576 () Unit!97512)

(assert (=> b!4534574 (= e!2825596 Unit!97576)))

(declare-fun b!4534575 () Bool)

(assert (=> b!4534575 (= e!2825595 e!2825596)))

(declare-fun c!774392 () Bool)

(assert (=> b!4534575 (= c!774392 call!316158)))

(assert (= (and d!1400567 c!774390) b!4534567))

(assert (= (and d!1400567 (not c!774390)) b!4534575))

(assert (= (and b!4534575 c!774392) b!4534569))

(assert (= (and b!4534575 (not c!774392)) b!4534574))

(assert (= (or b!4534567 b!4534575) bm!316153))

(assert (= (and bm!316153 c!774391) b!4534570))

(assert (= (and bm!316153 (not c!774391)) b!4534571))

(assert (= (and d!1400567 res!1888985) b!4534573))

(assert (= (and d!1400567 (not res!1888986)) b!4534568))

(assert (= (and b!4534568 res!1888987) b!4534572))

(declare-fun m!5295773 () Bool)

(assert (=> b!4534568 m!5295773))

(assert (=> b!4534568 m!5295773))

(declare-fun m!5295775 () Bool)

(assert (=> b!4534568 m!5295775))

(declare-fun m!5295777 () Bool)

(assert (=> b!4534571 m!5295777))

(assert (=> b!4534573 m!5295777))

(assert (=> b!4534573 m!5295777))

(declare-fun m!5295779 () Bool)

(assert (=> b!4534573 m!5295779))

(declare-fun m!5295781 () Bool)

(assert (=> bm!316153 m!5295781))

(declare-fun m!5295783 () Bool)

(assert (=> b!4534567 m!5295783))

(assert (=> b!4534567 m!5295773))

(assert (=> b!4534567 m!5295773))

(assert (=> b!4534567 m!5295775))

(declare-fun m!5295785 () Bool)

(assert (=> b!4534567 m!5295785))

(assert (=> b!4534572 m!5295777))

(assert (=> b!4534572 m!5295777))

(assert (=> b!4534572 m!5295779))

(declare-fun m!5295787 () Bool)

(assert (=> b!4534570 m!5295787))

(declare-fun m!5295789 () Bool)

(assert (=> d!1400567 m!5295789))

(assert (=> b!4534569 m!5295789))

(declare-fun m!5295791 () Bool)

(assert (=> b!4534569 m!5295791))

(assert (=> b!4534166 d!1400567))

(declare-fun bs!871381 () Bool)

(declare-fun d!1400569 () Bool)

(assert (= bs!871381 (and d!1400569 d!1400481)))

(declare-fun lambda!175117 () Int)

(assert (=> bs!871381 (= lambda!175117 lambda!175087)))

(declare-fun bs!871382 () Bool)

(assert (= bs!871382 (and d!1400569 d!1400503)))

(assert (=> bs!871382 (= lambda!175117 lambda!175101)))

(declare-fun bs!871383 () Bool)

(assert (= bs!871383 (and d!1400569 d!1400525)))

(assert (=> bs!871383 (= lambda!175117 lambda!175108)))

(declare-fun bs!871384 () Bool)

(assert (= bs!871384 (and d!1400569 b!4534165)))

(assert (=> bs!871384 (not (= lambda!175117 lambda!174994))))

(declare-fun bs!871385 () Bool)

(assert (= bs!871385 (and d!1400569 d!1400461)))

(assert (=> bs!871385 (= lambda!175117 lambda!175082)))

(declare-fun bs!871386 () Bool)

(assert (= bs!871386 (and d!1400569 d!1400527)))

(assert (=> bs!871386 (= lambda!175117 lambda!175112)))

(declare-fun bs!871387 () Bool)

(assert (= bs!871387 (and d!1400569 start!449788)))

(assert (=> bs!871387 (= lambda!175117 lambda!174993)))

(declare-fun bs!871388 () Bool)

(assert (= bs!871388 (and d!1400569 d!1400483)))

(assert (=> bs!871388 (= lambda!175117 lambda!175093)))

(declare-fun bs!871389 () Bool)

(assert (= bs!871389 (and d!1400569 d!1400523)))

(assert (=> bs!871389 (= lambda!175117 lambda!175107)))

(declare-fun bs!871390 () Bool)

(assert (= bs!871390 (and d!1400569 d!1400395)))

(assert (=> bs!871390 (not (= lambda!175117 lambda!175008))))

(declare-fun lt!1709784 () ListMap!3641)

(assert (=> d!1400569 (invariantList!1037 (toList!4380 lt!1709784))))

(declare-fun e!2825597 () ListMap!3641)

(assert (=> d!1400569 (= lt!1709784 e!2825597)))

(declare-fun c!774393 () Bool)

(assert (=> d!1400569 (= c!774393 ((_ is Cons!50719) (toList!4379 lm!1477)))))

(assert (=> d!1400569 (forall!10321 (toList!4379 lm!1477) lambda!175117)))

(assert (=> d!1400569 (= (extractMap!1242 (toList!4379 lm!1477)) lt!1709784)))

(declare-fun b!4534576 () Bool)

(assert (=> b!4534576 (= e!2825597 (addToMapMapFromBucket!713 (_2!28884 (h!56592 (toList!4379 lm!1477))) (extractMap!1242 (t!357805 (toList!4379 lm!1477)))))))

(declare-fun b!4534577 () Bool)

(assert (=> b!4534577 (= e!2825597 (ListMap!3642 Nil!50718))))

(assert (= (and d!1400569 c!774393) b!4534576))

(assert (= (and d!1400569 (not c!774393)) b!4534577))

(declare-fun m!5295793 () Bool)

(assert (=> d!1400569 m!5295793))

(declare-fun m!5295795 () Bool)

(assert (=> d!1400569 m!5295795))

(assert (=> b!4534576 m!5294953))

(assert (=> b!4534576 m!5294953))

(declare-fun m!5295797 () Bool)

(assert (=> b!4534576 m!5295797))

(assert (=> b!4534166 d!1400569))

(declare-fun d!1400571 () Bool)

(assert (=> d!1400571 (= (eq!643 lt!1709322 lt!1709332) (= (content!8416 (toList!4380 lt!1709322)) (content!8416 (toList!4380 lt!1709332))))))

(declare-fun bs!871391 () Bool)

(assert (= bs!871391 d!1400571))

(assert (=> bs!871391 m!5295727))

(declare-fun m!5295799 () Bool)

(assert (=> bs!871391 m!5295799))

(assert (=> b!4534181 d!1400571))

(declare-fun d!1400573 () Bool)

(declare-fun e!2825598 () Bool)

(assert (=> d!1400573 e!2825598))

(declare-fun res!1888988 () Bool)

(assert (=> d!1400573 (=> (not res!1888988) (not e!2825598))))

(declare-fun lt!1709785 () ListMap!3641)

(assert (=> d!1400573 (= res!1888988 (not (contains!13491 lt!1709785 key!3287)))))

(assert (=> d!1400573 (= lt!1709785 (ListMap!3642 (removePresrvNoDuplicatedKeys!161 (toList!4380 (addToMapMapFromBucket!713 (_2!28884 lt!1709342) lt!1709335)) key!3287)))))

(assert (=> d!1400573 (= (-!412 (addToMapMapFromBucket!713 (_2!28884 lt!1709342) lt!1709335) key!3287) lt!1709785)))

(declare-fun b!4534578 () Bool)

(assert (=> b!4534578 (= e!2825598 (= ((_ map and) (content!8419 (keys!17640 (addToMapMapFromBucket!713 (_2!28884 lt!1709342) lt!1709335))) ((_ map not) (store ((as const (Array K!12105 Bool)) false) key!3287 true))) (content!8419 (keys!17640 lt!1709785))))))

(assert (= (and d!1400573 res!1888988) b!4534578))

(declare-fun m!5295801 () Bool)

(assert (=> d!1400573 m!5295801))

(declare-fun m!5295803 () Bool)

(assert (=> d!1400573 m!5295803))

(assert (=> b!4534578 m!5295495))

(declare-fun m!5295805 () Bool)

(assert (=> b!4534578 m!5295805))

(declare-fun m!5295807 () Bool)

(assert (=> b!4534578 m!5295807))

(declare-fun m!5295809 () Bool)

(assert (=> b!4534578 m!5295809))

(assert (=> b!4534578 m!5295805))

(declare-fun m!5295811 () Bool)

(assert (=> b!4534578 m!5295811))

(assert (=> b!4534578 m!5294897))

(assert (=> b!4534578 m!5295807))

(assert (=> b!4534181 d!1400573))

(declare-fun bs!871392 () Bool)

(declare-fun b!4534579 () Bool)

(assert (= bs!871392 (and b!4534579 d!1400415)))

(declare-fun lambda!175118 () Int)

(assert (=> bs!871392 (= (= lt!1709335 lt!1709527) (= lambda!175118 lambda!175053))))

(declare-fun bs!871393 () Bool)

(assert (= bs!871393 (and b!4534579 b!4534392)))

(assert (=> bs!871393 (= (= lt!1709335 lt!1709544) (= lambda!175118 lambda!175050))))

(declare-fun bs!871394 () Bool)

(assert (= bs!871394 (and b!4534579 b!4534560)))

(assert (=> bs!871394 (= (= lt!1709335 lt!1709351) (= lambda!175118 lambda!175113))))

(declare-fun bs!871395 () Bool)

(assert (= bs!871395 (and b!4534579 b!4534391)))

(assert (=> bs!871395 (= (= lt!1709335 lt!1709323) (= lambda!175118 lambda!175048))))

(declare-fun bs!871396 () Bool)

(assert (= bs!871396 (and b!4534579 b!4534561)))

(assert (=> bs!871396 (= (= lt!1709335 lt!1709769) (= lambda!175118 lambda!175115))))

(assert (=> bs!871393 (= (= lt!1709335 lt!1709323) (= lambda!175118 lambda!175049))))

(declare-fun bs!871397 () Bool)

(assert (= bs!871397 (and b!4534579 d!1400559)))

(assert (=> bs!871397 (= (= lt!1709335 lt!1709752) (= lambda!175118 lambda!175116))))

(declare-fun bs!871398 () Bool)

(assert (= bs!871398 (and b!4534579 b!4534165)))

(assert (=> bs!871398 (not (= lambda!175118 lambda!174995))))

(assert (=> bs!871396 (= (= lt!1709335 lt!1709351) (= lambda!175118 lambda!175114))))

(assert (=> b!4534579 true))

(declare-fun bs!871399 () Bool)

(declare-fun b!4534580 () Bool)

(assert (= bs!871399 (and b!4534580 d!1400415)))

(declare-fun lambda!175119 () Int)

(assert (=> bs!871399 (= (= lt!1709335 lt!1709527) (= lambda!175119 lambda!175053))))

(declare-fun bs!871400 () Bool)

(assert (= bs!871400 (and b!4534580 b!4534392)))

(assert (=> bs!871400 (= (= lt!1709335 lt!1709544) (= lambda!175119 lambda!175050))))

(declare-fun bs!871401 () Bool)

(assert (= bs!871401 (and b!4534580 b!4534560)))

(assert (=> bs!871401 (= (= lt!1709335 lt!1709351) (= lambda!175119 lambda!175113))))

(declare-fun bs!871402 () Bool)

(assert (= bs!871402 (and b!4534580 b!4534391)))

(assert (=> bs!871402 (= (= lt!1709335 lt!1709323) (= lambda!175119 lambda!175048))))

(declare-fun bs!871403 () Bool)

(assert (= bs!871403 (and b!4534580 b!4534561)))

(assert (=> bs!871403 (= (= lt!1709335 lt!1709769) (= lambda!175119 lambda!175115))))

(declare-fun bs!871404 () Bool)

(assert (= bs!871404 (and b!4534580 b!4534579)))

(assert (=> bs!871404 (= lambda!175119 lambda!175118)))

(assert (=> bs!871400 (= (= lt!1709335 lt!1709323) (= lambda!175119 lambda!175049))))

(declare-fun bs!871405 () Bool)

(assert (= bs!871405 (and b!4534580 d!1400559)))

(assert (=> bs!871405 (= (= lt!1709335 lt!1709752) (= lambda!175119 lambda!175116))))

(declare-fun bs!871406 () Bool)

(assert (= bs!871406 (and b!4534580 b!4534165)))

(assert (=> bs!871406 (not (= lambda!175119 lambda!174995))))

(assert (=> bs!871403 (= (= lt!1709335 lt!1709351) (= lambda!175119 lambda!175114))))

(assert (=> b!4534580 true))

(declare-fun lt!1709803 () ListMap!3641)

(declare-fun lambda!175120 () Int)

(assert (=> bs!871399 (= (= lt!1709803 lt!1709527) (= lambda!175120 lambda!175053))))

(assert (=> bs!871400 (= (= lt!1709803 lt!1709544) (= lambda!175120 lambda!175050))))

(assert (=> bs!871401 (= (= lt!1709803 lt!1709351) (= lambda!175120 lambda!175113))))

(assert (=> bs!871402 (= (= lt!1709803 lt!1709323) (= lambda!175120 lambda!175048))))

(assert (=> b!4534580 (= (= lt!1709803 lt!1709335) (= lambda!175120 lambda!175119))))

(assert (=> bs!871403 (= (= lt!1709803 lt!1709769) (= lambda!175120 lambda!175115))))

(assert (=> bs!871404 (= (= lt!1709803 lt!1709335) (= lambda!175120 lambda!175118))))

(assert (=> bs!871400 (= (= lt!1709803 lt!1709323) (= lambda!175120 lambda!175049))))

(assert (=> bs!871405 (= (= lt!1709803 lt!1709752) (= lambda!175120 lambda!175116))))

(assert (=> bs!871406 (not (= lambda!175120 lambda!174995))))

(assert (=> bs!871403 (= (= lt!1709803 lt!1709351) (= lambda!175120 lambda!175114))))

(assert (=> b!4534580 true))

(declare-fun bs!871407 () Bool)

(declare-fun d!1400575 () Bool)

(assert (= bs!871407 (and d!1400575 d!1400415)))

(declare-fun lt!1709786 () ListMap!3641)

(declare-fun lambda!175121 () Int)

(assert (=> bs!871407 (= (= lt!1709786 lt!1709527) (= lambda!175121 lambda!175053))))

(declare-fun bs!871408 () Bool)

(assert (= bs!871408 (and d!1400575 b!4534392)))

(assert (=> bs!871408 (= (= lt!1709786 lt!1709544) (= lambda!175121 lambda!175050))))

(declare-fun bs!871409 () Bool)

(assert (= bs!871409 (and d!1400575 b!4534560)))

(assert (=> bs!871409 (= (= lt!1709786 lt!1709351) (= lambda!175121 lambda!175113))))

(declare-fun bs!871410 () Bool)

(assert (= bs!871410 (and d!1400575 b!4534391)))

(assert (=> bs!871410 (= (= lt!1709786 lt!1709323) (= lambda!175121 lambda!175048))))

(declare-fun bs!871411 () Bool)

(assert (= bs!871411 (and d!1400575 b!4534580)))

(assert (=> bs!871411 (= (= lt!1709786 lt!1709335) (= lambda!175121 lambda!175119))))

(declare-fun bs!871412 () Bool)

(assert (= bs!871412 (and d!1400575 b!4534561)))

(assert (=> bs!871412 (= (= lt!1709786 lt!1709769) (= lambda!175121 lambda!175115))))

(assert (=> bs!871411 (= (= lt!1709786 lt!1709803) (= lambda!175121 lambda!175120))))

(declare-fun bs!871413 () Bool)

(assert (= bs!871413 (and d!1400575 b!4534579)))

(assert (=> bs!871413 (= (= lt!1709786 lt!1709335) (= lambda!175121 lambda!175118))))

(assert (=> bs!871408 (= (= lt!1709786 lt!1709323) (= lambda!175121 lambda!175049))))

(declare-fun bs!871414 () Bool)

(assert (= bs!871414 (and d!1400575 d!1400559)))

(assert (=> bs!871414 (= (= lt!1709786 lt!1709752) (= lambda!175121 lambda!175116))))

(declare-fun bs!871415 () Bool)

(assert (= bs!871415 (and d!1400575 b!4534165)))

(assert (=> bs!871415 (not (= lambda!175121 lambda!174995))))

(assert (=> bs!871412 (= (= lt!1709786 lt!1709351) (= lambda!175121 lambda!175114))))

(assert (=> d!1400575 true))

(declare-fun bm!316154 () Bool)

(declare-fun call!316160 () Unit!97512)

(assert (=> bm!316154 (= call!316160 (lemmaContainsAllItsOwnKeys!357 lt!1709335))))

(declare-fun e!2825599 () ListMap!3641)

(assert (=> b!4534579 (= e!2825599 lt!1709335)))

(declare-fun lt!1709789 () Unit!97512)

(assert (=> b!4534579 (= lt!1709789 call!316160)))

(declare-fun call!316161 () Bool)

(assert (=> b!4534579 call!316161))

(declare-fun lt!1709788 () Unit!97512)

(assert (=> b!4534579 (= lt!1709788 lt!1709789)))

(declare-fun call!316159 () Bool)

(assert (=> b!4534579 call!316159))

(declare-fun lt!1709797 () Unit!97512)

(declare-fun Unit!97588 () Unit!97512)

(assert (=> b!4534579 (= lt!1709797 Unit!97588)))

(assert (=> b!4534580 (= e!2825599 lt!1709803)))

(declare-fun lt!1709804 () ListMap!3641)

(assert (=> b!4534580 (= lt!1709804 (+!1585 lt!1709335 (h!56591 (_2!28884 lt!1709342))))))

(assert (=> b!4534580 (= lt!1709803 (addToMapMapFromBucket!713 (t!357804 (_2!28884 lt!1709342)) (+!1585 lt!1709335 (h!56591 (_2!28884 lt!1709342)))))))

(declare-fun lt!1709794 () Unit!97512)

(assert (=> b!4534580 (= lt!1709794 call!316160)))

(assert (=> b!4534580 (forall!10323 (toList!4380 lt!1709335) lambda!175119)))

(declare-fun lt!1709799 () Unit!97512)

(assert (=> b!4534580 (= lt!1709799 lt!1709794)))

(assert (=> b!4534580 call!316161))

(declare-fun lt!1709790 () Unit!97512)

(declare-fun Unit!97589 () Unit!97512)

(assert (=> b!4534580 (= lt!1709790 Unit!97589)))

(assert (=> b!4534580 (forall!10323 (t!357804 (_2!28884 lt!1709342)) lambda!175120)))

(declare-fun lt!1709800 () Unit!97512)

(declare-fun Unit!97590 () Unit!97512)

(assert (=> b!4534580 (= lt!1709800 Unit!97590)))

(declare-fun lt!1709787 () Unit!97512)

(declare-fun Unit!97591 () Unit!97512)

(assert (=> b!4534580 (= lt!1709787 Unit!97591)))

(declare-fun lt!1709798 () Unit!97512)

(assert (=> b!4534580 (= lt!1709798 (forallContained!2579 (toList!4380 lt!1709804) lambda!175120 (h!56591 (_2!28884 lt!1709342))))))

(assert (=> b!4534580 (contains!13491 lt!1709804 (_1!28883 (h!56591 (_2!28884 lt!1709342))))))

(declare-fun lt!1709801 () Unit!97512)

(declare-fun Unit!97592 () Unit!97512)

(assert (=> b!4534580 (= lt!1709801 Unit!97592)))

(assert (=> b!4534580 (contains!13491 lt!1709803 (_1!28883 (h!56591 (_2!28884 lt!1709342))))))

(declare-fun lt!1709791 () Unit!97512)

(declare-fun Unit!97593 () Unit!97512)

(assert (=> b!4534580 (= lt!1709791 Unit!97593)))

(assert (=> b!4534580 (forall!10323 (_2!28884 lt!1709342) lambda!175120)))

(declare-fun lt!1709796 () Unit!97512)

(declare-fun Unit!97594 () Unit!97512)

(assert (=> b!4534580 (= lt!1709796 Unit!97594)))

(assert (=> b!4534580 (forall!10323 (toList!4380 lt!1709804) lambda!175120)))

(declare-fun lt!1709802 () Unit!97512)

(declare-fun Unit!97595 () Unit!97512)

(assert (=> b!4534580 (= lt!1709802 Unit!97595)))

(declare-fun lt!1709806 () Unit!97512)

(declare-fun Unit!97596 () Unit!97512)

(assert (=> b!4534580 (= lt!1709806 Unit!97596)))

(declare-fun lt!1709793 () Unit!97512)

(assert (=> b!4534580 (= lt!1709793 (addForallContainsKeyThenBeforeAdding!357 lt!1709335 lt!1709803 (_1!28883 (h!56591 (_2!28884 lt!1709342))) (_2!28883 (h!56591 (_2!28884 lt!1709342)))))))

(assert (=> b!4534580 call!316159))

(declare-fun lt!1709805 () Unit!97512)

(assert (=> b!4534580 (= lt!1709805 lt!1709793)))

(assert (=> b!4534580 (forall!10323 (toList!4380 lt!1709335) lambda!175120)))

(declare-fun lt!1709795 () Unit!97512)

(declare-fun Unit!97597 () Unit!97512)

(assert (=> b!4534580 (= lt!1709795 Unit!97597)))

(declare-fun res!1888991 () Bool)

(assert (=> b!4534580 (= res!1888991 (forall!10323 (_2!28884 lt!1709342) lambda!175120))))

(declare-fun e!2825600 () Bool)

(assert (=> b!4534580 (=> (not res!1888991) (not e!2825600))))

(assert (=> b!4534580 e!2825600))

(declare-fun lt!1709792 () Unit!97512)

(declare-fun Unit!97598 () Unit!97512)

(assert (=> b!4534580 (= lt!1709792 Unit!97598)))

(declare-fun b!4534581 () Bool)

(assert (=> b!4534581 (= e!2825600 (forall!10323 (toList!4380 lt!1709335) lambda!175120))))

(declare-fun b!4534582 () Bool)

(declare-fun e!2825601 () Bool)

(assert (=> b!4534582 (= e!2825601 (invariantList!1037 (toList!4380 lt!1709786)))))

(declare-fun b!4534583 () Bool)

(declare-fun res!1888990 () Bool)

(assert (=> b!4534583 (=> (not res!1888990) (not e!2825601))))

(assert (=> b!4534583 (= res!1888990 (forall!10323 (toList!4380 lt!1709335) lambda!175121))))

(declare-fun bm!316156 () Bool)

(declare-fun c!774394 () Bool)

(assert (=> bm!316156 (= call!316161 (forall!10323 (ite c!774394 (toList!4380 lt!1709335) (toList!4380 lt!1709804)) (ite c!774394 lambda!175118 lambda!175120)))))

(declare-fun bm!316155 () Bool)

(assert (=> bm!316155 (= call!316159 (forall!10323 (toList!4380 lt!1709335) (ite c!774394 lambda!175118 lambda!175120)))))

(assert (=> d!1400575 e!2825601))

(declare-fun res!1888989 () Bool)

(assert (=> d!1400575 (=> (not res!1888989) (not e!2825601))))

(assert (=> d!1400575 (= res!1888989 (forall!10323 (_2!28884 lt!1709342) lambda!175121))))

(assert (=> d!1400575 (= lt!1709786 e!2825599)))

(assert (=> d!1400575 (= c!774394 ((_ is Nil!50718) (_2!28884 lt!1709342)))))

(assert (=> d!1400575 (noDuplicateKeys!1186 (_2!28884 lt!1709342))))

(assert (=> d!1400575 (= (addToMapMapFromBucket!713 (_2!28884 lt!1709342) lt!1709335) lt!1709786)))

(assert (= (and d!1400575 c!774394) b!4534579))

(assert (= (and d!1400575 (not c!774394)) b!4534580))

(assert (= (and b!4534580 res!1888991) b!4534581))

(assert (= (or b!4534579 b!4534580) bm!316156))

(assert (= (or b!4534579 b!4534580) bm!316155))

(assert (= (or b!4534579 b!4534580) bm!316154))

(assert (= (and d!1400575 res!1888989) b!4534583))

(assert (= (and b!4534583 res!1888990) b!4534582))

(declare-fun m!5295813 () Bool)

(assert (=> b!4534580 m!5295813))

(declare-fun m!5295815 () Bool)

(assert (=> b!4534580 m!5295815))

(declare-fun m!5295817 () Bool)

(assert (=> b!4534580 m!5295817))

(declare-fun m!5295819 () Bool)

(assert (=> b!4534580 m!5295819))

(declare-fun m!5295821 () Bool)

(assert (=> b!4534580 m!5295821))

(declare-fun m!5295823 () Bool)

(assert (=> b!4534580 m!5295823))

(assert (=> b!4534580 m!5295819))

(declare-fun m!5295825 () Bool)

(assert (=> b!4534580 m!5295825))

(declare-fun m!5295827 () Bool)

(assert (=> b!4534580 m!5295827))

(declare-fun m!5295829 () Bool)

(assert (=> b!4534580 m!5295829))

(declare-fun m!5295831 () Bool)

(assert (=> b!4534580 m!5295831))

(declare-fun m!5295833 () Bool)

(assert (=> b!4534580 m!5295833))

(assert (=> b!4534580 m!5295815))

(declare-fun m!5295835 () Bool)

(assert (=> bm!316154 m!5295835))

(assert (=> b!4534581 m!5295829))

(declare-fun m!5295837 () Bool)

(assert (=> b!4534582 m!5295837))

(declare-fun m!5295839 () Bool)

(assert (=> d!1400575 m!5295839))

(assert (=> d!1400575 m!5294949))

(declare-fun m!5295841 () Bool)

(assert (=> b!4534583 m!5295841))

(declare-fun m!5295843 () Bool)

(assert (=> bm!316156 m!5295843))

(declare-fun m!5295845 () Bool)

(assert (=> bm!316155 m!5295845))

(assert (=> b!4534181 d!1400575))

(declare-fun d!1400577 () Bool)

(assert (=> d!1400577 (= (addToMapMapFromBucket!713 (_2!28884 lt!1709342) (-!412 lt!1709335 key!3287)) (-!412 (addToMapMapFromBucket!713 (_2!28884 lt!1709342) lt!1709335) key!3287))))

(declare-fun lt!1709809 () Unit!97512)

(declare-fun choose!29803 (ListMap!3641 K!12105 List!50842) Unit!97512)

(assert (=> d!1400577 (= lt!1709809 (choose!29803 lt!1709335 key!3287 (_2!28884 lt!1709342)))))

(assert (=> d!1400577 (not (containsKey!1846 (_2!28884 lt!1709342) key!3287))))

(assert (=> d!1400577 (= (lemmaAddToMapFromBucketMinusKeyIsCommutative!10 lt!1709335 key!3287 (_2!28884 lt!1709342)) lt!1709809)))

(declare-fun bs!871416 () Bool)

(assert (= bs!871416 d!1400577))

(assert (=> bs!871416 m!5294963))

(assert (=> bs!871416 m!5294897))

(assert (=> bs!871416 m!5294899))

(declare-fun m!5295847 () Bool)

(assert (=> bs!871416 m!5295847))

(assert (=> bs!871416 m!5294975))

(assert (=> bs!871416 m!5294897))

(assert (=> bs!871416 m!5294975))

(declare-fun m!5295849 () Bool)

(assert (=> bs!871416 m!5295849))

(assert (=> b!4534181 d!1400577))

(declare-fun bs!871417 () Bool)

(declare-fun d!1400579 () Bool)

(assert (= bs!871417 (and d!1400579 d!1400481)))

(declare-fun lambda!175124 () Int)

(assert (=> bs!871417 (= lambda!175124 lambda!175087)))

(declare-fun bs!871418 () Bool)

(assert (= bs!871418 (and d!1400579 d!1400503)))

(assert (=> bs!871418 (= lambda!175124 lambda!175101)))

(declare-fun bs!871419 () Bool)

(assert (= bs!871419 (and d!1400579 d!1400525)))

(assert (=> bs!871419 (= lambda!175124 lambda!175108)))

(declare-fun bs!871420 () Bool)

(assert (= bs!871420 (and d!1400579 b!4534165)))

(assert (=> bs!871420 (not (= lambda!175124 lambda!174994))))

(declare-fun bs!871421 () Bool)

(assert (= bs!871421 (and d!1400579 d!1400461)))

(assert (=> bs!871421 (= lambda!175124 lambda!175082)))

(declare-fun bs!871422 () Bool)

(assert (= bs!871422 (and d!1400579 d!1400569)))

(assert (=> bs!871422 (= lambda!175124 lambda!175117)))

(declare-fun bs!871423 () Bool)

(assert (= bs!871423 (and d!1400579 d!1400527)))

(assert (=> bs!871423 (= lambda!175124 lambda!175112)))

(declare-fun bs!871424 () Bool)

(assert (= bs!871424 (and d!1400579 start!449788)))

(assert (=> bs!871424 (= lambda!175124 lambda!174993)))

(declare-fun bs!871425 () Bool)

(assert (= bs!871425 (and d!1400579 d!1400483)))

(assert (=> bs!871425 (= lambda!175124 lambda!175093)))

(declare-fun bs!871426 () Bool)

(assert (= bs!871426 (and d!1400579 d!1400523)))

(assert (=> bs!871426 (= lambda!175124 lambda!175107)))

(declare-fun bs!871427 () Bool)

(assert (= bs!871427 (and d!1400579 d!1400395)))

(assert (=> bs!871427 (not (= lambda!175124 lambda!175008))))

(assert (=> d!1400579 (not (contains!13491 (extractMap!1242 (toList!4379 lm!1477)) key!3287))))

(declare-fun lt!1709812 () Unit!97512)

(declare-fun choose!29804 (ListLongMap!3011 K!12105 Hashable!5581) Unit!97512)

(assert (=> d!1400579 (= lt!1709812 (choose!29804 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1400579 (forall!10321 (toList!4379 lm!1477) lambda!175124)))

(assert (=> d!1400579 (= (lemmaNotInItsHashBucketThenNotInMap!174 lm!1477 key!3287 hashF!1107) lt!1709812)))

(declare-fun bs!871428 () Bool)

(assert (= bs!871428 d!1400579))

(assert (=> bs!871428 m!5294887))

(assert (=> bs!871428 m!5294887))

(declare-fun m!5295851 () Bool)

(assert (=> bs!871428 m!5295851))

(declare-fun m!5295853 () Bool)

(assert (=> bs!871428 m!5295853))

(declare-fun m!5295855 () Bool)

(assert (=> bs!871428 m!5295855))

(assert (=> b!4534159 d!1400579))

(declare-fun d!1400581 () Bool)

(declare-fun get!16657 (Option!11176) List!50842)

(assert (=> d!1400581 (= (apply!11923 lt!1709344 hash!344) (get!16657 (getValueByKey!1132 (toList!4379 lt!1709344) hash!344)))))

(declare-fun bs!871429 () Bool)

(assert (= bs!871429 d!1400581))

(assert (=> bs!871429 m!5295401))

(assert (=> bs!871429 m!5295401))

(declare-fun m!5295857 () Bool)

(assert (=> bs!871429 m!5295857))

(assert (=> b!4534180 d!1400581))

(declare-fun d!1400583 () Bool)

(declare-fun hash!2889 (Hashable!5581 K!12105) (_ BitVec 64))

(assert (=> d!1400583 (= (hash!2885 hashF!1107 key!3287) (hash!2889 hashF!1107 key!3287))))

(declare-fun bs!871430 () Bool)

(assert (= bs!871430 d!1400583))

(declare-fun m!5295859 () Bool)

(assert (=> bs!871430 m!5295859))

(assert (=> b!4534179 d!1400583))

(declare-fun bs!871431 () Bool)

(declare-fun d!1400585 () Bool)

(assert (= bs!871431 (and d!1400585 d!1400415)))

(declare-fun lambda!175127 () Int)

(assert (=> bs!871431 (not (= lambda!175127 lambda!175053))))

(declare-fun bs!871432 () Bool)

(assert (= bs!871432 (and d!1400585 b!4534392)))

(assert (=> bs!871432 (not (= lambda!175127 lambda!175050))))

(declare-fun bs!871433 () Bool)

(assert (= bs!871433 (and d!1400585 b!4534560)))

(assert (=> bs!871433 (not (= lambda!175127 lambda!175113))))

(declare-fun bs!871434 () Bool)

(assert (= bs!871434 (and d!1400585 b!4534391)))

(assert (=> bs!871434 (not (= lambda!175127 lambda!175048))))

(declare-fun bs!871435 () Bool)

(assert (= bs!871435 (and d!1400585 b!4534580)))

(assert (=> bs!871435 (not (= lambda!175127 lambda!175119))))

(declare-fun bs!871436 () Bool)

(assert (= bs!871436 (and d!1400585 b!4534561)))

(assert (=> bs!871436 (not (= lambda!175127 lambda!175115))))

(assert (=> bs!871435 (not (= lambda!175127 lambda!175120))))

(declare-fun bs!871437 () Bool)

(assert (= bs!871437 (and d!1400585 b!4534579)))

(assert (=> bs!871437 (not (= lambda!175127 lambda!175118))))

(declare-fun bs!871438 () Bool)

(assert (= bs!871438 (and d!1400585 d!1400575)))

(assert (=> bs!871438 (not (= lambda!175127 lambda!175121))))

(assert (=> bs!871432 (not (= lambda!175127 lambda!175049))))

(declare-fun bs!871439 () Bool)

(assert (= bs!871439 (and d!1400585 d!1400559)))

(assert (=> bs!871439 (not (= lambda!175127 lambda!175116))))

(declare-fun bs!871440 () Bool)

(assert (= bs!871440 (and d!1400585 b!4534165)))

(assert (=> bs!871440 (= (= hash!344 (_1!28884 (h!56592 (toList!4379 lm!1477)))) (= lambda!175127 lambda!174995))))

(assert (=> bs!871436 (not (= lambda!175127 lambda!175114))))

(assert (=> d!1400585 true))

(assert (=> d!1400585 true))

(assert (=> d!1400585 (= (allKeysSameHash!1040 newBucket!178 hash!344 hashF!1107) (forall!10323 newBucket!178 lambda!175127))))

(declare-fun bs!871441 () Bool)

(assert (= bs!871441 d!1400585))

(declare-fun m!5295861 () Bool)

(assert (=> bs!871441 m!5295861))

(assert (=> b!4534162 d!1400585))

(declare-fun d!1400587 () Bool)

(declare-fun res!1888999 () Bool)

(declare-fun e!2825608 () Bool)

(assert (=> d!1400587 (=> res!1888999 e!2825608)))

(declare-fun e!2825609 () Bool)

(assert (=> d!1400587 (= res!1888999 e!2825609)))

(declare-fun res!1889000 () Bool)

(assert (=> d!1400587 (=> (not res!1889000) (not e!2825609))))

(assert (=> d!1400587 (= res!1889000 ((_ is Cons!50719) (t!357805 (toList!4379 lm!1477))))))

(assert (=> d!1400587 (= (containsKeyBiggerList!166 (t!357805 (toList!4379 lm!1477)) key!3287) e!2825608)))

(declare-fun b!4534592 () Bool)

(assert (=> b!4534592 (= e!2825609 (containsKey!1846 (_2!28884 (h!56592 (t!357805 (toList!4379 lm!1477)))) key!3287))))

(declare-fun b!4534593 () Bool)

(declare-fun e!2825610 () Bool)

(assert (=> b!4534593 (= e!2825608 e!2825610)))

(declare-fun res!1888998 () Bool)

(assert (=> b!4534593 (=> (not res!1888998) (not e!2825610))))

(assert (=> b!4534593 (= res!1888998 ((_ is Cons!50719) (t!357805 (toList!4379 lm!1477))))))

(declare-fun b!4534594 () Bool)

(assert (=> b!4534594 (= e!2825610 (containsKeyBiggerList!166 (t!357805 (t!357805 (toList!4379 lm!1477))) key!3287))))

(assert (= (and d!1400587 res!1889000) b!4534592))

(assert (= (and d!1400587 (not res!1888999)) b!4534593))

(assert (= (and b!4534593 res!1888998) b!4534594))

(declare-fun m!5295863 () Bool)

(assert (=> b!4534592 m!5295863))

(declare-fun m!5295865 () Bool)

(assert (=> b!4534594 m!5295865))

(assert (=> b!4534183 d!1400587))

(declare-fun d!1400589 () Bool)

(declare-fun res!1889002 () Bool)

(declare-fun e!2825611 () Bool)

(assert (=> d!1400589 (=> res!1889002 e!2825611)))

(declare-fun e!2825612 () Bool)

(assert (=> d!1400589 (= res!1889002 e!2825612)))

(declare-fun res!1889003 () Bool)

(assert (=> d!1400589 (=> (not res!1889003) (not e!2825612))))

(assert (=> d!1400589 (= res!1889003 ((_ is Cons!50719) (toList!4379 lt!1709344)))))

(assert (=> d!1400589 (= (containsKeyBiggerList!166 (toList!4379 lt!1709344) key!3287) e!2825611)))

(declare-fun b!4534595 () Bool)

(assert (=> b!4534595 (= e!2825612 (containsKey!1846 (_2!28884 (h!56592 (toList!4379 lt!1709344))) key!3287))))

(declare-fun b!4534596 () Bool)

(declare-fun e!2825613 () Bool)

(assert (=> b!4534596 (= e!2825611 e!2825613)))

(declare-fun res!1889001 () Bool)

(assert (=> b!4534596 (=> (not res!1889001) (not e!2825613))))

(assert (=> b!4534596 (= res!1889001 ((_ is Cons!50719) (toList!4379 lt!1709344)))))

(declare-fun b!4534597 () Bool)

(assert (=> b!4534597 (= e!2825613 (containsKeyBiggerList!166 (t!357805 (toList!4379 lt!1709344)) key!3287))))

(assert (= (and d!1400589 res!1889003) b!4534595))

(assert (= (and d!1400589 (not res!1889002)) b!4534596))

(assert (= (and b!4534596 res!1889001) b!4534597))

(declare-fun m!5295867 () Bool)

(assert (=> b!4534595 m!5295867))

(declare-fun m!5295869 () Bool)

(assert (=> b!4534597 m!5295869))

(assert (=> b!4534183 d!1400589))

(declare-fun bs!871442 () Bool)

(declare-fun d!1400591 () Bool)

(assert (= bs!871442 (and d!1400591 d!1400481)))

(declare-fun lambda!175130 () Int)

(assert (=> bs!871442 (= lambda!175130 lambda!175087)))

(declare-fun bs!871443 () Bool)

(assert (= bs!871443 (and d!1400591 d!1400525)))

(assert (=> bs!871443 (= lambda!175130 lambda!175108)))

(declare-fun bs!871444 () Bool)

(assert (= bs!871444 (and d!1400591 b!4534165)))

(assert (=> bs!871444 (not (= lambda!175130 lambda!174994))))

(declare-fun bs!871445 () Bool)

(assert (= bs!871445 (and d!1400591 d!1400461)))

(assert (=> bs!871445 (= lambda!175130 lambda!175082)))

(declare-fun bs!871446 () Bool)

(assert (= bs!871446 (and d!1400591 d!1400569)))

(assert (=> bs!871446 (= lambda!175130 lambda!175117)))

(declare-fun bs!871447 () Bool)

(assert (= bs!871447 (and d!1400591 d!1400527)))

(assert (=> bs!871447 (= lambda!175130 lambda!175112)))

(declare-fun bs!871448 () Bool)

(assert (= bs!871448 (and d!1400591 start!449788)))

(assert (=> bs!871448 (= lambda!175130 lambda!174993)))

(declare-fun bs!871449 () Bool)

(assert (= bs!871449 (and d!1400591 d!1400483)))

(assert (=> bs!871449 (= lambda!175130 lambda!175093)))

(declare-fun bs!871450 () Bool)

(assert (= bs!871450 (and d!1400591 d!1400503)))

(assert (=> bs!871450 (= lambda!175130 lambda!175101)))

(declare-fun bs!871451 () Bool)

(assert (= bs!871451 (and d!1400591 d!1400579)))

(assert (=> bs!871451 (= lambda!175130 lambda!175124)))

(declare-fun bs!871452 () Bool)

(assert (= bs!871452 (and d!1400591 d!1400523)))

(assert (=> bs!871452 (= lambda!175130 lambda!175107)))

(declare-fun bs!871453 () Bool)

(assert (= bs!871453 (and d!1400591 d!1400395)))

(assert (=> bs!871453 (not (= lambda!175130 lambda!175008))))

(assert (=> d!1400591 (containsKeyBiggerList!166 (toList!4379 lt!1709344) key!3287)))

(declare-fun lt!1709815 () Unit!97512)

(declare-fun choose!29805 (ListLongMap!3011 K!12105 Hashable!5581) Unit!97512)

(assert (=> d!1400591 (= lt!1709815 (choose!29805 lt!1709344 key!3287 hashF!1107))))

(assert (=> d!1400591 (forall!10321 (toList!4379 lt!1709344) lambda!175130)))

(assert (=> d!1400591 (= (lemmaInLongMapThenContainsKeyBiggerList!102 lt!1709344 key!3287 hashF!1107) lt!1709815)))

(declare-fun bs!871454 () Bool)

(assert (= bs!871454 d!1400591))

(assert (=> bs!871454 m!5294875))

(declare-fun m!5295871 () Bool)

(assert (=> bs!871454 m!5295871))

(declare-fun m!5295873 () Bool)

(assert (=> bs!871454 m!5295873))

(assert (=> b!4534183 d!1400591))

(declare-fun d!1400593 () Bool)

(declare-fun res!1889004 () Bool)

(declare-fun e!2825614 () Bool)

(assert (=> d!1400593 (=> res!1889004 e!2825614)))

(assert (=> d!1400593 (= res!1889004 (and ((_ is Cons!50718) (_2!28884 lt!1709342)) (= (_1!28883 (h!56591 (_2!28884 lt!1709342))) key!3287)))))

(assert (=> d!1400593 (= (containsKey!1846 (_2!28884 lt!1709342) key!3287) e!2825614)))

(declare-fun b!4534598 () Bool)

(declare-fun e!2825615 () Bool)

(assert (=> b!4534598 (= e!2825614 e!2825615)))

(declare-fun res!1889005 () Bool)

(assert (=> b!4534598 (=> (not res!1889005) (not e!2825615))))

(assert (=> b!4534598 (= res!1889005 ((_ is Cons!50718) (_2!28884 lt!1709342)))))

(declare-fun b!4534599 () Bool)

(assert (=> b!4534599 (= e!2825615 (containsKey!1846 (t!357804 (_2!28884 lt!1709342)) key!3287))))

(assert (= (and d!1400593 (not res!1889004)) b!4534598))

(assert (= (and b!4534598 res!1889005) b!4534599))

(declare-fun m!5295875 () Bool)

(assert (=> b!4534599 m!5295875))

(assert (=> b!4534182 d!1400593))

(declare-fun bs!871455 () Bool)

(declare-fun d!1400595 () Bool)

(assert (= bs!871455 (and d!1400595 d!1400481)))

(declare-fun lambda!175133 () Int)

(assert (=> bs!871455 (= lambda!175133 lambda!175087)))

(declare-fun bs!871456 () Bool)

(assert (= bs!871456 (and d!1400595 d!1400525)))

(assert (=> bs!871456 (= lambda!175133 lambda!175108)))

(declare-fun bs!871457 () Bool)

(assert (= bs!871457 (and d!1400595 d!1400591)))

(assert (=> bs!871457 (= lambda!175133 lambda!175130)))

(declare-fun bs!871458 () Bool)

(assert (= bs!871458 (and d!1400595 b!4534165)))

(assert (=> bs!871458 (not (= lambda!175133 lambda!174994))))

(declare-fun bs!871459 () Bool)

(assert (= bs!871459 (and d!1400595 d!1400461)))

(assert (=> bs!871459 (= lambda!175133 lambda!175082)))

(declare-fun bs!871460 () Bool)

(assert (= bs!871460 (and d!1400595 d!1400569)))

(assert (=> bs!871460 (= lambda!175133 lambda!175117)))

(declare-fun bs!871461 () Bool)

(assert (= bs!871461 (and d!1400595 d!1400527)))

(assert (=> bs!871461 (= lambda!175133 lambda!175112)))

(declare-fun bs!871462 () Bool)

(assert (= bs!871462 (and d!1400595 start!449788)))

(assert (=> bs!871462 (= lambda!175133 lambda!174993)))

(declare-fun bs!871463 () Bool)

(assert (= bs!871463 (and d!1400595 d!1400483)))

(assert (=> bs!871463 (= lambda!175133 lambda!175093)))

(declare-fun bs!871464 () Bool)

(assert (= bs!871464 (and d!1400595 d!1400503)))

(assert (=> bs!871464 (= lambda!175133 lambda!175101)))

(declare-fun bs!871465 () Bool)

(assert (= bs!871465 (and d!1400595 d!1400579)))

(assert (=> bs!871465 (= lambda!175133 lambda!175124)))

(declare-fun bs!871466 () Bool)

(assert (= bs!871466 (and d!1400595 d!1400523)))

(assert (=> bs!871466 (= lambda!175133 lambda!175107)))

(declare-fun bs!871467 () Bool)

(assert (= bs!871467 (and d!1400595 d!1400395)))

(assert (=> bs!871467 (not (= lambda!175133 lambda!175008))))

(assert (=> d!1400595 (contains!13490 lm!1477 (hash!2885 hashF!1107 key!3287))))

(declare-fun lt!1709818 () Unit!97512)

(declare-fun choose!29806 (ListLongMap!3011 K!12105 Hashable!5581) Unit!97512)

(assert (=> d!1400595 (= lt!1709818 (choose!29806 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1400595 (forall!10321 (toList!4379 lm!1477) lambda!175133)))

(assert (=> d!1400595 (= (lemmaInGenMapThenLongMapContainsHash!260 lm!1477 key!3287 hashF!1107) lt!1709818)))

(declare-fun bs!871468 () Bool)

(assert (= bs!871468 d!1400595))

(assert (=> bs!871468 m!5294905))

(assert (=> bs!871468 m!5294905))

(declare-fun m!5295877 () Bool)

(assert (=> bs!871468 m!5295877))

(declare-fun m!5295879 () Bool)

(assert (=> bs!871468 m!5295879))

(declare-fun m!5295881 () Bool)

(assert (=> bs!871468 m!5295881))

(assert (=> b!4534160 d!1400595))

(declare-fun d!1400597 () Bool)

(assert (=> d!1400597 (= (apply!11923 lm!1477 hash!344) (get!16657 (getValueByKey!1132 (toList!4379 lm!1477) hash!344)))))

(declare-fun bs!871469 () Bool)

(assert (= bs!871469 d!1400597))

(declare-fun m!5295883 () Bool)

(assert (=> bs!871469 m!5295883))

(assert (=> bs!871469 m!5295883))

(declare-fun m!5295885 () Bool)

(assert (=> bs!871469 m!5295885))

(assert (=> b!4534160 d!1400597))

(declare-fun d!1400599 () Bool)

(declare-fun e!2825617 () Bool)

(assert (=> d!1400599 e!2825617))

(declare-fun res!1889006 () Bool)

(assert (=> d!1400599 (=> res!1889006 e!2825617)))

(declare-fun lt!1709820 () Bool)

(assert (=> d!1400599 (= res!1889006 (not lt!1709820))))

(declare-fun lt!1709821 () Bool)

(assert (=> d!1400599 (= lt!1709820 lt!1709821)))

(declare-fun lt!1709822 () Unit!97512)

(declare-fun e!2825616 () Unit!97512)

(assert (=> d!1400599 (= lt!1709822 e!2825616)))

(declare-fun c!774395 () Bool)

(assert (=> d!1400599 (= c!774395 lt!1709821)))

(assert (=> d!1400599 (= lt!1709821 (containsKey!1848 (toList!4379 lm!1477) lt!1709346))))

(assert (=> d!1400599 (= (contains!13490 lm!1477 lt!1709346) lt!1709820)))

(declare-fun b!4534600 () Bool)

(declare-fun lt!1709819 () Unit!97512)

(assert (=> b!4534600 (= e!2825616 lt!1709819)))

(assert (=> b!4534600 (= lt!1709819 (lemmaContainsKeyImpliesGetValueByKeyDefined!1035 (toList!4379 lm!1477) lt!1709346))))

(assert (=> b!4534600 (isDefined!8457 (getValueByKey!1132 (toList!4379 lm!1477) lt!1709346))))

(declare-fun b!4534601 () Bool)

(declare-fun Unit!97599 () Unit!97512)

(assert (=> b!4534601 (= e!2825616 Unit!97599)))

(declare-fun b!4534602 () Bool)

(assert (=> b!4534602 (= e!2825617 (isDefined!8457 (getValueByKey!1132 (toList!4379 lm!1477) lt!1709346)))))

(assert (= (and d!1400599 c!774395) b!4534600))

(assert (= (and d!1400599 (not c!774395)) b!4534601))

(assert (= (and d!1400599 (not res!1889006)) b!4534602))

(declare-fun m!5295887 () Bool)

(assert (=> d!1400599 m!5295887))

(declare-fun m!5295889 () Bool)

(assert (=> b!4534600 m!5295889))

(declare-fun m!5295891 () Bool)

(assert (=> b!4534600 m!5295891))

(assert (=> b!4534600 m!5295891))

(declare-fun m!5295893 () Bool)

(assert (=> b!4534600 m!5295893))

(assert (=> b!4534602 m!5295891))

(assert (=> b!4534602 m!5295891))

(assert (=> b!4534602 m!5295893))

(assert (=> b!4534160 d!1400599))

(declare-fun d!1400601 () Bool)

(assert (=> d!1400601 (contains!13489 (toList!4379 lm!1477) (tuple2!51181 hash!344 lt!1709321))))

(declare-fun lt!1709825 () Unit!97512)

(declare-fun choose!29807 (List!50843 (_ BitVec 64) List!50842) Unit!97512)

(assert (=> d!1400601 (= lt!1709825 (choose!29807 (toList!4379 lm!1477) hash!344 lt!1709321))))

(declare-fun e!2825620 () Bool)

(assert (=> d!1400601 e!2825620))

(declare-fun res!1889009 () Bool)

(assert (=> d!1400601 (=> (not res!1889009) (not e!2825620))))

(assert (=> d!1400601 (= res!1889009 (isStrictlySorted!451 (toList!4379 lm!1477)))))

(assert (=> d!1400601 (= (lemmaGetValueByKeyImpliesContainsTuple!698 (toList!4379 lm!1477) hash!344 lt!1709321) lt!1709825)))

(declare-fun b!4534605 () Bool)

(assert (=> b!4534605 (= e!2825620 (= (getValueByKey!1132 (toList!4379 lm!1477) hash!344) (Some!11175 lt!1709321)))))

(assert (= (and d!1400601 res!1889009) b!4534605))

(declare-fun m!5295895 () Bool)

(assert (=> d!1400601 m!5295895))

(declare-fun m!5295897 () Bool)

(assert (=> d!1400601 m!5295897))

(assert (=> d!1400601 m!5295175))

(assert (=> b!4534605 m!5295883))

(assert (=> b!4534160 d!1400601))

(declare-fun d!1400603 () Bool)

(assert (=> d!1400603 (dynLambda!21199 lambda!174993 lt!1709320)))

(declare-fun lt!1709826 () Unit!97512)

(assert (=> d!1400603 (= lt!1709826 (choose!29794 (toList!4379 lm!1477) lambda!174993 lt!1709320))))

(declare-fun e!2825621 () Bool)

(assert (=> d!1400603 e!2825621))

(declare-fun res!1889010 () Bool)

(assert (=> d!1400603 (=> (not res!1889010) (not e!2825621))))

(assert (=> d!1400603 (= res!1889010 (forall!10321 (toList!4379 lm!1477) lambda!174993))))

(assert (=> d!1400603 (= (forallContained!2578 (toList!4379 lm!1477) lambda!174993 lt!1709320) lt!1709826)))

(declare-fun b!4534606 () Bool)

(assert (=> b!4534606 (= e!2825621 (contains!13489 (toList!4379 lm!1477) lt!1709320))))

(assert (= (and d!1400603 res!1889010) b!4534606))

(declare-fun b_lambda!157181 () Bool)

(assert (=> (not b_lambda!157181) (not d!1400603)))

(declare-fun m!5295899 () Bool)

(assert (=> d!1400603 m!5295899))

(declare-fun m!5295901 () Bool)

(assert (=> d!1400603 m!5295901))

(assert (=> d!1400603 m!5294891))

(assert (=> b!4534606 m!5294937))

(assert (=> b!4534160 d!1400603))

(declare-fun d!1400605 () Bool)

(declare-fun lt!1709827 () Bool)

(assert (=> d!1400605 (= lt!1709827 (select (content!8417 (toList!4379 lm!1477)) lt!1709320))))

(declare-fun e!2825623 () Bool)

(assert (=> d!1400605 (= lt!1709827 e!2825623)))

(declare-fun res!1889012 () Bool)

(assert (=> d!1400605 (=> (not res!1889012) (not e!2825623))))

(assert (=> d!1400605 (= res!1889012 ((_ is Cons!50719) (toList!4379 lm!1477)))))

(assert (=> d!1400605 (= (contains!13489 (toList!4379 lm!1477) lt!1709320) lt!1709827)))

(declare-fun b!4534607 () Bool)

(declare-fun e!2825622 () Bool)

(assert (=> b!4534607 (= e!2825623 e!2825622)))

(declare-fun res!1889011 () Bool)

(assert (=> b!4534607 (=> res!1889011 e!2825622)))

(assert (=> b!4534607 (= res!1889011 (= (h!56592 (toList!4379 lm!1477)) lt!1709320))))

(declare-fun b!4534608 () Bool)

(assert (=> b!4534608 (= e!2825622 (contains!13489 (t!357805 (toList!4379 lm!1477)) lt!1709320))))

(assert (= (and d!1400605 res!1889012) b!4534607))

(assert (= (and b!4534607 (not res!1889011)) b!4534608))

(declare-fun m!5295903 () Bool)

(assert (=> d!1400605 m!5295903))

(declare-fun m!5295905 () Bool)

(assert (=> d!1400605 m!5295905))

(assert (=> b!4534608 m!5294889))

(assert (=> b!4534160 d!1400605))

(declare-fun b!4534620 () Bool)

(declare-fun e!2825628 () List!50842)

(assert (=> b!4534620 (= e!2825628 Nil!50718)))

(declare-fun b!4534618 () Bool)

(declare-fun e!2825629 () List!50842)

(assert (=> b!4534618 (= e!2825629 e!2825628)))

(declare-fun c!774400 () Bool)

(assert (=> b!4534618 (= c!774400 ((_ is Cons!50718) lt!1709321))))

(declare-fun d!1400607 () Bool)

(declare-fun lt!1709830 () List!50842)

(assert (=> d!1400607 (not (containsKey!1846 lt!1709830 key!3287))))

(assert (=> d!1400607 (= lt!1709830 e!2825629)))

(declare-fun c!774401 () Bool)

(assert (=> d!1400607 (= c!774401 (and ((_ is Cons!50718) lt!1709321) (= (_1!28883 (h!56591 lt!1709321)) key!3287)))))

(assert (=> d!1400607 (noDuplicateKeys!1186 lt!1709321)))

(assert (=> d!1400607 (= (removePairForKey!813 lt!1709321 key!3287) lt!1709830)))

(declare-fun b!4534619 () Bool)

(assert (=> b!4534619 (= e!2825628 (Cons!50718 (h!56591 lt!1709321) (removePairForKey!813 (t!357804 lt!1709321) key!3287)))))

(declare-fun b!4534617 () Bool)

(assert (=> b!4534617 (= e!2825629 (t!357804 lt!1709321))))

(assert (= (and d!1400607 c!774401) b!4534617))

(assert (= (and d!1400607 (not c!774401)) b!4534618))

(assert (= (and b!4534618 c!774400) b!4534619))

(assert (= (and b!4534618 (not c!774400)) b!4534620))

(declare-fun m!5295907 () Bool)

(assert (=> d!1400607 m!5295907))

(declare-fun m!5295909 () Bool)

(assert (=> d!1400607 m!5295909))

(declare-fun m!5295911 () Bool)

(assert (=> b!4534619 m!5295911))

(assert (=> b!4534160 d!1400607))

(declare-fun e!2825632 () Bool)

(declare-fun tp!1338477 () Bool)

(declare-fun b!4534625 () Bool)

(assert (=> b!4534625 (= e!2825632 (and tp_is_empty!28021 tp_is_empty!28023 tp!1338477))))

(assert (=> b!4534170 (= tp!1338465 e!2825632)))

(assert (= (and b!4534170 ((_ is Cons!50718) (t!357804 newBucket!178))) b!4534625))

(declare-fun b!4534630 () Bool)

(declare-fun e!2825635 () Bool)

(declare-fun tp!1338482 () Bool)

(declare-fun tp!1338483 () Bool)

(assert (=> b!4534630 (= e!2825635 (and tp!1338482 tp!1338483))))

(assert (=> b!4534164 (= tp!1338464 e!2825635)))

(assert (= (and b!4534164 ((_ is Cons!50719) (toList!4379 lm!1477))) b!4534630))

(declare-fun b_lambda!157183 () Bool)

(assert (= b_lambda!157161 (or start!449788 b_lambda!157183)))

(declare-fun bs!871470 () Bool)

(declare-fun d!1400609 () Bool)

(assert (= bs!871470 (and d!1400609 start!449788)))

(assert (=> bs!871470 (= (dynLambda!21199 lambda!174993 (h!56592 (toList!4379 lm!1477))) (noDuplicateKeys!1186 (_2!28884 (h!56592 (toList!4379 lm!1477)))))))

(declare-fun m!5295913 () Bool)

(assert (=> bs!871470 m!5295913))

(assert (=> d!1400465 d!1400609))

(declare-fun b_lambda!157185 () Bool)

(assert (= b_lambda!157153 (or start!449788 b_lambda!157185)))

(assert (=> b!4534271 d!1400609))

(declare-fun b_lambda!157187 () Bool)

(assert (= b_lambda!157177 (or b!4534165 b_lambda!157187)))

(declare-fun bs!871471 () Bool)

(declare-fun d!1400611 () Bool)

(assert (= bs!871471 (and d!1400611 b!4534165)))

(assert (=> bs!871471 (= (dynLambda!21199 lambda!174994 (h!56592 (toList!4379 lm!1477))) (allKeysSameHash!1040 (_2!28884 (h!56592 (toList!4379 lm!1477))) (_1!28884 (h!56592 (toList!4379 lm!1477))) hashF!1107))))

(declare-fun m!5295915 () Bool)

(assert (=> bs!871471 m!5295915))

(assert (=> d!1400549 d!1400611))

(declare-fun b_lambda!157189 () Bool)

(assert (= b_lambda!157181 (or start!449788 b_lambda!157189)))

(declare-fun bs!871472 () Bool)

(declare-fun d!1400613 () Bool)

(assert (= bs!871472 (and d!1400613 start!449788)))

(assert (=> bs!871472 (= (dynLambda!21199 lambda!174993 lt!1709320) (noDuplicateKeys!1186 (_2!28884 lt!1709320)))))

(declare-fun m!5295917 () Bool)

(assert (=> bs!871472 m!5295917))

(assert (=> d!1400603 d!1400613))

(declare-fun b_lambda!157191 () Bool)

(assert (= b_lambda!157179 (or b!4534165 b_lambda!157191)))

(declare-fun bs!871473 () Bool)

(declare-fun d!1400615 () Bool)

(assert (= bs!871473 (and d!1400615 b!4534165)))

(assert (=> bs!871473 (= (dynLambda!21201 lambda!174995 (tuple2!51179 key!3287 (_2!28883 (get!16655 lt!1709331)))) (= (hash!2885 hashF!1107 (_1!28883 (tuple2!51179 key!3287 (_2!28883 (get!16655 lt!1709331))))) (_1!28884 (h!56592 (toList!4379 lm!1477)))))))

(declare-fun m!5295919 () Bool)

(assert (=> bs!871473 m!5295919))

(assert (=> d!1400551 d!1400615))

(declare-fun b_lambda!157193 () Bool)

(assert (= b_lambda!157163 (or start!449788 b_lambda!157193)))

(declare-fun bs!871474 () Bool)

(declare-fun d!1400617 () Bool)

(assert (= bs!871474 (and d!1400617 start!449788)))

(assert (=> bs!871474 (= (dynLambda!21199 lambda!174993 (h!56592 (toList!4379 lt!1709344))) (noDuplicateKeys!1186 (_2!28884 (h!56592 (toList!4379 lt!1709344)))))))

(declare-fun m!5295921 () Bool)

(assert (=> bs!871474 m!5295921))

(assert (=> b!4534439 d!1400617))

(check-sat (not d!1400549) (not d!1400561) (not d!1400467) (not b!4534506) (not b!4534514) (not b!4534508) (not d!1400525) (not b!4534441) (not bm!316148) (not d!1400509) (not d!1400605) (not b!4534582) (not b!4534429) (not b!4534242) (not b!4534442) (not b!4534565) (not d!1400571) (not bs!871470) (not b!4534562) (not b!4534243) (not b!4534561) (not d!1400415) (not b!4534564) (not b!4534578) (not d!1400389) (not b!4534630) (not d!1400477) (not b_lambda!157193) (not bm!316151) (not bm!316156) tp_is_empty!28021 (not d!1400577) (not b_lambda!157187) (not bs!871472) (not d!1400607) (not b!4534240) (not b!4534554) (not d!1400591) (not b!4534625) (not b!4534606) (not bm!316149) (not d!1400567) (not d!1400471) (not b!4534548) (not b!4534571) (not d!1400569) (not bm!316128) (not b!4534599) (not b!4534499) (not bm!316154) (not bm!316155) (not b!4534551) (not d!1400413) (not d!1400507) (not b!4534458) (not b!4534444) (not b!4534394) (not b!4534602) (not b!4534569) (not b!4534241) (not b!4534619) (not b!4534512) (not d!1400465) (not b!4534497) (not b_lambda!157189) tp_is_empty!28023 (not d!1400573) (not b!4534568) (not bs!871471) (not b!4534445) (not b!4534395) (not d!1400461) (not b!4534495) (not d!1400523) (not b!4534272) (not d!1400481) (not b!4534496) (not b!4534507) (not b!4534573) (not d!1400581) (not bm!316127) (not bm!316153) (not b_lambda!157191) (not b!4534503) (not b!4534572) (not b!4534605) (not d!1400493) (not b!4534505) (not b!4534553) (not d!1400521) (not d!1400583) (not b!4534567) (not d!1400395) (not b!4534600) (not bs!871473) (not b!4534509) (not b!4534566) (not b!4534393) (not bm!316152) (not b_lambda!157183) (not d!1400527) (not b!4534556) (not d!1400563) (not d!1400547) (not b!4534436) (not b!4534219) (not b!4534581) (not d!1400595) (not d!1400601) (not d!1400585) (not b!4534563) (not d!1400479) (not b!4534457) (not b!4534550) (not d!1400579) (not b!4534594) (not d!1400551) (not d!1400603) (not b!4534608) (not d!1400503) (not d!1400381) (not b!4534440) (not b!4534266) (not d!1400505) (not d!1400599) (not b!4534438) (not b_lambda!157185) (not b!4534504) (not d!1400483) (not bm!316150) (not b!4534592) (not b!4534418) (not b!4534597) (not b!4534443) (not d!1400411) (not b!4534494) (not b!4534419) (not d!1400559) (not d!1400575) (not b!4534595) (not bm!316129) (not d!1400555) (not b!4534392) (not d!1400405) (not b!4534576) (not d!1400557) (not b!4534583) (not b!4534559) (not d!1400475) (not d!1400375) (not b!4534412) (not b!4534500) (not b!4534580) (not bs!871474) (not d!1400597) (not b!4534570) (not b!4534498))
(check-sat)
