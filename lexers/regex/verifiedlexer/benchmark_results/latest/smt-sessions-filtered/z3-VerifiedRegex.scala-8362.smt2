; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!435232 () Bool)

(assert start!435232)

(declare-fun b!4445229 () Bool)

(declare-fun e!2767754 () Bool)

(declare-fun e!2767753 () Bool)

(assert (=> b!4445229 (= e!2767754 e!2767753)))

(declare-fun res!1841208 () Bool)

(assert (=> b!4445229 (=> (not res!1841208) (not e!2767753))))

(declare-fun e!2767758 () Bool)

(assert (=> b!4445229 (= res!1841208 e!2767758)))

(declare-fun res!1841204 () Bool)

(assert (=> b!4445229 (=> res!1841204 e!2767758)))

(declare-fun e!2767756 () Bool)

(assert (=> b!4445229 (= res!1841204 e!2767756)))

(declare-fun res!1841198 () Bool)

(assert (=> b!4445229 (=> (not res!1841198) (not e!2767756))))

(declare-fun lt!1639461 () Bool)

(assert (=> b!4445229 (= res!1841198 lt!1639461)))

(declare-datatypes ((V!11461 0))(
  ( (V!11462 (val!17243 Int)) )
))
(declare-datatypes ((K!11215 0))(
  ( (K!11216 (val!17244 Int)) )
))
(declare-datatypes ((tuple2!49806 0))(
  ( (tuple2!49807 (_1!28197 K!11215) (_2!28197 V!11461)) )
))
(declare-datatypes ((List!49970 0))(
  ( (Nil!49846) (Cons!49846 (h!55583 tuple2!49806) (t!356912 List!49970)) )
))
(declare-datatypes ((tuple2!49808 0))(
  ( (tuple2!49809 (_1!28198 (_ BitVec 64)) (_2!28198 List!49970)) )
))
(declare-datatypes ((List!49971 0))(
  ( (Nil!49847) (Cons!49847 (h!55584 tuple2!49808) (t!356913 List!49971)) )
))
(declare-datatypes ((ListLongMap!2351 0))(
  ( (ListLongMap!2352 (toList!3701 List!49971)) )
))
(declare-fun lm!1616 () ListLongMap!2351)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12428 (ListLongMap!2351 (_ BitVec 64)) Bool)

(assert (=> b!4445229 (= lt!1639461 (contains!12428 lm!1616 hash!366))))

(declare-fun b!4445230 () Bool)

(declare-fun e!2767755 () Bool)

(declare-fun tp!1334418 () Bool)

(assert (=> b!4445230 (= e!2767755 tp!1334418)))

(declare-fun b!4445231 () Bool)

(declare-fun res!1841199 () Bool)

(declare-fun e!2767760 () Bool)

(assert (=> b!4445231 (=> (not res!1841199) (not e!2767760))))

(declare-datatypes ((Hashable!5251 0))(
  ( (HashableExt!5250 (__x!30954 Int)) )
))
(declare-fun hashF!1220 () Hashable!5251)

(declare-fun allKeysSameHashInMap!963 (ListLongMap!2351 Hashable!5251) Bool)

(assert (=> b!4445231 (= res!1841199 (allKeysSameHashInMap!963 lm!1616 hashF!1220))))

(declare-fun b!4445232 () Bool)

(declare-fun res!1841209 () Bool)

(declare-fun e!2767751 () Bool)

(assert (=> b!4445232 (=> res!1841209 e!2767751)))

(declare-datatypes ((ListMap!2945 0))(
  ( (ListMap!2946 (toList!3702 List!49970)) )
))
(declare-fun lt!1639468 () ListMap!2945)

(declare-fun lt!1639470 () ListMap!2945)

(declare-fun eq!457 (ListMap!2945 ListMap!2945) Bool)

(declare-fun addToMapMapFromBucket!463 (List!49970 ListMap!2945) ListMap!2945)

(assert (=> b!4445232 (= res!1841209 (not (eq!457 lt!1639470 (addToMapMapFromBucket!463 (_2!28198 (h!55584 (toList!3701 lm!1616))) lt!1639468))))))

(declare-fun b!4445233 () Bool)

(assert (=> b!4445233 (= e!2767760 e!2767754)))

(declare-fun res!1841211 () Bool)

(assert (=> b!4445233 (=> (not res!1841211) (not e!2767754))))

(declare-fun key!3717 () K!11215)

(declare-fun contains!12429 (ListMap!2945 K!11215) Bool)

(assert (=> b!4445233 (= res!1841211 (not (contains!12429 lt!1639470 key!3717)))))

(declare-fun extractMap!918 (List!49971) ListMap!2945)

(assert (=> b!4445233 (= lt!1639470 (extractMap!918 (toList!3701 lm!1616)))))

(declare-fun newValue!93 () V!11461)

(declare-fun b!4445234 () Bool)

(declare-fun newBucket!194 () List!49970)

(assert (=> b!4445234 (= e!2767758 (and (not lt!1639461) (= newBucket!194 (Cons!49846 (tuple2!49807 key!3717 newValue!93) Nil!49846))))))

(declare-fun b!4445235 () Bool)

(declare-fun res!1841210 () Bool)

(assert (=> b!4445235 (=> (not res!1841210) (not e!2767753))))

(declare-fun noDuplicateKeys!857 (List!49970) Bool)

(assert (=> b!4445235 (= res!1841210 (noDuplicateKeys!857 newBucket!194))))

(declare-fun tp_is_empty!26673 () Bool)

(declare-fun e!2767752 () Bool)

(declare-fun tp_is_empty!26675 () Bool)

(declare-fun b!4445236 () Bool)

(declare-fun tp!1334417 () Bool)

(assert (=> b!4445236 (= e!2767752 (and tp_is_empty!26675 tp_is_empty!26673 tp!1334417))))

(declare-fun b!4445237 () Bool)

(declare-fun apply!11709 (ListLongMap!2351 (_ BitVec 64)) List!49970)

(assert (=> b!4445237 (= e!2767756 (= newBucket!194 (Cons!49846 (tuple2!49807 key!3717 newValue!93) (apply!11709 lm!1616 hash!366))))))

(declare-fun res!1841207 () Bool)

(assert (=> start!435232 (=> (not res!1841207) (not e!2767760))))

(declare-fun lambda!158098 () Int)

(declare-fun forall!9740 (List!49971 Int) Bool)

(assert (=> start!435232 (= res!1841207 (forall!9740 (toList!3701 lm!1616) lambda!158098))))

(assert (=> start!435232 e!2767760))

(assert (=> start!435232 tp_is_empty!26673))

(assert (=> start!435232 tp_is_empty!26675))

(assert (=> start!435232 e!2767752))

(declare-fun inv!65401 (ListLongMap!2351) Bool)

(assert (=> start!435232 (and (inv!65401 lm!1616) e!2767755)))

(assert (=> start!435232 true))

(declare-fun b!4445228 () Bool)

(assert (=> b!4445228 (= e!2767751 true)))

(declare-fun lt!1639464 () Bool)

(declare-fun containsKey!1274 (List!49970 K!11215) Bool)

(assert (=> b!4445228 (= lt!1639464 (containsKey!1274 (_2!28198 (h!55584 (toList!3701 lm!1616))) key!3717))))

(assert (=> b!4445228 (not (containsKey!1274 (apply!11709 lm!1616 (_1!28198 (h!55584 (toList!3701 lm!1616)))) key!3717))))

(declare-datatypes ((Unit!84344 0))(
  ( (Unit!84345) )
))
(declare-fun lt!1639473 () Unit!84344)

(declare-fun lemmaNotSameHashThenCannotContainKey!156 (ListLongMap!2351 K!11215 (_ BitVec 64) Hashable!5251) Unit!84344)

(assert (=> b!4445228 (= lt!1639473 (lemmaNotSameHashThenCannotContainKey!156 lm!1616 key!3717 (_1!28198 (h!55584 (toList!3701 lm!1616))) hashF!1220))))

(declare-fun b!4445238 () Bool)

(declare-fun res!1841205 () Bool)

(assert (=> b!4445238 (=> (not res!1841205) (not e!2767760))))

(declare-fun hash!2325 (Hashable!5251 K!11215) (_ BitVec 64))

(assert (=> b!4445238 (= res!1841205 (= (hash!2325 hashF!1220 key!3717) hash!366))))

(declare-fun b!4445239 () Bool)

(declare-fun e!2767759 () Unit!84344)

(declare-fun Unit!84346 () Unit!84344)

(assert (=> b!4445239 (= e!2767759 Unit!84346)))

(declare-fun b!4445240 () Bool)

(declare-fun res!1841202 () Bool)

(declare-fun e!2767757 () Bool)

(assert (=> b!4445240 (=> res!1841202 e!2767757)))

(get-info :version)

(assert (=> b!4445240 (= res!1841202 (or (and ((_ is Cons!49847) (toList!3701 lm!1616)) (= (_1!28198 (h!55584 (toList!3701 lm!1616))) hash!366)) (not ((_ is Cons!49847) (toList!3701 lm!1616))) (= (_1!28198 (h!55584 (toList!3701 lm!1616))) hash!366)))))

(declare-fun b!4445241 () Bool)

(assert (=> b!4445241 (= e!2767757 e!2767751)))

(declare-fun res!1841206 () Bool)

(assert (=> b!4445241 (=> res!1841206 e!2767751)))

(declare-fun lt!1639465 () tuple2!49808)

(declare-fun head!9298 (ListLongMap!2351) tuple2!49808)

(assert (=> b!4445241 (= res!1841206 (= (head!9298 lm!1616) lt!1639465))))

(declare-fun lt!1639462 () ListMap!2945)

(declare-fun +!1251 (ListMap!2945 tuple2!49806) ListMap!2945)

(assert (=> b!4445241 (eq!457 lt!1639462 (+!1251 lt!1639468 (tuple2!49807 key!3717 newValue!93)))))

(declare-fun lt!1639463 () ListLongMap!2351)

(assert (=> b!4445241 (= lt!1639468 (extractMap!918 (toList!3701 lt!1639463)))))

(declare-fun +!1252 (ListLongMap!2351 tuple2!49808) ListLongMap!2351)

(assert (=> b!4445241 (= lt!1639462 (extractMap!918 (toList!3701 (+!1252 lt!1639463 lt!1639465))))))

(declare-fun lt!1639471 () Unit!84344)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!165 (ListLongMap!2351 (_ BitVec 64) List!49970 K!11215 V!11461 Hashable!5251) Unit!84344)

(assert (=> b!4445241 (= lt!1639471 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!165 lt!1639463 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7414 (ListLongMap!2351) ListLongMap!2351)

(assert (=> b!4445241 (= lt!1639463 (tail!7414 lm!1616))))

(declare-fun lt!1639469 () Unit!84344)

(assert (=> b!4445241 (= lt!1639469 e!2767759)))

(declare-fun c!756513 () Bool)

(declare-fun tail!7415 (List!49971) List!49971)

(assert (=> b!4445241 (= c!756513 (contains!12429 (extractMap!918 (tail!7415 (toList!3701 lm!1616))) key!3717))))

(declare-fun b!4445242 () Bool)

(declare-fun Unit!84347 () Unit!84344)

(assert (=> b!4445242 (= e!2767759 Unit!84347)))

(declare-fun lt!1639467 () Unit!84344)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!94 (ListLongMap!2351 K!11215 Hashable!5251) Unit!84344)

(assert (=> b!4445242 (= lt!1639467 (lemmaExtractTailMapContainsThenExtractMapDoes!94 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4445242 false))

(declare-fun b!4445243 () Bool)

(declare-fun res!1841203 () Bool)

(assert (=> b!4445243 (=> (not res!1841203) (not e!2767753))))

(assert (=> b!4445243 (= res!1841203 (forall!9740 (toList!3701 lm!1616) lambda!158098))))

(declare-fun b!4445244 () Bool)

(assert (=> b!4445244 (= e!2767753 (not e!2767757))))

(declare-fun res!1841201 () Bool)

(assert (=> b!4445244 (=> res!1841201 e!2767757)))

(declare-fun lt!1639472 () ListLongMap!2351)

(assert (=> b!4445244 (= res!1841201 (not (forall!9740 (toList!3701 lt!1639472) lambda!158098)))))

(assert (=> b!4445244 (forall!9740 (toList!3701 lt!1639472) lambda!158098)))

(assert (=> b!4445244 (= lt!1639472 (+!1252 lm!1616 lt!1639465))))

(assert (=> b!4445244 (= lt!1639465 (tuple2!49809 hash!366 newBucket!194))))

(declare-fun lt!1639466 () Unit!84344)

(declare-fun addValidProp!495 (ListLongMap!2351 Int (_ BitVec 64) List!49970) Unit!84344)

(assert (=> b!4445244 (= lt!1639466 (addValidProp!495 lm!1616 lambda!158098 hash!366 newBucket!194))))

(declare-fun b!4445245 () Bool)

(declare-fun res!1841200 () Bool)

(assert (=> b!4445245 (=> (not res!1841200) (not e!2767760))))

(declare-fun allKeysSameHash!817 (List!49970 (_ BitVec 64) Hashable!5251) Bool)

(assert (=> b!4445245 (= res!1841200 (allKeysSameHash!817 newBucket!194 hash!366 hashF!1220))))

(assert (= (and start!435232 res!1841207) b!4445231))

(assert (= (and b!4445231 res!1841199) b!4445238))

(assert (= (and b!4445238 res!1841205) b!4445245))

(assert (= (and b!4445245 res!1841200) b!4445233))

(assert (= (and b!4445233 res!1841211) b!4445229))

(assert (= (and b!4445229 res!1841198) b!4445237))

(assert (= (and b!4445229 (not res!1841204)) b!4445234))

(assert (= (and b!4445229 res!1841208) b!4445235))

(assert (= (and b!4445235 res!1841210) b!4445243))

(assert (= (and b!4445243 res!1841203) b!4445244))

(assert (= (and b!4445244 (not res!1841201)) b!4445240))

(assert (= (and b!4445240 (not res!1841202)) b!4445241))

(assert (= (and b!4445241 c!756513) b!4445242))

(assert (= (and b!4445241 (not c!756513)) b!4445239))

(assert (= (and b!4445241 (not res!1841206)) b!4445232))

(assert (= (and b!4445232 (not res!1841209)) b!4445228))

(assert (= (and start!435232 ((_ is Cons!49846) newBucket!194)) b!4445236))

(assert (= start!435232 b!4445230))

(declare-fun m!5135525 () Bool)

(assert (=> b!4445229 m!5135525))

(declare-fun m!5135527 () Bool)

(assert (=> start!435232 m!5135527))

(declare-fun m!5135529 () Bool)

(assert (=> start!435232 m!5135529))

(declare-fun m!5135531 () Bool)

(assert (=> b!4445242 m!5135531))

(declare-fun m!5135533 () Bool)

(assert (=> b!4445241 m!5135533))

(declare-fun m!5135535 () Bool)

(assert (=> b!4445241 m!5135535))

(declare-fun m!5135537 () Bool)

(assert (=> b!4445241 m!5135537))

(declare-fun m!5135539 () Bool)

(assert (=> b!4445241 m!5135539))

(declare-fun m!5135541 () Bool)

(assert (=> b!4445241 m!5135541))

(assert (=> b!4445241 m!5135537))

(declare-fun m!5135543 () Bool)

(assert (=> b!4445241 m!5135543))

(declare-fun m!5135545 () Bool)

(assert (=> b!4445241 m!5135545))

(declare-fun m!5135547 () Bool)

(assert (=> b!4445241 m!5135547))

(declare-fun m!5135549 () Bool)

(assert (=> b!4445241 m!5135549))

(assert (=> b!4445241 m!5135533))

(assert (=> b!4445241 m!5135535))

(declare-fun m!5135551 () Bool)

(assert (=> b!4445241 m!5135551))

(declare-fun m!5135553 () Bool)

(assert (=> b!4445241 m!5135553))

(declare-fun m!5135555 () Bool)

(assert (=> b!4445237 m!5135555))

(declare-fun m!5135557 () Bool)

(assert (=> b!4445245 m!5135557))

(declare-fun m!5135559 () Bool)

(assert (=> b!4445238 m!5135559))

(declare-fun m!5135561 () Bool)

(assert (=> b!4445232 m!5135561))

(assert (=> b!4445232 m!5135561))

(declare-fun m!5135563 () Bool)

(assert (=> b!4445232 m!5135563))

(declare-fun m!5135565 () Bool)

(assert (=> b!4445233 m!5135565))

(declare-fun m!5135567 () Bool)

(assert (=> b!4445233 m!5135567))

(declare-fun m!5135569 () Bool)

(assert (=> b!4445231 m!5135569))

(declare-fun m!5135571 () Bool)

(assert (=> b!4445228 m!5135571))

(declare-fun m!5135573 () Bool)

(assert (=> b!4445228 m!5135573))

(assert (=> b!4445228 m!5135573))

(declare-fun m!5135575 () Bool)

(assert (=> b!4445228 m!5135575))

(declare-fun m!5135577 () Bool)

(assert (=> b!4445228 m!5135577))

(declare-fun m!5135579 () Bool)

(assert (=> b!4445235 m!5135579))

(declare-fun m!5135581 () Bool)

(assert (=> b!4445244 m!5135581))

(assert (=> b!4445244 m!5135581))

(declare-fun m!5135583 () Bool)

(assert (=> b!4445244 m!5135583))

(declare-fun m!5135585 () Bool)

(assert (=> b!4445244 m!5135585))

(assert (=> b!4445243 m!5135527))

(check-sat (not b!4445237) (not b!4445238) (not b!4445244) (not b!4445231) tp_is_empty!26675 (not b!4445243) (not b!4445230) (not b!4445235) (not b!4445229) (not start!435232) (not b!4445232) tp_is_empty!26673 (not b!4445228) (not b!4445245) (not b!4445236) (not b!4445233) (not b!4445242) (not b!4445241))
(check-sat)
