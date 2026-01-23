; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!427904 () Bool)

(assert start!427904)

(declare-fun b!4401182 () Bool)

(declare-fun res!1815380 () Bool)

(declare-fun e!2740456 () Bool)

(assert (=> b!4401182 (=> (not res!1815380) (not e!2740456))))

(declare-datatypes ((V!10886 0))(
  ( (V!10887 (val!16783 Int)) )
))
(declare-datatypes ((K!10640 0))(
  ( (K!10641 (val!16784 Int)) )
))
(declare-datatypes ((tuple2!48886 0))(
  ( (tuple2!48887 (_1!27737 K!10640) (_2!27737 V!10886)) )
))
(declare-datatypes ((List!49408 0))(
  ( (Nil!49284) (Cons!49284 (h!54911 tuple2!48886) (t!356342 List!49408)) )
))
(declare-datatypes ((tuple2!48888 0))(
  ( (tuple2!48889 (_1!27738 (_ BitVec 64)) (_2!27738 List!49408)) )
))
(declare-datatypes ((List!49409 0))(
  ( (Nil!49285) (Cons!49285 (h!54912 tuple2!48888) (t!356343 List!49409)) )
))
(declare-datatypes ((ListLongMap!1891 0))(
  ( (ListLongMap!1892 (toList!3241 List!49409)) )
))
(declare-fun lm!1707 () ListLongMap!1891)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11675 (ListLongMap!1891 (_ BitVec 64)) Bool)

(assert (=> b!4401182 (= res!1815380 (contains!11675 lm!1707 hash!377))))

(declare-fun b!4401183 () Bool)

(declare-fun e!2740459 () Bool)

(declare-fun lt!1606133 () ListLongMap!1891)

(declare-fun lambda!148985 () Int)

(declare-fun forall!9370 (List!49409 Int) Bool)

(assert (=> b!4401183 (= e!2740459 (forall!9370 (toList!3241 lt!1606133) lambda!148985))))

(declare-fun b!4401184 () Bool)

(declare-fun res!1815375 () Bool)

(assert (=> b!4401184 (=> (not res!1815375) (not e!2740456))))

(declare-fun newBucket!200 () List!49408)

(declare-datatypes ((Hashable!5021 0))(
  ( (HashableExt!5020 (__x!30724 Int)) )
))
(declare-fun hashF!1247 () Hashable!5021)

(declare-fun allKeysSameHash!587 (List!49408 (_ BitVec 64) Hashable!5021) Bool)

(assert (=> b!4401184 (= res!1815375 (allKeysSameHash!587 newBucket!200 hash!377 hashF!1247))))

(declare-fun tp_is_empty!25753 () Bool)

(declare-fun tp!1331849 () Bool)

(declare-fun b!4401185 () Bool)

(declare-fun e!2740457 () Bool)

(declare-fun tp_is_empty!25755 () Bool)

(assert (=> b!4401185 (= e!2740457 (and tp_is_empty!25753 tp_is_empty!25755 tp!1331849))))

(declare-fun b!4401186 () Bool)

(declare-fun res!1815371 () Bool)

(declare-fun e!2740458 () Bool)

(assert (=> b!4401186 (=> res!1815371 e!2740458)))

(declare-fun noDuplicateKeys!629 (List!49408) Bool)

(assert (=> b!4401186 (= res!1815371 (not (noDuplicateKeys!629 newBucket!200)))))

(declare-fun b!4401187 () Bool)

(declare-fun e!2740462 () Bool)

(assert (=> b!4401187 (= e!2740458 e!2740462)))

(declare-fun res!1815372 () Bool)

(assert (=> b!4401187 (=> res!1815372 e!2740462)))

(get-info :version)

(assert (=> b!4401187 (= res!1815372 (or (and ((_ is Cons!49285) (toList!3241 lm!1707)) (= (_1!27738 (h!54912 (toList!3241 lm!1707))) hash!377)) (not ((_ is Cons!49285) (toList!3241 lm!1707))) (= (_1!27738 (h!54912 (toList!3241 lm!1707))) hash!377)))))

(assert (=> b!4401187 e!2740459))

(declare-fun res!1815377 () Bool)

(assert (=> b!4401187 (=> (not res!1815377) (not e!2740459))))

(assert (=> b!4401187 (= res!1815377 (forall!9370 (toList!3241 lt!1606133) lambda!148985))))

(declare-fun lt!1606134 () tuple2!48888)

(declare-fun +!873 (ListLongMap!1891 tuple2!48888) ListLongMap!1891)

(assert (=> b!4401187 (= lt!1606133 (+!873 lm!1707 lt!1606134))))

(assert (=> b!4401187 (= lt!1606134 (tuple2!48889 hash!377 newBucket!200))))

(declare-datatypes ((Unit!78863 0))(
  ( (Unit!78864) )
))
(declare-fun lt!1606128 () Unit!78863)

(declare-fun addValidProp!275 (ListLongMap!1891 Int (_ BitVec 64) List!49408) Unit!78863)

(assert (=> b!4401187 (= lt!1606128 (addValidProp!275 lm!1707 lambda!148985 hash!377 newBucket!200))))

(assert (=> b!4401187 (forall!9370 (toList!3241 lm!1707) lambda!148985)))

(declare-fun b!4401188 () Bool)

(assert (=> b!4401188 (= e!2740462 true)))

(declare-datatypes ((ListMap!2485 0))(
  ( (ListMap!2486 (toList!3242 List!49408)) )
))
(declare-fun lt!1606139 () ListMap!2485)

(declare-fun lt!1606130 () tuple2!48886)

(declare-fun lt!1606127 () ListLongMap!1891)

(declare-fun eq!335 (ListMap!2485 ListMap!2485) Bool)

(declare-fun extractMap!688 (List!49409) ListMap!2485)

(declare-fun +!874 (ListMap!2485 tuple2!48886) ListMap!2485)

(assert (=> b!4401188 (eq!335 (extractMap!688 (toList!3241 (+!873 lt!1606127 lt!1606134))) (+!874 lt!1606139 lt!1606130))))

(declare-fun lt!1606137 () Unit!78863)

(declare-fun key!3918 () K!10640)

(declare-fun newValue!99 () V!10886)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!133 (ListLongMap!1891 (_ BitVec 64) List!49408 K!10640 V!10886 Hashable!5021) Unit!78863)

(assert (=> b!4401188 (= lt!1606137 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!133 lt!1606127 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11676 (ListMap!2485 K!10640) Bool)

(assert (=> b!4401188 (contains!11676 lt!1606139 key!3918)))

(assert (=> b!4401188 (= lt!1606139 (extractMap!688 (toList!3241 lt!1606127)))))

(declare-fun tail!7117 (ListLongMap!1891) ListLongMap!1891)

(assert (=> b!4401188 (= lt!1606127 (tail!7117 lm!1707))))

(declare-fun lt!1606138 () ListMap!2485)

(assert (=> b!4401188 (contains!11676 lt!1606138 key!3918)))

(declare-fun lt!1606135 () Unit!78863)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!88 (List!49408 K!10640 V!10886 ListMap!2485) Unit!78863)

(assert (=> b!4401188 (= lt!1606135 (lemmaAddToMapContainsAndNotInListThenInAcc!88 (_2!27738 (h!54912 (toList!3241 lm!1707))) key!3918 newValue!99 lt!1606138))))

(assert (=> b!4401188 (= lt!1606138 (extractMap!688 (t!356343 (toList!3241 lm!1707))))))

(declare-fun e!2740461 () Bool)

(assert (=> b!4401188 e!2740461))

(declare-fun res!1815381 () Bool)

(assert (=> b!4401188 (=> (not res!1815381) (not e!2740461))))

(declare-fun containsKey!939 (List!49408 K!10640) Bool)

(declare-fun apply!11481 (ListLongMap!1891 (_ BitVec 64)) List!49408)

(assert (=> b!4401188 (= res!1815381 (not (containsKey!939 (apply!11481 lm!1707 (_1!27738 (h!54912 (toList!3241 lm!1707)))) key!3918)))))

(declare-fun lt!1606129 () Unit!78863)

(declare-fun lemmaNotSameHashThenCannotContainKey!100 (ListLongMap!1891 K!10640 (_ BitVec 64) Hashable!5021) Unit!78863)

(assert (=> b!4401188 (= lt!1606129 (lemmaNotSameHashThenCannotContainKey!100 lm!1707 key!3918 (_1!27738 (h!54912 (toList!3241 lm!1707))) hashF!1247))))

(declare-fun b!4401189 () Bool)

(declare-fun res!1815379 () Bool)

(assert (=> b!4401189 (=> (not res!1815379) (not e!2740456))))

(declare-fun hash!1875 (Hashable!5021 K!10640) (_ BitVec 64))

(assert (=> b!4401189 (= res!1815379 (= (hash!1875 hashF!1247 key!3918) hash!377))))

(declare-fun b!4401190 () Bool)

(assert (=> b!4401190 (= e!2740461 (not (containsKey!939 (_2!27738 (h!54912 (toList!3241 lm!1707))) key!3918)))))

(declare-fun b!4401191 () Bool)

(declare-fun res!1815378 () Bool)

(assert (=> b!4401191 (=> (not res!1815378) (not e!2740456))))

(declare-fun allKeysSameHashInMap!733 (ListLongMap!1891 Hashable!5021) Bool)

(assert (=> b!4401191 (= res!1815378 (allKeysSameHashInMap!733 lm!1707 hashF!1247))))

(declare-fun b!4401192 () Bool)

(declare-fun e!2740460 () Bool)

(declare-fun tp!1331850 () Bool)

(assert (=> b!4401192 (= e!2740460 tp!1331850)))

(declare-fun res!1815373 () Bool)

(assert (=> start!427904 (=> (not res!1815373) (not e!2740456))))

(assert (=> start!427904 (= res!1815373 (forall!9370 (toList!3241 lm!1707) lambda!148985))))

(assert (=> start!427904 e!2740456))

(assert (=> start!427904 e!2740457))

(assert (=> start!427904 true))

(declare-fun inv!64826 (ListLongMap!1891) Bool)

(assert (=> start!427904 (and (inv!64826 lm!1707) e!2740460)))

(assert (=> start!427904 tp_is_empty!25753))

(assert (=> start!427904 tp_is_empty!25755))

(declare-fun b!4401193 () Bool)

(assert (=> b!4401193 (= e!2740456 (not e!2740458))))

(declare-fun res!1815376 () Bool)

(assert (=> b!4401193 (=> res!1815376 e!2740458)))

(declare-fun lt!1606132 () List!49408)

(declare-fun removePairForKey!597 (List!49408 K!10640) List!49408)

(assert (=> b!4401193 (= res!1815376 (not (= newBucket!200 (Cons!49284 lt!1606130 (removePairForKey!597 lt!1606132 key!3918)))))))

(assert (=> b!4401193 (= lt!1606130 (tuple2!48887 key!3918 newValue!99))))

(declare-fun lt!1606131 () Unit!78863)

(declare-fun lt!1606136 () tuple2!48888)

(declare-fun forallContained!2005 (List!49409 Int tuple2!48888) Unit!78863)

(assert (=> b!4401193 (= lt!1606131 (forallContained!2005 (toList!3241 lm!1707) lambda!148985 lt!1606136))))

(declare-fun contains!11677 (List!49409 tuple2!48888) Bool)

(assert (=> b!4401193 (contains!11677 (toList!3241 lm!1707) lt!1606136)))

(assert (=> b!4401193 (= lt!1606136 (tuple2!48889 hash!377 lt!1606132))))

(declare-fun lt!1606140 () Unit!78863)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!474 (List!49409 (_ BitVec 64) List!49408) Unit!78863)

(assert (=> b!4401193 (= lt!1606140 (lemmaGetValueByKeyImpliesContainsTuple!474 (toList!3241 lm!1707) hash!377 lt!1606132))))

(assert (=> b!4401193 (= lt!1606132 (apply!11481 lm!1707 hash!377))))

(declare-fun b!4401194 () Bool)

(declare-fun res!1815374 () Bool)

(assert (=> b!4401194 (=> (not res!1815374) (not e!2740456))))

(assert (=> b!4401194 (= res!1815374 (contains!11676 (extractMap!688 (toList!3241 lm!1707)) key!3918))))

(assert (= (and start!427904 res!1815373) b!4401191))

(assert (= (and b!4401191 res!1815378) b!4401189))

(assert (= (and b!4401189 res!1815379) b!4401184))

(assert (= (and b!4401184 res!1815375) b!4401194))

(assert (= (and b!4401194 res!1815374) b!4401182))

(assert (= (and b!4401182 res!1815380) b!4401193))

(assert (= (and b!4401193 (not res!1815376)) b!4401186))

(assert (= (and b!4401186 (not res!1815371)) b!4401187))

(assert (= (and b!4401187 res!1815377) b!4401183))

(assert (= (and b!4401187 (not res!1815372)) b!4401188))

(assert (= (and b!4401188 res!1815381) b!4401190))

(assert (= (and start!427904 ((_ is Cons!49284) newBucket!200)) b!4401185))

(assert (= start!427904 b!4401192))

(declare-fun m!5064285 () Bool)

(assert (=> b!4401190 m!5064285))

(declare-fun m!5064287 () Bool)

(assert (=> b!4401182 m!5064287))

(declare-fun m!5064289 () Bool)

(assert (=> b!4401184 m!5064289))

(declare-fun m!5064291 () Bool)

(assert (=> b!4401191 m!5064291))

(declare-fun m!5064293 () Bool)

(assert (=> b!4401188 m!5064293))

(declare-fun m!5064295 () Bool)

(assert (=> b!4401188 m!5064295))

(declare-fun m!5064297 () Bool)

(assert (=> b!4401188 m!5064297))

(declare-fun m!5064299 () Bool)

(assert (=> b!4401188 m!5064299))

(declare-fun m!5064301 () Bool)

(assert (=> b!4401188 m!5064301))

(declare-fun m!5064303 () Bool)

(assert (=> b!4401188 m!5064303))

(declare-fun m!5064305 () Bool)

(assert (=> b!4401188 m!5064305))

(declare-fun m!5064307 () Bool)

(assert (=> b!4401188 m!5064307))

(declare-fun m!5064309 () Bool)

(assert (=> b!4401188 m!5064309))

(declare-fun m!5064311 () Bool)

(assert (=> b!4401188 m!5064311))

(assert (=> b!4401188 m!5064299))

(declare-fun m!5064313 () Bool)

(assert (=> b!4401188 m!5064313))

(declare-fun m!5064315 () Bool)

(assert (=> b!4401188 m!5064315))

(assert (=> b!4401188 m!5064297))

(declare-fun m!5064317 () Bool)

(assert (=> b!4401188 m!5064317))

(assert (=> b!4401188 m!5064317))

(declare-fun m!5064319 () Bool)

(assert (=> b!4401188 m!5064319))

(declare-fun m!5064321 () Bool)

(assert (=> b!4401189 m!5064321))

(declare-fun m!5064323 () Bool)

(assert (=> b!4401187 m!5064323))

(declare-fun m!5064325 () Bool)

(assert (=> b!4401187 m!5064325))

(declare-fun m!5064327 () Bool)

(assert (=> b!4401187 m!5064327))

(declare-fun m!5064329 () Bool)

(assert (=> b!4401187 m!5064329))

(declare-fun m!5064331 () Bool)

(assert (=> b!4401186 m!5064331))

(assert (=> b!4401183 m!5064323))

(declare-fun m!5064333 () Bool)

(assert (=> b!4401193 m!5064333))

(declare-fun m!5064335 () Bool)

(assert (=> b!4401193 m!5064335))

(declare-fun m!5064337 () Bool)

(assert (=> b!4401193 m!5064337))

(declare-fun m!5064339 () Bool)

(assert (=> b!4401193 m!5064339))

(declare-fun m!5064341 () Bool)

(assert (=> b!4401193 m!5064341))

(assert (=> start!427904 m!5064329))

(declare-fun m!5064343 () Bool)

(assert (=> start!427904 m!5064343))

(declare-fun m!5064345 () Bool)

(assert (=> b!4401194 m!5064345))

(assert (=> b!4401194 m!5064345))

(declare-fun m!5064347 () Bool)

(assert (=> b!4401194 m!5064347))

(check-sat tp_is_empty!25753 (not start!427904) (not b!4401187) (not b!4401183) (not b!4401182) (not b!4401186) (not b!4401191) (not b!4401184) (not b!4401189) (not b!4401190) tp_is_empty!25755 (not b!4401188) (not b!4401194) (not b!4401185) (not b!4401193) (not b!4401192))
(check-sat)
