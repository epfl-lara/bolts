; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!445808 () Bool)

(assert start!445808)

(declare-fun b!4510137 () Bool)

(declare-fun e!2809675 () Bool)

(declare-datatypes ((K!11990 0))(
  ( (K!11991 (val!17863 Int)) )
))
(declare-datatypes ((V!12236 0))(
  ( (V!12237 (val!17864 Int)) )
))
(declare-datatypes ((tuple2!50994 0))(
  ( (tuple2!50995 (_1!28791 K!11990) (_2!28791 V!12236)) )
))
(declare-datatypes ((List!50712 0))(
  ( (Nil!50588) (Cons!50588 (h!56423 tuple2!50994) (t!357674 List!50712)) )
))
(declare-datatypes ((tuple2!50996 0))(
  ( (tuple2!50997 (_1!28792 (_ BitVec 64)) (_2!28792 List!50712)) )
))
(declare-datatypes ((List!50713 0))(
  ( (Nil!50589) (Cons!50589 (h!56424 tuple2!50996) (t!357675 List!50713)) )
))
(declare-datatypes ((ListLongMap!2919 0))(
  ( (ListLongMap!2920 (toList!4287 List!50713)) )
))
(declare-fun lt!1688416 () ListLongMap!2919)

(declare-fun lambda!170395 () Int)

(declare-fun forall!10217 (List!50713 Int) Bool)

(assert (=> b!4510137 (= e!2809675 (forall!10217 (toList!4287 lt!1688416) lambda!170395))))

(declare-fun b!4510138 () Bool)

(declare-fun e!2809671 () Bool)

(declare-fun e!2809673 () Bool)

(assert (=> b!4510138 (= e!2809671 e!2809673)))

(declare-fun res!1875874 () Bool)

(assert (=> b!4510138 (=> res!1875874 e!2809673)))

(declare-fun lm!1477 () ListLongMap!2919)

(declare-fun key!3287 () K!11990)

(declare-fun containsKeyBiggerList!120 (List!50713 K!11990) Bool)

(assert (=> b!4510138 (= res!1875874 (not (containsKeyBiggerList!120 (t!357675 (toList!4287 lm!1477)) key!3287)))))

(assert (=> b!4510138 (containsKeyBiggerList!120 (toList!4287 lt!1688416) key!3287)))

(declare-datatypes ((Hashable!5535 0))(
  ( (HashableExt!5534 (__x!31238 Int)) )
))
(declare-fun hashF!1107 () Hashable!5535)

(declare-datatypes ((Unit!93428 0))(
  ( (Unit!93429) )
))
(declare-fun lt!1688418 () Unit!93428)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!56 (ListLongMap!2919 K!11990 Hashable!5535) Unit!93428)

(assert (=> b!4510138 (= lt!1688418 (lemmaInLongMapThenContainsKeyBiggerList!56 lt!1688416 key!3287 hashF!1107))))

(declare-fun b!4510139 () Bool)

(declare-fun res!1875883 () Bool)

(declare-fun e!2809677 () Bool)

(assert (=> b!4510139 (=> res!1875883 e!2809677)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4510139 (= res!1875883 (or ((_ is Nil!50589) (toList!4287 lm!1477)) (= (_1!28792 (h!56424 (toList!4287 lm!1477))) hash!344)))))

(declare-fun b!4510140 () Bool)

(declare-fun e!2809679 () Bool)

(assert (=> b!4510140 (= e!2809673 e!2809679)))

(declare-fun res!1875885 () Bool)

(assert (=> b!4510140 (=> res!1875885 e!2809679)))

(declare-datatypes ((ListMap!3549 0))(
  ( (ListMap!3550 (toList!4288 List!50712)) )
))
(declare-fun contains!13285 (ListMap!3549 K!11990) Bool)

(declare-fun extractMap!1196 (List!50713) ListMap!3549)

(assert (=> b!4510140 (= res!1875885 (not (contains!13285 (extractMap!1196 (t!357675 (toList!4287 lm!1477))) key!3287)))))

(declare-fun lt!1688412 () ListMap!3549)

(assert (=> b!4510140 (contains!13285 lt!1688412 key!3287)))

(assert (=> b!4510140 (= lt!1688412 (extractMap!1196 (toList!4287 lt!1688416)))))

(declare-fun lt!1688410 () Unit!93428)

(declare-fun lemmaListContainsThenExtractedMapContains!110 (ListLongMap!2919 K!11990 Hashable!5535) Unit!93428)

(assert (=> b!4510140 (= lt!1688410 (lemmaListContainsThenExtractedMapContains!110 lt!1688416 key!3287 hashF!1107))))

(declare-fun b!4510141 () Bool)

(declare-fun e!2809672 () Bool)

(assert (=> b!4510141 (= e!2809672 e!2809671)))

(declare-fun res!1875869 () Bool)

(assert (=> b!4510141 (=> res!1875869 e!2809671)))

(declare-fun lt!1688402 () Bool)

(assert (=> b!4510141 (= res!1875869 lt!1688402)))

(declare-fun lt!1688415 () Unit!93428)

(declare-fun e!2809680 () Unit!93428)

(assert (=> b!4510141 (= lt!1688415 e!2809680)))

(declare-fun c!769335 () Bool)

(assert (=> b!4510141 (= c!769335 lt!1688402)))

(declare-fun lt!1688406 () List!50712)

(declare-fun containsKey!1724 (List!50712 K!11990) Bool)

(assert (=> b!4510141 (= lt!1688402 (not (containsKey!1724 lt!1688406 key!3287)))))

(declare-fun b!4510142 () Bool)

(declare-fun res!1875879 () Bool)

(assert (=> b!4510142 (=> res!1875879 e!2809675)))

(declare-fun lt!1688409 () ListLongMap!2919)

(declare-fun lt!1688422 () tuple2!50996)

(declare-fun head!9374 (ListLongMap!2919) tuple2!50996)

(assert (=> b!4510142 (= res!1875879 (not (= (head!9374 lt!1688409) lt!1688422)))))

(declare-fun b!4510143 () Bool)

(declare-fun e!2809682 () Bool)

(declare-fun e!2809676 () Bool)

(assert (=> b!4510143 (= e!2809682 e!2809676)))

(declare-fun res!1875872 () Bool)

(assert (=> b!4510143 (=> (not res!1875872) (not e!2809676))))

(declare-fun lt!1688403 () (_ BitVec 64))

(assert (=> b!4510143 (= res!1875872 (= lt!1688403 hash!344))))

(declare-fun hash!2743 (Hashable!5535 K!11990) (_ BitVec 64))

(assert (=> b!4510143 (= lt!1688403 (hash!2743 hashF!1107 key!3287))))

(declare-fun b!4510144 () Bool)

(assert (=> b!4510144 (= e!2809676 (not e!2809677))))

(declare-fun res!1875878 () Bool)

(assert (=> b!4510144 (=> res!1875878 e!2809677)))

(declare-fun newBucket!178 () List!50712)

(declare-fun removePairForKey!767 (List!50712 K!11990) List!50712)

(assert (=> b!4510144 (= res!1875878 (not (= newBucket!178 (removePairForKey!767 lt!1688406 key!3287))))))

(declare-fun lt!1688417 () Unit!93428)

(declare-fun lt!1688407 () tuple2!50996)

(declare-fun forallContained!2469 (List!50713 Int tuple2!50996) Unit!93428)

(assert (=> b!4510144 (= lt!1688417 (forallContained!2469 (toList!4287 lm!1477) lambda!170395 lt!1688407))))

(declare-fun contains!13286 (List!50713 tuple2!50996) Bool)

(assert (=> b!4510144 (contains!13286 (toList!4287 lm!1477) lt!1688407)))

(assert (=> b!4510144 (= lt!1688407 (tuple2!50997 hash!344 lt!1688406))))

(declare-fun lt!1688411 () Unit!93428)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!652 (List!50713 (_ BitVec 64) List!50712) Unit!93428)

(assert (=> b!4510144 (= lt!1688411 (lemmaGetValueByKeyImpliesContainsTuple!652 (toList!4287 lm!1477) hash!344 lt!1688406))))

(declare-fun apply!11877 (ListLongMap!2919 (_ BitVec 64)) List!50712)

(assert (=> b!4510144 (= lt!1688406 (apply!11877 lm!1477 hash!344))))

(declare-fun contains!13287 (ListLongMap!2919 (_ BitVec 64)) Bool)

(assert (=> b!4510144 (contains!13287 lm!1477 lt!1688403)))

(declare-fun lt!1688421 () Unit!93428)

(declare-fun lemmaInGenMapThenLongMapContainsHash!214 (ListLongMap!2919 K!11990 Hashable!5535) Unit!93428)

(assert (=> b!4510144 (= lt!1688421 (lemmaInGenMapThenLongMapContainsHash!214 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4510145 () Bool)

(declare-fun res!1875876 () Bool)

(assert (=> b!4510145 (=> (not res!1875876) (not e!2809676))))

(declare-fun allKeysSameHash!994 (List!50712 (_ BitVec 64) Hashable!5535) Bool)

(assert (=> b!4510145 (= res!1875876 (allKeysSameHash!994 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4510146 () Bool)

(declare-fun Unit!93430 () Unit!93428)

(assert (=> b!4510146 (= e!2809680 Unit!93430)))

(declare-fun res!1875871 () Bool)

(declare-fun e!2809683 () Bool)

(assert (=> start!445808 (=> (not res!1875871) (not e!2809683))))

(assert (=> start!445808 (= res!1875871 (forall!10217 (toList!4287 lm!1477) lambda!170395))))

(assert (=> start!445808 e!2809683))

(assert (=> start!445808 true))

(declare-fun e!2809681 () Bool)

(declare-fun inv!66174 (ListLongMap!2919) Bool)

(assert (=> start!445808 (and (inv!66174 lm!1477) e!2809681)))

(declare-fun tp_is_empty!27837 () Bool)

(assert (=> start!445808 tp_is_empty!27837))

(declare-fun e!2809678 () Bool)

(assert (=> start!445808 e!2809678))

(declare-fun b!4510147 () Bool)

(declare-fun Unit!93431 () Unit!93428)

(assert (=> b!4510147 (= e!2809680 Unit!93431)))

(declare-fun lt!1688414 () Unit!93428)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!128 (ListLongMap!2919 K!11990 Hashable!5535) Unit!93428)

(assert (=> b!4510147 (= lt!1688414 (lemmaNotInItsHashBucketThenNotInMap!128 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4510147 false))

(declare-fun b!4510148 () Bool)

(declare-fun e!2809674 () Bool)

(assert (=> b!4510148 (= e!2809679 e!2809674)))

(declare-fun res!1875882 () Bool)

(assert (=> b!4510148 (=> res!1875882 e!2809674)))

(declare-fun lt!1688419 () ListMap!3549)

(declare-fun lt!1688405 () ListMap!3549)

(declare-fun eq!597 (ListMap!3549 ListMap!3549) Bool)

(assert (=> b!4510148 (= res!1875882 (not (eq!597 lt!1688419 lt!1688405)))))

(declare-fun +!1500 (ListLongMap!2919 tuple2!50996) ListLongMap!2919)

(assert (=> b!4510148 (= lt!1688419 (extractMap!1196 (toList!4287 (+!1500 lt!1688416 lt!1688422))))))

(assert (=> b!4510148 (= lt!1688422 (head!9374 lm!1477))))

(declare-fun lt!1688413 () ListMap!3549)

(declare-fun -!366 (ListMap!3549 K!11990) ListMap!3549)

(assert (=> b!4510148 (eq!597 lt!1688413 (-!366 lt!1688412 key!3287))))

(declare-fun lt!1688408 () ListLongMap!2919)

(assert (=> b!4510148 (= lt!1688413 (extractMap!1196 (toList!4287 lt!1688408)))))

(declare-fun lt!1688404 () tuple2!50996)

(assert (=> b!4510148 (= lt!1688408 (+!1500 lt!1688416 lt!1688404))))

(assert (=> b!4510148 (= lt!1688404 (tuple2!50997 hash!344 newBucket!178))))

(declare-fun lt!1688420 () Unit!93428)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!125 (ListLongMap!2919 (_ BitVec 64) List!50712 K!11990 Hashable!5535) Unit!93428)

(assert (=> b!4510148 (= lt!1688420 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!125 lt!1688416 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4510149 () Bool)

(assert (=> b!4510149 (= e!2809674 e!2809675)))

(declare-fun res!1875886 () Bool)

(assert (=> b!4510149 (=> res!1875886 e!2809675)))

(assert (=> b!4510149 (= res!1875886 (not (= lt!1688409 (+!1500 lm!1477 lt!1688404))))))

(assert (=> b!4510149 (= lt!1688409 (+!1500 lt!1688408 lt!1688422))))

(declare-fun b!4510150 () Bool)

(declare-fun res!1875873 () Bool)

(assert (=> b!4510150 (=> res!1875873 e!2809672)))

(assert (=> b!4510150 (= res!1875873 (not (= (apply!11877 lt!1688416 hash!344) lt!1688406)))))

(declare-fun b!4510151 () Bool)

(declare-fun res!1875870 () Bool)

(assert (=> b!4510151 (=> res!1875870 e!2809674)))

(assert (=> b!4510151 (= res!1875870 (not (eq!597 lt!1688405 lt!1688419)))))

(declare-fun b!4510152 () Bool)

(declare-fun tp!1337766 () Bool)

(assert (=> b!4510152 (= e!2809681 tp!1337766)))

(declare-fun b!4510153 () Bool)

(assert (=> b!4510153 (= e!2809677 e!2809672)))

(declare-fun res!1875867 () Bool)

(assert (=> b!4510153 (=> res!1875867 e!2809672)))

(assert (=> b!4510153 (= res!1875867 (not (contains!13287 lt!1688416 hash!344)))))

(declare-fun tail!7696 (ListLongMap!2919) ListLongMap!2919)

(assert (=> b!4510153 (= lt!1688416 (tail!7696 lm!1477))))

(declare-fun tp_is_empty!27839 () Bool)

(declare-fun tp!1337767 () Bool)

(declare-fun b!4510154 () Bool)

(assert (=> b!4510154 (= e!2809678 (and tp_is_empty!27837 tp_is_empty!27839 tp!1337767))))

(declare-fun b!4510155 () Bool)

(declare-fun res!1875884 () Bool)

(assert (=> b!4510155 (=> res!1875884 e!2809674)))

(assert (=> b!4510155 (= res!1875884 (bvsge (_1!28792 lt!1688422) hash!344))))

(declare-fun b!4510156 () Bool)

(declare-fun res!1875881 () Bool)

(assert (=> b!4510156 (=> (not res!1875881) (not e!2809683))))

(declare-fun allKeysSameHashInMap!1247 (ListLongMap!2919 Hashable!5535) Bool)

(assert (=> b!4510156 (= res!1875881 (allKeysSameHashInMap!1247 lm!1477 hashF!1107))))

(declare-fun b!4510157 () Bool)

(declare-fun res!1875875 () Bool)

(assert (=> b!4510157 (=> res!1875875 e!2809672)))

(assert (=> b!4510157 (= res!1875875 (not (contains!13286 (t!357675 (toList!4287 lm!1477)) lt!1688407)))))

(declare-fun b!4510158 () Bool)

(declare-fun res!1875877 () Bool)

(assert (=> b!4510158 (=> res!1875877 e!2809677)))

(declare-fun noDuplicateKeys!1140 (List!50712) Bool)

(assert (=> b!4510158 (= res!1875877 (not (noDuplicateKeys!1140 newBucket!178)))))

(declare-fun b!4510159 () Bool)

(declare-fun res!1875880 () Bool)

(assert (=> b!4510159 (=> res!1875880 e!2809675)))

(declare-fun addToMapMapFromBucket!667 (List!50712 ListMap!3549) ListMap!3549)

(assert (=> b!4510159 (= res!1875880 (not (eq!597 (extractMap!1196 (toList!4287 lt!1688409)) (addToMapMapFromBucket!667 (_2!28792 lt!1688422) lt!1688413))))))

(declare-fun b!4510160 () Bool)

(assert (=> b!4510160 (= e!2809683 e!2809682)))

(declare-fun res!1875868 () Bool)

(assert (=> b!4510160 (=> (not res!1875868) (not e!2809682))))

(assert (=> b!4510160 (= res!1875868 (contains!13285 lt!1688405 key!3287))))

(assert (=> b!4510160 (= lt!1688405 (extractMap!1196 (toList!4287 lm!1477)))))

(assert (= (and start!445808 res!1875871) b!4510156))

(assert (= (and b!4510156 res!1875881) b!4510160))

(assert (= (and b!4510160 res!1875868) b!4510143))

(assert (= (and b!4510143 res!1875872) b!4510145))

(assert (= (and b!4510145 res!1875876) b!4510144))

(assert (= (and b!4510144 (not res!1875878)) b!4510158))

(assert (= (and b!4510158 (not res!1875877)) b!4510139))

(assert (= (and b!4510139 (not res!1875883)) b!4510153))

(assert (= (and b!4510153 (not res!1875867)) b!4510150))

(assert (= (and b!4510150 (not res!1875873)) b!4510157))

(assert (= (and b!4510157 (not res!1875875)) b!4510141))

(assert (= (and b!4510141 c!769335) b!4510147))

(assert (= (and b!4510141 (not c!769335)) b!4510146))

(assert (= (and b!4510141 (not res!1875869)) b!4510138))

(assert (= (and b!4510138 (not res!1875874)) b!4510140))

(assert (= (and b!4510140 (not res!1875885)) b!4510148))

(assert (= (and b!4510148 (not res!1875882)) b!4510151))

(assert (= (and b!4510151 (not res!1875870)) b!4510155))

(assert (= (and b!4510155 (not res!1875884)) b!4510149))

(assert (= (and b!4510149 (not res!1875886)) b!4510142))

(assert (= (and b!4510142 (not res!1875879)) b!4510159))

(assert (= (and b!4510159 (not res!1875880)) b!4510137))

(assert (= start!445808 b!4510152))

(assert (= (and start!445808 ((_ is Cons!50588) newBucket!178)) b!4510154))

(declare-fun m!5249181 () Bool)

(assert (=> b!4510156 m!5249181))

(declare-fun m!5249183 () Bool)

(assert (=> b!4510142 m!5249183))

(declare-fun m!5249185 () Bool)

(assert (=> b!4510149 m!5249185))

(declare-fun m!5249187 () Bool)

(assert (=> b!4510149 m!5249187))

(declare-fun m!5249189 () Bool)

(assert (=> b!4510160 m!5249189))

(declare-fun m!5249191 () Bool)

(assert (=> b!4510160 m!5249191))

(declare-fun m!5249193 () Bool)

(assert (=> b!4510144 m!5249193))

(declare-fun m!5249195 () Bool)

(assert (=> b!4510144 m!5249195))

(declare-fun m!5249197 () Bool)

(assert (=> b!4510144 m!5249197))

(declare-fun m!5249199 () Bool)

(assert (=> b!4510144 m!5249199))

(declare-fun m!5249201 () Bool)

(assert (=> b!4510144 m!5249201))

(declare-fun m!5249203 () Bool)

(assert (=> b!4510144 m!5249203))

(declare-fun m!5249205 () Bool)

(assert (=> b!4510144 m!5249205))

(declare-fun m!5249207 () Bool)

(assert (=> b!4510153 m!5249207))

(declare-fun m!5249209 () Bool)

(assert (=> b!4510153 m!5249209))

(declare-fun m!5249211 () Bool)

(assert (=> b!4510143 m!5249211))

(declare-fun m!5249213 () Bool)

(assert (=> b!4510148 m!5249213))

(declare-fun m!5249215 () Bool)

(assert (=> b!4510148 m!5249215))

(declare-fun m!5249217 () Bool)

(assert (=> b!4510148 m!5249217))

(declare-fun m!5249219 () Bool)

(assert (=> b!4510148 m!5249219))

(declare-fun m!5249221 () Bool)

(assert (=> b!4510148 m!5249221))

(declare-fun m!5249223 () Bool)

(assert (=> b!4510148 m!5249223))

(declare-fun m!5249225 () Bool)

(assert (=> b!4510148 m!5249225))

(declare-fun m!5249227 () Bool)

(assert (=> b!4510148 m!5249227))

(declare-fun m!5249229 () Bool)

(assert (=> b!4510148 m!5249229))

(assert (=> b!4510148 m!5249217))

(declare-fun m!5249231 () Bool)

(assert (=> b!4510157 m!5249231))

(declare-fun m!5249233 () Bool)

(assert (=> b!4510140 m!5249233))

(declare-fun m!5249235 () Bool)

(assert (=> b!4510140 m!5249235))

(declare-fun m!5249237 () Bool)

(assert (=> b!4510140 m!5249237))

(assert (=> b!4510140 m!5249237))

(declare-fun m!5249239 () Bool)

(assert (=> b!4510140 m!5249239))

(declare-fun m!5249241 () Bool)

(assert (=> b!4510140 m!5249241))

(declare-fun m!5249243 () Bool)

(assert (=> b!4510141 m!5249243))

(declare-fun m!5249245 () Bool)

(assert (=> b!4510158 m!5249245))

(declare-fun m!5249247 () Bool)

(assert (=> start!445808 m!5249247))

(declare-fun m!5249249 () Bool)

(assert (=> start!445808 m!5249249))

(declare-fun m!5249251 () Bool)

(assert (=> b!4510150 m!5249251))

(declare-fun m!5249253 () Bool)

(assert (=> b!4510138 m!5249253))

(declare-fun m!5249255 () Bool)

(assert (=> b!4510138 m!5249255))

(declare-fun m!5249257 () Bool)

(assert (=> b!4510138 m!5249257))

(declare-fun m!5249259 () Bool)

(assert (=> b!4510137 m!5249259))

(declare-fun m!5249261 () Bool)

(assert (=> b!4510159 m!5249261))

(declare-fun m!5249263 () Bool)

(assert (=> b!4510159 m!5249263))

(assert (=> b!4510159 m!5249261))

(assert (=> b!4510159 m!5249263))

(declare-fun m!5249265 () Bool)

(assert (=> b!4510159 m!5249265))

(declare-fun m!5249267 () Bool)

(assert (=> b!4510151 m!5249267))

(declare-fun m!5249269 () Bool)

(assert (=> b!4510147 m!5249269))

(declare-fun m!5249271 () Bool)

(assert (=> b!4510145 m!5249271))

(check-sat tp_is_empty!27839 (not b!4510144) (not b!4510152) (not b!4510160) (not b!4510154) (not b!4510138) (not b!4510147) (not b!4510148) (not b!4510149) (not b!4510159) (not b!4510145) (not b!4510150) (not b!4510141) (not b!4510140) (not b!4510151) (not b!4510153) (not b!4510157) (not b!4510143) (not b!4510156) (not b!4510158) (not b!4510142) (not b!4510137) tp_is_empty!27837 (not start!445808))
(check-sat)
(get-model)

(declare-fun d!1387178 () Bool)

(declare-fun res!1875891 () Bool)

(declare-fun e!2809691 () Bool)

(assert (=> d!1387178 (=> res!1875891 e!2809691)))

(assert (=> d!1387178 (= res!1875891 ((_ is Nil!50589) (toList!4287 lt!1688416)))))

(assert (=> d!1387178 (= (forall!10217 (toList!4287 lt!1688416) lambda!170395) e!2809691)))

(declare-fun b!4510175 () Bool)

(declare-fun e!2809692 () Bool)

(assert (=> b!4510175 (= e!2809691 e!2809692)))

(declare-fun res!1875892 () Bool)

(assert (=> b!4510175 (=> (not res!1875892) (not e!2809692))))

(declare-fun dynLambda!21137 (Int tuple2!50996) Bool)

(assert (=> b!4510175 (= res!1875892 (dynLambda!21137 lambda!170395 (h!56424 (toList!4287 lt!1688416))))))

(declare-fun b!4510176 () Bool)

(assert (=> b!4510176 (= e!2809692 (forall!10217 (t!357675 (toList!4287 lt!1688416)) lambda!170395))))

(assert (= (and d!1387178 (not res!1875891)) b!4510175))

(assert (= (and b!4510175 res!1875892) b!4510176))

(declare-fun b_lambda!153729 () Bool)

(assert (=> (not b_lambda!153729) (not b!4510175)))

(declare-fun m!5249291 () Bool)

(assert (=> b!4510175 m!5249291))

(declare-fun m!5249293 () Bool)

(assert (=> b!4510176 m!5249293))

(assert (=> b!4510137 d!1387178))

(declare-fun d!1387182 () Bool)

(declare-fun e!2809695 () Bool)

(assert (=> d!1387182 e!2809695))

(declare-fun res!1875897 () Bool)

(assert (=> d!1387182 (=> (not res!1875897) (not e!2809695))))

(declare-fun lt!1688436 () ListLongMap!2919)

(assert (=> d!1387182 (= res!1875897 (contains!13287 lt!1688436 (_1!28792 lt!1688422)))))

(declare-fun lt!1688434 () List!50713)

(assert (=> d!1387182 (= lt!1688436 (ListLongMap!2920 lt!1688434))))

(declare-fun lt!1688435 () Unit!93428)

(declare-fun lt!1688437 () Unit!93428)

(assert (=> d!1387182 (= lt!1688435 lt!1688437)))

(declare-datatypes ((Option!11076 0))(
  ( (None!11075) (Some!11075 (v!44623 List!50712)) )
))
(declare-fun getValueByKey!1056 (List!50713 (_ BitVec 64)) Option!11076)

(assert (=> d!1387182 (= (getValueByKey!1056 lt!1688434 (_1!28792 lt!1688422)) (Some!11075 (_2!28792 lt!1688422)))))

(declare-fun lemmaContainsTupThenGetReturnValue!652 (List!50713 (_ BitVec 64) List!50712) Unit!93428)

(assert (=> d!1387182 (= lt!1688437 (lemmaContainsTupThenGetReturnValue!652 lt!1688434 (_1!28792 lt!1688422) (_2!28792 lt!1688422)))))

(declare-fun insertStrictlySorted!390 (List!50713 (_ BitVec 64) List!50712) List!50713)

(assert (=> d!1387182 (= lt!1688434 (insertStrictlySorted!390 (toList!4287 lt!1688416) (_1!28792 lt!1688422) (_2!28792 lt!1688422)))))

(assert (=> d!1387182 (= (+!1500 lt!1688416 lt!1688422) lt!1688436)))

(declare-fun b!4510181 () Bool)

(declare-fun res!1875898 () Bool)

(assert (=> b!4510181 (=> (not res!1875898) (not e!2809695))))

(assert (=> b!4510181 (= res!1875898 (= (getValueByKey!1056 (toList!4287 lt!1688436) (_1!28792 lt!1688422)) (Some!11075 (_2!28792 lt!1688422))))))

(declare-fun b!4510182 () Bool)

(assert (=> b!4510182 (= e!2809695 (contains!13286 (toList!4287 lt!1688436) lt!1688422))))

(assert (= (and d!1387182 res!1875897) b!4510181))

(assert (= (and b!4510181 res!1875898) b!4510182))

(declare-fun m!5249295 () Bool)

(assert (=> d!1387182 m!5249295))

(declare-fun m!5249297 () Bool)

(assert (=> d!1387182 m!5249297))

(declare-fun m!5249299 () Bool)

(assert (=> d!1387182 m!5249299))

(declare-fun m!5249301 () Bool)

(assert (=> d!1387182 m!5249301))

(declare-fun m!5249303 () Bool)

(assert (=> b!4510181 m!5249303))

(declare-fun m!5249305 () Bool)

(assert (=> b!4510182 m!5249305))

(assert (=> b!4510148 d!1387182))

(declare-fun bs!846639 () Bool)

(declare-fun d!1387184 () Bool)

(assert (= bs!846639 (and d!1387184 start!445808)))

(declare-fun lambda!170404 () Int)

(assert (=> bs!846639 (= lambda!170404 lambda!170395)))

(declare-fun lt!1688440 () ListMap!3549)

(declare-fun invariantList!999 (List!50712) Bool)

(assert (=> d!1387184 (invariantList!999 (toList!4288 lt!1688440))))

(declare-fun e!2809698 () ListMap!3549)

(assert (=> d!1387184 (= lt!1688440 e!2809698)))

(declare-fun c!769341 () Bool)

(assert (=> d!1387184 (= c!769341 ((_ is Cons!50589) (toList!4287 lt!1688408)))))

(assert (=> d!1387184 (forall!10217 (toList!4287 lt!1688408) lambda!170404)))

(assert (=> d!1387184 (= (extractMap!1196 (toList!4287 lt!1688408)) lt!1688440)))

(declare-fun b!4510187 () Bool)

(assert (=> b!4510187 (= e!2809698 (addToMapMapFromBucket!667 (_2!28792 (h!56424 (toList!4287 lt!1688408))) (extractMap!1196 (t!357675 (toList!4287 lt!1688408)))))))

(declare-fun b!4510188 () Bool)

(assert (=> b!4510188 (= e!2809698 (ListMap!3550 Nil!50588))))

(assert (= (and d!1387184 c!769341) b!4510187))

(assert (= (and d!1387184 (not c!769341)) b!4510188))

(declare-fun m!5249307 () Bool)

(assert (=> d!1387184 m!5249307))

(declare-fun m!5249309 () Bool)

(assert (=> d!1387184 m!5249309))

(declare-fun m!5249311 () Bool)

(assert (=> b!4510187 m!5249311))

(assert (=> b!4510187 m!5249311))

(declare-fun m!5249313 () Bool)

(assert (=> b!4510187 m!5249313))

(assert (=> b!4510148 d!1387184))

(declare-fun d!1387186 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8302 (List!50712) (InoxSet tuple2!50994))

(assert (=> d!1387186 (= (eq!597 lt!1688413 (-!366 lt!1688412 key!3287)) (= (content!8302 (toList!4288 lt!1688413)) (content!8302 (toList!4288 (-!366 lt!1688412 key!3287)))))))

(declare-fun bs!846640 () Bool)

(assert (= bs!846640 d!1387186))

(declare-fun m!5249315 () Bool)

(assert (=> bs!846640 m!5249315))

(declare-fun m!5249317 () Bool)

(assert (=> bs!846640 m!5249317))

(assert (=> b!4510148 d!1387186))

(declare-fun d!1387188 () Bool)

(declare-fun e!2809701 () Bool)

(assert (=> d!1387188 e!2809701))

(declare-fun res!1875901 () Bool)

(assert (=> d!1387188 (=> (not res!1875901) (not e!2809701))))

(declare-fun lt!1688443 () ListMap!3549)

(assert (=> d!1387188 (= res!1875901 (not (contains!13285 lt!1688443 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!123 (List!50712 K!11990) List!50712)

(assert (=> d!1387188 (= lt!1688443 (ListMap!3550 (removePresrvNoDuplicatedKeys!123 (toList!4288 lt!1688412) key!3287)))))

(assert (=> d!1387188 (= (-!366 lt!1688412 key!3287) lt!1688443)))

(declare-fun b!4510191 () Bool)

(declare-datatypes ((List!50715 0))(
  ( (Nil!50591) (Cons!50591 (h!56428 K!11990) (t!357677 List!50715)) )
))
(declare-fun content!8304 (List!50715) (InoxSet K!11990))

(declare-fun keys!17556 (ListMap!3549) List!50715)

(assert (=> b!4510191 (= e!2809701 (= ((_ map and) (content!8304 (keys!17556 lt!1688412)) ((_ map not) (store ((as const (Array K!11990 Bool)) false) key!3287 true))) (content!8304 (keys!17556 lt!1688443))))))

(assert (= (and d!1387188 res!1875901) b!4510191))

(declare-fun m!5249319 () Bool)

(assert (=> d!1387188 m!5249319))

(declare-fun m!5249321 () Bool)

(assert (=> d!1387188 m!5249321))

(declare-fun m!5249323 () Bool)

(assert (=> b!4510191 m!5249323))

(assert (=> b!4510191 m!5249323))

(declare-fun m!5249325 () Bool)

(assert (=> b!4510191 m!5249325))

(declare-fun m!5249327 () Bool)

(assert (=> b!4510191 m!5249327))

(declare-fun m!5249329 () Bool)

(assert (=> b!4510191 m!5249329))

(assert (=> b!4510191 m!5249327))

(declare-fun m!5249331 () Bool)

(assert (=> b!4510191 m!5249331))

(assert (=> b!4510148 d!1387188))

(declare-fun d!1387190 () Bool)

(declare-fun head!9376 (List!50713) tuple2!50996)

(assert (=> d!1387190 (= (head!9374 lm!1477) (head!9376 (toList!4287 lm!1477)))))

(declare-fun bs!846641 () Bool)

(assert (= bs!846641 d!1387190))

(declare-fun m!5249333 () Bool)

(assert (=> bs!846641 m!5249333))

(assert (=> b!4510148 d!1387190))

(declare-fun d!1387192 () Bool)

(assert (=> d!1387192 (= (eq!597 lt!1688419 lt!1688405) (= (content!8302 (toList!4288 lt!1688419)) (content!8302 (toList!4288 lt!1688405))))))

(declare-fun bs!846642 () Bool)

(assert (= bs!846642 d!1387192))

(declare-fun m!5249335 () Bool)

(assert (=> bs!846642 m!5249335))

(declare-fun m!5249337 () Bool)

(assert (=> bs!846642 m!5249337))

(assert (=> b!4510148 d!1387192))

(declare-fun d!1387194 () Bool)

(declare-fun e!2809702 () Bool)

(assert (=> d!1387194 e!2809702))

(declare-fun res!1875902 () Bool)

(assert (=> d!1387194 (=> (not res!1875902) (not e!2809702))))

(declare-fun lt!1688446 () ListLongMap!2919)

(assert (=> d!1387194 (= res!1875902 (contains!13287 lt!1688446 (_1!28792 lt!1688404)))))

(declare-fun lt!1688444 () List!50713)

(assert (=> d!1387194 (= lt!1688446 (ListLongMap!2920 lt!1688444))))

(declare-fun lt!1688445 () Unit!93428)

(declare-fun lt!1688447 () Unit!93428)

(assert (=> d!1387194 (= lt!1688445 lt!1688447)))

(assert (=> d!1387194 (= (getValueByKey!1056 lt!1688444 (_1!28792 lt!1688404)) (Some!11075 (_2!28792 lt!1688404)))))

(assert (=> d!1387194 (= lt!1688447 (lemmaContainsTupThenGetReturnValue!652 lt!1688444 (_1!28792 lt!1688404) (_2!28792 lt!1688404)))))

(assert (=> d!1387194 (= lt!1688444 (insertStrictlySorted!390 (toList!4287 lt!1688416) (_1!28792 lt!1688404) (_2!28792 lt!1688404)))))

(assert (=> d!1387194 (= (+!1500 lt!1688416 lt!1688404) lt!1688446)))

(declare-fun b!4510192 () Bool)

(declare-fun res!1875903 () Bool)

(assert (=> b!4510192 (=> (not res!1875903) (not e!2809702))))

(assert (=> b!4510192 (= res!1875903 (= (getValueByKey!1056 (toList!4287 lt!1688446) (_1!28792 lt!1688404)) (Some!11075 (_2!28792 lt!1688404))))))

(declare-fun b!4510193 () Bool)

(assert (=> b!4510193 (= e!2809702 (contains!13286 (toList!4287 lt!1688446) lt!1688404))))

(assert (= (and d!1387194 res!1875902) b!4510192))

(assert (= (and b!4510192 res!1875903) b!4510193))

(declare-fun m!5249339 () Bool)

(assert (=> d!1387194 m!5249339))

(declare-fun m!5249341 () Bool)

(assert (=> d!1387194 m!5249341))

(declare-fun m!5249343 () Bool)

(assert (=> d!1387194 m!5249343))

(declare-fun m!5249345 () Bool)

(assert (=> d!1387194 m!5249345))

(declare-fun m!5249347 () Bool)

(assert (=> b!4510192 m!5249347))

(declare-fun m!5249349 () Bool)

(assert (=> b!4510193 m!5249349))

(assert (=> b!4510148 d!1387194))

(declare-fun bs!846643 () Bool)

(declare-fun d!1387196 () Bool)

(assert (= bs!846643 (and d!1387196 start!445808)))

(declare-fun lambda!170405 () Int)

(assert (=> bs!846643 (= lambda!170405 lambda!170395)))

(declare-fun bs!846644 () Bool)

(assert (= bs!846644 (and d!1387196 d!1387184)))

(assert (=> bs!846644 (= lambda!170405 lambda!170404)))

(declare-fun lt!1688448 () ListMap!3549)

(assert (=> d!1387196 (invariantList!999 (toList!4288 lt!1688448))))

(declare-fun e!2809703 () ListMap!3549)

(assert (=> d!1387196 (= lt!1688448 e!2809703)))

(declare-fun c!769342 () Bool)

(assert (=> d!1387196 (= c!769342 ((_ is Cons!50589) (toList!4287 (+!1500 lt!1688416 lt!1688422))))))

(assert (=> d!1387196 (forall!10217 (toList!4287 (+!1500 lt!1688416 lt!1688422)) lambda!170405)))

(assert (=> d!1387196 (= (extractMap!1196 (toList!4287 (+!1500 lt!1688416 lt!1688422))) lt!1688448)))

(declare-fun b!4510194 () Bool)

(assert (=> b!4510194 (= e!2809703 (addToMapMapFromBucket!667 (_2!28792 (h!56424 (toList!4287 (+!1500 lt!1688416 lt!1688422)))) (extractMap!1196 (t!357675 (toList!4287 (+!1500 lt!1688416 lt!1688422))))))))

(declare-fun b!4510195 () Bool)

(assert (=> b!4510195 (= e!2809703 (ListMap!3550 Nil!50588))))

(assert (= (and d!1387196 c!769342) b!4510194))

(assert (= (and d!1387196 (not c!769342)) b!4510195))

(declare-fun m!5249351 () Bool)

(assert (=> d!1387196 m!5249351))

(declare-fun m!5249353 () Bool)

(assert (=> d!1387196 m!5249353))

(declare-fun m!5249355 () Bool)

(assert (=> b!4510194 m!5249355))

(assert (=> b!4510194 m!5249355))

(declare-fun m!5249357 () Bool)

(assert (=> b!4510194 m!5249357))

(assert (=> b!4510148 d!1387196))

(declare-fun bs!846652 () Bool)

(declare-fun d!1387198 () Bool)

(assert (= bs!846652 (and d!1387198 start!445808)))

(declare-fun lambda!170440 () Int)

(assert (=> bs!846652 (= lambda!170440 lambda!170395)))

(declare-fun bs!846653 () Bool)

(assert (= bs!846653 (and d!1387198 d!1387184)))

(assert (=> bs!846653 (= lambda!170440 lambda!170404)))

(declare-fun bs!846654 () Bool)

(assert (= bs!846654 (and d!1387198 d!1387196)))

(assert (=> bs!846654 (= lambda!170440 lambda!170405)))

(assert (=> d!1387198 (eq!597 (extractMap!1196 (toList!4287 (+!1500 lt!1688416 (tuple2!50997 hash!344 newBucket!178)))) (-!366 (extractMap!1196 (toList!4287 lt!1688416)) key!3287))))

(declare-fun lt!1688517 () Unit!93428)

(declare-fun choose!29299 (ListLongMap!2919 (_ BitVec 64) List!50712 K!11990 Hashable!5535) Unit!93428)

(assert (=> d!1387198 (= lt!1688517 (choose!29299 lt!1688416 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1387198 (forall!10217 (toList!4287 lt!1688416) lambda!170440)))

(assert (=> d!1387198 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!125 lt!1688416 hash!344 newBucket!178 key!3287 hashF!1107) lt!1688517)))

(declare-fun bs!846655 () Bool)

(assert (= bs!846655 d!1387198))

(declare-fun m!5249407 () Bool)

(assert (=> bs!846655 m!5249407))

(declare-fun m!5249409 () Bool)

(assert (=> bs!846655 m!5249409))

(assert (=> bs!846655 m!5249241))

(declare-fun m!5249411 () Bool)

(assert (=> bs!846655 m!5249411))

(declare-fun m!5249413 () Bool)

(assert (=> bs!846655 m!5249413))

(assert (=> bs!846655 m!5249409))

(declare-fun m!5249415 () Bool)

(assert (=> bs!846655 m!5249415))

(declare-fun m!5249417 () Bool)

(assert (=> bs!846655 m!5249417))

(assert (=> bs!846655 m!5249241))

(assert (=> bs!846655 m!5249415))

(assert (=> b!4510148 d!1387198))

(declare-fun d!1387208 () Bool)

(assert (=> d!1387208 (= (eq!597 (extractMap!1196 (toList!4287 lt!1688409)) (addToMapMapFromBucket!667 (_2!28792 lt!1688422) lt!1688413)) (= (content!8302 (toList!4288 (extractMap!1196 (toList!4287 lt!1688409)))) (content!8302 (toList!4288 (addToMapMapFromBucket!667 (_2!28792 lt!1688422) lt!1688413)))))))

(declare-fun bs!846656 () Bool)

(assert (= bs!846656 d!1387208))

(declare-fun m!5249419 () Bool)

(assert (=> bs!846656 m!5249419))

(declare-fun m!5249421 () Bool)

(assert (=> bs!846656 m!5249421))

(assert (=> b!4510159 d!1387208))

(declare-fun bs!846657 () Bool)

(declare-fun d!1387210 () Bool)

(assert (= bs!846657 (and d!1387210 start!445808)))

(declare-fun lambda!170441 () Int)

(assert (=> bs!846657 (= lambda!170441 lambda!170395)))

(declare-fun bs!846658 () Bool)

(assert (= bs!846658 (and d!1387210 d!1387184)))

(assert (=> bs!846658 (= lambda!170441 lambda!170404)))

(declare-fun bs!846659 () Bool)

(assert (= bs!846659 (and d!1387210 d!1387196)))

(assert (=> bs!846659 (= lambda!170441 lambda!170405)))

(declare-fun bs!846660 () Bool)

(assert (= bs!846660 (and d!1387210 d!1387198)))

(assert (=> bs!846660 (= lambda!170441 lambda!170440)))

(declare-fun lt!1688518 () ListMap!3549)

(assert (=> d!1387210 (invariantList!999 (toList!4288 lt!1688518))))

(declare-fun e!2809725 () ListMap!3549)

(assert (=> d!1387210 (= lt!1688518 e!2809725)))

(declare-fun c!769346 () Bool)

(assert (=> d!1387210 (= c!769346 ((_ is Cons!50589) (toList!4287 lt!1688409)))))

(assert (=> d!1387210 (forall!10217 (toList!4287 lt!1688409) lambda!170441)))

(assert (=> d!1387210 (= (extractMap!1196 (toList!4287 lt!1688409)) lt!1688518)))

(declare-fun b!4510225 () Bool)

(assert (=> b!4510225 (= e!2809725 (addToMapMapFromBucket!667 (_2!28792 (h!56424 (toList!4287 lt!1688409))) (extractMap!1196 (t!357675 (toList!4287 lt!1688409)))))))

(declare-fun b!4510226 () Bool)

(assert (=> b!4510226 (= e!2809725 (ListMap!3550 Nil!50588))))

(assert (= (and d!1387210 c!769346) b!4510225))

(assert (= (and d!1387210 (not c!769346)) b!4510226))

(declare-fun m!5249423 () Bool)

(assert (=> d!1387210 m!5249423))

(declare-fun m!5249425 () Bool)

(assert (=> d!1387210 m!5249425))

(declare-fun m!5249427 () Bool)

(assert (=> b!4510225 m!5249427))

(assert (=> b!4510225 m!5249427))

(declare-fun m!5249429 () Bool)

(assert (=> b!4510225 m!5249429))

(assert (=> b!4510159 d!1387210))

(declare-fun b!4510374 () Bool)

(assert (=> b!4510374 true))

(declare-fun bs!846754 () Bool)

(declare-fun b!4510375 () Bool)

(assert (= bs!846754 (and b!4510375 b!4510374)))

(declare-fun lambda!170494 () Int)

(declare-fun lambda!170493 () Int)

(assert (=> bs!846754 (= lambda!170494 lambda!170493)))

(assert (=> b!4510375 true))

(declare-fun lambda!170495 () Int)

(declare-fun lt!1688684 () ListMap!3549)

(assert (=> bs!846754 (= (= lt!1688684 lt!1688413) (= lambda!170495 lambda!170493))))

(assert (=> b!4510375 (= (= lt!1688684 lt!1688413) (= lambda!170495 lambda!170494))))

(assert (=> b!4510375 true))

(declare-fun bs!846756 () Bool)

(declare-fun d!1387212 () Bool)

(assert (= bs!846756 (and d!1387212 b!4510374)))

(declare-fun lt!1688686 () ListMap!3549)

(declare-fun lambda!170496 () Int)

(assert (=> bs!846756 (= (= lt!1688686 lt!1688413) (= lambda!170496 lambda!170493))))

(declare-fun bs!846757 () Bool)

(assert (= bs!846757 (and d!1387212 b!4510375)))

(assert (=> bs!846757 (= (= lt!1688686 lt!1688413) (= lambda!170496 lambda!170494))))

(assert (=> bs!846757 (= (= lt!1688686 lt!1688684) (= lambda!170496 lambda!170495))))

(assert (=> d!1387212 true))

(declare-fun call!314086 () Bool)

(declare-fun bm!314079 () Bool)

(declare-fun lt!1688677 () ListMap!3549)

(declare-fun c!769379 () Bool)

(declare-fun forall!10219 (List!50712 Int) Bool)

(assert (=> bm!314079 (= call!314086 (forall!10219 (ite c!769379 (toList!4288 lt!1688413) (toList!4288 lt!1688677)) (ite c!769379 lambda!170493 lambda!170495)))))

(declare-fun e!2809827 () Bool)

(assert (=> d!1387212 e!2809827))

(declare-fun res!1876000 () Bool)

(assert (=> d!1387212 (=> (not res!1876000) (not e!2809827))))

(assert (=> d!1387212 (= res!1876000 (forall!10219 (_2!28792 lt!1688422) lambda!170496))))

(declare-fun e!2809828 () ListMap!3549)

(assert (=> d!1387212 (= lt!1688686 e!2809828)))

(assert (=> d!1387212 (= c!769379 ((_ is Nil!50588) (_2!28792 lt!1688422)))))

(assert (=> d!1387212 (noDuplicateKeys!1140 (_2!28792 lt!1688422))))

(assert (=> d!1387212 (= (addToMapMapFromBucket!667 (_2!28792 lt!1688422) lt!1688413) lt!1688686)))

(declare-fun bm!314080 () Bool)

(declare-fun call!314085 () Unit!93428)

(declare-fun lemmaContainsAllItsOwnKeys!320 (ListMap!3549) Unit!93428)

(assert (=> bm!314080 (= call!314085 (lemmaContainsAllItsOwnKeys!320 lt!1688413))))

(declare-fun b!4510372 () Bool)

(assert (=> b!4510372 (= e!2809827 (invariantList!999 (toList!4288 lt!1688686)))))

(declare-fun b!4510373 () Bool)

(declare-fun res!1876001 () Bool)

(assert (=> b!4510373 (=> (not res!1876001) (not e!2809827))))

(assert (=> b!4510373 (= res!1876001 (forall!10219 (toList!4288 lt!1688413) lambda!170496))))

(assert (=> b!4510374 (= e!2809828 lt!1688413)))

(declare-fun lt!1688682 () Unit!93428)

(assert (=> b!4510374 (= lt!1688682 call!314085)))

(declare-fun call!314084 () Bool)

(assert (=> b!4510374 call!314084))

(declare-fun lt!1688683 () Unit!93428)

(assert (=> b!4510374 (= lt!1688683 lt!1688682)))

(assert (=> b!4510374 call!314086))

(declare-fun lt!1688694 () Unit!93428)

(declare-fun Unit!93447 () Unit!93428)

(assert (=> b!4510374 (= lt!1688694 Unit!93447)))

(assert (=> b!4510375 (= e!2809828 lt!1688684)))

(declare-fun +!1502 (ListMap!3549 tuple2!50994) ListMap!3549)

(assert (=> b!4510375 (= lt!1688677 (+!1502 lt!1688413 (h!56423 (_2!28792 lt!1688422))))))

(assert (=> b!4510375 (= lt!1688684 (addToMapMapFromBucket!667 (t!357674 (_2!28792 lt!1688422)) (+!1502 lt!1688413 (h!56423 (_2!28792 lt!1688422)))))))

(declare-fun lt!1688680 () Unit!93428)

(assert (=> b!4510375 (= lt!1688680 call!314085)))

(assert (=> b!4510375 (forall!10219 (toList!4288 lt!1688413) lambda!170494)))

(declare-fun lt!1688687 () Unit!93428)

(assert (=> b!4510375 (= lt!1688687 lt!1688680)))

(assert (=> b!4510375 (forall!10219 (toList!4288 lt!1688677) lambda!170495)))

(declare-fun lt!1688674 () Unit!93428)

(declare-fun Unit!93448 () Unit!93428)

(assert (=> b!4510375 (= lt!1688674 Unit!93448)))

(assert (=> b!4510375 (forall!10219 (t!357674 (_2!28792 lt!1688422)) lambda!170495)))

(declare-fun lt!1688690 () Unit!93428)

(declare-fun Unit!93449 () Unit!93428)

(assert (=> b!4510375 (= lt!1688690 Unit!93449)))

(declare-fun lt!1688679 () Unit!93428)

(declare-fun Unit!93450 () Unit!93428)

(assert (=> b!4510375 (= lt!1688679 Unit!93450)))

(declare-fun lt!1688681 () Unit!93428)

(declare-fun forallContained!2471 (List!50712 Int tuple2!50994) Unit!93428)

(assert (=> b!4510375 (= lt!1688681 (forallContained!2471 (toList!4288 lt!1688677) lambda!170495 (h!56423 (_2!28792 lt!1688422))))))

(assert (=> b!4510375 (contains!13285 lt!1688677 (_1!28791 (h!56423 (_2!28792 lt!1688422))))))

(declare-fun lt!1688688 () Unit!93428)

(declare-fun Unit!93451 () Unit!93428)

(assert (=> b!4510375 (= lt!1688688 Unit!93451)))

(assert (=> b!4510375 (contains!13285 lt!1688684 (_1!28791 (h!56423 (_2!28792 lt!1688422))))))

(declare-fun lt!1688693 () Unit!93428)

(declare-fun Unit!93452 () Unit!93428)

(assert (=> b!4510375 (= lt!1688693 Unit!93452)))

(assert (=> b!4510375 (forall!10219 (_2!28792 lt!1688422) lambda!170495)))

(declare-fun lt!1688689 () Unit!93428)

(declare-fun Unit!93453 () Unit!93428)

(assert (=> b!4510375 (= lt!1688689 Unit!93453)))

(assert (=> b!4510375 call!314086))

(declare-fun lt!1688692 () Unit!93428)

(declare-fun Unit!93454 () Unit!93428)

(assert (=> b!4510375 (= lt!1688692 Unit!93454)))

(declare-fun lt!1688691 () Unit!93428)

(declare-fun Unit!93455 () Unit!93428)

(assert (=> b!4510375 (= lt!1688691 Unit!93455)))

(declare-fun lt!1688676 () Unit!93428)

(declare-fun addForallContainsKeyThenBeforeAdding!320 (ListMap!3549 ListMap!3549 K!11990 V!12236) Unit!93428)

(assert (=> b!4510375 (= lt!1688676 (addForallContainsKeyThenBeforeAdding!320 lt!1688413 lt!1688684 (_1!28791 (h!56423 (_2!28792 lt!1688422))) (_2!28791 (h!56423 (_2!28792 lt!1688422)))))))

(assert (=> b!4510375 call!314084))

(declare-fun lt!1688675 () Unit!93428)

(assert (=> b!4510375 (= lt!1688675 lt!1688676)))

(assert (=> b!4510375 (forall!10219 (toList!4288 lt!1688413) lambda!170495)))

(declare-fun lt!1688678 () Unit!93428)

(declare-fun Unit!93456 () Unit!93428)

(assert (=> b!4510375 (= lt!1688678 Unit!93456)))

(declare-fun res!1875999 () Bool)

(assert (=> b!4510375 (= res!1875999 (forall!10219 (_2!28792 lt!1688422) lambda!170495))))

(declare-fun e!2809829 () Bool)

(assert (=> b!4510375 (=> (not res!1875999) (not e!2809829))))

(assert (=> b!4510375 e!2809829))

(declare-fun lt!1688685 () Unit!93428)

(declare-fun Unit!93457 () Unit!93428)

(assert (=> b!4510375 (= lt!1688685 Unit!93457)))

(declare-fun bm!314081 () Bool)

(assert (=> bm!314081 (= call!314084 (forall!10219 (toList!4288 lt!1688413) (ite c!769379 lambda!170493 lambda!170495)))))

(declare-fun b!4510376 () Bool)

(assert (=> b!4510376 (= e!2809829 (forall!10219 (toList!4288 lt!1688413) lambda!170495))))

(assert (= (and d!1387212 c!769379) b!4510374))

(assert (= (and d!1387212 (not c!769379)) b!4510375))

(assert (= (and b!4510375 res!1875999) b!4510376))

(assert (= (or b!4510374 b!4510375) bm!314079))

(assert (= (or b!4510374 b!4510375) bm!314081))

(assert (= (or b!4510374 b!4510375) bm!314080))

(assert (= (and d!1387212 res!1876000) b!4510373))

(assert (= (and b!4510373 res!1876001) b!4510372))

(declare-fun m!5249701 () Bool)

(assert (=> b!4510375 m!5249701))

(declare-fun m!5249703 () Bool)

(assert (=> b!4510375 m!5249703))

(declare-fun m!5249705 () Bool)

(assert (=> b!4510375 m!5249705))

(declare-fun m!5249707 () Bool)

(assert (=> b!4510375 m!5249707))

(declare-fun m!5249709 () Bool)

(assert (=> b!4510375 m!5249709))

(declare-fun m!5249711 () Bool)

(assert (=> b!4510375 m!5249711))

(declare-fun m!5249713 () Bool)

(assert (=> b!4510375 m!5249713))

(assert (=> b!4510375 m!5249711))

(declare-fun m!5249715 () Bool)

(assert (=> b!4510375 m!5249715))

(declare-fun m!5249717 () Bool)

(assert (=> b!4510375 m!5249717))

(declare-fun m!5249719 () Bool)

(assert (=> b!4510375 m!5249719))

(declare-fun m!5249721 () Bool)

(assert (=> b!4510375 m!5249721))

(assert (=> b!4510375 m!5249707))

(declare-fun m!5249723 () Bool)

(assert (=> d!1387212 m!5249723))

(declare-fun m!5249725 () Bool)

(assert (=> d!1387212 m!5249725))

(declare-fun m!5249727 () Bool)

(assert (=> b!4510373 m!5249727))

(declare-fun m!5249729 () Bool)

(assert (=> bm!314081 m!5249729))

(declare-fun m!5249731 () Bool)

(assert (=> bm!314080 m!5249731))

(declare-fun m!5249733 () Bool)

(assert (=> bm!314079 m!5249733))

(assert (=> b!4510376 m!5249719))

(declare-fun m!5249735 () Bool)

(assert (=> b!4510372 m!5249735))

(assert (=> b!4510159 d!1387212))

(declare-fun d!1387294 () Bool)

(declare-fun res!1876008 () Bool)

(declare-fun e!2809841 () Bool)

(assert (=> d!1387294 (=> res!1876008 e!2809841)))

(declare-fun e!2809839 () Bool)

(assert (=> d!1387294 (= res!1876008 e!2809839)))

(declare-fun res!1876010 () Bool)

(assert (=> d!1387294 (=> (not res!1876010) (not e!2809839))))

(assert (=> d!1387294 (= res!1876010 ((_ is Cons!50589) (t!357675 (toList!4287 lm!1477))))))

(assert (=> d!1387294 (= (containsKeyBiggerList!120 (t!357675 (toList!4287 lm!1477)) key!3287) e!2809841)))

(declare-fun b!4510390 () Bool)

(assert (=> b!4510390 (= e!2809839 (containsKey!1724 (_2!28792 (h!56424 (t!357675 (toList!4287 lm!1477)))) key!3287))))

(declare-fun b!4510391 () Bool)

(declare-fun e!2809840 () Bool)

(assert (=> b!4510391 (= e!2809841 e!2809840)))

(declare-fun res!1876009 () Bool)

(assert (=> b!4510391 (=> (not res!1876009) (not e!2809840))))

(assert (=> b!4510391 (= res!1876009 ((_ is Cons!50589) (t!357675 (toList!4287 lm!1477))))))

(declare-fun b!4510392 () Bool)

(assert (=> b!4510392 (= e!2809840 (containsKeyBiggerList!120 (t!357675 (t!357675 (toList!4287 lm!1477))) key!3287))))

(assert (= (and d!1387294 res!1876010) b!4510390))

(assert (= (and d!1387294 (not res!1876008)) b!4510391))

(assert (= (and b!4510391 res!1876009) b!4510392))

(declare-fun m!5249737 () Bool)

(assert (=> b!4510390 m!5249737))

(declare-fun m!5249739 () Bool)

(assert (=> b!4510392 m!5249739))

(assert (=> b!4510138 d!1387294))

(declare-fun d!1387296 () Bool)

(declare-fun res!1876011 () Bool)

(declare-fun e!2809844 () Bool)

(assert (=> d!1387296 (=> res!1876011 e!2809844)))

(declare-fun e!2809842 () Bool)

(assert (=> d!1387296 (= res!1876011 e!2809842)))

(declare-fun res!1876013 () Bool)

(assert (=> d!1387296 (=> (not res!1876013) (not e!2809842))))

(assert (=> d!1387296 (= res!1876013 ((_ is Cons!50589) (toList!4287 lt!1688416)))))

(assert (=> d!1387296 (= (containsKeyBiggerList!120 (toList!4287 lt!1688416) key!3287) e!2809844)))

(declare-fun b!4510393 () Bool)

(assert (=> b!4510393 (= e!2809842 (containsKey!1724 (_2!28792 (h!56424 (toList!4287 lt!1688416))) key!3287))))

(declare-fun b!4510394 () Bool)

(declare-fun e!2809843 () Bool)

(assert (=> b!4510394 (= e!2809844 e!2809843)))

(declare-fun res!1876012 () Bool)

(assert (=> b!4510394 (=> (not res!1876012) (not e!2809843))))

(assert (=> b!4510394 (= res!1876012 ((_ is Cons!50589) (toList!4287 lt!1688416)))))

(declare-fun b!4510395 () Bool)

(assert (=> b!4510395 (= e!2809843 (containsKeyBiggerList!120 (t!357675 (toList!4287 lt!1688416)) key!3287))))

(assert (= (and d!1387296 res!1876013) b!4510393))

(assert (= (and d!1387296 (not res!1876011)) b!4510394))

(assert (= (and b!4510394 res!1876012) b!4510395))

(declare-fun m!5249741 () Bool)

(assert (=> b!4510393 m!5249741))

(declare-fun m!5249743 () Bool)

(assert (=> b!4510395 m!5249743))

(assert (=> b!4510138 d!1387296))

(declare-fun bs!846758 () Bool)

(declare-fun d!1387298 () Bool)

(assert (= bs!846758 (and d!1387298 start!445808)))

(declare-fun lambda!170499 () Int)

(assert (=> bs!846758 (= lambda!170499 lambda!170395)))

(declare-fun bs!846759 () Bool)

(assert (= bs!846759 (and d!1387298 d!1387196)))

(assert (=> bs!846759 (= lambda!170499 lambda!170405)))

(declare-fun bs!846760 () Bool)

(assert (= bs!846760 (and d!1387298 d!1387184)))

(assert (=> bs!846760 (= lambda!170499 lambda!170404)))

(declare-fun bs!846761 () Bool)

(assert (= bs!846761 (and d!1387298 d!1387198)))

(assert (=> bs!846761 (= lambda!170499 lambda!170440)))

(declare-fun bs!846762 () Bool)

(assert (= bs!846762 (and d!1387298 d!1387210)))

(assert (=> bs!846762 (= lambda!170499 lambda!170441)))

(assert (=> d!1387298 (containsKeyBiggerList!120 (toList!4287 lt!1688416) key!3287)))

(declare-fun lt!1688697 () Unit!93428)

(declare-fun choose!29302 (ListLongMap!2919 K!11990 Hashable!5535) Unit!93428)

(assert (=> d!1387298 (= lt!1688697 (choose!29302 lt!1688416 key!3287 hashF!1107))))

(assert (=> d!1387298 (forall!10217 (toList!4287 lt!1688416) lambda!170499)))

(assert (=> d!1387298 (= (lemmaInLongMapThenContainsKeyBiggerList!56 lt!1688416 key!3287 hashF!1107) lt!1688697)))

(declare-fun bs!846763 () Bool)

(assert (= bs!846763 d!1387298))

(assert (=> bs!846763 m!5249255))

(declare-fun m!5249745 () Bool)

(assert (=> bs!846763 m!5249745))

(declare-fun m!5249747 () Bool)

(assert (=> bs!846763 m!5249747))

(assert (=> b!4510138 d!1387298))

(declare-fun d!1387300 () Bool)

(declare-fun lt!1688700 () Bool)

(declare-fun content!8305 (List!50713) (InoxSet tuple2!50996))

(assert (=> d!1387300 (= lt!1688700 (select (content!8305 (t!357675 (toList!4287 lm!1477))) lt!1688407))))

(declare-fun e!2809849 () Bool)

(assert (=> d!1387300 (= lt!1688700 e!2809849)))

(declare-fun res!1876019 () Bool)

(assert (=> d!1387300 (=> (not res!1876019) (not e!2809849))))

(assert (=> d!1387300 (= res!1876019 ((_ is Cons!50589) (t!357675 (toList!4287 lm!1477))))))

(assert (=> d!1387300 (= (contains!13286 (t!357675 (toList!4287 lm!1477)) lt!1688407) lt!1688700)))

(declare-fun b!4510400 () Bool)

(declare-fun e!2809850 () Bool)

(assert (=> b!4510400 (= e!2809849 e!2809850)))

(declare-fun res!1876018 () Bool)

(assert (=> b!4510400 (=> res!1876018 e!2809850)))

(assert (=> b!4510400 (= res!1876018 (= (h!56424 (t!357675 (toList!4287 lm!1477))) lt!1688407))))

(declare-fun b!4510401 () Bool)

(assert (=> b!4510401 (= e!2809850 (contains!13286 (t!357675 (t!357675 (toList!4287 lm!1477))) lt!1688407))))

(assert (= (and d!1387300 res!1876019) b!4510400))

(assert (= (and b!4510400 (not res!1876018)) b!4510401))

(declare-fun m!5249749 () Bool)

(assert (=> d!1387300 m!5249749))

(declare-fun m!5249751 () Bool)

(assert (=> d!1387300 m!5249751))

(declare-fun m!5249753 () Bool)

(assert (=> b!4510401 m!5249753))

(assert (=> b!4510157 d!1387300))

(declare-fun bs!846764 () Bool)

(declare-fun d!1387302 () Bool)

(assert (= bs!846764 (and d!1387302 start!445808)))

(declare-fun lambda!170502 () Int)

(assert (=> bs!846764 (= lambda!170502 lambda!170395)))

(declare-fun bs!846765 () Bool)

(assert (= bs!846765 (and d!1387302 d!1387298)))

(assert (=> bs!846765 (= lambda!170502 lambda!170499)))

(declare-fun bs!846766 () Bool)

(assert (= bs!846766 (and d!1387302 d!1387196)))

(assert (=> bs!846766 (= lambda!170502 lambda!170405)))

(declare-fun bs!846767 () Bool)

(assert (= bs!846767 (and d!1387302 d!1387184)))

(assert (=> bs!846767 (= lambda!170502 lambda!170404)))

(declare-fun bs!846768 () Bool)

(assert (= bs!846768 (and d!1387302 d!1387198)))

(assert (=> bs!846768 (= lambda!170502 lambda!170440)))

(declare-fun bs!846769 () Bool)

(assert (= bs!846769 (and d!1387302 d!1387210)))

(assert (=> bs!846769 (= lambda!170502 lambda!170441)))

(assert (=> d!1387302 (not (contains!13285 (extractMap!1196 (toList!4287 lm!1477)) key!3287))))

(declare-fun lt!1688703 () Unit!93428)

(declare-fun choose!29303 (ListLongMap!2919 K!11990 Hashable!5535) Unit!93428)

(assert (=> d!1387302 (= lt!1688703 (choose!29303 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1387302 (forall!10217 (toList!4287 lm!1477) lambda!170502)))

(assert (=> d!1387302 (= (lemmaNotInItsHashBucketThenNotInMap!128 lm!1477 key!3287 hashF!1107) lt!1688703)))

(declare-fun bs!846770 () Bool)

(assert (= bs!846770 d!1387302))

(assert (=> bs!846770 m!5249191))

(assert (=> bs!846770 m!5249191))

(declare-fun m!5249755 () Bool)

(assert (=> bs!846770 m!5249755))

(declare-fun m!5249757 () Bool)

(assert (=> bs!846770 m!5249757))

(declare-fun m!5249759 () Bool)

(assert (=> bs!846770 m!5249759))

(assert (=> b!4510147 d!1387302))

(declare-fun d!1387304 () Bool)

(declare-fun res!1876024 () Bool)

(declare-fun e!2809855 () Bool)

(assert (=> d!1387304 (=> res!1876024 e!2809855)))

(assert (=> d!1387304 (= res!1876024 (not ((_ is Cons!50588) newBucket!178)))))

(assert (=> d!1387304 (= (noDuplicateKeys!1140 newBucket!178) e!2809855)))

(declare-fun b!4510406 () Bool)

(declare-fun e!2809856 () Bool)

(assert (=> b!4510406 (= e!2809855 e!2809856)))

(declare-fun res!1876025 () Bool)

(assert (=> b!4510406 (=> (not res!1876025) (not e!2809856))))

(assert (=> b!4510406 (= res!1876025 (not (containsKey!1724 (t!357674 newBucket!178) (_1!28791 (h!56423 newBucket!178)))))))

(declare-fun b!4510407 () Bool)

(assert (=> b!4510407 (= e!2809856 (noDuplicateKeys!1140 (t!357674 newBucket!178)))))

(assert (= (and d!1387304 (not res!1876024)) b!4510406))

(assert (= (and b!4510406 res!1876025) b!4510407))

(declare-fun m!5249761 () Bool)

(assert (=> b!4510406 m!5249761))

(declare-fun m!5249763 () Bool)

(assert (=> b!4510407 m!5249763))

(assert (=> b!4510158 d!1387304))

(declare-fun b!4510426 () Bool)

(declare-fun e!2809871 () Bool)

(declare-fun contains!13289 (List!50715 K!11990) Bool)

(assert (=> b!4510426 (= e!2809871 (not (contains!13289 (keys!17556 (extractMap!1196 (t!357675 (toList!4287 lm!1477)))) key!3287)))))

(declare-fun b!4510427 () Bool)

(declare-fun e!2809873 () Bool)

(assert (=> b!4510427 (= e!2809873 (contains!13289 (keys!17556 (extractMap!1196 (t!357675 (toList!4287 lm!1477)))) key!3287))))

(declare-fun b!4510428 () Bool)

(declare-fun e!2809869 () Bool)

(assert (=> b!4510428 (= e!2809869 e!2809873)))

(declare-fun res!1876034 () Bool)

(assert (=> b!4510428 (=> (not res!1876034) (not e!2809873))))

(declare-datatypes ((Option!11077 0))(
  ( (None!11076) (Some!11076 (v!44624 V!12236)) )
))
(declare-fun isDefined!8363 (Option!11077) Bool)

(declare-fun getValueByKey!1057 (List!50712 K!11990) Option!11077)

(assert (=> b!4510428 (= res!1876034 (isDefined!8363 (getValueByKey!1057 (toList!4288 (extractMap!1196 (t!357675 (toList!4287 lm!1477)))) key!3287)))))

(declare-fun bm!314084 () Bool)

(declare-fun call!314089 () Bool)

(declare-fun e!2809874 () List!50715)

(assert (=> bm!314084 (= call!314089 (contains!13289 e!2809874 key!3287))))

(declare-fun c!769386 () Bool)

(declare-fun c!769387 () Bool)

(assert (=> bm!314084 (= c!769386 c!769387)))

(declare-fun b!4510429 () Bool)

(declare-fun e!2809870 () Unit!93428)

(declare-fun e!2809872 () Unit!93428)

(assert (=> b!4510429 (= e!2809870 e!2809872)))

(declare-fun c!769388 () Bool)

(assert (=> b!4510429 (= c!769388 call!314089)))

(declare-fun b!4510430 () Bool)

(assert (=> b!4510430 false))

(declare-fun lt!1688720 () Unit!93428)

(declare-fun lt!1688722 () Unit!93428)

(assert (=> b!4510430 (= lt!1688720 lt!1688722)))

(declare-fun containsKey!1727 (List!50712 K!11990) Bool)

(assert (=> b!4510430 (containsKey!1727 (toList!4288 (extractMap!1196 (t!357675 (toList!4287 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!446 (List!50712 K!11990) Unit!93428)

(assert (=> b!4510430 (= lt!1688722 (lemmaInGetKeysListThenContainsKey!446 (toList!4288 (extractMap!1196 (t!357675 (toList!4287 lm!1477)))) key!3287))))

(declare-fun Unit!93462 () Unit!93428)

(assert (=> b!4510430 (= e!2809872 Unit!93462)))

(declare-fun d!1387306 () Bool)

(assert (=> d!1387306 e!2809869))

(declare-fun res!1876032 () Bool)

(assert (=> d!1387306 (=> res!1876032 e!2809869)))

(assert (=> d!1387306 (= res!1876032 e!2809871)))

(declare-fun res!1876033 () Bool)

(assert (=> d!1387306 (=> (not res!1876033) (not e!2809871))))

(declare-fun lt!1688721 () Bool)

(assert (=> d!1387306 (= res!1876033 (not lt!1688721))))

(declare-fun lt!1688723 () Bool)

(assert (=> d!1387306 (= lt!1688721 lt!1688723)))

(declare-fun lt!1688725 () Unit!93428)

(assert (=> d!1387306 (= lt!1688725 e!2809870)))

(assert (=> d!1387306 (= c!769387 lt!1688723)))

(assert (=> d!1387306 (= lt!1688723 (containsKey!1727 (toList!4288 (extractMap!1196 (t!357675 (toList!4287 lm!1477)))) key!3287))))

(assert (=> d!1387306 (= (contains!13285 (extractMap!1196 (t!357675 (toList!4287 lm!1477))) key!3287) lt!1688721)))

(declare-fun b!4510431 () Bool)

(declare-fun Unit!93463 () Unit!93428)

(assert (=> b!4510431 (= e!2809872 Unit!93463)))

(declare-fun b!4510432 () Bool)

(assert (=> b!4510432 (= e!2809874 (keys!17556 (extractMap!1196 (t!357675 (toList!4287 lm!1477)))))))

(declare-fun b!4510433 () Bool)

(declare-fun getKeysList!447 (List!50712) List!50715)

(assert (=> b!4510433 (= e!2809874 (getKeysList!447 (toList!4288 (extractMap!1196 (t!357675 (toList!4287 lm!1477))))))))

(declare-fun b!4510434 () Bool)

(declare-fun lt!1688724 () Unit!93428)

(assert (=> b!4510434 (= e!2809870 lt!1688724)))

(declare-fun lt!1688726 () Unit!93428)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!960 (List!50712 K!11990) Unit!93428)

(assert (=> b!4510434 (= lt!1688726 (lemmaContainsKeyImpliesGetValueByKeyDefined!960 (toList!4288 (extractMap!1196 (t!357675 (toList!4287 lm!1477)))) key!3287))))

(assert (=> b!4510434 (isDefined!8363 (getValueByKey!1057 (toList!4288 (extractMap!1196 (t!357675 (toList!4287 lm!1477)))) key!3287))))

(declare-fun lt!1688727 () Unit!93428)

(assert (=> b!4510434 (= lt!1688727 lt!1688726)))

(declare-fun lemmaInListThenGetKeysListContains!443 (List!50712 K!11990) Unit!93428)

(assert (=> b!4510434 (= lt!1688724 (lemmaInListThenGetKeysListContains!443 (toList!4288 (extractMap!1196 (t!357675 (toList!4287 lm!1477)))) key!3287))))

(assert (=> b!4510434 call!314089))

(assert (= (and d!1387306 c!769387) b!4510434))

(assert (= (and d!1387306 (not c!769387)) b!4510429))

(assert (= (and b!4510429 c!769388) b!4510430))

(assert (= (and b!4510429 (not c!769388)) b!4510431))

(assert (= (or b!4510434 b!4510429) bm!314084))

(assert (= (and bm!314084 c!769386) b!4510433))

(assert (= (and bm!314084 (not c!769386)) b!4510432))

(assert (= (and d!1387306 res!1876033) b!4510426))

(assert (= (and d!1387306 (not res!1876032)) b!4510428))

(assert (= (and b!4510428 res!1876034) b!4510427))

(declare-fun m!5249765 () Bool)

(assert (=> b!4510428 m!5249765))

(assert (=> b!4510428 m!5249765))

(declare-fun m!5249767 () Bool)

(assert (=> b!4510428 m!5249767))

(declare-fun m!5249769 () Bool)

(assert (=> b!4510433 m!5249769))

(assert (=> b!4510427 m!5249237))

(declare-fun m!5249771 () Bool)

(assert (=> b!4510427 m!5249771))

(assert (=> b!4510427 m!5249771))

(declare-fun m!5249773 () Bool)

(assert (=> b!4510427 m!5249773))

(declare-fun m!5249775 () Bool)

(assert (=> b!4510434 m!5249775))

(assert (=> b!4510434 m!5249765))

(assert (=> b!4510434 m!5249765))

(assert (=> b!4510434 m!5249767))

(declare-fun m!5249777 () Bool)

(assert (=> b!4510434 m!5249777))

(assert (=> b!4510426 m!5249237))

(assert (=> b!4510426 m!5249771))

(assert (=> b!4510426 m!5249771))

(assert (=> b!4510426 m!5249773))

(assert (=> b!4510432 m!5249237))

(assert (=> b!4510432 m!5249771))

(declare-fun m!5249779 () Bool)

(assert (=> d!1387306 m!5249779))

(declare-fun m!5249781 () Bool)

(assert (=> bm!314084 m!5249781))

(assert (=> b!4510430 m!5249779))

(declare-fun m!5249783 () Bool)

(assert (=> b!4510430 m!5249783))

(assert (=> b!4510140 d!1387306))

(declare-fun bs!846771 () Bool)

(declare-fun d!1387308 () Bool)

(assert (= bs!846771 (and d!1387308 start!445808)))

(declare-fun lambda!170503 () Int)

(assert (=> bs!846771 (= lambda!170503 lambda!170395)))

(declare-fun bs!846772 () Bool)

(assert (= bs!846772 (and d!1387308 d!1387298)))

(assert (=> bs!846772 (= lambda!170503 lambda!170499)))

(declare-fun bs!846773 () Bool)

(assert (= bs!846773 (and d!1387308 d!1387196)))

(assert (=> bs!846773 (= lambda!170503 lambda!170405)))

(declare-fun bs!846774 () Bool)

(assert (= bs!846774 (and d!1387308 d!1387184)))

(assert (=> bs!846774 (= lambda!170503 lambda!170404)))

(declare-fun bs!846775 () Bool)

(assert (= bs!846775 (and d!1387308 d!1387302)))

(assert (=> bs!846775 (= lambda!170503 lambda!170502)))

(declare-fun bs!846776 () Bool)

(assert (= bs!846776 (and d!1387308 d!1387198)))

(assert (=> bs!846776 (= lambda!170503 lambda!170440)))

(declare-fun bs!846777 () Bool)

(assert (= bs!846777 (and d!1387308 d!1387210)))

(assert (=> bs!846777 (= lambda!170503 lambda!170441)))

(declare-fun lt!1688728 () ListMap!3549)

(assert (=> d!1387308 (invariantList!999 (toList!4288 lt!1688728))))

(declare-fun e!2809875 () ListMap!3549)

(assert (=> d!1387308 (= lt!1688728 e!2809875)))

(declare-fun c!769389 () Bool)

(assert (=> d!1387308 (= c!769389 ((_ is Cons!50589) (t!357675 (toList!4287 lm!1477))))))

(assert (=> d!1387308 (forall!10217 (t!357675 (toList!4287 lm!1477)) lambda!170503)))

(assert (=> d!1387308 (= (extractMap!1196 (t!357675 (toList!4287 lm!1477))) lt!1688728)))

(declare-fun b!4510435 () Bool)

(assert (=> b!4510435 (= e!2809875 (addToMapMapFromBucket!667 (_2!28792 (h!56424 (t!357675 (toList!4287 lm!1477)))) (extractMap!1196 (t!357675 (t!357675 (toList!4287 lm!1477))))))))

(declare-fun b!4510436 () Bool)

(assert (=> b!4510436 (= e!2809875 (ListMap!3550 Nil!50588))))

(assert (= (and d!1387308 c!769389) b!4510435))

(assert (= (and d!1387308 (not c!769389)) b!4510436))

(declare-fun m!5249785 () Bool)

(assert (=> d!1387308 m!5249785))

(declare-fun m!5249787 () Bool)

(assert (=> d!1387308 m!5249787))

(declare-fun m!5249789 () Bool)

(assert (=> b!4510435 m!5249789))

(assert (=> b!4510435 m!5249789))

(declare-fun m!5249791 () Bool)

(assert (=> b!4510435 m!5249791))

(assert (=> b!4510140 d!1387308))

(declare-fun bs!846778 () Bool)

(declare-fun d!1387310 () Bool)

(assert (= bs!846778 (and d!1387310 start!445808)))

(declare-fun lambda!170504 () Int)

(assert (=> bs!846778 (= lambda!170504 lambda!170395)))

(declare-fun bs!846779 () Bool)

(assert (= bs!846779 (and d!1387310 d!1387298)))

(assert (=> bs!846779 (= lambda!170504 lambda!170499)))

(declare-fun bs!846780 () Bool)

(assert (= bs!846780 (and d!1387310 d!1387196)))

(assert (=> bs!846780 (= lambda!170504 lambda!170405)))

(declare-fun bs!846781 () Bool)

(assert (= bs!846781 (and d!1387310 d!1387184)))

(assert (=> bs!846781 (= lambda!170504 lambda!170404)))

(declare-fun bs!846782 () Bool)

(assert (= bs!846782 (and d!1387310 d!1387302)))

(assert (=> bs!846782 (= lambda!170504 lambda!170502)))

(declare-fun bs!846783 () Bool)

(assert (= bs!846783 (and d!1387310 d!1387308)))

(assert (=> bs!846783 (= lambda!170504 lambda!170503)))

(declare-fun bs!846784 () Bool)

(assert (= bs!846784 (and d!1387310 d!1387198)))

(assert (=> bs!846784 (= lambda!170504 lambda!170440)))

(declare-fun bs!846785 () Bool)

(assert (= bs!846785 (and d!1387310 d!1387210)))

(assert (=> bs!846785 (= lambda!170504 lambda!170441)))

(declare-fun lt!1688729 () ListMap!3549)

(assert (=> d!1387310 (invariantList!999 (toList!4288 lt!1688729))))

(declare-fun e!2809876 () ListMap!3549)

(assert (=> d!1387310 (= lt!1688729 e!2809876)))

(declare-fun c!769390 () Bool)

(assert (=> d!1387310 (= c!769390 ((_ is Cons!50589) (toList!4287 lt!1688416)))))

(assert (=> d!1387310 (forall!10217 (toList!4287 lt!1688416) lambda!170504)))

(assert (=> d!1387310 (= (extractMap!1196 (toList!4287 lt!1688416)) lt!1688729)))

(declare-fun b!4510437 () Bool)

(assert (=> b!4510437 (= e!2809876 (addToMapMapFromBucket!667 (_2!28792 (h!56424 (toList!4287 lt!1688416))) (extractMap!1196 (t!357675 (toList!4287 lt!1688416)))))))

(declare-fun b!4510438 () Bool)

(assert (=> b!4510438 (= e!2809876 (ListMap!3550 Nil!50588))))

(assert (= (and d!1387310 c!769390) b!4510437))

(assert (= (and d!1387310 (not c!769390)) b!4510438))

(declare-fun m!5249793 () Bool)

(assert (=> d!1387310 m!5249793))

(declare-fun m!5249795 () Bool)

(assert (=> d!1387310 m!5249795))

(declare-fun m!5249797 () Bool)

(assert (=> b!4510437 m!5249797))

(assert (=> b!4510437 m!5249797))

(declare-fun m!5249799 () Bool)

(assert (=> b!4510437 m!5249799))

(assert (=> b!4510140 d!1387310))

(declare-fun b!4510439 () Bool)

(declare-fun e!2809879 () Bool)

(assert (=> b!4510439 (= e!2809879 (not (contains!13289 (keys!17556 lt!1688412) key!3287)))))

(declare-fun b!4510440 () Bool)

(declare-fun e!2809881 () Bool)

(assert (=> b!4510440 (= e!2809881 (contains!13289 (keys!17556 lt!1688412) key!3287))))

(declare-fun b!4510441 () Bool)

(declare-fun e!2809877 () Bool)

(assert (=> b!4510441 (= e!2809877 e!2809881)))

(declare-fun res!1876037 () Bool)

(assert (=> b!4510441 (=> (not res!1876037) (not e!2809881))))

(assert (=> b!4510441 (= res!1876037 (isDefined!8363 (getValueByKey!1057 (toList!4288 lt!1688412) key!3287)))))

(declare-fun bm!314085 () Bool)

(declare-fun call!314090 () Bool)

(declare-fun e!2809882 () List!50715)

(assert (=> bm!314085 (= call!314090 (contains!13289 e!2809882 key!3287))))

(declare-fun c!769391 () Bool)

(declare-fun c!769392 () Bool)

(assert (=> bm!314085 (= c!769391 c!769392)))

(declare-fun b!4510442 () Bool)

(declare-fun e!2809878 () Unit!93428)

(declare-fun e!2809880 () Unit!93428)

(assert (=> b!4510442 (= e!2809878 e!2809880)))

(declare-fun c!769393 () Bool)

(assert (=> b!4510442 (= c!769393 call!314090)))

(declare-fun b!4510443 () Bool)

(assert (=> b!4510443 false))

(declare-fun lt!1688730 () Unit!93428)

(declare-fun lt!1688732 () Unit!93428)

(assert (=> b!4510443 (= lt!1688730 lt!1688732)))

(assert (=> b!4510443 (containsKey!1727 (toList!4288 lt!1688412) key!3287)))

(assert (=> b!4510443 (= lt!1688732 (lemmaInGetKeysListThenContainsKey!446 (toList!4288 lt!1688412) key!3287))))

(declare-fun Unit!93464 () Unit!93428)

(assert (=> b!4510443 (= e!2809880 Unit!93464)))

(declare-fun d!1387312 () Bool)

(assert (=> d!1387312 e!2809877))

(declare-fun res!1876035 () Bool)

(assert (=> d!1387312 (=> res!1876035 e!2809877)))

(assert (=> d!1387312 (= res!1876035 e!2809879)))

(declare-fun res!1876036 () Bool)

(assert (=> d!1387312 (=> (not res!1876036) (not e!2809879))))

(declare-fun lt!1688731 () Bool)

(assert (=> d!1387312 (= res!1876036 (not lt!1688731))))

(declare-fun lt!1688733 () Bool)

(assert (=> d!1387312 (= lt!1688731 lt!1688733)))

(declare-fun lt!1688735 () Unit!93428)

(assert (=> d!1387312 (= lt!1688735 e!2809878)))

(assert (=> d!1387312 (= c!769392 lt!1688733)))

(assert (=> d!1387312 (= lt!1688733 (containsKey!1727 (toList!4288 lt!1688412) key!3287))))

(assert (=> d!1387312 (= (contains!13285 lt!1688412 key!3287) lt!1688731)))

(declare-fun b!4510444 () Bool)

(declare-fun Unit!93465 () Unit!93428)

(assert (=> b!4510444 (= e!2809880 Unit!93465)))

(declare-fun b!4510445 () Bool)

(assert (=> b!4510445 (= e!2809882 (keys!17556 lt!1688412))))

(declare-fun b!4510446 () Bool)

(assert (=> b!4510446 (= e!2809882 (getKeysList!447 (toList!4288 lt!1688412)))))

(declare-fun b!4510447 () Bool)

(declare-fun lt!1688734 () Unit!93428)

(assert (=> b!4510447 (= e!2809878 lt!1688734)))

(declare-fun lt!1688736 () Unit!93428)

(assert (=> b!4510447 (= lt!1688736 (lemmaContainsKeyImpliesGetValueByKeyDefined!960 (toList!4288 lt!1688412) key!3287))))

(assert (=> b!4510447 (isDefined!8363 (getValueByKey!1057 (toList!4288 lt!1688412) key!3287))))

(declare-fun lt!1688737 () Unit!93428)

(assert (=> b!4510447 (= lt!1688737 lt!1688736)))

(assert (=> b!4510447 (= lt!1688734 (lemmaInListThenGetKeysListContains!443 (toList!4288 lt!1688412) key!3287))))

(assert (=> b!4510447 call!314090))

(assert (= (and d!1387312 c!769392) b!4510447))

(assert (= (and d!1387312 (not c!769392)) b!4510442))

(assert (= (and b!4510442 c!769393) b!4510443))

(assert (= (and b!4510442 (not c!769393)) b!4510444))

(assert (= (or b!4510447 b!4510442) bm!314085))

(assert (= (and bm!314085 c!769391) b!4510446))

(assert (= (and bm!314085 (not c!769391)) b!4510445))

(assert (= (and d!1387312 res!1876036) b!4510439))

(assert (= (and d!1387312 (not res!1876035)) b!4510441))

(assert (= (and b!4510441 res!1876037) b!4510440))

(declare-fun m!5249801 () Bool)

(assert (=> b!4510441 m!5249801))

(assert (=> b!4510441 m!5249801))

(declare-fun m!5249803 () Bool)

(assert (=> b!4510441 m!5249803))

(declare-fun m!5249805 () Bool)

(assert (=> b!4510446 m!5249805))

(assert (=> b!4510440 m!5249327))

(assert (=> b!4510440 m!5249327))

(declare-fun m!5249807 () Bool)

(assert (=> b!4510440 m!5249807))

(declare-fun m!5249809 () Bool)

(assert (=> b!4510447 m!5249809))

(assert (=> b!4510447 m!5249801))

(assert (=> b!4510447 m!5249801))

(assert (=> b!4510447 m!5249803))

(declare-fun m!5249811 () Bool)

(assert (=> b!4510447 m!5249811))

(assert (=> b!4510439 m!5249327))

(assert (=> b!4510439 m!5249327))

(assert (=> b!4510439 m!5249807))

(assert (=> b!4510445 m!5249327))

(declare-fun m!5249813 () Bool)

(assert (=> d!1387312 m!5249813))

(declare-fun m!5249815 () Bool)

(assert (=> bm!314085 m!5249815))

(assert (=> b!4510443 m!5249813))

(declare-fun m!5249817 () Bool)

(assert (=> b!4510443 m!5249817))

(assert (=> b!4510140 d!1387312))

(declare-fun bs!846786 () Bool)

(declare-fun d!1387314 () Bool)

(assert (= bs!846786 (and d!1387314 start!445808)))

(declare-fun lambda!170507 () Int)

(assert (=> bs!846786 (= lambda!170507 lambda!170395)))

(declare-fun bs!846787 () Bool)

(assert (= bs!846787 (and d!1387314 d!1387298)))

(assert (=> bs!846787 (= lambda!170507 lambda!170499)))

(declare-fun bs!846788 () Bool)

(assert (= bs!846788 (and d!1387314 d!1387196)))

(assert (=> bs!846788 (= lambda!170507 lambda!170405)))

(declare-fun bs!846789 () Bool)

(assert (= bs!846789 (and d!1387314 d!1387184)))

(assert (=> bs!846789 (= lambda!170507 lambda!170404)))

(declare-fun bs!846790 () Bool)

(assert (= bs!846790 (and d!1387314 d!1387302)))

(assert (=> bs!846790 (= lambda!170507 lambda!170502)))

(declare-fun bs!846791 () Bool)

(assert (= bs!846791 (and d!1387314 d!1387310)))

(assert (=> bs!846791 (= lambda!170507 lambda!170504)))

(declare-fun bs!846792 () Bool)

(assert (= bs!846792 (and d!1387314 d!1387308)))

(assert (=> bs!846792 (= lambda!170507 lambda!170503)))

(declare-fun bs!846793 () Bool)

(assert (= bs!846793 (and d!1387314 d!1387198)))

(assert (=> bs!846793 (= lambda!170507 lambda!170440)))

(declare-fun bs!846794 () Bool)

(assert (= bs!846794 (and d!1387314 d!1387210)))

(assert (=> bs!846794 (= lambda!170507 lambda!170441)))

(assert (=> d!1387314 (contains!13285 (extractMap!1196 (toList!4287 lt!1688416)) key!3287)))

(declare-fun lt!1688740 () Unit!93428)

(declare-fun choose!29306 (ListLongMap!2919 K!11990 Hashable!5535) Unit!93428)

(assert (=> d!1387314 (= lt!1688740 (choose!29306 lt!1688416 key!3287 hashF!1107))))

(assert (=> d!1387314 (forall!10217 (toList!4287 lt!1688416) lambda!170507)))

(assert (=> d!1387314 (= (lemmaListContainsThenExtractedMapContains!110 lt!1688416 key!3287 hashF!1107) lt!1688740)))

(declare-fun bs!846795 () Bool)

(assert (= bs!846795 d!1387314))

(assert (=> bs!846795 m!5249241))

(assert (=> bs!846795 m!5249241))

(declare-fun m!5249819 () Bool)

(assert (=> bs!846795 m!5249819))

(declare-fun m!5249821 () Bool)

(assert (=> bs!846795 m!5249821))

(declare-fun m!5249823 () Bool)

(assert (=> bs!846795 m!5249823))

(assert (=> b!4510140 d!1387314))

(declare-fun d!1387316 () Bool)

(assert (=> d!1387316 (= (eq!597 lt!1688405 lt!1688419) (= (content!8302 (toList!4288 lt!1688405)) (content!8302 (toList!4288 lt!1688419))))))

(declare-fun bs!846796 () Bool)

(assert (= bs!846796 d!1387316))

(assert (=> bs!846796 m!5249337))

(assert (=> bs!846796 m!5249335))

(assert (=> b!4510151 d!1387316))

(declare-fun d!1387318 () Bool)

(declare-fun e!2809883 () Bool)

(assert (=> d!1387318 e!2809883))

(declare-fun res!1876038 () Bool)

(assert (=> d!1387318 (=> (not res!1876038) (not e!2809883))))

(declare-fun lt!1688743 () ListLongMap!2919)

(assert (=> d!1387318 (= res!1876038 (contains!13287 lt!1688743 (_1!28792 lt!1688404)))))

(declare-fun lt!1688741 () List!50713)

(assert (=> d!1387318 (= lt!1688743 (ListLongMap!2920 lt!1688741))))

(declare-fun lt!1688742 () Unit!93428)

(declare-fun lt!1688744 () Unit!93428)

(assert (=> d!1387318 (= lt!1688742 lt!1688744)))

(assert (=> d!1387318 (= (getValueByKey!1056 lt!1688741 (_1!28792 lt!1688404)) (Some!11075 (_2!28792 lt!1688404)))))

(assert (=> d!1387318 (= lt!1688744 (lemmaContainsTupThenGetReturnValue!652 lt!1688741 (_1!28792 lt!1688404) (_2!28792 lt!1688404)))))

(assert (=> d!1387318 (= lt!1688741 (insertStrictlySorted!390 (toList!4287 lm!1477) (_1!28792 lt!1688404) (_2!28792 lt!1688404)))))

(assert (=> d!1387318 (= (+!1500 lm!1477 lt!1688404) lt!1688743)))

(declare-fun b!4510448 () Bool)

(declare-fun res!1876039 () Bool)

(assert (=> b!4510448 (=> (not res!1876039) (not e!2809883))))

(assert (=> b!4510448 (= res!1876039 (= (getValueByKey!1056 (toList!4287 lt!1688743) (_1!28792 lt!1688404)) (Some!11075 (_2!28792 lt!1688404))))))

(declare-fun b!4510449 () Bool)

(assert (=> b!4510449 (= e!2809883 (contains!13286 (toList!4287 lt!1688743) lt!1688404))))

(assert (= (and d!1387318 res!1876038) b!4510448))

(assert (= (and b!4510448 res!1876039) b!4510449))

(declare-fun m!5249825 () Bool)

(assert (=> d!1387318 m!5249825))

(declare-fun m!5249827 () Bool)

(assert (=> d!1387318 m!5249827))

(declare-fun m!5249829 () Bool)

(assert (=> d!1387318 m!5249829))

(declare-fun m!5249831 () Bool)

(assert (=> d!1387318 m!5249831))

(declare-fun m!5249833 () Bool)

(assert (=> b!4510448 m!5249833))

(declare-fun m!5249835 () Bool)

(assert (=> b!4510449 m!5249835))

(assert (=> b!4510149 d!1387318))

(declare-fun d!1387320 () Bool)

(declare-fun e!2809884 () Bool)

(assert (=> d!1387320 e!2809884))

(declare-fun res!1876040 () Bool)

(assert (=> d!1387320 (=> (not res!1876040) (not e!2809884))))

(declare-fun lt!1688747 () ListLongMap!2919)

(assert (=> d!1387320 (= res!1876040 (contains!13287 lt!1688747 (_1!28792 lt!1688422)))))

(declare-fun lt!1688745 () List!50713)

(assert (=> d!1387320 (= lt!1688747 (ListLongMap!2920 lt!1688745))))

(declare-fun lt!1688746 () Unit!93428)

(declare-fun lt!1688748 () Unit!93428)

(assert (=> d!1387320 (= lt!1688746 lt!1688748)))

(assert (=> d!1387320 (= (getValueByKey!1056 lt!1688745 (_1!28792 lt!1688422)) (Some!11075 (_2!28792 lt!1688422)))))

(assert (=> d!1387320 (= lt!1688748 (lemmaContainsTupThenGetReturnValue!652 lt!1688745 (_1!28792 lt!1688422) (_2!28792 lt!1688422)))))

(assert (=> d!1387320 (= lt!1688745 (insertStrictlySorted!390 (toList!4287 lt!1688408) (_1!28792 lt!1688422) (_2!28792 lt!1688422)))))

(assert (=> d!1387320 (= (+!1500 lt!1688408 lt!1688422) lt!1688747)))

(declare-fun b!4510450 () Bool)

(declare-fun res!1876041 () Bool)

(assert (=> b!4510450 (=> (not res!1876041) (not e!2809884))))

(assert (=> b!4510450 (= res!1876041 (= (getValueByKey!1056 (toList!4287 lt!1688747) (_1!28792 lt!1688422)) (Some!11075 (_2!28792 lt!1688422))))))

(declare-fun b!4510451 () Bool)

(assert (=> b!4510451 (= e!2809884 (contains!13286 (toList!4287 lt!1688747) lt!1688422))))

(assert (= (and d!1387320 res!1876040) b!4510450))

(assert (= (and b!4510450 res!1876041) b!4510451))

(declare-fun m!5249837 () Bool)

(assert (=> d!1387320 m!5249837))

(declare-fun m!5249839 () Bool)

(assert (=> d!1387320 m!5249839))

(declare-fun m!5249841 () Bool)

(assert (=> d!1387320 m!5249841))

(declare-fun m!5249843 () Bool)

(assert (=> d!1387320 m!5249843))

(declare-fun m!5249845 () Bool)

(assert (=> b!4510450 m!5249845))

(declare-fun m!5249847 () Bool)

(assert (=> b!4510451 m!5249847))

(assert (=> b!4510149 d!1387320))

(declare-fun b!4510452 () Bool)

(declare-fun e!2809887 () Bool)

(assert (=> b!4510452 (= e!2809887 (not (contains!13289 (keys!17556 lt!1688405) key!3287)))))

(declare-fun b!4510453 () Bool)

(declare-fun e!2809889 () Bool)

(assert (=> b!4510453 (= e!2809889 (contains!13289 (keys!17556 lt!1688405) key!3287))))

(declare-fun b!4510454 () Bool)

(declare-fun e!2809885 () Bool)

(assert (=> b!4510454 (= e!2809885 e!2809889)))

(declare-fun res!1876044 () Bool)

(assert (=> b!4510454 (=> (not res!1876044) (not e!2809889))))

(assert (=> b!4510454 (= res!1876044 (isDefined!8363 (getValueByKey!1057 (toList!4288 lt!1688405) key!3287)))))

(declare-fun bm!314086 () Bool)

(declare-fun call!314091 () Bool)

(declare-fun e!2809890 () List!50715)

(assert (=> bm!314086 (= call!314091 (contains!13289 e!2809890 key!3287))))

(declare-fun c!769394 () Bool)

(declare-fun c!769395 () Bool)

(assert (=> bm!314086 (= c!769394 c!769395)))

(declare-fun b!4510455 () Bool)

(declare-fun e!2809886 () Unit!93428)

(declare-fun e!2809888 () Unit!93428)

(assert (=> b!4510455 (= e!2809886 e!2809888)))

(declare-fun c!769396 () Bool)

(assert (=> b!4510455 (= c!769396 call!314091)))

(declare-fun b!4510456 () Bool)

(assert (=> b!4510456 false))

(declare-fun lt!1688749 () Unit!93428)

(declare-fun lt!1688751 () Unit!93428)

(assert (=> b!4510456 (= lt!1688749 lt!1688751)))

(assert (=> b!4510456 (containsKey!1727 (toList!4288 lt!1688405) key!3287)))

(assert (=> b!4510456 (= lt!1688751 (lemmaInGetKeysListThenContainsKey!446 (toList!4288 lt!1688405) key!3287))))

(declare-fun Unit!93466 () Unit!93428)

(assert (=> b!4510456 (= e!2809888 Unit!93466)))

(declare-fun d!1387322 () Bool)

(assert (=> d!1387322 e!2809885))

(declare-fun res!1876042 () Bool)

(assert (=> d!1387322 (=> res!1876042 e!2809885)))

(assert (=> d!1387322 (= res!1876042 e!2809887)))

(declare-fun res!1876043 () Bool)

(assert (=> d!1387322 (=> (not res!1876043) (not e!2809887))))

(declare-fun lt!1688750 () Bool)

(assert (=> d!1387322 (= res!1876043 (not lt!1688750))))

(declare-fun lt!1688752 () Bool)

(assert (=> d!1387322 (= lt!1688750 lt!1688752)))

(declare-fun lt!1688754 () Unit!93428)

(assert (=> d!1387322 (= lt!1688754 e!2809886)))

(assert (=> d!1387322 (= c!769395 lt!1688752)))

(assert (=> d!1387322 (= lt!1688752 (containsKey!1727 (toList!4288 lt!1688405) key!3287))))

(assert (=> d!1387322 (= (contains!13285 lt!1688405 key!3287) lt!1688750)))

(declare-fun b!4510457 () Bool)

(declare-fun Unit!93467 () Unit!93428)

(assert (=> b!4510457 (= e!2809888 Unit!93467)))

(declare-fun b!4510458 () Bool)

(assert (=> b!4510458 (= e!2809890 (keys!17556 lt!1688405))))

(declare-fun b!4510459 () Bool)

(assert (=> b!4510459 (= e!2809890 (getKeysList!447 (toList!4288 lt!1688405)))))

(declare-fun b!4510460 () Bool)

(declare-fun lt!1688753 () Unit!93428)

(assert (=> b!4510460 (= e!2809886 lt!1688753)))

(declare-fun lt!1688755 () Unit!93428)

(assert (=> b!4510460 (= lt!1688755 (lemmaContainsKeyImpliesGetValueByKeyDefined!960 (toList!4288 lt!1688405) key!3287))))

(assert (=> b!4510460 (isDefined!8363 (getValueByKey!1057 (toList!4288 lt!1688405) key!3287))))

(declare-fun lt!1688756 () Unit!93428)

(assert (=> b!4510460 (= lt!1688756 lt!1688755)))

(assert (=> b!4510460 (= lt!1688753 (lemmaInListThenGetKeysListContains!443 (toList!4288 lt!1688405) key!3287))))

(assert (=> b!4510460 call!314091))

(assert (= (and d!1387322 c!769395) b!4510460))

(assert (= (and d!1387322 (not c!769395)) b!4510455))

(assert (= (and b!4510455 c!769396) b!4510456))

(assert (= (and b!4510455 (not c!769396)) b!4510457))

(assert (= (or b!4510460 b!4510455) bm!314086))

(assert (= (and bm!314086 c!769394) b!4510459))

(assert (= (and bm!314086 (not c!769394)) b!4510458))

(assert (= (and d!1387322 res!1876043) b!4510452))

(assert (= (and d!1387322 (not res!1876042)) b!4510454))

(assert (= (and b!4510454 res!1876044) b!4510453))

(declare-fun m!5249849 () Bool)

(assert (=> b!4510454 m!5249849))

(assert (=> b!4510454 m!5249849))

(declare-fun m!5249851 () Bool)

(assert (=> b!4510454 m!5249851))

(declare-fun m!5249853 () Bool)

(assert (=> b!4510459 m!5249853))

(declare-fun m!5249855 () Bool)

(assert (=> b!4510453 m!5249855))

(assert (=> b!4510453 m!5249855))

(declare-fun m!5249857 () Bool)

(assert (=> b!4510453 m!5249857))

(declare-fun m!5249859 () Bool)

(assert (=> b!4510460 m!5249859))

(assert (=> b!4510460 m!5249849))

(assert (=> b!4510460 m!5249849))

(assert (=> b!4510460 m!5249851))

(declare-fun m!5249861 () Bool)

(assert (=> b!4510460 m!5249861))

(assert (=> b!4510452 m!5249855))

(assert (=> b!4510452 m!5249855))

(assert (=> b!4510452 m!5249857))

(assert (=> b!4510458 m!5249855))

(declare-fun m!5249863 () Bool)

(assert (=> d!1387322 m!5249863))

(declare-fun m!5249865 () Bool)

(assert (=> bm!314086 m!5249865))

(assert (=> b!4510456 m!5249863))

(declare-fun m!5249867 () Bool)

(assert (=> b!4510456 m!5249867))

(assert (=> b!4510160 d!1387322))

(declare-fun bs!846797 () Bool)

(declare-fun d!1387324 () Bool)

(assert (= bs!846797 (and d!1387324 start!445808)))

(declare-fun lambda!170508 () Int)

(assert (=> bs!846797 (= lambda!170508 lambda!170395)))

(declare-fun bs!846798 () Bool)

(assert (= bs!846798 (and d!1387324 d!1387298)))

(assert (=> bs!846798 (= lambda!170508 lambda!170499)))

(declare-fun bs!846799 () Bool)

(assert (= bs!846799 (and d!1387324 d!1387196)))

(assert (=> bs!846799 (= lambda!170508 lambda!170405)))

(declare-fun bs!846800 () Bool)

(assert (= bs!846800 (and d!1387324 d!1387302)))

(assert (=> bs!846800 (= lambda!170508 lambda!170502)))

(declare-fun bs!846801 () Bool)

(assert (= bs!846801 (and d!1387324 d!1387310)))

(assert (=> bs!846801 (= lambda!170508 lambda!170504)))

(declare-fun bs!846802 () Bool)

(assert (= bs!846802 (and d!1387324 d!1387308)))

(assert (=> bs!846802 (= lambda!170508 lambda!170503)))

(declare-fun bs!846803 () Bool)

(assert (= bs!846803 (and d!1387324 d!1387314)))

(assert (=> bs!846803 (= lambda!170508 lambda!170507)))

(declare-fun bs!846804 () Bool)

(assert (= bs!846804 (and d!1387324 d!1387184)))

(assert (=> bs!846804 (= lambda!170508 lambda!170404)))

(declare-fun bs!846805 () Bool)

(assert (= bs!846805 (and d!1387324 d!1387198)))

(assert (=> bs!846805 (= lambda!170508 lambda!170440)))

(declare-fun bs!846806 () Bool)

(assert (= bs!846806 (and d!1387324 d!1387210)))

(assert (=> bs!846806 (= lambda!170508 lambda!170441)))

(declare-fun lt!1688757 () ListMap!3549)

(assert (=> d!1387324 (invariantList!999 (toList!4288 lt!1688757))))

(declare-fun e!2809891 () ListMap!3549)

(assert (=> d!1387324 (= lt!1688757 e!2809891)))

(declare-fun c!769397 () Bool)

(assert (=> d!1387324 (= c!769397 ((_ is Cons!50589) (toList!4287 lm!1477)))))

(assert (=> d!1387324 (forall!10217 (toList!4287 lm!1477) lambda!170508)))

(assert (=> d!1387324 (= (extractMap!1196 (toList!4287 lm!1477)) lt!1688757)))

(declare-fun b!4510461 () Bool)

(assert (=> b!4510461 (= e!2809891 (addToMapMapFromBucket!667 (_2!28792 (h!56424 (toList!4287 lm!1477))) (extractMap!1196 (t!357675 (toList!4287 lm!1477)))))))

(declare-fun b!4510462 () Bool)

(assert (=> b!4510462 (= e!2809891 (ListMap!3550 Nil!50588))))

(assert (= (and d!1387324 c!769397) b!4510461))

(assert (= (and d!1387324 (not c!769397)) b!4510462))

(declare-fun m!5249869 () Bool)

(assert (=> d!1387324 m!5249869))

(declare-fun m!5249871 () Bool)

(assert (=> d!1387324 m!5249871))

(assert (=> b!4510461 m!5249237))

(assert (=> b!4510461 m!5249237))

(declare-fun m!5249873 () Bool)

(assert (=> b!4510461 m!5249873))

(assert (=> b!4510160 d!1387324))

(declare-fun d!1387326 () Bool)

(declare-fun get!16552 (Option!11076) List!50712)

(assert (=> d!1387326 (= (apply!11877 lt!1688416 hash!344) (get!16552 (getValueByKey!1056 (toList!4287 lt!1688416) hash!344)))))

(declare-fun bs!846807 () Bool)

(assert (= bs!846807 d!1387326))

(declare-fun m!5249875 () Bool)

(assert (=> bs!846807 m!5249875))

(assert (=> bs!846807 m!5249875))

(declare-fun m!5249877 () Bool)

(assert (=> bs!846807 m!5249877))

(assert (=> b!4510150 d!1387326))

(declare-fun d!1387328 () Bool)

(declare-fun res!1876045 () Bool)

(declare-fun e!2809892 () Bool)

(assert (=> d!1387328 (=> res!1876045 e!2809892)))

(assert (=> d!1387328 (= res!1876045 ((_ is Nil!50589) (toList!4287 lm!1477)))))

(assert (=> d!1387328 (= (forall!10217 (toList!4287 lm!1477) lambda!170395) e!2809892)))

(declare-fun b!4510463 () Bool)

(declare-fun e!2809893 () Bool)

(assert (=> b!4510463 (= e!2809892 e!2809893)))

(declare-fun res!1876046 () Bool)

(assert (=> b!4510463 (=> (not res!1876046) (not e!2809893))))

(assert (=> b!4510463 (= res!1876046 (dynLambda!21137 lambda!170395 (h!56424 (toList!4287 lm!1477))))))

(declare-fun b!4510464 () Bool)

(assert (=> b!4510464 (= e!2809893 (forall!10217 (t!357675 (toList!4287 lm!1477)) lambda!170395))))

(assert (= (and d!1387328 (not res!1876045)) b!4510463))

(assert (= (and b!4510463 res!1876046) b!4510464))

(declare-fun b_lambda!153743 () Bool)

(assert (=> (not b_lambda!153743) (not b!4510463)))

(declare-fun m!5249879 () Bool)

(assert (=> b!4510463 m!5249879))

(declare-fun m!5249881 () Bool)

(assert (=> b!4510464 m!5249881))

(assert (=> start!445808 d!1387328))

(declare-fun d!1387330 () Bool)

(declare-fun isStrictlySorted!413 (List!50713) Bool)

(assert (=> d!1387330 (= (inv!66174 lm!1477) (isStrictlySorted!413 (toList!4287 lm!1477)))))

(declare-fun bs!846808 () Bool)

(assert (= bs!846808 d!1387330))

(declare-fun m!5249883 () Bool)

(assert (=> bs!846808 m!5249883))

(assert (=> start!445808 d!1387330))

(declare-fun d!1387332 () Bool)

(declare-fun e!2809899 () Bool)

(assert (=> d!1387332 e!2809899))

(declare-fun res!1876049 () Bool)

(assert (=> d!1387332 (=> res!1876049 e!2809899)))

(declare-fun lt!1688768 () Bool)

(assert (=> d!1387332 (= res!1876049 (not lt!1688768))))

(declare-fun lt!1688767 () Bool)

(assert (=> d!1387332 (= lt!1688768 lt!1688767)))

(declare-fun lt!1688766 () Unit!93428)

(declare-fun e!2809898 () Unit!93428)

(assert (=> d!1387332 (= lt!1688766 e!2809898)))

(declare-fun c!769400 () Bool)

(assert (=> d!1387332 (= c!769400 lt!1688767)))

(declare-fun containsKey!1728 (List!50713 (_ BitVec 64)) Bool)

(assert (=> d!1387332 (= lt!1688767 (containsKey!1728 (toList!4287 lt!1688416) hash!344))))

(assert (=> d!1387332 (= (contains!13287 lt!1688416 hash!344) lt!1688768)))

(declare-fun b!4510471 () Bool)

(declare-fun lt!1688769 () Unit!93428)

(assert (=> b!4510471 (= e!2809898 lt!1688769)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!961 (List!50713 (_ BitVec 64)) Unit!93428)

(assert (=> b!4510471 (= lt!1688769 (lemmaContainsKeyImpliesGetValueByKeyDefined!961 (toList!4287 lt!1688416) hash!344))))

(declare-fun isDefined!8364 (Option!11076) Bool)

(assert (=> b!4510471 (isDefined!8364 (getValueByKey!1056 (toList!4287 lt!1688416) hash!344))))

(declare-fun b!4510472 () Bool)

(declare-fun Unit!93468 () Unit!93428)

(assert (=> b!4510472 (= e!2809898 Unit!93468)))

(declare-fun b!4510473 () Bool)

(assert (=> b!4510473 (= e!2809899 (isDefined!8364 (getValueByKey!1056 (toList!4287 lt!1688416) hash!344)))))

(assert (= (and d!1387332 c!769400) b!4510471))

(assert (= (and d!1387332 (not c!769400)) b!4510472))

(assert (= (and d!1387332 (not res!1876049)) b!4510473))

(declare-fun m!5249885 () Bool)

(assert (=> d!1387332 m!5249885))

(declare-fun m!5249887 () Bool)

(assert (=> b!4510471 m!5249887))

(assert (=> b!4510471 m!5249875))

(assert (=> b!4510471 m!5249875))

(declare-fun m!5249889 () Bool)

(assert (=> b!4510471 m!5249889))

(assert (=> b!4510473 m!5249875))

(assert (=> b!4510473 m!5249875))

(assert (=> b!4510473 m!5249889))

(assert (=> b!4510153 d!1387332))

(declare-fun d!1387334 () Bool)

(declare-fun tail!7698 (List!50713) List!50713)

(assert (=> d!1387334 (= (tail!7696 lm!1477) (ListLongMap!2920 (tail!7698 (toList!4287 lm!1477))))))

(declare-fun bs!846809 () Bool)

(assert (= bs!846809 d!1387334))

(declare-fun m!5249891 () Bool)

(assert (=> bs!846809 m!5249891))

(assert (=> b!4510153 d!1387334))

(declare-fun d!1387336 () Bool)

(declare-fun hash!2747 (Hashable!5535 K!11990) (_ BitVec 64))

(assert (=> d!1387336 (= (hash!2743 hashF!1107 key!3287) (hash!2747 hashF!1107 key!3287))))

(declare-fun bs!846810 () Bool)

(assert (= bs!846810 d!1387336))

(declare-fun m!5249893 () Bool)

(assert (=> bs!846810 m!5249893))

(assert (=> b!4510143 d!1387336))

(declare-fun d!1387338 () Bool)

(declare-fun res!1876054 () Bool)

(declare-fun e!2809904 () Bool)

(assert (=> d!1387338 (=> res!1876054 e!2809904)))

(assert (=> d!1387338 (= res!1876054 (and ((_ is Cons!50588) lt!1688406) (= (_1!28791 (h!56423 lt!1688406)) key!3287)))))

(assert (=> d!1387338 (= (containsKey!1724 lt!1688406 key!3287) e!2809904)))

(declare-fun b!4510478 () Bool)

(declare-fun e!2809905 () Bool)

(assert (=> b!4510478 (= e!2809904 e!2809905)))

(declare-fun res!1876055 () Bool)

(assert (=> b!4510478 (=> (not res!1876055) (not e!2809905))))

(assert (=> b!4510478 (= res!1876055 ((_ is Cons!50588) lt!1688406))))

(declare-fun b!4510479 () Bool)

(assert (=> b!4510479 (= e!2809905 (containsKey!1724 (t!357674 lt!1688406) key!3287))))

(assert (= (and d!1387338 (not res!1876054)) b!4510478))

(assert (= (and b!4510478 res!1876055) b!4510479))

(declare-fun m!5249895 () Bool)

(assert (=> b!4510479 m!5249895))

(assert (=> b!4510141 d!1387338))

(declare-fun d!1387340 () Bool)

(assert (=> d!1387340 (= (head!9374 lt!1688409) (head!9376 (toList!4287 lt!1688409)))))

(declare-fun bs!846811 () Bool)

(assert (= bs!846811 d!1387340))

(declare-fun m!5249897 () Bool)

(assert (=> bs!846811 m!5249897))

(assert (=> b!4510142 d!1387340))

(declare-fun bs!846812 () Bool)

(declare-fun d!1387342 () Bool)

(assert (= bs!846812 (and d!1387342 b!4510374)))

(declare-fun lambda!170511 () Int)

(assert (=> bs!846812 (not (= lambda!170511 lambda!170493))))

(declare-fun bs!846813 () Bool)

(assert (= bs!846813 (and d!1387342 b!4510375)))

(assert (=> bs!846813 (not (= lambda!170511 lambda!170494))))

(assert (=> bs!846813 (not (= lambda!170511 lambda!170495))))

(declare-fun bs!846814 () Bool)

(assert (= bs!846814 (and d!1387342 d!1387212)))

(assert (=> bs!846814 (not (= lambda!170511 lambda!170496))))

(assert (=> d!1387342 true))

(assert (=> d!1387342 true))

(assert (=> d!1387342 (= (allKeysSameHash!994 newBucket!178 hash!344 hashF!1107) (forall!10219 newBucket!178 lambda!170511))))

(declare-fun bs!846815 () Bool)

(assert (= bs!846815 d!1387342))

(declare-fun m!5249899 () Bool)

(assert (=> bs!846815 m!5249899))

(assert (=> b!4510145 d!1387342))

(declare-fun bs!846816 () Bool)

(declare-fun d!1387344 () Bool)

(assert (= bs!846816 (and d!1387344 start!445808)))

(declare-fun lambda!170514 () Int)

(assert (=> bs!846816 (not (= lambda!170514 lambda!170395))))

(declare-fun bs!846817 () Bool)

(assert (= bs!846817 (and d!1387344 d!1387298)))

(assert (=> bs!846817 (not (= lambda!170514 lambda!170499))))

(declare-fun bs!846818 () Bool)

(assert (= bs!846818 (and d!1387344 d!1387324)))

(assert (=> bs!846818 (not (= lambda!170514 lambda!170508))))

(declare-fun bs!846819 () Bool)

(assert (= bs!846819 (and d!1387344 d!1387196)))

(assert (=> bs!846819 (not (= lambda!170514 lambda!170405))))

(declare-fun bs!846820 () Bool)

(assert (= bs!846820 (and d!1387344 d!1387302)))

(assert (=> bs!846820 (not (= lambda!170514 lambda!170502))))

(declare-fun bs!846821 () Bool)

(assert (= bs!846821 (and d!1387344 d!1387310)))

(assert (=> bs!846821 (not (= lambda!170514 lambda!170504))))

(declare-fun bs!846822 () Bool)

(assert (= bs!846822 (and d!1387344 d!1387308)))

(assert (=> bs!846822 (not (= lambda!170514 lambda!170503))))

(declare-fun bs!846823 () Bool)

(assert (= bs!846823 (and d!1387344 d!1387314)))

(assert (=> bs!846823 (not (= lambda!170514 lambda!170507))))

(declare-fun bs!846824 () Bool)

(assert (= bs!846824 (and d!1387344 d!1387184)))

(assert (=> bs!846824 (not (= lambda!170514 lambda!170404))))

(declare-fun bs!846825 () Bool)

(assert (= bs!846825 (and d!1387344 d!1387198)))

(assert (=> bs!846825 (not (= lambda!170514 lambda!170440))))

(declare-fun bs!846826 () Bool)

(assert (= bs!846826 (and d!1387344 d!1387210)))

(assert (=> bs!846826 (not (= lambda!170514 lambda!170441))))

(assert (=> d!1387344 true))

(assert (=> d!1387344 (= (allKeysSameHashInMap!1247 lm!1477 hashF!1107) (forall!10217 (toList!4287 lm!1477) lambda!170514))))

(declare-fun bs!846827 () Bool)

(assert (= bs!846827 d!1387344))

(declare-fun m!5249901 () Bool)

(assert (=> bs!846827 m!5249901))

(assert (=> b!4510156 d!1387344))

(declare-fun bs!846828 () Bool)

(declare-fun d!1387346 () Bool)

(assert (= bs!846828 (and d!1387346 start!445808)))

(declare-fun lambda!170517 () Int)

(assert (=> bs!846828 (= lambda!170517 lambda!170395)))

(declare-fun bs!846829 () Bool)

(assert (= bs!846829 (and d!1387346 d!1387298)))

(assert (=> bs!846829 (= lambda!170517 lambda!170499)))

(declare-fun bs!846830 () Bool)

(assert (= bs!846830 (and d!1387346 d!1387324)))

(assert (=> bs!846830 (= lambda!170517 lambda!170508)))

(declare-fun bs!846831 () Bool)

(assert (= bs!846831 (and d!1387346 d!1387344)))

(assert (=> bs!846831 (not (= lambda!170517 lambda!170514))))

(declare-fun bs!846832 () Bool)

(assert (= bs!846832 (and d!1387346 d!1387196)))

(assert (=> bs!846832 (= lambda!170517 lambda!170405)))

(declare-fun bs!846833 () Bool)

(assert (= bs!846833 (and d!1387346 d!1387302)))

(assert (=> bs!846833 (= lambda!170517 lambda!170502)))

(declare-fun bs!846834 () Bool)

(assert (= bs!846834 (and d!1387346 d!1387310)))

(assert (=> bs!846834 (= lambda!170517 lambda!170504)))

(declare-fun bs!846835 () Bool)

(assert (= bs!846835 (and d!1387346 d!1387308)))

(assert (=> bs!846835 (= lambda!170517 lambda!170503)))

(declare-fun bs!846836 () Bool)

(assert (= bs!846836 (and d!1387346 d!1387314)))

(assert (=> bs!846836 (= lambda!170517 lambda!170507)))

(declare-fun bs!846837 () Bool)

(assert (= bs!846837 (and d!1387346 d!1387184)))

(assert (=> bs!846837 (= lambda!170517 lambda!170404)))

(declare-fun bs!846838 () Bool)

(assert (= bs!846838 (and d!1387346 d!1387198)))

(assert (=> bs!846838 (= lambda!170517 lambda!170440)))

(declare-fun bs!846839 () Bool)

(assert (= bs!846839 (and d!1387346 d!1387210)))

(assert (=> bs!846839 (= lambda!170517 lambda!170441)))

(assert (=> d!1387346 (contains!13287 lm!1477 (hash!2743 hashF!1107 key!3287))))

(declare-fun lt!1688772 () Unit!93428)

(declare-fun choose!29307 (ListLongMap!2919 K!11990 Hashable!5535) Unit!93428)

(assert (=> d!1387346 (= lt!1688772 (choose!29307 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1387346 (forall!10217 (toList!4287 lm!1477) lambda!170517)))

(assert (=> d!1387346 (= (lemmaInGenMapThenLongMapContainsHash!214 lm!1477 key!3287 hashF!1107) lt!1688772)))

(declare-fun bs!846840 () Bool)

(assert (= bs!846840 d!1387346))

(assert (=> bs!846840 m!5249211))

(assert (=> bs!846840 m!5249211))

(declare-fun m!5249903 () Bool)

(assert (=> bs!846840 m!5249903))

(declare-fun m!5249905 () Bool)

(assert (=> bs!846840 m!5249905))

(declare-fun m!5249907 () Bool)

(assert (=> bs!846840 m!5249907))

(assert (=> b!4510144 d!1387346))

(declare-fun d!1387348 () Bool)

(assert (=> d!1387348 (dynLambda!21137 lambda!170395 lt!1688407)))

(declare-fun lt!1688775 () Unit!93428)

(declare-fun choose!29308 (List!50713 Int tuple2!50996) Unit!93428)

(assert (=> d!1387348 (= lt!1688775 (choose!29308 (toList!4287 lm!1477) lambda!170395 lt!1688407))))

(declare-fun e!2809908 () Bool)

(assert (=> d!1387348 e!2809908))

(declare-fun res!1876058 () Bool)

(assert (=> d!1387348 (=> (not res!1876058) (not e!2809908))))

(assert (=> d!1387348 (= res!1876058 (forall!10217 (toList!4287 lm!1477) lambda!170395))))

(assert (=> d!1387348 (= (forallContained!2469 (toList!4287 lm!1477) lambda!170395 lt!1688407) lt!1688775)))

(declare-fun b!4510488 () Bool)

(assert (=> b!4510488 (= e!2809908 (contains!13286 (toList!4287 lm!1477) lt!1688407))))

(assert (= (and d!1387348 res!1876058) b!4510488))

(declare-fun b_lambda!153745 () Bool)

(assert (=> (not b_lambda!153745) (not d!1387348)))

(declare-fun m!5249909 () Bool)

(assert (=> d!1387348 m!5249909))

(declare-fun m!5249911 () Bool)

(assert (=> d!1387348 m!5249911))

(assert (=> d!1387348 m!5249247))

(assert (=> b!4510488 m!5249205))

(assert (=> b!4510144 d!1387348))

(declare-fun d!1387350 () Bool)

(declare-fun lt!1688776 () Bool)

(assert (=> d!1387350 (= lt!1688776 (select (content!8305 (toList!4287 lm!1477)) lt!1688407))))

(declare-fun e!2809909 () Bool)

(assert (=> d!1387350 (= lt!1688776 e!2809909)))

(declare-fun res!1876060 () Bool)

(assert (=> d!1387350 (=> (not res!1876060) (not e!2809909))))

(assert (=> d!1387350 (= res!1876060 ((_ is Cons!50589) (toList!4287 lm!1477)))))

(assert (=> d!1387350 (= (contains!13286 (toList!4287 lm!1477) lt!1688407) lt!1688776)))

(declare-fun b!4510489 () Bool)

(declare-fun e!2809910 () Bool)

(assert (=> b!4510489 (= e!2809909 e!2809910)))

(declare-fun res!1876059 () Bool)

(assert (=> b!4510489 (=> res!1876059 e!2809910)))

(assert (=> b!4510489 (= res!1876059 (= (h!56424 (toList!4287 lm!1477)) lt!1688407))))

(declare-fun b!4510490 () Bool)

(assert (=> b!4510490 (= e!2809910 (contains!13286 (t!357675 (toList!4287 lm!1477)) lt!1688407))))

(assert (= (and d!1387350 res!1876060) b!4510489))

(assert (= (and b!4510489 (not res!1876059)) b!4510490))

(declare-fun m!5249913 () Bool)

(assert (=> d!1387350 m!5249913))

(declare-fun m!5249915 () Bool)

(assert (=> d!1387350 m!5249915))

(assert (=> b!4510490 m!5249231))

(assert (=> b!4510144 d!1387350))

(declare-fun b!4510501 () Bool)

(declare-fun e!2809916 () List!50712)

(assert (=> b!4510501 (= e!2809916 (Cons!50588 (h!56423 lt!1688406) (removePairForKey!767 (t!357674 lt!1688406) key!3287)))))

(declare-fun b!4510500 () Bool)

(declare-fun e!2809915 () List!50712)

(assert (=> b!4510500 (= e!2809915 e!2809916)))

(declare-fun c!769405 () Bool)

(assert (=> b!4510500 (= c!769405 ((_ is Cons!50588) lt!1688406))))

(declare-fun d!1387352 () Bool)

(declare-fun lt!1688779 () List!50712)

(assert (=> d!1387352 (not (containsKey!1724 lt!1688779 key!3287))))

(assert (=> d!1387352 (= lt!1688779 e!2809915)))

(declare-fun c!769406 () Bool)

(assert (=> d!1387352 (= c!769406 (and ((_ is Cons!50588) lt!1688406) (= (_1!28791 (h!56423 lt!1688406)) key!3287)))))

(assert (=> d!1387352 (noDuplicateKeys!1140 lt!1688406)))

(assert (=> d!1387352 (= (removePairForKey!767 lt!1688406 key!3287) lt!1688779)))

(declare-fun b!4510502 () Bool)

(assert (=> b!4510502 (= e!2809916 Nil!50588)))

(declare-fun b!4510499 () Bool)

(assert (=> b!4510499 (= e!2809915 (t!357674 lt!1688406))))

(assert (= (and d!1387352 c!769406) b!4510499))

(assert (= (and d!1387352 (not c!769406)) b!4510500))

(assert (= (and b!4510500 c!769405) b!4510501))

(assert (= (and b!4510500 (not c!769405)) b!4510502))

(declare-fun m!5249917 () Bool)

(assert (=> b!4510501 m!5249917))

(declare-fun m!5249919 () Bool)

(assert (=> d!1387352 m!5249919))

(declare-fun m!5249921 () Bool)

(assert (=> d!1387352 m!5249921))

(assert (=> b!4510144 d!1387352))

(declare-fun d!1387354 () Bool)

(assert (=> d!1387354 (= (apply!11877 lm!1477 hash!344) (get!16552 (getValueByKey!1056 (toList!4287 lm!1477) hash!344)))))

(declare-fun bs!846841 () Bool)

(assert (= bs!846841 d!1387354))

(declare-fun m!5249923 () Bool)

(assert (=> bs!846841 m!5249923))

(assert (=> bs!846841 m!5249923))

(declare-fun m!5249925 () Bool)

(assert (=> bs!846841 m!5249925))

(assert (=> b!4510144 d!1387354))

(declare-fun d!1387356 () Bool)

(declare-fun e!2809918 () Bool)

(assert (=> d!1387356 e!2809918))

(declare-fun res!1876061 () Bool)

(assert (=> d!1387356 (=> res!1876061 e!2809918)))

(declare-fun lt!1688782 () Bool)

(assert (=> d!1387356 (= res!1876061 (not lt!1688782))))

(declare-fun lt!1688781 () Bool)

(assert (=> d!1387356 (= lt!1688782 lt!1688781)))

(declare-fun lt!1688780 () Unit!93428)

(declare-fun e!2809917 () Unit!93428)

(assert (=> d!1387356 (= lt!1688780 e!2809917)))

(declare-fun c!769407 () Bool)

(assert (=> d!1387356 (= c!769407 lt!1688781)))

(assert (=> d!1387356 (= lt!1688781 (containsKey!1728 (toList!4287 lm!1477) lt!1688403))))

(assert (=> d!1387356 (= (contains!13287 lm!1477 lt!1688403) lt!1688782)))

(declare-fun b!4510503 () Bool)

(declare-fun lt!1688783 () Unit!93428)

(assert (=> b!4510503 (= e!2809917 lt!1688783)))

(assert (=> b!4510503 (= lt!1688783 (lemmaContainsKeyImpliesGetValueByKeyDefined!961 (toList!4287 lm!1477) lt!1688403))))

(assert (=> b!4510503 (isDefined!8364 (getValueByKey!1056 (toList!4287 lm!1477) lt!1688403))))

(declare-fun b!4510504 () Bool)

(declare-fun Unit!93469 () Unit!93428)

(assert (=> b!4510504 (= e!2809917 Unit!93469)))

(declare-fun b!4510505 () Bool)

(assert (=> b!4510505 (= e!2809918 (isDefined!8364 (getValueByKey!1056 (toList!4287 lm!1477) lt!1688403)))))

(assert (= (and d!1387356 c!769407) b!4510503))

(assert (= (and d!1387356 (not c!769407)) b!4510504))

(assert (= (and d!1387356 (not res!1876061)) b!4510505))

(declare-fun m!5249927 () Bool)

(assert (=> d!1387356 m!5249927))

(declare-fun m!5249929 () Bool)

(assert (=> b!4510503 m!5249929))

(declare-fun m!5249931 () Bool)

(assert (=> b!4510503 m!5249931))

(assert (=> b!4510503 m!5249931))

(declare-fun m!5249933 () Bool)

(assert (=> b!4510503 m!5249933))

(assert (=> b!4510505 m!5249931))

(assert (=> b!4510505 m!5249931))

(assert (=> b!4510505 m!5249933))

(assert (=> b!4510144 d!1387356))

(declare-fun d!1387358 () Bool)

(assert (=> d!1387358 (contains!13286 (toList!4287 lm!1477) (tuple2!50997 hash!344 lt!1688406))))

(declare-fun lt!1688786 () Unit!93428)

(declare-fun choose!29309 (List!50713 (_ BitVec 64) List!50712) Unit!93428)

(assert (=> d!1387358 (= lt!1688786 (choose!29309 (toList!4287 lm!1477) hash!344 lt!1688406))))

(declare-fun e!2809921 () Bool)

(assert (=> d!1387358 e!2809921))

(declare-fun res!1876064 () Bool)

(assert (=> d!1387358 (=> (not res!1876064) (not e!2809921))))

(assert (=> d!1387358 (= res!1876064 (isStrictlySorted!413 (toList!4287 lm!1477)))))

(assert (=> d!1387358 (= (lemmaGetValueByKeyImpliesContainsTuple!652 (toList!4287 lm!1477) hash!344 lt!1688406) lt!1688786)))

(declare-fun b!4510508 () Bool)

(assert (=> b!4510508 (= e!2809921 (= (getValueByKey!1056 (toList!4287 lm!1477) hash!344) (Some!11075 lt!1688406)))))

(assert (= (and d!1387358 res!1876064) b!4510508))

(declare-fun m!5249935 () Bool)

(assert (=> d!1387358 m!5249935))

(declare-fun m!5249937 () Bool)

(assert (=> d!1387358 m!5249937))

(assert (=> d!1387358 m!5249883))

(assert (=> b!4510508 m!5249923))

(assert (=> b!4510144 d!1387358))

(declare-fun e!2809924 () Bool)

(declare-fun tp!1337779 () Bool)

(declare-fun b!4510513 () Bool)

(assert (=> b!4510513 (= e!2809924 (and tp_is_empty!27837 tp_is_empty!27839 tp!1337779))))

(assert (=> b!4510154 (= tp!1337767 e!2809924)))

(assert (= (and b!4510154 ((_ is Cons!50588) (t!357674 newBucket!178))) b!4510513))

(declare-fun b!4510518 () Bool)

(declare-fun e!2809927 () Bool)

(declare-fun tp!1337784 () Bool)

(declare-fun tp!1337785 () Bool)

(assert (=> b!4510518 (= e!2809927 (and tp!1337784 tp!1337785))))

(assert (=> b!4510152 (= tp!1337766 e!2809927)))

(assert (= (and b!4510152 ((_ is Cons!50589) (toList!4287 lm!1477))) b!4510518))

(declare-fun b_lambda!153747 () Bool)

(assert (= b_lambda!153743 (or start!445808 b_lambda!153747)))

(declare-fun bs!846842 () Bool)

(declare-fun d!1387360 () Bool)

(assert (= bs!846842 (and d!1387360 start!445808)))

(assert (=> bs!846842 (= (dynLambda!21137 lambda!170395 (h!56424 (toList!4287 lm!1477))) (noDuplicateKeys!1140 (_2!28792 (h!56424 (toList!4287 lm!1477)))))))

(declare-fun m!5249939 () Bool)

(assert (=> bs!846842 m!5249939))

(assert (=> b!4510463 d!1387360))

(declare-fun b_lambda!153749 () Bool)

(assert (= b_lambda!153745 (or start!445808 b_lambda!153749)))

(declare-fun bs!846843 () Bool)

(declare-fun d!1387362 () Bool)

(assert (= bs!846843 (and d!1387362 start!445808)))

(assert (=> bs!846843 (= (dynLambda!21137 lambda!170395 lt!1688407) (noDuplicateKeys!1140 (_2!28792 lt!1688407)))))

(declare-fun m!5249941 () Bool)

(assert (=> bs!846843 m!5249941))

(assert (=> d!1387348 d!1387362))

(declare-fun b_lambda!153751 () Bool)

(assert (= b_lambda!153729 (or start!445808 b_lambda!153751)))

(declare-fun bs!846844 () Bool)

(declare-fun d!1387364 () Bool)

(assert (= bs!846844 (and d!1387364 start!445808)))

(assert (=> bs!846844 (= (dynLambda!21137 lambda!170395 (h!56424 (toList!4287 lt!1688416))) (noDuplicateKeys!1140 (_2!28792 (h!56424 (toList!4287 lt!1688416)))))))

(declare-fun m!5249943 () Bool)

(assert (=> bs!846844 m!5249943))

(assert (=> b!4510175 d!1387364))

(check-sat (not d!1387336) (not d!1387326) (not b!4510445) (not b!4510503) (not d!1387182) (not bm!314081) tp_is_empty!27839 (not d!1387190) (not d!1387334) (not b!4510440) (not b!4510187) (not d!1387208) (not b!4510490) (not b!4510433) (not b!4510373) (not d!1387348) (not b!4510461) (not b!4510464) (not d!1387310) (not b!4510406) (not bm!314084) (not d!1387192) (not b!4510452) (not b!4510376) (not bm!314080) (not b!4510434) (not b_lambda!153751) (not d!1387188) (not b!4510430) (not bs!846843) (not b!4510451) (not b!4510450) (not d!1387194) (not b!4510460) (not bs!846842) (not b!4510194) (not d!1387354) (not b!4510392) (not d!1387322) (not b!4510518) (not b_lambda!153749) (not d!1387346) (not b!4510479) (not b!4510401) (not b!4510458) (not b!4510448) (not b!4510505) (not d!1387330) (not d!1387308) (not b!4510454) (not b!4510473) (not d!1387314) (not d!1387198) (not b!4510395) (not b!4510182) (not b!4510456) (not b!4510453) (not b!4510501) (not bs!846844) (not d!1387352) (not d!1387196) (not b_lambda!153747) (not d!1387344) (not d!1387356) (not b!4510471) (not b!4510225) (not b!4510443) (not b!4510428) (not b!4510446) (not b!4510513) (not b!4510459) (not d!1387342) (not d!1387350) (not d!1387332) (not b!4510441) (not d!1387298) (not b!4510192) (not b!4510375) (not b!4510372) (not b!4510432) (not b!4510427) (not d!1387212) (not d!1387358) (not d!1387210) (not b!4510439) (not bm!314085) (not b!4510407) (not d!1387316) (not d!1387306) (not d!1387186) (not d!1387300) (not d!1387320) (not d!1387340) (not bm!314079) (not b!4510426) (not b!4510449) (not b!4510193) (not b!4510390) (not d!1387324) (not b!4510447) (not b!4510435) tp_is_empty!27837 (not b!4510508) (not d!1387302) (not b!4510488) (not b!4510191) (not b!4510393) (not bm!314086) (not b!4510181) (not d!1387184) (not b!4510176) (not d!1387312) (not b!4510437) (not d!1387318))
(check-sat)
